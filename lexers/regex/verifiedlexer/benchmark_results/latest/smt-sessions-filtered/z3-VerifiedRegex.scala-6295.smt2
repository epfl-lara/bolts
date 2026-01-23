; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!314902 () Bool)

(assert start!314902)

(declare-fun b!3380062 () Bool)

(declare-fun b_free!88449 () Bool)

(declare-fun b_next!89153 () Bool)

(assert (=> b!3380062 (= b_free!88449 (not b_next!89153))))

(declare-fun tp!1056815 () Bool)

(declare-fun b_and!234803 () Bool)

(assert (=> b!3380062 (= tp!1056815 b_and!234803)))

(declare-fun b_free!88451 () Bool)

(declare-fun b_next!89155 () Bool)

(assert (=> b!3380062 (= b_free!88451 (not b_next!89155))))

(declare-fun tp!1056818 () Bool)

(declare-fun b_and!234805 () Bool)

(assert (=> b!3380062 (= tp!1056818 b_and!234805)))

(declare-fun b!3380068 () Bool)

(declare-fun b_free!88453 () Bool)

(declare-fun b_next!89157 () Bool)

(assert (=> b!3380068 (= b_free!88453 (not b_next!89157))))

(declare-fun tp!1056824 () Bool)

(declare-fun b_and!234807 () Bool)

(assert (=> b!3380068 (= tp!1056824 b_and!234807)))

(declare-fun b_free!88455 () Bool)

(declare-fun b_next!89159 () Bool)

(assert (=> b!3380068 (= b_free!88455 (not b_next!89159))))

(declare-fun tp!1056814 () Bool)

(declare-fun b_and!234809 () Bool)

(assert (=> b!3380068 (= tp!1056814 b_and!234809)))

(declare-fun b!3380071 () Bool)

(declare-fun b_free!88457 () Bool)

(declare-fun b_next!89161 () Bool)

(assert (=> b!3380071 (= b_free!88457 (not b_next!89161))))

(declare-fun tp!1056825 () Bool)

(declare-fun b_and!234811 () Bool)

(assert (=> b!3380071 (= tp!1056825 b_and!234811)))

(declare-fun b_free!88459 () Bool)

(declare-fun b_next!89163 () Bool)

(assert (=> b!3380071 (= b_free!88459 (not b_next!89163))))

(declare-fun tp!1056822 () Bool)

(declare-fun b_and!234813 () Bool)

(assert (=> b!3380071 (= tp!1056822 b_and!234813)))

(declare-fun b!3380043 () Bool)

(declare-fun res!1367370 () Bool)

(declare-fun e!2098196 () Bool)

(assert (=> b!3380043 (=> (not res!1367370) (not e!2098196))))

(declare-datatypes ((C!20444 0))(
  ( (C!20445 (val!12270 Int)) )
))
(declare-datatypes ((Regex!10129 0))(
  ( (ElementMatch!10129 (c!575530 C!20444)) (Concat!15729 (regOne!20770 Regex!10129) (regTwo!20770 Regex!10129)) (EmptyExpr!10129) (Star!10129 (reg!10458 Regex!10129)) (EmptyLang!10129) (Union!10129 (regOne!20771 Regex!10129) (regTwo!20771 Regex!10129)) )
))
(declare-datatypes ((List!36970 0))(
  ( (Nil!36846) (Cons!36846 (h!42266 (_ BitVec 16)) (t!263095 List!36970)) )
))
(declare-datatypes ((TokenValue!5600 0))(
  ( (FloatLiteralValue!11200 (text!39645 List!36970)) (TokenValueExt!5599 (__x!23417 Int)) (Broken!28000 (value!173479 List!36970)) (Object!5723) (End!5600) (Def!5600) (Underscore!5600) (Match!5600) (Else!5600) (Error!5600) (Case!5600) (If!5600) (Extends!5600) (Abstract!5600) (Class!5600) (Val!5600) (DelimiterValue!11200 (del!5660 List!36970)) (KeywordValue!5606 (value!173480 List!36970)) (CommentValue!11200 (value!173481 List!36970)) (WhitespaceValue!11200 (value!173482 List!36970)) (IndentationValue!5600 (value!173483 List!36970)) (String!41333) (Int32!5600) (Broken!28001 (value!173484 List!36970)) (Boolean!5601) (Unit!51951) (OperatorValue!5603 (op!5660 List!36970)) (IdentifierValue!11200 (value!173485 List!36970)) (IdentifierValue!11201 (value!173486 List!36970)) (WhitespaceValue!11201 (value!173487 List!36970)) (True!11200) (False!11200) (Broken!28002 (value!173488 List!36970)) (Broken!28003 (value!173489 List!36970)) (True!11201) (RightBrace!5600) (RightBracket!5600) (Colon!5600) (Null!5600) (Comma!5600) (LeftBracket!5600) (False!11201) (LeftBrace!5600) (ImaginaryLiteralValue!5600 (text!39646 List!36970)) (StringLiteralValue!16800 (value!173490 List!36970)) (EOFValue!5600 (value!173491 List!36970)) (IdentValue!5600 (value!173492 List!36970)) (DelimiterValue!11201 (value!173493 List!36970)) (DedentValue!5600 (value!173494 List!36970)) (NewLineValue!5600 (value!173495 List!36970)) (IntegerValue!16800 (value!173496 (_ BitVec 32)) (text!39647 List!36970)) (IntegerValue!16801 (value!173497 Int) (text!39648 List!36970)) (Times!5600) (Or!5600) (Equal!5600) (Minus!5600) (Broken!28004 (value!173498 List!36970)) (And!5600) (Div!5600) (LessEqual!5600) (Mod!5600) (Concat!15730) (Not!5600) (Plus!5600) (SpaceValue!5600 (value!173499 List!36970)) (IntegerValue!16802 (value!173500 Int) (text!39649 List!36970)) (StringLiteralValue!16801 (text!39650 List!36970)) (FloatLiteralValue!11201 (text!39651 List!36970)) (BytesLiteralValue!5600 (value!173501 List!36970)) (CommentValue!11201 (value!173502 List!36970)) (StringLiteralValue!16802 (value!173503 List!36970)) (ErrorTokenValue!5600 (msg!5661 List!36970)) )
))
(declare-datatypes ((List!36971 0))(
  ( (Nil!36847) (Cons!36847 (h!42267 C!20444) (t!263096 List!36971)) )
))
(declare-datatypes ((IArray!22235 0))(
  ( (IArray!22236 (innerList!11175 List!36971)) )
))
(declare-datatypes ((Conc!11115 0))(
  ( (Node!11115 (left!28726 Conc!11115) (right!29056 Conc!11115) (csize!22460 Int) (cheight!11326 Int)) (Leaf!17411 (xs!14269 IArray!22235) (csize!22461 Int)) (Empty!11115) )
))
(declare-datatypes ((BalanceConc!21844 0))(
  ( (BalanceConc!21845 (c!575531 Conc!11115)) )
))
(declare-datatypes ((String!41334 0))(
  ( (String!41335 (value!173504 String)) )
))
(declare-datatypes ((TokenValueInjection!10628 0))(
  ( (TokenValueInjection!10629 (toValue!7554 Int) (toChars!7413 Int)) )
))
(declare-datatypes ((Rule!10540 0))(
  ( (Rule!10541 (regex!5370 Regex!10129) (tag!5944 String!41334) (isSeparator!5370 Bool) (transformation!5370 TokenValueInjection!10628)) )
))
(declare-datatypes ((Token!10106 0))(
  ( (Token!10107 (value!173505 TokenValue!5600) (rule!7920 Rule!10540) (size!27882 Int) (originalCharacters!6084 List!36971)) )
))
(declare-fun separatorToken!241 () Token!10106)

(declare-datatypes ((LexerInterface!4959 0))(
  ( (LexerInterfaceExt!4956 (__x!23418 Int)) (Lexer!4957) )
))
(declare-fun thiss!18206 () LexerInterface!4959)

(declare-datatypes ((List!36972 0))(
  ( (Nil!36848) (Cons!36848 (h!42268 Rule!10540) (t!263097 List!36972)) )
))
(declare-fun rules!2135 () List!36972)

(declare-fun rulesProduceIndividualToken!2451 (LexerInterface!4959 List!36972 Token!10106) Bool)

(assert (=> b!3380043 (= res!1367370 (rulesProduceIndividualToken!2451 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3380044 () Bool)

(declare-fun e!2098187 () Bool)

(declare-fun e!2098182 () Bool)

(assert (=> b!3380044 (= e!2098187 e!2098182)))

(declare-fun res!1367350 () Bool)

(assert (=> b!3380044 (=> res!1367350 e!2098182)))

(declare-fun lt!1147626 () BalanceConc!21844)

(declare-datatypes ((List!36973 0))(
  ( (Nil!36849) (Cons!36849 (h!42269 Token!10106) (t!263098 List!36973)) )
))
(declare-datatypes ((IArray!22237 0))(
  ( (IArray!22238 (innerList!11176 List!36973)) )
))
(declare-datatypes ((Conc!11116 0))(
  ( (Node!11116 (left!28727 Conc!11116) (right!29057 Conc!11116) (csize!22462 Int) (cheight!11327 Int)) (Leaf!17412 (xs!14270 IArray!22237) (csize!22463 Int)) (Empty!11116) )
))
(declare-datatypes ((BalanceConc!21846 0))(
  ( (BalanceConc!21847 (c!575532 Conc!11116)) )
))
(declare-fun isEmpty!21081 (BalanceConc!21846) Bool)

(declare-datatypes ((tuple2!36428 0))(
  ( (tuple2!36429 (_1!21348 BalanceConc!21846) (_2!21348 BalanceConc!21844)) )
))
(declare-fun lex!2285 (LexerInterface!4959 List!36972 BalanceConc!21844) tuple2!36428)

(assert (=> b!3380044 (= res!1367350 (isEmpty!21081 (_1!21348 (lex!2285 thiss!18206 rules!2135 lt!1147626))))))

(declare-fun lt!1147634 () List!36971)

(declare-fun seqFromList!3793 (List!36971) BalanceConc!21844)

(assert (=> b!3380044 (= lt!1147626 (seqFromList!3793 lt!1147634))))

(declare-fun b!3380045 () Bool)

(declare-fun e!2098181 () Bool)

(declare-fun e!2098178 () Bool)

(assert (=> b!3380045 (= e!2098181 e!2098178)))

(declare-fun res!1367367 () Bool)

(assert (=> b!3380045 (=> (not res!1367367) (not e!2098178))))

(declare-fun lt!1147631 () Rule!10540)

(declare-fun matchR!4721 (Regex!10129 List!36971) Bool)

(assert (=> b!3380045 (= res!1367367 (matchR!4721 (regex!5370 lt!1147631) lt!1147634))))

(declare-datatypes ((Option!7387 0))(
  ( (None!7386) (Some!7386 (v!36464 Rule!10540)) )
))
(declare-fun lt!1147630 () Option!7387)

(declare-fun get!11760 (Option!7387) Rule!10540)

(assert (=> b!3380045 (= lt!1147631 (get!11760 lt!1147630))))

(declare-fun b!3380046 () Bool)

(declare-fun e!2098180 () Bool)

(declare-fun e!2098193 () Bool)

(declare-fun tp!1056821 () Bool)

(declare-fun inv!21 (TokenValue!5600) Bool)

(assert (=> b!3380046 (= e!2098193 (and (inv!21 (value!173505 separatorToken!241)) e!2098180 tp!1056821))))

(declare-fun b!3380047 () Bool)

(declare-fun res!1367362 () Bool)

(declare-fun e!2098177 () Bool)

(assert (=> b!3380047 (=> (not res!1367362) (not e!2098177))))

(declare-fun isEmpty!21082 (List!36972) Bool)

(assert (=> b!3380047 (= res!1367362 (not (isEmpty!21082 rules!2135)))))

(declare-fun b!3380048 () Bool)

(declare-fun e!2098202 () Bool)

(declare-fun contains!6732 (List!36972 Rule!10540) Bool)

(assert (=> b!3380048 (= e!2098202 (contains!6732 rules!2135 (rule!7920 separatorToken!241)))))

(declare-fun b!3380049 () Bool)

(declare-fun tokens!494 () List!36973)

(assert (=> b!3380049 (= e!2098178 (= (rule!7920 (h!42269 tokens!494)) lt!1147631))))

(declare-fun b!3380050 () Bool)

(declare-fun e!2098201 () Bool)

(assert (=> b!3380050 (= e!2098196 (not e!2098201))))

(declare-fun res!1367366 () Bool)

(assert (=> b!3380050 (=> res!1367366 e!2098201)))

(declare-fun lt!1147638 () List!36971)

(declare-fun lt!1147625 () List!36971)

(assert (=> b!3380050 (= res!1367366 (not (= lt!1147638 lt!1147625)))))

(declare-fun printList!1507 (LexerInterface!4959 List!36973) List!36971)

(assert (=> b!3380050 (= lt!1147625 (printList!1507 thiss!18206 (Cons!36849 (h!42269 tokens!494) Nil!36849)))))

(declare-fun lt!1147622 () BalanceConc!21844)

(declare-fun list!13323 (BalanceConc!21844) List!36971)

(assert (=> b!3380050 (= lt!1147638 (list!13323 lt!1147622))))

(declare-fun lt!1147627 () BalanceConc!21846)

(declare-fun printTailRec!1454 (LexerInterface!4959 BalanceConc!21846 Int BalanceConc!21844) BalanceConc!21844)

(assert (=> b!3380050 (= lt!1147622 (printTailRec!1454 thiss!18206 lt!1147627 0 (BalanceConc!21845 Empty!11115)))))

(declare-fun print!2024 (LexerInterface!4959 BalanceConc!21846) BalanceConc!21844)

(assert (=> b!3380050 (= lt!1147622 (print!2024 thiss!18206 lt!1147627))))

(declare-fun singletonSeq!2466 (Token!10106) BalanceConc!21846)

(assert (=> b!3380050 (= lt!1147627 (singletonSeq!2466 (h!42269 tokens!494)))))

(declare-fun res!1367361 () Bool)

(assert (=> start!314902 (=> (not res!1367361) (not e!2098177))))

(get-info :version)

(assert (=> start!314902 (= res!1367361 ((_ is Lexer!4957) thiss!18206))))

(assert (=> start!314902 e!2098177))

(assert (=> start!314902 true))

(declare-fun e!2098191 () Bool)

(assert (=> start!314902 e!2098191))

(declare-fun inv!49917 (Token!10106) Bool)

(assert (=> start!314902 (and (inv!49917 separatorToken!241) e!2098193)))

(declare-fun e!2098195 () Bool)

(assert (=> start!314902 e!2098195))

(declare-fun b!3380051 () Bool)

(declare-fun res!1367359 () Bool)

(assert (=> b!3380051 (=> (not res!1367359) (not e!2098196))))

(declare-fun sepAndNonSepRulesDisjointChars!1564 (List!36972 List!36972) Bool)

(assert (=> b!3380051 (= res!1367359 (sepAndNonSepRulesDisjointChars!1564 rules!2135 rules!2135))))

(declare-fun e!2098184 () Bool)

(declare-fun e!2098186 () Bool)

(declare-fun tp!1056820 () Bool)

(declare-fun b!3380052 () Bool)

(assert (=> b!3380052 (= e!2098186 (and (inv!21 (value!173505 (h!42269 tokens!494))) e!2098184 tp!1056820))))

(declare-fun b!3380053 () Bool)

(declare-fun e!2098173 () Bool)

(assert (=> b!3380053 (= e!2098173 e!2098202)))

(declare-fun res!1367352 () Bool)

(assert (=> b!3380053 (=> res!1367352 e!2098202)))

(assert (=> b!3380053 (= res!1367352 (not (contains!6732 rules!2135 (rule!7920 (h!42269 tokens!494)))))))

(declare-fun lt!1147639 () C!20444)

(declare-fun contains!6733 (List!36971 C!20444) Bool)

(declare-fun usedCharacters!626 (Regex!10129) List!36971)

(assert (=> b!3380053 (not (contains!6733 (usedCharacters!626 (regex!5370 (rule!7920 (h!42269 tokens!494)))) lt!1147639))))

(declare-datatypes ((Unit!51952 0))(
  ( (Unit!51953) )
))
(declare-fun lt!1147619 () Unit!51952)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!210 (LexerInterface!4959 List!36972 List!36972 Rule!10540 Rule!10540 C!20444) Unit!51952)

(assert (=> b!3380053 (= lt!1147619 (lemmaNonSepRuleNotContainsCharContainedInASepRule!210 thiss!18206 rules!2135 rules!2135 (rule!7920 (h!42269 tokens!494)) (rule!7920 separatorToken!241) lt!1147639))))

(declare-fun b!3380054 () Bool)

(declare-fun e!2098179 () Bool)

(declare-fun e!2098185 () Bool)

(assert (=> b!3380054 (= e!2098179 e!2098185)))

(declare-fun res!1367355 () Bool)

(assert (=> b!3380054 (=> res!1367355 e!2098185)))

(declare-fun lt!1147632 () List!36971)

(declare-fun lt!1147620 () BalanceConc!21844)

(declare-fun ++!9003 (List!36971 List!36971) List!36971)

(assert (=> b!3380054 (= res!1367355 (not (= (list!13323 lt!1147620) (++!9003 lt!1147634 lt!1147632))))))

(declare-fun charsOf!3384 (Token!10106) BalanceConc!21844)

(assert (=> b!3380054 (= lt!1147632 (list!13323 (charsOf!3384 separatorToken!241)))))

(declare-fun lt!1147629 () BalanceConc!21846)

(declare-fun printWithSeparatorToken!150 (LexerInterface!4959 BalanceConc!21846 Token!10106) BalanceConc!21844)

(assert (=> b!3380054 (= lt!1147620 (printWithSeparatorToken!150 thiss!18206 lt!1147629 separatorToken!241))))

(declare-fun b!3380055 () Bool)

(declare-fun e!2098197 () Unit!51952)

(declare-fun Unit!51954 () Unit!51952)

(assert (=> b!3380055 (= e!2098197 Unit!51954)))

(declare-fun e!2098188 () Bool)

(declare-fun b!3380056 () Bool)

(declare-fun e!2098174 () Bool)

(declare-fun tp!1056817 () Bool)

(declare-fun inv!49914 (String!41334) Bool)

(declare-fun inv!49918 (TokenValueInjection!10628) Bool)

(assert (=> b!3380056 (= e!2098174 (and tp!1056817 (inv!49914 (tag!5944 (h!42268 rules!2135))) (inv!49918 (transformation!5370 (h!42268 rules!2135))) e!2098188))))

(declare-fun b!3380057 () Bool)

(declare-fun res!1367351 () Bool)

(assert (=> b!3380057 (=> (not res!1367351) (not e!2098196))))

(declare-fun lambda!120455 () Int)

(declare-fun forall!7751 (List!36973 Int) Bool)

(assert (=> b!3380057 (= res!1367351 (forall!7751 tokens!494 lambda!120455))))

(declare-fun b!3380058 () Bool)

(declare-fun Unit!51955 () Unit!51952)

(assert (=> b!3380058 (= e!2098197 Unit!51955)))

(declare-fun lt!1147617 () Unit!51952)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!460 (Regex!10129 List!36971 C!20444) Unit!51952)

(assert (=> b!3380058 (= lt!1147617 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!460 (regex!5370 (rule!7920 separatorToken!241)) lt!1147632 lt!1147639))))

(declare-fun res!1367360 () Bool)

(assert (=> b!3380058 (= res!1367360 (not (matchR!4721 (regex!5370 (rule!7920 separatorToken!241)) lt!1147632)))))

(declare-fun e!2098183 () Bool)

(assert (=> b!3380058 (=> (not res!1367360) (not e!2098183))))

(assert (=> b!3380058 e!2098183))

(declare-fun b!3380059 () Bool)

(declare-fun tp!1056826 () Bool)

(assert (=> b!3380059 (= e!2098191 (and e!2098174 tp!1056826))))

(declare-fun b!3380060 () Bool)

(assert (=> b!3380060 (= e!2098183 false)))

(declare-fun b!3380061 () Bool)

(assert (=> b!3380061 (= e!2098201 e!2098187)))

(declare-fun res!1367365 () Bool)

(assert (=> b!3380061 (=> res!1367365 e!2098187)))

(assert (=> b!3380061 (= res!1367365 (or (not (= lt!1147625 lt!1147634)) (not (= lt!1147638 lt!1147634))))))

(assert (=> b!3380061 (= lt!1147634 (list!13323 (charsOf!3384 (h!42269 tokens!494))))))

(declare-fun e!2098200 () Bool)

(assert (=> b!3380062 (= e!2098200 (and tp!1056815 tp!1056818))))

(declare-fun b!3380063 () Bool)

(declare-fun tp!1056823 () Bool)

(assert (=> b!3380063 (= e!2098180 (and tp!1056823 (inv!49914 (tag!5944 (rule!7920 separatorToken!241))) (inv!49918 (transformation!5370 (rule!7920 separatorToken!241))) e!2098200))))

(declare-fun b!3380064 () Bool)

(assert (=> b!3380064 (= e!2098182 e!2098179)))

(declare-fun res!1367364 () Bool)

(assert (=> b!3380064 (=> res!1367364 e!2098179)))

(assert (=> b!3380064 (= res!1367364 (isSeparator!5370 (rule!7920 (h!42269 tokens!494))))))

(declare-fun lt!1147623 () Unit!51952)

(declare-fun forallContained!1317 (List!36973 Int Token!10106) Unit!51952)

(assert (=> b!3380064 (= lt!1147623 (forallContained!1317 tokens!494 lambda!120455 (h!42269 tokens!494)))))

(declare-fun b!3380065 () Bool)

(declare-fun tp!1056816 () Bool)

(declare-fun e!2098199 () Bool)

(assert (=> b!3380065 (= e!2098184 (and tp!1056816 (inv!49914 (tag!5944 (rule!7920 (h!42269 tokens!494)))) (inv!49918 (transformation!5370 (rule!7920 (h!42269 tokens!494)))) e!2098199))))

(declare-fun b!3380066 () Bool)

(declare-fun e!2098176 () Bool)

(declare-fun e!2098189 () Bool)

(assert (=> b!3380066 (= e!2098176 e!2098189)))

(declare-fun res!1367368 () Bool)

(assert (=> b!3380066 (=> (not res!1367368) (not e!2098189))))

(declare-fun lt!1147633 () Rule!10540)

(assert (=> b!3380066 (= res!1367368 (matchR!4721 (regex!5370 lt!1147633) lt!1147632))))

(declare-fun lt!1147640 () Option!7387)

(assert (=> b!3380066 (= lt!1147633 (get!11760 lt!1147640))))

(declare-fun b!3380067 () Bool)

(declare-fun res!1367353 () Bool)

(assert (=> b!3380067 (=> (not res!1367353) (not e!2098196))))

(assert (=> b!3380067 (= res!1367353 (isSeparator!5370 (rule!7920 separatorToken!241)))))

(assert (=> b!3380068 (= e!2098199 (and tp!1056824 tp!1056814))))

(declare-fun b!3380069 () Bool)

(declare-fun res!1367349 () Bool)

(assert (=> b!3380069 (=> res!1367349 e!2098187)))

(assert (=> b!3380069 (= res!1367349 (not (rulesProduceIndividualToken!2451 thiss!18206 rules!2135 (h!42269 tokens!494))))))

(declare-fun b!3380070 () Bool)

(assert (=> b!3380070 (= e!2098177 e!2098196)))

(declare-fun res!1367356 () Bool)

(assert (=> b!3380070 (=> (not res!1367356) (not e!2098196))))

(declare-fun rulesProduceEachTokenIndividually!1410 (LexerInterface!4959 List!36972 BalanceConc!21846) Bool)

(assert (=> b!3380070 (= res!1367356 (rulesProduceEachTokenIndividually!1410 thiss!18206 rules!2135 lt!1147629))))

(declare-fun seqFromList!3794 (List!36973) BalanceConc!21846)

(assert (=> b!3380070 (= lt!1147629 (seqFromList!3794 tokens!494))))

(assert (=> b!3380071 (= e!2098188 (and tp!1056825 tp!1056822))))

(declare-fun b!3380072 () Bool)

(declare-fun res!1367354 () Bool)

(assert (=> b!3380072 (=> (not res!1367354) (not e!2098177))))

