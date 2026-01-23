; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!323722 () Bool)

(assert start!323722)

(declare-fun b!3478555 () Bool)

(declare-fun b_free!90209 () Bool)

(declare-fun b_next!90913 () Bool)

(assert (=> b!3478555 (= b_free!90209 (not b_next!90913))))

(declare-fun tp!1080882 () Bool)

(declare-fun b_and!245395 () Bool)

(assert (=> b!3478555 (= tp!1080882 b_and!245395)))

(declare-fun b_free!90211 () Bool)

(declare-fun b_next!90915 () Bool)

(assert (=> b!3478555 (= b_free!90211 (not b_next!90915))))

(declare-fun tp!1080871 () Bool)

(declare-fun b_and!245397 () Bool)

(assert (=> b!3478555 (= tp!1080871 b_and!245397)))

(declare-fun b!3478557 () Bool)

(declare-fun b_free!90213 () Bool)

(declare-fun b_next!90917 () Bool)

(assert (=> b!3478557 (= b_free!90213 (not b_next!90917))))

(declare-fun tp!1080874 () Bool)

(declare-fun b_and!245399 () Bool)

(assert (=> b!3478557 (= tp!1080874 b_and!245399)))

(declare-fun b_free!90215 () Bool)

(declare-fun b_next!90919 () Bool)

(assert (=> b!3478557 (= b_free!90215 (not b_next!90919))))

(declare-fun tp!1080879 () Bool)

(declare-fun b_and!245401 () Bool)

(assert (=> b!3478557 (= tp!1080879 b_and!245401)))

(declare-fun b!3478568 () Bool)

(declare-fun b_free!90217 () Bool)

(declare-fun b_next!90921 () Bool)

(assert (=> b!3478568 (= b_free!90217 (not b_next!90921))))

(declare-fun tp!1080880 () Bool)

(declare-fun b_and!245403 () Bool)

(assert (=> b!3478568 (= tp!1080880 b_and!245403)))

(declare-fun b_free!90219 () Bool)

(declare-fun b_next!90923 () Bool)

(assert (=> b!3478568 (= b_free!90219 (not b_next!90923))))

(declare-fun tp!1080877 () Bool)

(declare-fun b_and!245405 () Bool)

(assert (=> b!3478568 (= tp!1080877 b_and!245405)))

(declare-fun bs!561823 () Bool)

(declare-fun b!3478549 () Bool)

(declare-fun b!3478565 () Bool)

(assert (= bs!561823 (and b!3478549 b!3478565)))

(declare-fun lambda!122165 () Int)

(declare-fun lambda!122164 () Int)

(assert (=> bs!561823 (not (= lambda!122165 lambda!122164))))

(declare-fun b!3478588 () Bool)

(declare-fun e!2154732 () Bool)

(assert (=> b!3478588 (= e!2154732 true)))

(declare-fun b!3478587 () Bool)

(declare-fun e!2154731 () Bool)

(assert (=> b!3478587 (= e!2154731 e!2154732)))

(declare-fun b!3478586 () Bool)

(declare-fun e!2154730 () Bool)

(assert (=> b!3478586 (= e!2154730 e!2154731)))

(assert (=> b!3478549 e!2154730))

(assert (= b!3478587 b!3478588))

(assert (= b!3478586 b!3478587))

(declare-datatypes ((C!20612 0))(
  ( (C!20613 (val!12354 Int)) )
))
(declare-datatypes ((Regex!10213 0))(
  ( (ElementMatch!10213 (c!596530 C!20612)) (Concat!15897 (regOne!20938 Regex!10213) (regTwo!20938 Regex!10213)) (EmptyExpr!10213) (Star!10213 (reg!10542 Regex!10213)) (EmptyLang!10213) (Union!10213 (regOne!20939 Regex!10213) (regTwo!20939 Regex!10213)) )
))
(declare-datatypes ((List!37360 0))(
  ( (Nil!37236) (Cons!37236 (h!42656 (_ BitVec 16)) (t!275299 List!37360)) )
))
(declare-datatypes ((TokenValue!5684 0))(
  ( (FloatLiteralValue!11368 (text!40233 List!37360)) (TokenValueExt!5683 (__x!23585 Int)) (Broken!28420 (value!175873 List!37360)) (Object!5807) (End!5684) (Def!5684) (Underscore!5684) (Match!5684) (Else!5684) (Error!5684) (Case!5684) (If!5684) (Extends!5684) (Abstract!5684) (Class!5684) (Val!5684) (DelimiterValue!11368 (del!5744 List!37360)) (KeywordValue!5690 (value!175874 List!37360)) (CommentValue!11368 (value!175875 List!37360)) (WhitespaceValue!11368 (value!175876 List!37360)) (IndentationValue!5684 (value!175877 List!37360)) (String!41753) (Int32!5684) (Broken!28421 (value!175878 List!37360)) (Boolean!5685) (Unit!52667) (OperatorValue!5687 (op!5744 List!37360)) (IdentifierValue!11368 (value!175879 List!37360)) (IdentifierValue!11369 (value!175880 List!37360)) (WhitespaceValue!11369 (value!175881 List!37360)) (True!11368) (False!11368) (Broken!28422 (value!175882 List!37360)) (Broken!28423 (value!175883 List!37360)) (True!11369) (RightBrace!5684) (RightBracket!5684) (Colon!5684) (Null!5684) (Comma!5684) (LeftBracket!5684) (False!11369) (LeftBrace!5684) (ImaginaryLiteralValue!5684 (text!40234 List!37360)) (StringLiteralValue!17052 (value!175884 List!37360)) (EOFValue!5684 (value!175885 List!37360)) (IdentValue!5684 (value!175886 List!37360)) (DelimiterValue!11369 (value!175887 List!37360)) (DedentValue!5684 (value!175888 List!37360)) (NewLineValue!5684 (value!175889 List!37360)) (IntegerValue!17052 (value!175890 (_ BitVec 32)) (text!40235 List!37360)) (IntegerValue!17053 (value!175891 Int) (text!40236 List!37360)) (Times!5684) (Or!5684) (Equal!5684) (Minus!5684) (Broken!28424 (value!175892 List!37360)) (And!5684) (Div!5684) (LessEqual!5684) (Mod!5684) (Concat!15898) (Not!5684) (Plus!5684) (SpaceValue!5684 (value!175893 List!37360)) (IntegerValue!17054 (value!175894 Int) (text!40237 List!37360)) (StringLiteralValue!17053 (text!40238 List!37360)) (FloatLiteralValue!11369 (text!40239 List!37360)) (BytesLiteralValue!5684 (value!175895 List!37360)) (CommentValue!11369 (value!175896 List!37360)) (StringLiteralValue!17054 (value!175897 List!37360)) (ErrorTokenValue!5684 (msg!5745 List!37360)) )
))
(declare-datatypes ((List!37361 0))(
  ( (Nil!37237) (Cons!37237 (h!42657 C!20612) (t!275300 List!37361)) )
))
(declare-datatypes ((IArray!22571 0))(
  ( (IArray!22572 (innerList!11343 List!37361)) )
))
(declare-datatypes ((Conc!11283 0))(
  ( (Node!11283 (left!29068 Conc!11283) (right!29398 Conc!11283) (csize!22796 Int) (cheight!11494 Int)) (Leaf!17621 (xs!14461 IArray!22571) (csize!22797 Int)) (Empty!11283) )
))
(declare-datatypes ((BalanceConc!22180 0))(
  ( (BalanceConc!22181 (c!596531 Conc!11283)) )
))
(declare-datatypes ((String!41754 0))(
  ( (String!41755 (value!175898 String)) )
))
(declare-datatypes ((TokenValueInjection!10796 0))(
  ( (TokenValueInjection!10797 (toValue!7690 Int) (toChars!7549 Int)) )
))
(declare-datatypes ((Rule!10708 0))(
  ( (Rule!10709 (regex!5454 Regex!10213) (tag!6074 String!41754) (isSeparator!5454 Bool) (transformation!5454 TokenValueInjection!10796)) )
))
(declare-datatypes ((List!37362 0))(
  ( (Nil!37238) (Cons!37238 (h!42658 Rule!10708) (t!275301 List!37362)) )
))
(declare-fun rules!2135 () List!37362)

