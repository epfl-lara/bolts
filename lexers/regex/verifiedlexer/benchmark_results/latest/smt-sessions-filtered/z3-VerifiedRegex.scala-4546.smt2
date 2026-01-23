; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!240602 () Bool)

(assert start!240602)

(declare-fun b!2467501 () Bool)

(declare-fun b_free!71157 () Bool)

(declare-fun b_next!71861 () Bool)

(assert (=> b!2467501 (= b_free!71157 (not b_next!71861))))

(declare-fun tp!787355 () Bool)

(declare-fun b_and!186693 () Bool)

(assert (=> b!2467501 (= tp!787355 b_and!186693)))

(declare-fun b_free!71159 () Bool)

(declare-fun b_next!71863 () Bool)

(assert (=> b!2467501 (= b_free!71159 (not b_next!71863))))

(declare-fun tp!787362 () Bool)

(declare-fun b_and!186695 () Bool)

(assert (=> b!2467501 (= tp!787362 b_and!186695)))

(declare-fun b!2467505 () Bool)

(declare-fun b_free!71161 () Bool)

(declare-fun b_next!71865 () Bool)

(assert (=> b!2467505 (= b_free!71161 (not b_next!71865))))

(declare-fun tp!787364 () Bool)

(declare-fun b_and!186697 () Bool)

(assert (=> b!2467505 (= tp!787364 b_and!186697)))

(declare-fun b_free!71163 () Bool)

(declare-fun b_next!71867 () Bool)

(assert (=> b!2467505 (= b_free!71163 (not b_next!71867))))

(declare-fun tp!787356 () Bool)

(declare-fun b_and!186699 () Bool)

(assert (=> b!2467505 (= tp!787356 b_and!186699)))

(declare-fun b!2467519 () Bool)

(declare-fun b_free!71165 () Bool)

(declare-fun b_next!71869 () Bool)

(assert (=> b!2467519 (= b_free!71165 (not b_next!71869))))

(declare-fun tp!787369 () Bool)

(declare-fun b_and!186701 () Bool)

(assert (=> b!2467519 (= tp!787369 b_and!186701)))

(declare-fun b_free!71167 () Bool)

(declare-fun b_next!71871 () Bool)

(assert (=> b!2467519 (= b_free!71167 (not b_next!71871))))

(declare-fun tp!787367 () Bool)

(declare-fun b_and!186703 () Bool)

(assert (=> b!2467519 (= tp!787367 b_and!186703)))

(declare-fun b!2467507 () Bool)

(declare-fun b_free!71169 () Bool)

(declare-fun b_next!71873 () Bool)

(assert (=> b!2467507 (= b_free!71169 (not b_next!71873))))

(declare-fun tp!787358 () Bool)

(declare-fun b_and!186705 () Bool)

(assert (=> b!2467507 (= tp!787358 b_and!186705)))

(declare-fun b_free!71171 () Bool)

(declare-fun b_next!71875 () Bool)

(assert (=> b!2467507 (= b_free!71171 (not b_next!71875))))

(declare-fun tp!787353 () Bool)

(declare-fun b_and!186707 () Bool)

(assert (=> b!2467507 (= tp!787353 b_and!186707)))

(declare-fun b!2467493 () Bool)

(declare-fun res!1045155 () Bool)

(declare-fun e!1565083 () Bool)

(assert (=> b!2467493 (=> (not res!1045155) (not e!1565083))))

(declare-datatypes ((LexerInterface!4076 0))(
  ( (LexerInterfaceExt!4073 (__x!18585 Int)) (Lexer!4074) )
))
(declare-fun thiss!27932 () LexerInterface!4076)

