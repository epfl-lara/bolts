; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!165534 () Bool)

(assert start!165534)

(declare-fun b!1699833 () Bool)

(declare-fun b_free!45767 () Bool)

(declare-fun b_next!46471 () Bool)

(assert (=> b!1699833 (= b_free!45767 (not b_next!46471))))

(declare-fun tp!485804 () Bool)

(declare-fun b_and!122613 () Bool)

(assert (=> b!1699833 (= tp!485804 b_and!122613)))

(declare-fun b_free!45769 () Bool)

(declare-fun b_next!46473 () Bool)

(assert (=> b!1699833 (= b_free!45769 (not b_next!46473))))

(declare-fun tp!485809 () Bool)

(declare-fun b_and!122615 () Bool)

(assert (=> b!1699833 (= tp!485809 b_and!122615)))

(declare-fun b!1699824 () Bool)

(declare-fun b_free!45771 () Bool)

(declare-fun b_next!46475 () Bool)

(assert (=> b!1699824 (= b_free!45771 (not b_next!46475))))

(declare-fun tp!485805 () Bool)

(declare-fun b_and!122617 () Bool)

(assert (=> b!1699824 (= tp!485805 b_and!122617)))

(declare-fun b_free!45773 () Bool)

(declare-fun b_next!46477 () Bool)

(assert (=> b!1699824 (= b_free!45773 (not b_next!46477))))

(declare-fun tp!485812 () Bool)

(declare-fun b_and!122619 () Bool)

(assert (=> b!1699824 (= tp!485812 b_and!122619)))

(declare-fun b!1699821 () Bool)

(declare-fun res!761843 () Bool)

(declare-fun e!1087266 () Bool)

(assert (=> b!1699821 (=> res!761843 e!1087266)))

(declare-datatypes ((LexerInterface!2888 0))(
  ( (LexerInterfaceExt!2885 (__x!12000 Int)) (Lexer!2886) )
))
(declare-fun thiss!17113 () LexerInterface!2888)

(declare-datatypes ((C!9348 0))(
  ( (C!9349 (val!5270 Int)) )
))
(declare-datatypes ((List!18583 0))(
  ( (Nil!18513) (Cons!18513 (h!23914 C!9348) (t!157358 List!18583)) )
))
(declare-fun lt!648521 () List!18583)

(declare-datatypes ((List!18584 0))(
  ( (Nil!18514) (Cons!18514 (h!23915 (_ BitVec 16)) (t!157359 List!18584)) )
))
(declare-datatypes ((TokenValue!3349 0))(
  ( (FloatLiteralValue!6698 (text!23888 List!18584)) (TokenValueExt!3348 (__x!12001 Int)) (Broken!16745 (value!102528 List!18584)) (Object!3418) (End!3349) (Def!3349) (Underscore!3349) (Match!3349) (Else!3349) (Error!3349) (Case!3349) (If!3349) (Extends!3349) (Abstract!3349) (Class!3349) (Val!3349) (DelimiterValue!6698 (del!3409 List!18584)) (KeywordValue!3355 (value!102529 List!18584)) (CommentValue!6698 (value!102530 List!18584)) (WhitespaceValue!6698 (value!102531 List!18584)) (IndentationValue!3349 (value!102532 List!18584)) (String!21076) (Int32!3349) (Broken!16746 (value!102533 List!18584)) (Boolean!3350) (Unit!32214) (OperatorValue!3352 (op!3409 List!18584)) (IdentifierValue!6698 (value!102534 List!18584)) (IdentifierValue!6699 (value!102535 List!18584)) (WhitespaceValue!6699 (value!102536 List!18584)) (True!6698) (False!6698) (Broken!16747 (value!102537 List!18584)) (Broken!16748 (value!102538 List!18584)) (True!6699) (RightBrace!3349) (RightBracket!3349) (Colon!3349) (Null!3349) (Comma!3349) (LeftBracket!3349) (False!6699) (LeftBrace!3349) (ImaginaryLiteralValue!3349 (text!23889 List!18584)) (StringLiteralValue!10047 (value!102539 List!18584)) (EOFValue!3349 (value!102540 List!18584)) (IdentValue!3349 (value!102541 List!18584)) (DelimiterValue!6699 (value!102542 List!18584)) (DedentValue!3349 (value!102543 List!18584)) (NewLineValue!3349 (value!102544 List!18584)) (IntegerValue!10047 (value!102545 (_ BitVec 32)) (text!23890 List!18584)) (IntegerValue!10048 (value!102546 Int) (text!23891 List!18584)) (Times!3349) (Or!3349) (Equal!3349) (Minus!3349) (Broken!16749 (value!102547 List!18584)) (And!3349) (Div!3349) (LessEqual!3349) (Mod!3349) (Concat!7936) (Not!3349) (Plus!3349) (SpaceValue!3349 (value!102548 List!18584)) (IntegerValue!10049 (value!102549 Int) (text!23892 List!18584)) (StringLiteralValue!10048 (text!23893 List!18584)) (FloatLiteralValue!6699 (text!23894 List!18584)) (BytesLiteralValue!3349 (value!102550 List!18584)) (CommentValue!6699 (value!102551 List!18584)) (StringLiteralValue!10049 (value!102552 List!18584)) (ErrorTokenValue!3349 (msg!3410 List!18584)) )
))
(declare-datatypes ((IArray!12337 0))(
  ( (IArray!12338 (innerList!6226 List!18583)) )
))
(declare-datatypes ((Conc!6166 0))(
  ( (Node!6166 (left!14793 Conc!6166) (right!15123 Conc!6166) (csize!12562 Int) (cheight!6377 Int)) (Leaf!9016 (xs!9038 IArray!12337) (csize!12563 Int)) (Empty!6166) )
))
(declare-datatypes ((BalanceConc!12276 0))(
  ( (BalanceConc!12277 (c!278575 Conc!6166)) )
))
(declare-datatypes ((Regex!4587 0))(
  ( (ElementMatch!4587 (c!278576 C!9348)) (Concat!7937 (regOne!9686 Regex!4587) (regTwo!9686 Regex!4587)) (EmptyExpr!4587) (Star!4587 (reg!4916 Regex!4587)) (EmptyLang!4587) (Union!4587 (regOne!9687 Regex!4587) (regTwo!9687 Regex!4587)) )
))
(declare-datatypes ((String!21077 0))(
  ( (String!21078 (value!102553 String)) )
))
(declare-datatypes ((TokenValueInjection!6358 0))(
  ( (TokenValueInjection!6359 (toValue!4746 Int) (toChars!4605 Int)) )
))
(declare-datatypes ((Rule!6318 0))(
  ( (Rule!6319 (regex!3259 Regex!4587) (tag!3553 String!21077) (isSeparator!3259 Bool) (transformation!3259 TokenValueInjection!6358)) )
))
(declare-datatypes ((List!18585 0))(
  ( (Nil!18515) (Cons!18515 (h!23916 Rule!6318) (t!157360 List!18585)) )
))
(declare-fun rules!1846 () List!18585)

(declare-datatypes ((Token!6084 0))(
  ( (Token!6085 (value!102554 TokenValue!3349) (rule!5181 Rule!6318) (size!14758 Int) (originalCharacters!4073 List!18583)) )
))
(declare-datatypes ((List!18586 0))(
  ( (Nil!18516) (Cons!18516 (h!23917 Token!6084) (t!157361 List!18586)) )
))
(declare-datatypes ((IArray!12339 0))(
  ( (IArray!12340 (innerList!6227 List!18586)) )
))
(declare-datatypes ((Conc!6167 0))(
  ( (Node!6167 (left!14794 Conc!6167) (right!15124 Conc!6167) (csize!12564 Int) (cheight!6378 Int)) (Leaf!9017 (xs!9039 IArray!12339) (csize!12565 Int)) (Empty!6167) )
))
(declare-datatypes ((BalanceConc!12278 0))(
  ( (BalanceConc!12279 (c!278577 Conc!6167)) )
))
(declare-fun isEmpty!11609 (BalanceConc!12278) Bool)

(declare-datatypes ((tuple2!18282 0))(
  ( (tuple2!18283 (_1!10543 BalanceConc!12278) (_2!10543 BalanceConc!12276)) )
))
(declare-fun lex!1372 (LexerInterface!2888 List!18585 BalanceConc!12276) tuple2!18282)

(declare-fun seqFromList!2255 (List!18583) BalanceConc!12276)

(assert (=> b!1699821 (= res!761843 (isEmpty!11609 (_1!10543 (lex!1372 thiss!17113 rules!1846 (seqFromList!2255 lt!648521)))))))

(declare-fun e!1087280 () Bool)

(declare-fun e!1087282 () Bool)

(declare-fun b!1699822 () Bool)

(declare-fun tp!485808 () Bool)

(declare-fun inv!23886 (String!21077) Bool)

(declare-fun inv!23889 (TokenValueInjection!6358) Bool)

(assert (=> b!1699822 (= e!1087282 (and tp!485808 (inv!23886 (tag!3553 (h!23916 rules!1846))) (inv!23889 (transformation!3259 (h!23916 rules!1846))) e!1087280))))

(declare-fun b!1699823 () Bool)

(declare-fun e!1087275 () Bool)

(declare-fun e!1087274 () Bool)

(assert (=> b!1699823 (= e!1087275 e!1087274)))

(declare-fun res!761856 () Bool)

(assert (=> b!1699823 (=> res!761856 e!1087274)))

(declare-fun tokens!457 () List!18586)

(declare-datatypes ((tuple2!18284 0))(
  ( (tuple2!18285 (_1!10544 Token!6084) (_2!10544 BalanceConc!12276)) )
))
(declare-datatypes ((Option!3582 0))(
  ( (None!3581) (Some!3581 (v!24934 tuple2!18284)) )
))
(declare-fun isDefined!2929 (Option!3582) Bool)

(declare-fun maxPrefixZipperSequence!759 (LexerInterface!2888 List!18585 BalanceConc!12276) Option!3582)

(assert (=> b!1699823 (= res!761856 (not (isDefined!2929 (maxPrefixZipperSequence!759 thiss!17113 rules!1846 (seqFromList!2255 (originalCharacters!4073 (h!23917 tokens!457)))))))))

(declare-fun e!1087281 () Bool)

(assert (=> b!1699823 e!1087281))

(declare-fun res!761849 () Bool)

(assert (=> b!1699823 (=> (not res!761849) (not e!1087281))))

(assert (=> b!1699823 (= res!761849 (= lt!648521 (originalCharacters!4073 (h!23917 tokens!457))))))

(declare-fun res!761837 () Bool)

(declare-fun e!1087268 () Bool)

(assert (=> start!165534 (=> (not res!761837) (not e!1087268))))

(get-info :version)

(assert (=> start!165534 (= res!761837 ((_ is Lexer!2886) thiss!17113))))

(assert (=> start!165534 e!1087268))

(assert (=> start!165534 true))

(declare-fun e!1087269 () Bool)

(assert (=> start!165534 e!1087269))

(declare-fun e!1087273 () Bool)

(assert (=> start!165534 e!1087273))

(declare-fun e!1087278 () Bool)

(assert (=> b!1699824 (= e!1087278 (and tp!485805 tp!485812))))

(declare-fun b!1699825 () Bool)

(declare-fun e!1087272 () Bool)

(assert (=> b!1699825 (= e!1087272 e!1087275)))

(declare-fun res!761847 () Bool)

(assert (=> b!1699825 (=> res!761847 e!1087275)))

(declare-fun lt!648518 () Regex!4587)

(declare-fun lt!648519 () List!18583)

(declare-fun prefixMatch!500 (Regex!4587 List!18583) Bool)

(declare-fun ++!5085 (List!18583 List!18583) List!18583)

(assert (=> b!1699825 (= res!761847 (prefixMatch!500 lt!648518 (++!5085 lt!648521 lt!648519)))))

(declare-fun lt!648513 () BalanceConc!12276)

(declare-fun list!7455 (BalanceConc!12276) List!18583)

(assert (=> b!1699825 (= lt!648519 (list!7455 lt!648513))))

(declare-fun b!1699826 () Bool)

(declare-fun res!761839 () Bool)

