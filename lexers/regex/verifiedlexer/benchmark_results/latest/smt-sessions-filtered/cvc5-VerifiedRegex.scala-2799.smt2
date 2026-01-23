; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!155556 () Bool)

(assert start!155556)

(declare-fun b!1632341 () Bool)

(declare-fun b_free!44079 () Bool)

(declare-fun b_next!44783 () Bool)

(assert (=> b!1632341 (= b_free!44079 (not b_next!44783))))

(declare-fun tp!473775 () Bool)

(declare-fun b_and!115749 () Bool)

(assert (=> b!1632341 (= tp!473775 b_and!115749)))

(declare-fun b_free!44081 () Bool)

(declare-fun b_next!44785 () Bool)

(assert (=> b!1632341 (= b_free!44081 (not b_next!44785))))

(declare-fun tp!473773 () Bool)

(declare-fun b_and!115751 () Bool)

(assert (=> b!1632341 (= tp!473773 b_and!115751)))

(declare-fun b!1632322 () Bool)

(declare-fun b_free!44083 () Bool)

(declare-fun b_next!44787 () Bool)

(assert (=> b!1632322 (= b_free!44083 (not b_next!44787))))

(declare-fun tp!473778 () Bool)

(declare-fun b_and!115753 () Bool)

(assert (=> b!1632322 (= tp!473778 b_and!115753)))

(declare-fun b_free!44085 () Bool)

(declare-fun b_next!44789 () Bool)

(assert (=> b!1632322 (= b_free!44085 (not b_next!44789))))

(declare-fun tp!473777 () Bool)

(declare-fun b_and!115755 () Bool)

(assert (=> b!1632322 (= tp!473777 b_and!115755)))

(declare-fun b!1632315 () Bool)

(declare-fun e!1046837 () Bool)

(declare-fun e!1046838 () Bool)

(assert (=> b!1632315 (= e!1046837 e!1046838)))

(declare-fun res!730385 () Bool)

(assert (=> b!1632315 (=> res!730385 e!1046838)))

(declare-datatypes ((C!9146 0))(
  ( (C!9147 (val!5169 Int)) )
))
(declare-datatypes ((List!17993 0))(
  ( (Nil!17923) (Cons!17923 (h!23324 C!9146) (t!149534 List!17993)) )
))
(declare-fun lt!593501 () List!17993)

(declare-datatypes ((List!17994 0))(
  ( (Nil!17924) (Cons!17924 (h!23325 (_ BitVec 16)) (t!149535 List!17994)) )
))
(declare-datatypes ((TokenValue!3248 0))(
  ( (FloatLiteralValue!6496 (text!23181 List!17994)) (TokenValueExt!3247 (__x!11798 Int)) (Broken!16240 (value!99651 List!17994)) (Object!3317) (End!3248) (Def!3248) (Underscore!3248) (Match!3248) (Else!3248) (Error!3248) (Case!3248) (If!3248) (Extends!3248) (Abstract!3248) (Class!3248) (Val!3248) (DelimiterValue!6496 (del!3308 List!17994)) (KeywordValue!3254 (value!99652 List!17994)) (CommentValue!6496 (value!99653 List!17994)) (WhitespaceValue!6496 (value!99654 List!17994)) (IndentationValue!3248 (value!99655 List!17994)) (String!20573) (Int32!3248) (Broken!16241 (value!99656 List!17994)) (Boolean!3249) (Unit!29198) (OperatorValue!3251 (op!3308 List!17994)) (IdentifierValue!6496 (value!99657 List!17994)) (IdentifierValue!6497 (value!99658 List!17994)) (WhitespaceValue!6497 (value!99659 List!17994)) (True!6496) (False!6496) (Broken!16242 (value!99660 List!17994)) (Broken!16243 (value!99661 List!17994)) (True!6497) (RightBrace!3248) (RightBracket!3248) (Colon!3248) (Null!3248) (Comma!3248) (LeftBracket!3248) (False!6497) (LeftBrace!3248) (ImaginaryLiteralValue!3248 (text!23182 List!17994)) (StringLiteralValue!9744 (value!99662 List!17994)) (EOFValue!3248 (value!99663 List!17994)) (IdentValue!3248 (value!99664 List!17994)) (DelimiterValue!6497 (value!99665 List!17994)) (DedentValue!3248 (value!99666 List!17994)) (NewLineValue!3248 (value!99667 List!17994)) (IntegerValue!9744 (value!99668 (_ BitVec 32)) (text!23183 List!17994)) (IntegerValue!9745 (value!99669 Int) (text!23184 List!17994)) (Times!3248) (Or!3248) (Equal!3248) (Minus!3248) (Broken!16244 (value!99670 List!17994)) (And!3248) (Div!3248) (LessEqual!3248) (Mod!3248) (Concat!7734) (Not!3248) (Plus!3248) (SpaceValue!3248 (value!99671 List!17994)) (IntegerValue!9746 (value!99672 Int) (text!23185 List!17994)) (StringLiteralValue!9745 (text!23186 List!17994)) (FloatLiteralValue!6497 (text!23187 List!17994)) (BytesLiteralValue!3248 (value!99673 List!17994)) (CommentValue!6497 (value!99674 List!17994)) (StringLiteralValue!9746 (value!99675 List!17994)) (ErrorTokenValue!3248 (msg!3309 List!17994)) )
))
(declare-datatypes ((IArray!11933 0))(
  ( (IArray!11934 (innerList!6024 List!17993)) )
))
(declare-datatypes ((Conc!5964 0))(
  ( (Node!5964 (left!14393 Conc!5964) (right!14723 Conc!5964) (csize!12158 Int) (cheight!6175 Int)) (Leaf!8764 (xs!8800 IArray!11933) (csize!12159 Int)) (Empty!5964) )
))
(declare-datatypes ((BalanceConc!11872 0))(
  ( (BalanceConc!11873 (c!265689 Conc!5964)) )
))
(declare-datatypes ((Regex!4486 0))(
  ( (ElementMatch!4486 (c!265690 C!9146)) (Concat!7735 (regOne!9484 Regex!4486) (regTwo!9484 Regex!4486)) (EmptyExpr!4486) (Star!4486 (reg!4815 Regex!4486)) (EmptyLang!4486) (Union!4486 (regOne!9485 Regex!4486) (regTwo!9485 Regex!4486)) )
))
(declare-datatypes ((String!20574 0))(
  ( (String!20575 (value!99676 String)) )
))
(declare-datatypes ((TokenValueInjection!6156 0))(
  ( (TokenValueInjection!6157 (toValue!4589 Int) (toChars!4448 Int)) )
))
(declare-datatypes ((Rule!6116 0))(
  ( (Rule!6117 (regex!3158 Regex!4486) (tag!3438 String!20574) (isSeparator!3158 Bool) (transformation!3158 TokenValueInjection!6156)) )
))
(declare-datatypes ((Token!5882 0))(
  ( (Token!5883 (value!99677 TokenValue!3248) (rule!4994 Rule!6116) (size!14319 Int) (originalCharacters!3972 List!17993)) )
))
(declare-datatypes ((tuple2!17528 0))(
  ( (tuple2!17529 (_1!10166 Token!5882) (_2!10166 List!17993)) )
))
(declare-fun lt!593497 () tuple2!17528)

(declare-datatypes ((List!17995 0))(
  ( (Nil!17925) (Cons!17925 (h!23326 Token!5882) (t!149536 List!17995)) )
))
(declare-fun tokens!457 () List!17995)

(assert (=> b!1632315 (= res!730385 (or (not (= (_1!10166 lt!593497) (h!23326 tokens!457))) (not (= (_2!10166 lt!593497) lt!593501))))))

(declare-datatypes ((Option!3347 0))(
  ( (None!3346) (Some!3346 (v!24411 tuple2!17528)) )
))
(declare-fun lt!593500 () Option!3347)

(declare-fun get!5182 (Option!3347) tuple2!17528)

(assert (=> b!1632315 (= lt!593497 (get!5182 lt!593500))))

(declare-datatypes ((List!17996 0))(
  ( (Nil!17926) (Cons!17926 (h!23327 Rule!6116) (t!149537 List!17996)) )
))
(declare-fun rules!1846 () List!17996)

(declare-datatypes ((LexerInterface!2787 0))(
  ( (LexerInterfaceExt!2784 (__x!11799 Int)) (Lexer!2785) )
))
(declare-fun thiss!17113 () LexerInterface!2787)

(declare-datatypes ((Unit!29199 0))(
  ( (Unit!29200) )
))
(declare-fun lt!593514 () Unit!29199)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!123 (LexerInterface!2787 List!17996 Token!5882 Rule!6116 List!17993) Unit!29199)

(assert (=> b!1632315 (= lt!593514 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!123 thiss!17113 rules!1846 (h!23326 tokens!457) (rule!4994 (h!23326 tokens!457)) lt!593501))))

(declare-fun b!1632316 () Bool)

(declare-fun e!1046841 () Bool)

(declare-fun lt!593518 () List!17993)

(declare-fun head!3488 (List!17993) C!9146)

(assert (=> b!1632316 (= e!1046841 (= lt!593518 (Cons!17923 (head!3488 lt!593501) Nil!17923)))))

(declare-fun b!1632317 () Bool)

(declare-fun e!1046848 () Bool)

(assert (=> b!1632317 (= e!1046848 e!1046837)))

(declare-fun res!730402 () Bool)

(assert (=> b!1632317 (=> res!730402 e!1046837)))

(declare-fun lt!593498 () Regex!4486)

(declare-fun lt!593510 () List!17993)

(declare-fun prefixMatch!421 (Regex!4486 List!17993) Bool)

(declare-fun ++!4787 (List!17993 List!17993) List!17993)

(assert (=> b!1632317 (= res!730402 (prefixMatch!421 lt!593498 (++!4787 (originalCharacters!3972 (h!23326 tokens!457)) lt!593510)))))

(declare-fun e!1046843 () Bool)

(assert (=> b!1632317 e!1046843))

(declare-fun res!730388 () Bool)

(assert (=> b!1632317 (=> (not res!730388) (not e!1046843))))

(declare-fun lt!593516 () tuple2!17528)

(assert (=> b!1632317 (= res!730388 (= (_1!10166 lt!593516) (h!23326 tokens!457)))))

(declare-fun lt!593519 () Option!3347)

(assert (=> b!1632317 (= lt!593516 (get!5182 lt!593519))))

(declare-fun isDefined!2714 (Option!3347) Bool)

(assert (=> b!1632317 (isDefined!2714 lt!593519)))

(declare-fun lt!593504 () List!17993)

(declare-fun maxPrefix!1351 (LexerInterface!2787 List!17996 List!17993) Option!3347)

(assert (=> b!1632317 (= lt!593519 (maxPrefix!1351 thiss!17113 rules!1846 lt!593504))))

(assert (=> b!1632317 (isDefined!2714 (maxPrefix!1351 thiss!17113 rules!1846 (originalCharacters!3972 (h!23326 tokens!457))))))

(declare-fun b!1632318 () Bool)

(declare-fun e!1046845 () Bool)

(declare-fun e!1046834 () Bool)

(assert (=> b!1632318 (= e!1046845 e!1046834)))

(declare-fun res!730384 () Bool)

(assert (=> b!1632318 (=> (not res!730384) (not e!1046834))))

(declare-fun lt!593493 () List!17993)

(declare-fun lt!593491 () List!17993)

(assert (=> b!1632318 (= res!730384 (= lt!593493 lt!593491))))

(assert (=> b!1632318 (= lt!593491 (++!4787 lt!593504 lt!593501))))

(declare-fun lt!593509 () BalanceConc!11872)

(declare-fun list!7053 (BalanceConc!11872) List!17993)

(assert (=> b!1632318 (= lt!593493 (list!7053 lt!593509))))

(declare-fun lt!593507 () BalanceConc!11872)

(assert (=> b!1632318 (= lt!593501 (list!7053 lt!593507))))

(declare-fun lt!593512 () BalanceConc!11872)

(assert (=> b!1632318 (= lt!593504 (list!7053 lt!593512))))

(declare-fun charsOf!1807 (Token!5882) BalanceConc!11872)

(assert (=> b!1632318 (= lt!593512 (charsOf!1807 (h!23326 tokens!457)))))

(declare-datatypes ((IArray!11935 0))(
  ( (IArray!11936 (innerList!6025 List!17995)) )
))
(declare-datatypes ((Conc!5965 0))(
  ( (Node!5965 (left!14394 Conc!5965) (right!14724 Conc!5965) (csize!12160 Int) (cheight!6176 Int)) (Leaf!8765 (xs!8801 IArray!11935) (csize!12161 Int)) (Empty!5965) )
))
(declare-datatypes ((BalanceConc!11874 0))(
  ( (BalanceConc!11875 (c!265691 Conc!5965)) )
))
(declare-datatypes ((tuple2!17530 0))(
  ( (tuple2!17531 (_1!10167 BalanceConc!11874) (_2!10167 BalanceConc!11872)) )
))
(declare-fun lt!593505 () tuple2!17530)

(declare-fun lex!1271 (LexerInterface!2787 List!17996 BalanceConc!11872) tuple2!17530)

(assert (=> b!1632318 (= lt!593505 (lex!1271 thiss!17113 rules!1846 lt!593507))))

(declare-fun lt!593508 () BalanceConc!11874)

(declare-fun print!1318 (LexerInterface!2787 BalanceConc!11874) BalanceConc!11872)

(assert (=> b!1632318 (= lt!593507 (print!1318 thiss!17113 lt!593508))))

(declare-fun seqFromList!2065 (List!17995) BalanceConc!11874)

(assert (=> b!1632318 (= lt!593508 (seqFromList!2065 (t!149536 tokens!457)))))

(assert (=> b!1632318 (= lt!593509 (print!1318 thiss!17113 (seqFromList!2065 tokens!457)))))

(declare-fun b!1632319 () Bool)

(declare-fun rulesValidInductive!981 (LexerInterface!2787 List!17996) Bool)

(assert (=> b!1632319 (= e!1046838 (rulesValidInductive!981 thiss!17113 rules!1846))))

(declare-fun b!1632320 () Bool)

(declare-fun res!730390 () Bool)

(assert (=> b!1632320 (=> (not res!730390) (not e!1046841))))

(assert (=> b!1632320 (= res!730390 (= lt!593518 (Cons!17923 (head!3488 (originalCharacters!3972 (h!23326 (t!149536 tokens!457)))) Nil!17923)))))

(declare-fun b!1632321 () Bool)

(declare-fun res!730403 () Bool)

(assert (=> b!1632321 (=> res!730403 e!1046838)))

(declare-fun maxPrefixZipper!315 (LexerInterface!2787 List!17996 List!17993) Option!3347)

(assert (=> b!1632321 (= res!730403 (not (= (h!23326 tokens!457) (_1!10166 (get!5182 (maxPrefixZipper!315 thiss!17113 rules!1846 lt!593493))))))))

(declare-fun e!1046850 () Bool)

(assert (=> b!1632322 (= e!1046850 (and tp!473778 tp!473777))))

(declare-fun b!1632323 () Bool)

(declare-fun e!1046851 () Bool)

(declare-fun e!1046831 () Bool)

(assert (=> b!1632323 (= e!1046851 e!1046831)))

(declare-fun res!730397 () Bool)

(assert (=> b!1632323 (=> res!730397 e!1046831)))

(assert (=> b!1632323 (= res!730397 (prefixMatch!421 lt!593498 (++!4787 lt!593504 lt!593518)))))

(declare-fun lt!593513 () BalanceConc!11872)

(assert (=> b!1632323 (= lt!593518 (list!7053 lt!593513))))

(declare-fun b!1632324 () Bool)

(declare-fun res!730386 () Bool)

(declare-fun e!1046835 () Bool)

(assert (=> b!1632324 (=> res!730386 e!1046835)))

(declare-fun isEmpty!10956 (BalanceConc!11874) Bool)

(declare-fun seqFromList!2066 (List!17993) BalanceConc!11872)

(assert (=> b!1632324 (= res!730386 (isEmpty!10956 (_1!10167 (lex!1271 thiss!17113 rules!1846 (seqFromList!2066 lt!593504)))))))

(declare-fun b!1632325 () Bool)

(declare-fun e!1046842 () Bool)

(assert (=> b!1632325 (= e!1046835 e!1046842)))

(declare-fun res!730401 () Bool)

(assert (=> b!1632325 (=> res!730401 e!1046842)))

(assert (=> b!1632325 (= res!730401 (not (isDefined!2714 lt!593500)))))

(declare-fun lt!593503 () Unit!29199)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!361 (LexerInterface!2787 List!17996 List!17993 List!17993) Unit!29199)

(assert (=> b!1632325 (= lt!593503 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!361 thiss!17113 rules!1846 lt!593504 lt!593501))))

(declare-fun b!1632326 () Bool)

(declare-fun res!730396 () Bool)

(assert (=> b!1632326 (=> (not res!730396) (not e!1046843))))

(declare-fun isEmpty!10957 (List!17993) Bool)

(assert (=> b!1632326 (= res!730396 (isEmpty!10957 (_2!10166 lt!593516)))))

(declare-fun tp!473774 () Bool)

(declare-fun b!1632327 () Bool)

(declare-fun e!1046849 () Bool)

(declare-fun e!1046847 () Bool)

(declare-fun inv!23290 (String!20574) Bool)

(declare-fun inv!23293 (TokenValueInjection!6156) Bool)

(assert (=> b!1632327 (= e!1046847 (and tp!473774 (inv!23290 (tag!3438 (rule!4994 (h!23326 tokens!457)))) (inv!23293 (transformation!3158 (rule!4994 (h!23326 tokens!457)))) e!1046849))))

(declare-fun b!1632328 () Bool)

(declare-fun res!730387 () Bool)

(assert (=> b!1632328 (=> (not res!730387) (not e!1046845))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!480 (LexerInterface!2787 List!17995 List!17996) Bool)

(assert (=> b!1632328 (= res!730387 (tokensListTwoByTwoPredicateSeparableList!480 thiss!17113 tokens!457 rules!1846))))

(declare-fun res!730395 () Bool)

(assert (=> start!155556 (=> (not res!730395) (not e!1046845))))

(assert (=> start!155556 (= res!730395 (is-Lexer!2785 thiss!17113))))

(assert (=> start!155556 e!1046845))

(assert (=> start!155556 true))

(declare-fun e!1046836 () Bool)

(assert (=> start!155556 e!1046836))

(declare-fun e!1046829 () Bool)

(assert (=> start!155556 e!1046829))

(declare-fun tp!473779 () Bool)

(declare-fun b!1632329 () Bool)

(declare-fun e!1046846 () Bool)

(assert (=> b!1632329 (= e!1046846 (and tp!473779 (inv!23290 (tag!3438 (h!23327 rules!1846))) (inv!23293 (transformation!3158 (h!23327 rules!1846))) e!1046850))))

(declare-fun b!1632330 () Bool)

(declare-fun res!730394 () Bool)

(assert (=> b!1632330 (=> (not res!730394) (not e!1046845))))

(declare-fun rulesProduceEachTokenIndividuallyList!989 (LexerInterface!2787 List!17996 List!17995) Bool)

(assert (=> b!1632330 (= res!730394 (rulesProduceEachTokenIndividuallyList!989 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1632331 () Bool)

(declare-fun e!1046833 () Bool)

(assert (=> b!1632331 (= e!1046833 e!1046835)))

(declare-fun res!730381 () Bool)

(assert (=> b!1632331 (=> res!730381 e!1046835)))

(declare-fun lt!593495 () List!17993)

(declare-fun lt!593511 () List!17993)

(assert (=> b!1632331 (= res!730381 (or (not (= lt!593495 lt!593511)) (not (= lt!593511 lt!593504)) (not (= lt!593495 lt!593504))))))

(declare-fun printList!902 (LexerInterface!2787 List!17995) List!17993)

(assert (=> b!1632331 (= lt!593511 (printList!902 thiss!17113 (Cons!17925 (h!23326 tokens!457) Nil!17925)))))

(declare-fun lt!593515 () BalanceConc!11872)

(assert (=> b!1632331 (= lt!593495 (list!7053 lt!593515))))

(declare-fun lt!593494 () BalanceConc!11874)

(declare-fun printTailRec!840 (LexerInterface!2787 BalanceConc!11874 Int BalanceConc!11872) BalanceConc!11872)

(assert (=> b!1632331 (= lt!593515 (printTailRec!840 thiss!17113 lt!593494 0 (BalanceConc!11873 Empty!5964)))))

(assert (=> b!1632331 (= lt!593515 (print!1318 thiss!17113 lt!593494))))

(declare-fun singletonSeq!1594 (Token!5882) BalanceConc!11874)

(assert (=> b!1632331 (= lt!593494 (singletonSeq!1594 (h!23326 tokens!457)))))

(assert (=> b!1632331 (= lt!593500 (maxPrefix!1351 thiss!17113 rules!1846 lt!593493))))

(declare-fun b!1632332 () Bool)

(assert (=> b!1632332 (= e!1046842 e!1046851)))

(declare-fun res!730404 () Bool)

(assert (=> b!1632332 (=> res!730404 e!1046851)))

(declare-fun prefixMatchZipperSequence!554 (Regex!4486 BalanceConc!11872) Bool)

(declare-fun ++!4788 (BalanceConc!11872 BalanceConc!11872) BalanceConc!11872)

(assert (=> b!1632332 (= res!730404 (prefixMatchZipperSequence!554 lt!593498 (++!4788 lt!593512 lt!593513)))))

(declare-fun singletonSeq!1595 (C!9146) BalanceConc!11872)

(declare-fun apply!4615 (BalanceConc!11872 Int) C!9146)

(assert (=> b!1632332 (= lt!593513 (singletonSeq!1595 (apply!4615 (charsOf!1807 (h!23326 (t!149536 tokens!457))) 0)))))

(declare-fun rulesRegex!548 (LexerInterface!2787 List!17996) Regex!4486)

(assert (=> b!1632332 (= lt!593498 (rulesRegex!548 thiss!17113 rules!1846))))

(declare-fun b!1632333 () Bool)

(declare-fun e!1046832 () Bool)

(assert (=> b!1632333 (= e!1046832 e!1046833)))

(declare-fun res!730392 () Bool)

(assert (=> b!1632333 (=> res!730392 e!1046833)))

(declare-fun lt!593492 () List!17995)

(declare-fun lt!593506 () List!17995)

(declare-fun lt!593502 () List!17995)

(assert (=> b!1632333 (= res!730392 (or (not (= lt!593502 lt!593492)) (not (= lt!593492 lt!593506))))))

(declare-fun list!7054 (BalanceConc!11874) List!17995)

(assert (=> b!1632333 (= lt!593492 (list!7054 lt!593508))))

(assert (=> b!1632333 (= lt!593502 lt!593506)))

(declare-fun prepend!692 (BalanceConc!11874 Token!5882) BalanceConc!11874)

(assert (=> b!1632333 (= lt!593506 (list!7054 (prepend!692 (seqFromList!2065 (t!149536 (t!149536 tokens!457))) (h!23326 (t!149536 tokens!457)))))))

(declare-fun lt!593496 () Unit!29199)

(declare-fun seqFromListBHdTlConstructive!235 (Token!5882 List!17995 BalanceConc!11874) Unit!29199)

(assert (=> b!1632333 (= lt!593496 (seqFromListBHdTlConstructive!235 (h!23326 (t!149536 tokens!457)) (t!149536 (t!149536 tokens!457)) (_1!10167 lt!593505)))))

(declare-fun b!1632334 () Bool)

(assert (=> b!1632334 (= e!1046834 (not e!1046832))))

(declare-fun res!730380 () Bool)

(assert (=> b!1632334 (=> res!730380 e!1046832)))

(assert (=> b!1632334 (= res!730380 (not (= lt!593502 (t!149536 tokens!457))))))

(assert (=> b!1632334 (= lt!593502 (list!7054 (_1!10167 lt!593505)))))

(declare-fun lt!593517 () Unit!29199)

(declare-fun theoremInvertabilityWhenTokenListSeparable!232 (LexerInterface!2787 List!17996 List!17995) Unit!29199)

(assert (=> b!1632334 (= lt!593517 (theoremInvertabilityWhenTokenListSeparable!232 thiss!17113 rules!1846 (t!149536 tokens!457)))))

(declare-fun isPrefix!1418 (List!17993 List!17993) Bool)

(assert (=> b!1632334 (isPrefix!1418 lt!593504 lt!593491)))

(declare-fun lt!593499 () Unit!29199)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!943 (List!17993 List!17993) Unit!29199)

(assert (=> b!1632334 (= lt!593499 (lemmaConcatTwoListThenFirstIsPrefix!943 lt!593504 lt!593501))))

(declare-fun b!1632335 () Bool)

(declare-fun res!730400 () Bool)

(assert (=> b!1632335 (=> res!730400 e!1046835)))

(declare-fun rulesProduceIndividualToken!1439 (LexerInterface!2787 List!17996 Token!5882) Bool)

(assert (=> b!1632335 (= res!730400 (not (rulesProduceIndividualToken!1439 thiss!17113 rules!1846 (h!23326 tokens!457))))))

(declare-fun b!1632336 () Bool)

(declare-fun res!730393 () Bool)

(assert (=> b!1632336 (=> res!730393 e!1046837)))

(assert (=> b!1632336 (= res!730393 (prefixMatch!421 lt!593498 (++!4787 lt!593504 lt!593510)))))

(declare-fun b!1632337 () Bool)

(declare-fun res!730391 () Bool)

(assert (=> b!1632337 (=> (not res!730391) (not e!1046845))))

(declare-fun rulesInvariant!2456 (LexerInterface!2787 List!17996) Bool)

(assert (=> b!1632337 (= res!730391 (rulesInvariant!2456 thiss!17113 rules!1846))))

(declare-fun b!1632338 () Bool)

(declare-fun res!730389 () Bool)

(assert (=> b!1632338 (=> (not res!730389) (not e!1046845))))

(assert (=> b!1632338 (= res!730389 (and (not (is-Nil!17925 tokens!457)) (not (is-Nil!17925 (t!149536 tokens!457)))))))

(declare-fun b!1632339 () Bool)

(assert (=> b!1632339 (= e!1046831 e!1046848)))

(declare-fun res!730399 () Bool)

(assert (=> b!1632339 (=> res!730399 e!1046848)))

(declare-datatypes ((tuple2!17532 0))(
  ( (tuple2!17533 (_1!10168 Token!5882) (_2!10168 BalanceConc!11872)) )
))
(declare-datatypes ((Option!3348 0))(
  ( (None!3347) (Some!3347 (v!24412 tuple2!17532)) )
))
(declare-fun isDefined!2715 (Option!3348) Bool)

(declare-fun maxPrefixZipperSequence!682 (LexerInterface!2787 List!17996 BalanceConc!11872) Option!3348)

(assert (=> b!1632339 (= res!730399 (not (isDefined!2715 (maxPrefixZipperSequence!682 thiss!17113 rules!1846 (seqFromList!2066 (originalCharacters!3972 (h!23326 tokens!457)))))))))

(assert (=> b!1632339 (= lt!593518 lt!593510)))

(declare-fun head!3489 (BalanceConc!11872) C!9146)

(assert (=> b!1632339 (= lt!593510 (Cons!17923 (head!3489 lt!593507) Nil!17923))))

(assert (=> b!1632339 e!1046841))

(declare-fun res!730383 () Bool)

(assert (=> b!1632339 (=> (not res!730383) (not e!1046841))))

(assert (=> b!1632339 (= res!730383 (= lt!593504 (originalCharacters!3972 (h!23326 tokens!457))))))

(declare-fun b!1632340 () Bool)

(declare-fun matchR!1985 (Regex!4486 List!17993) Bool)

(assert (=> b!1632340 (= e!1046843 (matchR!1985 (regex!3158 (rule!4994 (h!23326 tokens!457))) lt!593504))))

(assert (=> b!1632341 (= e!1046849 (and tp!473775 tp!473773))))

(declare-fun e!1046840 () Bool)

(declare-fun tp!473776 () Bool)

(declare-fun b!1632342 () Bool)

(declare-fun inv!23294 (Token!5882) Bool)

(assert (=> b!1632342 (= e!1046829 (and (inv!23294 (h!23326 tokens!457)) e!1046840 tp!473776))))

(declare-fun b!1632343 () Bool)

(declare-fun tp!473771 () Bool)

(declare-fun inv!21 (TokenValue!3248) Bool)

(assert (=> b!1632343 (= e!1046840 (and (inv!21 (value!99677 (h!23326 tokens!457))) e!1046847 tp!473771))))

(declare-fun b!1632344 () Bool)

(declare-fun res!730382 () Bool)

(assert (=> b!1632344 (=> res!730382 e!1046833)))

(declare-fun separableTokensPredicate!729 (LexerInterface!2787 Token!5882 Token!5882 List!17996) Bool)

(assert (=> b!1632344 (= res!730382 (not (separableTokensPredicate!729 thiss!17113 (h!23326 tokens!457) (h!23326 (t!149536 tokens!457)) rules!1846)))))

(declare-fun b!1632345 () Bool)

(declare-fun tp!473772 () Bool)

(assert (=> b!1632345 (= e!1046836 (and e!1046846 tp!473772))))

(declare-fun b!1632346 () Bool)

(declare-fun res!730398 () Bool)

(assert (=> b!1632346 (=> (not res!730398) (not e!1046845))))

(declare-fun isEmpty!10958 (List!17996) Bool)

(assert (=> b!1632346 (= res!730398 (not (isEmpty!10958 rules!1846)))))

(assert (= (and start!155556 res!730395) b!1632346))

(assert (= (and b!1632346 res!730398) b!1632337))

(assert (= (and b!1632337 res!730391) b!1632330))

(assert (= (and b!1632330 res!730394) b!1632328))

(assert (= (and b!1632328 res!730387) b!1632338))

(assert (= (and b!1632338 res!730389) b!1632318))

(assert (= (and b!1632318 res!730384) b!1632334))

(assert (= (and b!1632334 (not res!730380)) b!1632333))

(assert (= (and b!1632333 (not res!730392)) b!1632344))

(assert (= (and b!1632344 (not res!730382)) b!1632331))

(assert (= (and b!1632331 (not res!730381)) b!1632335))

(assert (= (and b!1632335 (not res!730400)) b!1632324))

(assert (= (and b!1632324 (not res!730386)) b!1632325))

(assert (= (and b!1632325 (not res!730401)) b!1632332))

(assert (= (and b!1632332 (not res!730404)) b!1632323))

(assert (= (and b!1632323 (not res!730397)) b!1632339))

(assert (= (and b!1632339 res!730383) b!1632320))

(assert (= (and b!1632320 res!730390) b!1632316))

(assert (= (and b!1632339 (not res!730399)) b!1632317))

(assert (= (and b!1632317 res!730388) b!1632326))

(assert (= (and b!1632326 res!730396) b!1632340))

(assert (= (and b!1632317 (not res!730402)) b!1632336))

(assert (= (and b!1632336 (not res!730393)) b!1632315))

(assert (= (and b!1632315 (not res!730385)) b!1632321))

(assert (= (and b!1632321 (not res!730403)) b!1632319))

(assert (= b!1632329 b!1632322))

(assert (= b!1632345 b!1632329))

(assert (= (and start!155556 (is-Cons!17926 rules!1846)) b!1632345))

(assert (= b!1632327 b!1632341))

(assert (= b!1632343 b!1632327))

(assert (= b!1632342 b!1632343))

(assert (= (and start!155556 (is-Cons!17925 tokens!457)) b!1632342))

(declare-fun m!1966217 () Bool)

(assert (=> b!1632340 m!1966217))

(declare-fun m!1966219 () Bool)

(assert (=> b!1632318 m!1966219))

(declare-fun m!1966221 () Bool)

(assert (=> b!1632318 m!1966221))

(declare-fun m!1966223 () Bool)

(assert (=> b!1632318 m!1966223))

(declare-fun m!1966225 () Bool)

(assert (=> b!1632318 m!1966225))

(declare-fun m!1966227 () Bool)

(assert (=> b!1632318 m!1966227))

(declare-fun m!1966229 () Bool)

(assert (=> b!1632318 m!1966229))

(declare-fun m!1966231 () Bool)

(assert (=> b!1632318 m!1966231))

(declare-fun m!1966233 () Bool)

(assert (=> b!1632318 m!1966233))

(declare-fun m!1966235 () Bool)

(assert (=> b!1632318 m!1966235))

(assert (=> b!1632318 m!1966231))

(declare-fun m!1966237 () Bool)

(assert (=> b!1632318 m!1966237))

(declare-fun m!1966239 () Bool)

(assert (=> b!1632326 m!1966239))

(declare-fun m!1966241 () Bool)

(assert (=> b!1632321 m!1966241))

(assert (=> b!1632321 m!1966241))

(declare-fun m!1966243 () Bool)

(assert (=> b!1632321 m!1966243))

(declare-fun m!1966245 () Bool)

(assert (=> b!1632342 m!1966245))

(declare-fun m!1966247 () Bool)

(assert (=> b!1632329 m!1966247))

(declare-fun m!1966249 () Bool)

(assert (=> b!1632329 m!1966249))

(declare-fun m!1966251 () Bool)

(assert (=> b!1632331 m!1966251))

(declare-fun m!1966253 () Bool)

(assert (=> b!1632331 m!1966253))

(declare-fun m!1966255 () Bool)

(assert (=> b!1632331 m!1966255))

(declare-fun m!1966257 () Bool)

(assert (=> b!1632331 m!1966257))

(declare-fun m!1966259 () Bool)

(assert (=> b!1632331 m!1966259))

(declare-fun m!1966261 () Bool)

(assert (=> b!1632331 m!1966261))

(declare-fun m!1966263 () Bool)

(assert (=> b!1632328 m!1966263))

(declare-fun m!1966265 () Bool)

(assert (=> b!1632344 m!1966265))

(declare-fun m!1966267 () Bool)

(assert (=> b!1632339 m!1966267))

(assert (=> b!1632339 m!1966267))

(declare-fun m!1966269 () Bool)

(assert (=> b!1632339 m!1966269))

(assert (=> b!1632339 m!1966269))

(declare-fun m!1966271 () Bool)

(assert (=> b!1632339 m!1966271))

(declare-fun m!1966273 () Bool)

(assert (=> b!1632339 m!1966273))

(declare-fun m!1966275 () Bool)

(assert (=> b!1632317 m!1966275))

(assert (=> b!1632317 m!1966275))

(declare-fun m!1966277 () Bool)

(assert (=> b!1632317 m!1966277))

(declare-fun m!1966279 () Bool)

(assert (=> b!1632317 m!1966279))

(declare-fun m!1966281 () Bool)

(assert (=> b!1632317 m!1966281))

(declare-fun m!1966283 () Bool)

(assert (=> b!1632317 m!1966283))

(declare-fun m!1966285 () Bool)

(assert (=> b!1632317 m!1966285))

(declare-fun m!1966287 () Bool)

(assert (=> b!1632317 m!1966287))

(assert (=> b!1632317 m!1966281))

(declare-fun m!1966289 () Bool)

(assert (=> b!1632323 m!1966289))

(assert (=> b!1632323 m!1966289))

(declare-fun m!1966291 () Bool)

(assert (=> b!1632323 m!1966291))

(declare-fun m!1966293 () Bool)

(assert (=> b!1632323 m!1966293))

(declare-fun m!1966295 () Bool)

(assert (=> b!1632325 m!1966295))

(declare-fun m!1966297 () Bool)

(assert (=> b!1632325 m!1966297))

(declare-fun m!1966299 () Bool)

(assert (=> b!1632330 m!1966299))

(declare-fun m!1966301 () Bool)

(assert (=> b!1632346 m!1966301))

(declare-fun m!1966303 () Bool)

(assert (=> b!1632334 m!1966303))

(declare-fun m!1966305 () Bool)

(assert (=> b!1632334 m!1966305))

(declare-fun m!1966307 () Bool)

(assert (=> b!1632334 m!1966307))

(declare-fun m!1966309 () Bool)

(assert (=> b!1632334 m!1966309))

(declare-fun m!1966311 () Bool)

(assert (=> b!1632327 m!1966311))

(declare-fun m!1966313 () Bool)

(assert (=> b!1632327 m!1966313))

(declare-fun m!1966315 () Bool)

(assert (=> b!1632335 m!1966315))

(declare-fun m!1966317 () Bool)

(assert (=> b!1632315 m!1966317))

(declare-fun m!1966319 () Bool)

(assert (=> b!1632315 m!1966319))

(declare-fun m!1966321 () Bool)

(assert (=> b!1632332 m!1966321))

(declare-fun m!1966323 () Bool)

(assert (=> b!1632332 m!1966323))

(declare-fun m!1966325 () Bool)

(assert (=> b!1632332 m!1966325))

(declare-fun m!1966327 () Bool)

(assert (=> b!1632332 m!1966327))

(assert (=> b!1632332 m!1966323))

(declare-fun m!1966329 () Bool)

(assert (=> b!1632332 m!1966329))

(declare-fun m!1966331 () Bool)

(assert (=> b!1632332 m!1966331))

(assert (=> b!1632332 m!1966325))

(assert (=> b!1632332 m!1966331))

(declare-fun m!1966333 () Bool)

(assert (=> b!1632320 m!1966333))

(declare-fun m!1966335 () Bool)

(assert (=> b!1632343 m!1966335))

(declare-fun m!1966337 () Bool)

(assert (=> b!1632337 m!1966337))

(declare-fun m!1966339 () Bool)

(assert (=> b!1632324 m!1966339))

(assert (=> b!1632324 m!1966339))

(declare-fun m!1966341 () Bool)

(assert (=> b!1632324 m!1966341))

(declare-fun m!1966343 () Bool)

(assert (=> b!1632324 m!1966343))

(declare-fun m!1966345 () Bool)

(assert (=> b!1632316 m!1966345))

(declare-fun m!1966347 () Bool)

(assert (=> b!1632319 m!1966347))

(declare-fun m!1966349 () Bool)

(assert (=> b!1632336 m!1966349))

(assert (=> b!1632336 m!1966349))

(declare-fun m!1966351 () Bool)

(assert (=> b!1632336 m!1966351))

(declare-fun m!1966353 () Bool)

(assert (=> b!1632333 m!1966353))

(declare-fun m!1966355 () Bool)

(assert (=> b!1632333 m!1966355))

(declare-fun m!1966357 () Bool)

(assert (=> b!1632333 m!1966357))

(declare-fun m!1966359 () Bool)

(assert (=> b!1632333 m!1966359))

(declare-fun m!1966361 () Bool)

(assert (=> b!1632333 m!1966361))

(assert (=> b!1632333 m!1966357))

(assert (=> b!1632333 m!1966359))

(push 1)

(assert (not b!1632333))

(assert (not b!1632343))

(assert (not b!1632318))

(assert (not b!1632344))

(assert (not b_next!44787))

(assert (not b!1632334))

(assert (not b_next!44789))

(assert b_and!115751)

(assert b_and!115753)

(assert (not b_next!44785))

(assert (not b_next!44783))

(assert (not b!1632329))

(assert (not b!1632346))

(assert (not b!1632324))

(assert (not b!1632342))

(assert (not b!1632327))

(assert (not b!1632328))

(assert (not b!1632325))

(assert (not b!1632335))

(assert (not b!1632345))

(assert (not b!1632320))

(assert (not b!1632331))

(assert (not b!1632340))

(assert (not b!1632339))

(assert (not b!1632315))

(assert b_and!115749)

(assert (not b!1632317))

(assert (not b!1632336))

(assert (not b!1632321))

(assert (not b!1632323))

(assert b_and!115755)

(assert (not b!1632330))

(assert (not b!1632332))

(assert (not b!1632316))

(assert (not b!1632319))

(assert (not b!1632337))

(assert (not b!1632326))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!44787))

(assert (not b_next!44789))

(assert b_and!115751)

(assert b_and!115749)

(assert b_and!115753)

(assert (not b_next!44785))

(assert b_and!115755)

(assert (not b_next!44783))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!491714 () Bool)

