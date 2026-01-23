; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241390 () Bool)

(assert start!241390)

(declare-fun b!2475332 () Bool)

(declare-fun b_free!71813 () Bool)

(declare-fun b_next!72517 () Bool)

(assert (=> b!2475332 (= b_free!71813 (not b_next!72517))))

(declare-fun tp!791582 () Bool)

(declare-fun b_and!187989 () Bool)

(assert (=> b!2475332 (= tp!791582 b_and!187989)))

(declare-fun b_free!71815 () Bool)

(declare-fun b_next!72519 () Bool)

(assert (=> b!2475332 (= b_free!71815 (not b_next!72519))))

(declare-fun tp!791573 () Bool)

(declare-fun b_and!187991 () Bool)

(assert (=> b!2475332 (= tp!791573 b_and!187991)))

(declare-fun b!2475324 () Bool)

(declare-fun b_free!71817 () Bool)

(declare-fun b_next!72521 () Bool)

(assert (=> b!2475324 (= b_free!71817 (not b_next!72521))))

(declare-fun tp!791577 () Bool)

(declare-fun b_and!187993 () Bool)

(assert (=> b!2475324 (= tp!791577 b_and!187993)))

(declare-fun b_free!71819 () Bool)

(declare-fun b_next!72523 () Bool)

(assert (=> b!2475324 (= b_free!71819 (not b_next!72523))))

(declare-fun tp!791578 () Bool)

(declare-fun b_and!187995 () Bool)

(assert (=> b!2475324 (= tp!791578 b_and!187995)))

(declare-fun b!2475329 () Bool)

(declare-fun b_free!71821 () Bool)

(declare-fun b_next!72525 () Bool)

(assert (=> b!2475329 (= b_free!71821 (not b_next!72525))))

(declare-fun tp!791583 () Bool)

(declare-fun b_and!187997 () Bool)

(assert (=> b!2475329 (= tp!791583 b_and!187997)))

(declare-fun b_free!71823 () Bool)

(declare-fun b_next!72527 () Bool)

(assert (=> b!2475329 (= b_free!71823 (not b_next!72527))))

(declare-fun tp!791567 () Bool)

(declare-fun b_and!187999 () Bool)

(assert (=> b!2475329 (= tp!791567 b_and!187999)))

(declare-fun b!2475334 () Bool)

(declare-fun b_free!71825 () Bool)

(declare-fun b_next!72529 () Bool)

(assert (=> b!2475334 (= b_free!71825 (not b_next!72529))))

(declare-fun tp!791581 () Bool)

(declare-fun b_and!188001 () Bool)

(assert (=> b!2475334 (= tp!791581 b_and!188001)))

(declare-fun b_free!71827 () Bool)

(declare-fun b_next!72531 () Bool)

(assert (=> b!2475334 (= b_free!71827 (not b_next!72531))))

(declare-fun tp!791574 () Bool)

(declare-fun b_and!188003 () Bool)

(assert (=> b!2475334 (= tp!791574 b_and!188003)))

(declare-fun e!1570384 () Bool)

(declare-fun b!2475315 () Bool)

(declare-fun tp!791569 () Bool)

(declare-fun e!1570391 () Bool)

(declare-datatypes ((List!29004 0))(
  ( (Nil!28904) (Cons!28904 (h!34305 (_ BitVec 16)) (t!210557 List!29004)) )
))
(declare-datatypes ((TokenValue!4695 0))(
  ( (FloatLiteralValue!9390 (text!33310 List!29004)) (TokenValueExt!4694 (__x!18645 Int)) (Broken!23475 (value!143886 List!29004)) (Object!4794) (End!4695) (Def!4695) (Underscore!4695) (Match!4695) (Else!4695) (Error!4695) (Case!4695) (If!4695) (Extends!4695) (Abstract!4695) (Class!4695) (Val!4695) (DelimiterValue!9390 (del!4755 List!29004)) (KeywordValue!4701 (value!143887 List!29004)) (CommentValue!9390 (value!143888 List!29004)) (WhitespaceValue!9390 (value!143889 List!29004)) (IndentationValue!4695 (value!143890 List!29004)) (String!31770) (Int32!4695) (Broken!23476 (value!143891 List!29004)) (Boolean!4696) (Unit!42275) (OperatorValue!4698 (op!4755 List!29004)) (IdentifierValue!9390 (value!143892 List!29004)) (IdentifierValue!9391 (value!143893 List!29004)) (WhitespaceValue!9391 (value!143894 List!29004)) (True!9390) (False!9390) (Broken!23477 (value!143895 List!29004)) (Broken!23478 (value!143896 List!29004)) (True!9391) (RightBrace!4695) (RightBracket!4695) (Colon!4695) (Null!4695) (Comma!4695) (LeftBracket!4695) (False!9391) (LeftBrace!4695) (ImaginaryLiteralValue!4695 (text!33311 List!29004)) (StringLiteralValue!14085 (value!143897 List!29004)) (EOFValue!4695 (value!143898 List!29004)) (IdentValue!4695 (value!143899 List!29004)) (DelimiterValue!9391 (value!143900 List!29004)) (DedentValue!4695 (value!143901 List!29004)) (NewLineValue!4695 (value!143902 List!29004)) (IntegerValue!14085 (value!143903 (_ BitVec 32)) (text!33312 List!29004)) (IntegerValue!14086 (value!143904 Int) (text!33313 List!29004)) (Times!4695) (Or!4695) (Equal!4695) (Minus!4695) (Broken!23479 (value!143905 List!29004)) (And!4695) (Div!4695) (LessEqual!4695) (Mod!4695) (Concat!11992) (Not!4695) (Plus!4695) (SpaceValue!4695 (value!143906 List!29004)) (IntegerValue!14087 (value!143907 Int) (text!33314 List!29004)) (StringLiteralValue!14086 (text!33315 List!29004)) (FloatLiteralValue!9391 (text!33316 List!29004)) (BytesLiteralValue!4695 (value!143908 List!29004)) (CommentValue!9391 (value!143909 List!29004)) (StringLiteralValue!14087 (value!143910 List!29004)) (ErrorTokenValue!4695 (msg!4756 List!29004)) )
))
(declare-datatypes ((C!14752 0))(
  ( (C!14753 (val!8636 Int)) )
))
(declare-datatypes ((List!29005 0))(
  ( (Nil!28905) (Cons!28905 (h!34306 C!14752) (t!210558 List!29005)) )
))
(declare-datatypes ((IArray!18463 0))(
  ( (IArray!18464 (innerList!9289 List!29005)) )
))
(declare-datatypes ((Conc!9229 0))(
  ( (Node!9229 (left!22162 Conc!9229) (right!22492 Conc!9229) (csize!18688 Int) (cheight!9440 Int)) (Leaf!13791 (xs!12213 IArray!18463) (csize!18689 Int)) (Empty!9229) )
))
(declare-datatypes ((BalanceConc!18072 0))(
  ( (BalanceConc!18073 (c!393992 Conc!9229)) )
))
(declare-datatypes ((Regex!7297 0))(
  ( (ElementMatch!7297 (c!393993 C!14752)) (Concat!11993 (regOne!15106 Regex!7297) (regTwo!15106 Regex!7297)) (EmptyExpr!7297) (Star!7297 (reg!7626 Regex!7297)) (EmptyLang!7297) (Union!7297 (regOne!15107 Regex!7297) (regTwo!15107 Regex!7297)) )
))
(declare-datatypes ((String!31771 0))(
  ( (String!31772 (value!143911 String)) )
))
(declare-datatypes ((TokenValueInjection!8890 0))(
  ( (TokenValueInjection!8891 (toValue!6373 Int) (toChars!6232 Int)) )
))
(declare-datatypes ((Rule!8818 0))(
  ( (Rule!8819 (regex!4509 Regex!7297) (tag!4999 String!31771) (isSeparator!4509 Bool) (transformation!4509 TokenValueInjection!8890)) )
))
(declare-datatypes ((Token!8488 0))(
  ( (Token!8489 (value!143912 TokenValue!4695) (rule!6867 Rule!8818) (size!22491 Int) (originalCharacters!5275 List!29005)) )
))
(declare-datatypes ((List!29006 0))(
  ( (Nil!28906) (Cons!28906 (h!34307 Token!8488) (t!210559 List!29006)) )
))
(declare-fun l!6611 () List!29006)

(declare-fun inv!38997 (Token!8488) Bool)

(assert (=> b!2475315 (= e!1570391 (and (inv!38997 (h!34307 l!6611)) e!1570384 tp!791569))))

(declare-fun b!2475316 () Bool)

(declare-fun res!1048053 () Bool)

(declare-fun e!1570390 () Bool)

(assert (=> b!2475316 (=> (not res!1048053) (not e!1570390))))

(declare-fun t2!67 () Token!8488)

(declare-fun i!1803 () Int)

(declare-fun apply!6822 (List!29006 Int) Token!8488)

(assert (=> b!2475316 (= res!1048053 (= (apply!6822 l!6611 (+ 1 i!1803)) t2!67))))

(declare-fun b!2475317 () Bool)

(declare-fun res!1048041 () Bool)

(assert (=> b!2475317 (=> (not res!1048041) (not e!1570390))))

(declare-datatypes ((LexerInterface!4106 0))(
  ( (LexerInterfaceExt!4103 (__x!18646 Int)) (Lexer!4104) )
))
(declare-fun thiss!27932 () LexerInterface!4106)

(declare-datatypes ((List!29007 0))(
  ( (Nil!28907) (Cons!28907 (h!34308 Rule!8818) (t!210560 List!29007)) )
))
(declare-fun rules!4472 () List!29007)

(declare-fun rulesInvariant!3606 (LexerInterface!4106 List!29007) Bool)

(assert (=> b!2475317 (= res!1048041 (rulesInvariant!3606 thiss!27932 rules!4472))))

(declare-fun e!1570398 () Bool)

(declare-fun b!2475318 () Bool)

(declare-fun t1!67 () Token!8488)

(declare-fun separableTokensPredicate!881 (LexerInterface!4106 Token!8488 Token!8488 List!29007) Bool)

(assert (=> b!2475318 (= e!1570398 (separableTokensPredicate!881 thiss!27932 t1!67 t2!67 rules!4472))))

(declare-fun b!2475319 () Bool)

(declare-fun e!1570392 () Bool)

(assert (=> b!2475319 (= e!1570390 e!1570392)))

(declare-fun res!1048047 () Bool)

(assert (=> b!2475319 (=> (not res!1048047) (not e!1570392))))

(declare-fun lt!883984 () List!29006)

(declare-fun rulesProduceEachTokenIndividuallyList!1422 (LexerInterface!4106 List!29007 List!29006) Bool)

(assert (=> b!2475319 (= res!1048047 (rulesProduceEachTokenIndividuallyList!1422 thiss!27932 rules!4472 lt!883984))))

(declare-fun tail!3942 (List!29006) List!29006)

(assert (=> b!2475319 (= lt!883984 (tail!3942 l!6611))))

(declare-fun b!2475321 () Bool)

(declare-fun res!1048045 () Bool)

(assert (=> b!2475321 (=> (not res!1048045) (not e!1570390))))

(assert (=> b!2475321 (= res!1048045 (rulesProduceEachTokenIndividuallyList!1422 thiss!27932 rules!4472 l!6611))))

(declare-fun b!2475322 () Bool)

(declare-fun res!1048050 () Bool)

(assert (=> b!2475322 (=> (not res!1048050) (not e!1570392))))

(assert (=> b!2475322 (= res!1048050 (>= (- i!1803 1) 0))))

(declare-fun b!2475323 () Bool)

(declare-fun res!1048040 () Bool)

(assert (=> b!2475323 (=> (not res!1048040) (not e!1570392))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!645 (LexerInterface!4106 List!29006 List!29007) Bool)

(assert (=> b!2475323 (= res!1048040 (tokensListTwoByTwoPredicateSeparableList!645 thiss!27932 lt!883984 rules!4472))))

(declare-fun e!1570385 () Bool)

(assert (=> b!2475324 (= e!1570385 (and tp!791577 tp!791578))))

(declare-fun tp!791570 () Bool)

(declare-fun e!1570396 () Bool)

(declare-fun b!2475325 () Bool)

(declare-fun e!1570383 () Bool)

(declare-fun inv!38994 (String!31771) Bool)

(declare-fun inv!38998 (TokenValueInjection!8890) Bool)

(assert (=> b!2475325 (= e!1570396 (and tp!791570 (inv!38994 (tag!4999 (rule!6867 t1!67))) (inv!38998 (transformation!4509 (rule!6867 t1!67))) e!1570383))))

(declare-fun b!2475326 () Bool)

(declare-fun e!1570386 () Bool)

(assert (=> b!2475326 (= e!1570392 e!1570386)))

(declare-fun res!1048046 () Bool)

(assert (=> b!2475326 (=> (not res!1048046) (not e!1570386))))

(declare-fun lt!883979 () Int)

(declare-fun size!22492 (List!29006) Int)

(assert (=> b!2475326 (= res!1048046 (< lt!883979 (size!22492 lt!883984)))))

(assert (=> b!2475326 (= lt!883979 (+ 1 (- i!1803 1)))))

(declare-fun b!2475327 () Bool)

(declare-fun contains!4933 (List!29006 Token!8488) Bool)

(assert (=> b!2475327 (= e!1570386 (not (contains!4933 l!6611 t2!67)))))

(declare-datatypes ((Unit!42276 0))(
  ( (Unit!42277) )
))
(declare-fun lt!883980 () Unit!42276)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!695 (LexerInterface!4106 List!29007 List!29006 Token!8488) Unit!42276)

(assert (=> b!2475327 (= lt!883980 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!695 thiss!27932 rules!4472 l!6611 t1!67))))

(assert (=> b!2475327 e!1570398))

(declare-fun res!1048044 () Bool)

(assert (=> b!2475327 (=> (not res!1048044) (not e!1570398))))

(declare-fun rulesProduceIndividualToken!1834 (LexerInterface!4106 List!29007 Token!8488) Bool)

(assert (=> b!2475327 (= res!1048044 (rulesProduceIndividualToken!1834 thiss!27932 rules!4472 t2!67))))

(declare-fun lt!883983 () Unit!42276)

(assert (=> b!2475327 (= lt!883983 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!695 thiss!27932 rules!4472 lt!883984 t2!67))))

(assert (=> b!2475327 (rulesProduceIndividualToken!1834 thiss!27932 rules!4472 t1!67)))

(declare-fun lt!883981 () Unit!42276)

(assert (=> b!2475327 (= lt!883981 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!695 thiss!27932 rules!4472 lt!883984 t1!67))))

(declare-fun lt!883982 () Unit!42276)

(declare-fun tokensListTwoByTwoPredicateInstantiateSeparableTokens!16 (LexerInterface!4106 List!29006 List!29007 Token!8488 Token!8488 Int) Unit!42276)

(assert (=> b!2475327 (= lt!883982 (tokensListTwoByTwoPredicateInstantiateSeparableTokens!16 thiss!27932 lt!883984 rules!4472 t1!67 t2!67 (- i!1803 1)))))