(assert (=> b!1699826 (=> (not res!761839) (not e!1087268))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!581 (LexerInterface!2888 List!18586 List!18585) Bool)

(assert (=> b!1699826 (= res!761839 (tokensListTwoByTwoPredicateSeparableList!581 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1699827 () Bool)

(declare-fun e!1087284 () Bool)

(assert (=> b!1699827 (= e!1087284 e!1087266)))

(declare-fun res!761855 () Bool)

(assert (=> b!1699827 (=> res!761855 e!1087266)))

(declare-fun lt!648532 () List!18583)

(declare-fun lt!648531 () List!18583)

(assert (=> b!1699827 (= res!761855 (or (not (= lt!648531 lt!648532)) (not (= lt!648532 lt!648521)) (not (= lt!648531 lt!648521))))))

(declare-fun printList!1001 (LexerInterface!2888 List!18586) List!18583)

(assert (=> b!1699827 (= lt!648532 (printList!1001 thiss!17113 (Cons!18516 (h!23917 tokens!457) Nil!18516)))))

(declare-fun lt!648515 () BalanceConc!12276)

(assert (=> b!1699827 (= lt!648531 (list!7455 lt!648515))))

(declare-fun lt!648512 () BalanceConc!12278)

(declare-fun printTailRec!939 (LexerInterface!2888 BalanceConc!12278 Int BalanceConc!12276) BalanceConc!12276)

(assert (=> b!1699827 (= lt!648515 (printTailRec!939 thiss!17113 lt!648512 0 (BalanceConc!12277 Empty!6166)))))

(declare-fun print!1419 (LexerInterface!2888 BalanceConc!12278) BalanceConc!12276)

(assert (=> b!1699827 (= lt!648515 (print!1419 thiss!17113 lt!648512))))

(declare-fun singletonSeq!1786 (Token!6084) BalanceConc!12278)

(assert (=> b!1699827 (= lt!648512 (singletonSeq!1786 (h!23917 tokens!457)))))

(declare-datatypes ((tuple2!18286 0))(
  ( (tuple2!18287 (_1!10545 Token!6084) (_2!10545 List!18583)) )
))
(declare-datatypes ((Option!3583 0))(
  ( (None!3582) (Some!3582 (v!24935 tuple2!18286)) )
))
(declare-fun lt!648534 () Option!3583)

(declare-fun lt!648524 () List!18583)

(declare-fun maxPrefix!1448 (LexerInterface!2888 List!18585 List!18583) Option!3583)

(assert (=> b!1699827 (= lt!648534 (maxPrefix!1448 thiss!17113 rules!1846 lt!648524))))

(declare-fun b!1699828 () Bool)

(declare-fun res!761857 () Bool)

(assert (=> b!1699828 (=> (not res!761857) (not e!1087268))))

(declare-fun isEmpty!11610 (List!18585) Bool)

(assert (=> b!1699828 (= res!761857 (not (isEmpty!11610 rules!1846)))))

(declare-fun b!1699829 () Bool)

(declare-fun lt!648520 () BalanceConc!12276)

(declare-fun head!3799 (BalanceConc!12276) C!9348)

(assert (=> b!1699829 (= e!1087281 (= lt!648519 (Cons!18513 (head!3799 lt!648520) Nil!18513)))))

(declare-fun b!1699830 () Bool)

(declare-fun res!761841 () Bool)

(assert (=> b!1699830 (=> (not res!761841) (not e!1087268))))

(declare-fun rulesProduceEachTokenIndividuallyList!1090 (LexerInterface!2888 List!18585 List!18586) Bool)

(assert (=> b!1699830 (= res!761841 (rulesProduceEachTokenIndividuallyList!1090 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1699831 () Bool)

(declare-fun tp!485810 () Bool)

(declare-fun e!1087270 () Bool)

(assert (=> b!1699831 (= e!1087270 (and tp!485810 (inv!23886 (tag!3553 (rule!5181 (h!23917 tokens!457)))) (inv!23889 (transformation!3259 (rule!5181 (h!23917 tokens!457)))) e!1087278))))

(declare-fun b!1699832 () Bool)

(declare-fun e!1087283 () Bool)

(assert (=> b!1699832 (= e!1087283 e!1087272)))

(declare-fun res!761842 () Bool)

(assert (=> b!1699832 (=> res!761842 e!1087272)))

(declare-fun lt!648511 () BalanceConc!12276)

(declare-fun prefixMatchZipperSequence!703 (Regex!4587 BalanceConc!12276) Bool)

(declare-fun ++!5086 (BalanceConc!12276 BalanceConc!12276) BalanceConc!12276)

(assert (=> b!1699832 (= res!761842 (prefixMatchZipperSequence!703 lt!648518 (++!5086 lt!648511 lt!648513)))))

(declare-fun singletonSeq!1787 (C!9348) BalanceConc!12276)

(declare-fun apply!5069 (BalanceConc!12276 Int) C!9348)

(declare-fun charsOf!1908 (Token!6084) BalanceConc!12276)

(assert (=> b!1699832 (= lt!648513 (singletonSeq!1787 (apply!5069 (charsOf!1908 (h!23917 (t!157361 tokens!457))) 0)))))

(declare-fun rulesRegex!641 (LexerInterface!2888 List!18585) Regex!4587)

(assert (=> b!1699832 (= lt!648518 (rulesRegex!641 thiss!17113 rules!1846))))

(assert (=> b!1699833 (= e!1087280 (and tp!485804 tp!485809))))

(declare-fun b!1699834 () Bool)

(declare-fun res!761838 () Bool)

(assert (=> b!1699834 (=> res!761838 e!1087284)))

(declare-fun separableTokensPredicate!828 (LexerInterface!2888 Token!6084 Token!6084 List!18585) Bool)

(assert (=> b!1699834 (= res!761838 (not (separableTokensPredicate!828 thiss!17113 (h!23917 tokens!457) (h!23917 (t!157361 tokens!457)) rules!1846)))))

(declare-fun tp!485807 () Bool)

(declare-fun e!1087279 () Bool)

(declare-fun b!1699835 () Bool)

(declare-fun inv!23890 (Token!6084) Bool)

(assert (=> b!1699835 (= e!1087273 (and (inv!23890 (h!23917 tokens!457)) e!1087279 tp!485807))))

(declare-fun b!1699836 () Bool)

(declare-fun res!761854 () Bool)

(assert (=> b!1699836 (=> (not res!761854) (not e!1087281))))

(declare-fun lt!648523 () List!18583)

(declare-fun head!3800 (List!18583) C!9348)

(assert (=> b!1699836 (= res!761854 (= lt!648519 (Cons!18513 (head!3800 lt!648523) Nil!18513)))))

(declare-fun b!1699837 () Bool)

(assert (=> b!1699837 (= e!1087266 e!1087283)))

(declare-fun res!761852 () Bool)

(assert (=> b!1699837 (=> res!761852 e!1087283)))

(declare-fun isDefined!2930 (Option!3583) Bool)

(assert (=> b!1699837 (= res!761852 (not (isDefined!2930 lt!648534)))))

(declare-datatypes ((Unit!32215 0))(
  ( (Unit!32216) )
))
(declare-fun lt!648527 () Unit!32215)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!450 (LexerInterface!2888 List!18585 List!18583 List!18583) Unit!32215)

(assert (=> b!1699837 (= lt!648527 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!450 thiss!17113 rules!1846 lt!648521 lt!648523))))

(declare-fun b!1699838 () Bool)

(declare-fun tp!485811 () Bool)

(assert (=> b!1699838 (= e!1087269 (and e!1087282 tp!485811))))

(declare-fun b!1699839 () Bool)

(declare-fun res!761853 () Bool)

(assert (=> b!1699839 (=> (not res!761853) (not e!1087268))))

(declare-fun rulesInvariant!2557 (LexerInterface!2888 List!18585) Bool)

(assert (=> b!1699839 (= res!761853 (rulesInvariant!2557 thiss!17113 rules!1846))))

(declare-fun b!1699840 () Bool)

(declare-fun res!761844 () Bool)

(assert (=> b!1699840 (=> (not res!761844) (not e!1087281))))

(assert (=> b!1699840 (= res!761844 (= lt!648519 (Cons!18513 (head!3800 (originalCharacters!4073 (h!23917 (t!157361 tokens!457)))) Nil!18513)))))

(declare-fun b!1699841 () Bool)

(declare-fun e!1087277 () Bool)

(assert (=> b!1699841 (= e!1087268 e!1087277)))

(declare-fun res!761848 () Bool)

(assert (=> b!1699841 (=> (not res!761848) (not e!1087277))))

(declare-fun lt!648525 () List!18583)

(assert (=> b!1699841 (= res!761848 (= lt!648524 lt!648525))))

(assert (=> b!1699841 (= lt!648525 (++!5085 lt!648521 lt!648523))))

(declare-fun lt!648516 () BalanceConc!12276)

(assert (=> b!1699841 (= lt!648524 (list!7455 lt!648516))))

(assert (=> b!1699841 (= lt!648523 (list!7455 lt!648520))))

(assert (=> b!1699841 (= lt!648521 (list!7455 lt!648511))))

(assert (=> b!1699841 (= lt!648511 (charsOf!1908 (h!23917 tokens!457)))))

(declare-fun lt!648514 () tuple2!18282)

(assert (=> b!1699841 (= lt!648514 (lex!1372 thiss!17113 rules!1846 lt!648520))))

(declare-fun lt!648533 () BalanceConc!12278)

(assert (=> b!1699841 (= lt!648520 (print!1419 thiss!17113 lt!648533))))

(declare-fun seqFromList!2256 (List!18586) BalanceConc!12278)

(assert (=> b!1699841 (= lt!648533 (seqFromList!2256 (t!157361 tokens!457)))))

(assert (=> b!1699841 (= lt!648516 (print!1419 thiss!17113 (seqFromList!2256 tokens!457)))))

(declare-fun b!1699842 () Bool)

(declare-fun matchR!2076 (Regex!4587 List!18583) Bool)

(assert (=> b!1699842 (= e!1087274 (matchR!2076 (regex!3259 (rule!5181 (h!23917 tokens!457))) lt!648521))))

(declare-fun e!1087264 () Bool)

(assert (=> b!1699842 e!1087264))

(declare-fun res!761850 () Bool)

(assert (=> b!1699842 (=> (not res!761850) (not e!1087264))))

(declare-fun lt!648529 () tuple2!18286)

(assert (=> b!1699842 (= res!761850 (= (_1!10545 lt!648529) (h!23917 tokens!457)))))

(declare-fun lt!648530 () Option!3583)

(declare-fun get!5434 (Option!3583) tuple2!18286)

(assert (=> b!1699842 (= lt!648529 (get!5434 lt!648530))))

(assert (=> b!1699842 (isDefined!2930 lt!648530)))

(assert (=> b!1699842 (= lt!648530 (maxPrefix!1448 thiss!17113 rules!1846 lt!648521))))

(assert (=> b!1699842 (isDefined!2930 (maxPrefix!1448 thiss!17113 rules!1846 (originalCharacters!4073 (h!23917 tokens!457))))))

(declare-fun tp!485806 () Bool)

(declare-fun b!1699843 () Bool)

(declare-fun inv!21 (TokenValue!3349) Bool)

(assert (=> b!1699843 (= e!1087279 (and (inv!21 (value!102554 (h!23917 tokens!457))) e!1087270 tp!485806))))

(declare-fun b!1699844 () Bool)

(declare-fun res!761846 () Bool)

(assert (=> b!1699844 (=> res!761846 e!1087266)))

(declare-fun rulesProduceIndividualToken!1536 (LexerInterface!2888 List!18585 Token!6084) Bool)

(assert (=> b!1699844 (= res!761846 (not (rulesProduceIndividualToken!1536 thiss!17113 rules!1846 (h!23917 tokens!457))))))

(declare-fun b!1699845 () Bool)

(declare-fun e!1087265 () Bool)

(assert (=> b!1699845 (= e!1087265 e!1087284)))

(declare-fun res!761840 () Bool)

(assert (=> b!1699845 (=> res!761840 e!1087284)))

(declare-fun lt!648536 () List!18586)

(declare-fun lt!648522 () List!18586)

(declare-fun lt!648528 () List!18586)

(assert (=> b!1699845 (= res!761840 (or (not (= lt!648528 lt!648536)) (not (= lt!648536 lt!648522))))))

(declare-fun list!7456 (BalanceConc!12278) List!18586)

(assert (=> b!1699845 (= lt!648536 (list!7456 lt!648533))))

(assert (=> b!1699845 (= lt!648528 lt!648522)))

(declare-fun prepend!859 (BalanceConc!12278 Token!6084) BalanceConc!12278)

(assert (=> b!1699845 (= lt!648522 (list!7456 (prepend!859 (seqFromList!2256 (t!157361 (t!157361 tokens!457))) (h!23917 (t!157361 tokens!457)))))))

(declare-fun lt!648535 () Unit!32215)

(declare-fun seqFromListBHdTlConstructive!328 (Token!6084 List!18586 BalanceConc!12278) Unit!32215)

(assert (=> b!1699845 (= lt!648535 (seqFromListBHdTlConstructive!328 (h!23917 (t!157361 tokens!457)) (t!157361 (t!157361 tokens!457)) (_1!10543 lt!648514)))))

(declare-fun b!1699846 () Bool)

(assert (=> b!1699846 (= e!1087277 (not e!1087265))))

(declare-fun res!761851 () Bool)

(assert (=> b!1699846 (=> res!761851 e!1087265)))

(assert (=> b!1699846 (= res!761851 (not (= lt!648528 (t!157361 tokens!457))))))

(assert (=> b!1699846 (= lt!648528 (list!7456 (_1!10543 lt!648514)))))

(declare-fun lt!648517 () Unit!32215)

(declare-fun theoremInvertabilityWhenTokenListSeparable!325 (LexerInterface!2888 List!18585 List!18586) Unit!32215)

(assert (=> b!1699846 (= lt!648517 (theoremInvertabilityWhenTokenListSeparable!325 thiss!17113 rules!1846 (t!157361 tokens!457)))))

(declare-fun isPrefix!1517 (List!18583 List!18583) Bool)

(assert (=> b!1699846 (isPrefix!1517 lt!648521 lt!648525)))

(declare-fun lt!648526 () Unit!32215)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1038 (List!18583 List!18583) Unit!32215)

(assert (=> b!1699846 (= lt!648526 (lemmaConcatTwoListThenFirstIsPrefix!1038 lt!648521 lt!648523))))

(declare-fun b!1699847 () Bool)

(declare-fun res!761845 () Bool)

(assert (=> b!1699847 (=> (not res!761845) (not e!1087268))))

(assert (=> b!1699847 (= res!761845 (and (not ((_ is Nil!18516) tokens!457)) (not ((_ is Nil!18516) (t!157361 tokens!457)))))))

(declare-fun b!1699848 () Bool)

(declare-fun isEmpty!11611 (List!18583) Bool)

(assert (=> b!1699848 (= e!1087264 (isEmpty!11611 (_2!10545 lt!648529)))))

(assert (= (and start!165534 res!761837) b!1699828))

(assert (= (and b!1699828 res!761857) b!1699839))

(assert (= (and b!1699839 res!761853) b!1699830))

(assert (= (and b!1699830 res!761841) b!1699826))

(assert (= (and b!1699826 res!761839) b!1699847))

(assert (= (and b!1699847 res!761845) b!1699841))

(assert (= (and b!1699841 res!761848) b!1699846))

(assert (= (and b!1699846 (not res!761851)) b!1699845))

(assert (= (and b!1699845 (not res!761840)) b!1699834))

(assert (= (and b!1699834 (not res!761838)) b!1699827))

(assert (= (and b!1699827 (not res!761855)) b!1699844))

(assert (= (and b!1699844 (not res!761846)) b!1699821))

(assert (= (and b!1699821 (not res!761843)) b!1699837))

(assert (= (and b!1699837 (not res!761852)) b!1699832))

(assert (= (and b!1699832 (not res!761842)) b!1699825))

(assert (= (and b!1699825 (not res!761847)) b!1699823))

(assert (= (and b!1699823 res!761849) b!1699840))

(assert (= (and b!1699840 res!761844) b!1699836))

(assert (= (and b!1699836 res!761854) b!1699829))

(assert (= (and b!1699823 (not res!761856)) b!1699842))

(assert (= (and b!1699842 res!761850) b!1699848))

(assert (= b!1699822 b!1699833))

(assert (= b!1699838 b!1699822))

(assert (= (and start!165534 ((_ is Cons!18515) rules!1846)) b!1699838))

(assert (= b!1699831 b!1699824))

(assert (= b!1699843 b!1699831))

(assert (= b!1699835 b!1699843))

(assert (= (and start!165534 ((_ is Cons!18516) tokens!457)) b!1699835))

(declare-fun m!2098705 () Bool)

(assert (=> b!1699836 m!2098705))

(declare-fun m!2098707 () Bool)

(assert (=> b!1699825 m!2098707))

(assert (=> b!1699825 m!2098707))

(declare-fun m!2098709 () Bool)

(assert (=> b!1699825 m!2098709))

(declare-fun m!2098711 () Bool)

(assert (=> b!1699825 m!2098711))

(declare-fun m!2098713 () Bool)

(assert (=> b!1699830 m!2098713))

(declare-fun m!2098715 () Bool)

(assert (=> b!1699831 m!2098715))

(declare-fun m!2098717 () Bool)

(assert (=> b!1699831 m!2098717))

(declare-fun m!2098719 () Bool)

(assert (=> b!1699846 m!2098719))

(declare-fun m!2098721 () Bool)

(assert (=> b!1699846 m!2098721))

(declare-fun m!2098723 () Bool)

(assert (=> b!1699846 m!2098723))

(declare-fun m!2098725 () Bool)

(assert (=> b!1699846 m!2098725))

(declare-fun m!2098727 () Bool)

(assert (=> b!1699844 m!2098727))

(declare-fun m!2098729 () Bool)

(assert (=> b!1699839 m!2098729))

(declare-fun m!2098731 () Bool)

(assert (=> b!1699821 m!2098731))

(assert (=> b!1699821 m!2098731))

(declare-fun m!2098733 () Bool)

(assert (=> b!1699821 m!2098733))

(declare-fun m!2098735 () Bool)

(assert (=> b!1699821 m!2098735))

(declare-fun m!2098737 () Bool)

(assert (=> b!1699828 m!2098737))

(declare-fun m!2098739 () Bool)

(assert (=> b!1699827 m!2098739))

(declare-fun m!2098741 () Bool)

(assert (=> b!1699827 m!2098741))

(declare-fun m!2098743 () Bool)

(assert (=> b!1699827 m!2098743))

(declare-fun m!2098745 () Bool)

(assert (=> b!1699827 m!2098745))

(declare-fun m!2098747 () Bool)

(assert (=> b!1699827 m!2098747))

(declare-fun m!2098749 () Bool)

(assert (=> b!1699827 m!2098749))

(declare-fun m!2098751 () Bool)

(assert (=> b!1699834 m!2098751))

(declare-fun m!2098753 () Bool)

(assert (=> b!1699845 m!2098753))

(declare-fun m!2098755 () Bool)

(assert (=> b!1699845 m!2098755))

(declare-fun m!2098757 () Bool)

(assert (=> b!1699845 m!2098757))

(declare-fun m!2098759 () Bool)

(assert (=> b!1699845 m!2098759))

(assert (=> b!1699845 m!2098755))

(declare-fun m!2098761 () Bool)

(assert (=> b!1699845 m!2098761))

(assert (=> b!1699845 m!2098759))

(declare-fun m!2098763 () Bool)

(assert (=> b!1699826 m!2098763))

(declare-fun m!2098765 () Bool)

(assert (=> b!1699840 m!2098765))

(declare-fun m!2098767 () Bool)

(assert (=> b!1699822 m!2098767))

(declare-fun m!2098769 () Bool)

(assert (=> b!1699822 m!2098769))

(declare-fun m!2098771 () Bool)

(assert (=> b!1699843 m!2098771))

(declare-fun m!2098773 () Bool)

(assert (=> b!1699841 m!2098773))

(declare-fun m!2098775 () Bool)

(assert (=> b!1699841 m!2098775))

(declare-fun m!2098777 () Bool)

(assert (=> b!1699841 m!2098777))

(declare-fun m!2098779 () Bool)

(assert (=> b!1699841 m!2098779))

(declare-fun m!2098781 () Bool)

(assert (=> b!1699841 m!2098781))

(declare-fun m!2098783 () Bool)

(assert (=> b!1699841 m!2098783))

(declare-fun m!2098785 () Bool)

(assert (=> b!1699841 m!2098785))

(declare-fun m!2098787 () Bool)

(assert (=> b!1699841 m!2098787))

(declare-fun m!2098789 () Bool)

(assert (=> b!1699841 m!2098789))

(assert (=> b!1699841 m!2098787))

(declare-fun m!2098791 () Bool)

(assert (=> b!1699841 m!2098791))

(declare-fun m!2098793 () Bool)

(assert (=> b!1699832 m!2098793))

(declare-fun m!2098795 () Bool)

(assert (=> b!1699832 m!2098795))

(declare-fun m!2098797 () Bool)

(assert (=> b!1699832 m!2098797))

(declare-fun m!2098799 () Bool)

(assert (=> b!1699832 m!2098799))

(declare-fun m!2098801 () Bool)

(assert (=> b!1699832 m!2098801))

(assert (=> b!1699832 m!2098799))

(declare-fun m!2098803 () Bool)

(assert (=> b!1699832 m!2098803))

(assert (=> b!1699832 m!2098795))

(assert (=> b!1699832 m!2098803))

(declare-fun m!2098805 () Bool)

(assert (=> b!1699837 m!2098805))

(declare-fun m!2098807 () Bool)

(assert (=> b!1699837 m!2098807))

(declare-fun m!2098809 () Bool)

(assert (=> b!1699823 m!2098809))

(assert (=> b!1699823 m!2098809))

(declare-fun m!2098811 () Bool)

(assert (=> b!1699823 m!2098811))

(assert (=> b!1699823 m!2098811))

(declare-fun m!2098813 () Bool)

(assert (=> b!1699823 m!2098813))

(declare-fun m!2098815 () Bool)

(assert (=> b!1699829 m!2098815))

(declare-fun m!2098817 () Bool)

(assert (=> b!1699842 m!2098817))

(declare-fun m!2098819 () Bool)

(assert (=> b!1699842 m!2098819))

(declare-fun m!2098821 () Bool)

(assert (=> b!1699842 m!2098821))

(declare-fun m!2098823 () Bool)

(assert (=> b!1699842 m!2098823))

(declare-fun m!2098825 () Bool)

(assert (=> b!1699842 m!2098825))

(declare-fun m!2098827 () Bool)

(assert (=> b!1699842 m!2098827))

(assert (=> b!1699842 m!2098821))

(declare-fun m!2098829 () Bool)

(assert (=> b!1699835 m!2098829))

(declare-fun m!2098831 () Bool)

(assert (=> b!1699848 m!2098831))

(check-sat (not b!1699836) (not b!1699843) (not b!1699821) (not b_next!46475) (not b_next!46471) b_and!122613 (not b!1699823) (not b!1699828) (not b!1699840) (not b!1699822) (not b!1699834) (not b!1699825) (not b!1699837) (not b!1699831) (not b!1699830) (not b!1699842) (not b!1699835) (not b_next!46473) b_and!122617 (not b!1699829) b_and!122615 (not b!1699848) (not b!1699845) (not b!1699827) (not b!1699838) (not b!1699832) (not b_next!46477) (not b!1699846) (not b!1699844) b_and!122619 (not b!1699826) (not b!1699841) (not b!1699839))
(check-sat b_and!122615 (not b_next!46475) (not b_next!46471) b_and!122613 (not b_next!46477) b_and!122619 (not b_next!46473) b_and!122617)
(get-model)

(declare-fun d!521218 () Bool)

(assert (=> d!521218 (= (head!3800 (originalCharacters!4073 (h!23917 (t!157361 tokens!457)))) (h!23914 (originalCharacters!4073 (h!23917 (t!157361 tokens!457)))))))

(assert (=> b!1699840 d!521218))

(declare-fun d!521220 () Bool)

(declare-fun res!761893 () Bool)

(declare-fun e!1087311 () Bool)

(assert (=> d!521220 (=> (not res!761893) (not e!1087311))))

(declare-fun rulesValid!1209 (LexerInterface!2888 List!18585) Bool)

(assert (=> d!521220 (= res!761893 (rulesValid!1209 thiss!17113 rules!1846))))

(assert (=> d!521220 (= (rulesInvariant!2557 thiss!17113 rules!1846) e!1087311)))

(declare-fun b!1699892 () Bool)

(declare-datatypes ((List!18589 0))(
  ( (Nil!18519) (Cons!18519 (h!23920 String!21077) (t!157406 List!18589)) )
))
(declare-fun noDuplicateTag!1209 (LexerInterface!2888 List!18585 List!18589) Bool)

(assert (=> b!1699892 (= e!1087311 (noDuplicateTag!1209 thiss!17113 rules!1846 Nil!18519))))

(assert (= (and d!521220 res!761893) b!1699892))

(declare-fun m!2098917 () Bool)

(assert (=> d!521220 m!2098917))

(declare-fun m!2098919 () Bool)

(assert (=> b!1699892 m!2098919))

(assert (=> b!1699839 d!521220))

(declare-fun b!1699903 () Bool)

(declare-fun e!1087319 () Bool)

(declare-fun inv!17 (TokenValue!3349) Bool)

(assert (=> b!1699903 (= e!1087319 (inv!17 (value!102554 (h!23917 tokens!457))))))

(declare-fun b!1699904 () Bool)

(declare-fun e!1087318 () Bool)

(declare-fun inv!15 (TokenValue!3349) Bool)

(assert (=> b!1699904 (= e!1087318 (inv!15 (value!102554 (h!23917 tokens!457))))))

(declare-fun b!1699905 () Bool)

(declare-fun res!761896 () Bool)

(assert (=> b!1699905 (=> res!761896 e!1087318)))

(assert (=> b!1699905 (= res!761896 (not ((_ is IntegerValue!10049) (value!102554 (h!23917 tokens!457)))))))

(assert (=> b!1699905 (= e!1087319 e!1087318)))

(declare-fun b!1699906 () Bool)

(declare-fun e!1087320 () Bool)

(declare-fun inv!16 (TokenValue!3349) Bool)

(assert (=> b!1699906 (= e!1087320 (inv!16 (value!102554 (h!23917 tokens!457))))))

(declare-fun d!521222 () Bool)

(declare-fun c!278591 () Bool)

(assert (=> d!521222 (= c!278591 ((_ is IntegerValue!10047) (value!102554 (h!23917 tokens!457))))))

(assert (=> d!521222 (= (inv!21 (value!102554 (h!23917 tokens!457))) e!1087320)))

(declare-fun b!1699907 () Bool)

(assert (=> b!1699907 (= e!1087320 e!1087319)))

(declare-fun c!278592 () Bool)

(assert (=> b!1699907 (= c!278592 ((_ is IntegerValue!10048) (value!102554 (h!23917 tokens!457))))))

(assert (= (and d!521222 c!278591) b!1699906))

(assert (= (and d!521222 (not c!278591)) b!1699907))

(assert (= (and b!1699907 c!278592) b!1699903))

(assert (= (and b!1699907 (not c!278592)) b!1699905))

(assert (= (and b!1699905 (not res!761896)) b!1699904))

(declare-fun m!2098921 () Bool)

(assert (=> b!1699903 m!2098921))

(declare-fun m!2098923 () Bool)

(assert (=> b!1699904 m!2098923))

(declare-fun m!2098925 () Bool)

(assert (=> b!1699906 m!2098925))

(assert (=> b!1699843 d!521222))

(declare-fun lt!648584 () Bool)

(declare-fun d!521224 () Bool)

(declare-fun isEmpty!11614 (List!18586) Bool)

(assert (=> d!521224 (= lt!648584 (isEmpty!11614 (list!7456 (_1!10543 (lex!1372 thiss!17113 rules!1846 (seqFromList!2255 lt!648521))))))))

(declare-fun isEmpty!11615 (Conc!6167) Bool)

(assert (=> d!521224 (= lt!648584 (isEmpty!11615 (c!278577 (_1!10543 (lex!1372 thiss!17113 rules!1846 (seqFromList!2255 lt!648521))))))))

(assert (=> d!521224 (= (isEmpty!11609 (_1!10543 (lex!1372 thiss!17113 rules!1846 (seqFromList!2255 lt!648521)))) lt!648584)))

(declare-fun bs!401045 () Bool)

(assert (= bs!401045 d!521224))

(declare-fun m!2098927 () Bool)

(assert (=> bs!401045 m!2098927))

(assert (=> bs!401045 m!2098927))

(declare-fun m!2098929 () Bool)

(assert (=> bs!401045 m!2098929))

(declare-fun m!2098931 () Bool)

(assert (=> bs!401045 m!2098931))

(assert (=> b!1699821 d!521224))

(declare-fun e!1087335 () Bool)

(declare-fun b!1699930 () Bool)

(declare-fun lt!648638 () tuple2!18282)

(declare-datatypes ((tuple2!18288 0))(
  ( (tuple2!18289 (_1!10546 List!18586) (_2!10546 List!18583)) )
))
(declare-fun lexList!910 (LexerInterface!2888 List!18585 List!18583) tuple2!18288)

(assert (=> b!1699930 (= e!1087335 (= (list!7455 (_2!10543 lt!648638)) (_2!10546 (lexList!910 thiss!17113 rules!1846 (list!7455 (seqFromList!2255 lt!648521))))))))

(declare-fun b!1699931 () Bool)

(declare-fun e!1087333 () Bool)

(declare-fun e!1087334 () Bool)

(assert (=> b!1699931 (= e!1087333 e!1087334)))

(declare-fun res!761911 () Bool)

(declare-fun size!14762 (BalanceConc!12276) Int)

(assert (=> b!1699931 (= res!761911 (< (size!14762 (_2!10543 lt!648638)) (size!14762 (seqFromList!2255 lt!648521))))))

(assert (=> b!1699931 (=> (not res!761911) (not e!1087334))))

(declare-fun d!521226 () Bool)

(assert (=> d!521226 e!1087335))

(declare-fun res!761910 () Bool)

(assert (=> d!521226 (=> (not res!761910) (not e!1087335))))

(assert (=> d!521226 (= res!761910 e!1087333)))

(declare-fun c!278598 () Bool)

(declare-fun size!14763 (BalanceConc!12278) Int)

(assert (=> d!521226 (= c!278598 (> (size!14763 (_1!10543 lt!648638)) 0))))

(declare-fun lexTailRecV2!633 (LexerInterface!2888 List!18585 BalanceConc!12276 BalanceConc!12276 BalanceConc!12276 BalanceConc!12278) tuple2!18282)

(assert (=> d!521226 (= lt!648638 (lexTailRecV2!633 thiss!17113 rules!1846 (seqFromList!2255 lt!648521) (BalanceConc!12277 Empty!6166) (seqFromList!2255 lt!648521) (BalanceConc!12279 Empty!6167)))))

(assert (=> d!521226 (= (lex!1372 thiss!17113 rules!1846 (seqFromList!2255 lt!648521)) lt!648638)))

(declare-fun b!1699932 () Bool)

(assert (=> b!1699932 (= e!1087334 (not (isEmpty!11609 (_1!10543 lt!648638))))))

(declare-fun b!1699933 () Bool)

(declare-fun res!761909 () Bool)

(assert (=> b!1699933 (=> (not res!761909) (not e!1087335))))

(assert (=> b!1699933 (= res!761909 (= (list!7456 (_1!10543 lt!648638)) (_1!10546 (lexList!910 thiss!17113 rules!1846 (list!7455 (seqFromList!2255 lt!648521))))))))

(declare-fun b!1699934 () Bool)

(assert (=> b!1699934 (= e!1087333 (= (_2!10543 lt!648638) (seqFromList!2255 lt!648521)))))

(assert (= (and d!521226 c!278598) b!1699931))

(assert (= (and d!521226 (not c!278598)) b!1699934))

(assert (= (and b!1699931 res!761911) b!1699932))

(assert (= (and d!521226 res!761910) b!1699933))

(assert (= (and b!1699933 res!761909) b!1699930))

(declare-fun m!2098981 () Bool)

(assert (=> d!521226 m!2098981))

(assert (=> d!521226 m!2098731))

(assert (=> d!521226 m!2098731))

(declare-fun m!2098983 () Bool)

(assert (=> d!521226 m!2098983))

(declare-fun m!2098985 () Bool)

(assert (=> b!1699930 m!2098985))

(assert (=> b!1699930 m!2098731))

(declare-fun m!2098987 () Bool)

(assert (=> b!1699930 m!2098987))

(assert (=> b!1699930 m!2098987))

(declare-fun m!2098989 () Bool)

(assert (=> b!1699930 m!2098989))

(declare-fun m!2098991 () Bool)

(assert (=> b!1699932 m!2098991))

(declare-fun m!2098993 () Bool)

(assert (=> b!1699931 m!2098993))

(assert (=> b!1699931 m!2098731))

(declare-fun m!2098995 () Bool)

(assert (=> b!1699931 m!2098995))

(declare-fun m!2098997 () Bool)

(assert (=> b!1699933 m!2098997))

(assert (=> b!1699933 m!2098731))

(assert (=> b!1699933 m!2098987))

(assert (=> b!1699933 m!2098987))

(assert (=> b!1699933 m!2098989))

(assert (=> b!1699821 d!521226))

(declare-fun d!521234 () Bool)

(declare-fun fromListB!1036 (List!18583) BalanceConc!12276)

(assert (=> d!521234 (= (seqFromList!2255 lt!648521) (fromListB!1036 lt!648521))))

(declare-fun bs!401047 () Bool)

(assert (= bs!401047 d!521234))

(declare-fun m!2098999 () Bool)

(assert (=> bs!401047 m!2098999))

(assert (=> b!1699821 d!521234))

(declare-fun bm!108936 () Bool)

(declare-fun call!108941 () Option!3583)

(declare-fun maxPrefixOneRule!849 (LexerInterface!2888 Rule!6318 List!18583) Option!3583)

(assert (=> bm!108936 (= call!108941 (maxPrefixOneRule!849 thiss!17113 (h!23916 rules!1846) (originalCharacters!4073 (h!23917 tokens!457))))))

(declare-fun b!1699953 () Bool)

(declare-fun res!761926 () Bool)

(declare-fun e!1087342 () Bool)

(assert (=> b!1699953 (=> (not res!761926) (not e!1087342))))

(declare-fun lt!648653 () Option!3583)

(assert (=> b!1699953 (= res!761926 (matchR!2076 (regex!3259 (rule!5181 (_1!10545 (get!5434 lt!648653)))) (list!7455 (charsOf!1908 (_1!10545 (get!5434 lt!648653))))))))

(declare-fun b!1699954 () Bool)

(declare-fun e!1087343 () Bool)

(assert (=> b!1699954 (= e!1087343 e!1087342)))

(declare-fun res!761927 () Bool)

(assert (=> b!1699954 (=> (not res!761927) (not e!1087342))))

(assert (=> b!1699954 (= res!761927 (isDefined!2930 lt!648653))))

(declare-fun b!1699955 () Bool)

(declare-fun e!1087344 () Option!3583)

(assert (=> b!1699955 (= e!1087344 call!108941)))

(declare-fun b!1699956 () Bool)

(declare-fun res!761930 () Bool)

(assert (=> b!1699956 (=> (not res!761930) (not e!1087342))))

(assert (=> b!1699956 (= res!761930 (= (++!5085 (list!7455 (charsOf!1908 (_1!10545 (get!5434 lt!648653)))) (_2!10545 (get!5434 lt!648653))) (originalCharacters!4073 (h!23917 tokens!457))))))

(declare-fun b!1699957 () Bool)

(declare-fun res!761932 () Bool)

(assert (=> b!1699957 (=> (not res!761932) (not e!1087342))))

(declare-fun apply!5073 (TokenValueInjection!6358 BalanceConc!12276) TokenValue!3349)

(assert (=> b!1699957 (= res!761932 (= (value!102554 (_1!10545 (get!5434 lt!648653))) (apply!5073 (transformation!3259 (rule!5181 (_1!10545 (get!5434 lt!648653)))) (seqFromList!2255 (originalCharacters!4073 (_1!10545 (get!5434 lt!648653)))))))))

(declare-fun d!521236 () Bool)

(assert (=> d!521236 e!1087343))

(declare-fun res!761928 () Bool)

(assert (=> d!521236 (=> res!761928 e!1087343)))

(declare-fun isEmpty!11617 (Option!3583) Bool)

(assert (=> d!521236 (= res!761928 (isEmpty!11617 lt!648653))))

(assert (=> d!521236 (= lt!648653 e!1087344)))

(declare-fun c!278601 () Bool)

(assert (=> d!521236 (= c!278601 (and ((_ is Cons!18515) rules!1846) ((_ is Nil!18515) (t!157360 rules!1846))))))

(declare-fun lt!648652 () Unit!32215)

(declare-fun lt!648650 () Unit!32215)

(assert (=> d!521236 (= lt!648652 lt!648650)))

(assert (=> d!521236 (isPrefix!1517 (originalCharacters!4073 (h!23917 tokens!457)) (originalCharacters!4073 (h!23917 tokens!457)))))

(declare-fun lemmaIsPrefixRefl!1033 (List!18583 List!18583) Unit!32215)

(assert (=> d!521236 (= lt!648650 (lemmaIsPrefixRefl!1033 (originalCharacters!4073 (h!23917 tokens!457)) (originalCharacters!4073 (h!23917 tokens!457))))))

(declare-fun rulesValidInductive!1055 (LexerInterface!2888 List!18585) Bool)

(assert (=> d!521236 (rulesValidInductive!1055 thiss!17113 rules!1846)))

(assert (=> d!521236 (= (maxPrefix!1448 thiss!17113 rules!1846 (originalCharacters!4073 (h!23917 tokens!457))) lt!648653)))

(declare-fun b!1699958 () Bool)

(declare-fun contains!3267 (List!18585 Rule!6318) Bool)

(assert (=> b!1699958 (= e!1087342 (contains!3267 rules!1846 (rule!5181 (_1!10545 (get!5434 lt!648653)))))))

(declare-fun b!1699959 () Bool)

(declare-fun lt!648651 () Option!3583)

(declare-fun lt!648649 () Option!3583)

(assert (=> b!1699959 (= e!1087344 (ite (and ((_ is None!3582) lt!648651) ((_ is None!3582) lt!648649)) None!3582 (ite ((_ is None!3582) lt!648649) lt!648651 (ite ((_ is None!3582) lt!648651) lt!648649 (ite (>= (size!14758 (_1!10545 (v!24935 lt!648651))) (size!14758 (_1!10545 (v!24935 lt!648649)))) lt!648651 lt!648649)))))))

(assert (=> b!1699959 (= lt!648651 call!108941)))

(assert (=> b!1699959 (= lt!648649 (maxPrefix!1448 thiss!17113 (t!157360 rules!1846) (originalCharacters!4073 (h!23917 tokens!457))))))

(declare-fun b!1699960 () Bool)

(declare-fun res!761929 () Bool)

(assert (=> b!1699960 (=> (not res!761929) (not e!1087342))))

(assert (=> b!1699960 (= res!761929 (= (list!7455 (charsOf!1908 (_1!10545 (get!5434 lt!648653)))) (originalCharacters!4073 (_1!10545 (get!5434 lt!648653)))))))

(declare-fun b!1699961 () Bool)

(declare-fun res!761931 () Bool)

(assert (=> b!1699961 (=> (not res!761931) (not e!1087342))))

(declare-fun size!14764 (List!18583) Int)

(assert (=> b!1699961 (= res!761931 (< (size!14764 (_2!10545 (get!5434 lt!648653))) (size!14764 (originalCharacters!4073 (h!23917 tokens!457)))))))

(assert (= (and d!521236 c!278601) b!1699955))

(assert (= (and d!521236 (not c!278601)) b!1699959))

(assert (= (or b!1699955 b!1699959) bm!108936))

(assert (= (and d!521236 (not res!761928)) b!1699954))

(assert (= (and b!1699954 res!761927) b!1699960))

(assert (= (and b!1699960 res!761929) b!1699961))

(assert (= (and b!1699961 res!761931) b!1699956))

(assert (= (and b!1699956 res!761930) b!1699957))

(assert (= (and b!1699957 res!761932) b!1699953))

(assert (= (and b!1699953 res!761926) b!1699958))

(declare-fun m!2099001 () Bool)

(assert (=> b!1699953 m!2099001))

(declare-fun m!2099003 () Bool)

(assert (=> b!1699953 m!2099003))

(assert (=> b!1699953 m!2099003))

(declare-fun m!2099005 () Bool)

(assert (=> b!1699953 m!2099005))

(assert (=> b!1699953 m!2099005))

(declare-fun m!2099007 () Bool)

(assert (=> b!1699953 m!2099007))

(assert (=> b!1699958 m!2099001))

(declare-fun m!2099009 () Bool)

(assert (=> b!1699958 m!2099009))

(declare-fun m!2099011 () Bool)

(assert (=> b!1699954 m!2099011))

(assert (=> b!1699960 m!2099001))

(assert (=> b!1699960 m!2099003))

(assert (=> b!1699960 m!2099003))

(assert (=> b!1699960 m!2099005))

(declare-fun m!2099013 () Bool)

(assert (=> bm!108936 m!2099013))

(declare-fun m!2099015 () Bool)

(assert (=> b!1699959 m!2099015))

(assert (=> b!1699961 m!2099001))

(declare-fun m!2099017 () Bool)

(assert (=> b!1699961 m!2099017))

(declare-fun m!2099019 () Bool)

(assert (=> b!1699961 m!2099019))

(assert (=> b!1699957 m!2099001))

(declare-fun m!2099021 () Bool)

(assert (=> b!1699957 m!2099021))

(assert (=> b!1699957 m!2099021))

(declare-fun m!2099023 () Bool)

(assert (=> b!1699957 m!2099023))

(assert (=> b!1699956 m!2099001))

(assert (=> b!1699956 m!2099003))

(assert (=> b!1699956 m!2099003))

(assert (=> b!1699956 m!2099005))

(assert (=> b!1699956 m!2099005))

(declare-fun m!2099025 () Bool)

(assert (=> b!1699956 m!2099025))

(declare-fun m!2099027 () Bool)

(assert (=> d!521236 m!2099027))

(declare-fun m!2099029 () Bool)

(assert (=> d!521236 m!2099029))

(declare-fun m!2099031 () Bool)

(assert (=> d!521236 m!2099031))

(declare-fun m!2099033 () Bool)

(assert (=> d!521236 m!2099033))

(assert (=> b!1699842 d!521236))

(declare-fun d!521238 () Bool)

(assert (=> d!521238 (= (isDefined!2930 lt!648530) (not (isEmpty!11617 lt!648530)))))

(declare-fun bs!401048 () Bool)

(assert (= bs!401048 d!521238))

(declare-fun m!2099035 () Bool)

(assert (=> bs!401048 m!2099035))

(assert (=> b!1699842 d!521238))

(declare-fun d!521240 () Bool)

(assert (=> d!521240 (= (isDefined!2930 (maxPrefix!1448 thiss!17113 rules!1846 (originalCharacters!4073 (h!23917 tokens!457)))) (not (isEmpty!11617 (maxPrefix!1448 thiss!17113 rules!1846 (originalCharacters!4073 (h!23917 tokens!457))))))))

(declare-fun bs!401049 () Bool)

(assert (= bs!401049 d!521240))

(assert (=> bs!401049 m!2098821))

(declare-fun m!2099037 () Bool)

(assert (=> bs!401049 m!2099037))

(assert (=> b!1699842 d!521240))

(declare-fun d!521242 () Bool)

(assert (=> d!521242 (= (get!5434 lt!648530) (v!24935 lt!648530))))

(assert (=> b!1699842 d!521242))

(declare-fun b!1699990 () Bool)

(declare-fun res!761952 () Bool)

(declare-fun e!1087360 () Bool)

(assert (=> b!1699990 (=> (not res!761952) (not e!1087360))))

(declare-fun call!108944 () Bool)

(assert (=> b!1699990 (= res!761952 (not call!108944))))

(declare-fun b!1699991 () Bool)

(declare-fun e!1087361 () Bool)

(declare-fun derivativeStep!1144 (Regex!4587 C!9348) Regex!4587)

(declare-fun tail!2529 (List!18583) List!18583)

(assert (=> b!1699991 (= e!1087361 (matchR!2076 (derivativeStep!1144 (regex!3259 (rule!5181 (h!23917 tokens!457))) (head!3800 lt!648521)) (tail!2529 lt!648521)))))

(declare-fun b!1699992 () Bool)

(declare-fun e!1087364 () Bool)

(declare-fun e!1087362 () Bool)

(assert (=> b!1699992 (= e!1087364 e!1087362)))

(declare-fun res!761951 () Bool)

(assert (=> b!1699992 (=> res!761951 e!1087362)))

(assert (=> b!1699992 (= res!761951 call!108944)))

(declare-fun b!1699993 () Bool)

(assert (=> b!1699993 (= e!1087362 (not (= (head!3800 lt!648521) (c!278576 (regex!3259 (rule!5181 (h!23917 tokens!457)))))))))

(declare-fun b!1699994 () Bool)

(declare-fun e!1087365 () Bool)

(assert (=> b!1699994 (= e!1087365 e!1087364)))

(declare-fun res!761950 () Bool)

(assert (=> b!1699994 (=> (not res!761950) (not e!1087364))))

(declare-fun lt!648656 () Bool)

(assert (=> b!1699994 (= res!761950 (not lt!648656))))

(declare-fun b!1699995 () Bool)

(declare-fun nullable!1372 (Regex!4587) Bool)

(assert (=> b!1699995 (= e!1087361 (nullable!1372 (regex!3259 (rule!5181 (h!23917 tokens!457)))))))

(declare-fun b!1699996 () Bool)

(declare-fun e!1087359 () Bool)

(assert (=> b!1699996 (= e!1087359 (= lt!648656 call!108944))))

(declare-fun bm!108939 () Bool)

(assert (=> bm!108939 (= call!108944 (isEmpty!11611 lt!648521))))

(declare-fun d!521244 () Bool)

(assert (=> d!521244 e!1087359))

(declare-fun c!278608 () Bool)

(assert (=> d!521244 (= c!278608 ((_ is EmptyExpr!4587) (regex!3259 (rule!5181 (h!23917 tokens!457)))))))

(assert (=> d!521244 (= lt!648656 e!1087361)))

(declare-fun c!278609 () Bool)

(assert (=> d!521244 (= c!278609 (isEmpty!11611 lt!648521))))

(declare-fun validRegex!1846 (Regex!4587) Bool)

(assert (=> d!521244 (validRegex!1846 (regex!3259 (rule!5181 (h!23917 tokens!457))))))

(assert (=> d!521244 (= (matchR!2076 (regex!3259 (rule!5181 (h!23917 tokens!457))) lt!648521) lt!648656)))

(declare-fun b!1699997 () Bool)

(declare-fun e!1087363 () Bool)

(assert (=> b!1699997 (= e!1087363 (not lt!648656))))

(declare-fun b!1699998 () Bool)

(assert (=> b!1699998 (= e!1087360 (= (head!3800 lt!648521) (c!278576 (regex!3259 (rule!5181 (h!23917 tokens!457))))))))

(declare-fun b!1699999 () Bool)

(declare-fun res!761953 () Bool)

(assert (=> b!1699999 (=> (not res!761953) (not e!1087360))))

(assert (=> b!1699999 (= res!761953 (isEmpty!11611 (tail!2529 lt!648521)))))

(declare-fun b!1700000 () Bool)

(declare-fun res!761954 () Bool)

(assert (=> b!1700000 (=> res!761954 e!1087362)))

(assert (=> b!1700000 (= res!761954 (not (isEmpty!11611 (tail!2529 lt!648521))))))

(declare-fun b!1700001 () Bool)

(declare-fun res!761956 () Bool)

(assert (=> b!1700001 (=> res!761956 e!1087365)))

(assert (=> b!1700001 (= res!761956 (not ((_ is ElementMatch!4587) (regex!3259 (rule!5181 (h!23917 tokens!457))))))))

(assert (=> b!1700001 (= e!1087363 e!1087365)))

(declare-fun b!1700002 () Bool)

(assert (=> b!1700002 (= e!1087359 e!1087363)))

(declare-fun c!278610 () Bool)

(assert (=> b!1700002 (= c!278610 ((_ is EmptyLang!4587) (regex!3259 (rule!5181 (h!23917 tokens!457)))))))

(declare-fun b!1700003 () Bool)

(declare-fun res!761949 () Bool)

(assert (=> b!1700003 (=> res!761949 e!1087365)))

(assert (=> b!1700003 (= res!761949 e!1087360)))

(declare-fun res!761955 () Bool)

(assert (=> b!1700003 (=> (not res!761955) (not e!1087360))))

(assert (=> b!1700003 (= res!761955 lt!648656)))

(assert (= (and d!521244 c!278609) b!1699995))

(assert (= (and d!521244 (not c!278609)) b!1699991))

(assert (= (and d!521244 c!278608) b!1699996))

(assert (= (and d!521244 (not c!278608)) b!1700002))

(assert (= (and b!1700002 c!278610) b!1699997))

(assert (= (and b!1700002 (not c!278610)) b!1700001))

(assert (= (and b!1700001 (not res!761956)) b!1700003))

(assert (= (and b!1700003 res!761955) b!1699990))

(assert (= (and b!1699990 res!761952) b!1699999))

(assert (= (and b!1699999 res!761953) b!1699998))

(assert (= (and b!1700003 (not res!761949)) b!1699994))

(assert (= (and b!1699994 res!761950) b!1699992))

(assert (= (and b!1699992 (not res!761951)) b!1700000))

(assert (= (and b!1700000 (not res!761954)) b!1699993))

(assert (= (or b!1699996 b!1699990 b!1699992) bm!108939))

(declare-fun m!2099039 () Bool)

(assert (=> d!521244 m!2099039))

(declare-fun m!2099041 () Bool)

(assert (=> d!521244 m!2099041))

(declare-fun m!2099043 () Bool)

(assert (=> b!1699998 m!2099043))

(declare-fun m!2099045 () Bool)

(assert (=> b!1700000 m!2099045))

(assert (=> b!1700000 m!2099045))

(declare-fun m!2099047 () Bool)

(assert (=> b!1700000 m!2099047))

(assert (=> bm!108939 m!2099039))

(assert (=> b!1699991 m!2099043))

(assert (=> b!1699991 m!2099043))

(declare-fun m!2099049 () Bool)

(assert (=> b!1699991 m!2099049))

(assert (=> b!1699991 m!2099045))

(assert (=> b!1699991 m!2099049))

(assert (=> b!1699991 m!2099045))

(declare-fun m!2099051 () Bool)

(assert (=> b!1699991 m!2099051))

(declare-fun m!2099053 () Bool)

(assert (=> b!1699995 m!2099053))

(assert (=> b!1699993 m!2099043))

(assert (=> b!1699999 m!2099045))

(assert (=> b!1699999 m!2099045))

(assert (=> b!1699999 m!2099047))

(assert (=> b!1699842 d!521244))

(declare-fun bm!108940 () Bool)

(declare-fun call!108945 () Option!3583)

(assert (=> bm!108940 (= call!108945 (maxPrefixOneRule!849 thiss!17113 (h!23916 rules!1846) lt!648521))))

(declare-fun b!1700004 () Bool)

(declare-fun res!761957 () Bool)

(declare-fun e!1087366 () Bool)

(assert (=> b!1700004 (=> (not res!761957) (not e!1087366))))

(declare-fun lt!648661 () Option!3583)

(assert (=> b!1700004 (= res!761957 (matchR!2076 (regex!3259 (rule!5181 (_1!10545 (get!5434 lt!648661)))) (list!7455 (charsOf!1908 (_1!10545 (get!5434 lt!648661))))))))

(declare-fun b!1700005 () Bool)

(declare-fun e!1087367 () Bool)

(assert (=> b!1700005 (= e!1087367 e!1087366)))

(declare-fun res!761958 () Bool)

(assert (=> b!1700005 (=> (not res!761958) (not e!1087366))))

(assert (=> b!1700005 (= res!761958 (isDefined!2930 lt!648661))))

(declare-fun b!1700006 () Bool)

(declare-fun e!1087368 () Option!3583)

(assert (=> b!1700006 (= e!1087368 call!108945)))

(declare-fun b!1700007 () Bool)

(declare-fun res!761961 () Bool)

(assert (=> b!1700007 (=> (not res!761961) (not e!1087366))))

(assert (=> b!1700007 (= res!761961 (= (++!5085 (list!7455 (charsOf!1908 (_1!10545 (get!5434 lt!648661)))) (_2!10545 (get!5434 lt!648661))) lt!648521))))

(declare-fun b!1700008 () Bool)

(declare-fun res!761963 () Bool)

(assert (=> b!1700008 (=> (not res!761963) (not e!1087366))))

(assert (=> b!1700008 (= res!761963 (= (value!102554 (_1!10545 (get!5434 lt!648661))) (apply!5073 (transformation!3259 (rule!5181 (_1!10545 (get!5434 lt!648661)))) (seqFromList!2255 (originalCharacters!4073 (_1!10545 (get!5434 lt!648661)))))))))

(declare-fun d!521246 () Bool)

(assert (=> d!521246 e!1087367))

(declare-fun res!761959 () Bool)

(assert (=> d!521246 (=> res!761959 e!1087367)))

(assert (=> d!521246 (= res!761959 (isEmpty!11617 lt!648661))))

(assert (=> d!521246 (= lt!648661 e!1087368)))

(declare-fun c!278611 () Bool)

(assert (=> d!521246 (= c!278611 (and ((_ is Cons!18515) rules!1846) ((_ is Nil!18515) (t!157360 rules!1846))))))

(declare-fun lt!648660 () Unit!32215)

(declare-fun lt!648658 () Unit!32215)

(assert (=> d!521246 (= lt!648660 lt!648658)))

(assert (=> d!521246 (isPrefix!1517 lt!648521 lt!648521)))

(assert (=> d!521246 (= lt!648658 (lemmaIsPrefixRefl!1033 lt!648521 lt!648521))))

(assert (=> d!521246 (rulesValidInductive!1055 thiss!17113 rules!1846)))

(assert (=> d!521246 (= (maxPrefix!1448 thiss!17113 rules!1846 lt!648521) lt!648661)))

(declare-fun b!1700009 () Bool)

(assert (=> b!1700009 (= e!1087366 (contains!3267 rules!1846 (rule!5181 (_1!10545 (get!5434 lt!648661)))))))

(declare-fun b!1700010 () Bool)

(declare-fun lt!648659 () Option!3583)

(declare-fun lt!648657 () Option!3583)

(assert (=> b!1700010 (= e!1087368 (ite (and ((_ is None!3582) lt!648659) ((_ is None!3582) lt!648657)) None!3582 (ite ((_ is None!3582) lt!648657) lt!648659 (ite ((_ is None!3582) lt!648659) lt!648657 (ite (>= (size!14758 (_1!10545 (v!24935 lt!648659))) (size!14758 (_1!10545 (v!24935 lt!648657)))) lt!648659 lt!648657)))))))

(assert (=> b!1700010 (= lt!648659 call!108945)))

(assert (=> b!1700010 (= lt!648657 (maxPrefix!1448 thiss!17113 (t!157360 rules!1846) lt!648521))))

(declare-fun b!1700011 () Bool)

(declare-fun res!761960 () Bool)

(assert (=> b!1700011 (=> (not res!761960) (not e!1087366))))

(assert (=> b!1700011 (= res!761960 (= (list!7455 (charsOf!1908 (_1!10545 (get!5434 lt!648661)))) (originalCharacters!4073 (_1!10545 (get!5434 lt!648661)))))))

(declare-fun b!1700012 () Bool)

(declare-fun res!761962 () Bool)

(assert (=> b!1700012 (=> (not res!761962) (not e!1087366))))

(assert (=> b!1700012 (= res!761962 (< (size!14764 (_2!10545 (get!5434 lt!648661))) (size!14764 lt!648521)))))

(assert (= (and d!521246 c!278611) b!1700006))

(assert (= (and d!521246 (not c!278611)) b!1700010))

(assert (= (or b!1700006 b!1700010) bm!108940))

(assert (= (and d!521246 (not res!761959)) b!1700005))

(assert (= (and b!1700005 res!761958) b!1700011))

(assert (= (and b!1700011 res!761960) b!1700012))

(assert (= (and b!1700012 res!761962) b!1700007))

(assert (= (and b!1700007 res!761961) b!1700008))

(assert (= (and b!1700008 res!761963) b!1700004))

(assert (= (and b!1700004 res!761957) b!1700009))

(declare-fun m!2099055 () Bool)

(assert (=> b!1700004 m!2099055))

(declare-fun m!2099057 () Bool)

(assert (=> b!1700004 m!2099057))

(assert (=> b!1700004 m!2099057))

(declare-fun m!2099059 () Bool)

(assert (=> b!1700004 m!2099059))

(assert (=> b!1700004 m!2099059))

(declare-fun m!2099061 () Bool)

(assert (=> b!1700004 m!2099061))

(assert (=> b!1700009 m!2099055))

(declare-fun m!2099063 () Bool)

(assert (=> b!1700009 m!2099063))

(declare-fun m!2099065 () Bool)

(assert (=> b!1700005 m!2099065))

(assert (=> b!1700011 m!2099055))

(assert (=> b!1700011 m!2099057))

(assert (=> b!1700011 m!2099057))

(assert (=> b!1700011 m!2099059))

(declare-fun m!2099067 () Bool)

(assert (=> bm!108940 m!2099067))

(declare-fun m!2099069 () Bool)

(assert (=> b!1700010 m!2099069))

(assert (=> b!1700012 m!2099055))

(declare-fun m!2099071 () Bool)

(assert (=> b!1700012 m!2099071))

(declare-fun m!2099073 () Bool)

(assert (=> b!1700012 m!2099073))

(assert (=> b!1700008 m!2099055))

(declare-fun m!2099075 () Bool)

(assert (=> b!1700008 m!2099075))

(assert (=> b!1700008 m!2099075))

(declare-fun m!2099077 () Bool)

(assert (=> b!1700008 m!2099077))

(assert (=> b!1700007 m!2099055))

(assert (=> b!1700007 m!2099057))

(assert (=> b!1700007 m!2099057))

(assert (=> b!1700007 m!2099059))

(assert (=> b!1700007 m!2099059))

(declare-fun m!2099079 () Bool)

(assert (=> b!1700007 m!2099079))

(declare-fun m!2099081 () Bool)

(assert (=> d!521246 m!2099081))

(declare-fun m!2099083 () Bool)

(assert (=> d!521246 m!2099083))

(declare-fun m!2099085 () Bool)

(assert (=> d!521246 m!2099085))

(assert (=> d!521246 m!2099033))

(assert (=> b!1699842 d!521246))

(declare-fun d!521248 () Bool)

(declare-fun lt!648664 () BalanceConc!12276)

(assert (=> d!521248 (= (list!7455 lt!648664) (printList!1001 thiss!17113 (list!7456 (seqFromList!2256 tokens!457))))))

(assert (=> d!521248 (= lt!648664 (printTailRec!939 thiss!17113 (seqFromList!2256 tokens!457) 0 (BalanceConc!12277 Empty!6166)))))

(assert (=> d!521248 (= (print!1419 thiss!17113 (seqFromList!2256 tokens!457)) lt!648664)))

(declare-fun bs!401050 () Bool)

(assert (= bs!401050 d!521248))

(declare-fun m!2099087 () Bool)

(assert (=> bs!401050 m!2099087))

(assert (=> bs!401050 m!2098787))

(declare-fun m!2099089 () Bool)

(assert (=> bs!401050 m!2099089))

(assert (=> bs!401050 m!2099089))

(declare-fun m!2099091 () Bool)

(assert (=> bs!401050 m!2099091))

(assert (=> bs!401050 m!2098787))

(declare-fun m!2099093 () Bool)

(assert (=> bs!401050 m!2099093))

(assert (=> b!1699841 d!521248))

(declare-fun d!521250 () Bool)

(declare-fun list!7459 (Conc!6166) List!18583)

(assert (=> d!521250 (= (list!7455 lt!648516) (list!7459 (c!278575 lt!648516)))))

(declare-fun bs!401051 () Bool)

(assert (= bs!401051 d!521250))

(declare-fun m!2099095 () Bool)

(assert (=> bs!401051 m!2099095))

(assert (=> b!1699841 d!521250))

(declare-fun d!521252 () Bool)

(assert (=> d!521252 (= (list!7455 lt!648520) (list!7459 (c!278575 lt!648520)))))

(declare-fun bs!401052 () Bool)

(assert (= bs!401052 d!521252))

(declare-fun m!2099097 () Bool)

(assert (=> bs!401052 m!2099097))

(assert (=> b!1699841 d!521252))

(declare-fun d!521254 () Bool)

(declare-fun fromListB!1039 (List!18586) BalanceConc!12278)

(assert (=> d!521254 (= (seqFromList!2256 tokens!457) (fromListB!1039 tokens!457))))

(declare-fun bs!401053 () Bool)

(assert (= bs!401053 d!521254))

(declare-fun m!2099099 () Bool)

(assert (=> bs!401053 m!2099099))

(assert (=> b!1699841 d!521254))

(declare-fun d!521256 () Bool)

(declare-fun lt!648667 () BalanceConc!12276)

(assert (=> d!521256 (= (list!7455 lt!648667) (originalCharacters!4073 (h!23917 tokens!457)))))

(declare-fun dynLambda!8424 (Int TokenValue!3349) BalanceConc!12276)

(assert (=> d!521256 (= lt!648667 (dynLambda!8424 (toChars!4605 (transformation!3259 (rule!5181 (h!23917 tokens!457)))) (value!102554 (h!23917 tokens!457))))))

(assert (=> d!521256 (= (charsOf!1908 (h!23917 tokens!457)) lt!648667)))

(declare-fun b_lambda!53659 () Bool)

(assert (=> (not b_lambda!53659) (not d!521256)))

(declare-fun t!157368 () Bool)

(declare-fun tb!100275 () Bool)

(assert (=> (and b!1699833 (= (toChars!4605 (transformation!3259 (h!23916 rules!1846))) (toChars!4605 (transformation!3259 (rule!5181 (h!23917 tokens!457))))) t!157368) tb!100275))

(declare-fun b!1700017 () Bool)

(declare-fun e!1087371 () Bool)

(declare-fun tp!485818 () Bool)

(declare-fun inv!23893 (Conc!6166) Bool)

(assert (=> b!1700017 (= e!1087371 (and (inv!23893 (c!278575 (dynLambda!8424 (toChars!4605 (transformation!3259 (rule!5181 (h!23917 tokens!457)))) (value!102554 (h!23917 tokens!457))))) tp!485818))))

(declare-fun result!120416 () Bool)

(declare-fun inv!23894 (BalanceConc!12276) Bool)

(assert (=> tb!100275 (= result!120416 (and (inv!23894 (dynLambda!8424 (toChars!4605 (transformation!3259 (rule!5181 (h!23917 tokens!457)))) (value!102554 (h!23917 tokens!457)))) e!1087371))))

(assert (= tb!100275 b!1700017))

(declare-fun m!2099101 () Bool)

(assert (=> b!1700017 m!2099101))

(declare-fun m!2099103 () Bool)

(assert (=> tb!100275 m!2099103))

(assert (=> d!521256 t!157368))

(declare-fun b_and!122625 () Bool)

(assert (= b_and!122615 (and (=> t!157368 result!120416) b_and!122625)))

(declare-fun t!157370 () Bool)

(declare-fun tb!100277 () Bool)

(assert (=> (and b!1699824 (= (toChars!4605 (transformation!3259 (rule!5181 (h!23917 tokens!457)))) (toChars!4605 (transformation!3259 (rule!5181 (h!23917 tokens!457))))) t!157370) tb!100277))

(declare-fun result!120420 () Bool)

(assert (= result!120420 result!120416))

(assert (=> d!521256 t!157370))

(declare-fun b_and!122627 () Bool)

(assert (= b_and!122619 (and (=> t!157370 result!120420) b_and!122627)))

(declare-fun m!2099105 () Bool)

(assert (=> d!521256 m!2099105))

(declare-fun m!2099107 () Bool)

(assert (=> d!521256 m!2099107))

(assert (=> b!1699841 d!521256))

(declare-fun d!521258 () Bool)

(assert (=> d!521258 (= (seqFromList!2256 (t!157361 tokens!457)) (fromListB!1039 (t!157361 tokens!457)))))

(declare-fun bs!401054 () Bool)

(assert (= bs!401054 d!521258))

(declare-fun m!2099109 () Bool)

(assert (=> bs!401054 m!2099109))

(assert (=> b!1699841 d!521258))

(declare-fun b!1700018 () Bool)

(declare-fun e!1087374 () Bool)

(declare-fun lt!648668 () tuple2!18282)

(assert (=> b!1700018 (= e!1087374 (= (list!7455 (_2!10543 lt!648668)) (_2!10546 (lexList!910 thiss!17113 rules!1846 (list!7455 lt!648520)))))))

(declare-fun b!1700019 () Bool)

(declare-fun e!1087372 () Bool)

(declare-fun e!1087373 () Bool)

(assert (=> b!1700019 (= e!1087372 e!1087373)))

(declare-fun res!761966 () Bool)

(assert (=> b!1700019 (= res!761966 (< (size!14762 (_2!10543 lt!648668)) (size!14762 lt!648520)))))

(assert (=> b!1700019 (=> (not res!761966) (not e!1087373))))

(declare-fun d!521260 () Bool)

(assert (=> d!521260 e!1087374))

(declare-fun res!761965 () Bool)

(assert (=> d!521260 (=> (not res!761965) (not e!1087374))))

(assert (=> d!521260 (= res!761965 e!1087372)))

(declare-fun c!278612 () Bool)

(assert (=> d!521260 (= c!278612 (> (size!14763 (_1!10543 lt!648668)) 0))))

(assert (=> d!521260 (= lt!648668 (lexTailRecV2!633 thiss!17113 rules!1846 lt!648520 (BalanceConc!12277 Empty!6166) lt!648520 (BalanceConc!12279 Empty!6167)))))

(assert (=> d!521260 (= (lex!1372 thiss!17113 rules!1846 lt!648520) lt!648668)))

(declare-fun b!1700020 () Bool)

(assert (=> b!1700020 (= e!1087373 (not (isEmpty!11609 (_1!10543 lt!648668))))))

(declare-fun b!1700021 () Bool)

(declare-fun res!761964 () Bool)

(assert (=> b!1700021 (=> (not res!761964) (not e!1087374))))

(assert (=> b!1700021 (= res!761964 (= (list!7456 (_1!10543 lt!648668)) (_1!10546 (lexList!910 thiss!17113 rules!1846 (list!7455 lt!648520)))))))

(declare-fun b!1700022 () Bool)

(assert (=> b!1700022 (= e!1087372 (= (_2!10543 lt!648668) lt!648520))))

(assert (= (and d!521260 c!278612) b!1700019))

(assert (= (and d!521260 (not c!278612)) b!1700022))

(assert (= (and b!1700019 res!761966) b!1700020))

(assert (= (and d!521260 res!761965) b!1700021))

(assert (= (and b!1700021 res!761964) b!1700018))

(declare-fun m!2099111 () Bool)

(assert (=> d!521260 m!2099111))

(declare-fun m!2099113 () Bool)

(assert (=> d!521260 m!2099113))

(declare-fun m!2099115 () Bool)

(assert (=> b!1700018 m!2099115))

(assert (=> b!1700018 m!2098781))

(assert (=> b!1700018 m!2098781))

(declare-fun m!2099117 () Bool)

(assert (=> b!1700018 m!2099117))

(declare-fun m!2099119 () Bool)

(assert (=> b!1700020 m!2099119))

(declare-fun m!2099121 () Bool)

(assert (=> b!1700019 m!2099121))

(declare-fun m!2099123 () Bool)

(assert (=> b!1700019 m!2099123))

(declare-fun m!2099125 () Bool)

(assert (=> b!1700021 m!2099125))

(assert (=> b!1700021 m!2098781))

(assert (=> b!1700021 m!2098781))

(assert (=> b!1700021 m!2099117))

(assert (=> b!1699841 d!521260))

(declare-fun d!521262 () Bool)

(declare-fun e!1087380 () Bool)

(assert (=> d!521262 e!1087380))

(declare-fun res!761971 () Bool)

(assert (=> d!521262 (=> (not res!761971) (not e!1087380))))

(declare-fun lt!648671 () List!18583)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2623 (List!18583) (InoxSet C!9348))

(assert (=> d!521262 (= res!761971 (= (content!2623 lt!648671) ((_ map or) (content!2623 lt!648521) (content!2623 lt!648523))))))

(declare-fun e!1087379 () List!18583)

(assert (=> d!521262 (= lt!648671 e!1087379)))

(declare-fun c!278615 () Bool)

(assert (=> d!521262 (= c!278615 ((_ is Nil!18513) lt!648521))))

(assert (=> d!521262 (= (++!5085 lt!648521 lt!648523) lt!648671)))

(declare-fun b!1700032 () Bool)

(assert (=> b!1700032 (= e!1087379 (Cons!18513 (h!23914 lt!648521) (++!5085 (t!157358 lt!648521) lt!648523)))))

(declare-fun b!1700034 () Bool)

(assert (=> b!1700034 (= e!1087380 (or (not (= lt!648523 Nil!18513)) (= lt!648671 lt!648521)))))

(declare-fun b!1700033 () Bool)

(declare-fun res!761972 () Bool)

(assert (=> b!1700033 (=> (not res!761972) (not e!1087380))))

(assert (=> b!1700033 (= res!761972 (= (size!14764 lt!648671) (+ (size!14764 lt!648521) (size!14764 lt!648523))))))

(declare-fun b!1700031 () Bool)

(assert (=> b!1700031 (= e!1087379 lt!648523)))

(assert (= (and d!521262 c!278615) b!1700031))

(assert (= (and d!521262 (not c!278615)) b!1700032))

(assert (= (and d!521262 res!761971) b!1700033))

(assert (= (and b!1700033 res!761972) b!1700034))

(declare-fun m!2099127 () Bool)

(assert (=> d!521262 m!2099127))

(declare-fun m!2099129 () Bool)

(assert (=> d!521262 m!2099129))

(declare-fun m!2099131 () Bool)

(assert (=> d!521262 m!2099131))

(declare-fun m!2099133 () Bool)

(assert (=> b!1700032 m!2099133))

(declare-fun m!2099135 () Bool)

(assert (=> b!1700033 m!2099135))

(assert (=> b!1700033 m!2099073))

(declare-fun m!2099137 () Bool)

(assert (=> b!1700033 m!2099137))

(assert (=> b!1699841 d!521262))

(declare-fun d!521264 () Bool)

(assert (=> d!521264 (= (list!7455 lt!648511) (list!7459 (c!278575 lt!648511)))))

(declare-fun bs!401055 () Bool)

(assert (= bs!401055 d!521264))

(declare-fun m!2099139 () Bool)

(assert (=> bs!401055 m!2099139))

(assert (=> b!1699841 d!521264))

(declare-fun d!521266 () Bool)

(declare-fun lt!648672 () BalanceConc!12276)

(assert (=> d!521266 (= (list!7455 lt!648672) (printList!1001 thiss!17113 (list!7456 lt!648533)))))

(assert (=> d!521266 (= lt!648672 (printTailRec!939 thiss!17113 lt!648533 0 (BalanceConc!12277 Empty!6166)))))

(assert (=> d!521266 (= (print!1419 thiss!17113 lt!648533) lt!648672)))

(declare-fun bs!401056 () Bool)

(assert (= bs!401056 d!521266))

(declare-fun m!2099141 () Bool)

(assert (=> bs!401056 m!2099141))

(assert (=> bs!401056 m!2098761))

(assert (=> bs!401056 m!2098761))

(declare-fun m!2099143 () Bool)

(assert (=> bs!401056 m!2099143))

(declare-fun m!2099145 () Bool)

(assert (=> bs!401056 m!2099145))

(assert (=> b!1699841 d!521266))

(declare-fun d!521268 () Bool)

(declare-fun e!1087383 () Bool)

(assert (=> d!521268 e!1087383))

(declare-fun res!761975 () Bool)

(assert (=> d!521268 (=> (not res!761975) (not e!1087383))))

(declare-fun isBalanced!1937 (Conc!6167) Bool)

(declare-fun prepend!861 (Conc!6167 Token!6084) Conc!6167)

(assert (=> d!521268 (= res!761975 (isBalanced!1937 (prepend!861 (c!278577 (seqFromList!2256 (t!157361 (t!157361 tokens!457)))) (h!23917 (t!157361 tokens!457)))))))

(declare-fun lt!648675 () BalanceConc!12278)

(assert (=> d!521268 (= lt!648675 (BalanceConc!12279 (prepend!861 (c!278577 (seqFromList!2256 (t!157361 (t!157361 tokens!457)))) (h!23917 (t!157361 tokens!457)))))))

(assert (=> d!521268 (= (prepend!859 (seqFromList!2256 (t!157361 (t!157361 tokens!457))) (h!23917 (t!157361 tokens!457))) lt!648675)))

(declare-fun b!1700037 () Bool)

(assert (=> b!1700037 (= e!1087383 (= (list!7456 lt!648675) (Cons!18516 (h!23917 (t!157361 tokens!457)) (list!7456 (seqFromList!2256 (t!157361 (t!157361 tokens!457)))))))))

(assert (= (and d!521268 res!761975) b!1700037))

(declare-fun m!2099147 () Bool)

(assert (=> d!521268 m!2099147))

(assert (=> d!521268 m!2099147))

(declare-fun m!2099149 () Bool)

(assert (=> d!521268 m!2099149))

(declare-fun m!2099151 () Bool)

(assert (=> b!1700037 m!2099151))

(assert (=> b!1700037 m!2098759))

(declare-fun m!2099153 () Bool)

(assert (=> b!1700037 m!2099153))

(assert (=> b!1699845 d!521268))

(declare-fun d!521270 () Bool)

(declare-fun list!7460 (Conc!6167) List!18586)

(assert (=> d!521270 (= (list!7456 (prepend!859 (seqFromList!2256 (t!157361 (t!157361 tokens!457))) (h!23917 (t!157361 tokens!457)))) (list!7460 (c!278577 (prepend!859 (seqFromList!2256 (t!157361 (t!157361 tokens!457))) (h!23917 (t!157361 tokens!457))))))))

(declare-fun bs!401057 () Bool)

(assert (= bs!401057 d!521270))

(declare-fun m!2099155 () Bool)

(assert (=> bs!401057 m!2099155))

(assert (=> b!1699845 d!521270))

(declare-fun d!521272 () Bool)

(assert (=> d!521272 (= (list!7456 lt!648533) (list!7460 (c!278577 lt!648533)))))

(declare-fun bs!401058 () Bool)

(assert (= bs!401058 d!521272))

(declare-fun m!2099157 () Bool)

(assert (=> bs!401058 m!2099157))

(assert (=> b!1699845 d!521272))

(declare-fun d!521274 () Bool)

(assert (=> d!521274 (= (seqFromList!2256 (t!157361 (t!157361 tokens!457))) (fromListB!1039 (t!157361 (t!157361 tokens!457))))))

(declare-fun bs!401059 () Bool)

(assert (= bs!401059 d!521274))

(declare-fun m!2099159 () Bool)

(assert (=> bs!401059 m!2099159))

(assert (=> b!1699845 d!521274))

(declare-fun d!521276 () Bool)

(assert (=> d!521276 (= (list!7456 (_1!10543 lt!648514)) (list!7456 (prepend!859 (seqFromList!2256 (t!157361 (t!157361 tokens!457))) (h!23917 (t!157361 tokens!457)))))))

(declare-fun lt!648678 () Unit!32215)

(declare-fun choose!10309 (Token!6084 List!18586 BalanceConc!12278) Unit!32215)

(assert (=> d!521276 (= lt!648678 (choose!10309 (h!23917 (t!157361 tokens!457)) (t!157361 (t!157361 tokens!457)) (_1!10543 lt!648514)))))

(declare-fun $colon$colon!416 (List!18586 Token!6084) List!18586)

(assert (=> d!521276 (= (list!7456 (_1!10543 lt!648514)) (list!7456 (seqFromList!2256 ($colon$colon!416 (t!157361 (t!157361 tokens!457)) (h!23917 (t!157361 tokens!457))))))))

(assert (=> d!521276 (= (seqFromListBHdTlConstructive!328 (h!23917 (t!157361 tokens!457)) (t!157361 (t!157361 tokens!457)) (_1!10543 lt!648514)) lt!648678)))

(declare-fun bs!401060 () Bool)

(assert (= bs!401060 d!521276))

(declare-fun m!2099161 () Bool)

(assert (=> bs!401060 m!2099161))

(assert (=> bs!401060 m!2098759))

(assert (=> bs!401060 m!2098755))

(assert (=> bs!401060 m!2098759))

(assert (=> bs!401060 m!2098755))

(assert (=> bs!401060 m!2098757))

(assert (=> bs!401060 m!2098719))

(assert (=> bs!401060 m!2099161))

(declare-fun m!2099163 () Bool)

(assert (=> bs!401060 m!2099163))

(declare-fun m!2099165 () Bool)

(assert (=> bs!401060 m!2099165))

(assert (=> bs!401060 m!2099163))

(declare-fun m!2099167 () Bool)

(assert (=> bs!401060 m!2099167))

(assert (=> b!1699845 d!521276))

(declare-fun d!521278 () Bool)

(declare-fun isEmpty!11620 (Option!3582) Bool)

(assert (=> d!521278 (= (isDefined!2929 (maxPrefixZipperSequence!759 thiss!17113 rules!1846 (seqFromList!2255 (originalCharacters!4073 (h!23917 tokens!457))))) (not (isEmpty!11620 (maxPrefixZipperSequence!759 thiss!17113 rules!1846 (seqFromList!2255 (originalCharacters!4073 (h!23917 tokens!457)))))))))

(declare-fun bs!401061 () Bool)

(assert (= bs!401061 d!521278))

(assert (=> bs!401061 m!2098811))

(declare-fun m!2099169 () Bool)

(assert (=> bs!401061 m!2099169))

(assert (=> b!1699823 d!521278))

(declare-fun b!1700054 () Bool)

(declare-fun e!1087399 () Option!3582)

(declare-fun call!108948 () Option!3582)

(assert (=> b!1700054 (= e!1087399 call!108948)))

(declare-fun b!1700055 () Bool)

(declare-fun res!761990 () Bool)

(declare-fun e!1087396 () Bool)

(assert (=> b!1700055 (=> (not res!761990) (not e!1087396))))

(declare-fun e!1087397 () Bool)

(assert (=> b!1700055 (= res!761990 e!1087397)))

(declare-fun res!761991 () Bool)

(assert (=> b!1700055 (=> res!761991 e!1087397)))

(declare-fun lt!648696 () Option!3582)

(assert (=> b!1700055 (= res!761991 (not (isDefined!2929 lt!648696)))))

(declare-fun b!1700056 () Bool)

(declare-fun e!1087400 () Bool)

(declare-fun get!5437 (Option!3582) tuple2!18284)

(assert (=> b!1700056 (= e!1087400 (= (list!7455 (_2!10544 (get!5437 lt!648696))) (_2!10545 (get!5434 (maxPrefix!1448 thiss!17113 rules!1846 (list!7455 (seqFromList!2255 (originalCharacters!4073 (h!23917 tokens!457)))))))))))

(declare-fun b!1700057 () Bool)

(declare-fun e!1087401 () Bool)

(assert (=> b!1700057 (= e!1087397 e!1087401)))

(declare-fun res!761993 () Bool)

(assert (=> b!1700057 (=> (not res!761993) (not e!1087401))))

(declare-fun maxPrefixZipper!374 (LexerInterface!2888 List!18585 List!18583) Option!3583)

(assert (=> b!1700057 (= res!761993 (= (_1!10544 (get!5437 lt!648696)) (_1!10545 (get!5434 (maxPrefixZipper!374 thiss!17113 rules!1846 (list!7455 (seqFromList!2255 (originalCharacters!4073 (h!23917 tokens!457)))))))))))

(declare-fun b!1700058 () Bool)

(declare-fun e!1087398 () Bool)

(assert (=> b!1700058 (= e!1087396 e!1087398)))

(declare-fun res!761989 () Bool)

(assert (=> b!1700058 (=> res!761989 e!1087398)))

(assert (=> b!1700058 (= res!761989 (not (isDefined!2929 lt!648696)))))

(declare-fun bm!108943 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!366 (LexerInterface!2888 Rule!6318 BalanceConc!12276) Option!3582)

(assert (=> bm!108943 (= call!108948 (maxPrefixOneRuleZipperSequence!366 thiss!17113 (h!23916 rules!1846) (seqFromList!2255 (originalCharacters!4073 (h!23917 tokens!457)))))))

(declare-fun b!1700059 () Bool)

(assert (=> b!1700059 (= e!1087401 (= (list!7455 (_2!10544 (get!5437 lt!648696))) (_2!10545 (get!5434 (maxPrefixZipper!374 thiss!17113 rules!1846 (list!7455 (seqFromList!2255 (originalCharacters!4073 (h!23917 tokens!457)))))))))))

(declare-fun b!1700060 () Bool)

(declare-fun lt!648698 () Option!3582)

(declare-fun lt!648697 () Option!3582)

(assert (=> b!1700060 (= e!1087399 (ite (and ((_ is None!3581) lt!648698) ((_ is None!3581) lt!648697)) None!3581 (ite ((_ is None!3581) lt!648697) lt!648698 (ite ((_ is None!3581) lt!648698) lt!648697 (ite (>= (size!14758 (_1!10544 (v!24934 lt!648698))) (size!14758 (_1!10544 (v!24934 lt!648697)))) lt!648698 lt!648697)))))))

(assert (=> b!1700060 (= lt!648698 call!108948)))

(assert (=> b!1700060 (= lt!648697 (maxPrefixZipperSequence!759 thiss!17113 (t!157360 rules!1846) (seqFromList!2255 (originalCharacters!4073 (h!23917 tokens!457)))))))

(declare-fun d!521280 () Bool)

(assert (=> d!521280 e!1087396))

(declare-fun res!761992 () Bool)

(assert (=> d!521280 (=> (not res!761992) (not e!1087396))))

(assert (=> d!521280 (= res!761992 (= (isDefined!2929 lt!648696) (isDefined!2930 (maxPrefixZipper!374 thiss!17113 rules!1846 (list!7455 (seqFromList!2255 (originalCharacters!4073 (h!23917 tokens!457))))))))))

(assert (=> d!521280 (= lt!648696 e!1087399)))

(declare-fun c!278619 () Bool)

(assert (=> d!521280 (= c!278619 (and ((_ is Cons!18515) rules!1846) ((_ is Nil!18515) (t!157360 rules!1846))))))

(declare-fun lt!648693 () Unit!32215)

(declare-fun lt!648694 () Unit!32215)

(assert (=> d!521280 (= lt!648693 lt!648694)))

(declare-fun lt!648699 () List!18583)

(declare-fun lt!648695 () List!18583)

(assert (=> d!521280 (isPrefix!1517 lt!648699 lt!648695)))

(assert (=> d!521280 (= lt!648694 (lemmaIsPrefixRefl!1033 lt!648699 lt!648695))))

(assert (=> d!521280 (= lt!648695 (list!7455 (seqFromList!2255 (originalCharacters!4073 (h!23917 tokens!457)))))))

(assert (=> d!521280 (= lt!648699 (list!7455 (seqFromList!2255 (originalCharacters!4073 (h!23917 tokens!457)))))))

(assert (=> d!521280 (rulesValidInductive!1055 thiss!17113 rules!1846)))

(assert (=> d!521280 (= (maxPrefixZipperSequence!759 thiss!17113 rules!1846 (seqFromList!2255 (originalCharacters!4073 (h!23917 tokens!457)))) lt!648696)))

(declare-fun b!1700061 () Bool)

(assert (=> b!1700061 (= e!1087398 e!1087400)))

(declare-fun res!761988 () Bool)

(assert (=> b!1700061 (=> (not res!761988) (not e!1087400))))

(assert (=> b!1700061 (= res!761988 (= (_1!10544 (get!5437 lt!648696)) (_1!10545 (get!5434 (maxPrefix!1448 thiss!17113 rules!1846 (list!7455 (seqFromList!2255 (originalCharacters!4073 (h!23917 tokens!457)))))))))))

(assert (= (and d!521280 c!278619) b!1700054))

(assert (= (and d!521280 (not c!278619)) b!1700060))

(assert (= (or b!1700054 b!1700060) bm!108943))

(assert (= (and d!521280 res!761992) b!1700055))

(assert (= (and b!1700055 (not res!761991)) b!1700057))

(assert (= (and b!1700057 res!761993) b!1700059))

(assert (= (and b!1700055 res!761990) b!1700058))

(assert (= (and b!1700058 (not res!761989)) b!1700061))

(assert (= (and b!1700061 res!761988) b!1700056))

(declare-fun m!2099171 () Bool)

(assert (=> b!1700059 m!2099171))

(declare-fun m!2099173 () Bool)

(assert (=> b!1700059 m!2099173))

(declare-fun m!2099175 () Bool)

(assert (=> b!1700059 m!2099175))

(assert (=> b!1700059 m!2099175))

(declare-fun m!2099177 () Bool)

(assert (=> b!1700059 m!2099177))

(assert (=> b!1700059 m!2098809))

(assert (=> b!1700059 m!2099173))

(declare-fun m!2099179 () Bool)

(assert (=> b!1700059 m!2099179))

(assert (=> b!1700057 m!2099179))

(assert (=> b!1700057 m!2098809))

(assert (=> b!1700057 m!2099173))

(assert (=> b!1700057 m!2099173))

(assert (=> b!1700057 m!2099175))

(assert (=> b!1700057 m!2099175))

(assert (=> b!1700057 m!2099177))

(assert (=> b!1700056 m!2099171))

(assert (=> b!1700056 m!2098809))

(assert (=> b!1700056 m!2099173))

(assert (=> b!1700056 m!2099179))

(assert (=> b!1700056 m!2099173))

(declare-fun m!2099181 () Bool)

(assert (=> b!1700056 m!2099181))

(assert (=> b!1700056 m!2099181))

(declare-fun m!2099183 () Bool)

(assert (=> b!1700056 m!2099183))

(declare-fun m!2099185 () Bool)

(assert (=> d!521280 m!2099185))

(assert (=> d!521280 m!2099175))

(declare-fun m!2099187 () Bool)

(assert (=> d!521280 m!2099187))

(assert (=> d!521280 m!2099173))

(assert (=> d!521280 m!2099175))

(assert (=> d!521280 m!2099033))

(declare-fun m!2099189 () Bool)

(assert (=> d!521280 m!2099189))

(declare-fun m!2099191 () Bool)

(assert (=> d!521280 m!2099191))

(assert (=> d!521280 m!2098809))

(assert (=> d!521280 m!2099173))

(assert (=> b!1700055 m!2099189))

(assert (=> b!1700058 m!2099189))

(assert (=> bm!108943 m!2098809))

(declare-fun m!2099193 () Bool)

(assert (=> bm!108943 m!2099193))

(assert (=> b!1700060 m!2098809))

(declare-fun m!2099195 () Bool)

(assert (=> b!1700060 m!2099195))

(assert (=> b!1700061 m!2099179))

(assert (=> b!1700061 m!2098809))

(assert (=> b!1700061 m!2099173))

(assert (=> b!1700061 m!2099173))

(assert (=> b!1700061 m!2099181))

(assert (=> b!1700061 m!2099181))

(assert (=> b!1700061 m!2099183))

(assert (=> b!1699823 d!521280))

(declare-fun d!521282 () Bool)

(assert (=> d!521282 (= (seqFromList!2255 (originalCharacters!4073 (h!23917 tokens!457))) (fromListB!1036 (originalCharacters!4073 (h!23917 tokens!457))))))

(declare-fun bs!401062 () Bool)

(assert (= bs!401062 d!521282))

(declare-fun m!2099197 () Bool)

(assert (=> bs!401062 m!2099197))

(assert (=> b!1699823 d!521282))

(declare-fun d!521284 () Bool)

(declare-fun lt!648791 () Bool)

(declare-fun e!1087430 () Bool)

(assert (=> d!521284 (= lt!648791 e!1087430)))

(declare-fun res!762023 () Bool)

(assert (=> d!521284 (=> (not res!762023) (not e!1087430))))

(assert (=> d!521284 (= res!762023 (= (list!7456 (_1!10543 (lex!1372 thiss!17113 rules!1846 (print!1419 thiss!17113 (singletonSeq!1786 (h!23917 tokens!457)))))) (list!7456 (singletonSeq!1786 (h!23917 tokens!457)))))))

(declare-fun e!1087431 () Bool)

(assert (=> d!521284 (= lt!648791 e!1087431)))

(declare-fun res!762021 () Bool)

(assert (=> d!521284 (=> (not res!762021) (not e!1087431))))

(declare-fun lt!648792 () tuple2!18282)

(assert (=> d!521284 (= res!762021 (= (size!14763 (_1!10543 lt!648792)) 1))))

(assert (=> d!521284 (= lt!648792 (lex!1372 thiss!17113 rules!1846 (print!1419 thiss!17113 (singletonSeq!1786 (h!23917 tokens!457)))))))

(assert (=> d!521284 (not (isEmpty!11610 rules!1846))))

(assert (=> d!521284 (= (rulesProduceIndividualToken!1536 thiss!17113 rules!1846 (h!23917 tokens!457)) lt!648791)))

(declare-fun b!1700107 () Bool)

(declare-fun res!762022 () Bool)

(assert (=> b!1700107 (=> (not res!762022) (not e!1087431))))

(declare-fun apply!5076 (BalanceConc!12278 Int) Token!6084)

(assert (=> b!1700107 (= res!762022 (= (apply!5076 (_1!10543 lt!648792) 0) (h!23917 tokens!457)))))

(declare-fun b!1700108 () Bool)

(declare-fun isEmpty!11621 (BalanceConc!12276) Bool)

(assert (=> b!1700108 (= e!1087431 (isEmpty!11621 (_2!10543 lt!648792)))))

(declare-fun b!1700109 () Bool)

(assert (=> b!1700109 (= e!1087430 (isEmpty!11621 (_2!10543 (lex!1372 thiss!17113 rules!1846 (print!1419 thiss!17113 (singletonSeq!1786 (h!23917 tokens!457)))))))))

(assert (= (and d!521284 res!762021) b!1700107))

(assert (= (and b!1700107 res!762022) b!1700108))

(assert (= (and d!521284 res!762023) b!1700109))

(declare-fun m!2099321 () Bool)

(assert (=> d!521284 m!2099321))

(declare-fun m!2099323 () Bool)

(assert (=> d!521284 m!2099323))

(assert (=> d!521284 m!2098737))

(assert (=> d!521284 m!2098747))

(declare-fun m!2099325 () Bool)

(assert (=> d!521284 m!2099325))

(declare-fun m!2099327 () Bool)

(assert (=> d!521284 m!2099327))

(assert (=> d!521284 m!2098747))

(assert (=> d!521284 m!2099321))

(assert (=> d!521284 m!2098747))

(declare-fun m!2099329 () Bool)

(assert (=> d!521284 m!2099329))

(declare-fun m!2099331 () Bool)

(assert (=> b!1700107 m!2099331))

(declare-fun m!2099333 () Bool)

(assert (=> b!1700108 m!2099333))

(assert (=> b!1700109 m!2098747))

(assert (=> b!1700109 m!2098747))

(assert (=> b!1700109 m!2099321))

(assert (=> b!1700109 m!2099321))

(assert (=> b!1700109 m!2099323))

(declare-fun m!2099335 () Bool)

(assert (=> b!1700109 m!2099335))

(assert (=> b!1699844 d!521284))

(declare-fun d!521300 () Bool)

(assert (=> d!521300 (= (inv!23886 (tag!3553 (h!23916 rules!1846))) (= (mod (str.len (value!102553 (tag!3553 (h!23916 rules!1846)))) 2) 0))))

(assert (=> b!1699822 d!521300))

(declare-fun d!521302 () Bool)

(declare-fun res!762026 () Bool)

(declare-fun e!1087434 () Bool)

(assert (=> d!521302 (=> (not res!762026) (not e!1087434))))

(declare-fun semiInverseModEq!1282 (Int Int) Bool)

(assert (=> d!521302 (= res!762026 (semiInverseModEq!1282 (toChars!4605 (transformation!3259 (h!23916 rules!1846))) (toValue!4746 (transformation!3259 (h!23916 rules!1846)))))))

(assert (=> d!521302 (= (inv!23889 (transformation!3259 (h!23916 rules!1846))) e!1087434)))

(declare-fun b!1700112 () Bool)

(declare-fun equivClasses!1223 (Int Int) Bool)

(assert (=> b!1700112 (= e!1087434 (equivClasses!1223 (toChars!4605 (transformation!3259 (h!23916 rules!1846))) (toValue!4746 (transformation!3259 (h!23916 rules!1846)))))))

(assert (= (and d!521302 res!762026) b!1700112))

(declare-fun m!2099337 () Bool)

(assert (=> d!521302 m!2099337))

(declare-fun m!2099339 () Bool)

(assert (=> b!1700112 m!2099339))

(assert (=> b!1699822 d!521302))

(declare-fun d!521304 () Bool)

(declare-fun lt!648810 () BalanceConc!12276)

(declare-fun printListTailRec!430 (LexerInterface!2888 List!18586 List!18583) List!18583)

(declare-fun dropList!746 (BalanceConc!12278 Int) List!18586)

(assert (=> d!521304 (= (list!7455 lt!648810) (printListTailRec!430 thiss!17113 (dropList!746 lt!648512 0) (list!7455 (BalanceConc!12277 Empty!6166))))))

(declare-fun e!1087439 () BalanceConc!12276)

(assert (=> d!521304 (= lt!648810 e!1087439)))

(declare-fun c!278631 () Bool)

(assert (=> d!521304 (= c!278631 (>= 0 (size!14763 lt!648512)))))

(declare-fun e!1087440 () Bool)

(assert (=> d!521304 e!1087440))

(declare-fun res!762029 () Bool)

(assert (=> d!521304 (=> (not res!762029) (not e!1087440))))

(assert (=> d!521304 (= res!762029 (>= 0 0))))

(assert (=> d!521304 (= (printTailRec!939 thiss!17113 lt!648512 0 (BalanceConc!12277 Empty!6166)) lt!648810)))

(declare-fun b!1700119 () Bool)

(assert (=> b!1700119 (= e!1087440 (<= 0 (size!14763 lt!648512)))))

(declare-fun b!1700120 () Bool)

(assert (=> b!1700120 (= e!1087439 (BalanceConc!12277 Empty!6166))))

(declare-fun b!1700121 () Bool)

(assert (=> b!1700121 (= e!1087439 (printTailRec!939 thiss!17113 lt!648512 (+ 0 1) (++!5086 (BalanceConc!12277 Empty!6166) (charsOf!1908 (apply!5076 lt!648512 0)))))))

(declare-fun lt!648813 () List!18586)

(assert (=> b!1700121 (= lt!648813 (list!7456 lt!648512))))

(declare-fun lt!648812 () Unit!32215)

(declare-fun lemmaDropApply!637 (List!18586 Int) Unit!32215)

(assert (=> b!1700121 (= lt!648812 (lemmaDropApply!637 lt!648813 0))))

(declare-fun head!3803 (List!18586) Token!6084)

(declare-fun drop!967 (List!18586 Int) List!18586)

(declare-fun apply!5077 (List!18586 Int) Token!6084)

(assert (=> b!1700121 (= (head!3803 (drop!967 lt!648813 0)) (apply!5077 lt!648813 0))))

(declare-fun lt!648808 () Unit!32215)

(assert (=> b!1700121 (= lt!648808 lt!648812)))

(declare-fun lt!648809 () List!18586)

(assert (=> b!1700121 (= lt!648809 (list!7456 lt!648512))))

(declare-fun lt!648811 () Unit!32215)

(declare-fun lemmaDropTail!617 (List!18586 Int) Unit!32215)

(assert (=> b!1700121 (= lt!648811 (lemmaDropTail!617 lt!648809 0))))

(declare-fun tail!2531 (List!18586) List!18586)

(assert (=> b!1700121 (= (tail!2531 (drop!967 lt!648809 0)) (drop!967 lt!648809 (+ 0 1)))))

(declare-fun lt!648807 () Unit!32215)

(assert (=> b!1700121 (= lt!648807 lt!648811)))

(assert (= (and d!521304 res!762029) b!1700119))

(assert (= (and d!521304 c!278631) b!1700120))

(assert (= (and d!521304 (not c!278631)) b!1700121))

(declare-fun m!2099341 () Bool)

(assert (=> d!521304 m!2099341))

(declare-fun m!2099343 () Bool)

(assert (=> d!521304 m!2099343))

(declare-fun m!2099345 () Bool)

(assert (=> d!521304 m!2099345))

(declare-fun m!2099347 () Bool)

(assert (=> d!521304 m!2099347))

(assert (=> d!521304 m!2099341))

(assert (=> d!521304 m!2099345))

(declare-fun m!2099349 () Bool)

(assert (=> d!521304 m!2099349))

(assert (=> b!1700119 m!2099343))

(declare-fun m!2099351 () Bool)

(assert (=> b!1700121 m!2099351))

(declare-fun m!2099353 () Bool)

(assert (=> b!1700121 m!2099353))

(declare-fun m!2099355 () Bool)

(assert (=> b!1700121 m!2099355))

(declare-fun m!2099357 () Bool)

(assert (=> b!1700121 m!2099357))

(declare-fun m!2099359 () Bool)

(assert (=> b!1700121 m!2099359))

(declare-fun m!2099361 () Bool)

(assert (=> b!1700121 m!2099361))

(declare-fun m!2099363 () Bool)

(assert (=> b!1700121 m!2099363))

(assert (=> b!1700121 m!2099351))

(declare-fun m!2099365 () Bool)

(assert (=> b!1700121 m!2099365))

(declare-fun m!2099367 () Bool)

(assert (=> b!1700121 m!2099367))

(declare-fun m!2099369 () Bool)

(assert (=> b!1700121 m!2099369))

(assert (=> b!1700121 m!2099367))

(declare-fun m!2099371 () Bool)

(assert (=> b!1700121 m!2099371))

(assert (=> b!1700121 m!2099369))

(assert (=> b!1700121 m!2099355))

(assert (=> b!1700121 m!2099361))

(declare-fun m!2099373 () Bool)

(assert (=> b!1700121 m!2099373))

(declare-fun m!2099375 () Bool)

(assert (=> b!1700121 m!2099375))

(assert (=> b!1699827 d!521304))

(declare-fun d!521306 () Bool)

(declare-fun lt!648814 () BalanceConc!12276)

(assert (=> d!521306 (= (list!7455 lt!648814) (printList!1001 thiss!17113 (list!7456 lt!648512)))))

(assert (=> d!521306 (= lt!648814 (printTailRec!939 thiss!17113 lt!648512 0 (BalanceConc!12277 Empty!6166)))))

(assert (=> d!521306 (= (print!1419 thiss!17113 lt!648512) lt!648814)))

(declare-fun bs!401066 () Bool)

(assert (= bs!401066 d!521306))

(declare-fun m!2099377 () Bool)

(assert (=> bs!401066 m!2099377))

(assert (=> bs!401066 m!2099365))

(assert (=> bs!401066 m!2099365))

(declare-fun m!2099379 () Bool)

(assert (=> bs!401066 m!2099379))

(assert (=> bs!401066 m!2098745))

(assert (=> b!1699827 d!521306))

(declare-fun bm!108944 () Bool)

(declare-fun call!108949 () Option!3583)

(assert (=> bm!108944 (= call!108949 (maxPrefixOneRule!849 thiss!17113 (h!23916 rules!1846) lt!648524))))

(declare-fun b!1700122 () Bool)

(declare-fun res!762030 () Bool)

(declare-fun e!1087441 () Bool)

(assert (=> b!1700122 (=> (not res!762030) (not e!1087441))))

(declare-fun lt!648819 () Option!3583)

(assert (=> b!1700122 (= res!762030 (matchR!2076 (regex!3259 (rule!5181 (_1!10545 (get!5434 lt!648819)))) (list!7455 (charsOf!1908 (_1!10545 (get!5434 lt!648819))))))))

(declare-fun b!1700123 () Bool)

(declare-fun e!1087442 () Bool)

(assert (=> b!1700123 (= e!1087442 e!1087441)))

(declare-fun res!762031 () Bool)

(assert (=> b!1700123 (=> (not res!762031) (not e!1087441))))

(assert (=> b!1700123 (= res!762031 (isDefined!2930 lt!648819))))

(declare-fun b!1700124 () Bool)

(declare-fun e!1087443 () Option!3583)

(assert (=> b!1700124 (= e!1087443 call!108949)))

(declare-fun b!1700125 () Bool)

(declare-fun res!762034 () Bool)

(assert (=> b!1700125 (=> (not res!762034) (not e!1087441))))

(assert (=> b!1700125 (= res!762034 (= (++!5085 (list!7455 (charsOf!1908 (_1!10545 (get!5434 lt!648819)))) (_2!10545 (get!5434 lt!648819))) lt!648524))))

(declare-fun b!1700126 () Bool)

(declare-fun res!762036 () Bool)

(assert (=> b!1700126 (=> (not res!762036) (not e!1087441))))

(assert (=> b!1700126 (= res!762036 (= (value!102554 (_1!10545 (get!5434 lt!648819))) (apply!5073 (transformation!3259 (rule!5181 (_1!10545 (get!5434 lt!648819)))) (seqFromList!2255 (originalCharacters!4073 (_1!10545 (get!5434 lt!648819)))))))))

(declare-fun d!521308 () Bool)

(assert (=> d!521308 e!1087442))

(declare-fun res!762032 () Bool)

(assert (=> d!521308 (=> res!762032 e!1087442)))

(assert (=> d!521308 (= res!762032 (isEmpty!11617 lt!648819))))

(assert (=> d!521308 (= lt!648819 e!1087443)))

(declare-fun c!278632 () Bool)

(assert (=> d!521308 (= c!278632 (and ((_ is Cons!18515) rules!1846) ((_ is Nil!18515) (t!157360 rules!1846))))))

(declare-fun lt!648818 () Unit!32215)

(declare-fun lt!648816 () Unit!32215)

(assert (=> d!521308 (= lt!648818 lt!648816)))

(assert (=> d!521308 (isPrefix!1517 lt!648524 lt!648524)))

(assert (=> d!521308 (= lt!648816 (lemmaIsPrefixRefl!1033 lt!648524 lt!648524))))

(assert (=> d!521308 (rulesValidInductive!1055 thiss!17113 rules!1846)))

(assert (=> d!521308 (= (maxPrefix!1448 thiss!17113 rules!1846 lt!648524) lt!648819)))

(declare-fun b!1700127 () Bool)

(assert (=> b!1700127 (= e!1087441 (contains!3267 rules!1846 (rule!5181 (_1!10545 (get!5434 lt!648819)))))))

(declare-fun b!1700128 () Bool)

(declare-fun lt!648817 () Option!3583)

(declare-fun lt!648815 () Option!3583)

(assert (=> b!1700128 (= e!1087443 (ite (and ((_ is None!3582) lt!648817) ((_ is None!3582) lt!648815)) None!3582 (ite ((_ is None!3582) lt!648815) lt!648817 (ite ((_ is None!3582) lt!648817) lt!648815 (ite (>= (size!14758 (_1!10545 (v!24935 lt!648817))) (size!14758 (_1!10545 (v!24935 lt!648815)))) lt!648817 lt!648815)))))))

(assert (=> b!1700128 (= lt!648817 call!108949)))

(assert (=> b!1700128 (= lt!648815 (maxPrefix!1448 thiss!17113 (t!157360 rules!1846) lt!648524))))

(declare-fun b!1700129 () Bool)

(declare-fun res!762033 () Bool)

(assert (=> b!1700129 (=> (not res!762033) (not e!1087441))))

(assert (=> b!1700129 (= res!762033 (= (list!7455 (charsOf!1908 (_1!10545 (get!5434 lt!648819)))) (originalCharacters!4073 (_1!10545 (get!5434 lt!648819)))))))

(declare-fun b!1700130 () Bool)

(declare-fun res!762035 () Bool)

(assert (=> b!1700130 (=> (not res!762035) (not e!1087441))))

(assert (=> b!1700130 (= res!762035 (< (size!14764 (_2!10545 (get!5434 lt!648819))) (size!14764 lt!648524)))))

(assert (= (and d!521308 c!278632) b!1700124))

(assert (= (and d!521308 (not c!278632)) b!1700128))

(assert (= (or b!1700124 b!1700128) bm!108944))

(assert (= (and d!521308 (not res!762032)) b!1700123))

(assert (= (and b!1700123 res!762031) b!1700129))

(assert (= (and b!1700129 res!762033) b!1700130))

(assert (= (and b!1700130 res!762035) b!1700125))

(assert (= (and b!1700125 res!762034) b!1700126))

(assert (= (and b!1700126 res!762036) b!1700122))

(assert (= (and b!1700122 res!762030) b!1700127))

(declare-fun m!2099381 () Bool)

(assert (=> b!1700122 m!2099381))

(declare-fun m!2099383 () Bool)

(assert (=> b!1700122 m!2099383))

(assert (=> b!1700122 m!2099383))

(declare-fun m!2099385 () Bool)

(assert (=> b!1700122 m!2099385))

(assert (=> b!1700122 m!2099385))

(declare-fun m!2099387 () Bool)

(assert (=> b!1700122 m!2099387))

(assert (=> b!1700127 m!2099381))

(declare-fun m!2099389 () Bool)

(assert (=> b!1700127 m!2099389))

(declare-fun m!2099391 () Bool)

(assert (=> b!1700123 m!2099391))

(assert (=> b!1700129 m!2099381))

(assert (=> b!1700129 m!2099383))

(assert (=> b!1700129 m!2099383))

(assert (=> b!1700129 m!2099385))

(declare-fun m!2099393 () Bool)

(assert (=> bm!108944 m!2099393))

(declare-fun m!2099395 () Bool)

(assert (=> b!1700128 m!2099395))

(assert (=> b!1700130 m!2099381))

(declare-fun m!2099397 () Bool)

(assert (=> b!1700130 m!2099397))

(declare-fun m!2099399 () Bool)

(assert (=> b!1700130 m!2099399))

(assert (=> b!1700126 m!2099381))

(declare-fun m!2099401 () Bool)

(assert (=> b!1700126 m!2099401))

(assert (=> b!1700126 m!2099401))

(declare-fun m!2099403 () Bool)

(assert (=> b!1700126 m!2099403))

(assert (=> b!1700125 m!2099381))

(assert (=> b!1700125 m!2099383))

(assert (=> b!1700125 m!2099383))

(assert (=> b!1700125 m!2099385))

(assert (=> b!1700125 m!2099385))

(declare-fun m!2099405 () Bool)

(assert (=> b!1700125 m!2099405))

(declare-fun m!2099407 () Bool)

(assert (=> d!521308 m!2099407))

(declare-fun m!2099409 () Bool)

(assert (=> d!521308 m!2099409))

(declare-fun m!2099411 () Bool)

(assert (=> d!521308 m!2099411))

(assert (=> d!521308 m!2099033))

(assert (=> b!1699827 d!521308))

(declare-fun d!521310 () Bool)

(assert (=> d!521310 (= (list!7455 lt!648515) (list!7459 (c!278575 lt!648515)))))

(declare-fun bs!401067 () Bool)

(assert (= bs!401067 d!521310))

(declare-fun m!2099413 () Bool)

(assert (=> bs!401067 m!2099413))

(assert (=> b!1699827 d!521310))

(declare-fun d!521312 () Bool)

(declare-fun c!278635 () Bool)

(assert (=> d!521312 (= c!278635 ((_ is Cons!18516) (Cons!18516 (h!23917 tokens!457) Nil!18516)))))

(declare-fun e!1087446 () List!18583)

(assert (=> d!521312 (= (printList!1001 thiss!17113 (Cons!18516 (h!23917 tokens!457) Nil!18516)) e!1087446)))

(declare-fun b!1700135 () Bool)

(assert (=> b!1700135 (= e!1087446 (++!5085 (list!7455 (charsOf!1908 (h!23917 (Cons!18516 (h!23917 tokens!457) Nil!18516)))) (printList!1001 thiss!17113 (t!157361 (Cons!18516 (h!23917 tokens!457) Nil!18516)))))))

(declare-fun b!1700136 () Bool)

(assert (=> b!1700136 (= e!1087446 Nil!18513)))

(assert (= (and d!521312 c!278635) b!1700135))

(assert (= (and d!521312 (not c!278635)) b!1700136))

(declare-fun m!2099415 () Bool)

(assert (=> b!1700135 m!2099415))

(assert (=> b!1700135 m!2099415))

(declare-fun m!2099417 () Bool)

(assert (=> b!1700135 m!2099417))

(declare-fun m!2099419 () Bool)

(assert (=> b!1700135 m!2099419))

(assert (=> b!1700135 m!2099417))

(assert (=> b!1700135 m!2099419))

(declare-fun m!2099421 () Bool)

(assert (=> b!1700135 m!2099421))

(assert (=> b!1699827 d!521312))

(declare-fun d!521314 () Bool)

(declare-fun e!1087449 () Bool)

(assert (=> d!521314 e!1087449))

(declare-fun res!762039 () Bool)

(assert (=> d!521314 (=> (not res!762039) (not e!1087449))))

(declare-fun lt!648822 () BalanceConc!12278)

(assert (=> d!521314 (= res!762039 (= (list!7456 lt!648822) (Cons!18516 (h!23917 tokens!457) Nil!18516)))))

(declare-fun singleton!810 (Token!6084) BalanceConc!12278)

(assert (=> d!521314 (= lt!648822 (singleton!810 (h!23917 tokens!457)))))

(assert (=> d!521314 (= (singletonSeq!1786 (h!23917 tokens!457)) lt!648822)))

(declare-fun b!1700139 () Bool)

(assert (=> b!1700139 (= e!1087449 (isBalanced!1937 (c!278577 lt!648822)))))

(assert (= (and d!521314 res!762039) b!1700139))

(declare-fun m!2099423 () Bool)

(assert (=> d!521314 m!2099423))

(declare-fun m!2099425 () Bool)

(assert (=> d!521314 m!2099425))

(declare-fun m!2099427 () Bool)

(assert (=> b!1700139 m!2099427))

(assert (=> b!1699827 d!521314))

(declare-fun d!521316 () Bool)

(assert (=> d!521316 (= (isEmpty!11611 (_2!10545 lt!648529)) ((_ is Nil!18513) (_2!10545 lt!648529)))))

(assert (=> b!1699848 d!521316))

(declare-fun d!521318 () Bool)

(declare-fun res!762054 () Bool)

(declare-fun e!1087460 () Bool)

(assert (=> d!521318 (=> res!762054 e!1087460)))

(assert (=> d!521318 (= res!762054 (or (not ((_ is Cons!18516) tokens!457)) (not ((_ is Cons!18516) (t!157361 tokens!457)))))))

(assert (=> d!521318 (= (tokensListTwoByTwoPredicateSeparableList!581 thiss!17113 tokens!457 rules!1846) e!1087460)))

(declare-fun b!1700153 () Bool)

(declare-fun e!1087461 () Bool)

(assert (=> b!1700153 (= e!1087460 e!1087461)))

(declare-fun res!762053 () Bool)

(assert (=> b!1700153 (=> (not res!762053) (not e!1087461))))

(assert (=> b!1700153 (= res!762053 (separableTokensPredicate!828 thiss!17113 (h!23917 tokens!457) (h!23917 (t!157361 tokens!457)) rules!1846))))

(declare-fun lt!648844 () Unit!32215)

(declare-fun Unit!32236 () Unit!32215)

(assert (=> b!1700153 (= lt!648844 Unit!32236)))

(assert (=> b!1700153 (> (size!14762 (charsOf!1908 (h!23917 (t!157361 tokens!457)))) 0)))

(declare-fun lt!648849 () Unit!32215)

(declare-fun Unit!32237 () Unit!32215)

(assert (=> b!1700153 (= lt!648849 Unit!32237)))

(assert (=> b!1700153 (rulesProduceIndividualToken!1536 thiss!17113 rules!1846 (h!23917 (t!157361 tokens!457)))))

(declare-fun lt!648847 () Unit!32215)

(declare-fun Unit!32238 () Unit!32215)

(assert (=> b!1700153 (= lt!648847 Unit!32238)))

(assert (=> b!1700153 (rulesProduceIndividualToken!1536 thiss!17113 rules!1846 (h!23917 tokens!457))))

(declare-fun lt!648846 () Unit!32215)

(declare-fun lt!648843 () Unit!32215)

(assert (=> b!1700153 (= lt!648846 lt!648843)))

(assert (=> b!1700153 (rulesProduceIndividualToken!1536 thiss!17113 rules!1846 (h!23917 (t!157361 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!646 (LexerInterface!2888 List!18585 List!18586 Token!6084) Unit!32215)

(assert (=> b!1700153 (= lt!648843 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!646 thiss!17113 rules!1846 tokens!457 (h!23917 (t!157361 tokens!457))))))

(declare-fun lt!648845 () Unit!32215)

(declare-fun lt!648848 () Unit!32215)

(assert (=> b!1700153 (= lt!648845 lt!648848)))

(assert (=> b!1700153 (rulesProduceIndividualToken!1536 thiss!17113 rules!1846 (h!23917 tokens!457))))

(assert (=> b!1700153 (= lt!648848 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!646 thiss!17113 rules!1846 tokens!457 (h!23917 tokens!457)))))

(declare-fun b!1700154 () Bool)

(assert (=> b!1700154 (= e!1087461 (tokensListTwoByTwoPredicateSeparableList!581 thiss!17113 (Cons!18516 (h!23917 (t!157361 tokens!457)) (t!157361 (t!157361 tokens!457))) rules!1846))))

(assert (= (and d!521318 (not res!762054)) b!1700153))

(assert (= (and b!1700153 res!762053) b!1700154))

(declare-fun m!2099445 () Bool)

(assert (=> b!1700153 m!2099445))

(assert (=> b!1700153 m!2098727))

(assert (=> b!1700153 m!2098751))

(assert (=> b!1700153 m!2098803))

(declare-fun m!2099447 () Bool)

(assert (=> b!1700153 m!2099447))

(assert (=> b!1700153 m!2098803))

(declare-fun m!2099449 () Bool)

(assert (=> b!1700153 m!2099449))

(declare-fun m!2099451 () Bool)

(assert (=> b!1700153 m!2099451))

(declare-fun m!2099453 () Bool)

(assert (=> b!1700154 m!2099453))

(assert (=> b!1699826 d!521318))

(declare-fun d!521324 () Bool)

(declare-fun c!278638 () Bool)

(assert (=> d!521324 (= c!278638 (isEmpty!11611 (++!5085 lt!648521 lt!648519)))))

(declare-fun e!1087464 () Bool)

(assert (=> d!521324 (= (prefixMatch!500 lt!648518 (++!5085 lt!648521 lt!648519)) e!1087464)))

(declare-fun b!1700159 () Bool)

(declare-fun lostCause!492 (Regex!4587) Bool)

(assert (=> b!1700159 (= e!1087464 (not (lostCause!492 lt!648518)))))

(declare-fun b!1700160 () Bool)

(assert (=> b!1700160 (= e!1087464 (prefixMatch!500 (derivativeStep!1144 lt!648518 (head!3800 (++!5085 lt!648521 lt!648519))) (tail!2529 (++!5085 lt!648521 lt!648519))))))

(assert (= (and d!521324 c!278638) b!1700159))

(assert (= (and d!521324 (not c!278638)) b!1700160))

(assert (=> d!521324 m!2098707))

(declare-fun m!2099455 () Bool)

(assert (=> d!521324 m!2099455))

(declare-fun m!2099457 () Bool)

(assert (=> b!1700159 m!2099457))

(assert (=> b!1700160 m!2098707))

(declare-fun m!2099459 () Bool)

(assert (=> b!1700160 m!2099459))

(assert (=> b!1700160 m!2099459))

(declare-fun m!2099461 () Bool)

(assert (=> b!1700160 m!2099461))

(assert (=> b!1700160 m!2098707))

(declare-fun m!2099463 () Bool)

(assert (=> b!1700160 m!2099463))

(assert (=> b!1700160 m!2099461))

(assert (=> b!1700160 m!2099463))

(declare-fun m!2099465 () Bool)

(assert (=> b!1700160 m!2099465))

(assert (=> b!1699825 d!521324))

(declare-fun d!521326 () Bool)

(declare-fun e!1087466 () Bool)

(assert (=> d!521326 e!1087466))

(declare-fun res!762055 () Bool)

(assert (=> d!521326 (=> (not res!762055) (not e!1087466))))

(declare-fun lt!648850 () List!18583)

(assert (=> d!521326 (= res!762055 (= (content!2623 lt!648850) ((_ map or) (content!2623 lt!648521) (content!2623 lt!648519))))))

(declare-fun e!1087465 () List!18583)

(assert (=> d!521326 (= lt!648850 e!1087465)))

(declare-fun c!278639 () Bool)

(assert (=> d!521326 (= c!278639 ((_ is Nil!18513) lt!648521))))

(assert (=> d!521326 (= (++!5085 lt!648521 lt!648519) lt!648850)))

(declare-fun b!1700162 () Bool)

(assert (=> b!1700162 (= e!1087465 (Cons!18513 (h!23914 lt!648521) (++!5085 (t!157358 lt!648521) lt!648519)))))

(declare-fun b!1700164 () Bool)

(assert (=> b!1700164 (= e!1087466 (or (not (= lt!648519 Nil!18513)) (= lt!648850 lt!648521)))))

(declare-fun b!1700163 () Bool)

(declare-fun res!762056 () Bool)

(assert (=> b!1700163 (=> (not res!762056) (not e!1087466))))

(assert (=> b!1700163 (= res!762056 (= (size!14764 lt!648850) (+ (size!14764 lt!648521) (size!14764 lt!648519))))))

(declare-fun b!1700161 () Bool)

(assert (=> b!1700161 (= e!1087465 lt!648519)))

(assert (= (and d!521326 c!278639) b!1700161))

(assert (= (and d!521326 (not c!278639)) b!1700162))

(assert (= (and d!521326 res!762055) b!1700163))

(assert (= (and b!1700163 res!762056) b!1700164))

(declare-fun m!2099467 () Bool)

(assert (=> d!521326 m!2099467))

(assert (=> d!521326 m!2099129))

(declare-fun m!2099469 () Bool)

(assert (=> d!521326 m!2099469))

(declare-fun m!2099471 () Bool)

(assert (=> b!1700162 m!2099471))

(declare-fun m!2099473 () Bool)

(assert (=> b!1700163 m!2099473))

(assert (=> b!1700163 m!2099073))

(declare-fun m!2099475 () Bool)

(assert (=> b!1700163 m!2099475))

(assert (=> b!1699825 d!521326))

(declare-fun d!521328 () Bool)

(assert (=> d!521328 (= (list!7455 lt!648513) (list!7459 (c!278575 lt!648513)))))

(declare-fun bs!401068 () Bool)

(assert (= bs!401068 d!521328))

(declare-fun m!2099477 () Bool)

(assert (=> bs!401068 m!2099477))

(assert (=> b!1699825 d!521328))

(declare-fun d!521330 () Bool)

(assert (=> d!521330 (= (list!7456 (_1!10543 lt!648514)) (list!7460 (c!278577 (_1!10543 lt!648514))))))

(declare-fun bs!401069 () Bool)

(assert (= bs!401069 d!521330))

(declare-fun m!2099479 () Bool)

(assert (=> bs!401069 m!2099479))

(assert (=> b!1699846 d!521330))

(declare-fun d!521332 () Bool)

(declare-fun e!1087475 () Bool)

(assert (=> d!521332 e!1087475))

(declare-fun res!762063 () Bool)

(assert (=> d!521332 (=> (not res!762063) (not e!1087475))))

(assert (=> d!521332 (= res!762063 (= (list!7456 (_1!10543 (lex!1372 thiss!17113 rules!1846 (print!1419 thiss!17113 (seqFromList!2256 (t!157361 tokens!457)))))) (t!157361 tokens!457)))))

(declare-fun lt!648927 () Unit!32215)

(declare-fun e!1087476 () Unit!32215)

(assert (=> d!521332 (= lt!648927 e!1087476)))

(declare-fun c!278642 () Bool)

(assert (=> d!521332 (= c!278642 (or ((_ is Nil!18516) (t!157361 tokens!457)) ((_ is Nil!18516) (t!157361 (t!157361 tokens!457)))))))

(assert (=> d!521332 (not (isEmpty!11610 rules!1846))))

(assert (=> d!521332 (= (theoremInvertabilityWhenTokenListSeparable!325 thiss!17113 rules!1846 (t!157361 tokens!457)) lt!648927)))

(declare-fun b!1700175 () Bool)

(declare-fun Unit!32239 () Unit!32215)

(assert (=> b!1700175 (= e!1087476 Unit!32239)))

(declare-fun b!1700176 () Bool)

(declare-fun Unit!32240 () Unit!32215)

(assert (=> b!1700176 (= e!1087476 Unit!32240)))

(declare-fun lt!648913 () BalanceConc!12276)

(assert (=> b!1700176 (= lt!648913 (print!1419 thiss!17113 (seqFromList!2256 (t!157361 tokens!457))))))

(declare-fun lt!648906 () BalanceConc!12276)

(assert (=> b!1700176 (= lt!648906 (print!1419 thiss!17113 (seqFromList!2256 (t!157361 (t!157361 tokens!457)))))))

(declare-fun lt!648914 () tuple2!18282)

(assert (=> b!1700176 (= lt!648914 (lex!1372 thiss!17113 rules!1846 lt!648906))))

(declare-fun lt!648929 () List!18583)

(assert (=> b!1700176 (= lt!648929 (list!7455 (charsOf!1908 (h!23917 (t!157361 tokens!457)))))))

(declare-fun lt!648921 () List!18583)

(assert (=> b!1700176 (= lt!648921 (list!7455 lt!648906))))

(declare-fun lt!648912 () Unit!32215)

(assert (=> b!1700176 (= lt!648912 (lemmaConcatTwoListThenFirstIsPrefix!1038 lt!648929 lt!648921))))

(assert (=> b!1700176 (isPrefix!1517 lt!648929 (++!5085 lt!648929 lt!648921))))

(declare-fun lt!648930 () Unit!32215)

(assert (=> b!1700176 (= lt!648930 lt!648912)))

(declare-fun lt!648925 () Unit!32215)

(assert (=> b!1700176 (= lt!648925 (theoremInvertabilityWhenTokenListSeparable!325 thiss!17113 rules!1846 (t!157361 (t!157361 tokens!457))))))

(declare-fun lt!648917 () Unit!32215)

(assert (=> b!1700176 (= lt!648917 (seqFromListBHdTlConstructive!328 (h!23917 (t!157361 (t!157361 tokens!457))) (t!157361 (t!157361 (t!157361 tokens!457))) (_1!10543 lt!648914)))))

(assert (=> b!1700176 (= (list!7456 (_1!10543 lt!648914)) (list!7456 (prepend!859 (seqFromList!2256 (t!157361 (t!157361 (t!157361 tokens!457)))) (h!23917 (t!157361 (t!157361 tokens!457))))))))

(declare-fun lt!648910 () Unit!32215)

(assert (=> b!1700176 (= lt!648910 lt!648917)))

(declare-fun lt!648926 () Option!3583)

(assert (=> b!1700176 (= lt!648926 (maxPrefix!1448 thiss!17113 rules!1846 (list!7455 lt!648913)))))

(assert (=> b!1700176 (= (print!1419 thiss!17113 (singletonSeq!1786 (h!23917 (t!157361 tokens!457)))) (printTailRec!939 thiss!17113 (singletonSeq!1786 (h!23917 (t!157361 tokens!457))) 0 (BalanceConc!12277 Empty!6166)))))

(declare-fun lt!648915 () Unit!32215)

(declare-fun Unit!32241 () Unit!32215)

(assert (=> b!1700176 (= lt!648915 Unit!32241)))

(declare-fun lt!648905 () Unit!32215)

(assert (=> b!1700176 (= lt!648905 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!450 thiss!17113 rules!1846 (list!7455 (charsOf!1908 (h!23917 (t!157361 tokens!457)))) (list!7455 lt!648906)))))

(assert (=> b!1700176 (= (list!7455 (charsOf!1908 (h!23917 (t!157361 tokens!457)))) (originalCharacters!4073 (h!23917 (t!157361 tokens!457))))))

(declare-fun lt!648928 () Unit!32215)

(declare-fun Unit!32242 () Unit!32215)

(assert (=> b!1700176 (= lt!648928 Unit!32242)))

(assert (=> b!1700176 (= (list!7455 (singletonSeq!1787 (apply!5069 (charsOf!1908 (h!23917 (t!157361 (t!157361 tokens!457)))) 0))) (Cons!18513 (head!3800 (originalCharacters!4073 (h!23917 (t!157361 (t!157361 tokens!457))))) Nil!18513))))

(declare-fun lt!648918 () Unit!32215)

(declare-fun Unit!32243 () Unit!32215)

(assert (=> b!1700176 (= lt!648918 Unit!32243)))

(assert (=> b!1700176 (= (list!7455 (singletonSeq!1787 (apply!5069 (charsOf!1908 (h!23917 (t!157361 (t!157361 tokens!457)))) 0))) (Cons!18513 (head!3800 (list!7455 lt!648906)) Nil!18513))))

(declare-fun lt!648923 () Unit!32215)

(declare-fun Unit!32244 () Unit!32215)

(assert (=> b!1700176 (= lt!648923 Unit!32244)))

(assert (=> b!1700176 (= (list!7455 (singletonSeq!1787 (apply!5069 (charsOf!1908 (h!23917 (t!157361 (t!157361 tokens!457)))) 0))) (Cons!18513 (head!3799 lt!648906) Nil!18513))))

(declare-fun lt!648919 () Unit!32215)

(declare-fun Unit!32245 () Unit!32215)

(assert (=> b!1700176 (= lt!648919 Unit!32245)))

(assert (=> b!1700176 (isDefined!2930 (maxPrefix!1448 thiss!17113 rules!1846 (originalCharacters!4073 (h!23917 (t!157361 tokens!457)))))))

(declare-fun lt!648922 () Unit!32215)

(declare-fun Unit!32246 () Unit!32215)

(assert (=> b!1700176 (= lt!648922 Unit!32246)))

(assert (=> b!1700176 (isDefined!2930 (maxPrefix!1448 thiss!17113 rules!1846 (list!7455 (charsOf!1908 (h!23917 (t!157361 tokens!457))))))))

(declare-fun lt!648908 () Unit!32215)

(declare-fun Unit!32247 () Unit!32215)

(assert (=> b!1700176 (= lt!648908 Unit!32247)))

(declare-fun lt!648924 () Unit!32215)

(declare-fun Unit!32248 () Unit!32215)

(assert (=> b!1700176 (= lt!648924 Unit!32248)))

(assert (=> b!1700176 (= (_1!10545 (get!5434 (maxPrefix!1448 thiss!17113 rules!1846 (list!7455 (charsOf!1908 (h!23917 (t!157361 tokens!457))))))) (h!23917 (t!157361 tokens!457)))))

(declare-fun lt!648907 () Unit!32215)

(declare-fun Unit!32249 () Unit!32215)

(assert (=> b!1700176 (= lt!648907 Unit!32249)))

(assert (=> b!1700176 (isEmpty!11611 (_2!10545 (get!5434 (maxPrefix!1448 thiss!17113 rules!1846 (list!7455 (charsOf!1908 (h!23917 (t!157361 tokens!457))))))))))

(declare-fun lt!648909 () Unit!32215)

(declare-fun Unit!32250 () Unit!32215)

(assert (=> b!1700176 (= lt!648909 Unit!32250)))

(assert (=> b!1700176 (matchR!2076 (regex!3259 (rule!5181 (h!23917 (t!157361 tokens!457)))) (list!7455 (charsOf!1908 (h!23917 (t!157361 tokens!457)))))))

(declare-fun lt!648911 () Unit!32215)

(declare-fun Unit!32251 () Unit!32215)

(assert (=> b!1700176 (= lt!648911 Unit!32251)))

(assert (=> b!1700176 (= (rule!5181 (h!23917 (t!157361 tokens!457))) (rule!5181 (h!23917 (t!157361 tokens!457))))))

(declare-fun lt!648920 () Unit!32215)

(declare-fun Unit!32252 () Unit!32215)

(assert (=> b!1700176 (= lt!648920 Unit!32252)))

(declare-fun lt!648916 () Unit!32215)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!205 (LexerInterface!2888 List!18585 Token!6084 Rule!6318 List!18583) Unit!32215)

(assert (=> b!1700176 (= lt!648916 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!205 thiss!17113 rules!1846 (h!23917 (t!157361 tokens!457)) (rule!5181 (h!23917 (t!157361 tokens!457))) (list!7455 lt!648906)))))

(declare-fun b!1700177 () Bool)

(assert (=> b!1700177 (= e!1087475 (isEmpty!11621 (_2!10543 (lex!1372 thiss!17113 rules!1846 (print!1419 thiss!17113 (seqFromList!2256 (t!157361 tokens!457)))))))))

(assert (= (and d!521332 c!278642) b!1700175))

(assert (= (and d!521332 (not c!278642)) b!1700176))

(assert (= (and d!521332 res!762063) b!1700177))

(declare-fun m!2099481 () Bool)

(assert (=> d!521332 m!2099481))

(declare-fun m!2099483 () Bool)

(assert (=> d!521332 m!2099483))

(assert (=> d!521332 m!2098779))

(assert (=> d!521332 m!2098779))

(assert (=> d!521332 m!2099481))

(assert (=> d!521332 m!2098737))

(declare-fun m!2099485 () Bool)

(assert (=> d!521332 m!2099485))

(declare-fun m!2099487 () Bool)

(assert (=> b!1700176 m!2099487))

(declare-fun m!2099489 () Bool)

(assert (=> b!1700176 m!2099489))

(declare-fun m!2099491 () Bool)

(assert (=> b!1700176 m!2099491))

(declare-fun m!2099493 () Bool)

(assert (=> b!1700176 m!2099493))

(declare-fun m!2099495 () Bool)

(assert (=> b!1700176 m!2099495))

(assert (=> b!1700176 m!2099493))

(declare-fun m!2099497 () Bool)

(assert (=> b!1700176 m!2099497))

(declare-fun m!2099499 () Bool)

(assert (=> b!1700176 m!2099499))

(declare-fun m!2099501 () Bool)

(assert (=> b!1700176 m!2099501))

(declare-fun m!2099503 () Bool)

(assert (=> b!1700176 m!2099503))

(declare-fun m!2099505 () Bool)

(assert (=> b!1700176 m!2099505))

(declare-fun m!2099507 () Bool)

(assert (=> b!1700176 m!2099507))

(declare-fun m!2099509 () Bool)

(assert (=> b!1700176 m!2099509))

(declare-fun m!2099511 () Bool)

(assert (=> b!1700176 m!2099511))

(declare-fun m!2099513 () Bool)

(assert (=> b!1700176 m!2099513))

(assert (=> b!1700176 m!2099509))

(declare-fun m!2099515 () Bool)

(assert (=> b!1700176 m!2099515))

(assert (=> b!1700176 m!2098759))

(declare-fun m!2099517 () Bool)

(assert (=> b!1700176 m!2099517))

(assert (=> b!1700176 m!2099493))

(declare-fun m!2099519 () Bool)

(assert (=> b!1700176 m!2099519))

(declare-fun m!2099521 () Bool)

(assert (=> b!1700176 m!2099521))

(declare-fun m!2099523 () Bool)

(assert (=> b!1700176 m!2099523))

(assert (=> b!1700176 m!2099501))

(assert (=> b!1700176 m!2098759))

(assert (=> b!1700176 m!2099505))

(assert (=> b!1700176 m!2098779))

(declare-fun m!2099525 () Bool)

(assert (=> b!1700176 m!2099525))

(assert (=> b!1700176 m!2099509))

(declare-fun m!2099527 () Bool)

(assert (=> b!1700176 m!2099527))

(declare-fun m!2099529 () Bool)

(assert (=> b!1700176 m!2099529))

(assert (=> b!1700176 m!2099511))

(declare-fun m!2099531 () Bool)

(assert (=> b!1700176 m!2099531))

(declare-fun m!2099533 () Bool)

(assert (=> b!1700176 m!2099533))

(declare-fun m!2099535 () Bool)

(assert (=> b!1700176 m!2099535))

(declare-fun m!2099539 () Bool)

(assert (=> b!1700176 m!2099539))

(declare-fun m!2099541 () Bool)

(assert (=> b!1700176 m!2099541))

(assert (=> b!1700176 m!2099539))

(declare-fun m!2099545 () Bool)

(assert (=> b!1700176 m!2099545))

(declare-fun m!2099547 () Bool)

(assert (=> b!1700176 m!2099547))

(assert (=> b!1700176 m!2099489))

(declare-fun m!2099549 () Bool)

(assert (=> b!1700176 m!2099549))

(assert (=> b!1700176 m!2099509))

(declare-fun m!2099551 () Bool)

(assert (=> b!1700176 m!2099551))

(assert (=> b!1700176 m!2099549))

(declare-fun m!2099553 () Bool)

(assert (=> b!1700176 m!2099553))

(assert (=> b!1700176 m!2099523))

(assert (=> b!1700176 m!2099529))

(declare-fun m!2099555 () Bool)

(assert (=> b!1700176 m!2099555))

(assert (=> b!1700176 m!2098803))

(declare-fun m!2099557 () Bool)

(assert (=> b!1700176 m!2099557))

(assert (=> b!1700176 m!2099487))

(assert (=> b!1700176 m!2099519))

(assert (=> b!1700176 m!2099549))

(assert (=> b!1700176 m!2099539))

(assert (=> b!1700176 m!2098803))

(assert (=> b!1700176 m!2099549))

(assert (=> b!1700176 m!2098779))

(assert (=> b!1700176 m!2099481))

(assert (=> b!1700177 m!2098779))

(assert (=> b!1700177 m!2098779))

(assert (=> b!1700177 m!2099481))

(assert (=> b!1700177 m!2099481))

(assert (=> b!1700177 m!2099483))

(declare-fun m!2099559 () Bool)

(assert (=> b!1700177 m!2099559))

(assert (=> b!1699846 d!521332))

(declare-fun d!521336 () Bool)

(declare-fun e!1087500 () Bool)

(assert (=> d!521336 e!1087500))

(declare-fun res!762082 () Bool)

(assert (=> d!521336 (=> res!762082 e!1087500)))

(declare-fun lt!648934 () Bool)

(assert (=> d!521336 (= res!762082 (not lt!648934))))

(declare-fun e!1087499 () Bool)

(assert (=> d!521336 (= lt!648934 e!1087499)))

(declare-fun res!762081 () Bool)

(assert (=> d!521336 (=> res!762081 e!1087499)))

(assert (=> d!521336 (= res!762081 ((_ is Nil!18513) lt!648521))))

(assert (=> d!521336 (= (isPrefix!1517 lt!648521 lt!648525) lt!648934)))

(declare-fun b!1700211 () Bool)

(assert (=> b!1700211 (= e!1087500 (>= (size!14764 lt!648525) (size!14764 lt!648521)))))

(declare-fun b!1700209 () Bool)

(declare-fun res!762080 () Bool)

(declare-fun e!1087498 () Bool)

(assert (=> b!1700209 (=> (not res!762080) (not e!1087498))))

(assert (=> b!1700209 (= res!762080 (= (head!3800 lt!648521) (head!3800 lt!648525)))))

(declare-fun b!1700208 () Bool)

(assert (=> b!1700208 (= e!1087499 e!1087498)))

(declare-fun res!762083 () Bool)

(assert (=> b!1700208 (=> (not res!762083) (not e!1087498))))

(assert (=> b!1700208 (= res!762083 (not ((_ is Nil!18513) lt!648525)))))

(declare-fun b!1700210 () Bool)

(assert (=> b!1700210 (= e!1087498 (isPrefix!1517 (tail!2529 lt!648521) (tail!2529 lt!648525)))))

(assert (= (and d!521336 (not res!762081)) b!1700208))

(assert (= (and b!1700208 res!762083) b!1700209))

(assert (= (and b!1700209 res!762080) b!1700210))

(assert (= (and d!521336 (not res!762082)) b!1700211))

(declare-fun m!2099575 () Bool)

(assert (=> b!1700211 m!2099575))

(assert (=> b!1700211 m!2099073))

(assert (=> b!1700209 m!2099043))

(declare-fun m!2099577 () Bool)

(assert (=> b!1700209 m!2099577))

(assert (=> b!1700210 m!2099045))

(declare-fun m!2099579 () Bool)

(assert (=> b!1700210 m!2099579))

(assert (=> b!1700210 m!2099045))

(assert (=> b!1700210 m!2099579))

(declare-fun m!2099581 () Bool)

(assert (=> b!1700210 m!2099581))

(assert (=> b!1699846 d!521336))

(declare-fun d!521342 () Bool)

(assert (=> d!521342 (isPrefix!1517 lt!648521 (++!5085 lt!648521 lt!648523))))

(declare-fun lt!648937 () Unit!32215)

(declare-fun choose!10310 (List!18583 List!18583) Unit!32215)

(assert (=> d!521342 (= lt!648937 (choose!10310 lt!648521 lt!648523))))

(assert (=> d!521342 (= (lemmaConcatTwoListThenFirstIsPrefix!1038 lt!648521 lt!648523) lt!648937)))

(declare-fun bs!401071 () Bool)

(assert (= bs!401071 d!521342))

(assert (=> bs!401071 m!2098775))

(assert (=> bs!401071 m!2098775))

(declare-fun m!2099583 () Bool)

(assert (=> bs!401071 m!2099583))

(declare-fun m!2099585 () Bool)

(assert (=> bs!401071 m!2099585))

(assert (=> b!1699846 d!521342))

(declare-fun d!521344 () Bool)

(declare-fun lt!648940 () C!9348)

(assert (=> d!521344 (= lt!648940 (head!3800 (list!7455 lt!648520)))))

(declare-fun head!3804 (Conc!6166) C!9348)

(assert (=> d!521344 (= lt!648940 (head!3804 (c!278575 lt!648520)))))

(assert (=> d!521344 (not (isEmpty!11621 lt!648520))))

(assert (=> d!521344 (= (head!3799 lt!648520) lt!648940)))

(declare-fun bs!401072 () Bool)

(assert (= bs!401072 d!521344))

(assert (=> bs!401072 m!2098781))

(assert (=> bs!401072 m!2098781))

(declare-fun m!2099587 () Bool)

(assert (=> bs!401072 m!2099587))

(declare-fun m!2099589 () Bool)

(assert (=> bs!401072 m!2099589))

(declare-fun m!2099591 () Bool)

(assert (=> bs!401072 m!2099591))

(assert (=> b!1699829 d!521344))

(declare-fun d!521346 () Bool)

(assert (=> d!521346 (= (isEmpty!11610 rules!1846) ((_ is Nil!18515) rules!1846))))

(assert (=> b!1699828 d!521346))

(declare-fun d!521348 () Bool)

(declare-fun e!1087503 () Bool)

(assert (=> d!521348 e!1087503))

(declare-fun res!762086 () Bool)

(assert (=> d!521348 (=> (not res!762086) (not e!1087503))))

(declare-fun lt!648943 () BalanceConc!12276)

(assert (=> d!521348 (= res!762086 (= (list!7455 lt!648943) (Cons!18513 (apply!5069 (charsOf!1908 (h!23917 (t!157361 tokens!457))) 0) Nil!18513)))))

(declare-fun singleton!811 (C!9348) BalanceConc!12276)

(assert (=> d!521348 (= lt!648943 (singleton!811 (apply!5069 (charsOf!1908 (h!23917 (t!157361 tokens!457))) 0)))))

(assert (=> d!521348 (= (singletonSeq!1787 (apply!5069 (charsOf!1908 (h!23917 (t!157361 tokens!457))) 0)) lt!648943)))

(declare-fun b!1700214 () Bool)

(declare-fun isBalanced!1938 (Conc!6166) Bool)

(assert (=> b!1700214 (= e!1087503 (isBalanced!1938 (c!278575 lt!648943)))))

(assert (= (and d!521348 res!762086) b!1700214))

(declare-fun m!2099593 () Bool)

(assert (=> d!521348 m!2099593))

(assert (=> d!521348 m!2098795))

(declare-fun m!2099595 () Bool)

(assert (=> d!521348 m!2099595))

(declare-fun m!2099597 () Bool)

(assert (=> b!1700214 m!2099597))

(assert (=> b!1699832 d!521348))

(declare-fun b!1700225 () Bool)

(declare-fun res!762097 () Bool)

(declare-fun e!1087506 () Bool)

(assert (=> b!1700225 (=> (not res!762097) (not e!1087506))))

(declare-fun height!995 (Conc!6166) Int)

(declare-fun ++!5088 (Conc!6166 Conc!6166) Conc!6166)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1700225 (= res!762097 (>= (height!995 (++!5088 (c!278575 lt!648511) (c!278575 lt!648513))) (max!0 (height!995 (c!278575 lt!648511)) (height!995 (c!278575 lt!648513)))))))

