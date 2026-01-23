; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!226976 () Bool)

(assert start!226976)

(declare-fun b!2305274 () Bool)

(declare-fun b_free!69661 () Bool)

(declare-fun b_next!70365 () Bool)

(assert (=> b!2305274 (= b_free!69661 (not b_next!70365))))

(declare-fun tp!731370 () Bool)

(declare-fun b_and!183937 () Bool)

(assert (=> b!2305274 (= tp!731370 b_and!183937)))

(declare-fun b_free!69663 () Bool)

(declare-fun b_next!70367 () Bool)

(assert (=> b!2305274 (= b_free!69663 (not b_next!70367))))

(declare-fun tp!731379 () Bool)

(declare-fun b_and!183939 () Bool)

(assert (=> b!2305274 (= tp!731379 b_and!183939)))

(declare-fun b!2305282 () Bool)

(declare-fun b_free!69665 () Bool)

(declare-fun b_next!70369 () Bool)

(assert (=> b!2305282 (= b_free!69665 (not b_next!70369))))

(declare-fun tp!731364 () Bool)

(declare-fun b_and!183941 () Bool)

(assert (=> b!2305282 (= tp!731364 b_and!183941)))

(declare-fun b_free!69667 () Bool)

(declare-fun b_next!70371 () Bool)

(assert (=> b!2305282 (= b_free!69667 (not b_next!70371))))

(declare-fun tp!731378 () Bool)

(declare-fun b_and!183943 () Bool)

(assert (=> b!2305282 (= tp!731378 b_and!183943)))

(declare-fun b!2305267 () Bool)

(declare-fun b_free!69669 () Bool)

(declare-fun b_next!70373 () Bool)

(assert (=> b!2305267 (= b_free!69669 (not b_next!70373))))

(declare-fun tp!731369 () Bool)

(declare-fun b_and!183945 () Bool)

(assert (=> b!2305267 (= tp!731369 b_and!183945)))

(declare-fun b_free!69671 () Bool)

(declare-fun b_next!70375 () Bool)

(assert (=> b!2305267 (= b_free!69671 (not b_next!70375))))

(declare-fun tp!731374 () Bool)

(declare-fun b_and!183947 () Bool)

(assert (=> b!2305267 (= tp!731374 b_and!183947)))

(declare-fun b!2305284 () Bool)

(declare-fun b_free!69673 () Bool)

(declare-fun b_next!70377 () Bool)

(assert (=> b!2305284 (= b_free!69673 (not b_next!70377))))

(declare-fun tp!731368 () Bool)

(declare-fun b_and!183949 () Bool)

(assert (=> b!2305284 (= tp!731368 b_and!183949)))

(declare-fun b_free!69675 () Bool)

(declare-fun b_next!70379 () Bool)

(assert (=> b!2305284 (= b_free!69675 (not b_next!70379))))

(declare-fun tp!731363 () Bool)

(declare-fun b_and!183951 () Bool)

(assert (=> b!2305284 (= tp!731363 b_and!183951)))

(declare-fun b!2305264 () Bool)

(declare-fun e!1477310 () Bool)

(assert (=> b!2305264 (= e!1477310 true)))

(declare-datatypes ((LexerInterface!3996 0))(
  ( (LexerInterfaceExt!3993 (__x!18182 Int)) (Lexer!3994) )
))
(declare-fun thiss!16613 () LexerInterface!3996)

