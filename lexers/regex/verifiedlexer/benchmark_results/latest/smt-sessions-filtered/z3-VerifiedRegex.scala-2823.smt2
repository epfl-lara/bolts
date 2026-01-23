; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!158342 () Bool)

(assert start!158342)

(declare-fun b!1648229 () Bool)

(declare-fun b_free!44775 () Bool)

(declare-fun b_next!45479 () Bool)

(assert (=> b!1648229 (= b_free!44775 (not b_next!45479))))

(declare-fun tp!477368 () Bool)

(declare-fun b_and!117037 () Bool)

(assert (=> b!1648229 (= tp!477368 b_and!117037)))

(declare-fun b_free!44777 () Bool)

(declare-fun b_next!45481 () Bool)

(assert (=> b!1648229 (= b_free!44777 (not b_next!45481))))

(declare-fun tp!477367 () Bool)

(declare-fun b_and!117039 () Bool)

(assert (=> b!1648229 (= tp!477367 b_and!117039)))

(declare-fun b!1648227 () Bool)

(declare-fun b_free!44779 () Bool)

(declare-fun b_next!45483 () Bool)

(assert (=> b!1648227 (= b_free!44779 (not b_next!45483))))

(declare-fun tp!477363 () Bool)

(declare-fun b_and!117041 () Bool)

(assert (=> b!1648227 (= tp!477363 b_and!117041)))

(declare-fun b_free!44781 () Bool)

(declare-fun b_next!45485 () Bool)

(assert (=> b!1648227 (= b_free!44781 (not b_next!45485))))

(declare-fun tp!477364 () Bool)

(declare-fun b_and!117043 () Bool)

(assert (=> b!1648227 (= tp!477364 b_and!117043)))

(declare-fun b!1648216 () Bool)

(declare-fun res!738536 () Bool)

(declare-fun e!1057013 () Bool)

(assert (=> b!1648216 (=> res!738536 e!1057013)))

(declare-datatypes ((C!9244 0))(
  ( (C!9245 (val!5218 Int)) )
))
(declare-datatypes ((List!18251 0))(
  ( (Nil!18181) (Cons!18181 (h!23582 C!9244) (t!150692 List!18251)) )
))
(declare-datatypes ((IArray!12129 0))(
  ( (IArray!12130 (innerList!6122 List!18251)) )
))
(declare-datatypes ((Conc!6062 0))(
  ( (Node!6062 (left!14575 Conc!6062) (right!14905 Conc!6062) (csize!12354 Int) (cheight!6273 Int)) (Leaf!8886 (xs!8898 IArray!12129) (csize!12355 Int)) (Empty!6062) )
))
(declare-datatypes ((BalanceConc!12068 0))(
  ( (BalanceConc!12069 (c!268057 Conc!6062)) )
))
(declare-datatypes ((List!18252 0))(
  ( (Nil!18182) (Cons!18182 (h!23583 (_ BitVec 16)) (t!150693 List!18252)) )
))
(declare-datatypes ((Regex!4535 0))(
  ( (ElementMatch!4535 (c!268058 C!9244)) (Concat!7832 (regOne!9582 Regex!4535) (regTwo!9582 Regex!4535)) (EmptyExpr!4535) (Star!4535 (reg!4864 Regex!4535)) (EmptyLang!4535) (Union!4535 (regOne!9583 Regex!4535) (regTwo!9583 Regex!4535)) )
))
(declare-datatypes ((String!20816 0))(
  ( (String!20817 (value!101046 String)) )
))
(declare-datatypes ((TokenValue!3297 0))(
  ( (FloatLiteralValue!6594 (text!23524 List!18252)) (TokenValueExt!3296 (__x!11896 Int)) (Broken!16485 (value!101047 List!18252)) (Object!3366) (End!3297) (Def!3297) (Underscore!3297) (Match!3297) (Else!3297) (Error!3297) (Case!3297) (If!3297) (Extends!3297) (Abstract!3297) (Class!3297) (Val!3297) (DelimiterValue!6594 (del!3357 List!18252)) (KeywordValue!3303 (value!101048 List!18252)) (CommentValue!6594 (value!101049 List!18252)) (WhitespaceValue!6594 (value!101050 List!18252)) (IndentationValue!3297 (value!101051 List!18252)) (String!20818) (Int32!3297) (Broken!16486 (value!101052 List!18252)) (Boolean!3298) (Unit!30226) (OperatorValue!3300 (op!3357 List!18252)) (IdentifierValue!6594 (value!101053 List!18252)) (IdentifierValue!6595 (value!101054 List!18252)) (WhitespaceValue!6595 (value!101055 List!18252)) (True!6594) (False!6594) (Broken!16487 (value!101056 List!18252)) (Broken!16488 (value!101057 List!18252)) (True!6595) (RightBrace!3297) (RightBracket!3297) (Colon!3297) (Null!3297) (Comma!3297) (LeftBracket!3297) (False!6595) (LeftBrace!3297) (ImaginaryLiteralValue!3297 (text!23525 List!18252)) (StringLiteralValue!9891 (value!101058 List!18252)) (EOFValue!3297 (value!101059 List!18252)) (IdentValue!3297 (value!101060 List!18252)) (DelimiterValue!6595 (value!101061 List!18252)) (DedentValue!3297 (value!101062 List!18252)) (NewLineValue!3297 (value!101063 List!18252)) (IntegerValue!9891 (value!101064 (_ BitVec 32)) (text!23526 List!18252)) (IntegerValue!9892 (value!101065 Int) (text!23527 List!18252)) (Times!3297) (Or!3297) (Equal!3297) (Minus!3297) (Broken!16489 (value!101066 List!18252)) (And!3297) (Div!3297) (LessEqual!3297) (Mod!3297) (Concat!7833) (Not!3297) (Plus!3297) (SpaceValue!3297 (value!101067 List!18252)) (IntegerValue!9893 (value!101068 Int) (text!23528 List!18252)) (StringLiteralValue!9892 (text!23529 List!18252)) (FloatLiteralValue!6595 (text!23530 List!18252)) (BytesLiteralValue!3297 (value!101069 List!18252)) (CommentValue!6595 (value!101070 List!18252)) (StringLiteralValue!9893 (value!101071 List!18252)) (ErrorTokenValue!3297 (msg!3358 List!18252)) )
))
(declare-datatypes ((TokenValueInjection!6254 0))(
  ( (TokenValueInjection!6255 (toValue!4654 Int) (toChars!4513 Int)) )
))
(declare-datatypes ((Rule!6214 0))(
  ( (Rule!6215 (regex!3207 Regex!4535) (tag!3487 String!20816) (isSeparator!3207 Bool) (transformation!3207 TokenValueInjection!6254)) )
))
(declare-datatypes ((List!18253 0))(
  ( (Nil!18183) (Cons!18183 (h!23584 Rule!6214) (t!150694 List!18253)) )
))
(declare-fun rules!1846 () List!18253)

(declare-datatypes ((LexerInterface!2836 0))(
  ( (LexerInterfaceExt!2833 (__x!11897 Int)) (Lexer!2834) )
))
(declare-fun thiss!17113 () LexerInterface!2836)

(declare-datatypes ((Token!5980 0))(
  ( (Token!5981 (value!101072 TokenValue!3297) (rule!5065 Rule!6214) (size!14482 Int) (originalCharacters!4021 List!18251)) )
))
(declare-datatypes ((List!18254 0))(
  ( (Nil!18184) (Cons!18184 (h!23585 Token!5980) (t!150695 List!18254)) )
))
(declare-fun tokens!457 () List!18254)

(declare-fun rulesProduceIndividualToken!1484 (LexerInterface!2836 List!18253 Token!5980) Bool)

(assert (=> b!1648216 (= res!738536 (not (rulesProduceIndividualToken!1484 thiss!17113 rules!1846 (h!23585 tokens!457))))))

(declare-fun b!1648217 () Bool)

(declare-fun e!1057011 () Bool)

(declare-fun e!1057009 () Bool)

(declare-fun tp!477370 () Bool)

(assert (=> b!1648217 (= e!1057011 (and e!1057009 tp!477370))))

(declare-fun res!738538 () Bool)

(declare-fun e!1057010 () Bool)

(assert (=> start!158342 (=> (not res!738538) (not e!1057010))))

(get-info :version)

(assert (=> start!158342 (= res!738538 ((_ is Lexer!2834) thiss!17113))))

(assert (=> start!158342 e!1057010))

(assert (=> start!158342 true))

(assert (=> start!158342 e!1057011))

(declare-fun e!1057015 () Bool)

(assert (=> start!158342 e!1057015))

(declare-fun b!1648218 () Bool)

(declare-fun res!738534 () Bool)

(assert (=> b!1648218 (=> (not res!738534) (not e!1057010))))

(assert (=> b!1648218 (= res!738534 (and (not ((_ is Nil!18184) tokens!457)) (not ((_ is Nil!18184) (t!150695 tokens!457)))))))

(declare-fun e!1057017 () Bool)

(declare-fun tp!477366 () Bool)

(declare-fun b!1648219 () Bool)

(declare-fun e!1057019 () Bool)

(declare-fun inv!23544 (String!20816) Bool)

(declare-fun inv!23547 (TokenValueInjection!6254) Bool)

(assert (=> b!1648219 (= e!1057019 (and tp!477366 (inv!23544 (tag!3487 (rule!5065 (h!23585 tokens!457)))) (inv!23547 (transformation!3207 (rule!5065 (h!23585 tokens!457)))) e!1057017))))

(declare-fun b!1648220 () Bool)

(declare-fun res!738529 () Bool)

(assert (=> b!1648220 (=> (not res!738529) (not e!1057010))))

(declare-fun isEmpty!11210 (List!18253) Bool)

(assert (=> b!1648220 (= res!738529 (not (isEmpty!11210 rules!1846)))))

(declare-fun lt!610228 () BalanceConc!12068)

(declare-fun e!1057022 () Bool)

(declare-fun b!1648221 () Bool)

(declare-fun prefixMatchZipperSequence!613 (Regex!4535 BalanceConc!12068) Bool)

(declare-fun rulesRegex!591 (LexerInterface!2836 List!18253) Regex!4535)

(declare-fun ++!4909 (BalanceConc!12068 BalanceConc!12068) BalanceConc!12068)

(declare-fun singletonSeq!1686 (C!9244) BalanceConc!12068)

(declare-fun apply!4774 (BalanceConc!12068 Int) C!9244)

(declare-fun charsOf!1856 (Token!5980) BalanceConc!12068)

(assert (=> b!1648221 (= e!1057022 (not (prefixMatchZipperSequence!613 (rulesRegex!591 thiss!17113 rules!1846) (++!4909 lt!610228 (singletonSeq!1686 (apply!4774 (charsOf!1856 (h!23585 (t!150695 tokens!457))) 0))))))))

(declare-fun b!1648222 () Bool)

(declare-fun e!1057023 () Bool)

(declare-fun e!1057021 () Bool)

(assert (=> b!1648222 (= e!1057023 e!1057021)))

(declare-fun res!738527 () Bool)

(assert (=> b!1648222 (=> res!738527 e!1057021)))

(declare-fun lt!610231 () List!18254)

(declare-fun lt!610224 () List!18254)

(declare-fun lt!610233 () List!18254)

(assert (=> b!1648222 (= res!738527 (or (not (= lt!610224 lt!610233)) (not (= lt!610233 lt!610231))))))

(declare-datatypes ((IArray!12131 0))(
  ( (IArray!12132 (innerList!6123 List!18254)) )
))
(declare-datatypes ((Conc!6063 0))(
  ( (Node!6063 (left!14576 Conc!6063) (right!14906 Conc!6063) (csize!12356 Int) (cheight!6274 Int)) (Leaf!8887 (xs!8899 IArray!12131) (csize!12357 Int)) (Empty!6063) )
))
(declare-datatypes ((BalanceConc!12070 0))(
  ( (BalanceConc!12071 (c!268059 Conc!6063)) )
))
(declare-fun lt!610222 () BalanceConc!12070)

(declare-fun list!7225 (BalanceConc!12070) List!18254)

(assert (=> b!1648222 (= lt!610233 (list!7225 lt!610222))))

(assert (=> b!1648222 (= lt!610224 lt!610231)))

(declare-fun prepend!767 (BalanceConc!12070 Token!5980) BalanceConc!12070)

(declare-fun seqFromList!2153 (List!18254) BalanceConc!12070)

(assert (=> b!1648222 (= lt!610231 (list!7225 (prepend!767 (seqFromList!2153 (t!150695 (t!150695 tokens!457))) (h!23585 (t!150695 tokens!457)))))))

(declare-datatypes ((Unit!30227 0))(
  ( (Unit!30228) )
))
(declare-fun lt!610223 () Unit!30227)

(declare-datatypes ((tuple2!17856 0))(
  ( (tuple2!17857 (_1!10330 BalanceConc!12070) (_2!10330 BalanceConc!12068)) )
))
(declare-fun lt!610221 () tuple2!17856)

(declare-fun seqFromListBHdTlConstructive!282 (Token!5980 List!18254 BalanceConc!12070) Unit!30227)

(assert (=> b!1648222 (= lt!610223 (seqFromListBHdTlConstructive!282 (h!23585 (t!150695 tokens!457)) (t!150695 (t!150695 tokens!457)) (_1!10330 lt!610221)))))

(declare-fun e!1057020 () Bool)

(declare-fun tp!477362 () Bool)

(declare-fun b!1648223 () Bool)

(declare-fun inv!21 (TokenValue!3297) Bool)

(assert (=> b!1648223 (= e!1057020 (and (inv!21 (value!101072 (h!23585 tokens!457))) e!1057019 tp!477362))))

(declare-fun b!1648224 () Bool)

(assert (=> b!1648224 (= e!1057021 e!1057013)))

(declare-fun res!738539 () Bool)

(assert (=> b!1648224 (=> res!738539 e!1057013)))

(declare-fun lt!610215 () List!18251)

(declare-fun lt!610234 () List!18251)

(declare-fun lt!610214 () List!18251)

(assert (=> b!1648224 (= res!738539 (or (not (= lt!610234 lt!610215)) (not (= lt!610215 lt!610214)) (not (= lt!610234 lt!610214))))))

(declare-fun printList!949 (LexerInterface!2836 List!18254) List!18251)

(assert (=> b!1648224 (= lt!610215 (printList!949 thiss!17113 (Cons!18184 (h!23585 tokens!457) Nil!18184)))))

(declare-fun lt!610217 () BalanceConc!12068)

(declare-fun list!7226 (BalanceConc!12068) List!18251)

(assert (=> b!1648224 (= lt!610234 (list!7226 lt!610217))))

(declare-fun lt!610219 () BalanceConc!12070)

(declare-fun printTailRec!887 (LexerInterface!2836 BalanceConc!12070 Int BalanceConc!12068) BalanceConc!12068)

(assert (=> b!1648224 (= lt!610217 (printTailRec!887 thiss!17113 lt!610219 0 (BalanceConc!12069 Empty!6062)))))

(declare-fun print!1367 (LexerInterface!2836 BalanceConc!12070) BalanceConc!12068)

(assert (=> b!1648224 (= lt!610217 (print!1367 thiss!17113 lt!610219))))

(declare-fun singletonSeq!1687 (Token!5980) BalanceConc!12070)

(assert (=> b!1648224 (= lt!610219 (singletonSeq!1687 (h!23585 tokens!457)))))

(declare-fun lt!610226 () List!18251)

(declare-datatypes ((tuple2!17858 0))(
  ( (tuple2!17859 (_1!10331 Token!5980) (_2!10331 List!18251)) )
))
(declare-datatypes ((Option!3448 0))(
  ( (None!3447) (Some!3447 (v!24604 tuple2!17858)) )
))
(declare-fun lt!610227 () Option!3448)

(declare-fun maxPrefix!1398 (LexerInterface!2836 List!18253 List!18251) Option!3448)

(assert (=> b!1648224 (= lt!610227 (maxPrefix!1398 thiss!17113 rules!1846 lt!610226))))

(declare-fun b!1648225 () Bool)

(declare-fun res!738535 () Bool)

(assert (=> b!1648225 (=> res!738535 e!1057021)))

(declare-fun separableTokensPredicate!776 (LexerInterface!2836 Token!5980 Token!5980 List!18253) Bool)

(assert (=> b!1648225 (= res!738535 (not (separableTokensPredicate!776 thiss!17113 (h!23585 tokens!457) (h!23585 (t!150695 tokens!457)) rules!1846)))))

(declare-fun b!1648226 () Bool)

(declare-fun res!738528 () Bool)

(assert (=> b!1648226 (=> res!738528 e!1057013)))

(declare-fun isEmpty!11211 (BalanceConc!12070) Bool)

(declare-fun lex!1320 (LexerInterface!2836 List!18253 BalanceConc!12068) tuple2!17856)

(declare-fun seqFromList!2154 (List!18251) BalanceConc!12068)

(assert (=> b!1648226 (= res!738528 (isEmpty!11211 (_1!10330 (lex!1320 thiss!17113 rules!1846 (seqFromList!2154 lt!610214)))))))

(assert (=> b!1648227 (= e!1057017 (and tp!477363 tp!477364))))

(declare-fun b!1648228 () Bool)

(declare-fun tp!477369 () Bool)

(declare-fun inv!23548 (Token!5980) Bool)

(assert (=> b!1648228 (= e!1057015 (and (inv!23548 (h!23585 tokens!457)) e!1057020 tp!477369))))

(declare-fun e!1057012 () Bool)

(assert (=> b!1648229 (= e!1057012 (and tp!477368 tp!477367))))

(declare-fun b!1648230 () Bool)

(assert (=> b!1648230 (= e!1057013 e!1057022)))

(declare-fun res!738537 () Bool)

(assert (=> b!1648230 (=> res!738537 e!1057022)))

(declare-fun isDefined!2803 (Option!3448) Bool)

(assert (=> b!1648230 (= res!738537 (not (isDefined!2803 lt!610227)))))

(declare-fun lt!610220 () Unit!30227)

(declare-fun lt!610230 () List!18251)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!404 (LexerInterface!2836 List!18253 List!18251 List!18251) Unit!30227)

(assert (=> b!1648230 (= lt!610220 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!404 thiss!17113 rules!1846 lt!610214 lt!610230))))

(declare-fun b!1648231 () Bool)

(declare-fun e!1057016 () Bool)

(assert (=> b!1648231 (= e!1057010 e!1057016)))

(declare-fun res!738526 () Bool)

(assert (=> b!1648231 (=> (not res!738526) (not e!1057016))))

(declare-fun lt!610232 () List!18251)

(assert (=> b!1648231 (= res!738526 (= lt!610226 lt!610232))))

(declare-fun ++!4910 (List!18251 List!18251) List!18251)

(assert (=> b!1648231 (= lt!610232 (++!4910 lt!610214 lt!610230))))

(declare-fun lt!610225 () BalanceConc!12068)

(assert (=> b!1648231 (= lt!610226 (list!7226 lt!610225))))

(declare-fun lt!610218 () BalanceConc!12068)

(assert (=> b!1648231 (= lt!610230 (list!7226 lt!610218))))

(assert (=> b!1648231 (= lt!610214 (list!7226 lt!610228))))

(assert (=> b!1648231 (= lt!610228 (charsOf!1856 (h!23585 tokens!457)))))

(assert (=> b!1648231 (= lt!610221 (lex!1320 thiss!17113 rules!1846 lt!610218))))

(assert (=> b!1648231 (= lt!610218 (print!1367 thiss!17113 lt!610222))))

(assert (=> b!1648231 (= lt!610222 (seqFromList!2153 (t!150695 tokens!457)))))

(assert (=> b!1648231 (= lt!610225 (print!1367 thiss!17113 (seqFromList!2153 tokens!457)))))