(declare-fun b!1700226 () Bool)

(declare-fun lt!648946 () BalanceConc!12276)

(assert (=> b!1700226 (= e!1087506 (= (list!7455 lt!648946) (++!5085 (list!7455 lt!648511) (list!7455 lt!648513))))))

(declare-fun b!1700223 () Bool)

(declare-fun res!762096 () Bool)

(assert (=> b!1700223 (=> (not res!762096) (not e!1087506))))

(assert (=> b!1700223 (= res!762096 (isBalanced!1938 (++!5088 (c!278575 lt!648511) (c!278575 lt!648513))))))

(declare-fun d!521350 () Bool)

(assert (=> d!521350 e!1087506))

(declare-fun res!762095 () Bool)

(assert (=> d!521350 (=> (not res!762095) (not e!1087506))))

(declare-fun appendAssocInst!503 (Conc!6166 Conc!6166) Bool)

(assert (=> d!521350 (= res!762095 (appendAssocInst!503 (c!278575 lt!648511) (c!278575 lt!648513)))))

(assert (=> d!521350 (= lt!648946 (BalanceConc!12277 (++!5088 (c!278575 lt!648511) (c!278575 lt!648513))))))

(assert (=> d!521350 (= (++!5086 lt!648511 lt!648513) lt!648946)))

