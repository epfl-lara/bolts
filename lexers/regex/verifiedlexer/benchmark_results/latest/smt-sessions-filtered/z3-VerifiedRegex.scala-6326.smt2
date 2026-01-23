; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!321234 () Bool)

(assert start!321234)

(declare-fun b!3455313 () Bool)

(declare-fun b_free!89753 () Bool)

(declare-fun b_next!90457 () Bool)

(assert (=> b!3455313 (= b_free!89753 (not b_next!90457))))

(declare-fun tp!1077292 () Bool)

(declare-fun b_and!242835 () Bool)

(assert (=> b!3455313 (= tp!1077292 b_and!242835)))

(declare-fun b_free!89755 () Bool)

(declare-fun b_next!90459 () Bool)

(assert (=> b!3455313 (= b_free!89755 (not b_next!90459))))

(declare-fun tp!1077291 () Bool)

(declare-fun b_and!242837 () Bool)

(assert (=> b!3455313 (= tp!1077291 b_and!242837)))

(declare-fun b!3455341 () Bool)

(declare-fun b_free!89757 () Bool)

(declare-fun b_next!90461 () Bool)

(assert (=> b!3455341 (= b_free!89757 (not b_next!90461))))

(declare-fun tp!1077286 () Bool)

(declare-fun b_and!242839 () Bool)

(assert (=> b!3455341 (= tp!1077286 b_and!242839)))

(declare-fun b_free!89759 () Bool)

(declare-fun b_next!90463 () Bool)

(assert (=> b!3455341 (= b_free!89759 (not b_next!90463))))

(declare-fun tp!1077296 () Bool)

(declare-fun b_and!242841 () Bool)

(assert (=> b!3455341 (= tp!1077296 b_and!242841)))

(declare-fun b!3455318 () Bool)

(declare-fun b_free!89761 () Bool)

(declare-fun b_next!90465 () Bool)

(assert (=> b!3455318 (= b_free!89761 (not b_next!90465))))

(declare-fun tp!1077293 () Bool)

(declare-fun b_and!242843 () Bool)

(assert (=> b!3455318 (= tp!1077293 b_and!242843)))

(declare-fun b_free!89763 () Bool)

(declare-fun b_next!90467 () Bool)

(assert (=> b!3455318 (= b_free!89763 (not b_next!90467))))

(declare-fun tp!1077290 () Bool)

(declare-fun b_and!242845 () Bool)

(assert (=> b!3455318 (= tp!1077290 b_and!242845)))

(declare-fun bs!560029 () Bool)

(declare-fun b!3455345 () Bool)

(declare-fun b!3455317 () Bool)

(assert (= bs!560029 (and b!3455345 b!3455317)))

(declare-fun lambda!121707 () Int)

(declare-fun lambda!121706 () Int)

(assert (=> bs!560029 (not (= lambda!121707 lambda!121706))))

(declare-fun b!3455356 () Bool)

(declare-fun e!2140608 () Bool)

(assert (=> b!3455356 (= e!2140608 true)))

(declare-fun b!3455355 () Bool)

(declare-fun e!2140607 () Bool)

(assert (=> b!3455355 (= e!2140607 e!2140608)))

(declare-fun b!3455354 () Bool)

(declare-fun e!2140606 () Bool)

(assert (=> b!3455354 (= e!2140606 e!2140607)))

(assert (=> b!3455345 e!2140606))

(assert (= b!3455355 b!3455356))

(assert (= b!3455354 b!3455355))

(declare-datatypes ((C!20568 0))(
  ( (C!20569 (val!12332 Int)) )
))
(declare-datatypes ((Regex!10191 0))(
  ( (ElementMatch!10191 (c!591406 C!20568)) (Concat!15853 (regOne!20894 Regex!10191) (regTwo!20894 Regex!10191)) (EmptyExpr!10191) (Star!10191 (reg!10520 Regex!10191)) (EmptyLang!10191) (Union!10191 (regOne!20895 Regex!10191) (regTwo!20895 Regex!10191)) )
))
(declare-datatypes ((List!37256 0))(
  ( (Nil!37132) (Cons!37132 (h!42552 (_ BitVec 16)) (t!272285 List!37256)) )
))
(declare-datatypes ((TokenValue!5662 0))(
  ( (FloatLiteralValue!11324 (text!40079 List!37256)) (TokenValueExt!5661 (__x!23541 Int)) (Broken!28310 (value!175246 List!37256)) (Object!5785) (End!5662) (Def!5662) (Underscore!5662) (Match!5662) (Else!5662) (Error!5662) (Case!5662) (If!5662) (Extends!5662) (Abstract!5662) (Class!5662) (Val!5662) (DelimiterValue!11324 (del!5722 List!37256)) (KeywordValue!5668 (value!175247 List!37256)) (CommentValue!11324 (value!175248 List!37256)) (WhitespaceValue!11324 (value!175249 List!37256)) (IndentationValue!5662 (value!175250 List!37256)) (String!41643) (Int32!5662) (Broken!28311 (value!175251 List!37256)) (Boolean!5663) (Unit!52461) (OperatorValue!5665 (op!5722 List!37256)) (IdentifierValue!11324 (value!175252 List!37256)) (IdentifierValue!11325 (value!175253 List!37256)) (WhitespaceValue!11325 (value!175254 List!37256)) (True!11324) (False!11324) (Broken!28312 (value!175255 List!37256)) (Broken!28313 (value!175256 List!37256)) (True!11325) (RightBrace!5662) (RightBracket!5662) (Colon!5662) (Null!5662) (Comma!5662) (LeftBracket!5662) (False!11325) (LeftBrace!5662) (ImaginaryLiteralValue!5662 (text!40080 List!37256)) (StringLiteralValue!16986 (value!175257 List!37256)) (EOFValue!5662 (value!175258 List!37256)) (IdentValue!5662 (value!175259 List!37256)) (DelimiterValue!11325 (value!175260 List!37256)) (DedentValue!5662 (value!175261 List!37256)) (NewLineValue!5662 (value!175262 List!37256)) (IntegerValue!16986 (value!175263 (_ BitVec 32)) (text!40081 List!37256)) (IntegerValue!16987 (value!175264 Int) (text!40082 List!37256)) (Times!5662) (Or!5662) (Equal!5662) (Minus!5662) (Broken!28314 (value!175265 List!37256)) (And!5662) (Div!5662) (LessEqual!5662) (Mod!5662) (Concat!15854) (Not!5662) (Plus!5662) (SpaceValue!5662 (value!175266 List!37256)) (IntegerValue!16988 (value!175267 Int) (text!40083 List!37256)) (StringLiteralValue!16987 (text!40084 List!37256)) (FloatLiteralValue!11325 (text!40085 List!37256)) (BytesLiteralValue!5662 (value!175268 List!37256)) (CommentValue!11325 (value!175269 List!37256)) (StringLiteralValue!16988 (value!175270 List!37256)) (ErrorTokenValue!5662 (msg!5723 List!37256)) )
))
(declare-datatypes ((List!37257 0))(
  ( (Nil!37133) (Cons!37133 (h!42553 C!20568) (t!272286 List!37257)) )
))
(declare-datatypes ((IArray!22483 0))(
  ( (IArray!22484 (innerList!11299 List!37257)) )
))
(declare-datatypes ((Conc!11239 0))(
  ( (Node!11239 (left!28969 Conc!11239) (right!29299 Conc!11239) (csize!22708 Int) (cheight!11450 Int)) (Leaf!17566 (xs!14413 IArray!22483) (csize!22709 Int)) (Empty!11239) )
))
(declare-datatypes ((BalanceConc!22092 0))(
  ( (BalanceConc!22093 (c!591407 Conc!11239)) )
))
(declare-datatypes ((String!41644 0))(
  ( (String!41645 (value!175271 String)) )
))
(declare-datatypes ((TokenValueInjection!10752 0))(
  ( (TokenValueInjection!10753 (toValue!7656 Int) (toChars!7515 Int)) )
))
(declare-datatypes ((Rule!10664 0))(
  ( (Rule!10665 (regex!5432 Regex!10191) (tag!6036 String!41644) (isSeparator!5432 Bool) (transformation!5432 TokenValueInjection!10752)) )
))
(declare-datatypes ((List!37258 0))(
  ( (Nil!37134) (Cons!37134 (h!42554 Rule!10664) (t!272287 List!37258)) )
))
(declare-fun rules!2135 () List!37258)

(get-info :version)

(assert (= (and b!3455345 ((_ is Cons!37134) rules!2135)) b!3455354))

(declare-fun order!19749 () Int)

(declare-fun order!19751 () Int)

(declare-fun dynLambda!15618 (Int Int) Int)

(declare-fun dynLambda!15619 (Int Int) Int)

(assert (=> b!3455356 (< (dynLambda!15618 order!19749 (toValue!7656 (transformation!5432 (h!42554 rules!2135)))) (dynLambda!15619 order!19751 lambda!121707))))

(declare-fun order!19753 () Int)

(declare-fun dynLambda!15620 (Int Int) Int)

(assert (=> b!3455356 (< (dynLambda!15620 order!19753 (toChars!7515 (transformation!5432 (h!42554 rules!2135)))) (dynLambda!15619 order!19751 lambda!121707))))

(assert (=> b!3455345 true))

(declare-datatypes ((Token!10230 0))(
  ( (Token!10231 (value!175272 TokenValue!5662) (rule!8018 Rule!10664) (size!28155 Int) (originalCharacters!6146 List!37257)) )
))
(declare-datatypes ((List!37259 0))(
  ( (Nil!37135) (Cons!37135 (h!42555 Token!10230) (t!272288 List!37259)) )
))
(declare-fun tokens!494 () List!37259)

(declare-fun b!3455308 () Bool)

(declare-fun e!2140582 () Bool)

(declare-fun tp!1077295 () Bool)

(declare-fun e!2140590 () Bool)

(declare-fun inv!50298 (Token!10230) Bool)

(assert (=> b!3455308 (= e!2140590 (and (inv!50298 (h!42555 tokens!494)) e!2140582 tp!1077295))))

(declare-fun b!3455309 () Bool)

(declare-datatypes ((Unit!52462 0))(
  ( (Unit!52463) )
))
(declare-fun e!2140577 () Unit!52462)

(declare-fun Unit!52464 () Unit!52462)

(assert (=> b!3455309 (= e!2140577 Unit!52464)))

(declare-fun res!1393777 () Bool)

(declare-fun e!2140576 () Bool)

(assert (=> start!321234 (=> (not res!1393777) (not e!2140576))))

(declare-datatypes ((LexerInterface!5021 0))(
  ( (LexerInterfaceExt!5018 (__x!23542 Int)) (Lexer!5019) )
))
(declare-fun thiss!18206 () LexerInterface!5021)

(assert (=> start!321234 (= res!1393777 ((_ is Lexer!5019) thiss!18206))))

(assert (=> start!321234 e!2140576))

(assert (=> start!321234 true))

(declare-fun e!2140587 () Bool)

(assert (=> start!321234 e!2140587))

(assert (=> start!321234 e!2140590))

(declare-fun separatorToken!241 () Token!10230)

(declare-fun e!2140594 () Bool)

(assert (=> start!321234 (and (inv!50298 separatorToken!241) e!2140594)))

(declare-fun b!3455310 () Bool)

(declare-fun e!2140581 () Bool)

(assert (=> b!3455310 (= e!2140576 (not e!2140581))))

(declare-fun res!1393772 () Bool)

(assert (=> b!3455310 (=> res!1393772 e!2140581)))

(declare-fun lt!1173677 () List!37257)

(declare-fun lt!1173693 () List!37257)

(assert (=> b!3455310 (= res!1393772 (not (= lt!1173677 lt!1173693)))))

(declare-fun printList!1569 (LexerInterface!5021 List!37259) List!37257)

(assert (=> b!3455310 (= lt!1173693 (printList!1569 thiss!18206 (Cons!37135 (h!42555 tokens!494) Nil!37135)))))

(declare-fun lt!1173694 () BalanceConc!22092)

(declare-fun list!13511 (BalanceConc!22092) List!37257)

(assert (=> b!3455310 (= lt!1173677 (list!13511 lt!1173694))))

(declare-datatypes ((IArray!22485 0))(
  ( (IArray!22486 (innerList!11300 List!37259)) )
))
(declare-datatypes ((Conc!11240 0))(
  ( (Node!11240 (left!28970 Conc!11240) (right!29300 Conc!11240) (csize!22710 Int) (cheight!11451 Int)) (Leaf!17567 (xs!14414 IArray!22485) (csize!22711 Int)) (Empty!11240) )
))
(declare-datatypes ((BalanceConc!22094 0))(
  ( (BalanceConc!22095 (c!591408 Conc!11240)) )
))
(declare-fun lt!1173699 () BalanceConc!22094)

(declare-fun printTailRec!1516 (LexerInterface!5021 BalanceConc!22094 Int BalanceConc!22092) BalanceConc!22092)

(assert (=> b!3455310 (= lt!1173694 (printTailRec!1516 thiss!18206 lt!1173699 0 (BalanceConc!22093 Empty!11239)))))

(declare-fun print!2086 (LexerInterface!5021 BalanceConc!22094) BalanceConc!22092)

(assert (=> b!3455310 (= lt!1173694 (print!2086 thiss!18206 lt!1173699))))

(declare-fun singletonSeq!2528 (Token!10230) BalanceConc!22094)

(assert (=> b!3455310 (= lt!1173699 (singletonSeq!2528 (h!42555 tokens!494)))))

(declare-fun b!3455311 () Bool)

(declare-fun e!2140591 () Bool)

(assert (=> b!3455311 (= e!2140591 false)))

(declare-fun b!3455312 () Bool)

(declare-fun res!1393773 () Bool)

(declare-fun e!2140579 () Bool)

(assert (=> b!3455312 (=> (not res!1393773) (not e!2140579))))

(declare-datatypes ((tuple2!36836 0))(
  ( (tuple2!36837 (_1!21552 BalanceConc!22094) (_2!21552 BalanceConc!22092)) )
))
(declare-fun lt!1173678 () tuple2!36836)

(declare-fun apply!8726 (BalanceConc!22094 Int) Token!10230)

(assert (=> b!3455312 (= res!1393773 (= (apply!8726 (_1!21552 lt!1173678) 0) separatorToken!241))))

(declare-fun e!2140585 () Bool)

(assert (=> b!3455313 (= e!2140585 (and tp!1077292 tp!1077291))))

(declare-fun e!2140583 () Bool)

(declare-fun b!3455314 () Bool)

(declare-fun tp!1077288 () Bool)

(declare-fun inv!21 (TokenValue!5662) Bool)

(assert (=> b!3455314 (= e!2140594 (and (inv!21 (value!175272 separatorToken!241)) e!2140583 tp!1077288))))

(declare-fun b!3455315 () Bool)

(declare-fun Unit!52465 () Unit!52462)

(assert (=> b!3455315 (= e!2140577 Unit!52465)))

(declare-fun lt!1173706 () C!20568)

(declare-fun lt!1173702 () List!37257)

(declare-fun lt!1173708 () Unit!52462)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!490 (Regex!10191 List!37257 C!20568) Unit!52462)

(assert (=> b!3455315 (= lt!1173708 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!490 (regex!5432 (rule!8018 separatorToken!241)) lt!1173702 lt!1173706))))

(declare-fun res!1393792 () Bool)

(declare-fun matchR!4775 (Regex!10191 List!37257) Bool)

(assert (=> b!3455315 (= res!1393792 (not (matchR!4775 (regex!5432 (rule!8018 separatorToken!241)) lt!1173702)))))

(assert (=> b!3455315 (=> (not res!1393792) (not e!2140591))))

(assert (=> b!3455315 e!2140591))

(declare-fun b!3455316 () Bool)

(declare-fun res!1393787 () Bool)

(assert (=> b!3455316 (=> (not res!1393787) (not e!2140576))))

(declare-fun rulesInvariant!4418 (LexerInterface!5021 List!37258) Bool)

(assert (=> b!3455316 (= res!1393787 (rulesInvariant!4418 thiss!18206 rules!2135))))

(declare-fun res!1393771 () Bool)

(assert (=> b!3455317 (=> (not res!1393771) (not e!2140576))))

(declare-fun forall!7907 (List!37259 Int) Bool)

(assert (=> b!3455317 (= res!1393771 (forall!7907 tokens!494 lambda!121706))))

(declare-fun e!2140570 () Bool)

(assert (=> b!3455318 (= e!2140570 (and tp!1077293 tp!1077290))))

(declare-fun b!3455319 () Bool)

(declare-fun res!1393784 () Bool)

(assert (=> b!3455319 (=> (not res!1393784) (not e!2140576))))

(assert (=> b!3455319 (= res!1393784 (and (not ((_ is Nil!37135) tokens!494)) (not ((_ is Nil!37135) (t!272288 tokens!494)))))))

(declare-fun b!3455320 () Bool)

(declare-fun res!1393789 () Bool)

(assert (=> b!3455320 (=> (not res!1393789) (not e!2140576))))

(declare-fun rulesProduceIndividualToken!2513 (LexerInterface!5021 List!37258 Token!10230) Bool)