(declare-fun lt!593609 () BalanceConc!11872)

(assert (=> d!491714 (= (list!7053 lt!593609) (printList!902 thiss!17113 (list!7054 lt!593494)))))

(assert (=> d!491714 (= lt!593609 (printTailRec!840 thiss!17113 lt!593494 0 (BalanceConc!11873 Empty!5964)))))

(assert (=> d!491714 (= (print!1318 thiss!17113 lt!593494) lt!593609)))

(declare-fun bs!395212 () Bool)

(assert (= bs!395212 d!491714))

(declare-fun m!1966509 () Bool)

(assert (=> bs!395212 m!1966509))

(declare-fun m!1966511 () Bool)

(assert (=> bs!395212 m!1966511))

(assert (=> bs!395212 m!1966511))

(declare-fun m!1966513 () Bool)

(assert (=> bs!395212 m!1966513))

(assert (=> bs!395212 m!1966257))

(assert (=> b!1632331 d!491714))

(declare-fun b!1632461 () Bool)

(declare-fun res!730509 () Bool)

(declare-fun e!1046929 () Bool)

(assert (=> b!1632461 (=> (not res!730509) (not e!1046929))))

(declare-fun lt!593620 () Option!3347)

(assert (=> b!1632461 (= res!730509 (matchR!1985 (regex!3158 (rule!4994 (_1!10166 (get!5182 lt!593620)))) (list!7053 (charsOf!1807 (_1!10166 (get!5182 lt!593620))))))))

(declare-fun b!1632462 () Bool)

(declare-fun res!730506 () Bool)

(assert (=> b!1632462 (=> (not res!730506) (not e!1046929))))

(declare-fun apply!4617 (TokenValueInjection!6156 BalanceConc!11872) TokenValue!3248)

(assert (=> b!1632462 (= res!730506 (= (value!99677 (_1!10166 (get!5182 lt!593620))) (apply!4617 (transformation!3158 (rule!4994 (_1!10166 (get!5182 lt!593620)))) (seqFromList!2066 (originalCharacters!3972 (_1!10166 (get!5182 lt!593620)))))))))

(declare-fun b!1632463 () Bool)

(declare-fun e!1046927 () Bool)

(assert (=> b!1632463 (= e!1046927 e!1046929)))

(declare-fun res!730504 () Bool)

(assert (=> b!1632463 (=> (not res!730504) (not e!1046929))))

(assert (=> b!1632463 (= res!730504 (isDefined!2714 lt!593620))))

(declare-fun b!1632464 () Bool)

(declare-fun e!1046928 () Option!3347)

(declare-fun lt!593621 () Option!3347)

(declare-fun lt!593622 () Option!3347)

(assert (=> b!1632464 (= e!1046928 (ite (and (is-None!3346 lt!593621) (is-None!3346 lt!593622)) None!3346 (ite (is-None!3346 lt!593622) lt!593621 (ite (is-None!3346 lt!593621) lt!593622 (ite (>= (size!14319 (_1!10166 (v!24411 lt!593621))) (size!14319 (_1!10166 (v!24411 lt!593622)))) lt!593621 lt!593622)))))))

(declare-fun call!105551 () Option!3347)

(assert (=> b!1632464 (= lt!593621 call!105551)))

(assert (=> b!1632464 (= lt!593622 (maxPrefix!1351 thiss!17113 (t!149537 rules!1846) lt!593493))))

(declare-fun b!1632465 () Bool)

(assert (=> b!1632465 (= e!1046928 call!105551)))

(declare-fun d!491716 () Bool)

(assert (=> d!491716 e!1046927))

(declare-fun res!730505 () Bool)

(assert (=> d!491716 (=> res!730505 e!1046927)))

(declare-fun isEmpty!10962 (Option!3347) Bool)

(assert (=> d!491716 (= res!730505 (isEmpty!10962 lt!593620))))

(assert (=> d!491716 (= lt!593620 e!1046928)))

(declare-fun c!265698 () Bool)

(assert (=> d!491716 (= c!265698 (and (is-Cons!17926 rules!1846) (is-Nil!17926 (t!149537 rules!1846))))))

(declare-fun lt!593623 () Unit!29199)

(declare-fun lt!593624 () Unit!29199)

(assert (=> d!491716 (= lt!593623 lt!593624)))

(assert (=> d!491716 (isPrefix!1418 lt!593493 lt!593493)))

(declare-fun lemmaIsPrefixRefl!967 (List!17993 List!17993) Unit!29199)

(assert (=> d!491716 (= lt!593624 (lemmaIsPrefixRefl!967 lt!593493 lt!593493))))

(assert (=> d!491716 (rulesValidInductive!981 thiss!17113 rules!1846)))

(assert (=> d!491716 (= (maxPrefix!1351 thiss!17113 rules!1846 lt!593493) lt!593620)))

(declare-fun b!1632466 () Bool)

(declare-fun res!730508 () Bool)

(assert (=> b!1632466 (=> (not res!730508) (not e!1046929))))

(declare-fun size!14321 (List!17993) Int)

(assert (=> b!1632466 (= res!730508 (< (size!14321 (_2!10166 (get!5182 lt!593620))) (size!14321 lt!593493)))))

(declare-fun b!1632467 () Bool)

(declare-fun res!730507 () Bool)

(assert (=> b!1632467 (=> (not res!730507) (not e!1046929))))

(assert (=> b!1632467 (= res!730507 (= (++!4787 (list!7053 (charsOf!1807 (_1!10166 (get!5182 lt!593620)))) (_2!10166 (get!5182 lt!593620))) lt!593493))))

(declare-fun bm!105546 () Bool)

(declare-fun maxPrefixOneRule!782 (LexerInterface!2787 Rule!6116 List!17993) Option!3347)

(assert (=> bm!105546 (= call!105551 (maxPrefixOneRule!782 thiss!17113 (h!23327 rules!1846) lt!593493))))

(declare-fun b!1632468 () Bool)

(declare-fun res!730503 () Bool)

(assert (=> b!1632468 (=> (not res!730503) (not e!1046929))))

(assert (=> b!1632468 (= res!730503 (= (list!7053 (charsOf!1807 (_1!10166 (get!5182 lt!593620)))) (originalCharacters!3972 (_1!10166 (get!5182 lt!593620)))))))

(declare-fun b!1632469 () Bool)

(declare-fun contains!3133 (List!17996 Rule!6116) Bool)

(assert (=> b!1632469 (= e!1046929 (contains!3133 rules!1846 (rule!4994 (_1!10166 (get!5182 lt!593620)))))))

(assert (= (and d!491716 c!265698) b!1632465))

(assert (= (and d!491716 (not c!265698)) b!1632464))

(assert (= (or b!1632465 b!1632464) bm!105546))

(assert (= (and d!491716 (not res!730505)) b!1632463))

(assert (= (and b!1632463 res!730504) b!1632468))

(assert (= (and b!1632468 res!730503) b!1632466))

(assert (= (and b!1632466 res!730508) b!1632467))

(assert (= (and b!1632467 res!730507) b!1632462))

(assert (= (and b!1632462 res!730506) b!1632461))

(assert (= (and b!1632461 res!730509) b!1632469))

(declare-fun m!1966515 () Bool)

(assert (=> b!1632463 m!1966515))

(declare-fun m!1966517 () Bool)

(assert (=> b!1632462 m!1966517))

(declare-fun m!1966519 () Bool)

(assert (=> b!1632462 m!1966519))

(assert (=> b!1632462 m!1966519))

(declare-fun m!1966521 () Bool)

(assert (=> b!1632462 m!1966521))

(assert (=> b!1632466 m!1966517))

(declare-fun m!1966523 () Bool)

(assert (=> b!1632466 m!1966523))

(declare-fun m!1966525 () Bool)

(assert (=> b!1632466 m!1966525))

(assert (=> b!1632468 m!1966517))

(declare-fun m!1966527 () Bool)

(assert (=> b!1632468 m!1966527))

(assert (=> b!1632468 m!1966527))

(declare-fun m!1966529 () Bool)

(assert (=> b!1632468 m!1966529))

(declare-fun m!1966531 () Bool)

(assert (=> bm!105546 m!1966531))

(declare-fun m!1966533 () Bool)

(assert (=> b!1632464 m!1966533))

(assert (=> b!1632461 m!1966517))

(assert (=> b!1632461 m!1966527))

(assert (=> b!1632461 m!1966527))

(assert (=> b!1632461 m!1966529))

(assert (=> b!1632461 m!1966529))

(declare-fun m!1966535 () Bool)

(assert (=> b!1632461 m!1966535))

(assert (=> b!1632469 m!1966517))

(declare-fun m!1966537 () Bool)

(assert (=> b!1632469 m!1966537))

(declare-fun m!1966539 () Bool)

(assert (=> d!491716 m!1966539))

(declare-fun m!1966541 () Bool)

(assert (=> d!491716 m!1966541))

(declare-fun m!1966543 () Bool)

(assert (=> d!491716 m!1966543))

(assert (=> d!491716 m!1966347))

(assert (=> b!1632467 m!1966517))

(assert (=> b!1632467 m!1966527))

(assert (=> b!1632467 m!1966527))

(assert (=> b!1632467 m!1966529))

(assert (=> b!1632467 m!1966529))

(declare-fun m!1966545 () Bool)

(assert (=> b!1632467 m!1966545))

(assert (=> b!1632331 d!491716))

(declare-fun d!491718 () Bool)

(declare-fun c!265701 () Bool)

(assert (=> d!491718 (= c!265701 (is-Cons!17925 (Cons!17925 (h!23326 tokens!457) Nil!17925)))))

(declare-fun e!1046932 () List!17993)

(assert (=> d!491718 (= (printList!902 thiss!17113 (Cons!17925 (h!23326 tokens!457) Nil!17925)) e!1046932)))

(declare-fun b!1632474 () Bool)

(assert (=> b!1632474 (= e!1046932 (++!4787 (list!7053 (charsOf!1807 (h!23326 (Cons!17925 (h!23326 tokens!457) Nil!17925)))) (printList!902 thiss!17113 (t!149536 (Cons!17925 (h!23326 tokens!457) Nil!17925)))))))

(declare-fun b!1632475 () Bool)

(assert (=> b!1632475 (= e!1046932 Nil!17923)))

(assert (= (and d!491718 c!265701) b!1632474))

(assert (= (and d!491718 (not c!265701)) b!1632475))

(declare-fun m!1966547 () Bool)

(assert (=> b!1632474 m!1966547))

(assert (=> b!1632474 m!1966547))

(declare-fun m!1966549 () Bool)

(assert (=> b!1632474 m!1966549))

(declare-fun m!1966551 () Bool)

(assert (=> b!1632474 m!1966551))

(assert (=> b!1632474 m!1966549))

(assert (=> b!1632474 m!1966551))

(declare-fun m!1966553 () Bool)

(assert (=> b!1632474 m!1966553))

(assert (=> b!1632331 d!491718))

(declare-fun d!491720 () Bool)

(declare-fun lt!593640 () BalanceConc!11872)

(declare-fun printListTailRec!362 (LexerInterface!2787 List!17995 List!17993) List!17993)

(declare-fun dropList!621 (BalanceConc!11874 Int) List!17995)

(assert (=> d!491720 (= (list!7053 lt!593640) (printListTailRec!362 thiss!17113 (dropList!621 lt!593494 0) (list!7053 (BalanceConc!11873 Empty!5964))))))

(declare-fun e!1046944 () BalanceConc!11872)

(assert (=> d!491720 (= lt!593640 e!1046944)))

(declare-fun c!265704 () Bool)

(declare-fun size!14322 (BalanceConc!11874) Int)

(assert (=> d!491720 (= c!265704 (>= 0 (size!14322 lt!593494)))))

(declare-fun e!1046943 () Bool)

(assert (=> d!491720 e!1046943))

(declare-fun res!730518 () Bool)

(assert (=> d!491720 (=> (not res!730518) (not e!1046943))))

(assert (=> d!491720 (= res!730518 (>= 0 0))))

(assert (=> d!491720 (= (printTailRec!840 thiss!17113 lt!593494 0 (BalanceConc!11873 Empty!5964)) lt!593640)))

(declare-fun b!1632493 () Bool)

(assert (=> b!1632493 (= e!1046943 (<= 0 (size!14322 lt!593494)))))

(declare-fun b!1632494 () Bool)

(assert (=> b!1632494 (= e!1046944 (BalanceConc!11873 Empty!5964))))

(declare-fun b!1632495 () Bool)

(declare-fun apply!4618 (BalanceConc!11874 Int) Token!5882)

(assert (=> b!1632495 (= e!1046944 (printTailRec!840 thiss!17113 lt!593494 (+ 0 1) (++!4788 (BalanceConc!11873 Empty!5964) (charsOf!1807 (apply!4618 lt!593494 0)))))))

(declare-fun lt!593644 () List!17995)

(assert (=> b!1632495 (= lt!593644 (list!7054 lt!593494))))

(declare-fun lt!593643 () Unit!29199)

(declare-fun lemmaDropApply!569 (List!17995 Int) Unit!29199)

(assert (=> b!1632495 (= lt!593643 (lemmaDropApply!569 lt!593644 0))))

(declare-fun head!3492 (List!17995) Token!5882)

(declare-fun drop!881 (List!17995 Int) List!17995)

(declare-fun apply!4619 (List!17995 Int) Token!5882)

(assert (=> b!1632495 (= (head!3492 (drop!881 lt!593644 0)) (apply!4619 lt!593644 0))))

(declare-fun lt!593641 () Unit!29199)

(assert (=> b!1632495 (= lt!593641 lt!593643)))

(declare-fun lt!593642 () List!17995)

(assert (=> b!1632495 (= lt!593642 (list!7054 lt!593494))))

(declare-fun lt!593645 () Unit!29199)

(declare-fun lemmaDropTail!549 (List!17995 Int) Unit!29199)

(assert (=> b!1632495 (= lt!593645 (lemmaDropTail!549 lt!593642 0))))

(declare-fun tail!2379 (List!17995) List!17995)

(assert (=> b!1632495 (= (tail!2379 (drop!881 lt!593642 0)) (drop!881 lt!593642 (+ 0 1)))))

(declare-fun lt!593639 () Unit!29199)

(assert (=> b!1632495 (= lt!593639 lt!593645)))

(assert (= (and d!491720 res!730518) b!1632493))

(assert (= (and d!491720 c!265704) b!1632494))

(assert (= (and d!491720 (not c!265704)) b!1632495))

(declare-fun m!1966567 () Bool)

(assert (=> d!491720 m!1966567))

(declare-fun m!1966569 () Bool)

(assert (=> d!491720 m!1966569))

(declare-fun m!1966571 () Bool)

(assert (=> d!491720 m!1966571))

(declare-fun m!1966573 () Bool)

(assert (=> d!491720 m!1966573))

(assert (=> d!491720 m!1966569))

(declare-fun m!1966575 () Bool)

(assert (=> d!491720 m!1966575))

(assert (=> d!491720 m!1966567))

(assert (=> b!1632493 m!1966573))

(declare-fun m!1966577 () Bool)

(assert (=> b!1632495 m!1966577))

(declare-fun m!1966579 () Bool)

(assert (=> b!1632495 m!1966579))

(declare-fun m!1966581 () Bool)

(assert (=> b!1632495 m!1966581))

(declare-fun m!1966583 () Bool)

(assert (=> b!1632495 m!1966583))

(declare-fun m!1966585 () Bool)

(assert (=> b!1632495 m!1966585))

(declare-fun m!1966587 () Bool)

(assert (=> b!1632495 m!1966587))

(declare-fun m!1966589 () Bool)

(assert (=> b!1632495 m!1966589))

(assert (=> b!1632495 m!1966579))

(declare-fun m!1966591 () Bool)

(assert (=> b!1632495 m!1966591))

(declare-fun m!1966593 () Bool)

(assert (=> b!1632495 m!1966593))

(declare-fun m!1966595 () Bool)

(assert (=> b!1632495 m!1966595))

(assert (=> b!1632495 m!1966593))

(assert (=> b!1632495 m!1966587))

(assert (=> b!1632495 m!1966589))

(declare-fun m!1966597 () Bool)

(assert (=> b!1632495 m!1966597))

(assert (=> b!1632495 m!1966577))

(declare-fun m!1966599 () Bool)

(assert (=> b!1632495 m!1966599))

(assert (=> b!1632495 m!1966511))

(assert (=> b!1632331 d!491720))

(declare-fun d!491726 () Bool)

(declare-fun e!1046947 () Bool)

(assert (=> d!491726 e!1046947))

(declare-fun res!730521 () Bool)

(assert (=> d!491726 (=> (not res!730521) (not e!1046947))))

(declare-fun lt!593648 () BalanceConc!11874)

(assert (=> d!491726 (= res!730521 (= (list!7054 lt!593648) (Cons!17925 (h!23326 tokens!457) Nil!17925)))))

(declare-fun singleton!683 (Token!5882) BalanceConc!11874)

(assert (=> d!491726 (= lt!593648 (singleton!683 (h!23326 tokens!457)))))

(assert (=> d!491726 (= (singletonSeq!1594 (h!23326 tokens!457)) lt!593648)))

(declare-fun b!1632498 () Bool)

(declare-fun isBalanced!1803 (Conc!5965) Bool)

(assert (=> b!1632498 (= e!1046947 (isBalanced!1803 (c!265691 lt!593648)))))

(assert (= (and d!491726 res!730521) b!1632498))

(declare-fun m!1966601 () Bool)

(assert (=> d!491726 m!1966601))

(declare-fun m!1966603 () Bool)

(assert (=> d!491726 m!1966603))

(declare-fun m!1966605 () Bool)

(assert (=> b!1632498 m!1966605))

(assert (=> b!1632331 d!491726))

(declare-fun d!491728 () Bool)

(declare-fun list!7057 (Conc!5964) List!17993)

(assert (=> d!491728 (= (list!7053 lt!593515) (list!7057 (c!265689 lt!593515)))))

(declare-fun bs!395213 () Bool)

(assert (= bs!395213 d!491728))

(declare-fun m!1966607 () Bool)

(assert (=> bs!395213 m!1966607))

(assert (=> b!1632331 d!491728))

(declare-fun b!1632559 () Bool)

(declare-fun e!1046989 () Bool)

(assert (=> b!1632559 (= e!1046989 true)))

(declare-fun b!1632558 () Bool)

(declare-fun e!1046988 () Bool)

(assert (=> b!1632558 (= e!1046988 e!1046989)))

(declare-fun b!1632557 () Bool)

(declare-fun e!1046987 () Bool)

(assert (=> b!1632557 (= e!1046987 e!1046988)))

(declare-fun d!491730 () Bool)

(assert (=> d!491730 e!1046987))

(assert (= b!1632558 b!1632559))

(assert (= b!1632557 b!1632558))

(assert (= (and d!491730 (is-Cons!17926 rules!1846)) b!1632557))

(declare-fun order!10629 () Int)

(declare-fun lambda!67367 () Int)

(declare-fun order!10631 () Int)

(declare-fun dynLambda!7994 (Int Int) Int)

(declare-fun dynLambda!7995 (Int Int) Int)

(assert (=> b!1632559 (< (dynLambda!7994 order!10629 (toValue!4589 (transformation!3158 (h!23327 rules!1846)))) (dynLambda!7995 order!10631 lambda!67367))))

(declare-fun order!10633 () Int)

(declare-fun dynLambda!7996 (Int Int) Int)

(assert (=> b!1632559 (< (dynLambda!7996 order!10633 (toChars!4448 (transformation!3158 (h!23327 rules!1846)))) (dynLambda!7995 order!10631 lambda!67367))))

(assert (=> d!491730 true))

(declare-fun lt!593673 () Bool)

(declare-fun forall!4097 (List!17995 Int) Bool)

(assert (=> d!491730 (= lt!593673 (forall!4097 tokens!457 lambda!67367))))

(declare-fun e!1046979 () Bool)

(assert (=> d!491730 (= lt!593673 e!1046979)))

(declare-fun res!730551 () Bool)

(assert (=> d!491730 (=> res!730551 e!1046979)))

(assert (=> d!491730 (= res!730551 (not (is-Cons!17925 tokens!457)))))

(assert (=> d!491730 (not (isEmpty!10958 rules!1846))))

(assert (=> d!491730 (= (rulesProduceEachTokenIndividuallyList!989 thiss!17113 rules!1846 tokens!457) lt!593673)))

(declare-fun b!1632547 () Bool)

(declare-fun e!1046980 () Bool)

(assert (=> b!1632547 (= e!1046979 e!1046980)))

(declare-fun res!730550 () Bool)

(assert (=> b!1632547 (=> (not res!730550) (not e!1046980))))

(assert (=> b!1632547 (= res!730550 (rulesProduceIndividualToken!1439 thiss!17113 rules!1846 (h!23326 tokens!457)))))

(declare-fun b!1632548 () Bool)

(assert (=> b!1632548 (= e!1046980 (rulesProduceEachTokenIndividuallyList!989 thiss!17113 rules!1846 (t!149536 tokens!457)))))

(assert (= (and d!491730 (not res!730551)) b!1632547))

(assert (= (and b!1632547 res!730550) b!1632548))

(declare-fun m!1966713 () Bool)

(assert (=> d!491730 m!1966713))

(assert (=> d!491730 m!1966301))

(assert (=> b!1632547 m!1966315))

(declare-fun m!1966715 () Bool)

(assert (=> b!1632548 m!1966715))

(assert (=> b!1632330 d!491730))

(declare-fun d!491770 () Bool)

(declare-fun lt!593700 () Bool)

(assert (=> d!491770 (= lt!593700 (prefixMatch!421 lt!593498 (list!7053 (++!4788 lt!593512 lt!593513))))))

(declare-datatypes ((List!18001 0))(
  ( (Nil!17931) (Cons!17931 (h!23332 Regex!4486) (t!149572 List!18001)) )
))
(declare-datatypes ((Context!1748 0))(
  ( (Context!1749 (exprs!1374 List!18001)) )
))
(declare-fun prefixMatchZipperSequence!556 ((Set Context!1748) BalanceConc!11872 Int) Bool)

(declare-fun focus!180 (Regex!4486) (Set Context!1748))

(assert (=> d!491770 (= lt!593700 (prefixMatchZipperSequence!556 (focus!180 lt!593498) (++!4788 lt!593512 lt!593513) 0))))

(declare-fun lt!593697 () Unit!29199)

(declare-fun lt!593698 () Unit!29199)

(assert (=> d!491770 (= lt!593697 lt!593698)))

(declare-fun lt!593702 () List!17993)

(declare-fun lt!593699 () (Set Context!1748))

(declare-fun prefixMatchZipper!159 ((Set Context!1748) List!17993) Bool)

(assert (=> d!491770 (= (prefixMatch!421 lt!593498 lt!593702) (prefixMatchZipper!159 lt!593699 lt!593702))))

(declare-datatypes ((List!18002 0))(
  ( (Nil!17932) (Cons!17932 (h!23333 Context!1748) (t!149573 List!18002)) )
))
(declare-fun lt!593703 () List!18002)

(declare-fun prefixMatchZipperRegexEquiv!159 ((Set Context!1748) List!18002 Regex!4486 List!17993) Unit!29199)

(assert (=> d!491770 (= lt!593698 (prefixMatchZipperRegexEquiv!159 lt!593699 lt!593703 lt!593498 lt!593702))))

(assert (=> d!491770 (= lt!593702 (list!7053 (++!4788 lt!593512 lt!593513)))))

(declare-fun toList!920 ((Set Context!1748)) List!18002)

(assert (=> d!491770 (= lt!593703 (toList!920 (focus!180 lt!593498)))))