(declare-fun b!2475328 () Bool)

(declare-fun res!1048051 () Bool)

(assert (=> b!2475328 (=> (not res!1048051) (not e!1570390))))

(assert (=> b!2475328 (= res!1048051 (not (= i!1803 0)))))

(declare-fun e!1570377 () Bool)

(assert (=> b!2475329 (= e!1570377 (and tp!791583 tp!791567))))

(declare-fun b!2475330 () Bool)

(declare-fun res!1048043 () Bool)

(assert (=> b!2475330 (=> (not res!1048043) (not e!1570390))))

(assert (=> b!2475330 (= res!1048043 (= (apply!6822 l!6611 i!1803) t1!67))))

(declare-fun b!2475331 () Bool)

(declare-fun res!1048049 () Bool)

(assert (=> b!2475331 (=> (not res!1048049) (not e!1570390))))

(assert (=> b!2475331 (= res!1048049 (tokensListTwoByTwoPredicateSeparableList!645 thiss!27932 l!6611 rules!4472))))

(declare-fun e!1570394 () Bool)

(assert (=> b!2475332 (= e!1570394 (and tp!791582 tp!791573))))

(declare-fun b!2475333 () Bool)

(declare-fun e!1570397 () Bool)

(declare-fun tp!791576 () Bool)

(assert (=> b!2475333 (= e!1570397 (and tp!791576 (inv!38994 (tag!4999 (rule!6867 (h!34307 l!6611)))) (inv!38998 (transformation!4509 (rule!6867 (h!34307 l!6611)))) e!1570394))))

(assert (=> b!2475334 (= e!1570383 (and tp!791581 tp!791574))))

(declare-fun e!1570400 () Bool)

(declare-fun tp!791575 () Bool)

(declare-fun b!2475335 () Bool)

(assert (=> b!2475335 (= e!1570400 (and tp!791575 (inv!38994 (tag!4999 (rule!6867 t2!67))) (inv!38998 (transformation!4509 (rule!6867 t2!67))) e!1570377))))

(declare-fun b!2475336 () Bool)

(declare-fun res!1048048 () Bool)

(assert (=> b!2475336 (=> (not res!1048048) (not e!1570390))))

(assert (=> b!2475336 (= res!1048048 (>= i!1803 0))))

(declare-fun b!2475337 () Bool)

(declare-fun e!1570378 () Bool)

(declare-fun e!1570388 () Bool)

(declare-fun tp!791571 () Bool)

(assert (=> b!2475337 (= e!1570378 (and e!1570388 tp!791571))))

(declare-fun b!2475338 () Bool)

(declare-fun e!1570380 () Bool)

(declare-fun tp!791572 () Bool)

(declare-fun inv!21 (TokenValue!4695) Bool)

(assert (=> b!2475338 (= e!1570380 (and (inv!21 (value!143912 t1!67)) e!1570396 tp!791572))))

(declare-fun b!2475339 () Bool)

(declare-fun res!1048039 () Bool)

(assert (=> b!2475339 (=> (not res!1048039) (not e!1570390))))

(declare-fun isEmpty!16772 (List!29007) Bool)

(assert (=> b!2475339 (= res!1048039 (not (isEmpty!16772 rules!4472)))))

(declare-fun b!2475320 () Bool)

(declare-fun tp!791580 () Bool)

(assert (=> b!2475320 (= e!1570388 (and tp!791580 (inv!38994 (tag!4999 (h!34308 rules!4472))) (inv!38998 (transformation!4509 (h!34308 rules!4472))) e!1570385))))

(declare-fun res!1048042 () Bool)

(assert (=> start!241390 (=> (not res!1048042) (not e!1570390))))

(get-info :version)

(assert (=> start!241390 (= res!1048042 ((_ is Lexer!4104) thiss!27932))))

(assert (=> start!241390 e!1570390))

(assert (=> start!241390 true))

(assert (=> start!241390 e!1570378))

(declare-fun e!1570382 () Bool)

(assert (=> start!241390 (and (inv!38997 t2!67) e!1570382)))

(assert (=> start!241390 e!1570391))

(assert (=> start!241390 (and (inv!38997 t1!67) e!1570380)))

(declare-fun tp!791568 () Bool)

(declare-fun b!2475340 () Bool)

(assert (=> b!2475340 (= e!1570382 (and (inv!21 (value!143912 t2!67)) e!1570400 tp!791568))))

(declare-fun b!2475341 () Bool)

(declare-fun res!1048055 () Bool)

(assert (=> b!2475341 (=> (not res!1048055) (not e!1570386))))

(assert (=> b!2475341 (= res!1048055 (= (apply!6822 lt!883984 (- i!1803 1)) t1!67))))

(declare-fun b!2475342 () Bool)

(declare-fun tp!791579 () Bool)

(assert (=> b!2475342 (= e!1570384 (and (inv!21 (value!143912 (h!34307 l!6611))) e!1570397 tp!791579))))

(declare-fun b!2475343 () Bool)

(declare-fun res!1048054 () Bool)

(assert (=> b!2475343 (=> (not res!1048054) (not e!1570390))))

(assert (=> b!2475343 (= res!1048054 (< (+ 1 i!1803) (size!22492 l!6611)))))

(declare-fun b!2475344 () Bool)

(declare-fun res!1048052 () Bool)

(assert (=> b!2475344 (=> (not res!1048052) (not e!1570386))))

(assert (=> b!2475344 (= res!1048052 (= (apply!6822 lt!883984 lt!883979) t2!67))))

(assert (= (and start!241390 res!1048042) b!2475339))

(assert (= (and b!2475339 res!1048039) b!2475317))

(assert (= (and b!2475317 res!1048041) b!2475321))

(assert (= (and b!2475321 res!1048045) b!2475331))

(assert (= (and b!2475331 res!1048049) b!2475336))

(assert (= (and b!2475336 res!1048048) b!2475343))

(assert (= (and b!2475343 res!1048054) b!2475330))

(assert (= (and b!2475330 res!1048043) b!2475316))

(assert (= (and b!2475316 res!1048053) b!2475328))

(assert (= (and b!2475328 res!1048051) b!2475319))

(assert (= (and b!2475319 res!1048047) b!2475323))

(assert (= (and b!2475323 res!1048040) b!2475322))

(assert (= (and b!2475322 res!1048050) b!2475326))

(assert (= (and b!2475326 res!1048046) b!2475341))

(assert (= (and b!2475341 res!1048055) b!2475344))

(assert (= (and b!2475344 res!1048052) b!2475327))

(assert (= (and b!2475327 res!1048044) b!2475318))

(assert (= b!2475320 b!2475324))

(assert (= b!2475337 b!2475320))

(assert (= (and start!241390 ((_ is Cons!28907) rules!4472)) b!2475337))

(assert (= b!2475335 b!2475329))

(assert (= b!2475340 b!2475335))

(assert (= start!241390 b!2475340))

(assert (= b!2475333 b!2475332))

(assert (= b!2475342 b!2475333))

(assert (= b!2475315 b!2475342))

(assert (= (and start!241390 ((_ is Cons!28906) l!6611)) b!2475315))

(assert (= b!2475325 b!2475334))

(assert (= b!2475338 b!2475325))

(assert (= start!241390 b!2475338))

(declare-fun m!2843481 () Bool)

(assert (=> b!2475338 m!2843481))

(declare-fun m!2843483 () Bool)

(assert (=> b!2475319 m!2843483))

(declare-fun m!2843485 () Bool)

(assert (=> b!2475319 m!2843485))

(declare-fun m!2843487 () Bool)

(assert (=> start!241390 m!2843487))

(declare-fun m!2843489 () Bool)

(assert (=> start!241390 m!2843489))

(declare-fun m!2843491 () Bool)

(assert (=> b!2475315 m!2843491))

(declare-fun m!2843493 () Bool)

(assert (=> b!2475335 m!2843493))

(declare-fun m!2843495 () Bool)

(assert (=> b!2475335 m!2843495))

(declare-fun m!2843497 () Bool)

(assert (=> b!2475340 m!2843497))

(declare-fun m!2843499 () Bool)

(assert (=> b!2475331 m!2843499))

(declare-fun m!2843501 () Bool)

(assert (=> b!2475317 m!2843501))

(declare-fun m!2843503 () Bool)

(assert (=> b!2475341 m!2843503))

(declare-fun m!2843505 () Bool)

(assert (=> b!2475342 m!2843505))

(declare-fun m!2843507 () Bool)

(assert (=> b!2475327 m!2843507))

(declare-fun m!2843509 () Bool)

(assert (=> b!2475327 m!2843509))

(declare-fun m!2843511 () Bool)

(assert (=> b!2475327 m!2843511))

(declare-fun m!2843513 () Bool)

(assert (=> b!2475327 m!2843513))

(declare-fun m!2843515 () Bool)

(assert (=> b!2475327 m!2843515))

(declare-fun m!2843517 () Bool)

(assert (=> b!2475327 m!2843517))

(declare-fun m!2843519 () Bool)

(assert (=> b!2475327 m!2843519))

(declare-fun m!2843521 () Bool)

(assert (=> b!2475320 m!2843521))

(declare-fun m!2843523 () Bool)

(assert (=> b!2475320 m!2843523))

(declare-fun m!2843525 () Bool)

(assert (=> b!2475339 m!2843525))

(declare-fun m!2843527 () Bool)

(assert (=> b!2475323 m!2843527))

(declare-fun m!2843529 () Bool)

(assert (=> b!2475326 m!2843529))

(declare-fun m!2843531 () Bool)

(assert (=> b!2475318 m!2843531))

(declare-fun m!2843533 () Bool)

(assert (=> b!2475333 m!2843533))

(declare-fun m!2843535 () Bool)

(assert (=> b!2475333 m!2843535))

(declare-fun m!2843537 () Bool)

(assert (=> b!2475330 m!2843537))

(declare-fun m!2843539 () Bool)

(assert (=> b!2475321 m!2843539))

(declare-fun m!2843541 () Bool)

(assert (=> b!2475316 m!2843541))

(declare-fun m!2843543 () Bool)

(assert (=> b!2475344 m!2843543))

(declare-fun m!2843545 () Bool)

(assert (=> b!2475343 m!2843545))

(declare-fun m!2843547 () Bool)

(assert (=> b!2475325 m!2843547))

(declare-fun m!2843549 () Bool)

(assert (=> b!2475325 m!2843549))

(check-sat (not b_next!72529) (not b!2475327) (not b!2475315) (not b_next!72525) b_and!188003 b_and!187993 (not b!2475323) (not b!2475344) (not b!2475342) b_and!187989 (not b!2475338) (not b!2475320) b_and!188001 (not b_next!72519) (not b_next!72517) (not b!2475341) (not b!2475337) (not b_next!72527) (not b!2475331) (not b_next!72531) b_and!187995 (not b!2475316) (not b!2475317) (not b!2475318) (not b!2475339) b_and!187991 (not start!241390) (not b!2475335) (not b!2475340) (not b!2475325) (not b!2475321) (not b!2475326) (not b!2475333) b_and!187999 b_and!187997 (not b_next!72523) (not b!2475319) (not b!2475343) (not b!2475330) (not b_next!72521))
(check-sat b_and!187989 (not b_next!72529) (not b_next!72517) (not b_next!72527) (not b_next!72525) b_and!187991 b_and!187999 b_and!188003 b_and!187993 (not b_next!72521) b_and!188001 (not b_next!72519) (not b_next!72531) b_and!187995 b_and!187997 (not b_next!72523))
(get-model)

(declare-fun d!712068 () Bool)

(assert (=> d!712068 (= (inv!38994 (tag!4999 (rule!6867 (h!34307 l!6611)))) (= (mod (str.len (value!143911 (tag!4999 (rule!6867 (h!34307 l!6611))))) 2) 0))))

(assert (=> b!2475333 d!712068))

(declare-fun d!712070 () Bool)

(declare-fun res!1048068 () Bool)

(declare-fun e!1570403 () Bool)

(assert (=> d!712070 (=> (not res!1048068) (not e!1570403))))

(declare-fun semiInverseModEq!1860 (Int Int) Bool)

(assert (=> d!712070 (= res!1048068 (semiInverseModEq!1860 (toChars!6232 (transformation!4509 (rule!6867 (h!34307 l!6611)))) (toValue!6373 (transformation!4509 (rule!6867 (h!34307 l!6611))))))))

(assert (=> d!712070 (= (inv!38998 (transformation!4509 (rule!6867 (h!34307 l!6611)))) e!1570403)))

(declare-fun b!2475347 () Bool)

(declare-fun equivClasses!1771 (Int Int) Bool)

(assert (=> b!2475347 (= e!1570403 (equivClasses!1771 (toChars!6232 (transformation!4509 (rule!6867 (h!34307 l!6611)))) (toValue!6373 (transformation!4509 (rule!6867 (h!34307 l!6611))))))))

(assert (= (and d!712070 res!1048068) b!2475347))

(declare-fun m!2843551 () Bool)

(assert (=> d!712070 m!2843551))

(declare-fun m!2843553 () Bool)

(assert (=> b!2475347 m!2843553))

(assert (=> b!2475333 d!712070))

(declare-fun d!712074 () Bool)

(declare-fun lt!883987 () Token!8488)

(assert (=> d!712074 (contains!4933 lt!883984 lt!883987)))

(declare-fun e!1570408 () Token!8488)

(assert (=> d!712074 (= lt!883987 e!1570408)))

(declare-fun c!393996 () Bool)

(assert (=> d!712074 (= c!393996 (= lt!883979 0))))

(declare-fun e!1570409 () Bool)

(assert (=> d!712074 e!1570409))

(declare-fun res!1048071 () Bool)

(assert (=> d!712074 (=> (not res!1048071) (not e!1570409))))

(assert (=> d!712074 (= res!1048071 (<= 0 lt!883979))))

(assert (=> d!712074 (= (apply!6822 lt!883984 lt!883979) lt!883987)))

(declare-fun b!2475354 () Bool)

(assert (=> b!2475354 (= e!1570409 (< lt!883979 (size!22492 lt!883984)))))

(declare-fun b!2475355 () Bool)

(declare-fun head!5655 (List!29006) Token!8488)

(assert (=> b!2475355 (= e!1570408 (head!5655 lt!883984))))

(declare-fun b!2475356 () Bool)

(assert (=> b!2475356 (= e!1570408 (apply!6822 (tail!3942 lt!883984) (- lt!883979 1)))))

(assert (= (and d!712074 res!1048071) b!2475354))

(assert (= (and d!712074 c!393996) b!2475355))

(assert (= (and d!712074 (not c!393996)) b!2475356))

(declare-fun m!2843555 () Bool)

(assert (=> d!712074 m!2843555))

(assert (=> b!2475354 m!2843529))

(declare-fun m!2843557 () Bool)

(assert (=> b!2475355 m!2843557))

(declare-fun m!2843559 () Bool)

(assert (=> b!2475356 m!2843559))

(assert (=> b!2475356 m!2843559))

(declare-fun m!2843561 () Bool)

(assert (=> b!2475356 m!2843561))

(assert (=> b!2475344 d!712074))