(declare-datatypes ((List!28863 0))(
  ( (Nil!28763) (Cons!28763 (h!34164 (_ BitVec 16)) (t!209526 List!28863)) )
))
(declare-datatypes ((TokenValue!4665 0))(
  ( (FloatLiteralValue!9330 (text!33100 List!28863)) (TokenValueExt!4664 (__x!18586 Int)) (Broken!23325 (value!143031 List!28863)) (Object!4764) (End!4665) (Def!4665) (Underscore!4665) (Match!4665) (Else!4665) (Error!4665) (Case!4665) (If!4665) (Extends!4665) (Abstract!4665) (Class!4665) (Val!4665) (DelimiterValue!9330 (del!4725 List!28863)) (KeywordValue!4671 (value!143032 List!28863)) (CommentValue!9330 (value!143033 List!28863)) (WhitespaceValue!9330 (value!143034 List!28863)) (IndentationValue!4665 (value!143035 List!28863)) (String!31620) (Int32!4665) (Broken!23326 (value!143036 List!28863)) (Boolean!4666) (Unit!42093) (OperatorValue!4668 (op!4725 List!28863)) (IdentifierValue!9330 (value!143037 List!28863)) (IdentifierValue!9331 (value!143038 List!28863)) (WhitespaceValue!9331 (value!143039 List!28863)) (True!9330) (False!9330) (Broken!23327 (value!143040 List!28863)) (Broken!23328 (value!143041 List!28863)) (True!9331) (RightBrace!4665) (RightBracket!4665) (Colon!4665) (Null!4665) (Comma!4665) (LeftBracket!4665) (False!9331) (LeftBrace!4665) (ImaginaryLiteralValue!4665 (text!33101 List!28863)) (StringLiteralValue!13995 (value!143042 List!28863)) (EOFValue!4665 (value!143043 List!28863)) (IdentValue!4665 (value!143044 List!28863)) (DelimiterValue!9331 (value!143045 List!28863)) (DedentValue!4665 (value!143046 List!28863)) (NewLineValue!4665 (value!143047 List!28863)) (IntegerValue!13995 (value!143048 (_ BitVec 32)) (text!33102 List!28863)) (IntegerValue!13996 (value!143049 Int) (text!33103 List!28863)) (Times!4665) (Or!4665) (Equal!4665) (Minus!4665) (Broken!23329 (value!143050 List!28863)) (And!4665) (Div!4665) (LessEqual!4665) (Mod!4665) (Concat!11932) (Not!4665) (Plus!4665) (SpaceValue!4665 (value!143051 List!28863)) (IntegerValue!13997 (value!143052 Int) (text!33104 List!28863)) (StringLiteralValue!13996 (text!33105 List!28863)) (FloatLiteralValue!9331 (text!33106 List!28863)) (BytesLiteralValue!4665 (value!143053 List!28863)) (CommentValue!9331 (value!143054 List!28863)) (StringLiteralValue!13997 (value!143055 List!28863)) (ErrorTokenValue!4665 (msg!4726 List!28863)) )
))
(declare-datatypes ((C!14692 0))(
  ( (C!14693 (val!8606 Int)) )
))
(declare-datatypes ((List!28864 0))(
  ( (Nil!28764) (Cons!28764 (h!34165 C!14692) (t!209527 List!28864)) )
))
(declare-datatypes ((IArray!18387 0))(
  ( (IArray!18388 (innerList!9251 List!28864)) )
))
(declare-datatypes ((Conc!9191 0))(
  ( (Node!9191 (left!22073 Conc!9191) (right!22403 Conc!9191) (csize!18612 Int) (cheight!9402 Int)) (Leaf!13738 (xs!12171 IArray!18387) (csize!18613 Int)) (Empty!9191) )
))
(declare-datatypes ((BalanceConc!17996 0))(
  ( (BalanceConc!17997 (c!393330 Conc!9191)) )
))
(declare-datatypes ((Regex!7267 0))(
  ( (ElementMatch!7267 (c!393331 C!14692)) (Concat!11933 (regOne!15046 Regex!7267) (regTwo!15046 Regex!7267)) (EmptyExpr!7267) (Star!7267 (reg!7596 Regex!7267)) (EmptyLang!7267) (Union!7267 (regOne!15047 Regex!7267) (regTwo!15047 Regex!7267)) )
))
(declare-datatypes ((String!31621 0))(
  ( (String!31622 (value!143056 String)) )
))
(declare-datatypes ((TokenValueInjection!8830 0))(
  ( (TokenValueInjection!8831 (toValue!6339 Int) (toChars!6198 Int)) )
))
(declare-datatypes ((Rule!8758 0))(
  ( (Rule!8759 (regex!4479 Regex!7267) (tag!4969 String!31621) (isSeparator!4479 Bool) (transformation!4479 TokenValueInjection!8830)) )
))
(declare-datatypes ((List!28865 0))(
  ( (Nil!28765) (Cons!28765 (h!34166 Rule!8758) (t!209528 List!28865)) )
))
(declare-fun rules!4472 () List!28865)

