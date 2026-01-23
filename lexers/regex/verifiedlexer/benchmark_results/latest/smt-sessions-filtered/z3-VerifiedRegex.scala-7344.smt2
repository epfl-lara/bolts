; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!390322 () Bool)

(assert start!390322)

(declare-fun b!4117990 () Bool)

(declare-fun b_free!116267 () Bool)

(declare-fun b_next!116971 () Bool)

(assert (=> b!4117990 (= b_free!116267 (not b_next!116971))))

(declare-fun tp!1254810 () Bool)

(declare-fun b_and!318349 () Bool)

(assert (=> b!4117990 (= tp!1254810 b_and!318349)))

(declare-fun b_free!116269 () Bool)

(declare-fun b_next!116973 () Bool)

(assert (=> b!4117990 (= b_free!116269 (not b_next!116973))))

(declare-fun tp!1254803 () Bool)

(declare-fun b_and!318351 () Bool)

(assert (=> b!4117990 (= tp!1254803 b_and!318351)))

(declare-fun b!4117993 () Bool)

(declare-fun b_free!116271 () Bool)

(declare-fun b_next!116975 () Bool)

(assert (=> b!4117993 (= b_free!116271 (not b_next!116975))))

(declare-fun tp!1254808 () Bool)

(declare-fun b_and!318353 () Bool)

(assert (=> b!4117993 (= tp!1254808 b_and!318353)))

(declare-fun b_free!116273 () Bool)

(declare-fun b_next!116977 () Bool)

(assert (=> b!4117993 (= b_free!116273 (not b_next!116977))))

(declare-fun tp!1254809 () Bool)

(declare-fun b_and!318355 () Bool)

(assert (=> b!4117993 (= tp!1254809 b_and!318355)))

(declare-fun b!4117988 () Bool)

(declare-fun b_free!116275 () Bool)

(declare-fun b_next!116979 () Bool)

(assert (=> b!4117988 (= b_free!116275 (not b_next!116979))))

(declare-fun tp!1254812 () Bool)

(declare-fun b_and!318357 () Bool)

(assert (=> b!4117988 (= tp!1254812 b_and!318357)))

(declare-fun b_free!116277 () Bool)

(declare-fun b_next!116981 () Bool)

(assert (=> b!4117988 (= b_free!116277 (not b_next!116981))))

(declare-fun tp!1254802 () Bool)

(declare-fun b_and!318359 () Bool)

(assert (=> b!4117988 (= tp!1254802 b_and!318359)))

(declare-fun b!4117980 () Bool)

(declare-fun res!1682023 () Bool)

(declare-fun e!2555186 () Bool)

(assert (=> b!4117980 (=> (not res!1682023) (not e!2555186))))

(declare-datatypes ((C!24516 0))(
  ( (C!24517 (val!14368 Int)) )
))
(declare-datatypes ((List!44622 0))(
  ( (Nil!44498) (Cons!44498 (h!49918 C!24516) (t!340525 List!44622)) )
))
(declare-fun p!2912 () List!44622)

(declare-fun input!3238 () List!44622)

(declare-fun isPrefix!4195 (List!44622 List!44622) Bool)

(assert (=> b!4117980 (= res!1682023 (isPrefix!4195 p!2912 input!3238))))

(declare-fun b!4117981 () Bool)

(declare-fun res!1682020 () Bool)

(assert (=> b!4117981 (=> (not res!1682020) (not e!2555186))))

(declare-fun isEmpty!26459 (List!44622) Bool)

(assert (=> b!4117981 (= res!1682020 (not (isEmpty!26459 p!2912)))))

(declare-fun b!4117982 () Bool)

(declare-fun res!1682021 () Bool)

(assert (=> b!4117982 (=> (not res!1682021) (not e!2555186))))