(get-info :version)

(assert (= (and b!3478549 ((_ is Cons!37238) rules!2135)) b!3478586))

(declare-fun order!19909 () Int)

(declare-fun order!19911 () Int)

(declare-fun dynLambda!15750 (Int Int) Int)

(declare-fun dynLambda!15751 (Int Int) Int)

(assert (=> b!3478588 (< (dynLambda!15750 order!19909 (toValue!7690 (transformation!5454 (h!42658 rules!2135)))) (dynLambda!15751 order!19911 lambda!122165))))

(declare-fun order!19913 () Int)

(declare-fun dynLambda!15752 (Int Int) Int)

(assert (=> b!3478588 (< (dynLambda!15752 order!19913 (toChars!7549 (transformation!5454 (h!42658 rules!2135)))) (dynLambda!15751 order!19911 lambda!122165))))

(assert (=> b!3478549 true))

(declare-fun b!3478540 () Bool)

(declare-fun e!2154718 () Bool)

(declare-fun e!2154693 () Bool)

(assert (=> b!3478540 (= e!2154718 e!2154693)))

(declare-fun res!1403562 () Bool)

(assert (=> b!3478540 (=> res!1403562 e!2154693)))

(declare-fun lt!1184303 () List!37361)

(declare-datatypes ((Token!10274 0))(
  ( (Token!10275 (value!175899 TokenValue!5684) (rule!8056 Rule!10708) (size!28277 Int) (originalCharacters!6168 List!37361)) )
))
(declare-fun separatorToken!241 () Token!10274)

(declare-datatypes ((List!37363 0))(
  ( (Nil!37239) (Cons!37239 (h!42659 Token!10274) (t!275302 List!37363)) )
))
(declare-fun tokens!494 () List!37363)

(declare-fun lt!1184283 () List!37361)

(declare-datatypes ((LexerInterface!5043 0))(
  ( (LexerInterfaceExt!5040 (__x!23586 Int)) (Lexer!5041) )
))
(declare-fun thiss!18206 () LexerInterface!5043)

(declare-fun ++!9197 (List!37361 List!37361) List!37361)

(declare-fun list!13579 (BalanceConc!22180) List!37361)

(declare-fun charsOf!3468 (Token!10274) BalanceConc!22180)

(declare-fun printWithSeparatorTokenList!330 (LexerInterface!5043 List!37363 Token!10274) List!37361)