(declare-fun d!712076 () Bool)

(declare-fun lt!883990 () Int)

(assert (=> d!712076 (>= lt!883990 0)))

(declare-fun e!1570412 () Int)

(assert (=> d!712076 (= lt!883990 e!1570412)))

(declare-fun c!393999 () Bool)

(assert (=> d!712076 (= c!393999 ((_ is Nil!28906) l!6611))))

(assert (=> d!712076 (= (size!22492 l!6611) lt!883990)))

(declare-fun b!2475361 () Bool)

(assert (=> b!2475361 (= e!1570412 0)))

(declare-fun b!2475362 () Bool)

(assert (=> b!2475362 (= e!1570412 (+ 1 (size!22492 (t!210559 l!6611))))))

(assert (= (and d!712076 c!393999) b!2475361))

(assert (= (and d!712076 (not c!393999)) b!2475362))

(declare-fun m!2843563 () Bool)

(assert (=> b!2475362 m!2843563))

(assert (=> b!2475343 d!712076))

(declare-fun d!712078 () Bool)

(declare-fun res!1048095 () Bool)

(declare-fun e!1570431 () Bool)

(assert (=> d!712078 (=> res!1048095 e!1570431)))

(assert (=> d!712078 (= res!1048095 (or (not ((_ is Cons!28906) lt!883984)) (not ((_ is Cons!28906) (t!210559 lt!883984)))))))

(assert (=> d!712078 (= (tokensListTwoByTwoPredicateSeparableList!645 thiss!27932 lt!883984 rules!4472) e!1570431)))

(declare-fun b!2475385 () Bool)

(declare-fun e!1570432 () Bool)

(assert (=> b!2475385 (= e!1570431 e!1570432)))

(declare-fun res!1048094 () Bool)

(assert (=> b!2475385 (=> (not res!1048094) (not e!1570432))))

(assert (=> b!2475385 (= res!1048094 (separableTokensPredicate!881 thiss!27932 (h!34307 lt!883984) (h!34307 (t!210559 lt!883984)) rules!4472))))

(declare-fun lt!884023 () Unit!42276)

(declare-fun Unit!42284 () Unit!42276)

(assert (=> b!2475385 (= lt!884023 Unit!42284)))

(declare-fun size!22496 (BalanceConc!18072) Int)

(declare-fun charsOf!2838 (Token!8488) BalanceConc!18072)

(assert (=> b!2475385 (> (size!22496 (charsOf!2838 (h!34307 (t!210559 lt!883984)))) 0)))

(declare-fun lt!884024 () Unit!42276)

(declare-fun Unit!42285 () Unit!42276)

(assert (=> b!2475385 (= lt!884024 Unit!42285)))

(assert (=> b!2475385 (rulesProduceIndividualToken!1834 thiss!27932 rules!4472 (h!34307 (t!210559 lt!883984)))))

(declare-fun lt!884022 () Unit!42276)

(declare-fun Unit!42286 () Unit!42276)

(assert (=> b!2475385 (= lt!884022 Unit!42286)))

(assert (=> b!2475385 (rulesProduceIndividualToken!1834 thiss!27932 rules!4472 (h!34307 lt!883984))))

(declare-fun lt!884021 () Unit!42276)

(declare-fun lt!884026 () Unit!42276)

(assert (=> b!2475385 (= lt!884021 lt!884026)))

(assert (=> b!2475385 (rulesProduceIndividualToken!1834 thiss!27932 rules!4472 (h!34307 (t!210559 lt!883984)))))

(assert (=> b!2475385 (= lt!884026 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!695 thiss!27932 rules!4472 lt!883984 (h!34307 (t!210559 lt!883984))))))

(declare-fun lt!884027 () Unit!42276)

(declare-fun lt!884025 () Unit!42276)

(assert (=> b!2475385 (= lt!884027 lt!884025)))

(assert (=> b!2475385 (rulesProduceIndividualToken!1834 thiss!27932 rules!4472 (h!34307 lt!883984))))

(assert (=> b!2475385 (= lt!884025 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!695 thiss!27932 rules!4472 lt!883984 (h!34307 lt!883984)))))

(declare-fun b!2475386 () Bool)

(assert (=> b!2475386 (= e!1570432 (tokensListTwoByTwoPredicateSeparableList!645 thiss!27932 (Cons!28906 (h!34307 (t!210559 lt!883984)) (t!210559 (t!210559 lt!883984))) rules!4472))))

(assert (= (and d!712078 (not res!1048095)) b!2475385))

(assert (= (and b!2475385 res!1048094) b!2475386))

(declare-fun m!2843613 () Bool)

(assert (=> b!2475385 m!2843613))

(declare-fun m!2843615 () Bool)

(assert (=> b!2475385 m!2843615))

(declare-fun m!2843617 () Bool)

(assert (=> b!2475385 m!2843617))

(declare-fun m!2843619 () Bool)

(assert (=> b!2475385 m!2843619))

(assert (=> b!2475385 m!2843615))

(declare-fun m!2843621 () Bool)

(assert (=> b!2475385 m!2843621))

(declare-fun m!2843623 () Bool)

(assert (=> b!2475385 m!2843623))

(declare-fun m!2843625 () Bool)

(assert (=> b!2475385 m!2843625))

(declare-fun m!2843627 () Bool)

(assert (=> b!2475386 m!2843627))

(assert (=> b!2475323 d!712078))

(declare-fun d!712092 () Bool)

(assert (=> d!712092 (= (inv!38994 (tag!4999 (rule!6867 t1!67))) (= (mod (str.len (value!143911 (tag!4999 (rule!6867 t1!67)))) 2) 0))))

(assert (=> b!2475325 d!712092))

(declare-fun d!712094 () Bool)

(declare-fun res!1048096 () Bool)

(declare-fun e!1570433 () Bool)

(assert (=> d!712094 (=> (not res!1048096) (not e!1570433))))

(assert (=> d!712094 (= res!1048096 (semiInverseModEq!1860 (toChars!6232 (transformation!4509 (rule!6867 t1!67))) (toValue!6373 (transformation!4509 (rule!6867 t1!67)))))))

(assert (=> d!712094 (= (inv!38998 (transformation!4509 (rule!6867 t1!67))) e!1570433)))

(declare-fun b!2475387 () Bool)

(assert (=> b!2475387 (= e!1570433 (equivClasses!1771 (toChars!6232 (transformation!4509 (rule!6867 t1!67))) (toValue!6373 (transformation!4509 (rule!6867 t1!67)))))))

(assert (= (and d!712094 res!1048096) b!2475387))

(declare-fun m!2843629 () Bool)

(assert (=> d!712094 m!2843629))

(declare-fun m!2843631 () Bool)

(assert (=> b!2475387 m!2843631))

(assert (=> b!2475325 d!712094))

(declare-fun d!712096 () Bool)

(assert (=> d!712096 (= (inv!38994 (tag!4999 (rule!6867 t2!67))) (= (mod (str.len (value!143911 (tag!4999 (rule!6867 t2!67)))) 2) 0))))

(assert (=> b!2475335 d!712096))

(declare-fun d!712098 () Bool)

(declare-fun res!1048097 () Bool)

(declare-fun e!1570434 () Bool)

(assert (=> d!712098 (=> (not res!1048097) (not e!1570434))))

(assert (=> d!712098 (= res!1048097 (semiInverseModEq!1860 (toChars!6232 (transformation!4509 (rule!6867 t2!67))) (toValue!6373 (transformation!4509 (rule!6867 t2!67)))))))

(assert (=> d!712098 (= (inv!38998 (transformation!4509 (rule!6867 t2!67))) e!1570434)))

(declare-fun b!2475388 () Bool)

(assert (=> b!2475388 (= e!1570434 (equivClasses!1771 (toChars!6232 (transformation!4509 (rule!6867 t2!67))) (toValue!6373 (transformation!4509 (rule!6867 t2!67)))))))

(assert (= (and d!712098 res!1048097) b!2475388))

(declare-fun m!2843633 () Bool)

(assert (=> d!712098 m!2843633))

(declare-fun m!2843635 () Bool)

(assert (=> b!2475388 m!2843635))

(assert (=> b!2475335 d!712098))

(declare-fun d!712100 () Bool)

(declare-fun lt!884028 () Token!8488)

(assert (=> d!712100 (contains!4933 l!6611 lt!884028)))

(declare-fun e!1570435 () Token!8488)

(assert (=> d!712100 (= lt!884028 e!1570435)))

(declare-fun c!394000 () Bool)

(assert (=> d!712100 (= c!394000 (= (+ 1 i!1803) 0))))

(declare-fun e!1570436 () Bool)

(assert (=> d!712100 e!1570436))

(declare-fun res!1048098 () Bool)

(assert (=> d!712100 (=> (not res!1048098) (not e!1570436))))

(assert (=> d!712100 (= res!1048098 (<= 0 (+ 1 i!1803)))))

(assert (=> d!712100 (= (apply!6822 l!6611 (+ 1 i!1803)) lt!884028)))

(declare-fun b!2475389 () Bool)

(assert (=> b!2475389 (= e!1570436 (< (+ 1 i!1803) (size!22492 l!6611)))))

(declare-fun b!2475390 () Bool)

(assert (=> b!2475390 (= e!1570435 (head!5655 l!6611))))

(declare-fun b!2475391 () Bool)

(assert (=> b!2475391 (= e!1570435 (apply!6822 (tail!3942 l!6611) (- (+ 1 i!1803) 1)))))

(assert (= (and d!712100 res!1048098) b!2475389))

(assert (= (and d!712100 c!394000) b!2475390))

(assert (= (and d!712100 (not c!394000)) b!2475391))

(declare-fun m!2843637 () Bool)

(assert (=> d!712100 m!2843637))

(assert (=> b!2475389 m!2843545))

(declare-fun m!2843639 () Bool)

(assert (=> b!2475390 m!2843639))

(assert (=> b!2475391 m!2843485))

(assert (=> b!2475391 m!2843485))

(declare-fun m!2843641 () Bool)

(assert (=> b!2475391 m!2843641))

(assert (=> b!2475316 d!712100))

(declare-fun d!712102 () Bool)

(declare-fun res!1048103 () Bool)

(declare-fun e!1570439 () Bool)

(assert (=> d!712102 (=> (not res!1048103) (not e!1570439))))

(declare-fun isEmpty!16775 (List!29005) Bool)

(assert (=> d!712102 (= res!1048103 (not (isEmpty!16775 (originalCharacters!5275 (h!34307 l!6611)))))))

(assert (=> d!712102 (= (inv!38997 (h!34307 l!6611)) e!1570439)))

(declare-fun b!2475396 () Bool)

(declare-fun res!1048104 () Bool)

(assert (=> b!2475396 (=> (not res!1048104) (not e!1570439))))

(declare-fun list!11160 (BalanceConc!18072) List!29005)

(declare-fun dynLambda!12426 (Int TokenValue!4695) BalanceConc!18072)

(assert (=> b!2475396 (= res!1048104 (= (originalCharacters!5275 (h!34307 l!6611)) (list!11160 (dynLambda!12426 (toChars!6232 (transformation!4509 (rule!6867 (h!34307 l!6611)))) (value!143912 (h!34307 l!6611))))))))

(declare-fun b!2475397 () Bool)

(declare-fun size!22497 (List!29005) Int)

(assert (=> b!2475397 (= e!1570439 (= (size!22491 (h!34307 l!6611)) (size!22497 (originalCharacters!5275 (h!34307 l!6611)))))))

(assert (= (and d!712102 res!1048103) b!2475396))

(assert (= (and b!2475396 res!1048104) b!2475397))

(declare-fun b_lambda!75959 () Bool)

(assert (=> (not b_lambda!75959) (not b!2475396)))

(declare-fun t!210565 () Bool)

(declare-fun tb!140281 () Bool)

(assert (=> (and b!2475332 (= (toChars!6232 (transformation!4509 (rule!6867 (h!34307 l!6611)))) (toChars!6232 (transformation!4509 (rule!6867 (h!34307 l!6611))))) t!210565) tb!140281))

(declare-fun b!2475402 () Bool)

(declare-fun e!1570442 () Bool)

(declare-fun tp!791586 () Bool)

(declare-fun inv!39001 (Conc!9229) Bool)

(assert (=> b!2475402 (= e!1570442 (and (inv!39001 (c!393992 (dynLambda!12426 (toChars!6232 (transformation!4509 (rule!6867 (h!34307 l!6611)))) (value!143912 (h!34307 l!6611))))) tp!791586))))

(declare-fun result!173132 () Bool)

(declare-fun inv!39002 (BalanceConc!18072) Bool)

(assert (=> tb!140281 (= result!173132 (and (inv!39002 (dynLambda!12426 (toChars!6232 (transformation!4509 (rule!6867 (h!34307 l!6611)))) (value!143912 (h!34307 l!6611)))) e!1570442))))

(assert (= tb!140281 b!2475402))

(declare-fun m!2843643 () Bool)

(assert (=> b!2475402 m!2843643))

(declare-fun m!2843645 () Bool)

(assert (=> tb!140281 m!2843645))

(assert (=> b!2475396 t!210565))

(declare-fun b_and!188005 () Bool)

(assert (= b_and!187991 (and (=> t!210565 result!173132) b_and!188005)))

(declare-fun tb!140283 () Bool)

(declare-fun t!210567 () Bool)

(assert (=> (and b!2475324 (= (toChars!6232 (transformation!4509 (h!34308 rules!4472))) (toChars!6232 (transformation!4509 (rule!6867 (h!34307 l!6611))))) t!210567) tb!140283))

(declare-fun result!173136 () Bool)

(assert (= result!173136 result!173132))

(assert (=> b!2475396 t!210567))

(declare-fun b_and!188007 () Bool)

(assert (= b_and!187995 (and (=> t!210567 result!173136) b_and!188007)))

(declare-fun tb!140285 () Bool)

(declare-fun t!210569 () Bool)

(assert (=> (and b!2475329 (= (toChars!6232 (transformation!4509 (rule!6867 t2!67))) (toChars!6232 (transformation!4509 (rule!6867 (h!34307 l!6611))))) t!210569) tb!140285))

(declare-fun result!173138 () Bool)

(assert (= result!173138 result!173132))

(assert (=> b!2475396 t!210569))

(declare-fun b_and!188009 () Bool)

(assert (= b_and!187999 (and (=> t!210569 result!173138) b_and!188009)))

(declare-fun tb!140287 () Bool)

(declare-fun t!210571 () Bool)

(assert (=> (and b!2475334 (= (toChars!6232 (transformation!4509 (rule!6867 t1!67))) (toChars!6232 (transformation!4509 (rule!6867 (h!34307 l!6611))))) t!210571) tb!140287))

(declare-fun result!173140 () Bool)

(assert (= result!173140 result!173132))

(assert (=> b!2475396 t!210571))

(declare-fun b_and!188011 () Bool)

(assert (= b_and!188003 (and (=> t!210571 result!173140) b_and!188011)))

(declare-fun m!2843647 () Bool)

(assert (=> d!712102 m!2843647))

(declare-fun m!2843649 () Bool)