(assert (=> d!491770 (= lt!593699 (focus!180 lt!593498))))

(declare-fun lt!593694 () Unit!29199)

(declare-fun lt!593696 () Unit!29199)

(assert (=> d!491770 (= lt!593694 lt!593696)))

(declare-fun lt!593701 () Int)

(declare-fun lt!593695 () (Set Context!1748))

(declare-fun dropList!622 (BalanceConc!11872 Int) List!17993)

(assert (=> d!491770 (= (prefixMatchZipper!159 lt!593695 (dropList!622 (++!4788 lt!593512 lt!593513) lt!593701)) (prefixMatchZipperSequence!556 lt!593695 (++!4788 lt!593512 lt!593513) lt!593701))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!159 ((Set Context!1748) BalanceConc!11872 Int) Unit!29199)

(assert (=> d!491770 (= lt!593696 (lemmaprefixMatchZipperSequenceEquivalent!159 lt!593695 (++!4788 lt!593512 lt!593513) lt!593701))))

(assert (=> d!491770 (= lt!593701 0)))

(assert (=> d!491770 (= lt!593695 (focus!180 lt!593498))))

(declare-fun validRegex!1785 (Regex!4486) Bool)

(assert (=> d!491770 (validRegex!1785 lt!593498)))

(assert (=> d!491770 (= (prefixMatchZipperSequence!554 lt!593498 (++!4788 lt!593512 lt!593513)) lt!593700)))

(declare-fun bs!395226 () Bool)

(assert (= bs!395226 d!491770))

(declare-fun m!1966717 () Bool)

(assert (=> bs!395226 m!1966717))

(assert (=> bs!395226 m!1966323))

(declare-fun m!1966719 () Bool)

(assert (=> bs!395226 m!1966719))

(declare-fun m!1966721 () Bool)

(assert (=> bs!395226 m!1966721))

(declare-fun m!1966723 () Bool)

(assert (=> bs!395226 m!1966723))

(assert (=> bs!395226 m!1966323))

(declare-fun m!1966725 () Bool)

(assert (=> bs!395226 m!1966725))

(assert (=> bs!395226 m!1966717))

(declare-fun m!1966727 () Bool)

(assert (=> bs!395226 m!1966727))

(declare-fun m!1966729 () Bool)

(assert (=> bs!395226 m!1966729))

(declare-fun m!1966731 () Bool)

(assert (=> bs!395226 m!1966731))

(assert (=> bs!395226 m!1966717))

(assert (=> bs!395226 m!1966323))

(declare-fun m!1966733 () Bool)

(assert (=> bs!395226 m!1966733))

(declare-fun m!1966735 () Bool)

(assert (=> bs!395226 m!1966735))

(declare-fun m!1966737 () Bool)

(assert (=> bs!395226 m!1966737))

(declare-fun m!1966739 () Bool)

(assert (=> bs!395226 m!1966739))

(assert (=> bs!395226 m!1966323))

(assert (=> bs!395226 m!1966729))

(declare-fun m!1966741 () Bool)

(assert (=> bs!395226 m!1966741))

(assert (=> bs!395226 m!1966323))

(assert (=> bs!395226 m!1966735))

(assert (=> b!1632332 d!491770))

(declare-fun d!491772 () Bool)

(declare-fun e!1046992 () Bool)

(assert (=> d!491772 e!1046992))

(declare-fun res!730554 () Bool)

(assert (=> d!491772 (=> (not res!730554) (not e!1046992))))

(declare-fun lt!593706 () BalanceConc!11872)

(assert (=> d!491772 (= res!730554 (= (list!7053 lt!593706) (Cons!17923 (apply!4615 (charsOf!1807 (h!23326 (t!149536 tokens!457))) 0) Nil!17923)))))

(declare-fun singleton!684 (C!9146) BalanceConc!11872)

(assert (=> d!491772 (= lt!593706 (singleton!684 (apply!4615 (charsOf!1807 (h!23326 (t!149536 tokens!457))) 0)))))

(assert (=> d!491772 (= (singletonSeq!1595 (apply!4615 (charsOf!1807 (h!23326 (t!149536 tokens!457))) 0)) lt!593706)))

(declare-fun b!1632564 () Bool)

(declare-fun isBalanced!1804 (Conc!5964) Bool)

(assert (=> b!1632564 (= e!1046992 (isBalanced!1804 (c!265689 lt!593706)))))

(assert (= (and d!491772 res!730554) b!1632564))

(declare-fun m!1966743 () Bool)

(assert (=> d!491772 m!1966743))

(assert (=> d!491772 m!1966325))

(declare-fun m!1966745 () Bool)

(assert (=> d!491772 m!1966745))

(declare-fun m!1966747 () Bool)

(assert (=> b!1632564 m!1966747))

(assert (=> b!1632332 d!491772))

(declare-fun b!1632575 () Bool)

(declare-fun res!730564 () Bool)

(declare-fun e!1046995 () Bool)

(assert (=> b!1632575 (=> (not res!730564) (not e!1046995))))

(declare-fun height!914 (Conc!5964) Int)

(declare-fun ++!4791 (Conc!5964 Conc!5964) Conc!5964)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1632575 (= res!730564 (>= (height!914 (++!4791 (c!265689 lt!593512) (c!265689 lt!593513))) (max!0 (height!914 (c!265689 lt!593512)) (height!914 (c!265689 lt!593513)))))))

(declare-fun b!1632573 () Bool)

(declare-fun res!730563 () Bool)

(assert (=> b!1632573 (=> (not res!730563) (not e!1046995))))

(assert (=> b!1632573 (= res!730563 (isBalanced!1804 (++!4791 (c!265689 lt!593512) (c!265689 lt!593513))))))

(declare-fun b!1632574 () Bool)

(declare-fun res!730565 () Bool)

(assert (=> b!1632574 (=> (not res!730565) (not e!1046995))))

(assert (=> b!1632574 (= res!730565 (<= (height!914 (++!4791 (c!265689 lt!593512) (c!265689 lt!593513))) (+ (max!0 (height!914 (c!265689 lt!593512)) (height!914 (c!265689 lt!593513))) 1)))))

(declare-fun d!491774 () Bool)

(assert (=> d!491774 e!1046995))

(declare-fun res!730566 () Bool)

(assert (=> d!491774 (=> (not res!730566) (not e!1046995))))

(declare-fun appendAssocInst!442 (Conc!5964 Conc!5964) Bool)

(assert (=> d!491774 (= res!730566 (appendAssocInst!442 (c!265689 lt!593512) (c!265689 lt!593513)))))

(declare-fun lt!593709 () BalanceConc!11872)

(assert (=> d!491774 (= lt!593709 (BalanceConc!11873 (++!4791 (c!265689 lt!593512) (c!265689 lt!593513))))))

(assert (=> d!491774 (= (++!4788 lt!593512 lt!593513) lt!593709)))

(declare-fun b!1632576 () Bool)

(assert (=> b!1632576 (= e!1046995 (= (list!7053 lt!593709) (++!4787 (list!7053 lt!593512) (list!7053 lt!593513))))))

(assert (= (and d!491774 res!730566) b!1632573))

(assert (= (and b!1632573 res!730563) b!1632574))

(assert (= (and b!1632574 res!730565) b!1632575))

(assert (= (and b!1632575 res!730564) b!1632576))

(declare-fun m!1966749 () Bool)

(assert (=> b!1632574 m!1966749))

(assert (=> b!1632574 m!1966749))

(declare-fun m!1966751 () Bool)

(assert (=> b!1632574 m!1966751))

(declare-fun m!1966753 () Bool)

(assert (=> b!1632574 m!1966753))

(assert (=> b!1632574 m!1966751))

(declare-fun m!1966755 () Bool)

(assert (=> b!1632574 m!1966755))

(assert (=> b!1632574 m!1966755))

(declare-fun m!1966757 () Bool)

(assert (=> b!1632574 m!1966757))

(declare-fun m!1966759 () Bool)

(assert (=> b!1632576 m!1966759))

(assert (=> b!1632576 m!1966235))

(assert (=> b!1632576 m!1966293))

(assert (=> b!1632576 m!1966235))

(assert (=> b!1632576 m!1966293))

(declare-fun m!1966761 () Bool)

(assert (=> b!1632576 m!1966761))

(assert (=> b!1632573 m!1966755))

(assert (=> b!1632573 m!1966755))

(declare-fun m!1966763 () Bool)

(assert (=> b!1632573 m!1966763))

(assert (=> b!1632575 m!1966749))

(assert (=> b!1632575 m!1966749))

(assert (=> b!1632575 m!1966751))

(assert (=> b!1632575 m!1966753))

(assert (=> b!1632575 m!1966751))

(assert (=> b!1632575 m!1966755))

(assert (=> b!1632575 m!1966755))

(assert (=> b!1632575 m!1966757))

(declare-fun m!1966765 () Bool)

(assert (=> d!491774 m!1966765))

(assert (=> d!491774 m!1966755))

(assert (=> b!1632332 d!491774))

(declare-fun d!491776 () Bool)

(declare-fun lt!593712 () C!9146)

(declare-fun apply!4620 (List!17993 Int) C!9146)

(assert (=> d!491776 (= lt!593712 (apply!4620 (list!7053 (charsOf!1807 (h!23326 (t!149536 tokens!457)))) 0))))

(declare-fun apply!4621 (Conc!5964 Int) C!9146)

(assert (=> d!491776 (= lt!593712 (apply!4621 (c!265689 (charsOf!1807 (h!23326 (t!149536 tokens!457)))) 0))))

(declare-fun e!1046998 () Bool)

(assert (=> d!491776 e!1046998))

(declare-fun res!730569 () Bool)

(assert (=> d!491776 (=> (not res!730569) (not e!1046998))))

(assert (=> d!491776 (= res!730569 (<= 0 0))))

(assert (=> d!491776 (= (apply!4615 (charsOf!1807 (h!23326 (t!149536 tokens!457))) 0) lt!593712)))

(declare-fun b!1632579 () Bool)

(declare-fun size!14323 (BalanceConc!11872) Int)

(assert (=> b!1632579 (= e!1046998 (< 0 (size!14323 (charsOf!1807 (h!23326 (t!149536 tokens!457))))))))

(assert (= (and d!491776 res!730569) b!1632579))

(assert (=> d!491776 m!1966331))

(declare-fun m!1966767 () Bool)

(assert (=> d!491776 m!1966767))

(assert (=> d!491776 m!1966767))

(declare-fun m!1966769 () Bool)

(assert (=> d!491776 m!1966769))

(declare-fun m!1966771 () Bool)

(assert (=> d!491776 m!1966771))

(assert (=> b!1632579 m!1966331))

(declare-fun m!1966773 () Bool)

(assert (=> b!1632579 m!1966773))

(assert (=> b!1632332 d!491776))

(declare-fun d!491778 () Bool)

(declare-fun lt!593715 () Unit!29199)

(declare-fun lemma!246 (List!17996 LexerInterface!2787 List!17996) Unit!29199)

(assert (=> d!491778 (= lt!593715 (lemma!246 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67370 () Int)

(declare-fun generalisedUnion!254 (List!18001) Regex!4486)

(declare-fun map!3705 (List!17996 Int) List!18001)

(assert (=> d!491778 (= (rulesRegex!548 thiss!17113 rules!1846) (generalisedUnion!254 (map!3705 rules!1846 lambda!67370)))))

(declare-fun bs!395227 () Bool)

(assert (= bs!395227 d!491778))

(declare-fun m!1966775 () Bool)

(assert (=> bs!395227 m!1966775))

(declare-fun m!1966777 () Bool)

(assert (=> bs!395227 m!1966777))

(assert (=> bs!395227 m!1966777))

(declare-fun m!1966779 () Bool)

(assert (=> bs!395227 m!1966779))

(assert (=> b!1632332 d!491778))

(declare-fun d!491780 () Bool)

(declare-fun lt!593718 () BalanceConc!11872)

(assert (=> d!491780 (= (list!7053 lt!593718) (originalCharacters!3972 (h!23326 (t!149536 tokens!457))))))

(declare-fun dynLambda!7997 (Int TokenValue!3248) BalanceConc!11872)

(assert (=> d!491780 (= lt!593718 (dynLambda!7997 (toChars!4448 (transformation!3158 (rule!4994 (h!23326 (t!149536 tokens!457))))) (value!99677 (h!23326 (t!149536 tokens!457)))))))

(assert (=> d!491780 (= (charsOf!1807 (h!23326 (t!149536 tokens!457))) lt!593718)))

(declare-fun b_lambda!51369 () Bool)

(assert (=> (not b_lambda!51369) (not d!491780)))

(declare-fun t!149553 () Bool)

(declare-fun tb!93691 () Bool)

(assert (=> (and b!1632341 (= (toChars!4448 (transformation!3158 (rule!4994 (h!23326 tokens!457)))) (toChars!4448 (transformation!3158 (rule!4994 (h!23326 (t!149536 tokens!457)))))) t!149553) tb!93691))

(declare-fun b!1632584 () Bool)

(declare-fun e!1047001 () Bool)

(declare-fun tp!473812 () Bool)

(declare-fun inv!23297 (Conc!5964) Bool)

(assert (=> b!1632584 (= e!1047001 (and (inv!23297 (c!265689 (dynLambda!7997 (toChars!4448 (transformation!3158 (rule!4994 (h!23326 (t!149536 tokens!457))))) (value!99677 (h!23326 (t!149536 tokens!457)))))) tp!473812))))

(declare-fun result!113000 () Bool)

(declare-fun inv!23298 (BalanceConc!11872) Bool)

(assert (=> tb!93691 (= result!113000 (and (inv!23298 (dynLambda!7997 (toChars!4448 (transformation!3158 (rule!4994 (h!23326 (t!149536 tokens!457))))) (value!99677 (h!23326 (t!149536 tokens!457))))) e!1047001))))

(assert (= tb!93691 b!1632584))

(declare-fun m!1966781 () Bool)

(assert (=> b!1632584 m!1966781))

(declare-fun m!1966783 () Bool)

(assert (=> tb!93691 m!1966783))

(assert (=> d!491780 t!149553))

(declare-fun b_and!115773 () Bool)

(assert (= b_and!115751 (and (=> t!149553 result!113000) b_and!115773)))

(declare-fun t!149555 () Bool)

(declare-fun tb!93693 () Bool)

(assert (=> (and b!1632322 (= (toChars!4448 (transformation!3158 (h!23327 rules!1846))) (toChars!4448 (transformation!3158 (rule!4994 (h!23326 (t!149536 tokens!457)))))) t!149555) tb!93693))

(declare-fun result!113004 () Bool)

(assert (= result!113004 result!113000))

(assert (=> d!491780 t!149555))

(declare-fun b_and!115775 () Bool)

(assert (= b_and!115755 (and (=> t!149555 result!113004) b_and!115775)))

(declare-fun m!1966785 () Bool)

(assert (=> d!491780 m!1966785))

(declare-fun m!1966787 () Bool)

(assert (=> d!491780 m!1966787))

(assert (=> b!1632332 d!491780))

(declare-fun d!491782 () Bool)

(declare-fun e!1047004 () Bool)

(assert (=> d!491782 e!1047004))

(declare-fun res!730572 () Bool)

(assert (=> d!491782 (=> (not res!730572) (not e!1047004))))

(declare-fun prepend!694 (Conc!5965 Token!5882) Conc!5965)

(assert (=> d!491782 (= res!730572 (isBalanced!1803 (prepend!694 (c!265691 (seqFromList!2065 (t!149536 (t!149536 tokens!457)))) (h!23326 (t!149536 tokens!457)))))))

(declare-fun lt!593721 () BalanceConc!11874)

(assert (=> d!491782 (= lt!593721 (BalanceConc!11875 (prepend!694 (c!265691 (seqFromList!2065 (t!149536 (t!149536 tokens!457)))) (h!23326 (t!149536 tokens!457)))))))

(assert (=> d!491782 (= (prepend!692 (seqFromList!2065 (t!149536 (t!149536 tokens!457))) (h!23326 (t!149536 tokens!457))) lt!593721)))

(declare-fun b!1632587 () Bool)

(assert (=> b!1632587 (= e!1047004 (= (list!7054 lt!593721) (Cons!17925 (h!23326 (t!149536 tokens!457)) (list!7054 (seqFromList!2065 (t!149536 (t!149536 tokens!457)))))))))

(assert (= (and d!491782 res!730572) b!1632587))

(declare-fun m!1966789 () Bool)

(assert (=> d!491782 m!1966789))

(assert (=> d!491782 m!1966789))

(declare-fun m!1966791 () Bool)

(assert (=> d!491782 m!1966791))

(declare-fun m!1966793 () Bool)

(assert (=> b!1632587 m!1966793))

(assert (=> b!1632587 m!1966357))

(declare-fun m!1966795 () Bool)

(assert (=> b!1632587 m!1966795))

(assert (=> b!1632333 d!491782))

(declare-fun d!491784 () Bool)

(declare-fun list!7058 (Conc!5965) List!17995)

(assert (=> d!491784 (= (list!7054 (prepend!692 (seqFromList!2065 (t!149536 (t!149536 tokens!457))) (h!23326 (t!149536 tokens!457)))) (list!7058 (c!265691 (prepend!692 (seqFromList!2065 (t!149536 (t!149536 tokens!457))) (h!23326 (t!149536 tokens!457))))))))

(declare-fun bs!395228 () Bool)

(assert (= bs!395228 d!491784))

(declare-fun m!1966797 () Bool)

(assert (=> bs!395228 m!1966797))

(assert (=> b!1632333 d!491784))

(declare-fun d!491786 () Bool)

(declare-fun fromListB!908 (List!17995) BalanceConc!11874)

(assert (=> d!491786 (= (seqFromList!2065 (t!149536 (t!149536 tokens!457))) (fromListB!908 (t!149536 (t!149536 tokens!457))))))

(declare-fun bs!395229 () Bool)

(assert (= bs!395229 d!491786))

(declare-fun m!1966799 () Bool)

(assert (=> bs!395229 m!1966799))

(assert (=> b!1632333 d!491786))

(declare-fun d!491788 () Bool)

(assert (=> d!491788 (= (list!7054 (_1!10167 lt!593505)) (list!7054 (prepend!692 (seqFromList!2065 (t!149536 (t!149536 tokens!457))) (h!23326 (t!149536 tokens!457)))))))

(declare-fun lt!593724 () Unit!29199)

(declare-fun choose!9817 (Token!5882 List!17995 BalanceConc!11874) Unit!29199)

(assert (=> d!491788 (= lt!593724 (choose!9817 (h!23326 (t!149536 tokens!457)) (t!149536 (t!149536 tokens!457)) (_1!10167 lt!593505)))))

(declare-fun $colon$colon!338 (List!17995 Token!5882) List!17995)

(assert (=> d!491788 (= (list!7054 (_1!10167 lt!593505)) (list!7054 (seqFromList!2065 ($colon$colon!338 (t!149536 (t!149536 tokens!457)) (h!23326 (t!149536 tokens!457))))))))

(assert (=> d!491788 (= (seqFromListBHdTlConstructive!235 (h!23326 (t!149536 tokens!457)) (t!149536 (t!149536 tokens!457)) (_1!10167 lt!593505)) lt!593724)))

(declare-fun bs!395230 () Bool)

(assert (= bs!395230 d!491788))

(declare-fun m!1966801 () Bool)

(assert (=> bs!395230 m!1966801))

(declare-fun m!1966803 () Bool)

(assert (=> bs!395230 m!1966803))

(assert (=> bs!395230 m!1966359))

(assert (=> bs!395230 m!1966361))

(assert (=> bs!395230 m!1966357))

(assert (=> bs!395230 m!1966801))

(declare-fun m!1966805 () Bool)

(assert (=> bs!395230 m!1966805))

(assert (=> bs!395230 m!1966357))

(assert (=> bs!395230 m!1966359))

(assert (=> bs!395230 m!1966303))

(assert (=> bs!395230 m!1966805))

(declare-fun m!1966807 () Bool)

(assert (=> bs!395230 m!1966807))

(assert (=> b!1632333 d!491788))

(declare-fun d!491790 () Bool)

(assert (=> d!491790 (= (list!7054 lt!593508) (list!7058 (c!265691 lt!593508)))))

(declare-fun bs!395231 () Bool)

(assert (= bs!395231 d!491790))

(declare-fun m!1966809 () Bool)

(assert (=> bs!395231 m!1966809))

(assert (=> b!1632333 d!491790))

(declare-fun d!491792 () Bool)

(declare-fun lt!593730 () Bool)

(declare-fun e!1047010 () Bool)

(assert (=> d!491792 (= lt!593730 e!1047010)))

(declare-fun res!730580 () Bool)

(assert (=> d!491792 (=> (not res!730580) (not e!1047010))))

(assert (=> d!491792 (= res!730580 (= (list!7054 (_1!10167 (lex!1271 thiss!17113 rules!1846 (print!1318 thiss!17113 (singletonSeq!1594 (h!23326 tokens!457)))))) (list!7054 (singletonSeq!1594 (h!23326 tokens!457)))))))

(declare-fun e!1047009 () Bool)

(assert (=> d!491792 (= lt!593730 e!1047009)))

(declare-fun res!730579 () Bool)

(assert (=> d!491792 (=> (not res!730579) (not e!1047009))))

(declare-fun lt!593729 () tuple2!17530)

(assert (=> d!491792 (= res!730579 (= (size!14322 (_1!10167 lt!593729)) 1))))

(assert (=> d!491792 (= lt!593729 (lex!1271 thiss!17113 rules!1846 (print!1318 thiss!17113 (singletonSeq!1594 (h!23326 tokens!457)))))))

(assert (=> d!491792 (not (isEmpty!10958 rules!1846))))

(assert (=> d!491792 (= (rulesProduceIndividualToken!1439 thiss!17113 rules!1846 (h!23326 tokens!457)) lt!593730)))

(declare-fun b!1632594 () Bool)

(declare-fun res!730581 () Bool)

(assert (=> b!1632594 (=> (not res!730581) (not e!1047009))))

(assert (=> b!1632594 (= res!730581 (= (apply!4618 (_1!10167 lt!593729) 0) (h!23326 tokens!457)))))

(declare-fun b!1632595 () Bool)

(declare-fun isEmpty!10963 (BalanceConc!11872) Bool)

(assert (=> b!1632595 (= e!1047009 (isEmpty!10963 (_2!10167 lt!593729)))))

(declare-fun b!1632596 () Bool)

(assert (=> b!1632596 (= e!1047010 (isEmpty!10963 (_2!10167 (lex!1271 thiss!17113 rules!1846 (print!1318 thiss!17113 (singletonSeq!1594 (h!23326 tokens!457)))))))))

(assert (= (and d!491792 res!730579) b!1632594))

(assert (= (and b!1632594 res!730581) b!1632595))

(assert (= (and d!491792 res!730580) b!1632596))

(declare-fun m!1966811 () Bool)

(assert (=> d!491792 m!1966811))

(declare-fun m!1966813 () Bool)

(assert (=> d!491792 m!1966813))

(assert (=> d!491792 m!1966259))

(assert (=> d!491792 m!1966811))

(assert (=> d!491792 m!1966301))

(assert (=> d!491792 m!1966259))

(assert (=> d!491792 m!1966259))

(declare-fun m!1966815 () Bool)

(assert (=> d!491792 m!1966815))

(declare-fun m!1966817 () Bool)

(assert (=> d!491792 m!1966817))

(declare-fun m!1966819 () Bool)

(assert (=> d!491792 m!1966819))

(declare-fun m!1966821 () Bool)

(assert (=> b!1632594 m!1966821))

(declare-fun m!1966823 () Bool)

(assert (=> b!1632595 m!1966823))

(assert (=> b!1632596 m!1966259))

(assert (=> b!1632596 m!1966259))

(assert (=> b!1632596 m!1966811))

(assert (=> b!1632596 m!1966811))

(assert (=> b!1632596 m!1966813))

(declare-fun m!1966825 () Bool)

(assert (=> b!1632596 m!1966825))

(assert (=> b!1632335 d!491792))

(declare-fun d!491794 () Bool)

(assert (=> d!491794 (= (list!7054 (_1!10167 lt!593505)) (list!7058 (c!265691 (_1!10167 lt!593505))))))

(declare-fun bs!395232 () Bool)

(assert (= bs!395232 d!491794))

(declare-fun m!1966827 () Bool)

(assert (=> bs!395232 m!1966827))

(assert (=> b!1632334 d!491794))

(declare-fun d!491796 () Bool)

(declare-fun e!1047042 () Bool)

(assert (=> d!491796 e!1047042))

(declare-fun res!730605 () Bool)

(assert (=> d!491796 (=> (not res!730605) (not e!1047042))))

(assert (=> d!491796 (= res!730605 (= (list!7054 (_1!10167 (lex!1271 thiss!17113 rules!1846 (print!1318 thiss!17113 (seqFromList!2065 (t!149536 tokens!457)))))) (t!149536 tokens!457)))))

(declare-fun lt!593798 () Unit!29199)

(declare-fun e!1047043 () Unit!29199)

(assert (=> d!491796 (= lt!593798 e!1047043)))

(declare-fun c!265723 () Bool)

(assert (=> d!491796 (= c!265723 (or (is-Nil!17925 (t!149536 tokens!457)) (is-Nil!17925 (t!149536 (t!149536 tokens!457)))))))

(assert (=> d!491796 (not (isEmpty!10958 rules!1846))))

(assert (=> d!491796 (= (theoremInvertabilityWhenTokenListSeparable!232 thiss!17113 rules!1846 (t!149536 tokens!457)) lt!593798)))

(declare-fun b!1632639 () Bool)

(declare-fun Unit!29204 () Unit!29199)

(assert (=> b!1632639 (= e!1047043 Unit!29204)))

(declare-fun b!1632640 () Bool)

(declare-fun Unit!29205 () Unit!29199)

(assert (=> b!1632640 (= e!1047043 Unit!29205)))

(declare-fun lt!593796 () BalanceConc!11872)

(assert (=> b!1632640 (= lt!593796 (print!1318 thiss!17113 (seqFromList!2065 (t!149536 tokens!457))))))

(declare-fun lt!593808 () BalanceConc!11872)

(assert (=> b!1632640 (= lt!593808 (print!1318 thiss!17113 (seqFromList!2065 (t!149536 (t!149536 tokens!457)))))))

(declare-fun lt!593815 () tuple2!17530)

(assert (=> b!1632640 (= lt!593815 (lex!1271 thiss!17113 rules!1846 lt!593808))))

(declare-fun lt!593795 () List!17993)

(assert (=> b!1632640 (= lt!593795 (list!7053 (charsOf!1807 (h!23326 (t!149536 tokens!457)))))))

(declare-fun lt!593802 () List!17993)

(assert (=> b!1632640 (= lt!593802 (list!7053 lt!593808))))

(declare-fun lt!593807 () Unit!29199)

(assert (=> b!1632640 (= lt!593807 (lemmaConcatTwoListThenFirstIsPrefix!943 lt!593795 lt!593802))))

(assert (=> b!1632640 (isPrefix!1418 lt!593795 (++!4787 lt!593795 lt!593802))))

(declare-fun lt!593801 () Unit!29199)

(assert (=> b!1632640 (= lt!593801 lt!593807)))

(declare-fun lt!593816 () Unit!29199)

(assert (=> b!1632640 (= lt!593816 (theoremInvertabilityWhenTokenListSeparable!232 thiss!17113 rules!1846 (t!149536 (t!149536 tokens!457))))))

(declare-fun lt!593819 () Unit!29199)

(assert (=> b!1632640 (= lt!593819 (seqFromListBHdTlConstructive!235 (h!23326 (t!149536 (t!149536 tokens!457))) (t!149536 (t!149536 (t!149536 tokens!457))) (_1!10167 lt!593815)))))

(assert (=> b!1632640 (= (list!7054 (_1!10167 lt!593815)) (list!7054 (prepend!692 (seqFromList!2065 (t!149536 (t!149536 (t!149536 tokens!457)))) (h!23326 (t!149536 (t!149536 tokens!457))))))))

(declare-fun lt!593794 () Unit!29199)

(assert (=> b!1632640 (= lt!593794 lt!593819)))

(declare-fun lt!593799 () Option!3347)

(assert (=> b!1632640 (= lt!593799 (maxPrefix!1351 thiss!17113 rules!1846 (list!7053 lt!593796)))))

(assert (=> b!1632640 (= (print!1318 thiss!17113 (singletonSeq!1594 (h!23326 (t!149536 tokens!457)))) (printTailRec!840 thiss!17113 (singletonSeq!1594 (h!23326 (t!149536 tokens!457))) 0 (BalanceConc!11873 Empty!5964)))))

(declare-fun lt!593818 () Unit!29199)

(declare-fun Unit!29206 () Unit!29199)

(assert (=> b!1632640 (= lt!593818 Unit!29206)))

(declare-fun lt!593812 () Unit!29199)

(assert (=> b!1632640 (= lt!593812 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!361 thiss!17113 rules!1846 (list!7053 (charsOf!1807 (h!23326 (t!149536 tokens!457)))) (list!7053 lt!593808)))))

(assert (=> b!1632640 (= (list!7053 (charsOf!1807 (h!23326 (t!149536 tokens!457)))) (originalCharacters!3972 (h!23326 (t!149536 tokens!457))))))

(declare-fun lt!593817 () Unit!29199)

(declare-fun Unit!29207 () Unit!29199)

(assert (=> b!1632640 (= lt!593817 Unit!29207)))

(assert (=> b!1632640 (= (list!7053 (singletonSeq!1595 (apply!4615 (charsOf!1807 (h!23326 (t!149536 (t!149536 tokens!457)))) 0))) (Cons!17923 (head!3488 (originalCharacters!3972 (h!23326 (t!149536 (t!149536 tokens!457))))) Nil!17923))))

(declare-fun lt!593809 () Unit!29199)

(declare-fun Unit!29208 () Unit!29199)

(assert (=> b!1632640 (= lt!593809 Unit!29208)))

(assert (=> b!1632640 (= (list!7053 (singletonSeq!1595 (apply!4615 (charsOf!1807 (h!23326 (t!149536 (t!149536 tokens!457)))) 0))) (Cons!17923 (head!3488 (list!7053 lt!593808)) Nil!17923))))

(declare-fun lt!593804 () Unit!29199)

(declare-fun Unit!29209 () Unit!29199)

(assert (=> b!1632640 (= lt!593804 Unit!29209)))

(assert (=> b!1632640 (= (list!7053 (singletonSeq!1595 (apply!4615 (charsOf!1807 (h!23326 (t!149536 (t!149536 tokens!457)))) 0))) (Cons!17923 (head!3489 lt!593808) Nil!17923))))

(declare-fun lt!593814 () Unit!29199)

(declare-fun Unit!29210 () Unit!29199)

(assert (=> b!1632640 (= lt!593814 Unit!29210)))

(assert (=> b!1632640 (isDefined!2714 (maxPrefix!1351 thiss!17113 rules!1846 (originalCharacters!3972 (h!23326 (t!149536 tokens!457)))))))

(declare-fun lt!593805 () Unit!29199)

(declare-fun Unit!29211 () Unit!29199)

(assert (=> b!1632640 (= lt!593805 Unit!29211)))

(assert (=> b!1632640 (isDefined!2714 (maxPrefix!1351 thiss!17113 rules!1846 (list!7053 (charsOf!1807 (h!23326 (t!149536 tokens!457))))))))

(declare-fun lt!593810 () Unit!29199)

(declare-fun Unit!29212 () Unit!29199)

(assert (=> b!1632640 (= lt!593810 Unit!29212)))

(declare-fun lt!593813 () Unit!29199)

(declare-fun Unit!29213 () Unit!29199)

(assert (=> b!1632640 (= lt!593813 Unit!29213)))

(assert (=> b!1632640 (= (_1!10166 (get!5182 (maxPrefix!1351 thiss!17113 rules!1846 (list!7053 (charsOf!1807 (h!23326 (t!149536 tokens!457))))))) (h!23326 (t!149536 tokens!457)))))

(declare-fun lt!593803 () Unit!29199)

(declare-fun Unit!29214 () Unit!29199)

(assert (=> b!1632640 (= lt!593803 Unit!29214)))

(assert (=> b!1632640 (isEmpty!10957 (_2!10166 (get!5182 (maxPrefix!1351 thiss!17113 rules!1846 (list!7053 (charsOf!1807 (h!23326 (t!149536 tokens!457))))))))))

(declare-fun lt!593800 () Unit!29199)

(declare-fun Unit!29215 () Unit!29199)

(assert (=> b!1632640 (= lt!593800 Unit!29215)))

(assert (=> b!1632640 (matchR!1985 (regex!3158 (rule!4994 (h!23326 (t!149536 tokens!457)))) (list!7053 (charsOf!1807 (h!23326 (t!149536 tokens!457)))))))

(declare-fun lt!593806 () Unit!29199)

(declare-fun Unit!29216 () Unit!29199)

(assert (=> b!1632640 (= lt!593806 Unit!29216)))

(assert (=> b!1632640 (= (rule!4994 (h!23326 (t!149536 tokens!457))) (rule!4994 (h!23326 (t!149536 tokens!457))))))

(declare-fun lt!593811 () Unit!29199)

(declare-fun Unit!29217 () Unit!29199)

(assert (=> b!1632640 (= lt!593811 Unit!29217)))

(declare-fun lt!593797 () Unit!29199)

(assert (=> b!1632640 (= lt!593797 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!123 thiss!17113 rules!1846 (h!23326 (t!149536 tokens!457)) (rule!4994 (h!23326 (t!149536 tokens!457))) (list!7053 lt!593808)))))

(declare-fun b!1632641 () Bool)

(assert (=> b!1632641 (= e!1047042 (isEmpty!10963 (_2!10167 (lex!1271 thiss!17113 rules!1846 (print!1318 thiss!17113 (seqFromList!2065 (t!149536 tokens!457)))))))))

(assert (= (and d!491796 c!265723) b!1632639))

(assert (= (and d!491796 (not c!265723)) b!1632640))

(assert (= (and d!491796 res!730605) b!1632641))

(declare-fun m!1966889 () Bool)

(assert (=> d!491796 m!1966889))

(assert (=> d!491796 m!1966301))

(assert (=> d!491796 m!1966223))

(declare-fun m!1966891 () Bool)

(assert (=> d!491796 m!1966891))

(declare-fun m!1966893 () Bool)

(assert (=> d!491796 m!1966893))

(assert (=> d!491796 m!1966223))

(assert (=> d!491796 m!1966891))

(declare-fun m!1966895 () Bool)

(assert (=> b!1632640 m!1966895))

(declare-fun m!1966897 () Bool)

(assert (=> b!1632640 m!1966897))

(declare-fun m!1966899 () Bool)

(assert (=> b!1632640 m!1966899))

(declare-fun m!1966901 () Bool)

(assert (=> b!1632640 m!1966901))

(assert (=> b!1632640 m!1966331))

(declare-fun m!1966903 () Bool)

(assert (=> b!1632640 m!1966903))

(declare-fun m!1966905 () Bool)

(assert (=> b!1632640 m!1966905))

(declare-fun m!1966907 () Bool)

(assert (=> b!1632640 m!1966907))

(declare-fun m!1966909 () Bool)

(assert (=> b!1632640 m!1966909))

(assert (=> b!1632640 m!1966901))

(declare-fun m!1966911 () Bool)

(assert (=> b!1632640 m!1966911))

(assert (=> b!1632640 m!1966331))

(assert (=> b!1632640 m!1966767))

(assert (=> b!1632640 m!1966901))

(declare-fun m!1966913 () Bool)

(assert (=> b!1632640 m!1966913))

(declare-fun m!1966915 () Bool)

(assert (=> b!1632640 m!1966915))

(declare-fun m!1966917 () Bool)

(assert (=> b!1632640 m!1966917))

(declare-fun m!1966919 () Bool)

(assert (=> b!1632640 m!1966919))

(declare-fun m!1966921 () Bool)

(assert (=> b!1632640 m!1966921))

(declare-fun m!1966923 () Bool)

(assert (=> b!1632640 m!1966923))

(assert (=> b!1632640 m!1966921))

(assert (=> b!1632640 m!1966919))

(assert (=> b!1632640 m!1966907))

(declare-fun m!1966925 () Bool)

(assert (=> b!1632640 m!1966925))

(declare-fun m!1966927 () Bool)

(assert (=> b!1632640 m!1966927))

(declare-fun m!1966929 () Bool)

(assert (=> b!1632640 m!1966929))

(declare-fun m!1966931 () Bool)

(assert (=> b!1632640 m!1966931))

(assert (=> b!1632640 m!1966767))

(declare-fun m!1966933 () Bool)

(assert (=> b!1632640 m!1966933))

(assert (=> b!1632640 m!1966223))

(assert (=> b!1632640 m!1966767))

(declare-fun m!1966935 () Bool)

(assert (=> b!1632640 m!1966935))

(assert (=> b!1632640 m!1966357))

(assert (=> b!1632640 m!1966767))

(assert (=> b!1632640 m!1966901))

(declare-fun m!1966937 () Bool)

(assert (=> b!1632640 m!1966937))

(assert (=> b!1632640 m!1966895))

(declare-fun m!1966939 () Bool)

(assert (=> b!1632640 m!1966939))

(assert (=> b!1632640 m!1966933))

(declare-fun m!1966941 () Bool)

(assert (=> b!1632640 m!1966941))

(assert (=> b!1632640 m!1966933))

(declare-fun m!1966943 () Bool)

(assert (=> b!1632640 m!1966943))

(assert (=> b!1632640 m!1966897))

(declare-fun m!1966945 () Bool)

(assert (=> b!1632640 m!1966945))

(assert (=> b!1632640 m!1966357))

(declare-fun m!1966947 () Bool)

(assert (=> b!1632640 m!1966947))

(assert (=> b!1632640 m!1966897))

(declare-fun m!1966949 () Bool)

(assert (=> b!1632640 m!1966949))

(declare-fun m!1966951 () Bool)

(assert (=> b!1632640 m!1966951))

(declare-fun m!1966953 () Bool)

(assert (=> b!1632640 m!1966953))

(declare-fun m!1966955 () Bool)

(assert (=> b!1632640 m!1966955))

(assert (=> b!1632640 m!1966929))

(assert (=> b!1632640 m!1966949))

(assert (=> b!1632640 m!1966955))

(assert (=> b!1632640 m!1966223))

(assert (=> b!1632640 m!1966891))

(assert (=> b!1632640 m!1966951))

(declare-fun m!1966957 () Bool)

(assert (=> b!1632640 m!1966957))

(declare-fun m!1966959 () Bool)

(assert (=> b!1632640 m!1966959))

(assert (=> b!1632641 m!1966223))

(assert (=> b!1632641 m!1966223))

(assert (=> b!1632641 m!1966891))

(assert (=> b!1632641 m!1966891))

(assert (=> b!1632641 m!1966893))

(declare-fun m!1966961 () Bool)

(assert (=> b!1632641 m!1966961))

(assert (=> b!1632334 d!491796))

(declare-fun b!1632653 () Bool)

(declare-fun e!1047051 () Bool)

(assert (=> b!1632653 (= e!1047051 (>= (size!14321 lt!593491) (size!14321 lt!593504)))))

(declare-fun d!491820 () Bool)

(assert (=> d!491820 e!1047051))

(declare-fun res!730615 () Bool)

(assert (=> d!491820 (=> res!730615 e!1047051)))

(declare-fun lt!593822 () Bool)

(assert (=> d!491820 (= res!730615 (not lt!593822))))

(declare-fun e!1047050 () Bool)

(assert (=> d!491820 (= lt!593822 e!1047050)))

(declare-fun res!730617 () Bool)

(assert (=> d!491820 (=> res!730617 e!1047050)))

(assert (=> d!491820 (= res!730617 (is-Nil!17923 lt!593504))))

(assert (=> d!491820 (= (isPrefix!1418 lt!593504 lt!593491) lt!593822)))

(declare-fun b!1632651 () Bool)

(declare-fun res!730616 () Bool)

(declare-fun e!1047052 () Bool)

(assert (=> b!1632651 (=> (not res!730616) (not e!1047052))))

(assert (=> b!1632651 (= res!730616 (= (head!3488 lt!593504) (head!3488 lt!593491)))))

(declare-fun b!1632652 () Bool)

(declare-fun tail!2380 (List!17993) List!17993)

(assert (=> b!1632652 (= e!1047052 (isPrefix!1418 (tail!2380 lt!593504) (tail!2380 lt!593491)))))

(declare-fun b!1632650 () Bool)

(assert (=> b!1632650 (= e!1047050 e!1047052)))

(declare-fun res!730614 () Bool)

(assert (=> b!1632650 (=> (not res!730614) (not e!1047052))))

(assert (=> b!1632650 (= res!730614 (not (is-Nil!17923 lt!593491)))))

(assert (= (and d!491820 (not res!730617)) b!1632650))

(assert (= (and b!1632650 res!730614) b!1632651))

(assert (= (and b!1632651 res!730616) b!1632652))

(assert (= (and d!491820 (not res!730615)) b!1632653))

(declare-fun m!1966963 () Bool)

(assert (=> b!1632653 m!1966963))

(declare-fun m!1966965 () Bool)

(assert (=> b!1632653 m!1966965))

(declare-fun m!1966967 () Bool)

(assert (=> b!1632651 m!1966967))

(declare-fun m!1966969 () Bool)

(assert (=> b!1632651 m!1966969))

(declare-fun m!1966971 () Bool)

(assert (=> b!1632652 m!1966971))

(declare-fun m!1966973 () Bool)

(assert (=> b!1632652 m!1966973))

(assert (=> b!1632652 m!1966971))

(assert (=> b!1632652 m!1966973))

(declare-fun m!1966975 () Bool)

(assert (=> b!1632652 m!1966975))

(assert (=> b!1632334 d!491820))

(declare-fun d!491822 () Bool)

(assert (=> d!491822 (isPrefix!1418 lt!593504 (++!4787 lt!593504 lt!593501))))

(declare-fun lt!593825 () Unit!29199)

(declare-fun choose!9818 (List!17993 List!17993) Unit!29199)

(assert (=> d!491822 (= lt!593825 (choose!9818 lt!593504 lt!593501))))

(assert (=> d!491822 (= (lemmaConcatTwoListThenFirstIsPrefix!943 lt!593504 lt!593501) lt!593825)))

(declare-fun bs!395236 () Bool)

(assert (= bs!395236 d!491822))

(assert (=> bs!395236 m!1966227))

(assert (=> bs!395236 m!1966227))

(declare-fun m!1966977 () Bool)

(assert (=> bs!395236 m!1966977))

(declare-fun m!1966979 () Bool)

(assert (=> bs!395236 m!1966979))

(assert (=> b!1632334 d!491822))

(declare-fun d!491824 () Bool)

(declare-fun c!265726 () Bool)

(assert (=> d!491824 (= c!265726 (isEmpty!10957 (++!4787 lt!593504 lt!593510)))))

(declare-fun e!1047055 () Bool)

(assert (=> d!491824 (= (prefixMatch!421 lt!593498 (++!4787 lt!593504 lt!593510)) e!1047055)))

(declare-fun b!1632658 () Bool)

(declare-fun lostCause!445 (Regex!4486) Bool)

(assert (=> b!1632658 (= e!1047055 (not (lostCause!445 lt!593498)))))

(declare-fun b!1632659 () Bool)

(declare-fun derivativeStep!1089 (Regex!4486 C!9146) Regex!4486)

(assert (=> b!1632659 (= e!1047055 (prefixMatch!421 (derivativeStep!1089 lt!593498 (head!3488 (++!4787 lt!593504 lt!593510))) (tail!2380 (++!4787 lt!593504 lt!593510))))))

(assert (= (and d!491824 c!265726) b!1632658))

(assert (= (and d!491824 (not c!265726)) b!1632659))

(assert (=> d!491824 m!1966349))

(declare-fun m!1966981 () Bool)

(assert (=> d!491824 m!1966981))

(declare-fun m!1966983 () Bool)

(assert (=> b!1632658 m!1966983))

(assert (=> b!1632659 m!1966349))

(declare-fun m!1966985 () Bool)

(assert (=> b!1632659 m!1966985))

(assert (=> b!1632659 m!1966985))

(declare-fun m!1966987 () Bool)

(assert (=> b!1632659 m!1966987))

(assert (=> b!1632659 m!1966349))

(declare-fun m!1966989 () Bool)

(assert (=> b!1632659 m!1966989))

(assert (=> b!1632659 m!1966987))

(assert (=> b!1632659 m!1966989))

(declare-fun m!1966991 () Bool)

(assert (=> b!1632659 m!1966991))

(assert (=> b!1632336 d!491824))

(declare-fun b!1632670 () Bool)

(declare-fun res!730623 () Bool)

(declare-fun e!1047060 () Bool)

(assert (=> b!1632670 (=> (not res!730623) (not e!1047060))))

(declare-fun lt!593828 () List!17993)

(assert (=> b!1632670 (= res!730623 (= (size!14321 lt!593828) (+ (size!14321 lt!593504) (size!14321 lt!593510))))))

(declare-fun b!1632671 () Bool)

(assert (=> b!1632671 (= e!1047060 (or (not (= lt!593510 Nil!17923)) (= lt!593828 lt!593504)))))

(declare-fun d!491826 () Bool)

(assert (=> d!491826 e!1047060))

(declare-fun res!730622 () Bool)

(assert (=> d!491826 (=> (not res!730622) (not e!1047060))))

(declare-fun content!2486 (List!17993) (Set C!9146))

(assert (=> d!491826 (= res!730622 (= (content!2486 lt!593828) (set.union (content!2486 lt!593504) (content!2486 lt!593510))))))

(declare-fun e!1047061 () List!17993)

(assert (=> d!491826 (= lt!593828 e!1047061)))

(declare-fun c!265729 () Bool)

(assert (=> d!491826 (= c!265729 (is-Nil!17923 lt!593504))))

(assert (=> d!491826 (= (++!4787 lt!593504 lt!593510) lt!593828)))

(declare-fun b!1632668 () Bool)

(assert (=> b!1632668 (= e!1047061 lt!593510)))

(declare-fun b!1632669 () Bool)

(assert (=> b!1632669 (= e!1047061 (Cons!17923 (h!23324 lt!593504) (++!4787 (t!149534 lt!593504) lt!593510)))))

(assert (= (and d!491826 c!265729) b!1632668))

(assert (= (and d!491826 (not c!265729)) b!1632669))

(assert (= (and d!491826 res!730622) b!1632670))

(assert (= (and b!1632670 res!730623) b!1632671))

(declare-fun m!1966993 () Bool)

(assert (=> b!1632670 m!1966993))

(assert (=> b!1632670 m!1966965))

(declare-fun m!1966995 () Bool)

(assert (=> b!1632670 m!1966995))

(declare-fun m!1966997 () Bool)

(assert (=> d!491826 m!1966997))

(declare-fun m!1966999 () Bool)

(assert (=> d!491826 m!1966999))

(declare-fun m!1967001 () Bool)

(assert (=> d!491826 m!1967001))

(declare-fun m!1967003 () Bool)

(assert (=> b!1632669 m!1967003))

(assert (=> b!1632336 d!491826))

(declare-fun d!491828 () Bool)

(assert (=> d!491828 (= (get!5182 lt!593500) (v!24411 lt!593500))))

(assert (=> b!1632315 d!491828))

(declare-fun b!1632721 () Bool)

(declare-fun e!1047097 () Unit!29199)

(declare-fun Unit!29218 () Unit!29199)

(assert (=> b!1632721 (= e!1047097 Unit!29218)))

(declare-fun lt!594081 () Token!5882)

(declare-fun lt!594123 () List!17993)

(declare-fun lt!594102 () Unit!29199)

(declare-fun lt!594120 () List!17993)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!35 (LexerInterface!2787 List!17996 List!17993 Token!5882 Rule!6116 List!17993) Unit!29199)

