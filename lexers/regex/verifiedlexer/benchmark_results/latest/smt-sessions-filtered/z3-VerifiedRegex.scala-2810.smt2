; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!156710 () Bool)

(assert start!156710)

(declare-fun b!1639560 () Bool)

(declare-fun b_free!44359 () Bool)

(declare-fun b_next!45063 () Bool)

(assert (=> b!1639560 (= b_free!44359 (not b_next!45063))))

(declare-fun tp!475046 () Bool)

(declare-fun b_and!116173 () Bool)

(assert (=> b!1639560 (= tp!475046 b_and!116173)))

(declare-fun b_free!44361 () Bool)

(declare-fun b_next!45065 () Bool)

(assert (=> b!1639560 (= b_free!44361 (not b_next!45065))))

(declare-fun tp!475042 () Bool)

(declare-fun b_and!116175 () Bool)

(assert (=> b!1639560 (= tp!475042 b_and!116175)))

(declare-fun b!1639559 () Bool)

(declare-fun b_free!44363 () Bool)

(declare-fun b_next!45067 () Bool)

(assert (=> b!1639559 (= b_free!44363 (not b_next!45067))))

(declare-fun tp!475045 () Bool)

(declare-fun b_and!116177 () Bool)

(assert (=> b!1639559 (= tp!475045 b_and!116177)))

(declare-fun b_free!44365 () Bool)

(declare-fun b_next!45069 () Bool)

(assert (=> b!1639559 (= b_free!44365 (not b_next!45069))))

(declare-fun tp!475040 () Bool)

(declare-fun b_and!116179 () Bool)

(assert (=> b!1639559 (= tp!475040 b_and!116179)))

(declare-fun b!1639533 () Bool)

(declare-fun res!734651 () Bool)

(declare-fun e!1051436 () Bool)

(assert (=> b!1639533 (=> res!734651 e!1051436)))

(declare-datatypes ((List!18121 0))(
  ( (Nil!18051) (Cons!18051 (h!23452 (_ BitVec 16)) (t!149914 List!18121)) )
))
(declare-datatypes ((TokenValue!3271 0))(
  ( (FloatLiteralValue!6542 (text!23342 List!18121)) (TokenValueExt!3270 (__x!11844 Int)) (Broken!16355 (value!100305 List!18121)) (Object!3340) (End!3271) (Def!3271) (Underscore!3271) (Match!3271) (Else!3271) (Error!3271) (Case!3271) (If!3271) (Extends!3271) (Abstract!3271) (Class!3271) (Val!3271) (DelimiterValue!6542 (del!3331 List!18121)) (KeywordValue!3277 (value!100306 List!18121)) (CommentValue!6542 (value!100307 List!18121)) (WhitespaceValue!6542 (value!100308 List!18121)) (IndentationValue!3271 (value!100309 List!18121)) (String!20686) (Int32!3271) (Broken!16356 (value!100310 List!18121)) (Boolean!3272) (Unit!29651) (OperatorValue!3274 (op!3331 List!18121)) (IdentifierValue!6542 (value!100311 List!18121)) (IdentifierValue!6543 (value!100312 List!18121)) (WhitespaceValue!6543 (value!100313 List!18121)) (True!6542) (False!6542) (Broken!16357 (value!100314 List!18121)) (Broken!16358 (value!100315 List!18121)) (True!6543) (RightBrace!3271) (RightBracket!3271) (Colon!3271) (Null!3271) (Comma!3271) (LeftBracket!3271) (False!6543) (LeftBrace!3271) (ImaginaryLiteralValue!3271 (text!23343 List!18121)) (StringLiteralValue!9813 (value!100316 List!18121)) (EOFValue!3271 (value!100317 List!18121)) (IdentValue!3271 (value!100318 List!18121)) (DelimiterValue!6543 (value!100319 List!18121)) (DedentValue!3271 (value!100320 List!18121)) (NewLineValue!3271 (value!100321 List!18121)) (IntegerValue!9813 (value!100322 (_ BitVec 32)) (text!23344 List!18121)) (IntegerValue!9814 (value!100323 Int) (text!23345 List!18121)) (Times!3271) (Or!3271) (Equal!3271) (Minus!3271) (Broken!16359 (value!100324 List!18121)) (And!3271) (Div!3271) (LessEqual!3271) (Mod!3271) (Concat!7780) (Not!3271) (Plus!3271) (SpaceValue!3271 (value!100325 List!18121)) (IntegerValue!9815 (value!100326 Int) (text!23346 List!18121)) (StringLiteralValue!9814 (text!23347 List!18121)) (FloatLiteralValue!6543 (text!23348 List!18121)) (BytesLiteralValue!3271 (value!100327 List!18121)) (CommentValue!6543 (value!100328 List!18121)) (StringLiteralValue!9815 (value!100329 List!18121)) (ErrorTokenValue!3271 (msg!3332 List!18121)) )
))
(declare-datatypes ((C!9192 0))(
  ( (C!9193 (val!5192 Int)) )
))
(declare-datatypes ((List!18122 0))(
  ( (Nil!18052) (Cons!18052 (h!23453 C!9192) (t!149915 List!18122)) )
))
(declare-datatypes ((IArray!12025 0))(
  ( (IArray!12026 (innerList!6070 List!18122)) )
))
(declare-datatypes ((Conc!6010 0))(
  ( (Node!6010 (left!14474 Conc!6010) (right!14804 Conc!6010) (csize!12250 Int) (cheight!6221 Int)) (Leaf!8821 (xs!8846 IArray!12025) (csize!12251 Int)) (Empty!6010) )
))
(declare-datatypes ((BalanceConc!11964 0))(
  ( (BalanceConc!11965 (c!266691 Conc!6010)) )
))
(declare-datatypes ((Regex!4509 0))(
  ( (ElementMatch!4509 (c!266692 C!9192)) (Concat!7781 (regOne!9530 Regex!4509) (regTwo!9530 Regex!4509)) (EmptyExpr!4509) (Star!4509 (reg!4838 Regex!4509)) (EmptyLang!4509) (Union!4509 (regOne!9531 Regex!4509) (regTwo!9531 Regex!4509)) )
))
(declare-datatypes ((String!20687 0))(
  ( (String!20688 (value!100330 String)) )
))
(declare-datatypes ((TokenValueInjection!6202 0))(
  ( (TokenValueInjection!6203 (toValue!4612 Int) (toChars!4471 Int)) )
))
(declare-datatypes ((Rule!6162 0))(
  ( (Rule!6163 (regex!3181 Regex!4509) (tag!3461 String!20687) (isSeparator!3181 Bool) (transformation!3181 TokenValueInjection!6202)) )
))
(declare-datatypes ((List!18123 0))(
  ( (Nil!18053) (Cons!18053 (h!23454 Rule!6162) (t!149916 List!18123)) )
))
(declare-fun rules!1846 () List!18123)