(declare-datatypes ((List!27528 0))(
  ( (Nil!27434) (Cons!27434 (h!32835 (_ BitVec 16)) (t!206328 List!27528)) )
))
(declare-datatypes ((TokenValue!4561 0))(
  ( (FloatLiteralValue!9122 (text!32372 List!27528)) (TokenValueExt!4560 (__x!18183 Int)) (Broken!22805 (value!139165 List!27528)) (Object!4654) (End!4561) (Def!4561) (Underscore!4561) (Match!4561) (Else!4561) (Error!4561) (Case!4561) (If!4561) (Extends!4561) (Abstract!4561) (Class!4561) (Val!4561) (DelimiterValue!9122 (del!4621 List!27528)) (KeywordValue!4567 (value!139166 List!27528)) (CommentValue!9122 (value!139167 List!27528)) (WhitespaceValue!9122 (value!139168 List!27528)) (IndentationValue!4561 (value!139169 List!27528)) (String!29908) (Int32!4561) (Broken!22806 (value!139170 List!27528)) (Boolean!4562) (Unit!40343) (OperatorValue!4564 (op!4621 List!27528)) (IdentifierValue!9122 (value!139171 List!27528)) (IdentifierValue!9123 (value!139172 List!27528)) (WhitespaceValue!9123 (value!139173 List!27528)) (True!9122) (False!9122) (Broken!22807 (value!139174 List!27528)) (Broken!22808 (value!139175 List!27528)) (True!9123) (RightBrace!4561) (RightBracket!4561) (Colon!4561) (Null!4561) (Comma!4561) (LeftBracket!4561) (False!9123) (LeftBrace!4561) (ImaginaryLiteralValue!4561 (text!32373 List!27528)) (StringLiteralValue!13683 (value!139176 List!27528)) (EOFValue!4561 (value!139177 List!27528)) (IdentValue!4561 (value!139178 List!27528)) (DelimiterValue!9123 (value!139179 List!27528)) (DedentValue!4561 (value!139180 List!27528)) (NewLineValue!4561 (value!139181 List!27528)) (IntegerValue!13683 (value!139182 (_ BitVec 32)) (text!32374 List!27528)) (IntegerValue!13684 (value!139183 Int) (text!32375 List!27528)) (Times!4561) (Or!4561) (Equal!4561) (Minus!4561) (Broken!22809 (value!139184 List!27528)) (And!4561) (Div!4561) (LessEqual!4561) (Mod!4561) (Concat!11308) (Not!4561) (Plus!4561) (SpaceValue!4561 (value!139185 List!27528)) (IntegerValue!13685 (value!139186 Int) (text!32376 List!27528)) (StringLiteralValue!13684 (text!32377 List!27528)) (FloatLiteralValue!9123 (text!32378 List!27528)) (BytesLiteralValue!4561 (value!139187 List!27528)) (CommentValue!9123 (value!139188 List!27528)) (StringLiteralValue!13685 (value!139189 List!27528)) (ErrorTokenValue!4561 (msg!4622 List!27528)) )
))
(declare-datatypes ((C!13640 0))(
  ( (C!13641 (val!7868 Int)) )
))
(declare-datatypes ((List!27529 0))(
  ( (Nil!27435) (Cons!27435 (h!32836 C!13640) (t!206329 List!27529)) )
))
(declare-datatypes ((IArray!17897 0))(
  ( (IArray!17898 (innerList!9006 List!27529)) )
))
(declare-datatypes ((Conc!8946 0))(
  ( (Node!8946 (left!20790 Conc!8946) (right!21120 Conc!8946) (csize!18122 Int) (cheight!9157 Int)) (Leaf!13131 (xs!11888 IArray!17897) (csize!18123 Int)) (Empty!8946) )
))
(declare-datatypes ((BalanceConc!17620 0))(
  ( (BalanceConc!17621 (c!365466 Conc!8946)) )
))
(declare-datatypes ((Regex!6747 0))(
  ( (ElementMatch!6747 (c!365467 C!13640)) (Concat!11309 (regOne!14006 Regex!6747) (regTwo!14006 Regex!6747)) (EmptyExpr!6747) (Star!6747 (reg!7076 Regex!6747)) (EmptyLang!6747) (Union!6747 (regOne!14007 Regex!6747) (regTwo!14007 Regex!6747)) )
))
(declare-datatypes ((String!29909 0))(
  ( (String!29910 (value!139190 String)) )
))
(declare-datatypes ((TokenValueInjection!8662 0))(
  ( (TokenValueInjection!8663 (toValue!6213 Int) (toChars!6072 Int)) )
))
(declare-datatypes ((Rule!8598 0))(
  ( (Rule!8599 (regex!4399 Regex!6747) (tag!4889 String!29909) (isSeparator!4399 Bool) (transformation!4399 TokenValueInjection!8662)) )
))
(declare-fun r!2363 () Rule!8598)

(declare-fun input!1722 () List!27529)

(declare-fun lt!854971 () Int)

(declare-datatypes ((Token!8276 0))(
  ( (Token!8277 (value!139191 TokenValue!4561) (rule!6747 Rule!8598) (size!21647 Int) (originalCharacters!5169 List!27529)) )
))
(declare-datatypes ((tuple2!27334 0))(
  ( (tuple2!27335 (_1!16177 Token!8276) (_2!16177 List!27529)) )
))
(declare-fun lt!854973 () tuple2!27334)