(assert (=> b!1632721 (= lt!594102 (lemmaMaxPrefixThenMatchesRulesRegex!35 thiss!17113 rules!1846 lt!594120 lt!594081 (rule!4994 lt!594081) lt!594123))))

(assert (=> b!1632721 (matchR!1985 (rulesRegex!548 thiss!17113 rules!1846) (list!7053 (charsOf!1807 lt!594081)))))

(declare-fun lt!594101 () Unit!29199)

(assert (=> b!1632721 (= lt!594101 lt!594102)))

(declare-fun lt!594082 () List!17993)

(assert (=> b!1632721 (= lt!594082 (list!7053 (charsOf!1807 (h!23326 tokens!457))))))

(declare-fun lt!594073 () List!17993)

(assert (=> b!1632721 (= lt!594073 (list!7053 (charsOf!1807 (h!23326 tokens!457))))))

(declare-fun lt!594095 () List!17993)

(declare-fun getSuffix!705 (List!17993 List!17993) List!17993)

(assert (=> b!1632721 (= lt!594095 (getSuffix!705 lt!594120 (list!7053 (charsOf!1807 (h!23326 tokens!457)))))))

(declare-fun lt!594121 () Unit!29199)

(declare-fun lemmaSamePrefixThenSameSuffix!657 (List!17993 List!17993 List!17993 List!17993 List!17993) Unit!29199)

(assert (=> b!1632721 (= lt!594121 (lemmaSamePrefixThenSameSuffix!657 lt!594082 lt!593501 lt!594073 lt!594095 lt!594120))))

(assert (=> b!1632721 (= lt!593501 lt!594095)))

(declare-fun lt!594111 () Unit!29199)

(assert (=> b!1632721 (= lt!594111 lt!594121)))

(declare-fun lt!594066 () List!17993)

(assert (=> b!1632721 (= lt!594066 (list!7053 (charsOf!1807 (h!23326 tokens!457))))))

(declare-fun lt!594099 () Unit!29199)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!148 (List!17993 List!17993) Unit!29199)

(assert (=> b!1632721 (= lt!594099 (lemmaAddHeadSuffixToPrefixStillPrefix!148 lt!594066 lt!594120))))

(assert (=> b!1632721 (isPrefix!1418 (++!4787 lt!594066 (Cons!17923 (head!3488 (getSuffix!705 lt!594120 lt!594066)) Nil!17923)) lt!594120)))

(declare-fun lt!594070 () Unit!29199)

(assert (=> b!1632721 (= lt!594070 lt!594099)))

(declare-fun lt!594118 () List!17993)

(assert (=> b!1632721 (= lt!594118 (list!7053 (charsOf!1807 lt!594081)))))

(declare-fun lt!594077 () List!17993)

(assert (=> b!1632721 (= lt!594077 (++!4787 (list!7053 (charsOf!1807 (h!23326 tokens!457))) (Cons!17923 (head!3488 lt!593501) Nil!17923)))))

(declare-fun lt!594107 () Unit!29199)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!34 (List!17993 List!17993 List!17993) Unit!29199)

(assert (=> b!1632721 (= lt!594107 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!34 lt!594118 lt!594077 lt!594120))))

(assert (=> b!1632721 (isPrefix!1418 lt!594077 lt!594118)))

(declare-fun lt!594057 () Unit!29199)

(assert (=> b!1632721 (= lt!594057 lt!594107)))

(declare-fun lt!594112 () Regex!4486)

(assert (=> b!1632721 (= lt!594112 (rulesRegex!548 thiss!17113 rules!1846))))

(declare-fun lt!594087 () List!17993)

(assert (=> b!1632721 (= lt!594087 (++!4787 (list!7053 (charsOf!1807 (h!23326 tokens!457))) (Cons!17923 (head!3488 lt!593501) Nil!17923)))))

(declare-fun lt!594098 () List!17993)

(assert (=> b!1632721 (= lt!594098 (list!7053 (charsOf!1807 lt!594081)))))

(declare-fun lt!594062 () Unit!29199)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!35 (Regex!4486 List!17993 List!17993) Unit!29199)

(assert (=> b!1632721 (= lt!594062 (lemmaNotPrefixMatchThenCannotMatchLonger!35 lt!594112 lt!594087 lt!594098))))

(assert (=> b!1632721 (not (matchR!1985 lt!594112 lt!594098))))

(declare-fun lt!594078 () Unit!29199)

(assert (=> b!1632721 (= lt!594078 lt!594062)))

(assert (=> b!1632721 false))

(declare-fun b!1632722 () Bool)

(declare-fun e!1047092 () Unit!29199)

(declare-fun Unit!29219 () Unit!29199)

(assert (=> b!1632722 (= e!1047092 Unit!29219)))

(declare-fun b!1632723 () Bool)

(declare-fun res!730644 () Bool)

(declare-fun e!1047093 () Bool)

(assert (=> b!1632723 (=> (not res!730644) (not e!1047093))))

(declare-datatypes ((Option!3351 0))(
  ( (None!3350) (Some!3350 (v!24421 Rule!6116)) )
))
(declare-fun get!5184 (Option!3351) Rule!6116)

(declare-fun getRuleFromTag!291 (LexerInterface!2787 List!17996 String!20574) Option!3351)

(assert (=> b!1632723 (= res!730644 (matchR!1985 (regex!3158 (get!5184 (getRuleFromTag!291 thiss!17113 rules!1846 (tag!3438 (rule!4994 lt!594081))))) (list!7053 (charsOf!1807 lt!594081))))))

(declare-fun b!1632724 () Bool)

(declare-fun e!1047095 () Unit!29199)

(declare-fun Unit!29220 () Unit!29199)

(assert (=> b!1632724 (= e!1047095 Unit!29220)))

(declare-fun b!1632725 () Bool)

(declare-fun e!1047091 () Unit!29199)

(declare-fun Unit!29221 () Unit!29199)

(assert (=> b!1632725 (= e!1047091 Unit!29221)))

(declare-fun b!1632726 () Bool)

(declare-fun e!1047096 () Unit!29199)

(declare-fun Unit!29222 () Unit!29199)

(assert (=> b!1632726 (= e!1047096 Unit!29222)))

(declare-fun c!265747 () Bool)

(declare-fun getIndex!103 (List!17996 Rule!6116) Int)

(assert (=> b!1632726 (= c!265747 (< (getIndex!103 rules!1846 (rule!4994 (h!23326 tokens!457))) (getIndex!103 rules!1846 (rule!4994 lt!594081))))))

(declare-fun lt!594103 () Unit!29199)

(assert (=> b!1632726 (= lt!594103 e!1047091)))

(declare-fun c!265746 () Bool)

(assert (=> b!1632726 (= c!265746 (< (getIndex!103 rules!1846 (rule!4994 lt!594081)) (getIndex!103 rules!1846 (rule!4994 (h!23326 tokens!457)))))))

(declare-fun lt!594055 () Unit!29199)

(assert (=> b!1632726 (= lt!594055 e!1047092)))

(declare-fun c!265748 () Bool)

(assert (=> b!1632726 (= c!265748 (= (getIndex!103 rules!1846 (rule!4994 lt!594081)) (getIndex!103 rules!1846 (rule!4994 (h!23326 tokens!457)))))))

(declare-fun lt!594063 () Unit!29199)

(declare-fun e!1047094 () Unit!29199)

(assert (=> b!1632726 (= lt!594063 e!1047094)))

(assert (=> b!1632726 false))

(declare-fun b!1632727 () Bool)

(assert (=> b!1632727 false))

(declare-fun lt!594085 () Unit!29199)

(declare-fun lt!594079 () Unit!29199)

(assert (=> b!1632727 (= lt!594085 lt!594079)))

(declare-fun lt!594116 () List!17993)