(declare-datatypes ((LexerInterface!2810 0))(
  ( (LexerInterfaceExt!2807 (__x!11845 Int)) (Lexer!2808) )
))
(declare-fun thiss!17113 () LexerInterface!2810)

(declare-datatypes ((Token!5928 0))(
  ( (Token!5929 (value!100331 TokenValue!3271) (rule!5029 Rule!6162) (size!14378 Int) (originalCharacters!3995 List!18122)) )
))
(declare-datatypes ((List!18124 0))(
  ( (Nil!18054) (Cons!18054 (h!23455 Token!5928) (t!149917 List!18124)) )
))
(declare-fun tokens!457 () List!18124)

(declare-fun rulesProduceIndividualToken!1462 (LexerInterface!2810 List!18123 Token!5928) Bool)

(assert (=> b!1639533 (= res!734651 (not (rulesProduceIndividualToken!1462 thiss!17113 rules!1846 (h!23455 tokens!457))))))

(declare-fun b!1639534 () Bool)

(declare-fun e!1051422 () Bool)

(declare-fun lt!602154 () List!18122)

(declare-fun lt!602178 () List!18122)

(declare-fun head!3558 (List!18122) C!9192)

(assert (=> b!1639534 (= e!1051422 (= lt!602154 (Cons!18052 (head!3558 lt!602178) Nil!18052)))))

(declare-fun b!1639535 () Bool)

(declare-fun res!734645 () Bool)

(declare-fun e!1051428 () Bool)

(assert (=> b!1639535 (=> (not res!734645) (not e!1051428))))

(declare-fun isEmpty!11085 (List!18123) Bool)

(assert (=> b!1639535 (= res!734645 (not (isEmpty!11085 rules!1846)))))

(declare-fun e!1051420 () Bool)

(declare-fun e!1051431 () Bool)

(declare-fun b!1639536 () Bool)

(declare-fun tp!475041 () Bool)

(declare-fun inv!23396 (Token!5928) Bool)

(assert (=> b!1639536 (= e!1051420 (and (inv!23396 (h!23455 tokens!457)) e!1051431 tp!475041))))

(declare-fun b!1639538 () Bool)

(declare-fun e!1051438 () Bool)

(declare-fun tp!475047 () Bool)

(declare-fun inv!21 (TokenValue!3271) Bool)

(assert (=> b!1639538 (= e!1051431 (and (inv!21 (value!100331 (h!23455 tokens!457))) e!1051438 tp!475047))))

(declare-fun b!1639539 () Bool)

(declare-fun e!1051427 () Bool)

(declare-fun e!1051437 () Bool)

(declare-fun tp!475048 () Bool)

(assert (=> b!1639539 (= e!1051427 (and e!1051437 tp!475048))))

(declare-fun b!1639540 () Bool)

(declare-fun e!1051425 () Bool)

(declare-fun e!1051443 () Bool)

(assert (=> b!1639540 (= e!1051425 e!1051443)))

(declare-fun res!734653 () Bool)

(assert (=> b!1639540 (=> res!734653 e!1051443)))

(declare-datatypes ((tuple2!17690 0))(
  ( (tuple2!17691 (_1!10247 Token!5928) (_2!10247 BalanceConc!11964)) )
))
(declare-datatypes ((Option!3405 0))(
  ( (None!3404) (Some!3404 (v!24505 tuple2!17690)) )
))
(declare-fun isDefined!2772 (Option!3405) Bool)

(declare-fun maxPrefixZipperSequence!705 (LexerInterface!2810 List!18123 BalanceConc!11964) Option!3405)

(declare-fun seqFromList!2111 (List!18122) BalanceConc!11964)

(assert (=> b!1639540 (= res!734653 (not (isDefined!2772 (maxPrefixZipperSequence!705 thiss!17113 rules!1846 (seqFromList!2111 (originalCharacters!3995 (h!23455 tokens!457)))))))))

(declare-fun lt!602171 () List!18122)