(declare-fun rulesInvariant!4356 (LexerInterface!4959 List!36972) Bool)

(assert (=> b!3380072 (= res!1367354 (rulesInvariant!4356 thiss!18206 rules!2135))))

(declare-fun b!3380073 () Bool)

(assert (=> b!3380073 (= e!2098189 (= (rule!7920 separatorToken!241) lt!1147633))))

(declare-fun b!3380074 () Bool)

(assert (=> b!3380074 (= e!2098185 e!2098173)))

(declare-fun res!1367357 () Bool)

(assert (=> b!3380074 (=> res!1367357 e!2098173)))

(declare-fun lt!1147636 () Bool)

(assert (=> b!3380074 (= res!1367357 lt!1147636)))

(declare-fun lt!1147618 () Unit!51952)

(assert (=> b!3380074 (= lt!1147618 e!2098197)))

(declare-fun c!575529 () Bool)

(assert (=> b!3380074 (= c!575529 lt!1147636)))

(assert (=> b!3380074 (= lt!1147636 (not (contains!6733 (usedCharacters!626 (regex!5370 (rule!7920 separatorToken!241))) lt!1147639)))))

(declare-fun head!7219 (List!36971) C!20444)

(assert (=> b!3380074 (= lt!1147639 (head!7219 lt!1147632))))

(declare-datatypes ((tuple2!36430 0))(
  ( (tuple2!36431 (_1!21349 Token!10106) (_2!21349 List!36971)) )
))
(declare-datatypes ((Option!7388 0))(
  ( (None!7387) (Some!7387 (v!36465 tuple2!36430)) )
))
(declare-fun maxPrefixOneRule!1682 (LexerInterface!4959 Rule!10540 List!36971) Option!7388)

(declare-fun apply!8565 (TokenValueInjection!10628 BalanceConc!21844) TokenValue!5600)

(declare-fun size!27883 (List!36971) Int)

(assert (=> b!3380074 (= (maxPrefixOneRule!1682 thiss!18206 (rule!7920 (h!42269 tokens!494)) lt!1147634) (Some!7387 (tuple2!36431 (Token!10107 (apply!8565 (transformation!5370 (rule!7920 (h!42269 tokens!494))) lt!1147626) (rule!7920 (h!42269 tokens!494)) (size!27883 lt!1147634) lt!1147634) Nil!36847)))))

(declare-fun lt!1147635 () Unit!51952)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!781 (LexerInterface!4959 List!36972 List!36971 List!36971 List!36971 Rule!10540) Unit!51952)

(assert (=> b!3380074 (= lt!1147635 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!781 thiss!18206 rules!2135 lt!1147634 lt!1147634 Nil!36847 (rule!7920 (h!42269 tokens!494))))))

(assert (=> b!3380074 e!2098176))

(declare-fun res!1367369 () Bool)

(assert (=> b!3380074 (=> (not res!1367369) (not e!2098176))))

(declare-fun isDefined!5708 (Option!7387) Bool)

(assert (=> b!3380074 (= res!1367369 (isDefined!5708 lt!1147640))))

(declare-fun getRuleFromTag!1025 (LexerInterface!4959 List!36972 String!41334) Option!7387)

(assert (=> b!3380074 (= lt!1147640 (getRuleFromTag!1025 thiss!18206 rules!2135 (tag!5944 (rule!7920 separatorToken!241))))))

(declare-fun lt!1147628 () Unit!51952)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1025 (LexerInterface!4959 List!36972 List!36971 Token!10106) Unit!51952)

(assert (=> b!3380074 (= lt!1147628 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1025 thiss!18206 rules!2135 lt!1147632 separatorToken!241))))

(assert (=> b!3380074 e!2098181))

(declare-fun res!1367358 () Bool)

(assert (=> b!3380074 (=> (not res!1367358) (not e!2098181))))

(assert (=> b!3380074 (= res!1367358 (isDefined!5708 lt!1147630))))

(assert (=> b!3380074 (= lt!1147630 (getRuleFromTag!1025 thiss!18206 rules!2135 (tag!5944 (rule!7920 (h!42269 tokens!494)))))))

(declare-fun lt!1147637 () Unit!51952)

(assert (=> b!3380074 (= lt!1147637 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1025 thiss!18206 rules!2135 lt!1147634 (h!42269 tokens!494)))))

(declare-fun lt!1147621 () Unit!51952)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!954 (LexerInterface!4959 List!36972 List!36973 Token!10106) Unit!51952)

(assert (=> b!3380074 (= lt!1147621 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!954 thiss!18206 rules!2135 tokens!494 (h!42269 tokens!494)))))

(declare-fun isEmpty!21083 (List!36971) Bool)

(declare-fun getSuffix!1464 (List!36971 List!36971) List!36971)

(assert (=> b!3380074 (isEmpty!21083 (getSuffix!1464 lt!1147634 lt!1147634))))

(declare-fun lt!1147624 () Unit!51952)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!122 (List!36971) Unit!51952)

(assert (=> b!3380074 (= lt!1147624 (lemmaGetSuffixOnListWithItSelfIsEmpty!122 lt!1147634))))

(declare-fun b!3380075 () Bool)

(declare-fun tp!1056819 () Bool)

(assert (=> b!3380075 (= e!2098195 (and (inv!49917 (h!42269 tokens!494)) e!2098186 tp!1056819))))

(declare-fun b!3380076 () Bool)

(declare-fun res!1367363 () Bool)

(assert (=> b!3380076 (=> (not res!1367363) (not e!2098196))))

(assert (=> b!3380076 (= res!1367363 (and (not ((_ is Nil!36849) tokens!494)) ((_ is Nil!36849) (t!263098 tokens!494))))))

(assert (= (and start!314902 res!1367361) b!3380047))

(assert (= (and b!3380047 res!1367362) b!3380072))

(assert (= (and b!3380072 res!1367354) b!3380070))

(assert (= (and b!3380070 res!1367356) b!3380043))

(assert (= (and b!3380043 res!1367370) b!3380067))

(assert (= (and b!3380067 res!1367353) b!3380057))

(assert (= (and b!3380057 res!1367351) b!3380051))

(assert (= (and b!3380051 res!1367359) b!3380076))

(assert (= (and b!3380076 res!1367363) b!3380050))

(assert (= (and b!3380050 (not res!1367366)) b!3380061))

(assert (= (and b!3380061 (not res!1367365)) b!3380069))

(assert (= (and b!3380069 (not res!1367349)) b!3380044))

(assert (= (and b!3380044 (not res!1367350)) b!3380064))

(assert (= (and b!3380064 (not res!1367364)) b!3380054))

(assert (= (and b!3380054 (not res!1367355)) b!3380074))

(assert (= (and b!3380074 res!1367358) b!3380045))

(assert (= (and b!3380045 res!1367367) b!3380049))

(assert (= (and b!3380074 res!1367369) b!3380066))

(assert (= (and b!3380066 res!1367368) b!3380073))

(assert (= (and b!3380074 c!575529) b!3380058))

(assert (= (and b!3380074 (not c!575529)) b!3380055))

(assert (= (and b!3380058 res!1367360) b!3380060))

(assert (= (and b!3380074 (not res!1367357)) b!3380053))

(assert (= (and b!3380053 (not res!1367352)) b!3380048))

(assert (= b!3380056 b!3380071))

(assert (= b!3380059 b!3380056))

(assert (= (and start!314902 ((_ is Cons!36848) rules!2135)) b!3380059))

(assert (= b!3380063 b!3380062))

(assert (= b!3380046 b!3380063))

(assert (= start!314902 b!3380046))

(assert (= b!3380065 b!3380068))

(assert (= b!3380052 b!3380065))

(assert (= b!3380075 b!3380052))

(assert (= (and start!314902 ((_ is Cons!36849) tokens!494)) b!3380075))

(declare-fun m!3743985 () Bool)

(assert (=> b!3380075 m!3743985))

(declare-fun m!3743987 () Bool)

(assert (=> start!314902 m!3743987))

(declare-fun m!3743989 () Bool)

(assert (=> b!3380046 m!3743989))

(declare-fun m!3743991 () Bool)

(assert (=> b!3380058 m!3743991))

(declare-fun m!3743993 () Bool)

(assert (=> b!3380058 m!3743993))

(declare-fun m!3743995 () Bool)

(assert (=> b!3380045 m!3743995))

(declare-fun m!3743997 () Bool)

(assert (=> b!3380045 m!3743997))

(declare-fun m!3743999 () Bool)

(assert (=> b!3380063 m!3743999))

(declare-fun m!3744001 () Bool)

(assert (=> b!3380063 m!3744001))

(declare-fun m!3744003 () Bool)

(assert (=> b!3380051 m!3744003))

(declare-fun m!3744005 () Bool)

(assert (=> b!3380070 m!3744005))

(declare-fun m!3744007 () Bool)

(assert (=> b!3380070 m!3744007))

(declare-fun m!3744009 () Bool)

(assert (=> b!3380044 m!3744009))

(declare-fun m!3744011 () Bool)

(assert (=> b!3380044 m!3744011))

(declare-fun m!3744013 () Bool)

(assert (=> b!3380044 m!3744013))

(declare-fun m!3744015 () Bool)

(assert (=> b!3380057 m!3744015))

(declare-fun m!3744017 () Bool)

(assert (=> b!3380048 m!3744017))

(declare-fun m!3744019 () Bool)

(assert (=> b!3380054 m!3744019))

(declare-fun m!3744021 () Bool)

(assert (=> b!3380054 m!3744021))

(declare-fun m!3744023 () Bool)

(assert (=> b!3380054 m!3744023))

(declare-fun m!3744025 () Bool)

(assert (=> b!3380054 m!3744025))

(assert (=> b!3380054 m!3744021))

(declare-fun m!3744027 () Bool)

(assert (=> b!3380054 m!3744027))

(declare-fun m!3744029 () Bool)

(assert (=> b!3380072 m!3744029))

(declare-fun m!3744031 () Bool)

(assert (=> b!3380050 m!3744031))

(declare-fun m!3744033 () Bool)

(assert (=> b!3380050 m!3744033))

(declare-fun m!3744035 () Bool)

(assert (=> b!3380050 m!3744035))

(declare-fun m!3744037 () Bool)

(assert (=> b!3380050 m!3744037))

(declare-fun m!3744039 () Bool)

(assert (=> b!3380050 m!3744039))

(declare-fun m!3744041 () Bool)

(assert (=> b!3380069 m!3744041))

(declare-fun m!3744043 () Bool)

(assert (=> b!3380043 m!3744043))

(declare-fun m!3744045 () Bool)

(assert (=> b!3380061 m!3744045))

(assert (=> b!3380061 m!3744045))

(declare-fun m!3744047 () Bool)

(assert (=> b!3380061 m!3744047))

(declare-fun m!3744049 () Bool)

(assert (=> b!3380053 m!3744049))

(declare-fun m!3744051 () Bool)

(assert (=> b!3380053 m!3744051))

(assert (=> b!3380053 m!3744051))

(declare-fun m!3744053 () Bool)

(assert (=> b!3380053 m!3744053))

(declare-fun m!3744055 () Bool)

(assert (=> b!3380053 m!3744055))

(declare-fun m!3744057 () Bool)

(assert (=> b!3380047 m!3744057))

(declare-fun m!3744059 () Bool)

(assert (=> b!3380052 m!3744059))

(declare-fun m!3744061 () Bool)

(assert (=> b!3380066 m!3744061))

(declare-fun m!3744063 () Bool)

(assert (=> b!3380066 m!3744063))

(declare-fun m!3744065 () Bool)

(assert (=> b!3380065 m!3744065))

(declare-fun m!3744067 () Bool)

(assert (=> b!3380065 m!3744067))

(declare-fun m!3744069 () Bool)

(assert (=> b!3380074 m!3744069))

(declare-fun m!3744071 () Bool)

(assert (=> b!3380074 m!3744071))

(declare-fun m!3744073 () Bool)

(assert (=> b!3380074 m!3744073))

(assert (=> b!3380074 m!3744073))

(declare-fun m!3744075 () Bool)

(assert (=> b!3380074 m!3744075))

(declare-fun m!3744077 () Bool)

(assert (=> b!3380074 m!3744077))

(declare-fun m!3744079 () Bool)

(assert (=> b!3380074 m!3744079))

(declare-fun m!3744081 () Bool)

(assert (=> b!3380074 m!3744081))

(declare-fun m!3744083 () Bool)

(assert (=> b!3380074 m!3744083))

(declare-fun m!3744085 () Bool)

(assert (=> b!3380074 m!3744085))

(declare-fun m!3744087 () Bool)

(assert (=> b!3380074 m!3744087))

(declare-fun m!3744089 () Bool)

(assert (=> b!3380074 m!3744089))

(assert (=> b!3380074 m!3744087))

(declare-fun m!3744091 () Bool)

(assert (=> b!3380074 m!3744091))

(declare-fun m!3744093 () Bool)

(assert (=> b!3380074 m!3744093))

(declare-fun m!3744095 () Bool)

(assert (=> b!3380074 m!3744095))

(declare-fun m!3744097 () Bool)

(assert (=> b!3380074 m!3744097))

(declare-fun m!3744099 () Bool)

(assert (=> b!3380074 m!3744099))

(declare-fun m!3744101 () Bool)

(assert (=> b!3380074 m!3744101))

(declare-fun m!3744103 () Bool)

(assert (=> b!3380064 m!3744103))

(declare-fun m!3744105 () Bool)

(assert (=> b!3380056 m!3744105))

(declare-fun m!3744107 () Bool)

(assert (=> b!3380056 m!3744107))

(check-sat (not b!3380053) (not b!3380065) (not b!3380072) (not b!3380064) (not b_next!89159) (not b!3380043) (not b_next!89153) b_and!234813 (not b!3380066) b_and!234803 (not b!3380057) (not b!3380045) (not b!3380063) (not b_next!89157) b_and!234805 (not b!3380056) (not b!3380051) b_and!234811 b_and!234809 (not b!3380047) (not b!3380059) (not b!3380044) (not b!3380052) (not b!3380058) (not start!314902) (not b_next!89155) (not b!3380061) (not b!3380046) (not b!3380069) (not b_next!89163) (not b!3380070) (not b!3380048) (not b_next!89161) b_and!234807 (not b!3380074) (not b!3380075) (not b!3380054) (not b!3380050))
(check-sat (not b_next!89157) b_and!234805 (not b_next!89159) (not b_next!89155) (not b_next!89153) b_and!234813 (not b_next!89163) (not b_next!89161) b_and!234803 b_and!234807 b_and!234809 b_and!234811)
(get-model)

(declare-fun d!958886 () Bool)

(declare-fun lt!1147673 () BalanceConc!21844)

(declare-fun printListTailRec!645 (LexerInterface!4959 List!36973 List!36971) List!36971)

(declare-fun dropList!1162 (BalanceConc!21846 Int) List!36973)

(assert (=> d!958886 (= (list!13323 lt!1147673) (printListTailRec!645 thiss!18206 (dropList!1162 lt!1147627 0) (list!13323 (BalanceConc!21845 Empty!11115))))))

(declare-fun e!2098226 () BalanceConc!21844)

(assert (=> d!958886 (= lt!1147673 e!2098226)))

(declare-fun c!575544 () Bool)

(declare-fun size!27885 (BalanceConc!21846) Int)

(assert (=> d!958886 (= c!575544 (>= 0 (size!27885 lt!1147627)))))

(declare-fun e!2098227 () Bool)

(assert (=> d!958886 e!2098227))

(declare-fun res!1367397 () Bool)

(assert (=> d!958886 (=> (not res!1367397) (not e!2098227))))

(assert (=> d!958886 (= res!1367397 (>= 0 0))))

(assert (=> d!958886 (= (printTailRec!1454 thiss!18206 lt!1147627 0 (BalanceConc!21845 Empty!11115)) lt!1147673)))

(declare-fun b!3380115 () Bool)

(assert (=> b!3380115 (= e!2098227 (<= 0 (size!27885 lt!1147627)))))

(declare-fun b!3380116 () Bool)

(assert (=> b!3380116 (= e!2098226 (BalanceConc!21845 Empty!11115))))

(declare-fun b!3380117 () Bool)

(declare-fun ++!9004 (BalanceConc!21844 BalanceConc!21844) BalanceConc!21844)

(declare-fun apply!8566 (BalanceConc!21846 Int) Token!10106)

(assert (=> b!3380117 (= e!2098226 (printTailRec!1454 thiss!18206 lt!1147627 (+ 0 1) (++!9004 (BalanceConc!21845 Empty!11115) (charsOf!3384 (apply!8566 lt!1147627 0)))))))

(declare-fun lt!1147677 () List!36973)

(declare-fun list!13324 (BalanceConc!21846) List!36973)

(assert (=> b!3380117 (= lt!1147677 (list!13324 lt!1147627))))

(declare-fun lt!1147674 () Unit!51952)

(declare-fun lemmaDropApply!1120 (List!36973 Int) Unit!51952)

(assert (=> b!3380117 (= lt!1147674 (lemmaDropApply!1120 lt!1147677 0))))

(declare-fun head!7220 (List!36973) Token!10106)

(declare-fun drop!1960 (List!36973 Int) List!36973)

(declare-fun apply!8567 (List!36973 Int) Token!10106)

(assert (=> b!3380117 (= (head!7220 (drop!1960 lt!1147677 0)) (apply!8567 lt!1147677 0))))

(declare-fun lt!1147676 () Unit!51952)

(assert (=> b!3380117 (= lt!1147676 lt!1147674)))

(declare-fun lt!1147675 () List!36973)

(assert (=> b!3380117 (= lt!1147675 (list!13324 lt!1147627))))

(declare-fun lt!1147671 () Unit!51952)

(declare-fun lemmaDropTail!1004 (List!36973 Int) Unit!51952)

(assert (=> b!3380117 (= lt!1147671 (lemmaDropTail!1004 lt!1147675 0))))

(declare-fun tail!5351 (List!36973) List!36973)

(assert (=> b!3380117 (= (tail!5351 (drop!1960 lt!1147675 0)) (drop!1960 lt!1147675 (+ 0 1)))))

(declare-fun lt!1147672 () Unit!51952)

(assert (=> b!3380117 (= lt!1147672 lt!1147671)))

(assert (= (and d!958886 res!1367397) b!3380115))

(assert (= (and d!958886 c!575544) b!3380116))

(assert (= (and d!958886 (not c!575544)) b!3380117))

(declare-fun m!3744141 () Bool)

(assert (=> d!958886 m!3744141))

(declare-fun m!3744143 () Bool)

(assert (=> d!958886 m!3744143))

(declare-fun m!3744145 () Bool)

(assert (=> d!958886 m!3744145))

(declare-fun m!3744147 () Bool)

(assert (=> d!958886 m!3744147))

(assert (=> d!958886 m!3744141))

(assert (=> d!958886 m!3744145))

(declare-fun m!3744149 () Bool)

(assert (=> d!958886 m!3744149))

(assert (=> b!3380115 m!3744143))

(declare-fun m!3744151 () Bool)

(assert (=> b!3380117 m!3744151))

(declare-fun m!3744153 () Bool)

(assert (=> b!3380117 m!3744153))

(declare-fun m!3744155 () Bool)

(assert (=> b!3380117 m!3744155))

(declare-fun m!3744157 () Bool)

(assert (=> b!3380117 m!3744157))

(assert (=> b!3380117 m!3744153))

(declare-fun m!3744159 () Bool)

(assert (=> b!3380117 m!3744159))

(declare-fun m!3744161 () Bool)

(assert (=> b!3380117 m!3744161))

(declare-fun m!3744163 () Bool)

(assert (=> b!3380117 m!3744163))

(declare-fun m!3744165 () Bool)

(assert (=> b!3380117 m!3744165))

(assert (=> b!3380117 m!3744161))

(assert (=> b!3380117 m!3744155))

(declare-fun m!3744167 () Bool)

(assert (=> b!3380117 m!3744167))

(assert (=> b!3380117 m!3744167))

(declare-fun m!3744169 () Bool)

(assert (=> b!3380117 m!3744169))

(declare-fun m!3744171 () Bool)

(assert (=> b!3380117 m!3744171))

(assert (=> b!3380117 m!3744151))

(declare-fun m!3744173 () Bool)

(assert (=> b!3380117 m!3744173))

(declare-fun m!3744175 () Bool)

(assert (=> b!3380117 m!3744175))

(assert (=> b!3380050 d!958886))

(declare-fun d!958902 () Bool)

(declare-fun list!13325 (Conc!11115) List!36971)

(assert (=> d!958902 (= (list!13323 lt!1147622) (list!13325 (c!575531 lt!1147622)))))

(declare-fun bs!554725 () Bool)

(assert (= bs!554725 d!958902))

(declare-fun m!3744177 () Bool)

(assert (=> bs!554725 m!3744177))

(assert (=> b!3380050 d!958902))

(declare-fun d!958904 () Bool)

(declare-fun e!2098230 () Bool)

(assert (=> d!958904 e!2098230))

(declare-fun res!1367400 () Bool)

(assert (=> d!958904 (=> (not res!1367400) (not e!2098230))))

(declare-fun lt!1147680 () BalanceConc!21846)

(assert (=> d!958904 (= res!1367400 (= (list!13324 lt!1147680) (Cons!36849 (h!42269 tokens!494) Nil!36849)))))

(declare-fun singleton!1077 (Token!10106) BalanceConc!21846)

(assert (=> d!958904 (= lt!1147680 (singleton!1077 (h!42269 tokens!494)))))

(assert (=> d!958904 (= (singletonSeq!2466 (h!42269 tokens!494)) lt!1147680)))

(declare-fun b!3380120 () Bool)

(declare-fun isBalanced!3350 (Conc!11116) Bool)

(assert (=> b!3380120 (= e!2098230 (isBalanced!3350 (c!575532 lt!1147680)))))

(assert (= (and d!958904 res!1367400) b!3380120))

(declare-fun m!3744179 () Bool)

(assert (=> d!958904 m!3744179))

(declare-fun m!3744181 () Bool)

(assert (=> d!958904 m!3744181))

(declare-fun m!3744183 () Bool)

(assert (=> b!3380120 m!3744183))

(assert (=> b!3380050 d!958904))

(declare-fun d!958906 () Bool)

(declare-fun lt!1147683 () BalanceConc!21844)

(assert (=> d!958906 (= (list!13323 lt!1147683) (printList!1507 thiss!18206 (list!13324 lt!1147627)))))

(assert (=> d!958906 (= lt!1147683 (printTailRec!1454 thiss!18206 lt!1147627 0 (BalanceConc!21845 Empty!11115)))))

(assert (=> d!958906 (= (print!2024 thiss!18206 lt!1147627) lt!1147683)))

(declare-fun bs!554726 () Bool)

(assert (= bs!554726 d!958906))

(declare-fun m!3744185 () Bool)

(assert (=> bs!554726 m!3744185))

(assert (=> bs!554726 m!3744159))

(assert (=> bs!554726 m!3744159))

(declare-fun m!3744187 () Bool)

(assert (=> bs!554726 m!3744187))

(assert (=> bs!554726 m!3744031))

(assert (=> b!3380050 d!958906))

(declare-fun d!958908 () Bool)

(declare-fun c!575549 () Bool)

(assert (=> d!958908 (= c!575549 ((_ is Cons!36849) (Cons!36849 (h!42269 tokens!494) Nil!36849)))))

(declare-fun e!2098241 () List!36971)

(assert (=> d!958908 (= (printList!1507 thiss!18206 (Cons!36849 (h!42269 tokens!494) Nil!36849)) e!2098241)))

(declare-fun b!3380143 () Bool)

(assert (=> b!3380143 (= e!2098241 (++!9003 (list!13323 (charsOf!3384 (h!42269 (Cons!36849 (h!42269 tokens!494) Nil!36849)))) (printList!1507 thiss!18206 (t!263098 (Cons!36849 (h!42269 tokens!494) Nil!36849)))))))

(declare-fun b!3380144 () Bool)

(assert (=> b!3380144 (= e!2098241 Nil!36847)))

(assert (= (and d!958908 c!575549) b!3380143))

(assert (= (and d!958908 (not c!575549)) b!3380144))

(declare-fun m!3744189 () Bool)

(assert (=> b!3380143 m!3744189))

(assert (=> b!3380143 m!3744189))

(declare-fun m!3744191 () Bool)