(assert (=> b!1632727 (not (matchR!1985 (regex!3158 (rule!4994 (h!23326 tokens!457))) lt!594116))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!75 (LexerInterface!2787 List!17996 Rule!6116 List!17993 List!17993 Rule!6116) Unit!29199)

(assert (=> b!1632727 (= lt!594079 (lemmaMaxPrefNoSmallerRuleMatches!75 thiss!17113 rules!1846 (rule!4994 lt!594081) lt!594116 lt!594120 (rule!4994 (h!23326 tokens!457))))))

(assert (=> b!1632727 (= lt!594116 (list!7053 (charsOf!1807 lt!594081)))))

(declare-fun Unit!29223 () Unit!29199)

(assert (=> b!1632727 (= e!1047091 Unit!29223)))

(declare-fun d!491830 () Bool)

(assert (=> d!491830 (= (maxPrefix!1351 thiss!17113 rules!1846 (++!4787 (list!7053 (charsOf!1807 (h!23326 tokens!457))) lt!593501)) (Some!3346 (tuple2!17529 (h!23326 tokens!457) lt!593501)))))

(declare-fun lt!594108 () Unit!29199)

(declare-fun Unit!29224 () Unit!29199)

(assert (=> d!491830 (= lt!594108 Unit!29224)))

(declare-fun lt!594061 () Unit!29199)

(assert (=> d!491830 (= lt!594061 e!1047096)))

(declare-fun c!265749 () Bool)

(assert (=> d!491830 (= c!265749 (not (= (rule!4994 lt!594081) (rule!4994 (h!23326 tokens!457)))))))

(declare-fun lt!594058 () Unit!29199)

(declare-fun lt!594084 () Unit!29199)

(assert (=> d!491830 (= lt!594058 lt!594084)))

(assert (=> d!491830 (= lt!593501 lt!594123)))

(assert (=> d!491830 (= lt!594084 (lemmaSamePrefixThenSameSuffix!657 (list!7053 (charsOf!1807 (h!23326 tokens!457))) lt!593501 (list!7053 (charsOf!1807 (h!23326 tokens!457))) lt!594123 lt!594120))))

(declare-fun lt!594074 () Unit!29199)

(declare-fun lt!594072 () Unit!29199)

(assert (=> d!491830 (= lt!594074 lt!594072)))

(declare-fun lt!594088 () List!17993)

(declare-fun lt!594113 () List!17993)

(assert (=> d!491830 (= lt!594088 lt!594113)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!158 (List!17993 List!17993 List!17993) Unit!29199)

(assert (=> d!491830 (= lt!594072 (lemmaIsPrefixSameLengthThenSameList!158 lt!594088 lt!594113 lt!594120))))

(assert (=> d!491830 (= lt!594113 (list!7053 (charsOf!1807 (h!23326 tokens!457))))))

(assert (=> d!491830 (= lt!594088 (list!7053 (charsOf!1807 lt!594081)))))

(declare-fun lt!594056 () Unit!29199)

(assert (=> d!491830 (= lt!594056 e!1047095)))

(declare-fun c!265750 () Bool)

(assert (=> d!491830 (= c!265750 (< (size!14323 (charsOf!1807 lt!594081)) (size!14323 (charsOf!1807 (h!23326 tokens!457)))))))

(declare-fun lt!594065 () Unit!29199)

(assert (=> d!491830 (= lt!594065 e!1047097)))

(declare-fun c!265745 () Bool)

(assert (=> d!491830 (= c!265745 (> (size!14323 (charsOf!1807 lt!594081)) (size!14323 (charsOf!1807 (h!23326 tokens!457)))))))

(declare-fun lt!594094 () Unit!29199)

(declare-fun lt!594124 () Unit!29199)

(assert (=> d!491830 (= lt!594094 lt!594124)))

(assert (=> d!491830 (matchR!1985 (rulesRegex!548 thiss!17113 rules!1846) (list!7053 (charsOf!1807 (h!23326 tokens!457))))))

(assert (=> d!491830 (= lt!594124 (lemmaMaxPrefixThenMatchesRulesRegex!35 thiss!17113 rules!1846 (list!7053 (charsOf!1807 (h!23326 tokens!457))) (h!23326 tokens!457) (rule!4994 (h!23326 tokens!457)) Nil!17923))))

(declare-fun lt!594109 () Unit!29199)

(declare-fun lt!594083 () Unit!29199)

(assert (=> d!491830 (= lt!594109 lt!594083)))

(declare-fun lt!594090 () List!17993)

(assert (=> d!491830 (= lt!594123 lt!594090)))

(declare-fun lt!594092 () List!17993)

(declare-fun lt!594076 () List!17993)

(assert (=> d!491830 (= lt!594083 (lemmaSamePrefixThenSameSuffix!657 lt!594092 lt!594123 lt!594076 lt!594090 lt!594120))))

(assert (=> d!491830 (= lt!594090 (getSuffix!705 lt!594120 (list!7053 (charsOf!1807 lt!594081))))))

(assert (=> d!491830 (= lt!594076 (list!7053 (charsOf!1807 lt!594081)))))

(assert (=> d!491830 (= lt!594092 (list!7053 (charsOf!1807 lt!594081)))))

(declare-fun lt!594059 () Unit!29199)

(declare-fun lt!594093 () Unit!29199)

(assert (=> d!491830 (= lt!594059 lt!594093)))

(declare-fun lt!594100 () List!17993)

(assert (=> d!491830 (= (maxPrefixOneRule!782 thiss!17113 (rule!4994 lt!594081) lt!594120) (Some!3346 (tuple2!17529 (Token!5883 (apply!4617 (transformation!3158 (rule!4994 lt!594081)) (seqFromList!2066 lt!594100)) (rule!4994 lt!594081) (size!14321 lt!594100) lt!594100) lt!594123)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!224 (LexerInterface!2787 List!17996 List!17993 List!17993 List!17993 Rule!6116) Unit!29199)

(assert (=> d!491830 (= lt!594093 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!224 thiss!17113 rules!1846 lt!594100 lt!594120 lt!594123 (rule!4994 lt!594081)))))

(assert (=> d!491830 (= lt!594100 (list!7053 (charsOf!1807 lt!594081)))))

(declare-fun lt!594071 () Unit!29199)

(declare-fun lemmaCharactersSize!330 (Token!5882) Unit!29199)

(assert (=> d!491830 (= lt!594071 (lemmaCharactersSize!330 lt!594081))))

(declare-fun lt!594114 () Unit!29199)

(declare-fun lemmaEqSameImage!183 (TokenValueInjection!6156 BalanceConc!11872 BalanceConc!11872) Unit!29199)

(assert (=> d!491830 (= lt!594114 (lemmaEqSameImage!183 (transformation!3158 (rule!4994 lt!594081)) (charsOf!1807 lt!594081) (seqFromList!2066 (originalCharacters!3972 lt!594081))))))

(declare-fun lt!594064 () Unit!29199)

(declare-fun lemmaSemiInverse!398 (TokenValueInjection!6156 BalanceConc!11872) Unit!29199)

(assert (=> d!491830 (= lt!594064 (lemmaSemiInverse!398 (transformation!3158 (rule!4994 lt!594081)) (charsOf!1807 lt!594081)))))

(declare-fun lt!594089 () Unit!29199)

(declare-fun lemmaInv!463 (TokenValueInjection!6156) Unit!29199)

(assert (=> d!491830 (= lt!594089 (lemmaInv!463 (transformation!3158 (rule!4994 lt!594081))))))

(declare-fun lt!594106 () Unit!29199)

(declare-fun lt!594068 () Unit!29199)

(assert (=> d!491830 (= lt!594106 lt!594068)))

(declare-fun lt!594122 () List!17993)

(assert (=> d!491830 (isPrefix!1418 lt!594122 (++!4787 lt!594122 lt!594123))))

(assert (=> d!491830 (= lt!594068 (lemmaConcatTwoListThenFirstIsPrefix!943 lt!594122 lt!594123))))

(assert (=> d!491830 (= lt!594122 (list!7053 (charsOf!1807 lt!594081)))))

(declare-fun lt!594086 () Unit!29199)

(declare-fun lt!594115 () Unit!29199)

(assert (=> d!491830 (= lt!594086 lt!594115)))

(assert (=> d!491830 e!1047093))

(declare-fun res!730643 () Bool)

(assert (=> d!491830 (=> (not res!730643) (not e!1047093))))

(declare-fun isDefined!2718 (Option!3351) Bool)

(assert (=> d!491830 (= res!730643 (isDefined!2718 (getRuleFromTag!291 thiss!17113 rules!1846 (tag!3438 (rule!4994 lt!594081)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!291 (LexerInterface!2787 List!17996 List!17993 Token!5882) Unit!29199)

(assert (=> d!491830 (= lt!594115 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!291 thiss!17113 rules!1846 lt!594120 lt!594081))))

(declare-fun lt!594075 () Option!3347)

(assert (=> d!491830 (= lt!594123 (_2!10166 (get!5182 lt!594075)))))

(assert (=> d!491830 (= lt!594081 (_1!10166 (get!5182 lt!594075)))))

(declare-fun lt!594067 () Unit!29199)

(assert (=> d!491830 (= lt!594067 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!361 thiss!17113 rules!1846 (list!7053 (charsOf!1807 (h!23326 tokens!457))) lt!593501))))

(assert (=> d!491830 (= lt!594075 (maxPrefix!1351 thiss!17113 rules!1846 lt!594120))))

(declare-fun lt!594069 () Unit!29199)

(declare-fun lt!594110 () Unit!29199)

(assert (=> d!491830 (= lt!594069 lt!594110)))

(declare-fun lt!594080 () List!17993)

(assert (=> d!491830 (isPrefix!1418 lt!594080 (++!4787 lt!594080 lt!593501))))

(assert (=> d!491830 (= lt!594110 (lemmaConcatTwoListThenFirstIsPrefix!943 lt!594080 lt!593501))))

(assert (=> d!491830 (= lt!594080 (list!7053 (charsOf!1807 (h!23326 tokens!457))))))

(assert (=> d!491830 (= lt!594120 (++!4787 (list!7053 (charsOf!1807 (h!23326 tokens!457))) lt!593501))))

(assert (=> d!491830 (not (isEmpty!10958 rules!1846))))

(assert (=> d!491830 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!123 thiss!17113 rules!1846 (h!23326 tokens!457) (rule!4994 (h!23326 tokens!457)) lt!593501) lt!594108)))

(declare-fun b!1632728 () Bool)

(declare-fun Unit!29225 () Unit!29199)

(assert (=> b!1632728 (= e!1047094 Unit!29225)))

(declare-fun b!1632729 () Bool)

(declare-fun Unit!29226 () Unit!29199)

(assert (=> b!1632729 (= e!1047095 Unit!29226)))

(declare-fun lt!594119 () List!17993)

(assert (=> b!1632729 (= lt!594119 (list!7053 (charsOf!1807 lt!594081)))))

(declare-fun lt!594096 () List!17993)

(assert (=> b!1632729 (= lt!594096 (list!7053 (charsOf!1807 (h!23326 tokens!457))))))

(declare-fun lt!594091 () Unit!29199)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!125 (LexerInterface!2787 List!17996 Rule!6116 List!17993 List!17993 List!17993 Rule!6116) Unit!29199)

(assert (=> b!1632729 (= lt!594091 (lemmaMaxPrefixOutputsMaxPrefix!125 thiss!17113 rules!1846 (rule!4994 lt!594081) lt!594119 lt!594120 lt!594096 (rule!4994 (h!23326 tokens!457))))))

(assert (=> b!1632729 (not (matchR!1985 (regex!3158 (rule!4994 (h!23326 tokens!457))) lt!594096))))

(declare-fun lt!594097 () Unit!29199)

(assert (=> b!1632729 (= lt!594097 lt!594091)))

(assert (=> b!1632729 false))

(declare-fun b!1632730 () Bool)

(declare-fun Unit!29227 () Unit!29199)

(assert (=> b!1632730 (= e!1047097 Unit!29227)))

(declare-fun b!1632731 () Bool)

(assert (=> b!1632731 false))

(declare-fun lt!594105 () Unit!29199)

(declare-fun lt!594117 () Unit!29199)

(assert (=> b!1632731 (= lt!594105 lt!594117)))

(assert (=> b!1632731 (= (rule!4994 lt!594081) (rule!4994 (h!23326 tokens!457)))))

(declare-fun lemmaSameIndexThenSameElement!51 (List!17996 Rule!6116 Rule!6116) Unit!29199)

(assert (=> b!1632731 (= lt!594117 (lemmaSameIndexThenSameElement!51 rules!1846 (rule!4994 lt!594081) (rule!4994 (h!23326 tokens!457))))))

(declare-fun Unit!29228 () Unit!29199)

(assert (=> b!1632731 (= e!1047094 Unit!29228)))

(declare-fun b!1632732 () Bool)

(assert (=> b!1632732 (= e!1047093 (= (rule!4994 lt!594081) (get!5184 (getRuleFromTag!291 thiss!17113 rules!1846 (tag!3438 (rule!4994 lt!594081))))))))

(declare-fun b!1632733 () Bool)

(assert (=> b!1632733 false))

(declare-fun lt!594104 () Unit!29199)

(declare-fun lt!594060 () Unit!29199)

(assert (=> b!1632733 (= lt!594104 lt!594060)))

(declare-fun lt!594125 () List!17993)

(assert (=> b!1632733 (not (matchR!1985 (regex!3158 (rule!4994 lt!594081)) lt!594125))))

(assert (=> b!1632733 (= lt!594060 (lemmaMaxPrefNoSmallerRuleMatches!75 thiss!17113 rules!1846 (rule!4994 (h!23326 tokens!457)) lt!594125 (list!7053 (charsOf!1807 (h!23326 tokens!457))) (rule!4994 lt!594081)))))

(assert (=> b!1632733 (= lt!594125 (list!7053 (charsOf!1807 (h!23326 tokens!457))))))

(declare-fun Unit!29229 () Unit!29199)

(assert (=> b!1632733 (= e!1047092 Unit!29229)))

(declare-fun b!1632734 () Bool)

(declare-fun Unit!29230 () Unit!29199)

(assert (=> b!1632734 (= e!1047096 Unit!29230)))

(assert (= (and d!491830 res!730643) b!1632723))

(assert (= (and b!1632723 res!730644) b!1632732))

(assert (= (and d!491830 c!265745) b!1632721))

(assert (= (and d!491830 (not c!265745)) b!1632730))

(assert (= (and d!491830 c!265750) b!1632729))

(assert (= (and d!491830 (not c!265750)) b!1632724))

(assert (= (and d!491830 c!265749) b!1632726))

(assert (= (and d!491830 (not c!265749)) b!1632734))

(assert (= (and b!1632726 c!265747) b!1632727))

(assert (= (and b!1632726 (not c!265747)) b!1632725))

(assert (= (and b!1632726 c!265746) b!1632733))

(assert (= (and b!1632726 (not c!265746)) b!1632722))

(assert (= (and b!1632726 c!265748) b!1632731))

(assert (= (and b!1632726 (not c!265748)) b!1632728))

(declare-fun m!1967097 () Bool)

(assert (=> b!1632726 m!1967097))

(declare-fun m!1967099 () Bool)

(assert (=> b!1632726 m!1967099))

(declare-fun m!1967101 () Bool)

(assert (=> b!1632727 m!1967101))

(declare-fun m!1967103 () Bool)

(assert (=> b!1632727 m!1967103))

(declare-fun m!1967105 () Bool)

(assert (=> b!1632727 m!1967105))

(assert (=> b!1632727 m!1967105))

(declare-fun m!1967107 () Bool)

(assert (=> b!1632727 m!1967107))

(declare-fun m!1967109 () Bool)

(assert (=> b!1632732 m!1967109))

(assert (=> b!1632732 m!1967109))

(declare-fun m!1967111 () Bool)

(assert (=> b!1632732 m!1967111))

(declare-fun m!1967113 () Bool)

(assert (=> b!1632733 m!1967113))

(assert (=> b!1632733 m!1966221))

(assert (=> b!1632733 m!1966221))

(declare-fun m!1967115 () Bool)

(assert (=> b!1632733 m!1967115))

(assert (=> b!1632733 m!1967115))

(declare-fun m!1967117 () Bool)

(assert (=> b!1632733 m!1967117))

(assert (=> b!1632723 m!1967109))

(assert (=> b!1632723 m!1967111))

(assert (=> b!1632723 m!1967105))

(assert (=> b!1632723 m!1967107))

(declare-fun m!1967119 () Bool)

(assert (=> b!1632723 m!1967119))

(assert (=> b!1632723 m!1967105))

(assert (=> b!1632723 m!1967107))

(assert (=> b!1632723 m!1967109))

(declare-fun m!1967121 () Bool)

(assert (=> b!1632731 m!1967121))

(declare-fun m!1967123 () Bool)

(assert (=> b!1632721 m!1967123))

(declare-fun m!1967125 () Bool)

(assert (=> b!1632721 m!1967125))

(declare-fun m!1967127 () Bool)

(assert (=> b!1632721 m!1967127))

(declare-fun m!1967129 () Bool)

(assert (=> b!1632721 m!1967129))

(declare-fun m!1967131 () Bool)

(assert (=> b!1632721 m!1967131))

(assert (=> b!1632721 m!1966221))

(assert (=> b!1632721 m!1967105))

(assert (=> b!1632721 m!1967107))

(assert (=> b!1632721 m!1966321))

(assert (=> b!1632721 m!1967107))

(declare-fun m!1967133 () Bool)

(assert (=> b!1632721 m!1967133))

(assert (=> b!1632721 m!1967115))

(declare-fun m!1967135 () Bool)

(assert (=> b!1632721 m!1967135))

(declare-fun m!1967137 () Bool)

(assert (=> b!1632721 m!1967137))

(declare-fun m!1967139 () Bool)

(assert (=> b!1632721 m!1967139))

(declare-fun m!1967141 () Bool)

(assert (=> b!1632721 m!1967141))

(assert (=> b!1632721 m!1966321))

(assert (=> b!1632721 m!1967105))

(assert (=> b!1632721 m!1967129))

(assert (=> b!1632721 m!1967115))

(declare-fun m!1967143 () Bool)

(assert (=> b!1632721 m!1967143))

(declare-fun m!1967145 () Bool)

(assert (=> b!1632721 m!1967145))

(assert (=> b!1632721 m!1966221))

(assert (=> b!1632721 m!1967115))

(declare-fun m!1967147 () Bool)

(assert (=> b!1632721 m!1967147))

(declare-fun m!1967149 () Bool)

(assert (=> b!1632721 m!1967149))

(assert (=> b!1632721 m!1966345))

(assert (=> b!1632721 m!1967139))

(assert (=> d!491830 m!1967115))

(declare-fun m!1967151 () Bool)

(assert (=> d!491830 m!1967151))

(assert (=> d!491830 m!1967105))

(declare-fun m!1967153 () Bool)

(assert (=> d!491830 m!1967153))

(declare-fun m!1967155 () Bool)

(assert (=> d!491830 m!1967155))

(declare-fun m!1967157 () Bool)

(assert (=> d!491830 m!1967157))

(declare-fun m!1967159 () Bool)

(assert (=> d!491830 m!1967159))

(declare-fun m!1967161 () Bool)

(assert (=> d!491830 m!1967161))

(declare-fun m!1967163 () Bool)

(assert (=> d!491830 m!1967163))

(assert (=> d!491830 m!1967105))

(assert (=> d!491830 m!1967107))

(declare-fun m!1967165 () Bool)

(assert (=> d!491830 m!1967165))

(assert (=> d!491830 m!1967159))

(declare-fun m!1967167 () Bool)

(assert (=> d!491830 m!1967167))

(declare-fun m!1967169 () Bool)

(assert (=> d!491830 m!1967169))

(assert (=> d!491830 m!1966221))

(assert (=> d!491830 m!1967115))

(assert (=> d!491830 m!1967165))

(declare-fun m!1967171 () Bool)

(assert (=> d!491830 m!1967171))

(declare-fun m!1967173 () Bool)

(assert (=> d!491830 m!1967173))

(assert (=> d!491830 m!1967109))

(declare-fun m!1967175 () Bool)

(assert (=> d!491830 m!1967175))

(declare-fun m!1967177 () Bool)

(assert (=> d!491830 m!1967177))

(declare-fun m!1967179 () Bool)

(assert (=> d!491830 m!1967179))

(assert (=> d!491830 m!1966221))

(declare-fun m!1967181 () Bool)

(assert (=> d!491830 m!1967181))

(assert (=> d!491830 m!1967115))

(declare-fun m!1967183 () Bool)

(assert (=> d!491830 m!1967183))

(assert (=> d!491830 m!1967155))

(declare-fun m!1967185 () Bool)

(assert (=> d!491830 m!1967185))

(declare-fun m!1967187 () Bool)

(assert (=> d!491830 m!1967187))

(assert (=> d!491830 m!1966321))

(declare-fun m!1967189 () Bool)

(assert (=> d!491830 m!1967189))

(assert (=> d!491830 m!1967105))

(assert (=> d!491830 m!1967105))

(declare-fun m!1967191 () Bool)

(assert (=> d!491830 m!1967191))

(assert (=> d!491830 m!1966301))

(assert (=> d!491830 m!1967115))

(assert (=> d!491830 m!1967177))

(assert (=> d!491830 m!1966221))

(declare-fun m!1967193 () Bool)

(assert (=> d!491830 m!1967193))

(declare-fun m!1967195 () Bool)

(assert (=> d!491830 m!1967195))

(assert (=> d!491830 m!1967115))

(assert (=> d!491830 m!1967115))

(declare-fun m!1967197 () Bool)

(assert (=> d!491830 m!1967197))

(declare-fun m!1967199 () Bool)

(assert (=> d!491830 m!1967199))

(assert (=> d!491830 m!1967105))

(declare-fun m!1967201 () Bool)

(assert (=> d!491830 m!1967201))

(declare-fun m!1967203 () Bool)

(assert (=> d!491830 m!1967203))

(assert (=> d!491830 m!1967109))

(declare-fun m!1967205 () Bool)

(assert (=> d!491830 m!1967205))

(assert (=> d!491830 m!1967201))

(assert (=> d!491830 m!1966321))

(assert (=> d!491830 m!1967115))

(declare-fun m!1967207 () Bool)

(assert (=> d!491830 m!1967207))

(assert (=> d!491830 m!1967107))

(declare-fun m!1967209 () Bool)

(assert (=> d!491830 m!1967209))

(declare-fun m!1967211 () Bool)

(assert (=> d!491830 m!1967211))

(declare-fun m!1967213 () Bool)

(assert (=> b!1632729 m!1967213))

(assert (=> b!1632729 m!1967105))

(assert (=> b!1632729 m!1966221))

(assert (=> b!1632729 m!1967105))

(assert (=> b!1632729 m!1967107))

(assert (=> b!1632729 m!1966221))

(assert (=> b!1632729 m!1967115))

(declare-fun m!1967215 () Bool)

(assert (=> b!1632729 m!1967215))

(assert (=> b!1632315 d!491830))

(declare-fun d!491840 () Bool)

(assert (=> d!491840 (= (head!3488 lt!593501) (h!23324 lt!593501))))

(assert (=> b!1632316 d!491840))

(declare-fun d!491842 () Bool)

(declare-fun res!730647 () Bool)

(declare-fun e!1047100 () Bool)

(assert (=> d!491842 (=> (not res!730647) (not e!1047100))))

(declare-fun rulesValid!1135 (LexerInterface!2787 List!17996) Bool)

(assert (=> d!491842 (= res!730647 (rulesValid!1135 thiss!17113 rules!1846))))

(assert (=> d!491842 (= (rulesInvariant!2456 thiss!17113 rules!1846) e!1047100)))

(declare-fun b!1632737 () Bool)

(declare-datatypes ((List!18003 0))(
  ( (Nil!17933) (Cons!17933 (h!23334 String!20574) (t!149586 List!18003)) )
))
(declare-fun noDuplicateTag!1135 (LexerInterface!2787 List!17996 List!18003) Bool)

(assert (=> b!1632737 (= e!1047100 (noDuplicateTag!1135 thiss!17113 rules!1846 Nil!17933))))

(assert (= (and d!491842 res!730647) b!1632737))

(declare-fun m!1967217 () Bool)

(assert (=> d!491842 m!1967217))

(declare-fun m!1967219 () Bool)

(assert (=> b!1632737 m!1967219))

(assert (=> b!1632337 d!491842))

(declare-fun d!491844 () Bool)

(declare-fun isEmpty!10964 (Option!3348) Bool)

(assert (=> d!491844 (= (isDefined!2715 (maxPrefixZipperSequence!682 thiss!17113 rules!1846 (seqFromList!2066 (originalCharacters!3972 (h!23326 tokens!457))))) (not (isEmpty!10964 (maxPrefixZipperSequence!682 thiss!17113 rules!1846 (seqFromList!2066 (originalCharacters!3972 (h!23326 tokens!457)))))))))

(declare-fun bs!395238 () Bool)

(assert (= bs!395238 d!491844))

(assert (=> bs!395238 m!1966269))

(declare-fun m!1967221 () Bool)

(assert (=> bs!395238 m!1967221))

(assert (=> b!1632339 d!491844))

(declare-fun b!1632754 () Bool)

(declare-fun e!1047113 () Bool)

(declare-fun e!1047114 () Bool)

(assert (=> b!1632754 (= e!1047113 e!1047114)))

(declare-fun res!730663 () Bool)

(assert (=> b!1632754 (=> (not res!730663) (not e!1047114))))

(declare-fun lt!594143 () Option!3348)

(declare-fun get!5185 (Option!3348) tuple2!17532)

(assert (=> b!1632754 (= res!730663 (= (_1!10168 (get!5185 lt!594143)) (_1!10166 (get!5182 (maxPrefix!1351 thiss!17113 rules!1846 (list!7053 (seqFromList!2066 (originalCharacters!3972 (h!23326 tokens!457)))))))))))

(declare-fun b!1632755 () Bool)

(declare-fun e!1047118 () Option!3348)

(declare-fun call!105554 () Option!3348)

(assert (=> b!1632755 (= e!1047118 call!105554)))

(declare-fun b!1632756 () Bool)

(declare-fun lt!594142 () Option!3348)

(declare-fun lt!594140 () Option!3348)

(assert (=> b!1632756 (= e!1047118 (ite (and (is-None!3347 lt!594142) (is-None!3347 lt!594140)) None!3347 (ite (is-None!3347 lt!594140) lt!594142 (ite (is-None!3347 lt!594142) lt!594140 (ite (>= (size!14319 (_1!10168 (v!24412 lt!594142))) (size!14319 (_1!10168 (v!24412 lt!594140)))) lt!594142 lt!594140)))))))

(assert (=> b!1632756 (= lt!594142 call!105554)))

(assert (=> b!1632756 (= lt!594140 (maxPrefixZipperSequence!682 thiss!17113 (t!149537 rules!1846) (seqFromList!2066 (originalCharacters!3972 (h!23326 tokens!457)))))))

(declare-fun b!1632757 () Bool)

(declare-fun e!1047116 () Bool)

(declare-fun e!1047117 () Bool)

(assert (=> b!1632757 (= e!1047116 e!1047117)))

(declare-fun res!730662 () Bool)

(assert (=> b!1632757 (=> (not res!730662) (not e!1047117))))

(assert (=> b!1632757 (= res!730662 (= (_1!10168 (get!5185 lt!594143)) (_1!10166 (get!5182 (maxPrefixZipper!315 thiss!17113 rules!1846 (list!7053 (seqFromList!2066 (originalCharacters!3972 (h!23326 tokens!457)))))))))))

(declare-fun b!1632758 () Bool)

(declare-fun res!730661 () Bool)

(declare-fun e!1047115 () Bool)

(assert (=> b!1632758 (=> (not res!730661) (not e!1047115))))

(assert (=> b!1632758 (= res!730661 e!1047116)))

(declare-fun res!730660 () Bool)

(assert (=> b!1632758 (=> res!730660 e!1047116)))

(assert (=> b!1632758 (= res!730660 (not (isDefined!2715 lt!594143)))))

(declare-fun b!1632759 () Bool)

(assert (=> b!1632759 (= e!1047114 (= (list!7053 (_2!10168 (get!5185 lt!594143))) (_2!10166 (get!5182 (maxPrefix!1351 thiss!17113 rules!1846 (list!7053 (seqFromList!2066 (originalCharacters!3972 (h!23326 tokens!457)))))))))))

(declare-fun bm!105549 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!323 (LexerInterface!2787 Rule!6116 BalanceConc!11872) Option!3348)

(assert (=> bm!105549 (= call!105554 (maxPrefixOneRuleZipperSequence!323 thiss!17113 (h!23327 rules!1846) (seqFromList!2066 (originalCharacters!3972 (h!23326 tokens!457)))))))

(declare-fun b!1632760 () Bool)

(assert (=> b!1632760 (= e!1047115 e!1047113)))

(declare-fun res!730664 () Bool)

(assert (=> b!1632760 (=> res!730664 e!1047113)))

(assert (=> b!1632760 (= res!730664 (not (isDefined!2715 lt!594143)))))

(declare-fun d!491846 () Bool)

(assert (=> d!491846 e!1047115))

(declare-fun res!730665 () Bool)

(assert (=> d!491846 (=> (not res!730665) (not e!1047115))))

(assert (=> d!491846 (= res!730665 (= (isDefined!2715 lt!594143) (isDefined!2714 (maxPrefixZipper!315 thiss!17113 rules!1846 (list!7053 (seqFromList!2066 (originalCharacters!3972 (h!23326 tokens!457))))))))))

(assert (=> d!491846 (= lt!594143 e!1047118)))

(declare-fun c!265753 () Bool)

(assert (=> d!491846 (= c!265753 (and (is-Cons!17926 rules!1846) (is-Nil!17926 (t!149537 rules!1846))))))

(declare-fun lt!594145 () Unit!29199)

(declare-fun lt!594141 () Unit!29199)

(assert (=> d!491846 (= lt!594145 lt!594141)))

(declare-fun lt!594146 () List!17993)

(declare-fun lt!594144 () List!17993)

(assert (=> d!491846 (isPrefix!1418 lt!594146 lt!594144)))

(assert (=> d!491846 (= lt!594141 (lemmaIsPrefixRefl!967 lt!594146 lt!594144))))

(assert (=> d!491846 (= lt!594144 (list!7053 (seqFromList!2066 (originalCharacters!3972 (h!23326 tokens!457)))))))

(assert (=> d!491846 (= lt!594146 (list!7053 (seqFromList!2066 (originalCharacters!3972 (h!23326 tokens!457)))))))

(assert (=> d!491846 (rulesValidInductive!981 thiss!17113 rules!1846)))

(assert (=> d!491846 (= (maxPrefixZipperSequence!682 thiss!17113 rules!1846 (seqFromList!2066 (originalCharacters!3972 (h!23326 tokens!457)))) lt!594143)))

(declare-fun b!1632761 () Bool)

(assert (=> b!1632761 (= e!1047117 (= (list!7053 (_2!10168 (get!5185 lt!594143))) (_2!10166 (get!5182 (maxPrefixZipper!315 thiss!17113 rules!1846 (list!7053 (seqFromList!2066 (originalCharacters!3972 (h!23326 tokens!457)))))))))))

(assert (= (and d!491846 c!265753) b!1632755))

(assert (= (and d!491846 (not c!265753)) b!1632756))

(assert (= (or b!1632755 b!1632756) bm!105549))

(assert (= (and d!491846 res!730665) b!1632758))

(assert (= (and b!1632758 (not res!730660)) b!1632757))

(assert (= (and b!1632757 res!730662) b!1632761))

(assert (= (and b!1632758 res!730661) b!1632760))

(assert (= (and b!1632760 (not res!730664)) b!1632754))

(assert (= (and b!1632754 res!730663) b!1632759))

(declare-fun m!1967223 () Bool)

(assert (=> b!1632760 m!1967223))

(declare-fun m!1967225 () Bool)

(assert (=> b!1632757 m!1967225))

(assert (=> b!1632757 m!1966267))

(declare-fun m!1967227 () Bool)

(assert (=> b!1632757 m!1967227))

(assert (=> b!1632757 m!1967227))

(declare-fun m!1967229 () Bool)

(assert (=> b!1632757 m!1967229))

(assert (=> b!1632757 m!1967229))

(declare-fun m!1967231 () Bool)

(assert (=> b!1632757 m!1967231))

(assert (=> b!1632758 m!1967223))

(assert (=> bm!105549 m!1966267))

(declare-fun m!1967233 () Bool)

(assert (=> bm!105549 m!1967233))

(declare-fun m!1967235 () Bool)

(assert (=> b!1632759 m!1967235))

(assert (=> b!1632759 m!1966267))

(assert (=> b!1632759 m!1967227))

(assert (=> b!1632759 m!1967227))

(declare-fun m!1967237 () Bool)

(assert (=> b!1632759 m!1967237))

(assert (=> b!1632759 m!1967225))

(assert (=> b!1632759 m!1967237))

(declare-fun m!1967239 () Bool)

(assert (=> b!1632759 m!1967239))

(assert (=> d!491846 m!1966347))

(assert (=> d!491846 m!1967227))

(assert (=> d!491846 m!1967229))

(assert (=> d!491846 m!1967223))

(assert (=> d!491846 m!1967229))

(declare-fun m!1967241 () Bool)

(assert (=> d!491846 m!1967241))

(assert (=> d!491846 m!1966267))

(assert (=> d!491846 m!1967227))

(declare-fun m!1967243 () Bool)

(assert (=> d!491846 m!1967243))

(declare-fun m!1967245 () Bool)

(assert (=> d!491846 m!1967245))

(assert (=> b!1632761 m!1967235))

(assert (=> b!1632761 m!1966267))

(assert (=> b!1632761 m!1967227))

(assert (=> b!1632761 m!1967225))

(assert (=> b!1632761 m!1967229))

(assert (=> b!1632761 m!1967231))

(assert (=> b!1632761 m!1967227))

(assert (=> b!1632761 m!1967229))

(assert (=> b!1632754 m!1967225))

(assert (=> b!1632754 m!1966267))

(assert (=> b!1632754 m!1967227))

(assert (=> b!1632754 m!1967227))

(assert (=> b!1632754 m!1967237))

(assert (=> b!1632754 m!1967237))

(assert (=> b!1632754 m!1967239))

(assert (=> b!1632756 m!1966267))

(declare-fun m!1967247 () Bool)

(assert (=> b!1632756 m!1967247))

(assert (=> b!1632339 d!491846))

(declare-fun d!491848 () Bool)

(declare-fun fromListB!910 (List!17993) BalanceConc!11872)

(assert (=> d!491848 (= (seqFromList!2066 (originalCharacters!3972 (h!23326 tokens!457))) (fromListB!910 (originalCharacters!3972 (h!23326 tokens!457))))))

(declare-fun bs!395239 () Bool)

(assert (= bs!395239 d!491848))

(declare-fun m!1967249 () Bool)

(assert (=> bs!395239 m!1967249))

(assert (=> b!1632339 d!491848))

(declare-fun d!491850 () Bool)

(declare-fun lt!594149 () C!9146)

(assert (=> d!491850 (= lt!594149 (head!3488 (list!7053 lt!593507)))))

(declare-fun head!3493 (Conc!5964) C!9146)

(assert (=> d!491850 (= lt!594149 (head!3493 (c!265689 lt!593507)))))

(assert (=> d!491850 (not (isEmpty!10963 lt!593507))))

(assert (=> d!491850 (= (head!3489 lt!593507) lt!594149)))

(declare-fun bs!395240 () Bool)

(assert (= bs!395240 d!491850))

(assert (=> bs!395240 m!1966219))

(assert (=> bs!395240 m!1966219))

(declare-fun m!1967251 () Bool)

(assert (=> bs!395240 m!1967251))

(declare-fun m!1967253 () Bool)

(assert (=> bs!395240 m!1967253))

(declare-fun m!1967255 () Bool)

(assert (=> bs!395240 m!1967255))

(assert (=> b!1632339 d!491850))

(declare-fun b!1632762 () Bool)

(declare-fun res!730672 () Bool)

(declare-fun e!1047121 () Bool)

(assert (=> b!1632762 (=> (not res!730672) (not e!1047121))))

(declare-fun lt!594150 () Option!3347)

(assert (=> b!1632762 (= res!730672 (matchR!1985 (regex!3158 (rule!4994 (_1!10166 (get!5182 lt!594150)))) (list!7053 (charsOf!1807 (_1!10166 (get!5182 lt!594150))))))))

(declare-fun b!1632763 () Bool)

(declare-fun res!730669 () Bool)

(assert (=> b!1632763 (=> (not res!730669) (not e!1047121))))

(assert (=> b!1632763 (= res!730669 (= (value!99677 (_1!10166 (get!5182 lt!594150))) (apply!4617 (transformation!3158 (rule!4994 (_1!10166 (get!5182 lt!594150)))) (seqFromList!2066 (originalCharacters!3972 (_1!10166 (get!5182 lt!594150)))))))))

(declare-fun b!1632764 () Bool)

(declare-fun e!1047119 () Bool)

(assert (=> b!1632764 (= e!1047119 e!1047121)))

(declare-fun res!730667 () Bool)

(assert (=> b!1632764 (=> (not res!730667) (not e!1047121))))

(assert (=> b!1632764 (= res!730667 (isDefined!2714 lt!594150))))

(declare-fun b!1632765 () Bool)

(declare-fun e!1047120 () Option!3347)

(declare-fun lt!594151 () Option!3347)

(declare-fun lt!594152 () Option!3347)

(assert (=> b!1632765 (= e!1047120 (ite (and (is-None!3346 lt!594151) (is-None!3346 lt!594152)) None!3346 (ite (is-None!3346 lt!594152) lt!594151 (ite (is-None!3346 lt!594151) lt!594152 (ite (>= (size!14319 (_1!10166 (v!24411 lt!594151))) (size!14319 (_1!10166 (v!24411 lt!594152)))) lt!594151 lt!594152)))))))

(declare-fun call!105555 () Option!3347)

(assert (=> b!1632765 (= lt!594151 call!105555)))

(assert (=> b!1632765 (= lt!594152 (maxPrefix!1351 thiss!17113 (t!149537 rules!1846) (originalCharacters!3972 (h!23326 tokens!457))))))

(declare-fun b!1632766 () Bool)

(assert (=> b!1632766 (= e!1047120 call!105555)))

(declare-fun d!491852 () Bool)

(assert (=> d!491852 e!1047119))

(declare-fun res!730668 () Bool)

(assert (=> d!491852 (=> res!730668 e!1047119)))

(assert (=> d!491852 (= res!730668 (isEmpty!10962 lt!594150))))

(assert (=> d!491852 (= lt!594150 e!1047120)))

(declare-fun c!265754 () Bool)

(assert (=> d!491852 (= c!265754 (and (is-Cons!17926 rules!1846) (is-Nil!17926 (t!149537 rules!1846))))))

(declare-fun lt!594153 () Unit!29199)

(declare-fun lt!594154 () Unit!29199)

(assert (=> d!491852 (= lt!594153 lt!594154)))

(assert (=> d!491852 (isPrefix!1418 (originalCharacters!3972 (h!23326 tokens!457)) (originalCharacters!3972 (h!23326 tokens!457)))))

(assert (=> d!491852 (= lt!594154 (lemmaIsPrefixRefl!967 (originalCharacters!3972 (h!23326 tokens!457)) (originalCharacters!3972 (h!23326 tokens!457))))))

(assert (=> d!491852 (rulesValidInductive!981 thiss!17113 rules!1846)))

(assert (=> d!491852 (= (maxPrefix!1351 thiss!17113 rules!1846 (originalCharacters!3972 (h!23326 tokens!457))) lt!594150)))

(declare-fun b!1632767 () Bool)

(declare-fun res!730671 () Bool)

(assert (=> b!1632767 (=> (not res!730671) (not e!1047121))))

(assert (=> b!1632767 (= res!730671 (< (size!14321 (_2!10166 (get!5182 lt!594150))) (size!14321 (originalCharacters!3972 (h!23326 tokens!457)))))))

(declare-fun b!1632768 () Bool)

(declare-fun res!730670 () Bool)

(assert (=> b!1632768 (=> (not res!730670) (not e!1047121))))

(assert (=> b!1632768 (= res!730670 (= (++!4787 (list!7053 (charsOf!1807 (_1!10166 (get!5182 lt!594150)))) (_2!10166 (get!5182 lt!594150))) (originalCharacters!3972 (h!23326 tokens!457))))))

(declare-fun bm!105550 () Bool)

(assert (=> bm!105550 (= call!105555 (maxPrefixOneRule!782 thiss!17113 (h!23327 rules!1846) (originalCharacters!3972 (h!23326 tokens!457))))))

(declare-fun b!1632769 () Bool)

(declare-fun res!730666 () Bool)

(assert (=> b!1632769 (=> (not res!730666) (not e!1047121))))

(assert (=> b!1632769 (= res!730666 (= (list!7053 (charsOf!1807 (_1!10166 (get!5182 lt!594150)))) (originalCharacters!3972 (_1!10166 (get!5182 lt!594150)))))))

(declare-fun b!1632770 () Bool)

(assert (=> b!1632770 (= e!1047121 (contains!3133 rules!1846 (rule!4994 (_1!10166 (get!5182 lt!594150)))))))

(assert (= (and d!491852 c!265754) b!1632766))

(assert (= (and d!491852 (not c!265754)) b!1632765))

(assert (= (or b!1632766 b!1632765) bm!105550))

(assert (= (and d!491852 (not res!730668)) b!1632764))

(assert (= (and b!1632764 res!730667) b!1632769))

(assert (= (and b!1632769 res!730666) b!1632767))

(assert (= (and b!1632767 res!730671) b!1632768))

(assert (= (and b!1632768 res!730670) b!1632763))

(assert (= (and b!1632763 res!730669) b!1632762))

(assert (= (and b!1632762 res!730672) b!1632770))

(declare-fun m!1967257 () Bool)

(assert (=> b!1632764 m!1967257))

(declare-fun m!1967259 () Bool)

(assert (=> b!1632763 m!1967259))

(declare-fun m!1967261 () Bool)

(assert (=> b!1632763 m!1967261))

(assert (=> b!1632763 m!1967261))

(declare-fun m!1967263 () Bool)

(assert (=> b!1632763 m!1967263))

(assert (=> b!1632767 m!1967259))

(declare-fun m!1967265 () Bool)

(assert (=> b!1632767 m!1967265))

(declare-fun m!1967267 () Bool)

(assert (=> b!1632767 m!1967267))

(assert (=> b!1632769 m!1967259))

(declare-fun m!1967269 () Bool)

(assert (=> b!1632769 m!1967269))

(assert (=> b!1632769 m!1967269))

(declare-fun m!1967271 () Bool)

(assert (=> b!1632769 m!1967271))

(declare-fun m!1967273 () Bool)

(assert (=> bm!105550 m!1967273))

(declare-fun m!1967275 () Bool)

(assert (=> b!1632765 m!1967275))

(assert (=> b!1632762 m!1967259))

(assert (=> b!1632762 m!1967269))

(assert (=> b!1632762 m!1967269))

(assert (=> b!1632762 m!1967271))

(assert (=> b!1632762 m!1967271))

(declare-fun m!1967277 () Bool)

(assert (=> b!1632762 m!1967277))

(assert (=> b!1632770 m!1967259))

(declare-fun m!1967279 () Bool)

(assert (=> b!1632770 m!1967279))

(declare-fun m!1967281 () Bool)

(assert (=> d!491852 m!1967281))

(declare-fun m!1967283 () Bool)

(assert (=> d!491852 m!1967283))

(declare-fun m!1967285 () Bool)

(assert (=> d!491852 m!1967285))

(assert (=> d!491852 m!1966347))

(assert (=> b!1632768 m!1967259))

(assert (=> b!1632768 m!1967269))

(assert (=> b!1632768 m!1967269))

(assert (=> b!1632768 m!1967271))

(assert (=> b!1632768 m!1967271))

(declare-fun m!1967287 () Bool)

(assert (=> b!1632768 m!1967287))

(assert (=> b!1632317 d!491852))

(declare-fun d!491854 () Bool)

(assert (=> d!491854 (= (isDefined!2714 lt!593519) (not (isEmpty!10962 lt!593519)))))

(declare-fun bs!395241 () Bool)

(assert (= bs!395241 d!491854))

(declare-fun m!1967289 () Bool)

(assert (=> bs!395241 m!1967289))

(assert (=> b!1632317 d!491854))

(declare-fun b!1632771 () Bool)

(declare-fun res!730679 () Bool)

(declare-fun e!1047124 () Bool)

(assert (=> b!1632771 (=> (not res!730679) (not e!1047124))))

(declare-fun lt!594167 () Option!3347)

(assert (=> b!1632771 (= res!730679 (matchR!1985 (regex!3158 (rule!4994 (_1!10166 (get!5182 lt!594167)))) (list!7053 (charsOf!1807 (_1!10166 (get!5182 lt!594167))))))))

(declare-fun b!1632772 () Bool)

(declare-fun res!730676 () Bool)

(assert (=> b!1632772 (=> (not res!730676) (not e!1047124))))

(assert (=> b!1632772 (= res!730676 (= (value!99677 (_1!10166 (get!5182 lt!594167))) (apply!4617 (transformation!3158 (rule!4994 (_1!10166 (get!5182 lt!594167)))) (seqFromList!2066 (originalCharacters!3972 (_1!10166 (get!5182 lt!594167)))))))))

(declare-fun b!1632773 () Bool)

(declare-fun e!1047122 () Bool)

(assert (=> b!1632773 (= e!1047122 e!1047124)))

(declare-fun res!730674 () Bool)

(assert (=> b!1632773 (=> (not res!730674) (not e!1047124))))

(assert (=> b!1632773 (= res!730674 (isDefined!2714 lt!594167))))

(declare-fun b!1632774 () Bool)

(declare-fun e!1047123 () Option!3347)

(declare-fun lt!594168 () Option!3347)

(declare-fun lt!594169 () Option!3347)

(assert (=> b!1632774 (= e!1047123 (ite (and (is-None!3346 lt!594168) (is-None!3346 lt!594169)) None!3346 (ite (is-None!3346 lt!594169) lt!594168 (ite (is-None!3346 lt!594168) lt!594169 (ite (>= (size!14319 (_1!10166 (v!24411 lt!594168))) (size!14319 (_1!10166 (v!24411 lt!594169)))) lt!594168 lt!594169)))))))

(declare-fun call!105556 () Option!3347)

(assert (=> b!1632774 (= lt!594168 call!105556)))

(assert (=> b!1632774 (= lt!594169 (maxPrefix!1351 thiss!17113 (t!149537 rules!1846) lt!593504))))

(declare-fun b!1632775 () Bool)

(assert (=> b!1632775 (= e!1047123 call!105556)))

(declare-fun d!491856 () Bool)

(assert (=> d!491856 e!1047122))

(declare-fun res!730675 () Bool)

(assert (=> d!491856 (=> res!730675 e!1047122)))

(assert (=> d!491856 (= res!730675 (isEmpty!10962 lt!594167))))

(assert (=> d!491856 (= lt!594167 e!1047123)))

(declare-fun c!265755 () Bool)

(assert (=> d!491856 (= c!265755 (and (is-Cons!17926 rules!1846) (is-Nil!17926 (t!149537 rules!1846))))))

(declare-fun lt!594170 () Unit!29199)

(declare-fun lt!594171 () Unit!29199)

(assert (=> d!491856 (= lt!594170 lt!594171)))

(assert (=> d!491856 (isPrefix!1418 lt!593504 lt!593504)))

(assert (=> d!491856 (= lt!594171 (lemmaIsPrefixRefl!967 lt!593504 lt!593504))))

(assert (=> d!491856 (rulesValidInductive!981 thiss!17113 rules!1846)))

(assert (=> d!491856 (= (maxPrefix!1351 thiss!17113 rules!1846 lt!593504) lt!594167)))

(declare-fun b!1632776 () Bool)

(declare-fun res!730678 () Bool)

(assert (=> b!1632776 (=> (not res!730678) (not e!1047124))))

(assert (=> b!1632776 (= res!730678 (< (size!14321 (_2!10166 (get!5182 lt!594167))) (size!14321 lt!593504)))))

(declare-fun b!1632777 () Bool)

(declare-fun res!730677 () Bool)

(assert (=> b!1632777 (=> (not res!730677) (not e!1047124))))

(assert (=> b!1632777 (= res!730677 (= (++!4787 (list!7053 (charsOf!1807 (_1!10166 (get!5182 lt!594167)))) (_2!10166 (get!5182 lt!594167))) lt!593504))))

(declare-fun bm!105551 () Bool)

(assert (=> bm!105551 (= call!105556 (maxPrefixOneRule!782 thiss!17113 (h!23327 rules!1846) lt!593504))))

(declare-fun b!1632778 () Bool)

(declare-fun res!730673 () Bool)

(assert (=> b!1632778 (=> (not res!730673) (not e!1047124))))

(assert (=> b!1632778 (= res!730673 (= (list!7053 (charsOf!1807 (_1!10166 (get!5182 lt!594167)))) (originalCharacters!3972 (_1!10166 (get!5182 lt!594167)))))))

(declare-fun b!1632779 () Bool)

(assert (=> b!1632779 (= e!1047124 (contains!3133 rules!1846 (rule!4994 (_1!10166 (get!5182 lt!594167)))))))

(assert (= (and d!491856 c!265755) b!1632775))

(assert (= (and d!491856 (not c!265755)) b!1632774))

(assert (= (or b!1632775 b!1632774) bm!105551))

(assert (= (and d!491856 (not res!730675)) b!1632773))

(assert (= (and b!1632773 res!730674) b!1632778))

(assert (= (and b!1632778 res!730673) b!1632776))

(assert (= (and b!1632776 res!730678) b!1632777))

(assert (= (and b!1632777 res!730677) b!1632772))

(assert (= (and b!1632772 res!730676) b!1632771))

(assert (= (and b!1632771 res!730679) b!1632779))

(declare-fun m!1967291 () Bool)

(assert (=> b!1632773 m!1967291))

(declare-fun m!1967293 () Bool)

(assert (=> b!1632772 m!1967293))

(declare-fun m!1967295 () Bool)

(assert (=> b!1632772 m!1967295))

(assert (=> b!1632772 m!1967295))

(declare-fun m!1967297 () Bool)

(assert (=> b!1632772 m!1967297))

(assert (=> b!1632776 m!1967293))

(declare-fun m!1967299 () Bool)

(assert (=> b!1632776 m!1967299))

(assert (=> b!1632776 m!1966965))

(assert (=> b!1632778 m!1967293))

(declare-fun m!1967301 () Bool)

(assert (=> b!1632778 m!1967301))

(assert (=> b!1632778 m!1967301))

(declare-fun m!1967303 () Bool)

(assert (=> b!1632778 m!1967303))

(declare-fun m!1967305 () Bool)

(assert (=> bm!105551 m!1967305))

(declare-fun m!1967307 () Bool)

(assert (=> b!1632774 m!1967307))

(assert (=> b!1632771 m!1967293))

(assert (=> b!1632771 m!1967301))

(assert (=> b!1632771 m!1967301))

(assert (=> b!1632771 m!1967303))

(assert (=> b!1632771 m!1967303))

(declare-fun m!1967309 () Bool)

(assert (=> b!1632771 m!1967309))

(assert (=> b!1632779 m!1967293))

(declare-fun m!1967311 () Bool)

(assert (=> b!1632779 m!1967311))

(declare-fun m!1967313 () Bool)

(assert (=> d!491856 m!1967313))

(declare-fun m!1967315 () Bool)

(assert (=> d!491856 m!1967315))

(declare-fun m!1967317 () Bool)

(assert (=> d!491856 m!1967317))

(assert (=> d!491856 m!1966347))

(assert (=> b!1632777 m!1967293))

(assert (=> b!1632777 m!1967301))

(assert (=> b!1632777 m!1967301))

(assert (=> b!1632777 m!1967303))

(assert (=> b!1632777 m!1967303))

(declare-fun m!1967319 () Bool)

(assert (=> b!1632777 m!1967319))

(assert (=> b!1632317 d!491856))

(declare-fun d!491858 () Bool)

(assert (=> d!491858 (= (isDefined!2714 (maxPrefix!1351 thiss!17113 rules!1846 (originalCharacters!3972 (h!23326 tokens!457)))) (not (isEmpty!10962 (maxPrefix!1351 thiss!17113 rules!1846 (originalCharacters!3972 (h!23326 tokens!457))))))))

(declare-fun bs!395242 () Bool)

(assert (= bs!395242 d!491858))

(assert (=> bs!395242 m!1966281))

(declare-fun m!1967321 () Bool)

(assert (=> bs!395242 m!1967321))

(assert (=> b!1632317 d!491858))

(declare-fun d!491860 () Bool)

(assert (=> d!491860 (= (get!5182 lt!593519) (v!24411 lt!593519))))

(assert (=> b!1632317 d!491860))

(declare-fun b!1632786 () Bool)

(declare-fun res!730685 () Bool)

(declare-fun e!1047127 () Bool)

(assert (=> b!1632786 (=> (not res!730685) (not e!1047127))))

(declare-fun lt!594188 () List!17993)

(assert (=> b!1632786 (= res!730685 (= (size!14321 lt!594188) (+ (size!14321 (originalCharacters!3972 (h!23326 tokens!457))) (size!14321 lt!593510))))))

(declare-fun b!1632787 () Bool)

(assert (=> b!1632787 (= e!1047127 (or (not (= lt!593510 Nil!17923)) (= lt!594188 (originalCharacters!3972 (h!23326 tokens!457)))))))

(declare-fun d!491862 () Bool)

(assert (=> d!491862 e!1047127))

(declare-fun res!730684 () Bool)

(assert (=> d!491862 (=> (not res!730684) (not e!1047127))))

(assert (=> d!491862 (= res!730684 (= (content!2486 lt!594188) (set.union (content!2486 (originalCharacters!3972 (h!23326 tokens!457))) (content!2486 lt!593510))))))

(declare-fun e!1047128 () List!17993)

(assert (=> d!491862 (= lt!594188 e!1047128)))

(declare-fun c!265756 () Bool)

(assert (=> d!491862 (= c!265756 (is-Nil!17923 (originalCharacters!3972 (h!23326 tokens!457))))))

(assert (=> d!491862 (= (++!4787 (originalCharacters!3972 (h!23326 tokens!457)) lt!593510) lt!594188)))

(declare-fun b!1632784 () Bool)

(assert (=> b!1632784 (= e!1047128 lt!593510)))

(declare-fun b!1632785 () Bool)

(assert (=> b!1632785 (= e!1047128 (Cons!17923 (h!23324 (originalCharacters!3972 (h!23326 tokens!457))) (++!4787 (t!149534 (originalCharacters!3972 (h!23326 tokens!457))) lt!593510)))))

(assert (= (and d!491862 c!265756) b!1632784))

(assert (= (and d!491862 (not c!265756)) b!1632785))

(assert (= (and d!491862 res!730684) b!1632786))

(assert (= (and b!1632786 res!730685) b!1632787))

(declare-fun m!1967323 () Bool)

(assert (=> b!1632786 m!1967323))

(assert (=> b!1632786 m!1967267))

(assert (=> b!1632786 m!1966995))

(declare-fun m!1967325 () Bool)

(assert (=> d!491862 m!1967325))

(declare-fun m!1967327 () Bool)

(assert (=> d!491862 m!1967327))

(assert (=> d!491862 m!1967001))

(declare-fun m!1967329 () Bool)

(assert (=> b!1632785 m!1967329))

(assert (=> b!1632317 d!491862))

(declare-fun d!491864 () Bool)

(declare-fun c!265757 () Bool)

(assert (=> d!491864 (= c!265757 (isEmpty!10957 (++!4787 (originalCharacters!3972 (h!23326 tokens!457)) lt!593510)))))

(declare-fun e!1047129 () Bool)

(assert (=> d!491864 (= (prefixMatch!421 lt!593498 (++!4787 (originalCharacters!3972 (h!23326 tokens!457)) lt!593510)) e!1047129)))

(declare-fun b!1632788 () Bool)

(assert (=> b!1632788 (= e!1047129 (not (lostCause!445 lt!593498)))))

(declare-fun b!1632789 () Bool)

(assert (=> b!1632789 (= e!1047129 (prefixMatch!421 (derivativeStep!1089 lt!593498 (head!3488 (++!4787 (originalCharacters!3972 (h!23326 tokens!457)) lt!593510))) (tail!2380 (++!4787 (originalCharacters!3972 (h!23326 tokens!457)) lt!593510))))))

(assert (= (and d!491864 c!265757) b!1632788))

(assert (= (and d!491864 (not c!265757)) b!1632789))

(assert (=> d!491864 m!1966275))

(declare-fun m!1967331 () Bool)

(assert (=> d!491864 m!1967331))

(assert (=> b!1632788 m!1966983))

(assert (=> b!1632789 m!1966275))

(declare-fun m!1967333 () Bool)

(assert (=> b!1632789 m!1967333))

(assert (=> b!1632789 m!1967333))

(declare-fun m!1967335 () Bool)

(assert (=> b!1632789 m!1967335))

(assert (=> b!1632789 m!1966275))

(declare-fun m!1967337 () Bool)

(assert (=> b!1632789 m!1967337))

(assert (=> b!1632789 m!1967335))

(assert (=> b!1632789 m!1967337))

(declare-fun m!1967339 () Bool)

(assert (=> b!1632789 m!1967339))

(assert (=> b!1632317 d!491864))

(declare-fun b!1632842 () Bool)

(declare-fun e!1047157 () Bool)

(declare-fun e!1047162 () Bool)

(assert (=> b!1632842 (= e!1047157 e!1047162)))

(declare-fun c!265778 () Bool)

(assert (=> b!1632842 (= c!265778 (is-EmptyLang!4486 (regex!3158 (rule!4994 (h!23326 tokens!457)))))))

(declare-fun b!1632843 () Bool)

(declare-fun e!1047156 () Bool)

(declare-fun e!1047161 () Bool)

(assert (=> b!1632843 (= e!1047156 e!1047161)))

(declare-fun res!730702 () Bool)

(assert (=> b!1632843 (=> res!730702 e!1047161)))

(declare-fun call!105559 () Bool)

(assert (=> b!1632843 (= res!730702 call!105559)))

(declare-fun b!1632844 () Bool)

(declare-fun e!1047158 () Bool)

(assert (=> b!1632844 (= e!1047158 (= (head!3488 lt!593504) (c!265690 (regex!3158 (rule!4994 (h!23326 tokens!457))))))))

(declare-fun b!1632845 () Bool)

(declare-fun res!730707 () Bool)

(assert (=> b!1632845 (=> res!730707 e!1047161)))

(assert (=> b!1632845 (= res!730707 (not (isEmpty!10957 (tail!2380 lt!593504))))))

(declare-fun b!1632846 () Bool)

(declare-fun e!1047160 () Bool)

(declare-fun nullable!1324 (Regex!4486) Bool)

(assert (=> b!1632846 (= e!1047160 (nullable!1324 (regex!3158 (rule!4994 (h!23326 tokens!457)))))))

(declare-fun bm!105554 () Bool)

(assert (=> bm!105554 (= call!105559 (isEmpty!10957 lt!593504))))

(declare-fun b!1632847 () Bool)

(declare-fun res!730704 () Bool)

(declare-fun e!1047159 () Bool)

(assert (=> b!1632847 (=> res!730704 e!1047159)))

(assert (=> b!1632847 (= res!730704 (not (is-ElementMatch!4486 (regex!3158 (rule!4994 (h!23326 tokens!457))))))))

(assert (=> b!1632847 (= e!1047162 e!1047159)))

(declare-fun b!1632848 () Bool)

(assert (=> b!1632848 (= e!1047160 (matchR!1985 (derivativeStep!1089 (regex!3158 (rule!4994 (h!23326 tokens!457))) (head!3488 lt!593504)) (tail!2380 lt!593504)))))

(declare-fun d!491866 () Bool)

(assert (=> d!491866 e!1047157))

(declare-fun c!265776 () Bool)

(assert (=> d!491866 (= c!265776 (is-EmptyExpr!4486 (regex!3158 (rule!4994 (h!23326 tokens!457)))))))

(declare-fun lt!594305 () Bool)

(assert (=> d!491866 (= lt!594305 e!1047160)))

(declare-fun c!265777 () Bool)

(assert (=> d!491866 (= c!265777 (isEmpty!10957 lt!593504))))

(assert (=> d!491866 (validRegex!1785 (regex!3158 (rule!4994 (h!23326 tokens!457))))))

(assert (=> d!491866 (= (matchR!1985 (regex!3158 (rule!4994 (h!23326 tokens!457))) lt!593504) lt!594305)))

(declare-fun b!1632849 () Bool)

(declare-fun res!730706 () Bool)

(assert (=> b!1632849 (=> res!730706 e!1047159)))

(assert (=> b!1632849 (= res!730706 e!1047158)))

(declare-fun res!730708 () Bool)

(assert (=> b!1632849 (=> (not res!730708) (not e!1047158))))

(assert (=> b!1632849 (= res!730708 lt!594305)))

(declare-fun b!1632850 () Bool)

(declare-fun res!730709 () Bool)

(assert (=> b!1632850 (=> (not res!730709) (not e!1047158))))

(assert (=> b!1632850 (= res!730709 (not call!105559))))

(declare-fun b!1632851 () Bool)

(declare-fun res!730703 () Bool)

(assert (=> b!1632851 (=> (not res!730703) (not e!1047158))))

(assert (=> b!1632851 (= res!730703 (isEmpty!10957 (tail!2380 lt!593504)))))

(declare-fun b!1632852 () Bool)

(assert (=> b!1632852 (= e!1047161 (not (= (head!3488 lt!593504) (c!265690 (regex!3158 (rule!4994 (h!23326 tokens!457)))))))))

(declare-fun b!1632853 () Bool)

(assert (=> b!1632853 (= e!1047159 e!1047156)))

(declare-fun res!730705 () Bool)

(assert (=> b!1632853 (=> (not res!730705) (not e!1047156))))

(assert (=> b!1632853 (= res!730705 (not lt!594305))))

(declare-fun b!1632854 () Bool)

(assert (=> b!1632854 (= e!1047162 (not lt!594305))))

(declare-fun b!1632855 () Bool)

(assert (=> b!1632855 (= e!1047157 (= lt!594305 call!105559))))

(assert (= (and d!491866 c!265777) b!1632846))

(assert (= (and d!491866 (not c!265777)) b!1632848))

(assert (= (and d!491866 c!265776) b!1632855))

(assert (= (and d!491866 (not c!265776)) b!1632842))

(assert (= (and b!1632842 c!265778) b!1632854))

(assert (= (and b!1632842 (not c!265778)) b!1632847))

(assert (= (and b!1632847 (not res!730704)) b!1632849))

(assert (= (and b!1632849 res!730708) b!1632850))

(assert (= (and b!1632850 res!730709) b!1632851))

(assert (= (and b!1632851 res!730703) b!1632844))

(assert (= (and b!1632849 (not res!730706)) b!1632853))

(assert (= (and b!1632853 res!730705) b!1632843))

(assert (= (and b!1632843 (not res!730702)) b!1632845))

(assert (= (and b!1632845 (not res!730707)) b!1632852))

(assert (= (or b!1632855 b!1632843 b!1632850) bm!105554))

(declare-fun m!1967341 () Bool)

(assert (=> d!491866 m!1967341))

(declare-fun m!1967343 () Bool)

(assert (=> d!491866 m!1967343))

(declare-fun m!1967345 () Bool)

(assert (=> b!1632846 m!1967345))

(assert (=> bm!105554 m!1967341))

(assert (=> b!1632848 m!1966967))

(assert (=> b!1632848 m!1966967))

(declare-fun m!1967347 () Bool)

(assert (=> b!1632848 m!1967347))

(assert (=> b!1632848 m!1966971))

(assert (=> b!1632848 m!1967347))

(assert (=> b!1632848 m!1966971))

(declare-fun m!1967349 () Bool)

(assert (=> b!1632848 m!1967349))

(assert (=> b!1632845 m!1966971))

(assert (=> b!1632845 m!1966971))

(declare-fun m!1967351 () Bool)

(assert (=> b!1632845 m!1967351))

(assert (=> b!1632851 m!1966971))

(assert (=> b!1632851 m!1966971))

(assert (=> b!1632851 m!1967351))

(assert (=> b!1632852 m!1966967))

(assert (=> b!1632844 m!1966967))

(assert (=> b!1632340 d!491866))

(declare-fun d!491868 () Bool)

(assert (=> d!491868 true))

(declare-fun lt!594308 () Bool)

(declare-fun lambda!67376 () Int)

(declare-fun forall!4099 (List!17996 Int) Bool)

(assert (=> d!491868 (= lt!594308 (forall!4099 rules!1846 lambda!67376))))

(declare-fun e!1047168 () Bool)

(assert (=> d!491868 (= lt!594308 e!1047168)))

(declare-fun res!730714 () Bool)

(assert (=> d!491868 (=> res!730714 e!1047168)))

(assert (=> d!491868 (= res!730714 (not (is-Cons!17926 rules!1846)))))

(assert (=> d!491868 (= (rulesValidInductive!981 thiss!17113 rules!1846) lt!594308)))

(declare-fun b!1632860 () Bool)

(declare-fun e!1047167 () Bool)

(assert (=> b!1632860 (= e!1047168 e!1047167)))

(declare-fun res!730715 () Bool)

(assert (=> b!1632860 (=> (not res!730715) (not e!1047167))))

(declare-fun ruleValid!744 (LexerInterface!2787 Rule!6116) Bool)

(assert (=> b!1632860 (= res!730715 (ruleValid!744 thiss!17113 (h!23327 rules!1846)))))

(declare-fun b!1632861 () Bool)

(assert (=> b!1632861 (= e!1047167 (rulesValidInductive!981 thiss!17113 (t!149537 rules!1846)))))

(assert (= (and d!491868 (not res!730714)) b!1632860))

(assert (= (and b!1632860 res!730715) b!1632861))

(declare-fun m!1967353 () Bool)

(assert (=> d!491868 m!1967353))

(declare-fun m!1967355 () Bool)

(assert (=> b!1632860 m!1967355))

(declare-fun m!1967357 () Bool)

(assert (=> b!1632861 m!1967357))

(assert (=> b!1632319 d!491868))

(declare-fun d!491870 () Bool)

(declare-fun lt!594309 () BalanceConc!11872)

(assert (=> d!491870 (= (list!7053 lt!594309) (printList!902 thiss!17113 (list!7054 (seqFromList!2065 tokens!457))))))

(assert (=> d!491870 (= lt!594309 (printTailRec!840 thiss!17113 (seqFromList!2065 tokens!457) 0 (BalanceConc!11873 Empty!5964)))))

(assert (=> d!491870 (= (print!1318 thiss!17113 (seqFromList!2065 tokens!457)) lt!594309)))

(declare-fun bs!395243 () Bool)

(assert (= bs!395243 d!491870))

(declare-fun m!1967359 () Bool)

(assert (=> bs!395243 m!1967359))

(assert (=> bs!395243 m!1966231))

(declare-fun m!1967361 () Bool)

(assert (=> bs!395243 m!1967361))

(assert (=> bs!395243 m!1967361))

(declare-fun m!1967363 () Bool)

(assert (=> bs!395243 m!1967363))

(assert (=> bs!395243 m!1966231))

(declare-fun m!1967365 () Bool)

(assert (=> bs!395243 m!1967365))

(assert (=> b!1632318 d!491870))

(declare-fun d!491872 () Bool)

(assert (=> d!491872 (= (list!7053 lt!593509) (list!7057 (c!265689 lt!593509)))))

(declare-fun bs!395244 () Bool)

(assert (= bs!395244 d!491872))

(declare-fun m!1967367 () Bool)

(assert (=> bs!395244 m!1967367))

(assert (=> b!1632318 d!491872))

(declare-fun d!491874 () Bool)

(declare-fun e!1047182 () Bool)

(assert (=> d!491874 e!1047182))

(declare-fun res!730724 () Bool)

(assert (=> d!491874 (=> (not res!730724) (not e!1047182))))

(declare-fun e!1047184 () Bool)

(assert (=> d!491874 (= res!730724 e!1047184)))

(declare-fun c!265787 () Bool)

(declare-fun lt!594383 () tuple2!17530)

(assert (=> d!491874 (= c!265787 (> (size!14322 (_1!10167 lt!594383)) 0))))

(declare-fun lexTailRecV2!560 (LexerInterface!2787 List!17996 BalanceConc!11872 BalanceConc!11872 BalanceConc!11872 BalanceConc!11874) tuple2!17530)

(assert (=> d!491874 (= lt!594383 (lexTailRecV2!560 thiss!17113 rules!1846 lt!593507 (BalanceConc!11873 Empty!5964) lt!593507 (BalanceConc!11875 Empty!5965)))))

(assert (=> d!491874 (= (lex!1271 thiss!17113 rules!1846 lt!593507) lt!594383)))

(declare-fun b!1632888 () Bool)

(declare-fun e!1047183 () Bool)

(assert (=> b!1632888 (= e!1047184 e!1047183)))

(declare-fun res!730726 () Bool)

(assert (=> b!1632888 (= res!730726 (< (size!14323 (_2!10167 lt!594383)) (size!14323 lt!593507)))))

(assert (=> b!1632888 (=> (not res!730726) (not e!1047183))))

(declare-fun b!1632889 () Bool)

(declare-datatypes ((tuple2!17542 0))(
  ( (tuple2!17543 (_1!10173 List!17995) (_2!10173 List!17993)) )
))
(declare-fun lexList!837 (LexerInterface!2787 List!17996 List!17993) tuple2!17542)

(assert (=> b!1632889 (= e!1047182 (= (list!7053 (_2!10167 lt!594383)) (_2!10173 (lexList!837 thiss!17113 rules!1846 (list!7053 lt!593507)))))))

(declare-fun b!1632890 () Bool)

(declare-fun res!730725 () Bool)

(assert (=> b!1632890 (=> (not res!730725) (not e!1047182))))

(assert (=> b!1632890 (= res!730725 (= (list!7054 (_1!10167 lt!594383)) (_1!10173 (lexList!837 thiss!17113 rules!1846 (list!7053 lt!593507)))))))

(declare-fun b!1632891 () Bool)

(assert (=> b!1632891 (= e!1047183 (not (isEmpty!10956 (_1!10167 lt!594383))))))

(declare-fun b!1632892 () Bool)

(assert (=> b!1632892 (= e!1047184 (= (_2!10167 lt!594383) lt!593507))))

(assert (= (and d!491874 c!265787) b!1632888))

(assert (= (and d!491874 (not c!265787)) b!1632892))

(assert (= (and b!1632888 res!730726) b!1632891))

(assert (= (and d!491874 res!730724) b!1632890))

(assert (= (and b!1632890 res!730725) b!1632889))

(declare-fun m!1967491 () Bool)

(assert (=> b!1632888 m!1967491))

(declare-fun m!1967493 () Bool)

(assert (=> b!1632888 m!1967493))

(declare-fun m!1967495 () Bool)

(assert (=> b!1632889 m!1967495))

(assert (=> b!1632889 m!1966219))

(assert (=> b!1632889 m!1966219))

(declare-fun m!1967497 () Bool)

(assert (=> b!1632889 m!1967497))

(declare-fun m!1967499 () Bool)

(assert (=> b!1632890 m!1967499))

(assert (=> b!1632890 m!1966219))

(assert (=> b!1632890 m!1966219))

(assert (=> b!1632890 m!1967497))

(declare-fun m!1967501 () Bool)

(assert (=> d!491874 m!1967501))

(declare-fun m!1967503 () Bool)

(assert (=> d!491874 m!1967503))

(declare-fun m!1967505 () Bool)

(assert (=> b!1632891 m!1967505))

(assert (=> b!1632318 d!491874))

(declare-fun d!491880 () Bool)

(assert (=> d!491880 (= (list!7053 lt!593512) (list!7057 (c!265689 lt!593512)))))

(declare-fun bs!395246 () Bool)

(assert (= bs!395246 d!491880))

(declare-fun m!1967507 () Bool)

(assert (=> bs!395246 m!1967507))

(assert (=> b!1632318 d!491880))

(declare-fun d!491882 () Bool)

(assert (=> d!491882 (= (seqFromList!2065 (t!149536 tokens!457)) (fromListB!908 (t!149536 tokens!457)))))

(declare-fun bs!395247 () Bool)

(assert (= bs!395247 d!491882))

(declare-fun m!1967509 () Bool)

(assert (=> bs!395247 m!1967509))

(assert (=> b!1632318 d!491882))

(declare-fun d!491884 () Bool)

(declare-fun lt!594384 () BalanceConc!11872)

(assert (=> d!491884 (= (list!7053 lt!594384) (printList!902 thiss!17113 (list!7054 lt!593508)))))

(assert (=> d!491884 (= lt!594384 (printTailRec!840 thiss!17113 lt!593508 0 (BalanceConc!11873 Empty!5964)))))

(assert (=> d!491884 (= (print!1318 thiss!17113 lt!593508) lt!594384)))

(declare-fun bs!395248 () Bool)

(assert (= bs!395248 d!491884))

(declare-fun m!1967511 () Bool)

(assert (=> bs!395248 m!1967511))

(assert (=> bs!395248 m!1966353))

(assert (=> bs!395248 m!1966353))

(declare-fun m!1967513 () Bool)

(assert (=> bs!395248 m!1967513))

(declare-fun m!1967515 () Bool)

(assert (=> bs!395248 m!1967515))

(assert (=> b!1632318 d!491884))

(declare-fun b!1632895 () Bool)

(declare-fun res!730728 () Bool)

(declare-fun e!1047185 () Bool)

(assert (=> b!1632895 (=> (not res!730728) (not e!1047185))))

(declare-fun lt!594385 () List!17993)

(assert (=> b!1632895 (= res!730728 (= (size!14321 lt!594385) (+ (size!14321 lt!593504) (size!14321 lt!593501))))))

(declare-fun b!1632896 () Bool)

(assert (=> b!1632896 (= e!1047185 (or (not (= lt!593501 Nil!17923)) (= lt!594385 lt!593504)))))

(declare-fun d!491886 () Bool)

(assert (=> d!491886 e!1047185))

(declare-fun res!730727 () Bool)

(assert (=> d!491886 (=> (not res!730727) (not e!1047185))))

(assert (=> d!491886 (= res!730727 (= (content!2486 lt!594385) (set.union (content!2486 lt!593504) (content!2486 lt!593501))))))

(declare-fun e!1047186 () List!17993)

(assert (=> d!491886 (= lt!594385 e!1047186)))

(declare-fun c!265788 () Bool)

(assert (=> d!491886 (= c!265788 (is-Nil!17923 lt!593504))))

(assert (=> d!491886 (= (++!4787 lt!593504 lt!593501) lt!594385)))

(declare-fun b!1632893 () Bool)

(assert (=> b!1632893 (= e!1047186 lt!593501)))

(declare-fun b!1632894 () Bool)

(assert (=> b!1632894 (= e!1047186 (Cons!17923 (h!23324 lt!593504) (++!4787 (t!149534 lt!593504) lt!593501)))))

(assert (= (and d!491886 c!265788) b!1632893))

(assert (= (and d!491886 (not c!265788)) b!1632894))

(assert (= (and d!491886 res!730727) b!1632895))

(assert (= (and b!1632895 res!730728) b!1632896))

(declare-fun m!1967517 () Bool)

(assert (=> b!1632895 m!1967517))

(assert (=> b!1632895 m!1966965))

(declare-fun m!1967519 () Bool)

(assert (=> b!1632895 m!1967519))

(declare-fun m!1967521 () Bool)

(assert (=> d!491886 m!1967521))

(assert (=> d!491886 m!1966999))

(declare-fun m!1967523 () Bool)

(assert (=> d!491886 m!1967523))

(declare-fun m!1967525 () Bool)

(assert (=> b!1632894 m!1967525))

(assert (=> b!1632318 d!491886))

(declare-fun d!491888 () Bool)

(assert (=> d!491888 (= (seqFromList!2065 tokens!457) (fromListB!908 tokens!457))))

(declare-fun bs!395249 () Bool)

(assert (= bs!395249 d!491888))

(declare-fun m!1967527 () Bool)

(assert (=> bs!395249 m!1967527))

(assert (=> b!1632318 d!491888))

(declare-fun d!491890 () Bool)

(declare-fun lt!594386 () BalanceConc!11872)

(assert (=> d!491890 (= (list!7053 lt!594386) (originalCharacters!3972 (h!23326 tokens!457)))))

(assert (=> d!491890 (= lt!594386 (dynLambda!7997 (toChars!4448 (transformation!3158 (rule!4994 (h!23326 tokens!457)))) (value!99677 (h!23326 tokens!457))))))

(assert (=> d!491890 (= (charsOf!1807 (h!23326 tokens!457)) lt!594386)))

(declare-fun b_lambda!51371 () Bool)

(assert (=> (not b_lambda!51371) (not d!491890)))

(declare-fun t!149559 () Bool)

(declare-fun tb!93695 () Bool)

(assert (=> (and b!1632341 (= (toChars!4448 (transformation!3158 (rule!4994 (h!23326 tokens!457)))) (toChars!4448 (transformation!3158 (rule!4994 (h!23326 tokens!457))))) t!149559) tb!93695))

(declare-fun b!1632897 () Bool)

(declare-fun e!1047187 () Bool)

(declare-fun tp!473813 () Bool)

(assert (=> b!1632897 (= e!1047187 (and (inv!23297 (c!265689 (dynLambda!7997 (toChars!4448 (transformation!3158 (rule!4994 (h!23326 tokens!457)))) (value!99677 (h!23326 tokens!457))))) tp!473813))))

(declare-fun result!113006 () Bool)

(assert (=> tb!93695 (= result!113006 (and (inv!23298 (dynLambda!7997 (toChars!4448 (transformation!3158 (rule!4994 (h!23326 tokens!457)))) (value!99677 (h!23326 tokens!457)))) e!1047187))))

(assert (= tb!93695 b!1632897))

(declare-fun m!1967529 () Bool)

(assert (=> b!1632897 m!1967529))

(declare-fun m!1967531 () Bool)

(assert (=> tb!93695 m!1967531))

(assert (=> d!491890 t!149559))

(declare-fun b_and!115777 () Bool)

(assert (= b_and!115773 (and (=> t!149559 result!113006) b_and!115777)))

(declare-fun t!149561 () Bool)

(declare-fun tb!93697 () Bool)

(assert (=> (and b!1632322 (= (toChars!4448 (transformation!3158 (h!23327 rules!1846))) (toChars!4448 (transformation!3158 (rule!4994 (h!23326 tokens!457))))) t!149561) tb!93697))

(declare-fun result!113008 () Bool)

(assert (= result!113008 result!113006))

(assert (=> d!491890 t!149561))

(declare-fun b_and!115779 () Bool)

(assert (= b_and!115775 (and (=> t!149561 result!113008) b_and!115779)))

(declare-fun m!1967533 () Bool)

(assert (=> d!491890 m!1967533))

(declare-fun m!1967535 () Bool)

(assert (=> d!491890 m!1967535))

(assert (=> b!1632318 d!491890))

(declare-fun d!491892 () Bool)

(assert (=> d!491892 (= (list!7053 lt!593507) (list!7057 (c!265689 lt!593507)))))

(declare-fun bs!395250 () Bool)

(assert (= bs!395250 d!491892))

(declare-fun m!1967537 () Bool)

(assert (=> bs!395250 m!1967537))

(assert (=> b!1632318 d!491892))

(declare-fun d!491894 () Bool)

(assert (=> d!491894 (= (head!3488 (originalCharacters!3972 (h!23326 (t!149536 tokens!457)))) (h!23324 (originalCharacters!3972 (h!23326 (t!149536 tokens!457)))))))

(assert (=> b!1632320 d!491894))

(declare-fun b!1632908 () Bool)

(declare-fun res!730731 () Bool)

(declare-fun e!1047195 () Bool)

(assert (=> b!1632908 (=> res!730731 e!1047195)))

(assert (=> b!1632908 (= res!730731 (not (is-IntegerValue!9746 (value!99677 (h!23326 tokens!457)))))))

(declare-fun e!1047194 () Bool)

(assert (=> b!1632908 (= e!1047194 e!1047195)))

(declare-fun b!1632909 () Bool)

(declare-fun inv!17 (TokenValue!3248) Bool)

(assert (=> b!1632909 (= e!1047194 (inv!17 (value!99677 (h!23326 tokens!457))))))

(declare-fun d!491896 () Bool)

(declare-fun c!265793 () Bool)

(assert (=> d!491896 (= c!265793 (is-IntegerValue!9744 (value!99677 (h!23326 tokens!457))))))

(declare-fun e!1047196 () Bool)

(assert (=> d!491896 (= (inv!21 (value!99677 (h!23326 tokens!457))) e!1047196)))

(declare-fun b!1632910 () Bool)

(declare-fun inv!15 (TokenValue!3248) Bool)

(assert (=> b!1632910 (= e!1047195 (inv!15 (value!99677 (h!23326 tokens!457))))))

(declare-fun b!1632911 () Bool)

(declare-fun inv!16 (TokenValue!3248) Bool)

(assert (=> b!1632911 (= e!1047196 (inv!16 (value!99677 (h!23326 tokens!457))))))

(declare-fun b!1632912 () Bool)

(assert (=> b!1632912 (= e!1047196 e!1047194)))

(declare-fun c!265794 () Bool)

(assert (=> b!1632912 (= c!265794 (is-IntegerValue!9745 (value!99677 (h!23326 tokens!457))))))

(assert (= (and d!491896 c!265793) b!1632911))

(assert (= (and d!491896 (not c!265793)) b!1632912))

(assert (= (and b!1632912 c!265794) b!1632909))

(assert (= (and b!1632912 (not c!265794)) b!1632908))

(assert (= (and b!1632908 (not res!730731)) b!1632910))

(declare-fun m!1967539 () Bool)

(assert (=> b!1632909 m!1967539))

(declare-fun m!1967541 () Bool)

(assert (=> b!1632910 m!1967541))

(declare-fun m!1967543 () Bool)

(assert (=> b!1632911 m!1967543))

(assert (=> b!1632343 d!491896))

(declare-fun d!491898 () Bool)

(declare-fun res!730736 () Bool)

(declare-fun e!1047199 () Bool)

(assert (=> d!491898 (=> (not res!730736) (not e!1047199))))

(assert (=> d!491898 (= res!730736 (not (isEmpty!10957 (originalCharacters!3972 (h!23326 tokens!457)))))))

(assert (=> d!491898 (= (inv!23294 (h!23326 tokens!457)) e!1047199)))

(declare-fun b!1632917 () Bool)

(declare-fun res!730737 () Bool)

(assert (=> b!1632917 (=> (not res!730737) (not e!1047199))))

(assert (=> b!1632917 (= res!730737 (= (originalCharacters!3972 (h!23326 tokens!457)) (list!7053 (dynLambda!7997 (toChars!4448 (transformation!3158 (rule!4994 (h!23326 tokens!457)))) (value!99677 (h!23326 tokens!457))))))))

(declare-fun b!1632918 () Bool)

(assert (=> b!1632918 (= e!1047199 (= (size!14319 (h!23326 tokens!457)) (size!14321 (originalCharacters!3972 (h!23326 tokens!457)))))))

(assert (= (and d!491898 res!730736) b!1632917))

(assert (= (and b!1632917 res!730737) b!1632918))

(declare-fun b_lambda!51373 () Bool)

(assert (=> (not b_lambda!51373) (not b!1632917)))

(assert (=> b!1632917 t!149559))

(declare-fun b_and!115781 () Bool)

(assert (= b_and!115777 (and (=> t!149559 result!113006) b_and!115781)))

(assert (=> b!1632917 t!149561))

(declare-fun b_and!115783 () Bool)

(assert (= b_and!115779 (and (=> t!149561 result!113008) b_and!115783)))

(declare-fun m!1967545 () Bool)

(assert (=> d!491898 m!1967545))

(assert (=> b!1632917 m!1967535))

(assert (=> b!1632917 m!1967535))

(declare-fun m!1967547 () Bool)

(assert (=> b!1632917 m!1967547))

(assert (=> b!1632918 m!1967267))

(assert (=> b!1632342 d!491898))

(declare-fun d!491900 () Bool)

(assert (=> d!491900 (= (get!5182 (maxPrefixZipper!315 thiss!17113 rules!1846 lt!593493)) (v!24411 (maxPrefixZipper!315 thiss!17113 rules!1846 lt!593493)))))

(assert (=> b!1632321 d!491900))

(declare-fun lt!594398 () Option!3347)

(declare-fun d!491902 () Bool)

(assert (=> d!491902 (= lt!594398 (maxPrefix!1351 thiss!17113 rules!1846 lt!593493))))

(declare-fun e!1047202 () Option!3347)

(assert (=> d!491902 (= lt!594398 e!1047202)))

(declare-fun c!265797 () Bool)

(assert (=> d!491902 (= c!265797 (and (is-Cons!17926 rules!1846) (is-Nil!17926 (t!149537 rules!1846))))))

(declare-fun lt!594400 () Unit!29199)

(declare-fun lt!594397 () Unit!29199)

(assert (=> d!491902 (= lt!594400 lt!594397)))

(assert (=> d!491902 (isPrefix!1418 lt!593493 lt!593493)))

(assert (=> d!491902 (= lt!594397 (lemmaIsPrefixRefl!967 lt!593493 lt!593493))))

(assert (=> d!491902 (rulesValidInductive!981 thiss!17113 rules!1846)))

(assert (=> d!491902 (= (maxPrefixZipper!315 thiss!17113 rules!1846 lt!593493) lt!594398)))

(declare-fun bm!105557 () Bool)

(declare-fun call!105562 () Option!3347)

(declare-fun maxPrefixOneRuleZipper!111 (LexerInterface!2787 Rule!6116 List!17993) Option!3347)

(assert (=> bm!105557 (= call!105562 (maxPrefixOneRuleZipper!111 thiss!17113 (h!23327 rules!1846) lt!593493))))

(declare-fun b!1632923 () Bool)

(assert (=> b!1632923 (= e!1047202 call!105562)))

(declare-fun b!1632924 () Bool)

(declare-fun lt!594401 () Option!3347)

(declare-fun lt!594399 () Option!3347)

(assert (=> b!1632924 (= e!1047202 (ite (and (is-None!3346 lt!594401) (is-None!3346 lt!594399)) None!3346 (ite (is-None!3346 lt!594399) lt!594401 (ite (is-None!3346 lt!594401) lt!594399 (ite (>= (size!14319 (_1!10166 (v!24411 lt!594401))) (size!14319 (_1!10166 (v!24411 lt!594399)))) lt!594401 lt!594399)))))))

(assert (=> b!1632924 (= lt!594401 call!105562)))

(assert (=> b!1632924 (= lt!594399 (maxPrefixZipper!315 thiss!17113 (t!149537 rules!1846) lt!593493))))

(assert (= (and d!491902 c!265797) b!1632923))

(assert (= (and d!491902 (not c!265797)) b!1632924))

(assert (= (or b!1632923 b!1632924) bm!105557))

(assert (=> d!491902 m!1966253))

(assert (=> d!491902 m!1966541))

(assert (=> d!491902 m!1966543))

(assert (=> d!491902 m!1966347))

(declare-fun m!1967549 () Bool)

(assert (=> bm!105557 m!1967549))

(declare-fun m!1967551 () Bool)

(assert (=> b!1632924 m!1967551))

(assert (=> b!1632321 d!491902))

(declare-fun d!491904 () Bool)

(assert (=> d!491904 (= (separableTokensPredicate!729 thiss!17113 (h!23326 tokens!457) (h!23326 (t!149536 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!554 (rulesRegex!548 thiss!17113 rules!1846) (++!4788 (charsOf!1807 (h!23326 tokens!457)) (singletonSeq!1595 (apply!4615 (charsOf!1807 (h!23326 (t!149536 tokens!457))) 0))))))))

(declare-fun bs!395252 () Bool)

(assert (= bs!395252 d!491904))

(assert (=> bs!395252 m!1966321))

(assert (=> bs!395252 m!1966331))

(assert (=> bs!395252 m!1966321))

(declare-fun m!1967599 () Bool)

(assert (=> bs!395252 m!1967599))

(declare-fun m!1967601 () Bool)

(assert (=> bs!395252 m!1967601))

(assert (=> bs!395252 m!1966221))

(assert (=> bs!395252 m!1966221))

(assert (=> bs!395252 m!1966327))

(assert (=> bs!395252 m!1967599))

(assert (=> bs!395252 m!1966331))

(assert (=> bs!395252 m!1966325))

(assert (=> bs!395252 m!1966325))

(assert (=> bs!395252 m!1966327))

(assert (=> b!1632344 d!491904))

(declare-fun d!491910 () Bool)

(declare-fun c!265801 () Bool)

(assert (=> d!491910 (= c!265801 (isEmpty!10957 (++!4787 lt!593504 lt!593518)))))

(declare-fun e!1047209 () Bool)

(assert (=> d!491910 (= (prefixMatch!421 lt!593498 (++!4787 lt!593504 lt!593518)) e!1047209)))

(declare-fun b!1632937 () Bool)

(assert (=> b!1632937 (= e!1047209 (not (lostCause!445 lt!593498)))))

(declare-fun b!1632938 () Bool)

(assert (=> b!1632938 (= e!1047209 (prefixMatch!421 (derivativeStep!1089 lt!593498 (head!3488 (++!4787 lt!593504 lt!593518))) (tail!2380 (++!4787 lt!593504 lt!593518))))))

(assert (= (and d!491910 c!265801) b!1632937))

(assert (= (and d!491910 (not c!265801)) b!1632938))

(assert (=> d!491910 m!1966289))

(declare-fun m!1967603 () Bool)

(assert (=> d!491910 m!1967603))

(assert (=> b!1632937 m!1966983))

(assert (=> b!1632938 m!1966289))

(declare-fun m!1967605 () Bool)

(assert (=> b!1632938 m!1967605))

(assert (=> b!1632938 m!1967605))

(declare-fun m!1967607 () Bool)

(assert (=> b!1632938 m!1967607))

(assert (=> b!1632938 m!1966289))

(declare-fun m!1967609 () Bool)

(assert (=> b!1632938 m!1967609))

(assert (=> b!1632938 m!1967607))

(assert (=> b!1632938 m!1967609))

(declare-fun m!1967611 () Bool)

(assert (=> b!1632938 m!1967611))

(assert (=> b!1632323 d!491910))

(declare-fun b!1632941 () Bool)

(declare-fun res!730745 () Bool)

(declare-fun e!1047210 () Bool)

(assert (=> b!1632941 (=> (not res!730745) (not e!1047210))))

(declare-fun lt!594453 () List!17993)

(assert (=> b!1632941 (= res!730745 (= (size!14321 lt!594453) (+ (size!14321 lt!593504) (size!14321 lt!593518))))))

(declare-fun b!1632942 () Bool)

(assert (=> b!1632942 (= e!1047210 (or (not (= lt!593518 Nil!17923)) (= lt!594453 lt!593504)))))

(declare-fun d!491912 () Bool)

(assert (=> d!491912 e!1047210))

(declare-fun res!730744 () Bool)

(assert (=> d!491912 (=> (not res!730744) (not e!1047210))))

(assert (=> d!491912 (= res!730744 (= (content!2486 lt!594453) (set.union (content!2486 lt!593504) (content!2486 lt!593518))))))

(declare-fun e!1047211 () List!17993)

(assert (=> d!491912 (= lt!594453 e!1047211)))

(declare-fun c!265802 () Bool)

(assert (=> d!491912 (= c!265802 (is-Nil!17923 lt!593504))))

(assert (=> d!491912 (= (++!4787 lt!593504 lt!593518) lt!594453)))

(declare-fun b!1632939 () Bool)

(assert (=> b!1632939 (= e!1047211 lt!593518)))

(declare-fun b!1632940 () Bool)

(assert (=> b!1632940 (= e!1047211 (Cons!17923 (h!23324 lt!593504) (++!4787 (t!149534 lt!593504) lt!593518)))))

(assert (= (and d!491912 c!265802) b!1632939))

(assert (= (and d!491912 (not c!265802)) b!1632940))

(assert (= (and d!491912 res!730744) b!1632941))

(assert (= (and b!1632941 res!730745) b!1632942))

(declare-fun m!1967613 () Bool)

(assert (=> b!1632941 m!1967613))

(assert (=> b!1632941 m!1966965))

(declare-fun m!1967615 () Bool)

(assert (=> b!1632941 m!1967615))

(declare-fun m!1967617 () Bool)

(assert (=> d!491912 m!1967617))

(assert (=> d!491912 m!1966999))

(declare-fun m!1967619 () Bool)

(assert (=> d!491912 m!1967619))

(declare-fun m!1967621 () Bool)

(assert (=> b!1632940 m!1967621))

(assert (=> b!1632323 d!491912))

(declare-fun d!491914 () Bool)

(assert (=> d!491914 (= (list!7053 lt!593513) (list!7057 (c!265689 lt!593513)))))

(declare-fun bs!395253 () Bool)

(assert (= bs!395253 d!491914))

(declare-fun m!1967623 () Bool)

(assert (=> bs!395253 m!1967623))

(assert (=> b!1632323 d!491914))

(declare-fun lt!594456 () Bool)

(declare-fun d!491916 () Bool)

(declare-fun isEmpty!10968 (List!17995) Bool)

(assert (=> d!491916 (= lt!594456 (isEmpty!10968 (list!7054 (_1!10167 (lex!1271 thiss!17113 rules!1846 (seqFromList!2066 lt!593504))))))))

(declare-fun isEmpty!10969 (Conc!5965) Bool)

(assert (=> d!491916 (= lt!594456 (isEmpty!10969 (c!265691 (_1!10167 (lex!1271 thiss!17113 rules!1846 (seqFromList!2066 lt!593504))))))))

(assert (=> d!491916 (= (isEmpty!10956 (_1!10167 (lex!1271 thiss!17113 rules!1846 (seqFromList!2066 lt!593504)))) lt!594456)))

(declare-fun bs!395254 () Bool)

(assert (= bs!395254 d!491916))

(declare-fun m!1967625 () Bool)

(assert (=> bs!395254 m!1967625))

(assert (=> bs!395254 m!1967625))

(declare-fun m!1967627 () Bool)

(assert (=> bs!395254 m!1967627))

(declare-fun m!1967629 () Bool)

(assert (=> bs!395254 m!1967629))

(assert (=> b!1632324 d!491916))

(declare-fun d!491918 () Bool)

(declare-fun e!1047212 () Bool)

(assert (=> d!491918 e!1047212))

(declare-fun res!730746 () Bool)

(assert (=> d!491918 (=> (not res!730746) (not e!1047212))))

(declare-fun e!1047214 () Bool)

(assert (=> d!491918 (= res!730746 e!1047214)))

(declare-fun c!265803 () Bool)

(declare-fun lt!594457 () tuple2!17530)

(assert (=> d!491918 (= c!265803 (> (size!14322 (_1!10167 lt!594457)) 0))))

(assert (=> d!491918 (= lt!594457 (lexTailRecV2!560 thiss!17113 rules!1846 (seqFromList!2066 lt!593504) (BalanceConc!11873 Empty!5964) (seqFromList!2066 lt!593504) (BalanceConc!11875 Empty!5965)))))

(assert (=> d!491918 (= (lex!1271 thiss!17113 rules!1846 (seqFromList!2066 lt!593504)) lt!594457)))

(declare-fun b!1632943 () Bool)

(declare-fun e!1047213 () Bool)

(assert (=> b!1632943 (= e!1047214 e!1047213)))

(declare-fun res!730748 () Bool)

(assert (=> b!1632943 (= res!730748 (< (size!14323 (_2!10167 lt!594457)) (size!14323 (seqFromList!2066 lt!593504))))))

(assert (=> b!1632943 (=> (not res!730748) (not e!1047213))))

(declare-fun b!1632944 () Bool)

(assert (=> b!1632944 (= e!1047212 (= (list!7053 (_2!10167 lt!594457)) (_2!10173 (lexList!837 thiss!17113 rules!1846 (list!7053 (seqFromList!2066 lt!593504))))))))

(declare-fun b!1632945 () Bool)

(declare-fun res!730747 () Bool)

(assert (=> b!1632945 (=> (not res!730747) (not e!1047212))))

(assert (=> b!1632945 (= res!730747 (= (list!7054 (_1!10167 lt!594457)) (_1!10173 (lexList!837 thiss!17113 rules!1846 (list!7053 (seqFromList!2066 lt!593504))))))))

(declare-fun b!1632946 () Bool)

(assert (=> b!1632946 (= e!1047213 (not (isEmpty!10956 (_1!10167 lt!594457))))))

(declare-fun b!1632947 () Bool)

(assert (=> b!1632947 (= e!1047214 (= (_2!10167 lt!594457) (seqFromList!2066 lt!593504)))))

(assert (= (and d!491918 c!265803) b!1632943))

(assert (= (and d!491918 (not c!265803)) b!1632947))

(assert (= (and b!1632943 res!730748) b!1632946))

(assert (= (and d!491918 res!730746) b!1632945))

(assert (= (and b!1632945 res!730747) b!1632944))

(declare-fun m!1967631 () Bool)

(assert (=> b!1632943 m!1967631))

(assert (=> b!1632943 m!1966339))

(declare-fun m!1967633 () Bool)

(assert (=> b!1632943 m!1967633))

(declare-fun m!1967635 () Bool)

(assert (=> b!1632944 m!1967635))

(assert (=> b!1632944 m!1966339))

(declare-fun m!1967637 () Bool)

(assert (=> b!1632944 m!1967637))

(assert (=> b!1632944 m!1967637))

(declare-fun m!1967639 () Bool)

(assert (=> b!1632944 m!1967639))

(declare-fun m!1967641 () Bool)

(assert (=> b!1632945 m!1967641))

(assert (=> b!1632945 m!1966339))

(assert (=> b!1632945 m!1967637))

(assert (=> b!1632945 m!1967637))

(assert (=> b!1632945 m!1967639))

(declare-fun m!1967643 () Bool)

(assert (=> d!491918 m!1967643))

(assert (=> d!491918 m!1966339))

(assert (=> d!491918 m!1966339))

(declare-fun m!1967645 () Bool)

(assert (=> d!491918 m!1967645))

(declare-fun m!1967647 () Bool)

(assert (=> b!1632946 m!1967647))

(assert (=> b!1632324 d!491918))

(declare-fun d!491920 () Bool)

(assert (=> d!491920 (= (seqFromList!2066 lt!593504) (fromListB!910 lt!593504))))

(declare-fun bs!395255 () Bool)

(assert (= bs!395255 d!491920))

(declare-fun m!1967649 () Bool)

(assert (=> bs!395255 m!1967649))

(assert (=> b!1632324 d!491920))

(declare-fun d!491922 () Bool)

(assert (=> d!491922 (= (isEmpty!10958 rules!1846) (is-Nil!17926 rules!1846))))

(assert (=> b!1632346 d!491922))

(declare-fun d!491924 () Bool)

(assert (=> d!491924 (= (isDefined!2714 lt!593500) (not (isEmpty!10962 lt!593500)))))

(declare-fun bs!395256 () Bool)

(assert (= bs!395256 d!491924))

(declare-fun m!1967651 () Bool)

(assert (=> bs!395256 m!1967651))

(assert (=> b!1632325 d!491924))

(declare-fun b!1633067 () Bool)

(declare-fun e!1047276 () Unit!29199)

(declare-fun Unit!29254 () Unit!29199)

(assert (=> b!1633067 (= e!1047276 Unit!29254)))

(declare-fun d!491926 () Bool)

(assert (=> d!491926 (isDefined!2714 (maxPrefix!1351 thiss!17113 rules!1846 (++!4787 lt!593504 lt!593501)))))

(declare-fun lt!594546 () Unit!29199)

(assert (=> d!491926 (= lt!594546 e!1047276)))

(declare-fun c!265827 () Bool)

(assert (=> d!491926 (= c!265827 (isEmpty!10962 (maxPrefix!1351 thiss!17113 rules!1846 (++!4787 lt!593504 lt!593501))))))

(declare-fun lt!594541 () Unit!29199)

(declare-fun lt!594539 () Unit!29199)

(assert (=> d!491926 (= lt!594541 lt!594539)))

(declare-fun e!1047277 () Bool)

(assert (=> d!491926 e!1047277))

(declare-fun res!730819 () Bool)

(assert (=> d!491926 (=> (not res!730819) (not e!1047277))))

(declare-fun lt!594535 () Token!5882)

(assert (=> d!491926 (= res!730819 (isDefined!2718 (getRuleFromTag!291 thiss!17113 rules!1846 (tag!3438 (rule!4994 lt!594535)))))))

(assert (=> d!491926 (= lt!594539 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!291 thiss!17113 rules!1846 lt!593504 lt!594535))))

(declare-fun lt!594536 () Unit!29199)

(declare-fun lt!594550 () Unit!29199)

(assert (=> d!491926 (= lt!594536 lt!594550)))

(declare-fun lt!594542 () List!17993)

(assert (=> d!491926 (isPrefix!1418 lt!594542 (++!4787 lt!593504 lt!593501))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!177 (List!17993 List!17993 List!17993) Unit!29199)

(assert (=> d!491926 (= lt!594550 (lemmaPrefixStaysPrefixWhenAddingToSuffix!177 lt!594542 lt!593504 lt!593501))))

(assert (=> d!491926 (= lt!594542 (list!7053 (charsOf!1807 lt!594535)))))

(declare-fun lt!594538 () Unit!29199)

(declare-fun lt!594547 () Unit!29199)

(assert (=> d!491926 (= lt!594538 lt!594547)))

(declare-fun lt!594543 () List!17993)

(declare-fun lt!594549 () List!17993)

(assert (=> d!491926 (isPrefix!1418 lt!594543 (++!4787 lt!594543 lt!594549))))

(assert (=> d!491926 (= lt!594547 (lemmaConcatTwoListThenFirstIsPrefix!943 lt!594543 lt!594549))))

(assert (=> d!491926 (= lt!594549 (_2!10166 (get!5182 (maxPrefix!1351 thiss!17113 rules!1846 lt!593504))))))

(assert (=> d!491926 (= lt!594543 (list!7053 (charsOf!1807 lt!594535)))))

(assert (=> d!491926 (= lt!594535 (head!3492 (list!7054 (_1!10167 (lex!1271 thiss!17113 rules!1846 (seqFromList!2066 lt!593504))))))))

(assert (=> d!491926 (not (isEmpty!10958 rules!1846))))

(assert (=> d!491926 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!361 thiss!17113 rules!1846 lt!593504 lt!593501) lt!594546)))

(declare-fun b!1633066 () Bool)

(declare-fun Unit!29259 () Unit!29199)

(assert (=> b!1633066 (= e!1047276 Unit!29259)))

(declare-fun lt!594544 () List!17993)

(assert (=> b!1633066 (= lt!594544 (++!4787 lt!593504 lt!593501))))

(declare-fun lt!594537 () Unit!29199)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!185 (LexerInterface!2787 Rule!6116 List!17996 List!17993) Unit!29199)

(assert (=> b!1633066 (= lt!594537 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!185 thiss!17113 (rule!4994 lt!594535) rules!1846 lt!594544))))

(assert (=> b!1633066 (isEmpty!10962 (maxPrefixOneRule!782 thiss!17113 (rule!4994 lt!594535) lt!594544))))

(declare-fun lt!594548 () Unit!29199)

(assert (=> b!1633066 (= lt!594548 lt!594537)))

(declare-fun lt!594534 () List!17993)

(assert (=> b!1633066 (= lt!594534 (list!7053 (charsOf!1807 lt!594535)))))

(declare-fun lt!594540 () Unit!29199)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!181 (LexerInterface!2787 Rule!6116 List!17993 List!17993) Unit!29199)

