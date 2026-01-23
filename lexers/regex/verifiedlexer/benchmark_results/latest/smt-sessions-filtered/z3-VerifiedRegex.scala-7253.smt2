; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!386500 () Bool)

(assert start!386500)

(declare-fun b!4086601 () Bool)

(declare-fun b_free!114177 () Bool)

(declare-fun b_next!114881 () Bool)

(assert (=> b!4086601 (= b_free!114177 (not b_next!114881))))

(declare-fun tp!1237306 () Bool)

(declare-fun b_and!314683 () Bool)

(assert (=> b!4086601 (= tp!1237306 b_and!314683)))

(declare-fun b_free!114179 () Bool)

(declare-fun b_next!114883 () Bool)

(assert (=> b!4086601 (= b_free!114179 (not b_next!114883))))

(declare-fun tp!1237303 () Bool)

(declare-fun b_and!314685 () Bool)

(assert (=> b!4086601 (= tp!1237303 b_and!314685)))

(declare-fun b!4086592 () Bool)

(declare-fun b_free!114181 () Bool)

(declare-fun b_next!114885 () Bool)

(assert (=> b!4086592 (= b_free!114181 (not b_next!114885))))

(declare-fun tp!1237305 () Bool)

(declare-fun b_and!314687 () Bool)

(assert (=> b!4086592 (= tp!1237305 b_and!314687)))

(declare-fun b_free!114183 () Bool)

(declare-fun b_next!114887 () Bool)

(assert (=> b!4086592 (= b_free!114183 (not b_next!114887))))

(declare-fun tp!1237307 () Bool)

(declare-fun b_and!314689 () Bool)

(assert (=> b!4086592 (= tp!1237307 b_and!314689)))

(declare-fun tp!1237309 () Bool)

(declare-fun e!2536286 () Bool)

(declare-fun b!4086591 () Bool)

(declare-fun e!2536283 () Bool)