(assert (=> b!3455320 (= res!1393789 (rulesProduceIndividualToken!2513 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3455321 () Bool)

(declare-fun e!2140575 () Bool)

(assert (=> b!3455321 (= e!2140581 e!2140575)))

(declare-fun res!1393793 () Bool)

(assert (=> b!3455321 (=> res!1393793 e!2140575)))

(declare-fun lt!1173692 () List!37257)

(assert (=> b!3455321 (= res!1393793 (or (not (= lt!1173693 lt!1173692)) (not (= lt!1173677 lt!1173692))))))

(declare-fun charsOf!3446 (Token!10230) BalanceConc!22092)

(assert (=> b!3455321 (= lt!1173692 (list!13511 (charsOf!3446 (h!42555 tokens!494))))))

(declare-fun b!3455322 () Bool)

(declare-fun res!1393776 () Bool)

(declare-fun e!2140596 () Bool)

(assert (=> b!3455322 (=> (not res!1393776) (not e!2140596))))

(declare-fun lt!1173687 () tuple2!36836)

(assert (=> b!3455322 (= res!1393776 (= (apply!8726 (_1!21552 lt!1173687) 0) (h!42555 (t!272288 tokens!494))))))

(declare-fun b!3455323 () Bool)

(declare-fun e!2140572 () Bool)

(declare-fun tp!1077297 () Bool)

(assert (=> b!3455323 (= e!2140587 (and e!2140572 tp!1077297))))

(declare-fun b!3455324 () Bool)

(declare-fun e!2140580 () Bool)

(declare-fun tp!1077298 () Bool)

(assert (=> b!3455324 (= e!2140582 (and (inv!21 (value!175272 (h!42555 tokens!494))) e!2140580 tp!1077298))))

(declare-fun tp!1077294 () Bool)

(declare-fun b!3455325 () Bool)

(declare-fun inv!50295 (String!41644) Bool)

(declare-fun inv!50299 (TokenValueInjection!10752) Bool)

(assert (=> b!3455325 (= e!2140583 (and tp!1077294 (inv!50295 (tag!6036 (rule!8018 separatorToken!241))) (inv!50299 (transformation!5432 (rule!8018 separatorToken!241))) e!2140570))))

(declare-fun b!3455326 () Bool)

(declare-fun e!2140595 () Bool)

(declare-fun e!2140593 () Bool)

(assert (=> b!3455326 (= e!2140595 e!2140593)))

(declare-fun res!1393781 () Bool)

(assert (=> b!3455326 (=> (not res!1393781) (not e!2140593))))

(declare-fun lt!1173682 () Rule!10664)

(assert (=> b!3455326 (= res!1393781 (matchR!4775 (regex!5432 lt!1173682) lt!1173692))))

(declare-datatypes ((Option!7511 0))(
  ( (None!7510) (Some!7510 (v!36810 Rule!10664)) )
))
(declare-fun lt!1173696 () Option!7511)

(declare-fun get!11879 (Option!7511) Rule!10664)

(assert (=> b!3455326 (= lt!1173682 (get!11879 lt!1173696))))

(declare-fun b!3455327 () Bool)

(declare-fun e!2140569 () Bool)

(assert (=> b!3455327 (= e!2140575 e!2140569)))

(declare-fun res!1393790 () Bool)

(assert (=> b!3455327 (=> res!1393790 e!2140569)))

(declare-fun lt!1173689 () BalanceConc!22092)

(declare-fun isEmpty!21465 (BalanceConc!22094) Bool)

(declare-fun lex!2347 (LexerInterface!5021 List!37258 BalanceConc!22092) tuple2!36836)

(assert (=> b!3455327 (= res!1393790 (isEmpty!21465 (_1!21552 (lex!2347 thiss!18206 rules!2135 lt!1173689))))))

(declare-fun seqFromList!3917 (List!37257) BalanceConc!22092)

(assert (=> b!3455327 (= lt!1173689 (seqFromList!3917 lt!1173692))))

(declare-fun e!2140586 () Bool)

(declare-fun b!3455328 () Bool)

(declare-fun tp!1077287 () Bool)

(assert (=> b!3455328 (= e!2140580 (and tp!1077287 (inv!50295 (tag!6036 (rule!8018 (h!42555 tokens!494)))) (inv!50299 (transformation!5432 (rule!8018 (h!42555 tokens!494)))) e!2140586))))

(declare-fun b!3455329 () Bool)

(declare-fun e!2140573 () Bool)

(declare-fun e!2140574 () Bool)

(assert (=> b!3455329 (= e!2140573 e!2140574)))

(declare-fun res!1393788 () Bool)

(assert (=> b!3455329 (=> res!1393788 e!2140574)))

(declare-fun lt!1173695 () List!37257)

(declare-fun ++!9147 (List!37257 List!37257) List!37257)

(declare-fun printWithSeparatorTokenList!308 (LexerInterface!5021 List!37259 Token!10230) List!37257)

(assert (=> b!3455329 (= res!1393788 (not (= lt!1173695 (++!9147 (++!9147 (list!13511 (charsOf!3446 (h!42555 (t!272288 tokens!494)))) lt!1173702) (printWithSeparatorTokenList!308 thiss!18206 (t!272288 (t!272288 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1173691 () List!37257)

(assert (=> b!3455329 (= lt!1173691 (++!9147 lt!1173702 lt!1173695))))

(assert (=> b!3455329 (= lt!1173702 (list!13511 (charsOf!3446 separatorToken!241)))))

(assert (=> b!3455329 (= lt!1173695 (printWithSeparatorTokenList!308 thiss!18206 (t!272288 tokens!494) separatorToken!241))))

(declare-fun lt!1173683 () List!37257)

(assert (=> b!3455329 (= lt!1173683 (printWithSeparatorTokenList!308 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3455330 () Bool)

(declare-fun e!2140599 () Bool)

(declare-fun e!2140592 () Bool)

(assert (=> b!3455330 (= e!2140599 e!2140592)))

(declare-fun res!1393778 () Bool)

(assert (=> b!3455330 (=> res!1393778 e!2140592)))

(declare-fun lt!1173679 () List!37257)

(assert (=> b!3455330 (= res!1393778 (not (= lt!1173683 lt!1173679)))))

(declare-fun lt!1173703 () List!37257)

(assert (=> b!3455330 (= lt!1173703 lt!1173679)))

(assert (=> b!3455330 (= lt!1173679 (++!9147 lt!1173692 lt!1173691))))

(declare-fun lt!1173686 () Unit!52462)

(declare-fun lemmaConcatAssociativity!1950 (List!37257 List!37257 List!37257) Unit!52462)

(assert (=> b!3455330 (= lt!1173686 (lemmaConcatAssociativity!1950 lt!1173692 lt!1173702 lt!1173695))))

(declare-fun b!3455331 () Bool)

(declare-fun e!2140584 () Bool)

(declare-fun e!2140578 () Bool)

(assert (=> b!3455331 (= e!2140584 e!2140578)))

(declare-fun res!1393775 () Bool)

(assert (=> b!3455331 (=> (not res!1393775) (not e!2140578))))

(declare-fun lt!1173710 () Rule!10664)

(assert (=> b!3455331 (= res!1393775 (matchR!4775 (regex!5432 lt!1173710) lt!1173702))))

(declare-fun lt!1173680 () Option!7511)

(assert (=> b!3455331 (= lt!1173710 (get!11879 lt!1173680))))

(declare-fun b!3455332 () Bool)

(declare-fun res!1393780 () Bool)

(assert (=> b!3455332 (=> (not res!1393780) (not e!2140576))))

(declare-fun sepAndNonSepRulesDisjointChars!1626 (List!37258 List!37258) Bool)

(assert (=> b!3455332 (= res!1393780 (sepAndNonSepRulesDisjointChars!1626 rules!2135 rules!2135))))

(declare-fun b!3455333 () Bool)

(declare-fun res!1393779 () Bool)

(assert (=> b!3455333 (=> (not res!1393779) (not e!2140576))))

(declare-fun isEmpty!21466 (List!37258) Bool)

(assert (=> b!3455333 (= res!1393779 (not (isEmpty!21466 rules!2135)))))

(declare-fun b!3455334 () Bool)

(declare-fun res!1393782 () Bool)

(assert (=> b!3455334 (=> (not res!1393782) (not e!2140576))))

(assert (=> b!3455334 (= res!1393782 (isSeparator!5432 (rule!8018 separatorToken!241)))))

(declare-fun b!3455335 () Bool)

(declare-fun isEmpty!21467 (BalanceConc!22092) Bool)

(assert (=> b!3455335 (= e!2140596 (isEmpty!21467 (_2!21552 lt!1173687)))))

(declare-fun b!3455336 () Bool)

(assert (=> b!3455336 (= e!2140578 (= (rule!8018 separatorToken!241) lt!1173710))))

(declare-fun b!3455337 () Bool)

(declare-fun res!1393770 () Bool)

(assert (=> b!3455337 (=> (not res!1393770) (not e!2140576))))

(declare-fun rulesProduceEachTokenIndividually!1472 (LexerInterface!5021 List!37258 BalanceConc!22094) Bool)

(declare-fun seqFromList!3918 (List!37259) BalanceConc!22094)

(assert (=> b!3455337 (= res!1393770 (rulesProduceEachTokenIndividually!1472 thiss!18206 rules!2135 (seqFromList!3918 tokens!494)))))

(declare-fun b!3455338 () Bool)

(assert (=> b!3455338 (= e!2140593 (= (rule!8018 (h!42555 tokens!494)) lt!1173682))))

(declare-fun b!3455339 () Bool)

(assert (=> b!3455339 (= e!2140574 e!2140599)))

(declare-fun res!1393768 () Bool)

(assert (=> b!3455339 (=> res!1393768 e!2140599)))

(assert (=> b!3455339 (= res!1393768 (not (= lt!1173683 lt!1173703)))))

(assert (=> b!3455339 (= lt!1173703 (++!9147 (++!9147 lt!1173692 lt!1173702) lt!1173695))))

(declare-fun b!3455340 () Bool)

(assert (=> b!3455340 (= e!2140579 (isEmpty!21467 (_2!21552 lt!1173678)))))

(assert (=> b!3455341 (= e!2140586 (and tp!1077286 tp!1077296))))

(declare-fun b!3455342 () Bool)

(assert (=> b!3455342 (= e!2140569 e!2140573)))

(declare-fun res!1393769 () Bool)

(assert (=> b!3455342 (=> res!1393769 e!2140573)))

(assert (=> b!3455342 (= res!1393769 (or (isSeparator!5432 (rule!8018 (h!42555 tokens!494))) (isSeparator!5432 (rule!8018 (h!42555 (t!272288 tokens!494))))))))

(declare-fun lt!1173681 () Unit!52462)

(declare-fun forallContained!1379 (List!37259 Int Token!10230) Unit!52462)

(assert (=> b!3455342 (= lt!1173681 (forallContained!1379 tokens!494 lambda!121706 (h!42555 (t!272288 tokens!494))))))

(declare-fun lt!1173690 () Unit!52462)

(assert (=> b!3455342 (= lt!1173690 (forallContained!1379 tokens!494 lambda!121706 (h!42555 tokens!494)))))

(declare-fun b!3455343 () Bool)

(declare-fun res!1393785 () Bool)

(assert (=> b!3455343 (=> res!1393785 e!2140575)))

(assert (=> b!3455343 (= res!1393785 (not (rulesProduceIndividualToken!2513 thiss!18206 rules!2135 (h!42555 tokens!494))))))

(declare-fun tp!1077289 () Bool)

(declare-fun b!3455344 () Bool)

(assert (=> b!3455344 (= e!2140572 (and tp!1077289 (inv!50295 (tag!6036 (h!42554 rules!2135))) (inv!50299 (transformation!5432 (h!42554 rules!2135))) e!2140585))))

(declare-fun contains!6871 (List!37258 Rule!10664) Bool)

(assert (=> b!3455345 (= e!2140592 (contains!6871 rules!2135 (rule!8018 (h!42555 tokens!494))))))

(declare-fun contains!6872 (List!37257 C!20568) Bool)

(declare-fun usedCharacters!666 (Regex!10191) List!37257)

(assert (=> b!3455345 (not (contains!6872 (usedCharacters!666 (regex!5432 (rule!8018 (h!42555 tokens!494)))) lt!1173706))))

(declare-fun lt!1173698 () Unit!52462)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!232 (LexerInterface!5021 List!37258 List!37258 Rule!10664 Rule!10664 C!20568) Unit!52462)

(assert (=> b!3455345 (= lt!1173698 (lemmaNonSepRuleNotContainsCharContainedInASepRule!232 thiss!18206 rules!2135 rules!2135 (rule!8018 (h!42555 tokens!494)) (rule!8018 separatorToken!241) lt!1173706))))

(declare-fun lt!1173707 () Unit!52462)

(assert (=> b!3455345 (= lt!1173707 (forallContained!1379 tokens!494 lambda!121707 (h!42555 (t!272288 tokens!494))))))

(assert (=> b!3455345 (= (rulesProduceIndividualToken!2513 thiss!18206 rules!2135 (h!42555 (t!272288 tokens!494))) e!2140596)))

(declare-fun res!1393791 () Bool)

(assert (=> b!3455345 (=> (not res!1393791) (not e!2140596))))

(declare-fun size!28156 (BalanceConc!22094) Int)

(assert (=> b!3455345 (= res!1393791 (= (size!28156 (_1!21552 lt!1173687)) 1))))

(declare-fun lt!1173705 () BalanceConc!22092)

(assert (=> b!3455345 (= lt!1173687 (lex!2347 thiss!18206 rules!2135 lt!1173705))))

(declare-fun lt!1173685 () BalanceConc!22094)

(assert (=> b!3455345 (= lt!1173705 (printTailRec!1516 thiss!18206 lt!1173685 0 (BalanceConc!22093 Empty!11239)))))

(assert (=> b!3455345 (= lt!1173705 (print!2086 thiss!18206 lt!1173685))))

(assert (=> b!3455345 (= lt!1173685 (singletonSeq!2528 (h!42555 (t!272288 tokens!494))))))

(assert (=> b!3455345 e!2140579))

(declare-fun res!1393783 () Bool)

(assert (=> b!3455345 (=> (not res!1393783) (not e!2140579))))

(assert (=> b!3455345 (= res!1393783 (= (size!28156 (_1!21552 lt!1173678)) 1))))

(declare-fun lt!1173697 () BalanceConc!22092)

(assert (=> b!3455345 (= lt!1173678 (lex!2347 thiss!18206 rules!2135 lt!1173697))))

(declare-fun lt!1173709 () BalanceConc!22094)

(assert (=> b!3455345 (= lt!1173697 (printTailRec!1516 thiss!18206 lt!1173709 0 (BalanceConc!22093 Empty!11239)))))

(assert (=> b!3455345 (= lt!1173697 (print!2086 thiss!18206 lt!1173709))))

(assert (=> b!3455345 (= lt!1173709 (singletonSeq!2528 separatorToken!241))))

(declare-fun lt!1173701 () Unit!52462)

(assert (=> b!3455345 (= lt!1173701 e!2140577)))

(declare-fun c!591405 () Bool)

(assert (=> b!3455345 (= c!591405 (not (contains!6872 (usedCharacters!666 (regex!5432 (rule!8018 separatorToken!241))) lt!1173706)))))

(declare-fun head!7307 (List!37257) C!20568)

(assert (=> b!3455345 (= lt!1173706 (head!7307 lt!1173702))))

(assert (=> b!3455345 e!2140584))

(declare-fun res!1393786 () Bool)

(assert (=> b!3455345 (=> (not res!1393786) (not e!2140584))))

(declare-fun isDefined!5786 (Option!7511) Bool)

(assert (=> b!3455345 (= res!1393786 (isDefined!5786 lt!1173680))))

(declare-fun getRuleFromTag!1075 (LexerInterface!5021 List!37258 String!41644) Option!7511)

(assert (=> b!3455345 (= lt!1173680 (getRuleFromTag!1075 thiss!18206 rules!2135 (tag!6036 (rule!8018 separatorToken!241))))))

(declare-fun lt!1173688 () Unit!52462)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1075 (LexerInterface!5021 List!37258 List!37257 Token!10230) Unit!52462)

(assert (=> b!3455345 (= lt!1173688 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1075 thiss!18206 rules!2135 lt!1173702 separatorToken!241))))

(declare-datatypes ((tuple2!36838 0))(
  ( (tuple2!36839 (_1!21553 Token!10230) (_2!21553 List!37257)) )
))
(declare-datatypes ((Option!7512 0))(
  ( (None!7511) (Some!7511 (v!36811 tuple2!36838)) )
))
(declare-fun maxPrefixOneRule!1728 (LexerInterface!5021 Rule!10664 List!37257) Option!7512)

(declare-fun apply!8727 (TokenValueInjection!10752 BalanceConc!22092) TokenValue!5662)

(declare-fun size!28157 (List!37257) Int)

(assert (=> b!3455345 (= (maxPrefixOneRule!1728 thiss!18206 (rule!8018 (h!42555 tokens!494)) lt!1173692) (Some!7511 (tuple2!36839 (Token!10231 (apply!8727 (transformation!5432 (rule!8018 (h!42555 tokens!494))) lt!1173689) (rule!8018 (h!42555 tokens!494)) (size!28157 lt!1173692) lt!1173692) Nil!37133)))))

(declare-fun lt!1173700 () Unit!52462)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!821 (LexerInterface!5021 List!37258 List!37257 List!37257 List!37257 Rule!10664) Unit!52462)

(assert (=> b!3455345 (= lt!1173700 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!821 thiss!18206 rules!2135 lt!1173692 lt!1173692 Nil!37133 (rule!8018 (h!42555 tokens!494))))))

(assert (=> b!3455345 e!2140595))

(declare-fun res!1393774 () Bool)

(assert (=> b!3455345 (=> (not res!1393774) (not e!2140595))))

(assert (=> b!3455345 (= res!1393774 (isDefined!5786 lt!1173696))))

(assert (=> b!3455345 (= lt!1173696 (getRuleFromTag!1075 thiss!18206 rules!2135 (tag!6036 (rule!8018 (h!42555 tokens!494)))))))

(declare-fun lt!1173704 () Unit!52462)

(assert (=> b!3455345 (= lt!1173704 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1075 thiss!18206 rules!2135 lt!1173692 (h!42555 tokens!494)))))

(declare-fun lt!1173684 () Unit!52462)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1010 (LexerInterface!5021 List!37258 List!37259 Token!10230) Unit!52462)

(assert (=> b!3455345 (= lt!1173684 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1010 thiss!18206 rules!2135 tokens!494 (h!42555 tokens!494)))))

(assert (= (and start!321234 res!1393777) b!3455333))

(assert (= (and b!3455333 res!1393779) b!3455316))

(assert (= (and b!3455316 res!1393787) b!3455337))

(assert (= (and b!3455337 res!1393770) b!3455320))

(assert (= (and b!3455320 res!1393789) b!3455334))

(assert (= (and b!3455334 res!1393782) b!3455317))

(assert (= (and b!3455317 res!1393771) b!3455332))

(assert (= (and b!3455332 res!1393780) b!3455319))

(assert (= (and b!3455319 res!1393784) b!3455310))

(assert (= (and b!3455310 (not res!1393772)) b!3455321))

(assert (= (and b!3455321 (not res!1393793)) b!3455343))

(assert (= (and b!3455343 (not res!1393785)) b!3455327))

(assert (= (and b!3455327 (not res!1393790)) b!3455342))

(assert (= (and b!3455342 (not res!1393769)) b!3455329))

(assert (= (and b!3455329 (not res!1393788)) b!3455339))

(assert (= (and b!3455339 (not res!1393768)) b!3455330))

(assert (= (and b!3455330 (not res!1393778)) b!3455345))

(assert (= (and b!3455345 res!1393774) b!3455326))

(assert (= (and b!3455326 res!1393781) b!3455338))

(assert (= (and b!3455345 res!1393786) b!3455331))

(assert (= (and b!3455331 res!1393775) b!3455336))

(assert (= (and b!3455345 c!591405) b!3455315))

(assert (= (and b!3455345 (not c!591405)) b!3455309))

(assert (= (and b!3455315 res!1393792) b!3455311))

(assert (= (and b!3455345 res!1393783) b!3455312))

(assert (= (and b!3455312 res!1393773) b!3455340))

(assert (= (and b!3455345 res!1393791) b!3455322))

(assert (= (and b!3455322 res!1393776) b!3455335))

(assert (= b!3455344 b!3455313))

(assert (= b!3455323 b!3455344))

(assert (= (and start!321234 ((_ is Cons!37134) rules!2135)) b!3455323))

(assert (= b!3455328 b!3455341))

(assert (= b!3455324 b!3455328))

(assert (= b!3455308 b!3455324))

(assert (= (and start!321234 ((_ is Cons!37135) tokens!494)) b!3455308))

(assert (= b!3455325 b!3455318))

(assert (= b!3455314 b!3455325))

(assert (= start!321234 b!3455314))

(declare-fun m!3854529 () Bool)

(assert (=> b!3455310 m!3854529))

(declare-fun m!3854531 () Bool)

(assert (=> b!3455310 m!3854531))

(declare-fun m!3854533 () Bool)

(assert (=> b!3455310 m!3854533))

(declare-fun m!3854535 () Bool)

(assert (=> b!3455310 m!3854535))

(declare-fun m!3854537 () Bool)

(assert (=> b!3455310 m!3854537))

(declare-fun m!3854539 () Bool)

(assert (=> b!3455328 m!3854539))

(declare-fun m!3854541 () Bool)

(assert (=> b!3455328 m!3854541))

(declare-fun m!3854543 () Bool)

(assert (=> b!3455316 m!3854543))

(declare-fun m!3854545 () Bool)

(assert (=> b!3455325 m!3854545))

(declare-fun m!3854547 () Bool)

(assert (=> b!3455325 m!3854547))

(declare-fun m!3854549 () Bool)

(assert (=> b!3455322 m!3854549))

(declare-fun m!3854551 () Bool)

(assert (=> b!3455314 m!3854551))

(declare-fun m!3854553 () Bool)

(assert (=> b!3455332 m!3854553))

(declare-fun m!3854555 () Bool)

(assert (=> b!3455345 m!3854555))

(declare-fun m!3854557 () Bool)

(assert (=> b!3455345 m!3854557))

(declare-fun m!3854559 () Bool)

(assert (=> b!3455345 m!3854559))

(declare-fun m!3854561 () Bool)

(assert (=> b!3455345 m!3854561))

(declare-fun m!3854563 () Bool)

(assert (=> b!3455345 m!3854563))

(declare-fun m!3854565 () Bool)

(assert (=> b!3455345 m!3854565))

(declare-fun m!3854567 () Bool)

(assert (=> b!3455345 m!3854567))

(declare-fun m!3854569 () Bool)

(assert (=> b!3455345 m!3854569))

(declare-fun m!3854571 () Bool)

(assert (=> b!3455345 m!3854571))

(declare-fun m!3854573 () Bool)

(assert (=> b!3455345 m!3854573))

(declare-fun m!3854575 () Bool)

(assert (=> b!3455345 m!3854575))

(declare-fun m!3854577 () Bool)

(assert (=> b!3455345 m!3854577))

(declare-fun m!3854579 () Bool)

(assert (=> b!3455345 m!3854579))

(declare-fun m!3854581 () Bool)

(assert (=> b!3455345 m!3854581))

(declare-fun m!3854583 () Bool)

(assert (=> b!3455345 m!3854583))

(declare-fun m!3854585 () Bool)

(assert (=> b!3455345 m!3854585))

(declare-fun m!3854587 () Bool)

(assert (=> b!3455345 m!3854587))

(declare-fun m!3854589 () Bool)

(assert (=> b!3455345 m!3854589))

(assert (=> b!3455345 m!3854561))

(declare-fun m!3854591 () Bool)

(assert (=> b!3455345 m!3854591))

(declare-fun m!3854593 () Bool)

(assert (=> b!3455345 m!3854593))

(declare-fun m!3854595 () Bool)

(assert (=> b!3455345 m!3854595))

(declare-fun m!3854597 () Bool)

(assert (=> b!3455345 m!3854597))

(declare-fun m!3854599 () Bool)

(assert (=> b!3455345 m!3854599))

(declare-fun m!3854601 () Bool)

(assert (=> b!3455345 m!3854601))

(declare-fun m!3854603 () Bool)

(assert (=> b!3455345 m!3854603))

(declare-fun m!3854605 () Bool)

(assert (=> b!3455345 m!3854605))

(declare-fun m!3854607 () Bool)

(assert (=> b!3455345 m!3854607))

(declare-fun m!3854609 () Bool)

(assert (=> b!3455345 m!3854609))

(declare-fun m!3854611 () Bool)

(assert (=> b!3455345 m!3854611))

(declare-fun m!3854613 () Bool)

(assert (=> b!3455345 m!3854613))

(assert (=> b!3455345 m!3854575))

(declare-fun m!3854615 () Bool)

(assert (=> b!3455321 m!3854615))

(assert (=> b!3455321 m!3854615))

(declare-fun m!3854617 () Bool)

(assert (=> b!3455321 m!3854617))

(declare-fun m!3854619 () Bool)

(assert (=> b!3455308 m!3854619))

(declare-fun m!3854621 () Bool)

(assert (=> b!3455333 m!3854621))

(declare-fun m!3854623 () Bool)

(assert (=> b!3455312 m!3854623))

(declare-fun m!3854625 () Bool)

(assert (=> b!3455335 m!3854625))

(declare-fun m!3854627 () Bool)

(assert (=> b!3455340 m!3854627))

(declare-fun m!3854629 () Bool)

(assert (=> b!3455343 m!3854629))

(declare-fun m!3854631 () Bool)

(assert (=> b!3455331 m!3854631))

(declare-fun m!3854633 () Bool)

(assert (=> b!3455331 m!3854633))

(declare-fun m!3854635 () Bool)

(assert (=> b!3455342 m!3854635))

(declare-fun m!3854637 () Bool)

(assert (=> b!3455342 m!3854637))

(declare-fun m!3854639 () Bool)

(assert (=> b!3455315 m!3854639))

(declare-fun m!3854641 () Bool)

(assert (=> b!3455315 m!3854641))

(declare-fun m!3854643 () Bool)

(assert (=> b!3455320 m!3854643))

(declare-fun m!3854645 () Bool)

(assert (=> b!3455344 m!3854645))

(declare-fun m!3854647 () Bool)

(assert (=> b!3455344 m!3854647))

(declare-fun m!3854649 () Bool)

(assert (=> b!3455324 m!3854649))

(declare-fun m!3854651 () Bool)

(assert (=> b!3455327 m!3854651))

(declare-fun m!3854653 () Bool)

(assert (=> b!3455327 m!3854653))

(declare-fun m!3854655 () Bool)

(assert (=> b!3455327 m!3854655))

(declare-fun m!3854657 () Bool)

(assert (=> b!3455337 m!3854657))

(assert (=> b!3455337 m!3854657))

(declare-fun m!3854659 () Bool)

(assert (=> b!3455337 m!3854659))

(declare-fun m!3854661 () Bool)

(assert (=> b!3455329 m!3854661))

(declare-fun m!3854663 () Bool)

(assert (=> b!3455329 m!3854663))

(declare-fun m!3854665 () Bool)

(assert (=> b!3455329 m!3854665))

(declare-fun m!3854667 () Bool)

(assert (=> b!3455329 m!3854667))

(declare-fun m!3854669 () Bool)

(assert (=> b!3455329 m!3854669))

(assert (=> b!3455329 m!3854661))

(declare-fun m!3854671 () Bool)

(assert (=> b!3455329 m!3854671))

(assert (=> b!3455329 m!3854671))

(declare-fun m!3854673 () Bool)

(assert (=> b!3455329 m!3854673))

(declare-fun m!3854675 () Bool)

(assert (=> b!3455329 m!3854675))

(assert (=> b!3455329 m!3854673))

(assert (=> b!3455329 m!3854675))

(declare-fun m!3854677 () Bool)

(assert (=> b!3455329 m!3854677))

(assert (=> b!3455329 m!3854663))

(declare-fun m!3854679 () Bool)

(assert (=> b!3455329 m!3854679))

(declare-fun m!3854681 () Bool)

(assert (=> start!321234 m!3854681))

(declare-fun m!3854683 () Bool)

(assert (=> b!3455326 m!3854683))

(declare-fun m!3854685 () Bool)

(assert (=> b!3455326 m!3854685))

(declare-fun m!3854687 () Bool)

(assert (=> b!3455330 m!3854687))

(declare-fun m!3854689 () Bool)

(assert (=> b!3455330 m!3854689))

(declare-fun m!3854691 () Bool)

(assert (=> b!3455317 m!3854691))

(declare-fun m!3854693 () Bool)

(assert (=> b!3455339 m!3854693))

(assert (=> b!3455339 m!3854693))

(declare-fun m!3854695 () Bool)

(assert (=> b!3455339 m!3854695))

(check-sat (not b!3455320) (not b!3455322) b_and!242837 (not b!3455332) (not b_next!90463) (not b!3455343) (not b!3455329) (not b!3455339) (not b!3455317) b_and!242839 (not b!3455331) (not b!3455333) (not b!3455328) (not b!3455310) (not b!3455342) (not b!3455324) (not b!3455323) (not b!3455345) (not b!3455315) (not b!3455330) b_and!242845 (not b_next!90467) b_and!242843 (not b!3455326) (not b!3455325) (not b_next!90461) (not b!3455337) b_and!242841 (not b!3455321) (not b!3455312) (not b!3455308) (not b!3455316) (not b!3455335) (not b!3455314) (not b!3455340) (not b_next!90457) (not b!3455327) b_and!242835 (not b!3455354) (not b!3455344) (not b_next!90465) (not b_next!90459) (not start!321234))
(check-sat b_and!242839 b_and!242845 (not b_next!90461) b_and!242837 (not b_next!90463) b_and!242841 (not b_next!90457) b_and!242835 (not b_next!90465) (not b_next!90459) (not b_next!90467) b_and!242843)
(get-model)

(declare-fun d!993691 () Bool)

(declare-fun lt!1173766 () Bool)

(declare-fun e!2140655 () Bool)

(assert (=> d!993691 (= lt!1173766 e!2140655)))

(declare-fun res!1393851 () Bool)

(assert (=> d!993691 (=> (not res!1393851) (not e!2140655))))

(declare-fun list!13513 (BalanceConc!22094) List!37259)

(assert (=> d!993691 (= res!1393851 (= (list!13513 (_1!21552 (lex!2347 thiss!18206 rules!2135 (print!2086 thiss!18206 (singletonSeq!2528 separatorToken!241))))) (list!13513 (singletonSeq!2528 separatorToken!241))))))

(declare-fun e!2140656 () Bool)

(assert (=> d!993691 (= lt!1173766 e!2140656)))

(declare-fun res!1393850 () Bool)

(assert (=> d!993691 (=> (not res!1393850) (not e!2140656))))

(declare-fun lt!1173767 () tuple2!36836)

(assert (=> d!993691 (= res!1393850 (= (size!28156 (_1!21552 lt!1173767)) 1))))

(assert (=> d!993691 (= lt!1173767 (lex!2347 thiss!18206 rules!2135 (print!2086 thiss!18206 (singletonSeq!2528 separatorToken!241))))))

(assert (=> d!993691 (not (isEmpty!21466 rules!2135))))

(assert (=> d!993691 (= (rulesProduceIndividualToken!2513 thiss!18206 rules!2135 separatorToken!241) lt!1173766)))

(declare-fun b!3455437 () Bool)

(declare-fun res!1393849 () Bool)

(assert (=> b!3455437 (=> (not res!1393849) (not e!2140656))))

(assert (=> b!3455437 (= res!1393849 (= (apply!8726 (_1!21552 lt!1173767) 0) separatorToken!241))))

(declare-fun b!3455438 () Bool)

(assert (=> b!3455438 (= e!2140656 (isEmpty!21467 (_2!21552 lt!1173767)))))

(declare-fun b!3455439 () Bool)

(assert (=> b!3455439 (= e!2140655 (isEmpty!21467 (_2!21552 (lex!2347 thiss!18206 rules!2135 (print!2086 thiss!18206 (singletonSeq!2528 separatorToken!241))))))))

(assert (= (and d!993691 res!1393850) b!3455437))

(assert (= (and b!3455437 res!1393849) b!3455438))

(assert (= (and d!993691 res!1393851) b!3455439))

(declare-fun m!3854811 () Bool)

(assert (=> d!993691 m!3854811))

(declare-fun m!3854813 () Bool)

(assert (=> d!993691 m!3854813))

(declare-fun m!3854815 () Bool)

(assert (=> d!993691 m!3854815))

(declare-fun m!3854817 () Bool)

(assert (=> d!993691 m!3854817))

(assert (=> d!993691 m!3854621))

(assert (=> d!993691 m!3854585))

(assert (=> d!993691 m!3854811))

(assert (=> d!993691 m!3854585))

(assert (=> d!993691 m!3854585))

(declare-fun m!3854819 () Bool)

(assert (=> d!993691 m!3854819))

(declare-fun m!3854821 () Bool)

(assert (=> b!3455437 m!3854821))

(declare-fun m!3854823 () Bool)

(assert (=> b!3455438 m!3854823))

(assert (=> b!3455439 m!3854585))

(assert (=> b!3455439 m!3854585))

(assert (=> b!3455439 m!3854811))

(assert (=> b!3455439 m!3854811))

(assert (=> b!3455439 m!3854813))

(declare-fun m!3854825 () Bool)

(assert (=> b!3455439 m!3854825))

(assert (=> b!3455320 d!993691))

(declare-fun d!993707 () Bool)

(declare-fun dynLambda!15621 (Int Token!10230) Bool)

(assert (=> d!993707 (dynLambda!15621 lambda!121706 (h!42555 (t!272288 tokens!494)))))

(declare-fun lt!1173770 () Unit!52462)

(declare-fun choose!19963 (List!37259 Int Token!10230) Unit!52462)

(assert (=> d!993707 (= lt!1173770 (choose!19963 tokens!494 lambda!121706 (h!42555 (t!272288 tokens!494))))))

(declare-fun e!2140659 () Bool)

(assert (=> d!993707 e!2140659))

(declare-fun res!1393854 () Bool)

(assert (=> d!993707 (=> (not res!1393854) (not e!2140659))))

(assert (=> d!993707 (= res!1393854 (forall!7907 tokens!494 lambda!121706))))

(assert (=> d!993707 (= (forallContained!1379 tokens!494 lambda!121706 (h!42555 (t!272288 tokens!494))) lt!1173770)))

(declare-fun b!3455442 () Bool)

(declare-fun contains!6873 (List!37259 Token!10230) Bool)

(assert (=> b!3455442 (= e!2140659 (contains!6873 tokens!494 (h!42555 (t!272288 tokens!494))))))

(assert (= (and d!993707 res!1393854) b!3455442))

(declare-fun b_lambda!99311 () Bool)

(assert (=> (not b_lambda!99311) (not d!993707)))

(declare-fun m!3854827 () Bool)

(assert (=> d!993707 m!3854827))

(declare-fun m!3854829 () Bool)

(assert (=> d!993707 m!3854829))

(assert (=> d!993707 m!3854691))

(declare-fun m!3854831 () Bool)

(assert (=> b!3455442 m!3854831))

(assert (=> b!3455342 d!993707))

(declare-fun d!993709 () Bool)

(assert (=> d!993709 (dynLambda!15621 lambda!121706 (h!42555 tokens!494))))

(declare-fun lt!1173771 () Unit!52462)

(assert (=> d!993709 (= lt!1173771 (choose!19963 tokens!494 lambda!121706 (h!42555 tokens!494)))))

(declare-fun e!2140660 () Bool)

(assert (=> d!993709 e!2140660))

(declare-fun res!1393855 () Bool)

(assert (=> d!993709 (=> (not res!1393855) (not e!2140660))))

(assert (=> d!993709 (= res!1393855 (forall!7907 tokens!494 lambda!121706))))

(assert (=> d!993709 (= (forallContained!1379 tokens!494 lambda!121706 (h!42555 tokens!494)) lt!1173771)))

(declare-fun b!3455443 () Bool)

(assert (=> b!3455443 (= e!2140660 (contains!6873 tokens!494 (h!42555 tokens!494)))))

(assert (= (and d!993709 res!1393855) b!3455443))

(declare-fun b_lambda!99313 () Bool)

(assert (=> (not b_lambda!99313) (not d!993709)))

(declare-fun m!3854833 () Bool)

(assert (=> d!993709 m!3854833))

(declare-fun m!3854835 () Bool)

(assert (=> d!993709 m!3854835))

(assert (=> d!993709 m!3854691))

(declare-fun m!3854837 () Bool)

(assert (=> b!3455443 m!3854837))

(assert (=> b!3455342 d!993709))

(declare-fun d!993711 () Bool)

(declare-fun list!13514 (Conc!11239) List!37257)

(assert (=> d!993711 (= (list!13511 (charsOf!3446 (h!42555 tokens!494))) (list!13514 (c!591407 (charsOf!3446 (h!42555 tokens!494)))))))

(declare-fun bs!560033 () Bool)

(assert (= bs!560033 d!993711))

(declare-fun m!3854839 () Bool)

(assert (=> bs!560033 m!3854839))

(assert (=> b!3455321 d!993711))

(declare-fun d!993713 () Bool)

(declare-fun lt!1173774 () BalanceConc!22092)

(assert (=> d!993713 (= (list!13511 lt!1173774) (originalCharacters!6146 (h!42555 tokens!494)))))

(declare-fun dynLambda!15622 (Int TokenValue!5662) BalanceConc!22092)

(assert (=> d!993713 (= lt!1173774 (dynLambda!15622 (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494)))) (value!175272 (h!42555 tokens!494))))))

(assert (=> d!993713 (= (charsOf!3446 (h!42555 tokens!494)) lt!1173774)))

(declare-fun b_lambda!99315 () Bool)

(assert (=> (not b_lambda!99315) (not d!993713)))

(declare-fun t!272292 () Bool)

(declare-fun tb!188119 () Bool)

(assert (=> (and b!3455313 (= (toChars!7515 (transformation!5432 (h!42554 rules!2135))) (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494))))) t!272292) tb!188119))

(declare-fun b!3455448 () Bool)

(declare-fun e!2140663 () Bool)

(declare-fun tp!1077301 () Bool)

(declare-fun inv!50300 (Conc!11239) Bool)

(assert (=> b!3455448 (= e!2140663 (and (inv!50300 (c!591407 (dynLambda!15622 (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494)))) (value!175272 (h!42555 tokens!494))))) tp!1077301))))

(declare-fun result!232032 () Bool)

(declare-fun inv!50301 (BalanceConc!22092) Bool)

(assert (=> tb!188119 (= result!232032 (and (inv!50301 (dynLambda!15622 (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494)))) (value!175272 (h!42555 tokens!494)))) e!2140663))))

(assert (= tb!188119 b!3455448))

(declare-fun m!3854841 () Bool)

(assert (=> b!3455448 m!3854841))

(declare-fun m!3854843 () Bool)

(assert (=> tb!188119 m!3854843))

(assert (=> d!993713 t!272292))

(declare-fun b_and!242847 () Bool)

(assert (= b_and!242837 (and (=> t!272292 result!232032) b_and!242847)))

(declare-fun t!272294 () Bool)

(declare-fun tb!188121 () Bool)

(assert (=> (and b!3455341 (= (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494)))) (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494))))) t!272294) tb!188121))

(declare-fun result!232036 () Bool)

(assert (= result!232036 result!232032))

(assert (=> d!993713 t!272294))

(declare-fun b_and!242849 () Bool)

(assert (= b_and!242841 (and (=> t!272294 result!232036) b_and!242849)))

(declare-fun tb!188123 () Bool)

(declare-fun t!272296 () Bool)

(assert (=> (and b!3455318 (= (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241))) (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494))))) t!272296) tb!188123))

(declare-fun result!232038 () Bool)

(assert (= result!232038 result!232032))

(assert (=> d!993713 t!272296))

(declare-fun b_and!242851 () Bool)

(assert (= b_and!242845 (and (=> t!272296 result!232038) b_and!242851)))

(declare-fun m!3854845 () Bool)

(assert (=> d!993713 m!3854845))

(declare-fun m!3854847 () Bool)

(assert (=> d!993713 m!3854847))

(assert (=> b!3455321 d!993713))

(declare-fun d!993715 () Bool)

(declare-fun lt!1173777 () Bool)

(declare-fun isEmpty!21471 (List!37257) Bool)

(assert (=> d!993715 (= lt!1173777 (isEmpty!21471 (list!13511 (_2!21552 lt!1173678))))))

(declare-fun isEmpty!21472 (Conc!11239) Bool)

(assert (=> d!993715 (= lt!1173777 (isEmpty!21472 (c!591407 (_2!21552 lt!1173678))))))

(assert (=> d!993715 (= (isEmpty!21467 (_2!21552 lt!1173678)) lt!1173777)))

(declare-fun bs!560034 () Bool)

(assert (= bs!560034 d!993715))

(declare-fun m!3854849 () Bool)

(assert (=> bs!560034 m!3854849))

(assert (=> bs!560034 m!3854849))

(declare-fun m!3854851 () Bool)

(assert (=> bs!560034 m!3854851))

(declare-fun m!3854853 () Bool)

(assert (=> bs!560034 m!3854853))

(assert (=> b!3455340 d!993715))

(declare-fun d!993717 () Bool)

(assert (=> d!993717 (= (inv!50295 (tag!6036 (h!42554 rules!2135))) (= (mod (str.len (value!175271 (tag!6036 (h!42554 rules!2135)))) 2) 0))))

(assert (=> b!3455344 d!993717))

(declare-fun d!993719 () Bool)

(declare-fun res!1393864 () Bool)

(declare-fun e!2140672 () Bool)

(assert (=> d!993719 (=> (not res!1393864) (not e!2140672))))

(declare-fun semiInverseModEq!2278 (Int Int) Bool)

(assert (=> d!993719 (= res!1393864 (semiInverseModEq!2278 (toChars!7515 (transformation!5432 (h!42554 rules!2135))) (toValue!7656 (transformation!5432 (h!42554 rules!2135)))))))

(assert (=> d!993719 (= (inv!50299 (transformation!5432 (h!42554 rules!2135))) e!2140672)))

(declare-fun b!3455461 () Bool)

(declare-fun equivClasses!2177 (Int Int) Bool)

(assert (=> b!3455461 (= e!2140672 (equivClasses!2177 (toChars!7515 (transformation!5432 (h!42554 rules!2135))) (toValue!7656 (transformation!5432 (h!42554 rules!2135)))))))

(assert (= (and d!993719 res!1393864) b!3455461))

(declare-fun m!3854855 () Bool)

(assert (=> d!993719 m!3854855))

(declare-fun m!3854857 () Bool)

(assert (=> b!3455461 m!3854857))

(assert (=> b!3455344 d!993719))

(declare-fun d!993721 () Bool)

(declare-fun isEmpty!21473 (Option!7511) Bool)

(assert (=> d!993721 (= (isDefined!5786 lt!1173696) (not (isEmpty!21473 lt!1173696)))))

(declare-fun bs!560035 () Bool)

(assert (= bs!560035 d!993721))

(declare-fun m!3854859 () Bool)

(assert (=> bs!560035 m!3854859))

(assert (=> b!3455345 d!993721))

(declare-fun d!993723 () Bool)

(assert (=> d!993723 (= (isDefined!5786 lt!1173680) (not (isEmpty!21473 lt!1173680)))))

(declare-fun bs!560036 () Bool)

(assert (= bs!560036 d!993723))

(declare-fun m!3854861 () Bool)

(assert (=> bs!560036 m!3854861))

(assert (=> b!3455345 d!993723))

(declare-fun d!993725 () Bool)

(declare-fun lt!1173783 () Int)

(declare-fun size!28159 (List!37259) Int)

(assert (=> d!993725 (= lt!1173783 (size!28159 (list!13513 (_1!21552 lt!1173687))))))

(declare-fun size!28160 (Conc!11240) Int)

(assert (=> d!993725 (= lt!1173783 (size!28160 (c!591408 (_1!21552 lt!1173687))))))

(assert (=> d!993725 (= (size!28156 (_1!21552 lt!1173687)) lt!1173783)))

(declare-fun bs!560037 () Bool)

(assert (= bs!560037 d!993725))

(declare-fun m!3854881 () Bool)

(assert (=> bs!560037 m!3854881))

(assert (=> bs!560037 m!3854881))

(declare-fun m!3854883 () Bool)

(assert (=> bs!560037 m!3854883))

(declare-fun m!3854885 () Bool)

(assert (=> bs!560037 m!3854885))

(assert (=> b!3455345 d!993725))

(declare-fun d!993729 () Bool)

(declare-fun e!2140691 () Bool)

(assert (=> d!993729 e!2140691))

(declare-fun res!1393879 () Bool)

(assert (=> d!993729 (=> (not res!1393879) (not e!2140691))))

(declare-fun lt!1173790 () BalanceConc!22094)

(assert (=> d!993729 (= res!1393879 (= (list!13513 lt!1173790) (Cons!37135 separatorToken!241 Nil!37135)))))

(declare-fun singleton!1116 (Token!10230) BalanceConc!22094)

(assert (=> d!993729 (= lt!1173790 (singleton!1116 separatorToken!241))))

(assert (=> d!993729 (= (singletonSeq!2528 separatorToken!241) lt!1173790)))

(declare-fun b!3455488 () Bool)

(declare-fun isBalanced!3409 (Conc!11240) Bool)

(assert (=> b!3455488 (= e!2140691 (isBalanced!3409 (c!591408 lt!1173790)))))

(assert (= (and d!993729 res!1393879) b!3455488))

(declare-fun m!3854917 () Bool)

(assert (=> d!993729 m!3854917))

(declare-fun m!3854919 () Bool)

(assert (=> d!993729 m!3854919))

(declare-fun m!3854921 () Bool)

(assert (=> b!3455488 m!3854921))

(assert (=> b!3455345 d!993729))

(declare-fun b!3455501 () Bool)

(declare-fun lt!1173799 () Unit!52462)

(declare-fun lt!1173797 () Unit!52462)

(assert (=> b!3455501 (= lt!1173799 lt!1173797)))