(assert (=> b!1633066 (= lt!594540 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!181 thiss!17113 (rule!4994 lt!594535) lt!594534 (++!4787 lt!593504 lt!593501)))))

(assert (=> b!1633066 (not (matchR!1985 (regex!3158 (rule!4994 lt!594535)) lt!594534))))

(declare-fun lt!594545 () Unit!29199)

(assert (=> b!1633066 (= lt!594545 lt!594540)))

(assert (=> b!1633066 false))

(declare-fun b!1633064 () Bool)

(declare-fun res!730820 () Bool)

(assert (=> b!1633064 (=> (not res!730820) (not e!1047277))))

(assert (=> b!1633064 (= res!730820 (matchR!1985 (regex!3158 (get!5184 (getRuleFromTag!291 thiss!17113 rules!1846 (tag!3438 (rule!4994 lt!594535))))) (list!7053 (charsOf!1807 lt!594535))))))

(declare-fun b!1633065 () Bool)

(assert (=> b!1633065 (= e!1047277 (= (rule!4994 lt!594535) (get!5184 (getRuleFromTag!291 thiss!17113 rules!1846 (tag!3438 (rule!4994 lt!594535))))))))

(assert (= (and d!491926 res!730819) b!1633064))

(assert (= (and b!1633064 res!730820) b!1633065))