(assert (=> b!3478540 (= res!1403562 (not (= lt!1184303 (++!9197 (++!9197 (list!13579 (charsOf!3468 (h!42659 (t!275302 tokens!494)))) lt!1184283) (printWithSeparatorTokenList!330 thiss!18206 (t!275302 (t!275302 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1184309 () List!37361)

(assert (=> b!3478540 (= lt!1184309 (++!9197 lt!1184283 lt!1184303))))

(assert (=> b!3478540 (= lt!1184283 (list!13579 (charsOf!3468 separatorToken!241)))))

(assert (=> b!3478540 (= lt!1184303 (printWithSeparatorTokenList!330 thiss!18206 (t!275302 tokens!494) separatorToken!241))))

(declare-fun lt!1184292 () List!37361)

(assert (=> b!3478540 (= lt!1184292 (printWithSeparatorTokenList!330 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3478541 () Bool)

(declare-fun e!2154699 () Bool)

(declare-fun e!2154723 () Bool)

(assert (=> b!3478541 (= e!2154699 e!2154723)))

(declare-fun res!1403554 () Bool)

(assert (=> b!3478541 (=> res!1403554 e!2154723)))

(declare-fun lt!1184279 () List!37361)

(assert (=> b!3478541 (= res!1403554 (not (= lt!1184292 lt!1184279)))))

(declare-fun lt!1184294 () List!37361)

(assert (=> b!3478541 (= lt!1184294 lt!1184279)))

(declare-fun lt!1184298 () List!37361)

(assert (=> b!3478541 (= lt!1184279 (++!9197 lt!1184298 lt!1184309))))

(declare-datatypes ((Unit!52668 0))(
  ( (Unit!52669) )
))
(declare-fun lt!1184278 () Unit!52668)

(declare-fun lemmaConcatAssociativity!1978 (List!37361 List!37361 List!37361) Unit!52668)

(assert (=> b!3478541 (= lt!1184278 (lemmaConcatAssociativity!1978 lt!1184298 lt!1184283 lt!1184303))))

(declare-fun b!3478542 () Bool)

(declare-fun e!2154721 () Bool)

(declare-fun e!2154702 () Bool)

(declare-fun tp!1080881 () Bool)

(declare-fun inv!21 (TokenValue!5684) Bool)

(assert (=> b!3478542 (= e!2154702 (and (inv!21 (value!175899 separatorToken!241)) e!2154721 tp!1080881))))

(declare-fun res!1403548 () Bool)

(declare-fun e!2154717 () Bool)

(assert (=> start!323722 (=> (not res!1403548) (not e!2154717))))

(assert (=> start!323722 (= res!1403548 ((_ is Lexer!5041) thiss!18206))))

(assert (=> start!323722 e!2154717))

(assert (=> start!323722 true))

(declare-fun e!2154705 () Bool)

(assert (=> start!323722 e!2154705))

(declare-fun e!2154701 () Bool)

(assert (=> start!323722 e!2154701))

(declare-fun inv!50429 (Token!10274) Bool)

(assert (=> start!323722 (and (inv!50429 separatorToken!241) e!2154702)))

(declare-fun b!3478543 () Bool)

(declare-fun tp!1080870 () Bool)

(declare-fun e!2154698 () Bool)

(declare-fun e!2154714 () Bool)

(declare-fun inv!50426 (String!41754) Bool)

(declare-fun inv!50430 (TokenValueInjection!10796) Bool)

(assert (=> b!3478543 (= e!2154714 (and tp!1080870 (inv!50426 (tag!6074 (h!42658 rules!2135))) (inv!50430 (transformation!5454 (h!42658 rules!2135))) e!2154698))))

(declare-fun b!3478544 () Bool)

(declare-fun res!1403541 () Bool)

(assert (=> b!3478544 (=> (not res!1403541) (not e!2154717))))

(declare-fun isEmpty!21629 (List!37362) Bool)

(assert (=> b!3478544 (= res!1403541 (not (isEmpty!21629 rules!2135)))))

(declare-fun b!3478545 () Bool)

(declare-fun e!2154713 () Bool)

(declare-fun tp!1080876 () Bool)

(declare-fun e!2154715 () Bool)

(assert (=> b!3478545 (= e!2154715 (and tp!1080876 (inv!50426 (tag!6074 (rule!8056 (h!42659 tokens!494)))) (inv!50430 (transformation!5454 (rule!8056 (h!42659 tokens!494)))) e!2154713))))

(declare-fun b!3478546 () Bool)

(assert (=> b!3478546 (= e!2154693 e!2154699)))

(declare-fun res!1403563 () Bool)

(assert (=> b!3478546 (=> res!1403563 e!2154699)))

(assert (=> b!3478546 (= res!1403563 (not (= lt!1184292 lt!1184294)))))

(assert (=> b!3478546 (= lt!1184294 (++!9197 (++!9197 lt!1184298 lt!1184283) lt!1184303))))

(declare-fun b!3478547 () Bool)

(declare-fun e!2154708 () Unit!52668)

(declare-fun Unit!52670 () Unit!52668)

(assert (=> b!3478547 (= e!2154708 Unit!52670)))

(declare-fun lt!1184293 () C!20612)

(declare-fun lt!1184281 () Unit!52668)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!512 (Regex!10213 List!37361 C!20612) Unit!52668)

(assert (=> b!3478547 (= lt!1184281 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!512 (regex!5454 (rule!8056 separatorToken!241)) lt!1184283 lt!1184293))))

(declare-fun res!1403561 () Bool)

(declare-fun matchR!4797 (Regex!10213 List!37361) Bool)

(assert (=> b!3478547 (= res!1403561 (not (matchR!4797 (regex!5454 (rule!8056 separatorToken!241)) lt!1184283)))))

(declare-fun e!2154712 () Bool)

(assert (=> b!3478547 (=> (not res!1403561) (not e!2154712))))

(assert (=> b!3478547 e!2154712))

(declare-fun tp!1080878 () Bool)

(declare-fun b!3478548 () Bool)

(declare-fun e!2154720 () Bool)

(assert (=> b!3478548 (= e!2154701 (and (inv!50429 (h!42659 tokens!494)) e!2154720 tp!1080878))))

(assert (=> b!3478549 (= e!2154723 true)))

(declare-datatypes ((tuple2!37000 0))(
  ( (tuple2!37001 (_1!21634 Token!10274) (_2!21634 List!37361)) )
))
(declare-datatypes ((Option!7561 0))(
  ( (None!7560) (Some!7560 (v!36940 tuple2!37000)) )
))
(declare-fun maxPrefix!2583 (LexerInterface!5043 List!37362 List!37361) Option!7561)

(assert (=> b!3478549 (= (maxPrefix!2583 thiss!18206 rules!2135 lt!1184279) (Some!7560 (tuple2!37001 (h!42659 tokens!494) lt!1184309)))))

(declare-fun lt!1184284 () Unit!52668)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!210 (LexerInterface!5043 List!37362 Token!10274 Rule!10708 List!37361 Rule!10708) Unit!52668)

(assert (=> b!3478549 (= lt!1184284 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!210 thiss!18206 rules!2135 (h!42659 tokens!494) (rule!8056 (h!42659 tokens!494)) lt!1184309 (rule!8056 separatorToken!241)))))

(declare-fun contains!6936 (List!37361 C!20612) Bool)

(declare-fun usedCharacters!688 (Regex!10213) List!37361)

(assert (=> b!3478549 (not (contains!6936 (usedCharacters!688 (regex!5454 (rule!8056 (h!42659 tokens!494)))) lt!1184293))))

(declare-fun lt!1184297 () Unit!52668)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!254 (LexerInterface!5043 List!37362 List!37362 Rule!10708 Rule!10708 C!20612) Unit!52668)

(assert (=> b!3478549 (= lt!1184297 (lemmaNonSepRuleNotContainsCharContainedInASepRule!254 thiss!18206 rules!2135 rules!2135 (rule!8056 (h!42659 tokens!494)) (rule!8056 separatorToken!241) lt!1184293))))

(declare-fun lt!1184296 () Unit!52668)

(declare-fun forallContained!1401 (List!37363 Int Token!10274) Unit!52668)

(assert (=> b!3478549 (= lt!1184296 (forallContained!1401 tokens!494 lambda!122165 (h!42659 (t!275302 tokens!494))))))

(declare-fun e!2154700 () Bool)

(declare-fun rulesProduceIndividualToken!2535 (LexerInterface!5043 List!37362 Token!10274) Bool)

(assert (=> b!3478549 (= (rulesProduceIndividualToken!2535 thiss!18206 rules!2135 (h!42659 (t!275302 tokens!494))) e!2154700)))

(declare-fun res!1403550 () Bool)

(assert (=> b!3478549 (=> (not res!1403550) (not e!2154700))))

(declare-datatypes ((IArray!22573 0))(
  ( (IArray!22574 (innerList!11344 List!37363)) )
))
(declare-datatypes ((Conc!11284 0))(
  ( (Node!11284 (left!29069 Conc!11284) (right!29399 Conc!11284) (csize!22798 Int) (cheight!11495 Int)) (Leaf!17622 (xs!14462 IArray!22573) (csize!22799 Int)) (Empty!11284) )
))
(declare-datatypes ((BalanceConc!22182 0))(
  ( (BalanceConc!22183 (c!596532 Conc!11284)) )
))
(declare-datatypes ((tuple2!37002 0))(
  ( (tuple2!37003 (_1!21635 BalanceConc!22182) (_2!21635 BalanceConc!22180)) )
))
(declare-fun lt!1184310 () tuple2!37002)

(declare-fun size!28278 (BalanceConc!22182) Int)

(assert (=> b!3478549 (= res!1403550 (= (size!28278 (_1!21635 lt!1184310)) 1))))

(declare-fun lt!1184300 () BalanceConc!22180)

(declare-fun lex!2369 (LexerInterface!5043 List!37362 BalanceConc!22180) tuple2!37002)

(assert (=> b!3478549 (= lt!1184310 (lex!2369 thiss!18206 rules!2135 lt!1184300))))

(declare-fun lt!1184308 () BalanceConc!22182)

(declare-fun printTailRec!1538 (LexerInterface!5043 BalanceConc!22182 Int BalanceConc!22180) BalanceConc!22180)

(assert (=> b!3478549 (= lt!1184300 (printTailRec!1538 thiss!18206 lt!1184308 0 (BalanceConc!22181 Empty!11283)))))

(declare-fun print!2108 (LexerInterface!5043 BalanceConc!22182) BalanceConc!22180)

(assert (=> b!3478549 (= lt!1184300 (print!2108 thiss!18206 lt!1184308))))

(declare-fun singletonSeq!2550 (Token!10274) BalanceConc!22182)

(assert (=> b!3478549 (= lt!1184308 (singletonSeq!2550 (h!42659 (t!275302 tokens!494))))))

(declare-fun e!2154706 () Bool)

(assert (=> b!3478549 e!2154706))

(declare-fun res!1403549 () Bool)

(assert (=> b!3478549 (=> (not res!1403549) (not e!2154706))))

(declare-fun lt!1184311 () tuple2!37002)

(assert (=> b!3478549 (= res!1403549 (= (size!28278 (_1!21635 lt!1184311)) 1))))

(declare-fun lt!1184305 () BalanceConc!22180)

(assert (=> b!3478549 (= lt!1184311 (lex!2369 thiss!18206 rules!2135 lt!1184305))))

(declare-fun lt!1184285 () BalanceConc!22182)

(assert (=> b!3478549 (= lt!1184305 (printTailRec!1538 thiss!18206 lt!1184285 0 (BalanceConc!22181 Empty!11283)))))

(assert (=> b!3478549 (= lt!1184305 (print!2108 thiss!18206 lt!1184285))))

(assert (=> b!3478549 (= lt!1184285 (singletonSeq!2550 separatorToken!241))))

(declare-fun lt!1184290 () Unit!52668)

(assert (=> b!3478549 (= lt!1184290 e!2154708)))

(declare-fun c!596529 () Bool)

(assert (=> b!3478549 (= c!596529 (not (contains!6936 (usedCharacters!688 (regex!5454 (rule!8056 separatorToken!241))) lt!1184293)))))

(declare-fun head!7345 (List!37361) C!20612)

(assert (=> b!3478549 (= lt!1184293 (head!7345 lt!1184283))))

(declare-fun e!2154716 () Bool)

(assert (=> b!3478549 e!2154716))

(declare-fun res!1403546 () Bool)

(assert (=> b!3478549 (=> (not res!1403546) (not e!2154716))))

(declare-datatypes ((Option!7562 0))(
  ( (None!7561) (Some!7561 (v!36941 Rule!10708)) )
))
(declare-fun lt!1184288 () Option!7562)

(declare-fun isDefined!5824 (Option!7562) Bool)

(assert (=> b!3478549 (= res!1403546 (isDefined!5824 lt!1184288))))

(declare-fun getRuleFromTag!1097 (LexerInterface!5043 List!37362 String!41754) Option!7562)

(assert (=> b!3478549 (= lt!1184288 (getRuleFromTag!1097 thiss!18206 rules!2135 (tag!6074 (rule!8056 separatorToken!241))))))

(declare-fun lt!1184306 () Unit!52668)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1097 (LexerInterface!5043 List!37362 List!37361 Token!10274) Unit!52668)

(assert (=> b!3478549 (= lt!1184306 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1097 thiss!18206 rules!2135 lt!1184283 separatorToken!241))))

(declare-fun lt!1184302 () BalanceConc!22180)

(declare-fun maxPrefixOneRule!1750 (LexerInterface!5043 Rule!10708 List!37361) Option!7561)

(declare-fun apply!8808 (TokenValueInjection!10796 BalanceConc!22180) TokenValue!5684)

(declare-fun size!28279 (List!37361) Int)

(assert (=> b!3478549 (= (maxPrefixOneRule!1750 thiss!18206 (rule!8056 (h!42659 tokens!494)) lt!1184298) (Some!7560 (tuple2!37001 (Token!10275 (apply!8808 (transformation!5454 (rule!8056 (h!42659 tokens!494))) lt!1184302) (rule!8056 (h!42659 tokens!494)) (size!28279 lt!1184298) lt!1184298) Nil!37237)))))

(declare-fun lt!1184280 () Unit!52668)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!843 (LexerInterface!5043 List!37362 List!37361 List!37361 List!37361 Rule!10708) Unit!52668)

(assert (=> b!3478549 (= lt!1184280 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!843 thiss!18206 rules!2135 lt!1184298 lt!1184298 Nil!37237 (rule!8056 (h!42659 tokens!494))))))

(declare-fun e!2154711 () Bool)

(assert (=> b!3478549 e!2154711))

(declare-fun res!1403552 () Bool)

(assert (=> b!3478549 (=> (not res!1403552) (not e!2154711))))

(declare-fun lt!1184286 () Option!7562)

(assert (=> b!3478549 (= res!1403552 (isDefined!5824 lt!1184286))))

(assert (=> b!3478549 (= lt!1184286 (getRuleFromTag!1097 thiss!18206 rules!2135 (tag!6074 (rule!8056 (h!42659 tokens!494)))))))

(declare-fun lt!1184289 () Unit!52668)

(assert (=> b!3478549 (= lt!1184289 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1097 thiss!18206 rules!2135 lt!1184298 (h!42659 tokens!494)))))

(declare-fun lt!1184291 () Unit!52668)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1032 (LexerInterface!5043 List!37362 List!37363 Token!10274) Unit!52668)

