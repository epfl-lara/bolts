; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!162200 () Bool)

(assert start!162200)

(declare-fun b!1670823 () Bool)

(declare-fun b_free!45439 () Bool)

(declare-fun b_next!46143 () Bool)

(assert (=> b!1670823 (= b_free!45439 (not b_next!46143))))

(declare-fun tp!482279 () Bool)

(declare-fun b_and!118821 () Bool)

(assert (=> b!1670823 (= tp!482279 b_and!118821)))

(declare-fun b_free!45441 () Bool)

(declare-fun b_next!46145 () Bool)

(assert (=> b!1670823 (= b_free!45441 (not b_next!46145))))

(declare-fun tp!482282 () Bool)

(declare-fun b_and!118823 () Bool)

(assert (=> b!1670823 (= tp!482282 b_and!118823)))

(declare-fun b!1670835 () Bool)

(declare-fun b_free!45443 () Bool)

(declare-fun b_next!46147 () Bool)

(assert (=> b!1670835 (= b_free!45443 (not b_next!46147))))

(declare-fun tp!482281 () Bool)

(declare-fun b_and!118825 () Bool)

(assert (=> b!1670835 (= tp!482281 b_and!118825)))

(declare-fun b_free!45445 () Bool)

(declare-fun b_next!46149 () Bool)

(assert (=> b!1670835 (= b_free!45445 (not b_next!46149))))

(declare-fun tp!482277 () Bool)

(declare-fun b_and!118827 () Bool)

(assert (=> b!1670835 (= tp!482277 b_and!118827)))

(declare-fun b!1670813 () Bool)

(declare-fun res!749268 () Bool)

(declare-fun e!1070677 () Bool)

(assert (=> b!1670813 (=> (not res!749268) (not e!1070677))))

(declare-datatypes ((LexerInterface!2873 0))(
  ( (LexerInterfaceExt!2870 (__x!11970 Int)) (Lexer!2871) )
))
(declare-fun thiss!17113 () LexerInterface!2873)

(declare-datatypes ((List!18487 0))(
  ( (Nil!18417) (Cons!18417 (h!23818 (_ BitVec 16)) (t!152638 List!18487)) )
))
(declare-datatypes ((TokenValue!3334 0))(
  ( (FloatLiteralValue!6668 (text!23783 List!18487)) (TokenValueExt!3333 (__x!11971 Int)) (Broken!16670 (value!102102 List!18487)) (Object!3403) (End!3334) (Def!3334) (Underscore!3334) (Match!3334) (Else!3334) (Error!3334) (Case!3334) (If!3334) (Extends!3334) (Abstract!3334) (Class!3334) (Val!3334) (DelimiterValue!6668 (del!3394 List!18487)) (KeywordValue!3340 (value!102103 List!18487)) (CommentValue!6668 (value!102104 List!18487)) (WhitespaceValue!6668 (value!102105 List!18487)) (IndentationValue!3334 (value!102106 List!18487)) (String!21003) (Int32!3334) (Broken!16671 (value!102107 List!18487)) (Boolean!3335) (Unit!31325) (OperatorValue!3337 (op!3394 List!18487)) (IdentifierValue!6668 (value!102108 List!18487)) (IdentifierValue!6669 (value!102109 List!18487)) (WhitespaceValue!6669 (value!102110 List!18487)) (True!6668) (False!6668) (Broken!16672 (value!102111 List!18487)) (Broken!16673 (value!102112 List!18487)) (True!6669) (RightBrace!3334) (RightBracket!3334) (Colon!3334) (Null!3334) (Comma!3334) (LeftBracket!3334) (False!6669) (LeftBrace!3334) (ImaginaryLiteralValue!3334 (text!23784 List!18487)) (StringLiteralValue!10002 (value!102113 List!18487)) (EOFValue!3334 (value!102114 List!18487)) (IdentValue!3334 (value!102115 List!18487)) (DelimiterValue!6669 (value!102116 List!18487)) (DedentValue!3334 (value!102117 List!18487)) (NewLineValue!3334 (value!102118 List!18487)) (IntegerValue!10002 (value!102119 (_ BitVec 32)) (text!23785 List!18487)) (IntegerValue!10003 (value!102120 Int) (text!23786 List!18487)) (Times!3334) (Or!3334) (Equal!3334) (Minus!3334) (Broken!16674 (value!102121 List!18487)) (And!3334) (Div!3334) (LessEqual!3334) (Mod!3334) (Concat!7906) (Not!3334) (Plus!3334) (SpaceValue!3334 (value!102122 List!18487)) (IntegerValue!10004 (value!102123 Int) (text!23787 List!18487)) (StringLiteralValue!10003 (text!23788 List!18487)) (FloatLiteralValue!6669 (text!23789 List!18487)) (BytesLiteralValue!3334 (value!102124 List!18487)) (CommentValue!6669 (value!102125 List!18487)) (StringLiteralValue!10004 (value!102126 List!18487)) (ErrorTokenValue!3334 (msg!3395 List!18487)) )
))
(declare-datatypes ((C!9318 0))(
  ( (C!9319 (val!5255 Int)) )
))
(declare-datatypes ((List!18488 0))(
  ( (Nil!18418) (Cons!18418 (h!23819 C!9318) (t!152639 List!18488)) )
))
(declare-datatypes ((IArray!12277 0))(
  ( (IArray!12278 (innerList!6196 List!18488)) )
))
(declare-datatypes ((Conc!6136 0))(
  ( (Node!6136 (left!14732 Conc!6136) (right!15062 Conc!6136) (csize!12502 Int) (cheight!6347 Int)) (Leaf!8979 (xs!8980 IArray!12277) (csize!12503 Int)) (Empty!6136) )
))
(declare-datatypes ((BalanceConc!12216 0))(
  ( (BalanceConc!12217 (c!271871 Conc!6136)) )
))
(declare-datatypes ((Regex!4572 0))(
  ( (ElementMatch!4572 (c!271872 C!9318)) (Concat!7907 (regOne!9656 Regex!4572) (regTwo!9656 Regex!4572)) (EmptyExpr!4572) (Star!4572 (reg!4901 Regex!4572)) (EmptyLang!4572) (Union!4572 (regOne!9657 Regex!4572) (regTwo!9657 Regex!4572)) )
))
(declare-datatypes ((String!21004 0))(
  ( (String!21005 (value!102127 String)) )
))
(declare-datatypes ((TokenValueInjection!6328 0))(
  ( (TokenValueInjection!6329 (toValue!4711 Int) (toChars!4570 Int)) )
))
(declare-datatypes ((Rule!6288 0))(
  ( (Rule!6289 (regex!3244 Regex!4572) (tag!3528 String!21004) (isSeparator!3244 Bool) (transformation!3244 TokenValueInjection!6328)) )
))
(declare-datatypes ((List!18489 0))(
  ( (Nil!18419) (Cons!18419 (h!23820 Rule!6288) (t!152640 List!18489)) )
))
(declare-fun rules!1846 () List!18489)

(declare-fun rulesInvariant!2542 (LexerInterface!2873 List!18489) Bool)

(assert (=> b!1670813 (= res!749268 (rulesInvariant!2542 thiss!17113 rules!1846))))

(declare-fun b!1670814 () Bool)

(declare-fun res!749263 () Bool)

(declare-fun e!1070674 () Bool)

(assert (=> b!1670814 (=> res!749263 e!1070674)))

(declare-datatypes ((Token!6054 0))(
  ( (Token!6055 (value!102128 TokenValue!3334) (rule!5134 Rule!6288) (size!14653 Int) (originalCharacters!4058 List!18488)) )
))
(declare-datatypes ((List!18490 0))(
  ( (Nil!18420) (Cons!18420 (h!23821 Token!6054) (t!152641 List!18490)) )
))
(declare-fun tokens!457 () List!18490)

(declare-fun rulesProduceIndividualToken!1521 (LexerInterface!2873 List!18489 Token!6054) Bool)

(assert (=> b!1670814 (= res!749263 (not (rulesProduceIndividualToken!1521 thiss!17113 rules!1846 (h!23821 tokens!457))))))

(declare-fun b!1670815 () Bool)

(declare-fun e!1070679 () Bool)

(declare-fun e!1070678 () Bool)

(declare-fun tp!482280 () Bool)

(declare-fun inv!23769 (String!21004) Bool)

(declare-fun inv!23772 (TokenValueInjection!6328) Bool)

(assert (=> b!1670815 (= e!1070679 (and tp!482280 (inv!23769 (tag!3528 (h!23820 rules!1846))) (inv!23772 (transformation!3244 (h!23820 rules!1846))) e!1070678))))

(declare-fun e!1070689 () Bool)

(declare-fun e!1070687 () Bool)

(declare-fun b!1670816 () Bool)

(declare-fun tp!482284 () Bool)

(declare-fun inv!23773 (Token!6054) Bool)

(assert (=> b!1670816 (= e!1070687 (and (inv!23773 (h!23821 tokens!457)) e!1070689 tp!482284))))

(declare-fun b!1670818 () Bool)

(declare-fun res!749264 () Bool)

(assert (=> b!1670818 (=> (not res!749264) (not e!1070677))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!566 (LexerInterface!2873 List!18490 List!18489) Bool)

(assert (=> b!1670818 (= res!749264 (tokensListTwoByTwoPredicateSeparableList!566 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1670819 () Bool)

(declare-fun e!1070676 () Bool)

(assert (=> b!1670819 (= e!1070676 e!1070674)))

(declare-fun res!749265 () Bool)

(assert (=> b!1670819 (=> res!749265 e!1070674)))

(declare-fun lt!630482 () List!18488)

(declare-fun lt!630483 () List!18488)

(declare-fun lt!630480 () List!18488)

(assert (=> b!1670819 (= res!749265 (or (not (= lt!630480 lt!630483)) (not (= lt!630483 lt!630482)) (not (= lt!630480 lt!630482))))))

(declare-fun printList!986 (LexerInterface!2873 List!18490) List!18488)

(assert (=> b!1670819 (= lt!630483 (printList!986 thiss!17113 (Cons!18420 (h!23821 tokens!457) Nil!18420)))))

(declare-fun lt!630494 () BalanceConc!12216)

(declare-fun list!7381 (BalanceConc!12216) List!18488)

(assert (=> b!1670819 (= lt!630480 (list!7381 lt!630494))))

(declare-datatypes ((IArray!12279 0))(
  ( (IArray!12280 (innerList!6197 List!18490)) )
))
(declare-datatypes ((Conc!6137 0))(
  ( (Node!6137 (left!14733 Conc!6137) (right!15063 Conc!6137) (csize!12504 Int) (cheight!6348 Int)) (Leaf!8980 (xs!8981 IArray!12279) (csize!12505 Int)) (Empty!6137) )
))
(declare-datatypes ((BalanceConc!12218 0))(
  ( (BalanceConc!12219 (c!271873 Conc!6137)) )
))
(declare-fun lt!630478 () BalanceConc!12218)

(declare-fun printTailRec!924 (LexerInterface!2873 BalanceConc!12218 Int BalanceConc!12216) BalanceConc!12216)

(assert (=> b!1670819 (= lt!630494 (printTailRec!924 thiss!17113 lt!630478 0 (BalanceConc!12217 Empty!6136)))))

(declare-fun print!1404 (LexerInterface!2873 BalanceConc!12218) BalanceConc!12216)

(assert (=> b!1670819 (= lt!630494 (print!1404 thiss!17113 lt!630478))))

(declare-fun singletonSeq!1756 (Token!6054) BalanceConc!12218)

(assert (=> b!1670819 (= lt!630478 (singletonSeq!1756 (h!23821 tokens!457)))))

(declare-fun lt!630492 () List!18488)

(declare-datatypes ((tuple2!18140 0))(
  ( (tuple2!18141 (_1!10472 Token!6054) (_2!10472 List!18488)) )
))
(declare-datatypes ((Option!3539 0))(
  ( (None!3538) (Some!3538 (v!24811 tuple2!18140)) )
))
(declare-fun lt!630489 () Option!3539)

(declare-fun maxPrefix!1433 (LexerInterface!2873 List!18489 List!18488) Option!3539)

(assert (=> b!1670819 (= lt!630489 (maxPrefix!1433 thiss!17113 rules!1846 lt!630492))))

(declare-fun b!1670820 () Bool)

(declare-fun e!1070685 () Bool)

(assert (=> b!1670820 (= e!1070674 e!1070685)))

(declare-fun res!749266 () Bool)

(assert (=> b!1670820 (=> res!749266 e!1070685)))

(declare-fun isDefined!2892 (Option!3539) Bool)

(assert (=> b!1670820 (= res!749266 (not (isDefined!2892 lt!630489)))))

(declare-fun lt!630481 () List!18488)

(declare-datatypes ((Unit!31326 0))(
  ( (Unit!31327) )
))
(declare-fun lt!630491 () Unit!31326)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!435 (LexerInterface!2873 List!18489 List!18488 List!18488) Unit!31326)

(assert (=> b!1670820 (= lt!630491 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!435 thiss!17113 rules!1846 lt!630482 lt!630481))))

(declare-fun tp!482285 () Bool)

(declare-fun b!1670821 () Bool)

(declare-fun e!1070675 () Bool)

(declare-fun inv!21 (TokenValue!3334) Bool)

(assert (=> b!1670821 (= e!1070689 (and (inv!21 (value!102128 (h!23821 tokens!457))) e!1070675 tp!482285))))

(declare-fun b!1670822 () Bool)

(declare-fun e!1070680 () Bool)

(assert (=> b!1670822 (= e!1070685 e!1070680)))

(declare-fun res!749257 () Bool)

(assert (=> b!1670822 (=> res!749257 e!1070680)))

(declare-fun lt!630500 () BalanceConc!12216)

(declare-fun lt!630486 () BalanceConc!12216)

(declare-fun lt!630488 () Regex!4572)

(declare-fun prefixMatchZipperSequence!676 (Regex!4572 BalanceConc!12216) Bool)

(declare-fun ++!5023 (BalanceConc!12216 BalanceConc!12216) BalanceConc!12216)

(assert (=> b!1670822 (= res!749257 (prefixMatchZipperSequence!676 lt!630488 (++!5023 lt!630500 lt!630486)))))

(declare-fun singletonSeq!1757 (C!9318) BalanceConc!12216)

(declare-fun apply!4971 (BalanceConc!12216 Int) C!9318)

(declare-fun charsOf!1893 (Token!6054) BalanceConc!12216)

(assert (=> b!1670822 (= lt!630486 (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0)))))

(declare-fun rulesRegex!626 (LexerInterface!2873 List!18489) Regex!4572)

(assert (=> b!1670822 (= lt!630488 (rulesRegex!626 thiss!17113 rules!1846))))

(assert (=> b!1670823 (= e!1070678 (and tp!482279 tp!482282))))

(declare-fun b!1670824 () Bool)

(declare-fun res!749261 () Bool)

(assert (=> b!1670824 (=> res!749261 e!1070674)))

(declare-fun isEmpty!11478 (BalanceConc!12218) Bool)

(declare-datatypes ((tuple2!18142 0))(
  ( (tuple2!18143 (_1!10473 BalanceConc!12218) (_2!10473 BalanceConc!12216)) )
))
(declare-fun lex!1357 (LexerInterface!2873 List!18489 BalanceConc!12216) tuple2!18142)

(declare-fun seqFromList!2225 (List!18488) BalanceConc!12216)

(assert (=> b!1670824 (= res!749261 (isEmpty!11478 (_1!10473 (lex!1357 thiss!17113 rules!1846 (seqFromList!2225 lt!630482)))))))

(declare-fun b!1670825 () Bool)

(declare-fun res!749269 () Bool)

(assert (=> b!1670825 (=> res!749269 e!1070676)))

(declare-fun separableTokensPredicate!813 (LexerInterface!2873 Token!6054 Token!6054 List!18489) Bool)

(assert (=> b!1670825 (= res!749269 (not (separableTokensPredicate!813 thiss!17113 (h!23821 tokens!457) (h!23821 (t!152641 tokens!457)) rules!1846)))))

(declare-fun b!1670826 () Bool)

(declare-fun e!1070688 () Bool)

(declare-fun e!1070686 () Bool)

(assert (=> b!1670826 (= e!1070688 (not e!1070686))))

(declare-fun res!749260 () Bool)

(assert (=> b!1670826 (=> res!749260 e!1070686)))

(declare-fun lt!630499 () List!18490)

(assert (=> b!1670826 (= res!749260 (not (= lt!630499 (t!152641 tokens!457))))))

(declare-fun lt!630487 () tuple2!18142)

(declare-fun list!7382 (BalanceConc!12218) List!18490)

(assert (=> b!1670826 (= lt!630499 (list!7382 (_1!10473 lt!630487)))))

(declare-fun lt!630498 () Unit!31326)

(declare-fun theoremInvertabilityWhenTokenListSeparable!310 (LexerInterface!2873 List!18489 List!18490) Unit!31326)

(assert (=> b!1670826 (= lt!630498 (theoremInvertabilityWhenTokenListSeparable!310 thiss!17113 rules!1846 (t!152641 tokens!457)))))

(declare-fun lt!630484 () List!18488)

(declare-fun isPrefix!1502 (List!18488 List!18488) Bool)

(assert (=> b!1670826 (isPrefix!1502 lt!630482 lt!630484)))

(declare-fun lt!630495 () Unit!31326)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1023 (List!18488 List!18488) Unit!31326)

(assert (=> b!1670826 (= lt!630495 (lemmaConcatTwoListThenFirstIsPrefix!1023 lt!630482 lt!630481))))

(declare-fun b!1670827 () Bool)

(declare-fun e!1070683 () Bool)

(assert (=> b!1670827 (= e!1070680 e!1070683)))

(declare-fun res!749271 () Bool)

(assert (=> b!1670827 (=> res!749271 e!1070683)))

(declare-fun lt!630485 () List!18488)

(declare-fun prefixMatch!485 (Regex!4572 List!18488) Bool)

(declare-fun ++!5024 (List!18488 List!18488) List!18488)

(assert (=> b!1670827 (= res!749271 (prefixMatch!485 lt!630488 (++!5024 lt!630482 lt!630485)))))

(assert (=> b!1670827 (= lt!630485 (list!7381 lt!630486))))

(declare-fun b!1670828 () Bool)

(declare-fun head!3736 (List!18488) C!9318)

(assert (=> b!1670828 (= e!1070683 (= lt!630485 (Cons!18418 (head!3736 (originalCharacters!4058 (h!23821 (t!152641 tokens!457)))) Nil!18418)))))

(assert (=> b!1670828 (= lt!630482 (originalCharacters!4058 (h!23821 tokens!457)))))

(declare-fun b!1670829 () Bool)

(declare-fun res!749256 () Bool)

(assert (=> b!1670829 (=> (not res!749256) (not e!1070677))))

(declare-fun isEmpty!11479 (List!18489) Bool)

(assert (=> b!1670829 (= res!749256 (not (isEmpty!11479 rules!1846)))))

(declare-fun tp!482283 () Bool)

(declare-fun b!1670830 () Bool)

(declare-fun e!1070673 () Bool)

(assert (=> b!1670830 (= e!1070675 (and tp!482283 (inv!23769 (tag!3528 (rule!5134 (h!23821 tokens!457)))) (inv!23772 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) e!1070673))))

(declare-fun b!1670831 () Bool)

(declare-fun res!749270 () Bool)

(assert (=> b!1670831 (=> (not res!749270) (not e!1070677))))

(declare-fun rulesProduceEachTokenIndividuallyList!1075 (LexerInterface!2873 List!18489 List!18490) Bool)

(assert (=> b!1670831 (= res!749270 (rulesProduceEachTokenIndividuallyList!1075 thiss!17113 rules!1846 tokens!457))))

(declare-fun res!749267 () Bool)

(assert (=> start!162200 (=> (not res!749267) (not e!1070677))))

(assert (=> start!162200 (= res!749267 (is-Lexer!2871 thiss!17113))))

(assert (=> start!162200 e!1070677))

(assert (=> start!162200 true))

(declare-fun e!1070681 () Bool)

(assert (=> start!162200 e!1070681))

(assert (=> start!162200 e!1070687))

(declare-fun b!1670817 () Bool)

(assert (=> b!1670817 (= e!1070686 e!1070676)))

(declare-fun res!749258 () Bool)

(assert (=> b!1670817 (=> res!749258 e!1070676)))

(declare-fun lt!630490 () List!18490)

(declare-fun lt!630479 () List!18490)

(assert (=> b!1670817 (= res!749258 (or (not (= lt!630499 lt!630490)) (not (= lt!630490 lt!630479))))))

(declare-fun lt!630497 () BalanceConc!12218)

(assert (=> b!1670817 (= lt!630490 (list!7382 lt!630497))))

(assert (=> b!1670817 (= lt!630499 lt!630479)))

(declare-fun prepend!832 (BalanceConc!12218 Token!6054) BalanceConc!12218)

(declare-fun seqFromList!2226 (List!18490) BalanceConc!12218)

(assert (=> b!1670817 (= lt!630479 (list!7382 (prepend!832 (seqFromList!2226 (t!152641 (t!152641 tokens!457))) (h!23821 (t!152641 tokens!457)))))))

(declare-fun lt!630496 () Unit!31326)

(declare-fun seqFromListBHdTlConstructive!313 (Token!6054 List!18490 BalanceConc!12218) Unit!31326)

(assert (=> b!1670817 (= lt!630496 (seqFromListBHdTlConstructive!313 (h!23821 (t!152641 tokens!457)) (t!152641 (t!152641 tokens!457)) (_1!10473 lt!630487)))))

(declare-fun b!1670832 () Bool)

(declare-fun res!749262 () Bool)

(assert (=> b!1670832 (=> (not res!749262) (not e!1070677))))

(assert (=> b!1670832 (= res!749262 (and (not (is-Nil!18420 tokens!457)) (not (is-Nil!18420 (t!152641 tokens!457)))))))

(declare-fun b!1670833 () Bool)

(assert (=> b!1670833 (= e!1070677 e!1070688)))

(declare-fun res!749259 () Bool)

(assert (=> b!1670833 (=> (not res!749259) (not e!1070688))))

(assert (=> b!1670833 (= res!749259 (= lt!630492 lt!630484))))

(assert (=> b!1670833 (= lt!630484 (++!5024 lt!630482 lt!630481))))

(declare-fun lt!630477 () BalanceConc!12216)

(assert (=> b!1670833 (= lt!630492 (list!7381 lt!630477))))

(declare-fun lt!630493 () BalanceConc!12216)

(assert (=> b!1670833 (= lt!630481 (list!7381 lt!630493))))

(assert (=> b!1670833 (= lt!630482 (list!7381 lt!630500))))

(assert (=> b!1670833 (= lt!630500 (charsOf!1893 (h!23821 tokens!457)))))

(assert (=> b!1670833 (= lt!630487 (lex!1357 thiss!17113 rules!1846 lt!630493))))

(assert (=> b!1670833 (= lt!630493 (print!1404 thiss!17113 lt!630497))))

(assert (=> b!1670833 (= lt!630497 (seqFromList!2226 (t!152641 tokens!457)))))

(assert (=> b!1670833 (= lt!630477 (print!1404 thiss!17113 (seqFromList!2226 tokens!457)))))

(declare-fun b!1670834 () Bool)

(declare-fun tp!482278 () Bool)

(assert (=> b!1670834 (= e!1070681 (and e!1070679 tp!482278))))

(assert (=> b!1670835 (= e!1070673 (and tp!482281 tp!482277))))

(assert (= (and start!162200 res!749267) b!1670829))

(assert (= (and b!1670829 res!749256) b!1670813))

(assert (= (and b!1670813 res!749268) b!1670831))

(assert (= (and b!1670831 res!749270) b!1670818))

(assert (= (and b!1670818 res!749264) b!1670832))

(assert (= (and b!1670832 res!749262) b!1670833))

(assert (= (and b!1670833 res!749259) b!1670826))

(assert (= (and b!1670826 (not res!749260)) b!1670817))

(assert (= (and b!1670817 (not res!749258)) b!1670825))

(assert (= (and b!1670825 (not res!749269)) b!1670819))

(assert (= (and b!1670819 (not res!749265)) b!1670814))

(assert (= (and b!1670814 (not res!749263)) b!1670824))

(assert (= (and b!1670824 (not res!749261)) b!1670820))

(assert (= (and b!1670820 (not res!749266)) b!1670822))

(assert (= (and b!1670822 (not res!749257)) b!1670827))

(assert (= (and b!1670827 (not res!749271)) b!1670828))

(assert (= b!1670815 b!1670823))

(assert (= b!1670834 b!1670815))

(assert (= (and start!162200 (is-Cons!18419 rules!1846)) b!1670834))

(assert (= b!1670830 b!1670835))

(assert (= b!1670821 b!1670830))

(assert (= b!1670816 b!1670821))

(assert (= (and start!162200 (is-Cons!18420 tokens!457)) b!1670816))

(declare-fun m!2037009 () Bool)

(assert (=> b!1670814 m!2037009))

(declare-fun m!2037011 () Bool)

(assert (=> b!1670822 m!2037011))

(declare-fun m!2037013 () Bool)

(assert (=> b!1670822 m!2037013))

(declare-fun m!2037015 () Bool)

(assert (=> b!1670822 m!2037015))

(declare-fun m!2037017 () Bool)

(assert (=> b!1670822 m!2037017))

(declare-fun m!2037019 () Bool)

(assert (=> b!1670822 m!2037019))

(assert (=> b!1670822 m!2037017))

(assert (=> b!1670822 m!2037019))

(declare-fun m!2037021 () Bool)

(assert (=> b!1670822 m!2037021))

(assert (=> b!1670822 m!2037013))

(declare-fun m!2037023 () Bool)

(assert (=> b!1670826 m!2037023))

(declare-fun m!2037025 () Bool)

(assert (=> b!1670826 m!2037025))

(declare-fun m!2037027 () Bool)

(assert (=> b!1670826 m!2037027))

(declare-fun m!2037029 () Bool)

(assert (=> b!1670826 m!2037029))

(declare-fun m!2037031 () Bool)

(assert (=> b!1670818 m!2037031))

(declare-fun m!2037033 () Bool)

(assert (=> b!1670821 m!2037033))

(declare-fun m!2037035 () Bool)

(assert (=> b!1670813 m!2037035))

(declare-fun m!2037037 () Bool)

(assert (=> b!1670815 m!2037037))

(declare-fun m!2037039 () Bool)

(assert (=> b!1670815 m!2037039))

(declare-fun m!2037041 () Bool)

(assert (=> b!1670816 m!2037041))

(declare-fun m!2037043 () Bool)

(assert (=> b!1670831 m!2037043))

(declare-fun m!2037045 () Bool)

(assert (=> b!1670828 m!2037045))

(declare-fun m!2037047 () Bool)

(assert (=> b!1670830 m!2037047))

(declare-fun m!2037049 () Bool)

(assert (=> b!1670830 m!2037049))

(declare-fun m!2037051 () Bool)

(assert (=> b!1670824 m!2037051))

(assert (=> b!1670824 m!2037051))

(declare-fun m!2037053 () Bool)

(assert (=> b!1670824 m!2037053))

(declare-fun m!2037055 () Bool)

(assert (=> b!1670824 m!2037055))

(declare-fun m!2037057 () Bool)

(assert (=> b!1670820 m!2037057))

(declare-fun m!2037059 () Bool)

(assert (=> b!1670820 m!2037059))

(declare-fun m!2037061 () Bool)

(assert (=> b!1670833 m!2037061))

(declare-fun m!2037063 () Bool)

(assert (=> b!1670833 m!2037063))

(declare-fun m!2037065 () Bool)

(assert (=> b!1670833 m!2037065))

(declare-fun m!2037067 () Bool)

(assert (=> b!1670833 m!2037067))

(declare-fun m!2037069 () Bool)

(assert (=> b!1670833 m!2037069))

(declare-fun m!2037071 () Bool)

(assert (=> b!1670833 m!2037071))

(declare-fun m!2037073 () Bool)

(assert (=> b!1670833 m!2037073))

(declare-fun m!2037075 () Bool)

(assert (=> b!1670833 m!2037075))

(assert (=> b!1670833 m!2037065))

(declare-fun m!2037077 () Bool)

(assert (=> b!1670833 m!2037077))

(declare-fun m!2037079 () Bool)

(assert (=> b!1670833 m!2037079))

(declare-fun m!2037081 () Bool)

(assert (=> b!1670819 m!2037081))

(declare-fun m!2037083 () Bool)

(assert (=> b!1670819 m!2037083))

(declare-fun m!2037085 () Bool)

(assert (=> b!1670819 m!2037085))

(declare-fun m!2037087 () Bool)

(assert (=> b!1670819 m!2037087))

(declare-fun m!2037089 () Bool)

(assert (=> b!1670819 m!2037089))

(declare-fun m!2037091 () Bool)

(assert (=> b!1670819 m!2037091))

(declare-fun m!2037093 () Bool)

(assert (=> b!1670829 m!2037093))

(declare-fun m!2037095 () Bool)

(assert (=> b!1670827 m!2037095))

(assert (=> b!1670827 m!2037095))

(declare-fun m!2037097 () Bool)

(assert (=> b!1670827 m!2037097))

(declare-fun m!2037099 () Bool)

(assert (=> b!1670827 m!2037099))

(declare-fun m!2037101 () Bool)

(assert (=> b!1670817 m!2037101))

(declare-fun m!2037103 () Bool)

(assert (=> b!1670817 m!2037103))

(declare-fun m!2037105 () Bool)

(assert (=> b!1670817 m!2037105))

(declare-fun m!2037107 () Bool)

(assert (=> b!1670817 m!2037107))

(declare-fun m!2037109 () Bool)

(assert (=> b!1670817 m!2037109))

(assert (=> b!1670817 m!2037105))

(assert (=> b!1670817 m!2037107))

(declare-fun m!2037111 () Bool)

(assert (=> b!1670825 m!2037111))

(push 1)

(assert (not b!1670831))

(assert (not b!1670813))

(assert b_and!118821)

(assert b_and!118823)

(assert (not b_next!46147))

(assert b_and!118825)

(assert (not b!1670827))

(assert (not b_next!46145))

(assert (not b!1670814))

(assert (not b!1670815))

(assert (not b!1670826))

(assert (not b!1670833))

(assert (not b!1670830))

(assert (not b!1670819))

(assert (not b!1670816))

(assert (not b!1670822))

(assert b_and!118827)

(assert (not b!1670824))

(assert (not b!1670825))

(assert (not b!1670821))

(assert (not b!1670829))

(assert (not b!1670820))

(assert (not b!1670817))

(assert (not b!1670828))

(assert (not b_next!46149))

(assert (not b!1670818))

(assert (not b!1670834))

(assert (not b_next!46143))

(check-sat)

(pop 1)

(push 1)

(assert b_and!118827)

(assert b_and!118821)

(assert b_and!118823)

(assert (not b_next!46147))

(assert b_and!118825)

(assert (not b_next!46149))

(assert (not b_next!46143))

(assert (not b_next!46145))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!505361 () Bool)

(assert (=> d!505361 (= (inv!23769 (tag!3528 (h!23820 rules!1846))) (= (mod (str.len (value!102127 (tag!3528 (h!23820 rules!1846)))) 2) 0))))

(assert (=> b!1670815 d!505361))

(declare-fun d!505363 () Bool)

(declare-fun res!749325 () Bool)

(declare-fun e!1070747 () Bool)

(assert (=> d!505363 (=> (not res!749325) (not e!1070747))))

(declare-fun semiInverseModEq!1269 (Int Int) Bool)

(assert (=> d!505363 (= res!749325 (semiInverseModEq!1269 (toChars!4570 (transformation!3244 (h!23820 rules!1846))) (toValue!4711 (transformation!3244 (h!23820 rules!1846)))))))

(assert (=> d!505363 (= (inv!23772 (transformation!3244 (h!23820 rules!1846))) e!1070747)))

(declare-fun b!1670907 () Bool)

(declare-fun equivClasses!1210 (Int Int) Bool)

(assert (=> b!1670907 (= e!1070747 (equivClasses!1210 (toChars!4570 (transformation!3244 (h!23820 rules!1846))) (toValue!4711 (transformation!3244 (h!23820 rules!1846)))))))

(assert (= (and d!505363 res!749325) b!1670907))

(declare-fun m!2037217 () Bool)

(assert (=> d!505363 m!2037217))

(declare-fun m!2037219 () Bool)

(assert (=> b!1670907 m!2037219))

(assert (=> b!1670815 d!505363))

(declare-fun d!505365 () Bool)

(declare-fun lt!630578 () Bool)

(declare-fun e!1070752 () Bool)

(assert (=> d!505365 (= lt!630578 e!1070752)))

(declare-fun res!749336 () Bool)

(assert (=> d!505365 (=> (not res!749336) (not e!1070752))))

(assert (=> d!505365 (= res!749336 (= (list!7382 (_1!10473 (lex!1357 thiss!17113 rules!1846 (print!1404 thiss!17113 (singletonSeq!1756 (h!23821 tokens!457)))))) (list!7382 (singletonSeq!1756 (h!23821 tokens!457)))))))

(declare-fun e!1070753 () Bool)

(assert (=> d!505365 (= lt!630578 e!1070753)))

(declare-fun res!749337 () Bool)

(assert (=> d!505365 (=> (not res!749337) (not e!1070753))))

(declare-fun lt!630577 () tuple2!18142)

(declare-fun size!14655 (BalanceConc!12218) Int)

(assert (=> d!505365 (= res!749337 (= (size!14655 (_1!10473 lt!630577)) 1))))

(assert (=> d!505365 (= lt!630577 (lex!1357 thiss!17113 rules!1846 (print!1404 thiss!17113 (singletonSeq!1756 (h!23821 tokens!457)))))))

(assert (=> d!505365 (not (isEmpty!11479 rules!1846))))

(assert (=> d!505365 (= (rulesProduceIndividualToken!1521 thiss!17113 rules!1846 (h!23821 tokens!457)) lt!630578)))

(declare-fun b!1670914 () Bool)

(declare-fun res!749338 () Bool)

(assert (=> b!1670914 (=> (not res!749338) (not e!1070753))))

(declare-fun apply!4973 (BalanceConc!12218 Int) Token!6054)

(assert (=> b!1670914 (= res!749338 (= (apply!4973 (_1!10473 lt!630577) 0) (h!23821 tokens!457)))))

(declare-fun b!1670915 () Bool)

(declare-fun isEmpty!11482 (BalanceConc!12216) Bool)

(assert (=> b!1670915 (= e!1070753 (isEmpty!11482 (_2!10473 lt!630577)))))

(declare-fun b!1670916 () Bool)

(assert (=> b!1670916 (= e!1070752 (isEmpty!11482 (_2!10473 (lex!1357 thiss!17113 rules!1846 (print!1404 thiss!17113 (singletonSeq!1756 (h!23821 tokens!457)))))))))

(assert (= (and d!505365 res!749337) b!1670914))

(assert (= (and b!1670914 res!749338) b!1670915))

(assert (= (and d!505365 res!749336) b!1670916))

(assert (=> d!505365 m!2037093))

(declare-fun m!2037221 () Bool)

(assert (=> d!505365 m!2037221))

(declare-fun m!2037223 () Bool)

(assert (=> d!505365 m!2037223))

(declare-fun m!2037225 () Bool)

(assert (=> d!505365 m!2037225))

(assert (=> d!505365 m!2037089))

(assert (=> d!505365 m!2037089))

(declare-fun m!2037227 () Bool)

(assert (=> d!505365 m!2037227))

(declare-fun m!2037229 () Bool)

(assert (=> d!505365 m!2037229))

(assert (=> d!505365 m!2037089))

(assert (=> d!505365 m!2037221))

(declare-fun m!2037231 () Bool)

(assert (=> b!1670914 m!2037231))

(declare-fun m!2037233 () Bool)

(assert (=> b!1670915 m!2037233))

(assert (=> b!1670916 m!2037089))

(assert (=> b!1670916 m!2037089))

(assert (=> b!1670916 m!2037221))

(assert (=> b!1670916 m!2037221))

(assert (=> b!1670916 m!2037223))

(declare-fun m!2037235 () Bool)

(assert (=> b!1670916 m!2037235))

(assert (=> b!1670814 d!505365))

(declare-fun d!505369 () Bool)

(assert (=> d!505369 (= (separableTokensPredicate!813 thiss!17113 (h!23821 tokens!457) (h!23821 (t!152641 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!676 (rulesRegex!626 thiss!17113 rules!1846) (++!5023 (charsOf!1893 (h!23821 tokens!457)) (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0))))))))

(declare-fun bs!398093 () Bool)

(assert (= bs!398093 d!505369))

(assert (=> bs!398093 m!2037011))

(assert (=> bs!398093 m!2037017))

(assert (=> bs!398093 m!2037019))

(assert (=> bs!398093 m!2037021))

(assert (=> bs!398093 m!2037079))

(assert (=> bs!398093 m!2037021))

(declare-fun m!2037241 () Bool)

(assert (=> bs!398093 m!2037241))

(assert (=> bs!398093 m!2037079))

(assert (=> bs!398093 m!2037017))

(assert (=> bs!398093 m!2037019))

(assert (=> bs!398093 m!2037011))

(assert (=> bs!398093 m!2037241))

(declare-fun m!2037243 () Bool)

(assert (=> bs!398093 m!2037243))

(assert (=> b!1670825 d!505369))

(declare-fun lt!630581 () Bool)

(declare-fun d!505373 () Bool)

(declare-fun isEmpty!11483 (List!18490) Bool)

(assert (=> d!505373 (= lt!630581 (isEmpty!11483 (list!7382 (_1!10473 (lex!1357 thiss!17113 rules!1846 (seqFromList!2225 lt!630482))))))))

(declare-fun isEmpty!11484 (Conc!6137) Bool)

(assert (=> d!505373 (= lt!630581 (isEmpty!11484 (c!271873 (_1!10473 (lex!1357 thiss!17113 rules!1846 (seqFromList!2225 lt!630482))))))))

(assert (=> d!505373 (= (isEmpty!11478 (_1!10473 (lex!1357 thiss!17113 rules!1846 (seqFromList!2225 lt!630482)))) lt!630581)))

(declare-fun bs!398094 () Bool)

(assert (= bs!398094 d!505373))

(declare-fun m!2037251 () Bool)

(assert (=> bs!398094 m!2037251))

(assert (=> bs!398094 m!2037251))

(declare-fun m!2037253 () Bool)

(assert (=> bs!398094 m!2037253))

(declare-fun m!2037257 () Bool)

(assert (=> bs!398094 m!2037257))

(assert (=> b!1670824 d!505373))

(declare-fun d!505375 () Bool)

(declare-fun e!1070774 () Bool)

(assert (=> d!505375 e!1070774))

(declare-fun res!749359 () Bool)

(assert (=> d!505375 (=> (not res!749359) (not e!1070774))))

(declare-fun e!1070772 () Bool)

(assert (=> d!505375 (= res!749359 e!1070772)))

(declare-fun c!271883 () Bool)

(declare-fun lt!630590 () tuple2!18142)

(assert (=> d!505375 (= c!271883 (> (size!14655 (_1!10473 lt!630590)) 0))))

(declare-fun lexTailRecV2!621 (LexerInterface!2873 List!18489 BalanceConc!12216 BalanceConc!12216 BalanceConc!12216 BalanceConc!12218) tuple2!18142)

(assert (=> d!505375 (= lt!630590 (lexTailRecV2!621 thiss!17113 rules!1846 (seqFromList!2225 lt!630482) (BalanceConc!12217 Empty!6136) (seqFromList!2225 lt!630482) (BalanceConc!12219 Empty!6137)))))

(assert (=> d!505375 (= (lex!1357 thiss!17113 rules!1846 (seqFromList!2225 lt!630482)) lt!630590)))

(declare-fun b!1670950 () Bool)

(declare-fun e!1070773 () Bool)

(assert (=> b!1670950 (= e!1070772 e!1070773)))

(declare-fun res!749358 () Bool)

(declare-fun size!14656 (BalanceConc!12216) Int)

(assert (=> b!1670950 (= res!749358 (< (size!14656 (_2!10473 lt!630590)) (size!14656 (seqFromList!2225 lt!630482))))))

(assert (=> b!1670950 (=> (not res!749358) (not e!1070773))))

(declare-fun b!1670951 () Bool)

(declare-fun res!749357 () Bool)

(assert (=> b!1670951 (=> (not res!749357) (not e!1070774))))

(declare-datatypes ((tuple2!18148 0))(
  ( (tuple2!18149 (_1!10476 List!18490) (_2!10476 List!18488)) )
))
(declare-fun lexList!898 (LexerInterface!2873 List!18489 List!18488) tuple2!18148)

(assert (=> b!1670951 (= res!749357 (= (list!7382 (_1!10473 lt!630590)) (_1!10476 (lexList!898 thiss!17113 rules!1846 (list!7381 (seqFromList!2225 lt!630482))))))))

(declare-fun b!1670952 () Bool)

(assert (=> b!1670952 (= e!1070772 (= (_2!10473 lt!630590) (seqFromList!2225 lt!630482)))))

(declare-fun b!1670953 () Bool)

(assert (=> b!1670953 (= e!1070774 (= (list!7381 (_2!10473 lt!630590)) (_2!10476 (lexList!898 thiss!17113 rules!1846 (list!7381 (seqFromList!2225 lt!630482))))))))

(declare-fun b!1670954 () Bool)

(assert (=> b!1670954 (= e!1070773 (not (isEmpty!11478 (_1!10473 lt!630590))))))

(assert (= (and d!505375 c!271883) b!1670950))

(assert (= (and d!505375 (not c!271883)) b!1670952))

(assert (= (and b!1670950 res!749358) b!1670954))

(assert (= (and d!505375 res!749359) b!1670951))

(assert (= (and b!1670951 res!749357) b!1670953))

(declare-fun m!2037285 () Bool)

(assert (=> d!505375 m!2037285))

(assert (=> d!505375 m!2037051))

(assert (=> d!505375 m!2037051))

(declare-fun m!2037287 () Bool)

(assert (=> d!505375 m!2037287))

(declare-fun m!2037289 () Bool)

(assert (=> b!1670951 m!2037289))

(assert (=> b!1670951 m!2037051))

(declare-fun m!2037291 () Bool)

(assert (=> b!1670951 m!2037291))

(assert (=> b!1670951 m!2037291))

(declare-fun m!2037293 () Bool)

(assert (=> b!1670951 m!2037293))

(declare-fun m!2037295 () Bool)

(assert (=> b!1670954 m!2037295))

(declare-fun m!2037297 () Bool)

(assert (=> b!1670950 m!2037297))

(assert (=> b!1670950 m!2037051))

(declare-fun m!2037299 () Bool)

(assert (=> b!1670950 m!2037299))

(declare-fun m!2037301 () Bool)

(assert (=> b!1670953 m!2037301))

(assert (=> b!1670953 m!2037051))

(assert (=> b!1670953 m!2037291))

(assert (=> b!1670953 m!2037291))

(assert (=> b!1670953 m!2037293))

(assert (=> b!1670824 d!505375))

(declare-fun d!505383 () Bool)

(declare-fun fromListB!1012 (List!18488) BalanceConc!12216)

(assert (=> d!505383 (= (seqFromList!2225 lt!630482) (fromListB!1012 lt!630482))))

(declare-fun bs!398096 () Bool)

(assert (= bs!398096 d!505383))

(declare-fun m!2037303 () Bool)

(assert (=> bs!398096 m!2037303))

(assert (=> b!1670824 d!505383))

(declare-fun d!505385 () Bool)

(declare-fun res!749362 () Bool)

(declare-fun e!1070777 () Bool)

(assert (=> d!505385 (=> (not res!749362) (not e!1070777))))

(declare-fun rulesValid!1197 (LexerInterface!2873 List!18489) Bool)

(assert (=> d!505385 (= res!749362 (rulesValid!1197 thiss!17113 rules!1846))))

(assert (=> d!505385 (= (rulesInvariant!2542 thiss!17113 rules!1846) e!1070777)))

(declare-fun b!1670957 () Bool)

(declare-datatypes ((List!18495 0))(
  ( (Nil!18425) (Cons!18425 (h!23826 String!21004) (t!152679 List!18495)) )
))
(declare-fun noDuplicateTag!1197 (LexerInterface!2873 List!18489 List!18495) Bool)

(assert (=> b!1670957 (= e!1070777 (noDuplicateTag!1197 thiss!17113 rules!1846 Nil!18425))))

(assert (= (and d!505385 res!749362) b!1670957))

(declare-fun m!2037305 () Bool)

(assert (=> d!505385 m!2037305))

(declare-fun m!2037307 () Bool)

(assert (=> b!1670957 m!2037307))

(assert (=> b!1670813 d!505385))

(declare-fun d!505387 () Bool)

(declare-fun e!1070780 () Bool)

(assert (=> d!505387 e!1070780))

(declare-fun res!749365 () Bool)

(assert (=> d!505387 (=> (not res!749365) (not e!1070780))))

(declare-fun lt!630593 () BalanceConc!12216)

(assert (=> d!505387 (= res!749365 (= (list!7381 lt!630593) (Cons!18418 (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0) Nil!18418)))))

(declare-fun singleton!785 (C!9318) BalanceConc!12216)

(assert (=> d!505387 (= lt!630593 (singleton!785 (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0)))))

(assert (=> d!505387 (= (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0)) lt!630593)))

(declare-fun b!1670960 () Bool)

(declare-fun isBalanced!1911 (Conc!6136) Bool)

(assert (=> b!1670960 (= e!1070780 (isBalanced!1911 (c!271871 lt!630593)))))

(assert (= (and d!505387 res!749365) b!1670960))

(declare-fun m!2037309 () Bool)

(assert (=> d!505387 m!2037309))

(assert (=> d!505387 m!2037019))

(declare-fun m!2037311 () Bool)

(assert (=> d!505387 m!2037311))

(declare-fun m!2037313 () Bool)

(assert (=> b!1670960 m!2037313))

(assert (=> b!1670822 d!505387))

(declare-fun b!1670970 () Bool)

(declare-fun res!749376 () Bool)

(declare-fun e!1070783 () Bool)

(assert (=> b!1670970 (=> (not res!749376) (not e!1070783))))

(declare-fun height!972 (Conc!6136) Int)

(declare-fun ++!5027 (Conc!6136 Conc!6136) Conc!6136)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1670970 (= res!749376 (<= (height!972 (++!5027 (c!271871 lt!630500) (c!271871 lt!630486))) (+ (max!0 (height!972 (c!271871 lt!630500)) (height!972 (c!271871 lt!630486))) 1)))))

(declare-fun b!1670969 () Bool)

(declare-fun res!749375 () Bool)

(assert (=> b!1670969 (=> (not res!749375) (not e!1070783))))

(assert (=> b!1670969 (= res!749375 (isBalanced!1911 (++!5027 (c!271871 lt!630500) (c!271871 lt!630486))))))

(declare-fun b!1670971 () Bool)

(declare-fun res!749377 () Bool)

(assert (=> b!1670971 (=> (not res!749377) (not e!1070783))))

(assert (=> b!1670971 (= res!749377 (>= (height!972 (++!5027 (c!271871 lt!630500) (c!271871 lt!630486))) (max!0 (height!972 (c!271871 lt!630500)) (height!972 (c!271871 lt!630486)))))))

(declare-fun d!505389 () Bool)

(assert (=> d!505389 e!1070783))

(declare-fun res!749374 () Bool)

(assert (=> d!505389 (=> (not res!749374) (not e!1070783))))

(declare-fun appendAssocInst!486 (Conc!6136 Conc!6136) Bool)

(assert (=> d!505389 (= res!749374 (appendAssocInst!486 (c!271871 lt!630500) (c!271871 lt!630486)))))

(declare-fun lt!630596 () BalanceConc!12216)

(assert (=> d!505389 (= lt!630596 (BalanceConc!12217 (++!5027 (c!271871 lt!630500) (c!271871 lt!630486))))))

(assert (=> d!505389 (= (++!5023 lt!630500 lt!630486) lt!630596)))

(declare-fun b!1670972 () Bool)

(assert (=> b!1670972 (= e!1070783 (= (list!7381 lt!630596) (++!5024 (list!7381 lt!630500) (list!7381 lt!630486))))))

(assert (= (and d!505389 res!749374) b!1670969))

(assert (= (and b!1670969 res!749375) b!1670970))

(assert (= (and b!1670970 res!749376) b!1670971))

(assert (= (and b!1670971 res!749377) b!1670972))

(declare-fun m!2037315 () Bool)

(assert (=> b!1670972 m!2037315))

(assert (=> b!1670972 m!2037075))

(assert (=> b!1670972 m!2037099))

(assert (=> b!1670972 m!2037075))

(assert (=> b!1670972 m!2037099))

(declare-fun m!2037317 () Bool)

(assert (=> b!1670972 m!2037317))

(declare-fun m!2037319 () Bool)

(assert (=> b!1670970 m!2037319))

(declare-fun m!2037321 () Bool)

(assert (=> b!1670970 m!2037321))

(declare-fun m!2037323 () Bool)

(assert (=> b!1670970 m!2037323))

(assert (=> b!1670970 m!2037321))

(declare-fun m!2037325 () Bool)

(assert (=> b!1670970 m!2037325))

(assert (=> b!1670970 m!2037325))

(assert (=> b!1670970 m!2037319))

(declare-fun m!2037327 () Bool)

(assert (=> b!1670970 m!2037327))

(declare-fun m!2037329 () Bool)

(assert (=> d!505389 m!2037329))

(assert (=> d!505389 m!2037321))

(assert (=> b!1670969 m!2037321))

(assert (=> b!1670969 m!2037321))

(declare-fun m!2037331 () Bool)

(assert (=> b!1670969 m!2037331))

(assert (=> b!1670971 m!2037319))

(assert (=> b!1670971 m!2037321))

(assert (=> b!1670971 m!2037323))

(assert (=> b!1670971 m!2037321))

(assert (=> b!1670971 m!2037325))

(assert (=> b!1670971 m!2037325))

(assert (=> b!1670971 m!2037319))

(assert (=> b!1670971 m!2037327))

(assert (=> b!1670822 d!505389))

(declare-fun d!505391 () Bool)

(declare-fun lt!630626 () Bool)

(assert (=> d!505391 (= lt!630626 (prefixMatch!485 lt!630488 (list!7381 (++!5023 lt!630500 lt!630486))))))

(declare-datatypes ((List!18496 0))(
  ( (Nil!18426) (Cons!18426 (h!23827 Regex!4572) (t!152680 List!18496)) )
))
(declare-datatypes ((Context!1836 0))(
  ( (Context!1837 (exprs!1418 List!18496)) )
))
(declare-fun prefixMatchZipperSequence!678 ((Set Context!1836) BalanceConc!12216 Int) Bool)

(declare-fun focus!224 (Regex!4572) (Set Context!1836))

(assert (=> d!505391 (= lt!630626 (prefixMatchZipperSequence!678 (focus!224 lt!630488) (++!5023 lt!630500 lt!630486) 0))))

(declare-fun lt!630621 () Unit!31326)

(declare-fun lt!630617 () Unit!31326)

(assert (=> d!505391 (= lt!630621 lt!630617)))

(declare-fun lt!630623 () List!18488)

(declare-fun lt!630619 () (Set Context!1836))

(declare-fun prefixMatchZipper!203 ((Set Context!1836) List!18488) Bool)

(assert (=> d!505391 (= (prefixMatch!485 lt!630488 lt!630623) (prefixMatchZipper!203 lt!630619 lt!630623))))

(declare-datatypes ((List!18497 0))(
  ( (Nil!18427) (Cons!18427 (h!23828 Context!1836) (t!152681 List!18497)) )
))
(declare-fun lt!630625 () List!18497)

(declare-fun prefixMatchZipperRegexEquiv!203 ((Set Context!1836) List!18497 Regex!4572 List!18488) Unit!31326)

(assert (=> d!505391 (= lt!630617 (prefixMatchZipperRegexEquiv!203 lt!630619 lt!630625 lt!630488 lt!630623))))

(assert (=> d!505391 (= lt!630623 (list!7381 (++!5023 lt!630500 lt!630486)))))

(declare-fun toList!964 ((Set Context!1836)) List!18497)

(assert (=> d!505391 (= lt!630625 (toList!964 (focus!224 lt!630488)))))

(assert (=> d!505391 (= lt!630619 (focus!224 lt!630488))))

(declare-fun lt!630618 () Unit!31326)

(declare-fun lt!630624 () Unit!31326)

(assert (=> d!505391 (= lt!630618 lt!630624)))

(declare-fun lt!630622 () Int)

(declare-fun lt!630620 () (Set Context!1836))

(declare-fun dropList!721 (BalanceConc!12216 Int) List!18488)

(assert (=> d!505391 (= (prefixMatchZipper!203 lt!630620 (dropList!721 (++!5023 lt!630500 lt!630486) lt!630622)) (prefixMatchZipperSequence!678 lt!630620 (++!5023 lt!630500 lt!630486) lt!630622))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!203 ((Set Context!1836) BalanceConc!12216 Int) Unit!31326)

(assert (=> d!505391 (= lt!630624 (lemmaprefixMatchZipperSequenceEquivalent!203 lt!630620 (++!5023 lt!630500 lt!630486) lt!630622))))

(assert (=> d!505391 (= lt!630622 0)))

(assert (=> d!505391 (= lt!630620 (focus!224 lt!630488))))

(declare-fun validRegex!1833 (Regex!4572) Bool)

(assert (=> d!505391 (validRegex!1833 lt!630488)))

(assert (=> d!505391 (= (prefixMatchZipperSequence!676 lt!630488 (++!5023 lt!630500 lt!630486)) lt!630626)))

(declare-fun bs!398097 () Bool)

(assert (= bs!398097 d!505391))

(declare-fun m!2037333 () Bool)

(assert (=> bs!398097 m!2037333))

(declare-fun m!2037335 () Bool)

(assert (=> bs!398097 m!2037335))

(declare-fun m!2037337 () Bool)

(assert (=> bs!398097 m!2037337))

(declare-fun m!2037339 () Bool)

(assert (=> bs!398097 m!2037339))

(assert (=> bs!398097 m!2037337))

(declare-fun m!2037341 () Bool)

(assert (=> bs!398097 m!2037341))

(declare-fun m!2037343 () Bool)

(assert (=> bs!398097 m!2037343))

(assert (=> bs!398097 m!2037013))

(assert (=> bs!398097 m!2037333))

(declare-fun m!2037345 () Bool)

(assert (=> bs!398097 m!2037345))

(declare-fun m!2037347 () Bool)

(assert (=> bs!398097 m!2037347))

(assert (=> bs!398097 m!2037013))

(declare-fun m!2037349 () Bool)

(assert (=> bs!398097 m!2037349))

(declare-fun m!2037351 () Bool)

(assert (=> bs!398097 m!2037351))

(assert (=> bs!398097 m!2037337))

(assert (=> bs!398097 m!2037013))

(declare-fun m!2037353 () Bool)

(assert (=> bs!398097 m!2037353))

(assert (=> bs!398097 m!2037013))

(declare-fun m!2037355 () Bool)

(assert (=> bs!398097 m!2037355))

(declare-fun m!2037357 () Bool)

(assert (=> bs!398097 m!2037357))

(assert (=> bs!398097 m!2037013))

(assert (=> bs!398097 m!2037345))

(assert (=> b!1670822 d!505391))

(declare-fun d!505393 () Bool)

(declare-fun lt!630629 () C!9318)

(declare-fun apply!4974 (List!18488 Int) C!9318)

(assert (=> d!505393 (= lt!630629 (apply!4974 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) 0))))

(declare-fun apply!4975 (Conc!6136 Int) C!9318)

(assert (=> d!505393 (= lt!630629 (apply!4975 (c!271871 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) 0))))

(declare-fun e!1070786 () Bool)

(assert (=> d!505393 e!1070786))

(declare-fun res!749380 () Bool)

(assert (=> d!505393 (=> (not res!749380) (not e!1070786))))

(assert (=> d!505393 (= res!749380 (<= 0 0))))

(assert (=> d!505393 (= (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0) lt!630629)))

(declare-fun b!1670975 () Bool)

(assert (=> b!1670975 (= e!1070786 (< 0 (size!14656 (charsOf!1893 (h!23821 (t!152641 tokens!457))))))))

(assert (= (and d!505393 res!749380) b!1670975))

(assert (=> d!505393 m!2037017))

(declare-fun m!2037359 () Bool)

(assert (=> d!505393 m!2037359))

(assert (=> d!505393 m!2037359))

(declare-fun m!2037361 () Bool)

(assert (=> d!505393 m!2037361))

(declare-fun m!2037363 () Bool)

(assert (=> d!505393 m!2037363))

(assert (=> b!1670975 m!2037017))

(declare-fun m!2037365 () Bool)

(assert (=> b!1670975 m!2037365))

(assert (=> b!1670822 d!505393))

(declare-fun d!505395 () Bool)

(declare-fun lt!630632 () Unit!31326)

(declare-fun lemma!289 (List!18489 LexerInterface!2873 List!18489) Unit!31326)

(assert (=> d!505395 (= lt!630632 (lemma!289 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!68045 () Int)

(declare-fun generalisedUnion!297 (List!18496) Regex!4572)

(declare-fun map!3791 (List!18489 Int) List!18496)

(assert (=> d!505395 (= (rulesRegex!626 thiss!17113 rules!1846) (generalisedUnion!297 (map!3791 rules!1846 lambda!68045)))))

(declare-fun bs!398098 () Bool)

(assert (= bs!398098 d!505395))

(declare-fun m!2037367 () Bool)

(assert (=> bs!398098 m!2037367))

(declare-fun m!2037369 () Bool)

(assert (=> bs!398098 m!2037369))

(assert (=> bs!398098 m!2037369))

(declare-fun m!2037371 () Bool)

(assert (=> bs!398098 m!2037371))

(assert (=> b!1670822 d!505395))

(declare-fun d!505397 () Bool)

(declare-fun lt!630635 () BalanceConc!12216)

(assert (=> d!505397 (= (list!7381 lt!630635) (originalCharacters!4058 (h!23821 (t!152641 tokens!457))))))

(declare-fun dynLambda!8312 (Int TokenValue!3334) BalanceConc!12216)

(assert (=> d!505397 (= lt!630635 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (value!102128 (h!23821 (t!152641 tokens!457)))))))

(assert (=> d!505397 (= (charsOf!1893 (h!23821 (t!152641 tokens!457))) lt!630635)))

(declare-fun b_lambda!52487 () Bool)

(assert (=> (not b_lambda!52487) (not d!505397)))

(declare-fun t!152653 () Bool)

(declare-fun tb!95875 () Bool)

(assert (=> (and b!1670823 (= (toChars!4570 (transformation!3244 (h!23820 rules!1846))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457)))))) t!152653) tb!95875))

(declare-fun b!1670980 () Bool)

(declare-fun e!1070789 () Bool)

(declare-fun tp!482318 () Bool)

(declare-fun inv!23776 (Conc!6136) Bool)

(assert (=> b!1670980 (= e!1070789 (and (inv!23776 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (value!102128 (h!23821 (t!152641 tokens!457)))))) tp!482318))))

(declare-fun result!115856 () Bool)

(declare-fun inv!23777 (BalanceConc!12216) Bool)

(assert (=> tb!95875 (= result!115856 (and (inv!23777 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (value!102128 (h!23821 (t!152641 tokens!457))))) e!1070789))))

(assert (= tb!95875 b!1670980))

(declare-fun m!2037373 () Bool)

(assert (=> b!1670980 m!2037373))

(declare-fun m!2037375 () Bool)

(assert (=> tb!95875 m!2037375))

(assert (=> d!505397 t!152653))

(declare-fun b_and!118841 () Bool)

(assert (= b_and!118823 (and (=> t!152653 result!115856) b_and!118841)))

(declare-fun t!152655 () Bool)

(declare-fun tb!95877 () Bool)

(assert (=> (and b!1670835 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457)))))) t!152655) tb!95877))

(declare-fun result!115860 () Bool)

(assert (= result!115860 result!115856))

(assert (=> d!505397 t!152655))

(declare-fun b_and!118843 () Bool)

(assert (= b_and!118827 (and (=> t!152655 result!115860) b_and!118843)))

(declare-fun m!2037377 () Bool)

(assert (=> d!505397 m!2037377))

(declare-fun m!2037379 () Bool)

(assert (=> d!505397 m!2037379))

(assert (=> b!1670822 d!505397))

(declare-fun d!505399 () Bool)

(declare-fun lt!630638 () BalanceConc!12216)

(assert (=> d!505399 (= (list!7381 lt!630638) (printList!986 thiss!17113 (list!7382 (seqFromList!2226 tokens!457))))))

(assert (=> d!505399 (= lt!630638 (printTailRec!924 thiss!17113 (seqFromList!2226 tokens!457) 0 (BalanceConc!12217 Empty!6136)))))

(assert (=> d!505399 (= (print!1404 thiss!17113 (seqFromList!2226 tokens!457)) lt!630638)))

(declare-fun bs!398099 () Bool)

(assert (= bs!398099 d!505399))

(declare-fun m!2037381 () Bool)

(assert (=> bs!398099 m!2037381))

(assert (=> bs!398099 m!2037065))

(declare-fun m!2037383 () Bool)

(assert (=> bs!398099 m!2037383))

(assert (=> bs!398099 m!2037383))

(declare-fun m!2037385 () Bool)

(assert (=> bs!398099 m!2037385))

(assert (=> bs!398099 m!2037065))

(declare-fun m!2037387 () Bool)

(assert (=> bs!398099 m!2037387))

(assert (=> b!1670833 d!505399))

(declare-fun e!1070801 () Bool)

(declare-fun lt!630643 () List!18488)

(declare-fun b!1671002 () Bool)

(assert (=> b!1671002 (= e!1070801 (or (not (= lt!630481 Nil!18418)) (= lt!630643 lt!630482)))))

(declare-fun b!1671001 () Bool)

(declare-fun res!749391 () Bool)

(assert (=> b!1671001 (=> (not res!749391) (not e!1070801))))

(declare-fun size!14657 (List!18488) Int)

(assert (=> b!1671001 (= res!749391 (= (size!14657 lt!630643) (+ (size!14657 lt!630482) (size!14657 lt!630481))))))

(declare-fun b!1671000 () Bool)

(declare-fun e!1070800 () List!18488)

(assert (=> b!1671000 (= e!1070800 (Cons!18418 (h!23819 lt!630482) (++!5024 (t!152639 lt!630482) lt!630481)))))

(declare-fun d!505401 () Bool)

(assert (=> d!505401 e!1070801))

(declare-fun res!749392 () Bool)

(assert (=> d!505401 (=> (not res!749392) (not e!1070801))))

(declare-fun content!2576 (List!18488) (Set C!9318))

(assert (=> d!505401 (= res!749392 (= (content!2576 lt!630643) (set.union (content!2576 lt!630482) (content!2576 lt!630481))))))

(assert (=> d!505401 (= lt!630643 e!1070800)))

(declare-fun c!271891 () Bool)

(assert (=> d!505401 (= c!271891 (is-Nil!18418 lt!630482))))

(assert (=> d!505401 (= (++!5024 lt!630482 lt!630481) lt!630643)))

(declare-fun b!1670999 () Bool)

(assert (=> b!1670999 (= e!1070800 lt!630481)))

(assert (= (and d!505401 c!271891) b!1670999))

(assert (= (and d!505401 (not c!271891)) b!1671000))

(assert (= (and d!505401 res!749392) b!1671001))

(assert (= (and b!1671001 res!749391) b!1671002))

(declare-fun m!2037389 () Bool)

(assert (=> b!1671001 m!2037389))

(declare-fun m!2037391 () Bool)

(assert (=> b!1671001 m!2037391))

(declare-fun m!2037393 () Bool)

(assert (=> b!1671001 m!2037393))

(declare-fun m!2037395 () Bool)

(assert (=> b!1671000 m!2037395))

(declare-fun m!2037397 () Bool)

(assert (=> d!505401 m!2037397))

(declare-fun m!2037399 () Bool)

(assert (=> d!505401 m!2037399))

(declare-fun m!2037401 () Bool)

(assert (=> d!505401 m!2037401))

(assert (=> b!1670833 d!505401))

(declare-fun d!505403 () Bool)

(declare-fun list!7385 (Conc!6136) List!18488)

(assert (=> d!505403 (= (list!7381 lt!630493) (list!7385 (c!271871 lt!630493)))))

(declare-fun bs!398100 () Bool)

(assert (= bs!398100 d!505403))

(declare-fun m!2037403 () Bool)

(assert (=> bs!398100 m!2037403))

(assert (=> b!1670833 d!505403))

(declare-fun d!505405 () Bool)

(declare-fun e!1070804 () Bool)

(assert (=> d!505405 e!1070804))

(declare-fun res!749395 () Bool)

(assert (=> d!505405 (=> (not res!749395) (not e!1070804))))

(declare-fun e!1070802 () Bool)

(assert (=> d!505405 (= res!749395 e!1070802)))

(declare-fun c!271892 () Bool)

(declare-fun lt!630644 () tuple2!18142)

(assert (=> d!505405 (= c!271892 (> (size!14655 (_1!10473 lt!630644)) 0))))

(assert (=> d!505405 (= lt!630644 (lexTailRecV2!621 thiss!17113 rules!1846 lt!630493 (BalanceConc!12217 Empty!6136) lt!630493 (BalanceConc!12219 Empty!6137)))))

(assert (=> d!505405 (= (lex!1357 thiss!17113 rules!1846 lt!630493) lt!630644)))

(declare-fun b!1671003 () Bool)

(declare-fun e!1070803 () Bool)

(assert (=> b!1671003 (= e!1070802 e!1070803)))

(declare-fun res!749394 () Bool)

(assert (=> b!1671003 (= res!749394 (< (size!14656 (_2!10473 lt!630644)) (size!14656 lt!630493)))))

(assert (=> b!1671003 (=> (not res!749394) (not e!1070803))))

(declare-fun b!1671004 () Bool)

(declare-fun res!749393 () Bool)

(assert (=> b!1671004 (=> (not res!749393) (not e!1070804))))

(assert (=> b!1671004 (= res!749393 (= (list!7382 (_1!10473 lt!630644)) (_1!10476 (lexList!898 thiss!17113 rules!1846 (list!7381 lt!630493)))))))

(declare-fun b!1671005 () Bool)

(assert (=> b!1671005 (= e!1070802 (= (_2!10473 lt!630644) lt!630493))))

(declare-fun b!1671006 () Bool)

(assert (=> b!1671006 (= e!1070804 (= (list!7381 (_2!10473 lt!630644)) (_2!10476 (lexList!898 thiss!17113 rules!1846 (list!7381 lt!630493)))))))

(declare-fun b!1671007 () Bool)

(assert (=> b!1671007 (= e!1070803 (not (isEmpty!11478 (_1!10473 lt!630644))))))

(assert (= (and d!505405 c!271892) b!1671003))

(assert (= (and d!505405 (not c!271892)) b!1671005))

(assert (= (and b!1671003 res!749394) b!1671007))

(assert (= (and d!505405 res!749395) b!1671004))

(assert (= (and b!1671004 res!749393) b!1671006))

(declare-fun m!2037405 () Bool)

(assert (=> d!505405 m!2037405))

(declare-fun m!2037407 () Bool)

(assert (=> d!505405 m!2037407))

(declare-fun m!2037409 () Bool)

(assert (=> b!1671004 m!2037409))

(assert (=> b!1671004 m!2037077))

(assert (=> b!1671004 m!2037077))

(declare-fun m!2037411 () Bool)

(assert (=> b!1671004 m!2037411))

(declare-fun m!2037413 () Bool)

(assert (=> b!1671007 m!2037413))

(declare-fun m!2037417 () Bool)

(assert (=> b!1671003 m!2037417))

(declare-fun m!2037419 () Bool)

(assert (=> b!1671003 m!2037419))

(declare-fun m!2037421 () Bool)

(assert (=> b!1671006 m!2037421))

(assert (=> b!1671006 m!2037077))

(assert (=> b!1671006 m!2037077))

(assert (=> b!1671006 m!2037411))

(assert (=> b!1670833 d!505405))

(declare-fun d!505407 () Bool)

(assert (=> d!505407 (= (list!7381 lt!630500) (list!7385 (c!271871 lt!630500)))))

(declare-fun bs!398101 () Bool)

(assert (= bs!398101 d!505407))

(declare-fun m!2037431 () Bool)

(assert (=> bs!398101 m!2037431))

(assert (=> b!1670833 d!505407))

(declare-fun d!505409 () Bool)

(declare-fun fromListB!1013 (List!18490) BalanceConc!12218)

(assert (=> d!505409 (= (seqFromList!2226 tokens!457) (fromListB!1013 tokens!457))))

(declare-fun bs!398104 () Bool)

(assert (= bs!398104 d!505409))

(declare-fun m!2037443 () Bool)

(assert (=> bs!398104 m!2037443))

(assert (=> b!1670833 d!505409))

(declare-fun d!505417 () Bool)

(declare-fun lt!630646 () BalanceConc!12216)

(assert (=> d!505417 (= (list!7381 lt!630646) (originalCharacters!4058 (h!23821 tokens!457)))))

(assert (=> d!505417 (= lt!630646 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (value!102128 (h!23821 tokens!457))))))

(assert (=> d!505417 (= (charsOf!1893 (h!23821 tokens!457)) lt!630646)))

(declare-fun b_lambda!52489 () Bool)

(assert (=> (not b_lambda!52489) (not d!505417)))

(declare-fun tb!95879 () Bool)

(declare-fun t!152657 () Bool)

(assert (=> (and b!1670823 (= (toChars!4570 (transformation!3244 (h!23820 rules!1846))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457))))) t!152657) tb!95879))

(declare-fun b!1671013 () Bool)

(declare-fun e!1070808 () Bool)

(declare-fun tp!482319 () Bool)

(assert (=> b!1671013 (= e!1070808 (and (inv!23776 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (value!102128 (h!23821 tokens!457))))) tp!482319))))

(declare-fun result!115862 () Bool)

(assert (=> tb!95879 (= result!115862 (and (inv!23777 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (value!102128 (h!23821 tokens!457)))) e!1070808))))

(assert (= tb!95879 b!1671013))

(declare-fun m!2037445 () Bool)

(assert (=> b!1671013 m!2037445))

(declare-fun m!2037447 () Bool)

(assert (=> tb!95879 m!2037447))

(assert (=> d!505417 t!152657))

(declare-fun b_and!118845 () Bool)

(assert (= b_and!118841 (and (=> t!152657 result!115862) b_and!118845)))

(declare-fun t!152659 () Bool)

(declare-fun tb!95881 () Bool)

(assert (=> (and b!1670835 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457))))) t!152659) tb!95881))

(declare-fun result!115864 () Bool)

(assert (= result!115864 result!115862))

(assert (=> d!505417 t!152659))

(declare-fun b_and!118847 () Bool)

(assert (= b_and!118843 (and (=> t!152659 result!115864) b_and!118847)))

(declare-fun m!2037449 () Bool)

(assert (=> d!505417 m!2037449))

(declare-fun m!2037451 () Bool)

(assert (=> d!505417 m!2037451))

(assert (=> b!1670833 d!505417))

(declare-fun d!505419 () Bool)

(assert (=> d!505419 (= (list!7381 lt!630477) (list!7385 (c!271871 lt!630477)))))

(declare-fun bs!398105 () Bool)

(assert (= bs!398105 d!505419))

(declare-fun m!2037453 () Bool)

(assert (=> bs!398105 m!2037453))

(assert (=> b!1670833 d!505419))

(declare-fun d!505421 () Bool)

(declare-fun lt!630649 () BalanceConc!12216)

(assert (=> d!505421 (= (list!7381 lt!630649) (printList!986 thiss!17113 (list!7382 lt!630497)))))

(assert (=> d!505421 (= lt!630649 (printTailRec!924 thiss!17113 lt!630497 0 (BalanceConc!12217 Empty!6136)))))

(assert (=> d!505421 (= (print!1404 thiss!17113 lt!630497) lt!630649)))

(declare-fun bs!398106 () Bool)

(assert (= bs!398106 d!505421))

(declare-fun m!2037455 () Bool)

(assert (=> bs!398106 m!2037455))

(assert (=> bs!398106 m!2037101))

(assert (=> bs!398106 m!2037101))

(declare-fun m!2037457 () Bool)

(assert (=> bs!398106 m!2037457))

(declare-fun m!2037459 () Bool)

(assert (=> bs!398106 m!2037459))

(assert (=> b!1670833 d!505421))

(declare-fun d!505423 () Bool)

(assert (=> d!505423 (= (seqFromList!2226 (t!152641 tokens!457)) (fromListB!1013 (t!152641 tokens!457)))))

(declare-fun bs!398107 () Bool)

(assert (= bs!398107 d!505423))

(declare-fun m!2037461 () Bool)

(assert (=> bs!398107 m!2037461))

(assert (=> b!1670833 d!505423))

(declare-fun b!1671024 () Bool)

(declare-fun res!749401 () Bool)

(declare-fun e!1070815 () Bool)

(assert (=> b!1671024 (=> res!749401 e!1070815)))

(assert (=> b!1671024 (= res!749401 (not (is-IntegerValue!10004 (value!102128 (h!23821 tokens!457)))))))

(declare-fun e!1070816 () Bool)

(assert (=> b!1671024 (= e!1070816 e!1070815)))

(declare-fun d!505425 () Bool)

(declare-fun c!271898 () Bool)

(assert (=> d!505425 (= c!271898 (is-IntegerValue!10002 (value!102128 (h!23821 tokens!457))))))

(declare-fun e!1070817 () Bool)

(assert (=> d!505425 (= (inv!21 (value!102128 (h!23821 tokens!457))) e!1070817)))

(declare-fun b!1671025 () Bool)

(declare-fun inv!16 (TokenValue!3334) Bool)

(assert (=> b!1671025 (= e!1070817 (inv!16 (value!102128 (h!23821 tokens!457))))))

(declare-fun b!1671026 () Bool)

(declare-fun inv!17 (TokenValue!3334) Bool)

(assert (=> b!1671026 (= e!1070816 (inv!17 (value!102128 (h!23821 tokens!457))))))

(declare-fun b!1671027 () Bool)

(assert (=> b!1671027 (= e!1070817 e!1070816)))

(declare-fun c!271899 () Bool)

(assert (=> b!1671027 (= c!271899 (is-IntegerValue!10003 (value!102128 (h!23821 tokens!457))))))

(declare-fun b!1671028 () Bool)

(declare-fun inv!15 (TokenValue!3334) Bool)

(assert (=> b!1671028 (= e!1070815 (inv!15 (value!102128 (h!23821 tokens!457))))))

(assert (= (and d!505425 c!271898) b!1671025))

(assert (= (and d!505425 (not c!271898)) b!1671027))

(assert (= (and b!1671027 c!271899) b!1671026))

(assert (= (and b!1671027 (not c!271899)) b!1671024))

(assert (= (and b!1671024 (not res!749401)) b!1671028))

(declare-fun m!2037477 () Bool)

(assert (=> b!1671025 m!2037477))

(declare-fun m!2037479 () Bool)

(assert (=> b!1671026 m!2037479))

(declare-fun m!2037481 () Bool)

(assert (=> b!1671028 m!2037481))

(assert (=> b!1670821 d!505425))

(declare-fun d!505437 () Bool)

(declare-fun isEmpty!11485 (Option!3539) Bool)

(assert (=> d!505437 (= (isDefined!2892 lt!630489) (not (isEmpty!11485 lt!630489)))))

(declare-fun bs!398112 () Bool)

(assert (= bs!398112 d!505437))

(declare-fun m!2037483 () Bool)

(assert (=> bs!398112 m!2037483))

(assert (=> b!1670820 d!505437))

(declare-fun b!1671047 () Bool)

(declare-fun res!749409 () Bool)

(declare-fun e!1070827 () Bool)

(assert (=> b!1671047 (=> (not res!749409) (not e!1070827))))

(declare-fun lt!630688 () Token!6054)

(declare-fun matchR!2063 (Regex!4572 List!18488) Bool)

(declare-datatypes ((Option!3541 0))(
  ( (None!3540) (Some!3540 (v!24819 Rule!6288)) )
))
(declare-fun get!5395 (Option!3541) Rule!6288)

(declare-fun getRuleFromTag!337 (LexerInterface!2873 List!18489 String!21004) Option!3541)

(assert (=> b!1671047 (= res!749409 (matchR!2063 (regex!3244 (get!5395 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!630688))))) (list!7381 (charsOf!1893 lt!630688))))))

(declare-fun b!1671048 () Bool)

(assert (=> b!1671048 (= e!1070827 (= (rule!5134 lt!630688) (get!5395 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!630688))))))))

(declare-fun b!1671050 () Bool)

(declare-fun e!1070828 () Unit!31326)

(declare-fun Unit!31331 () Unit!31326)

(assert (=> b!1671050 (= e!1070828 Unit!31331)))

(declare-fun d!505439 () Bool)

(assert (=> d!505439 (isDefined!2892 (maxPrefix!1433 thiss!17113 rules!1846 (++!5024 lt!630482 lt!630481)))))

(declare-fun lt!630696 () Unit!31326)

(assert (=> d!505439 (= lt!630696 e!1070828)))

(declare-fun c!271906 () Bool)

(assert (=> d!505439 (= c!271906 (isEmpty!11485 (maxPrefix!1433 thiss!17113 rules!1846 (++!5024 lt!630482 lt!630481))))))

(declare-fun lt!630703 () Unit!31326)

(declare-fun lt!630691 () Unit!31326)

(assert (=> d!505439 (= lt!630703 lt!630691)))

(assert (=> d!505439 e!1070827))

(declare-fun res!749408 () Bool)

(assert (=> d!505439 (=> (not res!749408) (not e!1070827))))

(declare-fun isDefined!2894 (Option!3541) Bool)

(assert (=> d!505439 (= res!749408 (isDefined!2894 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!630688)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!337 (LexerInterface!2873 List!18489 List!18488 Token!6054) Unit!31326)

(assert (=> d!505439 (= lt!630691 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!337 thiss!17113 rules!1846 lt!630482 lt!630688))))

(declare-fun lt!630702 () Unit!31326)

(declare-fun lt!630699 () Unit!31326)

(assert (=> d!505439 (= lt!630702 lt!630699)))

(declare-fun lt!630687 () List!18488)

(assert (=> d!505439 (isPrefix!1502 lt!630687 (++!5024 lt!630482 lt!630481))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!223 (List!18488 List!18488 List!18488) Unit!31326)

(assert (=> d!505439 (= lt!630699 (lemmaPrefixStaysPrefixWhenAddingToSuffix!223 lt!630687 lt!630482 lt!630481))))

(assert (=> d!505439 (= lt!630687 (list!7381 (charsOf!1893 lt!630688)))))

(declare-fun lt!630697 () Unit!31326)

(declare-fun lt!630695 () Unit!31326)

(assert (=> d!505439 (= lt!630697 lt!630695)))

(declare-fun lt!630700 () List!18488)

(declare-fun lt!630701 () List!18488)

(assert (=> d!505439 (isPrefix!1502 lt!630700 (++!5024 lt!630700 lt!630701))))

(assert (=> d!505439 (= lt!630695 (lemmaConcatTwoListThenFirstIsPrefix!1023 lt!630700 lt!630701))))

(declare-fun get!5396 (Option!3539) tuple2!18140)

(assert (=> d!505439 (= lt!630701 (_2!10472 (get!5396 (maxPrefix!1433 thiss!17113 rules!1846 lt!630482))))))

(assert (=> d!505439 (= lt!630700 (list!7381 (charsOf!1893 lt!630688)))))

(declare-fun head!3738 (List!18490) Token!6054)

(assert (=> d!505439 (= lt!630688 (head!3738 (list!7382 (_1!10473 (lex!1357 thiss!17113 rules!1846 (seqFromList!2225 lt!630482))))))))

(assert (=> d!505439 (not (isEmpty!11479 rules!1846))))

(assert (=> d!505439 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!435 thiss!17113 rules!1846 lt!630482 lt!630481) lt!630696)))

(declare-fun b!1671049 () Bool)

(declare-fun Unit!31332 () Unit!31326)

(assert (=> b!1671049 (= e!1070828 Unit!31332)))

(declare-fun lt!630689 () List!18488)

(assert (=> b!1671049 (= lt!630689 (++!5024 lt!630482 lt!630481))))

(declare-fun lt!630693 () Unit!31326)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!231 (LexerInterface!2873 Rule!6288 List!18489 List!18488) Unit!31326)

(assert (=> b!1671049 (= lt!630693 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!231 thiss!17113 (rule!5134 lt!630688) rules!1846 lt!630689))))

(declare-fun maxPrefixOneRule!836 (LexerInterface!2873 Rule!6288 List!18488) Option!3539)

(assert (=> b!1671049 (isEmpty!11485 (maxPrefixOneRule!836 thiss!17113 (rule!5134 lt!630688) lt!630689))))

(declare-fun lt!630698 () Unit!31326)

(assert (=> b!1671049 (= lt!630698 lt!630693)))

(declare-fun lt!630692 () List!18488)

(assert (=> b!1671049 (= lt!630692 (list!7381 (charsOf!1893 lt!630688)))))

(declare-fun lt!630694 () Unit!31326)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!227 (LexerInterface!2873 Rule!6288 List!18488 List!18488) Unit!31326)

(assert (=> b!1671049 (= lt!630694 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!227 thiss!17113 (rule!5134 lt!630688) lt!630692 (++!5024 lt!630482 lt!630481)))))

(assert (=> b!1671049 (not (matchR!2063 (regex!3244 (rule!5134 lt!630688)) lt!630692))))

(declare-fun lt!630690 () Unit!31326)

(assert (=> b!1671049 (= lt!630690 lt!630694)))

(assert (=> b!1671049 false))

(assert (= (and d!505439 res!749408) b!1671047))

(assert (= (and b!1671047 res!749409) b!1671048))

(assert (= (and d!505439 c!271906) b!1671049))

(assert (= (and d!505439 (not c!271906)) b!1671050))

(declare-fun m!2037511 () Bool)

(assert (=> b!1671047 m!2037511))

(declare-fun m!2037513 () Bool)

(assert (=> b!1671047 m!2037513))

(declare-fun m!2037515 () Bool)

(assert (=> b!1671047 m!2037515))

(declare-fun m!2037517 () Bool)

(assert (=> b!1671047 m!2037517))

(assert (=> b!1671047 m!2037515))

(assert (=> b!1671047 m!2037511))

(assert (=> b!1671047 m!2037517))

(declare-fun m!2037519 () Bool)

(assert (=> b!1671047 m!2037519))

(assert (=> b!1671048 m!2037511))

(assert (=> b!1671048 m!2037511))

(assert (=> b!1671048 m!2037513))

(assert (=> d!505439 m!2037051))

(assert (=> d!505439 m!2037053))

(assert (=> d!505439 m!2037251))

(assert (=> d!505439 m!2037515))

(assert (=> d!505439 m!2037517))

(assert (=> d!505439 m!2037511))

(declare-fun m!2037521 () Bool)

(assert (=> d!505439 m!2037521))

(declare-fun m!2037523 () Bool)

(assert (=> d!505439 m!2037523))

(declare-fun m!2037525 () Bool)

(assert (=> d!505439 m!2037525))

(declare-fun m!2037527 () Bool)

(assert (=> d!505439 m!2037527))

(declare-fun m!2037529 () Bool)

(assert (=> d!505439 m!2037529))

(declare-fun m!2037531 () Bool)

(assert (=> d!505439 m!2037531))

(assert (=> d!505439 m!2037511))

(assert (=> d!505439 m!2037529))

(declare-fun m!2037533 () Bool)

(assert (=> d!505439 m!2037533))

(declare-fun m!2037535 () Bool)

(assert (=> d!505439 m!2037535))

(assert (=> d!505439 m!2037093))

(assert (=> d!505439 m!2037535))

(declare-fun m!2037537 () Bool)

(assert (=> d!505439 m!2037537))

(assert (=> d!505439 m!2037073))

(declare-fun m!2037539 () Bool)

(assert (=> d!505439 m!2037539))

(declare-fun m!2037541 () Bool)

(assert (=> d!505439 m!2037541))

(assert (=> d!505439 m!2037523))

(declare-fun m!2037543 () Bool)

(assert (=> d!505439 m!2037543))

(assert (=> d!505439 m!2037515))

(assert (=> d!505439 m!2037073))

(assert (=> d!505439 m!2037251))

(declare-fun m!2037545 () Bool)

(assert (=> d!505439 m!2037545))

(assert (=> d!505439 m!2037073))

(assert (=> d!505439 m!2037529))

(assert (=> d!505439 m!2037051))

(assert (=> b!1671049 m!2037515))

(assert (=> b!1671049 m!2037517))

(declare-fun m!2037547 () Bool)

(assert (=> b!1671049 m!2037547))

(declare-fun m!2037549 () Bool)

(assert (=> b!1671049 m!2037549))

(assert (=> b!1671049 m!2037547))

(assert (=> b!1671049 m!2037073))

(declare-fun m!2037551 () Bool)

(assert (=> b!1671049 m!2037551))

(assert (=> b!1671049 m!2037515))

(declare-fun m!2037553 () Bool)

(assert (=> b!1671049 m!2037553))

(assert (=> b!1671049 m!2037073))

(declare-fun m!2037555 () Bool)

(assert (=> b!1671049 m!2037555))

(assert (=> b!1670820 d!505439))

(declare-fun b!1671159 () Bool)

(declare-fun e!1070897 () Bool)

(assert (=> b!1671159 (= e!1070897 true)))

(declare-fun b!1671158 () Bool)

(declare-fun e!1070896 () Bool)

(assert (=> b!1671158 (= e!1070896 e!1070897)))

(declare-fun b!1671157 () Bool)

(declare-fun e!1070895 () Bool)

(assert (=> b!1671157 (= e!1070895 e!1070896)))

(declare-fun d!505449 () Bool)

(assert (=> d!505449 e!1070895))

(assert (= b!1671158 b!1671159))

(assert (= b!1671157 b!1671158))

(assert (= (and d!505449 (is-Cons!18419 rules!1846)) b!1671157))

(declare-fun order!11073 () Int)

(declare-fun order!11075 () Int)

(declare-fun lambda!68048 () Int)

(declare-fun dynLambda!8313 (Int Int) Int)

(declare-fun dynLambda!8314 (Int Int) Int)

(assert (=> b!1671159 (< (dynLambda!8313 order!11073 (toValue!4711 (transformation!3244 (h!23820 rules!1846)))) (dynLambda!8314 order!11075 lambda!68048))))

(declare-fun order!11077 () Int)

(declare-fun dynLambda!8315 (Int Int) Int)

(assert (=> b!1671159 (< (dynLambda!8315 order!11077 (toChars!4570 (transformation!3244 (h!23820 rules!1846)))) (dynLambda!8314 order!11075 lambda!68048))))

(assert (=> d!505449 true))

(declare-fun lt!630840 () Bool)

(declare-fun forall!4187 (List!18490 Int) Bool)

(assert (=> d!505449 (= lt!630840 (forall!4187 tokens!457 lambda!68048))))

(declare-fun e!1070887 () Bool)

(assert (=> d!505449 (= lt!630840 e!1070887)))

(declare-fun res!749469 () Bool)

(assert (=> d!505449 (=> res!749469 e!1070887)))

(assert (=> d!505449 (= res!749469 (not (is-Cons!18420 tokens!457)))))

(assert (=> d!505449 (not (isEmpty!11479 rules!1846))))

(assert (=> d!505449 (= (rulesProduceEachTokenIndividuallyList!1075 thiss!17113 rules!1846 tokens!457) lt!630840)))

(declare-fun b!1671147 () Bool)

(declare-fun e!1070888 () Bool)

(assert (=> b!1671147 (= e!1070887 e!1070888)))

(declare-fun res!749468 () Bool)

(assert (=> b!1671147 (=> (not res!749468) (not e!1070888))))

(assert (=> b!1671147 (= res!749468 (rulesProduceIndividualToken!1521 thiss!17113 rules!1846 (h!23821 tokens!457)))))

(declare-fun b!1671148 () Bool)

(assert (=> b!1671148 (= e!1070888 (rulesProduceEachTokenIndividuallyList!1075 thiss!17113 rules!1846 (t!152641 tokens!457)))))

(assert (= (and d!505449 (not res!749469)) b!1671147))

(assert (= (and b!1671147 res!749468) b!1671148))

(declare-fun m!2037797 () Bool)

(assert (=> d!505449 m!2037797))

(assert (=> d!505449 m!2037093))

(assert (=> b!1671147 m!2037009))

(declare-fun m!2037799 () Bool)

(assert (=> b!1671148 m!2037799))

(assert (=> b!1670831 d!505449))

(declare-fun d!505491 () Bool)

(assert (=> d!505491 (= (inv!23769 (tag!3528 (rule!5134 (h!23821 tokens!457)))) (= (mod (str.len (value!102127 (tag!3528 (rule!5134 (h!23821 tokens!457))))) 2) 0))))

(assert (=> b!1670830 d!505491))

(declare-fun d!505493 () Bool)

(declare-fun res!749470 () Bool)

(declare-fun e!1070898 () Bool)

(assert (=> d!505493 (=> (not res!749470) (not e!1070898))))

(assert (=> d!505493 (= res!749470 (semiInverseModEq!1269 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (toValue!4711 (transformation!3244 (rule!5134 (h!23821 tokens!457))))))))

(assert (=> d!505493 (= (inv!23772 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) e!1070898)))

(declare-fun b!1671162 () Bool)

(assert (=> b!1671162 (= e!1070898 (equivClasses!1210 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (toValue!4711 (transformation!3244 (rule!5134 (h!23821 tokens!457))))))))

(assert (= (and d!505493 res!749470) b!1671162))

(declare-fun m!2037801 () Bool)

(assert (=> d!505493 m!2037801))

(declare-fun m!2037803 () Bool)

(assert (=> b!1671162 m!2037803))

(assert (=> b!1670830 d!505493))

(declare-fun d!505495 () Bool)

(declare-fun lt!630841 () BalanceConc!12216)

(assert (=> d!505495 (= (list!7381 lt!630841) (printList!986 thiss!17113 (list!7382 lt!630478)))))

(assert (=> d!505495 (= lt!630841 (printTailRec!924 thiss!17113 lt!630478 0 (BalanceConc!12217 Empty!6136)))))

(assert (=> d!505495 (= (print!1404 thiss!17113 lt!630478) lt!630841)))

(declare-fun bs!398124 () Bool)

(assert (= bs!398124 d!505495))

(declare-fun m!2037805 () Bool)

(assert (=> bs!398124 m!2037805))

(declare-fun m!2037807 () Bool)

(assert (=> bs!398124 m!2037807))

(assert (=> bs!398124 m!2037807))

(declare-fun m!2037809 () Bool)

(assert (=> bs!398124 m!2037809))

(assert (=> bs!398124 m!2037083))

(assert (=> b!1670819 d!505495))

(declare-fun d!505497 () Bool)

(assert (=> d!505497 (= (list!7381 lt!630494) (list!7385 (c!271871 lt!630494)))))

(declare-fun bs!398125 () Bool)

(assert (= bs!398125 d!505497))

(declare-fun m!2037811 () Bool)

(assert (=> bs!398125 m!2037811))

(assert (=> b!1670819 d!505497))

(declare-fun b!1671191 () Bool)

(declare-fun res!749499 () Bool)

(declare-fun e!1070915 () Bool)

(assert (=> b!1671191 (=> (not res!749499) (not e!1070915))))

(declare-fun lt!630873 () Option!3539)

(assert (=> b!1671191 (= res!749499 (= (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!630873)))) (originalCharacters!4058 (_1!10472 (get!5396 lt!630873)))))))

(declare-fun b!1671192 () Bool)

(declare-fun res!749498 () Bool)

(assert (=> b!1671192 (=> (not res!749498) (not e!1070915))))

(assert (=> b!1671192 (= res!749498 (matchR!2063 (regex!3244 (rule!5134 (_1!10472 (get!5396 lt!630873)))) (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!630873))))))))

(declare-fun b!1671193 () Bool)

(declare-fun res!749500 () Bool)

(assert (=> b!1671193 (=> (not res!749500) (not e!1070915))))

(declare-fun apply!4976 (TokenValueInjection!6328 BalanceConc!12216) TokenValue!3334)

(assert (=> b!1671193 (= res!749500 (= (value!102128 (_1!10472 (get!5396 lt!630873))) (apply!4976 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!630873)))) (seqFromList!2225 (originalCharacters!4058 (_1!10472 (get!5396 lt!630873)))))))))

(declare-fun b!1671194 () Bool)

(declare-fun res!749501 () Bool)

(assert (=> b!1671194 (=> (not res!749501) (not e!1070915))))

(assert (=> b!1671194 (= res!749501 (= (++!5024 (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!630873)))) (_2!10472 (get!5396 lt!630873))) lt!630492))))

(declare-fun b!1671195 () Bool)

(declare-fun contains!3221 (List!18489 Rule!6288) Bool)

(assert (=> b!1671195 (= e!1070915 (contains!3221 rules!1846 (rule!5134 (_1!10472 (get!5396 lt!630873)))))))

(declare-fun call!106590 () Option!3539)

(declare-fun bm!106585 () Bool)

(assert (=> bm!106585 (= call!106590 (maxPrefixOneRule!836 thiss!17113 (h!23820 rules!1846) lt!630492))))

(declare-fun d!505499 () Bool)

(declare-fun e!1070917 () Bool)

(assert (=> d!505499 e!1070917))

(declare-fun res!749497 () Bool)

(assert (=> d!505499 (=> res!749497 e!1070917)))

(assert (=> d!505499 (= res!749497 (isEmpty!11485 lt!630873))))

(declare-fun e!1070916 () Option!3539)

(assert (=> d!505499 (= lt!630873 e!1070916)))

(declare-fun c!271929 () Bool)

(assert (=> d!505499 (= c!271929 (and (is-Cons!18419 rules!1846) (is-Nil!18419 (t!152640 rules!1846))))))

(declare-fun lt!630877 () Unit!31326)

(declare-fun lt!630875 () Unit!31326)

(assert (=> d!505499 (= lt!630877 lt!630875)))

(assert (=> d!505499 (isPrefix!1502 lt!630492 lt!630492)))

(declare-fun lemmaIsPrefixRefl!1021 (List!18488 List!18488) Unit!31326)

(assert (=> d!505499 (= lt!630875 (lemmaIsPrefixRefl!1021 lt!630492 lt!630492))))

(declare-fun rulesValidInductive!1043 (LexerInterface!2873 List!18489) Bool)

(assert (=> d!505499 (rulesValidInductive!1043 thiss!17113 rules!1846)))

(assert (=> d!505499 (= (maxPrefix!1433 thiss!17113 rules!1846 lt!630492) lt!630873)))

(declare-fun b!1671196 () Bool)

(assert (=> b!1671196 (= e!1070916 call!106590)))

(declare-fun b!1671197 () Bool)

(declare-fun lt!630876 () Option!3539)

(declare-fun lt!630874 () Option!3539)

(assert (=> b!1671197 (= e!1070916 (ite (and (is-None!3538 lt!630876) (is-None!3538 lt!630874)) None!3538 (ite (is-None!3538 lt!630874) lt!630876 (ite (is-None!3538 lt!630876) lt!630874 (ite (>= (size!14653 (_1!10472 (v!24811 lt!630876))) (size!14653 (_1!10472 (v!24811 lt!630874)))) lt!630876 lt!630874)))))))

(assert (=> b!1671197 (= lt!630876 call!106590)))

(assert (=> b!1671197 (= lt!630874 (maxPrefix!1433 thiss!17113 (t!152640 rules!1846) lt!630492))))

(declare-fun b!1671198 () Bool)

(assert (=> b!1671198 (= e!1070917 e!1070915)))

(declare-fun res!749496 () Bool)

(assert (=> b!1671198 (=> (not res!749496) (not e!1070915))))

(assert (=> b!1671198 (= res!749496 (isDefined!2892 lt!630873))))

(declare-fun b!1671199 () Bool)

(declare-fun res!749495 () Bool)

(assert (=> b!1671199 (=> (not res!749495) (not e!1070915))))

(assert (=> b!1671199 (= res!749495 (< (size!14657 (_2!10472 (get!5396 lt!630873))) (size!14657 lt!630492)))))

(assert (= (and d!505499 c!271929) b!1671196))

(assert (= (and d!505499 (not c!271929)) b!1671197))

(assert (= (or b!1671196 b!1671197) bm!106585))

(assert (= (and d!505499 (not res!749497)) b!1671198))

(assert (= (and b!1671198 res!749496) b!1671191))

(assert (= (and b!1671191 res!749499) b!1671199))

(assert (= (and b!1671199 res!749495) b!1671194))

(assert (= (and b!1671194 res!749501) b!1671193))

(assert (= (and b!1671193 res!749500) b!1671192))

(assert (= (and b!1671192 res!749498) b!1671195))

(declare-fun m!2037831 () Bool)

(assert (=> b!1671199 m!2037831))

(declare-fun m!2037833 () Bool)

(assert (=> b!1671199 m!2037833))

(declare-fun m!2037835 () Bool)

(assert (=> b!1671199 m!2037835))

(assert (=> b!1671194 m!2037831))

(declare-fun m!2037837 () Bool)

(assert (=> b!1671194 m!2037837))

(assert (=> b!1671194 m!2037837))

(declare-fun m!2037839 () Bool)

(assert (=> b!1671194 m!2037839))

(assert (=> b!1671194 m!2037839))

(declare-fun m!2037841 () Bool)

(assert (=> b!1671194 m!2037841))

(declare-fun m!2037843 () Bool)

(assert (=> bm!106585 m!2037843))

(assert (=> b!1671192 m!2037831))

(assert (=> b!1671192 m!2037837))

(assert (=> b!1671192 m!2037837))

(assert (=> b!1671192 m!2037839))

(assert (=> b!1671192 m!2037839))

(declare-fun m!2037845 () Bool)

(assert (=> b!1671192 m!2037845))

(assert (=> b!1671193 m!2037831))

(declare-fun m!2037847 () Bool)

(assert (=> b!1671193 m!2037847))

(assert (=> b!1671193 m!2037847))

(declare-fun m!2037849 () Bool)

(assert (=> b!1671193 m!2037849))

(assert (=> b!1671191 m!2037831))

(assert (=> b!1671191 m!2037837))

(assert (=> b!1671191 m!2037837))

(assert (=> b!1671191 m!2037839))

(declare-fun m!2037851 () Bool)

(assert (=> b!1671198 m!2037851))

(declare-fun m!2037853 () Bool)

(assert (=> b!1671197 m!2037853))

(declare-fun m!2037855 () Bool)

(assert (=> d!505499 m!2037855))

(declare-fun m!2037857 () Bool)

(assert (=> d!505499 m!2037857))

(declare-fun m!2037859 () Bool)

(assert (=> d!505499 m!2037859))

(declare-fun m!2037861 () Bool)

(assert (=> d!505499 m!2037861))

(assert (=> b!1671195 m!2037831))

(declare-fun m!2037863 () Bool)

(assert (=> b!1671195 m!2037863))

(assert (=> b!1670819 d!505499))

(declare-fun d!505513 () Bool)

(declare-fun lt!630893 () BalanceConc!12216)

(declare-fun printListTailRec!418 (LexerInterface!2873 List!18490 List!18488) List!18488)

(declare-fun dropList!722 (BalanceConc!12218 Int) List!18490)

(assert (=> d!505513 (= (list!7381 lt!630893) (printListTailRec!418 thiss!17113 (dropList!722 lt!630478 0) (list!7381 (BalanceConc!12217 Empty!6136))))))

(declare-fun e!1070922 () BalanceConc!12216)

(assert (=> d!505513 (= lt!630893 e!1070922)))

(declare-fun c!271932 () Bool)

(assert (=> d!505513 (= c!271932 (>= 0 (size!14655 lt!630478)))))

(declare-fun e!1070923 () Bool)

(assert (=> d!505513 e!1070923))

(declare-fun res!749504 () Bool)

(assert (=> d!505513 (=> (not res!749504) (not e!1070923))))

(assert (=> d!505513 (= res!749504 (>= 0 0))))

(assert (=> d!505513 (= (printTailRec!924 thiss!17113 lt!630478 0 (BalanceConc!12217 Empty!6136)) lt!630893)))

(declare-fun b!1671206 () Bool)

(assert (=> b!1671206 (= e!1070923 (<= 0 (size!14655 lt!630478)))))

(declare-fun b!1671207 () Bool)

(assert (=> b!1671207 (= e!1070922 (BalanceConc!12217 Empty!6136))))

(declare-fun b!1671208 () Bool)

(assert (=> b!1671208 (= e!1070922 (printTailRec!924 thiss!17113 lt!630478 (+ 0 1) (++!5023 (BalanceConc!12217 Empty!6136) (charsOf!1893 (apply!4973 lt!630478 0)))))))

(declare-fun lt!630897 () List!18490)

(assert (=> b!1671208 (= lt!630897 (list!7382 lt!630478))))

(declare-fun lt!630896 () Unit!31326)

(declare-fun lemmaDropApply!625 (List!18490 Int) Unit!31326)

(assert (=> b!1671208 (= lt!630896 (lemmaDropApply!625 lt!630897 0))))

(declare-fun drop!945 (List!18490 Int) List!18490)

(declare-fun apply!4977 (List!18490 Int) Token!6054)

(assert (=> b!1671208 (= (head!3738 (drop!945 lt!630897 0)) (apply!4977 lt!630897 0))))

(declare-fun lt!630898 () Unit!31326)

(assert (=> b!1671208 (= lt!630898 lt!630896)))

(declare-fun lt!630892 () List!18490)

(assert (=> b!1671208 (= lt!630892 (list!7382 lt!630478))))

(declare-fun lt!630894 () Unit!31326)

(declare-fun lemmaDropTail!605 (List!18490 Int) Unit!31326)

(assert (=> b!1671208 (= lt!630894 (lemmaDropTail!605 lt!630892 0))))

(declare-fun tail!2495 (List!18490) List!18490)

(assert (=> b!1671208 (= (tail!2495 (drop!945 lt!630892 0)) (drop!945 lt!630892 (+ 0 1)))))

(declare-fun lt!630895 () Unit!31326)

(assert (=> b!1671208 (= lt!630895 lt!630894)))

(assert (= (and d!505513 res!749504) b!1671206))

(assert (= (and d!505513 c!271932) b!1671207))

(assert (= (and d!505513 (not c!271932)) b!1671208))

(declare-fun m!2037865 () Bool)

(assert (=> d!505513 m!2037865))

(declare-fun m!2037867 () Bool)

(assert (=> d!505513 m!2037867))

(declare-fun m!2037869 () Bool)

(assert (=> d!505513 m!2037869))

(assert (=> d!505513 m!2037867))

(declare-fun m!2037871 () Bool)

(assert (=> d!505513 m!2037871))

(assert (=> d!505513 m!2037865))

(declare-fun m!2037873 () Bool)

(assert (=> d!505513 m!2037873))

(assert (=> b!1671206 m!2037873))

(declare-fun m!2037875 () Bool)

(assert (=> b!1671208 m!2037875))

(declare-fun m!2037877 () Bool)

(assert (=> b!1671208 m!2037877))

(assert (=> b!1671208 m!2037807))

(declare-fun m!2037879 () Bool)

(assert (=> b!1671208 m!2037879))

(declare-fun m!2037881 () Bool)

(assert (=> b!1671208 m!2037881))

(declare-fun m!2037883 () Bool)

(assert (=> b!1671208 m!2037883))

(declare-fun m!2037885 () Bool)

(assert (=> b!1671208 m!2037885))

(declare-fun m!2037887 () Bool)

(assert (=> b!1671208 m!2037887))

(declare-fun m!2037889 () Bool)

(assert (=> b!1671208 m!2037889))

(declare-fun m!2037891 () Bool)

(assert (=> b!1671208 m!2037891))

(declare-fun m!2037893 () Bool)

(assert (=> b!1671208 m!2037893))

(assert (=> b!1671208 m!2037881))

(assert (=> b!1671208 m!2037893))

(assert (=> b!1671208 m!2037885))

(assert (=> b!1671208 m!2037879))

(declare-fun m!2037895 () Bool)

(assert (=> b!1671208 m!2037895))

(assert (=> b!1671208 m!2037887))

(declare-fun m!2037897 () Bool)

(assert (=> b!1671208 m!2037897))

(assert (=> b!1670819 d!505513))

(declare-fun d!505515 () Bool)

(declare-fun c!271935 () Bool)

(assert (=> d!505515 (= c!271935 (is-Cons!18420 (Cons!18420 (h!23821 tokens!457) Nil!18420)))))

(declare-fun e!1070926 () List!18488)

(assert (=> d!505515 (= (printList!986 thiss!17113 (Cons!18420 (h!23821 tokens!457) Nil!18420)) e!1070926)))

(declare-fun b!1671213 () Bool)

(assert (=> b!1671213 (= e!1070926 (++!5024 (list!7381 (charsOf!1893 (h!23821 (Cons!18420 (h!23821 tokens!457) Nil!18420)))) (printList!986 thiss!17113 (t!152641 (Cons!18420 (h!23821 tokens!457) Nil!18420)))))))

(declare-fun b!1671214 () Bool)

(assert (=> b!1671214 (= e!1070926 Nil!18418)))

(assert (= (and d!505515 c!271935) b!1671213))

(assert (= (and d!505515 (not c!271935)) b!1671214))

(declare-fun m!2037899 () Bool)

(assert (=> b!1671213 m!2037899))

(assert (=> b!1671213 m!2037899))

(declare-fun m!2037901 () Bool)

(assert (=> b!1671213 m!2037901))

(declare-fun m!2037903 () Bool)

(assert (=> b!1671213 m!2037903))

(assert (=> b!1671213 m!2037901))

(assert (=> b!1671213 m!2037903))

(declare-fun m!2037905 () Bool)

(assert (=> b!1671213 m!2037905))

(assert (=> b!1670819 d!505515))

(declare-fun d!505517 () Bool)

(declare-fun e!1070929 () Bool)

(assert (=> d!505517 e!1070929))

(declare-fun res!749507 () Bool)

(assert (=> d!505517 (=> (not res!749507) (not e!1070929))))

(declare-fun lt!630901 () BalanceConc!12218)

(assert (=> d!505517 (= res!749507 (= (list!7382 lt!630901) (Cons!18420 (h!23821 tokens!457) Nil!18420)))))

(declare-fun singleton!786 (Token!6054) BalanceConc!12218)

(assert (=> d!505517 (= lt!630901 (singleton!786 (h!23821 tokens!457)))))

(assert (=> d!505517 (= (singletonSeq!1756 (h!23821 tokens!457)) lt!630901)))

(declare-fun b!1671217 () Bool)

(declare-fun isBalanced!1912 (Conc!6137) Bool)

(assert (=> b!1671217 (= e!1070929 (isBalanced!1912 (c!271873 lt!630901)))))

(assert (= (and d!505517 res!749507) b!1671217))

(declare-fun m!2037907 () Bool)

(assert (=> d!505517 m!2037907))

(declare-fun m!2037909 () Bool)

(assert (=> d!505517 m!2037909))

(declare-fun m!2037911 () Bool)

(assert (=> b!1671217 m!2037911))

(assert (=> b!1670819 d!505517))

(declare-fun d!505519 () Bool)

(declare-fun res!749517 () Bool)

(declare-fun e!1070938 () Bool)

(assert (=> d!505519 (=> res!749517 e!1070938)))

(assert (=> d!505519 (= res!749517 (or (not (is-Cons!18420 tokens!457)) (not (is-Cons!18420 (t!152641 tokens!457)))))))

(assert (=> d!505519 (= (tokensListTwoByTwoPredicateSeparableList!566 thiss!17113 tokens!457 rules!1846) e!1070938)))

(declare-fun b!1671226 () Bool)

(declare-fun e!1070939 () Bool)

(assert (=> b!1671226 (= e!1070938 e!1070939)))

(declare-fun res!749516 () Bool)

(assert (=> b!1671226 (=> (not res!749516) (not e!1070939))))

(assert (=> b!1671226 (= res!749516 (separableTokensPredicate!813 thiss!17113 (h!23821 tokens!457) (h!23821 (t!152641 tokens!457)) rules!1846))))

(declare-fun lt!630923 () Unit!31326)

(declare-fun Unit!31333 () Unit!31326)

(assert (=> b!1671226 (= lt!630923 Unit!31333)))

(assert (=> b!1671226 (> (size!14656 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) 0)))

(declare-fun lt!630921 () Unit!31326)

(declare-fun Unit!31334 () Unit!31326)

(assert (=> b!1671226 (= lt!630921 Unit!31334)))

(assert (=> b!1671226 (rulesProduceIndividualToken!1521 thiss!17113 rules!1846 (h!23821 (t!152641 tokens!457)))))

(declare-fun lt!630920 () Unit!31326)

(declare-fun Unit!31335 () Unit!31326)

(assert (=> b!1671226 (= lt!630920 Unit!31335)))

(assert (=> b!1671226 (rulesProduceIndividualToken!1521 thiss!17113 rules!1846 (h!23821 tokens!457))))

(declare-fun lt!630922 () Unit!31326)

(declare-fun lt!630919 () Unit!31326)

(assert (=> b!1671226 (= lt!630922 lt!630919)))

(assert (=> b!1671226 (rulesProduceIndividualToken!1521 thiss!17113 rules!1846 (h!23821 (t!152641 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!633 (LexerInterface!2873 List!18489 List!18490 Token!6054) Unit!31326)

(assert (=> b!1671226 (= lt!630919 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!633 thiss!17113 rules!1846 tokens!457 (h!23821 (t!152641 tokens!457))))))

(declare-fun lt!630918 () Unit!31326)

(declare-fun lt!630924 () Unit!31326)

(assert (=> b!1671226 (= lt!630918 lt!630924)))

(assert (=> b!1671226 (rulesProduceIndividualToken!1521 thiss!17113 rules!1846 (h!23821 tokens!457))))

(assert (=> b!1671226 (= lt!630924 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!633 thiss!17113 rules!1846 tokens!457 (h!23821 tokens!457)))))

(declare-fun b!1671227 () Bool)

(assert (=> b!1671227 (= e!1070939 (tokensListTwoByTwoPredicateSeparableList!566 thiss!17113 (Cons!18420 (h!23821 (t!152641 tokens!457)) (t!152641 (t!152641 tokens!457))) rules!1846))))

(assert (= (and d!505519 (not res!749517)) b!1671226))

(assert (= (and b!1671226 res!749516) b!1671227))

(declare-fun m!2037913 () Bool)

(assert (=> b!1671226 m!2037913))

(declare-fun m!2037915 () Bool)

(assert (=> b!1671226 m!2037915))

(assert (=> b!1671226 m!2037111))

(assert (=> b!1671226 m!2037017))

(assert (=> b!1671226 m!2037365))

(declare-fun m!2037917 () Bool)

(assert (=> b!1671226 m!2037917))

(assert (=> b!1671226 m!2037009))

(assert (=> b!1671226 m!2037017))

(declare-fun m!2037919 () Bool)

(assert (=> b!1671227 m!2037919))

(assert (=> b!1670818 d!505519))

(declare-fun d!505521 () Bool)

(assert (=> d!505521 (= (isEmpty!11479 rules!1846) (is-Nil!18419 rules!1846))))

(assert (=> b!1670829 d!505521))

(declare-fun d!505523 () Bool)

(assert (=> d!505523 (= (head!3736 (originalCharacters!4058 (h!23821 (t!152641 tokens!457)))) (h!23819 (originalCharacters!4058 (h!23821 (t!152641 tokens!457)))))))

(assert (=> b!1670828 d!505523))

(declare-fun d!505525 () Bool)

(declare-fun e!1070942 () Bool)

(assert (=> d!505525 e!1070942))

(declare-fun res!749520 () Bool)

(assert (=> d!505525 (=> (not res!749520) (not e!1070942))))

(declare-fun prepend!834 (Conc!6137 Token!6054) Conc!6137)

(assert (=> d!505525 (= res!749520 (isBalanced!1912 (prepend!834 (c!271873 (seqFromList!2226 (t!152641 (t!152641 tokens!457)))) (h!23821 (t!152641 tokens!457)))))))

(declare-fun lt!630927 () BalanceConc!12218)

(assert (=> d!505525 (= lt!630927 (BalanceConc!12219 (prepend!834 (c!271873 (seqFromList!2226 (t!152641 (t!152641 tokens!457)))) (h!23821 (t!152641 tokens!457)))))))

(assert (=> d!505525 (= (prepend!832 (seqFromList!2226 (t!152641 (t!152641 tokens!457))) (h!23821 (t!152641 tokens!457))) lt!630927)))

(declare-fun b!1671230 () Bool)

(assert (=> b!1671230 (= e!1070942 (= (list!7382 lt!630927) (Cons!18420 (h!23821 (t!152641 tokens!457)) (list!7382 (seqFromList!2226 (t!152641 (t!152641 tokens!457)))))))))

(assert (= (and d!505525 res!749520) b!1671230))

(declare-fun m!2037921 () Bool)

(assert (=> d!505525 m!2037921))

(assert (=> d!505525 m!2037921))

(declare-fun m!2037923 () Bool)

(assert (=> d!505525 m!2037923))

(declare-fun m!2037925 () Bool)

(assert (=> b!1671230 m!2037925))

(assert (=> b!1671230 m!2037105))

(declare-fun m!2037927 () Bool)

(assert (=> b!1671230 m!2037927))

(assert (=> b!1670817 d!505525))

(declare-fun d!505527 () Bool)

(declare-fun list!7386 (Conc!6137) List!18490)

(assert (=> d!505527 (= (list!7382 (prepend!832 (seqFromList!2226 (t!152641 (t!152641 tokens!457))) (h!23821 (t!152641 tokens!457)))) (list!7386 (c!271873 (prepend!832 (seqFromList!2226 (t!152641 (t!152641 tokens!457))) (h!23821 (t!152641 tokens!457))))))))

(declare-fun bs!398126 () Bool)

(assert (= bs!398126 d!505527))

(declare-fun m!2037929 () Bool)

(assert (=> bs!398126 m!2037929))

(assert (=> b!1670817 d!505527))

(declare-fun d!505529 () Bool)

(assert (=> d!505529 (= (seqFromList!2226 (t!152641 (t!152641 tokens!457))) (fromListB!1013 (t!152641 (t!152641 tokens!457))))))

(declare-fun bs!398127 () Bool)

(assert (= bs!398127 d!505529))

(declare-fun m!2037931 () Bool)

(assert (=> bs!398127 m!2037931))

(assert (=> b!1670817 d!505529))

(declare-fun d!505531 () Bool)

(assert (=> d!505531 (= (list!7382 (_1!10473 lt!630487)) (list!7382 (prepend!832 (seqFromList!2226 (t!152641 (t!152641 tokens!457))) (h!23821 (t!152641 tokens!457)))))))

(declare-fun lt!630930 () Unit!31326)

(declare-fun choose!10062 (Token!6054 List!18490 BalanceConc!12218) Unit!31326)

(assert (=> d!505531 (= lt!630930 (choose!10062 (h!23821 (t!152641 tokens!457)) (t!152641 (t!152641 tokens!457)) (_1!10473 lt!630487)))))

(declare-fun $colon$colon!393 (List!18490 Token!6054) List!18490)

(assert (=> d!505531 (= (list!7382 (_1!10473 lt!630487)) (list!7382 (seqFromList!2226 ($colon$colon!393 (t!152641 (t!152641 tokens!457)) (h!23821 (t!152641 tokens!457))))))))

(assert (=> d!505531 (= (seqFromListBHdTlConstructive!313 (h!23821 (t!152641 tokens!457)) (t!152641 (t!152641 tokens!457)) (_1!10473 lt!630487)) lt!630930)))

(declare-fun bs!398128 () Bool)

(assert (= bs!398128 d!505531))

(assert (=> bs!398128 m!2037105))

(assert (=> bs!398128 m!2037107))

(assert (=> bs!398128 m!2037023))

(assert (=> bs!398128 m!2037107))

(assert (=> bs!398128 m!2037109))

(declare-fun m!2037933 () Bool)

(assert (=> bs!398128 m!2037933))

(declare-fun m!2037935 () Bool)

(assert (=> bs!398128 m!2037935))

(declare-fun m!2037937 () Bool)

(assert (=> bs!398128 m!2037937))

(declare-fun m!2037939 () Bool)

(assert (=> bs!398128 m!2037939))

(assert (=> bs!398128 m!2037933))

(assert (=> bs!398128 m!2037105))

(assert (=> bs!398128 m!2037939))

(assert (=> b!1670817 d!505531))

(declare-fun d!505533 () Bool)

(assert (=> d!505533 (= (list!7382 lt!630497) (list!7386 (c!271873 lt!630497)))))

(declare-fun bs!398129 () Bool)

(assert (= bs!398129 d!505533))

(declare-fun m!2037941 () Bool)

(assert (=> bs!398129 m!2037941))

(assert (=> b!1670817 d!505533))

(declare-fun d!505535 () Bool)

(declare-fun res!749525 () Bool)

(declare-fun e!1070945 () Bool)

(assert (=> d!505535 (=> (not res!749525) (not e!1070945))))

(declare-fun isEmpty!11487 (List!18488) Bool)

(assert (=> d!505535 (= res!749525 (not (isEmpty!11487 (originalCharacters!4058 (h!23821 tokens!457)))))))

(assert (=> d!505535 (= (inv!23773 (h!23821 tokens!457)) e!1070945)))

(declare-fun b!1671235 () Bool)

(declare-fun res!749526 () Bool)

(assert (=> b!1671235 (=> (not res!749526) (not e!1070945))))

(assert (=> b!1671235 (= res!749526 (= (originalCharacters!4058 (h!23821 tokens!457)) (list!7381 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (value!102128 (h!23821 tokens!457))))))))

(declare-fun b!1671236 () Bool)

(assert (=> b!1671236 (= e!1070945 (= (size!14653 (h!23821 tokens!457)) (size!14657 (originalCharacters!4058 (h!23821 tokens!457)))))))

(assert (= (and d!505535 res!749525) b!1671235))

(assert (= (and b!1671235 res!749526) b!1671236))

(declare-fun b_lambda!52493 () Bool)

(assert (=> (not b_lambda!52493) (not b!1671235)))

(assert (=> b!1671235 t!152657))

(declare-fun b_and!118853 () Bool)

(assert (= b_and!118845 (and (=> t!152657 result!115862) b_and!118853)))

(assert (=> b!1671235 t!152659))

(declare-fun b_and!118855 () Bool)

(assert (= b_and!118847 (and (=> t!152659 result!115864) b_and!118855)))

(declare-fun m!2037943 () Bool)

(assert (=> d!505535 m!2037943))

(assert (=> b!1671235 m!2037451))

(assert (=> b!1671235 m!2037451))

(declare-fun m!2037945 () Bool)

(assert (=> b!1671235 m!2037945))

(declare-fun m!2037947 () Bool)

(assert (=> b!1671236 m!2037947))

(assert (=> b!1670816 d!505535))

(declare-fun d!505537 () Bool)

(declare-fun c!271939 () Bool)

(assert (=> d!505537 (= c!271939 (isEmpty!11487 (++!5024 lt!630482 lt!630485)))))

(declare-fun e!1070948 () Bool)

(assert (=> d!505537 (= (prefixMatch!485 lt!630488 (++!5024 lt!630482 lt!630485)) e!1070948)))

(declare-fun b!1671241 () Bool)

(declare-fun lostCause!479 (Regex!4572) Bool)

(assert (=> b!1671241 (= e!1070948 (not (lostCause!479 lt!630488)))))

(declare-fun b!1671242 () Bool)

(declare-fun derivativeStep!1131 (Regex!4572 C!9318) Regex!4572)

(declare-fun tail!2496 (List!18488) List!18488)

(assert (=> b!1671242 (= e!1070948 (prefixMatch!485 (derivativeStep!1131 lt!630488 (head!3736 (++!5024 lt!630482 lt!630485))) (tail!2496 (++!5024 lt!630482 lt!630485))))))

(assert (= (and d!505537 c!271939) b!1671241))

(assert (= (and d!505537 (not c!271939)) b!1671242))

(assert (=> d!505537 m!2037095))

(declare-fun m!2037949 () Bool)

(assert (=> d!505537 m!2037949))

(declare-fun m!2037951 () Bool)

(assert (=> b!1671241 m!2037951))

(assert (=> b!1671242 m!2037095))

(declare-fun m!2037953 () Bool)

(assert (=> b!1671242 m!2037953))

(assert (=> b!1671242 m!2037953))

(declare-fun m!2037955 () Bool)

(assert (=> b!1671242 m!2037955))

(assert (=> b!1671242 m!2037095))

(declare-fun m!2037957 () Bool)

(assert (=> b!1671242 m!2037957))

(assert (=> b!1671242 m!2037955))

(assert (=> b!1671242 m!2037957))

(declare-fun m!2037959 () Bool)

(assert (=> b!1671242 m!2037959))

(assert (=> b!1670827 d!505537))

(declare-fun e!1070950 () Bool)

(declare-fun lt!630931 () List!18488)

(declare-fun b!1671246 () Bool)

(assert (=> b!1671246 (= e!1070950 (or (not (= lt!630485 Nil!18418)) (= lt!630931 lt!630482)))))

(declare-fun b!1671245 () Bool)

(declare-fun res!749527 () Bool)

(assert (=> b!1671245 (=> (not res!749527) (not e!1070950))))

(assert (=> b!1671245 (= res!749527 (= (size!14657 lt!630931) (+ (size!14657 lt!630482) (size!14657 lt!630485))))))

(declare-fun b!1671244 () Bool)

(declare-fun e!1070949 () List!18488)

(assert (=> b!1671244 (= e!1070949 (Cons!18418 (h!23819 lt!630482) (++!5024 (t!152639 lt!630482) lt!630485)))))

(declare-fun d!505539 () Bool)

(assert (=> d!505539 e!1070950))

(declare-fun res!749528 () Bool)

(assert (=> d!505539 (=> (not res!749528) (not e!1070950))))

(assert (=> d!505539 (= res!749528 (= (content!2576 lt!630931) (set.union (content!2576 lt!630482) (content!2576 lt!630485))))))

(assert (=> d!505539 (= lt!630931 e!1070949)))

(declare-fun c!271940 () Bool)

(assert (=> d!505539 (= c!271940 (is-Nil!18418 lt!630482))))

(assert (=> d!505539 (= (++!5024 lt!630482 lt!630485) lt!630931)))

(declare-fun b!1671243 () Bool)

(assert (=> b!1671243 (= e!1070949 lt!630485)))

(assert (= (and d!505539 c!271940) b!1671243))

(assert (= (and d!505539 (not c!271940)) b!1671244))

(assert (= (and d!505539 res!749528) b!1671245))

(assert (= (and b!1671245 res!749527) b!1671246))

(declare-fun m!2037961 () Bool)

(assert (=> b!1671245 m!2037961))

(assert (=> b!1671245 m!2037391))

(declare-fun m!2037963 () Bool)

(assert (=> b!1671245 m!2037963))

(declare-fun m!2037965 () Bool)

(assert (=> b!1671244 m!2037965))

(declare-fun m!2037967 () Bool)

(assert (=> d!505539 m!2037967))

(assert (=> d!505539 m!2037399))

(declare-fun m!2037969 () Bool)

(assert (=> d!505539 m!2037969))

(assert (=> b!1670827 d!505539))

(declare-fun d!505541 () Bool)

(assert (=> d!505541 (= (list!7381 lt!630486) (list!7385 (c!271871 lt!630486)))))

(declare-fun bs!398130 () Bool)

(assert (= bs!398130 d!505541))

(declare-fun m!2037971 () Bool)

(assert (=> bs!398130 m!2037971))

(assert (=> b!1670827 d!505541))

(declare-fun d!505543 () Bool)

(assert (=> d!505543 (= (list!7382 (_1!10473 lt!630487)) (list!7386 (c!271873 (_1!10473 lt!630487))))))

(declare-fun bs!398131 () Bool)

(assert (= bs!398131 d!505543))

(declare-fun m!2037973 () Bool)

(assert (=> bs!398131 m!2037973))

(assert (=> b!1670826 d!505543))

(declare-fun d!505545 () Bool)

(declare-fun e!1070976 () Bool)

(assert (=> d!505545 e!1070976))

(declare-fun res!749551 () Bool)

(assert (=> d!505545 (=> (not res!749551) (not e!1070976))))

(assert (=> d!505545 (= res!749551 (= (list!7382 (_1!10473 (lex!1357 thiss!17113 rules!1846 (print!1404 thiss!17113 (seqFromList!2226 (t!152641 tokens!457)))))) (t!152641 tokens!457)))))

(declare-fun lt!631035 () Unit!31326)

(declare-fun e!1070977 () Unit!31326)

(assert (=> d!505545 (= lt!631035 e!1070977)))

(declare-fun c!271946 () Bool)

(assert (=> d!505545 (= c!271946 (or (is-Nil!18420 (t!152641 tokens!457)) (is-Nil!18420 (t!152641 (t!152641 tokens!457)))))))

(assert (=> d!505545 (not (isEmpty!11479 rules!1846))))

(assert (=> d!505545 (= (theoremInvertabilityWhenTokenListSeparable!310 thiss!17113 rules!1846 (t!152641 tokens!457)) lt!631035)))

(declare-fun b!1671287 () Bool)

(declare-fun Unit!31336 () Unit!31326)

(assert (=> b!1671287 (= e!1070977 Unit!31336)))

(declare-fun b!1671288 () Bool)

(declare-fun Unit!31337 () Unit!31326)

(assert (=> b!1671288 (= e!1070977 Unit!31337)))

(declare-fun lt!631041 () BalanceConc!12216)

(assert (=> b!1671288 (= lt!631041 (print!1404 thiss!17113 (seqFromList!2226 (t!152641 tokens!457))))))

(declare-fun lt!631044 () BalanceConc!12216)

(assert (=> b!1671288 (= lt!631044 (print!1404 thiss!17113 (seqFromList!2226 (t!152641 (t!152641 tokens!457)))))))

(declare-fun lt!631046 () tuple2!18142)

(assert (=> b!1671288 (= lt!631046 (lex!1357 thiss!17113 rules!1846 lt!631044))))

(declare-fun lt!631038 () List!18488)

(assert (=> b!1671288 (= lt!631038 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))))

(declare-fun lt!631052 () List!18488)

(assert (=> b!1671288 (= lt!631052 (list!7381 lt!631044))))

(declare-fun lt!631039 () Unit!31326)

(assert (=> b!1671288 (= lt!631039 (lemmaConcatTwoListThenFirstIsPrefix!1023 lt!631038 lt!631052))))

(assert (=> b!1671288 (isPrefix!1502 lt!631038 (++!5024 lt!631038 lt!631052))))

(declare-fun lt!631031 () Unit!31326)

(assert (=> b!1671288 (= lt!631031 lt!631039)))

(declare-fun lt!631030 () Unit!31326)

(assert (=> b!1671288 (= lt!631030 (theoremInvertabilityWhenTokenListSeparable!310 thiss!17113 rules!1846 (t!152641 (t!152641 tokens!457))))))

(declare-fun lt!631033 () Unit!31326)

(assert (=> b!1671288 (= lt!631033 (seqFromListBHdTlConstructive!313 (h!23821 (t!152641 (t!152641 tokens!457))) (t!152641 (t!152641 (t!152641 tokens!457))) (_1!10473 lt!631046)))))

(assert (=> b!1671288 (= (list!7382 (_1!10473 lt!631046)) (list!7382 (prepend!832 (seqFromList!2226 (t!152641 (t!152641 (t!152641 tokens!457)))) (h!23821 (t!152641 (t!152641 tokens!457))))))))

(declare-fun lt!631028 () Unit!31326)

(assert (=> b!1671288 (= lt!631028 lt!631033)))

(declare-fun lt!631032 () Option!3539)

(assert (=> b!1671288 (= lt!631032 (maxPrefix!1433 thiss!17113 rules!1846 (list!7381 lt!631041)))))

(assert (=> b!1671288 (= (print!1404 thiss!17113 (singletonSeq!1756 (h!23821 (t!152641 tokens!457)))) (printTailRec!924 thiss!17113 (singletonSeq!1756 (h!23821 (t!152641 tokens!457))) 0 (BalanceConc!12217 Empty!6136)))))

(declare-fun lt!631037 () Unit!31326)

(declare-fun Unit!31338 () Unit!31326)

(assert (=> b!1671288 (= lt!631037 Unit!31338)))

(declare-fun lt!631043 () Unit!31326)

(assert (=> b!1671288 (= lt!631043 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!435 thiss!17113 rules!1846 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) (list!7381 lt!631044)))))

(assert (=> b!1671288 (= (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) (originalCharacters!4058 (h!23821 (t!152641 tokens!457))))))

(declare-fun lt!631045 () Unit!31326)

(declare-fun Unit!31339 () Unit!31326)

(assert (=> b!1671288 (= lt!631045 Unit!31339)))

(assert (=> b!1671288 (= (list!7381 (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 (t!152641 tokens!457)))) 0))) (Cons!18418 (head!3736 (originalCharacters!4058 (h!23821 (t!152641 (t!152641 tokens!457))))) Nil!18418))))

(declare-fun lt!631036 () Unit!31326)

(declare-fun Unit!31340 () Unit!31326)

(assert (=> b!1671288 (= lt!631036 Unit!31340)))

(assert (=> b!1671288 (= (list!7381 (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 (t!152641 tokens!457)))) 0))) (Cons!18418 (head!3736 (list!7381 lt!631044)) Nil!18418))))

(declare-fun lt!631049 () Unit!31326)

(declare-fun Unit!31341 () Unit!31326)

(assert (=> b!1671288 (= lt!631049 Unit!31341)))

(declare-fun head!3739 (BalanceConc!12216) C!9318)

(assert (=> b!1671288 (= (list!7381 (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 (t!152641 tokens!457)))) 0))) (Cons!18418 (head!3739 lt!631044) Nil!18418))))

(declare-fun lt!631048 () Unit!31326)

(declare-fun Unit!31342 () Unit!31326)

(assert (=> b!1671288 (= lt!631048 Unit!31342)))

(assert (=> b!1671288 (isDefined!2892 (maxPrefix!1433 thiss!17113 rules!1846 (originalCharacters!4058 (h!23821 (t!152641 tokens!457)))))))

(declare-fun lt!631029 () Unit!31326)

(declare-fun Unit!31343 () Unit!31326)

(assert (=> b!1671288 (= lt!631029 Unit!31343)))

(assert (=> b!1671288 (isDefined!2892 (maxPrefix!1433 thiss!17113 rules!1846 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457))))))))

(declare-fun lt!631042 () Unit!31326)

(declare-fun Unit!31344 () Unit!31326)

(assert (=> b!1671288 (= lt!631042 Unit!31344)))

(declare-fun lt!631053 () Unit!31326)

(declare-fun Unit!31345 () Unit!31326)

(assert (=> b!1671288 (= lt!631053 Unit!31345)))

(assert (=> b!1671288 (= (_1!10472 (get!5396 (maxPrefix!1433 thiss!17113 rules!1846 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457))))))) (h!23821 (t!152641 tokens!457)))))

(declare-fun lt!631040 () Unit!31326)

(declare-fun Unit!31346 () Unit!31326)

(assert (=> b!1671288 (= lt!631040 Unit!31346)))

(assert (=> b!1671288 (isEmpty!11487 (_2!10472 (get!5396 (maxPrefix!1433 thiss!17113 rules!1846 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457))))))))))

(declare-fun lt!631034 () Unit!31326)

(declare-fun Unit!31347 () Unit!31326)

(assert (=> b!1671288 (= lt!631034 Unit!31347)))

(assert (=> b!1671288 (matchR!2063 (regex!3244 (rule!5134 (h!23821 (t!152641 tokens!457)))) (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))))

(declare-fun lt!631047 () Unit!31326)

(declare-fun Unit!31348 () Unit!31326)

(assert (=> b!1671288 (= lt!631047 Unit!31348)))

(assert (=> b!1671288 (= (rule!5134 (h!23821 (t!152641 tokens!457))) (rule!5134 (h!23821 (t!152641 tokens!457))))))

(declare-fun lt!631051 () Unit!31326)

(declare-fun Unit!31349 () Unit!31326)

(assert (=> b!1671288 (= lt!631051 Unit!31349)))

(declare-fun lt!631050 () Unit!31326)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!193 (LexerInterface!2873 List!18489 Token!6054 Rule!6288 List!18488) Unit!31326)

(assert (=> b!1671288 (= lt!631050 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!193 thiss!17113 rules!1846 (h!23821 (t!152641 tokens!457)) (rule!5134 (h!23821 (t!152641 tokens!457))) (list!7381 lt!631044)))))

(declare-fun b!1671289 () Bool)

(assert (=> b!1671289 (= e!1070976 (isEmpty!11482 (_2!10473 (lex!1357 thiss!17113 rules!1846 (print!1404 thiss!17113 (seqFromList!2226 (t!152641 tokens!457)))))))))

(assert (= (and d!505545 c!271946) b!1671287))

(assert (= (and d!505545 (not c!271946)) b!1671288))

(assert (= (and d!505545 res!749551) b!1671289))

(declare-fun m!2038049 () Bool)

(assert (=> d!505545 m!2038049))

(assert (=> d!505545 m!2037063))

(assert (=> d!505545 m!2037063))

(declare-fun m!2038051 () Bool)

(assert (=> d!505545 m!2038051))

(assert (=> d!505545 m!2038051))

(declare-fun m!2038053 () Bool)

(assert (=> d!505545 m!2038053))

(assert (=> d!505545 m!2037093))

(declare-fun m!2038055 () Bool)

(assert (=> b!1671288 m!2038055))

(declare-fun m!2038057 () Bool)

(assert (=> b!1671288 m!2038057))

(declare-fun m!2038059 () Bool)

(assert (=> b!1671288 m!2038059))

(declare-fun m!2038061 () Bool)

(assert (=> b!1671288 m!2038061))

(assert (=> b!1671288 m!2037017))

(assert (=> b!1671288 m!2037105))

(declare-fun m!2038063 () Bool)

(assert (=> b!1671288 m!2038063))

(declare-fun m!2038065 () Bool)

(assert (=> b!1671288 m!2038065))

(assert (=> b!1671288 m!2037063))

(declare-fun m!2038067 () Bool)

(assert (=> b!1671288 m!2038067))

(declare-fun m!2038069 () Bool)

(assert (=> b!1671288 m!2038069))

(declare-fun m!2038071 () Bool)

(assert (=> b!1671288 m!2038071))

(declare-fun m!2038073 () Bool)

(assert (=> b!1671288 m!2038073))

(declare-fun m!2038075 () Bool)

(assert (=> b!1671288 m!2038075))

(assert (=> b!1671288 m!2038065))

(declare-fun m!2038077 () Bool)

(assert (=> b!1671288 m!2038077))

(declare-fun m!2038079 () Bool)

(assert (=> b!1671288 m!2038079))

(declare-fun m!2038081 () Bool)

(assert (=> b!1671288 m!2038081))

(assert (=> b!1671288 m!2037105))

(assert (=> b!1671288 m!2037359))

(declare-fun m!2038083 () Bool)

(assert (=> b!1671288 m!2038083))

(declare-fun m!2038085 () Bool)

(assert (=> b!1671288 m!2038085))

(assert (=> b!1671288 m!2038057))

(declare-fun m!2038087 () Bool)

(assert (=> b!1671288 m!2038087))

(assert (=> b!1671288 m!2037017))

(assert (=> b!1671288 m!2037359))

(assert (=> b!1671288 m!2038083))

(declare-fun m!2038089 () Bool)

(assert (=> b!1671288 m!2038089))

(declare-fun m!2038091 () Bool)

(assert (=> b!1671288 m!2038091))

(assert (=> b!1671288 m!2037359))

(assert (=> b!1671288 m!2038059))

(declare-fun m!2038093 () Bool)

(assert (=> b!1671288 m!2038093))

(declare-fun m!2038095 () Bool)

(assert (=> b!1671288 m!2038095))

(declare-fun m!2038097 () Bool)

(assert (=> b!1671288 m!2038097))

(assert (=> b!1671288 m!2038083))

(declare-fun m!2038099 () Bool)

(assert (=> b!1671288 m!2038099))

(declare-fun m!2038101 () Bool)

(assert (=> b!1671288 m!2038101))

(assert (=> b!1671288 m!2038083))

(declare-fun m!2038103 () Bool)

(assert (=> b!1671288 m!2038103))

(assert (=> b!1671288 m!2038101))

(declare-fun m!2038105 () Bool)

(assert (=> b!1671288 m!2038105))

(assert (=> b!1671288 m!2038077))

(declare-fun m!2038107 () Bool)

(assert (=> b!1671288 m!2038107))

(assert (=> b!1671288 m!2038059))

(declare-fun m!2038109 () Bool)

(assert (=> b!1671288 m!2038109))

(declare-fun m!2038111 () Bool)

(assert (=> b!1671288 m!2038111))

(declare-fun m!2038113 () Bool)

(assert (=> b!1671288 m!2038113))

(assert (=> b!1671288 m!2037359))

(declare-fun m!2038115 () Bool)

(assert (=> b!1671288 m!2038115))

(assert (=> b!1671288 m!2038071))

(assert (=> b!1671288 m!2038079))

(assert (=> b!1671288 m!2038071))

(declare-fun m!2038117 () Bool)

(assert (=> b!1671288 m!2038117))

(assert (=> b!1671288 m!2037063))

(assert (=> b!1671288 m!2038051))

(declare-fun m!2038119 () Bool)

(assert (=> b!1671288 m!2038119))

(assert (=> b!1671288 m!2038087))

(assert (=> b!1671288 m!2038067))

(assert (=> b!1671288 m!2038095))

(assert (=> b!1671289 m!2037063))

(assert (=> b!1671289 m!2037063))

(assert (=> b!1671289 m!2038051))

(assert (=> b!1671289 m!2038051))

(assert (=> b!1671289 m!2038053))

(declare-fun m!2038121 () Bool)

(assert (=> b!1671289 m!2038121))

(assert (=> b!1670826 d!505545))

(declare-fun b!1671298 () Bool)

(declare-fun e!1070984 () Bool)

(declare-fun e!1070986 () Bool)

(assert (=> b!1671298 (= e!1070984 e!1070986)))

(declare-fun res!749563 () Bool)

(assert (=> b!1671298 (=> (not res!749563) (not e!1070986))))

(assert (=> b!1671298 (= res!749563 (not (is-Nil!18418 lt!630484)))))

(declare-fun d!505563 () Bool)

(declare-fun e!1070985 () Bool)

(assert (=> d!505563 e!1070985))

(declare-fun res!749562 () Bool)

(assert (=> d!505563 (=> res!749562 e!1070985)))

(declare-fun lt!631056 () Bool)

(assert (=> d!505563 (= res!749562 (not lt!631056))))

(assert (=> d!505563 (= lt!631056 e!1070984)))

(declare-fun res!749560 () Bool)

(assert (=> d!505563 (=> res!749560 e!1070984)))

(assert (=> d!505563 (= res!749560 (is-Nil!18418 lt!630482))))

(assert (=> d!505563 (= (isPrefix!1502 lt!630482 lt!630484) lt!631056)))

(declare-fun b!1671301 () Bool)

(assert (=> b!1671301 (= e!1070985 (>= (size!14657 lt!630484) (size!14657 lt!630482)))))

(declare-fun b!1671300 () Bool)

(assert (=> b!1671300 (= e!1070986 (isPrefix!1502 (tail!2496 lt!630482) (tail!2496 lt!630484)))))

(declare-fun b!1671299 () Bool)

(declare-fun res!749561 () Bool)

(assert (=> b!1671299 (=> (not res!749561) (not e!1070986))))

(assert (=> b!1671299 (= res!749561 (= (head!3736 lt!630482) (head!3736 lt!630484)))))

(assert (= (and d!505563 (not res!749560)) b!1671298))

(assert (= (and b!1671298 res!749563) b!1671299))

(assert (= (and b!1671299 res!749561) b!1671300))

(assert (= (and d!505563 (not res!749562)) b!1671301))

(declare-fun m!2038123 () Bool)

(assert (=> b!1671301 m!2038123))

(assert (=> b!1671301 m!2037391))

(declare-fun m!2038125 () Bool)

(assert (=> b!1671300 m!2038125))

(declare-fun m!2038127 () Bool)

(assert (=> b!1671300 m!2038127))

(assert (=> b!1671300 m!2038125))

(assert (=> b!1671300 m!2038127))

(declare-fun m!2038129 () Bool)

(assert (=> b!1671300 m!2038129))

(declare-fun m!2038131 () Bool)

(assert (=> b!1671299 m!2038131))

(declare-fun m!2038133 () Bool)

(assert (=> b!1671299 m!2038133))

(assert (=> b!1670826 d!505563))

(declare-fun d!505565 () Bool)

(assert (=> d!505565 (isPrefix!1502 lt!630482 (++!5024 lt!630482 lt!630481))))

(declare-fun lt!631059 () Unit!31326)

(declare-fun choose!10063 (List!18488 List!18488) Unit!31326)

(assert (=> d!505565 (= lt!631059 (choose!10063 lt!630482 lt!630481))))

(assert (=> d!505565 (= (lemmaConcatTwoListThenFirstIsPrefix!1023 lt!630482 lt!630481) lt!631059)))

(declare-fun bs!398135 () Bool)

(assert (= bs!398135 d!505565))

(assert (=> bs!398135 m!2037073))

(assert (=> bs!398135 m!2037073))

(declare-fun m!2038135 () Bool)

(assert (=> bs!398135 m!2038135))

(declare-fun m!2038137 () Bool)

(assert (=> bs!398135 m!2038137))

(assert (=> b!1670826 d!505565))

(declare-fun b!1671312 () Bool)

(declare-fun e!1070989 () Bool)

(declare-fun tp_is_empty!7419 () Bool)

(assert (=> b!1671312 (= e!1070989 tp_is_empty!7419)))

(declare-fun b!1671314 () Bool)

(declare-fun tp!482333 () Bool)

(assert (=> b!1671314 (= e!1070989 tp!482333)))

(assert (=> b!1670815 (= tp!482280 e!1070989)))

(declare-fun b!1671315 () Bool)

(declare-fun tp!482334 () Bool)

(declare-fun tp!482332 () Bool)

(assert (=> b!1671315 (= e!1070989 (and tp!482334 tp!482332))))

(declare-fun b!1671313 () Bool)

(declare-fun tp!482335 () Bool)

(declare-fun tp!482331 () Bool)

(assert (=> b!1671313 (= e!1070989 (and tp!482335 tp!482331))))

(assert (= (and b!1670815 (is-ElementMatch!4572 (regex!3244 (h!23820 rules!1846)))) b!1671312))

(assert (= (and b!1670815 (is-Concat!7907 (regex!3244 (h!23820 rules!1846)))) b!1671313))

(assert (= (and b!1670815 (is-Star!4572 (regex!3244 (h!23820 rules!1846)))) b!1671314))

(assert (= (and b!1670815 (is-Union!4572 (regex!3244 (h!23820 rules!1846)))) b!1671315))

(declare-fun b!1671316 () Bool)

(declare-fun e!1070990 () Bool)

(assert (=> b!1671316 (= e!1070990 tp_is_empty!7419)))

(declare-fun b!1671318 () Bool)

(declare-fun tp!482338 () Bool)

(assert (=> b!1671318 (= e!1070990 tp!482338)))

(assert (=> b!1670830 (= tp!482283 e!1070990)))

(declare-fun b!1671319 () Bool)

(declare-fun tp!482339 () Bool)

(declare-fun tp!482337 () Bool)

(assert (=> b!1671319 (= e!1070990 (and tp!482339 tp!482337))))

(declare-fun b!1671317 () Bool)

(declare-fun tp!482340 () Bool)

(declare-fun tp!482336 () Bool)

(assert (=> b!1671317 (= e!1070990 (and tp!482340 tp!482336))))

(assert (= (and b!1670830 (is-ElementMatch!4572 (regex!3244 (rule!5134 (h!23821 tokens!457))))) b!1671316))

(assert (= (and b!1670830 (is-Concat!7907 (regex!3244 (rule!5134 (h!23821 tokens!457))))) b!1671317))

(assert (= (and b!1670830 (is-Star!4572 (regex!3244 (rule!5134 (h!23821 tokens!457))))) b!1671318))

(assert (= (and b!1670830 (is-Union!4572 (regex!3244 (rule!5134 (h!23821 tokens!457))))) b!1671319))

(declare-fun b!1671330 () Bool)

(declare-fun b_free!45455 () Bool)

(declare-fun b_next!46159 () Bool)

(assert (=> b!1671330 (= b_free!45455 (not b_next!46159))))

(declare-fun tp!482351 () Bool)

(declare-fun b_and!118861 () Bool)

(assert (=> b!1671330 (= tp!482351 b_and!118861)))

(declare-fun b_free!45457 () Bool)

(declare-fun b_next!46161 () Bool)

(assert (=> b!1671330 (= b_free!45457 (not b_next!46161))))

(declare-fun t!152672 () Bool)

(declare-fun tb!95887 () Bool)

(assert (=> (and b!1671330 (= (toChars!4570 (transformation!3244 (h!23820 (t!152640 rules!1846)))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457)))))) t!152672) tb!95887))

(declare-fun result!115874 () Bool)

(assert (= result!115874 result!115856))

(assert (=> d!505397 t!152672))

(declare-fun t!152674 () Bool)

(declare-fun tb!95889 () Bool)

(assert (=> (and b!1671330 (= (toChars!4570 (transformation!3244 (h!23820 (t!152640 rules!1846)))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457))))) t!152674) tb!95889))

(declare-fun result!115876 () Bool)

(assert (= result!115876 result!115862))

(assert (=> d!505417 t!152674))

(assert (=> b!1671235 t!152674))

(declare-fun b_and!118863 () Bool)

(declare-fun tp!482352 () Bool)

(assert (=> b!1671330 (= tp!482352 (and (=> t!152672 result!115874) (=> t!152674 result!115876) b_and!118863))))

(declare-fun e!1071000 () Bool)

(assert (=> b!1671330 (= e!1071000 (and tp!482351 tp!482352))))

(declare-fun tp!482350 () Bool)

(declare-fun b!1671329 () Bool)

(declare-fun e!1071001 () Bool)

(assert (=> b!1671329 (= e!1071001 (and tp!482350 (inv!23769 (tag!3528 (h!23820 (t!152640 rules!1846)))) (inv!23772 (transformation!3244 (h!23820 (t!152640 rules!1846)))) e!1071000))))

(declare-fun b!1671328 () Bool)

(declare-fun e!1070999 () Bool)

(declare-fun tp!482349 () Bool)

(assert (=> b!1671328 (= e!1070999 (and e!1071001 tp!482349))))

(assert (=> b!1670834 (= tp!482278 e!1070999)))

(assert (= b!1671329 b!1671330))

(assert (= b!1671328 b!1671329))

(assert (= (and b!1670834 (is-Cons!18419 (t!152640 rules!1846))) b!1671328))

(declare-fun m!2038139 () Bool)

(assert (=> b!1671329 m!2038139))

(declare-fun m!2038141 () Bool)

(assert (=> b!1671329 m!2038141))

(declare-fun b!1671344 () Bool)

(declare-fun b_free!45459 () Bool)

(declare-fun b_next!46163 () Bool)

(assert (=> b!1671344 (= b_free!45459 (not b_next!46163))))

(declare-fun tp!482365 () Bool)

(declare-fun b_and!118865 () Bool)

(assert (=> b!1671344 (= tp!482365 b_and!118865)))

(declare-fun b_free!45461 () Bool)

(declare-fun b_next!46165 () Bool)

(assert (=> b!1671344 (= b_free!45461 (not b_next!46165))))

(declare-fun t!152676 () Bool)

(declare-fun tb!95891 () Bool)

(assert (=> (and b!1671344 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457)))))) t!152676) tb!95891))

(declare-fun result!115880 () Bool)

(assert (= result!115880 result!115856))

(assert (=> d!505397 t!152676))

(declare-fun t!152678 () Bool)

(declare-fun tb!95893 () Bool)

(assert (=> (and b!1671344 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457))))) t!152678) tb!95893))

(declare-fun result!115882 () Bool)

(assert (= result!115882 result!115862))

(assert (=> d!505417 t!152678))

(assert (=> b!1671235 t!152678))

(declare-fun b_and!118867 () Bool)

(declare-fun tp!482366 () Bool)

(assert (=> b!1671344 (= tp!482366 (and (=> t!152676 result!115880) (=> t!152678 result!115882) b_and!118867))))

(declare-fun e!1071015 () Bool)

(assert (=> b!1671344 (= e!1071015 (and tp!482365 tp!482366))))

(declare-fun e!1071016 () Bool)

(declare-fun b!1671342 () Bool)

(declare-fun e!1071017 () Bool)

(declare-fun tp!482364 () Bool)

(assert (=> b!1671342 (= e!1071016 (and (inv!21 (value!102128 (h!23821 (t!152641 tokens!457)))) e!1071017 tp!482364))))

(declare-fun e!1071018 () Bool)

(assert (=> b!1670816 (= tp!482284 e!1071018)))

(declare-fun tp!482363 () Bool)

(declare-fun b!1671343 () Bool)

(assert (=> b!1671343 (= e!1071017 (and tp!482363 (inv!23769 (tag!3528 (rule!5134 (h!23821 (t!152641 tokens!457))))) (inv!23772 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) e!1071015))))

(declare-fun b!1671341 () Bool)

(declare-fun tp!482367 () Bool)

(assert (=> b!1671341 (= e!1071018 (and (inv!23773 (h!23821 (t!152641 tokens!457))) e!1071016 tp!482367))))

(assert (= b!1671343 b!1671344))

(assert (= b!1671342 b!1671343))

(assert (= b!1671341 b!1671342))

(assert (= (and b!1670816 (is-Cons!18420 (t!152641 tokens!457))) b!1671341))

(declare-fun m!2038143 () Bool)

(assert (=> b!1671342 m!2038143))

(declare-fun m!2038145 () Bool)

(assert (=> b!1671343 m!2038145))

(declare-fun m!2038147 () Bool)

(assert (=> b!1671343 m!2038147))

(declare-fun m!2038149 () Bool)

(assert (=> b!1671341 m!2038149))

(declare-fun b!1671349 () Bool)

(declare-fun e!1071023 () Bool)

(declare-fun tp!482370 () Bool)

(assert (=> b!1671349 (= e!1071023 (and tp_is_empty!7419 tp!482370))))

(assert (=> b!1670821 (= tp!482285 e!1071023)))

(assert (= (and b!1670821 (is-Cons!18418 (originalCharacters!4058 (h!23821 tokens!457)))) b!1671349))

(declare-fun b_lambda!52497 () Bool)

(assert (= b_lambda!52489 (or (and b!1670823 b_free!45441 (= (toChars!4570 (transformation!3244 (h!23820 rules!1846))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))))) (and b!1670835 b_free!45445) (and b!1671330 b_free!45457 (= (toChars!4570 (transformation!3244 (h!23820 (t!152640 rules!1846)))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))))) (and b!1671344 b_free!45461 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))))) b_lambda!52497)))

(declare-fun b_lambda!52499 () Bool)

(assert (= b_lambda!52487 (or (and b!1670823 b_free!45441 (= (toChars!4570 (transformation!3244 (h!23820 rules!1846))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))))) (and b!1670835 b_free!45445 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))))) (and b!1671330 b_free!45457 (= (toChars!4570 (transformation!3244 (h!23820 (t!152640 rules!1846)))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))))) (and b!1671344 b_free!45461) b_lambda!52499)))

(declare-fun b_lambda!52501 () Bool)

(assert (= b_lambda!52493 (or (and b!1670823 b_free!45441 (= (toChars!4570 (transformation!3244 (h!23820 rules!1846))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))))) (and b!1670835 b_free!45445) (and b!1671330 b_free!45457 (= (toChars!4570 (transformation!3244 (h!23820 (t!152640 rules!1846)))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))))) (and b!1671344 b_free!45461 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))))) b_lambda!52501)))

(push 1)

(assert (not bm!106585))

(assert tp_is_empty!7419)

(assert (not d!505439))

(assert (not b!1671301))

(assert (not d!505529))

(assert (not b!1671026))

(assert (not d!505383))

(assert (not d!505385))

(assert (not b!1671244))

(assert (not d!505497))

(assert (not b!1671300))

(assert (not b!1671317))

(assert (not d!505395))

(assert (not b!1670980))

(assert (not b!1670970))

(assert b_and!118853)

(assert b_and!118865)

(assert (not b!1670975))

(assert (not b!1671197))

(assert (not b!1670907))

(assert (not b!1671230))

(assert (not b!1670914))

(assert (not b!1670916))

(assert (not d!505407))

(assert b_and!118855)

(assert (not d!505533))

(assert (not b!1671006))

(assert (not b!1671001))

(assert (not b!1671314))

(assert (not d!505393))

(assert (not d!505363))

(assert (not d!505499))

(assert (not d!505389))

(assert (not b!1671289))

(assert (not d!505535))

(assert (not b!1671049))

(assert b_and!118821)

(assert (not d!505527))

(assert (not b!1670971))

(assert (not d!505409))

(assert (not b!1671194))

(assert (not b!1671245))

(assert (not b!1671206))

(assert (not b!1671315))

(assert (not b!1671199))

(assert (not b_next!46159))

(assert (not b_next!46147))

(assert (not b!1671217))

(assert (not d!505419))

(assert (not b!1670954))

(assert (not d!505537))

(assert (not b!1671195))

(assert (not d!505401))

(assert (not b!1671208))

(assert b_and!118861)

(assert (not b!1670915))

(assert b_and!118867)

(assert (not d!505539))

(assert (not b!1671241))

(assert (not d!505365))

(assert (not b!1671004))

(assert (not b_next!46161))

(assert (not b!1671162))

(assert (not d!505391))

(assert (not b!1671193))

(assert (not d!505375))

(assert (not d!505423))

(assert (not b!1670972))

(assert (not b!1670957))

(assert (not d!505493))

(assert b_and!118825)

(assert (not d!505543))

(assert (not b_next!46165))

(assert (not b!1671343))

(assert (not b_lambda!52497))

(assert (not b!1671191))

(assert (not d!505531))

(assert (not b_next!46149))

(assert (not b!1671198))

(assert (not d!505437))

(assert (not b!1671235))

(assert (not b!1671028))

(assert (not b_next!46143))

(assert (not b!1671025))

(assert (not b!1671226))

(assert (not b!1671349))

(assert (not d!505495))

(assert (not b!1671047))

(assert (not d!505417))

(assert (not b!1671013))

(assert (not tb!95875))

(assert (not b!1671329))

(assert (not b!1670951))

(assert (not b!1671299))

(assert (not b!1671157))

(assert (not b!1670969))

(assert (not d!505421))

(assert (not d!505397))

(assert (not b_next!46145))

(assert (not d!505449))

(assert (not b!1671319))

(assert (not b!1671341))

(assert (not d!505405))

(assert (not b!1671213))

(assert (not b!1671236))

(assert (not b_lambda!52501))

(assert (not b!1671007))

(assert (not b!1671003))

(assert (not b!1671328))

(assert (not d!505373))

(assert (not d!505369))

(assert (not b!1671313))

(assert (not b!1671227))

(assert (not d!505517))

(assert (not b!1671242))

(assert (not d!505513))

(assert (not b!1671192))

(assert (not tb!95879))

(assert (not b!1670953))

(assert (not b!1671288))

(assert (not b_lambda!52499))

(assert (not b!1671048))

(assert (not d!505541))

(assert (not d!505525))

(assert (not b_next!46163))

(assert (not b!1671318))

(assert (not b!1670960))

(assert (not d!505403))

(assert (not b!1671000))

(assert (not b!1670950))

(assert (not b!1671148))

(assert b_and!118863)

(assert (not d!505399))

(assert (not d!505387))

(assert (not d!505565))

(assert (not b!1671342))

(assert (not d!505545))

(assert (not b!1671147))

(check-sat)

(pop 1)

(push 1)

(assert b_and!118855)

(assert b_and!118821)

(assert (not b_next!46159))

(assert (not b_next!46147))

(assert b_and!118861)

(assert b_and!118867)

(assert (not b_next!46161))

(assert (not b_next!46149))

(assert (not b_next!46143))

(assert (not b_next!46145))

(assert (not b_next!46163))

(assert b_and!118863)

(assert b_and!118853)

(assert b_and!118865)

(assert b_and!118825)

(assert (not b_next!46165))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!505569 () Bool)

(assert (=> d!505569 (= (list!7381 lt!630593) (list!7385 (c!271871 lt!630593)))))

(declare-fun bs!398136 () Bool)

(assert (= bs!398136 d!505569))

(declare-fun m!2038225 () Bool)

(assert (=> bs!398136 m!2038225))

(assert (=> d!505387 d!505569))

(declare-fun d!505571 () Bool)

(declare-fun e!1071075 () Bool)

(assert (=> d!505571 e!1071075))

(declare-fun res!749584 () Bool)

(assert (=> d!505571 (=> (not res!749584) (not e!1071075))))

(declare-fun lt!631119 () BalanceConc!12216)

(assert (=> d!505571 (= res!749584 (= (list!7381 lt!631119) (Cons!18418 (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0) Nil!18418)))))

(declare-fun choose!10066 (C!9318) BalanceConc!12216)

(assert (=> d!505571 (= lt!631119 (choose!10066 (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0)))))

(assert (=> d!505571 (= (singleton!785 (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0)) lt!631119)))

(declare-fun b!1671421 () Bool)

(assert (=> b!1671421 (= e!1071075 (isBalanced!1911 (c!271871 lt!631119)))))

(assert (= (and d!505571 res!749584) b!1671421))

(declare-fun m!2038227 () Bool)

(assert (=> d!505571 m!2038227))

(assert (=> d!505571 m!2037019))

(declare-fun m!2038229 () Bool)

(assert (=> d!505571 m!2038229))

(declare-fun m!2038231 () Bool)

(assert (=> b!1671421 m!2038231))

(assert (=> d!505387 d!505571))

(declare-fun d!505573 () Bool)

(declare-fun res!749589 () Bool)

(declare-fun e!1071080 () Bool)

(assert (=> d!505573 (=> res!749589 e!1071080)))

(assert (=> d!505573 (= res!749589 (is-Nil!18420 tokens!457))))

(assert (=> d!505573 (= (forall!4187 tokens!457 lambda!68048) e!1071080)))

(declare-fun b!1671426 () Bool)

(declare-fun e!1071081 () Bool)

(assert (=> b!1671426 (= e!1071080 e!1071081)))

(declare-fun res!749590 () Bool)

(assert (=> b!1671426 (=> (not res!749590) (not e!1071081))))

(declare-fun dynLambda!8320 (Int Token!6054) Bool)

(assert (=> b!1671426 (= res!749590 (dynLambda!8320 lambda!68048 (h!23821 tokens!457)))))

(declare-fun b!1671427 () Bool)

(assert (=> b!1671427 (= e!1071081 (forall!4187 (t!152641 tokens!457) lambda!68048))))

(assert (= (and d!505573 (not res!749589)) b!1671426))

(assert (= (and b!1671426 res!749590) b!1671427))

(declare-fun b_lambda!52509 () Bool)

(assert (=> (not b_lambda!52509) (not b!1671426)))

(declare-fun m!2038233 () Bool)

(assert (=> b!1671426 m!2038233))

(declare-fun m!2038235 () Bool)

(assert (=> b!1671427 m!2038235))

(assert (=> d!505449 d!505573))

(assert (=> d!505449 d!505521))

(assert (=> d!505531 d!505525))

(assert (=> d!505531 d!505527))

(declare-fun d!505575 () Bool)

(assert (=> d!505575 (= (list!7382 (seqFromList!2226 ($colon$colon!393 (t!152641 (t!152641 tokens!457)) (h!23821 (t!152641 tokens!457))))) (list!7386 (c!271873 (seqFromList!2226 ($colon$colon!393 (t!152641 (t!152641 tokens!457)) (h!23821 (t!152641 tokens!457)))))))))

(declare-fun bs!398137 () Bool)

(assert (= bs!398137 d!505575))

(declare-fun m!2038237 () Bool)

(assert (=> bs!398137 m!2038237))

(assert (=> d!505531 d!505575))

(declare-fun d!505577 () Bool)

(assert (=> d!505577 (= (list!7382 (_1!10473 lt!630487)) (list!7382 (prepend!832 (seqFromList!2226 (t!152641 (t!152641 tokens!457))) (h!23821 (t!152641 tokens!457)))))))

(assert (=> d!505577 true))

(declare-fun _$1!10061 () Unit!31326)

(assert (=> d!505577 (= (choose!10062 (h!23821 (t!152641 tokens!457)) (t!152641 (t!152641 tokens!457)) (_1!10473 lt!630487)) _$1!10061)))

(declare-fun bs!398138 () Bool)

(assert (= bs!398138 d!505577))

(assert (=> bs!398138 m!2037023))

(assert (=> bs!398138 m!2037105))

(assert (=> bs!398138 m!2037105))

(assert (=> bs!398138 m!2037107))

(assert (=> bs!398138 m!2037107))

(assert (=> bs!398138 m!2037109))

(assert (=> d!505531 d!505577))

(assert (=> d!505531 d!505543))

(assert (=> d!505531 d!505529))

(declare-fun d!505579 () Bool)

(assert (=> d!505579 (= ($colon$colon!393 (t!152641 (t!152641 tokens!457)) (h!23821 (t!152641 tokens!457))) (Cons!18420 (h!23821 (t!152641 tokens!457)) (t!152641 (t!152641 tokens!457))))))

(assert (=> d!505531 d!505579))

(declare-fun d!505581 () Bool)

(assert (=> d!505581 (= (seqFromList!2226 ($colon$colon!393 (t!152641 (t!152641 tokens!457)) (h!23821 (t!152641 tokens!457)))) (fromListB!1013 ($colon$colon!393 (t!152641 (t!152641 tokens!457)) (h!23821 (t!152641 tokens!457)))))))

(declare-fun bs!398139 () Bool)

(assert (= bs!398139 d!505581))

(assert (=> bs!398139 m!2037939))

(declare-fun m!2038239 () Bool)

(assert (=> bs!398139 m!2038239))

(assert (=> d!505531 d!505581))

(declare-fun d!505583 () Bool)

(declare-fun lt!631122 () Int)

(assert (=> d!505583 (>= lt!631122 0)))

(declare-fun e!1071084 () Int)

(assert (=> d!505583 (= lt!631122 e!1071084)))

(declare-fun c!271952 () Bool)

(assert (=> d!505583 (= c!271952 (is-Nil!18418 (originalCharacters!4058 (h!23821 tokens!457))))))

(assert (=> d!505583 (= (size!14657 (originalCharacters!4058 (h!23821 tokens!457))) lt!631122)))

(declare-fun b!1671432 () Bool)

(assert (=> b!1671432 (= e!1071084 0)))

(declare-fun b!1671433 () Bool)

(assert (=> b!1671433 (= e!1071084 (+ 1 (size!14657 (t!152639 (originalCharacters!4058 (h!23821 tokens!457))))))))

(assert (= (and d!505583 c!271952) b!1671432))

(assert (= (and d!505583 (not c!271952)) b!1671433))

(declare-fun m!2038241 () Bool)

(assert (=> b!1671433 m!2038241))

(assert (=> b!1671236 d!505583))

(declare-fun b!1671434 () Bool)

(declare-fun res!749595 () Bool)

(declare-fun e!1071085 () Bool)

(assert (=> b!1671434 (=> (not res!749595) (not e!1071085))))

(declare-fun lt!631123 () Option!3539)

(assert (=> b!1671434 (= res!749595 (= (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!631123)))) (originalCharacters!4058 (_1!10472 (get!5396 lt!631123)))))))

(declare-fun b!1671435 () Bool)

(declare-fun res!749594 () Bool)

(assert (=> b!1671435 (=> (not res!749594) (not e!1071085))))

(assert (=> b!1671435 (= res!749594 (matchR!2063 (regex!3244 (rule!5134 (_1!10472 (get!5396 lt!631123)))) (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!631123))))))))

(declare-fun b!1671436 () Bool)

(declare-fun res!749596 () Bool)

(assert (=> b!1671436 (=> (not res!749596) (not e!1071085))))

(assert (=> b!1671436 (= res!749596 (= (value!102128 (_1!10472 (get!5396 lt!631123))) (apply!4976 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!631123)))) (seqFromList!2225 (originalCharacters!4058 (_1!10472 (get!5396 lt!631123)))))))))

(declare-fun b!1671437 () Bool)

(declare-fun res!749597 () Bool)

(assert (=> b!1671437 (=> (not res!749597) (not e!1071085))))

(assert (=> b!1671437 (= res!749597 (= (++!5024 (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!631123)))) (_2!10472 (get!5396 lt!631123))) lt!630492))))

(declare-fun b!1671438 () Bool)

(assert (=> b!1671438 (= e!1071085 (contains!3221 (t!152640 rules!1846) (rule!5134 (_1!10472 (get!5396 lt!631123)))))))

(declare-fun bm!106586 () Bool)

(declare-fun call!106591 () Option!3539)

(assert (=> bm!106586 (= call!106591 (maxPrefixOneRule!836 thiss!17113 (h!23820 (t!152640 rules!1846)) lt!630492))))

(declare-fun d!505585 () Bool)

(declare-fun e!1071087 () Bool)

(assert (=> d!505585 e!1071087))

(declare-fun res!749593 () Bool)

(assert (=> d!505585 (=> res!749593 e!1071087)))

(assert (=> d!505585 (= res!749593 (isEmpty!11485 lt!631123))))

(declare-fun e!1071086 () Option!3539)

(assert (=> d!505585 (= lt!631123 e!1071086)))

(declare-fun c!271953 () Bool)

(assert (=> d!505585 (= c!271953 (and (is-Cons!18419 (t!152640 rules!1846)) (is-Nil!18419 (t!152640 (t!152640 rules!1846)))))))

(declare-fun lt!631127 () Unit!31326)

(declare-fun lt!631125 () Unit!31326)

(assert (=> d!505585 (= lt!631127 lt!631125)))

(assert (=> d!505585 (isPrefix!1502 lt!630492 lt!630492)))

(assert (=> d!505585 (= lt!631125 (lemmaIsPrefixRefl!1021 lt!630492 lt!630492))))

(assert (=> d!505585 (rulesValidInductive!1043 thiss!17113 (t!152640 rules!1846))))

(assert (=> d!505585 (= (maxPrefix!1433 thiss!17113 (t!152640 rules!1846) lt!630492) lt!631123)))

(declare-fun b!1671439 () Bool)

(assert (=> b!1671439 (= e!1071086 call!106591)))

(declare-fun b!1671440 () Bool)

(declare-fun lt!631126 () Option!3539)

(declare-fun lt!631124 () Option!3539)

(assert (=> b!1671440 (= e!1071086 (ite (and (is-None!3538 lt!631126) (is-None!3538 lt!631124)) None!3538 (ite (is-None!3538 lt!631124) lt!631126 (ite (is-None!3538 lt!631126) lt!631124 (ite (>= (size!14653 (_1!10472 (v!24811 lt!631126))) (size!14653 (_1!10472 (v!24811 lt!631124)))) lt!631126 lt!631124)))))))

(assert (=> b!1671440 (= lt!631126 call!106591)))

(assert (=> b!1671440 (= lt!631124 (maxPrefix!1433 thiss!17113 (t!152640 (t!152640 rules!1846)) lt!630492))))

(declare-fun b!1671441 () Bool)

(assert (=> b!1671441 (= e!1071087 e!1071085)))

(declare-fun res!749592 () Bool)

(assert (=> b!1671441 (=> (not res!749592) (not e!1071085))))

(assert (=> b!1671441 (= res!749592 (isDefined!2892 lt!631123))))

(declare-fun b!1671442 () Bool)

(declare-fun res!749591 () Bool)

(assert (=> b!1671442 (=> (not res!749591) (not e!1071085))))

(assert (=> b!1671442 (= res!749591 (< (size!14657 (_2!10472 (get!5396 lt!631123))) (size!14657 lt!630492)))))

(assert (= (and d!505585 c!271953) b!1671439))

(assert (= (and d!505585 (not c!271953)) b!1671440))

(assert (= (or b!1671439 b!1671440) bm!106586))

(assert (= (and d!505585 (not res!749593)) b!1671441))

(assert (= (and b!1671441 res!749592) b!1671434))

(assert (= (and b!1671434 res!749595) b!1671442))

(assert (= (and b!1671442 res!749591) b!1671437))

(assert (= (and b!1671437 res!749597) b!1671436))

(assert (= (and b!1671436 res!749596) b!1671435))

(assert (= (and b!1671435 res!749594) b!1671438))

(declare-fun m!2038243 () Bool)

(assert (=> b!1671442 m!2038243))

(declare-fun m!2038245 () Bool)

(assert (=> b!1671442 m!2038245))

(assert (=> b!1671442 m!2037835))

(assert (=> b!1671437 m!2038243))

(declare-fun m!2038247 () Bool)

(assert (=> b!1671437 m!2038247))

(assert (=> b!1671437 m!2038247))

(declare-fun m!2038249 () Bool)

(assert (=> b!1671437 m!2038249))

(assert (=> b!1671437 m!2038249))

(declare-fun m!2038251 () Bool)

(assert (=> b!1671437 m!2038251))

(declare-fun m!2038253 () Bool)

(assert (=> bm!106586 m!2038253))

(assert (=> b!1671435 m!2038243))

(assert (=> b!1671435 m!2038247))

(assert (=> b!1671435 m!2038247))

(assert (=> b!1671435 m!2038249))

(assert (=> b!1671435 m!2038249))

(declare-fun m!2038255 () Bool)

(assert (=> b!1671435 m!2038255))

(assert (=> b!1671436 m!2038243))

(declare-fun m!2038257 () Bool)

(assert (=> b!1671436 m!2038257))

(assert (=> b!1671436 m!2038257))

(declare-fun m!2038259 () Bool)

(assert (=> b!1671436 m!2038259))

(assert (=> b!1671434 m!2038243))

(assert (=> b!1671434 m!2038247))

(assert (=> b!1671434 m!2038247))

(assert (=> b!1671434 m!2038249))

(declare-fun m!2038261 () Bool)

(assert (=> b!1671441 m!2038261))

(declare-fun m!2038263 () Bool)

(assert (=> b!1671440 m!2038263))

(declare-fun m!2038265 () Bool)

(assert (=> d!505585 m!2038265))

(assert (=> d!505585 m!2037857))

(assert (=> d!505585 m!2037859))

(declare-fun m!2038267 () Bool)

(assert (=> d!505585 m!2038267))

(assert (=> b!1671438 m!2038243))

(declare-fun m!2038269 () Bool)

(assert (=> b!1671438 m!2038269))

(assert (=> b!1671197 d!505585))

(declare-fun b!1671446 () Bool)

(declare-fun e!1071089 () Bool)

(declare-fun lt!631128 () List!18488)

(assert (=> b!1671446 (= e!1071089 (or (not (= (_2!10472 (get!5396 lt!630873)) Nil!18418)) (= lt!631128 (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!630873)))))))))

(declare-fun b!1671445 () Bool)

(declare-fun res!749598 () Bool)

(assert (=> b!1671445 (=> (not res!749598) (not e!1071089))))

(assert (=> b!1671445 (= res!749598 (= (size!14657 lt!631128) (+ (size!14657 (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!630873))))) (size!14657 (_2!10472 (get!5396 lt!630873))))))))

(declare-fun b!1671444 () Bool)

(declare-fun e!1071088 () List!18488)

(assert (=> b!1671444 (= e!1071088 (Cons!18418 (h!23819 (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!630873))))) (++!5024 (t!152639 (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!630873))))) (_2!10472 (get!5396 lt!630873)))))))

(declare-fun d!505587 () Bool)

(assert (=> d!505587 e!1071089))

(declare-fun res!749599 () Bool)

(assert (=> d!505587 (=> (not res!749599) (not e!1071089))))

(assert (=> d!505587 (= res!749599 (= (content!2576 lt!631128) (set.union (content!2576 (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!630873))))) (content!2576 (_2!10472 (get!5396 lt!630873))))))))

(assert (=> d!505587 (= lt!631128 e!1071088)))

(declare-fun c!271954 () Bool)

(assert (=> d!505587 (= c!271954 (is-Nil!18418 (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!630873))))))))

(assert (=> d!505587 (= (++!5024 (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!630873)))) (_2!10472 (get!5396 lt!630873))) lt!631128)))

(declare-fun b!1671443 () Bool)

(assert (=> b!1671443 (= e!1071088 (_2!10472 (get!5396 lt!630873)))))

(assert (= (and d!505587 c!271954) b!1671443))

(assert (= (and d!505587 (not c!271954)) b!1671444))

(assert (= (and d!505587 res!749599) b!1671445))

(assert (= (and b!1671445 res!749598) b!1671446))

(declare-fun m!2038271 () Bool)

(assert (=> b!1671445 m!2038271))

(assert (=> b!1671445 m!2037839))

(declare-fun m!2038273 () Bool)

(assert (=> b!1671445 m!2038273))

(assert (=> b!1671445 m!2037833))

(declare-fun m!2038275 () Bool)

(assert (=> b!1671444 m!2038275))

(declare-fun m!2038277 () Bool)

(assert (=> d!505587 m!2038277))

(assert (=> d!505587 m!2037839))

(declare-fun m!2038279 () Bool)

(assert (=> d!505587 m!2038279))

(declare-fun m!2038281 () Bool)

(assert (=> d!505587 m!2038281))

(assert (=> b!1671194 d!505587))

(declare-fun d!505589 () Bool)

(assert (=> d!505589 (= (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!630873)))) (list!7385 (c!271871 (charsOf!1893 (_1!10472 (get!5396 lt!630873))))))))

(declare-fun bs!398140 () Bool)

(assert (= bs!398140 d!505589))

(declare-fun m!2038283 () Bool)

(assert (=> bs!398140 m!2038283))

(assert (=> b!1671194 d!505589))

(declare-fun d!505591 () Bool)

(declare-fun lt!631129 () BalanceConc!12216)

(assert (=> d!505591 (= (list!7381 lt!631129) (originalCharacters!4058 (_1!10472 (get!5396 lt!630873))))))

(assert (=> d!505591 (= lt!631129 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!630873))))) (value!102128 (_1!10472 (get!5396 lt!630873)))))))

(assert (=> d!505591 (= (charsOf!1893 (_1!10472 (get!5396 lt!630873))) lt!631129)))

(declare-fun b_lambda!52511 () Bool)

(assert (=> (not b_lambda!52511) (not d!505591)))

(declare-fun t!152697 () Bool)

(declare-fun tb!95903 () Bool)

(assert (=> (and b!1670823 (= (toChars!4570 (transformation!3244 (h!23820 rules!1846))) (toChars!4570 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!630873)))))) t!152697) tb!95903))

(declare-fun b!1671447 () Bool)

(declare-fun e!1071090 () Bool)

(declare-fun tp!482421 () Bool)

(assert (=> b!1671447 (= e!1071090 (and (inv!23776 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!630873))))) (value!102128 (_1!10472 (get!5396 lt!630873)))))) tp!482421))))

(declare-fun result!115902 () Bool)

(assert (=> tb!95903 (= result!115902 (and (inv!23777 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!630873))))) (value!102128 (_1!10472 (get!5396 lt!630873))))) e!1071090))))

(assert (= tb!95903 b!1671447))

(declare-fun m!2038285 () Bool)

(assert (=> b!1671447 m!2038285))

(declare-fun m!2038287 () Bool)

(assert (=> tb!95903 m!2038287))

(assert (=> d!505591 t!152697))

(declare-fun b_and!118877 () Bool)

(assert (= b_and!118853 (and (=> t!152697 result!115902) b_and!118877)))

(declare-fun tb!95905 () Bool)

(declare-fun t!152699 () Bool)

(assert (=> (and b!1670835 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (toChars!4570 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!630873)))))) t!152699) tb!95905))

(declare-fun result!115904 () Bool)

(assert (= result!115904 result!115902))

(assert (=> d!505591 t!152699))

(declare-fun b_and!118879 () Bool)

(assert (= b_and!118855 (and (=> t!152699 result!115904) b_and!118879)))

(declare-fun tb!95907 () Bool)

(declare-fun t!152701 () Bool)

(assert (=> (and b!1671330 (= (toChars!4570 (transformation!3244 (h!23820 (t!152640 rules!1846)))) (toChars!4570 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!630873)))))) t!152701) tb!95907))

(declare-fun result!115906 () Bool)

(assert (= result!115906 result!115902))

(assert (=> d!505591 t!152701))

(declare-fun b_and!118881 () Bool)

(assert (= b_and!118863 (and (=> t!152701 result!115906) b_and!118881)))

(declare-fun t!152703 () Bool)

(declare-fun tb!95909 () Bool)

(assert (=> (and b!1671344 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (toChars!4570 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!630873)))))) t!152703) tb!95909))

(declare-fun result!115908 () Bool)

(assert (= result!115908 result!115902))

(assert (=> d!505591 t!152703))

(declare-fun b_and!118883 () Bool)

(assert (= b_and!118867 (and (=> t!152703 result!115908) b_and!118883)))

(declare-fun m!2038289 () Bool)

(assert (=> d!505591 m!2038289))

(declare-fun m!2038291 () Bool)

(assert (=> d!505591 m!2038291))

(assert (=> b!1671194 d!505591))

(declare-fun d!505593 () Bool)

(assert (=> d!505593 (= (get!5396 lt!630873) (v!24811 lt!630873))))

(assert (=> b!1671194 d!505593))

(declare-fun d!505595 () Bool)

(declare-fun lt!631130 () Int)

(assert (=> d!505595 (>= lt!631130 0)))

(declare-fun e!1071091 () Int)

(assert (=> d!505595 (= lt!631130 e!1071091)))

(declare-fun c!271955 () Bool)

(assert (=> d!505595 (= c!271955 (is-Nil!18418 lt!630484))))

(assert (=> d!505595 (= (size!14657 lt!630484) lt!631130)))

(declare-fun b!1671448 () Bool)

(assert (=> b!1671448 (= e!1071091 0)))

(declare-fun b!1671449 () Bool)

(assert (=> b!1671449 (= e!1071091 (+ 1 (size!14657 (t!152639 lt!630484))))))

(assert (= (and d!505595 c!271955) b!1671448))

(assert (= (and d!505595 (not c!271955)) b!1671449))

(declare-fun m!2038293 () Bool)

(assert (=> b!1671449 m!2038293))

(assert (=> b!1671301 d!505595))

(declare-fun d!505597 () Bool)

(declare-fun lt!631131 () Int)

(assert (=> d!505597 (>= lt!631131 0)))

(declare-fun e!1071092 () Int)

(assert (=> d!505597 (= lt!631131 e!1071092)))

(declare-fun c!271956 () Bool)

(assert (=> d!505597 (= c!271956 (is-Nil!18418 lt!630482))))

(assert (=> d!505597 (= (size!14657 lt!630482) lt!631131)))

(declare-fun b!1671450 () Bool)

(assert (=> b!1671450 (= e!1071092 0)))

(declare-fun b!1671451 () Bool)

(assert (=> b!1671451 (= e!1071092 (+ 1 (size!14657 (t!152639 lt!630482))))))

(assert (= (and d!505597 c!271956) b!1671450))

(assert (= (and d!505597 (not c!271956)) b!1671451))

(declare-fun m!2038295 () Bool)

(assert (=> b!1671451 m!2038295))

(assert (=> b!1671301 d!505597))

(declare-fun b!1671462 () Bool)

(declare-fun e!1071098 () List!18490)

(declare-fun list!7389 (IArray!12279) List!18490)

(assert (=> b!1671462 (= e!1071098 (list!7389 (xs!8981 (c!271873 (_1!10473 lt!630487)))))))

(declare-fun b!1671461 () Bool)

(declare-fun e!1071097 () List!18490)

(assert (=> b!1671461 (= e!1071097 e!1071098)))

(declare-fun c!271962 () Bool)

(assert (=> b!1671461 (= c!271962 (is-Leaf!8980 (c!271873 (_1!10473 lt!630487))))))

(declare-fun d!505599 () Bool)

(declare-fun c!271961 () Bool)

(assert (=> d!505599 (= c!271961 (is-Empty!6137 (c!271873 (_1!10473 lt!630487))))))

(assert (=> d!505599 (= (list!7386 (c!271873 (_1!10473 lt!630487))) e!1071097)))

(declare-fun b!1671463 () Bool)

(declare-fun ++!5029 (List!18490 List!18490) List!18490)

(assert (=> b!1671463 (= e!1071098 (++!5029 (list!7386 (left!14733 (c!271873 (_1!10473 lt!630487)))) (list!7386 (right!15063 (c!271873 (_1!10473 lt!630487))))))))

(declare-fun b!1671460 () Bool)

(assert (=> b!1671460 (= e!1071097 Nil!18420)))

(assert (= (and d!505599 c!271961) b!1671460))

(assert (= (and d!505599 (not c!271961)) b!1671461))

(assert (= (and b!1671461 c!271962) b!1671462))

(assert (= (and b!1671461 (not c!271962)) b!1671463))

(declare-fun m!2038297 () Bool)

(assert (=> b!1671462 m!2038297))

(declare-fun m!2038299 () Bool)

(assert (=> b!1671463 m!2038299))

(declare-fun m!2038301 () Bool)

(assert (=> b!1671463 m!2038301))

(assert (=> b!1671463 m!2038299))

(assert (=> b!1671463 m!2038301))

(declare-fun m!2038303 () Bool)

(assert (=> b!1671463 m!2038303))

(assert (=> d!505543 d!505599))

(declare-fun d!505601 () Bool)

(declare-fun lt!631134 () Int)

(assert (=> d!505601 (= lt!631134 (size!14657 (list!7381 (_2!10473 lt!630644))))))

(declare-fun size!14661 (Conc!6136) Int)

(assert (=> d!505601 (= lt!631134 (size!14661 (c!271871 (_2!10473 lt!630644))))))

(assert (=> d!505601 (= (size!14656 (_2!10473 lt!630644)) lt!631134)))

(declare-fun bs!398141 () Bool)

(assert (= bs!398141 d!505601))

(assert (=> bs!398141 m!2037421))

(assert (=> bs!398141 m!2037421))

(declare-fun m!2038305 () Bool)

(assert (=> bs!398141 m!2038305))

(declare-fun m!2038307 () Bool)

(assert (=> bs!398141 m!2038307))

(assert (=> b!1671003 d!505601))

(declare-fun d!505603 () Bool)

(declare-fun lt!631135 () Int)

(assert (=> d!505603 (= lt!631135 (size!14657 (list!7381 lt!630493)))))

(assert (=> d!505603 (= lt!631135 (size!14661 (c!271871 lt!630493)))))

(assert (=> d!505603 (= (size!14656 lt!630493) lt!631135)))

(declare-fun bs!398142 () Bool)

(assert (= bs!398142 d!505603))

(assert (=> bs!398142 m!2037077))

(assert (=> bs!398142 m!2037077))

(declare-fun m!2038309 () Bool)

(assert (=> bs!398142 m!2038309))

(declare-fun m!2038311 () Bool)

(assert (=> bs!398142 m!2038311))

(assert (=> b!1671003 d!505603))

(declare-fun bm!106589 () Bool)

(declare-fun call!106594 () Int)

(declare-fun size!14662 (List!18490) Int)

(assert (=> bm!106589 (= call!106594 (size!14662 lt!630892))))

(declare-fun b!1671482 () Bool)

(declare-fun e!1071110 () Int)

(assert (=> b!1671482 (= e!1071110 (- call!106594 (+ 0 1)))))

(declare-fun d!505605 () Bool)

(declare-fun e!1071113 () Bool)

(assert (=> d!505605 e!1071113))

(declare-fun res!749602 () Bool)

(assert (=> d!505605 (=> (not res!749602) (not e!1071113))))

(declare-fun lt!631138 () List!18490)

(declare-fun content!2578 (List!18490) (Set Token!6054))

(assert (=> d!505605 (= res!749602 (set.subset (content!2578 lt!631138) (content!2578 lt!630892)))))

(declare-fun e!1071111 () List!18490)

(assert (=> d!505605 (= lt!631138 e!1071111)))

(declare-fun c!271971 () Bool)

(assert (=> d!505605 (= c!271971 (is-Nil!18420 lt!630892))))

(assert (=> d!505605 (= (drop!945 lt!630892 (+ 0 1)) lt!631138)))

(declare-fun b!1671483 () Bool)

(declare-fun e!1071112 () List!18490)

(assert (=> b!1671483 (= e!1071111 e!1071112)))

(declare-fun c!271974 () Bool)

(assert (=> b!1671483 (= c!271974 (<= (+ 0 1) 0))))

(declare-fun b!1671484 () Bool)

(assert (=> b!1671484 (= e!1071110 0)))

(declare-fun b!1671485 () Bool)

(declare-fun e!1071109 () Int)

(assert (=> b!1671485 (= e!1071109 call!106594)))

(declare-fun b!1671486 () Bool)

(assert (=> b!1671486 (= e!1071111 Nil!18420)))

(declare-fun b!1671487 () Bool)

(assert (=> b!1671487 (= e!1071112 lt!630892)))

(declare-fun b!1671488 () Bool)

(assert (=> b!1671488 (= e!1071109 e!1071110)))

(declare-fun c!271973 () Bool)

(assert (=> b!1671488 (= c!271973 (>= (+ 0 1) call!106594))))

(declare-fun b!1671489 () Bool)

(assert (=> b!1671489 (= e!1071113 (= (size!14662 lt!631138) e!1071109))))

(declare-fun c!271972 () Bool)

(assert (=> b!1671489 (= c!271972 (<= (+ 0 1) 0))))

(declare-fun b!1671490 () Bool)

(assert (=> b!1671490 (= e!1071112 (drop!945 (t!152641 lt!630892) (- (+ 0 1) 1)))))

(assert (= (and d!505605 c!271971) b!1671486))

(assert (= (and d!505605 (not c!271971)) b!1671483))

(assert (= (and b!1671483 c!271974) b!1671487))

(assert (= (and b!1671483 (not c!271974)) b!1671490))

(assert (= (and d!505605 res!749602) b!1671489))

(assert (= (and b!1671489 c!271972) b!1671485))

(assert (= (and b!1671489 (not c!271972)) b!1671488))

(assert (= (and b!1671488 c!271973) b!1671484))

(assert (= (and b!1671488 (not c!271973)) b!1671482))

(assert (= (or b!1671485 b!1671488 b!1671482) bm!106589))

(declare-fun m!2038313 () Bool)

(assert (=> bm!106589 m!2038313))

(declare-fun m!2038315 () Bool)

(assert (=> d!505605 m!2038315))

(declare-fun m!2038317 () Bool)

(assert (=> d!505605 m!2038317))

(declare-fun m!2038319 () Bool)

(assert (=> b!1671489 m!2038319))

(declare-fun m!2038321 () Bool)

(assert (=> b!1671490 m!2038321))

(assert (=> b!1671208 d!505605))

(declare-fun d!505607 () Bool)

(declare-fun lt!631141 () Token!6054)

(assert (=> d!505607 (= lt!631141 (apply!4977 (list!7382 lt!630478) 0))))

(declare-fun apply!4983 (Conc!6137 Int) Token!6054)

(assert (=> d!505607 (= lt!631141 (apply!4983 (c!271873 lt!630478) 0))))

(declare-fun e!1071116 () Bool)

(assert (=> d!505607 e!1071116))

(declare-fun res!749605 () Bool)

(assert (=> d!505607 (=> (not res!749605) (not e!1071116))))

(assert (=> d!505607 (= res!749605 (<= 0 0))))

(assert (=> d!505607 (= (apply!4973 lt!630478 0) lt!631141)))

(declare-fun b!1671493 () Bool)

(assert (=> b!1671493 (= e!1071116 (< 0 (size!14655 lt!630478)))))

(assert (= (and d!505607 res!749605) b!1671493))

(assert (=> d!505607 m!2037807))

(assert (=> d!505607 m!2037807))

(declare-fun m!2038323 () Bool)

(assert (=> d!505607 m!2038323))

(declare-fun m!2038325 () Bool)

(assert (=> d!505607 m!2038325))

(assert (=> b!1671493 m!2037873))

(assert (=> b!1671208 d!505607))

(declare-fun bm!106590 () Bool)

(declare-fun call!106595 () Int)

(assert (=> bm!106590 (= call!106595 (size!14662 lt!630892))))

(declare-fun b!1671494 () Bool)

(declare-fun e!1071118 () Int)

(assert (=> b!1671494 (= e!1071118 (- call!106595 0))))

(declare-fun d!505609 () Bool)

(declare-fun e!1071121 () Bool)

(assert (=> d!505609 e!1071121))

(declare-fun res!749606 () Bool)

(assert (=> d!505609 (=> (not res!749606) (not e!1071121))))

(declare-fun lt!631142 () List!18490)

(assert (=> d!505609 (= res!749606 (set.subset (content!2578 lt!631142) (content!2578 lt!630892)))))

(declare-fun e!1071119 () List!18490)

(assert (=> d!505609 (= lt!631142 e!1071119)))

(declare-fun c!271975 () Bool)

(assert (=> d!505609 (= c!271975 (is-Nil!18420 lt!630892))))

(assert (=> d!505609 (= (drop!945 lt!630892 0) lt!631142)))

(declare-fun b!1671495 () Bool)

(declare-fun e!1071120 () List!18490)

(assert (=> b!1671495 (= e!1071119 e!1071120)))

(declare-fun c!271978 () Bool)

(assert (=> b!1671495 (= c!271978 (<= 0 0))))

(declare-fun b!1671496 () Bool)

(assert (=> b!1671496 (= e!1071118 0)))

(declare-fun b!1671497 () Bool)

(declare-fun e!1071117 () Int)

(assert (=> b!1671497 (= e!1071117 call!106595)))

(declare-fun b!1671498 () Bool)

(assert (=> b!1671498 (= e!1071119 Nil!18420)))

(declare-fun b!1671499 () Bool)

(assert (=> b!1671499 (= e!1071120 lt!630892)))

(declare-fun b!1671500 () Bool)

(assert (=> b!1671500 (= e!1071117 e!1071118)))

(declare-fun c!271977 () Bool)

(assert (=> b!1671500 (= c!271977 (>= 0 call!106595))))

(declare-fun b!1671501 () Bool)

(assert (=> b!1671501 (= e!1071121 (= (size!14662 lt!631142) e!1071117))))

(declare-fun c!271976 () Bool)

(assert (=> b!1671501 (= c!271976 (<= 0 0))))

(declare-fun b!1671502 () Bool)

(assert (=> b!1671502 (= e!1071120 (drop!945 (t!152641 lt!630892) (- 0 1)))))

(assert (= (and d!505609 c!271975) b!1671498))

(assert (= (and d!505609 (not c!271975)) b!1671495))

(assert (= (and b!1671495 c!271978) b!1671499))

(assert (= (and b!1671495 (not c!271978)) b!1671502))

(assert (= (and d!505609 res!749606) b!1671501))

(assert (= (and b!1671501 c!271976) b!1671497))

(assert (= (and b!1671501 (not c!271976)) b!1671500))

(assert (= (and b!1671500 c!271977) b!1671496))

(assert (= (and b!1671500 (not c!271977)) b!1671494))

(assert (= (or b!1671497 b!1671500 b!1671494) bm!106590))

(assert (=> bm!106590 m!2038313))

(declare-fun m!2038327 () Bool)

(assert (=> d!505609 m!2038327))

(assert (=> d!505609 m!2038317))

(declare-fun m!2038329 () Bool)

(assert (=> b!1671501 m!2038329))

(declare-fun m!2038331 () Bool)

(assert (=> b!1671502 m!2038331))

(assert (=> b!1671208 d!505609))

(declare-fun d!505611 () Bool)

(declare-fun lt!631145 () Token!6054)

(declare-fun contains!3223 (List!18490 Token!6054) Bool)

(assert (=> d!505611 (contains!3223 lt!630897 lt!631145)))

(declare-fun e!1071126 () Token!6054)

(assert (=> d!505611 (= lt!631145 e!1071126)))

(declare-fun c!271981 () Bool)

(assert (=> d!505611 (= c!271981 (= 0 0))))

(declare-fun e!1071127 () Bool)

(assert (=> d!505611 e!1071127))

(declare-fun res!749609 () Bool)

(assert (=> d!505611 (=> (not res!749609) (not e!1071127))))

(assert (=> d!505611 (= res!749609 (<= 0 0))))

(assert (=> d!505611 (= (apply!4977 lt!630897 0) lt!631145)))

(declare-fun b!1671509 () Bool)

(assert (=> b!1671509 (= e!1071127 (< 0 (size!14662 lt!630897)))))

(declare-fun b!1671510 () Bool)

(assert (=> b!1671510 (= e!1071126 (head!3738 lt!630897))))

(declare-fun b!1671511 () Bool)

(assert (=> b!1671511 (= e!1071126 (apply!4977 (tail!2495 lt!630897) (- 0 1)))))

(assert (= (and d!505611 res!749609) b!1671509))

(assert (= (and d!505611 c!271981) b!1671510))

(assert (= (and d!505611 (not c!271981)) b!1671511))

(declare-fun m!2038333 () Bool)

(assert (=> d!505611 m!2038333))

(declare-fun m!2038335 () Bool)

(assert (=> b!1671509 m!2038335))

(declare-fun m!2038337 () Bool)

(assert (=> b!1671510 m!2038337))

(declare-fun m!2038339 () Bool)

(assert (=> b!1671511 m!2038339))

(assert (=> b!1671511 m!2038339))

(declare-fun m!2038341 () Bool)

(assert (=> b!1671511 m!2038341))

(assert (=> b!1671208 d!505611))

(declare-fun d!505613 () Bool)

(assert (=> d!505613 (= (tail!2495 (drop!945 lt!630892 0)) (drop!945 lt!630892 (+ 0 1)))))

(declare-fun lt!631148 () Unit!31326)

(declare-fun choose!10067 (List!18490 Int) Unit!31326)

(assert (=> d!505613 (= lt!631148 (choose!10067 lt!630892 0))))

(declare-fun e!1071130 () Bool)

(assert (=> d!505613 e!1071130))

(declare-fun res!749612 () Bool)

(assert (=> d!505613 (=> (not res!749612) (not e!1071130))))

(assert (=> d!505613 (= res!749612 (>= 0 0))))

(assert (=> d!505613 (= (lemmaDropTail!605 lt!630892 0) lt!631148)))

(declare-fun b!1671514 () Bool)

(assert (=> b!1671514 (= e!1071130 (< 0 (size!14662 lt!630892)))))

(assert (= (and d!505613 res!749612) b!1671514))

(assert (=> d!505613 m!2037881))

(assert (=> d!505613 m!2037881))

(assert (=> d!505613 m!2037883))

(assert (=> d!505613 m!2037891))

(declare-fun m!2038343 () Bool)

(assert (=> d!505613 m!2038343))

(assert (=> b!1671514 m!2038313))

(assert (=> b!1671208 d!505613))

(declare-fun bm!106591 () Bool)

(declare-fun call!106596 () Int)

(assert (=> bm!106591 (= call!106596 (size!14662 lt!630897))))

(declare-fun b!1671515 () Bool)

(declare-fun e!1071132 () Int)

(assert (=> b!1671515 (= e!1071132 (- call!106596 0))))

(declare-fun d!505615 () Bool)

(declare-fun e!1071135 () Bool)

(assert (=> d!505615 e!1071135))

(declare-fun res!749613 () Bool)

(assert (=> d!505615 (=> (not res!749613) (not e!1071135))))

(declare-fun lt!631149 () List!18490)

(assert (=> d!505615 (= res!749613 (set.subset (content!2578 lt!631149) (content!2578 lt!630897)))))

(declare-fun e!1071133 () List!18490)

(assert (=> d!505615 (= lt!631149 e!1071133)))

(declare-fun c!271982 () Bool)

(assert (=> d!505615 (= c!271982 (is-Nil!18420 lt!630897))))

(assert (=> d!505615 (= (drop!945 lt!630897 0) lt!631149)))

(declare-fun b!1671516 () Bool)

(declare-fun e!1071134 () List!18490)

(assert (=> b!1671516 (= e!1071133 e!1071134)))

(declare-fun c!271985 () Bool)

(assert (=> b!1671516 (= c!271985 (<= 0 0))))

(declare-fun b!1671517 () Bool)

(assert (=> b!1671517 (= e!1071132 0)))

(declare-fun b!1671518 () Bool)

(declare-fun e!1071131 () Int)

(assert (=> b!1671518 (= e!1071131 call!106596)))

(declare-fun b!1671519 () Bool)

(assert (=> b!1671519 (= e!1071133 Nil!18420)))

(declare-fun b!1671520 () Bool)

(assert (=> b!1671520 (= e!1071134 lt!630897)))

(declare-fun b!1671521 () Bool)

(assert (=> b!1671521 (= e!1071131 e!1071132)))

(declare-fun c!271984 () Bool)

(assert (=> b!1671521 (= c!271984 (>= 0 call!106596))))

(declare-fun b!1671522 () Bool)

(assert (=> b!1671522 (= e!1071135 (= (size!14662 lt!631149) e!1071131))))

(declare-fun c!271983 () Bool)

(assert (=> b!1671522 (= c!271983 (<= 0 0))))

(declare-fun b!1671523 () Bool)

(assert (=> b!1671523 (= e!1071134 (drop!945 (t!152641 lt!630897) (- 0 1)))))

(assert (= (and d!505615 c!271982) b!1671519))

(assert (= (and d!505615 (not c!271982)) b!1671516))

(assert (= (and b!1671516 c!271985) b!1671520))

(assert (= (and b!1671516 (not c!271985)) b!1671523))

(assert (= (and d!505615 res!749613) b!1671522))

(assert (= (and b!1671522 c!271983) b!1671518))

(assert (= (and b!1671522 (not c!271983)) b!1671521))

(assert (= (and b!1671521 c!271984) b!1671517))

(assert (= (and b!1671521 (not c!271984)) b!1671515))

(assert (= (or b!1671518 b!1671521 b!1671515) bm!106591))

(assert (=> bm!106591 m!2038335))

(declare-fun m!2038345 () Bool)

(assert (=> d!505615 m!2038345))

(declare-fun m!2038347 () Bool)

(assert (=> d!505615 m!2038347))

(declare-fun m!2038349 () Bool)

(assert (=> b!1671522 m!2038349))

(declare-fun m!2038351 () Bool)

(assert (=> b!1671523 m!2038351))

(assert (=> b!1671208 d!505615))

(declare-fun d!505617 () Bool)

(assert (=> d!505617 (= (list!7382 lt!630478) (list!7386 (c!271873 lt!630478)))))

(declare-fun bs!398143 () Bool)

(assert (= bs!398143 d!505617))

(declare-fun m!2038353 () Bool)

(assert (=> bs!398143 m!2038353))

(assert (=> b!1671208 d!505617))

(declare-fun d!505619 () Bool)

(declare-fun lt!631151 () BalanceConc!12216)

(assert (=> d!505619 (= (list!7381 lt!631151) (printListTailRec!418 thiss!17113 (dropList!722 lt!630478 (+ 0 1)) (list!7381 (++!5023 (BalanceConc!12217 Empty!6136) (charsOf!1893 (apply!4973 lt!630478 0))))))))

(declare-fun e!1071136 () BalanceConc!12216)

(assert (=> d!505619 (= lt!631151 e!1071136)))

(declare-fun c!271986 () Bool)

(assert (=> d!505619 (= c!271986 (>= (+ 0 1) (size!14655 lt!630478)))))

(declare-fun e!1071137 () Bool)

(assert (=> d!505619 e!1071137))

(declare-fun res!749614 () Bool)

(assert (=> d!505619 (=> (not res!749614) (not e!1071137))))

(assert (=> d!505619 (= res!749614 (>= (+ 0 1) 0))))

(assert (=> d!505619 (= (printTailRec!924 thiss!17113 lt!630478 (+ 0 1) (++!5023 (BalanceConc!12217 Empty!6136) (charsOf!1893 (apply!4973 lt!630478 0)))) lt!631151)))

(declare-fun b!1671524 () Bool)

(assert (=> b!1671524 (= e!1071137 (<= (+ 0 1) (size!14655 lt!630478)))))

(declare-fun b!1671525 () Bool)

(assert (=> b!1671525 (= e!1071136 (++!5023 (BalanceConc!12217 Empty!6136) (charsOf!1893 (apply!4973 lt!630478 0))))))

(declare-fun b!1671526 () Bool)

(assert (=> b!1671526 (= e!1071136 (printTailRec!924 thiss!17113 lt!630478 (+ 0 1 1) (++!5023 (++!5023 (BalanceConc!12217 Empty!6136) (charsOf!1893 (apply!4973 lt!630478 0))) (charsOf!1893 (apply!4973 lt!630478 (+ 0 1))))))))

(declare-fun lt!631155 () List!18490)

(assert (=> b!1671526 (= lt!631155 (list!7382 lt!630478))))

(declare-fun lt!631154 () Unit!31326)

(assert (=> b!1671526 (= lt!631154 (lemmaDropApply!625 lt!631155 (+ 0 1)))))

(assert (=> b!1671526 (= (head!3738 (drop!945 lt!631155 (+ 0 1))) (apply!4977 lt!631155 (+ 0 1)))))

(declare-fun lt!631156 () Unit!31326)

(assert (=> b!1671526 (= lt!631156 lt!631154)))

(declare-fun lt!631150 () List!18490)

(assert (=> b!1671526 (= lt!631150 (list!7382 lt!630478))))

(declare-fun lt!631152 () Unit!31326)

(assert (=> b!1671526 (= lt!631152 (lemmaDropTail!605 lt!631150 (+ 0 1)))))

(assert (=> b!1671526 (= (tail!2495 (drop!945 lt!631150 (+ 0 1))) (drop!945 lt!631150 (+ 0 1 1)))))

(declare-fun lt!631153 () Unit!31326)

(assert (=> b!1671526 (= lt!631153 lt!631152)))

(assert (= (and d!505619 res!749614) b!1671524))

(assert (= (and d!505619 c!271986) b!1671525))

(assert (= (and d!505619 (not c!271986)) b!1671526))

(declare-fun m!2038355 () Bool)

(assert (=> d!505619 m!2038355))

(declare-fun m!2038357 () Bool)

(assert (=> d!505619 m!2038357))

(declare-fun m!2038359 () Bool)

(assert (=> d!505619 m!2038359))

(assert (=> d!505619 m!2037887))

(assert (=> d!505619 m!2038357))

(declare-fun m!2038361 () Bool)

(assert (=> d!505619 m!2038361))

(assert (=> d!505619 m!2038355))

(assert (=> d!505619 m!2037873))

(assert (=> b!1671524 m!2037873))

(declare-fun m!2038363 () Bool)

(assert (=> b!1671526 m!2038363))

(declare-fun m!2038365 () Bool)

(assert (=> b!1671526 m!2038365))

(assert (=> b!1671526 m!2037807))

(declare-fun m!2038367 () Bool)

(assert (=> b!1671526 m!2038367))

(declare-fun m!2038369 () Bool)

(assert (=> b!1671526 m!2038369))

(declare-fun m!2038371 () Bool)

(assert (=> b!1671526 m!2038371))

(assert (=> b!1671526 m!2037887))

(declare-fun m!2038373 () Bool)

(assert (=> b!1671526 m!2038373))

(declare-fun m!2038375 () Bool)

(assert (=> b!1671526 m!2038375))

(declare-fun m!2038377 () Bool)

(assert (=> b!1671526 m!2038377))

(declare-fun m!2038379 () Bool)

(assert (=> b!1671526 m!2038379))

(declare-fun m!2038381 () Bool)

(assert (=> b!1671526 m!2038381))

(assert (=> b!1671526 m!2038369))

(assert (=> b!1671526 m!2038381))

(assert (=> b!1671526 m!2038373))

(assert (=> b!1671526 m!2038367))

(declare-fun m!2038383 () Bool)

(assert (=> b!1671526 m!2038383))

(assert (=> b!1671526 m!2038375))

(declare-fun m!2038385 () Bool)

(assert (=> b!1671526 m!2038385))

(assert (=> b!1671208 d!505619))

(declare-fun d!505621 () Bool)

(declare-fun lt!631157 () BalanceConc!12216)

(assert (=> d!505621 (= (list!7381 lt!631157) (originalCharacters!4058 (apply!4973 lt!630478 0)))))

(assert (=> d!505621 (= lt!631157 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (apply!4973 lt!630478 0)))) (value!102128 (apply!4973 lt!630478 0))))))

(assert (=> d!505621 (= (charsOf!1893 (apply!4973 lt!630478 0)) lt!631157)))

(declare-fun b_lambda!52513 () Bool)

(assert (=> (not b_lambda!52513) (not d!505621)))

(declare-fun tb!95911 () Bool)

(declare-fun t!152706 () Bool)

(assert (=> (and b!1670823 (= (toChars!4570 (transformation!3244 (h!23820 rules!1846))) (toChars!4570 (transformation!3244 (rule!5134 (apply!4973 lt!630478 0))))) t!152706) tb!95911))

(declare-fun b!1671527 () Bool)

(declare-fun e!1071138 () Bool)

(declare-fun tp!482422 () Bool)

(assert (=> b!1671527 (= e!1071138 (and (inv!23776 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (apply!4973 lt!630478 0)))) (value!102128 (apply!4973 lt!630478 0))))) tp!482422))))

(declare-fun result!115910 () Bool)

(assert (=> tb!95911 (= result!115910 (and (inv!23777 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (apply!4973 lt!630478 0)))) (value!102128 (apply!4973 lt!630478 0)))) e!1071138))))

(assert (= tb!95911 b!1671527))

(declare-fun m!2038387 () Bool)

(assert (=> b!1671527 m!2038387))

(declare-fun m!2038389 () Bool)

(assert (=> tb!95911 m!2038389))

(assert (=> d!505621 t!152706))

(declare-fun b_and!118885 () Bool)

(assert (= b_and!118877 (and (=> t!152706 result!115910) b_and!118885)))

(declare-fun t!152708 () Bool)

(declare-fun tb!95913 () Bool)

(assert (=> (and b!1670835 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (toChars!4570 (transformation!3244 (rule!5134 (apply!4973 lt!630478 0))))) t!152708) tb!95913))

(declare-fun result!115912 () Bool)

(assert (= result!115912 result!115910))

(assert (=> d!505621 t!152708))

(declare-fun b_and!118887 () Bool)

(assert (= b_and!118879 (and (=> t!152708 result!115912) b_and!118887)))

(declare-fun tb!95915 () Bool)

(declare-fun t!152710 () Bool)

(assert (=> (and b!1671330 (= (toChars!4570 (transformation!3244 (h!23820 (t!152640 rules!1846)))) (toChars!4570 (transformation!3244 (rule!5134 (apply!4973 lt!630478 0))))) t!152710) tb!95915))

(declare-fun result!115914 () Bool)

(assert (= result!115914 result!115910))

(assert (=> d!505621 t!152710))

(declare-fun b_and!118889 () Bool)

(assert (= b_and!118881 (and (=> t!152710 result!115914) b_and!118889)))

(declare-fun t!152712 () Bool)

(declare-fun tb!95917 () Bool)

(assert (=> (and b!1671344 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (toChars!4570 (transformation!3244 (rule!5134 (apply!4973 lt!630478 0))))) t!152712) tb!95917))

(declare-fun result!115916 () Bool)

(assert (= result!115916 result!115910))

(assert (=> d!505621 t!152712))

(declare-fun b_and!118891 () Bool)

(assert (= b_and!118883 (and (=> t!152712 result!115916) b_and!118891)))

(declare-fun m!2038391 () Bool)

(assert (=> d!505621 m!2038391))

(declare-fun m!2038393 () Bool)

(assert (=> d!505621 m!2038393))

(assert (=> b!1671208 d!505621))

(declare-fun b!1671529 () Bool)

(declare-fun res!749617 () Bool)

(declare-fun e!1071139 () Bool)

(assert (=> b!1671529 (=> (not res!749617) (not e!1071139))))

(assert (=> b!1671529 (= res!749617 (<= (height!972 (++!5027 (c!271871 (BalanceConc!12217 Empty!6136)) (c!271871 (charsOf!1893 (apply!4973 lt!630478 0))))) (+ (max!0 (height!972 (c!271871 (BalanceConc!12217 Empty!6136))) (height!972 (c!271871 (charsOf!1893 (apply!4973 lt!630478 0))))) 1)))))

(declare-fun b!1671528 () Bool)

(declare-fun res!749616 () Bool)

(assert (=> b!1671528 (=> (not res!749616) (not e!1071139))))

(assert (=> b!1671528 (= res!749616 (isBalanced!1911 (++!5027 (c!271871 (BalanceConc!12217 Empty!6136)) (c!271871 (charsOf!1893 (apply!4973 lt!630478 0))))))))

(declare-fun b!1671530 () Bool)

(declare-fun res!749618 () Bool)

(assert (=> b!1671530 (=> (not res!749618) (not e!1071139))))

(assert (=> b!1671530 (= res!749618 (>= (height!972 (++!5027 (c!271871 (BalanceConc!12217 Empty!6136)) (c!271871 (charsOf!1893 (apply!4973 lt!630478 0))))) (max!0 (height!972 (c!271871 (BalanceConc!12217 Empty!6136))) (height!972 (c!271871 (charsOf!1893 (apply!4973 lt!630478 0)))))))))

(declare-fun d!505623 () Bool)

(assert (=> d!505623 e!1071139))

(declare-fun res!749615 () Bool)

(assert (=> d!505623 (=> (not res!749615) (not e!1071139))))

(assert (=> d!505623 (= res!749615 (appendAssocInst!486 (c!271871 (BalanceConc!12217 Empty!6136)) (c!271871 (charsOf!1893 (apply!4973 lt!630478 0)))))))

(declare-fun lt!631158 () BalanceConc!12216)

(assert (=> d!505623 (= lt!631158 (BalanceConc!12217 (++!5027 (c!271871 (BalanceConc!12217 Empty!6136)) (c!271871 (charsOf!1893 (apply!4973 lt!630478 0))))))))

(assert (=> d!505623 (= (++!5023 (BalanceConc!12217 Empty!6136) (charsOf!1893 (apply!4973 lt!630478 0))) lt!631158)))

(declare-fun b!1671531 () Bool)

(assert (=> b!1671531 (= e!1071139 (= (list!7381 lt!631158) (++!5024 (list!7381 (BalanceConc!12217 Empty!6136)) (list!7381 (charsOf!1893 (apply!4973 lt!630478 0))))))))

(assert (= (and d!505623 res!749615) b!1671528))

(assert (= (and b!1671528 res!749616) b!1671529))

(assert (= (and b!1671529 res!749617) b!1671530))

(assert (= (and b!1671530 res!749618) b!1671531))

(declare-fun m!2038395 () Bool)

(assert (=> b!1671531 m!2038395))

(assert (=> b!1671531 m!2037867))

(assert (=> b!1671531 m!2037885))

(declare-fun m!2038397 () Bool)

(assert (=> b!1671531 m!2038397))

(assert (=> b!1671531 m!2037867))

(assert (=> b!1671531 m!2038397))

(declare-fun m!2038399 () Bool)

(assert (=> b!1671531 m!2038399))

(declare-fun m!2038401 () Bool)

(assert (=> b!1671529 m!2038401))

(declare-fun m!2038403 () Bool)

(assert (=> b!1671529 m!2038403))

(declare-fun m!2038405 () Bool)

(assert (=> b!1671529 m!2038405))

(assert (=> b!1671529 m!2038403))

(declare-fun m!2038407 () Bool)

(assert (=> b!1671529 m!2038407))

(assert (=> b!1671529 m!2038407))

(assert (=> b!1671529 m!2038401))

(declare-fun m!2038409 () Bool)

(assert (=> b!1671529 m!2038409))

(declare-fun m!2038411 () Bool)

(assert (=> d!505623 m!2038411))

(assert (=> d!505623 m!2038403))

(assert (=> b!1671528 m!2038403))

(assert (=> b!1671528 m!2038403))

(declare-fun m!2038413 () Bool)

(assert (=> b!1671528 m!2038413))

(assert (=> b!1671530 m!2038401))

(assert (=> b!1671530 m!2038403))

(assert (=> b!1671530 m!2038405))

(assert (=> b!1671530 m!2038403))

(assert (=> b!1671530 m!2038407))

(assert (=> b!1671530 m!2038407))

(assert (=> b!1671530 m!2038401))

(assert (=> b!1671530 m!2038409))

(assert (=> b!1671208 d!505623))

(declare-fun d!505625 () Bool)

(assert (=> d!505625 (= (head!3738 (drop!945 lt!630897 0)) (apply!4977 lt!630897 0))))

(declare-fun lt!631161 () Unit!31326)

(declare-fun choose!10068 (List!18490 Int) Unit!31326)

(assert (=> d!505625 (= lt!631161 (choose!10068 lt!630897 0))))

(declare-fun e!1071142 () Bool)

(assert (=> d!505625 e!1071142))

(declare-fun res!749621 () Bool)

(assert (=> d!505625 (=> (not res!749621) (not e!1071142))))

(assert (=> d!505625 (= res!749621 (>= 0 0))))

(assert (=> d!505625 (= (lemmaDropApply!625 lt!630897 0) lt!631161)))

(declare-fun b!1671534 () Bool)

(assert (=> b!1671534 (= e!1071142 (< 0 (size!14662 lt!630897)))))

(assert (= (and d!505625 res!749621) b!1671534))

(assert (=> d!505625 m!2037879))

(assert (=> d!505625 m!2037879))

(assert (=> d!505625 m!2037895))

(assert (=> d!505625 m!2037875))

(declare-fun m!2038415 () Bool)

(assert (=> d!505625 m!2038415))

(assert (=> b!1671534 m!2038335))

(assert (=> b!1671208 d!505625))

(declare-fun d!505627 () Bool)

(assert (=> d!505627 (= (tail!2495 (drop!945 lt!630892 0)) (t!152641 (drop!945 lt!630892 0)))))

(assert (=> b!1671208 d!505627))

(declare-fun d!505629 () Bool)

(assert (=> d!505629 (= (head!3738 (drop!945 lt!630897 0)) (h!23821 (drop!945 lt!630897 0)))))

(assert (=> b!1671208 d!505629))

(declare-fun e!1071144 () Bool)

(declare-fun lt!631162 () List!18488)

(declare-fun b!1671538 () Bool)

(assert (=> b!1671538 (= e!1071144 (or (not (= (printList!986 thiss!17113 (t!152641 (Cons!18420 (h!23821 tokens!457) Nil!18420))) Nil!18418)) (= lt!631162 (list!7381 (charsOf!1893 (h!23821 (Cons!18420 (h!23821 tokens!457) Nil!18420)))))))))

(declare-fun b!1671537 () Bool)

(declare-fun res!749622 () Bool)

(assert (=> b!1671537 (=> (not res!749622) (not e!1071144))))

(assert (=> b!1671537 (= res!749622 (= (size!14657 lt!631162) (+ (size!14657 (list!7381 (charsOf!1893 (h!23821 (Cons!18420 (h!23821 tokens!457) Nil!18420))))) (size!14657 (printList!986 thiss!17113 (t!152641 (Cons!18420 (h!23821 tokens!457) Nil!18420)))))))))

(declare-fun b!1671536 () Bool)

(declare-fun e!1071143 () List!18488)

(assert (=> b!1671536 (= e!1071143 (Cons!18418 (h!23819 (list!7381 (charsOf!1893 (h!23821 (Cons!18420 (h!23821 tokens!457) Nil!18420))))) (++!5024 (t!152639 (list!7381 (charsOf!1893 (h!23821 (Cons!18420 (h!23821 tokens!457) Nil!18420))))) (printList!986 thiss!17113 (t!152641 (Cons!18420 (h!23821 tokens!457) Nil!18420))))))))

(declare-fun d!505631 () Bool)

(assert (=> d!505631 e!1071144))

(declare-fun res!749623 () Bool)

(assert (=> d!505631 (=> (not res!749623) (not e!1071144))))

(assert (=> d!505631 (= res!749623 (= (content!2576 lt!631162) (set.union (content!2576 (list!7381 (charsOf!1893 (h!23821 (Cons!18420 (h!23821 tokens!457) Nil!18420))))) (content!2576 (printList!986 thiss!17113 (t!152641 (Cons!18420 (h!23821 tokens!457) Nil!18420)))))))))

(assert (=> d!505631 (= lt!631162 e!1071143)))

(declare-fun c!271987 () Bool)

(assert (=> d!505631 (= c!271987 (is-Nil!18418 (list!7381 (charsOf!1893 (h!23821 (Cons!18420 (h!23821 tokens!457) Nil!18420))))))))

(assert (=> d!505631 (= (++!5024 (list!7381 (charsOf!1893 (h!23821 (Cons!18420 (h!23821 tokens!457) Nil!18420)))) (printList!986 thiss!17113 (t!152641 (Cons!18420 (h!23821 tokens!457) Nil!18420)))) lt!631162)))

(declare-fun b!1671535 () Bool)

(assert (=> b!1671535 (= e!1071143 (printList!986 thiss!17113 (t!152641 (Cons!18420 (h!23821 tokens!457) Nil!18420))))))

(assert (= (and d!505631 c!271987) b!1671535))

(assert (= (and d!505631 (not c!271987)) b!1671536))

(assert (= (and d!505631 res!749623) b!1671537))

(assert (= (and b!1671537 res!749622) b!1671538))

(declare-fun m!2038417 () Bool)

(assert (=> b!1671537 m!2038417))

(assert (=> b!1671537 m!2037901))

(declare-fun m!2038419 () Bool)

(assert (=> b!1671537 m!2038419))

(assert (=> b!1671537 m!2037903))

(declare-fun m!2038421 () Bool)

(assert (=> b!1671537 m!2038421))

(assert (=> b!1671536 m!2037903))

(declare-fun m!2038423 () Bool)

(assert (=> b!1671536 m!2038423))

(declare-fun m!2038425 () Bool)

(assert (=> d!505631 m!2038425))

(assert (=> d!505631 m!2037901))

(declare-fun m!2038427 () Bool)

(assert (=> d!505631 m!2038427))

(assert (=> d!505631 m!2037903))

(declare-fun m!2038429 () Bool)

(assert (=> d!505631 m!2038429))

(assert (=> b!1671213 d!505631))

(declare-fun d!505633 () Bool)

(assert (=> d!505633 (= (list!7381 (charsOf!1893 (h!23821 (Cons!18420 (h!23821 tokens!457) Nil!18420)))) (list!7385 (c!271871 (charsOf!1893 (h!23821 (Cons!18420 (h!23821 tokens!457) Nil!18420))))))))

(declare-fun bs!398144 () Bool)

(assert (= bs!398144 d!505633))

(declare-fun m!2038431 () Bool)

(assert (=> bs!398144 m!2038431))

(assert (=> b!1671213 d!505633))

(declare-fun d!505635 () Bool)

(declare-fun lt!631163 () BalanceConc!12216)

(assert (=> d!505635 (= (list!7381 lt!631163) (originalCharacters!4058 (h!23821 (Cons!18420 (h!23821 tokens!457) Nil!18420))))))

(assert (=> d!505635 (= lt!631163 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (Cons!18420 (h!23821 tokens!457) Nil!18420))))) (value!102128 (h!23821 (Cons!18420 (h!23821 tokens!457) Nil!18420)))))))

(assert (=> d!505635 (= (charsOf!1893 (h!23821 (Cons!18420 (h!23821 tokens!457) Nil!18420))) lt!631163)))

(declare-fun b_lambda!52515 () Bool)

(assert (=> (not b_lambda!52515) (not d!505635)))

(declare-fun t!152714 () Bool)

(declare-fun tb!95919 () Bool)

(assert (=> (and b!1670823 (= (toChars!4570 (transformation!3244 (h!23820 rules!1846))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (Cons!18420 (h!23821 tokens!457) Nil!18420)))))) t!152714) tb!95919))

(declare-fun b!1671539 () Bool)

(declare-fun e!1071145 () Bool)

(declare-fun tp!482423 () Bool)

(assert (=> b!1671539 (= e!1071145 (and (inv!23776 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (Cons!18420 (h!23821 tokens!457) Nil!18420))))) (value!102128 (h!23821 (Cons!18420 (h!23821 tokens!457) Nil!18420)))))) tp!482423))))

(declare-fun result!115918 () Bool)

(assert (=> tb!95919 (= result!115918 (and (inv!23777 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (Cons!18420 (h!23821 tokens!457) Nil!18420))))) (value!102128 (h!23821 (Cons!18420 (h!23821 tokens!457) Nil!18420))))) e!1071145))))

(assert (= tb!95919 b!1671539))

(declare-fun m!2038433 () Bool)

(assert (=> b!1671539 m!2038433))

(declare-fun m!2038435 () Bool)

(assert (=> tb!95919 m!2038435))

(assert (=> d!505635 t!152714))

(declare-fun b_and!118893 () Bool)

(assert (= b_and!118885 (and (=> t!152714 result!115918) b_and!118893)))

(declare-fun t!152716 () Bool)

(declare-fun tb!95921 () Bool)

(assert (=> (and b!1670835 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (Cons!18420 (h!23821 tokens!457) Nil!18420)))))) t!152716) tb!95921))

(declare-fun result!115920 () Bool)

(assert (= result!115920 result!115918))

(assert (=> d!505635 t!152716))

(declare-fun b_and!118895 () Bool)

(assert (= b_and!118887 (and (=> t!152716 result!115920) b_and!118895)))

(declare-fun tb!95923 () Bool)

(declare-fun t!152718 () Bool)

(assert (=> (and b!1671330 (= (toChars!4570 (transformation!3244 (h!23820 (t!152640 rules!1846)))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (Cons!18420 (h!23821 tokens!457) Nil!18420)))))) t!152718) tb!95923))

(declare-fun result!115922 () Bool)

(assert (= result!115922 result!115918))

(assert (=> d!505635 t!152718))

(declare-fun b_and!118897 () Bool)

(assert (= b_and!118889 (and (=> t!152718 result!115922) b_and!118897)))

(declare-fun t!152720 () Bool)

(declare-fun tb!95925 () Bool)

(assert (=> (and b!1671344 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (Cons!18420 (h!23821 tokens!457) Nil!18420)))))) t!152720) tb!95925))

(declare-fun result!115924 () Bool)

(assert (= result!115924 result!115918))

(assert (=> d!505635 t!152720))

(declare-fun b_and!118899 () Bool)

(assert (= b_and!118891 (and (=> t!152720 result!115924) b_and!118899)))

(declare-fun m!2038437 () Bool)

(assert (=> d!505635 m!2038437))

(declare-fun m!2038439 () Bool)

(assert (=> d!505635 m!2038439))

(assert (=> b!1671213 d!505635))

(declare-fun d!505637 () Bool)

(declare-fun c!271988 () Bool)

(assert (=> d!505637 (= c!271988 (is-Cons!18420 (t!152641 (Cons!18420 (h!23821 tokens!457) Nil!18420))))))

(declare-fun e!1071146 () List!18488)

(assert (=> d!505637 (= (printList!986 thiss!17113 (t!152641 (Cons!18420 (h!23821 tokens!457) Nil!18420))) e!1071146)))

(declare-fun b!1671540 () Bool)

(assert (=> b!1671540 (= e!1071146 (++!5024 (list!7381 (charsOf!1893 (h!23821 (t!152641 (Cons!18420 (h!23821 tokens!457) Nil!18420))))) (printList!986 thiss!17113 (t!152641 (t!152641 (Cons!18420 (h!23821 tokens!457) Nil!18420))))))))

(declare-fun b!1671541 () Bool)

(assert (=> b!1671541 (= e!1071146 Nil!18418)))

(assert (= (and d!505637 c!271988) b!1671540))

(assert (= (and d!505637 (not c!271988)) b!1671541))

(declare-fun m!2038441 () Bool)

(assert (=> b!1671540 m!2038441))

(assert (=> b!1671540 m!2038441))

(declare-fun m!2038443 () Bool)

(assert (=> b!1671540 m!2038443))

(declare-fun m!2038445 () Bool)

(assert (=> b!1671540 m!2038445))

(assert (=> b!1671540 m!2038443))

(assert (=> b!1671540 m!2038445))

(declare-fun m!2038447 () Bool)

(assert (=> b!1671540 m!2038447))

(assert (=> b!1671213 d!505637))

(declare-fun d!505639 () Bool)

(declare-fun c!271991 () Bool)

(assert (=> d!505639 (= c!271991 (is-Node!6136 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (value!102128 (h!23821 (t!152641 tokens!457)))))))))

(declare-fun e!1071151 () Bool)

(assert (=> d!505639 (= (inv!23776 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (value!102128 (h!23821 (t!152641 tokens!457)))))) e!1071151)))

(declare-fun b!1671548 () Bool)

(declare-fun inv!23780 (Conc!6136) Bool)

(assert (=> b!1671548 (= e!1071151 (inv!23780 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (value!102128 (h!23821 (t!152641 tokens!457)))))))))

(declare-fun b!1671549 () Bool)

(declare-fun e!1071152 () Bool)

(assert (=> b!1671549 (= e!1071151 e!1071152)))

(declare-fun res!749626 () Bool)

(assert (=> b!1671549 (= res!749626 (not (is-Leaf!8979 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (value!102128 (h!23821 (t!152641 tokens!457))))))))))

(assert (=> b!1671549 (=> res!749626 e!1071152)))

(declare-fun b!1671550 () Bool)

(declare-fun inv!23781 (Conc!6136) Bool)

(assert (=> b!1671550 (= e!1071152 (inv!23781 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (value!102128 (h!23821 (t!152641 tokens!457)))))))))

(assert (= (and d!505639 c!271991) b!1671548))

(assert (= (and d!505639 (not c!271991)) b!1671549))

(assert (= (and b!1671549 (not res!749626)) b!1671550))

(declare-fun m!2038449 () Bool)

(assert (=> b!1671548 m!2038449))

(declare-fun m!2038451 () Bool)

(assert (=> b!1671550 m!2038451))

(assert (=> b!1670980 d!505639))

(assert (=> d!505545 d!505521))

(declare-fun d!505641 () Bool)

(declare-fun e!1071155 () Bool)

(assert (=> d!505641 e!1071155))

(declare-fun res!749629 () Bool)

(assert (=> d!505641 (=> (not res!749629) (not e!1071155))))

(declare-fun e!1071153 () Bool)

(assert (=> d!505641 (= res!749629 e!1071153)))

(declare-fun c!271992 () Bool)

(declare-fun lt!631164 () tuple2!18142)

(assert (=> d!505641 (= c!271992 (> (size!14655 (_1!10473 lt!631164)) 0))))

(assert (=> d!505641 (= lt!631164 (lexTailRecV2!621 thiss!17113 rules!1846 (print!1404 thiss!17113 (seqFromList!2226 (t!152641 tokens!457))) (BalanceConc!12217 Empty!6136) (print!1404 thiss!17113 (seqFromList!2226 (t!152641 tokens!457))) (BalanceConc!12219 Empty!6137)))))

(assert (=> d!505641 (= (lex!1357 thiss!17113 rules!1846 (print!1404 thiss!17113 (seqFromList!2226 (t!152641 tokens!457)))) lt!631164)))

(declare-fun b!1671551 () Bool)

(declare-fun e!1071154 () Bool)

(assert (=> b!1671551 (= e!1071153 e!1071154)))

(declare-fun res!749628 () Bool)

(assert (=> b!1671551 (= res!749628 (< (size!14656 (_2!10473 lt!631164)) (size!14656 (print!1404 thiss!17113 (seqFromList!2226 (t!152641 tokens!457))))))))

(assert (=> b!1671551 (=> (not res!749628) (not e!1071154))))

(declare-fun b!1671552 () Bool)

(declare-fun res!749627 () Bool)

(assert (=> b!1671552 (=> (not res!749627) (not e!1071155))))

(assert (=> b!1671552 (= res!749627 (= (list!7382 (_1!10473 lt!631164)) (_1!10476 (lexList!898 thiss!17113 rules!1846 (list!7381 (print!1404 thiss!17113 (seqFromList!2226 (t!152641 tokens!457))))))))))

(declare-fun b!1671553 () Bool)

(assert (=> b!1671553 (= e!1071153 (= (_2!10473 lt!631164) (print!1404 thiss!17113 (seqFromList!2226 (t!152641 tokens!457)))))))

(declare-fun b!1671554 () Bool)

(assert (=> b!1671554 (= e!1071155 (= (list!7381 (_2!10473 lt!631164)) (_2!10476 (lexList!898 thiss!17113 rules!1846 (list!7381 (print!1404 thiss!17113 (seqFromList!2226 (t!152641 tokens!457))))))))))

(declare-fun b!1671555 () Bool)

(assert (=> b!1671555 (= e!1071154 (not (isEmpty!11478 (_1!10473 lt!631164))))))

(assert (= (and d!505641 c!271992) b!1671551))

(assert (= (and d!505641 (not c!271992)) b!1671553))

(assert (= (and b!1671551 res!749628) b!1671555))

(assert (= (and d!505641 res!749629) b!1671552))

(assert (= (and b!1671552 res!749627) b!1671554))

(declare-fun m!2038453 () Bool)

(assert (=> d!505641 m!2038453))

(assert (=> d!505641 m!2038051))

(assert (=> d!505641 m!2038051))

(declare-fun m!2038455 () Bool)

(assert (=> d!505641 m!2038455))

(declare-fun m!2038457 () Bool)

(assert (=> b!1671552 m!2038457))

(assert (=> b!1671552 m!2038051))

(declare-fun m!2038459 () Bool)

(assert (=> b!1671552 m!2038459))

(assert (=> b!1671552 m!2038459))

(declare-fun m!2038461 () Bool)

(assert (=> b!1671552 m!2038461))

(declare-fun m!2038463 () Bool)

(assert (=> b!1671555 m!2038463))

(declare-fun m!2038465 () Bool)

(assert (=> b!1671551 m!2038465))

(assert (=> b!1671551 m!2038051))

(declare-fun m!2038467 () Bool)

(assert (=> b!1671551 m!2038467))

(declare-fun m!2038469 () Bool)

(assert (=> b!1671554 m!2038469))

(assert (=> b!1671554 m!2038051))

(assert (=> b!1671554 m!2038459))

(assert (=> b!1671554 m!2038459))

(assert (=> b!1671554 m!2038461))

(assert (=> d!505545 d!505641))

(declare-fun d!505643 () Bool)

(declare-fun lt!631165 () BalanceConc!12216)

(assert (=> d!505643 (= (list!7381 lt!631165) (printList!986 thiss!17113 (list!7382 (seqFromList!2226 (t!152641 tokens!457)))))))

(assert (=> d!505643 (= lt!631165 (printTailRec!924 thiss!17113 (seqFromList!2226 (t!152641 tokens!457)) 0 (BalanceConc!12217 Empty!6136)))))

(assert (=> d!505643 (= (print!1404 thiss!17113 (seqFromList!2226 (t!152641 tokens!457))) lt!631165)))

(declare-fun bs!398145 () Bool)

(assert (= bs!398145 d!505643))

(declare-fun m!2038471 () Bool)

(assert (=> bs!398145 m!2038471))

(assert (=> bs!398145 m!2037063))

(declare-fun m!2038473 () Bool)

(assert (=> bs!398145 m!2038473))

(assert (=> bs!398145 m!2038473))

(declare-fun m!2038475 () Bool)

(assert (=> bs!398145 m!2038475))

(assert (=> bs!398145 m!2037063))

(declare-fun m!2038477 () Bool)

(assert (=> bs!398145 m!2038477))

(assert (=> d!505545 d!505643))

(assert (=> d!505545 d!505423))

(declare-fun d!505645 () Bool)

(assert (=> d!505645 (= (list!7382 (_1!10473 (lex!1357 thiss!17113 rules!1846 (print!1404 thiss!17113 (seqFromList!2226 (t!152641 tokens!457)))))) (list!7386 (c!271873 (_1!10473 (lex!1357 thiss!17113 rules!1846 (print!1404 thiss!17113 (seqFromList!2226 (t!152641 tokens!457))))))))))

(declare-fun bs!398146 () Bool)

(assert (= bs!398146 d!505645))

(declare-fun m!2038479 () Bool)

(assert (=> bs!398146 m!2038479))

(assert (=> d!505545 d!505645))

(declare-fun lt!631168 () Bool)

(declare-fun d!505647 () Bool)

(assert (=> d!505647 (= lt!631168 (isEmpty!11487 (list!7381 (_2!10473 (lex!1357 thiss!17113 rules!1846 (print!1404 thiss!17113 (singletonSeq!1756 (h!23821 tokens!457))))))))))

(declare-fun isEmpty!11492 (Conc!6136) Bool)

(assert (=> d!505647 (= lt!631168 (isEmpty!11492 (c!271871 (_2!10473 (lex!1357 thiss!17113 rules!1846 (print!1404 thiss!17113 (singletonSeq!1756 (h!23821 tokens!457))))))))))

(assert (=> d!505647 (= (isEmpty!11482 (_2!10473 (lex!1357 thiss!17113 rules!1846 (print!1404 thiss!17113 (singletonSeq!1756 (h!23821 tokens!457)))))) lt!631168)))

(declare-fun bs!398147 () Bool)

(assert (= bs!398147 d!505647))

(declare-fun m!2038481 () Bool)

(assert (=> bs!398147 m!2038481))

(assert (=> bs!398147 m!2038481))

(declare-fun m!2038483 () Bool)

(assert (=> bs!398147 m!2038483))

(declare-fun m!2038485 () Bool)

(assert (=> bs!398147 m!2038485))

(assert (=> b!1670916 d!505647))

(declare-fun d!505649 () Bool)

(declare-fun e!1071158 () Bool)

(assert (=> d!505649 e!1071158))

(declare-fun res!749632 () Bool)

(assert (=> d!505649 (=> (not res!749632) (not e!1071158))))

(declare-fun e!1071156 () Bool)

(assert (=> d!505649 (= res!749632 e!1071156)))

(declare-fun c!271993 () Bool)

(declare-fun lt!631169 () tuple2!18142)

(assert (=> d!505649 (= c!271993 (> (size!14655 (_1!10473 lt!631169)) 0))))

(assert (=> d!505649 (= lt!631169 (lexTailRecV2!621 thiss!17113 rules!1846 (print!1404 thiss!17113 (singletonSeq!1756 (h!23821 tokens!457))) (BalanceConc!12217 Empty!6136) (print!1404 thiss!17113 (singletonSeq!1756 (h!23821 tokens!457))) (BalanceConc!12219 Empty!6137)))))

(assert (=> d!505649 (= (lex!1357 thiss!17113 rules!1846 (print!1404 thiss!17113 (singletonSeq!1756 (h!23821 tokens!457)))) lt!631169)))

(declare-fun b!1671556 () Bool)

(declare-fun e!1071157 () Bool)

(assert (=> b!1671556 (= e!1071156 e!1071157)))

(declare-fun res!749631 () Bool)

(assert (=> b!1671556 (= res!749631 (< (size!14656 (_2!10473 lt!631169)) (size!14656 (print!1404 thiss!17113 (singletonSeq!1756 (h!23821 tokens!457))))))))

(assert (=> b!1671556 (=> (not res!749631) (not e!1071157))))

(declare-fun b!1671557 () Bool)

(declare-fun res!749630 () Bool)

(assert (=> b!1671557 (=> (not res!749630) (not e!1071158))))

(assert (=> b!1671557 (= res!749630 (= (list!7382 (_1!10473 lt!631169)) (_1!10476 (lexList!898 thiss!17113 rules!1846 (list!7381 (print!1404 thiss!17113 (singletonSeq!1756 (h!23821 tokens!457))))))))))

(declare-fun b!1671558 () Bool)

(assert (=> b!1671558 (= e!1071156 (= (_2!10473 lt!631169) (print!1404 thiss!17113 (singletonSeq!1756 (h!23821 tokens!457)))))))

(declare-fun b!1671559 () Bool)

(assert (=> b!1671559 (= e!1071158 (= (list!7381 (_2!10473 lt!631169)) (_2!10476 (lexList!898 thiss!17113 rules!1846 (list!7381 (print!1404 thiss!17113 (singletonSeq!1756 (h!23821 tokens!457))))))))))

(declare-fun b!1671560 () Bool)

(assert (=> b!1671560 (= e!1071157 (not (isEmpty!11478 (_1!10473 lt!631169))))))

(assert (= (and d!505649 c!271993) b!1671556))

(assert (= (and d!505649 (not c!271993)) b!1671558))

(assert (= (and b!1671556 res!749631) b!1671560))

(assert (= (and d!505649 res!749632) b!1671557))

(assert (= (and b!1671557 res!749630) b!1671559))

(declare-fun m!2038487 () Bool)

(assert (=> d!505649 m!2038487))

(assert (=> d!505649 m!2037221))

(assert (=> d!505649 m!2037221))

(declare-fun m!2038489 () Bool)

(assert (=> d!505649 m!2038489))

(declare-fun m!2038491 () Bool)

(assert (=> b!1671557 m!2038491))

(assert (=> b!1671557 m!2037221))

(declare-fun m!2038493 () Bool)

(assert (=> b!1671557 m!2038493))

(assert (=> b!1671557 m!2038493))

(declare-fun m!2038495 () Bool)

(assert (=> b!1671557 m!2038495))

(declare-fun m!2038497 () Bool)

(assert (=> b!1671560 m!2038497))

(declare-fun m!2038499 () Bool)

(assert (=> b!1671556 m!2038499))

(assert (=> b!1671556 m!2037221))

(declare-fun m!2038501 () Bool)

(assert (=> b!1671556 m!2038501))

(declare-fun m!2038503 () Bool)

(assert (=> b!1671559 m!2038503))

(assert (=> b!1671559 m!2037221))

(assert (=> b!1671559 m!2038493))

(assert (=> b!1671559 m!2038493))

(assert (=> b!1671559 m!2038495))

(assert (=> b!1670916 d!505649))

(declare-fun d!505651 () Bool)

(declare-fun lt!631170 () BalanceConc!12216)

(assert (=> d!505651 (= (list!7381 lt!631170) (printList!986 thiss!17113 (list!7382 (singletonSeq!1756 (h!23821 tokens!457)))))))

(assert (=> d!505651 (= lt!631170 (printTailRec!924 thiss!17113 (singletonSeq!1756 (h!23821 tokens!457)) 0 (BalanceConc!12217 Empty!6136)))))

(assert (=> d!505651 (= (print!1404 thiss!17113 (singletonSeq!1756 (h!23821 tokens!457))) lt!631170)))

(declare-fun bs!398148 () Bool)

(assert (= bs!398148 d!505651))

(declare-fun m!2038505 () Bool)

(assert (=> bs!398148 m!2038505))

(assert (=> bs!398148 m!2037089))

(assert (=> bs!398148 m!2037227))

(assert (=> bs!398148 m!2037227))

(declare-fun m!2038507 () Bool)

(assert (=> bs!398148 m!2038507))

(assert (=> bs!398148 m!2037089))

(declare-fun m!2038509 () Bool)

(assert (=> bs!398148 m!2038509))

(assert (=> b!1670916 d!505651))

(assert (=> b!1670916 d!505517))

(declare-fun d!505653 () Bool)

(declare-fun c!271994 () Bool)

(assert (=> d!505653 (= c!271994 (isEmpty!11487 (tail!2496 (++!5024 lt!630482 lt!630485))))))

(declare-fun e!1071159 () Bool)

(assert (=> d!505653 (= (prefixMatch!485 (derivativeStep!1131 lt!630488 (head!3736 (++!5024 lt!630482 lt!630485))) (tail!2496 (++!5024 lt!630482 lt!630485))) e!1071159)))

(declare-fun b!1671561 () Bool)

(assert (=> b!1671561 (= e!1071159 (not (lostCause!479 (derivativeStep!1131 lt!630488 (head!3736 (++!5024 lt!630482 lt!630485))))))))

(declare-fun b!1671562 () Bool)

(assert (=> b!1671562 (= e!1071159 (prefixMatch!485 (derivativeStep!1131 (derivativeStep!1131 lt!630488 (head!3736 (++!5024 lt!630482 lt!630485))) (head!3736 (tail!2496 (++!5024 lt!630482 lt!630485)))) (tail!2496 (tail!2496 (++!5024 lt!630482 lt!630485)))))))

(assert (= (and d!505653 c!271994) b!1671561))

(assert (= (and d!505653 (not c!271994)) b!1671562))

(assert (=> d!505653 m!2037957))

(declare-fun m!2038511 () Bool)

(assert (=> d!505653 m!2038511))

(assert (=> b!1671561 m!2037955))

(declare-fun m!2038513 () Bool)

(assert (=> b!1671561 m!2038513))

(assert (=> b!1671562 m!2037957))

(declare-fun m!2038515 () Bool)

(assert (=> b!1671562 m!2038515))

(assert (=> b!1671562 m!2037955))

(assert (=> b!1671562 m!2038515))

(declare-fun m!2038517 () Bool)

(assert (=> b!1671562 m!2038517))

(assert (=> b!1671562 m!2037957))

(declare-fun m!2038519 () Bool)

(assert (=> b!1671562 m!2038519))

(assert (=> b!1671562 m!2038517))

(assert (=> b!1671562 m!2038519))

(declare-fun m!2038521 () Bool)

(assert (=> b!1671562 m!2038521))

(assert (=> b!1671242 d!505653))

(declare-fun b!1671583 () Bool)

(declare-fun e!1071174 () Regex!4572)

(declare-fun call!106605 () Regex!4572)

(assert (=> b!1671583 (= e!1071174 (Union!4572 (Concat!7907 call!106605 (regTwo!9656 lt!630488)) EmptyLang!4572))))

(declare-fun b!1671584 () Bool)

(declare-fun e!1071171 () Regex!4572)

(declare-fun e!1071170 () Regex!4572)

(assert (=> b!1671584 (= e!1071171 e!1071170)))

(declare-fun c!272009 () Bool)

(assert (=> b!1671584 (= c!272009 (is-ElementMatch!4572 lt!630488))))

(declare-fun bm!106600 () Bool)

(declare-fun call!106606 () Regex!4572)

(assert (=> bm!106600 (= call!106605 call!106606)))

(declare-fun bm!106601 () Bool)

(declare-fun call!106608 () Regex!4572)

(assert (=> bm!106601 (= call!106606 call!106608)))

(declare-fun b!1671585 () Bool)

(declare-fun e!1071173 () Regex!4572)

(declare-fun e!1071172 () Regex!4572)

(assert (=> b!1671585 (= e!1071173 e!1071172)))

(declare-fun c!272006 () Bool)

(assert (=> b!1671585 (= c!272006 (is-Star!4572 lt!630488))))

(declare-fun b!1671586 () Bool)

(assert (=> b!1671586 (= e!1071171 EmptyLang!4572)))

(declare-fun b!1671587 () Bool)

(assert (=> b!1671587 (= e!1071170 (ite (= (head!3736 (++!5024 lt!630482 lt!630485)) (c!271872 lt!630488)) EmptyExpr!4572 EmptyLang!4572))))

(declare-fun bm!106602 () Bool)

(declare-fun c!272007 () Bool)

(declare-fun c!272008 () Bool)

(assert (=> bm!106602 (= call!106608 (derivativeStep!1131 (ite c!272008 (regOne!9657 lt!630488) (ite c!272006 (reg!4901 lt!630488) (ite c!272007 (regTwo!9656 lt!630488) (regOne!9656 lt!630488)))) (head!3736 (++!5024 lt!630482 lt!630485))))))

(declare-fun d!505655 () Bool)

(declare-fun lt!631173 () Regex!4572)

(assert (=> d!505655 (validRegex!1833 lt!631173)))

(assert (=> d!505655 (= lt!631173 e!1071171)))

(declare-fun c!272005 () Bool)

(assert (=> d!505655 (= c!272005 (or (is-EmptyExpr!4572 lt!630488) (is-EmptyLang!4572 lt!630488)))))

(assert (=> d!505655 (validRegex!1833 lt!630488)))

(assert (=> d!505655 (= (derivativeStep!1131 lt!630488 (head!3736 (++!5024 lt!630482 lt!630485))) lt!631173)))

(declare-fun b!1671588 () Bool)

(declare-fun nullable!1362 (Regex!4572) Bool)

(assert (=> b!1671588 (= c!272007 (nullable!1362 (regOne!9656 lt!630488)))))

(assert (=> b!1671588 (= e!1071172 e!1071174)))

(declare-fun b!1671589 () Bool)

(assert (=> b!1671589 (= c!272008 (is-Union!4572 lt!630488))))

(assert (=> b!1671589 (= e!1071170 e!1071173)))

(declare-fun bm!106603 () Bool)

(declare-fun call!106607 () Regex!4572)

(assert (=> bm!106603 (= call!106607 (derivativeStep!1131 (ite c!272008 (regTwo!9657 lt!630488) (regOne!9656 lt!630488)) (head!3736 (++!5024 lt!630482 lt!630485))))))

(declare-fun b!1671590 () Bool)

(assert (=> b!1671590 (= e!1071174 (Union!4572 (Concat!7907 call!106607 (regTwo!9656 lt!630488)) call!106605))))

(declare-fun b!1671591 () Bool)

(assert (=> b!1671591 (= e!1071173 (Union!4572 call!106608 call!106607))))

(declare-fun b!1671592 () Bool)

(assert (=> b!1671592 (= e!1071172 (Concat!7907 call!106606 lt!630488))))

(assert (= (and d!505655 c!272005) b!1671586))

(assert (= (and d!505655 (not c!272005)) b!1671584))

(assert (= (and b!1671584 c!272009) b!1671587))

(assert (= (and b!1671584 (not c!272009)) b!1671589))

(assert (= (and b!1671589 c!272008) b!1671591))

(assert (= (and b!1671589 (not c!272008)) b!1671585))

(assert (= (and b!1671585 c!272006) b!1671592))

(assert (= (and b!1671585 (not c!272006)) b!1671588))

(assert (= (and b!1671588 c!272007) b!1671590))

(assert (= (and b!1671588 (not c!272007)) b!1671583))

(assert (= (or b!1671590 b!1671583) bm!106600))

(assert (= (or b!1671592 bm!106600) bm!106601))

(assert (= (or b!1671591 bm!106601) bm!106602))

(assert (= (or b!1671591 b!1671590) bm!106603))

(assert (=> bm!106602 m!2037953))

(declare-fun m!2038523 () Bool)

(assert (=> bm!106602 m!2038523))

(declare-fun m!2038525 () Bool)

(assert (=> d!505655 m!2038525))

(assert (=> d!505655 m!2037351))

(declare-fun m!2038527 () Bool)

(assert (=> b!1671588 m!2038527))

(assert (=> bm!106603 m!2037953))

(declare-fun m!2038529 () Bool)

(assert (=> bm!106603 m!2038529))

(assert (=> b!1671242 d!505655))

(declare-fun d!505657 () Bool)

(assert (=> d!505657 (= (head!3736 (++!5024 lt!630482 lt!630485)) (h!23819 (++!5024 lt!630482 lt!630485)))))

(assert (=> b!1671242 d!505657))

(declare-fun d!505659 () Bool)

(assert (=> d!505659 (= (tail!2496 (++!5024 lt!630482 lt!630485)) (t!152639 (++!5024 lt!630482 lt!630485)))))

(assert (=> b!1671242 d!505659))

(declare-fun d!505661 () Bool)

(assert (=> d!505661 (= (isEmpty!11485 lt!630489) (not (is-Some!3538 lt!630489)))))

(assert (=> d!505437 d!505661))

(declare-fun d!505663 () Bool)

(declare-fun lt!631176 () C!9318)

(assert (=> d!505663 (= lt!631176 (head!3736 (list!7381 lt!631044)))))

(declare-fun head!3742 (Conc!6136) C!9318)

(assert (=> d!505663 (= lt!631176 (head!3742 (c!271871 lt!631044)))))

(assert (=> d!505663 (not (isEmpty!11482 lt!631044))))

(assert (=> d!505663 (= (head!3739 lt!631044) lt!631176)))

(declare-fun bs!398149 () Bool)

(assert (= bs!398149 d!505663))

(assert (=> bs!398149 m!2038083))

(assert (=> bs!398149 m!2038083))

(assert (=> bs!398149 m!2038099))

(declare-fun m!2038531 () Bool)

(assert (=> bs!398149 m!2038531))

(declare-fun m!2038533 () Bool)

(assert (=> bs!398149 m!2038533))

(assert (=> b!1671288 d!505663))

(declare-fun d!505665 () Bool)

(assert (=> d!505665 (= (isDefined!2892 (maxPrefix!1433 thiss!17113 rules!1846 (originalCharacters!4058 (h!23821 (t!152641 tokens!457))))) (not (isEmpty!11485 (maxPrefix!1433 thiss!17113 rules!1846 (originalCharacters!4058 (h!23821 (t!152641 tokens!457)))))))))

(declare-fun bs!398150 () Bool)

(assert (= bs!398150 d!505665))

(assert (=> bs!398150 m!2038079))

(declare-fun m!2038535 () Bool)

(assert (=> bs!398150 m!2038535))

(assert (=> b!1671288 d!505665))

(declare-fun b!1671621 () Bool)

(declare-fun e!1071193 () Bool)

(declare-fun lt!631179 () Bool)

(declare-fun call!106611 () Bool)

(assert (=> b!1671621 (= e!1071193 (= lt!631179 call!106611))))

(declare-fun b!1671622 () Bool)

(declare-fun e!1071191 () Bool)

(assert (=> b!1671622 (= e!1071191 (not lt!631179))))

(declare-fun b!1671623 () Bool)

(declare-fun e!1071195 () Bool)

(assert (=> b!1671623 (= e!1071195 (matchR!2063 (derivativeStep!1131 (regex!3244 (rule!5134 (h!23821 (t!152641 tokens!457)))) (head!3736 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))) (tail!2496 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))))))

(declare-fun b!1671624 () Bool)

(declare-fun res!749653 () Bool)

(declare-fun e!1071192 () Bool)

(assert (=> b!1671624 (=> res!749653 e!1071192)))

(assert (=> b!1671624 (= res!749653 (not (is-ElementMatch!4572 (regex!3244 (rule!5134 (h!23821 (t!152641 tokens!457)))))))))

(assert (=> b!1671624 (= e!1071191 e!1071192)))

(declare-fun b!1671625 () Bool)

(declare-fun res!749649 () Bool)

(declare-fun e!1071190 () Bool)

(assert (=> b!1671625 (=> (not res!749649) (not e!1071190))))

(assert (=> b!1671625 (= res!749649 (isEmpty!11487 (tail!2496 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))))))

(declare-fun b!1671626 () Bool)

(declare-fun res!749655 () Bool)

(declare-fun e!1071189 () Bool)

(assert (=> b!1671626 (=> res!749655 e!1071189)))

(assert (=> b!1671626 (= res!749655 (not (isEmpty!11487 (tail!2496 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457))))))))))

(declare-fun d!505667 () Bool)

(assert (=> d!505667 e!1071193))

(declare-fun c!272016 () Bool)

(assert (=> d!505667 (= c!272016 (is-EmptyExpr!4572 (regex!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))))))

(assert (=> d!505667 (= lt!631179 e!1071195)))

(declare-fun c!272017 () Bool)

(assert (=> d!505667 (= c!272017 (isEmpty!11487 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457))))))))

(assert (=> d!505667 (validRegex!1833 (regex!3244 (rule!5134 (h!23821 (t!152641 tokens!457)))))))

(assert (=> d!505667 (= (matchR!2063 (regex!3244 (rule!5134 (h!23821 (t!152641 tokens!457)))) (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457))))) lt!631179)))

(declare-fun b!1671627 () Bool)

(declare-fun res!749654 () Bool)

(assert (=> b!1671627 (=> (not res!749654) (not e!1071190))))

(assert (=> b!1671627 (= res!749654 (not call!106611))))

(declare-fun b!1671628 () Bool)

(assert (=> b!1671628 (= e!1071190 (= (head!3736 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457))))) (c!271872 (regex!3244 (rule!5134 (h!23821 (t!152641 tokens!457)))))))))

(declare-fun b!1671629 () Bool)

(declare-fun e!1071194 () Bool)

(assert (=> b!1671629 (= e!1071194 e!1071189)))

(declare-fun res!749650 () Bool)

(assert (=> b!1671629 (=> res!749650 e!1071189)))

(assert (=> b!1671629 (= res!749650 call!106611)))

(declare-fun bm!106606 () Bool)

(assert (=> bm!106606 (= call!106611 (isEmpty!11487 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457))))))))

(declare-fun b!1671630 () Bool)

(assert (=> b!1671630 (= e!1071192 e!1071194)))

(declare-fun res!749651 () Bool)

(assert (=> b!1671630 (=> (not res!749651) (not e!1071194))))

(assert (=> b!1671630 (= res!749651 (not lt!631179))))

(declare-fun b!1671631 () Bool)

(assert (=> b!1671631 (= e!1071189 (not (= (head!3736 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457))))) (c!271872 (regex!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))))))))

(declare-fun b!1671632 () Bool)

(assert (=> b!1671632 (= e!1071195 (nullable!1362 (regex!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))))))

(declare-fun b!1671633 () Bool)

(assert (=> b!1671633 (= e!1071193 e!1071191)))

(declare-fun c!272018 () Bool)

(assert (=> b!1671633 (= c!272018 (is-EmptyLang!4572 (regex!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))))))

(declare-fun b!1671634 () Bool)

(declare-fun res!749652 () Bool)

(assert (=> b!1671634 (=> res!749652 e!1071192)))

(assert (=> b!1671634 (= res!749652 e!1071190)))

(declare-fun res!749656 () Bool)

(assert (=> b!1671634 (=> (not res!749656) (not e!1071190))))

(assert (=> b!1671634 (= res!749656 lt!631179)))

(assert (= (and d!505667 c!272017) b!1671632))

(assert (= (and d!505667 (not c!272017)) b!1671623))

(assert (= (and d!505667 c!272016) b!1671621))

(assert (= (and d!505667 (not c!272016)) b!1671633))

(assert (= (and b!1671633 c!272018) b!1671622))

(assert (= (and b!1671633 (not c!272018)) b!1671624))

(assert (= (and b!1671624 (not res!749653)) b!1671634))

(assert (= (and b!1671634 res!749656) b!1671627))

(assert (= (and b!1671627 res!749654) b!1671625))

(assert (= (and b!1671625 res!749649) b!1671628))

(assert (= (and b!1671634 (not res!749652)) b!1671630))

(assert (= (and b!1671630 res!749651) b!1671629))

(assert (= (and b!1671629 (not res!749650)) b!1671626))

(assert (= (and b!1671626 (not res!749655)) b!1671631))

(assert (= (or b!1671621 b!1671627 b!1671629) bm!106606))

(assert (=> b!1671628 m!2037359))

(declare-fun m!2038537 () Bool)

(assert (=> b!1671628 m!2038537))

(declare-fun m!2038539 () Bool)

(assert (=> b!1671632 m!2038539))

(assert (=> b!1671625 m!2037359))

(declare-fun m!2038541 () Bool)

(assert (=> b!1671625 m!2038541))

(assert (=> b!1671625 m!2038541))

(declare-fun m!2038543 () Bool)

(assert (=> b!1671625 m!2038543))

(assert (=> d!505667 m!2037359))

(declare-fun m!2038545 () Bool)

(assert (=> d!505667 m!2038545))

(declare-fun m!2038547 () Bool)

(assert (=> d!505667 m!2038547))

(assert (=> b!1671631 m!2037359))

(assert (=> b!1671631 m!2038537))

(assert (=> bm!106606 m!2037359))

(assert (=> bm!106606 m!2038545))

(assert (=> b!1671623 m!2037359))

(assert (=> b!1671623 m!2038537))

(assert (=> b!1671623 m!2038537))

(declare-fun m!2038549 () Bool)

(assert (=> b!1671623 m!2038549))

(assert (=> b!1671623 m!2037359))

(assert (=> b!1671623 m!2038541))

(assert (=> b!1671623 m!2038549))

(assert (=> b!1671623 m!2038541))

(declare-fun m!2038551 () Bool)

(assert (=> b!1671623 m!2038551))

(assert (=> b!1671626 m!2037359))

(assert (=> b!1671626 m!2038541))

(assert (=> b!1671626 m!2038541))

(assert (=> b!1671626 m!2038543))

(assert (=> b!1671288 d!505667))

(declare-fun b!1671756 () Bool)

(declare-fun e!1071258 () Unit!31326)

(declare-fun Unit!31369 () Unit!31326)

(assert (=> b!1671756 (= e!1071258 Unit!31369)))

(declare-fun b!1671757 () Bool)

(assert (=> b!1671757 false))

(declare-fun lt!631396 () Unit!31326)

(declare-fun lt!631419 () Unit!31326)

(assert (=> b!1671757 (= lt!631396 lt!631419)))

(declare-fun lt!631413 () List!18488)

(assert (=> b!1671757 (not (matchR!2063 (regex!3244 (rule!5134 (h!23821 (t!152641 tokens!457)))) lt!631413))))

(declare-fun lt!631405 () Token!6054)

(declare-fun lt!631417 () List!18488)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!113 (LexerInterface!2873 List!18489 Rule!6288 List!18488 List!18488 Rule!6288) Unit!31326)

(assert (=> b!1671757 (= lt!631419 (lemmaMaxPrefNoSmallerRuleMatches!113 thiss!17113 rules!1846 (rule!5134 lt!631405) lt!631413 lt!631417 (rule!5134 (h!23821 (t!152641 tokens!457)))))))

(assert (=> b!1671757 (= lt!631413 (list!7381 (charsOf!1893 lt!631405)))))

(declare-fun e!1071256 () Unit!31326)

(declare-fun Unit!31370 () Unit!31326)

(assert (=> b!1671757 (= e!1071256 Unit!31370)))

(declare-fun b!1671758 () Bool)

(assert (=> b!1671758 false))

(declare-fun lt!631420 () Unit!31326)

(declare-fun lt!631381 () Unit!31326)

(assert (=> b!1671758 (= lt!631420 lt!631381)))

(assert (=> b!1671758 (= (rule!5134 lt!631405) (rule!5134 (h!23821 (t!152641 tokens!457))))))

(declare-fun lemmaSameIndexThenSameElement!89 (List!18489 Rule!6288 Rule!6288) Unit!31326)

(assert (=> b!1671758 (= lt!631381 (lemmaSameIndexThenSameElement!89 rules!1846 (rule!5134 lt!631405) (rule!5134 (h!23821 (t!152641 tokens!457)))))))

(declare-fun e!1071257 () Unit!31326)

(declare-fun Unit!31371 () Unit!31326)

(assert (=> b!1671758 (= e!1071257 Unit!31371)))

(declare-fun b!1671759 () Bool)

(declare-fun e!1071254 () Unit!31326)

(declare-fun Unit!31372 () Unit!31326)

(assert (=> b!1671759 (= e!1071254 Unit!31372)))

(declare-fun b!1671760 () Bool)

(declare-fun e!1071260 () Unit!31326)

(declare-fun Unit!31373 () Unit!31326)

(assert (=> b!1671760 (= e!1071260 Unit!31373)))

(declare-fun b!1671761 () Bool)

(declare-fun Unit!31374 () Unit!31326)

(assert (=> b!1671761 (= e!1071258 Unit!31374)))

(declare-fun lt!631389 () List!18488)

(assert (=> b!1671761 (= lt!631389 (list!7381 (charsOf!1893 lt!631405)))))

(declare-fun lt!631421 () List!18488)

(assert (=> b!1671761 (= lt!631421 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))))

(declare-fun lt!631397 () Unit!31326)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!163 (LexerInterface!2873 List!18489 Rule!6288 List!18488 List!18488 List!18488 Rule!6288) Unit!31326)

(assert (=> b!1671761 (= lt!631397 (lemmaMaxPrefixOutputsMaxPrefix!163 thiss!17113 rules!1846 (rule!5134 lt!631405) lt!631389 lt!631417 lt!631421 (rule!5134 (h!23821 (t!152641 tokens!457)))))))

(assert (=> b!1671761 (not (matchR!2063 (regex!3244 (rule!5134 (h!23821 (t!152641 tokens!457)))) lt!631421))))

(declare-fun lt!631376 () Unit!31326)

(assert (=> b!1671761 (= lt!631376 lt!631397)))

(assert (=> b!1671761 false))

(declare-fun d!505669 () Bool)

(assert (=> d!505669 (= (maxPrefix!1433 thiss!17113 rules!1846 (++!5024 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) (list!7381 lt!631044))) (Some!3538 (tuple2!18141 (h!23821 (t!152641 tokens!457)) (list!7381 lt!631044))))))

(declare-fun lt!631373 () Unit!31326)

(declare-fun Unit!31375 () Unit!31326)

(assert (=> d!505669 (= lt!631373 Unit!31375)))

(declare-fun lt!631393 () Unit!31326)

(assert (=> d!505669 (= lt!631393 e!1071260)))

(declare-fun c!272055 () Bool)

(assert (=> d!505669 (= c!272055 (not (= (rule!5134 lt!631405) (rule!5134 (h!23821 (t!152641 tokens!457))))))))

(declare-fun lt!631379 () Unit!31326)

(declare-fun lt!631410 () Unit!31326)

(assert (=> d!505669 (= lt!631379 lt!631410)))

(declare-fun lt!631418 () List!18488)

(assert (=> d!505669 (= (list!7381 lt!631044) lt!631418)))

(declare-fun lemmaSamePrefixThenSameSuffix!695 (List!18488 List!18488 List!18488 List!18488 List!18488) Unit!31326)

(assert (=> d!505669 (= lt!631410 (lemmaSamePrefixThenSameSuffix!695 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) (list!7381 lt!631044) (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) lt!631418 lt!631417))))

(declare-fun lt!631366 () Unit!31326)

(declare-fun lt!631426 () Unit!31326)

(assert (=> d!505669 (= lt!631366 lt!631426)))

(declare-fun lt!631383 () List!18488)

(declare-fun lt!631370 () List!18488)

(assert (=> d!505669 (= lt!631383 lt!631370)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!196 (List!18488 List!18488 List!18488) Unit!31326)

(assert (=> d!505669 (= lt!631426 (lemmaIsPrefixSameLengthThenSameList!196 lt!631383 lt!631370 lt!631417))))

(assert (=> d!505669 (= lt!631370 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))))

(assert (=> d!505669 (= lt!631383 (list!7381 (charsOf!1893 lt!631405)))))

(declare-fun lt!631412 () Unit!31326)

(assert (=> d!505669 (= lt!631412 e!1071258)))

(declare-fun c!272053 () Bool)

(assert (=> d!505669 (= c!272053 (< (size!14656 (charsOf!1893 lt!631405)) (size!14656 (charsOf!1893 (h!23821 (t!152641 tokens!457))))))))

(declare-fun lt!631363 () Unit!31326)

(assert (=> d!505669 (= lt!631363 e!1071254)))

(declare-fun c!272052 () Bool)

(assert (=> d!505669 (= c!272052 (> (size!14656 (charsOf!1893 lt!631405)) (size!14656 (charsOf!1893 (h!23821 (t!152641 tokens!457))))))))

(declare-fun lt!631390 () Unit!31326)

(declare-fun lt!631408 () Unit!31326)

(assert (=> d!505669 (= lt!631390 lt!631408)))

(assert (=> d!505669 (matchR!2063 (rulesRegex!626 thiss!17113 rules!1846) (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))))

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!73 (LexerInterface!2873 List!18489 List!18488 Token!6054 Rule!6288 List!18488) Unit!31326)

(assert (=> d!505669 (= lt!631408 (lemmaMaxPrefixThenMatchesRulesRegex!73 thiss!17113 rules!1846 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) (h!23821 (t!152641 tokens!457)) (rule!5134 (h!23821 (t!152641 tokens!457))) Nil!18418))))

(declare-fun lt!631359 () Unit!31326)

(declare-fun lt!631362 () Unit!31326)

(assert (=> d!505669 (= lt!631359 lt!631362)))

(declare-fun lt!631423 () List!18488)

(assert (=> d!505669 (= lt!631418 lt!631423)))

(declare-fun lt!631395 () List!18488)

(declare-fun lt!631399 () List!18488)

(assert (=> d!505669 (= lt!631362 (lemmaSamePrefixThenSameSuffix!695 lt!631395 lt!631418 lt!631399 lt!631423 lt!631417))))

(declare-fun getSuffix!743 (List!18488 List!18488) List!18488)

(assert (=> d!505669 (= lt!631423 (getSuffix!743 lt!631417 (list!7381 (charsOf!1893 lt!631405))))))

(assert (=> d!505669 (= lt!631399 (list!7381 (charsOf!1893 lt!631405)))))

(assert (=> d!505669 (= lt!631395 (list!7381 (charsOf!1893 lt!631405)))))

(declare-fun lt!631377 () Unit!31326)

(declare-fun lt!631369 () Unit!31326)

(assert (=> d!505669 (= lt!631377 lt!631369)))

(declare-fun lt!631425 () List!18488)

(assert (=> d!505669 (= (maxPrefixOneRule!836 thiss!17113 (rule!5134 lt!631405) lt!631417) (Some!3538 (tuple2!18141 (Token!6055 (apply!4976 (transformation!3244 (rule!5134 lt!631405)) (seqFromList!2225 lt!631425)) (rule!5134 lt!631405) (size!14657 lt!631425) lt!631425) lt!631418)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!262 (LexerInterface!2873 List!18489 List!18488 List!18488 List!18488 Rule!6288) Unit!31326)

(assert (=> d!505669 (= lt!631369 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!262 thiss!17113 rules!1846 lt!631425 lt!631417 lt!631418 (rule!5134 lt!631405)))))

(assert (=> d!505669 (= lt!631425 (list!7381 (charsOf!1893 lt!631405)))))

(declare-fun lt!631360 () Unit!31326)

(declare-fun lemmaCharactersSize!368 (Token!6054) Unit!31326)

(assert (=> d!505669 (= lt!631360 (lemmaCharactersSize!368 lt!631405))))

(declare-fun lt!631398 () Unit!31326)

(declare-fun lemmaEqSameImage!221 (TokenValueInjection!6328 BalanceConc!12216 BalanceConc!12216) Unit!31326)

(assert (=> d!505669 (= lt!631398 (lemmaEqSameImage!221 (transformation!3244 (rule!5134 lt!631405)) (charsOf!1893 lt!631405) (seqFromList!2225 (originalCharacters!4058 lt!631405))))))

(declare-fun lt!631407 () Unit!31326)

(declare-fun lemmaSemiInverse!436 (TokenValueInjection!6328 BalanceConc!12216) Unit!31326)

(assert (=> d!505669 (= lt!631407 (lemmaSemiInverse!436 (transformation!3244 (rule!5134 lt!631405)) (charsOf!1893 lt!631405)))))

(declare-fun lt!631382 () Unit!31326)

(declare-fun lemmaInv!501 (TokenValueInjection!6328) Unit!31326)

(assert (=> d!505669 (= lt!631382 (lemmaInv!501 (transformation!3244 (rule!5134 lt!631405))))))

(declare-fun lt!631392 () Unit!31326)

(declare-fun lt!631422 () Unit!31326)

(assert (=> d!505669 (= lt!631392 lt!631422)))

(declare-fun lt!631374 () List!18488)

(assert (=> d!505669 (isPrefix!1502 lt!631374 (++!5024 lt!631374 lt!631418))))

(assert (=> d!505669 (= lt!631422 (lemmaConcatTwoListThenFirstIsPrefix!1023 lt!631374 lt!631418))))

(assert (=> d!505669 (= lt!631374 (list!7381 (charsOf!1893 lt!631405)))))

(declare-fun lt!631388 () Unit!31326)

(declare-fun lt!631409 () Unit!31326)

(assert (=> d!505669 (= lt!631388 lt!631409)))

(declare-fun e!1071259 () Bool)

(assert (=> d!505669 e!1071259))

(declare-fun res!749725 () Bool)

(assert (=> d!505669 (=> (not res!749725) (not e!1071259))))

(assert (=> d!505669 (= res!749725 (isDefined!2894 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!631405)))))))

(assert (=> d!505669 (= lt!631409 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!337 thiss!17113 rules!1846 lt!631417 lt!631405))))

(declare-fun lt!631411 () Option!3539)

(assert (=> d!505669 (= lt!631418 (_2!10472 (get!5396 lt!631411)))))

(assert (=> d!505669 (= lt!631405 (_1!10472 (get!5396 lt!631411)))))

(declare-fun lt!631394 () Unit!31326)

(assert (=> d!505669 (= lt!631394 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!435 thiss!17113 rules!1846 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) (list!7381 lt!631044)))))

(assert (=> d!505669 (= lt!631411 (maxPrefix!1433 thiss!17113 rules!1846 lt!631417))))

(declare-fun lt!631391 () Unit!31326)

(declare-fun lt!631358 () Unit!31326)

(assert (=> d!505669 (= lt!631391 lt!631358)))

(declare-fun lt!631402 () List!18488)

(assert (=> d!505669 (isPrefix!1502 lt!631402 (++!5024 lt!631402 (list!7381 lt!631044)))))

(assert (=> d!505669 (= lt!631358 (lemmaConcatTwoListThenFirstIsPrefix!1023 lt!631402 (list!7381 lt!631044)))))

(assert (=> d!505669 (= lt!631402 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))))

(assert (=> d!505669 (= lt!631417 (++!5024 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) (list!7381 lt!631044)))))

(assert (=> d!505669 (not (isEmpty!11479 rules!1846))))

(assert (=> d!505669 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!193 thiss!17113 rules!1846 (h!23821 (t!152641 tokens!457)) (rule!5134 (h!23821 (t!152641 tokens!457))) (list!7381 lt!631044)) lt!631373)))

(declare-fun b!1671762 () Bool)

(declare-fun Unit!31376 () Unit!31326)

(assert (=> b!1671762 (= e!1071260 Unit!31376)))

(declare-fun c!272050 () Bool)

(declare-fun getIndex!141 (List!18489 Rule!6288) Int)

(assert (=> b!1671762 (= c!272050 (< (getIndex!141 rules!1846 (rule!5134 (h!23821 (t!152641 tokens!457)))) (getIndex!141 rules!1846 (rule!5134 lt!631405))))))

(declare-fun lt!631372 () Unit!31326)

(assert (=> b!1671762 (= lt!631372 e!1071256)))

(declare-fun c!272051 () Bool)

(assert (=> b!1671762 (= c!272051 (< (getIndex!141 rules!1846 (rule!5134 lt!631405)) (getIndex!141 rules!1846 (rule!5134 (h!23821 (t!152641 tokens!457))))))))

(declare-fun lt!631385 () Unit!31326)

(declare-fun e!1071255 () Unit!31326)

(assert (=> b!1671762 (= lt!631385 e!1071255)))

(declare-fun c!272054 () Bool)

(assert (=> b!1671762 (= c!272054 (= (getIndex!141 rules!1846 (rule!5134 lt!631405)) (getIndex!141 rules!1846 (rule!5134 (h!23821 (t!152641 tokens!457))))))))

(declare-fun lt!631364 () Unit!31326)

(assert (=> b!1671762 (= lt!631364 e!1071257)))

(assert (=> b!1671762 false))

(declare-fun b!1671763 () Bool)

(declare-fun Unit!31377 () Unit!31326)

(assert (=> b!1671763 (= e!1071254 Unit!31377)))

(declare-fun lt!631384 () Unit!31326)

(assert (=> b!1671763 (= lt!631384 (lemmaMaxPrefixThenMatchesRulesRegex!73 thiss!17113 rules!1846 lt!631417 lt!631405 (rule!5134 lt!631405) lt!631418))))

(assert (=> b!1671763 (matchR!2063 (rulesRegex!626 thiss!17113 rules!1846) (list!7381 (charsOf!1893 lt!631405)))))

(declare-fun lt!631401 () Unit!31326)

(assert (=> b!1671763 (= lt!631401 lt!631384)))

(declare-fun lt!631414 () List!18488)

(assert (=> b!1671763 (= lt!631414 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))))

(declare-fun lt!631415 () List!18488)

(assert (=> b!1671763 (= lt!631415 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))))

(declare-fun lt!631386 () List!18488)

(assert (=> b!1671763 (= lt!631386 (getSuffix!743 lt!631417 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457))))))))

(declare-fun lt!631387 () Unit!31326)

(assert (=> b!1671763 (= lt!631387 (lemmaSamePrefixThenSameSuffix!695 lt!631414 (list!7381 lt!631044) lt!631415 lt!631386 lt!631417))))

(assert (=> b!1671763 (= (list!7381 lt!631044) lt!631386)))

(declare-fun lt!631361 () Unit!31326)

(assert (=> b!1671763 (= lt!631361 lt!631387)))

(declare-fun lt!631424 () List!18488)

(assert (=> b!1671763 (= lt!631424 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))))

(declare-fun lt!631357 () Unit!31326)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!186 (List!18488 List!18488) Unit!31326)

(assert (=> b!1671763 (= lt!631357 (lemmaAddHeadSuffixToPrefixStillPrefix!186 lt!631424 lt!631417))))

(assert (=> b!1671763 (isPrefix!1502 (++!5024 lt!631424 (Cons!18418 (head!3736 (getSuffix!743 lt!631417 lt!631424)) Nil!18418)) lt!631417)))

(declare-fun lt!631356 () Unit!31326)

(assert (=> b!1671763 (= lt!631356 lt!631357)))

(declare-fun lt!631400 () List!18488)

(assert (=> b!1671763 (= lt!631400 (list!7381 (charsOf!1893 lt!631405)))))

(declare-fun lt!631375 () List!18488)

(assert (=> b!1671763 (= lt!631375 (++!5024 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) (Cons!18418 (head!3736 (list!7381 lt!631044)) Nil!18418)))))

(declare-fun lt!631371 () Unit!31326)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!72 (List!18488 List!18488 List!18488) Unit!31326)

(assert (=> b!1671763 (= lt!631371 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!72 lt!631400 lt!631375 lt!631417))))

(assert (=> b!1671763 (isPrefix!1502 lt!631375 lt!631400)))

(declare-fun lt!631404 () Unit!31326)

(assert (=> b!1671763 (= lt!631404 lt!631371)))

(declare-fun lt!631365 () Regex!4572)

(assert (=> b!1671763 (= lt!631365 (rulesRegex!626 thiss!17113 rules!1846))))

(declare-fun lt!631406 () List!18488)

(assert (=> b!1671763 (= lt!631406 (++!5024 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) (Cons!18418 (head!3736 (list!7381 lt!631044)) Nil!18418)))))

(declare-fun lt!631367 () List!18488)

(assert (=> b!1671763 (= lt!631367 (list!7381 (charsOf!1893 lt!631405)))))

(declare-fun lt!631378 () Unit!31326)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!73 (Regex!4572 List!18488 List!18488) Unit!31326)

(assert (=> b!1671763 (= lt!631378 (lemmaNotPrefixMatchThenCannotMatchLonger!73 lt!631365 lt!631406 lt!631367))))

(assert (=> b!1671763 (not (matchR!2063 lt!631365 lt!631367))))

(declare-fun lt!631380 () Unit!31326)

(assert (=> b!1671763 (= lt!631380 lt!631378)))

(assert (=> b!1671763 false))

(declare-fun b!1671764 () Bool)

(declare-fun res!749726 () Bool)

(assert (=> b!1671764 (=> (not res!749726) (not e!1071259))))

(assert (=> b!1671764 (= res!749726 (matchR!2063 (regex!3244 (get!5395 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!631405))))) (list!7381 (charsOf!1893 lt!631405))))))

(declare-fun b!1671765 () Bool)

(assert (=> b!1671765 (= e!1071259 (= (rule!5134 lt!631405) (get!5395 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!631405))))))))

(declare-fun b!1671766 () Bool)

(declare-fun Unit!31378 () Unit!31326)

(assert (=> b!1671766 (= e!1071256 Unit!31378)))

(declare-fun b!1671767 () Bool)

(declare-fun Unit!31379 () Unit!31326)

(assert (=> b!1671767 (= e!1071257 Unit!31379)))

(declare-fun b!1671768 () Bool)

(assert (=> b!1671768 false))

(declare-fun lt!631368 () Unit!31326)

(declare-fun lt!631416 () Unit!31326)

(assert (=> b!1671768 (= lt!631368 lt!631416)))

(declare-fun lt!631403 () List!18488)

(assert (=> b!1671768 (not (matchR!2063 (regex!3244 (rule!5134 lt!631405)) lt!631403))))

(assert (=> b!1671768 (= lt!631416 (lemmaMaxPrefNoSmallerRuleMatches!113 thiss!17113 rules!1846 (rule!5134 (h!23821 (t!152641 tokens!457))) lt!631403 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) (rule!5134 lt!631405)))))

(assert (=> b!1671768 (= lt!631403 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))))

(declare-fun Unit!31380 () Unit!31326)

(assert (=> b!1671768 (= e!1071255 Unit!31380)))

(declare-fun b!1671769 () Bool)

(declare-fun Unit!31381 () Unit!31326)

(assert (=> b!1671769 (= e!1071255 Unit!31381)))

(assert (= (and d!505669 res!749725) b!1671764))

(assert (= (and b!1671764 res!749726) b!1671765))

(assert (= (and d!505669 c!272052) b!1671763))

(assert (= (and d!505669 (not c!272052)) b!1671759))

(assert (= (and d!505669 c!272053) b!1671761))

(assert (= (and d!505669 (not c!272053)) b!1671756))

(assert (= (and d!505669 c!272055) b!1671762))

(assert (= (and d!505669 (not c!272055)) b!1671760))

(assert (= (and b!1671762 c!272050) b!1671757))

(assert (= (and b!1671762 (not c!272050)) b!1671766))

(assert (= (and b!1671762 c!272051) b!1671768))

(assert (= (and b!1671762 (not c!272051)) b!1671769))

(assert (= (and b!1671762 c!272054) b!1671758))

(assert (= (and b!1671762 (not c!272054)) b!1671767))

(declare-fun m!2038717 () Bool)

(assert (=> b!1671765 m!2038717))

(assert (=> b!1671765 m!2038717))

(declare-fun m!2038719 () Bool)

(assert (=> b!1671765 m!2038719))

(declare-fun m!2038721 () Bool)

(assert (=> b!1671762 m!2038721))

(declare-fun m!2038723 () Bool)

(assert (=> b!1671762 m!2038723))

(declare-fun m!2038725 () Bool)

(assert (=> b!1671763 m!2038725))

(declare-fun m!2038727 () Bool)

(assert (=> b!1671763 m!2038727))

(assert (=> b!1671763 m!2037011))

(declare-fun m!2038729 () Bool)

(assert (=> b!1671763 m!2038729))

(declare-fun m!2038731 () Bool)

(assert (=> b!1671763 m!2038731))

(assert (=> b!1671763 m!2037017))

(assert (=> b!1671763 m!2037359))

(declare-fun m!2038733 () Bool)

(assert (=> b!1671763 m!2038733))

(assert (=> b!1671763 m!2037011))

(declare-fun m!2038735 () Bool)

(assert (=> b!1671763 m!2038735))

(assert (=> b!1671763 m!2038083))

(assert (=> b!1671763 m!2038099))

(declare-fun m!2038737 () Bool)

(assert (=> b!1671763 m!2038737))

(declare-fun m!2038739 () Bool)

(assert (=> b!1671763 m!2038739))

(assert (=> b!1671763 m!2038725))

(declare-fun m!2038741 () Bool)

(assert (=> b!1671763 m!2038741))

(declare-fun m!2038743 () Bool)

(assert (=> b!1671763 m!2038743))

(assert (=> b!1671763 m!2037017))

(assert (=> b!1671763 m!2038733))

(assert (=> b!1671763 m!2038729))

(assert (=> b!1671763 m!2037359))

(declare-fun m!2038745 () Bool)

(assert (=> b!1671763 m!2038745))

(assert (=> b!1671763 m!2038083))

(declare-fun m!2038747 () Bool)

(assert (=> b!1671763 m!2038747))

(declare-fun m!2038749 () Bool)

(assert (=> b!1671763 m!2038749))

(assert (=> b!1671763 m!2037359))

(declare-fun m!2038751 () Bool)

(assert (=> b!1671763 m!2038751))

(assert (=> b!1671763 m!2038743))

(declare-fun m!2038753 () Bool)

(assert (=> b!1671763 m!2038753))

(declare-fun m!2038755 () Bool)

(assert (=> b!1671763 m!2038755))

(declare-fun m!2038757 () Bool)

(assert (=> b!1671758 m!2038757))

(declare-fun m!2038759 () Bool)

(assert (=> b!1671768 m!2038759))

(assert (=> b!1671768 m!2037017))

(assert (=> b!1671768 m!2037017))

(assert (=> b!1671768 m!2037359))

(assert (=> b!1671768 m!2037359))

(declare-fun m!2038761 () Bool)

(assert (=> b!1671768 m!2038761))

(assert (=> b!1671761 m!2037017))

(assert (=> b!1671761 m!2037017))

(assert (=> b!1671761 m!2037359))

(assert (=> b!1671761 m!2038733))

(assert (=> b!1671761 m!2038733))

(assert (=> b!1671761 m!2038729))

(declare-fun m!2038763 () Bool)

(assert (=> b!1671761 m!2038763))

(declare-fun m!2038765 () Bool)

(assert (=> b!1671761 m!2038765))

(assert (=> d!505669 m!2037093))

(declare-fun m!2038767 () Bool)

(assert (=> d!505669 m!2038767))

(assert (=> d!505669 m!2037017))

(assert (=> d!505669 m!2037365))

(assert (=> d!505669 m!2037359))

(assert (=> d!505669 m!2038083))

(declare-fun m!2038769 () Bool)

(assert (=> d!505669 m!2038769))

(assert (=> d!505669 m!2037011))

(assert (=> d!505669 m!2037359))

(declare-fun m!2038771 () Bool)

(assert (=> d!505669 m!2038771))

(declare-fun m!2038773 () Bool)

(assert (=> d!505669 m!2038773))

(assert (=> d!505669 m!2037359))

(assert (=> d!505669 m!2038083))

(assert (=> d!505669 m!2037359))

(declare-fun m!2038775 () Bool)

(assert (=> d!505669 m!2038775))

(assert (=> d!505669 m!2037017))

(assert (=> d!505669 m!2037359))

(declare-fun m!2038777 () Bool)

(assert (=> d!505669 m!2038777))

(declare-fun m!2038779 () Bool)

(assert (=> d!505669 m!2038779))

(declare-fun m!2038781 () Bool)

(assert (=> d!505669 m!2038781))

(declare-fun m!2038783 () Bool)

(assert (=> d!505669 m!2038783))

(assert (=> d!505669 m!2037017))

(assert (=> d!505669 m!2037359))

(assert (=> d!505669 m!2038733))

(assert (=> d!505669 m!2038733))

(declare-fun m!2038785 () Bool)

(assert (=> d!505669 m!2038785))

(declare-fun m!2038787 () Bool)

(assert (=> d!505669 m!2038787))

(assert (=> d!505669 m!2038733))

(assert (=> d!505669 m!2038729))

(declare-fun m!2038789 () Bool)

(assert (=> d!505669 m!2038789))

(assert (=> d!505669 m!2038083))

(declare-fun m!2038791 () Bool)

(assert (=> d!505669 m!2038791))

(assert (=> d!505669 m!2038083))

(declare-fun m!2038793 () Bool)

(assert (=> d!505669 m!2038793))

(assert (=> d!505669 m!2037011))

(assert (=> d!505669 m!2038733))

(declare-fun m!2038795 () Bool)

(assert (=> d!505669 m!2038795))

(assert (=> d!505669 m!2038717))

(declare-fun m!2038797 () Bool)

(assert (=> d!505669 m!2038797))

(declare-fun m!2038799 () Bool)

(assert (=> d!505669 m!2038799))

(declare-fun m!2038801 () Bool)

(assert (=> d!505669 m!2038801))

(assert (=> d!505669 m!2038729))

(declare-fun m!2038803 () Bool)

(assert (=> d!505669 m!2038803))

(assert (=> d!505669 m!2038717))

(assert (=> d!505669 m!2038733))

(declare-fun m!2038805 () Bool)

(assert (=> d!505669 m!2038805))

(declare-fun m!2038807 () Bool)

(assert (=> d!505669 m!2038807))

(declare-fun m!2038809 () Bool)

(assert (=> d!505669 m!2038809))

(assert (=> d!505669 m!2037359))

(assert (=> d!505669 m!2038083))

(assert (=> d!505669 m!2038085))

(assert (=> d!505669 m!2038791))

(declare-fun m!2038811 () Bool)

(assert (=> d!505669 m!2038811))

(assert (=> d!505669 m!2038769))

(declare-fun m!2038813 () Bool)

(assert (=> d!505669 m!2038813))

(assert (=> d!505669 m!2038801))

(declare-fun m!2038815 () Bool)

(assert (=> d!505669 m!2038815))

(assert (=> d!505669 m!2038789))

(declare-fun m!2038817 () Bool)

(assert (=> d!505669 m!2038817))

(declare-fun m!2038819 () Bool)

(assert (=> d!505669 m!2038819))

(declare-fun m!2038821 () Bool)

(assert (=> d!505669 m!2038821))

(declare-fun m!2038823 () Bool)

(assert (=> d!505669 m!2038823))

(assert (=> d!505669 m!2038785))

(assert (=> b!1671764 m!2038729))

(declare-fun m!2038825 () Bool)

(assert (=> b!1671764 m!2038825))

(assert (=> b!1671764 m!2038733))

(assert (=> b!1671764 m!2038733))

(assert (=> b!1671764 m!2038729))

(assert (=> b!1671764 m!2038717))

(assert (=> b!1671764 m!2038717))

(assert (=> b!1671764 m!2038719))

(declare-fun m!2038827 () Bool)

(assert (=> b!1671757 m!2038827))

(declare-fun m!2038829 () Bool)

(assert (=> b!1671757 m!2038829))

(assert (=> b!1671757 m!2038733))

(assert (=> b!1671757 m!2038733))

(assert (=> b!1671757 m!2038729))

(assert (=> b!1671288 d!505669))

(declare-fun d!505705 () Bool)

(assert (=> d!505705 (= (head!3736 (originalCharacters!4058 (h!23821 (t!152641 (t!152641 tokens!457))))) (h!23819 (originalCharacters!4058 (h!23821 (t!152641 (t!152641 tokens!457))))))))

(assert (=> b!1671288 d!505705))

(assert (=> b!1671288 d!505529))

(declare-fun d!505707 () Bool)

(assert (=> d!505707 (= (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) (list!7385 (c!271871 (charsOf!1893 (h!23821 (t!152641 tokens!457))))))))

(declare-fun bs!398158 () Bool)

(assert (= bs!398158 d!505707))

(declare-fun m!2038831 () Bool)

(assert (=> bs!398158 m!2038831))

(assert (=> b!1671288 d!505707))

(declare-fun d!505709 () Bool)

(declare-fun lt!631427 () C!9318)

(assert (=> d!505709 (= lt!631427 (apply!4974 (list!7381 (charsOf!1893 (h!23821 (t!152641 (t!152641 tokens!457))))) 0))))

(assert (=> d!505709 (= lt!631427 (apply!4975 (c!271871 (charsOf!1893 (h!23821 (t!152641 (t!152641 tokens!457))))) 0))))

(declare-fun e!1071261 () Bool)

(assert (=> d!505709 e!1071261))

(declare-fun res!749727 () Bool)

(assert (=> d!505709 (=> (not res!749727) (not e!1071261))))

(assert (=> d!505709 (= res!749727 (<= 0 0))))

(assert (=> d!505709 (= (apply!4971 (charsOf!1893 (h!23821 (t!152641 (t!152641 tokens!457)))) 0) lt!631427)))

(declare-fun b!1671770 () Bool)

(assert (=> b!1671770 (= e!1071261 (< 0 (size!14656 (charsOf!1893 (h!23821 (t!152641 (t!152641 tokens!457)))))))))

(assert (= (and d!505709 res!749727) b!1671770))

(assert (=> d!505709 m!2038057))

(declare-fun m!2038833 () Bool)

(assert (=> d!505709 m!2038833))

(assert (=> d!505709 m!2038833))

(declare-fun m!2038835 () Bool)

(assert (=> d!505709 m!2038835))

(declare-fun m!2038837 () Bool)

(assert (=> d!505709 m!2038837))

(assert (=> b!1671770 m!2038057))

(declare-fun m!2038839 () Bool)

(assert (=> b!1671770 m!2038839))

(assert (=> b!1671288 d!505709))

(declare-fun b!1671771 () Bool)

(declare-fun e!1071262 () Bool)

(declare-fun e!1071264 () Bool)

(assert (=> b!1671771 (= e!1071262 e!1071264)))

(declare-fun res!749731 () Bool)

(assert (=> b!1671771 (=> (not res!749731) (not e!1071264))))

(assert (=> b!1671771 (= res!749731 (not (is-Nil!18418 (++!5024 lt!631038 lt!631052))))))

(declare-fun d!505711 () Bool)

(declare-fun e!1071263 () Bool)

(assert (=> d!505711 e!1071263))

(declare-fun res!749730 () Bool)

(assert (=> d!505711 (=> res!749730 e!1071263)))

(declare-fun lt!631428 () Bool)

(assert (=> d!505711 (= res!749730 (not lt!631428))))

(assert (=> d!505711 (= lt!631428 e!1071262)))

(declare-fun res!749728 () Bool)

(assert (=> d!505711 (=> res!749728 e!1071262)))

(assert (=> d!505711 (= res!749728 (is-Nil!18418 lt!631038))))

(assert (=> d!505711 (= (isPrefix!1502 lt!631038 (++!5024 lt!631038 lt!631052)) lt!631428)))

(declare-fun b!1671774 () Bool)

(assert (=> b!1671774 (= e!1071263 (>= (size!14657 (++!5024 lt!631038 lt!631052)) (size!14657 lt!631038)))))

(declare-fun b!1671773 () Bool)

(assert (=> b!1671773 (= e!1071264 (isPrefix!1502 (tail!2496 lt!631038) (tail!2496 (++!5024 lt!631038 lt!631052))))))

(declare-fun b!1671772 () Bool)

(declare-fun res!749729 () Bool)

(assert (=> b!1671772 (=> (not res!749729) (not e!1071264))))

(assert (=> b!1671772 (= res!749729 (= (head!3736 lt!631038) (head!3736 (++!5024 lt!631038 lt!631052))))))

(assert (= (and d!505711 (not res!749728)) b!1671771))

(assert (= (and b!1671771 res!749731) b!1671772))

(assert (= (and b!1671772 res!749729) b!1671773))

(assert (= (and d!505711 (not res!749730)) b!1671774))

(assert (=> b!1671774 m!2038101))

(declare-fun m!2038841 () Bool)

(assert (=> b!1671774 m!2038841))

(declare-fun m!2038843 () Bool)

(assert (=> b!1671774 m!2038843))

(declare-fun m!2038845 () Bool)

(assert (=> b!1671773 m!2038845))

(assert (=> b!1671773 m!2038101))

(declare-fun m!2038847 () Bool)

(assert (=> b!1671773 m!2038847))

(assert (=> b!1671773 m!2038845))

(assert (=> b!1671773 m!2038847))

(declare-fun m!2038849 () Bool)

(assert (=> b!1671773 m!2038849))

(declare-fun m!2038851 () Bool)

(assert (=> b!1671772 m!2038851))

(assert (=> b!1671772 m!2038101))

(declare-fun m!2038853 () Bool)

(assert (=> b!1671772 m!2038853))

(assert (=> b!1671288 d!505711))

(declare-fun b!1671775 () Bool)

(declare-fun res!749736 () Bool)

(declare-fun e!1071265 () Bool)

(assert (=> b!1671775 (=> (not res!749736) (not e!1071265))))

(declare-fun lt!631429 () Option!3539)

(assert (=> b!1671775 (= res!749736 (= (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!631429)))) (originalCharacters!4058 (_1!10472 (get!5396 lt!631429)))))))

(declare-fun b!1671776 () Bool)

(declare-fun res!749735 () Bool)

(assert (=> b!1671776 (=> (not res!749735) (not e!1071265))))

(assert (=> b!1671776 (= res!749735 (matchR!2063 (regex!3244 (rule!5134 (_1!10472 (get!5396 lt!631429)))) (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!631429))))))))

(declare-fun b!1671777 () Bool)

(declare-fun res!749737 () Bool)

(assert (=> b!1671777 (=> (not res!749737) (not e!1071265))))

(assert (=> b!1671777 (= res!749737 (= (value!102128 (_1!10472 (get!5396 lt!631429))) (apply!4976 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!631429)))) (seqFromList!2225 (originalCharacters!4058 (_1!10472 (get!5396 lt!631429)))))))))

(declare-fun b!1671778 () Bool)

(declare-fun res!749738 () Bool)

(assert (=> b!1671778 (=> (not res!749738) (not e!1071265))))

(assert (=> b!1671778 (= res!749738 (= (++!5024 (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!631429)))) (_2!10472 (get!5396 lt!631429))) (originalCharacters!4058 (h!23821 (t!152641 tokens!457)))))))

(declare-fun b!1671779 () Bool)

(assert (=> b!1671779 (= e!1071265 (contains!3221 rules!1846 (rule!5134 (_1!10472 (get!5396 lt!631429)))))))

(declare-fun bm!106611 () Bool)

(declare-fun call!106616 () Option!3539)

(assert (=> bm!106611 (= call!106616 (maxPrefixOneRule!836 thiss!17113 (h!23820 rules!1846) (originalCharacters!4058 (h!23821 (t!152641 tokens!457)))))))

(declare-fun d!505713 () Bool)

(declare-fun e!1071267 () Bool)

(assert (=> d!505713 e!1071267))

(declare-fun res!749734 () Bool)

(assert (=> d!505713 (=> res!749734 e!1071267)))

(assert (=> d!505713 (= res!749734 (isEmpty!11485 lt!631429))))

(declare-fun e!1071266 () Option!3539)

(assert (=> d!505713 (= lt!631429 e!1071266)))

(declare-fun c!272056 () Bool)

(assert (=> d!505713 (= c!272056 (and (is-Cons!18419 rules!1846) (is-Nil!18419 (t!152640 rules!1846))))))

(declare-fun lt!631433 () Unit!31326)

(declare-fun lt!631431 () Unit!31326)

(assert (=> d!505713 (= lt!631433 lt!631431)))

(assert (=> d!505713 (isPrefix!1502 (originalCharacters!4058 (h!23821 (t!152641 tokens!457))) (originalCharacters!4058 (h!23821 (t!152641 tokens!457))))))

(assert (=> d!505713 (= lt!631431 (lemmaIsPrefixRefl!1021 (originalCharacters!4058 (h!23821 (t!152641 tokens!457))) (originalCharacters!4058 (h!23821 (t!152641 tokens!457)))))))

(assert (=> d!505713 (rulesValidInductive!1043 thiss!17113 rules!1846)))

(assert (=> d!505713 (= (maxPrefix!1433 thiss!17113 rules!1846 (originalCharacters!4058 (h!23821 (t!152641 tokens!457)))) lt!631429)))

(declare-fun b!1671780 () Bool)

(assert (=> b!1671780 (= e!1071266 call!106616)))

(declare-fun b!1671781 () Bool)

(declare-fun lt!631432 () Option!3539)

(declare-fun lt!631430 () Option!3539)

(assert (=> b!1671781 (= e!1071266 (ite (and (is-None!3538 lt!631432) (is-None!3538 lt!631430)) None!3538 (ite (is-None!3538 lt!631430) lt!631432 (ite (is-None!3538 lt!631432) lt!631430 (ite (>= (size!14653 (_1!10472 (v!24811 lt!631432))) (size!14653 (_1!10472 (v!24811 lt!631430)))) lt!631432 lt!631430)))))))

(assert (=> b!1671781 (= lt!631432 call!106616)))

(assert (=> b!1671781 (= lt!631430 (maxPrefix!1433 thiss!17113 (t!152640 rules!1846) (originalCharacters!4058 (h!23821 (t!152641 tokens!457)))))))

(declare-fun b!1671782 () Bool)

(assert (=> b!1671782 (= e!1071267 e!1071265)))

(declare-fun res!749733 () Bool)

(assert (=> b!1671782 (=> (not res!749733) (not e!1071265))))

(assert (=> b!1671782 (= res!749733 (isDefined!2892 lt!631429))))

(declare-fun b!1671783 () Bool)

(declare-fun res!749732 () Bool)

(assert (=> b!1671783 (=> (not res!749732) (not e!1071265))))

(assert (=> b!1671783 (= res!749732 (< (size!14657 (_2!10472 (get!5396 lt!631429))) (size!14657 (originalCharacters!4058 (h!23821 (t!152641 tokens!457))))))))

(assert (= (and d!505713 c!272056) b!1671780))

(assert (= (and d!505713 (not c!272056)) b!1671781))

(assert (= (or b!1671780 b!1671781) bm!106611))

(assert (= (and d!505713 (not res!749734)) b!1671782))

(assert (= (and b!1671782 res!749733) b!1671775))

(assert (= (and b!1671775 res!749736) b!1671783))

(assert (= (and b!1671783 res!749732) b!1671778))

(assert (= (and b!1671778 res!749738) b!1671777))

(assert (= (and b!1671777 res!749737) b!1671776))

(assert (= (and b!1671776 res!749735) b!1671779))

(declare-fun m!2038855 () Bool)

(assert (=> b!1671783 m!2038855))

(declare-fun m!2038857 () Bool)

(assert (=> b!1671783 m!2038857))

(declare-fun m!2038859 () Bool)

(assert (=> b!1671783 m!2038859))

(assert (=> b!1671778 m!2038855))

(declare-fun m!2038861 () Bool)

(assert (=> b!1671778 m!2038861))

(assert (=> b!1671778 m!2038861))

(declare-fun m!2038863 () Bool)

(assert (=> b!1671778 m!2038863))

(assert (=> b!1671778 m!2038863))

(declare-fun m!2038865 () Bool)

(assert (=> b!1671778 m!2038865))

(declare-fun m!2038867 () Bool)

(assert (=> bm!106611 m!2038867))

(assert (=> b!1671776 m!2038855))

(assert (=> b!1671776 m!2038861))

(assert (=> b!1671776 m!2038861))

(assert (=> b!1671776 m!2038863))

(assert (=> b!1671776 m!2038863))

(declare-fun m!2038869 () Bool)

(assert (=> b!1671776 m!2038869))

(assert (=> b!1671777 m!2038855))

(declare-fun m!2038871 () Bool)

(assert (=> b!1671777 m!2038871))

(assert (=> b!1671777 m!2038871))

(declare-fun m!2038873 () Bool)

(assert (=> b!1671777 m!2038873))

(assert (=> b!1671775 m!2038855))

(assert (=> b!1671775 m!2038861))

(assert (=> b!1671775 m!2038861))

(assert (=> b!1671775 m!2038863))

(declare-fun m!2038875 () Bool)

(assert (=> b!1671782 m!2038875))

(declare-fun m!2038877 () Bool)

(assert (=> b!1671781 m!2038877))

(declare-fun m!2038879 () Bool)

(assert (=> d!505713 m!2038879))

(declare-fun m!2038881 () Bool)

(assert (=> d!505713 m!2038881))

(declare-fun m!2038883 () Bool)

(assert (=> d!505713 m!2038883))

(assert (=> d!505713 m!2037861))

(assert (=> b!1671779 m!2038855))

(declare-fun m!2038885 () Bool)

(assert (=> b!1671779 m!2038885))

(assert (=> b!1671288 d!505713))

(declare-fun d!505715 () Bool)

(assert (=> d!505715 (isPrefix!1502 lt!631038 (++!5024 lt!631038 lt!631052))))

(declare-fun lt!631434 () Unit!31326)

(assert (=> d!505715 (= lt!631434 (choose!10063 lt!631038 lt!631052))))

(assert (=> d!505715 (= (lemmaConcatTwoListThenFirstIsPrefix!1023 lt!631038 lt!631052) lt!631434)))

(declare-fun bs!398159 () Bool)

(assert (= bs!398159 d!505715))

(assert (=> bs!398159 m!2038101))

(assert (=> bs!398159 m!2038101))

(assert (=> bs!398159 m!2038105))

(declare-fun m!2038887 () Bool)

(assert (=> bs!398159 m!2038887))

(assert (=> b!1671288 d!505715))

(assert (=> b!1671288 d!505397))

(declare-fun d!505717 () Bool)

(assert (=> d!505717 (= (get!5396 (maxPrefix!1433 thiss!17113 rules!1846 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))) (v!24811 (maxPrefix!1433 thiss!17113 rules!1846 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))))))

(assert (=> b!1671288 d!505717))

(declare-fun d!505719 () Bool)

(assert (=> d!505719 (= (head!3736 (list!7381 lt!631044)) (h!23819 (list!7381 lt!631044)))))

(assert (=> b!1671288 d!505719))

(declare-fun d!505721 () Bool)

(assert (=> d!505721 (= (isEmpty!11487 (_2!10472 (get!5396 (maxPrefix!1433 thiss!17113 rules!1846 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))))) (is-Nil!18418 (_2!10472 (get!5396 (maxPrefix!1433 thiss!17113 rules!1846 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))))))))

(assert (=> b!1671288 d!505721))

(declare-fun d!505723 () Bool)

(assert (=> d!505723 (= (list!7381 (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 (t!152641 tokens!457)))) 0))) (list!7385 (c!271871 (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 (t!152641 tokens!457)))) 0)))))))

(declare-fun bs!398160 () Bool)

(assert (= bs!398160 d!505723))

(declare-fun m!2038889 () Bool)

(assert (=> bs!398160 m!2038889))

(assert (=> b!1671288 d!505723))

(declare-fun d!505725 () Bool)

(declare-fun lt!631435 () BalanceConc!12216)

(assert (=> d!505725 (= (list!7381 lt!631435) (printList!986 thiss!17113 (list!7382 (seqFromList!2226 (t!152641 (t!152641 tokens!457))))))))

(assert (=> d!505725 (= lt!631435 (printTailRec!924 thiss!17113 (seqFromList!2226 (t!152641 (t!152641 tokens!457))) 0 (BalanceConc!12217 Empty!6136)))))

(assert (=> d!505725 (= (print!1404 thiss!17113 (seqFromList!2226 (t!152641 (t!152641 tokens!457)))) lt!631435)))

(declare-fun bs!398161 () Bool)

(assert (= bs!398161 d!505725))

(declare-fun m!2038891 () Bool)

(assert (=> bs!398161 m!2038891))

(assert (=> bs!398161 m!2037105))

(assert (=> bs!398161 m!2037927))

(assert (=> bs!398161 m!2037927))

(declare-fun m!2038893 () Bool)

(assert (=> bs!398161 m!2038893))

(assert (=> bs!398161 m!2037105))

(declare-fun m!2038895 () Bool)

(assert (=> bs!398161 m!2038895))

(assert (=> b!1671288 d!505725))

(declare-fun d!505727 () Bool)

(declare-fun e!1071268 () Bool)

(assert (=> d!505727 e!1071268))

(declare-fun res!749739 () Bool)

(assert (=> d!505727 (=> (not res!749739) (not e!1071268))))

(declare-fun lt!631436 () BalanceConc!12218)

(assert (=> d!505727 (= res!749739 (= (list!7382 lt!631436) (Cons!18420 (h!23821 (t!152641 tokens!457)) Nil!18420)))))

(assert (=> d!505727 (= lt!631436 (singleton!786 (h!23821 (t!152641 tokens!457))))))

(assert (=> d!505727 (= (singletonSeq!1756 (h!23821 (t!152641 tokens!457))) lt!631436)))

(declare-fun b!1671784 () Bool)

(assert (=> b!1671784 (= e!1071268 (isBalanced!1912 (c!271873 lt!631436)))))

(assert (= (and d!505727 res!749739) b!1671784))

(declare-fun m!2038897 () Bool)

(assert (=> d!505727 m!2038897))

(declare-fun m!2038899 () Bool)

(assert (=> d!505727 m!2038899))

(declare-fun m!2038901 () Bool)

(assert (=> b!1671784 m!2038901))

(assert (=> b!1671288 d!505727))

(declare-fun d!505729 () Bool)

(declare-fun lt!631437 () BalanceConc!12216)

(assert (=> d!505729 (= (list!7381 lt!631437) (printList!986 thiss!17113 (list!7382 (singletonSeq!1756 (h!23821 (t!152641 tokens!457))))))))

(assert (=> d!505729 (= lt!631437 (printTailRec!924 thiss!17113 (singletonSeq!1756 (h!23821 (t!152641 tokens!457))) 0 (BalanceConc!12217 Empty!6136)))))

(assert (=> d!505729 (= (print!1404 thiss!17113 (singletonSeq!1756 (h!23821 (t!152641 tokens!457)))) lt!631437)))

(declare-fun bs!398162 () Bool)

(assert (= bs!398162 d!505729))

(declare-fun m!2038903 () Bool)

(assert (=> bs!398162 m!2038903))

(assert (=> bs!398162 m!2038071))

(declare-fun m!2038905 () Bool)

(assert (=> bs!398162 m!2038905))

(assert (=> bs!398162 m!2038905))

(declare-fun m!2038907 () Bool)

(assert (=> bs!398162 m!2038907))

(assert (=> bs!398162 m!2038071))

(assert (=> bs!398162 m!2038117))

(assert (=> b!1671288 d!505729))

(declare-fun d!505731 () Bool)

(declare-fun lt!631438 () BalanceConc!12216)

(assert (=> d!505731 (= (list!7381 lt!631438) (originalCharacters!4058 (h!23821 (t!152641 (t!152641 tokens!457)))))))

(assert (=> d!505731 (= lt!631438 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457)))))) (value!102128 (h!23821 (t!152641 (t!152641 tokens!457))))))))

(assert (=> d!505731 (= (charsOf!1893 (h!23821 (t!152641 (t!152641 tokens!457)))) lt!631438)))

(declare-fun b_lambda!52517 () Bool)

(assert (=> (not b_lambda!52517) (not d!505731)))

(declare-fun t!152724 () Bool)

(declare-fun tb!95927 () Bool)

(assert (=> (and b!1670823 (= (toChars!4570 (transformation!3244 (h!23820 rules!1846))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457))))))) t!152724) tb!95927))

(declare-fun b!1671785 () Bool)

(declare-fun e!1071269 () Bool)

(declare-fun tp!482424 () Bool)

(assert (=> b!1671785 (= e!1071269 (and (inv!23776 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457)))))) (value!102128 (h!23821 (t!152641 (t!152641 tokens!457))))))) tp!482424))))

(declare-fun result!115926 () Bool)

(assert (=> tb!95927 (= result!115926 (and (inv!23777 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457)))))) (value!102128 (h!23821 (t!152641 (t!152641 tokens!457)))))) e!1071269))))

(assert (= tb!95927 b!1671785))

(declare-fun m!2038909 () Bool)

(assert (=> b!1671785 m!2038909))

(declare-fun m!2038911 () Bool)

(assert (=> tb!95927 m!2038911))

(assert (=> d!505731 t!152724))

(declare-fun b_and!118901 () Bool)

(assert (= b_and!118893 (and (=> t!152724 result!115926) b_and!118901)))

(declare-fun t!152726 () Bool)

(declare-fun tb!95929 () Bool)

(assert (=> (and b!1670835 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457))))))) t!152726) tb!95929))

(declare-fun result!115928 () Bool)

(assert (= result!115928 result!115926))

(assert (=> d!505731 t!152726))

(declare-fun b_and!118903 () Bool)

(assert (= b_and!118895 (and (=> t!152726 result!115928) b_and!118903)))

(declare-fun t!152728 () Bool)

(declare-fun tb!95931 () Bool)

(assert (=> (and b!1671330 (= (toChars!4570 (transformation!3244 (h!23820 (t!152640 rules!1846)))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457))))))) t!152728) tb!95931))

(declare-fun result!115930 () Bool)

(assert (= result!115930 result!115926))

(assert (=> d!505731 t!152728))

(declare-fun b_and!118905 () Bool)

(assert (= b_and!118897 (and (=> t!152728 result!115930) b_and!118905)))

(declare-fun t!152730 () Bool)

(declare-fun tb!95933 () Bool)

(assert (=> (and b!1671344 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457))))))) t!152730) tb!95933))

(declare-fun result!115932 () Bool)

(assert (= result!115932 result!115926))

(assert (=> d!505731 t!152730))

(declare-fun b_and!118907 () Bool)

(assert (= b_and!118899 (and (=> t!152730 result!115932) b_and!118907)))

(declare-fun m!2038913 () Bool)

(assert (=> d!505731 m!2038913))

(declare-fun m!2038915 () Bool)

(assert (=> d!505731 m!2038915))

(assert (=> b!1671288 d!505731))

(declare-fun d!505733 () Bool)

(assert (=> d!505733 (= (list!7382 (_1!10473 lt!631046)) (list!7382 (prepend!832 (seqFromList!2226 (t!152641 (t!152641 (t!152641 tokens!457)))) (h!23821 (t!152641 (t!152641 tokens!457))))))))

(declare-fun lt!631439 () Unit!31326)

(assert (=> d!505733 (= lt!631439 (choose!10062 (h!23821 (t!152641 (t!152641 tokens!457))) (t!152641 (t!152641 (t!152641 tokens!457))) (_1!10473 lt!631046)))))

(assert (=> d!505733 (= (list!7382 (_1!10473 lt!631046)) (list!7382 (seqFromList!2226 ($colon$colon!393 (t!152641 (t!152641 (t!152641 tokens!457))) (h!23821 (t!152641 (t!152641 tokens!457)))))))))

(assert (=> d!505733 (= (seqFromListBHdTlConstructive!313 (h!23821 (t!152641 (t!152641 tokens!457))) (t!152641 (t!152641 (t!152641 tokens!457))) (_1!10473 lt!631046)) lt!631439)))

(declare-fun bs!398163 () Bool)

(assert (= bs!398163 d!505733))

(assert (=> bs!398163 m!2038065))

(assert (=> bs!398163 m!2038077))

(assert (=> bs!398163 m!2038091))

(assert (=> bs!398163 m!2038077))

(assert (=> bs!398163 m!2038107))

(declare-fun m!2038917 () Bool)

(assert (=> bs!398163 m!2038917))

(declare-fun m!2038919 () Bool)

(assert (=> bs!398163 m!2038919))

(declare-fun m!2038921 () Bool)

(assert (=> bs!398163 m!2038921))

(declare-fun m!2038923 () Bool)

(assert (=> bs!398163 m!2038923))

(assert (=> bs!398163 m!2038917))

(assert (=> bs!398163 m!2038065))

(assert (=> bs!398163 m!2038923))

(assert (=> b!1671288 d!505733))

(declare-fun d!505735 () Bool)

(declare-fun e!1071270 () Bool)

(assert (=> d!505735 e!1071270))

(declare-fun res!749740 () Bool)

(assert (=> d!505735 (=> (not res!749740) (not e!1071270))))

(assert (=> d!505735 (= res!749740 (isBalanced!1912 (prepend!834 (c!271873 (seqFromList!2226 (t!152641 (t!152641 (t!152641 tokens!457))))) (h!23821 (t!152641 (t!152641 tokens!457))))))))

(declare-fun lt!631440 () BalanceConc!12218)

(assert (=> d!505735 (= lt!631440 (BalanceConc!12219 (prepend!834 (c!271873 (seqFromList!2226 (t!152641 (t!152641 (t!152641 tokens!457))))) (h!23821 (t!152641 (t!152641 tokens!457))))))))

(assert (=> d!505735 (= (prepend!832 (seqFromList!2226 (t!152641 (t!152641 (t!152641 tokens!457)))) (h!23821 (t!152641 (t!152641 tokens!457)))) lt!631440)))

(declare-fun b!1671786 () Bool)

(assert (=> b!1671786 (= e!1071270 (= (list!7382 lt!631440) (Cons!18420 (h!23821 (t!152641 (t!152641 tokens!457))) (list!7382 (seqFromList!2226 (t!152641 (t!152641 (t!152641 tokens!457))))))))))

(assert (= (and d!505735 res!749740) b!1671786))

(declare-fun m!2038925 () Bool)

(assert (=> d!505735 m!2038925))

(assert (=> d!505735 m!2038925))

(declare-fun m!2038927 () Bool)

(assert (=> d!505735 m!2038927))

(declare-fun m!2038929 () Bool)

(assert (=> b!1671786 m!2038929))

(assert (=> b!1671786 m!2038065))

(declare-fun m!2038931 () Bool)

(assert (=> b!1671786 m!2038931))

(assert (=> b!1671288 d!505735))

(declare-fun d!505737 () Bool)

(assert (=> d!505737 (= (list!7382 (_1!10473 lt!631046)) (list!7386 (c!271873 (_1!10473 lt!631046))))))

(declare-fun bs!398164 () Bool)

(assert (= bs!398164 d!505737))

(declare-fun m!2038933 () Bool)

(assert (=> bs!398164 m!2038933))

(assert (=> b!1671288 d!505737))

(declare-fun d!505739 () Bool)

(assert (=> d!505739 (= (seqFromList!2226 (t!152641 (t!152641 (t!152641 tokens!457)))) (fromListB!1013 (t!152641 (t!152641 (t!152641 tokens!457)))))))

(declare-fun bs!398165 () Bool)

(assert (= bs!398165 d!505739))

(declare-fun m!2038935 () Bool)

(assert (=> bs!398165 m!2038935))

(assert (=> b!1671288 d!505739))

(declare-fun b!1671787 () Bool)

(declare-fun res!749742 () Bool)

(declare-fun e!1071271 () Bool)

(assert (=> b!1671787 (=> (not res!749742) (not e!1071271))))

(declare-fun lt!631442 () Token!6054)

(assert (=> b!1671787 (= res!749742 (matchR!2063 (regex!3244 (get!5395 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!631442))))) (list!7381 (charsOf!1893 lt!631442))))))

(declare-fun b!1671788 () Bool)

(assert (=> b!1671788 (= e!1071271 (= (rule!5134 lt!631442) (get!5395 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!631442))))))))

(declare-fun b!1671790 () Bool)

(declare-fun e!1071272 () Unit!31326)

(declare-fun Unit!31382 () Unit!31326)

(assert (=> b!1671790 (= e!1071272 Unit!31382)))

(declare-fun d!505741 () Bool)

(assert (=> d!505741 (isDefined!2892 (maxPrefix!1433 thiss!17113 rules!1846 (++!5024 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) (list!7381 lt!631044))))))

(declare-fun lt!631450 () Unit!31326)

(assert (=> d!505741 (= lt!631450 e!1071272)))

(declare-fun c!272057 () Bool)

(assert (=> d!505741 (= c!272057 (isEmpty!11485 (maxPrefix!1433 thiss!17113 rules!1846 (++!5024 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) (list!7381 lt!631044)))))))

(declare-fun lt!631457 () Unit!31326)

(declare-fun lt!631445 () Unit!31326)

(assert (=> d!505741 (= lt!631457 lt!631445)))

(assert (=> d!505741 e!1071271))

(declare-fun res!749741 () Bool)

(assert (=> d!505741 (=> (not res!749741) (not e!1071271))))

(assert (=> d!505741 (= res!749741 (isDefined!2894 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!631442)))))))

(assert (=> d!505741 (= lt!631445 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!337 thiss!17113 rules!1846 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) lt!631442))))

(declare-fun lt!631456 () Unit!31326)

(declare-fun lt!631453 () Unit!31326)

(assert (=> d!505741 (= lt!631456 lt!631453)))

(declare-fun lt!631441 () List!18488)

(assert (=> d!505741 (isPrefix!1502 lt!631441 (++!5024 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) (list!7381 lt!631044)))))

(assert (=> d!505741 (= lt!631453 (lemmaPrefixStaysPrefixWhenAddingToSuffix!223 lt!631441 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) (list!7381 lt!631044)))))

(assert (=> d!505741 (= lt!631441 (list!7381 (charsOf!1893 lt!631442)))))

(declare-fun lt!631451 () Unit!31326)

(declare-fun lt!631449 () Unit!31326)

(assert (=> d!505741 (= lt!631451 lt!631449)))

(declare-fun lt!631454 () List!18488)

(declare-fun lt!631455 () List!18488)

(assert (=> d!505741 (isPrefix!1502 lt!631454 (++!5024 lt!631454 lt!631455))))

(assert (=> d!505741 (= lt!631449 (lemmaConcatTwoListThenFirstIsPrefix!1023 lt!631454 lt!631455))))

(assert (=> d!505741 (= lt!631455 (_2!10472 (get!5396 (maxPrefix!1433 thiss!17113 rules!1846 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457))))))))))

(assert (=> d!505741 (= lt!631454 (list!7381 (charsOf!1893 lt!631442)))))

(assert (=> d!505741 (= lt!631442 (head!3738 (list!7382 (_1!10473 (lex!1357 thiss!17113 rules!1846 (seqFromList!2225 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457))))))))))))

(assert (=> d!505741 (not (isEmpty!11479 rules!1846))))

(assert (=> d!505741 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!435 thiss!17113 rules!1846 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) (list!7381 lt!631044)) lt!631450)))

(declare-fun b!1671789 () Bool)

(declare-fun Unit!31383 () Unit!31326)

(assert (=> b!1671789 (= e!1071272 Unit!31383)))

(declare-fun lt!631443 () List!18488)

(assert (=> b!1671789 (= lt!631443 (++!5024 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) (list!7381 lt!631044)))))

(declare-fun lt!631447 () Unit!31326)

(assert (=> b!1671789 (= lt!631447 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!231 thiss!17113 (rule!5134 lt!631442) rules!1846 lt!631443))))

(assert (=> b!1671789 (isEmpty!11485 (maxPrefixOneRule!836 thiss!17113 (rule!5134 lt!631442) lt!631443))))

(declare-fun lt!631452 () Unit!31326)

(assert (=> b!1671789 (= lt!631452 lt!631447)))

(declare-fun lt!631446 () List!18488)

(assert (=> b!1671789 (= lt!631446 (list!7381 (charsOf!1893 lt!631442)))))

(declare-fun lt!631448 () Unit!31326)

(assert (=> b!1671789 (= lt!631448 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!227 thiss!17113 (rule!5134 lt!631442) lt!631446 (++!5024 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) (list!7381 lt!631044))))))

(assert (=> b!1671789 (not (matchR!2063 (regex!3244 (rule!5134 lt!631442)) lt!631446))))

(declare-fun lt!631444 () Unit!31326)

(assert (=> b!1671789 (= lt!631444 lt!631448)))

(assert (=> b!1671789 false))

(assert (= (and d!505741 res!749741) b!1671787))

(assert (= (and b!1671787 res!749742) b!1671788))

(assert (= (and d!505741 c!272057) b!1671789))

(assert (= (and d!505741 (not c!272057)) b!1671790))

(declare-fun m!2038937 () Bool)

(assert (=> b!1671787 m!2038937))

(declare-fun m!2038939 () Bool)

(assert (=> b!1671787 m!2038939))

(declare-fun m!2038941 () Bool)

(assert (=> b!1671787 m!2038941))

(declare-fun m!2038943 () Bool)

(assert (=> b!1671787 m!2038943))

(assert (=> b!1671787 m!2038941))

(assert (=> b!1671787 m!2038937))

(assert (=> b!1671787 m!2038943))

(declare-fun m!2038945 () Bool)

(assert (=> b!1671787 m!2038945))

(assert (=> b!1671788 m!2038937))

(assert (=> b!1671788 m!2038937))

(assert (=> b!1671788 m!2038939))

(declare-fun m!2038947 () Bool)

(assert (=> d!505741 m!2038947))

(declare-fun m!2038949 () Bool)

(assert (=> d!505741 m!2038949))

(declare-fun m!2038951 () Bool)

(assert (=> d!505741 m!2038951))

(assert (=> d!505741 m!2038941))

(assert (=> d!505741 m!2038943))

(assert (=> d!505741 m!2038937))

(declare-fun m!2038953 () Bool)

(assert (=> d!505741 m!2038953))

(declare-fun m!2038955 () Bool)

(assert (=> d!505741 m!2038955))

(declare-fun m!2038957 () Bool)

(assert (=> d!505741 m!2038957))

(assert (=> d!505741 m!2037359))

(assert (=> d!505741 m!2038083))

(declare-fun m!2038959 () Bool)

(assert (=> d!505741 m!2038959))

(assert (=> d!505741 m!2038813))

(declare-fun m!2038961 () Bool)

(assert (=> d!505741 m!2038961))

(assert (=> d!505741 m!2038937))

(assert (=> d!505741 m!2038813))

(declare-fun m!2038963 () Bool)

(assert (=> d!505741 m!2038963))

(assert (=> d!505741 m!2037359))

(assert (=> d!505741 m!2038059))

(assert (=> d!505741 m!2037093))

(assert (=> d!505741 m!2038059))

(assert (=> d!505741 m!2038061))

(assert (=> d!505741 m!2038769))

(declare-fun m!2038965 () Bool)

(assert (=> d!505741 m!2038965))

(assert (=> d!505741 m!2037359))

(declare-fun m!2038967 () Bool)

(assert (=> d!505741 m!2038967))

(assert (=> d!505741 m!2038955))

(declare-fun m!2038969 () Bool)

(assert (=> d!505741 m!2038969))

(assert (=> d!505741 m!2038941))

(assert (=> d!505741 m!2037359))

(assert (=> d!505741 m!2038083))

(assert (=> d!505741 m!2038769))

(assert (=> d!505741 m!2038951))

(declare-fun m!2038971 () Bool)

(assert (=> d!505741 m!2038971))

(assert (=> d!505741 m!2038769))

(assert (=> d!505741 m!2038813))

(assert (=> d!505741 m!2037359))

(assert (=> d!505741 m!2038947))

(assert (=> b!1671789 m!2038941))

(assert (=> b!1671789 m!2038943))

(declare-fun m!2038973 () Bool)

(assert (=> b!1671789 m!2038973))

(declare-fun m!2038975 () Bool)

(assert (=> b!1671789 m!2038975))

(assert (=> b!1671789 m!2038973))

(assert (=> b!1671789 m!2038769))

(declare-fun m!2038977 () Bool)

(assert (=> b!1671789 m!2038977))

(assert (=> b!1671789 m!2038941))

(declare-fun m!2038979 () Bool)

(assert (=> b!1671789 m!2038979))

(assert (=> b!1671789 m!2037359))

(assert (=> b!1671789 m!2038083))

(assert (=> b!1671789 m!2038769))

(declare-fun m!2038981 () Bool)

(assert (=> b!1671789 m!2038981))

(assert (=> b!1671288 d!505741))

(declare-fun b!1671791 () Bool)

(declare-fun res!749747 () Bool)

(declare-fun e!1071273 () Bool)

(assert (=> b!1671791 (=> (not res!749747) (not e!1071273))))

(declare-fun lt!631458 () Option!3539)

(assert (=> b!1671791 (= res!749747 (= (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!631458)))) (originalCharacters!4058 (_1!10472 (get!5396 lt!631458)))))))

(declare-fun b!1671792 () Bool)

(declare-fun res!749746 () Bool)

(assert (=> b!1671792 (=> (not res!749746) (not e!1071273))))

(assert (=> b!1671792 (= res!749746 (matchR!2063 (regex!3244 (rule!5134 (_1!10472 (get!5396 lt!631458)))) (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!631458))))))))

(declare-fun b!1671793 () Bool)

(declare-fun res!749748 () Bool)

(assert (=> b!1671793 (=> (not res!749748) (not e!1071273))))

(assert (=> b!1671793 (= res!749748 (= (value!102128 (_1!10472 (get!5396 lt!631458))) (apply!4976 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!631458)))) (seqFromList!2225 (originalCharacters!4058 (_1!10472 (get!5396 lt!631458)))))))))

(declare-fun b!1671794 () Bool)

(declare-fun res!749749 () Bool)

(assert (=> b!1671794 (=> (not res!749749) (not e!1071273))))

(assert (=> b!1671794 (= res!749749 (= (++!5024 (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!631458)))) (_2!10472 (get!5396 lt!631458))) (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457))))))))

(declare-fun b!1671795 () Bool)

(assert (=> b!1671795 (= e!1071273 (contains!3221 rules!1846 (rule!5134 (_1!10472 (get!5396 lt!631458)))))))

(declare-fun bm!106612 () Bool)

(declare-fun call!106617 () Option!3539)

(assert (=> bm!106612 (= call!106617 (maxPrefixOneRule!836 thiss!17113 (h!23820 rules!1846) (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457))))))))

(declare-fun d!505743 () Bool)

(declare-fun e!1071275 () Bool)

(assert (=> d!505743 e!1071275))

(declare-fun res!749745 () Bool)

(assert (=> d!505743 (=> res!749745 e!1071275)))

(assert (=> d!505743 (= res!749745 (isEmpty!11485 lt!631458))))

(declare-fun e!1071274 () Option!3539)

(assert (=> d!505743 (= lt!631458 e!1071274)))

(declare-fun c!272058 () Bool)

(assert (=> d!505743 (= c!272058 (and (is-Cons!18419 rules!1846) (is-Nil!18419 (t!152640 rules!1846))))))

(declare-fun lt!631462 () Unit!31326)

(declare-fun lt!631460 () Unit!31326)

(assert (=> d!505743 (= lt!631462 lt!631460)))

(assert (=> d!505743 (isPrefix!1502 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))))

(assert (=> d!505743 (= lt!631460 (lemmaIsPrefixRefl!1021 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457))))))))

(assert (=> d!505743 (rulesValidInductive!1043 thiss!17113 rules!1846)))

(assert (=> d!505743 (= (maxPrefix!1433 thiss!17113 rules!1846 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457))))) lt!631458)))

(declare-fun b!1671796 () Bool)

(assert (=> b!1671796 (= e!1071274 call!106617)))

(declare-fun b!1671797 () Bool)

(declare-fun lt!631461 () Option!3539)

(declare-fun lt!631459 () Option!3539)

(assert (=> b!1671797 (= e!1071274 (ite (and (is-None!3538 lt!631461) (is-None!3538 lt!631459)) None!3538 (ite (is-None!3538 lt!631459) lt!631461 (ite (is-None!3538 lt!631461) lt!631459 (ite (>= (size!14653 (_1!10472 (v!24811 lt!631461))) (size!14653 (_1!10472 (v!24811 lt!631459)))) lt!631461 lt!631459)))))))

(assert (=> b!1671797 (= lt!631461 call!106617)))

(assert (=> b!1671797 (= lt!631459 (maxPrefix!1433 thiss!17113 (t!152640 rules!1846) (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457))))))))

(declare-fun b!1671798 () Bool)

(assert (=> b!1671798 (= e!1071275 e!1071273)))

(declare-fun res!749744 () Bool)

(assert (=> b!1671798 (=> (not res!749744) (not e!1071273))))

(assert (=> b!1671798 (= res!749744 (isDefined!2892 lt!631458))))

(declare-fun b!1671799 () Bool)

(declare-fun res!749743 () Bool)

(assert (=> b!1671799 (=> (not res!749743) (not e!1071273))))

(assert (=> b!1671799 (= res!749743 (< (size!14657 (_2!10472 (get!5396 lt!631458))) (size!14657 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))))))

(assert (= (and d!505743 c!272058) b!1671796))

(assert (= (and d!505743 (not c!272058)) b!1671797))

(assert (= (or b!1671796 b!1671797) bm!106612))

(assert (= (and d!505743 (not res!749745)) b!1671798))

(assert (= (and b!1671798 res!749744) b!1671791))

(assert (= (and b!1671791 res!749747) b!1671799))

(assert (= (and b!1671799 res!749743) b!1671794))

(assert (= (and b!1671794 res!749749) b!1671793))

(assert (= (and b!1671793 res!749748) b!1671792))

(assert (= (and b!1671792 res!749746) b!1671795))

(declare-fun m!2038983 () Bool)

(assert (=> b!1671799 m!2038983))

(declare-fun m!2038985 () Bool)

(assert (=> b!1671799 m!2038985))

(assert (=> b!1671799 m!2037359))

(declare-fun m!2038987 () Bool)

(assert (=> b!1671799 m!2038987))

(assert (=> b!1671794 m!2038983))

(declare-fun m!2038989 () Bool)

(assert (=> b!1671794 m!2038989))

(assert (=> b!1671794 m!2038989))

(declare-fun m!2038991 () Bool)

(assert (=> b!1671794 m!2038991))

(assert (=> b!1671794 m!2038991))

(declare-fun m!2038993 () Bool)

(assert (=> b!1671794 m!2038993))

(assert (=> bm!106612 m!2037359))

(declare-fun m!2038995 () Bool)

(assert (=> bm!106612 m!2038995))

(assert (=> b!1671792 m!2038983))

(assert (=> b!1671792 m!2038989))

(assert (=> b!1671792 m!2038989))

(assert (=> b!1671792 m!2038991))

(assert (=> b!1671792 m!2038991))

(declare-fun m!2038997 () Bool)

(assert (=> b!1671792 m!2038997))

(assert (=> b!1671793 m!2038983))

(declare-fun m!2038999 () Bool)

(assert (=> b!1671793 m!2038999))

(assert (=> b!1671793 m!2038999))

(declare-fun m!2039001 () Bool)

(assert (=> b!1671793 m!2039001))

(assert (=> b!1671791 m!2038983))

(assert (=> b!1671791 m!2038989))

(assert (=> b!1671791 m!2038989))

(assert (=> b!1671791 m!2038991))

(declare-fun m!2039003 () Bool)

(assert (=> b!1671798 m!2039003))

(assert (=> b!1671797 m!2037359))

(declare-fun m!2039005 () Bool)

(assert (=> b!1671797 m!2039005))

(declare-fun m!2039007 () Bool)

(assert (=> d!505743 m!2039007))

(assert (=> d!505743 m!2037359))

(assert (=> d!505743 m!2037359))

(declare-fun m!2039009 () Bool)

(assert (=> d!505743 m!2039009))

(assert (=> d!505743 m!2037359))

(assert (=> d!505743 m!2037359))

(declare-fun m!2039011 () Bool)

(assert (=> d!505743 m!2039011))

(assert (=> d!505743 m!2037861))

(assert (=> b!1671795 m!2038983))

(declare-fun m!2039013 () Bool)

(assert (=> b!1671795 m!2039013))

(assert (=> b!1671288 d!505743))

(declare-fun d!505745 () Bool)

(declare-fun e!1071278 () Bool)

(assert (=> d!505745 e!1071278))

(declare-fun res!749752 () Bool)

(assert (=> d!505745 (=> (not res!749752) (not e!1071278))))

(declare-fun e!1071276 () Bool)

(assert (=> d!505745 (= res!749752 e!1071276)))

(declare-fun c!272059 () Bool)

(declare-fun lt!631463 () tuple2!18142)

(assert (=> d!505745 (= c!272059 (> (size!14655 (_1!10473 lt!631463)) 0))))

(assert (=> d!505745 (= lt!631463 (lexTailRecV2!621 thiss!17113 rules!1846 lt!631044 (BalanceConc!12217 Empty!6136) lt!631044 (BalanceConc!12219 Empty!6137)))))

(assert (=> d!505745 (= (lex!1357 thiss!17113 rules!1846 lt!631044) lt!631463)))

(declare-fun b!1671800 () Bool)

(declare-fun e!1071277 () Bool)

(assert (=> b!1671800 (= e!1071276 e!1071277)))

(declare-fun res!749751 () Bool)

(assert (=> b!1671800 (= res!749751 (< (size!14656 (_2!10473 lt!631463)) (size!14656 lt!631044)))))

(assert (=> b!1671800 (=> (not res!749751) (not e!1071277))))

(declare-fun b!1671801 () Bool)

(declare-fun res!749750 () Bool)

(assert (=> b!1671801 (=> (not res!749750) (not e!1071278))))

(assert (=> b!1671801 (= res!749750 (= (list!7382 (_1!10473 lt!631463)) (_1!10476 (lexList!898 thiss!17113 rules!1846 (list!7381 lt!631044)))))))

(declare-fun b!1671802 () Bool)

(assert (=> b!1671802 (= e!1071276 (= (_2!10473 lt!631463) lt!631044))))

(declare-fun b!1671803 () Bool)

(assert (=> b!1671803 (= e!1071278 (= (list!7381 (_2!10473 lt!631463)) (_2!10476 (lexList!898 thiss!17113 rules!1846 (list!7381 lt!631044)))))))

(declare-fun b!1671804 () Bool)

(assert (=> b!1671804 (= e!1071277 (not (isEmpty!11478 (_1!10473 lt!631463))))))

(assert (= (and d!505745 c!272059) b!1671800))

(assert (= (and d!505745 (not c!272059)) b!1671802))

(assert (= (and b!1671800 res!749751) b!1671804))

(assert (= (and d!505745 res!749752) b!1671801))

(assert (= (and b!1671801 res!749750) b!1671803))

(declare-fun m!2039015 () Bool)

(assert (=> d!505745 m!2039015))

(declare-fun m!2039017 () Bool)

(assert (=> d!505745 m!2039017))

(declare-fun m!2039019 () Bool)

(assert (=> b!1671801 m!2039019))

(assert (=> b!1671801 m!2038083))

(assert (=> b!1671801 m!2038083))

(declare-fun m!2039021 () Bool)

(assert (=> b!1671801 m!2039021))

(declare-fun m!2039023 () Bool)

(assert (=> b!1671804 m!2039023))

(declare-fun m!2039025 () Bool)

(assert (=> b!1671800 m!2039025))

(declare-fun m!2039027 () Bool)

(assert (=> b!1671800 m!2039027))

(declare-fun m!2039029 () Bool)

(assert (=> b!1671803 m!2039029))

(assert (=> b!1671803 m!2038083))

(assert (=> b!1671803 m!2038083))

(assert (=> b!1671803 m!2039021))

(assert (=> b!1671288 d!505745))

(declare-fun d!505747 () Bool)

(assert (=> d!505747 (= (isDefined!2892 (maxPrefix!1433 thiss!17113 rules!1846 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))) (not (isEmpty!11485 (maxPrefix!1433 thiss!17113 rules!1846 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457))))))))))

(declare-fun bs!398166 () Bool)

(assert (= bs!398166 d!505747))

(assert (=> bs!398166 m!2038059))

(declare-fun m!2039031 () Bool)

(assert (=> bs!398166 m!2039031))

(assert (=> b!1671288 d!505747))

(declare-fun d!505749 () Bool)

(assert (=> d!505749 (= (list!7381 lt!631041) (list!7385 (c!271871 lt!631041)))))

(declare-fun bs!398167 () Bool)

(assert (= bs!398167 d!505749))

(declare-fun m!2039033 () Bool)

(assert (=> bs!398167 m!2039033))

(assert (=> b!1671288 d!505749))

(declare-fun d!505751 () Bool)

(declare-fun e!1071279 () Bool)

(assert (=> d!505751 e!1071279))

(declare-fun res!749753 () Bool)

(assert (=> d!505751 (=> (not res!749753) (not e!1071279))))

(assert (=> d!505751 (= res!749753 (= (list!7382 (_1!10473 (lex!1357 thiss!17113 rules!1846 (print!1404 thiss!17113 (seqFromList!2226 (t!152641 (t!152641 tokens!457))))))) (t!152641 (t!152641 tokens!457))))))

(declare-fun lt!631471 () Unit!31326)

(declare-fun e!1071280 () Unit!31326)

(assert (=> d!505751 (= lt!631471 e!1071280)))

(declare-fun c!272060 () Bool)

(assert (=> d!505751 (= c!272060 (or (is-Nil!18420 (t!152641 (t!152641 tokens!457))) (is-Nil!18420 (t!152641 (t!152641 (t!152641 tokens!457))))))))

(assert (=> d!505751 (not (isEmpty!11479 rules!1846))))

(assert (=> d!505751 (= (theoremInvertabilityWhenTokenListSeparable!310 thiss!17113 rules!1846 (t!152641 (t!152641 tokens!457))) lt!631471)))

(declare-fun b!1671805 () Bool)

(declare-fun Unit!31384 () Unit!31326)

(assert (=> b!1671805 (= e!1071280 Unit!31384)))

(declare-fun b!1671806 () Bool)

(declare-fun Unit!31385 () Unit!31326)

(assert (=> b!1671806 (= e!1071280 Unit!31385)))

(declare-fun lt!631477 () BalanceConc!12216)

(assert (=> b!1671806 (= lt!631477 (print!1404 thiss!17113 (seqFromList!2226 (t!152641 (t!152641 tokens!457)))))))

(declare-fun lt!631480 () BalanceConc!12216)

(assert (=> b!1671806 (= lt!631480 (print!1404 thiss!17113 (seqFromList!2226 (t!152641 (t!152641 (t!152641 tokens!457))))))))

(declare-fun lt!631482 () tuple2!18142)

(assert (=> b!1671806 (= lt!631482 (lex!1357 thiss!17113 rules!1846 lt!631480))))

(declare-fun lt!631474 () List!18488)

(assert (=> b!1671806 (= lt!631474 (list!7381 (charsOf!1893 (h!23821 (t!152641 (t!152641 tokens!457))))))))

(declare-fun lt!631488 () List!18488)

(assert (=> b!1671806 (= lt!631488 (list!7381 lt!631480))))

(declare-fun lt!631475 () Unit!31326)

(assert (=> b!1671806 (= lt!631475 (lemmaConcatTwoListThenFirstIsPrefix!1023 lt!631474 lt!631488))))

(assert (=> b!1671806 (isPrefix!1502 lt!631474 (++!5024 lt!631474 lt!631488))))

(declare-fun lt!631467 () Unit!31326)

(assert (=> b!1671806 (= lt!631467 lt!631475)))

(declare-fun lt!631466 () Unit!31326)

(assert (=> b!1671806 (= lt!631466 (theoremInvertabilityWhenTokenListSeparable!310 thiss!17113 rules!1846 (t!152641 (t!152641 (t!152641 tokens!457)))))))

(declare-fun lt!631469 () Unit!31326)

(assert (=> b!1671806 (= lt!631469 (seqFromListBHdTlConstructive!313 (h!23821 (t!152641 (t!152641 (t!152641 tokens!457)))) (t!152641 (t!152641 (t!152641 (t!152641 tokens!457)))) (_1!10473 lt!631482)))))

(assert (=> b!1671806 (= (list!7382 (_1!10473 lt!631482)) (list!7382 (prepend!832 (seqFromList!2226 (t!152641 (t!152641 (t!152641 (t!152641 tokens!457))))) (h!23821 (t!152641 (t!152641 (t!152641 tokens!457)))))))))

(declare-fun lt!631464 () Unit!31326)

(assert (=> b!1671806 (= lt!631464 lt!631469)))

(declare-fun lt!631468 () Option!3539)

(assert (=> b!1671806 (= lt!631468 (maxPrefix!1433 thiss!17113 rules!1846 (list!7381 lt!631477)))))

(assert (=> b!1671806 (= (print!1404 thiss!17113 (singletonSeq!1756 (h!23821 (t!152641 (t!152641 tokens!457))))) (printTailRec!924 thiss!17113 (singletonSeq!1756 (h!23821 (t!152641 (t!152641 tokens!457)))) 0 (BalanceConc!12217 Empty!6136)))))

(declare-fun lt!631473 () Unit!31326)

(declare-fun Unit!31386 () Unit!31326)

(assert (=> b!1671806 (= lt!631473 Unit!31386)))

(declare-fun lt!631479 () Unit!31326)

(assert (=> b!1671806 (= lt!631479 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!435 thiss!17113 rules!1846 (list!7381 (charsOf!1893 (h!23821 (t!152641 (t!152641 tokens!457))))) (list!7381 lt!631480)))))

(assert (=> b!1671806 (= (list!7381 (charsOf!1893 (h!23821 (t!152641 (t!152641 tokens!457))))) (originalCharacters!4058 (h!23821 (t!152641 (t!152641 tokens!457)))))))

(declare-fun lt!631481 () Unit!31326)

(declare-fun Unit!31387 () Unit!31326)

(assert (=> b!1671806 (= lt!631481 Unit!31387)))

(assert (=> b!1671806 (= (list!7381 (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 (t!152641 (t!152641 tokens!457))))) 0))) (Cons!18418 (head!3736 (originalCharacters!4058 (h!23821 (t!152641 (t!152641 (t!152641 tokens!457)))))) Nil!18418))))

(declare-fun lt!631472 () Unit!31326)

(declare-fun Unit!31388 () Unit!31326)

(assert (=> b!1671806 (= lt!631472 Unit!31388)))

(assert (=> b!1671806 (= (list!7381 (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 (t!152641 (t!152641 tokens!457))))) 0))) (Cons!18418 (head!3736 (list!7381 lt!631480)) Nil!18418))))

(declare-fun lt!631485 () Unit!31326)

(declare-fun Unit!31389 () Unit!31326)

(assert (=> b!1671806 (= lt!631485 Unit!31389)))

(assert (=> b!1671806 (= (list!7381 (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 (t!152641 (t!152641 tokens!457))))) 0))) (Cons!18418 (head!3739 lt!631480) Nil!18418))))

(declare-fun lt!631484 () Unit!31326)

(declare-fun Unit!31390 () Unit!31326)

(assert (=> b!1671806 (= lt!631484 Unit!31390)))

(assert (=> b!1671806 (isDefined!2892 (maxPrefix!1433 thiss!17113 rules!1846 (originalCharacters!4058 (h!23821 (t!152641 (t!152641 tokens!457))))))))

(declare-fun lt!631465 () Unit!31326)

(declare-fun Unit!31391 () Unit!31326)

(assert (=> b!1671806 (= lt!631465 Unit!31391)))

(assert (=> b!1671806 (isDefined!2892 (maxPrefix!1433 thiss!17113 rules!1846 (list!7381 (charsOf!1893 (h!23821 (t!152641 (t!152641 tokens!457)))))))))

(declare-fun lt!631478 () Unit!31326)

(declare-fun Unit!31392 () Unit!31326)

(assert (=> b!1671806 (= lt!631478 Unit!31392)))

(declare-fun lt!631489 () Unit!31326)

(declare-fun Unit!31393 () Unit!31326)

(assert (=> b!1671806 (= lt!631489 Unit!31393)))

(assert (=> b!1671806 (= (_1!10472 (get!5396 (maxPrefix!1433 thiss!17113 rules!1846 (list!7381 (charsOf!1893 (h!23821 (t!152641 (t!152641 tokens!457)))))))) (h!23821 (t!152641 (t!152641 tokens!457))))))

(declare-fun lt!631476 () Unit!31326)

(declare-fun Unit!31394 () Unit!31326)

(assert (=> b!1671806 (= lt!631476 Unit!31394)))

(assert (=> b!1671806 (isEmpty!11487 (_2!10472 (get!5396 (maxPrefix!1433 thiss!17113 rules!1846 (list!7381 (charsOf!1893 (h!23821 (t!152641 (t!152641 tokens!457)))))))))))

(declare-fun lt!631470 () Unit!31326)

(declare-fun Unit!31395 () Unit!31326)

(assert (=> b!1671806 (= lt!631470 Unit!31395)))

(assert (=> b!1671806 (matchR!2063 (regex!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457))))) (list!7381 (charsOf!1893 (h!23821 (t!152641 (t!152641 tokens!457))))))))

(declare-fun lt!631483 () Unit!31326)

(declare-fun Unit!31396 () Unit!31326)

(assert (=> b!1671806 (= lt!631483 Unit!31396)))

(assert (=> b!1671806 (= (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457)))) (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457)))))))

(declare-fun lt!631487 () Unit!31326)

(declare-fun Unit!31397 () Unit!31326)

(assert (=> b!1671806 (= lt!631487 Unit!31397)))

(declare-fun lt!631486 () Unit!31326)

(assert (=> b!1671806 (= lt!631486 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!193 thiss!17113 rules!1846 (h!23821 (t!152641 (t!152641 tokens!457))) (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457)))) (list!7381 lt!631480)))))

(declare-fun b!1671807 () Bool)

(assert (=> b!1671807 (= e!1071279 (isEmpty!11482 (_2!10473 (lex!1357 thiss!17113 rules!1846 (print!1404 thiss!17113 (seqFromList!2226 (t!152641 (t!152641 tokens!457))))))))))

(assert (= (and d!505751 c!272060) b!1671805))

(assert (= (and d!505751 (not c!272060)) b!1671806))

(assert (= (and d!505751 res!749753) b!1671807))

(declare-fun m!2039035 () Bool)

(assert (=> d!505751 m!2039035))

(assert (=> d!505751 m!2037105))

(assert (=> d!505751 m!2037105))

(assert (=> d!505751 m!2038063))

(assert (=> d!505751 m!2038063))

(declare-fun m!2039037 () Bool)

(assert (=> d!505751 m!2039037))

(assert (=> d!505751 m!2037093))

(declare-fun m!2039039 () Bool)

(assert (=> b!1671806 m!2039039))

(declare-fun m!2039041 () Bool)

(assert (=> b!1671806 m!2039041))

(declare-fun m!2039043 () Bool)

(assert (=> b!1671806 m!2039043))

(declare-fun m!2039045 () Bool)

(assert (=> b!1671806 m!2039045))

(assert (=> b!1671806 m!2038057))

(assert (=> b!1671806 m!2038065))

(declare-fun m!2039047 () Bool)

(assert (=> b!1671806 m!2039047))

(declare-fun m!2039049 () Bool)

(assert (=> b!1671806 m!2039049))

(assert (=> b!1671806 m!2037105))

(declare-fun m!2039051 () Bool)

(assert (=> b!1671806 m!2039051))

(declare-fun m!2039053 () Bool)

(assert (=> b!1671806 m!2039053))

(declare-fun m!2039055 () Bool)

(assert (=> b!1671806 m!2039055))

(declare-fun m!2039057 () Bool)

(assert (=> b!1671806 m!2039057))

(declare-fun m!2039059 () Bool)

(assert (=> b!1671806 m!2039059))

(assert (=> b!1671806 m!2039049))

(declare-fun m!2039061 () Bool)

(assert (=> b!1671806 m!2039061))

(declare-fun m!2039063 () Bool)

(assert (=> b!1671806 m!2039063))

(declare-fun m!2039065 () Bool)

(assert (=> b!1671806 m!2039065))

(assert (=> b!1671806 m!2038065))

(assert (=> b!1671806 m!2038833))

(declare-fun m!2039067 () Bool)

(assert (=> b!1671806 m!2039067))

(declare-fun m!2039069 () Bool)

(assert (=> b!1671806 m!2039069))

(assert (=> b!1671806 m!2039041))

(declare-fun m!2039071 () Bool)

(assert (=> b!1671806 m!2039071))

(assert (=> b!1671806 m!2038057))

(assert (=> b!1671806 m!2038833))

(assert (=> b!1671806 m!2039067))

(declare-fun m!2039073 () Bool)

(assert (=> b!1671806 m!2039073))

(declare-fun m!2039075 () Bool)

(assert (=> b!1671806 m!2039075))

(assert (=> b!1671806 m!2038833))

(assert (=> b!1671806 m!2039043))

(declare-fun m!2039077 () Bool)

(assert (=> b!1671806 m!2039077))

(declare-fun m!2039079 () Bool)

(assert (=> b!1671806 m!2039079))

(declare-fun m!2039081 () Bool)

(assert (=> b!1671806 m!2039081))

(assert (=> b!1671806 m!2039067))

(declare-fun m!2039083 () Bool)

(assert (=> b!1671806 m!2039083))

(declare-fun m!2039085 () Bool)

(assert (=> b!1671806 m!2039085))

(assert (=> b!1671806 m!2039067))

(declare-fun m!2039087 () Bool)

(assert (=> b!1671806 m!2039087))

(assert (=> b!1671806 m!2039085))

(declare-fun m!2039089 () Bool)

(assert (=> b!1671806 m!2039089))

(assert (=> b!1671806 m!2039061))

(declare-fun m!2039091 () Bool)

(assert (=> b!1671806 m!2039091))

(assert (=> b!1671806 m!2039043))

(declare-fun m!2039093 () Bool)

(assert (=> b!1671806 m!2039093))

(declare-fun m!2039095 () Bool)

(assert (=> b!1671806 m!2039095))

(declare-fun m!2039097 () Bool)

(assert (=> b!1671806 m!2039097))

(assert (=> b!1671806 m!2038833))

(declare-fun m!2039099 () Bool)

(assert (=> b!1671806 m!2039099))

(assert (=> b!1671806 m!2039055))

(assert (=> b!1671806 m!2039063))

(assert (=> b!1671806 m!2039055))

(declare-fun m!2039101 () Bool)

(assert (=> b!1671806 m!2039101))

(assert (=> b!1671806 m!2037105))

(assert (=> b!1671806 m!2038063))

(declare-fun m!2039103 () Bool)

(assert (=> b!1671806 m!2039103))

(assert (=> b!1671806 m!2039071))

(assert (=> b!1671806 m!2039051))

(assert (=> b!1671806 m!2039079))

(assert (=> b!1671807 m!2037105))

(assert (=> b!1671807 m!2037105))

(assert (=> b!1671807 m!2038063))

(assert (=> b!1671807 m!2038063))

(assert (=> b!1671807 m!2039037))

(declare-fun m!2039105 () Bool)

(assert (=> b!1671807 m!2039105))

(assert (=> b!1671288 d!505751))

(declare-fun d!505753 () Bool)

(declare-fun lt!631491 () BalanceConc!12216)

(assert (=> d!505753 (= (list!7381 lt!631491) (printListTailRec!418 thiss!17113 (dropList!722 (singletonSeq!1756 (h!23821 (t!152641 tokens!457))) 0) (list!7381 (BalanceConc!12217 Empty!6136))))))

(declare-fun e!1071281 () BalanceConc!12216)

(assert (=> d!505753 (= lt!631491 e!1071281)))

(declare-fun c!272061 () Bool)

(assert (=> d!505753 (= c!272061 (>= 0 (size!14655 (singletonSeq!1756 (h!23821 (t!152641 tokens!457))))))))

(declare-fun e!1071282 () Bool)

(assert (=> d!505753 e!1071282))

(declare-fun res!749754 () Bool)

(assert (=> d!505753 (=> (not res!749754) (not e!1071282))))

(assert (=> d!505753 (= res!749754 (>= 0 0))))

(assert (=> d!505753 (= (printTailRec!924 thiss!17113 (singletonSeq!1756 (h!23821 (t!152641 tokens!457))) 0 (BalanceConc!12217 Empty!6136)) lt!631491)))

(declare-fun b!1671808 () Bool)

(assert (=> b!1671808 (= e!1071282 (<= 0 (size!14655 (singletonSeq!1756 (h!23821 (t!152641 tokens!457))))))))

(declare-fun b!1671809 () Bool)

(assert (=> b!1671809 (= e!1071281 (BalanceConc!12217 Empty!6136))))

(declare-fun b!1671810 () Bool)

(assert (=> b!1671810 (= e!1071281 (printTailRec!924 thiss!17113 (singletonSeq!1756 (h!23821 (t!152641 tokens!457))) (+ 0 1) (++!5023 (BalanceConc!12217 Empty!6136) (charsOf!1893 (apply!4973 (singletonSeq!1756 (h!23821 (t!152641 tokens!457))) 0)))))))

(declare-fun lt!631495 () List!18490)

(assert (=> b!1671810 (= lt!631495 (list!7382 (singletonSeq!1756 (h!23821 (t!152641 tokens!457)))))))

(declare-fun lt!631494 () Unit!31326)

(assert (=> b!1671810 (= lt!631494 (lemmaDropApply!625 lt!631495 0))))

(assert (=> b!1671810 (= (head!3738 (drop!945 lt!631495 0)) (apply!4977 lt!631495 0))))

(declare-fun lt!631496 () Unit!31326)

(assert (=> b!1671810 (= lt!631496 lt!631494)))

(declare-fun lt!631490 () List!18490)

(assert (=> b!1671810 (= lt!631490 (list!7382 (singletonSeq!1756 (h!23821 (t!152641 tokens!457)))))))

(declare-fun lt!631492 () Unit!31326)

(assert (=> b!1671810 (= lt!631492 (lemmaDropTail!605 lt!631490 0))))

(assert (=> b!1671810 (= (tail!2495 (drop!945 lt!631490 0)) (drop!945 lt!631490 (+ 0 1)))))

(declare-fun lt!631493 () Unit!31326)

(assert (=> b!1671810 (= lt!631493 lt!631492)))

(assert (= (and d!505753 res!749754) b!1671808))

(assert (= (and d!505753 c!272061) b!1671809))

(assert (= (and d!505753 (not c!272061)) b!1671810))

(declare-fun m!2039107 () Bool)

(assert (=> d!505753 m!2039107))

(assert (=> d!505753 m!2037867))

(declare-fun m!2039109 () Bool)

(assert (=> d!505753 m!2039109))

(assert (=> d!505753 m!2037867))

(declare-fun m!2039111 () Bool)

(assert (=> d!505753 m!2039111))

(assert (=> d!505753 m!2038071))

(assert (=> d!505753 m!2039107))

(assert (=> d!505753 m!2038071))

(declare-fun m!2039113 () Bool)

(assert (=> d!505753 m!2039113))

(assert (=> b!1671808 m!2038071))

(assert (=> b!1671808 m!2039113))

(declare-fun m!2039115 () Bool)

(assert (=> b!1671810 m!2039115))

(declare-fun m!2039117 () Bool)

(assert (=> b!1671810 m!2039117))

(assert (=> b!1671810 m!2038071))

(assert (=> b!1671810 m!2038905))

(declare-fun m!2039119 () Bool)

(assert (=> b!1671810 m!2039119))

(declare-fun m!2039121 () Bool)

(assert (=> b!1671810 m!2039121))

(declare-fun m!2039123 () Bool)

(assert (=> b!1671810 m!2039123))

(declare-fun m!2039125 () Bool)

(assert (=> b!1671810 m!2039125))

(declare-fun m!2039127 () Bool)

(assert (=> b!1671810 m!2039127))

(declare-fun m!2039129 () Bool)

(assert (=> b!1671810 m!2039129))

(declare-fun m!2039131 () Bool)

(assert (=> b!1671810 m!2039131))

(assert (=> b!1671810 m!2038071))

(declare-fun m!2039133 () Bool)

(assert (=> b!1671810 m!2039133))

(assert (=> b!1671810 m!2039121))

(assert (=> b!1671810 m!2039133))

(assert (=> b!1671810 m!2039125))

(assert (=> b!1671810 m!2039119))

(declare-fun m!2039135 () Bool)

(assert (=> b!1671810 m!2039135))

(assert (=> b!1671810 m!2038071))

(assert (=> b!1671810 m!2039127))

(declare-fun m!2039137 () Bool)

(assert (=> b!1671810 m!2039137))

(assert (=> b!1671288 d!505753))

(assert (=> b!1671288 d!505643))

(declare-fun b!1671811 () Bool)

(declare-fun res!749759 () Bool)

(declare-fun e!1071283 () Bool)

(assert (=> b!1671811 (=> (not res!749759) (not e!1071283))))

(declare-fun lt!631497 () Option!3539)

(assert (=> b!1671811 (= res!749759 (= (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!631497)))) (originalCharacters!4058 (_1!10472 (get!5396 lt!631497)))))))

(declare-fun b!1671812 () Bool)

(declare-fun res!749758 () Bool)

(assert (=> b!1671812 (=> (not res!749758) (not e!1071283))))

(assert (=> b!1671812 (= res!749758 (matchR!2063 (regex!3244 (rule!5134 (_1!10472 (get!5396 lt!631497)))) (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!631497))))))))

(declare-fun b!1671813 () Bool)

(declare-fun res!749760 () Bool)

(assert (=> b!1671813 (=> (not res!749760) (not e!1071283))))

(assert (=> b!1671813 (= res!749760 (= (value!102128 (_1!10472 (get!5396 lt!631497))) (apply!4976 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!631497)))) (seqFromList!2225 (originalCharacters!4058 (_1!10472 (get!5396 lt!631497)))))))))

(declare-fun b!1671814 () Bool)

(declare-fun res!749761 () Bool)

(assert (=> b!1671814 (=> (not res!749761) (not e!1071283))))

(assert (=> b!1671814 (= res!749761 (= (++!5024 (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!631497)))) (_2!10472 (get!5396 lt!631497))) (list!7381 lt!631041)))))

(declare-fun b!1671815 () Bool)

(assert (=> b!1671815 (= e!1071283 (contains!3221 rules!1846 (rule!5134 (_1!10472 (get!5396 lt!631497)))))))

(declare-fun bm!106613 () Bool)

(declare-fun call!106618 () Option!3539)

(assert (=> bm!106613 (= call!106618 (maxPrefixOneRule!836 thiss!17113 (h!23820 rules!1846) (list!7381 lt!631041)))))

(declare-fun d!505755 () Bool)

(declare-fun e!1071285 () Bool)

(assert (=> d!505755 e!1071285))

(declare-fun res!749757 () Bool)

(assert (=> d!505755 (=> res!749757 e!1071285)))

(assert (=> d!505755 (= res!749757 (isEmpty!11485 lt!631497))))

(declare-fun e!1071284 () Option!3539)

(assert (=> d!505755 (= lt!631497 e!1071284)))

(declare-fun c!272062 () Bool)

(assert (=> d!505755 (= c!272062 (and (is-Cons!18419 rules!1846) (is-Nil!18419 (t!152640 rules!1846))))))

(declare-fun lt!631501 () Unit!31326)

(declare-fun lt!631499 () Unit!31326)

(assert (=> d!505755 (= lt!631501 lt!631499)))

(assert (=> d!505755 (isPrefix!1502 (list!7381 lt!631041) (list!7381 lt!631041))))

(assert (=> d!505755 (= lt!631499 (lemmaIsPrefixRefl!1021 (list!7381 lt!631041) (list!7381 lt!631041)))))

(assert (=> d!505755 (rulesValidInductive!1043 thiss!17113 rules!1846)))

(assert (=> d!505755 (= (maxPrefix!1433 thiss!17113 rules!1846 (list!7381 lt!631041)) lt!631497)))

(declare-fun b!1671816 () Bool)

(assert (=> b!1671816 (= e!1071284 call!106618)))

(declare-fun b!1671817 () Bool)

(declare-fun lt!631500 () Option!3539)

(declare-fun lt!631498 () Option!3539)

(assert (=> b!1671817 (= e!1071284 (ite (and (is-None!3538 lt!631500) (is-None!3538 lt!631498)) None!3538 (ite (is-None!3538 lt!631498) lt!631500 (ite (is-None!3538 lt!631500) lt!631498 (ite (>= (size!14653 (_1!10472 (v!24811 lt!631500))) (size!14653 (_1!10472 (v!24811 lt!631498)))) lt!631500 lt!631498)))))))

(assert (=> b!1671817 (= lt!631500 call!106618)))

(assert (=> b!1671817 (= lt!631498 (maxPrefix!1433 thiss!17113 (t!152640 rules!1846) (list!7381 lt!631041)))))

(declare-fun b!1671818 () Bool)

(assert (=> b!1671818 (= e!1071285 e!1071283)))

(declare-fun res!749756 () Bool)

(assert (=> b!1671818 (=> (not res!749756) (not e!1071283))))

(assert (=> b!1671818 (= res!749756 (isDefined!2892 lt!631497))))

(declare-fun b!1671819 () Bool)

(declare-fun res!749755 () Bool)

(assert (=> b!1671819 (=> (not res!749755) (not e!1071283))))

(assert (=> b!1671819 (= res!749755 (< (size!14657 (_2!10472 (get!5396 lt!631497))) (size!14657 (list!7381 lt!631041))))))

(assert (= (and d!505755 c!272062) b!1671816))

(assert (= (and d!505755 (not c!272062)) b!1671817))

(assert (= (or b!1671816 b!1671817) bm!106613))

(assert (= (and d!505755 (not res!749757)) b!1671818))

(assert (= (and b!1671818 res!749756) b!1671811))

(assert (= (and b!1671811 res!749759) b!1671819))

(assert (= (and b!1671819 res!749755) b!1671814))

(assert (= (and b!1671814 res!749761) b!1671813))

(assert (= (and b!1671813 res!749760) b!1671812))

(assert (= (and b!1671812 res!749758) b!1671815))

(declare-fun m!2039139 () Bool)

(assert (=> b!1671819 m!2039139))

(declare-fun m!2039141 () Bool)

(assert (=> b!1671819 m!2039141))

(assert (=> b!1671819 m!2038095))

(declare-fun m!2039143 () Bool)

(assert (=> b!1671819 m!2039143))

(assert (=> b!1671814 m!2039139))

(declare-fun m!2039145 () Bool)

(assert (=> b!1671814 m!2039145))

(assert (=> b!1671814 m!2039145))

(declare-fun m!2039147 () Bool)

(assert (=> b!1671814 m!2039147))

(assert (=> b!1671814 m!2039147))

(declare-fun m!2039149 () Bool)

(assert (=> b!1671814 m!2039149))

(assert (=> bm!106613 m!2038095))

(declare-fun m!2039151 () Bool)

(assert (=> bm!106613 m!2039151))

(assert (=> b!1671812 m!2039139))

(assert (=> b!1671812 m!2039145))

(assert (=> b!1671812 m!2039145))

(assert (=> b!1671812 m!2039147))

(assert (=> b!1671812 m!2039147))

(declare-fun m!2039153 () Bool)

(assert (=> b!1671812 m!2039153))

(assert (=> b!1671813 m!2039139))

(declare-fun m!2039155 () Bool)

(assert (=> b!1671813 m!2039155))

(assert (=> b!1671813 m!2039155))

(declare-fun m!2039157 () Bool)

(assert (=> b!1671813 m!2039157))

(assert (=> b!1671811 m!2039139))

(assert (=> b!1671811 m!2039145))

(assert (=> b!1671811 m!2039145))

(assert (=> b!1671811 m!2039147))

(declare-fun m!2039159 () Bool)

(assert (=> b!1671818 m!2039159))

(assert (=> b!1671817 m!2038095))

(declare-fun m!2039161 () Bool)

(assert (=> b!1671817 m!2039161))

(declare-fun m!2039163 () Bool)

(assert (=> d!505755 m!2039163))

(assert (=> d!505755 m!2038095))

(assert (=> d!505755 m!2038095))

(declare-fun m!2039165 () Bool)

(assert (=> d!505755 m!2039165))

(assert (=> d!505755 m!2038095))

(assert (=> d!505755 m!2038095))

(declare-fun m!2039167 () Bool)

(assert (=> d!505755 m!2039167))

(assert (=> d!505755 m!2037861))

(assert (=> b!1671815 m!2039139))

(declare-fun m!2039169 () Bool)

(assert (=> b!1671815 m!2039169))

(assert (=> b!1671288 d!505755))

(assert (=> b!1671288 d!505423))

(declare-fun e!1071287 () Bool)

(declare-fun lt!631502 () List!18488)

(declare-fun b!1671823 () Bool)

(assert (=> b!1671823 (= e!1071287 (or (not (= lt!631052 Nil!18418)) (= lt!631502 lt!631038)))))

(declare-fun b!1671822 () Bool)

(declare-fun res!749762 () Bool)

(assert (=> b!1671822 (=> (not res!749762) (not e!1071287))))

(assert (=> b!1671822 (= res!749762 (= (size!14657 lt!631502) (+ (size!14657 lt!631038) (size!14657 lt!631052))))))

(declare-fun b!1671821 () Bool)

(declare-fun e!1071286 () List!18488)

(assert (=> b!1671821 (= e!1071286 (Cons!18418 (h!23819 lt!631038) (++!5024 (t!152639 lt!631038) lt!631052)))))

(declare-fun d!505757 () Bool)

(assert (=> d!505757 e!1071287))

(declare-fun res!749763 () Bool)

(assert (=> d!505757 (=> (not res!749763) (not e!1071287))))

(assert (=> d!505757 (= res!749763 (= (content!2576 lt!631502) (set.union (content!2576 lt!631038) (content!2576 lt!631052))))))

(assert (=> d!505757 (= lt!631502 e!1071286)))

(declare-fun c!272063 () Bool)

(assert (=> d!505757 (= c!272063 (is-Nil!18418 lt!631038))))

(assert (=> d!505757 (= (++!5024 lt!631038 lt!631052) lt!631502)))

(declare-fun b!1671820 () Bool)

(assert (=> b!1671820 (= e!1071286 lt!631052)))

(assert (= (and d!505757 c!272063) b!1671820))

(assert (= (and d!505757 (not c!272063)) b!1671821))

(assert (= (and d!505757 res!749763) b!1671822))

(assert (= (and b!1671822 res!749762) b!1671823))

(declare-fun m!2039171 () Bool)

(assert (=> b!1671822 m!2039171))

(assert (=> b!1671822 m!2038843))

(declare-fun m!2039173 () Bool)

(assert (=> b!1671822 m!2039173))

(declare-fun m!2039175 () Bool)

(assert (=> b!1671821 m!2039175))

(declare-fun m!2039177 () Bool)

(assert (=> d!505757 m!2039177))

(declare-fun m!2039179 () Bool)

(assert (=> d!505757 m!2039179))

(declare-fun m!2039181 () Bool)

(assert (=> d!505757 m!2039181))

(assert (=> b!1671288 d!505757))

(declare-fun d!505759 () Bool)

(assert (=> d!505759 (= (list!7381 lt!631044) (list!7385 (c!271871 lt!631044)))))

(declare-fun bs!398168 () Bool)

(assert (= bs!398168 d!505759))

(declare-fun m!2039183 () Bool)

(assert (=> bs!398168 m!2039183))

(assert (=> b!1671288 d!505759))

(declare-fun d!505761 () Bool)

(assert (=> d!505761 (= (list!7382 (prepend!832 (seqFromList!2226 (t!152641 (t!152641 (t!152641 tokens!457)))) (h!23821 (t!152641 (t!152641 tokens!457))))) (list!7386 (c!271873 (prepend!832 (seqFromList!2226 (t!152641 (t!152641 (t!152641 tokens!457)))) (h!23821 (t!152641 (t!152641 tokens!457)))))))))

(declare-fun bs!398169 () Bool)

(assert (= bs!398169 d!505761))

(declare-fun m!2039185 () Bool)

(assert (=> bs!398169 m!2039185))

(assert (=> b!1671288 d!505761))

(declare-fun d!505763 () Bool)

(declare-fun e!1071288 () Bool)

(assert (=> d!505763 e!1071288))

(declare-fun res!749764 () Bool)

(assert (=> d!505763 (=> (not res!749764) (not e!1071288))))

(declare-fun lt!631503 () BalanceConc!12216)

(assert (=> d!505763 (= res!749764 (= (list!7381 lt!631503) (Cons!18418 (apply!4971 (charsOf!1893 (h!23821 (t!152641 (t!152641 tokens!457)))) 0) Nil!18418)))))

(assert (=> d!505763 (= lt!631503 (singleton!785 (apply!4971 (charsOf!1893 (h!23821 (t!152641 (t!152641 tokens!457)))) 0)))))

(assert (=> d!505763 (= (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 (t!152641 tokens!457)))) 0)) lt!631503)))

(declare-fun b!1671824 () Bool)

(assert (=> b!1671824 (= e!1071288 (isBalanced!1911 (c!271871 lt!631503)))))

(assert (= (and d!505763 res!749764) b!1671824))

(declare-fun m!2039187 () Bool)

(assert (=> d!505763 m!2039187))

(assert (=> d!505763 m!2038087))

(declare-fun m!2039189 () Bool)

(assert (=> d!505763 m!2039189))

(declare-fun m!2039191 () Bool)

(assert (=> b!1671824 m!2039191))

(assert (=> b!1671288 d!505763))

(declare-fun b!1671835 () Bool)

(declare-fun e!1071294 () List!18488)

(declare-fun list!7390 (IArray!12277) List!18488)

(assert (=> b!1671835 (= e!1071294 (list!7390 (xs!8980 (c!271871 lt!630494))))))

(declare-fun b!1671834 () Bool)

(declare-fun e!1071293 () List!18488)

(assert (=> b!1671834 (= e!1071293 e!1071294)))

(declare-fun c!272069 () Bool)

(assert (=> b!1671834 (= c!272069 (is-Leaf!8979 (c!271871 lt!630494)))))

(declare-fun b!1671836 () Bool)

(assert (=> b!1671836 (= e!1071294 (++!5024 (list!7385 (left!14732 (c!271871 lt!630494))) (list!7385 (right!15062 (c!271871 lt!630494)))))))

(declare-fun b!1671833 () Bool)

(assert (=> b!1671833 (= e!1071293 Nil!18418)))

(declare-fun d!505765 () Bool)

(declare-fun c!272068 () Bool)

(assert (=> d!505765 (= c!272068 (is-Empty!6136 (c!271871 lt!630494)))))

(assert (=> d!505765 (= (list!7385 (c!271871 lt!630494)) e!1071293)))

(assert (= (and d!505765 c!272068) b!1671833))

(assert (= (and d!505765 (not c!272068)) b!1671834))

(assert (= (and b!1671834 c!272069) b!1671835))

(assert (= (and b!1671834 (not c!272069)) b!1671836))

(declare-fun m!2039193 () Bool)

(assert (=> b!1671835 m!2039193))

(declare-fun m!2039195 () Bool)

(assert (=> b!1671836 m!2039195))

(declare-fun m!2039197 () Bool)

(assert (=> b!1671836 m!2039197))

(assert (=> b!1671836 m!2039195))

(assert (=> b!1671836 m!2039197))

(declare-fun m!2039199 () Bool)

(assert (=> b!1671836 m!2039199))

(assert (=> d!505497 d!505765))

(declare-fun b!1671855 () Bool)

(declare-fun res!749775 () Bool)

(declare-fun e!1071309 () Bool)

(assert (=> b!1671855 (=> res!749775 e!1071309)))

(assert (=> b!1671855 (= res!749775 (not (is-Concat!7907 lt!630488)))))

(declare-fun e!1071315 () Bool)

(assert (=> b!1671855 (= e!1071315 e!1071309)))

(declare-fun d!505767 () Bool)

(declare-fun res!749778 () Bool)

(declare-fun e!1071311 () Bool)

(assert (=> d!505767 (=> res!749778 e!1071311)))

(assert (=> d!505767 (= res!749778 (is-ElementMatch!4572 lt!630488))))

(assert (=> d!505767 (= (validRegex!1833 lt!630488) e!1071311)))

(declare-fun b!1671856 () Bool)

(declare-fun e!1071313 () Bool)

(declare-fun call!106625 () Bool)

(assert (=> b!1671856 (= e!1071313 call!106625)))

(declare-fun b!1671857 () Bool)

(assert (=> b!1671857 (= e!1071309 e!1071313)))

(declare-fun res!749779 () Bool)

(assert (=> b!1671857 (=> (not res!749779) (not e!1071313))))

(declare-fun call!106626 () Bool)

(assert (=> b!1671857 (= res!749779 call!106626)))

(declare-fun c!272075 () Bool)

(declare-fun c!272074 () Bool)

(declare-fun bm!106620 () Bool)

(declare-fun call!106627 () Bool)

(assert (=> bm!106620 (= call!106627 (validRegex!1833 (ite c!272074 (reg!4901 lt!630488) (ite c!272075 (regOne!9657 lt!630488) (regTwo!9656 lt!630488)))))))

(declare-fun b!1671858 () Bool)

(declare-fun e!1071312 () Bool)

(assert (=> b!1671858 (= e!1071312 e!1071315)))

(assert (=> b!1671858 (= c!272075 (is-Union!4572 lt!630488))))

(declare-fun bm!106621 () Bool)

(assert (=> bm!106621 (= call!106626 (validRegex!1833 (ite c!272075 (regTwo!9657 lt!630488) (regOne!9656 lt!630488))))))

(declare-fun b!1671859 () Bool)

(declare-fun e!1071314 () Bool)

(assert (=> b!1671859 (= e!1071312 e!1071314)))

(declare-fun res!749777 () Bool)

(assert (=> b!1671859 (= res!749777 (not (nullable!1362 (reg!4901 lt!630488))))))

(assert (=> b!1671859 (=> (not res!749777) (not e!1071314))))

(declare-fun b!1671860 () Bool)

(assert (=> b!1671860 (= e!1071314 call!106627)))

(declare-fun b!1671861 () Bool)

(declare-fun e!1071310 () Bool)

(assert (=> b!1671861 (= e!1071310 call!106626)))

(declare-fun b!1671862 () Bool)

(assert (=> b!1671862 (= e!1071311 e!1071312)))

(assert (=> b!1671862 (= c!272074 (is-Star!4572 lt!630488))))

(declare-fun b!1671863 () Bool)

(declare-fun res!749776 () Bool)

(assert (=> b!1671863 (=> (not res!749776) (not e!1071310))))

(assert (=> b!1671863 (= res!749776 call!106625)))

(assert (=> b!1671863 (= e!1071315 e!1071310)))

(declare-fun bm!106622 () Bool)

(assert (=> bm!106622 (= call!106625 call!106627)))

(assert (= (and d!505767 (not res!749778)) b!1671862))

(assert (= (and b!1671862 c!272074) b!1671859))

(assert (= (and b!1671862 (not c!272074)) b!1671858))

(assert (= (and b!1671859 res!749777) b!1671860))

(assert (= (and b!1671858 c!272075) b!1671863))

(assert (= (and b!1671858 (not c!272075)) b!1671855))

(assert (= (and b!1671863 res!749776) b!1671861))

(assert (= (and b!1671855 (not res!749775)) b!1671857))

(assert (= (and b!1671857 res!749779) b!1671856))

(assert (= (or b!1671861 b!1671857) bm!106621))

(assert (= (or b!1671863 b!1671856) bm!106622))

(assert (= (or b!1671860 bm!106622) bm!106620))

(declare-fun m!2039201 () Bool)

(assert (=> bm!106620 m!2039201))

(declare-fun m!2039203 () Bool)

(assert (=> bm!106621 m!2039203))

(declare-fun m!2039205 () Bool)

(assert (=> b!1671859 m!2039205))

(assert (=> d!505391 d!505767))

(declare-fun d!505769 () Bool)

(declare-fun e!1071318 () Bool)

(assert (=> d!505769 e!1071318))

(declare-fun res!749782 () Bool)

(assert (=> d!505769 (=> (not res!749782) (not e!1071318))))

(declare-fun lt!631506 () List!18497)

(declare-fun noDuplicate!257 (List!18497) Bool)

(assert (=> d!505769 (= res!749782 (noDuplicate!257 lt!631506))))

(declare-fun choose!10069 ((Set Context!1836)) List!18497)

(assert (=> d!505769 (= lt!631506 (choose!10069 (focus!224 lt!630488)))))

(assert (=> d!505769 (= (toList!964 (focus!224 lt!630488)) lt!631506)))

(declare-fun b!1671866 () Bool)

(declare-fun content!2579 (List!18497) (Set Context!1836))

(assert (=> b!1671866 (= e!1071318 (= (content!2579 lt!631506) (focus!224 lt!630488)))))

(assert (= (and d!505769 res!749782) b!1671866))

(declare-fun m!2039207 () Bool)

(assert (=> d!505769 m!2039207))

(assert (=> d!505769 m!2037337))

(declare-fun m!2039209 () Bool)

(assert (=> d!505769 m!2039209))

(declare-fun m!2039211 () Bool)

(assert (=> b!1671866 m!2039211))

(assert (=> d!505391 d!505769))

(declare-fun d!505771 () Bool)

(declare-fun c!272078 () Bool)

(assert (=> d!505771 (= c!272078 (= lt!630622 (size!14656 (++!5023 lt!630500 lt!630486))))))

(declare-fun e!1071321 () Bool)

(assert (=> d!505771 (= (prefixMatchZipperSequence!678 lt!630620 (++!5023 lt!630500 lt!630486) lt!630622) e!1071321)))

(declare-fun b!1671871 () Bool)

(declare-fun lostCauseZipper!38 ((Set Context!1836)) Bool)

(assert (=> b!1671871 (= e!1071321 (not (lostCauseZipper!38 lt!630620)))))

(declare-fun b!1671872 () Bool)

(declare-fun derivationStepZipper!62 ((Set Context!1836) C!9318) (Set Context!1836))

(assert (=> b!1671872 (= e!1071321 (prefixMatchZipperSequence!678 (derivationStepZipper!62 lt!630620 (apply!4971 (++!5023 lt!630500 lt!630486) lt!630622)) (++!5023 lt!630500 lt!630486) (+ lt!630622 1)))))

(assert (= (and d!505771 c!272078) b!1671871))

(assert (= (and d!505771 (not c!272078)) b!1671872))

(assert (=> d!505771 m!2037013))

(declare-fun m!2039213 () Bool)

(assert (=> d!505771 m!2039213))

(declare-fun m!2039215 () Bool)

(assert (=> b!1671871 m!2039215))

(assert (=> b!1671872 m!2037013))

(declare-fun m!2039217 () Bool)

(assert (=> b!1671872 m!2039217))

(assert (=> b!1671872 m!2039217))

(declare-fun m!2039219 () Bool)

(assert (=> b!1671872 m!2039219))

(assert (=> b!1671872 m!2039219))

(assert (=> b!1671872 m!2037013))

(declare-fun m!2039221 () Bool)

(assert (=> b!1671872 m!2039221))

(assert (=> d!505391 d!505771))

(declare-fun d!505773 () Bool)

(assert (=> d!505773 (= (list!7381 (++!5023 lt!630500 lt!630486)) (list!7385 (c!271871 (++!5023 lt!630500 lt!630486))))))

(declare-fun bs!398170 () Bool)

(assert (= bs!398170 d!505773))

(declare-fun m!2039223 () Bool)

(assert (=> bs!398170 m!2039223))

(assert (=> d!505391 d!505773))

(declare-fun d!505775 () Bool)

(declare-fun c!272079 () Bool)

(assert (=> d!505775 (= c!272079 (isEmpty!11487 lt!630623))))

(declare-fun e!1071322 () Bool)

(assert (=> d!505775 (= (prefixMatch!485 lt!630488 lt!630623) e!1071322)))

(declare-fun b!1671873 () Bool)

(assert (=> b!1671873 (= e!1071322 (not (lostCause!479 lt!630488)))))

(declare-fun b!1671874 () Bool)

(assert (=> b!1671874 (= e!1071322 (prefixMatch!485 (derivativeStep!1131 lt!630488 (head!3736 lt!630623)) (tail!2496 lt!630623)))))

(assert (= (and d!505775 c!272079) b!1671873))

(assert (= (and d!505775 (not c!272079)) b!1671874))

(declare-fun m!2039225 () Bool)

(assert (=> d!505775 m!2039225))

(assert (=> b!1671873 m!2037951))

(declare-fun m!2039227 () Bool)

(assert (=> b!1671874 m!2039227))

(assert (=> b!1671874 m!2039227))

(declare-fun m!2039229 () Bool)

(assert (=> b!1671874 m!2039229))

(declare-fun m!2039231 () Bool)

(assert (=> b!1671874 m!2039231))

(assert (=> b!1671874 m!2039229))

(assert (=> b!1671874 m!2039231))

(declare-fun m!2039233 () Bool)

(assert (=> b!1671874 m!2039233))

(assert (=> d!505391 d!505775))

(declare-fun d!505777 () Bool)

(declare-fun e!1071325 () Bool)

(assert (=> d!505777 e!1071325))

(declare-fun res!749786 () Bool)

(assert (=> d!505777 (=> (not res!749786) (not e!1071325))))

(assert (=> d!505777 (= res!749786 (validRegex!1833 lt!630488))))

(assert (=> d!505777 (= (focus!224 lt!630488) (set.insert (Context!1837 (Cons!18426 lt!630488 Nil!18426)) (as set.empty (Set Context!1836))))))

(declare-fun b!1671877 () Bool)

(declare-fun unfocusZipper!38 (List!18497) Regex!4572)

(assert (=> b!1671877 (= e!1071325 (= (unfocusZipper!38 (toList!964 (set.insert (Context!1837 (Cons!18426 lt!630488 Nil!18426)) (as set.empty (Set Context!1836))))) lt!630488))))

(assert (= (and d!505777 res!749786) b!1671877))

(assert (=> d!505777 m!2037351))

(declare-fun m!2039235 () Bool)

(assert (=> d!505777 m!2039235))

(assert (=> b!1671877 m!2039235))

(assert (=> b!1671877 m!2039235))

(declare-fun m!2039237 () Bool)

(assert (=> b!1671877 m!2039237))

(assert (=> b!1671877 m!2039237))

(declare-fun m!2039239 () Bool)

(assert (=> b!1671877 m!2039239))

(assert (=> d!505391 d!505777))

(declare-fun d!505779 () Bool)

(declare-fun c!272082 () Bool)

(assert (=> d!505779 (= c!272082 (isEmpty!11487 (dropList!721 (++!5023 lt!630500 lt!630486) lt!630622)))))

(declare-fun e!1071328 () Bool)

(assert (=> d!505779 (= (prefixMatchZipper!203 lt!630620 (dropList!721 (++!5023 lt!630500 lt!630486) lt!630622)) e!1071328)))

(declare-fun b!1671882 () Bool)

(assert (=> b!1671882 (= e!1071328 (not (lostCauseZipper!38 lt!630620)))))

(declare-fun b!1671883 () Bool)

(assert (=> b!1671883 (= e!1071328 (prefixMatchZipper!203 (derivationStepZipper!62 lt!630620 (head!3736 (dropList!721 (++!5023 lt!630500 lt!630486) lt!630622))) (tail!2496 (dropList!721 (++!5023 lt!630500 lt!630486) lt!630622))))))

(assert (= (and d!505779 c!272082) b!1671882))

(assert (= (and d!505779 (not c!272082)) b!1671883))

(assert (=> d!505779 m!2037333))

(declare-fun m!2039241 () Bool)

(assert (=> d!505779 m!2039241))

(assert (=> b!1671882 m!2039215))

(assert (=> b!1671883 m!2037333))

(declare-fun m!2039243 () Bool)

(assert (=> b!1671883 m!2039243))

(assert (=> b!1671883 m!2039243))

(declare-fun m!2039245 () Bool)

(assert (=> b!1671883 m!2039245))

(assert (=> b!1671883 m!2037333))

(declare-fun m!2039247 () Bool)

(assert (=> b!1671883 m!2039247))

(assert (=> b!1671883 m!2039245))

(assert (=> b!1671883 m!2039247))

(declare-fun m!2039249 () Bool)

(assert (=> b!1671883 m!2039249))

(assert (=> d!505391 d!505779))

(declare-fun d!505781 () Bool)

(assert (=> d!505781 (= (prefixMatchZipper!203 lt!630620 (dropList!721 (++!5023 lt!630500 lt!630486) lt!630622)) (prefixMatchZipperSequence!678 lt!630620 (++!5023 lt!630500 lt!630486) lt!630622))))

(declare-fun lt!631509 () Unit!31326)

(declare-fun choose!10070 ((Set Context!1836) BalanceConc!12216 Int) Unit!31326)

(assert (=> d!505781 (= lt!631509 (choose!10070 lt!630620 (++!5023 lt!630500 lt!630486) lt!630622))))

(declare-fun e!1071331 () Bool)

(assert (=> d!505781 e!1071331))

(declare-fun res!749789 () Bool)

(assert (=> d!505781 (=> (not res!749789) (not e!1071331))))

(assert (=> d!505781 (= res!749789 (>= lt!630622 0))))

(assert (=> d!505781 (= (lemmaprefixMatchZipperSequenceEquivalent!203 lt!630620 (++!5023 lt!630500 lt!630486) lt!630622) lt!631509)))

(declare-fun b!1671886 () Bool)

(assert (=> b!1671886 (= e!1071331 (<= lt!630622 (size!14656 (++!5023 lt!630500 lt!630486))))))

(assert (= (and d!505781 res!749789) b!1671886))

(assert (=> d!505781 m!2037013))

(assert (=> d!505781 m!2037333))

(assert (=> d!505781 m!2037333))

(assert (=> d!505781 m!2037335))

(assert (=> d!505781 m!2037013))

(assert (=> d!505781 m!2037349))

(assert (=> d!505781 m!2037013))

(declare-fun m!2039251 () Bool)

(assert (=> d!505781 m!2039251))

(assert (=> b!1671886 m!2037013))

(assert (=> b!1671886 m!2039213))

(assert (=> d!505391 d!505781))

(declare-fun d!505783 () Bool)

(assert (=> d!505783 (= (prefixMatch!485 lt!630488 lt!630623) (prefixMatchZipper!203 lt!630619 lt!630623))))

(declare-fun lt!631512 () Unit!31326)

(declare-fun choose!10071 ((Set Context!1836) List!18497 Regex!4572 List!18488) Unit!31326)

(assert (=> d!505783 (= lt!631512 (choose!10071 lt!630619 lt!630625 lt!630488 lt!630623))))

(assert (=> d!505783 (validRegex!1833 lt!630488)))

(assert (=> d!505783 (= (prefixMatchZipperRegexEquiv!203 lt!630619 lt!630625 lt!630488 lt!630623) lt!631512)))

(declare-fun bs!398171 () Bool)

(assert (= bs!398171 d!505783))

(assert (=> bs!398171 m!2037343))

(assert (=> bs!398171 m!2037357))

(declare-fun m!2039253 () Bool)

(assert (=> bs!398171 m!2039253))

(assert (=> bs!398171 m!2037351))

(assert (=> d!505391 d!505783))

(declare-fun d!505785 () Bool)

(declare-fun c!272083 () Bool)

(assert (=> d!505785 (= c!272083 (= 0 (size!14656 (++!5023 lt!630500 lt!630486))))))

(declare-fun e!1071332 () Bool)

(assert (=> d!505785 (= (prefixMatchZipperSequence!678 (focus!224 lt!630488) (++!5023 lt!630500 lt!630486) 0) e!1071332)))

(declare-fun b!1671887 () Bool)

(assert (=> b!1671887 (= e!1071332 (not (lostCauseZipper!38 (focus!224 lt!630488))))))

(declare-fun b!1671888 () Bool)

(assert (=> b!1671888 (= e!1071332 (prefixMatchZipperSequence!678 (derivationStepZipper!62 (focus!224 lt!630488) (apply!4971 (++!5023 lt!630500 lt!630486) 0)) (++!5023 lt!630500 lt!630486) (+ 0 1)))))

(assert (= (and d!505785 c!272083) b!1671887))

(assert (= (and d!505785 (not c!272083)) b!1671888))

(assert (=> d!505785 m!2037013))

(assert (=> d!505785 m!2039213))

(assert (=> b!1671887 m!2037337))

(declare-fun m!2039255 () Bool)

(assert (=> b!1671887 m!2039255))

(assert (=> b!1671888 m!2037013))

(declare-fun m!2039257 () Bool)

(assert (=> b!1671888 m!2039257))

(assert (=> b!1671888 m!2037337))

(assert (=> b!1671888 m!2039257))

(declare-fun m!2039259 () Bool)

(assert (=> b!1671888 m!2039259))

(assert (=> b!1671888 m!2039259))

(assert (=> b!1671888 m!2037013))

(declare-fun m!2039261 () Bool)

(assert (=> b!1671888 m!2039261))

(assert (=> d!505391 d!505785))

(declare-fun d!505787 () Bool)

(declare-fun c!272084 () Bool)

(assert (=> d!505787 (= c!272084 (isEmpty!11487 (list!7381 (++!5023 lt!630500 lt!630486))))))

(declare-fun e!1071333 () Bool)

(assert (=> d!505787 (= (prefixMatch!485 lt!630488 (list!7381 (++!5023 lt!630500 lt!630486))) e!1071333)))

(declare-fun b!1671889 () Bool)

(assert (=> b!1671889 (= e!1071333 (not (lostCause!479 lt!630488)))))

(declare-fun b!1671890 () Bool)

(assert (=> b!1671890 (= e!1071333 (prefixMatch!485 (derivativeStep!1131 lt!630488 (head!3736 (list!7381 (++!5023 lt!630500 lt!630486)))) (tail!2496 (list!7381 (++!5023 lt!630500 lt!630486)))))))

(assert (= (and d!505787 c!272084) b!1671889))

(assert (= (and d!505787 (not c!272084)) b!1671890))

(assert (=> d!505787 m!2037345))

(declare-fun m!2039263 () Bool)

(assert (=> d!505787 m!2039263))

(assert (=> b!1671889 m!2037951))

(assert (=> b!1671890 m!2037345))

(declare-fun m!2039265 () Bool)

(assert (=> b!1671890 m!2039265))

(assert (=> b!1671890 m!2039265))

(declare-fun m!2039267 () Bool)

(assert (=> b!1671890 m!2039267))

(assert (=> b!1671890 m!2037345))

(declare-fun m!2039269 () Bool)

(assert (=> b!1671890 m!2039269))

(assert (=> b!1671890 m!2039267))

(assert (=> b!1671890 m!2039269))

(declare-fun m!2039271 () Bool)

(assert (=> b!1671890 m!2039271))

(assert (=> d!505391 d!505787))

(declare-fun d!505789 () Bool)

(declare-fun drop!947 (List!18488 Int) List!18488)

(assert (=> d!505789 (= (dropList!721 (++!5023 lt!630500 lt!630486) lt!630622) (drop!947 (list!7385 (c!271871 (++!5023 lt!630500 lt!630486))) lt!630622))))

(declare-fun bs!398172 () Bool)

(assert (= bs!398172 d!505789))

(assert (=> bs!398172 m!2039223))

(assert (=> bs!398172 m!2039223))

(declare-fun m!2039273 () Bool)

(assert (=> bs!398172 m!2039273))

(assert (=> d!505391 d!505789))

(declare-fun d!505791 () Bool)

(declare-fun c!272085 () Bool)

(assert (=> d!505791 (= c!272085 (isEmpty!11487 lt!630623))))

(declare-fun e!1071334 () Bool)

(assert (=> d!505791 (= (prefixMatchZipper!203 lt!630619 lt!630623) e!1071334)))

(declare-fun b!1671891 () Bool)

(assert (=> b!1671891 (= e!1071334 (not (lostCauseZipper!38 lt!630619)))))

(declare-fun b!1671892 () Bool)

(assert (=> b!1671892 (= e!1071334 (prefixMatchZipper!203 (derivationStepZipper!62 lt!630619 (head!3736 lt!630623)) (tail!2496 lt!630623)))))

(assert (= (and d!505791 c!272085) b!1671891))

(assert (= (and d!505791 (not c!272085)) b!1671892))

(assert (=> d!505791 m!2039225))

(declare-fun m!2039275 () Bool)

(assert (=> b!1671891 m!2039275))

(assert (=> b!1671892 m!2039227))

(assert (=> b!1671892 m!2039227))

(declare-fun m!2039277 () Bool)

(assert (=> b!1671892 m!2039277))

(assert (=> b!1671892 m!2039231))

(assert (=> b!1671892 m!2039277))

(assert (=> b!1671892 m!2039231))

(declare-fun m!2039279 () Bool)

(assert (=> b!1671892 m!2039279))

(assert (=> d!505391 d!505791))

(declare-fun b!1671893 () Bool)

(declare-fun res!749794 () Bool)

(declare-fun e!1071335 () Bool)

(assert (=> b!1671893 (=> (not res!749794) (not e!1071335))))

(declare-fun lt!631513 () Option!3539)

(assert (=> b!1671893 (= res!749794 (= (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!631513)))) (originalCharacters!4058 (_1!10472 (get!5396 lt!631513)))))))

(declare-fun b!1671894 () Bool)

(declare-fun res!749793 () Bool)

(assert (=> b!1671894 (=> (not res!749793) (not e!1071335))))

(assert (=> b!1671894 (= res!749793 (matchR!2063 (regex!3244 (rule!5134 (_1!10472 (get!5396 lt!631513)))) (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!631513))))))))

(declare-fun b!1671895 () Bool)

(declare-fun res!749795 () Bool)

(assert (=> b!1671895 (=> (not res!749795) (not e!1071335))))

(assert (=> b!1671895 (= res!749795 (= (value!102128 (_1!10472 (get!5396 lt!631513))) (apply!4976 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!631513)))) (seqFromList!2225 (originalCharacters!4058 (_1!10472 (get!5396 lt!631513)))))))))

(declare-fun b!1671896 () Bool)

(declare-fun res!749796 () Bool)

(assert (=> b!1671896 (=> (not res!749796) (not e!1071335))))

(assert (=> b!1671896 (= res!749796 (= (++!5024 (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!631513)))) (_2!10472 (get!5396 lt!631513))) (++!5024 lt!630482 lt!630481)))))

(declare-fun b!1671897 () Bool)

(assert (=> b!1671897 (= e!1071335 (contains!3221 rules!1846 (rule!5134 (_1!10472 (get!5396 lt!631513)))))))

(declare-fun bm!106623 () Bool)

(declare-fun call!106628 () Option!3539)

(assert (=> bm!106623 (= call!106628 (maxPrefixOneRule!836 thiss!17113 (h!23820 rules!1846) (++!5024 lt!630482 lt!630481)))))

(declare-fun d!505793 () Bool)

(declare-fun e!1071337 () Bool)

(assert (=> d!505793 e!1071337))

(declare-fun res!749792 () Bool)

(assert (=> d!505793 (=> res!749792 e!1071337)))

(assert (=> d!505793 (= res!749792 (isEmpty!11485 lt!631513))))

(declare-fun e!1071336 () Option!3539)

(assert (=> d!505793 (= lt!631513 e!1071336)))

(declare-fun c!272086 () Bool)

(assert (=> d!505793 (= c!272086 (and (is-Cons!18419 rules!1846) (is-Nil!18419 (t!152640 rules!1846))))))

(declare-fun lt!631517 () Unit!31326)

(declare-fun lt!631515 () Unit!31326)

(assert (=> d!505793 (= lt!631517 lt!631515)))

(assert (=> d!505793 (isPrefix!1502 (++!5024 lt!630482 lt!630481) (++!5024 lt!630482 lt!630481))))

(assert (=> d!505793 (= lt!631515 (lemmaIsPrefixRefl!1021 (++!5024 lt!630482 lt!630481) (++!5024 lt!630482 lt!630481)))))

(assert (=> d!505793 (rulesValidInductive!1043 thiss!17113 rules!1846)))

(assert (=> d!505793 (= (maxPrefix!1433 thiss!17113 rules!1846 (++!5024 lt!630482 lt!630481)) lt!631513)))

(declare-fun b!1671898 () Bool)

(assert (=> b!1671898 (= e!1071336 call!106628)))

(declare-fun b!1671899 () Bool)

(declare-fun lt!631516 () Option!3539)

(declare-fun lt!631514 () Option!3539)

(assert (=> b!1671899 (= e!1071336 (ite (and (is-None!3538 lt!631516) (is-None!3538 lt!631514)) None!3538 (ite (is-None!3538 lt!631514) lt!631516 (ite (is-None!3538 lt!631516) lt!631514 (ite (>= (size!14653 (_1!10472 (v!24811 lt!631516))) (size!14653 (_1!10472 (v!24811 lt!631514)))) lt!631516 lt!631514)))))))

(assert (=> b!1671899 (= lt!631516 call!106628)))

(assert (=> b!1671899 (= lt!631514 (maxPrefix!1433 thiss!17113 (t!152640 rules!1846) (++!5024 lt!630482 lt!630481)))))

(declare-fun b!1671900 () Bool)

(assert (=> b!1671900 (= e!1071337 e!1071335)))

(declare-fun res!749791 () Bool)

(assert (=> b!1671900 (=> (not res!749791) (not e!1071335))))

(assert (=> b!1671900 (= res!749791 (isDefined!2892 lt!631513))))

(declare-fun b!1671901 () Bool)

(declare-fun res!749790 () Bool)

(assert (=> b!1671901 (=> (not res!749790) (not e!1071335))))

(assert (=> b!1671901 (= res!749790 (< (size!14657 (_2!10472 (get!5396 lt!631513))) (size!14657 (++!5024 lt!630482 lt!630481))))))

(assert (= (and d!505793 c!272086) b!1671898))

(assert (= (and d!505793 (not c!272086)) b!1671899))

(assert (= (or b!1671898 b!1671899) bm!106623))

(assert (= (and d!505793 (not res!749792)) b!1671900))

(assert (= (and b!1671900 res!749791) b!1671893))

(assert (= (and b!1671893 res!749794) b!1671901))

(assert (= (and b!1671901 res!749790) b!1671896))

(assert (= (and b!1671896 res!749796) b!1671895))

(assert (= (and b!1671895 res!749795) b!1671894))

(assert (= (and b!1671894 res!749793) b!1671897))

(declare-fun m!2039281 () Bool)

(assert (=> b!1671901 m!2039281))

(declare-fun m!2039283 () Bool)

(assert (=> b!1671901 m!2039283))

(assert (=> b!1671901 m!2037073))

(declare-fun m!2039285 () Bool)

(assert (=> b!1671901 m!2039285))

(assert (=> b!1671896 m!2039281))

(declare-fun m!2039287 () Bool)

(assert (=> b!1671896 m!2039287))

(assert (=> b!1671896 m!2039287))

(declare-fun m!2039289 () Bool)

(assert (=> b!1671896 m!2039289))

(assert (=> b!1671896 m!2039289))

(declare-fun m!2039291 () Bool)

(assert (=> b!1671896 m!2039291))

(assert (=> bm!106623 m!2037073))

(declare-fun m!2039293 () Bool)

(assert (=> bm!106623 m!2039293))

(assert (=> b!1671894 m!2039281))

(assert (=> b!1671894 m!2039287))

(assert (=> b!1671894 m!2039287))

(assert (=> b!1671894 m!2039289))

(assert (=> b!1671894 m!2039289))

(declare-fun m!2039295 () Bool)

(assert (=> b!1671894 m!2039295))

(assert (=> b!1671895 m!2039281))

(declare-fun m!2039297 () Bool)

(assert (=> b!1671895 m!2039297))

(assert (=> b!1671895 m!2039297))

(declare-fun m!2039299 () Bool)

(assert (=> b!1671895 m!2039299))

(assert (=> b!1671893 m!2039281))

(assert (=> b!1671893 m!2039287))

(assert (=> b!1671893 m!2039287))

(assert (=> b!1671893 m!2039289))

(declare-fun m!2039301 () Bool)

(assert (=> b!1671900 m!2039301))

(assert (=> b!1671899 m!2037073))

(declare-fun m!2039303 () Bool)

(assert (=> b!1671899 m!2039303))

(declare-fun m!2039305 () Bool)

(assert (=> d!505793 m!2039305))

(assert (=> d!505793 m!2037073))

(assert (=> d!505793 m!2037073))

(declare-fun m!2039307 () Bool)

(assert (=> d!505793 m!2039307))

(assert (=> d!505793 m!2037073))

(assert (=> d!505793 m!2037073))

(declare-fun m!2039309 () Bool)

(assert (=> d!505793 m!2039309))

(assert (=> d!505793 m!2037861))

(assert (=> b!1671897 m!2039281))

(declare-fun m!2039311 () Bool)

(assert (=> b!1671897 m!2039311))

(assert (=> d!505439 d!505793))

(assert (=> d!505439 d!505401))

(declare-fun d!505795 () Bool)

(assert (=> d!505795 (= (isEmpty!11485 (maxPrefix!1433 thiss!17113 rules!1846 (++!5024 lt!630482 lt!630481))) (not (is-Some!3538 (maxPrefix!1433 thiss!17113 rules!1846 (++!5024 lt!630482 lt!630481)))))))

(assert (=> d!505439 d!505795))

(declare-fun d!505797 () Bool)

(assert (=> d!505797 (isPrefix!1502 lt!630687 (++!5024 lt!630482 lt!630481))))

(declare-fun lt!631520 () Unit!31326)

(declare-fun choose!10072 (List!18488 List!18488 List!18488) Unit!31326)

(assert (=> d!505797 (= lt!631520 (choose!10072 lt!630687 lt!630482 lt!630481))))

(assert (=> d!505797 (isPrefix!1502 lt!630687 lt!630482)))

(assert (=> d!505797 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!223 lt!630687 lt!630482 lt!630481) lt!631520)))

(declare-fun bs!398173 () Bool)

(assert (= bs!398173 d!505797))

(assert (=> bs!398173 m!2037073))

(assert (=> bs!398173 m!2037073))

(assert (=> bs!398173 m!2037539))

(declare-fun m!2039313 () Bool)

(assert (=> bs!398173 m!2039313))

(declare-fun m!2039315 () Bool)

(assert (=> bs!398173 m!2039315))

(assert (=> d!505439 d!505797))

(assert (=> d!505439 d!505521))

(declare-fun b!1671902 () Bool)

(declare-fun res!749801 () Bool)

(declare-fun e!1071338 () Bool)

(assert (=> b!1671902 (=> (not res!749801) (not e!1071338))))

(declare-fun lt!631521 () Option!3539)

(assert (=> b!1671902 (= res!749801 (= (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!631521)))) (originalCharacters!4058 (_1!10472 (get!5396 lt!631521)))))))

(declare-fun b!1671903 () Bool)

(declare-fun res!749800 () Bool)

(assert (=> b!1671903 (=> (not res!749800) (not e!1071338))))

(assert (=> b!1671903 (= res!749800 (matchR!2063 (regex!3244 (rule!5134 (_1!10472 (get!5396 lt!631521)))) (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!631521))))))))

(declare-fun b!1671904 () Bool)

(declare-fun res!749802 () Bool)

(assert (=> b!1671904 (=> (not res!749802) (not e!1071338))))

(assert (=> b!1671904 (= res!749802 (= (value!102128 (_1!10472 (get!5396 lt!631521))) (apply!4976 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!631521)))) (seqFromList!2225 (originalCharacters!4058 (_1!10472 (get!5396 lt!631521)))))))))

(declare-fun b!1671905 () Bool)

(declare-fun res!749803 () Bool)

(assert (=> b!1671905 (=> (not res!749803) (not e!1071338))))

(assert (=> b!1671905 (= res!749803 (= (++!5024 (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!631521)))) (_2!10472 (get!5396 lt!631521))) lt!630482))))

(declare-fun b!1671906 () Bool)

(assert (=> b!1671906 (= e!1071338 (contains!3221 rules!1846 (rule!5134 (_1!10472 (get!5396 lt!631521)))))))

(declare-fun bm!106624 () Bool)

(declare-fun call!106629 () Option!3539)

(assert (=> bm!106624 (= call!106629 (maxPrefixOneRule!836 thiss!17113 (h!23820 rules!1846) lt!630482))))

(declare-fun d!505799 () Bool)

(declare-fun e!1071340 () Bool)

(assert (=> d!505799 e!1071340))

(declare-fun res!749799 () Bool)

(assert (=> d!505799 (=> res!749799 e!1071340)))

(assert (=> d!505799 (= res!749799 (isEmpty!11485 lt!631521))))

(declare-fun e!1071339 () Option!3539)

(assert (=> d!505799 (= lt!631521 e!1071339)))

(declare-fun c!272087 () Bool)

(assert (=> d!505799 (= c!272087 (and (is-Cons!18419 rules!1846) (is-Nil!18419 (t!152640 rules!1846))))))

(declare-fun lt!631525 () Unit!31326)

(declare-fun lt!631523 () Unit!31326)

(assert (=> d!505799 (= lt!631525 lt!631523)))

(assert (=> d!505799 (isPrefix!1502 lt!630482 lt!630482)))

(assert (=> d!505799 (= lt!631523 (lemmaIsPrefixRefl!1021 lt!630482 lt!630482))))

(assert (=> d!505799 (rulesValidInductive!1043 thiss!17113 rules!1846)))

(assert (=> d!505799 (= (maxPrefix!1433 thiss!17113 rules!1846 lt!630482) lt!631521)))

(declare-fun b!1671907 () Bool)

(assert (=> b!1671907 (= e!1071339 call!106629)))

(declare-fun b!1671908 () Bool)

(declare-fun lt!631524 () Option!3539)

(declare-fun lt!631522 () Option!3539)

(assert (=> b!1671908 (= e!1071339 (ite (and (is-None!3538 lt!631524) (is-None!3538 lt!631522)) None!3538 (ite (is-None!3538 lt!631522) lt!631524 (ite (is-None!3538 lt!631524) lt!631522 (ite (>= (size!14653 (_1!10472 (v!24811 lt!631524))) (size!14653 (_1!10472 (v!24811 lt!631522)))) lt!631524 lt!631522)))))))

(assert (=> b!1671908 (= lt!631524 call!106629)))

(assert (=> b!1671908 (= lt!631522 (maxPrefix!1433 thiss!17113 (t!152640 rules!1846) lt!630482))))

(declare-fun b!1671909 () Bool)

(assert (=> b!1671909 (= e!1071340 e!1071338)))

(declare-fun res!749798 () Bool)

(assert (=> b!1671909 (=> (not res!749798) (not e!1071338))))

(assert (=> b!1671909 (= res!749798 (isDefined!2892 lt!631521))))

(declare-fun b!1671910 () Bool)

(declare-fun res!749797 () Bool)

(assert (=> b!1671910 (=> (not res!749797) (not e!1071338))))

(assert (=> b!1671910 (= res!749797 (< (size!14657 (_2!10472 (get!5396 lt!631521))) (size!14657 lt!630482)))))

(assert (= (and d!505799 c!272087) b!1671907))

(assert (= (and d!505799 (not c!272087)) b!1671908))

(assert (= (or b!1671907 b!1671908) bm!106624))

(assert (= (and d!505799 (not res!749799)) b!1671909))

(assert (= (and b!1671909 res!749798) b!1671902))

(assert (= (and b!1671902 res!749801) b!1671910))

(assert (= (and b!1671910 res!749797) b!1671905))

(assert (= (and b!1671905 res!749803) b!1671904))

(assert (= (and b!1671904 res!749802) b!1671903))

(assert (= (and b!1671903 res!749800) b!1671906))

(declare-fun m!2039317 () Bool)

(assert (=> b!1671910 m!2039317))

(declare-fun m!2039319 () Bool)

(assert (=> b!1671910 m!2039319))

(assert (=> b!1671910 m!2037391))

(assert (=> b!1671905 m!2039317))

(declare-fun m!2039321 () Bool)

(assert (=> b!1671905 m!2039321))

(assert (=> b!1671905 m!2039321))

(declare-fun m!2039323 () Bool)

(assert (=> b!1671905 m!2039323))

(assert (=> b!1671905 m!2039323))

(declare-fun m!2039325 () Bool)

(assert (=> b!1671905 m!2039325))

(declare-fun m!2039327 () Bool)

(assert (=> bm!106624 m!2039327))

(assert (=> b!1671903 m!2039317))

(assert (=> b!1671903 m!2039321))

(assert (=> b!1671903 m!2039321))

(assert (=> b!1671903 m!2039323))

(assert (=> b!1671903 m!2039323))

(declare-fun m!2039329 () Bool)

(assert (=> b!1671903 m!2039329))

(assert (=> b!1671904 m!2039317))

(declare-fun m!2039331 () Bool)

(assert (=> b!1671904 m!2039331))

(assert (=> b!1671904 m!2039331))

(declare-fun m!2039333 () Bool)

(assert (=> b!1671904 m!2039333))

(assert (=> b!1671902 m!2039317))

(assert (=> b!1671902 m!2039321))

(assert (=> b!1671902 m!2039321))

(assert (=> b!1671902 m!2039323))

(declare-fun m!2039335 () Bool)

(assert (=> b!1671909 m!2039335))

(declare-fun m!2039337 () Bool)

(assert (=> b!1671908 m!2039337))

(declare-fun m!2039339 () Bool)

(assert (=> d!505799 m!2039339))

(declare-fun m!2039341 () Bool)

(assert (=> d!505799 m!2039341))

(declare-fun m!2039343 () Bool)

(assert (=> d!505799 m!2039343))

(assert (=> d!505799 m!2037861))

(assert (=> b!1671906 m!2039317))

(declare-fun m!2039345 () Bool)

(assert (=> b!1671906 m!2039345))

(assert (=> d!505439 d!505799))

(declare-fun d!505801 () Bool)

(assert (=> d!505801 (= (get!5396 (maxPrefix!1433 thiss!17113 rules!1846 lt!630482)) (v!24811 (maxPrefix!1433 thiss!17113 rules!1846 lt!630482)))))

(assert (=> d!505439 d!505801))

(declare-fun d!505803 () Bool)

(declare-fun isEmpty!11493 (Option!3541) Bool)

(assert (=> d!505803 (= (isDefined!2894 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!630688)))) (not (isEmpty!11493 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!630688))))))))

(declare-fun bs!398174 () Bool)

(assert (= bs!398174 d!505803))

(assert (=> bs!398174 m!2037511))

(declare-fun m!2039347 () Bool)

(assert (=> bs!398174 m!2039347))

(assert (=> d!505439 d!505803))

(declare-fun d!505805 () Bool)

(assert (=> d!505805 (= (head!3738 (list!7382 (_1!10473 (lex!1357 thiss!17113 rules!1846 (seqFromList!2225 lt!630482))))) (h!23821 (list!7382 (_1!10473 (lex!1357 thiss!17113 rules!1846 (seqFromList!2225 lt!630482))))))))

(assert (=> d!505439 d!505805))

(declare-fun d!505807 () Bool)

(assert (=> d!505807 (isPrefix!1502 lt!630700 (++!5024 lt!630700 lt!630701))))

(declare-fun lt!631526 () Unit!31326)

(assert (=> d!505807 (= lt!631526 (choose!10063 lt!630700 lt!630701))))

(assert (=> d!505807 (= (lemmaConcatTwoListThenFirstIsPrefix!1023 lt!630700 lt!630701) lt!631526)))

(declare-fun bs!398175 () Bool)

(assert (= bs!398175 d!505807))

(assert (=> bs!398175 m!2037523))

(assert (=> bs!398175 m!2037523))

(assert (=> bs!398175 m!2037543))

(declare-fun m!2039349 () Bool)

(assert (=> bs!398175 m!2039349))

(assert (=> d!505439 d!505807))

(declare-fun b!1671911 () Bool)

(declare-fun e!1071341 () Bool)

(declare-fun e!1071343 () Bool)

(assert (=> b!1671911 (= e!1071341 e!1071343)))

(declare-fun res!749807 () Bool)

(assert (=> b!1671911 (=> (not res!749807) (not e!1071343))))

(assert (=> b!1671911 (= res!749807 (not (is-Nil!18418 (++!5024 lt!630482 lt!630481))))))

(declare-fun d!505809 () Bool)

(declare-fun e!1071342 () Bool)

(assert (=> d!505809 e!1071342))

(declare-fun res!749806 () Bool)

(assert (=> d!505809 (=> res!749806 e!1071342)))

(declare-fun lt!631527 () Bool)

(assert (=> d!505809 (= res!749806 (not lt!631527))))

(assert (=> d!505809 (= lt!631527 e!1071341)))

(declare-fun res!749804 () Bool)

(assert (=> d!505809 (=> res!749804 e!1071341)))

(assert (=> d!505809 (= res!749804 (is-Nil!18418 lt!630687))))

(assert (=> d!505809 (= (isPrefix!1502 lt!630687 (++!5024 lt!630482 lt!630481)) lt!631527)))

(declare-fun b!1671914 () Bool)

(assert (=> b!1671914 (= e!1071342 (>= (size!14657 (++!5024 lt!630482 lt!630481)) (size!14657 lt!630687)))))

(declare-fun b!1671913 () Bool)

(assert (=> b!1671913 (= e!1071343 (isPrefix!1502 (tail!2496 lt!630687) (tail!2496 (++!5024 lt!630482 lt!630481))))))

(declare-fun b!1671912 () Bool)

(declare-fun res!749805 () Bool)

(assert (=> b!1671912 (=> (not res!749805) (not e!1071343))))

(assert (=> b!1671912 (= res!749805 (= (head!3736 lt!630687) (head!3736 (++!5024 lt!630482 lt!630481))))))

(assert (= (and d!505809 (not res!749804)) b!1671911))

(assert (= (and b!1671911 res!749807) b!1671912))

(assert (= (and b!1671912 res!749805) b!1671913))

(assert (= (and d!505809 (not res!749806)) b!1671914))

(assert (=> b!1671914 m!2037073))

(assert (=> b!1671914 m!2039285))

(declare-fun m!2039351 () Bool)

(assert (=> b!1671914 m!2039351))

(declare-fun m!2039353 () Bool)

(assert (=> b!1671913 m!2039353))

(assert (=> b!1671913 m!2037073))

(declare-fun m!2039355 () Bool)

(assert (=> b!1671913 m!2039355))

(assert (=> b!1671913 m!2039353))

(assert (=> b!1671913 m!2039355))

(declare-fun m!2039357 () Bool)

(assert (=> b!1671913 m!2039357))

(declare-fun m!2039359 () Bool)

(assert (=> b!1671912 m!2039359))

(assert (=> b!1671912 m!2037073))

(declare-fun m!2039361 () Bool)

(assert (=> b!1671912 m!2039361))

(assert (=> d!505439 d!505809))

(declare-fun e!1071345 () Bool)

(declare-fun b!1671918 () Bool)

(declare-fun lt!631528 () List!18488)

(assert (=> b!1671918 (= e!1071345 (or (not (= lt!630701 Nil!18418)) (= lt!631528 lt!630700)))))

(declare-fun b!1671917 () Bool)

(declare-fun res!749808 () Bool)

(assert (=> b!1671917 (=> (not res!749808) (not e!1071345))))

(assert (=> b!1671917 (= res!749808 (= (size!14657 lt!631528) (+ (size!14657 lt!630700) (size!14657 lt!630701))))))

(declare-fun b!1671916 () Bool)

(declare-fun e!1071344 () List!18488)

(assert (=> b!1671916 (= e!1071344 (Cons!18418 (h!23819 lt!630700) (++!5024 (t!152639 lt!630700) lt!630701)))))

(declare-fun d!505811 () Bool)

(assert (=> d!505811 e!1071345))

(declare-fun res!749809 () Bool)

(assert (=> d!505811 (=> (not res!749809) (not e!1071345))))

(assert (=> d!505811 (= res!749809 (= (content!2576 lt!631528) (set.union (content!2576 lt!630700) (content!2576 lt!630701))))))

(assert (=> d!505811 (= lt!631528 e!1071344)))

(declare-fun c!272088 () Bool)

(assert (=> d!505811 (= c!272088 (is-Nil!18418 lt!630700))))

(assert (=> d!505811 (= (++!5024 lt!630700 lt!630701) lt!631528)))

(declare-fun b!1671915 () Bool)

(assert (=> b!1671915 (= e!1071344 lt!630701)))

(assert (= (and d!505811 c!272088) b!1671915))

(assert (= (and d!505811 (not c!272088)) b!1671916))

(assert (= (and d!505811 res!749809) b!1671917))

(assert (= (and b!1671917 res!749808) b!1671918))

(declare-fun m!2039363 () Bool)

(assert (=> b!1671917 m!2039363))

(declare-fun m!2039365 () Bool)

(assert (=> b!1671917 m!2039365))

(declare-fun m!2039367 () Bool)

(assert (=> b!1671917 m!2039367))

(declare-fun m!2039369 () Bool)

(assert (=> b!1671916 m!2039369))

(declare-fun m!2039371 () Bool)

(assert (=> d!505811 m!2039371))

(declare-fun m!2039373 () Bool)

(assert (=> d!505811 m!2039373))

(declare-fun m!2039375 () Bool)

(assert (=> d!505811 m!2039375))

(assert (=> d!505439 d!505811))

(assert (=> d!505439 d!505375))

(declare-fun b!1671931 () Bool)

(declare-fun e!1071355 () Option!3541)

(assert (=> b!1671931 (= e!1071355 None!3540)))

(declare-fun b!1671933 () Bool)

(declare-fun lt!631537 () Unit!31326)

(declare-fun lt!631536 () Unit!31326)

(assert (=> b!1671933 (= lt!631537 lt!631536)))

(assert (=> b!1671933 (rulesInvariant!2542 thiss!17113 (t!152640 rules!1846))))

(declare-fun lemmaInvariantOnRulesThenOnTail!107 (LexerInterface!2873 Rule!6288 List!18489) Unit!31326)

(assert (=> b!1671933 (= lt!631536 (lemmaInvariantOnRulesThenOnTail!107 thiss!17113 (h!23820 rules!1846) (t!152640 rules!1846)))))

(assert (=> b!1671933 (= e!1071355 (getRuleFromTag!337 thiss!17113 (t!152640 rules!1846) (tag!3528 (rule!5134 lt!630688))))))

(declare-fun b!1671934 () Bool)

(declare-fun e!1071356 () Option!3541)

(assert (=> b!1671934 (= e!1071356 e!1071355)))

(declare-fun c!272094 () Bool)

(assert (=> b!1671934 (= c!272094 (and (is-Cons!18419 rules!1846) (not (= (tag!3528 (h!23820 rules!1846)) (tag!3528 (rule!5134 lt!630688))))))))

(declare-fun b!1671935 () Bool)

(assert (=> b!1671935 (= e!1071356 (Some!3540 (h!23820 rules!1846)))))

(declare-fun b!1671936 () Bool)

(declare-fun e!1071357 () Bool)

(declare-fun lt!631535 () Option!3541)

(assert (=> b!1671936 (= e!1071357 (= (tag!3528 (get!5395 lt!631535)) (tag!3528 (rule!5134 lt!630688))))))

(declare-fun b!1671932 () Bool)

(declare-fun e!1071354 () Bool)

(assert (=> b!1671932 (= e!1071354 e!1071357)))

(declare-fun res!749815 () Bool)

(assert (=> b!1671932 (=> (not res!749815) (not e!1071357))))

(assert (=> b!1671932 (= res!749815 (contains!3221 rules!1846 (get!5395 lt!631535)))))

(declare-fun d!505813 () Bool)

(assert (=> d!505813 e!1071354))

(declare-fun res!749814 () Bool)

(assert (=> d!505813 (=> res!749814 e!1071354)))

(assert (=> d!505813 (= res!749814 (isEmpty!11493 lt!631535))))

(assert (=> d!505813 (= lt!631535 e!1071356)))

(declare-fun c!272093 () Bool)

(assert (=> d!505813 (= c!272093 (and (is-Cons!18419 rules!1846) (= (tag!3528 (h!23820 rules!1846)) (tag!3528 (rule!5134 lt!630688)))))))

(assert (=> d!505813 (rulesInvariant!2542 thiss!17113 rules!1846)))

(assert (=> d!505813 (= (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!630688))) lt!631535)))

(assert (= (and d!505813 c!272093) b!1671935))

(assert (= (and d!505813 (not c!272093)) b!1671934))

(assert (= (and b!1671934 c!272094) b!1671933))

(assert (= (and b!1671934 (not c!272094)) b!1671931))

(assert (= (and d!505813 (not res!749814)) b!1671932))

(assert (= (and b!1671932 res!749815) b!1671936))

(declare-fun m!2039377 () Bool)

(assert (=> b!1671933 m!2039377))

(declare-fun m!2039379 () Bool)

(assert (=> b!1671933 m!2039379))

(declare-fun m!2039381 () Bool)

(assert (=> b!1671933 m!2039381))

(declare-fun m!2039383 () Bool)

(assert (=> b!1671936 m!2039383))

(assert (=> b!1671932 m!2039383))

(assert (=> b!1671932 m!2039383))

(declare-fun m!2039385 () Bool)

(assert (=> b!1671932 m!2039385))

(declare-fun m!2039387 () Bool)

(assert (=> d!505813 m!2039387))

(assert (=> d!505813 m!2037035))

(assert (=> d!505439 d!505813))

(declare-fun d!505815 () Bool)

(assert (=> d!505815 (= (isDefined!2892 (maxPrefix!1433 thiss!17113 rules!1846 (++!5024 lt!630482 lt!630481))) (not (isEmpty!11485 (maxPrefix!1433 thiss!17113 rules!1846 (++!5024 lt!630482 lt!630481)))))))

(declare-fun bs!398176 () Bool)

(assert (= bs!398176 d!505815))

(assert (=> bs!398176 m!2037529))

(assert (=> bs!398176 m!2037533))

(assert (=> d!505439 d!505815))

(declare-fun d!505817 () Bool)

(declare-fun lt!631538 () BalanceConc!12216)

(assert (=> d!505817 (= (list!7381 lt!631538) (originalCharacters!4058 lt!630688))))

(assert (=> d!505817 (= lt!631538 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 lt!630688))) (value!102128 lt!630688)))))

(assert (=> d!505817 (= (charsOf!1893 lt!630688) lt!631538)))

(declare-fun b_lambda!52519 () Bool)

(assert (=> (not b_lambda!52519) (not d!505817)))

(declare-fun t!152733 () Bool)

(declare-fun tb!95935 () Bool)

(assert (=> (and b!1670823 (= (toChars!4570 (transformation!3244 (h!23820 rules!1846))) (toChars!4570 (transformation!3244 (rule!5134 lt!630688)))) t!152733) tb!95935))

(declare-fun b!1671937 () Bool)

(declare-fun e!1071358 () Bool)

(declare-fun tp!482425 () Bool)

(assert (=> b!1671937 (= e!1071358 (and (inv!23776 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 lt!630688))) (value!102128 lt!630688)))) tp!482425))))

(declare-fun result!115934 () Bool)

(assert (=> tb!95935 (= result!115934 (and (inv!23777 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 lt!630688))) (value!102128 lt!630688))) e!1071358))))

(assert (= tb!95935 b!1671937))

(declare-fun m!2039389 () Bool)

(assert (=> b!1671937 m!2039389))

(declare-fun m!2039391 () Bool)

(assert (=> tb!95935 m!2039391))

(assert (=> d!505817 t!152733))

(declare-fun b_and!118909 () Bool)

(assert (= b_and!118901 (and (=> t!152733 result!115934) b_and!118909)))

(declare-fun tb!95937 () Bool)

(declare-fun t!152735 () Bool)

(assert (=> (and b!1670835 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (toChars!4570 (transformation!3244 (rule!5134 lt!630688)))) t!152735) tb!95937))

(declare-fun result!115936 () Bool)

(assert (= result!115936 result!115934))

(assert (=> d!505817 t!152735))

(declare-fun b_and!118911 () Bool)

(assert (= b_and!118903 (and (=> t!152735 result!115936) b_and!118911)))

(declare-fun tb!95939 () Bool)

(declare-fun t!152737 () Bool)

(assert (=> (and b!1671330 (= (toChars!4570 (transformation!3244 (h!23820 (t!152640 rules!1846)))) (toChars!4570 (transformation!3244 (rule!5134 lt!630688)))) t!152737) tb!95939))

(declare-fun result!115938 () Bool)

(assert (= result!115938 result!115934))

(assert (=> d!505817 t!152737))

(declare-fun b_and!118913 () Bool)

(assert (= b_and!118905 (and (=> t!152737 result!115938) b_and!118913)))

(declare-fun t!152739 () Bool)

(declare-fun tb!95941 () Bool)

(assert (=> (and b!1671344 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (toChars!4570 (transformation!3244 (rule!5134 lt!630688)))) t!152739) tb!95941))

(declare-fun result!115940 () Bool)

(assert (= result!115940 result!115934))

(assert (=> d!505817 t!152739))

(declare-fun b_and!118915 () Bool)

(assert (= b_and!118907 (and (=> t!152739 result!115940) b_and!118915)))

(declare-fun m!2039393 () Bool)

(assert (=> d!505817 m!2039393))

(declare-fun m!2039395 () Bool)

(assert (=> d!505817 m!2039395))

(assert (=> d!505439 d!505817))

(declare-fun d!505819 () Bool)

(assert (=> d!505819 (= (list!7382 (_1!10473 (lex!1357 thiss!17113 rules!1846 (seqFromList!2225 lt!630482)))) (list!7386 (c!271873 (_1!10473 (lex!1357 thiss!17113 rules!1846 (seqFromList!2225 lt!630482))))))))

(declare-fun bs!398177 () Bool)

(assert (= bs!398177 d!505819))

(declare-fun m!2039397 () Bool)

(assert (=> bs!398177 m!2039397))

(assert (=> d!505439 d!505819))

(declare-fun d!505821 () Bool)

(assert (=> d!505821 (= (list!7381 (charsOf!1893 lt!630688)) (list!7385 (c!271871 (charsOf!1893 lt!630688))))))

(declare-fun bs!398178 () Bool)

(assert (= bs!398178 d!505821))

(declare-fun m!2039399 () Bool)

(assert (=> bs!398178 m!2039399))

(assert (=> d!505439 d!505821))

(declare-fun d!505823 () Bool)

(declare-fun e!1071361 () Bool)

(assert (=> d!505823 e!1071361))

(declare-fun res!749820 () Bool)

(assert (=> d!505823 (=> (not res!749820) (not e!1071361))))

(assert (=> d!505823 (= res!749820 (isDefined!2894 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!630688)))))))

(declare-fun lt!631541 () Unit!31326)

(declare-fun choose!10073 (LexerInterface!2873 List!18489 List!18488 Token!6054) Unit!31326)

(assert (=> d!505823 (= lt!631541 (choose!10073 thiss!17113 rules!1846 lt!630482 lt!630688))))

(assert (=> d!505823 (rulesInvariant!2542 thiss!17113 rules!1846)))

(assert (=> d!505823 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!337 thiss!17113 rules!1846 lt!630482 lt!630688) lt!631541)))

(declare-fun b!1671942 () Bool)

(declare-fun res!749821 () Bool)

(assert (=> b!1671942 (=> (not res!749821) (not e!1071361))))

(assert (=> b!1671942 (= res!749821 (matchR!2063 (regex!3244 (get!5395 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!630688))))) (list!7381 (charsOf!1893 lt!630688))))))

(declare-fun b!1671943 () Bool)

(assert (=> b!1671943 (= e!1071361 (= (rule!5134 lt!630688) (get!5395 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!630688))))))))

(assert (= (and d!505823 res!749820) b!1671942))

(assert (= (and b!1671942 res!749821) b!1671943))

(assert (=> d!505823 m!2037511))

(assert (=> d!505823 m!2037511))

(assert (=> d!505823 m!2037521))

(declare-fun m!2039401 () Bool)

(assert (=> d!505823 m!2039401))

(assert (=> d!505823 m!2037035))

(assert (=> b!1671942 m!2037517))

(assert (=> b!1671942 m!2037519))

(assert (=> b!1671942 m!2037511))

(assert (=> b!1671942 m!2037511))

(assert (=> b!1671942 m!2037513))

(assert (=> b!1671942 m!2037515))

(assert (=> b!1671942 m!2037515))

(assert (=> b!1671942 m!2037517))

(assert (=> b!1671943 m!2037511))

(assert (=> b!1671943 m!2037511))

(assert (=> b!1671943 m!2037513))

(assert (=> d!505439 d!505823))

(assert (=> d!505439 d!505383))

(declare-fun b!1671944 () Bool)

(declare-fun e!1071362 () Bool)

(declare-fun e!1071364 () Bool)

(assert (=> b!1671944 (= e!1071362 e!1071364)))

(declare-fun res!749825 () Bool)

(assert (=> b!1671944 (=> (not res!749825) (not e!1071364))))

(assert (=> b!1671944 (= res!749825 (not (is-Nil!18418 (++!5024 lt!630700 lt!630701))))))

(declare-fun d!505825 () Bool)

(declare-fun e!1071363 () Bool)

(assert (=> d!505825 e!1071363))

(declare-fun res!749824 () Bool)

(assert (=> d!505825 (=> res!749824 e!1071363)))

(declare-fun lt!631542 () Bool)

(assert (=> d!505825 (= res!749824 (not lt!631542))))

(assert (=> d!505825 (= lt!631542 e!1071362)))

(declare-fun res!749822 () Bool)

(assert (=> d!505825 (=> res!749822 e!1071362)))

(assert (=> d!505825 (= res!749822 (is-Nil!18418 lt!630700))))

(assert (=> d!505825 (= (isPrefix!1502 lt!630700 (++!5024 lt!630700 lt!630701)) lt!631542)))

(declare-fun b!1671947 () Bool)

(assert (=> b!1671947 (= e!1071363 (>= (size!14657 (++!5024 lt!630700 lt!630701)) (size!14657 lt!630700)))))

(declare-fun b!1671946 () Bool)

(assert (=> b!1671946 (= e!1071364 (isPrefix!1502 (tail!2496 lt!630700) (tail!2496 (++!5024 lt!630700 lt!630701))))))

(declare-fun b!1671945 () Bool)

(declare-fun res!749823 () Bool)

(assert (=> b!1671945 (=> (not res!749823) (not e!1071364))))

(assert (=> b!1671945 (= res!749823 (= (head!3736 lt!630700) (head!3736 (++!5024 lt!630700 lt!630701))))))

(assert (= (and d!505825 (not res!749822)) b!1671944))

(assert (= (and b!1671944 res!749825) b!1671945))

(assert (= (and b!1671945 res!749823) b!1671946))

(assert (= (and d!505825 (not res!749824)) b!1671947))

(assert (=> b!1671947 m!2037523))

(declare-fun m!2039403 () Bool)

(assert (=> b!1671947 m!2039403))

(assert (=> b!1671947 m!2039365))

(declare-fun m!2039405 () Bool)

(assert (=> b!1671946 m!2039405))

(assert (=> b!1671946 m!2037523))

(declare-fun m!2039407 () Bool)

(assert (=> b!1671946 m!2039407))

(assert (=> b!1671946 m!2039405))

(assert (=> b!1671946 m!2039407))

(declare-fun m!2039409 () Bool)

(assert (=> b!1671946 m!2039409))

(declare-fun m!2039411 () Bool)

(assert (=> b!1671945 m!2039411))

(assert (=> b!1671945 m!2037523))

(declare-fun m!2039413 () Bool)

(assert (=> b!1671945 m!2039413))

(assert (=> d!505439 d!505825))

(declare-fun b!1671990 () Bool)

(declare-fun c!272118 () Bool)

(declare-fun call!106666 () Int)

(declare-fun call!106672 () Int)

(assert (=> b!1671990 (= c!272118 (>= call!106666 call!106672))))

(declare-fun e!1071386 () Conc!6136)

(declare-fun e!1071390 () Conc!6136)

(assert (=> b!1671990 (= e!1071386 e!1071390)))

(declare-fun bm!106657 () Bool)

(declare-fun call!106677 () Conc!6136)

(declare-fun call!106676 () Conc!6136)

(assert (=> bm!106657 (= call!106677 call!106676)))

(declare-fun bm!106658 () Bool)

(declare-fun lt!631552 () Conc!6136)

(declare-fun c!272115 () Bool)

(assert (=> bm!106658 (= call!106672 (height!972 (ite c!272115 (right!15062 (c!271871 lt!630500)) lt!631552)))))

(declare-fun bm!106659 () Bool)

(declare-fun call!106663 () Conc!6136)

(declare-fun call!106671 () Conc!6136)

(assert (=> bm!106659 (= call!106663 call!106671)))

(declare-fun b!1671991 () Bool)

(declare-fun e!1071387 () Conc!6136)

(assert (=> b!1671991 (= e!1071387 e!1071386)))

(declare-fun lt!631554 () Int)

(assert (=> b!1671991 (= c!272115 (< lt!631554 (- 1)))))

(declare-fun bm!106660 () Bool)

(assert (=> bm!106660 (= call!106666 (height!972 (ite c!272115 (left!14732 (c!271871 lt!630500)) (right!15062 (c!271871 lt!630486)))))))

(declare-fun lt!631553 () Conc!6136)

(declare-fun e!1071388 () Bool)

(declare-fun b!1671992 () Bool)

(assert (=> b!1671992 (= e!1071388 (= (list!7385 lt!631553) (++!5024 (list!7385 (c!271871 lt!630500)) (list!7385 (c!271871 lt!630486)))))))

(declare-fun b!1671993 () Bool)

(declare-fun res!749840 () Bool)

(assert (=> b!1671993 (=> (not res!749840) (not e!1071388))))

(assert (=> b!1671993 (= res!749840 (<= (height!972 lt!631553) (+ (max!0 (height!972 (c!271871 lt!630500)) (height!972 (c!271871 lt!630486))) 1)))))

(declare-fun bm!106661 () Bool)

(declare-fun call!106662 () Int)

(declare-fun lt!631551 () Conc!6136)

(assert (=> bm!106661 (= call!106662 (height!972 (ite c!272115 lt!631551 (left!14732 (c!271871 lt!630486)))))))

(declare-fun bm!106662 () Bool)

(declare-fun call!106670 () Int)

(assert (=> bm!106662 (= call!106670 (height!972 (ite c!272115 (c!271871 lt!630500) (c!271871 lt!630486))))))

(declare-fun bm!106663 () Bool)

(declare-fun call!106667 () Conc!6136)

(declare-fun call!106665 () Conc!6136)

(assert (=> bm!106663 (= call!106667 call!106665)))

(declare-fun b!1671994 () Bool)

(declare-fun res!749838 () Bool)

(assert (=> b!1671994 (=> (not res!749838) (not e!1071388))))

(assert (=> b!1671994 (= res!749838 (>= (height!972 lt!631553) (max!0 (height!972 (c!271871 lt!630500)) (height!972 (c!271871 lt!630486)))))))

(declare-fun b!1671995 () Bool)

(declare-fun e!1071391 () Conc!6136)

(declare-fun e!1071392 () Conc!6136)

(assert (=> b!1671995 (= e!1071391 e!1071392)))

(declare-fun call!106669 () Conc!6136)

(assert (=> b!1671995 (= lt!631552 call!106669)))

(declare-fun c!272117 () Bool)

(assert (=> b!1671995 (= c!272117 (= call!106672 (- call!106670 3)))))

(declare-fun bm!106664 () Bool)

(declare-fun call!106675 () Conc!6136)

(assert (=> bm!106664 (= call!106675 call!106663)))

(declare-fun b!1671996 () Bool)

(declare-fun e!1071385 () Conc!6136)

(assert (=> b!1671996 (= e!1071390 e!1071385)))

(declare-fun call!106674 () Conc!6136)

(assert (=> b!1671996 (= lt!631551 call!106674)))

(declare-fun c!272116 () Bool)

(assert (=> b!1671996 (= c!272116 (= call!106662 (- call!106670 3)))))

(declare-fun bm!106665 () Bool)

(declare-fun call!106664 () Conc!6136)

(assert (=> bm!106665 (= call!106669 call!106664)))

(declare-fun b!1671997 () Bool)

(assert (=> b!1671997 (= e!1071387 call!106671)))

(declare-fun d!505827 () Bool)

(assert (=> d!505827 e!1071388))

(declare-fun res!749837 () Bool)

(assert (=> d!505827 (=> (not res!749837) (not e!1071388))))

(assert (=> d!505827 (= res!749837 (appendAssocInst!486 (c!271871 lt!630500) (c!271871 lt!630486)))))

(declare-fun e!1071393 () Conc!6136)

(assert (=> d!505827 (= lt!631553 e!1071393)))

(declare-fun c!272113 () Bool)

(assert (=> d!505827 (= c!272113 (= (c!271871 lt!630500) Empty!6136))))

(declare-fun e!1071394 () Bool)

(assert (=> d!505827 e!1071394))

(declare-fun res!749839 () Bool)

(assert (=> d!505827 (=> (not res!749839) (not e!1071394))))

(assert (=> d!505827 (= res!749839 (isBalanced!1911 (c!271871 lt!630500)))))

(assert (=> d!505827 (= (++!5027 (c!271871 lt!630500) (c!271871 lt!630486)) lt!631553)))

(declare-fun bm!106666 () Bool)

(declare-fun <>!145 (Conc!6136 Conc!6136) Conc!6136)

(assert (=> bm!106666 (= call!106676 (<>!145 (ite c!272115 (ite c!272116 (left!14732 (c!271871 lt!630500)) call!106667) (ite c!272117 lt!631552 (right!15062 (left!14732 (c!271871 lt!630486))))) (ite c!272115 (ite c!272116 call!106667 lt!631551) (ite c!272117 (right!15062 (left!14732 (c!271871 lt!630486))) (right!15062 (c!271871 lt!630486))))))))

(declare-fun b!1671998 () Bool)

(declare-fun c!272114 () Bool)

(assert (=> b!1671998 (= c!272114 (and (<= (- 1) lt!631554) (<= lt!631554 1)))))

(assert (=> b!1671998 (= lt!631554 (- (height!972 (c!271871 lt!630486)) (height!972 (c!271871 lt!630500))))))

(declare-fun e!1071389 () Conc!6136)

(assert (=> b!1671998 (= e!1071389 e!1071387)))

(declare-fun b!1671999 () Bool)

(assert (=> b!1671999 (= e!1071393 (c!271871 lt!630486))))

(declare-fun bm!106667 () Bool)

(assert (=> bm!106667 (= call!106674 call!106664)))

(declare-fun b!1672000 () Bool)

(assert (=> b!1672000 (= e!1071391 call!106675)))

(declare-fun bm!106668 () Bool)

(assert (=> bm!106668 (= call!106665 call!106663)))

(declare-fun b!1672001 () Bool)

(assert (=> b!1672001 (= e!1071390 call!106665)))

(declare-fun bm!106669 () Bool)

(declare-fun call!106673 () Conc!6136)

(assert (=> bm!106669 (= call!106673 call!106675)))

(declare-fun c!272111 () Bool)

(declare-fun bm!106670 () Bool)

(assert (=> bm!106670 (= call!106664 (++!5027 (ite c!272115 (ite c!272118 (right!15062 (c!271871 lt!630500)) (right!15062 (right!15062 (c!271871 lt!630500)))) (c!271871 lt!630500)) (ite c!272115 (c!271871 lt!630486) (ite c!272111 (left!14732 (c!271871 lt!630486)) (left!14732 (left!14732 (c!271871 lt!630486)))))))))

(declare-fun b!1672002 () Bool)

(declare-fun res!749836 () Bool)

(assert (=> b!1672002 (=> (not res!749836) (not e!1071388))))

(assert (=> b!1672002 (= res!749836 (isBalanced!1911 lt!631553))))

(declare-fun b!1672003 () Bool)

(assert (=> b!1672003 (= e!1071389 (c!271871 lt!630500))))

(declare-fun b!1672004 () Bool)

(assert (=> b!1672004 (= c!272111 (>= call!106666 call!106662))))

(assert (=> b!1672004 (= e!1071386 e!1071391)))

(declare-fun b!1672005 () Bool)

(assert (=> b!1672005 (= e!1071394 (isBalanced!1911 (c!271871 lt!630486)))))

(declare-fun b!1672006 () Bool)

(assert (=> b!1672006 (= e!1071385 call!106677)))

(declare-fun b!1672007 () Bool)

(assert (=> b!1672007 (= e!1071392 call!106673)))

(declare-fun bm!106671 () Bool)

(declare-fun call!106668 () Conc!6136)

(assert (=> bm!106671 (= call!106668 call!106676)))

(declare-fun b!1672008 () Bool)

(assert (=> b!1672008 (= e!1071393 e!1071389)))

(declare-fun c!272112 () Bool)

(assert (=> b!1672008 (= c!272112 (= (c!271871 lt!630486) Empty!6136))))

(declare-fun bm!106672 () Bool)

(assert (=> bm!106672 (= call!106671 (<>!145 (ite c!272114 (c!271871 lt!630500) (ite c!272115 (ite c!272118 (left!14732 (c!271871 lt!630500)) (ite c!272116 (left!14732 (right!15062 (c!271871 lt!630500))) (left!14732 (c!271871 lt!630500)))) (ite c!272111 call!106669 (ite c!272117 call!106668 lt!631552)))) (ite c!272114 (c!271871 lt!630486) (ite c!272115 (ite c!272118 call!106674 (ite c!272116 lt!631551 (left!14732 (right!15062 (c!271871 lt!630500))))) (ite (or c!272111 c!272117) (right!15062 (c!271871 lt!630486)) call!106668)))))))

(declare-fun b!1672009 () Bool)

(assert (=> b!1672009 (= e!1071385 call!106677)))

(declare-fun b!1672010 () Bool)

(assert (=> b!1672010 (= e!1071392 call!106673)))

(assert (= (and d!505827 res!749839) b!1672005))

(assert (= (and d!505827 c!272113) b!1671999))

(assert (= (and d!505827 (not c!272113)) b!1672008))

(assert (= (and b!1672008 c!272112) b!1672003))

(assert (= (and b!1672008 (not c!272112)) b!1671998))

(assert (= (and b!1671998 c!272114) b!1671997))

(assert (= (and b!1671998 (not c!272114)) b!1671991))

(assert (= (and b!1671991 c!272115) b!1671990))

(assert (= (and b!1671991 (not c!272115)) b!1672004))

(assert (= (and b!1671990 c!272118) b!1672001))

(assert (= (and b!1671990 (not c!272118)) b!1671996))

(assert (= (and b!1671996 c!272116) b!1672006))

(assert (= (and b!1671996 (not c!272116)) b!1672009))

(assert (= (or b!1672006 b!1672009) bm!106663))

(assert (= (or b!1672006 b!1672009) bm!106657))

(assert (= (or b!1672001 b!1671996) bm!106667))

(assert (= (or b!1672001 bm!106663) bm!106668))

(assert (= (and b!1672004 c!272111) b!1672000))

(assert (= (and b!1672004 (not c!272111)) b!1671995))

(assert (= (and b!1671995 c!272117) b!1672007))

(assert (= (and b!1671995 (not c!272117)) b!1672010))

(assert (= (or b!1672007 b!1672010) bm!106671))

(assert (= (or b!1672007 b!1672010) bm!106669))

(assert (= (or b!1672000 b!1671995) bm!106665))

(assert (= (or b!1672000 bm!106669) bm!106664))

(assert (= (or bm!106668 bm!106664) bm!106659))

(assert (= (or b!1671990 b!1672004) bm!106660))

(assert (= (or b!1671996 b!1671995) bm!106662))

(assert (= (or b!1671996 b!1672004) bm!106661))

(assert (= (or b!1671990 b!1671995) bm!106658))

(assert (= (or bm!106667 bm!106665) bm!106670))

(assert (= (or bm!106657 bm!106671) bm!106666))

(assert (= (or b!1671997 bm!106659) bm!106672))

(assert (= (and d!505827 res!749837) b!1672002))

(assert (= (and b!1672002 res!749836) b!1671993))

(assert (= (and b!1671993 res!749840) b!1671994))

(assert (= (and b!1671994 res!749838) b!1671992))

(declare-fun m!2039415 () Bool)

(assert (=> bm!106660 m!2039415))

(declare-fun m!2039417 () Bool)

(assert (=> b!1672005 m!2039417))

(declare-fun m!2039419 () Bool)

(assert (=> b!1671992 m!2039419))

(assert (=> b!1671992 m!2037431))

(assert (=> b!1671992 m!2037971))

(assert (=> b!1671992 m!2037431))

(assert (=> b!1671992 m!2037971))

(declare-fun m!2039421 () Bool)

(assert (=> b!1671992 m!2039421))

(assert (=> b!1671998 m!2037319))

(assert (=> b!1671998 m!2037325))

(declare-fun m!2039423 () Bool)

(assert (=> bm!106658 m!2039423))

(declare-fun m!2039425 () Bool)

(assert (=> b!1671994 m!2039425))

(assert (=> b!1671994 m!2037325))

(assert (=> b!1671994 m!2037319))

(assert (=> b!1671994 m!2037325))

(assert (=> b!1671994 m!2037319))

(assert (=> b!1671994 m!2037327))

(assert (=> b!1671993 m!2039425))

(assert (=> b!1671993 m!2037325))

(assert (=> b!1671993 m!2037319))

(assert (=> b!1671993 m!2037325))

(assert (=> b!1671993 m!2037319))

(assert (=> b!1671993 m!2037327))

(declare-fun m!2039427 () Bool)

(assert (=> bm!106670 m!2039427))

(assert (=> d!505827 m!2037329))

(declare-fun m!2039429 () Bool)

(assert (=> d!505827 m!2039429))

(declare-fun m!2039431 () Bool)

(assert (=> bm!106661 m!2039431))

(declare-fun m!2039433 () Bool)

(assert (=> b!1672002 m!2039433))

(declare-fun m!2039435 () Bool)

(assert (=> bm!106672 m!2039435))

(declare-fun m!2039437 () Bool)

(assert (=> bm!106662 m!2039437))

(declare-fun m!2039439 () Bool)

(assert (=> bm!106666 m!2039439))

(assert (=> b!1670971 d!505827))

(declare-fun d!505829 () Bool)

(assert (=> d!505829 (= (height!972 (c!271871 lt!630500)) (ite (is-Empty!6136 (c!271871 lt!630500)) 0 (ite (is-Leaf!8979 (c!271871 lt!630500)) 1 (cheight!6347 (c!271871 lt!630500)))))))

(assert (=> b!1670971 d!505829))

(declare-fun d!505831 () Bool)

(assert (=> d!505831 (= (max!0 (height!972 (c!271871 lt!630500)) (height!972 (c!271871 lt!630486))) (ite (< (height!972 (c!271871 lt!630500)) (height!972 (c!271871 lt!630486))) (height!972 (c!271871 lt!630486)) (height!972 (c!271871 lt!630500))))))

(assert (=> b!1670971 d!505831))

(declare-fun d!505833 () Bool)

(assert (=> d!505833 (= (height!972 (c!271871 lt!630486)) (ite (is-Empty!6136 (c!271871 lt!630486)) 0 (ite (is-Leaf!8979 (c!271871 lt!630486)) 1 (cheight!6347 (c!271871 lt!630486)))))))

(assert (=> b!1670971 d!505833))

(declare-fun d!505835 () Bool)

(assert (=> d!505835 (= (height!972 (++!5027 (c!271871 lt!630500) (c!271871 lt!630486))) (ite (is-Empty!6136 (++!5027 (c!271871 lt!630500) (c!271871 lt!630486))) 0 (ite (is-Leaf!8979 (++!5027 (c!271871 lt!630500) (c!271871 lt!630486))) 1 (cheight!6347 (++!5027 (c!271871 lt!630500) (c!271871 lt!630486))))))))

(assert (=> b!1670971 d!505835))

(declare-fun d!505837 () Bool)

(declare-fun lt!631557 () Int)

(assert (=> d!505837 (= lt!631557 (size!14662 (list!7382 lt!630478)))))

(declare-fun size!14664 (Conc!6137) Int)

(assert (=> d!505837 (= lt!631557 (size!14664 (c!271873 lt!630478)))))

(assert (=> d!505837 (= (size!14655 lt!630478) lt!631557)))

(declare-fun bs!398179 () Bool)

(assert (= bs!398179 d!505837))

(assert (=> bs!398179 m!2037807))

(assert (=> bs!398179 m!2037807))

(declare-fun m!2039441 () Bool)

(assert (=> bs!398179 m!2039441))

(declare-fun m!2039443 () Bool)

(assert (=> bs!398179 m!2039443))

(assert (=> d!505513 d!505837))

(declare-fun d!505839 () Bool)

(assert (=> d!505839 (= (list!7381 lt!630893) (list!7385 (c!271871 lt!630893)))))

(declare-fun bs!398180 () Bool)

(assert (= bs!398180 d!505839))

(declare-fun m!2039445 () Bool)

(assert (=> bs!398180 m!2039445))

(assert (=> d!505513 d!505839))

(declare-fun d!505841 () Bool)

(assert (=> d!505841 (= (dropList!722 lt!630478 0) (drop!945 (list!7386 (c!271873 lt!630478)) 0))))

(declare-fun bs!398181 () Bool)

(assert (= bs!398181 d!505841))

(assert (=> bs!398181 m!2038353))

(assert (=> bs!398181 m!2038353))

(declare-fun m!2039447 () Bool)

(assert (=> bs!398181 m!2039447))

(assert (=> d!505513 d!505841))

(declare-fun d!505843 () Bool)

(assert (=> d!505843 (= (list!7381 (BalanceConc!12217 Empty!6136)) (list!7385 (c!271871 (BalanceConc!12217 Empty!6136))))))

(declare-fun bs!398182 () Bool)

(assert (= bs!398182 d!505843))

(declare-fun m!2039449 () Bool)

(assert (=> bs!398182 m!2039449))

(assert (=> d!505513 d!505843))

(declare-fun d!505845 () Bool)

(declare-fun lt!631569 () List!18488)

(assert (=> d!505845 (= lt!631569 (++!5024 (list!7381 (BalanceConc!12217 Empty!6136)) (printList!986 thiss!17113 (dropList!722 lt!630478 0))))))

(declare-fun e!1071397 () List!18488)

(assert (=> d!505845 (= lt!631569 e!1071397)))

(declare-fun c!272121 () Bool)

(assert (=> d!505845 (= c!272121 (is-Cons!18420 (dropList!722 lt!630478 0)))))

(assert (=> d!505845 (= (printListTailRec!418 thiss!17113 (dropList!722 lt!630478 0) (list!7381 (BalanceConc!12217 Empty!6136))) lt!631569)))

(declare-fun b!1672015 () Bool)

(assert (=> b!1672015 (= e!1071397 (printListTailRec!418 thiss!17113 (t!152641 (dropList!722 lt!630478 0)) (++!5024 (list!7381 (BalanceConc!12217 Empty!6136)) (list!7381 (charsOf!1893 (h!23821 (dropList!722 lt!630478 0)))))))))

(declare-fun lt!631570 () List!18488)

(assert (=> b!1672015 (= lt!631570 (list!7381 (charsOf!1893 (h!23821 (dropList!722 lt!630478 0)))))))

(declare-fun lt!631568 () List!18488)

(assert (=> b!1672015 (= lt!631568 (printList!986 thiss!17113 (t!152641 (dropList!722 lt!630478 0))))))

(declare-fun lt!631571 () Unit!31326)

(declare-fun lemmaConcatAssociativity!1044 (List!18488 List!18488 List!18488) Unit!31326)

(assert (=> b!1672015 (= lt!631571 (lemmaConcatAssociativity!1044 (list!7381 (BalanceConc!12217 Empty!6136)) lt!631570 lt!631568))))

(assert (=> b!1672015 (= (++!5024 (++!5024 (list!7381 (BalanceConc!12217 Empty!6136)) lt!631570) lt!631568) (++!5024 (list!7381 (BalanceConc!12217 Empty!6136)) (++!5024 lt!631570 lt!631568)))))

(declare-fun lt!631572 () Unit!31326)

(assert (=> b!1672015 (= lt!631572 lt!631571)))

(declare-fun b!1672016 () Bool)

(assert (=> b!1672016 (= e!1071397 (list!7381 (BalanceConc!12217 Empty!6136)))))

(assert (= (and d!505845 c!272121) b!1672015))

(assert (= (and d!505845 (not c!272121)) b!1672016))

(assert (=> d!505845 m!2037865))

(declare-fun m!2039451 () Bool)

(assert (=> d!505845 m!2039451))

(assert (=> d!505845 m!2037867))

(assert (=> d!505845 m!2039451))

(declare-fun m!2039453 () Bool)

(assert (=> d!505845 m!2039453))

(assert (=> b!1672015 m!2037867))

(declare-fun m!2039455 () Bool)

(assert (=> b!1672015 m!2039455))

(declare-fun m!2039457 () Bool)

(assert (=> b!1672015 m!2039457))

(assert (=> b!1672015 m!2037867))

(declare-fun m!2039459 () Bool)

(assert (=> b!1672015 m!2039459))

(declare-fun m!2039461 () Bool)

(assert (=> b!1672015 m!2039461))

(assert (=> b!1672015 m!2037867))

(declare-fun m!2039463 () Bool)

(assert (=> b!1672015 m!2039463))

(declare-fun m!2039465 () Bool)

(assert (=> b!1672015 m!2039465))

(assert (=> b!1672015 m!2039463))

(declare-fun m!2039467 () Bool)

(assert (=> b!1672015 m!2039467))

(assert (=> b!1672015 m!2037867))

(assert (=> b!1672015 m!2039457))

(declare-fun m!2039469 () Bool)

(assert (=> b!1672015 m!2039469))

(assert (=> b!1672015 m!2039465))

(assert (=> b!1672015 m!2039459))

(declare-fun m!2039471 () Bool)

(assert (=> b!1672015 m!2039471))

(assert (=> b!1672015 m!2039461))

(declare-fun m!2039473 () Bool)

(assert (=> b!1672015 m!2039473))

(assert (=> d!505513 d!505845))

(assert (=> d!505365 d!505651))

(assert (=> d!505365 d!505521))

(declare-fun d!505847 () Bool)

(declare-fun lt!631573 () Int)

(assert (=> d!505847 (= lt!631573 (size!14662 (list!7382 (_1!10473 lt!630577))))))

(assert (=> d!505847 (= lt!631573 (size!14664 (c!271873 (_1!10473 lt!630577))))))

(assert (=> d!505847 (= (size!14655 (_1!10473 lt!630577)) lt!631573)))

(declare-fun bs!398183 () Bool)

(assert (= bs!398183 d!505847))

(declare-fun m!2039475 () Bool)

(assert (=> bs!398183 m!2039475))

(assert (=> bs!398183 m!2039475))

(declare-fun m!2039477 () Bool)

(assert (=> bs!398183 m!2039477))

(declare-fun m!2039479 () Bool)

(assert (=> bs!398183 m!2039479))

(assert (=> d!505365 d!505847))

(assert (=> d!505365 d!505649))

(declare-fun d!505849 () Bool)

(assert (=> d!505849 (= (list!7382 (_1!10473 (lex!1357 thiss!17113 rules!1846 (print!1404 thiss!17113 (singletonSeq!1756 (h!23821 tokens!457)))))) (list!7386 (c!271873 (_1!10473 (lex!1357 thiss!17113 rules!1846 (print!1404 thiss!17113 (singletonSeq!1756 (h!23821 tokens!457))))))))))

(declare-fun bs!398184 () Bool)

(assert (= bs!398184 d!505849))

(declare-fun m!2039481 () Bool)

(assert (=> bs!398184 m!2039481))

(assert (=> d!505365 d!505849))

(declare-fun d!505851 () Bool)

(assert (=> d!505851 (= (list!7382 (singletonSeq!1756 (h!23821 tokens!457))) (list!7386 (c!271873 (singletonSeq!1756 (h!23821 tokens!457)))))))

(declare-fun bs!398185 () Bool)

(assert (= bs!398185 d!505851))

(declare-fun m!2039483 () Bool)

(assert (=> bs!398185 m!2039483))

(assert (=> d!505365 d!505851))

(assert (=> d!505365 d!505517))

(declare-fun d!505853 () Bool)

(declare-fun res!749841 () Bool)

(declare-fun e!1071398 () Bool)

(assert (=> d!505853 (=> (not res!749841) (not e!1071398))))

(assert (=> d!505853 (= res!749841 (not (isEmpty!11487 (originalCharacters!4058 (h!23821 (t!152641 tokens!457))))))))

(assert (=> d!505853 (= (inv!23773 (h!23821 (t!152641 tokens!457))) e!1071398)))

(declare-fun b!1672017 () Bool)

(declare-fun res!749842 () Bool)

(assert (=> b!1672017 (=> (not res!749842) (not e!1071398))))

(assert (=> b!1672017 (= res!749842 (= (originalCharacters!4058 (h!23821 (t!152641 tokens!457))) (list!7381 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (value!102128 (h!23821 (t!152641 tokens!457)))))))))

(declare-fun b!1672018 () Bool)

(assert (=> b!1672018 (= e!1071398 (= (size!14653 (h!23821 (t!152641 tokens!457))) (size!14657 (originalCharacters!4058 (h!23821 (t!152641 tokens!457))))))))

(assert (= (and d!505853 res!749841) b!1672017))

(assert (= (and b!1672017 res!749842) b!1672018))

(declare-fun b_lambda!52521 () Bool)

(assert (=> (not b_lambda!52521) (not b!1672017)))

(assert (=> b!1672017 t!152653))

(declare-fun b_and!118917 () Bool)

(assert (= b_and!118909 (and (=> t!152653 result!115856) b_and!118917)))

(assert (=> b!1672017 t!152655))

(declare-fun b_and!118919 () Bool)

(assert (= b_and!118911 (and (=> t!152655 result!115860) b_and!118919)))

(assert (=> b!1672017 t!152672))

(declare-fun b_and!118921 () Bool)

(assert (= b_and!118913 (and (=> t!152672 result!115874) b_and!118921)))

(assert (=> b!1672017 t!152676))

(declare-fun b_and!118923 () Bool)

(assert (= b_and!118915 (and (=> t!152676 result!115880) b_and!118923)))

(declare-fun m!2039485 () Bool)

(assert (=> d!505853 m!2039485))

(assert (=> b!1672017 m!2037379))

(assert (=> b!1672017 m!2037379))

(declare-fun m!2039487 () Bool)

(assert (=> b!1672017 m!2039487))

(assert (=> b!1672018 m!2038859))

(assert (=> b!1671341 d!505853))

(declare-fun d!505855 () Bool)

(declare-fun lt!631576 () C!9318)

(declare-fun contains!3224 (List!18488 C!9318) Bool)

(assert (=> d!505855 (contains!3224 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) lt!631576)))

(declare-fun e!1071403 () C!9318)

(assert (=> d!505855 (= lt!631576 e!1071403)))

(declare-fun c!272124 () Bool)

(assert (=> d!505855 (= c!272124 (= 0 0))))

(declare-fun e!1071404 () Bool)

(assert (=> d!505855 e!1071404))

(declare-fun res!749845 () Bool)

(assert (=> d!505855 (=> (not res!749845) (not e!1071404))))

(assert (=> d!505855 (= res!749845 (<= 0 0))))

(assert (=> d!505855 (= (apply!4974 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) 0) lt!631576)))

(declare-fun b!1672025 () Bool)

(assert (=> b!1672025 (= e!1071404 (< 0 (size!14657 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))))))

(declare-fun b!1672026 () Bool)

(assert (=> b!1672026 (= e!1071403 (head!3736 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457))))))))

(declare-fun b!1672027 () Bool)

(assert (=> b!1672027 (= e!1071403 (apply!4974 (tail!2496 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457))))) (- 0 1)))))

(assert (= (and d!505855 res!749845) b!1672025))

(assert (= (and d!505855 c!272124) b!1672026))

(assert (= (and d!505855 (not c!272124)) b!1672027))

(assert (=> d!505855 m!2037359))

(declare-fun m!2039489 () Bool)

(assert (=> d!505855 m!2039489))

(assert (=> b!1672025 m!2037359))

(assert (=> b!1672025 m!2038987))

(assert (=> b!1672026 m!2037359))

(assert (=> b!1672026 m!2038537))

(assert (=> b!1672027 m!2037359))

(assert (=> b!1672027 m!2038541))

(assert (=> b!1672027 m!2038541))

(declare-fun m!2039491 () Bool)

(assert (=> b!1672027 m!2039491))

(assert (=> d!505393 d!505855))

(assert (=> d!505393 d!505707))

(declare-fun b!1672042 () Bool)

(declare-fun e!1071413 () Int)

(assert (=> b!1672042 (= e!1071413 (- 0 (size!14661 (left!14732 (c!271871 (charsOf!1893 (h!23821 (t!152641 tokens!457))))))))))

(declare-fun d!505857 () Bool)

(declare-fun lt!631582 () C!9318)

(assert (=> d!505857 (= lt!631582 (apply!4974 (list!7385 (c!271871 (charsOf!1893 (h!23821 (t!152641 tokens!457))))) 0))))

(declare-fun e!1071416 () C!9318)

(assert (=> d!505857 (= lt!631582 e!1071416)))

(declare-fun c!272131 () Bool)

(assert (=> d!505857 (= c!272131 (is-Leaf!8979 (c!271871 (charsOf!1893 (h!23821 (t!152641 tokens!457))))))))

(declare-fun e!1071415 () Bool)

(assert (=> d!505857 e!1071415))

(declare-fun res!749848 () Bool)

(assert (=> d!505857 (=> (not res!749848) (not e!1071415))))

(assert (=> d!505857 (= res!749848 (<= 0 0))))

(assert (=> d!505857 (= (apply!4975 (c!271871 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) 0) lt!631582)))

(declare-fun b!1672043 () Bool)

(declare-fun e!1071414 () C!9318)

(declare-fun call!106680 () C!9318)

(assert (=> b!1672043 (= e!1071414 call!106680)))

(declare-fun b!1672044 () Bool)

(declare-fun apply!4984 (IArray!12277 Int) C!9318)

(assert (=> b!1672044 (= e!1071416 (apply!4984 (xs!8980 (c!271871 (charsOf!1893 (h!23821 (t!152641 tokens!457))))) 0))))

(declare-fun b!1672045 () Bool)

(assert (=> b!1672045 (= e!1071416 e!1071414)))

(declare-fun lt!631581 () Bool)

(declare-fun appendIndex!216 (List!18488 List!18488 Int) Bool)

(assert (=> b!1672045 (= lt!631581 (appendIndex!216 (list!7385 (left!14732 (c!271871 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))) (list!7385 (right!15062 (c!271871 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))) 0))))

(declare-fun c!272133 () Bool)

(assert (=> b!1672045 (= c!272133 (< 0 (size!14661 (left!14732 (c!271871 (charsOf!1893 (h!23821 (t!152641 tokens!457))))))))))

(declare-fun b!1672046 () Bool)

(assert (=> b!1672046 (= e!1071413 0)))

(declare-fun b!1672047 () Bool)

(assert (=> b!1672047 (= e!1071415 (< 0 (size!14661 (c!271871 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))))))

(declare-fun b!1672048 () Bool)

(assert (=> b!1672048 (= e!1071414 call!106680)))

(declare-fun bm!106675 () Bool)

(declare-fun c!272132 () Bool)

(assert (=> bm!106675 (= c!272132 c!272133)))

(assert (=> bm!106675 (= call!106680 (apply!4975 (ite c!272133 (left!14732 (c!271871 (charsOf!1893 (h!23821 (t!152641 tokens!457))))) (right!15062 (c!271871 (charsOf!1893 (h!23821 (t!152641 tokens!457)))))) e!1071413))))

(assert (= (and d!505857 res!749848) b!1672047))

(assert (= (and d!505857 c!272131) b!1672044))

(assert (= (and d!505857 (not c!272131)) b!1672045))

(assert (= (and b!1672045 c!272133) b!1672043))

(assert (= (and b!1672045 (not c!272133)) b!1672048))

(assert (= (or b!1672043 b!1672048) bm!106675))

(assert (= (and bm!106675 c!272132) b!1672046))

(assert (= (and bm!106675 (not c!272132)) b!1672042))

(declare-fun m!2039493 () Bool)

(assert (=> b!1672045 m!2039493))

(declare-fun m!2039495 () Bool)

(assert (=> b!1672045 m!2039495))

(assert (=> b!1672045 m!2039493))

(assert (=> b!1672045 m!2039495))

(declare-fun m!2039497 () Bool)

(assert (=> b!1672045 m!2039497))

(declare-fun m!2039499 () Bool)

(assert (=> b!1672045 m!2039499))

(assert (=> b!1672042 m!2039499))

(declare-fun m!2039501 () Bool)

(assert (=> b!1672047 m!2039501))

(assert (=> d!505857 m!2038831))

(assert (=> d!505857 m!2038831))

(declare-fun m!2039503 () Bool)

(assert (=> d!505857 m!2039503))

(declare-fun m!2039505 () Bool)

(assert (=> b!1672044 m!2039505))

(declare-fun m!2039507 () Bool)

(assert (=> bm!106675 m!2039507))

(assert (=> d!505393 d!505857))

(declare-fun d!505859 () Bool)

(assert (=> d!505859 (= (list!7382 (_1!10473 lt!630590)) (list!7386 (c!271873 (_1!10473 lt!630590))))))

(declare-fun bs!398186 () Bool)

(assert (= bs!398186 d!505859))

(declare-fun m!2039509 () Bool)

(assert (=> bs!398186 m!2039509))

(assert (=> b!1670951 d!505859))

(declare-fun b!1672059 () Bool)

(declare-fun e!1071424 () Bool)

(declare-fun lt!631589 () tuple2!18148)

(assert (=> b!1672059 (= e!1071424 (= (_2!10476 lt!631589) (list!7381 (seqFromList!2225 lt!630482))))))

(declare-fun b!1672060 () Bool)

(declare-fun e!1071425 () Bool)

(assert (=> b!1672060 (= e!1071424 e!1071425)))

(declare-fun res!749851 () Bool)

(assert (=> b!1672060 (= res!749851 (< (size!14657 (_2!10476 lt!631589)) (size!14657 (list!7381 (seqFromList!2225 lt!630482)))))))

(assert (=> b!1672060 (=> (not res!749851) (not e!1071425))))

(declare-fun d!505861 () Bool)

(assert (=> d!505861 e!1071424))

(declare-fun c!272139 () Bool)

(assert (=> d!505861 (= c!272139 (> (size!14662 (_1!10476 lt!631589)) 0))))

(declare-fun e!1071423 () tuple2!18148)

(assert (=> d!505861 (= lt!631589 e!1071423)))

(declare-fun c!272138 () Bool)

(declare-fun lt!631590 () Option!3539)

(assert (=> d!505861 (= c!272138 (is-Some!3538 lt!631590))))

(assert (=> d!505861 (= lt!631590 (maxPrefix!1433 thiss!17113 rules!1846 (list!7381 (seqFromList!2225 lt!630482))))))

(assert (=> d!505861 (= (lexList!898 thiss!17113 rules!1846 (list!7381 (seqFromList!2225 lt!630482))) lt!631589)))

(declare-fun b!1672061 () Bool)

(assert (=> b!1672061 (= e!1071423 (tuple2!18149 Nil!18420 (list!7381 (seqFromList!2225 lt!630482))))))

(declare-fun b!1672062 () Bool)

(declare-fun lt!631591 () tuple2!18148)

(assert (=> b!1672062 (= e!1071423 (tuple2!18149 (Cons!18420 (_1!10472 (v!24811 lt!631590)) (_1!10476 lt!631591)) (_2!10476 lt!631591)))))

(assert (=> b!1672062 (= lt!631591 (lexList!898 thiss!17113 rules!1846 (_2!10472 (v!24811 lt!631590))))))

(declare-fun b!1672063 () Bool)

(assert (=> b!1672063 (= e!1071425 (not (isEmpty!11483 (_1!10476 lt!631589))))))

(assert (= (and d!505861 c!272138) b!1672062))

(assert (= (and d!505861 (not c!272138)) b!1672061))

(assert (= (and d!505861 c!272139) b!1672060))

(assert (= (and d!505861 (not c!272139)) b!1672059))

(assert (= (and b!1672060 res!749851) b!1672063))

(declare-fun m!2039511 () Bool)

(assert (=> b!1672060 m!2039511))

(assert (=> b!1672060 m!2037291))

(declare-fun m!2039513 () Bool)

(assert (=> b!1672060 m!2039513))

(declare-fun m!2039515 () Bool)

(assert (=> d!505861 m!2039515))

(assert (=> d!505861 m!2037291))

(declare-fun m!2039517 () Bool)

(assert (=> d!505861 m!2039517))

(declare-fun m!2039519 () Bool)

(assert (=> b!1672062 m!2039519))

(declare-fun m!2039521 () Bool)

(assert (=> b!1672063 m!2039521))

(assert (=> b!1670951 d!505861))

(declare-fun d!505863 () Bool)

(assert (=> d!505863 (= (list!7381 (seqFromList!2225 lt!630482)) (list!7385 (c!271871 (seqFromList!2225 lt!630482))))))

(declare-fun bs!398187 () Bool)

(assert (= bs!398187 d!505863))

(declare-fun m!2039523 () Bool)

(assert (=> bs!398187 m!2039523))

(assert (=> b!1670951 d!505863))

(declare-fun d!505865 () Bool)

(assert (=> d!505865 (= (get!5395 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!630688)))) (v!24819 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!630688)))))))

(assert (=> b!1671048 d!505865))

(assert (=> b!1671048 d!505813))

(declare-fun d!505867 () Bool)

(assert (=> d!505867 (= (inv!23777 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (value!102128 (h!23821 (t!152641 tokens!457))))) (isBalanced!1911 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (value!102128 (h!23821 (t!152641 tokens!457)))))))))

(declare-fun bs!398188 () Bool)

(assert (= bs!398188 d!505867))

(declare-fun m!2039525 () Bool)

(assert (=> bs!398188 m!2039525))

(assert (=> tb!95875 d!505867))

(declare-fun b!1672066 () Bool)

(declare-fun e!1071427 () List!18488)

(assert (=> b!1672066 (= e!1071427 (list!7390 (xs!8980 (c!271871 lt!630500))))))

(declare-fun b!1672065 () Bool)

(declare-fun e!1071426 () List!18488)

(assert (=> b!1672065 (= e!1071426 e!1071427)))

(declare-fun c!272141 () Bool)

(assert (=> b!1672065 (= c!272141 (is-Leaf!8979 (c!271871 lt!630500)))))

(declare-fun b!1672067 () Bool)

(assert (=> b!1672067 (= e!1071427 (++!5024 (list!7385 (left!14732 (c!271871 lt!630500))) (list!7385 (right!15062 (c!271871 lt!630500)))))))

(declare-fun b!1672064 () Bool)

(assert (=> b!1672064 (= e!1071426 Nil!18418)))

(declare-fun d!505869 () Bool)

(declare-fun c!272140 () Bool)

(assert (=> d!505869 (= c!272140 (is-Empty!6136 (c!271871 lt!630500)))))

(assert (=> d!505869 (= (list!7385 (c!271871 lt!630500)) e!1071426)))

(assert (= (and d!505869 c!272140) b!1672064))

(assert (= (and d!505869 (not c!272140)) b!1672065))

(assert (= (and b!1672065 c!272141) b!1672066))

(assert (= (and b!1672065 (not c!272141)) b!1672067))

(declare-fun m!2039527 () Bool)

(assert (=> b!1672066 m!2039527))

(declare-fun m!2039529 () Bool)

(assert (=> b!1672067 m!2039529))

(declare-fun m!2039531 () Bool)

(assert (=> b!1672067 m!2039531))

(assert (=> b!1672067 m!2039529))

(assert (=> b!1672067 m!2039531))

(declare-fun m!2039533 () Bool)

(assert (=> b!1672067 m!2039533))

(assert (=> d!505407 d!505869))

(declare-fun d!505871 () Bool)

(assert (=> d!505871 (= (list!7382 lt!630901) (list!7386 (c!271873 lt!630901)))))

(declare-fun bs!398189 () Bool)

(assert (= bs!398189 d!505871))

(declare-fun m!2039535 () Bool)

(assert (=> bs!398189 m!2039535))

(assert (=> d!505517 d!505871))

(declare-fun d!505873 () Bool)

(declare-fun e!1071430 () Bool)

(assert (=> d!505873 e!1071430))

(declare-fun res!749854 () Bool)

(assert (=> d!505873 (=> (not res!749854) (not e!1071430))))

(declare-fun lt!631594 () BalanceConc!12218)

(assert (=> d!505873 (= res!749854 (= (list!7382 lt!631594) (Cons!18420 (h!23821 tokens!457) Nil!18420)))))

(declare-fun choose!10074 (Token!6054) BalanceConc!12218)

(assert (=> d!505873 (= lt!631594 (choose!10074 (h!23821 tokens!457)))))

(assert (=> d!505873 (= (singleton!786 (h!23821 tokens!457)) lt!631594)))

(declare-fun b!1672070 () Bool)

(assert (=> b!1672070 (= e!1071430 (isBalanced!1912 (c!271873 lt!631594)))))

(assert (= (and d!505873 res!749854) b!1672070))

(declare-fun m!2039537 () Bool)

(assert (=> d!505873 m!2039537))

(declare-fun m!2039539 () Bool)

(assert (=> d!505873 m!2039539))

(declare-fun m!2039541 () Bool)

(assert (=> b!1672070 m!2039541))

(assert (=> d!505517 d!505873))

(declare-fun b!1672073 () Bool)

(declare-fun e!1071432 () List!18488)

(assert (=> b!1672073 (= e!1071432 (list!7390 (xs!8980 (c!271871 lt!630486))))))

(declare-fun b!1672072 () Bool)

(declare-fun e!1071431 () List!18488)

(assert (=> b!1672072 (= e!1071431 e!1071432)))

(declare-fun c!272143 () Bool)

(assert (=> b!1672072 (= c!272143 (is-Leaf!8979 (c!271871 lt!630486)))))

(declare-fun b!1672074 () Bool)

(assert (=> b!1672074 (= e!1071432 (++!5024 (list!7385 (left!14732 (c!271871 lt!630486))) (list!7385 (right!15062 (c!271871 lt!630486)))))))

(declare-fun b!1672071 () Bool)

(assert (=> b!1672071 (= e!1071431 Nil!18418)))

(declare-fun d!505875 () Bool)

(declare-fun c!272142 () Bool)

(assert (=> d!505875 (= c!272142 (is-Empty!6136 (c!271871 lt!630486)))))

(assert (=> d!505875 (= (list!7385 (c!271871 lt!630486)) e!1071431)))

(assert (= (and d!505875 c!272142) b!1672071))

(assert (= (and d!505875 (not c!272142)) b!1672072))

(assert (= (and b!1672072 c!272143) b!1672073))

(assert (= (and b!1672072 (not c!272143)) b!1672074))

(declare-fun m!2039543 () Bool)

(assert (=> b!1672073 m!2039543))

(declare-fun m!2039545 () Bool)

(assert (=> b!1672074 m!2039545))

(declare-fun m!2039547 () Bool)

(assert (=> b!1672074 m!2039547))

(assert (=> b!1672074 m!2039545))

(assert (=> b!1672074 m!2039547))

(declare-fun m!2039549 () Bool)

(assert (=> b!1672074 m!2039549))

(assert (=> d!505541 d!505875))

(declare-fun d!505877 () Bool)

(assert (=> d!505877 true))

(declare-fun order!11085 () Int)

(declare-fun lambda!68057 () Int)

(declare-fun dynLambda!8321 (Int Int) Int)

(assert (=> d!505877 (< (dynLambda!8315 order!11077 (toChars!4570 (transformation!3244 (h!23820 rules!1846)))) (dynLambda!8321 order!11085 lambda!68057))))

(assert (=> d!505877 true))

(assert (=> d!505877 (< (dynLambda!8313 order!11073 (toValue!4711 (transformation!3244 (h!23820 rules!1846)))) (dynLambda!8321 order!11085 lambda!68057))))

(declare-fun Forall!663 (Int) Bool)

(assert (=> d!505877 (= (semiInverseModEq!1269 (toChars!4570 (transformation!3244 (h!23820 rules!1846))) (toValue!4711 (transformation!3244 (h!23820 rules!1846)))) (Forall!663 lambda!68057))))

(declare-fun bs!398190 () Bool)

(assert (= bs!398190 d!505877))

(declare-fun m!2039551 () Bool)

(assert (=> bs!398190 m!2039551))

(assert (=> d!505363 d!505877))

(declare-fun b!1672079 () Bool)

(declare-fun e!1071433 () Bool)

(declare-fun e!1071435 () Bool)

(assert (=> b!1672079 (= e!1071433 e!1071435)))

(declare-fun res!749858 () Bool)

(assert (=> b!1672079 (=> (not res!749858) (not e!1071435))))

(assert (=> b!1672079 (= res!749858 (not (is-Nil!18418 (tail!2496 lt!630484))))))

(declare-fun d!505879 () Bool)

(declare-fun e!1071434 () Bool)

(assert (=> d!505879 e!1071434))

(declare-fun res!749857 () Bool)

(assert (=> d!505879 (=> res!749857 e!1071434)))

(declare-fun lt!631595 () Bool)

(assert (=> d!505879 (= res!749857 (not lt!631595))))

(assert (=> d!505879 (= lt!631595 e!1071433)))

(declare-fun res!749855 () Bool)

(assert (=> d!505879 (=> res!749855 e!1071433)))

(assert (=> d!505879 (= res!749855 (is-Nil!18418 (tail!2496 lt!630482)))))

(assert (=> d!505879 (= (isPrefix!1502 (tail!2496 lt!630482) (tail!2496 lt!630484)) lt!631595)))

(declare-fun b!1672082 () Bool)

(assert (=> b!1672082 (= e!1071434 (>= (size!14657 (tail!2496 lt!630484)) (size!14657 (tail!2496 lt!630482))))))

(declare-fun b!1672081 () Bool)

(assert (=> b!1672081 (= e!1071435 (isPrefix!1502 (tail!2496 (tail!2496 lt!630482)) (tail!2496 (tail!2496 lt!630484))))))

(declare-fun b!1672080 () Bool)

(declare-fun res!749856 () Bool)

(assert (=> b!1672080 (=> (not res!749856) (not e!1071435))))

(assert (=> b!1672080 (= res!749856 (= (head!3736 (tail!2496 lt!630482)) (head!3736 (tail!2496 lt!630484))))))

(assert (= (and d!505879 (not res!749855)) b!1672079))

(assert (= (and b!1672079 res!749858) b!1672080))

(assert (= (and b!1672080 res!749856) b!1672081))

(assert (= (and d!505879 (not res!749857)) b!1672082))

(assert (=> b!1672082 m!2038127))

(declare-fun m!2039553 () Bool)

(assert (=> b!1672082 m!2039553))

(assert (=> b!1672082 m!2038125))

(declare-fun m!2039555 () Bool)

(assert (=> b!1672082 m!2039555))

(assert (=> b!1672081 m!2038125))

(declare-fun m!2039557 () Bool)

(assert (=> b!1672081 m!2039557))

(assert (=> b!1672081 m!2038127))

(declare-fun m!2039559 () Bool)

(assert (=> b!1672081 m!2039559))

(assert (=> b!1672081 m!2039557))

(assert (=> b!1672081 m!2039559))

(declare-fun m!2039561 () Bool)

(assert (=> b!1672081 m!2039561))

(assert (=> b!1672080 m!2038125))

(declare-fun m!2039563 () Bool)

(assert (=> b!1672080 m!2039563))

(assert (=> b!1672080 m!2038127))

(declare-fun m!2039565 () Bool)

(assert (=> b!1672080 m!2039565))

(assert (=> b!1671300 d!505879))

(declare-fun d!505881 () Bool)

(assert (=> d!505881 (= (tail!2496 lt!630482) (t!152639 lt!630482))))

(assert (=> b!1671300 d!505881))

(declare-fun d!505883 () Bool)

(assert (=> d!505883 (= (tail!2496 lt!630484) (t!152639 lt!630484))))

(assert (=> b!1671300 d!505883))

(declare-fun d!505885 () Bool)

(declare-fun charsToBigInt!1 (List!18487) Int)

(assert (=> d!505885 (= (inv!17 (value!102128 (h!23821 tokens!457))) (= (charsToBigInt!1 (text!23786 (value!102128 (h!23821 tokens!457)))) (value!102120 (value!102128 (h!23821 tokens!457)))))))

(declare-fun bs!398191 () Bool)

(assert (= bs!398191 d!505885))

(declare-fun m!2039567 () Bool)

(assert (=> bs!398191 m!2039567))

(assert (=> b!1671026 d!505885))

(declare-fun d!505887 () Bool)

(assert (=> d!505887 (= (list!7381 lt!630841) (list!7385 (c!271871 lt!630841)))))

(declare-fun bs!398192 () Bool)

(assert (= bs!398192 d!505887))

(declare-fun m!2039569 () Bool)

(assert (=> bs!398192 m!2039569))

(assert (=> d!505495 d!505887))

(declare-fun d!505889 () Bool)

(declare-fun c!272144 () Bool)

(assert (=> d!505889 (= c!272144 (is-Cons!18420 (list!7382 lt!630478)))))

(declare-fun e!1071436 () List!18488)

(assert (=> d!505889 (= (printList!986 thiss!17113 (list!7382 lt!630478)) e!1071436)))

(declare-fun b!1672083 () Bool)

(assert (=> b!1672083 (= e!1071436 (++!5024 (list!7381 (charsOf!1893 (h!23821 (list!7382 lt!630478)))) (printList!986 thiss!17113 (t!152641 (list!7382 lt!630478)))))))

(declare-fun b!1672084 () Bool)

(assert (=> b!1672084 (= e!1071436 Nil!18418)))

(assert (= (and d!505889 c!272144) b!1672083))

(assert (= (and d!505889 (not c!272144)) b!1672084))

(declare-fun m!2039571 () Bool)

(assert (=> b!1672083 m!2039571))

(assert (=> b!1672083 m!2039571))

(declare-fun m!2039573 () Bool)

(assert (=> b!1672083 m!2039573))

(declare-fun m!2039575 () Bool)

(assert (=> b!1672083 m!2039575))

(assert (=> b!1672083 m!2039573))

(assert (=> b!1672083 m!2039575))

(declare-fun m!2039577 () Bool)

(assert (=> b!1672083 m!2039577))

(assert (=> d!505495 d!505889))

(assert (=> d!505495 d!505617))

(assert (=> d!505495 d!505513))

(declare-fun d!505891 () Bool)

(declare-fun lt!631596 () Bool)

(assert (=> d!505891 (= lt!631596 (isEmpty!11483 (list!7382 (_1!10473 lt!630590))))))

(assert (=> d!505891 (= lt!631596 (isEmpty!11484 (c!271873 (_1!10473 lt!630590))))))

(assert (=> d!505891 (= (isEmpty!11478 (_1!10473 lt!630590)) lt!631596)))

(declare-fun bs!398193 () Bool)

(assert (= bs!398193 d!505891))

(assert (=> bs!398193 m!2037289))

(assert (=> bs!398193 m!2037289))

(declare-fun m!2039579 () Bool)

(assert (=> bs!398193 m!2039579))

(declare-fun m!2039581 () Bool)

(assert (=> bs!398193 m!2039581))

(assert (=> b!1670954 d!505891))

(declare-fun d!505893 () Bool)

(assert (=> d!505893 (= (list!7381 lt!630646) (list!7385 (c!271871 lt!630646)))))

(declare-fun bs!398194 () Bool)

(assert (= bs!398194 d!505893))

(declare-fun m!2039583 () Bool)

(assert (=> bs!398194 m!2039583))

(assert (=> d!505417 d!505893))

(declare-fun d!505895 () Bool)

(assert (=> d!505895 (= (list!7381 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (value!102128 (h!23821 tokens!457)))) (list!7385 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (value!102128 (h!23821 tokens!457))))))))

(declare-fun bs!398195 () Bool)

(assert (= bs!398195 d!505895))

(declare-fun m!2039585 () Bool)

(assert (=> bs!398195 m!2039585))

(assert (=> b!1671235 d!505895))

(declare-fun d!505897 () Bool)

(assert (=> d!505897 (= (list!7381 (_2!10473 lt!630644)) (list!7385 (c!271871 (_2!10473 lt!630644))))))

(declare-fun bs!398196 () Bool)

(assert (= bs!398196 d!505897))

(declare-fun m!2039587 () Bool)

(assert (=> bs!398196 m!2039587))

(assert (=> b!1671006 d!505897))

(declare-fun b!1672085 () Bool)

(declare-fun e!1071438 () Bool)

(declare-fun lt!631597 () tuple2!18148)

(assert (=> b!1672085 (= e!1071438 (= (_2!10476 lt!631597) (list!7381 lt!630493)))))

(declare-fun b!1672086 () Bool)

(declare-fun e!1071439 () Bool)

(assert (=> b!1672086 (= e!1071438 e!1071439)))

(declare-fun res!749859 () Bool)

(assert (=> b!1672086 (= res!749859 (< (size!14657 (_2!10476 lt!631597)) (size!14657 (list!7381 lt!630493))))))

(assert (=> b!1672086 (=> (not res!749859) (not e!1071439))))

(declare-fun d!505899 () Bool)

(assert (=> d!505899 e!1071438))

(declare-fun c!272146 () Bool)

(assert (=> d!505899 (= c!272146 (> (size!14662 (_1!10476 lt!631597)) 0))))

(declare-fun e!1071437 () tuple2!18148)

(assert (=> d!505899 (= lt!631597 e!1071437)))

(declare-fun c!272145 () Bool)

(declare-fun lt!631598 () Option!3539)

(assert (=> d!505899 (= c!272145 (is-Some!3538 lt!631598))))

(assert (=> d!505899 (= lt!631598 (maxPrefix!1433 thiss!17113 rules!1846 (list!7381 lt!630493)))))

(assert (=> d!505899 (= (lexList!898 thiss!17113 rules!1846 (list!7381 lt!630493)) lt!631597)))

(declare-fun b!1672087 () Bool)

(assert (=> b!1672087 (= e!1071437 (tuple2!18149 Nil!18420 (list!7381 lt!630493)))))

(declare-fun b!1672088 () Bool)

(declare-fun lt!631599 () tuple2!18148)

(assert (=> b!1672088 (= e!1071437 (tuple2!18149 (Cons!18420 (_1!10472 (v!24811 lt!631598)) (_1!10476 lt!631599)) (_2!10476 lt!631599)))))

(assert (=> b!1672088 (= lt!631599 (lexList!898 thiss!17113 rules!1846 (_2!10472 (v!24811 lt!631598))))))

(declare-fun b!1672089 () Bool)

(assert (=> b!1672089 (= e!1071439 (not (isEmpty!11483 (_1!10476 lt!631597))))))

(assert (= (and d!505899 c!272145) b!1672088))

(assert (= (and d!505899 (not c!272145)) b!1672087))

(assert (= (and d!505899 c!272146) b!1672086))

(assert (= (and d!505899 (not c!272146)) b!1672085))

(assert (= (and b!1672086 res!749859) b!1672089))

(declare-fun m!2039589 () Bool)

(assert (=> b!1672086 m!2039589))

(assert (=> b!1672086 m!2037077))

(assert (=> b!1672086 m!2038309))

(declare-fun m!2039591 () Bool)

(assert (=> d!505899 m!2039591))

(assert (=> d!505899 m!2037077))

(declare-fun m!2039593 () Bool)

(assert (=> d!505899 m!2039593))

(declare-fun m!2039595 () Bool)

(assert (=> b!1672088 m!2039595))

(declare-fun m!2039597 () Bool)

(assert (=> b!1672089 m!2039597))

(assert (=> b!1671006 d!505899))

(assert (=> b!1671006 d!505403))

(declare-fun d!505901 () Bool)

(assert (=> d!505901 (= (isEmpty!11487 (originalCharacters!4058 (h!23821 tokens!457))) (is-Nil!18418 (originalCharacters!4058 (h!23821 tokens!457))))))

(assert (=> d!505535 d!505901))

(declare-fun d!505903 () Bool)

(declare-fun res!749861 () Bool)

(declare-fun e!1071440 () Bool)

(assert (=> d!505903 (=> res!749861 e!1071440)))

(assert (=> d!505903 (= res!749861 (or (not (is-Cons!18420 (Cons!18420 (h!23821 (t!152641 tokens!457)) (t!152641 (t!152641 tokens!457))))) (not (is-Cons!18420 (t!152641 (Cons!18420 (h!23821 (t!152641 tokens!457)) (t!152641 (t!152641 tokens!457))))))))))

(assert (=> d!505903 (= (tokensListTwoByTwoPredicateSeparableList!566 thiss!17113 (Cons!18420 (h!23821 (t!152641 tokens!457)) (t!152641 (t!152641 tokens!457))) rules!1846) e!1071440)))

(declare-fun b!1672090 () Bool)

(declare-fun e!1071441 () Bool)

(assert (=> b!1672090 (= e!1071440 e!1071441)))

(declare-fun res!749860 () Bool)

(assert (=> b!1672090 (=> (not res!749860) (not e!1071441))))

(assert (=> b!1672090 (= res!749860 (separableTokensPredicate!813 thiss!17113 (h!23821 (Cons!18420 (h!23821 (t!152641 tokens!457)) (t!152641 (t!152641 tokens!457)))) (h!23821 (t!152641 (Cons!18420 (h!23821 (t!152641 tokens!457)) (t!152641 (t!152641 tokens!457))))) rules!1846))))

(declare-fun lt!631605 () Unit!31326)

(declare-fun Unit!31401 () Unit!31326)

(assert (=> b!1672090 (= lt!631605 Unit!31401)))

(assert (=> b!1672090 (> (size!14656 (charsOf!1893 (h!23821 (t!152641 (Cons!18420 (h!23821 (t!152641 tokens!457)) (t!152641 (t!152641 tokens!457))))))) 0)))

(declare-fun lt!631603 () Unit!31326)

(declare-fun Unit!31402 () Unit!31326)

(assert (=> b!1672090 (= lt!631603 Unit!31402)))

(assert (=> b!1672090 (rulesProduceIndividualToken!1521 thiss!17113 rules!1846 (h!23821 (t!152641 (Cons!18420 (h!23821 (t!152641 tokens!457)) (t!152641 (t!152641 tokens!457))))))))

(declare-fun lt!631602 () Unit!31326)

(declare-fun Unit!31403 () Unit!31326)

(assert (=> b!1672090 (= lt!631602 Unit!31403)))

(assert (=> b!1672090 (rulesProduceIndividualToken!1521 thiss!17113 rules!1846 (h!23821 (Cons!18420 (h!23821 (t!152641 tokens!457)) (t!152641 (t!152641 tokens!457)))))))

(declare-fun lt!631604 () Unit!31326)

(declare-fun lt!631601 () Unit!31326)

(assert (=> b!1672090 (= lt!631604 lt!631601)))

(assert (=> b!1672090 (rulesProduceIndividualToken!1521 thiss!17113 rules!1846 (h!23821 (t!152641 (Cons!18420 (h!23821 (t!152641 tokens!457)) (t!152641 (t!152641 tokens!457))))))))

(assert (=> b!1672090 (= lt!631601 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!633 thiss!17113 rules!1846 (Cons!18420 (h!23821 (t!152641 tokens!457)) (t!152641 (t!152641 tokens!457))) (h!23821 (t!152641 (Cons!18420 (h!23821 (t!152641 tokens!457)) (t!152641 (t!152641 tokens!457)))))))))

(declare-fun lt!631600 () Unit!31326)

(declare-fun lt!631606 () Unit!31326)

(assert (=> b!1672090 (= lt!631600 lt!631606)))

(assert (=> b!1672090 (rulesProduceIndividualToken!1521 thiss!17113 rules!1846 (h!23821 (Cons!18420 (h!23821 (t!152641 tokens!457)) (t!152641 (t!152641 tokens!457)))))))

(assert (=> b!1672090 (= lt!631606 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!633 thiss!17113 rules!1846 (Cons!18420 (h!23821 (t!152641 tokens!457)) (t!152641 (t!152641 tokens!457))) (h!23821 (Cons!18420 (h!23821 (t!152641 tokens!457)) (t!152641 (t!152641 tokens!457))))))))

(declare-fun b!1672091 () Bool)

(assert (=> b!1672091 (= e!1071441 (tokensListTwoByTwoPredicateSeparableList!566 thiss!17113 (Cons!18420 (h!23821 (t!152641 (Cons!18420 (h!23821 (t!152641 tokens!457)) (t!152641 (t!152641 tokens!457))))) (t!152641 (t!152641 (Cons!18420 (h!23821 (t!152641 tokens!457)) (t!152641 (t!152641 tokens!457)))))) rules!1846))))

(assert (= (and d!505903 (not res!749861)) b!1672090))

(assert (= (and b!1672090 res!749860) b!1672091))

(declare-fun m!2039599 () Bool)

(assert (=> b!1672090 m!2039599))

(declare-fun m!2039601 () Bool)

(assert (=> b!1672090 m!2039601))

(declare-fun m!2039603 () Bool)

(assert (=> b!1672090 m!2039603))

(declare-fun m!2039605 () Bool)

(assert (=> b!1672090 m!2039605))

(declare-fun m!2039607 () Bool)

(assert (=> b!1672090 m!2039607))

(declare-fun m!2039609 () Bool)

(assert (=> b!1672090 m!2039609))

(declare-fun m!2039611 () Bool)

(assert (=> b!1672090 m!2039611))

(assert (=> b!1672090 m!2039605))

(declare-fun m!2039613 () Bool)

(assert (=> b!1672091 m!2039613))

(assert (=> b!1671227 d!505903))

(declare-fun d!505905 () Bool)

(assert (=> d!505905 (= (inv!23769 (tag!3528 (h!23820 (t!152640 rules!1846)))) (= (mod (str.len (value!102127 (tag!3528 (h!23820 (t!152640 rules!1846))))) 2) 0))))

(assert (=> b!1671329 d!505905))

(declare-fun d!505907 () Bool)

(declare-fun res!749862 () Bool)

(declare-fun e!1071442 () Bool)

(assert (=> d!505907 (=> (not res!749862) (not e!1071442))))

(assert (=> d!505907 (= res!749862 (semiInverseModEq!1269 (toChars!4570 (transformation!3244 (h!23820 (t!152640 rules!1846)))) (toValue!4711 (transformation!3244 (h!23820 (t!152640 rules!1846))))))))

(assert (=> d!505907 (= (inv!23772 (transformation!3244 (h!23820 (t!152640 rules!1846)))) e!1071442)))

(declare-fun b!1672092 () Bool)

(assert (=> b!1672092 (= e!1071442 (equivClasses!1210 (toChars!4570 (transformation!3244 (h!23820 (t!152640 rules!1846)))) (toValue!4711 (transformation!3244 (h!23820 (t!152640 rules!1846))))))))

(assert (= (and d!505907 res!749862) b!1672092))

(declare-fun m!2039615 () Bool)

(assert (=> d!505907 m!2039615))

(declare-fun m!2039617 () Bool)

(assert (=> b!1672092 m!2039617))

(assert (=> b!1671329 d!505907))

(declare-fun d!505909 () Bool)

(declare-fun lt!631607 () Int)

(assert (=> d!505909 (>= lt!631607 0)))

(declare-fun e!1071443 () Int)

(assert (=> d!505909 (= lt!631607 e!1071443)))

(declare-fun c!272147 () Bool)

(assert (=> d!505909 (= c!272147 (is-Nil!18418 lt!630643))))

(assert (=> d!505909 (= (size!14657 lt!630643) lt!631607)))

(declare-fun b!1672093 () Bool)

(assert (=> b!1672093 (= e!1071443 0)))

(declare-fun b!1672094 () Bool)

(assert (=> b!1672094 (= e!1071443 (+ 1 (size!14657 (t!152639 lt!630643))))))

(assert (= (and d!505909 c!272147) b!1672093))

(assert (= (and d!505909 (not c!272147)) b!1672094))

(declare-fun m!2039619 () Bool)

(assert (=> b!1672094 m!2039619))

(assert (=> b!1671001 d!505909))

(assert (=> b!1671001 d!505597))

(declare-fun d!505911 () Bool)

(declare-fun lt!631608 () Int)

(assert (=> d!505911 (>= lt!631608 0)))

(declare-fun e!1071444 () Int)

(assert (=> d!505911 (= lt!631608 e!1071444)))

(declare-fun c!272148 () Bool)

(assert (=> d!505911 (= c!272148 (is-Nil!18418 lt!630481))))

(assert (=> d!505911 (= (size!14657 lt!630481) lt!631608)))

(declare-fun b!1672095 () Bool)

(assert (=> b!1672095 (= e!1071444 0)))

(declare-fun b!1672096 () Bool)

(assert (=> b!1672096 (= e!1071444 (+ 1 (size!14657 (t!152639 lt!630481))))))

(assert (= (and d!505911 c!272148) b!1672095))

(assert (= (and d!505911 (not c!272148)) b!1672096))

(declare-fun m!2039621 () Bool)

(assert (=> b!1672096 m!2039621))

(assert (=> b!1671001 d!505911))

(declare-fun d!505913 () Bool)

(declare-fun lt!631609 () Int)

(assert (=> d!505913 (= lt!631609 (size!14657 (list!7381 (charsOf!1893 (h!23821 (t!152641 tokens!457))))))))

(assert (=> d!505913 (= lt!631609 (size!14661 (c!271871 (charsOf!1893 (h!23821 (t!152641 tokens!457))))))))

(assert (=> d!505913 (= (size!14656 (charsOf!1893 (h!23821 (t!152641 tokens!457)))) lt!631609)))

(declare-fun bs!398197 () Bool)

(assert (= bs!398197 d!505913))

(assert (=> bs!398197 m!2037017))

(assert (=> bs!398197 m!2037359))

(assert (=> bs!398197 m!2037359))

(assert (=> bs!398197 m!2038987))

(assert (=> bs!398197 m!2039501))

(assert (=> b!1670975 d!505913))

(declare-fun d!505915 () Bool)

(declare-fun lt!631610 () Bool)

(assert (=> d!505915 (= lt!631610 (isEmpty!11487 (list!7381 (_2!10473 lt!630577))))))

(assert (=> d!505915 (= lt!631610 (isEmpty!11492 (c!271871 (_2!10473 lt!630577))))))

(assert (=> d!505915 (= (isEmpty!11482 (_2!10473 lt!630577)) lt!631610)))

(declare-fun bs!398198 () Bool)

(assert (= bs!398198 d!505915))

(declare-fun m!2039623 () Bool)

(assert (=> bs!398198 m!2039623))

(assert (=> bs!398198 m!2039623))

(declare-fun m!2039625 () Bool)

(assert (=> bs!398198 m!2039625))

(declare-fun m!2039627 () Bool)

(assert (=> bs!398198 m!2039627))

(assert (=> b!1670915 d!505915))

(declare-fun d!505917 () Bool)

(assert (=> d!505917 (= (list!7381 lt!630638) (list!7385 (c!271871 lt!630638)))))

(declare-fun bs!398199 () Bool)

(assert (= bs!398199 d!505917))

(declare-fun m!2039629 () Bool)

(assert (=> bs!398199 m!2039629))

(assert (=> d!505399 d!505917))

(declare-fun d!505919 () Bool)

(declare-fun c!272149 () Bool)

(assert (=> d!505919 (= c!272149 (is-Cons!18420 (list!7382 (seqFromList!2226 tokens!457))))))

(declare-fun e!1071445 () List!18488)

(assert (=> d!505919 (= (printList!986 thiss!17113 (list!7382 (seqFromList!2226 tokens!457))) e!1071445)))

(declare-fun b!1672097 () Bool)

(assert (=> b!1672097 (= e!1071445 (++!5024 (list!7381 (charsOf!1893 (h!23821 (list!7382 (seqFromList!2226 tokens!457))))) (printList!986 thiss!17113 (t!152641 (list!7382 (seqFromList!2226 tokens!457))))))))

(declare-fun b!1672098 () Bool)

(assert (=> b!1672098 (= e!1071445 Nil!18418)))

(assert (= (and d!505919 c!272149) b!1672097))

(assert (= (and d!505919 (not c!272149)) b!1672098))

(declare-fun m!2039631 () Bool)

(assert (=> b!1672097 m!2039631))

(assert (=> b!1672097 m!2039631))

(declare-fun m!2039633 () Bool)

(assert (=> b!1672097 m!2039633))

(declare-fun m!2039635 () Bool)

(assert (=> b!1672097 m!2039635))

(assert (=> b!1672097 m!2039633))

(assert (=> b!1672097 m!2039635))

(declare-fun m!2039637 () Bool)

(assert (=> b!1672097 m!2039637))

(assert (=> d!505399 d!505919))

(declare-fun d!505921 () Bool)

(assert (=> d!505921 (= (list!7382 (seqFromList!2226 tokens!457)) (list!7386 (c!271873 (seqFromList!2226 tokens!457))))))

(declare-fun bs!398200 () Bool)

(assert (= bs!398200 d!505921))

(declare-fun m!2039639 () Bool)

(assert (=> bs!398200 m!2039639))

(assert (=> d!505399 d!505921))

(declare-fun d!505923 () Bool)

(declare-fun lt!631612 () BalanceConc!12216)

(assert (=> d!505923 (= (list!7381 lt!631612) (printListTailRec!418 thiss!17113 (dropList!722 (seqFromList!2226 tokens!457) 0) (list!7381 (BalanceConc!12217 Empty!6136))))))

(declare-fun e!1071446 () BalanceConc!12216)

(assert (=> d!505923 (= lt!631612 e!1071446)))

(declare-fun c!272150 () Bool)

(assert (=> d!505923 (= c!272150 (>= 0 (size!14655 (seqFromList!2226 tokens!457))))))

(declare-fun e!1071447 () Bool)

(assert (=> d!505923 e!1071447))

(declare-fun res!749863 () Bool)

(assert (=> d!505923 (=> (not res!749863) (not e!1071447))))

(assert (=> d!505923 (= res!749863 (>= 0 0))))

(assert (=> d!505923 (= (printTailRec!924 thiss!17113 (seqFromList!2226 tokens!457) 0 (BalanceConc!12217 Empty!6136)) lt!631612)))

(declare-fun b!1672099 () Bool)

(assert (=> b!1672099 (= e!1071447 (<= 0 (size!14655 (seqFromList!2226 tokens!457))))))

(declare-fun b!1672100 () Bool)

(assert (=> b!1672100 (= e!1071446 (BalanceConc!12217 Empty!6136))))

(declare-fun b!1672101 () Bool)

(assert (=> b!1672101 (= e!1071446 (printTailRec!924 thiss!17113 (seqFromList!2226 tokens!457) (+ 0 1) (++!5023 (BalanceConc!12217 Empty!6136) (charsOf!1893 (apply!4973 (seqFromList!2226 tokens!457) 0)))))))

(declare-fun lt!631616 () List!18490)

(assert (=> b!1672101 (= lt!631616 (list!7382 (seqFromList!2226 tokens!457)))))

(declare-fun lt!631615 () Unit!31326)

(assert (=> b!1672101 (= lt!631615 (lemmaDropApply!625 lt!631616 0))))

(assert (=> b!1672101 (= (head!3738 (drop!945 lt!631616 0)) (apply!4977 lt!631616 0))))

(declare-fun lt!631617 () Unit!31326)

(assert (=> b!1672101 (= lt!631617 lt!631615)))

(declare-fun lt!631611 () List!18490)

(assert (=> b!1672101 (= lt!631611 (list!7382 (seqFromList!2226 tokens!457)))))

(declare-fun lt!631613 () Unit!31326)

(assert (=> b!1672101 (= lt!631613 (lemmaDropTail!605 lt!631611 0))))

(assert (=> b!1672101 (= (tail!2495 (drop!945 lt!631611 0)) (drop!945 lt!631611 (+ 0 1)))))

(declare-fun lt!631614 () Unit!31326)

(assert (=> b!1672101 (= lt!631614 lt!631613)))

(assert (= (and d!505923 res!749863) b!1672099))

(assert (= (and d!505923 c!272150) b!1672100))

(assert (= (and d!505923 (not c!272150)) b!1672101))

(declare-fun m!2039641 () Bool)

(assert (=> d!505923 m!2039641))

(assert (=> d!505923 m!2037867))

(declare-fun m!2039643 () Bool)

(assert (=> d!505923 m!2039643))

(assert (=> d!505923 m!2037867))

(declare-fun m!2039645 () Bool)

(assert (=> d!505923 m!2039645))

(assert (=> d!505923 m!2037065))

(assert (=> d!505923 m!2039641))

(assert (=> d!505923 m!2037065))

(declare-fun m!2039647 () Bool)

(assert (=> d!505923 m!2039647))

(assert (=> b!1672099 m!2037065))

(assert (=> b!1672099 m!2039647))

(declare-fun m!2039649 () Bool)

(assert (=> b!1672101 m!2039649))

(declare-fun m!2039651 () Bool)

(assert (=> b!1672101 m!2039651))

(assert (=> b!1672101 m!2037065))

(assert (=> b!1672101 m!2037383))

(declare-fun m!2039653 () Bool)

(assert (=> b!1672101 m!2039653))

(declare-fun m!2039655 () Bool)

(assert (=> b!1672101 m!2039655))

(declare-fun m!2039657 () Bool)

(assert (=> b!1672101 m!2039657))

(declare-fun m!2039659 () Bool)

(assert (=> b!1672101 m!2039659))

(declare-fun m!2039661 () Bool)

(assert (=> b!1672101 m!2039661))

(declare-fun m!2039663 () Bool)

(assert (=> b!1672101 m!2039663))

(declare-fun m!2039665 () Bool)

(assert (=> b!1672101 m!2039665))

(assert (=> b!1672101 m!2037065))

(declare-fun m!2039667 () Bool)

(assert (=> b!1672101 m!2039667))

(assert (=> b!1672101 m!2039655))

(assert (=> b!1672101 m!2039667))

(assert (=> b!1672101 m!2039659))

(assert (=> b!1672101 m!2039653))

(declare-fun m!2039669 () Bool)

(assert (=> b!1672101 m!2039669))

(assert (=> b!1672101 m!2037065))

(assert (=> b!1672101 m!2039661))

(declare-fun m!2039671 () Bool)

(assert (=> b!1672101 m!2039671))

(assert (=> d!505399 d!505923))

(declare-fun d!505925 () Bool)

(declare-fun lostCauseFct!166 (Regex!4572) Bool)

(assert (=> d!505925 (= (lostCause!479 lt!630488) (lostCauseFct!166 lt!630488))))

(declare-fun bs!398201 () Bool)

(assert (= bs!398201 d!505925))

(declare-fun m!2039673 () Bool)

(assert (=> bs!398201 m!2039673))

(assert (=> b!1671241 d!505925))

(declare-fun d!505927 () Bool)

(declare-fun lt!631618 () Bool)

(assert (=> d!505927 (= lt!631618 (isEmpty!11483 (list!7382 (_1!10473 lt!630644))))))

(assert (=> d!505927 (= lt!631618 (isEmpty!11484 (c!271873 (_1!10473 lt!630644))))))

(assert (=> d!505927 (= (isEmpty!11478 (_1!10473 lt!630644)) lt!631618)))

(declare-fun bs!398202 () Bool)

(assert (= bs!398202 d!505927))

(assert (=> bs!398202 m!2037409))

(assert (=> bs!398202 m!2037409))

(declare-fun m!2039675 () Bool)

(assert (=> bs!398202 m!2039675))

(declare-fun m!2039677 () Bool)

(assert (=> bs!398202 m!2039677))

(assert (=> b!1671007 d!505927))

(declare-fun b!1672104 () Bool)

(declare-fun e!1071449 () List!18488)

(assert (=> b!1672104 (= e!1071449 (list!7390 (xs!8980 (c!271871 lt!630493))))))

(declare-fun b!1672103 () Bool)

(declare-fun e!1071448 () List!18488)

(assert (=> b!1672103 (= e!1071448 e!1071449)))

(declare-fun c!272152 () Bool)

(assert (=> b!1672103 (= c!272152 (is-Leaf!8979 (c!271871 lt!630493)))))

(declare-fun b!1672105 () Bool)

(assert (=> b!1672105 (= e!1071449 (++!5024 (list!7385 (left!14732 (c!271871 lt!630493))) (list!7385 (right!15062 (c!271871 lt!630493)))))))

(declare-fun b!1672102 () Bool)

(assert (=> b!1672102 (= e!1071448 Nil!18418)))

(declare-fun d!505929 () Bool)

(declare-fun c!272151 () Bool)

(assert (=> d!505929 (= c!272151 (is-Empty!6136 (c!271871 lt!630493)))))

(assert (=> d!505929 (= (list!7385 (c!271871 lt!630493)) e!1071448)))

(assert (= (and d!505929 c!272151) b!1672102))

(assert (= (and d!505929 (not c!272151)) b!1672103))

(assert (= (and b!1672103 c!272152) b!1672104))

(assert (= (and b!1672103 (not c!272152)) b!1672105))

(declare-fun m!2039679 () Bool)

(assert (=> b!1672104 m!2039679))

(declare-fun m!2039681 () Bool)

(assert (=> b!1672105 m!2039681))

(declare-fun m!2039683 () Bool)

(assert (=> b!1672105 m!2039683))

(assert (=> b!1672105 m!2039681))

(assert (=> b!1672105 m!2039683))

(declare-fun m!2039685 () Bool)

(assert (=> b!1672105 m!2039685))

(assert (=> d!505403 d!505929))

(declare-fun b!1672108 () Bool)

(declare-fun e!1071451 () List!18490)

(assert (=> b!1672108 (= e!1071451 (list!7389 (xs!8981 (c!271873 (prepend!832 (seqFromList!2226 (t!152641 (t!152641 tokens!457))) (h!23821 (t!152641 tokens!457)))))))))

(declare-fun b!1672107 () Bool)

(declare-fun e!1071450 () List!18490)

(assert (=> b!1672107 (= e!1071450 e!1071451)))

(declare-fun c!272154 () Bool)

(assert (=> b!1672107 (= c!272154 (is-Leaf!8980 (c!271873 (prepend!832 (seqFromList!2226 (t!152641 (t!152641 tokens!457))) (h!23821 (t!152641 tokens!457))))))))

(declare-fun d!505931 () Bool)

(declare-fun c!272153 () Bool)

(assert (=> d!505931 (= c!272153 (is-Empty!6137 (c!271873 (prepend!832 (seqFromList!2226 (t!152641 (t!152641 tokens!457))) (h!23821 (t!152641 tokens!457))))))))

(assert (=> d!505931 (= (list!7386 (c!271873 (prepend!832 (seqFromList!2226 (t!152641 (t!152641 tokens!457))) (h!23821 (t!152641 tokens!457))))) e!1071450)))

(declare-fun b!1672109 () Bool)

(assert (=> b!1672109 (= e!1071451 (++!5029 (list!7386 (left!14733 (c!271873 (prepend!832 (seqFromList!2226 (t!152641 (t!152641 tokens!457))) (h!23821 (t!152641 tokens!457)))))) (list!7386 (right!15063 (c!271873 (prepend!832 (seqFromList!2226 (t!152641 (t!152641 tokens!457))) (h!23821 (t!152641 tokens!457))))))))))

(declare-fun b!1672106 () Bool)

(assert (=> b!1672106 (= e!1071450 Nil!18420)))

(assert (= (and d!505931 c!272153) b!1672106))

(assert (= (and d!505931 (not c!272153)) b!1672107))

(assert (= (and b!1672107 c!272154) b!1672108))

(assert (= (and b!1672107 (not c!272154)) b!1672109))

(declare-fun m!2039687 () Bool)

(assert (=> b!1672108 m!2039687))

(declare-fun m!2039689 () Bool)

(assert (=> b!1672109 m!2039689))

(declare-fun m!2039691 () Bool)

(assert (=> b!1672109 m!2039691))

(assert (=> b!1672109 m!2039689))

(assert (=> b!1672109 m!2039691))

(declare-fun m!2039693 () Bool)

(assert (=> b!1672109 m!2039693))

(assert (=> d!505527 d!505931))

(declare-fun d!505933 () Bool)

(assert (=> d!505933 (= (list!7381 lt!630649) (list!7385 (c!271871 lt!630649)))))

(declare-fun bs!398203 () Bool)

(assert (= bs!398203 d!505933))

(declare-fun m!2039695 () Bool)

(assert (=> bs!398203 m!2039695))

(assert (=> d!505421 d!505933))

(declare-fun d!505935 () Bool)

(declare-fun c!272155 () Bool)

(assert (=> d!505935 (= c!272155 (is-Cons!18420 (list!7382 lt!630497)))))

(declare-fun e!1071452 () List!18488)

(assert (=> d!505935 (= (printList!986 thiss!17113 (list!7382 lt!630497)) e!1071452)))

(declare-fun b!1672110 () Bool)

(assert (=> b!1672110 (= e!1071452 (++!5024 (list!7381 (charsOf!1893 (h!23821 (list!7382 lt!630497)))) (printList!986 thiss!17113 (t!152641 (list!7382 lt!630497)))))))

(declare-fun b!1672111 () Bool)

(assert (=> b!1672111 (= e!1071452 Nil!18418)))

(assert (= (and d!505935 c!272155) b!1672110))

(assert (= (and d!505935 (not c!272155)) b!1672111))

(declare-fun m!2039697 () Bool)

(assert (=> b!1672110 m!2039697))

(assert (=> b!1672110 m!2039697))

(declare-fun m!2039699 () Bool)

(assert (=> b!1672110 m!2039699))

(declare-fun m!2039701 () Bool)

(assert (=> b!1672110 m!2039701))

(assert (=> b!1672110 m!2039699))

(assert (=> b!1672110 m!2039701))

(declare-fun m!2039703 () Bool)

(assert (=> b!1672110 m!2039703))

(assert (=> d!505421 d!505935))

(assert (=> d!505421 d!505533))

(declare-fun d!505937 () Bool)

(declare-fun lt!631620 () BalanceConc!12216)

(assert (=> d!505937 (= (list!7381 lt!631620) (printListTailRec!418 thiss!17113 (dropList!722 lt!630497 0) (list!7381 (BalanceConc!12217 Empty!6136))))))

(declare-fun e!1071453 () BalanceConc!12216)

(assert (=> d!505937 (= lt!631620 e!1071453)))

(declare-fun c!272156 () Bool)

(assert (=> d!505937 (= c!272156 (>= 0 (size!14655 lt!630497)))))

(declare-fun e!1071454 () Bool)

(assert (=> d!505937 e!1071454))

(declare-fun res!749864 () Bool)

(assert (=> d!505937 (=> (not res!749864) (not e!1071454))))

(assert (=> d!505937 (= res!749864 (>= 0 0))))

(assert (=> d!505937 (= (printTailRec!924 thiss!17113 lt!630497 0 (BalanceConc!12217 Empty!6136)) lt!631620)))

(declare-fun b!1672112 () Bool)

(assert (=> b!1672112 (= e!1071454 (<= 0 (size!14655 lt!630497)))))

(declare-fun b!1672113 () Bool)

(assert (=> b!1672113 (= e!1071453 (BalanceConc!12217 Empty!6136))))

(declare-fun b!1672114 () Bool)

(assert (=> b!1672114 (= e!1071453 (printTailRec!924 thiss!17113 lt!630497 (+ 0 1) (++!5023 (BalanceConc!12217 Empty!6136) (charsOf!1893 (apply!4973 lt!630497 0)))))))

(declare-fun lt!631624 () List!18490)

(assert (=> b!1672114 (= lt!631624 (list!7382 lt!630497))))

(declare-fun lt!631623 () Unit!31326)

(assert (=> b!1672114 (= lt!631623 (lemmaDropApply!625 lt!631624 0))))

(assert (=> b!1672114 (= (head!3738 (drop!945 lt!631624 0)) (apply!4977 lt!631624 0))))

(declare-fun lt!631625 () Unit!31326)

(assert (=> b!1672114 (= lt!631625 lt!631623)))

(declare-fun lt!631619 () List!18490)

(assert (=> b!1672114 (= lt!631619 (list!7382 lt!630497))))

(declare-fun lt!631621 () Unit!31326)

(assert (=> b!1672114 (= lt!631621 (lemmaDropTail!605 lt!631619 0))))

(assert (=> b!1672114 (= (tail!2495 (drop!945 lt!631619 0)) (drop!945 lt!631619 (+ 0 1)))))

(declare-fun lt!631622 () Unit!31326)

(assert (=> b!1672114 (= lt!631622 lt!631621)))

(assert (= (and d!505937 res!749864) b!1672112))

(assert (= (and d!505937 c!272156) b!1672113))

(assert (= (and d!505937 (not c!272156)) b!1672114))

(declare-fun m!2039705 () Bool)

(assert (=> d!505937 m!2039705))

(assert (=> d!505937 m!2037867))

(declare-fun m!2039707 () Bool)

(assert (=> d!505937 m!2039707))

(assert (=> d!505937 m!2037867))

(declare-fun m!2039709 () Bool)

(assert (=> d!505937 m!2039709))

(assert (=> d!505937 m!2039705))

(declare-fun m!2039711 () Bool)

(assert (=> d!505937 m!2039711))

(assert (=> b!1672112 m!2039711))

(declare-fun m!2039713 () Bool)

(assert (=> b!1672114 m!2039713))

(declare-fun m!2039715 () Bool)

(assert (=> b!1672114 m!2039715))

(assert (=> b!1672114 m!2037101))

(declare-fun m!2039717 () Bool)

(assert (=> b!1672114 m!2039717))

(declare-fun m!2039719 () Bool)

(assert (=> b!1672114 m!2039719))

(declare-fun m!2039721 () Bool)

(assert (=> b!1672114 m!2039721))

(declare-fun m!2039723 () Bool)

(assert (=> b!1672114 m!2039723))

(declare-fun m!2039725 () Bool)

(assert (=> b!1672114 m!2039725))

(declare-fun m!2039727 () Bool)

(assert (=> b!1672114 m!2039727))

(declare-fun m!2039729 () Bool)

(assert (=> b!1672114 m!2039729))

(declare-fun m!2039731 () Bool)

(assert (=> b!1672114 m!2039731))

(assert (=> b!1672114 m!2039719))

(assert (=> b!1672114 m!2039731))

(assert (=> b!1672114 m!2039723))

(assert (=> b!1672114 m!2039717))

(declare-fun m!2039733 () Bool)

(assert (=> b!1672114 m!2039733))

(assert (=> b!1672114 m!2039725))

(declare-fun m!2039735 () Bool)

(assert (=> b!1672114 m!2039735))

(assert (=> d!505421 d!505937))

(declare-fun d!505939 () Bool)

(declare-fun lt!631626 () Int)

(assert (=> d!505939 (= lt!631626 (size!14662 (list!7382 (_1!10473 lt!630644))))))

(assert (=> d!505939 (= lt!631626 (size!14664 (c!271873 (_1!10473 lt!630644))))))

(assert (=> d!505939 (= (size!14655 (_1!10473 lt!630644)) lt!631626)))

(declare-fun bs!398204 () Bool)

(assert (= bs!398204 d!505939))

(assert (=> bs!398204 m!2037409))

(assert (=> bs!398204 m!2037409))

(declare-fun m!2039737 () Bool)

(assert (=> bs!398204 m!2039737))

(declare-fun m!2039739 () Bool)

(assert (=> bs!398204 m!2039739))

(assert (=> d!505405 d!505939))

(declare-fun lt!631698 () tuple2!18142)

(declare-datatypes ((tuple2!18152 0))(
  ( (tuple2!18153 (_1!10478 Token!6054) (_2!10478 BalanceConc!12216)) )
))
(declare-datatypes ((Option!3543 0))(
  ( (None!3542) (Some!3542 (v!24825 tuple2!18152)) )
))
(declare-fun lt!631705 () Option!3543)

(declare-fun b!1672129 () Bool)

(declare-fun lexRec!384 (LexerInterface!2873 List!18489 BalanceConc!12216) tuple2!18142)

(assert (=> b!1672129 (= lt!631698 (lexRec!384 thiss!17113 rules!1846 (_2!10478 (v!24825 lt!631705))))))

(declare-fun e!1071466 () tuple2!18142)

(assert (=> b!1672129 (= e!1071466 (tuple2!18143 (prepend!832 (_1!10473 lt!631698) (_1!10478 (v!24825 lt!631705))) (_2!10473 lt!631698)))))

(declare-fun b!1672130 () Bool)

(declare-fun e!1071465 () tuple2!18142)

(assert (=> b!1672130 (= e!1071465 (tuple2!18143 (BalanceConc!12219 Empty!6137) lt!630493))))

(declare-fun e!1071463 () Bool)

(declare-fun lt!631710 () tuple2!18142)

(declare-fun b!1672131 () Bool)

(assert (=> b!1672131 (= e!1071463 (= (list!7381 (_2!10473 lt!631710)) (list!7381 (_2!10473 (lexRec!384 thiss!17113 rules!1846 lt!630493)))))))

(declare-fun b!1672132 () Bool)

(declare-fun lt!631706 () tuple2!18142)

(declare-fun lt!631713 () Option!3543)

(assert (=> b!1672132 (= lt!631706 (lexRec!384 thiss!17113 rules!1846 (_2!10478 (v!24825 lt!631713))))))

(declare-fun e!1071464 () tuple2!18142)

(assert (=> b!1672132 (= e!1071464 (tuple2!18143 (prepend!832 (_1!10473 lt!631706) (_1!10478 (v!24825 lt!631713))) (_2!10473 lt!631706)))))

(declare-fun lt!631718 () Option!3543)

(declare-fun lt!631707 () BalanceConc!12216)

(declare-fun b!1672133 () Bool)

(declare-fun append!571 (BalanceConc!12218 Token!6054) BalanceConc!12218)

(assert (=> b!1672133 (= e!1071465 (lexTailRecV2!621 thiss!17113 rules!1846 lt!630493 lt!631707 (_2!10478 (v!24825 lt!631718)) (append!571 (BalanceConc!12219 Empty!6137) (_1!10478 (v!24825 lt!631718)))))))

(declare-fun lt!631702 () tuple2!18142)

(assert (=> b!1672133 (= lt!631702 (lexRec!384 thiss!17113 rules!1846 (_2!10478 (v!24825 lt!631718))))))

(declare-fun lt!631725 () List!18488)

(assert (=> b!1672133 (= lt!631725 (list!7381 (BalanceConc!12217 Empty!6136)))))

(declare-fun lt!631714 () List!18488)

(assert (=> b!1672133 (= lt!631714 (list!7381 (charsOf!1893 (_1!10478 (v!24825 lt!631718)))))))

(declare-fun lt!631703 () List!18488)

(assert (=> b!1672133 (= lt!631703 (list!7381 (_2!10478 (v!24825 lt!631718))))))

(declare-fun lt!631701 () Unit!31326)

(assert (=> b!1672133 (= lt!631701 (lemmaConcatAssociativity!1044 lt!631725 lt!631714 lt!631703))))

(assert (=> b!1672133 (= (++!5024 (++!5024 lt!631725 lt!631714) lt!631703) (++!5024 lt!631725 (++!5024 lt!631714 lt!631703)))))

(declare-fun lt!631728 () Unit!31326)

(assert (=> b!1672133 (= lt!631728 lt!631701)))

(declare-fun maxPrefixZipperSequence!746 (LexerInterface!2873 List!18489 BalanceConc!12216) Option!3543)

(assert (=> b!1672133 (= lt!631705 (maxPrefixZipperSequence!746 thiss!17113 rules!1846 lt!630493))))

(declare-fun c!272165 () Bool)

(assert (=> b!1672133 (= c!272165 (is-Some!3542 lt!631705))))

(assert (=> b!1672133 (= (lexRec!384 thiss!17113 rules!1846 lt!630493) e!1071466)))

(declare-fun lt!631695 () Unit!31326)

(declare-fun Unit!31416 () Unit!31326)

(assert (=> b!1672133 (= lt!631695 Unit!31416)))

(declare-fun lt!631722 () List!18490)

(assert (=> b!1672133 (= lt!631722 (list!7382 (BalanceConc!12219 Empty!6137)))))

(declare-fun lt!631720 () List!18490)

(assert (=> b!1672133 (= lt!631720 (Cons!18420 (_1!10478 (v!24825 lt!631718)) Nil!18420))))

(declare-fun lt!631711 () List!18490)

(assert (=> b!1672133 (= lt!631711 (list!7382 (_1!10473 lt!631702)))))

(declare-fun lt!631700 () Unit!31326)

(declare-fun lemmaConcatAssociativity!1045 (List!18490 List!18490 List!18490) Unit!31326)

(assert (=> b!1672133 (= lt!631700 (lemmaConcatAssociativity!1045 lt!631722 lt!631720 lt!631711))))

(assert (=> b!1672133 (= (++!5029 (++!5029 lt!631722 lt!631720) lt!631711) (++!5029 lt!631722 (++!5029 lt!631720 lt!631711)))))

(declare-fun lt!631699 () Unit!31326)

(assert (=> b!1672133 (= lt!631699 lt!631700)))

(declare-fun lt!631726 () List!18488)

(assert (=> b!1672133 (= lt!631726 (++!5024 (list!7381 (BalanceConc!12217 Empty!6136)) (list!7381 (charsOf!1893 (_1!10478 (v!24825 lt!631718))))))))

(declare-fun lt!631719 () List!18488)

(assert (=> b!1672133 (= lt!631719 (list!7381 (_2!10478 (v!24825 lt!631718))))))

(declare-fun lt!631717 () List!18490)

(assert (=> b!1672133 (= lt!631717 (list!7382 (append!571 (BalanceConc!12219 Empty!6137) (_1!10478 (v!24825 lt!631718)))))))

(declare-fun lt!631708 () Unit!31326)

(declare-fun lemmaLexThenLexPrefix!272 (LexerInterface!2873 List!18489 List!18488 List!18488 List!18490 List!18490 List!18488) Unit!31326)

(assert (=> b!1672133 (= lt!631708 (lemmaLexThenLexPrefix!272 thiss!17113 rules!1846 lt!631726 lt!631719 lt!631717 (list!7382 (_1!10473 lt!631702)) (list!7381 (_2!10473 lt!631702))))))

(assert (=> b!1672133 (= (lexList!898 thiss!17113 rules!1846 lt!631726) (tuple2!18149 lt!631717 Nil!18418))))

(declare-fun lt!631712 () Unit!31326)

(assert (=> b!1672133 (= lt!631712 lt!631708)))

(declare-fun lt!631697 () BalanceConc!12216)

(assert (=> b!1672133 (= lt!631697 (++!5023 (BalanceConc!12217 Empty!6136) (charsOf!1893 (_1!10478 (v!24825 lt!631718)))))))

(assert (=> b!1672133 (= lt!631713 (maxPrefixZipperSequence!746 thiss!17113 rules!1846 lt!631697))))

(declare-fun c!272163 () Bool)

(assert (=> b!1672133 (= c!272163 (is-Some!3542 lt!631713))))

(assert (=> b!1672133 (= (lexRec!384 thiss!17113 rules!1846 (++!5023 (BalanceConc!12217 Empty!6136) (charsOf!1893 (_1!10478 (v!24825 lt!631718))))) e!1071464)))

(declare-fun lt!631696 () Unit!31326)

(declare-fun Unit!31417 () Unit!31326)

(assert (=> b!1672133 (= lt!631696 Unit!31417)))

(assert (=> b!1672133 (= lt!631707 (++!5023 (BalanceConc!12217 Empty!6136) (charsOf!1893 (_1!10478 (v!24825 lt!631718)))))))

(declare-fun lt!631704 () List!18488)

(assert (=> b!1672133 (= lt!631704 (list!7381 lt!631707))))

(declare-fun lt!631727 () List!18488)

(assert (=> b!1672133 (= lt!631727 (list!7381 (_2!10478 (v!24825 lt!631718))))))

(declare-fun lt!631709 () Unit!31326)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!331 (List!18488 List!18488) Unit!31326)

(assert (=> b!1672133 (= lt!631709 (lemmaConcatTwoListThenFSndIsSuffix!331 lt!631704 lt!631727))))

(declare-fun isSuffix!430 (List!18488 List!18488) Bool)

(assert (=> b!1672133 (isSuffix!430 lt!631727 (++!5024 lt!631704 lt!631727))))

(declare-fun lt!631724 () Unit!31326)

(assert (=> b!1672133 (= lt!631724 lt!631709)))

(declare-fun d!505941 () Bool)

(assert (=> d!505941 e!1071463))

(declare-fun res!749867 () Bool)

(assert (=> d!505941 (=> (not res!749867) (not e!1071463))))

(assert (=> d!505941 (= res!749867 (= (list!7382 (_1!10473 lt!631710)) (list!7382 (_1!10473 (lexRec!384 thiss!17113 rules!1846 lt!630493)))))))

(assert (=> d!505941 (= lt!631710 e!1071465)))

(declare-fun c!272164 () Bool)

(assert (=> d!505941 (= c!272164 (is-Some!3542 lt!631718))))

(declare-fun maxPrefixZipperSequenceV2!279 (LexerInterface!2873 List!18489 BalanceConc!12216 BalanceConc!12216) Option!3543)

(assert (=> d!505941 (= lt!631718 (maxPrefixZipperSequenceV2!279 thiss!17113 rules!1846 lt!630493 lt!630493))))

(declare-fun lt!631721 () Unit!31326)

(declare-fun lt!631723 () Unit!31326)

(assert (=> d!505941 (= lt!631721 lt!631723)))

(declare-fun lt!631716 () List!18488)

(declare-fun lt!631715 () List!18488)

(assert (=> d!505941 (isSuffix!430 lt!631716 (++!5024 lt!631715 lt!631716))))

(assert (=> d!505941 (= lt!631723 (lemmaConcatTwoListThenFSndIsSuffix!331 lt!631715 lt!631716))))

(assert (=> d!505941 (= lt!631716 (list!7381 lt!630493))))

(assert (=> d!505941 (= lt!631715 (list!7381 (BalanceConc!12217 Empty!6136)))))

(assert (=> d!505941 (= (lexTailRecV2!621 thiss!17113 rules!1846 lt!630493 (BalanceConc!12217 Empty!6136) lt!630493 (BalanceConc!12219 Empty!6137)) lt!631710)))

(declare-fun b!1672134 () Bool)

(assert (=> b!1672134 (= e!1071464 (tuple2!18143 (BalanceConc!12219 Empty!6137) lt!631697))))

(declare-fun b!1672135 () Bool)

(assert (=> b!1672135 (= e!1071466 (tuple2!18143 (BalanceConc!12219 Empty!6137) lt!630493))))

(assert (= (and d!505941 c!272164) b!1672133))

(assert (= (and d!505941 (not c!272164)) b!1672130))

(assert (= (and b!1672133 c!272165) b!1672129))

(assert (= (and b!1672133 (not c!272165)) b!1672135))

(assert (= (and b!1672133 c!272163) b!1672132))

(assert (= (and b!1672133 (not c!272163)) b!1672134))

(assert (= (and d!505941 res!749867) b!1672131))

(declare-fun m!2039741 () Bool)

(assert (=> b!1672131 m!2039741))

(declare-fun m!2039743 () Bool)

(assert (=> b!1672131 m!2039743))

(declare-fun m!2039745 () Bool)

(assert (=> b!1672131 m!2039745))

(declare-fun m!2039747 () Bool)

(assert (=> b!1672132 m!2039747))

(declare-fun m!2039749 () Bool)

(assert (=> b!1672132 m!2039749))

(declare-fun m!2039751 () Bool)

(assert (=> d!505941 m!2039751))

(declare-fun m!2039753 () Bool)

(assert (=> d!505941 m!2039753))

(assert (=> d!505941 m!2039743))

(declare-fun m!2039755 () Bool)

(assert (=> d!505941 m!2039755))

(declare-fun m!2039757 () Bool)

(assert (=> d!505941 m!2039757))

(assert (=> d!505941 m!2037867))

(declare-fun m!2039759 () Bool)

(assert (=> d!505941 m!2039759))

(assert (=> d!505941 m!2039751))

(declare-fun m!2039761 () Bool)

(assert (=> d!505941 m!2039761))

(assert (=> d!505941 m!2037077))

(declare-fun m!2039763 () Bool)

(assert (=> b!1672133 m!2039763))

(declare-fun m!2039765 () Bool)

(assert (=> b!1672133 m!2039765))

(declare-fun m!2039767 () Bool)

(assert (=> b!1672133 m!2039767))

(declare-fun m!2039769 () Bool)

(assert (=> b!1672133 m!2039769))

(declare-fun m!2039771 () Bool)

(assert (=> b!1672133 m!2039771))

(declare-fun m!2039773 () Bool)

(assert (=> b!1672133 m!2039773))

(declare-fun m!2039775 () Bool)

(assert (=> b!1672133 m!2039775))

(assert (=> b!1672133 m!2039771))

(declare-fun m!2039777 () Bool)

(assert (=> b!1672133 m!2039777))

(declare-fun m!2039779 () Bool)

(assert (=> b!1672133 m!2039779))

(declare-fun m!2039781 () Bool)

(assert (=> b!1672133 m!2039781))

(assert (=> b!1672133 m!2039743))

(declare-fun m!2039783 () Bool)

(assert (=> b!1672133 m!2039783))

(declare-fun m!2039785 () Bool)

(assert (=> b!1672133 m!2039785))

(declare-fun m!2039787 () Bool)

(assert (=> b!1672133 m!2039787))

(assert (=> b!1672133 m!2037867))

(assert (=> b!1672133 m!2039767))

(declare-fun m!2039789 () Bool)

(assert (=> b!1672133 m!2039789))

(declare-fun m!2039791 () Bool)

(assert (=> b!1672133 m!2039791))

(declare-fun m!2039793 () Bool)

(assert (=> b!1672133 m!2039793))

(assert (=> b!1672133 m!2039783))

(assert (=> b!1672133 m!2039765))

(assert (=> b!1672133 m!2039791))

(declare-fun m!2039795 () Bool)

(assert (=> b!1672133 m!2039795))

(assert (=> b!1672133 m!2039769))

(declare-fun m!2039797 () Bool)

(assert (=> b!1672133 m!2039797))

(declare-fun m!2039799 () Bool)

(assert (=> b!1672133 m!2039799))

(declare-fun m!2039801 () Bool)

(assert (=> b!1672133 m!2039801))

(declare-fun m!2039803 () Bool)

(assert (=> b!1672133 m!2039803))

(assert (=> b!1672133 m!2039779))

(declare-fun m!2039805 () Bool)

(assert (=> b!1672133 m!2039805))

(declare-fun m!2039807 () Bool)

(assert (=> b!1672133 m!2039807))

(declare-fun m!2039809 () Bool)

(assert (=> b!1672133 m!2039809))

(assert (=> b!1672133 m!2039763))

(declare-fun m!2039811 () Bool)

(assert (=> b!1672133 m!2039811))

(assert (=> b!1672133 m!2039781))

(declare-fun m!2039813 () Bool)

(assert (=> b!1672133 m!2039813))

(declare-fun m!2039815 () Bool)

(assert (=> b!1672133 m!2039815))

(declare-fun m!2039817 () Bool)

(assert (=> b!1672133 m!2039817))

(declare-fun m!2039819 () Bool)

(assert (=> b!1672133 m!2039819))

(assert (=> b!1672133 m!2039799))

(assert (=> b!1672133 m!2039803))

(assert (=> b!1672133 m!2037867))

(assert (=> b!1672133 m!2039783))

(declare-fun m!2039821 () Bool)

(assert (=> b!1672133 m!2039821))

(declare-fun m!2039823 () Bool)

(assert (=> b!1672133 m!2039823))

(assert (=> b!1672133 m!2039765))

(declare-fun m!2039825 () Bool)

(assert (=> b!1672129 m!2039825))

(declare-fun m!2039827 () Bool)

(assert (=> b!1672129 m!2039827))

(assert (=> d!505405 d!505941))

(assert (=> b!1671193 d!505593))

(declare-fun d!505943 () Bool)

(declare-fun dynLambda!8322 (Int BalanceConc!12216) TokenValue!3334)

(assert (=> d!505943 (= (apply!4976 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!630873)))) (seqFromList!2225 (originalCharacters!4058 (_1!10472 (get!5396 lt!630873))))) (dynLambda!8322 (toValue!4711 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!630873))))) (seqFromList!2225 (originalCharacters!4058 (_1!10472 (get!5396 lt!630873))))))))

(declare-fun b_lambda!52523 () Bool)

(assert (=> (not b_lambda!52523) (not d!505943)))

(declare-fun t!152744 () Bool)

(declare-fun tb!95943 () Bool)

(assert (=> (and b!1670823 (= (toValue!4711 (transformation!3244 (h!23820 rules!1846))) (toValue!4711 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!630873)))))) t!152744) tb!95943))

(declare-fun result!115942 () Bool)

(assert (=> tb!95943 (= result!115942 (inv!21 (dynLambda!8322 (toValue!4711 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!630873))))) (seqFromList!2225 (originalCharacters!4058 (_1!10472 (get!5396 lt!630873)))))))))

(declare-fun m!2039829 () Bool)

(assert (=> tb!95943 m!2039829))

(assert (=> d!505943 t!152744))

(declare-fun b_and!118925 () Bool)

(assert (= b_and!118821 (and (=> t!152744 result!115942) b_and!118925)))

(declare-fun t!152746 () Bool)

(declare-fun tb!95945 () Bool)

(assert (=> (and b!1670835 (= (toValue!4711 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (toValue!4711 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!630873)))))) t!152746) tb!95945))

(declare-fun result!115946 () Bool)

(assert (= result!115946 result!115942))

(assert (=> d!505943 t!152746))

(declare-fun b_and!118927 () Bool)

(assert (= b_and!118825 (and (=> t!152746 result!115946) b_and!118927)))

(declare-fun tb!95947 () Bool)

(declare-fun t!152748 () Bool)

(assert (=> (and b!1671330 (= (toValue!4711 (transformation!3244 (h!23820 (t!152640 rules!1846)))) (toValue!4711 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!630873)))))) t!152748) tb!95947))

(declare-fun result!115948 () Bool)

(assert (= result!115948 result!115942))

(assert (=> d!505943 t!152748))

(declare-fun b_and!118929 () Bool)

(assert (= b_and!118861 (and (=> t!152748 result!115948) b_and!118929)))

(declare-fun t!152750 () Bool)

(declare-fun tb!95949 () Bool)

(assert (=> (and b!1671344 (= (toValue!4711 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (toValue!4711 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!630873)))))) t!152750) tb!95949))

(declare-fun result!115950 () Bool)

(assert (= result!115950 result!115942))

(assert (=> d!505943 t!152750))

(declare-fun b_and!118931 () Bool)

(assert (= b_and!118865 (and (=> t!152750 result!115950) b_and!118931)))

(assert (=> d!505943 m!2037847))

(declare-fun m!2039831 () Bool)

(assert (=> d!505943 m!2039831))

(assert (=> b!1671193 d!505943))

(declare-fun d!505945 () Bool)

(assert (=> d!505945 (= (seqFromList!2225 (originalCharacters!4058 (_1!10472 (get!5396 lt!630873)))) (fromListB!1012 (originalCharacters!4058 (_1!10472 (get!5396 lt!630873)))))))

(declare-fun bs!398205 () Bool)

(assert (= bs!398205 d!505945))

(declare-fun m!2039833 () Bool)

(assert (=> bs!398205 m!2039833))

(assert (=> b!1671193 d!505945))

(assert (=> b!1670970 d!505827))

(assert (=> b!1670970 d!505829))

(assert (=> b!1670970 d!505831))

(assert (=> b!1670970 d!505833))

(assert (=> b!1670970 d!505835))

(declare-fun d!505947 () Bool)

(declare-fun e!1071474 () Bool)

(assert (=> d!505947 e!1071474))

(declare-fun res!749874 () Bool)

(assert (=> d!505947 (=> (not res!749874) (not e!1071474))))

(declare-fun lt!631789 () BalanceConc!12218)

(assert (=> d!505947 (= res!749874 (= (list!7382 lt!631789) (t!152641 (t!152641 tokens!457))))))

(declare-fun fromList!412 (List!18490) Conc!6137)

(assert (=> d!505947 (= lt!631789 (BalanceConc!12219 (fromList!412 (t!152641 (t!152641 tokens!457)))))))

(assert (=> d!505947 (= (fromListB!1013 (t!152641 (t!152641 tokens!457))) lt!631789)))

(declare-fun b!1672146 () Bool)

(assert (=> b!1672146 (= e!1071474 (isBalanced!1912 (fromList!412 (t!152641 (t!152641 tokens!457)))))))

(assert (= (and d!505947 res!749874) b!1672146))

(declare-fun m!2039835 () Bool)

(assert (=> d!505947 m!2039835))

(declare-fun m!2039837 () Bool)

(assert (=> d!505947 m!2039837))

(assert (=> b!1672146 m!2039837))

(assert (=> b!1672146 m!2039837))

(declare-fun m!2039839 () Bool)

(assert (=> b!1672146 m!2039839))

(assert (=> d!505529 d!505947))

(declare-fun d!505949 () Bool)

(declare-fun lt!631802 () Int)

(assert (=> d!505949 (= lt!631802 (size!14657 (list!7381 (_2!10473 lt!630590))))))

(assert (=> d!505949 (= lt!631802 (size!14661 (c!271871 (_2!10473 lt!630590))))))

(assert (=> d!505949 (= (size!14656 (_2!10473 lt!630590)) lt!631802)))

(declare-fun bs!398206 () Bool)

(assert (= bs!398206 d!505949))

(assert (=> bs!398206 m!2037301))

(assert (=> bs!398206 m!2037301))

(declare-fun m!2039841 () Bool)

(assert (=> bs!398206 m!2039841))

(declare-fun m!2039843 () Bool)

(assert (=> bs!398206 m!2039843))

(assert (=> b!1670950 d!505949))

(declare-fun d!505951 () Bool)

(declare-fun lt!631811 () Int)

(assert (=> d!505951 (= lt!631811 (size!14657 (list!7381 (seqFromList!2225 lt!630482))))))

(assert (=> d!505951 (= lt!631811 (size!14661 (c!271871 (seqFromList!2225 lt!630482))))))

(assert (=> d!505951 (= (size!14656 (seqFromList!2225 lt!630482)) lt!631811)))

(declare-fun bs!398207 () Bool)

(assert (= bs!398207 d!505951))

(assert (=> bs!398207 m!2037051))

(assert (=> bs!398207 m!2037291))

(assert (=> bs!398207 m!2037291))

(assert (=> bs!398207 m!2039513))

(declare-fun m!2039845 () Bool)

(assert (=> bs!398207 m!2039845))

(assert (=> b!1670950 d!505951))

(declare-fun b!1672149 () Bool)

(declare-fun e!1071481 () Bool)

(declare-fun lt!631830 () Bool)

(declare-fun call!106681 () Bool)

(assert (=> b!1672149 (= e!1071481 (= lt!631830 call!106681))))

(declare-fun b!1672150 () Bool)

(declare-fun e!1071479 () Bool)

(assert (=> b!1672150 (= e!1071479 (not lt!631830))))

(declare-fun e!1071483 () Bool)

(declare-fun b!1672151 () Bool)

(assert (=> b!1672151 (= e!1071483 (matchR!2063 (derivativeStep!1131 (regex!3244 (get!5395 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!630688))))) (head!3736 (list!7381 (charsOf!1893 lt!630688)))) (tail!2496 (list!7381 (charsOf!1893 lt!630688)))))))

(declare-fun b!1672152 () Bool)

(declare-fun res!749879 () Bool)

(declare-fun e!1071480 () Bool)

(assert (=> b!1672152 (=> res!749879 e!1071480)))

(assert (=> b!1672152 (= res!749879 (not (is-ElementMatch!4572 (regex!3244 (get!5395 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!630688))))))))))

(assert (=> b!1672152 (= e!1071479 e!1071480)))

(declare-fun b!1672153 () Bool)

(declare-fun res!749875 () Bool)

(declare-fun e!1071478 () Bool)

(assert (=> b!1672153 (=> (not res!749875) (not e!1071478))))

(assert (=> b!1672153 (= res!749875 (isEmpty!11487 (tail!2496 (list!7381 (charsOf!1893 lt!630688)))))))

(declare-fun b!1672154 () Bool)

(declare-fun res!749881 () Bool)

(declare-fun e!1071477 () Bool)

(assert (=> b!1672154 (=> res!749881 e!1071477)))

(assert (=> b!1672154 (= res!749881 (not (isEmpty!11487 (tail!2496 (list!7381 (charsOf!1893 lt!630688))))))))

(declare-fun d!505953 () Bool)

(assert (=> d!505953 e!1071481))

(declare-fun c!272169 () Bool)

(assert (=> d!505953 (= c!272169 (is-EmptyExpr!4572 (regex!3244 (get!5395 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!630688)))))))))

(assert (=> d!505953 (= lt!631830 e!1071483)))

(declare-fun c!272170 () Bool)

(assert (=> d!505953 (= c!272170 (isEmpty!11487 (list!7381 (charsOf!1893 lt!630688))))))

(assert (=> d!505953 (validRegex!1833 (regex!3244 (get!5395 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!630688))))))))

(assert (=> d!505953 (= (matchR!2063 (regex!3244 (get!5395 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!630688))))) (list!7381 (charsOf!1893 lt!630688))) lt!631830)))

(declare-fun b!1672155 () Bool)

(declare-fun res!749880 () Bool)

(assert (=> b!1672155 (=> (not res!749880) (not e!1071478))))

(assert (=> b!1672155 (= res!749880 (not call!106681))))

(declare-fun b!1672156 () Bool)

(assert (=> b!1672156 (= e!1071478 (= (head!3736 (list!7381 (charsOf!1893 lt!630688))) (c!271872 (regex!3244 (get!5395 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!630688))))))))))

(declare-fun b!1672157 () Bool)

(declare-fun e!1071482 () Bool)

(assert (=> b!1672157 (= e!1071482 e!1071477)))

(declare-fun res!749876 () Bool)

(assert (=> b!1672157 (=> res!749876 e!1071477)))

(assert (=> b!1672157 (= res!749876 call!106681)))

(declare-fun bm!106676 () Bool)

(assert (=> bm!106676 (= call!106681 (isEmpty!11487 (list!7381 (charsOf!1893 lt!630688))))))

(declare-fun b!1672158 () Bool)

(assert (=> b!1672158 (= e!1071480 e!1071482)))

(declare-fun res!749877 () Bool)

(assert (=> b!1672158 (=> (not res!749877) (not e!1071482))))

(assert (=> b!1672158 (= res!749877 (not lt!631830))))

(declare-fun b!1672159 () Bool)

(assert (=> b!1672159 (= e!1071477 (not (= (head!3736 (list!7381 (charsOf!1893 lt!630688))) (c!271872 (regex!3244 (get!5395 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!630688)))))))))))

(declare-fun b!1672160 () Bool)

(assert (=> b!1672160 (= e!1071483 (nullable!1362 (regex!3244 (get!5395 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!630688)))))))))

(declare-fun b!1672161 () Bool)

(assert (=> b!1672161 (= e!1071481 e!1071479)))

(declare-fun c!272171 () Bool)

(assert (=> b!1672161 (= c!272171 (is-EmptyLang!4572 (regex!3244 (get!5395 (getRuleFromTag!337 thiss!17113 rules!1846 (tag!3528 (rule!5134 lt!630688)))))))))

(declare-fun b!1672162 () Bool)

(declare-fun res!749878 () Bool)

(assert (=> b!1672162 (=> res!749878 e!1071480)))

(assert (=> b!1672162 (= res!749878 e!1071478)))

(declare-fun res!749882 () Bool)

(assert (=> b!1672162 (=> (not res!749882) (not e!1071478))))

(assert (=> b!1672162 (= res!749882 lt!631830)))

(assert (= (and d!505953 c!272170) b!1672160))

(assert (= (and d!505953 (not c!272170)) b!1672151))

(assert (= (and d!505953 c!272169) b!1672149))

(assert (= (and d!505953 (not c!272169)) b!1672161))

(assert (= (and b!1672161 c!272171) b!1672150))

(assert (= (and b!1672161 (not c!272171)) b!1672152))

(assert (= (and b!1672152 (not res!749879)) b!1672162))

(assert (= (and b!1672162 res!749882) b!1672155))

(assert (= (and b!1672155 res!749880) b!1672153))

(assert (= (and b!1672153 res!749875) b!1672156))

(assert (= (and b!1672162 (not res!749878)) b!1672158))

(assert (= (and b!1672158 res!749877) b!1672157))

(assert (= (and b!1672157 (not res!749876)) b!1672154))

(assert (= (and b!1672154 (not res!749881)) b!1672159))

(assert (= (or b!1672149 b!1672155 b!1672157) bm!106676))

(assert (=> b!1672156 m!2037517))

(declare-fun m!2039847 () Bool)

(assert (=> b!1672156 m!2039847))

(declare-fun m!2039849 () Bool)

(assert (=> b!1672160 m!2039849))

(assert (=> b!1672153 m!2037517))

(declare-fun m!2039851 () Bool)

(assert (=> b!1672153 m!2039851))

(assert (=> b!1672153 m!2039851))

(declare-fun m!2039853 () Bool)

(assert (=> b!1672153 m!2039853))

(assert (=> d!505953 m!2037517))

(declare-fun m!2039855 () Bool)

(assert (=> d!505953 m!2039855))

(declare-fun m!2039857 () Bool)

(assert (=> d!505953 m!2039857))

(assert (=> b!1672159 m!2037517))

(assert (=> b!1672159 m!2039847))

(assert (=> bm!106676 m!2037517))

(assert (=> bm!106676 m!2039855))

(assert (=> b!1672151 m!2037517))

(assert (=> b!1672151 m!2039847))

(assert (=> b!1672151 m!2039847))

(declare-fun m!2039859 () Bool)

(assert (=> b!1672151 m!2039859))

(assert (=> b!1672151 m!2037517))

(assert (=> b!1672151 m!2039851))

(assert (=> b!1672151 m!2039859))

(assert (=> b!1672151 m!2039851))

(declare-fun m!2039861 () Bool)

(assert (=> b!1672151 m!2039861))

(assert (=> b!1672154 m!2037517))

(assert (=> b!1672154 m!2039851))

(assert (=> b!1672154 m!2039851))

(assert (=> b!1672154 m!2039853))

(assert (=> b!1671047 d!505953))

(assert (=> b!1671047 d!505813))

(assert (=> b!1671047 d!505821))

(assert (=> b!1671047 d!505865))

(assert (=> b!1671047 d!505817))

(assert (=> b!1671206 d!505837))

(declare-fun d!505955 () Bool)

(declare-fun c!272182 () Bool)

(assert (=> d!505955 (= c!272182 (is-Nil!18418 lt!630931))))

(declare-fun e!1071494 () (Set C!9318))

(assert (=> d!505955 (= (content!2576 lt!630931) e!1071494)))

(declare-fun b!1672183 () Bool)

(assert (=> b!1672183 (= e!1071494 (as set.empty (Set C!9318)))))

(declare-fun b!1672184 () Bool)

(assert (=> b!1672184 (= e!1071494 (set.union (set.insert (h!23819 lt!630931) (as set.empty (Set C!9318))) (content!2576 (t!152639 lt!630931))))))

(assert (= (and d!505955 c!272182) b!1672183))

(assert (= (and d!505955 (not c!272182)) b!1672184))

(declare-fun m!2039863 () Bool)

(assert (=> b!1672184 m!2039863))

(declare-fun m!2039865 () Bool)

(assert (=> b!1672184 m!2039865))

(assert (=> d!505539 d!505955))

(declare-fun d!505957 () Bool)

(declare-fun c!272185 () Bool)

(assert (=> d!505957 (= c!272185 (is-Nil!18418 lt!630482))))

(declare-fun e!1071497 () (Set C!9318))

(assert (=> d!505957 (= (content!2576 lt!630482) e!1071497)))

(declare-fun b!1672189 () Bool)

(assert (=> b!1672189 (= e!1071497 (as set.empty (Set C!9318)))))

(declare-fun b!1672190 () Bool)

(assert (=> b!1672190 (= e!1071497 (set.union (set.insert (h!23819 lt!630482) (as set.empty (Set C!9318))) (content!2576 (t!152639 lt!630482))))))

(assert (= (and d!505957 c!272185) b!1672189))

(assert (= (and d!505957 (not c!272185)) b!1672190))

(declare-fun m!2039867 () Bool)

(assert (=> b!1672190 m!2039867))

(declare-fun m!2039869 () Bool)

(assert (=> b!1672190 m!2039869))

(assert (=> d!505539 d!505957))

(declare-fun d!505959 () Bool)

(declare-fun c!272186 () Bool)

(assert (=> d!505959 (= c!272186 (is-Nil!18418 lt!630485))))

(declare-fun e!1071498 () (Set C!9318))

(assert (=> d!505959 (= (content!2576 lt!630485) e!1071498)))

(declare-fun b!1672191 () Bool)

(assert (=> b!1672191 (= e!1071498 (as set.empty (Set C!9318)))))

(declare-fun b!1672192 () Bool)

(assert (=> b!1672192 (= e!1071498 (set.union (set.insert (h!23819 lt!630485) (as set.empty (Set C!9318))) (content!2576 (t!152639 lt!630485))))))

(assert (= (and d!505959 c!272186) b!1672191))

(assert (= (and d!505959 (not c!272186)) b!1672192))

(declare-fun m!2039871 () Bool)

(assert (=> b!1672192 m!2039871))

(declare-fun m!2039873 () Bool)

(assert (=> b!1672192 m!2039873))

(assert (=> d!505539 d!505959))

(declare-fun d!505961 () Bool)

(declare-fun charsToInt!0 (List!18487) (_ BitVec 32))

(assert (=> d!505961 (= (inv!16 (value!102128 (h!23821 tokens!457))) (= (charsToInt!0 (text!23785 (value!102128 (h!23821 tokens!457)))) (value!102119 (value!102128 (h!23821 tokens!457)))))))

(declare-fun bs!398208 () Bool)

(assert (= bs!398208 d!505961))

(declare-fun m!2039875 () Bool)

(assert (=> bs!398208 m!2039875))

(assert (=> b!1671025 d!505961))

(declare-fun d!505963 () Bool)

(assert (=> d!505963 (= (inv!23769 (tag!3528 (rule!5134 (h!23821 (t!152641 tokens!457))))) (= (mod (str.len (value!102127 (tag!3528 (rule!5134 (h!23821 (t!152641 tokens!457)))))) 2) 0))))

(assert (=> b!1671343 d!505963))

(declare-fun d!505965 () Bool)

(declare-fun res!749883 () Bool)

(declare-fun e!1071499 () Bool)

(assert (=> d!505965 (=> (not res!749883) (not e!1071499))))

(assert (=> d!505965 (= res!749883 (semiInverseModEq!1269 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (toValue!4711 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457)))))))))

(assert (=> d!505965 (= (inv!23772 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) e!1071499)))

(declare-fun b!1672193 () Bool)

(assert (=> b!1672193 (= e!1071499 (equivClasses!1210 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (toValue!4711 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457)))))))))

(assert (= (and d!505965 res!749883) b!1672193))

(declare-fun m!2039877 () Bool)

(assert (=> d!505965 m!2039877))

(declare-fun m!2039879 () Bool)

(assert (=> b!1672193 m!2039879))

(assert (=> b!1671343 d!505965))

(declare-fun bs!398209 () Bool)

(declare-fun d!505967 () Bool)

(assert (= bs!398209 (and d!505967 d!505449)))

(declare-fun lambda!68058 () Int)

(assert (=> bs!398209 (= lambda!68058 lambda!68048)))

(declare-fun b!1672198 () Bool)

(declare-fun e!1071504 () Bool)

(assert (=> b!1672198 (= e!1071504 true)))

(declare-fun b!1672197 () Bool)

(declare-fun e!1071503 () Bool)

(assert (=> b!1672197 (= e!1071503 e!1071504)))

(declare-fun b!1672196 () Bool)

(declare-fun e!1071502 () Bool)

(assert (=> b!1672196 (= e!1071502 e!1071503)))

(assert (=> d!505967 e!1071502))

(assert (= b!1672197 b!1672198))

(assert (= b!1672196 b!1672197))

(assert (= (and d!505967 (is-Cons!18419 rules!1846)) b!1672196))

(assert (=> b!1672198 (< (dynLambda!8313 order!11073 (toValue!4711 (transformation!3244 (h!23820 rules!1846)))) (dynLambda!8314 order!11075 lambda!68058))))

(assert (=> b!1672198 (< (dynLambda!8315 order!11077 (toChars!4570 (transformation!3244 (h!23820 rules!1846)))) (dynLambda!8314 order!11075 lambda!68058))))

(assert (=> d!505967 true))

(declare-fun lt!631877 () Bool)

(assert (=> d!505967 (= lt!631877 (forall!4187 (t!152641 tokens!457) lambda!68058))))

(declare-fun e!1071500 () Bool)

(assert (=> d!505967 (= lt!631877 e!1071500)))

(declare-fun res!749885 () Bool)

(assert (=> d!505967 (=> res!749885 e!1071500)))

(assert (=> d!505967 (= res!749885 (not (is-Cons!18420 (t!152641 tokens!457))))))

(assert (=> d!505967 (not (isEmpty!11479 rules!1846))))

(assert (=> d!505967 (= (rulesProduceEachTokenIndividuallyList!1075 thiss!17113 rules!1846 (t!152641 tokens!457)) lt!631877)))

(declare-fun b!1672194 () Bool)

(declare-fun e!1071501 () Bool)

(assert (=> b!1672194 (= e!1071500 e!1071501)))

(declare-fun res!749884 () Bool)

(assert (=> b!1672194 (=> (not res!749884) (not e!1071501))))

(assert (=> b!1672194 (= res!749884 (rulesProduceIndividualToken!1521 thiss!17113 rules!1846 (h!23821 (t!152641 tokens!457))))))

(declare-fun b!1672195 () Bool)

(assert (=> b!1672195 (= e!1071501 (rulesProduceEachTokenIndividuallyList!1075 thiss!17113 rules!1846 (t!152641 (t!152641 tokens!457))))))

(assert (= (and d!505967 (not res!749885)) b!1672194))

(assert (= (and b!1672194 res!749884) b!1672195))

(declare-fun m!2039881 () Bool)

(assert (=> d!505967 m!2039881))

(assert (=> d!505967 m!2037093))

(assert (=> b!1672194 m!2037915))

(declare-fun m!2039883 () Bool)

(assert (=> b!1672195 m!2039883))

(assert (=> b!1671148 d!505967))

(declare-fun d!505969 () Bool)

(declare-fun e!1071536 () Bool)

(assert (=> d!505969 e!1071536))

(declare-fun res!749925 () Bool)

(assert (=> d!505969 (=> res!749925 e!1071536)))

(declare-fun lt!632015 () Option!3539)

(assert (=> d!505969 (= res!749925 (isEmpty!11485 lt!632015))))

(declare-fun e!1071537 () Option!3539)

(assert (=> d!505969 (= lt!632015 e!1071537)))

(declare-fun c!272200 () Bool)

(declare-datatypes ((tuple2!18154 0))(
  ( (tuple2!18155 (_1!10479 List!18488) (_2!10479 List!18488)) )
))
(declare-fun lt!632016 () tuple2!18154)

(assert (=> d!505969 (= c!272200 (isEmpty!11487 (_1!10479 lt!632016)))))

(declare-fun findLongestMatch!297 (Regex!4572 List!18488) tuple2!18154)

(assert (=> d!505969 (= lt!632016 (findLongestMatch!297 (regex!3244 (h!23820 rules!1846)) lt!630492))))

(declare-fun ruleValid!762 (LexerInterface!2873 Rule!6288) Bool)

(assert (=> d!505969 (ruleValid!762 thiss!17113 (h!23820 rules!1846))))

(assert (=> d!505969 (= (maxPrefixOneRule!836 thiss!17113 (h!23820 rules!1846) lt!630492) lt!632015)))

(declare-fun b!1672263 () Bool)

(assert (=> b!1672263 (= e!1071537 (Some!3538 (tuple2!18141 (Token!6055 (apply!4976 (transformation!3244 (h!23820 rules!1846)) (seqFromList!2225 (_1!10479 lt!632016))) (h!23820 rules!1846) (size!14656 (seqFromList!2225 (_1!10479 lt!632016))) (_1!10479 lt!632016)) (_2!10479 lt!632016))))))

(declare-fun lt!632017 () Unit!31326)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!354 (Regex!4572 List!18488) Unit!31326)

(assert (=> b!1672263 (= lt!632017 (longestMatchIsAcceptedByMatchOrIsEmpty!354 (regex!3244 (h!23820 rules!1846)) lt!630492))))

(declare-fun res!749923 () Bool)

(declare-fun findLongestMatchInner!370 (Regex!4572 List!18488 Int List!18488 List!18488 Int) tuple2!18154)

(assert (=> b!1672263 (= res!749923 (isEmpty!11487 (_1!10479 (findLongestMatchInner!370 (regex!3244 (h!23820 rules!1846)) Nil!18418 (size!14657 Nil!18418) lt!630492 lt!630492 (size!14657 lt!630492)))))))

(declare-fun e!1071538 () Bool)

(assert (=> b!1672263 (=> res!749923 e!1071538)))

(assert (=> b!1672263 e!1071538))

(declare-fun lt!632014 () Unit!31326)

(assert (=> b!1672263 (= lt!632014 lt!632017)))

(declare-fun lt!632018 () Unit!31326)

(assert (=> b!1672263 (= lt!632018 (lemmaSemiInverse!436 (transformation!3244 (h!23820 rules!1846)) (seqFromList!2225 (_1!10479 lt!632016))))))

(declare-fun b!1672264 () Bool)

(declare-fun e!1071539 () Bool)

(assert (=> b!1672264 (= e!1071536 e!1071539)))

(declare-fun res!749929 () Bool)

(assert (=> b!1672264 (=> (not res!749929) (not e!1071539))))

(assert (=> b!1672264 (= res!749929 (matchR!2063 (regex!3244 (h!23820 rules!1846)) (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!632015))))))))

(declare-fun b!1672265 () Bool)

(assert (=> b!1672265 (= e!1071538 (matchR!2063 (regex!3244 (h!23820 rules!1846)) (_1!10479 (findLongestMatchInner!370 (regex!3244 (h!23820 rules!1846)) Nil!18418 (size!14657 Nil!18418) lt!630492 lt!630492 (size!14657 lt!630492)))))))

(declare-fun b!1672266 () Bool)

(declare-fun res!749928 () Bool)

(assert (=> b!1672266 (=> (not res!749928) (not e!1071539))))

(assert (=> b!1672266 (= res!749928 (= (value!102128 (_1!10472 (get!5396 lt!632015))) (apply!4976 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!632015)))) (seqFromList!2225 (originalCharacters!4058 (_1!10472 (get!5396 lt!632015)))))))))

(declare-fun b!1672267 () Bool)

(assert (=> b!1672267 (= e!1071537 None!3538)))

(declare-fun b!1672268 () Bool)

(declare-fun res!749927 () Bool)

(assert (=> b!1672268 (=> (not res!749927) (not e!1071539))))

(assert (=> b!1672268 (= res!749927 (< (size!14657 (_2!10472 (get!5396 lt!632015))) (size!14657 lt!630492)))))

(declare-fun b!1672269 () Bool)

(declare-fun res!749926 () Bool)

(assert (=> b!1672269 (=> (not res!749926) (not e!1071539))))

(assert (=> b!1672269 (= res!749926 (= (++!5024 (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!632015)))) (_2!10472 (get!5396 lt!632015))) lt!630492))))

(declare-fun b!1672270 () Bool)

(declare-fun res!749924 () Bool)

(assert (=> b!1672270 (=> (not res!749924) (not e!1071539))))

(assert (=> b!1672270 (= res!749924 (= (rule!5134 (_1!10472 (get!5396 lt!632015))) (h!23820 rules!1846)))))

(declare-fun b!1672271 () Bool)

(assert (=> b!1672271 (= e!1071539 (= (size!14653 (_1!10472 (get!5396 lt!632015))) (size!14657 (originalCharacters!4058 (_1!10472 (get!5396 lt!632015))))))))

(assert (= (and d!505969 c!272200) b!1672267))

(assert (= (and d!505969 (not c!272200)) b!1672263))

(assert (= (and b!1672263 (not res!749923)) b!1672265))

(assert (= (and d!505969 (not res!749925)) b!1672264))

(assert (= (and b!1672264 res!749929) b!1672269))

(assert (= (and b!1672269 res!749926) b!1672268))

(assert (= (and b!1672268 res!749927) b!1672270))

(assert (= (and b!1672270 res!749924) b!1672266))

(assert (= (and b!1672266 res!749928) b!1672271))

(declare-fun m!2040263 () Bool)

(assert (=> b!1672270 m!2040263))

(assert (=> b!1672271 m!2040263))

(declare-fun m!2040265 () Bool)

(assert (=> b!1672271 m!2040265))

(assert (=> b!1672266 m!2040263))

(declare-fun m!2040267 () Bool)

(assert (=> b!1672266 m!2040267))

(assert (=> b!1672266 m!2040267))

(declare-fun m!2040269 () Bool)

(assert (=> b!1672266 m!2040269))

(assert (=> b!1672264 m!2040263))

(declare-fun m!2040271 () Bool)

(assert (=> b!1672264 m!2040271))

(assert (=> b!1672264 m!2040271))

(declare-fun m!2040273 () Bool)

(assert (=> b!1672264 m!2040273))

(assert (=> b!1672264 m!2040273))

(declare-fun m!2040275 () Bool)

(assert (=> b!1672264 m!2040275))

(declare-fun m!2040277 () Bool)

(assert (=> b!1672263 m!2040277))

(declare-fun m!2040279 () Bool)

(assert (=> b!1672263 m!2040279))

(assert (=> b!1672263 m!2037835))

(declare-fun m!2040281 () Bool)

(assert (=> b!1672263 m!2040281))

(declare-fun m!2040283 () Bool)

(assert (=> b!1672263 m!2040283))

(assert (=> b!1672263 m!2040277))

(declare-fun m!2040285 () Bool)

(assert (=> b!1672263 m!2040285))

(declare-fun m!2040287 () Bool)

(assert (=> b!1672263 m!2040287))

(assert (=> b!1672263 m!2037835))

(declare-fun m!2040289 () Bool)

(assert (=> b!1672263 m!2040289))

(assert (=> b!1672263 m!2040277))

(declare-fun m!2040291 () Bool)

(assert (=> b!1672263 m!2040291))

(assert (=> b!1672263 m!2040287))

(assert (=> b!1672263 m!2040277))

(assert (=> b!1672268 m!2040263))

(declare-fun m!2040293 () Bool)

(assert (=> b!1672268 m!2040293))

(assert (=> b!1672268 m!2037835))

(assert (=> b!1672269 m!2040263))

(assert (=> b!1672269 m!2040271))

(assert (=> b!1672269 m!2040271))

(assert (=> b!1672269 m!2040273))

(assert (=> b!1672269 m!2040273))

(declare-fun m!2040295 () Bool)

(assert (=> b!1672269 m!2040295))

(declare-fun m!2040297 () Bool)

(assert (=> d!505969 m!2040297))

(declare-fun m!2040299 () Bool)

(assert (=> d!505969 m!2040299))

(declare-fun m!2040301 () Bool)

(assert (=> d!505969 m!2040301))

(declare-fun m!2040303 () Bool)

(assert (=> d!505969 m!2040303))

(assert (=> b!1672265 m!2040287))

(assert (=> b!1672265 m!2037835))

(assert (=> b!1672265 m!2040287))

(assert (=> b!1672265 m!2037835))

(assert (=> b!1672265 m!2040289))

(declare-fun m!2040305 () Bool)

(assert (=> b!1672265 m!2040305))

(assert (=> bm!106585 d!505969))

(declare-fun d!506021 () Bool)

(assert (=> d!506021 (= (list!7382 lt!630927) (list!7386 (c!271873 lt!630927)))))

(declare-fun bs!398221 () Bool)

(assert (= bs!398221 d!506021))

(declare-fun m!2040307 () Bool)

(assert (=> bs!398221 m!2040307))

(assert (=> b!1671230 d!506021))

(declare-fun d!506023 () Bool)

(assert (=> d!506023 (= (list!7382 (seqFromList!2226 (t!152641 (t!152641 tokens!457)))) (list!7386 (c!271873 (seqFromList!2226 (t!152641 (t!152641 tokens!457))))))))

(declare-fun bs!398222 () Bool)

(assert (= bs!398222 d!506023))

(declare-fun m!2040309 () Bool)

(assert (=> bs!398222 m!2040309))

(assert (=> b!1671230 d!506023))

(declare-fun b!1672285 () Bool)

(declare-fun e!1071551 () List!18490)

(assert (=> b!1672285 (= e!1071551 (list!7389 (xs!8981 (c!271873 lt!630497))))))

(declare-fun b!1672284 () Bool)

(declare-fun e!1071550 () List!18490)

(assert (=> b!1672284 (= e!1071550 e!1071551)))

(declare-fun c!272202 () Bool)

(assert (=> b!1672284 (= c!272202 (is-Leaf!8980 (c!271873 lt!630497)))))

(declare-fun d!506025 () Bool)

(declare-fun c!272201 () Bool)

(assert (=> d!506025 (= c!272201 (is-Empty!6137 (c!271873 lt!630497)))))

(assert (=> d!506025 (= (list!7386 (c!271873 lt!630497)) e!1071550)))

(declare-fun b!1672286 () Bool)

(assert (=> b!1672286 (= e!1071551 (++!5029 (list!7386 (left!14733 (c!271873 lt!630497))) (list!7386 (right!15063 (c!271873 lt!630497)))))))

(declare-fun b!1672283 () Bool)

(assert (=> b!1672283 (= e!1071550 Nil!18420)))

(assert (= (and d!506025 c!272201) b!1672283))

(assert (= (and d!506025 (not c!272201)) b!1672284))

(assert (= (and b!1672284 c!272202) b!1672285))

(assert (= (and b!1672284 (not c!272202)) b!1672286))

(declare-fun m!2040315 () Bool)

(assert (=> b!1672285 m!2040315))

(declare-fun m!2040317 () Bool)

(assert (=> b!1672286 m!2040317))

(declare-fun m!2040319 () Bool)

(assert (=> b!1672286 m!2040319))

(assert (=> b!1672286 m!2040317))

(assert (=> b!1672286 m!2040319))

(declare-fun m!2040323 () Bool)

(assert (=> b!1672286 m!2040323))

(assert (=> d!505533 d!506025))

(declare-fun d!506029 () Bool)

(declare-fun lt!632021 () Int)

(assert (=> d!506029 (>= lt!632021 0)))

(declare-fun e!1071554 () Int)

(assert (=> d!506029 (= lt!632021 e!1071554)))

(declare-fun c!272205 () Bool)

(assert (=> d!506029 (= c!272205 (is-Nil!18418 (_2!10472 (get!5396 lt!630873))))))

(assert (=> d!506029 (= (size!14657 (_2!10472 (get!5396 lt!630873))) lt!632021)))

(declare-fun b!1672291 () Bool)

(assert (=> b!1672291 (= e!1071554 0)))

(declare-fun b!1672292 () Bool)

(assert (=> b!1672292 (= e!1071554 (+ 1 (size!14657 (t!152639 (_2!10472 (get!5396 lt!630873))))))))

(assert (= (and d!506029 c!272205) b!1672291))

(assert (= (and d!506029 (not c!272205)) b!1672292))

(declare-fun m!2040331 () Bool)

(assert (=> b!1672292 m!2040331))

(assert (=> b!1671199 d!506029))

(assert (=> b!1671199 d!505593))

(declare-fun d!506035 () Bool)

(declare-fun lt!632022 () Int)

(assert (=> d!506035 (>= lt!632022 0)))

(declare-fun e!1071555 () Int)

(assert (=> d!506035 (= lt!632022 e!1071555)))

(declare-fun c!272206 () Bool)

(assert (=> d!506035 (= c!272206 (is-Nil!18418 lt!630492))))

(assert (=> d!506035 (= (size!14657 lt!630492) lt!632022)))

(declare-fun b!1672293 () Bool)

(assert (=> b!1672293 (= e!1071555 0)))

(declare-fun b!1672294 () Bool)

(assert (=> b!1672294 (= e!1071555 (+ 1 (size!14657 (t!152639 lt!630492))))))

(assert (= (and d!506035 c!272206) b!1672293))

(assert (= (and d!506035 (not c!272206)) b!1672294))

(declare-fun m!2040333 () Bool)

(assert (=> b!1672294 m!2040333))

(assert (=> b!1671199 d!506035))

(declare-fun b!1672308 () Bool)

(declare-fun e!1071561 () Bool)

(assert (=> b!1672308 (= e!1071561 (not (isEmpty!11484 (right!15063 (prepend!834 (c!271873 (seqFromList!2226 (t!152641 (t!152641 tokens!457)))) (h!23821 (t!152641 tokens!457)))))))))

(declare-fun b!1672309 () Bool)

(declare-fun res!749953 () Bool)

(assert (=> b!1672309 (=> (not res!749953) (not e!1071561))))

(assert (=> b!1672309 (= res!749953 (isBalanced!1912 (right!15063 (prepend!834 (c!271873 (seqFromList!2226 (t!152641 (t!152641 tokens!457)))) (h!23821 (t!152641 tokens!457))))))))

(declare-fun d!506037 () Bool)

(declare-fun res!749958 () Bool)

(declare-fun e!1071562 () Bool)

(assert (=> d!506037 (=> res!749958 e!1071562)))

(assert (=> d!506037 (= res!749958 (not (is-Node!6137 (prepend!834 (c!271873 (seqFromList!2226 (t!152641 (t!152641 tokens!457)))) (h!23821 (t!152641 tokens!457))))))))

(assert (=> d!506037 (= (isBalanced!1912 (prepend!834 (c!271873 (seqFromList!2226 (t!152641 (t!152641 tokens!457)))) (h!23821 (t!152641 tokens!457)))) e!1071562)))

(declare-fun b!1672310 () Bool)

(assert (=> b!1672310 (= e!1071562 e!1071561)))

(declare-fun res!749955 () Bool)

(assert (=> b!1672310 (=> (not res!749955) (not e!1071561))))

(declare-fun height!975 (Conc!6137) Int)

(assert (=> b!1672310 (= res!749955 (<= (- 1) (- (height!975 (left!14733 (prepend!834 (c!271873 (seqFromList!2226 (t!152641 (t!152641 tokens!457)))) (h!23821 (t!152641 tokens!457))))) (height!975 (right!15063 (prepend!834 (c!271873 (seqFromList!2226 (t!152641 (t!152641 tokens!457)))) (h!23821 (t!152641 tokens!457))))))))))

(declare-fun b!1672311 () Bool)

(declare-fun res!749954 () Bool)

(assert (=> b!1672311 (=> (not res!749954) (not e!1071561))))

(assert (=> b!1672311 (= res!749954 (isBalanced!1912 (left!14733 (prepend!834 (c!271873 (seqFromList!2226 (t!152641 (t!152641 tokens!457)))) (h!23821 (t!152641 tokens!457))))))))

(declare-fun b!1672312 () Bool)

(declare-fun res!749957 () Bool)

(assert (=> b!1672312 (=> (not res!749957) (not e!1071561))))

(assert (=> b!1672312 (= res!749957 (not (isEmpty!11484 (left!14733 (prepend!834 (c!271873 (seqFromList!2226 (t!152641 (t!152641 tokens!457)))) (h!23821 (t!152641 tokens!457)))))))))

(declare-fun b!1672313 () Bool)

(declare-fun res!749956 () Bool)

(assert (=> b!1672313 (=> (not res!749956) (not e!1071561))))

(assert (=> b!1672313 (= res!749956 (<= (- (height!975 (left!14733 (prepend!834 (c!271873 (seqFromList!2226 (t!152641 (t!152641 tokens!457)))) (h!23821 (t!152641 tokens!457))))) (height!975 (right!15063 (prepend!834 (c!271873 (seqFromList!2226 (t!152641 (t!152641 tokens!457)))) (h!23821 (t!152641 tokens!457)))))) 1))))

(assert (= (and d!506037 (not res!749958)) b!1672310))

(assert (= (and b!1672310 res!749955) b!1672313))

(assert (= (and b!1672313 res!749956) b!1672311))

(assert (= (and b!1672311 res!749954) b!1672309))

(assert (= (and b!1672309 res!749953) b!1672312))

(assert (= (and b!1672312 res!749957) b!1672308))

(declare-fun m!2040345 () Bool)

(assert (=> b!1672309 m!2040345))

(declare-fun m!2040347 () Bool)

(assert (=> b!1672308 m!2040347))

(declare-fun m!2040349 () Bool)

(assert (=> b!1672310 m!2040349))

(declare-fun m!2040351 () Bool)

(assert (=> b!1672310 m!2040351))

(assert (=> b!1672313 m!2040349))

(assert (=> b!1672313 m!2040351))

(declare-fun m!2040353 () Bool)

(assert (=> b!1672311 m!2040353))

(declare-fun m!2040355 () Bool)

(assert (=> b!1672312 m!2040355))

(assert (=> d!505525 d!506037))

(declare-fun d!506047 () Bool)

(declare-fun e!1071571 () Bool)

(assert (=> d!506047 e!1071571))

(declare-fun res!749974 () Bool)

(assert (=> d!506047 (=> (not res!749974) (not e!1071571))))

(declare-fun lt!632034 () Conc!6137)

(assert (=> d!506047 (= res!749974 (isBalanced!1912 lt!632034))))

(declare-fun ++!5030 (Conc!6137 Conc!6137) Conc!6137)

(declare-fun fill!109 (Int Token!6054) IArray!12279)

(assert (=> d!506047 (= lt!632034 (++!5030 (Leaf!8980 (fill!109 1 (h!23821 (t!152641 tokens!457))) 1) (c!271873 (seqFromList!2226 (t!152641 (t!152641 tokens!457))))))))

(assert (=> d!506047 (isBalanced!1912 (c!271873 (seqFromList!2226 (t!152641 (t!152641 tokens!457)))))))

(assert (=> d!506047 (= (prepend!834 (c!271873 (seqFromList!2226 (t!152641 (t!152641 tokens!457)))) (h!23821 (t!152641 tokens!457))) lt!632034)))

(declare-fun b!1672331 () Bool)

(assert (=> b!1672331 (= e!1071571 (= (list!7386 lt!632034) (Cons!18420 (h!23821 (t!152641 tokens!457)) (list!7386 (c!271873 (seqFromList!2226 (t!152641 (t!152641 tokens!457))))))))))

(assert (= (and d!506047 res!749974) b!1672331))

(declare-fun m!2040359 () Bool)

(assert (=> d!506047 m!2040359))

(declare-fun m!2040361 () Bool)

(assert (=> d!506047 m!2040361))

(declare-fun m!2040363 () Bool)

(assert (=> d!506047 m!2040363))

(declare-fun m!2040365 () Bool)

(assert (=> d!506047 m!2040365))

(declare-fun m!2040367 () Bool)

(assert (=> b!1672331 m!2040367))

(assert (=> b!1672331 m!2040309))

(assert (=> d!505525 d!506047))

(declare-fun d!506051 () Bool)

(assert (=> d!506051 true))

(declare-fun lt!632037 () Bool)

(assert (=> d!506051 (= lt!632037 (rulesValidInductive!1043 thiss!17113 rules!1846))))

(declare-fun lambda!68061 () Int)

(declare-fun forall!4189 (List!18489 Int) Bool)

(assert (=> d!506051 (= lt!632037 (forall!4189 rules!1846 lambda!68061))))

(assert (=> d!506051 (= (rulesValid!1197 thiss!17113 rules!1846) lt!632037)))

(declare-fun bs!398225 () Bool)

(assert (= bs!398225 d!506051))

(assert (=> bs!398225 m!2037861))

(declare-fun m!2040399 () Bool)

(assert (=> bs!398225 m!2040399))

(assert (=> d!505385 d!506051))

(declare-fun d!506055 () Bool)

(assert (=> d!506055 (= (inv!23777 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (value!102128 (h!23821 tokens!457)))) (isBalanced!1911 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (value!102128 (h!23821 tokens!457))))))))

(declare-fun bs!398226 () Bool)

(assert (= bs!398226 d!506055))

(declare-fun m!2040401 () Bool)

(assert (=> bs!398226 m!2040401))

(assert (=> tb!95879 d!506055))

(declare-fun b!1672379 () Bool)

(declare-fun e!1071613 () Bool)

(declare-fun e!1071610 () Bool)

(assert (=> b!1672379 (= e!1071613 e!1071610)))

(declare-fun res!750010 () Bool)

(assert (=> b!1672379 (=> res!750010 e!1071610)))

(assert (=> b!1672379 (= res!750010 (not (is-Node!6136 (c!271871 lt!630486))))))

(declare-fun b!1672380 () Bool)

(declare-fun e!1071608 () Bool)

(declare-fun e!1071609 () Bool)

(assert (=> b!1672380 (= e!1071608 e!1071609)))

(declare-fun res!750013 () Bool)

(assert (=> b!1672380 (=> res!750013 e!1071609)))

(assert (=> b!1672380 (= res!750013 (not (is-Node!6136 (right!15062 (c!271871 lt!630500)))))))

(declare-fun b!1672381 () Bool)

(declare-fun e!1071607 () Bool)

(assert (=> b!1672381 (= e!1071609 e!1071607)))

(declare-fun res!750011 () Bool)

(assert (=> b!1672381 (=> (not res!750011) (not e!1071607))))

(declare-fun appendAssoc!113 (List!18488 List!18488 List!18488) Bool)

(assert (=> b!1672381 (= res!750011 (appendAssoc!113 (list!7385 (left!14732 (right!15062 (c!271871 lt!630500)))) (list!7385 (right!15062 (right!15062 (c!271871 lt!630500)))) (list!7385 (c!271871 lt!630486))))))

(declare-fun b!1672382 () Bool)

(declare-fun e!1071611 () Bool)

(declare-fun e!1071605 () Bool)

(assert (=> b!1672382 (= e!1071611 e!1071605)))

(declare-fun res!750012 () Bool)

(assert (=> b!1672382 (=> (not res!750012) (not e!1071605))))

(assert (=> b!1672382 (= res!750012 (appendAssoc!113 (list!7385 (c!271871 lt!630500)) (list!7385 (left!14732 (left!14732 (c!271871 lt!630486)))) (list!7385 (right!15062 (left!14732 (c!271871 lt!630486))))))))

(declare-fun b!1672383 () Bool)

(assert (=> b!1672383 (= e!1071605 (appendAssoc!113 (++!5024 (list!7385 (c!271871 lt!630500)) (list!7385 (left!14732 (left!14732 (c!271871 lt!630486))))) (list!7385 (right!15062 (left!14732 (c!271871 lt!630486)))) (list!7385 (right!15062 (c!271871 lt!630486)))))))

(declare-fun b!1672384 () Bool)

(declare-fun e!1071606 () Bool)

(assert (=> b!1672384 (= e!1071610 e!1071606)))

(declare-fun res!750008 () Bool)

(assert (=> b!1672384 (=> (not res!750008) (not e!1071606))))

(assert (=> b!1672384 (= res!750008 (appendAssoc!113 (list!7385 (c!271871 lt!630500)) (list!7385 (left!14732 (c!271871 lt!630486))) (list!7385 (right!15062 (c!271871 lt!630486)))))))

(declare-fun b!1672385 () Bool)

(assert (=> b!1672385 (= e!1071607 (appendAssoc!113 (list!7385 (left!14732 (c!271871 lt!630500))) (list!7385 (left!14732 (right!15062 (c!271871 lt!630500)))) (++!5024 (list!7385 (right!15062 (right!15062 (c!271871 lt!630500)))) (list!7385 (c!271871 lt!630486)))))))

(declare-fun d!506057 () Bool)

(assert (=> d!506057 e!1071613))

(declare-fun res!750009 () Bool)

(assert (=> d!506057 (=> (not res!750009) (not e!1071613))))

(declare-fun e!1071612 () Bool)

(assert (=> d!506057 (= res!750009 e!1071612)))

(declare-fun res!750006 () Bool)

(assert (=> d!506057 (=> res!750006 e!1071612)))

(assert (=> d!506057 (= res!750006 (not (is-Node!6136 (c!271871 lt!630500))))))

(assert (=> d!506057 (= (appendAssocInst!486 (c!271871 lt!630500) (c!271871 lt!630486)) true)))

(declare-fun b!1672386 () Bool)

(assert (=> b!1672386 (= e!1071612 e!1071608)))

(declare-fun res!750014 () Bool)

(assert (=> b!1672386 (=> (not res!750014) (not e!1071608))))

(assert (=> b!1672386 (= res!750014 (appendAssoc!113 (list!7385 (left!14732 (c!271871 lt!630500))) (list!7385 (right!15062 (c!271871 lt!630500))) (list!7385 (c!271871 lt!630486))))))

(declare-fun b!1672387 () Bool)

(assert (=> b!1672387 (= e!1071606 e!1071611)))

(declare-fun res!750007 () Bool)

(assert (=> b!1672387 (=> res!750007 e!1071611)))

(assert (=> b!1672387 (= res!750007 (not (is-Node!6136 (left!14732 (c!271871 lt!630486)))))))

(assert (= (and d!506057 (not res!750006)) b!1672386))

(assert (= (and b!1672386 res!750014) b!1672380))

(assert (= (and b!1672380 (not res!750013)) b!1672381))

(assert (= (and b!1672381 res!750011) b!1672385))

(assert (= (and d!506057 res!750009) b!1672379))

(assert (= (and b!1672379 (not res!750010)) b!1672384))

(assert (= (and b!1672384 res!750008) b!1672387))

(assert (= (and b!1672387 (not res!750007)) b!1672382))

(assert (= (and b!1672382 res!750012) b!1672383))

(assert (=> b!1672384 m!2037431))

(assert (=> b!1672384 m!2039545))

(assert (=> b!1672384 m!2039547))

(assert (=> b!1672384 m!2037431))

(assert (=> b!1672384 m!2039545))

(assert (=> b!1672384 m!2039547))

(declare-fun m!2040447 () Bool)

(assert (=> b!1672384 m!2040447))

(declare-fun m!2040449 () Bool)

(assert (=> b!1672381 m!2040449))

(declare-fun m!2040453 () Bool)

(assert (=> b!1672381 m!2040453))

(assert (=> b!1672381 m!2037971))

(assert (=> b!1672381 m!2040449))

(assert (=> b!1672381 m!2040453))

(assert (=> b!1672381 m!2037971))

(declare-fun m!2040461 () Bool)

(assert (=> b!1672381 m!2040461))

(assert (=> b!1672386 m!2039529))

(assert (=> b!1672386 m!2039531))

(assert (=> b!1672386 m!2037971))

(assert (=> b!1672386 m!2039529))

(assert (=> b!1672386 m!2039531))

(assert (=> b!1672386 m!2037971))

(declare-fun m!2040467 () Bool)

(assert (=> b!1672386 m!2040467))

(assert (=> b!1672385 m!2040453))

(assert (=> b!1672385 m!2037971))

(declare-fun m!2040469 () Bool)

(assert (=> b!1672385 m!2040469))

(assert (=> b!1672385 m!2040449))

(assert (=> b!1672385 m!2037971))

(assert (=> b!1672385 m!2039529))

(assert (=> b!1672385 m!2040449))

(assert (=> b!1672385 m!2040469))

(declare-fun m!2040473 () Bool)

(assert (=> b!1672385 m!2040473))

(assert (=> b!1672385 m!2039529))

(assert (=> b!1672385 m!2040453))

(declare-fun m!2040475 () Bool)

(assert (=> b!1672383 m!2040475))

(assert (=> b!1672383 m!2037431))

(declare-fun m!2040477 () Bool)

(assert (=> b!1672383 m!2040477))

(declare-fun m!2040479 () Bool)

(assert (=> b!1672383 m!2040479))

(assert (=> b!1672383 m!2037431))

(assert (=> b!1672383 m!2040477))

(assert (=> b!1672383 m!2040479))

(assert (=> b!1672383 m!2040475))

(assert (=> b!1672383 m!2039547))

(declare-fun m!2040481 () Bool)

(assert (=> b!1672383 m!2040481))

(assert (=> b!1672383 m!2039547))

(assert (=> b!1672382 m!2037431))

(assert (=> b!1672382 m!2040477))

(assert (=> b!1672382 m!2040475))

(assert (=> b!1672382 m!2037431))

(assert (=> b!1672382 m!2040477))

(assert (=> b!1672382 m!2040475))

(declare-fun m!2040489 () Bool)

(assert (=> b!1672382 m!2040489))

(assert (=> d!505389 d!506057))

(assert (=> d!505389 d!505827))

(assert (=> b!1671226 d!505365))

(assert (=> b!1671226 d!505369))

(assert (=> b!1671226 d!505913))

(declare-fun d!506067 () Bool)

(assert (=> d!506067 (rulesProduceIndividualToken!1521 thiss!17113 rules!1846 (h!23821 tokens!457))))

(declare-fun lt!632069 () Unit!31326)

(declare-fun choose!10075 (LexerInterface!2873 List!18489 List!18490 Token!6054) Unit!31326)

(assert (=> d!506067 (= lt!632069 (choose!10075 thiss!17113 rules!1846 tokens!457 (h!23821 tokens!457)))))

(assert (=> d!506067 (not (isEmpty!11479 rules!1846))))

(assert (=> d!506067 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!633 thiss!17113 rules!1846 tokens!457 (h!23821 tokens!457)) lt!632069)))

(declare-fun bs!398233 () Bool)

(assert (= bs!398233 d!506067))

(assert (=> bs!398233 m!2037009))

(declare-fun m!2040557 () Bool)

(assert (=> bs!398233 m!2040557))

(assert (=> bs!398233 m!2037093))

(assert (=> b!1671226 d!506067))

(assert (=> b!1671226 d!505397))

(declare-fun d!506097 () Bool)

(declare-fun lt!632071 () Bool)

(declare-fun e!1071628 () Bool)

(assert (=> d!506097 (= lt!632071 e!1071628)))

(declare-fun res!750032 () Bool)

(assert (=> d!506097 (=> (not res!750032) (not e!1071628))))

(assert (=> d!506097 (= res!750032 (= (list!7382 (_1!10473 (lex!1357 thiss!17113 rules!1846 (print!1404 thiss!17113 (singletonSeq!1756 (h!23821 (t!152641 tokens!457))))))) (list!7382 (singletonSeq!1756 (h!23821 (t!152641 tokens!457))))))))

(declare-fun e!1071629 () Bool)

(assert (=> d!506097 (= lt!632071 e!1071629)))

(declare-fun res!750033 () Bool)

(assert (=> d!506097 (=> (not res!750033) (not e!1071629))))

(declare-fun lt!632070 () tuple2!18142)

(assert (=> d!506097 (= res!750033 (= (size!14655 (_1!10473 lt!632070)) 1))))

(assert (=> d!506097 (= lt!632070 (lex!1357 thiss!17113 rules!1846 (print!1404 thiss!17113 (singletonSeq!1756 (h!23821 (t!152641 tokens!457))))))))

(assert (=> d!506097 (not (isEmpty!11479 rules!1846))))

(assert (=> d!506097 (= (rulesProduceIndividualToken!1521 thiss!17113 rules!1846 (h!23821 (t!152641 tokens!457))) lt!632071)))

(declare-fun b!1672409 () Bool)

(declare-fun res!750034 () Bool)

(assert (=> b!1672409 (=> (not res!750034) (not e!1071629))))

(assert (=> b!1672409 (= res!750034 (= (apply!4973 (_1!10473 lt!632070) 0) (h!23821 (t!152641 tokens!457))))))

(declare-fun b!1672410 () Bool)

(assert (=> b!1672410 (= e!1071629 (isEmpty!11482 (_2!10473 lt!632070)))))

(declare-fun b!1672411 () Bool)

(assert (=> b!1672411 (= e!1071628 (isEmpty!11482 (_2!10473 (lex!1357 thiss!17113 rules!1846 (print!1404 thiss!17113 (singletonSeq!1756 (h!23821 (t!152641 tokens!457))))))))))

(assert (= (and d!506097 res!750033) b!1672409))

(assert (= (and b!1672409 res!750034) b!1672410))

(assert (= (and d!506097 res!750032) b!1672411))

(assert (=> d!506097 m!2037093))

(assert (=> d!506097 m!2038073))

(declare-fun m!2040559 () Bool)

(assert (=> d!506097 m!2040559))

(declare-fun m!2040561 () Bool)

(assert (=> d!506097 m!2040561))

(assert (=> d!506097 m!2038071))

(assert (=> d!506097 m!2038071))

(assert (=> d!506097 m!2038905))

(declare-fun m!2040563 () Bool)

(assert (=> d!506097 m!2040563))

(assert (=> d!506097 m!2038071))

(assert (=> d!506097 m!2038073))

(declare-fun m!2040565 () Bool)

(assert (=> b!1672409 m!2040565))

(declare-fun m!2040567 () Bool)

(assert (=> b!1672410 m!2040567))

(assert (=> b!1672411 m!2038071))

(assert (=> b!1672411 m!2038071))

(assert (=> b!1672411 m!2038073))

(assert (=> b!1672411 m!2038073))

(assert (=> b!1672411 m!2040559))

(declare-fun m!2040569 () Bool)

(assert (=> b!1672411 m!2040569))

(assert (=> b!1671226 d!506097))

(declare-fun d!506099 () Bool)

(assert (=> d!506099 (rulesProduceIndividualToken!1521 thiss!17113 rules!1846 (h!23821 (t!152641 tokens!457)))))

(declare-fun lt!632072 () Unit!31326)

(assert (=> d!506099 (= lt!632072 (choose!10075 thiss!17113 rules!1846 tokens!457 (h!23821 (t!152641 tokens!457))))))

(assert (=> d!506099 (not (isEmpty!11479 rules!1846))))

(assert (=> d!506099 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!633 thiss!17113 rules!1846 tokens!457 (h!23821 (t!152641 tokens!457))) lt!632072)))

(declare-fun bs!398234 () Bool)

(assert (= bs!398234 d!506099))

(assert (=> bs!398234 m!2037915))

(declare-fun m!2040571 () Bool)

(assert (=> bs!398234 m!2040571))

(assert (=> bs!398234 m!2037093))

(assert (=> b!1671226 d!506099))

(declare-fun d!506101 () Bool)

(declare-fun lt!632073 () Int)

(assert (=> d!506101 (>= lt!632073 0)))

(declare-fun e!1071630 () Int)

(assert (=> d!506101 (= lt!632073 e!1071630)))

(declare-fun c!272217 () Bool)

(assert (=> d!506101 (= c!272217 (is-Nil!18418 lt!630931))))

(assert (=> d!506101 (= (size!14657 lt!630931) lt!632073)))

(declare-fun b!1672412 () Bool)

(assert (=> b!1672412 (= e!1071630 0)))

(declare-fun b!1672413 () Bool)

(assert (=> b!1672413 (= e!1071630 (+ 1 (size!14657 (t!152639 lt!630931))))))

(assert (= (and d!506101 c!272217) b!1672412))

(assert (= (and d!506101 (not c!272217)) b!1672413))

(declare-fun m!2040573 () Bool)

(assert (=> b!1672413 m!2040573))

(assert (=> b!1671245 d!506101))

(assert (=> b!1671245 d!505597))

(declare-fun d!506103 () Bool)

(declare-fun lt!632074 () Int)

(assert (=> d!506103 (>= lt!632074 0)))

(declare-fun e!1071631 () Int)

(assert (=> d!506103 (= lt!632074 e!1071631)))

(declare-fun c!272218 () Bool)

(assert (=> d!506103 (= c!272218 (is-Nil!18418 lt!630485))))

(assert (=> d!506103 (= (size!14657 lt!630485) lt!632074)))

(declare-fun b!1672414 () Bool)

(assert (=> b!1672414 (= e!1071631 0)))

(declare-fun b!1672415 () Bool)

(assert (=> b!1672415 (= e!1071631 (+ 1 (size!14657 (t!152639 lt!630485))))))

(assert (= (and d!506103 c!272218) b!1672414))

(assert (= (and d!506103 (not c!272218)) b!1672415))

(declare-fun m!2040575 () Bool)

(assert (=> b!1672415 m!2040575))

(assert (=> b!1671245 d!506103))

(declare-fun d!506105 () Bool)

(assert (=> d!506105 true))

(declare-fun order!11087 () Int)

(declare-fun lambda!68064 () Int)

(declare-fun dynLambda!8324 (Int Int) Int)

(assert (=> d!506105 (< (dynLambda!8313 order!11073 (toValue!4711 (transformation!3244 (h!23820 rules!1846)))) (dynLambda!8324 order!11087 lambda!68064))))

(declare-fun Forall2!534 (Int) Bool)

(assert (=> d!506105 (= (equivClasses!1210 (toChars!4570 (transformation!3244 (h!23820 rules!1846))) (toValue!4711 (transformation!3244 (h!23820 rules!1846)))) (Forall2!534 lambda!68064))))

(declare-fun bs!398235 () Bool)

(assert (= bs!398235 d!506105))

(declare-fun m!2040577 () Bool)

(assert (=> bs!398235 m!2040577))

(assert (=> b!1670907 d!506105))

(declare-fun e!1071635 () Bool)

(declare-fun b!1672423 () Bool)

(declare-fun lt!632075 () List!18488)

(assert (=> b!1672423 (= e!1071635 (or (not (= lt!630481 Nil!18418)) (= lt!632075 (t!152639 lt!630482))))))

(declare-fun b!1672422 () Bool)

(declare-fun res!750037 () Bool)

(assert (=> b!1672422 (=> (not res!750037) (not e!1071635))))

(assert (=> b!1672422 (= res!750037 (= (size!14657 lt!632075) (+ (size!14657 (t!152639 lt!630482)) (size!14657 lt!630481))))))

(declare-fun b!1672421 () Bool)

(declare-fun e!1071634 () List!18488)

(assert (=> b!1672421 (= e!1071634 (Cons!18418 (h!23819 (t!152639 lt!630482)) (++!5024 (t!152639 (t!152639 lt!630482)) lt!630481)))))

(declare-fun d!506107 () Bool)

(assert (=> d!506107 e!1071635))

(declare-fun res!750038 () Bool)

(assert (=> d!506107 (=> (not res!750038) (not e!1071635))))

(assert (=> d!506107 (= res!750038 (= (content!2576 lt!632075) (set.union (content!2576 (t!152639 lt!630482)) (content!2576 lt!630481))))))

(assert (=> d!506107 (= lt!632075 e!1071634)))

(declare-fun c!272219 () Bool)

(assert (=> d!506107 (= c!272219 (is-Nil!18418 (t!152639 lt!630482)))))

(assert (=> d!506107 (= (++!5024 (t!152639 lt!630482) lt!630481) lt!632075)))

(declare-fun b!1672420 () Bool)

(assert (=> b!1672420 (= e!1071634 lt!630481)))

(assert (= (and d!506107 c!272219) b!1672420))

(assert (= (and d!506107 (not c!272219)) b!1672421))

(assert (= (and d!506107 res!750038) b!1672422))

(assert (= (and b!1672422 res!750037) b!1672423))

(declare-fun m!2040579 () Bool)

(assert (=> b!1672422 m!2040579))

(assert (=> b!1672422 m!2038295))

(assert (=> b!1672422 m!2037393))

(declare-fun m!2040581 () Bool)

(assert (=> b!1672421 m!2040581))

(declare-fun m!2040583 () Bool)

(assert (=> d!506107 m!2040583))

(assert (=> d!506107 m!2039869))

(assert (=> d!506107 m!2037401))

(assert (=> b!1671000 d!506107))

(declare-fun bs!398236 () Bool)

(declare-fun d!506109 () Bool)

(assert (= bs!398236 (and d!506109 d!505877)))

(declare-fun lambda!68065 () Int)

(assert (=> bs!398236 (= (and (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (toChars!4570 (transformation!3244 (h!23820 rules!1846)))) (= (toValue!4711 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (toValue!4711 (transformation!3244 (h!23820 rules!1846))))) (= lambda!68065 lambda!68057))))

(assert (=> d!506109 true))

(assert (=> d!506109 (< (dynLambda!8315 order!11077 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457))))) (dynLambda!8321 order!11085 lambda!68065))))

(assert (=> d!506109 true))

(assert (=> d!506109 (< (dynLambda!8313 order!11073 (toValue!4711 (transformation!3244 (rule!5134 (h!23821 tokens!457))))) (dynLambda!8321 order!11085 lambda!68065))))

(assert (=> d!506109 (= (semiInverseModEq!1269 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (toValue!4711 (transformation!3244 (rule!5134 (h!23821 tokens!457))))) (Forall!663 lambda!68065))))

(declare-fun bs!398237 () Bool)

(assert (= bs!398237 d!506109))

(declare-fun m!2040585 () Bool)

(assert (=> bs!398237 m!2040585))

(assert (=> d!505493 d!506109))

(declare-fun d!506111 () Bool)

(declare-fun lt!632076 () Token!6054)

(assert (=> d!506111 (= lt!632076 (apply!4977 (list!7382 (_1!10473 lt!630577)) 0))))

(assert (=> d!506111 (= lt!632076 (apply!4983 (c!271873 (_1!10473 lt!630577)) 0))))

(declare-fun e!1071636 () Bool)

(assert (=> d!506111 e!1071636))

(declare-fun res!750039 () Bool)

(assert (=> d!506111 (=> (not res!750039) (not e!1071636))))

(assert (=> d!506111 (= res!750039 (<= 0 0))))

(assert (=> d!506111 (= (apply!4973 (_1!10473 lt!630577) 0) lt!632076)))

(declare-fun b!1672424 () Bool)

(assert (=> b!1672424 (= e!1071636 (< 0 (size!14655 (_1!10473 lt!630577))))))

(assert (= (and d!506111 res!750039) b!1672424))

(assert (=> d!506111 m!2039475))

(assert (=> d!506111 m!2039475))

(declare-fun m!2040587 () Bool)

(assert (=> d!506111 m!2040587))

(declare-fun m!2040589 () Bool)

(assert (=> d!506111 m!2040589))

(assert (=> b!1672424 m!2037229))

(assert (=> b!1670914 d!506111))

(declare-fun d!506113 () Bool)

(declare-fun c!272220 () Bool)

(assert (=> d!506113 (= c!272220 (is-Node!6136 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (value!102128 (h!23821 tokens!457))))))))

(declare-fun e!1071637 () Bool)

(assert (=> d!506113 (= (inv!23776 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (value!102128 (h!23821 tokens!457))))) e!1071637)))

(declare-fun b!1672425 () Bool)

(assert (=> b!1672425 (= e!1071637 (inv!23780 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (value!102128 (h!23821 tokens!457))))))))

(declare-fun b!1672426 () Bool)

(declare-fun e!1071638 () Bool)

(assert (=> b!1672426 (= e!1071637 e!1071638)))

(declare-fun res!750040 () Bool)

(assert (=> b!1672426 (= res!750040 (not (is-Leaf!8979 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (value!102128 (h!23821 tokens!457)))))))))

(assert (=> b!1672426 (=> res!750040 e!1071638)))

(declare-fun b!1672427 () Bool)

(assert (=> b!1672427 (= e!1071638 (inv!23781 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (value!102128 (h!23821 tokens!457))))))))

(assert (= (and d!506113 c!272220) b!1672425))

(assert (= (and d!506113 (not c!272220)) b!1672426))

(assert (= (and b!1672426 (not res!750040)) b!1672427))

(declare-fun m!2040591 () Bool)

(assert (=> b!1672425 m!2040591))

(declare-fun m!2040593 () Bool)

(assert (=> b!1672427 m!2040593))

(assert (=> b!1671013 d!506113))

(declare-fun d!506115 () Bool)

(assert (=> d!506115 (= (isEmpty!11483 (list!7382 (_1!10473 (lex!1357 thiss!17113 rules!1846 (seqFromList!2225 lt!630482))))) (is-Nil!18420 (list!7382 (_1!10473 (lex!1357 thiss!17113 rules!1846 (seqFromList!2225 lt!630482))))))))

(assert (=> d!505373 d!506115))

(assert (=> d!505373 d!505819))

(declare-fun lt!632079 () Bool)

(declare-fun d!506117 () Bool)

(assert (=> d!506117 (= lt!632079 (isEmpty!11483 (list!7386 (c!271873 (_1!10473 (lex!1357 thiss!17113 rules!1846 (seqFromList!2225 lt!630482)))))))))

(assert (=> d!506117 (= lt!632079 (= (size!14664 (c!271873 (_1!10473 (lex!1357 thiss!17113 rules!1846 (seqFromList!2225 lt!630482))))) 0))))

(assert (=> d!506117 (= (isEmpty!11484 (c!271873 (_1!10473 (lex!1357 thiss!17113 rules!1846 (seqFromList!2225 lt!630482))))) lt!632079)))

(declare-fun bs!398238 () Bool)

(assert (= bs!398238 d!506117))

(assert (=> bs!398238 m!2039397))

(assert (=> bs!398238 m!2039397))

(declare-fun m!2040595 () Bool)

(assert (=> bs!398238 m!2040595))

(declare-fun m!2040597 () Bool)

(assert (=> bs!398238 m!2040597))

(assert (=> d!505373 d!506117))

(declare-fun d!506119 () Bool)

(declare-fun c!272221 () Bool)

(assert (=> d!506119 (= c!272221 (is-Nil!18418 lt!630643))))

(declare-fun e!1071639 () (Set C!9318))

(assert (=> d!506119 (= (content!2576 lt!630643) e!1071639)))

(declare-fun b!1672428 () Bool)

(assert (=> b!1672428 (= e!1071639 (as set.empty (Set C!9318)))))

(declare-fun b!1672429 () Bool)

(assert (=> b!1672429 (= e!1071639 (set.union (set.insert (h!23819 lt!630643) (as set.empty (Set C!9318))) (content!2576 (t!152639 lt!630643))))))

(assert (= (and d!506119 c!272221) b!1672428))

(assert (= (and d!506119 (not c!272221)) b!1672429))

(declare-fun m!2040599 () Bool)

(assert (=> b!1672429 m!2040599))

(declare-fun m!2040601 () Bool)

(assert (=> b!1672429 m!2040601))

(assert (=> d!505401 d!506119))

(assert (=> d!505401 d!505957))

(declare-fun d!506121 () Bool)

(declare-fun c!272222 () Bool)

(assert (=> d!506121 (= c!272222 (is-Nil!18418 lt!630481))))

(declare-fun e!1071640 () (Set C!9318))

(assert (=> d!506121 (= (content!2576 lt!630481) e!1071640)))

(declare-fun b!1672430 () Bool)

(assert (=> b!1672430 (= e!1071640 (as set.empty (Set C!9318)))))

(declare-fun b!1672431 () Bool)

(assert (=> b!1672431 (= e!1071640 (set.union (set.insert (h!23819 lt!630481) (as set.empty (Set C!9318))) (content!2576 (t!152639 lt!630481))))))

(assert (= (and d!506121 c!272222) b!1672430))

(assert (= (and d!506121 (not c!272222)) b!1672431))

(declare-fun m!2040603 () Bool)

(assert (=> b!1672431 m!2040603))

(declare-fun m!2040605 () Bool)

(assert (=> b!1672431 m!2040605))

(assert (=> d!505401 d!506121))

(declare-fun d!506123 () Bool)

(assert (=> d!506123 (= (list!7381 (_2!10473 lt!630590)) (list!7385 (c!271871 (_2!10473 lt!630590))))))

(declare-fun bs!398239 () Bool)

(assert (= bs!398239 d!506123))

(declare-fun m!2040607 () Bool)

(assert (=> bs!398239 m!2040607))

(assert (=> b!1670953 d!506123))

(assert (=> b!1670953 d!505861))

(assert (=> b!1670953 d!505863))

(declare-fun b!1672432 () Bool)

(declare-fun e!1071645 () Bool)

(declare-fun lt!632080 () Bool)

(declare-fun call!106686 () Bool)

(assert (=> b!1672432 (= e!1071645 (= lt!632080 call!106686))))

(declare-fun b!1672433 () Bool)

(declare-fun e!1071643 () Bool)

(assert (=> b!1672433 (= e!1071643 (not lt!632080))))

(declare-fun b!1672434 () Bool)

(declare-fun e!1071647 () Bool)

(assert (=> b!1672434 (= e!1071647 (matchR!2063 (derivativeStep!1131 (regex!3244 (rule!5134 (_1!10472 (get!5396 lt!630873)))) (head!3736 (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!630873)))))) (tail!2496 (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!630873)))))))))

(declare-fun b!1672435 () Bool)

(declare-fun res!750045 () Bool)

(declare-fun e!1071644 () Bool)

(assert (=> b!1672435 (=> res!750045 e!1071644)))

(assert (=> b!1672435 (= res!750045 (not (is-ElementMatch!4572 (regex!3244 (rule!5134 (_1!10472 (get!5396 lt!630873)))))))))

(assert (=> b!1672435 (= e!1071643 e!1071644)))

(declare-fun b!1672436 () Bool)

(declare-fun res!750041 () Bool)

(declare-fun e!1071642 () Bool)

(assert (=> b!1672436 (=> (not res!750041) (not e!1071642))))

(assert (=> b!1672436 (= res!750041 (isEmpty!11487 (tail!2496 (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!630873)))))))))

(declare-fun b!1672437 () Bool)

(declare-fun res!750047 () Bool)

(declare-fun e!1071641 () Bool)

(assert (=> b!1672437 (=> res!750047 e!1071641)))

(assert (=> b!1672437 (= res!750047 (not (isEmpty!11487 (tail!2496 (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!630873))))))))))

(declare-fun d!506125 () Bool)

(assert (=> d!506125 e!1071645))

(declare-fun c!272223 () Bool)

(assert (=> d!506125 (= c!272223 (is-EmptyExpr!4572 (regex!3244 (rule!5134 (_1!10472 (get!5396 lt!630873))))))))

(assert (=> d!506125 (= lt!632080 e!1071647)))

(declare-fun c!272224 () Bool)

(assert (=> d!506125 (= c!272224 (isEmpty!11487 (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!630873))))))))

(assert (=> d!506125 (validRegex!1833 (regex!3244 (rule!5134 (_1!10472 (get!5396 lt!630873)))))))

(assert (=> d!506125 (= (matchR!2063 (regex!3244 (rule!5134 (_1!10472 (get!5396 lt!630873)))) (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!630873))))) lt!632080)))

(declare-fun b!1672438 () Bool)

(declare-fun res!750046 () Bool)

(assert (=> b!1672438 (=> (not res!750046) (not e!1071642))))

(assert (=> b!1672438 (= res!750046 (not call!106686))))

(declare-fun b!1672439 () Bool)

(assert (=> b!1672439 (= e!1071642 (= (head!3736 (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!630873))))) (c!271872 (regex!3244 (rule!5134 (_1!10472 (get!5396 lt!630873)))))))))

(declare-fun b!1672440 () Bool)

(declare-fun e!1071646 () Bool)

(assert (=> b!1672440 (= e!1071646 e!1071641)))

(declare-fun res!750042 () Bool)

(assert (=> b!1672440 (=> res!750042 e!1071641)))

(assert (=> b!1672440 (= res!750042 call!106686)))

(declare-fun bm!106681 () Bool)

(assert (=> bm!106681 (= call!106686 (isEmpty!11487 (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!630873))))))))

(declare-fun b!1672441 () Bool)

(assert (=> b!1672441 (= e!1071644 e!1071646)))

(declare-fun res!750043 () Bool)

(assert (=> b!1672441 (=> (not res!750043) (not e!1071646))))

(assert (=> b!1672441 (= res!750043 (not lt!632080))))

(declare-fun b!1672442 () Bool)

(assert (=> b!1672442 (= e!1071641 (not (= (head!3736 (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!630873))))) (c!271872 (regex!3244 (rule!5134 (_1!10472 (get!5396 lt!630873))))))))))

(declare-fun b!1672443 () Bool)

(assert (=> b!1672443 (= e!1071647 (nullable!1362 (regex!3244 (rule!5134 (_1!10472 (get!5396 lt!630873))))))))

(declare-fun b!1672444 () Bool)

(assert (=> b!1672444 (= e!1071645 e!1071643)))

(declare-fun c!272225 () Bool)

(assert (=> b!1672444 (= c!272225 (is-EmptyLang!4572 (regex!3244 (rule!5134 (_1!10472 (get!5396 lt!630873))))))))

(declare-fun b!1672445 () Bool)

(declare-fun res!750044 () Bool)

(assert (=> b!1672445 (=> res!750044 e!1071644)))

(assert (=> b!1672445 (= res!750044 e!1071642)))

(declare-fun res!750048 () Bool)

(assert (=> b!1672445 (=> (not res!750048) (not e!1071642))))

(assert (=> b!1672445 (= res!750048 lt!632080)))

(assert (= (and d!506125 c!272224) b!1672443))

(assert (= (and d!506125 (not c!272224)) b!1672434))

(assert (= (and d!506125 c!272223) b!1672432))

(assert (= (and d!506125 (not c!272223)) b!1672444))

(assert (= (and b!1672444 c!272225) b!1672433))

(assert (= (and b!1672444 (not c!272225)) b!1672435))

(assert (= (and b!1672435 (not res!750045)) b!1672445))

(assert (= (and b!1672445 res!750048) b!1672438))

(assert (= (and b!1672438 res!750046) b!1672436))

(assert (= (and b!1672436 res!750041) b!1672439))

(assert (= (and b!1672445 (not res!750044)) b!1672441))

(assert (= (and b!1672441 res!750043) b!1672440))

(assert (= (and b!1672440 (not res!750042)) b!1672437))

(assert (= (and b!1672437 (not res!750047)) b!1672442))

(assert (= (or b!1672432 b!1672438 b!1672440) bm!106681))

(assert (=> b!1672439 m!2037839))

(declare-fun m!2040609 () Bool)

(assert (=> b!1672439 m!2040609))

(declare-fun m!2040611 () Bool)

(assert (=> b!1672443 m!2040611))

(assert (=> b!1672436 m!2037839))

(declare-fun m!2040613 () Bool)

(assert (=> b!1672436 m!2040613))

(assert (=> b!1672436 m!2040613))

(declare-fun m!2040615 () Bool)

(assert (=> b!1672436 m!2040615))

(assert (=> d!506125 m!2037839))

(declare-fun m!2040617 () Bool)

(assert (=> d!506125 m!2040617))

(declare-fun m!2040619 () Bool)

(assert (=> d!506125 m!2040619))

(assert (=> b!1672442 m!2037839))

(assert (=> b!1672442 m!2040609))

(assert (=> bm!106681 m!2037839))

(assert (=> bm!106681 m!2040617))

(assert (=> b!1672434 m!2037839))

(assert (=> b!1672434 m!2040609))

(assert (=> b!1672434 m!2040609))

(declare-fun m!2040621 () Bool)

(assert (=> b!1672434 m!2040621))

(assert (=> b!1672434 m!2037839))

(assert (=> b!1672434 m!2040613))

(assert (=> b!1672434 m!2040621))

(assert (=> b!1672434 m!2040613))

(declare-fun m!2040623 () Bool)

(assert (=> b!1672434 m!2040623))

(assert (=> b!1672437 m!2037839))

(assert (=> b!1672437 m!2040613))

(assert (=> b!1672437 m!2040613))

(assert (=> b!1672437 m!2040615))

(assert (=> b!1671192 d!506125))

(assert (=> b!1671192 d!505593))

(assert (=> b!1671192 d!505589))

(assert (=> b!1671192 d!505591))

(declare-fun d!506127 () Bool)

(declare-fun e!1071650 () Bool)

(assert (=> d!506127 e!1071650))

(declare-fun res!750051 () Bool)

(assert (=> d!506127 (=> (not res!750051) (not e!1071650))))

(declare-fun lt!632083 () BalanceConc!12216)

(assert (=> d!506127 (= res!750051 (= (list!7381 lt!632083) lt!630482))))

(declare-fun fromList!413 (List!18488) Conc!6136)

(assert (=> d!506127 (= lt!632083 (BalanceConc!12217 (fromList!413 lt!630482)))))

(assert (=> d!506127 (= (fromListB!1012 lt!630482) lt!632083)))

(declare-fun b!1672448 () Bool)

(assert (=> b!1672448 (= e!1071650 (isBalanced!1911 (fromList!413 lt!630482)))))

(assert (= (and d!506127 res!750051) b!1672448))

(declare-fun m!2040625 () Bool)

(assert (=> d!506127 m!2040625))

(declare-fun m!2040627 () Bool)

(assert (=> d!506127 m!2040627))

(assert (=> b!1672448 m!2040627))

(assert (=> b!1672448 m!2040627))

(declare-fun m!2040629 () Bool)

(assert (=> b!1672448 m!2040629))

(assert (=> d!505383 d!506127))

(declare-fun b!1672461 () Bool)

(declare-fun res!750069 () Bool)

(declare-fun e!1071656 () Bool)

(assert (=> b!1672461 (=> (not res!750069) (not e!1071656))))

(assert (=> b!1672461 (= res!750069 (<= (- (height!972 (left!14732 (++!5027 (c!271871 lt!630500) (c!271871 lt!630486)))) (height!972 (right!15062 (++!5027 (c!271871 lt!630500) (c!271871 lt!630486))))) 1))))

(declare-fun d!506129 () Bool)

(declare-fun res!750064 () Bool)

(declare-fun e!1071655 () Bool)

(assert (=> d!506129 (=> res!750064 e!1071655)))

(assert (=> d!506129 (= res!750064 (not (is-Node!6136 (++!5027 (c!271871 lt!630500) (c!271871 lt!630486)))))))

(assert (=> d!506129 (= (isBalanced!1911 (++!5027 (c!271871 lt!630500) (c!271871 lt!630486))) e!1071655)))

(declare-fun b!1672462 () Bool)

(declare-fun res!750068 () Bool)

(assert (=> b!1672462 (=> (not res!750068) (not e!1071656))))

(assert (=> b!1672462 (= res!750068 (not (isEmpty!11492 (left!14732 (++!5027 (c!271871 lt!630500) (c!271871 lt!630486))))))))

(declare-fun b!1672463 () Bool)

(declare-fun res!750065 () Bool)

(assert (=> b!1672463 (=> (not res!750065) (not e!1071656))))

(assert (=> b!1672463 (= res!750065 (isBalanced!1911 (right!15062 (++!5027 (c!271871 lt!630500) (c!271871 lt!630486)))))))

(declare-fun b!1672464 () Bool)

(assert (=> b!1672464 (= e!1071656 (not (isEmpty!11492 (right!15062 (++!5027 (c!271871 lt!630500) (c!271871 lt!630486))))))))

(declare-fun b!1672465 () Bool)

(declare-fun res!750067 () Bool)

(assert (=> b!1672465 (=> (not res!750067) (not e!1071656))))

(assert (=> b!1672465 (= res!750067 (isBalanced!1911 (left!14732 (++!5027 (c!271871 lt!630500) (c!271871 lt!630486)))))))

(declare-fun b!1672466 () Bool)

(assert (=> b!1672466 (= e!1071655 e!1071656)))

(declare-fun res!750066 () Bool)

(assert (=> b!1672466 (=> (not res!750066) (not e!1071656))))

(assert (=> b!1672466 (= res!750066 (<= (- 1) (- (height!972 (left!14732 (++!5027 (c!271871 lt!630500) (c!271871 lt!630486)))) (height!972 (right!15062 (++!5027 (c!271871 lt!630500) (c!271871 lt!630486)))))))))

(assert (= (and d!506129 (not res!750064)) b!1672466))

(assert (= (and b!1672466 res!750066) b!1672461))

(assert (= (and b!1672461 res!750069) b!1672465))

(assert (= (and b!1672465 res!750067) b!1672463))

(assert (= (and b!1672463 res!750065) b!1672462))

(assert (= (and b!1672462 res!750068) b!1672464))

(declare-fun m!2040631 () Bool)

(assert (=> b!1672465 m!2040631))

(declare-fun m!2040633 () Bool)

(assert (=> b!1672461 m!2040633))

(declare-fun m!2040635 () Bool)

(assert (=> b!1672461 m!2040635))

(assert (=> b!1672466 m!2040633))

(assert (=> b!1672466 m!2040635))

(declare-fun m!2040637 () Bool)

(assert (=> b!1672464 m!2040637))

(declare-fun m!2040639 () Bool)

(assert (=> b!1672463 m!2040639))

(declare-fun m!2040641 () Bool)

(assert (=> b!1672462 m!2040641))

(assert (=> b!1670969 d!506129))

(assert (=> b!1670969 d!505827))

(declare-fun d!506131 () Bool)

(assert (=> d!506131 (= (head!3736 lt!630482) (h!23819 lt!630482))))

(assert (=> b!1671299 d!506131))

(declare-fun d!506133 () Bool)

(assert (=> d!506133 (= (head!3736 lt!630484) (h!23819 lt!630484))))

(assert (=> b!1671299 d!506133))

(declare-fun d!506135 () Bool)

(declare-fun res!750074 () Bool)

(declare-fun e!1071661 () Bool)

(assert (=> d!506135 (=> res!750074 e!1071661)))

(assert (=> d!506135 (= res!750074 (is-Nil!18419 rules!1846))))

(assert (=> d!506135 (= (noDuplicateTag!1197 thiss!17113 rules!1846 Nil!18425) e!1071661)))

(declare-fun b!1672471 () Bool)

(declare-fun e!1071662 () Bool)

(assert (=> b!1672471 (= e!1071661 e!1071662)))

(declare-fun res!750075 () Bool)

(assert (=> b!1672471 (=> (not res!750075) (not e!1071662))))

(declare-fun contains!3225 (List!18495 String!21004) Bool)

(assert (=> b!1672471 (= res!750075 (not (contains!3225 Nil!18425 (tag!3528 (h!23820 rules!1846)))))))

(declare-fun b!1672472 () Bool)

(assert (=> b!1672472 (= e!1071662 (noDuplicateTag!1197 thiss!17113 (t!152640 rules!1846) (Cons!18425 (tag!3528 (h!23820 rules!1846)) Nil!18425)))))

(assert (= (and d!506135 (not res!750074)) b!1672471))

(assert (= (and b!1672471 res!750075) b!1672472))

(declare-fun m!2040643 () Bool)

(assert (=> b!1672471 m!2040643))

(declare-fun m!2040645 () Bool)

(assert (=> b!1672472 m!2040645))

(assert (=> b!1670957 d!506135))

(declare-fun b!1672473 () Bool)

(declare-fun res!750081 () Bool)

(declare-fun e!1071664 () Bool)

(assert (=> b!1672473 (=> (not res!750081) (not e!1071664))))

(assert (=> b!1672473 (= res!750081 (<= (- (height!972 (left!14732 (c!271871 lt!630593))) (height!972 (right!15062 (c!271871 lt!630593)))) 1))))

(declare-fun d!506137 () Bool)

(declare-fun res!750076 () Bool)

(declare-fun e!1071663 () Bool)

(assert (=> d!506137 (=> res!750076 e!1071663)))

(assert (=> d!506137 (= res!750076 (not (is-Node!6136 (c!271871 lt!630593))))))

(assert (=> d!506137 (= (isBalanced!1911 (c!271871 lt!630593)) e!1071663)))

(declare-fun b!1672474 () Bool)

(declare-fun res!750080 () Bool)

(assert (=> b!1672474 (=> (not res!750080) (not e!1071664))))

(assert (=> b!1672474 (= res!750080 (not (isEmpty!11492 (left!14732 (c!271871 lt!630593)))))))

(declare-fun b!1672475 () Bool)

(declare-fun res!750077 () Bool)

(assert (=> b!1672475 (=> (not res!750077) (not e!1071664))))

(assert (=> b!1672475 (= res!750077 (isBalanced!1911 (right!15062 (c!271871 lt!630593))))))

(declare-fun b!1672476 () Bool)

(assert (=> b!1672476 (= e!1071664 (not (isEmpty!11492 (right!15062 (c!271871 lt!630593)))))))

(declare-fun b!1672477 () Bool)

(declare-fun res!750079 () Bool)

(assert (=> b!1672477 (=> (not res!750079) (not e!1071664))))

(assert (=> b!1672477 (= res!750079 (isBalanced!1911 (left!14732 (c!271871 lt!630593))))))

(declare-fun b!1672478 () Bool)

(assert (=> b!1672478 (= e!1071663 e!1071664)))

(declare-fun res!750078 () Bool)

(assert (=> b!1672478 (=> (not res!750078) (not e!1071664))))

(assert (=> b!1672478 (= res!750078 (<= (- 1) (- (height!972 (left!14732 (c!271871 lt!630593))) (height!972 (right!15062 (c!271871 lt!630593))))))))

(assert (= (and d!506137 (not res!750076)) b!1672478))

(assert (= (and b!1672478 res!750078) b!1672473))

(assert (= (and b!1672473 res!750081) b!1672477))

(assert (= (and b!1672477 res!750079) b!1672475))

(assert (= (and b!1672475 res!750077) b!1672474))

(assert (= (and b!1672474 res!750080) b!1672476))

(declare-fun m!2040647 () Bool)

(assert (=> b!1672477 m!2040647))

(declare-fun m!2040649 () Bool)

(assert (=> b!1672473 m!2040649))

(declare-fun m!2040651 () Bool)

(assert (=> b!1672473 m!2040651))

(assert (=> b!1672478 m!2040649))

(assert (=> b!1672478 m!2040651))

(declare-fun m!2040653 () Bool)

(assert (=> b!1672476 m!2040653))

(declare-fun m!2040655 () Bool)

(assert (=> b!1672475 m!2040655))

(declare-fun m!2040657 () Bool)

(assert (=> b!1672474 m!2040657))

(assert (=> b!1670960 d!506137))

(declare-fun d!506139 () Bool)

(declare-fun lt!632084 () Int)

(assert (=> d!506139 (= lt!632084 (size!14662 (list!7382 (_1!10473 lt!630590))))))

(assert (=> d!506139 (= lt!632084 (size!14664 (c!271873 (_1!10473 lt!630590))))))

(assert (=> d!506139 (= (size!14655 (_1!10473 lt!630590)) lt!632084)))

(declare-fun bs!398240 () Bool)

(assert (= bs!398240 d!506139))

(assert (=> bs!398240 m!2037289))

(assert (=> bs!398240 m!2037289))

(declare-fun m!2040659 () Bool)

(assert (=> bs!398240 m!2040659))

(declare-fun m!2040661 () Bool)

(assert (=> bs!398240 m!2040661))

(assert (=> d!505375 d!506139))

(declare-fun lt!632095 () Option!3543)

(declare-fun lt!632088 () tuple2!18142)

(declare-fun b!1672479 () Bool)

(assert (=> b!1672479 (= lt!632088 (lexRec!384 thiss!17113 rules!1846 (_2!10478 (v!24825 lt!632095))))))

(declare-fun e!1071668 () tuple2!18142)

(assert (=> b!1672479 (= e!1071668 (tuple2!18143 (prepend!832 (_1!10473 lt!632088) (_1!10478 (v!24825 lt!632095))) (_2!10473 lt!632088)))))

(declare-fun b!1672480 () Bool)

(declare-fun e!1071667 () tuple2!18142)

(assert (=> b!1672480 (= e!1071667 (tuple2!18143 (BalanceConc!12219 Empty!6137) (seqFromList!2225 lt!630482)))))

(declare-fun e!1071665 () Bool)

(declare-fun b!1672481 () Bool)

(declare-fun lt!632100 () tuple2!18142)

(assert (=> b!1672481 (= e!1071665 (= (list!7381 (_2!10473 lt!632100)) (list!7381 (_2!10473 (lexRec!384 thiss!17113 rules!1846 (seqFromList!2225 lt!630482))))))))

(declare-fun b!1672482 () Bool)

(declare-fun lt!632103 () Option!3543)

(declare-fun lt!632096 () tuple2!18142)

(assert (=> b!1672482 (= lt!632096 (lexRec!384 thiss!17113 rules!1846 (_2!10478 (v!24825 lt!632103))))))

(declare-fun e!1071666 () tuple2!18142)

(assert (=> b!1672482 (= e!1071666 (tuple2!18143 (prepend!832 (_1!10473 lt!632096) (_1!10478 (v!24825 lt!632103))) (_2!10473 lt!632096)))))

(declare-fun b!1672483 () Bool)

(declare-fun lt!632097 () BalanceConc!12216)

(declare-fun lt!632108 () Option!3543)

(assert (=> b!1672483 (= e!1071667 (lexTailRecV2!621 thiss!17113 rules!1846 (seqFromList!2225 lt!630482) lt!632097 (_2!10478 (v!24825 lt!632108)) (append!571 (BalanceConc!12219 Empty!6137) (_1!10478 (v!24825 lt!632108)))))))

(declare-fun lt!632092 () tuple2!18142)

(assert (=> b!1672483 (= lt!632092 (lexRec!384 thiss!17113 rules!1846 (_2!10478 (v!24825 lt!632108))))))

(declare-fun lt!632115 () List!18488)

(assert (=> b!1672483 (= lt!632115 (list!7381 (BalanceConc!12217 Empty!6136)))))

(declare-fun lt!632104 () List!18488)

(assert (=> b!1672483 (= lt!632104 (list!7381 (charsOf!1893 (_1!10478 (v!24825 lt!632108)))))))

(declare-fun lt!632093 () List!18488)

(assert (=> b!1672483 (= lt!632093 (list!7381 (_2!10478 (v!24825 lt!632108))))))

(declare-fun lt!632091 () Unit!31326)

(assert (=> b!1672483 (= lt!632091 (lemmaConcatAssociativity!1044 lt!632115 lt!632104 lt!632093))))

(assert (=> b!1672483 (= (++!5024 (++!5024 lt!632115 lt!632104) lt!632093) (++!5024 lt!632115 (++!5024 lt!632104 lt!632093)))))

(declare-fun lt!632118 () Unit!31326)

(assert (=> b!1672483 (= lt!632118 lt!632091)))

(assert (=> b!1672483 (= lt!632095 (maxPrefixZipperSequence!746 thiss!17113 rules!1846 (seqFromList!2225 lt!630482)))))

(declare-fun c!272229 () Bool)

(assert (=> b!1672483 (= c!272229 (is-Some!3542 lt!632095))))

(assert (=> b!1672483 (= (lexRec!384 thiss!17113 rules!1846 (seqFromList!2225 lt!630482)) e!1071668)))

(declare-fun lt!632085 () Unit!31326)

(declare-fun Unit!31432 () Unit!31326)

(assert (=> b!1672483 (= lt!632085 Unit!31432)))

(declare-fun lt!632112 () List!18490)

(assert (=> b!1672483 (= lt!632112 (list!7382 (BalanceConc!12219 Empty!6137)))))

(declare-fun lt!632110 () List!18490)

(assert (=> b!1672483 (= lt!632110 (Cons!18420 (_1!10478 (v!24825 lt!632108)) Nil!18420))))

(declare-fun lt!632101 () List!18490)

(assert (=> b!1672483 (= lt!632101 (list!7382 (_1!10473 lt!632092)))))

(declare-fun lt!632090 () Unit!31326)

(assert (=> b!1672483 (= lt!632090 (lemmaConcatAssociativity!1045 lt!632112 lt!632110 lt!632101))))

(assert (=> b!1672483 (= (++!5029 (++!5029 lt!632112 lt!632110) lt!632101) (++!5029 lt!632112 (++!5029 lt!632110 lt!632101)))))

(declare-fun lt!632089 () Unit!31326)

(assert (=> b!1672483 (= lt!632089 lt!632090)))

(declare-fun lt!632116 () List!18488)

(assert (=> b!1672483 (= lt!632116 (++!5024 (list!7381 (BalanceConc!12217 Empty!6136)) (list!7381 (charsOf!1893 (_1!10478 (v!24825 lt!632108))))))))

(declare-fun lt!632109 () List!18488)

(assert (=> b!1672483 (= lt!632109 (list!7381 (_2!10478 (v!24825 lt!632108))))))

(declare-fun lt!632107 () List!18490)

(assert (=> b!1672483 (= lt!632107 (list!7382 (append!571 (BalanceConc!12219 Empty!6137) (_1!10478 (v!24825 lt!632108)))))))

(declare-fun lt!632098 () Unit!31326)

(assert (=> b!1672483 (= lt!632098 (lemmaLexThenLexPrefix!272 thiss!17113 rules!1846 lt!632116 lt!632109 lt!632107 (list!7382 (_1!10473 lt!632092)) (list!7381 (_2!10473 lt!632092))))))

(assert (=> b!1672483 (= (lexList!898 thiss!17113 rules!1846 lt!632116) (tuple2!18149 lt!632107 Nil!18418))))

(declare-fun lt!632102 () Unit!31326)

(assert (=> b!1672483 (= lt!632102 lt!632098)))

(declare-fun lt!632087 () BalanceConc!12216)

(assert (=> b!1672483 (= lt!632087 (++!5023 (BalanceConc!12217 Empty!6136) (charsOf!1893 (_1!10478 (v!24825 lt!632108)))))))

(assert (=> b!1672483 (= lt!632103 (maxPrefixZipperSequence!746 thiss!17113 rules!1846 lt!632087))))

(declare-fun c!272227 () Bool)

(assert (=> b!1672483 (= c!272227 (is-Some!3542 lt!632103))))

(assert (=> b!1672483 (= (lexRec!384 thiss!17113 rules!1846 (++!5023 (BalanceConc!12217 Empty!6136) (charsOf!1893 (_1!10478 (v!24825 lt!632108))))) e!1071666)))

(declare-fun lt!632086 () Unit!31326)

(declare-fun Unit!31433 () Unit!31326)

(assert (=> b!1672483 (= lt!632086 Unit!31433)))

(assert (=> b!1672483 (= lt!632097 (++!5023 (BalanceConc!12217 Empty!6136) (charsOf!1893 (_1!10478 (v!24825 lt!632108)))))))

(declare-fun lt!632094 () List!18488)

(assert (=> b!1672483 (= lt!632094 (list!7381 lt!632097))))

(declare-fun lt!632117 () List!18488)

(assert (=> b!1672483 (= lt!632117 (list!7381 (_2!10478 (v!24825 lt!632108))))))

(declare-fun lt!632099 () Unit!31326)

(assert (=> b!1672483 (= lt!632099 (lemmaConcatTwoListThenFSndIsSuffix!331 lt!632094 lt!632117))))

(assert (=> b!1672483 (isSuffix!430 lt!632117 (++!5024 lt!632094 lt!632117))))

(declare-fun lt!632114 () Unit!31326)

(assert (=> b!1672483 (= lt!632114 lt!632099)))

(declare-fun d!506141 () Bool)

(assert (=> d!506141 e!1071665))

(declare-fun res!750082 () Bool)

(assert (=> d!506141 (=> (not res!750082) (not e!1071665))))

(assert (=> d!506141 (= res!750082 (= (list!7382 (_1!10473 lt!632100)) (list!7382 (_1!10473 (lexRec!384 thiss!17113 rules!1846 (seqFromList!2225 lt!630482))))))))

(assert (=> d!506141 (= lt!632100 e!1071667)))

(declare-fun c!272228 () Bool)

(assert (=> d!506141 (= c!272228 (is-Some!3542 lt!632108))))

(assert (=> d!506141 (= lt!632108 (maxPrefixZipperSequenceV2!279 thiss!17113 rules!1846 (seqFromList!2225 lt!630482) (seqFromList!2225 lt!630482)))))

(declare-fun lt!632111 () Unit!31326)

(declare-fun lt!632113 () Unit!31326)

(assert (=> d!506141 (= lt!632111 lt!632113)))

(declare-fun lt!632106 () List!18488)

(declare-fun lt!632105 () List!18488)

(assert (=> d!506141 (isSuffix!430 lt!632106 (++!5024 lt!632105 lt!632106))))

(assert (=> d!506141 (= lt!632113 (lemmaConcatTwoListThenFSndIsSuffix!331 lt!632105 lt!632106))))

(assert (=> d!506141 (= lt!632106 (list!7381 (seqFromList!2225 lt!630482)))))

(assert (=> d!506141 (= lt!632105 (list!7381 (BalanceConc!12217 Empty!6136)))))

(assert (=> d!506141 (= (lexTailRecV2!621 thiss!17113 rules!1846 (seqFromList!2225 lt!630482) (BalanceConc!12217 Empty!6136) (seqFromList!2225 lt!630482) (BalanceConc!12219 Empty!6137)) lt!632100)))

(declare-fun b!1672484 () Bool)

(assert (=> b!1672484 (= e!1071666 (tuple2!18143 (BalanceConc!12219 Empty!6137) lt!632087))))

(declare-fun b!1672485 () Bool)

(assert (=> b!1672485 (= e!1071668 (tuple2!18143 (BalanceConc!12219 Empty!6137) (seqFromList!2225 lt!630482)))))

(assert (= (and d!506141 c!272228) b!1672483))

(assert (= (and d!506141 (not c!272228)) b!1672480))

(assert (= (and b!1672483 c!272229) b!1672479))

(assert (= (and b!1672483 (not c!272229)) b!1672485))

(assert (= (and b!1672483 c!272227) b!1672482))

(assert (= (and b!1672483 (not c!272227)) b!1672484))

(assert (= (and d!506141 res!750082) b!1672481))

(declare-fun m!2040663 () Bool)

(assert (=> b!1672481 m!2040663))

(assert (=> b!1672481 m!2037051))

(declare-fun m!2040665 () Bool)

(assert (=> b!1672481 m!2040665))

(declare-fun m!2040667 () Bool)

(assert (=> b!1672481 m!2040667))

(declare-fun m!2040669 () Bool)

(assert (=> b!1672482 m!2040669))

(declare-fun m!2040671 () Bool)

(assert (=> b!1672482 m!2040671))

(declare-fun m!2040673 () Bool)

(assert (=> d!506141 m!2040673))

(declare-fun m!2040675 () Bool)

(assert (=> d!506141 m!2040675))

(assert (=> d!506141 m!2037051))

(assert (=> d!506141 m!2040665))

(assert (=> d!506141 m!2037051))

(assert (=> d!506141 m!2037051))

(declare-fun m!2040677 () Bool)

(assert (=> d!506141 m!2040677))

(declare-fun m!2040679 () Bool)

(assert (=> d!506141 m!2040679))

(assert (=> d!506141 m!2037867))

(declare-fun m!2040681 () Bool)

(assert (=> d!506141 m!2040681))

(assert (=> d!506141 m!2040673))

(declare-fun m!2040683 () Bool)

(assert (=> d!506141 m!2040683))

(assert (=> d!506141 m!2037051))

(assert (=> d!506141 m!2037291))

(declare-fun m!2040685 () Bool)

(assert (=> b!1672483 m!2040685))

(declare-fun m!2040687 () Bool)

(assert (=> b!1672483 m!2040687))

(declare-fun m!2040689 () Bool)

(assert (=> b!1672483 m!2040689))

(declare-fun m!2040691 () Bool)

(assert (=> b!1672483 m!2040691))

(declare-fun m!2040693 () Bool)

(assert (=> b!1672483 m!2040693))

(declare-fun m!2040695 () Bool)

(assert (=> b!1672483 m!2040695))

(assert (=> b!1672483 m!2037051))

(declare-fun m!2040697 () Bool)

(assert (=> b!1672483 m!2040697))

(assert (=> b!1672483 m!2040693))

(declare-fun m!2040699 () Bool)

(assert (=> b!1672483 m!2040699))

(declare-fun m!2040701 () Bool)

(assert (=> b!1672483 m!2040701))

(declare-fun m!2040703 () Bool)

(assert (=> b!1672483 m!2040703))

(assert (=> b!1672483 m!2037051))

(assert (=> b!1672483 m!2040665))

(assert (=> b!1672483 m!2037051))

(declare-fun m!2040705 () Bool)

(assert (=> b!1672483 m!2040705))

(declare-fun m!2040707 () Bool)

(assert (=> b!1672483 m!2040707))

(declare-fun m!2040709 () Bool)

(assert (=> b!1672483 m!2040709))

(assert (=> b!1672483 m!2037867))

(assert (=> b!1672483 m!2040689))

(declare-fun m!2040711 () Bool)

(assert (=> b!1672483 m!2040711))

(declare-fun m!2040713 () Bool)

(assert (=> b!1672483 m!2040713))

(declare-fun m!2040715 () Bool)

(assert (=> b!1672483 m!2040715))

(assert (=> b!1672483 m!2040705))

(assert (=> b!1672483 m!2040687))

(assert (=> b!1672483 m!2040713))

(declare-fun m!2040717 () Bool)

(assert (=> b!1672483 m!2040717))

(assert (=> b!1672483 m!2040691))

(declare-fun m!2040719 () Bool)

(assert (=> b!1672483 m!2040719))

(declare-fun m!2040721 () Bool)

(assert (=> b!1672483 m!2040721))

(declare-fun m!2040723 () Bool)

(assert (=> b!1672483 m!2040723))

(declare-fun m!2040725 () Bool)

(assert (=> b!1672483 m!2040725))

(assert (=> b!1672483 m!2040701))

(declare-fun m!2040727 () Bool)

(assert (=> b!1672483 m!2040727))

(declare-fun m!2040729 () Bool)

(assert (=> b!1672483 m!2040729))

(assert (=> b!1672483 m!2039809))

(assert (=> b!1672483 m!2040685))

(declare-fun m!2040731 () Bool)

(assert (=> b!1672483 m!2040731))

(assert (=> b!1672483 m!2040703))

(declare-fun m!2040733 () Bool)

(assert (=> b!1672483 m!2040733))

(declare-fun m!2040735 () Bool)

(assert (=> b!1672483 m!2040735))

(declare-fun m!2040737 () Bool)

(assert (=> b!1672483 m!2040737))

(declare-fun m!2040739 () Bool)

(assert (=> b!1672483 m!2040739))

(assert (=> b!1672483 m!2040721))

(assert (=> b!1672483 m!2040725))

(assert (=> b!1672483 m!2037867))

(assert (=> b!1672483 m!2040705))

(declare-fun m!2040741 () Bool)

(assert (=> b!1672483 m!2040741))

(declare-fun m!2040743 () Bool)

(assert (=> b!1672483 m!2040743))

(assert (=> b!1672483 m!2040687))

(declare-fun m!2040745 () Bool)

(assert (=> b!1672479 m!2040745))

(declare-fun m!2040747 () Bool)

(assert (=> b!1672479 m!2040747))

(assert (=> d!505375 d!506141))

(declare-fun d!506143 () Bool)

(declare-fun charsToBigInt!0 (List!18487 Int) Int)

(assert (=> d!506143 (= (inv!15 (value!102128 (h!23821 tokens!457))) (= (charsToBigInt!0 (text!23787 (value!102128 (h!23821 tokens!457))) 0) (value!102123 (value!102128 (h!23821 tokens!457)))))))

(declare-fun bs!398241 () Bool)

(assert (= bs!398241 d!506143))

(declare-fun m!2040749 () Bool)

(assert (=> bs!398241 m!2040749))

(assert (=> b!1671028 d!506143))

(declare-fun bs!398242 () Bool)

(declare-fun d!506145 () Bool)

(assert (= bs!398242 (and d!506145 d!505395)))

(declare-fun lambda!68070 () Int)

(assert (=> bs!398242 (= lambda!68070 lambda!68045)))

(declare-fun lambda!68071 () Int)

(declare-fun forall!4190 (List!18496 Int) Bool)

(assert (=> d!506145 (forall!4190 (map!3791 rules!1846 lambda!68070) lambda!68071)))

(declare-fun lt!632123 () Unit!31326)

(declare-fun e!1071671 () Unit!31326)

(assert (=> d!506145 (= lt!632123 e!1071671)))

(declare-fun c!272232 () Bool)

(assert (=> d!506145 (= c!272232 (is-Nil!18419 rules!1846))))

(assert (=> d!506145 (rulesValidInductive!1043 thiss!17113 rules!1846)))

(assert (=> d!506145 (= (lemma!289 rules!1846 thiss!17113 rules!1846) lt!632123)))

(declare-fun b!1672490 () Bool)

(declare-fun Unit!31434 () Unit!31326)

(assert (=> b!1672490 (= e!1071671 Unit!31434)))

(declare-fun b!1672491 () Bool)

(declare-fun Unit!31435 () Unit!31326)

(assert (=> b!1672491 (= e!1071671 Unit!31435)))

(declare-fun lt!632124 () Unit!31326)

(assert (=> b!1672491 (= lt!632124 (lemma!289 rules!1846 thiss!17113 (t!152640 rules!1846)))))

(assert (= (and d!506145 c!272232) b!1672490))

(assert (= (and d!506145 (not c!272232)) b!1672491))

(declare-fun m!2040751 () Bool)

(assert (=> d!506145 m!2040751))

(assert (=> d!506145 m!2040751))

(declare-fun m!2040753 () Bool)

(assert (=> d!506145 m!2040753))

(assert (=> d!506145 m!2037861))

(declare-fun m!2040755 () Bool)

(assert (=> b!1672491 m!2040755))

(assert (=> d!505395 d!506145))

(declare-fun bs!398243 () Bool)

(declare-fun d!506147 () Bool)

(assert (= bs!398243 (and d!506147 d!506145)))

(declare-fun lambda!68074 () Int)

(assert (=> bs!398243 (= lambda!68074 lambda!68071)))

(declare-fun b!1672512 () Bool)

(declare-fun e!1071685 () Bool)

(declare-fun lt!632127 () Regex!4572)

(declare-fun isUnion!78 (Regex!4572) Bool)

(assert (=> b!1672512 (= e!1071685 (isUnion!78 lt!632127))))

(declare-fun b!1672513 () Bool)

(declare-fun e!1071687 () Bool)

(declare-fun isEmpty!11495 (List!18496) Bool)

(assert (=> b!1672513 (= e!1071687 (isEmpty!11495 (t!152680 (map!3791 rules!1846 lambda!68045))))))

(declare-fun b!1672514 () Bool)

(declare-fun e!1071686 () Bool)

(assert (=> b!1672514 (= e!1071686 e!1071685)))

(declare-fun c!272243 () Bool)

(declare-fun tail!2499 (List!18496) List!18496)

(assert (=> b!1672514 (= c!272243 (isEmpty!11495 (tail!2499 (map!3791 rules!1846 lambda!68045))))))

(declare-fun b!1672515 () Bool)

(declare-fun head!3744 (List!18496) Regex!4572)

(assert (=> b!1672515 (= e!1071685 (= lt!632127 (head!3744 (map!3791 rules!1846 lambda!68045))))))

(declare-fun e!1071689 () Bool)

(assert (=> d!506147 e!1071689))

(declare-fun res!750088 () Bool)

(assert (=> d!506147 (=> (not res!750088) (not e!1071689))))

(assert (=> d!506147 (= res!750088 (validRegex!1833 lt!632127))))

(declare-fun e!1071688 () Regex!4572)

(assert (=> d!506147 (= lt!632127 e!1071688)))

(declare-fun c!272244 () Bool)

(assert (=> d!506147 (= c!272244 e!1071687)))

(declare-fun res!750087 () Bool)

(assert (=> d!506147 (=> (not res!750087) (not e!1071687))))

(assert (=> d!506147 (= res!750087 (is-Cons!18426 (map!3791 rules!1846 lambda!68045)))))

(assert (=> d!506147 (forall!4190 (map!3791 rules!1846 lambda!68045) lambda!68074)))

(assert (=> d!506147 (= (generalisedUnion!297 (map!3791 rules!1846 lambda!68045)) lt!632127)))

(declare-fun b!1672516 () Bool)

(declare-fun isEmptyLang!78 (Regex!4572) Bool)

(assert (=> b!1672516 (= e!1071686 (isEmptyLang!78 lt!632127))))

(declare-fun b!1672517 () Bool)

(declare-fun e!1071684 () Regex!4572)

(assert (=> b!1672517 (= e!1071688 e!1071684)))

(declare-fun c!272241 () Bool)

(assert (=> b!1672517 (= c!272241 (is-Cons!18426 (map!3791 rules!1846 lambda!68045)))))

(declare-fun b!1672518 () Bool)

(assert (=> b!1672518 (= e!1071684 (Union!4572 (h!23827 (map!3791 rules!1846 lambda!68045)) (generalisedUnion!297 (t!152680 (map!3791 rules!1846 lambda!68045)))))))

(declare-fun b!1672519 () Bool)

(assert (=> b!1672519 (= e!1071684 EmptyLang!4572)))

(declare-fun b!1672520 () Bool)

(assert (=> b!1672520 (= e!1071689 e!1071686)))

(declare-fun c!272242 () Bool)

(assert (=> b!1672520 (= c!272242 (isEmpty!11495 (map!3791 rules!1846 lambda!68045)))))

(declare-fun b!1672521 () Bool)

(assert (=> b!1672521 (= e!1071688 (h!23827 (map!3791 rules!1846 lambda!68045)))))

(assert (= (and d!506147 res!750087) b!1672513))

(assert (= (and d!506147 c!272244) b!1672521))

(assert (= (and d!506147 (not c!272244)) b!1672517))

(assert (= (and b!1672517 c!272241) b!1672518))

(assert (= (and b!1672517 (not c!272241)) b!1672519))

(assert (= (and d!506147 res!750088) b!1672520))

(assert (= (and b!1672520 c!272242) b!1672516))

(assert (= (and b!1672520 (not c!272242)) b!1672514))

(assert (= (and b!1672514 c!272243) b!1672515))

(assert (= (and b!1672514 (not c!272243)) b!1672512))

(assert (=> b!1672515 m!2037369))

(declare-fun m!2040757 () Bool)

(assert (=> b!1672515 m!2040757))

(declare-fun m!2040759 () Bool)

(assert (=> b!1672512 m!2040759))

(assert (=> b!1672514 m!2037369))

(declare-fun m!2040761 () Bool)

(assert (=> b!1672514 m!2040761))

(assert (=> b!1672514 m!2040761))

(declare-fun m!2040763 () Bool)

(assert (=> b!1672514 m!2040763))

(declare-fun m!2040765 () Bool)

(assert (=> b!1672513 m!2040765))

(declare-fun m!2040767 () Bool)

(assert (=> b!1672516 m!2040767))

(assert (=> b!1672520 m!2037369))

(declare-fun m!2040769 () Bool)

(assert (=> b!1672520 m!2040769))

(declare-fun m!2040771 () Bool)

(assert (=> d!506147 m!2040771))

(assert (=> d!506147 m!2037369))

(declare-fun m!2040773 () Bool)

(assert (=> d!506147 m!2040773))

(declare-fun m!2040775 () Bool)

(assert (=> b!1672518 m!2040775))

(assert (=> d!505395 d!506147))

(declare-fun d!506149 () Bool)

(declare-fun lt!632130 () List!18496)

(declare-fun size!14665 (List!18496) Int)

(declare-fun size!14666 (List!18489) Int)

(assert (=> d!506149 (= (size!14665 lt!632130) (size!14666 rules!1846))))

(declare-fun e!1071692 () List!18496)

(assert (=> d!506149 (= lt!632130 e!1071692)))

(declare-fun c!272247 () Bool)

(assert (=> d!506149 (= c!272247 (is-Nil!18419 rules!1846))))

(assert (=> d!506149 (= (map!3791 rules!1846 lambda!68045) lt!632130)))

(declare-fun b!1672526 () Bool)

(assert (=> b!1672526 (= e!1071692 Nil!18426)))

(declare-fun b!1672527 () Bool)

(declare-fun $colon$colon!395 (List!18496 Regex!4572) List!18496)

(declare-fun dynLambda!8325 (Int Rule!6288) Regex!4572)

(assert (=> b!1672527 (= e!1071692 ($colon$colon!395 (map!3791 (t!152640 rules!1846) lambda!68045) (dynLambda!8325 lambda!68045 (h!23820 rules!1846))))))

(assert (= (and d!506149 c!272247) b!1672526))

(assert (= (and d!506149 (not c!272247)) b!1672527))

(declare-fun b_lambda!52531 () Bool)

(assert (=> (not b_lambda!52531) (not b!1672527)))

(declare-fun m!2040777 () Bool)

(assert (=> d!506149 m!2040777))

(declare-fun m!2040779 () Bool)

(assert (=> d!506149 m!2040779))

(declare-fun m!2040781 () Bool)

(assert (=> b!1672527 m!2040781))

(declare-fun m!2040783 () Bool)

(assert (=> b!1672527 m!2040783))

(assert (=> b!1672527 m!2040781))

(assert (=> b!1672527 m!2040783))

(declare-fun m!2040785 () Bool)

(assert (=> b!1672527 m!2040785))

(assert (=> d!505395 d!506149))

(declare-fun d!506151 () Bool)

(assert (=> d!506151 (= (list!7381 lt!630596) (list!7385 (c!271871 lt!630596)))))

(declare-fun bs!398244 () Bool)

(assert (= bs!398244 d!506151))

(declare-fun m!2040787 () Bool)

(assert (=> bs!398244 m!2040787))

(assert (=> b!1670972 d!506151))

(declare-fun e!1071694 () Bool)

(declare-fun b!1672531 () Bool)

(declare-fun lt!632131 () List!18488)

(assert (=> b!1672531 (= e!1071694 (or (not (= (list!7381 lt!630486) Nil!18418)) (= lt!632131 (list!7381 lt!630500))))))

(declare-fun b!1672530 () Bool)

(declare-fun res!750089 () Bool)

(assert (=> b!1672530 (=> (not res!750089) (not e!1071694))))

(assert (=> b!1672530 (= res!750089 (= (size!14657 lt!632131) (+ (size!14657 (list!7381 lt!630500)) (size!14657 (list!7381 lt!630486)))))))

(declare-fun b!1672529 () Bool)

(declare-fun e!1071693 () List!18488)

(assert (=> b!1672529 (= e!1071693 (Cons!18418 (h!23819 (list!7381 lt!630500)) (++!5024 (t!152639 (list!7381 lt!630500)) (list!7381 lt!630486))))))

(declare-fun d!506153 () Bool)

(assert (=> d!506153 e!1071694))

(declare-fun res!750090 () Bool)

(assert (=> d!506153 (=> (not res!750090) (not e!1071694))))

(assert (=> d!506153 (= res!750090 (= (content!2576 lt!632131) (set.union (content!2576 (list!7381 lt!630500)) (content!2576 (list!7381 lt!630486)))))))

(assert (=> d!506153 (= lt!632131 e!1071693)))

(declare-fun c!272248 () Bool)

(assert (=> d!506153 (= c!272248 (is-Nil!18418 (list!7381 lt!630500)))))

(assert (=> d!506153 (= (++!5024 (list!7381 lt!630500) (list!7381 lt!630486)) lt!632131)))

(declare-fun b!1672528 () Bool)

(assert (=> b!1672528 (= e!1071693 (list!7381 lt!630486))))

(assert (= (and d!506153 c!272248) b!1672528))

(assert (= (and d!506153 (not c!272248)) b!1672529))

(assert (= (and d!506153 res!750090) b!1672530))

(assert (= (and b!1672530 res!750089) b!1672531))

(declare-fun m!2040789 () Bool)

(assert (=> b!1672530 m!2040789))

(assert (=> b!1672530 m!2037075))

(declare-fun m!2040791 () Bool)

(assert (=> b!1672530 m!2040791))

(assert (=> b!1672530 m!2037099))

(declare-fun m!2040793 () Bool)

(assert (=> b!1672530 m!2040793))

(assert (=> b!1672529 m!2037099))

(declare-fun m!2040795 () Bool)

(assert (=> b!1672529 m!2040795))

(declare-fun m!2040797 () Bool)

(assert (=> d!506153 m!2040797))

(assert (=> d!506153 m!2037075))

(declare-fun m!2040799 () Bool)

(assert (=> d!506153 m!2040799))

(assert (=> d!506153 m!2037099))

(declare-fun m!2040801 () Bool)

(assert (=> d!506153 m!2040801))

(assert (=> b!1670972 d!506153))

(assert (=> b!1670972 d!505407))

(assert (=> b!1670972 d!505541))

(assert (=> b!1671147 d!505365))

(declare-fun d!506155 () Bool)

(declare-fun lt!632174 () Bool)

(declare-fun content!2580 (List!18489) (Set Rule!6288))

(assert (=> d!506155 (= lt!632174 (set.member (rule!5134 (_1!10472 (get!5396 lt!630873))) (content!2580 rules!1846)))))

(declare-fun e!1071703 () Bool)

(assert (=> d!506155 (= lt!632174 e!1071703)))

(declare-fun res!750096 () Bool)

(assert (=> d!506155 (=> (not res!750096) (not e!1071703))))

(assert (=> d!506155 (= res!750096 (is-Cons!18419 rules!1846))))

(assert (=> d!506155 (= (contains!3221 rules!1846 (rule!5134 (_1!10472 (get!5396 lt!630873)))) lt!632174)))

(declare-fun b!1672544 () Bool)

(declare-fun e!1071704 () Bool)

(assert (=> b!1672544 (= e!1071703 e!1071704)))

(declare-fun res!750095 () Bool)

(assert (=> b!1672544 (=> res!750095 e!1071704)))

(assert (=> b!1672544 (= res!750095 (= (h!23820 rules!1846) (rule!5134 (_1!10472 (get!5396 lt!630873)))))))

(declare-fun b!1672545 () Bool)

(assert (=> b!1672545 (= e!1071704 (contains!3221 (t!152640 rules!1846) (rule!5134 (_1!10472 (get!5396 lt!630873)))))))

(assert (= (and d!506155 res!750096) b!1672544))

(assert (= (and b!1672544 (not res!750095)) b!1672545))

(declare-fun m!2040803 () Bool)

(assert (=> d!506155 m!2040803))

(declare-fun m!2040805 () Bool)

(assert (=> d!506155 m!2040805))

(declare-fun m!2040807 () Bool)

(assert (=> b!1672545 m!2040807))

(assert (=> b!1671195 d!506155))

(assert (=> b!1671195 d!505593))

(declare-fun d!506157 () Bool)

(declare-fun e!1071706 () Bool)

(assert (=> d!506157 e!1071706))

(declare-fun res!750097 () Bool)

(assert (=> d!506157 (=> (not res!750097) (not e!1071706))))

(declare-fun lt!632191 () BalanceConc!12218)

(assert (=> d!506157 (= res!750097 (= (list!7382 lt!632191) (t!152641 tokens!457)))))

(assert (=> d!506157 (= lt!632191 (BalanceConc!12219 (fromList!412 (t!152641 tokens!457))))))

(assert (=> d!506157 (= (fromListB!1013 (t!152641 tokens!457)) lt!632191)))

(declare-fun b!1672550 () Bool)

(assert (=> b!1672550 (= e!1071706 (isBalanced!1912 (fromList!412 (t!152641 tokens!457))))))

(assert (= (and d!506157 res!750097) b!1672550))

(declare-fun m!2040809 () Bool)

(assert (=> d!506157 m!2040809))

(declare-fun m!2040811 () Bool)

(assert (=> d!506157 m!2040811))

(assert (=> b!1672550 m!2040811))

(assert (=> b!1672550 m!2040811))

(declare-fun m!2040813 () Bool)

(assert (=> b!1672550 m!2040813))

(assert (=> d!505423 d!506157))

(declare-fun d!506159 () Bool)

(assert (=> d!506159 (= (list!7382 (_1!10473 lt!630644)) (list!7386 (c!271873 (_1!10473 lt!630644))))))

(declare-fun bs!398245 () Bool)

(assert (= bs!398245 d!506159))

(declare-fun m!2040815 () Bool)

(assert (=> bs!398245 m!2040815))

(assert (=> b!1671004 d!506159))

(assert (=> b!1671004 d!505899))

(assert (=> b!1671004 d!505403))

(declare-fun d!506161 () Bool)

(assert (=> d!506161 (= (isDefined!2892 lt!630873) (not (isEmpty!11485 lt!630873)))))

(declare-fun bs!398246 () Bool)

(assert (= bs!398246 d!506161))

(assert (=> bs!398246 m!2037855))

(assert (=> b!1671198 d!506161))

(declare-fun d!506163 () Bool)

(assert (=> d!506163 (= (list!7381 lt!630635) (list!7385 (c!271871 lt!630635)))))

(declare-fun bs!398247 () Bool)

(assert (= bs!398247 d!506163))

(declare-fun m!2040817 () Bool)

(assert (=> bs!398247 m!2040817))

(assert (=> d!505397 d!506163))

(declare-fun lt!632204 () Bool)

(declare-fun d!506165 () Bool)

(assert (=> d!506165 (= lt!632204 (isEmpty!11487 (list!7381 (_2!10473 (lex!1357 thiss!17113 rules!1846 (print!1404 thiss!17113 (seqFromList!2226 (t!152641 tokens!457))))))))))

(assert (=> d!506165 (= lt!632204 (isEmpty!11492 (c!271871 (_2!10473 (lex!1357 thiss!17113 rules!1846 (print!1404 thiss!17113 (seqFromList!2226 (t!152641 tokens!457))))))))))

(assert (=> d!506165 (= (isEmpty!11482 (_2!10473 (lex!1357 thiss!17113 rules!1846 (print!1404 thiss!17113 (seqFromList!2226 (t!152641 tokens!457)))))) lt!632204)))

(declare-fun bs!398248 () Bool)

(assert (= bs!398248 d!506165))

(declare-fun m!2040819 () Bool)

(assert (=> bs!398248 m!2040819))

(assert (=> bs!398248 m!2040819))

(declare-fun m!2040821 () Bool)

(assert (=> bs!398248 m!2040821))

(declare-fun m!2040823 () Bool)

(assert (=> bs!398248 m!2040823))

(assert (=> b!1671289 d!506165))

(assert (=> b!1671289 d!505641))

(assert (=> b!1671289 d!505643))

(assert (=> b!1671289 d!505423))

(declare-fun b!1672551 () Bool)

(declare-fun e!1071708 () Bool)

(declare-fun e!1071710 () Bool)

(assert (=> b!1672551 (= e!1071708 e!1071710)))

(declare-fun res!750101 () Bool)

(assert (=> b!1672551 (=> (not res!750101) (not e!1071710))))

(assert (=> b!1672551 (= res!750101 (not (is-Nil!18418 (++!5024 lt!630482 lt!630481))))))

(declare-fun d!506167 () Bool)

(declare-fun e!1071709 () Bool)

(assert (=> d!506167 e!1071709))

(declare-fun res!750100 () Bool)

(assert (=> d!506167 (=> res!750100 e!1071709)))

(declare-fun lt!632205 () Bool)

(assert (=> d!506167 (= res!750100 (not lt!632205))))

(assert (=> d!506167 (= lt!632205 e!1071708)))

(declare-fun res!750098 () Bool)

(assert (=> d!506167 (=> res!750098 e!1071708)))

(assert (=> d!506167 (= res!750098 (is-Nil!18418 lt!630482))))

(assert (=> d!506167 (= (isPrefix!1502 lt!630482 (++!5024 lt!630482 lt!630481)) lt!632205)))

(declare-fun b!1672554 () Bool)

(assert (=> b!1672554 (= e!1071709 (>= (size!14657 (++!5024 lt!630482 lt!630481)) (size!14657 lt!630482)))))

(declare-fun b!1672553 () Bool)

(assert (=> b!1672553 (= e!1071710 (isPrefix!1502 (tail!2496 lt!630482) (tail!2496 (++!5024 lt!630482 lt!630481))))))

(declare-fun b!1672552 () Bool)

(declare-fun res!750099 () Bool)

(assert (=> b!1672552 (=> (not res!750099) (not e!1071710))))

(assert (=> b!1672552 (= res!750099 (= (head!3736 lt!630482) (head!3736 (++!5024 lt!630482 lt!630481))))))

(assert (= (and d!506167 (not res!750098)) b!1672551))

(assert (= (and b!1672551 res!750101) b!1672552))

(assert (= (and b!1672552 res!750099) b!1672553))

(assert (= (and d!506167 (not res!750100)) b!1672554))

(assert (=> b!1672554 m!2037073))

(assert (=> b!1672554 m!2039285))

(assert (=> b!1672554 m!2037391))

(assert (=> b!1672553 m!2038125))

(assert (=> b!1672553 m!2037073))

(assert (=> b!1672553 m!2039355))

(assert (=> b!1672553 m!2038125))

(assert (=> b!1672553 m!2039355))

(declare-fun m!2040825 () Bool)

(assert (=> b!1672553 m!2040825))

(assert (=> b!1672552 m!2038131))

(assert (=> b!1672552 m!2037073))

(assert (=> b!1672552 m!2039361))

(assert (=> d!505565 d!506167))

(assert (=> d!505565 d!505401))

(declare-fun d!506169 () Bool)

(assert (=> d!506169 (isPrefix!1502 lt!630482 (++!5024 lt!630482 lt!630481))))

(assert (=> d!506169 true))

(declare-fun _$46!1130 () Unit!31326)

(assert (=> d!506169 (= (choose!10063 lt!630482 lt!630481) _$46!1130)))

(declare-fun bs!398249 () Bool)

(assert (= bs!398249 d!506169))

(assert (=> bs!398249 m!2037073))

(assert (=> bs!398249 m!2037073))

(assert (=> bs!398249 m!2038135))

(assert (=> d!505565 d!506169))

(assert (=> d!505369 d!505387))

(declare-fun lt!632215 () Bool)

(declare-fun d!506171 () Bool)

(assert (=> d!506171 (= lt!632215 (prefixMatch!485 (rulesRegex!626 thiss!17113 rules!1846) (list!7381 (++!5023 (charsOf!1893 (h!23821 tokens!457)) (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0))))))))

(assert (=> d!506171 (= lt!632215 (prefixMatchZipperSequence!678 (focus!224 (rulesRegex!626 thiss!17113 rules!1846)) (++!5023 (charsOf!1893 (h!23821 tokens!457)) (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0))) 0))))

(declare-fun lt!632210 () Unit!31326)

(declare-fun lt!632206 () Unit!31326)

(assert (=> d!506171 (= lt!632210 lt!632206)))

(declare-fun lt!632212 () List!18488)

(declare-fun lt!632208 () (Set Context!1836))

(assert (=> d!506171 (= (prefixMatch!485 (rulesRegex!626 thiss!17113 rules!1846) lt!632212) (prefixMatchZipper!203 lt!632208 lt!632212))))

(declare-fun lt!632214 () List!18497)

(assert (=> d!506171 (= lt!632206 (prefixMatchZipperRegexEquiv!203 lt!632208 lt!632214 (rulesRegex!626 thiss!17113 rules!1846) lt!632212))))

(assert (=> d!506171 (= lt!632212 (list!7381 (++!5023 (charsOf!1893 (h!23821 tokens!457)) (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0)))))))

(assert (=> d!506171 (= lt!632214 (toList!964 (focus!224 (rulesRegex!626 thiss!17113 rules!1846))))))

(assert (=> d!506171 (= lt!632208 (focus!224 (rulesRegex!626 thiss!17113 rules!1846)))))

(declare-fun lt!632207 () Unit!31326)

(declare-fun lt!632213 () Unit!31326)

(assert (=> d!506171 (= lt!632207 lt!632213)))

(declare-fun lt!632209 () (Set Context!1836))

(declare-fun lt!632211 () Int)

(assert (=> d!506171 (= (prefixMatchZipper!203 lt!632209 (dropList!721 (++!5023 (charsOf!1893 (h!23821 tokens!457)) (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0))) lt!632211)) (prefixMatchZipperSequence!678 lt!632209 (++!5023 (charsOf!1893 (h!23821 tokens!457)) (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0))) lt!632211))))

(assert (=> d!506171 (= lt!632213 (lemmaprefixMatchZipperSequenceEquivalent!203 lt!632209 (++!5023 (charsOf!1893 (h!23821 tokens!457)) (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0))) lt!632211))))

(assert (=> d!506171 (= lt!632211 0)))

(assert (=> d!506171 (= lt!632209 (focus!224 (rulesRegex!626 thiss!17113 rules!1846)))))

(assert (=> d!506171 (validRegex!1833 (rulesRegex!626 thiss!17113 rules!1846))))

(assert (=> d!506171 (= (prefixMatchZipperSequence!676 (rulesRegex!626 thiss!17113 rules!1846) (++!5023 (charsOf!1893 (h!23821 tokens!457)) (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0)))) lt!632215)))

(declare-fun bs!398250 () Bool)

(assert (= bs!398250 d!506171))

(declare-fun m!2040827 () Bool)

(assert (=> bs!398250 m!2040827))

(declare-fun m!2040829 () Bool)

(assert (=> bs!398250 m!2040829))

(declare-fun m!2040831 () Bool)

(assert (=> bs!398250 m!2040831))

(declare-fun m!2040833 () Bool)

(assert (=> bs!398250 m!2040833))

(assert (=> bs!398250 m!2037011))

(assert (=> bs!398250 m!2040831))

(assert (=> bs!398250 m!2037011))

(declare-fun m!2040835 () Bool)

(assert (=> bs!398250 m!2040835))

(assert (=> bs!398250 m!2037011))

(declare-fun m!2040837 () Bool)

(assert (=> bs!398250 m!2040837))

(assert (=> bs!398250 m!2037241))

(assert (=> bs!398250 m!2040827))

(assert (=> bs!398250 m!2037011))

(declare-fun m!2040839 () Bool)

(assert (=> bs!398250 m!2040839))

(declare-fun m!2040841 () Bool)

(assert (=> bs!398250 m!2040841))

(assert (=> bs!398250 m!2037241))

(declare-fun m!2040843 () Bool)

(assert (=> bs!398250 m!2040843))

(assert (=> bs!398250 m!2037011))

(declare-fun m!2040845 () Bool)

(assert (=> bs!398250 m!2040845))

(assert (=> bs!398250 m!2040831))

(assert (=> bs!398250 m!2037241))

(declare-fun m!2040847 () Bool)

(assert (=> bs!398250 m!2040847))

(assert (=> bs!398250 m!2037241))

(declare-fun m!2040849 () Bool)

(assert (=> bs!398250 m!2040849))

(declare-fun m!2040851 () Bool)

(assert (=> bs!398250 m!2040851))

(assert (=> bs!398250 m!2037241))

(assert (=> bs!398250 m!2040839))

(assert (=> d!505369 d!506171))

(declare-fun b!1672558 () Bool)

(declare-fun res!750106 () Bool)

(declare-fun e!1071713 () Bool)

(assert (=> b!1672558 (=> (not res!750106) (not e!1071713))))

(assert (=> b!1672558 (= res!750106 (<= (height!972 (++!5027 (c!271871 (charsOf!1893 (h!23821 tokens!457))) (c!271871 (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0))))) (+ (max!0 (height!972 (c!271871 (charsOf!1893 (h!23821 tokens!457)))) (height!972 (c!271871 (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0))))) 1)))))

(declare-fun b!1672557 () Bool)

(declare-fun res!750105 () Bool)

(assert (=> b!1672557 (=> (not res!750105) (not e!1071713))))

(assert (=> b!1672557 (= res!750105 (isBalanced!1911 (++!5027 (c!271871 (charsOf!1893 (h!23821 tokens!457))) (c!271871 (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0))))))))

(declare-fun b!1672559 () Bool)

(declare-fun res!750107 () Bool)

(assert (=> b!1672559 (=> (not res!750107) (not e!1071713))))

(assert (=> b!1672559 (= res!750107 (>= (height!972 (++!5027 (c!271871 (charsOf!1893 (h!23821 tokens!457))) (c!271871 (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0))))) (max!0 (height!972 (c!271871 (charsOf!1893 (h!23821 tokens!457)))) (height!972 (c!271871 (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0)))))))))

(declare-fun d!506173 () Bool)

(assert (=> d!506173 e!1071713))

(declare-fun res!750104 () Bool)

(assert (=> d!506173 (=> (not res!750104) (not e!1071713))))

(assert (=> d!506173 (= res!750104 (appendAssocInst!486 (c!271871 (charsOf!1893 (h!23821 tokens!457))) (c!271871 (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0)))))))

(declare-fun lt!632216 () BalanceConc!12216)

(assert (=> d!506173 (= lt!632216 (BalanceConc!12217 (++!5027 (c!271871 (charsOf!1893 (h!23821 tokens!457))) (c!271871 (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0))))))))

(assert (=> d!506173 (= (++!5023 (charsOf!1893 (h!23821 tokens!457)) (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0))) lt!632216)))

(declare-fun b!1672560 () Bool)

(assert (=> b!1672560 (= e!1071713 (= (list!7381 lt!632216) (++!5024 (list!7381 (charsOf!1893 (h!23821 tokens!457))) (list!7381 (singletonSeq!1757 (apply!4971 (charsOf!1893 (h!23821 (t!152641 tokens!457))) 0))))))))

(assert (= (and d!506173 res!750104) b!1672557))

(assert (= (and b!1672557 res!750105) b!1672558))

(assert (= (and b!1672558 res!750106) b!1672559))

(assert (= (and b!1672559 res!750107) b!1672560))

(declare-fun m!2040853 () Bool)

(assert (=> b!1672560 m!2040853))

(assert (=> b!1672560 m!2037079))

(declare-fun m!2040855 () Bool)

(assert (=> b!1672560 m!2040855))

(assert (=> b!1672560 m!2037021))

(declare-fun m!2040857 () Bool)

(assert (=> b!1672560 m!2040857))

(assert (=> b!1672560 m!2040855))

(assert (=> b!1672560 m!2040857))

(declare-fun m!2040859 () Bool)

(assert (=> b!1672560 m!2040859))

(declare-fun m!2040861 () Bool)

(assert (=> b!1672558 m!2040861))

(declare-fun m!2040863 () Bool)

(assert (=> b!1672558 m!2040863))

(declare-fun m!2040865 () Bool)

(assert (=> b!1672558 m!2040865))

(assert (=> b!1672558 m!2040863))

(declare-fun m!2040867 () Bool)

(assert (=> b!1672558 m!2040867))

(assert (=> b!1672558 m!2040867))

(assert (=> b!1672558 m!2040861))

(declare-fun m!2040869 () Bool)

(assert (=> b!1672558 m!2040869))

(declare-fun m!2040871 () Bool)

(assert (=> d!506173 m!2040871))

(assert (=> d!506173 m!2040863))

(assert (=> b!1672557 m!2040863))

(assert (=> b!1672557 m!2040863))

(declare-fun m!2040873 () Bool)

(assert (=> b!1672557 m!2040873))

(assert (=> b!1672559 m!2040861))

(assert (=> b!1672559 m!2040863))

(assert (=> b!1672559 m!2040865))

(assert (=> b!1672559 m!2040863))

(assert (=> b!1672559 m!2040867))

(assert (=> b!1672559 m!2040867))

(assert (=> b!1672559 m!2040861))

(assert (=> b!1672559 m!2040869))

(assert (=> d!505369 d!506173))

(assert (=> d!505369 d!505417))

(assert (=> d!505369 d!505393))

(assert (=> d!505369 d!505395))

(assert (=> d!505369 d!505397))

(declare-fun b!1672563 () Bool)

(declare-fun e!1071715 () List!18488)

(assert (=> b!1672563 (= e!1071715 (list!7390 (xs!8980 (c!271871 lt!630477))))))

(declare-fun b!1672562 () Bool)

(declare-fun e!1071714 () List!18488)

(assert (=> b!1672562 (= e!1071714 e!1071715)))

(declare-fun c!272256 () Bool)

(assert (=> b!1672562 (= c!272256 (is-Leaf!8979 (c!271871 lt!630477)))))

(declare-fun b!1672564 () Bool)

(assert (=> b!1672564 (= e!1071715 (++!5024 (list!7385 (left!14732 (c!271871 lt!630477))) (list!7385 (right!15062 (c!271871 lt!630477)))))))

(declare-fun b!1672561 () Bool)

(assert (=> b!1672561 (= e!1071714 Nil!18418)))

(declare-fun d!506175 () Bool)

(declare-fun c!272255 () Bool)

(assert (=> d!506175 (= c!272255 (is-Empty!6136 (c!271871 lt!630477)))))

(assert (=> d!506175 (= (list!7385 (c!271871 lt!630477)) e!1071714)))

(assert (= (and d!506175 c!272255) b!1672561))

(assert (= (and d!506175 (not c!272255)) b!1672562))

(assert (= (and b!1672562 c!272256) b!1672563))

(assert (= (and b!1672562 (not c!272256)) b!1672564))

(declare-fun m!2040875 () Bool)

(assert (=> b!1672563 m!2040875))

(declare-fun m!2040877 () Bool)

(assert (=> b!1672564 m!2040877))

(declare-fun m!2040879 () Bool)

(assert (=> b!1672564 m!2040879))

(assert (=> b!1672564 m!2040877))

(assert (=> b!1672564 m!2040879))

(declare-fun m!2040881 () Bool)

(assert (=> b!1672564 m!2040881))

(assert (=> d!505419 d!506175))

(declare-fun e!1071717 () Bool)

(declare-fun b!1672568 () Bool)

(declare-fun lt!632217 () List!18488)

(assert (=> b!1672568 (= e!1071717 (or (not (= lt!630485 Nil!18418)) (= lt!632217 (t!152639 lt!630482))))))

(declare-fun b!1672567 () Bool)

(declare-fun res!750108 () Bool)

(assert (=> b!1672567 (=> (not res!750108) (not e!1071717))))

(assert (=> b!1672567 (= res!750108 (= (size!14657 lt!632217) (+ (size!14657 (t!152639 lt!630482)) (size!14657 lt!630485))))))

(declare-fun b!1672566 () Bool)

(declare-fun e!1071716 () List!18488)

(assert (=> b!1672566 (= e!1071716 (Cons!18418 (h!23819 (t!152639 lt!630482)) (++!5024 (t!152639 (t!152639 lt!630482)) lt!630485)))))

(declare-fun d!506177 () Bool)

(assert (=> d!506177 e!1071717))

(declare-fun res!750109 () Bool)

(assert (=> d!506177 (=> (not res!750109) (not e!1071717))))

(assert (=> d!506177 (= res!750109 (= (content!2576 lt!632217) (set.union (content!2576 (t!152639 lt!630482)) (content!2576 lt!630485))))))

(assert (=> d!506177 (= lt!632217 e!1071716)))

(declare-fun c!272257 () Bool)

(assert (=> d!506177 (= c!272257 (is-Nil!18418 (t!152639 lt!630482)))))

(assert (=> d!506177 (= (++!5024 (t!152639 lt!630482) lt!630485) lt!632217)))

(declare-fun b!1672565 () Bool)

(assert (=> b!1672565 (= e!1071716 lt!630485)))

(assert (= (and d!506177 c!272257) b!1672565))

(assert (= (and d!506177 (not c!272257)) b!1672566))

(assert (= (and d!506177 res!750109) b!1672567))

(assert (= (and b!1672567 res!750108) b!1672568))

(declare-fun m!2040883 () Bool)

(assert (=> b!1672567 m!2040883))

(assert (=> b!1672567 m!2038295))

(assert (=> b!1672567 m!2037963))

(declare-fun m!2040885 () Bool)

(assert (=> b!1672566 m!2040885))

(declare-fun m!2040887 () Bool)

(assert (=> d!506177 m!2040887))

(assert (=> d!506177 m!2039869))

(assert (=> d!506177 m!2037969))

(assert (=> b!1671244 d!506177))

(assert (=> b!1671191 d!505589))

(assert (=> b!1671191 d!505591))

(assert (=> b!1671191 d!505593))

(declare-fun d!506179 () Bool)

(assert (=> d!506179 (isEmpty!11485 (maxPrefixOneRule!836 thiss!17113 (rule!5134 lt!630688) lt!630689))))

(declare-fun lt!632254 () Unit!31326)

(declare-fun choose!10078 (LexerInterface!2873 Rule!6288 List!18489 List!18488) Unit!31326)

(assert (=> d!506179 (= lt!632254 (choose!10078 thiss!17113 (rule!5134 lt!630688) rules!1846 lt!630689))))

(assert (=> d!506179 (not (isEmpty!11479 rules!1846))))

(assert (=> d!506179 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!231 thiss!17113 (rule!5134 lt!630688) rules!1846 lt!630689) lt!632254)))

(declare-fun bs!398251 () Bool)

(assert (= bs!398251 d!506179))

(assert (=> bs!398251 m!2037547))

(assert (=> bs!398251 m!2037547))

(assert (=> bs!398251 m!2037549))

(declare-fun m!2040977 () Bool)

(assert (=> bs!398251 m!2040977))

(assert (=> bs!398251 m!2037093))

(assert (=> b!1671049 d!506179))

(assert (=> b!1671049 d!505401))

(declare-fun b!1672582 () Bool)

(declare-fun e!1071732 () Bool)

(declare-fun lt!632255 () Bool)

(declare-fun call!106687 () Bool)

(assert (=> b!1672582 (= e!1071732 (= lt!632255 call!106687))))

(declare-fun b!1672583 () Bool)

(declare-fun e!1071730 () Bool)

(assert (=> b!1672583 (= e!1071730 (not lt!632255))))

(declare-fun b!1672584 () Bool)

(declare-fun e!1071734 () Bool)

(assert (=> b!1672584 (= e!1071734 (matchR!2063 (derivativeStep!1131 (regex!3244 (rule!5134 lt!630688)) (head!3736 lt!630692)) (tail!2496 lt!630692)))))

(declare-fun b!1672585 () Bool)

(declare-fun res!750121 () Bool)

(declare-fun e!1071731 () Bool)

(assert (=> b!1672585 (=> res!750121 e!1071731)))

(assert (=> b!1672585 (= res!750121 (not (is-ElementMatch!4572 (regex!3244 (rule!5134 lt!630688)))))))

(assert (=> b!1672585 (= e!1071730 e!1071731)))

(declare-fun b!1672586 () Bool)

(declare-fun res!750117 () Bool)

(declare-fun e!1071729 () Bool)

(assert (=> b!1672586 (=> (not res!750117) (not e!1071729))))

(assert (=> b!1672586 (= res!750117 (isEmpty!11487 (tail!2496 lt!630692)))))

(declare-fun b!1672587 () Bool)

(declare-fun res!750123 () Bool)

(declare-fun e!1071728 () Bool)

(assert (=> b!1672587 (=> res!750123 e!1071728)))

(assert (=> b!1672587 (= res!750123 (not (isEmpty!11487 (tail!2496 lt!630692))))))

(declare-fun d!506183 () Bool)

(assert (=> d!506183 e!1071732))

(declare-fun c!272261 () Bool)

(assert (=> d!506183 (= c!272261 (is-EmptyExpr!4572 (regex!3244 (rule!5134 lt!630688))))))

(assert (=> d!506183 (= lt!632255 e!1071734)))

(declare-fun c!272262 () Bool)

(assert (=> d!506183 (= c!272262 (isEmpty!11487 lt!630692))))

(assert (=> d!506183 (validRegex!1833 (regex!3244 (rule!5134 lt!630688)))))

(assert (=> d!506183 (= (matchR!2063 (regex!3244 (rule!5134 lt!630688)) lt!630692) lt!632255)))

(declare-fun b!1672588 () Bool)

(declare-fun res!750122 () Bool)

(assert (=> b!1672588 (=> (not res!750122) (not e!1071729))))

(assert (=> b!1672588 (= res!750122 (not call!106687))))

(declare-fun b!1672589 () Bool)

(assert (=> b!1672589 (= e!1071729 (= (head!3736 lt!630692) (c!271872 (regex!3244 (rule!5134 lt!630688)))))))

(declare-fun b!1672590 () Bool)

(declare-fun e!1071733 () Bool)

(assert (=> b!1672590 (= e!1071733 e!1071728)))

(declare-fun res!750118 () Bool)

(assert (=> b!1672590 (=> res!750118 e!1071728)))

(assert (=> b!1672590 (= res!750118 call!106687)))

(declare-fun bm!106682 () Bool)

(assert (=> bm!106682 (= call!106687 (isEmpty!11487 lt!630692))))

(declare-fun b!1672591 () Bool)

(assert (=> b!1672591 (= e!1071731 e!1071733)))

(declare-fun res!750119 () Bool)

(assert (=> b!1672591 (=> (not res!750119) (not e!1071733))))

(assert (=> b!1672591 (= res!750119 (not lt!632255))))

(declare-fun b!1672592 () Bool)

(assert (=> b!1672592 (= e!1071728 (not (= (head!3736 lt!630692) (c!271872 (regex!3244 (rule!5134 lt!630688))))))))

(declare-fun b!1672593 () Bool)

(assert (=> b!1672593 (= e!1071734 (nullable!1362 (regex!3244 (rule!5134 lt!630688))))))

(declare-fun b!1672594 () Bool)

(assert (=> b!1672594 (= e!1071732 e!1071730)))

(declare-fun c!272263 () Bool)

(assert (=> b!1672594 (= c!272263 (is-EmptyLang!4572 (regex!3244 (rule!5134 lt!630688))))))

(declare-fun b!1672595 () Bool)

(declare-fun res!750120 () Bool)

(assert (=> b!1672595 (=> res!750120 e!1071731)))

(assert (=> b!1672595 (= res!750120 e!1071729)))

(declare-fun res!750124 () Bool)

(assert (=> b!1672595 (=> (not res!750124) (not e!1071729))))

(assert (=> b!1672595 (= res!750124 lt!632255)))

(assert (= (and d!506183 c!272262) b!1672593))

(assert (= (and d!506183 (not c!272262)) b!1672584))

(assert (= (and d!506183 c!272261) b!1672582))

(assert (= (and d!506183 (not c!272261)) b!1672594))

(assert (= (and b!1672594 c!272263) b!1672583))

(assert (= (and b!1672594 (not c!272263)) b!1672585))

(assert (= (and b!1672585 (not res!750121)) b!1672595))

(assert (= (and b!1672595 res!750124) b!1672588))

(assert (= (and b!1672588 res!750122) b!1672586))

(assert (= (and b!1672586 res!750117) b!1672589))

(assert (= (and b!1672595 (not res!750120)) b!1672591))

(assert (= (and b!1672591 res!750119) b!1672590))

(assert (= (and b!1672590 (not res!750118)) b!1672587))

(assert (= (and b!1672587 (not res!750123)) b!1672592))

(assert (= (or b!1672582 b!1672588 b!1672590) bm!106682))

(declare-fun m!2040983 () Bool)

(assert (=> b!1672589 m!2040983))

(declare-fun m!2040985 () Bool)

(assert (=> b!1672593 m!2040985))

(declare-fun m!2040987 () Bool)

(assert (=> b!1672586 m!2040987))

(assert (=> b!1672586 m!2040987))

(declare-fun m!2040989 () Bool)

(assert (=> b!1672586 m!2040989))

(declare-fun m!2040991 () Bool)

(assert (=> d!506183 m!2040991))

(declare-fun m!2040993 () Bool)

(assert (=> d!506183 m!2040993))

(assert (=> b!1672592 m!2040983))

(assert (=> bm!106682 m!2040991))

(assert (=> b!1672584 m!2040983))

(assert (=> b!1672584 m!2040983))

(declare-fun m!2040995 () Bool)

(assert (=> b!1672584 m!2040995))

(assert (=> b!1672584 m!2040987))

(assert (=> b!1672584 m!2040995))

(assert (=> b!1672584 m!2040987))

(declare-fun m!2040997 () Bool)

(assert (=> b!1672584 m!2040997))

(assert (=> b!1672587 m!2040987))

(assert (=> b!1672587 m!2040987))

(assert (=> b!1672587 m!2040989))

(assert (=> b!1671049 d!506183))

(declare-fun d!506187 () Bool)

(declare-fun e!1071735 () Bool)

(assert (=> d!506187 e!1071735))

(declare-fun res!750127 () Bool)

(assert (=> d!506187 (=> res!750127 e!1071735)))

(declare-fun lt!632257 () Option!3539)

(assert (=> d!506187 (= res!750127 (isEmpty!11485 lt!632257))))

(declare-fun e!1071736 () Option!3539)

(assert (=> d!506187 (= lt!632257 e!1071736)))

(declare-fun c!272264 () Bool)

(declare-fun lt!632258 () tuple2!18154)

(assert (=> d!506187 (= c!272264 (isEmpty!11487 (_1!10479 lt!632258)))))

(assert (=> d!506187 (= lt!632258 (findLongestMatch!297 (regex!3244 (rule!5134 lt!630688)) lt!630689))))

(assert (=> d!506187 (ruleValid!762 thiss!17113 (rule!5134 lt!630688))))

(assert (=> d!506187 (= (maxPrefixOneRule!836 thiss!17113 (rule!5134 lt!630688) lt!630689) lt!632257)))

(declare-fun b!1672596 () Bool)

(assert (=> b!1672596 (= e!1071736 (Some!3538 (tuple2!18141 (Token!6055 (apply!4976 (transformation!3244 (rule!5134 lt!630688)) (seqFromList!2225 (_1!10479 lt!632258))) (rule!5134 lt!630688) (size!14656 (seqFromList!2225 (_1!10479 lt!632258))) (_1!10479 lt!632258)) (_2!10479 lt!632258))))))

(declare-fun lt!632259 () Unit!31326)

(assert (=> b!1672596 (= lt!632259 (longestMatchIsAcceptedByMatchOrIsEmpty!354 (regex!3244 (rule!5134 lt!630688)) lt!630689))))

(declare-fun res!750125 () Bool)

(assert (=> b!1672596 (= res!750125 (isEmpty!11487 (_1!10479 (findLongestMatchInner!370 (regex!3244 (rule!5134 lt!630688)) Nil!18418 (size!14657 Nil!18418) lt!630689 lt!630689 (size!14657 lt!630689)))))))

(declare-fun e!1071737 () Bool)

(assert (=> b!1672596 (=> res!750125 e!1071737)))

(assert (=> b!1672596 e!1071737))

(declare-fun lt!632256 () Unit!31326)

(assert (=> b!1672596 (= lt!632256 lt!632259)))

(declare-fun lt!632260 () Unit!31326)

(assert (=> b!1672596 (= lt!632260 (lemmaSemiInverse!436 (transformation!3244 (rule!5134 lt!630688)) (seqFromList!2225 (_1!10479 lt!632258))))))

(declare-fun b!1672597 () Bool)

(declare-fun e!1071738 () Bool)

(assert (=> b!1672597 (= e!1071735 e!1071738)))

(declare-fun res!750131 () Bool)

(assert (=> b!1672597 (=> (not res!750131) (not e!1071738))))

(assert (=> b!1672597 (= res!750131 (matchR!2063 (regex!3244 (rule!5134 lt!630688)) (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!632257))))))))

(declare-fun b!1672598 () Bool)

(assert (=> b!1672598 (= e!1071737 (matchR!2063 (regex!3244 (rule!5134 lt!630688)) (_1!10479 (findLongestMatchInner!370 (regex!3244 (rule!5134 lt!630688)) Nil!18418 (size!14657 Nil!18418) lt!630689 lt!630689 (size!14657 lt!630689)))))))

(declare-fun b!1672599 () Bool)

(declare-fun res!750130 () Bool)

(assert (=> b!1672599 (=> (not res!750130) (not e!1071738))))

(assert (=> b!1672599 (= res!750130 (= (value!102128 (_1!10472 (get!5396 lt!632257))) (apply!4976 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!632257)))) (seqFromList!2225 (originalCharacters!4058 (_1!10472 (get!5396 lt!632257)))))))))

(declare-fun b!1672600 () Bool)

(assert (=> b!1672600 (= e!1071736 None!3538)))

(declare-fun b!1672601 () Bool)

(declare-fun res!750129 () Bool)

(assert (=> b!1672601 (=> (not res!750129) (not e!1071738))))

(assert (=> b!1672601 (= res!750129 (< (size!14657 (_2!10472 (get!5396 lt!632257))) (size!14657 lt!630689)))))

(declare-fun b!1672602 () Bool)

(declare-fun res!750128 () Bool)

(assert (=> b!1672602 (=> (not res!750128) (not e!1071738))))

(assert (=> b!1672602 (= res!750128 (= (++!5024 (list!7381 (charsOf!1893 (_1!10472 (get!5396 lt!632257)))) (_2!10472 (get!5396 lt!632257))) lt!630689))))

(declare-fun b!1672603 () Bool)

(declare-fun res!750126 () Bool)

(assert (=> b!1672603 (=> (not res!750126) (not e!1071738))))

(assert (=> b!1672603 (= res!750126 (= (rule!5134 (_1!10472 (get!5396 lt!632257))) (rule!5134 lt!630688)))))

(declare-fun b!1672604 () Bool)

(assert (=> b!1672604 (= e!1071738 (= (size!14653 (_1!10472 (get!5396 lt!632257))) (size!14657 (originalCharacters!4058 (_1!10472 (get!5396 lt!632257))))))))

(assert (= (and d!506187 c!272264) b!1672600))

(assert (= (and d!506187 (not c!272264)) b!1672596))

(assert (= (and b!1672596 (not res!750125)) b!1672598))

(assert (= (and d!506187 (not res!750127)) b!1672597))

(assert (= (and b!1672597 res!750131) b!1672602))

(assert (= (and b!1672602 res!750128) b!1672601))

(assert (= (and b!1672601 res!750129) b!1672603))

(assert (= (and b!1672603 res!750126) b!1672599))

(assert (= (and b!1672599 res!750130) b!1672604))

(declare-fun m!2040999 () Bool)

(assert (=> b!1672603 m!2040999))

(assert (=> b!1672604 m!2040999))

(declare-fun m!2041001 () Bool)

(assert (=> b!1672604 m!2041001))

(assert (=> b!1672599 m!2040999))

(declare-fun m!2041003 () Bool)

(assert (=> b!1672599 m!2041003))

(assert (=> b!1672599 m!2041003))

(declare-fun m!2041005 () Bool)

(assert (=> b!1672599 m!2041005))

(assert (=> b!1672597 m!2040999))

(declare-fun m!2041007 () Bool)

(assert (=> b!1672597 m!2041007))

(assert (=> b!1672597 m!2041007))

(declare-fun m!2041009 () Bool)

(assert (=> b!1672597 m!2041009))

(assert (=> b!1672597 m!2041009))

(declare-fun m!2041011 () Bool)

(assert (=> b!1672597 m!2041011))

(declare-fun m!2041013 () Bool)

(assert (=> b!1672596 m!2041013))

(declare-fun m!2041015 () Bool)

(assert (=> b!1672596 m!2041015))

(declare-fun m!2041017 () Bool)

(assert (=> b!1672596 m!2041017))

(declare-fun m!2041019 () Bool)

(assert (=> b!1672596 m!2041019))

(declare-fun m!2041021 () Bool)

(assert (=> b!1672596 m!2041021))

(assert (=> b!1672596 m!2041013))

(declare-fun m!2041023 () Bool)

(assert (=> b!1672596 m!2041023))

(assert (=> b!1672596 m!2040287))

(assert (=> b!1672596 m!2041017))

(declare-fun m!2041025 () Bool)

(assert (=> b!1672596 m!2041025))

(assert (=> b!1672596 m!2041013))

(declare-fun m!2041027 () Bool)

(assert (=> b!1672596 m!2041027))

(assert (=> b!1672596 m!2040287))

(assert (=> b!1672596 m!2041013))

(assert (=> b!1672601 m!2040999))

(declare-fun m!2041029 () Bool)

(assert (=> b!1672601 m!2041029))

(assert (=> b!1672601 m!2041017))

(assert (=> b!1672602 m!2040999))

(assert (=> b!1672602 m!2041007))

(assert (=> b!1672602 m!2041007))

(assert (=> b!1672602 m!2041009))

(assert (=> b!1672602 m!2041009))

(declare-fun m!2041031 () Bool)

(assert (=> b!1672602 m!2041031))

(declare-fun m!2041033 () Bool)

(assert (=> d!506187 m!2041033))

(declare-fun m!2041035 () Bool)

(assert (=> d!506187 m!2041035))

(declare-fun m!2041037 () Bool)

(assert (=> d!506187 m!2041037))

(declare-fun m!2041039 () Bool)

(assert (=> d!506187 m!2041039))

(assert (=> b!1672598 m!2040287))

(assert (=> b!1672598 m!2041017))

(assert (=> b!1672598 m!2040287))

(assert (=> b!1672598 m!2041017))

(assert (=> b!1672598 m!2041025))

(declare-fun m!2041041 () Bool)

(assert (=> b!1672598 m!2041041))

(assert (=> b!1671049 d!506187))

(declare-fun d!506189 () Bool)

(assert (=> d!506189 (= (isEmpty!11485 (maxPrefixOneRule!836 thiss!17113 (rule!5134 lt!630688) lt!630689)) (not (is-Some!3538 (maxPrefixOneRule!836 thiss!17113 (rule!5134 lt!630688) lt!630689))))))

(assert (=> b!1671049 d!506189))

(assert (=> b!1671049 d!505817))

(assert (=> b!1671049 d!505821))

(declare-fun d!506191 () Bool)

(assert (=> d!506191 (not (matchR!2063 (regex!3244 (rule!5134 lt!630688)) lt!630692))))

(declare-fun lt!632263 () Unit!31326)

(declare-fun choose!10079 (LexerInterface!2873 Rule!6288 List!18488 List!18488) Unit!31326)

(assert (=> d!506191 (= lt!632263 (choose!10079 thiss!17113 (rule!5134 lt!630688) lt!630692 (++!5024 lt!630482 lt!630481)))))

(assert (=> d!506191 (isPrefix!1502 lt!630692 (++!5024 lt!630482 lt!630481))))

(assert (=> d!506191 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!227 thiss!17113 (rule!5134 lt!630688) lt!630692 (++!5024 lt!630482 lt!630481)) lt!632263)))

(declare-fun bs!398252 () Bool)

(assert (= bs!398252 d!506191))

(assert (=> bs!398252 m!2037553))

(assert (=> bs!398252 m!2037073))

(declare-fun m!2041043 () Bool)

(assert (=> bs!398252 m!2041043))

(assert (=> bs!398252 m!2037073))

(declare-fun m!2041045 () Bool)

(assert (=> bs!398252 m!2041045))

(assert (=> b!1671049 d!506191))

(declare-fun b!1672605 () Bool)

(declare-fun res!750132 () Bool)

(declare-fun e!1071739 () Bool)

(assert (=> b!1672605 (=> res!750132 e!1071739)))

(assert (=> b!1672605 (= res!750132 (not (is-IntegerValue!10004 (value!102128 (h!23821 (t!152641 tokens!457))))))))

(declare-fun e!1071740 () Bool)

(assert (=> b!1672605 (= e!1071740 e!1071739)))

(declare-fun d!506193 () Bool)

(declare-fun c!272265 () Bool)

(assert (=> d!506193 (= c!272265 (is-IntegerValue!10002 (value!102128 (h!23821 (t!152641 tokens!457)))))))

(declare-fun e!1071741 () Bool)

(assert (=> d!506193 (= (inv!21 (value!102128 (h!23821 (t!152641 tokens!457)))) e!1071741)))

(declare-fun b!1672606 () Bool)

(assert (=> b!1672606 (= e!1071741 (inv!16 (value!102128 (h!23821 (t!152641 tokens!457)))))))

(declare-fun b!1672607 () Bool)

(assert (=> b!1672607 (= e!1071740 (inv!17 (value!102128 (h!23821 (t!152641 tokens!457)))))))

(declare-fun b!1672608 () Bool)

(assert (=> b!1672608 (= e!1071741 e!1071740)))

(declare-fun c!272266 () Bool)

(assert (=> b!1672608 (= c!272266 (is-IntegerValue!10003 (value!102128 (h!23821 (t!152641 tokens!457)))))))

(declare-fun b!1672609 () Bool)

(assert (=> b!1672609 (= e!1071739 (inv!15 (value!102128 (h!23821 (t!152641 tokens!457)))))))

(assert (= (and d!506193 c!272265) b!1672606))

(assert (= (and d!506193 (not c!272265)) b!1672608))

(assert (= (and b!1672608 c!272266) b!1672607))

(assert (= (and b!1672608 (not c!272266)) b!1672605))

(assert (= (and b!1672605 (not res!750132)) b!1672609))

(declare-fun m!2041047 () Bool)

(assert (=> b!1672606 m!2041047))

(declare-fun m!2041049 () Bool)

(assert (=> b!1672607 m!2041049))

(declare-fun m!2041051 () Bool)

(assert (=> b!1672609 m!2041051))

(assert (=> b!1671342 d!506193))

(declare-fun b!1672610 () Bool)

(declare-fun e!1071742 () Bool)

(assert (=> b!1672610 (= e!1071742 (not (isEmpty!11484 (right!15063 (c!271873 lt!630901)))))))

(declare-fun b!1672611 () Bool)

(declare-fun res!750133 () Bool)

(assert (=> b!1672611 (=> (not res!750133) (not e!1071742))))

(assert (=> b!1672611 (= res!750133 (isBalanced!1912 (right!15063 (c!271873 lt!630901))))))

(declare-fun d!506195 () Bool)

(declare-fun res!750138 () Bool)

(declare-fun e!1071743 () Bool)

(assert (=> d!506195 (=> res!750138 e!1071743)))

(assert (=> d!506195 (= res!750138 (not (is-Node!6137 (c!271873 lt!630901))))))

(assert (=> d!506195 (= (isBalanced!1912 (c!271873 lt!630901)) e!1071743)))

(declare-fun b!1672612 () Bool)

(assert (=> b!1672612 (= e!1071743 e!1071742)))

(declare-fun res!750135 () Bool)

(assert (=> b!1672612 (=> (not res!750135) (not e!1071742))))

(assert (=> b!1672612 (= res!750135 (<= (- 1) (- (height!975 (left!14733 (c!271873 lt!630901))) (height!975 (right!15063 (c!271873 lt!630901))))))))

(declare-fun b!1672613 () Bool)

(declare-fun res!750134 () Bool)

(assert (=> b!1672613 (=> (not res!750134) (not e!1071742))))

(assert (=> b!1672613 (= res!750134 (isBalanced!1912 (left!14733 (c!271873 lt!630901))))))

(declare-fun b!1672614 () Bool)

(declare-fun res!750137 () Bool)

(assert (=> b!1672614 (=> (not res!750137) (not e!1071742))))

(assert (=> b!1672614 (= res!750137 (not (isEmpty!11484 (left!14733 (c!271873 lt!630901)))))))

(declare-fun b!1672615 () Bool)

(declare-fun res!750136 () Bool)

(assert (=> b!1672615 (=> (not res!750136) (not e!1071742))))

(assert (=> b!1672615 (= res!750136 (<= (- (height!975 (left!14733 (c!271873 lt!630901))) (height!975 (right!15063 (c!271873 lt!630901)))) 1))))

(assert (= (and d!506195 (not res!750138)) b!1672612))

(assert (= (and b!1672612 res!750135) b!1672615))

(assert (= (and b!1672615 res!750136) b!1672613))

(assert (= (and b!1672613 res!750134) b!1672611))

(assert (= (and b!1672611 res!750133) b!1672614))

(assert (= (and b!1672614 res!750137) b!1672610))

(declare-fun m!2041053 () Bool)

(assert (=> b!1672611 m!2041053))

(declare-fun m!2041055 () Bool)

(assert (=> b!1672610 m!2041055))

(declare-fun m!2041057 () Bool)

(assert (=> b!1672612 m!2041057))

(declare-fun m!2041059 () Bool)

(assert (=> b!1672612 m!2041059))

(assert (=> b!1672615 m!2041057))

(assert (=> b!1672615 m!2041059))

(declare-fun m!2041061 () Bool)

(assert (=> b!1672613 m!2041061))

(declare-fun m!2041063 () Bool)

(assert (=> b!1672614 m!2041063))

(assert (=> b!1671217 d!506195))

(declare-fun d!506197 () Bool)

(assert (=> d!506197 (= (isEmpty!11487 (++!5024 lt!630482 lt!630485)) (is-Nil!18418 (++!5024 lt!630482 lt!630485)))))

(assert (=> d!505537 d!506197))

(declare-fun d!506199 () Bool)

(declare-fun e!1071744 () Bool)

(assert (=> d!506199 e!1071744))

(declare-fun res!750139 () Bool)

(assert (=> d!506199 (=> (not res!750139) (not e!1071744))))

(declare-fun lt!632264 () BalanceConc!12218)

(assert (=> d!506199 (= res!750139 (= (list!7382 lt!632264) tokens!457))))

(assert (=> d!506199 (= lt!632264 (BalanceConc!12219 (fromList!412 tokens!457)))))

(assert (=> d!506199 (= (fromListB!1013 tokens!457) lt!632264)))

(declare-fun b!1672616 () Bool)

(assert (=> b!1672616 (= e!1071744 (isBalanced!1912 (fromList!412 tokens!457)))))

(assert (= (and d!506199 res!750139) b!1672616))

(declare-fun m!2041065 () Bool)

(assert (=> d!506199 m!2041065))

(declare-fun m!2041067 () Bool)

(assert (=> d!506199 m!2041067))

(assert (=> b!1672616 m!2041067))

(assert (=> b!1672616 m!2041067))

(declare-fun m!2041069 () Bool)

(assert (=> b!1672616 m!2041069))

(assert (=> d!505409 d!506199))

(declare-fun bs!398253 () Bool)

(declare-fun d!506201 () Bool)

(assert (= bs!398253 (and d!506201 d!506105)))

(declare-fun lambda!68075 () Int)

(assert (=> bs!398253 (= (= (toValue!4711 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (toValue!4711 (transformation!3244 (h!23820 rules!1846)))) (= lambda!68075 lambda!68064))))

(assert (=> d!506201 true))

(assert (=> d!506201 (< (dynLambda!8313 order!11073 (toValue!4711 (transformation!3244 (rule!5134 (h!23821 tokens!457))))) (dynLambda!8324 order!11087 lambda!68075))))

(assert (=> d!506201 (= (equivClasses!1210 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (toValue!4711 (transformation!3244 (rule!5134 (h!23821 tokens!457))))) (Forall2!534 lambda!68075))))

(declare-fun bs!398254 () Bool)

(assert (= bs!398254 d!506201))

(declare-fun m!2041071 () Bool)

(assert (=> bs!398254 m!2041071))

(assert (=> b!1671162 d!506201))

(declare-fun d!506203 () Bool)

(assert (=> d!506203 (= (isEmpty!11485 lt!630873) (not (is-Some!3538 lt!630873)))))

(assert (=> d!505499 d!506203))

(declare-fun b!1672617 () Bool)

(declare-fun e!1071745 () Bool)

(declare-fun e!1071747 () Bool)

(assert (=> b!1672617 (= e!1071745 e!1071747)))

(declare-fun res!750143 () Bool)

(assert (=> b!1672617 (=> (not res!750143) (not e!1071747))))

(assert (=> b!1672617 (= res!750143 (not (is-Nil!18418 lt!630492)))))

(declare-fun d!506205 () Bool)

(declare-fun e!1071746 () Bool)

(assert (=> d!506205 e!1071746))

(declare-fun res!750142 () Bool)

(assert (=> d!506205 (=> res!750142 e!1071746)))

(declare-fun lt!632265 () Bool)

(assert (=> d!506205 (= res!750142 (not lt!632265))))

(assert (=> d!506205 (= lt!632265 e!1071745)))

(declare-fun res!750140 () Bool)

(assert (=> d!506205 (=> res!750140 e!1071745)))

(assert (=> d!506205 (= res!750140 (is-Nil!18418 lt!630492))))

(assert (=> d!506205 (= (isPrefix!1502 lt!630492 lt!630492) lt!632265)))

(declare-fun b!1672620 () Bool)

(assert (=> b!1672620 (= e!1071746 (>= (size!14657 lt!630492) (size!14657 lt!630492)))))

(declare-fun b!1672619 () Bool)

(assert (=> b!1672619 (= e!1071747 (isPrefix!1502 (tail!2496 lt!630492) (tail!2496 lt!630492)))))

(declare-fun b!1672618 () Bool)

(declare-fun res!750141 () Bool)

(assert (=> b!1672618 (=> (not res!750141) (not e!1071747))))

(assert (=> b!1672618 (= res!750141 (= (head!3736 lt!630492) (head!3736 lt!630492)))))

(assert (= (and d!506205 (not res!750140)) b!1672617))

(assert (= (and b!1672617 res!750143) b!1672618))

(assert (= (and b!1672618 res!750141) b!1672619))

(assert (= (and d!506205 (not res!750142)) b!1672620))

(assert (=> b!1672620 m!2037835))

(assert (=> b!1672620 m!2037835))

(declare-fun m!2041073 () Bool)

(assert (=> b!1672619 m!2041073))

(assert (=> b!1672619 m!2041073))

(assert (=> b!1672619 m!2041073))

(assert (=> b!1672619 m!2041073))

(declare-fun m!2041075 () Bool)

(assert (=> b!1672619 m!2041075))

(declare-fun m!2041077 () Bool)

(assert (=> b!1672618 m!2041077))

(assert (=> b!1672618 m!2041077))

(assert (=> d!505499 d!506205))

(declare-fun d!506207 () Bool)

(assert (=> d!506207 (isPrefix!1502 lt!630492 lt!630492)))

(declare-fun lt!632268 () Unit!31326)

(declare-fun choose!10080 (List!18488 List!18488) Unit!31326)

(assert (=> d!506207 (= lt!632268 (choose!10080 lt!630492 lt!630492))))

(assert (=> d!506207 (= (lemmaIsPrefixRefl!1021 lt!630492 lt!630492) lt!632268)))

(declare-fun bs!398255 () Bool)

(assert (= bs!398255 d!506207))

(assert (=> bs!398255 m!2037857))

(declare-fun m!2041079 () Bool)

(assert (=> bs!398255 m!2041079))

(assert (=> d!505499 d!506207))

(declare-fun bs!398256 () Bool)

(declare-fun d!506209 () Bool)

(assert (= bs!398256 (and d!506209 d!506051)))

(declare-fun lambda!68078 () Int)

(assert (=> bs!398256 (= lambda!68078 lambda!68061)))

(assert (=> d!506209 true))

(declare-fun lt!632271 () Bool)

(assert (=> d!506209 (= lt!632271 (forall!4189 rules!1846 lambda!68078))))

(declare-fun e!1071752 () Bool)

(assert (=> d!506209 (= lt!632271 e!1071752)))

(declare-fun res!750149 () Bool)

(assert (=> d!506209 (=> res!750149 e!1071752)))

(assert (=> d!506209 (= res!750149 (not (is-Cons!18419 rules!1846)))))

(assert (=> d!506209 (= (rulesValidInductive!1043 thiss!17113 rules!1846) lt!632271)))

(declare-fun b!1672625 () Bool)

(declare-fun e!1071753 () Bool)

(assert (=> b!1672625 (= e!1071752 e!1071753)))

(declare-fun res!750148 () Bool)

(assert (=> b!1672625 (=> (not res!750148) (not e!1071753))))

(assert (=> b!1672625 (= res!750148 (ruleValid!762 thiss!17113 (h!23820 rules!1846)))))

(declare-fun b!1672626 () Bool)

(assert (=> b!1672626 (= e!1071753 (rulesValidInductive!1043 thiss!17113 (t!152640 rules!1846)))))

(assert (= (and d!506209 (not res!750149)) b!1672625))

(assert (= (and b!1672625 res!750148) b!1672626))

(declare-fun m!2041081 () Bool)

(assert (=> d!506209 m!2041081))

(assert (=> b!1672625 m!2040303))

(assert (=> b!1672626 m!2038267))

(assert (=> d!505499 d!506209))

(declare-fun tp!482434 () Bool)

(declare-fun tp!482435 () Bool)

(declare-fun e!1071759 () Bool)

(declare-fun b!1672635 () Bool)

(assert (=> b!1672635 (= e!1071759 (and (inv!23776 (left!14732 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (value!102128 (h!23821 (t!152641 tokens!457))))))) tp!482435 (inv!23776 (right!15062 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (value!102128 (h!23821 (t!152641 tokens!457))))))) tp!482434))))

(declare-fun b!1672637 () Bool)

(declare-fun e!1071758 () Bool)

(declare-fun tp!482436 () Bool)

(assert (=> b!1672637 (= e!1071758 tp!482436)))

(declare-fun b!1672636 () Bool)

(declare-fun inv!23782 (IArray!12277) Bool)

(assert (=> b!1672636 (= e!1071759 (and (inv!23782 (xs!8980 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (value!102128 (h!23821 (t!152641 tokens!457))))))) e!1071758))))

(assert (=> b!1670980 (= tp!482318 (and (inv!23776 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (value!102128 (h!23821 (t!152641 tokens!457)))))) e!1071759))))

(assert (= (and b!1670980 (is-Node!6136 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (value!102128 (h!23821 (t!152641 tokens!457))))))) b!1672635))

(assert (= b!1672636 b!1672637))

(assert (= (and b!1670980 (is-Leaf!8979 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (value!102128 (h!23821 (t!152641 tokens!457))))))) b!1672636))

(declare-fun m!2041083 () Bool)

(assert (=> b!1672635 m!2041083))

(declare-fun m!2041085 () Bool)

(assert (=> b!1672635 m!2041085))

(declare-fun m!2041087 () Bool)

(assert (=> b!1672636 m!2041087))

(assert (=> b!1670980 m!2037373))

(declare-fun b!1672638 () Bool)

(declare-fun e!1071760 () Bool)

(assert (=> b!1672638 (= e!1071760 tp_is_empty!7419)))

(declare-fun b!1672640 () Bool)

(declare-fun tp!482439 () Bool)

(assert (=> b!1672640 (= e!1071760 tp!482439)))

(assert (=> b!1671314 (= tp!482333 e!1071760)))

(declare-fun b!1672641 () Bool)

(declare-fun tp!482440 () Bool)

(declare-fun tp!482438 () Bool)

(assert (=> b!1672641 (= e!1071760 (and tp!482440 tp!482438))))

(declare-fun b!1672639 () Bool)

(declare-fun tp!482441 () Bool)

(declare-fun tp!482437 () Bool)

(assert (=> b!1672639 (= e!1071760 (and tp!482441 tp!482437))))

(assert (= (and b!1671314 (is-ElementMatch!4572 (reg!4901 (regex!3244 (h!23820 rules!1846))))) b!1672638))

(assert (= (and b!1671314 (is-Concat!7907 (reg!4901 (regex!3244 (h!23820 rules!1846))))) b!1672639))

(assert (= (and b!1671314 (is-Star!4572 (reg!4901 (regex!3244 (h!23820 rules!1846))))) b!1672640))

(assert (= (and b!1671314 (is-Union!4572 (reg!4901 (regex!3244 (h!23820 rules!1846))))) b!1672641))

(declare-fun b!1672642 () Bool)

(declare-fun e!1071761 () Bool)

(assert (=> b!1672642 (= e!1071761 tp_is_empty!7419)))

(declare-fun b!1672644 () Bool)

(declare-fun tp!482444 () Bool)

(assert (=> b!1672644 (= e!1071761 tp!482444)))

(assert (=> b!1671343 (= tp!482363 e!1071761)))

(declare-fun b!1672645 () Bool)

(declare-fun tp!482445 () Bool)

(declare-fun tp!482443 () Bool)

(assert (=> b!1672645 (= e!1071761 (and tp!482445 tp!482443))))

(declare-fun b!1672643 () Bool)

(declare-fun tp!482446 () Bool)

(declare-fun tp!482442 () Bool)

(assert (=> b!1672643 (= e!1071761 (and tp!482446 tp!482442))))

(assert (= (and b!1671343 (is-ElementMatch!4572 (regex!3244 (rule!5134 (h!23821 (t!152641 tokens!457)))))) b!1672642))

(assert (= (and b!1671343 (is-Concat!7907 (regex!3244 (rule!5134 (h!23821 (t!152641 tokens!457)))))) b!1672643))

(assert (= (and b!1671343 (is-Star!4572 (regex!3244 (rule!5134 (h!23821 (t!152641 tokens!457)))))) b!1672644))

(assert (= (and b!1671343 (is-Union!4572 (regex!3244 (rule!5134 (h!23821 (t!152641 tokens!457)))))) b!1672645))

(declare-fun tp!482448 () Bool)

(declare-fun tp!482447 () Bool)

(declare-fun e!1071763 () Bool)

(declare-fun b!1672646 () Bool)

(assert (=> b!1672646 (= e!1071763 (and (inv!23776 (left!14732 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (value!102128 (h!23821 tokens!457)))))) tp!482448 (inv!23776 (right!15062 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (value!102128 (h!23821 tokens!457)))))) tp!482447))))

(declare-fun b!1672648 () Bool)

(declare-fun e!1071762 () Bool)

(declare-fun tp!482449 () Bool)

(assert (=> b!1672648 (= e!1071762 tp!482449)))

(declare-fun b!1672647 () Bool)

(assert (=> b!1672647 (= e!1071763 (and (inv!23782 (xs!8980 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (value!102128 (h!23821 tokens!457)))))) e!1071762))))

(assert (=> b!1671013 (= tp!482319 (and (inv!23776 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (value!102128 (h!23821 tokens!457))))) e!1071763))))

(assert (= (and b!1671013 (is-Node!6136 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (value!102128 (h!23821 tokens!457)))))) b!1672646))

(assert (= b!1672647 b!1672648))

(assert (= (and b!1671013 (is-Leaf!8979 (c!271871 (dynLambda!8312 (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (value!102128 (h!23821 tokens!457)))))) b!1672647))

(declare-fun m!2041089 () Bool)

(assert (=> b!1672646 m!2041089))

(declare-fun m!2041091 () Bool)

(assert (=> b!1672646 m!2041091))

(declare-fun m!2041093 () Bool)

(assert (=> b!1672647 m!2041093))

(assert (=> b!1671013 m!2037445))

(declare-fun b!1672649 () Bool)

(declare-fun e!1071764 () Bool)

(assert (=> b!1672649 (= e!1071764 tp_is_empty!7419)))

(declare-fun b!1672651 () Bool)

(declare-fun tp!482452 () Bool)

(assert (=> b!1672651 (= e!1071764 tp!482452)))

(assert (=> b!1671319 (= tp!482339 e!1071764)))

(declare-fun b!1672652 () Bool)

(declare-fun tp!482453 () Bool)

(declare-fun tp!482451 () Bool)

(assert (=> b!1672652 (= e!1071764 (and tp!482453 tp!482451))))

(declare-fun b!1672650 () Bool)

(declare-fun tp!482454 () Bool)

(declare-fun tp!482450 () Bool)

(assert (=> b!1672650 (= e!1071764 (and tp!482454 tp!482450))))

(assert (= (and b!1671319 (is-ElementMatch!4572 (regOne!9657 (regex!3244 (rule!5134 (h!23821 tokens!457)))))) b!1672649))

(assert (= (and b!1671319 (is-Concat!7907 (regOne!9657 (regex!3244 (rule!5134 (h!23821 tokens!457)))))) b!1672650))

(assert (= (and b!1671319 (is-Star!4572 (regOne!9657 (regex!3244 (rule!5134 (h!23821 tokens!457)))))) b!1672651))

(assert (= (and b!1671319 (is-Union!4572 (regOne!9657 (regex!3244 (rule!5134 (h!23821 tokens!457)))))) b!1672652))

(declare-fun b!1672653 () Bool)

(declare-fun e!1071765 () Bool)

(assert (=> b!1672653 (= e!1071765 tp_is_empty!7419)))

(declare-fun b!1672655 () Bool)

(declare-fun tp!482457 () Bool)

(assert (=> b!1672655 (= e!1071765 tp!482457)))

(assert (=> b!1671319 (= tp!482337 e!1071765)))

(declare-fun b!1672656 () Bool)

(declare-fun tp!482458 () Bool)

(declare-fun tp!482456 () Bool)

(assert (=> b!1672656 (= e!1071765 (and tp!482458 tp!482456))))

(declare-fun b!1672654 () Bool)

(declare-fun tp!482459 () Bool)

(declare-fun tp!482455 () Bool)

(assert (=> b!1672654 (= e!1071765 (and tp!482459 tp!482455))))

(assert (= (and b!1671319 (is-ElementMatch!4572 (regTwo!9657 (regex!3244 (rule!5134 (h!23821 tokens!457)))))) b!1672653))

(assert (= (and b!1671319 (is-Concat!7907 (regTwo!9657 (regex!3244 (rule!5134 (h!23821 tokens!457)))))) b!1672654))

(assert (= (and b!1671319 (is-Star!4572 (regTwo!9657 (regex!3244 (rule!5134 (h!23821 tokens!457)))))) b!1672655))

(assert (= (and b!1671319 (is-Union!4572 (regTwo!9657 (regex!3244 (rule!5134 (h!23821 tokens!457)))))) b!1672656))

(declare-fun b!1672657 () Bool)

(declare-fun e!1071766 () Bool)

(assert (=> b!1672657 (= e!1071766 tp_is_empty!7419)))

(declare-fun b!1672659 () Bool)

(declare-fun tp!482462 () Bool)

(assert (=> b!1672659 (= e!1071766 tp!482462)))

(assert (=> b!1671318 (= tp!482338 e!1071766)))

(declare-fun b!1672660 () Bool)

(declare-fun tp!482463 () Bool)

(declare-fun tp!482461 () Bool)

(assert (=> b!1672660 (= e!1071766 (and tp!482463 tp!482461))))

(declare-fun b!1672658 () Bool)

(declare-fun tp!482464 () Bool)

(declare-fun tp!482460 () Bool)

(assert (=> b!1672658 (= e!1071766 (and tp!482464 tp!482460))))

(assert (= (and b!1671318 (is-ElementMatch!4572 (reg!4901 (regex!3244 (rule!5134 (h!23821 tokens!457)))))) b!1672657))

(assert (= (and b!1671318 (is-Concat!7907 (reg!4901 (regex!3244 (rule!5134 (h!23821 tokens!457)))))) b!1672658))

(assert (= (and b!1671318 (is-Star!4572 (reg!4901 (regex!3244 (rule!5134 (h!23821 tokens!457)))))) b!1672659))

(assert (= (and b!1671318 (is-Union!4572 (reg!4901 (regex!3244 (rule!5134 (h!23821 tokens!457)))))) b!1672660))

(declare-fun b!1672661 () Bool)

(declare-fun e!1071767 () Bool)

(assert (=> b!1672661 (= e!1071767 tp_is_empty!7419)))

(declare-fun b!1672663 () Bool)

(declare-fun tp!482467 () Bool)

(assert (=> b!1672663 (= e!1071767 tp!482467)))

(assert (=> b!1671315 (= tp!482334 e!1071767)))

(declare-fun b!1672664 () Bool)

(declare-fun tp!482468 () Bool)

(declare-fun tp!482466 () Bool)

(assert (=> b!1672664 (= e!1071767 (and tp!482468 tp!482466))))

(declare-fun b!1672662 () Bool)

(declare-fun tp!482469 () Bool)

(declare-fun tp!482465 () Bool)

(assert (=> b!1672662 (= e!1071767 (and tp!482469 tp!482465))))

(assert (= (and b!1671315 (is-ElementMatch!4572 (regOne!9657 (regex!3244 (h!23820 rules!1846))))) b!1672661))

(assert (= (and b!1671315 (is-Concat!7907 (regOne!9657 (regex!3244 (h!23820 rules!1846))))) b!1672662))

(assert (= (and b!1671315 (is-Star!4572 (regOne!9657 (regex!3244 (h!23820 rules!1846))))) b!1672663))

(assert (= (and b!1671315 (is-Union!4572 (regOne!9657 (regex!3244 (h!23820 rules!1846))))) b!1672664))

(declare-fun b!1672665 () Bool)

(declare-fun e!1071768 () Bool)

(assert (=> b!1672665 (= e!1071768 tp_is_empty!7419)))

(declare-fun b!1672667 () Bool)

(declare-fun tp!482472 () Bool)

(assert (=> b!1672667 (= e!1071768 tp!482472)))

(assert (=> b!1671315 (= tp!482332 e!1071768)))

(declare-fun b!1672668 () Bool)

(declare-fun tp!482473 () Bool)

(declare-fun tp!482471 () Bool)

(assert (=> b!1672668 (= e!1071768 (and tp!482473 tp!482471))))

(declare-fun b!1672666 () Bool)

(declare-fun tp!482474 () Bool)

(declare-fun tp!482470 () Bool)

(assert (=> b!1672666 (= e!1071768 (and tp!482474 tp!482470))))

(assert (= (and b!1671315 (is-ElementMatch!4572 (regTwo!9657 (regex!3244 (h!23820 rules!1846))))) b!1672665))

(assert (= (and b!1671315 (is-Concat!7907 (regTwo!9657 (regex!3244 (h!23820 rules!1846))))) b!1672666))

(assert (= (and b!1671315 (is-Star!4572 (regTwo!9657 (regex!3244 (h!23820 rules!1846))))) b!1672667))

(assert (= (and b!1671315 (is-Union!4572 (regTwo!9657 (regex!3244 (h!23820 rules!1846))))) b!1672668))

(declare-fun b!1672669 () Bool)

(declare-fun e!1071769 () Bool)

(assert (=> b!1672669 (= e!1071769 tp_is_empty!7419)))

(declare-fun b!1672671 () Bool)

(declare-fun tp!482477 () Bool)

(assert (=> b!1672671 (= e!1071769 tp!482477)))

(assert (=> b!1671313 (= tp!482335 e!1071769)))

(declare-fun b!1672672 () Bool)

(declare-fun tp!482478 () Bool)

(declare-fun tp!482476 () Bool)

(assert (=> b!1672672 (= e!1071769 (and tp!482478 tp!482476))))

(declare-fun b!1672670 () Bool)

(declare-fun tp!482479 () Bool)

(declare-fun tp!482475 () Bool)

(assert (=> b!1672670 (= e!1071769 (and tp!482479 tp!482475))))

(assert (= (and b!1671313 (is-ElementMatch!4572 (regOne!9656 (regex!3244 (h!23820 rules!1846))))) b!1672669))

(assert (= (and b!1671313 (is-Concat!7907 (regOne!9656 (regex!3244 (h!23820 rules!1846))))) b!1672670))

(assert (= (and b!1671313 (is-Star!4572 (regOne!9656 (regex!3244 (h!23820 rules!1846))))) b!1672671))

(assert (= (and b!1671313 (is-Union!4572 (regOne!9656 (regex!3244 (h!23820 rules!1846))))) b!1672672))

(declare-fun b!1672673 () Bool)

(declare-fun e!1071770 () Bool)

(assert (=> b!1672673 (= e!1071770 tp_is_empty!7419)))

(declare-fun b!1672675 () Bool)

(declare-fun tp!482482 () Bool)

(assert (=> b!1672675 (= e!1071770 tp!482482)))

(assert (=> b!1671313 (= tp!482331 e!1071770)))

(declare-fun b!1672676 () Bool)

(declare-fun tp!482483 () Bool)

(declare-fun tp!482481 () Bool)

(assert (=> b!1672676 (= e!1071770 (and tp!482483 tp!482481))))

(declare-fun b!1672674 () Bool)

(declare-fun tp!482484 () Bool)

(declare-fun tp!482480 () Bool)

(assert (=> b!1672674 (= e!1071770 (and tp!482484 tp!482480))))

(assert (= (and b!1671313 (is-ElementMatch!4572 (regTwo!9656 (regex!3244 (h!23820 rules!1846))))) b!1672673))

(assert (= (and b!1671313 (is-Concat!7907 (regTwo!9656 (regex!3244 (h!23820 rules!1846))))) b!1672674))

(assert (= (and b!1671313 (is-Star!4572 (regTwo!9656 (regex!3244 (h!23820 rules!1846))))) b!1672675))

(assert (= (and b!1671313 (is-Union!4572 (regTwo!9656 (regex!3244 (h!23820 rules!1846))))) b!1672676))

(declare-fun b!1672677 () Bool)

(declare-fun e!1071771 () Bool)

(declare-fun tp!482485 () Bool)

(assert (=> b!1672677 (= e!1071771 (and tp_is_empty!7419 tp!482485))))

(assert (=> b!1671342 (= tp!482364 e!1071771)))

(assert (= (and b!1671342 (is-Cons!18418 (originalCharacters!4058 (h!23821 (t!152641 tokens!457))))) b!1672677))

(declare-fun b!1672681 () Bool)

(declare-fun b_free!45471 () Bool)

(declare-fun b_next!46175 () Bool)

(assert (=> b!1672681 (= b_free!45471 (not b_next!46175))))

(declare-fun tb!95967 () Bool)

(declare-fun t!152773 () Bool)

(assert (=> (and b!1672681 (= (toValue!4711 (transformation!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457)))))) (toValue!4711 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!630873)))))) t!152773) tb!95967))

(declare-fun result!115970 () Bool)

(assert (= result!115970 result!115942))

(assert (=> d!505943 t!152773))

(declare-fun b_and!118949 () Bool)

(declare-fun tp!482488 () Bool)

(assert (=> b!1672681 (= tp!482488 (and (=> t!152773 result!115970) b_and!118949))))

(declare-fun b_free!45473 () Bool)

(declare-fun b_next!46177 () Bool)

(assert (=> b!1672681 (= b_free!45473 (not b_next!46177))))

(declare-fun tb!95969 () Bool)

(declare-fun t!152775 () Bool)

(assert (=> (and b!1672681 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457)))))) (toChars!4570 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!630873)))))) t!152775) tb!95969))

(declare-fun result!115972 () Bool)

(assert (= result!115972 result!115902))

(assert (=> d!505591 t!152775))

(declare-fun t!152777 () Bool)

(declare-fun tb!95971 () Bool)

(assert (=> (and b!1672681 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457)))))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457)))))) t!152777) tb!95971))

(declare-fun result!115974 () Bool)

(assert (= result!115974 result!115856))

(assert (=> d!505397 t!152777))

(declare-fun t!152779 () Bool)

(declare-fun tb!95973 () Bool)

(assert (=> (and b!1672681 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457)))))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457))))) t!152779) tb!95973))

(declare-fun result!115976 () Bool)

(assert (= result!115976 result!115862))

(assert (=> d!505417 t!152779))

(assert (=> b!1672017 t!152777))

(declare-fun tb!95975 () Bool)

(declare-fun t!152781 () Bool)

(assert (=> (and b!1672681 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457)))))) (toChars!4570 (transformation!3244 (rule!5134 lt!630688)))) t!152781) tb!95975))

(declare-fun result!115978 () Bool)

(assert (= result!115978 result!115934))

(assert (=> d!505817 t!152781))

(declare-fun tb!95977 () Bool)

(declare-fun t!152783 () Bool)

(assert (=> (and b!1672681 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457)))))) (toChars!4570 (transformation!3244 (rule!5134 (apply!4973 lt!630478 0))))) t!152783) tb!95977))

(declare-fun result!115980 () Bool)

(assert (= result!115980 result!115910))

(assert (=> d!505621 t!152783))

(assert (=> b!1671235 t!152779))

(declare-fun t!152785 () Bool)

(declare-fun tb!95979 () Bool)

(assert (=> (and b!1672681 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457)))))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (Cons!18420 (h!23821 tokens!457) Nil!18420)))))) t!152785) tb!95979))

(declare-fun result!115982 () Bool)

(assert (= result!115982 result!115918))

(assert (=> d!505635 t!152785))

(declare-fun t!152787 () Bool)

(declare-fun tb!95981 () Bool)

(assert (=> (and b!1672681 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457)))))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457))))))) t!152787) tb!95981))

(declare-fun result!115984 () Bool)

(assert (= result!115984 result!115926))

(assert (=> d!505731 t!152787))

(declare-fun b_and!118951 () Bool)

(declare-fun tp!482489 () Bool)

(assert (=> b!1672681 (= tp!482489 (and (=> t!152775 result!115972) (=> t!152785 result!115982) (=> t!152779 result!115976) (=> t!152783 result!115980) (=> t!152781 result!115978) (=> t!152787 result!115984) (=> t!152777 result!115974) b_and!118951))))

(declare-fun e!1071772 () Bool)

(assert (=> b!1672681 (= e!1071772 (and tp!482488 tp!482489))))

(declare-fun e!1071773 () Bool)

(declare-fun e!1071774 () Bool)

(declare-fun b!1672679 () Bool)

(declare-fun tp!482487 () Bool)

(assert (=> b!1672679 (= e!1071773 (and (inv!21 (value!102128 (h!23821 (t!152641 (t!152641 tokens!457))))) e!1071774 tp!482487))))

(declare-fun e!1071775 () Bool)

(assert (=> b!1671341 (= tp!482367 e!1071775)))

(declare-fun b!1672680 () Bool)

(declare-fun tp!482486 () Bool)

(assert (=> b!1672680 (= e!1071774 (and tp!482486 (inv!23769 (tag!3528 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457)))))) (inv!23772 (transformation!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457)))))) e!1071772))))

(declare-fun b!1672678 () Bool)

(declare-fun tp!482490 () Bool)

(assert (=> b!1672678 (= e!1071775 (and (inv!23773 (h!23821 (t!152641 (t!152641 tokens!457)))) e!1071773 tp!482490))))

(assert (= b!1672680 b!1672681))

(assert (= b!1672679 b!1672680))

(assert (= b!1672678 b!1672679))

(assert (= (and b!1671341 (is-Cons!18420 (t!152641 (t!152641 tokens!457)))) b!1672678))

(declare-fun m!2041095 () Bool)

(assert (=> b!1672679 m!2041095))

(declare-fun m!2041097 () Bool)

(assert (=> b!1672680 m!2041097))

(declare-fun m!2041099 () Bool)

(assert (=> b!1672680 m!2041099))

(declare-fun m!2041101 () Bool)

(assert (=> b!1672678 m!2041101))

(declare-fun b!1672684 () Bool)

(declare-fun e!1071780 () Bool)

(assert (=> b!1672684 (= e!1071780 true)))

(declare-fun b!1672683 () Bool)

(declare-fun e!1071779 () Bool)

(assert (=> b!1672683 (= e!1071779 e!1071780)))

(declare-fun b!1672682 () Bool)

(declare-fun e!1071778 () Bool)

(assert (=> b!1672682 (= e!1071778 e!1071779)))

(assert (=> b!1671157 e!1071778))

(assert (= b!1672683 b!1672684))

(assert (= b!1672682 b!1672683))

(assert (= (and b!1671157 (is-Cons!18419 (t!152640 rules!1846))) b!1672682))

(assert (=> b!1672684 (< (dynLambda!8313 order!11073 (toValue!4711 (transformation!3244 (h!23820 (t!152640 rules!1846))))) (dynLambda!8314 order!11075 lambda!68048))))

(assert (=> b!1672684 (< (dynLambda!8315 order!11077 (toChars!4570 (transformation!3244 (h!23820 (t!152640 rules!1846))))) (dynLambda!8314 order!11075 lambda!68048))))

(declare-fun b!1672685 () Bool)

(declare-fun e!1071781 () Bool)

(assert (=> b!1672685 (= e!1071781 tp_is_empty!7419)))

(declare-fun b!1672687 () Bool)

(declare-fun tp!482493 () Bool)

(assert (=> b!1672687 (= e!1071781 tp!482493)))

(assert (=> b!1671317 (= tp!482340 e!1071781)))

(declare-fun b!1672688 () Bool)

(declare-fun tp!482494 () Bool)

(declare-fun tp!482492 () Bool)

(assert (=> b!1672688 (= e!1071781 (and tp!482494 tp!482492))))

(declare-fun b!1672686 () Bool)

(declare-fun tp!482495 () Bool)

(declare-fun tp!482491 () Bool)

(assert (=> b!1672686 (= e!1071781 (and tp!482495 tp!482491))))

(assert (= (and b!1671317 (is-ElementMatch!4572 (regOne!9656 (regex!3244 (rule!5134 (h!23821 tokens!457)))))) b!1672685))

(assert (= (and b!1671317 (is-Concat!7907 (regOne!9656 (regex!3244 (rule!5134 (h!23821 tokens!457)))))) b!1672686))

(assert (= (and b!1671317 (is-Star!4572 (regOne!9656 (regex!3244 (rule!5134 (h!23821 tokens!457)))))) b!1672687))

(assert (= (and b!1671317 (is-Union!4572 (regOne!9656 (regex!3244 (rule!5134 (h!23821 tokens!457)))))) b!1672688))

(declare-fun b!1672689 () Bool)

(declare-fun e!1071782 () Bool)

(assert (=> b!1672689 (= e!1071782 tp_is_empty!7419)))

(declare-fun b!1672691 () Bool)

(declare-fun tp!482498 () Bool)

(assert (=> b!1672691 (= e!1071782 tp!482498)))

(assert (=> b!1671317 (= tp!482336 e!1071782)))

(declare-fun b!1672692 () Bool)

(declare-fun tp!482499 () Bool)

(declare-fun tp!482497 () Bool)

(assert (=> b!1672692 (= e!1071782 (and tp!482499 tp!482497))))

(declare-fun b!1672690 () Bool)

(declare-fun tp!482500 () Bool)

(declare-fun tp!482496 () Bool)

(assert (=> b!1672690 (= e!1071782 (and tp!482500 tp!482496))))

(assert (= (and b!1671317 (is-ElementMatch!4572 (regTwo!9656 (regex!3244 (rule!5134 (h!23821 tokens!457)))))) b!1672689))

(assert (= (and b!1671317 (is-Concat!7907 (regTwo!9656 (regex!3244 (rule!5134 (h!23821 tokens!457)))))) b!1672690))

(assert (= (and b!1671317 (is-Star!4572 (regTwo!9656 (regex!3244 (rule!5134 (h!23821 tokens!457)))))) b!1672691))

(assert (= (and b!1671317 (is-Union!4572 (regTwo!9656 (regex!3244 (rule!5134 (h!23821 tokens!457)))))) b!1672692))

(declare-fun b!1672695 () Bool)

(declare-fun b_free!45475 () Bool)

(declare-fun b_next!46179 () Bool)

(assert (=> b!1672695 (= b_free!45475 (not b_next!46179))))

(declare-fun tb!95983 () Bool)

(declare-fun t!152789 () Bool)

(assert (=> (and b!1672695 (= (toValue!4711 (transformation!3244 (h!23820 (t!152640 (t!152640 rules!1846))))) (toValue!4711 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!630873)))))) t!152789) tb!95983))

(declare-fun result!115986 () Bool)

(assert (= result!115986 result!115942))

(assert (=> d!505943 t!152789))

(declare-fun tp!482503 () Bool)

(declare-fun b_and!118953 () Bool)

(assert (=> b!1672695 (= tp!482503 (and (=> t!152789 result!115986) b_and!118953))))

(declare-fun b_free!45477 () Bool)

(declare-fun b_next!46181 () Bool)

(assert (=> b!1672695 (= b_free!45477 (not b_next!46181))))

(declare-fun t!152791 () Bool)

(declare-fun tb!95985 () Bool)

(assert (=> (and b!1672695 (= (toChars!4570 (transformation!3244 (h!23820 (t!152640 (t!152640 rules!1846))))) (toChars!4570 (transformation!3244 (rule!5134 (_1!10472 (get!5396 lt!630873)))))) t!152791) tb!95985))

(declare-fun result!115988 () Bool)

(assert (= result!115988 result!115902))

(assert (=> d!505591 t!152791))

(declare-fun t!152793 () Bool)

(declare-fun tb!95987 () Bool)

(assert (=> (and b!1672695 (= (toChars!4570 (transformation!3244 (h!23820 (t!152640 (t!152640 rules!1846))))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457)))))) t!152793) tb!95987))

(declare-fun result!115990 () Bool)

(assert (= result!115990 result!115856))

(assert (=> d!505397 t!152793))

(declare-fun tb!95989 () Bool)

(declare-fun t!152795 () Bool)

(assert (=> (and b!1672695 (= (toChars!4570 (transformation!3244 (h!23820 (t!152640 (t!152640 rules!1846))))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457))))) t!152795) tb!95989))

(declare-fun result!115992 () Bool)

(assert (= result!115992 result!115862))

(assert (=> d!505417 t!152795))

(assert (=> b!1672017 t!152793))

(declare-fun tb!95991 () Bool)

(declare-fun t!152797 () Bool)

(assert (=> (and b!1672695 (= (toChars!4570 (transformation!3244 (h!23820 (t!152640 (t!152640 rules!1846))))) (toChars!4570 (transformation!3244 (rule!5134 lt!630688)))) t!152797) tb!95991))

(declare-fun result!115994 () Bool)

(assert (= result!115994 result!115934))

(assert (=> d!505817 t!152797))

(declare-fun t!152799 () Bool)

(declare-fun tb!95993 () Bool)

(assert (=> (and b!1672695 (= (toChars!4570 (transformation!3244 (h!23820 (t!152640 (t!152640 rules!1846))))) (toChars!4570 (transformation!3244 (rule!5134 (apply!4973 lt!630478 0))))) t!152799) tb!95993))

(declare-fun result!115996 () Bool)

(assert (= result!115996 result!115910))

(assert (=> d!505621 t!152799))

(assert (=> b!1671235 t!152795))

(declare-fun tb!95995 () Bool)

(declare-fun t!152801 () Bool)

(assert (=> (and b!1672695 (= (toChars!4570 (transformation!3244 (h!23820 (t!152640 (t!152640 rules!1846))))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (Cons!18420 (h!23821 tokens!457) Nil!18420)))))) t!152801) tb!95995))

(declare-fun result!115998 () Bool)

(assert (= result!115998 result!115918))

(assert (=> d!505635 t!152801))

(declare-fun t!152803 () Bool)

(declare-fun tb!95997 () Bool)

(assert (=> (and b!1672695 (= (toChars!4570 (transformation!3244 (h!23820 (t!152640 (t!152640 rules!1846))))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457))))))) t!152803) tb!95997))

(declare-fun result!116000 () Bool)

(assert (= result!116000 result!115926))

(assert (=> d!505731 t!152803))

(declare-fun tp!482504 () Bool)

(declare-fun b_and!118955 () Bool)

(assert (=> b!1672695 (= tp!482504 (and (=> t!152799 result!115996) (=> t!152791 result!115988) (=> t!152801 result!115998) (=> t!152797 result!115994) (=> t!152803 result!116000) (=> t!152793 result!115990) (=> t!152795 result!115992) b_and!118955))))

(declare-fun e!1071784 () Bool)

(assert (=> b!1672695 (= e!1071784 (and tp!482503 tp!482504))))

(declare-fun tp!482502 () Bool)

(declare-fun e!1071785 () Bool)

(declare-fun b!1672694 () Bool)

(assert (=> b!1672694 (= e!1071785 (and tp!482502 (inv!23769 (tag!3528 (h!23820 (t!152640 (t!152640 rules!1846))))) (inv!23772 (transformation!3244 (h!23820 (t!152640 (t!152640 rules!1846))))) e!1071784))))

(declare-fun b!1672693 () Bool)

(declare-fun e!1071783 () Bool)

(declare-fun tp!482501 () Bool)

(assert (=> b!1672693 (= e!1071783 (and e!1071785 tp!482501))))

(assert (=> b!1671328 (= tp!482349 e!1071783)))

(assert (= b!1672694 b!1672695))

(assert (= b!1672693 b!1672694))

(assert (= (and b!1671328 (is-Cons!18419 (t!152640 (t!152640 rules!1846)))) b!1672693))

(declare-fun m!2041103 () Bool)

(assert (=> b!1672694 m!2041103))

(declare-fun m!2041105 () Bool)

(assert (=> b!1672694 m!2041105))

(declare-fun b!1672696 () Bool)

(declare-fun e!1071787 () Bool)

(declare-fun tp!482505 () Bool)

(assert (=> b!1672696 (= e!1071787 (and tp_is_empty!7419 tp!482505))))

(assert (=> b!1671349 (= tp!482370 e!1071787)))

(assert (= (and b!1671349 (is-Cons!18418 (t!152639 (originalCharacters!4058 (h!23821 tokens!457))))) b!1672696))

(declare-fun b!1672697 () Bool)

(declare-fun e!1071788 () Bool)

(assert (=> b!1672697 (= e!1071788 tp_is_empty!7419)))

(declare-fun b!1672699 () Bool)

(declare-fun tp!482508 () Bool)

(assert (=> b!1672699 (= e!1071788 tp!482508)))

(assert (=> b!1671329 (= tp!482350 e!1071788)))

(declare-fun b!1672700 () Bool)

(declare-fun tp!482509 () Bool)

(declare-fun tp!482507 () Bool)

(assert (=> b!1672700 (= e!1071788 (and tp!482509 tp!482507))))

(declare-fun b!1672698 () Bool)

(declare-fun tp!482510 () Bool)

(declare-fun tp!482506 () Bool)

(assert (=> b!1672698 (= e!1071788 (and tp!482510 tp!482506))))

(assert (= (and b!1671329 (is-ElementMatch!4572 (regex!3244 (h!23820 (t!152640 rules!1846))))) b!1672697))

(assert (= (and b!1671329 (is-Concat!7907 (regex!3244 (h!23820 (t!152640 rules!1846))))) b!1672698))

(assert (= (and b!1671329 (is-Star!4572 (regex!3244 (h!23820 (t!152640 rules!1846))))) b!1672699))

(assert (= (and b!1671329 (is-Union!4572 (regex!3244 (h!23820 (t!152640 rules!1846))))) b!1672700))

(declare-fun b_lambda!52533 () Bool)

(assert (= b_lambda!52521 (or (and b!1670835 b_free!45445 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))))) (and b!1671344 b_free!45461) (and b!1672695 b_free!45477 (= (toChars!4570 (transformation!3244 (h!23820 (t!152640 (t!152640 rules!1846))))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))))) (and b!1672681 b_free!45473 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457)))))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))))) (and b!1670823 b_free!45441 (= (toChars!4570 (transformation!3244 (h!23820 rules!1846))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))))) (and b!1671330 b_free!45457 (= (toChars!4570 (transformation!3244 (h!23820 (t!152640 rules!1846)))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))))) b_lambda!52533)))

(declare-fun b_lambda!52535 () Bool)

(assert (= b_lambda!52531 (or d!505395 b_lambda!52535)))

(declare-fun bs!398257 () Bool)

(declare-fun d!506211 () Bool)

(assert (= bs!398257 (and d!506211 d!505395)))

(assert (=> bs!398257 (= (dynLambda!8325 lambda!68045 (h!23820 rules!1846)) (regex!3244 (h!23820 rules!1846)))))

(assert (=> b!1672527 d!506211))

(declare-fun b_lambda!52537 () Bool)

(assert (= b_lambda!52509 (or d!505449 b_lambda!52537)))

(declare-fun bs!398258 () Bool)

(declare-fun d!506213 () Bool)

(assert (= bs!398258 (and d!506213 d!505449)))

(assert (=> bs!398258 (= (dynLambda!8320 lambda!68048 (h!23821 tokens!457)) (rulesProduceIndividualToken!1521 thiss!17113 rules!1846 (h!23821 tokens!457)))))

(assert (=> bs!398258 m!2037009))

(assert (=> b!1671426 d!506213))

(declare-fun b_lambda!52539 () Bool)

(assert (= b_lambda!52517 (or (and b!1672681 b_free!45473) (and b!1671344 b_free!45461 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 tokens!457))))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457)))))))) (and b!1670823 b_free!45441 (= (toChars!4570 (transformation!3244 (h!23820 rules!1846))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457)))))))) (and b!1670835 b_free!45445 (= (toChars!4570 (transformation!3244 (rule!5134 (h!23821 tokens!457)))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457)))))))) (and b!1671330 b_free!45457 (= (toChars!4570 (transformation!3244 (h!23820 (t!152640 rules!1846)))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457)))))))) (and b!1672695 b_free!45477 (= (toChars!4570 (transformation!3244 (h!23820 (t!152640 (t!152640 rules!1846))))) (toChars!4570 (transformation!3244 (rule!5134 (h!23821 (t!152641 (t!152641 tokens!457)))))))) b_lambda!52539)))

(push 1)

(assert (not b!1671435))

(assert (not d!506151))

(assert (not bm!106658))

(assert (not b!1672190))

(assert (not d!505651))

(assert (not d!505817))

(assert (not b!1671794))

(assert (not b_lambda!52533))

(assert (not b!1671524))

(assert (not b_next!46177))

(assert (not b!1672652))

(assert (not b!1672104))

(assert tp_is_empty!7419)

(assert (not d!505897))

(assert (not d!506023))

(assert (not b!1671530))

(assert (not b!1672564))

(assert (not b!1672436))

(assert (not d!506145))

(assert (not b!1671901))

(assert (not b!1672042))

(assert (not d!505787))

(assert (not b!1671821))

(assert (not b!1672513))

(assert (not d!505941))

(assert (not b!1672620))

(assert (not b!1671786))

(assert (not d!505727))

(assert (not b!1672108))

(assert (not b!1672194))

(assert (not d!505819))

(assert (not b!1672660))

(assert (not b!1672491))

(assert (not b!1672413))

(assert (not b!1672481))

(assert (not b!1672461))

(assert (not b!1671765))

(assert (not b!1671902))

(assert (not d!505587))

(assert (not b!1672442))

(assert (not b!1671836))

(assert (not b!1671763))

(assert (not b!1671758))

(assert (not b!1671436))

(assert (not b!1671998))

(assert (not b!1671993))

(assert (not b_lambda!52523))

(assert (not d!505739))

(assert (not d!505605))

(assert b_and!118923)

(assert (not b!1672599))

(assert (not b!1672066))

(assert (not tb!95903))

(assert (not b!1671892))

(assert (not b!1671909))

(assert (not b!1672658))

(assert (not d!506165))

(assert (not b!1672096))

(assert (not b!1671808))

(assert (not b!1672680))

(assert (not b!1672285))

(assert (not b!1671818))

(assert (not b!1672698))

(assert (not d!505793))

(assert (not b!1672439))

(assert (not b!1672478))

(assert (not d!505581))

(assert (not bm!106623))

(assert (not b!1672091))

(assert (not d!505797))

(assert (not b!1672089))

(assert (not b!1672552))

(assert (not d!505569))

(assert (not bm!106660))

(assert (not b!1672425))

(assert (not bm!106586))

(assert (not d!506139))

(assert (not d!505847))

(assert (not b!1672687))

(assert (not d!506051))

(assert (not b!1672292))

(assert (not b!1671789))

(assert (not b!1672411))

(assert (not b!1671626))

(assert (not d!506171))

(assert (not d!505895))

(assert (not b!1671451))

(assert (not b!1671899))

(assert (not b!1671903))

(assert (not d!505647))

(assert (not b!1672097))

(assert (not b!1672415))

(assert (not bm!106620))

(assert (not b!1671873))

(assert (not d!505669))

(assert (not b!1671773))

(assert (not b!1672596))

(assert (not d!506209))

(assert (not b!1670980))

(assert (not d!505827))

(assert (not bm!106621))

(assert (not tb!95911))

(assert (not b!1672015))

(assert (not b!1672471))

(assert (not bm!106666))

(assert (not d!505845))

(assert (not b!1672070))

(assert (not bm!106602))

(assert (not b!1672672))

(assert (not b!1672431))

(assert (not b!1672530))

(assert (not b!1671552))

(assert (not d!505735))

(assert (not b!1672514))

(assert (not b!1672474))

(assert (not b!1672682))

(assert (not d!505887))

(assert (not b!1671550))

(assert (not b!1672047))

(assert (not b!1671804))

(assert (not d!505723))

(assert (not d!505667))

(assert (not b!1672027))

(assert (not b!1672587))

(assert (not d!505779))

(assert (not d!506109))

(assert (not b!1672586))

(assert (not b!1672666))

(assert (not d!506191))

(assert (not d!505603))

(assert (not b!1671522))

(assert (not d!505645))

(assert (not d!505577))

(assert (not b!1671438))

(assert (not b!1672421))

(assert (not b!1671489))

(assert (not d!505759))

(assert (not b!1671913))

(assert (not b!1671882))

(assert (not b!1672615))

(assert (not b!1671437))

(assert (not b!1672092))

(assert (not b!1672610))

(assert (not d!505921))

(assert (not b!1672286))

(assert (not b!1671502))

(assert (not b!1671768))

(assert (not d!505643))

(assert (not b!1671811))

(assert (not d!505601))

(assert (not b!1672308))

(assert (not b!1671906))

(assert (not bm!106682))

(assert (not d!505753))

(assert b_and!118919)

(assert (not b!1672637))

(assert (not b!1671910))

(assert (not d!505731))

(assert (not b!1672626))

(assert (not b!1672655))

(assert (not b_lambda!52535))

(assert (not b!1671871))

(assert (not d!506021))

(assert (not b!1672086))

(assert (not b!1672516))

(assert (not b!1671631))

(assert (not d!505775))

(assert (not b!1672443))

(assert (not b!1672422))

(assert (not b!1671889))

(assert (not d!505617))

(assert (not b!1672589))

(assert (not b!1672101))

(assert (not b!1672074))

(assert (not d!506207))

(assert (not b!1672699))

(assert (not b!1672309))

(assert (not bm!106676))

(assert (not d!505641))

(assert (not bm!106670))

(assert (not b!1672635))

(assert (not b!1671462))

(assert (not b!1671623))

(assert (not b!1672410))

(assert (not d!505709))

(assert (not b!1671548))

(assert (not b!1672156))

(assert (not d!505755))

(assert (not b!1671788))

(assert (not b!1672018))

(assert (not b!1672114))

(assert (not d!505961))

(assert (not d!505761))

(assert (not d!505925))

(assert (not tb!95943))

(assert (not b!1672146))

(assert (not b!1672196))

(assert (not b!1672160))

(assert (not b!1672676))

(assert (not b!1671888))

(assert (not b_lambda!52537))

(assert (not d!505863))

(assert (not b!1672518))

(assert (not b!1671799))

(assert (not b!1672427))

(assert (not d!505813))

(assert (not b!1671757))

(assert (not b!1672611))

(assert (not b!1671562))

(assert (not d!505635))

(assert (not d!505649))

(assert (not b!1672151))

(assert (not d!505591))

(assert (not b!1671762))

(assert (not b_lambda!52511))

(assert (not b!1672662))

(assert (not b_next!46159))

(assert (not b!1672409))

(assert (not b!1672557))

(assert (not b!1671824))

(assert (not d!506097))

(assert (not d!505877))

(assert (not b!1672088))

(assert (not d!506161))

(assert (not b!1671914))

(assert (not b!1672154))

(assert (not b!1672678))

(assert (not b_next!46147))

(assert (not b!1671946))

(assert (not b!1671904))

(assert (not b!1672694))

(assert (not b!1671632))

(assert (not b!1672269))

(assert (not b!1671501))

(assert (not b!1672080))

(assert (not b!1671795))

(assert (not b!1671588))

(assert (not d!506163))

(assert (not d!506067))

(assert (not b!1672554))

(assert (not d!505859))

(assert (not b!1671782))

(assert (not b!1671817))

(assert (not b!1671932))

(assert (not d!505621))

(assert (not d!506159))

(assert (not b!1672625))

(assert (not b!1672479))

(assert (not b!1672310))

(assert (not b!1671814))

(assert (not d!506157))

(assert (not b!1671555))

(assert (not b!1671511))

(assert (not b!1672195))

(assert (not d!506143))

(assert (not b!1672110))

(assert (not tb!95935))

(assert (not b!1672545))

(assert (not b!1672153))

(assert (not b!1671793))

(assert (not b!1671819))

(assert (not d!506199))

(assert (not d!505917))

(assert (not d!505821))

(assert (not b!1671792))

(assert (not b!1671896))

(assert (not d!505907))

(assert (not b!1672382))

(assert (not d!506141))

(assert (not b!1672483))

(assert (not b!1671797))

(assert (not bm!106672))

(assert (not b!1672597))

(assert (not b!1671490))

(assert (not d!505945))

(assert (not b!1672646))

(assert (not d!505843))

(assert (not b_next!46175))

(assert (not d!505873))

(assert (not b!1672082))

(assert (not b_next!46181))

(assert (not b!1671529))

(assert (not b!1671514))

(assert (not b!1671783))

(assert (not b!1671895))

(assert (not b!1671540))

(assert (not b!1671893))

(assert (not b!1671912))

(assert (not b!1672109))

(assert (not bm!106661))

(assert (not b!1672674))

(assert (not b!1671509))

(assert b_and!118929)

(assert (not b!1672263))

(assert (not d!505613))

(assert (not b!1672529))

(assert (not b!1671785))

(assert (not d!506125))

(assert (not d!505861))

(assert (not b!1672664))

(assert (not d!506149))

(assert b_and!118925)

(assert (not b!1672312))

(assert (not b!1671441))

(assert (not b_next!46161))

(assert (not b!1672609))

(assert (not b!1671770))

(assert (not b!1671628))

(assert (not b!1672424))

(assert (not b!1672604))

(assert (not b!1672331))

(assert (not d!506127))

(assert (not d!505737))

(assert (not b!1671440))

(assert (not b!1672553))

(assert (not d!505715))

(assert (not b!1671943))

(assert (not d!505747))

(assert (not d!506173))

(assert (not b!1672094))

(assert (not d!505789))

(assert (not d!505811))

(assert (not bm!106612))

(assert (not b!1672294))

(assert (not b!1672520))

(assert (not d!505623))

(assert (not bm!106590))

(assert (not d!505781))

(assert (not b!1672670))

(assert (not b!1672463))

(assert (not b!1671775))

(assert (not d!505777))

(assert (not d!505867))

(assert (not d!505713))

(assert (not b!1671421))

(assert (not b_next!46165))

(assert (not b!1672512))

(assert (not b!1671891))

(assert (not bm!106675))

(assert (not b!1672129))

(assert (not b!1672002))

(assert (not d!506153))

(assert (not d!505855))

(assert (not b!1672527))

(assert (not d!505823))

(assert b_and!118949)

(assert (not d!505665))

(assert (not b!1672025))

(assert (not b!1671917))

(assert (not b!1672476))

(assert (not d!505783))

(assert (not b!1671866))

(assert (not b!1671764))

(assert (not d!505607))

(assert (not b_next!46149))

(assert (not b!1672017))

(assert (not d!505743))

(assert (not b!1672639))

(assert (not b_lambda!52497))

(assert (not d!505841))

(assert (not b!1672073))

(assert (not b!1672667))

(assert (not d!506047))

(assert (not b!1672434))

(assert (not b!1671872))

(assert (not tb!95919))

(assert (not d!505933))

(assert (not d!505937))

(assert (not b!1671777))

(assert (not d!505741))

(assert (not b!1671523))

(assert (not d!505899))

(assert (not b!1671534))

(assert (not b!1671526))

(assert (not b!1672688))

(assert (not b!1671807))

(assert (not d!505871))

(assert (not b!1672159))

(assert (not b_next!46143))

(assert (not b!1672271))

(assert (not b!1672671))

(assert (not b!1671933))

(assert (not d!505839))

(assert (not d!505969))

(assert (not b!1672643))

(assert (not d!505631))

(assert (not d!505803))

(assert (not b!1672651))

(assert (not d!505951))

(assert (not d!505885))

(assert (not b!1671883))

(assert (not d!505575))

(assert (not b!1671013))

(assert (not b_lambda!52519))

(assert (not bm!106589))

(assert (not b!1672559))

(assert (not b!1671822))

(assert (not b!1672383))

(assert (not d!505965))

(assert (not b!1672612))

(assert (not b!1671445))

(assert (not d!505725))

(assert (not b!1672696))

(assert (not b!1672679))

(assert (not bm!106681))

(assert (not d!505891))

(assert (not b_lambda!52513))

(assert (not d!506117))

(assert (not b!1672601))

(assert (not b!1672691))

(assert (not b!1672567))

(assert (not b!1672381))

(assert (not b!1672550))

(assert (not d!505967))

(assert (not b!1671813))

(assert (not d!506147))

(assert (not b!1672192))

(assert (not b!1671781))

(assert (not b!1672619))

(assert (not b!1671947))

(assert (not b!1671539))

(assert b_and!118921)

(assert (not bs!398258))

(assert (not b!1672465))

(assert (not bm!106624))

(assert (not d!505771))

(assert (not b_lambda!52539))

(assert (not b!1672645))

(assert (not d!505939))

(assert (not d!506179))

(assert (not b!1671527))

(assert (not b!1672385))

(assert (not b!1671798))

(assert (not d!505749))

(assert (not b!1672563))

(assert (not d!506111))

(assert (not b!1671778))

(assert (not d!506099))

(assert (not b!1672690))

(assert (not b!1671784))

(assert (not b!1671992))

(assert (not d!506187))

(assert (not b!1672606))

(assert (not b!1672641))

(assert (not b!1671463))

(assert (not d!506169))

(assert (not b_next!46145))

(assert (not b!1671908))

(assert (not b!1672584))

(assert (not b!1671937))

(assert (not d!505655))

(assert (not b!1672313))

(assert (not b!1671874))

(assert (not b!1672686))

(assert (not b!1671444))

(assert (not b!1671894))

(assert (not d!506105))

(assert (not d!505851))

(assert (not b!1672131))

(assert (not b!1672593))

(assert (not d!506107))

(assert b_and!118927)

(assert (not b!1672700))

(assert b_and!118953)

(assert (not b!1672603))

(assert (not b!1672675))

(assert (not b!1672654))

(assert (not b!1671556))

(assert b_and!118931)

(assert (not d!505857))

(assert (not b_next!46179))

(assert (not b!1671900))

(assert (not d!505785))

(assert (not b!1672618))

(assert (not b!1671812))

(assert (not b!1672650))

(assert (not b!1672558))

(assert (not b!1672462))

(assert (not d!505585))

(assert (not d!505923))

(assert (not d!505663))

(assert (not b!1672081))

(assert (not d!505589))

(assert (not b_lambda!52501))

(assert (not d!506183))

(assert (not d!505571))

(assert (not d!505653))

(assert (not b!1671877))

(assert (not b!1672063))

(assert (not b!1672083))

(assert (not d!506201))

(assert (not b!1671787))

(assert (not d!505773))

(assert (not b!1672677))

(assert (not b!1672067))

(assert (not b!1672636))

(assert (not bm!106662))

(assert (not b!1671536))

(assert (not d!505763))

(assert (not b!1671905))

(assert (not d!505791))

(assert (not b!1672193))

(assert (not d!506177))

(assert (not b!1671916))

(assert (not b!1672184))

(assert (not b!1672062))

(assert (not d!505729))

(assert (not b!1671886))

(assert (not b!1672133))

(assert (not d!505745))

(assert (not b!1671493))

(assert (not d!505769))

(assert (not b!1671557))

(assert (not d!506155))

(assert (not b!1672640))

(assert (not d!505837))

(assert (not b!1671554))

(assert (not d!506123))

(assert (not b!1672598))

(assert (not b!1672475))

(assert (not b!1671779))

(assert (not b!1671776))

(assert (not b!1671774))

(assert (not bm!106611))

(assert (not b!1672648))

(assert (not b!1671528))

(assert (not d!505815))

(assert (not d!505615))

(assert (not b!1671434))

(assert (not b!1672384))

(assert (not d!505949))

(assert (not b!1671835))

(assert (not b!1671806))

(assert (not b!1671531))

(assert (not b!1671800))

(assert (not b!1672437))

(assert (not b!1671803))

(assert (not b!1671551))

(assert (not b!1671815))

(assert (not b!1672668))

(assert b_and!118955)

(assert (not d!505953))

(assert (not d!505757))

(assert (not d!505915))

(assert (not b!1671791))

(assert (not b!1671449))

(assert (not b!1672466))

(assert (not b!1671801))

(assert (not d!505609))

(assert (not bm!106591))

(assert (not b!1671433))

(assert (not b!1672607))

(assert (not b!1671510))

(assert (not b!1672099))

(assert (not b!1672515))

(assert (not b!1672592))

(assert (not b!1672132))

(assert (not d!505853))

(assert (not b!1672663))

(assert (not b!1672268))

(assert (not b_lambda!52499))

(assert (not d!505625))

(assert (not b!1671537))

(assert (not d!505751))

(assert (not b!1671810))

(assert (not d!505733))

(assert (not b!1672614))

(assert (not b!1672311))

(assert (not d!505707))

(assert (not d!505799))

(assert (not b!1671561))

(assert (not d!505849))

(assert (not b!1672566))

(assert (not b!1671560))

(assert (not b!1672060))

(assert (not b!1671994))

(assert (not b!1671945))

(assert (not d!505633))

(assert (not b!1671625))

(assert (not b!1671772))

(assert (not tb!95927))

(assert (not b!1672473))

(assert (not b!1672659))

(assert (not b!1672647))

(assert (not b!1671942))

(assert (not b_lambda!52515))

(assert (not d!505807))

(assert (not b!1672616))

(assert (not b!1672477))

(assert (not b!1672264))

(assert (not b_next!46163))

(assert (not b!1671559))

(assert (not b!1671887))

(assert (not d!505927))

(assert (not b!1672265))

(assert (not b!1672045))

(assert (not b!1671936))

(assert (not b!1671761))

(assert (not bm!106603))

(assert (not b!1672613))

(assert (not b!1672693))

(assert (not b!1672482))

(assert (not d!505947))

(assert (not b!1671427))

(assert (not b!1672270))

(assert b_and!118917)

(assert (not b!1672448))

(assert (not b!1672005))

(assert (not b!1672105))

(assert (not b!1672464))

(assert (not b!1671890))

(assert (not d!505611))

(assert (not b!1672090))

(assert (not bm!106606))

(assert b_and!118951)

(assert (not b!1672044))

(assert (not b!1672644))

(assert (not d!505913))

(assert (not b!1672112))

(assert (not b!1672560))

(assert (not d!505893))

(assert (not bm!106613))

(assert (not b!1671442))

(assert (not b!1672602))

(assert (not b!1671447))

(assert (not b!1672026))

(assert (not d!506055))

(assert (not b!1672429))

(assert (not b!1672656))

(assert (not b!1672266))

(assert (not b!1671859))

(assert (not b!1672472))

(assert (not b!1672692))

(assert (not d!505619))

(assert (not b!1672386))

(assert (not b!1671897))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!46177))

(assert b_and!118923)

(assert b_and!118919)

(assert (not b_next!46159))

(assert (not b_next!46147))

(assert (not b_next!46165))

(assert (not b_next!46143))

(assert b_and!118921)

(assert (not b_next!46145))

(assert (not b_next!46179))

(assert b_and!118955)

(assert (not b_next!46163))

(assert (not b_next!46181))

(assert (not b_next!46175))

(assert b_and!118929)

(assert b_and!118925)

(assert (not b_next!46161))

(assert b_and!118949)

(assert (not b_next!46149))

(assert b_and!118927)

(assert b_and!118953)

(assert b_and!118931)

(assert b_and!118917)

(assert b_and!118951)

(check-sat)

(pop 1)