(assert (=> b!3455501 (rulesInvariant!4418 thiss!18206 (t!272287 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!428 (LexerInterface!5021 Rule!10664 List!37258) Unit!52462)

(assert (=> b!3455501 (= lt!1173797 (lemmaInvariantOnRulesThenOnTail!428 thiss!18206 (h!42554 rules!2135) (t!272287 rules!2135)))))

(declare-fun e!2140702 () Option!7511)

(assert (=> b!3455501 (= e!2140702 (getRuleFromTag!1075 thiss!18206 (t!272287 rules!2135) (tag!6036 (rule!8018 separatorToken!241))))))

(declare-fun b!3455502 () Bool)

(declare-fun e!2140703 () Bool)

(declare-fun lt!1173798 () Option!7511)

(assert (=> b!3455502 (= e!2140703 (= (tag!6036 (get!11879 lt!1173798)) (tag!6036 (rule!8018 separatorToken!241))))))

(declare-fun d!993737 () Bool)

(declare-fun e!2140700 () Bool)

(assert (=> d!993737 e!2140700))

(declare-fun res!1393884 () Bool)

(assert (=> d!993737 (=> res!1393884 e!2140700)))

(assert (=> d!993737 (= res!1393884 (isEmpty!21473 lt!1173798))))

(declare-fun e!2140701 () Option!7511)

(assert (=> d!993737 (= lt!1173798 e!2140701)))

(declare-fun c!591441 () Bool)

(assert (=> d!993737 (= c!591441 (and ((_ is Cons!37134) rules!2135) (= (tag!6036 (h!42554 rules!2135)) (tag!6036 (rule!8018 separatorToken!241)))))))

(assert (=> d!993737 (rulesInvariant!4418 thiss!18206 rules!2135)))

(assert (=> d!993737 (= (getRuleFromTag!1075 thiss!18206 rules!2135 (tag!6036 (rule!8018 separatorToken!241))) lt!1173798)))

(declare-fun b!3455503 () Bool)

(assert (=> b!3455503 (= e!2140702 None!7510)))

(declare-fun b!3455504 () Bool)

(assert (=> b!3455504 (= e!2140700 e!2140703)))

(declare-fun res!1393885 () Bool)

(assert (=> b!3455504 (=> (not res!1393885) (not e!2140703))))

(assert (=> b!3455504 (= res!1393885 (contains!6871 rules!2135 (get!11879 lt!1173798)))))

(declare-fun b!3455505 () Bool)

(assert (=> b!3455505 (= e!2140701 (Some!7510 (h!42554 rules!2135)))))

(declare-fun b!3455506 () Bool)

(assert (=> b!3455506 (= e!2140701 e!2140702)))

(declare-fun c!591440 () Bool)

(assert (=> b!3455506 (= c!591440 (and ((_ is Cons!37134) rules!2135) (not (= (tag!6036 (h!42554 rules!2135)) (tag!6036 (rule!8018 separatorToken!241))))))))

(assert (= (and d!993737 c!591441) b!3455505))

(assert (= (and d!993737 (not c!591441)) b!3455506))

(assert (= (and b!3455506 c!591440) b!3455501))

(assert (= (and b!3455506 (not c!591440)) b!3455503))

(assert (= (and d!993737 (not res!1393884)) b!3455504))

(assert (= (and b!3455504 res!1393885) b!3455502))

(declare-fun m!3854923 () Bool)

(assert (=> b!3455501 m!3854923))

(declare-fun m!3854925 () Bool)

(assert (=> b!3455501 m!3854925))

(declare-fun m!3854927 () Bool)

(assert (=> b!3455501 m!3854927))

(declare-fun m!3854929 () Bool)

(assert (=> b!3455502 m!3854929))

(declare-fun m!3854931 () Bool)

(assert (=> d!993737 m!3854931))

(assert (=> d!993737 m!3854543))

(assert (=> b!3455504 m!3854929))

(assert (=> b!3455504 m!3854929))

(declare-fun m!3854933 () Bool)

(assert (=> b!3455504 m!3854933))

(assert (=> b!3455345 d!993737))

(declare-fun d!993739 () Bool)

(declare-fun lt!1173802 () BalanceConc!22092)

(assert (=> d!993739 (= (list!13511 lt!1173802) (printList!1569 thiss!18206 (list!13513 lt!1173685)))))

(assert (=> d!993739 (= lt!1173802 (printTailRec!1516 thiss!18206 lt!1173685 0 (BalanceConc!22093 Empty!11239)))))

(assert (=> d!993739 (= (print!2086 thiss!18206 lt!1173685) lt!1173802)))

(declare-fun bs!560038 () Bool)

(assert (= bs!560038 d!993739))

(declare-fun m!3854935 () Bool)

(assert (=> bs!560038 m!3854935))

(declare-fun m!3854937 () Bool)

(assert (=> bs!560038 m!3854937))

(assert (=> bs!560038 m!3854937))

(declare-fun m!3854939 () Bool)

(assert (=> bs!560038 m!3854939))

(assert (=> bs!560038 m!3854563))

(assert (=> b!3455345 d!993739))

(declare-fun d!993741 () Bool)

(declare-fun lt!1173805 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5176 (List!37258) (InoxSet Rule!10664))

(assert (=> d!993741 (= lt!1173805 (select (content!5176 rules!2135) (rule!8018 (h!42555 tokens!494))))))

(declare-fun e!2140709 () Bool)

(assert (=> d!993741 (= lt!1173805 e!2140709)))

(declare-fun res!1393890 () Bool)

(assert (=> d!993741 (=> (not res!1393890) (not e!2140709))))

(assert (=> d!993741 (= res!1393890 ((_ is Cons!37134) rules!2135))))

(assert (=> d!993741 (= (contains!6871 rules!2135 (rule!8018 (h!42555 tokens!494))) lt!1173805)))

(declare-fun b!3455511 () Bool)

(declare-fun e!2140708 () Bool)

(assert (=> b!3455511 (= e!2140709 e!2140708)))

(declare-fun res!1393891 () Bool)

(assert (=> b!3455511 (=> res!1393891 e!2140708)))

(assert (=> b!3455511 (= res!1393891 (= (h!42554 rules!2135) (rule!8018 (h!42555 tokens!494))))))

(declare-fun b!3455512 () Bool)

(assert (=> b!3455512 (= e!2140708 (contains!6871 (t!272287 rules!2135) (rule!8018 (h!42555 tokens!494))))))

(assert (= (and d!993741 res!1393890) b!3455511))

(assert (= (and b!3455511 (not res!1393891)) b!3455512))

(declare-fun m!3854941 () Bool)

(assert (=> d!993741 m!3854941))

(declare-fun m!3854943 () Bool)

(assert (=> d!993741 m!3854943))

(declare-fun m!3854945 () Bool)

(assert (=> b!3455512 m!3854945))

(assert (=> b!3455345 d!993741))

(declare-fun b!3455523 () Bool)

(declare-fun e!2140717 () Bool)

(declare-fun e!2140716 () Bool)

(assert (=> b!3455523 (= e!2140717 e!2140716)))

(declare-fun res!1393900 () Bool)

(declare-fun lt!1173811 () tuple2!36836)

(declare-fun size!28161 (BalanceConc!22092) Int)

(assert (=> b!3455523 (= res!1393900 (< (size!28161 (_2!21552 lt!1173811)) (size!28161 lt!1173705)))))

(assert (=> b!3455523 (=> (not res!1393900) (not e!2140716))))

(declare-fun d!993743 () Bool)

(declare-fun e!2140718 () Bool)

(assert (=> d!993743 e!2140718))

(declare-fun res!1393899 () Bool)

(assert (=> d!993743 (=> (not res!1393899) (not e!2140718))))

(assert (=> d!993743 (= res!1393899 e!2140717)))

(declare-fun c!591444 () Bool)

(assert (=> d!993743 (= c!591444 (> (size!28156 (_1!21552 lt!1173811)) 0))))

(declare-fun lexTailRecV2!1052 (LexerInterface!5021 List!37258 BalanceConc!22092 BalanceConc!22092 BalanceConc!22092 BalanceConc!22094) tuple2!36836)

(assert (=> d!993743 (= lt!1173811 (lexTailRecV2!1052 thiss!18206 rules!2135 lt!1173705 (BalanceConc!22093 Empty!11239) lt!1173705 (BalanceConc!22095 Empty!11240)))))

(assert (=> d!993743 (= (lex!2347 thiss!18206 rules!2135 lt!1173705) lt!1173811)))

(declare-fun b!3455524 () Bool)

(declare-fun res!1393898 () Bool)

(assert (=> b!3455524 (=> (not res!1393898) (not e!2140718))))

(declare-datatypes ((tuple2!36844 0))(
  ( (tuple2!36845 (_1!21556 List!37259) (_2!21556 List!37257)) )
))
(declare-fun lexList!1444 (LexerInterface!5021 List!37258 List!37257) tuple2!36844)

(assert (=> b!3455524 (= res!1393898 (= (list!13513 (_1!21552 lt!1173811)) (_1!21556 (lexList!1444 thiss!18206 rules!2135 (list!13511 lt!1173705)))))))

(declare-fun b!3455525 () Bool)

(assert (=> b!3455525 (= e!2140717 (= (_2!21552 lt!1173811) lt!1173705))))

(declare-fun b!3455526 () Bool)

(assert (=> b!3455526 (= e!2140716 (not (isEmpty!21465 (_1!21552 lt!1173811))))))

(declare-fun b!3455527 () Bool)

(assert (=> b!3455527 (= e!2140718 (= (list!13511 (_2!21552 lt!1173811)) (_2!21556 (lexList!1444 thiss!18206 rules!2135 (list!13511 lt!1173705)))))))

(assert (= (and d!993743 c!591444) b!3455523))

(assert (= (and d!993743 (not c!591444)) b!3455525))

(assert (= (and b!3455523 res!1393900) b!3455526))

(assert (= (and d!993743 res!1393899) b!3455524))

(assert (= (and b!3455524 res!1393898) b!3455527))

(declare-fun m!3854949 () Bool)

(assert (=> b!3455523 m!3854949))

(declare-fun m!3854951 () Bool)

(assert (=> b!3455523 m!3854951))

(declare-fun m!3854953 () Bool)

(assert (=> b!3455526 m!3854953))

(declare-fun m!3854955 () Bool)

(assert (=> b!3455524 m!3854955))

(declare-fun m!3854957 () Bool)

(assert (=> b!3455524 m!3854957))

(assert (=> b!3455524 m!3854957))

(declare-fun m!3854959 () Bool)

(assert (=> b!3455524 m!3854959))

(declare-fun m!3854961 () Bool)

(assert (=> b!3455527 m!3854961))

(assert (=> b!3455527 m!3854957))

(assert (=> b!3455527 m!3854957))

(assert (=> b!3455527 m!3854959))

(declare-fun m!3854963 () Bool)

(assert (=> d!993743 m!3854963))

(declare-fun m!3854965 () Bool)

(assert (=> d!993743 m!3854965))

(assert (=> b!3455345 d!993743))

(declare-fun b!3455528 () Bool)

(declare-fun e!2140720 () Bool)

(declare-fun e!2140719 () Bool)

(assert (=> b!3455528 (= e!2140720 e!2140719)))

(declare-fun res!1393903 () Bool)

(declare-fun lt!1173812 () tuple2!36836)

(assert (=> b!3455528 (= res!1393903 (< (size!28161 (_2!21552 lt!1173812)) (size!28161 lt!1173697)))))

(assert (=> b!3455528 (=> (not res!1393903) (not e!2140719))))

(declare-fun d!993749 () Bool)

(declare-fun e!2140721 () Bool)

(assert (=> d!993749 e!2140721))

(declare-fun res!1393902 () Bool)

(assert (=> d!993749 (=> (not res!1393902) (not e!2140721))))

(assert (=> d!993749 (= res!1393902 e!2140720)))

(declare-fun c!591445 () Bool)

(assert (=> d!993749 (= c!591445 (> (size!28156 (_1!21552 lt!1173812)) 0))))

(assert (=> d!993749 (= lt!1173812 (lexTailRecV2!1052 thiss!18206 rules!2135 lt!1173697 (BalanceConc!22093 Empty!11239) lt!1173697 (BalanceConc!22095 Empty!11240)))))

(assert (=> d!993749 (= (lex!2347 thiss!18206 rules!2135 lt!1173697) lt!1173812)))

(declare-fun b!3455529 () Bool)

(declare-fun res!1393901 () Bool)

(assert (=> b!3455529 (=> (not res!1393901) (not e!2140721))))

(assert (=> b!3455529 (= res!1393901 (= (list!13513 (_1!21552 lt!1173812)) (_1!21556 (lexList!1444 thiss!18206 rules!2135 (list!13511 lt!1173697)))))))

(declare-fun b!3455530 () Bool)

(assert (=> b!3455530 (= e!2140720 (= (_2!21552 lt!1173812) lt!1173697))))

(declare-fun b!3455531 () Bool)

(assert (=> b!3455531 (= e!2140719 (not (isEmpty!21465 (_1!21552 lt!1173812))))))

(declare-fun b!3455532 () Bool)

(assert (=> b!3455532 (= e!2140721 (= (list!13511 (_2!21552 lt!1173812)) (_2!21556 (lexList!1444 thiss!18206 rules!2135 (list!13511 lt!1173697)))))))

(assert (= (and d!993749 c!591445) b!3455528))

(assert (= (and d!993749 (not c!591445)) b!3455530))

(assert (= (and b!3455528 res!1393903) b!3455531))

(assert (= (and d!993749 res!1393902) b!3455529))

(assert (= (and b!3455529 res!1393901) b!3455532))

(declare-fun m!3854967 () Bool)

(assert (=> b!3455528 m!3854967))

(declare-fun m!3854969 () Bool)

(assert (=> b!3455528 m!3854969))

(declare-fun m!3854971 () Bool)

(assert (=> b!3455531 m!3854971))

(declare-fun m!3854973 () Bool)

(assert (=> b!3455529 m!3854973))

(declare-fun m!3854975 () Bool)

(assert (=> b!3455529 m!3854975))

(assert (=> b!3455529 m!3854975))

(declare-fun m!3854977 () Bool)

(assert (=> b!3455529 m!3854977))

(declare-fun m!3854979 () Bool)

(assert (=> b!3455532 m!3854979))

(assert (=> b!3455532 m!3854975))

(assert (=> b!3455532 m!3854975))

(assert (=> b!3455532 m!3854977))

(declare-fun m!3854981 () Bool)

(assert (=> d!993749 m!3854981))

(declare-fun m!3854983 () Bool)

(assert (=> d!993749 m!3854983))

(assert (=> b!3455345 d!993749))

(declare-fun b!3455563 () Bool)

(declare-fun e!2140739 () Option!7512)

(assert (=> b!3455563 (= e!2140739 None!7511)))

(declare-fun d!993751 () Bool)

(declare-fun e!2140740 () Bool)

(assert (=> d!993751 e!2140740))

(declare-fun res!1393929 () Bool)

(assert (=> d!993751 (=> res!1393929 e!2140740)))

(declare-fun lt!1173836 () Option!7512)

(declare-fun isEmpty!21474 (Option!7512) Bool)

(assert (=> d!993751 (= res!1393929 (isEmpty!21474 lt!1173836))))

(assert (=> d!993751 (= lt!1173836 e!2140739)))

(declare-fun c!591449 () Bool)

(declare-datatypes ((tuple2!36846 0))(
  ( (tuple2!36847 (_1!21557 List!37257) (_2!21557 List!37257)) )
))
(declare-fun lt!1173840 () tuple2!36846)

(assert (=> d!993751 (= c!591449 (isEmpty!21471 (_1!21557 lt!1173840)))))

(declare-fun findLongestMatch!820 (Regex!10191 List!37257) tuple2!36846)

(assert (=> d!993751 (= lt!1173840 (findLongestMatch!820 (regex!5432 (rule!8018 (h!42555 tokens!494))) lt!1173692))))

(declare-fun ruleValid!1734 (LexerInterface!5021 Rule!10664) Bool)

(assert (=> d!993751 (ruleValid!1734 thiss!18206 (rule!8018 (h!42555 tokens!494)))))

(assert (=> d!993751 (= (maxPrefixOneRule!1728 thiss!18206 (rule!8018 (h!42555 tokens!494)) lt!1173692) lt!1173836)))

(declare-fun b!3455564 () Bool)

(declare-fun e!2140738 () Bool)

(declare-fun findLongestMatchInner!905 (Regex!10191 List!37257 Int List!37257 List!37257 Int) tuple2!36846)

(assert (=> b!3455564 (= e!2140738 (matchR!4775 (regex!5432 (rule!8018 (h!42555 tokens!494))) (_1!21557 (findLongestMatchInner!905 (regex!5432 (rule!8018 (h!42555 tokens!494))) Nil!37133 (size!28157 Nil!37133) lt!1173692 lt!1173692 (size!28157 lt!1173692)))))))

(declare-fun b!3455565 () Bool)

(declare-fun res!1393933 () Bool)

(declare-fun e!2140741 () Bool)

(assert (=> b!3455565 (=> (not res!1393933) (not e!2140741))))

(declare-fun get!11881 (Option!7512) tuple2!36838)

(assert (=> b!3455565 (= res!1393933 (= (rule!8018 (_1!21553 (get!11881 lt!1173836))) (rule!8018 (h!42555 tokens!494))))))

(declare-fun b!3455566 () Bool)

(assert (=> b!3455566 (= e!2140741 (= (size!28155 (_1!21553 (get!11881 lt!1173836))) (size!28157 (originalCharacters!6146 (_1!21553 (get!11881 lt!1173836))))))))

(declare-fun b!3455567 () Bool)

(declare-fun res!1393932 () Bool)

(assert (=> b!3455567 (=> (not res!1393932) (not e!2140741))))

(assert (=> b!3455567 (= res!1393932 (= (++!9147 (list!13511 (charsOf!3446 (_1!21553 (get!11881 lt!1173836)))) (_2!21553 (get!11881 lt!1173836))) lt!1173692))))

(declare-fun b!3455568 () Bool)

(assert (=> b!3455568 (= e!2140739 (Some!7511 (tuple2!36839 (Token!10231 (apply!8727 (transformation!5432 (rule!8018 (h!42555 tokens!494))) (seqFromList!3917 (_1!21557 lt!1173840))) (rule!8018 (h!42555 tokens!494)) (size!28161 (seqFromList!3917 (_1!21557 lt!1173840))) (_1!21557 lt!1173840)) (_2!21557 lt!1173840))))))

(declare-fun lt!1173837 () Unit!52462)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!878 (Regex!10191 List!37257) Unit!52462)

(assert (=> b!3455568 (= lt!1173837 (longestMatchIsAcceptedByMatchOrIsEmpty!878 (regex!5432 (rule!8018 (h!42555 tokens!494))) lt!1173692))))

(declare-fun res!1393930 () Bool)

(assert (=> b!3455568 (= res!1393930 (isEmpty!21471 (_1!21557 (findLongestMatchInner!905 (regex!5432 (rule!8018 (h!42555 tokens!494))) Nil!37133 (size!28157 Nil!37133) lt!1173692 lt!1173692 (size!28157 lt!1173692)))))))

(assert (=> b!3455568 (=> res!1393930 e!2140738)))

(assert (=> b!3455568 e!2140738))

(declare-fun lt!1173838 () Unit!52462)

(assert (=> b!3455568 (= lt!1173838 lt!1173837)))

(declare-fun lt!1173839 () Unit!52462)

(declare-fun lemmaSemiInverse!1255 (TokenValueInjection!10752 BalanceConc!22092) Unit!52462)

(assert (=> b!3455568 (= lt!1173839 (lemmaSemiInverse!1255 (transformation!5432 (rule!8018 (h!42555 tokens!494))) (seqFromList!3917 (_1!21557 lt!1173840))))))

(declare-fun b!3455569 () Bool)

(declare-fun res!1393934 () Bool)

(assert (=> b!3455569 (=> (not res!1393934) (not e!2140741))))

(assert (=> b!3455569 (= res!1393934 (< (size!28157 (_2!21553 (get!11881 lt!1173836))) (size!28157 lt!1173692)))))

(declare-fun b!3455570 () Bool)

(assert (=> b!3455570 (= e!2140740 e!2140741)))

(declare-fun res!1393928 () Bool)

(assert (=> b!3455570 (=> (not res!1393928) (not e!2140741))))

(assert (=> b!3455570 (= res!1393928 (matchR!4775 (regex!5432 (rule!8018 (h!42555 tokens!494))) (list!13511 (charsOf!3446 (_1!21553 (get!11881 lt!1173836))))))))

(declare-fun b!3455571 () Bool)

(declare-fun res!1393931 () Bool)

(assert (=> b!3455571 (=> (not res!1393931) (not e!2140741))))

(assert (=> b!3455571 (= res!1393931 (= (value!175272 (_1!21553 (get!11881 lt!1173836))) (apply!8727 (transformation!5432 (rule!8018 (_1!21553 (get!11881 lt!1173836)))) (seqFromList!3917 (originalCharacters!6146 (_1!21553 (get!11881 lt!1173836)))))))))

(assert (= (and d!993751 c!591449) b!3455563))

(assert (= (and d!993751 (not c!591449)) b!3455568))

(assert (= (and b!3455568 (not res!1393930)) b!3455564))

(assert (= (and d!993751 (not res!1393929)) b!3455570))

(assert (= (and b!3455570 res!1393928) b!3455567))

(assert (= (and b!3455567 res!1393932) b!3455569))

(assert (= (and b!3455569 res!1393934) b!3455565))

(assert (= (and b!3455565 res!1393933) b!3455571))

(assert (= (and b!3455571 res!1393931) b!3455566))

(declare-fun m!3855033 () Bool)

(assert (=> b!3455567 m!3855033))

(declare-fun m!3855035 () Bool)

(assert (=> b!3455567 m!3855035))

(assert (=> b!3455567 m!3855035))

(declare-fun m!3855037 () Bool)

(assert (=> b!3455567 m!3855037))

(assert (=> b!3455567 m!3855037))

(declare-fun m!3855039 () Bool)

(assert (=> b!3455567 m!3855039))

(declare-fun m!3855041 () Bool)

(assert (=> b!3455564 m!3855041))

(assert (=> b!3455564 m!3854595))

(assert (=> b!3455564 m!3855041))

(assert (=> b!3455564 m!3854595))

(declare-fun m!3855043 () Bool)

(assert (=> b!3455564 m!3855043))

(declare-fun m!3855045 () Bool)

(assert (=> b!3455564 m!3855045))

(assert (=> b!3455569 m!3855033))

(declare-fun m!3855047 () Bool)

(assert (=> b!3455569 m!3855047))

(assert (=> b!3455569 m!3854595))

(assert (=> b!3455565 m!3855033))

(assert (=> b!3455571 m!3855033))

(declare-fun m!3855049 () Bool)

(assert (=> b!3455571 m!3855049))

(assert (=> b!3455571 m!3855049))

(declare-fun m!3855051 () Bool)

(assert (=> b!3455571 m!3855051))

(assert (=> b!3455570 m!3855033))

(assert (=> b!3455570 m!3855035))

(assert (=> b!3455570 m!3855035))

(assert (=> b!3455570 m!3855037))

(assert (=> b!3455570 m!3855037))

(declare-fun m!3855053 () Bool)

(assert (=> b!3455570 m!3855053))

(declare-fun m!3855055 () Bool)

(assert (=> d!993751 m!3855055))

(declare-fun m!3855057 () Bool)

(assert (=> d!993751 m!3855057))

(declare-fun m!3855059 () Bool)

(assert (=> d!993751 m!3855059))

(declare-fun m!3855061 () Bool)

(assert (=> d!993751 m!3855061))

(assert (=> b!3455566 m!3855033))

(declare-fun m!3855063 () Bool)

(assert (=> b!3455566 m!3855063))

(declare-fun m!3855065 () Bool)

(assert (=> b!3455568 m!3855065))

(declare-fun m!3855067 () Bool)

(assert (=> b!3455568 m!3855067))

(declare-fun m!3855069 () Bool)

(assert (=> b!3455568 m!3855069))

(assert (=> b!3455568 m!3855041))

(assert (=> b!3455568 m!3855067))

(declare-fun m!3855071 () Bool)

(assert (=> b!3455568 m!3855071))

(declare-fun m!3855073 () Bool)

(assert (=> b!3455568 m!3855073))

(assert (=> b!3455568 m!3855067))

(assert (=> b!3455568 m!3854595))

(assert (=> b!3455568 m!3855067))

(declare-fun m!3855075 () Bool)

(assert (=> b!3455568 m!3855075))

(assert (=> b!3455568 m!3855041))

(assert (=> b!3455568 m!3854595))

(assert (=> b!3455568 m!3855043))

(assert (=> b!3455345 d!993751))

(declare-fun bm!249286 () Bool)

(declare-fun call!249291 () List!37257)

(declare-fun c!591465 () Bool)

(assert (=> bm!249286 (= call!249291 (usedCharacters!666 (ite c!591465 (regOne!20895 (regex!5432 (rule!8018 separatorToken!241))) (regTwo!20894 (regex!5432 (rule!8018 separatorToken!241))))))))

(declare-fun b!3455606 () Bool)

(declare-fun e!2140763 () List!37257)

(declare-fun e!2140764 () List!37257)

(assert (=> b!3455606 (= e!2140763 e!2140764)))

(assert (=> b!3455606 (= c!591465 ((_ is Union!10191) (regex!5432 (rule!8018 separatorToken!241))))))

(declare-fun b!3455607 () Bool)

(declare-fun call!249294 () List!37257)

(assert (=> b!3455607 (= e!2140764 call!249294)))

(declare-fun bm!249287 () Bool)

(declare-fun call!249293 () List!37257)

(declare-fun c!591464 () Bool)

(assert (=> bm!249287 (= call!249293 (usedCharacters!666 (ite c!591464 (reg!10520 (regex!5432 (rule!8018 separatorToken!241))) (ite c!591465 (regTwo!20895 (regex!5432 (rule!8018 separatorToken!241))) (regOne!20894 (regex!5432 (rule!8018 separatorToken!241)))))))))

(declare-fun bm!249288 () Bool)

(declare-fun call!249292 () List!37257)

(assert (=> bm!249288 (= call!249292 call!249293)))

(declare-fun b!3455608 () Bool)

(assert (=> b!3455608 (= c!591464 ((_ is Star!10191) (regex!5432 (rule!8018 separatorToken!241))))))

(declare-fun e!2140765 () List!37257)

(assert (=> b!3455608 (= e!2140765 e!2140763)))

(declare-fun d!993757 () Bool)

(declare-fun c!591466 () Bool)

(assert (=> d!993757 (= c!591466 (or ((_ is EmptyExpr!10191) (regex!5432 (rule!8018 separatorToken!241))) ((_ is EmptyLang!10191) (regex!5432 (rule!8018 separatorToken!241)))))))

(declare-fun e!2140762 () List!37257)

(assert (=> d!993757 (= (usedCharacters!666 (regex!5432 (rule!8018 separatorToken!241))) e!2140762)))

(declare-fun bm!249289 () Bool)

(assert (=> bm!249289 (= call!249294 (++!9147 (ite c!591465 call!249291 call!249292) (ite c!591465 call!249292 call!249291)))))

(declare-fun b!3455609 () Bool)

(assert (=> b!3455609 (= e!2140764 call!249294)))

(declare-fun b!3455610 () Bool)

(assert (=> b!3455610 (= e!2140762 Nil!37133)))

(declare-fun b!3455611 () Bool)

(assert (=> b!3455611 (= e!2140763 call!249293)))

(declare-fun b!3455612 () Bool)

(assert (=> b!3455612 (= e!2140762 e!2140765)))

(declare-fun c!591467 () Bool)

(assert (=> b!3455612 (= c!591467 ((_ is ElementMatch!10191) (regex!5432 (rule!8018 separatorToken!241))))))

(declare-fun b!3455613 () Bool)

(assert (=> b!3455613 (= e!2140765 (Cons!37133 (c!591406 (regex!5432 (rule!8018 separatorToken!241))) Nil!37133))))

(assert (= (and d!993757 c!591466) b!3455610))

(assert (= (and d!993757 (not c!591466)) b!3455612))

(assert (= (and b!3455612 c!591467) b!3455613))

(assert (= (and b!3455612 (not c!591467)) b!3455608))

(assert (= (and b!3455608 c!591464) b!3455611))

(assert (= (and b!3455608 (not c!591464)) b!3455606))

(assert (= (and b!3455606 c!591465) b!3455609))

(assert (= (and b!3455606 (not c!591465)) b!3455607))

(assert (= (or b!3455609 b!3455607) bm!249288))

(assert (= (or b!3455609 b!3455607) bm!249286))

(assert (= (or b!3455609 b!3455607) bm!249289))

(assert (= (or b!3455611 bm!249288) bm!249287))

(declare-fun m!3855089 () Bool)

(assert (=> bm!249286 m!3855089))

(declare-fun m!3855091 () Bool)

(assert (=> bm!249287 m!3855091))

(declare-fun m!3855093 () Bool)

(assert (=> bm!249289 m!3855093))

(assert (=> b!3455345 d!993757))

(declare-fun d!993761 () Bool)

(assert (=> d!993761 (not (contains!6872 (usedCharacters!666 (regex!5432 (rule!8018 (h!42555 tokens!494)))) lt!1173706))))

(declare-fun lt!1173855 () Unit!52462)

(declare-fun choose!19967 (LexerInterface!5021 List!37258 List!37258 Rule!10664 Rule!10664 C!20568) Unit!52462)

(assert (=> d!993761 (= lt!1173855 (choose!19967 thiss!18206 rules!2135 rules!2135 (rule!8018 (h!42555 tokens!494)) (rule!8018 separatorToken!241) lt!1173706))))

(assert (=> d!993761 (rulesInvariant!4418 thiss!18206 rules!2135)))

(assert (=> d!993761 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!232 thiss!18206 rules!2135 rules!2135 (rule!8018 (h!42555 tokens!494)) (rule!8018 separatorToken!241) lt!1173706) lt!1173855)))

(declare-fun bs!560040 () Bool)

(assert (= bs!560040 d!993761))

(assert (=> bs!560040 m!3854575))

(assert (=> bs!560040 m!3854575))

(assert (=> bs!560040 m!3854577))

(declare-fun m!3855107 () Bool)

(assert (=> bs!560040 m!3855107))

(assert (=> bs!560040 m!3854543))

(assert (=> b!3455345 d!993761))

(declare-fun d!993767 () Bool)

(declare-fun lt!1173883 () BalanceConc!22092)

(declare-fun printListTailRec!684 (LexerInterface!5021 List!37259 List!37257) List!37257)

(declare-fun dropList!1201 (BalanceConc!22094 Int) List!37259)

(assert (=> d!993767 (= (list!13511 lt!1173883) (printListTailRec!684 thiss!18206 (dropList!1201 lt!1173685 0) (list!13511 (BalanceConc!22093 Empty!11239))))))

(declare-fun e!2140780 () BalanceConc!22092)

(assert (=> d!993767 (= lt!1173883 e!2140780)))

(declare-fun c!591476 () Bool)

(assert (=> d!993767 (= c!591476 (>= 0 (size!28156 lt!1173685)))))

(declare-fun e!2140781 () Bool)

(assert (=> d!993767 e!2140781))

(declare-fun res!1393945 () Bool)

(assert (=> d!993767 (=> (not res!1393945) (not e!2140781))))

(assert (=> d!993767 (= res!1393945 (>= 0 0))))

(assert (=> d!993767 (= (printTailRec!1516 thiss!18206 lt!1173685 0 (BalanceConc!22093 Empty!11239)) lt!1173883)))

(declare-fun b!3455634 () Bool)

(assert (=> b!3455634 (= e!2140781 (<= 0 (size!28156 lt!1173685)))))

(declare-fun b!3455635 () Bool)

(assert (=> b!3455635 (= e!2140780 (BalanceConc!22093 Empty!11239))))

(declare-fun b!3455636 () Bool)

(declare-fun ++!9149 (BalanceConc!22092 BalanceConc!22092) BalanceConc!22092)

(assert (=> b!3455636 (= e!2140780 (printTailRec!1516 thiss!18206 lt!1173685 (+ 0 1) (++!9149 (BalanceConc!22093 Empty!11239) (charsOf!3446 (apply!8726 lt!1173685 0)))))))

(declare-fun lt!1173882 () List!37259)

(assert (=> b!3455636 (= lt!1173882 (list!13513 lt!1173685))))

(declare-fun lt!1173880 () Unit!52462)

(declare-fun lemmaDropApply!1159 (List!37259 Int) Unit!52462)

(assert (=> b!3455636 (= lt!1173880 (lemmaDropApply!1159 lt!1173882 0))))

(declare-fun head!7309 (List!37259) Token!10230)

(declare-fun drop!2007 (List!37259 Int) List!37259)

(declare-fun apply!8730 (List!37259 Int) Token!10230)

(assert (=> b!3455636 (= (head!7309 (drop!2007 lt!1173882 0)) (apply!8730 lt!1173882 0))))

(declare-fun lt!1173886 () Unit!52462)

(assert (=> b!3455636 (= lt!1173886 lt!1173880)))

(declare-fun lt!1173884 () List!37259)

(assert (=> b!3455636 (= lt!1173884 (list!13513 lt!1173685))))

(declare-fun lt!1173885 () Unit!52462)

(declare-fun lemmaDropTail!1043 (List!37259 Int) Unit!52462)

(assert (=> b!3455636 (= lt!1173885 (lemmaDropTail!1043 lt!1173884 0))))

(declare-fun tail!5424 (List!37259) List!37259)