(assert (=> b!2475396 m!2843649))

(assert (=> b!2475396 m!2843649))

(declare-fun m!2843651 () Bool)

(assert (=> b!2475396 m!2843651))

(declare-fun m!2843653 () Bool)

(assert (=> b!2475397 m!2843653))

(assert (=> b!2475315 d!712102))

(declare-fun d!712104 () Bool)

(declare-fun lt!884029 () Int)

(assert (=> d!712104 (>= lt!884029 0)))

(declare-fun e!1570443 () Int)

(assert (=> d!712104 (= lt!884029 e!1570443)))

(declare-fun c!394001 () Bool)

(assert (=> d!712104 (= c!394001 ((_ is Nil!28906) lt!883984))))

(assert (=> d!712104 (= (size!22492 lt!883984) lt!884029)))

(declare-fun b!2475403 () Bool)

(assert (=> b!2475403 (= e!1570443 0)))

(declare-fun b!2475404 () Bool)

(assert (=> b!2475404 (= e!1570443 (+ 1 (size!22492 (t!210559 lt!883984))))))

(assert (= (and d!712104 c!394001) b!2475403))

(assert (= (and d!712104 (not c!394001)) b!2475404))

(declare-fun m!2843655 () Bool)

(assert (=> b!2475404 m!2843655))

(assert (=> b!2475326 d!712104))

(declare-fun d!712106 () Bool)

(declare-fun res!1048107 () Bool)

(declare-fun e!1570446 () Bool)

(assert (=> d!712106 (=> (not res!1048107) (not e!1570446))))

(declare-fun rulesValid!1683 (LexerInterface!4106 List!29007) Bool)

(assert (=> d!712106 (= res!1048107 (rulesValid!1683 thiss!27932 rules!4472))))

(assert (=> d!712106 (= (rulesInvariant!3606 thiss!27932 rules!4472) e!1570446)))

(declare-fun b!2475407 () Bool)

(declare-datatypes ((List!29009 0))(
  ( (Nil!28909) (Cons!28909 (h!34310 String!31771) (t!210644 List!29009)) )
))
(declare-fun noDuplicateTag!1681 (LexerInterface!4106 List!29007 List!29009) Bool)

(assert (=> b!2475407 (= e!1570446 (noDuplicateTag!1681 thiss!27932 rules!4472 Nil!28909))))

(assert (= (and d!712106 res!1048107) b!2475407))

(declare-fun m!2843657 () Bool)

(assert (=> d!712106 m!2843657))

(declare-fun m!2843659 () Bool)

(assert (=> b!2475407 m!2843659))

(assert (=> b!2475317 d!712106))

(declare-fun d!712108 () Bool)

(assert (=> d!712108 (rulesProduceIndividualToken!1834 thiss!27932 rules!4472 t1!67)))

(declare-fun lt!884047 () Unit!42276)

(declare-fun choose!14602 (LexerInterface!4106 List!29007 List!29006 Token!8488) Unit!42276)

(assert (=> d!712108 (= lt!884047 (choose!14602 thiss!27932 rules!4472 l!6611 t1!67))))

(assert (=> d!712108 (not (isEmpty!16772 rules!4472))))

(assert (=> d!712108 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!695 thiss!27932 rules!4472 l!6611 t1!67) lt!884047)))

(declare-fun bs!467001 () Bool)

(assert (= bs!467001 d!712108))

(assert (=> bs!467001 m!2843507))

(declare-fun m!2843667 () Bool)

(assert (=> bs!467001 m!2843667))

(assert (=> bs!467001 m!2843525))

(assert (=> b!2475327 d!712108))

(declare-fun d!712114 () Bool)

(declare-fun lt!884050 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3968 (List!29006) (InoxSet Token!8488))

(assert (=> d!712114 (= lt!884050 (select (content!3968 l!6611) t2!67))))

(declare-fun e!1570458 () Bool)

(assert (=> d!712114 (= lt!884050 e!1570458)))

(declare-fun res!1048134 () Bool)

(assert (=> d!712114 (=> (not res!1048134) (not e!1570458))))

(assert (=> d!712114 (= res!1048134 ((_ is Cons!28906) l!6611))))

(assert (=> d!712114 (= (contains!4933 l!6611 t2!67) lt!884050)))

(declare-fun b!2475433 () Bool)

(declare-fun e!1570457 () Bool)

(assert (=> b!2475433 (= e!1570458 e!1570457)))

(declare-fun res!1048133 () Bool)

(assert (=> b!2475433 (=> res!1048133 e!1570457)))

(assert (=> b!2475433 (= res!1048133 (= (h!34307 l!6611) t2!67))))

(declare-fun b!2475434 () Bool)

(assert (=> b!2475434 (= e!1570457 (contains!4933 (t!210559 l!6611) t2!67))))

(assert (= (and d!712114 res!1048134) b!2475433))

(assert (= (and b!2475433 (not res!1048133)) b!2475434))

(declare-fun m!2843669 () Bool)

(assert (=> d!712114 m!2843669))

(declare-fun m!2843671 () Bool)

(assert (=> d!712114 m!2843671))

(declare-fun m!2843673 () Bool)

(assert (=> b!2475434 m!2843673))

(assert (=> b!2475327 d!712114))

(declare-fun d!712116 () Bool)

(declare-fun lt!884076 () Bool)

(declare-fun e!1570469 () Bool)

(assert (=> d!712116 (= lt!884076 e!1570469)))

(declare-fun res!1048148 () Bool)

(assert (=> d!712116 (=> (not res!1048148) (not e!1570469))))

(declare-datatypes ((IArray!18467 0))(
  ( (IArray!18468 (innerList!9291 List!29006)) )
))
(declare-datatypes ((Conc!9231 0))(
  ( (Node!9231 (left!22168 Conc!9231) (right!22498 Conc!9231) (csize!18692 Int) (cheight!9442 Int)) (Leaf!13793 (xs!12215 IArray!18467) (csize!18693 Int)) (Empty!9231) )
))
(declare-datatypes ((BalanceConc!18076 0))(
  ( (BalanceConc!18077 (c!394035 Conc!9231)) )
))
(declare-fun list!11161 (BalanceConc!18076) List!29006)

(declare-datatypes ((tuple2!28258 0))(
  ( (tuple2!28259 (_1!16670 BalanceConc!18076) (_2!16670 BalanceConc!18072)) )
))
(declare-fun lex!1867 (LexerInterface!4106 List!29007 BalanceConc!18072) tuple2!28258)

(declare-fun print!1589 (LexerInterface!4106 BalanceConc!18076) BalanceConc!18072)

(declare-fun singletonSeq!2005 (Token!8488) BalanceConc!18076)

(assert (=> d!712116 (= res!1048148 (= (list!11161 (_1!16670 (lex!1867 thiss!27932 rules!4472 (print!1589 thiss!27932 (singletonSeq!2005 t2!67))))) (list!11161 (singletonSeq!2005 t2!67))))))

(declare-fun e!1570470 () Bool)

(assert (=> d!712116 (= lt!884076 e!1570470)))

(declare-fun res!1048147 () Bool)

(assert (=> d!712116 (=> (not res!1048147) (not e!1570470))))

(declare-fun lt!884077 () tuple2!28258)

(declare-fun size!22498 (BalanceConc!18076) Int)

(assert (=> d!712116 (= res!1048147 (= (size!22498 (_1!16670 lt!884077)) 1))))

(assert (=> d!712116 (= lt!884077 (lex!1867 thiss!27932 rules!4472 (print!1589 thiss!27932 (singletonSeq!2005 t2!67))))))

(assert (=> d!712116 (not (isEmpty!16772 rules!4472))))

(assert (=> d!712116 (= (rulesProduceIndividualToken!1834 thiss!27932 rules!4472 t2!67) lt!884076)))

(declare-fun b!2475447 () Bool)

(declare-fun res!1048149 () Bool)

(assert (=> b!2475447 (=> (not res!1048149) (not e!1570470))))

(declare-fun apply!6825 (BalanceConc!18076 Int) Token!8488)

(assert (=> b!2475447 (= res!1048149 (= (apply!6825 (_1!16670 lt!884077) 0) t2!67))))

(declare-fun b!2475448 () Bool)

(declare-fun isEmpty!16776 (BalanceConc!18072) Bool)

(assert (=> b!2475448 (= e!1570470 (isEmpty!16776 (_2!16670 lt!884077)))))

(declare-fun b!2475449 () Bool)

(assert (=> b!2475449 (= e!1570469 (isEmpty!16776 (_2!16670 (lex!1867 thiss!27932 rules!4472 (print!1589 thiss!27932 (singletonSeq!2005 t2!67))))))))

(assert (= (and d!712116 res!1048147) b!2475447))

(assert (= (and b!2475447 res!1048149) b!2475448))

(assert (= (and d!712116 res!1048148) b!2475449))

(declare-fun m!2843691 () Bool)

(assert (=> d!712116 m!2843691))

(declare-fun m!2843693 () Bool)

(assert (=> d!712116 m!2843693))

(declare-fun m!2843695 () Bool)

(assert (=> d!712116 m!2843695))

(assert (=> d!712116 m!2843525))

(assert (=> d!712116 m!2843693))

(assert (=> d!712116 m!2843695))

(declare-fun m!2843697 () Bool)

(assert (=> d!712116 m!2843697))

(assert (=> d!712116 m!2843693))

(declare-fun m!2843699 () Bool)

(assert (=> d!712116 m!2843699))

(declare-fun m!2843701 () Bool)

(assert (=> d!712116 m!2843701))

(declare-fun m!2843703 () Bool)

(assert (=> b!2475447 m!2843703))

(declare-fun m!2843705 () Bool)

(assert (=> b!2475448 m!2843705))

(assert (=> b!2475449 m!2843693))

(assert (=> b!2475449 m!2843693))

(assert (=> b!2475449 m!2843695))

(assert (=> b!2475449 m!2843695))

(assert (=> b!2475449 m!2843697))

(declare-fun m!2843707 () Bool)

(assert (=> b!2475449 m!2843707))

(assert (=> b!2475327 d!712116))

(declare-fun d!712120 () Bool)

(assert (=> d!712120 (rulesProduceIndividualToken!1834 thiss!27932 rules!4472 t1!67)))

(declare-fun lt!884078 () Unit!42276)

(assert (=> d!712120 (= lt!884078 (choose!14602 thiss!27932 rules!4472 lt!883984 t1!67))))

(assert (=> d!712120 (not (isEmpty!16772 rules!4472))))

(assert (=> d!712120 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!695 thiss!27932 rules!4472 lt!883984 t1!67) lt!884078)))

(declare-fun bs!467002 () Bool)

(assert (= bs!467002 d!712120))

(assert (=> bs!467002 m!2843507))

(declare-fun m!2843709 () Bool)

(assert (=> bs!467002 m!2843709))

(assert (=> bs!467002 m!2843525))

(assert (=> b!2475327 d!712120))

(declare-fun b!2475468 () Bool)

(declare-fun res!1048173 () Bool)

(declare-fun e!1570480 () Bool)

(assert (=> b!2475468 (=> (not res!1048173) (not e!1570480))))

(assert (=> b!2475468 (= res!1048173 (contains!4933 lt!883984 t2!67))))

(declare-fun b!2475469 () Bool)

(declare-fun res!1048172 () Bool)

(declare-fun e!1570479 () Bool)

(assert (=> b!2475469 (=> (not res!1048172) (not e!1570479))))

(assert (=> b!2475469 (= res!1048172 (rulesProduceEachTokenIndividuallyList!1422 thiss!27932 rules!4472 lt!883984))))

(declare-fun b!2475470 () Bool)

(declare-fun res!1048170 () Bool)

(assert (=> b!2475470 (=> (not res!1048170) (not e!1570479))))

(assert (=> b!2475470 (= res!1048170 (rulesInvariant!3606 thiss!27932 rules!4472))))

(declare-fun b!2475471 () Bool)

(declare-fun res!1048174 () Bool)

(assert (=> b!2475471 (=> (not res!1048174) (not e!1570480))))

(assert (=> b!2475471 (= res!1048174 (rulesInvariant!3606 thiss!27932 rules!4472))))

(declare-fun d!712122 () Bool)

(assert (=> d!712122 e!1570479))

(declare-fun res!1048169 () Bool)

(assert (=> d!712122 (=> (not res!1048169) (not e!1570479))))

(assert (=> d!712122 (= res!1048169 ((_ is Lexer!4104) thiss!27932))))

(declare-fun lt!884094 () Unit!42276)

(declare-fun choose!14603 (LexerInterface!4106 List!29006 List!29007 Token!8488 Token!8488 Int) Unit!42276)

(assert (=> d!712122 (= lt!884094 (choose!14603 thiss!27932 lt!883984 rules!4472 t1!67 t2!67 (- i!1803 1)))))

(assert (=> d!712122 (not (isEmpty!16772 rules!4472))))

(assert (=> d!712122 (= (tokensListTwoByTwoPredicateInstantiateSeparableTokens!16 thiss!27932 lt!883984 rules!4472 t1!67 t2!67 (- i!1803 1)) lt!884094)))

(declare-fun b!2475472 () Bool)

(assert (=> b!2475472 (= e!1570479 (separableTokensPredicate!881 thiss!27932 t1!67 t2!67 rules!4472))))

(declare-fun lt!884091 () Unit!42276)

(declare-fun lt!884093 () Unit!42276)

(assert (=> b!2475472 (= lt!884091 lt!884093)))

(assert (=> b!2475472 (rulesProduceIndividualToken!1834 thiss!27932 rules!4472 t2!67)))

(assert (=> b!2475472 (= lt!884093 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!695 thiss!27932 rules!4472 lt!883984 t2!67))))

(assert (=> b!2475472 e!1570480))

(declare-fun res!1048168 () Bool)

(assert (=> b!2475472 (=> (not res!1048168) (not e!1570480))))

(assert (=> b!2475472 (= res!1048168 ((_ is Lexer!4104) thiss!27932))))

(declare-fun lt!884095 () Unit!42276)

(declare-fun lt!884092 () Unit!42276)

(assert (=> b!2475472 (= lt!884095 lt!884092)))

(assert (=> b!2475472 (rulesProduceIndividualToken!1834 thiss!27932 rules!4472 t1!67)))

(assert (=> b!2475472 (= lt!884092 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!695 thiss!27932 rules!4472 lt!883984 t1!67))))

(declare-fun b!2475473 () Bool)

(assert (=> b!2475473 (= e!1570480 (rulesProduceEachTokenIndividuallyList!1422 thiss!27932 rules!4472 lt!883984))))

(declare-fun b!2475474 () Bool)

(declare-fun res!1048171 () Bool)

(assert (=> b!2475474 (=> (not res!1048171) (not e!1570479))))

(assert (=> b!2475474 (= res!1048171 (contains!4933 lt!883984 t1!67))))

(assert (= (and d!712122 res!1048169) b!2475470))

(assert (= (and b!2475470 res!1048170) b!2475474))

(assert (= (and b!2475474 res!1048171) b!2475469))

(assert (= (and b!2475469 res!1048172) b!2475472))

(assert (= (and b!2475472 res!1048168) b!2475471))