(declare-datatypes ((Token!8428 0))(
  ( (Token!8429 (value!143057 TokenValue!4665) (rule!6837 Rule!8758) (size!22379 Int) (originalCharacters!5245 List!28864)) )
))
(declare-datatypes ((List!28866 0))(
  ( (Nil!28766) (Cons!28766 (h!34167 Token!8428) (t!209529 List!28866)) )
))
(declare-fun l!6611 () List!28866)

(declare-fun rulesProduceEachTokenIndividuallyList!1392 (LexerInterface!4076 List!28865 List!28866) Bool)

(assert (=> b!2467493 (= res!1045155 (rulesProduceEachTokenIndividuallyList!1392 thiss!27932 rules!4472 l!6611))))

(declare-fun b!2467494 () Bool)

(declare-fun e!1565081 () Bool)

(declare-fun t2!67 () Token!8428)

(declare-fun t1!67 () Token!8428)

(declare-fun separableTokensPredicate!853 (LexerInterface!4076 Token!8428 Token!8428 List!28865) Bool)

(assert (=> b!2467494 (= e!1565081 (separableTokensPredicate!853 thiss!27932 t1!67 t2!67 rules!4472))))

(declare-fun b!2467495 () Bool)

(declare-fun res!1045159 () Bool)

(assert (=> b!2467495 (=> (not res!1045159) (not e!1565083))))

(declare-fun isEmpty!16709 (List!28865) Bool)

(assert (=> b!2467495 (= res!1045159 (not (isEmpty!16709 rules!4472)))))

(declare-fun b!2467496 () Bool)

(declare-fun e!1565099 () Bool)

(assert (=> b!2467496 (= e!1565099 (not true))))

(declare-datatypes ((Unit!42094 0))(
  ( (Unit!42095) )
))
(declare-fun lt!882510 () Unit!42094)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!669 (LexerInterface!4076 List!28865 List!28866 Token!8428) Unit!42094)

(assert (=> b!2467496 (= lt!882510 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!669 thiss!27932 rules!4472 l!6611 t2!67))))

(declare-fun lt!882507 () Unit!42094)

(assert (=> b!2467496 (= lt!882507 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!669 thiss!27932 rules!4472 l!6611 t1!67))))

(assert (=> b!2467496 e!1565081))

(declare-fun res!1045152 () Bool)

(assert (=> b!2467496 (=> (not res!1045152) (not e!1565081))))

(declare-fun rulesProduceIndividualToken!1808 (LexerInterface!4076 List!28865 Token!8428) Bool)

(assert (=> b!2467496 (= res!1045152 (rulesProduceIndividualToken!1808 thiss!27932 rules!4472 t2!67))))

(declare-fun lt!882511 () List!28866)

(declare-fun lt!882512 () Unit!42094)

(assert (=> b!2467496 (= lt!882512 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!669 thiss!27932 rules!4472 lt!882511 t2!67))))

(assert (=> b!2467496 (rulesProduceIndividualToken!1808 thiss!27932 rules!4472 t1!67)))

(declare-fun lt!882506 () Unit!42094)