(assert (=> b!3478549 (= lt!1184291 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1032 thiss!18206 rules!2135 tokens!494 (h!42659 tokens!494)))))

(declare-fun b!3478550 () Bool)

(declare-fun isEmpty!21630 (BalanceConc!22180) Bool)

(assert (=> b!3478550 (= e!2154706 (isEmpty!21630 (_2!21635 lt!1184311)))))

(declare-fun b!3478551 () Bool)

(declare-fun res!1403564 () Bool)

(assert (=> b!3478551 (=> (not res!1403564) (not e!2154717))))

(declare-fun rulesProduceEachTokenIndividually!1494 (LexerInterface!5043 List!37362 BalanceConc!22182) Bool)

(declare-fun seqFromList!3961 (List!37363) BalanceConc!22182)

(assert (=> b!3478551 (= res!1403564 (rulesProduceEachTokenIndividually!1494 thiss!18206 rules!2135 (seqFromList!3961 tokens!494)))))

(declare-fun b!3478552 () Bool)

(declare-fun e!2154707 () Bool)

(declare-fun e!2154694 () Bool)

(assert (=> b!3478552 (= e!2154707 e!2154694)))

(declare-fun res!1403544 () Bool)

(assert (=> b!3478552 (=> res!1403544 e!2154694)))