(assert (=> b!1639540 (= lt!602154 lt!602171)))

(declare-fun lt!602152 () BalanceConc!11964)

(declare-fun head!3559 (BalanceConc!11964) C!9192)

(assert (=> b!1639540 (= lt!602171 (Cons!18052 (head!3559 lt!602152) Nil!18052))))

(assert (=> b!1639540 e!1051422))

(declare-fun res!734640 () Bool)

(assert (=> b!1639540 (=> (not res!734640) (not e!1051422))))

(declare-fun lt!602159 () List!18122)

(assert (=> b!1639540 (= res!734640 (= lt!602159 (originalCharacters!3995 (h!23455 tokens!457))))))

(declare-fun b!1639541 () Bool)

(declare-fun e!1051423 () Bool)

(assert (=> b!1639541 (= e!1051428 e!1051423)))

(declare-fun res!734641 () Bool)

(assert (=> b!1639541 (=> (not res!734641) (not e!1051423))))

(declare-fun lt!602158 () List!18122)

(declare-fun lt!602175 () List!18122)

(assert (=> b!1639541 (= res!734641 (= lt!602158 lt!602175))))

(declare-fun ++!4845 (List!18122 List!18122) List!18122)

(assert (=> b!1639541 (= lt!602175 (++!4845 lt!602159 lt!602178))))

(declare-fun lt!602166 () BalanceConc!11964)

(declare-fun list!7123 (BalanceConc!11964) List!18122)

(assert (=> b!1639541 (= lt!602158 (list!7123 lt!602166))))

(assert (=> b!1639541 (= lt!602178 (list!7123 lt!602152))))

(declare-fun lt!602160 () BalanceConc!11964)

(assert (=> b!1639541 (= lt!602159 (list!7123 lt!602160))))

(declare-fun charsOf!1830 (Token!5928) BalanceConc!11964)

(assert (=> b!1639541 (= lt!602160 (charsOf!1830 (h!23455 tokens!457)))))

(declare-datatypes ((IArray!12027 0))(
  ( (IArray!12028 (innerList!6071 List!18124)) )
))
(declare-datatypes ((Conc!6011 0))(
  ( (Node!6011 (left!14475 Conc!6011) (right!14805 Conc!6011) (csize!12252 Int) (cheight!6222 Int)) (Leaf!8822 (xs!8847 IArray!12027) (csize!12253 Int)) (Empty!6011) )
))
(declare-datatypes ((BalanceConc!11966 0))(
  ( (BalanceConc!11967 (c!266693 Conc!6011)) )
))
(declare-datatypes ((tuple2!17692 0))(
  ( (tuple2!17693 (_1!10248 BalanceConc!11966) (_2!10248 BalanceConc!11964)) )
))
(declare-fun lt!602147 () tuple2!17692)

(declare-fun lex!1294 (LexerInterface!2810 List!18123 BalanceConc!11964) tuple2!17692)

(assert (=> b!1639541 (= lt!602147 (lex!1294 thiss!17113 rules!1846 lt!602152))))

(declare-fun lt!602168 () BalanceConc!11966)

(declare-fun print!1341 (LexerInterface!2810 BalanceConc!11966) BalanceConc!11964)

(assert (=> b!1639541 (= lt!602152 (print!1341 thiss!17113 lt!602168))))

(declare-fun seqFromList!2112 (List!18124) BalanceConc!11966)

(assert (=> b!1639541 (= lt!602168 (seqFromList!2112 (t!149917 tokens!457)))))

(assert (=> b!1639541 (= lt!602166 (print!1341 thiss!17113 (seqFromList!2112 tokens!457)))))

(declare-fun b!1639542 () Bool)

(declare-fun e!1051439 () Bool)

(assert (=> b!1639542 (= e!1051436 e!1051439)))

(declare-fun res!734634 () Bool)

(assert (=> b!1639542 (=> res!734634 e!1051439)))

(declare-datatypes ((tuple2!17694 0))(
  ( (tuple2!17695 (_1!10249 Token!5928) (_2!10249 List!18122)) )
))
(declare-datatypes ((Option!3406 0))(
  ( (None!3405) (Some!3405 (v!24506 tuple2!17694)) )
))
(declare-fun lt!602177 () Option!3406)

(declare-fun isDefined!2773 (Option!3406) Bool)

(assert (=> b!1639542 (= res!734634 (not (isDefined!2773 lt!602177)))))

(declare-datatypes ((Unit!29652 0))(
  ( (Unit!29653) )
))
(declare-fun lt!602172 () Unit!29652)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!384 (LexerInterface!2810 List!18123 List!18122 List!18122) Unit!29652)

(assert (=> b!1639542 (= lt!602172 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!384 thiss!17113 rules!1846 lt!602159 lt!602178))))

(declare-fun b!1639543 () Bool)

(declare-fun tp!475044 () Bool)

(declare-fun e!1051430 () Bool)

(declare-fun inv!23393 (String!20687) Bool)

(declare-fun inv!23397 (TokenValueInjection!6202) Bool)

(assert (=> b!1639543 (= e!1051438 (and tp!475044 (inv!23393 (tag!3461 (rule!5029 (h!23455 tokens!457)))) (inv!23397 (transformation!3181 (rule!5029 (h!23455 tokens!457)))) e!1051430))))

(declare-fun b!1639544 () Bool)

(declare-fun res!734643 () Bool)

(assert (=> b!1639544 (=> (not res!734643) (not e!1051422))))