(declare-fun b!1700224 () Bool)

(declare-fun res!762098 () Bool)

(assert (=> b!1700224 (=> (not res!762098) (not e!1087506))))

(assert (=> b!1700224 (= res!762098 (<= (height!995 (++!5088 (c!278575 lt!648511) (c!278575 lt!648513))) (+ (max!0 (height!995 (c!278575 lt!648511)) (height!995 (c!278575 lt!648513))) 1)))))

(assert (= (and d!521350 res!762095) b!1700223))

(assert (= (and b!1700223 res!762096) b!1700224))

(assert (= (and b!1700224 res!762098) b!1700225))

(assert (= (and b!1700225 res!762097) b!1700226))

(declare-fun m!2099599 () Bool)

(assert (=> b!1700224 m!2099599))

(declare-fun m!2099601 () Bool)

(assert (=> b!1700224 m!2099601))

(declare-fun m!2099603 () Bool)

(assert (=> b!1700224 m!2099603))

(assert (=> b!1700224 m!2099599))

(declare-fun m!2099605 () Bool)

(assert (=> b!1700224 m!2099605))

(assert (=> b!1700224 m!2099603))

(declare-fun m!2099607 () Bool)

(assert (=> b!1700224 m!2099607))

(assert (=> b!1700224 m!2099605))