(assert (= (and d!491926 c!265827) b!1633066))

(assert (= (and d!491926 (not c!265827)) b!1633067))

(declare-fun m!1967739 () Bool)

(assert (=> d!491926 m!1967739))

(assert (=> d!491926 m!1966287))

(declare-fun m!1967741 () Bool)

(assert (=> d!491926 m!1967741))

(assert (=> d!491926 m!1967625))

(assert (=> d!491926 m!1966339))

(assert (=> d!491926 m!1966341))

(declare-fun m!1967743 () Bool)

(assert (=> d!491926 m!1967743))

(assert (=> d!491926 m!1966227))

(declare-fun m!1967745 () Bool)

(assert (=> d!491926 m!1967745))

(declare-fun m!1967747 () Bool)

(assert (=> d!491926 m!1967747))

(declare-fun m!1967749 () Bool)

(assert (=> d!491926 m!1967749))

(assert (=> d!491926 m!1967739))

(declare-fun m!1967751 () Bool)

(assert (=> d!491926 m!1967751))

(assert (=> d!491926 m!1967625))

(declare-fun m!1967753 () Bool)

(assert (=> d!491926 m!1967753))

(declare-fun m!1967755 () Bool)

(assert (=> d!491926 m!1967755))

(declare-fun m!1967757 () Bool)