(declare-fun isEmpty!21631 (BalanceConc!22182) Bool)

(assert (=> b!3478552 (= res!1403544 (isEmpty!21631 (_1!21635 (lex!2369 thiss!18206 rules!2135 lt!1184302))))))

(declare-fun seqFromList!3962 (List!37361) BalanceConc!22180)

(assert (=> b!3478552 (= lt!1184302 (seqFromList!3962 lt!1184298))))

(declare-fun b!3478553 () Bool)

(declare-fun e!2154704 () Bool)

(assert (=> b!3478553 (= e!2154716 e!2154704)))

(declare-fun res!1403542 () Bool)

(assert (=> b!3478553 (=> (not res!1403542) (not e!2154704))))

(declare-fun lt!1184299 () Rule!10708)

(assert (=> b!3478553 (= res!1403542 (matchR!4797 (regex!5454 lt!1184299) lt!1184283))))

(declare-fun get!11932 (Option!7562) Rule!10708)

(assert (=> b!3478553 (= lt!1184299 (get!11932 lt!1184288))))

(declare-fun b!3478554 () Bool)

(declare-fun tp!1080872 () Bool)

(assert (=> b!3478554 (= e!2154705 (and e!2154714 tp!1080872))))

(declare-fun e!2154696 () Bool)

(assert (=> b!3478555 (= e!2154696 (and tp!1080882 tp!1080871))))

(declare-fun tp!1080873 () Bool)

(declare-fun b!3478556 () Bool)

(assert (=> b!3478556 (= e!2154720 (and (inv!21 (value!175899 (h!42659 tokens!494))) e!2154715 tp!1080873))))

(assert (=> b!3478557 (= e!2154713 (and tp!1080874 tp!1080879))))

(declare-fun b!3478558 () Bool)

(declare-fun e!2154709 () Bool)

(assert (=> b!3478558 (= e!2154717 (not e!2154709))))

(declare-fun res!1403545 () Bool)

(assert (=> b!3478558 (=> res!1403545 e!2154709)))

(declare-fun lt!1184282 () List!37361)

(declare-fun lt!1184304 () List!37361)

(assert (=> b!3478558 (= res!1403545 (not (= lt!1184282 lt!1184304)))))

(declare-fun printList!1591 (LexerInterface!5043 List!37363) List!37361)

(assert (=> b!3478558 (= lt!1184304 (printList!1591 thiss!18206 (Cons!37239 (h!42659 tokens!494) Nil!37239)))))

(declare-fun lt!1184312 () BalanceConc!22180)

(assert (=> b!3478558 (= lt!1184282 (list!13579 lt!1184312))))

(declare-fun lt!1184301 () BalanceConc!22182)

(assert (=> b!3478558 (= lt!1184312 (printTailRec!1538 thiss!18206 lt!1184301 0 (BalanceConc!22181 Empty!11283)))))

(assert (=> b!3478558 (= lt!1184312 (print!2108 thiss!18206 lt!1184301))))