(declare-datatypes ((List!43929 0))(
  ( (Nil!43805) (Cons!43805 (h!49225 (_ BitVec 16)) (t!338232 List!43929)) )
))
(declare-datatypes ((TokenValue!7308 0))(
  ( (FloatLiteralValue!14616 (text!51601 List!43929)) (TokenValueExt!7307 (__x!26833 Int)) (Broken!36540 (value!222349 List!43929)) (Object!7431) (End!7308) (Def!7308) (Underscore!7308) (Match!7308) (Else!7308) (Error!7308) (Case!7308) (If!7308) (Extends!7308) (Abstract!7308) (Class!7308) (Val!7308) (DelimiterValue!14616 (del!7368 List!43929)) (KeywordValue!7314 (value!222350 List!43929)) (CommentValue!14616 (value!222351 List!43929)) (WhitespaceValue!14616 (value!222352 List!43929)) (IndentationValue!7308 (value!222353 List!43929)) (String!50289) (Int32!7308) (Broken!36541 (value!222354 List!43929)) (Boolean!7309) (Unit!63330) (OperatorValue!7311 (op!7368 List!43929)) (IdentifierValue!14616 (value!222355 List!43929)) (IdentifierValue!14617 (value!222356 List!43929)) (WhitespaceValue!14617 (value!222357 List!43929)) (True!14616) (False!14616) (Broken!36542 (value!222358 List!43929)) (Broken!36543 (value!222359 List!43929)) (True!14617) (RightBrace!7308) (RightBracket!7308) (Colon!7308) (Null!7308) (Comma!7308) (LeftBracket!7308) (False!14617) (LeftBrace!7308) (ImaginaryLiteralValue!7308 (text!51602 List!43929)) (StringLiteralValue!21924 (value!222360 List!43929)) (EOFValue!7308 (value!222361 List!43929)) (IdentValue!7308 (value!222362 List!43929)) (DelimiterValue!14617 (value!222363 List!43929)) (DedentValue!7308 (value!222364 List!43929)) (NewLineValue!7308 (value!222365 List!43929)) (IntegerValue!21924 (value!222366 (_ BitVec 32)) (text!51603 List!43929)) (IntegerValue!21925 (value!222367 Int) (text!51604 List!43929)) (Times!7308) (Or!7308) (Equal!7308) (Minus!7308) (Broken!36544 (value!222368 List!43929)) (And!7308) (Div!7308) (LessEqual!7308) (Mod!7308) (Concat!19291) (Not!7308) (Plus!7308) (SpaceValue!7308 (value!222369 List!43929)) (IntegerValue!21926 (value!222370 Int) (text!51605 List!43929)) (StringLiteralValue!21925 (text!51606 List!43929)) (FloatLiteralValue!14617 (text!51607 List!43929)) (BytesLiteralValue!7308 (value!222371 List!43929)) (CommentValue!14617 (value!222372 List!43929)) (StringLiteralValue!21926 (value!222373 List!43929)) (ErrorTokenValue!7308 (msg!7369 List!43929)) )
))
(declare-datatypes ((C!24152 0))(
  ( (C!24153 (val!14186 Int)) )
))
(declare-datatypes ((Regex!11983 0))(
  ( (ElementMatch!11983 (c!704496 C!24152)) (Concat!19292 (regOne!24478 Regex!11983) (regTwo!24478 Regex!11983)) (EmptyExpr!11983) (Star!11983 (reg!12312 Regex!11983)) (EmptyLang!11983) (Union!11983 (regOne!24479 Regex!11983) (regTwo!24479 Regex!11983)) )
))
(declare-datatypes ((String!50290 0))(
  ( (String!50291 (value!222374 String)) )
))
(declare-datatypes ((List!43930 0))(
  ( (Nil!43806) (Cons!43806 (h!49226 C!24152) (t!338233 List!43930)) )
))
(declare-datatypes ((IArray!26583 0))(
  ( (IArray!26584 (innerList!13349 List!43930)) )
))
(declare-datatypes ((Conc!13289 0))(
  ( (Node!13289 (left!32926 Conc!13289) (right!33256 Conc!13289) (csize!26808 Int) (cheight!13500 Int)) (Leaf!20543 (xs!16595 IArray!26583) (csize!26809 Int)) (Empty!13289) )
))
(declare-datatypes ((BalanceConc!26172 0))(
  ( (BalanceConc!26173 (c!704497 Conc!13289)) )
))
(declare-datatypes ((TokenValueInjection!14044 0))(
  ( (TokenValueInjection!14045 (toValue!9662 Int) (toChars!9521 Int)) )
))
(declare-datatypes ((Rule!13956 0))(
  ( (Rule!13957 (regex!7078 Regex!11983) (tag!7938 String!50290) (isSeparator!7078 Bool) (transformation!7078 TokenValueInjection!14044)) )
))
(declare-fun r!4213 () Rule!13956)

(declare-fun inv!58494 (String!50290) Bool)

(declare-fun inv!58496 (TokenValueInjection!14044) Bool)

(assert (=> b!4086591 (= e!2536286 (and tp!1237309 (inv!58494 (tag!7938 r!4213)) (inv!58496 (transformation!7078 r!4213)) e!2536283))))

(assert (=> b!4086592 (= e!2536283 (and tp!1237305 tp!1237307))))

(declare-fun b!4086593 () Bool)

(declare-fun res!1669808 () Bool)

(declare-fun e!2536294 () Bool)

(assert (=> b!4086593 (=> res!1669808 e!2536294)))

(declare-datatypes ((List!43931 0))(
  ( (Nil!43807) (Cons!43807 (h!49227 Rule!13956) (t!338234 List!43931)) )
))
(declare-fun rules!3870 () List!43931)

(get-info :version)

(assert (=> b!4086593 (= res!1669808 (or (not ((_ is Cons!43807) rules!3870)) (not (= (h!49227 rules!3870) r!4213))))))

(declare-fun b!4086594 () Bool)

(declare-fun res!1669810 () Bool)

(declare-fun e!2536282 () Bool)

(assert (=> b!4086594 (=> (not res!1669810) (not e!2536282))))

