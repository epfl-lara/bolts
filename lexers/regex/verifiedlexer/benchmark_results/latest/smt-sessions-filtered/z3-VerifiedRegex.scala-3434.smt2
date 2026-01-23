; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!194080 () Bool)

(assert start!194080)

(declare-fun b!1933531 () Bool)

(declare-fun b_free!55433 () Bool)

(declare-fun b_next!56137 () Bool)

(assert (=> b!1933531 (= b_free!55433 (not b_next!56137))))

(declare-fun tp!551795 () Bool)

(declare-fun b_and!152259 () Bool)

(assert (=> b!1933531 (= tp!551795 b_and!152259)))

(declare-fun b_free!55435 () Bool)

(declare-fun b_next!56139 () Bool)

(assert (=> b!1933531 (= b_free!55435 (not b_next!56139))))

(declare-fun tp!551800 () Bool)

(declare-fun b_and!152261 () Bool)

(assert (=> b!1933531 (= tp!551800 b_and!152261)))

(declare-fun b!1933530 () Bool)

(declare-fun b_free!55437 () Bool)

(declare-fun b_next!56141 () Bool)

(assert (=> b!1933530 (= b_free!55437 (not b_next!56141))))

(declare-fun tp!551796 () Bool)

(declare-fun b_and!152263 () Bool)

(assert (=> b!1933530 (= tp!551796 b_and!152263)))

(declare-fun b_free!55439 () Bool)

(declare-fun b_next!56143 () Bool)

(assert (=> b!1933530 (= b_free!55439 (not b_next!56143))))

(declare-fun tp!551798 () Bool)

(declare-fun b_and!152265 () Bool)

(assert (=> b!1933530 (= tp!551798 b_and!152265)))

(declare-fun b!1933518 () Bool)

(declare-fun b_free!55441 () Bool)

(declare-fun b_next!56145 () Bool)

(assert (=> b!1933518 (= b_free!55441 (not b_next!56145))))

(declare-fun tp!551792 () Bool)

(declare-fun b_and!152267 () Bool)

(assert (=> b!1933518 (= tp!551792 b_and!152267)))

(declare-fun b_free!55443 () Bool)

(declare-fun b_next!56147 () Bool)

(assert (=> b!1933518 (= b_free!55443 (not b_next!56147))))

(declare-fun tp!551801 () Bool)

(declare-fun b_and!152269 () Bool)

(assert (=> b!1933518 (= tp!551801 b_and!152269)))

(declare-fun b!1933514 () Bool)

(declare-datatypes ((LexerInterface!3557 0))(
  ( (LexerInterfaceExt!3554 (__x!13658 Int)) (Lexer!3555) )
))
(declare-fun thiss!23328 () LexerInterface!3557)

(declare-datatypes ((C!10884 0))(
  ( (C!10885 (val!6394 Int)) )
))
(declare-datatypes ((List!22064 0))(
  ( (Nil!21982) (Cons!21982 (h!27383 C!10884) (t!180603 List!22064)) )
))
(declare-fun lt!741158 () List!22064)

(declare-fun e!1235896 () Bool)

(declare-datatypes ((List!22065 0))(
  ( (Nil!21983) (Cons!21983 (h!27384 (_ BitVec 16)) (t!180604 List!22065)) )
))
(declare-datatypes ((TokenValue!4080 0))(
  ( (FloatLiteralValue!8160 (text!29005 List!22065)) (TokenValueExt!4079 (__x!13659 Int)) (Broken!20400 (value!123969 List!22065)) (Object!4161) (End!4080) (Def!4080) (Underscore!4080) (Match!4080) (Else!4080) (Error!4080) (Case!4080) (If!4080) (Extends!4080) (Abstract!4080) (Class!4080) (Val!4080) (DelimiterValue!8160 (del!4140 List!22065)) (KeywordValue!4086 (value!123970 List!22065)) (CommentValue!8160 (value!123971 List!22065)) (WhitespaceValue!8160 (value!123972 List!22065)) (IndentationValue!4080 (value!123973 List!22065)) (String!25517) (Int32!4080) (Broken!20401 (value!123974 List!22065)) (Boolean!4081) (Unit!36345) (OperatorValue!4083 (op!4140 List!22065)) (IdentifierValue!8160 (value!123975 List!22065)) (IdentifierValue!8161 (value!123976 List!22065)) (WhitespaceValue!8161 (value!123977 List!22065)) (True!8160) (False!8160) (Broken!20402 (value!123978 List!22065)) (Broken!20403 (value!123979 List!22065)) (True!8161) (RightBrace!4080) (RightBracket!4080) (Colon!4080) (Null!4080) (Comma!4080) (LeftBracket!4080) (False!8161) (LeftBrace!4080) (ImaginaryLiteralValue!4080 (text!29006 List!22065)) (StringLiteralValue!12240 (value!123980 List!22065)) (EOFValue!4080 (value!123981 List!22065)) (IdentValue!4080 (value!123982 List!22065)) (DelimiterValue!8161 (value!123983 List!22065)) (DedentValue!4080 (value!123984 List!22065)) (NewLineValue!4080 (value!123985 List!22065)) (IntegerValue!12240 (value!123986 (_ BitVec 32)) (text!29007 List!22065)) (IntegerValue!12241 (value!123987 Int) (text!29008 List!22065)) (Times!4080) (Or!4080) (Equal!4080) (Minus!4080) (Broken!20404 (value!123988 List!22065)) (And!4080) (Div!4080) (LessEqual!4080) (Mod!4080) (Concat!9449) (Not!4080) (Plus!4080) (SpaceValue!4080 (value!123989 List!22065)) (IntegerValue!12242 (value!123990 Int) (text!29009 List!22065)) (StringLiteralValue!12241 (text!29010 List!22065)) (FloatLiteralValue!8161 (text!29011 List!22065)) (BytesLiteralValue!4080 (value!123991 List!22065)) (CommentValue!8161 (value!123992 List!22065)) (StringLiteralValue!12242 (value!123993 List!22065)) (ErrorTokenValue!4080 (msg!4141 List!22065)) )
))
(declare-datatypes ((String!25518 0))(
  ( (String!25519 (value!123994 String)) )
))
(declare-datatypes ((IArray!14689 0))(
  ( (IArray!14690 (innerList!7402 List!22064)) )
))
(declare-datatypes ((Conc!7342 0))(
  ( (Node!7342 (left!17488 Conc!7342) (right!17818 Conc!7342) (csize!14914 Int) (cheight!7553 Int)) (Leaf!10777 (xs!10236 IArray!14689) (csize!14915 Int)) (Empty!7342) )
))
(declare-datatypes ((BalanceConc!14500 0))(
  ( (BalanceConc!14501 (c!314508 Conc!7342)) )
))
(declare-datatypes ((TokenValueInjection!7744 0))(
  ( (TokenValueInjection!7745 (toValue!5585 Int) (toChars!5444 Int)) )
))
(declare-datatypes ((Regex!5369 0))(
  ( (ElementMatch!5369 (c!314509 C!10884)) (Concat!9450 (regOne!11250 Regex!5369) (regTwo!11250 Regex!5369)) (EmptyExpr!5369) (Star!5369 (reg!5698 Regex!5369)) (EmptyLang!5369) (Union!5369 (regOne!11251 Regex!5369) (regTwo!11251 Regex!5369)) )
))
(declare-datatypes ((Rule!7688 0))(
  ( (Rule!7689 (regex!3944 Regex!5369) (tag!4398 String!25518) (isSeparator!3944 Bool) (transformation!3944 TokenValueInjection!7744)) )
))
(declare-datatypes ((List!22066 0))(
  ( (Nil!21984) (Cons!21984 (h!27385 Rule!7688) (t!180605 List!22066)) )
))
(declare-fun rules!3198 () List!22066)

(declare-datatypes ((Token!7440 0))(
  ( (Token!7441 (value!123995 TokenValue!4080) (rule!6153 Rule!7688) (size!17148 Int) (originalCharacters!4751 List!22064)) )
))
(declare-datatypes ((List!22067 0))(
  ( (Nil!21985) (Cons!21985 (h!27386 Token!7440) (t!180606 List!22067)) )
))
(declare-datatypes ((IArray!14691 0))(
  ( (IArray!14692 (innerList!7403 List!22067)) )
))
(declare-datatypes ((Conc!7343 0))(
  ( (Node!7343 (left!17489 Conc!7343) (right!17819 Conc!7343) (csize!14916 Int) (cheight!7554 Int)) (Leaf!10778 (xs!10237 IArray!14691) (csize!14917 Int)) (Empty!7343) )
))
(declare-datatypes ((BalanceConc!14502 0))(
  ( (BalanceConc!14503 (c!314510 Conc!7343)) )
))
(declare-fun isEmpty!13563 (BalanceConc!14502) Bool)

(declare-datatypes ((tuple2!20604 0))(
  ( (tuple2!20605 (_1!11771 BalanceConc!14502) (_2!11771 BalanceConc!14500)) )
))
(declare-fun lex!1581 (LexerInterface!3557 List!22066 BalanceConc!14500) tuple2!20604)

(declare-fun seqFromList!2798 (List!22064) BalanceConc!14500)

(assert (=> b!1933514 (= e!1235896 (not (isEmpty!13563 (_1!11771 (lex!1581 thiss!23328 rules!3198 (seqFromList!2798 lt!741158))))))))

(declare-fun b!1933515 () Bool)

(declare-fun res!864524 () Bool)

(declare-fun e!1235901 () Bool)

(assert (=> b!1933515 (=> (not res!864524) (not e!1235901))))

(declare-fun isEmpty!13564 (List!22066) Bool)

(assert (=> b!1933515 (= res!864524 (not (isEmpty!13564 rules!3198)))))

(declare-fun b!1933517 () Bool)

(declare-fun res!864523 () Bool)

(assert (=> b!1933517 (=> (not res!864523) (not e!1235901))))

(declare-fun separatorToken!354 () Token!7440)

(declare-fun rulesProduceIndividualToken!1729 (LexerInterface!3557 List!22066 Token!7440) Bool)

(assert (=> b!1933517 (= res!864523 (rulesProduceIndividualToken!1729 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun e!1235899 () Bool)

(assert (=> b!1933518 (= e!1235899 (and tp!551792 tp!551801))))

(declare-fun b!1933519 () Bool)

(declare-fun res!864516 () Bool)

(assert (=> b!1933519 (=> res!864516 e!1235896)))

(declare-fun tokens!598 () List!22067)

(assert (=> b!1933519 (= res!864516 (not (rulesProduceIndividualToken!1729 thiss!23328 rules!3198 (h!27386 tokens!598))))))

(declare-fun b!1933520 () Bool)

(declare-fun e!1235891 () Bool)

(declare-fun e!1235900 () Bool)

(assert (=> b!1933520 (= e!1235891 e!1235900)))

(declare-fun res!864518 () Bool)

(assert (=> b!1933520 (=> (not res!864518) (not e!1235900))))

(declare-fun lt!741162 () Rule!7688)

(declare-fun lt!741174 () List!22064)

(declare-fun matchR!2637 (Regex!5369 List!22064) Bool)

(assert (=> b!1933520 (= res!864518 (matchR!2637 (regex!3944 lt!741162) lt!741174))))

(declare-datatypes ((Option!4565 0))(
  ( (None!4564) (Some!4564 (v!26679 Rule!7688)) )
))
(declare-fun lt!741161 () Option!4565)

(declare-fun get!6932 (Option!4565) Rule!7688)

(assert (=> b!1933520 (= lt!741162 (get!6932 lt!741161))))

(declare-fun e!1235908 () Bool)

(declare-fun b!1933521 () Bool)

(declare-fun e!1235907 () Bool)

(declare-fun tp!551802 () Bool)

(declare-fun inv!29077 (Token!7440) Bool)

(assert (=> b!1933521 (= e!1235908 (and (inv!29077 (h!27386 tokens!598)) e!1235907 tp!551802))))

(declare-fun b!1933522 () Bool)

(assert (=> b!1933522 (= e!1235900 (= (rule!6153 separatorToken!354) lt!741162))))

(declare-fun b!1933523 () Bool)

(declare-fun e!1235892 () Bool)

(declare-fun e!1235888 () Bool)

(declare-fun tp!551804 () Bool)

(assert (=> b!1933523 (= e!1235892 (and e!1235888 tp!551804))))

(declare-fun e!1235903 () Bool)

(declare-fun e!1235905 () Bool)

(declare-fun b!1933524 () Bool)

(declare-fun tp!551797 () Bool)

(declare-fun inv!29074 (String!25518) Bool)

(declare-fun inv!29078 (TokenValueInjection!7744) Bool)

(assert (=> b!1933524 (= e!1235903 (and tp!551797 (inv!29074 (tag!4398 (rule!6153 (h!27386 tokens!598)))) (inv!29078 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) e!1235905))))

(declare-fun e!1235904 () Bool)

(declare-fun b!1933525 () Bool)

(declare-fun tp!551794 () Bool)

(declare-fun e!1235910 () Bool)

(assert (=> b!1933525 (= e!1235904 (and tp!551794 (inv!29074 (tag!4398 (rule!6153 separatorToken!354))) (inv!29078 (transformation!3944 (rule!6153 separatorToken!354))) e!1235910))))

(declare-fun e!1235906 () Bool)

(declare-fun tp!551793 () Bool)

(declare-fun b!1933526 () Bool)

(declare-fun inv!21 (TokenValue!4080) Bool)

(assert (=> b!1933526 (= e!1235906 (and (inv!21 (value!123995 separatorToken!354)) e!1235904 tp!551793))))

(declare-fun b!1933527 () Bool)

(declare-fun res!864529 () Bool)

(assert (=> b!1933527 (=> (not res!864529) (not e!1235901))))

(declare-fun sepAndNonSepRulesDisjointChars!1042 (List!22066 List!22066) Bool)

(assert (=> b!1933527 (= res!864529 (sepAndNonSepRulesDisjointChars!1042 rules!3198 rules!3198))))

(declare-fun b!1933528 () Bool)

(declare-fun e!1235902 () Bool)

(declare-datatypes ((tuple2!20606 0))(
  ( (tuple2!20607 (_1!11772 Token!7440) (_2!11772 List!22064)) )
))
(declare-datatypes ((Option!4566 0))(
  ( (None!4565) (Some!4565 (v!26680 tuple2!20606)) )
))
(declare-fun lt!741163 () Option!4566)

(declare-fun get!6933 (Option!4566) tuple2!20606)

(assert (=> b!1933528 (= e!1235902 (= (_1!11772 (get!6933 lt!741163)) (h!27386 tokens!598)))))

(declare-fun b!1933529 () Bool)

(declare-fun e!1235894 () Bool)

(declare-fun e!1235893 () Bool)

(assert (=> b!1933529 (= e!1235894 e!1235893)))

(declare-fun res!864527 () Bool)

(assert (=> b!1933529 (=> (not res!864527) (not e!1235893))))

(declare-fun lt!741169 () Rule!7688)

(assert (=> b!1933529 (= res!864527 (matchR!2637 (regex!3944 lt!741169) lt!741158))))

(declare-fun lt!741170 () Option!4565)

(assert (=> b!1933529 (= lt!741169 (get!6932 lt!741170))))

(assert (=> b!1933530 (= e!1235905 (and tp!551796 tp!551798))))

(declare-fun b!1933516 () Bool)

(declare-fun res!864530 () Bool)

(assert (=> b!1933516 (=> (not res!864530) (not e!1235901))))

(declare-fun lambda!75371 () Int)

(declare-fun forall!4650 (List!22067 Int) Bool)

(assert (=> b!1933516 (= res!864530 (forall!4650 tokens!598 lambda!75371))))

(declare-fun res!864528 () Bool)

(assert (=> start!194080 (=> (not res!864528) (not e!1235901))))

(get-info :version)

(assert (=> start!194080 (= res!864528 ((_ is Lexer!3555) thiss!23328))))

(assert (=> start!194080 e!1235901))

(assert (=> start!194080 true))

(assert (=> start!194080 e!1235892))

(assert (=> start!194080 e!1235908))

(assert (=> start!194080 (and (inv!29077 separatorToken!354) e!1235906)))

(assert (=> b!1933531 (= e!1235910 (and tp!551795 tp!551800))))

(declare-fun b!1933532 () Bool)

(declare-fun res!864517 () Bool)

(assert (=> b!1933532 (=> (not res!864517) (not e!1235901))))

(declare-fun rulesProduceEachTokenIndividuallyList!1288 (LexerInterface!3557 List!22066 List!22067) Bool)

(assert (=> b!1933532 (= res!864517 (rulesProduceEachTokenIndividuallyList!1288 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1933533 () Bool)

(assert (=> b!1933533 (= e!1235893 (= (rule!6153 (h!27386 tokens!598)) lt!741169))))

(declare-fun b!1933534 () Bool)

(declare-fun res!864515 () Bool)

(assert (=> b!1933534 (=> (not res!864515) (not e!1235901))))

(assert (=> b!1933534 (= res!864515 (isSeparator!3944 (rule!6153 separatorToken!354)))))

(declare-fun b!1933535 () Bool)

(declare-fun res!864514 () Bool)

(assert (=> b!1933535 (=> (not res!864514) (not e!1235901))))

(declare-fun rulesInvariant!3164 (LexerInterface!3557 List!22066) Bool)

(assert (=> b!1933535 (= res!864514 (rulesInvariant!3164 thiss!23328 rules!3198))))

(declare-fun b!1933536 () Bool)

(declare-fun e!1235889 () Bool)

(assert (=> b!1933536 (= e!1235901 (not e!1235889))))

(declare-fun res!864526 () Bool)

(assert (=> b!1933536 (=> res!864526 e!1235889)))

(declare-fun lt!741159 () Bool)

(declare-fun lt!741172 () Option!4566)

(assert (=> b!1933536 (= res!864526 (or (and (not lt!741159) (= (_1!11772 (v!26680 lt!741172)) (h!27386 tokens!598))) (and (not lt!741159) (not (= (_1!11772 (v!26680 lt!741172)) (h!27386 tokens!598)))) (not ((_ is None!4565) lt!741172))))))

(assert (=> b!1933536 (= lt!741159 (not ((_ is Some!4565) lt!741172)))))

(declare-fun maxPrefix!1995 (LexerInterface!3557 List!22066 List!22064) Option!4566)

(declare-fun ++!5905 (List!22064 List!22064) List!22064)

(declare-fun printWithSeparatorTokenWhenNeededList!596 (LexerInterface!3557 List!22066 List!22067 Token!7440) List!22064)

(assert (=> b!1933536 (= lt!741172 (maxPrefix!1995 thiss!23328 rules!3198 (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))))))

(assert (=> b!1933536 e!1235894))

(declare-fun res!864522 () Bool)

(assert (=> b!1933536 (=> (not res!864522) (not e!1235894))))

(declare-fun isDefined!3857 (Option!4565) Bool)

(assert (=> b!1933536 (= res!864522 (isDefined!3857 lt!741170))))

(declare-fun getRuleFromTag!765 (LexerInterface!3557 List!22066 String!25518) Option!4565)

(assert (=> b!1933536 (= lt!741170 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 (h!27386 tokens!598)))))))

(declare-datatypes ((Unit!36346 0))(
  ( (Unit!36347) )
))
(declare-fun lt!741157 () Unit!36346)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!765 (LexerInterface!3557 List!22066 List!22064 Token!7440) Unit!36346)

(assert (=> b!1933536 (= lt!741157 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!765 thiss!23328 rules!3198 lt!741158 (h!27386 tokens!598)))))

(assert (=> b!1933536 e!1235902))

(declare-fun res!864521 () Bool)

(assert (=> b!1933536 (=> (not res!864521) (not e!1235902))))

(declare-fun isDefined!3858 (Option!4566) Bool)

(assert (=> b!1933536 (= res!864521 (isDefined!3858 lt!741163))))

(assert (=> b!1933536 (= lt!741163 (maxPrefix!1995 thiss!23328 rules!3198 lt!741158))))

(declare-fun lt!741168 () BalanceConc!14500)

(declare-fun list!8905 (BalanceConc!14500) List!22064)

(assert (=> b!1933536 (= lt!741158 (list!8905 lt!741168))))

(assert (=> b!1933536 e!1235891))

(declare-fun res!864520 () Bool)

(assert (=> b!1933536 (=> (not res!864520) (not e!1235891))))

(assert (=> b!1933536 (= res!864520 (isDefined!3857 lt!741161))))

(assert (=> b!1933536 (= lt!741161 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 separatorToken!354))))))

(declare-fun lt!741166 () Unit!36346)

(assert (=> b!1933536 (= lt!741166 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!765 thiss!23328 rules!3198 lt!741174 separatorToken!354))))

(declare-fun charsOf!2484 (Token!7440) BalanceConc!14500)

(assert (=> b!1933536 (= lt!741174 (list!8905 (charsOf!2484 separatorToken!354)))))

(declare-fun lt!741173 () Unit!36346)

(declare-fun lemmaEqSameImage!630 (TokenValueInjection!7744 BalanceConc!14500 BalanceConc!14500) Unit!36346)

(assert (=> b!1933536 (= lt!741173 (lemmaEqSameImage!630 (transformation!3944 (rule!6153 (h!27386 tokens!598))) lt!741168 (seqFromList!2798 (originalCharacters!4751 (h!27386 tokens!598)))))))

(declare-fun lt!741171 () Unit!36346)

(declare-fun lemmaSemiInverse!901 (TokenValueInjection!7744 BalanceConc!14500) Unit!36346)

(assert (=> b!1933536 (= lt!741171 (lemmaSemiInverse!901 (transformation!3944 (rule!6153 (h!27386 tokens!598))) lt!741168))))

(assert (=> b!1933536 (= lt!741168 (charsOf!2484 (h!27386 tokens!598)))))

(declare-fun b!1933537 () Bool)

(assert (=> b!1933537 (= e!1235889 e!1235896)))

(declare-fun res!864525 () Bool)

(assert (=> b!1933537 (=> res!864525 e!1235896)))

(declare-fun lt!741167 () List!22064)

(declare-fun lt!741160 () List!22064)

(assert (=> b!1933537 (= res!864525 (or (not (= lt!741160 lt!741167)) (not (= lt!741167 lt!741158)) (not (= lt!741160 lt!741158))))))

(declare-fun printList!1092 (LexerInterface!3557 List!22067) List!22064)

(assert (=> b!1933537 (= lt!741167 (printList!1092 thiss!23328 (Cons!21985 (h!27386 tokens!598) Nil!21985)))))

(declare-fun lt!741164 () BalanceConc!14500)

(assert (=> b!1933537 (= lt!741160 (list!8905 lt!741164))))

(declare-fun lt!741165 () BalanceConc!14502)

(declare-fun printTailRec!1033 (LexerInterface!3557 BalanceConc!14502 Int BalanceConc!14500) BalanceConc!14500)

(assert (=> b!1933537 (= lt!741164 (printTailRec!1033 thiss!23328 lt!741165 0 (BalanceConc!14501 Empty!7342)))))

(declare-fun print!1527 (LexerInterface!3557 BalanceConc!14502) BalanceConc!14500)

(assert (=> b!1933537 (= lt!741164 (print!1527 thiss!23328 lt!741165))))

(declare-fun singletonSeq!1928 (Token!7440) BalanceConc!14502)

(assert (=> b!1933537 (= lt!741165 (singletonSeq!1928 (h!27386 tokens!598)))))

(declare-fun b!1933538 () Bool)

(declare-fun res!864519 () Bool)

(assert (=> b!1933538 (=> (not res!864519) (not e!1235901))))

(assert (=> b!1933538 (= res!864519 ((_ is Cons!21985) tokens!598))))

(declare-fun b!1933539 () Bool)

(declare-fun tp!551799 () Bool)

(assert (=> b!1933539 (= e!1235888 (and tp!551799 (inv!29074 (tag!4398 (h!27385 rules!3198))) (inv!29078 (transformation!3944 (h!27385 rules!3198))) e!1235899))))

(declare-fun b!1933540 () Bool)

(declare-fun tp!551803 () Bool)

(assert (=> b!1933540 (= e!1235907 (and (inv!21 (value!123995 (h!27386 tokens!598))) e!1235903 tp!551803))))

(assert (= (and start!194080 res!864528) b!1933515))

(assert (= (and b!1933515 res!864524) b!1933535))

(assert (= (and b!1933535 res!864514) b!1933532))

(assert (= (and b!1933532 res!864517) b!1933517))

(assert (= (and b!1933517 res!864523) b!1933534))

(assert (= (and b!1933534 res!864515) b!1933516))

(assert (= (and b!1933516 res!864530) b!1933527))

(assert (= (and b!1933527 res!864529) b!1933538))

(assert (= (and b!1933538 res!864519) b!1933536))

(assert (= (and b!1933536 res!864520) b!1933520))

(assert (= (and b!1933520 res!864518) b!1933522))

(assert (= (and b!1933536 res!864521) b!1933528))

(assert (= (and b!1933536 res!864522) b!1933529))

(assert (= (and b!1933529 res!864527) b!1933533))

(assert (= (and b!1933536 (not res!864526)) b!1933537))

(assert (= (and b!1933537 (not res!864525)) b!1933519))

(assert (= (and b!1933519 (not res!864516)) b!1933514))

(assert (= b!1933539 b!1933518))

(assert (= b!1933523 b!1933539))

(assert (= (and start!194080 ((_ is Cons!21984) rules!3198)) b!1933523))

(assert (= b!1933524 b!1933530))

(assert (= b!1933540 b!1933524))

(assert (= b!1933521 b!1933540))

(assert (= (and start!194080 ((_ is Cons!21985) tokens!598)) b!1933521))

(assert (= b!1933525 b!1933531))

(assert (= b!1933526 b!1933525))

(assert (= start!194080 b!1933526))

(declare-fun m!2372105 () Bool)

(assert (=> b!1933526 m!2372105))

(declare-fun m!2372107 () Bool)

(assert (=> b!1933514 m!2372107))

(assert (=> b!1933514 m!2372107))

(declare-fun m!2372109 () Bool)

(assert (=> b!1933514 m!2372109))

(declare-fun m!2372111 () Bool)

(assert (=> b!1933514 m!2372111))

(declare-fun m!2372113 () Bool)

(assert (=> b!1933535 m!2372113))

(declare-fun m!2372115 () Bool)

(assert (=> b!1933540 m!2372115))

(declare-fun m!2372117 () Bool)

(assert (=> b!1933528 m!2372117))

(declare-fun m!2372119 () Bool)

(assert (=> b!1933524 m!2372119))

(declare-fun m!2372121 () Bool)

(assert (=> b!1933524 m!2372121))

(declare-fun m!2372123 () Bool)

(assert (=> b!1933520 m!2372123))

(declare-fun m!2372125 () Bool)

(assert (=> b!1933520 m!2372125))

(declare-fun m!2372127 () Bool)

(assert (=> b!1933536 m!2372127))

(declare-fun m!2372129 () Bool)

(assert (=> b!1933536 m!2372129))

(declare-fun m!2372131 () Bool)

(assert (=> b!1933536 m!2372131))

(declare-fun m!2372133 () Bool)

(assert (=> b!1933536 m!2372133))

(declare-fun m!2372135 () Bool)

(assert (=> b!1933536 m!2372135))

(declare-fun m!2372137 () Bool)

(assert (=> b!1933536 m!2372137))

(declare-fun m!2372139 () Bool)

(assert (=> b!1933536 m!2372139))

(declare-fun m!2372141 () Bool)

(assert (=> b!1933536 m!2372141))

(assert (=> b!1933536 m!2372133))

(declare-fun m!2372143 () Bool)

(assert (=> b!1933536 m!2372143))

(assert (=> b!1933536 m!2372135))

(declare-fun m!2372145 () Bool)

(assert (=> b!1933536 m!2372145))

(assert (=> b!1933536 m!2372143))

(declare-fun m!2372147 () Bool)

(assert (=> b!1933536 m!2372147))

(declare-fun m!2372149 () Bool)

(assert (=> b!1933536 m!2372149))

(declare-fun m!2372151 () Bool)

(assert (=> b!1933536 m!2372151))

(declare-fun m!2372153 () Bool)

(assert (=> b!1933536 m!2372153))

(declare-fun m!2372155 () Bool)

(assert (=> b!1933536 m!2372155))

(declare-fun m!2372157 () Bool)

(assert (=> b!1933536 m!2372157))

(assert (=> b!1933536 m!2372131))

(declare-fun m!2372159 () Bool)

(assert (=> b!1933536 m!2372159))

(declare-fun m!2372161 () Bool)

(assert (=> b!1933536 m!2372161))

(declare-fun m!2372163 () Bool)

(assert (=> b!1933517 m!2372163))

(declare-fun m!2372165 () Bool)

(assert (=> b!1933527 m!2372165))

(declare-fun m!2372167 () Bool)

(assert (=> b!1933532 m!2372167))

(declare-fun m!2372169 () Bool)

(assert (=> start!194080 m!2372169))

(declare-fun m!2372171 () Bool)

(assert (=> b!1933519 m!2372171))

(declare-fun m!2372173 () Bool)

(assert (=> b!1933515 m!2372173))

(declare-fun m!2372175 () Bool)

(assert (=> b!1933516 m!2372175))

(declare-fun m!2372177 () Bool)

(assert (=> b!1933529 m!2372177))

(declare-fun m!2372179 () Bool)

(assert (=> b!1933529 m!2372179))

(declare-fun m!2372181 () Bool)

(assert (=> b!1933537 m!2372181))

(declare-fun m!2372183 () Bool)

(assert (=> b!1933537 m!2372183))

(declare-fun m!2372185 () Bool)

(assert (=> b!1933537 m!2372185))

(declare-fun m!2372187 () Bool)

(assert (=> b!1933537 m!2372187))

(declare-fun m!2372189 () Bool)

(assert (=> b!1933537 m!2372189))

(declare-fun m!2372191 () Bool)

(assert (=> b!1933525 m!2372191))

(declare-fun m!2372193 () Bool)

(assert (=> b!1933525 m!2372193))

(declare-fun m!2372195 () Bool)

(assert (=> b!1933539 m!2372195))

(declare-fun m!2372197 () Bool)

(assert (=> b!1933539 m!2372197))

(declare-fun m!2372199 () Bool)

(assert (=> b!1933521 m!2372199))

(check-sat (not b!1933524) (not b!1933514) (not b!1933523) (not b!1933539) (not b!1933526) (not b_next!56141) (not b!1933532) (not b!1933535) (not b!1933537) (not b!1933536) b_and!152261 (not b!1933520) (not b!1933516) (not b_next!56137) b_and!152263 (not b_next!56147) (not b!1933521) b_and!152269 (not b!1933519) (not b!1933525) (not b_next!56143) b_and!152265 (not b!1933515) (not b!1933529) (not b!1933527) b_and!152267 (not b!1933528) (not b_next!56145) b_and!152259 (not b_next!56139) (not b!1933517) (not start!194080) (not b!1933540))
(check-sat b_and!152267 (not b_next!56141) (not b_next!56145) b_and!152261 (not b_next!56137) b_and!152263 (not b_next!56147) b_and!152269 (not b_next!56143) b_and!152265 b_and!152259 (not b_next!56139))
(get-model)

(declare-fun b!1933605 () Bool)

(declare-fun e!1235943 () Bool)

(declare-fun e!1235940 () Bool)

(assert (=> b!1933605 (= e!1235943 e!1235940)))

(declare-fun res!864588 () Bool)

(assert (=> b!1933605 (=> (not res!864588) (not e!1235940))))

(declare-fun lt!741195 () Bool)

(assert (=> b!1933605 (= res!864588 (not lt!741195))))

(declare-fun b!1933606 () Bool)

(declare-fun res!864593 () Bool)

(assert (=> b!1933606 (=> res!864593 e!1235943)))

(assert (=> b!1933606 (= res!864593 (not ((_ is ElementMatch!5369) (regex!3944 lt!741169))))))

(declare-fun e!1235941 () Bool)

(assert (=> b!1933606 (= e!1235941 e!1235943)))

(declare-fun bm!118925 () Bool)

(declare-fun call!118930 () Bool)

(declare-fun isEmpty!13567 (List!22064) Bool)

(assert (=> bm!118925 (= call!118930 (isEmpty!13567 lt!741158))))

(declare-fun b!1933607 () Bool)

(declare-fun e!1235942 () Bool)

(declare-fun derivativeStep!1375 (Regex!5369 C!10884) Regex!5369)

(declare-fun head!4509 (List!22064) C!10884)

(declare-fun tail!2995 (List!22064) List!22064)

(assert (=> b!1933607 (= e!1235942 (matchR!2637 (derivativeStep!1375 (regex!3944 lt!741169) (head!4509 lt!741158)) (tail!2995 lt!741158)))))

(declare-fun b!1933608 () Bool)

(declare-fun res!864591 () Bool)

(declare-fun e!1235945 () Bool)

(assert (=> b!1933608 (=> (not res!864591) (not e!1235945))))

(assert (=> b!1933608 (= res!864591 (isEmpty!13567 (tail!2995 lt!741158)))))

(declare-fun b!1933609 () Bool)

(declare-fun e!1235944 () Bool)

(assert (=> b!1933609 (= e!1235944 (= lt!741195 call!118930))))

(declare-fun b!1933610 () Bool)

(declare-fun res!864590 () Bool)

(assert (=> b!1933610 (=> (not res!864590) (not e!1235945))))

(assert (=> b!1933610 (= res!864590 (not call!118930))))

(declare-fun b!1933612 () Bool)

(declare-fun res!864587 () Bool)

(declare-fun e!1235946 () Bool)

(assert (=> b!1933612 (=> res!864587 e!1235946)))

(assert (=> b!1933612 (= res!864587 (not (isEmpty!13567 (tail!2995 lt!741158))))))

(declare-fun b!1933613 () Bool)

(declare-fun nullable!1616 (Regex!5369) Bool)

(assert (=> b!1933613 (= e!1235942 (nullable!1616 (regex!3944 lt!741169)))))

(declare-fun b!1933614 () Bool)

(assert (=> b!1933614 (= e!1235945 (= (head!4509 lt!741158) (c!314509 (regex!3944 lt!741169))))))

(declare-fun d!589651 () Bool)

(assert (=> d!589651 e!1235944))

(declare-fun c!314521 () Bool)

(assert (=> d!589651 (= c!314521 ((_ is EmptyExpr!5369) (regex!3944 lt!741169)))))

(assert (=> d!589651 (= lt!741195 e!1235942)))

(declare-fun c!314522 () Bool)

(assert (=> d!589651 (= c!314522 (isEmpty!13567 lt!741158))))

(declare-fun validRegex!2142 (Regex!5369) Bool)

(assert (=> d!589651 (validRegex!2142 (regex!3944 lt!741169))))

(assert (=> d!589651 (= (matchR!2637 (regex!3944 lt!741169) lt!741158) lt!741195)))

(declare-fun b!1933611 () Bool)

(assert (=> b!1933611 (= e!1235946 (not (= (head!4509 lt!741158) (c!314509 (regex!3944 lt!741169)))))))

(declare-fun b!1933615 () Bool)

(assert (=> b!1933615 (= e!1235941 (not lt!741195))))

(declare-fun b!1933616 () Bool)

(assert (=> b!1933616 (= e!1235944 e!1235941)))

(declare-fun c!314520 () Bool)

(assert (=> b!1933616 (= c!314520 ((_ is EmptyLang!5369) (regex!3944 lt!741169)))))

(declare-fun b!1933617 () Bool)

(assert (=> b!1933617 (= e!1235940 e!1235946)))

(declare-fun res!864592 () Bool)

(assert (=> b!1933617 (=> res!864592 e!1235946)))

(assert (=> b!1933617 (= res!864592 call!118930)))

(declare-fun b!1933618 () Bool)

(declare-fun res!864586 () Bool)

(assert (=> b!1933618 (=> res!864586 e!1235943)))

(assert (=> b!1933618 (= res!864586 e!1235945)))

(declare-fun res!864589 () Bool)

(assert (=> b!1933618 (=> (not res!864589) (not e!1235945))))

(assert (=> b!1933618 (= res!864589 lt!741195)))

(assert (= (and d!589651 c!314522) b!1933613))

(assert (= (and d!589651 (not c!314522)) b!1933607))

(assert (= (and d!589651 c!314521) b!1933609))

(assert (= (and d!589651 (not c!314521)) b!1933616))

(assert (= (and b!1933616 c!314520) b!1933615))

(assert (= (and b!1933616 (not c!314520)) b!1933606))

(assert (= (and b!1933606 (not res!864593)) b!1933618))

(assert (= (and b!1933618 res!864589) b!1933610))

(assert (= (and b!1933610 res!864590) b!1933608))

(assert (= (and b!1933608 res!864591) b!1933614))

(assert (= (and b!1933618 (not res!864586)) b!1933605))

(assert (= (and b!1933605 res!864588) b!1933617))

(assert (= (and b!1933617 (not res!864592)) b!1933612))

(assert (= (and b!1933612 (not res!864587)) b!1933611))

(assert (= (or b!1933609 b!1933610 b!1933617) bm!118925))

(declare-fun m!2372247 () Bool)

(assert (=> b!1933612 m!2372247))

(assert (=> b!1933612 m!2372247))

(declare-fun m!2372249 () Bool)

(assert (=> b!1933612 m!2372249))

(declare-fun m!2372251 () Bool)

(assert (=> b!1933607 m!2372251))

(assert (=> b!1933607 m!2372251))

(declare-fun m!2372253 () Bool)

(assert (=> b!1933607 m!2372253))

(assert (=> b!1933607 m!2372247))

(assert (=> b!1933607 m!2372253))

(assert (=> b!1933607 m!2372247))

(declare-fun m!2372255 () Bool)

(assert (=> b!1933607 m!2372255))

(declare-fun m!2372257 () Bool)

(assert (=> d!589651 m!2372257))

(declare-fun m!2372259 () Bool)

(assert (=> d!589651 m!2372259))

(assert (=> b!1933614 m!2372251))

(assert (=> bm!118925 m!2372257))

(assert (=> b!1933608 m!2372247))

(assert (=> b!1933608 m!2372247))

(assert (=> b!1933608 m!2372249))

(declare-fun m!2372261 () Bool)

(assert (=> b!1933613 m!2372261))

(assert (=> b!1933611 m!2372251))

(assert (=> b!1933529 d!589651))

(declare-fun d!589655 () Bool)

(assert (=> d!589655 (= (get!6932 lt!741170) (v!26679 lt!741170))))

(assert (=> b!1933529 d!589655))

(declare-fun d!589657 () Bool)

(assert (=> d!589657 (= (get!6933 lt!741163) (v!26680 lt!741163))))

(assert (=> b!1933528 d!589657))

(declare-fun d!589659 () Bool)

(assert (=> d!589659 (= (inv!29074 (tag!4398 (h!27385 rules!3198))) (= (mod (str.len (value!123994 (tag!4398 (h!27385 rules!3198)))) 2) 0))))

(assert (=> b!1933539 d!589659))

(declare-fun d!589661 () Bool)

(declare-fun res!864596 () Bool)

(declare-fun e!1235949 () Bool)

(assert (=> d!589661 (=> (not res!864596) (not e!1235949))))

(declare-fun semiInverseModEq!1573 (Int Int) Bool)

(assert (=> d!589661 (= res!864596 (semiInverseModEq!1573 (toChars!5444 (transformation!3944 (h!27385 rules!3198))) (toValue!5585 (transformation!3944 (h!27385 rules!3198)))))))

(assert (=> d!589661 (= (inv!29078 (transformation!3944 (h!27385 rules!3198))) e!1235949)))

(declare-fun b!1933621 () Bool)

(declare-fun equivClasses!1500 (Int Int) Bool)

(assert (=> b!1933621 (= e!1235949 (equivClasses!1500 (toChars!5444 (transformation!3944 (h!27385 rules!3198))) (toValue!5585 (transformation!3944 (h!27385 rules!3198)))))))

(assert (= (and d!589661 res!864596) b!1933621))

(declare-fun m!2372263 () Bool)

(assert (=> d!589661 m!2372263))

(declare-fun m!2372265 () Bool)

(assert (=> b!1933621 m!2372265))

(assert (=> b!1933539 d!589661))

(declare-fun b!1933632 () Bool)

(declare-fun e!1235958 () Bool)

(declare-fun inv!16 (TokenValue!4080) Bool)

(assert (=> b!1933632 (= e!1235958 (inv!16 (value!123995 (h!27386 tokens!598))))))

(declare-fun b!1933633 () Bool)

(declare-fun res!864599 () Bool)

(declare-fun e!1235956 () Bool)

(assert (=> b!1933633 (=> res!864599 e!1235956)))

(assert (=> b!1933633 (= res!864599 (not ((_ is IntegerValue!12242) (value!123995 (h!27386 tokens!598)))))))

(declare-fun e!1235957 () Bool)

(assert (=> b!1933633 (= e!1235957 e!1235956)))

(declare-fun b!1933634 () Bool)

(declare-fun inv!15 (TokenValue!4080) Bool)

(assert (=> b!1933634 (= e!1235956 (inv!15 (value!123995 (h!27386 tokens!598))))))

(declare-fun d!589663 () Bool)

(declare-fun c!314527 () Bool)

(assert (=> d!589663 (= c!314527 ((_ is IntegerValue!12240) (value!123995 (h!27386 tokens!598))))))

(assert (=> d!589663 (= (inv!21 (value!123995 (h!27386 tokens!598))) e!1235958)))

(declare-fun b!1933635 () Bool)

(assert (=> b!1933635 (= e!1235958 e!1235957)))

(declare-fun c!314528 () Bool)

(assert (=> b!1933635 (= c!314528 ((_ is IntegerValue!12241) (value!123995 (h!27386 tokens!598))))))

(declare-fun b!1933636 () Bool)

(declare-fun inv!17 (TokenValue!4080) Bool)

(assert (=> b!1933636 (= e!1235957 (inv!17 (value!123995 (h!27386 tokens!598))))))

(assert (= (and d!589663 c!314527) b!1933632))

(assert (= (and d!589663 (not c!314527)) b!1933635))

(assert (= (and b!1933635 c!314528) b!1933636))

(assert (= (and b!1933635 (not c!314528)) b!1933633))

(assert (= (and b!1933633 (not res!864599)) b!1933634))

(declare-fun m!2372267 () Bool)

(assert (=> b!1933632 m!2372267))

(declare-fun m!2372269 () Bool)

(assert (=> b!1933634 m!2372269))

(declare-fun m!2372271 () Bool)

(assert (=> b!1933636 m!2372271))

(assert (=> b!1933540 d!589663))

(declare-fun d!589665 () Bool)

(declare-fun lt!741202 () Bool)

(declare-fun e!1235964 () Bool)

(assert (=> d!589665 (= lt!741202 e!1235964)))

(declare-fun res!864607 () Bool)

(assert (=> d!589665 (=> (not res!864607) (not e!1235964))))

(declare-fun list!8907 (BalanceConc!14502) List!22067)

(assert (=> d!589665 (= res!864607 (= (list!8907 (_1!11771 (lex!1581 thiss!23328 rules!3198 (print!1527 thiss!23328 (singletonSeq!1928 (h!27386 tokens!598)))))) (list!8907 (singletonSeq!1928 (h!27386 tokens!598)))))))

(declare-fun e!1235963 () Bool)

(assert (=> d!589665 (= lt!741202 e!1235963)))

(declare-fun res!864608 () Bool)

(assert (=> d!589665 (=> (not res!864608) (not e!1235963))))

(declare-fun lt!741203 () tuple2!20604)

(declare-fun size!17150 (BalanceConc!14502) Int)

(assert (=> d!589665 (= res!864608 (= (size!17150 (_1!11771 lt!741203)) 1))))

(assert (=> d!589665 (= lt!741203 (lex!1581 thiss!23328 rules!3198 (print!1527 thiss!23328 (singletonSeq!1928 (h!27386 tokens!598)))))))

(assert (=> d!589665 (not (isEmpty!13564 rules!3198))))

(assert (=> d!589665 (= (rulesProduceIndividualToken!1729 thiss!23328 rules!3198 (h!27386 tokens!598)) lt!741202)))

(declare-fun b!1933643 () Bool)

(declare-fun res!864606 () Bool)

(assert (=> b!1933643 (=> (not res!864606) (not e!1235963))))

(declare-fun apply!5721 (BalanceConc!14502 Int) Token!7440)

(assert (=> b!1933643 (= res!864606 (= (apply!5721 (_1!11771 lt!741203) 0) (h!27386 tokens!598)))))

(declare-fun b!1933644 () Bool)

(declare-fun isEmpty!13568 (BalanceConc!14500) Bool)

(assert (=> b!1933644 (= e!1235963 (isEmpty!13568 (_2!11771 lt!741203)))))

(declare-fun b!1933645 () Bool)

(assert (=> b!1933645 (= e!1235964 (isEmpty!13568 (_2!11771 (lex!1581 thiss!23328 rules!3198 (print!1527 thiss!23328 (singletonSeq!1928 (h!27386 tokens!598)))))))))

(assert (= (and d!589665 res!864608) b!1933643))

(assert (= (and b!1933643 res!864606) b!1933644))

(assert (= (and d!589665 res!864607) b!1933645))

(declare-fun m!2372273 () Bool)

(assert (=> d!589665 m!2372273))

(declare-fun m!2372275 () Bool)

(assert (=> d!589665 m!2372275))

(assert (=> d!589665 m!2372185))

(declare-fun m!2372277 () Bool)

(assert (=> d!589665 m!2372277))

(declare-fun m!2372279 () Bool)

(assert (=> d!589665 m!2372279))

(assert (=> d!589665 m!2372185))

(assert (=> d!589665 m!2372273))

(assert (=> d!589665 m!2372185))

(declare-fun m!2372281 () Bool)

(assert (=> d!589665 m!2372281))

(assert (=> d!589665 m!2372173))

(declare-fun m!2372283 () Bool)

(assert (=> b!1933643 m!2372283))

(declare-fun m!2372285 () Bool)

(assert (=> b!1933644 m!2372285))

(assert (=> b!1933645 m!2372185))

(assert (=> b!1933645 m!2372185))

(assert (=> b!1933645 m!2372273))

(assert (=> b!1933645 m!2372273))

(assert (=> b!1933645 m!2372275))

(declare-fun m!2372287 () Bool)

(assert (=> b!1933645 m!2372287))

(assert (=> b!1933519 d!589665))

(declare-fun b!1933646 () Bool)

(declare-fun e!1235967 () Bool)

(assert (=> b!1933646 (= e!1235967 (inv!16 (value!123995 separatorToken!354)))))

(declare-fun b!1933647 () Bool)

(declare-fun res!864609 () Bool)

(declare-fun e!1235965 () Bool)

(assert (=> b!1933647 (=> res!864609 e!1235965)))

(assert (=> b!1933647 (= res!864609 (not ((_ is IntegerValue!12242) (value!123995 separatorToken!354))))))

(declare-fun e!1235966 () Bool)

(assert (=> b!1933647 (= e!1235966 e!1235965)))

(declare-fun b!1933648 () Bool)

(assert (=> b!1933648 (= e!1235965 (inv!15 (value!123995 separatorToken!354)))))

(declare-fun d!589667 () Bool)

(declare-fun c!314529 () Bool)

(assert (=> d!589667 (= c!314529 ((_ is IntegerValue!12240) (value!123995 separatorToken!354)))))

(assert (=> d!589667 (= (inv!21 (value!123995 separatorToken!354)) e!1235967)))

(declare-fun b!1933649 () Bool)

(assert (=> b!1933649 (= e!1235967 e!1235966)))

(declare-fun c!314530 () Bool)

(assert (=> b!1933649 (= c!314530 ((_ is IntegerValue!12241) (value!123995 separatorToken!354)))))

(declare-fun b!1933650 () Bool)

(assert (=> b!1933650 (= e!1235966 (inv!17 (value!123995 separatorToken!354)))))

(assert (= (and d!589667 c!314529) b!1933646))

(assert (= (and d!589667 (not c!314529)) b!1933649))

(assert (= (and b!1933649 c!314530) b!1933650))

(assert (= (and b!1933649 (not c!314530)) b!1933647))

(assert (= (and b!1933647 (not res!864609)) b!1933648))

(declare-fun m!2372289 () Bool)

(assert (=> b!1933646 m!2372289))

(declare-fun m!2372291 () Bool)

(assert (=> b!1933648 m!2372291))

(declare-fun m!2372293 () Bool)

(assert (=> b!1933650 m!2372293))

(assert (=> b!1933526 d!589667))

(declare-fun d!589669 () Bool)

(declare-fun lt!741219 () BalanceConc!14500)

(declare-fun printListTailRec!460 (LexerInterface!3557 List!22067 List!22064) List!22064)

(declare-fun dropList!791 (BalanceConc!14502 Int) List!22067)

(assert (=> d!589669 (= (list!8905 lt!741219) (printListTailRec!460 thiss!23328 (dropList!791 lt!741165 0) (list!8905 (BalanceConc!14501 Empty!7342))))))

(declare-fun e!1235972 () BalanceConc!14500)

(assert (=> d!589669 (= lt!741219 e!1235972)))

(declare-fun c!314533 () Bool)

(assert (=> d!589669 (= c!314533 (>= 0 (size!17150 lt!741165)))))

(declare-fun e!1235973 () Bool)

(assert (=> d!589669 e!1235973))

(declare-fun res!864612 () Bool)

(assert (=> d!589669 (=> (not res!864612) (not e!1235973))))

(assert (=> d!589669 (= res!864612 (>= 0 0))))

(assert (=> d!589669 (= (printTailRec!1033 thiss!23328 lt!741165 0 (BalanceConc!14501 Empty!7342)) lt!741219)))

(declare-fun b!1933657 () Bool)

(assert (=> b!1933657 (= e!1235973 (<= 0 (size!17150 lt!741165)))))

(declare-fun b!1933658 () Bool)

(assert (=> b!1933658 (= e!1235972 (BalanceConc!14501 Empty!7342))))

(declare-fun b!1933659 () Bool)

(declare-fun ++!5906 (BalanceConc!14500 BalanceConc!14500) BalanceConc!14500)

(assert (=> b!1933659 (= e!1235972 (printTailRec!1033 thiss!23328 lt!741165 (+ 0 1) (++!5906 (BalanceConc!14501 Empty!7342) (charsOf!2484 (apply!5721 lt!741165 0)))))))

(declare-fun lt!741223 () List!22067)

(assert (=> b!1933659 (= lt!741223 (list!8907 lt!741165))))

(declare-fun lt!741224 () Unit!36346)

(declare-fun lemmaDropApply!715 (List!22067 Int) Unit!36346)

(assert (=> b!1933659 (= lt!741224 (lemmaDropApply!715 lt!741223 0))))

(declare-fun head!4510 (List!22067) Token!7440)

(declare-fun drop!1082 (List!22067 Int) List!22067)

(declare-fun apply!5722 (List!22067 Int) Token!7440)

(assert (=> b!1933659 (= (head!4510 (drop!1082 lt!741223 0)) (apply!5722 lt!741223 0))))

(declare-fun lt!741218 () Unit!36346)

(assert (=> b!1933659 (= lt!741218 lt!741224)))

(declare-fun lt!741221 () List!22067)

(assert (=> b!1933659 (= lt!741221 (list!8907 lt!741165))))

(declare-fun lt!741220 () Unit!36346)

(declare-fun lemmaDropTail!691 (List!22067 Int) Unit!36346)

(assert (=> b!1933659 (= lt!741220 (lemmaDropTail!691 lt!741221 0))))

(declare-fun tail!2996 (List!22067) List!22067)

(assert (=> b!1933659 (= (tail!2996 (drop!1082 lt!741221 0)) (drop!1082 lt!741221 (+ 0 1)))))

(declare-fun lt!741222 () Unit!36346)

(assert (=> b!1933659 (= lt!741222 lt!741220)))

(assert (= (and d!589669 res!864612) b!1933657))

(assert (= (and d!589669 c!314533) b!1933658))

(assert (= (and d!589669 (not c!314533)) b!1933659))

(declare-fun m!2372295 () Bool)

(assert (=> d!589669 m!2372295))

(declare-fun m!2372297 () Bool)

(assert (=> d!589669 m!2372297))

(declare-fun m!2372299 () Bool)

(assert (=> d!589669 m!2372299))

(declare-fun m!2372301 () Bool)

(assert (=> d!589669 m!2372301))

(assert (=> d!589669 m!2372297))

(declare-fun m!2372303 () Bool)

(assert (=> d!589669 m!2372303))

(assert (=> d!589669 m!2372301))

(assert (=> b!1933657 m!2372295))

(declare-fun m!2372305 () Bool)

(assert (=> b!1933659 m!2372305))

(declare-fun m!2372307 () Bool)

(assert (=> b!1933659 m!2372307))

(declare-fun m!2372309 () Bool)

(assert (=> b!1933659 m!2372309))

(declare-fun m!2372311 () Bool)

(assert (=> b!1933659 m!2372311))

(declare-fun m!2372313 () Bool)

(assert (=> b!1933659 m!2372313))

(assert (=> b!1933659 m!2372311))

(declare-fun m!2372315 () Bool)

(assert (=> b!1933659 m!2372315))

(assert (=> b!1933659 m!2372305))

(declare-fun m!2372317 () Bool)

(assert (=> b!1933659 m!2372317))

(declare-fun m!2372319 () Bool)

(assert (=> b!1933659 m!2372319))

(declare-fun m!2372321 () Bool)

(assert (=> b!1933659 m!2372321))

(declare-fun m!2372323 () Bool)

(assert (=> b!1933659 m!2372323))

(declare-fun m!2372325 () Bool)

(assert (=> b!1933659 m!2372325))

(assert (=> b!1933659 m!2372325))

(declare-fun m!2372327 () Bool)

(assert (=> b!1933659 m!2372327))

(declare-fun m!2372329 () Bool)

(assert (=> b!1933659 m!2372329))

(assert (=> b!1933659 m!2372327))

(assert (=> b!1933659 m!2372321))

(assert (=> b!1933537 d!589669))

(declare-fun d!589671 () Bool)

(declare-fun c!314536 () Bool)

(assert (=> d!589671 (= c!314536 ((_ is Cons!21985) (Cons!21985 (h!27386 tokens!598) Nil!21985)))))

(declare-fun e!1235976 () List!22064)

(assert (=> d!589671 (= (printList!1092 thiss!23328 (Cons!21985 (h!27386 tokens!598) Nil!21985)) e!1235976)))

(declare-fun b!1933664 () Bool)

(assert (=> b!1933664 (= e!1235976 (++!5905 (list!8905 (charsOf!2484 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985)))) (printList!1092 thiss!23328 (t!180606 (Cons!21985 (h!27386 tokens!598) Nil!21985)))))))

(declare-fun b!1933665 () Bool)

(assert (=> b!1933665 (= e!1235976 Nil!21982)))

(assert (= (and d!589671 c!314536) b!1933664))

(assert (= (and d!589671 (not c!314536)) b!1933665))

(declare-fun m!2372331 () Bool)

(assert (=> b!1933664 m!2372331))

(assert (=> b!1933664 m!2372331))

(declare-fun m!2372333 () Bool)

(assert (=> b!1933664 m!2372333))

(declare-fun m!2372335 () Bool)

(assert (=> b!1933664 m!2372335))

(assert (=> b!1933664 m!2372333))

(assert (=> b!1933664 m!2372335))

(declare-fun m!2372337 () Bool)

(assert (=> b!1933664 m!2372337))

(assert (=> b!1933537 d!589671))

(declare-fun d!589673 () Bool)

(declare-fun e!1235979 () Bool)

(assert (=> d!589673 e!1235979))

(declare-fun res!864615 () Bool)

(assert (=> d!589673 (=> (not res!864615) (not e!1235979))))

(declare-fun lt!741227 () BalanceConc!14502)

(assert (=> d!589673 (= res!864615 (= (list!8907 lt!741227) (Cons!21985 (h!27386 tokens!598) Nil!21985)))))

(declare-fun singleton!855 (Token!7440) BalanceConc!14502)

(assert (=> d!589673 (= lt!741227 (singleton!855 (h!27386 tokens!598)))))

(assert (=> d!589673 (= (singletonSeq!1928 (h!27386 tokens!598)) lt!741227)))

(declare-fun b!1933668 () Bool)

(declare-fun isBalanced!2270 (Conc!7343) Bool)

(assert (=> b!1933668 (= e!1235979 (isBalanced!2270 (c!314510 lt!741227)))))

(assert (= (and d!589673 res!864615) b!1933668))

(declare-fun m!2372339 () Bool)

(assert (=> d!589673 m!2372339))

(declare-fun m!2372341 () Bool)

(assert (=> d!589673 m!2372341))

(declare-fun m!2372343 () Bool)

(assert (=> b!1933668 m!2372343))

(assert (=> b!1933537 d!589673))

(declare-fun d!589675 () Bool)

(declare-fun lt!741230 () BalanceConc!14500)

(assert (=> d!589675 (= (list!8905 lt!741230) (printList!1092 thiss!23328 (list!8907 lt!741165)))))

(assert (=> d!589675 (= lt!741230 (printTailRec!1033 thiss!23328 lt!741165 0 (BalanceConc!14501 Empty!7342)))))

(assert (=> d!589675 (= (print!1527 thiss!23328 lt!741165) lt!741230)))

(declare-fun bs!415135 () Bool)

(assert (= bs!415135 d!589675))

(declare-fun m!2372345 () Bool)

(assert (=> bs!415135 m!2372345))

(assert (=> bs!415135 m!2372315))

(assert (=> bs!415135 m!2372315))

(declare-fun m!2372347 () Bool)

(assert (=> bs!415135 m!2372347))

(assert (=> bs!415135 m!2372181))

(assert (=> b!1933537 d!589675))

(declare-fun d!589677 () Bool)

(declare-fun list!8908 (Conc!7342) List!22064)

(assert (=> d!589677 (= (list!8905 lt!741164) (list!8908 (c!314508 lt!741164)))))

(declare-fun bs!415136 () Bool)

(assert (= bs!415136 d!589677))

(declare-fun m!2372349 () Bool)

(assert (=> bs!415136 m!2372349))

(assert (=> b!1933537 d!589677))

(declare-fun e!1235984 () List!22064)

(declare-fun b!1933677 () Bool)

(assert (=> b!1933677 (= e!1235984 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))))

(declare-fun b!1933679 () Bool)

(declare-fun res!864621 () Bool)

(declare-fun e!1235985 () Bool)

(assert (=> b!1933679 (=> (not res!864621) (not e!1235985))))

(declare-fun lt!741233 () List!22064)

(declare-fun size!17151 (List!22064) Int)

(assert (=> b!1933679 (= res!864621 (= (size!17151 lt!741233) (+ (size!17151 lt!741158) (size!17151 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)))))))

(declare-fun d!589679 () Bool)

(assert (=> d!589679 e!1235985))

(declare-fun res!864620 () Bool)

(assert (=> d!589679 (=> (not res!864620) (not e!1235985))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3187 (List!22064) (InoxSet C!10884))

(assert (=> d!589679 (= res!864620 (= (content!3187 lt!741233) ((_ map or) (content!3187 lt!741158) (content!3187 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)))))))

(assert (=> d!589679 (= lt!741233 e!1235984)))

(declare-fun c!314539 () Bool)

(assert (=> d!589679 (= c!314539 ((_ is Nil!21982) lt!741158))))

(assert (=> d!589679 (= (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)) lt!741233)))

(declare-fun b!1933678 () Bool)

(assert (=> b!1933678 (= e!1235984 (Cons!21982 (h!27383 lt!741158) (++!5905 (t!180603 lt!741158) (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))))))

(declare-fun b!1933680 () Bool)

(assert (=> b!1933680 (= e!1235985 (or (not (= (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354) Nil!21982)) (= lt!741233 lt!741158)))))

(assert (= (and d!589679 c!314539) b!1933677))

(assert (= (and d!589679 (not c!314539)) b!1933678))

(assert (= (and d!589679 res!864620) b!1933679))

(assert (= (and b!1933679 res!864621) b!1933680))

(declare-fun m!2372351 () Bool)

(assert (=> b!1933679 m!2372351))

(declare-fun m!2372353 () Bool)

(assert (=> b!1933679 m!2372353))

(assert (=> b!1933679 m!2372133))

(declare-fun m!2372355 () Bool)

(assert (=> b!1933679 m!2372355))

(declare-fun m!2372357 () Bool)

(assert (=> d!589679 m!2372357))

(declare-fun m!2372359 () Bool)

(assert (=> d!589679 m!2372359))

(assert (=> d!589679 m!2372133))

(declare-fun m!2372361 () Bool)

(assert (=> d!589679 m!2372361))

(assert (=> b!1933678 m!2372133))

(declare-fun m!2372363 () Bool)

(assert (=> b!1933678 m!2372363))

(assert (=> b!1933536 d!589679))

(declare-fun d!589681 () Bool)

(assert (=> d!589681 (= (list!8905 lt!741168) (list!8908 (c!314508 lt!741168)))))

(declare-fun bs!415137 () Bool)

(assert (= bs!415137 d!589681))

(declare-fun m!2372365 () Bool)

(assert (=> bs!415137 m!2372365))

(assert (=> b!1933536 d!589681))

(declare-fun d!589683 () Bool)

(declare-fun e!1235997 () Bool)

(assert (=> d!589683 e!1235997))

(declare-fun res!864628 () Bool)

(assert (=> d!589683 (=> (not res!864628) (not e!1235997))))

(assert (=> d!589683 (= res!864628 (isDefined!3857 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 (h!27386 tokens!598))))))))

(declare-fun lt!741237 () Unit!36346)

(declare-fun choose!12012 (LexerInterface!3557 List!22066 List!22064 Token!7440) Unit!36346)

(assert (=> d!589683 (= lt!741237 (choose!12012 thiss!23328 rules!3198 lt!741158 (h!27386 tokens!598)))))

(assert (=> d!589683 (rulesInvariant!3164 thiss!23328 rules!3198)))

(assert (=> d!589683 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!765 thiss!23328 rules!3198 lt!741158 (h!27386 tokens!598)) lt!741237)))

(declare-fun b!1933694 () Bool)

(declare-fun res!864629 () Bool)

(assert (=> b!1933694 (=> (not res!864629) (not e!1235997))))

(assert (=> b!1933694 (= res!864629 (matchR!2637 (regex!3944 (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 (h!27386 tokens!598)))))) (list!8905 (charsOf!2484 (h!27386 tokens!598)))))))

(declare-fun b!1933695 () Bool)

(assert (=> b!1933695 (= e!1235997 (= (rule!6153 (h!27386 tokens!598)) (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 (h!27386 tokens!598)))))))))

(assert (= (and d!589683 res!864628) b!1933694))

(assert (= (and b!1933694 res!864629) b!1933695))

(assert (=> d!589683 m!2372149))

(assert (=> d!589683 m!2372149))

(declare-fun m!2372379 () Bool)

(assert (=> d!589683 m!2372379))

(declare-fun m!2372381 () Bool)

(assert (=> d!589683 m!2372381))

(assert (=> d!589683 m!2372113))

(assert (=> b!1933694 m!2372149))

(declare-fun m!2372383 () Bool)

(assert (=> b!1933694 m!2372383))

(declare-fun m!2372385 () Bool)

(assert (=> b!1933694 m!2372385))

(assert (=> b!1933694 m!2372161))

(assert (=> b!1933694 m!2372161))

(assert (=> b!1933694 m!2372383))

(assert (=> b!1933694 m!2372149))

(declare-fun m!2372387 () Bool)

(assert (=> b!1933694 m!2372387))

(assert (=> b!1933695 m!2372149))

(assert (=> b!1933695 m!2372149))

(assert (=> b!1933695 m!2372387))

(assert (=> b!1933536 d!589683))

(declare-fun b!1933836 () Bool)

(declare-fun e!1236084 () Bool)

(assert (=> b!1933836 (= e!1236084 true)))

(declare-fun d!589687 () Bool)

(assert (=> d!589687 e!1236084))

(assert (= d!589687 b!1933836))

(declare-fun order!13847 () Int)

(declare-fun order!13849 () Int)

(declare-fun lambda!75383 () Int)

(declare-fun dynLambda!10697 (Int Int) Int)

(declare-fun dynLambda!10698 (Int Int) Int)

(assert (=> b!1933836 (< (dynLambda!10697 order!13847 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) (dynLambda!10698 order!13849 lambda!75383))))

(declare-fun order!13851 () Int)

(declare-fun dynLambda!10699 (Int Int) Int)

(assert (=> b!1933836 (< (dynLambda!10699 order!13851 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) (dynLambda!10698 order!13849 lambda!75383))))

(declare-fun dynLambda!10700 (Int BalanceConc!14500) TokenValue!4080)

(assert (=> d!589687 (= (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (seqFromList!2798 (originalCharacters!4751 (h!27386 tokens!598)))))))

(declare-fun lt!741286 () Unit!36346)

(declare-fun Forall2of!209 (Int BalanceConc!14500 BalanceConc!14500) Unit!36346)

(assert (=> d!589687 (= lt!741286 (Forall2of!209 lambda!75383 lt!741168 (seqFromList!2798 (originalCharacters!4751 (h!27386 tokens!598)))))))

(assert (=> d!589687 (= (list!8905 lt!741168) (list!8905 (seqFromList!2798 (originalCharacters!4751 (h!27386 tokens!598)))))))

(assert (=> d!589687 (= (lemmaEqSameImage!630 (transformation!3944 (rule!6153 (h!27386 tokens!598))) lt!741168 (seqFromList!2798 (originalCharacters!4751 (h!27386 tokens!598)))) lt!741286)))

(declare-fun b_lambda!64317 () Bool)

(assert (=> (not b_lambda!64317) (not d!589687)))

(declare-fun t!180642 () Bool)

(declare-fun tb!118915 () Bool)

(assert (=> (and b!1933531 (= (toValue!5585 (transformation!3944 (rule!6153 separatorToken!354))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180642) tb!118915))

(declare-fun result!143590 () Bool)

(assert (=> tb!118915 (= result!143590 (inv!21 (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168)))))

(declare-fun m!2372555 () Bool)

(assert (=> tb!118915 m!2372555))

(assert (=> d!589687 t!180642))

(declare-fun b_and!152313 () Bool)

(assert (= b_and!152259 (and (=> t!180642 result!143590) b_and!152313)))

(declare-fun t!180644 () Bool)

(declare-fun tb!118917 () Bool)

(assert (=> (and b!1933530 (= (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180644) tb!118917))

(declare-fun result!143594 () Bool)

(assert (= result!143594 result!143590))

(assert (=> d!589687 t!180644))

(declare-fun b_and!152315 () Bool)

(assert (= b_and!152263 (and (=> t!180644 result!143594) b_and!152315)))

(declare-fun tb!118919 () Bool)

(declare-fun t!180646 () Bool)

(assert (=> (and b!1933518 (= (toValue!5585 (transformation!3944 (h!27385 rules!3198))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180646) tb!118919))

(declare-fun result!143596 () Bool)

(assert (= result!143596 result!143590))

(assert (=> d!589687 t!180646))

(declare-fun b_and!152317 () Bool)

(assert (= b_and!152267 (and (=> t!180646 result!143596) b_and!152317)))

(declare-fun b_lambda!64319 () Bool)

(assert (=> (not b_lambda!64319) (not d!589687)))

(declare-fun t!180648 () Bool)

(declare-fun tb!118921 () Bool)

(assert (=> (and b!1933531 (= (toValue!5585 (transformation!3944 (rule!6153 separatorToken!354))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180648) tb!118921))

(declare-fun result!143598 () Bool)

(assert (=> tb!118921 (= result!143598 (inv!21 (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (seqFromList!2798 (originalCharacters!4751 (h!27386 tokens!598))))))))

(declare-fun m!2372557 () Bool)

(assert (=> tb!118921 m!2372557))

(assert (=> d!589687 t!180648))

(declare-fun b_and!152319 () Bool)

(assert (= b_and!152313 (and (=> t!180648 result!143598) b_and!152319)))

(declare-fun t!180650 () Bool)

(declare-fun tb!118923 () Bool)

(assert (=> (and b!1933530 (= (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180650) tb!118923))

(declare-fun result!143600 () Bool)

(assert (= result!143600 result!143598))

(assert (=> d!589687 t!180650))

(declare-fun b_and!152321 () Bool)

(assert (= b_and!152315 (and (=> t!180650 result!143600) b_and!152321)))

(declare-fun tb!118925 () Bool)

(declare-fun t!180652 () Bool)

(assert (=> (and b!1933518 (= (toValue!5585 (transformation!3944 (h!27385 rules!3198))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180652) tb!118925))

(declare-fun result!143602 () Bool)

(assert (= result!143602 result!143598))

(assert (=> d!589687 t!180652))

(declare-fun b_and!152323 () Bool)

(assert (= b_and!152317 (and (=> t!180652 result!143602) b_and!152323)))

(assert (=> d!589687 m!2372131))

(declare-fun m!2372559 () Bool)

(assert (=> d!589687 m!2372559))

(declare-fun m!2372561 () Bool)

(assert (=> d!589687 m!2372561))

(assert (=> d!589687 m!2372131))

(declare-fun m!2372563 () Bool)

(assert (=> d!589687 m!2372563))

(assert (=> d!589687 m!2372153))

(assert (=> d!589687 m!2372131))

(declare-fun m!2372565 () Bool)

(assert (=> d!589687 m!2372565))

(assert (=> b!1933536 d!589687))

(declare-fun d!589733 () Bool)

(assert (=> d!589733 (= (list!8905 (charsOf!2484 separatorToken!354)) (list!8908 (c!314508 (charsOf!2484 separatorToken!354))))))

(declare-fun bs!415145 () Bool)

(assert (= bs!415145 d!589733))

(declare-fun m!2372567 () Bool)

(assert (=> bs!415145 m!2372567))

(assert (=> b!1933536 d!589733))

(declare-fun d!589735 () Bool)

(declare-fun lt!741289 () BalanceConc!14500)

(assert (=> d!589735 (= (list!8905 lt!741289) (originalCharacters!4751 separatorToken!354))))

(declare-fun dynLambda!10701 (Int TokenValue!4080) BalanceConc!14500)

(assert (=> d!589735 (= lt!741289 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (value!123995 separatorToken!354)))))

(assert (=> d!589735 (= (charsOf!2484 separatorToken!354) lt!741289)))

(declare-fun b_lambda!64321 () Bool)

(assert (=> (not b_lambda!64321) (not d!589735)))

(declare-fun t!180654 () Bool)

(declare-fun tb!118927 () Bool)

(assert (=> (and b!1933531 (= (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354)))) t!180654) tb!118927))

(declare-fun b!1933843 () Bool)

(declare-fun e!1236091 () Bool)

(declare-fun tp!551812 () Bool)

(declare-fun inv!29081 (Conc!7342) Bool)

(assert (=> b!1933843 (= e!1236091 (and (inv!29081 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (value!123995 separatorToken!354)))) tp!551812))))

(declare-fun result!143604 () Bool)

(declare-fun inv!29082 (BalanceConc!14500) Bool)

(assert (=> tb!118927 (= result!143604 (and (inv!29082 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (value!123995 separatorToken!354))) e!1236091))))

(assert (= tb!118927 b!1933843))

(declare-fun m!2372569 () Bool)

(assert (=> b!1933843 m!2372569))

(declare-fun m!2372571 () Bool)

(assert (=> tb!118927 m!2372571))

(assert (=> d!589735 t!180654))

(declare-fun b_and!152325 () Bool)

(assert (= b_and!152261 (and (=> t!180654 result!143604) b_and!152325)))

(declare-fun tb!118929 () Bool)

(declare-fun t!180656 () Bool)

(assert (=> (and b!1933530 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354)))) t!180656) tb!118929))

(declare-fun result!143608 () Bool)

(assert (= result!143608 result!143604))

(assert (=> d!589735 t!180656))

(declare-fun b_and!152327 () Bool)

(assert (= b_and!152265 (and (=> t!180656 result!143608) b_and!152327)))

(declare-fun tb!118931 () Bool)

(declare-fun t!180658 () Bool)

(assert (=> (and b!1933518 (= (toChars!5444 (transformation!3944 (h!27385 rules!3198))) (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354)))) t!180658) tb!118931))

(declare-fun result!143610 () Bool)

(assert (= result!143610 result!143604))

(assert (=> d!589735 t!180658))

(declare-fun b_and!152329 () Bool)

(assert (= b_and!152269 (and (=> t!180658 result!143610) b_and!152329)))

(declare-fun m!2372573 () Bool)

(assert (=> d!589735 m!2372573))

(declare-fun m!2372575 () Bool)

(assert (=> d!589735 m!2372575))

(assert (=> b!1933536 d!589735))

(declare-fun b!1933868 () Bool)

(declare-fun e!1236104 () Bool)

(declare-fun e!1236102 () Bool)

(assert (=> b!1933868 (= e!1236104 e!1236102)))

(declare-fun res!864700 () Bool)

(assert (=> b!1933868 (=> (not res!864700) (not e!1236102))))

(declare-fun lt!741305 () Option!4566)

(assert (=> b!1933868 (= res!864700 (isDefined!3858 lt!741305))))

(declare-fun bm!118944 () Bool)

(declare-fun call!118949 () Option!4566)

(declare-fun maxPrefixOneRule!1231 (LexerInterface!3557 Rule!7688 List!22064) Option!4566)

(assert (=> bm!118944 (= call!118949 (maxPrefixOneRule!1231 thiss!23328 (h!27385 rules!3198) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))))))

(declare-fun b!1933869 () Bool)

(declare-fun res!864701 () Bool)

(assert (=> b!1933869 (=> (not res!864701) (not e!1236102))))

(assert (=> b!1933869 (= res!864701 (< (size!17151 (_2!11772 (get!6933 lt!741305))) (size!17151 (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)))))))

(declare-fun b!1933871 () Bool)

(declare-fun res!864699 () Bool)

(assert (=> b!1933871 (=> (not res!864699) (not e!1236102))))

(declare-fun apply!5725 (TokenValueInjection!7744 BalanceConc!14500) TokenValue!4080)

(assert (=> b!1933871 (= res!864699 (= (value!123995 (_1!11772 (get!6933 lt!741305))) (apply!5725 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741305)))) (seqFromList!2798 (originalCharacters!4751 (_1!11772 (get!6933 lt!741305)))))))))

(declare-fun b!1933872 () Bool)

(declare-fun res!864698 () Bool)

(assert (=> b!1933872 (=> (not res!864698) (not e!1236102))))

(assert (=> b!1933872 (= res!864698 (= (++!5905 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741305)))) (_2!11772 (get!6933 lt!741305))) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))))))

(declare-fun b!1933873 () Bool)

(declare-fun contains!3983 (List!22066 Rule!7688) Bool)

(assert (=> b!1933873 (= e!1236102 (contains!3983 rules!3198 (rule!6153 (_1!11772 (get!6933 lt!741305)))))))

(declare-fun b!1933874 () Bool)

(declare-fun res!864702 () Bool)

(assert (=> b!1933874 (=> (not res!864702) (not e!1236102))))

(assert (=> b!1933874 (= res!864702 (matchR!2637 (regex!3944 (rule!6153 (_1!11772 (get!6933 lt!741305)))) (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741305))))))))

(declare-fun d!589737 () Bool)

(assert (=> d!589737 e!1236104))

(declare-fun res!864697 () Bool)

(assert (=> d!589737 (=> res!864697 e!1236104)))

(declare-fun isEmpty!13571 (Option!4566) Bool)

(assert (=> d!589737 (= res!864697 (isEmpty!13571 lt!741305))))

(declare-fun e!1236103 () Option!4566)

(assert (=> d!589737 (= lt!741305 e!1236103)))

(declare-fun c!314575 () Bool)

(assert (=> d!589737 (= c!314575 (and ((_ is Cons!21984) rules!3198) ((_ is Nil!21984) (t!180605 rules!3198))))))

(declare-fun lt!741308 () Unit!36346)

(declare-fun lt!741304 () Unit!36346)

(assert (=> d!589737 (= lt!741308 lt!741304)))

(declare-fun isPrefix!1949 (List!22064 List!22064) Bool)

(assert (=> d!589737 (isPrefix!1949 (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)))))

(declare-fun lemmaIsPrefixRefl!1267 (List!22064 List!22064) Unit!36346)

(assert (=> d!589737 (= lt!741304 (lemmaIsPrefixRefl!1267 (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))))))

(declare-fun rulesValidInductive!1348 (LexerInterface!3557 List!22066) Bool)

(assert (=> d!589737 (rulesValidInductive!1348 thiss!23328 rules!3198)))

(assert (=> d!589737 (= (maxPrefix!1995 thiss!23328 rules!3198 (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))) lt!741305)))

(declare-fun b!1933870 () Bool)

(declare-fun res!864703 () Bool)

(assert (=> b!1933870 (=> (not res!864703) (not e!1236102))))

(assert (=> b!1933870 (= res!864703 (= (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741305)))) (originalCharacters!4751 (_1!11772 (get!6933 lt!741305)))))))

(declare-fun b!1933875 () Bool)

(assert (=> b!1933875 (= e!1236103 call!118949)))

(declare-fun b!1933876 () Bool)

(declare-fun lt!741306 () Option!4566)

(declare-fun lt!741307 () Option!4566)

(assert (=> b!1933876 (= e!1236103 (ite (and ((_ is None!4565) lt!741306) ((_ is None!4565) lt!741307)) None!4565 (ite ((_ is None!4565) lt!741307) lt!741306 (ite ((_ is None!4565) lt!741306) lt!741307 (ite (>= (size!17148 (_1!11772 (v!26680 lt!741306))) (size!17148 (_1!11772 (v!26680 lt!741307)))) lt!741306 lt!741307)))))))

(assert (=> b!1933876 (= lt!741306 call!118949)))

(assert (=> b!1933876 (= lt!741307 (maxPrefix!1995 thiss!23328 (t!180605 rules!3198) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))))))

(assert (= (and d!589737 c!314575) b!1933875))

(assert (= (and d!589737 (not c!314575)) b!1933876))

(assert (= (or b!1933875 b!1933876) bm!118944))

(assert (= (and d!589737 (not res!864697)) b!1933868))

(assert (= (and b!1933868 res!864700) b!1933870))

(assert (= (and b!1933870 res!864703) b!1933869))

(assert (= (and b!1933869 res!864701) b!1933872))

(assert (= (and b!1933872 res!864698) b!1933871))

(assert (= (and b!1933871 res!864699) b!1933874))

(assert (= (and b!1933874 res!864702) b!1933873))

(declare-fun m!2372593 () Bool)

(assert (=> b!1933874 m!2372593))

(declare-fun m!2372595 () Bool)

(assert (=> b!1933874 m!2372595))

(assert (=> b!1933874 m!2372595))

(declare-fun m!2372599 () Bool)

(assert (=> b!1933874 m!2372599))

(assert (=> b!1933874 m!2372599))

(declare-fun m!2372601 () Bool)

(assert (=> b!1933874 m!2372601))

(assert (=> b!1933870 m!2372593))

(assert (=> b!1933870 m!2372595))

(assert (=> b!1933870 m!2372595))

(assert (=> b!1933870 m!2372599))

(declare-fun m!2372603 () Bool)

(assert (=> d!589737 m!2372603))

(assert (=> d!589737 m!2372135))

(assert (=> d!589737 m!2372135))

(declare-fun m!2372605 () Bool)

(assert (=> d!589737 m!2372605))

(assert (=> d!589737 m!2372135))

(assert (=> d!589737 m!2372135))

(declare-fun m!2372607 () Bool)

(assert (=> d!589737 m!2372607))

(declare-fun m!2372609 () Bool)

(assert (=> d!589737 m!2372609))

(assert (=> b!1933876 m!2372135))

(declare-fun m!2372611 () Bool)

(assert (=> b!1933876 m!2372611))

(assert (=> b!1933871 m!2372593))

(declare-fun m!2372613 () Bool)

(assert (=> b!1933871 m!2372613))

(assert (=> b!1933871 m!2372613))

(declare-fun m!2372615 () Bool)

(assert (=> b!1933871 m!2372615))

(declare-fun m!2372617 () Bool)

(assert (=> b!1933868 m!2372617))

(assert (=> bm!118944 m!2372135))

(declare-fun m!2372619 () Bool)

(assert (=> bm!118944 m!2372619))

(assert (=> b!1933873 m!2372593))

(declare-fun m!2372621 () Bool)

(assert (=> b!1933873 m!2372621))

(assert (=> b!1933872 m!2372593))

(assert (=> b!1933872 m!2372595))

(assert (=> b!1933872 m!2372595))

(assert (=> b!1933872 m!2372599))

(assert (=> b!1933872 m!2372599))

(declare-fun m!2372623 () Bool)

(assert (=> b!1933872 m!2372623))

(assert (=> b!1933869 m!2372593))

(declare-fun m!2372625 () Bool)

(assert (=> b!1933869 m!2372625))

(assert (=> b!1933869 m!2372135))

(declare-fun m!2372627 () Bool)

(assert (=> b!1933869 m!2372627))

(assert (=> b!1933536 d!589737))

(declare-fun b!1933898 () Bool)

(declare-fun e!1236118 () Option!4565)

(assert (=> b!1933898 (= e!1236118 None!4564)))

(declare-fun d!589741 () Bool)

(declare-fun e!1236119 () Bool)

(assert (=> d!589741 e!1236119))

(declare-fun res!864712 () Bool)

(assert (=> d!589741 (=> res!864712 e!1236119)))

(declare-fun lt!741317 () Option!4565)

(declare-fun isEmpty!13574 (Option!4565) Bool)

(assert (=> d!589741 (= res!864712 (isEmpty!13574 lt!741317))))

(declare-fun e!1236120 () Option!4565)

(assert (=> d!589741 (= lt!741317 e!1236120)))

(declare-fun c!314583 () Bool)

(assert (=> d!589741 (= c!314583 (and ((_ is Cons!21984) rules!3198) (= (tag!4398 (h!27385 rules!3198)) (tag!4398 (rule!6153 separatorToken!354)))))))

(assert (=> d!589741 (rulesInvariant!3164 thiss!23328 rules!3198)))

(assert (=> d!589741 (= (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 separatorToken!354))) lt!741317)))

(declare-fun b!1933899 () Bool)

(assert (=> b!1933899 (= e!1236120 (Some!4564 (h!27385 rules!3198)))))

(declare-fun b!1933900 () Bool)

(declare-fun lt!741318 () Unit!36346)

(declare-fun lt!741319 () Unit!36346)

(assert (=> b!1933900 (= lt!741318 lt!741319)))

(assert (=> b!1933900 (rulesInvariant!3164 thiss!23328 (t!180605 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!278 (LexerInterface!3557 Rule!7688 List!22066) Unit!36346)

(assert (=> b!1933900 (= lt!741319 (lemmaInvariantOnRulesThenOnTail!278 thiss!23328 (h!27385 rules!3198) (t!180605 rules!3198)))))

(assert (=> b!1933900 (= e!1236118 (getRuleFromTag!765 thiss!23328 (t!180605 rules!3198) (tag!4398 (rule!6153 separatorToken!354))))))

(declare-fun b!1933901 () Bool)

(declare-fun e!1236121 () Bool)

(assert (=> b!1933901 (= e!1236121 (= (tag!4398 (get!6932 lt!741317)) (tag!4398 (rule!6153 separatorToken!354))))))

(declare-fun b!1933902 () Bool)

(assert (=> b!1933902 (= e!1236119 e!1236121)))

(declare-fun res!864711 () Bool)

(assert (=> b!1933902 (=> (not res!864711) (not e!1236121))))

(assert (=> b!1933902 (= res!864711 (contains!3983 rules!3198 (get!6932 lt!741317)))))

(declare-fun b!1933903 () Bool)

(assert (=> b!1933903 (= e!1236120 e!1236118)))

(declare-fun c!314584 () Bool)

(assert (=> b!1933903 (= c!314584 (and ((_ is Cons!21984) rules!3198) (not (= (tag!4398 (h!27385 rules!3198)) (tag!4398 (rule!6153 separatorToken!354))))))))

(assert (= (and d!589741 c!314583) b!1933899))

(assert (= (and d!589741 (not c!314583)) b!1933903))

(assert (= (and b!1933903 c!314584) b!1933900))

(assert (= (and b!1933903 (not c!314584)) b!1933898))

(assert (= (and d!589741 (not res!864712)) b!1933902))

(assert (= (and b!1933902 res!864711) b!1933901))

(declare-fun m!2372637 () Bool)

(assert (=> d!589741 m!2372637))

(assert (=> d!589741 m!2372113))

(declare-fun m!2372639 () Bool)

(assert (=> b!1933900 m!2372639))

(declare-fun m!2372641 () Bool)

(assert (=> b!1933900 m!2372641))

(declare-fun m!2372643 () Bool)

(assert (=> b!1933900 m!2372643))

(declare-fun m!2372645 () Bool)

(assert (=> b!1933901 m!2372645))

(assert (=> b!1933902 m!2372645))

(assert (=> b!1933902 m!2372645))

(declare-fun m!2372647 () Bool)

(assert (=> b!1933902 m!2372647))

(assert (=> b!1933536 d!589741))

(declare-fun b!1933904 () Bool)

(declare-fun e!1236122 () Option!4565)

(assert (=> b!1933904 (= e!1236122 None!4564)))

(declare-fun d!589745 () Bool)

(declare-fun e!1236123 () Bool)

(assert (=> d!589745 e!1236123))

(declare-fun res!864714 () Bool)

(assert (=> d!589745 (=> res!864714 e!1236123)))

(declare-fun lt!741323 () Option!4565)

(assert (=> d!589745 (= res!864714 (isEmpty!13574 lt!741323))))

(declare-fun e!1236124 () Option!4565)

(assert (=> d!589745 (= lt!741323 e!1236124)))

(declare-fun c!314585 () Bool)

(assert (=> d!589745 (= c!314585 (and ((_ is Cons!21984) rules!3198) (= (tag!4398 (h!27385 rules!3198)) (tag!4398 (rule!6153 (h!27386 tokens!598))))))))

(assert (=> d!589745 (rulesInvariant!3164 thiss!23328 rules!3198)))

(assert (=> d!589745 (= (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 (h!27386 tokens!598)))) lt!741323)))

(declare-fun b!1933905 () Bool)

(assert (=> b!1933905 (= e!1236124 (Some!4564 (h!27385 rules!3198)))))

(declare-fun b!1933906 () Bool)

(declare-fun lt!741324 () Unit!36346)

(declare-fun lt!741325 () Unit!36346)

(assert (=> b!1933906 (= lt!741324 lt!741325)))

(assert (=> b!1933906 (rulesInvariant!3164 thiss!23328 (t!180605 rules!3198))))

(assert (=> b!1933906 (= lt!741325 (lemmaInvariantOnRulesThenOnTail!278 thiss!23328 (h!27385 rules!3198) (t!180605 rules!3198)))))

(assert (=> b!1933906 (= e!1236122 (getRuleFromTag!765 thiss!23328 (t!180605 rules!3198) (tag!4398 (rule!6153 (h!27386 tokens!598)))))))

(declare-fun b!1933907 () Bool)

(declare-fun e!1236125 () Bool)

(assert (=> b!1933907 (= e!1236125 (= (tag!4398 (get!6932 lt!741323)) (tag!4398 (rule!6153 (h!27386 tokens!598)))))))

(declare-fun b!1933908 () Bool)

(assert (=> b!1933908 (= e!1236123 e!1236125)))

(declare-fun res!864713 () Bool)

(assert (=> b!1933908 (=> (not res!864713) (not e!1236125))))

(assert (=> b!1933908 (= res!864713 (contains!3983 rules!3198 (get!6932 lt!741323)))))

(declare-fun b!1933909 () Bool)

(assert (=> b!1933909 (= e!1236124 e!1236122)))

(declare-fun c!314586 () Bool)

(assert (=> b!1933909 (= c!314586 (and ((_ is Cons!21984) rules!3198) (not (= (tag!4398 (h!27385 rules!3198)) (tag!4398 (rule!6153 (h!27386 tokens!598)))))))))

(assert (= (and d!589745 c!314585) b!1933905))

(assert (= (and d!589745 (not c!314585)) b!1933909))

(assert (= (and b!1933909 c!314586) b!1933906))

(assert (= (and b!1933909 (not c!314586)) b!1933904))

(assert (= (and d!589745 (not res!864714)) b!1933908))

(assert (= (and b!1933908 res!864713) b!1933907))

(declare-fun m!2372657 () Bool)

(assert (=> d!589745 m!2372657))

(assert (=> d!589745 m!2372113))

(assert (=> b!1933906 m!2372639))

(assert (=> b!1933906 m!2372641))

(declare-fun m!2372659 () Bool)

(assert (=> b!1933906 m!2372659))

(declare-fun m!2372661 () Bool)

(assert (=> b!1933907 m!2372661))

(assert (=> b!1933908 m!2372661))

(assert (=> b!1933908 m!2372661))

(declare-fun m!2372663 () Bool)

(assert (=> b!1933908 m!2372663))

(assert (=> b!1933536 d!589745))

(declare-fun b!1933914 () Bool)

(declare-fun e!1236128 () Bool)

(assert (=> b!1933914 (= e!1236128 true)))

(declare-fun d!589751 () Bool)

(assert (=> d!589751 e!1236128))

(assert (= d!589751 b!1933914))

(declare-fun order!13853 () Int)

(declare-fun lambda!75386 () Int)

(declare-fun dynLambda!10702 (Int Int) Int)

(assert (=> b!1933914 (< (dynLambda!10697 order!13847 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) (dynLambda!10702 order!13853 lambda!75386))))

(assert (=> b!1933914 (< (dynLambda!10699 order!13851 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) (dynLambda!10702 order!13853 lambda!75386))))

(assert (=> d!589751 (= (list!8905 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168))) (list!8905 lt!741168))))

(declare-fun lt!741328 () Unit!36346)

(declare-fun ForallOf!413 (Int BalanceConc!14500) Unit!36346)

(assert (=> d!589751 (= lt!741328 (ForallOf!413 lambda!75386 lt!741168))))

(assert (=> d!589751 (= (lemmaSemiInverse!901 (transformation!3944 (rule!6153 (h!27386 tokens!598))) lt!741168) lt!741328)))

(declare-fun b_lambda!64323 () Bool)

(assert (=> (not b_lambda!64323) (not d!589751)))

(declare-fun tb!118933 () Bool)

(declare-fun t!180661 () Bool)

(assert (=> (and b!1933531 (= (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180661) tb!118933))

(declare-fun tp!551813 () Bool)

(declare-fun e!1236129 () Bool)

(declare-fun b!1933915 () Bool)

(assert (=> b!1933915 (= e!1236129 (and (inv!29081 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168)))) tp!551813))))

(declare-fun result!143612 () Bool)

(assert (=> tb!118933 (= result!143612 (and (inv!29082 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168))) e!1236129))))

(assert (= tb!118933 b!1933915))

(declare-fun m!2372665 () Bool)

(assert (=> b!1933915 m!2372665))

(declare-fun m!2372667 () Bool)

(assert (=> tb!118933 m!2372667))

(assert (=> d!589751 t!180661))

(declare-fun b_and!152331 () Bool)

(assert (= b_and!152325 (and (=> t!180661 result!143612) b_and!152331)))

(declare-fun t!180663 () Bool)

(declare-fun tb!118935 () Bool)

(assert (=> (and b!1933530 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180663) tb!118935))

(declare-fun result!143614 () Bool)

(assert (= result!143614 result!143612))

(assert (=> d!589751 t!180663))

(declare-fun b_and!152333 () Bool)

(assert (= b_and!152327 (and (=> t!180663 result!143614) b_and!152333)))

(declare-fun tb!118937 () Bool)

(declare-fun t!180665 () Bool)

(assert (=> (and b!1933518 (= (toChars!5444 (transformation!3944 (h!27385 rules!3198))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180665) tb!118937))

(declare-fun result!143616 () Bool)

(assert (= result!143616 result!143612))

(assert (=> d!589751 t!180665))

(declare-fun b_and!152335 () Bool)

(assert (= b_and!152329 (and (=> t!180665 result!143616) b_and!152335)))

(declare-fun b_lambda!64325 () Bool)

(assert (=> (not b_lambda!64325) (not d!589751)))

(assert (=> d!589751 t!180642))

(declare-fun b_and!152337 () Bool)

(assert (= b_and!152319 (and (=> t!180642 result!143590) b_and!152337)))

(assert (=> d!589751 t!180644))

(declare-fun b_and!152339 () Bool)

(assert (= b_and!152321 (and (=> t!180644 result!143594) b_and!152339)))

(assert (=> d!589751 t!180646))

(declare-fun b_and!152341 () Bool)

(assert (= b_and!152323 (and (=> t!180646 result!143596) b_and!152341)))

(assert (=> d!589751 m!2372561))

(declare-fun m!2372669 () Bool)

(assert (=> d!589751 m!2372669))

(declare-fun m!2372671 () Bool)

(assert (=> d!589751 m!2372671))

(assert (=> d!589751 m!2372561))

(assert (=> d!589751 m!2372669))

(declare-fun m!2372673 () Bool)

(assert (=> d!589751 m!2372673))

(assert (=> d!589751 m!2372153))

(assert (=> b!1933536 d!589751))

(declare-fun d!589753 () Bool)

(declare-fun e!1236130 () Bool)

(assert (=> d!589753 e!1236130))

(declare-fun res!864715 () Bool)

(assert (=> d!589753 (=> (not res!864715) (not e!1236130))))

(assert (=> d!589753 (= res!864715 (isDefined!3857 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 separatorToken!354)))))))

(declare-fun lt!741329 () Unit!36346)

(assert (=> d!589753 (= lt!741329 (choose!12012 thiss!23328 rules!3198 lt!741174 separatorToken!354))))

(assert (=> d!589753 (rulesInvariant!3164 thiss!23328 rules!3198)))

(assert (=> d!589753 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!765 thiss!23328 rules!3198 lt!741174 separatorToken!354) lt!741329)))

(declare-fun b!1933916 () Bool)

(declare-fun res!864716 () Bool)

(assert (=> b!1933916 (=> (not res!864716) (not e!1236130))))

(assert (=> b!1933916 (= res!864716 (matchR!2637 (regex!3944 (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 separatorToken!354))))) (list!8905 (charsOf!2484 separatorToken!354))))))

(declare-fun b!1933917 () Bool)

(assert (=> b!1933917 (= e!1236130 (= (rule!6153 separatorToken!354) (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 separatorToken!354))))))))

(assert (= (and d!589753 res!864715) b!1933916))

(assert (= (and b!1933916 res!864716) b!1933917))

(assert (=> d!589753 m!2372141))

(assert (=> d!589753 m!2372141))

(declare-fun m!2372675 () Bool)

(assert (=> d!589753 m!2372675))

(declare-fun m!2372677 () Bool)

(assert (=> d!589753 m!2372677))

(assert (=> d!589753 m!2372113))

(assert (=> b!1933916 m!2372141))

(assert (=> b!1933916 m!2372147))

(declare-fun m!2372679 () Bool)

(assert (=> b!1933916 m!2372679))

(assert (=> b!1933916 m!2372143))

(assert (=> b!1933916 m!2372143))

(assert (=> b!1933916 m!2372147))

(assert (=> b!1933916 m!2372141))

(declare-fun m!2372681 () Bool)

(assert (=> b!1933916 m!2372681))

(assert (=> b!1933917 m!2372141))

(assert (=> b!1933917 m!2372141))

(assert (=> b!1933917 m!2372681))

(assert (=> b!1933536 d!589753))

(declare-fun bs!415150 () Bool)

(declare-fun b!1933975 () Bool)

(assert (= bs!415150 (and b!1933975 b!1933516)))

(declare-fun lambda!75389 () Int)

(assert (=> bs!415150 (not (= lambda!75389 lambda!75371))))

(declare-fun b!1933986 () Bool)

(declare-fun e!1236175 () Bool)

(assert (=> b!1933986 (= e!1236175 true)))

(declare-fun b!1933985 () Bool)

(declare-fun e!1236174 () Bool)

(assert (=> b!1933985 (= e!1236174 e!1236175)))

(declare-fun b!1933984 () Bool)

(declare-fun e!1236173 () Bool)

(assert (=> b!1933984 (= e!1236173 e!1236174)))

(assert (=> b!1933975 e!1236173))

(assert (= b!1933985 b!1933986))

(assert (= b!1933984 b!1933985))

(assert (= (and b!1933975 ((_ is Cons!21984) rules!3198)) b!1933984))

(declare-fun order!13855 () Int)

(declare-fun dynLambda!10703 (Int Int) Int)

(assert (=> b!1933986 (< (dynLambda!10697 order!13847 (toValue!5585 (transformation!3944 (h!27385 rules!3198)))) (dynLambda!10703 order!13855 lambda!75389))))

(assert (=> b!1933986 (< (dynLambda!10699 order!13851 (toChars!5444 (transformation!3944 (h!27385 rules!3198)))) (dynLambda!10703 order!13855 lambda!75389))))

(assert (=> b!1933975 true))

(declare-fun bm!118955 () Bool)

(declare-fun c!314604 () Bool)

(declare-fun c!314603 () Bool)

(assert (=> bm!118955 (= c!314604 c!314603)))

(declare-fun call!118960 () List!22064)

(declare-fun lt!741377 () List!22064)

(declare-fun e!1236163 () List!22064)

(declare-fun call!118962 () List!22064)

(assert (=> bm!118955 (= call!118960 (++!5905 e!1236163 (ite c!314603 lt!741377 call!118962)))))

(declare-fun bm!118957 () Bool)

(declare-fun call!118961 () BalanceConc!14500)

(declare-fun call!118964 () BalanceConc!14500)

(assert (=> bm!118957 (= call!118961 call!118964)))

(declare-fun b!1933968 () Bool)

(assert (=> b!1933968 (= e!1236163 (list!8905 (charsOf!2484 (h!27386 (t!180606 tokens!598)))))))

(declare-fun bm!118958 () Bool)

(declare-fun c!314602 () Bool)

(assert (=> bm!118958 (= call!118964 (charsOf!2484 (ite c!314603 (h!27386 (t!180606 tokens!598)) (ite c!314602 separatorToken!354 (h!27386 (t!180606 tokens!598))))))))

(declare-fun b!1933969 () Bool)

(declare-fun e!1236165 () List!22064)

(assert (=> b!1933969 (= e!1236165 Nil!21982)))

(assert (=> b!1933969 (= (print!1527 thiss!23328 (singletonSeq!1928 (h!27386 (t!180606 tokens!598)))) (printTailRec!1033 thiss!23328 (singletonSeq!1928 (h!27386 (t!180606 tokens!598))) 0 (BalanceConc!14501 Empty!7342)))))

(declare-fun lt!741376 () Unit!36346)

(declare-fun Unit!36350 () Unit!36346)

(assert (=> b!1933969 (= lt!741376 Unit!36350)))

(declare-fun lt!741374 () Unit!36346)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!751 (LexerInterface!3557 List!22066 List!22064 List!22064) Unit!36346)

(assert (=> b!1933969 (= lt!741374 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!751 thiss!23328 rules!3198 call!118962 lt!741377))))

(assert (=> b!1933969 false))

(declare-fun lt!741375 () Unit!36346)

(declare-fun Unit!36351 () Unit!36346)

(assert (=> b!1933969 (= lt!741375 Unit!36351)))

(declare-fun b!1933970 () Bool)

(declare-fun e!1236166 () List!22064)

(assert (=> b!1933970 (= e!1236166 call!118960)))

(declare-fun b!1933971 () Bool)

(declare-fun call!118963 () List!22064)

(assert (=> b!1933971 (= e!1236163 call!118963)))

(declare-fun b!1933972 () Bool)

(assert (=> b!1933972 (= e!1236165 (++!5905 call!118960 lt!741377))))

(declare-fun b!1933973 () Bool)

(declare-fun e!1236164 () List!22064)

(assert (=> b!1933973 (= e!1236164 Nil!21982)))

(declare-fun bm!118959 () Bool)

(assert (=> bm!118959 (= call!118962 call!118963)))

(declare-fun bm!118956 () Bool)

(assert (=> bm!118956 (= call!118963 (list!8905 (ite c!314603 call!118964 call!118961)))))

(declare-fun d!589755 () Bool)

(declare-fun c!314605 () Bool)

(assert (=> d!589755 (= c!314605 ((_ is Cons!21985) (t!180606 tokens!598)))))

(assert (=> d!589755 (= (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354) e!1236164)))

(declare-fun b!1933974 () Bool)

(declare-fun lt!741372 () Option!4566)

(assert (=> b!1933974 (= c!314602 (and ((_ is Some!4565) lt!741372) (not (= (_1!11772 (v!26680 lt!741372)) (h!27386 (t!180606 tokens!598))))))))

(assert (=> b!1933974 (= e!1236166 e!1236165)))

(assert (=> b!1933975 (= e!1236164 e!1236166)))

(declare-fun lt!741373 () Unit!36346)

(declare-fun forallContained!720 (List!22067 Int Token!7440) Unit!36346)

(assert (=> b!1933975 (= lt!741373 (forallContained!720 (t!180606 tokens!598) lambda!75389 (h!27386 (t!180606 tokens!598))))))

(assert (=> b!1933975 (= lt!741377 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 (t!180606 tokens!598)) separatorToken!354))))

(assert (=> b!1933975 (= lt!741372 (maxPrefix!1995 thiss!23328 rules!3198 (++!5905 (list!8905 (charsOf!2484 (h!27386 (t!180606 tokens!598)))) lt!741377)))))

(assert (=> b!1933975 (= c!314603 (and ((_ is Some!4565) lt!741372) (= (_1!11772 (v!26680 lt!741372)) (h!27386 (t!180606 tokens!598)))))))

(assert (= (and d!589755 c!314605) b!1933975))

(assert (= (and d!589755 (not c!314605)) b!1933973))

(assert (= (and b!1933975 c!314603) b!1933970))

(assert (= (and b!1933975 (not c!314603)) b!1933974))

(assert (= (and b!1933974 c!314602) b!1933972))

(assert (= (and b!1933974 (not c!314602)) b!1933969))

(assert (= (or b!1933972 b!1933969) bm!118957))

(assert (= (or b!1933972 b!1933969) bm!118959))

(assert (= (or b!1933970 bm!118957) bm!118958))

(assert (= (or b!1933970 bm!118959) bm!118956))

(assert (= (or b!1933970 b!1933972) bm!118955))

(assert (= (and bm!118955 c!314604) b!1933971))

(assert (= (and bm!118955 (not c!314604)) b!1933968))

(declare-fun m!2372767 () Bool)

(assert (=> b!1933975 m!2372767))

(declare-fun m!2372769 () Bool)

(assert (=> b!1933975 m!2372769))

(declare-fun m!2372771 () Bool)

(assert (=> b!1933975 m!2372771))

(declare-fun m!2372773 () Bool)

(assert (=> b!1933975 m!2372773))

(assert (=> b!1933975 m!2372771))

(declare-fun m!2372775 () Bool)

(assert (=> b!1933975 m!2372775))

(declare-fun m!2372777 () Bool)

(assert (=> b!1933975 m!2372777))

(assert (=> b!1933975 m!2372773))

(assert (=> b!1933975 m!2372767))

(declare-fun m!2372779 () Bool)

(assert (=> bm!118956 m!2372779))

(declare-fun m!2372781 () Bool)

(assert (=> bm!118955 m!2372781))

(declare-fun m!2372783 () Bool)

(assert (=> b!1933972 m!2372783))

(declare-fun m!2372785 () Bool)

(assert (=> b!1933969 m!2372785))

(assert (=> b!1933969 m!2372785))

(declare-fun m!2372787 () Bool)

(assert (=> b!1933969 m!2372787))

(assert (=> b!1933969 m!2372785))

(declare-fun m!2372789 () Bool)

(assert (=> b!1933969 m!2372789))

(declare-fun m!2372791 () Bool)

(assert (=> b!1933969 m!2372791))

(assert (=> b!1933968 m!2372771))

(assert (=> b!1933968 m!2372771))

(assert (=> b!1933968 m!2372773))

(declare-fun m!2372793 () Bool)

(assert (=> bm!118958 m!2372793))

(assert (=> b!1933536 d!589755))

(declare-fun d!589779 () Bool)

(assert (=> d!589779 (= (isDefined!3857 lt!741161) (not (isEmpty!13574 lt!741161)))))

(declare-fun bs!415151 () Bool)

(assert (= bs!415151 d!589779))

(declare-fun m!2372795 () Bool)

(assert (=> bs!415151 m!2372795))

(assert (=> b!1933536 d!589779))

(declare-fun d!589781 () Bool)

(assert (=> d!589781 (= (isDefined!3858 lt!741163) (not (isEmpty!13571 lt!741163)))))

(declare-fun bs!415152 () Bool)

(assert (= bs!415152 d!589781))

(declare-fun m!2372797 () Bool)

(assert (=> bs!415152 m!2372797))

(assert (=> b!1933536 d!589781))

(declare-fun d!589783 () Bool)

(declare-fun lt!741378 () BalanceConc!14500)

(assert (=> d!589783 (= (list!8905 lt!741378) (originalCharacters!4751 (h!27386 tokens!598)))))

(assert (=> d!589783 (= lt!741378 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (value!123995 (h!27386 tokens!598))))))

(assert (=> d!589783 (= (charsOf!2484 (h!27386 tokens!598)) lt!741378)))

(declare-fun b_lambda!64329 () Bool)

(assert (=> (not b_lambda!64329) (not d!589783)))

(declare-fun tb!118939 () Bool)

(declare-fun t!180670 () Bool)

(assert (=> (and b!1933531 (= (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180670) tb!118939))

(declare-fun b!1933989 () Bool)

(declare-fun e!1236176 () Bool)

(declare-fun tp!551814 () Bool)

(assert (=> b!1933989 (= e!1236176 (and (inv!29081 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (value!123995 (h!27386 tokens!598))))) tp!551814))))

(declare-fun result!143618 () Bool)

(assert (=> tb!118939 (= result!143618 (and (inv!29082 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (value!123995 (h!27386 tokens!598)))) e!1236176))))

(assert (= tb!118939 b!1933989))

(declare-fun m!2372799 () Bool)

(assert (=> b!1933989 m!2372799))

(declare-fun m!2372801 () Bool)

(assert (=> tb!118939 m!2372801))

(assert (=> d!589783 t!180670))

(declare-fun b_and!152349 () Bool)

(assert (= b_and!152331 (and (=> t!180670 result!143618) b_and!152349)))

(declare-fun t!180672 () Bool)

(declare-fun tb!118941 () Bool)

(assert (=> (and b!1933530 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180672) tb!118941))

(declare-fun result!143620 () Bool)

(assert (= result!143620 result!143618))

(assert (=> d!589783 t!180672))

(declare-fun b_and!152351 () Bool)

(assert (= b_and!152333 (and (=> t!180672 result!143620) b_and!152351)))

(declare-fun tb!118943 () Bool)

(declare-fun t!180674 () Bool)

(assert (=> (and b!1933518 (= (toChars!5444 (transformation!3944 (h!27385 rules!3198))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180674) tb!118943))

(declare-fun result!143622 () Bool)

(assert (= result!143622 result!143618))

(assert (=> d!589783 t!180674))

(declare-fun b_and!152353 () Bool)

(assert (= b_and!152335 (and (=> t!180674 result!143622) b_and!152353)))

(declare-fun m!2372803 () Bool)

(assert (=> d!589783 m!2372803))

(declare-fun m!2372805 () Bool)

(assert (=> d!589783 m!2372805))

(assert (=> b!1933536 d!589783))

(declare-fun d!589785 () Bool)

(declare-fun fromListB!1246 (List!22064) BalanceConc!14500)

(assert (=> d!589785 (= (seqFromList!2798 (originalCharacters!4751 (h!27386 tokens!598))) (fromListB!1246 (originalCharacters!4751 (h!27386 tokens!598))))))

(declare-fun bs!415153 () Bool)

(assert (= bs!415153 d!589785))

(declare-fun m!2372807 () Bool)

(assert (=> bs!415153 m!2372807))

(assert (=> b!1933536 d!589785))

(declare-fun b!1933990 () Bool)

(declare-fun e!1236179 () Bool)

(declare-fun e!1236177 () Bool)

(assert (=> b!1933990 (= e!1236179 e!1236177)))

(declare-fun res!864742 () Bool)

(assert (=> b!1933990 (=> (not res!864742) (not e!1236177))))

(declare-fun lt!741380 () Option!4566)

(assert (=> b!1933990 (= res!864742 (isDefined!3858 lt!741380))))

(declare-fun call!118965 () Option!4566)

(declare-fun bm!118960 () Bool)

(assert (=> bm!118960 (= call!118965 (maxPrefixOneRule!1231 thiss!23328 (h!27385 rules!3198) lt!741158))))

(declare-fun b!1933991 () Bool)

(declare-fun res!864743 () Bool)

(assert (=> b!1933991 (=> (not res!864743) (not e!1236177))))

(assert (=> b!1933991 (= res!864743 (< (size!17151 (_2!11772 (get!6933 lt!741380))) (size!17151 lt!741158)))))

(declare-fun b!1933993 () Bool)

(declare-fun res!864741 () Bool)

(assert (=> b!1933993 (=> (not res!864741) (not e!1236177))))

(assert (=> b!1933993 (= res!864741 (= (value!123995 (_1!11772 (get!6933 lt!741380))) (apply!5725 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741380)))) (seqFromList!2798 (originalCharacters!4751 (_1!11772 (get!6933 lt!741380)))))))))

(declare-fun b!1933994 () Bool)

(declare-fun res!864740 () Bool)

(assert (=> b!1933994 (=> (not res!864740) (not e!1236177))))

(assert (=> b!1933994 (= res!864740 (= (++!5905 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741380)))) (_2!11772 (get!6933 lt!741380))) lt!741158))))

(declare-fun b!1933995 () Bool)

(assert (=> b!1933995 (= e!1236177 (contains!3983 rules!3198 (rule!6153 (_1!11772 (get!6933 lt!741380)))))))

(declare-fun b!1933996 () Bool)

(declare-fun res!864744 () Bool)

(assert (=> b!1933996 (=> (not res!864744) (not e!1236177))))

(assert (=> b!1933996 (= res!864744 (matchR!2637 (regex!3944 (rule!6153 (_1!11772 (get!6933 lt!741380)))) (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741380))))))))

(declare-fun d!589787 () Bool)

(assert (=> d!589787 e!1236179))

(declare-fun res!864739 () Bool)

(assert (=> d!589787 (=> res!864739 e!1236179)))

(assert (=> d!589787 (= res!864739 (isEmpty!13571 lt!741380))))

(declare-fun e!1236178 () Option!4566)

(assert (=> d!589787 (= lt!741380 e!1236178)))

(declare-fun c!314606 () Bool)

(assert (=> d!589787 (= c!314606 (and ((_ is Cons!21984) rules!3198) ((_ is Nil!21984) (t!180605 rules!3198))))))

(declare-fun lt!741383 () Unit!36346)

(declare-fun lt!741379 () Unit!36346)

(assert (=> d!589787 (= lt!741383 lt!741379)))

(assert (=> d!589787 (isPrefix!1949 lt!741158 lt!741158)))

(assert (=> d!589787 (= lt!741379 (lemmaIsPrefixRefl!1267 lt!741158 lt!741158))))

(assert (=> d!589787 (rulesValidInductive!1348 thiss!23328 rules!3198)))

(assert (=> d!589787 (= (maxPrefix!1995 thiss!23328 rules!3198 lt!741158) lt!741380)))

(declare-fun b!1933992 () Bool)

(declare-fun res!864745 () Bool)

(assert (=> b!1933992 (=> (not res!864745) (not e!1236177))))

(assert (=> b!1933992 (= res!864745 (= (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741380)))) (originalCharacters!4751 (_1!11772 (get!6933 lt!741380)))))))

(declare-fun b!1933997 () Bool)

(assert (=> b!1933997 (= e!1236178 call!118965)))

(declare-fun b!1933998 () Bool)

(declare-fun lt!741381 () Option!4566)

(declare-fun lt!741382 () Option!4566)

(assert (=> b!1933998 (= e!1236178 (ite (and ((_ is None!4565) lt!741381) ((_ is None!4565) lt!741382)) None!4565 (ite ((_ is None!4565) lt!741382) lt!741381 (ite ((_ is None!4565) lt!741381) lt!741382 (ite (>= (size!17148 (_1!11772 (v!26680 lt!741381))) (size!17148 (_1!11772 (v!26680 lt!741382)))) lt!741381 lt!741382)))))))

(assert (=> b!1933998 (= lt!741381 call!118965)))

(assert (=> b!1933998 (= lt!741382 (maxPrefix!1995 thiss!23328 (t!180605 rules!3198) lt!741158))))

(assert (= (and d!589787 c!314606) b!1933997))

(assert (= (and d!589787 (not c!314606)) b!1933998))

(assert (= (or b!1933997 b!1933998) bm!118960))

(assert (= (and d!589787 (not res!864739)) b!1933990))

(assert (= (and b!1933990 res!864742) b!1933992))

(assert (= (and b!1933992 res!864745) b!1933991))

(assert (= (and b!1933991 res!864743) b!1933994))

(assert (= (and b!1933994 res!864740) b!1933993))

(assert (= (and b!1933993 res!864741) b!1933996))

(assert (= (and b!1933996 res!864744) b!1933995))

(declare-fun m!2372809 () Bool)

(assert (=> b!1933996 m!2372809))

(declare-fun m!2372811 () Bool)

(assert (=> b!1933996 m!2372811))

(assert (=> b!1933996 m!2372811))

(declare-fun m!2372813 () Bool)

(assert (=> b!1933996 m!2372813))

(assert (=> b!1933996 m!2372813))

(declare-fun m!2372815 () Bool)

(assert (=> b!1933996 m!2372815))

(assert (=> b!1933992 m!2372809))

(assert (=> b!1933992 m!2372811))

(assert (=> b!1933992 m!2372811))

(assert (=> b!1933992 m!2372813))

(declare-fun m!2372817 () Bool)

(assert (=> d!589787 m!2372817))

(declare-fun m!2372819 () Bool)

(assert (=> d!589787 m!2372819))

(declare-fun m!2372821 () Bool)

(assert (=> d!589787 m!2372821))

(assert (=> d!589787 m!2372609))

(declare-fun m!2372823 () Bool)

(assert (=> b!1933998 m!2372823))

(assert (=> b!1933993 m!2372809))

(declare-fun m!2372825 () Bool)

(assert (=> b!1933993 m!2372825))

(assert (=> b!1933993 m!2372825))

(declare-fun m!2372827 () Bool)

(assert (=> b!1933993 m!2372827))

(declare-fun m!2372829 () Bool)

(assert (=> b!1933990 m!2372829))

(declare-fun m!2372831 () Bool)

(assert (=> bm!118960 m!2372831))

(assert (=> b!1933995 m!2372809))

(declare-fun m!2372833 () Bool)

(assert (=> b!1933995 m!2372833))

(assert (=> b!1933994 m!2372809))

(assert (=> b!1933994 m!2372811))

(assert (=> b!1933994 m!2372811))

(assert (=> b!1933994 m!2372813))

(assert (=> b!1933994 m!2372813))

(declare-fun m!2372835 () Bool)

(assert (=> b!1933994 m!2372835))

(assert (=> b!1933991 m!2372809))

(declare-fun m!2372837 () Bool)

(assert (=> b!1933991 m!2372837))

(assert (=> b!1933991 m!2372353))

(assert (=> b!1933536 d!589787))

(declare-fun d!589789 () Bool)

(assert (=> d!589789 (= (isDefined!3857 lt!741170) (not (isEmpty!13574 lt!741170)))))

(declare-fun bs!415154 () Bool)

(assert (= bs!415154 d!589789))

(declare-fun m!2372839 () Bool)

(assert (=> bs!415154 m!2372839))

(assert (=> b!1933536 d!589789))

(declare-fun d!589791 () Bool)

(assert (=> d!589791 (= (isEmpty!13564 rules!3198) ((_ is Nil!21984) rules!3198))))

(assert (=> b!1933515 d!589791))

(declare-fun d!589793 () Bool)

(declare-fun lt!741384 () Bool)

(declare-fun e!1236181 () Bool)

(assert (=> d!589793 (= lt!741384 e!1236181)))

(declare-fun res!864747 () Bool)

(assert (=> d!589793 (=> (not res!864747) (not e!1236181))))

(assert (=> d!589793 (= res!864747 (= (list!8907 (_1!11771 (lex!1581 thiss!23328 rules!3198 (print!1527 thiss!23328 (singletonSeq!1928 separatorToken!354))))) (list!8907 (singletonSeq!1928 separatorToken!354))))))

(declare-fun e!1236180 () Bool)

(assert (=> d!589793 (= lt!741384 e!1236180)))

(declare-fun res!864748 () Bool)

(assert (=> d!589793 (=> (not res!864748) (not e!1236180))))

(declare-fun lt!741385 () tuple2!20604)

(assert (=> d!589793 (= res!864748 (= (size!17150 (_1!11771 lt!741385)) 1))))

(assert (=> d!589793 (= lt!741385 (lex!1581 thiss!23328 rules!3198 (print!1527 thiss!23328 (singletonSeq!1928 separatorToken!354))))))

(assert (=> d!589793 (not (isEmpty!13564 rules!3198))))

(assert (=> d!589793 (= (rulesProduceIndividualToken!1729 thiss!23328 rules!3198 separatorToken!354) lt!741384)))

(declare-fun b!1933999 () Bool)

(declare-fun res!864746 () Bool)

(assert (=> b!1933999 (=> (not res!864746) (not e!1236180))))

(assert (=> b!1933999 (= res!864746 (= (apply!5721 (_1!11771 lt!741385) 0) separatorToken!354))))

(declare-fun b!1934000 () Bool)

(assert (=> b!1934000 (= e!1236180 (isEmpty!13568 (_2!11771 lt!741385)))))

(declare-fun b!1934001 () Bool)

(assert (=> b!1934001 (= e!1236181 (isEmpty!13568 (_2!11771 (lex!1581 thiss!23328 rules!3198 (print!1527 thiss!23328 (singletonSeq!1928 separatorToken!354))))))))

(assert (= (and d!589793 res!864748) b!1933999))

(assert (= (and b!1933999 res!864746) b!1934000))

(assert (= (and d!589793 res!864747) b!1934001))

(declare-fun m!2372841 () Bool)

(assert (=> d!589793 m!2372841))

(declare-fun m!2372843 () Bool)

(assert (=> d!589793 m!2372843))

(declare-fun m!2372845 () Bool)

(assert (=> d!589793 m!2372845))

(declare-fun m!2372847 () Bool)

(assert (=> d!589793 m!2372847))

(declare-fun m!2372849 () Bool)

(assert (=> d!589793 m!2372849))

(assert (=> d!589793 m!2372845))

(assert (=> d!589793 m!2372841))

(assert (=> d!589793 m!2372845))

(declare-fun m!2372851 () Bool)

(assert (=> d!589793 m!2372851))

(assert (=> d!589793 m!2372173))

(declare-fun m!2372853 () Bool)

(assert (=> b!1933999 m!2372853))

(declare-fun m!2372855 () Bool)

(assert (=> b!1934000 m!2372855))

(assert (=> b!1934001 m!2372845))

(assert (=> b!1934001 m!2372845))

(assert (=> b!1934001 m!2372841))

(assert (=> b!1934001 m!2372841))

(assert (=> b!1934001 m!2372843))

(declare-fun m!2372857 () Bool)

(assert (=> b!1934001 m!2372857))

(assert (=> b!1933517 d!589793))

(declare-fun d!589795 () Bool)

(declare-fun res!864753 () Bool)

(declare-fun e!1236186 () Bool)

(assert (=> d!589795 (=> res!864753 e!1236186)))

(assert (=> d!589795 (= res!864753 ((_ is Nil!21985) tokens!598))))

(assert (=> d!589795 (= (forall!4650 tokens!598 lambda!75371) e!1236186)))

(declare-fun b!1934006 () Bool)

(declare-fun e!1236187 () Bool)

(assert (=> b!1934006 (= e!1236186 e!1236187)))

(declare-fun res!864754 () Bool)

(assert (=> b!1934006 (=> (not res!864754) (not e!1236187))))

(declare-fun dynLambda!10704 (Int Token!7440) Bool)

(assert (=> b!1934006 (= res!864754 (dynLambda!10704 lambda!75371 (h!27386 tokens!598)))))

(declare-fun b!1934007 () Bool)

(assert (=> b!1934007 (= e!1236187 (forall!4650 (t!180606 tokens!598) lambda!75371))))

(assert (= (and d!589795 (not res!864753)) b!1934006))

(assert (= (and b!1934006 res!864754) b!1934007))

(declare-fun b_lambda!64331 () Bool)

(assert (=> (not b_lambda!64331) (not b!1934006)))

(declare-fun m!2372859 () Bool)

(assert (=> b!1934006 m!2372859))

(declare-fun m!2372861 () Bool)

(assert (=> b!1934007 m!2372861))

(assert (=> b!1933516 d!589795))

(declare-fun d!589797 () Bool)

(declare-fun res!864759 () Bool)

(declare-fun e!1236192 () Bool)

(assert (=> d!589797 (=> res!864759 e!1236192)))

(assert (=> d!589797 (= res!864759 (not ((_ is Cons!21984) rules!3198)))))

(assert (=> d!589797 (= (sepAndNonSepRulesDisjointChars!1042 rules!3198 rules!3198) e!1236192)))

(declare-fun b!1934012 () Bool)

(declare-fun e!1236193 () Bool)

(assert (=> b!1934012 (= e!1236192 e!1236193)))

(declare-fun res!864760 () Bool)

(assert (=> b!1934012 (=> (not res!864760) (not e!1236193))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!457 (Rule!7688 List!22066) Bool)

(assert (=> b!1934012 (= res!864760 (ruleDisjointCharsFromAllFromOtherType!457 (h!27385 rules!3198) rules!3198))))

(declare-fun b!1934013 () Bool)

(assert (=> b!1934013 (= e!1236193 (sepAndNonSepRulesDisjointChars!1042 rules!3198 (t!180605 rules!3198)))))

(assert (= (and d!589797 (not res!864759)) b!1934012))

(assert (= (and b!1934012 res!864760) b!1934013))

(declare-fun m!2372863 () Bool)

(assert (=> b!1934012 m!2372863))

(declare-fun m!2372865 () Bool)

(assert (=> b!1934013 m!2372865))

(assert (=> b!1933527 d!589797))

(declare-fun d!589799 () Bool)

(declare-fun res!864765 () Bool)

(declare-fun e!1236196 () Bool)

(assert (=> d!589799 (=> (not res!864765) (not e!1236196))))

(assert (=> d!589799 (= res!864765 (not (isEmpty!13567 (originalCharacters!4751 separatorToken!354))))))

(assert (=> d!589799 (= (inv!29077 separatorToken!354) e!1236196)))

(declare-fun b!1934018 () Bool)

(declare-fun res!864766 () Bool)

(assert (=> b!1934018 (=> (not res!864766) (not e!1236196))))

(assert (=> b!1934018 (= res!864766 (= (originalCharacters!4751 separatorToken!354) (list!8905 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (value!123995 separatorToken!354)))))))

(declare-fun b!1934019 () Bool)

(assert (=> b!1934019 (= e!1236196 (= (size!17148 separatorToken!354) (size!17151 (originalCharacters!4751 separatorToken!354))))))

(assert (= (and d!589799 res!864765) b!1934018))

(assert (= (and b!1934018 res!864766) b!1934019))

(declare-fun b_lambda!64333 () Bool)

(assert (=> (not b_lambda!64333) (not b!1934018)))

(assert (=> b!1934018 t!180654))

(declare-fun b_and!152355 () Bool)

(assert (= b_and!152349 (and (=> t!180654 result!143604) b_and!152355)))

(assert (=> b!1934018 t!180656))

(declare-fun b_and!152357 () Bool)

(assert (= b_and!152351 (and (=> t!180656 result!143608) b_and!152357)))

(assert (=> b!1934018 t!180658))

(declare-fun b_and!152359 () Bool)

(assert (= b_and!152353 (and (=> t!180658 result!143610) b_and!152359)))

(declare-fun m!2372867 () Bool)

(assert (=> d!589799 m!2372867))

(assert (=> b!1934018 m!2372575))

(assert (=> b!1934018 m!2372575))

(declare-fun m!2372869 () Bool)

(assert (=> b!1934018 m!2372869))

(declare-fun m!2372871 () Bool)

(assert (=> b!1934019 m!2372871))

(assert (=> start!194080 d!589799))

(declare-fun lt!741388 () Bool)

(declare-fun d!589801 () Bool)

(declare-fun isEmpty!13575 (List!22067) Bool)

(assert (=> d!589801 (= lt!741388 (isEmpty!13575 (list!8907 (_1!11771 (lex!1581 thiss!23328 rules!3198 (seqFromList!2798 lt!741158))))))))

(declare-fun isEmpty!13576 (Conc!7343) Bool)

(assert (=> d!589801 (= lt!741388 (isEmpty!13576 (c!314510 (_1!11771 (lex!1581 thiss!23328 rules!3198 (seqFromList!2798 lt!741158))))))))

(assert (=> d!589801 (= (isEmpty!13563 (_1!11771 (lex!1581 thiss!23328 rules!3198 (seqFromList!2798 lt!741158)))) lt!741388)))

(declare-fun bs!415155 () Bool)

(assert (= bs!415155 d!589801))

(declare-fun m!2372873 () Bool)

(assert (=> bs!415155 m!2372873))

(assert (=> bs!415155 m!2372873))

(declare-fun m!2372875 () Bool)

(assert (=> bs!415155 m!2372875))

(declare-fun m!2372877 () Bool)

(assert (=> bs!415155 m!2372877))

(assert (=> b!1933514 d!589801))

(declare-fun b!1934151 () Bool)

(declare-fun e!1236283 () Bool)

(declare-fun e!1236281 () Bool)

(assert (=> b!1934151 (= e!1236283 e!1236281)))

(declare-fun res!864815 () Bool)

(declare-fun lt!741400 () tuple2!20604)

(declare-fun size!17154 (BalanceConc!14500) Int)

(assert (=> b!1934151 (= res!864815 (< (size!17154 (_2!11771 lt!741400)) (size!17154 (seqFromList!2798 lt!741158))))))

(assert (=> b!1934151 (=> (not res!864815) (not e!1236281))))

(declare-fun d!589803 () Bool)

(declare-fun e!1236282 () Bool)

(assert (=> d!589803 e!1236282))

(declare-fun res!864816 () Bool)

(assert (=> d!589803 (=> (not res!864816) (not e!1236282))))

(assert (=> d!589803 (= res!864816 e!1236283)))

(declare-fun c!314621 () Bool)

(assert (=> d!589803 (= c!314621 (> (size!17150 (_1!11771 lt!741400)) 0))))

(declare-fun lexTailRecV2!678 (LexerInterface!3557 List!22066 BalanceConc!14500 BalanceConc!14500 BalanceConc!14500 BalanceConc!14502) tuple2!20604)

(assert (=> d!589803 (= lt!741400 (lexTailRecV2!678 thiss!23328 rules!3198 (seqFromList!2798 lt!741158) (BalanceConc!14501 Empty!7342) (seqFromList!2798 lt!741158) (BalanceConc!14503 Empty!7343)))))

(assert (=> d!589803 (= (lex!1581 thiss!23328 rules!3198 (seqFromList!2798 lt!741158)) lt!741400)))

(declare-fun b!1934152 () Bool)

(declare-fun res!864814 () Bool)

(assert (=> b!1934152 (=> (not res!864814) (not e!1236282))))

(declare-datatypes ((tuple2!20610 0))(
  ( (tuple2!20611 (_1!11774 List!22067) (_2!11774 List!22064)) )
))
(declare-fun lexList!955 (LexerInterface!3557 List!22066 List!22064) tuple2!20610)

(assert (=> b!1934152 (= res!864814 (= (list!8907 (_1!11771 lt!741400)) (_1!11774 (lexList!955 thiss!23328 rules!3198 (list!8905 (seqFromList!2798 lt!741158))))))))

(declare-fun b!1934153 () Bool)

(assert (=> b!1934153 (= e!1236281 (not (isEmpty!13563 (_1!11771 lt!741400))))))

(declare-fun b!1934154 () Bool)

(assert (=> b!1934154 (= e!1236282 (= (list!8905 (_2!11771 lt!741400)) (_2!11774 (lexList!955 thiss!23328 rules!3198 (list!8905 (seqFromList!2798 lt!741158))))))))

(declare-fun b!1934155 () Bool)

(assert (=> b!1934155 (= e!1236283 (= (_2!11771 lt!741400) (seqFromList!2798 lt!741158)))))

(assert (= (and d!589803 c!314621) b!1934151))

(assert (= (and d!589803 (not c!314621)) b!1934155))

(assert (= (and b!1934151 res!864815) b!1934153))

(assert (= (and d!589803 res!864816) b!1934152))

(assert (= (and b!1934152 res!864814) b!1934154))

(declare-fun m!2372943 () Bool)

(assert (=> d!589803 m!2372943))

(assert (=> d!589803 m!2372107))

(assert (=> d!589803 m!2372107))

(declare-fun m!2372945 () Bool)

(assert (=> d!589803 m!2372945))

(declare-fun m!2372947 () Bool)

(assert (=> b!1934152 m!2372947))

(assert (=> b!1934152 m!2372107))

(declare-fun m!2372949 () Bool)

(assert (=> b!1934152 m!2372949))

(assert (=> b!1934152 m!2372949))

(declare-fun m!2372951 () Bool)

(assert (=> b!1934152 m!2372951))

(declare-fun m!2372953 () Bool)

(assert (=> b!1934151 m!2372953))

(assert (=> b!1934151 m!2372107))

(declare-fun m!2372955 () Bool)

(assert (=> b!1934151 m!2372955))

(declare-fun m!2372957 () Bool)

(assert (=> b!1934153 m!2372957))

(declare-fun m!2372959 () Bool)

(assert (=> b!1934154 m!2372959))

(assert (=> b!1934154 m!2372107))

(assert (=> b!1934154 m!2372949))

(assert (=> b!1934154 m!2372949))

(assert (=> b!1934154 m!2372951))

(assert (=> b!1933514 d!589803))

(declare-fun d!589817 () Bool)

(assert (=> d!589817 (= (seqFromList!2798 lt!741158) (fromListB!1246 lt!741158))))

(declare-fun bs!415159 () Bool)

(assert (= bs!415159 d!589817))

(declare-fun m!2372961 () Bool)

(assert (=> bs!415159 m!2372961))

(assert (=> b!1933514 d!589817))

(declare-fun d!589819 () Bool)

(assert (=> d!589819 (= (inv!29074 (tag!4398 (rule!6153 separatorToken!354))) (= (mod (str.len (value!123994 (tag!4398 (rule!6153 separatorToken!354)))) 2) 0))))

(assert (=> b!1933525 d!589819))

(declare-fun d!589821 () Bool)

(declare-fun res!864817 () Bool)

(declare-fun e!1236284 () Bool)

(assert (=> d!589821 (=> (not res!864817) (not e!1236284))))

(assert (=> d!589821 (= res!864817 (semiInverseModEq!1573 (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (toValue!5585 (transformation!3944 (rule!6153 separatorToken!354)))))))

(assert (=> d!589821 (= (inv!29078 (transformation!3944 (rule!6153 separatorToken!354))) e!1236284)))

(declare-fun b!1934156 () Bool)

(assert (=> b!1934156 (= e!1236284 (equivClasses!1500 (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (toValue!5585 (transformation!3944 (rule!6153 separatorToken!354)))))))

(assert (= (and d!589821 res!864817) b!1934156))

(declare-fun m!2372963 () Bool)

(assert (=> d!589821 m!2372963))

(declare-fun m!2372965 () Bool)

(assert (=> b!1934156 m!2372965))

(assert (=> b!1933525 d!589821))

(declare-fun d!589823 () Bool)

(assert (=> d!589823 (= (inv!29074 (tag!4398 (rule!6153 (h!27386 tokens!598)))) (= (mod (str.len (value!123994 (tag!4398 (rule!6153 (h!27386 tokens!598))))) 2) 0))))

(assert (=> b!1933524 d!589823))

(declare-fun d!589825 () Bool)

(declare-fun res!864818 () Bool)

(declare-fun e!1236285 () Bool)

(assert (=> d!589825 (=> (not res!864818) (not e!1236285))))

(assert (=> d!589825 (= res!864818 (semiInverseModEq!1573 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))))))

(assert (=> d!589825 (= (inv!29078 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) e!1236285)))

(declare-fun b!1934157 () Bool)

(assert (=> b!1934157 (= e!1236285 (equivClasses!1500 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))))))

(assert (= (and d!589825 res!864818) b!1934157))

(declare-fun m!2372967 () Bool)

(assert (=> d!589825 m!2372967))

(declare-fun m!2372969 () Bool)

(assert (=> b!1934157 m!2372969))

(assert (=> b!1933524 d!589825))

(declare-fun d!589827 () Bool)

(declare-fun res!864821 () Bool)

(declare-fun e!1236288 () Bool)

(assert (=> d!589827 (=> (not res!864821) (not e!1236288))))

(declare-fun rulesValid!1460 (LexerInterface!3557 List!22066) Bool)

(assert (=> d!589827 (= res!864821 (rulesValid!1460 thiss!23328 rules!3198))))

(assert (=> d!589827 (= (rulesInvariant!3164 thiss!23328 rules!3198) e!1236288)))

(declare-fun b!1934160 () Bool)

(declare-datatypes ((List!22069 0))(
  ( (Nil!21987) (Cons!21987 (h!27388 String!25518) (t!180720 List!22069)) )
))
(declare-fun noDuplicateTag!1458 (LexerInterface!3557 List!22066 List!22069) Bool)

(assert (=> b!1934160 (= e!1236288 (noDuplicateTag!1458 thiss!23328 rules!3198 Nil!21987))))

(assert (= (and d!589827 res!864821) b!1934160))

(declare-fun m!2372971 () Bool)

(assert (=> d!589827 m!2372971))

(declare-fun m!2372973 () Bool)

(assert (=> b!1934160 m!2372973))

(assert (=> b!1933535 d!589827))

(declare-fun d!589829 () Bool)

(declare-fun res!864822 () Bool)

(declare-fun e!1236289 () Bool)

(assert (=> d!589829 (=> (not res!864822) (not e!1236289))))

(assert (=> d!589829 (= res!864822 (not (isEmpty!13567 (originalCharacters!4751 (h!27386 tokens!598)))))))

(assert (=> d!589829 (= (inv!29077 (h!27386 tokens!598)) e!1236289)))

(declare-fun b!1934161 () Bool)

(declare-fun res!864823 () Bool)

(assert (=> b!1934161 (=> (not res!864823) (not e!1236289))))

(assert (=> b!1934161 (= res!864823 (= (originalCharacters!4751 (h!27386 tokens!598)) (list!8905 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (value!123995 (h!27386 tokens!598))))))))

(declare-fun b!1934162 () Bool)

(assert (=> b!1934162 (= e!1236289 (= (size!17148 (h!27386 tokens!598)) (size!17151 (originalCharacters!4751 (h!27386 tokens!598)))))))

(assert (= (and d!589829 res!864822) b!1934161))

(assert (= (and b!1934161 res!864823) b!1934162))

(declare-fun b_lambda!64353 () Bool)

(assert (=> (not b_lambda!64353) (not b!1934161)))

(assert (=> b!1934161 t!180670))

(declare-fun b_and!152369 () Bool)

(assert (= b_and!152355 (and (=> t!180670 result!143618) b_and!152369)))

(assert (=> b!1934161 t!180672))

(declare-fun b_and!152371 () Bool)

(assert (= b_and!152357 (and (=> t!180672 result!143620) b_and!152371)))

(assert (=> b!1934161 t!180674))

(declare-fun b_and!152373 () Bool)

(assert (= b_and!152359 (and (=> t!180674 result!143622) b_and!152373)))

(declare-fun m!2372975 () Bool)

(assert (=> d!589829 m!2372975))

(assert (=> b!1934161 m!2372805))

(assert (=> b!1934161 m!2372805))

(declare-fun m!2372977 () Bool)

(assert (=> b!1934161 m!2372977))

(declare-fun m!2372979 () Bool)

(assert (=> b!1934162 m!2372979))

(assert (=> b!1933521 d!589829))

(declare-fun b!1934163 () Bool)

(declare-fun e!1236293 () Bool)

(declare-fun e!1236290 () Bool)

(assert (=> b!1934163 (= e!1236293 e!1236290)))

(declare-fun res!864826 () Bool)

(assert (=> b!1934163 (=> (not res!864826) (not e!1236290))))

(declare-fun lt!741401 () Bool)

(assert (=> b!1934163 (= res!864826 (not lt!741401))))

(declare-fun b!1934164 () Bool)

(declare-fun res!864831 () Bool)

(assert (=> b!1934164 (=> res!864831 e!1236293)))

(assert (=> b!1934164 (= res!864831 (not ((_ is ElementMatch!5369) (regex!3944 lt!741162))))))

(declare-fun e!1236291 () Bool)

(assert (=> b!1934164 (= e!1236291 e!1236293)))

(declare-fun bm!118965 () Bool)

(declare-fun call!118970 () Bool)

(assert (=> bm!118965 (= call!118970 (isEmpty!13567 lt!741174))))

(declare-fun b!1934165 () Bool)

(declare-fun e!1236292 () Bool)

(assert (=> b!1934165 (= e!1236292 (matchR!2637 (derivativeStep!1375 (regex!3944 lt!741162) (head!4509 lt!741174)) (tail!2995 lt!741174)))))

(declare-fun b!1934166 () Bool)

(declare-fun res!864829 () Bool)

(declare-fun e!1236295 () Bool)

(assert (=> b!1934166 (=> (not res!864829) (not e!1236295))))

(assert (=> b!1934166 (= res!864829 (isEmpty!13567 (tail!2995 lt!741174)))))

(declare-fun b!1934167 () Bool)

(declare-fun e!1236294 () Bool)

(assert (=> b!1934167 (= e!1236294 (= lt!741401 call!118970))))

(declare-fun b!1934168 () Bool)

(declare-fun res!864828 () Bool)

(assert (=> b!1934168 (=> (not res!864828) (not e!1236295))))

(assert (=> b!1934168 (= res!864828 (not call!118970))))

(declare-fun b!1934170 () Bool)

(declare-fun res!864825 () Bool)

(declare-fun e!1236296 () Bool)

(assert (=> b!1934170 (=> res!864825 e!1236296)))

(assert (=> b!1934170 (= res!864825 (not (isEmpty!13567 (tail!2995 lt!741174))))))

(declare-fun b!1934171 () Bool)

(assert (=> b!1934171 (= e!1236292 (nullable!1616 (regex!3944 lt!741162)))))

(declare-fun b!1934172 () Bool)

(assert (=> b!1934172 (= e!1236295 (= (head!4509 lt!741174) (c!314509 (regex!3944 lt!741162))))))

(declare-fun d!589831 () Bool)

(assert (=> d!589831 e!1236294))

(declare-fun c!314623 () Bool)

(assert (=> d!589831 (= c!314623 ((_ is EmptyExpr!5369) (regex!3944 lt!741162)))))

(assert (=> d!589831 (= lt!741401 e!1236292)))

(declare-fun c!314624 () Bool)

(assert (=> d!589831 (= c!314624 (isEmpty!13567 lt!741174))))

(assert (=> d!589831 (validRegex!2142 (regex!3944 lt!741162))))

(assert (=> d!589831 (= (matchR!2637 (regex!3944 lt!741162) lt!741174) lt!741401)))

(declare-fun b!1934169 () Bool)

(assert (=> b!1934169 (= e!1236296 (not (= (head!4509 lt!741174) (c!314509 (regex!3944 lt!741162)))))))

(declare-fun b!1934173 () Bool)

(assert (=> b!1934173 (= e!1236291 (not lt!741401))))

(declare-fun b!1934174 () Bool)

(assert (=> b!1934174 (= e!1236294 e!1236291)))

(declare-fun c!314622 () Bool)

(assert (=> b!1934174 (= c!314622 ((_ is EmptyLang!5369) (regex!3944 lt!741162)))))

(declare-fun b!1934175 () Bool)

(assert (=> b!1934175 (= e!1236290 e!1236296)))

(declare-fun res!864830 () Bool)

(assert (=> b!1934175 (=> res!864830 e!1236296)))

(assert (=> b!1934175 (= res!864830 call!118970)))

(declare-fun b!1934176 () Bool)

(declare-fun res!864824 () Bool)

(assert (=> b!1934176 (=> res!864824 e!1236293)))

(assert (=> b!1934176 (= res!864824 e!1236295)))

(declare-fun res!864827 () Bool)

(assert (=> b!1934176 (=> (not res!864827) (not e!1236295))))

(assert (=> b!1934176 (= res!864827 lt!741401)))

(assert (= (and d!589831 c!314624) b!1934171))

(assert (= (and d!589831 (not c!314624)) b!1934165))

(assert (= (and d!589831 c!314623) b!1934167))

(assert (= (and d!589831 (not c!314623)) b!1934174))

(assert (= (and b!1934174 c!314622) b!1934173))

(assert (= (and b!1934174 (not c!314622)) b!1934164))

(assert (= (and b!1934164 (not res!864831)) b!1934176))

(assert (= (and b!1934176 res!864827) b!1934168))

(assert (= (and b!1934168 res!864828) b!1934166))

(assert (= (and b!1934166 res!864829) b!1934172))

(assert (= (and b!1934176 (not res!864824)) b!1934163))

(assert (= (and b!1934163 res!864826) b!1934175))

(assert (= (and b!1934175 (not res!864830)) b!1934170))

(assert (= (and b!1934170 (not res!864825)) b!1934169))

(assert (= (or b!1934167 b!1934168 b!1934175) bm!118965))

(declare-fun m!2372981 () Bool)

(assert (=> b!1934170 m!2372981))

(assert (=> b!1934170 m!2372981))

(declare-fun m!2372983 () Bool)

(assert (=> b!1934170 m!2372983))

(declare-fun m!2372985 () Bool)

(assert (=> b!1934165 m!2372985))

(assert (=> b!1934165 m!2372985))

(declare-fun m!2372987 () Bool)

(assert (=> b!1934165 m!2372987))

(assert (=> b!1934165 m!2372981))

(assert (=> b!1934165 m!2372987))

(assert (=> b!1934165 m!2372981))

(declare-fun m!2372989 () Bool)

(assert (=> b!1934165 m!2372989))

(declare-fun m!2372991 () Bool)

(assert (=> d!589831 m!2372991))

(declare-fun m!2372993 () Bool)

(assert (=> d!589831 m!2372993))

(assert (=> b!1934172 m!2372985))

(assert (=> bm!118965 m!2372991))

(assert (=> b!1934166 m!2372981))

(assert (=> b!1934166 m!2372981))

(assert (=> b!1934166 m!2372983))

(declare-fun m!2372995 () Bool)

(assert (=> b!1934171 m!2372995))

(assert (=> b!1934169 m!2372985))

(assert (=> b!1933520 d!589831))

(declare-fun d!589833 () Bool)

(assert (=> d!589833 (= (get!6932 lt!741161) (v!26679 lt!741161))))

(assert (=> b!1933520 d!589833))

(declare-fun bs!415160 () Bool)

(declare-fun d!589835 () Bool)

(assert (= bs!415160 (and d!589835 b!1933516)))

(declare-fun lambda!75395 () Int)

(assert (=> bs!415160 (not (= lambda!75395 lambda!75371))))

(declare-fun bs!415161 () Bool)

(assert (= bs!415161 (and d!589835 b!1933975)))

(assert (=> bs!415161 (= lambda!75395 lambda!75389)))

(declare-fun b!1934185 () Bool)

(declare-fun e!1236305 () Bool)

(assert (=> b!1934185 (= e!1236305 true)))

(declare-fun b!1934184 () Bool)

(declare-fun e!1236304 () Bool)

(assert (=> b!1934184 (= e!1236304 e!1236305)))

(declare-fun b!1934183 () Bool)

(declare-fun e!1236303 () Bool)

(assert (=> b!1934183 (= e!1236303 e!1236304)))

(assert (=> d!589835 e!1236303))

(assert (= b!1934184 b!1934185))

(assert (= b!1934183 b!1934184))

(assert (= (and d!589835 ((_ is Cons!21984) rules!3198)) b!1934183))

(assert (=> b!1934185 (< (dynLambda!10697 order!13847 (toValue!5585 (transformation!3944 (h!27385 rules!3198)))) (dynLambda!10703 order!13855 lambda!75395))))

(assert (=> b!1934185 (< (dynLambda!10699 order!13851 (toChars!5444 (transformation!3944 (h!27385 rules!3198)))) (dynLambda!10703 order!13855 lambda!75395))))

(assert (=> d!589835 true))

(declare-fun lt!741404 () Bool)

(assert (=> d!589835 (= lt!741404 (forall!4650 tokens!598 lambda!75395))))

(declare-fun e!1236302 () Bool)

(assert (=> d!589835 (= lt!741404 e!1236302)))

(declare-fun res!864836 () Bool)

(assert (=> d!589835 (=> res!864836 e!1236302)))

(assert (=> d!589835 (= res!864836 (not ((_ is Cons!21985) tokens!598)))))

(assert (=> d!589835 (not (isEmpty!13564 rules!3198))))

(assert (=> d!589835 (= (rulesProduceEachTokenIndividuallyList!1288 thiss!23328 rules!3198 tokens!598) lt!741404)))

(declare-fun b!1934181 () Bool)

(declare-fun e!1236301 () Bool)

(assert (=> b!1934181 (= e!1236302 e!1236301)))

(declare-fun res!864837 () Bool)

(assert (=> b!1934181 (=> (not res!864837) (not e!1236301))))

(assert (=> b!1934181 (= res!864837 (rulesProduceIndividualToken!1729 thiss!23328 rules!3198 (h!27386 tokens!598)))))

(declare-fun b!1934182 () Bool)

(assert (=> b!1934182 (= e!1236301 (rulesProduceEachTokenIndividuallyList!1288 thiss!23328 rules!3198 (t!180606 tokens!598)))))

(assert (= (and d!589835 (not res!864836)) b!1934181))

(assert (= (and b!1934181 res!864837) b!1934182))

(declare-fun m!2372997 () Bool)

(assert (=> d!589835 m!2372997))

(assert (=> d!589835 m!2372173))

(assert (=> b!1934181 m!2372171))

(declare-fun m!2372999 () Bool)

(assert (=> b!1934182 m!2372999))

(assert (=> b!1933532 d!589835))

(declare-fun e!1236308 () Bool)

(assert (=> b!1933539 (= tp!551799 e!1236308)))

(declare-fun b!1934198 () Bool)

(declare-fun tp!551882 () Bool)

(assert (=> b!1934198 (= e!1236308 tp!551882)))

(declare-fun b!1934196 () Bool)

(declare-fun tp_is_empty!9153 () Bool)

(assert (=> b!1934196 (= e!1236308 tp_is_empty!9153)))

(declare-fun b!1934199 () Bool)

(declare-fun tp!551883 () Bool)

(declare-fun tp!551881 () Bool)

(assert (=> b!1934199 (= e!1236308 (and tp!551883 tp!551881))))

(declare-fun b!1934197 () Bool)

(declare-fun tp!551884 () Bool)

(declare-fun tp!551885 () Bool)

(assert (=> b!1934197 (= e!1236308 (and tp!551884 tp!551885))))

(assert (= (and b!1933539 ((_ is ElementMatch!5369) (regex!3944 (h!27385 rules!3198)))) b!1934196))

(assert (= (and b!1933539 ((_ is Concat!9450) (regex!3944 (h!27385 rules!3198)))) b!1934197))

(assert (= (and b!1933539 ((_ is Star!5369) (regex!3944 (h!27385 rules!3198)))) b!1934198))

(assert (= (and b!1933539 ((_ is Union!5369) (regex!3944 (h!27385 rules!3198)))) b!1934199))

(declare-fun b!1934204 () Bool)

(declare-fun e!1236311 () Bool)

(declare-fun tp!551888 () Bool)

(assert (=> b!1934204 (= e!1236311 (and tp_is_empty!9153 tp!551888))))

(assert (=> b!1933540 (= tp!551803 e!1236311)))

(assert (= (and b!1933540 ((_ is Cons!21982) (originalCharacters!4751 (h!27386 tokens!598)))) b!1934204))

(declare-fun b!1934205 () Bool)

(declare-fun e!1236312 () Bool)

(declare-fun tp!551889 () Bool)

(assert (=> b!1934205 (= e!1236312 (and tp_is_empty!9153 tp!551889))))

(assert (=> b!1933526 (= tp!551793 e!1236312)))

(assert (= (and b!1933526 ((_ is Cons!21982) (originalCharacters!4751 separatorToken!354))) b!1934205))

(declare-fun b!1934216 () Bool)

(declare-fun b_free!55453 () Bool)

(declare-fun b_next!56157 () Bool)

(assert (=> b!1934216 (= b_free!55453 (not b_next!56157))))

(declare-fun t!180700 () Bool)

(declare-fun tb!118965 () Bool)

(assert (=> (and b!1934216 (= (toValue!5585 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180700) tb!118965))

(declare-fun result!143658 () Bool)

(assert (= result!143658 result!143590))

(assert (=> d!589687 t!180700))

(declare-fun t!180702 () Bool)

(declare-fun tb!118967 () Bool)

(assert (=> (and b!1934216 (= (toValue!5585 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180702) tb!118967))

(declare-fun result!143660 () Bool)

(assert (= result!143660 result!143598))

(assert (=> d!589687 t!180702))

(assert (=> d!589751 t!180700))

(declare-fun tp!551900 () Bool)

(declare-fun b_and!152375 () Bool)

(assert (=> b!1934216 (= tp!551900 (and (=> t!180700 result!143658) (=> t!180702 result!143660) b_and!152375))))

(declare-fun b_free!55455 () Bool)

(declare-fun b_next!56159 () Bool)

(assert (=> b!1934216 (= b_free!55455 (not b_next!56159))))

(declare-fun t!180704 () Bool)

(declare-fun tb!118969 () Bool)

(assert (=> (and b!1934216 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180704) tb!118969))

(declare-fun result!143662 () Bool)

(assert (= result!143662 result!143618))

(assert (=> b!1934161 t!180704))

(declare-fun t!180706 () Bool)

(declare-fun tb!118971 () Bool)

(assert (=> (and b!1934216 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180706) tb!118971))

(declare-fun result!143664 () Bool)

(assert (= result!143664 result!143612))

(assert (=> d!589751 t!180706))

(declare-fun t!180708 () Bool)

(declare-fun tb!118973 () Bool)

(assert (=> (and b!1934216 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354)))) t!180708) tb!118973))

(declare-fun result!143666 () Bool)

(assert (= result!143666 result!143604))

(assert (=> d!589735 t!180708))

(assert (=> d!589783 t!180704))

(assert (=> b!1934018 t!180708))

(declare-fun b_and!152377 () Bool)

(declare-fun tp!551898 () Bool)

(assert (=> b!1934216 (= tp!551898 (and (=> t!180708 result!143666) (=> t!180704 result!143662) (=> t!180706 result!143664) b_and!152377))))

(declare-fun e!1236321 () Bool)

(assert (=> b!1934216 (= e!1236321 (and tp!551900 tp!551898))))

(declare-fun b!1934215 () Bool)

(declare-fun tp!551899 () Bool)

(declare-fun e!1236324 () Bool)

(assert (=> b!1934215 (= e!1236324 (and tp!551899 (inv!29074 (tag!4398 (h!27385 (t!180605 rules!3198)))) (inv!29078 (transformation!3944 (h!27385 (t!180605 rules!3198)))) e!1236321))))

(declare-fun b!1934214 () Bool)

(declare-fun e!1236322 () Bool)

(declare-fun tp!551901 () Bool)

(assert (=> b!1934214 (= e!1236322 (and e!1236324 tp!551901))))

(assert (=> b!1933523 (= tp!551804 e!1236322)))

(assert (= b!1934215 b!1934216))

(assert (= b!1934214 b!1934215))

(assert (= (and b!1933523 ((_ is Cons!21984) (t!180605 rules!3198))) b!1934214))

(declare-fun m!2373001 () Bool)

(assert (=> b!1934215 m!2373001))

(declare-fun m!2373003 () Bool)

(assert (=> b!1934215 m!2373003))

(declare-fun e!1236325 () Bool)

(assert (=> b!1933525 (= tp!551794 e!1236325)))

(declare-fun b!1934219 () Bool)

(declare-fun tp!551903 () Bool)

(assert (=> b!1934219 (= e!1236325 tp!551903)))

(declare-fun b!1934217 () Bool)

(assert (=> b!1934217 (= e!1236325 tp_is_empty!9153)))

(declare-fun b!1934220 () Bool)

(declare-fun tp!551904 () Bool)

(declare-fun tp!551902 () Bool)

(assert (=> b!1934220 (= e!1236325 (and tp!551904 tp!551902))))

(declare-fun b!1934218 () Bool)

(declare-fun tp!551905 () Bool)

(declare-fun tp!551906 () Bool)

(assert (=> b!1934218 (= e!1236325 (and tp!551905 tp!551906))))

(assert (= (and b!1933525 ((_ is ElementMatch!5369) (regex!3944 (rule!6153 separatorToken!354)))) b!1934217))

(assert (= (and b!1933525 ((_ is Concat!9450) (regex!3944 (rule!6153 separatorToken!354)))) b!1934218))

(assert (= (and b!1933525 ((_ is Star!5369) (regex!3944 (rule!6153 separatorToken!354)))) b!1934219))

(assert (= (and b!1933525 ((_ is Union!5369) (regex!3944 (rule!6153 separatorToken!354)))) b!1934220))

(declare-fun e!1236326 () Bool)

(assert (=> b!1933524 (= tp!551797 e!1236326)))

(declare-fun b!1934223 () Bool)

(declare-fun tp!551908 () Bool)

(assert (=> b!1934223 (= e!1236326 tp!551908)))

(declare-fun b!1934221 () Bool)

(assert (=> b!1934221 (= e!1236326 tp_is_empty!9153)))

(declare-fun b!1934224 () Bool)

(declare-fun tp!551909 () Bool)

(declare-fun tp!551907 () Bool)

(assert (=> b!1934224 (= e!1236326 (and tp!551909 tp!551907))))

(declare-fun b!1934222 () Bool)

(declare-fun tp!551910 () Bool)

(declare-fun tp!551911 () Bool)

(assert (=> b!1934222 (= e!1236326 (and tp!551910 tp!551911))))

(assert (= (and b!1933524 ((_ is ElementMatch!5369) (regex!3944 (rule!6153 (h!27386 tokens!598))))) b!1934221))

(assert (= (and b!1933524 ((_ is Concat!9450) (regex!3944 (rule!6153 (h!27386 tokens!598))))) b!1934222))

(assert (= (and b!1933524 ((_ is Star!5369) (regex!3944 (rule!6153 (h!27386 tokens!598))))) b!1934223))

(assert (= (and b!1933524 ((_ is Union!5369) (regex!3944 (rule!6153 (h!27386 tokens!598))))) b!1934224))

(declare-fun b!1934238 () Bool)

(declare-fun b_free!55457 () Bool)

(declare-fun b_next!56161 () Bool)

(assert (=> b!1934238 (= b_free!55457 (not b_next!56161))))

(declare-fun t!180710 () Bool)

(declare-fun tb!118975 () Bool)

(assert (=> (and b!1934238 (= (toValue!5585 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180710) tb!118975))

(declare-fun result!143670 () Bool)

(assert (= result!143670 result!143590))

(assert (=> d!589687 t!180710))

(declare-fun t!180712 () Bool)

(declare-fun tb!118977 () Bool)

(assert (=> (and b!1934238 (= (toValue!5585 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180712) tb!118977))

(declare-fun result!143672 () Bool)

(assert (= result!143672 result!143598))

(assert (=> d!589687 t!180712))

(assert (=> d!589751 t!180710))

(declare-fun tp!551923 () Bool)

(declare-fun b_and!152379 () Bool)

(assert (=> b!1934238 (= tp!551923 (and (=> t!180710 result!143670) (=> t!180712 result!143672) b_and!152379))))

(declare-fun b_free!55459 () Bool)

(declare-fun b_next!56163 () Bool)

(assert (=> b!1934238 (= b_free!55459 (not b_next!56163))))

(declare-fun t!180714 () Bool)

(declare-fun tb!118979 () Bool)

(assert (=> (and b!1934238 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180714) tb!118979))

(declare-fun result!143674 () Bool)

(assert (= result!143674 result!143618))

(assert (=> b!1934161 t!180714))

(declare-fun t!180716 () Bool)

(declare-fun tb!118981 () Bool)

(assert (=> (and b!1934238 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180716) tb!118981))

(declare-fun result!143676 () Bool)

(assert (= result!143676 result!143612))

(assert (=> d!589751 t!180716))

(declare-fun tb!118983 () Bool)

(declare-fun t!180718 () Bool)

(assert (=> (and b!1934238 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354)))) t!180718) tb!118983))

(declare-fun result!143678 () Bool)

(assert (= result!143678 result!143604))

(assert (=> d!589735 t!180718))

(assert (=> d!589783 t!180714))

(assert (=> b!1934018 t!180718))

(declare-fun b_and!152381 () Bool)

(declare-fun tp!551924 () Bool)

(assert (=> b!1934238 (= tp!551924 (and (=> t!180716 result!143676) (=> t!180714 result!143674) (=> t!180718 result!143678) b_and!152381))))

(declare-fun tp!551926 () Bool)

(declare-fun e!1236344 () Bool)

(declare-fun e!1236339 () Bool)

(declare-fun b!1934236 () Bool)

(assert (=> b!1934236 (= e!1236344 (and (inv!21 (value!123995 (h!27386 (t!180606 tokens!598)))) e!1236339 tp!551926))))

(declare-fun tp!551922 () Bool)

(declare-fun b!1934235 () Bool)

(declare-fun e!1236342 () Bool)

(assert (=> b!1934235 (= e!1236342 (and (inv!29077 (h!27386 (t!180606 tokens!598))) e!1236344 tp!551922))))

(declare-fun tp!551925 () Bool)

(declare-fun e!1236341 () Bool)

(declare-fun b!1934237 () Bool)

(assert (=> b!1934237 (= e!1236339 (and tp!551925 (inv!29074 (tag!4398 (rule!6153 (h!27386 (t!180606 tokens!598))))) (inv!29078 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) e!1236341))))

(assert (=> b!1934238 (= e!1236341 (and tp!551923 tp!551924))))

(assert (=> b!1933521 (= tp!551802 e!1236342)))

(assert (= b!1934237 b!1934238))

(assert (= b!1934236 b!1934237))

(assert (= b!1934235 b!1934236))

(assert (= (and b!1933521 ((_ is Cons!21985) (t!180606 tokens!598))) b!1934235))

(declare-fun m!2373005 () Bool)

(assert (=> b!1934236 m!2373005))

(declare-fun m!2373007 () Bool)

(assert (=> b!1934235 m!2373007))

(declare-fun m!2373009 () Bool)

(assert (=> b!1934237 m!2373009))

(declare-fun m!2373011 () Bool)

(assert (=> b!1934237 m!2373011))

(declare-fun b_lambda!64355 () Bool)

(assert (= b_lambda!64333 (or (and b!1934238 b_free!55459 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))))) (and b!1933530 b_free!55439 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))))) (and b!1933531 b_free!55435) (and b!1934216 b_free!55455 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))))) (and b!1933518 b_free!55443 (= (toChars!5444 (transformation!3944 (h!27385 rules!3198))) (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))))) b_lambda!64355)))

(declare-fun b_lambda!64357 () Bool)

(assert (= b_lambda!64323 (or (and b!1934238 b_free!55459 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) (and b!1933518 b_free!55443 (= (toChars!5444 (transformation!3944 (h!27385 rules!3198))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) (and b!1933530 b_free!55439) (and b!1934216 b_free!55455 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) (and b!1933531 b_free!55435 (= (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) b_lambda!64357)))

(declare-fun b_lambda!64359 () Bool)

(assert (= b_lambda!64317 (or (and b!1934216 b_free!55453 (= (toValue!5585 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) (and b!1934238 b_free!55457 (= (toValue!5585 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) (and b!1933530 b_free!55437) (and b!1933518 b_free!55441 (= (toValue!5585 (transformation!3944 (h!27385 rules!3198))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) (and b!1933531 b_free!55433 (= (toValue!5585 (transformation!3944 (rule!6153 separatorToken!354))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) b_lambda!64359)))

(declare-fun b_lambda!64361 () Bool)

(assert (= b_lambda!64325 (or (and b!1934216 b_free!55453 (= (toValue!5585 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) (and b!1934238 b_free!55457 (= (toValue!5585 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) (and b!1933530 b_free!55437) (and b!1933518 b_free!55441 (= (toValue!5585 (transformation!3944 (h!27385 rules!3198))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) (and b!1933531 b_free!55433 (= (toValue!5585 (transformation!3944 (rule!6153 separatorToken!354))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) b_lambda!64361)))

(declare-fun b_lambda!64363 () Bool)

(assert (= b_lambda!64353 (or (and b!1934238 b_free!55459 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) (and b!1933518 b_free!55443 (= (toChars!5444 (transformation!3944 (h!27385 rules!3198))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) (and b!1933530 b_free!55439) (and b!1934216 b_free!55455 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) (and b!1933531 b_free!55435 (= (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) b_lambda!64363)))

(declare-fun b_lambda!64365 () Bool)

(assert (= b_lambda!64321 (or (and b!1934238 b_free!55459 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))))) (and b!1933530 b_free!55439 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))))) (and b!1933531 b_free!55435) (and b!1934216 b_free!55455 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))))) (and b!1933518 b_free!55443 (= (toChars!5444 (transformation!3944 (h!27385 rules!3198))) (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))))) b_lambda!64365)))

(declare-fun b_lambda!64367 () Bool)

(assert (= b_lambda!64319 (or (and b!1934216 b_free!55453 (= (toValue!5585 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) (and b!1934238 b_free!55457 (= (toValue!5585 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) (and b!1933530 b_free!55437) (and b!1933518 b_free!55441 (= (toValue!5585 (transformation!3944 (h!27385 rules!3198))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) (and b!1933531 b_free!55433 (= (toValue!5585 (transformation!3944 (rule!6153 separatorToken!354))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) b_lambda!64367)))

(declare-fun b_lambda!64369 () Bool)

(assert (= b_lambda!64329 (or (and b!1934238 b_free!55459 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) (and b!1933518 b_free!55443 (= (toChars!5444 (transformation!3944 (h!27385 rules!3198))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) (and b!1933530 b_free!55439) (and b!1934216 b_free!55455 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) (and b!1933531 b_free!55435 (= (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) b_lambda!64369)))

(declare-fun b_lambda!64371 () Bool)

(assert (= b_lambda!64331 (or b!1933516 b_lambda!64371)))

(declare-fun bs!415162 () Bool)

(declare-fun d!589837 () Bool)

(assert (= bs!415162 (and d!589837 b!1933516)))

(assert (=> bs!415162 (= (dynLambda!10704 lambda!75371 (h!27386 tokens!598)) (not (isSeparator!3944 (rule!6153 (h!27386 tokens!598)))))))

(assert (=> b!1934006 d!589837))

(check-sat (not b!1933995) (not bm!118958) (not tb!118933) (not tb!118939) (not d!589831) (not b!1933632) (not b!1934019) (not d!589753) (not b!1933992) (not d!589735) (not b!1933998) (not b_next!56161) (not d!589675) (not b_next!56159) (not b!1934161) (not b!1934160) (not d!589783) (not b_lambda!64363) (not b_lambda!64369) (not b!1933614) (not b!1934151) (not b!1934198) (not d!589751) (not b_next!56137) b_and!152377 (not b!1934224) (not b!1933915) (not b!1933996) (not b!1933613) (not b_lambda!64357) (not d!589781) (not d!589661) (not b!1933695) (not b_next!56147) b_and!152337 (not b!1934165) (not b!1934166) (not b!1934222) (not b!1934012) (not d!589677) (not d!589737) (not d!589733) (not b!1933668) (not b!1934001) (not d!589827) (not b!1933869) (not b!1933644) (not b!1933648) (not b_lambda!64365) (not bm!118956) (not tb!118915) (not b!1933972) (not d!589651) (not b!1933990) (not b!1933900) (not d!589829) (not b!1934197) (not d!589785) (not b!1933968) (not bm!118960) (not d!589817) (not b!1934205) (not d!589793) b_and!152373 (not b_next!56143) (not b!1933969) (not b!1933612) (not b!1933843) b_and!152381 (not d!589803) b_and!152341 (not b_lambda!64355) (not d!589745) (not b!1933650) (not d!589779) (not d!589801) (not b!1934169) (not b!1933659) (not b!1933902) (not b!1933645) (not b!1934237) (not d!589835) (not d!589669) (not b!1934219) (not b!1933678) (not b!1933916) b_and!152375 (not b!1933870) (not b!1934182) (not b!1934171) (not d!589681) (not d!589825) (not b!1933608) (not b!1933917) (not b!1933611) (not b!1934181) (not b_lambda!64367) (not b!1934007) (not bm!118925) (not b!1934220) (not b_next!56141) (not tb!118927) (not b!1933907) (not d!589741) (not b!1933906) (not b_lambda!64359) (not b!1934156) (not b!1934152) tp_is_empty!9153 (not d!589799) (not b!1933999) (not b!1933636) (not b_next!56145) (not b!1933664) (not d!589787) (not b_lambda!64371) (not d!589679) (not b!1933874) (not d!589789) (not b!1934214) (not d!589683) (not b!1934236) (not b!1933694) (not b!1934218) (not b!1933621) (not b!1934018) (not b_next!56157) (not b!1934170) (not b_next!56139) (not b!1934157) (not b!1934223) (not b!1934154) (not b!1934235) (not b!1934199) (not b!1933868) (not b!1933634) (not d!589687) (not b!1933993) (not b!1934000) (not d!589673) (not b!1933643) (not b!1934172) b_and!152369 (not b!1934153) (not b!1933991) b_and!152371 (not b!1933975) (not b!1934013) (not d!589665) (not b!1933984) (not b!1933872) b_and!152379 (not b!1934204) (not b!1933908) (not d!589821) b_and!152339 (not b!1933994) (not b!1933871) (not b_next!56163) (not b!1933876) (not tb!118921) (not b!1933901) (not bm!118965) (not b!1933989) (not b_lambda!64361) (not b!1933679) (not b!1934215) (not b!1934162) (not bm!118955) (not b!1934183) (not bm!118944) (not b!1933646) (not b!1933657) (not b!1933873) (not b!1933607))
(check-sat (not b_next!56161) (not b_next!56159) b_and!152375 (not b_next!56141) (not b_next!56145) (not b_next!56157) (not b_next!56139) (not b_next!56163) (not b_next!56137) b_and!152377 (not b_next!56147) b_and!152337 (not b_next!56143) b_and!152373 b_and!152381 b_and!152341 b_and!152369 b_and!152371 b_and!152339 b_and!152379)
(get-model)

(declare-fun d!589913 () Bool)

(assert (=> d!589913 (= (isEmpty!13571 lt!741305) (not ((_ is Some!4565) lt!741305)))))

(assert (=> d!589737 d!589913))

(declare-fun e!1236425 () Bool)

(declare-fun b!1934380 () Bool)

(assert (=> b!1934380 (= e!1236425 (isPrefix!1949 (tail!2995 (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))) (tail!2995 (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)))))))

(declare-fun d!589915 () Bool)

(declare-fun e!1236424 () Bool)

(assert (=> d!589915 e!1236424))

(declare-fun res!864888 () Bool)

(assert (=> d!589915 (=> res!864888 e!1236424)))

(declare-fun lt!741444 () Bool)

(assert (=> d!589915 (= res!864888 (not lt!741444))))

(declare-fun e!1236423 () Bool)

(assert (=> d!589915 (= lt!741444 e!1236423)))

(declare-fun res!864891 () Bool)

(assert (=> d!589915 (=> res!864891 e!1236423)))

(assert (=> d!589915 (= res!864891 ((_ is Nil!21982) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))))))

(assert (=> d!589915 (= (isPrefix!1949 (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))) lt!741444)))

(declare-fun b!1934378 () Bool)

(assert (=> b!1934378 (= e!1236423 e!1236425)))

(declare-fun res!864889 () Bool)

(assert (=> b!1934378 (=> (not res!864889) (not e!1236425))))

(assert (=> b!1934378 (= res!864889 (not ((_ is Nil!21982) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)))))))

(declare-fun b!1934381 () Bool)

(assert (=> b!1934381 (= e!1236424 (>= (size!17151 (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))) (size!17151 (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)))))))

(declare-fun b!1934379 () Bool)

(declare-fun res!864890 () Bool)

(assert (=> b!1934379 (=> (not res!864890) (not e!1236425))))

(assert (=> b!1934379 (= res!864890 (= (head!4509 (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))) (head!4509 (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)))))))

(assert (= (and d!589915 (not res!864891)) b!1934378))

(assert (= (and b!1934378 res!864889) b!1934379))

(assert (= (and b!1934379 res!864890) b!1934380))

(assert (= (and d!589915 (not res!864888)) b!1934381))

(assert (=> b!1934380 m!2372135))

(declare-fun m!2373149 () Bool)

(assert (=> b!1934380 m!2373149))

(assert (=> b!1934380 m!2372135))

(assert (=> b!1934380 m!2373149))

(assert (=> b!1934380 m!2373149))

(assert (=> b!1934380 m!2373149))

(declare-fun m!2373151 () Bool)

(assert (=> b!1934380 m!2373151))

(assert (=> b!1934381 m!2372135))

(assert (=> b!1934381 m!2372627))

(assert (=> b!1934381 m!2372135))

(assert (=> b!1934381 m!2372627))

(assert (=> b!1934379 m!2372135))

(declare-fun m!2373153 () Bool)

(assert (=> b!1934379 m!2373153))

(assert (=> b!1934379 m!2372135))

(assert (=> b!1934379 m!2373153))

(assert (=> d!589737 d!589915))

(declare-fun d!589917 () Bool)

(assert (=> d!589917 (isPrefix!1949 (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)))))

(declare-fun lt!741447 () Unit!36346)

(declare-fun choose!12015 (List!22064 List!22064) Unit!36346)

(assert (=> d!589917 (= lt!741447 (choose!12015 (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))))))

(assert (=> d!589917 (= (lemmaIsPrefixRefl!1267 (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))) lt!741447)))

(declare-fun bs!415179 () Bool)

(assert (= bs!415179 d!589917))

(assert (=> bs!415179 m!2372135))

(assert (=> bs!415179 m!2372135))

(assert (=> bs!415179 m!2372605))

(assert (=> bs!415179 m!2372135))

(assert (=> bs!415179 m!2372135))

(declare-fun m!2373155 () Bool)

(assert (=> bs!415179 m!2373155))

(assert (=> d!589737 d!589917))

(declare-fun d!589919 () Bool)

(assert (=> d!589919 true))

(declare-fun lt!741450 () Bool)

(declare-fun lambda!75405 () Int)

(declare-fun forall!4652 (List!22066 Int) Bool)

(assert (=> d!589919 (= lt!741450 (forall!4652 rules!3198 lambda!75405))))

(declare-fun e!1236430 () Bool)

(assert (=> d!589919 (= lt!741450 e!1236430)))

(declare-fun res!864897 () Bool)

(assert (=> d!589919 (=> res!864897 e!1236430)))

(assert (=> d!589919 (= res!864897 (not ((_ is Cons!21984) rules!3198)))))

(assert (=> d!589919 (= (rulesValidInductive!1348 thiss!23328 rules!3198) lt!741450)))

(declare-fun b!1934386 () Bool)

(declare-fun e!1236431 () Bool)

(assert (=> b!1934386 (= e!1236430 e!1236431)))

(declare-fun res!864896 () Bool)

(assert (=> b!1934386 (=> (not res!864896) (not e!1236431))))

(declare-fun ruleValid!1199 (LexerInterface!3557 Rule!7688) Bool)

(assert (=> b!1934386 (= res!864896 (ruleValid!1199 thiss!23328 (h!27385 rules!3198)))))

(declare-fun b!1934387 () Bool)

(assert (=> b!1934387 (= e!1236431 (rulesValidInductive!1348 thiss!23328 (t!180605 rules!3198)))))

(assert (= (and d!589919 (not res!864897)) b!1934386))

(assert (= (and b!1934386 res!864896) b!1934387))

(declare-fun m!2373157 () Bool)

(assert (=> d!589919 m!2373157))

(declare-fun m!2373159 () Bool)

(assert (=> b!1934386 m!2373159))

(declare-fun m!2373161 () Bool)

(assert (=> b!1934387 m!2373161))

(assert (=> d!589737 d!589919))

(declare-fun d!589921 () Bool)

(assert (=> d!589921 (= (list!8905 lt!741378) (list!8908 (c!314508 lt!741378)))))

(declare-fun bs!415180 () Bool)

(assert (= bs!415180 d!589921))

(declare-fun m!2373163 () Bool)

(assert (=> bs!415180 m!2373163))

(assert (=> d!589783 d!589921))

(declare-fun b!1934390 () Bool)

(declare-fun e!1236435 () Bool)

(declare-fun e!1236432 () Bool)

(assert (=> b!1934390 (= e!1236435 e!1236432)))

(declare-fun res!864900 () Bool)

(assert (=> b!1934390 (=> (not res!864900) (not e!1236432))))

(declare-fun lt!741451 () Bool)

(assert (=> b!1934390 (= res!864900 (not lt!741451))))

(declare-fun b!1934391 () Bool)

(declare-fun res!864905 () Bool)

(assert (=> b!1934391 (=> res!864905 e!1236435)))

(assert (=> b!1934391 (= res!864905 (not ((_ is ElementMatch!5369) (regex!3944 (rule!6153 (_1!11772 (get!6933 lt!741305)))))))))

(declare-fun e!1236433 () Bool)

(assert (=> b!1934391 (= e!1236433 e!1236435)))

(declare-fun bm!118980 () Bool)

(declare-fun call!118985 () Bool)

(assert (=> bm!118980 (= call!118985 (isEmpty!13567 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741305))))))))

(declare-fun b!1934392 () Bool)

(declare-fun e!1236434 () Bool)

(assert (=> b!1934392 (= e!1236434 (matchR!2637 (derivativeStep!1375 (regex!3944 (rule!6153 (_1!11772 (get!6933 lt!741305)))) (head!4509 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741305)))))) (tail!2995 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741305)))))))))

(declare-fun b!1934393 () Bool)

(declare-fun res!864903 () Bool)

(declare-fun e!1236437 () Bool)

(assert (=> b!1934393 (=> (not res!864903) (not e!1236437))))

(assert (=> b!1934393 (= res!864903 (isEmpty!13567 (tail!2995 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741305)))))))))

(declare-fun b!1934394 () Bool)

(declare-fun e!1236436 () Bool)

(assert (=> b!1934394 (= e!1236436 (= lt!741451 call!118985))))

(declare-fun b!1934395 () Bool)

(declare-fun res!864902 () Bool)

(assert (=> b!1934395 (=> (not res!864902) (not e!1236437))))

(assert (=> b!1934395 (= res!864902 (not call!118985))))

(declare-fun b!1934397 () Bool)

(declare-fun res!864899 () Bool)

(declare-fun e!1236438 () Bool)

(assert (=> b!1934397 (=> res!864899 e!1236438)))

(assert (=> b!1934397 (= res!864899 (not (isEmpty!13567 (tail!2995 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741305))))))))))

(declare-fun b!1934398 () Bool)

(assert (=> b!1934398 (= e!1236434 (nullable!1616 (regex!3944 (rule!6153 (_1!11772 (get!6933 lt!741305))))))))

(declare-fun b!1934399 () Bool)

(assert (=> b!1934399 (= e!1236437 (= (head!4509 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741305))))) (c!314509 (regex!3944 (rule!6153 (_1!11772 (get!6933 lt!741305)))))))))

(declare-fun d!589923 () Bool)

(assert (=> d!589923 e!1236436))

(declare-fun c!314667 () Bool)

(assert (=> d!589923 (= c!314667 ((_ is EmptyExpr!5369) (regex!3944 (rule!6153 (_1!11772 (get!6933 lt!741305))))))))

(assert (=> d!589923 (= lt!741451 e!1236434)))

(declare-fun c!314668 () Bool)

(assert (=> d!589923 (= c!314668 (isEmpty!13567 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741305))))))))

(assert (=> d!589923 (validRegex!2142 (regex!3944 (rule!6153 (_1!11772 (get!6933 lt!741305)))))))

(assert (=> d!589923 (= (matchR!2637 (regex!3944 (rule!6153 (_1!11772 (get!6933 lt!741305)))) (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741305))))) lt!741451)))

(declare-fun b!1934396 () Bool)

(assert (=> b!1934396 (= e!1236438 (not (= (head!4509 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741305))))) (c!314509 (regex!3944 (rule!6153 (_1!11772 (get!6933 lt!741305))))))))))

(declare-fun b!1934400 () Bool)

(assert (=> b!1934400 (= e!1236433 (not lt!741451))))

(declare-fun b!1934401 () Bool)

(assert (=> b!1934401 (= e!1236436 e!1236433)))

(declare-fun c!314666 () Bool)

(assert (=> b!1934401 (= c!314666 ((_ is EmptyLang!5369) (regex!3944 (rule!6153 (_1!11772 (get!6933 lt!741305))))))))

(declare-fun b!1934402 () Bool)

(assert (=> b!1934402 (= e!1236432 e!1236438)))

(declare-fun res!864904 () Bool)

(assert (=> b!1934402 (=> res!864904 e!1236438)))

(assert (=> b!1934402 (= res!864904 call!118985)))

(declare-fun b!1934403 () Bool)

(declare-fun res!864898 () Bool)

(assert (=> b!1934403 (=> res!864898 e!1236435)))

(assert (=> b!1934403 (= res!864898 e!1236437)))

(declare-fun res!864901 () Bool)

(assert (=> b!1934403 (=> (not res!864901) (not e!1236437))))

(assert (=> b!1934403 (= res!864901 lt!741451)))

(assert (= (and d!589923 c!314668) b!1934398))

(assert (= (and d!589923 (not c!314668)) b!1934392))

(assert (= (and d!589923 c!314667) b!1934394))

(assert (= (and d!589923 (not c!314667)) b!1934401))

(assert (= (and b!1934401 c!314666) b!1934400))

(assert (= (and b!1934401 (not c!314666)) b!1934391))

(assert (= (and b!1934391 (not res!864905)) b!1934403))

(assert (= (and b!1934403 res!864901) b!1934395))

(assert (= (and b!1934395 res!864902) b!1934393))

(assert (= (and b!1934393 res!864903) b!1934399))

(assert (= (and b!1934403 (not res!864898)) b!1934390))

(assert (= (and b!1934390 res!864900) b!1934402))

(assert (= (and b!1934402 (not res!864904)) b!1934397))

(assert (= (and b!1934397 (not res!864899)) b!1934396))

(assert (= (or b!1934394 b!1934395 b!1934402) bm!118980))

(assert (=> b!1934397 m!2372599))

(declare-fun m!2373165 () Bool)

(assert (=> b!1934397 m!2373165))

(assert (=> b!1934397 m!2373165))

(declare-fun m!2373167 () Bool)

(assert (=> b!1934397 m!2373167))

(assert (=> b!1934392 m!2372599))

(declare-fun m!2373169 () Bool)

(assert (=> b!1934392 m!2373169))

(assert (=> b!1934392 m!2373169))

(declare-fun m!2373171 () Bool)

(assert (=> b!1934392 m!2373171))

(assert (=> b!1934392 m!2372599))

(assert (=> b!1934392 m!2373165))

(assert (=> b!1934392 m!2373171))

(assert (=> b!1934392 m!2373165))

(declare-fun m!2373173 () Bool)

(assert (=> b!1934392 m!2373173))

(assert (=> d!589923 m!2372599))

(declare-fun m!2373175 () Bool)

(assert (=> d!589923 m!2373175))

(declare-fun m!2373177 () Bool)

(assert (=> d!589923 m!2373177))

(assert (=> b!1934399 m!2372599))

(assert (=> b!1934399 m!2373169))

(assert (=> bm!118980 m!2372599))

(assert (=> bm!118980 m!2373175))

(assert (=> b!1934393 m!2372599))

(assert (=> b!1934393 m!2373165))

(assert (=> b!1934393 m!2373165))

(assert (=> b!1934393 m!2373167))

(declare-fun m!2373179 () Bool)

(assert (=> b!1934398 m!2373179))

(assert (=> b!1934396 m!2372599))

(assert (=> b!1934396 m!2373169))

(assert (=> b!1933874 d!589923))

(declare-fun d!589925 () Bool)

(assert (=> d!589925 (= (get!6933 lt!741305) (v!26680 lt!741305))))

(assert (=> b!1933874 d!589925))

(declare-fun d!589927 () Bool)

(assert (=> d!589927 (= (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741305)))) (list!8908 (c!314508 (charsOf!2484 (_1!11772 (get!6933 lt!741305))))))))

(declare-fun bs!415181 () Bool)

(assert (= bs!415181 d!589927))

(declare-fun m!2373181 () Bool)

(assert (=> bs!415181 m!2373181))

(assert (=> b!1933874 d!589927))

(declare-fun d!589929 () Bool)

(declare-fun lt!741452 () BalanceConc!14500)

(assert (=> d!589929 (= (list!8905 lt!741452) (originalCharacters!4751 (_1!11772 (get!6933 lt!741305))))))

(assert (=> d!589929 (= lt!741452 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741305))))) (value!123995 (_1!11772 (get!6933 lt!741305)))))))

(assert (=> d!589929 (= (charsOf!2484 (_1!11772 (get!6933 lt!741305))) lt!741452)))

(declare-fun b_lambda!64375 () Bool)

(assert (=> (not b_lambda!64375) (not d!589929)))

(declare-fun t!180734 () Bool)

(declare-fun tb!118995 () Bool)

(assert (=> (and b!1933530 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (toChars!5444 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741305)))))) t!180734) tb!118995))

(declare-fun b!1934404 () Bool)

(declare-fun e!1236439 () Bool)

(declare-fun tp!551928 () Bool)

(assert (=> b!1934404 (= e!1236439 (and (inv!29081 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741305))))) (value!123995 (_1!11772 (get!6933 lt!741305)))))) tp!551928))))

(declare-fun result!143690 () Bool)

(assert (=> tb!118995 (= result!143690 (and (inv!29082 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741305))))) (value!123995 (_1!11772 (get!6933 lt!741305))))) e!1236439))))

(assert (= tb!118995 b!1934404))

(declare-fun m!2373183 () Bool)

(assert (=> b!1934404 m!2373183))

(declare-fun m!2373185 () Bool)

(assert (=> tb!118995 m!2373185))

(assert (=> d!589929 t!180734))

(declare-fun b_and!152393 () Bool)

(assert (= b_and!152371 (and (=> t!180734 result!143690) b_and!152393)))

(declare-fun t!180736 () Bool)

(declare-fun tb!118997 () Bool)

(assert (=> (and b!1933518 (= (toChars!5444 (transformation!3944 (h!27385 rules!3198))) (toChars!5444 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741305)))))) t!180736) tb!118997))

(declare-fun result!143692 () Bool)

(assert (= result!143692 result!143690))

(assert (=> d!589929 t!180736))

(declare-fun b_and!152395 () Bool)

(assert (= b_and!152373 (and (=> t!180736 result!143692) b_and!152395)))

(declare-fun t!180738 () Bool)

(declare-fun tb!118999 () Bool)

(assert (=> (and b!1933531 (= (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (toChars!5444 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741305)))))) t!180738) tb!118999))

(declare-fun result!143694 () Bool)

(assert (= result!143694 result!143690))

(assert (=> d!589929 t!180738))

(declare-fun b_and!152397 () Bool)

(assert (= b_and!152369 (and (=> t!180738 result!143694) b_and!152397)))

(declare-fun tb!119001 () Bool)

(declare-fun t!180740 () Bool)

(assert (=> (and b!1934238 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (toChars!5444 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741305)))))) t!180740) tb!119001))

(declare-fun result!143696 () Bool)

(assert (= result!143696 result!143690))

(assert (=> d!589929 t!180740))

(declare-fun b_and!152399 () Bool)

(assert (= b_and!152381 (and (=> t!180740 result!143696) b_and!152399)))

(declare-fun t!180742 () Bool)

(declare-fun tb!119003 () Bool)

(assert (=> (and b!1934216 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toChars!5444 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741305)))))) t!180742) tb!119003))

(declare-fun result!143698 () Bool)

(assert (= result!143698 result!143690))

(assert (=> d!589929 t!180742))

(declare-fun b_and!152401 () Bool)

(assert (= b_and!152377 (and (=> t!180742 result!143698) b_and!152401)))

(declare-fun m!2373187 () Bool)

(assert (=> d!589929 m!2373187))

(declare-fun m!2373189 () Bool)

(assert (=> d!589929 m!2373189))

(assert (=> b!1933874 d!589929))

(declare-fun d!589931 () Bool)

(declare-fun isBalanced!2273 (Conc!7342) Bool)

(assert (=> d!589931 (= (inv!29082 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168))) (isBalanced!2273 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168)))))))

(declare-fun bs!415182 () Bool)

(assert (= bs!415182 d!589931))

(declare-fun m!2373191 () Bool)

(assert (=> bs!415182 m!2373191))

(assert (=> tb!118933 d!589931))

(declare-fun d!589933 () Bool)

(declare-fun charsToBigInt!1 (List!22065) Int)

(assert (=> d!589933 (= (inv!17 (value!123995 separatorToken!354)) (= (charsToBigInt!1 (text!29008 (value!123995 separatorToken!354))) (value!123987 (value!123995 separatorToken!354))))))

(declare-fun bs!415183 () Bool)

(assert (= bs!415183 d!589933))

(declare-fun m!2373193 () Bool)

(assert (=> bs!415183 m!2373193))

(assert (=> b!1933650 d!589933))

(assert (=> b!1933870 d!589927))

(assert (=> b!1933870 d!589929))

(assert (=> b!1933870 d!589925))

(declare-fun b!1934423 () Bool)

(declare-fun e!1236449 () Bool)

(declare-fun lt!741465 () Option!4566)

(assert (=> b!1934423 (= e!1236449 (= (size!17148 (_1!11772 (get!6933 lt!741465))) (size!17151 (originalCharacters!4751 (_1!11772 (get!6933 lt!741465))))))))

(declare-fun b!1934424 () Bool)

(declare-fun res!864925 () Bool)

(assert (=> b!1934424 (=> (not res!864925) (not e!1236449))))

(assert (=> b!1934424 (= res!864925 (= (++!5905 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741465)))) (_2!11772 (get!6933 lt!741465))) lt!741158))))

(declare-fun b!1934425 () Bool)

(declare-fun e!1236448 () Option!4566)

(assert (=> b!1934425 (= e!1236448 None!4565)))

(declare-fun b!1934426 () Bool)

(declare-fun res!864926 () Bool)

(assert (=> b!1934426 (=> (not res!864926) (not e!1236449))))

(assert (=> b!1934426 (= res!864926 (= (rule!6153 (_1!11772 (get!6933 lt!741465))) (h!27385 rules!3198)))))

(declare-fun d!589935 () Bool)

(declare-fun e!1236451 () Bool)

(assert (=> d!589935 e!1236451))

(declare-fun res!864920 () Bool)

(assert (=> d!589935 (=> res!864920 e!1236451)))

(assert (=> d!589935 (= res!864920 (isEmpty!13571 lt!741465))))

(assert (=> d!589935 (= lt!741465 e!1236448)))

(declare-fun c!314671 () Bool)

(declare-datatypes ((tuple2!20614 0))(
  ( (tuple2!20615 (_1!11776 List!22064) (_2!11776 List!22064)) )
))
(declare-fun lt!741463 () tuple2!20614)

(assert (=> d!589935 (= c!314671 (isEmpty!13567 (_1!11776 lt!741463)))))

(declare-fun findLongestMatch!465 (Regex!5369 List!22064) tuple2!20614)

(assert (=> d!589935 (= lt!741463 (findLongestMatch!465 (regex!3944 (h!27385 rules!3198)) lt!741158))))

(assert (=> d!589935 (ruleValid!1199 thiss!23328 (h!27385 rules!3198))))

(assert (=> d!589935 (= (maxPrefixOneRule!1231 thiss!23328 (h!27385 rules!3198) lt!741158) lt!741465)))

(declare-fun b!1934427 () Bool)

(declare-fun e!1236450 () Bool)

(declare-fun findLongestMatchInner!538 (Regex!5369 List!22064 Int List!22064 List!22064 Int) tuple2!20614)

(assert (=> b!1934427 (= e!1236450 (matchR!2637 (regex!3944 (h!27385 rules!3198)) (_1!11776 (findLongestMatchInner!538 (regex!3944 (h!27385 rules!3198)) Nil!21982 (size!17151 Nil!21982) lt!741158 lt!741158 (size!17151 lt!741158)))))))

(declare-fun b!1934428 () Bool)

(declare-fun res!864923 () Bool)

(assert (=> b!1934428 (=> (not res!864923) (not e!1236449))))

(assert (=> b!1934428 (= res!864923 (< (size!17151 (_2!11772 (get!6933 lt!741465))) (size!17151 lt!741158)))))

(declare-fun b!1934429 () Bool)

(declare-fun res!864922 () Bool)

(assert (=> b!1934429 (=> (not res!864922) (not e!1236449))))

(assert (=> b!1934429 (= res!864922 (= (value!123995 (_1!11772 (get!6933 lt!741465))) (apply!5725 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741465)))) (seqFromList!2798 (originalCharacters!4751 (_1!11772 (get!6933 lt!741465)))))))))

(declare-fun b!1934430 () Bool)

(assert (=> b!1934430 (= e!1236448 (Some!4565 (tuple2!20607 (Token!7441 (apply!5725 (transformation!3944 (h!27385 rules!3198)) (seqFromList!2798 (_1!11776 lt!741463))) (h!27385 rules!3198) (size!17154 (seqFromList!2798 (_1!11776 lt!741463))) (_1!11776 lt!741463)) (_2!11776 lt!741463))))))

(declare-fun lt!741466 () Unit!36346)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!522 (Regex!5369 List!22064) Unit!36346)

(assert (=> b!1934430 (= lt!741466 (longestMatchIsAcceptedByMatchOrIsEmpty!522 (regex!3944 (h!27385 rules!3198)) lt!741158))))

(declare-fun res!864924 () Bool)

(assert (=> b!1934430 (= res!864924 (isEmpty!13567 (_1!11776 (findLongestMatchInner!538 (regex!3944 (h!27385 rules!3198)) Nil!21982 (size!17151 Nil!21982) lt!741158 lt!741158 (size!17151 lt!741158)))))))

(assert (=> b!1934430 (=> res!864924 e!1236450)))

(assert (=> b!1934430 e!1236450))

(declare-fun lt!741467 () Unit!36346)

(assert (=> b!1934430 (= lt!741467 lt!741466)))

(declare-fun lt!741464 () Unit!36346)

(assert (=> b!1934430 (= lt!741464 (lemmaSemiInverse!901 (transformation!3944 (h!27385 rules!3198)) (seqFromList!2798 (_1!11776 lt!741463))))))

(declare-fun b!1934431 () Bool)

(assert (=> b!1934431 (= e!1236451 e!1236449)))

(declare-fun res!864921 () Bool)

(assert (=> b!1934431 (=> (not res!864921) (not e!1236449))))

(assert (=> b!1934431 (= res!864921 (matchR!2637 (regex!3944 (h!27385 rules!3198)) (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741465))))))))

(assert (= (and d!589935 c!314671) b!1934425))

(assert (= (and d!589935 (not c!314671)) b!1934430))

(assert (= (and b!1934430 (not res!864924)) b!1934427))

(assert (= (and d!589935 (not res!864920)) b!1934431))

(assert (= (and b!1934431 res!864921) b!1934424))

(assert (= (and b!1934424 res!864925) b!1934428))

(assert (= (and b!1934428 res!864923) b!1934426))

(assert (= (and b!1934426 res!864926) b!1934429))

(assert (= (and b!1934429 res!864922) b!1934423))

(declare-fun m!2373195 () Bool)

(assert (=> b!1934431 m!2373195))

(declare-fun m!2373197 () Bool)

(assert (=> b!1934431 m!2373197))

(assert (=> b!1934431 m!2373197))

(declare-fun m!2373199 () Bool)

(assert (=> b!1934431 m!2373199))

(assert (=> b!1934431 m!2373199))

(declare-fun m!2373201 () Bool)

(assert (=> b!1934431 m!2373201))

(assert (=> b!1934428 m!2373195))

(declare-fun m!2373203 () Bool)

(assert (=> b!1934428 m!2373203))

(assert (=> b!1934428 m!2372353))

(declare-fun m!2373205 () Bool)

(assert (=> b!1934427 m!2373205))

(assert (=> b!1934427 m!2372353))

(assert (=> b!1934427 m!2373205))

(assert (=> b!1934427 m!2372353))

(declare-fun m!2373207 () Bool)

(assert (=> b!1934427 m!2373207))

(declare-fun m!2373209 () Bool)

(assert (=> b!1934427 m!2373209))

(declare-fun m!2373211 () Bool)

(assert (=> b!1934430 m!2373211))

(declare-fun m!2373213 () Bool)

(assert (=> b!1934430 m!2373213))

(assert (=> b!1934430 m!2373213))

(declare-fun m!2373215 () Bool)

(assert (=> b!1934430 m!2373215))

(assert (=> b!1934430 m!2373213))

(declare-fun m!2373217 () Bool)

(assert (=> b!1934430 m!2373217))

(assert (=> b!1934430 m!2373205))

(assert (=> b!1934430 m!2373205))

(assert (=> b!1934430 m!2372353))

(assert (=> b!1934430 m!2373207))

(assert (=> b!1934430 m!2372353))

(declare-fun m!2373219 () Bool)

(assert (=> b!1934430 m!2373219))

(assert (=> b!1934430 m!2373213))

(declare-fun m!2373221 () Bool)

(assert (=> b!1934430 m!2373221))

(assert (=> b!1934429 m!2373195))

(declare-fun m!2373223 () Bool)

(assert (=> b!1934429 m!2373223))

(assert (=> b!1934429 m!2373223))

(declare-fun m!2373225 () Bool)

(assert (=> b!1934429 m!2373225))

(assert (=> b!1934426 m!2373195))

(assert (=> b!1934423 m!2373195))

(declare-fun m!2373227 () Bool)

(assert (=> b!1934423 m!2373227))

(assert (=> b!1934424 m!2373195))

(assert (=> b!1934424 m!2373197))

(assert (=> b!1934424 m!2373197))

(assert (=> b!1934424 m!2373199))

(assert (=> b!1934424 m!2373199))

(declare-fun m!2373229 () Bool)

(assert (=> b!1934424 m!2373229))

(declare-fun m!2373231 () Bool)

(assert (=> d!589935 m!2373231))

(declare-fun m!2373233 () Bool)

(assert (=> d!589935 m!2373233))

(declare-fun m!2373235 () Bool)

(assert (=> d!589935 m!2373235))

(assert (=> d!589935 m!2373159))

(assert (=> bm!118960 d!589935))

(declare-fun bs!415184 () Bool)

(declare-fun d!589937 () Bool)

(assert (= bs!415184 (and d!589937 d!589751)))

(declare-fun lambda!75408 () Int)

(assert (=> bs!415184 (= (and (= (toChars!5444 (transformation!3944 (h!27385 rules!3198))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) (= (toValue!5585 (transformation!3944 (h!27385 rules!3198))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) (= lambda!75408 lambda!75386))))

(assert (=> d!589937 true))

(assert (=> d!589937 (< (dynLambda!10699 order!13851 (toChars!5444 (transformation!3944 (h!27385 rules!3198)))) (dynLambda!10702 order!13853 lambda!75408))))

(assert (=> d!589937 true))

(assert (=> d!589937 (< (dynLambda!10697 order!13847 (toValue!5585 (transformation!3944 (h!27385 rules!3198)))) (dynLambda!10702 order!13853 lambda!75408))))

(declare-fun Forall!1004 (Int) Bool)

(assert (=> d!589937 (= (semiInverseModEq!1573 (toChars!5444 (transformation!3944 (h!27385 rules!3198))) (toValue!5585 (transformation!3944 (h!27385 rules!3198)))) (Forall!1004 lambda!75408))))

(declare-fun bs!415185 () Bool)

(assert (= bs!415185 d!589937))

(declare-fun m!2373237 () Bool)

(assert (=> bs!415185 m!2373237))

(assert (=> d!589661 d!589937))

(declare-fun d!589939 () Bool)

(declare-fun lt!741470 () Int)

(assert (=> d!589939 (>= lt!741470 0)))

(declare-fun e!1236454 () Int)

(assert (=> d!589939 (= lt!741470 e!1236454)))

(declare-fun c!314674 () Bool)

(assert (=> d!589939 (= c!314674 ((_ is Nil!21982) (originalCharacters!4751 (h!27386 tokens!598))))))

(assert (=> d!589939 (= (size!17151 (originalCharacters!4751 (h!27386 tokens!598))) lt!741470)))

(declare-fun b!1934440 () Bool)

(assert (=> b!1934440 (= e!1236454 0)))

(declare-fun b!1934441 () Bool)

(assert (=> b!1934441 (= e!1236454 (+ 1 (size!17151 (t!180603 (originalCharacters!4751 (h!27386 tokens!598))))))))

(assert (= (and d!589939 c!314674) b!1934440))

(assert (= (and d!589939 (not c!314674)) b!1934441))

(declare-fun m!2373239 () Bool)

(assert (=> b!1934441 m!2373239))

(assert (=> b!1934162 d!589939))

(declare-fun d!589941 () Bool)

(assert (=> d!589941 (= (isEmpty!13567 (tail!2995 lt!741158)) ((_ is Nil!21982) (tail!2995 lt!741158)))))

(assert (=> b!1933612 d!589941))

(declare-fun d!589943 () Bool)

(assert (=> d!589943 (= (tail!2995 lt!741158) (t!180603 lt!741158))))

(assert (=> b!1933612 d!589943))

(declare-fun d!589945 () Bool)

(declare-fun lt!741473 () Bool)

(assert (=> d!589945 (= lt!741473 (isEmpty!13567 (list!8905 (_2!11771 lt!741385))))))

(declare-fun isEmpty!13577 (Conc!7342) Bool)

(assert (=> d!589945 (= lt!741473 (isEmpty!13577 (c!314508 (_2!11771 lt!741385))))))

(assert (=> d!589945 (= (isEmpty!13568 (_2!11771 lt!741385)) lt!741473)))

(declare-fun bs!415186 () Bool)

(assert (= bs!415186 d!589945))

(declare-fun m!2373241 () Bool)

(assert (=> bs!415186 m!2373241))

(assert (=> bs!415186 m!2373241))

(declare-fun m!2373243 () Bool)

(assert (=> bs!415186 m!2373243))

(declare-fun m!2373245 () Bool)

(assert (=> bs!415186 m!2373245))

(assert (=> b!1934000 d!589945))

(declare-fun d!589947 () Bool)

(declare-fun charsToInt!0 (List!22065) (_ BitVec 32))

(assert (=> d!589947 (= (inv!16 (value!123995 separatorToken!354)) (= (charsToInt!0 (text!29007 (value!123995 separatorToken!354))) (value!123986 (value!123995 separatorToken!354))))))

(declare-fun bs!415187 () Bool)

(assert (= bs!415187 d!589947))

(declare-fun m!2373247 () Bool)

(assert (=> bs!415187 m!2373247))

(assert (=> b!1933646 d!589947))

(declare-fun d!589949 () Bool)

(declare-fun lt!741476 () Int)

(assert (=> d!589949 (= lt!741476 (size!17151 (list!8905 (_2!11771 lt!741400))))))

(declare-fun size!17157 (Conc!7342) Int)

(assert (=> d!589949 (= lt!741476 (size!17157 (c!314508 (_2!11771 lt!741400))))))

(assert (=> d!589949 (= (size!17154 (_2!11771 lt!741400)) lt!741476)))

(declare-fun bs!415188 () Bool)

(assert (= bs!415188 d!589949))

(assert (=> bs!415188 m!2372959))

(assert (=> bs!415188 m!2372959))

(declare-fun m!2373249 () Bool)

(assert (=> bs!415188 m!2373249))

(declare-fun m!2373251 () Bool)

(assert (=> bs!415188 m!2373251))

(assert (=> b!1934151 d!589949))

(declare-fun d!589951 () Bool)

(declare-fun lt!741477 () Int)

(assert (=> d!589951 (= lt!741477 (size!17151 (list!8905 (seqFromList!2798 lt!741158))))))

(assert (=> d!589951 (= lt!741477 (size!17157 (c!314508 (seqFromList!2798 lt!741158))))))

(assert (=> d!589951 (= (size!17154 (seqFromList!2798 lt!741158)) lt!741477)))

(declare-fun bs!415189 () Bool)

(assert (= bs!415189 d!589951))

(assert (=> bs!415189 m!2372107))

(assert (=> bs!415189 m!2372949))

(assert (=> bs!415189 m!2372949))

(declare-fun m!2373253 () Bool)

(assert (=> bs!415189 m!2373253))

(declare-fun m!2373255 () Bool)

(assert (=> bs!415189 m!2373255))

(assert (=> b!1934151 d!589951))

(declare-fun bs!415190 () Bool)

(declare-fun d!589953 () Bool)

(assert (= bs!415190 (and d!589953 d!589751)))

(declare-fun lambda!75409 () Int)

(assert (=> bs!415190 (= lambda!75409 lambda!75386)))

(declare-fun bs!415191 () Bool)

(assert (= bs!415191 (and d!589953 d!589937)))

(assert (=> bs!415191 (= (and (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (toChars!5444 (transformation!3944 (h!27385 rules!3198)))) (= (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (toValue!5585 (transformation!3944 (h!27385 rules!3198))))) (= lambda!75409 lambda!75408))))

(assert (=> d!589953 true))

(assert (=> d!589953 (< (dynLambda!10699 order!13851 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) (dynLambda!10702 order!13853 lambda!75409))))

(assert (=> d!589953 true))

(assert (=> d!589953 (< (dynLambda!10697 order!13847 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) (dynLambda!10702 order!13853 lambda!75409))))

(assert (=> d!589953 (= (semiInverseModEq!1573 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) (Forall!1004 lambda!75409))))

(declare-fun bs!415192 () Bool)

(assert (= bs!415192 d!589953))

(declare-fun m!2373257 () Bool)

(assert (=> bs!415192 m!2373257))

(assert (=> d!589825 d!589953))

(declare-fun lt!741478 () Bool)

(declare-fun d!589955 () Bool)

(assert (=> d!589955 (= lt!741478 (isEmpty!13567 (list!8905 (_2!11771 (lex!1581 thiss!23328 rules!3198 (print!1527 thiss!23328 (singletonSeq!1928 (h!27386 tokens!598))))))))))

(assert (=> d!589955 (= lt!741478 (isEmpty!13577 (c!314508 (_2!11771 (lex!1581 thiss!23328 rules!3198 (print!1527 thiss!23328 (singletonSeq!1928 (h!27386 tokens!598))))))))))

(assert (=> d!589955 (= (isEmpty!13568 (_2!11771 (lex!1581 thiss!23328 rules!3198 (print!1527 thiss!23328 (singletonSeq!1928 (h!27386 tokens!598)))))) lt!741478)))

(declare-fun bs!415193 () Bool)

(assert (= bs!415193 d!589955))

(declare-fun m!2373259 () Bool)

(assert (=> bs!415193 m!2373259))

(assert (=> bs!415193 m!2373259))

(declare-fun m!2373261 () Bool)

(assert (=> bs!415193 m!2373261))

(declare-fun m!2373263 () Bool)

(assert (=> bs!415193 m!2373263))

(assert (=> b!1933645 d!589955))

(declare-fun b!1934442 () Bool)

(declare-fun e!1236457 () Bool)

(declare-fun e!1236455 () Bool)

(assert (=> b!1934442 (= e!1236457 e!1236455)))

(declare-fun res!864928 () Bool)

(declare-fun lt!741479 () tuple2!20604)

(assert (=> b!1934442 (= res!864928 (< (size!17154 (_2!11771 lt!741479)) (size!17154 (print!1527 thiss!23328 (singletonSeq!1928 (h!27386 tokens!598))))))))

(assert (=> b!1934442 (=> (not res!864928) (not e!1236455))))

(declare-fun d!589957 () Bool)

(declare-fun e!1236456 () Bool)

(assert (=> d!589957 e!1236456))

(declare-fun res!864929 () Bool)

(assert (=> d!589957 (=> (not res!864929) (not e!1236456))))

(assert (=> d!589957 (= res!864929 e!1236457)))

(declare-fun c!314675 () Bool)

(assert (=> d!589957 (= c!314675 (> (size!17150 (_1!11771 lt!741479)) 0))))

(assert (=> d!589957 (= lt!741479 (lexTailRecV2!678 thiss!23328 rules!3198 (print!1527 thiss!23328 (singletonSeq!1928 (h!27386 tokens!598))) (BalanceConc!14501 Empty!7342) (print!1527 thiss!23328 (singletonSeq!1928 (h!27386 tokens!598))) (BalanceConc!14503 Empty!7343)))))

(assert (=> d!589957 (= (lex!1581 thiss!23328 rules!3198 (print!1527 thiss!23328 (singletonSeq!1928 (h!27386 tokens!598)))) lt!741479)))

(declare-fun b!1934443 () Bool)

(declare-fun res!864927 () Bool)

(assert (=> b!1934443 (=> (not res!864927) (not e!1236456))))

(assert (=> b!1934443 (= res!864927 (= (list!8907 (_1!11771 lt!741479)) (_1!11774 (lexList!955 thiss!23328 rules!3198 (list!8905 (print!1527 thiss!23328 (singletonSeq!1928 (h!27386 tokens!598))))))))))

(declare-fun b!1934444 () Bool)

(assert (=> b!1934444 (= e!1236455 (not (isEmpty!13563 (_1!11771 lt!741479))))))

(declare-fun b!1934445 () Bool)

(assert (=> b!1934445 (= e!1236456 (= (list!8905 (_2!11771 lt!741479)) (_2!11774 (lexList!955 thiss!23328 rules!3198 (list!8905 (print!1527 thiss!23328 (singletonSeq!1928 (h!27386 tokens!598))))))))))

(declare-fun b!1934446 () Bool)

(assert (=> b!1934446 (= e!1236457 (= (_2!11771 lt!741479) (print!1527 thiss!23328 (singletonSeq!1928 (h!27386 tokens!598)))))))

(assert (= (and d!589957 c!314675) b!1934442))

(assert (= (and d!589957 (not c!314675)) b!1934446))

(assert (= (and b!1934442 res!864928) b!1934444))

(assert (= (and d!589957 res!864929) b!1934443))

(assert (= (and b!1934443 res!864927) b!1934445))

(declare-fun m!2373265 () Bool)

(assert (=> d!589957 m!2373265))

(assert (=> d!589957 m!2372273))

(assert (=> d!589957 m!2372273))

(declare-fun m!2373267 () Bool)

(assert (=> d!589957 m!2373267))

(declare-fun m!2373269 () Bool)

(assert (=> b!1934443 m!2373269))

(assert (=> b!1934443 m!2372273))

(declare-fun m!2373271 () Bool)

(assert (=> b!1934443 m!2373271))

(assert (=> b!1934443 m!2373271))

(declare-fun m!2373273 () Bool)

(assert (=> b!1934443 m!2373273))

(declare-fun m!2373275 () Bool)

(assert (=> b!1934442 m!2373275))

(assert (=> b!1934442 m!2372273))

(declare-fun m!2373277 () Bool)

(assert (=> b!1934442 m!2373277))

(declare-fun m!2373279 () Bool)

(assert (=> b!1934444 m!2373279))

(declare-fun m!2373281 () Bool)

(assert (=> b!1934445 m!2373281))

(assert (=> b!1934445 m!2372273))

(assert (=> b!1934445 m!2373271))

(assert (=> b!1934445 m!2373271))

(assert (=> b!1934445 m!2373273))

(assert (=> b!1933645 d!589957))

(declare-fun d!589959 () Bool)

(declare-fun lt!741480 () BalanceConc!14500)

(assert (=> d!589959 (= (list!8905 lt!741480) (printList!1092 thiss!23328 (list!8907 (singletonSeq!1928 (h!27386 tokens!598)))))))

(assert (=> d!589959 (= lt!741480 (printTailRec!1033 thiss!23328 (singletonSeq!1928 (h!27386 tokens!598)) 0 (BalanceConc!14501 Empty!7342)))))

(assert (=> d!589959 (= (print!1527 thiss!23328 (singletonSeq!1928 (h!27386 tokens!598))) lt!741480)))

(declare-fun bs!415194 () Bool)

(assert (= bs!415194 d!589959))

(declare-fun m!2373283 () Bool)

(assert (=> bs!415194 m!2373283))

(assert (=> bs!415194 m!2372185))

(assert (=> bs!415194 m!2372277))

(assert (=> bs!415194 m!2372277))

(declare-fun m!2373285 () Bool)

(assert (=> bs!415194 m!2373285))

(assert (=> bs!415194 m!2372185))

(declare-fun m!2373287 () Bool)

(assert (=> bs!415194 m!2373287))

(assert (=> b!1933645 d!589959))

(assert (=> b!1933645 d!589673))

(declare-fun d!589961 () Bool)

(declare-fun list!8912 (Conc!7343) List!22067)

(assert (=> d!589961 (= (list!8907 lt!741227) (list!8912 (c!314510 lt!741227)))))

(declare-fun bs!415195 () Bool)

(assert (= bs!415195 d!589961))

(declare-fun m!2373289 () Bool)

(assert (=> bs!415195 m!2373289))

(assert (=> d!589673 d!589961))

(declare-fun d!589963 () Bool)

(declare-fun e!1236460 () Bool)

(assert (=> d!589963 e!1236460))

(declare-fun res!864932 () Bool)

(assert (=> d!589963 (=> (not res!864932) (not e!1236460))))

(declare-fun lt!741483 () BalanceConc!14502)

(assert (=> d!589963 (= res!864932 (= (list!8907 lt!741483) (Cons!21985 (h!27386 tokens!598) Nil!21985)))))

(declare-fun choose!12016 (Token!7440) BalanceConc!14502)

(assert (=> d!589963 (= lt!741483 (choose!12016 (h!27386 tokens!598)))))

(assert (=> d!589963 (= (singleton!855 (h!27386 tokens!598)) lt!741483)))

(declare-fun b!1934449 () Bool)

(assert (=> b!1934449 (= e!1236460 (isBalanced!2270 (c!314510 lt!741483)))))

(assert (= (and d!589963 res!864932) b!1934449))

(declare-fun m!2373291 () Bool)

(assert (=> d!589963 m!2373291))

(declare-fun m!2373293 () Bool)

(assert (=> d!589963 m!2373293))

(declare-fun m!2373295 () Bool)

(assert (=> b!1934449 m!2373295))

(assert (=> d!589673 d!589963))

(declare-fun d!589965 () Bool)

(declare-fun lt!741484 () Int)

(assert (=> d!589965 (>= lt!741484 0)))

(declare-fun e!1236461 () Int)

(assert (=> d!589965 (= lt!741484 e!1236461)))

(declare-fun c!314676 () Bool)

(assert (=> d!589965 (= c!314676 ((_ is Nil!21982) (originalCharacters!4751 separatorToken!354)))))

(assert (=> d!589965 (= (size!17151 (originalCharacters!4751 separatorToken!354)) lt!741484)))

(declare-fun b!1934450 () Bool)

(assert (=> b!1934450 (= e!1236461 0)))

(declare-fun b!1934451 () Bool)

(assert (=> b!1934451 (= e!1236461 (+ 1 (size!17151 (t!180603 (originalCharacters!4751 separatorToken!354)))))))

(assert (= (and d!589965 c!314676) b!1934450))

(assert (= (and d!589965 (not c!314676)) b!1934451))

(declare-fun m!2373297 () Bool)

(assert (=> b!1934451 m!2373297))

(assert (=> b!1934019 d!589965))

(declare-fun d!589967 () Bool)

(assert (=> d!589967 (= (isEmpty!13571 lt!741163) (not ((_ is Some!4565) lt!741163)))))

(assert (=> d!589781 d!589967))

(assert (=> b!1933608 d!589941))

(assert (=> b!1933608 d!589943))

(declare-fun b!1934460 () Bool)

(declare-fun e!1236469 () Bool)

(declare-fun e!1236470 () Bool)

(assert (=> b!1934460 (= e!1236469 e!1236470)))

(declare-fun res!864938 () Bool)

(declare-fun rulesUseDisjointChars!209 (Rule!7688 Rule!7688) Bool)

(assert (=> b!1934460 (= res!864938 (rulesUseDisjointChars!209 (h!27385 rules!3198) (h!27385 rules!3198)))))

(assert (=> b!1934460 (=> (not res!864938) (not e!1236470))))

(declare-fun b!1934461 () Bool)

(declare-fun call!118988 () Bool)

(assert (=> b!1934461 (= e!1236470 call!118988)))

(declare-fun b!1934462 () Bool)

(declare-fun e!1236468 () Bool)

(assert (=> b!1934462 (= e!1236468 call!118988)))

(declare-fun d!589969 () Bool)

(declare-fun c!314679 () Bool)

(assert (=> d!589969 (= c!314679 (and ((_ is Cons!21984) rules!3198) (not (= (isSeparator!3944 (h!27385 rules!3198)) (isSeparator!3944 (h!27385 rules!3198))))))))

(assert (=> d!589969 (= (ruleDisjointCharsFromAllFromOtherType!457 (h!27385 rules!3198) rules!3198) e!1236469)))

(declare-fun b!1934463 () Bool)

(assert (=> b!1934463 (= e!1236469 e!1236468)))

(declare-fun res!864937 () Bool)

(assert (=> b!1934463 (= res!864937 (not ((_ is Cons!21984) rules!3198)))))

(assert (=> b!1934463 (=> res!864937 e!1236468)))

(declare-fun bm!118983 () Bool)

(assert (=> bm!118983 (= call!118988 (ruleDisjointCharsFromAllFromOtherType!457 (h!27385 rules!3198) (t!180605 rules!3198)))))

(assert (= (and d!589969 c!314679) b!1934460))

(assert (= (and d!589969 (not c!314679)) b!1934463))

(assert (= (and b!1934460 res!864938) b!1934461))

(assert (= (and b!1934463 (not res!864937)) b!1934462))

(assert (= (or b!1934461 b!1934462) bm!118983))

(declare-fun m!2373299 () Bool)

(assert (=> b!1934460 m!2373299))

(declare-fun m!2373301 () Bool)

(assert (=> bm!118983 m!2373301))

(assert (=> b!1934012 d!589969))

(declare-fun d!589971 () Bool)

(assert (=> d!589971 (= (head!4509 lt!741174) (h!27383 lt!741174))))

(assert (=> b!1934172 d!589971))

(declare-fun d!589973 () Bool)

(assert (=> d!589973 (= (isEmpty!13574 lt!741317) (not ((_ is Some!4564) lt!741317)))))

(assert (=> d!589741 d!589973))

(assert (=> d!589741 d!589827))

(declare-fun d!589975 () Bool)

(assert (=> d!589975 (= (isEmpty!13574 lt!741161) (not ((_ is Some!4564) lt!741161)))))

(assert (=> d!589779 d!589975))

(declare-fun d!589977 () Bool)

(declare-fun c!314686 () Bool)

(assert (=> d!589977 (= c!314686 ((_ is Node!7342) (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168)))))))

(declare-fun e!1236479 () Bool)

(assert (=> d!589977 (= (inv!29081 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168)))) e!1236479)))

(declare-fun b!1934478 () Bool)

(declare-fun inv!29083 (Conc!7342) Bool)

(assert (=> b!1934478 (= e!1236479 (inv!29083 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168)))))))

(declare-fun b!1934479 () Bool)

(declare-fun e!1236480 () Bool)

(assert (=> b!1934479 (= e!1236479 e!1236480)))

(declare-fun res!864941 () Bool)

(assert (=> b!1934479 (= res!864941 (not ((_ is Leaf!10777) (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168))))))))

(assert (=> b!1934479 (=> res!864941 e!1236480)))

(declare-fun b!1934480 () Bool)

(declare-fun inv!29084 (Conc!7342) Bool)

(assert (=> b!1934480 (= e!1236480 (inv!29084 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168)))))))

(assert (= (and d!589977 c!314686) b!1934478))

(assert (= (and d!589977 (not c!314686)) b!1934479))

(assert (= (and b!1934479 (not res!864941)) b!1934480))

(declare-fun m!2373303 () Bool)

(assert (=> b!1934478 m!2373303))

(declare-fun m!2373305 () Bool)

(assert (=> b!1934480 m!2373305))

(assert (=> b!1933915 d!589977))

(declare-fun d!589979 () Bool)

(declare-fun lt!741515 () Int)

(assert (=> d!589979 (>= lt!741515 0)))

(declare-fun e!1236481 () Int)

(assert (=> d!589979 (= lt!741515 e!1236481)))

(declare-fun c!314687 () Bool)

(assert (=> d!589979 (= c!314687 ((_ is Nil!21982) lt!741233))))

(assert (=> d!589979 (= (size!17151 lt!741233) lt!741515)))

(declare-fun b!1934481 () Bool)

(assert (=> b!1934481 (= e!1236481 0)))

(declare-fun b!1934482 () Bool)

(assert (=> b!1934482 (= e!1236481 (+ 1 (size!17151 (t!180603 lt!741233))))))

(assert (= (and d!589979 c!314687) b!1934481))

(assert (= (and d!589979 (not c!314687)) b!1934482))

(declare-fun m!2373307 () Bool)

(assert (=> b!1934482 m!2373307))

(assert (=> b!1933679 d!589979))

(declare-fun d!589981 () Bool)

(declare-fun lt!741517 () Int)

(assert (=> d!589981 (>= lt!741517 0)))

(declare-fun e!1236482 () Int)

(assert (=> d!589981 (= lt!741517 e!1236482)))

(declare-fun c!314688 () Bool)

(assert (=> d!589981 (= c!314688 ((_ is Nil!21982) lt!741158))))

(assert (=> d!589981 (= (size!17151 lt!741158) lt!741517)))

(declare-fun b!1934483 () Bool)

(assert (=> b!1934483 (= e!1236482 0)))

(declare-fun b!1934484 () Bool)

(assert (=> b!1934484 (= e!1236482 (+ 1 (size!17151 (t!180603 lt!741158))))))

(assert (= (and d!589981 c!314688) b!1934483))

(assert (= (and d!589981 (not c!314688)) b!1934484))

(declare-fun m!2373309 () Bool)

(assert (=> b!1934484 m!2373309))

(assert (=> b!1933679 d!589981))

(declare-fun d!589983 () Bool)

(declare-fun lt!741527 () Int)

(assert (=> d!589983 (>= lt!741527 0)))

(declare-fun e!1236483 () Int)

(assert (=> d!589983 (= lt!741527 e!1236483)))

(declare-fun c!314689 () Bool)

(assert (=> d!589983 (= c!314689 ((_ is Nil!21982) (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)))))

(assert (=> d!589983 (= (size!17151 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)) lt!741527)))

(declare-fun b!1934485 () Bool)

(assert (=> b!1934485 (= e!1236483 0)))

(declare-fun b!1934486 () Bool)

(assert (=> b!1934486 (= e!1236483 (+ 1 (size!17151 (t!180603 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)))))))

(assert (= (and d!589983 c!314689) b!1934485))

(assert (= (and d!589983 (not c!314689)) b!1934486))

(declare-fun m!2373311 () Bool)

(assert (=> b!1934486 m!2373311))

(assert (=> b!1933679 d!589983))

(declare-fun b!1934499 () Bool)

(declare-fun e!1236490 () List!22064)

(assert (=> b!1934499 (= e!1236490 Nil!21982)))

(declare-fun d!589985 () Bool)

(declare-fun c!314696 () Bool)

(assert (=> d!589985 (= c!314696 ((_ is Empty!7342) (c!314508 lt!741168)))))

(assert (=> d!589985 (= (list!8908 (c!314508 lt!741168)) e!1236490)))

(declare-fun b!1934501 () Bool)

(declare-fun e!1236491 () List!22064)

(declare-fun list!8913 (IArray!14689) List!22064)

(assert (=> b!1934501 (= e!1236491 (list!8913 (xs!10236 (c!314508 lt!741168))))))

(declare-fun b!1934500 () Bool)

(assert (=> b!1934500 (= e!1236490 e!1236491)))

(declare-fun c!314697 () Bool)

(assert (=> b!1934500 (= c!314697 ((_ is Leaf!10777) (c!314508 lt!741168)))))

(declare-fun b!1934502 () Bool)

(assert (=> b!1934502 (= e!1236491 (++!5905 (list!8908 (left!17488 (c!314508 lt!741168))) (list!8908 (right!17818 (c!314508 lt!741168)))))))

(assert (= (and d!589985 c!314696) b!1934499))

(assert (= (and d!589985 (not c!314696)) b!1934500))

(assert (= (and b!1934500 c!314697) b!1934501))

(assert (= (and b!1934500 (not c!314697)) b!1934502))

(declare-fun m!2373313 () Bool)

(assert (=> b!1934501 m!2373313))

(declare-fun m!2373315 () Bool)

(assert (=> b!1934502 m!2373315))

(declare-fun m!2373317 () Bool)

(assert (=> b!1934502 m!2373317))

(assert (=> b!1934502 m!2373315))

(assert (=> b!1934502 m!2373317))

(declare-fun m!2373319 () Bool)

(assert (=> b!1934502 m!2373319))

(assert (=> d!589681 d!589985))

(declare-fun d!589987 () Bool)

(assert (=> d!589987 (= (isDefined!3857 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 separatorToken!354)))) (not (isEmpty!13574 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 separatorToken!354))))))))

(declare-fun bs!415196 () Bool)

(assert (= bs!415196 d!589987))

(assert (=> bs!415196 m!2372141))

(declare-fun m!2373321 () Bool)

(assert (=> bs!415196 m!2373321))

(assert (=> d!589753 d!589987))

(assert (=> d!589753 d!589741))

(declare-fun d!589989 () Bool)

(declare-fun e!1236496 () Bool)

(assert (=> d!589989 e!1236496))

(declare-fun res!864948 () Bool)

(assert (=> d!589989 (=> (not res!864948) (not e!1236496))))

(assert (=> d!589989 (= res!864948 (isDefined!3857 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 separatorToken!354)))))))

(assert (=> d!589989 true))

(declare-fun _$52!1247 () Unit!36346)

(assert (=> d!589989 (= (choose!12012 thiss!23328 rules!3198 lt!741174 separatorToken!354) _$52!1247)))

(declare-fun b!1934509 () Bool)

(declare-fun res!864949 () Bool)

(assert (=> b!1934509 (=> (not res!864949) (not e!1236496))))

(assert (=> b!1934509 (= res!864949 (matchR!2637 (regex!3944 (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 separatorToken!354))))) (list!8905 (charsOf!2484 separatorToken!354))))))

(declare-fun b!1934510 () Bool)

(assert (=> b!1934510 (= e!1236496 (= (rule!6153 separatorToken!354) (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 separatorToken!354))))))))

(assert (= (and d!589989 res!864948) b!1934509))

(assert (= (and b!1934509 res!864949) b!1934510))

(assert (=> d!589989 m!2372141))

(assert (=> d!589989 m!2372141))

(assert (=> d!589989 m!2372675))

(assert (=> b!1934509 m!2372147))

(assert (=> b!1934509 m!2372679))

(assert (=> b!1934509 m!2372141))

(assert (=> b!1934509 m!2372681))

(assert (=> b!1934509 m!2372143))

(assert (=> b!1934509 m!2372143))

(assert (=> b!1934509 m!2372147))

(assert (=> b!1934509 m!2372141))

(assert (=> b!1934510 m!2372141))

(assert (=> b!1934510 m!2372141))

(assert (=> b!1934510 m!2372681))

(assert (=> d!589753 d!589989))

(assert (=> d!589753 d!589827))

(declare-fun d!589991 () Bool)

(assert (=> d!589991 (= (inv!29074 (tag!4398 (rule!6153 (h!27386 (t!180606 tokens!598))))) (= (mod (str.len (value!123994 (tag!4398 (rule!6153 (h!27386 (t!180606 tokens!598)))))) 2) 0))))

(assert (=> b!1934237 d!589991))

(declare-fun d!589993 () Bool)

(declare-fun res!864950 () Bool)

(declare-fun e!1236497 () Bool)

(assert (=> d!589993 (=> (not res!864950) (not e!1236497))))

(assert (=> d!589993 (= res!864950 (semiInverseModEq!1573 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598)))))))))

(assert (=> d!589993 (= (inv!29078 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) e!1236497)))

(declare-fun b!1934511 () Bool)

(assert (=> b!1934511 (= e!1236497 (equivClasses!1500 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598)))))))))

(assert (= (and d!589993 res!864950) b!1934511))

(declare-fun m!2373323 () Bool)

(assert (=> d!589993 m!2373323))

(declare-fun m!2373325 () Bool)

(assert (=> b!1934511 m!2373325))

(assert (=> b!1934237 d!589993))

(declare-fun d!589995 () Bool)

(declare-fun lt!741592 () Bool)

(declare-fun content!3189 (List!22066) (InoxSet Rule!7688))

(assert (=> d!589995 (= lt!741592 (select (content!3189 rules!3198) (rule!6153 (_1!11772 (get!6933 lt!741380)))))))

(declare-fun e!1236507 () Bool)

(assert (=> d!589995 (= lt!741592 e!1236507)))

(declare-fun res!864957 () Bool)

(assert (=> d!589995 (=> (not res!864957) (not e!1236507))))

(assert (=> d!589995 (= res!864957 ((_ is Cons!21984) rules!3198))))

(assert (=> d!589995 (= (contains!3983 rules!3198 (rule!6153 (_1!11772 (get!6933 lt!741380)))) lt!741592)))

(declare-fun b!1934523 () Bool)

(declare-fun e!1236506 () Bool)

(assert (=> b!1934523 (= e!1236507 e!1236506)))

(declare-fun res!864956 () Bool)

(assert (=> b!1934523 (=> res!864956 e!1236506)))

(assert (=> b!1934523 (= res!864956 (= (h!27385 rules!3198) (rule!6153 (_1!11772 (get!6933 lt!741380)))))))

(declare-fun b!1934524 () Bool)

(assert (=> b!1934524 (= e!1236506 (contains!3983 (t!180605 rules!3198) (rule!6153 (_1!11772 (get!6933 lt!741380)))))))

(assert (= (and d!589995 res!864957) b!1934523))

(assert (= (and b!1934523 (not res!864956)) b!1934524))

(declare-fun m!2373327 () Bool)

(assert (=> d!589995 m!2373327))

(declare-fun m!2373329 () Bool)

(assert (=> d!589995 m!2373329))

(declare-fun m!2373331 () Bool)

(assert (=> b!1934524 m!2373331))

(assert (=> b!1933995 d!589995))

(declare-fun d!589997 () Bool)

(assert (=> d!589997 (= (get!6933 lt!741380) (v!26680 lt!741380))))

(assert (=> b!1933995 d!589997))

(declare-fun d!589999 () Bool)

(assert (=> d!589999 (= (isEmpty!13574 lt!741323) (not ((_ is Some!4564) lt!741323)))))

(assert (=> d!589745 d!589999))

(assert (=> d!589745 d!589827))

(declare-fun d!590001 () Bool)

(assert (=> d!590001 (= (list!8905 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (value!123995 (h!27386 tokens!598)))) (list!8908 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (value!123995 (h!27386 tokens!598))))))))

(declare-fun bs!415197 () Bool)

(assert (= bs!415197 d!590001))

(declare-fun m!2373333 () Bool)

(assert (=> bs!415197 m!2373333))

(assert (=> b!1934161 d!590001))

(declare-fun d!590003 () Bool)

(declare-fun lt!741593 () Bool)

(assert (=> d!590003 (= lt!741593 (select (content!3189 rules!3198) (rule!6153 (_1!11772 (get!6933 lt!741305)))))))

(declare-fun e!1236509 () Bool)

(assert (=> d!590003 (= lt!741593 e!1236509)))

(declare-fun res!864959 () Bool)

(assert (=> d!590003 (=> (not res!864959) (not e!1236509))))

(assert (=> d!590003 (= res!864959 ((_ is Cons!21984) rules!3198))))

(assert (=> d!590003 (= (contains!3983 rules!3198 (rule!6153 (_1!11772 (get!6933 lt!741305)))) lt!741593)))

(declare-fun b!1934525 () Bool)

(declare-fun e!1236508 () Bool)

(assert (=> b!1934525 (= e!1236509 e!1236508)))

(declare-fun res!864958 () Bool)

(assert (=> b!1934525 (=> res!864958 e!1236508)))

(assert (=> b!1934525 (= res!864958 (= (h!27385 rules!3198) (rule!6153 (_1!11772 (get!6933 lt!741305)))))))

(declare-fun b!1934526 () Bool)

(assert (=> b!1934526 (= e!1236508 (contains!3983 (t!180605 rules!3198) (rule!6153 (_1!11772 (get!6933 lt!741305)))))))

(assert (= (and d!590003 res!864959) b!1934525))

(assert (= (and b!1934525 (not res!864958)) b!1934526))

(assert (=> d!590003 m!2373327))

(declare-fun m!2373335 () Bool)

(assert (=> d!590003 m!2373335))

(declare-fun m!2373337 () Bool)

(assert (=> b!1934526 m!2373337))

(assert (=> b!1933873 d!590003))

(assert (=> b!1933873 d!589925))

(declare-fun d!590005 () Bool)

(assert (=> d!590005 (= (isEmpty!13567 (tail!2995 lt!741174)) ((_ is Nil!21982) (tail!2995 lt!741174)))))

(assert (=> b!1934166 d!590005))

(declare-fun d!590007 () Bool)

(assert (=> d!590007 (= (tail!2995 lt!741174) (t!180603 lt!741174))))

(assert (=> b!1934166 d!590007))

(declare-fun d!590009 () Bool)

(declare-fun lt!741594 () Bool)

(assert (=> d!590009 (= lt!741594 (select (content!3189 rules!3198) (get!6932 lt!741323)))))

(declare-fun e!1236511 () Bool)

(assert (=> d!590009 (= lt!741594 e!1236511)))

(declare-fun res!864961 () Bool)

(assert (=> d!590009 (=> (not res!864961) (not e!1236511))))

(assert (=> d!590009 (= res!864961 ((_ is Cons!21984) rules!3198))))

(assert (=> d!590009 (= (contains!3983 rules!3198 (get!6932 lt!741323)) lt!741594)))

(declare-fun b!1934527 () Bool)

(declare-fun e!1236510 () Bool)

(assert (=> b!1934527 (= e!1236511 e!1236510)))

(declare-fun res!864960 () Bool)

(assert (=> b!1934527 (=> res!864960 e!1236510)))

(assert (=> b!1934527 (= res!864960 (= (h!27385 rules!3198) (get!6932 lt!741323)))))

(declare-fun b!1934528 () Bool)

(assert (=> b!1934528 (= e!1236510 (contains!3983 (t!180605 rules!3198) (get!6932 lt!741323)))))

(assert (= (and d!590009 res!864961) b!1934527))

(assert (= (and b!1934527 (not res!864960)) b!1934528))

(assert (=> d!590009 m!2373327))

(assert (=> d!590009 m!2372661))

(declare-fun m!2373339 () Bool)

(assert (=> d!590009 m!2373339))

(assert (=> b!1934528 m!2372661))

(declare-fun m!2373341 () Bool)

(assert (=> b!1934528 m!2373341))

(assert (=> b!1933908 d!590009))

(declare-fun d!590011 () Bool)

(assert (=> d!590011 (= (get!6932 lt!741323) (v!26679 lt!741323))))

(assert (=> b!1933908 d!590011))

(declare-fun d!590013 () Bool)

(declare-fun lt!741595 () Int)

(assert (=> d!590013 (>= lt!741595 0)))

(declare-fun e!1236512 () Int)

(assert (=> d!590013 (= lt!741595 e!1236512)))

(declare-fun c!314701 () Bool)

(assert (=> d!590013 (= c!314701 ((_ is Nil!21982) (_2!11772 (get!6933 lt!741305))))))

(assert (=> d!590013 (= (size!17151 (_2!11772 (get!6933 lt!741305))) lt!741595)))

(declare-fun b!1934529 () Bool)

(assert (=> b!1934529 (= e!1236512 0)))

(declare-fun b!1934530 () Bool)

(assert (=> b!1934530 (= e!1236512 (+ 1 (size!17151 (t!180603 (_2!11772 (get!6933 lt!741305))))))))

(assert (= (and d!590013 c!314701) b!1934529))

(assert (= (and d!590013 (not c!314701)) b!1934530))

(declare-fun m!2373353 () Bool)

(assert (=> b!1934530 m!2373353))

(assert (=> b!1933869 d!590013))

(assert (=> b!1933869 d!589925))

(declare-fun d!590015 () Bool)

(declare-fun lt!741596 () Int)

(assert (=> d!590015 (>= lt!741596 0)))

(declare-fun e!1236513 () Int)

(assert (=> d!590015 (= lt!741596 e!1236513)))

(declare-fun c!314702 () Bool)

(assert (=> d!590015 (= c!314702 ((_ is Nil!21982) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))))))

(assert (=> d!590015 (= (size!17151 (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))) lt!741596)))

(declare-fun b!1934531 () Bool)

(assert (=> b!1934531 (= e!1236513 0)))

(declare-fun b!1934532 () Bool)

(assert (=> b!1934532 (= e!1236513 (+ 1 (size!17151 (t!180603 (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))))))))

(assert (= (and d!590015 c!314702) b!1934531))

(assert (= (and d!590015 (not c!314702)) b!1934532))

(declare-fun m!2373367 () Bool)

(assert (=> b!1934532 m!2373367))

(assert (=> b!1933869 d!590015))

(assert (=> b!1934170 d!590005))

(assert (=> b!1934170 d!590007))

(assert (=> d!589665 d!589957))

(declare-fun d!590017 () Bool)

(declare-fun lt!741599 () Int)

(declare-fun size!17158 (List!22067) Int)

(assert (=> d!590017 (= lt!741599 (size!17158 (list!8907 (_1!11771 lt!741203))))))

(declare-fun size!17159 (Conc!7343) Int)

(assert (=> d!590017 (= lt!741599 (size!17159 (c!314510 (_1!11771 lt!741203))))))

(assert (=> d!590017 (= (size!17150 (_1!11771 lt!741203)) lt!741599)))

(declare-fun bs!415198 () Bool)

(assert (= bs!415198 d!590017))

(declare-fun m!2373435 () Bool)

(assert (=> bs!415198 m!2373435))

(assert (=> bs!415198 m!2373435))

(declare-fun m!2373437 () Bool)

(assert (=> bs!415198 m!2373437))

(declare-fun m!2373439 () Bool)

(assert (=> bs!415198 m!2373439))

(assert (=> d!589665 d!590017))

(assert (=> d!589665 d!589673))

(declare-fun d!590021 () Bool)

(assert (=> d!590021 (= (list!8907 (_1!11771 (lex!1581 thiss!23328 rules!3198 (print!1527 thiss!23328 (singletonSeq!1928 (h!27386 tokens!598)))))) (list!8912 (c!314510 (_1!11771 (lex!1581 thiss!23328 rules!3198 (print!1527 thiss!23328 (singletonSeq!1928 (h!27386 tokens!598))))))))))

(declare-fun bs!415199 () Bool)

(assert (= bs!415199 d!590021))

(declare-fun m!2373447 () Bool)

(assert (=> bs!415199 m!2373447))

(assert (=> d!589665 d!590021))

(assert (=> d!589665 d!589959))

(assert (=> d!589665 d!589791))

(declare-fun d!590025 () Bool)

(assert (=> d!590025 (= (list!8907 (singletonSeq!1928 (h!27386 tokens!598))) (list!8912 (c!314510 (singletonSeq!1928 (h!27386 tokens!598)))))))

(declare-fun bs!415200 () Bool)

(assert (= bs!415200 d!590025))

(declare-fun m!2373449 () Bool)

(assert (=> bs!415200 m!2373449))

(assert (=> d!589665 d!590025))

(declare-fun d!590027 () Bool)

(assert (=> d!590027 (= (isDefined!3858 lt!741380) (not (isEmpty!13571 lt!741380)))))

(declare-fun bs!415201 () Bool)

(assert (= bs!415201 d!590027))

(assert (=> bs!415201 m!2372817))

(assert (=> b!1933990 d!590027))

(declare-fun d!590029 () Bool)

(declare-fun lt!741600 () BalanceConc!14500)

(assert (=> d!590029 (= (list!8905 lt!741600) (printList!1092 thiss!23328 (list!8907 (singletonSeq!1928 (h!27386 (t!180606 tokens!598))))))))

(assert (=> d!590029 (= lt!741600 (printTailRec!1033 thiss!23328 (singletonSeq!1928 (h!27386 (t!180606 tokens!598))) 0 (BalanceConc!14501 Empty!7342)))))

(assert (=> d!590029 (= (print!1527 thiss!23328 (singletonSeq!1928 (h!27386 (t!180606 tokens!598)))) lt!741600)))

(declare-fun bs!415202 () Bool)

(assert (= bs!415202 d!590029))

(declare-fun m!2373451 () Bool)

(assert (=> bs!415202 m!2373451))

(assert (=> bs!415202 m!2372785))

(declare-fun m!2373453 () Bool)

(assert (=> bs!415202 m!2373453))

(assert (=> bs!415202 m!2373453))

(declare-fun m!2373455 () Bool)

(assert (=> bs!415202 m!2373455))

(assert (=> bs!415202 m!2372785))

(assert (=> bs!415202 m!2372789))

(assert (=> b!1933969 d!590029))

(declare-fun d!590031 () Bool)

(declare-fun e!1236517 () Bool)

(assert (=> d!590031 e!1236517))

(declare-fun res!864963 () Bool)

(assert (=> d!590031 (=> (not res!864963) (not e!1236517))))

(declare-fun lt!741601 () BalanceConc!14502)

(assert (=> d!590031 (= res!864963 (= (list!8907 lt!741601) (Cons!21985 (h!27386 (t!180606 tokens!598)) Nil!21985)))))

(assert (=> d!590031 (= lt!741601 (singleton!855 (h!27386 (t!180606 tokens!598))))))

(assert (=> d!590031 (= (singletonSeq!1928 (h!27386 (t!180606 tokens!598))) lt!741601)))

(declare-fun b!1934538 () Bool)

(assert (=> b!1934538 (= e!1236517 (isBalanced!2270 (c!314510 lt!741601)))))

(assert (= (and d!590031 res!864963) b!1934538))

(declare-fun m!2373457 () Bool)

(assert (=> d!590031 m!2373457))

(declare-fun m!2373459 () Bool)

(assert (=> d!590031 m!2373459))

(declare-fun m!2373461 () Bool)

(assert (=> b!1934538 m!2373461))

(assert (=> b!1933969 d!590031))

(declare-fun d!590033 () Bool)

(declare-fun lt!741603 () BalanceConc!14500)

(assert (=> d!590033 (= (list!8905 lt!741603) (printListTailRec!460 thiss!23328 (dropList!791 (singletonSeq!1928 (h!27386 (t!180606 tokens!598))) 0) (list!8905 (BalanceConc!14501 Empty!7342))))))

(declare-fun e!1236518 () BalanceConc!14500)

(assert (=> d!590033 (= lt!741603 e!1236518)))

(declare-fun c!314705 () Bool)

(assert (=> d!590033 (= c!314705 (>= 0 (size!17150 (singletonSeq!1928 (h!27386 (t!180606 tokens!598))))))))

(declare-fun e!1236519 () Bool)

(assert (=> d!590033 e!1236519))

(declare-fun res!864964 () Bool)

(assert (=> d!590033 (=> (not res!864964) (not e!1236519))))

(assert (=> d!590033 (= res!864964 (>= 0 0))))

(assert (=> d!590033 (= (printTailRec!1033 thiss!23328 (singletonSeq!1928 (h!27386 (t!180606 tokens!598))) 0 (BalanceConc!14501 Empty!7342)) lt!741603)))

(declare-fun b!1934539 () Bool)

(assert (=> b!1934539 (= e!1236519 (<= 0 (size!17150 (singletonSeq!1928 (h!27386 (t!180606 tokens!598))))))))

(declare-fun b!1934540 () Bool)

(assert (=> b!1934540 (= e!1236518 (BalanceConc!14501 Empty!7342))))

(declare-fun b!1934541 () Bool)

(assert (=> b!1934541 (= e!1236518 (printTailRec!1033 thiss!23328 (singletonSeq!1928 (h!27386 (t!180606 tokens!598))) (+ 0 1) (++!5906 (BalanceConc!14501 Empty!7342) (charsOf!2484 (apply!5721 (singletonSeq!1928 (h!27386 (t!180606 tokens!598))) 0)))))))

(declare-fun lt!741607 () List!22067)

(assert (=> b!1934541 (= lt!741607 (list!8907 (singletonSeq!1928 (h!27386 (t!180606 tokens!598)))))))

(declare-fun lt!741608 () Unit!36346)

(assert (=> b!1934541 (= lt!741608 (lemmaDropApply!715 lt!741607 0))))

(assert (=> b!1934541 (= (head!4510 (drop!1082 lt!741607 0)) (apply!5722 lt!741607 0))))

(declare-fun lt!741602 () Unit!36346)

(assert (=> b!1934541 (= lt!741602 lt!741608)))

(declare-fun lt!741605 () List!22067)

(assert (=> b!1934541 (= lt!741605 (list!8907 (singletonSeq!1928 (h!27386 (t!180606 tokens!598)))))))

(declare-fun lt!741604 () Unit!36346)

(assert (=> b!1934541 (= lt!741604 (lemmaDropTail!691 lt!741605 0))))

(assert (=> b!1934541 (= (tail!2996 (drop!1082 lt!741605 0)) (drop!1082 lt!741605 (+ 0 1)))))

(declare-fun lt!741606 () Unit!36346)

(assert (=> b!1934541 (= lt!741606 lt!741604)))

(assert (= (and d!590033 res!864964) b!1934539))

(assert (= (and d!590033 c!314705) b!1934540))

(assert (= (and d!590033 (not c!314705)) b!1934541))

(assert (=> d!590033 m!2372785))

(declare-fun m!2373467 () Bool)

(assert (=> d!590033 m!2373467))

(assert (=> d!590033 m!2372297))

(declare-fun m!2373471 () Bool)

(assert (=> d!590033 m!2373471))

(declare-fun m!2373473 () Bool)

(assert (=> d!590033 m!2373473))

(assert (=> d!590033 m!2372297))

(declare-fun m!2373475 () Bool)

(assert (=> d!590033 m!2373475))

(assert (=> d!590033 m!2372785))

(assert (=> d!590033 m!2373473))

(assert (=> b!1934539 m!2372785))

(assert (=> b!1934539 m!2373467))

(declare-fun m!2373479 () Bool)

(assert (=> b!1934541 m!2373479))

(declare-fun m!2373481 () Bool)

(assert (=> b!1934541 m!2373481))

(declare-fun m!2373483 () Bool)

(assert (=> b!1934541 m!2373483))

(declare-fun m!2373485 () Bool)

(assert (=> b!1934541 m!2373485))

(declare-fun m!2373487 () Bool)

(assert (=> b!1934541 m!2373487))

(assert (=> b!1934541 m!2373485))

(assert (=> b!1934541 m!2372785))

(assert (=> b!1934541 m!2373453))

(assert (=> b!1934541 m!2373479))

(declare-fun m!2373489 () Bool)

(assert (=> b!1934541 m!2373489))

(declare-fun m!2373491 () Bool)

(assert (=> b!1934541 m!2373491))

(assert (=> b!1934541 m!2372785))

(declare-fun m!2373493 () Bool)

(assert (=> b!1934541 m!2373493))

(declare-fun m!2373495 () Bool)

(assert (=> b!1934541 m!2373495))

(assert (=> b!1934541 m!2372785))

(declare-fun m!2373499 () Bool)

(assert (=> b!1934541 m!2373499))

(assert (=> b!1934541 m!2373499))

(declare-fun m!2373501 () Bool)

(assert (=> b!1934541 m!2373501))

(declare-fun m!2373503 () Bool)

(assert (=> b!1934541 m!2373503))

(assert (=> b!1934541 m!2373501))

(assert (=> b!1934541 m!2373493))

(assert (=> b!1933969 d!590033))

(declare-fun b!1934678 () Bool)

(declare-fun e!1236612 () Unit!36346)

(declare-fun Unit!36354 () Unit!36346)

(assert (=> b!1934678 (= e!1236612 Unit!36354)))

(declare-fun e!1236611 () Bool)

(declare-fun b!1934676 () Bool)

(declare-fun lt!741699 () Token!7440)

(assert (=> b!1934676 (= e!1236611 (= (rule!6153 lt!741699) (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 lt!741699))))))))

(declare-fun b!1934675 () Bool)

(declare-fun res!865048 () Bool)

(assert (=> b!1934675 (=> (not res!865048) (not e!1236611))))

(assert (=> b!1934675 (= res!865048 (matchR!2637 (regex!3944 (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 lt!741699))))) (list!8905 (charsOf!2484 lt!741699))))))

(declare-fun d!590043 () Bool)

(assert (=> d!590043 (isDefined!3858 (maxPrefix!1995 thiss!23328 rules!3198 (++!5905 call!118962 lt!741377)))))

(declare-fun lt!741692 () Unit!36346)

(assert (=> d!590043 (= lt!741692 e!1236612)))

(declare-fun c!314729 () Bool)

(assert (=> d!590043 (= c!314729 (isEmpty!13571 (maxPrefix!1995 thiss!23328 rules!3198 (++!5905 call!118962 lt!741377))))))

(declare-fun lt!741701 () Unit!36346)

(declare-fun lt!741693 () Unit!36346)

(assert (=> d!590043 (= lt!741701 lt!741693)))

(assert (=> d!590043 e!1236611))

(declare-fun res!865049 () Bool)

(assert (=> d!590043 (=> (not res!865049) (not e!1236611))))

(assert (=> d!590043 (= res!865049 (isDefined!3857 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 lt!741699)))))))

(assert (=> d!590043 (= lt!741693 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!765 thiss!23328 rules!3198 call!118962 lt!741699))))

(declare-fun lt!741694 () Unit!36346)

(declare-fun lt!741695 () Unit!36346)

(assert (=> d!590043 (= lt!741694 lt!741695)))

(declare-fun lt!741698 () List!22064)

(assert (=> d!590043 (isPrefix!1949 lt!741698 (++!5905 call!118962 lt!741377))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!370 (List!22064 List!22064 List!22064) Unit!36346)

(assert (=> d!590043 (= lt!741695 (lemmaPrefixStaysPrefixWhenAddingToSuffix!370 lt!741698 call!118962 lt!741377))))

(assert (=> d!590043 (= lt!741698 (list!8905 (charsOf!2484 lt!741699)))))

(declare-fun lt!741706 () Unit!36346)

(declare-fun lt!741696 () Unit!36346)

(assert (=> d!590043 (= lt!741706 lt!741696)))

(declare-fun lt!741703 () List!22064)

(declare-fun lt!741707 () List!22064)

(assert (=> d!590043 (isPrefix!1949 lt!741703 (++!5905 lt!741703 lt!741707))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1329 (List!22064 List!22064) Unit!36346)

(assert (=> d!590043 (= lt!741696 (lemmaConcatTwoListThenFirstIsPrefix!1329 lt!741703 lt!741707))))

(assert (=> d!590043 (= lt!741707 (_2!11772 (get!6933 (maxPrefix!1995 thiss!23328 rules!3198 call!118962))))))

(assert (=> d!590043 (= lt!741703 (list!8905 (charsOf!2484 lt!741699)))))

(assert (=> d!590043 (= lt!741699 (head!4510 (list!8907 (_1!11771 (lex!1581 thiss!23328 rules!3198 (seqFromList!2798 call!118962))))))))

(assert (=> d!590043 (not (isEmpty!13564 rules!3198))))

(assert (=> d!590043 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!751 thiss!23328 rules!3198 call!118962 lt!741377) lt!741692)))

(declare-fun b!1934677 () Bool)

(declare-fun Unit!36355 () Unit!36346)

(assert (=> b!1934677 (= e!1236612 Unit!36355)))

(declare-fun lt!741708 () List!22064)

(assert (=> b!1934677 (= lt!741708 (++!5905 call!118962 lt!741377))))

(declare-fun lt!741702 () Unit!36346)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!378 (LexerInterface!3557 Rule!7688 List!22066 List!22064) Unit!36346)

(assert (=> b!1934677 (= lt!741702 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!378 thiss!23328 (rule!6153 lt!741699) rules!3198 lt!741708))))

(assert (=> b!1934677 (isEmpty!13571 (maxPrefixOneRule!1231 thiss!23328 (rule!6153 lt!741699) lt!741708))))

(declare-fun lt!741697 () Unit!36346)

(assert (=> b!1934677 (= lt!741697 lt!741702)))

(declare-fun lt!741700 () List!22064)

(assert (=> b!1934677 (= lt!741700 (list!8905 (charsOf!2484 lt!741699)))))

(declare-fun lt!741705 () Unit!36346)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!374 (LexerInterface!3557 Rule!7688 List!22064 List!22064) Unit!36346)

(assert (=> b!1934677 (= lt!741705 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!374 thiss!23328 (rule!6153 lt!741699) lt!741700 (++!5905 call!118962 lt!741377)))))

(assert (=> b!1934677 (not (matchR!2637 (regex!3944 (rule!6153 lt!741699)) lt!741700))))

(declare-fun lt!741704 () Unit!36346)

(assert (=> b!1934677 (= lt!741704 lt!741705)))

(assert (=> b!1934677 false))

(assert (= (and d!590043 res!865049) b!1934675))

(assert (= (and b!1934675 res!865048) b!1934676))

(assert (= (and d!590043 c!314729) b!1934677))

(assert (= (and d!590043 (not c!314729)) b!1934678))

(declare-fun m!2373735 () Bool)

(assert (=> b!1934676 m!2373735))

(assert (=> b!1934676 m!2373735))

(declare-fun m!2373737 () Bool)

(assert (=> b!1934676 m!2373737))

(assert (=> b!1934675 m!2373735))

(assert (=> b!1934675 m!2373737))

(declare-fun m!2373739 () Bool)

(assert (=> b!1934675 m!2373739))

(declare-fun m!2373741 () Bool)

(assert (=> b!1934675 m!2373741))

(assert (=> b!1934675 m!2373741))

(declare-fun m!2373747 () Bool)

(assert (=> b!1934675 m!2373747))

(assert (=> b!1934675 m!2373739))

(assert (=> b!1934675 m!2373735))

(assert (=> d!590043 m!2373735))

(declare-fun m!2373753 () Bool)

(assert (=> d!590043 m!2373753))

(declare-fun m!2373759 () Bool)

(assert (=> d!590043 m!2373759))

(declare-fun m!2373767 () Bool)

(assert (=> d!590043 m!2373767))

(assert (=> d!590043 m!2373759))

(declare-fun m!2373769 () Bool)

(assert (=> d!590043 m!2373769))

(assert (=> d!590043 m!2372173))

(assert (=> d!590043 m!2373739))

(assert (=> d!590043 m!2373735))

(declare-fun m!2373771 () Bool)

(assert (=> d!590043 m!2373771))

(declare-fun m!2373773 () Bool)

(assert (=> d!590043 m!2373773))

(declare-fun m!2373777 () Bool)

(assert (=> d!590043 m!2373777))

(assert (=> d!590043 m!2373759))

(assert (=> d!590043 m!2373739))

(assert (=> d!590043 m!2373741))

(declare-fun m!2373779 () Bool)

(assert (=> d!590043 m!2373779))

(declare-fun m!2373783 () Bool)

(assert (=> d!590043 m!2373783))

(declare-fun m!2373787 () Bool)

(assert (=> d!590043 m!2373787))

(assert (=> d!590043 m!2373777))

(declare-fun m!2373789 () Bool)

(assert (=> d!590043 m!2373789))

(declare-fun m!2373791 () Bool)

(assert (=> d!590043 m!2373791))

(declare-fun m!2373793 () Bool)

(assert (=> d!590043 m!2373793))

(declare-fun m!2373795 () Bool)

(assert (=> d!590043 m!2373795))

(assert (=> d!590043 m!2373791))

(assert (=> d!590043 m!2373783))

(declare-fun m!2373797 () Bool)

(assert (=> d!590043 m!2373797))

(declare-fun m!2373799 () Bool)

(assert (=> d!590043 m!2373799))

(assert (=> d!590043 m!2373771))

(assert (=> d!590043 m!2373777))

(declare-fun m!2373805 () Bool)

(assert (=> d!590043 m!2373805))

(assert (=> d!590043 m!2373797))

(assert (=> b!1934677 m!2373739))

(assert (=> b!1934677 m!2373741))

(declare-fun m!2373809 () Bool)

(assert (=> b!1934677 m!2373809))

(declare-fun m!2373811 () Bool)

(assert (=> b!1934677 m!2373811))

(declare-fun m!2373813 () Bool)

(assert (=> b!1934677 m!2373813))

(assert (=> b!1934677 m!2373811))

(assert (=> b!1934677 m!2373777))

(declare-fun m!2373815 () Bool)

(assert (=> b!1934677 m!2373815))

(assert (=> b!1934677 m!2373739))

(assert (=> b!1934677 m!2373777))

(declare-fun m!2373817 () Bool)

(assert (=> b!1934677 m!2373817))

(assert (=> b!1933969 d!590043))

(declare-fun bs!415227 () Bool)

(declare-fun d!590141 () Bool)

(assert (= bs!415227 (and d!590141 b!1933516)))

(declare-fun lambda!75414 () Int)

(assert (=> bs!415227 (not (= lambda!75414 lambda!75371))))

(declare-fun bs!415228 () Bool)

(assert (= bs!415228 (and d!590141 b!1933975)))

(assert (=> bs!415228 (= lambda!75414 lambda!75389)))

(declare-fun bs!415229 () Bool)

(assert (= bs!415229 (and d!590141 d!589835)))

(assert (=> bs!415229 (= lambda!75414 lambda!75395)))

(declare-fun b!1934693 () Bool)

(declare-fun e!1236623 () Bool)

(assert (=> b!1934693 (= e!1236623 true)))

(declare-fun b!1934692 () Bool)

(declare-fun e!1236622 () Bool)

(assert (=> b!1934692 (= e!1236622 e!1236623)))

(declare-fun b!1934691 () Bool)

(declare-fun e!1236621 () Bool)

(assert (=> b!1934691 (= e!1236621 e!1236622)))

(assert (=> d!590141 e!1236621))

(assert (= b!1934692 b!1934693))

(assert (= b!1934691 b!1934692))

(assert (= (and d!590141 ((_ is Cons!21984) rules!3198)) b!1934691))

(assert (=> b!1934693 (< (dynLambda!10697 order!13847 (toValue!5585 (transformation!3944 (h!27385 rules!3198)))) (dynLambda!10703 order!13855 lambda!75414))))

(assert (=> b!1934693 (< (dynLambda!10699 order!13851 (toChars!5444 (transformation!3944 (h!27385 rules!3198)))) (dynLambda!10703 order!13855 lambda!75414))))

(assert (=> d!590141 true))

(declare-fun lt!741716 () Bool)

(assert (=> d!590141 (= lt!741716 (forall!4650 (t!180606 tokens!598) lambda!75414))))

(declare-fun e!1236620 () Bool)

(assert (=> d!590141 (= lt!741716 e!1236620)))

(declare-fun res!865056 () Bool)

(assert (=> d!590141 (=> res!865056 e!1236620)))

(assert (=> d!590141 (= res!865056 (not ((_ is Cons!21985) (t!180606 tokens!598))))))

(assert (=> d!590141 (not (isEmpty!13564 rules!3198))))

(assert (=> d!590141 (= (rulesProduceEachTokenIndividuallyList!1288 thiss!23328 rules!3198 (t!180606 tokens!598)) lt!741716)))

(declare-fun b!1934689 () Bool)

(declare-fun e!1236619 () Bool)

(assert (=> b!1934689 (= e!1236620 e!1236619)))

(declare-fun res!865057 () Bool)

(assert (=> b!1934689 (=> (not res!865057) (not e!1236619))))

(assert (=> b!1934689 (= res!865057 (rulesProduceIndividualToken!1729 thiss!23328 rules!3198 (h!27386 (t!180606 tokens!598))))))

(declare-fun b!1934690 () Bool)

(assert (=> b!1934690 (= e!1236619 (rulesProduceEachTokenIndividuallyList!1288 thiss!23328 rules!3198 (t!180606 (t!180606 tokens!598))))))

(assert (= (and d!590141 (not res!865056)) b!1934689))

(assert (= (and b!1934689 res!865057) b!1934690))

(declare-fun m!2373833 () Bool)

(assert (=> d!590141 m!2373833))

(assert (=> d!590141 m!2372173))

(declare-fun m!2373835 () Bool)

(assert (=> b!1934689 m!2373835))

(declare-fun m!2373837 () Bool)

(assert (=> b!1934690 m!2373837))

(assert (=> b!1934182 d!590141))

(declare-fun d!590145 () Bool)

(assert (=> d!590145 (= (list!8905 (_2!11771 lt!741400)) (list!8908 (c!314508 (_2!11771 lt!741400))))))

(declare-fun bs!415230 () Bool)

(assert (= bs!415230 d!590145))

(declare-fun m!2373839 () Bool)

(assert (=> bs!415230 m!2373839))

(assert (=> b!1934154 d!590145))

(declare-fun b!1934737 () Bool)

(declare-fun e!1236651 () Bool)

(declare-fun lt!741744 () tuple2!20610)

(assert (=> b!1934737 (= e!1236651 (= (_2!11774 lt!741744) (list!8905 (seqFromList!2798 lt!741158))))))

(declare-fun b!1934738 () Bool)

(declare-fun e!1236650 () tuple2!20610)

(assert (=> b!1934738 (= e!1236650 (tuple2!20611 Nil!21985 (list!8905 (seqFromList!2798 lt!741158))))))

(declare-fun b!1934739 () Bool)

(declare-fun e!1236649 () Bool)

(assert (=> b!1934739 (= e!1236651 e!1236649)))

(declare-fun res!865075 () Bool)

(assert (=> b!1934739 (= res!865075 (< (size!17151 (_2!11774 lt!741744)) (size!17151 (list!8905 (seqFromList!2798 lt!741158)))))))

(assert (=> b!1934739 (=> (not res!865075) (not e!1236649))))

(declare-fun b!1934740 () Bool)

(declare-fun lt!741743 () Option!4566)

(declare-fun lt!741745 () tuple2!20610)

(assert (=> b!1934740 (= e!1236650 (tuple2!20611 (Cons!21985 (_1!11772 (v!26680 lt!741743)) (_1!11774 lt!741745)) (_2!11774 lt!741745)))))

(assert (=> b!1934740 (= lt!741745 (lexList!955 thiss!23328 rules!3198 (_2!11772 (v!26680 lt!741743))))))

(declare-fun d!590147 () Bool)

(assert (=> d!590147 e!1236651))

(declare-fun c!314742 () Bool)

(assert (=> d!590147 (= c!314742 (> (size!17158 (_1!11774 lt!741744)) 0))))

(assert (=> d!590147 (= lt!741744 e!1236650)))

(declare-fun c!314743 () Bool)

(assert (=> d!590147 (= c!314743 ((_ is Some!4565) lt!741743))))

(assert (=> d!590147 (= lt!741743 (maxPrefix!1995 thiss!23328 rules!3198 (list!8905 (seqFromList!2798 lt!741158))))))

(assert (=> d!590147 (= (lexList!955 thiss!23328 rules!3198 (list!8905 (seqFromList!2798 lt!741158))) lt!741744)))

(declare-fun b!1934741 () Bool)

(assert (=> b!1934741 (= e!1236649 (not (isEmpty!13575 (_1!11774 lt!741744))))))

(assert (= (and d!590147 c!314743) b!1934740))

(assert (= (and d!590147 (not c!314743)) b!1934738))

(assert (= (and d!590147 c!314742) b!1934739))

(assert (= (and d!590147 (not c!314742)) b!1934737))

(assert (= (and b!1934739 res!865075) b!1934741))

(declare-fun m!2373941 () Bool)

(assert (=> b!1934739 m!2373941))

(assert (=> b!1934739 m!2372949))

(assert (=> b!1934739 m!2373253))

(declare-fun m!2373943 () Bool)

(assert (=> b!1934740 m!2373943))

(declare-fun m!2373945 () Bool)

(assert (=> d!590147 m!2373945))

(assert (=> d!590147 m!2372949))

(declare-fun m!2373947 () Bool)

(assert (=> d!590147 m!2373947))

(declare-fun m!2373949 () Bool)

(assert (=> b!1934741 m!2373949))

(assert (=> b!1934154 d!590147))

(declare-fun d!590171 () Bool)

(assert (=> d!590171 (= (list!8905 (seqFromList!2798 lt!741158)) (list!8908 (c!314508 (seqFromList!2798 lt!741158))))))

(declare-fun bs!415240 () Bool)

(assert (= bs!415240 d!590171))

(declare-fun m!2373951 () Bool)

(assert (=> bs!415240 m!2373951))

(assert (=> b!1934154 d!590171))

(declare-fun d!590173 () Bool)

(declare-fun lt!741755 () Token!7440)

(assert (=> d!590173 (= lt!741755 (apply!5722 (list!8907 (_1!11771 lt!741385)) 0))))

(declare-fun apply!5727 (Conc!7343 Int) Token!7440)

(assert (=> d!590173 (= lt!741755 (apply!5727 (c!314510 (_1!11771 lt!741385)) 0))))

(declare-fun e!1236679 () Bool)

(assert (=> d!590173 e!1236679))

(declare-fun res!865105 () Bool)

(assert (=> d!590173 (=> (not res!865105) (not e!1236679))))

(assert (=> d!590173 (= res!865105 (<= 0 0))))

(assert (=> d!590173 (= (apply!5721 (_1!11771 lt!741385) 0) lt!741755)))

(declare-fun b!1934785 () Bool)

(assert (=> b!1934785 (= e!1236679 (< 0 (size!17150 (_1!11771 lt!741385))))))

(assert (= (and d!590173 res!865105) b!1934785))

(declare-fun m!2373995 () Bool)

(assert (=> d!590173 m!2373995))

(assert (=> d!590173 m!2373995))

(declare-fun m!2373997 () Bool)

(assert (=> d!590173 m!2373997))

(declare-fun m!2373999 () Bool)

(assert (=> d!590173 m!2373999))

(assert (=> b!1934785 m!2372851))

(assert (=> b!1933999 d!590173))

(declare-fun d!590193 () Bool)

(assert (=> d!590193 (= (isEmpty!13567 (originalCharacters!4751 (h!27386 tokens!598))) ((_ is Nil!21982) (originalCharacters!4751 (h!27386 tokens!598))))))

(assert (=> d!589829 d!590193))

(declare-fun d!590195 () Bool)

(assert (=> d!590195 (= (isEmpty!13567 lt!741174) ((_ is Nil!21982) lt!741174))))

(assert (=> d!589831 d!590195))

(declare-fun bm!119014 () Bool)

(declare-fun call!119019 () Bool)

(declare-fun c!314764 () Bool)

(assert (=> bm!119014 (= call!119019 (validRegex!2142 (ite c!314764 (regTwo!11251 (regex!3944 lt!741162)) (regTwo!11250 (regex!3944 lt!741162)))))))

(declare-fun b!1934829 () Bool)

(declare-fun res!865128 () Bool)

(declare-fun e!1236707 () Bool)

(assert (=> b!1934829 (=> (not res!865128) (not e!1236707))))

(declare-fun call!119020 () Bool)

(assert (=> b!1934829 (= res!865128 call!119020)))

(declare-fun e!1236712 () Bool)

(assert (=> b!1934829 (= e!1236712 e!1236707)))

(declare-fun b!1934830 () Bool)

(declare-fun e!1236711 () Bool)

(declare-fun e!1236709 () Bool)

(assert (=> b!1934830 (= e!1236711 e!1236709)))

(declare-fun res!865124 () Bool)

(assert (=> b!1934830 (=> (not res!865124) (not e!1236709))))

(assert (=> b!1934830 (= res!865124 call!119020)))

(declare-fun b!1934831 () Bool)

(declare-fun res!865126 () Bool)

(assert (=> b!1934831 (=> res!865126 e!1236711)))

(assert (=> b!1934831 (= res!865126 (not ((_ is Concat!9450) (regex!3944 lt!741162))))))

(assert (=> b!1934831 (= e!1236712 e!1236711)))

(declare-fun b!1934832 () Bool)

(declare-fun e!1236706 () Bool)

(declare-fun e!1236708 () Bool)

(assert (=> b!1934832 (= e!1236706 e!1236708)))

(declare-fun c!314763 () Bool)

(assert (=> b!1934832 (= c!314763 ((_ is Star!5369) (regex!3944 lt!741162)))))

(declare-fun call!119021 () Bool)

(declare-fun bm!119015 () Bool)

(assert (=> bm!119015 (= call!119021 (validRegex!2142 (ite c!314763 (reg!5698 (regex!3944 lt!741162)) (ite c!314764 (regOne!11251 (regex!3944 lt!741162)) (regOne!11250 (regex!3944 lt!741162))))))))

(declare-fun b!1934833 () Bool)

(assert (=> b!1934833 (= e!1236709 call!119019)))

(declare-fun b!1934834 () Bool)

(declare-fun e!1236710 () Bool)

(assert (=> b!1934834 (= e!1236708 e!1236710)))

(declare-fun res!865127 () Bool)

(assert (=> b!1934834 (= res!865127 (not (nullable!1616 (reg!5698 (regex!3944 lt!741162)))))))

(assert (=> b!1934834 (=> (not res!865127) (not e!1236710))))

(declare-fun b!1934835 () Bool)

(assert (=> b!1934835 (= e!1236708 e!1236712)))

(assert (=> b!1934835 (= c!314764 ((_ is Union!5369) (regex!3944 lt!741162)))))

(declare-fun b!1934836 () Bool)

(assert (=> b!1934836 (= e!1236707 call!119019)))

(declare-fun bm!119016 () Bool)

(assert (=> bm!119016 (= call!119020 call!119021)))

(declare-fun b!1934828 () Bool)

(assert (=> b!1934828 (= e!1236710 call!119021)))

(declare-fun d!590197 () Bool)

(declare-fun res!865125 () Bool)

(assert (=> d!590197 (=> res!865125 e!1236706)))

(assert (=> d!590197 (= res!865125 ((_ is ElementMatch!5369) (regex!3944 lt!741162)))))

(assert (=> d!590197 (= (validRegex!2142 (regex!3944 lt!741162)) e!1236706)))

(assert (= (and d!590197 (not res!865125)) b!1934832))

(assert (= (and b!1934832 c!314763) b!1934834))

(assert (= (and b!1934832 (not c!314763)) b!1934835))

(assert (= (and b!1934834 res!865127) b!1934828))

(assert (= (and b!1934835 c!314764) b!1934829))

(assert (= (and b!1934835 (not c!314764)) b!1934831))

(assert (= (and b!1934829 res!865128) b!1934836))

(assert (= (and b!1934831 (not res!865126)) b!1934830))

(assert (= (and b!1934830 res!865124) b!1934833))

(assert (= (or b!1934829 b!1934830) bm!119016))

(assert (= (or b!1934836 b!1934833) bm!119014))

(assert (= (or b!1934828 bm!119016) bm!119015))

(declare-fun m!2374065 () Bool)

(assert (=> bm!119014 m!2374065))

(declare-fun m!2374067 () Bool)

(assert (=> bm!119015 m!2374067))

(declare-fun m!2374069 () Bool)

(assert (=> b!1934834 m!2374069))

(assert (=> d!589831 d!590197))

(declare-fun bs!415245 () Bool)

(declare-fun d!590207 () Bool)

(assert (= bs!415245 (and d!590207 d!589687)))

(declare-fun lambda!75421 () Int)

(assert (=> bs!415245 (= (= (toValue!5585 (transformation!3944 (h!27385 rules!3198))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) (= lambda!75421 lambda!75383))))

(assert (=> d!590207 true))

(assert (=> d!590207 (< (dynLambda!10697 order!13847 (toValue!5585 (transformation!3944 (h!27385 rules!3198)))) (dynLambda!10698 order!13849 lambda!75421))))

(declare-fun Forall2!629 (Int) Bool)

(assert (=> d!590207 (= (equivClasses!1500 (toChars!5444 (transformation!3944 (h!27385 rules!3198))) (toValue!5585 (transformation!3944 (h!27385 rules!3198)))) (Forall2!629 lambda!75421))))

(declare-fun bs!415246 () Bool)

(assert (= bs!415246 d!590207))

(declare-fun m!2374087 () Bool)

(assert (=> bs!415246 m!2374087))

(assert (=> b!1933621 d!590207))

(declare-fun d!590219 () Bool)

(declare-fun c!314768 () Bool)

(assert (=> d!590219 (= c!314768 ((_ is Node!7342) (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (value!123995 (h!27386 tokens!598))))))))

(declare-fun e!1236723 () Bool)

(assert (=> d!590219 (= (inv!29081 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (value!123995 (h!27386 tokens!598))))) e!1236723)))

(declare-fun b!1934855 () Bool)

(assert (=> b!1934855 (= e!1236723 (inv!29083 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (value!123995 (h!27386 tokens!598))))))))

(declare-fun b!1934856 () Bool)

(declare-fun e!1236724 () Bool)

(assert (=> b!1934856 (= e!1236723 e!1236724)))

(declare-fun res!865139 () Bool)

(assert (=> b!1934856 (= res!865139 (not ((_ is Leaf!10777) (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (value!123995 (h!27386 tokens!598)))))))))

(assert (=> b!1934856 (=> res!865139 e!1236724)))

(declare-fun b!1934857 () Bool)

(assert (=> b!1934857 (= e!1236724 (inv!29084 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (value!123995 (h!27386 tokens!598))))))))

(assert (= (and d!590219 c!314768) b!1934855))

(assert (= (and d!590219 (not c!314768)) b!1934856))

(assert (= (and b!1934856 (not res!865139)) b!1934857))

(declare-fun m!2374095 () Bool)

(assert (=> b!1934855 m!2374095))

(declare-fun m!2374097 () Bool)

(assert (=> b!1934857 m!2374097))

(assert (=> b!1933989 d!590219))

(declare-fun d!590221 () Bool)

(assert (=> d!590221 (= (inv!17 (value!123995 (h!27386 tokens!598))) (= (charsToBigInt!1 (text!29008 (value!123995 (h!27386 tokens!598)))) (value!123987 (value!123995 (h!27386 tokens!598)))))))

(declare-fun bs!415247 () Bool)

(assert (= bs!415247 d!590221))

(declare-fun m!2374103 () Bool)

(assert (=> bs!415247 m!2374103))

(assert (=> b!1933636 d!590221))

(declare-fun b!1934860 () Bool)

(declare-fun e!1236728 () Bool)

(declare-fun e!1236725 () Bool)

(assert (=> b!1934860 (= e!1236728 e!1236725)))

(declare-fun res!865145 () Bool)

(assert (=> b!1934860 (=> (not res!865145) (not e!1236725))))

(declare-fun lt!741763 () Option!4566)

(assert (=> b!1934860 (= res!865145 (isDefined!3858 lt!741763))))

(declare-fun bm!119018 () Bool)

(declare-fun call!119023 () Option!4566)

(assert (=> bm!119018 (= call!119023 (maxPrefixOneRule!1231 thiss!23328 (h!27385 (t!180605 rules!3198)) lt!741158))))

(declare-fun b!1934861 () Bool)

(declare-fun res!865146 () Bool)

(assert (=> b!1934861 (=> (not res!865146) (not e!1236725))))

(assert (=> b!1934861 (= res!865146 (< (size!17151 (_2!11772 (get!6933 lt!741763))) (size!17151 lt!741158)))))

(declare-fun b!1934863 () Bool)

(declare-fun res!865144 () Bool)

(assert (=> b!1934863 (=> (not res!865144) (not e!1236725))))

(assert (=> b!1934863 (= res!865144 (= (value!123995 (_1!11772 (get!6933 lt!741763))) (apply!5725 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741763)))) (seqFromList!2798 (originalCharacters!4751 (_1!11772 (get!6933 lt!741763)))))))))

(declare-fun b!1934864 () Bool)

(declare-fun res!865143 () Bool)

(assert (=> b!1934864 (=> (not res!865143) (not e!1236725))))

(assert (=> b!1934864 (= res!865143 (= (++!5905 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741763)))) (_2!11772 (get!6933 lt!741763))) lt!741158))))

(declare-fun b!1934865 () Bool)

(assert (=> b!1934865 (= e!1236725 (contains!3983 (t!180605 rules!3198) (rule!6153 (_1!11772 (get!6933 lt!741763)))))))

(declare-fun b!1934866 () Bool)

(declare-fun res!865147 () Bool)

(assert (=> b!1934866 (=> (not res!865147) (not e!1236725))))

(assert (=> b!1934866 (= res!865147 (matchR!2637 (regex!3944 (rule!6153 (_1!11772 (get!6933 lt!741763)))) (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741763))))))))

(declare-fun d!590223 () Bool)

(assert (=> d!590223 e!1236728))

(declare-fun res!865142 () Bool)

(assert (=> d!590223 (=> res!865142 e!1236728)))

(assert (=> d!590223 (= res!865142 (isEmpty!13571 lt!741763))))

(declare-fun e!1236726 () Option!4566)

(assert (=> d!590223 (= lt!741763 e!1236726)))

(declare-fun c!314769 () Bool)

(assert (=> d!590223 (= c!314769 (and ((_ is Cons!21984) (t!180605 rules!3198)) ((_ is Nil!21984) (t!180605 (t!180605 rules!3198)))))))

(declare-fun lt!741767 () Unit!36346)

(declare-fun lt!741762 () Unit!36346)

(assert (=> d!590223 (= lt!741767 lt!741762)))

(assert (=> d!590223 (isPrefix!1949 lt!741158 lt!741158)))

(assert (=> d!590223 (= lt!741762 (lemmaIsPrefixRefl!1267 lt!741158 lt!741158))))

(assert (=> d!590223 (rulesValidInductive!1348 thiss!23328 (t!180605 rules!3198))))

(assert (=> d!590223 (= (maxPrefix!1995 thiss!23328 (t!180605 rules!3198) lt!741158) lt!741763)))

(declare-fun b!1934862 () Bool)

(declare-fun res!865148 () Bool)

(assert (=> b!1934862 (=> (not res!865148) (not e!1236725))))

(assert (=> b!1934862 (= res!865148 (= (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741763)))) (originalCharacters!4751 (_1!11772 (get!6933 lt!741763)))))))

(declare-fun b!1934867 () Bool)

(assert (=> b!1934867 (= e!1236726 call!119023)))

(declare-fun b!1934868 () Bool)

(declare-fun lt!741764 () Option!4566)

(declare-fun lt!741766 () Option!4566)

(assert (=> b!1934868 (= e!1236726 (ite (and ((_ is None!4565) lt!741764) ((_ is None!4565) lt!741766)) None!4565 (ite ((_ is None!4565) lt!741766) lt!741764 (ite ((_ is None!4565) lt!741764) lt!741766 (ite (>= (size!17148 (_1!11772 (v!26680 lt!741764))) (size!17148 (_1!11772 (v!26680 lt!741766)))) lt!741764 lt!741766)))))))

(assert (=> b!1934868 (= lt!741764 call!119023)))

(assert (=> b!1934868 (= lt!741766 (maxPrefix!1995 thiss!23328 (t!180605 (t!180605 rules!3198)) lt!741158))))

(assert (= (and d!590223 c!314769) b!1934867))

(assert (= (and d!590223 (not c!314769)) b!1934868))

(assert (= (or b!1934867 b!1934868) bm!119018))

(assert (= (and d!590223 (not res!865142)) b!1934860))

(assert (= (and b!1934860 res!865145) b!1934862))

(assert (= (and b!1934862 res!865148) b!1934861))

(assert (= (and b!1934861 res!865146) b!1934864))

(assert (= (and b!1934864 res!865143) b!1934863))

(assert (= (and b!1934863 res!865144) b!1934866))

(assert (= (and b!1934866 res!865147) b!1934865))

(declare-fun m!2374111 () Bool)

(assert (=> b!1934866 m!2374111))

(declare-fun m!2374113 () Bool)

(assert (=> b!1934866 m!2374113))

(assert (=> b!1934866 m!2374113))

(declare-fun m!2374115 () Bool)

(assert (=> b!1934866 m!2374115))

(assert (=> b!1934866 m!2374115))

(declare-fun m!2374117 () Bool)

(assert (=> b!1934866 m!2374117))

(assert (=> b!1934862 m!2374111))

(assert (=> b!1934862 m!2374113))

(assert (=> b!1934862 m!2374113))

(assert (=> b!1934862 m!2374115))

(declare-fun m!2374119 () Bool)

(assert (=> d!590223 m!2374119))

(assert (=> d!590223 m!2372819))

(assert (=> d!590223 m!2372821))

(assert (=> d!590223 m!2373161))

(declare-fun m!2374121 () Bool)

(assert (=> b!1934868 m!2374121))

(assert (=> b!1934863 m!2374111))

(declare-fun m!2374123 () Bool)

(assert (=> b!1934863 m!2374123))

(assert (=> b!1934863 m!2374123))

(declare-fun m!2374125 () Bool)

(assert (=> b!1934863 m!2374125))

(declare-fun m!2374127 () Bool)

(assert (=> b!1934860 m!2374127))

(declare-fun m!2374129 () Bool)

(assert (=> bm!119018 m!2374129))

(assert (=> b!1934865 m!2374111))

(declare-fun m!2374131 () Bool)

(assert (=> b!1934865 m!2374131))

(assert (=> b!1934864 m!2374111))

(assert (=> b!1934864 m!2374113))

(assert (=> b!1934864 m!2374113))

(assert (=> b!1934864 m!2374115))

(assert (=> b!1934864 m!2374115))

(declare-fun m!2374133 () Bool)

(assert (=> b!1934864 m!2374133))

(assert (=> b!1934861 m!2374111))

(declare-fun m!2374135 () Bool)

(assert (=> b!1934861 m!2374135))

(assert (=> b!1934861 m!2372353))

(assert (=> b!1933998 d!590223))

(declare-fun d!590231 () Bool)

(assert (=> d!590231 (= (list!8905 (ite c!314603 call!118964 call!118961)) (list!8908 (c!314508 (ite c!314603 call!118964 call!118961))))))

(declare-fun bs!415249 () Bool)

(assert (= bs!415249 d!590231))

(declare-fun m!2374137 () Bool)

(assert (=> bs!415249 m!2374137))

(assert (=> bm!118956 d!590231))

(declare-fun d!590233 () Bool)

(declare-fun e!1236730 () Bool)

(assert (=> d!590233 e!1236730))

(declare-fun res!865149 () Bool)

(assert (=> d!590233 (=> (not res!865149) (not e!1236730))))

(declare-fun lt!741768 () BalanceConc!14502)

(assert (=> d!590233 (= res!865149 (= (list!8907 lt!741768) (Cons!21985 separatorToken!354 Nil!21985)))))

(assert (=> d!590233 (= lt!741768 (singleton!855 separatorToken!354))))

(assert (=> d!590233 (= (singletonSeq!1928 separatorToken!354) lt!741768)))

(declare-fun b!1934869 () Bool)

(assert (=> b!1934869 (= e!1236730 (isBalanced!2270 (c!314510 lt!741768)))))

(assert (= (and d!590233 res!865149) b!1934869))

(declare-fun m!2374139 () Bool)

(assert (=> d!590233 m!2374139))

(declare-fun m!2374141 () Bool)

(assert (=> d!590233 m!2374141))

(declare-fun m!2374143 () Bool)

(assert (=> b!1934869 m!2374143))

(assert (=> d!589793 d!590233))

(declare-fun d!590235 () Bool)

(declare-fun lt!741769 () BalanceConc!14500)

(assert (=> d!590235 (= (list!8905 lt!741769) (printList!1092 thiss!23328 (list!8907 (singletonSeq!1928 separatorToken!354))))))

(assert (=> d!590235 (= lt!741769 (printTailRec!1033 thiss!23328 (singletonSeq!1928 separatorToken!354) 0 (BalanceConc!14501 Empty!7342)))))

(assert (=> d!590235 (= (print!1527 thiss!23328 (singletonSeq!1928 separatorToken!354)) lt!741769)))

(declare-fun bs!415250 () Bool)

(assert (= bs!415250 d!590235))

(declare-fun m!2374145 () Bool)

(assert (=> bs!415250 m!2374145))

(assert (=> bs!415250 m!2372845))

(assert (=> bs!415250 m!2372847))

(assert (=> bs!415250 m!2372847))

(declare-fun m!2374147 () Bool)

(assert (=> bs!415250 m!2374147))

(assert (=> bs!415250 m!2372845))

(declare-fun m!2374149 () Bool)

(assert (=> bs!415250 m!2374149))

(assert (=> d!589793 d!590235))

(declare-fun d!590237 () Bool)

(assert (=> d!590237 (= (list!8907 (_1!11771 (lex!1581 thiss!23328 rules!3198 (print!1527 thiss!23328 (singletonSeq!1928 separatorToken!354))))) (list!8912 (c!314510 (_1!11771 (lex!1581 thiss!23328 rules!3198 (print!1527 thiss!23328 (singletonSeq!1928 separatorToken!354)))))))))

(declare-fun bs!415251 () Bool)

(assert (= bs!415251 d!590237))

(declare-fun m!2374151 () Bool)

(assert (=> bs!415251 m!2374151))

(assert (=> d!589793 d!590237))

(declare-fun d!590239 () Bool)

(assert (=> d!590239 (= (list!8907 (singletonSeq!1928 separatorToken!354)) (list!8912 (c!314510 (singletonSeq!1928 separatorToken!354))))))

(declare-fun bs!415252 () Bool)

(assert (= bs!415252 d!590239))

(declare-fun m!2374153 () Bool)

(assert (=> bs!415252 m!2374153))

(assert (=> d!589793 d!590239))

(declare-fun b!1934870 () Bool)

(declare-fun e!1236733 () Bool)

(declare-fun e!1236731 () Bool)

(assert (=> b!1934870 (= e!1236733 e!1236731)))

(declare-fun res!865151 () Bool)

(declare-fun lt!741770 () tuple2!20604)

(assert (=> b!1934870 (= res!865151 (< (size!17154 (_2!11771 lt!741770)) (size!17154 (print!1527 thiss!23328 (singletonSeq!1928 separatorToken!354)))))))

(assert (=> b!1934870 (=> (not res!865151) (not e!1236731))))

(declare-fun d!590241 () Bool)

(declare-fun e!1236732 () Bool)

(assert (=> d!590241 e!1236732))

(declare-fun res!865152 () Bool)

(assert (=> d!590241 (=> (not res!865152) (not e!1236732))))

(assert (=> d!590241 (= res!865152 e!1236733)))

(declare-fun c!314770 () Bool)

(assert (=> d!590241 (= c!314770 (> (size!17150 (_1!11771 lt!741770)) 0))))

(assert (=> d!590241 (= lt!741770 (lexTailRecV2!678 thiss!23328 rules!3198 (print!1527 thiss!23328 (singletonSeq!1928 separatorToken!354)) (BalanceConc!14501 Empty!7342) (print!1527 thiss!23328 (singletonSeq!1928 separatorToken!354)) (BalanceConc!14503 Empty!7343)))))

(assert (=> d!590241 (= (lex!1581 thiss!23328 rules!3198 (print!1527 thiss!23328 (singletonSeq!1928 separatorToken!354))) lt!741770)))

(declare-fun b!1934871 () Bool)

(declare-fun res!865150 () Bool)

(assert (=> b!1934871 (=> (not res!865150) (not e!1236732))))

(assert (=> b!1934871 (= res!865150 (= (list!8907 (_1!11771 lt!741770)) (_1!11774 (lexList!955 thiss!23328 rules!3198 (list!8905 (print!1527 thiss!23328 (singletonSeq!1928 separatorToken!354)))))))))

(declare-fun b!1934872 () Bool)

(assert (=> b!1934872 (= e!1236731 (not (isEmpty!13563 (_1!11771 lt!741770))))))

(declare-fun b!1934873 () Bool)

(assert (=> b!1934873 (= e!1236732 (= (list!8905 (_2!11771 lt!741770)) (_2!11774 (lexList!955 thiss!23328 rules!3198 (list!8905 (print!1527 thiss!23328 (singletonSeq!1928 separatorToken!354)))))))))

(declare-fun b!1934874 () Bool)

(assert (=> b!1934874 (= e!1236733 (= (_2!11771 lt!741770) (print!1527 thiss!23328 (singletonSeq!1928 separatorToken!354))))))

(assert (= (and d!590241 c!314770) b!1934870))

(assert (= (and d!590241 (not c!314770)) b!1934874))

(assert (= (and b!1934870 res!865151) b!1934872))

(assert (= (and d!590241 res!865152) b!1934871))

(assert (= (and b!1934871 res!865150) b!1934873))

(declare-fun m!2374155 () Bool)

(assert (=> d!590241 m!2374155))

(assert (=> d!590241 m!2372841))

(assert (=> d!590241 m!2372841))

(declare-fun m!2374157 () Bool)

(assert (=> d!590241 m!2374157))

(declare-fun m!2374159 () Bool)

(assert (=> b!1934871 m!2374159))

(assert (=> b!1934871 m!2372841))

(declare-fun m!2374161 () Bool)

(assert (=> b!1934871 m!2374161))

(assert (=> b!1934871 m!2374161))

(declare-fun m!2374163 () Bool)

(assert (=> b!1934871 m!2374163))

(declare-fun m!2374165 () Bool)

(assert (=> b!1934870 m!2374165))

(assert (=> b!1934870 m!2372841))

(declare-fun m!2374167 () Bool)

(assert (=> b!1934870 m!2374167))

(declare-fun m!2374169 () Bool)

(assert (=> b!1934872 m!2374169))

(declare-fun m!2374171 () Bool)

(assert (=> b!1934873 m!2374171))

(assert (=> b!1934873 m!2372841))

(assert (=> b!1934873 m!2374161))

(assert (=> b!1934873 m!2374161))

(assert (=> b!1934873 m!2374163))

(assert (=> d!589793 d!590241))

(declare-fun d!590243 () Bool)

(declare-fun lt!741771 () Int)

(assert (=> d!590243 (= lt!741771 (size!17158 (list!8907 (_1!11771 lt!741385))))))

(assert (=> d!590243 (= lt!741771 (size!17159 (c!314510 (_1!11771 lt!741385))))))

(assert (=> d!590243 (= (size!17150 (_1!11771 lt!741385)) lt!741771)))

(declare-fun bs!415253 () Bool)

(assert (= bs!415253 d!590243))

(assert (=> bs!415253 m!2373995))

(assert (=> bs!415253 m!2373995))

(declare-fun m!2374173 () Bool)

(assert (=> bs!415253 m!2374173))

(declare-fun m!2374175 () Bool)

(assert (=> bs!415253 m!2374175))

(assert (=> d!589793 d!590243))

(assert (=> d!589793 d!589791))

(declare-fun d!590245 () Bool)

(assert (=> d!590245 (= (head!4509 lt!741158) (h!27383 lt!741158))))

(assert (=> b!1933611 d!590245))

(declare-fun d!590247 () Bool)

(assert (=> d!590247 (= (head!4510 (drop!1082 lt!741223 0)) (apply!5722 lt!741223 0))))

(declare-fun lt!741778 () Unit!36346)

(declare-fun choose!12019 (List!22067 Int) Unit!36346)

(assert (=> d!590247 (= lt!741778 (choose!12019 lt!741223 0))))

(declare-fun e!1236741 () Bool)

(assert (=> d!590247 e!1236741))

(declare-fun res!865163 () Bool)

(assert (=> d!590247 (=> (not res!865163) (not e!1236741))))

(assert (=> d!590247 (= res!865163 (>= 0 0))))

(assert (=> d!590247 (= (lemmaDropApply!715 lt!741223 0) lt!741778)))

(declare-fun b!1934887 () Bool)

(assert (=> b!1934887 (= e!1236741 (< 0 (size!17158 lt!741223)))))

(assert (= (and d!590247 res!865163) b!1934887))

(assert (=> d!590247 m!2372311))

(assert (=> d!590247 m!2372311))

(assert (=> d!590247 m!2372313))

(assert (=> d!590247 m!2372309))

(declare-fun m!2374209 () Bool)

(assert (=> d!590247 m!2374209))

(declare-fun m!2374211 () Bool)

(assert (=> b!1934887 m!2374211))

(assert (=> b!1933659 d!590247))

(declare-fun b!1934906 () Bool)

(declare-fun e!1236752 () Int)

(assert (=> b!1934906 (= e!1236752 0)))

(declare-fun b!1934907 () Bool)

(declare-fun e!1236755 () List!22067)

(assert (=> b!1934907 (= e!1236755 Nil!21985)))

(declare-fun b!1934908 () Bool)

(declare-fun e!1236756 () List!22067)

(assert (=> b!1934908 (= e!1236756 lt!741223)))

(declare-fun b!1934909 () Bool)

(declare-fun e!1236753 () Int)

(assert (=> b!1934909 (= e!1236753 e!1236752)))

(declare-fun c!314783 () Bool)

(declare-fun call!119026 () Int)

(assert (=> b!1934909 (= c!314783 (>= 0 call!119026))))

(declare-fun bm!119021 () Bool)

(assert (=> bm!119021 (= call!119026 (size!17158 lt!741223))))

(declare-fun b!1934910 () Bool)

(assert (=> b!1934910 (= e!1236752 (- call!119026 0))))

(declare-fun d!590263 () Bool)

(declare-fun e!1236754 () Bool)

(assert (=> d!590263 e!1236754))

(declare-fun res!865166 () Bool)

(assert (=> d!590263 (=> (not res!865166) (not e!1236754))))

(declare-fun lt!741784 () List!22067)

(declare-fun content!3190 (List!22067) (InoxSet Token!7440))

(assert (=> d!590263 (= res!865166 (= ((_ map implies) (content!3190 lt!741784) (content!3190 lt!741223)) ((as const (InoxSet Token!7440)) true)))))

(assert (=> d!590263 (= lt!741784 e!1236755)))

(declare-fun c!314780 () Bool)

(assert (=> d!590263 (= c!314780 ((_ is Nil!21985) lt!741223))))

(assert (=> d!590263 (= (drop!1082 lt!741223 0) lt!741784)))

(declare-fun b!1934911 () Bool)

(assert (=> b!1934911 (= e!1236756 (drop!1082 (t!180606 lt!741223) (- 0 1)))))

(declare-fun b!1934912 () Bool)

(assert (=> b!1934912 (= e!1236754 (= (size!17158 lt!741784) e!1236753))))

(declare-fun c!314782 () Bool)

(assert (=> b!1934912 (= c!314782 (<= 0 0))))

(declare-fun b!1934913 () Bool)

(assert (=> b!1934913 (= e!1236755 e!1236756)))

(declare-fun c!314781 () Bool)

(assert (=> b!1934913 (= c!314781 (<= 0 0))))

(declare-fun b!1934914 () Bool)

(assert (=> b!1934914 (= e!1236753 call!119026)))

(assert (= (and d!590263 c!314780) b!1934907))

(assert (= (and d!590263 (not c!314780)) b!1934913))

(assert (= (and b!1934913 c!314781) b!1934908))

(assert (= (and b!1934913 (not c!314781)) b!1934911))

(assert (= (and d!590263 res!865166) b!1934912))

(assert (= (and b!1934912 c!314782) b!1934914))

(assert (= (and b!1934912 (not c!314782)) b!1934909))

(assert (= (and b!1934909 c!314783) b!1934906))

(assert (= (and b!1934909 (not c!314783)) b!1934910))

(assert (= (or b!1934914 b!1934909 b!1934910) bm!119021))

(assert (=> bm!119021 m!2374211))

(declare-fun m!2374227 () Bool)

(assert (=> d!590263 m!2374227))

(declare-fun m!2374229 () Bool)

(assert (=> d!590263 m!2374229))

(declare-fun m!2374231 () Bool)

(assert (=> b!1934911 m!2374231))

(declare-fun m!2374233 () Bool)

(assert (=> b!1934912 m!2374233))

(assert (=> b!1933659 d!590263))

(declare-fun d!590273 () Bool)

(assert (=> d!590273 (= (list!8907 lt!741165) (list!8912 (c!314510 lt!741165)))))

(declare-fun bs!415262 () Bool)

(assert (= bs!415262 d!590273))

(declare-fun m!2374235 () Bool)

(assert (=> bs!415262 m!2374235))

(assert (=> b!1933659 d!590273))

(declare-fun d!590275 () Bool)

(assert (=> d!590275 (= (tail!2996 (drop!1082 lt!741221 0)) (t!180606 (drop!1082 lt!741221 0)))))

(assert (=> b!1933659 d!590275))

(declare-fun b!1934919 () Bool)

(declare-fun e!1236759 () Int)

(assert (=> b!1934919 (= e!1236759 0)))

(declare-fun b!1934920 () Bool)

(declare-fun e!1236762 () List!22067)

(assert (=> b!1934920 (= e!1236762 Nil!21985)))

(declare-fun b!1934921 () Bool)

(declare-fun e!1236763 () List!22067)

(assert (=> b!1934921 (= e!1236763 lt!741221)))

(declare-fun b!1934922 () Bool)

(declare-fun e!1236760 () Int)

(assert (=> b!1934922 (= e!1236760 e!1236759)))

(declare-fun c!314789 () Bool)

(declare-fun call!119027 () Int)

(assert (=> b!1934922 (= c!314789 (>= (+ 0 1) call!119027))))

(declare-fun bm!119022 () Bool)

(assert (=> bm!119022 (= call!119027 (size!17158 lt!741221))))

(declare-fun b!1934923 () Bool)

(assert (=> b!1934923 (= e!1236759 (- call!119027 (+ 0 1)))))

(declare-fun d!590277 () Bool)

(declare-fun e!1236761 () Bool)

(assert (=> d!590277 e!1236761))

(declare-fun res!865167 () Bool)

(assert (=> d!590277 (=> (not res!865167) (not e!1236761))))

(declare-fun lt!741795 () List!22067)

(assert (=> d!590277 (= res!865167 (= ((_ map implies) (content!3190 lt!741795) (content!3190 lt!741221)) ((as const (InoxSet Token!7440)) true)))))

(assert (=> d!590277 (= lt!741795 e!1236762)))

(declare-fun c!314786 () Bool)

(assert (=> d!590277 (= c!314786 ((_ is Nil!21985) lt!741221))))

(assert (=> d!590277 (= (drop!1082 lt!741221 (+ 0 1)) lt!741795)))

(declare-fun b!1934924 () Bool)

(assert (=> b!1934924 (= e!1236763 (drop!1082 (t!180606 lt!741221) (- (+ 0 1) 1)))))

(declare-fun b!1934925 () Bool)

(assert (=> b!1934925 (= e!1236761 (= (size!17158 lt!741795) e!1236760))))

(declare-fun c!314788 () Bool)

(assert (=> b!1934925 (= c!314788 (<= (+ 0 1) 0))))

(declare-fun b!1934926 () Bool)

(assert (=> b!1934926 (= e!1236762 e!1236763)))

(declare-fun c!314787 () Bool)

(assert (=> b!1934926 (= c!314787 (<= (+ 0 1) 0))))

(declare-fun b!1934927 () Bool)

(assert (=> b!1934927 (= e!1236760 call!119027)))

(assert (= (and d!590277 c!314786) b!1934920))

(assert (= (and d!590277 (not c!314786)) b!1934926))

(assert (= (and b!1934926 c!314787) b!1934921))

(assert (= (and b!1934926 (not c!314787)) b!1934924))

(assert (= (and d!590277 res!865167) b!1934925))

(assert (= (and b!1934925 c!314788) b!1934927))

(assert (= (and b!1934925 (not c!314788)) b!1934922))

(assert (= (and b!1934922 c!314789) b!1934919))

(assert (= (and b!1934922 (not c!314789)) b!1934923))

(assert (= (or b!1934927 b!1934922 b!1934923) bm!119022))

(declare-fun m!2374237 () Bool)

(assert (=> bm!119022 m!2374237))

(declare-fun m!2374239 () Bool)

(assert (=> d!590277 m!2374239))

(declare-fun m!2374241 () Bool)

(assert (=> d!590277 m!2374241))

(declare-fun m!2374243 () Bool)

(assert (=> b!1934924 m!2374243))

(declare-fun m!2374245 () Bool)

(assert (=> b!1934925 m!2374245))

(assert (=> b!1933659 d!590277))

(declare-fun b!1934957 () Bool)

(declare-fun res!865195 () Bool)

(declare-fun e!1236773 () Bool)

(assert (=> b!1934957 (=> (not res!865195) (not e!1236773))))

(declare-fun height!1115 (Conc!7342) Int)

(declare-fun ++!5909 (Conc!7342 Conc!7342) Conc!7342)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1934957 (= res!865195 (<= (height!1115 (++!5909 (c!314508 (BalanceConc!14501 Empty!7342)) (c!314508 (charsOf!2484 (apply!5721 lt!741165 0))))) (+ (max!0 (height!1115 (c!314508 (BalanceConc!14501 Empty!7342))) (height!1115 (c!314508 (charsOf!2484 (apply!5721 lt!741165 0))))) 1)))))

(declare-fun d!590279 () Bool)

(assert (=> d!590279 e!1236773))

(declare-fun res!865194 () Bool)

(assert (=> d!590279 (=> (not res!865194) (not e!1236773))))

(declare-fun appendAssocInst!527 (Conc!7342 Conc!7342) Bool)

(assert (=> d!590279 (= res!865194 (appendAssocInst!527 (c!314508 (BalanceConc!14501 Empty!7342)) (c!314508 (charsOf!2484 (apply!5721 lt!741165 0)))))))

(declare-fun lt!741803 () BalanceConc!14500)

(assert (=> d!590279 (= lt!741803 (BalanceConc!14501 (++!5909 (c!314508 (BalanceConc!14501 Empty!7342)) (c!314508 (charsOf!2484 (apply!5721 lt!741165 0))))))))

(assert (=> d!590279 (= (++!5906 (BalanceConc!14501 Empty!7342) (charsOf!2484 (apply!5721 lt!741165 0))) lt!741803)))

(declare-fun b!1934956 () Bool)

(declare-fun res!865197 () Bool)

(assert (=> b!1934956 (=> (not res!865197) (not e!1236773))))

(assert (=> b!1934956 (= res!865197 (isBalanced!2273 (++!5909 (c!314508 (BalanceConc!14501 Empty!7342)) (c!314508 (charsOf!2484 (apply!5721 lt!741165 0))))))))

(declare-fun b!1934959 () Bool)

(assert (=> b!1934959 (= e!1236773 (= (list!8905 lt!741803) (++!5905 (list!8905 (BalanceConc!14501 Empty!7342)) (list!8905 (charsOf!2484 (apply!5721 lt!741165 0))))))))

(declare-fun b!1934958 () Bool)

(declare-fun res!865196 () Bool)

(assert (=> b!1934958 (=> (not res!865196) (not e!1236773))))

(assert (=> b!1934958 (= res!865196 (>= (height!1115 (++!5909 (c!314508 (BalanceConc!14501 Empty!7342)) (c!314508 (charsOf!2484 (apply!5721 lt!741165 0))))) (max!0 (height!1115 (c!314508 (BalanceConc!14501 Empty!7342))) (height!1115 (c!314508 (charsOf!2484 (apply!5721 lt!741165 0)))))))))

(assert (= (and d!590279 res!865194) b!1934956))

(assert (= (and b!1934956 res!865197) b!1934957))

(assert (= (and b!1934957 res!865195) b!1934958))

(assert (= (and b!1934958 res!865196) b!1934959))

(declare-fun m!2374291 () Bool)

(assert (=> b!1934959 m!2374291))

(assert (=> b!1934959 m!2372297))

(assert (=> b!1934959 m!2372327))

(declare-fun m!2374293 () Bool)

(assert (=> b!1934959 m!2374293))

(assert (=> b!1934959 m!2372297))

(assert (=> b!1934959 m!2374293))

(declare-fun m!2374295 () Bool)

(assert (=> b!1934959 m!2374295))

(declare-fun m!2374297 () Bool)

(assert (=> b!1934956 m!2374297))

(assert (=> b!1934956 m!2374297))

(declare-fun m!2374299 () Bool)

(assert (=> b!1934956 m!2374299))

(assert (=> b!1934958 m!2374297))

(declare-fun m!2374301 () Bool)

(assert (=> b!1934958 m!2374301))

(assert (=> b!1934958 m!2374297))

(declare-fun m!2374303 () Bool)

(assert (=> b!1934958 m!2374303))

(declare-fun m!2374305 () Bool)

(assert (=> b!1934958 m!2374305))

(assert (=> b!1934958 m!2374305))

(assert (=> b!1934958 m!2374303))

(declare-fun m!2374309 () Bool)

(assert (=> b!1934958 m!2374309))

(declare-fun m!2374311 () Bool)

(assert (=> d!590279 m!2374311))

(assert (=> d!590279 m!2374297))

(assert (=> b!1934957 m!2374297))

(assert (=> b!1934957 m!2374301))

(assert (=> b!1934957 m!2374297))

(assert (=> b!1934957 m!2374303))

(assert (=> b!1934957 m!2374305))

(assert (=> b!1934957 m!2374305))

(assert (=> b!1934957 m!2374303))

(assert (=> b!1934957 m!2374309))

(assert (=> b!1933659 d!590279))

(declare-fun d!590295 () Bool)

(assert (=> d!590295 (= (head!4510 (drop!1082 lt!741223 0)) (h!27386 (drop!1082 lt!741223 0)))))

(assert (=> b!1933659 d!590295))

(declare-fun d!590299 () Bool)

(declare-fun lt!741804 () Token!7440)

(assert (=> d!590299 (= lt!741804 (apply!5722 (list!8907 lt!741165) 0))))

(assert (=> d!590299 (= lt!741804 (apply!5727 (c!314510 lt!741165) 0))))

(declare-fun e!1236775 () Bool)

(assert (=> d!590299 e!1236775))

(declare-fun res!865198 () Bool)

(assert (=> d!590299 (=> (not res!865198) (not e!1236775))))

(assert (=> d!590299 (= res!865198 (<= 0 0))))

(assert (=> d!590299 (= (apply!5721 lt!741165 0) lt!741804)))

(declare-fun b!1934960 () Bool)

(assert (=> b!1934960 (= e!1236775 (< 0 (size!17150 lt!741165)))))

(assert (= (and d!590299 res!865198) b!1934960))

(assert (=> d!590299 m!2372315))

(assert (=> d!590299 m!2372315))

(declare-fun m!2374317 () Bool)

(assert (=> d!590299 m!2374317))

(declare-fun m!2374319 () Bool)

(assert (=> d!590299 m!2374319))

(assert (=> b!1934960 m!2372295))

(assert (=> b!1933659 d!590299))

(declare-fun d!590303 () Bool)

(declare-fun lt!741806 () BalanceConc!14500)

(assert (=> d!590303 (= (list!8905 lt!741806) (printListTailRec!460 thiss!23328 (dropList!791 lt!741165 (+ 0 1)) (list!8905 (++!5906 (BalanceConc!14501 Empty!7342) (charsOf!2484 (apply!5721 lt!741165 0))))))))

(declare-fun e!1236776 () BalanceConc!14500)

(assert (=> d!590303 (= lt!741806 e!1236776)))

(declare-fun c!314794 () Bool)

(assert (=> d!590303 (= c!314794 (>= (+ 0 1) (size!17150 lt!741165)))))

(declare-fun e!1236777 () Bool)

(assert (=> d!590303 e!1236777))

(declare-fun res!865199 () Bool)

(assert (=> d!590303 (=> (not res!865199) (not e!1236777))))

(assert (=> d!590303 (= res!865199 (>= (+ 0 1) 0))))

(assert (=> d!590303 (= (printTailRec!1033 thiss!23328 lt!741165 (+ 0 1) (++!5906 (BalanceConc!14501 Empty!7342) (charsOf!2484 (apply!5721 lt!741165 0)))) lt!741806)))

(declare-fun b!1934961 () Bool)

(assert (=> b!1934961 (= e!1236777 (<= (+ 0 1) (size!17150 lt!741165)))))

(declare-fun b!1934962 () Bool)

(assert (=> b!1934962 (= e!1236776 (++!5906 (BalanceConc!14501 Empty!7342) (charsOf!2484 (apply!5721 lt!741165 0))))))

(declare-fun b!1934963 () Bool)

(assert (=> b!1934963 (= e!1236776 (printTailRec!1033 thiss!23328 lt!741165 (+ 0 1 1) (++!5906 (++!5906 (BalanceConc!14501 Empty!7342) (charsOf!2484 (apply!5721 lt!741165 0))) (charsOf!2484 (apply!5721 lt!741165 (+ 0 1))))))))

(declare-fun lt!741810 () List!22067)

(assert (=> b!1934963 (= lt!741810 (list!8907 lt!741165))))

(declare-fun lt!741811 () Unit!36346)

(assert (=> b!1934963 (= lt!741811 (lemmaDropApply!715 lt!741810 (+ 0 1)))))

(assert (=> b!1934963 (= (head!4510 (drop!1082 lt!741810 (+ 0 1))) (apply!5722 lt!741810 (+ 0 1)))))

(declare-fun lt!741805 () Unit!36346)

(assert (=> b!1934963 (= lt!741805 lt!741811)))

(declare-fun lt!741808 () List!22067)

(assert (=> b!1934963 (= lt!741808 (list!8907 lt!741165))))

(declare-fun lt!741807 () Unit!36346)

(assert (=> b!1934963 (= lt!741807 (lemmaDropTail!691 lt!741808 (+ 0 1)))))

(assert (=> b!1934963 (= (tail!2996 (drop!1082 lt!741808 (+ 0 1))) (drop!1082 lt!741808 (+ 0 1 1)))))

(declare-fun lt!741809 () Unit!36346)

(assert (=> b!1934963 (= lt!741809 lt!741807)))

(assert (= (and d!590303 res!865199) b!1934961))

(assert (= (and d!590303 c!314794) b!1934962))

(assert (= (and d!590303 (not c!314794)) b!1934963))

(assert (=> d!590303 m!2372295))

(assert (=> d!590303 m!2372321))

(declare-fun m!2374327 () Bool)

(assert (=> d!590303 m!2374327))

(declare-fun m!2374329 () Bool)

(assert (=> d!590303 m!2374329))

(declare-fun m!2374331 () Bool)

(assert (=> d!590303 m!2374331))

(assert (=> d!590303 m!2374327))

(declare-fun m!2374335 () Bool)

(assert (=> d!590303 m!2374335))

(assert (=> d!590303 m!2374331))

(assert (=> b!1934961 m!2372295))

(declare-fun m!2374341 () Bool)

(assert (=> b!1934963 m!2374341))

(declare-fun m!2374343 () Bool)

(assert (=> b!1934963 m!2374343))

(declare-fun m!2374345 () Bool)

(assert (=> b!1934963 m!2374345))

(declare-fun m!2374347 () Bool)

(assert (=> b!1934963 m!2374347))

(declare-fun m!2374349 () Bool)

(assert (=> b!1934963 m!2374349))

(assert (=> b!1934963 m!2374347))

(assert (=> b!1934963 m!2372315))

(assert (=> b!1934963 m!2374341))

(declare-fun m!2374351 () Bool)

(assert (=> b!1934963 m!2374351))

(declare-fun m!2374353 () Bool)

(assert (=> b!1934963 m!2374353))

(declare-fun m!2374355 () Bool)

(assert (=> b!1934963 m!2374355))

(declare-fun m!2374357 () Bool)

(assert (=> b!1934963 m!2374357))

(declare-fun m!2374359 () Bool)

(assert (=> b!1934963 m!2374359))

(assert (=> b!1934963 m!2374359))

(declare-fun m!2374361 () Bool)

(assert (=> b!1934963 m!2374361))

(declare-fun m!2374363 () Bool)

(assert (=> b!1934963 m!2374363))

(assert (=> b!1934963 m!2372321))

(assert (=> b!1934963 m!2374361))

(assert (=> b!1934963 m!2374355))

(assert (=> b!1933659 d!590303))

(declare-fun d!590313 () Bool)

(declare-fun lt!741814 () BalanceConc!14500)

(assert (=> d!590313 (= (list!8905 lt!741814) (originalCharacters!4751 (apply!5721 lt!741165 0)))))

(assert (=> d!590313 (= lt!741814 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (apply!5721 lt!741165 0)))) (value!123995 (apply!5721 lt!741165 0))))))

(assert (=> d!590313 (= (charsOf!2484 (apply!5721 lt!741165 0)) lt!741814)))

(declare-fun b_lambda!64399 () Bool)

(assert (=> (not b_lambda!64399) (not d!590313)))

(declare-fun tb!119061 () Bool)

(declare-fun t!180804 () Bool)

(assert (=> (and b!1933518 (= (toChars!5444 (transformation!3944 (h!27385 rules!3198))) (toChars!5444 (transformation!3944 (rule!6153 (apply!5721 lt!741165 0))))) t!180804) tb!119061))

(declare-fun b!1934965 () Bool)

(declare-fun e!1236779 () Bool)

(declare-fun tp!551933 () Bool)

(assert (=> b!1934965 (= e!1236779 (and (inv!29081 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (apply!5721 lt!741165 0)))) (value!123995 (apply!5721 lt!741165 0))))) tp!551933))))

(declare-fun result!143758 () Bool)

(assert (=> tb!119061 (= result!143758 (and (inv!29082 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (apply!5721 lt!741165 0)))) (value!123995 (apply!5721 lt!741165 0)))) e!1236779))))

(assert (= tb!119061 b!1934965))

(declare-fun m!2374373 () Bool)

(assert (=> b!1934965 m!2374373))

(declare-fun m!2374375 () Bool)

(assert (=> tb!119061 m!2374375))

(assert (=> d!590313 t!180804))

(declare-fun b_and!152473 () Bool)

(assert (= b_and!152395 (and (=> t!180804 result!143758) b_and!152473)))

(declare-fun tb!119067 () Bool)

(declare-fun t!180810 () Bool)

(assert (=> (and b!1933531 (= (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (toChars!5444 (transformation!3944 (rule!6153 (apply!5721 lt!741165 0))))) t!180810) tb!119067))

(declare-fun result!143762 () Bool)

(assert (= result!143762 result!143758))

(assert (=> d!590313 t!180810))

(declare-fun b_and!152475 () Bool)

(assert (= b_and!152397 (and (=> t!180810 result!143762) b_and!152475)))

(declare-fun tb!119069 () Bool)

(declare-fun t!180812 () Bool)

(assert (=> (and b!1933530 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (toChars!5444 (transformation!3944 (rule!6153 (apply!5721 lt!741165 0))))) t!180812) tb!119069))

(declare-fun result!143764 () Bool)

(assert (= result!143764 result!143758))

(assert (=> d!590313 t!180812))

(declare-fun b_and!152477 () Bool)

(assert (= b_and!152393 (and (=> t!180812 result!143764) b_and!152477)))

(declare-fun tb!119071 () Bool)

(declare-fun t!180814 () Bool)

(assert (=> (and b!1934238 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (toChars!5444 (transformation!3944 (rule!6153 (apply!5721 lt!741165 0))))) t!180814) tb!119071))

(declare-fun result!143766 () Bool)

(assert (= result!143766 result!143758))

(assert (=> d!590313 t!180814))

(declare-fun b_and!152479 () Bool)

(assert (= b_and!152399 (and (=> t!180814 result!143766) b_and!152479)))

(declare-fun t!180816 () Bool)

(declare-fun tb!119073 () Bool)

(assert (=> (and b!1934216 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toChars!5444 (transformation!3944 (rule!6153 (apply!5721 lt!741165 0))))) t!180816) tb!119073))

(declare-fun result!143768 () Bool)

(assert (= result!143768 result!143758))

(assert (=> d!590313 t!180816))

(declare-fun b_and!152481 () Bool)

(assert (= b_and!152401 (and (=> t!180816 result!143768) b_and!152481)))

(declare-fun m!2374379 () Bool)

(assert (=> d!590313 m!2374379))

(declare-fun m!2374381 () Bool)

(assert (=> d!590313 m!2374381))

(assert (=> b!1933659 d!590313))

(declare-fun d!590319 () Bool)

(declare-fun lt!741817 () Token!7440)

(declare-fun contains!3986 (List!22067 Token!7440) Bool)

(assert (=> d!590319 (contains!3986 lt!741223 lt!741817)))

(declare-fun e!1236790 () Token!7440)

(assert (=> d!590319 (= lt!741817 e!1236790)))

(declare-fun c!314799 () Bool)

(assert (=> d!590319 (= c!314799 (= 0 0))))

(declare-fun e!1236791 () Bool)

(assert (=> d!590319 e!1236791))

(declare-fun res!865206 () Bool)

(assert (=> d!590319 (=> (not res!865206) (not e!1236791))))

(assert (=> d!590319 (= res!865206 (<= 0 0))))

(assert (=> d!590319 (= (apply!5722 lt!741223 0) lt!741817)))

(declare-fun b!1934980 () Bool)

(assert (=> b!1934980 (= e!1236791 (< 0 (size!17158 lt!741223)))))

(declare-fun b!1934981 () Bool)

(assert (=> b!1934981 (= e!1236790 (head!4510 lt!741223))))

(declare-fun b!1934982 () Bool)

(assert (=> b!1934982 (= e!1236790 (apply!5722 (tail!2996 lt!741223) (- 0 1)))))

(assert (= (and d!590319 res!865206) b!1934980))

(assert (= (and d!590319 c!314799) b!1934981))

(assert (= (and d!590319 (not c!314799)) b!1934982))

(declare-fun m!2374383 () Bool)

(assert (=> d!590319 m!2374383))

(assert (=> b!1934980 m!2374211))

(declare-fun m!2374385 () Bool)

(assert (=> b!1934981 m!2374385))

(declare-fun m!2374387 () Bool)

(assert (=> b!1934982 m!2374387))

(assert (=> b!1934982 m!2374387))

(declare-fun m!2374389 () Bool)

(assert (=> b!1934982 m!2374389))

(assert (=> b!1933659 d!590319))

(declare-fun d!590321 () Bool)

(assert (=> d!590321 (= (tail!2996 (drop!1082 lt!741221 0)) (drop!1082 lt!741221 (+ 0 1)))))

(declare-fun lt!741821 () Unit!36346)

(declare-fun choose!12021 (List!22067 Int) Unit!36346)

(assert (=> d!590321 (= lt!741821 (choose!12021 lt!741221 0))))

(declare-fun e!1236805 () Bool)

(assert (=> d!590321 e!1236805))

(declare-fun res!865221 () Bool)

(assert (=> d!590321 (=> (not res!865221) (not e!1236805))))

(assert (=> d!590321 (= res!865221 (>= 0 0))))

(assert (=> d!590321 (= (lemmaDropTail!691 lt!741221 0) lt!741821)))

(declare-fun b!1935005 () Bool)

(assert (=> b!1935005 (= e!1236805 (< 0 (size!17158 lt!741221)))))

(assert (= (and d!590321 res!865221) b!1935005))

(assert (=> d!590321 m!2372305))

(assert (=> d!590321 m!2372305))

(assert (=> d!590321 m!2372317))

(assert (=> d!590321 m!2372307))

(declare-fun m!2374411 () Bool)

(assert (=> d!590321 m!2374411))

(assert (=> b!1935005 m!2374237))

(assert (=> b!1933659 d!590321))

(declare-fun b!1935006 () Bool)

(declare-fun e!1236806 () Int)

(assert (=> b!1935006 (= e!1236806 0)))

(declare-fun b!1935007 () Bool)

(declare-fun e!1236809 () List!22067)

(assert (=> b!1935007 (= e!1236809 Nil!21985)))

(declare-fun b!1935008 () Bool)

(declare-fun e!1236810 () List!22067)

(assert (=> b!1935008 (= e!1236810 lt!741221)))

(declare-fun b!1935009 () Bool)

(declare-fun e!1236807 () Int)

(assert (=> b!1935009 (= e!1236807 e!1236806)))

(declare-fun c!314807 () Bool)

(declare-fun call!119032 () Int)

(assert (=> b!1935009 (= c!314807 (>= 0 call!119032))))

(declare-fun bm!119027 () Bool)

(assert (=> bm!119027 (= call!119032 (size!17158 lt!741221))))

(declare-fun b!1935010 () Bool)

(assert (=> b!1935010 (= e!1236806 (- call!119032 0))))

(declare-fun d!590329 () Bool)

(declare-fun e!1236808 () Bool)

(assert (=> d!590329 e!1236808))

(declare-fun res!865222 () Bool)

(assert (=> d!590329 (=> (not res!865222) (not e!1236808))))

(declare-fun lt!741822 () List!22067)

(assert (=> d!590329 (= res!865222 (= ((_ map implies) (content!3190 lt!741822) (content!3190 lt!741221)) ((as const (InoxSet Token!7440)) true)))))

(assert (=> d!590329 (= lt!741822 e!1236809)))

(declare-fun c!314804 () Bool)

(assert (=> d!590329 (= c!314804 ((_ is Nil!21985) lt!741221))))

(assert (=> d!590329 (= (drop!1082 lt!741221 0) lt!741822)))

(declare-fun b!1935011 () Bool)

(assert (=> b!1935011 (= e!1236810 (drop!1082 (t!180606 lt!741221) (- 0 1)))))

(declare-fun b!1935012 () Bool)

(assert (=> b!1935012 (= e!1236808 (= (size!17158 lt!741822) e!1236807))))

(declare-fun c!314806 () Bool)

(assert (=> b!1935012 (= c!314806 (<= 0 0))))

(declare-fun b!1935013 () Bool)

(assert (=> b!1935013 (= e!1236809 e!1236810)))

(declare-fun c!314805 () Bool)

(assert (=> b!1935013 (= c!314805 (<= 0 0))))

(declare-fun b!1935014 () Bool)

(assert (=> b!1935014 (= e!1236807 call!119032)))

(assert (= (and d!590329 c!314804) b!1935007))

(assert (= (and d!590329 (not c!314804)) b!1935013))

(assert (= (and b!1935013 c!314805) b!1935008))

(assert (= (and b!1935013 (not c!314805)) b!1935011))

(assert (= (and d!590329 res!865222) b!1935012))

(assert (= (and b!1935012 c!314806) b!1935014))

(assert (= (and b!1935012 (not c!314806)) b!1935009))

(assert (= (and b!1935009 c!314807) b!1935006))

(assert (= (and b!1935009 (not c!314807)) b!1935010))

(assert (= (or b!1935014 b!1935009 b!1935010) bm!119027))

(assert (=> bm!119027 m!2374237))

(declare-fun m!2374417 () Bool)

(assert (=> d!590329 m!2374417))

(assert (=> d!590329 m!2374241))

(declare-fun m!2374419 () Bool)

(assert (=> b!1935011 m!2374419))

(declare-fun m!2374421 () Bool)

(assert (=> b!1935012 m!2374421))

(assert (=> b!1933659 d!590329))

(declare-fun d!590335 () Bool)

(declare-fun e!1236826 () Bool)

(assert (=> d!590335 e!1236826))

(declare-fun res!865228 () Bool)

(assert (=> d!590335 (=> (not res!865228) (not e!1236826))))

(declare-fun lt!741829 () BalanceConc!14500)

(assert (=> d!590335 (= res!865228 (= (list!8905 lt!741829) lt!741158))))

(declare-fun fromList!484 (List!22064) Conc!7342)

(assert (=> d!590335 (= lt!741829 (BalanceConc!14501 (fromList!484 lt!741158)))))

(assert (=> d!590335 (= (fromListB!1246 lt!741158) lt!741829)))

(declare-fun b!1935040 () Bool)

(assert (=> b!1935040 (= e!1236826 (isBalanced!2273 (fromList!484 lt!741158)))))

(assert (= (and d!590335 res!865228) b!1935040))

(declare-fun m!2374441 () Bool)

(assert (=> d!590335 m!2374441))

(declare-fun m!2374443 () Bool)

(assert (=> d!590335 m!2374443))

(assert (=> b!1935040 m!2374443))

(assert (=> b!1935040 m!2374443))

(declare-fun m!2374447 () Bool)

(assert (=> b!1935040 m!2374447))

(assert (=> d!589817 d!590335))

(declare-fun bs!415280 () Bool)

(declare-fun d!590345 () Bool)

(assert (= bs!415280 (and d!590345 d!589687)))

(declare-fun lambda!75424 () Int)

(assert (=> bs!415280 (= lambda!75424 lambda!75383)))

(declare-fun bs!415281 () Bool)

(assert (= bs!415281 (and d!590345 d!590207)))

(assert (=> bs!415281 (= (= (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (toValue!5585 (transformation!3944 (h!27385 rules!3198)))) (= lambda!75424 lambda!75421))))

(assert (=> d!590345 true))

(assert (=> d!590345 (< (dynLambda!10697 order!13847 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) (dynLambda!10698 order!13849 lambda!75424))))

(assert (=> d!590345 (= (equivClasses!1500 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) (Forall2!629 lambda!75424))))

(declare-fun bs!415282 () Bool)

(assert (= bs!415282 d!590345))

(declare-fun m!2374461 () Bool)

(assert (=> bs!415282 m!2374461))

(assert (=> b!1934157 d!590345))

(declare-fun b!1935046 () Bool)

(declare-fun e!1236834 () Bool)

(declare-fun e!1236831 () Bool)

(assert (=> b!1935046 (= e!1236834 e!1236831)))

(declare-fun res!865234 () Bool)

(assert (=> b!1935046 (=> (not res!865234) (not e!1236831))))

(declare-fun lt!741830 () Bool)

(assert (=> b!1935046 (= res!865234 (not lt!741830))))

(declare-fun b!1935047 () Bool)

(declare-fun res!865239 () Bool)

(assert (=> b!1935047 (=> res!865239 e!1236834)))

(assert (=> b!1935047 (= res!865239 (not ((_ is ElementMatch!5369) (derivativeStep!1375 (regex!3944 lt!741169) (head!4509 lt!741158)))))))

(declare-fun e!1236832 () Bool)

(assert (=> b!1935047 (= e!1236832 e!1236834)))

(declare-fun bm!119028 () Bool)

(declare-fun call!119033 () Bool)

(assert (=> bm!119028 (= call!119033 (isEmpty!13567 (tail!2995 lt!741158)))))

(declare-fun b!1935048 () Bool)

(declare-fun e!1236833 () Bool)

(assert (=> b!1935048 (= e!1236833 (matchR!2637 (derivativeStep!1375 (derivativeStep!1375 (regex!3944 lt!741169) (head!4509 lt!741158)) (head!4509 (tail!2995 lt!741158))) (tail!2995 (tail!2995 lt!741158))))))

(declare-fun b!1935049 () Bool)

(declare-fun res!865237 () Bool)

(declare-fun e!1236836 () Bool)

(assert (=> b!1935049 (=> (not res!865237) (not e!1236836))))

(assert (=> b!1935049 (= res!865237 (isEmpty!13567 (tail!2995 (tail!2995 lt!741158))))))

(declare-fun b!1935050 () Bool)

(declare-fun e!1236835 () Bool)

(assert (=> b!1935050 (= e!1236835 (= lt!741830 call!119033))))

(declare-fun b!1935051 () Bool)

(declare-fun res!865236 () Bool)

(assert (=> b!1935051 (=> (not res!865236) (not e!1236836))))

(assert (=> b!1935051 (= res!865236 (not call!119033))))

(declare-fun b!1935053 () Bool)

(declare-fun res!865233 () Bool)

(declare-fun e!1236837 () Bool)

(assert (=> b!1935053 (=> res!865233 e!1236837)))

(assert (=> b!1935053 (= res!865233 (not (isEmpty!13567 (tail!2995 (tail!2995 lt!741158)))))))

(declare-fun b!1935054 () Bool)

(assert (=> b!1935054 (= e!1236833 (nullable!1616 (derivativeStep!1375 (regex!3944 lt!741169) (head!4509 lt!741158))))))

(declare-fun b!1935055 () Bool)

(assert (=> b!1935055 (= e!1236836 (= (head!4509 (tail!2995 lt!741158)) (c!314509 (derivativeStep!1375 (regex!3944 lt!741169) (head!4509 lt!741158)))))))

(declare-fun d!590355 () Bool)

(assert (=> d!590355 e!1236835))

(declare-fun c!314821 () Bool)

(assert (=> d!590355 (= c!314821 ((_ is EmptyExpr!5369) (derivativeStep!1375 (regex!3944 lt!741169) (head!4509 lt!741158))))))

(assert (=> d!590355 (= lt!741830 e!1236833)))

(declare-fun c!314822 () Bool)

(assert (=> d!590355 (= c!314822 (isEmpty!13567 (tail!2995 lt!741158)))))

(assert (=> d!590355 (validRegex!2142 (derivativeStep!1375 (regex!3944 lt!741169) (head!4509 lt!741158)))))

(assert (=> d!590355 (= (matchR!2637 (derivativeStep!1375 (regex!3944 lt!741169) (head!4509 lt!741158)) (tail!2995 lt!741158)) lt!741830)))

(declare-fun b!1935052 () Bool)

(assert (=> b!1935052 (= e!1236837 (not (= (head!4509 (tail!2995 lt!741158)) (c!314509 (derivativeStep!1375 (regex!3944 lt!741169) (head!4509 lt!741158))))))))

(declare-fun b!1935056 () Bool)

(assert (=> b!1935056 (= e!1236832 (not lt!741830))))

(declare-fun b!1935057 () Bool)

(assert (=> b!1935057 (= e!1236835 e!1236832)))

(declare-fun c!314820 () Bool)

(assert (=> b!1935057 (= c!314820 ((_ is EmptyLang!5369) (derivativeStep!1375 (regex!3944 lt!741169) (head!4509 lt!741158))))))

(declare-fun b!1935058 () Bool)

(assert (=> b!1935058 (= e!1236831 e!1236837)))

(declare-fun res!865238 () Bool)

(assert (=> b!1935058 (=> res!865238 e!1236837)))

(assert (=> b!1935058 (= res!865238 call!119033)))

(declare-fun b!1935059 () Bool)

(declare-fun res!865232 () Bool)

(assert (=> b!1935059 (=> res!865232 e!1236834)))

(assert (=> b!1935059 (= res!865232 e!1236836)))

(declare-fun res!865235 () Bool)

(assert (=> b!1935059 (=> (not res!865235) (not e!1236836))))

(assert (=> b!1935059 (= res!865235 lt!741830)))

(assert (= (and d!590355 c!314822) b!1935054))

(assert (= (and d!590355 (not c!314822)) b!1935048))

(assert (= (and d!590355 c!314821) b!1935050))

(assert (= (and d!590355 (not c!314821)) b!1935057))

(assert (= (and b!1935057 c!314820) b!1935056))

(assert (= (and b!1935057 (not c!314820)) b!1935047))

(assert (= (and b!1935047 (not res!865239)) b!1935059))

(assert (= (and b!1935059 res!865235) b!1935051))

(assert (= (and b!1935051 res!865236) b!1935049))

(assert (= (and b!1935049 res!865237) b!1935055))

(assert (= (and b!1935059 (not res!865232)) b!1935046))

(assert (= (and b!1935046 res!865234) b!1935058))

(assert (= (and b!1935058 (not res!865238)) b!1935053))

(assert (= (and b!1935053 (not res!865233)) b!1935052))

(assert (= (or b!1935050 b!1935051 b!1935058) bm!119028))

(assert (=> b!1935053 m!2372247))

(declare-fun m!2374467 () Bool)

(assert (=> b!1935053 m!2374467))

(assert (=> b!1935053 m!2374467))

(declare-fun m!2374469 () Bool)

(assert (=> b!1935053 m!2374469))

(assert (=> b!1935048 m!2372247))

(declare-fun m!2374471 () Bool)

(assert (=> b!1935048 m!2374471))

(assert (=> b!1935048 m!2372253))

(assert (=> b!1935048 m!2374471))

(declare-fun m!2374473 () Bool)

(assert (=> b!1935048 m!2374473))

(assert (=> b!1935048 m!2372247))

(assert (=> b!1935048 m!2374467))

(assert (=> b!1935048 m!2374473))

(assert (=> b!1935048 m!2374467))

(declare-fun m!2374477 () Bool)

(assert (=> b!1935048 m!2374477))

(assert (=> d!590355 m!2372247))

(assert (=> d!590355 m!2372249))

(assert (=> d!590355 m!2372253))

(declare-fun m!2374479 () Bool)

(assert (=> d!590355 m!2374479))

(assert (=> b!1935055 m!2372247))

(assert (=> b!1935055 m!2374471))

(assert (=> bm!119028 m!2372247))

(assert (=> bm!119028 m!2372249))

(assert (=> b!1935049 m!2372247))

(assert (=> b!1935049 m!2374467))

(assert (=> b!1935049 m!2374467))

(assert (=> b!1935049 m!2374469))

(assert (=> b!1935054 m!2372253))

(declare-fun m!2374485 () Bool)

(assert (=> b!1935054 m!2374485))

(assert (=> b!1935052 m!2372247))

(assert (=> b!1935052 m!2374471))

(assert (=> b!1933607 d!590355))

(declare-fun b!1935086 () Bool)

(declare-fun c!314837 () Bool)

(assert (=> b!1935086 (= c!314837 (nullable!1616 (regOne!11250 (regex!3944 lt!741169))))))

(declare-fun e!1236852 () Regex!5369)

(declare-fun e!1236853 () Regex!5369)

(assert (=> b!1935086 (= e!1236852 e!1236853)))

(declare-fun b!1935087 () Bool)

(declare-fun call!119044 () Regex!5369)

(assert (=> b!1935087 (= e!1236852 (Concat!9450 call!119044 (regex!3944 lt!741169)))))

(declare-fun b!1935088 () Bool)

(declare-fun e!1236854 () Regex!5369)

(assert (=> b!1935088 (= e!1236854 (ite (= (head!4509 lt!741158) (c!314509 (regex!3944 lt!741169))) EmptyExpr!5369 EmptyLang!5369))))

(declare-fun b!1935089 () Bool)

(declare-fun c!314835 () Bool)

(assert (=> b!1935089 (= c!314835 ((_ is Union!5369) (regex!3944 lt!741169)))))

(declare-fun e!1236856 () Regex!5369)

(assert (=> b!1935089 (= e!1236854 e!1236856)))

(declare-fun b!1935090 () Bool)

(declare-fun e!1236855 () Regex!5369)

(assert (=> b!1935090 (= e!1236855 e!1236854)))

(declare-fun c!314839 () Bool)

(assert (=> b!1935090 (= c!314839 ((_ is ElementMatch!5369) (regex!3944 lt!741169)))))

(declare-fun b!1935091 () Bool)

(declare-fun call!119045 () Regex!5369)

(declare-fun call!119043 () Regex!5369)

(assert (=> b!1935091 (= e!1236853 (Union!5369 (Concat!9450 call!119045 (regTwo!11250 (regex!3944 lt!741169))) call!119043))))

(declare-fun c!314838 () Bool)

(declare-fun call!119042 () Regex!5369)

(declare-fun bm!119037 () Bool)

(assert (=> bm!119037 (= call!119042 (derivativeStep!1375 (ite c!314835 (regOne!11251 (regex!3944 lt!741169)) (ite c!314838 (reg!5698 (regex!3944 lt!741169)) (ite c!314837 (regTwo!11250 (regex!3944 lt!741169)) (regOne!11250 (regex!3944 lt!741169))))) (head!4509 lt!741158)))))

(declare-fun b!1935093 () Bool)

(assert (=> b!1935093 (= e!1236856 e!1236852)))

(assert (=> b!1935093 (= c!314838 ((_ is Star!5369) (regex!3944 lt!741169)))))

(declare-fun bm!119038 () Bool)

(assert (=> bm!119038 (= call!119043 call!119044)))

(declare-fun bm!119039 () Bool)

(assert (=> bm!119039 (= call!119045 (derivativeStep!1375 (ite c!314835 (regTwo!11251 (regex!3944 lt!741169)) (regOne!11250 (regex!3944 lt!741169))) (head!4509 lt!741158)))))

(declare-fun b!1935094 () Bool)

(assert (=> b!1935094 (= e!1236855 EmptyLang!5369)))

(declare-fun b!1935092 () Bool)

(assert (=> b!1935092 (= e!1236856 (Union!5369 call!119042 call!119045))))

(declare-fun d!590361 () Bool)

(declare-fun lt!741843 () Regex!5369)

(assert (=> d!590361 (validRegex!2142 lt!741843)))

(assert (=> d!590361 (= lt!741843 e!1236855)))

(declare-fun c!314836 () Bool)

(assert (=> d!590361 (= c!314836 (or ((_ is EmptyExpr!5369) (regex!3944 lt!741169)) ((_ is EmptyLang!5369) (regex!3944 lt!741169))))))

(assert (=> d!590361 (validRegex!2142 (regex!3944 lt!741169))))

(assert (=> d!590361 (= (derivativeStep!1375 (regex!3944 lt!741169) (head!4509 lt!741158)) lt!741843)))

(declare-fun b!1935095 () Bool)

(assert (=> b!1935095 (= e!1236853 (Union!5369 (Concat!9450 call!119043 (regTwo!11250 (regex!3944 lt!741169))) EmptyLang!5369))))

(declare-fun bm!119040 () Bool)

(assert (=> bm!119040 (= call!119044 call!119042)))

(assert (= (and d!590361 c!314836) b!1935094))

(assert (= (and d!590361 (not c!314836)) b!1935090))

(assert (= (and b!1935090 c!314839) b!1935088))

(assert (= (and b!1935090 (not c!314839)) b!1935089))

(assert (= (and b!1935089 c!314835) b!1935092))

(assert (= (and b!1935089 (not c!314835)) b!1935093))

(assert (= (and b!1935093 c!314838) b!1935087))

(assert (= (and b!1935093 (not c!314838)) b!1935086))

(assert (= (and b!1935086 c!314837) b!1935091))

(assert (= (and b!1935086 (not c!314837)) b!1935095))

(assert (= (or b!1935091 b!1935095) bm!119038))

(assert (= (or b!1935087 bm!119038) bm!119040))

(assert (= (or b!1935092 bm!119040) bm!119037))

(assert (= (or b!1935092 b!1935091) bm!119039))

(declare-fun m!2374527 () Bool)

(assert (=> b!1935086 m!2374527))

(assert (=> bm!119037 m!2372251))

(declare-fun m!2374529 () Bool)

(assert (=> bm!119037 m!2374529))

(assert (=> bm!119039 m!2372251))

(declare-fun m!2374531 () Bool)

(assert (=> bm!119039 m!2374531))

(declare-fun m!2374533 () Bool)

(assert (=> d!590361 m!2374533))

(assert (=> d!590361 m!2372259))

(assert (=> b!1933607 d!590361))

(assert (=> b!1933607 d!590245))

(assert (=> b!1933607 d!589943))

(declare-fun d!590369 () Bool)

(declare-fun lt!741844 () Bool)

(assert (=> d!590369 (= lt!741844 (isEmpty!13567 (list!8905 (_2!11771 lt!741203))))))

(assert (=> d!590369 (= lt!741844 (isEmpty!13577 (c!314508 (_2!11771 lt!741203))))))

(assert (=> d!590369 (= (isEmpty!13568 (_2!11771 lt!741203)) lt!741844)))

(declare-fun bs!415288 () Bool)

(assert (= bs!415288 d!590369))

(declare-fun m!2374535 () Bool)

(assert (=> bs!415288 m!2374535))

(assert (=> bs!415288 m!2374535))

(declare-fun m!2374537 () Bool)

(assert (=> bs!415288 m!2374537))

(declare-fun m!2374539 () Bool)

(assert (=> bs!415288 m!2374539))

(assert (=> b!1933644 d!590369))

(declare-fun d!590371 () Bool)

(assert (=> d!590371 (= (isEmpty!13567 (originalCharacters!4751 separatorToken!354)) ((_ is Nil!21982) (originalCharacters!4751 separatorToken!354)))))

(assert (=> d!589799 d!590371))

(declare-fun d!590373 () Bool)

(declare-fun lt!741845 () Int)

(assert (=> d!590373 (= lt!741845 (size!17158 (list!8907 lt!741165)))))

(assert (=> d!590373 (= lt!741845 (size!17159 (c!314510 lt!741165)))))

(assert (=> d!590373 (= (size!17150 lt!741165) lt!741845)))

(declare-fun bs!415289 () Bool)

(assert (= bs!415289 d!590373))

(assert (=> bs!415289 m!2372315))

(assert (=> bs!415289 m!2372315))

(declare-fun m!2374541 () Bool)

(assert (=> bs!415289 m!2374541))

(declare-fun m!2374543 () Bool)

(assert (=> bs!415289 m!2374543))

(assert (=> d!589669 d!590373))

(declare-fun d!590375 () Bool)

(assert (=> d!590375 (= (dropList!791 lt!741165 0) (drop!1082 (list!8912 (c!314510 lt!741165)) 0))))

(declare-fun bs!415290 () Bool)

(assert (= bs!415290 d!590375))

(assert (=> bs!415290 m!2374235))

(assert (=> bs!415290 m!2374235))

(declare-fun m!2374545 () Bool)

(assert (=> bs!415290 m!2374545))

(assert (=> d!589669 d!590375))

(declare-fun d!590377 () Bool)

(assert (=> d!590377 (= (list!8905 (BalanceConc!14501 Empty!7342)) (list!8908 (c!314508 (BalanceConc!14501 Empty!7342))))))

(declare-fun bs!415291 () Bool)

(assert (= bs!415291 d!590377))

(declare-fun m!2374547 () Bool)

(assert (=> bs!415291 m!2374547))

(assert (=> d!589669 d!590377))

(declare-fun d!590379 () Bool)

(declare-fun lt!741858 () List!22064)

(assert (=> d!590379 (= lt!741858 (++!5905 (list!8905 (BalanceConc!14501 Empty!7342)) (printList!1092 thiss!23328 (dropList!791 lt!741165 0))))))

(declare-fun e!1236859 () List!22064)

(assert (=> d!590379 (= lt!741858 e!1236859)))

(declare-fun c!314842 () Bool)

(assert (=> d!590379 (= c!314842 ((_ is Cons!21985) (dropList!791 lt!741165 0)))))

(assert (=> d!590379 (= (printListTailRec!460 thiss!23328 (dropList!791 lt!741165 0) (list!8905 (BalanceConc!14501 Empty!7342))) lt!741858)))

(declare-fun b!1935100 () Bool)

(assert (=> b!1935100 (= e!1236859 (printListTailRec!460 thiss!23328 (t!180606 (dropList!791 lt!741165 0)) (++!5905 (list!8905 (BalanceConc!14501 Empty!7342)) (list!8905 (charsOf!2484 (h!27386 (dropList!791 lt!741165 0)))))))))

(declare-fun lt!741857 () List!22064)

(assert (=> b!1935100 (= lt!741857 (list!8905 (charsOf!2484 (h!27386 (dropList!791 lt!741165 0)))))))

(declare-fun lt!741860 () List!22064)

(assert (=> b!1935100 (= lt!741860 (printList!1092 thiss!23328 (t!180606 (dropList!791 lt!741165 0))))))

(declare-fun lt!741859 () Unit!36346)

(declare-fun lemmaConcatAssociativity!1200 (List!22064 List!22064 List!22064) Unit!36346)

(assert (=> b!1935100 (= lt!741859 (lemmaConcatAssociativity!1200 (list!8905 (BalanceConc!14501 Empty!7342)) lt!741857 lt!741860))))

(assert (=> b!1935100 (= (++!5905 (++!5905 (list!8905 (BalanceConc!14501 Empty!7342)) lt!741857) lt!741860) (++!5905 (list!8905 (BalanceConc!14501 Empty!7342)) (++!5905 lt!741857 lt!741860)))))

(declare-fun lt!741856 () Unit!36346)

(assert (=> b!1935100 (= lt!741856 lt!741859)))

(declare-fun b!1935101 () Bool)

(assert (=> b!1935101 (= e!1236859 (list!8905 (BalanceConc!14501 Empty!7342)))))

(assert (= (and d!590379 c!314842) b!1935100))

(assert (= (and d!590379 (not c!314842)) b!1935101))

(assert (=> d!590379 m!2372301))

(declare-fun m!2374549 () Bool)

(assert (=> d!590379 m!2374549))

(assert (=> d!590379 m!2372297))

(assert (=> d!590379 m!2374549))

(declare-fun m!2374551 () Bool)

(assert (=> d!590379 m!2374551))

(declare-fun m!2374553 () Bool)

(assert (=> b!1935100 m!2374553))

(declare-fun m!2374555 () Bool)

(assert (=> b!1935100 m!2374555))

(assert (=> b!1935100 m!2374555))

(declare-fun m!2374557 () Bool)

(assert (=> b!1935100 m!2374557))

(assert (=> b!1935100 m!2372297))

(declare-fun m!2374559 () Bool)

(assert (=> b!1935100 m!2374559))

(assert (=> b!1935100 m!2374559))

(declare-fun m!2374561 () Bool)

(assert (=> b!1935100 m!2374561))

(assert (=> b!1935100 m!2372297))

(declare-fun m!2374563 () Bool)

(assert (=> b!1935100 m!2374563))

(declare-fun m!2374565 () Bool)

(assert (=> b!1935100 m!2374565))

(assert (=> b!1935100 m!2374563))

(assert (=> b!1935100 m!2372297))

(assert (=> b!1935100 m!2374557))

(declare-fun m!2374567 () Bool)

(assert (=> b!1935100 m!2374567))

(assert (=> b!1935100 m!2372297))

(declare-fun m!2374569 () Bool)

(assert (=> b!1935100 m!2374569))

(assert (=> b!1935100 m!2374567))

(declare-fun m!2374571 () Bool)

(assert (=> b!1935100 m!2374571))

(assert (=> d!589669 d!590379))

(declare-fun d!590381 () Bool)

(assert (=> d!590381 (= (list!8905 lt!741219) (list!8908 (c!314508 lt!741219)))))

(declare-fun bs!415292 () Bool)

(assert (= bs!415292 d!590381))

(declare-fun m!2374573 () Bool)

(assert (=> bs!415292 m!2374573))

(assert (=> d!589669 d!590381))

(declare-fun e!1236860 () List!22064)

(declare-fun b!1935102 () Bool)

(assert (=> b!1935102 (= e!1236860 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))))

(declare-fun b!1935104 () Bool)

(declare-fun res!865243 () Bool)

(declare-fun e!1236861 () Bool)

(assert (=> b!1935104 (=> (not res!865243) (not e!1236861))))

(declare-fun lt!741861 () List!22064)

(assert (=> b!1935104 (= res!865243 (= (size!17151 lt!741861) (+ (size!17151 (t!180603 lt!741158)) (size!17151 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)))))))

(declare-fun d!590383 () Bool)

(assert (=> d!590383 e!1236861))

(declare-fun res!865242 () Bool)

(assert (=> d!590383 (=> (not res!865242) (not e!1236861))))

(assert (=> d!590383 (= res!865242 (= (content!3187 lt!741861) ((_ map or) (content!3187 (t!180603 lt!741158)) (content!3187 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)))))))

(assert (=> d!590383 (= lt!741861 e!1236860)))

(declare-fun c!314843 () Bool)

(assert (=> d!590383 (= c!314843 ((_ is Nil!21982) (t!180603 lt!741158)))))

(assert (=> d!590383 (= (++!5905 (t!180603 lt!741158) (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)) lt!741861)))

(declare-fun b!1935103 () Bool)

(assert (=> b!1935103 (= e!1236860 (Cons!21982 (h!27383 (t!180603 lt!741158)) (++!5905 (t!180603 (t!180603 lt!741158)) (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))))))

(declare-fun b!1935105 () Bool)

(assert (=> b!1935105 (= e!1236861 (or (not (= (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354) Nil!21982)) (= lt!741861 (t!180603 lt!741158))))))

(assert (= (and d!590383 c!314843) b!1935102))

(assert (= (and d!590383 (not c!314843)) b!1935103))

(assert (= (and d!590383 res!865242) b!1935104))

(assert (= (and b!1935104 res!865243) b!1935105))

(declare-fun m!2374575 () Bool)

(assert (=> b!1935104 m!2374575))

(assert (=> b!1935104 m!2373309))

(assert (=> b!1935104 m!2372133))

(assert (=> b!1935104 m!2372355))

(declare-fun m!2374577 () Bool)

(assert (=> d!590383 m!2374577))

(declare-fun m!2374579 () Bool)

(assert (=> d!590383 m!2374579))

(assert (=> d!590383 m!2372133))

(assert (=> d!590383 m!2372361))

(assert (=> b!1935103 m!2372133))

(declare-fun m!2374581 () Bool)

(assert (=> b!1935103 m!2374581))

(assert (=> b!1933678 d!590383))

(declare-fun d!590385 () Bool)

(declare-fun nullableFct!366 (Regex!5369) Bool)

(assert (=> d!590385 (= (nullable!1616 (regex!3944 lt!741162)) (nullableFct!366 (regex!3944 lt!741162)))))

(declare-fun bs!415293 () Bool)

(assert (= bs!415293 d!590385))

(declare-fun m!2374583 () Bool)

(assert (=> bs!415293 m!2374583))

(assert (=> b!1934171 d!590385))

(declare-fun d!590387 () Bool)

(assert (=> d!590387 (= (inv!16 (value!123995 (h!27386 tokens!598))) (= (charsToInt!0 (text!29007 (value!123995 (h!27386 tokens!598)))) (value!123986 (value!123995 (h!27386 tokens!598)))))))

(declare-fun bs!415294 () Bool)

(assert (= bs!415294 d!590387))

(declare-fun m!2374585 () Bool)

(assert (=> bs!415294 m!2374585))

(assert (=> b!1933632 d!590387))

(declare-fun d!590389 () Bool)

(assert (=> d!590389 (= (isEmpty!13575 (list!8907 (_1!11771 (lex!1581 thiss!23328 rules!3198 (seqFromList!2798 lt!741158))))) ((_ is Nil!21985) (list!8907 (_1!11771 (lex!1581 thiss!23328 rules!3198 (seqFromList!2798 lt!741158))))))))

(assert (=> d!589801 d!590389))

(declare-fun d!590391 () Bool)

(assert (=> d!590391 (= (list!8907 (_1!11771 (lex!1581 thiss!23328 rules!3198 (seqFromList!2798 lt!741158)))) (list!8912 (c!314510 (_1!11771 (lex!1581 thiss!23328 rules!3198 (seqFromList!2798 lt!741158))))))))

(declare-fun bs!415295 () Bool)

(assert (= bs!415295 d!590391))

(declare-fun m!2374587 () Bool)

(assert (=> bs!415295 m!2374587))

(assert (=> d!589801 d!590391))

(declare-fun lt!741864 () Bool)

(declare-fun d!590393 () Bool)

(assert (=> d!590393 (= lt!741864 (isEmpty!13575 (list!8912 (c!314510 (_1!11771 (lex!1581 thiss!23328 rules!3198 (seqFromList!2798 lt!741158)))))))))

(assert (=> d!590393 (= lt!741864 (= (size!17159 (c!314510 (_1!11771 (lex!1581 thiss!23328 rules!3198 (seqFromList!2798 lt!741158))))) 0))))

(assert (=> d!590393 (= (isEmpty!13576 (c!314510 (_1!11771 (lex!1581 thiss!23328 rules!3198 (seqFromList!2798 lt!741158))))) lt!741864)))

(declare-fun bs!415296 () Bool)

(assert (= bs!415296 d!590393))

(assert (=> bs!415296 m!2374587))

(assert (=> bs!415296 m!2374587))

(declare-fun m!2374589 () Bool)

(assert (=> bs!415296 m!2374589))

(declare-fun m!2374591 () Bool)

(assert (=> bs!415296 m!2374591))

(assert (=> d!589801 d!590393))

(declare-fun d!590395 () Bool)

(assert (=> d!590395 (= (list!8905 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (value!123995 separatorToken!354))) (list!8908 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (value!123995 separatorToken!354)))))))

(declare-fun bs!415297 () Bool)

(assert (= bs!415297 d!590395))

(declare-fun m!2374593 () Bool)

(assert (=> bs!415297 m!2374593))

(assert (=> b!1934018 d!590395))

(declare-fun d!590397 () Bool)

(declare-fun res!865244 () Bool)

(declare-fun e!1236862 () Bool)

(assert (=> d!590397 (=> res!865244 e!1236862)))

(assert (=> d!590397 (= res!865244 ((_ is Nil!21985) tokens!598))))

(assert (=> d!590397 (= (forall!4650 tokens!598 lambda!75395) e!1236862)))

(declare-fun b!1935106 () Bool)

(declare-fun e!1236863 () Bool)

(assert (=> b!1935106 (= e!1236862 e!1236863)))

(declare-fun res!865245 () Bool)

(assert (=> b!1935106 (=> (not res!865245) (not e!1236863))))

(assert (=> b!1935106 (= res!865245 (dynLambda!10704 lambda!75395 (h!27386 tokens!598)))))

(declare-fun b!1935107 () Bool)

(assert (=> b!1935107 (= e!1236863 (forall!4650 (t!180606 tokens!598) lambda!75395))))

(assert (= (and d!590397 (not res!865244)) b!1935106))

(assert (= (and b!1935106 res!865245) b!1935107))

(declare-fun b_lambda!64403 () Bool)

(assert (=> (not b_lambda!64403) (not b!1935106)))

(declare-fun m!2374595 () Bool)

(assert (=> b!1935106 m!2374595))

(declare-fun m!2374597 () Bool)

(assert (=> b!1935107 m!2374597))

(assert (=> d!589835 d!590397))

(assert (=> d!589835 d!589791))

(declare-fun b!1935108 () Bool)

(declare-fun e!1236866 () Bool)

(assert (=> b!1935108 (= e!1236866 (inv!16 (value!123995 (h!27386 (t!180606 tokens!598)))))))

(declare-fun b!1935109 () Bool)

(declare-fun res!865246 () Bool)

(declare-fun e!1236864 () Bool)

(assert (=> b!1935109 (=> res!865246 e!1236864)))

(assert (=> b!1935109 (= res!865246 (not ((_ is IntegerValue!12242) (value!123995 (h!27386 (t!180606 tokens!598))))))))

(declare-fun e!1236865 () Bool)

(assert (=> b!1935109 (= e!1236865 e!1236864)))

(declare-fun b!1935110 () Bool)

(assert (=> b!1935110 (= e!1236864 (inv!15 (value!123995 (h!27386 (t!180606 tokens!598)))))))

(declare-fun d!590399 () Bool)

(declare-fun c!314844 () Bool)

(assert (=> d!590399 (= c!314844 ((_ is IntegerValue!12240) (value!123995 (h!27386 (t!180606 tokens!598)))))))

(assert (=> d!590399 (= (inv!21 (value!123995 (h!27386 (t!180606 tokens!598)))) e!1236866)))

(declare-fun b!1935111 () Bool)

(assert (=> b!1935111 (= e!1236866 e!1236865)))

(declare-fun c!314845 () Bool)

(assert (=> b!1935111 (= c!314845 ((_ is IntegerValue!12241) (value!123995 (h!27386 (t!180606 tokens!598)))))))

(declare-fun b!1935112 () Bool)

(assert (=> b!1935112 (= e!1236865 (inv!17 (value!123995 (h!27386 (t!180606 tokens!598)))))))

(assert (= (and d!590399 c!314844) b!1935108))

(assert (= (and d!590399 (not c!314844)) b!1935111))

(assert (= (and b!1935111 c!314845) b!1935112))

(assert (= (and b!1935111 (not c!314845)) b!1935109))

(assert (= (and b!1935109 (not res!865246)) b!1935110))

(declare-fun m!2374599 () Bool)

(assert (=> b!1935108 m!2374599))

(declare-fun m!2374601 () Bool)

(assert (=> b!1935110 m!2374601))

(declare-fun m!2374603 () Bool)

(assert (=> b!1935112 m!2374603))

(assert (=> b!1934236 d!590399))

(declare-fun d!590401 () Bool)

(declare-fun lt!741865 () Bool)

(assert (=> d!590401 (= lt!741865 (select (content!3189 rules!3198) (get!6932 lt!741317)))))

(declare-fun e!1236868 () Bool)

(assert (=> d!590401 (= lt!741865 e!1236868)))

(declare-fun res!865248 () Bool)

(assert (=> d!590401 (=> (not res!865248) (not e!1236868))))

(assert (=> d!590401 (= res!865248 ((_ is Cons!21984) rules!3198))))

(assert (=> d!590401 (= (contains!3983 rules!3198 (get!6932 lt!741317)) lt!741865)))

(declare-fun b!1935113 () Bool)

(declare-fun e!1236867 () Bool)

(assert (=> b!1935113 (= e!1236868 e!1236867)))

(declare-fun res!865247 () Bool)

(assert (=> b!1935113 (=> res!865247 e!1236867)))

(assert (=> b!1935113 (= res!865247 (= (h!27385 rules!3198) (get!6932 lt!741317)))))

(declare-fun b!1935114 () Bool)

(assert (=> b!1935114 (= e!1236867 (contains!3983 (t!180605 rules!3198) (get!6932 lt!741317)))))

(assert (= (and d!590401 res!865248) b!1935113))

(assert (= (and b!1935113 (not res!865247)) b!1935114))

(assert (=> d!590401 m!2373327))

(assert (=> d!590401 m!2372645))

(declare-fun m!2374605 () Bool)

(assert (=> d!590401 m!2374605))

(assert (=> b!1935114 m!2372645))

(declare-fun m!2374607 () Bool)

(assert (=> b!1935114 m!2374607))

(assert (=> b!1933902 d!590401))

(declare-fun d!590403 () Bool)

(assert (=> d!590403 (= (get!6932 lt!741317) (v!26679 lt!741317))))

(assert (=> b!1933902 d!590403))

(declare-fun b!1935115 () Bool)

(declare-fun e!1236869 () List!22064)

(assert (=> b!1935115 (= e!1236869 (_2!11772 (get!6933 lt!741380)))))

(declare-fun b!1935117 () Bool)

(declare-fun res!865250 () Bool)

(declare-fun e!1236870 () Bool)

(assert (=> b!1935117 (=> (not res!865250) (not e!1236870))))

(declare-fun lt!741866 () List!22064)

(assert (=> b!1935117 (= res!865250 (= (size!17151 lt!741866) (+ (size!17151 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741380))))) (size!17151 (_2!11772 (get!6933 lt!741380))))))))

(declare-fun d!590405 () Bool)

(assert (=> d!590405 e!1236870))

(declare-fun res!865249 () Bool)

(assert (=> d!590405 (=> (not res!865249) (not e!1236870))))

(assert (=> d!590405 (= res!865249 (= (content!3187 lt!741866) ((_ map or) (content!3187 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741380))))) (content!3187 (_2!11772 (get!6933 lt!741380))))))))

(assert (=> d!590405 (= lt!741866 e!1236869)))

(declare-fun c!314846 () Bool)

(assert (=> d!590405 (= c!314846 ((_ is Nil!21982) (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741380))))))))

(assert (=> d!590405 (= (++!5905 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741380)))) (_2!11772 (get!6933 lt!741380))) lt!741866)))

(declare-fun b!1935116 () Bool)

(assert (=> b!1935116 (= e!1236869 (Cons!21982 (h!27383 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741380))))) (++!5905 (t!180603 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741380))))) (_2!11772 (get!6933 lt!741380)))))))

(declare-fun b!1935118 () Bool)

(assert (=> b!1935118 (= e!1236870 (or (not (= (_2!11772 (get!6933 lt!741380)) Nil!21982)) (= lt!741866 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741380)))))))))

(assert (= (and d!590405 c!314846) b!1935115))

(assert (= (and d!590405 (not c!314846)) b!1935116))

(assert (= (and d!590405 res!865249) b!1935117))

(assert (= (and b!1935117 res!865250) b!1935118))

(declare-fun m!2374609 () Bool)

(assert (=> b!1935117 m!2374609))

(assert (=> b!1935117 m!2372813))

(declare-fun m!2374611 () Bool)

(assert (=> b!1935117 m!2374611))

(assert (=> b!1935117 m!2372837))

(declare-fun m!2374613 () Bool)

(assert (=> d!590405 m!2374613))

(assert (=> d!590405 m!2372813))

(declare-fun m!2374615 () Bool)

(assert (=> d!590405 m!2374615))

(declare-fun m!2374617 () Bool)

(assert (=> d!590405 m!2374617))

(declare-fun m!2374619 () Bool)

(assert (=> b!1935116 m!2374619))

(assert (=> b!1933994 d!590405))

(declare-fun d!590407 () Bool)

(assert (=> d!590407 (= (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741380)))) (list!8908 (c!314508 (charsOf!2484 (_1!11772 (get!6933 lt!741380))))))))

(declare-fun bs!415298 () Bool)

(assert (= bs!415298 d!590407))

(declare-fun m!2374621 () Bool)

(assert (=> bs!415298 m!2374621))

(assert (=> b!1933994 d!590407))

(declare-fun d!590409 () Bool)

(declare-fun lt!741867 () BalanceConc!14500)

(assert (=> d!590409 (= (list!8905 lt!741867) (originalCharacters!4751 (_1!11772 (get!6933 lt!741380))))))

(assert (=> d!590409 (= lt!741867 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741380))))) (value!123995 (_1!11772 (get!6933 lt!741380)))))))

(assert (=> d!590409 (= (charsOf!2484 (_1!11772 (get!6933 lt!741380))) lt!741867)))

(declare-fun b_lambda!64405 () Bool)

(assert (=> (not b_lambda!64405) (not d!590409)))

(declare-fun t!180819 () Bool)

(declare-fun tb!119075 () Bool)

(assert (=> (and b!1933530 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (toChars!5444 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741380)))))) t!180819) tb!119075))

(declare-fun b!1935119 () Bool)

(declare-fun e!1236871 () Bool)

(declare-fun tp!551934 () Bool)

(assert (=> b!1935119 (= e!1236871 (and (inv!29081 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741380))))) (value!123995 (_1!11772 (get!6933 lt!741380)))))) tp!551934))))

(declare-fun result!143770 () Bool)

(assert (=> tb!119075 (= result!143770 (and (inv!29082 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741380))))) (value!123995 (_1!11772 (get!6933 lt!741380))))) e!1236871))))

(assert (= tb!119075 b!1935119))

(declare-fun m!2374623 () Bool)

(assert (=> b!1935119 m!2374623))

(declare-fun m!2374625 () Bool)

(assert (=> tb!119075 m!2374625))

(assert (=> d!590409 t!180819))

(declare-fun b_and!152483 () Bool)

(assert (= b_and!152477 (and (=> t!180819 result!143770) b_and!152483)))

(declare-fun tb!119077 () Bool)

(declare-fun t!180821 () Bool)

(assert (=> (and b!1933531 (= (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (toChars!5444 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741380)))))) t!180821) tb!119077))

(declare-fun result!143772 () Bool)

(assert (= result!143772 result!143770))

(assert (=> d!590409 t!180821))

(declare-fun b_and!152485 () Bool)

(assert (= b_and!152475 (and (=> t!180821 result!143772) b_and!152485)))

(declare-fun t!180823 () Bool)

(declare-fun tb!119079 () Bool)

(assert (=> (and b!1933518 (= (toChars!5444 (transformation!3944 (h!27385 rules!3198))) (toChars!5444 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741380)))))) t!180823) tb!119079))

(declare-fun result!143774 () Bool)

(assert (= result!143774 result!143770))

(assert (=> d!590409 t!180823))

(declare-fun b_and!152487 () Bool)

(assert (= b_and!152473 (and (=> t!180823 result!143774) b_and!152487)))

(declare-fun t!180825 () Bool)

(declare-fun tb!119081 () Bool)

(assert (=> (and b!1934238 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (toChars!5444 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741380)))))) t!180825) tb!119081))

(declare-fun result!143776 () Bool)

(assert (= result!143776 result!143770))

(assert (=> d!590409 t!180825))

(declare-fun b_and!152489 () Bool)

(assert (= b_and!152479 (and (=> t!180825 result!143776) b_and!152489)))

(declare-fun t!180827 () Bool)

(declare-fun tb!119083 () Bool)

(assert (=> (and b!1934216 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toChars!5444 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741380)))))) t!180827) tb!119083))

(declare-fun result!143778 () Bool)

(assert (= result!143778 result!143770))

(assert (=> d!590409 t!180827))

(declare-fun b_and!152491 () Bool)

(assert (= b_and!152481 (and (=> t!180827 result!143778) b_and!152491)))

(declare-fun m!2374627 () Bool)

(assert (=> d!590409 m!2374627))

(declare-fun m!2374629 () Bool)

(assert (=> d!590409 m!2374629))

(assert (=> b!1933994 d!590409))

(assert (=> b!1933994 d!589997))

(declare-fun b!1935120 () Bool)

(declare-fun e!1236872 () List!22064)

(assert (=> b!1935120 (= e!1236872 (_2!11772 (get!6933 lt!741305)))))

(declare-fun b!1935122 () Bool)

(declare-fun res!865252 () Bool)

(declare-fun e!1236873 () Bool)

(assert (=> b!1935122 (=> (not res!865252) (not e!1236873))))

(declare-fun lt!741868 () List!22064)

(assert (=> b!1935122 (= res!865252 (= (size!17151 lt!741868) (+ (size!17151 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741305))))) (size!17151 (_2!11772 (get!6933 lt!741305))))))))

(declare-fun d!590411 () Bool)

(assert (=> d!590411 e!1236873))

(declare-fun res!865251 () Bool)

(assert (=> d!590411 (=> (not res!865251) (not e!1236873))))

(assert (=> d!590411 (= res!865251 (= (content!3187 lt!741868) ((_ map or) (content!3187 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741305))))) (content!3187 (_2!11772 (get!6933 lt!741305))))))))

(assert (=> d!590411 (= lt!741868 e!1236872)))

(declare-fun c!314847 () Bool)

(assert (=> d!590411 (= c!314847 ((_ is Nil!21982) (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741305))))))))

(assert (=> d!590411 (= (++!5905 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741305)))) (_2!11772 (get!6933 lt!741305))) lt!741868)))

(declare-fun b!1935121 () Bool)

(assert (=> b!1935121 (= e!1236872 (Cons!21982 (h!27383 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741305))))) (++!5905 (t!180603 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741305))))) (_2!11772 (get!6933 lt!741305)))))))

(declare-fun b!1935123 () Bool)

(assert (=> b!1935123 (= e!1236873 (or (not (= (_2!11772 (get!6933 lt!741305)) Nil!21982)) (= lt!741868 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741305)))))))))

(assert (= (and d!590411 c!314847) b!1935120))

(assert (= (and d!590411 (not c!314847)) b!1935121))

(assert (= (and d!590411 res!865251) b!1935122))

(assert (= (and b!1935122 res!865252) b!1935123))

(declare-fun m!2374631 () Bool)

(assert (=> b!1935122 m!2374631))

(assert (=> b!1935122 m!2372599))

(declare-fun m!2374633 () Bool)

(assert (=> b!1935122 m!2374633))

(assert (=> b!1935122 m!2372625))

(declare-fun m!2374635 () Bool)

(assert (=> d!590411 m!2374635))

(assert (=> d!590411 m!2372599))

(declare-fun m!2374637 () Bool)

(assert (=> d!590411 m!2374637))

(declare-fun m!2374639 () Bool)

(assert (=> d!590411 m!2374639))

(declare-fun m!2374641 () Bool)

(assert (=> b!1935121 m!2374641))

(assert (=> b!1933872 d!590411))

(assert (=> b!1933872 d!589927))

(assert (=> b!1933872 d!589929))

(assert (=> b!1933872 d!589925))

(declare-fun d!590413 () Bool)

(assert (=> d!590413 (= (isEmpty!13574 lt!741170) (not ((_ is Some!4564) lt!741170)))))

(assert (=> d!589789 d!590413))

(declare-fun bs!415299 () Bool)

(declare-fun d!590415 () Bool)

(assert (= bs!415299 (and d!590415 d!589751)))

(declare-fun lambda!75426 () Int)

(assert (=> bs!415299 (= (and (= (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) (= (toValue!5585 (transformation!3944 (rule!6153 separatorToken!354))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) (= lambda!75426 lambda!75386))))

(declare-fun bs!415300 () Bool)

(assert (= bs!415300 (and d!590415 d!589937)))

(assert (=> bs!415300 (= (and (= (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (toChars!5444 (transformation!3944 (h!27385 rules!3198)))) (= (toValue!5585 (transformation!3944 (rule!6153 separatorToken!354))) (toValue!5585 (transformation!3944 (h!27385 rules!3198))))) (= lambda!75426 lambda!75408))))

(declare-fun bs!415301 () Bool)

(assert (= bs!415301 (and d!590415 d!589953)))

(assert (=> bs!415301 (= (and (= (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) (= (toValue!5585 (transformation!3944 (rule!6153 separatorToken!354))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))))) (= lambda!75426 lambda!75409))))

(assert (=> d!590415 true))

(assert (=> d!590415 (< (dynLambda!10699 order!13851 (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354)))) (dynLambda!10702 order!13853 lambda!75426))))

(assert (=> d!590415 true))

(assert (=> d!590415 (< (dynLambda!10697 order!13847 (toValue!5585 (transformation!3944 (rule!6153 separatorToken!354)))) (dynLambda!10702 order!13853 lambda!75426))))

(assert (=> d!590415 (= (semiInverseModEq!1573 (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (toValue!5585 (transformation!3944 (rule!6153 separatorToken!354)))) (Forall!1004 lambda!75426))))

(declare-fun bs!415302 () Bool)

(assert (= bs!415302 d!590415))

(declare-fun m!2374643 () Bool)

(assert (=> bs!415302 m!2374643))

(assert (=> d!589821 d!590415))

(declare-fun b!1935124 () Bool)

(declare-fun e!1236874 () List!22064)

(assert (=> b!1935124 (= e!1236874 (printList!1092 thiss!23328 (t!180606 (Cons!21985 (h!27386 tokens!598) Nil!21985))))))

(declare-fun b!1935126 () Bool)

(declare-fun res!865254 () Bool)

(declare-fun e!1236875 () Bool)

(assert (=> b!1935126 (=> (not res!865254) (not e!1236875))))

(declare-fun lt!741869 () List!22064)

(assert (=> b!1935126 (= res!865254 (= (size!17151 lt!741869) (+ (size!17151 (list!8905 (charsOf!2484 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985))))) (size!17151 (printList!1092 thiss!23328 (t!180606 (Cons!21985 (h!27386 tokens!598) Nil!21985)))))))))

(declare-fun d!590417 () Bool)

(assert (=> d!590417 e!1236875))

(declare-fun res!865253 () Bool)

(assert (=> d!590417 (=> (not res!865253) (not e!1236875))))

(assert (=> d!590417 (= res!865253 (= (content!3187 lt!741869) ((_ map or) (content!3187 (list!8905 (charsOf!2484 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985))))) (content!3187 (printList!1092 thiss!23328 (t!180606 (Cons!21985 (h!27386 tokens!598) Nil!21985)))))))))

(assert (=> d!590417 (= lt!741869 e!1236874)))

(declare-fun c!314848 () Bool)

(assert (=> d!590417 (= c!314848 ((_ is Nil!21982) (list!8905 (charsOf!2484 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985))))))))

(assert (=> d!590417 (= (++!5905 (list!8905 (charsOf!2484 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985)))) (printList!1092 thiss!23328 (t!180606 (Cons!21985 (h!27386 tokens!598) Nil!21985)))) lt!741869)))

(declare-fun b!1935125 () Bool)

(assert (=> b!1935125 (= e!1236874 (Cons!21982 (h!27383 (list!8905 (charsOf!2484 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985))))) (++!5905 (t!180603 (list!8905 (charsOf!2484 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985))))) (printList!1092 thiss!23328 (t!180606 (Cons!21985 (h!27386 tokens!598) Nil!21985))))))))

(declare-fun b!1935127 () Bool)

(assert (=> b!1935127 (= e!1236875 (or (not (= (printList!1092 thiss!23328 (t!180606 (Cons!21985 (h!27386 tokens!598) Nil!21985))) Nil!21982)) (= lt!741869 (list!8905 (charsOf!2484 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985)))))))))

(assert (= (and d!590417 c!314848) b!1935124))

(assert (= (and d!590417 (not c!314848)) b!1935125))

(assert (= (and d!590417 res!865253) b!1935126))

(assert (= (and b!1935126 res!865254) b!1935127))

(declare-fun m!2374645 () Bool)

(assert (=> b!1935126 m!2374645))

(assert (=> b!1935126 m!2372333))

(declare-fun m!2374647 () Bool)

(assert (=> b!1935126 m!2374647))

(assert (=> b!1935126 m!2372335))

(declare-fun m!2374649 () Bool)

(assert (=> b!1935126 m!2374649))

(declare-fun m!2374651 () Bool)

(assert (=> d!590417 m!2374651))

(assert (=> d!590417 m!2372333))

(declare-fun m!2374653 () Bool)

(assert (=> d!590417 m!2374653))

(assert (=> d!590417 m!2372335))

(declare-fun m!2374655 () Bool)

(assert (=> d!590417 m!2374655))

(assert (=> b!1935125 m!2372335))

(declare-fun m!2374657 () Bool)

(assert (=> b!1935125 m!2374657))

(assert (=> b!1933664 d!590417))

(declare-fun d!590419 () Bool)

(assert (=> d!590419 (= (list!8905 (charsOf!2484 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985)))) (list!8908 (c!314508 (charsOf!2484 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985))))))))

(declare-fun bs!415303 () Bool)

(assert (= bs!415303 d!590419))

(declare-fun m!2374659 () Bool)

(assert (=> bs!415303 m!2374659))

(assert (=> b!1933664 d!590419))

(declare-fun d!590421 () Bool)

(declare-fun lt!741870 () BalanceConc!14500)

(assert (=> d!590421 (= (list!8905 lt!741870) (originalCharacters!4751 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985))))))

(assert (=> d!590421 (= lt!741870 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985))))) (value!123995 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985)))))))

(assert (=> d!590421 (= (charsOf!2484 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985))) lt!741870)))

(declare-fun b_lambda!64407 () Bool)

(assert (=> (not b_lambda!64407) (not d!590421)))

(declare-fun t!180829 () Bool)

(declare-fun tb!119085 () Bool)

(assert (=> (and b!1934238 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985)))))) t!180829) tb!119085))

(declare-fun b!1935128 () Bool)

(declare-fun e!1236876 () Bool)

(declare-fun tp!551935 () Bool)

(assert (=> b!1935128 (= e!1236876 (and (inv!29081 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985))))) (value!123995 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985)))))) tp!551935))))

(declare-fun result!143780 () Bool)

(assert (=> tb!119085 (= result!143780 (and (inv!29082 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985))))) (value!123995 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985))))) e!1236876))))

(assert (= tb!119085 b!1935128))

(declare-fun m!2374661 () Bool)

(assert (=> b!1935128 m!2374661))

(declare-fun m!2374663 () Bool)

(assert (=> tb!119085 m!2374663))

(assert (=> d!590421 t!180829))

(declare-fun b_and!152493 () Bool)

(assert (= b_and!152489 (and (=> t!180829 result!143780) b_and!152493)))

(declare-fun tb!119087 () Bool)

(declare-fun t!180831 () Bool)

(assert (=> (and b!1933531 (= (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985)))))) t!180831) tb!119087))

(declare-fun result!143782 () Bool)

(assert (= result!143782 result!143780))

(assert (=> d!590421 t!180831))

(declare-fun b_and!152495 () Bool)

(assert (= b_and!152485 (and (=> t!180831 result!143782) b_and!152495)))

(declare-fun tb!119089 () Bool)

(declare-fun t!180833 () Bool)

(assert (=> (and b!1933518 (= (toChars!5444 (transformation!3944 (h!27385 rules!3198))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985)))))) t!180833) tb!119089))

(declare-fun result!143784 () Bool)

(assert (= result!143784 result!143780))

(assert (=> d!590421 t!180833))

(declare-fun b_and!152497 () Bool)

(assert (= b_and!152487 (and (=> t!180833 result!143784) b_and!152497)))

(declare-fun t!180835 () Bool)

(declare-fun tb!119091 () Bool)

(assert (=> (and b!1933530 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985)))))) t!180835) tb!119091))

(declare-fun result!143786 () Bool)

(assert (= result!143786 result!143780))

(assert (=> d!590421 t!180835))

(declare-fun b_and!152499 () Bool)

(assert (= b_and!152483 (and (=> t!180835 result!143786) b_and!152499)))

(declare-fun t!180837 () Bool)

(declare-fun tb!119093 () Bool)

(assert (=> (and b!1934216 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985)))))) t!180837) tb!119093))

(declare-fun result!143788 () Bool)

(assert (= result!143788 result!143780))

(assert (=> d!590421 t!180837))

(declare-fun b_and!152501 () Bool)

(assert (= b_and!152491 (and (=> t!180837 result!143788) b_and!152501)))

(declare-fun m!2374665 () Bool)

(assert (=> d!590421 m!2374665))

(declare-fun m!2374667 () Bool)

(assert (=> d!590421 m!2374667))

(assert (=> b!1933664 d!590421))

(declare-fun d!590423 () Bool)

(declare-fun c!314849 () Bool)

(assert (=> d!590423 (= c!314849 ((_ is Cons!21985) (t!180606 (Cons!21985 (h!27386 tokens!598) Nil!21985))))))

(declare-fun e!1236877 () List!22064)

(assert (=> d!590423 (= (printList!1092 thiss!23328 (t!180606 (Cons!21985 (h!27386 tokens!598) Nil!21985))) e!1236877)))

(declare-fun b!1935129 () Bool)

(assert (=> b!1935129 (= e!1236877 (++!5905 (list!8905 (charsOf!2484 (h!27386 (t!180606 (Cons!21985 (h!27386 tokens!598) Nil!21985))))) (printList!1092 thiss!23328 (t!180606 (t!180606 (Cons!21985 (h!27386 tokens!598) Nil!21985))))))))

(declare-fun b!1935130 () Bool)

(assert (=> b!1935130 (= e!1236877 Nil!21982)))

(assert (= (and d!590423 c!314849) b!1935129))

(assert (= (and d!590423 (not c!314849)) b!1935130))

(declare-fun m!2374669 () Bool)

(assert (=> b!1935129 m!2374669))

(assert (=> b!1935129 m!2374669))

(declare-fun m!2374671 () Bool)

(assert (=> b!1935129 m!2374671))

(declare-fun m!2374673 () Bool)

(assert (=> b!1935129 m!2374673))

(assert (=> b!1935129 m!2374671))

(assert (=> b!1935129 m!2374673))

(declare-fun m!2374675 () Bool)

(assert (=> b!1935129 m!2374675))

(assert (=> b!1933664 d!590423))

(assert (=> b!1933907 d!590011))

(declare-fun d!590425 () Bool)

(assert (=> d!590425 (dynLambda!10704 lambda!75389 (h!27386 (t!180606 tokens!598)))))

(declare-fun lt!741873 () Unit!36346)

(declare-fun choose!12023 (List!22067 Int Token!7440) Unit!36346)

(assert (=> d!590425 (= lt!741873 (choose!12023 (t!180606 tokens!598) lambda!75389 (h!27386 (t!180606 tokens!598))))))

(declare-fun e!1236880 () Bool)

(assert (=> d!590425 e!1236880))

(declare-fun res!865257 () Bool)

(assert (=> d!590425 (=> (not res!865257) (not e!1236880))))

(assert (=> d!590425 (= res!865257 (forall!4650 (t!180606 tokens!598) lambda!75389))))

(assert (=> d!590425 (= (forallContained!720 (t!180606 tokens!598) lambda!75389 (h!27386 (t!180606 tokens!598))) lt!741873)))

(declare-fun b!1935133 () Bool)

(assert (=> b!1935133 (= e!1236880 (contains!3986 (t!180606 tokens!598) (h!27386 (t!180606 tokens!598))))))

(assert (= (and d!590425 res!865257) b!1935133))

(declare-fun b_lambda!64409 () Bool)

(assert (=> (not b_lambda!64409) (not d!590425)))

(declare-fun m!2374677 () Bool)

(assert (=> d!590425 m!2374677))

(declare-fun m!2374679 () Bool)

(assert (=> d!590425 m!2374679))

(declare-fun m!2374681 () Bool)

(assert (=> d!590425 m!2374681))

(declare-fun m!2374683 () Bool)

(assert (=> b!1935133 m!2374683))

(assert (=> b!1933975 d!590425))

(declare-fun b!1935134 () Bool)

(declare-fun e!1236883 () Bool)

(declare-fun e!1236881 () Bool)

(assert (=> b!1935134 (= e!1236883 e!1236881)))

(declare-fun res!865261 () Bool)

(assert (=> b!1935134 (=> (not res!865261) (not e!1236881))))

(declare-fun lt!741875 () Option!4566)

(assert (=> b!1935134 (= res!865261 (isDefined!3858 lt!741875))))

(declare-fun bm!119041 () Bool)

(declare-fun call!119046 () Option!4566)

(assert (=> bm!119041 (= call!119046 (maxPrefixOneRule!1231 thiss!23328 (h!27385 rules!3198) (++!5905 (list!8905 (charsOf!2484 (h!27386 (t!180606 tokens!598)))) lt!741377)))))

(declare-fun b!1935135 () Bool)

(declare-fun res!865262 () Bool)

(assert (=> b!1935135 (=> (not res!865262) (not e!1236881))))

(assert (=> b!1935135 (= res!865262 (< (size!17151 (_2!11772 (get!6933 lt!741875))) (size!17151 (++!5905 (list!8905 (charsOf!2484 (h!27386 (t!180606 tokens!598)))) lt!741377))))))

(declare-fun b!1935137 () Bool)

(declare-fun res!865260 () Bool)

(assert (=> b!1935137 (=> (not res!865260) (not e!1236881))))

(assert (=> b!1935137 (= res!865260 (= (value!123995 (_1!11772 (get!6933 lt!741875))) (apply!5725 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741875)))) (seqFromList!2798 (originalCharacters!4751 (_1!11772 (get!6933 lt!741875)))))))))

(declare-fun b!1935138 () Bool)

(declare-fun res!865259 () Bool)

(assert (=> b!1935138 (=> (not res!865259) (not e!1236881))))

(assert (=> b!1935138 (= res!865259 (= (++!5905 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741875)))) (_2!11772 (get!6933 lt!741875))) (++!5905 (list!8905 (charsOf!2484 (h!27386 (t!180606 tokens!598)))) lt!741377)))))

(declare-fun b!1935139 () Bool)

(assert (=> b!1935139 (= e!1236881 (contains!3983 rules!3198 (rule!6153 (_1!11772 (get!6933 lt!741875)))))))

(declare-fun b!1935140 () Bool)

(declare-fun res!865263 () Bool)

(assert (=> b!1935140 (=> (not res!865263) (not e!1236881))))

(assert (=> b!1935140 (= res!865263 (matchR!2637 (regex!3944 (rule!6153 (_1!11772 (get!6933 lt!741875)))) (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741875))))))))

(declare-fun d!590427 () Bool)

(assert (=> d!590427 e!1236883))

(declare-fun res!865258 () Bool)

(assert (=> d!590427 (=> res!865258 e!1236883)))

(assert (=> d!590427 (= res!865258 (isEmpty!13571 lt!741875))))

(declare-fun e!1236882 () Option!4566)

(assert (=> d!590427 (= lt!741875 e!1236882)))

(declare-fun c!314850 () Bool)

(assert (=> d!590427 (= c!314850 (and ((_ is Cons!21984) rules!3198) ((_ is Nil!21984) (t!180605 rules!3198))))))

(declare-fun lt!741878 () Unit!36346)

(declare-fun lt!741874 () Unit!36346)

(assert (=> d!590427 (= lt!741878 lt!741874)))

(assert (=> d!590427 (isPrefix!1949 (++!5905 (list!8905 (charsOf!2484 (h!27386 (t!180606 tokens!598)))) lt!741377) (++!5905 (list!8905 (charsOf!2484 (h!27386 (t!180606 tokens!598)))) lt!741377))))

(assert (=> d!590427 (= lt!741874 (lemmaIsPrefixRefl!1267 (++!5905 (list!8905 (charsOf!2484 (h!27386 (t!180606 tokens!598)))) lt!741377) (++!5905 (list!8905 (charsOf!2484 (h!27386 (t!180606 tokens!598)))) lt!741377)))))

(assert (=> d!590427 (rulesValidInductive!1348 thiss!23328 rules!3198)))

(assert (=> d!590427 (= (maxPrefix!1995 thiss!23328 rules!3198 (++!5905 (list!8905 (charsOf!2484 (h!27386 (t!180606 tokens!598)))) lt!741377)) lt!741875)))

(declare-fun b!1935136 () Bool)

(declare-fun res!865264 () Bool)

(assert (=> b!1935136 (=> (not res!865264) (not e!1236881))))

(assert (=> b!1935136 (= res!865264 (= (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741875)))) (originalCharacters!4751 (_1!11772 (get!6933 lt!741875)))))))

(declare-fun b!1935141 () Bool)

(assert (=> b!1935141 (= e!1236882 call!119046)))

(declare-fun b!1935142 () Bool)

(declare-fun lt!741876 () Option!4566)

(declare-fun lt!741877 () Option!4566)

(assert (=> b!1935142 (= e!1236882 (ite (and ((_ is None!4565) lt!741876) ((_ is None!4565) lt!741877)) None!4565 (ite ((_ is None!4565) lt!741877) lt!741876 (ite ((_ is None!4565) lt!741876) lt!741877 (ite (>= (size!17148 (_1!11772 (v!26680 lt!741876))) (size!17148 (_1!11772 (v!26680 lt!741877)))) lt!741876 lt!741877)))))))

(assert (=> b!1935142 (= lt!741876 call!119046)))

(assert (=> b!1935142 (= lt!741877 (maxPrefix!1995 thiss!23328 (t!180605 rules!3198) (++!5905 (list!8905 (charsOf!2484 (h!27386 (t!180606 tokens!598)))) lt!741377)))))

(assert (= (and d!590427 c!314850) b!1935141))

(assert (= (and d!590427 (not c!314850)) b!1935142))

(assert (= (or b!1935141 b!1935142) bm!119041))

(assert (= (and d!590427 (not res!865258)) b!1935134))

(assert (= (and b!1935134 res!865261) b!1935136))

(assert (= (and b!1935136 res!865264) b!1935135))

(assert (= (and b!1935135 res!865262) b!1935138))

(assert (= (and b!1935138 res!865259) b!1935137))

(assert (= (and b!1935137 res!865260) b!1935140))

(assert (= (and b!1935140 res!865263) b!1935139))

(declare-fun m!2374685 () Bool)

(assert (=> b!1935140 m!2374685))

(declare-fun m!2374687 () Bool)

(assert (=> b!1935140 m!2374687))

(assert (=> b!1935140 m!2374687))

(declare-fun m!2374689 () Bool)

(assert (=> b!1935140 m!2374689))

(assert (=> b!1935140 m!2374689))

(declare-fun m!2374691 () Bool)

(assert (=> b!1935140 m!2374691))

(assert (=> b!1935136 m!2374685))

(assert (=> b!1935136 m!2374687))

(assert (=> b!1935136 m!2374687))

(assert (=> b!1935136 m!2374689))

(declare-fun m!2374693 () Bool)

(assert (=> d!590427 m!2374693))

(assert (=> d!590427 m!2372767))

(assert (=> d!590427 m!2372767))

(declare-fun m!2374695 () Bool)

(assert (=> d!590427 m!2374695))

(assert (=> d!590427 m!2372767))

(assert (=> d!590427 m!2372767))

(declare-fun m!2374697 () Bool)

(assert (=> d!590427 m!2374697))

(assert (=> d!590427 m!2372609))

(assert (=> b!1935142 m!2372767))

(declare-fun m!2374699 () Bool)

(assert (=> b!1935142 m!2374699))

(assert (=> b!1935137 m!2374685))

(declare-fun m!2374701 () Bool)

(assert (=> b!1935137 m!2374701))

(assert (=> b!1935137 m!2374701))

(declare-fun m!2374703 () Bool)

(assert (=> b!1935137 m!2374703))

(declare-fun m!2374705 () Bool)

(assert (=> b!1935134 m!2374705))

(assert (=> bm!119041 m!2372767))

(declare-fun m!2374707 () Bool)

(assert (=> bm!119041 m!2374707))

(assert (=> b!1935139 m!2374685))

(declare-fun m!2374709 () Bool)

(assert (=> b!1935139 m!2374709))

(assert (=> b!1935138 m!2374685))

(assert (=> b!1935138 m!2374687))

(assert (=> b!1935138 m!2374687))

(assert (=> b!1935138 m!2374689))

(assert (=> b!1935138 m!2374689))

(declare-fun m!2374711 () Bool)

(assert (=> b!1935138 m!2374711))

(assert (=> b!1935135 m!2374685))

(declare-fun m!2374713 () Bool)

(assert (=> b!1935135 m!2374713))

(assert (=> b!1935135 m!2372767))

(declare-fun m!2374715 () Bool)

(assert (=> b!1935135 m!2374715))

(assert (=> b!1933975 d!590427))

(declare-fun d!590429 () Bool)

(declare-fun lt!741879 () BalanceConc!14500)

(assert (=> d!590429 (= (list!8905 lt!741879) (originalCharacters!4751 (h!27386 (t!180606 tokens!598))))))

(assert (=> d!590429 (= lt!741879 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (value!123995 (h!27386 (t!180606 tokens!598)))))))

(assert (=> d!590429 (= (charsOf!2484 (h!27386 (t!180606 tokens!598))) lt!741879)))

(declare-fun b_lambda!64411 () Bool)

(assert (=> (not b_lambda!64411) (not d!590429)))

(declare-fun t!180839 () Bool)

(declare-fun tb!119095 () Bool)

(assert (=> (and b!1934238 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598)))))) t!180839) tb!119095))

(declare-fun b!1935143 () Bool)

(declare-fun e!1236884 () Bool)

(declare-fun tp!551936 () Bool)

(assert (=> b!1935143 (= e!1236884 (and (inv!29081 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (value!123995 (h!27386 (t!180606 tokens!598)))))) tp!551936))))

(declare-fun result!143790 () Bool)

(assert (=> tb!119095 (= result!143790 (and (inv!29082 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (value!123995 (h!27386 (t!180606 tokens!598))))) e!1236884))))

(assert (= tb!119095 b!1935143))

(declare-fun m!2374717 () Bool)

(assert (=> b!1935143 m!2374717))

(declare-fun m!2374719 () Bool)

(assert (=> tb!119095 m!2374719))

(assert (=> d!590429 t!180839))

(declare-fun b_and!152503 () Bool)

(assert (= b_and!152493 (and (=> t!180839 result!143790) b_and!152503)))

(declare-fun t!180841 () Bool)

(declare-fun tb!119097 () Bool)

(assert (=> (and b!1934216 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598)))))) t!180841) tb!119097))

(declare-fun result!143792 () Bool)

(assert (= result!143792 result!143790))

(assert (=> d!590429 t!180841))

(declare-fun b_and!152505 () Bool)

(assert (= b_and!152501 (and (=> t!180841 result!143792) b_and!152505)))

(declare-fun tb!119099 () Bool)

(declare-fun t!180843 () Bool)

(assert (=> (and b!1933518 (= (toChars!5444 (transformation!3944 (h!27385 rules!3198))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598)))))) t!180843) tb!119099))

(declare-fun result!143794 () Bool)

(assert (= result!143794 result!143790))

(assert (=> d!590429 t!180843))

(declare-fun b_and!152507 () Bool)

(assert (= b_and!152497 (and (=> t!180843 result!143794) b_and!152507)))

(declare-fun tb!119101 () Bool)

(declare-fun t!180845 () Bool)

(assert (=> (and b!1933531 (= (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598)))))) t!180845) tb!119101))

(declare-fun result!143796 () Bool)

(assert (= result!143796 result!143790))

(assert (=> d!590429 t!180845))

(declare-fun b_and!152509 () Bool)

(assert (= b_and!152495 (and (=> t!180845 result!143796) b_and!152509)))

(declare-fun t!180847 () Bool)

(declare-fun tb!119103 () Bool)

(assert (=> (and b!1933530 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598)))))) t!180847) tb!119103))

(declare-fun result!143798 () Bool)

(assert (= result!143798 result!143790))

(assert (=> d!590429 t!180847))

(declare-fun b_and!152511 () Bool)

(assert (= b_and!152499 (and (=> t!180847 result!143798) b_and!152511)))

(declare-fun m!2374721 () Bool)

(assert (=> d!590429 m!2374721))

(declare-fun m!2374723 () Bool)

(assert (=> d!590429 m!2374723))

(assert (=> b!1933975 d!590429))

(declare-fun b!1935144 () Bool)

(declare-fun e!1236885 () List!22064)

(assert (=> b!1935144 (= e!1236885 lt!741377)))

(declare-fun b!1935146 () Bool)

(declare-fun res!865266 () Bool)

(declare-fun e!1236886 () Bool)

(assert (=> b!1935146 (=> (not res!865266) (not e!1236886))))

(declare-fun lt!741880 () List!22064)

(assert (=> b!1935146 (= res!865266 (= (size!17151 lt!741880) (+ (size!17151 (list!8905 (charsOf!2484 (h!27386 (t!180606 tokens!598))))) (size!17151 lt!741377))))))

(declare-fun d!590431 () Bool)

(assert (=> d!590431 e!1236886))

(declare-fun res!865265 () Bool)

(assert (=> d!590431 (=> (not res!865265) (not e!1236886))))

(assert (=> d!590431 (= res!865265 (= (content!3187 lt!741880) ((_ map or) (content!3187 (list!8905 (charsOf!2484 (h!27386 (t!180606 tokens!598))))) (content!3187 lt!741377))))))

(assert (=> d!590431 (= lt!741880 e!1236885)))

(declare-fun c!314851 () Bool)

(assert (=> d!590431 (= c!314851 ((_ is Nil!21982) (list!8905 (charsOf!2484 (h!27386 (t!180606 tokens!598))))))))

(assert (=> d!590431 (= (++!5905 (list!8905 (charsOf!2484 (h!27386 (t!180606 tokens!598)))) lt!741377) lt!741880)))

(declare-fun b!1935145 () Bool)

(assert (=> b!1935145 (= e!1236885 (Cons!21982 (h!27383 (list!8905 (charsOf!2484 (h!27386 (t!180606 tokens!598))))) (++!5905 (t!180603 (list!8905 (charsOf!2484 (h!27386 (t!180606 tokens!598))))) lt!741377)))))

(declare-fun b!1935147 () Bool)

(assert (=> b!1935147 (= e!1236886 (or (not (= lt!741377 Nil!21982)) (= lt!741880 (list!8905 (charsOf!2484 (h!27386 (t!180606 tokens!598)))))))))

(assert (= (and d!590431 c!314851) b!1935144))

(assert (= (and d!590431 (not c!314851)) b!1935145))

(assert (= (and d!590431 res!865265) b!1935146))

(assert (= (and b!1935146 res!865266) b!1935147))

(declare-fun m!2374725 () Bool)

(assert (=> b!1935146 m!2374725))

(assert (=> b!1935146 m!2372773))

(declare-fun m!2374727 () Bool)

(assert (=> b!1935146 m!2374727))

(declare-fun m!2374729 () Bool)

(assert (=> b!1935146 m!2374729))

(declare-fun m!2374731 () Bool)

(assert (=> d!590431 m!2374731))

(assert (=> d!590431 m!2372773))

(declare-fun m!2374733 () Bool)

(assert (=> d!590431 m!2374733))

(declare-fun m!2374735 () Bool)

(assert (=> d!590431 m!2374735))

(declare-fun m!2374737 () Bool)

(assert (=> b!1935145 m!2374737))

(assert (=> b!1933975 d!590431))

(declare-fun bs!415304 () Bool)

(declare-fun b!1935155 () Bool)

(assert (= bs!415304 (and b!1935155 b!1933516)))

(declare-fun lambda!75427 () Int)

(assert (=> bs!415304 (not (= lambda!75427 lambda!75371))))

(declare-fun bs!415305 () Bool)

(assert (= bs!415305 (and b!1935155 b!1933975)))

(assert (=> bs!415305 (= lambda!75427 lambda!75389)))

(declare-fun bs!415306 () Bool)

(assert (= bs!415306 (and b!1935155 d!589835)))

(assert (=> bs!415306 (= lambda!75427 lambda!75395)))

(declare-fun bs!415307 () Bool)

(assert (= bs!415307 (and b!1935155 d!590141)))

(assert (=> bs!415307 (= lambda!75427 lambda!75414)))

(declare-fun b!1935158 () Bool)

(declare-fun e!1236893 () Bool)

(assert (=> b!1935158 (= e!1236893 true)))

(declare-fun b!1935157 () Bool)

(declare-fun e!1236892 () Bool)

(assert (=> b!1935157 (= e!1236892 e!1236893)))

(declare-fun b!1935156 () Bool)

(declare-fun e!1236891 () Bool)

(assert (=> b!1935156 (= e!1236891 e!1236892)))

(assert (=> b!1935155 e!1236891))

(assert (= b!1935157 b!1935158))

(assert (= b!1935156 b!1935157))

(assert (= (and b!1935155 ((_ is Cons!21984) rules!3198)) b!1935156))

(assert (=> b!1935158 (< (dynLambda!10697 order!13847 (toValue!5585 (transformation!3944 (h!27385 rules!3198)))) (dynLambda!10703 order!13855 lambda!75427))))

(assert (=> b!1935158 (< (dynLambda!10699 order!13851 (toChars!5444 (transformation!3944 (h!27385 rules!3198)))) (dynLambda!10703 order!13855 lambda!75427))))

(assert (=> b!1935155 true))

(declare-fun bm!119042 () Bool)

(declare-fun c!314854 () Bool)

(declare-fun c!314853 () Bool)

(assert (=> bm!119042 (= c!314854 c!314853)))

(declare-fun lt!741886 () List!22064)

(declare-fun e!1236887 () List!22064)

(declare-fun call!119049 () List!22064)

(declare-fun call!119047 () List!22064)

(assert (=> bm!119042 (= call!119047 (++!5905 e!1236887 (ite c!314853 lt!741886 call!119049)))))

(declare-fun bm!119044 () Bool)

(declare-fun call!119048 () BalanceConc!14500)

(declare-fun call!119051 () BalanceConc!14500)

(assert (=> bm!119044 (= call!119048 call!119051)))

(declare-fun b!1935148 () Bool)

(assert (=> b!1935148 (= e!1236887 (list!8905 (charsOf!2484 (h!27386 (t!180606 (t!180606 tokens!598))))))))

(declare-fun c!314852 () Bool)

(declare-fun bm!119045 () Bool)

(assert (=> bm!119045 (= call!119051 (charsOf!2484 (ite c!314853 (h!27386 (t!180606 (t!180606 tokens!598))) (ite c!314852 separatorToken!354 (h!27386 (t!180606 (t!180606 tokens!598)))))))))

(declare-fun b!1935149 () Bool)

(declare-fun e!1236889 () List!22064)

(assert (=> b!1935149 (= e!1236889 Nil!21982)))

(assert (=> b!1935149 (= (print!1527 thiss!23328 (singletonSeq!1928 (h!27386 (t!180606 (t!180606 tokens!598))))) (printTailRec!1033 thiss!23328 (singletonSeq!1928 (h!27386 (t!180606 (t!180606 tokens!598)))) 0 (BalanceConc!14501 Empty!7342)))))

(declare-fun lt!741885 () Unit!36346)

(declare-fun Unit!36358 () Unit!36346)

(assert (=> b!1935149 (= lt!741885 Unit!36358)))

(declare-fun lt!741883 () Unit!36346)

(assert (=> b!1935149 (= lt!741883 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!751 thiss!23328 rules!3198 call!119049 lt!741886))))

(assert (=> b!1935149 false))

(declare-fun lt!741884 () Unit!36346)

(declare-fun Unit!36359 () Unit!36346)

(assert (=> b!1935149 (= lt!741884 Unit!36359)))

(declare-fun b!1935150 () Bool)

(declare-fun e!1236890 () List!22064)

(assert (=> b!1935150 (= e!1236890 call!119047)))

(declare-fun b!1935151 () Bool)

(declare-fun call!119050 () List!22064)

(assert (=> b!1935151 (= e!1236887 call!119050)))

(declare-fun b!1935152 () Bool)

(assert (=> b!1935152 (= e!1236889 (++!5905 call!119047 lt!741886))))

(declare-fun b!1935153 () Bool)

(declare-fun e!1236888 () List!22064)

(assert (=> b!1935153 (= e!1236888 Nil!21982)))

(declare-fun bm!119046 () Bool)

(assert (=> bm!119046 (= call!119049 call!119050)))

(declare-fun bm!119043 () Bool)

(assert (=> bm!119043 (= call!119050 (list!8905 (ite c!314853 call!119051 call!119048)))))

(declare-fun d!590433 () Bool)

(declare-fun c!314855 () Bool)

(assert (=> d!590433 (= c!314855 ((_ is Cons!21985) (t!180606 (t!180606 tokens!598))))))

(assert (=> d!590433 (= (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 (t!180606 tokens!598)) separatorToken!354) e!1236888)))

(declare-fun b!1935154 () Bool)

(declare-fun lt!741881 () Option!4566)

(assert (=> b!1935154 (= c!314852 (and ((_ is Some!4565) lt!741881) (not (= (_1!11772 (v!26680 lt!741881)) (h!27386 (t!180606 (t!180606 tokens!598)))))))))

(assert (=> b!1935154 (= e!1236890 e!1236889)))

(assert (=> b!1935155 (= e!1236888 e!1236890)))

(declare-fun lt!741882 () Unit!36346)

(assert (=> b!1935155 (= lt!741882 (forallContained!720 (t!180606 (t!180606 tokens!598)) lambda!75427 (h!27386 (t!180606 (t!180606 tokens!598)))))))

(assert (=> b!1935155 (= lt!741886 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 (t!180606 (t!180606 tokens!598))) separatorToken!354))))

(assert (=> b!1935155 (= lt!741881 (maxPrefix!1995 thiss!23328 rules!3198 (++!5905 (list!8905 (charsOf!2484 (h!27386 (t!180606 (t!180606 tokens!598))))) lt!741886)))))

(assert (=> b!1935155 (= c!314853 (and ((_ is Some!4565) lt!741881) (= (_1!11772 (v!26680 lt!741881)) (h!27386 (t!180606 (t!180606 tokens!598))))))))

(assert (= (and d!590433 c!314855) b!1935155))

(assert (= (and d!590433 (not c!314855)) b!1935153))

(assert (= (and b!1935155 c!314853) b!1935150))

(assert (= (and b!1935155 (not c!314853)) b!1935154))

(assert (= (and b!1935154 c!314852) b!1935152))

(assert (= (and b!1935154 (not c!314852)) b!1935149))

(assert (= (or b!1935152 b!1935149) bm!119044))

(assert (= (or b!1935152 b!1935149) bm!119046))

(assert (= (or b!1935150 bm!119044) bm!119045))

(assert (= (or b!1935150 bm!119046) bm!119043))

(assert (= (or b!1935150 b!1935152) bm!119042))

(assert (= (and bm!119042 c!314854) b!1935151))

(assert (= (and bm!119042 (not c!314854)) b!1935148))

(declare-fun m!2374739 () Bool)

(assert (=> b!1935155 m!2374739))

(declare-fun m!2374741 () Bool)

(assert (=> b!1935155 m!2374741))

(declare-fun m!2374743 () Bool)

(assert (=> b!1935155 m!2374743))

(declare-fun m!2374745 () Bool)

(assert (=> b!1935155 m!2374745))

(assert (=> b!1935155 m!2374743))

(declare-fun m!2374747 () Bool)

(assert (=> b!1935155 m!2374747))

(declare-fun m!2374749 () Bool)

(assert (=> b!1935155 m!2374749))

(assert (=> b!1935155 m!2374745))

(assert (=> b!1935155 m!2374739))

(declare-fun m!2374751 () Bool)

(assert (=> bm!119043 m!2374751))

(declare-fun m!2374753 () Bool)

(assert (=> bm!119042 m!2374753))

(declare-fun m!2374755 () Bool)

(assert (=> b!1935152 m!2374755))

(declare-fun m!2374757 () Bool)

(assert (=> b!1935149 m!2374757))

(assert (=> b!1935149 m!2374757))

(declare-fun m!2374759 () Bool)

(assert (=> b!1935149 m!2374759))

(assert (=> b!1935149 m!2374757))

(declare-fun m!2374761 () Bool)

(assert (=> b!1935149 m!2374761))

(declare-fun m!2374763 () Bool)

(assert (=> b!1935149 m!2374763))

(assert (=> b!1935148 m!2374743))

(assert (=> b!1935148 m!2374743))

(assert (=> b!1935148 m!2374745))

(declare-fun m!2374765 () Bool)

(assert (=> bm!119045 m!2374765))

(assert (=> b!1933975 d!590433))

(declare-fun d!590435 () Bool)

(assert (=> d!590435 (= (list!8905 (charsOf!2484 (h!27386 (t!180606 tokens!598)))) (list!8908 (c!314508 (charsOf!2484 (h!27386 (t!180606 tokens!598))))))))

(declare-fun bs!415308 () Bool)

(assert (= bs!415308 d!590435))

(declare-fun m!2374767 () Bool)

(assert (=> bs!415308 m!2374767))

(assert (=> b!1933975 d!590435))

(declare-fun d!590437 () Bool)

(declare-fun res!865267 () Bool)

(declare-fun e!1236894 () Bool)

(assert (=> d!590437 (=> (not res!865267) (not e!1236894))))

(assert (=> d!590437 (= res!865267 (rulesValid!1460 thiss!23328 (t!180605 rules!3198)))))

(assert (=> d!590437 (= (rulesInvariant!3164 thiss!23328 (t!180605 rules!3198)) e!1236894)))

(declare-fun b!1935159 () Bool)

(assert (=> b!1935159 (= e!1236894 (noDuplicateTag!1458 thiss!23328 (t!180605 rules!3198) Nil!21987))))

(assert (= (and d!590437 res!865267) b!1935159))

(declare-fun m!2374769 () Bool)

(assert (=> d!590437 m!2374769))

(declare-fun m!2374771 () Bool)

(assert (=> b!1935159 m!2374771))

(assert (=> b!1933900 d!590437))

(declare-fun d!590439 () Bool)

(assert (=> d!590439 (rulesInvariant!3164 thiss!23328 (t!180605 rules!3198))))

(declare-fun lt!741889 () Unit!36346)

(declare-fun choose!12024 (LexerInterface!3557 Rule!7688 List!22066) Unit!36346)

(assert (=> d!590439 (= lt!741889 (choose!12024 thiss!23328 (h!27385 rules!3198) (t!180605 rules!3198)))))

(assert (=> d!590439 (rulesInvariant!3164 thiss!23328 (Cons!21984 (h!27385 rules!3198) (t!180605 rules!3198)))))

(assert (=> d!590439 (= (lemmaInvariantOnRulesThenOnTail!278 thiss!23328 (h!27385 rules!3198) (t!180605 rules!3198)) lt!741889)))

(declare-fun bs!415309 () Bool)

(assert (= bs!415309 d!590439))

(assert (=> bs!415309 m!2372639))

(declare-fun m!2374773 () Bool)

(assert (=> bs!415309 m!2374773))

(declare-fun m!2374775 () Bool)

(assert (=> bs!415309 m!2374775))

(assert (=> b!1933900 d!590439))

(declare-fun b!1935160 () Bool)

(declare-fun e!1236895 () Option!4565)

(assert (=> b!1935160 (= e!1236895 None!4564)))

(declare-fun d!590441 () Bool)

(declare-fun e!1236896 () Bool)

(assert (=> d!590441 e!1236896))

(declare-fun res!865269 () Bool)

(assert (=> d!590441 (=> res!865269 e!1236896)))

(declare-fun lt!741890 () Option!4565)

(assert (=> d!590441 (= res!865269 (isEmpty!13574 lt!741890))))

(declare-fun e!1236897 () Option!4565)

(assert (=> d!590441 (= lt!741890 e!1236897)))

(declare-fun c!314856 () Bool)

(assert (=> d!590441 (= c!314856 (and ((_ is Cons!21984) (t!180605 rules!3198)) (= (tag!4398 (h!27385 (t!180605 rules!3198))) (tag!4398 (rule!6153 separatorToken!354)))))))

(assert (=> d!590441 (rulesInvariant!3164 thiss!23328 (t!180605 rules!3198))))

(assert (=> d!590441 (= (getRuleFromTag!765 thiss!23328 (t!180605 rules!3198) (tag!4398 (rule!6153 separatorToken!354))) lt!741890)))

(declare-fun b!1935161 () Bool)

(assert (=> b!1935161 (= e!1236897 (Some!4564 (h!27385 (t!180605 rules!3198))))))

(declare-fun b!1935162 () Bool)

(declare-fun lt!741891 () Unit!36346)

(declare-fun lt!741892 () Unit!36346)

(assert (=> b!1935162 (= lt!741891 lt!741892)))

(assert (=> b!1935162 (rulesInvariant!3164 thiss!23328 (t!180605 (t!180605 rules!3198)))))

(assert (=> b!1935162 (= lt!741892 (lemmaInvariantOnRulesThenOnTail!278 thiss!23328 (h!27385 (t!180605 rules!3198)) (t!180605 (t!180605 rules!3198))))))

(assert (=> b!1935162 (= e!1236895 (getRuleFromTag!765 thiss!23328 (t!180605 (t!180605 rules!3198)) (tag!4398 (rule!6153 separatorToken!354))))))

(declare-fun b!1935163 () Bool)

(declare-fun e!1236898 () Bool)

(assert (=> b!1935163 (= e!1236898 (= (tag!4398 (get!6932 lt!741890)) (tag!4398 (rule!6153 separatorToken!354))))))

(declare-fun b!1935164 () Bool)

(assert (=> b!1935164 (= e!1236896 e!1236898)))

(declare-fun res!865268 () Bool)

(assert (=> b!1935164 (=> (not res!865268) (not e!1236898))))

(assert (=> b!1935164 (= res!865268 (contains!3983 (t!180605 rules!3198) (get!6932 lt!741890)))))

(declare-fun b!1935165 () Bool)

(assert (=> b!1935165 (= e!1236897 e!1236895)))

(declare-fun c!314857 () Bool)

(assert (=> b!1935165 (= c!314857 (and ((_ is Cons!21984) (t!180605 rules!3198)) (not (= (tag!4398 (h!27385 (t!180605 rules!3198))) (tag!4398 (rule!6153 separatorToken!354))))))))

(assert (= (and d!590441 c!314856) b!1935161))

(assert (= (and d!590441 (not c!314856)) b!1935165))

(assert (= (and b!1935165 c!314857) b!1935162))

(assert (= (and b!1935165 (not c!314857)) b!1935160))

(assert (= (and d!590441 (not res!865269)) b!1935164))

(assert (= (and b!1935164 res!865268) b!1935163))

(declare-fun m!2374777 () Bool)

(assert (=> d!590441 m!2374777))

(assert (=> d!590441 m!2372639))

(declare-fun m!2374779 () Bool)

(assert (=> b!1935162 m!2374779))

(declare-fun m!2374781 () Bool)

(assert (=> b!1935162 m!2374781))

(declare-fun m!2374783 () Bool)

(assert (=> b!1935162 m!2374783))

(declare-fun m!2374785 () Bool)

(assert (=> b!1935163 m!2374785))

(assert (=> b!1935164 m!2374785))

(assert (=> b!1935164 m!2374785))

(declare-fun m!2374787 () Bool)

(assert (=> b!1935164 m!2374787))

(assert (=> b!1933900 d!590441))

(declare-fun d!590443 () Bool)

(assert (=> d!590443 (= (isEmpty!13567 lt!741158) ((_ is Nil!21982) lt!741158))))

(assert (=> d!589651 d!590443))

(declare-fun bm!119047 () Bool)

(declare-fun call!119052 () Bool)

(declare-fun c!314859 () Bool)

(assert (=> bm!119047 (= call!119052 (validRegex!2142 (ite c!314859 (regTwo!11251 (regex!3944 lt!741169)) (regTwo!11250 (regex!3944 lt!741169)))))))

(declare-fun b!1935167 () Bool)

(declare-fun res!865274 () Bool)

(declare-fun e!1236900 () Bool)

(assert (=> b!1935167 (=> (not res!865274) (not e!1236900))))

(declare-fun call!119053 () Bool)

(assert (=> b!1935167 (= res!865274 call!119053)))

(declare-fun e!1236905 () Bool)

(assert (=> b!1935167 (= e!1236905 e!1236900)))

(declare-fun b!1935168 () Bool)

(declare-fun e!1236904 () Bool)

(declare-fun e!1236902 () Bool)

(assert (=> b!1935168 (= e!1236904 e!1236902)))

(declare-fun res!865270 () Bool)

(assert (=> b!1935168 (=> (not res!865270) (not e!1236902))))

(assert (=> b!1935168 (= res!865270 call!119053)))

(declare-fun b!1935169 () Bool)

(declare-fun res!865272 () Bool)

(assert (=> b!1935169 (=> res!865272 e!1236904)))

(assert (=> b!1935169 (= res!865272 (not ((_ is Concat!9450) (regex!3944 lt!741169))))))

(assert (=> b!1935169 (= e!1236905 e!1236904)))

(declare-fun b!1935170 () Bool)

(declare-fun e!1236899 () Bool)

(declare-fun e!1236901 () Bool)

(assert (=> b!1935170 (= e!1236899 e!1236901)))

(declare-fun c!314858 () Bool)

(assert (=> b!1935170 (= c!314858 ((_ is Star!5369) (regex!3944 lt!741169)))))

(declare-fun call!119054 () Bool)

(declare-fun bm!119048 () Bool)

(assert (=> bm!119048 (= call!119054 (validRegex!2142 (ite c!314858 (reg!5698 (regex!3944 lt!741169)) (ite c!314859 (regOne!11251 (regex!3944 lt!741169)) (regOne!11250 (regex!3944 lt!741169))))))))

(declare-fun b!1935171 () Bool)

(assert (=> b!1935171 (= e!1236902 call!119052)))

(declare-fun b!1935172 () Bool)

(declare-fun e!1236903 () Bool)

(assert (=> b!1935172 (= e!1236901 e!1236903)))

(declare-fun res!865273 () Bool)

(assert (=> b!1935172 (= res!865273 (not (nullable!1616 (reg!5698 (regex!3944 lt!741169)))))))

(assert (=> b!1935172 (=> (not res!865273) (not e!1236903))))

(declare-fun b!1935173 () Bool)

(assert (=> b!1935173 (= e!1236901 e!1236905)))

(assert (=> b!1935173 (= c!314859 ((_ is Union!5369) (regex!3944 lt!741169)))))

(declare-fun b!1935174 () Bool)

(assert (=> b!1935174 (= e!1236900 call!119052)))

(declare-fun bm!119049 () Bool)

(assert (=> bm!119049 (= call!119053 call!119054)))

(declare-fun b!1935166 () Bool)

(assert (=> b!1935166 (= e!1236903 call!119054)))

(declare-fun d!590445 () Bool)

(declare-fun res!865271 () Bool)

(assert (=> d!590445 (=> res!865271 e!1236899)))

(assert (=> d!590445 (= res!865271 ((_ is ElementMatch!5369) (regex!3944 lt!741169)))))

(assert (=> d!590445 (= (validRegex!2142 (regex!3944 lt!741169)) e!1236899)))

(assert (= (and d!590445 (not res!865271)) b!1935170))

(assert (= (and b!1935170 c!314858) b!1935172))

(assert (= (and b!1935170 (not c!314858)) b!1935173))

(assert (= (and b!1935172 res!865273) b!1935166))

(assert (= (and b!1935173 c!314859) b!1935167))

(assert (= (and b!1935173 (not c!314859)) b!1935169))

(assert (= (and b!1935167 res!865274) b!1935174))

(assert (= (and b!1935169 (not res!865272)) b!1935168))

(assert (= (and b!1935168 res!865270) b!1935171))

(assert (= (or b!1935167 b!1935168) bm!119049))

(assert (= (or b!1935174 b!1935171) bm!119047))

(assert (= (or b!1935166 bm!119049) bm!119048))

(declare-fun m!2374789 () Bool)

(assert (=> bm!119047 m!2374789))

(declare-fun m!2374791 () Bool)

(assert (=> bm!119048 m!2374791))

(declare-fun m!2374793 () Bool)

(assert (=> b!1935172 m!2374793))

(assert (=> d!589651 d!590445))

(declare-fun b!1935175 () Bool)

(declare-fun e!1236909 () Bool)

(declare-fun e!1236906 () Bool)

(assert (=> b!1935175 (= e!1236909 e!1236906)))

(declare-fun res!865277 () Bool)

(assert (=> b!1935175 (=> (not res!865277) (not e!1236906))))

(declare-fun lt!741893 () Bool)

(assert (=> b!1935175 (= res!865277 (not lt!741893))))

(declare-fun b!1935176 () Bool)

(declare-fun res!865282 () Bool)

(assert (=> b!1935176 (=> res!865282 e!1236909)))

(assert (=> b!1935176 (= res!865282 (not ((_ is ElementMatch!5369) (derivativeStep!1375 (regex!3944 lt!741162) (head!4509 lt!741174)))))))

(declare-fun e!1236907 () Bool)

(assert (=> b!1935176 (= e!1236907 e!1236909)))

(declare-fun bm!119050 () Bool)

(declare-fun call!119055 () Bool)

(assert (=> bm!119050 (= call!119055 (isEmpty!13567 (tail!2995 lt!741174)))))

(declare-fun b!1935177 () Bool)

(declare-fun e!1236908 () Bool)

(assert (=> b!1935177 (= e!1236908 (matchR!2637 (derivativeStep!1375 (derivativeStep!1375 (regex!3944 lt!741162) (head!4509 lt!741174)) (head!4509 (tail!2995 lt!741174))) (tail!2995 (tail!2995 lt!741174))))))

(declare-fun b!1935178 () Bool)

(declare-fun res!865280 () Bool)

(declare-fun e!1236911 () Bool)

(assert (=> b!1935178 (=> (not res!865280) (not e!1236911))))

(assert (=> b!1935178 (= res!865280 (isEmpty!13567 (tail!2995 (tail!2995 lt!741174))))))

(declare-fun b!1935179 () Bool)

(declare-fun e!1236910 () Bool)

(assert (=> b!1935179 (= e!1236910 (= lt!741893 call!119055))))

(declare-fun b!1935180 () Bool)

(declare-fun res!865279 () Bool)

(assert (=> b!1935180 (=> (not res!865279) (not e!1236911))))

(assert (=> b!1935180 (= res!865279 (not call!119055))))

(declare-fun b!1935182 () Bool)

(declare-fun res!865276 () Bool)

(declare-fun e!1236912 () Bool)

(assert (=> b!1935182 (=> res!865276 e!1236912)))

(assert (=> b!1935182 (= res!865276 (not (isEmpty!13567 (tail!2995 (tail!2995 lt!741174)))))))

(declare-fun b!1935183 () Bool)

(assert (=> b!1935183 (= e!1236908 (nullable!1616 (derivativeStep!1375 (regex!3944 lt!741162) (head!4509 lt!741174))))))

(declare-fun b!1935184 () Bool)

(assert (=> b!1935184 (= e!1236911 (= (head!4509 (tail!2995 lt!741174)) (c!314509 (derivativeStep!1375 (regex!3944 lt!741162) (head!4509 lt!741174)))))))

(declare-fun d!590447 () Bool)

(assert (=> d!590447 e!1236910))

(declare-fun c!314861 () Bool)

(assert (=> d!590447 (= c!314861 ((_ is EmptyExpr!5369) (derivativeStep!1375 (regex!3944 lt!741162) (head!4509 lt!741174))))))

(assert (=> d!590447 (= lt!741893 e!1236908)))

(declare-fun c!314862 () Bool)

(assert (=> d!590447 (= c!314862 (isEmpty!13567 (tail!2995 lt!741174)))))

(assert (=> d!590447 (validRegex!2142 (derivativeStep!1375 (regex!3944 lt!741162) (head!4509 lt!741174)))))

(assert (=> d!590447 (= (matchR!2637 (derivativeStep!1375 (regex!3944 lt!741162) (head!4509 lt!741174)) (tail!2995 lt!741174)) lt!741893)))

(declare-fun b!1935181 () Bool)

(assert (=> b!1935181 (= e!1236912 (not (= (head!4509 (tail!2995 lt!741174)) (c!314509 (derivativeStep!1375 (regex!3944 lt!741162) (head!4509 lt!741174))))))))

(declare-fun b!1935185 () Bool)

(assert (=> b!1935185 (= e!1236907 (not lt!741893))))

(declare-fun b!1935186 () Bool)

(assert (=> b!1935186 (= e!1236910 e!1236907)))

(declare-fun c!314860 () Bool)

(assert (=> b!1935186 (= c!314860 ((_ is EmptyLang!5369) (derivativeStep!1375 (regex!3944 lt!741162) (head!4509 lt!741174))))))

(declare-fun b!1935187 () Bool)

(assert (=> b!1935187 (= e!1236906 e!1236912)))

(declare-fun res!865281 () Bool)

(assert (=> b!1935187 (=> res!865281 e!1236912)))

(assert (=> b!1935187 (= res!865281 call!119055)))

(declare-fun b!1935188 () Bool)

(declare-fun res!865275 () Bool)

(assert (=> b!1935188 (=> res!865275 e!1236909)))

(assert (=> b!1935188 (= res!865275 e!1236911)))

(declare-fun res!865278 () Bool)

(assert (=> b!1935188 (=> (not res!865278) (not e!1236911))))

(assert (=> b!1935188 (= res!865278 lt!741893)))

(assert (= (and d!590447 c!314862) b!1935183))

(assert (= (and d!590447 (not c!314862)) b!1935177))

(assert (= (and d!590447 c!314861) b!1935179))

(assert (= (and d!590447 (not c!314861)) b!1935186))

(assert (= (and b!1935186 c!314860) b!1935185))

(assert (= (and b!1935186 (not c!314860)) b!1935176))

(assert (= (and b!1935176 (not res!865282)) b!1935188))

(assert (= (and b!1935188 res!865278) b!1935180))

(assert (= (and b!1935180 res!865279) b!1935178))

(assert (= (and b!1935178 res!865280) b!1935184))

(assert (= (and b!1935188 (not res!865275)) b!1935175))

(assert (= (and b!1935175 res!865277) b!1935187))

(assert (= (and b!1935187 (not res!865281)) b!1935182))

(assert (= (and b!1935182 (not res!865276)) b!1935181))

(assert (= (or b!1935179 b!1935180 b!1935187) bm!119050))

(assert (=> b!1935182 m!2372981))

(declare-fun m!2374795 () Bool)

(assert (=> b!1935182 m!2374795))

(assert (=> b!1935182 m!2374795))

(declare-fun m!2374797 () Bool)

(assert (=> b!1935182 m!2374797))

(assert (=> b!1935177 m!2372981))

(declare-fun m!2374799 () Bool)

(assert (=> b!1935177 m!2374799))

(assert (=> b!1935177 m!2372987))

(assert (=> b!1935177 m!2374799))

(declare-fun m!2374801 () Bool)

(assert (=> b!1935177 m!2374801))

(assert (=> b!1935177 m!2372981))

(assert (=> b!1935177 m!2374795))

(assert (=> b!1935177 m!2374801))

(assert (=> b!1935177 m!2374795))

(declare-fun m!2374803 () Bool)

(assert (=> b!1935177 m!2374803))

(assert (=> d!590447 m!2372981))

(assert (=> d!590447 m!2372983))

(assert (=> d!590447 m!2372987))

(declare-fun m!2374805 () Bool)

(assert (=> d!590447 m!2374805))

(assert (=> b!1935184 m!2372981))

(assert (=> b!1935184 m!2374799))

(assert (=> bm!119050 m!2372981))

(assert (=> bm!119050 m!2372983))

(assert (=> b!1935178 m!2372981))

(assert (=> b!1935178 m!2374795))

(assert (=> b!1935178 m!2374795))

(assert (=> b!1935178 m!2374797))

(assert (=> b!1935183 m!2372987))

(declare-fun m!2374807 () Bool)

(assert (=> b!1935183 m!2374807))

(assert (=> b!1935181 m!2372981))

(assert (=> b!1935181 m!2374799))

(assert (=> b!1934165 d!590447))

(declare-fun b!1935189 () Bool)

(declare-fun c!314865 () Bool)

(assert (=> b!1935189 (= c!314865 (nullable!1616 (regOne!11250 (regex!3944 lt!741162))))))

(declare-fun e!1236913 () Regex!5369)

(declare-fun e!1236914 () Regex!5369)

(assert (=> b!1935189 (= e!1236913 e!1236914)))

(declare-fun b!1935190 () Bool)

(declare-fun call!119058 () Regex!5369)

(assert (=> b!1935190 (= e!1236913 (Concat!9450 call!119058 (regex!3944 lt!741162)))))

(declare-fun b!1935191 () Bool)

(declare-fun e!1236915 () Regex!5369)

(assert (=> b!1935191 (= e!1236915 (ite (= (head!4509 lt!741174) (c!314509 (regex!3944 lt!741162))) EmptyExpr!5369 EmptyLang!5369))))

(declare-fun b!1935192 () Bool)

(declare-fun c!314863 () Bool)

(assert (=> b!1935192 (= c!314863 ((_ is Union!5369) (regex!3944 lt!741162)))))

(declare-fun e!1236917 () Regex!5369)

(assert (=> b!1935192 (= e!1236915 e!1236917)))

(declare-fun b!1935193 () Bool)

(declare-fun e!1236916 () Regex!5369)

(assert (=> b!1935193 (= e!1236916 e!1236915)))

(declare-fun c!314867 () Bool)

(assert (=> b!1935193 (= c!314867 ((_ is ElementMatch!5369) (regex!3944 lt!741162)))))

(declare-fun call!119059 () Regex!5369)

(declare-fun call!119057 () Regex!5369)

(declare-fun b!1935194 () Bool)

(assert (=> b!1935194 (= e!1236914 (Union!5369 (Concat!9450 call!119059 (regTwo!11250 (regex!3944 lt!741162))) call!119057))))

(declare-fun bm!119051 () Bool)

(declare-fun call!119056 () Regex!5369)

(declare-fun c!314866 () Bool)

(assert (=> bm!119051 (= call!119056 (derivativeStep!1375 (ite c!314863 (regOne!11251 (regex!3944 lt!741162)) (ite c!314866 (reg!5698 (regex!3944 lt!741162)) (ite c!314865 (regTwo!11250 (regex!3944 lt!741162)) (regOne!11250 (regex!3944 lt!741162))))) (head!4509 lt!741174)))))

(declare-fun b!1935196 () Bool)

(assert (=> b!1935196 (= e!1236917 e!1236913)))

(assert (=> b!1935196 (= c!314866 ((_ is Star!5369) (regex!3944 lt!741162)))))

(declare-fun bm!119052 () Bool)

(assert (=> bm!119052 (= call!119057 call!119058)))

(declare-fun bm!119053 () Bool)

(assert (=> bm!119053 (= call!119059 (derivativeStep!1375 (ite c!314863 (regTwo!11251 (regex!3944 lt!741162)) (regOne!11250 (regex!3944 lt!741162))) (head!4509 lt!741174)))))

(declare-fun b!1935197 () Bool)

(assert (=> b!1935197 (= e!1236916 EmptyLang!5369)))

(declare-fun b!1935195 () Bool)

(assert (=> b!1935195 (= e!1236917 (Union!5369 call!119056 call!119059))))

(declare-fun d!590449 () Bool)

(declare-fun lt!741894 () Regex!5369)

(assert (=> d!590449 (validRegex!2142 lt!741894)))

(assert (=> d!590449 (= lt!741894 e!1236916)))

(declare-fun c!314864 () Bool)

(assert (=> d!590449 (= c!314864 (or ((_ is EmptyExpr!5369) (regex!3944 lt!741162)) ((_ is EmptyLang!5369) (regex!3944 lt!741162))))))

(assert (=> d!590449 (validRegex!2142 (regex!3944 lt!741162))))

(assert (=> d!590449 (= (derivativeStep!1375 (regex!3944 lt!741162) (head!4509 lt!741174)) lt!741894)))

(declare-fun b!1935198 () Bool)

(assert (=> b!1935198 (= e!1236914 (Union!5369 (Concat!9450 call!119057 (regTwo!11250 (regex!3944 lt!741162))) EmptyLang!5369))))

(declare-fun bm!119054 () Bool)

(assert (=> bm!119054 (= call!119058 call!119056)))

(assert (= (and d!590449 c!314864) b!1935197))

(assert (= (and d!590449 (not c!314864)) b!1935193))

(assert (= (and b!1935193 c!314867) b!1935191))

(assert (= (and b!1935193 (not c!314867)) b!1935192))

(assert (= (and b!1935192 c!314863) b!1935195))

(assert (= (and b!1935192 (not c!314863)) b!1935196))

(assert (= (and b!1935196 c!314866) b!1935190))

(assert (= (and b!1935196 (not c!314866)) b!1935189))

(assert (= (and b!1935189 c!314865) b!1935194))

(assert (= (and b!1935189 (not c!314865)) b!1935198))

(assert (= (or b!1935194 b!1935198) bm!119052))

(assert (= (or b!1935190 bm!119052) bm!119054))

(assert (= (or b!1935195 bm!119054) bm!119051))

(assert (= (or b!1935195 b!1935194) bm!119053))

(declare-fun m!2374809 () Bool)

(assert (=> b!1935189 m!2374809))

(assert (=> bm!119051 m!2372985))

(declare-fun m!2374811 () Bool)

(assert (=> bm!119051 m!2374811))

(assert (=> bm!119053 m!2372985))

(declare-fun m!2374813 () Bool)

(assert (=> bm!119053 m!2374813))

(declare-fun m!2374815 () Bool)

(assert (=> d!590449 m!2374815))

(assert (=> d!590449 m!2372993))

(assert (=> b!1934165 d!590449))

(assert (=> b!1934165 d!589971))

(assert (=> b!1934165 d!590007))

(declare-fun d!590451 () Bool)

(declare-fun dynLambda!10707 (Int BalanceConc!14500 BalanceConc!14500) Bool)

(assert (=> d!590451 (dynLambda!10707 lambda!75383 lt!741168 (seqFromList!2798 (originalCharacters!4751 (h!27386 tokens!598))))))

(declare-fun lt!741897 () Unit!36346)

(declare-fun choose!12025 (Int BalanceConc!14500 BalanceConc!14500) Unit!36346)

(assert (=> d!590451 (= lt!741897 (choose!12025 lambda!75383 lt!741168 (seqFromList!2798 (originalCharacters!4751 (h!27386 tokens!598)))))))

(assert (=> d!590451 (Forall2!629 lambda!75383)))

(assert (=> d!590451 (= (Forall2of!209 lambda!75383 lt!741168 (seqFromList!2798 (originalCharacters!4751 (h!27386 tokens!598)))) lt!741897)))

(declare-fun b_lambda!64413 () Bool)

(assert (=> (not b_lambda!64413) (not d!590451)))

(declare-fun bs!415310 () Bool)

(assert (= bs!415310 d!590451))

(assert (=> bs!415310 m!2372131))

(declare-fun m!2374817 () Bool)

(assert (=> bs!415310 m!2374817))

(assert (=> bs!415310 m!2372131))

(declare-fun m!2374819 () Bool)

(assert (=> bs!415310 m!2374819))

(declare-fun m!2374821 () Bool)

(assert (=> bs!415310 m!2374821))

(assert (=> d!589687 d!590451))

(assert (=> d!589687 d!589681))

(declare-fun d!590453 () Bool)

(assert (=> d!590453 (= (list!8905 (seqFromList!2798 (originalCharacters!4751 (h!27386 tokens!598)))) (list!8908 (c!314508 (seqFromList!2798 (originalCharacters!4751 (h!27386 tokens!598))))))))

(declare-fun bs!415311 () Bool)

(assert (= bs!415311 d!590453))

(declare-fun m!2374823 () Bool)

(assert (=> bs!415311 m!2374823))

(assert (=> d!589687 d!590453))

(declare-fun b!1935200 () Bool)

(declare-fun e!1236918 () List!22064)

(assert (=> b!1935200 (= e!1236918 lt!741377)))

(declare-fun b!1935202 () Bool)

(declare-fun res!865284 () Bool)

(declare-fun e!1236919 () Bool)

(assert (=> b!1935202 (=> (not res!865284) (not e!1236919))))

(declare-fun lt!741898 () List!22064)

(assert (=> b!1935202 (= res!865284 (= (size!17151 lt!741898) (+ (size!17151 call!118960) (size!17151 lt!741377))))))

(declare-fun d!590455 () Bool)

(assert (=> d!590455 e!1236919))

(declare-fun res!865283 () Bool)

(assert (=> d!590455 (=> (not res!865283) (not e!1236919))))

(assert (=> d!590455 (= res!865283 (= (content!3187 lt!741898) ((_ map or) (content!3187 call!118960) (content!3187 lt!741377))))))

(assert (=> d!590455 (= lt!741898 e!1236918)))

(declare-fun c!314868 () Bool)

(assert (=> d!590455 (= c!314868 ((_ is Nil!21982) call!118960))))

(assert (=> d!590455 (= (++!5905 call!118960 lt!741377) lt!741898)))

(declare-fun b!1935201 () Bool)

(assert (=> b!1935201 (= e!1236918 (Cons!21982 (h!27383 call!118960) (++!5905 (t!180603 call!118960) lt!741377)))))

(declare-fun b!1935203 () Bool)

(assert (=> b!1935203 (= e!1236919 (or (not (= lt!741377 Nil!21982)) (= lt!741898 call!118960)))))

(assert (= (and d!590455 c!314868) b!1935200))

(assert (= (and d!590455 (not c!314868)) b!1935201))

(assert (= (and d!590455 res!865283) b!1935202))

(assert (= (and b!1935202 res!865284) b!1935203))

(declare-fun m!2374825 () Bool)

(assert (=> b!1935202 m!2374825))

(declare-fun m!2374827 () Bool)

(assert (=> b!1935202 m!2374827))

(assert (=> b!1935202 m!2374729))

(declare-fun m!2374829 () Bool)

(assert (=> d!590455 m!2374829))

(declare-fun m!2374831 () Bool)

(assert (=> d!590455 m!2374831))

(assert (=> d!590455 m!2374735))

(declare-fun m!2374833 () Bool)

(assert (=> b!1935201 m!2374833))

(assert (=> b!1933972 d!590455))

(assert (=> b!1934169 d!589971))

(declare-fun d!590457 () Bool)

(declare-fun charsToBigInt!0 (List!22065 Int) Int)

(assert (=> d!590457 (= (inv!15 (value!123995 separatorToken!354)) (= (charsToBigInt!0 (text!29009 (value!123995 separatorToken!354)) 0) (value!123990 (value!123995 separatorToken!354))))))

(declare-fun bs!415312 () Bool)

(assert (= bs!415312 d!590457))

(declare-fun m!2374835 () Bool)

(assert (=> bs!415312 m!2374835))

(assert (=> b!1933648 d!590457))

(declare-fun d!590459 () Bool)

(assert (=> d!590459 (= (inv!29074 (tag!4398 (h!27385 (t!180605 rules!3198)))) (= (mod (str.len (value!123994 (tag!4398 (h!27385 (t!180605 rules!3198))))) 2) 0))))

(assert (=> b!1934215 d!590459))

(declare-fun d!590461 () Bool)

(declare-fun res!865285 () Bool)

(declare-fun e!1236920 () Bool)

(assert (=> d!590461 (=> (not res!865285) (not e!1236920))))

(assert (=> d!590461 (= res!865285 (semiInverseModEq!1573 (toChars!5444 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toValue!5585 (transformation!3944 (h!27385 (t!180605 rules!3198))))))))

(assert (=> d!590461 (= (inv!29078 (transformation!3944 (h!27385 (t!180605 rules!3198)))) e!1236920)))

(declare-fun b!1935204 () Bool)

(assert (=> b!1935204 (= e!1236920 (equivClasses!1500 (toChars!5444 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toValue!5585 (transformation!3944 (h!27385 (t!180605 rules!3198))))))))

(assert (= (and d!590461 res!865285) b!1935204))

(declare-fun m!2374837 () Bool)

(assert (=> d!590461 m!2374837))

(declare-fun m!2374839 () Bool)

(assert (=> b!1935204 m!2374839))

(assert (=> b!1934215 d!590461))

(declare-fun b!1935205 () Bool)

(declare-fun e!1236923 () Bool)

(assert (=> b!1935205 (= e!1236923 (inv!16 (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168)))))

(declare-fun b!1935206 () Bool)

(declare-fun res!865286 () Bool)

(declare-fun e!1236921 () Bool)

(assert (=> b!1935206 (=> res!865286 e!1236921)))

(assert (=> b!1935206 (= res!865286 (not ((_ is IntegerValue!12242) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168))))))

(declare-fun e!1236922 () Bool)

(assert (=> b!1935206 (= e!1236922 e!1236921)))

(declare-fun b!1935207 () Bool)

(assert (=> b!1935207 (= e!1236921 (inv!15 (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168)))))

(declare-fun d!590463 () Bool)

(declare-fun c!314869 () Bool)

(assert (=> d!590463 (= c!314869 ((_ is IntegerValue!12240) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168)))))

(assert (=> d!590463 (= (inv!21 (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168)) e!1236923)))

(declare-fun b!1935208 () Bool)

(assert (=> b!1935208 (= e!1236923 e!1236922)))

(declare-fun c!314870 () Bool)

(assert (=> b!1935208 (= c!314870 ((_ is IntegerValue!12241) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168)))))

(declare-fun b!1935209 () Bool)

(assert (=> b!1935209 (= e!1236922 (inv!17 (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168)))))

(assert (= (and d!590463 c!314869) b!1935205))

(assert (= (and d!590463 (not c!314869)) b!1935208))

(assert (= (and b!1935208 c!314870) b!1935209))

(assert (= (and b!1935208 (not c!314870)) b!1935206))

(assert (= (and b!1935206 (not res!865286)) b!1935207))

(declare-fun m!2374841 () Bool)

(assert (=> b!1935205 m!2374841))

(declare-fun m!2374843 () Bool)

(assert (=> b!1935207 m!2374843))

(declare-fun m!2374845 () Bool)

(assert (=> b!1935209 m!2374845))

(assert (=> tb!118915 d!590463))

(declare-fun b!1935210 () Bool)

(declare-fun e!1236925 () Bool)

(declare-fun lt!741901 () Option!4566)

(assert (=> b!1935210 (= e!1236925 (= (size!17148 (_1!11772 (get!6933 lt!741901))) (size!17151 (originalCharacters!4751 (_1!11772 (get!6933 lt!741901))))))))

(declare-fun b!1935211 () Bool)

(declare-fun res!865292 () Bool)

(assert (=> b!1935211 (=> (not res!865292) (not e!1236925))))

(assert (=> b!1935211 (= res!865292 (= (++!5905 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741901)))) (_2!11772 (get!6933 lt!741901))) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))))))

(declare-fun b!1935212 () Bool)

(declare-fun e!1236924 () Option!4566)

(assert (=> b!1935212 (= e!1236924 None!4565)))

(declare-fun b!1935213 () Bool)

(declare-fun res!865293 () Bool)

(assert (=> b!1935213 (=> (not res!865293) (not e!1236925))))

(assert (=> b!1935213 (= res!865293 (= (rule!6153 (_1!11772 (get!6933 lt!741901))) (h!27385 rules!3198)))))

(declare-fun d!590465 () Bool)

(declare-fun e!1236927 () Bool)

(assert (=> d!590465 e!1236927))

(declare-fun res!865287 () Bool)

(assert (=> d!590465 (=> res!865287 e!1236927)))

(assert (=> d!590465 (= res!865287 (isEmpty!13571 lt!741901))))

(assert (=> d!590465 (= lt!741901 e!1236924)))

(declare-fun c!314871 () Bool)

(declare-fun lt!741899 () tuple2!20614)

(assert (=> d!590465 (= c!314871 (isEmpty!13567 (_1!11776 lt!741899)))))

(assert (=> d!590465 (= lt!741899 (findLongestMatch!465 (regex!3944 (h!27385 rules!3198)) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))))))

(assert (=> d!590465 (ruleValid!1199 thiss!23328 (h!27385 rules!3198))))

(assert (=> d!590465 (= (maxPrefixOneRule!1231 thiss!23328 (h!27385 rules!3198) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))) lt!741901)))

(declare-fun e!1236926 () Bool)

(declare-fun b!1935214 () Bool)

(assert (=> b!1935214 (= e!1236926 (matchR!2637 (regex!3944 (h!27385 rules!3198)) (_1!11776 (findLongestMatchInner!538 (regex!3944 (h!27385 rules!3198)) Nil!21982 (size!17151 Nil!21982) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)) (size!17151 (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)))))))))

(declare-fun b!1935215 () Bool)

(declare-fun res!865290 () Bool)

(assert (=> b!1935215 (=> (not res!865290) (not e!1236925))))

(assert (=> b!1935215 (= res!865290 (< (size!17151 (_2!11772 (get!6933 lt!741901))) (size!17151 (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)))))))

(declare-fun b!1935216 () Bool)

(declare-fun res!865289 () Bool)

(assert (=> b!1935216 (=> (not res!865289) (not e!1236925))))

(assert (=> b!1935216 (= res!865289 (= (value!123995 (_1!11772 (get!6933 lt!741901))) (apply!5725 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741901)))) (seqFromList!2798 (originalCharacters!4751 (_1!11772 (get!6933 lt!741901)))))))))

(declare-fun b!1935217 () Bool)

(assert (=> b!1935217 (= e!1236924 (Some!4565 (tuple2!20607 (Token!7441 (apply!5725 (transformation!3944 (h!27385 rules!3198)) (seqFromList!2798 (_1!11776 lt!741899))) (h!27385 rules!3198) (size!17154 (seqFromList!2798 (_1!11776 lt!741899))) (_1!11776 lt!741899)) (_2!11776 lt!741899))))))

(declare-fun lt!741902 () Unit!36346)

(assert (=> b!1935217 (= lt!741902 (longestMatchIsAcceptedByMatchOrIsEmpty!522 (regex!3944 (h!27385 rules!3198)) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))))))

(declare-fun res!865291 () Bool)

(assert (=> b!1935217 (= res!865291 (isEmpty!13567 (_1!11776 (findLongestMatchInner!538 (regex!3944 (h!27385 rules!3198)) Nil!21982 (size!17151 Nil!21982) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)) (size!17151 (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)))))))))

(assert (=> b!1935217 (=> res!865291 e!1236926)))

(assert (=> b!1935217 e!1236926))

(declare-fun lt!741903 () Unit!36346)

(assert (=> b!1935217 (= lt!741903 lt!741902)))

(declare-fun lt!741900 () Unit!36346)

(assert (=> b!1935217 (= lt!741900 (lemmaSemiInverse!901 (transformation!3944 (h!27385 rules!3198)) (seqFromList!2798 (_1!11776 lt!741899))))))

(declare-fun b!1935218 () Bool)

(assert (=> b!1935218 (= e!1236927 e!1236925)))

(declare-fun res!865288 () Bool)

(assert (=> b!1935218 (=> (not res!865288) (not e!1236925))))

(assert (=> b!1935218 (= res!865288 (matchR!2637 (regex!3944 (h!27385 rules!3198)) (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741901))))))))

(assert (= (and d!590465 c!314871) b!1935212))

(assert (= (and d!590465 (not c!314871)) b!1935217))

(assert (= (and b!1935217 (not res!865291)) b!1935214))

(assert (= (and d!590465 (not res!865287)) b!1935218))

(assert (= (and b!1935218 res!865288) b!1935211))

(assert (= (and b!1935211 res!865292) b!1935215))

(assert (= (and b!1935215 res!865290) b!1935213))

(assert (= (and b!1935213 res!865293) b!1935216))

(assert (= (and b!1935216 res!865289) b!1935210))

(declare-fun m!2374847 () Bool)

(assert (=> b!1935218 m!2374847))

(declare-fun m!2374849 () Bool)

(assert (=> b!1935218 m!2374849))

(assert (=> b!1935218 m!2374849))

(declare-fun m!2374851 () Bool)

(assert (=> b!1935218 m!2374851))

(assert (=> b!1935218 m!2374851))

(declare-fun m!2374853 () Bool)

(assert (=> b!1935218 m!2374853))

(assert (=> b!1935215 m!2374847))

(declare-fun m!2374855 () Bool)

(assert (=> b!1935215 m!2374855))

(assert (=> b!1935215 m!2372135))

(assert (=> b!1935215 m!2372627))

(assert (=> b!1935214 m!2373205))

(assert (=> b!1935214 m!2372135))

(assert (=> b!1935214 m!2372627))

(assert (=> b!1935214 m!2373205))

(assert (=> b!1935214 m!2372135))

(assert (=> b!1935214 m!2372135))

(assert (=> b!1935214 m!2372627))

(declare-fun m!2374857 () Bool)

(assert (=> b!1935214 m!2374857))

(declare-fun m!2374859 () Bool)

(assert (=> b!1935214 m!2374859))

(assert (=> b!1935217 m!2372135))

(declare-fun m!2374861 () Bool)

(assert (=> b!1935217 m!2374861))

(declare-fun m!2374863 () Bool)

(assert (=> b!1935217 m!2374863))

(assert (=> b!1935217 m!2374863))

(declare-fun m!2374865 () Bool)

(assert (=> b!1935217 m!2374865))

(assert (=> b!1935217 m!2374863))

(declare-fun m!2374867 () Bool)

(assert (=> b!1935217 m!2374867))

(assert (=> b!1935217 m!2373205))

(assert (=> b!1935217 m!2373205))

(assert (=> b!1935217 m!2372135))

(assert (=> b!1935217 m!2372135))

(assert (=> b!1935217 m!2372627))

(assert (=> b!1935217 m!2374857))

(assert (=> b!1935217 m!2372135))

(assert (=> b!1935217 m!2372627))

(declare-fun m!2374869 () Bool)

(assert (=> b!1935217 m!2374869))

(assert (=> b!1935217 m!2374863))

(declare-fun m!2374871 () Bool)

(assert (=> b!1935217 m!2374871))

(assert (=> b!1935216 m!2374847))

(declare-fun m!2374873 () Bool)

(assert (=> b!1935216 m!2374873))

(assert (=> b!1935216 m!2374873))

(declare-fun m!2374875 () Bool)

(assert (=> b!1935216 m!2374875))

(assert (=> b!1935213 m!2374847))

(assert (=> b!1935210 m!2374847))

(declare-fun m!2374877 () Bool)

(assert (=> b!1935210 m!2374877))

(assert (=> b!1935211 m!2374847))

(assert (=> b!1935211 m!2374849))

(assert (=> b!1935211 m!2374849))

(assert (=> b!1935211 m!2374851))

(assert (=> b!1935211 m!2374851))

(declare-fun m!2374879 () Bool)

(assert (=> b!1935211 m!2374879))

(declare-fun m!2374881 () Bool)

(assert (=> d!590465 m!2374881))

(declare-fun m!2374883 () Bool)

(assert (=> d!590465 m!2374883))

(assert (=> d!590465 m!2372135))

(declare-fun m!2374885 () Bool)

(assert (=> d!590465 m!2374885))

(assert (=> d!590465 m!2373159))

(assert (=> bm!118944 d!590465))

(assert (=> b!1934181 d!589665))

(declare-fun d!590467 () Bool)

(assert (=> d!590467 (= (list!8905 lt!741230) (list!8908 (c!314508 lt!741230)))))

(declare-fun bs!415313 () Bool)

(assert (= bs!415313 d!590467))

(declare-fun m!2374887 () Bool)

(assert (=> bs!415313 m!2374887))

(assert (=> d!589675 d!590467))

(declare-fun d!590469 () Bool)

(declare-fun c!314872 () Bool)

(assert (=> d!590469 (= c!314872 ((_ is Cons!21985) (list!8907 lt!741165)))))

(declare-fun e!1236928 () List!22064)

(assert (=> d!590469 (= (printList!1092 thiss!23328 (list!8907 lt!741165)) e!1236928)))

(declare-fun b!1935219 () Bool)

(assert (=> b!1935219 (= e!1236928 (++!5905 (list!8905 (charsOf!2484 (h!27386 (list!8907 lt!741165)))) (printList!1092 thiss!23328 (t!180606 (list!8907 lt!741165)))))))

(declare-fun b!1935220 () Bool)

(assert (=> b!1935220 (= e!1236928 Nil!21982)))

(assert (= (and d!590469 c!314872) b!1935219))

(assert (= (and d!590469 (not c!314872)) b!1935220))

(declare-fun m!2374889 () Bool)

(assert (=> b!1935219 m!2374889))

(assert (=> b!1935219 m!2374889))

(declare-fun m!2374891 () Bool)

(assert (=> b!1935219 m!2374891))

(declare-fun m!2374893 () Bool)

(assert (=> b!1935219 m!2374893))

(assert (=> b!1935219 m!2374891))

(assert (=> b!1935219 m!2374893))

(declare-fun m!2374895 () Bool)

(assert (=> b!1935219 m!2374895))

(assert (=> d!589675 d!590469))

(assert (=> d!589675 d!590273))

(assert (=> d!589675 d!589669))

(declare-fun d!590471 () Bool)

(declare-fun lt!741904 () Int)

(assert (=> d!590471 (= lt!741904 (size!17158 (list!8907 (_1!11771 lt!741400))))))

(assert (=> d!590471 (= lt!741904 (size!17159 (c!314510 (_1!11771 lt!741400))))))

(assert (=> d!590471 (= (size!17150 (_1!11771 lt!741400)) lt!741904)))

(declare-fun bs!415314 () Bool)

(assert (= bs!415314 d!590471))

(assert (=> bs!415314 m!2372947))

(assert (=> bs!415314 m!2372947))

(declare-fun m!2374897 () Bool)

(assert (=> bs!415314 m!2374897))

(declare-fun m!2374899 () Bool)

(assert (=> bs!415314 m!2374899))

(assert (=> d!589803 d!590471))

(declare-fun b!1935462 () Bool)

(declare-fun e!1237054 () tuple2!20604)

(declare-fun lt!742090 () BalanceConc!14500)

(declare-datatypes ((tuple2!20618 0))(
  ( (tuple2!20619 (_1!11778 Token!7440) (_2!11778 BalanceConc!14500)) )
))
(declare-datatypes ((Option!4568 0))(
  ( (None!4567) (Some!4567 (v!26688 tuple2!20618)) )
))
(declare-fun lt!742074 () Option!4568)

(declare-fun append!599 (BalanceConc!14502 Token!7440) BalanceConc!14502)

(assert (=> b!1935462 (= e!1237054 (lexTailRecV2!678 thiss!23328 rules!3198 (seqFromList!2798 lt!741158) lt!742090 (_2!11778 (v!26688 lt!742074)) (append!599 (BalanceConc!14503 Empty!7343) (_1!11778 (v!26688 lt!742074)))))))

(declare-fun lt!742097 () tuple2!20604)

(declare-fun lexRec!405 (LexerInterface!3557 List!22066 BalanceConc!14500) tuple2!20604)

(assert (=> b!1935462 (= lt!742097 (lexRec!405 thiss!23328 rules!3198 (_2!11778 (v!26688 lt!742074))))))

(declare-fun lt!742075 () List!22064)

(assert (=> b!1935462 (= lt!742075 (list!8905 (BalanceConc!14501 Empty!7342)))))

(declare-fun lt!742077 () List!22064)

(assert (=> b!1935462 (= lt!742077 (list!8905 (charsOf!2484 (_1!11778 (v!26688 lt!742074)))))))

(declare-fun lt!742094 () List!22064)

(assert (=> b!1935462 (= lt!742094 (list!8905 (_2!11778 (v!26688 lt!742074))))))

(declare-fun lt!742081 () Unit!36346)

(assert (=> b!1935462 (= lt!742081 (lemmaConcatAssociativity!1200 lt!742075 lt!742077 lt!742094))))

(assert (=> b!1935462 (= (++!5905 (++!5905 lt!742075 lt!742077) lt!742094) (++!5905 lt!742075 (++!5905 lt!742077 lt!742094)))))

(declare-fun lt!742086 () Unit!36346)

(assert (=> b!1935462 (= lt!742086 lt!742081)))

(declare-fun lt!742085 () Option!4568)

(declare-fun maxPrefixZipperSequence!771 (LexerInterface!3557 List!22066 BalanceConc!14500) Option!4568)

(assert (=> b!1935462 (= lt!742085 (maxPrefixZipperSequence!771 thiss!23328 rules!3198 (seqFromList!2798 lt!741158)))))

(declare-fun c!314919 () Bool)

(assert (=> b!1935462 (= c!314919 ((_ is Some!4567) lt!742085))))

(declare-fun e!1237053 () tuple2!20604)

(assert (=> b!1935462 (= (lexRec!405 thiss!23328 rules!3198 (seqFromList!2798 lt!741158)) e!1237053)))

(declare-fun lt!742078 () Unit!36346)

(declare-fun Unit!36362 () Unit!36346)

(assert (=> b!1935462 (= lt!742078 Unit!36362)))

(declare-fun lt!742084 () List!22067)

(assert (=> b!1935462 (= lt!742084 (list!8907 (BalanceConc!14503 Empty!7343)))))

(declare-fun lt!742093 () List!22067)

(assert (=> b!1935462 (= lt!742093 (Cons!21985 (_1!11778 (v!26688 lt!742074)) Nil!21985))))

(declare-fun lt!742071 () List!22067)

(assert (=> b!1935462 (= lt!742071 (list!8907 (_1!11771 lt!742097)))))

(declare-fun lt!742079 () Unit!36346)

(declare-fun lemmaConcatAssociativity!1201 (List!22067 List!22067 List!22067) Unit!36346)

(assert (=> b!1935462 (= lt!742079 (lemmaConcatAssociativity!1201 lt!742084 lt!742093 lt!742071))))

(declare-fun ++!5910 (List!22067 List!22067) List!22067)

(assert (=> b!1935462 (= (++!5910 (++!5910 lt!742084 lt!742093) lt!742071) (++!5910 lt!742084 (++!5910 lt!742093 lt!742071)))))

(declare-fun lt!742092 () Unit!36346)

(assert (=> b!1935462 (= lt!742092 lt!742079)))

(declare-fun lt!742066 () List!22064)

(assert (=> b!1935462 (= lt!742066 (++!5905 (list!8905 (BalanceConc!14501 Empty!7342)) (list!8905 (charsOf!2484 (_1!11778 (v!26688 lt!742074))))))))

(declare-fun lt!742067 () List!22064)

(assert (=> b!1935462 (= lt!742067 (list!8905 (_2!11778 (v!26688 lt!742074))))))

(declare-fun lt!742076 () List!22067)

(assert (=> b!1935462 (= lt!742076 (list!8907 (append!599 (BalanceConc!14503 Empty!7343) (_1!11778 (v!26688 lt!742074)))))))

(declare-fun lt!742073 () Unit!36346)

(declare-fun lemmaLexThenLexPrefix!293 (LexerInterface!3557 List!22066 List!22064 List!22064 List!22067 List!22067 List!22064) Unit!36346)

(assert (=> b!1935462 (= lt!742073 (lemmaLexThenLexPrefix!293 thiss!23328 rules!3198 lt!742066 lt!742067 lt!742076 (list!8907 (_1!11771 lt!742097)) (list!8905 (_2!11771 lt!742097))))))

(assert (=> b!1935462 (= (lexList!955 thiss!23328 rules!3198 lt!742066) (tuple2!20611 lt!742076 Nil!21982))))

(declare-fun lt!742095 () Unit!36346)

(assert (=> b!1935462 (= lt!742095 lt!742073)))

(declare-fun lt!742070 () BalanceConc!14500)

(assert (=> b!1935462 (= lt!742070 (++!5906 (BalanceConc!14501 Empty!7342) (charsOf!2484 (_1!11778 (v!26688 lt!742074)))))))

(declare-fun lt!742072 () Option!4568)

(assert (=> b!1935462 (= lt!742072 (maxPrefixZipperSequence!771 thiss!23328 rules!3198 lt!742070))))

(declare-fun c!314920 () Bool)

(assert (=> b!1935462 (= c!314920 ((_ is Some!4567) lt!742072))))

(declare-fun e!1237052 () tuple2!20604)

(assert (=> b!1935462 (= (lexRec!405 thiss!23328 rules!3198 (++!5906 (BalanceConc!14501 Empty!7342) (charsOf!2484 (_1!11778 (v!26688 lt!742074))))) e!1237052)))

(declare-fun lt!742082 () Unit!36346)

(declare-fun Unit!36363 () Unit!36346)

(assert (=> b!1935462 (= lt!742082 Unit!36363)))

(assert (=> b!1935462 (= lt!742090 (++!5906 (BalanceConc!14501 Empty!7342) (charsOf!2484 (_1!11778 (v!26688 lt!742074)))))))

(declare-fun lt!742091 () List!22064)

(assert (=> b!1935462 (= lt!742091 (list!8905 lt!742090))))

(declare-fun lt!742087 () List!22064)

(assert (=> b!1935462 (= lt!742087 (list!8905 (_2!11778 (v!26688 lt!742074))))))

(declare-fun lt!742096 () Unit!36346)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!351 (List!22064 List!22064) Unit!36346)

(assert (=> b!1935462 (= lt!742096 (lemmaConcatTwoListThenFSndIsSuffix!351 lt!742091 lt!742087))))

(declare-fun isSuffix!450 (List!22064 List!22064) Bool)

(assert (=> b!1935462 (isSuffix!450 lt!742087 (++!5905 lt!742091 lt!742087))))

(declare-fun lt!742083 () Unit!36346)

(assert (=> b!1935462 (= lt!742083 lt!742096)))

(declare-fun b!1935463 () Bool)

(assert (=> b!1935463 (= e!1237052 (tuple2!20605 (BalanceConc!14503 Empty!7343) lt!742070))))

(declare-fun lt!742068 () tuple2!20604)

(declare-fun b!1935464 () Bool)

(assert (=> b!1935464 (= lt!742068 (lexRec!405 thiss!23328 rules!3198 (_2!11778 (v!26688 lt!742085))))))

(declare-fun prepend!880 (BalanceConc!14502 Token!7440) BalanceConc!14502)

(assert (=> b!1935464 (= e!1237053 (tuple2!20605 (prepend!880 (_1!11771 lt!742068) (_1!11778 (v!26688 lt!742085))) (_2!11771 lt!742068)))))

(declare-fun b!1935465 () Bool)

(declare-fun lt!742065 () tuple2!20604)

(assert (=> b!1935465 (= lt!742065 (lexRec!405 thiss!23328 rules!3198 (_2!11778 (v!26688 lt!742072))))))

(assert (=> b!1935465 (= e!1237052 (tuple2!20605 (prepend!880 (_1!11771 lt!742065) (_1!11778 (v!26688 lt!742072))) (_2!11771 lt!742065)))))

(declare-fun d!590473 () Bool)

(declare-fun e!1237051 () Bool)

(assert (=> d!590473 e!1237051))

(declare-fun res!865349 () Bool)

(assert (=> d!590473 (=> (not res!865349) (not e!1237051))))

(declare-fun lt!742089 () tuple2!20604)

(assert (=> d!590473 (= res!865349 (= (list!8907 (_1!11771 lt!742089)) (list!8907 (_1!11771 (lexRec!405 thiss!23328 rules!3198 (seqFromList!2798 lt!741158))))))))

(assert (=> d!590473 (= lt!742089 e!1237054)))

(declare-fun c!314918 () Bool)

(assert (=> d!590473 (= c!314918 ((_ is Some!4567) lt!742074))))

(declare-fun maxPrefixZipperSequenceV2!299 (LexerInterface!3557 List!22066 BalanceConc!14500 BalanceConc!14500) Option!4568)

(assert (=> d!590473 (= lt!742074 (maxPrefixZipperSequenceV2!299 thiss!23328 rules!3198 (seqFromList!2798 lt!741158) (seqFromList!2798 lt!741158)))))

(declare-fun lt!742098 () Unit!36346)

(declare-fun lt!742069 () Unit!36346)

(assert (=> d!590473 (= lt!742098 lt!742069)))

(declare-fun lt!742088 () List!22064)

(declare-fun lt!742080 () List!22064)

(assert (=> d!590473 (isSuffix!450 lt!742088 (++!5905 lt!742080 lt!742088))))

(assert (=> d!590473 (= lt!742069 (lemmaConcatTwoListThenFSndIsSuffix!351 lt!742080 lt!742088))))

(assert (=> d!590473 (= lt!742088 (list!8905 (seqFromList!2798 lt!741158)))))

(assert (=> d!590473 (= lt!742080 (list!8905 (BalanceConc!14501 Empty!7342)))))

(assert (=> d!590473 (= (lexTailRecV2!678 thiss!23328 rules!3198 (seqFromList!2798 lt!741158) (BalanceConc!14501 Empty!7342) (seqFromList!2798 lt!741158) (BalanceConc!14503 Empty!7343)) lt!742089)))

(declare-fun b!1935466 () Bool)

(assert (=> b!1935466 (= e!1237054 (tuple2!20605 (BalanceConc!14503 Empty!7343) (seqFromList!2798 lt!741158)))))

(declare-fun b!1935467 () Bool)

(assert (=> b!1935467 (= e!1237051 (= (list!8905 (_2!11771 lt!742089)) (list!8905 (_2!11771 (lexRec!405 thiss!23328 rules!3198 (seqFromList!2798 lt!741158))))))))

(declare-fun b!1935468 () Bool)

(assert (=> b!1935468 (= e!1237053 (tuple2!20605 (BalanceConc!14503 Empty!7343) (seqFromList!2798 lt!741158)))))

(assert (= (and d!590473 c!314918) b!1935462))

(assert (= (and d!590473 (not c!314918)) b!1935466))

(assert (= (and b!1935462 c!314919) b!1935464))

(assert (= (and b!1935462 (not c!314919)) b!1935468))

(assert (= (and b!1935462 c!314920) b!1935465))

(assert (= (and b!1935462 (not c!314920)) b!1935463))

(assert (= (and d!590473 res!865349) b!1935467))

(assert (=> d!590473 m!2372107))

(assert (=> d!590473 m!2372949))

(assert (=> d!590473 m!2372107))

(declare-fun m!2375191 () Bool)

(assert (=> d!590473 m!2375191))

(assert (=> d!590473 m!2372297))

(assert (=> d!590473 m!2372107))

(assert (=> d!590473 m!2372107))

(declare-fun m!2375193 () Bool)

(assert (=> d!590473 m!2375193))

(declare-fun m!2375195 () Bool)

(assert (=> d!590473 m!2375195))

(declare-fun m!2375197 () Bool)

(assert (=> d!590473 m!2375197))

(declare-fun m!2375199 () Bool)

(assert (=> d!590473 m!2375199))

(assert (=> d!590473 m!2375195))

(declare-fun m!2375201 () Bool)

(assert (=> d!590473 m!2375201))

(declare-fun m!2375203 () Bool)

(assert (=> d!590473 m!2375203))

(declare-fun m!2375205 () Bool)

(assert (=> b!1935462 m!2375205))

(declare-fun m!2375207 () Bool)

(assert (=> b!1935462 m!2375207))

(declare-fun m!2375209 () Bool)

(assert (=> b!1935462 m!2375209))

(declare-fun m!2375211 () Bool)

(assert (=> b!1935462 m!2375211))

(declare-fun m!2375213 () Bool)

(assert (=> b!1935462 m!2375213))

(declare-fun m!2375215 () Bool)

(assert (=> b!1935462 m!2375215))

(declare-fun m!2375217 () Bool)

(assert (=> b!1935462 m!2375217))

(declare-fun m!2375219 () Bool)

(assert (=> b!1935462 m!2375219))

(declare-fun m!2375221 () Bool)

(assert (=> b!1935462 m!2375221))

(declare-fun m!2375223 () Bool)

(assert (=> b!1935462 m!2375223))

(declare-fun m!2375225 () Bool)

(assert (=> b!1935462 m!2375225))

(declare-fun m!2375227 () Bool)

(assert (=> b!1935462 m!2375227))

(assert (=> b!1935462 m!2372107))

(declare-fun m!2375229 () Bool)

(assert (=> b!1935462 m!2375229))

(declare-fun m!2375231 () Bool)

(assert (=> b!1935462 m!2375231))

(assert (=> b!1935462 m!2375229))

(declare-fun m!2375233 () Bool)

(assert (=> b!1935462 m!2375233))

(declare-fun m!2375235 () Bool)

(assert (=> b!1935462 m!2375235))

(declare-fun m!2375237 () Bool)

(assert (=> b!1935462 m!2375237))

(assert (=> b!1935462 m!2375205))

(declare-fun m!2375239 () Bool)

(assert (=> b!1935462 m!2375239))

(assert (=> b!1935462 m!2375213))

(declare-fun m!2375241 () Bool)

(assert (=> b!1935462 m!2375241))

(assert (=> b!1935462 m!2375239))

(declare-fun m!2375243 () Bool)

(assert (=> b!1935462 m!2375243))

(assert (=> b!1935462 m!2372297))

(assert (=> b!1935462 m!2375237))

(declare-fun m!2375245 () Bool)

(assert (=> b!1935462 m!2375245))

(assert (=> b!1935462 m!2372107))

(assert (=> b!1935462 m!2375191))

(assert (=> b!1935462 m!2375229))

(declare-fun m!2375247 () Bool)

(assert (=> b!1935462 m!2375247))

(declare-fun m!2375249 () Bool)

(assert (=> b!1935462 m!2375249))

(assert (=> b!1935462 m!2375225))

(declare-fun m!2375251 () Bool)

(assert (=> b!1935462 m!2375251))

(assert (=> b!1935462 m!2375235))

(declare-fun m!2375253 () Bool)

(assert (=> b!1935462 m!2375253))

(declare-fun m!2375255 () Bool)

(assert (=> b!1935462 m!2375255))

(declare-fun m!2375257 () Bool)

(assert (=> b!1935462 m!2375257))

(declare-fun m!2375259 () Bool)

(assert (=> b!1935462 m!2375259))

(assert (=> b!1935462 m!2375223))

(assert (=> b!1935462 m!2372297))

(assert (=> b!1935462 m!2375243))

(declare-fun m!2375261 () Bool)

(assert (=> b!1935462 m!2375261))

(assert (=> b!1935462 m!2375239))

(assert (=> b!1935462 m!2375217))

(assert (=> b!1935462 m!2372107))

(declare-fun m!2375263 () Bool)

(assert (=> b!1935462 m!2375263))

(assert (=> b!1935462 m!2375255))

(declare-fun m!2375265 () Bool)

(assert (=> b!1935462 m!2375265))

(declare-fun m!2375267 () Bool)

(assert (=> b!1935464 m!2375267))

(declare-fun m!2375269 () Bool)

(assert (=> b!1935464 m!2375269))

(declare-fun m!2375271 () Bool)

(assert (=> b!1935467 m!2375271))

(assert (=> b!1935467 m!2372107))

(assert (=> b!1935467 m!2375191))

(declare-fun m!2375273 () Bool)

(assert (=> b!1935467 m!2375273))

(declare-fun m!2375275 () Bool)

(assert (=> b!1935465 m!2375275))

(declare-fun m!2375277 () Bool)

(assert (=> b!1935465 m!2375277))

(assert (=> d!589803 d!590473))

(assert (=> b!1933614 d!590245))

(declare-fun d!590543 () Bool)

(declare-fun e!1237055 () Bool)

(assert (=> d!590543 e!1237055))

(declare-fun res!865350 () Bool)

(assert (=> d!590543 (=> (not res!865350) (not e!1237055))))

(declare-fun lt!742099 () BalanceConc!14500)

(assert (=> d!590543 (= res!865350 (= (list!8905 lt!742099) (originalCharacters!4751 (h!27386 tokens!598))))))

(assert (=> d!590543 (= lt!742099 (BalanceConc!14501 (fromList!484 (originalCharacters!4751 (h!27386 tokens!598)))))))

(assert (=> d!590543 (= (fromListB!1246 (originalCharacters!4751 (h!27386 tokens!598))) lt!742099)))

(declare-fun b!1935469 () Bool)

(assert (=> b!1935469 (= e!1237055 (isBalanced!2273 (fromList!484 (originalCharacters!4751 (h!27386 tokens!598)))))))

(assert (= (and d!590543 res!865350) b!1935469))

(declare-fun m!2375279 () Bool)

(assert (=> d!590543 m!2375279))

(declare-fun m!2375281 () Bool)

(assert (=> d!590543 m!2375281))

(assert (=> b!1935469 m!2375281))

(assert (=> b!1935469 m!2375281))

(declare-fun m!2375283 () Bool)

(assert (=> b!1935469 m!2375283))

(assert (=> d!589785 d!590543))

(declare-fun lt!742100 () BalanceConc!14500)

(declare-fun d!590545 () Bool)

(assert (=> d!590545 (= (list!8905 lt!742100) (originalCharacters!4751 (ite c!314603 (h!27386 (t!180606 tokens!598)) (ite c!314602 separatorToken!354 (h!27386 (t!180606 tokens!598))))))))

(assert (=> d!590545 (= lt!742100 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (ite c!314603 (h!27386 (t!180606 tokens!598)) (ite c!314602 separatorToken!354 (h!27386 (t!180606 tokens!598))))))) (value!123995 (ite c!314603 (h!27386 (t!180606 tokens!598)) (ite c!314602 separatorToken!354 (h!27386 (t!180606 tokens!598)))))))))

(assert (=> d!590545 (= (charsOf!2484 (ite c!314603 (h!27386 (t!180606 tokens!598)) (ite c!314602 separatorToken!354 (h!27386 (t!180606 tokens!598))))) lt!742100)))

(declare-fun b_lambda!64439 () Bool)

(assert (=> (not b_lambda!64439) (not d!590545)))

(declare-fun tb!119167 () Bool)

(declare-fun t!180911 () Bool)

(assert (=> (and b!1933518 (= (toChars!5444 (transformation!3944 (h!27385 rules!3198))) (toChars!5444 (transformation!3944 (rule!6153 (ite c!314603 (h!27386 (t!180606 tokens!598)) (ite c!314602 separatorToken!354 (h!27386 (t!180606 tokens!598)))))))) t!180911) tb!119167))

(declare-fun tp!552050 () Bool)

(declare-fun b!1935470 () Bool)

(declare-fun e!1237056 () Bool)

(assert (=> b!1935470 (= e!1237056 (and (inv!29081 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (ite c!314603 (h!27386 (t!180606 tokens!598)) (ite c!314602 separatorToken!354 (h!27386 (t!180606 tokens!598))))))) (value!123995 (ite c!314603 (h!27386 (t!180606 tokens!598)) (ite c!314602 separatorToken!354 (h!27386 (t!180606 tokens!598)))))))) tp!552050))))

(declare-fun result!143864 () Bool)

(assert (=> tb!119167 (= result!143864 (and (inv!29082 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (ite c!314603 (h!27386 (t!180606 tokens!598)) (ite c!314602 separatorToken!354 (h!27386 (t!180606 tokens!598))))))) (value!123995 (ite c!314603 (h!27386 (t!180606 tokens!598)) (ite c!314602 separatorToken!354 (h!27386 (t!180606 tokens!598))))))) e!1237056))))

(assert (= tb!119167 b!1935470))

(declare-fun m!2375285 () Bool)

(assert (=> b!1935470 m!2375285))

(declare-fun m!2375287 () Bool)

(assert (=> tb!119167 m!2375287))

(assert (=> d!590545 t!180911))

(declare-fun b_and!152587 () Bool)

(assert (= b_and!152507 (and (=> t!180911 result!143864) b_and!152587)))

(declare-fun tb!119169 () Bool)

(declare-fun t!180913 () Bool)

(assert (=> (and b!1933530 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (toChars!5444 (transformation!3944 (rule!6153 (ite c!314603 (h!27386 (t!180606 tokens!598)) (ite c!314602 separatorToken!354 (h!27386 (t!180606 tokens!598)))))))) t!180913) tb!119169))

(declare-fun result!143866 () Bool)

(assert (= result!143866 result!143864))

(assert (=> d!590545 t!180913))

(declare-fun b_and!152589 () Bool)

(assert (= b_and!152511 (and (=> t!180913 result!143866) b_and!152589)))

(declare-fun t!180915 () Bool)

(declare-fun tb!119171 () Bool)

(assert (=> (and b!1934216 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toChars!5444 (transformation!3944 (rule!6153 (ite c!314603 (h!27386 (t!180606 tokens!598)) (ite c!314602 separatorToken!354 (h!27386 (t!180606 tokens!598)))))))) t!180915) tb!119171))

(declare-fun result!143868 () Bool)

(assert (= result!143868 result!143864))

(assert (=> d!590545 t!180915))

(declare-fun b_and!152591 () Bool)

(assert (= b_and!152505 (and (=> t!180915 result!143868) b_and!152591)))

(declare-fun t!180917 () Bool)

(declare-fun tb!119173 () Bool)

(assert (=> (and b!1934238 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (toChars!5444 (transformation!3944 (rule!6153 (ite c!314603 (h!27386 (t!180606 tokens!598)) (ite c!314602 separatorToken!354 (h!27386 (t!180606 tokens!598)))))))) t!180917) tb!119173))

(declare-fun result!143870 () Bool)

(assert (= result!143870 result!143864))

(assert (=> d!590545 t!180917))

(declare-fun b_and!152593 () Bool)

(assert (= b_and!152503 (and (=> t!180917 result!143870) b_and!152593)))

(declare-fun t!180919 () Bool)

(declare-fun tb!119175 () Bool)

(assert (=> (and b!1933531 (= (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (toChars!5444 (transformation!3944 (rule!6153 (ite c!314603 (h!27386 (t!180606 tokens!598)) (ite c!314602 separatorToken!354 (h!27386 (t!180606 tokens!598)))))))) t!180919) tb!119175))

(declare-fun result!143872 () Bool)

(assert (= result!143872 result!143864))

(assert (=> d!590545 t!180919))

(declare-fun b_and!152595 () Bool)

(assert (= b_and!152509 (and (=> t!180919 result!143872) b_and!152595)))

(declare-fun m!2375289 () Bool)

(assert (=> d!590545 m!2375289))

(declare-fun m!2375291 () Bool)

(assert (=> d!590545 m!2375291))

(assert (=> bm!118958 d!590545))

(declare-fun b!1935471 () Bool)

(declare-fun e!1237057 () List!22064)

(assert (=> b!1935471 (= e!1237057 (ite c!314603 lt!741377 call!118962))))

(declare-fun b!1935473 () Bool)

(declare-fun res!865352 () Bool)

(declare-fun e!1237058 () Bool)

(assert (=> b!1935473 (=> (not res!865352) (not e!1237058))))

(declare-fun lt!742101 () List!22064)

(assert (=> b!1935473 (= res!865352 (= (size!17151 lt!742101) (+ (size!17151 e!1236163) (size!17151 (ite c!314603 lt!741377 call!118962)))))))

(declare-fun d!590547 () Bool)

(assert (=> d!590547 e!1237058))

(declare-fun res!865351 () Bool)

(assert (=> d!590547 (=> (not res!865351) (not e!1237058))))

(assert (=> d!590547 (= res!865351 (= (content!3187 lt!742101) ((_ map or) (content!3187 e!1236163) (content!3187 (ite c!314603 lt!741377 call!118962)))))))

(assert (=> d!590547 (= lt!742101 e!1237057)))

(declare-fun c!314921 () Bool)

(assert (=> d!590547 (= c!314921 ((_ is Nil!21982) e!1236163))))

(assert (=> d!590547 (= (++!5905 e!1236163 (ite c!314603 lt!741377 call!118962)) lt!742101)))

(declare-fun b!1935472 () Bool)

(assert (=> b!1935472 (= e!1237057 (Cons!21982 (h!27383 e!1236163) (++!5905 (t!180603 e!1236163) (ite c!314603 lt!741377 call!118962))))))

(declare-fun b!1935474 () Bool)

(assert (=> b!1935474 (= e!1237058 (or (not (= (ite c!314603 lt!741377 call!118962) Nil!21982)) (= lt!742101 e!1236163)))))

(assert (= (and d!590547 c!314921) b!1935471))

(assert (= (and d!590547 (not c!314921)) b!1935472))

(assert (= (and d!590547 res!865351) b!1935473))

(assert (= (and b!1935473 res!865352) b!1935474))

(declare-fun m!2375293 () Bool)

(assert (=> b!1935473 m!2375293))

(declare-fun m!2375295 () Bool)

(assert (=> b!1935473 m!2375295))

(declare-fun m!2375297 () Bool)

(assert (=> b!1935473 m!2375297))

(declare-fun m!2375299 () Bool)

(assert (=> d!590547 m!2375299))

(declare-fun m!2375301 () Bool)

(assert (=> d!590547 m!2375301))

(declare-fun m!2375303 () Bool)

(assert (=> d!590547 m!2375303))

(declare-fun m!2375305 () Bool)

(assert (=> b!1935472 m!2375305))

(assert (=> bm!118955 d!590547))

(declare-fun d!590549 () Bool)

(declare-fun lt!742102 () Token!7440)

(assert (=> d!590549 (= lt!742102 (apply!5722 (list!8907 (_1!11771 lt!741203)) 0))))

(assert (=> d!590549 (= lt!742102 (apply!5727 (c!314510 (_1!11771 lt!741203)) 0))))

(declare-fun e!1237059 () Bool)

(assert (=> d!590549 e!1237059))

(declare-fun res!865353 () Bool)

(assert (=> d!590549 (=> (not res!865353) (not e!1237059))))

(assert (=> d!590549 (= res!865353 (<= 0 0))))

(assert (=> d!590549 (= (apply!5721 (_1!11771 lt!741203) 0) lt!742102)))

(declare-fun b!1935475 () Bool)

(assert (=> b!1935475 (= e!1237059 (< 0 (size!17150 (_1!11771 lt!741203))))))

(assert (= (and d!590549 res!865353) b!1935475))

(assert (=> d!590549 m!2373435))

(assert (=> d!590549 m!2373435))

(declare-fun m!2375307 () Bool)

(assert (=> d!590549 m!2375307))

(declare-fun m!2375309 () Bool)

(assert (=> d!590549 m!2375309))

(assert (=> b!1935475 m!2372281))

(assert (=> b!1933643 d!590549))

(declare-fun d!590551 () Bool)

(assert (=> d!590551 (= (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 separatorToken!354)))) (v!26679 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 separatorToken!354)))))))

(assert (=> b!1933917 d!590551))

(assert (=> b!1933917 d!589741))

(declare-fun d!590553 () Bool)

(declare-fun lt!742103 () Bool)

(assert (=> d!590553 (= lt!742103 (isEmpty!13575 (list!8907 (_1!11771 lt!741400))))))

(assert (=> d!590553 (= lt!742103 (isEmpty!13576 (c!314510 (_1!11771 lt!741400))))))

(assert (=> d!590553 (= (isEmpty!13563 (_1!11771 lt!741400)) lt!742103)))

(declare-fun bs!415326 () Bool)

(assert (= bs!415326 d!590553))

(assert (=> bs!415326 m!2372947))

(assert (=> bs!415326 m!2372947))

(declare-fun m!2375311 () Bool)

(assert (=> bs!415326 m!2375311))

(declare-fun m!2375313 () Bool)

(assert (=> bs!415326 m!2375313))

(assert (=> b!1934153 d!590553))

(declare-fun b!1935488 () Bool)

(declare-fun e!1237064 () Bool)

(declare-fun e!1237065 () Bool)

(assert (=> b!1935488 (= e!1237064 e!1237065)))

(declare-fun res!865370 () Bool)

(assert (=> b!1935488 (=> (not res!865370) (not e!1237065))))

(declare-fun height!1117 (Conc!7343) Int)

(assert (=> b!1935488 (= res!865370 (<= (- 1) (- (height!1117 (left!17489 (c!314510 lt!741227))) (height!1117 (right!17819 (c!314510 lt!741227))))))))

(declare-fun b!1935489 () Bool)

(declare-fun res!865366 () Bool)

(assert (=> b!1935489 (=> (not res!865366) (not e!1237065))))

(assert (=> b!1935489 (= res!865366 (isBalanced!2270 (left!17489 (c!314510 lt!741227))))))

(declare-fun b!1935490 () Bool)

(assert (=> b!1935490 (= e!1237065 (not (isEmpty!13576 (right!17819 (c!314510 lt!741227)))))))

(declare-fun b!1935491 () Bool)

(declare-fun res!865369 () Bool)

(assert (=> b!1935491 (=> (not res!865369) (not e!1237065))))

(assert (=> b!1935491 (= res!865369 (isBalanced!2270 (right!17819 (c!314510 lt!741227))))))

(declare-fun b!1935492 () Bool)

(declare-fun res!865371 () Bool)

(assert (=> b!1935492 (=> (not res!865371) (not e!1237065))))

(assert (=> b!1935492 (= res!865371 (<= (- (height!1117 (left!17489 (c!314510 lt!741227))) (height!1117 (right!17819 (c!314510 lt!741227)))) 1))))

(declare-fun d!590555 () Bool)

(declare-fun res!865368 () Bool)

(assert (=> d!590555 (=> res!865368 e!1237064)))

(assert (=> d!590555 (= res!865368 (not ((_ is Node!7343) (c!314510 lt!741227))))))

(assert (=> d!590555 (= (isBalanced!2270 (c!314510 lt!741227)) e!1237064)))

(declare-fun b!1935493 () Bool)

(declare-fun res!865367 () Bool)

(assert (=> b!1935493 (=> (not res!865367) (not e!1237065))))

(assert (=> b!1935493 (= res!865367 (not (isEmpty!13576 (left!17489 (c!314510 lt!741227)))))))

(assert (= (and d!590555 (not res!865368)) b!1935488))

(assert (= (and b!1935488 res!865370) b!1935492))

(assert (= (and b!1935492 res!865371) b!1935489))

(assert (= (and b!1935489 res!865366) b!1935491))

(assert (= (and b!1935491 res!865369) b!1935493))

(assert (= (and b!1935493 res!865367) b!1935490))

(declare-fun m!2375315 () Bool)

(assert (=> b!1935491 m!2375315))

(declare-fun m!2375317 () Bool)

(assert (=> b!1935489 m!2375317))

(declare-fun m!2375319 () Bool)

(assert (=> b!1935493 m!2375319))

(declare-fun m!2375321 () Bool)

(assert (=> b!1935488 m!2375321))

(declare-fun m!2375323 () Bool)

(assert (=> b!1935488 m!2375323))

(assert (=> b!1935492 m!2375321))

(assert (=> b!1935492 m!2375323))

(declare-fun m!2375325 () Bool)

(assert (=> b!1935490 m!2375325))

(assert (=> b!1933668 d!590555))

(assert (=> b!1933993 d!589997))

(declare-fun d!590557 () Bool)

(assert (=> d!590557 (= (apply!5725 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741380)))) (seqFromList!2798 (originalCharacters!4751 (_1!11772 (get!6933 lt!741380))))) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741380))))) (seqFromList!2798 (originalCharacters!4751 (_1!11772 (get!6933 lt!741380))))))))

(declare-fun b_lambda!64441 () Bool)

(assert (=> (not b_lambda!64441) (not d!590557)))

(declare-fun tb!119177 () Bool)

(declare-fun t!180922 () Bool)

(assert (=> (and b!1933531 (= (toValue!5585 (transformation!3944 (rule!6153 separatorToken!354))) (toValue!5585 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741380)))))) t!180922) tb!119177))

(declare-fun result!143874 () Bool)

(assert (=> tb!119177 (= result!143874 (inv!21 (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741380))))) (seqFromList!2798 (originalCharacters!4751 (_1!11772 (get!6933 lt!741380)))))))))

(declare-fun m!2375327 () Bool)

(assert (=> tb!119177 m!2375327))

(assert (=> d!590557 t!180922))

(declare-fun b_and!152597 () Bool)

(assert (= b_and!152337 (and (=> t!180922 result!143874) b_and!152597)))

(declare-fun t!180924 () Bool)

(declare-fun tb!119179 () Bool)

(assert (=> (and b!1933530 (= (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (toValue!5585 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741380)))))) t!180924) tb!119179))

(declare-fun result!143876 () Bool)

(assert (= result!143876 result!143874))

(assert (=> d!590557 t!180924))

(declare-fun b_and!152599 () Bool)

(assert (= b_and!152339 (and (=> t!180924 result!143876) b_and!152599)))

(declare-fun tb!119181 () Bool)

(declare-fun t!180926 () Bool)

(assert (=> (and b!1933518 (= (toValue!5585 (transformation!3944 (h!27385 rules!3198))) (toValue!5585 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741380)))))) t!180926) tb!119181))

(declare-fun result!143878 () Bool)

(assert (= result!143878 result!143874))

(assert (=> d!590557 t!180926))

(declare-fun b_and!152601 () Bool)

(assert (= b_and!152341 (and (=> t!180926 result!143878) b_and!152601)))

(declare-fun t!180928 () Bool)

(declare-fun tb!119183 () Bool)

(assert (=> (and b!1934216 (= (toValue!5585 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toValue!5585 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741380)))))) t!180928) tb!119183))

(declare-fun result!143880 () Bool)

(assert (= result!143880 result!143874))

(assert (=> d!590557 t!180928))

(declare-fun b_and!152603 () Bool)

(assert (= b_and!152375 (and (=> t!180928 result!143880) b_and!152603)))

(declare-fun tb!119185 () Bool)

(declare-fun t!180930 () Bool)

(assert (=> (and b!1934238 (= (toValue!5585 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (toValue!5585 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741380)))))) t!180930) tb!119185))

(declare-fun result!143882 () Bool)

(assert (= result!143882 result!143874))

(assert (=> d!590557 t!180930))

(declare-fun b_and!152605 () Bool)

(assert (= b_and!152379 (and (=> t!180930 result!143882) b_and!152605)))

(assert (=> d!590557 m!2372825))

(declare-fun m!2375329 () Bool)

(assert (=> d!590557 m!2375329))

(assert (=> b!1933993 d!590557))

(declare-fun d!590559 () Bool)

(assert (=> d!590559 (= (seqFromList!2798 (originalCharacters!4751 (_1!11772 (get!6933 lt!741380)))) (fromListB!1246 (originalCharacters!4751 (_1!11772 (get!6933 lt!741380)))))))

(declare-fun bs!415327 () Bool)

(assert (= bs!415327 d!590559))

(declare-fun m!2375331 () Bool)

(assert (=> bs!415327 m!2375331))

(assert (=> b!1933993 d!590559))

(assert (=> bm!118925 d!590443))

(declare-fun d!590561 () Bool)

(assert (=> d!590561 (= (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 (h!27386 tokens!598))))) (v!26679 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 (h!27386 tokens!598))))))))

(assert (=> b!1933695 d!590561))

(assert (=> b!1933695 d!589745))

(assert (=> b!1933901 d!590403))

(declare-fun d!590563 () Bool)

(assert (=> d!590563 (= (inv!29082 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (value!123995 (h!27386 tokens!598)))) (isBalanced!2273 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (value!123995 (h!27386 tokens!598))))))))

(declare-fun bs!415328 () Bool)

(assert (= bs!415328 d!590563))

(declare-fun m!2375333 () Bool)

(assert (=> bs!415328 m!2375333))

(assert (=> tb!118939 d!590563))

(declare-fun d!590565 () Bool)

(declare-fun res!865372 () Bool)

(declare-fun e!1237067 () Bool)

(assert (=> d!590565 (=> (not res!865372) (not e!1237067))))

(assert (=> d!590565 (= res!865372 (not (isEmpty!13567 (originalCharacters!4751 (h!27386 (t!180606 tokens!598))))))))

(assert (=> d!590565 (= (inv!29077 (h!27386 (t!180606 tokens!598))) e!1237067)))

(declare-fun b!1935494 () Bool)

(declare-fun res!865373 () Bool)

(assert (=> b!1935494 (=> (not res!865373) (not e!1237067))))

(assert (=> b!1935494 (= res!865373 (= (originalCharacters!4751 (h!27386 (t!180606 tokens!598))) (list!8905 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (value!123995 (h!27386 (t!180606 tokens!598)))))))))

(declare-fun b!1935495 () Bool)

(assert (=> b!1935495 (= e!1237067 (= (size!17148 (h!27386 (t!180606 tokens!598))) (size!17151 (originalCharacters!4751 (h!27386 (t!180606 tokens!598))))))))

(assert (= (and d!590565 res!865372) b!1935494))

(assert (= (and b!1935494 res!865373) b!1935495))

(declare-fun b_lambda!64443 () Bool)

(assert (=> (not b_lambda!64443) (not b!1935494)))

(assert (=> b!1935494 t!180845))

(declare-fun b_and!152607 () Bool)

(assert (= b_and!152595 (and (=> t!180845 result!143796) b_and!152607)))

(assert (=> b!1935494 t!180847))

(declare-fun b_and!152609 () Bool)

(assert (= b_and!152589 (and (=> t!180847 result!143798) b_and!152609)))

(assert (=> b!1935494 t!180843))

(declare-fun b_and!152611 () Bool)

(assert (= b_and!152587 (and (=> t!180843 result!143794) b_and!152611)))

(assert (=> b!1935494 t!180839))

(declare-fun b_and!152613 () Bool)

(assert (= b_and!152593 (and (=> t!180839 result!143790) b_and!152613)))

(assert (=> b!1935494 t!180841))

(declare-fun b_and!152615 () Bool)

(assert (= b_and!152591 (and (=> t!180841 result!143792) b_and!152615)))

(declare-fun m!2375335 () Bool)

(assert (=> d!590565 m!2375335))

(assert (=> b!1935494 m!2374723))

(assert (=> b!1935494 m!2374723))

(declare-fun m!2375337 () Bool)

(assert (=> b!1935494 m!2375337))

(declare-fun m!2375339 () Bool)

(assert (=> b!1935495 m!2375339))

(assert (=> b!1934235 d!590565))

(assert (=> b!1933906 d!590437))

(assert (=> b!1933906 d!590439))

(declare-fun b!1935496 () Bool)

(declare-fun e!1237068 () Option!4565)

(assert (=> b!1935496 (= e!1237068 None!4564)))

(declare-fun d!590567 () Bool)

(declare-fun e!1237069 () Bool)

(assert (=> d!590567 e!1237069))

(declare-fun res!865375 () Bool)

(assert (=> d!590567 (=> res!865375 e!1237069)))

(declare-fun lt!742104 () Option!4565)

(assert (=> d!590567 (= res!865375 (isEmpty!13574 lt!742104))))

(declare-fun e!1237070 () Option!4565)

(assert (=> d!590567 (= lt!742104 e!1237070)))

(declare-fun c!314922 () Bool)

(assert (=> d!590567 (= c!314922 (and ((_ is Cons!21984) (t!180605 rules!3198)) (= (tag!4398 (h!27385 (t!180605 rules!3198))) (tag!4398 (rule!6153 (h!27386 tokens!598))))))))

(assert (=> d!590567 (rulesInvariant!3164 thiss!23328 (t!180605 rules!3198))))

(assert (=> d!590567 (= (getRuleFromTag!765 thiss!23328 (t!180605 rules!3198) (tag!4398 (rule!6153 (h!27386 tokens!598)))) lt!742104)))

(declare-fun b!1935497 () Bool)

(assert (=> b!1935497 (= e!1237070 (Some!4564 (h!27385 (t!180605 rules!3198))))))

(declare-fun b!1935498 () Bool)

(declare-fun lt!742105 () Unit!36346)

(declare-fun lt!742106 () Unit!36346)

(assert (=> b!1935498 (= lt!742105 lt!742106)))

(assert (=> b!1935498 (rulesInvariant!3164 thiss!23328 (t!180605 (t!180605 rules!3198)))))

(assert (=> b!1935498 (= lt!742106 (lemmaInvariantOnRulesThenOnTail!278 thiss!23328 (h!27385 (t!180605 rules!3198)) (t!180605 (t!180605 rules!3198))))))

(assert (=> b!1935498 (= e!1237068 (getRuleFromTag!765 thiss!23328 (t!180605 (t!180605 rules!3198)) (tag!4398 (rule!6153 (h!27386 tokens!598)))))))

(declare-fun b!1935499 () Bool)

(declare-fun e!1237071 () Bool)

(assert (=> b!1935499 (= e!1237071 (= (tag!4398 (get!6932 lt!742104)) (tag!4398 (rule!6153 (h!27386 tokens!598)))))))

(declare-fun b!1935500 () Bool)

(assert (=> b!1935500 (= e!1237069 e!1237071)))

(declare-fun res!865374 () Bool)

(assert (=> b!1935500 (=> (not res!865374) (not e!1237071))))

(assert (=> b!1935500 (= res!865374 (contains!3983 (t!180605 rules!3198) (get!6932 lt!742104)))))

(declare-fun b!1935501 () Bool)

(assert (=> b!1935501 (= e!1237070 e!1237068)))

(declare-fun c!314923 () Bool)

(assert (=> b!1935501 (= c!314923 (and ((_ is Cons!21984) (t!180605 rules!3198)) (not (= (tag!4398 (h!27385 (t!180605 rules!3198))) (tag!4398 (rule!6153 (h!27386 tokens!598)))))))))

(assert (= (and d!590567 c!314922) b!1935497))

(assert (= (and d!590567 (not c!314922)) b!1935501))

(assert (= (and b!1935501 c!314923) b!1935498))

(assert (= (and b!1935501 (not c!314923)) b!1935496))

(assert (= (and d!590567 (not res!865375)) b!1935500))

(assert (= (and b!1935500 res!865374) b!1935499))

(declare-fun m!2375341 () Bool)

(assert (=> d!590567 m!2375341))

(assert (=> d!590567 m!2372639))

(assert (=> b!1935498 m!2374779))

(assert (=> b!1935498 m!2374781))

(declare-fun m!2375343 () Bool)

(assert (=> b!1935498 m!2375343))

(declare-fun m!2375345 () Bool)

(assert (=> b!1935499 m!2375345))

(assert (=> b!1935500 m!2375345))

(assert (=> b!1935500 m!2375345))

(declare-fun m!2375347 () Bool)

(assert (=> b!1935500 m!2375347))

(assert (=> b!1933906 d!590567))

(declare-fun b!1935502 () Bool)

(declare-fun e!1237072 () List!22064)

(assert (=> b!1935502 (= e!1237072 Nil!21982)))

(declare-fun d!590569 () Bool)

(declare-fun c!314924 () Bool)

(assert (=> d!590569 (= c!314924 ((_ is Empty!7342) (c!314508 (charsOf!2484 separatorToken!354))))))

(assert (=> d!590569 (= (list!8908 (c!314508 (charsOf!2484 separatorToken!354))) e!1237072)))

(declare-fun b!1935504 () Bool)

(declare-fun e!1237073 () List!22064)

(assert (=> b!1935504 (= e!1237073 (list!8913 (xs!10236 (c!314508 (charsOf!2484 separatorToken!354)))))))

(declare-fun b!1935503 () Bool)

(assert (=> b!1935503 (= e!1237072 e!1237073)))

(declare-fun c!314925 () Bool)

(assert (=> b!1935503 (= c!314925 ((_ is Leaf!10777) (c!314508 (charsOf!2484 separatorToken!354))))))

(declare-fun b!1935505 () Bool)

(assert (=> b!1935505 (= e!1237073 (++!5905 (list!8908 (left!17488 (c!314508 (charsOf!2484 separatorToken!354)))) (list!8908 (right!17818 (c!314508 (charsOf!2484 separatorToken!354))))))))

(assert (= (and d!590569 c!314924) b!1935502))

(assert (= (and d!590569 (not c!314924)) b!1935503))

(assert (= (and b!1935503 c!314925) b!1935504))

(assert (= (and b!1935503 (not c!314925)) b!1935505))

(declare-fun m!2375349 () Bool)

(assert (=> b!1935504 m!2375349))

(declare-fun m!2375351 () Bool)

(assert (=> b!1935505 m!2375351))

(declare-fun m!2375353 () Bool)

(assert (=> b!1935505 m!2375353))

(assert (=> b!1935505 m!2375351))

(assert (=> b!1935505 m!2375353))

(declare-fun m!2375355 () Bool)

(assert (=> b!1935505 m!2375355))

(assert (=> d!589733 d!590569))

(declare-fun lt!742107 () Bool)

(declare-fun d!590571 () Bool)

(assert (=> d!590571 (= lt!742107 (isEmpty!13567 (list!8905 (_2!11771 (lex!1581 thiss!23328 rules!3198 (print!1527 thiss!23328 (singletonSeq!1928 separatorToken!354)))))))))

(assert (=> d!590571 (= lt!742107 (isEmpty!13577 (c!314508 (_2!11771 (lex!1581 thiss!23328 rules!3198 (print!1527 thiss!23328 (singletonSeq!1928 separatorToken!354)))))))))

(assert (=> d!590571 (= (isEmpty!13568 (_2!11771 (lex!1581 thiss!23328 rules!3198 (print!1527 thiss!23328 (singletonSeq!1928 separatorToken!354))))) lt!742107)))

(declare-fun bs!415329 () Bool)

(assert (= bs!415329 d!590571))

(declare-fun m!2375357 () Bool)

(assert (=> bs!415329 m!2375357))

(assert (=> bs!415329 m!2375357))

(declare-fun m!2375359 () Bool)

(assert (=> bs!415329 m!2375359))

(declare-fun m!2375361 () Bool)

(assert (=> bs!415329 m!2375361))

(assert (=> b!1934001 d!590571))

(assert (=> b!1934001 d!590241))

(assert (=> b!1934001 d!590235))

(assert (=> b!1934001 d!590233))

(declare-fun bs!415330 () Bool)

(declare-fun d!590573 () Bool)

(assert (= bs!415330 (and d!590573 d!589919)))

(declare-fun lambda!75430 () Int)

(assert (=> bs!415330 (= lambda!75430 lambda!75405)))

(assert (=> d!590573 true))

(declare-fun lt!742110 () Bool)

(assert (=> d!590573 (= lt!742110 (rulesValidInductive!1348 thiss!23328 rules!3198))))

(assert (=> d!590573 (= lt!742110 (forall!4652 rules!3198 lambda!75430))))

(assert (=> d!590573 (= (rulesValid!1460 thiss!23328 rules!3198) lt!742110)))

(declare-fun bs!415331 () Bool)

(assert (= bs!415331 d!590573))

(assert (=> bs!415331 m!2372609))

(declare-fun m!2375363 () Bool)

(assert (=> bs!415331 m!2375363))

(assert (=> d!589827 d!590573))

(declare-fun d!590575 () Bool)

(declare-fun lt!742111 () Int)

(assert (=> d!590575 (>= lt!742111 0)))

(declare-fun e!1237074 () Int)

(assert (=> d!590575 (= lt!742111 e!1237074)))

(declare-fun c!314926 () Bool)

(assert (=> d!590575 (= c!314926 ((_ is Nil!21982) (_2!11772 (get!6933 lt!741380))))))

(assert (=> d!590575 (= (size!17151 (_2!11772 (get!6933 lt!741380))) lt!742111)))

(declare-fun b!1935506 () Bool)

(assert (=> b!1935506 (= e!1237074 0)))

(declare-fun b!1935507 () Bool)

(assert (=> b!1935507 (= e!1237074 (+ 1 (size!17151 (t!180603 (_2!11772 (get!6933 lt!741380))))))))

(assert (= (and d!590575 c!314926) b!1935506))

(assert (= (and d!590575 (not c!314926)) b!1935507))

(declare-fun m!2375365 () Bool)

(assert (=> b!1935507 m!2375365))

(assert (=> b!1933991 d!590575))

(assert (=> b!1933991 d!589997))

(assert (=> b!1933991 d!589981))

(declare-fun d!590577 () Bool)

(assert (=> d!590577 (= (inv!29082 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (value!123995 separatorToken!354))) (isBalanced!2273 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (value!123995 separatorToken!354)))))))

(declare-fun bs!415332 () Bool)

(assert (= bs!415332 d!590577))

(declare-fun m!2375367 () Bool)

(assert (=> bs!415332 m!2375367))

(assert (=> tb!118927 d!590577))

(declare-fun bs!415333 () Bool)

(declare-fun d!590579 () Bool)

(assert (= bs!415333 (and d!590579 d!589687)))

(declare-fun lambda!75431 () Int)

(assert (=> bs!415333 (= (= (toValue!5585 (transformation!3944 (rule!6153 separatorToken!354))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) (= lambda!75431 lambda!75383))))

(declare-fun bs!415334 () Bool)

(assert (= bs!415334 (and d!590579 d!590207)))

(assert (=> bs!415334 (= (= (toValue!5585 (transformation!3944 (rule!6153 separatorToken!354))) (toValue!5585 (transformation!3944 (h!27385 rules!3198)))) (= lambda!75431 lambda!75421))))

(declare-fun bs!415335 () Bool)

(assert (= bs!415335 (and d!590579 d!590345)))

(assert (=> bs!415335 (= (= (toValue!5585 (transformation!3944 (rule!6153 separatorToken!354))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) (= lambda!75431 lambda!75424))))

(assert (=> d!590579 true))

(assert (=> d!590579 (< (dynLambda!10697 order!13847 (toValue!5585 (transformation!3944 (rule!6153 separatorToken!354)))) (dynLambda!10698 order!13849 lambda!75431))))

(assert (=> d!590579 (= (equivClasses!1500 (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (toValue!5585 (transformation!3944 (rule!6153 separatorToken!354)))) (Forall2!629 lambda!75431))))

(declare-fun bs!415336 () Bool)

(assert (= bs!415336 d!590579))

(declare-fun m!2375369 () Bool)

(assert (=> bs!415336 m!2375369))

(assert (=> b!1934156 d!590579))

(assert (=> b!1933871 d!589925))

(declare-fun d!590581 () Bool)

(assert (=> d!590581 (= (apply!5725 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741305)))) (seqFromList!2798 (originalCharacters!4751 (_1!11772 (get!6933 lt!741305))))) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741305))))) (seqFromList!2798 (originalCharacters!4751 (_1!11772 (get!6933 lt!741305))))))))

(declare-fun b_lambda!64445 () Bool)

(assert (=> (not b_lambda!64445) (not d!590581)))

(declare-fun t!180932 () Bool)

(declare-fun tb!119187 () Bool)

(assert (=> (and b!1934216 (= (toValue!5585 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toValue!5585 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741305)))))) t!180932) tb!119187))

(declare-fun result!143884 () Bool)

(assert (=> tb!119187 (= result!143884 (inv!21 (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741305))))) (seqFromList!2798 (originalCharacters!4751 (_1!11772 (get!6933 lt!741305)))))))))

(declare-fun m!2375371 () Bool)

(assert (=> tb!119187 m!2375371))

(assert (=> d!590581 t!180932))

(declare-fun b_and!152617 () Bool)

(assert (= b_and!152603 (and (=> t!180932 result!143884) b_and!152617)))

(declare-fun tb!119189 () Bool)

(declare-fun t!180934 () Bool)

(assert (=> (and b!1933530 (= (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (toValue!5585 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741305)))))) t!180934) tb!119189))

(declare-fun result!143886 () Bool)

(assert (= result!143886 result!143884))

(assert (=> d!590581 t!180934))

(declare-fun b_and!152619 () Bool)

(assert (= b_and!152599 (and (=> t!180934 result!143886) b_and!152619)))

(declare-fun t!180936 () Bool)

(declare-fun tb!119191 () Bool)

(assert (=> (and b!1933518 (= (toValue!5585 (transformation!3944 (h!27385 rules!3198))) (toValue!5585 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741305)))))) t!180936) tb!119191))

(declare-fun result!143888 () Bool)

(assert (= result!143888 result!143884))

(assert (=> d!590581 t!180936))

(declare-fun b_and!152621 () Bool)

(assert (= b_and!152601 (and (=> t!180936 result!143888) b_and!152621)))

(declare-fun t!180938 () Bool)

(declare-fun tb!119193 () Bool)

(assert (=> (and b!1934238 (= (toValue!5585 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))) (toValue!5585 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741305)))))) t!180938) tb!119193))

(declare-fun result!143890 () Bool)

(assert (= result!143890 result!143884))

(assert (=> d!590581 t!180938))

(declare-fun b_and!152623 () Bool)

(assert (= b_and!152605 (and (=> t!180938 result!143890) b_and!152623)))

(declare-fun tb!119195 () Bool)

(declare-fun t!180940 () Bool)

(assert (=> (and b!1933531 (= (toValue!5585 (transformation!3944 (rule!6153 separatorToken!354))) (toValue!5585 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741305)))))) t!180940) tb!119195))

(declare-fun result!143892 () Bool)

(assert (= result!143892 result!143884))

(assert (=> d!590581 t!180940))

(declare-fun b_and!152625 () Bool)

(assert (= b_and!152597 (and (=> t!180940 result!143892) b_and!152625)))

(assert (=> d!590581 m!2372613))

(declare-fun m!2375373 () Bool)

(assert (=> d!590581 m!2375373))

(assert (=> b!1933871 d!590581))

(declare-fun d!590583 () Bool)

(assert (=> d!590583 (= (seqFromList!2798 (originalCharacters!4751 (_1!11772 (get!6933 lt!741305)))) (fromListB!1246 (originalCharacters!4751 (_1!11772 (get!6933 lt!741305)))))))

(declare-fun bs!415337 () Bool)

(assert (= bs!415337 d!590583))

(declare-fun m!2375375 () Bool)

(assert (=> bs!415337 m!2375375))

(assert (=> b!1933871 d!590583))

(declare-fun d!590585 () Bool)

(declare-fun c!314929 () Bool)

(assert (=> d!590585 (= c!314929 ((_ is Nil!21982) lt!741233))))

(declare-fun e!1237078 () (InoxSet C!10884))

(assert (=> d!590585 (= (content!3187 lt!741233) e!1237078)))

(declare-fun b!1935512 () Bool)

(assert (=> b!1935512 (= e!1237078 ((as const (Array C!10884 Bool)) false))))

(declare-fun b!1935513 () Bool)

(assert (=> b!1935513 (= e!1237078 ((_ map or) (store ((as const (Array C!10884 Bool)) false) (h!27383 lt!741233) true) (content!3187 (t!180603 lt!741233))))))

(assert (= (and d!590585 c!314929) b!1935512))

(assert (= (and d!590585 (not c!314929)) b!1935513))

(declare-fun m!2375377 () Bool)

(assert (=> b!1935513 m!2375377))

(declare-fun m!2375379 () Bool)

(assert (=> b!1935513 m!2375379))

(assert (=> d!589679 d!590585))

(declare-fun d!590587 () Bool)

(declare-fun c!314930 () Bool)

(assert (=> d!590587 (= c!314930 ((_ is Nil!21982) lt!741158))))

(declare-fun e!1237079 () (InoxSet C!10884))

(assert (=> d!590587 (= (content!3187 lt!741158) e!1237079)))

(declare-fun b!1935514 () Bool)

(assert (=> b!1935514 (= e!1237079 ((as const (Array C!10884 Bool)) false))))

(declare-fun b!1935515 () Bool)

(assert (=> b!1935515 (= e!1237079 ((_ map or) (store ((as const (Array C!10884 Bool)) false) (h!27383 lt!741158) true) (content!3187 (t!180603 lt!741158))))))

(assert (= (and d!590587 c!314930) b!1935514))

(assert (= (and d!590587 (not c!314930)) b!1935515))

(declare-fun m!2375381 () Bool)

(assert (=> b!1935515 m!2375381))

(assert (=> b!1935515 m!2374579))

(assert (=> d!589679 d!590587))

(declare-fun c!314931 () Bool)

(declare-fun d!590589 () Bool)

(assert (=> d!590589 (= c!314931 ((_ is Nil!21982) (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)))))

(declare-fun e!1237080 () (InoxSet C!10884))

(assert (=> d!590589 (= (content!3187 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)) e!1237080)))

(declare-fun b!1935516 () Bool)

(assert (=> b!1935516 (= e!1237080 ((as const (Array C!10884 Bool)) false))))

(declare-fun b!1935517 () Bool)

(assert (=> b!1935517 (= e!1237080 ((_ map or) (store ((as const (Array C!10884 Bool)) false) (h!27383 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)) true) (content!3187 (t!180603 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)))))))

(assert (= (and d!590589 c!314931) b!1935516))

(assert (= (and d!590589 (not c!314931)) b!1935517))

(declare-fun m!2375383 () Bool)

(assert (=> b!1935517 m!2375383))

(declare-fun m!2375385 () Bool)

(assert (=> b!1935517 m!2375385))

(assert (=> d!589679 d!590589))

(declare-fun d!590591 () Bool)

(assert (=> d!590591 (= (isDefined!3858 lt!741305) (not (isEmpty!13571 lt!741305)))))

(declare-fun bs!415338 () Bool)

(assert (= bs!415338 d!590591))

(assert (=> bs!415338 m!2372603))

(assert (=> b!1933868 d!590591))

(declare-fun d!590593 () Bool)

(assert (=> d!590593 (= (nullable!1616 (regex!3944 lt!741169)) (nullableFct!366 (regex!3944 lt!741169)))))

(declare-fun bs!415339 () Bool)

(assert (= bs!415339 d!590593))

(declare-fun m!2375387 () Bool)

(assert (=> bs!415339 m!2375387))

(assert (=> b!1933613 d!590593))

(declare-fun d!590595 () Bool)

(declare-fun res!865376 () Bool)

(declare-fun e!1237081 () Bool)

(assert (=> d!590595 (=> res!865376 e!1237081)))

(assert (=> d!590595 (= res!865376 ((_ is Nil!21985) (t!180606 tokens!598)))))

(assert (=> d!590595 (= (forall!4650 (t!180606 tokens!598) lambda!75371) e!1237081)))

(declare-fun b!1935518 () Bool)

(declare-fun e!1237082 () Bool)

(assert (=> b!1935518 (= e!1237081 e!1237082)))

(declare-fun res!865377 () Bool)

(assert (=> b!1935518 (=> (not res!865377) (not e!1237082))))

(assert (=> b!1935518 (= res!865377 (dynLambda!10704 lambda!75371 (h!27386 (t!180606 tokens!598))))))

(declare-fun b!1935519 () Bool)

(assert (=> b!1935519 (= e!1237082 (forall!4650 (t!180606 (t!180606 tokens!598)) lambda!75371))))

(assert (= (and d!590595 (not res!865376)) b!1935518))

(assert (= (and b!1935518 res!865377) b!1935519))

(declare-fun b_lambda!64447 () Bool)

(assert (=> (not b_lambda!64447) (not b!1935518)))

(declare-fun m!2375389 () Bool)

(assert (=> b!1935518 m!2375389))

(declare-fun m!2375391 () Bool)

(assert (=> b!1935519 m!2375391))

(assert (=> b!1934007 d!590595))

(assert (=> b!1933968 d!590435))

(assert (=> b!1933968 d!590429))

(assert (=> bm!118965 d!590195))

(declare-fun d!590597 () Bool)

(declare-fun c!314932 () Bool)

(assert (=> d!590597 (= c!314932 ((_ is Node!7342) (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (value!123995 separatorToken!354)))))))

(declare-fun e!1237083 () Bool)

(assert (=> d!590597 (= (inv!29081 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (value!123995 separatorToken!354)))) e!1237083)))

(declare-fun b!1935520 () Bool)

(assert (=> b!1935520 (= e!1237083 (inv!29083 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (value!123995 separatorToken!354)))))))

(declare-fun b!1935521 () Bool)

(declare-fun e!1237084 () Bool)

(assert (=> b!1935521 (= e!1237083 e!1237084)))

(declare-fun res!865378 () Bool)

(assert (=> b!1935521 (= res!865378 (not ((_ is Leaf!10777) (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (value!123995 separatorToken!354))))))))

(assert (=> b!1935521 (=> res!865378 e!1237084)))

(declare-fun b!1935522 () Bool)

(assert (=> b!1935522 (= e!1237084 (inv!29084 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (value!123995 separatorToken!354)))))))

(assert (= (and d!590597 c!314932) b!1935520))

(assert (= (and d!590597 (not c!314932)) b!1935521))

(assert (= (and b!1935521 (not res!865378)) b!1935522))

(declare-fun m!2375393 () Bool)

(assert (=> b!1935520 m!2375393))

(declare-fun m!2375395 () Bool)

(assert (=> b!1935522 m!2375395))

(assert (=> b!1933843 d!590597))

(declare-fun d!590599 () Bool)

(declare-fun res!865383 () Bool)

(declare-fun e!1237089 () Bool)

(assert (=> d!590599 (=> res!865383 e!1237089)))

(assert (=> d!590599 (= res!865383 ((_ is Nil!21984) rules!3198))))

(assert (=> d!590599 (= (noDuplicateTag!1458 thiss!23328 rules!3198 Nil!21987) e!1237089)))

(declare-fun b!1935527 () Bool)

(declare-fun e!1237090 () Bool)

(assert (=> b!1935527 (= e!1237089 e!1237090)))

(declare-fun res!865384 () Bool)

(assert (=> b!1935527 (=> (not res!865384) (not e!1237090))))

(declare-fun contains!3987 (List!22069 String!25518) Bool)

(assert (=> b!1935527 (= res!865384 (not (contains!3987 Nil!21987 (tag!4398 (h!27385 rules!3198)))))))

(declare-fun b!1935528 () Bool)

(assert (=> b!1935528 (= e!1237090 (noDuplicateTag!1458 thiss!23328 (t!180605 rules!3198) (Cons!21987 (tag!4398 (h!27385 rules!3198)) Nil!21987)))))

(assert (= (and d!590599 (not res!865383)) b!1935527))

(assert (= (and b!1935527 res!865384) b!1935528))

(declare-fun m!2375397 () Bool)

(assert (=> b!1935527 m!2375397))

(declare-fun m!2375399 () Bool)

(assert (=> b!1935528 m!2375399))

(assert (=> b!1934160 d!590599))

(assert (=> b!1933657 d!590373))

(declare-fun b!1935529 () Bool)

(declare-fun e!1237093 () Bool)

(assert (=> b!1935529 (= e!1237093 (inv!16 (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (seqFromList!2798 (originalCharacters!4751 (h!27386 tokens!598))))))))

(declare-fun b!1935530 () Bool)

(declare-fun res!865385 () Bool)

(declare-fun e!1237091 () Bool)

(assert (=> b!1935530 (=> res!865385 e!1237091)))

(assert (=> b!1935530 (= res!865385 (not ((_ is IntegerValue!12242) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (seqFromList!2798 (originalCharacters!4751 (h!27386 tokens!598)))))))))

(declare-fun e!1237092 () Bool)

(assert (=> b!1935530 (= e!1237092 e!1237091)))

(declare-fun b!1935531 () Bool)

(assert (=> b!1935531 (= e!1237091 (inv!15 (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (seqFromList!2798 (originalCharacters!4751 (h!27386 tokens!598))))))))

(declare-fun d!590601 () Bool)

(declare-fun c!314933 () Bool)

(assert (=> d!590601 (= c!314933 ((_ is IntegerValue!12240) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (seqFromList!2798 (originalCharacters!4751 (h!27386 tokens!598))))))))

(assert (=> d!590601 (= (inv!21 (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (seqFromList!2798 (originalCharacters!4751 (h!27386 tokens!598))))) e!1237093)))

(declare-fun b!1935532 () Bool)

(assert (=> b!1935532 (= e!1237093 e!1237092)))

(declare-fun c!314934 () Bool)

(assert (=> b!1935532 (= c!314934 ((_ is IntegerValue!12241) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (seqFromList!2798 (originalCharacters!4751 (h!27386 tokens!598))))))))

(declare-fun b!1935533 () Bool)

(assert (=> b!1935533 (= e!1237092 (inv!17 (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (seqFromList!2798 (originalCharacters!4751 (h!27386 tokens!598))))))))

(assert (= (and d!590601 c!314933) b!1935529))

(assert (= (and d!590601 (not c!314933)) b!1935532))

(assert (= (and b!1935532 c!314934) b!1935533))

(assert (= (and b!1935532 (not c!314934)) b!1935530))

(assert (= (and b!1935530 (not res!865385)) b!1935531))

(declare-fun m!2375401 () Bool)

(assert (=> b!1935529 m!2375401))

(declare-fun m!2375403 () Bool)

(assert (=> b!1935531 m!2375403))

(declare-fun m!2375405 () Bool)

(assert (=> b!1935533 m!2375405))

(assert (=> tb!118921 d!590601))

(declare-fun d!590603 () Bool)

(assert (=> d!590603 (= (inv!15 (value!123995 (h!27386 tokens!598))) (= (charsToBigInt!0 (text!29009 (value!123995 (h!27386 tokens!598))) 0) (value!123990 (value!123995 (h!27386 tokens!598)))))))

(declare-fun bs!415340 () Bool)

(assert (= bs!415340 d!590603))

(declare-fun m!2375407 () Bool)

(assert (=> bs!415340 m!2375407))

(assert (=> b!1933634 d!590603))

(declare-fun d!590605 () Bool)

(assert (=> d!590605 (= (isDefined!3857 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 (h!27386 tokens!598))))) (not (isEmpty!13574 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 (h!27386 tokens!598)))))))))

(declare-fun bs!415341 () Bool)

(assert (= bs!415341 d!590605))

(assert (=> bs!415341 m!2372149))

(declare-fun m!2375409 () Bool)

(assert (=> bs!415341 m!2375409))

(assert (=> d!589683 d!590605))

(assert (=> d!589683 d!589745))

(declare-fun d!590607 () Bool)

(declare-fun e!1237094 () Bool)

(assert (=> d!590607 e!1237094))

(declare-fun res!865386 () Bool)

(assert (=> d!590607 (=> (not res!865386) (not e!1237094))))

(assert (=> d!590607 (= res!865386 (isDefined!3857 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 (h!27386 tokens!598))))))))

(assert (=> d!590607 true))

(declare-fun _$52!1252 () Unit!36346)

(assert (=> d!590607 (= (choose!12012 thiss!23328 rules!3198 lt!741158 (h!27386 tokens!598)) _$52!1252)))

(declare-fun b!1935534 () Bool)

(declare-fun res!865387 () Bool)

(assert (=> b!1935534 (=> (not res!865387) (not e!1237094))))

(assert (=> b!1935534 (= res!865387 (matchR!2637 (regex!3944 (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 (h!27386 tokens!598)))))) (list!8905 (charsOf!2484 (h!27386 tokens!598)))))))

(declare-fun b!1935535 () Bool)

(assert (=> b!1935535 (= e!1237094 (= (rule!6153 (h!27386 tokens!598)) (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 (h!27386 tokens!598)))))))))

(assert (= (and d!590607 res!865386) b!1935534))

(assert (= (and b!1935534 res!865387) b!1935535))

(assert (=> d!590607 m!2372149))

(assert (=> d!590607 m!2372149))

(assert (=> d!590607 m!2372379))

(assert (=> b!1935534 m!2372383))

(assert (=> b!1935534 m!2372385))

(assert (=> b!1935534 m!2372149))

(assert (=> b!1935534 m!2372387))

(assert (=> b!1935534 m!2372161))

(assert (=> b!1935534 m!2372161))

(assert (=> b!1935534 m!2372383))

(assert (=> b!1935534 m!2372149))

(assert (=> b!1935535 m!2372149))

(assert (=> b!1935535 m!2372149))

(assert (=> b!1935535 m!2372387))

(assert (=> d!589683 d!590607))

(assert (=> d!589683 d!589827))

(declare-fun b!1935536 () Bool)

(declare-fun e!1237095 () List!22064)

(assert (=> b!1935536 (= e!1237095 Nil!21982)))

(declare-fun d!590609 () Bool)

(declare-fun c!314935 () Bool)

(assert (=> d!590609 (= c!314935 ((_ is Empty!7342) (c!314508 lt!741164)))))

(assert (=> d!590609 (= (list!8908 (c!314508 lt!741164)) e!1237095)))

(declare-fun b!1935538 () Bool)

(declare-fun e!1237096 () List!22064)

(assert (=> b!1935538 (= e!1237096 (list!8913 (xs!10236 (c!314508 lt!741164))))))

(declare-fun b!1935537 () Bool)

(assert (=> b!1935537 (= e!1237095 e!1237096)))

(declare-fun c!314936 () Bool)

(assert (=> b!1935537 (= c!314936 ((_ is Leaf!10777) (c!314508 lt!741164)))))

(declare-fun b!1935539 () Bool)

(assert (=> b!1935539 (= e!1237096 (++!5905 (list!8908 (left!17488 (c!314508 lt!741164))) (list!8908 (right!17818 (c!314508 lt!741164)))))))

(assert (= (and d!590609 c!314935) b!1935536))

(assert (= (and d!590609 (not c!314935)) b!1935537))

(assert (= (and b!1935537 c!314936) b!1935538))

(assert (= (and b!1935537 (not c!314936)) b!1935539))

(declare-fun m!2375411 () Bool)

(assert (=> b!1935538 m!2375411))

(declare-fun m!2375413 () Bool)

(assert (=> b!1935539 m!2375413))

(declare-fun m!2375415 () Bool)

(assert (=> b!1935539 m!2375415))

(assert (=> b!1935539 m!2375413))

(assert (=> b!1935539 m!2375415))

(declare-fun m!2375417 () Bool)

(assert (=> b!1935539 m!2375417))

(assert (=> d!589677 d!590609))

(declare-fun d!590611 () Bool)

(assert (=> d!590611 (= (list!8907 (_1!11771 lt!741400)) (list!8912 (c!314510 (_1!11771 lt!741400))))))

(declare-fun bs!415342 () Bool)

(assert (= bs!415342 d!590611))

(declare-fun m!2375419 () Bool)

(assert (=> bs!415342 m!2375419))

(assert (=> b!1934152 d!590611))

(assert (=> b!1934152 d!590147))

(assert (=> b!1934152 d!590171))

(declare-fun b!1935540 () Bool)

(declare-fun e!1237100 () Bool)

(declare-fun e!1237097 () Bool)

(assert (=> b!1935540 (= e!1237100 e!1237097)))

(declare-fun res!865390 () Bool)

(assert (=> b!1935540 (=> (not res!865390) (not e!1237097))))

(declare-fun lt!742112 () Bool)

(assert (=> b!1935540 (= res!865390 (not lt!742112))))

(declare-fun b!1935541 () Bool)

(declare-fun res!865395 () Bool)

(assert (=> b!1935541 (=> res!865395 e!1237100)))

(assert (=> b!1935541 (= res!865395 (not ((_ is ElementMatch!5369) (regex!3944 (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 (h!27386 tokens!598)))))))))))

(declare-fun e!1237098 () Bool)

(assert (=> b!1935541 (= e!1237098 e!1237100)))

(declare-fun bm!119062 () Bool)

(declare-fun call!119067 () Bool)

(assert (=> bm!119062 (= call!119067 (isEmpty!13567 (list!8905 (charsOf!2484 (h!27386 tokens!598)))))))

(declare-fun b!1935542 () Bool)

(declare-fun e!1237099 () Bool)

(assert (=> b!1935542 (= e!1237099 (matchR!2637 (derivativeStep!1375 (regex!3944 (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 (h!27386 tokens!598)))))) (head!4509 (list!8905 (charsOf!2484 (h!27386 tokens!598))))) (tail!2995 (list!8905 (charsOf!2484 (h!27386 tokens!598))))))))

(declare-fun b!1935543 () Bool)

(declare-fun res!865393 () Bool)

(declare-fun e!1237102 () Bool)

(assert (=> b!1935543 (=> (not res!865393) (not e!1237102))))

(assert (=> b!1935543 (= res!865393 (isEmpty!13567 (tail!2995 (list!8905 (charsOf!2484 (h!27386 tokens!598))))))))

(declare-fun b!1935544 () Bool)

(declare-fun e!1237101 () Bool)

(assert (=> b!1935544 (= e!1237101 (= lt!742112 call!119067))))

(declare-fun b!1935545 () Bool)

(declare-fun res!865392 () Bool)

(assert (=> b!1935545 (=> (not res!865392) (not e!1237102))))

(assert (=> b!1935545 (= res!865392 (not call!119067))))

(declare-fun b!1935547 () Bool)

(declare-fun res!865389 () Bool)

(declare-fun e!1237103 () Bool)

(assert (=> b!1935547 (=> res!865389 e!1237103)))

(assert (=> b!1935547 (= res!865389 (not (isEmpty!13567 (tail!2995 (list!8905 (charsOf!2484 (h!27386 tokens!598)))))))))

(declare-fun b!1935548 () Bool)

(assert (=> b!1935548 (= e!1237099 (nullable!1616 (regex!3944 (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 (h!27386 tokens!598))))))))))

(declare-fun b!1935549 () Bool)

(assert (=> b!1935549 (= e!1237102 (= (head!4509 (list!8905 (charsOf!2484 (h!27386 tokens!598)))) (c!314509 (regex!3944 (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 (h!27386 tokens!598)))))))))))

(declare-fun d!590613 () Bool)

(assert (=> d!590613 e!1237101))

(declare-fun c!314938 () Bool)

(assert (=> d!590613 (= c!314938 ((_ is EmptyExpr!5369) (regex!3944 (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 (h!27386 tokens!598))))))))))

(assert (=> d!590613 (= lt!742112 e!1237099)))

(declare-fun c!314939 () Bool)

(assert (=> d!590613 (= c!314939 (isEmpty!13567 (list!8905 (charsOf!2484 (h!27386 tokens!598)))))))

(assert (=> d!590613 (validRegex!2142 (regex!3944 (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 (h!27386 tokens!598)))))))))

(assert (=> d!590613 (= (matchR!2637 (regex!3944 (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 (h!27386 tokens!598)))))) (list!8905 (charsOf!2484 (h!27386 tokens!598)))) lt!742112)))

(declare-fun b!1935546 () Bool)

(assert (=> b!1935546 (= e!1237103 (not (= (head!4509 (list!8905 (charsOf!2484 (h!27386 tokens!598)))) (c!314509 (regex!3944 (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 (h!27386 tokens!598))))))))))))

(declare-fun b!1935550 () Bool)

(assert (=> b!1935550 (= e!1237098 (not lt!742112))))

(declare-fun b!1935551 () Bool)

(assert (=> b!1935551 (= e!1237101 e!1237098)))

(declare-fun c!314937 () Bool)

(assert (=> b!1935551 (= c!314937 ((_ is EmptyLang!5369) (regex!3944 (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 (h!27386 tokens!598))))))))))

(declare-fun b!1935552 () Bool)

(assert (=> b!1935552 (= e!1237097 e!1237103)))

(declare-fun res!865394 () Bool)

(assert (=> b!1935552 (=> res!865394 e!1237103)))

(assert (=> b!1935552 (= res!865394 call!119067)))

(declare-fun b!1935553 () Bool)

(declare-fun res!865388 () Bool)

(assert (=> b!1935553 (=> res!865388 e!1237100)))

(assert (=> b!1935553 (= res!865388 e!1237102)))

(declare-fun res!865391 () Bool)

(assert (=> b!1935553 (=> (not res!865391) (not e!1237102))))

(assert (=> b!1935553 (= res!865391 lt!742112)))

(assert (= (and d!590613 c!314939) b!1935548))

(assert (= (and d!590613 (not c!314939)) b!1935542))

(assert (= (and d!590613 c!314938) b!1935544))

(assert (= (and d!590613 (not c!314938)) b!1935551))

(assert (= (and b!1935551 c!314937) b!1935550))

(assert (= (and b!1935551 (not c!314937)) b!1935541))

(assert (= (and b!1935541 (not res!865395)) b!1935553))

(assert (= (and b!1935553 res!865391) b!1935545))

(assert (= (and b!1935545 res!865392) b!1935543))

(assert (= (and b!1935543 res!865393) b!1935549))

(assert (= (and b!1935553 (not res!865388)) b!1935540))

(assert (= (and b!1935540 res!865390) b!1935552))

(assert (= (and b!1935552 (not res!865394)) b!1935547))

(assert (= (and b!1935547 (not res!865389)) b!1935546))

(assert (= (or b!1935544 b!1935545 b!1935552) bm!119062))

(assert (=> b!1935547 m!2372383))

(declare-fun m!2375421 () Bool)

(assert (=> b!1935547 m!2375421))

(assert (=> b!1935547 m!2375421))

(declare-fun m!2375423 () Bool)

(assert (=> b!1935547 m!2375423))

(assert (=> b!1935542 m!2372383))

(declare-fun m!2375425 () Bool)

(assert (=> b!1935542 m!2375425))

(assert (=> b!1935542 m!2375425))

(declare-fun m!2375427 () Bool)

(assert (=> b!1935542 m!2375427))

(assert (=> b!1935542 m!2372383))

(assert (=> b!1935542 m!2375421))

(assert (=> b!1935542 m!2375427))

(assert (=> b!1935542 m!2375421))

(declare-fun m!2375429 () Bool)

(assert (=> b!1935542 m!2375429))

(assert (=> d!590613 m!2372383))

(declare-fun m!2375431 () Bool)

(assert (=> d!590613 m!2375431))

(declare-fun m!2375433 () Bool)

(assert (=> d!590613 m!2375433))

(assert (=> b!1935549 m!2372383))

(assert (=> b!1935549 m!2375425))

(assert (=> bm!119062 m!2372383))

(assert (=> bm!119062 m!2375431))

(assert (=> b!1935543 m!2372383))

(assert (=> b!1935543 m!2375421))

(assert (=> b!1935543 m!2375421))

(assert (=> b!1935543 m!2375423))

(declare-fun m!2375435 () Bool)

(assert (=> b!1935548 m!2375435))

(assert (=> b!1935546 m!2372383))

(assert (=> b!1935546 m!2375425))

(assert (=> b!1933694 d!590613))

(assert (=> b!1933694 d!590561))

(assert (=> b!1933694 d!589783))

(declare-fun d!590615 () Bool)

(assert (=> d!590615 (= (list!8905 (charsOf!2484 (h!27386 tokens!598))) (list!8908 (c!314508 (charsOf!2484 (h!27386 tokens!598)))))))

(declare-fun bs!415343 () Bool)

(assert (= bs!415343 d!590615))

(declare-fun m!2375437 () Bool)

(assert (=> bs!415343 m!2375437))

(assert (=> b!1933694 d!590615))

(assert (=> b!1933694 d!589745))

(declare-fun d!590617 () Bool)

(assert (=> d!590617 (= (isEmpty!13571 lt!741380) (not ((_ is Some!4565) lt!741380)))))

(assert (=> d!589787 d!590617))

(declare-fun b!1935556 () Bool)

(declare-fun e!1237106 () Bool)

(assert (=> b!1935556 (= e!1237106 (isPrefix!1949 (tail!2995 lt!741158) (tail!2995 lt!741158)))))

(declare-fun d!590619 () Bool)

(declare-fun e!1237105 () Bool)

(assert (=> d!590619 e!1237105))

(declare-fun res!865396 () Bool)

(assert (=> d!590619 (=> res!865396 e!1237105)))

(declare-fun lt!742113 () Bool)

(assert (=> d!590619 (= res!865396 (not lt!742113))))

(declare-fun e!1237104 () Bool)

(assert (=> d!590619 (= lt!742113 e!1237104)))

(declare-fun res!865399 () Bool)

(assert (=> d!590619 (=> res!865399 e!1237104)))

(assert (=> d!590619 (= res!865399 ((_ is Nil!21982) lt!741158))))

(assert (=> d!590619 (= (isPrefix!1949 lt!741158 lt!741158) lt!742113)))

(declare-fun b!1935554 () Bool)

(assert (=> b!1935554 (= e!1237104 e!1237106)))

(declare-fun res!865397 () Bool)

(assert (=> b!1935554 (=> (not res!865397) (not e!1237106))))

(assert (=> b!1935554 (= res!865397 (not ((_ is Nil!21982) lt!741158)))))

(declare-fun b!1935557 () Bool)

(assert (=> b!1935557 (= e!1237105 (>= (size!17151 lt!741158) (size!17151 lt!741158)))))

(declare-fun b!1935555 () Bool)

(declare-fun res!865398 () Bool)

(assert (=> b!1935555 (=> (not res!865398) (not e!1237106))))

(assert (=> b!1935555 (= res!865398 (= (head!4509 lt!741158) (head!4509 lt!741158)))))

(assert (= (and d!590619 (not res!865399)) b!1935554))

(assert (= (and b!1935554 res!865397) b!1935555))

(assert (= (and b!1935555 res!865398) b!1935556))

(assert (= (and d!590619 (not res!865396)) b!1935557))

(assert (=> b!1935556 m!2372247))

(assert (=> b!1935556 m!2372247))

(assert (=> b!1935556 m!2372247))

(assert (=> b!1935556 m!2372247))

(declare-fun m!2375439 () Bool)

(assert (=> b!1935556 m!2375439))

(assert (=> b!1935557 m!2372353))

(assert (=> b!1935557 m!2372353))

(assert (=> b!1935555 m!2372251))

(assert (=> b!1935555 m!2372251))

(assert (=> d!589787 d!590619))

(declare-fun d!590621 () Bool)

(assert (=> d!590621 (isPrefix!1949 lt!741158 lt!741158)))

(declare-fun lt!742114 () Unit!36346)

(assert (=> d!590621 (= lt!742114 (choose!12015 lt!741158 lt!741158))))

(assert (=> d!590621 (= (lemmaIsPrefixRefl!1267 lt!741158 lt!741158) lt!742114)))

(declare-fun bs!415344 () Bool)

(assert (= bs!415344 d!590621))

(assert (=> bs!415344 m!2372819))

(declare-fun m!2375441 () Bool)

(assert (=> bs!415344 m!2375441))

(assert (=> d!589787 d!590621))

(assert (=> d!589787 d!589919))

(declare-fun d!590623 () Bool)

(assert (=> d!590623 (= (list!8905 lt!741289) (list!8908 (c!314508 lt!741289)))))

(declare-fun bs!415345 () Bool)

(assert (= bs!415345 d!590623))

(declare-fun m!2375443 () Bool)

(assert (=> bs!415345 m!2375443))

(assert (=> d!589735 d!590623))

(assert (=> b!1933992 d!590407))

(assert (=> b!1933992 d!590409))

(assert (=> b!1933992 d!589997))

(declare-fun b!1935558 () Bool)

(declare-fun e!1237110 () Bool)

(declare-fun e!1237107 () Bool)

(assert (=> b!1935558 (= e!1237110 e!1237107)))

(declare-fun res!865402 () Bool)

(assert (=> b!1935558 (=> (not res!865402) (not e!1237107))))

(declare-fun lt!742115 () Bool)

(assert (=> b!1935558 (= res!865402 (not lt!742115))))

(declare-fun b!1935559 () Bool)

(declare-fun res!865407 () Bool)

(assert (=> b!1935559 (=> res!865407 e!1237110)))

(assert (=> b!1935559 (= res!865407 (not ((_ is ElementMatch!5369) (regex!3944 (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 separatorToken!354))))))))))

(declare-fun e!1237108 () Bool)

(assert (=> b!1935559 (= e!1237108 e!1237110)))

(declare-fun bm!119063 () Bool)

(declare-fun call!119068 () Bool)

(assert (=> bm!119063 (= call!119068 (isEmpty!13567 (list!8905 (charsOf!2484 separatorToken!354))))))

(declare-fun e!1237109 () Bool)

(declare-fun b!1935560 () Bool)

(assert (=> b!1935560 (= e!1237109 (matchR!2637 (derivativeStep!1375 (regex!3944 (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 separatorToken!354))))) (head!4509 (list!8905 (charsOf!2484 separatorToken!354)))) (tail!2995 (list!8905 (charsOf!2484 separatorToken!354)))))))

(declare-fun b!1935561 () Bool)

(declare-fun res!865405 () Bool)

(declare-fun e!1237112 () Bool)

(assert (=> b!1935561 (=> (not res!865405) (not e!1237112))))

(assert (=> b!1935561 (= res!865405 (isEmpty!13567 (tail!2995 (list!8905 (charsOf!2484 separatorToken!354)))))))

(declare-fun b!1935562 () Bool)

(declare-fun e!1237111 () Bool)

(assert (=> b!1935562 (= e!1237111 (= lt!742115 call!119068))))

(declare-fun b!1935563 () Bool)

(declare-fun res!865404 () Bool)

(assert (=> b!1935563 (=> (not res!865404) (not e!1237112))))

(assert (=> b!1935563 (= res!865404 (not call!119068))))

(declare-fun b!1935565 () Bool)

(declare-fun res!865401 () Bool)

(declare-fun e!1237113 () Bool)

(assert (=> b!1935565 (=> res!865401 e!1237113)))

(assert (=> b!1935565 (= res!865401 (not (isEmpty!13567 (tail!2995 (list!8905 (charsOf!2484 separatorToken!354))))))))

(declare-fun b!1935566 () Bool)

(assert (=> b!1935566 (= e!1237109 (nullable!1616 (regex!3944 (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 separatorToken!354)))))))))

(declare-fun b!1935567 () Bool)

(assert (=> b!1935567 (= e!1237112 (= (head!4509 (list!8905 (charsOf!2484 separatorToken!354))) (c!314509 (regex!3944 (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 separatorToken!354))))))))))

(declare-fun d!590625 () Bool)

(assert (=> d!590625 e!1237111))

(declare-fun c!314941 () Bool)

(assert (=> d!590625 (= c!314941 ((_ is EmptyExpr!5369) (regex!3944 (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 separatorToken!354)))))))))

(assert (=> d!590625 (= lt!742115 e!1237109)))

(declare-fun c!314942 () Bool)

(assert (=> d!590625 (= c!314942 (isEmpty!13567 (list!8905 (charsOf!2484 separatorToken!354))))))

(assert (=> d!590625 (validRegex!2142 (regex!3944 (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 separatorToken!354))))))))

(assert (=> d!590625 (= (matchR!2637 (regex!3944 (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 separatorToken!354))))) (list!8905 (charsOf!2484 separatorToken!354))) lt!742115)))

(declare-fun b!1935564 () Bool)

(assert (=> b!1935564 (= e!1237113 (not (= (head!4509 (list!8905 (charsOf!2484 separatorToken!354))) (c!314509 (regex!3944 (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 separatorToken!354)))))))))))

(declare-fun b!1935568 () Bool)

(assert (=> b!1935568 (= e!1237108 (not lt!742115))))

(declare-fun b!1935569 () Bool)

(assert (=> b!1935569 (= e!1237111 e!1237108)))

(declare-fun c!314940 () Bool)

(assert (=> b!1935569 (= c!314940 ((_ is EmptyLang!5369) (regex!3944 (get!6932 (getRuleFromTag!765 thiss!23328 rules!3198 (tag!4398 (rule!6153 separatorToken!354)))))))))

(declare-fun b!1935570 () Bool)

(assert (=> b!1935570 (= e!1237107 e!1237113)))

(declare-fun res!865406 () Bool)

(assert (=> b!1935570 (=> res!865406 e!1237113)))

(assert (=> b!1935570 (= res!865406 call!119068)))

(declare-fun b!1935571 () Bool)

(declare-fun res!865400 () Bool)

(assert (=> b!1935571 (=> res!865400 e!1237110)))

(assert (=> b!1935571 (= res!865400 e!1237112)))

(declare-fun res!865403 () Bool)

(assert (=> b!1935571 (=> (not res!865403) (not e!1237112))))

(assert (=> b!1935571 (= res!865403 lt!742115)))

(assert (= (and d!590625 c!314942) b!1935566))

(assert (= (and d!590625 (not c!314942)) b!1935560))

(assert (= (and d!590625 c!314941) b!1935562))

(assert (= (and d!590625 (not c!314941)) b!1935569))

(assert (= (and b!1935569 c!314940) b!1935568))

(assert (= (and b!1935569 (not c!314940)) b!1935559))

(assert (= (and b!1935559 (not res!865407)) b!1935571))

(assert (= (and b!1935571 res!865403) b!1935563))

(assert (= (and b!1935563 res!865404) b!1935561))

(assert (= (and b!1935561 res!865405) b!1935567))

(assert (= (and b!1935571 (not res!865400)) b!1935558))

(assert (= (and b!1935558 res!865402) b!1935570))

(assert (= (and b!1935570 (not res!865406)) b!1935565))

(assert (= (and b!1935565 (not res!865401)) b!1935564))

(assert (= (or b!1935562 b!1935563 b!1935570) bm!119063))

(assert (=> b!1935565 m!2372147))

(declare-fun m!2375445 () Bool)

(assert (=> b!1935565 m!2375445))

(assert (=> b!1935565 m!2375445))

(declare-fun m!2375447 () Bool)

(assert (=> b!1935565 m!2375447))

(assert (=> b!1935560 m!2372147))

(declare-fun m!2375449 () Bool)

(assert (=> b!1935560 m!2375449))

(assert (=> b!1935560 m!2375449))

(declare-fun m!2375451 () Bool)

(assert (=> b!1935560 m!2375451))

(assert (=> b!1935560 m!2372147))

(assert (=> b!1935560 m!2375445))

(assert (=> b!1935560 m!2375451))

(assert (=> b!1935560 m!2375445))

(declare-fun m!2375453 () Bool)

(assert (=> b!1935560 m!2375453))

(assert (=> d!590625 m!2372147))

(declare-fun m!2375455 () Bool)

(assert (=> d!590625 m!2375455))

(declare-fun m!2375457 () Bool)

(assert (=> d!590625 m!2375457))

(assert (=> b!1935567 m!2372147))

(assert (=> b!1935567 m!2375449))

(assert (=> bm!119063 m!2372147))

(assert (=> bm!119063 m!2375455))

(assert (=> b!1935561 m!2372147))

(assert (=> b!1935561 m!2375445))

(assert (=> b!1935561 m!2375445))

(assert (=> b!1935561 m!2375447))

(declare-fun m!2375459 () Bool)

(assert (=> b!1935566 m!2375459))

(assert (=> b!1935564 m!2372147))

(assert (=> b!1935564 m!2375449))

(assert (=> b!1933916 d!590625))

(assert (=> b!1933916 d!590551))

(assert (=> b!1933916 d!589733))

(assert (=> b!1933916 d!589735))

(assert (=> b!1933916 d!589741))

(declare-fun b!1935572 () Bool)

(declare-fun e!1237117 () Bool)

(declare-fun e!1237114 () Bool)

(assert (=> b!1935572 (= e!1237117 e!1237114)))

(declare-fun res!865410 () Bool)

(assert (=> b!1935572 (=> (not res!865410) (not e!1237114))))

(declare-fun lt!742116 () Bool)

(assert (=> b!1935572 (= res!865410 (not lt!742116))))

(declare-fun b!1935573 () Bool)

(declare-fun res!865415 () Bool)

(assert (=> b!1935573 (=> res!865415 e!1237117)))

(assert (=> b!1935573 (= res!865415 (not ((_ is ElementMatch!5369) (regex!3944 (rule!6153 (_1!11772 (get!6933 lt!741380)))))))))

(declare-fun e!1237115 () Bool)

(assert (=> b!1935573 (= e!1237115 e!1237117)))

(declare-fun bm!119064 () Bool)

(declare-fun call!119069 () Bool)

(assert (=> bm!119064 (= call!119069 (isEmpty!13567 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741380))))))))

(declare-fun b!1935574 () Bool)

(declare-fun e!1237116 () Bool)

(assert (=> b!1935574 (= e!1237116 (matchR!2637 (derivativeStep!1375 (regex!3944 (rule!6153 (_1!11772 (get!6933 lt!741380)))) (head!4509 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741380)))))) (tail!2995 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741380)))))))))

(declare-fun b!1935575 () Bool)

(declare-fun res!865413 () Bool)

(declare-fun e!1237119 () Bool)

(assert (=> b!1935575 (=> (not res!865413) (not e!1237119))))

(assert (=> b!1935575 (= res!865413 (isEmpty!13567 (tail!2995 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741380)))))))))

(declare-fun b!1935576 () Bool)

(declare-fun e!1237118 () Bool)

(assert (=> b!1935576 (= e!1237118 (= lt!742116 call!119069))))

(declare-fun b!1935577 () Bool)

(declare-fun res!865412 () Bool)

(assert (=> b!1935577 (=> (not res!865412) (not e!1237119))))

(assert (=> b!1935577 (= res!865412 (not call!119069))))

(declare-fun b!1935579 () Bool)

(declare-fun res!865409 () Bool)

(declare-fun e!1237120 () Bool)

(assert (=> b!1935579 (=> res!865409 e!1237120)))

(assert (=> b!1935579 (= res!865409 (not (isEmpty!13567 (tail!2995 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741380))))))))))

(declare-fun b!1935580 () Bool)

(assert (=> b!1935580 (= e!1237116 (nullable!1616 (regex!3944 (rule!6153 (_1!11772 (get!6933 lt!741380))))))))

(declare-fun b!1935581 () Bool)

(assert (=> b!1935581 (= e!1237119 (= (head!4509 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741380))))) (c!314509 (regex!3944 (rule!6153 (_1!11772 (get!6933 lt!741380)))))))))

(declare-fun d!590627 () Bool)

(assert (=> d!590627 e!1237118))

(declare-fun c!314944 () Bool)

(assert (=> d!590627 (= c!314944 ((_ is EmptyExpr!5369) (regex!3944 (rule!6153 (_1!11772 (get!6933 lt!741380))))))))

(assert (=> d!590627 (= lt!742116 e!1237116)))

(declare-fun c!314945 () Bool)

(assert (=> d!590627 (= c!314945 (isEmpty!13567 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741380))))))))

(assert (=> d!590627 (validRegex!2142 (regex!3944 (rule!6153 (_1!11772 (get!6933 lt!741380)))))))

(assert (=> d!590627 (= (matchR!2637 (regex!3944 (rule!6153 (_1!11772 (get!6933 lt!741380)))) (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741380))))) lt!742116)))

(declare-fun b!1935578 () Bool)

(assert (=> b!1935578 (= e!1237120 (not (= (head!4509 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!741380))))) (c!314509 (regex!3944 (rule!6153 (_1!11772 (get!6933 lt!741380))))))))))

(declare-fun b!1935582 () Bool)

(assert (=> b!1935582 (= e!1237115 (not lt!742116))))

(declare-fun b!1935583 () Bool)

(assert (=> b!1935583 (= e!1237118 e!1237115)))

(declare-fun c!314943 () Bool)

(assert (=> b!1935583 (= c!314943 ((_ is EmptyLang!5369) (regex!3944 (rule!6153 (_1!11772 (get!6933 lt!741380))))))))

(declare-fun b!1935584 () Bool)

(assert (=> b!1935584 (= e!1237114 e!1237120)))

(declare-fun res!865414 () Bool)

(assert (=> b!1935584 (=> res!865414 e!1237120)))

(assert (=> b!1935584 (= res!865414 call!119069)))

(declare-fun b!1935585 () Bool)

(declare-fun res!865408 () Bool)

(assert (=> b!1935585 (=> res!865408 e!1237117)))

(assert (=> b!1935585 (= res!865408 e!1237119)))

(declare-fun res!865411 () Bool)

(assert (=> b!1935585 (=> (not res!865411) (not e!1237119))))

(assert (=> b!1935585 (= res!865411 lt!742116)))

(assert (= (and d!590627 c!314945) b!1935580))

(assert (= (and d!590627 (not c!314945)) b!1935574))

(assert (= (and d!590627 c!314944) b!1935576))

(assert (= (and d!590627 (not c!314944)) b!1935583))

(assert (= (and b!1935583 c!314943) b!1935582))

(assert (= (and b!1935583 (not c!314943)) b!1935573))

(assert (= (and b!1935573 (not res!865415)) b!1935585))

(assert (= (and b!1935585 res!865411) b!1935577))

(assert (= (and b!1935577 res!865412) b!1935575))

(assert (= (and b!1935575 res!865413) b!1935581))

(assert (= (and b!1935585 (not res!865408)) b!1935572))

(assert (= (and b!1935572 res!865410) b!1935584))

(assert (= (and b!1935584 (not res!865414)) b!1935579))

(assert (= (and b!1935579 (not res!865409)) b!1935578))

(assert (= (or b!1935576 b!1935577 b!1935584) bm!119064))

(assert (=> b!1935579 m!2372813))

(declare-fun m!2375461 () Bool)

(assert (=> b!1935579 m!2375461))

(assert (=> b!1935579 m!2375461))

(declare-fun m!2375463 () Bool)

(assert (=> b!1935579 m!2375463))

(assert (=> b!1935574 m!2372813))

(declare-fun m!2375465 () Bool)

(assert (=> b!1935574 m!2375465))

(assert (=> b!1935574 m!2375465))

(declare-fun m!2375467 () Bool)

(assert (=> b!1935574 m!2375467))

(assert (=> b!1935574 m!2372813))

(assert (=> b!1935574 m!2375461))

(assert (=> b!1935574 m!2375467))

(assert (=> b!1935574 m!2375461))

(declare-fun m!2375469 () Bool)

(assert (=> b!1935574 m!2375469))

(assert (=> d!590627 m!2372813))

(declare-fun m!2375471 () Bool)

(assert (=> d!590627 m!2375471))

(declare-fun m!2375473 () Bool)

(assert (=> d!590627 m!2375473))

(assert (=> b!1935581 m!2372813))

(assert (=> b!1935581 m!2375465))

(assert (=> bm!119064 m!2372813))

(assert (=> bm!119064 m!2375471))

(assert (=> b!1935575 m!2372813))

(assert (=> b!1935575 m!2375461))

(assert (=> b!1935575 m!2375461))

(assert (=> b!1935575 m!2375463))

(declare-fun m!2375475 () Bool)

(assert (=> b!1935580 m!2375475))

(assert (=> b!1935578 m!2372813))

(assert (=> b!1935578 m!2375465))

(assert (=> b!1933996 d!590627))

(assert (=> b!1933996 d!589997))

(assert (=> b!1933996 d!590407))

(assert (=> b!1933996 d!590409))

(declare-fun b!1935586 () Bool)

(declare-fun e!1237123 () Bool)

(declare-fun e!1237121 () Bool)

(assert (=> b!1935586 (= e!1237123 e!1237121)))

(declare-fun res!865419 () Bool)

(assert (=> b!1935586 (=> (not res!865419) (not e!1237121))))

(declare-fun lt!742118 () Option!4566)

(assert (=> b!1935586 (= res!865419 (isDefined!3858 lt!742118))))

(declare-fun bm!119065 () Bool)

(declare-fun call!119070 () Option!4566)

(assert (=> bm!119065 (= call!119070 (maxPrefixOneRule!1231 thiss!23328 (h!27385 (t!180605 rules!3198)) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))))))

(declare-fun b!1935587 () Bool)

(declare-fun res!865420 () Bool)

(assert (=> b!1935587 (=> (not res!865420) (not e!1237121))))

(assert (=> b!1935587 (= res!865420 (< (size!17151 (_2!11772 (get!6933 lt!742118))) (size!17151 (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)))))))

(declare-fun b!1935589 () Bool)

(declare-fun res!865418 () Bool)

(assert (=> b!1935589 (=> (not res!865418) (not e!1237121))))

(assert (=> b!1935589 (= res!865418 (= (value!123995 (_1!11772 (get!6933 lt!742118))) (apply!5725 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!742118)))) (seqFromList!2798 (originalCharacters!4751 (_1!11772 (get!6933 lt!742118)))))))))

(declare-fun b!1935590 () Bool)

(declare-fun res!865417 () Bool)

(assert (=> b!1935590 (=> (not res!865417) (not e!1237121))))

(assert (=> b!1935590 (= res!865417 (= (++!5905 (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!742118)))) (_2!11772 (get!6933 lt!742118))) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))))))

(declare-fun b!1935591 () Bool)

(assert (=> b!1935591 (= e!1237121 (contains!3983 (t!180605 rules!3198) (rule!6153 (_1!11772 (get!6933 lt!742118)))))))

(declare-fun b!1935592 () Bool)

(declare-fun res!865421 () Bool)

(assert (=> b!1935592 (=> (not res!865421) (not e!1237121))))

(assert (=> b!1935592 (= res!865421 (matchR!2637 (regex!3944 (rule!6153 (_1!11772 (get!6933 lt!742118)))) (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!742118))))))))

(declare-fun d!590629 () Bool)

(assert (=> d!590629 e!1237123))

(declare-fun res!865416 () Bool)

(assert (=> d!590629 (=> res!865416 e!1237123)))

(assert (=> d!590629 (= res!865416 (isEmpty!13571 lt!742118))))

(declare-fun e!1237122 () Option!4566)

(assert (=> d!590629 (= lt!742118 e!1237122)))

(declare-fun c!314946 () Bool)

(assert (=> d!590629 (= c!314946 (and ((_ is Cons!21984) (t!180605 rules!3198)) ((_ is Nil!21984) (t!180605 (t!180605 rules!3198)))))))

(declare-fun lt!742121 () Unit!36346)

(declare-fun lt!742117 () Unit!36346)

(assert (=> d!590629 (= lt!742121 lt!742117)))

(assert (=> d!590629 (isPrefix!1949 (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)))))

(assert (=> d!590629 (= lt!742117 (lemmaIsPrefixRefl!1267 (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354)) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))))))

(assert (=> d!590629 (rulesValidInductive!1348 thiss!23328 (t!180605 rules!3198))))

(assert (=> d!590629 (= (maxPrefix!1995 thiss!23328 (t!180605 rules!3198) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))) lt!742118)))

(declare-fun b!1935588 () Bool)

(declare-fun res!865422 () Bool)

(assert (=> b!1935588 (=> (not res!865422) (not e!1237121))))

(assert (=> b!1935588 (= res!865422 (= (list!8905 (charsOf!2484 (_1!11772 (get!6933 lt!742118)))) (originalCharacters!4751 (_1!11772 (get!6933 lt!742118)))))))

(declare-fun b!1935593 () Bool)

(assert (=> b!1935593 (= e!1237122 call!119070)))

(declare-fun b!1935594 () Bool)

(declare-fun lt!742119 () Option!4566)

(declare-fun lt!742120 () Option!4566)

(assert (=> b!1935594 (= e!1237122 (ite (and ((_ is None!4565) lt!742119) ((_ is None!4565) lt!742120)) None!4565 (ite ((_ is None!4565) lt!742120) lt!742119 (ite ((_ is None!4565) lt!742119) lt!742120 (ite (>= (size!17148 (_1!11772 (v!26680 lt!742119))) (size!17148 (_1!11772 (v!26680 lt!742120)))) lt!742119 lt!742120)))))))

(assert (=> b!1935594 (= lt!742119 call!119070)))

(assert (=> b!1935594 (= lt!742120 (maxPrefix!1995 thiss!23328 (t!180605 (t!180605 rules!3198)) (++!5905 lt!741158 (printWithSeparatorTokenWhenNeededList!596 thiss!23328 rules!3198 (t!180606 tokens!598) separatorToken!354))))))

(assert (= (and d!590629 c!314946) b!1935593))

(assert (= (and d!590629 (not c!314946)) b!1935594))

(assert (= (or b!1935593 b!1935594) bm!119065))

(assert (= (and d!590629 (not res!865416)) b!1935586))

(assert (= (and b!1935586 res!865419) b!1935588))

(assert (= (and b!1935588 res!865422) b!1935587))

(assert (= (and b!1935587 res!865420) b!1935590))

(assert (= (and b!1935590 res!865417) b!1935589))

(assert (= (and b!1935589 res!865418) b!1935592))

(assert (= (and b!1935592 res!865421) b!1935591))

(declare-fun m!2375477 () Bool)

(assert (=> b!1935592 m!2375477))

(declare-fun m!2375479 () Bool)

(assert (=> b!1935592 m!2375479))

(assert (=> b!1935592 m!2375479))

(declare-fun m!2375481 () Bool)

(assert (=> b!1935592 m!2375481))

(assert (=> b!1935592 m!2375481))

(declare-fun m!2375483 () Bool)

(assert (=> b!1935592 m!2375483))

(assert (=> b!1935588 m!2375477))

(assert (=> b!1935588 m!2375479))

(assert (=> b!1935588 m!2375479))

(assert (=> b!1935588 m!2375481))

(declare-fun m!2375485 () Bool)

(assert (=> d!590629 m!2375485))

(assert (=> d!590629 m!2372135))

(assert (=> d!590629 m!2372135))

(assert (=> d!590629 m!2372605))

(assert (=> d!590629 m!2372135))

(assert (=> d!590629 m!2372135))

(assert (=> d!590629 m!2372607))

(assert (=> d!590629 m!2373161))

(assert (=> b!1935594 m!2372135))

(declare-fun m!2375487 () Bool)

(assert (=> b!1935594 m!2375487))

(assert (=> b!1935589 m!2375477))

(declare-fun m!2375489 () Bool)

(assert (=> b!1935589 m!2375489))

(assert (=> b!1935589 m!2375489))

(declare-fun m!2375491 () Bool)

(assert (=> b!1935589 m!2375491))

(declare-fun m!2375493 () Bool)

(assert (=> b!1935586 m!2375493))

(assert (=> bm!119065 m!2372135))

(declare-fun m!2375495 () Bool)

(assert (=> bm!119065 m!2375495))

(assert (=> b!1935591 m!2375477))

(declare-fun m!2375497 () Bool)

(assert (=> b!1935591 m!2375497))

(assert (=> b!1935590 m!2375477))

(assert (=> b!1935590 m!2375479))

(assert (=> b!1935590 m!2375479))

(assert (=> b!1935590 m!2375481))

(assert (=> b!1935590 m!2375481))

(declare-fun m!2375499 () Bool)

(assert (=> b!1935590 m!2375499))

(assert (=> b!1935587 m!2375477))

(declare-fun m!2375501 () Bool)

(assert (=> b!1935587 m!2375501))

(assert (=> b!1935587 m!2372135))

(assert (=> b!1935587 m!2372627))

(assert (=> b!1933876 d!590629))

(declare-fun d!590631 () Bool)

(assert (=> d!590631 (= (list!8905 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168))) (list!8908 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168)))))))

(declare-fun bs!415346 () Bool)

(assert (= bs!415346 d!590631))

(declare-fun m!2375503 () Bool)

(assert (=> bs!415346 m!2375503))

(assert (=> d!589751 d!590631))

(assert (=> d!589751 d!589681))

(declare-fun d!590633 () Bool)

(declare-fun dynLambda!10708 (Int BalanceConc!14500) Bool)

(assert (=> d!590633 (dynLambda!10708 lambda!75386 lt!741168)))

(declare-fun lt!742124 () Unit!36346)

(declare-fun choose!12028 (Int BalanceConc!14500) Unit!36346)

(assert (=> d!590633 (= lt!742124 (choose!12028 lambda!75386 lt!741168))))

(assert (=> d!590633 (Forall!1004 lambda!75386)))

(assert (=> d!590633 (= (ForallOf!413 lambda!75386 lt!741168) lt!742124)))

(declare-fun b_lambda!64449 () Bool)

(assert (=> (not b_lambda!64449) (not d!590633)))

(declare-fun bs!415347 () Bool)

(assert (= bs!415347 d!590633))

(declare-fun m!2375505 () Bool)

(assert (=> bs!415347 m!2375505))

(declare-fun m!2375507 () Bool)

(assert (=> bs!415347 m!2375507))

(declare-fun m!2375509 () Bool)

(assert (=> bs!415347 m!2375509))

(assert (=> d!589751 d!590633))

(declare-fun d!590635 () Bool)

(declare-fun res!865423 () Bool)

(declare-fun e!1237124 () Bool)

(assert (=> d!590635 (=> res!865423 e!1237124)))

(assert (=> d!590635 (= res!865423 (not ((_ is Cons!21984) (t!180605 rules!3198))))))

(assert (=> d!590635 (= (sepAndNonSepRulesDisjointChars!1042 rules!3198 (t!180605 rules!3198)) e!1237124)))

(declare-fun b!1935595 () Bool)

(declare-fun e!1237125 () Bool)

(assert (=> b!1935595 (= e!1237124 e!1237125)))

(declare-fun res!865424 () Bool)

(assert (=> b!1935595 (=> (not res!865424) (not e!1237125))))

(assert (=> b!1935595 (= res!865424 (ruleDisjointCharsFromAllFromOtherType!457 (h!27385 (t!180605 rules!3198)) rules!3198))))

(declare-fun b!1935596 () Bool)

(assert (=> b!1935596 (= e!1237125 (sepAndNonSepRulesDisjointChars!1042 rules!3198 (t!180605 (t!180605 rules!3198))))))

(assert (= (and d!590635 (not res!865423)) b!1935595))

(assert (= (and b!1935595 res!865424) b!1935596))

(declare-fun m!2375511 () Bool)

(assert (=> b!1935595 m!2375511))

(declare-fun m!2375513 () Bool)

(assert (=> b!1935596 m!2375513))

(assert (=> b!1934013 d!590635))

(declare-fun b!1935597 () Bool)

(declare-fun e!1237126 () Bool)

(declare-fun tp!552051 () Bool)

(assert (=> b!1935597 (= e!1237126 (and tp_is_empty!9153 tp!552051))))

(assert (=> b!1934205 (= tp!551889 e!1237126)))

(assert (= (and b!1934205 ((_ is Cons!21982) (t!180603 (originalCharacters!4751 separatorToken!354)))) b!1935597))

(declare-fun b!1935600 () Bool)

(declare-fun e!1237129 () Bool)

(assert (=> b!1935600 (= e!1237129 true)))

(declare-fun b!1935599 () Bool)

(declare-fun e!1237128 () Bool)

(assert (=> b!1935599 (= e!1237128 e!1237129)))

(declare-fun b!1935598 () Bool)

(declare-fun e!1237127 () Bool)

(assert (=> b!1935598 (= e!1237127 e!1237128)))

(assert (=> b!1934183 e!1237127))

(assert (= b!1935599 b!1935600))

(assert (= b!1935598 b!1935599))

(assert (= (and b!1934183 ((_ is Cons!21984) (t!180605 rules!3198))) b!1935598))

(assert (=> b!1935600 (< (dynLambda!10697 order!13847 (toValue!5585 (transformation!3944 (h!27385 (t!180605 rules!3198))))) (dynLambda!10703 order!13855 lambda!75395))))

(assert (=> b!1935600 (< (dynLambda!10699 order!13851 (toChars!5444 (transformation!3944 (h!27385 (t!180605 rules!3198))))) (dynLambda!10703 order!13855 lambda!75395))))

(declare-fun e!1237130 () Bool)

(assert (=> b!1934224 (= tp!551909 e!1237130)))

(declare-fun b!1935603 () Bool)

(declare-fun tp!552053 () Bool)

(assert (=> b!1935603 (= e!1237130 tp!552053)))

(declare-fun b!1935601 () Bool)

(assert (=> b!1935601 (= e!1237130 tp_is_empty!9153)))

(declare-fun b!1935604 () Bool)

(declare-fun tp!552054 () Bool)

(declare-fun tp!552052 () Bool)

(assert (=> b!1935604 (= e!1237130 (and tp!552054 tp!552052))))

(declare-fun b!1935602 () Bool)

(declare-fun tp!552055 () Bool)

(declare-fun tp!552056 () Bool)

(assert (=> b!1935602 (= e!1237130 (and tp!552055 tp!552056))))

(assert (= (and b!1934224 ((_ is ElementMatch!5369) (regOne!11251 (regex!3944 (rule!6153 (h!27386 tokens!598)))))) b!1935601))

(assert (= (and b!1934224 ((_ is Concat!9450) (regOne!11251 (regex!3944 (rule!6153 (h!27386 tokens!598)))))) b!1935602))

(assert (= (and b!1934224 ((_ is Star!5369) (regOne!11251 (regex!3944 (rule!6153 (h!27386 tokens!598)))))) b!1935603))

(assert (= (and b!1934224 ((_ is Union!5369) (regOne!11251 (regex!3944 (rule!6153 (h!27386 tokens!598)))))) b!1935604))

(declare-fun e!1237131 () Bool)

(assert (=> b!1934224 (= tp!551907 e!1237131)))

(declare-fun b!1935607 () Bool)

(declare-fun tp!552058 () Bool)

(assert (=> b!1935607 (= e!1237131 tp!552058)))

(declare-fun b!1935605 () Bool)

(assert (=> b!1935605 (= e!1237131 tp_is_empty!9153)))

(declare-fun b!1935608 () Bool)

(declare-fun tp!552059 () Bool)

(declare-fun tp!552057 () Bool)

(assert (=> b!1935608 (= e!1237131 (and tp!552059 tp!552057))))

(declare-fun b!1935606 () Bool)

(declare-fun tp!552060 () Bool)

(declare-fun tp!552061 () Bool)

(assert (=> b!1935606 (= e!1237131 (and tp!552060 tp!552061))))

(assert (= (and b!1934224 ((_ is ElementMatch!5369) (regTwo!11251 (regex!3944 (rule!6153 (h!27386 tokens!598)))))) b!1935605))

(assert (= (and b!1934224 ((_ is Concat!9450) (regTwo!11251 (regex!3944 (rule!6153 (h!27386 tokens!598)))))) b!1935606))

(assert (= (and b!1934224 ((_ is Star!5369) (regTwo!11251 (regex!3944 (rule!6153 (h!27386 tokens!598)))))) b!1935607))

(assert (= (and b!1934224 ((_ is Union!5369) (regTwo!11251 (regex!3944 (rule!6153 (h!27386 tokens!598)))))) b!1935608))

(declare-fun e!1237132 () Bool)

(assert (=> b!1934223 (= tp!551908 e!1237132)))

(declare-fun b!1935611 () Bool)

(declare-fun tp!552063 () Bool)

(assert (=> b!1935611 (= e!1237132 tp!552063)))

(declare-fun b!1935609 () Bool)

(assert (=> b!1935609 (= e!1237132 tp_is_empty!9153)))

(declare-fun b!1935612 () Bool)

(declare-fun tp!552064 () Bool)

(declare-fun tp!552062 () Bool)

(assert (=> b!1935612 (= e!1237132 (and tp!552064 tp!552062))))

(declare-fun b!1935610 () Bool)

(declare-fun tp!552065 () Bool)

(declare-fun tp!552066 () Bool)

(assert (=> b!1935610 (= e!1237132 (and tp!552065 tp!552066))))

(assert (= (and b!1934223 ((_ is ElementMatch!5369) (reg!5698 (regex!3944 (rule!6153 (h!27386 tokens!598)))))) b!1935609))

(assert (= (and b!1934223 ((_ is Concat!9450) (reg!5698 (regex!3944 (rule!6153 (h!27386 tokens!598)))))) b!1935610))

(assert (= (and b!1934223 ((_ is Star!5369) (reg!5698 (regex!3944 (rule!6153 (h!27386 tokens!598)))))) b!1935611))

(assert (= (and b!1934223 ((_ is Union!5369) (reg!5698 (regex!3944 (rule!6153 (h!27386 tokens!598)))))) b!1935612))

(declare-fun e!1237133 () Bool)

(assert (=> b!1934199 (= tp!551883 e!1237133)))

(declare-fun b!1935615 () Bool)

(declare-fun tp!552068 () Bool)

(assert (=> b!1935615 (= e!1237133 tp!552068)))

(declare-fun b!1935613 () Bool)

(assert (=> b!1935613 (= e!1237133 tp_is_empty!9153)))

(declare-fun b!1935616 () Bool)

(declare-fun tp!552069 () Bool)

(declare-fun tp!552067 () Bool)

(assert (=> b!1935616 (= e!1237133 (and tp!552069 tp!552067))))

(declare-fun b!1935614 () Bool)

(declare-fun tp!552070 () Bool)

(declare-fun tp!552071 () Bool)

(assert (=> b!1935614 (= e!1237133 (and tp!552070 tp!552071))))

(assert (= (and b!1934199 ((_ is ElementMatch!5369) (regOne!11251 (regex!3944 (h!27385 rules!3198))))) b!1935613))

(assert (= (and b!1934199 ((_ is Concat!9450) (regOne!11251 (regex!3944 (h!27385 rules!3198))))) b!1935614))

(assert (= (and b!1934199 ((_ is Star!5369) (regOne!11251 (regex!3944 (h!27385 rules!3198))))) b!1935615))

(assert (= (and b!1934199 ((_ is Union!5369) (regOne!11251 (regex!3944 (h!27385 rules!3198))))) b!1935616))

(declare-fun e!1237134 () Bool)

(assert (=> b!1934199 (= tp!551881 e!1237134)))

(declare-fun b!1935619 () Bool)

(declare-fun tp!552073 () Bool)

(assert (=> b!1935619 (= e!1237134 tp!552073)))

(declare-fun b!1935617 () Bool)

(assert (=> b!1935617 (= e!1237134 tp_is_empty!9153)))

(declare-fun b!1935620 () Bool)

(declare-fun tp!552074 () Bool)

(declare-fun tp!552072 () Bool)

(assert (=> b!1935620 (= e!1237134 (and tp!552074 tp!552072))))

(declare-fun b!1935618 () Bool)

(declare-fun tp!552075 () Bool)

(declare-fun tp!552076 () Bool)

(assert (=> b!1935618 (= e!1237134 (and tp!552075 tp!552076))))

(assert (= (and b!1934199 ((_ is ElementMatch!5369) (regTwo!11251 (regex!3944 (h!27385 rules!3198))))) b!1935617))

(assert (= (and b!1934199 ((_ is Concat!9450) (regTwo!11251 (regex!3944 (h!27385 rules!3198))))) b!1935618))

(assert (= (and b!1934199 ((_ is Star!5369) (regTwo!11251 (regex!3944 (h!27385 rules!3198))))) b!1935619))

(assert (= (and b!1934199 ((_ is Union!5369) (regTwo!11251 (regex!3944 (h!27385 rules!3198))))) b!1935620))

(declare-fun e!1237135 () Bool)

(assert (=> b!1934198 (= tp!551882 e!1237135)))

(declare-fun b!1935623 () Bool)

(declare-fun tp!552078 () Bool)

(assert (=> b!1935623 (= e!1237135 tp!552078)))

(declare-fun b!1935621 () Bool)

(assert (=> b!1935621 (= e!1237135 tp_is_empty!9153)))

(declare-fun b!1935624 () Bool)

(declare-fun tp!552079 () Bool)

(declare-fun tp!552077 () Bool)

(assert (=> b!1935624 (= e!1237135 (and tp!552079 tp!552077))))

(declare-fun b!1935622 () Bool)

(declare-fun tp!552080 () Bool)

(declare-fun tp!552081 () Bool)

(assert (=> b!1935622 (= e!1237135 (and tp!552080 tp!552081))))

(assert (= (and b!1934198 ((_ is ElementMatch!5369) (reg!5698 (regex!3944 (h!27385 rules!3198))))) b!1935621))

(assert (= (and b!1934198 ((_ is Concat!9450) (reg!5698 (regex!3944 (h!27385 rules!3198))))) b!1935622))

(assert (= (and b!1934198 ((_ is Star!5369) (reg!5698 (regex!3944 (h!27385 rules!3198))))) b!1935623))

(assert (= (and b!1934198 ((_ is Union!5369) (reg!5698 (regex!3944 (h!27385 rules!3198))))) b!1935624))

(declare-fun e!1237136 () Bool)

(assert (=> b!1934197 (= tp!551884 e!1237136)))

(declare-fun b!1935627 () Bool)

(declare-fun tp!552083 () Bool)

(assert (=> b!1935627 (= e!1237136 tp!552083)))

(declare-fun b!1935625 () Bool)

(assert (=> b!1935625 (= e!1237136 tp_is_empty!9153)))

(declare-fun b!1935628 () Bool)

(declare-fun tp!552084 () Bool)

(declare-fun tp!552082 () Bool)

(assert (=> b!1935628 (= e!1237136 (and tp!552084 tp!552082))))

(declare-fun b!1935626 () Bool)

(declare-fun tp!552085 () Bool)

(declare-fun tp!552086 () Bool)

(assert (=> b!1935626 (= e!1237136 (and tp!552085 tp!552086))))

(assert (= (and b!1934197 ((_ is ElementMatch!5369) (regOne!11250 (regex!3944 (h!27385 rules!3198))))) b!1935625))

(assert (= (and b!1934197 ((_ is Concat!9450) (regOne!11250 (regex!3944 (h!27385 rules!3198))))) b!1935626))

(assert (= (and b!1934197 ((_ is Star!5369) (regOne!11250 (regex!3944 (h!27385 rules!3198))))) b!1935627))

(assert (= (and b!1934197 ((_ is Union!5369) (regOne!11250 (regex!3944 (h!27385 rules!3198))))) b!1935628))

(declare-fun e!1237137 () Bool)

(assert (=> b!1934197 (= tp!551885 e!1237137)))

(declare-fun b!1935631 () Bool)

(declare-fun tp!552088 () Bool)

(assert (=> b!1935631 (= e!1237137 tp!552088)))

(declare-fun b!1935629 () Bool)

(assert (=> b!1935629 (= e!1237137 tp_is_empty!9153)))

(declare-fun b!1935632 () Bool)

(declare-fun tp!552089 () Bool)

(declare-fun tp!552087 () Bool)

(assert (=> b!1935632 (= e!1237137 (and tp!552089 tp!552087))))

(declare-fun b!1935630 () Bool)

(declare-fun tp!552090 () Bool)

(declare-fun tp!552091 () Bool)

(assert (=> b!1935630 (= e!1237137 (and tp!552090 tp!552091))))

(assert (= (and b!1934197 ((_ is ElementMatch!5369) (regTwo!11250 (regex!3944 (h!27385 rules!3198))))) b!1935629))

(assert (= (and b!1934197 ((_ is Concat!9450) (regTwo!11250 (regex!3944 (h!27385 rules!3198))))) b!1935630))

(assert (= (and b!1934197 ((_ is Star!5369) (regTwo!11250 (regex!3944 (h!27385 rules!3198))))) b!1935631))

(assert (= (and b!1934197 ((_ is Union!5369) (regTwo!11250 (regex!3944 (h!27385 rules!3198))))) b!1935632))

(declare-fun e!1237138 () Bool)

(assert (=> b!1934215 (= tp!551899 e!1237138)))

(declare-fun b!1935635 () Bool)

(declare-fun tp!552093 () Bool)

(assert (=> b!1935635 (= e!1237138 tp!552093)))

(declare-fun b!1935633 () Bool)

(assert (=> b!1935633 (= e!1237138 tp_is_empty!9153)))

(declare-fun b!1935636 () Bool)

(declare-fun tp!552094 () Bool)

(declare-fun tp!552092 () Bool)

(assert (=> b!1935636 (= e!1237138 (and tp!552094 tp!552092))))

(declare-fun b!1935634 () Bool)

(declare-fun tp!552095 () Bool)

(declare-fun tp!552096 () Bool)

(assert (=> b!1935634 (= e!1237138 (and tp!552095 tp!552096))))

(assert (= (and b!1934215 ((_ is ElementMatch!5369) (regex!3944 (h!27385 (t!180605 rules!3198))))) b!1935633))

(assert (= (and b!1934215 ((_ is Concat!9450) (regex!3944 (h!27385 (t!180605 rules!3198))))) b!1935634))

(assert (= (and b!1934215 ((_ is Star!5369) (regex!3944 (h!27385 (t!180605 rules!3198))))) b!1935635))

(assert (= (and b!1934215 ((_ is Union!5369) (regex!3944 (h!27385 (t!180605 rules!3198))))) b!1935636))

(declare-fun b!1935639 () Bool)

(declare-fun b_free!55469 () Bool)

(declare-fun b_next!56173 () Bool)

(assert (=> b!1935639 (= b_free!55469 (not b_next!56173))))

(declare-fun tb!119197 () Bool)

(declare-fun t!180942 () Bool)

(assert (=> (and b!1935639 (= (toValue!5585 (transformation!3944 (h!27385 (t!180605 (t!180605 rules!3198))))) (toValue!5585 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741305)))))) t!180942) tb!119197))

(declare-fun result!143894 () Bool)

(assert (= result!143894 result!143884))

(assert (=> d!590581 t!180942))

(declare-fun tb!119199 () Bool)

(declare-fun t!180944 () Bool)

(assert (=> (and b!1935639 (= (toValue!5585 (transformation!3944 (h!27385 (t!180605 (t!180605 rules!3198))))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180944) tb!119199))

(declare-fun result!143896 () Bool)

(assert (= result!143896 result!143590))

(assert (=> d!589751 t!180944))

(declare-fun t!180946 () Bool)

(declare-fun tb!119201 () Bool)

(assert (=> (and b!1935639 (= (toValue!5585 (transformation!3944 (h!27385 (t!180605 (t!180605 rules!3198))))) (toValue!5585 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741380)))))) t!180946) tb!119201))

(declare-fun result!143898 () Bool)

(assert (= result!143898 result!143874))

(assert (=> d!590557 t!180946))

(declare-fun t!180948 () Bool)

(declare-fun tb!119203 () Bool)

(assert (=> (and b!1935639 (= (toValue!5585 (transformation!3944 (h!27385 (t!180605 (t!180605 rules!3198))))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180948) tb!119203))

(declare-fun result!143900 () Bool)

(assert (= result!143900 result!143598))

(assert (=> d!589687 t!180948))

(assert (=> d!589687 t!180944))

(declare-fun tp!552099 () Bool)

(declare-fun b_and!152627 () Bool)

(assert (=> b!1935639 (= tp!552099 (and (=> t!180946 result!143898) (=> t!180944 result!143896) (=> t!180948 result!143900) (=> t!180942 result!143894) b_and!152627))))

(declare-fun b_free!55471 () Bool)

(declare-fun b_next!56175 () Bool)

(assert (=> b!1935639 (= b_free!55471 (not b_next!56175))))

(declare-fun tb!119205 () Bool)

(declare-fun t!180950 () Bool)

(assert (=> (and b!1935639 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 (t!180605 rules!3198))))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180950) tb!119205))

(declare-fun result!143902 () Bool)

(assert (= result!143902 result!143618))

(assert (=> b!1934161 t!180950))

(declare-fun tb!119207 () Bool)

(declare-fun t!180952 () Bool)

(assert (=> (and b!1935639 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 (t!180605 rules!3198))))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598)))))) t!180952) tb!119207))

(declare-fun result!143904 () Bool)

(assert (= result!143904 result!143790))

(assert (=> d!590429 t!180952))

(declare-fun tb!119209 () Bool)

(declare-fun t!180954 () Bool)

(assert (=> (and b!1935639 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 (t!180605 rules!3198))))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180954) tb!119209))

(declare-fun result!143906 () Bool)

(assert (= result!143906 result!143612))

(assert (=> d!589751 t!180954))

(declare-fun t!180956 () Bool)

(declare-fun tb!119211 () Bool)

(assert (=> (and b!1935639 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 (t!180605 rules!3198))))) (toChars!5444 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741380)))))) t!180956) tb!119211))

(declare-fun result!143908 () Bool)

(assert (= result!143908 result!143770))

(assert (=> d!590409 t!180956))

(declare-fun t!180958 () Bool)

(declare-fun tb!119213 () Bool)

(assert (=> (and b!1935639 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 (t!180605 rules!3198))))) (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354)))) t!180958) tb!119213))

(declare-fun result!143910 () Bool)

(assert (= result!143910 result!143604))

(assert (=> d!589735 t!180958))

(declare-fun t!180960 () Bool)

(declare-fun tb!119215 () Bool)

(assert (=> (and b!1935639 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 (t!180605 rules!3198))))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985)))))) t!180960) tb!119215))

(declare-fun result!143912 () Bool)

(assert (= result!143912 result!143780))

(assert (=> d!590421 t!180960))

(assert (=> b!1935494 t!180952))

(declare-fun tb!119217 () Bool)

(declare-fun t!180962 () Bool)

(assert (=> (and b!1935639 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 (t!180605 rules!3198))))) (toChars!5444 (transformation!3944 (rule!6153 (ite c!314603 (h!27386 (t!180606 tokens!598)) (ite c!314602 separatorToken!354 (h!27386 (t!180606 tokens!598)))))))) t!180962) tb!119217))

(declare-fun result!143914 () Bool)

(assert (= result!143914 result!143864))

(assert (=> d!590545 t!180962))

(declare-fun tb!119219 () Bool)

(declare-fun t!180964 () Bool)

(assert (=> (and b!1935639 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 (t!180605 rules!3198))))) (toChars!5444 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741305)))))) t!180964) tb!119219))

(declare-fun result!143916 () Bool)

(assert (= result!143916 result!143690))

(assert (=> d!589929 t!180964))

(declare-fun tb!119221 () Bool)

(declare-fun t!180966 () Bool)

(assert (=> (and b!1935639 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 (t!180605 rules!3198))))) (toChars!5444 (transformation!3944 (rule!6153 (apply!5721 lt!741165 0))))) t!180966) tb!119221))

(declare-fun result!143918 () Bool)

(assert (= result!143918 result!143758))

(assert (=> d!590313 t!180966))

(assert (=> d!589783 t!180950))

(assert (=> b!1934018 t!180958))

(declare-fun tp!552097 () Bool)

(declare-fun b_and!152629 () Bool)

(assert (=> b!1935639 (= tp!552097 (and (=> t!180964 result!143916) (=> t!180952 result!143904) (=> t!180966 result!143918) (=> t!180954 result!143906) (=> t!180950 result!143902) (=> t!180962 result!143914) (=> t!180956 result!143908) (=> t!180960 result!143912) (=> t!180958 result!143910) b_and!152629))))

(declare-fun e!1237139 () Bool)

(assert (=> b!1935639 (= e!1237139 (and tp!552099 tp!552097))))

(declare-fun tp!552098 () Bool)

(declare-fun e!1237142 () Bool)

(declare-fun b!1935638 () Bool)

(assert (=> b!1935638 (= e!1237142 (and tp!552098 (inv!29074 (tag!4398 (h!27385 (t!180605 (t!180605 rules!3198))))) (inv!29078 (transformation!3944 (h!27385 (t!180605 (t!180605 rules!3198))))) e!1237139))))

(declare-fun b!1935637 () Bool)

(declare-fun e!1237140 () Bool)

(declare-fun tp!552100 () Bool)

(assert (=> b!1935637 (= e!1237140 (and e!1237142 tp!552100))))

(assert (=> b!1934214 (= tp!551901 e!1237140)))

(assert (= b!1935638 b!1935639))

(assert (= b!1935637 b!1935638))

(assert (= (and b!1934214 ((_ is Cons!21984) (t!180605 (t!180605 rules!3198)))) b!1935637))

(declare-fun m!2375515 () Bool)

(assert (=> b!1935638 m!2375515))

(declare-fun m!2375517 () Bool)

(assert (=> b!1935638 m!2375517))

(declare-fun b!1935640 () Bool)

(declare-fun e!1237143 () Bool)

(declare-fun tp!552101 () Bool)

(assert (=> b!1935640 (= e!1237143 (and tp_is_empty!9153 tp!552101))))

(assert (=> b!1934204 (= tp!551888 e!1237143)))

(assert (= (and b!1934204 ((_ is Cons!21982) (t!180603 (originalCharacters!4751 (h!27386 tokens!598))))) b!1935640))

(declare-fun e!1237144 () Bool)

(assert (=> b!1934222 (= tp!551910 e!1237144)))

(declare-fun b!1935643 () Bool)

(declare-fun tp!552103 () Bool)

(assert (=> b!1935643 (= e!1237144 tp!552103)))

(declare-fun b!1935641 () Bool)

(assert (=> b!1935641 (= e!1237144 tp_is_empty!9153)))

(declare-fun b!1935644 () Bool)

(declare-fun tp!552104 () Bool)

(declare-fun tp!552102 () Bool)

(assert (=> b!1935644 (= e!1237144 (and tp!552104 tp!552102))))

(declare-fun b!1935642 () Bool)

(declare-fun tp!552105 () Bool)

(declare-fun tp!552106 () Bool)

(assert (=> b!1935642 (= e!1237144 (and tp!552105 tp!552106))))

(assert (= (and b!1934222 ((_ is ElementMatch!5369) (regOne!11250 (regex!3944 (rule!6153 (h!27386 tokens!598)))))) b!1935641))

(assert (= (and b!1934222 ((_ is Concat!9450) (regOne!11250 (regex!3944 (rule!6153 (h!27386 tokens!598)))))) b!1935642))

(assert (= (and b!1934222 ((_ is Star!5369) (regOne!11250 (regex!3944 (rule!6153 (h!27386 tokens!598)))))) b!1935643))

(assert (= (and b!1934222 ((_ is Union!5369) (regOne!11250 (regex!3944 (rule!6153 (h!27386 tokens!598)))))) b!1935644))

(declare-fun e!1237145 () Bool)

(assert (=> b!1934222 (= tp!551911 e!1237145)))

(declare-fun b!1935647 () Bool)

(declare-fun tp!552108 () Bool)

(assert (=> b!1935647 (= e!1237145 tp!552108)))

(declare-fun b!1935645 () Bool)

(assert (=> b!1935645 (= e!1237145 tp_is_empty!9153)))

(declare-fun b!1935648 () Bool)

(declare-fun tp!552109 () Bool)

(declare-fun tp!552107 () Bool)

(assert (=> b!1935648 (= e!1237145 (and tp!552109 tp!552107))))

(declare-fun b!1935646 () Bool)

(declare-fun tp!552110 () Bool)

(declare-fun tp!552111 () Bool)

(assert (=> b!1935646 (= e!1237145 (and tp!552110 tp!552111))))

(assert (= (and b!1934222 ((_ is ElementMatch!5369) (regTwo!11250 (regex!3944 (rule!6153 (h!27386 tokens!598)))))) b!1935645))

(assert (= (and b!1934222 ((_ is Concat!9450) (regTwo!11250 (regex!3944 (rule!6153 (h!27386 tokens!598)))))) b!1935646))

(assert (= (and b!1934222 ((_ is Star!5369) (regTwo!11250 (regex!3944 (rule!6153 (h!27386 tokens!598)))))) b!1935647))

(assert (= (and b!1934222 ((_ is Union!5369) (regTwo!11250 (regex!3944 (rule!6153 (h!27386 tokens!598)))))) b!1935648))

(declare-fun b!1935657 () Bool)

(declare-fun tp!552119 () Bool)

(declare-fun e!1237151 () Bool)

(declare-fun tp!552118 () Bool)

(assert (=> b!1935657 (= e!1237151 (and (inv!29081 (left!17488 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (value!123995 separatorToken!354))))) tp!552119 (inv!29081 (right!17818 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (value!123995 separatorToken!354))))) tp!552118))))

(declare-fun b!1935659 () Bool)

(declare-fun e!1237150 () Bool)

(declare-fun tp!552120 () Bool)

(assert (=> b!1935659 (= e!1237150 tp!552120)))

(declare-fun b!1935658 () Bool)

(declare-fun inv!29088 (IArray!14689) Bool)

(assert (=> b!1935658 (= e!1237151 (and (inv!29088 (xs!10236 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (value!123995 separatorToken!354))))) e!1237150))))

(assert (=> b!1933843 (= tp!551812 (and (inv!29081 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (value!123995 separatorToken!354)))) e!1237151))))

(assert (= (and b!1933843 ((_ is Node!7342) (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (value!123995 separatorToken!354))))) b!1935657))

(assert (= b!1935658 b!1935659))

(assert (= (and b!1933843 ((_ is Leaf!10777) (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (value!123995 separatorToken!354))))) b!1935658))

(declare-fun m!2375519 () Bool)

(assert (=> b!1935657 m!2375519))

(declare-fun m!2375521 () Bool)

(assert (=> b!1935657 m!2375521))

(declare-fun m!2375523 () Bool)

(assert (=> b!1935658 m!2375523))

(assert (=> b!1933843 m!2372569))

(declare-fun e!1237153 () Bool)

(declare-fun tp!552122 () Bool)

(declare-fun tp!552121 () Bool)

(declare-fun b!1935660 () Bool)

(assert (=> b!1935660 (= e!1237153 (and (inv!29081 (left!17488 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (value!123995 (h!27386 tokens!598)))))) tp!552122 (inv!29081 (right!17818 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (value!123995 (h!27386 tokens!598)))))) tp!552121))))

(declare-fun b!1935662 () Bool)

(declare-fun e!1237152 () Bool)

(declare-fun tp!552123 () Bool)

(assert (=> b!1935662 (= e!1237152 tp!552123)))

(declare-fun b!1935661 () Bool)

(assert (=> b!1935661 (= e!1237153 (and (inv!29088 (xs!10236 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (value!123995 (h!27386 tokens!598)))))) e!1237152))))

(assert (=> b!1933989 (= tp!551814 (and (inv!29081 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (value!123995 (h!27386 tokens!598))))) e!1237153))))

(assert (= (and b!1933989 ((_ is Node!7342) (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (value!123995 (h!27386 tokens!598)))))) b!1935660))

(assert (= b!1935661 b!1935662))

(assert (= (and b!1933989 ((_ is Leaf!10777) (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (value!123995 (h!27386 tokens!598)))))) b!1935661))

(declare-fun m!2375525 () Bool)

(assert (=> b!1935660 m!2375525))

(declare-fun m!2375527 () Bool)

(assert (=> b!1935660 m!2375527))

(declare-fun m!2375529 () Bool)

(assert (=> b!1935661 m!2375529))

(assert (=> b!1933989 m!2372799))

(declare-fun e!1237154 () Bool)

(assert (=> b!1934220 (= tp!551904 e!1237154)))

(declare-fun b!1935665 () Bool)

(declare-fun tp!552125 () Bool)

(assert (=> b!1935665 (= e!1237154 tp!552125)))

(declare-fun b!1935663 () Bool)

(assert (=> b!1935663 (= e!1237154 tp_is_empty!9153)))

(declare-fun b!1935666 () Bool)

(declare-fun tp!552126 () Bool)

(declare-fun tp!552124 () Bool)

(assert (=> b!1935666 (= e!1237154 (and tp!552126 tp!552124))))

(declare-fun b!1935664 () Bool)

(declare-fun tp!552127 () Bool)

(declare-fun tp!552128 () Bool)

(assert (=> b!1935664 (= e!1237154 (and tp!552127 tp!552128))))

(assert (= (and b!1934220 ((_ is ElementMatch!5369) (regOne!11251 (regex!3944 (rule!6153 separatorToken!354))))) b!1935663))

(assert (= (and b!1934220 ((_ is Concat!9450) (regOne!11251 (regex!3944 (rule!6153 separatorToken!354))))) b!1935664))

(assert (= (and b!1934220 ((_ is Star!5369) (regOne!11251 (regex!3944 (rule!6153 separatorToken!354))))) b!1935665))

(assert (= (and b!1934220 ((_ is Union!5369) (regOne!11251 (regex!3944 (rule!6153 separatorToken!354))))) b!1935666))

(declare-fun e!1237155 () Bool)

(assert (=> b!1934220 (= tp!551902 e!1237155)))

(declare-fun b!1935669 () Bool)

(declare-fun tp!552130 () Bool)

(assert (=> b!1935669 (= e!1237155 tp!552130)))

(declare-fun b!1935667 () Bool)

(assert (=> b!1935667 (= e!1237155 tp_is_empty!9153)))

(declare-fun b!1935670 () Bool)

(declare-fun tp!552131 () Bool)

(declare-fun tp!552129 () Bool)

(assert (=> b!1935670 (= e!1237155 (and tp!552131 tp!552129))))

(declare-fun b!1935668 () Bool)

(declare-fun tp!552132 () Bool)

(declare-fun tp!552133 () Bool)

(assert (=> b!1935668 (= e!1237155 (and tp!552132 tp!552133))))

(assert (= (and b!1934220 ((_ is ElementMatch!5369) (regTwo!11251 (regex!3944 (rule!6153 separatorToken!354))))) b!1935667))

(assert (= (and b!1934220 ((_ is Concat!9450) (regTwo!11251 (regex!3944 (rule!6153 separatorToken!354))))) b!1935668))

(assert (= (and b!1934220 ((_ is Star!5369) (regTwo!11251 (regex!3944 (rule!6153 separatorToken!354))))) b!1935669))

(assert (= (and b!1934220 ((_ is Union!5369) (regTwo!11251 (regex!3944 (rule!6153 separatorToken!354))))) b!1935670))

(declare-fun e!1237156 () Bool)

(assert (=> b!1934219 (= tp!551903 e!1237156)))

(declare-fun b!1935673 () Bool)

(declare-fun tp!552135 () Bool)

(assert (=> b!1935673 (= e!1237156 tp!552135)))

(declare-fun b!1935671 () Bool)

(assert (=> b!1935671 (= e!1237156 tp_is_empty!9153)))

(declare-fun b!1935674 () Bool)

(declare-fun tp!552136 () Bool)

(declare-fun tp!552134 () Bool)

(assert (=> b!1935674 (= e!1237156 (and tp!552136 tp!552134))))

(declare-fun b!1935672 () Bool)

(declare-fun tp!552137 () Bool)

(declare-fun tp!552138 () Bool)

(assert (=> b!1935672 (= e!1237156 (and tp!552137 tp!552138))))

(assert (= (and b!1934219 ((_ is ElementMatch!5369) (reg!5698 (regex!3944 (rule!6153 separatorToken!354))))) b!1935671))

(assert (= (and b!1934219 ((_ is Concat!9450) (reg!5698 (regex!3944 (rule!6153 separatorToken!354))))) b!1935672))

(assert (= (and b!1934219 ((_ is Star!5369) (reg!5698 (regex!3944 (rule!6153 separatorToken!354))))) b!1935673))

(assert (= (and b!1934219 ((_ is Union!5369) (reg!5698 (regex!3944 (rule!6153 separatorToken!354))))) b!1935674))

(declare-fun e!1237158 () Bool)

(declare-fun tp!552140 () Bool)

(declare-fun b!1935675 () Bool)

(declare-fun tp!552139 () Bool)

(assert (=> b!1935675 (= e!1237158 (and (inv!29081 (left!17488 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168))))) tp!552140 (inv!29081 (right!17818 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168))))) tp!552139))))

(declare-fun b!1935677 () Bool)

(declare-fun e!1237157 () Bool)

(declare-fun tp!552141 () Bool)

(assert (=> b!1935677 (= e!1237157 tp!552141)))

(declare-fun b!1935676 () Bool)

(assert (=> b!1935676 (= e!1237158 (and (inv!29088 (xs!10236 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168))))) e!1237157))))

(assert (=> b!1933915 (= tp!551813 (and (inv!29081 (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168)))) e!1237158))))

(assert (= (and b!1933915 ((_ is Node!7342) (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168))))) b!1935675))

(assert (= b!1935676 b!1935677))

(assert (= (and b!1933915 ((_ is Leaf!10777) (c!314508 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168))))) b!1935676))

(declare-fun m!2375531 () Bool)

(assert (=> b!1935675 m!2375531))

(declare-fun m!2375533 () Bool)

(assert (=> b!1935675 m!2375533))

(declare-fun m!2375535 () Bool)

(assert (=> b!1935676 m!2375535))

(assert (=> b!1933915 m!2372665))

(declare-fun b!1935680 () Bool)

(declare-fun e!1237161 () Bool)

(assert (=> b!1935680 (= e!1237161 true)))

(declare-fun b!1935679 () Bool)

(declare-fun e!1237160 () Bool)

(assert (=> b!1935679 (= e!1237160 e!1237161)))

(declare-fun b!1935678 () Bool)

(declare-fun e!1237159 () Bool)

(assert (=> b!1935678 (= e!1237159 e!1237160)))

(assert (=> b!1933984 e!1237159))

(assert (= b!1935679 b!1935680))

(assert (= b!1935678 b!1935679))

(assert (= (and b!1933984 ((_ is Cons!21984) (t!180605 rules!3198))) b!1935678))

(assert (=> b!1935680 (< (dynLambda!10697 order!13847 (toValue!5585 (transformation!3944 (h!27385 (t!180605 rules!3198))))) (dynLambda!10703 order!13855 lambda!75389))))

(assert (=> b!1935680 (< (dynLambda!10699 order!13851 (toChars!5444 (transformation!3944 (h!27385 (t!180605 rules!3198))))) (dynLambda!10703 order!13855 lambda!75389))))

(declare-fun e!1237162 () Bool)

(assert (=> b!1934237 (= tp!551925 e!1237162)))

(declare-fun b!1935683 () Bool)

(declare-fun tp!552143 () Bool)

(assert (=> b!1935683 (= e!1237162 tp!552143)))

(declare-fun b!1935681 () Bool)

(assert (=> b!1935681 (= e!1237162 tp_is_empty!9153)))

(declare-fun b!1935684 () Bool)

(declare-fun tp!552144 () Bool)

(declare-fun tp!552142 () Bool)

(assert (=> b!1935684 (= e!1237162 (and tp!552144 tp!552142))))

(declare-fun b!1935682 () Bool)

(declare-fun tp!552145 () Bool)

(declare-fun tp!552146 () Bool)

(assert (=> b!1935682 (= e!1237162 (and tp!552145 tp!552146))))

(assert (= (and b!1934237 ((_ is ElementMatch!5369) (regex!3944 (rule!6153 (h!27386 (t!180606 tokens!598)))))) b!1935681))

(assert (= (and b!1934237 ((_ is Concat!9450) (regex!3944 (rule!6153 (h!27386 (t!180606 tokens!598)))))) b!1935682))

(assert (= (and b!1934237 ((_ is Star!5369) (regex!3944 (rule!6153 (h!27386 (t!180606 tokens!598)))))) b!1935683))

(assert (= (and b!1934237 ((_ is Union!5369) (regex!3944 (rule!6153 (h!27386 (t!180606 tokens!598)))))) b!1935684))

(declare-fun e!1237163 () Bool)

(assert (=> b!1934218 (= tp!551905 e!1237163)))

(declare-fun b!1935687 () Bool)

(declare-fun tp!552148 () Bool)

(assert (=> b!1935687 (= e!1237163 tp!552148)))

(declare-fun b!1935685 () Bool)

(assert (=> b!1935685 (= e!1237163 tp_is_empty!9153)))

(declare-fun b!1935688 () Bool)

(declare-fun tp!552149 () Bool)

(declare-fun tp!552147 () Bool)

(assert (=> b!1935688 (= e!1237163 (and tp!552149 tp!552147))))

(declare-fun b!1935686 () Bool)

(declare-fun tp!552150 () Bool)

(declare-fun tp!552151 () Bool)

(assert (=> b!1935686 (= e!1237163 (and tp!552150 tp!552151))))

(assert (= (and b!1934218 ((_ is ElementMatch!5369) (regOne!11250 (regex!3944 (rule!6153 separatorToken!354))))) b!1935685))

(assert (= (and b!1934218 ((_ is Concat!9450) (regOne!11250 (regex!3944 (rule!6153 separatorToken!354))))) b!1935686))

(assert (= (and b!1934218 ((_ is Star!5369) (regOne!11250 (regex!3944 (rule!6153 separatorToken!354))))) b!1935687))

(assert (= (and b!1934218 ((_ is Union!5369) (regOne!11250 (regex!3944 (rule!6153 separatorToken!354))))) b!1935688))

(declare-fun e!1237164 () Bool)

(assert (=> b!1934218 (= tp!551906 e!1237164)))

(declare-fun b!1935691 () Bool)

(declare-fun tp!552153 () Bool)

(assert (=> b!1935691 (= e!1237164 tp!552153)))

(declare-fun b!1935689 () Bool)

(assert (=> b!1935689 (= e!1237164 tp_is_empty!9153)))

(declare-fun b!1935692 () Bool)

(declare-fun tp!552154 () Bool)

(declare-fun tp!552152 () Bool)

(assert (=> b!1935692 (= e!1237164 (and tp!552154 tp!552152))))

(declare-fun b!1935690 () Bool)

(declare-fun tp!552155 () Bool)

(declare-fun tp!552156 () Bool)

(assert (=> b!1935690 (= e!1237164 (and tp!552155 tp!552156))))

(assert (= (and b!1934218 ((_ is ElementMatch!5369) (regTwo!11250 (regex!3944 (rule!6153 separatorToken!354))))) b!1935689))

(assert (= (and b!1934218 ((_ is Concat!9450) (regTwo!11250 (regex!3944 (rule!6153 separatorToken!354))))) b!1935690))

(assert (= (and b!1934218 ((_ is Star!5369) (regTwo!11250 (regex!3944 (rule!6153 separatorToken!354))))) b!1935691))

(assert (= (and b!1934218 ((_ is Union!5369) (regTwo!11250 (regex!3944 (rule!6153 separatorToken!354))))) b!1935692))

(declare-fun b!1935693 () Bool)

(declare-fun e!1237165 () Bool)

(declare-fun tp!552157 () Bool)

(assert (=> b!1935693 (= e!1237165 (and tp_is_empty!9153 tp!552157))))

(assert (=> b!1934236 (= tp!551926 e!1237165)))

(assert (= (and b!1934236 ((_ is Cons!21982) (originalCharacters!4751 (h!27386 (t!180606 tokens!598))))) b!1935693))

(declare-fun b!1935697 () Bool)

(declare-fun b_free!55473 () Bool)

(declare-fun b_next!56177 () Bool)

(assert (=> b!1935697 (= b_free!55473 (not b_next!56177))))

(declare-fun tb!119223 () Bool)

(declare-fun t!180968 () Bool)

(assert (=> (and b!1935697 (= (toValue!5585 (transformation!3944 (rule!6153 (h!27386 (t!180606 (t!180606 tokens!598)))))) (toValue!5585 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741305)))))) t!180968) tb!119223))

(declare-fun result!143922 () Bool)

(assert (= result!143922 result!143884))

(assert (=> d!590581 t!180968))

(declare-fun t!180970 () Bool)

(declare-fun tb!119225 () Bool)

(assert (=> (and b!1935697 (= (toValue!5585 (transformation!3944 (rule!6153 (h!27386 (t!180606 (t!180606 tokens!598)))))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180970) tb!119225))

(declare-fun result!143924 () Bool)

(assert (= result!143924 result!143590))

(assert (=> d!589751 t!180970))

(declare-fun t!180972 () Bool)

(declare-fun tb!119227 () Bool)

(assert (=> (and b!1935697 (= (toValue!5585 (transformation!3944 (rule!6153 (h!27386 (t!180606 (t!180606 tokens!598)))))) (toValue!5585 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741380)))))) t!180972) tb!119227))

(declare-fun result!143926 () Bool)

(assert (= result!143926 result!143874))

(assert (=> d!590557 t!180972))

(declare-fun t!180974 () Bool)

(declare-fun tb!119229 () Bool)

(assert (=> (and b!1935697 (= (toValue!5585 (transformation!3944 (rule!6153 (h!27386 (t!180606 (t!180606 tokens!598)))))) (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180974) tb!119229))

(declare-fun result!143928 () Bool)

(assert (= result!143928 result!143598))

(assert (=> d!589687 t!180974))

(assert (=> d!589687 t!180970))

(declare-fun tp!552159 () Bool)

(declare-fun b_and!152631 () Bool)

(assert (=> b!1935697 (= tp!552159 (and (=> t!180972 result!143926) (=> t!180970 result!143924) (=> t!180974 result!143928) (=> t!180968 result!143922) b_and!152631))))

(declare-fun b_free!55475 () Bool)

(declare-fun b_next!56179 () Bool)

(assert (=> b!1935697 (= b_free!55475 (not b_next!56179))))

(declare-fun t!180976 () Bool)

(declare-fun tb!119231 () Bool)

(assert (=> (and b!1935697 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 (t!180606 tokens!598)))))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180976) tb!119231))

(declare-fun result!143930 () Bool)

(assert (= result!143930 result!143618))

(assert (=> b!1934161 t!180976))

(declare-fun t!180978 () Bool)

(declare-fun tb!119233 () Bool)

(assert (=> (and b!1935697 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 (t!180606 tokens!598)))))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598)))))) t!180978) tb!119233))

(declare-fun result!143932 () Bool)

(assert (= result!143932 result!143790))

(assert (=> d!590429 t!180978))

(declare-fun t!180980 () Bool)

(declare-fun tb!119235 () Bool)

(assert (=> (and b!1935697 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 (t!180606 tokens!598)))))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598))))) t!180980) tb!119235))

(declare-fun result!143934 () Bool)

(assert (= result!143934 result!143612))

(assert (=> d!589751 t!180980))

(declare-fun tb!119237 () Bool)

(declare-fun t!180982 () Bool)

(assert (=> (and b!1935697 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 (t!180606 tokens!598)))))) (toChars!5444 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741380)))))) t!180982) tb!119237))

(declare-fun result!143936 () Bool)

(assert (= result!143936 result!143770))

(assert (=> d!590409 t!180982))

(declare-fun t!180984 () Bool)

(declare-fun tb!119239 () Bool)

(assert (=> (and b!1935697 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 (t!180606 tokens!598)))))) (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354)))) t!180984) tb!119239))

(declare-fun result!143938 () Bool)

(assert (= result!143938 result!143604))

(assert (=> d!589735 t!180984))

(declare-fun t!180986 () Bool)

(declare-fun tb!119241 () Bool)

(assert (=> (and b!1935697 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 (t!180606 tokens!598)))))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (Cons!21985 (h!27386 tokens!598) Nil!21985)))))) t!180986) tb!119241))

(declare-fun result!143940 () Bool)

(assert (= result!143940 result!143780))

(assert (=> d!590421 t!180986))

(assert (=> b!1935494 t!180978))

(declare-fun t!180988 () Bool)

(declare-fun tb!119243 () Bool)

(assert (=> (and b!1935697 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 (t!180606 tokens!598)))))) (toChars!5444 (transformation!3944 (rule!6153 (ite c!314603 (h!27386 (t!180606 tokens!598)) (ite c!314602 separatorToken!354 (h!27386 (t!180606 tokens!598)))))))) t!180988) tb!119243))

(declare-fun result!143942 () Bool)

(assert (= result!143942 result!143864))

(assert (=> d!590545 t!180988))

(declare-fun tb!119245 () Bool)

(declare-fun t!180990 () Bool)

(assert (=> (and b!1935697 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 (t!180606 tokens!598)))))) (toChars!5444 (transformation!3944 (rule!6153 (_1!11772 (get!6933 lt!741305)))))) t!180990) tb!119245))

(declare-fun result!143944 () Bool)

(assert (= result!143944 result!143690))

(assert (=> d!589929 t!180990))

(declare-fun tb!119247 () Bool)

(declare-fun t!180992 () Bool)

(assert (=> (and b!1935697 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 (t!180606 tokens!598)))))) (toChars!5444 (transformation!3944 (rule!6153 (apply!5721 lt!741165 0))))) t!180992) tb!119247))

(declare-fun result!143946 () Bool)

(assert (= result!143946 result!143758))

(assert (=> d!590313 t!180992))

(assert (=> d!589783 t!180976))

(assert (=> b!1934018 t!180984))

(declare-fun b_and!152633 () Bool)

(declare-fun tp!552160 () Bool)

(assert (=> b!1935697 (= tp!552160 (and (=> t!180984 result!143938) (=> t!180976 result!143930) (=> t!180978 result!143932) (=> t!180986 result!143940) (=> t!180992 result!143946) (=> t!180982 result!143936) (=> t!180988 result!143942) (=> t!180980 result!143934) (=> t!180990 result!143944) b_and!152633))))

(declare-fun e!1237166 () Bool)

(declare-fun tp!552162 () Bool)

(declare-fun b!1935695 () Bool)

(declare-fun e!1237171 () Bool)

(assert (=> b!1935695 (= e!1237171 (and (inv!21 (value!123995 (h!27386 (t!180606 (t!180606 tokens!598))))) e!1237166 tp!552162))))

(declare-fun tp!552158 () Bool)

(declare-fun b!1935694 () Bool)

(declare-fun e!1237169 () Bool)

(assert (=> b!1935694 (= e!1237169 (and (inv!29077 (h!27386 (t!180606 (t!180606 tokens!598)))) e!1237171 tp!552158))))

(declare-fun b!1935696 () Bool)

(declare-fun e!1237168 () Bool)

(declare-fun tp!552161 () Bool)

(assert (=> b!1935696 (= e!1237166 (and tp!552161 (inv!29074 (tag!4398 (rule!6153 (h!27386 (t!180606 (t!180606 tokens!598)))))) (inv!29078 (transformation!3944 (rule!6153 (h!27386 (t!180606 (t!180606 tokens!598)))))) e!1237168))))

(assert (=> b!1935697 (= e!1237168 (and tp!552159 tp!552160))))

(assert (=> b!1934235 (= tp!551922 e!1237169)))

(assert (= b!1935696 b!1935697))

(assert (= b!1935695 b!1935696))

(assert (= b!1935694 b!1935695))

(assert (= (and b!1934235 ((_ is Cons!21985) (t!180606 (t!180606 tokens!598)))) b!1935694))

(declare-fun m!2375537 () Bool)

(assert (=> b!1935695 m!2375537))

(declare-fun m!2375539 () Bool)

(assert (=> b!1935694 m!2375539))

(declare-fun m!2375541 () Bool)

(assert (=> b!1935696 m!2375541))

(declare-fun m!2375543 () Bool)

(assert (=> b!1935696 m!2375543))

(declare-fun b_lambda!64451 () Bool)

(assert (= b_lambda!64409 (or b!1933975 b_lambda!64451)))

(declare-fun bs!415348 () Bool)

(declare-fun d!590637 () Bool)

(assert (= bs!415348 (and d!590637 b!1933975)))

(assert (=> bs!415348 (= (dynLambda!10704 lambda!75389 (h!27386 (t!180606 tokens!598))) (rulesProduceIndividualToken!1729 thiss!23328 rules!3198 (h!27386 (t!180606 tokens!598))))))

(assert (=> bs!415348 m!2373835))

(assert (=> d!590425 d!590637))

(declare-fun b_lambda!64453 () Bool)

(assert (= b_lambda!64443 (or (and b!1934216 b_free!55455 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))))) (and b!1933518 b_free!55443 (= (toChars!5444 (transformation!3944 (h!27385 rules!3198))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))))) (and b!1935639 b_free!55471 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 (t!180605 rules!3198))))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))))) (and b!1933531 b_free!55435 (= (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))))) (and b!1934238 b_free!55459) (and b!1935697 b_free!55475 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 (t!180606 tokens!598)))))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))))) (and b!1933530 b_free!55439 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))))) b_lambda!64453)))

(declare-fun b_lambda!64455 () Bool)

(assert (= b_lambda!64411 (or (and b!1934216 b_free!55455 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 rules!3198)))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))))) (and b!1933518 b_free!55443 (= (toChars!5444 (transformation!3944 (h!27385 rules!3198))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))))) (and b!1935639 b_free!55471 (= (toChars!5444 (transformation!3944 (h!27385 (t!180605 (t!180605 rules!3198))))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))))) (and b!1933531 b_free!55435 (= (toChars!5444 (transformation!3944 (rule!6153 separatorToken!354))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))))) (and b!1934238 b_free!55459) (and b!1935697 b_free!55475 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 (t!180606 tokens!598)))))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))))) (and b!1933530 b_free!55439 (= (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (toChars!5444 (transformation!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))))) b_lambda!64455)))

(declare-fun b_lambda!64457 () Bool)

(assert (= b_lambda!64449 (or d!589751 b_lambda!64457)))

(declare-fun bs!415349 () Bool)

(declare-fun d!590639 () Bool)

(assert (= bs!415349 (and d!590639 d!589751)))

(assert (=> bs!415349 (= (dynLambda!10708 lambda!75386 lt!741168) (= (list!8905 (dynLambda!10701 (toChars!5444 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168))) (list!8905 lt!741168)))))

(declare-fun b_lambda!64465 () Bool)

(assert (=> (not b_lambda!64465) (not bs!415349)))

(assert (=> bs!415349 t!180663))

(declare-fun b_and!152635 () Bool)

(assert (= b_and!152609 (and (=> t!180663 result!143614) b_and!152635)))

(assert (=> bs!415349 t!180716))

(declare-fun b_and!152637 () Bool)

(assert (= b_and!152613 (and (=> t!180716 result!143676) b_and!152637)))

(assert (=> bs!415349 t!180661))

(declare-fun b_and!152639 () Bool)

(assert (= b_and!152607 (and (=> t!180661 result!143612) b_and!152639)))

(assert (=> bs!415349 t!180954))

(declare-fun b_and!152641 () Bool)

(assert (= b_and!152629 (and (=> t!180954 result!143906) b_and!152641)))

(assert (=> bs!415349 t!180980))

(declare-fun b_and!152643 () Bool)

(assert (= b_and!152633 (and (=> t!180980 result!143934) b_and!152643)))

(assert (=> bs!415349 t!180706))

(declare-fun b_and!152645 () Bool)

(assert (= b_and!152615 (and (=> t!180706 result!143664) b_and!152645)))

(assert (=> bs!415349 t!180665))

(declare-fun b_and!152647 () Bool)

(assert (= b_and!152611 (and (=> t!180665 result!143616) b_and!152647)))

(declare-fun b_lambda!64467 () Bool)

(assert (=> (not b_lambda!64467) (not bs!415349)))

(assert (=> bs!415349 t!180944))

(declare-fun b_and!152649 () Bool)

(assert (= b_and!152627 (and (=> t!180944 result!143896) b_and!152649)))

(assert (=> bs!415349 t!180646))

(declare-fun b_and!152651 () Bool)

(assert (= b_and!152621 (and (=> t!180646 result!143596) b_and!152651)))

(assert (=> bs!415349 t!180642))

(declare-fun b_and!152653 () Bool)

(assert (= b_and!152625 (and (=> t!180642 result!143590) b_and!152653)))

(assert (=> bs!415349 t!180644))

(declare-fun b_and!152655 () Bool)

(assert (= b_and!152619 (and (=> t!180644 result!143594) b_and!152655)))

(assert (=> bs!415349 t!180700))

(declare-fun b_and!152657 () Bool)

(assert (= b_and!152617 (and (=> t!180700 result!143658) b_and!152657)))

(assert (=> bs!415349 t!180970))

(declare-fun b_and!152659 () Bool)

(assert (= b_and!152631 (and (=> t!180970 result!143924) b_and!152659)))

(assert (=> bs!415349 t!180710))

(declare-fun b_and!152661 () Bool)

(assert (= b_and!152623 (and (=> t!180710 result!143670) b_and!152661)))

(assert (=> bs!415349 m!2372561))

(assert (=> bs!415349 m!2372669))

(assert (=> bs!415349 m!2372673))

(assert (=> bs!415349 m!2372153))

(assert (=> bs!415349 m!2372561))

(assert (=> bs!415349 m!2372669))

(assert (=> d!590633 d!590639))

(declare-fun b_lambda!64459 () Bool)

(assert (= b_lambda!64413 (or d!589687 b_lambda!64459)))

(declare-fun bs!415350 () Bool)

(declare-fun d!590641 () Bool)

(assert (= bs!415350 (and d!590641 d!589687)))

(declare-fun res!865425 () Bool)

(declare-fun e!1237172 () Bool)

(assert (=> bs!415350 (=> res!865425 e!1237172)))

(assert (=> bs!415350 (= res!865425 (not (= (list!8905 lt!741168) (list!8905 (seqFromList!2798 (originalCharacters!4751 (h!27386 tokens!598)))))))))

(assert (=> bs!415350 (= (dynLambda!10707 lambda!75383 lt!741168 (seqFromList!2798 (originalCharacters!4751 (h!27386 tokens!598)))) e!1237172)))

(declare-fun b!1935698 () Bool)

(assert (=> b!1935698 (= e!1237172 (= (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) lt!741168) (dynLambda!10700 (toValue!5585 (transformation!3944 (rule!6153 (h!27386 tokens!598)))) (seqFromList!2798 (originalCharacters!4751 (h!27386 tokens!598))))))))

(assert (= (and bs!415350 (not res!865425)) b!1935698))

(declare-fun b_lambda!64469 () Bool)

(assert (=> (not b_lambda!64469) (not b!1935698)))

(assert (=> b!1935698 t!180944))

(declare-fun b_and!152663 () Bool)

(assert (= b_and!152649 (and (=> t!180944 result!143896) b_and!152663)))

(assert (=> b!1935698 t!180642))

(declare-fun b_and!152665 () Bool)

(assert (= b_and!152653 (and (=> t!180642 result!143590) b_and!152665)))

(assert (=> b!1935698 t!180700))

(declare-fun b_and!152667 () Bool)

(assert (= b_and!152657 (and (=> t!180700 result!143658) b_and!152667)))

(assert (=> b!1935698 t!180710))

(declare-fun b_and!152669 () Bool)

(assert (= b_and!152661 (and (=> t!180710 result!143670) b_and!152669)))

(assert (=> b!1935698 t!180970))

(declare-fun b_and!152671 () Bool)

(assert (= b_and!152659 (and (=> t!180970 result!143924) b_and!152671)))

(assert (=> b!1935698 t!180646))

(declare-fun b_and!152673 () Bool)

(assert (= b_and!152651 (and (=> t!180646 result!143596) b_and!152673)))

(assert (=> b!1935698 t!180644))

(declare-fun b_and!152675 () Bool)

(assert (= b_and!152655 (and (=> t!180644 result!143594) b_and!152675)))

(declare-fun b_lambda!64471 () Bool)

(assert (=> (not b_lambda!64471) (not b!1935698)))

(assert (=> b!1935698 t!180650))

(declare-fun b_and!152677 () Bool)

(assert (= b_and!152675 (and (=> t!180650 result!143600) b_and!152677)))

(assert (=> b!1935698 t!180948))

(declare-fun b_and!152679 () Bool)

(assert (= b_and!152663 (and (=> t!180948 result!143900) b_and!152679)))

(assert (=> b!1935698 t!180648))

(declare-fun b_and!152681 () Bool)

(assert (= b_and!152665 (and (=> t!180648 result!143598) b_and!152681)))

(assert (=> b!1935698 t!180974))

(declare-fun b_and!152683 () Bool)

(assert (= b_and!152671 (and (=> t!180974 result!143928) b_and!152683)))

(assert (=> b!1935698 t!180652))

(declare-fun b_and!152685 () Bool)

(assert (= b_and!152673 (and (=> t!180652 result!143602) b_and!152685)))

(assert (=> b!1935698 t!180712))

(declare-fun b_and!152687 () Bool)

(assert (= b_and!152669 (and (=> t!180712 result!143672) b_and!152687)))

(assert (=> b!1935698 t!180702))

(declare-fun b_and!152689 () Bool)

(assert (= b_and!152667 (and (=> t!180702 result!143660) b_and!152689)))

(assert (=> bs!415350 m!2372153))

(assert (=> bs!415350 m!2372131))

(assert (=> bs!415350 m!2372563))

(assert (=> b!1935698 m!2372561))

(assert (=> b!1935698 m!2372131))

(assert (=> b!1935698 m!2372559))

(assert (=> d!590451 d!590641))

(declare-fun b_lambda!64461 () Bool)

(assert (= b_lambda!64447 (or b!1933516 b_lambda!64461)))

(declare-fun bs!415351 () Bool)

(declare-fun d!590643 () Bool)

(assert (= bs!415351 (and d!590643 b!1933516)))

(assert (=> bs!415351 (= (dynLambda!10704 lambda!75371 (h!27386 (t!180606 tokens!598))) (not (isSeparator!3944 (rule!6153 (h!27386 (t!180606 tokens!598))))))))

(assert (=> b!1935518 d!590643))

(declare-fun b_lambda!64463 () Bool)

(assert (= b_lambda!64403 (or d!589835 b_lambda!64463)))

(declare-fun bs!415352 () Bool)

(declare-fun d!590645 () Bool)

(assert (= bs!415352 (and d!590645 d!589835)))

(assert (=> bs!415352 (= (dynLambda!10704 lambda!75395 (h!27386 tokens!598)) (rulesProduceIndividualToken!1729 thiss!23328 rules!3198 (h!27386 tokens!598)))))

(assert (=> bs!415352 m!2372171))

(assert (=> b!1935106 d!590645))

(check-sat (not b!1935546) (not b!1934423) (not d!589989) (not b!1934398) (not b!1934924) (not d!590381) (not b!1935538) (not b!1935590) (not b!1934541) (not b_lambda!64457) (not b!1935542) (not d!590421) (not d!589949) (not b!1934386) (not b!1935561) (not tb!118995) (not b!1934381) (not b!1935595) (not bm!119065) (not b!1935498) (not b!1934961) (not b!1935513) (not b!1935607) (not b_next!56173) (not b!1935054) (not b!1935182) (not b!1934912) b_and!152677 (not b!1935162) (not b_next!56161) (not b!1935615) (not b_next!56159) (not d!589919) (not b!1935529) (not bm!119043) (not b!1935491) (not b!1935618) (not d!590425) (not b!1934509) (not b_lambda!64369) (not b_lambda!64363) (not d!590025) (not d!590031) (not b!1935557) (not d!590607) (not d!590235) (not bm!119028) (not b!1935117) (not d!590453) (not b!1935209) (not b!1935467) (not b_lambda!64471) (not b_lambda!64469) (not b!1935146) (not b!1935610) (not b_lambda!64375) (not d!590605) (not b!1935048) (not b!1935119) (not b!1935556) b_and!152689 (not d!590447) (not b!1935604) (not b!1935520) (not b!1935564) (not b!1935543) (not b_next!56137) (not d!590345) (not b!1935560) (not bm!119042) (not b!1935535) (not d!589933) (not b!1934956) (not b!1935683) b_and!152635 (not bm!119015) (not d!590553) (not d!590437) (not b!1935210) (not b!1935108) (not b!1935499) (not d!590373) (not b!1935643) (not d!590385) (not b!1934528) (not b!1935555) (not d!590001) (not b!1935049) (not b_lambda!64455) (not b!1934689) (not d!590465) (not b!1934445) (not b_lambda!64357) (not d!590027) (not b!1935632) (not b!1934387) (not b!1935159) (not b!1933915) (not b!1934429) (not b_lambda!64465) (not b!1935116) (not b!1935493) (not b_next!56147) (not d!589921) (not b!1935622) (not b!1934873) (not b!1934911) (not b_lambda!64407) (not d!590591) (not tb!119075) (not b!1934691) (not b!1935581) (not d!590355) (not b!1935591) (not b!1934526) (not b_lambda!64441) (not b_lambda!64453) (not b_lambda!64461) (not bm!119039) (not b!1935145) (not b!1935205) (not d!590239) (not d!590033) (not b!1934925) (not bm!118983) (not b!1935677) (not b!1935489) (not b!1934870) (not b!1935500) (not b!1935128) (not d!589927) (not b!1935586) (not b!1935612) (not b!1935674) (not d!590547) (not b!1935673) (not bm!119048) (not b!1935666) (not tb!119085) (not d!590221) (not d!589923) (not b!1935659) (not b!1935668) (not b!1935575) (not b!1935646) (not b!1935687) (not b!1935692) (not b!1935636) (not d!589947) (not b!1935626) (not b_next!56177) (not b!1935495) (not b!1934478) (not b!1934444) (not d!590419) (not d!590579) (not d!590321) (not b!1934965) (not b_lambda!64365) (not b!1934397) (not b!1934675) (not tb!119187) (not d!590415) (not bm!119041) (not b!1935694) (not b!1935661) (not b!1935053) (not b!1935189) (not b!1935156) (not b!1934424) (not b!1934392) (not b!1934431) (not d!590451) (not b!1934887) (not d!589917) (not b!1935675) (not b!1934524) (not b!1935588) (not b!1935183) (not d!590313) (not b!1935211) (not b!1935163) (not b_lambda!64405) (not b_next!56143) (not d!590375) (not d!590231) (not b!1935218) (not b!1935686) (not b!1935143) (not b!1935596) (not b!1934741) (not b!1934539) (not bm!119021) (not b!1933843) (not b!1935213) (not b!1934442) (not d!590577) (not d!590223) (not b_lambda!64355) (not b!1935181) (not d!589929) (not b!1935534) (not b!1934957) (not b!1934959) (not b!1935135) (not b!1935473) b_and!152685 (not b!1935112) (not d!590563) (not b!1935565) (not b!1935492) (not d!590449) (not b!1934380) (not bm!119050) (not b!1935533) (not d!590627) (not b!1934538) (not b!1934868) (not b!1934740) (not d!590043) b_and!152647 (not b!1935100) (not b!1935597) (not b!1935640) (not b!1934869) b_and!152681 (not b!1934393) (not b!1935155) (not b!1935052) (not b!1934502) (not b!1935464) (not b!1935107) (not b!1935539) (not b!1935611) (not bm!119037) (not d!590549) (not b!1935644) (not b!1935504) (not bs!415348) (not d!589993) (not b!1934963) (not bm!119045) (not b!1935676) (not b!1935578) (not b!1935678) (not b!1935608) b_and!152641 (not b!1935012) (not d!590559) (not b!1934482) (not b!1935515) (not b!1935216) (not b!1935619) (not b!1935201) (not d!590411) (not d!589937) (not b!1934532) (not b!1935475) (not bm!119053) (not bm!119018) (not b!1935138) (not b!1935164) (not b!1935517) (not b!1935177) (not d!590621) (not tb!119167) (not bs!415352) (not b!1935647) (not d!590361) (not b!1935055) (not bm!119047) (not b!1935465) (not d!590299) (not b!1935122) (not b!1935005) (not b!1934379) (not b!1934981) b_and!152687 (not b!1934677) (not d!590017) (not b!1935665) b_and!152645 (not b!1935664) (not b!1935505) (not bm!119027) (not d!590631) (not b_lambda!64439) (not d!590335) (not b!1935696) (not b!1935547) (not d!590467) (not d!590545) (not b!1935637) (not b_lambda!64399) (not b!1935184) (not b!1934958) (not d!590273) (not b!1934855) (not tb!119177) (not d!590391) (not b!1935628) b_and!152679 (not b_lambda!64367) (not b!1935202) (not d!590147) (not d!590171) (not d!589955) (not b!1935522) (not d!589953) (not d!589957) (not d!590543) (not b_lambda!64359) (not b!1935627) (not b_next!56141) (not d!590393) (not bs!415350) (not b!1935662) (not b!1934441) (not bm!119063) (not b!1935574) (not b!1934449) (not b!1935567) (not b!1934460) (not b!1935103) (not b!1935580) (not d!590279) (not b!1934980) (not b!1934501) (not b!1934866) b_and!152637 (not d!590303) tp_is_empty!9153 (not d!590417) (not d!590573) (not d!590247) (not d!590613) (not b_lambda!64371) (not d!590611) (not d!590207) (not b!1935472) (not b!1934404) (not d!590429) (not b_next!56145) (not b!1935137) (not d!589945) (not bm!119051) (not d!590615) (not b!1935631) (not b!1935566) (not bm!119014) (not d!589951) (not b!1935136) (not b!1934396) (not d!590407) (not b!1935635) (not b!1935660) (not b!1935638) (not b!1934511) (not b!1934960) (not b!1934834) (not d!590583) (not b!1934864) (not b!1935121) (not d!590571) (not b!1935598) (not b!1935488) (not d!590473) (not bm!119062) (not b!1935469) (not b!1935148) (not b!1934486) (not b!1934430) (not d!590471) (not d!590003) (not d!590603) (not d!590455) (not b!1935669) (not b!1934982) (not b!1935519) (not d!590623) (not b!1935614) (not b!1934862) (not d!590379) (not b_next!56157) (not b!1935178) (not b!1935624) (not b!1935133) (not b!1935110) b_and!152639 (not d!590593) (not b!1935549) (not d!590633) (not b!1934530) (not b!1935670) (not b!1934857) (not d!590319) (not d!590441) (not d!590427) (not d!589987) (not b!1935684) (not b_next!56139) (not b!1935688) (not b!1935219) (not b!1934427) (not b!1935172) (not d!590233) (not d!590021) (not d!590629) (not b!1935579) (not d!590439) b_and!152683 (not b!1935527) (not d!590395) (not b!1935634) (not b_lambda!64445) (not b_lambda!64463) (not b!1935587) (not d!590387) (not d!590329) (not b!1934480) (not d!590263) (not b!1935134) (not d!590431) (not d!589963) (not b!1935531) (not b!1934861) (not d!590173) (not b!1934443) (not b!1935214) (not d!589931) (not d!590241) (not b!1935142) (not b!1935682) (not b!1935215) (not d!590145) (not b!1934484) (not b!1935140) (not b!1935616) (not b!1935040) (not d!590625) (not b!1934690) (not b!1935129) (not b!1935507) (not bm!119064) (not b!1935152) (not d!589961) (not d!590009) (not b!1935690) (not d!590405) (not b!1935207) (not b!1935462) (not b!1935011) (not b!1934399) (not b!1935114) (not b!1934865) (not d!590141) (not b!1935603) (not b!1934451) (not b!1934872) (not d!589995) (not b!1935623) (not d!590409) (not b!1935204) (not d!590237) (not bm!118980) (not d!590435) (not b!1935657) (not d!589959) (not b!1935695) (not b!1934863) (not b!1935548) (not b!1935620) (not b_next!56175) (not b!1935594) (not b_next!56179) (not b_next!56163) (not b!1934510) (not b!1934860) (not d!590457) (not b!1935494) (not b!1935217) (not tb!119095) (not d!590461) (not b!1935642) (not b!1933989) (not b_lambda!64361) (not b!1934739) (not bs!415349) (not b!1935149) (not b_lambda!64459) (not d!590377) (not d!590277) (not d!590567) (not bm!119022) (not b!1935602) (not b!1935691) (not b!1935490) (not d!590383) (not b!1934871) (not b!1934676) (not d!590369) (not b!1934785) (not b!1935693) (not b!1934426) (not b!1935648) (not b!1935126) (not b!1935589) (not b!1935658) (not d!590243) (not b!1935125) (not b_lambda!64451) (not b!1935104) (not b!1935139) (not b!1935606) (not d!589935) (not b_lambda!64467) (not tb!119061) (not d!590401) (not d!590565) (not b!1935630) (not b!1935470) (not b!1935672) (not d!590029) (not b!1934428) (not b!1935592) (not b!1935086) (not b!1935528) b_and!152643)
(check-sat (not b_next!56159) b_and!152689 (not b_next!56147) (not b_next!56177) (not b_next!56143) b_and!152685 b_and!152641 b_and!152679 (not b_next!56145) (not b_next!56163) b_and!152643 (not b_next!56173) b_and!152677 (not b_next!56161) (not b_next!56137) b_and!152635 b_and!152647 b_and!152681 b_and!152687 b_and!152645 (not b_next!56141) b_and!152637 (not b_next!56157) b_and!152639 (not b_next!56139) b_and!152683 (not b_next!56175) (not b_next!56179))