(assert (=> b!3380143 m!3744191))

(declare-fun m!3744193 () Bool)

(assert (=> b!3380143 m!3744193))

(assert (=> b!3380143 m!3744191))

(assert (=> b!3380143 m!3744193))

(declare-fun m!3744195 () Bool)

(assert (=> b!3380143 m!3744195))

(assert (=> b!3380050 d!958908))

(declare-fun d!958910 () Bool)

(declare-fun res!1367424 () Bool)

(declare-fun e!2098248 () Bool)

(assert (=> d!958910 (=> (not res!1367424) (not e!2098248))))

(declare-fun rulesValid!2000 (LexerInterface!4959 List!36972) Bool)

(assert (=> d!958910 (= res!1367424 (rulesValid!2000 thiss!18206 rules!2135))))

(assert (=> d!958910 (= (rulesInvariant!4356 thiss!18206 rules!2135) e!2098248)))

(declare-fun b!3380156 () Bool)

(declare-datatypes ((List!36974 0))(
  ( (Nil!36850) (Cons!36850 (h!42270 String!41334) (t!263173 List!36974)) )
))
(declare-fun noDuplicateTag!1996 (LexerInterface!4959 List!36972 List!36974) Bool)

(assert (=> b!3380156 (= e!2098248 (noDuplicateTag!1996 thiss!18206 rules!2135 Nil!36850))))

(assert (= (and d!958910 res!1367424) b!3380156))

(declare-fun m!3744197 () Bool)

(assert (=> d!958910 m!3744197))

(declare-fun m!3744201 () Bool)

(assert (=> b!3380156 m!3744201))

(assert (=> b!3380072 d!958910))

(declare-fun d!958912 () Bool)

(declare-fun res!1367433 () Bool)

(declare-fun e!2098257 () Bool)

(assert (=> d!958912 (=> res!1367433 e!2098257)))

(assert (=> d!958912 (= res!1367433 (not ((_ is Cons!36848) rules!2135)))))

(assert (=> d!958912 (= (sepAndNonSepRulesDisjointChars!1564 rules!2135 rules!2135) e!2098257)))

(declare-fun b!3380165 () Bool)

(declare-fun e!2098258 () Bool)

(assert (=> b!3380165 (= e!2098257 e!2098258)))

(declare-fun res!1367434 () Bool)

(assert (=> b!3380165 (=> (not res!1367434) (not e!2098258))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!676 (Rule!10540 List!36972) Bool)

(assert (=> b!3380165 (= res!1367434 (ruleDisjointCharsFromAllFromOtherType!676 (h!42268 rules!2135) rules!2135))))

(declare-fun b!3380166 () Bool)

(assert (=> b!3380166 (= e!2098258 (sepAndNonSepRulesDisjointChars!1564 rules!2135 (t!263097 rules!2135)))))

(assert (= (and d!958912 (not res!1367433)) b!3380165))

(assert (= (and b!3380165 res!1367434) b!3380166))

(declare-fun m!3744247 () Bool)

(assert (=> b!3380165 m!3744247))

(declare-fun m!3744249 () Bool)

(assert (=> b!3380166 m!3744249))

(assert (=> b!3380051 d!958912))

(declare-fun d!958918 () Bool)

(declare-fun res!1367441 () Bool)

(declare-fun e!2098266 () Bool)

(assert (=> d!958918 (=> (not res!1367441) (not e!2098266))))

(assert (=> d!958918 (= res!1367441 (not (isEmpty!21083 (originalCharacters!6084 separatorToken!241))))))

(assert (=> d!958918 (= (inv!49917 separatorToken!241) e!2098266)))

(declare-fun b!3380179 () Bool)

(declare-fun res!1367442 () Bool)

(assert (=> b!3380179 (=> (not res!1367442) (not e!2098266))))

(declare-fun dynLambda!15318 (Int TokenValue!5600) BalanceConc!21844)

(assert (=> b!3380179 (= res!1367442 (= (originalCharacters!6084 separatorToken!241) (list!13323 (dynLambda!15318 (toChars!7413 (transformation!5370 (rule!7920 separatorToken!241))) (value!173505 separatorToken!241)))))))

(declare-fun b!3380180 () Bool)

(assert (=> b!3380180 (= e!2098266 (= (size!27882 separatorToken!241) (size!27883 (originalCharacters!6084 separatorToken!241))))))

(assert (= (and d!958918 res!1367441) b!3380179))

(assert (= (and b!3380179 res!1367442) b!3380180))

(declare-fun b_lambda!95923 () Bool)

(assert (=> (not b_lambda!95923) (not b!3380179)))

(declare-fun t!263101 () Bool)

(declare-fun tb!179939 () Bool)

(assert (=> (and b!3380062 (= (toChars!7413 (transformation!5370 (rule!7920 separatorToken!241))) (toChars!7413 (transformation!5370 (rule!7920 separatorToken!241)))) t!263101) tb!179939))

(declare-fun b!3380201 () Bool)

(declare-fun e!2098277 () Bool)

(declare-fun tp!1056829 () Bool)

(declare-fun inv!49919 (Conc!11115) Bool)

(assert (=> b!3380201 (= e!2098277 (and (inv!49919 (c!575531 (dynLambda!15318 (toChars!7413 (transformation!5370 (rule!7920 separatorToken!241))) (value!173505 separatorToken!241)))) tp!1056829))))

(declare-fun result!223368 () Bool)

(declare-fun inv!49920 (BalanceConc!21844) Bool)

(assert (=> tb!179939 (= result!223368 (and (inv!49920 (dynLambda!15318 (toChars!7413 (transformation!5370 (rule!7920 separatorToken!241))) (value!173505 separatorToken!241))) e!2098277))))

(assert (= tb!179939 b!3380201))

(declare-fun m!3744265 () Bool)

(assert (=> b!3380201 m!3744265))

(declare-fun m!3744267 () Bool)

(assert (=> tb!179939 m!3744267))

(assert (=> b!3380179 t!263101))

(declare-fun b_and!234815 () Bool)

(assert (= b_and!234805 (and (=> t!263101 result!223368) b_and!234815)))

(declare-fun tb!179941 () Bool)

(declare-fun t!263103 () Bool)

(assert (=> (and b!3380068 (= (toChars!7413 (transformation!5370 (rule!7920 (h!42269 tokens!494)))) (toChars!7413 (transformation!5370 (rule!7920 separatorToken!241)))) t!263103) tb!179941))

(declare-fun result!223372 () Bool)

(assert (= result!223372 result!223368))

(assert (=> b!3380179 t!263103))

(declare-fun b_and!234817 () Bool)

(assert (= b_and!234809 (and (=> t!263103 result!223372) b_and!234817)))

(declare-fun t!263105 () Bool)

(declare-fun tb!179943 () Bool)

(assert (=> (and b!3380071 (= (toChars!7413 (transformation!5370 (h!42268 rules!2135))) (toChars!7413 (transformation!5370 (rule!7920 separatorToken!241)))) t!263105) tb!179943))

(declare-fun result!223374 () Bool)

(assert (= result!223374 result!223368))

(assert (=> b!3380179 t!263105))

(declare-fun b_and!234819 () Bool)

(assert (= b_and!234813 (and (=> t!263105 result!223374) b_and!234819)))

(declare-fun m!3744269 () Bool)

(assert (=> d!958918 m!3744269))

(declare-fun m!3744271 () Bool)

(assert (=> b!3380179 m!3744271))

(assert (=> b!3380179 m!3744271))

(declare-fun m!3744273 () Bool)

(assert (=> b!3380179 m!3744273))

(declare-fun m!3744275 () Bool)

(assert (=> b!3380180 m!3744275))

(assert (=> start!314902 d!958918))

(declare-fun b!3380222 () Bool)

(declare-fun e!2098292 () Bool)

(declare-fun inv!17 (TokenValue!5600) Bool)

(assert (=> b!3380222 (= e!2098292 (inv!17 (value!173505 (h!42269 tokens!494))))))

(declare-fun d!958926 () Bool)

(declare-fun c!575570 () Bool)

(assert (=> d!958926 (= c!575570 ((_ is IntegerValue!16800) (value!173505 (h!42269 tokens!494))))))

(declare-fun e!2098293 () Bool)

(assert (=> d!958926 (= (inv!21 (value!173505 (h!42269 tokens!494))) e!2098293)))

(declare-fun b!3380223 () Bool)

(assert (=> b!3380223 (= e!2098293 e!2098292)))

(declare-fun c!575571 () Bool)

(assert (=> b!3380223 (= c!575571 ((_ is IntegerValue!16801) (value!173505 (h!42269 tokens!494))))))

(declare-fun b!3380224 () Bool)

(declare-fun e!2098291 () Bool)

(declare-fun inv!15 (TokenValue!5600) Bool)

(assert (=> b!3380224 (= e!2098291 (inv!15 (value!173505 (h!42269 tokens!494))))))

(declare-fun b!3380225 () Bool)

(declare-fun inv!16 (TokenValue!5600) Bool)

(assert (=> b!3380225 (= e!2098293 (inv!16 (value!173505 (h!42269 tokens!494))))))

(declare-fun b!3380226 () Bool)

(declare-fun res!1367445 () Bool)

(assert (=> b!3380226 (=> res!1367445 e!2098291)))

(assert (=> b!3380226 (= res!1367445 (not ((_ is IntegerValue!16802) (value!173505 (h!42269 tokens!494)))))))

(assert (=> b!3380226 (= e!2098292 e!2098291)))

(assert (= (and d!958926 c!575570) b!3380225))

(assert (= (and d!958926 (not c!575570)) b!3380223))

(assert (= (and b!3380223 c!575571) b!3380222))

(assert (= (and b!3380223 (not c!575571)) b!3380226))

(assert (= (and b!3380226 (not res!1367445)) b!3380224))

(declare-fun m!3744287 () Bool)

(assert (=> b!3380222 m!3744287))

(declare-fun m!3744289 () Bool)

(assert (=> b!3380224 m!3744289))

(declare-fun m!3744291 () Bool)

(assert (=> b!3380225 m!3744291))

(assert (=> b!3380052 d!958926))

(declare-fun d!958932 () Bool)

(assert (=> d!958932 (= (isEmpty!21082 rules!2135) ((_ is Nil!36848) rules!2135))))

(assert (=> b!3380047 d!958932))

(declare-fun d!958934 () Bool)

(declare-fun lt!1147721 () Bool)

(declare-fun e!2098311 () Bool)

(assert (=> d!958934 (= lt!1147721 e!2098311)))

(declare-fun res!1367458 () Bool)

(assert (=> d!958934 (=> (not res!1367458) (not e!2098311))))

(assert (=> d!958934 (= res!1367458 (= (list!13324 (_1!21348 (lex!2285 thiss!18206 rules!2135 (print!2024 thiss!18206 (singletonSeq!2466 (h!42269 tokens!494)))))) (list!13324 (singletonSeq!2466 (h!42269 tokens!494)))))))

(declare-fun e!2098312 () Bool)

(assert (=> d!958934 (= lt!1147721 e!2098312)))

(declare-fun res!1367457 () Bool)

(assert (=> d!958934 (=> (not res!1367457) (not e!2098312))))

(declare-fun lt!1147722 () tuple2!36428)

(assert (=> d!958934 (= res!1367457 (= (size!27885 (_1!21348 lt!1147722)) 1))))

(assert (=> d!958934 (= lt!1147722 (lex!2285 thiss!18206 rules!2135 (print!2024 thiss!18206 (singletonSeq!2466 (h!42269 tokens!494)))))))

(assert (=> d!958934 (not (isEmpty!21082 rules!2135))))

(assert (=> d!958934 (= (rulesProduceIndividualToken!2451 thiss!18206 rules!2135 (h!42269 tokens!494)) lt!1147721)))

(declare-fun b!3380254 () Bool)

(declare-fun res!1367459 () Bool)

(assert (=> b!3380254 (=> (not res!1367459) (not e!2098312))))

(assert (=> b!3380254 (= res!1367459 (= (apply!8566 (_1!21348 lt!1147722) 0) (h!42269 tokens!494)))))

(declare-fun b!3380255 () Bool)

(declare-fun isEmpty!21086 (BalanceConc!21844) Bool)

(assert (=> b!3380255 (= e!2098312 (isEmpty!21086 (_2!21348 lt!1147722)))))

(declare-fun b!3380256 () Bool)

(assert (=> b!3380256 (= e!2098311 (isEmpty!21086 (_2!21348 (lex!2285 thiss!18206 rules!2135 (print!2024 thiss!18206 (singletonSeq!2466 (h!42269 tokens!494)))))))))

(assert (= (and d!958934 res!1367457) b!3380254))

(assert (= (and b!3380254 res!1367459) b!3380255))

(assert (= (and d!958934 res!1367458) b!3380256))

(assert (=> d!958934 m!3744035))

(declare-fun m!3744313 () Bool)

(assert (=> d!958934 m!3744313))

(assert (=> d!958934 m!3744035))

(declare-fun m!3744315 () Bool)

(assert (=> d!958934 m!3744315))

(assert (=> d!958934 m!3744057))

(assert (=> d!958934 m!3744035))

(declare-fun m!3744317 () Bool)

(assert (=> d!958934 m!3744317))

(assert (=> d!958934 m!3744317))

(declare-fun m!3744319 () Bool)

(assert (=> d!958934 m!3744319))

(declare-fun m!3744321 () Bool)

(assert (=> d!958934 m!3744321))

(declare-fun m!3744323 () Bool)

(assert (=> b!3380254 m!3744323))

(declare-fun m!3744325 () Bool)

(assert (=> b!3380255 m!3744325))

(assert (=> b!3380256 m!3744035))

(assert (=> b!3380256 m!3744035))

(assert (=> b!3380256 m!3744317))

(assert (=> b!3380256 m!3744317))

(assert (=> b!3380256 m!3744319))

(declare-fun m!3744327 () Bool)

(assert (=> b!3380256 m!3744327))

(assert (=> b!3380069 d!958934))

(declare-fun d!958950 () Bool)

(declare-fun lt!1147725 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5075 (List!36972) (InoxSet Rule!10540))

(assert (=> d!958950 (= lt!1147725 (select (content!5075 rules!2135) (rule!7920 separatorToken!241)))))

(declare-fun e!2098320 () Bool)

(assert (=> d!958950 (= lt!1147725 e!2098320)))

(declare-fun res!1367467 () Bool)

(assert (=> d!958950 (=> (not res!1367467) (not e!2098320))))

(assert (=> d!958950 (= res!1367467 ((_ is Cons!36848) rules!2135))))

(assert (=> d!958950 (= (contains!6732 rules!2135 (rule!7920 separatorToken!241)) lt!1147725)))

(declare-fun b!3380264 () Bool)

(declare-fun e!2098321 () Bool)

(assert (=> b!3380264 (= e!2098320 e!2098321)))

(declare-fun res!1367468 () Bool)

(assert (=> b!3380264 (=> res!1367468 e!2098321)))

(assert (=> b!3380264 (= res!1367468 (= (h!42268 rules!2135) (rule!7920 separatorToken!241)))))

(declare-fun b!3380265 () Bool)

(assert (=> b!3380265 (= e!2098321 (contains!6732 (t!263097 rules!2135) (rule!7920 separatorToken!241)))))

(assert (= (and d!958950 res!1367467) b!3380264))

(assert (= (and b!3380264 (not res!1367468)) b!3380265))

(declare-fun m!3744333 () Bool)

(assert (=> d!958950 m!3744333))

(declare-fun m!3744335 () Bool)

(assert (=> d!958950 m!3744335))

(declare-fun m!3744337 () Bool)

(assert (=> b!3380265 m!3744337))

(assert (=> b!3380048 d!958950))

(declare-fun bs!554741 () Bool)

(declare-fun d!958954 () Bool)

(assert (= bs!554741 (and d!958954 b!3380057)))

(declare-fun lambda!120460 () Int)

(assert (=> bs!554741 (not (= lambda!120460 lambda!120455))))

(declare-fun b!3380449 () Bool)

(declare-fun e!2098441 () Bool)

(assert (=> b!3380449 (= e!2098441 true)))

(declare-fun b!3380448 () Bool)

(declare-fun e!2098440 () Bool)

(assert (=> b!3380448 (= e!2098440 e!2098441)))

(declare-fun b!3380447 () Bool)

(declare-fun e!2098439 () Bool)

(assert (=> b!3380447 (= e!2098439 e!2098440)))

(assert (=> d!958954 e!2098439))

(assert (= b!3380448 b!3380449))

(assert (= b!3380447 b!3380448))

(assert (= (and d!958954 ((_ is Cons!36848) rules!2135)) b!3380447))

(declare-fun order!19397 () Int)

(declare-fun order!19395 () Int)

(declare-fun dynLambda!15319 (Int Int) Int)

(declare-fun dynLambda!15320 (Int Int) Int)

(assert (=> b!3380449 (< (dynLambda!15319 order!19395 (toValue!7554 (transformation!5370 (h!42268 rules!2135)))) (dynLambda!15320 order!19397 lambda!120460))))

(declare-fun order!19399 () Int)

(declare-fun dynLambda!15321 (Int Int) Int)

(assert (=> b!3380449 (< (dynLambda!15321 order!19399 (toChars!7413 (transformation!5370 (h!42268 rules!2135)))) (dynLambda!15320 order!19397 lambda!120460))))

(assert (=> d!958954 true))

(declare-fun e!2098432 () Bool)

(assert (=> d!958954 e!2098432))

(declare-fun res!1367575 () Bool)

(assert (=> d!958954 (=> (not res!1367575) (not e!2098432))))

(declare-fun lt!1147797 () Bool)

(assert (=> d!958954 (= res!1367575 (= lt!1147797 (forall!7751 (list!13324 lt!1147629) lambda!120460)))))

(declare-fun forall!7752 (BalanceConc!21846 Int) Bool)

(assert (=> d!958954 (= lt!1147797 (forall!7752 lt!1147629 lambda!120460))))

(assert (=> d!958954 (not (isEmpty!21082 rules!2135))))

(assert (=> d!958954 (= (rulesProduceEachTokenIndividually!1410 thiss!18206 rules!2135 lt!1147629) lt!1147797)))

(declare-fun b!3380438 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1812 (LexerInterface!4959 List!36972 List!36973) Bool)

(assert (=> b!3380438 (= e!2098432 (= lt!1147797 (rulesProduceEachTokenIndividuallyList!1812 thiss!18206 rules!2135 (list!13324 lt!1147629))))))

(assert (= (and d!958954 res!1367575) b!3380438))

(declare-fun m!3744587 () Bool)

(assert (=> d!958954 m!3744587))

(assert (=> d!958954 m!3744587))

(declare-fun m!3744589 () Bool)

(assert (=> d!958954 m!3744589))

(declare-fun m!3744591 () Bool)

(assert (=> d!958954 m!3744591))

(assert (=> d!958954 m!3744057))

(assert (=> b!3380438 m!3744587))

(assert (=> b!3380438 m!3744587))

(declare-fun m!3744593 () Bool)

(assert (=> b!3380438 m!3744593))

(assert (=> b!3380070 d!958954))

(declare-fun d!959030 () Bool)

(declare-fun fromListB!1696 (List!36973) BalanceConc!21846)

(assert (=> d!959030 (= (seqFromList!3794 tokens!494) (fromListB!1696 tokens!494))))

(declare-fun bs!554742 () Bool)

(assert (= bs!554742 d!959030))

(declare-fun m!3744595 () Bool)

(assert (=> bs!554742 m!3744595))

(assert (=> b!3380070 d!959030))

(declare-fun d!959032 () Bool)

(assert (=> d!959032 (= (inv!49914 (tag!5944 (h!42268 rules!2135))) (= (mod (str.len (value!173504 (tag!5944 (h!42268 rules!2135)))) 2) 0))))

(assert (=> b!3380056 d!959032))

(declare-fun d!959034 () Bool)

(declare-fun res!1367578 () Bool)

(declare-fun e!2098444 () Bool)

(assert (=> d!959034 (=> (not res!1367578) (not e!2098444))))

(declare-fun semiInverseModEq!2241 (Int Int) Bool)

(assert (=> d!959034 (= res!1367578 (semiInverseModEq!2241 (toChars!7413 (transformation!5370 (h!42268 rules!2135))) (toValue!7554 (transformation!5370 (h!42268 rules!2135)))))))

(assert (=> d!959034 (= (inv!49918 (transformation!5370 (h!42268 rules!2135))) e!2098444)))

(declare-fun b!3380454 () Bool)

(declare-fun equivClasses!2140 (Int Int) Bool)

(assert (=> b!3380454 (= e!2098444 (equivClasses!2140 (toChars!7413 (transformation!5370 (h!42268 rules!2135))) (toValue!7554 (transformation!5370 (h!42268 rules!2135)))))))

(assert (= (and d!959034 res!1367578) b!3380454))

(declare-fun m!3744597 () Bool)

(assert (=> d!959034 m!3744597))

(declare-fun m!3744599 () Bool)

(assert (=> b!3380454 m!3744599))

(assert (=> b!3380056 d!959034))

(declare-fun d!959036 () Bool)

(declare-fun res!1367583 () Bool)

(declare-fun e!2098449 () Bool)

(assert (=> d!959036 (=> res!1367583 e!2098449)))

(assert (=> d!959036 (= res!1367583 ((_ is Nil!36849) tokens!494))))

(assert (=> d!959036 (= (forall!7751 tokens!494 lambda!120455) e!2098449)))

(declare-fun b!3380459 () Bool)

(declare-fun e!2098450 () Bool)

(assert (=> b!3380459 (= e!2098449 e!2098450)))

(declare-fun res!1367584 () Bool)

(assert (=> b!3380459 (=> (not res!1367584) (not e!2098450))))

(declare-fun dynLambda!15322 (Int Token!10106) Bool)

(assert (=> b!3380459 (= res!1367584 (dynLambda!15322 lambda!120455 (h!42269 tokens!494)))))

(declare-fun b!3380460 () Bool)

(assert (=> b!3380460 (= e!2098450 (forall!7751 (t!263098 tokens!494) lambda!120455))))

(assert (= (and d!959036 (not res!1367583)) b!3380459))

(assert (= (and b!3380459 res!1367584) b!3380460))

(declare-fun b_lambda!95939 () Bool)

(assert (=> (not b_lambda!95939) (not b!3380459)))

(declare-fun m!3744601 () Bool)

(assert (=> b!3380459 m!3744601))

(declare-fun m!3744603 () Bool)

(assert (=> b!3380460 m!3744603))

(assert (=> b!3380057 d!959036))

(declare-fun d!959038 () Bool)

(declare-fun lt!1147800 () Int)

(assert (=> d!959038 (>= lt!1147800 0)))

(declare-fun e!2098453 () Int)

(assert (=> d!959038 (= lt!1147800 e!2098453)))

(declare-fun c!575614 () Bool)

(assert (=> d!959038 (= c!575614 ((_ is Nil!36847) lt!1147634))))

(assert (=> d!959038 (= (size!27883 lt!1147634) lt!1147800)))

(declare-fun b!3380465 () Bool)

(assert (=> b!3380465 (= e!2098453 0)))

(declare-fun b!3380466 () Bool)

(assert (=> b!3380466 (= e!2098453 (+ 1 (size!27883 (t!263096 lt!1147634))))))

(assert (= (and d!959038 c!575614) b!3380465))

(assert (= (and d!959038 (not c!575614)) b!3380466))

(declare-fun m!3744605 () Bool)

(assert (=> b!3380466 m!3744605))

(assert (=> b!3380074 d!959038))

(declare-fun d!959040 () Bool)

(assert (=> d!959040 (rulesProduceIndividualToken!2451 thiss!18206 rules!2135 (h!42269 tokens!494))))

(declare-fun lt!1147805 () Unit!51952)

(declare-fun choose!19553 (LexerInterface!4959 List!36972 List!36973 Token!10106) Unit!51952)

(assert (=> d!959040 (= lt!1147805 (choose!19553 thiss!18206 rules!2135 tokens!494 (h!42269 tokens!494)))))

(assert (=> d!959040 (not (isEmpty!21082 rules!2135))))

(assert (=> d!959040 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!954 thiss!18206 rules!2135 tokens!494 (h!42269 tokens!494)) lt!1147805)))

(declare-fun bs!554743 () Bool)

(assert (= bs!554743 d!959040))

(assert (=> bs!554743 m!3744041))