(declare-datatypes ((List!44623 0))(
  ( (Nil!44499) (Cons!44499 (h!49919 (_ BitVec 16)) (t!340526 List!44623)) )
))
(declare-datatypes ((TokenValue!7490 0))(
  ( (FloatLiteralValue!14980 (text!52875 List!44623)) (TokenValueExt!7489 (__x!27197 Int)) (Broken!37450 (value!227438 List!44623)) (Object!7613) (End!7490) (Def!7490) (Underscore!7490) (Match!7490) (Else!7490) (Error!7490) (Case!7490) (If!7490) (Extends!7490) (Abstract!7490) (Class!7490) (Val!7490) (DelimiterValue!14980 (del!7550 List!44623)) (KeywordValue!7496 (value!227439 List!44623)) (CommentValue!14980 (value!227440 List!44623)) (WhitespaceValue!14980 (value!227441 List!44623)) (IndentationValue!7490 (value!227442 List!44623)) (String!51199) (Int32!7490) (Broken!37451 (value!227443 List!44623)) (Boolean!7491) (Unit!63856) (OperatorValue!7493 (op!7550 List!44623)) (IdentifierValue!14980 (value!227444 List!44623)) (IdentifierValue!14981 (value!227445 List!44623)) (WhitespaceValue!14981 (value!227446 List!44623)) (True!14980) (False!14980) (Broken!37452 (value!227447 List!44623)) (Broken!37453 (value!227448 List!44623)) (True!14981) (RightBrace!7490) (RightBracket!7490) (Colon!7490) (Null!7490) (Comma!7490) (LeftBracket!7490) (False!14981) (LeftBrace!7490) (ImaginaryLiteralValue!7490 (text!52876 List!44623)) (StringLiteralValue!22470 (value!227449 List!44623)) (EOFValue!7490 (value!227450 List!44623)) (IdentValue!7490 (value!227451 List!44623)) (DelimiterValue!14981 (value!227452 List!44623)) (DedentValue!7490 (value!227453 List!44623)) (NewLineValue!7490 (value!227454 List!44623)) (IntegerValue!22470 (value!227455 (_ BitVec 32)) (text!52877 List!44623)) (IntegerValue!22471 (value!227456 Int) (text!52878 List!44623)) (Times!7490) (Or!7490) (Equal!7490) (Minus!7490) (Broken!37454 (value!227457 List!44623)) (And!7490) (Div!7490) (LessEqual!7490) (Mod!7490) (Concat!19655) (Not!7490) (Plus!7490) (SpaceValue!7490 (value!227458 List!44623)) (IntegerValue!22472 (value!227459 Int) (text!52879 List!44623)) (StringLiteralValue!22471 (text!52880 List!44623)) (FloatLiteralValue!14981 (text!52881 List!44623)) (BytesLiteralValue!7490 (value!227460 List!44623)) (CommentValue!14981 (value!227461 List!44623)) (StringLiteralValue!22472 (value!227462 List!44623)) (ErrorTokenValue!7490 (msg!7551 List!44623)) )
))
(declare-datatypes ((IArray!26947 0))(
  ( (IArray!26948 (innerList!13531 List!44622)) )
))
(declare-datatypes ((Conc!13471 0))(
  ( (Node!13471 (left!33335 Conc!13471) (right!33665 Conc!13471) (csize!27172 Int) (cheight!13682 Int)) (Leaf!20816 (xs!16777 IArray!26947) (csize!27173 Int)) (Empty!13471) )
))
(declare-datatypes ((BalanceConc!26536 0))(
  ( (BalanceConc!26537 (c!707290 Conc!13471)) )
))
(declare-datatypes ((Regex!12165 0))(
  ( (ElementMatch!12165 (c!707291 C!24516)) (Concat!19656 (regOne!24842 Regex!12165) (regTwo!24842 Regex!12165)) (EmptyExpr!12165) (Star!12165 (reg!12494 Regex!12165)) (EmptyLang!12165) (Union!12165 (regOne!24843 Regex!12165) (regTwo!24843 Regex!12165)) )
))
(declare-datatypes ((String!51200 0))(
  ( (String!51201 (value!227463 String)) )
))
(declare-datatypes ((TokenValueInjection!14408 0))(
  ( (TokenValueInjection!14409 (toValue!9912 Int) (toChars!9771 Int)) )
))
(declare-datatypes ((Rule!14320 0))(
  ( (Rule!14321 (regex!7260 Regex!12165) (tag!8120 String!51200) (isSeparator!7260 Bool) (transformation!7260 TokenValueInjection!14408)) )
))
(declare-datatypes ((List!44624 0))(
  ( (Nil!44500) (Cons!44500 (h!49920 Rule!14320) (t!340527 List!44624)) )
))
(declare-fun rules!3756 () List!44624)