(assert (= (and b!2475471 res!1048174) b!2475468))

(assert (= (and b!2475468 res!1048173) b!2475473))

(assert (=> b!2475469 m!2843483))

(declare-fun m!2843711 () Bool)

(assert (=> b!2475468 m!2843711))

(declare-fun m!2843713 () Bool)

(assert (=> d!712122 m!2843713))

(assert (=> d!712122 m!2843525))

(declare-fun m!2843715 () Bool)

(assert (=> b!2475474 m!2843715))

(assert (=> b!2475471 m!2843501))

(assert (=> b!2475472 m!2843519))

(assert (=> b!2475472 m!2843531))

(assert (=> b!2475472 m!2843511))

(assert (=> b!2475472 m!2843509))

(assert (=> b!2475472 m!2843507))

(assert (=> b!2475473 m!2843483))

(assert (=> b!2475470 m!2843501))

(assert (=> b!2475327 d!712122))

(declare-fun d!712124 () Bool)

(assert (=> d!712124 (rulesProduceIndividualToken!1834 thiss!27932 rules!4472 t2!67)))

(declare-fun lt!884096 () Unit!42276)

(assert (=> d!712124 (= lt!884096 (choose!14602 thiss!27932 rules!4472 lt!883984 t2!67))))

(assert (=> d!712124 (not (isEmpty!16772 rules!4472))))

(assert (=> d!712124 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!695 thiss!27932 rules!4472 lt!883984 t2!67) lt!884096)))

(declare-fun bs!467003 () Bool)

(assert (= bs!467003 d!712124))

(assert (=> bs!467003 m!2843511))

(declare-fun m!2843717 () Bool)

(assert (=> bs!467003 m!2843717))

(assert (=> bs!467003 m!2843525))

(assert (=> b!2475327 d!712124))

(declare-fun d!712126 () Bool)

(declare-fun lt!884097 () Bool)

(declare-fun e!1570481 () Bool)

(assert (=> d!712126 (= lt!884097 e!1570481)))

(declare-fun res!1048176 () Bool)

(assert (=> d!712126 (=> (not res!1048176) (not e!1570481))))

(assert (=> d!712126 (= res!1048176 (= (list!11161 (_1!16670 (lex!1867 thiss!27932 rules!4472 (print!1589 thiss!27932 (singletonSeq!2005 t1!67))))) (list!11161 (singletonSeq!2005 t1!67))))))

(declare-fun e!1570482 () Bool)

(assert (=> d!712126 (= lt!884097 e!1570482)))

(declare-fun res!1048175 () Bool)

(assert (=> d!712126 (=> (not res!1048175) (not e!1570482))))

(declare-fun lt!884098 () tuple2!28258)

(assert (=> d!712126 (= res!1048175 (= (size!22498 (_1!16670 lt!884098)) 1))))

(assert (=> d!712126 (= lt!884098 (lex!1867 thiss!27932 rules!4472 (print!1589 thiss!27932 (singletonSeq!2005 t1!67))))))

(assert (=> d!712126 (not (isEmpty!16772 rules!4472))))

(assert (=> d!712126 (= (rulesProduceIndividualToken!1834 thiss!27932 rules!4472 t1!67) lt!884097)))

(declare-fun b!2475475 () Bool)

(declare-fun res!1048177 () Bool)

(assert (=> b!2475475 (=> (not res!1048177) (not e!1570482))))

(assert (=> b!2475475 (= res!1048177 (= (apply!6825 (_1!16670 lt!884098) 0) t1!67))))

(declare-fun b!2475476 () Bool)

(assert (=> b!2475476 (= e!1570482 (isEmpty!16776 (_2!16670 lt!884098)))))

(declare-fun b!2475477 () Bool)

(assert (=> b!2475477 (= e!1570481 (isEmpty!16776 (_2!16670 (lex!1867 thiss!27932 rules!4472 (print!1589 thiss!27932 (singletonSeq!2005 t1!67))))))))

(assert (= (and d!712126 res!1048175) b!2475475))

(assert (= (and b!2475475 res!1048177) b!2475476))

(assert (= (and d!712126 res!1048176) b!2475477))

(declare-fun m!2843719 () Bool)

(assert (=> d!712126 m!2843719))

(declare-fun m!2843721 () Bool)

(assert (=> d!712126 m!2843721))

(declare-fun m!2843723 () Bool)

(assert (=> d!712126 m!2843723))

(assert (=> d!712126 m!2843525))

(assert (=> d!712126 m!2843721))

(assert (=> d!712126 m!2843723))

(declare-fun m!2843725 () Bool)

(assert (=> d!712126 m!2843725))

(assert (=> d!712126 m!2843721))

(declare-fun m!2843727 () Bool)

(assert (=> d!712126 m!2843727))

(declare-fun m!2843729 () Bool)

(assert (=> d!712126 m!2843729))

(declare-fun m!2843731 () Bool)

(assert (=> b!2475475 m!2843731))

(declare-fun m!2843733 () Bool)

(assert (=> b!2475476 m!2843733))

(assert (=> b!2475477 m!2843721))

(assert (=> b!2475477 m!2843721))

(assert (=> b!2475477 m!2843723))

(assert (=> b!2475477 m!2843723))

(assert (=> b!2475477 m!2843725))

(declare-fun m!2843735 () Bool)

(assert (=> b!2475477 m!2843735))

(assert (=> b!2475327 d!712126))

(declare-fun b!2475489 () Bool)

(declare-fun e!1570491 () Bool)

(declare-fun inv!16 (TokenValue!4695) Bool)

(assert (=> b!2475489 (= e!1570491 (inv!16 (value!143912 t1!67)))))

(declare-fun b!2475490 () Bool)

(declare-fun e!1570489 () Bool)

(assert (=> b!2475490 (= e!1570491 e!1570489)))

(declare-fun c!394007 () Bool)

(assert (=> b!2475490 (= c!394007 ((_ is IntegerValue!14086) (value!143912 t1!67)))))

(declare-fun b!2475491 () Bool)

(declare-fun inv!17 (TokenValue!4695) Bool)

(assert (=> b!2475491 (= e!1570489 (inv!17 (value!143912 t1!67)))))

(declare-fun b!2475492 () Bool)

(declare-fun e!1570490 () Bool)

(declare-fun inv!15 (TokenValue!4695) Bool)

(assert (=> b!2475492 (= e!1570490 (inv!15 (value!143912 t1!67)))))

(declare-fun d!712128 () Bool)

(declare-fun c!394006 () Bool)

(assert (=> d!712128 (= c!394006 ((_ is IntegerValue!14085) (value!143912 t1!67)))))

(assert (=> d!712128 (= (inv!21 (value!143912 t1!67)) e!1570491)))

(declare-fun b!2475488 () Bool)

(declare-fun res!1048180 () Bool)

(assert (=> b!2475488 (=> res!1048180 e!1570490)))

(assert (=> b!2475488 (= res!1048180 (not ((_ is IntegerValue!14087) (value!143912 t1!67))))))

(assert (=> b!2475488 (= e!1570489 e!1570490)))

(assert (= (and d!712128 c!394006) b!2475489))

(assert (= (and d!712128 (not c!394006)) b!2475490))

(assert (= (and b!2475490 c!394007) b!2475491))

(assert (= (and b!2475490 (not c!394007)) b!2475488))

(assert (= (and b!2475488 (not res!1048180)) b!2475492))

(declare-fun m!2843737 () Bool)

(assert (=> b!2475489 m!2843737))

(declare-fun m!2843739 () Bool)

(assert (=> b!2475491 m!2843739))

(declare-fun m!2843741 () Bool)

(assert (=> b!2475492 m!2843741))

(assert (=> b!2475338 d!712128))

(declare-fun b!2475494 () Bool)

(declare-fun e!1570494 () Bool)

(assert (=> b!2475494 (= e!1570494 (inv!16 (value!143912 t2!67)))))

(declare-fun b!2475495 () Bool)

(declare-fun e!1570492 () Bool)

(assert (=> b!2475495 (= e!1570494 e!1570492)))

(declare-fun c!394009 () Bool)

(assert (=> b!2475495 (= c!394009 ((_ is IntegerValue!14086) (value!143912 t2!67)))))

(declare-fun b!2475496 () Bool)

(assert (=> b!2475496 (= e!1570492 (inv!17 (value!143912 t2!67)))))

(declare-fun b!2475497 () Bool)

(declare-fun e!1570493 () Bool)

(assert (=> b!2475497 (= e!1570493 (inv!15 (value!143912 t2!67)))))

(declare-fun d!712130 () Bool)

(declare-fun c!394008 () Bool)

(assert (=> d!712130 (= c!394008 ((_ is IntegerValue!14085) (value!143912 t2!67)))))

(assert (=> d!712130 (= (inv!21 (value!143912 t2!67)) e!1570494)))

(declare-fun b!2475493 () Bool)

(declare-fun res!1048181 () Bool)

(assert (=> b!2475493 (=> res!1048181 e!1570493)))

(assert (=> b!2475493 (= res!1048181 (not ((_ is IntegerValue!14087) (value!143912 t2!67))))))

(assert (=> b!2475493 (= e!1570492 e!1570493)))

(assert (= (and d!712130 c!394008) b!2475494))

(assert (= (and d!712130 (not c!394008)) b!2475495))

(assert (= (and b!2475495 c!394009) b!2475496))

(assert (= (and b!2475495 (not c!394009)) b!2475493))

(assert (= (and b!2475493 (not res!1048181)) b!2475497))

(declare-fun m!2843743 () Bool)

(assert (=> b!2475494 m!2843743))

(declare-fun m!2843745 () Bool)

(assert (=> b!2475496 m!2843745))

(declare-fun m!2843747 () Bool)

(assert (=> b!2475497 m!2843747))

(assert (=> b!2475340 d!712130))

(declare-fun d!712132 () Bool)

(declare-fun res!1048182 () Bool)

(declare-fun e!1570495 () Bool)

(assert (=> d!712132 (=> (not res!1048182) (not e!1570495))))

(assert (=> d!712132 (= res!1048182 (not (isEmpty!16775 (originalCharacters!5275 t2!67))))))

(assert (=> d!712132 (= (inv!38997 t2!67) e!1570495)))

(declare-fun b!2475498 () Bool)

(declare-fun res!1048183 () Bool)

(assert (=> b!2475498 (=> (not res!1048183) (not e!1570495))))

(assert (=> b!2475498 (= res!1048183 (= (originalCharacters!5275 t2!67) (list!11160 (dynLambda!12426 (toChars!6232 (transformation!4509 (rule!6867 t2!67))) (value!143912 t2!67)))))))

(declare-fun b!2475499 () Bool)

(assert (=> b!2475499 (= e!1570495 (= (size!22491 t2!67) (size!22497 (originalCharacters!5275 t2!67))))))

(assert (= (and d!712132 res!1048182) b!2475498))

(assert (= (and b!2475498 res!1048183) b!2475499))

(declare-fun b_lambda!75961 () Bool)

(assert (=> (not b_lambda!75961) (not b!2475498)))

(declare-fun tb!140289 () Bool)

(declare-fun t!210578 () Bool)

(assert (=> (and b!2475332 (= (toChars!6232 (transformation!4509 (rule!6867 (h!34307 l!6611)))) (toChars!6232 (transformation!4509 (rule!6867 t2!67)))) t!210578) tb!140289))

(declare-fun b!2475500 () Bool)

(declare-fun e!1570496 () Bool)

(declare-fun tp!791587 () Bool)

(assert (=> b!2475500 (= e!1570496 (and (inv!39001 (c!393992 (dynLambda!12426 (toChars!6232 (transformation!4509 (rule!6867 t2!67))) (value!143912 t2!67)))) tp!791587))))

(declare-fun result!173142 () Bool)

(assert (=> tb!140289 (= result!173142 (and (inv!39002 (dynLambda!12426 (toChars!6232 (transformation!4509 (rule!6867 t2!67))) (value!143912 t2!67))) e!1570496))))

(assert (= tb!140289 b!2475500))

(declare-fun m!2843749 () Bool)

(assert (=> b!2475500 m!2843749))

(declare-fun m!2843751 () Bool)

(assert (=> tb!140289 m!2843751))

(assert (=> b!2475498 t!210578))

(declare-fun b_and!188013 () Bool)

(assert (= b_and!188005 (and (=> t!210578 result!173142) b_and!188013)))

(declare-fun tb!140291 () Bool)

(declare-fun t!210580 () Bool)

(assert (=> (and b!2475324 (= (toChars!6232 (transformation!4509 (h!34308 rules!4472))) (toChars!6232 (transformation!4509 (rule!6867 t2!67)))) t!210580) tb!140291))

(declare-fun result!173144 () Bool)

(assert (= result!173144 result!173142))

(assert (=> b!2475498 t!210580))

(declare-fun b_and!188015 () Bool)

(assert (= b_and!188007 (and (=> t!210580 result!173144) b_and!188015)))

(declare-fun t!210582 () Bool)

(declare-fun tb!140293 () Bool)

(assert (=> (and b!2475329 (= (toChars!6232 (transformation!4509 (rule!6867 t2!67))) (toChars!6232 (transformation!4509 (rule!6867 t2!67)))) t!210582) tb!140293))

(declare-fun result!173146 () Bool)

(assert (= result!173146 result!173142))

(assert (=> b!2475498 t!210582))

(declare-fun b_and!188017 () Bool)

(assert (= b_and!188009 (and (=> t!210582 result!173146) b_and!188017)))

(declare-fun t!210584 () Bool)

(declare-fun tb!140295 () Bool)

(assert (=> (and b!2475334 (= (toChars!6232 (transformation!4509 (rule!6867 t1!67))) (toChars!6232 (transformation!4509 (rule!6867 t2!67)))) t!210584) tb!140295))

(declare-fun result!173148 () Bool)

(assert (= result!173148 result!173142))

(assert (=> b!2475498 t!210584))

(declare-fun b_and!188019 () Bool)

(assert (= b_and!188011 (and (=> t!210584 result!173148) b_and!188019)))

(declare-fun m!2843753 () Bool)

(assert (=> d!712132 m!2843753))

(declare-fun m!2843755 () Bool)

(assert (=> b!2475498 m!2843755))

(assert (=> b!2475498 m!2843755))

(declare-fun m!2843757 () Bool)

(assert (=> b!2475498 m!2843757))

(declare-fun m!2843759 () Bool)

(assert (=> b!2475499 m!2843759))

(assert (=> start!241390 d!712132))

(declare-fun d!712134 () Bool)

(declare-fun res!1048184 () Bool)

(declare-fun e!1570497 () Bool)

(assert (=> d!712134 (=> (not res!1048184) (not e!1570497))))

(assert (=> d!712134 (= res!1048184 (not (isEmpty!16775 (originalCharacters!5275 t1!67))))))

(assert (=> d!712134 (= (inv!38997 t1!67) e!1570497)))

(declare-fun b!2475501 () Bool)

(declare-fun res!1048185 () Bool)

(assert (=> b!2475501 (=> (not res!1048185) (not e!1570497))))