(declare-fun lt!854982 () List!27529)

(declare-datatypes ((Option!5397 0))(
  ( (None!5396) (Some!5396 (v!30500 tuple2!27334)) )
))
(declare-fun maxPrefixOneRule!1422 (LexerInterface!3996 Rule!8598 List!27529) Option!5397)

(declare-fun apply!6661 (TokenValueInjection!8662 BalanceConc!17620) TokenValue!4561)

(declare-fun seqFromList!3103 (List!27529) BalanceConc!17620)

(assert (=> b!2305264 (= (maxPrefixOneRule!1422 thiss!16613 r!2363 input!1722) (Some!5396 (tuple2!27335 (Token!8277 (apply!6661 (transformation!4399 r!2363) (seqFromList!3103 lt!854982)) r!2363 lt!854971 lt!854982) (_2!16177 lt!854973))))))

(declare-datatypes ((Unit!40344 0))(
  ( (Unit!40345) )
))
(declare-fun lt!854975 () Unit!40344)

(declare-datatypes ((List!27530 0))(
  ( (Nil!27436) (Cons!27436 (h!32837 Rule!8598) (t!206330 List!27530)) )
))
(declare-fun rules!1750 () List!27530)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!595 (LexerInterface!3996 List!27530 List!27529 List!27529 List!27529 Rule!8598) Unit!40344)

(assert (=> b!2305264 (= lt!854975 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!595 thiss!16613 rules!1750 lt!854982 input!1722 (_2!16177 lt!854973) r!2363))))

(declare-fun b!2305265 () Bool)

(declare-fun e!1477311 () Bool)

(declare-fun e!1477322 () Bool)

(declare-fun tp!731362 () Bool)

(assert (=> b!2305265 (= e!1477311 (and e!1477322 tp!731362))))

(declare-fun b!2305266 () Bool)

(declare-fun e!1477329 () Bool)

(assert (=> b!2305266 (= e!1477329 e!1477310)))

(declare-fun res!985562 () Bool)

(assert (=> b!2305266 (=> res!985562 e!1477310)))

(declare-fun lt!854986 () Int)

(assert (=> b!2305266 (= res!985562 (<= lt!854986 lt!854971))))

(declare-fun size!21648 (List!27529) Int)

(assert (=> b!2305266 (= lt!854971 (size!21648 lt!854982))))

(declare-fun otherP!12 () List!27529)

(assert (=> b!2305266 (= lt!854986 (size!21648 otherP!12))))

(declare-fun lt!854976 () List!27529)

(assert (=> b!2305266 (= (_2!16177 lt!854973) lt!854976)))

(declare-fun lt!854978 () Unit!40344)

(declare-fun lemmaSamePrefixThenSameSuffix!1070 (List!27529 List!27529 List!27529 List!27529 List!27529) Unit!40344)

(assert (=> b!2305266 (= lt!854978 (lemmaSamePrefixThenSameSuffix!1070 lt!854982 (_2!16177 lt!854973) lt!854982 lt!854976 input!1722))))

(declare-fun getSuffix!1168 (List!27529 List!27529) List!27529)

(assert (=> b!2305266 (= lt!854976 (getSuffix!1168 input!1722 lt!854982))))

(declare-fun isPrefix!2389 (List!27529 List!27529) Bool)

(declare-fun ++!6717 (List!27529 List!27529) List!27529)

(assert (=> b!2305266 (isPrefix!2389 lt!854982 (++!6717 lt!854982 (_2!16177 lt!854973)))))

(declare-fun lt!854977 () Unit!40344)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1582 (List!27529 List!27529) Unit!40344)

(assert (=> b!2305266 (= lt!854977 (lemmaConcatTwoListThenFirstIsPrefix!1582 lt!854982 (_2!16177 lt!854973)))))

(declare-datatypes ((List!27531 0))(
  ( (Nil!27437) (Cons!27437 (h!32838 Token!8276) (t!206331 List!27531)) )
))
(declare-fun tokens!456 () List!27531)

(declare-fun list!10820 (BalanceConc!17620) List!27529)

(declare-fun charsOf!2787 (Token!8276) BalanceConc!17620)

(assert (=> b!2305266 (= lt!854982 (list!10820 (charsOf!2787 (h!32838 tokens!456))))))

(declare-fun get!8270 (Option!5397) tuple2!27334)