(assert (=> b!1639544 (= res!734643 (= lt!602154 (Cons!18052 (head!3558 (originalCharacters!3995 (h!23455 (t!149917 tokens!457)))) Nil!18052)))))

(declare-fun b!1639545 () Bool)

(declare-fun res!734648 () Bool)

(assert (=> b!1639545 (=> (not res!734648) (not e!1051428))))

(declare-fun rulesInvariant!2479 (LexerInterface!2810 List!18123) Bool)

(assert (=> b!1639545 (= res!734648 (rulesInvariant!2479 thiss!17113 rules!1846))))

(declare-fun b!1639546 () Bool)

(declare-fun e!1051435 () Bool)

(assert (=> b!1639546 (= e!1051423 (not e!1051435))))

(declare-fun res!734652 () Bool)

(assert (=> b!1639546 (=> res!734652 e!1051435)))

(declare-fun lt!602148 () List!18124)

(assert (=> b!1639546 (= res!734652 (not (= lt!602148 (t!149917 tokens!457))))))

(declare-fun list!7124 (BalanceConc!11966) List!18124)

(assert (=> b!1639546 (= lt!602148 (list!7124 (_1!10248 lt!602147)))))

(declare-fun lt!602144 () Unit!29652)

(declare-fun theoremInvertabilityWhenTokenListSeparable!255 (LexerInterface!2810 List!18123 List!18124) Unit!29652)

(assert (=> b!1639546 (= lt!602144 (theoremInvertabilityWhenTokenListSeparable!255 thiss!17113 rules!1846 (t!149917 tokens!457)))))

(declare-fun isPrefix!1441 (List!18122 List!18122) Bool)

(assert (=> b!1639546 (isPrefix!1441 lt!602159 lt!602175)))

(declare-fun lt!602156 () Unit!29652)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!966 (List!18122 List!18122) Unit!29652)

(assert (=> b!1639546 (= lt!602156 (lemmaConcatTwoListThenFirstIsPrefix!966 lt!602159 lt!602178))))

(declare-fun b!1639547 () Bool)

(declare-fun e!1051432 () Bool)

(assert (=> b!1639547 (= e!1051432 e!1051425)))

(declare-fun res!734631 () Bool)

(assert (=> b!1639547 (=> res!734631 e!1051425)))

(declare-fun lt!602153 () Regex!4509)

(declare-fun prefixMatch!444 (Regex!4509 List!18122) Bool)

(assert (=> b!1639547 (= res!734631 (prefixMatch!444 lt!602153 (++!4845 lt!602159 lt!602154)))))

(declare-fun lt!602165 () BalanceConc!11964)

(assert (=> b!1639547 (= lt!602154 (list!7123 lt!602165))))

(declare-fun b!1639548 () Bool)

(declare-fun e!1051421 () Bool)

(assert (=> b!1639548 (= e!1051443 e!1051421)))

(declare-fun res!734642 () Bool)

(assert (=> b!1639548 (=> res!734642 e!1051421)))

(assert (=> b!1639548 (= res!734642 (prefixMatch!444 lt!602153 (++!4845 (originalCharacters!3995 (h!23455 tokens!457)) lt!602171)))))

(declare-fun e!1051429 () Bool)

(assert (=> b!1639548 e!1051429))

(declare-fun res!734635 () Bool)

(assert (=> b!1639548 (=> (not res!734635) (not e!1051429))))

(declare-fun lt!602173 () tuple2!17694)

(assert (=> b!1639548 (= res!734635 (= (_1!10249 lt!602173) (h!23455 tokens!457)))))

(declare-fun lt!602167 () Option!3406)

(declare-fun get!5247 (Option!3406) tuple2!17694)

(assert (=> b!1639548 (= lt!602173 (get!5247 lt!602167))))

(assert (=> b!1639548 (isDefined!2773 lt!602167)))

(declare-fun maxPrefix!1374 (LexerInterface!2810 List!18123 List!18122) Option!3406)

(assert (=> b!1639548 (= lt!602167 (maxPrefix!1374 thiss!17113 rules!1846 lt!602159))))

(assert (=> b!1639548 (isDefined!2773 (maxPrefix!1374 thiss!17113 rules!1846 (originalCharacters!3995 (h!23455 tokens!457))))))

(declare-fun b!1639549 () Bool)

(declare-fun res!734630 () Bool)

(assert (=> b!1639549 (=> (not res!734630) (not e!1051429))))

(declare-fun isEmpty!11086 (List!18122) Bool)

(assert (=> b!1639549 (= res!734630 (isEmpty!11086 (_2!10249 lt!602173)))))

(declare-fun b!1639550 () Bool)

(declare-fun res!734646 () Bool)