(assert (=> b!2467496 (= lt!882506 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!669 thiss!27932 rules!4472 lt!882511 t1!67))))

(declare-fun lt!882509 () Unit!42094)

(declare-fun i!1803 () Int)

(declare-fun tokensListTwoByTwoPredicateInstantiateSeparableTokens!6 (LexerInterface!4076 List!28866 List!28865 Token!8428 Token!8428 Int) Unit!42094)

(assert (=> b!2467496 (= lt!882509 (tokensListTwoByTwoPredicateInstantiateSeparableTokens!6 thiss!27932 lt!882511 rules!4472 t1!67 t2!67 (- i!1803 1)))))

(declare-fun b!2467497 () Bool)

(declare-fun res!1045166 () Bool)

(assert (=> b!2467497 (=> (not res!1045166) (not e!1565099))))

(declare-fun apply!6767 (List!28866 Int) Token!8428)

(assert (=> b!2467497 (= res!1045166 (= (apply!6767 lt!882511 (- i!1803 1)) t1!67))))

(declare-fun b!2467498 () Bool)

(declare-fun e!1565087 () Bool)

(assert (=> b!2467498 (= e!1565083 e!1565087)))

(declare-fun res!1045153 () Bool)

(assert (=> b!2467498 (=> (not res!1045153) (not e!1565087))))

(assert (=> b!2467498 (= res!1045153 (rulesProduceEachTokenIndividuallyList!1392 thiss!27932 rules!4472 lt!882511))))

(declare-fun tail!3912 (List!28866) List!28866)

(assert (=> b!2467498 (= lt!882511 (tail!3912 l!6611))))

(declare-fun tp!787359 () Bool)

(declare-fun b!2467499 () Bool)

(declare-fun e!1565085 () Bool)

(declare-fun e!1565100 () Bool)

(declare-fun inv!21 (TokenValue!4665) Bool)

(assert (=> b!2467499 (= e!1565085 (and (inv!21 (value!143057 t2!67)) e!1565100 tp!787359))))

(declare-fun b!2467500 () Bool)

(assert (=> b!2467500 (= e!1565087 e!1565099)))

(declare-fun res!1045160 () Bool)

(assert (=> b!2467500 (=> (not res!1045160) (not e!1565099))))

(declare-fun lt!882508 () Int)

(declare-fun size!22380 (List!28866) Int)

(assert (=> b!2467500 (= res!1045160 (< lt!882508 (size!22380 lt!882511)))))

(assert (=> b!2467500 (= lt!882508 (+ 1 (- i!1803 1)))))

(declare-fun e!1565090 () Bool)

(assert (=> b!2467501 (= e!1565090 (and tp!787355 tp!787362))))

(declare-fun b!2467502 () Bool)

(declare-fun res!1045164 () Bool)

(assert (=> b!2467502 (=> (not res!1045164) (not e!1565083))))

(assert (=> b!2467502 (= res!1045164 (not (= i!1803 0)))))

(declare-fun b!2467503 () Bool)

(declare-fun res!1045158 () Bool)

(assert (=> b!2467503 (=> (not res!1045158) (not e!1565083))))

(assert (=> b!2467503 (= res!1045158 (= (apply!6767 l!6611 i!1803) t1!67))))

(declare-fun tp!787365 () Bool)

(declare-fun b!2467504 () Bool)

(declare-fun e!1565102 () Bool)

(declare-fun e!1565089 () Bool)

(declare-fun inv!38847 (String!31621) Bool)

(declare-fun inv!38850 (TokenValueInjection!8830) Bool)

(assert (=> b!2467504 (= e!1565102 (and tp!787365 (inv!38847 (tag!4969 (rule!6837 (h!34167 l!6611)))) (inv!38850 (transformation!4479 (rule!6837 (h!34167 l!6611)))) e!1565089))))

(declare-fun e!1565091 () Bool)

(assert (=> b!2467505 (= e!1565091 (and tp!787364 tp!787356))))