(declare-datatypes ((LexerInterface!6667 0))(
  ( (LexerInterfaceExt!6664 (__x!26834 Int)) (Lexer!6665) )
))
(declare-fun thiss!26199 () LexerInterface!6667)

(declare-fun rulesInvariant!6010 (LexerInterface!6667 List!43931) Bool)

(assert (=> b!4086594 (= res!1669810 (rulesInvariant!6010 thiss!26199 rules!3870))))

(declare-fun b!4086595 () Bool)

(declare-fun e!2536284 () Bool)

(declare-fun tp_is_empty!20969 () Bool)

(declare-fun tp!1237308 () Bool)

(assert (=> b!4086595 (= e!2536284 (and tp_is_empty!20969 tp!1237308))))

(declare-fun b!4086596 () Bool)

(declare-fun e!2536290 () Bool)

(assert (=> b!4086596 (= e!2536282 e!2536290)))

(declare-fun res!1669807 () Bool)

(assert (=> b!4086596 (=> (not res!1669807) (not e!2536290))))

(declare-fun suffix!1518 () List!43930)

(declare-fun p!2988 () List!43930)

(declare-fun input!3411 () List!43930)

(declare-fun lt!1461691 () BalanceConc!26172)

(declare-datatypes ((Token!13282 0))(
  ( (Token!13283 (value!222375 TokenValue!7308) (rule!10208 Rule!13956) (size!32718 Int) (originalCharacters!7672 List!43930)) )
))
(declare-datatypes ((tuple2!42744 0))(
  ( (tuple2!42745 (_1!24506 Token!13282) (_2!24506 List!43930)) )
))
(declare-datatypes ((Option!9484 0))(
  ( (None!9483) (Some!9483 (v!39959 tuple2!42744)) )
))
(declare-fun maxPrefix!3957 (LexerInterface!6667 List!43931 List!43930) Option!9484)

(declare-fun apply!10261 (TokenValueInjection!14044 BalanceConc!26172) TokenValue!7308)

(declare-fun size!32719 (List!43930) Int)

(assert (=> b!4086596 (= res!1669807 (= (maxPrefix!3957 thiss!26199 rules!3870 input!3411) (Some!9483 (tuple2!42745 (Token!13283 (apply!10261 (transformation!7078 r!4213) lt!1461691) r!4213 (size!32719 p!2988) p!2988) suffix!1518))))))

(declare-datatypes ((Unit!63331 0))(
  ( (Unit!63332) )
))
(declare-fun lt!1461693 () Unit!63331)

(declare-fun lemmaSemiInverse!2045 (TokenValueInjection!14044 BalanceConc!26172) Unit!63331)

(assert (=> b!4086596 (= lt!1461693 (lemmaSemiInverse!2045 (transformation!7078 r!4213) lt!1461691))))

(declare-fun seqFromList!5295 (List!43930) BalanceConc!26172)

(assert (=> b!4086596 (= lt!1461691 (seqFromList!5295 p!2988))))

(declare-fun b!4086597 () Bool)

(declare-fun res!1669814 () Bool)

(assert (=> b!4086597 (=> (not res!1669814) (not e!2536282))))

(declare-fun ++!11484 (List!43930 List!43930) List!43930)

(assert (=> b!4086597 (= res!1669814 (= input!3411 (++!11484 p!2988 suffix!1518)))))

(declare-fun b!4086598 () Bool)

(declare-fun res!1669811 () Bool)

(assert (=> b!4086598 (=> (not res!1669811) (not e!2536282))))

(declare-fun contains!8755 (List!43931 Rule!13956) Bool)

(assert (=> b!4086598 (= res!1669811 (contains!8755 rules!3870 r!4213))))

(declare-fun b!4086599 () Bool)

(declare-fun res!1669809 () Bool)

(assert (=> b!4086599 (=> (not res!1669809) (not e!2536282))))

(declare-fun isEmpty!26190 (List!43931) Bool)

(assert (=> b!4086599 (= res!1669809 (not (isEmpty!26190 rules!3870)))))