(assert (=> b!3455636 (= (tail!5424 (drop!2007 lt!1173884 0)) (drop!2007 lt!1173884 (+ 0 1)))))

(declare-fun lt!1173881 () Unit!52462)

(assert (=> b!3455636 (= lt!1173881 lt!1173885)))

(assert (= (and d!993767 res!1393945) b!3455634))

(assert (= (and d!993767 c!591476) b!3455635))

(assert (= (and d!993767 (not c!591476)) b!3455636))

(declare-fun m!3855125 () Bool)

(assert (=> d!993767 m!3855125))

(declare-fun m!3855127 () Bool)

(assert (=> d!993767 m!3855127))

(declare-fun m!3855129 () Bool)

(assert (=> d!993767 m!3855129))

(declare-fun m!3855131 () Bool)

(assert (=> d!993767 m!3855131))

(assert (=> d!993767 m!3855127))

(assert (=> d!993767 m!3855129))

(declare-fun m!3855133 () Bool)

(assert (=> d!993767 m!3855133))

(assert (=> b!3455634 m!3855133))

(declare-fun m!3855135 () Bool)

(assert (=> b!3455636 m!3855135))

(declare-fun m!3855137 () Bool)

(assert (=> b!3455636 m!3855137))

(assert (=> b!3455636 m!3855135))

(declare-fun m!3855139 () Bool)

(assert (=> b!3455636 m!3855139))

(declare-fun m!3855141 () Bool)

(assert (=> b!3455636 m!3855141))

(declare-fun m!3855143 () Bool)

(assert (=> b!3455636 m!3855143))

(declare-fun m!3855145 () Bool)

(assert (=> b!3455636 m!3855145))

(declare-fun m!3855147 () Bool)

(assert (=> b!3455636 m!3855147))

(assert (=> b!3455636 m!3854937))

(assert (=> b!3455636 m!3855137))

(declare-fun m!3855149 () Bool)

(assert (=> b!3455636 m!3855149))

(declare-fun m!3855151 () Bool)

(assert (=> b!3455636 m!3855151))

(assert (=> b!3455636 m!3855149))

(declare-fun m!3855153 () Bool)

(assert (=> b!3455636 m!3855153))

(assert (=> b!3455636 m!3855139))

(declare-fun m!3855155 () Bool)

(assert (=> b!3455636 m!3855155))

(declare-fun m!3855157 () Bool)

(assert (=> b!3455636 m!3855157))

(assert (=> b!3455636 m!3855143))

(assert (=> b!3455345 d!993767))

(declare-fun d!993777 () Bool)

(declare-fun lt!1173892 () BalanceConc!22092)

(assert (=> d!993777 (= (list!13511 lt!1173892) (printListTailRec!684 thiss!18206 (dropList!1201 lt!1173709 0) (list!13511 (BalanceConc!22093 Empty!11239))))))

(declare-fun e!2140784 () BalanceConc!22092)

(assert (=> d!993777 (= lt!1173892 e!2140784)))

(declare-fun c!591477 () Bool)

(assert (=> d!993777 (= c!591477 (>= 0 (size!28156 lt!1173709)))))

(declare-fun e!2140785 () Bool)

(assert (=> d!993777 e!2140785))

(declare-fun res!1393950 () Bool)

(assert (=> d!993777 (=> (not res!1393950) (not e!2140785))))

(assert (=> d!993777 (= res!1393950 (>= 0 0))))

(assert (=> d!993777 (= (printTailRec!1516 thiss!18206 lt!1173709 0 (BalanceConc!22093 Empty!11239)) lt!1173892)))

(declare-fun b!3455641 () Bool)

(assert (=> b!3455641 (= e!2140785 (<= 0 (size!28156 lt!1173709)))))

(declare-fun b!3455642 () Bool)

(assert (=> b!3455642 (= e!2140784 (BalanceConc!22093 Empty!11239))))

(declare-fun b!3455643 () Bool)

(assert (=> b!3455643 (= e!2140784 (printTailRec!1516 thiss!18206 lt!1173709 (+ 0 1) (++!9149 (BalanceConc!22093 Empty!11239) (charsOf!3446 (apply!8726 lt!1173709 0)))))))

(declare-fun lt!1173891 () List!37259)

(assert (=> b!3455643 (= lt!1173891 (list!13513 lt!1173709))))

(declare-fun lt!1173889 () Unit!52462)

(assert (=> b!3455643 (= lt!1173889 (lemmaDropApply!1159 lt!1173891 0))))

(assert (=> b!3455643 (= (head!7309 (drop!2007 lt!1173891 0)) (apply!8730 lt!1173891 0))))

(declare-fun lt!1173895 () Unit!52462)

(assert (=> b!3455643 (= lt!1173895 lt!1173889)))

(declare-fun lt!1173893 () List!37259)

(assert (=> b!3455643 (= lt!1173893 (list!13513 lt!1173709))))

(declare-fun lt!1173894 () Unit!52462)

(assert (=> b!3455643 (= lt!1173894 (lemmaDropTail!1043 lt!1173893 0))))

(assert (=> b!3455643 (= (tail!5424 (drop!2007 lt!1173893 0)) (drop!2007 lt!1173893 (+ 0 1)))))

(declare-fun lt!1173890 () Unit!52462)

(assert (=> b!3455643 (= lt!1173890 lt!1173894)))

(assert (= (and d!993777 res!1393950) b!3455641))

(assert (= (and d!993777 c!591477) b!3455642))

(assert (= (and d!993777 (not c!591477)) b!3455643))

(declare-fun m!3855159 () Bool)

(assert (=> d!993777 m!3855159))

(declare-fun m!3855161 () Bool)

(assert (=> d!993777 m!3855161))

(assert (=> d!993777 m!3855129))

(declare-fun m!3855163 () Bool)

(assert (=> d!993777 m!3855163))

(assert (=> d!993777 m!3855161))

(assert (=> d!993777 m!3855129))

(declare-fun m!3855165 () Bool)

(assert (=> d!993777 m!3855165))

(assert (=> b!3455641 m!3855165))

(declare-fun m!3855167 () Bool)

(assert (=> b!3455643 m!3855167))

(declare-fun m!3855169 () Bool)

(assert (=> b!3455643 m!3855169))

(assert (=> b!3455643 m!3855167))

(declare-fun m!3855171 () Bool)

(assert (=> b!3455643 m!3855171))

(declare-fun m!3855173 () Bool)

(assert (=> b!3455643 m!3855173))

(declare-fun m!3855175 () Bool)

(assert (=> b!3455643 m!3855175))

(declare-fun m!3855177 () Bool)

(assert (=> b!3455643 m!3855177))

(declare-fun m!3855179 () Bool)

(assert (=> b!3455643 m!3855179))

(declare-fun m!3855181 () Bool)

(assert (=> b!3455643 m!3855181))

(assert (=> b!3455643 m!3855169))

(declare-fun m!3855183 () Bool)

(assert (=> b!3455643 m!3855183))

(declare-fun m!3855185 () Bool)

(assert (=> b!3455643 m!3855185))

(assert (=> b!3455643 m!3855183))

(declare-fun m!3855189 () Bool)

(assert (=> b!3455643 m!3855189))

(assert (=> b!3455643 m!3855171))

(declare-fun m!3855193 () Bool)

(assert (=> b!3455643 m!3855193))

(declare-fun m!3855195 () Bool)

(assert (=> b!3455643 m!3855195))

(assert (=> b!3455643 m!3855175))

(assert (=> b!3455345 d!993777))

(declare-fun bm!249290 () Bool)

(declare-fun call!249295 () List!37257)

(declare-fun c!591479 () Bool)

(assert (=> bm!249290 (= call!249295 (usedCharacters!666 (ite c!591479 (regOne!20895 (regex!5432 (rule!8018 (h!42555 tokens!494)))) (regTwo!20894 (regex!5432 (rule!8018 (h!42555 tokens!494)))))))))

(declare-fun b!3455646 () Bool)

(declare-fun e!2140788 () List!37257)

(declare-fun e!2140789 () List!37257)

(assert (=> b!3455646 (= e!2140788 e!2140789)))

(assert (=> b!3455646 (= c!591479 ((_ is Union!10191) (regex!5432 (rule!8018 (h!42555 tokens!494)))))))

(declare-fun b!3455647 () Bool)

(declare-fun call!249298 () List!37257)

(assert (=> b!3455647 (= e!2140789 call!249298)))

(declare-fun call!249297 () List!37257)

(declare-fun bm!249291 () Bool)

(declare-fun c!591478 () Bool)

(assert (=> bm!249291 (= call!249297 (usedCharacters!666 (ite c!591478 (reg!10520 (regex!5432 (rule!8018 (h!42555 tokens!494)))) (ite c!591479 (regTwo!20895 (regex!5432 (rule!8018 (h!42555 tokens!494)))) (regOne!20894 (regex!5432 (rule!8018 (h!42555 tokens!494))))))))))

(declare-fun bm!249292 () Bool)

(declare-fun call!249296 () List!37257)

(assert (=> bm!249292 (= call!249296 call!249297)))

(declare-fun b!3455648 () Bool)

(assert (=> b!3455648 (= c!591478 ((_ is Star!10191) (regex!5432 (rule!8018 (h!42555 tokens!494)))))))

(declare-fun e!2140790 () List!37257)

(assert (=> b!3455648 (= e!2140790 e!2140788)))

(declare-fun d!993779 () Bool)

(declare-fun c!591480 () Bool)

(assert (=> d!993779 (= c!591480 (or ((_ is EmptyExpr!10191) (regex!5432 (rule!8018 (h!42555 tokens!494)))) ((_ is EmptyLang!10191) (regex!5432 (rule!8018 (h!42555 tokens!494))))))))

(declare-fun e!2140787 () List!37257)

(assert (=> d!993779 (= (usedCharacters!666 (regex!5432 (rule!8018 (h!42555 tokens!494)))) e!2140787)))

(declare-fun bm!249293 () Bool)

(assert (=> bm!249293 (= call!249298 (++!9147 (ite c!591479 call!249295 call!249296) (ite c!591479 call!249296 call!249295)))))

(declare-fun b!3455649 () Bool)

(assert (=> b!3455649 (= e!2140789 call!249298)))

(declare-fun b!3455650 () Bool)

(assert (=> b!3455650 (= e!2140787 Nil!37133)))

(declare-fun b!3455651 () Bool)

(assert (=> b!3455651 (= e!2140788 call!249297)))

(declare-fun b!3455652 () Bool)

(assert (=> b!3455652 (= e!2140787 e!2140790)))

(declare-fun c!591481 () Bool)

(assert (=> b!3455652 (= c!591481 ((_ is ElementMatch!10191) (regex!5432 (rule!8018 (h!42555 tokens!494)))))))

(declare-fun b!3455653 () Bool)

(assert (=> b!3455653 (= e!2140790 (Cons!37133 (c!591406 (regex!5432 (rule!8018 (h!42555 tokens!494)))) Nil!37133))))

(assert (= (and d!993779 c!591480) b!3455650))

(assert (= (and d!993779 (not c!591480)) b!3455652))

(assert (= (and b!3455652 c!591481) b!3455653))

(assert (= (and b!3455652 (not c!591481)) b!3455648))

(assert (= (and b!3455648 c!591478) b!3455651))

(assert (= (and b!3455648 (not c!591478)) b!3455646))

(assert (= (and b!3455646 c!591479) b!3455649))

(assert (= (and b!3455646 (not c!591479)) b!3455647))

(assert (= (or b!3455649 b!3455647) bm!249292))

(assert (= (or b!3455649 b!3455647) bm!249290))

(assert (= (or b!3455649 b!3455647) bm!249293))

(assert (= (or b!3455651 bm!249292) bm!249291))

(declare-fun m!3855201 () Bool)

(assert (=> bm!249290 m!3855201))

(declare-fun m!3855203 () Bool)

(assert (=> bm!249291 m!3855203))

(declare-fun m!3855205 () Bool)

(assert (=> bm!249293 m!3855205))

(assert (=> b!3455345 d!993779))

(declare-fun d!993783 () Bool)

(assert (=> d!993783 (rulesProduceIndividualToken!2513 thiss!18206 rules!2135 (h!42555 tokens!494))))

(declare-fun lt!1173910 () Unit!52462)

(declare-fun choose!19968 (LexerInterface!5021 List!37258 List!37259 Token!10230) Unit!52462)

(assert (=> d!993783 (= lt!1173910 (choose!19968 thiss!18206 rules!2135 tokens!494 (h!42555 tokens!494)))))

(assert (=> d!993783 (not (isEmpty!21466 rules!2135))))

(assert (=> d!993783 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1010 thiss!18206 rules!2135 tokens!494 (h!42555 tokens!494)) lt!1173910)))

(declare-fun bs!560046 () Bool)

(assert (= bs!560046 d!993783))

(assert (=> bs!560046 m!3854629))

(declare-fun m!3855279 () Bool)

(assert (=> bs!560046 m!3855279))

(assert (=> bs!560046 m!3854621))

(assert (=> b!3455345 d!993783))

(declare-fun d!993809 () Bool)

(declare-fun lt!1173913 () Bool)

(declare-fun content!5177 (List!37257) (InoxSet C!20568))

(assert (=> d!993809 (= lt!1173913 (select (content!5177 (usedCharacters!666 (regex!5432 (rule!8018 separatorToken!241)))) lt!1173706))))

(declare-fun e!2140840 () Bool)

(assert (=> d!993809 (= lt!1173913 e!2140840)))

(declare-fun res!1394006 () Bool)

(assert (=> d!993809 (=> (not res!1394006) (not e!2140840))))

(assert (=> d!993809 (= res!1394006 ((_ is Cons!37133) (usedCharacters!666 (regex!5432 (rule!8018 separatorToken!241)))))))

(assert (=> d!993809 (= (contains!6872 (usedCharacters!666 (regex!5432 (rule!8018 separatorToken!241))) lt!1173706) lt!1173913)))

(declare-fun b!3455731 () Bool)

(declare-fun e!2140839 () Bool)

(assert (=> b!3455731 (= e!2140840 e!2140839)))

(declare-fun res!1394007 () Bool)

(assert (=> b!3455731 (=> res!1394007 e!2140839)))

(assert (=> b!3455731 (= res!1394007 (= (h!42553 (usedCharacters!666 (regex!5432 (rule!8018 separatorToken!241)))) lt!1173706))))

(declare-fun b!3455732 () Bool)

(assert (=> b!3455732 (= e!2140839 (contains!6872 (t!272286 (usedCharacters!666 (regex!5432 (rule!8018 separatorToken!241)))) lt!1173706))))

(assert (= (and d!993809 res!1394006) b!3455731))

(assert (= (and b!3455731 (not res!1394007)) b!3455732))

(assert (=> d!993809 m!3854561))

(declare-fun m!3855281 () Bool)

(assert (=> d!993809 m!3855281))

(declare-fun m!3855283 () Bool)

(assert (=> d!993809 m!3855283))

(declare-fun m!3855285 () Bool)

(assert (=> b!3455732 m!3855285))

(assert (=> b!3455345 d!993809))

(declare-fun d!993811 () Bool)

(declare-fun lt!1173914 () Bool)

(declare-fun e!2140841 () Bool)

(assert (=> d!993811 (= lt!1173914 e!2140841)))

(declare-fun res!1394010 () Bool)

(assert (=> d!993811 (=> (not res!1394010) (not e!2140841))))

(assert (=> d!993811 (= res!1394010 (= (list!13513 (_1!21552 (lex!2347 thiss!18206 rules!2135 (print!2086 thiss!18206 (singletonSeq!2528 (h!42555 (t!272288 tokens!494))))))) (list!13513 (singletonSeq!2528 (h!42555 (t!272288 tokens!494))))))))

(declare-fun e!2140842 () Bool)

(assert (=> d!993811 (= lt!1173914 e!2140842)))

(declare-fun res!1394009 () Bool)

(assert (=> d!993811 (=> (not res!1394009) (not e!2140842))))

(declare-fun lt!1173915 () tuple2!36836)

(assert (=> d!993811 (= res!1394009 (= (size!28156 (_1!21552 lt!1173915)) 1))))

(assert (=> d!993811 (= lt!1173915 (lex!2347 thiss!18206 rules!2135 (print!2086 thiss!18206 (singletonSeq!2528 (h!42555 (t!272288 tokens!494))))))))

(assert (=> d!993811 (not (isEmpty!21466 rules!2135))))

(assert (=> d!993811 (= (rulesProduceIndividualToken!2513 thiss!18206 rules!2135 (h!42555 (t!272288 tokens!494))) lt!1173914)))

(declare-fun b!3455733 () Bool)

(declare-fun res!1394008 () Bool)

(assert (=> b!3455733 (=> (not res!1394008) (not e!2140842))))

(assert (=> b!3455733 (= res!1394008 (= (apply!8726 (_1!21552 lt!1173915) 0) (h!42555 (t!272288 tokens!494))))))

(declare-fun b!3455734 () Bool)

(assert (=> b!3455734 (= e!2140842 (isEmpty!21467 (_2!21552 lt!1173915)))))

(declare-fun b!3455735 () Bool)

(assert (=> b!3455735 (= e!2140841 (isEmpty!21467 (_2!21552 (lex!2347 thiss!18206 rules!2135 (print!2086 thiss!18206 (singletonSeq!2528 (h!42555 (t!272288 tokens!494))))))))))

(assert (= (and d!993811 res!1394009) b!3455733))

(assert (= (and b!3455733 res!1394008) b!3455734))

(assert (= (and d!993811 res!1394010) b!3455735))

(declare-fun m!3855287 () Bool)

(assert (=> d!993811 m!3855287))

(declare-fun m!3855289 () Bool)

(assert (=> d!993811 m!3855289))

(declare-fun m!3855291 () Bool)

(assert (=> d!993811 m!3855291))

(declare-fun m!3855293 () Bool)

(assert (=> d!993811 m!3855293))

(assert (=> d!993811 m!3854621))

(assert (=> d!993811 m!3854607))

(assert (=> d!993811 m!3855287))

(assert (=> d!993811 m!3854607))

(assert (=> d!993811 m!3854607))

(declare-fun m!3855295 () Bool)

(assert (=> d!993811 m!3855295))

(declare-fun m!3855297 () Bool)

(assert (=> b!3455733 m!3855297))

(declare-fun m!3855299 () Bool)

(assert (=> b!3455734 m!3855299))

(assert (=> b!3455735 m!3854607))

(assert (=> b!3455735 m!3854607))

(assert (=> b!3455735 m!3855287))

(assert (=> b!3455735 m!3855287))

(assert (=> b!3455735 m!3855289))

(declare-fun m!3855301 () Bool)

(assert (=> b!3455735 m!3855301))

(assert (=> b!3455345 d!993811))

(declare-fun d!993813 () Bool)

(assert (=> d!993813 (= (maxPrefixOneRule!1728 thiss!18206 (rule!8018 (h!42555 tokens!494)) lt!1173692) (Some!7511 (tuple2!36839 (Token!10231 (apply!8727 (transformation!5432 (rule!8018 (h!42555 tokens!494))) (seqFromList!3917 lt!1173692)) (rule!8018 (h!42555 tokens!494)) (size!28157 lt!1173692) lt!1173692) Nil!37133)))))

(declare-fun lt!1173918 () Unit!52462)

(declare-fun choose!19969 (LexerInterface!5021 List!37258 List!37257 List!37257 List!37257 Rule!10664) Unit!52462)

(assert (=> d!993813 (= lt!1173918 (choose!19969 thiss!18206 rules!2135 lt!1173692 lt!1173692 Nil!37133 (rule!8018 (h!42555 tokens!494))))))

(assert (=> d!993813 (not (isEmpty!21466 rules!2135))))

(assert (=> d!993813 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!821 thiss!18206 rules!2135 lt!1173692 lt!1173692 Nil!37133 (rule!8018 (h!42555 tokens!494))) lt!1173918)))

(declare-fun bs!560047 () Bool)

(assert (= bs!560047 d!993813))

(assert (=> bs!560047 m!3854565))

(assert (=> bs!560047 m!3854621))

(assert (=> bs!560047 m!3854655))

(assert (=> bs!560047 m!3854595))

(assert (=> bs!560047 m!3854655))

(declare-fun m!3855303 () Bool)

(assert (=> bs!560047 m!3855303))

(declare-fun m!3855305 () Bool)

(assert (=> bs!560047 m!3855305))

(assert (=> b!3455345 d!993813))

(declare-fun d!993815 () Bool)

(declare-fun e!2140845 () Bool)

(assert (=> d!993815 e!2140845))

(declare-fun res!1394015 () Bool)

(assert (=> d!993815 (=> (not res!1394015) (not e!2140845))))

(assert (=> d!993815 (= res!1394015 (isDefined!5786 (getRuleFromTag!1075 thiss!18206 rules!2135 (tag!6036 (rule!8018 (h!42555 tokens!494))))))))

(declare-fun lt!1173921 () Unit!52462)

(declare-fun choose!19970 (LexerInterface!5021 List!37258 List!37257 Token!10230) Unit!52462)

(assert (=> d!993815 (= lt!1173921 (choose!19970 thiss!18206 rules!2135 lt!1173692 (h!42555 tokens!494)))))

(assert (=> d!993815 (rulesInvariant!4418 thiss!18206 rules!2135)))

(assert (=> d!993815 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1075 thiss!18206 rules!2135 lt!1173692 (h!42555 tokens!494)) lt!1173921)))

(declare-fun b!3455740 () Bool)

(declare-fun res!1394016 () Bool)

(assert (=> b!3455740 (=> (not res!1394016) (not e!2140845))))

(assert (=> b!3455740 (= res!1394016 (matchR!4775 (regex!5432 (get!11879 (getRuleFromTag!1075 thiss!18206 rules!2135 (tag!6036 (rule!8018 (h!42555 tokens!494)))))) (list!13511 (charsOf!3446 (h!42555 tokens!494)))))))

(declare-fun b!3455741 () Bool)

(assert (=> b!3455741 (= e!2140845 (= (rule!8018 (h!42555 tokens!494)) (get!11879 (getRuleFromTag!1075 thiss!18206 rules!2135 (tag!6036 (rule!8018 (h!42555 tokens!494)))))))))

(assert (= (and d!993815 res!1394015) b!3455740))

(assert (= (and b!3455740 res!1394016) b!3455741))

(assert (=> d!993815 m!3854579))

(assert (=> d!993815 m!3854579))

(declare-fun m!3855307 () Bool)

(assert (=> d!993815 m!3855307))

(declare-fun m!3855309 () Bool)

(assert (=> d!993815 m!3855309))

(assert (=> d!993815 m!3854543))

(assert (=> b!3455740 m!3854579))

(assert (=> b!3455740 m!3854615))

(assert (=> b!3455740 m!3854579))

(declare-fun m!3855311 () Bool)

(assert (=> b!3455740 m!3855311))

(assert (=> b!3455740 m!3854617))

(declare-fun m!3855313 () Bool)

(assert (=> b!3455740 m!3855313))

(assert (=> b!3455740 m!3854615))

(assert (=> b!3455740 m!3854617))

(assert (=> b!3455741 m!3854579))

(assert (=> b!3455741 m!3854579))

(assert (=> b!3455741 m!3855311))

(assert (=> b!3455345 d!993815))

(declare-fun d!993817 () Bool)

(declare-fun lt!1173926 () Int)

(assert (=> d!993817 (>= lt!1173926 0)))

(declare-fun e!2140848 () Int)

(assert (=> d!993817 (= lt!1173926 e!2140848)))

(declare-fun c!591496 () Bool)

(assert (=> d!993817 (= c!591496 ((_ is Nil!37133) lt!1173692))))

(assert (=> d!993817 (= (size!28157 lt!1173692) lt!1173926)))

(declare-fun b!3455746 () Bool)

(assert (=> b!3455746 (= e!2140848 0)))

(declare-fun b!3455747 () Bool)

(assert (=> b!3455747 (= e!2140848 (+ 1 (size!28157 (t!272286 lt!1173692))))))

(assert (= (and d!993817 c!591496) b!3455746))

(assert (= (and d!993817 (not c!591496)) b!3455747))

(declare-fun m!3855315 () Bool)

(assert (=> b!3455747 m!3855315))

(assert (=> b!3455345 d!993817))

(declare-fun b!3455748 () Bool)

(declare-fun lt!1173929 () Unit!52462)

(declare-fun lt!1173927 () Unit!52462)

(assert (=> b!3455748 (= lt!1173929 lt!1173927)))

(assert (=> b!3455748 (rulesInvariant!4418 thiss!18206 (t!272287 rules!2135))))

(assert (=> b!3455748 (= lt!1173927 (lemmaInvariantOnRulesThenOnTail!428 thiss!18206 (h!42554 rules!2135) (t!272287 rules!2135)))))

(declare-fun e!2140851 () Option!7511)

(assert (=> b!3455748 (= e!2140851 (getRuleFromTag!1075 thiss!18206 (t!272287 rules!2135) (tag!6036 (rule!8018 (h!42555 tokens!494)))))))

(declare-fun b!3455749 () Bool)

(declare-fun e!2140852 () Bool)

(declare-fun lt!1173928 () Option!7511)

(assert (=> b!3455749 (= e!2140852 (= (tag!6036 (get!11879 lt!1173928)) (tag!6036 (rule!8018 (h!42555 tokens!494)))))))

(declare-fun d!993819 () Bool)

(declare-fun e!2140849 () Bool)

(assert (=> d!993819 e!2140849))

(declare-fun res!1394017 () Bool)

(assert (=> d!993819 (=> res!1394017 e!2140849)))

(assert (=> d!993819 (= res!1394017 (isEmpty!21473 lt!1173928))))

(declare-fun e!2140850 () Option!7511)

(assert (=> d!993819 (= lt!1173928 e!2140850)))

(declare-fun c!591498 () Bool)

(assert (=> d!993819 (= c!591498 (and ((_ is Cons!37134) rules!2135) (= (tag!6036 (h!42554 rules!2135)) (tag!6036 (rule!8018 (h!42555 tokens!494))))))))

(assert (=> d!993819 (rulesInvariant!4418 thiss!18206 rules!2135)))

(assert (=> d!993819 (= (getRuleFromTag!1075 thiss!18206 rules!2135 (tag!6036 (rule!8018 (h!42555 tokens!494)))) lt!1173928)))

(declare-fun b!3455750 () Bool)

(assert (=> b!3455750 (= e!2140851 None!7510)))

(declare-fun b!3455751 () Bool)

(assert (=> b!3455751 (= e!2140849 e!2140852)))

(declare-fun res!1394018 () Bool)

(assert (=> b!3455751 (=> (not res!1394018) (not e!2140852))))

(assert (=> b!3455751 (= res!1394018 (contains!6871 rules!2135 (get!11879 lt!1173928)))))

(declare-fun b!3455752 () Bool)

(assert (=> b!3455752 (= e!2140850 (Some!7510 (h!42554 rules!2135)))))

(declare-fun b!3455753 () Bool)

(assert (=> b!3455753 (= e!2140850 e!2140851)))

(declare-fun c!591497 () Bool)

(assert (=> b!3455753 (= c!591497 (and ((_ is Cons!37134) rules!2135) (not (= (tag!6036 (h!42554 rules!2135)) (tag!6036 (rule!8018 (h!42555 tokens!494)))))))))

(assert (= (and d!993819 c!591498) b!3455752))

(assert (= (and d!993819 (not c!591498)) b!3455753))

(assert (= (and b!3455753 c!591497) b!3455748))

(assert (= (and b!3455753 (not c!591497)) b!3455750))

(assert (= (and d!993819 (not res!1394017)) b!3455751))

(assert (= (and b!3455751 res!1394018) b!3455749))

(assert (=> b!3455748 m!3854923))

(assert (=> b!3455748 m!3854925))

(declare-fun m!3855317 () Bool)

(assert (=> b!3455748 m!3855317))

(declare-fun m!3855319 () Bool)

(assert (=> b!3455749 m!3855319))

(declare-fun m!3855321 () Bool)

(assert (=> d!993819 m!3855321))

(assert (=> d!993819 m!3854543))

(assert (=> b!3455751 m!3855319))

(assert (=> b!3455751 m!3855319))

(declare-fun m!3855323 () Bool)

(assert (=> b!3455751 m!3855323))

(assert (=> b!3455345 d!993819))

(declare-fun d!993821 () Bool)

(declare-fun dynLambda!15625 (Int BalanceConc!22092) TokenValue!5662)

(assert (=> d!993821 (= (apply!8727 (transformation!5432 (rule!8018 (h!42555 tokens!494))) lt!1173689) (dynLambda!15625 (toValue!7656 (transformation!5432 (rule!8018 (h!42555 tokens!494)))) lt!1173689))))

(declare-fun b_lambda!99323 () Bool)

(assert (=> (not b_lambda!99323) (not d!993821)))

(declare-fun t!272312 () Bool)

(declare-fun tb!188131 () Bool)

(assert (=> (and b!3455313 (= (toValue!7656 (transformation!5432 (h!42554 rules!2135))) (toValue!7656 (transformation!5432 (rule!8018 (h!42555 tokens!494))))) t!272312) tb!188131))

(declare-fun result!232048 () Bool)

(assert (=> tb!188131 (= result!232048 (inv!21 (dynLambda!15625 (toValue!7656 (transformation!5432 (rule!8018 (h!42555 tokens!494)))) lt!1173689)))))

(declare-fun m!3855325 () Bool)

(assert (=> tb!188131 m!3855325))

(assert (=> d!993821 t!272312))

(declare-fun b_and!242859 () Bool)

(assert (= b_and!242835 (and (=> t!272312 result!232048) b_and!242859)))

(declare-fun t!272314 () Bool)

(declare-fun tb!188133 () Bool)

(assert (=> (and b!3455341 (= (toValue!7656 (transformation!5432 (rule!8018 (h!42555 tokens!494)))) (toValue!7656 (transformation!5432 (rule!8018 (h!42555 tokens!494))))) t!272314) tb!188133))

(declare-fun result!232052 () Bool)

(assert (= result!232052 result!232048))

(assert (=> d!993821 t!272314))

(declare-fun b_and!242861 () Bool)

(assert (= b_and!242839 (and (=> t!272314 result!232052) b_and!242861)))

(declare-fun tb!188135 () Bool)

(declare-fun t!272316 () Bool)

(assert (=> (and b!3455318 (= (toValue!7656 (transformation!5432 (rule!8018 separatorToken!241))) (toValue!7656 (transformation!5432 (rule!8018 (h!42555 tokens!494))))) t!272316) tb!188135))

(declare-fun result!232054 () Bool)

(assert (= result!232054 result!232048))

(assert (=> d!993821 t!272316))

(declare-fun b_and!242863 () Bool)

(assert (= b_and!242843 (and (=> t!272316 result!232054) b_and!242863)))

(declare-fun m!3855327 () Bool)

(assert (=> d!993821 m!3855327))

(assert (=> b!3455345 d!993821))

(declare-fun d!993823 () Bool)

(declare-fun lt!1173930 () BalanceConc!22092)

(assert (=> d!993823 (= (list!13511 lt!1173930) (printList!1569 thiss!18206 (list!13513 lt!1173709)))))

(assert (=> d!993823 (= lt!1173930 (printTailRec!1516 thiss!18206 lt!1173709 0 (BalanceConc!22093 Empty!11239)))))

(assert (=> d!993823 (= (print!2086 thiss!18206 lt!1173709) lt!1173930)))

(declare-fun bs!560048 () Bool)

(assert (= bs!560048 d!993823))

(declare-fun m!3855329 () Bool)

(assert (=> bs!560048 m!3855329))

(assert (=> bs!560048 m!3855181))

(assert (=> bs!560048 m!3855181))

(declare-fun m!3855331 () Bool)

(assert (=> bs!560048 m!3855331))

(assert (=> bs!560048 m!3854601))

(assert (=> b!3455345 d!993823))

(declare-fun d!993825 () Bool)

(declare-fun e!2140858 () Bool)

(assert (=> d!993825 e!2140858))

(declare-fun res!1394021 () Bool)

(assert (=> d!993825 (=> (not res!1394021) (not e!2140858))))

(declare-fun lt!1173931 () BalanceConc!22094)

(assert (=> d!993825 (= res!1394021 (= (list!13513 lt!1173931) (Cons!37135 (h!42555 (t!272288 tokens!494)) Nil!37135)))))

(assert (=> d!993825 (= lt!1173931 (singleton!1116 (h!42555 (t!272288 tokens!494))))))