(declare-fun b!2467506 () Bool)

(declare-fun res!1045163 () Bool)

(assert (=> b!2467506 (=> (not res!1045163) (not e!1565083))))

(assert (=> b!2467506 (= res!1045163 (>= i!1803 0))))

(declare-fun e!1565096 () Bool)

(assert (=> b!2467507 (= e!1565096 (and tp!787358 tp!787353))))

(declare-fun b!2467508 () Bool)

(declare-fun tp!787357 () Bool)

(assert (=> b!2467508 (= e!1565100 (and tp!787357 (inv!38847 (tag!4969 (rule!6837 t2!67))) (inv!38850 (transformation!4479 (rule!6837 t2!67))) e!1565090))))

(declare-fun b!2467509 () Bool)

(declare-fun e!1565101 () Bool)

(declare-fun tp!787360 () Bool)

(assert (=> b!2467509 (= e!1565101 (and (inv!21 (value!143057 (h!34167 l!6611))) e!1565102 tp!787360))))

(declare-fun b!2467510 () Bool)

(declare-fun res!1045165 () Bool)

(assert (=> b!2467510 (=> (not res!1045165) (not e!1565087))))

(assert (=> b!2467510 (= res!1045165 (>= (- i!1803 1) 0))))

(declare-fun e!1565097 () Bool)

(declare-fun tp!787363 () Bool)

(declare-fun b!2467511 () Bool)

(assert (=> b!2467511 (= e!1565097 (and tp!787363 (inv!38847 (tag!4969 (rule!6837 t1!67))) (inv!38850 (transformation!4479 (rule!6837 t1!67))) e!1565091))))

(declare-fun b!2467512 () Bool)

(declare-fun res!1045162 () Bool)