(declare-fun m!3744607 () Bool)

(assert (=> bs!554743 m!3744607))

(assert (=> bs!554743 m!3744057))

(assert (=> b!3380074 d!959040))

(declare-fun d!959042 () Bool)

(assert (=> d!959042 (= (maxPrefixOneRule!1682 thiss!18206 (rule!7920 (h!42269 tokens!494)) lt!1147634) (Some!7387 (tuple2!36431 (Token!10107 (apply!8565 (transformation!5370 (rule!7920 (h!42269 tokens!494))) (seqFromList!3793 lt!1147634)) (rule!7920 (h!42269 tokens!494)) (size!27883 lt!1147634) lt!1147634) Nil!36847)))))

(declare-fun lt!1147808 () Unit!51952)

(declare-fun choose!19554 (LexerInterface!4959 List!36972 List!36971 List!36971 List!36971 Rule!10540) Unit!51952)

(assert (=> d!959042 (= lt!1147808 (choose!19554 thiss!18206 rules!2135 lt!1147634 lt!1147634 Nil!36847 (rule!7920 (h!42269 tokens!494))))))

(assert (=> d!959042 (not (isEmpty!21082 rules!2135))))

(assert (=> d!959042 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!781 thiss!18206 rules!2135 lt!1147634 lt!1147634 Nil!36847 (rule!7920 (h!42269 tokens!494))) lt!1147808)))

(declare-fun bs!554744 () Bool)

(assert (= bs!554744 d!959042))

(assert (=> bs!554744 m!3744085))

(declare-fun m!3744609 () Bool)

(assert (=> bs!554744 m!3744609))

(assert (=> bs!554744 m!3744091))

(assert (=> bs!554744 m!3744013))

(declare-fun m!3744611 () Bool)

(assert (=> bs!554744 m!3744611))

(assert (=> bs!554744 m!3744057))

(assert (=> bs!554744 m!3744013))

(assert (=> b!3380074 d!959042))

(declare-fun d!959044 () Bool)

(declare-fun isEmpty!21087 (Option!7387) Bool)

(assert (=> d!959044 (= (isDefined!5708 lt!1147630) (not (isEmpty!21087 lt!1147630)))))

(declare-fun bs!554745 () Bool)

(assert (= bs!554745 d!959044))

(declare-fun m!3744613 () Bool)

(assert (=> bs!554745 m!3744613))

(assert (=> b!3380074 d!959044))

(declare-fun b!3380479 () Bool)

(declare-fun e!2098463 () Option!7387)

(assert (=> b!3380479 (= e!2098463 None!7386)))

(declare-fun b!3380480 () Bool)

(declare-fun e!2098465 () Bool)

(declare-fun lt!1147817 () Option!7387)

(assert (=> b!3380480 (= e!2098465 (= (tag!5944 (get!11760 lt!1147817)) (tag!5944 (rule!7920 separatorToken!241))))))

(declare-fun b!3380481 () Bool)

(declare-fun e!2098462 () Option!7387)

(assert (=> b!3380481 (= e!2098462 e!2098463)))

(declare-fun c!575619 () Bool)

(assert (=> b!3380481 (= c!575619 (and ((_ is Cons!36848) rules!2135) (not (= (tag!5944 (h!42268 rules!2135)) (tag!5944 (rule!7920 separatorToken!241))))))))

(declare-fun b!3380482 () Bool)

(declare-fun lt!1147816 () Unit!51952)

(declare-fun lt!1147815 () Unit!51952)

(assert (=> b!3380482 (= lt!1147816 lt!1147815)))

(assert (=> b!3380482 (rulesInvariant!4356 thiss!18206 (t!263097 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!398 (LexerInterface!4959 Rule!10540 List!36972) Unit!51952)

(assert (=> b!3380482 (= lt!1147815 (lemmaInvariantOnRulesThenOnTail!398 thiss!18206 (h!42268 rules!2135) (t!263097 rules!2135)))))

(assert (=> b!3380482 (= e!2098463 (getRuleFromTag!1025 thiss!18206 (t!263097 rules!2135) (tag!5944 (rule!7920 separatorToken!241))))))

(declare-fun b!3380483 () Bool)

(declare-fun e!2098464 () Bool)

(assert (=> b!3380483 (= e!2098464 e!2098465)))

(declare-fun res!1367589 () Bool)

(assert (=> b!3380483 (=> (not res!1367589) (not e!2098465))))

(assert (=> b!3380483 (= res!1367589 (contains!6732 rules!2135 (get!11760 lt!1147817)))))

(declare-fun b!3380484 () Bool)

(assert (=> b!3380484 (= e!2098462 (Some!7386 (h!42268 rules!2135)))))

(declare-fun d!959046 () Bool)

(assert (=> d!959046 e!2098464))

(declare-fun res!1367590 () Bool)

(assert (=> d!959046 (=> res!1367590 e!2098464)))

(assert (=> d!959046 (= res!1367590 (isEmpty!21087 lt!1147817))))

(assert (=> d!959046 (= lt!1147817 e!2098462)))

(declare-fun c!575620 () Bool)

(assert (=> d!959046 (= c!575620 (and ((_ is Cons!36848) rules!2135) (= (tag!5944 (h!42268 rules!2135)) (tag!5944 (rule!7920 separatorToken!241)))))))

(assert (=> d!959046 (rulesInvariant!4356 thiss!18206 rules!2135)))

(assert (=> d!959046 (= (getRuleFromTag!1025 thiss!18206 rules!2135 (tag!5944 (rule!7920 separatorToken!241))) lt!1147817)))

(assert (= (and d!959046 c!575620) b!3380484))

(assert (= (and d!959046 (not c!575620)) b!3380481))

(assert (= (and b!3380481 c!575619) b!3380482))

(assert (= (and b!3380481 (not c!575619)) b!3380479))

(assert (= (and d!959046 (not res!1367590)) b!3380483))

(assert (= (and b!3380483 res!1367589) b!3380480))

(declare-fun m!3744615 () Bool)

(assert (=> b!3380480 m!3744615))

(declare-fun m!3744617 () Bool)

(assert (=> b!3380482 m!3744617))

(declare-fun m!3744619 () Bool)

(assert (=> b!3380482 m!3744619))

(declare-fun m!3744621 () Bool)

(assert (=> b!3380482 m!3744621))

(assert (=> b!3380483 m!3744615))

(assert (=> b!3380483 m!3744615))

(declare-fun m!3744623 () Bool)

(assert (=> b!3380483 m!3744623))

(declare-fun m!3744625 () Bool)

(assert (=> d!959046 m!3744625))

(assert (=> d!959046 m!3744029))

(assert (=> b!3380074 d!959046))

(declare-fun d!959048 () Bool)

(assert (=> d!959048 (= (isDefined!5708 lt!1147640) (not (isEmpty!21087 lt!1147640)))))

(declare-fun bs!554746 () Bool)

(assert (= bs!554746 d!959048))

(declare-fun m!3744627 () Bool)

(assert (=> bs!554746 m!3744627))

(assert (=> b!3380074 d!959048))

(declare-fun d!959050 () Bool)

(assert (=> d!959050 (isEmpty!21083 (getSuffix!1464 lt!1147634 lt!1147634))))

(declare-fun lt!1147820 () Unit!51952)

(declare-fun choose!19555 (List!36971) Unit!51952)

(assert (=> d!959050 (= lt!1147820 (choose!19555 lt!1147634))))

(assert (=> d!959050 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!122 lt!1147634) lt!1147820)))

(declare-fun bs!554747 () Bool)

(assert (= bs!554747 d!959050))

(assert (=> bs!554747 m!3744087))

(assert (=> bs!554747 m!3744087))

(assert (=> bs!554747 m!3744089))

(declare-fun m!3744629 () Bool)

(assert (=> bs!554747 m!3744629))

(assert (=> b!3380074 d!959050))

(declare-fun d!959052 () Bool)

(declare-fun e!2098468 () Bool)

(assert (=> d!959052 e!2098468))

(declare-fun res!1367595 () Bool)

(assert (=> d!959052 (=> (not res!1367595) (not e!2098468))))

(assert (=> d!959052 (= res!1367595 (isDefined!5708 (getRuleFromTag!1025 thiss!18206 rules!2135 (tag!5944 (rule!7920 separatorToken!241)))))))

(declare-fun lt!1147823 () Unit!51952)

(declare-fun choose!19557 (LexerInterface!4959 List!36972 List!36971 Token!10106) Unit!51952)

(assert (=> d!959052 (= lt!1147823 (choose!19557 thiss!18206 rules!2135 lt!1147632 separatorToken!241))))

(assert (=> d!959052 (rulesInvariant!4356 thiss!18206 rules!2135)))

(assert (=> d!959052 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1025 thiss!18206 rules!2135 lt!1147632 separatorToken!241) lt!1147823)))

(declare-fun b!3380489 () Bool)

(declare-fun res!1367596 () Bool)

(assert (=> b!3380489 (=> (not res!1367596) (not e!2098468))))

(assert (=> b!3380489 (= res!1367596 (matchR!4721 (regex!5370 (get!11760 (getRuleFromTag!1025 thiss!18206 rules!2135 (tag!5944 (rule!7920 separatorToken!241))))) (list!13323 (charsOf!3384 separatorToken!241))))))

(declare-fun b!3380490 () Bool)

(assert (=> b!3380490 (= e!2098468 (= (rule!7920 separatorToken!241) (get!11760 (getRuleFromTag!1025 thiss!18206 rules!2135 (tag!5944 (rule!7920 separatorToken!241))))))))

(assert (= (and d!959052 res!1367595) b!3380489))

(assert (= (and b!3380489 res!1367596) b!3380490))

(assert (=> d!959052 m!3744101))

(assert (=> d!959052 m!3744101))

(declare-fun m!3744631 () Bool)

(assert (=> d!959052 m!3744631))

(declare-fun m!3744633 () Bool)

(assert (=> d!959052 m!3744633))

(assert (=> d!959052 m!3744029))

(assert (=> b!3380489 m!3744021))

(assert (=> b!3380489 m!3744101))

(declare-fun m!3744635 () Bool)

(assert (=> b!3380489 m!3744635))

(assert (=> b!3380489 m!3744027))

(declare-fun m!3744637 () Bool)

(assert (=> b!3380489 m!3744637))

(assert (=> b!3380489 m!3744101))

(assert (=> b!3380489 m!3744021))

(assert (=> b!3380489 m!3744027))

(assert (=> b!3380490 m!3744101))

(assert (=> b!3380490 m!3744101))

(assert (=> b!3380490 m!3744635))

(assert (=> b!3380074 d!959052))

(declare-fun d!959054 () Bool)

(declare-fun lt!1147826 () Bool)

(declare-fun content!5077 (List!36971) (InoxSet C!20444))

(assert (=> d!959054 (= lt!1147826 (select (content!5077 (usedCharacters!626 (regex!5370 (rule!7920 separatorToken!241)))) lt!1147639))))

(declare-fun e!2098473 () Bool)

(assert (=> d!959054 (= lt!1147826 e!2098473)))

(declare-fun res!1367602 () Bool)

(assert (=> d!959054 (=> (not res!1367602) (not e!2098473))))

(assert (=> d!959054 (= res!1367602 ((_ is Cons!36847) (usedCharacters!626 (regex!5370 (rule!7920 separatorToken!241)))))))

(assert (=> d!959054 (= (contains!6733 (usedCharacters!626 (regex!5370 (rule!7920 separatorToken!241))) lt!1147639) lt!1147826)))

(declare-fun b!3380495 () Bool)

(declare-fun e!2098474 () Bool)

(assert (=> b!3380495 (= e!2098473 e!2098474)))

(declare-fun res!1367601 () Bool)

(assert (=> b!3380495 (=> res!1367601 e!2098474)))

(assert (=> b!3380495 (= res!1367601 (= (h!42267 (usedCharacters!626 (regex!5370 (rule!7920 separatorToken!241)))) lt!1147639))))

(declare-fun b!3380496 () Bool)

(assert (=> b!3380496 (= e!2098474 (contains!6733 (t!263096 (usedCharacters!626 (regex!5370 (rule!7920 separatorToken!241)))) lt!1147639))))

(assert (= (and d!959054 res!1367602) b!3380495))

(assert (= (and b!3380495 (not res!1367601)) b!3380496))

(assert (=> d!959054 m!3744073))

(declare-fun m!3744639 () Bool)

(assert (=> d!959054 m!3744639))

(declare-fun m!3744641 () Bool)

(assert (=> d!959054 m!3744641))

(declare-fun m!3744643 () Bool)

(assert (=> b!3380496 m!3744643))

(assert (=> b!3380074 d!959054))

(declare-fun b!3380513 () Bool)

(declare-fun e!2098486 () List!36971)

(declare-fun call!244510 () List!36971)

(assert (=> b!3380513 (= e!2098486 call!244510)))

(declare-fun bm!244502 () Bool)

(declare-fun call!244509 () List!36971)

(declare-fun call!244507 () List!36971)

(assert (=> bm!244502 (= call!244509 call!244507)))

(declare-fun b!3380514 () Bool)

(declare-fun e!2098485 () List!36971)

(assert (=> b!3380514 (= e!2098485 e!2098486)))

(declare-fun c!575629 () Bool)

(assert (=> b!3380514 (= c!575629 ((_ is Union!10129) (regex!5370 (rule!7920 separatorToken!241))))))

(declare-fun d!959056 () Bool)

(declare-fun c!575631 () Bool)

(assert (=> d!959056 (= c!575631 (or ((_ is EmptyExpr!10129) (regex!5370 (rule!7920 separatorToken!241))) ((_ is EmptyLang!10129) (regex!5370 (rule!7920 separatorToken!241)))))))

(declare-fun e!2098483 () List!36971)

(assert (=> d!959056 (= (usedCharacters!626 (regex!5370 (rule!7920 separatorToken!241))) e!2098483)))

(declare-fun b!3380515 () Bool)

(assert (=> b!3380515 (= e!2098483 Nil!36847)))

(declare-fun b!3380516 () Bool)

(declare-fun c!575630 () Bool)

(assert (=> b!3380516 (= c!575630 ((_ is Star!10129) (regex!5370 (rule!7920 separatorToken!241))))))

(declare-fun e!2098484 () List!36971)

(assert (=> b!3380516 (= e!2098484 e!2098485)))

(declare-fun b!3380517 () Bool)

(assert (=> b!3380517 (= e!2098484 (Cons!36847 (c!575530 (regex!5370 (rule!7920 separatorToken!241))) Nil!36847))))

(declare-fun b!3380518 () Bool)

(assert (=> b!3380518 (= e!2098486 call!244510)))

(declare-fun bm!244503 () Bool)

(declare-fun call!244508 () List!36971)

(assert (=> bm!244503 (= call!244508 (usedCharacters!626 (ite c!575629 (regTwo!20771 (regex!5370 (rule!7920 separatorToken!241))) (regOne!20770 (regex!5370 (rule!7920 separatorToken!241))))))))

(declare-fun b!3380519 () Bool)

(assert (=> b!3380519 (= e!2098483 e!2098484)))

(declare-fun c!575632 () Bool)

(assert (=> b!3380519 (= c!575632 ((_ is ElementMatch!10129) (regex!5370 (rule!7920 separatorToken!241))))))

(declare-fun b!3380520 () Bool)

(assert (=> b!3380520 (= e!2098485 call!244507)))

(declare-fun bm!244504 () Bool)

(assert (=> bm!244504 (= call!244507 (usedCharacters!626 (ite c!575630 (reg!10458 (regex!5370 (rule!7920 separatorToken!241))) (ite c!575629 (regOne!20771 (regex!5370 (rule!7920 separatorToken!241))) (regTwo!20770 (regex!5370 (rule!7920 separatorToken!241)))))))))

(declare-fun bm!244505 () Bool)

(assert (=> bm!244505 (= call!244510 (++!9003 (ite c!575629 call!244509 call!244508) (ite c!575629 call!244508 call!244509)))))

(assert (= (and d!959056 c!575631) b!3380515))

(assert (= (and d!959056 (not c!575631)) b!3380519))

(assert (= (and b!3380519 c!575632) b!3380517))

(assert (= (and b!3380519 (not c!575632)) b!3380516))

(assert (= (and b!3380516 c!575630) b!3380520))

(assert (= (and b!3380516 (not c!575630)) b!3380514))

(assert (= (and b!3380514 c!575629) b!3380518))

(assert (= (and b!3380514 (not c!575629)) b!3380513))

(assert (= (or b!3380518 b!3380513) bm!244503))

(assert (= (or b!3380518 b!3380513) bm!244502))

(assert (= (or b!3380518 b!3380513) bm!244505))

(assert (= (or b!3380520 bm!244502) bm!244504))

(declare-fun m!3744645 () Bool)

(assert (=> bm!244503 m!3744645))

(declare-fun m!3744647 () Bool)

(assert (=> bm!244504 m!3744647))

(declare-fun m!3744649 () Bool)

(assert (=> bm!244505 m!3744649))

(assert (=> b!3380074 d!959056))

(declare-fun d!959058 () Bool)

(declare-fun dynLambda!15324 (Int BalanceConc!21844) TokenValue!5600)

(assert (=> d!959058 (= (apply!8565 (transformation!5370 (rule!7920 (h!42269 tokens!494))) lt!1147626) (dynLambda!15324 (toValue!7554 (transformation!5370 (rule!7920 (h!42269 tokens!494)))) lt!1147626))))

(declare-fun b_lambda!95941 () Bool)

(assert (=> (not b_lambda!95941) (not d!959058)))

(declare-fun t!263136 () Bool)

(declare-fun tb!179963 () Bool)

(assert (=> (and b!3380062 (= (toValue!7554 (transformation!5370 (rule!7920 separatorToken!241))) (toValue!7554 (transformation!5370 (rule!7920 (h!42269 tokens!494))))) t!263136) tb!179963))

(declare-fun result!223398 () Bool)

(assert (=> tb!179963 (= result!223398 (inv!21 (dynLambda!15324 (toValue!7554 (transformation!5370 (rule!7920 (h!42269 tokens!494)))) lt!1147626)))))

(declare-fun m!3744651 () Bool)

(assert (=> tb!179963 m!3744651))

(assert (=> d!959058 t!263136))

(declare-fun b_and!234851 () Bool)

(assert (= b_and!234803 (and (=> t!263136 result!223398) b_and!234851)))

(declare-fun t!263138 () Bool)

(declare-fun tb!179965 () Bool)

(assert (=> (and b!3380068 (= (toValue!7554 (transformation!5370 (rule!7920 (h!42269 tokens!494)))) (toValue!7554 (transformation!5370 (rule!7920 (h!42269 tokens!494))))) t!263138) tb!179965))

(declare-fun result!223402 () Bool)

(assert (= result!223402 result!223398))

(assert (=> d!959058 t!263138))

(declare-fun b_and!234853 () Bool)

(assert (= b_and!234807 (and (=> t!263138 result!223402) b_and!234853)))

(declare-fun t!263140 () Bool)

(declare-fun tb!179967 () Bool)

(assert (=> (and b!3380071 (= (toValue!7554 (transformation!5370 (h!42268 rules!2135))) (toValue!7554 (transformation!5370 (rule!7920 (h!42269 tokens!494))))) t!263140) tb!179967))

(declare-fun result!223404 () Bool)

(assert (= result!223404 result!223398))

(assert (=> d!959058 t!263140))

(declare-fun b_and!234855 () Bool)

(assert (= b_and!234811 (and (=> t!263140 result!223404) b_and!234855)))

(declare-fun m!3744653 () Bool)

(assert (=> d!959058 m!3744653))

(assert (=> b!3380074 d!959058))

(declare-fun d!959060 () Bool)

(declare-fun lt!1147829 () List!36971)

(assert (=> d!959060 (= (++!9003 lt!1147634 lt!1147829) lt!1147634)))

(declare-fun e!2098492 () List!36971)

(assert (=> d!959060 (= lt!1147829 e!2098492)))

(declare-fun c!575635 () Bool)

(assert (=> d!959060 (= c!575635 ((_ is Cons!36847) lt!1147634))))

(assert (=> d!959060 (>= (size!27883 lt!1147634) (size!27883 lt!1147634))))

(assert (=> d!959060 (= (getSuffix!1464 lt!1147634 lt!1147634) lt!1147829)))

(declare-fun b!3380527 () Bool)

(declare-fun tail!5352 (List!36971) List!36971)

(assert (=> b!3380527 (= e!2098492 (getSuffix!1464 (tail!5352 lt!1147634) (t!263096 lt!1147634)))))

(declare-fun b!3380528 () Bool)

(assert (=> b!3380528 (= e!2098492 lt!1147634)))

(assert (= (and d!959060 c!575635) b!3380527))

(assert (= (and d!959060 (not c!575635)) b!3380528))

(declare-fun m!3744655 () Bool)

(assert (=> d!959060 m!3744655))

(assert (=> d!959060 m!3744091))

(assert (=> d!959060 m!3744091))

(declare-fun m!3744657 () Bool)

(assert (=> b!3380527 m!3744657))

(assert (=> b!3380527 m!3744657))

(declare-fun m!3744659 () Bool)

(assert (=> b!3380527 m!3744659))

(assert (=> b!3380074 d!959060))

(declare-fun d!959062 () Bool)

(declare-fun e!2098493 () Bool)

(assert (=> d!959062 e!2098493))

(declare-fun res!1367603 () Bool)

(assert (=> d!959062 (=> (not res!1367603) (not e!2098493))))

(assert (=> d!959062 (= res!1367603 (isDefined!5708 (getRuleFromTag!1025 thiss!18206 rules!2135 (tag!5944 (rule!7920 (h!42269 tokens!494))))))))

(declare-fun lt!1147830 () Unit!51952)

(assert (=> d!959062 (= lt!1147830 (choose!19557 thiss!18206 rules!2135 lt!1147634 (h!42269 tokens!494)))))

(assert (=> d!959062 (rulesInvariant!4356 thiss!18206 rules!2135)))

(assert (=> d!959062 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1025 thiss!18206 rules!2135 lt!1147634 (h!42269 tokens!494)) lt!1147830)))

(declare-fun b!3380529 () Bool)

(declare-fun res!1367604 () Bool)

(assert (=> b!3380529 (=> (not res!1367604) (not e!2098493))))

(assert (=> b!3380529 (= res!1367604 (matchR!4721 (regex!5370 (get!11760 (getRuleFromTag!1025 thiss!18206 rules!2135 (tag!5944 (rule!7920 (h!42269 tokens!494)))))) (list!13323 (charsOf!3384 (h!42269 tokens!494)))))))

(declare-fun b!3380530 () Bool)

(assert (=> b!3380530 (= e!2098493 (= (rule!7920 (h!42269 tokens!494)) (get!11760 (getRuleFromTag!1025 thiss!18206 rules!2135 (tag!5944 (rule!7920 (h!42269 tokens!494)))))))))

(assert (= (and d!959062 res!1367603) b!3380529))

(assert (= (and b!3380529 res!1367604) b!3380530))

(assert (=> d!959062 m!3744079))

(assert (=> d!959062 m!3744079))

(declare-fun m!3744661 () Bool)

(assert (=> d!959062 m!3744661))

(declare-fun m!3744663 () Bool)

(assert (=> d!959062 m!3744663))

(assert (=> d!959062 m!3744029))

(assert (=> b!3380529 m!3744045))

(assert (=> b!3380529 m!3744079))

(declare-fun m!3744665 () Bool)

(assert (=> b!3380529 m!3744665))

(assert (=> b!3380529 m!3744047))

(declare-fun m!3744667 () Bool)

(assert (=> b!3380529 m!3744667))

(assert (=> b!3380529 m!3744079))

(assert (=> b!3380529 m!3744045))

(assert (=> b!3380529 m!3744047))

(assert (=> b!3380530 m!3744079))

(assert (=> b!3380530 m!3744079))

(assert (=> b!3380530 m!3744665))

(assert (=> b!3380074 d!959062))

(declare-fun b!3380531 () Bool)

(declare-fun e!2098495 () Option!7387)

(assert (=> b!3380531 (= e!2098495 None!7386)))

(declare-fun b!3380532 () Bool)

(declare-fun e!2098497 () Bool)

(declare-fun lt!1147833 () Option!7387)

(assert (=> b!3380532 (= e!2098497 (= (tag!5944 (get!11760 lt!1147833)) (tag!5944 (rule!7920 (h!42269 tokens!494)))))))