(assert (=> d!993825 (= (singletonSeq!2528 (h!42555 (t!272288 tokens!494))) lt!1173931)))

(declare-fun b!3455758 () Bool)

(assert (=> b!3455758 (= e!2140858 (isBalanced!3409 (c!591408 lt!1173931)))))

(assert (= (and d!993825 res!1394021) b!3455758))

(declare-fun m!3855333 () Bool)

(assert (=> d!993825 m!3855333))

(declare-fun m!3855335 () Bool)

(assert (=> d!993825 m!3855335))

(declare-fun m!3855337 () Bool)

(assert (=> b!3455758 m!3855337))

(assert (=> b!3455345 d!993825))

(declare-fun d!993827 () Bool)

(assert (=> d!993827 (= (head!7307 lt!1173702) (h!42553 lt!1173702))))

(assert (=> b!3455345 d!993827))

(declare-fun d!993829 () Bool)

(declare-fun e!2140863 () Bool)

(assert (=> d!993829 e!2140863))

(declare-fun res!1394023 () Bool)

(assert (=> d!993829 (=> (not res!1394023) (not e!2140863))))

(assert (=> d!993829 (= res!1394023 (isDefined!5786 (getRuleFromTag!1075 thiss!18206 rules!2135 (tag!6036 (rule!8018 separatorToken!241)))))))

(declare-fun lt!1173933 () Unit!52462)

(assert (=> d!993829 (= lt!1173933 (choose!19970 thiss!18206 rules!2135 lt!1173702 separatorToken!241))))

(assert (=> d!993829 (rulesInvariant!4418 thiss!18206 rules!2135)))

(assert (=> d!993829 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1075 thiss!18206 rules!2135 lt!1173702 separatorToken!241) lt!1173933)))

(declare-fun b!3455763 () Bool)

(declare-fun res!1394024 () Bool)

(assert (=> b!3455763 (=> (not res!1394024) (not e!2140863))))

(assert (=> b!3455763 (= res!1394024 (matchR!4775 (regex!5432 (get!11879 (getRuleFromTag!1075 thiss!18206 rules!2135 (tag!6036 (rule!8018 separatorToken!241))))) (list!13511 (charsOf!3446 separatorToken!241))))))

(declare-fun b!3455764 () Bool)

(assert (=> b!3455764 (= e!2140863 (= (rule!8018 separatorToken!241) (get!11879 (getRuleFromTag!1075 thiss!18206 rules!2135 (tag!6036 (rule!8018 separatorToken!241))))))))

(assert (= (and d!993829 res!1394023) b!3455763))

(assert (= (and b!3455763 res!1394024) b!3455764))

(assert (=> d!993829 m!3854603))

(assert (=> d!993829 m!3854603))

(declare-fun m!3855339 () Bool)

(assert (=> d!993829 m!3855339))

(declare-fun m!3855341 () Bool)

(assert (=> d!993829 m!3855341))

(assert (=> d!993829 m!3854543))

(assert (=> b!3455763 m!3854603))

(assert (=> b!3455763 m!3854663))

(assert (=> b!3455763 m!3854603))

(declare-fun m!3855347 () Bool)

(assert (=> b!3455763 m!3855347))

(assert (=> b!3455763 m!3854679))

(declare-fun m!3855351 () Bool)

(assert (=> b!3455763 m!3855351))

(assert (=> b!3455763 m!3854663))

(assert (=> b!3455763 m!3854679))

(assert (=> b!3455764 m!3854603))

(assert (=> b!3455764 m!3854603))

(assert (=> b!3455764 m!3855347))

(assert (=> b!3455345 d!993829))

(declare-fun d!993833 () Bool)

(assert (=> d!993833 (dynLambda!15621 lambda!121707 (h!42555 (t!272288 tokens!494)))))

(declare-fun lt!1173934 () Unit!52462)

(assert (=> d!993833 (= lt!1173934 (choose!19963 tokens!494 lambda!121707 (h!42555 (t!272288 tokens!494))))))

(declare-fun e!2140864 () Bool)

(assert (=> d!993833 e!2140864))

(declare-fun res!1394025 () Bool)

(assert (=> d!993833 (=> (not res!1394025) (not e!2140864))))

(assert (=> d!993833 (= res!1394025 (forall!7907 tokens!494 lambda!121707))))

(assert (=> d!993833 (= (forallContained!1379 tokens!494 lambda!121707 (h!42555 (t!272288 tokens!494))) lt!1173934)))

(declare-fun b!3455765 () Bool)

(assert (=> b!3455765 (= e!2140864 (contains!6873 tokens!494 (h!42555 (t!272288 tokens!494))))))

(assert (= (and d!993833 res!1394025) b!3455765))

(declare-fun b_lambda!99325 () Bool)

(assert (=> (not b_lambda!99325) (not d!993833)))

(declare-fun m!3855355 () Bool)

(assert (=> d!993833 m!3855355))

(declare-fun m!3855357 () Bool)

(assert (=> d!993833 m!3855357))

(declare-fun m!3855359 () Bool)

(assert (=> d!993833 m!3855359))

(assert (=> b!3455765 m!3854831))

(assert (=> b!3455345 d!993833))

(declare-fun d!993835 () Bool)

(declare-fun lt!1173935 () Int)

(assert (=> d!993835 (= lt!1173935 (size!28159 (list!13513 (_1!21552 lt!1173678))))))

(assert (=> d!993835 (= lt!1173935 (size!28160 (c!591408 (_1!21552 lt!1173678))))))

(assert (=> d!993835 (= (size!28156 (_1!21552 lt!1173678)) lt!1173935)))

(declare-fun bs!560051 () Bool)

(assert (= bs!560051 d!993835))

(declare-fun m!3855361 () Bool)

(assert (=> bs!560051 m!3855361))

(assert (=> bs!560051 m!3855361))

(declare-fun m!3855363 () Bool)

(assert (=> bs!560051 m!3855363))

(declare-fun m!3855365 () Bool)

(assert (=> bs!560051 m!3855365))

(assert (=> b!3455345 d!993835))

(declare-fun d!993837 () Bool)

(declare-fun lt!1173936 () Bool)

(assert (=> d!993837 (= lt!1173936 (select (content!5177 (usedCharacters!666 (regex!5432 (rule!8018 (h!42555 tokens!494))))) lt!1173706))))

(declare-fun e!2140866 () Bool)

(assert (=> d!993837 (= lt!1173936 e!2140866)))

(declare-fun res!1394026 () Bool)

(assert (=> d!993837 (=> (not res!1394026) (not e!2140866))))

(assert (=> d!993837 (= res!1394026 ((_ is Cons!37133) (usedCharacters!666 (regex!5432 (rule!8018 (h!42555 tokens!494))))))))

(assert (=> d!993837 (= (contains!6872 (usedCharacters!666 (regex!5432 (rule!8018 (h!42555 tokens!494)))) lt!1173706) lt!1173936)))

(declare-fun b!3455766 () Bool)

(declare-fun e!2140865 () Bool)

(assert (=> b!3455766 (= e!2140866 e!2140865)))

(declare-fun res!1394027 () Bool)

(assert (=> b!3455766 (=> res!1394027 e!2140865)))

(assert (=> b!3455766 (= res!1394027 (= (h!42553 (usedCharacters!666 (regex!5432 (rule!8018 (h!42555 tokens!494))))) lt!1173706))))

(declare-fun b!3455767 () Bool)

(assert (=> b!3455767 (= e!2140865 (contains!6872 (t!272286 (usedCharacters!666 (regex!5432 (rule!8018 (h!42555 tokens!494))))) lt!1173706))))

(assert (= (and d!993837 res!1394026) b!3455766))

(assert (= (and b!3455766 (not res!1394027)) b!3455767))

(assert (=> d!993837 m!3854575))

(declare-fun m!3855367 () Bool)

(assert (=> d!993837 m!3855367))

(declare-fun m!3855369 () Bool)

(assert (=> d!993837 m!3855369))

(declare-fun m!3855371 () Bool)

(assert (=> b!3455767 m!3855371))

(assert (=> b!3455345 d!993837))

(declare-fun d!993839 () Bool)

(declare-fun lt!1173937 () Bool)

(declare-fun e!2140867 () Bool)

(assert (=> d!993839 (= lt!1173937 e!2140867)))

(declare-fun res!1394030 () Bool)

(assert (=> d!993839 (=> (not res!1394030) (not e!2140867))))

(assert (=> d!993839 (= res!1394030 (= (list!13513 (_1!21552 (lex!2347 thiss!18206 rules!2135 (print!2086 thiss!18206 (singletonSeq!2528 (h!42555 tokens!494)))))) (list!13513 (singletonSeq!2528 (h!42555 tokens!494)))))))

(declare-fun e!2140868 () Bool)

(assert (=> d!993839 (= lt!1173937 e!2140868)))

(declare-fun res!1394029 () Bool)

(assert (=> d!993839 (=> (not res!1394029) (not e!2140868))))

(declare-fun lt!1173938 () tuple2!36836)

(assert (=> d!993839 (= res!1394029 (= (size!28156 (_1!21552 lt!1173938)) 1))))

(assert (=> d!993839 (= lt!1173938 (lex!2347 thiss!18206 rules!2135 (print!2086 thiss!18206 (singletonSeq!2528 (h!42555 tokens!494)))))))

(assert (=> d!993839 (not (isEmpty!21466 rules!2135))))

(assert (=> d!993839 (= (rulesProduceIndividualToken!2513 thiss!18206 rules!2135 (h!42555 tokens!494)) lt!1173937)))

(declare-fun b!3455768 () Bool)

(declare-fun res!1394028 () Bool)

(assert (=> b!3455768 (=> (not res!1394028) (not e!2140868))))

(assert (=> b!3455768 (= res!1394028 (= (apply!8726 (_1!21552 lt!1173938) 0) (h!42555 tokens!494)))))

(declare-fun b!3455769 () Bool)

(assert (=> b!3455769 (= e!2140868 (isEmpty!21467 (_2!21552 lt!1173938)))))

(declare-fun b!3455770 () Bool)

(assert (=> b!3455770 (= e!2140867 (isEmpty!21467 (_2!21552 (lex!2347 thiss!18206 rules!2135 (print!2086 thiss!18206 (singletonSeq!2528 (h!42555 tokens!494)))))))))

(assert (= (and d!993839 res!1394029) b!3455768))

(assert (= (and b!3455768 res!1394028) b!3455769))

(assert (= (and d!993839 res!1394030) b!3455770))

(declare-fun m!3855373 () Bool)

(assert (=> d!993839 m!3855373))

(declare-fun m!3855377 () Bool)

(assert (=> d!993839 m!3855377))

(declare-fun m!3855379 () Bool)

(assert (=> d!993839 m!3855379))

(declare-fun m!3855381 () Bool)

(assert (=> d!993839 m!3855381))

(assert (=> d!993839 m!3854621))

(assert (=> d!993839 m!3854535))

(assert (=> d!993839 m!3855373))

(assert (=> d!993839 m!3854535))

(assert (=> d!993839 m!3854535))

(declare-fun m!3855383 () Bool)

(assert (=> d!993839 m!3855383))

(declare-fun m!3855385 () Bool)

(assert (=> b!3455768 m!3855385))

(declare-fun m!3855387 () Bool)

(assert (=> b!3455769 m!3855387))

(assert (=> b!3455770 m!3854535))

(assert (=> b!3455770 m!3854535))

(assert (=> b!3455770 m!3855373))

(assert (=> b!3455770 m!3855373))

(assert (=> b!3455770 m!3855377))

(declare-fun m!3855389 () Bool)

(assert (=> b!3455770 m!3855389))

(assert (=> b!3455343 d!993839))

(declare-fun d!993843 () Bool)

(declare-fun lt!1173945 () Token!10230)

(assert (=> d!993843 (= lt!1173945 (apply!8730 (list!13513 (_1!21552 lt!1173687)) 0))))

(declare-fun apply!8731 (Conc!11240 Int) Token!10230)

(assert (=> d!993843 (= lt!1173945 (apply!8731 (c!591408 (_1!21552 lt!1173687)) 0))))

(declare-fun e!2140877 () Bool)

(assert (=> d!993843 e!2140877))

(declare-fun res!1394040 () Bool)

(assert (=> d!993843 (=> (not res!1394040) (not e!2140877))))

(assert (=> d!993843 (= res!1394040 (<= 0 0))))

(assert (=> d!993843 (= (apply!8726 (_1!21552 lt!1173687) 0) lt!1173945)))

(declare-fun b!3455784 () Bool)

(assert (=> b!3455784 (= e!2140877 (< 0 (size!28156 (_1!21552 lt!1173687))))))

(assert (= (and d!993843 res!1394040) b!3455784))

(assert (=> d!993843 m!3854881))

(assert (=> d!993843 m!3854881))

(declare-fun m!3855407 () Bool)

(assert (=> d!993843 m!3855407))

(declare-fun m!3855409 () Bool)

(assert (=> d!993843 m!3855409))

(assert (=> b!3455784 m!3854581))

(assert (=> b!3455322 d!993843))

(declare-fun d!993847 () Bool)

(assert (=> d!993847 (not (matchR!4775 (regex!5432 (rule!8018 separatorToken!241)) lt!1173702))))

(declare-fun lt!1173952 () Unit!52462)

(declare-fun choose!19972 (Regex!10191 List!37257 C!20568) Unit!52462)

(assert (=> d!993847 (= lt!1173952 (choose!19972 (regex!5432 (rule!8018 separatorToken!241)) lt!1173702 lt!1173706))))

(declare-fun validRegex!4640 (Regex!10191) Bool)

(assert (=> d!993847 (validRegex!4640 (regex!5432 (rule!8018 separatorToken!241)))))

(assert (=> d!993847 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!490 (regex!5432 (rule!8018 separatorToken!241)) lt!1173702 lt!1173706) lt!1173952)))

(declare-fun bs!560053 () Bool)

(assert (= bs!560053 d!993847))

(assert (=> bs!560053 m!3854641))

(declare-fun m!3855445 () Bool)

(assert (=> bs!560053 m!3855445))

(declare-fun m!3855447 () Bool)

(assert (=> bs!560053 m!3855447))

(assert (=> b!3455315 d!993847))

(declare-fun bm!249300 () Bool)

(declare-fun call!249305 () Bool)

(assert (=> bm!249300 (= call!249305 (isEmpty!21471 lt!1173702))))

(declare-fun d!993857 () Bool)

(declare-fun e!2140915 () Bool)

(assert (=> d!993857 e!2140915))

(declare-fun c!591512 () Bool)

(assert (=> d!993857 (= c!591512 ((_ is EmptyExpr!10191) (regex!5432 (rule!8018 separatorToken!241))))))

(declare-fun lt!1173961 () Bool)

(declare-fun e!2140920 () Bool)

(assert (=> d!993857 (= lt!1173961 e!2140920)))

(declare-fun c!591511 () Bool)

(assert (=> d!993857 (= c!591511 (isEmpty!21471 lt!1173702))))

(assert (=> d!993857 (validRegex!4640 (regex!5432 (rule!8018 separatorToken!241)))))

(assert (=> d!993857 (= (matchR!4775 (regex!5432 (rule!8018 separatorToken!241)) lt!1173702) lt!1173961)))

(declare-fun b!3455847 () Bool)

(declare-fun nullable!3484 (Regex!10191) Bool)

(assert (=> b!3455847 (= e!2140920 (nullable!3484 (regex!5432 (rule!8018 separatorToken!241))))))

(declare-fun b!3455848 () Bool)

(declare-fun res!1394085 () Bool)

(declare-fun e!2140919 () Bool)

(assert (=> b!3455848 (=> res!1394085 e!2140919)))

(declare-fun tail!5425 (List!37257) List!37257)

(assert (=> b!3455848 (= res!1394085 (not (isEmpty!21471 (tail!5425 lt!1173702))))))

(declare-fun b!3455849 () Bool)

(declare-fun e!2140917 () Bool)

(assert (=> b!3455849 (= e!2140915 e!2140917)))

(declare-fun c!591513 () Bool)

(assert (=> b!3455849 (= c!591513 ((_ is EmptyLang!10191) (regex!5432 (rule!8018 separatorToken!241))))))

(declare-fun b!3455850 () Bool)

(declare-fun e!2140914 () Bool)

(assert (=> b!3455850 (= e!2140914 (= (head!7307 lt!1173702) (c!591406 (regex!5432 (rule!8018 separatorToken!241)))))))

(declare-fun b!3455851 () Bool)

(declare-fun derivativeStep!3037 (Regex!10191 C!20568) Regex!10191)

(assert (=> b!3455851 (= e!2140920 (matchR!4775 (derivativeStep!3037 (regex!5432 (rule!8018 separatorToken!241)) (head!7307 lt!1173702)) (tail!5425 lt!1173702)))))

(declare-fun b!3455852 () Bool)

(declare-fun res!1394087 () Bool)

(declare-fun e!2140916 () Bool)

(assert (=> b!3455852 (=> res!1394087 e!2140916)))

(assert (=> b!3455852 (= res!1394087 e!2140914)))

(declare-fun res!1394083 () Bool)

(assert (=> b!3455852 (=> (not res!1394083) (not e!2140914))))

(assert (=> b!3455852 (= res!1394083 lt!1173961)))

(declare-fun b!3455853 () Bool)

(declare-fun res!1394080 () Bool)

(assert (=> b!3455853 (=> (not res!1394080) (not e!2140914))))

(assert (=> b!3455853 (= res!1394080 (isEmpty!21471 (tail!5425 lt!1173702)))))

(declare-fun b!3455854 () Bool)

(assert (=> b!3455854 (= e!2140915 (= lt!1173961 call!249305))))

(declare-fun b!3455855 () Bool)

(declare-fun res!1394084 () Bool)

(assert (=> b!3455855 (=> (not res!1394084) (not e!2140914))))

(assert (=> b!3455855 (= res!1394084 (not call!249305))))

(declare-fun b!3455856 () Bool)

(assert (=> b!3455856 (= e!2140919 (not (= (head!7307 lt!1173702) (c!591406 (regex!5432 (rule!8018 separatorToken!241))))))))

(declare-fun b!3455857 () Bool)

(assert (=> b!3455857 (= e!2140917 (not lt!1173961))))

(declare-fun b!3455858 () Bool)

(declare-fun res!1394086 () Bool)

(assert (=> b!3455858 (=> res!1394086 e!2140916)))

(assert (=> b!3455858 (= res!1394086 (not ((_ is ElementMatch!10191) (regex!5432 (rule!8018 separatorToken!241)))))))

(assert (=> b!3455858 (= e!2140917 e!2140916)))

(declare-fun b!3455859 () Bool)

(declare-fun e!2140918 () Bool)

(assert (=> b!3455859 (= e!2140918 e!2140919)))

(declare-fun res!1394082 () Bool)

(assert (=> b!3455859 (=> res!1394082 e!2140919)))

(assert (=> b!3455859 (= res!1394082 call!249305)))

(declare-fun b!3455860 () Bool)

(assert (=> b!3455860 (= e!2140916 e!2140918)))

(declare-fun res!1394081 () Bool)

(assert (=> b!3455860 (=> (not res!1394081) (not e!2140918))))

(assert (=> b!3455860 (= res!1394081 (not lt!1173961))))

(assert (= (and d!993857 c!591511) b!3455847))

(assert (= (and d!993857 (not c!591511)) b!3455851))

(assert (= (and d!993857 c!591512) b!3455854))

(assert (= (and d!993857 (not c!591512)) b!3455849))

(assert (= (and b!3455849 c!591513) b!3455857))

(assert (= (and b!3455849 (not c!591513)) b!3455858))

(assert (= (and b!3455858 (not res!1394086)) b!3455852))

(assert (= (and b!3455852 res!1394083) b!3455855))

(assert (= (and b!3455855 res!1394084) b!3455853))

(assert (= (and b!3455853 res!1394080) b!3455850))

(assert (= (and b!3455852 (not res!1394087)) b!3455860))

(assert (= (and b!3455860 res!1394081) b!3455859))

(assert (= (and b!3455859 (not res!1394082)) b!3455848))

(assert (= (and b!3455848 (not res!1394085)) b!3455856))

(assert (= (or b!3455854 b!3455855 b!3455859) bm!249300))

(declare-fun m!3855495 () Bool)

(assert (=> b!3455848 m!3855495))

(assert (=> b!3455848 m!3855495))

(declare-fun m!3855497 () Bool)

(assert (=> b!3455848 m!3855497))

(assert (=> b!3455853 m!3855495))

(assert (=> b!3455853 m!3855495))

(assert (=> b!3455853 m!3855497))

(declare-fun m!3855499 () Bool)

(assert (=> b!3455847 m!3855499))

(declare-fun m!3855501 () Bool)

(assert (=> bm!249300 m!3855501))

(assert (=> d!993857 m!3855501))

(assert (=> d!993857 m!3855447))

(assert (=> b!3455856 m!3854599))

(assert (=> b!3455851 m!3854599))

(assert (=> b!3455851 m!3854599))

(declare-fun m!3855503 () Bool)

(assert (=> b!3455851 m!3855503))

(assert (=> b!3455851 m!3855495))

(assert (=> b!3455851 m!3855503))

(assert (=> b!3455851 m!3855495))

(declare-fun m!3855505 () Bool)

(assert (=> b!3455851 m!3855505))

(assert (=> b!3455850 m!3854599))

(assert (=> b!3455315 d!993857))

(declare-fun bs!560068 () Bool)

(declare-fun d!993869 () Bool)

(assert (= bs!560068 (and d!993869 b!3455317)))

(declare-fun lambda!121717 () Int)

(assert (=> bs!560068 (not (= lambda!121717 lambda!121706))))

(declare-fun bs!560069 () Bool)

(assert (= bs!560069 (and d!993869 b!3455345)))

(assert (=> bs!560069 (= lambda!121717 lambda!121707)))

(declare-fun b!3456003 () Bool)

(declare-fun e!2141016 () Bool)

(assert (=> b!3456003 (= e!2141016 true)))

(declare-fun b!3456002 () Bool)

(declare-fun e!2141015 () Bool)

(assert (=> b!3456002 (= e!2141015 e!2141016)))

(declare-fun b!3456001 () Bool)

(declare-fun e!2141014 () Bool)

(assert (=> b!3456001 (= e!2141014 e!2141015)))

(assert (=> d!993869 e!2141014))

(assert (= b!3456002 b!3456003))

(assert (= b!3456001 b!3456002))

(assert (= (and d!993869 ((_ is Cons!37134) rules!2135)) b!3456001))

(assert (=> b!3456003 (< (dynLambda!15618 order!19749 (toValue!7656 (transformation!5432 (h!42554 rules!2135)))) (dynLambda!15619 order!19751 lambda!121717))))

(assert (=> b!3456003 (< (dynLambda!15620 order!19753 (toChars!7515 (transformation!5432 (h!42554 rules!2135)))) (dynLambda!15619 order!19751 lambda!121717))))

(assert (=> d!993869 true))

(declare-fun e!2141013 () Bool)

(assert (=> d!993869 e!2141013))

(declare-fun res!1394121 () Bool)

(assert (=> d!993869 (=> (not res!1394121) (not e!2141013))))

(declare-fun lt!1173994 () Bool)

(assert (=> d!993869 (= res!1394121 (= lt!1173994 (forall!7907 (list!13513 (seqFromList!3918 tokens!494)) lambda!121717)))))

(declare-fun forall!7909 (BalanceConc!22094 Int) Bool)

(assert (=> d!993869 (= lt!1173994 (forall!7909 (seqFromList!3918 tokens!494) lambda!121717))))

(assert (=> d!993869 (not (isEmpty!21466 rules!2135))))

(assert (=> d!993869 (= (rulesProduceEachTokenIndividually!1472 thiss!18206 rules!2135 (seqFromList!3918 tokens!494)) lt!1173994)))

(declare-fun b!3456000 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1851 (LexerInterface!5021 List!37258 List!37259) Bool)

(assert (=> b!3456000 (= e!2141013 (= lt!1173994 (rulesProduceEachTokenIndividuallyList!1851 thiss!18206 rules!2135 (list!13513 (seqFromList!3918 tokens!494)))))))

(assert (= (and d!993869 res!1394121) b!3456000))

(assert (=> d!993869 m!3854657))

(declare-fun m!3855727 () Bool)

(assert (=> d!993869 m!3855727))

(assert (=> d!993869 m!3855727))

(declare-fun m!3855729 () Bool)

(assert (=> d!993869 m!3855729))

(assert (=> d!993869 m!3854657))

(declare-fun m!3855731 () Bool)

(assert (=> d!993869 m!3855731))

(assert (=> d!993869 m!3854621))

(assert (=> b!3456000 m!3854657))

(assert (=> b!3456000 m!3855727))

(assert (=> b!3456000 m!3855727))

(declare-fun m!3855733 () Bool)

(assert (=> b!3456000 m!3855733))

(assert (=> b!3455337 d!993869))

(declare-fun d!993945 () Bool)

(declare-fun fromListB!1773 (List!37259) BalanceConc!22094)

(assert (=> d!993945 (= (seqFromList!3918 tokens!494) (fromListB!1773 tokens!494))))

(declare-fun bs!560070 () Bool)

(assert (= bs!560070 d!993945))

(declare-fun m!3855735 () Bool)

(assert (=> bs!560070 m!3855735))

(assert (=> b!3455337 d!993945))

(declare-fun d!993947 () Bool)

(declare-fun res!1394126 () Bool)

(declare-fun e!2141019 () Bool)

(assert (=> d!993947 (=> (not res!1394126) (not e!2141019))))

(assert (=> d!993947 (= res!1394126 (not (isEmpty!21471 (originalCharacters!6146 separatorToken!241))))))

(assert (=> d!993947 (= (inv!50298 separatorToken!241) e!2141019)))

(declare-fun b!3456008 () Bool)

(declare-fun res!1394127 () Bool)

(assert (=> b!3456008 (=> (not res!1394127) (not e!2141019))))

(assert (=> b!3456008 (= res!1394127 (= (originalCharacters!6146 separatorToken!241) (list!13511 (dynLambda!15622 (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241))) (value!175272 separatorToken!241)))))))

(declare-fun b!3456009 () Bool)

(assert (=> b!3456009 (= e!2141019 (= (size!28155 separatorToken!241) (size!28157 (originalCharacters!6146 separatorToken!241))))))

(assert (= (and d!993947 res!1394126) b!3456008))

(assert (= (and b!3456008 res!1394127) b!3456009))

(declare-fun b_lambda!99361 () Bool)

(assert (=> (not b_lambda!99361) (not b!3456008)))

(declare-fun t!272356 () Bool)

(declare-fun tb!188171 () Bool)

(assert (=> (and b!3455313 (= (toChars!7515 (transformation!5432 (h!42554 rules!2135))) (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241)))) t!272356) tb!188171))

(declare-fun b!3456010 () Bool)

(declare-fun e!2141020 () Bool)

(declare-fun tp!1077363 () Bool)

(assert (=> b!3456010 (= e!2141020 (and (inv!50300 (c!591407 (dynLambda!15622 (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241))) (value!175272 separatorToken!241)))) tp!1077363))))

(declare-fun result!232100 () Bool)

(assert (=> tb!188171 (= result!232100 (and (inv!50301 (dynLambda!15622 (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241))) (value!175272 separatorToken!241))) e!2141020))))

(assert (= tb!188171 b!3456010))

(declare-fun m!3855737 () Bool)

(assert (=> b!3456010 m!3855737))

(declare-fun m!3855739 () Bool)

(assert (=> tb!188171 m!3855739))

(assert (=> b!3456008 t!272356))

(declare-fun b_and!242903 () Bool)

(assert (= b_and!242847 (and (=> t!272356 result!232100) b_and!242903)))

(declare-fun t!272358 () Bool)

(declare-fun tb!188173 () Bool)

(assert (=> (and b!3455341 (= (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494)))) (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241)))) t!272358) tb!188173))

(declare-fun result!232102 () Bool)

(assert (= result!232102 result!232100))

(assert (=> b!3456008 t!272358))

(declare-fun b_and!242905 () Bool)

(assert (= b_and!242849 (and (=> t!272358 result!232102) b_and!242905)))

(declare-fun t!272360 () Bool)

(declare-fun tb!188175 () Bool)

(assert (=> (and b!3455318 (= (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241))) (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241)))) t!272360) tb!188175))

(declare-fun result!232104 () Bool)

(assert (= result!232104 result!232100))

(assert (=> b!3456008 t!272360))

(declare-fun b_and!242907 () Bool)

(assert (= b_and!242851 (and (=> t!272360 result!232104) b_and!242907)))

(declare-fun m!3855741 () Bool)

(assert (=> d!993947 m!3855741))

(declare-fun m!3855743 () Bool)

(assert (=> b!3456008 m!3855743))

(assert (=> b!3456008 m!3855743))

(declare-fun m!3855745 () Bool)

(assert (=> b!3456008 m!3855745))

(declare-fun m!3855747 () Bool)

(assert (=> b!3456009 m!3855747))

(assert (=> start!321234 d!993947))

(declare-fun d!993949 () Bool)

(declare-fun lt!1173995 () Bool)

(assert (=> d!993949 (= lt!1173995 (isEmpty!21471 (list!13511 (_2!21552 lt!1173687))))))

(assert (=> d!993949 (= lt!1173995 (isEmpty!21472 (c!591407 (_2!21552 lt!1173687))))))

(assert (=> d!993949 (= (isEmpty!21467 (_2!21552 lt!1173687)) lt!1173995)))

(declare-fun bs!560071 () Bool)

(assert (= bs!560071 d!993949))

(declare-fun m!3855749 () Bool)

(assert (=> bs!560071 m!3855749))

(assert (=> bs!560071 m!3855749))

(declare-fun m!3855751 () Bool)

(assert (=> bs!560071 m!3855751))

(declare-fun m!3855753 () Bool)

(assert (=> bs!560071 m!3855753))

(assert (=> b!3455335 d!993949))

(declare-fun d!993951 () Bool)

(declare-fun c!591543 () Bool)

(assert (=> d!993951 (= c!591543 ((_ is IntegerValue!16986) (value!175272 separatorToken!241)))))

(declare-fun e!2141029 () Bool)

(assert (=> d!993951 (= (inv!21 (value!175272 separatorToken!241)) e!2141029)))

(declare-fun b!3456021 () Bool)

(declare-fun inv!16 (TokenValue!5662) Bool)

(assert (=> b!3456021 (= e!2141029 (inv!16 (value!175272 separatorToken!241)))))

(declare-fun b!3456022 () Bool)

(declare-fun res!1394130 () Bool)

(declare-fun e!2141027 () Bool)

(assert (=> b!3456022 (=> res!1394130 e!2141027)))

(assert (=> b!3456022 (= res!1394130 (not ((_ is IntegerValue!16988) (value!175272 separatorToken!241))))))

(declare-fun e!2141028 () Bool)

(assert (=> b!3456022 (= e!2141028 e!2141027)))

(declare-fun b!3456023 () Bool)

(assert (=> b!3456023 (= e!2141029 e!2141028)))

(declare-fun c!591544 () Bool)

(assert (=> b!3456023 (= c!591544 ((_ is IntegerValue!16987) (value!175272 separatorToken!241)))))

(declare-fun b!3456024 () Bool)

(declare-fun inv!15 (TokenValue!5662) Bool)

(assert (=> b!3456024 (= e!2141027 (inv!15 (value!175272 separatorToken!241)))))

(declare-fun b!3456025 () Bool)

(declare-fun inv!17 (TokenValue!5662) Bool)

(assert (=> b!3456025 (= e!2141028 (inv!17 (value!175272 separatorToken!241)))))

(assert (= (and d!993951 c!591543) b!3456021))

(assert (= (and d!993951 (not c!591543)) b!3456023))

(assert (= (and b!3456023 c!591544) b!3456025))

(assert (= (and b!3456023 (not c!591544)) b!3456022))

(assert (= (and b!3456022 (not res!1394130)) b!3456024))

(declare-fun m!3855755 () Bool)

(assert (=> b!3456021 m!3855755))

(declare-fun m!3855757 () Bool)

(assert (=> b!3456024 m!3855757))

(declare-fun m!3855759 () Bool)

(assert (=> b!3456025 m!3855759))

(assert (=> b!3455314 d!993951))

(declare-fun b!3456037 () Bool)