(declare-fun maxPrefix!2252 (LexerInterface!3996 List!27530 List!27529) Option!5397)

(assert (=> b!2305266 (= lt!854973 (get!8270 (maxPrefix!2252 thiss!16613 rules!1750 input!1722)))))

(declare-fun e!1477334 () Bool)

(assert (=> b!2305267 (= e!1477334 (and tp!731369 tp!731374))))

(declare-fun tp!731372 () Bool)

(declare-fun b!2305268 () Bool)

(declare-fun e!1477314 () Bool)

(declare-fun inv!37074 (String!29909) Bool)

(declare-fun inv!37077 (TokenValueInjection!8662) Bool)

(assert (=> b!2305268 (= e!1477322 (and tp!731372 (inv!37074 (tag!4889 (h!32837 rules!1750))) (inv!37077 (transformation!4399 (h!32837 rules!1750))) e!1477314))))

(declare-fun b!2305269 () Bool)

(declare-fun e!1477324 () Bool)

(declare-fun e!1477325 () Bool)

(assert (=> b!2305269 (= e!1477324 (not e!1477325))))

(declare-fun res!985568 () Bool)

(assert (=> b!2305269 (=> res!985568 e!1477325)))

(declare-fun e!1477318 () Bool)

(assert (=> b!2305269 (= res!985568 e!1477318)))

(declare-fun res!985573 () Bool)

(assert (=> b!2305269 (=> (not res!985573) (not e!1477318))))

(declare-fun lt!854974 () Bool)

(assert (=> b!2305269 (= res!985573 (not lt!854974))))

(declare-fun ruleValid!1489 (LexerInterface!3996 Rule!8598) Bool)

(assert (=> b!2305269 (ruleValid!1489 thiss!16613 r!2363)))

(declare-fun lt!854979 () Unit!40344)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!894 (LexerInterface!3996 Rule!8598 List!27530) Unit!40344)