(assert (=> b!2475501 (= res!1048185 (= (originalCharacters!5275 t1!67) (list!11160 (dynLambda!12426 (toChars!6232 (transformation!4509 (rule!6867 t1!67))) (value!143912 t1!67)))))))

(declare-fun b!2475502 () Bool)

(assert (=> b!2475502 (= e!1570497 (= (size!22491 t1!67) (size!22497 (originalCharacters!5275 t1!67))))))

(assert (= (and d!712134 res!1048184) b!2475501))

(assert (= (and b!2475501 res!1048185) b!2475502))

(declare-fun b_lambda!75963 () Bool)

(assert (=> (not b_lambda!75963) (not b!2475501)))

(declare-fun tb!140297 () Bool)

(declare-fun t!210586 () Bool)

(assert (=> (and b!2475332 (= (toChars!6232 (transformation!4509 (rule!6867 (h!34307 l!6611)))) (toChars!6232 (transformation!4509 (rule!6867 t1!67)))) t!210586) tb!140297))

(declare-fun b!2475503 () Bool)

(declare-fun e!1570498 () Bool)

(declare-fun tp!791588 () Bool)

(assert (=> b!2475503 (= e!1570498 (and (inv!39001 (c!393992 (dynLambda!12426 (toChars!6232 (transformation!4509 (rule!6867 t1!67))) (value!143912 t1!67)))) tp!791588))))

(declare-fun result!173150 () Bool)

(assert (=> tb!140297 (= result!173150 (and (inv!39002 (dynLambda!12426 (toChars!6232 (transformation!4509 (rule!6867 t1!67))) (value!143912 t1!67))) e!1570498))))

(assert (= tb!140297 b!2475503))

(declare-fun m!2843761 () Bool)

(assert (=> b!2475503 m!2843761))

(declare-fun m!2843763 () Bool)

(assert (=> tb!140297 m!2843763))

(assert (=> b!2475501 t!210586))

(declare-fun b_and!188021 () Bool)

(assert (= b_and!188013 (and (=> t!210586 result!173150) b_and!188021)))

(declare-fun t!210588 () Bool)

(declare-fun tb!140299 () Bool)

(assert (=> (and b!2475324 (= (toChars!6232 (transformation!4509 (h!34308 rules!4472))) (toChars!6232 (transformation!4509 (rule!6867 t1!67)))) t!210588) tb!140299))

(declare-fun result!173152 () Bool)

(assert (= result!173152 result!173150))

(assert (=> b!2475501 t!210588))

(declare-fun b_and!188023 () Bool)

(assert (= b_and!188015 (and (=> t!210588 result!173152) b_and!188023)))

(declare-fun tb!140301 () Bool)

(declare-fun t!210590 () Bool)

(assert (=> (and b!2475329 (= (toChars!6232 (transformation!4509 (rule!6867 t2!67))) (toChars!6232 (transformation!4509 (rule!6867 t1!67)))) t!210590) tb!140301))

(declare-fun result!173154 () Bool)

(assert (= result!173154 result!173150))

(assert (=> b!2475501 t!210590))

(declare-fun b_and!188025 () Bool)

(assert (= b_and!188017 (and (=> t!210590 result!173154) b_and!188025)))

(declare-fun t!210592 () Bool)

(declare-fun tb!140303 () Bool)

(assert (=> (and b!2475334 (= (toChars!6232 (transformation!4509 (rule!6867 t1!67))) (toChars!6232 (transformation!4509 (rule!6867 t1!67)))) t!210592) tb!140303))

(declare-fun result!173156 () Bool)

(assert (= result!173156 result!173150))

(assert (=> b!2475501 t!210592))

(declare-fun b_and!188027 () Bool)

(assert (= b_and!188019 (and (=> t!210592 result!173156) b_and!188027)))

(declare-fun m!2843765 () Bool)

(assert (=> d!712134 m!2843765))

(declare-fun m!2843767 () Bool)

(assert (=> b!2475501 m!2843767))

(assert (=> b!2475501 m!2843767))

(declare-fun m!2843769 () Bool)

(assert (=> b!2475501 m!2843769))

(declare-fun m!2843771 () Bool)

(assert (=> b!2475502 m!2843771))

(assert (=> start!241390 d!712134))

(declare-fun d!712136 () Bool)

(assert (=> d!712136 (= (isEmpty!16772 rules!4472) ((_ is Nil!28907) rules!4472))))

(assert (=> b!2475339 d!712136))

(declare-fun d!712138 () Bool)

(declare-fun prefixMatchZipperSequence!731 (Regex!7297 BalanceConc!18072) Bool)

(declare-fun rulesRegex!987 (LexerInterface!4106 List!29007) Regex!7297)

(declare-fun ++!7151 (BalanceConc!18072 BalanceConc!18072) BalanceConc!18072)

(declare-fun singletonSeq!2006 (C!14752) BalanceConc!18072)

(declare-fun apply!6826 (BalanceConc!18072 Int) C!14752)

(assert (=> d!712138 (= (separableTokensPredicate!881 thiss!27932 t1!67 t2!67 rules!4472) (not (prefixMatchZipperSequence!731 (rulesRegex!987 thiss!27932 rules!4472) (++!7151 (charsOf!2838 t1!67) (singletonSeq!2006 (apply!6826 (charsOf!2838 t2!67) 0))))))))

(declare-fun bs!467004 () Bool)

(assert (= bs!467004 d!712138))

(declare-fun m!2843773 () Bool)

(assert (=> bs!467004 m!2843773))

(declare-fun m!2843775 () Bool)

(assert (=> bs!467004 m!2843775))

(declare-fun m!2843777 () Bool)

(assert (=> bs!467004 m!2843777))

(declare-fun m!2843779 () Bool)

(assert (=> bs!467004 m!2843779))

(declare-fun m!2843781 () Bool)

(assert (=> bs!467004 m!2843781))

(declare-fun m!2843783 () Bool)

(assert (=> bs!467004 m!2843783))

(declare-fun m!2843785 () Bool)

(assert (=> bs!467004 m!2843785))

(assert (=> bs!467004 m!2843779))

(assert (=> bs!467004 m!2843773))

(assert (=> bs!467004 m!2843783))

(assert (=> bs!467004 m!2843777))

(assert (=> bs!467004 m!2843775))

(assert (=> bs!467004 m!2843785))

(assert (=> b!2475318 d!712138))

(declare-fun d!712140 () Bool)

(declare-fun lt!884099 () Token!8488)

(assert (=> d!712140 (contains!4933 lt!883984 lt!884099)))

(declare-fun e!1570499 () Token!8488)

(assert (=> d!712140 (= lt!884099 e!1570499)))

(declare-fun c!394010 () Bool)

(assert (=> d!712140 (= c!394010 (= (- i!1803 1) 0))))

(declare-fun e!1570500 () Bool)

(assert (=> d!712140 e!1570500))

(declare-fun res!1048186 () Bool)

(assert (=> d!712140 (=> (not res!1048186) (not e!1570500))))

(assert (=> d!712140 (= res!1048186 (<= 0 (- i!1803 1)))))

(assert (=> d!712140 (= (apply!6822 lt!883984 (- i!1803 1)) lt!884099)))

(declare-fun b!2475504 () Bool)

(assert (=> b!2475504 (= e!1570500 (< (- i!1803 1) (size!22492 lt!883984)))))

(declare-fun b!2475505 () Bool)

(assert (=> b!2475505 (= e!1570499 (head!5655 lt!883984))))

(declare-fun b!2475506 () Bool)

(assert (=> b!2475506 (= e!1570499 (apply!6822 (tail!3942 lt!883984) (- (- i!1803 1) 1)))))

(assert (= (and d!712140 res!1048186) b!2475504))

(assert (= (and d!712140 c!394010) b!2475505))

(assert (= (and d!712140 (not c!394010)) b!2475506))

(declare-fun m!2843787 () Bool)

(assert (=> d!712140 m!2843787))

(assert (=> b!2475504 m!2843529))

(assert (=> b!2475505 m!2843557))

(assert (=> b!2475506 m!2843559))

(assert (=> b!2475506 m!2843559))

(declare-fun m!2843789 () Bool)

(assert (=> b!2475506 m!2843789))

(assert (=> b!2475341 d!712140))

(declare-fun d!712142 () Bool)

(assert (=> d!712142 (= (inv!38994 (tag!4999 (h!34308 rules!4472))) (= (mod (str.len (value!143911 (tag!4999 (h!34308 rules!4472)))) 2) 0))))

(assert (=> b!2475320 d!712142))

(declare-fun d!712144 () Bool)

(declare-fun res!1048187 () Bool)

(declare-fun e!1570501 () Bool)

(assert (=> d!712144 (=> (not res!1048187) (not e!1570501))))

(assert (=> d!712144 (= res!1048187 (semiInverseModEq!1860 (toChars!6232 (transformation!4509 (h!34308 rules!4472))) (toValue!6373 (transformation!4509 (h!34308 rules!4472)))))))

(assert (=> d!712144 (= (inv!38998 (transformation!4509 (h!34308 rules!4472))) e!1570501)))

(declare-fun b!2475507 () Bool)

(assert (=> b!2475507 (= e!1570501 (equivClasses!1771 (toChars!6232 (transformation!4509 (h!34308 rules!4472))) (toValue!6373 (transformation!4509 (h!34308 rules!4472)))))))

(assert (= (and d!712144 res!1048187) b!2475507))

(declare-fun m!2843791 () Bool)

(assert (=> d!712144 m!2843791))

(declare-fun m!2843793 () Bool)

(assert (=> b!2475507 m!2843793))

(assert (=> b!2475320 d!712144))

(declare-fun b!2475681 () Bool)

(declare-fun e!1570625 () Bool)

(assert (=> b!2475681 (= e!1570625 true)))

(declare-fun b!2475680 () Bool)

(declare-fun e!1570624 () Bool)

(assert (=> b!2475680 (= e!1570624 e!1570625)))

(declare-fun b!2475679 () Bool)

(declare-fun e!1570623 () Bool)

(assert (=> b!2475679 (= e!1570623 e!1570624)))

(declare-fun d!712146 () Bool)

(assert (=> d!712146 e!1570623))

(assert (= b!2475680 b!2475681))

(assert (= b!2475679 b!2475680))

(assert (= (and d!712146 ((_ is Cons!28907) rules!4472)) b!2475679))

(declare-fun lambda!93386 () Int)

(declare-fun order!15697 () Int)

(declare-fun order!15695 () Int)

(declare-fun dynLambda!12427 (Int Int) Int)

(declare-fun dynLambda!12428 (Int Int) Int)

(assert (=> b!2475681 (< (dynLambda!12427 order!15695 (toValue!6373 (transformation!4509 (h!34308 rules!4472)))) (dynLambda!12428 order!15697 lambda!93386))))

(declare-fun order!15699 () Int)

(declare-fun dynLambda!12429 (Int Int) Int)

(assert (=> b!2475681 (< (dynLambda!12429 order!15699 (toChars!6232 (transformation!4509 (h!34308 rules!4472)))) (dynLambda!12428 order!15697 lambda!93386))))

(assert (=> d!712146 true))

(declare-fun lt!884121 () Bool)

(declare-fun forall!5920 (List!29006 Int) Bool)

(assert (=> d!712146 (= lt!884121 (forall!5920 lt!883984 lambda!93386))))

(declare-fun e!1570616 () Bool)

(assert (=> d!712146 (= lt!884121 e!1570616)))

(declare-fun res!1048229 () Bool)

(assert (=> d!712146 (=> res!1048229 e!1570616)))

(assert (=> d!712146 (= res!1048229 (not ((_ is Cons!28906) lt!883984)))))

(assert (=> d!712146 (not (isEmpty!16772 rules!4472))))

(assert (=> d!712146 (= (rulesProduceEachTokenIndividuallyList!1422 thiss!27932 rules!4472 lt!883984) lt!884121)))

(declare-fun b!2475669 () Bool)

(declare-fun e!1570615 () Bool)

(assert (=> b!2475669 (= e!1570616 e!1570615)))

(declare-fun res!1048228 () Bool)

(assert (=> b!2475669 (=> (not res!1048228) (not e!1570615))))

(assert (=> b!2475669 (= res!1048228 (rulesProduceIndividualToken!1834 thiss!27932 rules!4472 (h!34307 lt!883984)))))

(declare-fun b!2475670 () Bool)

(assert (=> b!2475670 (= e!1570615 (rulesProduceEachTokenIndividuallyList!1422 thiss!27932 rules!4472 (t!210559 lt!883984)))))

(assert (= (and d!712146 (not res!1048229)) b!2475669))

(assert (= (and b!2475669 res!1048228) b!2475670))

(declare-fun m!2843945 () Bool)

(assert (=> d!712146 m!2843945))

(assert (=> d!712146 m!2843525))

(assert (=> b!2475669 m!2843613))

(declare-fun m!2843947 () Bool)

(assert (=> b!2475670 m!2843947))

(assert (=> b!2475319 d!712146))

(declare-fun d!712198 () Bool)

(assert (=> d!712198 (= (tail!3942 l!6611) (t!210559 l!6611))))

(assert (=> b!2475319 d!712198))

(declare-fun d!712200 () Bool)

(declare-fun lt!884122 () Token!8488)

(assert (=> d!712200 (contains!4933 l!6611 lt!884122)))

(declare-fun e!1570626 () Token!8488)

(assert (=> d!712200 (= lt!884122 e!1570626)))

(declare-fun c!394032 () Bool)

(assert (=> d!712200 (= c!394032 (= i!1803 0))))

(declare-fun e!1570627 () Bool)

(assert (=> d!712200 e!1570627))

(declare-fun res!1048230 () Bool)

(assert (=> d!712200 (=> (not res!1048230) (not e!1570627))))

(assert (=> d!712200 (= res!1048230 (<= 0 i!1803))))

(assert (=> d!712200 (= (apply!6822 l!6611 i!1803) lt!884122)))

(declare-fun b!2475684 () Bool)

(assert (=> b!2475684 (= e!1570627 (< i!1803 (size!22492 l!6611)))))

(declare-fun b!2475685 () Bool)

(assert (=> b!2475685 (= e!1570626 (head!5655 l!6611))))

(declare-fun b!2475686 () Bool)

(assert (=> b!2475686 (= e!1570626 (apply!6822 (tail!3942 l!6611) (- i!1803 1)))))

(assert (= (and d!712200 res!1048230) b!2475684))

(assert (= (and d!712200 c!394032) b!2475685))

(assert (= (and d!712200 (not c!394032)) b!2475686))

(declare-fun m!2843949 () Bool)

(assert (=> d!712200 m!2843949))

(assert (=> b!2475684 m!2843545))

(assert (=> b!2475685 m!2843639))

(assert (=> b!2475686 m!2843485))

(assert (=> b!2475686 m!2843485))

(declare-fun m!2843951 () Bool)

(assert (=> b!2475686 m!2843951))

(assert (=> b!2475330 d!712200))

(declare-fun bs!467007 () Bool)

(declare-fun d!712202 () Bool)

(assert (= bs!467007 (and d!712202 d!712146)))

(declare-fun lambda!93387 () Int)