(declare-fun e!2141034 () Bool)

(declare-fun lt!1173998 () List!37257)

(assert (=> b!3456037 (= e!2141034 (or (not (= lt!1173695 Nil!37133)) (= lt!1173998 (++!9147 lt!1173692 lt!1173702))))))

(declare-fun d!993953 () Bool)

(assert (=> d!993953 e!2141034))

(declare-fun res!1394136 () Bool)

(assert (=> d!993953 (=> (not res!1394136) (not e!2141034))))

(assert (=> d!993953 (= res!1394136 (= (content!5177 lt!1173998) ((_ map or) (content!5177 (++!9147 lt!1173692 lt!1173702)) (content!5177 lt!1173695))))))

(declare-fun e!2141035 () List!37257)

(assert (=> d!993953 (= lt!1173998 e!2141035)))

(declare-fun c!591547 () Bool)

(assert (=> d!993953 (= c!591547 ((_ is Nil!37133) (++!9147 lt!1173692 lt!1173702)))))

(assert (=> d!993953 (= (++!9147 (++!9147 lt!1173692 lt!1173702) lt!1173695) lt!1173998)))

(declare-fun b!3456035 () Bool)

(assert (=> b!3456035 (= e!2141035 (Cons!37133 (h!42553 (++!9147 lt!1173692 lt!1173702)) (++!9147 (t!272286 (++!9147 lt!1173692 lt!1173702)) lt!1173695)))))

(declare-fun b!3456036 () Bool)

(declare-fun res!1394135 () Bool)

(assert (=> b!3456036 (=> (not res!1394135) (not e!2141034))))

(assert (=> b!3456036 (= res!1394135 (= (size!28157 lt!1173998) (+ (size!28157 (++!9147 lt!1173692 lt!1173702)) (size!28157 lt!1173695))))))

(declare-fun b!3456034 () Bool)

(assert (=> b!3456034 (= e!2141035 lt!1173695)))

(assert (= (and d!993953 c!591547) b!3456034))

(assert (= (and d!993953 (not c!591547)) b!3456035))

(assert (= (and d!993953 res!1394136) b!3456036))

(assert (= (and b!3456036 res!1394135) b!3456037))

(declare-fun m!3855761 () Bool)

(assert (=> d!993953 m!3855761))

(assert (=> d!993953 m!3854693))

(declare-fun m!3855763 () Bool)

(assert (=> d!993953 m!3855763))

(declare-fun m!3855765 () Bool)

(assert (=> d!993953 m!3855765))

(declare-fun m!3855767 () Bool)

(assert (=> b!3456035 m!3855767))

(declare-fun m!3855769 () Bool)

(assert (=> b!3456036 m!3855769))

(assert (=> b!3456036 m!3854693))

(declare-fun m!3855771 () Bool)

(assert (=> b!3456036 m!3855771))

(declare-fun m!3855773 () Bool)

(assert (=> b!3456036 m!3855773))

(assert (=> b!3455339 d!993953))

(declare-fun b!3456041 () Bool)

(declare-fun lt!1173999 () List!37257)

(declare-fun e!2141036 () Bool)

(assert (=> b!3456041 (= e!2141036 (or (not (= lt!1173702 Nil!37133)) (= lt!1173999 lt!1173692)))))

(declare-fun d!993955 () Bool)

(assert (=> d!993955 e!2141036))

(declare-fun res!1394138 () Bool)

(assert (=> d!993955 (=> (not res!1394138) (not e!2141036))))

(assert (=> d!993955 (= res!1394138 (= (content!5177 lt!1173999) ((_ map or) (content!5177 lt!1173692) (content!5177 lt!1173702))))))

(declare-fun e!2141037 () List!37257)

(assert (=> d!993955 (= lt!1173999 e!2141037)))

(declare-fun c!591548 () Bool)

(assert (=> d!993955 (= c!591548 ((_ is Nil!37133) lt!1173692))))

(assert (=> d!993955 (= (++!9147 lt!1173692 lt!1173702) lt!1173999)))

(declare-fun b!3456039 () Bool)

(assert (=> b!3456039 (= e!2141037 (Cons!37133 (h!42553 lt!1173692) (++!9147 (t!272286 lt!1173692) lt!1173702)))))

(declare-fun b!3456040 () Bool)

(declare-fun res!1394137 () Bool)

(assert (=> b!3456040 (=> (not res!1394137) (not e!2141036))))

(assert (=> b!3456040 (= res!1394137 (= (size!28157 lt!1173999) (+ (size!28157 lt!1173692) (size!28157 lt!1173702))))))

(declare-fun b!3456038 () Bool)

(assert (=> b!3456038 (= e!2141037 lt!1173702)))

(assert (= (and d!993955 c!591548) b!3456038))

(assert (= (and d!993955 (not c!591548)) b!3456039))

(assert (= (and d!993955 res!1394138) b!3456040))

(assert (= (and b!3456040 res!1394137) b!3456041))

(declare-fun m!3855775 () Bool)

(assert (=> d!993955 m!3855775))

(declare-fun m!3855777 () Bool)

(assert (=> d!993955 m!3855777))

(declare-fun m!3855779 () Bool)

(assert (=> d!993955 m!3855779))

(declare-fun m!3855781 () Bool)

(assert (=> b!3456039 m!3855781))

(declare-fun m!3855783 () Bool)

(assert (=> b!3456040 m!3855783))

(assert (=> b!3456040 m!3854595))

(declare-fun m!3855785 () Bool)

(assert (=> b!3456040 m!3855785))

(assert (=> b!3455339 d!993955))

(declare-fun d!993957 () Bool)

(declare-fun res!1394141 () Bool)

(declare-fun e!2141040 () Bool)

(assert (=> d!993957 (=> (not res!1394141) (not e!2141040))))

(declare-fun rulesValid!2039 (LexerInterface!5021 List!37258) Bool)

(assert (=> d!993957 (= res!1394141 (rulesValid!2039 thiss!18206 rules!2135))))

(assert (=> d!993957 (= (rulesInvariant!4418 thiss!18206 rules!2135) e!2141040)))

(declare-fun b!3456044 () Bool)

(declare-datatypes ((List!37261 0))(
  ( (Nil!37137) (Cons!37137 (h!42557 String!41644) (t!272384 List!37261)) )
))
(declare-fun noDuplicateTag!2035 (LexerInterface!5021 List!37258 List!37261) Bool)

(assert (=> b!3456044 (= e!2141040 (noDuplicateTag!2035 thiss!18206 rules!2135 Nil!37137))))

(assert (= (and d!993957 res!1394141) b!3456044))

(declare-fun m!3855787 () Bool)

(assert (=> d!993957 m!3855787))

(declare-fun m!3855789 () Bool)

(assert (=> b!3456044 m!3855789))

(assert (=> b!3455316 d!993957))

(declare-fun d!993959 () Bool)

(declare-fun res!1394146 () Bool)

(declare-fun e!2141045 () Bool)

(assert (=> d!993959 (=> res!1394146 e!2141045)))

(assert (=> d!993959 (= res!1394146 ((_ is Nil!37135) tokens!494))))

(assert (=> d!993959 (= (forall!7907 tokens!494 lambda!121706) e!2141045)))

(declare-fun b!3456049 () Bool)

(declare-fun e!2141046 () Bool)

(assert (=> b!3456049 (= e!2141045 e!2141046)))

(declare-fun res!1394147 () Bool)

(assert (=> b!3456049 (=> (not res!1394147) (not e!2141046))))

(assert (=> b!3456049 (= res!1394147 (dynLambda!15621 lambda!121706 (h!42555 tokens!494)))))

(declare-fun b!3456050 () Bool)

(assert (=> b!3456050 (= e!2141046 (forall!7907 (t!272288 tokens!494) lambda!121706))))

(assert (= (and d!993959 (not res!1394146)) b!3456049))

(assert (= (and b!3456049 res!1394147) b!3456050))

(declare-fun b_lambda!99363 () Bool)

(assert (=> (not b_lambda!99363) (not b!3456049)))

(assert (=> b!3456049 m!3854833))

(declare-fun m!3855791 () Bool)

(assert (=> b!3456050 m!3855791))

(assert (=> b!3455317 d!993959))

(declare-fun bm!249302 () Bool)

(declare-fun call!249307 () Bool)

(assert (=> bm!249302 (= call!249307 (isEmpty!21471 lt!1173702))))

(declare-fun d!993961 () Bool)

(declare-fun e!2141048 () Bool)

(assert (=> d!993961 e!2141048))

(declare-fun c!591550 () Bool)

(assert (=> d!993961 (= c!591550 ((_ is EmptyExpr!10191) (regex!5432 lt!1173710)))))

(declare-fun lt!1174000 () Bool)

(declare-fun e!2141053 () Bool)

(assert (=> d!993961 (= lt!1174000 e!2141053)))

(declare-fun c!591549 () Bool)

(assert (=> d!993961 (= c!591549 (isEmpty!21471 lt!1173702))))

(assert (=> d!993961 (validRegex!4640 (regex!5432 lt!1173710))))

(assert (=> d!993961 (= (matchR!4775 (regex!5432 lt!1173710) lt!1173702) lt!1174000)))

(declare-fun b!3456051 () Bool)

(assert (=> b!3456051 (= e!2141053 (nullable!3484 (regex!5432 lt!1173710)))))

(declare-fun b!3456052 () Bool)

(declare-fun res!1394153 () Bool)

(declare-fun e!2141052 () Bool)

(assert (=> b!3456052 (=> res!1394153 e!2141052)))

(assert (=> b!3456052 (= res!1394153 (not (isEmpty!21471 (tail!5425 lt!1173702))))))

(declare-fun b!3456053 () Bool)

(declare-fun e!2141050 () Bool)

(assert (=> b!3456053 (= e!2141048 e!2141050)))

(declare-fun c!591551 () Bool)

(assert (=> b!3456053 (= c!591551 ((_ is EmptyLang!10191) (regex!5432 lt!1173710)))))

(declare-fun b!3456054 () Bool)

(declare-fun e!2141047 () Bool)

(assert (=> b!3456054 (= e!2141047 (= (head!7307 lt!1173702) (c!591406 (regex!5432 lt!1173710))))))

(declare-fun b!3456055 () Bool)

(assert (=> b!3456055 (= e!2141053 (matchR!4775 (derivativeStep!3037 (regex!5432 lt!1173710) (head!7307 lt!1173702)) (tail!5425 lt!1173702)))))

(declare-fun b!3456056 () Bool)

(declare-fun res!1394155 () Bool)

(declare-fun e!2141049 () Bool)

(assert (=> b!3456056 (=> res!1394155 e!2141049)))

(assert (=> b!3456056 (= res!1394155 e!2141047)))

(declare-fun res!1394151 () Bool)

(assert (=> b!3456056 (=> (not res!1394151) (not e!2141047))))

(assert (=> b!3456056 (= res!1394151 lt!1174000)))

(declare-fun b!3456057 () Bool)

(declare-fun res!1394148 () Bool)

(assert (=> b!3456057 (=> (not res!1394148) (not e!2141047))))

(assert (=> b!3456057 (= res!1394148 (isEmpty!21471 (tail!5425 lt!1173702)))))

(declare-fun b!3456058 () Bool)

(assert (=> b!3456058 (= e!2141048 (= lt!1174000 call!249307))))

(declare-fun b!3456059 () Bool)

(declare-fun res!1394152 () Bool)

(assert (=> b!3456059 (=> (not res!1394152) (not e!2141047))))

(assert (=> b!3456059 (= res!1394152 (not call!249307))))

(declare-fun b!3456060 () Bool)

(assert (=> b!3456060 (= e!2141052 (not (= (head!7307 lt!1173702) (c!591406 (regex!5432 lt!1173710)))))))

(declare-fun b!3456061 () Bool)

(assert (=> b!3456061 (= e!2141050 (not lt!1174000))))

(declare-fun b!3456062 () Bool)

(declare-fun res!1394154 () Bool)

(assert (=> b!3456062 (=> res!1394154 e!2141049)))

(assert (=> b!3456062 (= res!1394154 (not ((_ is ElementMatch!10191) (regex!5432 lt!1173710))))))

(assert (=> b!3456062 (= e!2141050 e!2141049)))

(declare-fun b!3456063 () Bool)

(declare-fun e!2141051 () Bool)

(assert (=> b!3456063 (= e!2141051 e!2141052)))

(declare-fun res!1394150 () Bool)

(assert (=> b!3456063 (=> res!1394150 e!2141052)))

(assert (=> b!3456063 (= res!1394150 call!249307)))

(declare-fun b!3456064 () Bool)

(assert (=> b!3456064 (= e!2141049 e!2141051)))

(declare-fun res!1394149 () Bool)

(assert (=> b!3456064 (=> (not res!1394149) (not e!2141051))))

(assert (=> b!3456064 (= res!1394149 (not lt!1174000))))

(assert (= (and d!993961 c!591549) b!3456051))

(assert (= (and d!993961 (not c!591549)) b!3456055))

(assert (= (and d!993961 c!591550) b!3456058))

(assert (= (and d!993961 (not c!591550)) b!3456053))

(assert (= (and b!3456053 c!591551) b!3456061))

(assert (= (and b!3456053 (not c!591551)) b!3456062))

(assert (= (and b!3456062 (not res!1394154)) b!3456056))

(assert (= (and b!3456056 res!1394151) b!3456059))

(assert (= (and b!3456059 res!1394152) b!3456057))

(assert (= (and b!3456057 res!1394148) b!3456054))

(assert (= (and b!3456056 (not res!1394155)) b!3456064))

(assert (= (and b!3456064 res!1394149) b!3456063))

(assert (= (and b!3456063 (not res!1394150)) b!3456052))

(assert (= (and b!3456052 (not res!1394153)) b!3456060))

(assert (= (or b!3456058 b!3456059 b!3456063) bm!249302))

(assert (=> b!3456052 m!3855495))

(assert (=> b!3456052 m!3855495))

(assert (=> b!3456052 m!3855497))

(assert (=> b!3456057 m!3855495))

(assert (=> b!3456057 m!3855495))

(assert (=> b!3456057 m!3855497))

(declare-fun m!3855793 () Bool)

(assert (=> b!3456051 m!3855793))

(assert (=> bm!249302 m!3855501))

(assert (=> d!993961 m!3855501))

(declare-fun m!3855795 () Bool)

(assert (=> d!993961 m!3855795))

(assert (=> b!3456060 m!3854599))

(assert (=> b!3456055 m!3854599))

(assert (=> b!3456055 m!3854599))

(declare-fun m!3855797 () Bool)

(assert (=> b!3456055 m!3855797))

(assert (=> b!3456055 m!3855495))

(assert (=> b!3456055 m!3855797))

(assert (=> b!3456055 m!3855495))

(declare-fun m!3855799 () Bool)

(assert (=> b!3456055 m!3855799))

(assert (=> b!3456054 m!3854599))

(assert (=> b!3455331 d!993961))

(declare-fun d!993963 () Bool)

(assert (=> d!993963 (= (get!11879 lt!1173680) (v!36810 lt!1173680))))

(assert (=> b!3455331 d!993963))

(declare-fun d!993965 () Bool)

(declare-fun lt!1174004 () BalanceConc!22092)

(assert (=> d!993965 (= (list!13511 lt!1174004) (printListTailRec!684 thiss!18206 (dropList!1201 lt!1173699 0) (list!13511 (BalanceConc!22093 Empty!11239))))))

(declare-fun e!2141054 () BalanceConc!22092)

(assert (=> d!993965 (= lt!1174004 e!2141054)))

(declare-fun c!591552 () Bool)

(assert (=> d!993965 (= c!591552 (>= 0 (size!28156 lt!1173699)))))

(declare-fun e!2141055 () Bool)

(assert (=> d!993965 e!2141055))

(declare-fun res!1394156 () Bool)

(assert (=> d!993965 (=> (not res!1394156) (not e!2141055))))

(assert (=> d!993965 (= res!1394156 (>= 0 0))))

(assert (=> d!993965 (= (printTailRec!1516 thiss!18206 lt!1173699 0 (BalanceConc!22093 Empty!11239)) lt!1174004)))

(declare-fun b!3456065 () Bool)

(assert (=> b!3456065 (= e!2141055 (<= 0 (size!28156 lt!1173699)))))

(declare-fun b!3456066 () Bool)

(assert (=> b!3456066 (= e!2141054 (BalanceConc!22093 Empty!11239))))

(declare-fun b!3456067 () Bool)

(assert (=> b!3456067 (= e!2141054 (printTailRec!1516 thiss!18206 lt!1173699 (+ 0 1) (++!9149 (BalanceConc!22093 Empty!11239) (charsOf!3446 (apply!8726 lt!1173699 0)))))))

(declare-fun lt!1174003 () List!37259)

(assert (=> b!3456067 (= lt!1174003 (list!13513 lt!1173699))))

(declare-fun lt!1174001 () Unit!52462)

(assert (=> b!3456067 (= lt!1174001 (lemmaDropApply!1159 lt!1174003 0))))

(assert (=> b!3456067 (= (head!7309 (drop!2007 lt!1174003 0)) (apply!8730 lt!1174003 0))))

(declare-fun lt!1174007 () Unit!52462)

(assert (=> b!3456067 (= lt!1174007 lt!1174001)))

(declare-fun lt!1174005 () List!37259)

(assert (=> b!3456067 (= lt!1174005 (list!13513 lt!1173699))))

(declare-fun lt!1174006 () Unit!52462)

(assert (=> b!3456067 (= lt!1174006 (lemmaDropTail!1043 lt!1174005 0))))

(assert (=> b!3456067 (= (tail!5424 (drop!2007 lt!1174005 0)) (drop!2007 lt!1174005 (+ 0 1)))))

(declare-fun lt!1174002 () Unit!52462)

(assert (=> b!3456067 (= lt!1174002 lt!1174006)))

(assert (= (and d!993965 res!1394156) b!3456065))

(assert (= (and d!993965 c!591552) b!3456066))

(assert (= (and d!993965 (not c!591552)) b!3456067))

(declare-fun m!3855801 () Bool)

(assert (=> d!993965 m!3855801))

(declare-fun m!3855803 () Bool)

(assert (=> d!993965 m!3855803))

(assert (=> d!993965 m!3855129))

(declare-fun m!3855805 () Bool)

(assert (=> d!993965 m!3855805))

(assert (=> d!993965 m!3855803))

(assert (=> d!993965 m!3855129))

(declare-fun m!3855807 () Bool)

(assert (=> d!993965 m!3855807))

(assert (=> b!3456065 m!3855807))

(declare-fun m!3855809 () Bool)

(assert (=> b!3456067 m!3855809))

(declare-fun m!3855811 () Bool)

(assert (=> b!3456067 m!3855811))

(assert (=> b!3456067 m!3855809))

(declare-fun m!3855813 () Bool)

(assert (=> b!3456067 m!3855813))

(declare-fun m!3855815 () Bool)

(assert (=> b!3456067 m!3855815))

(declare-fun m!3855817 () Bool)

(assert (=> b!3456067 m!3855817))

(declare-fun m!3855819 () Bool)

(assert (=> b!3456067 m!3855819))

(declare-fun m!3855821 () Bool)

(assert (=> b!3456067 m!3855821))

(declare-fun m!3855823 () Bool)

(assert (=> b!3456067 m!3855823))

(assert (=> b!3456067 m!3855811))

(declare-fun m!3855825 () Bool)

(assert (=> b!3456067 m!3855825))

(declare-fun m!3855827 () Bool)

(assert (=> b!3456067 m!3855827))

(assert (=> b!3456067 m!3855825))

(declare-fun m!3855829 () Bool)

(assert (=> b!3456067 m!3855829))

(assert (=> b!3456067 m!3855813))

(declare-fun m!3855831 () Bool)

(assert (=> b!3456067 m!3855831))

(declare-fun m!3855833 () Bool)

(assert (=> b!3456067 m!3855833))

(assert (=> b!3456067 m!3855817))

(assert (=> b!3455310 d!993965))

(declare-fun d!993967 () Bool)

(declare-fun lt!1174008 () BalanceConc!22092)

(assert (=> d!993967 (= (list!13511 lt!1174008) (printList!1569 thiss!18206 (list!13513 lt!1173699)))))

(assert (=> d!993967 (= lt!1174008 (printTailRec!1516 thiss!18206 lt!1173699 0 (BalanceConc!22093 Empty!11239)))))

(assert (=> d!993967 (= (print!2086 thiss!18206 lt!1173699) lt!1174008)))

(declare-fun bs!560072 () Bool)

(assert (= bs!560072 d!993967))

(declare-fun m!3855835 () Bool)

(assert (=> bs!560072 m!3855835))

(assert (=> bs!560072 m!3855823))

(assert (=> bs!560072 m!3855823))

(declare-fun m!3855837 () Bool)

(assert (=> bs!560072 m!3855837))

(assert (=> bs!560072 m!3854531))

(assert (=> b!3455310 d!993967))

(declare-fun d!993969 () Bool)

(assert (=> d!993969 (= (list!13511 lt!1173694) (list!13514 (c!591407 lt!1173694)))))

(declare-fun bs!560073 () Bool)

(assert (= bs!560073 d!993969))

(declare-fun m!3855839 () Bool)

(assert (=> bs!560073 m!3855839))

(assert (=> b!3455310 d!993969))

(declare-fun d!993971 () Bool)

(declare-fun e!2141056 () Bool)

(assert (=> d!993971 e!2141056))

(declare-fun res!1394157 () Bool)

(assert (=> d!993971 (=> (not res!1394157) (not e!2141056))))

(declare-fun lt!1174009 () BalanceConc!22094)

(assert (=> d!993971 (= res!1394157 (= (list!13513 lt!1174009) (Cons!37135 (h!42555 tokens!494) Nil!37135)))))

(assert (=> d!993971 (= lt!1174009 (singleton!1116 (h!42555 tokens!494)))))

(assert (=> d!993971 (= (singletonSeq!2528 (h!42555 tokens!494)) lt!1174009)))

(declare-fun b!3456068 () Bool)

(assert (=> b!3456068 (= e!2141056 (isBalanced!3409 (c!591408 lt!1174009)))))

(assert (= (and d!993971 res!1394157) b!3456068))

(declare-fun m!3855841 () Bool)

(assert (=> d!993971 m!3855841))

(declare-fun m!3855843 () Bool)

(assert (=> d!993971 m!3855843))

(declare-fun m!3855845 () Bool)

(assert (=> b!3456068 m!3855845))

(assert (=> b!3455310 d!993971))

(declare-fun d!993973 () Bool)

(declare-fun c!591555 () Bool)

(assert (=> d!993973 (= c!591555 ((_ is Cons!37135) (Cons!37135 (h!42555 tokens!494) Nil!37135)))))

(declare-fun e!2141059 () List!37257)

(assert (=> d!993973 (= (printList!1569 thiss!18206 (Cons!37135 (h!42555 tokens!494) Nil!37135)) e!2141059)))

(declare-fun b!3456073 () Bool)

(assert (=> b!3456073 (= e!2141059 (++!9147 (list!13511 (charsOf!3446 (h!42555 (Cons!37135 (h!42555 tokens!494) Nil!37135)))) (printList!1569 thiss!18206 (t!272288 (Cons!37135 (h!42555 tokens!494) Nil!37135)))))))

(declare-fun b!3456074 () Bool)

(assert (=> b!3456074 (= e!2141059 Nil!37133)))

(assert (= (and d!993973 c!591555) b!3456073))

(assert (= (and d!993973 (not c!591555)) b!3456074))

(declare-fun m!3855847 () Bool)

(assert (=> b!3456073 m!3855847))

(assert (=> b!3456073 m!3855847))

(declare-fun m!3855849 () Bool)

(assert (=> b!3456073 m!3855849))

(declare-fun m!3855851 () Bool)

(assert (=> b!3456073 m!3855851))

(assert (=> b!3456073 m!3855849))

(assert (=> b!3456073 m!3855851))

(declare-fun m!3855853 () Bool)

(assert (=> b!3456073 m!3855853))

(assert (=> b!3455310 d!993973))

(declare-fun d!993975 () Bool)

(declare-fun res!1394158 () Bool)

(declare-fun e!2141060 () Bool)

(assert (=> d!993975 (=> (not res!1394158) (not e!2141060))))

(assert (=> d!993975 (= res!1394158 (not (isEmpty!21471 (originalCharacters!6146 (h!42555 tokens!494)))))))

(assert (=> d!993975 (= (inv!50298 (h!42555 tokens!494)) e!2141060)))

(declare-fun b!3456075 () Bool)

(declare-fun res!1394159 () Bool)

(assert (=> b!3456075 (=> (not res!1394159) (not e!2141060))))

(assert (=> b!3456075 (= res!1394159 (= (originalCharacters!6146 (h!42555 tokens!494)) (list!13511 (dynLambda!15622 (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494)))) (value!175272 (h!42555 tokens!494))))))))

(declare-fun b!3456076 () Bool)

(assert (=> b!3456076 (= e!2141060 (= (size!28155 (h!42555 tokens!494)) (size!28157 (originalCharacters!6146 (h!42555 tokens!494)))))))

(assert (= (and d!993975 res!1394158) b!3456075))

(assert (= (and b!3456075 res!1394159) b!3456076))

(declare-fun b_lambda!99365 () Bool)

(assert (=> (not b_lambda!99365) (not b!3456075)))

(assert (=> b!3456075 t!272292))

(declare-fun b_and!242909 () Bool)

(assert (= b_and!242903 (and (=> t!272292 result!232032) b_and!242909)))

(assert (=> b!3456075 t!272294))

(declare-fun b_and!242911 () Bool)

(assert (= b_and!242905 (and (=> t!272294 result!232036) b_and!242911)))

(assert (=> b!3456075 t!272296))

(declare-fun b_and!242913 () Bool)

(assert (= b_and!242907 (and (=> t!272296 result!232038) b_and!242913)))

(declare-fun m!3855855 () Bool)

(assert (=> d!993975 m!3855855))

(assert (=> b!3456075 m!3854847))

(assert (=> b!3456075 m!3854847))

(declare-fun m!3855857 () Bool)

(assert (=> b!3456075 m!3855857))

(declare-fun m!3855859 () Bool)

(assert (=> b!3456076 m!3855859))

(assert (=> b!3455308 d!993975))

(declare-fun b!3456080 () Bool)

(declare-fun lt!1174010 () List!37257)

(declare-fun e!2141061 () Bool)

(assert (=> b!3456080 (= e!2141061 (or (not (= lt!1173691 Nil!37133)) (= lt!1174010 lt!1173692)))))

(declare-fun d!993977 () Bool)

(assert (=> d!993977 e!2141061))

(declare-fun res!1394161 () Bool)

(assert (=> d!993977 (=> (not res!1394161) (not e!2141061))))

(assert (=> d!993977 (= res!1394161 (= (content!5177 lt!1174010) ((_ map or) (content!5177 lt!1173692) (content!5177 lt!1173691))))))

(declare-fun e!2141062 () List!37257)

(assert (=> d!993977 (= lt!1174010 e!2141062)))

(declare-fun c!591556 () Bool)

(assert (=> d!993977 (= c!591556 ((_ is Nil!37133) lt!1173692))))

(assert (=> d!993977 (= (++!9147 lt!1173692 lt!1173691) lt!1174010)))

(declare-fun b!3456078 () Bool)

(assert (=> b!3456078 (= e!2141062 (Cons!37133 (h!42553 lt!1173692) (++!9147 (t!272286 lt!1173692) lt!1173691)))))

(declare-fun b!3456079 () Bool)

(declare-fun res!1394160 () Bool)

(assert (=> b!3456079 (=> (not res!1394160) (not e!2141061))))

(assert (=> b!3456079 (= res!1394160 (= (size!28157 lt!1174010) (+ (size!28157 lt!1173692) (size!28157 lt!1173691))))))

(declare-fun b!3456077 () Bool)

(assert (=> b!3456077 (= e!2141062 lt!1173691)))

(assert (= (and d!993977 c!591556) b!3456077))

(assert (= (and d!993977 (not c!591556)) b!3456078))

(assert (= (and d!993977 res!1394161) b!3456079))

(assert (= (and b!3456079 res!1394160) b!3456080))

(declare-fun m!3855861 () Bool)

(assert (=> d!993977 m!3855861))

(assert (=> d!993977 m!3855777))

(declare-fun m!3855863 () Bool)

(assert (=> d!993977 m!3855863))

(declare-fun m!3855865 () Bool)

(assert (=> b!3456078 m!3855865))

(declare-fun m!3855867 () Bool)

(assert (=> b!3456079 m!3855867))

(assert (=> b!3456079 m!3854595))

(declare-fun m!3855869 () Bool)

(assert (=> b!3456079 m!3855869))

(assert (=> b!3455330 d!993977))

(declare-fun d!993979 () Bool)

(assert (=> d!993979 (= (++!9147 (++!9147 lt!1173692 lt!1173702) lt!1173695) (++!9147 lt!1173692 (++!9147 lt!1173702 lt!1173695)))))

(declare-fun lt!1174013 () Unit!52462)

(declare-fun choose!19974 (List!37257 List!37257 List!37257) Unit!52462)

(assert (=> d!993979 (= lt!1174013 (choose!19974 lt!1173692 lt!1173702 lt!1173695))))

(assert (=> d!993979 (= (lemmaConcatAssociativity!1950 lt!1173692 lt!1173702 lt!1173695) lt!1174013)))

(declare-fun bs!560074 () Bool)

(assert (= bs!560074 d!993979))

(assert (=> bs!560074 m!3854693))

(assert (=> bs!560074 m!3854669))

(declare-fun m!3855871 () Bool)

(assert (=> bs!560074 m!3855871))

(assert (=> bs!560074 m!3854693))

(assert (=> bs!560074 m!3854695))

(declare-fun m!3855873 () Bool)

(assert (=> bs!560074 m!3855873))

(assert (=> bs!560074 m!3854669))

(assert (=> b!3455330 d!993979))

(declare-fun d!993981 () Bool)

(declare-fun lt!1174014 () Token!10230)

(assert (=> d!993981 (= lt!1174014 (apply!8730 (list!13513 (_1!21552 lt!1173678)) 0))))

(assert (=> d!993981 (= lt!1174014 (apply!8731 (c!591408 (_1!21552 lt!1173678)) 0))))

(declare-fun e!2141063 () Bool)

(assert (=> d!993981 e!2141063))

(declare-fun res!1394162 () Bool)

(assert (=> d!993981 (=> (not res!1394162) (not e!2141063))))

(assert (=> d!993981 (= res!1394162 (<= 0 0))))

(assert (=> d!993981 (= (apply!8726 (_1!21552 lt!1173678) 0) lt!1174014)))

(declare-fun b!3456081 () Bool)

(assert (=> b!3456081 (= e!2141063 (< 0 (size!28156 (_1!21552 lt!1173678))))))

(assert (= (and d!993981 res!1394162) b!3456081))

(assert (=> d!993981 m!3855361))

(assert (=> d!993981 m!3855361))

(declare-fun m!3855875 () Bool)

(assert (=> d!993981 m!3855875))

(declare-fun m!3855877 () Bool)

(assert (=> d!993981 m!3855877))

(assert (=> b!3456081 m!3854611))

(assert (=> b!3455312 d!993981))

(declare-fun d!993983 () Bool)

(declare-fun res!1394167 () Bool)

(declare-fun e!2141068 () Bool)

(assert (=> d!993983 (=> res!1394167 e!2141068)))

(assert (=> d!993983 (= res!1394167 (not ((_ is Cons!37134) rules!2135)))))

(assert (=> d!993983 (= (sepAndNonSepRulesDisjointChars!1626 rules!2135 rules!2135) e!2141068)))

(declare-fun b!3456086 () Bool)

(declare-fun e!2141069 () Bool)

(assert (=> b!3456086 (= e!2141068 e!2141069)))

(declare-fun res!1394168 () Bool)