(declare-fun b!3380533 () Bool)

(declare-fun e!2098494 () Option!7387)

(assert (=> b!3380533 (= e!2098494 e!2098495)))

(declare-fun c!575636 () Bool)

(assert (=> b!3380533 (= c!575636 (and ((_ is Cons!36848) rules!2135) (not (= (tag!5944 (h!42268 rules!2135)) (tag!5944 (rule!7920 (h!42269 tokens!494)))))))))

(declare-fun b!3380534 () Bool)

(declare-fun lt!1147832 () Unit!51952)

(declare-fun lt!1147831 () Unit!51952)

(assert (=> b!3380534 (= lt!1147832 lt!1147831)))

(assert (=> b!3380534 (rulesInvariant!4356 thiss!18206 (t!263097 rules!2135))))

(assert (=> b!3380534 (= lt!1147831 (lemmaInvariantOnRulesThenOnTail!398 thiss!18206 (h!42268 rules!2135) (t!263097 rules!2135)))))

(assert (=> b!3380534 (= e!2098495 (getRuleFromTag!1025 thiss!18206 (t!263097 rules!2135) (tag!5944 (rule!7920 (h!42269 tokens!494)))))))

(declare-fun b!3380535 () Bool)

(declare-fun e!2098496 () Bool)

(assert (=> b!3380535 (= e!2098496 e!2098497)))

(declare-fun res!1367605 () Bool)

(assert (=> b!3380535 (=> (not res!1367605) (not e!2098497))))

(assert (=> b!3380535 (= res!1367605 (contains!6732 rules!2135 (get!11760 lt!1147833)))))

(declare-fun b!3380536 () Bool)

(assert (=> b!3380536 (= e!2098494 (Some!7386 (h!42268 rules!2135)))))

(declare-fun d!959064 () Bool)

(assert (=> d!959064 e!2098496))

(declare-fun res!1367606 () Bool)

(assert (=> d!959064 (=> res!1367606 e!2098496)))

(assert (=> d!959064 (= res!1367606 (isEmpty!21087 lt!1147833))))

(assert (=> d!959064 (= lt!1147833 e!2098494)))

(declare-fun c!575637 () Bool)

(assert (=> d!959064 (= c!575637 (and ((_ is Cons!36848) rules!2135) (= (tag!5944 (h!42268 rules!2135)) (tag!5944 (rule!7920 (h!42269 tokens!494))))))))

(assert (=> d!959064 (rulesInvariant!4356 thiss!18206 rules!2135)))

(assert (=> d!959064 (= (getRuleFromTag!1025 thiss!18206 rules!2135 (tag!5944 (rule!7920 (h!42269 tokens!494)))) lt!1147833)))

(assert (= (and d!959064 c!575637) b!3380536))

(assert (= (and d!959064 (not c!575637)) b!3380533))

(assert (= (and b!3380533 c!575636) b!3380534))

(assert (= (and b!3380533 (not c!575636)) b!3380531))

(assert (= (and d!959064 (not res!1367606)) b!3380535))

(assert (= (and b!3380535 res!1367605) b!3380532))

(declare-fun m!3744669 () Bool)

(assert (=> b!3380532 m!3744669))

(assert (=> b!3380534 m!3744617))

(assert (=> b!3380534 m!3744619))

(declare-fun m!3744671 () Bool)

(assert (=> b!3380534 m!3744671))

(assert (=> b!3380535 m!3744669))

(assert (=> b!3380535 m!3744669))

(declare-fun m!3744673 () Bool)

(assert (=> b!3380535 m!3744673))

(declare-fun m!3744675 () Bool)

(assert (=> d!959064 m!3744675))

(assert (=> d!959064 m!3744029))

(assert (=> b!3380074 d!959064))

(declare-fun d!959066 () Bool)

(declare-fun e!2098509 () Bool)

(assert (=> d!959066 e!2098509))

(declare-fun res!1367627 () Bool)

(assert (=> d!959066 (=> res!1367627 e!2098509)))

(declare-fun lt!1147845 () Option!7388)

(declare-fun isEmpty!21089 (Option!7388) Bool)

(assert (=> d!959066 (= res!1367627 (isEmpty!21089 lt!1147845))))

(declare-fun e!2098506 () Option!7388)

(assert (=> d!959066 (= lt!1147845 e!2098506)))

(declare-fun c!575640 () Bool)

(declare-datatypes ((tuple2!36434 0))(
  ( (tuple2!36435 (_1!21351 List!36971) (_2!21351 List!36971)) )
))
(declare-fun lt!1147847 () tuple2!36434)

(assert (=> d!959066 (= c!575640 (isEmpty!21083 (_1!21351 lt!1147847)))))

(declare-fun findLongestMatch!792 (Regex!10129 List!36971) tuple2!36434)

(assert (=> d!959066 (= lt!1147847 (findLongestMatch!792 (regex!5370 (rule!7920 (h!42269 tokens!494))) lt!1147634))))

(declare-fun ruleValid!1702 (LexerInterface!4959 Rule!10540) Bool)

(assert (=> d!959066 (ruleValid!1702 thiss!18206 (rule!7920 (h!42269 tokens!494)))))

(assert (=> d!959066 (= (maxPrefixOneRule!1682 thiss!18206 (rule!7920 (h!42269 tokens!494)) lt!1147634) lt!1147845)))

(declare-fun b!3380555 () Bool)

(declare-fun res!1367624 () Bool)

(declare-fun e!2098507 () Bool)

(assert (=> b!3380555 (=> (not res!1367624) (not e!2098507))))

(declare-fun get!11762 (Option!7388) tuple2!36430)

(assert (=> b!3380555 (= res!1367624 (= (value!173505 (_1!21349 (get!11762 lt!1147845))) (apply!8565 (transformation!5370 (rule!7920 (_1!21349 (get!11762 lt!1147845)))) (seqFromList!3793 (originalCharacters!6084 (_1!21349 (get!11762 lt!1147845)))))))))

(declare-fun b!3380556 () Bool)

(assert (=> b!3380556 (= e!2098506 None!7387)))

(declare-fun b!3380557 () Bool)

(declare-fun res!1367622 () Bool)

(assert (=> b!3380557 (=> (not res!1367622) (not e!2098507))))

(assert (=> b!3380557 (= res!1367622 (< (size!27883 (_2!21349 (get!11762 lt!1147845))) (size!27883 lt!1147634)))))

(declare-fun b!3380558 () Bool)

(declare-fun size!27887 (BalanceConc!21844) Int)

(assert (=> b!3380558 (= e!2098506 (Some!7387 (tuple2!36431 (Token!10107 (apply!8565 (transformation!5370 (rule!7920 (h!42269 tokens!494))) (seqFromList!3793 (_1!21351 lt!1147847))) (rule!7920 (h!42269 tokens!494)) (size!27887 (seqFromList!3793 (_1!21351 lt!1147847))) (_1!21351 lt!1147847)) (_2!21351 lt!1147847))))))

(declare-fun lt!1147848 () Unit!51952)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!850 (Regex!10129 List!36971) Unit!51952)

(assert (=> b!3380558 (= lt!1147848 (longestMatchIsAcceptedByMatchOrIsEmpty!850 (regex!5370 (rule!7920 (h!42269 tokens!494))) lt!1147634))))

(declare-fun res!1367623 () Bool)

(declare-fun findLongestMatchInner!877 (Regex!10129 List!36971 Int List!36971 List!36971 Int) tuple2!36434)

(assert (=> b!3380558 (= res!1367623 (isEmpty!21083 (_1!21351 (findLongestMatchInner!877 (regex!5370 (rule!7920 (h!42269 tokens!494))) Nil!36847 (size!27883 Nil!36847) lt!1147634 lt!1147634 (size!27883 lt!1147634)))))))

(declare-fun e!2098508 () Bool)

(assert (=> b!3380558 (=> res!1367623 e!2098508)))

(assert (=> b!3380558 e!2098508))

(declare-fun lt!1147846 () Unit!51952)

(assert (=> b!3380558 (= lt!1147846 lt!1147848)))

(declare-fun lt!1147844 () Unit!51952)

(declare-fun lemmaSemiInverse!1225 (TokenValueInjection!10628 BalanceConc!21844) Unit!51952)

(assert (=> b!3380558 (= lt!1147844 (lemmaSemiInverse!1225 (transformation!5370 (rule!7920 (h!42269 tokens!494))) (seqFromList!3793 (_1!21351 lt!1147847))))))

(declare-fun b!3380559 () Bool)

(assert (=> b!3380559 (= e!2098509 e!2098507)))

(declare-fun res!1367625 () Bool)

(assert (=> b!3380559 (=> (not res!1367625) (not e!2098507))))

(assert (=> b!3380559 (= res!1367625 (matchR!4721 (regex!5370 (rule!7920 (h!42269 tokens!494))) (list!13323 (charsOf!3384 (_1!21349 (get!11762 lt!1147845))))))))

(declare-fun b!3380560 () Bool)

(assert (=> b!3380560 (= e!2098508 (matchR!4721 (regex!5370 (rule!7920 (h!42269 tokens!494))) (_1!21351 (findLongestMatchInner!877 (regex!5370 (rule!7920 (h!42269 tokens!494))) Nil!36847 (size!27883 Nil!36847) lt!1147634 lt!1147634 (size!27883 lt!1147634)))))))

(declare-fun b!3380561 () Bool)

(declare-fun res!1367621 () Bool)

(assert (=> b!3380561 (=> (not res!1367621) (not e!2098507))))

(assert (=> b!3380561 (= res!1367621 (= (++!9003 (list!13323 (charsOf!3384 (_1!21349 (get!11762 lt!1147845)))) (_2!21349 (get!11762 lt!1147845))) lt!1147634))))

(declare-fun b!3380562 () Bool)

(declare-fun res!1367626 () Bool)

(assert (=> b!3380562 (=> (not res!1367626) (not e!2098507))))

(assert (=> b!3380562 (= res!1367626 (= (rule!7920 (_1!21349 (get!11762 lt!1147845))) (rule!7920 (h!42269 tokens!494))))))

(declare-fun b!3380563 () Bool)

(assert (=> b!3380563 (= e!2098507 (= (size!27882 (_1!21349 (get!11762 lt!1147845))) (size!27883 (originalCharacters!6084 (_1!21349 (get!11762 lt!1147845))))))))

(assert (= (and d!959066 c!575640) b!3380556))

(assert (= (and d!959066 (not c!575640)) b!3380558))

(assert (= (and b!3380558 (not res!1367623)) b!3380560))

(assert (= (and d!959066 (not res!1367627)) b!3380559))

(assert (= (and b!3380559 res!1367625) b!3380561))

(assert (= (and b!3380561 res!1367621) b!3380557))

(assert (= (and b!3380557 res!1367622) b!3380562))

(assert (= (and b!3380562 res!1367626) b!3380555))

(assert (= (and b!3380555 res!1367624) b!3380563))

(declare-fun m!3744677 () Bool)

(assert (=> b!3380563 m!3744677))

(declare-fun m!3744679 () Bool)

(assert (=> b!3380563 m!3744679))

(assert (=> b!3380555 m!3744677))

(declare-fun m!3744681 () Bool)

(assert (=> b!3380555 m!3744681))

(assert (=> b!3380555 m!3744681))

(declare-fun m!3744683 () Bool)

(assert (=> b!3380555 m!3744683))

(declare-fun m!3744685 () Bool)

(assert (=> d!959066 m!3744685))

(declare-fun m!3744687 () Bool)

(assert (=> d!959066 m!3744687))

(declare-fun m!3744689 () Bool)

(assert (=> d!959066 m!3744689))

(declare-fun m!3744691 () Bool)

(assert (=> d!959066 m!3744691))

(declare-fun m!3744693 () Bool)

(assert (=> b!3380560 m!3744693))

(assert (=> b!3380560 m!3744091))

(assert (=> b!3380560 m!3744693))

(assert (=> b!3380560 m!3744091))

(declare-fun m!3744695 () Bool)

(assert (=> b!3380560 m!3744695))

(declare-fun m!3744697 () Bool)

(assert (=> b!3380560 m!3744697))

(declare-fun m!3744699 () Bool)

(assert (=> b!3380558 m!3744699))

(declare-fun m!3744701 () Bool)

(assert (=> b!3380558 m!3744701))

(assert (=> b!3380558 m!3744693))

(assert (=> b!3380558 m!3744091))

(assert (=> b!3380558 m!3744693))

(assert (=> b!3380558 m!3744091))

(assert (=> b!3380558 m!3744695))

(declare-fun m!3744703 () Bool)

(assert (=> b!3380558 m!3744703))

(declare-fun m!3744705 () Bool)

(assert (=> b!3380558 m!3744705))

(assert (=> b!3380558 m!3744703))

(declare-fun m!3744707 () Bool)

(assert (=> b!3380558 m!3744707))

(assert (=> b!3380558 m!3744703))

(assert (=> b!3380558 m!3744703))

(declare-fun m!3744709 () Bool)

(assert (=> b!3380558 m!3744709))

(assert (=> b!3380562 m!3744677))

(assert (=> b!3380561 m!3744677))

(declare-fun m!3744711 () Bool)

(assert (=> b!3380561 m!3744711))

(assert (=> b!3380561 m!3744711))

(declare-fun m!3744713 () Bool)

(assert (=> b!3380561 m!3744713))

(assert (=> b!3380561 m!3744713))

(declare-fun m!3744715 () Bool)

(assert (=> b!3380561 m!3744715))

(assert (=> b!3380559 m!3744677))

(assert (=> b!3380559 m!3744711))

(assert (=> b!3380559 m!3744711))

(assert (=> b!3380559 m!3744713))

(assert (=> b!3380559 m!3744713))

(declare-fun m!3744717 () Bool)

(assert (=> b!3380559 m!3744717))

(assert (=> b!3380557 m!3744677))

(declare-fun m!3744719 () Bool)

(assert (=> b!3380557 m!3744719))

(assert (=> b!3380557 m!3744091))

(assert (=> b!3380074 d!959066))

(declare-fun d!959068 () Bool)

(assert (=> d!959068 (= (head!7219 lt!1147632) (h!42267 lt!1147632))))

(assert (=> b!3380074 d!959068))

(declare-fun d!959070 () Bool)

(assert (=> d!959070 (= (isEmpty!21083 (getSuffix!1464 lt!1147634 lt!1147634)) ((_ is Nil!36847) (getSuffix!1464 lt!1147634 lt!1147634)))))

(assert (=> b!3380074 d!959070))

(declare-fun d!959072 () Bool)

(declare-fun lt!1147849 () Bool)

(assert (=> d!959072 (= lt!1147849 (select (content!5075 rules!2135) (rule!7920 (h!42269 tokens!494))))))

(declare-fun e!2098510 () Bool)

(assert (=> d!959072 (= lt!1147849 e!2098510)))

(declare-fun res!1367628 () Bool)

(assert (=> d!959072 (=> (not res!1367628) (not e!2098510))))

(assert (=> d!959072 (= res!1367628 ((_ is Cons!36848) rules!2135))))

(assert (=> d!959072 (= (contains!6732 rules!2135 (rule!7920 (h!42269 tokens!494))) lt!1147849)))

(declare-fun b!3380564 () Bool)

(declare-fun e!2098511 () Bool)

(assert (=> b!3380564 (= e!2098510 e!2098511)))

(declare-fun res!1367629 () Bool)

(assert (=> b!3380564 (=> res!1367629 e!2098511)))

(assert (=> b!3380564 (= res!1367629 (= (h!42268 rules!2135) (rule!7920 (h!42269 tokens!494))))))

(declare-fun b!3380565 () Bool)

(assert (=> b!3380565 (= e!2098511 (contains!6732 (t!263097 rules!2135) (rule!7920 (h!42269 tokens!494))))))

(assert (= (and d!959072 res!1367628) b!3380564))

(assert (= (and b!3380564 (not res!1367629)) b!3380565))

(assert (=> d!959072 m!3744333))

(declare-fun m!3744721 () Bool)

(assert (=> d!959072 m!3744721))

(declare-fun m!3744723 () Bool)

(assert (=> b!3380565 m!3744723))

(assert (=> b!3380053 d!959072))

(declare-fun d!959074 () Bool)

(declare-fun lt!1147850 () Bool)

(assert (=> d!959074 (= lt!1147850 (select (content!5077 (usedCharacters!626 (regex!5370 (rule!7920 (h!42269 tokens!494))))) lt!1147639))))

(declare-fun e!2098512 () Bool)

(assert (=> d!959074 (= lt!1147850 e!2098512)))

(declare-fun res!1367631 () Bool)

(assert (=> d!959074 (=> (not res!1367631) (not e!2098512))))

(assert (=> d!959074 (= res!1367631 ((_ is Cons!36847) (usedCharacters!626 (regex!5370 (rule!7920 (h!42269 tokens!494))))))))

(assert (=> d!959074 (= (contains!6733 (usedCharacters!626 (regex!5370 (rule!7920 (h!42269 tokens!494)))) lt!1147639) lt!1147850)))

(declare-fun b!3380566 () Bool)

(declare-fun e!2098513 () Bool)

(assert (=> b!3380566 (= e!2098512 e!2098513)))

(declare-fun res!1367630 () Bool)

(assert (=> b!3380566 (=> res!1367630 e!2098513)))

(assert (=> b!3380566 (= res!1367630 (= (h!42267 (usedCharacters!626 (regex!5370 (rule!7920 (h!42269 tokens!494))))) lt!1147639))))

(declare-fun b!3380567 () Bool)

(assert (=> b!3380567 (= e!2098513 (contains!6733 (t!263096 (usedCharacters!626 (regex!5370 (rule!7920 (h!42269 tokens!494))))) lt!1147639))))

(assert (= (and d!959074 res!1367631) b!3380566))

(assert (= (and b!3380566 (not res!1367630)) b!3380567))

(assert (=> d!959074 m!3744051))

(declare-fun m!3744725 () Bool)

(assert (=> d!959074 m!3744725))

(declare-fun m!3744727 () Bool)

(assert (=> d!959074 m!3744727))

(declare-fun m!3744729 () Bool)

(assert (=> b!3380567 m!3744729))

(assert (=> b!3380053 d!959074))

(declare-fun b!3380568 () Bool)

(declare-fun e!2098517 () List!36971)

(declare-fun call!244514 () List!36971)

(assert (=> b!3380568 (= e!2098517 call!244514)))

(declare-fun bm!244506 () Bool)

(declare-fun call!244513 () List!36971)

(declare-fun call!244511 () List!36971)

(assert (=> bm!244506 (= call!244513 call!244511)))

(declare-fun b!3380569 () Bool)

(declare-fun e!2098516 () List!36971)

(assert (=> b!3380569 (= e!2098516 e!2098517)))

(declare-fun c!575641 () Bool)

(assert (=> b!3380569 (= c!575641 ((_ is Union!10129) (regex!5370 (rule!7920 (h!42269 tokens!494)))))))

(declare-fun d!959076 () Bool)

(declare-fun c!575643 () Bool)

(assert (=> d!959076 (= c!575643 (or ((_ is EmptyExpr!10129) (regex!5370 (rule!7920 (h!42269 tokens!494)))) ((_ is EmptyLang!10129) (regex!5370 (rule!7920 (h!42269 tokens!494))))))))

(declare-fun e!2098514 () List!36971)

(assert (=> d!959076 (= (usedCharacters!626 (regex!5370 (rule!7920 (h!42269 tokens!494)))) e!2098514)))

(declare-fun b!3380570 () Bool)

(assert (=> b!3380570 (= e!2098514 Nil!36847)))

(declare-fun b!3380571 () Bool)

(declare-fun c!575642 () Bool)

(assert (=> b!3380571 (= c!575642 ((_ is Star!10129) (regex!5370 (rule!7920 (h!42269 tokens!494)))))))

(declare-fun e!2098515 () List!36971)

(assert (=> b!3380571 (= e!2098515 e!2098516)))

(declare-fun b!3380572 () Bool)

(assert (=> b!3380572 (= e!2098515 (Cons!36847 (c!575530 (regex!5370 (rule!7920 (h!42269 tokens!494)))) Nil!36847))))

(declare-fun b!3380573 () Bool)

(assert (=> b!3380573 (= e!2098517 call!244514)))

(declare-fun bm!244507 () Bool)

(declare-fun call!244512 () List!36971)

(assert (=> bm!244507 (= call!244512 (usedCharacters!626 (ite c!575641 (regTwo!20771 (regex!5370 (rule!7920 (h!42269 tokens!494)))) (regOne!20770 (regex!5370 (rule!7920 (h!42269 tokens!494)))))))))

(declare-fun b!3380574 () Bool)

(assert (=> b!3380574 (= e!2098514 e!2098515)))

(declare-fun c!575644 () Bool)

(assert (=> b!3380574 (= c!575644 ((_ is ElementMatch!10129) (regex!5370 (rule!7920 (h!42269 tokens!494)))))))

(declare-fun b!3380575 () Bool)

(assert (=> b!3380575 (= e!2098516 call!244511)))

(declare-fun bm!244508 () Bool)

(assert (=> bm!244508 (= call!244511 (usedCharacters!626 (ite c!575642 (reg!10458 (regex!5370 (rule!7920 (h!42269 tokens!494)))) (ite c!575641 (regOne!20771 (regex!5370 (rule!7920 (h!42269 tokens!494)))) (regTwo!20770 (regex!5370 (rule!7920 (h!42269 tokens!494))))))))))

(declare-fun bm!244509 () Bool)

(assert (=> bm!244509 (= call!244514 (++!9003 (ite c!575641 call!244513 call!244512) (ite c!575641 call!244512 call!244513)))))

(assert (= (and d!959076 c!575643) b!3380570))

(assert (= (and d!959076 (not c!575643)) b!3380574))

(assert (= (and b!3380574 c!575644) b!3380572))

(assert (= (and b!3380574 (not c!575644)) b!3380571))

(assert (= (and b!3380571 c!575642) b!3380575))

(assert (= (and b!3380571 (not c!575642)) b!3380569))

(assert (= (and b!3380569 c!575641) b!3380573))

(assert (= (and b!3380569 (not c!575641)) b!3380568))

(assert (= (or b!3380573 b!3380568) bm!244507))

(assert (= (or b!3380573 b!3380568) bm!244506))

(assert (= (or b!3380573 b!3380568) bm!244509))

(assert (= (or b!3380575 bm!244506) bm!244508))

(declare-fun m!3744731 () Bool)

(assert (=> bm!244507 m!3744731))

(declare-fun m!3744733 () Bool)

(assert (=> bm!244508 m!3744733))

(declare-fun m!3744735 () Bool)

(assert (=> bm!244509 m!3744735))

(assert (=> b!3380053 d!959076))

(declare-fun d!959078 () Bool)

(assert (=> d!959078 (not (contains!6733 (usedCharacters!626 (regex!5370 (rule!7920 (h!42269 tokens!494)))) lt!1147639))))

(declare-fun lt!1147853 () Unit!51952)

(declare-fun choose!19559 (LexerInterface!4959 List!36972 List!36972 Rule!10540 Rule!10540 C!20444) Unit!51952)

(assert (=> d!959078 (= lt!1147853 (choose!19559 thiss!18206 rules!2135 rules!2135 (rule!7920 (h!42269 tokens!494)) (rule!7920 separatorToken!241) lt!1147639))))

(assert (=> d!959078 (rulesInvariant!4356 thiss!18206 rules!2135)))

(assert (=> d!959078 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!210 thiss!18206 rules!2135 rules!2135 (rule!7920 (h!42269 tokens!494)) (rule!7920 separatorToken!241) lt!1147639) lt!1147853)))

(declare-fun bs!554748 () Bool)

(assert (= bs!554748 d!959078))

(assert (=> bs!554748 m!3744051))

(assert (=> bs!554748 m!3744051))

(assert (=> bs!554748 m!3744053))

(declare-fun m!3744737 () Bool)

(assert (=> bs!554748 m!3744737))

(assert (=> bs!554748 m!3744029))

(assert (=> b!3380053 d!959078))

(declare-fun d!959080 () Bool)

(declare-fun res!1367632 () Bool)

(declare-fun e!2098518 () Bool)

(assert (=> d!959080 (=> (not res!1367632) (not e!2098518))))