(assert (=> b!2467512 (=> (not res!1045162) (not e!1565087))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!615 (LexerInterface!4076 List!28866 List!28865) Bool)

(assert (=> b!2467512 (= res!1045162 (tokensListTwoByTwoPredicateSeparableList!615 thiss!27932 lt!882511 rules!4472))))

(declare-fun b!2467513 () Bool)

(declare-fun res!1045156 () Bool)

(assert (=> b!2467513 (=> (not res!1045156) (not e!1565083))))

(assert (=> b!2467513 (= res!1045156 (< (+ 1 i!1803) (size!22380 l!6611)))))

(declare-fun b!2467514 () Bool)

(declare-fun res!1045157 () Bool)

(assert (=> b!2467514 (=> (not res!1045157) (not e!1565083))))

(assert (=> b!2467514 (= res!1045157 (tokensListTwoByTwoPredicateSeparableList!615 thiss!27932 l!6611 rules!4472))))

(declare-fun b!2467515 () Bool)

(declare-fun res!1045167 () Bool)

(assert (=> b!2467515 (=> (not res!1045167) (not e!1565099))))

(assert (=> b!2467515 (= res!1045167 (= (apply!6767 lt!882511 lt!882508) t2!67))))

(declare-fun e!1565086 () Bool)

(declare-fun b!2467516 () Bool)

(declare-fun tp!787368 () Bool)

(assert (=> b!2467516 (= e!1565086 (and (inv!21 (value!143057 t1!67)) e!1565097 tp!787368))))

(declare-fun res!1045151 () Bool)

(assert (=> start!240602 (=> (not res!1045151) (not e!1565083))))

(get-info :version)

(assert (=> start!240602 (= res!1045151 ((_ is Lexer!4074) thiss!27932))))

(assert (=> start!240602 e!1565083))

(assert (=> start!240602 true))

(declare-fun e!1565104 () Bool)

(assert (=> start!240602 e!1565104))

(declare-fun inv!38851 (Token!8428) Bool)

(assert (=> start!240602 (and (inv!38851 t2!67) e!1565085)))

(declare-fun e!1565093 () Bool)

(assert (=> start!240602 e!1565093))

(assert (=> start!240602 (and (inv!38851 t1!67) e!1565086)))

(declare-fun b!2467517 () Bool)

(declare-fun res!1045161 () Bool)

(assert (=> b!2467517 (=> (not res!1045161) (not e!1565083))))

(assert (=> b!2467517 (= res!1045161 (= (apply!6767 l!6611 (+ 1 i!1803)) t2!67))))

(declare-fun b!2467518 () Bool)

(declare-fun res!1045154 () Bool)

(assert (=> b!2467518 (=> (not res!1045154) (not e!1565083))))

(declare-fun rulesInvariant!3576 (LexerInterface!4076 List!28865) Bool)

(assert (=> b!2467518 (= res!1045154 (rulesInvariant!3576 thiss!27932 rules!4472))))

(assert (=> b!2467519 (= e!1565089 (and tp!787369 tp!787367))))

(declare-fun tp!787361 () Bool)

(declare-fun b!2467520 () Bool)

(assert (=> b!2467520 (= e!1565093 (and (inv!38851 (h!34167 l!6611)) e!1565101 tp!787361))))

(declare-fun b!2467521 () Bool)

(declare-fun e!1565094 () Bool)

(declare-fun tp!787366 () Bool)

(assert (=> b!2467521 (= e!1565094 (and tp!787366 (inv!38847 (tag!4969 (h!34166 rules!4472))) (inv!38850 (transformation!4479 (h!34166 rules!4472))) e!1565096))))

(declare-fun b!2467522 () Bool)

(declare-fun tp!787354 () Bool)

(assert (=> b!2467522 (= e!1565104 (and e!1565094 tp!787354))))

(assert (= (and start!240602 res!1045151) b!2467495))

(assert (= (and b!2467495 res!1045159) b!2467518))

(assert (= (and b!2467518 res!1045154) b!2467493))

(assert (= (and b!2467493 res!1045155) b!2467514))

(assert (= (and b!2467514 res!1045157) b!2467506))

(assert (= (and b!2467506 res!1045163) b!2467513))

(assert (= (and b!2467513 res!1045156) b!2467503))

(assert (= (and b!2467503 res!1045158) b!2467517))

(assert (= (and b!2467517 res!1045161) b!2467502))

(assert (= (and b!2467502 res!1045164) b!2467498))

(assert (= (and b!2467498 res!1045153) b!2467512))

(assert (= (and b!2467512 res!1045162) b!2467510))

(assert (= (and b!2467510 res!1045165) b!2467500))

(assert (= (and b!2467500 res!1045160) b!2467497))

(assert (= (and b!2467497 res!1045166) b!2467515))

(assert (= (and b!2467515 res!1045167) b!2467496))

(assert (= (and b!2467496 res!1045152) b!2467494))

(assert (= b!2467521 b!2467507))

(assert (= b!2467522 b!2467521))

(assert (= (and start!240602 ((_ is Cons!28765) rules!4472)) b!2467522))

(assert (= b!2467508 b!2467501))

(assert (= b!2467499 b!2467508))

(assert (= start!240602 b!2467499))

(assert (= b!2467504 b!2467519))

(assert (= b!2467509 b!2467504))

(assert (= b!2467520 b!2467509))

(assert (= (and start!240602 ((_ is Cons!28766) l!6611)) b!2467520))

(assert (= b!2467511 b!2467505))

(assert (= b!2467516 b!2467511))

(assert (= start!240602 b!2467516))

(declare-fun m!2836645 () Bool)

(assert (=> b!2467504 m!2836645))

(declare-fun m!2836647 () Bool)

(assert (=> b!2467504 m!2836647))

(declare-fun m!2836649 () Bool)

(assert (=> b!2467503 m!2836649))

(declare-fun m!2836651 () Bool)

(assert (=> b!2467500 m!2836651))

(declare-fun m!2836653 () Bool)

(assert (=> b!2467509 m!2836653))

(declare-fun m!2836655 () Bool)

(assert (=> b!2467495 m!2836655))

(declare-fun m!2836657 () Bool)

(assert (=> b!2467511 m!2836657))

(declare-fun m!2836659 () Bool)

(assert (=> b!2467511 m!2836659))

(declare-fun m!2836661 () Bool)

(assert (=> b!2467512 m!2836661))

(declare-fun m!2836663 () Bool)

(assert (=> b!2467498 m!2836663))

(declare-fun m!2836665 () Bool)

(assert (=> b!2467498 m!2836665))

(declare-fun m!2836667 () Bool)

(assert (=> b!2467508 m!2836667))

(declare-fun m!2836669 () Bool)

(assert (=> b!2467508 m!2836669))

(declare-fun m!2836671 () Bool)

(assert (=> b!2467518 m!2836671))

(declare-fun m!2836673 () Bool)

(assert (=> b!2467497 m!2836673))

(declare-fun m!2836675 () Bool)

(assert (=> b!2467513 m!2836675))

(declare-fun m!2836677 () Bool)

(assert (=> b!2467499 m!2836677))

(declare-fun m!2836679 () Bool)

(assert (=> b!2467520 m!2836679))

(declare-fun m!2836681 () Bool)

(assert (=> b!2467514 m!2836681))

(declare-fun m!2836683 () Bool)

(assert (=> b!2467494 m!2836683))

(declare-fun m!2836685 () Bool)

(assert (=> b!2467521 m!2836685))

(declare-fun m!2836687 () Bool)

(assert (=> b!2467521 m!2836687))

(declare-fun m!2836689 () Bool)

(assert (=> b!2467515 m!2836689))

(declare-fun m!2836691 () Bool)

(assert (=> b!2467496 m!2836691))

(declare-fun m!2836693 () Bool)

(assert (=> b!2467496 m!2836693))

(declare-fun m!2836695 () Bool)

(assert (=> b!2467496 m!2836695))

(declare-fun m!2836697 () Bool)

(assert (=> b!2467496 m!2836697))

(declare-fun m!2836699 () Bool)

(assert (=> b!2467496 m!2836699))

(declare-fun m!2836701 () Bool)

(assert (=> b!2467496 m!2836701))

(declare-fun m!2836703 () Bool)

(assert (=> b!2467496 m!2836703))

(declare-fun m!2836705 () Bool)

(assert (=> b!2467517 m!2836705))

(declare-fun m!2836707 () Bool)

(assert (=> b!2467516 m!2836707))

(declare-fun m!2836709 () Bool)

(assert (=> b!2467493 m!2836709))

(declare-fun m!2836711 () Bool)

(assert (=> start!240602 m!2836711))

(declare-fun m!2836713 () Bool)

(assert (=> start!240602 m!2836713))

(check-sat (not b!2467514) (not b!2467516) (not b!2467499) b_and!186693 (not b!2467512) (not b_next!71873) (not b_next!71867) (not b!2467511) (not b!2467509) (not b!2467497) (not b!2467498) (not start!240602) b_and!186701 (not b_next!71865) (not b!2467518) (not b_next!71861) (not b!2467493) b_and!186705 (not b!2467500) (not b_next!71875) (not b_next!71871) b_and!186707 (not b!2467517) (not b!2467503) (not b_next!71863) (not b!2467515) (not b!2467495) (not b!2467508) (not b!2467504) b_and!186695 (not b_next!71869) b_and!186697 b_and!186699 (not b!2467513) (not b!2467496) (not b!2467522) (not b!2467494) (not b!2467521) b_and!186703 (not b!2467520))
(check-sat (not b_next!71861) (not b_next!71863) b_and!186693 (not b_next!71873) (not b_next!71867) b_and!186701 (not b_next!71865) b_and!186703 b_and!186705 (not b_next!71875) (not b_next!71871) b_and!186707 b_and!186695 (not b_next!71869) b_and!186697 b_and!186699)