(assert (=> b!3456086 (=> (not res!1394168) (not e!2141069))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!715 (Rule!10664 List!37258) Bool)

(assert (=> b!3456086 (= res!1394168 (ruleDisjointCharsFromAllFromOtherType!715 (h!42554 rules!2135) rules!2135))))

(declare-fun b!3456087 () Bool)

(assert (=> b!3456087 (= e!2141069 (sepAndNonSepRulesDisjointChars!1626 rules!2135 (t!272287 rules!2135)))))

(assert (= (and d!993983 (not res!1394167)) b!3456086))

(assert (= (and b!3456086 res!1394168) b!3456087))

(declare-fun m!3855879 () Bool)

(assert (=> b!3456086 m!3855879))

(declare-fun m!3855881 () Bool)

(assert (=> b!3456087 m!3855881))

(assert (=> b!3455332 d!993983))

(declare-fun d!993985 () Bool)

(assert (=> d!993985 (= (isEmpty!21466 rules!2135) ((_ is Nil!37134) rules!2135))))

(assert (=> b!3455333 d!993985))

(declare-fun bm!249303 () Bool)

(declare-fun call!249308 () Bool)

(assert (=> bm!249303 (= call!249308 (isEmpty!21471 lt!1173692))))

(declare-fun d!993987 () Bool)

(declare-fun e!2141071 () Bool)

(assert (=> d!993987 e!2141071))

(declare-fun c!591558 () Bool)

(assert (=> d!993987 (= c!591558 ((_ is EmptyExpr!10191) (regex!5432 lt!1173682)))))

(declare-fun lt!1174015 () Bool)

(declare-fun e!2141076 () Bool)

(assert (=> d!993987 (= lt!1174015 e!2141076)))

(declare-fun c!591557 () Bool)

(assert (=> d!993987 (= c!591557 (isEmpty!21471 lt!1173692))))

(assert (=> d!993987 (validRegex!4640 (regex!5432 lt!1173682))))

(assert (=> d!993987 (= (matchR!4775 (regex!5432 lt!1173682) lt!1173692) lt!1174015)))

(declare-fun b!3456088 () Bool)

(assert (=> b!3456088 (= e!2141076 (nullable!3484 (regex!5432 lt!1173682)))))

(declare-fun b!3456089 () Bool)

(declare-fun res!1394174 () Bool)

(declare-fun e!2141075 () Bool)

(assert (=> b!3456089 (=> res!1394174 e!2141075)))

(assert (=> b!3456089 (= res!1394174 (not (isEmpty!21471 (tail!5425 lt!1173692))))))

(declare-fun b!3456090 () Bool)

(declare-fun e!2141073 () Bool)

(assert (=> b!3456090 (= e!2141071 e!2141073)))

(declare-fun c!591559 () Bool)

(assert (=> b!3456090 (= c!591559 ((_ is EmptyLang!10191) (regex!5432 lt!1173682)))))

(declare-fun b!3456091 () Bool)

(declare-fun e!2141070 () Bool)

(assert (=> b!3456091 (= e!2141070 (= (head!7307 lt!1173692) (c!591406 (regex!5432 lt!1173682))))))

(declare-fun b!3456092 () Bool)

(assert (=> b!3456092 (= e!2141076 (matchR!4775 (derivativeStep!3037 (regex!5432 lt!1173682) (head!7307 lt!1173692)) (tail!5425 lt!1173692)))))

(declare-fun b!3456093 () Bool)

(declare-fun res!1394176 () Bool)

(declare-fun e!2141072 () Bool)

(assert (=> b!3456093 (=> res!1394176 e!2141072)))

(assert (=> b!3456093 (= res!1394176 e!2141070)))

(declare-fun res!1394172 () Bool)

(assert (=> b!3456093 (=> (not res!1394172) (not e!2141070))))

(assert (=> b!3456093 (= res!1394172 lt!1174015)))

(declare-fun b!3456094 () Bool)

(declare-fun res!1394169 () Bool)

(assert (=> b!3456094 (=> (not res!1394169) (not e!2141070))))

(assert (=> b!3456094 (= res!1394169 (isEmpty!21471 (tail!5425 lt!1173692)))))

(declare-fun b!3456095 () Bool)

(assert (=> b!3456095 (= e!2141071 (= lt!1174015 call!249308))))

(declare-fun b!3456096 () Bool)

(declare-fun res!1394173 () Bool)

(assert (=> b!3456096 (=> (not res!1394173) (not e!2141070))))

(assert (=> b!3456096 (= res!1394173 (not call!249308))))

(declare-fun b!3456097 () Bool)

(assert (=> b!3456097 (= e!2141075 (not (= (head!7307 lt!1173692) (c!591406 (regex!5432 lt!1173682)))))))

(declare-fun b!3456098 () Bool)

(assert (=> b!3456098 (= e!2141073 (not lt!1174015))))

(declare-fun b!3456099 () Bool)

(declare-fun res!1394175 () Bool)

(assert (=> b!3456099 (=> res!1394175 e!2141072)))

(assert (=> b!3456099 (= res!1394175 (not ((_ is ElementMatch!10191) (regex!5432 lt!1173682))))))

(assert (=> b!3456099 (= e!2141073 e!2141072)))

(declare-fun b!3456100 () Bool)

(declare-fun e!2141074 () Bool)

(assert (=> b!3456100 (= e!2141074 e!2141075)))

(declare-fun res!1394171 () Bool)

(assert (=> b!3456100 (=> res!1394171 e!2141075)))

(assert (=> b!3456100 (= res!1394171 call!249308)))

(declare-fun b!3456101 () Bool)

(assert (=> b!3456101 (= e!2141072 e!2141074)))

(declare-fun res!1394170 () Bool)

(assert (=> b!3456101 (=> (not res!1394170) (not e!2141074))))

(assert (=> b!3456101 (= res!1394170 (not lt!1174015))))

(assert (= (and d!993987 c!591557) b!3456088))

(assert (= (and d!993987 (not c!591557)) b!3456092))

(assert (= (and d!993987 c!591558) b!3456095))

(assert (= (and d!993987 (not c!591558)) b!3456090))

(assert (= (and b!3456090 c!591559) b!3456098))

(assert (= (and b!3456090 (not c!591559)) b!3456099))

(assert (= (and b!3456099 (not res!1394175)) b!3456093))

(assert (= (and b!3456093 res!1394172) b!3456096))

(assert (= (and b!3456096 res!1394173) b!3456094))

(assert (= (and b!3456094 res!1394169) b!3456091))

(assert (= (and b!3456093 (not res!1394176)) b!3456101))

(assert (= (and b!3456101 res!1394170) b!3456100))

(assert (= (and b!3456100 (not res!1394171)) b!3456089))

(assert (= (and b!3456089 (not res!1394174)) b!3456097))

(assert (= (or b!3456095 b!3456096 b!3456100) bm!249303))

(declare-fun m!3855883 () Bool)

(assert (=> b!3456089 m!3855883))

(assert (=> b!3456089 m!3855883))

(declare-fun m!3855885 () Bool)

(assert (=> b!3456089 m!3855885))

(assert (=> b!3456094 m!3855883))

(assert (=> b!3456094 m!3855883))

(assert (=> b!3456094 m!3855885))

(declare-fun m!3855887 () Bool)

(assert (=> b!3456088 m!3855887))

(declare-fun m!3855889 () Bool)

(assert (=> bm!249303 m!3855889))

(assert (=> d!993987 m!3855889))

(declare-fun m!3855891 () Bool)

(assert (=> d!993987 m!3855891))

(declare-fun m!3855893 () Bool)

(assert (=> b!3456097 m!3855893))

(assert (=> b!3456092 m!3855893))

(assert (=> b!3456092 m!3855893))

(declare-fun m!3855895 () Bool)

(assert (=> b!3456092 m!3855895))

(assert (=> b!3456092 m!3855883))

(assert (=> b!3456092 m!3855895))

(assert (=> b!3456092 m!3855883))

(declare-fun m!3855897 () Bool)

(assert (=> b!3456092 m!3855897))

(assert (=> b!3456091 m!3855893))

(assert (=> b!3455326 d!993987))

(declare-fun d!993989 () Bool)

(assert (=> d!993989 (= (get!11879 lt!1173696) (v!36810 lt!1173696))))

(assert (=> b!3455326 d!993989))

(declare-fun d!993991 () Bool)

(declare-fun c!591560 () Bool)

(assert (=> d!993991 (= c!591560 ((_ is IntegerValue!16986) (value!175272 (h!42555 tokens!494))))))

(declare-fun e!2141079 () Bool)

(assert (=> d!993991 (= (inv!21 (value!175272 (h!42555 tokens!494))) e!2141079)))

(declare-fun b!3456102 () Bool)

(assert (=> b!3456102 (= e!2141079 (inv!16 (value!175272 (h!42555 tokens!494))))))

(declare-fun b!3456103 () Bool)

(declare-fun res!1394177 () Bool)

(declare-fun e!2141077 () Bool)

(assert (=> b!3456103 (=> res!1394177 e!2141077)))

(assert (=> b!3456103 (= res!1394177 (not ((_ is IntegerValue!16988) (value!175272 (h!42555 tokens!494)))))))

(declare-fun e!2141078 () Bool)

(assert (=> b!3456103 (= e!2141078 e!2141077)))

(declare-fun b!3456104 () Bool)

(assert (=> b!3456104 (= e!2141079 e!2141078)))

(declare-fun c!591561 () Bool)

(assert (=> b!3456104 (= c!591561 ((_ is IntegerValue!16987) (value!175272 (h!42555 tokens!494))))))

(declare-fun b!3456105 () Bool)

(assert (=> b!3456105 (= e!2141077 (inv!15 (value!175272 (h!42555 tokens!494))))))

(declare-fun b!3456106 () Bool)

(assert (=> b!3456106 (= e!2141078 (inv!17 (value!175272 (h!42555 tokens!494))))))

(assert (= (and d!993991 c!591560) b!3456102))

(assert (= (and d!993991 (not c!591560)) b!3456104))

(assert (= (and b!3456104 c!591561) b!3456106))

(assert (= (and b!3456104 (not c!591561)) b!3456103))

(assert (= (and b!3456103 (not res!1394177)) b!3456105))

(declare-fun m!3855899 () Bool)

(assert (=> b!3456102 m!3855899))

(declare-fun m!3855901 () Bool)

(assert (=> b!3456105 m!3855901))

(declare-fun m!3855903 () Bool)

(assert (=> b!3456106 m!3855903))

(assert (=> b!3455324 d!993991))

(declare-fun d!993993 () Bool)

(assert (=> d!993993 (= (inv!50295 (tag!6036 (rule!8018 separatorToken!241))) (= (mod (str.len (value!175271 (tag!6036 (rule!8018 separatorToken!241)))) 2) 0))))

(assert (=> b!3455325 d!993993))

(declare-fun d!993995 () Bool)

(declare-fun res!1394178 () Bool)

(declare-fun e!2141080 () Bool)

(assert (=> d!993995 (=> (not res!1394178) (not e!2141080))))

(assert (=> d!993995 (= res!1394178 (semiInverseModEq!2278 (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241))) (toValue!7656 (transformation!5432 (rule!8018 separatorToken!241)))))))

(assert (=> d!993995 (= (inv!50299 (transformation!5432 (rule!8018 separatorToken!241))) e!2141080)))

(declare-fun b!3456107 () Bool)

(assert (=> b!3456107 (= e!2141080 (equivClasses!2177 (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241))) (toValue!7656 (transformation!5432 (rule!8018 separatorToken!241)))))))

(assert (= (and d!993995 res!1394178) b!3456107))

(declare-fun m!3855905 () Bool)

(assert (=> d!993995 m!3855905))

(declare-fun m!3855907 () Bool)

(assert (=> b!3456107 m!3855907))

(assert (=> b!3455325 d!993995))

(declare-fun d!993997 () Bool)

(assert (=> d!993997 (= (inv!50295 (tag!6036 (rule!8018 (h!42555 tokens!494)))) (= (mod (str.len (value!175271 (tag!6036 (rule!8018 (h!42555 tokens!494))))) 2) 0))))

(assert (=> b!3455328 d!993997))

(declare-fun d!993999 () Bool)

(declare-fun res!1394179 () Bool)

(declare-fun e!2141081 () Bool)

(assert (=> d!993999 (=> (not res!1394179) (not e!2141081))))

(assert (=> d!993999 (= res!1394179 (semiInverseModEq!2278 (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494)))) (toValue!7656 (transformation!5432 (rule!8018 (h!42555 tokens!494))))))))

(assert (=> d!993999 (= (inv!50299 (transformation!5432 (rule!8018 (h!42555 tokens!494)))) e!2141081)))

(declare-fun b!3456108 () Bool)

(assert (=> b!3456108 (= e!2141081 (equivClasses!2177 (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494)))) (toValue!7656 (transformation!5432 (rule!8018 (h!42555 tokens!494))))))))

(assert (= (and d!993999 res!1394179) b!3456108))

(declare-fun m!3855909 () Bool)

(assert (=> d!993999 m!3855909))

(declare-fun m!3855911 () Bool)

(assert (=> b!3456108 m!3855911))

(assert (=> b!3455328 d!993999))

(declare-fun d!994001 () Bool)

(declare-fun c!591564 () Bool)

(assert (=> d!994001 (= c!591564 ((_ is Cons!37135) tokens!494))))

(declare-fun e!2141084 () List!37257)

(assert (=> d!994001 (= (printWithSeparatorTokenList!308 thiss!18206 tokens!494 separatorToken!241) e!2141084)))

(declare-fun b!3456113 () Bool)

(assert (=> b!3456113 (= e!2141084 (++!9147 (++!9147 (list!13511 (charsOf!3446 (h!42555 tokens!494))) (list!13511 (charsOf!3446 separatorToken!241))) (printWithSeparatorTokenList!308 thiss!18206 (t!272288 tokens!494) separatorToken!241)))))

(declare-fun b!3456114 () Bool)

(assert (=> b!3456114 (= e!2141084 Nil!37133)))

(assert (= (and d!994001 c!591564) b!3456113))

(assert (= (and d!994001 (not c!591564)) b!3456114))

(assert (=> b!3456113 m!3854615))

(declare-fun m!3855913 () Bool)

(assert (=> b!3456113 m!3855913))

(assert (=> b!3456113 m!3854667))

(declare-fun m!3855915 () Bool)

(assert (=> b!3456113 m!3855915))

(assert (=> b!3456113 m!3854667))

(assert (=> b!3456113 m!3854663))

(assert (=> b!3456113 m!3854679))

(assert (=> b!3456113 m!3854663))

(assert (=> b!3456113 m!3854617))

(assert (=> b!3456113 m!3854679))

(assert (=> b!3456113 m!3855913))

(assert (=> b!3456113 m!3854615))

(assert (=> b!3456113 m!3854617))

(assert (=> b!3455329 d!994001))

(declare-fun e!2141085 () Bool)

(declare-fun b!3456118 () Bool)

(declare-fun lt!1174016 () List!37257)

(assert (=> b!3456118 (= e!2141085 (or (not (= lt!1173695 Nil!37133)) (= lt!1174016 lt!1173702)))))

(declare-fun d!994003 () Bool)

(assert (=> d!994003 e!2141085))

(declare-fun res!1394181 () Bool)

(assert (=> d!994003 (=> (not res!1394181) (not e!2141085))))

(assert (=> d!994003 (= res!1394181 (= (content!5177 lt!1174016) ((_ map or) (content!5177 lt!1173702) (content!5177 lt!1173695))))))

(declare-fun e!2141086 () List!37257)

(assert (=> d!994003 (= lt!1174016 e!2141086)))

(declare-fun c!591565 () Bool)

(assert (=> d!994003 (= c!591565 ((_ is Nil!37133) lt!1173702))))

(assert (=> d!994003 (= (++!9147 lt!1173702 lt!1173695) lt!1174016)))

(declare-fun b!3456116 () Bool)

(assert (=> b!3456116 (= e!2141086 (Cons!37133 (h!42553 lt!1173702) (++!9147 (t!272286 lt!1173702) lt!1173695)))))

(declare-fun b!3456117 () Bool)

(declare-fun res!1394180 () Bool)

(assert (=> b!3456117 (=> (not res!1394180) (not e!2141085))))

(assert (=> b!3456117 (= res!1394180 (= (size!28157 lt!1174016) (+ (size!28157 lt!1173702) (size!28157 lt!1173695))))))

(declare-fun b!3456115 () Bool)

(assert (=> b!3456115 (= e!2141086 lt!1173695)))

(assert (= (and d!994003 c!591565) b!3456115))

(assert (= (and d!994003 (not c!591565)) b!3456116))

(assert (= (and d!994003 res!1394181) b!3456117))

(assert (= (and b!3456117 res!1394180) b!3456118))

(declare-fun m!3855917 () Bool)

(assert (=> d!994003 m!3855917))

(assert (=> d!994003 m!3855779))

(assert (=> d!994003 m!3855765))

(declare-fun m!3855919 () Bool)

(assert (=> b!3456116 m!3855919))

(declare-fun m!3855921 () Bool)

(assert (=> b!3456117 m!3855921))

(assert (=> b!3456117 m!3855785))

(assert (=> b!3456117 m!3855773))

(assert (=> b!3455329 d!994003))

(declare-fun b!3456122 () Bool)

(declare-fun lt!1174017 () List!37257)

(declare-fun e!2141087 () Bool)

(assert (=> b!3456122 (= e!2141087 (or (not (= (printWithSeparatorTokenList!308 thiss!18206 (t!272288 (t!272288 tokens!494)) separatorToken!241) Nil!37133)) (= lt!1174017 (++!9147 (list!13511 (charsOf!3446 (h!42555 (t!272288 tokens!494)))) lt!1173702))))))

(declare-fun d!994005 () Bool)

(assert (=> d!994005 e!2141087))

(declare-fun res!1394183 () Bool)

(assert (=> d!994005 (=> (not res!1394183) (not e!2141087))))

(assert (=> d!994005 (= res!1394183 (= (content!5177 lt!1174017) ((_ map or) (content!5177 (++!9147 (list!13511 (charsOf!3446 (h!42555 (t!272288 tokens!494)))) lt!1173702)) (content!5177 (printWithSeparatorTokenList!308 thiss!18206 (t!272288 (t!272288 tokens!494)) separatorToken!241)))))))

(declare-fun e!2141088 () List!37257)

(assert (=> d!994005 (= lt!1174017 e!2141088)))

(declare-fun c!591566 () Bool)

(assert (=> d!994005 (= c!591566 ((_ is Nil!37133) (++!9147 (list!13511 (charsOf!3446 (h!42555 (t!272288 tokens!494)))) lt!1173702)))))

(assert (=> d!994005 (= (++!9147 (++!9147 (list!13511 (charsOf!3446 (h!42555 (t!272288 tokens!494)))) lt!1173702) (printWithSeparatorTokenList!308 thiss!18206 (t!272288 (t!272288 tokens!494)) separatorToken!241)) lt!1174017)))

(declare-fun b!3456120 () Bool)

(assert (=> b!3456120 (= e!2141088 (Cons!37133 (h!42553 (++!9147 (list!13511 (charsOf!3446 (h!42555 (t!272288 tokens!494)))) lt!1173702)) (++!9147 (t!272286 (++!9147 (list!13511 (charsOf!3446 (h!42555 (t!272288 tokens!494)))) lt!1173702)) (printWithSeparatorTokenList!308 thiss!18206 (t!272288 (t!272288 tokens!494)) separatorToken!241))))))

(declare-fun b!3456121 () Bool)

(declare-fun res!1394182 () Bool)

(assert (=> b!3456121 (=> (not res!1394182) (not e!2141087))))

(assert (=> b!3456121 (= res!1394182 (= (size!28157 lt!1174017) (+ (size!28157 (++!9147 (list!13511 (charsOf!3446 (h!42555 (t!272288 tokens!494)))) lt!1173702)) (size!28157 (printWithSeparatorTokenList!308 thiss!18206 (t!272288 (t!272288 tokens!494)) separatorToken!241)))))))

(declare-fun b!3456119 () Bool)

(assert (=> b!3456119 (= e!2141088 (printWithSeparatorTokenList!308 thiss!18206 (t!272288 (t!272288 tokens!494)) separatorToken!241))))

(assert (= (and d!994005 c!591566) b!3456119))

(assert (= (and d!994005 (not c!591566)) b!3456120))

(assert (= (and d!994005 res!1394183) b!3456121))

(assert (= (and b!3456121 res!1394182) b!3456122))

(declare-fun m!3855923 () Bool)

(assert (=> d!994005 m!3855923))

(assert (=> d!994005 m!3854673))

(declare-fun m!3855925 () Bool)

(assert (=> d!994005 m!3855925))

(assert (=> d!994005 m!3854675))

(declare-fun m!3855927 () Bool)

(assert (=> d!994005 m!3855927))

(assert (=> b!3456120 m!3854675))

(declare-fun m!3855929 () Bool)

(assert (=> b!3456120 m!3855929))

(declare-fun m!3855931 () Bool)

(assert (=> b!3456121 m!3855931))

(assert (=> b!3456121 m!3854673))

(declare-fun m!3855933 () Bool)

(assert (=> b!3456121 m!3855933))

(assert (=> b!3456121 m!3854675))

(declare-fun m!3855935 () Bool)

(assert (=> b!3456121 m!3855935))

(assert (=> b!3455329 d!994005))

(declare-fun d!994007 () Bool)

(declare-fun lt!1174018 () BalanceConc!22092)

(assert (=> d!994007 (= (list!13511 lt!1174018) (originalCharacters!6146 separatorToken!241))))

(assert (=> d!994007 (= lt!1174018 (dynLambda!15622 (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241))) (value!175272 separatorToken!241)))))

(assert (=> d!994007 (= (charsOf!3446 separatorToken!241) lt!1174018)))

(declare-fun b_lambda!99367 () Bool)

(assert (=> (not b_lambda!99367) (not d!994007)))

(assert (=> d!994007 t!272356))

(declare-fun b_and!242915 () Bool)

(assert (= b_and!242909 (and (=> t!272356 result!232100) b_and!242915)))

(assert (=> d!994007 t!272358))

(declare-fun b_and!242917 () Bool)

(assert (= b_and!242911 (and (=> t!272358 result!232102) b_and!242917)))

(assert (=> d!994007 t!272360))

(declare-fun b_and!242919 () Bool)

(assert (= b_and!242913 (and (=> t!272360 result!232104) b_and!242919)))

(declare-fun m!3855937 () Bool)

(assert (=> d!994007 m!3855937))

(assert (=> d!994007 m!3855743))

(assert (=> b!3455329 d!994007))

(declare-fun d!994009 () Bool)

(assert (=> d!994009 (= (list!13511 (charsOf!3446 (h!42555 (t!272288 tokens!494)))) (list!13514 (c!591407 (charsOf!3446 (h!42555 (t!272288 tokens!494))))))))

(declare-fun bs!560075 () Bool)

(assert (= bs!560075 d!994009))

(declare-fun m!3855939 () Bool)

(assert (=> bs!560075 m!3855939))

(assert (=> b!3455329 d!994009))

(declare-fun e!2141089 () Bool)

(declare-fun b!3456126 () Bool)

(declare-fun lt!1174019 () List!37257)

(assert (=> b!3456126 (= e!2141089 (or (not (= lt!1173702 Nil!37133)) (= lt!1174019 (list!13511 (charsOf!3446 (h!42555 (t!272288 tokens!494)))))))))

(declare-fun d!994011 () Bool)

(assert (=> d!994011 e!2141089))

(declare-fun res!1394185 () Bool)

(assert (=> d!994011 (=> (not res!1394185) (not e!2141089))))

(assert (=> d!994011 (= res!1394185 (= (content!5177 lt!1174019) ((_ map or) (content!5177 (list!13511 (charsOf!3446 (h!42555 (t!272288 tokens!494))))) (content!5177 lt!1173702))))))

(declare-fun e!2141090 () List!37257)

(assert (=> d!994011 (= lt!1174019 e!2141090)))

(declare-fun c!591567 () Bool)

(assert (=> d!994011 (= c!591567 ((_ is Nil!37133) (list!13511 (charsOf!3446 (h!42555 (t!272288 tokens!494))))))))

(assert (=> d!994011 (= (++!9147 (list!13511 (charsOf!3446 (h!42555 (t!272288 tokens!494)))) lt!1173702) lt!1174019)))

(declare-fun b!3456124 () Bool)

(assert (=> b!3456124 (= e!2141090 (Cons!37133 (h!42553 (list!13511 (charsOf!3446 (h!42555 (t!272288 tokens!494))))) (++!9147 (t!272286 (list!13511 (charsOf!3446 (h!42555 (t!272288 tokens!494))))) lt!1173702)))))

(declare-fun b!3456125 () Bool)

(declare-fun res!1394184 () Bool)

(assert (=> b!3456125 (=> (not res!1394184) (not e!2141089))))

(assert (=> b!3456125 (= res!1394184 (= (size!28157 lt!1174019) (+ (size!28157 (list!13511 (charsOf!3446 (h!42555 (t!272288 tokens!494))))) (size!28157 lt!1173702))))))

(declare-fun b!3456123 () Bool)

(assert (=> b!3456123 (= e!2141090 lt!1173702)))

(assert (= (and d!994011 c!591567) b!3456123))

(assert (= (and d!994011 (not c!591567)) b!3456124))

(assert (= (and d!994011 res!1394185) b!3456125))

(assert (= (and b!3456125 res!1394184) b!3456126))

(declare-fun m!3855941 () Bool)

(assert (=> d!994011 m!3855941))

(assert (=> d!994011 m!3854671))

(declare-fun m!3855943 () Bool)

(assert (=> d!994011 m!3855943))

(assert (=> d!994011 m!3855779))

(declare-fun m!3855945 () Bool)

(assert (=> b!3456124 m!3855945))

(declare-fun m!3855947 () Bool)

(assert (=> b!3456125 m!3855947))

(assert (=> b!3456125 m!3854671))

(declare-fun m!3855949 () Bool)

(assert (=> b!3456125 m!3855949))

(assert (=> b!3456125 m!3855785))

(assert (=> b!3455329 d!994011))

(declare-fun d!994013 () Bool)

(declare-fun c!591568 () Bool)

(assert (=> d!994013 (= c!591568 ((_ is Cons!37135) (t!272288 (t!272288 tokens!494))))))

(declare-fun e!2141091 () List!37257)

(assert (=> d!994013 (= (printWithSeparatorTokenList!308 thiss!18206 (t!272288 (t!272288 tokens!494)) separatorToken!241) e!2141091)))

(declare-fun b!3456127 () Bool)

(assert (=> b!3456127 (= e!2141091 (++!9147 (++!9147 (list!13511 (charsOf!3446 (h!42555 (t!272288 (t!272288 tokens!494))))) (list!13511 (charsOf!3446 separatorToken!241))) (printWithSeparatorTokenList!308 thiss!18206 (t!272288 (t!272288 (t!272288 tokens!494))) separatorToken!241)))))

(declare-fun b!3456128 () Bool)

(assert (=> b!3456128 (= e!2141091 Nil!37133)))

(assert (= (and d!994013 c!591568) b!3456127))

(assert (= (and d!994013 (not c!591568)) b!3456128))

(declare-fun m!3855951 () Bool)

(assert (=> b!3456127 m!3855951))

(declare-fun m!3855953 () Bool)

(assert (=> b!3456127 m!3855953))

(declare-fun m!3855955 () Bool)

(assert (=> b!3456127 m!3855955))

(declare-fun m!3855957 () Bool)

(assert (=> b!3456127 m!3855957))

(assert (=> b!3456127 m!3855955))

(assert (=> b!3456127 m!3854663))

(assert (=> b!3456127 m!3854679))

(assert (=> b!3456127 m!3854663))

(declare-fun m!3855959 () Bool)

(assert (=> b!3456127 m!3855959))

(assert (=> b!3456127 m!3854679))

(assert (=> b!3456127 m!3855953))

(assert (=> b!3456127 m!3855951))

(assert (=> b!3456127 m!3855959))

(assert (=> b!3455329 d!994013))

(declare-fun d!994015 () Bool)

(declare-fun c!591569 () Bool)

(assert (=> d!994015 (= c!591569 ((_ is Cons!37135) (t!272288 tokens!494)))))

(declare-fun e!2141092 () List!37257)

(assert (=> d!994015 (= (printWithSeparatorTokenList!308 thiss!18206 (t!272288 tokens!494) separatorToken!241) e!2141092)))

(declare-fun b!3456129 () Bool)

(assert (=> b!3456129 (= e!2141092 (++!9147 (++!9147 (list!13511 (charsOf!3446 (h!42555 (t!272288 tokens!494)))) (list!13511 (charsOf!3446 separatorToken!241))) (printWithSeparatorTokenList!308 thiss!18206 (t!272288 (t!272288 tokens!494)) separatorToken!241)))))

(declare-fun b!3456130 () Bool)

(assert (=> b!3456130 (= e!2141092 Nil!37133)))

(assert (= (and d!994015 c!591569) b!3456129))

(assert (= (and d!994015 (not c!591569)) b!3456130))

(assert (=> b!3456129 m!3854661))

(declare-fun m!3855961 () Bool)

(assert (=> b!3456129 m!3855961))

(assert (=> b!3456129 m!3854675))

(declare-fun m!3855963 () Bool)

(assert (=> b!3456129 m!3855963))

(assert (=> b!3456129 m!3854675))

(assert (=> b!3456129 m!3854663))

(assert (=> b!3456129 m!3854679))

(assert (=> b!3456129 m!3854663))

(assert (=> b!3456129 m!3854671))

(assert (=> b!3456129 m!3854679))

(assert (=> b!3456129 m!3855961))

(assert (=> b!3456129 m!3854661))

(assert (=> b!3456129 m!3854671))

(assert (=> b!3455329 d!994015))

(declare-fun d!994017 () Bool)

(assert (=> d!994017 (= (list!13511 (charsOf!3446 separatorToken!241)) (list!13514 (c!591407 (charsOf!3446 separatorToken!241))))))

(declare-fun bs!560076 () Bool)

(assert (= bs!560076 d!994017))

(declare-fun m!3855965 () Bool)

(assert (=> bs!560076 m!3855965))

(assert (=> b!3455329 d!994017))

(declare-fun d!994019 () Bool)

(declare-fun lt!1174020 () BalanceConc!22092)

(assert (=> d!994019 (= (list!13511 lt!1174020) (originalCharacters!6146 (h!42555 (t!272288 tokens!494))))))

(assert (=> d!994019 (= lt!1174020 (dynLambda!15622 (toChars!7515 (transformation!5432 (rule!8018 (h!42555 (t!272288 tokens!494))))) (value!175272 (h!42555 (t!272288 tokens!494)))))))

(assert (=> d!994019 (= (charsOf!3446 (h!42555 (t!272288 tokens!494))) lt!1174020)))

(declare-fun b_lambda!99369 () Bool)

(assert (=> (not b_lambda!99369) (not d!994019)))

(declare-fun t!272362 () Bool)

(declare-fun tb!188177 () Bool)

(assert (=> (and b!3455313 (= (toChars!7515 (transformation!5432 (h!42554 rules!2135))) (toChars!7515 (transformation!5432 (rule!8018 (h!42555 (t!272288 tokens!494)))))) t!272362) tb!188177))

(declare-fun b!3456131 () Bool)

(declare-fun e!2141093 () Bool)

(declare-fun tp!1077364 () Bool)

(assert (=> b!3456131 (= e!2141093 (and (inv!50300 (c!591407 (dynLambda!15622 (toChars!7515 (transformation!5432 (rule!8018 (h!42555 (t!272288 tokens!494))))) (value!175272 (h!42555 (t!272288 tokens!494)))))) tp!1077364))))

(declare-fun result!232106 () Bool)

(assert (=> tb!188177 (= result!232106 (and (inv!50301 (dynLambda!15622 (toChars!7515 (transformation!5432 (rule!8018 (h!42555 (t!272288 tokens!494))))) (value!175272 (h!42555 (t!272288 tokens!494))))) e!2141093))))

(assert (= tb!188177 b!3456131))

(declare-fun m!3855967 () Bool)

(assert (=> b!3456131 m!3855967))

(declare-fun m!3855969 () Bool)

(assert (=> tb!188177 m!3855969))

(assert (=> d!994019 t!272362))

(declare-fun b_and!242921 () Bool)

(assert (= b_and!242915 (and (=> t!272362 result!232106) b_and!242921)))

(declare-fun t!272364 () Bool)

(declare-fun tb!188179 () Bool)

(assert (=> (and b!3455341 (= (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494)))) (toChars!7515 (transformation!5432 (rule!8018 (h!42555 (t!272288 tokens!494)))))) t!272364) tb!188179))

(declare-fun result!232108 () Bool)

(assert (= result!232108 result!232106))

(assert (=> d!994019 t!272364))