(declare-fun r!4008 () Rule!14320)

(declare-fun contains!8932 (List!44624 Rule!14320) Bool)

(assert (=> b!4117982 (= res!1682021 (contains!8932 rules!3756 r!4008))))

(declare-fun b!4117983 () Bool)

(declare-fun res!1682018 () Bool)

(declare-fun e!2555184 () Bool)

(assert (=> b!4117983 (=> (not res!1682018) (not e!2555184))))

(declare-datatypes ((LexerInterface!6849 0))(
  ( (LexerInterfaceExt!6846 (__x!27198 Int)) (Lexer!6847) )
))
(declare-fun thiss!25645 () LexerInterface!6849)

(declare-fun ruleValid!3068 (LexerInterface!6849 Rule!14320) Bool)

(assert (=> b!4117983 (= res!1682018 (ruleValid!3068 thiss!25645 r!4008))))

(declare-fun b!4117985 () Bool)

(declare-fun res!1682026 () Bool)

(assert (=> b!4117985 (=> (not res!1682026) (not e!2555184))))

(declare-fun rBis!149 () Rule!14320)

(declare-fun getIndex!608 (List!44624 Rule!14320) Int)

(assert (=> b!4117985 (= res!1682026 (< (getIndex!608 rules!3756 rBis!149) (getIndex!608 rules!3756 r!4008)))))

(declare-fun b!4117986 () Bool)

(declare-fun e!2555183 () Bool)

(declare-fun tp_is_empty!21253 () Bool)

(declare-fun tp!1254801 () Bool)

(assert (=> b!4117986 (= e!2555183 (and tp_is_empty!21253 tp!1254801))))

(declare-fun b!4117987 () Bool)

(declare-fun e!2555177 () Bool)

(declare-fun e!2555189 () Bool)

(declare-fun tp!1254811 () Bool)

(assert (=> b!4117987 (= e!2555177 (and e!2555189 tp!1254811))))

(declare-fun e!2555180 () Bool)

(assert (=> b!4117988 (= e!2555180 (and tp!1254812 tp!1254802))))

(declare-fun b!4117989 () Bool)

(declare-fun e!2555190 () Bool)

(declare-fun tp!1254807 () Bool)

(assert (=> b!4117989 (= e!2555190 (and tp_is_empty!21253 tp!1254807))))

(declare-fun e!2555185 () Bool)

(assert (=> b!4117990 (= e!2555185 (and tp!1254810 tp!1254803))))

(declare-fun tp!1254805 () Bool)

(declare-fun e!2555187 () Bool)

(declare-fun b!4117991 () Bool)

(declare-fun inv!59083 (String!51200) Bool)

(declare-fun inv!59085 (TokenValueInjection!14408) Bool)

(assert (=> b!4117991 (= e!2555187 (and tp!1254805 (inv!59083 (tag!8120 rBis!149)) (inv!59085 (transformation!7260 rBis!149)) e!2555180))))

(declare-fun b!4117992 () Bool)

(assert (=> b!4117992 (= e!2555186 e!2555184)))

(declare-fun res!1682019 () Bool)

(assert (=> b!4117992 (=> (not res!1682019) (not e!2555184))))

(declare-fun lt!1469139 () BalanceConc!26536)