(assert (=> bs!467007 (= lambda!93387 lambda!93386)))

(declare-fun b!2475691 () Bool)

(declare-fun e!1570632 () Bool)

(assert (=> b!2475691 (= e!1570632 true)))

(declare-fun b!2475690 () Bool)

(declare-fun e!1570631 () Bool)

(assert (=> b!2475690 (= e!1570631 e!1570632)))

(declare-fun b!2475689 () Bool)

(declare-fun e!1570630 () Bool)

(assert (=> b!2475689 (= e!1570630 e!1570631)))

(assert (=> d!712202 e!1570630))

(assert (= b!2475690 b!2475691))

(assert (= b!2475689 b!2475690))

(assert (= (and d!712202 ((_ is Cons!28907) rules!4472)) b!2475689))

(assert (=> b!2475691 (< (dynLambda!12427 order!15695 (toValue!6373 (transformation!4509 (h!34308 rules!4472)))) (dynLambda!12428 order!15697 lambda!93387))))

(assert (=> b!2475691 (< (dynLambda!12429 order!15699 (toChars!6232 (transformation!4509 (h!34308 rules!4472)))) (dynLambda!12428 order!15697 lambda!93387))))

(assert (=> d!712202 true))

(declare-fun lt!884123 () Bool)

(assert (=> d!712202 (= lt!884123 (forall!5920 l!6611 lambda!93387))))

(declare-fun e!1570629 () Bool)

(assert (=> d!712202 (= lt!884123 e!1570629)))

(declare-fun res!1048232 () Bool)

(assert (=> d!712202 (=> res!1048232 e!1570629)))

(assert (=> d!712202 (= res!1048232 (not ((_ is Cons!28906) l!6611)))))

(assert (=> d!712202 (not (isEmpty!16772 rules!4472))))

(assert (=> d!712202 (= (rulesProduceEachTokenIndividuallyList!1422 thiss!27932 rules!4472 l!6611) lt!884123)))

(declare-fun b!2475687 () Bool)

(declare-fun e!1570628 () Bool)

(assert (=> b!2475687 (= e!1570629 e!1570628)))

(declare-fun res!1048231 () Bool)

(assert (=> b!2475687 (=> (not res!1048231) (not e!1570628))))

(assert (=> b!2475687 (= res!1048231 (rulesProduceIndividualToken!1834 thiss!27932 rules!4472 (h!34307 l!6611)))))

(declare-fun b!2475688 () Bool)

(assert (=> b!2475688 (= e!1570628 (rulesProduceEachTokenIndividuallyList!1422 thiss!27932 rules!4472 (t!210559 l!6611)))))

(assert (= (and d!712202 (not res!1048232)) b!2475687))

(assert (= (and b!2475687 res!1048231) b!2475688))

(declare-fun m!2843953 () Bool)

(assert (=> d!712202 m!2843953))

(assert (=> d!712202 m!2843525))

(declare-fun m!2843955 () Bool)

(assert (=> b!2475687 m!2843955))

(declare-fun m!2843957 () Bool)

(assert (=> b!2475688 m!2843957))

(assert (=> b!2475321 d!712202))

(declare-fun d!712204 () Bool)

(declare-fun res!1048234 () Bool)

(declare-fun e!1570633 () Bool)

(assert (=> d!712204 (=> res!1048234 e!1570633)))

(assert (=> d!712204 (= res!1048234 (or (not ((_ is Cons!28906) l!6611)) (not ((_ is Cons!28906) (t!210559 l!6611)))))))

(assert (=> d!712204 (= (tokensListTwoByTwoPredicateSeparableList!645 thiss!27932 l!6611 rules!4472) e!1570633)))

(declare-fun b!2475692 () Bool)

(declare-fun e!1570634 () Bool)

(assert (=> b!2475692 (= e!1570633 e!1570634)))

(declare-fun res!1048233 () Bool)

(assert (=> b!2475692 (=> (not res!1048233) (not e!1570634))))

(assert (=> b!2475692 (= res!1048233 (separableTokensPredicate!881 thiss!27932 (h!34307 l!6611) (h!34307 (t!210559 l!6611)) rules!4472))))

(declare-fun lt!884126 () Unit!42276)

(declare-fun Unit!42287 () Unit!42276)

(assert (=> b!2475692 (= lt!884126 Unit!42287)))

(assert (=> b!2475692 (> (size!22496 (charsOf!2838 (h!34307 (t!210559 l!6611)))) 0)))

(declare-fun lt!884127 () Unit!42276)

(declare-fun Unit!42288 () Unit!42276)

(assert (=> b!2475692 (= lt!884127 Unit!42288)))

(assert (=> b!2475692 (rulesProduceIndividualToken!1834 thiss!27932 rules!4472 (h!34307 (t!210559 l!6611)))))

(declare-fun lt!884125 () Unit!42276)

(declare-fun Unit!42289 () Unit!42276)

(assert (=> b!2475692 (= lt!884125 Unit!42289)))

(assert (=> b!2475692 (rulesProduceIndividualToken!1834 thiss!27932 rules!4472 (h!34307 l!6611))))

(declare-fun lt!884124 () Unit!42276)

(declare-fun lt!884129 () Unit!42276)

(assert (=> b!2475692 (= lt!884124 lt!884129)))

(assert (=> b!2475692 (rulesProduceIndividualToken!1834 thiss!27932 rules!4472 (h!34307 (t!210559 l!6611)))))

(assert (=> b!2475692 (= lt!884129 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!695 thiss!27932 rules!4472 l!6611 (h!34307 (t!210559 l!6611))))))

(declare-fun lt!884130 () Unit!42276)

(declare-fun lt!884128 () Unit!42276)

(assert (=> b!2475692 (= lt!884130 lt!884128)))

(assert (=> b!2475692 (rulesProduceIndividualToken!1834 thiss!27932 rules!4472 (h!34307 l!6611))))

(assert (=> b!2475692 (= lt!884128 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!695 thiss!27932 rules!4472 l!6611 (h!34307 l!6611)))))

(declare-fun b!2475693 () Bool)

(assert (=> b!2475693 (= e!1570634 (tokensListTwoByTwoPredicateSeparableList!645 thiss!27932 (Cons!28906 (h!34307 (t!210559 l!6611)) (t!210559 (t!210559 l!6611))) rules!4472))))

(assert (= (and d!712204 (not res!1048234)) b!2475692))

(assert (= (and b!2475692 res!1048233) b!2475693))

(assert (=> b!2475692 m!2843955))

(declare-fun m!2843959 () Bool)

(assert (=> b!2475692 m!2843959))

(declare-fun m!2843961 () Bool)

(assert (=> b!2475692 m!2843961))

(declare-fun m!2843963 () Bool)

(assert (=> b!2475692 m!2843963))

(assert (=> b!2475692 m!2843959))

(declare-fun m!2843965 () Bool)

(assert (=> b!2475692 m!2843965))

(declare-fun m!2843967 () Bool)

(assert (=> b!2475692 m!2843967))

(declare-fun m!2843969 () Bool)

(assert (=> b!2475692 m!2843969))

(declare-fun m!2843971 () Bool)

(assert (=> b!2475693 m!2843971))

(assert (=> b!2475331 d!712204))

(declare-fun b!2475695 () Bool)

(declare-fun e!1570637 () Bool)

(assert (=> b!2475695 (= e!1570637 (inv!16 (value!143912 (h!34307 l!6611))))))

(declare-fun b!2475696 () Bool)

(declare-fun e!1570635 () Bool)

(assert (=> b!2475696 (= e!1570637 e!1570635)))

(declare-fun c!394034 () Bool)

(assert (=> b!2475696 (= c!394034 ((_ is IntegerValue!14086) (value!143912 (h!34307 l!6611))))))

(declare-fun b!2475697 () Bool)

(assert (=> b!2475697 (= e!1570635 (inv!17 (value!143912 (h!34307 l!6611))))))

(declare-fun b!2475698 () Bool)

(declare-fun e!1570636 () Bool)

(assert (=> b!2475698 (= e!1570636 (inv!15 (value!143912 (h!34307 l!6611))))))

(declare-fun d!712206 () Bool)

(declare-fun c!394033 () Bool)

(assert (=> d!712206 (= c!394033 ((_ is IntegerValue!14085) (value!143912 (h!34307 l!6611))))))

(assert (=> d!712206 (= (inv!21 (value!143912 (h!34307 l!6611))) e!1570637)))

(declare-fun b!2475694 () Bool)

(declare-fun res!1048235 () Bool)

(assert (=> b!2475694 (=> res!1048235 e!1570636)))

(assert (=> b!2475694 (= res!1048235 (not ((_ is IntegerValue!14087) (value!143912 (h!34307 l!6611)))))))

(assert (=> b!2475694 (= e!1570635 e!1570636)))

(assert (= (and d!712206 c!394033) b!2475695))

(assert (= (and d!712206 (not c!394033)) b!2475696))

(assert (= (and b!2475696 c!394034) b!2475697))

(assert (= (and b!2475696 (not c!394034)) b!2475694))

(assert (= (and b!2475694 (not res!1048235)) b!2475698))

(declare-fun m!2843973 () Bool)

(assert (=> b!2475695 m!2843973))

(declare-fun m!2843975 () Bool)

(assert (=> b!2475697 m!2843975))

(declare-fun m!2843977 () Bool)

(assert (=> b!2475698 m!2843977))

(assert (=> b!2475342 d!712206))

(declare-fun b!2475711 () Bool)

(declare-fun e!1570640 () Bool)

(declare-fun tp!791667 () Bool)

(assert (=> b!2475711 (= e!1570640 tp!791667)))

(declare-fun b!2475712 () Bool)

(declare-fun tp!791666 () Bool)

(declare-fun tp!791668 () Bool)

(assert (=> b!2475712 (= e!1570640 (and tp!791666 tp!791668))))

(declare-fun b!2475710 () Bool)

(declare-fun tp!791669 () Bool)

(declare-fun tp!791670 () Bool)

(assert (=> b!2475710 (= e!1570640 (and tp!791669 tp!791670))))

(assert (=> b!2475333 (= tp!791576 e!1570640)))

(declare-fun b!2475709 () Bool)

(declare-fun tp_is_empty!11983 () Bool)

(assert (=> b!2475709 (= e!1570640 tp_is_empty!11983)))

(assert (= (and b!2475333 ((_ is ElementMatch!7297) (regex!4509 (rule!6867 (h!34307 l!6611))))) b!2475709))

(assert (= (and b!2475333 ((_ is Concat!11993) (regex!4509 (rule!6867 (h!34307 l!6611))))) b!2475710))

(assert (= (and b!2475333 ((_ is Star!7297) (regex!4509 (rule!6867 (h!34307 l!6611))))) b!2475711))

(assert (= (and b!2475333 ((_ is Union!7297) (regex!4509 (rule!6867 (h!34307 l!6611))))) b!2475712))

(declare-fun b!2475715 () Bool)

(declare-fun e!1570641 () Bool)

(declare-fun tp!791672 () Bool)

(assert (=> b!2475715 (= e!1570641 tp!791672)))

(declare-fun b!2475716 () Bool)

(declare-fun tp!791671 () Bool)

(declare-fun tp!791673 () Bool)

(assert (=> b!2475716 (= e!1570641 (and tp!791671 tp!791673))))

(declare-fun b!2475714 () Bool)

(declare-fun tp!791674 () Bool)

(declare-fun tp!791675 () Bool)

(assert (=> b!2475714 (= e!1570641 (and tp!791674 tp!791675))))

(assert (=> b!2475325 (= tp!791570 e!1570641)))

(declare-fun b!2475713 () Bool)

(assert (=> b!2475713 (= e!1570641 tp_is_empty!11983)))

(assert (= (and b!2475325 ((_ is ElementMatch!7297) (regex!4509 (rule!6867 t1!67)))) b!2475713))

(assert (= (and b!2475325 ((_ is Concat!11993) (regex!4509 (rule!6867 t1!67)))) b!2475714))

(assert (= (and b!2475325 ((_ is Star!7297) (regex!4509 (rule!6867 t1!67)))) b!2475715))

(assert (= (and b!2475325 ((_ is Union!7297) (regex!4509 (rule!6867 t1!67)))) b!2475716))

(declare-fun b!2475719 () Bool)

(declare-fun e!1570642 () Bool)

(declare-fun tp!791677 () Bool)

(assert (=> b!2475719 (= e!1570642 tp!791677)))

(declare-fun b!2475720 () Bool)

(declare-fun tp!791676 () Bool)

(declare-fun tp!791678 () Bool)

(assert (=> b!2475720 (= e!1570642 (and tp!791676 tp!791678))))

(declare-fun b!2475718 () Bool)

(declare-fun tp!791679 () Bool)

(declare-fun tp!791680 () Bool)

(assert (=> b!2475718 (= e!1570642 (and tp!791679 tp!791680))))

(assert (=> b!2475335 (= tp!791575 e!1570642)))

(declare-fun b!2475717 () Bool)

(assert (=> b!2475717 (= e!1570642 tp_is_empty!11983)))

(assert (= (and b!2475335 ((_ is ElementMatch!7297) (regex!4509 (rule!6867 t2!67)))) b!2475717))

(assert (= (and b!2475335 ((_ is Concat!11993) (regex!4509 (rule!6867 t2!67)))) b!2475718))

(assert (= (and b!2475335 ((_ is Star!7297) (regex!4509 (rule!6867 t2!67)))) b!2475719))

(assert (= (and b!2475335 ((_ is Union!7297) (regex!4509 (rule!6867 t2!67)))) b!2475720))

(declare-fun b!2475731 () Bool)

(declare-fun b_free!71837 () Bool)

(declare-fun b_next!72541 () Bool)

(assert (=> b!2475731 (= b_free!71837 (not b_next!72541))))

(declare-fun tp!791689 () Bool)

(declare-fun b_and!188061 () Bool)

(assert (=> b!2475731 (= tp!791689 b_and!188061)))

(declare-fun b_free!71839 () Bool)

(declare-fun b_next!72543 () Bool)

(assert (=> b!2475731 (= b_free!71839 (not b_next!72543))))

(declare-fun t!210632 () Bool)

(declare-fun tb!140341 () Bool)

(assert (=> (and b!2475731 (= (toChars!6232 (transformation!4509 (h!34308 (t!210560 rules!4472)))) (toChars!6232 (transformation!4509 (rule!6867 (h!34307 l!6611))))) t!210632) tb!140341))

(declare-fun result!173208 () Bool)

(assert (= result!173208 result!173132))

(assert (=> b!2475396 t!210632))

(declare-fun t!210634 () Bool)

(declare-fun tb!140343 () Bool)

(assert (=> (and b!2475731 (= (toChars!6232 (transformation!4509 (h!34308 (t!210560 rules!4472)))) (toChars!6232 (transformation!4509 (rule!6867 t2!67)))) t!210634) tb!140343))

(declare-fun result!173210 () Bool)

(assert (= result!173210 result!173142))

(assert (=> b!2475498 t!210634))

(declare-fun t!210636 () Bool)

(declare-fun tb!140345 () Bool)