(declare-fun b_and!242923 () Bool)

(assert (= b_and!242917 (and (=> t!272364 result!232108) b_and!242923)))

(declare-fun t!272366 () Bool)

(declare-fun tb!188181 () Bool)

(assert (=> (and b!3455318 (= (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241))) (toChars!7515 (transformation!5432 (rule!8018 (h!42555 (t!272288 tokens!494)))))) t!272366) tb!188181))

(declare-fun result!232110 () Bool)

(assert (= result!232110 result!232106))

(assert (=> d!994019 t!272366))

(declare-fun b_and!242925 () Bool)

(assert (= b_and!242919 (and (=> t!272366 result!232110) b_and!242925)))

(declare-fun m!3855971 () Bool)

(assert (=> d!994019 m!3855971))

(declare-fun m!3855973 () Bool)

(assert (=> d!994019 m!3855973))

(assert (=> b!3455329 d!994019))

(declare-fun d!994021 () Bool)

(declare-fun lt!1174023 () Bool)

(declare-fun isEmpty!21478 (List!37259) Bool)

(assert (=> d!994021 (= lt!1174023 (isEmpty!21478 (list!13513 (_1!21552 (lex!2347 thiss!18206 rules!2135 lt!1173689)))))))

(declare-fun isEmpty!21479 (Conc!11240) Bool)

(assert (=> d!994021 (= lt!1174023 (isEmpty!21479 (c!591408 (_1!21552 (lex!2347 thiss!18206 rules!2135 lt!1173689)))))))

(assert (=> d!994021 (= (isEmpty!21465 (_1!21552 (lex!2347 thiss!18206 rules!2135 lt!1173689))) lt!1174023)))

(declare-fun bs!560077 () Bool)

(assert (= bs!560077 d!994021))

(declare-fun m!3855975 () Bool)

(assert (=> bs!560077 m!3855975))

(assert (=> bs!560077 m!3855975))

(declare-fun m!3855977 () Bool)

(assert (=> bs!560077 m!3855977))

(declare-fun m!3855979 () Bool)

(assert (=> bs!560077 m!3855979))

(assert (=> b!3455327 d!994021))

(declare-fun b!3456132 () Bool)

(declare-fun e!2141095 () Bool)

(declare-fun e!2141094 () Bool)

(assert (=> b!3456132 (= e!2141095 e!2141094)))

(declare-fun res!1394188 () Bool)

(declare-fun lt!1174024 () tuple2!36836)

(assert (=> b!3456132 (= res!1394188 (< (size!28161 (_2!21552 lt!1174024)) (size!28161 lt!1173689)))))

(assert (=> b!3456132 (=> (not res!1394188) (not e!2141094))))

(declare-fun d!994023 () Bool)

(declare-fun e!2141096 () Bool)

(assert (=> d!994023 e!2141096))

(declare-fun res!1394187 () Bool)

(assert (=> d!994023 (=> (not res!1394187) (not e!2141096))))

(assert (=> d!994023 (= res!1394187 e!2141095)))

(declare-fun c!591570 () Bool)

(assert (=> d!994023 (= c!591570 (> (size!28156 (_1!21552 lt!1174024)) 0))))

(assert (=> d!994023 (= lt!1174024 (lexTailRecV2!1052 thiss!18206 rules!2135 lt!1173689 (BalanceConc!22093 Empty!11239) lt!1173689 (BalanceConc!22095 Empty!11240)))))

(assert (=> d!994023 (= (lex!2347 thiss!18206 rules!2135 lt!1173689) lt!1174024)))

(declare-fun b!3456133 () Bool)

(declare-fun res!1394186 () Bool)

(assert (=> b!3456133 (=> (not res!1394186) (not e!2141096))))

(assert (=> b!3456133 (= res!1394186 (= (list!13513 (_1!21552 lt!1174024)) (_1!21556 (lexList!1444 thiss!18206 rules!2135 (list!13511 lt!1173689)))))))

(declare-fun b!3456134 () Bool)

(assert (=> b!3456134 (= e!2141095 (= (_2!21552 lt!1174024) lt!1173689))))

(declare-fun b!3456135 () Bool)

(assert (=> b!3456135 (= e!2141094 (not (isEmpty!21465 (_1!21552 lt!1174024))))))

(declare-fun b!3456136 () Bool)

(assert (=> b!3456136 (= e!2141096 (= (list!13511 (_2!21552 lt!1174024)) (_2!21556 (lexList!1444 thiss!18206 rules!2135 (list!13511 lt!1173689)))))))

(assert (= (and d!994023 c!591570) b!3456132))

(assert (= (and d!994023 (not c!591570)) b!3456134))

(assert (= (and b!3456132 res!1394188) b!3456135))

(assert (= (and d!994023 res!1394187) b!3456133))

(assert (= (and b!3456133 res!1394186) b!3456136))

(declare-fun m!3855981 () Bool)

(assert (=> b!3456132 m!3855981))

(declare-fun m!3855983 () Bool)

(assert (=> b!3456132 m!3855983))

(declare-fun m!3855985 () Bool)

(assert (=> b!3456135 m!3855985))

(declare-fun m!3855987 () Bool)

(assert (=> b!3456133 m!3855987))

(declare-fun m!3855989 () Bool)

(assert (=> b!3456133 m!3855989))

(assert (=> b!3456133 m!3855989))

(declare-fun m!3855991 () Bool)

(assert (=> b!3456133 m!3855991))

(declare-fun m!3855993 () Bool)

(assert (=> b!3456136 m!3855993))

(assert (=> b!3456136 m!3855989))

(assert (=> b!3456136 m!3855989))

(assert (=> b!3456136 m!3855991))

(declare-fun m!3855995 () Bool)

(assert (=> d!994023 m!3855995))

(declare-fun m!3855997 () Bool)

(assert (=> d!994023 m!3855997))

(assert (=> b!3455327 d!994023))

(declare-fun d!994025 () Bool)

(declare-fun fromListB!1775 (List!37257) BalanceConc!22092)

(assert (=> d!994025 (= (seqFromList!3917 lt!1173692) (fromListB!1775 lt!1173692))))

(declare-fun bs!560078 () Bool)

(assert (= bs!560078 d!994025))

(declare-fun m!3855999 () Bool)

(assert (=> bs!560078 m!3855999))

(assert (=> b!3455327 d!994025))

(declare-fun b!3456150 () Bool)

(declare-fun b_free!89773 () Bool)

(declare-fun b_next!90477 () Bool)

(assert (=> b!3456150 (= b_free!89773 (not b_next!90477))))

(declare-fun t!272368 () Bool)

(declare-fun tb!188183 () Bool)

(assert (=> (and b!3456150 (= (toValue!7656 (transformation!5432 (rule!8018 (h!42555 (t!272288 tokens!494))))) (toValue!7656 (transformation!5432 (rule!8018 (h!42555 tokens!494))))) t!272368) tb!188183))

(declare-fun result!232114 () Bool)

(assert (= result!232114 result!232048))

(assert (=> d!993821 t!272368))

(declare-fun b_and!242927 () Bool)

(declare-fun tp!1077375 () Bool)

(assert (=> b!3456150 (= tp!1077375 (and (=> t!272368 result!232114) b_and!242927))))

(declare-fun b_free!89775 () Bool)

(declare-fun b_next!90479 () Bool)

(assert (=> b!3456150 (= b_free!89775 (not b_next!90479))))

(declare-fun t!272370 () Bool)

(declare-fun tb!188185 () Bool)

(assert (=> (and b!3456150 (= (toChars!7515 (transformation!5432 (rule!8018 (h!42555 (t!272288 tokens!494))))) (toChars!7515 (transformation!5432 (rule!8018 (h!42555 (t!272288 tokens!494)))))) t!272370) tb!188185))

(declare-fun result!232116 () Bool)

(assert (= result!232116 result!232106))

(assert (=> d!994019 t!272370))

(declare-fun t!272372 () Bool)

(declare-fun tb!188187 () Bool)

(assert (=> (and b!3456150 (= (toChars!7515 (transformation!5432 (rule!8018 (h!42555 (t!272288 tokens!494))))) (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494))))) t!272372) tb!188187))

(declare-fun result!232118 () Bool)

(assert (= result!232118 result!232032))

(assert (=> d!993713 t!272372))

(declare-fun t!272374 () Bool)

(declare-fun tb!188189 () Bool)

(assert (=> (and b!3456150 (= (toChars!7515 (transformation!5432 (rule!8018 (h!42555 (t!272288 tokens!494))))) (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241)))) t!272374) tb!188189))

(declare-fun result!232120 () Bool)

(assert (= result!232120 result!232100))

(assert (=> b!3456008 t!272374))

(assert (=> d!994007 t!272374))

(assert (=> b!3456075 t!272372))

(declare-fun tp!1077379 () Bool)

(declare-fun b_and!242929 () Bool)

(assert (=> b!3456150 (= tp!1077379 (and (=> t!272374 result!232120) (=> t!272372 result!232118) (=> t!272370 result!232116) b_and!242929))))

(declare-fun e!2141112 () Bool)

(assert (=> b!3455308 (= tp!1077295 e!2141112)))

(declare-fun tp!1077378 () Bool)

(declare-fun e!2141110 () Bool)

(declare-fun b!3456148 () Bool)

(declare-fun e!2141111 () Bool)

(assert (=> b!3456148 (= e!2141110 (and (inv!21 (value!175272 (h!42555 (t!272288 tokens!494)))) e!2141111 tp!1077378))))

(declare-fun e!2141114 () Bool)

(assert (=> b!3456150 (= e!2141114 (and tp!1077375 tp!1077379))))

(declare-fun b!3456149 () Bool)

(declare-fun tp!1077376 () Bool)

(assert (=> b!3456149 (= e!2141111 (and tp!1077376 (inv!50295 (tag!6036 (rule!8018 (h!42555 (t!272288 tokens!494))))) (inv!50299 (transformation!5432 (rule!8018 (h!42555 (t!272288 tokens!494))))) e!2141114))))

(declare-fun tp!1077377 () Bool)

(declare-fun b!3456147 () Bool)

(assert (=> b!3456147 (= e!2141112 (and (inv!50298 (h!42555 (t!272288 tokens!494))) e!2141110 tp!1077377))))

(assert (= b!3456149 b!3456150))

(assert (= b!3456148 b!3456149))

(assert (= b!3456147 b!3456148))

(assert (= (and b!3455308 ((_ is Cons!37135) (t!272288 tokens!494))) b!3456147))

(declare-fun m!3856001 () Bool)

(assert (=> b!3456148 m!3856001))

(declare-fun m!3856003 () Bool)

(assert (=> b!3456149 m!3856003))

(declare-fun m!3856005 () Bool)

(assert (=> b!3456149 m!3856005))

(declare-fun m!3856007 () Bool)

(assert (=> b!3456147 m!3856007))

(declare-fun e!2141117 () Bool)

(assert (=> b!3455344 (= tp!1077289 e!2141117)))

(declare-fun b!3456161 () Bool)

(declare-fun tp_is_empty!17549 () Bool)

(assert (=> b!3456161 (= e!2141117 tp_is_empty!17549)))

(declare-fun b!3456163 () Bool)

(declare-fun tp!1077394 () Bool)

(assert (=> b!3456163 (= e!2141117 tp!1077394)))

(declare-fun b!3456162 () Bool)

(declare-fun tp!1077391 () Bool)

(declare-fun tp!1077390 () Bool)

(assert (=> b!3456162 (= e!2141117 (and tp!1077391 tp!1077390))))

(declare-fun b!3456164 () Bool)

(declare-fun tp!1077392 () Bool)

(declare-fun tp!1077393 () Bool)

(assert (=> b!3456164 (= e!2141117 (and tp!1077392 tp!1077393))))

(assert (= (and b!3455344 ((_ is ElementMatch!10191) (regex!5432 (h!42554 rules!2135)))) b!3456161))

(assert (= (and b!3455344 ((_ is Concat!15853) (regex!5432 (h!42554 rules!2135)))) b!3456162))

(assert (= (and b!3455344 ((_ is Star!10191) (regex!5432 (h!42554 rules!2135)))) b!3456163))

(assert (= (and b!3455344 ((_ is Union!10191) (regex!5432 (h!42554 rules!2135)))) b!3456164))

(declare-fun b!3456175 () Bool)

(declare-fun b_free!89777 () Bool)

(declare-fun b_next!90481 () Bool)

(assert (=> b!3456175 (= b_free!89777 (not b_next!90481))))

(declare-fun tb!188191 () Bool)

(declare-fun t!272376 () Bool)

(assert (=> (and b!3456175 (= (toValue!7656 (transformation!5432 (h!42554 (t!272287 rules!2135)))) (toValue!7656 (transformation!5432 (rule!8018 (h!42555 tokens!494))))) t!272376) tb!188191))

(declare-fun result!232126 () Bool)

(assert (= result!232126 result!232048))

(assert (=> d!993821 t!272376))

(declare-fun tp!1077404 () Bool)

(declare-fun b_and!242931 () Bool)

(assert (=> b!3456175 (= tp!1077404 (and (=> t!272376 result!232126) b_and!242931))))

(declare-fun b_free!89779 () Bool)

(declare-fun b_next!90483 () Bool)

(assert (=> b!3456175 (= b_free!89779 (not b_next!90483))))

(declare-fun t!272378 () Bool)

(declare-fun tb!188193 () Bool)

(assert (=> (and b!3456175 (= (toChars!7515 (transformation!5432 (h!42554 (t!272287 rules!2135)))) (toChars!7515 (transformation!5432 (rule!8018 (h!42555 (t!272288 tokens!494)))))) t!272378) tb!188193))

(declare-fun result!232128 () Bool)

(assert (= result!232128 result!232106))

(assert (=> d!994019 t!272378))

(declare-fun tb!188195 () Bool)

(declare-fun t!272380 () Bool)

(assert (=> (and b!3456175 (= (toChars!7515 (transformation!5432 (h!42554 (t!272287 rules!2135)))) (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494))))) t!272380) tb!188195))

(declare-fun result!232130 () Bool)

(assert (= result!232130 result!232032))

(assert (=> d!993713 t!272380))

(declare-fun tb!188197 () Bool)

(declare-fun t!272382 () Bool)

(assert (=> (and b!3456175 (= (toChars!7515 (transformation!5432 (h!42554 (t!272287 rules!2135)))) (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241)))) t!272382) tb!188197))

(declare-fun result!232132 () Bool)

(assert (= result!232132 result!232100))

(assert (=> b!3456008 t!272382))

(assert (=> d!994007 t!272382))

(assert (=> b!3456075 t!272380))

(declare-fun tp!1077406 () Bool)

(declare-fun b_and!242933 () Bool)

(assert (=> b!3456175 (= tp!1077406 (and (=> t!272380 result!232130) (=> t!272382 result!232132) (=> t!272378 result!232128) b_and!242933))))

(declare-fun e!2141129 () Bool)

(assert (=> b!3456175 (= e!2141129 (and tp!1077404 tp!1077406))))

(declare-fun tp!1077405 () Bool)

(declare-fun e!2141126 () Bool)

(declare-fun b!3456174 () Bool)

(assert (=> b!3456174 (= e!2141126 (and tp!1077405 (inv!50295 (tag!6036 (h!42554 (t!272287 rules!2135)))) (inv!50299 (transformation!5432 (h!42554 (t!272287 rules!2135)))) e!2141129))))

(declare-fun b!3456173 () Bool)

(declare-fun e!2141128 () Bool)

(declare-fun tp!1077403 () Bool)

(assert (=> b!3456173 (= e!2141128 (and e!2141126 tp!1077403))))

(assert (=> b!3455323 (= tp!1077297 e!2141128)))

(assert (= b!3456174 b!3456175))

(assert (= b!3456173 b!3456174))

(assert (= (and b!3455323 ((_ is Cons!37134) (t!272287 rules!2135))) b!3456173))

(declare-fun m!3856009 () Bool)

(assert (=> b!3456174 m!3856009))

(declare-fun m!3856011 () Bool)

(assert (=> b!3456174 m!3856011))

(declare-fun b!3456180 () Bool)

(declare-fun e!2141132 () Bool)

(declare-fun tp!1077409 () Bool)

(assert (=> b!3456180 (= e!2141132 (and tp_is_empty!17549 tp!1077409))))

(assert (=> b!3455324 (= tp!1077298 e!2141132)))

(assert (= (and b!3455324 ((_ is Cons!37133) (originalCharacters!6146 (h!42555 tokens!494)))) b!3456180))

(declare-fun b!3456181 () Bool)

(declare-fun e!2141133 () Bool)

(declare-fun tp!1077410 () Bool)

(assert (=> b!3456181 (= e!2141133 (and tp_is_empty!17549 tp!1077410))))

(assert (=> b!3455314 (= tp!1077288 e!2141133)))

(assert (= (and b!3455314 ((_ is Cons!37133) (originalCharacters!6146 separatorToken!241))) b!3456181))

(declare-fun e!2141134 () Bool)

(assert (=> b!3455325 (= tp!1077294 e!2141134)))

(declare-fun b!3456182 () Bool)

(assert (=> b!3456182 (= e!2141134 tp_is_empty!17549)))

(declare-fun b!3456184 () Bool)

(declare-fun tp!1077415 () Bool)

(assert (=> b!3456184 (= e!2141134 tp!1077415)))

(declare-fun b!3456183 () Bool)

(declare-fun tp!1077412 () Bool)

(declare-fun tp!1077411 () Bool)

(assert (=> b!3456183 (= e!2141134 (and tp!1077412 tp!1077411))))

(declare-fun b!3456185 () Bool)

(declare-fun tp!1077413 () Bool)

(declare-fun tp!1077414 () Bool)

(assert (=> b!3456185 (= e!2141134 (and tp!1077413 tp!1077414))))

(assert (= (and b!3455325 ((_ is ElementMatch!10191) (regex!5432 (rule!8018 separatorToken!241)))) b!3456182))

(assert (= (and b!3455325 ((_ is Concat!15853) (regex!5432 (rule!8018 separatorToken!241)))) b!3456183))

(assert (= (and b!3455325 ((_ is Star!10191) (regex!5432 (rule!8018 separatorToken!241)))) b!3456184))

(assert (= (and b!3455325 ((_ is Union!10191) (regex!5432 (rule!8018 separatorToken!241)))) b!3456185))

(declare-fun b!3456188 () Bool)

(declare-fun e!2141137 () Bool)

(assert (=> b!3456188 (= e!2141137 true)))

(declare-fun b!3456187 () Bool)

(declare-fun e!2141136 () Bool)

(assert (=> b!3456187 (= e!2141136 e!2141137)))

(declare-fun b!3456186 () Bool)

(declare-fun e!2141135 () Bool)

(assert (=> b!3456186 (= e!2141135 e!2141136)))

(assert (=> b!3455354 e!2141135))

(assert (= b!3456187 b!3456188))

(assert (= b!3456186 b!3456187))

(assert (= (and b!3455354 ((_ is Cons!37134) (t!272287 rules!2135))) b!3456186))

(assert (=> b!3456188 (< (dynLambda!15618 order!19749 (toValue!7656 (transformation!5432 (h!42554 (t!272287 rules!2135))))) (dynLambda!15619 order!19751 lambda!121707))))

(assert (=> b!3456188 (< (dynLambda!15620 order!19753 (toChars!7515 (transformation!5432 (h!42554 (t!272287 rules!2135))))) (dynLambda!15619 order!19751 lambda!121707))))

(declare-fun e!2141138 () Bool)

(assert (=> b!3455328 (= tp!1077287 e!2141138)))

(declare-fun b!3456189 () Bool)

(assert (=> b!3456189 (= e!2141138 tp_is_empty!17549)))

(declare-fun b!3456191 () Bool)

(declare-fun tp!1077420 () Bool)

(assert (=> b!3456191 (= e!2141138 tp!1077420)))

(declare-fun b!3456190 () Bool)

(declare-fun tp!1077417 () Bool)

(declare-fun tp!1077416 () Bool)

(assert (=> b!3456190 (= e!2141138 (and tp!1077417 tp!1077416))))

(declare-fun b!3456192 () Bool)

(declare-fun tp!1077418 () Bool)

(declare-fun tp!1077419 () Bool)

(assert (=> b!3456192 (= e!2141138 (and tp!1077418 tp!1077419))))

(assert (= (and b!3455328 ((_ is ElementMatch!10191) (regex!5432 (rule!8018 (h!42555 tokens!494))))) b!3456189))

(assert (= (and b!3455328 ((_ is Concat!15853) (regex!5432 (rule!8018 (h!42555 tokens!494))))) b!3456190))

(assert (= (and b!3455328 ((_ is Star!10191) (regex!5432 (rule!8018 (h!42555 tokens!494))))) b!3456191))

(assert (= (and b!3455328 ((_ is Union!10191) (regex!5432 (rule!8018 (h!42555 tokens!494))))) b!3456192))

(declare-fun b_lambda!99371 () Bool)

(assert (= b_lambda!99325 (or b!3455345 b_lambda!99371)))

(declare-fun bs!560079 () Bool)

(declare-fun d!994027 () Bool)

(assert (= bs!560079 (and d!994027 b!3455345)))

(assert (=> bs!560079 (= (dynLambda!15621 lambda!121707 (h!42555 (t!272288 tokens!494))) (rulesProduceIndividualToken!2513 thiss!18206 rules!2135 (h!42555 (t!272288 tokens!494))))))

(assert (=> bs!560079 m!3854583))

(assert (=> d!993833 d!994027))

(declare-fun b_lambda!99373 () Bool)

(assert (= b_lambda!99323 (or (and b!3455313 b_free!89753 (= (toValue!7656 (transformation!5432 (h!42554 rules!2135))) (toValue!7656 (transformation!5432 (rule!8018 (h!42555 tokens!494)))))) (and b!3455341 b_free!89757) (and b!3456175 b_free!89777 (= (toValue!7656 (transformation!5432 (h!42554 (t!272287 rules!2135)))) (toValue!7656 (transformation!5432 (rule!8018 (h!42555 tokens!494)))))) (and b!3455318 b_free!89761 (= (toValue!7656 (transformation!5432 (rule!8018 separatorToken!241))) (toValue!7656 (transformation!5432 (rule!8018 (h!42555 tokens!494)))))) (and b!3456150 b_free!89773 (= (toValue!7656 (transformation!5432 (rule!8018 (h!42555 (t!272288 tokens!494))))) (toValue!7656 (transformation!5432 (rule!8018 (h!42555 tokens!494)))))) b_lambda!99373)))

(declare-fun b_lambda!99375 () Bool)

(assert (= b_lambda!99365 (or (and b!3455341 b_free!89759) (and b!3455318 b_free!89763 (= (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241))) (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494)))))) (and b!3456175 b_free!89779 (= (toChars!7515 (transformation!5432 (h!42554 (t!272287 rules!2135)))) (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494)))))) (and b!3456150 b_free!89775 (= (toChars!7515 (transformation!5432 (rule!8018 (h!42555 (t!272288 tokens!494))))) (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494)))))) (and b!3455313 b_free!89755 (= (toChars!7515 (transformation!5432 (h!42554 rules!2135))) (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494)))))) b_lambda!99375)))

(declare-fun b_lambda!99377 () Bool)

(assert (= b_lambda!99367 (or (and b!3456150 b_free!89775 (= (toChars!7515 (transformation!5432 (rule!8018 (h!42555 (t!272288 tokens!494))))) (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241))))) (and b!3455313 b_free!89755 (= (toChars!7515 (transformation!5432 (h!42554 rules!2135))) (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241))))) (and b!3456175 b_free!89779 (= (toChars!7515 (transformation!5432 (h!42554 (t!272287 rules!2135)))) (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241))))) (and b!3455341 b_free!89759 (= (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494)))) (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241))))) (and b!3455318 b_free!89763) b_lambda!99377)))

(declare-fun b_lambda!99379 () Bool)

(assert (= b_lambda!99369 (or (and b!3455318 b_free!89763 (= (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241))) (toChars!7515 (transformation!5432 (rule!8018 (h!42555 (t!272288 tokens!494))))))) (and b!3455341 b_free!89759 (= (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494)))) (toChars!7515 (transformation!5432 (rule!8018 (h!42555 (t!272288 tokens!494))))))) (and b!3456175 b_free!89779 (= (toChars!7515 (transformation!5432 (h!42554 (t!272287 rules!2135)))) (toChars!7515 (transformation!5432 (rule!8018 (h!42555 (t!272288 tokens!494))))))) (and b!3456150 b_free!89775) (and b!3455313 b_free!89755 (= (toChars!7515 (transformation!5432 (h!42554 rules!2135))) (toChars!7515 (transformation!5432 (rule!8018 (h!42555 (t!272288 tokens!494))))))) b_lambda!99379)))

(declare-fun b_lambda!99381 () Bool)

(assert (= b_lambda!99311 (or b!3455317 b_lambda!99381)))

(declare-fun bs!560080 () Bool)

(declare-fun d!994029 () Bool)

(assert (= bs!560080 (and d!994029 b!3455317)))

(assert (=> bs!560080 (= (dynLambda!15621 lambda!121706 (h!42555 (t!272288 tokens!494))) (not (isSeparator!5432 (rule!8018 (h!42555 (t!272288 tokens!494))))))))

(assert (=> d!993707 d!994029))

(declare-fun b_lambda!99383 () Bool)

(assert (= b_lambda!99313 (or b!3455317 b_lambda!99383)))

(declare-fun bs!560081 () Bool)

(declare-fun d!994031 () Bool)

(assert (= bs!560081 (and d!994031 b!3455317)))

(assert (=> bs!560081 (= (dynLambda!15621 lambda!121706 (h!42555 tokens!494)) (not (isSeparator!5432 (rule!8018 (h!42555 tokens!494)))))))

(assert (=> d!993709 d!994031))

(declare-fun b_lambda!99385 () Bool)

(assert (= b_lambda!99315 (or (and b!3455341 b_free!89759) (and b!3455318 b_free!89763 (= (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241))) (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494)))))) (and b!3456175 b_free!89779 (= (toChars!7515 (transformation!5432 (h!42554 (t!272287 rules!2135)))) (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494)))))) (and b!3456150 b_free!89775 (= (toChars!7515 (transformation!5432 (rule!8018 (h!42555 (t!272288 tokens!494))))) (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494)))))) (and b!3455313 b_free!89755 (= (toChars!7515 (transformation!5432 (h!42554 rules!2135))) (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494)))))) b_lambda!99385)))

(declare-fun b_lambda!99387 () Bool)

(assert (= b_lambda!99363 (or b!3455317 b_lambda!99387)))

(assert (=> b!3456049 d!994031))

(declare-fun b_lambda!99389 () Bool)

(assert (= b_lambda!99361 (or (and b!3456150 b_free!89775 (= (toChars!7515 (transformation!5432 (rule!8018 (h!42555 (t!272288 tokens!494))))) (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241))))) (and b!3455313 b_free!89755 (= (toChars!7515 (transformation!5432 (h!42554 rules!2135))) (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241))))) (and b!3456175 b_free!89779 (= (toChars!7515 (transformation!5432 (h!42554 (t!272287 rules!2135)))) (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241))))) (and b!3455341 b_free!89759 (= (toChars!7515 (transformation!5432 (rule!8018 (h!42555 tokens!494)))) (toChars!7515 (transformation!5432 (rule!8018 separatorToken!241))))) (and b!3455318 b_free!89763) b_lambda!99389)))

(check-sat (not b!3455765) (not b!3456183) (not b!3456076) (not d!993965) (not b!3456055) (not b!3456025) (not b!3455564) (not b!3456125) (not b!3456057) (not b!3456050) (not b!3456081) (not b!3456008) (not b!3455502) (not d!993977) (not b!3456108) (not d!993741) (not b!3455527) (not b!3455528) (not b!3456147) (not d!993751) (not b!3455523) (not d!993995) (not b!3455768) (not bs!560079) (not d!993839) (not b!3456087) (not b!3455571) (not b!3455764) (not b!3455741) (not d!993713) b_and!242863 (not b!3455770) (not b!3456135) (not bm!249286) (not b!3455853) (not b!3456001) (not b!3455769) (not b!3456163) (not d!993815) (not bm!249293) (not d!993819) (not b!3455501) (not b_lambda!99377) (not b!3456073) (not b!3455634) (not d!994025) (not d!994005) (not b!3455566) (not d!993813) (not d!993975) (not b!3455734) (not d!994011) (not b!3455758) (not b!3455751) (not d!993709) (not d!993979) (not b!3456102) (not b!3455524) (not d!993981) b_and!242859 (not b!3455437) (not b_lambda!99383) (not b!3456191) (not b!3456105) (not b!3455740) (not d!994017) (not d!993833) (not b_lambda!99389) (not b_next!90467) b_and!242927 (not b!3455851) (not b!3456079) (not b!3455747) (not b!3455438) (not b!3455767) (not b!3456075) b_and!242861 (not b!3456180) (not b_lambda!99381) (not d!993957) (not tb!188119) (not b!3455442) (not b_lambda!99371) (not b!3455749) (not b!3456162) (not d!993777) (not b!3456184) (not b!3456136) (not b!3455733) (not d!993955) (not b!3455526) (not b!3456097) (not b!3456190) (not d!993987) (not b!3456024) (not b!3456174) (not d!994007) (not bm!249290) (not b!3456106) (not b!3455488) (not b!3456164) (not b_next!90461) (not d!993749) (not bm!249300) (not b!3456009) (not b!3455565) (not b!3455532) (not d!993953) (not b!3455567) (not d!993843) (not b!3456010) (not d!993707) (not b!3456078) (not b!3456089) (not b!3455848) (not d!993715) (not b!3455439) (not d!993949) (not d!993857) (not d!993847) (not d!994009) (not bm!249289) (not b!3455512) (not d!993811) (not bm!249291) (not b!3456186) (not d!993999) (not d!993729) (not b!3455641) (not b!3456133) (not d!993823) (not b!3456116) (not b!3455856) (not d!993743) (not b!3456131) (not d!993761) (not b!3455443) (not b_lambda!99387) (not d!993971) (not b_next!90463) (not b!3456181) b_and!242929 (not d!993725) (not d!993835) (not b!3455784) (not d!993969) (not d!993723) (not b!3455643) (not d!993945) (not b_lambda!99373) (not b!3456051) (not b!3456124) (not b!3455569) (not b!3456148) (not d!993691) (not d!993721) (not b!3456120) (not b!3455568) (not b!3455448) (not b_lambda!99375) (not b_next!90477) (not tb!188171) (not tb!188131) (not d!993829) (not b!3455529) (not b!3456121) (not b!3455763) (not b!3456113) (not b!3455636) (not b!3456068) (not b!3455570) (not b!3456086) (not d!993967) (not b!3456192) (not b!3456036) b_and!242925 (not b!3456054) (not b_lambda!99385) (not b!3456092) (not d!993869) (not bm!249287) (not b!3456091) (not bm!249303) (not b_next!90457) (not b!3455735) (not d!994003) (not b!3455732) (not d!994021) (not b!3456052) (not b!3455850) (not d!993961) (not b!3456117) (not d!994019) (not b!3456132) (not d!993783) (not b!3456035) (not b!3455531) (not d!993737) (not bm!249302) (not b!3456000) (not b!3456129) (not b_lambda!99379) (not b!3456088) (not b!3455748) (not b!3456040) (not d!993837) (not b_next!90465) (not d!993947) (not d!994023) (not b!3456107) (not b!3456094) (not b!3455847) (not b!3456185) (not d!993739) (not b!3456127) (not b!3456060) (not b!3455461) (not b_next!90459) b_and!242931 b_and!242923 (not d!993711) (not d!993825) (not d!993767) (not b!3456021) b_and!242921 tp_is_empty!17549 (not tb!188177) (not d!993719) (not b_next!90483) (not d!993809) (not b!3456149) (not b!3456044) (not b_next!90481) (not b!3456065) (not b_next!90479) (not b!3456039) (not b!3456067) (not b!3455504) (not b!3456173) b_and!242933)
(check-sat b_and!242863 b_and!242859 b_and!242861 (not b_next!90461) (not b_next!90463) b_and!242929 (not b_next!90477) b_and!242925 (not b_next!90457) (not b_next!90465) b_and!242921 (not b_next!90467) b_and!242927 (not b_next!90459) b_and!242931 b_and!242923 (not b_next!90483) b_and!242933 (not b_next!90481) (not b_next!90479))