(assert (=> d!959080 (= res!1367632 (not (isEmpty!21083 (originalCharacters!6084 (h!42269 tokens!494)))))))

(assert (=> d!959080 (= (inv!49917 (h!42269 tokens!494)) e!2098518)))

(declare-fun b!3380576 () Bool)

(declare-fun res!1367633 () Bool)

(assert (=> b!3380576 (=> (not res!1367633) (not e!2098518))))

(assert (=> b!3380576 (= res!1367633 (= (originalCharacters!6084 (h!42269 tokens!494)) (list!13323 (dynLambda!15318 (toChars!7413 (transformation!5370 (rule!7920 (h!42269 tokens!494)))) (value!173505 (h!42269 tokens!494))))))))

(declare-fun b!3380577 () Bool)

(assert (=> b!3380577 (= e!2098518 (= (size!27882 (h!42269 tokens!494)) (size!27883 (originalCharacters!6084 (h!42269 tokens!494)))))))

(assert (= (and d!959080 res!1367632) b!3380576))

(assert (= (and b!3380576 res!1367633) b!3380577))

(declare-fun b_lambda!95943 () Bool)

(assert (=> (not b_lambda!95943) (not b!3380576)))

(declare-fun tb!179969 () Bool)

(declare-fun t!263142 () Bool)

(assert (=> (and b!3380062 (= (toChars!7413 (transformation!5370 (rule!7920 separatorToken!241))) (toChars!7413 (transformation!5370 (rule!7920 (h!42269 tokens!494))))) t!263142) tb!179969))

(declare-fun b!3380578 () Bool)

(declare-fun e!2098519 () Bool)

(declare-fun tp!1056834 () Bool)

(assert (=> b!3380578 (= e!2098519 (and (inv!49919 (c!575531 (dynLambda!15318 (toChars!7413 (transformation!5370 (rule!7920 (h!42269 tokens!494)))) (value!173505 (h!42269 tokens!494))))) tp!1056834))))

(declare-fun result!223406 () Bool)

(assert (=> tb!179969 (= result!223406 (and (inv!49920 (dynLambda!15318 (toChars!7413 (transformation!5370 (rule!7920 (h!42269 tokens!494)))) (value!173505 (h!42269 tokens!494)))) e!2098519))))

(assert (= tb!179969 b!3380578))

(declare-fun m!3744739 () Bool)

(assert (=> b!3380578 m!3744739))

(declare-fun m!3744741 () Bool)

(assert (=> tb!179969 m!3744741))

(assert (=> b!3380576 t!263142))

(declare-fun b_and!234857 () Bool)

(assert (= b_and!234815 (and (=> t!263142 result!223406) b_and!234857)))

(declare-fun t!263144 () Bool)

(declare-fun tb!179971 () Bool)

(assert (=> (and b!3380068 (= (toChars!7413 (transformation!5370 (rule!7920 (h!42269 tokens!494)))) (toChars!7413 (transformation!5370 (rule!7920 (h!42269 tokens!494))))) t!263144) tb!179971))

(declare-fun result!223408 () Bool)

(assert (= result!223408 result!223406))

(assert (=> b!3380576 t!263144))

(declare-fun b_and!234859 () Bool)

(assert (= b_and!234817 (and (=> t!263144 result!223408) b_and!234859)))

(declare-fun tb!179973 () Bool)

(declare-fun t!263146 () Bool)

(assert (=> (and b!3380071 (= (toChars!7413 (transformation!5370 (h!42268 rules!2135))) (toChars!7413 (transformation!5370 (rule!7920 (h!42269 tokens!494))))) t!263146) tb!179973))

(declare-fun result!223410 () Bool)

(assert (= result!223410 result!223406))

(assert (=> b!3380576 t!263146))

(declare-fun b_and!234861 () Bool)

(assert (= b_and!234819 (and (=> t!263146 result!223410) b_and!234861)))

(declare-fun m!3744743 () Bool)

(assert (=> d!959080 m!3744743))

(declare-fun m!3744745 () Bool)

(assert (=> b!3380576 m!3744745))

(assert (=> b!3380576 m!3744745))

(declare-fun m!3744747 () Bool)

(assert (=> b!3380576 m!3744747))

(declare-fun m!3744749 () Bool)

(assert (=> b!3380577 m!3744749))

(assert (=> b!3380075 d!959080))

(declare-fun b!3380589 () Bool)

(declare-fun res!1367639 () Bool)

(declare-fun e!2098525 () Bool)

(assert (=> b!3380589 (=> (not res!1367639) (not e!2098525))))

(declare-fun lt!1147856 () List!36971)

(assert (=> b!3380589 (= res!1367639 (= (size!27883 lt!1147856) (+ (size!27883 lt!1147634) (size!27883 lt!1147632))))))

(declare-fun b!3380588 () Bool)

(declare-fun e!2098524 () List!36971)

(assert (=> b!3380588 (= e!2098524 (Cons!36847 (h!42267 lt!1147634) (++!9003 (t!263096 lt!1147634) lt!1147632)))))

(declare-fun b!3380587 () Bool)

(assert (=> b!3380587 (= e!2098524 lt!1147632)))

(declare-fun b!3380590 () Bool)

(assert (=> b!3380590 (= e!2098525 (or (not (= lt!1147632 Nil!36847)) (= lt!1147856 lt!1147634)))))

(declare-fun d!959082 () Bool)

(assert (=> d!959082 e!2098525))

(declare-fun res!1367638 () Bool)

(assert (=> d!959082 (=> (not res!1367638) (not e!2098525))))

(assert (=> d!959082 (= res!1367638 (= (content!5077 lt!1147856) ((_ map or) (content!5077 lt!1147634) (content!5077 lt!1147632))))))

(assert (=> d!959082 (= lt!1147856 e!2098524)))

(declare-fun c!575648 () Bool)

(assert (=> d!959082 (= c!575648 ((_ is Nil!36847) lt!1147634))))

(assert (=> d!959082 (= (++!9003 lt!1147634 lt!1147632) lt!1147856)))

(assert (= (and d!959082 c!575648) b!3380587))

(assert (= (and d!959082 (not c!575648)) b!3380588))

(assert (= (and d!959082 res!1367638) b!3380589))

(assert (= (and b!3380589 res!1367639) b!3380590))

(declare-fun m!3744751 () Bool)

(assert (=> b!3380589 m!3744751))

(assert (=> b!3380589 m!3744091))

(declare-fun m!3744753 () Bool)

(assert (=> b!3380589 m!3744753))

(declare-fun m!3744755 () Bool)

(assert (=> b!3380588 m!3744755))

(declare-fun m!3744757 () Bool)

(assert (=> d!959082 m!3744757))

(declare-fun m!3744759 () Bool)

(assert (=> d!959082 m!3744759))

(declare-fun m!3744761 () Bool)

(assert (=> d!959082 m!3744761))

(assert (=> b!3380054 d!959082))

(declare-fun d!959084 () Bool)

(assert (=> d!959084 (= (list!13323 lt!1147620) (list!13325 (c!575531 lt!1147620)))))

(declare-fun bs!554749 () Bool)

(assert (= bs!554749 d!959084))

(declare-fun m!3744763 () Bool)

(assert (=> bs!554749 m!3744763))

(assert (=> b!3380054 d!959084))

(declare-fun lt!1147859 () BalanceConc!21844)

(declare-fun d!959086 () Bool)

(declare-fun printWithSeparatorTokenList!254 (LexerInterface!4959 List!36973 Token!10106) List!36971)