(assert (=> d!491926 m!1967757))

(declare-fun m!1967759 () Bool)

(assert (=> d!491926 m!1967759))

(assert (=> d!491926 m!1967755))

(assert (=> d!491926 m!1966227))

(assert (=> d!491926 m!1966339))

(assert (=> d!491926 m!1966287))

(declare-fun m!1967761 () Bool)

(assert (=> d!491926 m!1967761))

(declare-fun m!1967763 () Bool)

(assert (=> d!491926 m!1967763))

(assert (=> d!491926 m!1967747))

(declare-fun m!1967765 () Bool)

(assert (=> d!491926 m!1967765))

(assert (=> d!491926 m!1966301))

(assert (=> d!491926 m!1966227))

(assert (=> d!491926 m!1967747))

(assert (=> d!491926 m!1967763))

(declare-fun m!1967767 () Bool)

(assert (=> d!491926 m!1967767))

(declare-fun m!1967769 () Bool)

(assert (=> b!1633066 m!1967769))

(declare-fun m!1967771 () Bool)

(assert (=> b!1633066 m!1967771))

(assert (=> b!1633066 m!1967763))

(assert (=> b!1633066 m!1967767))

(assert (=> b!1633066 m!1967769))

(declare-fun m!1967773 () Bool)

(assert (=> b!1633066 m!1967773))

(assert (=> b!1633066 m!1966227))

(assert (=> b!1633066 m!1966227))

(declare-fun m!1967775 () Bool)

(assert (=> b!1633066 m!1967775))

(assert (=> b!1633066 m!1967763))

(declare-fun m!1967777 () Bool)

(assert (=> b!1633066 m!1967777))

(assert (=> b!1633064 m!1967755))

(assert (=> b!1633064 m!1967767))

(declare-fun m!1967779 () Bool)

(assert (=> b!1633064 m!1967779))

(assert (=> b!1633064 m!1967763))

(assert (=> b!1633064 m!1967767))

(assert (=> b!1633064 m!1967755))

(declare-fun m!1967781 () Bool)

(assert (=> b!1633064 m!1967781))

(assert (=> b!1633064 m!1967763))

(assert (=> b!1633065 m!1967755))

(assert (=> b!1633065 m!1967755))

(assert (=> b!1633065 m!1967781))

(assert (=> b!1632325 d!491926))

(declare-fun d!491942 () Bool)

(assert (=> d!491942 (= (inv!23290 (tag!3438 (rule!4994 (h!23326 tokens!457)))) (= (mod (str.len (value!99676 (tag!3438 (rule!4994 (h!23326 tokens!457))))) 2) 0))))

(assert (=> b!1632327 d!491942))

(declare-fun d!491944 () Bool)

(declare-fun res!730823 () Bool)

(declare-fun e!1047280 () Bool)

(assert (=> d!491944 (=> (not res!730823) (not e!1047280))))

(declare-fun semiInverseModEq!1208 (Int Int) Bool)

(assert (=> d!491944 (= res!730823 (semiInverseModEq!1208 (toChars!4448 (transformation!3158 (rule!4994 (h!23326 tokens!457)))) (toValue!4589 (transformation!3158 (rule!4994 (h!23326 tokens!457))))))))

(assert (=> d!491944 (= (inv!23293 (transformation!3158 (rule!4994 (h!23326 tokens!457)))) e!1047280)))

(declare-fun b!1633070 () Bool)

(declare-fun equivClasses!1149 (Int Int) Bool)

(assert (=> b!1633070 (= e!1047280 (equivClasses!1149 (toChars!4448 (transformation!3158 (rule!4994 (h!23326 tokens!457)))) (toValue!4589 (transformation!3158 (rule!4994 (h!23326 tokens!457))))))))

(assert (= (and d!491944 res!730823) b!1633070))

(declare-fun m!1967783 () Bool)

(assert (=> d!491944 m!1967783))

(declare-fun m!1967785 () Bool)

(assert (=> b!1633070 m!1967785))

(assert (=> b!1632327 d!491944))

(declare-fun d!491946 () Bool)

(assert (=> d!491946 (= (isEmpty!10957 (_2!10166 lt!593516)) (is-Nil!17923 (_2!10166 lt!593516)))))

(assert (=> b!1632326 d!491946))

(declare-fun d!491948 () Bool)

(declare-fun res!730850 () Bool)

(declare-fun e!1047306 () Bool)

(assert (=> d!491948 (=> res!730850 e!1047306)))

(assert (=> d!491948 (= res!730850 (or (not (is-Cons!17925 tokens!457)) (not (is-Cons!17925 (t!149536 tokens!457)))))))

(assert (=> d!491948 (= (tokensListTwoByTwoPredicateSeparableList!480 thiss!17113 tokens!457 rules!1846) e!1047306)))

(declare-fun b!1633117 () Bool)

(declare-fun e!1047307 () Bool)

(assert (=> b!1633117 (= e!1047306 e!1047307)))

(declare-fun res!730851 () Bool)

(assert (=> b!1633117 (=> (not res!730851) (not e!1047307))))

(assert (=> b!1633117 (= res!730851 (separableTokensPredicate!729 thiss!17113 (h!23326 tokens!457) (h!23326 (t!149536 tokens!457)) rules!1846))))

(declare-fun lt!594605 () Unit!29199)

(declare-fun Unit!29260 () Unit!29199)

(assert (=> b!1633117 (= lt!594605 Unit!29260)))

(assert (=> b!1633117 (> (size!14323 (charsOf!1807 (h!23326 (t!149536 tokens!457)))) 0)))

(declare-fun lt!594603 () Unit!29199)

(declare-fun Unit!29261 () Unit!29199)

(assert (=> b!1633117 (= lt!594603 Unit!29261)))

(assert (=> b!1633117 (rulesProduceIndividualToken!1439 thiss!17113 rules!1846 (h!23326 (t!149536 tokens!457)))))

(declare-fun lt!594601 () Unit!29199)

(declare-fun Unit!29262 () Unit!29199)

(assert (=> b!1633117 (= lt!594601 Unit!29262)))

(assert (=> b!1633117 (rulesProduceIndividualToken!1439 thiss!17113 rules!1846 (h!23326 tokens!457))))

(declare-fun lt!594607 () Unit!29199)

(declare-fun lt!594606 () Unit!29199)

(assert (=> b!1633117 (= lt!594607 lt!594606)))

(assert (=> b!1633117 (rulesProduceIndividualToken!1439 thiss!17113 rules!1846 (h!23326 (t!149536 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!572 (LexerInterface!2787 List!17996 List!17995 Token!5882) Unit!29199)

(assert (=> b!1633117 (= lt!594606 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!572 thiss!17113 rules!1846 tokens!457 (h!23326 (t!149536 tokens!457))))))

(declare-fun lt!594602 () Unit!29199)

(declare-fun lt!594604 () Unit!29199)

(assert (=> b!1633117 (= lt!594602 lt!594604)))

(assert (=> b!1633117 (rulesProduceIndividualToken!1439 thiss!17113 rules!1846 (h!23326 tokens!457))))

(assert (=> b!1633117 (= lt!594604 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!572 thiss!17113 rules!1846 tokens!457 (h!23326 tokens!457)))))

(declare-fun b!1633118 () Bool)

(assert (=> b!1633118 (= e!1047307 (tokensListTwoByTwoPredicateSeparableList!480 thiss!17113 (Cons!17925 (h!23326 (t!149536 tokens!457)) (t!149536 (t!149536 tokens!457))) rules!1846))))

(assert (= (and d!491948 (not res!730850)) b!1633117))

(assert (= (and b!1633117 res!730851) b!1633118))

(declare-fun m!1967923 () Bool)

(assert (=> b!1633117 m!1967923))

(declare-fun m!1967925 () Bool)

(assert (=> b!1633117 m!1967925))

(assert (=> b!1633117 m!1966331))

(assert (=> b!1633117 m!1966773))

(assert (=> b!1633117 m!1966265))

(assert (=> b!1633117 m!1966331))

(assert (=> b!1633117 m!1966315))

(declare-fun m!1967927 () Bool)

(assert (=> b!1633117 m!1967927))

(declare-fun m!1967929 () Bool)

(assert (=> b!1633118 m!1967929))

(assert (=> b!1632328 d!491948))

(declare-fun d!491972 () Bool)

(assert (=> d!491972 (= (inv!23290 (tag!3438 (h!23327 rules!1846))) (= (mod (str.len (value!99676 (tag!3438 (h!23327 rules!1846)))) 2) 0))))

(assert (=> b!1632329 d!491972))

(declare-fun d!491974 () Bool)

(declare-fun res!730852 () Bool)

(declare-fun e!1047308 () Bool)

(assert (=> d!491974 (=> (not res!730852) (not e!1047308))))

(assert (=> d!491974 (= res!730852 (semiInverseModEq!1208 (toChars!4448 (transformation!3158 (h!23327 rules!1846))) (toValue!4589 (transformation!3158 (h!23327 rules!1846)))))))

(assert (=> d!491974 (= (inv!23293 (transformation!3158 (h!23327 rules!1846))) e!1047308)))

(declare-fun b!1633119 () Bool)

(assert (=> b!1633119 (= e!1047308 (equivClasses!1149 (toChars!4448 (transformation!3158 (h!23327 rules!1846))) (toValue!4589 (transformation!3158 (h!23327 rules!1846)))))))

(assert (= (and d!491974 res!730852) b!1633119))

(declare-fun m!1967931 () Bool)

(assert (=> d!491974 m!1967931))

(declare-fun m!1967933 () Bool)

(assert (=> b!1633119 m!1967933))

(assert (=> b!1632329 d!491974))

(declare-fun b!1633130 () Bool)

(declare-fun e!1047311 () Bool)

(declare-fun tp_is_empty!7295 () Bool)

(assert (=> b!1633130 (= e!1047311 tp_is_empty!7295)))

(assert (=> b!1632327 (= tp!473774 e!1047311)))

(declare-fun b!1633133 () Bool)

(declare-fun tp!473828 () Bool)

(declare-fun tp!473826 () Bool)

(assert (=> b!1633133 (= e!1047311 (and tp!473828 tp!473826))))

(declare-fun b!1633131 () Bool)

(declare-fun tp!473827 () Bool)

(declare-fun tp!473825 () Bool)

(assert (=> b!1633131 (= e!1047311 (and tp!473827 tp!473825))))

(declare-fun b!1633132 () Bool)

(declare-fun tp!473824 () Bool)

(assert (=> b!1633132 (= e!1047311 tp!473824)))

(assert (= (and b!1632327 (is-ElementMatch!4486 (regex!3158 (rule!4994 (h!23326 tokens!457))))) b!1633130))

(assert (= (and b!1632327 (is-Concat!7735 (regex!3158 (rule!4994 (h!23326 tokens!457))))) b!1633131))

(assert (= (and b!1632327 (is-Star!4486 (regex!3158 (rule!4994 (h!23326 tokens!457))))) b!1633132))

(assert (= (and b!1632327 (is-Union!4486 (regex!3158 (rule!4994 (h!23326 tokens!457))))) b!1633133))

(declare-fun b!1633138 () Bool)

(declare-fun e!1047314 () Bool)

(declare-fun tp!473831 () Bool)

(assert (=> b!1633138 (= e!1047314 (and tp_is_empty!7295 tp!473831))))

(assert (=> b!1632343 (= tp!473771 e!1047314)))

(assert (= (and b!1632343 (is-Cons!17923 (originalCharacters!3972 (h!23326 tokens!457)))) b!1633138))

(declare-fun b!1633152 () Bool)

(declare-fun b_free!44095 () Bool)

(declare-fun b_next!44799 () Bool)

(assert (=> b!1633152 (= b_free!44095 (not b_next!44799))))

(declare-fun tp!473843 () Bool)

(declare-fun b_and!115785 () Bool)

(assert (=> b!1633152 (= tp!473843 b_and!115785)))

(declare-fun b_free!44097 () Bool)

(declare-fun b_next!44801 () Bool)

(assert (=> b!1633152 (= b_free!44097 (not b_next!44801))))

(declare-fun t!149564 () Bool)

(declare-fun tb!93699 () Bool)

(assert (=> (and b!1633152 (= (toChars!4448 (transformation!3158 (rule!4994 (h!23326 (t!149536 tokens!457))))) (toChars!4448 (transformation!3158 (rule!4994 (h!23326 (t!149536 tokens!457)))))) t!149564) tb!93699))

(declare-fun result!113016 () Bool)

(assert (= result!113016 result!113000))

(assert (=> d!491780 t!149564))

(declare-fun t!149566 () Bool)

(declare-fun tb!93701 () Bool)

(assert (=> (and b!1633152 (= (toChars!4448 (transformation!3158 (rule!4994 (h!23326 (t!149536 tokens!457))))) (toChars!4448 (transformation!3158 (rule!4994 (h!23326 tokens!457))))) t!149566) tb!93701))

(declare-fun result!113018 () Bool)

(assert (= result!113018 result!113006))

(assert (=> d!491890 t!149566))

(assert (=> b!1632917 t!149566))

(declare-fun b_and!115787 () Bool)

(declare-fun tp!473842 () Bool)

(assert (=> b!1633152 (= tp!473842 (and (=> t!149564 result!113016) (=> t!149566 result!113018) b_and!115787))))

(declare-fun e!1047330 () Bool)

(assert (=> b!1633152 (= e!1047330 (and tp!473843 tp!473842))))

(declare-fun tp!473844 () Bool)

(declare-fun e!1047331 () Bool)

(declare-fun e!1047327 () Bool)

(declare-fun b!1633149 () Bool)

(assert (=> b!1633149 (= e!1047331 (and (inv!23294 (h!23326 (t!149536 tokens!457))) e!1047327 tp!473844))))

(assert (=> b!1632342 (= tp!473776 e!1047331)))

(declare-fun e!1047329 () Bool)

(declare-fun b!1633150 () Bool)

(declare-fun tp!473845 () Bool)

(assert (=> b!1633150 (= e!1047327 (and (inv!21 (value!99677 (h!23326 (t!149536 tokens!457)))) e!1047329 tp!473845))))

(declare-fun b!1633151 () Bool)

(declare-fun tp!473846 () Bool)

(assert (=> b!1633151 (= e!1047329 (and tp!473846 (inv!23290 (tag!3438 (rule!4994 (h!23326 (t!149536 tokens!457))))) (inv!23293 (transformation!3158 (rule!4994 (h!23326 (t!149536 tokens!457))))) e!1047330))))

(assert (= b!1633151 b!1633152))

(assert (= b!1633150 b!1633151))

(assert (= b!1633149 b!1633150))

(assert (= (and b!1632342 (is-Cons!17925 (t!149536 tokens!457))) b!1633149))

(declare-fun m!1967935 () Bool)

(assert (=> b!1633149 m!1967935))

(declare-fun m!1967937 () Bool)

(assert (=> b!1633150 m!1967937))

(declare-fun m!1967939 () Bool)

(assert (=> b!1633151 m!1967939))

(declare-fun m!1967941 () Bool)

(assert (=> b!1633151 m!1967941))

(declare-fun b!1633153 () Bool)

(declare-fun e!1047333 () Bool)

(assert (=> b!1633153 (= e!1047333 tp_is_empty!7295)))

(assert (=> b!1632329 (= tp!473779 e!1047333)))

(declare-fun b!1633156 () Bool)

(declare-fun tp!473851 () Bool)

(declare-fun tp!473849 () Bool)

(assert (=> b!1633156 (= e!1047333 (and tp!473851 tp!473849))))

(declare-fun b!1633154 () Bool)

(declare-fun tp!473850 () Bool)

(declare-fun tp!473848 () Bool)

(assert (=> b!1633154 (= e!1047333 (and tp!473850 tp!473848))))

(declare-fun b!1633155 () Bool)

(declare-fun tp!473847 () Bool)

(assert (=> b!1633155 (= e!1047333 tp!473847)))

(assert (= (and b!1632329 (is-ElementMatch!4486 (regex!3158 (h!23327 rules!1846)))) b!1633153))

(assert (= (and b!1632329 (is-Concat!7735 (regex!3158 (h!23327 rules!1846)))) b!1633154))

(assert (= (and b!1632329 (is-Star!4486 (regex!3158 (h!23327 rules!1846)))) b!1633155))

(assert (= (and b!1632329 (is-Union!4486 (regex!3158 (h!23327 rules!1846)))) b!1633156))

(declare-fun b!1633167 () Bool)

(declare-fun b_free!44099 () Bool)

(declare-fun b_next!44803 () Bool)

(assert (=> b!1633167 (= b_free!44099 (not b_next!44803))))

(declare-fun tp!473860 () Bool)

(declare-fun b_and!115789 () Bool)

(assert (=> b!1633167 (= tp!473860 b_and!115789)))

(declare-fun b_free!44101 () Bool)

(declare-fun b_next!44805 () Bool)

(assert (=> b!1633167 (= b_free!44101 (not b_next!44805))))

(declare-fun t!149568 () Bool)

(declare-fun tb!93703 () Bool)

(assert (=> (and b!1633167 (= (toChars!4448 (transformation!3158 (h!23327 (t!149537 rules!1846)))) (toChars!4448 (transformation!3158 (rule!4994 (h!23326 (t!149536 tokens!457)))))) t!149568) tb!93703))

(declare-fun result!113022 () Bool)

(assert (= result!113022 result!113000))

(assert (=> d!491780 t!149568))

(declare-fun t!149570 () Bool)

(declare-fun tb!93705 () Bool)

(assert (=> (and b!1633167 (= (toChars!4448 (transformation!3158 (h!23327 (t!149537 rules!1846)))) (toChars!4448 (transformation!3158 (rule!4994 (h!23326 tokens!457))))) t!149570) tb!93705))

(declare-fun result!113024 () Bool)

(assert (= result!113024 result!113006))

(assert (=> d!491890 t!149570))

(assert (=> b!1632917 t!149570))

(declare-fun tp!473862 () Bool)

(declare-fun b_and!115791 () Bool)

(assert (=> b!1633167 (= tp!473862 (and (=> t!149568 result!113022) (=> t!149570 result!113024) b_and!115791))))

(declare-fun e!1047345 () Bool)

(assert (=> b!1633167 (= e!1047345 (and tp!473860 tp!473862))))

(declare-fun b!1633166 () Bool)

(declare-fun e!1047343 () Bool)

(declare-fun tp!473863 () Bool)

(assert (=> b!1633166 (= e!1047343 (and tp!473863 (inv!23290 (tag!3438 (h!23327 (t!149537 rules!1846)))) (inv!23293 (transformation!3158 (h!23327 (t!149537 rules!1846)))) e!1047345))))

(declare-fun b!1633165 () Bool)

(declare-fun e!1047342 () Bool)

(declare-fun tp!473861 () Bool)

(assert (=> b!1633165 (= e!1047342 (and e!1047343 tp!473861))))

(assert (=> b!1632345 (= tp!473772 e!1047342)))

(assert (= b!1633166 b!1633167))

(assert (= b!1633165 b!1633166))

(assert (= (and b!1632345 (is-Cons!17926 (t!149537 rules!1846))) b!1633165))

(declare-fun m!1967943 () Bool)

(assert (=> b!1633166 m!1967943))

(declare-fun m!1967945 () Bool)

(assert (=> b!1633166 m!1967945))

(declare-fun b_lambda!51375 () Bool)

(assert (= b_lambda!51373 (or (and b!1632341 b_free!44081) (and b!1632322 b_free!44085 (= (toChars!4448 (transformation!3158 (h!23327 rules!1846))) (toChars!4448 (transformation!3158 (rule!4994 (h!23326 tokens!457)))))) (and b!1633152 b_free!44097 (= (toChars!4448 (transformation!3158 (rule!4994 (h!23326 (t!149536 tokens!457))))) (toChars!4448 (transformation!3158 (rule!4994 (h!23326 tokens!457)))))) (and b!1633167 b_free!44101 (= (toChars!4448 (transformation!3158 (h!23327 (t!149537 rules!1846)))) (toChars!4448 (transformation!3158 (rule!4994 (h!23326 tokens!457)))))) b_lambda!51375)))

(declare-fun b_lambda!51377 () Bool)

(assert (= b_lambda!51371 (or (and b!1632341 b_free!44081) (and b!1632322 b_free!44085 (= (toChars!4448 (transformation!3158 (h!23327 rules!1846))) (toChars!4448 (transformation!3158 (rule!4994 (h!23326 tokens!457)))))) (and b!1633152 b_free!44097 (= (toChars!4448 (transformation!3158 (rule!4994 (h!23326 (t!149536 tokens!457))))) (toChars!4448 (transformation!3158 (rule!4994 (h!23326 tokens!457)))))) (and b!1633167 b_free!44101 (= (toChars!4448 (transformation!3158 (h!23327 (t!149537 rules!1846)))) (toChars!4448 (transformation!3158 (rule!4994 (h!23326 tokens!457)))))) b_lambda!51377)))

(declare-fun b_lambda!51379 () Bool)

(assert (= b_lambda!51369 (or (and b!1632341 b_free!44081 (= (toChars!4448 (transformation!3158 (rule!4994 (h!23326 tokens!457)))) (toChars!4448 (transformation!3158 (rule!4994 (h!23326 (t!149536 tokens!457))))))) (and b!1632322 b_free!44085 (= (toChars!4448 (transformation!3158 (h!23327 rules!1846))) (toChars!4448 (transformation!3158 (rule!4994 (h!23326 (t!149536 tokens!457))))))) (and b!1633152 b_free!44097) (and b!1633167 b_free!44101 (= (toChars!4448 (transformation!3158 (h!23327 (t!149537 rules!1846)))) (toChars!4448 (transformation!3158 (rule!4994 (h!23326 (t!149536 tokens!457))))))) b_lambda!51379)))

(push 1)

(assert (not b!1632731))

(assert (not b!1632733))

(assert (not d!491914))

(assert (not d!491780))

(assert b_and!115783)

(assert (not b!1632564))

(assert (not b!1632851))

(assert (not d!491788))

(assert (not bm!105550))

(assert (not d!491866))

(assert (not b!1632890))

(assert (not b!1632547))

(assert (not b!1632495))

(assert (not d!491774))

(assert (not b!1632732))

(assert (not b!1632772))

(assert (not d!491792))

(assert (not bm!105557))

(assert (not b!1633155))

(assert (not b_next!44803))

(assert (not b!1632894))

(assert (not d!491882))

(assert (not d!491872))

(assert (not b!1632788))

(assert (not b!1632888))

(assert (not b!1632474))

(assert (not d!491918))

(assert (not b!1632723))

(assert (not b!1632765))

(assert (not d!491826))

(assert (not b!1632468))

(assert (not b!1632651))

(assert (not b!1632652))

(assert (not b!1632848))

(assert (not d!491888))

(assert (not b_next!44787))

(assert (not b!1632760))

(assert (not b!1632774))

(assert (not b!1632776))

(assert (not d!491772))

(assert (not b!1632777))

(assert (not d!491870))

(assert (not b!1632897))

(assert (not d!491886))

(assert (not b!1633156))

(assert (not b!1632594))

(assert (not d!491892))

(assert (not d!491822))

(assert (not d!491830))

(assert (not d!491714))

(assert b_and!115789)

(assert (not b!1632669))

(assert (not b!1632852))

(assert (not d!491790))

(assert (not d!491974))

(assert (not b!1632767))

(assert (not b!1632758))

(assert (not b!1632548))

(assert (not b!1632764))

(assert (not d!491852))

(assert (not d!491784))

(assert (not b!1632498))

(assert (not d!491910))

(assert (not d!491858))

(assert (not b!1632493))

(assert (not d!491850))

(assert (not b!1633165))

(assert (not b!1633131))

(assert (not b!1633117))

(assert (not b!1632895))

(assert (not b!1632587))

(assert (not b!1632785))

(assert (not b!1632918))

(assert (not b!1633065))

(assert (not b!1632469))

(assert (not b!1632946))

(assert (not bm!105551))

(assert (not d!491864))

(assert (not bm!105546))

(assert (not b!1632771))

(assert (not b_next!44789))

(assert (not d!491778))

(assert (not b!1632770))

(assert (not b!1632575))

(assert (not d!491848))

(assert (not b!1632641))

(assert (not b!1633149))

(assert (not b!1632762))

(assert (not d!491770))

(assert (not d!491920))

(assert (not d!491716))

(assert (not b!1633064))

(assert (not b!1632726))

(assert (not b!1632940))

(assert (not d!491786))

(assert (not d!491902))

(assert (not b!1632944))

(assert (not b_next!44799))

(assert (not d!491924))

(assert (not b!1632579))

(assert (not d!491880))

(assert (not d!491890))

(assert (not b!1632909))

(assert (not b!1632844))

(assert (not b!1632596))

(assert (not b!1632769))

(assert (not d!491846))

(assert (not bm!105554))

(assert (not b!1632779))

(assert (not b!1632756))

(assert (not b!1632670))

(assert (not d!491824))

(assert (not b!1632763))

(assert (not tb!93695))

(assert (not d!491782))

(assert (not b!1632786))

(assert (not b!1632463))

(assert (not d!491862))

(assert (not b!1632658))

(assert (not tb!93691))

(assert b_and!115749)

(assert (not b!1632595))

(assert (not b!1632754))

(assert (not b!1632945))

(assert (not b!1633151))

(assert (not b!1632924))

(assert (not b_lambda!51377))

(assert tp_is_empty!7295)

(assert (not b!1633066))

(assert (not d!491796))

(assert (not b!1632576))

(assert (not d!491854))

(assert (not b!1632584))

(assert (not b!1632467))

(assert (not b!1632861))

(assert (not b!1632573))

(assert (not d!491916))

(assert (not b!1632768))

(assert b_and!115753)

(assert (not b!1632737))

(assert (not b!1632789))

(assert (not d!491728))

(assert (not b_next!44785))

(assert (not d!491874))

(assert (not b!1632461))

(assert (not b!1632464))

(assert (not d!491868))

(assert (not b!1632917))

(assert (not b!1632938))

(assert (not b!1633138))

(assert (not d!491776))

(assert (not d!491898))

(assert (not b!1632937))

(assert (not b!1632757))

(assert (not d!491912))

(assert (not b_lambda!51379))

(assert (not b_next!44783))

(assert b_and!115781)

(assert (not b!1632659))

(assert (not b!1633119))

(assert (not b!1633070))

(assert (not d!491794))

(assert (not b!1632891))

(assert (not b!1633150))

(assert (not b!1632846))

(assert (not d!491726))

(assert (not b!1633118))

(assert (not d!491720))

(assert (not b!1632729))

(assert (not b!1632462))

(assert (not b!1632943))

(assert (not b!1633132))

(assert (not b!1632911))

(assert (not b!1633154))

(assert b_and!115785)

(assert b_and!115787)

(assert (not b!1632941))

(assert (not bm!105549))

(assert (not b!1632466))

(assert (not b!1632910))

(assert (not b!1632889))

(assert (not b_lambda!51375))

(assert (not b!1632727))

(assert (not d!491884))

(assert (not b!1632860))

(assert (not d!491842))

(assert (not d!491856))

(assert (not b!1632773))

(assert (not b!1632761))

(assert (not b!1632640))

(assert (not b_next!44801))

(assert (not b!1632557))

(assert (not d!491926))

(assert (not b!1632759))

(assert (not b!1632653))

(assert (not b!1632721))

(assert (not b!1632778))

(assert (not d!491904))

(assert (not b!1632845))

(assert (not b!1633133))

(assert (not d!491844))

(assert (not d!491944))

(assert (not d!491730))

(assert b_and!115791)

(assert (not b_next!44805))

(assert (not b!1632574))

(assert (not b!1633166))

(check-sat)

(pop 1)

(push 1)

(assert b_and!115783)

(assert (not b_next!44803))

(assert (not b_next!44787))

(assert b_and!115789)

(assert (not b_next!44789))

(assert (not b_next!44799))

(assert b_and!115749)

(assert b_and!115753)

(assert (not b_next!44785))

(assert (not b_next!44801))

(assert (not b_next!44783))

(assert b_and!115781)

(assert b_and!115785)

(assert b_and!115787)

(assert b_and!115791)

(assert (not b_next!44805))

(check-sat)

(pop 1)