(assert (=> b!2305269 (= lt!854979 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!894 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2305270 () Bool)

(declare-fun e!1477326 () Bool)

(declare-fun e!1477336 () Bool)

(assert (=> b!2305270 (= e!1477326 e!1477336)))

(declare-fun res!985569 () Bool)

(assert (=> b!2305270 (=> (not res!985569) (not e!1477336))))

(declare-datatypes ((IArray!17899 0))(
  ( (IArray!17900 (innerList!9007 List!27531)) )
))
(declare-datatypes ((Conc!8947 0))(
  ( (Node!8947 (left!20791 Conc!8947) (right!21121 Conc!8947) (csize!18124 Int) (cheight!9158 Int)) (Leaf!13132 (xs!11889 IArray!17899) (csize!18125 Int)) (Empty!8947) )
))
(declare-datatypes ((BalanceConc!17622 0))(
  ( (BalanceConc!17623 (c!365468 Conc!8947)) )
))
(declare-datatypes ((tuple2!27336 0))(
  ( (tuple2!27337 (_1!16178 BalanceConc!17622) (_2!16178 BalanceConc!17620)) )
))
(declare-fun lt!854985 () tuple2!27336)

(declare-fun suffix!886 () List!27529)

(declare-datatypes ((tuple2!27338 0))(
  ( (tuple2!27339 (_1!16179 List!27531) (_2!16179 List!27529)) )
))
(declare-fun list!10821 (BalanceConc!17622) List!27531)

(assert (=> b!2305270 (= res!985569 (= (tuple2!27339 (list!10821 (_1!16178 lt!854985)) (list!10820 (_2!16178 lt!854985))) (tuple2!27339 tokens!456 suffix!886)))))

(declare-fun lex!1835 (LexerInterface!3996 List!27530 BalanceConc!17620) tuple2!27336)

(assert (=> b!2305270 (= lt!854985 (lex!1835 thiss!16613 rules!1750 (seqFromList!3103 input!1722)))))

(declare-fun b!2305271 () Bool)

(declare-fun res!985576 () Bool)

(assert (=> b!2305271 (=> (not res!985576) (not e!1477326))))

(declare-fun rulesInvariant!3498 (LexerInterface!3996 List!27530) Bool)

(assert (=> b!2305271 (= res!985576 (rulesInvariant!3498 thiss!16613 rules!1750))))

(declare-fun res!985571 () Bool)

(assert (=> start!226976 (=> (not res!985571) (not e!1477326))))

(get-info :version)

(assert (=> start!226976 (= res!985571 ((_ is Lexer!3994) thiss!16613))))

(assert (=> start!226976 e!1477326))

(assert (=> start!226976 true))

(declare-fun e!1477327 () Bool)

(assert (=> start!226976 e!1477327))

(declare-fun e!1477316 () Bool)

(assert (=> start!226976 e!1477316))

(declare-fun e!1477313 () Bool)

(assert (=> start!226976 e!1477313))

(declare-fun e!1477309 () Bool)

(assert (=> start!226976 e!1477309))

(assert (=> start!226976 e!1477311))

(declare-fun e!1477333 () Bool)

(assert (=> start!226976 e!1477333))

(declare-fun e!1477323 () Bool)

(assert (=> start!226976 e!1477323))

(declare-fun b!2305272 () Bool)

(declare-fun res!985570 () Bool)

(assert (=> b!2305272 (=> (not res!985570) (not e!1477324))))

(declare-fun e!1477312 () Bool)

(assert (=> b!2305272 (= res!985570 e!1477312)))

(declare-fun res!985563 () Bool)

(assert (=> b!2305272 (=> res!985563 e!1477312)))

(assert (=> b!2305272 (= res!985563 lt!854974)))

(declare-fun b!2305273 () Bool)

(declare-fun tp!731366 () Bool)

(declare-fun e!1477337 () Bool)

(declare-fun inv!37078 (Token!8276) Bool)

(assert (=> b!2305273 (= e!1477323 (and (inv!37078 (h!32838 tokens!456)) e!1477337 tp!731366))))

(declare-fun e!1477319 () Bool)

(assert (=> b!2305274 (= e!1477319 (and tp!731370 tp!731379))))

(declare-fun b!2305275 () Bool)

(assert (=> b!2305275 (= e!1477336 e!1477324)))

(declare-fun res!985567 () Bool)

(assert (=> b!2305275 (=> (not res!985567) (not e!1477324))))

(declare-fun e!1477328 () Bool)

(assert (=> b!2305275 (= res!985567 e!1477328)))

(declare-fun res!985575 () Bool)

(assert (=> b!2305275 (=> res!985575 e!1477328)))

(assert (=> b!2305275 (= res!985575 lt!854974)))

(declare-fun isEmpty!15681 (List!27531) Bool)

(assert (=> b!2305275 (= lt!854974 (isEmpty!15681 tokens!456))))

(declare-fun b!2305276 () Bool)

(declare-fun e!1477315 () Unit!40344)

(declare-fun Unit!40346 () Unit!40344)

(assert (=> b!2305276 (= e!1477315 Unit!40346)))

(declare-fun lt!854980 () Unit!40344)

(declare-fun otherR!12 () Rule!8598)

(declare-fun lemmaSameIndexThenSameElement!192 (List!27530 Rule!8598 Rule!8598) Unit!40344)

(assert (=> b!2305276 (= lt!854980 (lemmaSameIndexThenSameElement!192 rules!1750 r!2363 otherR!12))))

(assert (=> b!2305276 false))

(declare-fun tp!731377 () Bool)

(declare-fun b!2305277 () Bool)

(assert (=> b!2305277 (= e!1477316 (and tp!731377 (inv!37074 (tag!4889 otherR!12)) (inv!37077 (transformation!4399 otherR!12)) e!1477319))))

(declare-fun b!2305278 () Bool)

(declare-fun head!5050 (List!27531) Token!8276)

(assert (=> b!2305278 (= e!1477312 (= (rule!6747 (head!5050 tokens!456)) r!2363))))

(declare-fun b!2305279 () Bool)

(declare-fun res!985564 () Bool)

(assert (=> b!2305279 (=> (not res!985564) (not e!1477326))))

(declare-fun contains!4787 (List!27530 Rule!8598) Bool)

(assert (=> b!2305279 (= res!985564 (contains!4787 rules!1750 r!2363))))

(declare-fun b!2305280 () Bool)

(declare-fun Unit!40347 () Unit!40344)

(assert (=> b!2305280 (= e!1477315 Unit!40347)))

(declare-fun b!2305281 () Bool)

(declare-fun matchR!3004 (Regex!6747 List!27529) Bool)

(assert (=> b!2305281 (= e!1477318 (not (matchR!3004 (regex!4399 r!2363) (list!10820 (charsOf!2787 (head!5050 tokens!456))))))))

(declare-fun e!1477320 () Bool)

(assert (=> b!2305282 (= e!1477320 (and tp!731364 tp!731378))))

(declare-fun b!2305283 () Bool)

(declare-fun tp_is_empty!10715 () Bool)

(declare-fun tp!731371 () Bool)

(assert (=> b!2305283 (= e!1477309 (and tp_is_empty!10715 tp!731371))))

(assert (=> b!2305284 (= e!1477314 (and tp!731368 tp!731363))))

(declare-fun tp!731367 () Bool)

(declare-fun b!2305285 () Bool)

(declare-fun e!1477308 () Bool)

(declare-fun inv!21 (TokenValue!4561) Bool)

(assert (=> b!2305285 (= e!1477337 (and (inv!21 (value!139191 (h!32838 tokens!456))) e!1477308 tp!731367))))

(declare-fun b!2305286 () Bool)

(declare-fun e!1477330 () Bool)

(assert (=> b!2305286 (= e!1477325 e!1477330)))

(declare-fun res!985577 () Bool)

(assert (=> b!2305286 (=> res!985577 e!1477330)))

(declare-fun lt!854983 () Int)

(declare-fun lt!854972 () Int)

(assert (=> b!2305286 (= res!985577 (> lt!854983 lt!854972))))

(declare-fun getIndex!412 (List!27530 Rule!8598) Int)

(assert (=> b!2305286 (= lt!854972 (getIndex!412 rules!1750 otherR!12))))

(assert (=> b!2305286 (= lt!854983 (getIndex!412 rules!1750 r!2363))))

(assert (=> b!2305286 (ruleValid!1489 thiss!16613 otherR!12)))

(declare-fun lt!854981 () Unit!40344)

(assert (=> b!2305286 (= lt!854981 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!894 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2305287 () Bool)

(declare-fun tp!731376 () Bool)

(assert (=> b!2305287 (= e!1477313 (and tp_is_empty!10715 tp!731376))))

(declare-fun b!2305288 () Bool)

(assert (=> b!2305288 (= e!1477330 e!1477329)))

(declare-fun res!985574 () Bool)

(assert (=> b!2305288 (=> res!985574 e!1477329)))

(assert (=> b!2305288 (= res!985574 ((_ is Nil!27437) tokens!456))))

(declare-fun lt!854984 () Unit!40344)

(assert (=> b!2305288 (= lt!854984 e!1477315)))

(declare-fun c!365465 () Bool)

(assert (=> b!2305288 (= c!365465 (= lt!854983 lt!854972))))

(declare-fun b!2305289 () Bool)

(declare-fun size!21649 (BalanceConc!17620) Int)

(assert (=> b!2305289 (= e!1477328 (<= (size!21649 (charsOf!2787 (head!5050 tokens!456))) (size!21648 otherP!12)))))

(declare-fun b!2305290 () Bool)

(declare-fun res!985565 () Bool)

(assert (=> b!2305290 (=> (not res!985565) (not e!1477324))))

(assert (=> b!2305290 (= res!985565 (not (= r!2363 otherR!12)))))

(declare-fun b!2305291 () Bool)

(declare-fun res!985572 () Bool)

(assert (=> b!2305291 (=> (not res!985572) (not e!1477326))))

(declare-fun isEmpty!15682 (List!27530) Bool)

(assert (=> b!2305291 (= res!985572 (not (isEmpty!15682 rules!1750)))))

(declare-fun b!2305292 () Bool)

(declare-fun tp!731365 () Bool)

(assert (=> b!2305292 (= e!1477333 (and tp!731365 (inv!37074 (tag!4889 r!2363)) (inv!37077 (transformation!4399 r!2363)) e!1477320))))

(declare-fun b!2305293 () Bool)

(declare-fun res!985566 () Bool)

(assert (=> b!2305293 (=> (not res!985566) (not e!1477326))))

(assert (=> b!2305293 (= res!985566 (contains!4787 rules!1750 otherR!12))))

(declare-fun b!2305294 () Bool)

(declare-fun tp!731375 () Bool)

(assert (=> b!2305294 (= e!1477308 (and tp!731375 (inv!37074 (tag!4889 (rule!6747 (h!32838 tokens!456)))) (inv!37077 (transformation!4399 (rule!6747 (h!32838 tokens!456)))) e!1477334))))

(declare-fun b!2305295 () Bool)

(declare-fun tp!731373 () Bool)

(assert (=> b!2305295 (= e!1477327 (and tp_is_empty!10715 tp!731373))))

(declare-fun b!2305296 () Bool)

(declare-fun res!985578 () Bool)

(assert (=> b!2305296 (=> (not res!985578) (not e!1477324))))

(assert (=> b!2305296 (= res!985578 (isPrefix!2389 otherP!12 input!1722))))

(assert (= (and start!226976 res!985571) b!2305291))

(assert (= (and b!2305291 res!985572) b!2305271))

(assert (= (and b!2305271 res!985576) b!2305279))

(assert (= (and b!2305279 res!985564) b!2305293))

(assert (= (and b!2305293 res!985566) b!2305270))

(assert (= (and b!2305270 res!985569) b!2305275))

(assert (= (and b!2305275 (not res!985575)) b!2305289))

(assert (= (and b!2305275 res!985567) b!2305272))

(assert (= (and b!2305272 (not res!985563)) b!2305278))

(assert (= (and b!2305272 res!985570) b!2305296))

(assert (= (and b!2305296 res!985578) b!2305290))

(assert (= (and b!2305290 res!985565) b!2305269))

(assert (= (and b!2305269 res!985573) b!2305281))

(assert (= (and b!2305269 (not res!985568)) b!2305286))

(assert (= (and b!2305286 (not res!985577)) b!2305288))

(assert (= (and b!2305288 c!365465) b!2305276))

(assert (= (and b!2305288 (not c!365465)) b!2305280))

(assert (= (and b!2305288 (not res!985574)) b!2305266))

(assert (= (and b!2305266 (not res!985562)) b!2305264))

(assert (= (and start!226976 ((_ is Cons!27435) input!1722)) b!2305295))

(assert (= b!2305277 b!2305274))

(assert (= start!226976 b!2305277))

(assert (= (and start!226976 ((_ is Cons!27435) suffix!886)) b!2305287))

(assert (= (and start!226976 ((_ is Cons!27435) otherP!12)) b!2305283))

(assert (= b!2305268 b!2305284))

(assert (= b!2305265 b!2305268))

(assert (= (and start!226976 ((_ is Cons!27436) rules!1750)) b!2305265))

(assert (= b!2305292 b!2305282))

(assert (= start!226976 b!2305292))

(assert (= b!2305294 b!2305267))

(assert (= b!2305285 b!2305294))

(assert (= b!2305273 b!2305285))

(assert (= (and start!226976 ((_ is Cons!27437) tokens!456)) b!2305273))

(declare-fun m!2732397 () Bool)

(assert (=> b!2305279 m!2732397))

(declare-fun m!2732399 () Bool)

(assert (=> b!2305271 m!2732399))

(declare-fun m!2732401 () Bool)

(assert (=> b!2305278 m!2732401))

(declare-fun m!2732403 () Bool)

(assert (=> b!2305291 m!2732403))

(declare-fun m!2732405 () Bool)

(assert (=> b!2305273 m!2732405))

(declare-fun m!2732407 () Bool)

(assert (=> b!2305294 m!2732407))

(declare-fun m!2732409 () Bool)

(assert (=> b!2305294 m!2732409))

(declare-fun m!2732411 () Bool)

(assert (=> b!2305266 m!2732411))

(declare-fun m!2732413 () Bool)

(assert (=> b!2305266 m!2732413))

(declare-fun m!2732415 () Bool)

(assert (=> b!2305266 m!2732415))

(declare-fun m!2732417 () Bool)

(assert (=> b!2305266 m!2732417))

(declare-fun m!2732419 () Bool)

(assert (=> b!2305266 m!2732419))

(declare-fun m!2732421 () Bool)

(assert (=> b!2305266 m!2732421))

(assert (=> b!2305266 m!2732419))

(declare-fun m!2732423 () Bool)

(assert (=> b!2305266 m!2732423))

(assert (=> b!2305266 m!2732423))

(declare-fun m!2732425 () Bool)

(assert (=> b!2305266 m!2732425))

(assert (=> b!2305266 m!2732413))

(declare-fun m!2732427 () Bool)

(assert (=> b!2305266 m!2732427))

(declare-fun m!2732429 () Bool)

(assert (=> b!2305266 m!2732429))

(declare-fun m!2732431 () Bool)

(assert (=> b!2305266 m!2732431))

(declare-fun m!2732433 () Bool)

(assert (=> b!2305296 m!2732433))

(declare-fun m!2732435 () Bool)

(assert (=> b!2305277 m!2732435))

(declare-fun m!2732437 () Bool)

(assert (=> b!2305277 m!2732437))

(declare-fun m!2732439 () Bool)

(assert (=> b!2305275 m!2732439))

(declare-fun m!2732441 () Bool)

(assert (=> b!2305268 m!2732441))

(declare-fun m!2732443 () Bool)

(assert (=> b!2305268 m!2732443))

(declare-fun m!2732445 () Bool)

(assert (=> b!2305293 m!2732445))

(declare-fun m!2732447 () Bool)

(assert (=> b!2305285 m!2732447))

(declare-fun m!2732449 () Bool)

(assert (=> b!2305286 m!2732449))

(declare-fun m!2732451 () Bool)

(assert (=> b!2305286 m!2732451))

(declare-fun m!2732453 () Bool)

(assert (=> b!2305286 m!2732453))

(declare-fun m!2732455 () Bool)

(assert (=> b!2305286 m!2732455))

(declare-fun m!2732457 () Bool)

(assert (=> b!2305264 m!2732457))

(declare-fun m!2732459 () Bool)

(assert (=> b!2305264 m!2732459))

(assert (=> b!2305264 m!2732459))

(declare-fun m!2732461 () Bool)

(assert (=> b!2305264 m!2732461))

(declare-fun m!2732463 () Bool)

(assert (=> b!2305264 m!2732463))

(assert (=> b!2305281 m!2732401))

(assert (=> b!2305281 m!2732401))

(declare-fun m!2732465 () Bool)

(assert (=> b!2305281 m!2732465))

(assert (=> b!2305281 m!2732465))

(declare-fun m!2732467 () Bool)

(assert (=> b!2305281 m!2732467))

(assert (=> b!2305281 m!2732467))

(declare-fun m!2732469 () Bool)

(assert (=> b!2305281 m!2732469))

(declare-fun m!2732471 () Bool)

(assert (=> b!2305276 m!2732471))

(assert (=> b!2305289 m!2732401))

(assert (=> b!2305289 m!2732401))

(assert (=> b!2305289 m!2732465))

(assert (=> b!2305289 m!2732465))

(declare-fun m!2732473 () Bool)

(assert (=> b!2305289 m!2732473))

(assert (=> b!2305289 m!2732429))

(declare-fun m!2732475 () Bool)

(assert (=> b!2305270 m!2732475))

(declare-fun m!2732477 () Bool)

(assert (=> b!2305270 m!2732477))

(declare-fun m!2732479 () Bool)

(assert (=> b!2305270 m!2732479))

(assert (=> b!2305270 m!2732479))

(declare-fun m!2732481 () Bool)

(assert (=> b!2305270 m!2732481))

(declare-fun m!2732483 () Bool)

(assert (=> b!2305269 m!2732483))

(declare-fun m!2732485 () Bool)

(assert (=> b!2305269 m!2732485))

(declare-fun m!2732487 () Bool)

(assert (=> b!2305292 m!2732487))

(declare-fun m!2732489 () Bool)

(assert (=> b!2305292 m!2732489))

(check-sat b_and!183939 (not b!2305273) (not b!2305293) (not b!2305266) b_and!183945 (not b!2305283) (not b!2305265) (not b!2305292) (not b!2305279) tp_is_empty!10715 b_and!183943 (not b!2305275) (not b!2305271) (not b!2305277) (not b_next!70373) (not b_next!70369) (not b_next!70367) (not b!2305296) (not b!2305285) (not b!2305270) b_and!183949 b_and!183937 (not b_next!70365) b_and!183941 (not b_next!70371) (not b!2305269) (not b!2305278) (not b!2305287) (not b!2305291) (not b_next!70379) (not b!2305286) (not b_next!70377) b_and!183951 (not b!2305294) (not b!2305276) (not b!2305264) (not b_next!70375) (not b!2305295) b_and!183947 (not b!2305268) (not b!2305289) (not b!2305281))
(check-sat b_and!183939 b_and!183943 (not b_next!70367) b_and!183949 (not b_next!70379) b_and!183945 (not b_next!70375) b_and!183947 (not b_next!70373) (not b_next!70369) b_and!183937 (not b_next!70365) b_and!183941 (not b_next!70371) (not b_next!70377) b_and!183951)