(assert (=> (and b!2475731 (= (toChars!6232 (transformation!4509 (h!34308 (t!210560 rules!4472)))) (toChars!6232 (transformation!4509 (rule!6867 t1!67)))) t!210636) tb!140345))

(declare-fun result!173212 () Bool)

(assert (= result!173212 result!173150))

(assert (=> b!2475501 t!210636))

(declare-fun tp!791691 () Bool)

(declare-fun b_and!188063 () Bool)

(assert (=> b!2475731 (= tp!791691 (and (=> t!210632 result!173208) (=> t!210634 result!173210) (=> t!210636 result!173212) b_and!188063))))

(declare-fun e!1570654 () Bool)

(assert (=> b!2475731 (= e!1570654 (and tp!791689 tp!791691))))

(declare-fun b!2475730 () Bool)

(declare-fun tp!791692 () Bool)

(declare-fun e!1570651 () Bool)

(assert (=> b!2475730 (= e!1570651 (and tp!791692 (inv!38994 (tag!4999 (h!34308 (t!210560 rules!4472)))) (inv!38998 (transformation!4509 (h!34308 (t!210560 rules!4472)))) e!1570654))))

(declare-fun b!2475729 () Bool)

(declare-fun e!1570652 () Bool)

(declare-fun tp!791690 () Bool)

(assert (=> b!2475729 (= e!1570652 (and e!1570651 tp!791690))))

(assert (=> b!2475337 (= tp!791571 e!1570652)))

(assert (= b!2475730 b!2475731))

(assert (= b!2475729 b!2475730))

(assert (= (and b!2475337 ((_ is Cons!28907) (t!210560 rules!4472))) b!2475729))

(declare-fun m!2843979 () Bool)

(assert (=> b!2475730 m!2843979))

(declare-fun m!2843981 () Bool)

(assert (=> b!2475730 m!2843981))

(declare-fun b!2475745 () Bool)

(declare-fun b_free!71841 () Bool)

(declare-fun b_next!72545 () Bool)

(assert (=> b!2475745 (= b_free!71841 (not b_next!72545))))

(declare-fun tp!791703 () Bool)

(declare-fun b_and!188065 () Bool)

(assert (=> b!2475745 (= tp!791703 b_and!188065)))

(declare-fun b_free!71843 () Bool)

(declare-fun b_next!72547 () Bool)

(assert (=> b!2475745 (= b_free!71843 (not b_next!72547))))

(declare-fun t!210638 () Bool)

(declare-fun tb!140347 () Bool)

(assert (=> (and b!2475745 (= (toChars!6232 (transformation!4509 (rule!6867 (h!34307 (t!210559 l!6611))))) (toChars!6232 (transformation!4509 (rule!6867 (h!34307 l!6611))))) t!210638) tb!140347))

(declare-fun result!173216 () Bool)

(assert (= result!173216 result!173132))

(assert (=> b!2475396 t!210638))

(declare-fun t!210640 () Bool)

(declare-fun tb!140349 () Bool)

(assert (=> (and b!2475745 (= (toChars!6232 (transformation!4509 (rule!6867 (h!34307 (t!210559 l!6611))))) (toChars!6232 (transformation!4509 (rule!6867 t2!67)))) t!210640) tb!140349))

(declare-fun result!173218 () Bool)

(assert (= result!173218 result!173142))

(assert (=> b!2475498 t!210640))

(declare-fun t!210642 () Bool)

(declare-fun tb!140351 () Bool)

(assert (=> (and b!2475745 (= (toChars!6232 (transformation!4509 (rule!6867 (h!34307 (t!210559 l!6611))))) (toChars!6232 (transformation!4509 (rule!6867 t1!67)))) t!210642) tb!140351))

(declare-fun result!173220 () Bool)

(assert (= result!173220 result!173150))

(assert (=> b!2475501 t!210642))

(declare-fun tp!791706 () Bool)

(declare-fun b_and!188067 () Bool)

(assert (=> b!2475745 (= tp!791706 (and (=> t!210638 result!173216) (=> t!210640 result!173218) (=> t!210642 result!173220) b_and!188067))))

(declare-fun e!1570671 () Bool)

(declare-fun b!2475744 () Bool)

(declare-fun e!1570670 () Bool)

(declare-fun tp!791705 () Bool)

(assert (=> b!2475744 (= e!1570670 (and tp!791705 (inv!38994 (tag!4999 (rule!6867 (h!34307 (t!210559 l!6611))))) (inv!38998 (transformation!4509 (rule!6867 (h!34307 (t!210559 l!6611))))) e!1570671))))

(assert (=> b!2475745 (= e!1570671 (and tp!791703 tp!791706))))

(declare-fun e!1570668 () Bool)

(declare-fun e!1570672 () Bool)

(declare-fun tp!791707 () Bool)

(declare-fun b!2475742 () Bool)

(assert (=> b!2475742 (= e!1570668 (and (inv!38997 (h!34307 (t!210559 l!6611))) e!1570672 tp!791707))))

(assert (=> b!2475315 (= tp!791569 e!1570668)))

(declare-fun tp!791704 () Bool)

(declare-fun b!2475743 () Bool)

(assert (=> b!2475743 (= e!1570672 (and (inv!21 (value!143912 (h!34307 (t!210559 l!6611)))) e!1570670 tp!791704))))

(assert (= b!2475744 b!2475745))

(assert (= b!2475743 b!2475744))

(assert (= b!2475742 b!2475743))

(assert (= (and b!2475315 ((_ is Cons!28906) (t!210559 l!6611))) b!2475742))

(declare-fun m!2843983 () Bool)

(assert (=> b!2475744 m!2843983))

(declare-fun m!2843985 () Bool)

(assert (=> b!2475744 m!2843985))

(declare-fun m!2843987 () Bool)

(assert (=> b!2475742 m!2843987))

(declare-fun m!2843989 () Bool)

(assert (=> b!2475743 m!2843989))

(declare-fun b!2475750 () Bool)

(declare-fun e!1570675 () Bool)

(declare-fun tp!791710 () Bool)

(assert (=> b!2475750 (= e!1570675 (and tp_is_empty!11983 tp!791710))))

(assert (=> b!2475338 (= tp!791572 e!1570675)))

(assert (= (and b!2475338 ((_ is Cons!28905) (originalCharacters!5275 t1!67))) b!2475750))

(declare-fun b!2475751 () Bool)

(declare-fun e!1570676 () Bool)

(declare-fun tp!791711 () Bool)

(assert (=> b!2475751 (= e!1570676 (and tp_is_empty!11983 tp!791711))))

(assert (=> b!2475340 (= tp!791568 e!1570676)))

(assert (= (and b!2475340 ((_ is Cons!28905) (originalCharacters!5275 t2!67))) b!2475751))

(declare-fun b!2475754 () Bool)

(declare-fun e!1570677 () Bool)

(declare-fun tp!791713 () Bool)

(assert (=> b!2475754 (= e!1570677 tp!791713)))

(declare-fun b!2475755 () Bool)

(declare-fun tp!791712 () Bool)

(declare-fun tp!791714 () Bool)

(assert (=> b!2475755 (= e!1570677 (and tp!791712 tp!791714))))

(declare-fun b!2475753 () Bool)

(declare-fun tp!791715 () Bool)

(declare-fun tp!791716 () Bool)

(assert (=> b!2475753 (= e!1570677 (and tp!791715 tp!791716))))

(assert (=> b!2475320 (= tp!791580 e!1570677)))

(declare-fun b!2475752 () Bool)

(assert (=> b!2475752 (= e!1570677 tp_is_empty!11983)))

(assert (= (and b!2475320 ((_ is ElementMatch!7297) (regex!4509 (h!34308 rules!4472)))) b!2475752))

(assert (= (and b!2475320 ((_ is Concat!11993) (regex!4509 (h!34308 rules!4472)))) b!2475753))

(assert (= (and b!2475320 ((_ is Star!7297) (regex!4509 (h!34308 rules!4472)))) b!2475754))

(assert (= (and b!2475320 ((_ is Union!7297) (regex!4509 (h!34308 rules!4472)))) b!2475755))

(declare-fun b!2475756 () Bool)

(declare-fun e!1570678 () Bool)

(declare-fun tp!791717 () Bool)

(assert (=> b!2475756 (= e!1570678 (and tp_is_empty!11983 tp!791717))))

(assert (=> b!2475342 (= tp!791579 e!1570678)))

(assert (= (and b!2475342 ((_ is Cons!28905) (originalCharacters!5275 (h!34307 l!6611)))) b!2475756))

(declare-fun b_lambda!75977 () Bool)

(assert (= b_lambda!75961 (or (and b!2475332 b_free!71815 (= (toChars!6232 (transformation!4509 (rule!6867 (h!34307 l!6611)))) (toChars!6232 (transformation!4509 (rule!6867 t2!67))))) (and b!2475745 b_free!71843 (= (toChars!6232 (transformation!4509 (rule!6867 (h!34307 (t!210559 l!6611))))) (toChars!6232 (transformation!4509 (rule!6867 t2!67))))) (and b!2475334 b_free!71827 (= (toChars!6232 (transformation!4509 (rule!6867 t1!67))) (toChars!6232 (transformation!4509 (rule!6867 t2!67))))) (and b!2475324 b_free!71819 (= (toChars!6232 (transformation!4509 (h!34308 rules!4472))) (toChars!6232 (transformation!4509 (rule!6867 t2!67))))) (and b!2475329 b_free!71823) (and b!2475731 b_free!71839 (= (toChars!6232 (transformation!4509 (h!34308 (t!210560 rules!4472)))) (toChars!6232 (transformation!4509 (rule!6867 t2!67))))) b_lambda!75977)))

(declare-fun b_lambda!75979 () Bool)

(assert (= b_lambda!75963 (or (and b!2475334 b_free!71827) (and b!2475332 b_free!71815 (= (toChars!6232 (transformation!4509 (rule!6867 (h!34307 l!6611)))) (toChars!6232 (transformation!4509 (rule!6867 t1!67))))) (and b!2475324 b_free!71819 (= (toChars!6232 (transformation!4509 (h!34308 rules!4472))) (toChars!6232 (transformation!4509 (rule!6867 t1!67))))) (and b!2475745 b_free!71843 (= (toChars!6232 (transformation!4509 (rule!6867 (h!34307 (t!210559 l!6611))))) (toChars!6232 (transformation!4509 (rule!6867 t1!67))))) (and b!2475329 b_free!71823 (= (toChars!6232 (transformation!4509 (rule!6867 t2!67))) (toChars!6232 (transformation!4509 (rule!6867 t1!67))))) (and b!2475731 b_free!71839 (= (toChars!6232 (transformation!4509 (h!34308 (t!210560 rules!4472)))) (toChars!6232 (transformation!4509 (rule!6867 t1!67))))) b_lambda!75979)))

(declare-fun b_lambda!75981 () Bool)

(assert (= b_lambda!75959 (or (and b!2475332 b_free!71815) (and b!2475329 b_free!71823 (= (toChars!6232 (transformation!4509 (rule!6867 t2!67))) (toChars!6232 (transformation!4509 (rule!6867 (h!34307 l!6611)))))) (and b!2475731 b_free!71839 (= (toChars!6232 (transformation!4509 (h!34308 (t!210560 rules!4472)))) (toChars!6232 (transformation!4509 (rule!6867 (h!34307 l!6611)))))) (and b!2475745 b_free!71843 (= (toChars!6232 (transformation!4509 (rule!6867 (h!34307 (t!210559 l!6611))))) (toChars!6232 (transformation!4509 (rule!6867 (h!34307 l!6611)))))) (and b!2475324 b_free!71819 (= (toChars!6232 (transformation!4509 (h!34308 rules!4472))) (toChars!6232 (transformation!4509 (rule!6867 (h!34307 l!6611)))))) (and b!2475334 b_free!71827 (= (toChars!6232 (transformation!4509 (rule!6867 t1!67))) (toChars!6232 (transformation!4509 (rule!6867 (h!34307 l!6611)))))) b_lambda!75981)))

(check-sat (not b!2475385) (not d!712134) b_and!188023 tp_is_empty!11983 (not b_next!72543) (not b!2475473) b_and!187989 (not b!2475492) (not b!2475689) (not b!2475720) (not d!712120) b_and!188025 (not b!2475434) (not b_next!72529) (not b!2475477) (not b!2475755) (not b_next!72519) (not b!2475693) (not b!2475714) b_and!188001 (not b!2475742) (not d!712202) (not b_next!72517) (not b!2475356) (not b!2475469) (not b!2475505) (not b!2475474) (not b_next!72527) (not d!712098) (not b!2475710) (not b!2475754) (not d!712122) (not d!712100) (not d!712106) (not b!2475712) (not b!2475396) (not b!2475491) (not tb!140289) (not d!712126) (not d!712114) (not b_next!72531) (not b!2475679) (not b!2475501) (not d!712070) (not b!2475744) (not b!2475362) (not b!2475687) (not b!2475476) (not b!2475719) (not b!2475750) (not d!712140) (not b!2475692) (not b!2475498) (not b_lambda!75979) (not b!2475698) (not b!2475447) (not b!2475397) (not b_next!72545) (not b!2475688) (not b_next!72525) (not b!2475670) (not b!2475347) (not b!2475500) (not b!2475496) (not b_next!72541) (not b!2475684) (not b!2475499) (not b!2475697) (not b!2475730) (not b!2475506) (not d!712124) (not tb!140281) (not b!2475354) (not b!2475472) (not b!2475387) b_and!188021 (not d!712094) b_and!188027 b_and!188061 (not b_lambda!75977) (not d!712116) (not b!2475716) (not b!2475489) (not b!2475753) (not b!2475729) (not b!2475751) (not b!2475475) (not d!712144) (not b!2475685) b_and!188067 (not b!2475686) (not b!2475389) b_and!187993 (not b!2475391) (not b!2475504) (not b!2475711) (not b!2475471) (not b!2475743) (not d!712146) (not b!2475507) (not b!2475470) (not b!2475669) (not b!2475388) (not b!2475503) (not d!712132) (not b!2475468) (not d!712138) (not b!2475715) (not b!2475494) (not b!2475386) (not b_next!72547) (not b!2475390) (not b_lambda!75981) (not d!712102) b_and!187997 (not b_next!72523) (not b!2475448) b_and!188063 (not b!2475404) (not d!712074) b_and!188065 (not d!712108) (not b!2475502) (not d!712200) (not b_next!72521) (not tb!140297) (not b!2475497) (not b!2475355) (not b!2475449) (not b!2475695) (not b!2475756) (not b!2475407) (not b!2475718) (not b!2475402))
(check-sat (not b_next!72517) (not b_next!72527) (not b_next!72531) (not b_next!72545) (not b_next!72525) (not b_next!72541) b_and!188021 b_and!188023 (not b_next!72547) (not b_next!72521) (not b_next!72543) b_and!187989 b_and!188025 (not b_next!72529) b_and!188001 (not b_next!72519) b_and!188027 b_and!188061 b_and!188067 b_and!187993 b_and!187997 (not b_next!72523) b_and!188063 b_and!188065)