(declare-datatypes ((Token!13450 0))(
  ( (Token!13451 (value!227464 TokenValue!7490) (rule!10326 Rule!14320) (size!32929 Int) (originalCharacters!7756 List!44622)) )
))
(declare-datatypes ((tuple2!42978 0))(
  ( (tuple2!42979 (_1!24623 Token!13450) (_2!24623 List!44622)) )
))
(declare-datatypes ((Option!9568 0))(
  ( (None!9567) (Some!9567 (v!40145 tuple2!42978)) )
))
(declare-fun maxPrefix!4041 (LexerInterface!6849 List!44624 List!44622) Option!9568)

(declare-fun apply!10333 (TokenValueInjection!14408 BalanceConc!26536) TokenValue!7490)

(declare-fun size!32930 (List!44622) Int)

(declare-fun getSuffix!2524 (List!44622 List!44622) List!44622)

(assert (=> b!4117992 (= res!1682019 (= (maxPrefix!4041 thiss!25645 rules!3756 input!3238) (Some!9567 (tuple2!42979 (Token!13451 (apply!10333 (transformation!7260 r!4008) lt!1469139) r!4008 (size!32930 p!2912) p!2912) (getSuffix!2524 input!3238 p!2912)))))))

(declare-datatypes ((Unit!63857 0))(
  ( (Unit!63858) )
))
(declare-fun lt!1469138 () Unit!63857)

(declare-fun lemmaSemiInverse!2118 (TokenValueInjection!14408 BalanceConc!26536) Unit!63857)

(assert (=> b!4117992 (= lt!1469138 (lemmaSemiInverse!2118 (transformation!7260 r!4008) lt!1469139))))

(declare-fun seqFromList!5377 (List!44622) BalanceConc!26536)

(assert (=> b!4117992 (= lt!1469139 (seqFromList!5377 p!2912))))

(declare-fun res!1682024 () Bool)

(assert (=> start!390322 (=> (not res!1682024) (not e!2555186))))

(get-info :version)

(assert (=> start!390322 (= res!1682024 ((_ is Lexer!6847) thiss!25645))))

(assert (=> start!390322 e!2555186))

(assert (=> start!390322 e!2555177))

(assert (=> start!390322 e!2555190))

(assert (=> start!390322 true))

(declare-fun e!2555188 () Bool)

(assert (=> start!390322 e!2555188))

(assert (=> start!390322 e!2555183))

(assert (=> start!390322 e!2555187))

(declare-fun b!4117984 () Bool)

(declare-fun res!1682022 () Bool)

(assert (=> b!4117984 (=> (not res!1682022) (not e!2555186))))

(assert (=> b!4117984 (= res!1682022 (contains!8932 rules!3756 rBis!149))))

(declare-fun e!2555182 () Bool)

(assert (=> b!4117993 (= e!2555182 (and tp!1254808 tp!1254809))))

(declare-fun b!4117994 () Bool)

(declare-fun e!2555176 () Bool)

(assert (=> b!4117994 (= e!2555184 (not e!2555176))))

(declare-fun res!1682027 () Bool)

(assert (=> b!4117994 (=> res!1682027 e!2555176)))

(assert (=> b!4117994 (= res!1682027 (or (not ((_ is Cons!44500) rules!3756)) (not (= (h!49920 rules!3756) rBis!149))))))

(declare-fun lt!1469140 () Unit!63857)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2112 (LexerInterface!6849 Rule!14320 List!44624) Unit!63857)