(declare-fun m!2099609 () Bool)

(assert (=> b!1700226 m!2099609))

(assert (=> b!1700226 m!2098783))

(assert (=> b!1700226 m!2098711))

(assert (=> b!1700226 m!2098783))

(assert (=> b!1700226 m!2098711))

(declare-fun m!2099611 () Bool)

(assert (=> b!1700226 m!2099611))

(declare-fun m!2099613 () Bool)

(assert (=> d!521350 m!2099613))

(assert (=> d!521350 m!2099599))

(assert (=> b!1700223 m!2099599))

(assert (=> b!1700223 m!2099599))

(declare-fun m!2099615 () Bool)

(assert (=> b!1700223 m!2099615))

(assert (=> b!1700225 m!2099599))

(assert (=> b!1700225 m!2099601))

(assert (=> b!1700225 m!2099603))

(assert (=> b!1700225 m!2099599))

(assert (=> b!1700225 m!2099605))

(assert (=> b!1700225 m!2099603))

(assert (=> b!1700225 m!2099607))

(assert (=> b!1700225 m!2099605))

(assert (=> b!1699832 d!521350))

(declare-fun lt!648967 () Bool)

(declare-fun d!521352 () Bool)

(assert (=> d!521352 (= lt!648967 (prefixMatch!500 lt!648518 (list!7455 (++!5086 lt!648511 lt!648513))))))