(assert (=> b!3478558 (= lt!1184301 (singletonSeq!2550 (h!42659 tokens!494)))))

(declare-fun b!3478559 () Bool)

(declare-fun res!1403551 () Bool)

(assert (=> b!3478559 (=> (not res!1403551) (not e!2154717))))

(assert (=> b!3478559 (= res!1403551 (and (not ((_ is Nil!37239) tokens!494)) (not ((_ is Nil!37239) (t!275302 tokens!494)))))))

(declare-fun b!3478560 () Bool)

(declare-fun res!1403555 () Bool)

(assert (=> b!3478560 (=> (not res!1403555) (not e!2154717))))

(assert (=> b!3478560 (= res!1403555 (isSeparator!5454 (rule!8056 separatorToken!241)))))

(declare-fun b!3478561 () Bool)

(declare-fun res!1403553 () Bool)

(assert (=> b!3478561 (=> (not res!1403553) (not e!2154717))))

(declare-fun sepAndNonSepRulesDisjointChars!1648 (List!37362 List!37362) Bool)

(assert (=> b!3478561 (= res!1403553 (sepAndNonSepRulesDisjointChars!1648 rules!2135 rules!2135))))

(declare-fun b!3478562 () Bool)

(assert (=> b!3478562 (= e!2154700 (isEmpty!21630 (_2!21635 lt!1184310)))))

(declare-fun b!3478563 () Bool)

(declare-fun tp!1080875 () Bool)

(assert (=> b!3478563 (= e!2154721 (and tp!1080875 (inv!50426 (tag!6074 (rule!8056 separatorToken!241))) (inv!50430 (transformation!5454 (rule!8056 separatorToken!241))) e!2154696))))

(declare-fun b!3478564 () Bool)

(declare-fun e!2154695 () Bool)

(assert (=> b!3478564 (= e!2154711 e!2154695)))

(declare-fun res!1403539 () Bool)

(assert (=> b!3478564 (=> (not res!1403539) (not e!2154695))))

(declare-fun lt!1184307 () Rule!10708)

(assert (=> b!3478564 (= res!1403539 (matchR!4797 (regex!5454 lt!1184307) lt!1184298))))

(assert (=> b!3478564 (= lt!1184307 (get!11932 lt!1184286))))

(declare-fun res!1403543 () Bool)

(assert (=> b!3478565 (=> (not res!1403543) (not e!2154717))))

(declare-fun forall!7961 (List!37363 Int) Bool)

(assert (=> b!3478565 (= res!1403543 (forall!7961 tokens!494 lambda!122164))))

(declare-fun b!3478566 () Bool)

(declare-fun res!1403547 () Bool)

(assert (=> b!3478566 (=> (not res!1403547) (not e!2154717))))

(declare-fun rulesInvariant!4440 (LexerInterface!5043 List!37362) Bool)

(assert (=> b!3478566 (= res!1403547 (rulesInvariant!4440 thiss!18206 rules!2135))))

(declare-fun b!3478567 () Bool)

(declare-fun res!1403557 () Bool)

(assert (=> b!3478567 (=> (not res!1403557) (not e!2154717))))

(assert (=> b!3478567 (= res!1403557 (rulesProduceIndividualToken!2535 thiss!18206 rules!2135 separatorToken!241))))

(assert (=> b!3478568 (= e!2154698 (and tp!1080880 tp!1080877))))

(declare-fun b!3478569 () Bool)

(assert (=> b!3478569 (= e!2154712 false)))

(declare-fun b!3478570 () Bool)

(assert (=> b!3478570 (= e!2154695 (= (rule!8056 (h!42659 tokens!494)) lt!1184307))))

(declare-fun b!3478571 () Bool)

(declare-fun Unit!52671 () Unit!52668)

(assert (=> b!3478571 (= e!2154708 Unit!52671)))

(declare-fun b!3478572 () Bool)

(declare-fun res!1403559 () Bool)

(assert (=> b!3478572 (=> (not res!1403559) (not e!2154706))))

(declare-fun apply!8809 (BalanceConc!22182 Int) Token!10274)

(assert (=> b!3478572 (= res!1403559 (= (apply!8809 (_1!21635 lt!1184311) 0) separatorToken!241))))

(declare-fun b!3478573 () Bool)

(declare-fun res!1403556 () Bool)

(assert (=> b!3478573 (=> res!1403556 e!2154707)))

(assert (=> b!3478573 (= res!1403556 (not (rulesProduceIndividualToken!2535 thiss!18206 rules!2135 (h!42659 tokens!494))))))

(declare-fun b!3478574 () Bool)

(assert (=> b!3478574 (= e!2154694 e!2154718)))

(declare-fun res!1403558 () Bool)

(assert (=> b!3478574 (=> res!1403558 e!2154718)))

(assert (=> b!3478574 (= res!1403558 (or (isSeparator!5454 (rule!8056 (h!42659 tokens!494))) (isSeparator!5454 (rule!8056 (h!42659 (t!275302 tokens!494))))))))

(declare-fun lt!1184287 () Unit!52668)

(assert (=> b!3478574 (= lt!1184287 (forallContained!1401 tokens!494 lambda!122164 (h!42659 (t!275302 tokens!494))))))

(declare-fun lt!1184295 () Unit!52668)

(assert (=> b!3478574 (= lt!1184295 (forallContained!1401 tokens!494 lambda!122164 (h!42659 tokens!494)))))

(declare-fun b!3478575 () Bool)

(assert (=> b!3478575 (= e!2154704 (= (rule!8056 separatorToken!241) lt!1184299))))

(declare-fun b!3478576 () Bool)

(declare-fun res!1403560 () Bool)

(assert (=> b!3478576 (=> (not res!1403560) (not e!2154700))))

(assert (=> b!3478576 (= res!1403560 (= (apply!8809 (_1!21635 lt!1184310) 0) (h!42659 (t!275302 tokens!494))))))

(declare-fun b!3478577 () Bool)

(assert (=> b!3478577 (= e!2154709 e!2154707)))

(declare-fun res!1403540 () Bool)