(declare-fun b!4086600 () Bool)

(declare-fun e!2536289 () Bool)

(declare-fun e!2536287 () Bool)

(declare-fun tp!1237304 () Bool)

(assert (=> b!4086600 (= e!2536289 (and e!2536287 tp!1237304))))

(declare-fun b!4086602 () Bool)

(declare-fun e!2536293 () Bool)

(assert (=> b!4086602 (= e!2536294 e!2536293)))

(declare-fun res!1669812 () Bool)

(assert (=> b!4086602 (=> res!1669812 e!2536293)))

(assert (=> b!4086602 (= res!1669812 (isEmpty!26190 (t!338234 rules!3870)))))

(assert (=> b!4086602 (rulesInvariant!6010 thiss!26199 (t!338234 rules!3870))))

(declare-fun lt!1461690 () Unit!63331)

(declare-fun lemmaInvariantOnRulesThenOnTail!782 (LexerInterface!6667 Rule!13956 List!43931) Unit!63331)

(assert (=> b!4086602 (= lt!1461690 (lemmaInvariantOnRulesThenOnTail!782 thiss!26199 (h!49227 rules!3870) (t!338234 rules!3870)))))

(declare-fun b!4086603 () Bool)

(assert (=> b!4086603 (= e!2536293 (rulesInvariant!6010 thiss!26199 (Cons!43807 (h!49227 rules!3870) (t!338234 rules!3870))))))

(declare-fun b!4086604 () Bool)

(assert (=> b!4086604 (= e!2536290 (not e!2536294))))

(declare-fun res!1669813 () Bool)

(assert (=> b!4086604 (=> res!1669813 e!2536294)))

(declare-fun matchR!5924 (Regex!11983 List!43930) Bool)

(assert (=> b!4086604 (= res!1669813 (not (matchR!5924 (regex!7078 r!4213) p!2988)))))

(declare-fun ruleValid!2998 (LexerInterface!6667 Rule!13956) Bool)

(assert (=> b!4086604 (ruleValid!2998 thiss!26199 r!4213)))

(declare-fun lt!1461692 () Unit!63331)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2064 (LexerInterface!6667 Rule!13956 List!43931) Unit!63331)

(assert (=> b!4086604 (= lt!1461692 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2064 thiss!26199 r!4213 rules!3870))))

(declare-fun tp!1237311 () Bool)

(declare-fun e!2536281 () Bool)

(declare-fun b!4086605 () Bool)

(assert (=> b!4086605 (= e!2536287 (and tp!1237311 (inv!58494 (tag!7938 (h!49227 rules!3870))) (inv!58496 (transformation!7078 (h!49227 rules!3870))) e!2536281))))

(declare-fun b!4086606 () Bool)

(declare-fun res!1669805 () Bool)

(assert (=> b!4086606 (=> (not res!1669805) (not e!2536282))))

(declare-fun isEmpty!26191 (List!43930) Bool)

(assert (=> b!4086606 (= res!1669805 (not (isEmpty!26191 p!2988)))))

(declare-fun b!4086607 () Bool)

(declare-fun e!2536285 () Bool)

(declare-fun tp!1237310 () Bool)

(assert (=> b!4086607 (= e!2536285 (and tp_is_empty!20969 tp!1237310))))

(declare-fun b!4086608 () Bool)

(declare-fun e!2536291 () Bool)

(declare-fun tp!1237312 () Bool)

(assert (=> b!4086608 (= e!2536291 (and tp_is_empty!20969 tp!1237312))))

(assert (=> b!4086601 (= e!2536281 (and tp!1237306 tp!1237303))))

(declare-fun res!1669806 () Bool)

(assert (=> start!386500 (=> (not res!1669806) (not e!2536282))))

(assert (=> start!386500 (= res!1669806 ((_ is Lexer!6665) thiss!26199))))

(assert (=> start!386500 e!2536282))

(assert (=> start!386500 true))

(assert (=> start!386500 e!2536291))

(assert (=> start!386500 e!2536289))