(assert (=> b!4117994 (= lt!1469140 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2112 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4117994 (ruleValid!3068 thiss!25645 rBis!149)))

(declare-fun lt!1469137 () Unit!63857)

(assert (=> b!4117994 (= lt!1469137 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2112 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4117995 () Bool)

(declare-fun res!1682029 () Bool)

(assert (=> b!4117995 (=> (not res!1682029) (not e!2555184))))

(declare-fun matchR!5996 (Regex!12165 List!44622) Bool)

(assert (=> b!4117995 (= res!1682029 (matchR!5996 (regex!7260 r!4008) p!2912))))

(declare-fun tp!1254806 () Bool)

(declare-fun b!4117996 () Bool)

(assert (=> b!4117996 (= e!2555189 (and tp!1254806 (inv!59083 (tag!8120 (h!49920 rules!3756))) (inv!59085 (transformation!7260 (h!49920 rules!3756))) e!2555182))))

(declare-fun b!4117997 () Bool)

(assert (=> b!4117997 (= e!2555176 true)))

(declare-fun lt!1469142 () Bool)

(declare-datatypes ((List!44625 0))(
  ( (Nil!44501) (Cons!44501 (h!49921 String!51200) (t!340528 List!44625)) )
))
(declare-fun noDuplicateTag!2919 (LexerInterface!6849 List!44624 List!44625) Bool)

(declare-fun noDuplicateTag$default$2!8 (LexerInterface!6849) List!44625)

(assert (=> b!4117997 (= lt!1469142 (noDuplicateTag!2919 thiss!25645 rules!3756 (noDuplicateTag$default$2!8 thiss!25645)))))

(declare-fun tail!6409 (List!44624) List!44624)

(assert (=> b!4117997 (contains!8932 (tail!6409 rules!3756) r!4008)))

(declare-fun lt!1469141 () Unit!63857)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!2 (List!44624 Rule!14320 Rule!14320) Unit!63857)

(assert (=> b!4117997 (= lt!1469141 (lemmaGetIndexBiggerAndHeadEqThenTailContains!2 rules!3756 rBis!149 r!4008))))

(declare-fun b!4117998 () Bool)

(declare-fun res!1682025 () Bool)

(assert (=> b!4117998 (=> (not res!1682025) (not e!2555186))))

(declare-fun rulesInvariant!6146 (LexerInterface!6849 List!44624) Bool)

(assert (=> b!4117998 (= res!1682025 (rulesInvariant!6146 thiss!25645 rules!3756))))

(declare-fun b!4117999 () Bool)

(declare-fun tp!1254804 () Bool)

(assert (=> b!4117999 (= e!2555188 (and tp!1254804 (inv!59083 (tag!8120 r!4008)) (inv!59085 (transformation!7260 r!4008)) e!2555185))))

(declare-fun b!4118000 () Bool)

(declare-fun res!1682028 () Bool)

(assert (=> b!4118000 (=> (not res!1682028) (not e!2555186))))

(declare-fun isEmpty!26460 (List!44624) Bool)

(assert (=> b!4118000 (= res!1682028 (not (isEmpty!26460 rules!3756)))))

(assert (= (and start!390322 res!1682024) b!4117980))

(assert (= (and b!4117980 res!1682023) b!4118000))

(assert (= (and b!4118000 res!1682028) b!4117998))

(assert (= (and b!4117998 res!1682025) b!4117982))

(assert (= (and b!4117982 res!1682021) b!4117984))

(assert (= (and b!4117984 res!1682022) b!4117981))

(assert (= (and b!4117981 res!1682020) b!4117992))

(assert (= (and b!4117992 res!1682019) b!4117995))

(assert (= (and b!4117995 res!1682029) b!4117985))

(assert (= (and b!4117985 res!1682026) b!4117983))

(assert (= (and b!4117983 res!1682018) b!4117994))

(assert (= (and b!4117994 (not res!1682027)) b!4117997))

(assert (= b!4117996 b!4117993))

(assert (= b!4117987 b!4117996))

(assert (= (and start!390322 ((_ is Cons!44500) rules!3756)) b!4117987))

(assert (= (and start!390322 ((_ is Cons!44498) p!2912)) b!4117989))

(assert (= b!4117999 b!4117990))

(assert (= start!390322 b!4117999))

(assert (= (and start!390322 ((_ is Cons!44498) input!3238)) b!4117986))

(assert (= b!4117991 b!4117988))

(assert (= start!390322 b!4117991))

(declare-fun m!4717501 () Bool)

(assert (=> b!4117994 m!4717501))

(declare-fun m!4717503 () Bool)

(assert (=> b!4117994 m!4717503))

(declare-fun m!4717505 () Bool)

(assert (=> b!4117994 m!4717505))

(declare-fun m!4717507 () Bool)

(assert (=> b!4117997 m!4717507))

(declare-fun m!4717509 () Bool)

(assert (=> b!4117997 m!4717509))

(declare-fun m!4717511 () Bool)

(assert (=> b!4117997 m!4717511))

(assert (=> b!4117997 m!4717507))

(declare-fun m!4717513 () Bool)

(assert (=> b!4117997 m!4717513))

(declare-fun m!4717515 () Bool)

(assert (=> b!4117997 m!4717515))

(assert (=> b!4117997 m!4717513))

(declare-fun m!4717517 () Bool)

(assert (=> b!4117981 m!4717517))

(declare-fun m!4717519 () Bool)

(assert (=> b!4117996 m!4717519))

(declare-fun m!4717521 () Bool)

(assert (=> b!4117996 m!4717521))

(declare-fun m!4717523 () Bool)

(assert (=> b!4117984 m!4717523))

(declare-fun m!4717525 () Bool)

(assert (=> b!4117995 m!4717525))

(declare-fun m!4717527 () Bool)

(assert (=> b!4117998 m!4717527))

(declare-fun m!4717529 () Bool)

(assert (=> b!4117991 m!4717529))

(declare-fun m!4717531 () Bool)

(assert (=> b!4117991 m!4717531))

(declare-fun m!4717533 () Bool)

(assert (=> b!4117999 m!4717533))

(declare-fun m!4717535 () Bool)

(assert (=> b!4117999 m!4717535))

(declare-fun m!4717537 () Bool)

(assert (=> b!4117985 m!4717537))

(declare-fun m!4717539 () Bool)

(assert (=> b!4117985 m!4717539))

(declare-fun m!4717541 () Bool)

(assert (=> b!4117980 m!4717541))

(declare-fun m!4717543 () Bool)

(assert (=> b!4117992 m!4717543))

(declare-fun m!4717545 () Bool)

(assert (=> b!4117992 m!4717545))

(declare-fun m!4717547 () Bool)

(assert (=> b!4117992 m!4717547))

(declare-fun m!4717549 () Bool)

(assert (=> b!4117992 m!4717549))

(declare-fun m!4717551 () Bool)

(assert (=> b!4117992 m!4717551))

(declare-fun m!4717553 () Bool)

(assert (=> b!4117992 m!4717553))

(declare-fun m!4717555 () Bool)

(assert (=> b!4117982 m!4717555))

(declare-fun m!4717557 () Bool)

(assert (=> b!4117983 m!4717557))

(declare-fun m!4717559 () Bool)

(assert (=> b!4118000 m!4717559))

(check-sat (not b!4117991) (not b!4117982) (not b!4117984) (not b!4117996) (not b!4117999) (not b_next!116981) (not b!4117997) b_and!318357 (not b_next!116975) (not b!4117995) (not b!4118000) b_and!318351 (not b!4117992) b_and!318349 tp_is_empty!21253 (not b_next!116971) (not b!4117983) (not b_next!116977) (not b!4117987) (not b!4117994) b_and!318353 (not b!4117998) (not b!4117980) (not b!4117989) (not b_next!116979) (not b!4117985) (not b!4117981) (not b_next!116973) b_and!318355 (not b!4117986) b_and!318359)
(check-sat (not b_next!116977) (not b_next!116981) b_and!318357 b_and!318353 (not b_next!116979) (not b_next!116975) b_and!318351 b_and!318359 b_and!318349 (not b_next!116971) (not b_next!116973) b_and!318355)