(assert (=> b!3478577 (=> res!1403540 e!2154707)))

(assert (=> b!3478577 (= res!1403540 (or (not (= lt!1184304 lt!1184298)) (not (= lt!1184282 lt!1184298))))))

(assert (=> b!3478577 (= lt!1184298 (list!13579 (charsOf!3468 (h!42659 tokens!494))))))

(assert (= (and start!323722 res!1403548) b!3478544))

(assert (= (and b!3478544 res!1403541) b!3478566))

(assert (= (and b!3478566 res!1403547) b!3478551))

(assert (= (and b!3478551 res!1403564) b!3478567))

(assert (= (and b!3478567 res!1403557) b!3478560))

(assert (= (and b!3478560 res!1403555) b!3478565))

(assert (= (and b!3478565 res!1403543) b!3478561))

(assert (= (and b!3478561 res!1403553) b!3478559))

(assert (= (and b!3478559 res!1403551) b!3478558))

(assert (= (and b!3478558 (not res!1403545)) b!3478577))

(assert (= (and b!3478577 (not res!1403540)) b!3478573))

(assert (= (and b!3478573 (not res!1403556)) b!3478552))

(assert (= (and b!3478552 (not res!1403544)) b!3478574))

(assert (= (and b!3478574 (not res!1403558)) b!3478540))

(assert (= (and b!3478540 (not res!1403562)) b!3478546))

(assert (= (and b!3478546 (not res!1403563)) b!3478541))

(assert (= (and b!3478541 (not res!1403554)) b!3478549))

(assert (= (and b!3478549 res!1403552) b!3478564))

(assert (= (and b!3478564 res!1403539) b!3478570))

(assert (= (and b!3478549 res!1403546) b!3478553))

(assert (= (and b!3478553 res!1403542) b!3478575))

(assert (= (and b!3478549 c!596529) b!3478547))

(assert (= (and b!3478549 (not c!596529)) b!3478571))

(assert (= (and b!3478547 res!1403561) b!3478569))

(assert (= (and b!3478549 res!1403549) b!3478572))

(assert (= (and b!3478572 res!1403559) b!3478550))

(assert (= (and b!3478549 res!1403550) b!3478576))

(assert (= (and b!3478576 res!1403560) b!3478562))

(assert (= b!3478543 b!3478568))

(assert (= b!3478554 b!3478543))

(assert (= (and start!323722 ((_ is Cons!37238) rules!2135)) b!3478554))

(assert (= b!3478545 b!3478557))

(assert (= b!3478556 b!3478545))

(assert (= b!3478548 b!3478556))

(assert (= (and start!323722 ((_ is Cons!37239) tokens!494)) b!3478548))

(assert (= b!3478563 b!3478555))

(assert (= b!3478542 b!3478563))

(assert (= start!323722 b!3478542))

(declare-fun m!3894259 () Bool)

(assert (=> b!3478549 m!3894259))

(declare-fun m!3894261 () Bool)

(assert (=> b!3478549 m!3894261))

(declare-fun m!3894263 () Bool)

(assert (=> b!3478549 m!3894263))

(declare-fun m!3894265 () Bool)

(assert (=> b!3478549 m!3894265))

(declare-fun m!3894267 () Bool)

(assert (=> b!3478549 m!3894267))

(declare-fun m!3894269 () Bool)

(assert (=> b!3478549 m!3894269))

(declare-fun m!3894271 () Bool)

(assert (=> b!3478549 m!3894271))

(declare-fun m!3894273 () Bool)

(assert (=> b!3478549 m!3894273))

(declare-fun m!3894275 () Bool)

(assert (=> b!3478549 m!3894275))

(declare-fun m!3894277 () Bool)

(assert (=> b!3478549 m!3894277))

(assert (=> b!3478549 m!3894275))

(declare-fun m!3894279 () Bool)

(assert (=> b!3478549 m!3894279))

(declare-fun m!3894281 () Bool)

(assert (=> b!3478549 m!3894281))

(declare-fun m!3894283 () Bool)

(assert (=> b!3478549 m!3894283))

(declare-fun m!3894285 () Bool)

(assert (=> b!3478549 m!3894285))

(declare-fun m!3894287 () Bool)

(assert (=> b!3478549 m!3894287))

(assert (=> b!3478549 m!3894261))

(declare-fun m!3894289 () Bool)

(assert (=> b!3478549 m!3894289))

(declare-fun m!3894291 () Bool)

(assert (=> b!3478549 m!3894291))

(declare-fun m!3894293 () Bool)

(assert (=> b!3478549 m!3894293))

(declare-fun m!3894295 () Bool)

(assert (=> b!3478549 m!3894295))

(declare-fun m!3894297 () Bool)

(assert (=> b!3478549 m!3894297))

(declare-fun m!3894299 () Bool)

(assert (=> b!3478549 m!3894299))

(declare-fun m!3894301 () Bool)

(assert (=> b!3478549 m!3894301))

(declare-fun m!3894303 () Bool)

(assert (=> b!3478549 m!3894303))

(declare-fun m!3894305 () Bool)

(assert (=> b!3478549 m!3894305))

(declare-fun m!3894307 () Bool)

(assert (=> b!3478549 m!3894307))

(declare-fun m!3894309 () Bool)

(assert (=> b!3478549 m!3894309))

(declare-fun m!3894311 () Bool)

(assert (=> b!3478549 m!3894311))

(declare-fun m!3894313 () Bool)

(assert (=> b!3478549 m!3894313))

(declare-fun m!3894315 () Bool)

(assert (=> b!3478549 m!3894315))

(declare-fun m!3894317 () Bool)

(assert (=> b!3478549 m!3894317))

(declare-fun m!3894319 () Bool)

(assert (=> b!3478549 m!3894319))

(declare-fun m!3894321 () Bool)

(assert (=> b!3478565 m!3894321))

(declare-fun m!3894323 () Bool)

(assert (=> b!3478561 m!3894323))

(declare-fun m!3894325 () Bool)

(assert (=> b!3478547 m!3894325))

(declare-fun m!3894327 () Bool)

(assert (=> b!3478547 m!3894327))