(assert (=> start!386500 e!2536285))

(assert (=> start!386500 e!2536284))

(assert (=> start!386500 e!2536286))

(assert (= (and start!386500 res!1669806) b!4086599))

(assert (= (and b!4086599 res!1669809) b!4086594))

(assert (= (and b!4086594 res!1669810) b!4086598))

(assert (= (and b!4086598 res!1669811) b!4086597))

(assert (= (and b!4086597 res!1669814) b!4086606))

(assert (= (and b!4086606 res!1669805) b!4086596))

(assert (= (and b!4086596 res!1669807) b!4086604))

(assert (= (and b!4086604 (not res!1669813)) b!4086593))

(assert (= (and b!4086593 (not res!1669808)) b!4086602))

(assert (= (and b!4086602 (not res!1669812)) b!4086603))

(assert (= (and start!386500 ((_ is Cons!43806) suffix!1518)) b!4086608))

(assert (= b!4086605 b!4086601))

(assert (= b!4086600 b!4086605))

(assert (= (and start!386500 ((_ is Cons!43807) rules!3870)) b!4086600))

(assert (= (and start!386500 ((_ is Cons!43806) p!2988)) b!4086607))

(assert (= (and start!386500 ((_ is Cons!43806) input!3411)) b!4086595))

(assert (= b!4086591 b!4086592))

(assert (= start!386500 b!4086591))

(declare-fun m!4693459 () Bool)

(assert (=> b!4086604 m!4693459))

(declare-fun m!4693461 () Bool)

(assert (=> b!4086604 m!4693461))

(declare-fun m!4693463 () Bool)

(assert (=> b!4086604 m!4693463))

(declare-fun m!4693465 () Bool)

(assert (=> b!4086594 m!4693465))

(declare-fun m!4693467 () Bool)

(assert (=> b!4086597 m!4693467))

(declare-fun m!4693469 () Bool)

(assert (=> b!4086603 m!4693469))

(declare-fun m!4693471 () Bool)

(assert (=> b!4086599 m!4693471))

(declare-fun m!4693473 () Bool)

(assert (=> b!4086596 m!4693473))

(declare-fun m!4693475 () Bool)

(assert (=> b!4086596 m!4693475))

(declare-fun m!4693477 () Bool)

(assert (=> b!4086596 m!4693477))

(declare-fun m!4693479 () Bool)

(assert (=> b!4086596 m!4693479))

(declare-fun m!4693481 () Bool)

(assert (=> b!4086596 m!4693481))

(declare-fun m!4693483 () Bool)

(assert (=> b!4086598 m!4693483))

(declare-fun m!4693485 () Bool)

(assert (=> b!4086605 m!4693485))

(declare-fun m!4693487 () Bool)

(assert (=> b!4086605 m!4693487))

(declare-fun m!4693489 () Bool)

(assert (=> b!4086591 m!4693489))

(declare-fun m!4693491 () Bool)

(assert (=> b!4086591 m!4693491))

(declare-fun m!4693493 () Bool)

(assert (=> b!4086602 m!4693493))

(declare-fun m!4693495 () Bool)

(assert (=> b!4086602 m!4693495))

(declare-fun m!4693497 () Bool)

(assert (=> b!4086602 m!4693497))

(declare-fun m!4693499 () Bool)

(assert (=> b!4086606 m!4693499))

(check-sat (not b_next!114887) b_and!314683 (not b!4086607) (not b!4086595) (not b!4086594) (not b!4086600) (not b!4086596) (not b_next!114885) (not b!4086603) (not b!4086604) (not b!4086608) (not b!4086597) tp_is_empty!20969 (not b!4086606) (not b!4086598) (not b!4086605) (not b!4086602) b_and!314687 b_and!314685 (not b!4086599) (not b_next!114883) (not b_next!114881) (not b!4086591) b_and!314689)
(check-sat (not b_next!114887) b_and!314683 b_and!314687 b_and!314685 b_and!314689 (not b_next!114885) (not b_next!114883) (not b_next!114881))