(assert (=> d!959086 (= (list!13323 lt!1147859) (printWithSeparatorTokenList!254 thiss!18206 (list!13324 lt!1147629) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!70 (LexerInterface!4959 BalanceConc!21846 Token!10106 Int BalanceConc!21844) BalanceConc!21844)

(assert (=> d!959086 (= lt!1147859 (printWithSeparatorTokenTailRec!70 thiss!18206 lt!1147629 separatorToken!241 0 (BalanceConc!21845 Empty!11115)))))

(assert (=> d!959086 (isSeparator!5370 (rule!7920 separatorToken!241))))

(assert (=> d!959086 (= (printWithSeparatorToken!150 thiss!18206 lt!1147629 separatorToken!241) lt!1147859)))

(declare-fun bs!554750 () Bool)

(assert (= bs!554750 d!959086))

(declare-fun m!3744765 () Bool)

(assert (=> bs!554750 m!3744765))

(assert (=> bs!554750 m!3744587))

(assert (=> bs!554750 m!3744587))

(declare-fun m!3744767 () Bool)

(assert (=> bs!554750 m!3744767))

(declare-fun m!3744769 () Bool)

(assert (=> bs!554750 m!3744769))

(assert (=> b!3380054 d!959086))

(declare-fun d!959088 () Bool)

(declare-fun lt!1147862 () BalanceConc!21844)

(assert (=> d!959088 (= (list!13323 lt!1147862) (originalCharacters!6084 separatorToken!241))))

(assert (=> d!959088 (= lt!1147862 (dynLambda!15318 (toChars!7413 (transformation!5370 (rule!7920 separatorToken!241))) (value!173505 separatorToken!241)))))

(assert (=> d!959088 (= (charsOf!3384 separatorToken!241) lt!1147862)))

(declare-fun b_lambda!95945 () Bool)

(assert (=> (not b_lambda!95945) (not d!959088)))

(assert (=> d!959088 t!263101))

(declare-fun b_and!234863 () Bool)

(assert (= b_and!234857 (and (=> t!263101 result!223368) b_and!234863)))

(assert (=> d!959088 t!263103))

(declare-fun b_and!234865 () Bool)

(assert (= b_and!234859 (and (=> t!263103 result!223372) b_and!234865)))

(assert (=> d!959088 t!263105))

(declare-fun b_and!234867 () Bool)

(assert (= b_and!234861 (and (=> t!263105 result!223374) b_and!234867)))

(declare-fun m!3744771 () Bool)

(assert (=> d!959088 m!3744771))

(assert (=> d!959088 m!3744271))

(assert (=> b!3380054 d!959088))

(declare-fun d!959090 () Bool)

(assert (=> d!959090 (= (list!13323 (charsOf!3384 separatorToken!241)) (list!13325 (c!575531 (charsOf!3384 separatorToken!241))))))

(declare-fun bs!554751 () Bool)

(assert (= bs!554751 d!959090))

(declare-fun m!3744773 () Bool)

(assert (=> bs!554751 m!3744773))

(assert (=> b!3380054 d!959090))

(declare-fun d!959092 () Bool)

(assert (=> d!959092 (= (list!13323 (charsOf!3384 (h!42269 tokens!494))) (list!13325 (c!575531 (charsOf!3384 (h!42269 tokens!494)))))))

(declare-fun bs!554752 () Bool)

(assert (= bs!554752 d!959092))

(declare-fun m!3744775 () Bool)

(assert (=> bs!554752 m!3744775))

(assert (=> b!3380061 d!959092))

(declare-fun d!959094 () Bool)

(declare-fun lt!1147863 () BalanceConc!21844)

(assert (=> d!959094 (= (list!13323 lt!1147863) (originalCharacters!6084 (h!42269 tokens!494)))))

(assert (=> d!959094 (= lt!1147863 (dynLambda!15318 (toChars!7413 (transformation!5370 (rule!7920 (h!42269 tokens!494)))) (value!173505 (h!42269 tokens!494))))))

(assert (=> d!959094 (= (charsOf!3384 (h!42269 tokens!494)) lt!1147863)))

(declare-fun b_lambda!95947 () Bool)

(assert (=> (not b_lambda!95947) (not d!959094)))

(assert (=> d!959094 t!263142))

(declare-fun b_and!234869 () Bool)

(assert (= b_and!234863 (and (=> t!263142 result!223406) b_and!234869)))

(assert (=> d!959094 t!263144))

(declare-fun b_and!234871 () Bool)

(assert (= b_and!234865 (and (=> t!263144 result!223408) b_and!234871)))

(assert (=> d!959094 t!263146))

(declare-fun b_and!234873 () Bool)

(assert (= b_and!234867 (and (=> t!263146 result!223410) b_and!234873)))

(declare-fun m!3744777 () Bool)

(assert (=> d!959094 m!3744777))

(assert (=> d!959094 m!3744745))

(assert (=> b!3380061 d!959094))

(declare-fun d!959096 () Bool)

(assert (=> d!959096 (not (matchR!4721 (regex!5370 (rule!7920 separatorToken!241)) lt!1147632))))

(declare-fun lt!1147866 () Unit!51952)

(declare-fun choose!19560 (Regex!10129 List!36971 C!20444) Unit!51952)

(assert (=> d!959096 (= lt!1147866 (choose!19560 (regex!5370 (rule!7920 separatorToken!241)) lt!1147632 lt!1147639))))

(declare-fun validRegex!4606 (Regex!10129) Bool)

(assert (=> d!959096 (validRegex!4606 (regex!5370 (rule!7920 separatorToken!241)))))

(assert (=> d!959096 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!460 (regex!5370 (rule!7920 separatorToken!241)) lt!1147632 lt!1147639) lt!1147866)))

(declare-fun bs!554753 () Bool)

(assert (= bs!554753 d!959096))

(assert (=> bs!554753 m!3743993))

(declare-fun m!3744779 () Bool)

(assert (=> bs!554753 m!3744779))

(declare-fun m!3744781 () Bool)

(assert (=> bs!554753 m!3744781))

(assert (=> b!3380058 d!959096))

(declare-fun b!3380619 () Bool)

(declare-fun e!2098542 () Bool)

(declare-fun e!2098540 () Bool)

(assert (=> b!3380619 (= e!2098542 e!2098540)))

(declare-fun c!575657 () Bool)

(assert (=> b!3380619 (= c!575657 ((_ is EmptyLang!10129) (regex!5370 (rule!7920 separatorToken!241))))))

(declare-fun b!3380620 () Bool)

(declare-fun lt!1147869 () Bool)

(assert (=> b!3380620 (= e!2098540 (not lt!1147869))))

(declare-fun b!3380621 () Bool)

(declare-fun e!2098541 () Bool)

(declare-fun e!2098546 () Bool)

(assert (=> b!3380621 (= e!2098541 e!2098546)))

(declare-fun res!1367659 () Bool)

(assert (=> b!3380621 (=> res!1367659 e!2098546)))

(declare-fun call!244517 () Bool)

(assert (=> b!3380621 (= res!1367659 call!244517)))

(declare-fun bm!244512 () Bool)

(assert (=> bm!244512 (= call!244517 (isEmpty!21083 lt!1147632))))

(declare-fun b!3380622 () Bool)

(declare-fun e!2098544 () Bool)

(declare-fun derivativeStep!3003 (Regex!10129 C!20444) Regex!10129)

(assert (=> b!3380622 (= e!2098544 (matchR!4721 (derivativeStep!3003 (regex!5370 (rule!7920 separatorToken!241)) (head!7219 lt!1147632)) (tail!5352 lt!1147632)))))

(declare-fun b!3380623 () Bool)

(declare-fun e!2098545 () Bool)

(assert (=> b!3380623 (= e!2098545 e!2098541)))

(declare-fun res!1367660 () Bool)

(assert (=> b!3380623 (=> (not res!1367660) (not e!2098541))))

(assert (=> b!3380623 (= res!1367660 (not lt!1147869))))

(declare-fun b!3380624 () Bool)

(declare-fun nullable!3450 (Regex!10129) Bool)

(assert (=> b!3380624 (= e!2098544 (nullable!3450 (regex!5370 (rule!7920 separatorToken!241))))))

(declare-fun b!3380625 () Bool)

(declare-fun res!1367658 () Bool)

(assert (=> b!3380625 (=> res!1367658 e!2098545)))

(assert (=> b!3380625 (= res!1367658 (not ((_ is ElementMatch!10129) (regex!5370 (rule!7920 separatorToken!241)))))))

(assert (=> b!3380625 (= e!2098540 e!2098545)))

(declare-fun b!3380626 () Bool)

(declare-fun res!1367657 () Bool)

(assert (=> b!3380626 (=> res!1367657 e!2098546)))

(assert (=> b!3380626 (= res!1367657 (not (isEmpty!21083 (tail!5352 lt!1147632))))))

(declare-fun d!959098 () Bool)

(assert (=> d!959098 e!2098542))

(declare-fun c!575658 () Bool)

(assert (=> d!959098 (= c!575658 ((_ is EmptyExpr!10129) (regex!5370 (rule!7920 separatorToken!241))))))

(assert (=> d!959098 (= lt!1147869 e!2098544)))

(declare-fun c!575656 () Bool)

(assert (=> d!959098 (= c!575656 (isEmpty!21083 lt!1147632))))

(assert (=> d!959098 (validRegex!4606 (regex!5370 (rule!7920 separatorToken!241)))))

(assert (=> d!959098 (= (matchR!4721 (regex!5370 (rule!7920 separatorToken!241)) lt!1147632) lt!1147869)))

(declare-fun b!3380627 () Bool)

(declare-fun res!1367656 () Bool)

(assert (=> b!3380627 (=> res!1367656 e!2098545)))

(declare-fun e!2098543 () Bool)

(assert (=> b!3380627 (= res!1367656 e!2098543)))

(declare-fun res!1367662 () Bool)

(assert (=> b!3380627 (=> (not res!1367662) (not e!2098543))))

(assert (=> b!3380627 (= res!1367662 lt!1147869)))

(declare-fun b!3380628 () Bool)

(assert (=> b!3380628 (= e!2098542 (= lt!1147869 call!244517))))

(declare-fun b!3380629 () Bool)

(declare-fun res!1367663 () Bool)

(assert (=> b!3380629 (=> (not res!1367663) (not e!2098543))))

(assert (=> b!3380629 (= res!1367663 (not call!244517))))

(declare-fun b!3380630 () Bool)

(assert (=> b!3380630 (= e!2098543 (= (head!7219 lt!1147632) (c!575530 (regex!5370 (rule!7920 separatorToken!241)))))))

(declare-fun b!3380631 () Bool)

(declare-fun res!1367661 () Bool)

(assert (=> b!3380631 (=> (not res!1367661) (not e!2098543))))

(assert (=> b!3380631 (= res!1367661 (isEmpty!21083 (tail!5352 lt!1147632)))))

(declare-fun b!3380632 () Bool)

(assert (=> b!3380632 (= e!2098546 (not (= (head!7219 lt!1147632) (c!575530 (regex!5370 (rule!7920 separatorToken!241))))))))

(assert (= (and d!959098 c!575656) b!3380624))

(assert (= (and d!959098 (not c!575656)) b!3380622))

(assert (= (and d!959098 c!575658) b!3380628))

(assert (= (and d!959098 (not c!575658)) b!3380619))

(assert (= (and b!3380619 c!575657) b!3380620))

(assert (= (and b!3380619 (not c!575657)) b!3380625))

(assert (= (and b!3380625 (not res!1367658)) b!3380627))

(assert (= (and b!3380627 res!1367662) b!3380629))

(assert (= (and b!3380629 res!1367663) b!3380631))

(assert (= (and b!3380631 res!1367661) b!3380630))

(assert (= (and b!3380627 (not res!1367656)) b!3380623))

(assert (= (and b!3380623 res!1367660) b!3380621))

(assert (= (and b!3380621 (not res!1367659)) b!3380626))

(assert (= (and b!3380626 (not res!1367657)) b!3380632))

(assert (= (or b!3380628 b!3380621 b!3380629) bm!244512))

(assert (=> b!3380630 m!3744093))

(declare-fun m!3744783 () Bool)

(assert (=> d!959098 m!3744783))

(assert (=> d!959098 m!3744781))

(declare-fun m!3744785 () Bool)

(assert (=> b!3380631 m!3744785))

(assert (=> b!3380631 m!3744785))

(declare-fun m!3744787 () Bool)

(assert (=> b!3380631 m!3744787))

(assert (=> b!3380622 m!3744093))

(assert (=> b!3380622 m!3744093))

(declare-fun m!3744789 () Bool)

(assert (=> b!3380622 m!3744789))

(assert (=> b!3380622 m!3744785))

(assert (=> b!3380622 m!3744789))

(assert (=> b!3380622 m!3744785))

(declare-fun m!3744791 () Bool)

(assert (=> b!3380622 m!3744791))

(assert (=> b!3380626 m!3744785))

(assert (=> b!3380626 m!3744785))

(assert (=> b!3380626 m!3744787))

(declare-fun m!3744793 () Bool)

(assert (=> b!3380624 m!3744793))

(assert (=> bm!244512 m!3744783))

(assert (=> b!3380632 m!3744093))

(assert (=> b!3380058 d!959098))

(declare-fun b!3380633 () Bool)

(declare-fun e!2098549 () Bool)

(declare-fun e!2098547 () Bool)

(assert (=> b!3380633 (= e!2098549 e!2098547)))

(declare-fun c!575660 () Bool)

(assert (=> b!3380633 (= c!575660 ((_ is EmptyLang!10129) (regex!5370 lt!1147633)))))

(declare-fun b!3380634 () Bool)

(declare-fun lt!1147870 () Bool)

(assert (=> b!3380634 (= e!2098547 (not lt!1147870))))

(declare-fun b!3380635 () Bool)

(declare-fun e!2098548 () Bool)

(declare-fun e!2098553 () Bool)

(assert (=> b!3380635 (= e!2098548 e!2098553)))

(declare-fun res!1367667 () Bool)

(assert (=> b!3380635 (=> res!1367667 e!2098553)))

(declare-fun call!244518 () Bool)

(assert (=> b!3380635 (= res!1367667 call!244518)))

(declare-fun bm!244513 () Bool)

(assert (=> bm!244513 (= call!244518 (isEmpty!21083 lt!1147632))))

(declare-fun b!3380636 () Bool)

(declare-fun e!2098551 () Bool)

(assert (=> b!3380636 (= e!2098551 (matchR!4721 (derivativeStep!3003 (regex!5370 lt!1147633) (head!7219 lt!1147632)) (tail!5352 lt!1147632)))))

(declare-fun b!3380637 () Bool)

(declare-fun e!2098552 () Bool)

(assert (=> b!3380637 (= e!2098552 e!2098548)))

(declare-fun res!1367668 () Bool)

(assert (=> b!3380637 (=> (not res!1367668) (not e!2098548))))

(assert (=> b!3380637 (= res!1367668 (not lt!1147870))))

(declare-fun b!3380638 () Bool)

(assert (=> b!3380638 (= e!2098551 (nullable!3450 (regex!5370 lt!1147633)))))

(declare-fun b!3380639 () Bool)

(declare-fun res!1367666 () Bool)

(assert (=> b!3380639 (=> res!1367666 e!2098552)))

(assert (=> b!3380639 (= res!1367666 (not ((_ is ElementMatch!10129) (regex!5370 lt!1147633))))))

(assert (=> b!3380639 (= e!2098547 e!2098552)))

(declare-fun b!3380640 () Bool)

(declare-fun res!1367665 () Bool)

(assert (=> b!3380640 (=> res!1367665 e!2098553)))

(assert (=> b!3380640 (= res!1367665 (not (isEmpty!21083 (tail!5352 lt!1147632))))))

(declare-fun d!959100 () Bool)

(assert (=> d!959100 e!2098549))

(declare-fun c!575661 () Bool)

(assert (=> d!959100 (= c!575661 ((_ is EmptyExpr!10129) (regex!5370 lt!1147633)))))

(assert (=> d!959100 (= lt!1147870 e!2098551)))

(declare-fun c!575659 () Bool)

(assert (=> d!959100 (= c!575659 (isEmpty!21083 lt!1147632))))

(assert (=> d!959100 (validRegex!4606 (regex!5370 lt!1147633))))

(assert (=> d!959100 (= (matchR!4721 (regex!5370 lt!1147633) lt!1147632) lt!1147870)))

(declare-fun b!3380641 () Bool)

(declare-fun res!1367664 () Bool)

(assert (=> b!3380641 (=> res!1367664 e!2098552)))

(declare-fun e!2098550 () Bool)

(assert (=> b!3380641 (= res!1367664 e!2098550)))

(declare-fun res!1367670 () Bool)

(assert (=> b!3380641 (=> (not res!1367670) (not e!2098550))))

(assert (=> b!3380641 (= res!1367670 lt!1147870)))

(declare-fun b!3380642 () Bool)

(assert (=> b!3380642 (= e!2098549 (= lt!1147870 call!244518))))

(declare-fun b!3380643 () Bool)

(declare-fun res!1367671 () Bool)

(assert (=> b!3380643 (=> (not res!1367671) (not e!2098550))))

(assert (=> b!3380643 (= res!1367671 (not call!244518))))

(declare-fun b!3380644 () Bool)

(assert (=> b!3380644 (= e!2098550 (= (head!7219 lt!1147632) (c!575530 (regex!5370 lt!1147633))))))

(declare-fun b!3380645 () Bool)

(declare-fun res!1367669 () Bool)

(assert (=> b!3380645 (=> (not res!1367669) (not e!2098550))))

(assert (=> b!3380645 (= res!1367669 (isEmpty!21083 (tail!5352 lt!1147632)))))

(declare-fun b!3380646 () Bool)

(assert (=> b!3380646 (= e!2098553 (not (= (head!7219 lt!1147632) (c!575530 (regex!5370 lt!1147633)))))))

(assert (= (and d!959100 c!575659) b!3380638))

(assert (= (and d!959100 (not c!575659)) b!3380636))

(assert (= (and d!959100 c!575661) b!3380642))

(assert (= (and d!959100 (not c!575661)) b!3380633))

(assert (= (and b!3380633 c!575660) b!3380634))

(assert (= (and b!3380633 (not c!575660)) b!3380639))

(assert (= (and b!3380639 (not res!1367666)) b!3380641))

(assert (= (and b!3380641 res!1367670) b!3380643))

(assert (= (and b!3380643 res!1367671) b!3380645))

(assert (= (and b!3380645 res!1367669) b!3380644))

(assert (= (and b!3380641 (not res!1367664)) b!3380637))

(assert (= (and b!3380637 res!1367668) b!3380635))

(assert (= (and b!3380635 (not res!1367667)) b!3380640))

(assert (= (and b!3380640 (not res!1367665)) b!3380646))

(assert (= (or b!3380642 b!3380635 b!3380643) bm!244513))

(assert (=> b!3380644 m!3744093))

(assert (=> d!959100 m!3744783))

(declare-fun m!3744795 () Bool)

(assert (=> d!959100 m!3744795))

(assert (=> b!3380645 m!3744785))

(assert (=> b!3380645 m!3744785))

(assert (=> b!3380645 m!3744787))

(assert (=> b!3380636 m!3744093))

(assert (=> b!3380636 m!3744093))

(declare-fun m!3744797 () Bool)

(assert (=> b!3380636 m!3744797))

(assert (=> b!3380636 m!3744785))

(assert (=> b!3380636 m!3744797))

(assert (=> b!3380636 m!3744785))

(declare-fun m!3744799 () Bool)

(assert (=> b!3380636 m!3744799))

(assert (=> b!3380640 m!3744785))

(assert (=> b!3380640 m!3744785))

(assert (=> b!3380640 m!3744787))

(declare-fun m!3744801 () Bool)

(assert (=> b!3380638 m!3744801))

(assert (=> bm!244513 m!3744783))

(assert (=> b!3380646 m!3744093))

(assert (=> b!3380066 d!959100))

(declare-fun d!959102 () Bool)

(assert (=> d!959102 (= (get!11760 lt!1147640) (v!36464 lt!1147640))))

(assert (=> b!3380066 d!959102))

(declare-fun b!3380647 () Bool)

(declare-fun e!2098556 () Bool)

(declare-fun e!2098554 () Bool)

(assert (=> b!3380647 (= e!2098556 e!2098554)))

(declare-fun c!575663 () Bool)

(assert (=> b!3380647 (= c!575663 ((_ is EmptyLang!10129) (regex!5370 lt!1147631)))))

(declare-fun b!3380648 () Bool)

(declare-fun lt!1147871 () Bool)

(assert (=> b!3380648 (= e!2098554 (not lt!1147871))))

(declare-fun b!3380649 () Bool)

(declare-fun e!2098555 () Bool)

(declare-fun e!2098560 () Bool)

(assert (=> b!3380649 (= e!2098555 e!2098560)))

(declare-fun res!1367675 () Bool)

(assert (=> b!3380649 (=> res!1367675 e!2098560)))

(declare-fun call!244519 () Bool)

(assert (=> b!3380649 (= res!1367675 call!244519)))

(declare-fun bm!244514 () Bool)

(assert (=> bm!244514 (= call!244519 (isEmpty!21083 lt!1147634))))

(declare-fun b!3380650 () Bool)

(declare-fun e!2098558 () Bool)

(assert (=> b!3380650 (= e!2098558 (matchR!4721 (derivativeStep!3003 (regex!5370 lt!1147631) (head!7219 lt!1147634)) (tail!5352 lt!1147634)))))

(declare-fun b!3380651 () Bool)

(declare-fun e!2098559 () Bool)

(assert (=> b!3380651 (= e!2098559 e!2098555)))

(declare-fun res!1367676 () Bool)

(assert (=> b!3380651 (=> (not res!1367676) (not e!2098555))))

(assert (=> b!3380651 (= res!1367676 (not lt!1147871))))

(declare-fun b!3380652 () Bool)

(assert (=> b!3380652 (= e!2098558 (nullable!3450 (regex!5370 lt!1147631)))))

(declare-fun b!3380653 () Bool)

(declare-fun res!1367674 () Bool)

(assert (=> b!3380653 (=> res!1367674 e!2098559)))

(assert (=> b!3380653 (= res!1367674 (not ((_ is ElementMatch!10129) (regex!5370 lt!1147631))))))

(assert (=> b!3380653 (= e!2098554 e!2098559)))

(declare-fun b!3380654 () Bool)

(declare-fun res!1367673 () Bool)

(assert (=> b!3380654 (=> res!1367673 e!2098560)))

(assert (=> b!3380654 (= res!1367673 (not (isEmpty!21083 (tail!5352 lt!1147634))))))

(declare-fun d!959104 () Bool)

(assert (=> d!959104 e!2098556))

(declare-fun c!575664 () Bool)

(assert (=> d!959104 (= c!575664 ((_ is EmptyExpr!10129) (regex!5370 lt!1147631)))))

(assert (=> d!959104 (= lt!1147871 e!2098558)))

(declare-fun c!575662 () Bool)

(assert (=> d!959104 (= c!575662 (isEmpty!21083 lt!1147634))))

(assert (=> d!959104 (validRegex!4606 (regex!5370 lt!1147631))))

(assert (=> d!959104 (= (matchR!4721 (regex!5370 lt!1147631) lt!1147634) lt!1147871)))

(declare-fun b!3380655 () Bool)

(declare-fun res!1367672 () Bool)

(assert (=> b!3380655 (=> res!1367672 e!2098559)))

(declare-fun e!2098557 () Bool)

(assert (=> b!3380655 (= res!1367672 e!2098557)))

(declare-fun res!1367678 () Bool)

(assert (=> b!3380655 (=> (not res!1367678) (not e!2098557))))

(assert (=> b!3380655 (= res!1367678 lt!1147871)))

(declare-fun b!3380656 () Bool)

(assert (=> b!3380656 (= e!2098556 (= lt!1147871 call!244519))))

(declare-fun b!3380657 () Bool)

(declare-fun res!1367679 () Bool)

(assert (=> b!3380657 (=> (not res!1367679) (not e!2098557))))

(assert (=> b!3380657 (= res!1367679 (not call!244519))))

(declare-fun b!3380658 () Bool)

(assert (=> b!3380658 (= e!2098557 (= (head!7219 lt!1147634) (c!575530 (regex!5370 lt!1147631))))))

(declare-fun b!3380659 () Bool)

(declare-fun res!1367677 () Bool)

(assert (=> b!3380659 (=> (not res!1367677) (not e!2098557))))

(assert (=> b!3380659 (= res!1367677 (isEmpty!21083 (tail!5352 lt!1147634)))))

(declare-fun b!3380660 () Bool)

(assert (=> b!3380660 (= e!2098560 (not (= (head!7219 lt!1147634) (c!575530 (regex!5370 lt!1147631)))))))

(assert (= (and d!959104 c!575662) b!3380652))

(assert (= (and d!959104 (not c!575662)) b!3380650))

(assert (= (and d!959104 c!575664) b!3380656))

(assert (= (and d!959104 (not c!575664)) b!3380647))

(assert (= (and b!3380647 c!575663) b!3380648))

(assert (= (and b!3380647 (not c!575663)) b!3380653))

(assert (= (and b!3380653 (not res!1367674)) b!3380655))

(assert (= (and b!3380655 res!1367678) b!3380657))

(assert (= (and b!3380657 res!1367679) b!3380659))

(assert (= (and b!3380659 res!1367677) b!3380658))

(assert (= (and b!3380655 (not res!1367672)) b!3380651))

(assert (= (and b!3380651 res!1367676) b!3380649))

(assert (= (and b!3380649 (not res!1367675)) b!3380654))

(assert (= (and b!3380654 (not res!1367673)) b!3380660))

(assert (= (or b!3380656 b!3380649 b!3380657) bm!244514))

(declare-fun m!3744803 () Bool)

(assert (=> b!3380658 m!3744803))

(declare-fun m!3744805 () Bool)

(assert (=> d!959104 m!3744805))

(declare-fun m!3744807 () Bool)

(assert (=> d!959104 m!3744807))

(assert (=> b!3380659 m!3744657))

(assert (=> b!3380659 m!3744657))

(declare-fun m!3744809 () Bool)

(assert (=> b!3380659 m!3744809))

(assert (=> b!3380650 m!3744803))

(assert (=> b!3380650 m!3744803))

(declare-fun m!3744811 () Bool)

(assert (=> b!3380650 m!3744811))

(assert (=> b!3380650 m!3744657))

(assert (=> b!3380650 m!3744811))

(assert (=> b!3380650 m!3744657))

(declare-fun m!3744813 () Bool)

(assert (=> b!3380650 m!3744813))

(assert (=> b!3380654 m!3744657))

(assert (=> b!3380654 m!3744657))

(assert (=> b!3380654 m!3744809))

(declare-fun m!3744815 () Bool)

(assert (=> b!3380652 m!3744815))

(assert (=> bm!244514 m!3744805))

(assert (=> b!3380660 m!3744803))

(assert (=> b!3380045 d!959104))

(declare-fun d!959106 () Bool)

(assert (=> d!959106 (= (get!11760 lt!1147630) (v!36464 lt!1147630))))

(assert (=> b!3380045 d!959106))

(declare-fun b!3380661 () Bool)

(declare-fun e!2098562 () Bool)

(assert (=> b!3380661 (= e!2098562 (inv!17 (value!173505 separatorToken!241)))))

(declare-fun d!959108 () Bool)

(declare-fun c!575665 () Bool)

(assert (=> d!959108 (= c!575665 ((_ is IntegerValue!16800) (value!173505 separatorToken!241)))))

(declare-fun e!2098563 () Bool)

(assert (=> d!959108 (= (inv!21 (value!173505 separatorToken!241)) e!2098563)))

(declare-fun b!3380662 () Bool)

(assert (=> b!3380662 (= e!2098563 e!2098562)))

(declare-fun c!575666 () Bool)

(assert (=> b!3380662 (= c!575666 ((_ is IntegerValue!16801) (value!173505 separatorToken!241)))))

(declare-fun b!3380663 () Bool)

(declare-fun e!2098561 () Bool)

(assert (=> b!3380663 (= e!2098561 (inv!15 (value!173505 separatorToken!241)))))

(declare-fun b!3380664 () Bool)

(assert (=> b!3380664 (= e!2098563 (inv!16 (value!173505 separatorToken!241)))))

(declare-fun b!3380665 () Bool)

(declare-fun res!1367680 () Bool)

(assert (=> b!3380665 (=> res!1367680 e!2098561)))

(assert (=> b!3380665 (= res!1367680 (not ((_ is IntegerValue!16802) (value!173505 separatorToken!241))))))

(assert (=> b!3380665 (= e!2098562 e!2098561)))

(assert (= (and d!959108 c!575665) b!3380664))

(assert (= (and d!959108 (not c!575665)) b!3380662))

(assert (= (and b!3380662 c!575666) b!3380661))

(assert (= (and b!3380662 (not c!575666)) b!3380665))

(assert (= (and b!3380665 (not res!1367680)) b!3380663))

(declare-fun m!3744817 () Bool)

(assert (=> b!3380661 m!3744817))

(declare-fun m!3744819 () Bool)

(assert (=> b!3380663 m!3744819))

(declare-fun m!3744821 () Bool)

(assert (=> b!3380664 m!3744821))

(assert (=> b!3380046 d!959108))

(declare-fun d!959110 () Bool)

(assert (=> d!959110 (= (inv!49914 (tag!5944 (rule!7920 separatorToken!241))) (= (mod (str.len (value!173504 (tag!5944 (rule!7920 separatorToken!241)))) 2) 0))))

(assert (=> b!3380063 d!959110))

(declare-fun d!959112 () Bool)

(declare-fun res!1367681 () Bool)

(declare-fun e!2098564 () Bool)

(assert (=> d!959112 (=> (not res!1367681) (not e!2098564))))

(assert (=> d!959112 (= res!1367681 (semiInverseModEq!2241 (toChars!7413 (transformation!5370 (rule!7920 separatorToken!241))) (toValue!7554 (transformation!5370 (rule!7920 separatorToken!241)))))))

(assert (=> d!959112 (= (inv!49918 (transformation!5370 (rule!7920 separatorToken!241))) e!2098564)))

(declare-fun b!3380666 () Bool)

(assert (=> b!3380666 (= e!2098564 (equivClasses!2140 (toChars!7413 (transformation!5370 (rule!7920 separatorToken!241))) (toValue!7554 (transformation!5370 (rule!7920 separatorToken!241)))))))

(assert (= (and d!959112 res!1367681) b!3380666))

(declare-fun m!3744823 () Bool)

(assert (=> d!959112 m!3744823))

(declare-fun m!3744825 () Bool)

(assert (=> b!3380666 m!3744825))

(assert (=> b!3380063 d!959112))

(declare-fun d!959114 () Bool)

(assert (=> d!959114 (dynLambda!15322 lambda!120455 (h!42269 tokens!494))))

(declare-fun lt!1147874 () Unit!51952)

(declare-fun choose!19561 (List!36973 Int Token!10106) Unit!51952)

(assert (=> d!959114 (= lt!1147874 (choose!19561 tokens!494 lambda!120455 (h!42269 tokens!494)))))

(declare-fun e!2098567 () Bool)

(assert (=> d!959114 e!2098567))

(declare-fun res!1367684 () Bool)

(assert (=> d!959114 (=> (not res!1367684) (not e!2098567))))

(assert (=> d!959114 (= res!1367684 (forall!7751 tokens!494 lambda!120455))))

(assert (=> d!959114 (= (forallContained!1317 tokens!494 lambda!120455 (h!42269 tokens!494)) lt!1147874)))

(declare-fun b!3380669 () Bool)

(declare-fun contains!6734 (List!36973 Token!10106) Bool)

(assert (=> b!3380669 (= e!2098567 (contains!6734 tokens!494 (h!42269 tokens!494)))))

(assert (= (and d!959114 res!1367684) b!3380669))

(declare-fun b_lambda!95949 () Bool)

(assert (=> (not b_lambda!95949) (not d!959114)))

(assert (=> d!959114 m!3744601))

(declare-fun m!3744827 () Bool)

(assert (=> d!959114 m!3744827))

(assert (=> d!959114 m!3744015))

(declare-fun m!3744829 () Bool)

(assert (=> b!3380669 m!3744829))

(assert (=> b!3380064 d!959114))

(declare-fun d!959116 () Bool)

(declare-fun lt!1147875 () Bool)

(declare-fun e!2098568 () Bool)

(assert (=> d!959116 (= lt!1147875 e!2098568)))

(declare-fun res!1367686 () Bool)

(assert (=> d!959116 (=> (not res!1367686) (not e!2098568))))

(assert (=> d!959116 (= res!1367686 (= (list!13324 (_1!21348 (lex!2285 thiss!18206 rules!2135 (print!2024 thiss!18206 (singletonSeq!2466 separatorToken!241))))) (list!13324 (singletonSeq!2466 separatorToken!241))))))

(declare-fun e!2098569 () Bool)

(assert (=> d!959116 (= lt!1147875 e!2098569)))

(declare-fun res!1367685 () Bool)

(assert (=> d!959116 (=> (not res!1367685) (not e!2098569))))

(declare-fun lt!1147876 () tuple2!36428)

(assert (=> d!959116 (= res!1367685 (= (size!27885 (_1!21348 lt!1147876)) 1))))

(assert (=> d!959116 (= lt!1147876 (lex!2285 thiss!18206 rules!2135 (print!2024 thiss!18206 (singletonSeq!2466 separatorToken!241))))))

(assert (=> d!959116 (not (isEmpty!21082 rules!2135))))

(assert (=> d!959116 (= (rulesProduceIndividualToken!2451 thiss!18206 rules!2135 separatorToken!241) lt!1147875)))

(declare-fun b!3380670 () Bool)

(declare-fun res!1367687 () Bool)

(assert (=> b!3380670 (=> (not res!1367687) (not e!2098569))))

(assert (=> b!3380670 (= res!1367687 (= (apply!8566 (_1!21348 lt!1147876) 0) separatorToken!241))))

(declare-fun b!3380671 () Bool)

(assert (=> b!3380671 (= e!2098569 (isEmpty!21086 (_2!21348 lt!1147876)))))

(declare-fun b!3380672 () Bool)

(assert (=> b!3380672 (= e!2098568 (isEmpty!21086 (_2!21348 (lex!2285 thiss!18206 rules!2135 (print!2024 thiss!18206 (singletonSeq!2466 separatorToken!241))))))))

(assert (= (and d!959116 res!1367685) b!3380670))

(assert (= (and b!3380670 res!1367687) b!3380671))

(assert (= (and d!959116 res!1367686) b!3380672))

(declare-fun m!3744831 () Bool)

(assert (=> d!959116 m!3744831))

(declare-fun m!3744833 () Bool)

(assert (=> d!959116 m!3744833))

(assert (=> d!959116 m!3744831))

(declare-fun m!3744835 () Bool)

(assert (=> d!959116 m!3744835))

(assert (=> d!959116 m!3744057))

(assert (=> d!959116 m!3744831))

(declare-fun m!3744837 () Bool)

(assert (=> d!959116 m!3744837))

(assert (=> d!959116 m!3744837))

(declare-fun m!3744839 () Bool)

(assert (=> d!959116 m!3744839))

(declare-fun m!3744841 () Bool)

(assert (=> d!959116 m!3744841))

(declare-fun m!3744843 () Bool)

(assert (=> b!3380670 m!3744843))

(declare-fun m!3744845 () Bool)

(assert (=> b!3380671 m!3744845))

(assert (=> b!3380672 m!3744831))

(assert (=> b!3380672 m!3744831))

(assert (=> b!3380672 m!3744837))

(assert (=> b!3380672 m!3744837))

(assert (=> b!3380672 m!3744839))

(declare-fun m!3744847 () Bool)

(assert (=> b!3380672 m!3744847))

(assert (=> b!3380043 d!959116))

(declare-fun d!959118 () Bool)

(assert (=> d!959118 (= (inv!49914 (tag!5944 (rule!7920 (h!42269 tokens!494)))) (= (mod (str.len (value!173504 (tag!5944 (rule!7920 (h!42269 tokens!494))))) 2) 0))))

(assert (=> b!3380065 d!959118))

(declare-fun d!959120 () Bool)

(declare-fun res!1367688 () Bool)

(declare-fun e!2098570 () Bool)

(assert (=> d!959120 (=> (not res!1367688) (not e!2098570))))

(assert (=> d!959120 (= res!1367688 (semiInverseModEq!2241 (toChars!7413 (transformation!5370 (rule!7920 (h!42269 tokens!494)))) (toValue!7554 (transformation!5370 (rule!7920 (h!42269 tokens!494))))))))

(assert (=> d!959120 (= (inv!49918 (transformation!5370 (rule!7920 (h!42269 tokens!494)))) e!2098570)))

(declare-fun b!3380673 () Bool)

(assert (=> b!3380673 (= e!2098570 (equivClasses!2140 (toChars!7413 (transformation!5370 (rule!7920 (h!42269 tokens!494)))) (toValue!7554 (transformation!5370 (rule!7920 (h!42269 tokens!494))))))))

(assert (= (and d!959120 res!1367688) b!3380673))

(declare-fun m!3744849 () Bool)

(assert (=> d!959120 m!3744849))

(declare-fun m!3744851 () Bool)

(assert (=> b!3380673 m!3744851))

(assert (=> b!3380065 d!959120))

(declare-fun d!959122 () Bool)

(declare-fun lt!1147879 () Bool)

(declare-fun isEmpty!21090 (List!36973) Bool)

(assert (=> d!959122 (= lt!1147879 (isEmpty!21090 (list!13324 (_1!21348 (lex!2285 thiss!18206 rules!2135 lt!1147626)))))))

(declare-fun isEmpty!21091 (Conc!11116) Bool)

(assert (=> d!959122 (= lt!1147879 (isEmpty!21091 (c!575532 (_1!21348 (lex!2285 thiss!18206 rules!2135 lt!1147626)))))))

(assert (=> d!959122 (= (isEmpty!21081 (_1!21348 (lex!2285 thiss!18206 rules!2135 lt!1147626))) lt!1147879)))

(declare-fun bs!554754 () Bool)

(assert (= bs!554754 d!959122))

(declare-fun m!3744853 () Bool)

(assert (=> bs!554754 m!3744853))

(assert (=> bs!554754 m!3744853))

(declare-fun m!3744855 () Bool)

(assert (=> bs!554754 m!3744855))

(declare-fun m!3744857 () Bool)

(assert (=> bs!554754 m!3744857))

(assert (=> b!3380044 d!959122))

(declare-fun b!3380767 () Bool)

(declare-fun res!1367707 () Bool)

(declare-fun e!2098635 () Bool)

(assert (=> b!3380767 (=> (not res!1367707) (not e!2098635))))

(declare-fun lt!1147884 () tuple2!36428)

(declare-datatypes ((tuple2!36436 0))(
  ( (tuple2!36437 (_1!21352 List!36973) (_2!21352 List!36971)) )
))
(declare-fun lexList!1403 (LexerInterface!4959 List!36972 List!36971) tuple2!36436)

(assert (=> b!3380767 (= res!1367707 (= (list!13324 (_1!21348 lt!1147884)) (_1!21352 (lexList!1403 thiss!18206 rules!2135 (list!13323 lt!1147626)))))))

(declare-fun b!3380768 () Bool)

(declare-fun e!2098636 () Bool)

(assert (=> b!3380768 (= e!2098636 (not (isEmpty!21081 (_1!21348 lt!1147884))))))

(declare-fun b!3380769 () Bool)

(declare-fun e!2098637 () Bool)

(assert (=> b!3380769 (= e!2098637 e!2098636)))

(declare-fun res!1367706 () Bool)

(assert (=> b!3380769 (= res!1367706 (< (size!27887 (_2!21348 lt!1147884)) (size!27887 lt!1147626)))))

(assert (=> b!3380769 (=> (not res!1367706) (not e!2098636))))

(declare-fun d!959124 () Bool)

(assert (=> d!959124 e!2098635))

(declare-fun res!1367708 () Bool)

(assert (=> d!959124 (=> (not res!1367708) (not e!2098635))))

(assert (=> d!959124 (= res!1367708 e!2098637)))

(declare-fun c!575672 () Bool)

(assert (=> d!959124 (= c!575672 (> (size!27885 (_1!21348 lt!1147884)) 0))))

(declare-fun lexTailRecV2!1013 (LexerInterface!4959 List!36972 BalanceConc!21844 BalanceConc!21844 BalanceConc!21844 BalanceConc!21846) tuple2!36428)

(assert (=> d!959124 (= lt!1147884 (lexTailRecV2!1013 thiss!18206 rules!2135 lt!1147626 (BalanceConc!21845 Empty!11115) lt!1147626 (BalanceConc!21847 Empty!11116)))))

(assert (=> d!959124 (= (lex!2285 thiss!18206 rules!2135 lt!1147626) lt!1147884)))

(declare-fun b!3380770 () Bool)

(assert (=> b!3380770 (= e!2098635 (= (list!13323 (_2!21348 lt!1147884)) (_2!21352 (lexList!1403 thiss!18206 rules!2135 (list!13323 lt!1147626)))))))

(declare-fun b!3380771 () Bool)

(assert (=> b!3380771 (= e!2098637 (= (_2!21348 lt!1147884) lt!1147626))))

(assert (= (and d!959124 c!575672) b!3380769))

(assert (= (and d!959124 (not c!575672)) b!3380771))

(assert (= (and b!3380769 res!1367706) b!3380768))

(assert (= (and d!959124 res!1367708) b!3380767))

(assert (= (and b!3380767 res!1367707) b!3380770))

(declare-fun m!3744893 () Bool)

(assert (=> b!3380770 m!3744893))

(declare-fun m!3744895 () Bool)

(assert (=> b!3380770 m!3744895))

(assert (=> b!3380770 m!3744895))

(declare-fun m!3744897 () Bool)

(assert (=> b!3380770 m!3744897))

(declare-fun m!3744899 () Bool)

(assert (=> b!3380768 m!3744899))

(declare-fun m!3744901 () Bool)

(assert (=> b!3380767 m!3744901))

(assert (=> b!3380767 m!3744895))

(assert (=> b!3380767 m!3744895))

(assert (=> b!3380767 m!3744897))

(declare-fun m!3744903 () Bool)

(assert (=> b!3380769 m!3744903))

(declare-fun m!3744905 () Bool)

(assert (=> b!3380769 m!3744905))

(declare-fun m!3744907 () Bool)

(assert (=> d!959124 m!3744907))

(declare-fun m!3744909 () Bool)

(assert (=> d!959124 m!3744909))

(assert (=> b!3380044 d!959124))

(declare-fun d!959134 () Bool)

(declare-fun fromListB!1697 (List!36971) BalanceConc!21844)

(assert (=> d!959134 (= (seqFromList!3793 lt!1147634) (fromListB!1697 lt!1147634))))

(declare-fun bs!554758 () Bool)

(assert (= bs!554758 d!959134))

(declare-fun m!3744911 () Bool)

(assert (=> bs!554758 m!3744911))

(assert (=> b!3380044 d!959134))

(declare-fun b!3380783 () Bool)

(declare-fun e!2098640 () Bool)

(declare-fun tp!1056905 () Bool)

(declare-fun tp!1056902 () Bool)

(assert (=> b!3380783 (= e!2098640 (and tp!1056905 tp!1056902))))

(declare-fun b!3380784 () Bool)

(declare-fun tp!1056904 () Bool)

(assert (=> b!3380784 (= e!2098640 tp!1056904)))

(assert (=> b!3380056 (= tp!1056817 e!2098640)))

(declare-fun b!3380782 () Bool)

(declare-fun tp_is_empty!17473 () Bool)

(assert (=> b!3380782 (= e!2098640 tp_is_empty!17473)))

(declare-fun b!3380785 () Bool)

(declare-fun tp!1056901 () Bool)

(declare-fun tp!1056903 () Bool)

(assert (=> b!3380785 (= e!2098640 (and tp!1056901 tp!1056903))))

(assert (= (and b!3380056 ((_ is ElementMatch!10129) (regex!5370 (h!42268 rules!2135)))) b!3380782))

(assert (= (and b!3380056 ((_ is Concat!15729) (regex!5370 (h!42268 rules!2135)))) b!3380783))

(assert (= (and b!3380056 ((_ is Star!10129) (regex!5370 (h!42268 rules!2135)))) b!3380784))

(assert (= (and b!3380056 ((_ is Union!10129) (regex!5370 (h!42268 rules!2135)))) b!3380785))

(declare-fun b!3380790 () Bool)

(declare-fun e!2098643 () Bool)

(declare-fun tp!1056908 () Bool)

(assert (=> b!3380790 (= e!2098643 (and tp_is_empty!17473 tp!1056908))))

(assert (=> b!3380046 (= tp!1056821 e!2098643)))

(assert (= (and b!3380046 ((_ is Cons!36847) (originalCharacters!6084 separatorToken!241))) b!3380790))

(declare-fun b!3380791 () Bool)

(declare-fun e!2098644 () Bool)

(declare-fun tp!1056909 () Bool)

(assert (=> b!3380791 (= e!2098644 (and tp_is_empty!17473 tp!1056909))))

(assert (=> b!3380052 (= tp!1056820 e!2098644)))

(assert (= (and b!3380052 ((_ is Cons!36847) (originalCharacters!6084 (h!42269 tokens!494)))) b!3380791))

(declare-fun b!3380793 () Bool)

(declare-fun e!2098645 () Bool)

(declare-fun tp!1056914 () Bool)

(declare-fun tp!1056911 () Bool)

(assert (=> b!3380793 (= e!2098645 (and tp!1056914 tp!1056911))))

(declare-fun b!3380794 () Bool)

(declare-fun tp!1056913 () Bool)

(assert (=> b!3380794 (= e!2098645 tp!1056913)))

(assert (=> b!3380063 (= tp!1056823 e!2098645)))

(declare-fun b!3380792 () Bool)

(assert (=> b!3380792 (= e!2098645 tp_is_empty!17473)))

(declare-fun b!3380795 () Bool)

(declare-fun tp!1056910 () Bool)

(declare-fun tp!1056912 () Bool)

(assert (=> b!3380795 (= e!2098645 (and tp!1056910 tp!1056912))))

(assert (= (and b!3380063 ((_ is ElementMatch!10129) (regex!5370 (rule!7920 separatorToken!241)))) b!3380792))

(assert (= (and b!3380063 ((_ is Concat!15729) (regex!5370 (rule!7920 separatorToken!241)))) b!3380793))

(assert (= (and b!3380063 ((_ is Star!10129) (regex!5370 (rule!7920 separatorToken!241)))) b!3380794))

(assert (= (and b!3380063 ((_ is Union!10129) (regex!5370 (rule!7920 separatorToken!241)))) b!3380795))

(declare-fun b!3380809 () Bool)

(declare-fun b_free!88469 () Bool)

(declare-fun b_next!89173 () Bool)

(assert (=> b!3380809 (= b_free!88469 (not b_next!89173))))

(declare-fun t!263162 () Bool)

(declare-fun tb!179987 () Bool)

(assert (=> (and b!3380809 (= (toValue!7554 (transformation!5370 (rule!7920 (h!42269 (t!263098 tokens!494))))) (toValue!7554 (transformation!5370 (rule!7920 (h!42269 tokens!494))))) t!263162) tb!179987))

(declare-fun result!223438 () Bool)

(assert (= result!223438 result!223398))

(assert (=> d!959058 t!263162))

(declare-fun b_and!234883 () Bool)

(declare-fun tp!1056926 () Bool)

(assert (=> b!3380809 (= tp!1056926 (and (=> t!263162 result!223438) b_and!234883))))

(declare-fun b_free!88471 () Bool)

(declare-fun b_next!89175 () Bool)

(assert (=> b!3380809 (= b_free!88471 (not b_next!89175))))

(declare-fun tb!179989 () Bool)

(declare-fun t!263164 () Bool)

(assert (=> (and b!3380809 (= (toChars!7413 (transformation!5370 (rule!7920 (h!42269 (t!263098 tokens!494))))) (toChars!7413 (transformation!5370 (rule!7920 separatorToken!241)))) t!263164) tb!179989))

(declare-fun result!223440 () Bool)

(assert (= result!223440 result!223368))

(assert (=> b!3380179 t!263164))

(declare-fun t!263166 () Bool)

(declare-fun tb!179991 () Bool)

(assert (=> (and b!3380809 (= (toChars!7413 (transformation!5370 (rule!7920 (h!42269 (t!263098 tokens!494))))) (toChars!7413 (transformation!5370 (rule!7920 (h!42269 tokens!494))))) t!263166) tb!179991))

(declare-fun result!223442 () Bool)

(assert (= result!223442 result!223406))

(assert (=> b!3380576 t!263166))

(assert (=> d!959088 t!263164))

(assert (=> d!959094 t!263166))

(declare-fun tp!1056929 () Bool)

(declare-fun b_and!234885 () Bool)

(assert (=> b!3380809 (= tp!1056929 (and (=> t!263164 result!223440) (=> t!263166 result!223442) b_and!234885))))

(declare-fun e!2098663 () Bool)

(assert (=> b!3380075 (= tp!1056819 e!2098663)))

(declare-fun e!2098659 () Bool)

(assert (=> b!3380809 (= e!2098659 (and tp!1056926 tp!1056929))))

(declare-fun tp!1056925 () Bool)

(declare-fun b!3380806 () Bool)

(declare-fun e!2098658 () Bool)

(assert (=> b!3380806 (= e!2098663 (and (inv!49917 (h!42269 (t!263098 tokens!494))) e!2098658 tp!1056925))))

(declare-fun e!2098662 () Bool)

(declare-fun b!3380808 () Bool)

(declare-fun tp!1056927 () Bool)

(assert (=> b!3380808 (= e!2098662 (and tp!1056927 (inv!49914 (tag!5944 (rule!7920 (h!42269 (t!263098 tokens!494))))) (inv!49918 (transformation!5370 (rule!7920 (h!42269 (t!263098 tokens!494))))) e!2098659))))

(declare-fun b!3380807 () Bool)

(declare-fun tp!1056928 () Bool)

(assert (=> b!3380807 (= e!2098658 (and (inv!21 (value!173505 (h!42269 (t!263098 tokens!494)))) e!2098662 tp!1056928))))

(assert (= b!3380808 b!3380809))

(assert (= b!3380807 b!3380808))

(assert (= b!3380806 b!3380807))

(assert (= (and b!3380075 ((_ is Cons!36849) (t!263098 tokens!494))) b!3380806))

(declare-fun m!3744913 () Bool)

(assert (=> b!3380806 m!3744913))

(declare-fun m!3744915 () Bool)

(assert (=> b!3380808 m!3744915))

(declare-fun m!3744917 () Bool)

(assert (=> b!3380808 m!3744917))

(declare-fun m!3744919 () Bool)

(assert (=> b!3380807 m!3744919))

(declare-fun b!3380820 () Bool)

(declare-fun b_free!88473 () Bool)

(declare-fun b_next!89177 () Bool)

(assert (=> b!3380820 (= b_free!88473 (not b_next!89177))))

(declare-fun tb!179993 () Bool)

(declare-fun t!263168 () Bool)

(assert (=> (and b!3380820 (= (toValue!7554 (transformation!5370 (h!42268 (t!263097 rules!2135)))) (toValue!7554 (transformation!5370 (rule!7920 (h!42269 tokens!494))))) t!263168) tb!179993))

(declare-fun result!223446 () Bool)

(assert (= result!223446 result!223398))

(assert (=> d!959058 t!263168))

(declare-fun tp!1056940 () Bool)

(declare-fun b_and!234887 () Bool)

(assert (=> b!3380820 (= tp!1056940 (and (=> t!263168 result!223446) b_and!234887))))

(declare-fun b_free!88475 () Bool)

(declare-fun b_next!89179 () Bool)

(assert (=> b!3380820 (= b_free!88475 (not b_next!89179))))

(declare-fun t!263170 () Bool)

(declare-fun tb!179995 () Bool)

(assert (=> (and b!3380820 (= (toChars!7413 (transformation!5370 (h!42268 (t!263097 rules!2135)))) (toChars!7413 (transformation!5370 (rule!7920 separatorToken!241)))) t!263170) tb!179995))

(declare-fun result!223448 () Bool)

(assert (= result!223448 result!223368))

(assert (=> b!3380179 t!263170))

(declare-fun t!263172 () Bool)

(declare-fun tb!179997 () Bool)

(assert (=> (and b!3380820 (= (toChars!7413 (transformation!5370 (h!42268 (t!263097 rules!2135)))) (toChars!7413 (transformation!5370 (rule!7920 (h!42269 tokens!494))))) t!263172) tb!179997))

(declare-fun result!223450 () Bool)

(assert (= result!223450 result!223406))

(assert (=> b!3380576 t!263172))

(assert (=> d!959088 t!263170))

(assert (=> d!959094 t!263172))

(declare-fun tp!1056939 () Bool)

(declare-fun b_and!234889 () Bool)

(assert (=> b!3380820 (= tp!1056939 (and (=> t!263170 result!223448) (=> t!263172 result!223450) b_and!234889))))

(declare-fun e!2098674 () Bool)

(assert (=> b!3380820 (= e!2098674 (and tp!1056940 tp!1056939))))

(declare-fun tp!1056941 () Bool)

(declare-fun e!2098672 () Bool)

(declare-fun b!3380819 () Bool)

(assert (=> b!3380819 (= e!2098672 (and tp!1056941 (inv!49914 (tag!5944 (h!42268 (t!263097 rules!2135)))) (inv!49918 (transformation!5370 (h!42268 (t!263097 rules!2135)))) e!2098674))))

(declare-fun b!3380818 () Bool)

(declare-fun e!2098675 () Bool)

(declare-fun tp!1056938 () Bool)

(assert (=> b!3380818 (= e!2098675 (and e!2098672 tp!1056938))))

(assert (=> b!3380059 (= tp!1056826 e!2098675)))

(assert (= b!3380819 b!3380820))

(assert (= b!3380818 b!3380819))

(assert (= (and b!3380059 ((_ is Cons!36848) (t!263097 rules!2135))) b!3380818))

(declare-fun m!3744921 () Bool)

(assert (=> b!3380819 m!3744921))

(declare-fun m!3744923 () Bool)

(assert (=> b!3380819 m!3744923))

(declare-fun b!3380822 () Bool)

(declare-fun e!2098676 () Bool)

(declare-fun tp!1056946 () Bool)

(declare-fun tp!1056943 () Bool)

(assert (=> b!3380822 (= e!2098676 (and tp!1056946 tp!1056943))))

(declare-fun b!3380823 () Bool)

(declare-fun tp!1056945 () Bool)

(assert (=> b!3380823 (= e!2098676 tp!1056945)))

(assert (=> b!3380065 (= tp!1056816 e!2098676)))

(declare-fun b!3380821 () Bool)

(assert (=> b!3380821 (= e!2098676 tp_is_empty!17473)))

(declare-fun b!3380824 () Bool)

(declare-fun tp!1056942 () Bool)

(declare-fun tp!1056944 () Bool)

(assert (=> b!3380824 (= e!2098676 (and tp!1056942 tp!1056944))))

(assert (= (and b!3380065 ((_ is ElementMatch!10129) (regex!5370 (rule!7920 (h!42269 tokens!494))))) b!3380821))

(assert (= (and b!3380065 ((_ is Concat!15729) (regex!5370 (rule!7920 (h!42269 tokens!494))))) b!3380822))

(assert (= (and b!3380065 ((_ is Star!10129) (regex!5370 (rule!7920 (h!42269 tokens!494))))) b!3380823))

(assert (= (and b!3380065 ((_ is Union!10129) (regex!5370 (rule!7920 (h!42269 tokens!494))))) b!3380824))

(declare-fun b_lambda!95965 () Bool)

(assert (= b_lambda!95945 (or (and b!3380071 b_free!88459 (= (toChars!7413 (transformation!5370 (h!42268 rules!2135))) (toChars!7413 (transformation!5370 (rule!7920 separatorToken!241))))) (and b!3380068 b_free!88455 (= (toChars!7413 (transformation!5370 (rule!7920 (h!42269 tokens!494)))) (toChars!7413 (transformation!5370 (rule!7920 separatorToken!241))))) (and b!3380809 b_free!88471 (= (toChars!7413 (transformation!5370 (rule!7920 (h!42269 (t!263098 tokens!494))))) (toChars!7413 (transformation!5370 (rule!7920 separatorToken!241))))) (and b!3380820 b_free!88475 (= (toChars!7413 (transformation!5370 (h!42268 (t!263097 rules!2135)))) (toChars!7413 (transformation!5370 (rule!7920 separatorToken!241))))) (and b!3380062 b_free!88451) b_lambda!95965)))

(declare-fun b_lambda!95967 () Bool)

(assert (= b_lambda!95941 (or (and b!3380820 b_free!88473 (= (toValue!7554 (transformation!5370 (h!42268 (t!263097 rules!2135)))) (toValue!7554 (transformation!5370 (rule!7920 (h!42269 tokens!494)))))) (and b!3380809 b_free!88469 (= (toValue!7554 (transformation!5370 (rule!7920 (h!42269 (t!263098 tokens!494))))) (toValue!7554 (transformation!5370 (rule!7920 (h!42269 tokens!494)))))) (and b!3380062 b_free!88449 (= (toValue!7554 (transformation!5370 (rule!7920 separatorToken!241))) (toValue!7554 (transformation!5370 (rule!7920 (h!42269 tokens!494)))))) (and b!3380068 b_free!88453) (and b!3380071 b_free!88457 (= (toValue!7554 (transformation!5370 (h!42268 rules!2135))) (toValue!7554 (transformation!5370 (rule!7920 (h!42269 tokens!494)))))) b_lambda!95967)))

(declare-fun b_lambda!95969 () Bool)

(assert (= b_lambda!95947 (or (and b!3380062 b_free!88451 (= (toChars!7413 (transformation!5370 (rule!7920 separatorToken!241))) (toChars!7413 (transformation!5370 (rule!7920 (h!42269 tokens!494)))))) (and b!3380068 b_free!88455) (and b!3380820 b_free!88475 (= (toChars!7413 (transformation!5370 (h!42268 (t!263097 rules!2135)))) (toChars!7413 (transformation!5370 (rule!7920 (h!42269 tokens!494)))))) (and b!3380071 b_free!88459 (= (toChars!7413 (transformation!5370 (h!42268 rules!2135))) (toChars!7413 (transformation!5370 (rule!7920 (h!42269 tokens!494)))))) (and b!3380809 b_free!88471 (= (toChars!7413 (transformation!5370 (rule!7920 (h!42269 (t!263098 tokens!494))))) (toChars!7413 (transformation!5370 (rule!7920 (h!42269 tokens!494)))))) b_lambda!95969)))

(declare-fun b_lambda!95971 () Bool)

(assert (= b_lambda!95939 (or b!3380057 b_lambda!95971)))

(declare-fun bs!554759 () Bool)

(declare-fun d!959136 () Bool)

(assert (= bs!554759 (and d!959136 b!3380057)))

(assert (=> bs!554759 (= (dynLambda!15322 lambda!120455 (h!42269 tokens!494)) (not (isSeparator!5370 (rule!7920 (h!42269 tokens!494)))))))

(assert (=> b!3380459 d!959136))

(declare-fun b_lambda!95973 () Bool)

(assert (= b_lambda!95949 (or b!3380057 b_lambda!95973)))

(assert (=> d!959114 d!959136))

(declare-fun b_lambda!95975 () Bool)

(assert (= b_lambda!95923 (or (and b!3380071 b_free!88459 (= (toChars!7413 (transformation!5370 (h!42268 rules!2135))) (toChars!7413 (transformation!5370 (rule!7920 separatorToken!241))))) (and b!3380068 b_free!88455 (= (toChars!7413 (transformation!5370 (rule!7920 (h!42269 tokens!494)))) (toChars!7413 (transformation!5370 (rule!7920 separatorToken!241))))) (and b!3380809 b_free!88471 (= (toChars!7413 (transformation!5370 (rule!7920 (h!42269 (t!263098 tokens!494))))) (toChars!7413 (transformation!5370 (rule!7920 separatorToken!241))))) (and b!3380820 b_free!88475 (= (toChars!7413 (transformation!5370 (h!42268 (t!263097 rules!2135)))) (toChars!7413 (transformation!5370 (rule!7920 separatorToken!241))))) (and b!3380062 b_free!88451) b_lambda!95975)))

(declare-fun b_lambda!95977 () Bool)

(assert (= b_lambda!95943 (or (and b!3380062 b_free!88451 (= (toChars!7413 (transformation!5370 (rule!7920 separatorToken!241))) (toChars!7413 (transformation!5370 (rule!7920 (h!42269 tokens!494)))))) (and b!3380068 b_free!88455) (and b!3380820 b_free!88475 (= (toChars!7413 (transformation!5370 (h!42268 (t!263097 rules!2135)))) (toChars!7413 (transformation!5370 (rule!7920 (h!42269 tokens!494)))))) (and b!3380071 b_free!88459 (= (toChars!7413 (transformation!5370 (h!42268 rules!2135))) (toChars!7413 (transformation!5370 (rule!7920 (h!42269 tokens!494)))))) (and b!3380809 b_free!88471 (= (toChars!7413 (transformation!5370 (rule!7920 (h!42269 (t!263098 tokens!494))))) (toChars!7413 (transformation!5370 (rule!7920 (h!42269 tokens!494)))))) b_lambda!95977)))

(check-sat (not d!959062) (not b!3380180) (not d!959080) (not b_next!89157) tp_is_empty!17473 (not b!3380671) (not b_next!89175) b_and!234853 (not b!3380530) (not b!3380578) (not d!958904) (not b!3380785) b_and!234851 (not d!958934) (not d!959084) (not tb!179963) (not b!3380646) b_and!234873 (not d!958906) (not b_lambda!95967) (not b!3380824) (not b!3380652) (not b_lambda!95969) (not d!959094) (not b!3380156) (not b!3380489) (not bm!244504) (not b!3380589) (not d!959104) (not b!3380562) (not b_lambda!95977) (not b!3380534) (not d!959100) (not b!3380793) (not b!3380767) (not b!3380483) (not d!959092) (not d!959072) (not d!959116) (not b!3380563) (not d!959050) (not d!959060) (not b!3380454) (not b!3380222) (not b_lambda!95975) (not b!3380770) (not bm!244505) (not b!3380115) (not d!958886) (not b!3380650) (not b!3380466) (not d!958954) b_and!234885 (not b!3380808) (not b!3380557) (not b!3380559) (not b!3380790) (not d!959074) (not b!3380669) (not b!3380794) (not d!958950) (not d!959046) (not d!959042) (not d!959114) (not b!3380784) (not b!3380166) (not b!3380535) (not bm!244503) (not bm!244507) (not b!3380576) (not b!3380496) (not b!3380558) (not b_next!89159) b_and!234871 (not b!3380143) (not d!959088) (not b!3380630) (not b!3380661) (not d!959086) (not b!3380818) (not d!959090) (not b!3380644) (not b!3380636) (not b_lambda!95965) (not d!958918) (not b!3380577) (not d!959112) (not bm!244513) (not b!3380265) (not b!3380254) (not d!959078) (not b!3380638) (not b!3380490) (not b!3380666) (not b!3380561) (not b!3380664) (not d!959040) (not d!959096) (not b!3380588) (not b!3380480) (not b_next!89155) (not b_lambda!95973) (not b!3380673) (not b!3380482) (not b!3380624) (not b!3380255) (not b!3380120) (not b!3380823) b_and!234889 (not b_next!89153) (not b!3380567) (not d!959044) (not b!3380670) (not b!3380819) (not b!3380632) (not bm!244512) (not b!3380622) b_and!234883 (not b!3380769) (not b!3380822) (not d!959082) (not d!959054) (not b!3380438) (not b!3380529) (not d!958902) (not d!959034) (not b!3380224) (not b!3380654) (not b!3380179) (not b!3380659) (not d!959124) (not bm!244514) (not b_next!89163) (not b!3380532) (not bm!244509) (not b_next!89173) (not d!959052) (not b!3380256) (not d!959048) (not b!3380565) (not b_next!89177) (not b_next!89161) (not b!3380165) (not b!3380645) b_and!234855 (not d!959066) (not b!3380640) (not b!3380225) (not b!3380527) (not d!959098) (not b!3380806) (not d!959134) (not d!959064) (not tb!179969) (not b!3380117) b_and!234869 (not b!3380555) (not b!3380447) (not b!3380201) (not b!3380658) b_and!234887 (not b!3380672) (not d!958910) (not b!3380460) (not b!3380807) (not d!959122) (not b!3380795) (not b!3380663) (not b_next!89179) (not b!3380626) (not b_lambda!95971) (not d!959030) (not b!3380631) (not b!3380560) (not b!3380783) (not b!3380791) (not d!959120) (not b!3380660) (not b!3380768) (not bm!244508) (not tb!179939))
(check-sat (not b_next!89157) b_and!234885 (not b_next!89159) b_and!234871 (not b_next!89155) b_and!234883 (not b_next!89163) (not b_next!89173) b_and!234855 (not b_next!89179) (not b_next!89175) b_and!234853 b_and!234873 b_and!234851 (not b_next!89153) b_and!234889 (not b_next!89177) (not b_next!89161) b_and!234869 b_and!234887)