(declare-fun m!3894329 () Bool)

(assert (=> b!3478563 m!3894329))

(declare-fun m!3894331 () Bool)

(assert (=> b!3478563 m!3894331))

(declare-fun m!3894333 () Bool)

(assert (=> b!3478544 m!3894333))

(declare-fun m!3894335 () Bool)

(assert (=> b!3478566 m!3894335))

(declare-fun m!3894337 () Bool)

(assert (=> b!3478546 m!3894337))

(assert (=> b!3478546 m!3894337))

(declare-fun m!3894339 () Bool)

(assert (=> b!3478546 m!3894339))

(declare-fun m!3894341 () Bool)

(assert (=> b!3478573 m!3894341))

(declare-fun m!3894343 () Bool)

(assert (=> b!3478562 m!3894343))

(declare-fun m!3894345 () Bool)

(assert (=> b!3478564 m!3894345))

(declare-fun m!3894347 () Bool)

(assert (=> b!3478564 m!3894347))

(declare-fun m!3894349 () Bool)

(assert (=> start!323722 m!3894349))

(declare-fun m!3894351 () Bool)

(assert (=> b!3478553 m!3894351))

(declare-fun m!3894353 () Bool)

(assert (=> b!3478553 m!3894353))

(declare-fun m!3894355 () Bool)

(assert (=> b!3478551 m!3894355))

(assert (=> b!3478551 m!3894355))

(declare-fun m!3894357 () Bool)

(assert (=> b!3478551 m!3894357))

(declare-fun m!3894359 () Bool)

(assert (=> b!3478542 m!3894359))

(declare-fun m!3894361 () Bool)

(assert (=> b!3478576 m!3894361))

(declare-fun m!3894363 () Bool)

(assert (=> b!3478543 m!3894363))

(declare-fun m!3894365 () Bool)

(assert (=> b!3478543 m!3894365))

(declare-fun m!3894367 () Bool)

(assert (=> b!3478552 m!3894367))

(declare-fun m!3894369 () Bool)

(assert (=> b!3478552 m!3894369))

(declare-fun m!3894371 () Bool)

(assert (=> b!3478552 m!3894371))

(declare-fun m!3894373 () Bool)

(assert (=> b!3478545 m!3894373))

(declare-fun m!3894375 () Bool)

(assert (=> b!3478545 m!3894375))

(declare-fun m!3894377 () Bool)

(assert (=> b!3478541 m!3894377))

(declare-fun m!3894379 () Bool)

(assert (=> b!3478541 m!3894379))

(declare-fun m!3894381 () Bool)

(assert (=> b!3478548 m!3894381))

(declare-fun m!3894383 () Bool)

(assert (=> b!3478574 m!3894383))

(declare-fun m!3894385 () Bool)

(assert (=> b!3478574 m!3894385))

(declare-fun m!3894387 () Bool)

(assert (=> b!3478556 m!3894387))

(declare-fun m!3894389 () Bool)

(assert (=> b!3478577 m!3894389))

(assert (=> b!3478577 m!3894389))

(declare-fun m!3894391 () Bool)

(assert (=> b!3478577 m!3894391))

(declare-fun m!3894393 () Bool)

(assert (=> b!3478572 m!3894393))

(declare-fun m!3894395 () Bool)

(assert (=> b!3478540 m!3894395))

(declare-fun m!3894397 () Bool)

(assert (=> b!3478540 m!3894397))

(declare-fun m!3894399 () Bool)

(assert (=> b!3478540 m!3894399))

(declare-fun m!3894401 () Bool)

(assert (=> b!3478540 m!3894401))

(assert (=> b!3478540 m!3894395))

(declare-fun m!3894403 () Bool)

(assert (=> b!3478540 m!3894403))

(assert (=> b!3478540 m!3894403))

(declare-fun m!3894405 () Bool)

(assert (=> b!3478540 m!3894405))

(declare-fun m!3894407 () Bool)

(assert (=> b!3478540 m!3894407))

(declare-fun m!3894409 () Bool)

(assert (=> b!3478540 m!3894409))

(assert (=> b!3478540 m!3894405))

(assert (=> b!3478540 m!3894407))

(declare-fun m!3894411 () Bool)

(assert (=> b!3478540 m!3894411))

(assert (=> b!3478540 m!3894397))

(declare-fun m!3894413 () Bool)

(assert (=> b!3478540 m!3894413))

(declare-fun m!3894415 () Bool)

(assert (=> b!3478558 m!3894415))

(declare-fun m!3894417 () Bool)

(assert (=> b!3478558 m!3894417))

(declare-fun m!3894419 () Bool)

(assert (=> b!3478558 m!3894419))

(declare-fun m!3894421 () Bool)

(assert (=> b!3478558 m!3894421))

(declare-fun m!3894423 () Bool)

(assert (=> b!3478558 m!3894423))

(declare-fun m!3894425 () Bool)

(assert (=> b!3478550 m!3894425))

(declare-fun m!3894427 () Bool)

(assert (=> b!3478567 m!3894427))

(check-sat (not b_next!90917) (not b!3478566) b_and!245403 (not b!3478545) (not b!3478565) (not b!3478562) (not b!3478551) (not b!3478558) (not b!3478573) (not b!3478549) (not b!3478567) (not b!3478548) (not b!3478576) b_and!245405 b_and!245401 (not b!3478564) (not b!3478547) (not b!3478540) (not b!3478543) (not start!323722) (not b!3478556) (not b!3478572) (not b!3478553) (not b_next!90921) (not b!3478541) b_and!245399 (not b!3478574) (not b!3478563) b_and!245397 (not b!3478577) (not b!3478561) (not b!3478586) (not b!3478544) (not b_next!90915) (not b!3478550) b_and!245395 (not b_next!90913) (not b_next!90919) (not b!3478552) (not b!3478554) (not b!3478542) (not b_next!90923) (not b!3478546))
(check-sat (not b_next!90917) b_and!245403 (not b_next!90921) b_and!245399 b_and!245397 (not b_next!90915) (not b_next!90919) (not b_next!90923) b_and!245405 b_and!245401 b_and!245395 (not b_next!90913))