(declare-datatypes ((List!18591 0))(
  ( (Nil!18521) (Cons!18521 (h!23922 Regex!4587) (t!157408 List!18591)) )
))
(declare-datatypes ((Context!1862 0))(
  ( (Context!1863 (exprs!1431 List!18591)) )
))
(declare-fun prefixMatchZipperSequence!705 ((InoxSet Context!1862) BalanceConc!12276 Int) Bool)

(declare-fun focus!237 (Regex!4587) (InoxSet Context!1862))

(assert (=> d!521352 (= lt!648967 (prefixMatchZipperSequence!705 (focus!237 lt!648518) (++!5086 lt!648511 lt!648513) 0))))

(declare-fun lt!648971 () Unit!32215)

(declare-fun lt!648972 () Unit!32215)

(assert (=> d!521352 (= lt!648971 lt!648972)))

(declare-fun lt!648970 () List!18583)

(declare-fun lt!648968 () (InoxSet Context!1862))

(declare-fun prefixMatchZipper!216 ((InoxSet Context!1862) List!18583) Bool)

(assert (=> d!521352 (= (prefixMatch!500 lt!648518 lt!648970) (prefixMatchZipper!216 lt!648968 lt!648970))))

(declare-datatypes ((List!18592 0))(
  ( (Nil!18522) (Cons!18522 (h!23923 Context!1862) (t!157409 List!18592)) )
))
(declare-fun lt!648975 () List!18592)