(declare-fun b!1648232 () Bool)

(declare-fun res!738530 () Bool)

(assert (=> b!1648232 (=> (not res!738530) (not e!1057010))))

(declare-fun rulesProduceEachTokenIndividuallyList!1038 (LexerInterface!2836 List!18253 List!18254) Bool)

(assert (=> b!1648232 (= res!738530 (rulesProduceEachTokenIndividuallyList!1038 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1648233 () Bool)

(declare-fun res!738531 () Bool)

(assert (=> b!1648233 (=> (not res!738531) (not e!1057010))))

(declare-fun rulesInvariant!2505 (LexerInterface!2836 List!18253) Bool)

(assert (=> b!1648233 (= res!738531 (rulesInvariant!2505 thiss!17113 rules!1846))))

(declare-fun b!1648234 () Bool)

(declare-fun res!738532 () Bool)

(assert (=> b!1648234 (=> (not res!738532) (not e!1057010))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!529 (LexerInterface!2836 List!18254 List!18253) Bool)

(assert (=> b!1648234 (= res!738532 (tokensListTwoByTwoPredicateSeparableList!529 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1648235 () Bool)

(assert (=> b!1648235 (= e!1057016 (not e!1057023))))

(declare-fun res!738533 () Bool)

(assert (=> b!1648235 (=> res!738533 e!1057023)))

(assert (=> b!1648235 (= res!738533 (not (= lt!610224 (t!150695 tokens!457))))))

(assert (=> b!1648235 (= lt!610224 (list!7225 (_1!10330 lt!610221)))))

(declare-fun lt!610229 () Unit!30227)

(declare-fun theoremInvertabilityWhenTokenListSeparable!279 (LexerInterface!2836 List!18253 List!18254) Unit!30227)

(assert (=> b!1648235 (= lt!610229 (theoremInvertabilityWhenTokenListSeparable!279 thiss!17113 rules!1846 (t!150695 tokens!457)))))

(declare-fun isPrefix!1465 (List!18251 List!18251) Bool)

(assert (=> b!1648235 (isPrefix!1465 lt!610214 lt!610232)))

(declare-fun lt!610216 () Unit!30227)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!990 (List!18251 List!18251) Unit!30227)

(assert (=> b!1648235 (= lt!610216 (lemmaConcatTwoListThenFirstIsPrefix!990 lt!610214 lt!610230))))

(declare-fun tp!477365 () Bool)

(declare-fun b!1648236 () Bool)

(assert (=> b!1648236 (= e!1057009 (and tp!477365 (inv!23544 (tag!3487 (h!23584 rules!1846))) (inv!23547 (transformation!3207 (h!23584 rules!1846))) e!1057012))))

(assert (= (and start!158342 res!738538) b!1648220))

(assert (= (and b!1648220 res!738529) b!1648233))

(assert (= (and b!1648233 res!738531) b!1648232))

(assert (= (and b!1648232 res!738530) b!1648234))

(assert (= (and b!1648234 res!738532) b!1648218))

(assert (= (and b!1648218 res!738534) b!1648231))

(assert (= (and b!1648231 res!738526) b!1648235))

(assert (= (and b!1648235 (not res!738533)) b!1648222))

(assert (= (and b!1648222 (not res!738527)) b!1648225))

(assert (= (and b!1648225 (not res!738535)) b!1648224))

(assert (= (and b!1648224 (not res!738539)) b!1648216))

(assert (= (and b!1648216 (not res!738536)) b!1648226))

(assert (= (and b!1648226 (not res!738528)) b!1648230))

(assert (= (and b!1648230 (not res!738537)) b!1648221))

(assert (= b!1648236 b!1648229))

(assert (= b!1648217 b!1648236))

(assert (= (and start!158342 ((_ is Cons!18183) rules!1846)) b!1648217))

(assert (= b!1648219 b!1648227))

(assert (= b!1648223 b!1648219))

(assert (= b!1648228 b!1648223))

(assert (= (and start!158342 ((_ is Cons!18184) tokens!457)) b!1648228))

(declare-fun m!1995413 () Bool)

(assert (=> b!1648233 m!1995413))

(declare-fun m!1995415 () Bool)

(assert (=> b!1648236 m!1995415))

(declare-fun m!1995417 () Bool)

(assert (=> b!1648236 m!1995417))

(declare-fun m!1995419 () Bool)

(assert (=> b!1648232 m!1995419))

(declare-fun m!1995421 () Bool)

(assert (=> b!1648219 m!1995421))

(declare-fun m!1995423 () Bool)

(assert (=> b!1648219 m!1995423))

(declare-fun m!1995425 () Bool)

(assert (=> b!1648234 m!1995425))

(declare-fun m!1995427 () Bool)

(assert (=> b!1648225 m!1995427))

(declare-fun m!1995429 () Bool)

(assert (=> b!1648226 m!1995429))

(assert (=> b!1648226 m!1995429))

(declare-fun m!1995431 () Bool)

(assert (=> b!1648226 m!1995431))

(declare-fun m!1995433 () Bool)

(assert (=> b!1648226 m!1995433))

(declare-fun m!1995435 () Bool)

(assert (=> b!1648221 m!1995435))

(declare-fun m!1995437 () Bool)

(assert (=> b!1648221 m!1995437))

(declare-fun m!1995439 () Bool)

(assert (=> b!1648221 m!1995439))

(assert (=> b!1648221 m!1995439))

(declare-fun m!1995441 () Bool)

(assert (=> b!1648221 m!1995441))

(assert (=> b!1648221 m!1995435))

(assert (=> b!1648221 m!1995441))

(declare-fun m!1995443 () Bool)

(assert (=> b!1648221 m!1995443))

(declare-fun m!1995445 () Bool)

(assert (=> b!1648221 m!1995445))

(assert (=> b!1648221 m!1995437))

(assert (=> b!1648221 m!1995445))

(declare-fun m!1995447 () Bool)

(assert (=> b!1648224 m!1995447))

(declare-fun m!1995449 () Bool)

(assert (=> b!1648224 m!1995449))

(declare-fun m!1995451 () Bool)

(assert (=> b!1648224 m!1995451))

(declare-fun m!1995453 () Bool)

(assert (=> b!1648224 m!1995453))

(declare-fun m!1995455 () Bool)

(assert (=> b!1648224 m!1995455))

(declare-fun m!1995457 () Bool)

(assert (=> b!1648224 m!1995457))

(declare-fun m!1995459 () Bool)

(assert (=> b!1648231 m!1995459))

(declare-fun m!1995461 () Bool)

(assert (=> b!1648231 m!1995461))

(declare-fun m!1995463 () Bool)

(assert (=> b!1648231 m!1995463))

(declare-fun m!1995465 () Bool)

(assert (=> b!1648231 m!1995465))

(declare-fun m!1995467 () Bool)

(assert (=> b!1648231 m!1995467))

(declare-fun m!1995469 () Bool)

(assert (=> b!1648231 m!1995469))

(declare-fun m!1995471 () Bool)

(assert (=> b!1648231 m!1995471))

(declare-fun m!1995473 () Bool)

(assert (=> b!1648231 m!1995473))

(declare-fun m!1995475 () Bool)

(assert (=> b!1648231 m!1995475))

(declare-fun m!1995477 () Bool)

(assert (=> b!1648231 m!1995477))

(assert (=> b!1648231 m!1995467))

(declare-fun m!1995479 () Bool)

(assert (=> b!1648220 m!1995479))

(declare-fun m!1995481 () Bool)

(assert (=> b!1648235 m!1995481))

(declare-fun m!1995483 () Bool)

(assert (=> b!1648235 m!1995483))

(declare-fun m!1995485 () Bool)

(assert (=> b!1648235 m!1995485))

(declare-fun m!1995487 () Bool)

(assert (=> b!1648235 m!1995487))

(declare-fun m!1995489 () Bool)

(assert (=> b!1648228 m!1995489))

(declare-fun m!1995491 () Bool)

(assert (=> b!1648223 m!1995491))

(declare-fun m!1995493 () Bool)

(assert (=> b!1648222 m!1995493))

(declare-fun m!1995495 () Bool)

(assert (=> b!1648222 m!1995495))

(declare-fun m!1995497 () Bool)

(assert (=> b!1648222 m!1995497))

(declare-fun m!1995499 () Bool)

(assert (=> b!1648222 m!1995499))

(declare-fun m!1995501 () Bool)

(assert (=> b!1648222 m!1995501))

(assert (=> b!1648222 m!1995497))

(assert (=> b!1648222 m!1995499))

(declare-fun m!1995503 () Bool)

(assert (=> b!1648216 m!1995503))

(declare-fun m!1995505 () Bool)

(assert (=> b!1648230 m!1995505))

(declare-fun m!1995507 () Bool)

(assert (=> b!1648230 m!1995507))

(check-sat b_and!117037 (not b!1648224) (not b!1648222) (not b!1648232) (not b!1648233) b_and!117043 (not b_next!45485) b_and!117039 (not b!1648225) (not b!1648216) (not b_next!45479) (not b!1648226) (not b!1648219) (not b!1648223) (not b!1648231) (not b!1648234) (not b_next!45481) (not b!1648221) (not b!1648220) (not b!1648228) (not b_next!45483) b_and!117041 (not b!1648217) (not b!1648236) (not b!1648230) (not b!1648235))
(check-sat b_and!117037 (not b_next!45481) (not b_next!45483) b_and!117043 (not b_next!45485) b_and!117039 (not b_next!45479) b_and!117041)
(get-model)

(declare-fun d!496830 () Bool)

(assert (=> d!496830 (= (isEmpty!11210 rules!1846) ((_ is Nil!18183) rules!1846))))

(assert (=> b!1648220 d!496830))

(declare-fun d!496832 () Bool)

(declare-fun isEmpty!11212 (Option!3448) Bool)

(assert (=> d!496832 (= (isDefined!2803 lt!610227) (not (isEmpty!11212 lt!610227)))))

(declare-fun bs!396300 () Bool)

(assert (= bs!396300 d!496832))

(declare-fun m!1995515 () Bool)

(assert (=> bs!396300 m!1995515))

(assert (=> b!1648230 d!496832))

(declare-fun d!496834 () Bool)

(assert (=> d!496834 (isDefined!2803 (maxPrefix!1398 thiss!17113 rules!1846 (++!4910 lt!610214 lt!610230)))))

(declare-fun lt!610324 () Unit!30227)

(declare-fun e!1057045 () Unit!30227)

(assert (=> d!496834 (= lt!610324 e!1057045)))

(declare-fun c!268065 () Bool)

(assert (=> d!496834 (= c!268065 (isEmpty!11212 (maxPrefix!1398 thiss!17113 rules!1846 (++!4910 lt!610214 lt!610230))))))

(declare-fun lt!610318 () Unit!30227)

(declare-fun lt!610327 () Unit!30227)

(assert (=> d!496834 (= lt!610318 lt!610327)))

(declare-fun e!1057044 () Bool)

(assert (=> d!496834 e!1057044))

(declare-fun res!738572 () Bool)

(assert (=> d!496834 (=> (not res!738572) (not e!1057044))))

(declare-fun lt!610328 () Token!5980)

(declare-datatypes ((Option!3449 0))(
  ( (None!3448) (Some!3448 (v!24611 Rule!6214)) )
))
(declare-fun isDefined!2804 (Option!3449) Bool)

(declare-fun getRuleFromTag!311 (LexerInterface!2836 List!18253 String!20816) Option!3449)

(assert (=> d!496834 (= res!738572 (isDefined!2804 (getRuleFromTag!311 thiss!17113 rules!1846 (tag!3487 (rule!5065 lt!610328)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!311 (LexerInterface!2836 List!18253 List!18251 Token!5980) Unit!30227)

(assert (=> d!496834 (= lt!610327 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!311 thiss!17113 rules!1846 lt!610214 lt!610328))))

(declare-fun lt!610323 () Unit!30227)

(declare-fun lt!610321 () Unit!30227)

(assert (=> d!496834 (= lt!610323 lt!610321)))

(declare-fun lt!610326 () List!18251)

(assert (=> d!496834 (isPrefix!1465 lt!610326 (++!4910 lt!610214 lt!610230))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!197 (List!18251 List!18251 List!18251) Unit!30227)

(assert (=> d!496834 (= lt!610321 (lemmaPrefixStaysPrefixWhenAddingToSuffix!197 lt!610326 lt!610214 lt!610230))))

(assert (=> d!496834 (= lt!610326 (list!7226 (charsOf!1856 lt!610328)))))

(declare-fun lt!610320 () Unit!30227)

(declare-fun lt!610319 () Unit!30227)

(assert (=> d!496834 (= lt!610320 lt!610319)))

(declare-fun lt!610330 () List!18251)

(declare-fun lt!610317 () List!18251)

(assert (=> d!496834 (isPrefix!1465 lt!610330 (++!4910 lt!610330 lt!610317))))

(assert (=> d!496834 (= lt!610319 (lemmaConcatTwoListThenFirstIsPrefix!990 lt!610330 lt!610317))))

(declare-fun get!5290 (Option!3448) tuple2!17858)

(assert (=> d!496834 (= lt!610317 (_2!10331 (get!5290 (maxPrefix!1398 thiss!17113 rules!1846 lt!610214))))))

(assert (=> d!496834 (= lt!610330 (list!7226 (charsOf!1856 lt!610328)))))

(declare-fun head!3616 (List!18254) Token!5980)

(assert (=> d!496834 (= lt!610328 (head!3616 (list!7225 (_1!10330 (lex!1320 thiss!17113 rules!1846 (seqFromList!2154 lt!610214))))))))

(assert (=> d!496834 (not (isEmpty!11210 rules!1846))))

(assert (=> d!496834 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!404 thiss!17113 rules!1846 lt!610214 lt!610230) lt!610324)))

(declare-fun b!1648274 () Bool)

(declare-fun Unit!30229 () Unit!30227)

(assert (=> b!1648274 (= e!1057045 Unit!30229)))

(declare-fun b!1648271 () Bool)

(declare-fun res!738573 () Bool)

(assert (=> b!1648271 (=> (not res!738573) (not e!1057044))))

(declare-fun matchR!2027 (Regex!4535 List!18251) Bool)

(declare-fun get!5291 (Option!3449) Rule!6214)

(assert (=> b!1648271 (= res!738573 (matchR!2027 (regex!3207 (get!5291 (getRuleFromTag!311 thiss!17113 rules!1846 (tag!3487 (rule!5065 lt!610328))))) (list!7226 (charsOf!1856 lt!610328))))))

(declare-fun b!1648272 () Bool)

(assert (=> b!1648272 (= e!1057044 (= (rule!5065 lt!610328) (get!5291 (getRuleFromTag!311 thiss!17113 rules!1846 (tag!3487 (rule!5065 lt!610328))))))))

(declare-fun b!1648273 () Bool)

(declare-fun Unit!30230 () Unit!30227)

(assert (=> b!1648273 (= e!1057045 Unit!30230)))

(declare-fun lt!610315 () List!18251)

(assert (=> b!1648273 (= lt!610315 (++!4910 lt!610214 lt!610230))))

(declare-fun lt!610316 () Unit!30227)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!205 (LexerInterface!2836 Rule!6214 List!18253 List!18251) Unit!30227)

(assert (=> b!1648273 (= lt!610316 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!205 thiss!17113 (rule!5065 lt!610328) rules!1846 lt!610315))))

(declare-fun maxPrefixOneRule!806 (LexerInterface!2836 Rule!6214 List!18251) Option!3448)

(assert (=> b!1648273 (isEmpty!11212 (maxPrefixOneRule!806 thiss!17113 (rule!5065 lt!610328) lt!610315))))

(declare-fun lt!610325 () Unit!30227)

(assert (=> b!1648273 (= lt!610325 lt!610316)))

(declare-fun lt!610314 () List!18251)

(assert (=> b!1648273 (= lt!610314 (list!7226 (charsOf!1856 lt!610328)))))

(declare-fun lt!610322 () Unit!30227)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!201 (LexerInterface!2836 Rule!6214 List!18251 List!18251) Unit!30227)

(assert (=> b!1648273 (= lt!610322 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!201 thiss!17113 (rule!5065 lt!610328) lt!610314 (++!4910 lt!610214 lt!610230)))))

(assert (=> b!1648273 (not (matchR!2027 (regex!3207 (rule!5065 lt!610328)) lt!610314))))

(declare-fun lt!610329 () Unit!30227)

(assert (=> b!1648273 (= lt!610329 lt!610322)))

(assert (=> b!1648273 false))

(assert (= (and d!496834 res!738572) b!1648271))

(assert (= (and b!1648271 res!738573) b!1648272))

(assert (= (and d!496834 c!268065) b!1648273))

(assert (= (and d!496834 (not c!268065)) b!1648274))

(declare-fun m!1995589 () Bool)

(assert (=> d!496834 m!1995589))

(declare-fun m!1995591 () Bool)

(assert (=> d!496834 m!1995591))

(assert (=> d!496834 m!1995463))

(declare-fun m!1995593 () Bool)

(assert (=> d!496834 m!1995593))

(declare-fun m!1995595 () Bool)

(assert (=> d!496834 m!1995595))

(assert (=> d!496834 m!1995463))

(declare-fun m!1995597 () Bool)

(assert (=> d!496834 m!1995597))

(declare-fun m!1995599 () Bool)

(assert (=> d!496834 m!1995599))

(assert (=> d!496834 m!1995429))

(assert (=> d!496834 m!1995431))

(declare-fun m!1995601 () Bool)

(assert (=> d!496834 m!1995601))

(declare-fun m!1995603 () Bool)

(assert (=> d!496834 m!1995603))

(assert (=> d!496834 m!1995479))

(assert (=> d!496834 m!1995593))

(declare-fun m!1995605 () Bool)

(assert (=> d!496834 m!1995605))

(declare-fun m!1995607 () Bool)

(assert (=> d!496834 m!1995607))

(declare-fun m!1995609 () Bool)

(assert (=> d!496834 m!1995609))

(declare-fun m!1995611 () Bool)

(assert (=> d!496834 m!1995611))

(assert (=> d!496834 m!1995609))

(assert (=> d!496834 m!1995463))

(assert (=> d!496834 m!1995589))

(declare-fun m!1995613 () Bool)

(assert (=> d!496834 m!1995613))

(declare-fun m!1995615 () Bool)

(assert (=> d!496834 m!1995615))

(assert (=> d!496834 m!1995615))

(declare-fun m!1995617 () Bool)

(assert (=> d!496834 m!1995617))

(assert (=> d!496834 m!1995605))

(assert (=> d!496834 m!1995429))

(assert (=> d!496834 m!1995603))

(declare-fun m!1995619 () Bool)

(assert (=> d!496834 m!1995619))

(assert (=> d!496834 m!1995589))

(declare-fun m!1995621 () Bool)

(assert (=> d!496834 m!1995621))

(assert (=> b!1648271 m!1995593))

(assert (=> b!1648271 m!1995595))

(assert (=> b!1648271 m!1995609))

(declare-fun m!1995623 () Bool)

(assert (=> b!1648271 m!1995623))

(assert (=> b!1648271 m!1995593))

(assert (=> b!1648271 m!1995595))

(declare-fun m!1995625 () Bool)

(assert (=> b!1648271 m!1995625))

(assert (=> b!1648271 m!1995609))

(assert (=> b!1648272 m!1995609))

(assert (=> b!1648272 m!1995609))

(assert (=> b!1648272 m!1995623))

(assert (=> b!1648273 m!1995463))

(declare-fun m!1995627 () Bool)

(assert (=> b!1648273 m!1995627))

(assert (=> b!1648273 m!1995593))

(assert (=> b!1648273 m!1995595))

(assert (=> b!1648273 m!1995463))

(declare-fun m!1995629 () Bool)

(assert (=> b!1648273 m!1995629))

(declare-fun m!1995631 () Bool)

(assert (=> b!1648273 m!1995631))

(declare-fun m!1995633 () Bool)

(assert (=> b!1648273 m!1995633))

(assert (=> b!1648273 m!1995631))

(assert (=> b!1648273 m!1995593))

(declare-fun m!1995635 () Bool)

(assert (=> b!1648273 m!1995635))

(assert (=> b!1648230 d!496834))

(declare-fun d!496850 () Bool)

(assert (=> d!496850 (= (inv!23544 (tag!3487 (rule!5065 (h!23585 tokens!457)))) (= (mod (str.len (value!101046 (tag!3487 (rule!5065 (h!23585 tokens!457))))) 2) 0))))

(assert (=> b!1648219 d!496850))

(declare-fun d!496852 () Bool)

(declare-fun res!738576 () Bool)

(declare-fun e!1057048 () Bool)

(assert (=> d!496852 (=> (not res!738576) (not e!1057048))))

(declare-fun semiInverseModEq!1237 (Int Int) Bool)

(assert (=> d!496852 (= res!738576 (semiInverseModEq!1237 (toChars!4513 (transformation!3207 (rule!5065 (h!23585 tokens!457)))) (toValue!4654 (transformation!3207 (rule!5065 (h!23585 tokens!457))))))))

(assert (=> d!496852 (= (inv!23547 (transformation!3207 (rule!5065 (h!23585 tokens!457)))) e!1057048)))

(declare-fun b!1648277 () Bool)

(declare-fun equivClasses!1178 (Int Int) Bool)

(assert (=> b!1648277 (= e!1057048 (equivClasses!1178 (toChars!4513 (transformation!3207 (rule!5065 (h!23585 tokens!457)))) (toValue!4654 (transformation!3207 (rule!5065 (h!23585 tokens!457))))))))

(assert (= (and d!496852 res!738576) b!1648277))

(declare-fun m!1995637 () Bool)

(assert (=> d!496852 m!1995637))

(declare-fun m!1995639 () Bool)

(assert (=> b!1648277 m!1995639))

(assert (=> b!1648219 d!496852))

(declare-fun b!1648340 () Bool)

(declare-fun e!1057090 () Bool)

(assert (=> b!1648340 (= e!1057090 true)))

(declare-fun b!1648339 () Bool)

(declare-fun e!1057089 () Bool)

(assert (=> b!1648339 (= e!1057089 e!1057090)))

(declare-fun b!1648338 () Bool)

(declare-fun e!1057088 () Bool)

(assert (=> b!1648338 (= e!1057088 e!1057089)))

(declare-fun d!496854 () Bool)

(assert (=> d!496854 e!1057088))

(assert (= b!1648339 b!1648340))

(assert (= b!1648338 b!1648339))

(assert (= (and d!496854 ((_ is Cons!18183) rules!1846)) b!1648338))

(declare-fun order!10847 () Int)

(declare-fun order!10849 () Int)

(declare-fun lambda!67637 () Int)

(declare-fun dynLambda!8143 (Int Int) Int)

(declare-fun dynLambda!8144 (Int Int) Int)

(assert (=> b!1648340 (< (dynLambda!8143 order!10847 (toValue!4654 (transformation!3207 (h!23584 rules!1846)))) (dynLambda!8144 order!10849 lambda!67637))))

(declare-fun order!10851 () Int)

(declare-fun dynLambda!8145 (Int Int) Int)

(assert (=> b!1648340 (< (dynLambda!8145 order!10851 (toChars!4513 (transformation!3207 (h!23584 rules!1846)))) (dynLambda!8144 order!10849 lambda!67637))))

(assert (=> d!496854 true))

(declare-fun lt!610370 () Bool)

(declare-fun forall!4141 (List!18254 Int) Bool)

(assert (=> d!496854 (= lt!610370 (forall!4141 tokens!457 lambda!67637))))

(declare-fun e!1057080 () Bool)

(assert (=> d!496854 (= lt!610370 e!1057080)))

(declare-fun res!738604 () Bool)

(assert (=> d!496854 (=> res!738604 e!1057080)))

(assert (=> d!496854 (= res!738604 (not ((_ is Cons!18184) tokens!457)))))

(assert (=> d!496854 (not (isEmpty!11210 rules!1846))))

(assert (=> d!496854 (= (rulesProduceEachTokenIndividuallyList!1038 thiss!17113 rules!1846 tokens!457) lt!610370)))

(declare-fun b!1648328 () Bool)

(declare-fun e!1057081 () Bool)

(assert (=> b!1648328 (= e!1057080 e!1057081)))

(declare-fun res!738605 () Bool)

(assert (=> b!1648328 (=> (not res!738605) (not e!1057081))))

(assert (=> b!1648328 (= res!738605 (rulesProduceIndividualToken!1484 thiss!17113 rules!1846 (h!23585 tokens!457)))))

(declare-fun b!1648329 () Bool)

(assert (=> b!1648329 (= e!1057081 (rulesProduceEachTokenIndividuallyList!1038 thiss!17113 rules!1846 (t!150695 tokens!457)))))

(assert (= (and d!496854 (not res!738604)) b!1648328))

(assert (= (and b!1648328 res!738605) b!1648329))

(declare-fun m!1995687 () Bool)

(assert (=> d!496854 m!1995687))

(assert (=> d!496854 m!1995479))

(assert (=> b!1648328 m!1995503))

(declare-fun m!1995689 () Bool)

(assert (=> b!1648329 m!1995689))

(assert (=> b!1648232 d!496854))

(declare-fun d!496864 () Bool)

(declare-fun e!1057096 () Bool)

(assert (=> d!496864 e!1057096))

(declare-fun res!738615 () Bool)

(assert (=> d!496864 (=> (not res!738615) (not e!1057096))))

(declare-fun lt!610378 () BalanceConc!12068)

(assert (=> d!496864 (= res!738615 (= (list!7226 lt!610378) (Cons!18181 (apply!4774 (charsOf!1856 (h!23585 (t!150695 tokens!457))) 0) Nil!18181)))))

(declare-fun singleton!726 (C!9244) BalanceConc!12068)

(assert (=> d!496864 (= lt!610378 (singleton!726 (apply!4774 (charsOf!1856 (h!23585 (t!150695 tokens!457))) 0)))))

(assert (=> d!496864 (= (singletonSeq!1686 (apply!4774 (charsOf!1856 (h!23585 (t!150695 tokens!457))) 0)) lt!610378)))

(declare-fun b!1648354 () Bool)

(declare-fun isBalanced!1852 (Conc!6062) Bool)

(assert (=> b!1648354 (= e!1057096 (isBalanced!1852 (c!268057 lt!610378)))))

(assert (= (and d!496864 res!738615) b!1648354))

(declare-fun m!1995725 () Bool)

(assert (=> d!496864 m!1995725))

(assert (=> d!496864 m!1995437))

(declare-fun m!1995727 () Bool)

(assert (=> d!496864 m!1995727))

(declare-fun m!1995729 () Bool)

(assert (=> b!1648354 m!1995729))

(assert (=> b!1648221 d!496864))

(declare-fun e!1057105 () Bool)

(declare-fun lt!610387 () BalanceConc!12068)

(declare-fun b!1648375 () Bool)

(assert (=> b!1648375 (= e!1057105 (= (list!7226 lt!610387) (++!4910 (list!7226 lt!610228) (list!7226 (singletonSeq!1686 (apply!4774 (charsOf!1856 (h!23585 (t!150695 tokens!457))) 0))))))))

(declare-fun b!1648373 () Bool)

(declare-fun res!738630 () Bool)

(assert (=> b!1648373 (=> (not res!738630) (not e!1057105))))

(declare-fun height!937 (Conc!6062) Int)

(declare-fun ++!4912 (Conc!6062 Conc!6062) Conc!6062)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1648373 (= res!738630 (<= (height!937 (++!4912 (c!268057 lt!610228) (c!268057 (singletonSeq!1686 (apply!4774 (charsOf!1856 (h!23585 (t!150695 tokens!457))) 0))))) (+ (max!0 (height!937 (c!268057 lt!610228)) (height!937 (c!268057 (singletonSeq!1686 (apply!4774 (charsOf!1856 (h!23585 (t!150695 tokens!457))) 0))))) 1)))))

(declare-fun d!496868 () Bool)

(assert (=> d!496868 e!1057105))

(declare-fun res!738627 () Bool)

(assert (=> d!496868 (=> (not res!738627) (not e!1057105))))

(declare-fun appendAssocInst!459 (Conc!6062 Conc!6062) Bool)

(assert (=> d!496868 (= res!738627 (appendAssocInst!459 (c!268057 lt!610228) (c!268057 (singletonSeq!1686 (apply!4774 (charsOf!1856 (h!23585 (t!150695 tokens!457))) 0)))))))

(assert (=> d!496868 (= lt!610387 (BalanceConc!12069 (++!4912 (c!268057 lt!610228) (c!268057 (singletonSeq!1686 (apply!4774 (charsOf!1856 (h!23585 (t!150695 tokens!457))) 0))))))))

(assert (=> d!496868 (= (++!4909 lt!610228 (singletonSeq!1686 (apply!4774 (charsOf!1856 (h!23585 (t!150695 tokens!457))) 0))) lt!610387)))

(declare-fun b!1648372 () Bool)

(declare-fun res!738628 () Bool)

(assert (=> b!1648372 (=> (not res!738628) (not e!1057105))))

(assert (=> b!1648372 (= res!738628 (isBalanced!1852 (++!4912 (c!268057 lt!610228) (c!268057 (singletonSeq!1686 (apply!4774 (charsOf!1856 (h!23585 (t!150695 tokens!457))) 0))))))))

(declare-fun b!1648374 () Bool)

(declare-fun res!738629 () Bool)

(assert (=> b!1648374 (=> (not res!738629) (not e!1057105))))

(assert (=> b!1648374 (= res!738629 (>= (height!937 (++!4912 (c!268057 lt!610228) (c!268057 (singletonSeq!1686 (apply!4774 (charsOf!1856 (h!23585 (t!150695 tokens!457))) 0))))) (max!0 (height!937 (c!268057 lt!610228)) (height!937 (c!268057 (singletonSeq!1686 (apply!4774 (charsOf!1856 (h!23585 (t!150695 tokens!457))) 0)))))))))

(assert (= (and d!496868 res!738627) b!1648372))

(assert (= (and b!1648372 res!738628) b!1648373))

(assert (= (and b!1648373 res!738630) b!1648374))

(assert (= (and b!1648374 res!738629) b!1648375))

(declare-fun m!1995751 () Bool)

(assert (=> b!1648372 m!1995751))

(assert (=> b!1648372 m!1995751))

(declare-fun m!1995753 () Bool)

(assert (=> b!1648372 m!1995753))

(declare-fun m!1995755 () Bool)

(assert (=> b!1648375 m!1995755))

(assert (=> b!1648375 m!1995473))

(assert (=> b!1648375 m!1995439))

(declare-fun m!1995757 () Bool)

(assert (=> b!1648375 m!1995757))

(assert (=> b!1648375 m!1995473))

(assert (=> b!1648375 m!1995757))

(declare-fun m!1995759 () Bool)

(assert (=> b!1648375 m!1995759))

(declare-fun m!1995761 () Bool)

(assert (=> b!1648373 m!1995761))

(declare-fun m!1995763 () Bool)

(assert (=> b!1648373 m!1995763))

(declare-fun m!1995765 () Bool)

(assert (=> b!1648373 m!1995765))

(assert (=> b!1648373 m!1995751))

(declare-fun m!1995767 () Bool)

(assert (=> b!1648373 m!1995767))

(assert (=> b!1648373 m!1995763))

(assert (=> b!1648373 m!1995751))

(assert (=> b!1648373 m!1995761))

(assert (=> b!1648374 m!1995761))

(assert (=> b!1648374 m!1995763))

(assert (=> b!1648374 m!1995765))

(assert (=> b!1648374 m!1995751))

(assert (=> b!1648374 m!1995767))

(assert (=> b!1648374 m!1995763))

(assert (=> b!1648374 m!1995751))

(assert (=> b!1648374 m!1995761))

(declare-fun m!1995769 () Bool)

(assert (=> d!496868 m!1995769))

(assert (=> d!496868 m!1995751))

(assert (=> b!1648221 d!496868))

(declare-fun lt!610416 () Bool)

(declare-fun d!496876 () Bool)

(declare-fun prefixMatch!452 (Regex!4535 List!18251) Bool)

(assert (=> d!496876 (= lt!610416 (prefixMatch!452 (rulesRegex!591 thiss!17113 rules!1846) (list!7226 (++!4909 lt!610228 (singletonSeq!1686 (apply!4774 (charsOf!1856 (h!23585 (t!150695 tokens!457))) 0))))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!18257 0))(
  ( (Nil!18187) (Cons!18187 (h!23588 Regex!4535) (t!150740 List!18257)) )
))
(declare-datatypes ((Context!1782 0))(
  ( (Context!1783 (exprs!1391 List!18257)) )
))
(declare-fun prefixMatchZipperSequence!615 ((InoxSet Context!1782) BalanceConc!12068 Int) Bool)

(declare-fun focus!197 (Regex!4535) (InoxSet Context!1782))

(assert (=> d!496876 (= lt!610416 (prefixMatchZipperSequence!615 (focus!197 (rulesRegex!591 thiss!17113 rules!1846)) (++!4909 lt!610228 (singletonSeq!1686 (apply!4774 (charsOf!1856 (h!23585 (t!150695 tokens!457))) 0))) 0))))

(declare-fun lt!610409 () Unit!30227)

(declare-fun lt!610417 () Unit!30227)

(assert (=> d!496876 (= lt!610409 lt!610417)))

(declare-fun lt!610414 () (InoxSet Context!1782))

(declare-fun lt!610408 () List!18251)

(declare-fun prefixMatchZipper!176 ((InoxSet Context!1782) List!18251) Bool)

(assert (=> d!496876 (= (prefixMatch!452 (rulesRegex!591 thiss!17113 rules!1846) lt!610408) (prefixMatchZipper!176 lt!610414 lt!610408))))

(declare-datatypes ((List!18258 0))(
  ( (Nil!18188) (Cons!18188 (h!23589 Context!1782) (t!150741 List!18258)) )
))
(declare-fun lt!610410 () List!18258)

(declare-fun prefixMatchZipperRegexEquiv!176 ((InoxSet Context!1782) List!18258 Regex!4535 List!18251) Unit!30227)

(assert (=> d!496876 (= lt!610417 (prefixMatchZipperRegexEquiv!176 lt!610414 lt!610410 (rulesRegex!591 thiss!17113 rules!1846) lt!610408))))

(assert (=> d!496876 (= lt!610408 (list!7226 (++!4909 lt!610228 (singletonSeq!1686 (apply!4774 (charsOf!1856 (h!23585 (t!150695 tokens!457))) 0)))))))

(declare-fun toList!937 ((InoxSet Context!1782)) List!18258)

(assert (=> d!496876 (= lt!610410 (toList!937 (focus!197 (rulesRegex!591 thiss!17113 rules!1846))))))

(assert (=> d!496876 (= lt!610414 (focus!197 (rulesRegex!591 thiss!17113 rules!1846)))))

(declare-fun lt!610415 () Unit!30227)

(declare-fun lt!610413 () Unit!30227)

(assert (=> d!496876 (= lt!610415 lt!610413)))

(declare-fun lt!610411 () Int)

(declare-fun lt!610412 () (InoxSet Context!1782))

(declare-fun dropList!665 (BalanceConc!12068 Int) List!18251)

(assert (=> d!496876 (= (prefixMatchZipper!176 lt!610412 (dropList!665 (++!4909 lt!610228 (singletonSeq!1686 (apply!4774 (charsOf!1856 (h!23585 (t!150695 tokens!457))) 0))) lt!610411)) (prefixMatchZipperSequence!615 lt!610412 (++!4909 lt!610228 (singletonSeq!1686 (apply!4774 (charsOf!1856 (h!23585 (t!150695 tokens!457))) 0))) lt!610411))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!176 ((InoxSet Context!1782) BalanceConc!12068 Int) Unit!30227)

(assert (=> d!496876 (= lt!610413 (lemmaprefixMatchZipperSequenceEquivalent!176 lt!610412 (++!4909 lt!610228 (singletonSeq!1686 (apply!4774 (charsOf!1856 (h!23585 (t!150695 tokens!457))) 0))) lt!610411))))

(assert (=> d!496876 (= lt!610411 0)))

(assert (=> d!496876 (= lt!610412 (focus!197 (rulesRegex!591 thiss!17113 rules!1846)))))

(declare-fun validRegex!1804 (Regex!4535) Bool)

(assert (=> d!496876 (validRegex!1804 (rulesRegex!591 thiss!17113 rules!1846))))

(assert (=> d!496876 (= (prefixMatchZipperSequence!613 (rulesRegex!591 thiss!17113 rules!1846) (++!4909 lt!610228 (singletonSeq!1686 (apply!4774 (charsOf!1856 (h!23585 (t!150695 tokens!457))) 0)))) lt!610416)))

(declare-fun bs!396306 () Bool)

(assert (= bs!396306 d!496876))

(assert (=> bs!396306 m!1995435))

(declare-fun m!1995771 () Bool)

(assert (=> bs!396306 m!1995771))

(assert (=> bs!396306 m!1995441))

(declare-fun m!1995773 () Bool)

(assert (=> bs!396306 m!1995773))

(assert (=> bs!396306 m!1995441))

(declare-fun m!1995775 () Bool)

(assert (=> bs!396306 m!1995775))

(assert (=> bs!396306 m!1995773))

(declare-fun m!1995777 () Bool)

(assert (=> bs!396306 m!1995777))

(assert (=> bs!396306 m!1995435))

(declare-fun m!1995779 () Bool)

(assert (=> bs!396306 m!1995779))

(declare-fun m!1995781 () Bool)

(assert (=> bs!396306 m!1995781))

(assert (=> bs!396306 m!1995441))

(declare-fun m!1995783 () Bool)

(assert (=> bs!396306 m!1995783))

(assert (=> bs!396306 m!1995435))

(declare-fun m!1995785 () Bool)

(assert (=> bs!396306 m!1995785))

(assert (=> bs!396306 m!1995441))

(declare-fun m!1995787 () Bool)

(assert (=> bs!396306 m!1995787))

(assert (=> bs!396306 m!1995779))

(assert (=> bs!396306 m!1995441))

(declare-fun m!1995789 () Bool)

(assert (=> bs!396306 m!1995789))

(assert (=> bs!396306 m!1995435))

(declare-fun m!1995791 () Bool)

(assert (=> bs!396306 m!1995791))

(assert (=> bs!396306 m!1995435))

(assert (=> bs!396306 m!1995787))

(declare-fun m!1995793 () Bool)

(assert (=> bs!396306 m!1995793))

(assert (=> bs!396306 m!1995779))

(declare-fun m!1995795 () Bool)

(assert (=> bs!396306 m!1995795))

(assert (=> b!1648221 d!496876))

(declare-fun d!496878 () Bool)

(declare-fun lt!610420 () C!9244)

(declare-fun apply!4780 (List!18251 Int) C!9244)

(assert (=> d!496878 (= lt!610420 (apply!4780 (list!7226 (charsOf!1856 (h!23585 (t!150695 tokens!457)))) 0))))

(declare-fun apply!4781 (Conc!6062 Int) C!9244)

(assert (=> d!496878 (= lt!610420 (apply!4781 (c!268057 (charsOf!1856 (h!23585 (t!150695 tokens!457)))) 0))))

(declare-fun e!1057108 () Bool)

(assert (=> d!496878 e!1057108))

(declare-fun res!738633 () Bool)

(assert (=> d!496878 (=> (not res!738633) (not e!1057108))))

(assert (=> d!496878 (= res!738633 (<= 0 0))))

(assert (=> d!496878 (= (apply!4774 (charsOf!1856 (h!23585 (t!150695 tokens!457))) 0) lt!610420)))

(declare-fun b!1648378 () Bool)

(declare-fun size!14486 (BalanceConc!12068) Int)

(assert (=> b!1648378 (= e!1057108 (< 0 (size!14486 (charsOf!1856 (h!23585 (t!150695 tokens!457))))))))

(assert (= (and d!496878 res!738633) b!1648378))

(assert (=> d!496878 m!1995445))

(declare-fun m!1995797 () Bool)

(assert (=> d!496878 m!1995797))

(assert (=> d!496878 m!1995797))

(declare-fun m!1995799 () Bool)

(assert (=> d!496878 m!1995799))

(declare-fun m!1995801 () Bool)

(assert (=> d!496878 m!1995801))

(assert (=> b!1648378 m!1995445))

(declare-fun m!1995803 () Bool)

(assert (=> b!1648378 m!1995803))

(assert (=> b!1648221 d!496878))

(declare-fun d!496880 () Bool)

(declare-fun lt!610423 () Unit!30227)

(declare-fun lemma!262 (List!18253 LexerInterface!2836 List!18253) Unit!30227)

(assert (=> d!496880 (= lt!610423 (lemma!262 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67640 () Int)

(declare-fun generalisedUnion!270 (List!18257) Regex!4535)

(declare-fun map!3745 (List!18253 Int) List!18257)

(assert (=> d!496880 (= (rulesRegex!591 thiss!17113 rules!1846) (generalisedUnion!270 (map!3745 rules!1846 lambda!67640)))))

(declare-fun bs!396307 () Bool)

(assert (= bs!396307 d!496880))

(declare-fun m!1995805 () Bool)

(assert (=> bs!396307 m!1995805))

(declare-fun m!1995807 () Bool)

(assert (=> bs!396307 m!1995807))

(assert (=> bs!396307 m!1995807))

(declare-fun m!1995809 () Bool)

(assert (=> bs!396307 m!1995809))

(assert (=> b!1648221 d!496880))

(declare-fun d!496882 () Bool)

(declare-fun lt!610426 () BalanceConc!12068)

(assert (=> d!496882 (= (list!7226 lt!610426) (originalCharacters!4021 (h!23585 (t!150695 tokens!457))))))

(declare-fun dynLambda!8149 (Int TokenValue!3297) BalanceConc!12068)

(assert (=> d!496882 (= lt!610426 (dynLambda!8149 (toChars!4513 (transformation!3207 (rule!5065 (h!23585 (t!150695 tokens!457))))) (value!101072 (h!23585 (t!150695 tokens!457)))))))

(assert (=> d!496882 (= (charsOf!1856 (h!23585 (t!150695 tokens!457))) lt!610426)))

(declare-fun b_lambda!51807 () Bool)

(assert (=> (not b_lambda!51807) (not d!496882)))

(declare-fun tb!94419 () Bool)

(declare-fun t!150708 () Bool)

(assert (=> (and b!1648229 (= (toChars!4513 (transformation!3207 (h!23584 rules!1846))) (toChars!4513 (transformation!3207 (rule!5065 (h!23585 (t!150695 tokens!457)))))) t!150708) tb!94419))

(declare-fun b!1648383 () Bool)

(declare-fun e!1057111 () Bool)

(declare-fun tp!477376 () Bool)

(declare-fun inv!23551 (Conc!6062) Bool)

(assert (=> b!1648383 (= e!1057111 (and (inv!23551 (c!268057 (dynLambda!8149 (toChars!4513 (transformation!3207 (rule!5065 (h!23585 (t!150695 tokens!457))))) (value!101072 (h!23585 (t!150695 tokens!457)))))) tp!477376))))

(declare-fun result!114052 () Bool)

(declare-fun inv!23552 (BalanceConc!12068) Bool)

(assert (=> tb!94419 (= result!114052 (and (inv!23552 (dynLambda!8149 (toChars!4513 (transformation!3207 (rule!5065 (h!23585 (t!150695 tokens!457))))) (value!101072 (h!23585 (t!150695 tokens!457))))) e!1057111))))

(assert (= tb!94419 b!1648383))

(declare-fun m!1995811 () Bool)

(assert (=> b!1648383 m!1995811))

(declare-fun m!1995813 () Bool)

(assert (=> tb!94419 m!1995813))

(assert (=> d!496882 t!150708))

(declare-fun b_and!117049 () Bool)

(assert (= b_and!117039 (and (=> t!150708 result!114052) b_and!117049)))

(declare-fun t!150710 () Bool)

(declare-fun tb!94421 () Bool)

(assert (=> (and b!1648227 (= (toChars!4513 (transformation!3207 (rule!5065 (h!23585 tokens!457)))) (toChars!4513 (transformation!3207 (rule!5065 (h!23585 (t!150695 tokens!457)))))) t!150710) tb!94421))

(declare-fun result!114056 () Bool)

(assert (= result!114056 result!114052))

(assert (=> d!496882 t!150710))

(declare-fun b_and!117051 () Bool)

(assert (= b_and!117043 (and (=> t!150710 result!114056) b_and!117051)))

(declare-fun m!1995815 () Bool)

(assert (=> d!496882 m!1995815))

(declare-fun m!1995817 () Bool)

(assert (=> d!496882 m!1995817))

(assert (=> b!1648221 d!496882))

(declare-fun d!496884 () Bool)

(declare-fun lt!610429 () BalanceConc!12068)

(assert (=> d!496884 (= (list!7226 lt!610429) (printList!949 thiss!17113 (list!7225 (seqFromList!2153 tokens!457))))))

(assert (=> d!496884 (= lt!610429 (printTailRec!887 thiss!17113 (seqFromList!2153 tokens!457) 0 (BalanceConc!12069 Empty!6062)))))

(assert (=> d!496884 (= (print!1367 thiss!17113 (seqFromList!2153 tokens!457)) lt!610429)))

(declare-fun bs!396308 () Bool)

(assert (= bs!396308 d!496884))

(declare-fun m!1995819 () Bool)

(assert (=> bs!396308 m!1995819))

(assert (=> bs!396308 m!1995467))

(declare-fun m!1995821 () Bool)

(assert (=> bs!396308 m!1995821))

(assert (=> bs!396308 m!1995821))

(declare-fun m!1995823 () Bool)

(assert (=> bs!396308 m!1995823))

(assert (=> bs!396308 m!1995467))

(declare-fun m!1995825 () Bool)

(assert (=> bs!396308 m!1995825))

(assert (=> b!1648231 d!496884))

(declare-fun d!496886 () Bool)

(declare-fun list!7228 (Conc!6062) List!18251)

(assert (=> d!496886 (= (list!7226 lt!610225) (list!7228 (c!268057 lt!610225)))))

(declare-fun bs!396309 () Bool)

(assert (= bs!396309 d!496886))

(declare-fun m!1995827 () Bool)

(assert (=> bs!396309 m!1995827))

(assert (=> b!1648231 d!496886))

(declare-fun d!496888 () Bool)

(assert (=> d!496888 (= (list!7226 lt!610218) (list!7228 (c!268057 lt!610218)))))

(declare-fun bs!396310 () Bool)

(assert (= bs!396310 d!496888))

(declare-fun m!1995829 () Bool)

(assert (=> bs!396310 m!1995829))

(assert (=> b!1648231 d!496888))

(declare-fun d!496890 () Bool)

(declare-fun lt!610430 () BalanceConc!12068)

(assert (=> d!496890 (= (list!7226 lt!610430) (printList!949 thiss!17113 (list!7225 lt!610222)))))

(assert (=> d!496890 (= lt!610430 (printTailRec!887 thiss!17113 lt!610222 0 (BalanceConc!12069 Empty!6062)))))

(assert (=> d!496890 (= (print!1367 thiss!17113 lt!610222) lt!610430)))

(declare-fun bs!396311 () Bool)

(assert (= bs!396311 d!496890))

(declare-fun m!1995831 () Bool)

(assert (=> bs!396311 m!1995831))

(assert (=> bs!396311 m!1995495))

(assert (=> bs!396311 m!1995495))

(declare-fun m!1995833 () Bool)

(assert (=> bs!396311 m!1995833))

(declare-fun m!1995835 () Bool)

(assert (=> bs!396311 m!1995835))

(assert (=> b!1648231 d!496890))

(declare-fun b!1648412 () Bool)

(declare-fun e!1057131 () Bool)

(declare-fun lt!610442 () tuple2!17856)

(assert (=> b!1648412 (= e!1057131 (= (_2!10330 lt!610442) lt!610218))))

(declare-fun b!1648413 () Bool)

(declare-fun e!1057130 () Bool)

(assert (=> b!1648413 (= e!1057131 e!1057130)))

(declare-fun res!738653 () Bool)

(assert (=> b!1648413 (= res!738653 (< (size!14486 (_2!10330 lt!610442)) (size!14486 lt!610218)))))

(assert (=> b!1648413 (=> (not res!738653) (not e!1057130))))

(declare-fun d!496892 () Bool)

(declare-fun e!1057132 () Bool)

(assert (=> d!496892 e!1057132))

(declare-fun res!738654 () Bool)

(assert (=> d!496892 (=> (not res!738654) (not e!1057132))))

(assert (=> d!496892 (= res!738654 e!1057131)))

(declare-fun c!268084 () Bool)

(declare-fun size!14487 (BalanceConc!12070) Int)

(assert (=> d!496892 (= c!268084 (> (size!14487 (_1!10330 lt!610442)) 0))))

(declare-fun lexTailRecV2!590 (LexerInterface!2836 List!18253 BalanceConc!12068 BalanceConc!12068 BalanceConc!12068 BalanceConc!12070) tuple2!17856)

(assert (=> d!496892 (= lt!610442 (lexTailRecV2!590 thiss!17113 rules!1846 lt!610218 (BalanceConc!12069 Empty!6062) lt!610218 (BalanceConc!12071 Empty!6063)))))

(assert (=> d!496892 (= (lex!1320 thiss!17113 rules!1846 lt!610218) lt!610442)))

(declare-fun b!1648414 () Bool)

(declare-fun res!738652 () Bool)

(assert (=> b!1648414 (=> (not res!738652) (not e!1057132))))

(declare-datatypes ((tuple2!17862 0))(
  ( (tuple2!17863 (_1!10333 List!18254) (_2!10333 List!18251)) )
))
(declare-fun lexList!867 (LexerInterface!2836 List!18253 List!18251) tuple2!17862)

(assert (=> b!1648414 (= res!738652 (= (list!7225 (_1!10330 lt!610442)) (_1!10333 (lexList!867 thiss!17113 rules!1846 (list!7226 lt!610218)))))))

(declare-fun b!1648415 () Bool)

(assert (=> b!1648415 (= e!1057130 (not (isEmpty!11211 (_1!10330 lt!610442))))))

(declare-fun b!1648416 () Bool)

(assert (=> b!1648416 (= e!1057132 (= (list!7226 (_2!10330 lt!610442)) (_2!10333 (lexList!867 thiss!17113 rules!1846 (list!7226 lt!610218)))))))

(assert (= (and d!496892 c!268084) b!1648413))

(assert (= (and d!496892 (not c!268084)) b!1648412))

(assert (= (and b!1648413 res!738653) b!1648415))

(assert (= (and d!496892 res!738654) b!1648414))

(assert (= (and b!1648414 res!738652) b!1648416))

(declare-fun m!1995881 () Bool)

(assert (=> b!1648413 m!1995881))

(declare-fun m!1995883 () Bool)

(assert (=> b!1648413 m!1995883))

(declare-fun m!1995885 () Bool)

(assert (=> b!1648414 m!1995885))

(assert (=> b!1648414 m!1995459))

(assert (=> b!1648414 m!1995459))

(declare-fun m!1995887 () Bool)

(assert (=> b!1648414 m!1995887))

(declare-fun m!1995889 () Bool)

(assert (=> b!1648415 m!1995889))

(declare-fun m!1995891 () Bool)

(assert (=> b!1648416 m!1995891))

(assert (=> b!1648416 m!1995459))

(assert (=> b!1648416 m!1995459))

(assert (=> b!1648416 m!1995887))

(declare-fun m!1995893 () Bool)

(assert (=> d!496892 m!1995893))

(declare-fun m!1995895 () Bool)

(assert (=> d!496892 m!1995895))

(assert (=> b!1648231 d!496892))

(declare-fun d!496912 () Bool)

(declare-fun fromListB!957 (List!18254) BalanceConc!12070)

(assert (=> d!496912 (= (seqFromList!2153 tokens!457) (fromListB!957 tokens!457))))

(declare-fun bs!396318 () Bool)

(assert (= bs!396318 d!496912))

(declare-fun m!1995897 () Bool)

(assert (=> bs!396318 m!1995897))

(assert (=> b!1648231 d!496912))

(declare-fun d!496914 () Bool)

(declare-fun lt!610443 () BalanceConc!12068)

(assert (=> d!496914 (= (list!7226 lt!610443) (originalCharacters!4021 (h!23585 tokens!457)))))

(assert (=> d!496914 (= lt!610443 (dynLambda!8149 (toChars!4513 (transformation!3207 (rule!5065 (h!23585 tokens!457)))) (value!101072 (h!23585 tokens!457))))))

(assert (=> d!496914 (= (charsOf!1856 (h!23585 tokens!457)) lt!610443)))

(declare-fun b_lambda!51809 () Bool)

(assert (=> (not b_lambda!51809) (not d!496914)))

(declare-fun tb!94423 () Bool)

(declare-fun t!150712 () Bool)

(assert (=> (and b!1648229 (= (toChars!4513 (transformation!3207 (h!23584 rules!1846))) (toChars!4513 (transformation!3207 (rule!5065 (h!23585 tokens!457))))) t!150712) tb!94423))

(declare-fun b!1648417 () Bool)

(declare-fun e!1057133 () Bool)

(declare-fun tp!477377 () Bool)

(assert (=> b!1648417 (= e!1057133 (and (inv!23551 (c!268057 (dynLambda!8149 (toChars!4513 (transformation!3207 (rule!5065 (h!23585 tokens!457)))) (value!101072 (h!23585 tokens!457))))) tp!477377))))

(declare-fun result!114058 () Bool)

(assert (=> tb!94423 (= result!114058 (and (inv!23552 (dynLambda!8149 (toChars!4513 (transformation!3207 (rule!5065 (h!23585 tokens!457)))) (value!101072 (h!23585 tokens!457)))) e!1057133))))

(assert (= tb!94423 b!1648417))

(declare-fun m!1995899 () Bool)

(assert (=> b!1648417 m!1995899))

(declare-fun m!1995901 () Bool)

(assert (=> tb!94423 m!1995901))

(assert (=> d!496914 t!150712))

(declare-fun b_and!117053 () Bool)

(assert (= b_and!117049 (and (=> t!150712 result!114058) b_and!117053)))

(declare-fun t!150714 () Bool)

(declare-fun tb!94425 () Bool)

(assert (=> (and b!1648227 (= (toChars!4513 (transformation!3207 (rule!5065 (h!23585 tokens!457)))) (toChars!4513 (transformation!3207 (rule!5065 (h!23585 tokens!457))))) t!150714) tb!94425))

(declare-fun result!114060 () Bool)

(assert (= result!114060 result!114058))

(assert (=> d!496914 t!150714))

(declare-fun b_and!117055 () Bool)

(assert (= b_and!117051 (and (=> t!150714 result!114060) b_and!117055)))

(declare-fun m!1995903 () Bool)

(assert (=> d!496914 m!1995903))

(declare-fun m!1995905 () Bool)

(assert (=> d!496914 m!1995905))

(assert (=> b!1648231 d!496914))

(declare-fun d!496916 () Bool)

(assert (=> d!496916 (= (list!7226 lt!610228) (list!7228 (c!268057 lt!610228)))))

(declare-fun bs!396319 () Bool)

(assert (= bs!396319 d!496916))

(declare-fun m!1995907 () Bool)

(assert (=> bs!396319 m!1995907))

(assert (=> b!1648231 d!496916))

(declare-fun d!496918 () Bool)

(assert (=> d!496918 (= (seqFromList!2153 (t!150695 tokens!457)) (fromListB!957 (t!150695 tokens!457)))))

(declare-fun bs!396320 () Bool)

(assert (= bs!396320 d!496918))

(declare-fun m!1995909 () Bool)

(assert (=> bs!396320 m!1995909))

(assert (=> b!1648231 d!496918))

(declare-fun b!1648427 () Bool)

(declare-fun e!1057138 () List!18251)

(assert (=> b!1648427 (= e!1057138 (Cons!18181 (h!23582 lt!610214) (++!4910 (t!150692 lt!610214) lt!610230)))))

(declare-fun b!1648429 () Bool)

(declare-fun lt!610446 () List!18251)

(declare-fun e!1057139 () Bool)

(assert (=> b!1648429 (= e!1057139 (or (not (= lt!610230 Nil!18181)) (= lt!610446 lt!610214)))))

(declare-fun d!496920 () Bool)

(assert (=> d!496920 e!1057139))

(declare-fun res!738660 () Bool)

(assert (=> d!496920 (=> (not res!738660) (not e!1057139))))

(declare-fun content!2524 (List!18251) (InoxSet C!9244))

(assert (=> d!496920 (= res!738660 (= (content!2524 lt!610446) ((_ map or) (content!2524 lt!610214) (content!2524 lt!610230))))))

(assert (=> d!496920 (= lt!610446 e!1057138)))

(declare-fun c!268087 () Bool)

(assert (=> d!496920 (= c!268087 ((_ is Nil!18181) lt!610214))))

(assert (=> d!496920 (= (++!4910 lt!610214 lt!610230) lt!610446)))

(declare-fun b!1648428 () Bool)

(declare-fun res!738659 () Bool)

(assert (=> b!1648428 (=> (not res!738659) (not e!1057139))))

(declare-fun size!14488 (List!18251) Int)

(assert (=> b!1648428 (= res!738659 (= (size!14488 lt!610446) (+ (size!14488 lt!610214) (size!14488 lt!610230))))))

(declare-fun b!1648426 () Bool)

(assert (=> b!1648426 (= e!1057138 lt!610230)))

(assert (= (and d!496920 c!268087) b!1648426))

(assert (= (and d!496920 (not c!268087)) b!1648427))

(assert (= (and d!496920 res!738660) b!1648428))

(assert (= (and b!1648428 res!738659) b!1648429))

(declare-fun m!1995911 () Bool)

(assert (=> b!1648427 m!1995911))

(declare-fun m!1995913 () Bool)

(assert (=> d!496920 m!1995913))

(declare-fun m!1995915 () Bool)

(assert (=> d!496920 m!1995915))

(declare-fun m!1995917 () Bool)

(assert (=> d!496920 m!1995917))

(declare-fun m!1995919 () Bool)

(assert (=> b!1648428 m!1995919))

(declare-fun m!1995921 () Bool)

(assert (=> b!1648428 m!1995921))

(declare-fun m!1995923 () Bool)

(assert (=> b!1648428 m!1995923))

(assert (=> b!1648231 d!496920))

(declare-fun d!496922 () Bool)

(declare-fun res!738665 () Bool)

(declare-fun e!1057142 () Bool)

(assert (=> d!496922 (=> (not res!738665) (not e!1057142))))

(declare-fun isEmpty!11216 (List!18251) Bool)

(assert (=> d!496922 (= res!738665 (not (isEmpty!11216 (originalCharacters!4021 (h!23585 tokens!457)))))))

(assert (=> d!496922 (= (inv!23548 (h!23585 tokens!457)) e!1057142)))

(declare-fun b!1648434 () Bool)

(declare-fun res!738666 () Bool)

(assert (=> b!1648434 (=> (not res!738666) (not e!1057142))))

(assert (=> b!1648434 (= res!738666 (= (originalCharacters!4021 (h!23585 tokens!457)) (list!7226 (dynLambda!8149 (toChars!4513 (transformation!3207 (rule!5065 (h!23585 tokens!457)))) (value!101072 (h!23585 tokens!457))))))))

(declare-fun b!1648435 () Bool)

(assert (=> b!1648435 (= e!1057142 (= (size!14482 (h!23585 tokens!457)) (size!14488 (originalCharacters!4021 (h!23585 tokens!457)))))))

(assert (= (and d!496922 res!738665) b!1648434))

(assert (= (and b!1648434 res!738666) b!1648435))

(declare-fun b_lambda!51811 () Bool)

(assert (=> (not b_lambda!51811) (not b!1648434)))

(assert (=> b!1648434 t!150712))

(declare-fun b_and!117057 () Bool)

(assert (= b_and!117053 (and (=> t!150712 result!114058) b_and!117057)))

(assert (=> b!1648434 t!150714))

(declare-fun b_and!117059 () Bool)

(assert (= b_and!117055 (and (=> t!150714 result!114060) b_and!117059)))

(declare-fun m!1995925 () Bool)

(assert (=> d!496922 m!1995925))

(assert (=> b!1648434 m!1995905))

(assert (=> b!1648434 m!1995905))

(declare-fun m!1995927 () Bool)

(assert (=> b!1648434 m!1995927))

(declare-fun m!1995929 () Bool)

(assert (=> b!1648435 m!1995929))

(assert (=> b!1648228 d!496922))

(declare-fun d!496924 () Bool)

(assert (=> d!496924 (= (inv!23544 (tag!3487 (h!23584 rules!1846))) (= (mod (str.len (value!101046 (tag!3487 (h!23584 rules!1846)))) 2) 0))))

(assert (=> b!1648236 d!496924))

(declare-fun d!496926 () Bool)

(declare-fun res!738667 () Bool)

(declare-fun e!1057143 () Bool)

(assert (=> d!496926 (=> (not res!738667) (not e!1057143))))

(assert (=> d!496926 (= res!738667 (semiInverseModEq!1237 (toChars!4513 (transformation!3207 (h!23584 rules!1846))) (toValue!4654 (transformation!3207 (h!23584 rules!1846)))))))

(assert (=> d!496926 (= (inv!23547 (transformation!3207 (h!23584 rules!1846))) e!1057143)))

(declare-fun b!1648436 () Bool)

(assert (=> b!1648436 (= e!1057143 (equivClasses!1178 (toChars!4513 (transformation!3207 (h!23584 rules!1846))) (toValue!4654 (transformation!3207 (h!23584 rules!1846)))))))

(assert (= (and d!496926 res!738667) b!1648436))

(declare-fun m!1995931 () Bool)

(assert (=> d!496926 m!1995931))

(declare-fun m!1995933 () Bool)

(assert (=> b!1648436 m!1995933))

(assert (=> b!1648236 d!496926))

(declare-fun d!496928 () Bool)

(assert (=> d!496928 (= (separableTokensPredicate!776 thiss!17113 (h!23585 tokens!457) (h!23585 (t!150695 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!613 (rulesRegex!591 thiss!17113 rules!1846) (++!4909 (charsOf!1856 (h!23585 tokens!457)) (singletonSeq!1686 (apply!4774 (charsOf!1856 (h!23585 (t!150695 tokens!457))) 0))))))))

(declare-fun bs!396321 () Bool)

(assert (= bs!396321 d!496928))

(assert (=> bs!396321 m!1995461))

(assert (=> bs!396321 m!1995439))

(declare-fun m!1995935 () Bool)

(assert (=> bs!396321 m!1995935))

(assert (=> bs!396321 m!1995435))

(assert (=> bs!396321 m!1995445))

(assert (=> bs!396321 m!1995461))

(assert (=> bs!396321 m!1995445))

(assert (=> bs!396321 m!1995437))

(assert (=> bs!396321 m!1995435))

(assert (=> bs!396321 m!1995935))

(declare-fun m!1995937 () Bool)

(assert (=> bs!396321 m!1995937))

(assert (=> bs!396321 m!1995437))

(assert (=> bs!396321 m!1995439))

(assert (=> b!1648225 d!496928))

(declare-fun d!496930 () Bool)

(declare-fun list!7230 (Conc!6063) List!18254)

(assert (=> d!496930 (= (list!7225 (_1!10330 lt!610221)) (list!7230 (c!268059 (_1!10330 lt!610221))))))

(declare-fun bs!396322 () Bool)

(assert (= bs!396322 d!496930))

(declare-fun m!1995939 () Bool)

(assert (=> bs!396322 m!1995939))

(assert (=> b!1648235 d!496930))

(declare-fun d!496932 () Bool)

(declare-fun e!1057161 () Bool)

(assert (=> d!496932 e!1057161))

(declare-fun res!738682 () Bool)

(assert (=> d!496932 (=> (not res!738682) (not e!1057161))))

(assert (=> d!496932 (= res!738682 (= (list!7225 (_1!10330 (lex!1320 thiss!17113 rules!1846 (print!1367 thiss!17113 (seqFromList!2153 (t!150695 tokens!457)))))) (t!150695 tokens!457)))))

(declare-fun lt!610582 () Unit!30227)

(declare-fun e!1057160 () Unit!30227)

(assert (=> d!496932 (= lt!610582 e!1057160)))

(declare-fun c!268093 () Bool)

(assert (=> d!496932 (= c!268093 (or ((_ is Nil!18184) (t!150695 tokens!457)) ((_ is Nil!18184) (t!150695 (t!150695 tokens!457)))))))

(assert (=> d!496932 (not (isEmpty!11210 rules!1846))))

(assert (=> d!496932 (= (theoremInvertabilityWhenTokenListSeparable!279 thiss!17113 rules!1846 (t!150695 tokens!457)) lt!610582)))

(declare-fun b!1648461 () Bool)

(declare-fun Unit!30233 () Unit!30227)

(assert (=> b!1648461 (= e!1057160 Unit!30233)))

(declare-fun b!1648462 () Bool)

(declare-fun Unit!30234 () Unit!30227)

(assert (=> b!1648462 (= e!1057160 Unit!30234)))

(declare-fun lt!610579 () BalanceConc!12068)

(assert (=> b!1648462 (= lt!610579 (print!1367 thiss!17113 (seqFromList!2153 (t!150695 tokens!457))))))

(declare-fun lt!610577 () BalanceConc!12068)

(assert (=> b!1648462 (= lt!610577 (print!1367 thiss!17113 (seqFromList!2153 (t!150695 (t!150695 tokens!457)))))))

(declare-fun lt!610595 () tuple2!17856)

(assert (=> b!1648462 (= lt!610595 (lex!1320 thiss!17113 rules!1846 lt!610577))))

(declare-fun lt!610586 () List!18251)

(assert (=> b!1648462 (= lt!610586 (list!7226 (charsOf!1856 (h!23585 (t!150695 tokens!457)))))))

(declare-fun lt!610585 () List!18251)

(assert (=> b!1648462 (= lt!610585 (list!7226 lt!610577))))

(declare-fun lt!610580 () Unit!30227)

(assert (=> b!1648462 (= lt!610580 (lemmaConcatTwoListThenFirstIsPrefix!990 lt!610586 lt!610585))))

(assert (=> b!1648462 (isPrefix!1465 lt!610586 (++!4910 lt!610586 lt!610585))))

(declare-fun lt!610584 () Unit!30227)

(assert (=> b!1648462 (= lt!610584 lt!610580)))

(declare-fun lt!610573 () Unit!30227)

(assert (=> b!1648462 (= lt!610573 (theoremInvertabilityWhenTokenListSeparable!279 thiss!17113 rules!1846 (t!150695 (t!150695 tokens!457))))))

(declare-fun lt!610588 () Unit!30227)

(assert (=> b!1648462 (= lt!610588 (seqFromListBHdTlConstructive!282 (h!23585 (t!150695 (t!150695 tokens!457))) (t!150695 (t!150695 (t!150695 tokens!457))) (_1!10330 lt!610595)))))

(assert (=> b!1648462 (= (list!7225 (_1!10330 lt!610595)) (list!7225 (prepend!767 (seqFromList!2153 (t!150695 (t!150695 (t!150695 tokens!457)))) (h!23585 (t!150695 (t!150695 tokens!457))))))))

(declare-fun lt!610594 () Unit!30227)

(assert (=> b!1648462 (= lt!610594 lt!610588)))

(declare-fun lt!610575 () Option!3448)

(assert (=> b!1648462 (= lt!610575 (maxPrefix!1398 thiss!17113 rules!1846 (list!7226 lt!610579)))))

(assert (=> b!1648462 (= (print!1367 thiss!17113 (singletonSeq!1687 (h!23585 (t!150695 tokens!457)))) (printTailRec!887 thiss!17113 (singletonSeq!1687 (h!23585 (t!150695 tokens!457))) 0 (BalanceConc!12069 Empty!6062)))))

(declare-fun lt!610572 () Unit!30227)

(declare-fun Unit!30235 () Unit!30227)

(assert (=> b!1648462 (= lt!610572 Unit!30235)))

(declare-fun lt!610574 () Unit!30227)

(assert (=> b!1648462 (= lt!610574 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!404 thiss!17113 rules!1846 (list!7226 (charsOf!1856 (h!23585 (t!150695 tokens!457)))) (list!7226 lt!610577)))))

(assert (=> b!1648462 (= (list!7226 (charsOf!1856 (h!23585 (t!150695 tokens!457)))) (originalCharacters!4021 (h!23585 (t!150695 tokens!457))))))

(declare-fun lt!610590 () Unit!30227)

(declare-fun Unit!30237 () Unit!30227)

(assert (=> b!1648462 (= lt!610590 Unit!30237)))

(declare-fun head!3618 (List!18251) C!9244)

(assert (=> b!1648462 (= (list!7226 (singletonSeq!1686 (apply!4774 (charsOf!1856 (h!23585 (t!150695 (t!150695 tokens!457)))) 0))) (Cons!18181 (head!3618 (originalCharacters!4021 (h!23585 (t!150695 (t!150695 tokens!457))))) Nil!18181))))

(declare-fun lt!610596 () Unit!30227)

(declare-fun Unit!30239 () Unit!30227)

(assert (=> b!1648462 (= lt!610596 Unit!30239)))

(assert (=> b!1648462 (= (list!7226 (singletonSeq!1686 (apply!4774 (charsOf!1856 (h!23585 (t!150695 (t!150695 tokens!457)))) 0))) (Cons!18181 (head!3618 (list!7226 lt!610577)) Nil!18181))))

(declare-fun lt!610592 () Unit!30227)

(declare-fun Unit!30241 () Unit!30227)

(assert (=> b!1648462 (= lt!610592 Unit!30241)))

(declare-fun head!3619 (BalanceConc!12068) C!9244)

(assert (=> b!1648462 (= (list!7226 (singletonSeq!1686 (apply!4774 (charsOf!1856 (h!23585 (t!150695 (t!150695 tokens!457)))) 0))) (Cons!18181 (head!3619 lt!610577) Nil!18181))))

(declare-fun lt!610581 () Unit!30227)

(declare-fun Unit!30242 () Unit!30227)

(assert (=> b!1648462 (= lt!610581 Unit!30242)))

(assert (=> b!1648462 (isDefined!2803 (maxPrefix!1398 thiss!17113 rules!1846 (originalCharacters!4021 (h!23585 (t!150695 tokens!457)))))))

(declare-fun lt!610576 () Unit!30227)

(declare-fun Unit!30243 () Unit!30227)

(assert (=> b!1648462 (= lt!610576 Unit!30243)))

(assert (=> b!1648462 (isDefined!2803 (maxPrefix!1398 thiss!17113 rules!1846 (list!7226 (charsOf!1856 (h!23585 (t!150695 tokens!457))))))))

(declare-fun lt!610578 () Unit!30227)

(declare-fun Unit!30244 () Unit!30227)

(assert (=> b!1648462 (= lt!610578 Unit!30244)))

(declare-fun lt!610589 () Unit!30227)

(declare-fun Unit!30245 () Unit!30227)

(assert (=> b!1648462 (= lt!610589 Unit!30245)))

(assert (=> b!1648462 (= (_1!10331 (get!5290 (maxPrefix!1398 thiss!17113 rules!1846 (list!7226 (charsOf!1856 (h!23585 (t!150695 tokens!457))))))) (h!23585 (t!150695 tokens!457)))))

(declare-fun lt!610583 () Unit!30227)

(declare-fun Unit!30246 () Unit!30227)

(assert (=> b!1648462 (= lt!610583 Unit!30246)))

(assert (=> b!1648462 (isEmpty!11216 (_2!10331 (get!5290 (maxPrefix!1398 thiss!17113 rules!1846 (list!7226 (charsOf!1856 (h!23585 (t!150695 tokens!457))))))))))

(declare-fun lt!610591 () Unit!30227)

(declare-fun Unit!30247 () Unit!30227)

(assert (=> b!1648462 (= lt!610591 Unit!30247)))

(assert (=> b!1648462 (matchR!2027 (regex!3207 (rule!5065 (h!23585 (t!150695 tokens!457)))) (list!7226 (charsOf!1856 (h!23585 (t!150695 tokens!457)))))))

(declare-fun lt!610593 () Unit!30227)

(declare-fun Unit!30248 () Unit!30227)

(assert (=> b!1648462 (= lt!610593 Unit!30248)))

(assert (=> b!1648462 (= (rule!5065 (h!23585 (t!150695 tokens!457))) (rule!5065 (h!23585 (t!150695 tokens!457))))))

(declare-fun lt!610587 () Unit!30227)

(declare-fun Unit!30249 () Unit!30227)

(assert (=> b!1648462 (= lt!610587 Unit!30249)))

(declare-fun lt!610571 () Unit!30227)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!165 (LexerInterface!2836 List!18253 Token!5980 Rule!6214 List!18251) Unit!30227)

(assert (=> b!1648462 (= lt!610571 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!165 thiss!17113 rules!1846 (h!23585 (t!150695 tokens!457)) (rule!5065 (h!23585 (t!150695 tokens!457))) (list!7226 lt!610577)))))

(declare-fun b!1648463 () Bool)

(declare-fun isEmpty!11217 (BalanceConc!12068) Bool)

(assert (=> b!1648463 (= e!1057161 (isEmpty!11217 (_2!10330 (lex!1320 thiss!17113 rules!1846 (print!1367 thiss!17113 (seqFromList!2153 (t!150695 tokens!457)))))))))

(assert (= (and d!496932 c!268093) b!1648461))

(assert (= (and d!496932 (not c!268093)) b!1648462))

(assert (= (and d!496932 res!738682) b!1648463))

(assert (=> d!496932 m!1995479))

(declare-fun m!1996001 () Bool)

(assert (=> d!496932 m!1996001))

(declare-fun m!1996003 () Bool)

(assert (=> d!496932 m!1996003))

(declare-fun m!1996005 () Bool)

(assert (=> d!496932 m!1996005))

(assert (=> d!496932 m!1995465))

(assert (=> d!496932 m!1995465))

(assert (=> d!496932 m!1996001))

(declare-fun m!1996007 () Bool)

(assert (=> b!1648462 m!1996007))

(assert (=> b!1648462 m!1995497))

(declare-fun m!1996009 () Bool)

(assert (=> b!1648462 m!1996009))

(declare-fun m!1996011 () Bool)

(assert (=> b!1648462 m!1996011))

(declare-fun m!1996013 () Bool)

(assert (=> b!1648462 m!1996013))

(declare-fun m!1996015 () Bool)

(assert (=> b!1648462 m!1996015))

(declare-fun m!1996017 () Bool)

(assert (=> b!1648462 m!1996017))

(assert (=> b!1648462 m!1995465))

(declare-fun m!1996019 () Bool)

(assert (=> b!1648462 m!1996019))

(assert (=> b!1648462 m!1996015))

(declare-fun m!1996021 () Bool)

(assert (=> b!1648462 m!1996021))

(declare-fun m!1996023 () Bool)

(assert (=> b!1648462 m!1996023))

(assert (=> b!1648462 m!1995445))

(assert (=> b!1648462 m!1995797))

(declare-fun m!1996025 () Bool)

(assert (=> b!1648462 m!1996025))

(assert (=> b!1648462 m!1995797))

(declare-fun m!1996027 () Bool)

(assert (=> b!1648462 m!1996027))

(assert (=> b!1648462 m!1995465))

(assert (=> b!1648462 m!1996001))

(assert (=> b!1648462 m!1996027))

(declare-fun m!1996029 () Bool)

(assert (=> b!1648462 m!1996029))

(assert (=> b!1648462 m!1995445))

(assert (=> b!1648462 m!1995797))

(declare-fun m!1996031 () Bool)

(assert (=> b!1648462 m!1996031))

(declare-fun m!1996033 () Bool)

(assert (=> b!1648462 m!1996033))

(assert (=> b!1648462 m!1996011))

(declare-fun m!1996035 () Bool)

(assert (=> b!1648462 m!1996035))

(declare-fun m!1996037 () Bool)

(assert (=> b!1648462 m!1996037))

(declare-fun m!1996039 () Bool)

(assert (=> b!1648462 m!1996039))

(declare-fun m!1996041 () Bool)

(assert (=> b!1648462 m!1996041))

(declare-fun m!1996043 () Bool)

(assert (=> b!1648462 m!1996043))

(assert (=> b!1648462 m!1995797))

(declare-fun m!1996045 () Bool)

(assert (=> b!1648462 m!1996045))

(declare-fun m!1996047 () Bool)

(assert (=> b!1648462 m!1996047))

(assert (=> b!1648462 m!1995497))

(declare-fun m!1996049 () Bool)

(assert (=> b!1648462 m!1996049))

(declare-fun m!1996051 () Bool)

(assert (=> b!1648462 m!1996051))

(assert (=> b!1648462 m!1996039))

(declare-fun m!1996053 () Bool)

(assert (=> b!1648462 m!1996053))

(declare-fun m!1996055 () Bool)

(assert (=> b!1648462 m!1996055))

(declare-fun m!1996057 () Bool)

(assert (=> b!1648462 m!1996057))

(assert (=> b!1648462 m!1996019))

(assert (=> b!1648462 m!1996011))

(declare-fun m!1996059 () Bool)

(assert (=> b!1648462 m!1996059))

(assert (=> b!1648462 m!1996037))

(assert (=> b!1648462 m!1996031))

(declare-fun m!1996061 () Bool)

(assert (=> b!1648462 m!1996061))

(assert (=> b!1648462 m!1996021))

(assert (=> b!1648462 m!1996027))

(declare-fun m!1996063 () Bool)

(assert (=> b!1648462 m!1996063))

(declare-fun m!1996065 () Bool)

(assert (=> b!1648462 m!1996065))

(assert (=> b!1648462 m!1996057))

(declare-fun m!1996067 () Bool)

(assert (=> b!1648462 m!1996067))

(assert (=> b!1648462 m!1996017))

(declare-fun m!1996069 () Bool)

(assert (=> b!1648462 m!1996069))

(assert (=> b!1648462 m!1996041))

(assert (=> b!1648462 m!1996031))

(declare-fun m!1996071 () Bool)

(assert (=> b!1648462 m!1996071))

(assert (=> b!1648462 m!1996031))

(assert (=> b!1648463 m!1995465))

(assert (=> b!1648463 m!1995465))

(assert (=> b!1648463 m!1996001))

(assert (=> b!1648463 m!1996001))

(assert (=> b!1648463 m!1996003))

(declare-fun m!1996073 () Bool)

(assert (=> b!1648463 m!1996073))

(assert (=> b!1648235 d!496932))

(declare-fun b!1648475 () Bool)

(declare-fun e!1057170 () Bool)

(assert (=> b!1648475 (= e!1057170 (>= (size!14488 lt!610232) (size!14488 lt!610214)))))

(declare-fun d!496942 () Bool)

(assert (=> d!496942 e!1057170))

(declare-fun res!738692 () Bool)

(assert (=> d!496942 (=> res!738692 e!1057170)))

(declare-fun lt!610599 () Bool)

(assert (=> d!496942 (= res!738692 (not lt!610599))))

(declare-fun e!1057169 () Bool)

(assert (=> d!496942 (= lt!610599 e!1057169)))

(declare-fun res!738691 () Bool)

(assert (=> d!496942 (=> res!738691 e!1057169)))

(assert (=> d!496942 (= res!738691 ((_ is Nil!18181) lt!610214))))

(assert (=> d!496942 (= (isPrefix!1465 lt!610214 lt!610232) lt!610599)))

(declare-fun b!1648472 () Bool)

(declare-fun e!1057168 () Bool)

(assert (=> b!1648472 (= e!1057169 e!1057168)))

(declare-fun res!738694 () Bool)

(assert (=> b!1648472 (=> (not res!738694) (not e!1057168))))

(assert (=> b!1648472 (= res!738694 (not ((_ is Nil!18181) lt!610232)))))

(declare-fun b!1648473 () Bool)

(declare-fun res!738693 () Bool)

(assert (=> b!1648473 (=> (not res!738693) (not e!1057168))))

(assert (=> b!1648473 (= res!738693 (= (head!3618 lt!610214) (head!3618 lt!610232)))))

(declare-fun b!1648474 () Bool)

(declare-fun tail!2434 (List!18251) List!18251)

(assert (=> b!1648474 (= e!1057168 (isPrefix!1465 (tail!2434 lt!610214) (tail!2434 lt!610232)))))

(assert (= (and d!496942 (not res!738691)) b!1648472))

(assert (= (and b!1648472 res!738694) b!1648473))

(assert (= (and b!1648473 res!738693) b!1648474))

(assert (= (and d!496942 (not res!738692)) b!1648475))

(declare-fun m!1996075 () Bool)

(assert (=> b!1648475 m!1996075))

(assert (=> b!1648475 m!1995921))

(declare-fun m!1996077 () Bool)

(assert (=> b!1648473 m!1996077))

(declare-fun m!1996079 () Bool)

(assert (=> b!1648473 m!1996079))

(declare-fun m!1996081 () Bool)

(assert (=> b!1648474 m!1996081))

(declare-fun m!1996083 () Bool)

(assert (=> b!1648474 m!1996083))

(assert (=> b!1648474 m!1996081))

(assert (=> b!1648474 m!1996083))

(declare-fun m!1996085 () Bool)

(assert (=> b!1648474 m!1996085))

(assert (=> b!1648235 d!496942))

(declare-fun d!496944 () Bool)

(assert (=> d!496944 (isPrefix!1465 lt!610214 (++!4910 lt!610214 lt!610230))))

(declare-fun lt!610602 () Unit!30227)

(declare-fun choose!9895 (List!18251 List!18251) Unit!30227)

(assert (=> d!496944 (= lt!610602 (choose!9895 lt!610214 lt!610230))))

(assert (=> d!496944 (= (lemmaConcatTwoListThenFirstIsPrefix!990 lt!610214 lt!610230) lt!610602)))

(declare-fun bs!396325 () Bool)

(assert (= bs!396325 d!496944))

(assert (=> bs!396325 m!1995463))

(assert (=> bs!396325 m!1995463))

(declare-fun m!1996087 () Bool)

(assert (=> bs!396325 m!1996087))

(declare-fun m!1996089 () Bool)

(assert (=> bs!396325 m!1996089))

(assert (=> b!1648235 d!496944))

(declare-fun d!496946 () Bool)

(declare-fun lt!610607 () Bool)

(declare-fun e!1057176 () Bool)

(assert (=> d!496946 (= lt!610607 e!1057176)))

(declare-fun res!738701 () Bool)

(assert (=> d!496946 (=> (not res!738701) (not e!1057176))))

(assert (=> d!496946 (= res!738701 (= (list!7225 (_1!10330 (lex!1320 thiss!17113 rules!1846 (print!1367 thiss!17113 (singletonSeq!1687 (h!23585 tokens!457)))))) (list!7225 (singletonSeq!1687 (h!23585 tokens!457)))))))

(declare-fun e!1057175 () Bool)

(assert (=> d!496946 (= lt!610607 e!1057175)))

(declare-fun res!738702 () Bool)

(assert (=> d!496946 (=> (not res!738702) (not e!1057175))))

(declare-fun lt!610608 () tuple2!17856)

(assert (=> d!496946 (= res!738702 (= (size!14487 (_1!10330 lt!610608)) 1))))

(assert (=> d!496946 (= lt!610608 (lex!1320 thiss!17113 rules!1846 (print!1367 thiss!17113 (singletonSeq!1687 (h!23585 tokens!457)))))))

(assert (=> d!496946 (not (isEmpty!11210 rules!1846))))

(assert (=> d!496946 (= (rulesProduceIndividualToken!1484 thiss!17113 rules!1846 (h!23585 tokens!457)) lt!610607)))

(declare-fun b!1648482 () Bool)

(declare-fun res!738703 () Bool)

(assert (=> b!1648482 (=> (not res!738703) (not e!1057175))))

(declare-fun apply!4782 (BalanceConc!12070 Int) Token!5980)

(assert (=> b!1648482 (= res!738703 (= (apply!4782 (_1!10330 lt!610608) 0) (h!23585 tokens!457)))))

(declare-fun b!1648483 () Bool)

(assert (=> b!1648483 (= e!1057175 (isEmpty!11217 (_2!10330 lt!610608)))))

(declare-fun b!1648484 () Bool)

(assert (=> b!1648484 (= e!1057176 (isEmpty!11217 (_2!10330 (lex!1320 thiss!17113 rules!1846 (print!1367 thiss!17113 (singletonSeq!1687 (h!23585 tokens!457)))))))))

(assert (= (and d!496946 res!738702) b!1648482))

(assert (= (and b!1648482 res!738703) b!1648483))

(assert (= (and d!496946 res!738701) b!1648484))

(assert (=> d!496946 m!1995455))

(declare-fun m!1996091 () Bool)

(assert (=> d!496946 m!1996091))

(assert (=> d!496946 m!1995479))

(declare-fun m!1996093 () Bool)

(assert (=> d!496946 m!1996093))

(assert (=> d!496946 m!1995455))

(assert (=> d!496946 m!1996091))

(declare-fun m!1996095 () Bool)

(assert (=> d!496946 m!1996095))

(assert (=> d!496946 m!1995455))

(declare-fun m!1996097 () Bool)

(assert (=> d!496946 m!1996097))

(declare-fun m!1996099 () Bool)

(assert (=> d!496946 m!1996099))

(declare-fun m!1996101 () Bool)

(assert (=> b!1648482 m!1996101))

(declare-fun m!1996103 () Bool)

(assert (=> b!1648483 m!1996103))

(assert (=> b!1648484 m!1995455))

(assert (=> b!1648484 m!1995455))

(assert (=> b!1648484 m!1996091))

(assert (=> b!1648484 m!1996091))

(assert (=> b!1648484 m!1996095))

(declare-fun m!1996105 () Bool)

(assert (=> b!1648484 m!1996105))

(assert (=> b!1648216 d!496946))

(declare-fun lt!610611 () Bool)

(declare-fun d!496948 () Bool)

(declare-fun isEmpty!11220 (List!18254) Bool)

(assert (=> d!496948 (= lt!610611 (isEmpty!11220 (list!7225 (_1!10330 (lex!1320 thiss!17113 rules!1846 (seqFromList!2154 lt!610214))))))))

(declare-fun isEmpty!11221 (Conc!6063) Bool)

(assert (=> d!496948 (= lt!610611 (isEmpty!11221 (c!268059 (_1!10330 (lex!1320 thiss!17113 rules!1846 (seqFromList!2154 lt!610214))))))))

(assert (=> d!496948 (= (isEmpty!11211 (_1!10330 (lex!1320 thiss!17113 rules!1846 (seqFromList!2154 lt!610214)))) lt!610611)))

(declare-fun bs!396326 () Bool)

(assert (= bs!396326 d!496948))

(assert (=> bs!396326 m!1995615))

(assert (=> bs!396326 m!1995615))

(declare-fun m!1996107 () Bool)

(assert (=> bs!396326 m!1996107))

(declare-fun m!1996109 () Bool)

(assert (=> bs!396326 m!1996109))

(assert (=> b!1648226 d!496948))

(declare-fun b!1648485 () Bool)

(declare-fun e!1057178 () Bool)

(declare-fun lt!610612 () tuple2!17856)

(assert (=> b!1648485 (= e!1057178 (= (_2!10330 lt!610612) (seqFromList!2154 lt!610214)))))

(declare-fun b!1648486 () Bool)

(declare-fun e!1057177 () Bool)

(assert (=> b!1648486 (= e!1057178 e!1057177)))

(declare-fun res!738705 () Bool)

(assert (=> b!1648486 (= res!738705 (< (size!14486 (_2!10330 lt!610612)) (size!14486 (seqFromList!2154 lt!610214))))))

(assert (=> b!1648486 (=> (not res!738705) (not e!1057177))))

(declare-fun d!496950 () Bool)

(declare-fun e!1057179 () Bool)

(assert (=> d!496950 e!1057179))

(declare-fun res!738706 () Bool)

(assert (=> d!496950 (=> (not res!738706) (not e!1057179))))

(assert (=> d!496950 (= res!738706 e!1057178)))

(declare-fun c!268094 () Bool)

(assert (=> d!496950 (= c!268094 (> (size!14487 (_1!10330 lt!610612)) 0))))

(assert (=> d!496950 (= lt!610612 (lexTailRecV2!590 thiss!17113 rules!1846 (seqFromList!2154 lt!610214) (BalanceConc!12069 Empty!6062) (seqFromList!2154 lt!610214) (BalanceConc!12071 Empty!6063)))))

(assert (=> d!496950 (= (lex!1320 thiss!17113 rules!1846 (seqFromList!2154 lt!610214)) lt!610612)))

(declare-fun b!1648487 () Bool)

(declare-fun res!738704 () Bool)

(assert (=> b!1648487 (=> (not res!738704) (not e!1057179))))

(assert (=> b!1648487 (= res!738704 (= (list!7225 (_1!10330 lt!610612)) (_1!10333 (lexList!867 thiss!17113 rules!1846 (list!7226 (seqFromList!2154 lt!610214))))))))

(declare-fun b!1648488 () Bool)

(assert (=> b!1648488 (= e!1057177 (not (isEmpty!11211 (_1!10330 lt!610612))))))

(declare-fun b!1648489 () Bool)

(assert (=> b!1648489 (= e!1057179 (= (list!7226 (_2!10330 lt!610612)) (_2!10333 (lexList!867 thiss!17113 rules!1846 (list!7226 (seqFromList!2154 lt!610214))))))))

(assert (= (and d!496950 c!268094) b!1648486))

(assert (= (and d!496950 (not c!268094)) b!1648485))

(assert (= (and b!1648486 res!738705) b!1648488))

(assert (= (and d!496950 res!738706) b!1648487))

(assert (= (and b!1648487 res!738704) b!1648489))

(declare-fun m!1996111 () Bool)

(assert (=> b!1648486 m!1996111))

(assert (=> b!1648486 m!1995429))

(declare-fun m!1996113 () Bool)

(assert (=> b!1648486 m!1996113))

(declare-fun m!1996115 () Bool)

(assert (=> b!1648487 m!1996115))

(assert (=> b!1648487 m!1995429))

(declare-fun m!1996117 () Bool)

(assert (=> b!1648487 m!1996117))

(assert (=> b!1648487 m!1996117))

(declare-fun m!1996119 () Bool)

(assert (=> b!1648487 m!1996119))

(declare-fun m!1996121 () Bool)

(assert (=> b!1648488 m!1996121))

(declare-fun m!1996123 () Bool)

(assert (=> b!1648489 m!1996123))

(assert (=> b!1648489 m!1995429))

(assert (=> b!1648489 m!1996117))

(assert (=> b!1648489 m!1996117))

(assert (=> b!1648489 m!1996119))

(declare-fun m!1996125 () Bool)

(assert (=> d!496950 m!1996125))

(assert (=> d!496950 m!1995429))

(assert (=> d!496950 m!1995429))

(declare-fun m!1996127 () Bool)

(assert (=> d!496950 m!1996127))

(assert (=> b!1648226 d!496950))

(declare-fun d!496952 () Bool)

(declare-fun fromListB!959 (List!18251) BalanceConc!12068)

(assert (=> d!496952 (= (seqFromList!2154 lt!610214) (fromListB!959 lt!610214))))

(declare-fun bs!396327 () Bool)

(assert (= bs!396327 d!496952))

(declare-fun m!1996129 () Bool)

(assert (=> bs!396327 m!1996129))

(assert (=> b!1648226 d!496952))

(declare-fun d!496954 () Bool)

(declare-fun res!738709 () Bool)

(declare-fun e!1057182 () Bool)

(assert (=> d!496954 (=> (not res!738709) (not e!1057182))))

(declare-fun rulesValid!1165 (LexerInterface!2836 List!18253) Bool)

(assert (=> d!496954 (= res!738709 (rulesValid!1165 thiss!17113 rules!1846))))

(assert (=> d!496954 (= (rulesInvariant!2505 thiss!17113 rules!1846) e!1057182)))

(declare-fun b!1648492 () Bool)

(declare-datatypes ((List!18259 0))(
  ( (Nil!18189) (Cons!18189 (h!23590 String!20816) (t!150742 List!18259)) )
))
(declare-fun noDuplicateTag!1165 (LexerInterface!2836 List!18253 List!18259) Bool)

(assert (=> b!1648492 (= e!1057182 (noDuplicateTag!1165 thiss!17113 rules!1846 Nil!18189))))

(assert (= (and d!496954 res!738709) b!1648492))

(declare-fun m!1996131 () Bool)

(assert (=> d!496954 m!1996131))

(declare-fun m!1996133 () Bool)

(assert (=> b!1648492 m!1996133))

(assert (=> b!1648233 d!496954))

(declare-fun d!496956 () Bool)

(declare-fun e!1057185 () Bool)

(assert (=> d!496956 e!1057185))

(declare-fun res!738712 () Bool)

(assert (=> d!496956 (=> (not res!738712) (not e!1057185))))

(declare-fun isBalanced!1854 (Conc!6063) Bool)

(declare-fun prepend!769 (Conc!6063 Token!5980) Conc!6063)

(assert (=> d!496956 (= res!738712 (isBalanced!1854 (prepend!769 (c!268059 (seqFromList!2153 (t!150695 (t!150695 tokens!457)))) (h!23585 (t!150695 tokens!457)))))))

(declare-fun lt!610615 () BalanceConc!12070)

(assert (=> d!496956 (= lt!610615 (BalanceConc!12071 (prepend!769 (c!268059 (seqFromList!2153 (t!150695 (t!150695 tokens!457)))) (h!23585 (t!150695 tokens!457)))))))

(assert (=> d!496956 (= (prepend!767 (seqFromList!2153 (t!150695 (t!150695 tokens!457))) (h!23585 (t!150695 tokens!457))) lt!610615)))

(declare-fun b!1648495 () Bool)

(assert (=> b!1648495 (= e!1057185 (= (list!7225 lt!610615) (Cons!18184 (h!23585 (t!150695 tokens!457)) (list!7225 (seqFromList!2153 (t!150695 (t!150695 tokens!457)))))))))

(assert (= (and d!496956 res!738712) b!1648495))

(declare-fun m!1996135 () Bool)

(assert (=> d!496956 m!1996135))

(assert (=> d!496956 m!1996135))

(declare-fun m!1996137 () Bool)

(assert (=> d!496956 m!1996137))

(declare-fun m!1996139 () Bool)

(assert (=> b!1648495 m!1996139))

(assert (=> b!1648495 m!1995497))

(declare-fun m!1996141 () Bool)

(assert (=> b!1648495 m!1996141))

(assert (=> b!1648222 d!496956))

(declare-fun d!496958 () Bool)

(assert (=> d!496958 (= (list!7225 (prepend!767 (seqFromList!2153 (t!150695 (t!150695 tokens!457))) (h!23585 (t!150695 tokens!457)))) (list!7230 (c!268059 (prepend!767 (seqFromList!2153 (t!150695 (t!150695 tokens!457))) (h!23585 (t!150695 tokens!457))))))))

(declare-fun bs!396328 () Bool)

(assert (= bs!396328 d!496958))

(declare-fun m!1996143 () Bool)

(assert (=> bs!396328 m!1996143))

(assert (=> b!1648222 d!496958))

(declare-fun d!496960 () Bool)

(assert (=> d!496960 (= (list!7225 (_1!10330 lt!610221)) (list!7225 (prepend!767 (seqFromList!2153 (t!150695 (t!150695 tokens!457))) (h!23585 (t!150695 tokens!457)))))))

(declare-fun lt!610618 () Unit!30227)

(declare-fun choose!9897 (Token!5980 List!18254 BalanceConc!12070) Unit!30227)

(assert (=> d!496960 (= lt!610618 (choose!9897 (h!23585 (t!150695 tokens!457)) (t!150695 (t!150695 tokens!457)) (_1!10330 lt!610221)))))

(declare-fun $colon$colon!364 (List!18254 Token!5980) List!18254)

(assert (=> d!496960 (= (list!7225 (_1!10330 lt!610221)) (list!7225 (seqFromList!2153 ($colon$colon!364 (t!150695 (t!150695 tokens!457)) (h!23585 (t!150695 tokens!457))))))))

(assert (=> d!496960 (= (seqFromListBHdTlConstructive!282 (h!23585 (t!150695 tokens!457)) (t!150695 (t!150695 tokens!457)) (_1!10330 lt!610221)) lt!610618)))

(declare-fun bs!396329 () Bool)

(assert (= bs!396329 d!496960))

(declare-fun m!1996145 () Bool)

(assert (=> bs!396329 m!1996145))

(assert (=> bs!396329 m!1995497))

(assert (=> bs!396329 m!1995499))

(assert (=> bs!396329 m!1995481))

(assert (=> bs!396329 m!1995499))

(assert (=> bs!396329 m!1995501))

(assert (=> bs!396329 m!1995497))

(declare-fun m!1996147 () Bool)

(assert (=> bs!396329 m!1996147))

(declare-fun m!1996149 () Bool)

(assert (=> bs!396329 m!1996149))

(declare-fun m!1996151 () Bool)

(assert (=> bs!396329 m!1996151))

(assert (=> bs!396329 m!1996147))

(assert (=> bs!396329 m!1996149))

(assert (=> b!1648222 d!496960))

(declare-fun d!496962 () Bool)

(assert (=> d!496962 (= (list!7225 lt!610222) (list!7230 (c!268059 lt!610222)))))

(declare-fun bs!396330 () Bool)

(assert (= bs!396330 d!496962))

(declare-fun m!1996153 () Bool)

(assert (=> bs!396330 m!1996153))

(assert (=> b!1648222 d!496962))

(declare-fun d!496964 () Bool)

(assert (=> d!496964 (= (seqFromList!2153 (t!150695 (t!150695 tokens!457))) (fromListB!957 (t!150695 (t!150695 tokens!457))))))

(declare-fun bs!396331 () Bool)

(assert (= bs!396331 d!496964))

(declare-fun m!1996155 () Bool)

(assert (=> bs!396331 m!1996155))

(assert (=> b!1648222 d!496964))

(declare-fun d!496966 () Bool)

(declare-fun e!1057198 () Bool)

(assert (=> d!496966 e!1057198))

(declare-fun res!738731 () Bool)

(assert (=> d!496966 (=> res!738731 e!1057198)))

(declare-fun lt!610682 () Option!3448)

(assert (=> d!496966 (= res!738731 (isEmpty!11212 lt!610682))))

(declare-fun e!1057196 () Option!3448)

(assert (=> d!496966 (= lt!610682 e!1057196)))

(declare-fun c!268100 () Bool)

(assert (=> d!496966 (= c!268100 (and ((_ is Cons!18183) rules!1846) ((_ is Nil!18183) (t!150694 rules!1846))))))

(declare-fun lt!610685 () Unit!30227)

(declare-fun lt!610681 () Unit!30227)

(assert (=> d!496966 (= lt!610685 lt!610681)))

(assert (=> d!496966 (isPrefix!1465 lt!610226 lt!610226)))

(declare-fun lemmaIsPrefixRefl!992 (List!18251 List!18251) Unit!30227)

(assert (=> d!496966 (= lt!610681 (lemmaIsPrefixRefl!992 lt!610226 lt!610226))))

(declare-fun rulesValidInductive!1014 (LexerInterface!2836 List!18253) Bool)

(assert (=> d!496966 (rulesValidInductive!1014 thiss!17113 rules!1846)))

(assert (=> d!496966 (= (maxPrefix!1398 thiss!17113 rules!1846 lt!610226) lt!610682)))

(declare-fun call!105830 () Option!3448)

(declare-fun bm!105825 () Bool)

(assert (=> bm!105825 (= call!105830 (maxPrefixOneRule!806 thiss!17113 (h!23584 rules!1846) lt!610226))))

(declare-fun b!1648520 () Bool)

(declare-fun res!738730 () Bool)

(declare-fun e!1057197 () Bool)

(assert (=> b!1648520 (=> (not res!738730) (not e!1057197))))

(declare-fun apply!4783 (TokenValueInjection!6254 BalanceConc!12068) TokenValue!3297)

(assert (=> b!1648520 (= res!738730 (= (value!101072 (_1!10331 (get!5290 lt!610682))) (apply!4783 (transformation!3207 (rule!5065 (_1!10331 (get!5290 lt!610682)))) (seqFromList!2154 (originalCharacters!4021 (_1!10331 (get!5290 lt!610682)))))))))

(declare-fun b!1648521 () Bool)

(declare-fun res!738734 () Bool)

(assert (=> b!1648521 (=> (not res!738734) (not e!1057197))))

(assert (=> b!1648521 (= res!738734 (< (size!14488 (_2!10331 (get!5290 lt!610682))) (size!14488 lt!610226)))))

(declare-fun b!1648522 () Bool)

(assert (=> b!1648522 (= e!1057198 e!1057197)))

(declare-fun res!738732 () Bool)

(assert (=> b!1648522 (=> (not res!738732) (not e!1057197))))

(assert (=> b!1648522 (= res!738732 (isDefined!2803 lt!610682))))

(declare-fun b!1648523 () Bool)

(declare-fun contains!3170 (List!18253 Rule!6214) Bool)

(assert (=> b!1648523 (= e!1057197 (contains!3170 rules!1846 (rule!5065 (_1!10331 (get!5290 lt!610682)))))))

(declare-fun b!1648524 () Bool)

(assert (=> b!1648524 (= e!1057196 call!105830)))

(declare-fun b!1648525 () Bool)

(declare-fun lt!610683 () Option!3448)

(declare-fun lt!610684 () Option!3448)

(assert (=> b!1648525 (= e!1057196 (ite (and ((_ is None!3447) lt!610683) ((_ is None!3447) lt!610684)) None!3447 (ite ((_ is None!3447) lt!610684) lt!610683 (ite ((_ is None!3447) lt!610683) lt!610684 (ite (>= (size!14482 (_1!10331 (v!24604 lt!610683))) (size!14482 (_1!10331 (v!24604 lt!610684)))) lt!610683 lt!610684)))))))

(assert (=> b!1648525 (= lt!610683 call!105830)))

(assert (=> b!1648525 (= lt!610684 (maxPrefix!1398 thiss!17113 (t!150694 rules!1846) lt!610226))))

(declare-fun b!1648526 () Bool)

(declare-fun res!738735 () Bool)

(assert (=> b!1648526 (=> (not res!738735) (not e!1057197))))

(assert (=> b!1648526 (= res!738735 (= (++!4910 (list!7226 (charsOf!1856 (_1!10331 (get!5290 lt!610682)))) (_2!10331 (get!5290 lt!610682))) lt!610226))))

(declare-fun b!1648527 () Bool)

(declare-fun res!738729 () Bool)

(assert (=> b!1648527 (=> (not res!738729) (not e!1057197))))

(assert (=> b!1648527 (= res!738729 (matchR!2027 (regex!3207 (rule!5065 (_1!10331 (get!5290 lt!610682)))) (list!7226 (charsOf!1856 (_1!10331 (get!5290 lt!610682))))))))

(declare-fun b!1648528 () Bool)

(declare-fun res!738733 () Bool)

(assert (=> b!1648528 (=> (not res!738733) (not e!1057197))))

(assert (=> b!1648528 (= res!738733 (= (list!7226 (charsOf!1856 (_1!10331 (get!5290 lt!610682)))) (originalCharacters!4021 (_1!10331 (get!5290 lt!610682)))))))

(assert (= (and d!496966 c!268100) b!1648524))

(assert (= (and d!496966 (not c!268100)) b!1648525))

(assert (= (or b!1648524 b!1648525) bm!105825))

(assert (= (and d!496966 (not res!738731)) b!1648522))

(assert (= (and b!1648522 res!738732) b!1648528))

(assert (= (and b!1648528 res!738733) b!1648521))

(assert (= (and b!1648521 res!738734) b!1648526))

(assert (= (and b!1648526 res!738735) b!1648520))

(assert (= (and b!1648520 res!738730) b!1648527))

(assert (= (and b!1648527 res!738729) b!1648523))

(declare-fun m!1996157 () Bool)

(assert (=> b!1648526 m!1996157))

(declare-fun m!1996159 () Bool)

(assert (=> b!1648526 m!1996159))

(assert (=> b!1648526 m!1996159))

(declare-fun m!1996161 () Bool)

(assert (=> b!1648526 m!1996161))

(assert (=> b!1648526 m!1996161))

(declare-fun m!1996163 () Bool)

(assert (=> b!1648526 m!1996163))

(declare-fun m!1996165 () Bool)

(assert (=> d!496966 m!1996165))

(declare-fun m!1996167 () Bool)

(assert (=> d!496966 m!1996167))

(declare-fun m!1996169 () Bool)

(assert (=> d!496966 m!1996169))

(declare-fun m!1996171 () Bool)

(assert (=> d!496966 m!1996171))

(assert (=> b!1648528 m!1996157))

(assert (=> b!1648528 m!1996159))

(assert (=> b!1648528 m!1996159))

(assert (=> b!1648528 m!1996161))

(assert (=> b!1648520 m!1996157))

(declare-fun m!1996173 () Bool)

(assert (=> b!1648520 m!1996173))

(assert (=> b!1648520 m!1996173))

(declare-fun m!1996175 () Bool)

(assert (=> b!1648520 m!1996175))

(assert (=> b!1648527 m!1996157))

(assert (=> b!1648527 m!1996159))

(assert (=> b!1648527 m!1996159))

(assert (=> b!1648527 m!1996161))

(assert (=> b!1648527 m!1996161))

(declare-fun m!1996177 () Bool)

(assert (=> b!1648527 m!1996177))

(declare-fun m!1996179 () Bool)

(assert (=> bm!105825 m!1996179))

(assert (=> b!1648523 m!1996157))

(declare-fun m!1996181 () Bool)

(assert (=> b!1648523 m!1996181))

(assert (=> b!1648521 m!1996157))

(declare-fun m!1996183 () Bool)

(assert (=> b!1648521 m!1996183))

(declare-fun m!1996185 () Bool)

(assert (=> b!1648521 m!1996185))

(declare-fun m!1996187 () Bool)

(assert (=> b!1648525 m!1996187))

(declare-fun m!1996189 () Bool)

(assert (=> b!1648522 m!1996189))

(assert (=> b!1648224 d!496966))

(declare-fun d!496968 () Bool)

(assert (=> d!496968 (= (list!7226 lt!610217) (list!7228 (c!268057 lt!610217)))))

(declare-fun bs!396332 () Bool)

(assert (= bs!396332 d!496968))

(declare-fun m!1996191 () Bool)

(assert (=> bs!396332 m!1996191))

(assert (=> b!1648224 d!496968))

(declare-fun d!496970 () Bool)

(declare-fun lt!610712 () BalanceConc!12068)

(assert (=> d!496970 (= (list!7226 lt!610712) (printList!949 thiss!17113 (list!7225 lt!610219)))))

(assert (=> d!496970 (= lt!610712 (printTailRec!887 thiss!17113 lt!610219 0 (BalanceConc!12069 Empty!6062)))))

(assert (=> d!496970 (= (print!1367 thiss!17113 lt!610219) lt!610712)))

(declare-fun bs!396333 () Bool)

(assert (= bs!396333 d!496970))

(declare-fun m!1996193 () Bool)

(assert (=> bs!396333 m!1996193))

(declare-fun m!1996195 () Bool)

(assert (=> bs!396333 m!1996195))

(assert (=> bs!396333 m!1996195))

(declare-fun m!1996197 () Bool)

(assert (=> bs!396333 m!1996197))

(assert (=> bs!396333 m!1995453))

(assert (=> b!1648224 d!496970))

(declare-fun d!496972 () Bool)

(declare-fun lt!610742 () BalanceConc!12068)

(declare-fun printListTailRec!389 (LexerInterface!2836 List!18254 List!18251) List!18251)

(declare-fun dropList!666 (BalanceConc!12070 Int) List!18254)

(assert (=> d!496972 (= (list!7226 lt!610742) (printListTailRec!389 thiss!17113 (dropList!666 lt!610219 0) (list!7226 (BalanceConc!12069 Empty!6062))))))

(declare-fun e!1057224 () BalanceConc!12068)

(assert (=> d!496972 (= lt!610742 e!1057224)))

(declare-fun c!268108 () Bool)

(assert (=> d!496972 (= c!268108 (>= 0 (size!14487 lt!610219)))))

(declare-fun e!1057225 () Bool)

(assert (=> d!496972 e!1057225))

(declare-fun res!738760 () Bool)

(assert (=> d!496972 (=> (not res!738760) (not e!1057225))))

(assert (=> d!496972 (= res!738760 (>= 0 0))))

(assert (=> d!496972 (= (printTailRec!887 thiss!17113 lt!610219 0 (BalanceConc!12069 Empty!6062)) lt!610742)))

(declare-fun b!1648568 () Bool)

(assert (=> b!1648568 (= e!1057225 (<= 0 (size!14487 lt!610219)))))

(declare-fun b!1648569 () Bool)

(assert (=> b!1648569 (= e!1057224 (BalanceConc!12069 Empty!6062))))

(declare-fun b!1648570 () Bool)

(assert (=> b!1648570 (= e!1057224 (printTailRec!887 thiss!17113 lt!610219 (+ 0 1) (++!4909 (BalanceConc!12069 Empty!6062) (charsOf!1856 (apply!4782 lt!610219 0)))))))

(declare-fun lt!610743 () List!18254)

(assert (=> b!1648570 (= lt!610743 (list!7225 lt!610219))))

(declare-fun lt!610744 () Unit!30227)

(declare-fun lemmaDropApply!596 (List!18254 Int) Unit!30227)

(assert (=> b!1648570 (= lt!610744 (lemmaDropApply!596 lt!610743 0))))

(declare-fun drop!908 (List!18254 Int) List!18254)

(declare-fun apply!4784 (List!18254 Int) Token!5980)

(assert (=> b!1648570 (= (head!3616 (drop!908 lt!610743 0)) (apply!4784 lt!610743 0))))

(declare-fun lt!610741 () Unit!30227)

(assert (=> b!1648570 (= lt!610741 lt!610744)))

(declare-fun lt!610746 () List!18254)

(assert (=> b!1648570 (= lt!610746 (list!7225 lt!610219))))

(declare-fun lt!610740 () Unit!30227)

(declare-fun lemmaDropTail!576 (List!18254 Int) Unit!30227)

(assert (=> b!1648570 (= lt!610740 (lemmaDropTail!576 lt!610746 0))))

(declare-fun tail!2436 (List!18254) List!18254)

(assert (=> b!1648570 (= (tail!2436 (drop!908 lt!610746 0)) (drop!908 lt!610746 (+ 0 1)))))

(declare-fun lt!610745 () Unit!30227)

(assert (=> b!1648570 (= lt!610745 lt!610740)))

(assert (= (and d!496972 res!738760) b!1648568))

(assert (= (and d!496972 c!268108) b!1648569))

(assert (= (and d!496972 (not c!268108)) b!1648570))

(declare-fun m!1996351 () Bool)

(assert (=> d!496972 m!1996351))

(declare-fun m!1996353 () Bool)

(assert (=> d!496972 m!1996353))

(declare-fun m!1996355 () Bool)

(assert (=> d!496972 m!1996355))

(declare-fun m!1996357 () Bool)

(assert (=> d!496972 m!1996357))

(declare-fun m!1996359 () Bool)

(assert (=> d!496972 m!1996359))

(assert (=> d!496972 m!1996355))

(assert (=> d!496972 m!1996353))

(assert (=> b!1648568 m!1996351))

(declare-fun m!1996361 () Bool)

(assert (=> b!1648570 m!1996361))

(declare-fun m!1996363 () Bool)

(assert (=> b!1648570 m!1996363))

(declare-fun m!1996365 () Bool)

(assert (=> b!1648570 m!1996365))

(declare-fun m!1996367 () Bool)

(assert (=> b!1648570 m!1996367))

(declare-fun m!1996369 () Bool)

(assert (=> b!1648570 m!1996369))

(assert (=> b!1648570 m!1996361))

(declare-fun m!1996371 () Bool)

(assert (=> b!1648570 m!1996371))

(declare-fun m!1996373 () Bool)

(assert (=> b!1648570 m!1996373))

(declare-fun m!1996375 () Bool)

(assert (=> b!1648570 m!1996375))

(assert (=> b!1648570 m!1996371))

(declare-fun m!1996377 () Bool)

(assert (=> b!1648570 m!1996377))

(assert (=> b!1648570 m!1996377))

(declare-fun m!1996379 () Bool)

(assert (=> b!1648570 m!1996379))

(assert (=> b!1648570 m!1996379))

(declare-fun m!1996381 () Bool)

(assert (=> b!1648570 m!1996381))

(assert (=> b!1648570 m!1996195))

(assert (=> b!1648570 m!1996369))

(declare-fun m!1996383 () Bool)

(assert (=> b!1648570 m!1996383))

(assert (=> b!1648224 d!496972))

(declare-fun d!497000 () Bool)

(declare-fun c!268111 () Bool)

(assert (=> d!497000 (= c!268111 ((_ is Cons!18184) (Cons!18184 (h!23585 tokens!457) Nil!18184)))))

(declare-fun e!1057228 () List!18251)

(assert (=> d!497000 (= (printList!949 thiss!17113 (Cons!18184 (h!23585 tokens!457) Nil!18184)) e!1057228)))

(declare-fun b!1648575 () Bool)

(assert (=> b!1648575 (= e!1057228 (++!4910 (list!7226 (charsOf!1856 (h!23585 (Cons!18184 (h!23585 tokens!457) Nil!18184)))) (printList!949 thiss!17113 (t!150695 (Cons!18184 (h!23585 tokens!457) Nil!18184)))))))

(declare-fun b!1648576 () Bool)

(assert (=> b!1648576 (= e!1057228 Nil!18181)))

(assert (= (and d!497000 c!268111) b!1648575))

(assert (= (and d!497000 (not c!268111)) b!1648576))

(declare-fun m!1996385 () Bool)

(assert (=> b!1648575 m!1996385))

(assert (=> b!1648575 m!1996385))

(declare-fun m!1996387 () Bool)

(assert (=> b!1648575 m!1996387))

(declare-fun m!1996389 () Bool)

(assert (=> b!1648575 m!1996389))

(assert (=> b!1648575 m!1996387))

(assert (=> b!1648575 m!1996389))

(declare-fun m!1996391 () Bool)

(assert (=> b!1648575 m!1996391))

(assert (=> b!1648224 d!497000))

(declare-fun d!497002 () Bool)

(declare-fun e!1057231 () Bool)

(assert (=> d!497002 e!1057231))

(declare-fun res!738763 () Bool)

(assert (=> d!497002 (=> (not res!738763) (not e!1057231))))

(declare-fun lt!610749 () BalanceConc!12070)

(assert (=> d!497002 (= res!738763 (= (list!7225 lt!610749) (Cons!18184 (h!23585 tokens!457) Nil!18184)))))

(declare-fun singleton!728 (Token!5980) BalanceConc!12070)

(assert (=> d!497002 (= lt!610749 (singleton!728 (h!23585 tokens!457)))))

(assert (=> d!497002 (= (singletonSeq!1687 (h!23585 tokens!457)) lt!610749)))

(declare-fun b!1648579 () Bool)

(assert (=> b!1648579 (= e!1057231 (isBalanced!1854 (c!268059 lt!610749)))))

(assert (= (and d!497002 res!738763) b!1648579))

(declare-fun m!1996393 () Bool)

(assert (=> d!497002 m!1996393))

(declare-fun m!1996395 () Bool)

(assert (=> d!497002 m!1996395))

(declare-fun m!1996397 () Bool)

(assert (=> b!1648579 m!1996397))

(assert (=> b!1648224 d!497002))

(declare-fun d!497004 () Bool)

(declare-fun res!738791 () Bool)

(declare-fun e!1057289 () Bool)

(assert (=> d!497004 (=> res!738791 e!1057289)))

(assert (=> d!497004 (= res!738791 (or (not ((_ is Cons!18184) tokens!457)) (not ((_ is Cons!18184) (t!150695 tokens!457)))))))

(assert (=> d!497004 (= (tokensListTwoByTwoPredicateSeparableList!529 thiss!17113 tokens!457 rules!1846) e!1057289)))

(declare-fun b!1648658 () Bool)

(declare-fun e!1057288 () Bool)

(assert (=> b!1648658 (= e!1057289 e!1057288)))

(declare-fun res!738790 () Bool)

(assert (=> b!1648658 (=> (not res!738790) (not e!1057288))))

(assert (=> b!1648658 (= res!738790 (separableTokensPredicate!776 thiss!17113 (h!23585 tokens!457) (h!23585 (t!150695 tokens!457)) rules!1846))))

(declare-fun lt!610771 () Unit!30227)

(declare-fun Unit!30264 () Unit!30227)

(assert (=> b!1648658 (= lt!610771 Unit!30264)))

(assert (=> b!1648658 (> (size!14486 (charsOf!1856 (h!23585 (t!150695 tokens!457)))) 0)))

(declare-fun lt!610770 () Unit!30227)

(declare-fun Unit!30265 () Unit!30227)

(assert (=> b!1648658 (= lt!610770 Unit!30265)))

(assert (=> b!1648658 (rulesProduceIndividualToken!1484 thiss!17113 rules!1846 (h!23585 (t!150695 tokens!457)))))

(declare-fun lt!610774 () Unit!30227)

(declare-fun Unit!30266 () Unit!30227)

(assert (=> b!1648658 (= lt!610774 Unit!30266)))

(assert (=> b!1648658 (rulesProduceIndividualToken!1484 thiss!17113 rules!1846 (h!23585 tokens!457))))

(declare-fun lt!610776 () Unit!30227)

(declare-fun lt!610775 () Unit!30227)

(assert (=> b!1648658 (= lt!610776 lt!610775)))

(assert (=> b!1648658 (rulesProduceIndividualToken!1484 thiss!17113 rules!1846 (h!23585 (t!150695 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!602 (LexerInterface!2836 List!18253 List!18254 Token!5980) Unit!30227)

(assert (=> b!1648658 (= lt!610775 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!602 thiss!17113 rules!1846 tokens!457 (h!23585 (t!150695 tokens!457))))))

(declare-fun lt!610773 () Unit!30227)

(declare-fun lt!610772 () Unit!30227)

(assert (=> b!1648658 (= lt!610773 lt!610772)))

(assert (=> b!1648658 (rulesProduceIndividualToken!1484 thiss!17113 rules!1846 (h!23585 tokens!457))))

(assert (=> b!1648658 (= lt!610772 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!602 thiss!17113 rules!1846 tokens!457 (h!23585 tokens!457)))))

(declare-fun b!1648659 () Bool)

(assert (=> b!1648659 (= e!1057288 (tokensListTwoByTwoPredicateSeparableList!529 thiss!17113 (Cons!18184 (h!23585 (t!150695 tokens!457)) (t!150695 (t!150695 tokens!457))) rules!1846))))

(assert (= (and d!497004 (not res!738791)) b!1648658))

(assert (= (and b!1648658 res!738790) b!1648659))

(declare-fun m!1996443 () Bool)

(assert (=> b!1648658 m!1996443))

(declare-fun m!1996449 () Bool)

(assert (=> b!1648658 m!1996449))

(assert (=> b!1648658 m!1995445))

(assert (=> b!1648658 m!1995803))

(assert (=> b!1648658 m!1995445))

(assert (=> b!1648658 m!1995503))

(declare-fun m!1996451 () Bool)

(assert (=> b!1648658 m!1996451))

(assert (=> b!1648658 m!1995427))

(declare-fun m!1996453 () Bool)

(assert (=> b!1648659 m!1996453))

(assert (=> b!1648234 d!497004))

(declare-fun b!1648678 () Bool)

(declare-fun e!1057304 () Bool)

(declare-fun inv!15 (TokenValue!3297) Bool)

(assert (=> b!1648678 (= e!1057304 (inv!15 (value!101072 (h!23585 tokens!457))))))

(declare-fun b!1648679 () Bool)

(declare-fun e!1057305 () Bool)

(declare-fun inv!16 (TokenValue!3297) Bool)

(assert (=> b!1648679 (= e!1057305 (inv!16 (value!101072 (h!23585 tokens!457))))))

(declare-fun b!1648680 () Bool)

(declare-fun res!738794 () Bool)

(assert (=> b!1648680 (=> res!738794 e!1057304)))

(assert (=> b!1648680 (= res!738794 (not ((_ is IntegerValue!9893) (value!101072 (h!23585 tokens!457)))))))

(declare-fun e!1057303 () Bool)

(assert (=> b!1648680 (= e!1057303 e!1057304)))

(declare-fun d!497016 () Bool)

(declare-fun c!268123 () Bool)

(assert (=> d!497016 (= c!268123 ((_ is IntegerValue!9891) (value!101072 (h!23585 tokens!457))))))

(assert (=> d!497016 (= (inv!21 (value!101072 (h!23585 tokens!457))) e!1057305)))

(declare-fun b!1648681 () Bool)

(declare-fun inv!17 (TokenValue!3297) Bool)

(assert (=> b!1648681 (= e!1057303 (inv!17 (value!101072 (h!23585 tokens!457))))))

(declare-fun b!1648682 () Bool)

(assert (=> b!1648682 (= e!1057305 e!1057303)))

(declare-fun c!268122 () Bool)

(assert (=> b!1648682 (= c!268122 ((_ is IntegerValue!9892) (value!101072 (h!23585 tokens!457))))))

(assert (= (and d!497016 c!268123) b!1648679))

(assert (= (and d!497016 (not c!268123)) b!1648682))

(assert (= (and b!1648682 c!268122) b!1648681))

(assert (= (and b!1648682 (not c!268122)) b!1648680))

(assert (= (and b!1648680 (not res!738794)) b!1648678))

(declare-fun m!1996455 () Bool)

(assert (=> b!1648678 m!1996455))

(declare-fun m!1996457 () Bool)

(assert (=> b!1648679 m!1996457))

(declare-fun m!1996459 () Bool)

(assert (=> b!1648681 m!1996459))

(assert (=> b!1648223 d!497016))

(declare-fun b!1648693 () Bool)

(declare-fun e!1057308 () Bool)

(declare-fun tp_is_empty!7357 () Bool)

(assert (=> b!1648693 (= e!1057308 tp_is_empty!7357)))

(declare-fun b!1648695 () Bool)

(declare-fun tp!477441 () Bool)

(assert (=> b!1648695 (= e!1057308 tp!477441)))

(declare-fun b!1648696 () Bool)

(declare-fun tp!477442 () Bool)

(declare-fun tp!477440 () Bool)

(assert (=> b!1648696 (= e!1057308 (and tp!477442 tp!477440))))

(declare-fun b!1648694 () Bool)

(declare-fun tp!477443 () Bool)

(declare-fun tp!477439 () Bool)

(assert (=> b!1648694 (= e!1057308 (and tp!477443 tp!477439))))

(assert (=> b!1648236 (= tp!477365 e!1057308)))

(assert (= (and b!1648236 ((_ is ElementMatch!4535) (regex!3207 (h!23584 rules!1846)))) b!1648693))

(assert (= (and b!1648236 ((_ is Concat!7832) (regex!3207 (h!23584 rules!1846)))) b!1648694))

(assert (= (and b!1648236 ((_ is Star!4535) (regex!3207 (h!23584 rules!1846)))) b!1648695))

(assert (= (and b!1648236 ((_ is Union!4535) (regex!3207 (h!23584 rules!1846)))) b!1648696))

(declare-fun b!1648697 () Bool)

(declare-fun e!1057309 () Bool)

(assert (=> b!1648697 (= e!1057309 tp_is_empty!7357)))

(declare-fun b!1648699 () Bool)

(declare-fun tp!477446 () Bool)

(assert (=> b!1648699 (= e!1057309 tp!477446)))

(declare-fun b!1648700 () Bool)

(declare-fun tp!477447 () Bool)

(declare-fun tp!477445 () Bool)

(assert (=> b!1648700 (= e!1057309 (and tp!477447 tp!477445))))

(declare-fun b!1648698 () Bool)

(declare-fun tp!477448 () Bool)

(declare-fun tp!477444 () Bool)

(assert (=> b!1648698 (= e!1057309 (and tp!477448 tp!477444))))

(assert (=> b!1648219 (= tp!477366 e!1057309)))

(assert (= (and b!1648219 ((_ is ElementMatch!4535) (regex!3207 (rule!5065 (h!23585 tokens!457))))) b!1648697))

(assert (= (and b!1648219 ((_ is Concat!7832) (regex!3207 (rule!5065 (h!23585 tokens!457))))) b!1648698))

(assert (= (and b!1648219 ((_ is Star!4535) (regex!3207 (rule!5065 (h!23585 tokens!457))))) b!1648699))

(assert (= (and b!1648219 ((_ is Union!4535) (regex!3207 (rule!5065 (h!23585 tokens!457))))) b!1648700))

(declare-fun b!1648714 () Bool)

(declare-fun b_free!44791 () Bool)

(declare-fun b_next!45495 () Bool)

(assert (=> b!1648714 (= b_free!44791 (not b_next!45495))))

(declare-fun tp!477460 () Bool)

(declare-fun b_and!117077 () Bool)

(assert (=> b!1648714 (= tp!477460 b_and!117077)))

(declare-fun b_free!44793 () Bool)

(declare-fun b_next!45497 () Bool)

(assert (=> b!1648714 (= b_free!44793 (not b_next!45497))))

(declare-fun t!150731 () Bool)

(declare-fun tb!94439 () Bool)

(assert (=> (and b!1648714 (= (toChars!4513 (transformation!3207 (rule!5065 (h!23585 (t!150695 tokens!457))))) (toChars!4513 (transformation!3207 (rule!5065 (h!23585 (t!150695 tokens!457)))))) t!150731) tb!94439))

(declare-fun result!114086 () Bool)

(assert (= result!114086 result!114052))

(assert (=> d!496882 t!150731))

(declare-fun t!150733 () Bool)

(declare-fun tb!94441 () Bool)

(assert (=> (and b!1648714 (= (toChars!4513 (transformation!3207 (rule!5065 (h!23585 (t!150695 tokens!457))))) (toChars!4513 (transformation!3207 (rule!5065 (h!23585 tokens!457))))) t!150733) tb!94441))

(declare-fun result!114088 () Bool)

(assert (= result!114088 result!114058))

(assert (=> d!496914 t!150733))

(assert (=> b!1648434 t!150733))

(declare-fun tp!477463 () Bool)

(declare-fun b_and!117079 () Bool)

(assert (=> b!1648714 (= tp!477463 (and (=> t!150731 result!114086) (=> t!150733 result!114088) b_and!117079))))

(declare-fun e!1057326 () Bool)

(assert (=> b!1648228 (= tp!477369 e!1057326)))

(declare-fun e!1057322 () Bool)

(declare-fun e!1057325 () Bool)

(declare-fun b!1648713 () Bool)

(declare-fun tp!477461 () Bool)

(assert (=> b!1648713 (= e!1057325 (and tp!477461 (inv!23544 (tag!3487 (rule!5065 (h!23585 (t!150695 tokens!457))))) (inv!23547 (transformation!3207 (rule!5065 (h!23585 (t!150695 tokens!457))))) e!1057322))))

(declare-fun e!1057323 () Bool)

(declare-fun b!1648712 () Bool)

(declare-fun tp!477459 () Bool)

(assert (=> b!1648712 (= e!1057323 (and (inv!21 (value!101072 (h!23585 (t!150695 tokens!457)))) e!1057325 tp!477459))))

(assert (=> b!1648714 (= e!1057322 (and tp!477460 tp!477463))))

(declare-fun tp!477462 () Bool)

(declare-fun b!1648711 () Bool)

(assert (=> b!1648711 (= e!1057326 (and (inv!23548 (h!23585 (t!150695 tokens!457))) e!1057323 tp!477462))))

(assert (= b!1648713 b!1648714))

(assert (= b!1648712 b!1648713))

(assert (= b!1648711 b!1648712))

(assert (= (and b!1648228 ((_ is Cons!18184) (t!150695 tokens!457))) b!1648711))

(declare-fun m!1996461 () Bool)

(assert (=> b!1648713 m!1996461))

(declare-fun m!1996463 () Bool)

(assert (=> b!1648713 m!1996463))

(declare-fun m!1996465 () Bool)

(assert (=> b!1648712 m!1996465))

(declare-fun m!1996467 () Bool)

(assert (=> b!1648711 m!1996467))

(declare-fun b!1648725 () Bool)

(declare-fun b_free!44795 () Bool)

(declare-fun b_next!45499 () Bool)

(assert (=> b!1648725 (= b_free!44795 (not b_next!45499))))

(declare-fun tp!477475 () Bool)

(declare-fun b_and!117081 () Bool)

(assert (=> b!1648725 (= tp!477475 b_and!117081)))

(declare-fun b_free!44797 () Bool)

(declare-fun b_next!45501 () Bool)

(assert (=> b!1648725 (= b_free!44797 (not b_next!45501))))

(declare-fun tb!94443 () Bool)

(declare-fun t!150735 () Bool)

(assert (=> (and b!1648725 (= (toChars!4513 (transformation!3207 (h!23584 (t!150694 rules!1846)))) (toChars!4513 (transformation!3207 (rule!5065 (h!23585 (t!150695 tokens!457)))))) t!150735) tb!94443))

(declare-fun result!114092 () Bool)

(assert (= result!114092 result!114052))

(assert (=> d!496882 t!150735))

(declare-fun t!150737 () Bool)

(declare-fun tb!94445 () Bool)

(assert (=> (and b!1648725 (= (toChars!4513 (transformation!3207 (h!23584 (t!150694 rules!1846)))) (toChars!4513 (transformation!3207 (rule!5065 (h!23585 tokens!457))))) t!150737) tb!94445))

(declare-fun result!114094 () Bool)

(assert (= result!114094 result!114058))

(assert (=> d!496914 t!150737))

(assert (=> b!1648434 t!150737))

(declare-fun b_and!117083 () Bool)

(declare-fun tp!477474 () Bool)

(assert (=> b!1648725 (= tp!477474 (and (=> t!150735 result!114092) (=> t!150737 result!114094) b_and!117083))))

(declare-fun e!1057337 () Bool)

(assert (=> b!1648725 (= e!1057337 (and tp!477475 tp!477474))))

(declare-fun tp!477472 () Bool)

(declare-fun e!1057336 () Bool)

(declare-fun b!1648724 () Bool)

(assert (=> b!1648724 (= e!1057336 (and tp!477472 (inv!23544 (tag!3487 (h!23584 (t!150694 rules!1846)))) (inv!23547 (transformation!3207 (h!23584 (t!150694 rules!1846)))) e!1057337))))

(declare-fun b!1648723 () Bool)

(declare-fun e!1057338 () Bool)

(declare-fun tp!477473 () Bool)

(assert (=> b!1648723 (= e!1057338 (and e!1057336 tp!477473))))

(assert (=> b!1648217 (= tp!477370 e!1057338)))

(assert (= b!1648724 b!1648725))

(assert (= b!1648723 b!1648724))

(assert (= (and b!1648217 ((_ is Cons!18183) (t!150694 rules!1846))) b!1648723))

(declare-fun m!1996469 () Bool)

(assert (=> b!1648724 m!1996469))

(declare-fun m!1996471 () Bool)

(assert (=> b!1648724 m!1996471))

(declare-fun b!1648730 () Bool)

(declare-fun e!1057342 () Bool)

(declare-fun tp!477478 () Bool)

(assert (=> b!1648730 (= e!1057342 (and tp_is_empty!7357 tp!477478))))

(assert (=> b!1648223 (= tp!477362 e!1057342)))

(assert (= (and b!1648223 ((_ is Cons!18181) (originalCharacters!4021 (h!23585 tokens!457)))) b!1648730))

(declare-fun b_lambda!51823 () Bool)

(assert (= b_lambda!51811 (or (and b!1648229 b_free!44777 (= (toChars!4513 (transformation!3207 (h!23584 rules!1846))) (toChars!4513 (transformation!3207 (rule!5065 (h!23585 tokens!457)))))) (and b!1648227 b_free!44781) (and b!1648714 b_free!44793 (= (toChars!4513 (transformation!3207 (rule!5065 (h!23585 (t!150695 tokens!457))))) (toChars!4513 (transformation!3207 (rule!5065 (h!23585 tokens!457)))))) (and b!1648725 b_free!44797 (= (toChars!4513 (transformation!3207 (h!23584 (t!150694 rules!1846)))) (toChars!4513 (transformation!3207 (rule!5065 (h!23585 tokens!457)))))) b_lambda!51823)))

(declare-fun b_lambda!51825 () Bool)

(assert (= b_lambda!51809 (or (and b!1648229 b_free!44777 (= (toChars!4513 (transformation!3207 (h!23584 rules!1846))) (toChars!4513 (transformation!3207 (rule!5065 (h!23585 tokens!457)))))) (and b!1648227 b_free!44781) (and b!1648714 b_free!44793 (= (toChars!4513 (transformation!3207 (rule!5065 (h!23585 (t!150695 tokens!457))))) (toChars!4513 (transformation!3207 (rule!5065 (h!23585 tokens!457)))))) (and b!1648725 b_free!44797 (= (toChars!4513 (transformation!3207 (h!23584 (t!150694 rules!1846)))) (toChars!4513 (transformation!3207 (rule!5065 (h!23585 tokens!457)))))) b_lambda!51825)))

(declare-fun b_lambda!51827 () Bool)

(assert (= b_lambda!51807 (or (and b!1648229 b_free!44777 (= (toChars!4513 (transformation!3207 (h!23584 rules!1846))) (toChars!4513 (transformation!3207 (rule!5065 (h!23585 (t!150695 tokens!457))))))) (and b!1648227 b_free!44781 (= (toChars!4513 (transformation!3207 (rule!5065 (h!23585 tokens!457)))) (toChars!4513 (transformation!3207 (rule!5065 (h!23585 (t!150695 tokens!457))))))) (and b!1648714 b_free!44793) (and b!1648725 b_free!44797 (= (toChars!4513 (transformation!3207 (h!23584 (t!150694 rules!1846)))) (toChars!4513 (transformation!3207 (rule!5065 (h!23585 (t!150695 tokens!457))))))) b_lambda!51827)))

(check-sat (not d!496832) (not b!1648462) (not tb!94419) (not b!1648475) b_and!117037 (not b!1648483) (not b!1648570) (not d!496922) (not d!497002) (not b_next!45481) (not b!1648658) (not d!496958) (not b!1648694) (not d!496954) (not b_next!45499) (not b!1648579) (not b!1648713) (not d!496926) (not d!496948) (not d!496950) (not b_next!45501) b_and!117077 (not b!1648568) (not d!496962) (not d!496884) (not d!496888) b_and!117059 (not d!496944) b_and!117083 (not b_next!45495) (not b!1648484) (not b!1648521) (not b!1648575) (not b!1648338) (not b_lambda!51825) (not b!1648378) (not b!1648329) (not d!496932) (not d!496916) (not b!1648695) (not b!1648711) (not b!1648415) (not b!1648488) (not b_lambda!51823) (not b!1648723) (not b_next!45483) (not b!1648527) (not b!1648272) (not b!1648522) (not b!1648271) (not b!1648487) (not d!496968) (not d!496966) (not tb!94423) (not d!496914) (not b!1648427) (not d!496878) (not b!1648354) (not b!1648679) (not d!496854) (not d!496864) (not b!1648700) (not b!1648434) (not d!496880) b_and!117057 (not b!1648523) (not b!1648474) (not b!1648520) (not b!1648416) (not b!1648373) (not d!496868) (not d!496952) (not b!1648473) (not b_next!45485) (not b!1648435) (not b_lambda!51827) (not b!1648525) tp_is_empty!7357 (not b!1648696) (not b!1648489) (not d!496886) (not b!1648372) b_and!117081 (not b!1648414) (not b!1648486) (not b!1648482) (not b!1648436) (not b!1648328) (not b!1648383) (not b!1648463) (not d!496912) (not bm!105825) (not d!496918) (not b_next!45479) (not d!496928) (not b!1648417) (not b!1648528) (not d!496892) (not b!1648699) (not b!1648698) (not b!1648413) (not d!496960) (not d!496970) b_and!117041 (not b!1648730) (not b!1648375) (not b!1648495) (not b!1648428) (not d!496964) (not d!496956) (not d!496930) (not d!496972) (not b_next!45497) (not b!1648659) (not d!496876) (not b!1648492) b_and!117079 (not b!1648681) (not b!1648724) (not b!1648678) (not d!496852) (not d!496834) (not b!1648712) (not d!496882) (not d!496890) (not b!1648526) (not b!1648273) (not d!496920) (not b!1648374) (not b!1648277) (not d!496946))
(check-sat b_and!117037 (not b_next!45481) (not b_next!45483) b_and!117057 (not b_next!45485) b_and!117081 (not b_next!45479) b_and!117041 (not b_next!45499) (not b_next!45501) b_and!117077 b_and!117059 b_and!117083 (not b_next!45495) (not b_next!45497) b_and!117079)