(assert (=> b!1639550 (=> (not res!734646) (not e!1051428))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!503 (LexerInterface!2810 List!18124 List!18123) Bool)

(assert (=> b!1639550 (= res!734646 (tokensListTwoByTwoPredicateSeparableList!503 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1639551 () Bool)

(declare-fun e!1051424 () Bool)

(assert (=> b!1639551 (= e!1051424 true)))

(declare-fun lt!602176 () List!18124)

(declare-fun lt!602161 () BalanceConc!11966)

(assert (=> b!1639551 (= lt!602176 (list!7124 lt!602161))))

(declare-fun lt!602164 () List!18124)

(declare-fun lt!602146 () tuple2!17692)

(assert (=> b!1639551 (= lt!602164 (list!7124 (_1!10248 lt!602146)))))

(declare-fun prepend!727 (BalanceConc!11966 Token!5928) BalanceConc!11966)

(assert (=> b!1639551 (= lt!602161 (prepend!727 (_1!10248 lt!602147) (h!23455 tokens!457)))))

(assert (=> b!1639551 (= lt!602146 (lex!1294 thiss!17113 rules!1846 lt!602166))))

(declare-fun b!1639552 () Bool)

(declare-fun res!734644 () Bool)

(assert (=> b!1639552 (=> (not res!734644) (not e!1051428))))

(get-info :version)

(assert (=> b!1639552 (= res!734644 (and (not ((_ is Nil!18054) tokens!457)) (not ((_ is Nil!18054) (t!149917 tokens!457)))))))

(declare-fun b!1639553 () Bool)

(declare-fun res!734636 () Bool)

(declare-fun e!1051442 () Bool)

(assert (=> b!1639553 (=> res!734636 e!1051442)))

(declare-fun maxPrefixZipper!338 (LexerInterface!2810 List!18123 List!18122) Option!3406)

(assert (=> b!1639553 (= res!734636 (not (= (h!23455 tokens!457) (_1!10249 (get!5247 (maxPrefixZipper!338 thiss!17113 rules!1846 lt!602158))))))))

(declare-fun b!1639554 () Bool)

(assert (=> b!1639554 (= e!1051439 e!1051432)))

(declare-fun res!734654 () Bool)

(assert (=> b!1639554 (=> res!734654 e!1051432)))

(declare-fun prefixMatchZipperSequence!589 (Regex!4509 BalanceConc!11964) Bool)

(declare-fun ++!4846 (BalanceConc!11964 BalanceConc!11964) BalanceConc!11964)

(assert (=> b!1639554 (= res!734654 (prefixMatchZipperSequence!589 lt!602153 (++!4846 lt!602160 lt!602165)))))

(declare-fun singletonSeq!1640 (C!9192) BalanceConc!11964)

(declare-fun apply!4696 (BalanceConc!11964 Int) C!9192)

(assert (=> b!1639554 (= lt!602165 (singletonSeq!1640 (apply!4696 (charsOf!1830 (h!23455 (t!149917 tokens!457))) 0)))))

(declare-fun rulesRegex!571 (LexerInterface!2810 List!18123) Regex!4509)

(assert (=> b!1639554 (= lt!602153 (rulesRegex!571 thiss!17113 rules!1846))))

(declare-fun b!1639555 () Bool)

(declare-fun e!1051444 () Bool)

(assert (=> b!1639555 (= e!1051444 e!1051436)))

(declare-fun res!734629 () Bool)

(assert (=> b!1639555 (=> res!734629 e!1051436)))

(declare-fun lt!602174 () List!18122)

(declare-fun lt!602149 () List!18122)

(assert (=> b!1639555 (= res!734629 (or (not (= lt!602149 lt!602174)) (not (= lt!602174 lt!602159)) (not (= lt!602149 lt!602159))))))

(declare-fun printList!925 (LexerInterface!2810 List!18124) List!18122)

(assert (=> b!1639555 (= lt!602174 (printList!925 thiss!17113 (Cons!18054 (h!23455 tokens!457) Nil!18054)))))

(declare-fun lt!602162 () BalanceConc!11964)

(assert (=> b!1639555 (= lt!602149 (list!7123 lt!602162))))

(declare-fun lt!602151 () BalanceConc!11966)

(declare-fun printTailRec!863 (LexerInterface!2810 BalanceConc!11966 Int BalanceConc!11964) BalanceConc!11964)

(assert (=> b!1639555 (= lt!602162 (printTailRec!863 thiss!17113 lt!602151 0 (BalanceConc!11965 Empty!6010)))))

(assert (=> b!1639555 (= lt!602162 (print!1341 thiss!17113 lt!602151))))

(declare-fun singletonSeq!1641 (Token!5928) BalanceConc!11966)

(assert (=> b!1639555 (= lt!602151 (singletonSeq!1641 (h!23455 tokens!457)))))

(assert (=> b!1639555 (= lt!602177 (maxPrefix!1374 thiss!17113 rules!1846 lt!602158))))

(declare-fun b!1639556 () Bool)

(declare-fun res!734637 () Bool)

(assert (=> b!1639556 (=> res!734637 e!1051421)))

(assert (=> b!1639556 (= res!734637 (prefixMatch!444 lt!602153 (++!4845 lt!602159 lt!602171)))))

(declare-fun b!1639537 () Bool)

(declare-fun e!1051426 () Bool)

(assert (=> b!1639537 (= e!1051442 e!1051426)))

(declare-fun res!734639 () Bool)

(assert (=> b!1639537 (=> res!734639 e!1051426)))

(declare-fun lt!602163 () tuple2!17690)

(assert (=> b!1639537 (= res!734639 (not (= (h!23455 tokens!457) (_1!10247 lt!602163))))))

(declare-fun get!5248 (Option!3405) tuple2!17690)

(assert (=> b!1639537 (= lt!602163 (get!5248 (maxPrefixZipperSequence!705 thiss!17113 rules!1846 lt!602166)))))

(declare-fun res!734649 () Bool)

(assert (=> start!156710 (=> (not res!734649) (not e!1051428))))

(assert (=> start!156710 (= res!734649 ((_ is Lexer!2808) thiss!17113))))

(assert (=> start!156710 e!1051428))

(assert (=> start!156710 true))

(assert (=> start!156710 e!1051427))

(assert (=> start!156710 e!1051420))

(declare-fun b!1639557 () Bool)

(assert (=> b!1639557 (= e!1051426 e!1051424)))

(declare-fun res!734632 () Bool)

(assert (=> b!1639557 (=> res!734632 e!1051424)))

(declare-fun lt!602145 () tuple2!17694)

(declare-fun lt!602155 () List!18122)

(assert (=> b!1639557 (= res!734632 (or (not (= (_2!10249 lt!602145) lt!602155)) (not (= lt!602178 lt!602155))))))

(assert (=> b!1639557 (= lt!602155 (list!7123 (_2!10247 lt!602163)))))

(declare-fun b!1639558 () Bool)

(assert (=> b!1639558 (= e!1051435 e!1051444)))

(declare-fun res!734650 () Bool)

(assert (=> b!1639558 (=> res!734650 e!1051444)))

(declare-fun lt!602150 () List!18124)

(declare-fun lt!602170 () List!18124)

(assert (=> b!1639558 (= res!734650 (or (not (= lt!602148 lt!602150)) (not (= lt!602150 lt!602170))))))

(assert (=> b!1639558 (= lt!602150 (list!7124 lt!602168))))

(assert (=> b!1639558 (= lt!602148 lt!602170)))

(assert (=> b!1639558 (= lt!602170 (list!7124 (prepend!727 (seqFromList!2112 (t!149917 (t!149917 tokens!457))) (h!23455 (t!149917 tokens!457)))))))

(declare-fun lt!602157 () Unit!29652)

(declare-fun seqFromListBHdTlConstructive!258 (Token!5928 List!18124 BalanceConc!11966) Unit!29652)

(assert (=> b!1639558 (= lt!602157 (seqFromListBHdTlConstructive!258 (h!23455 (t!149917 tokens!457)) (t!149917 (t!149917 tokens!457)) (_1!10248 lt!602147)))))

(declare-fun e!1051433 () Bool)

(assert (=> b!1639559 (= e!1051433 (and tp!475045 tp!475040))))

(assert (=> b!1639560 (= e!1051430 (and tp!475046 tp!475042))))

(declare-fun b!1639561 () Bool)

(assert (=> b!1639561 (= e!1051421 e!1051442)))

(declare-fun res!734628 () Bool)

(assert (=> b!1639561 (=> res!734628 e!1051442)))

(assert (=> b!1639561 (= res!734628 (or (not (= (_1!10249 lt!602145) (h!23455 tokens!457))) (not (= (_2!10249 lt!602145) lt!602178))))))

(assert (=> b!1639561 (= lt!602145 (get!5247 lt!602177))))

(declare-fun lt!602169 () Unit!29652)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!146 (LexerInterface!2810 List!18123 Token!5928 Rule!6162 List!18122) Unit!29652)

(assert (=> b!1639561 (= lt!602169 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!146 thiss!17113 rules!1846 (h!23455 tokens!457) (rule!5029 (h!23455 tokens!457)) lt!602178))))

(declare-fun tp!475043 () Bool)

(declare-fun b!1639562 () Bool)

(assert (=> b!1639562 (= e!1051437 (and tp!475043 (inv!23393 (tag!3461 (h!23454 rules!1846))) (inv!23397 (transformation!3181 (h!23454 rules!1846))) e!1051433))))

(declare-fun b!1639563 () Bool)

(declare-fun res!734638 () Bool)

(assert (=> b!1639563 (=> res!734638 e!1051436)))

(declare-fun isEmpty!11087 (BalanceConc!11966) Bool)

(assert (=> b!1639563 (= res!734638 (isEmpty!11087 (_1!10248 (lex!1294 thiss!17113 rules!1846 (seqFromList!2111 lt!602159)))))))

(declare-fun b!1639564 () Bool)

(declare-fun matchR!2008 (Regex!4509 List!18122) Bool)

(assert (=> b!1639564 (= e!1051429 (matchR!2008 (regex!3181 (rule!5029 (h!23455 tokens!457))) lt!602159))))

(declare-fun b!1639565 () Bool)

(declare-fun res!734633 () Bool)

(assert (=> b!1639565 (=> res!734633 e!1051444)))

(declare-fun separableTokensPredicate!752 (LexerInterface!2810 Token!5928 Token!5928 List!18123) Bool)

(assert (=> b!1639565 (= res!734633 (not (separableTokensPredicate!752 thiss!17113 (h!23455 tokens!457) (h!23455 (t!149917 tokens!457)) rules!1846)))))

(declare-fun b!1639566 () Bool)

(declare-fun res!734647 () Bool)

(assert (=> b!1639566 (=> (not res!734647) (not e!1051428))))

(declare-fun rulesProduceEachTokenIndividuallyList!1012 (LexerInterface!2810 List!18123 List!18124) Bool)

(assert (=> b!1639566 (= res!734647 (rulesProduceEachTokenIndividuallyList!1012 thiss!17113 rules!1846 tokens!457))))

(assert (= (and start!156710 res!734649) b!1639535))

(assert (= (and b!1639535 res!734645) b!1639545))

(assert (= (and b!1639545 res!734648) b!1639566))

(assert (= (and b!1639566 res!734647) b!1639550))

(assert (= (and b!1639550 res!734646) b!1639552))

(assert (= (and b!1639552 res!734644) b!1639541))

(assert (= (and b!1639541 res!734641) b!1639546))

(assert (= (and b!1639546 (not res!734652)) b!1639558))

(assert (= (and b!1639558 (not res!734650)) b!1639565))

(assert (= (and b!1639565 (not res!734633)) b!1639555))

(assert (= (and b!1639555 (not res!734629)) b!1639533))

(assert (= (and b!1639533 (not res!734651)) b!1639563))

(assert (= (and b!1639563 (not res!734638)) b!1639542))

(assert (= (and b!1639542 (not res!734634)) b!1639554))

(assert (= (and b!1639554 (not res!734654)) b!1639547))

(assert (= (and b!1639547 (not res!734631)) b!1639540))

(assert (= (and b!1639540 res!734640) b!1639544))

(assert (= (and b!1639544 res!734643) b!1639534))

(assert (= (and b!1639540 (not res!734653)) b!1639548))

(assert (= (and b!1639548 res!734635) b!1639549))

(assert (= (and b!1639549 res!734630) b!1639564))

(assert (= (and b!1639548 (not res!734642)) b!1639556))

(assert (= (and b!1639556 (not res!734637)) b!1639561))

(assert (= (and b!1639561 (not res!734628)) b!1639553))

(assert (= (and b!1639553 (not res!734636)) b!1639537))

(assert (= (and b!1639537 (not res!734639)) b!1639557))

(assert (= (and b!1639557 (not res!734632)) b!1639551))

(assert (= b!1639562 b!1639559))

(assert (= b!1639539 b!1639562))

(assert (= (and start!156710 ((_ is Cons!18053) rules!1846)) b!1639539))

(assert (= b!1639543 b!1639560))

(assert (= b!1639538 b!1639543))

(assert (= b!1639536 b!1639538))

(assert (= (and start!156710 ((_ is Cons!18054) tokens!457)) b!1639536))

(declare-fun m!1979255 () Bool)

(assert (=> b!1639545 m!1979255))

(declare-fun m!1979257 () Bool)

(assert (=> b!1639549 m!1979257))

(declare-fun m!1979259 () Bool)

(assert (=> b!1639542 m!1979259))

(declare-fun m!1979261 () Bool)

(assert (=> b!1639542 m!1979261))

(declare-fun m!1979263 () Bool)

(assert (=> b!1639558 m!1979263))

(declare-fun m!1979265 () Bool)

(assert (=> b!1639558 m!1979265))

(declare-fun m!1979267 () Bool)

(assert (=> b!1639558 m!1979267))

(declare-fun m!1979269 () Bool)

(assert (=> b!1639558 m!1979269))

(declare-fun m!1979271 () Bool)

(assert (=> b!1639558 m!1979271))

(assert (=> b!1639558 m!1979267))

(assert (=> b!1639558 m!1979269))

(declare-fun m!1979273 () Bool)

(assert (=> b!1639562 m!1979273))

(declare-fun m!1979275 () Bool)

(assert (=> b!1639562 m!1979275))

(declare-fun m!1979277 () Bool)

(assert (=> b!1639543 m!1979277))

(declare-fun m!1979279 () Bool)

(assert (=> b!1639543 m!1979279))

(declare-fun m!1979281 () Bool)

(assert (=> b!1639535 m!1979281))

(declare-fun m!1979283 () Bool)

(assert (=> b!1639544 m!1979283))

(declare-fun m!1979285 () Bool)

(assert (=> b!1639533 m!1979285))

(declare-fun m!1979287 () Bool)

(assert (=> b!1639536 m!1979287))

(declare-fun m!1979289 () Bool)

(assert (=> b!1639546 m!1979289))

(declare-fun m!1979291 () Bool)

(assert (=> b!1639546 m!1979291))

(declare-fun m!1979293 () Bool)

(assert (=> b!1639546 m!1979293))

(declare-fun m!1979295 () Bool)

(assert (=> b!1639546 m!1979295))

(declare-fun m!1979297 () Bool)

(assert (=> b!1639555 m!1979297))

(declare-fun m!1979299 () Bool)

(assert (=> b!1639555 m!1979299))

(declare-fun m!1979301 () Bool)

(assert (=> b!1639555 m!1979301))

(declare-fun m!1979303 () Bool)

(assert (=> b!1639555 m!1979303))

(declare-fun m!1979305 () Bool)

(assert (=> b!1639555 m!1979305))

(declare-fun m!1979307 () Bool)

(assert (=> b!1639555 m!1979307))

(declare-fun m!1979309 () Bool)

(assert (=> b!1639541 m!1979309))

(declare-fun m!1979311 () Bool)

(assert (=> b!1639541 m!1979311))

(declare-fun m!1979313 () Bool)

(assert (=> b!1639541 m!1979313))

(declare-fun m!1979315 () Bool)

(assert (=> b!1639541 m!1979315))

(declare-fun m!1979317 () Bool)

(assert (=> b!1639541 m!1979317))

(declare-fun m!1979319 () Bool)

(assert (=> b!1639541 m!1979319))

(declare-fun m!1979321 () Bool)

(assert (=> b!1639541 m!1979321))

(declare-fun m!1979323 () Bool)

(assert (=> b!1639541 m!1979323))

(declare-fun m!1979325 () Bool)

(assert (=> b!1639541 m!1979325))

(declare-fun m!1979327 () Bool)

(assert (=> b!1639541 m!1979327))

(assert (=> b!1639541 m!1979323))

(declare-fun m!1979329 () Bool)

(assert (=> b!1639537 m!1979329))

(assert (=> b!1639537 m!1979329))

(declare-fun m!1979331 () Bool)

(assert (=> b!1639537 m!1979331))

(declare-fun m!1979333 () Bool)

(assert (=> b!1639557 m!1979333))

(declare-fun m!1979335 () Bool)

(assert (=> b!1639548 m!1979335))

(declare-fun m!1979337 () Bool)

(assert (=> b!1639548 m!1979337))

(declare-fun m!1979339 () Bool)

(assert (=> b!1639548 m!1979339))

(declare-fun m!1979341 () Bool)

(assert (=> b!1639548 m!1979341))

(declare-fun m!1979343 () Bool)

(assert (=> b!1639548 m!1979343))

(assert (=> b!1639548 m!1979341))

(declare-fun m!1979345 () Bool)

(assert (=> b!1639548 m!1979345))

(assert (=> b!1639548 m!1979337))

(declare-fun m!1979347 () Bool)

(assert (=> b!1639548 m!1979347))

(declare-fun m!1979349 () Bool)

(assert (=> b!1639547 m!1979349))

(assert (=> b!1639547 m!1979349))

(declare-fun m!1979351 () Bool)

(assert (=> b!1639547 m!1979351))

(declare-fun m!1979353 () Bool)

(assert (=> b!1639547 m!1979353))

(declare-fun m!1979355 () Bool)

(assert (=> b!1639565 m!1979355))

(declare-fun m!1979357 () Bool)

(assert (=> b!1639551 m!1979357))

(declare-fun m!1979359 () Bool)

(assert (=> b!1639551 m!1979359))

(declare-fun m!1979361 () Bool)

(assert (=> b!1639551 m!1979361))

(declare-fun m!1979363 () Bool)

(assert (=> b!1639551 m!1979363))

(declare-fun m!1979365 () Bool)

(assert (=> b!1639566 m!1979365))

(declare-fun m!1979367 () Bool)

(assert (=> b!1639550 m!1979367))

(declare-fun m!1979369 () Bool)

(assert (=> b!1639553 m!1979369))

(assert (=> b!1639553 m!1979369))

(declare-fun m!1979371 () Bool)

(assert (=> b!1639553 m!1979371))

(declare-fun m!1979373 () Bool)

(assert (=> b!1639563 m!1979373))

(assert (=> b!1639563 m!1979373))

(declare-fun m!1979375 () Bool)

(assert (=> b!1639563 m!1979375))

(declare-fun m!1979377 () Bool)

(assert (=> b!1639563 m!1979377))

(declare-fun m!1979379 () Bool)

(assert (=> b!1639561 m!1979379))

(declare-fun m!1979381 () Bool)

(assert (=> b!1639561 m!1979381))

(declare-fun m!1979383 () Bool)

(assert (=> b!1639564 m!1979383))

(declare-fun m!1979385 () Bool)

(assert (=> b!1639556 m!1979385))

(assert (=> b!1639556 m!1979385))

(declare-fun m!1979387 () Bool)

(assert (=> b!1639556 m!1979387))

(declare-fun m!1979389 () Bool)

(assert (=> b!1639554 m!1979389))

(declare-fun m!1979391 () Bool)

(assert (=> b!1639554 m!1979391))

(declare-fun m!1979393 () Bool)

(assert (=> b!1639554 m!1979393))

(declare-fun m!1979395 () Bool)

(assert (=> b!1639554 m!1979395))

(declare-fun m!1979397 () Bool)

(assert (=> b!1639554 m!1979397))

(assert (=> b!1639554 m!1979395))

(declare-fun m!1979399 () Bool)

(assert (=> b!1639554 m!1979399))

(assert (=> b!1639554 m!1979391))

(assert (=> b!1639554 m!1979399))

(declare-fun m!1979401 () Bool)

(assert (=> b!1639534 m!1979401))

(declare-fun m!1979403 () Bool)

(assert (=> b!1639540 m!1979403))

(assert (=> b!1639540 m!1979403))

(declare-fun m!1979405 () Bool)

(assert (=> b!1639540 m!1979405))

(assert (=> b!1639540 m!1979405))

(declare-fun m!1979407 () Bool)

(assert (=> b!1639540 m!1979407))

(declare-fun m!1979409 () Bool)

(assert (=> b!1639540 m!1979409))

(declare-fun m!1979411 () Bool)

(assert (=> b!1639538 m!1979411))

(check-sat (not b!1639554) (not b!1639557) (not b!1639544) (not b!1639539) b_and!116173 (not b!1639541) (not b!1639546) (not b_next!45067) (not b!1639537) (not b!1639563) (not b_next!45063) b_and!116177 (not b!1639555) (not b_next!45065) (not b!1639545) b_and!116175 (not b!1639550) (not b!1639547) (not b!1639534) (not b_next!45069) (not b!1639564) (not b!1639553) (not b!1639536) (not b!1639538) (not b!1639566) (not b!1639533) (not b!1639542) (not b!1639543) (not b!1639561) (not b!1639535) (not b!1639551) (not b!1639548) b_and!116179 (not b!1639565) (not b!1639556) (not b!1639562) (not b!1639549) (not b!1639558) (not b!1639540))
(check-sat b_and!116175 (not b_next!45069) b_and!116173 (not b_next!45067) b_and!116179 (not b_next!45063) b_and!116177 (not b_next!45065))