(declare-fun prefixMatchZipperRegexEquiv!216 ((InoxSet Context!1862) List!18592 Regex!4587 List!18583) Unit!32215)

(assert (=> d!521352 (= lt!648972 (prefixMatchZipperRegexEquiv!216 lt!648968 lt!648975 lt!648518 lt!648970))))

(assert (=> d!521352 (= lt!648970 (list!7455 (++!5086 lt!648511 lt!648513)))))

(declare-fun toList!977 ((InoxSet Context!1862)) List!18592)

(assert (=> d!521352 (= lt!648975 (toList!977 (focus!237 lt!648518)))))

(assert (=> d!521352 (= lt!648968 (focus!237 lt!648518))))

(declare-fun lt!648976 () Unit!32215)

(declare-fun lt!648974 () Unit!32215)

(assert (=> d!521352 (= lt!648976 lt!648974)))

(declare-fun lt!648973 () Int)

(declare-fun lt!648969 () (InoxSet Context!1862))

(declare-fun dropList!747 (BalanceConc!12276 Int) List!18583)

(assert (=> d!521352 (= (prefixMatchZipper!216 lt!648969 (dropList!747 (++!5086 lt!648511 lt!648513) lt!648973)) (prefixMatchZipperSequence!705 lt!648969 (++!5086 lt!648511 lt!648513) lt!648973))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!216 ((InoxSet Context!1862) BalanceConc!12276 Int) Unit!32215)

(assert (=> d!521352 (= lt!648974 (lemmaprefixMatchZipperSequenceEquivalent!216 lt!648969 (++!5086 lt!648511 lt!648513) lt!648973))))

(assert (=> d!521352 (= lt!648973 0)))

(assert (=> d!521352 (= lt!648969 (focus!237 lt!648518))))

(assert (=> d!521352 (validRegex!1846 lt!648518)))

(assert (=> d!521352 (= (prefixMatchZipperSequence!703 lt!648518 (++!5086 lt!648511 lt!648513)) lt!648967)))

(declare-fun bs!401073 () Bool)

(assert (= bs!401073 d!521352))

(declare-fun m!2099617 () Bool)

(assert (=> bs!401073 m!2099617))

(declare-fun m!2099619 () Bool)

(assert (=> bs!401073 m!2099619))

(assert (=> bs!401073 m!2098799))

(declare-fun m!2099621 () Bool)

(assert (=> bs!401073 m!2099621))

(assert (=> bs!401073 m!2098799))

(declare-fun m!2099623 () Bool)

(assert (=> bs!401073 m!2099623))

(declare-fun m!2099625 () Bool)

(assert (=> bs!401073 m!2099625))

(assert (=> bs!401073 m!2098799))

(declare-fun m!2099627 () Bool)

(assert (=> bs!401073 m!2099627))

(declare-fun m!2099629 () Bool)

(assert (=> bs!401073 m!2099629))

(assert (=> bs!401073 m!2098799))

(assert (=> bs!401073 m!2099617))

(declare-fun m!2099631 () Bool)

(assert (=> bs!401073 m!2099631))

(assert (=> bs!401073 m!2098799))

(declare-fun m!2099633 () Bool)

(assert (=> bs!401073 m!2099633))

(declare-fun m!2099635 () Bool)

(assert (=> bs!401073 m!2099635))

(assert (=> bs!401073 m!2099625))

(assert (=> bs!401073 m!2099625))

(declare-fun m!2099637 () Bool)

(assert (=> bs!401073 m!2099637))

(assert (=> bs!401073 m!2099623))

(declare-fun m!2099639 () Bool)

(assert (=> bs!401073 m!2099639))

(declare-fun m!2099641 () Bool)

(assert (=> bs!401073 m!2099641))

(assert (=> b!1699832 d!521352))

(declare-fun d!521354 () Bool)

(declare-fun lt!648993 () C!9348)

(declare-fun apply!5078 (List!18583 Int) C!9348)

(assert (=> d!521354 (= lt!648993 (apply!5078 (list!7455 (charsOf!1908 (h!23917 (t!157361 tokens!457)))) 0))))

(declare-fun apply!5079 (Conc!6166 Int) C!9348)

(assert (=> d!521354 (= lt!648993 (apply!5079 (c!278575 (charsOf!1908 (h!23917 (t!157361 tokens!457)))) 0))))

(declare-fun e!1087521 () Bool)

(assert (=> d!521354 e!1087521))

(declare-fun res!762113 () Bool)

(assert (=> d!521354 (=> (not res!762113) (not e!1087521))))

(assert (=> d!521354 (= res!762113 (<= 0 0))))

(assert (=> d!521354 (= (apply!5069 (charsOf!1908 (h!23917 (t!157361 tokens!457))) 0) lt!648993)))

(declare-fun b!1700245 () Bool)

(assert (=> b!1700245 (= e!1087521 (< 0 (size!14762 (charsOf!1908 (h!23917 (t!157361 tokens!457))))))))

(assert (= (and d!521354 res!762113) b!1700245))

(assert (=> d!521354 m!2098803))

(assert (=> d!521354 m!2099549))

(assert (=> d!521354 m!2099549))

(declare-fun m!2099643 () Bool)

(assert (=> d!521354 m!2099643))

(declare-fun m!2099645 () Bool)

(assert (=> d!521354 m!2099645))

(assert (=> b!1700245 m!2098803))

(assert (=> b!1700245 m!2099447))

(assert (=> b!1699832 d!521354))

(declare-fun d!521356 () Bool)

(declare-fun lt!648996 () Unit!32215)

(declare-fun lemma!302 (List!18585 LexerInterface!2888 List!18585) Unit!32215)

(assert (=> d!521356 (= lt!648996 (lemma!302 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!68577 () Int)

(declare-fun generalisedUnion!310 (List!18591) Regex!4587)

(declare-fun map!3811 (List!18585 Int) List!18591)

(assert (=> d!521356 (= (rulesRegex!641 thiss!17113 rules!1846) (generalisedUnion!310 (map!3811 rules!1846 lambda!68577)))))

(declare-fun bs!401074 () Bool)

(assert (= bs!401074 d!521356))

(declare-fun m!2099647 () Bool)

(assert (=> bs!401074 m!2099647))

(declare-fun m!2099649 () Bool)

(assert (=> bs!401074 m!2099649))

(assert (=> bs!401074 m!2099649))

(declare-fun m!2099651 () Bool)

(assert (=> bs!401074 m!2099651))

(assert (=> b!1699832 d!521356))

(declare-fun d!521358 () Bool)

(declare-fun lt!649004 () BalanceConc!12276)

(assert (=> d!521358 (= (list!7455 lt!649004) (originalCharacters!4073 (h!23917 (t!157361 tokens!457))))))

(assert (=> d!521358 (= lt!649004 (dynLambda!8424 (toChars!4605 (transformation!3259 (rule!5181 (h!23917 (t!157361 tokens!457))))) (value!102554 (h!23917 (t!157361 tokens!457)))))))

(assert (=> d!521358 (= (charsOf!1908 (h!23917 (t!157361 tokens!457))) lt!649004)))

(declare-fun b_lambda!53663 () Bool)

(assert (=> (not b_lambda!53663) (not d!521358)))

(declare-fun t!157382 () Bool)

(declare-fun tb!100283 () Bool)

(assert (=> (and b!1699833 (= (toChars!4605 (transformation!3259 (h!23916 rules!1846))) (toChars!4605 (transformation!3259 (rule!5181 (h!23917 (t!157361 tokens!457)))))) t!157382) tb!100283))

(declare-fun b!1700254 () Bool)

(declare-fun e!1087528 () Bool)

(declare-fun tp!485820 () Bool)

(assert (=> b!1700254 (= e!1087528 (and (inv!23893 (c!278575 (dynLambda!8424 (toChars!4605 (transformation!3259 (rule!5181 (h!23917 (t!157361 tokens!457))))) (value!102554 (h!23917 (t!157361 tokens!457)))))) tp!485820))))

(declare-fun result!120426 () Bool)

(assert (=> tb!100283 (= result!120426 (and (inv!23894 (dynLambda!8424 (toChars!4605 (transformation!3259 (rule!5181 (h!23917 (t!157361 tokens!457))))) (value!102554 (h!23917 (t!157361 tokens!457))))) e!1087528))))

(assert (= tb!100283 b!1700254))

(declare-fun m!2099653 () Bool)

(assert (=> b!1700254 m!2099653))

(declare-fun m!2099655 () Bool)

(assert (=> tb!100283 m!2099655))

(assert (=> d!521358 t!157382))

(declare-fun b_and!122633 () Bool)

(assert (= b_and!122625 (and (=> t!157382 result!120426) b_and!122633)))

(declare-fun t!157384 () Bool)

(declare-fun tb!100285 () Bool)

(assert (=> (and b!1699824 (= (toChars!4605 (transformation!3259 (rule!5181 (h!23917 tokens!457)))) (toChars!4605 (transformation!3259 (rule!5181 (h!23917 (t!157361 tokens!457)))))) t!157384) tb!100285))

(declare-fun result!120428 () Bool)

(assert (= result!120428 result!120426))

(assert (=> d!521358 t!157384))

(declare-fun b_and!122635 () Bool)

(assert (= b_and!122627 (and (=> t!157384 result!120428) b_and!122635)))

(declare-fun m!2099657 () Bool)

(assert (=> d!521358 m!2099657))

(declare-fun m!2099659 () Bool)

(assert (=> d!521358 m!2099659))

(assert (=> b!1699832 d!521358))

(declare-fun d!521360 () Bool)

(assert (=> d!521360 (= (inv!23886 (tag!3553 (rule!5181 (h!23917 tokens!457)))) (= (mod (str.len (value!102553 (tag!3553 (rule!5181 (h!23917 tokens!457))))) 2) 0))))

(assert (=> b!1699831 d!521360))

(declare-fun d!521362 () Bool)

(declare-fun res!762120 () Bool)

(declare-fun e!1087529 () Bool)

(assert (=> d!521362 (=> (not res!762120) (not e!1087529))))

(assert (=> d!521362 (= res!762120 (semiInverseModEq!1282 (toChars!4605 (transformation!3259 (rule!5181 (h!23917 tokens!457)))) (toValue!4746 (transformation!3259 (rule!5181 (h!23917 tokens!457))))))))

(assert (=> d!521362 (= (inv!23889 (transformation!3259 (rule!5181 (h!23917 tokens!457)))) e!1087529)))

(declare-fun b!1700255 () Bool)

(assert (=> b!1700255 (= e!1087529 (equivClasses!1223 (toChars!4605 (transformation!3259 (rule!5181 (h!23917 tokens!457)))) (toValue!4746 (transformation!3259 (rule!5181 (h!23917 tokens!457))))))))

(assert (= (and d!521362 res!762120) b!1700255))

(declare-fun m!2099663 () Bool)

(assert (=> d!521362 m!2099663))

(declare-fun m!2099667 () Bool)

(assert (=> b!1700255 m!2099667))

(assert (=> b!1699831 d!521362))

(declare-fun b!1700440 () Bool)

(declare-fun e!1087636 () Bool)

(assert (=> b!1700440 (= e!1087636 true)))

(declare-fun b!1700439 () Bool)

(declare-fun e!1087635 () Bool)

(assert (=> b!1700439 (= e!1087635 e!1087636)))

(declare-fun b!1700438 () Bool)

(declare-fun e!1087634 () Bool)

(assert (=> b!1700438 (= e!1087634 e!1087635)))

(declare-fun d!521364 () Bool)

(assert (=> d!521364 e!1087634))

(assert (= b!1700439 b!1700440))

(assert (= b!1700438 b!1700439))

(assert (= (and d!521364 ((_ is Cons!18515) rules!1846)) b!1700438))

(declare-fun lambda!68580 () Int)

(declare-fun order!11193 () Int)

(declare-fun order!11191 () Int)

(declare-fun dynLambda!8425 (Int Int) Int)

(declare-fun dynLambda!8426 (Int Int) Int)

(assert (=> b!1700440 (< (dynLambda!8425 order!11191 (toValue!4746 (transformation!3259 (h!23916 rules!1846)))) (dynLambda!8426 order!11193 lambda!68580))))

(declare-fun order!11195 () Int)

(declare-fun dynLambda!8427 (Int Int) Int)

(assert (=> b!1700440 (< (dynLambda!8427 order!11195 (toChars!4605 (transformation!3259 (h!23916 rules!1846)))) (dynLambda!8426 order!11193 lambda!68580))))

(assert (=> d!521364 true))

(declare-fun lt!649103 () Bool)

(declare-fun forall!4224 (List!18586 Int) Bool)

(assert (=> d!521364 (= lt!649103 (forall!4224 tokens!457 lambda!68580))))

(declare-fun e!1087620 () Bool)

(assert (=> d!521364 (= lt!649103 e!1087620)))

(declare-fun res!762218 () Bool)

(assert (=> d!521364 (=> res!762218 e!1087620)))

(assert (=> d!521364 (= res!762218 (not ((_ is Cons!18516) tokens!457)))))

(assert (=> d!521364 (not (isEmpty!11610 rules!1846))))

(assert (=> d!521364 (= (rulesProduceEachTokenIndividuallyList!1090 thiss!17113 rules!1846 tokens!457) lt!649103)))

(declare-fun b!1700415 () Bool)

(declare-fun e!1087621 () Bool)

(assert (=> b!1700415 (= e!1087620 e!1087621)))

(declare-fun res!762217 () Bool)

(assert (=> b!1700415 (=> (not res!762217) (not e!1087621))))

(assert (=> b!1700415 (= res!762217 (rulesProduceIndividualToken!1536 thiss!17113 rules!1846 (h!23917 tokens!457)))))

(declare-fun b!1700416 () Bool)

(assert (=> b!1700416 (= e!1087621 (rulesProduceEachTokenIndividuallyList!1090 thiss!17113 rules!1846 (t!157361 tokens!457)))))

(assert (= (and d!521364 (not res!762218)) b!1700415))

(assert (= (and b!1700415 res!762217) b!1700416))

(declare-fun m!2099983 () Bool)

(assert (=> d!521364 m!2099983))

(assert (=> d!521364 m!2098737))

(assert (=> b!1700415 m!2098727))

(declare-fun m!2099985 () Bool)

(assert (=> b!1700416 m!2099985))

(assert (=> b!1699830 d!521364))

(declare-fun d!521442 () Bool)

(declare-fun res!762223 () Bool)

(declare-fun e!1087658 () Bool)

(assert (=> d!521442 (=> (not res!762223) (not e!1087658))))

(assert (=> d!521442 (= res!762223 (not (isEmpty!11611 (originalCharacters!4073 (h!23917 tokens!457)))))))

(assert (=> d!521442 (= (inv!23890 (h!23917 tokens!457)) e!1087658)))

(declare-fun b!1700465 () Bool)

(declare-fun res!762224 () Bool)

(assert (=> b!1700465 (=> (not res!762224) (not e!1087658))))

(assert (=> b!1700465 (= res!762224 (= (originalCharacters!4073 (h!23917 tokens!457)) (list!7455 (dynLambda!8424 (toChars!4605 (transformation!3259 (rule!5181 (h!23917 tokens!457)))) (value!102554 (h!23917 tokens!457))))))))

(declare-fun b!1700466 () Bool)

(assert (=> b!1700466 (= e!1087658 (= (size!14758 (h!23917 tokens!457)) (size!14764 (originalCharacters!4073 (h!23917 tokens!457)))))))

(assert (= (and d!521442 res!762223) b!1700465))

(assert (= (and b!1700465 res!762224) b!1700466))

(declare-fun b_lambda!53667 () Bool)

(assert (=> (not b_lambda!53667) (not b!1700465)))

(assert (=> b!1700465 t!157368))

(declare-fun b_and!122649 () Bool)

(assert (= b_and!122633 (and (=> t!157368 result!120416) b_and!122649)))

(assert (=> b!1700465 t!157370))

(declare-fun b_and!122651 () Bool)

(assert (= b_and!122635 (and (=> t!157370 result!120420) b_and!122651)))

(declare-fun m!2099995 () Bool)

(assert (=> d!521442 m!2099995))

(assert (=> b!1700465 m!2099107))

(assert (=> b!1700465 m!2099107))

(declare-fun m!2099997 () Bool)

(assert (=> b!1700465 m!2099997))

(assert (=> b!1700466 m!2099019))

(assert (=> b!1699835 d!521442))

(declare-fun d!521444 () Bool)

(assert (=> d!521444 (= (separableTokensPredicate!828 thiss!17113 (h!23917 tokens!457) (h!23917 (t!157361 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!703 (rulesRegex!641 thiss!17113 rules!1846) (++!5086 (charsOf!1908 (h!23917 tokens!457)) (singletonSeq!1787 (apply!5069 (charsOf!1908 (h!23917 (t!157361 tokens!457))) 0))))))))

(declare-fun bs!401094 () Bool)

(assert (= bs!401094 d!521444))

(assert (=> bs!401094 m!2098803))

(assert (=> bs!401094 m!2098793))

(declare-fun m!2099999 () Bool)

(assert (=> bs!401094 m!2099999))

(declare-fun m!2100001 () Bool)

(assert (=> bs!401094 m!2100001))

(assert (=> bs!401094 m!2098777))

(assert (=> bs!401094 m!2098777))

(assert (=> bs!401094 m!2098797))

(assert (=> bs!401094 m!2099999))

(assert (=> bs!401094 m!2098793))

(assert (=> bs!401094 m!2098795))

(assert (=> bs!401094 m!2098797))

(assert (=> bs!401094 m!2098803))

(assert (=> bs!401094 m!2098795))

(assert (=> b!1699834 d!521444))

(declare-fun d!521446 () Bool)

(assert (=> d!521446 (= (isDefined!2930 lt!648534) (not (isEmpty!11617 lt!648534)))))

(declare-fun bs!401095 () Bool)

(assert (= bs!401095 d!521446))

(declare-fun m!2100003 () Bool)

(assert (=> bs!401095 m!2100003))

(assert (=> b!1699837 d!521446))

(declare-fun d!521448 () Bool)

(assert (=> d!521448 (isDefined!2930 (maxPrefix!1448 thiss!17113 rules!1846 (++!5085 lt!648521 lt!648523)))))

(declare-fun lt!649144 () Unit!32215)

(declare-fun e!1087665 () Unit!32215)

(assert (=> d!521448 (= lt!649144 e!1087665)))

(declare-fun c!278677 () Bool)

(assert (=> d!521448 (= c!278677 (isEmpty!11617 (maxPrefix!1448 thiss!17113 rules!1846 (++!5085 lt!648521 lt!648523))))))

(declare-fun lt!649142 () Unit!32215)

(declare-fun lt!649138 () Unit!32215)

(assert (=> d!521448 (= lt!649142 lt!649138)))

(declare-fun e!1087664 () Bool)

(assert (=> d!521448 e!1087664))

(declare-fun res!762230 () Bool)

(assert (=> d!521448 (=> (not res!762230) (not e!1087664))))

(declare-fun lt!649149 () Token!6084)

(declare-datatypes ((Option!3585 0))(
  ( (None!3584) (Some!3584 (v!24943 Rule!6318)) )
))
(declare-fun isDefined!2932 (Option!3585) Bool)

(declare-fun getRuleFromTag!349 (LexerInterface!2888 List!18585 String!21077) Option!3585)

(assert (=> d!521448 (= res!762230 (isDefined!2932 (getRuleFromTag!349 thiss!17113 rules!1846 (tag!3553 (rule!5181 lt!649149)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!349 (LexerInterface!2888 List!18585 List!18583 Token!6084) Unit!32215)

(assert (=> d!521448 (= lt!649138 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!349 thiss!17113 rules!1846 lt!648521 lt!649149))))

(declare-fun lt!649145 () Unit!32215)

(declare-fun lt!649150 () Unit!32215)

(assert (=> d!521448 (= lt!649145 lt!649150)))

(declare-fun lt!649141 () List!18583)

(assert (=> d!521448 (isPrefix!1517 lt!649141 (++!5085 lt!648521 lt!648523))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!235 (List!18583 List!18583 List!18583) Unit!32215)

(assert (=> d!521448 (= lt!649150 (lemmaPrefixStaysPrefixWhenAddingToSuffix!235 lt!649141 lt!648521 lt!648523))))

(assert (=> d!521448 (= lt!649141 (list!7455 (charsOf!1908 lt!649149)))))

(declare-fun lt!649140 () Unit!32215)

(declare-fun lt!649147 () Unit!32215)

(assert (=> d!521448 (= lt!649140 lt!649147)))

(declare-fun lt!649154 () List!18583)

(declare-fun lt!649146 () List!18583)

(assert (=> d!521448 (isPrefix!1517 lt!649154 (++!5085 lt!649154 lt!649146))))

(assert (=> d!521448 (= lt!649147 (lemmaConcatTwoListThenFirstIsPrefix!1038 lt!649154 lt!649146))))

(assert (=> d!521448 (= lt!649146 (_2!10545 (get!5434 (maxPrefix!1448 thiss!17113 rules!1846 lt!648521))))))

(assert (=> d!521448 (= lt!649154 (list!7455 (charsOf!1908 lt!649149)))))

(assert (=> d!521448 (= lt!649149 (head!3803 (list!7456 (_1!10543 (lex!1372 thiss!17113 rules!1846 (seqFromList!2255 lt!648521))))))))

(assert (=> d!521448 (not (isEmpty!11610 rules!1846))))

(assert (=> d!521448 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!450 thiss!17113 rules!1846 lt!648521 lt!648523) lt!649144)))

(declare-fun b!1700479 () Bool)

(declare-fun res!762229 () Bool)

(assert (=> b!1700479 (=> (not res!762229) (not e!1087664))))

(declare-fun get!5438 (Option!3585) Rule!6318)

(assert (=> b!1700479 (= res!762229 (matchR!2076 (regex!3259 (get!5438 (getRuleFromTag!349 thiss!17113 rules!1846 (tag!3553 (rule!5181 lt!649149))))) (list!7455 (charsOf!1908 lt!649149))))))

(declare-fun b!1700480 () Bool)

(assert (=> b!1700480 (= e!1087664 (= (rule!5181 lt!649149) (get!5438 (getRuleFromTag!349 thiss!17113 rules!1846 (tag!3553 (rule!5181 lt!649149))))))))

(declare-fun b!1700481 () Bool)

(declare-fun Unit!32253 () Unit!32215)

(assert (=> b!1700481 (= e!1087665 Unit!32253)))

(declare-fun lt!649151 () List!18583)

(assert (=> b!1700481 (= lt!649151 (++!5085 lt!648521 lt!648523))))

(declare-fun lt!649139 () Unit!32215)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!243 (LexerInterface!2888 Rule!6318 List!18585 List!18583) Unit!32215)

(assert (=> b!1700481 (= lt!649139 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!243 thiss!17113 (rule!5181 lt!649149) rules!1846 lt!649151))))

(assert (=> b!1700481 (isEmpty!11617 (maxPrefixOneRule!849 thiss!17113 (rule!5181 lt!649149) lt!649151))))

(declare-fun lt!649143 () Unit!32215)

(assert (=> b!1700481 (= lt!649143 lt!649139)))

(declare-fun lt!649153 () List!18583)

(assert (=> b!1700481 (= lt!649153 (list!7455 (charsOf!1908 lt!649149)))))

(declare-fun lt!649148 () Unit!32215)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!239 (LexerInterface!2888 Rule!6318 List!18583 List!18583) Unit!32215)

(assert (=> b!1700481 (= lt!649148 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!239 thiss!17113 (rule!5181 lt!649149) lt!649153 (++!5085 lt!648521 lt!648523)))))

(assert (=> b!1700481 (not (matchR!2076 (regex!3259 (rule!5181 lt!649149)) lt!649153))))

(declare-fun lt!649152 () Unit!32215)

(assert (=> b!1700481 (= lt!649152 lt!649148)))

(assert (=> b!1700481 false))

(declare-fun b!1700482 () Bool)

(declare-fun Unit!32254 () Unit!32215)

(assert (=> b!1700482 (= e!1087665 Unit!32254)))

(assert (= (and d!521448 res!762230) b!1700479))

(assert (= (and b!1700479 res!762229) b!1700480))

(assert (= (and d!521448 c!278677) b!1700481))

(assert (= (and d!521448 (not c!278677)) b!1700482))

(declare-fun m!2100005 () Bool)

(assert (=> d!521448 m!2100005))

(declare-fun m!2100007 () Bool)

(assert (=> d!521448 m!2100007))

(declare-fun m!2100009 () Bool)

(assert (=> d!521448 m!2100009))

(declare-fun m!2100011 () Bool)

(assert (=> d!521448 m!2100011))

(declare-fun m!2100013 () Bool)

(assert (=> d!521448 m!2100013))

(declare-fun m!2100015 () Bool)

(assert (=> d!521448 m!2100015))

(declare-fun m!2100017 () Bool)

(assert (=> d!521448 m!2100017))

(declare-fun m!2100019 () Bool)

(assert (=> d!521448 m!2100019))

(declare-fun m!2100021 () Bool)

(assert (=> d!521448 m!2100021))

(declare-fun m!2100023 () Bool)

(assert (=> d!521448 m!2100023))

(assert (=> d!521448 m!2100019))

(declare-fun m!2100025 () Bool)

(assert (=> d!521448 m!2100025))

(assert (=> d!521448 m!2098775))

(assert (=> d!521448 m!2100019))

(assert (=> d!521448 m!2098827))

(declare-fun m!2100027 () Bool)

(assert (=> d!521448 m!2100027))

(assert (=> d!521448 m!2098927))

(declare-fun m!2100029 () Bool)

(assert (=> d!521448 m!2100029))

(declare-fun m!2100031 () Bool)

(assert (=> d!521448 m!2100031))

(assert (=> d!521448 m!2100015))

(assert (=> d!521448 m!2098927))

(assert (=> d!521448 m!2098731))

(assert (=> d!521448 m!2098775))

(assert (=> d!521448 m!2098731))

(assert (=> d!521448 m!2098733))

(assert (=> d!521448 m!2098737))

(assert (=> d!521448 m!2098827))

(assert (=> d!521448 m!2100007))

(assert (=> d!521448 m!2100011))

(assert (=> d!521448 m!2098775))

(declare-fun m!2100033 () Bool)

(assert (=> d!521448 m!2100033))

(assert (=> b!1700479 m!2100013))

(declare-fun m!2100035 () Bool)

(assert (=> b!1700479 m!2100035))

(assert (=> b!1700479 m!2100011))

(assert (=> b!1700479 m!2100013))

(assert (=> b!1700479 m!2100011))

(assert (=> b!1700479 m!2100015))

(assert (=> b!1700479 m!2100015))

(declare-fun m!2100037 () Bool)

(assert (=> b!1700479 m!2100037))

(assert (=> b!1700480 m!2100015))

(assert (=> b!1700480 m!2100015))

(assert (=> b!1700480 m!2100037))

(declare-fun m!2100039 () Bool)

(assert (=> b!1700481 m!2100039))

(assert (=> b!1700481 m!2098775))

(declare-fun m!2100041 () Bool)

(assert (=> b!1700481 m!2100041))

(assert (=> b!1700481 m!2098775))

(declare-fun m!2100043 () Bool)

(assert (=> b!1700481 m!2100043))

(declare-fun m!2100045 () Bool)

(assert (=> b!1700481 m!2100045))

(assert (=> b!1700481 m!2100011))

(assert (=> b!1700481 m!2100013))

(assert (=> b!1700481 m!2100011))

(assert (=> b!1700481 m!2100041))

(declare-fun m!2100047 () Bool)

(assert (=> b!1700481 m!2100047))

(assert (=> b!1699837 d!521448))

(declare-fun d!521450 () Bool)

(assert (=> d!521450 (= (head!3800 lt!648523) (h!23914 lt!648523))))

(assert (=> b!1699836 d!521450))

(declare-fun b!1700496 () Bool)

(declare-fun b_free!45783 () Bool)

(declare-fun b_next!46487 () Bool)

(assert (=> b!1700496 (= b_free!45783 (not b_next!46487))))

(declare-fun tp!485883 () Bool)

(declare-fun b_and!122653 () Bool)

(assert (=> b!1700496 (= tp!485883 b_and!122653)))

(declare-fun b_free!45785 () Bool)

(declare-fun b_next!46489 () Bool)

(assert (=> b!1700496 (= b_free!45785 (not b_next!46489))))

(declare-fun t!157399 () Bool)

(declare-fun tb!100295 () Bool)

(assert (=> (and b!1700496 (= (toChars!4605 (transformation!3259 (rule!5181 (h!23917 (t!157361 tokens!457))))) (toChars!4605 (transformation!3259 (rule!5181 (h!23917 tokens!457))))) t!157399) tb!100295))

(declare-fun result!120448 () Bool)

(assert (= result!120448 result!120416))

(assert (=> d!521256 t!157399))

(declare-fun t!157401 () Bool)

(declare-fun tb!100297 () Bool)

(assert (=> (and b!1700496 (= (toChars!4605 (transformation!3259 (rule!5181 (h!23917 (t!157361 tokens!457))))) (toChars!4605 (transformation!3259 (rule!5181 (h!23917 (t!157361 tokens!457)))))) t!157401) tb!100297))

(declare-fun result!120450 () Bool)

(assert (= result!120450 result!120426))

(assert (=> d!521358 t!157401))

(assert (=> b!1700465 t!157399))

(declare-fun tp!485885 () Bool)

(declare-fun b_and!122655 () Bool)

(assert (=> b!1700496 (= tp!485885 (and (=> t!157399 result!120448) (=> t!157401 result!120450) b_and!122655))))

(declare-fun tp!485881 () Bool)

(declare-fun b!1700493 () Bool)

(declare-fun e!1087678 () Bool)

(declare-fun e!1087683 () Bool)

(assert (=> b!1700493 (= e!1087683 (and (inv!23890 (h!23917 (t!157361 tokens!457))) e!1087678 tp!485881))))

(declare-fun tp!485882 () Bool)

(declare-fun b!1700495 () Bool)

(declare-fun e!1087679 () Bool)

(declare-fun e!1087680 () Bool)

(assert (=> b!1700495 (= e!1087680 (and tp!485882 (inv!23886 (tag!3553 (rule!5181 (h!23917 (t!157361 tokens!457))))) (inv!23889 (transformation!3259 (rule!5181 (h!23917 (t!157361 tokens!457))))) e!1087679))))

(assert (=> b!1700496 (= e!1087679 (and tp!485883 tp!485885))))

(declare-fun b!1700494 () Bool)

(declare-fun tp!485884 () Bool)

(assert (=> b!1700494 (= e!1087678 (and (inv!21 (value!102554 (h!23917 (t!157361 tokens!457)))) e!1087680 tp!485884))))

(assert (=> b!1699835 (= tp!485807 e!1087683)))

(assert (= b!1700495 b!1700496))

(assert (= b!1700494 b!1700495))

(assert (= b!1700493 b!1700494))

(assert (= (and b!1699835 ((_ is Cons!18516) (t!157361 tokens!457))) b!1700493))

(declare-fun m!2100049 () Bool)

(assert (=> b!1700493 m!2100049))

(declare-fun m!2100051 () Bool)

(assert (=> b!1700495 m!2100051))

(declare-fun m!2100053 () Bool)

(assert (=> b!1700495 m!2100053))

(declare-fun m!2100055 () Bool)

(assert (=> b!1700494 m!2100055))

(declare-fun b!1700510 () Bool)

(declare-fun e!1087686 () Bool)

(declare-fun tp!485898 () Bool)

(declare-fun tp!485900 () Bool)

(assert (=> b!1700510 (= e!1087686 (and tp!485898 tp!485900))))

(declare-fun b!1700509 () Bool)

(declare-fun tp!485896 () Bool)

(assert (=> b!1700509 (= e!1087686 tp!485896)))

(assert (=> b!1699822 (= tp!485808 e!1087686)))

(declare-fun b!1700508 () Bool)

(declare-fun tp!485899 () Bool)

(declare-fun tp!485897 () Bool)

(assert (=> b!1700508 (= e!1087686 (and tp!485899 tp!485897))))

(declare-fun b!1700507 () Bool)

(declare-fun tp_is_empty!7445 () Bool)

(assert (=> b!1700507 (= e!1087686 tp_is_empty!7445)))

(assert (= (and b!1699822 ((_ is ElementMatch!4587) (regex!3259 (h!23916 rules!1846)))) b!1700507))

(assert (= (and b!1699822 ((_ is Concat!7937) (regex!3259 (h!23916 rules!1846)))) b!1700508))

(assert (= (and b!1699822 ((_ is Star!4587) (regex!3259 (h!23916 rules!1846)))) b!1700509))

(assert (= (and b!1699822 ((_ is Union!4587) (regex!3259 (h!23916 rules!1846)))) b!1700510))

(declare-fun b!1700521 () Bool)

(declare-fun b_free!45787 () Bool)

(declare-fun b_next!46491 () Bool)

(assert (=> b!1700521 (= b_free!45787 (not b_next!46491))))

(declare-fun tp!485910 () Bool)

(declare-fun b_and!122657 () Bool)

(assert (=> b!1700521 (= tp!485910 b_and!122657)))

(declare-fun b_free!45789 () Bool)

(declare-fun b_next!46493 () Bool)

(assert (=> b!1700521 (= b_free!45789 (not b_next!46493))))

(declare-fun t!157403 () Bool)

(declare-fun tb!100299 () Bool)

(assert (=> (and b!1700521 (= (toChars!4605 (transformation!3259 (h!23916 (t!157360 rules!1846)))) (toChars!4605 (transformation!3259 (rule!5181 (h!23917 tokens!457))))) t!157403) tb!100299))

(declare-fun result!120456 () Bool)

(assert (= result!120456 result!120416))

(assert (=> d!521256 t!157403))

(declare-fun tb!100301 () Bool)

(declare-fun t!157405 () Bool)

(assert (=> (and b!1700521 (= (toChars!4605 (transformation!3259 (h!23916 (t!157360 rules!1846)))) (toChars!4605 (transformation!3259 (rule!5181 (h!23917 (t!157361 tokens!457)))))) t!157405) tb!100301))

(declare-fun result!120458 () Bool)

(assert (= result!120458 result!120426))

(assert (=> d!521358 t!157405))

(assert (=> b!1700465 t!157403))

(declare-fun b_and!122659 () Bool)

(declare-fun tp!485911 () Bool)

(assert (=> b!1700521 (= tp!485911 (and (=> t!157403 result!120456) (=> t!157405 result!120458) b_and!122659))))

(declare-fun e!1087695 () Bool)

(assert (=> b!1700521 (= e!1087695 (and tp!485910 tp!485911))))

(declare-fun b!1700520 () Bool)

(declare-fun e!1087698 () Bool)

(declare-fun tp!485912 () Bool)

(assert (=> b!1700520 (= e!1087698 (and tp!485912 (inv!23886 (tag!3553 (h!23916 (t!157360 rules!1846)))) (inv!23889 (transformation!3259 (h!23916 (t!157360 rules!1846)))) e!1087695))))

(declare-fun b!1700519 () Bool)

(declare-fun e!1087696 () Bool)

(declare-fun tp!485909 () Bool)

(assert (=> b!1700519 (= e!1087696 (and e!1087698 tp!485909))))

(assert (=> b!1699838 (= tp!485811 e!1087696)))

(assert (= b!1700520 b!1700521))

(assert (= b!1700519 b!1700520))

(assert (= (and b!1699838 ((_ is Cons!18515) (t!157360 rules!1846))) b!1700519))

(declare-fun m!2100057 () Bool)

(assert (=> b!1700520 m!2100057))

(declare-fun m!2100059 () Bool)

(assert (=> b!1700520 m!2100059))

(declare-fun b!1700526 () Bool)

(declare-fun e!1087701 () Bool)

(declare-fun tp!485915 () Bool)

(assert (=> b!1700526 (= e!1087701 (and tp_is_empty!7445 tp!485915))))

(assert (=> b!1699843 (= tp!485806 e!1087701)))

(assert (= (and b!1699843 ((_ is Cons!18513) (originalCharacters!4073 (h!23917 tokens!457)))) b!1700526))

(declare-fun b!1700530 () Bool)

(declare-fun e!1087702 () Bool)

(declare-fun tp!485918 () Bool)

(declare-fun tp!485920 () Bool)

(assert (=> b!1700530 (= e!1087702 (and tp!485918 tp!485920))))

(declare-fun b!1700529 () Bool)

(declare-fun tp!485916 () Bool)

(assert (=> b!1700529 (= e!1087702 tp!485916)))

(assert (=> b!1699831 (= tp!485810 e!1087702)))

(declare-fun b!1700528 () Bool)

(declare-fun tp!485919 () Bool)

(declare-fun tp!485917 () Bool)

(assert (=> b!1700528 (= e!1087702 (and tp!485919 tp!485917))))

(declare-fun b!1700527 () Bool)

(assert (=> b!1700527 (= e!1087702 tp_is_empty!7445)))

(assert (= (and b!1699831 ((_ is ElementMatch!4587) (regex!3259 (rule!5181 (h!23917 tokens!457))))) b!1700527))

(assert (= (and b!1699831 ((_ is Concat!7937) (regex!3259 (rule!5181 (h!23917 tokens!457))))) b!1700528))

(assert (= (and b!1699831 ((_ is Star!4587) (regex!3259 (rule!5181 (h!23917 tokens!457))))) b!1700529))

(assert (= (and b!1699831 ((_ is Union!4587) (regex!3259 (rule!5181 (h!23917 tokens!457))))) b!1700530))

(declare-fun b_lambda!53675 () Bool)

(assert (= b_lambda!53667 (or (and b!1699833 b_free!45769 (= (toChars!4605 (transformation!3259 (h!23916 rules!1846))) (toChars!4605 (transformation!3259 (rule!5181 (h!23917 tokens!457)))))) (and b!1699824 b_free!45773) (and b!1700496 b_free!45785 (= (toChars!4605 (transformation!3259 (rule!5181 (h!23917 (t!157361 tokens!457))))) (toChars!4605 (transformation!3259 (rule!5181 (h!23917 tokens!457)))))) (and b!1700521 b_free!45789 (= (toChars!4605 (transformation!3259 (h!23916 (t!157360 rules!1846)))) (toChars!4605 (transformation!3259 (rule!5181 (h!23917 tokens!457)))))) b_lambda!53675)))

(declare-fun b_lambda!53677 () Bool)

(assert (= b_lambda!53663 (or (and b!1699833 b_free!45769 (= (toChars!4605 (transformation!3259 (h!23916 rules!1846))) (toChars!4605 (transformation!3259 (rule!5181 (h!23917 (t!157361 tokens!457))))))) (and b!1699824 b_free!45773 (= (toChars!4605 (transformation!3259 (rule!5181 (h!23917 tokens!457)))) (toChars!4605 (transformation!3259 (rule!5181 (h!23917 (t!157361 tokens!457))))))) (and b!1700496 b_free!45785) (and b!1700521 b_free!45789 (= (toChars!4605 (transformation!3259 (h!23916 (t!157360 rules!1846)))) (toChars!4605 (transformation!3259 (rule!5181 (h!23917 (t!157361 tokens!457))))))) b_lambda!53677)))

(declare-fun b_lambda!53679 () Bool)

(assert (= b_lambda!53659 (or (and b!1699833 b_free!45769 (= (toChars!4605 (transformation!3259 (h!23916 rules!1846))) (toChars!4605 (transformation!3259 (rule!5181 (h!23917 tokens!457)))))) (and b!1699824 b_free!45773) (and b!1700496 b_free!45785 (= (toChars!4605 (transformation!3259 (rule!5181 (h!23917 (t!157361 tokens!457))))) (toChars!4605 (transformation!3259 (rule!5181 (h!23917 tokens!457)))))) (and b!1700521 b_free!45789 (= (toChars!4605 (transformation!3259 (h!23916 (t!157360 rules!1846)))) (toChars!4605 (transformation!3259 (rule!5181 (h!23917 tokens!457)))))) b_lambda!53679)))

(check-sat (not b!1700494) (not b_next!46477) (not d!521274) tp_is_empty!7445 (not b!1700479) (not d!521308) (not bm!108940) (not b_lambda!53677) (not b!1699903) (not b!1700481) (not b!1700108) (not d!521220) (not b!1699961) (not d!521448) (not d!521304) (not b!1700059) (not b!1700510) (not b!1700123) (not b!1700530) (not b!1700415) (not b!1700032) (not b!1700058) (not d!521224) b_and!122659 (not b!1700160) (not b!1700438) (not b!1700004) (not d!521240) (not d!521250) (not b!1700008) (not b!1700226) (not b!1700020) (not b!1700127) (not d!521330) (not d!521246) (not d!521236) (not b!1700126) (not b!1700519) (not b!1700107) (not b!1700528) (not d!521352) (not b!1700000) (not d!521358) (not d!521278) (not b!1699931) (not b!1700225) (not d!521260) (not d!521244) (not b_next!46473) (not b!1700493) b_and!122617 (not b!1700017) (not d!521328) (not b_next!46493) (not b!1700007) (not d!521342) (not b!1699904) (not b!1700209) (not b!1699993) (not d!521262) (not d!521354) (not b!1699892) (not b!1700012) (not b!1700177) (not d!521248) (not d!521280) (not d!521264) (not d!521256) (not b!1700159) (not b!1700130) (not b!1700245) (not d!521364) (not d!521306) (not d!521268) (not d!521302) (not b!1700109) (not b_next!46475) (not d!521332) (not d!521324) (not b!1700061) (not b!1699954) (not b_next!46471) (not b!1700055) (not b!1700529) (not d!521238) (not d!521276) (not b!1700255) (not b!1699953) (not tb!100275) (not b!1699932) b_and!122653 (not b_next!46491) (not d!521270) (not bm!108939) (not d!521348) b_and!122613 (not b!1699995) (not b!1700057) (not b!1700223) (not b!1700154) (not b!1700018) (not d!521442) (not b_next!46489) (not b!1700119) (not d!521444) (not b!1700009) (not b!1700060) (not d!521282) (not b!1699958) b_and!122649 (not b!1700121) (not tb!100283) (not b!1700465) (not b!1700125) (not d!521252) (not b!1700520) (not d!521314) (not b!1700466) (not d!521272) (not b!1699956) (not d!521326) (not b!1699959) (not bm!108943) (not b!1699930) (not b!1700176) (not b!1700112) (not b!1700011) (not b!1699957) (not b!1700526) (not b!1700021) (not b!1700056) (not b!1700210) (not b!1700139) (not d!521362) (not b!1700010) (not b!1700163) (not b!1700005) (not b!1699991) (not b!1699998) (not d!521284) (not d!521254) b_and!122655 (not b_lambda!53675) (not d!521310) (not b!1699999) (not b!1700135) (not d!521258) (not b!1700033) (not d!521356) (not d!521446) (not b!1700019) b_and!122657 (not b!1700162) (not d!521350) (not d!521234) (not d!521226) (not b!1700495) (not d!521344) (not b!1700129) (not b_next!46487) (not b!1699906) (not b!1700153) (not b!1700508) (not bm!108936) (not b!1700416) (not b_lambda!53679) (not b!1700254) (not b!1700480) (not b!1699933) (not b!1700122) (not b!1700224) (not b!1699960) (not b!1700211) (not b!1700214) (not b!1700037) (not d!521266) (not b!1700128) (not b!1700509) b_and!122651 (not bm!108944))
(check-sat b_and!122659 (not b_next!46475) (not b_next!46471) b_and!122653 (not b_next!46491) b_and!122613 (not b_next!46489) b_and!122649 b_and!122655 (not b_next!46477) b_and!122657 (not b_next!46487) b_and!122651 (not b_next!46493) (not b_next!46473) b_and!122617)
