; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!384760 () Bool)

(assert start!384760)

(declare-fun b!4075148 () Bool)

(declare-fun b_free!113545 () Bool)

(declare-fun b_next!114249 () Bool)

(assert (=> b!4075148 (= b_free!113545 (not b_next!114249))))

(declare-fun tp!1233542 () Bool)

(declare-fun b_and!313267 () Bool)

(assert (=> b!4075148 (= tp!1233542 b_and!313267)))

(declare-fun b_free!113547 () Bool)

(declare-fun b_next!114251 () Bool)

(assert (=> b!4075148 (= b_free!113547 (not b_next!114251))))

(declare-fun tp!1233539 () Bool)

(declare-fun b_and!313269 () Bool)

(assert (=> b!4075148 (= tp!1233539 b_and!313269)))

(declare-fun b!4075156 () Bool)

(declare-fun b_free!113549 () Bool)

(declare-fun b_next!114253 () Bool)

(assert (=> b!4075156 (= b_free!113549 (not b_next!114253))))

(declare-fun tp!1233540 () Bool)

(declare-fun b_and!313271 () Bool)

(assert (=> b!4075156 (= tp!1233540 b_and!313271)))

(declare-fun b_free!113551 () Bool)

(declare-fun b_next!114255 () Bool)

(assert (=> b!4075156 (= b_free!113551 (not b_next!114255))))

(declare-fun tp!1233537 () Bool)

(declare-fun b_and!313273 () Bool)

(assert (=> b!4075156 (= tp!1233537 b_and!313273)))

(declare-fun b!4075142 () Bool)

(declare-fun e!2529325 () Bool)

(declare-datatypes ((List!43723 0))(
  ( (Nil!43599) (Cons!43599 (h!49019 (_ BitVec 16)) (t!337298 List!43723)) )
))
(declare-datatypes ((TokenValue!7250 0))(
  ( (FloatLiteralValue!14500 (text!51195 List!43723)) (TokenValueExt!7249 (__x!26717 Int)) (Broken!36250 (value!220696 List!43723)) (Object!7373) (End!7250) (Def!7250) (Underscore!7250) (Match!7250) (Else!7250) (Error!7250) (Case!7250) (If!7250) (Extends!7250) (Abstract!7250) (Class!7250) (Val!7250) (DelimiterValue!14500 (del!7310 List!43723)) (KeywordValue!7256 (value!220697 List!43723)) (CommentValue!14500 (value!220698 List!43723)) (WhitespaceValue!14500 (value!220699 List!43723)) (IndentationValue!7250 (value!220700 List!43723)) (String!49999) (Int32!7250) (Broken!36251 (value!220701 List!43723)) (Boolean!7251) (Unit!63144) (OperatorValue!7253 (op!7310 List!43723)) (IdentifierValue!14500 (value!220702 List!43723)) (IdentifierValue!14501 (value!220703 List!43723)) (WhitespaceValue!14501 (value!220704 List!43723)) (True!14500) (False!14500) (Broken!36252 (value!220705 List!43723)) (Broken!36253 (value!220706 List!43723)) (True!14501) (RightBrace!7250) (RightBracket!7250) (Colon!7250) (Null!7250) (Comma!7250) (LeftBracket!7250) (False!14501) (LeftBrace!7250) (ImaginaryLiteralValue!7250 (text!51196 List!43723)) (StringLiteralValue!21750 (value!220707 List!43723)) (EOFValue!7250 (value!220708 List!43723)) (IdentValue!7250 (value!220709 List!43723)) (DelimiterValue!14501 (value!220710 List!43723)) (DedentValue!7250 (value!220711 List!43723)) (NewLineValue!7250 (value!220712 List!43723)) (IntegerValue!21750 (value!220713 (_ BitVec 32)) (text!51197 List!43723)) (IntegerValue!21751 (value!220714 Int) (text!51198 List!43723)) (Times!7250) (Or!7250) (Equal!7250) (Minus!7250) (Broken!36254 (value!220715 List!43723)) (And!7250) (Div!7250) (LessEqual!7250) (Mod!7250) (Concat!19175) (Not!7250) (Plus!7250) (SpaceValue!7250 (value!220716 List!43723)) (IntegerValue!21752 (value!220717 Int) (text!51199 List!43723)) (StringLiteralValue!21751 (text!51200 List!43723)) (FloatLiteralValue!14501 (text!51201 List!43723)) (BytesLiteralValue!7250 (value!220718 List!43723)) (CommentValue!14501 (value!220719 List!43723)) (StringLiteralValue!21752 (value!220720 List!43723)) (ErrorTokenValue!7250 (msg!7311 List!43723)) )
))
(declare-datatypes ((C!24036 0))(
  ( (C!24037 (val!14128 Int)) )
))
(declare-datatypes ((Regex!11925 0))(
  ( (ElementMatch!11925 (c!703072 C!24036)) (Concat!19176 (regOne!24362 Regex!11925) (regTwo!24362 Regex!11925)) (EmptyExpr!11925) (Star!11925 (reg!12254 Regex!11925)) (EmptyLang!11925) (Union!11925 (regOne!24363 Regex!11925) (regTwo!24363 Regex!11925)) )
))
(declare-datatypes ((String!50000 0))(
  ( (String!50001 (value!220721 String)) )
))
(declare-datatypes ((List!43724 0))(
  ( (Nil!43600) (Cons!43600 (h!49020 C!24036) (t!337299 List!43724)) )
))
(declare-datatypes ((IArray!26467 0))(
  ( (IArray!26468 (innerList!13291 List!43724)) )
))
(declare-datatypes ((Conc!13231 0))(
  ( (Node!13231 (left!32775 Conc!13231) (right!33105 Conc!13231) (csize!26692 Int) (cheight!13442 Int)) (Leaf!20456 (xs!16537 IArray!26467) (csize!26693 Int)) (Empty!13231) )
))
(declare-datatypes ((BalanceConc!26056 0))(
  ( (BalanceConc!26057 (c!703073 Conc!13231)) )
))
(declare-datatypes ((TokenValueInjection!13928 0))(
  ( (TokenValueInjection!13929 (toValue!9584 Int) (toChars!9443 Int)) )
))
(declare-datatypes ((Rule!13840 0))(
  ( (Rule!13841 (regex!7020 Regex!11925) (tag!7880 String!50000) (isSeparator!7020 Bool) (transformation!7020 TokenValueInjection!13928)) )
))
(declare-datatypes ((Token!13166 0))(
  ( (Token!13167 (value!220722 TokenValue!7250) (rule!10124 Rule!13840) (size!32571 Int) (originalCharacters!7614 List!43724)) )
))
(declare-datatypes ((tuple2!42582 0))(
  ( (tuple2!42583 (_1!24425 Token!13166) (_2!24425 List!43724)) )
))
(declare-datatypes ((Option!9428 0))(
  ( (None!9427) (Some!9427 (v!39871 tuple2!42582)) )
))
(declare-fun lt!1458414 () Option!9428)

(declare-datatypes ((List!43725 0))(
  ( (Nil!43601) (Cons!43601 (h!49021 Rule!13840) (t!337300 List!43725)) )
))
(declare-fun rules!3870 () List!43725)

(declare-fun get!14298 (Option!9428) tuple2!42582)

(assert (=> b!4075142 (= e!2529325 (not (= (rule!10124 (_1!24425 (get!14298 lt!1458414))) (h!49021 rules!3870))))))

(declare-fun b!4075143 () Bool)

(declare-fun e!2529330 () Bool)

(declare-fun r!4213 () Rule!13840)

(assert (=> b!4075143 (= e!2529330 (= (rule!10124 (_1!24425 (get!14298 lt!1458414))) r!4213))))

(declare-fun b!4075144 () Bool)

(declare-fun res!1664355 () Bool)

(declare-fun e!2529331 () Bool)

(assert (=> b!4075144 (=> (not res!1664355) (not e!2529331))))

(declare-datatypes ((LexerInterface!6609 0))(
  ( (LexerInterfaceExt!6606 (__x!26718 Int)) (Lexer!6607) )
))
(declare-fun thiss!26199 () LexerInterface!6609)

(declare-fun rulesInvariant!5952 (LexerInterface!6609 List!43725) Bool)

(assert (=> b!4075144 (= res!1664355 (rulesInvariant!5952 thiss!26199 rules!3870))))

(declare-fun e!2529323 () Bool)

(declare-fun e!2529324 () Bool)

(declare-fun tp!1233533 () Bool)

(declare-fun b!4075145 () Bool)

(declare-fun inv!58250 (String!50000) Bool)

(declare-fun inv!58252 (TokenValueInjection!13928) Bool)

(assert (=> b!4075145 (= e!2529324 (and tp!1233533 (inv!58250 (tag!7880 (h!49021 rules!3870))) (inv!58252 (transformation!7020 (h!49021 rules!3870))) e!2529323))))

(declare-fun b!4075146 () Bool)

(declare-fun e!2529319 () Bool)

(assert (=> b!4075146 (= e!2529319 true)))

(declare-fun input!3411 () List!43724)

(declare-fun lt!1458418 () Option!9428)

(declare-fun maxPrefixOneRule!2899 (LexerInterface!6609 Rule!13840 List!43724) Option!9428)

(assert (=> b!4075146 (= lt!1458418 (maxPrefixOneRule!2899 thiss!26199 r!4213 input!3411))))

(declare-fun b!4075147 () Bool)

(declare-fun res!1664348 () Bool)

(assert (=> b!4075147 (=> (not res!1664348) (not e!2529331))))

(declare-fun isEmpty!26031 (List!43725) Bool)

(assert (=> b!4075147 (= res!1664348 (not (isEmpty!26031 rules!3870)))))

(declare-fun e!2529334 () Bool)

(assert (=> b!4075148 (= e!2529334 (and tp!1233542 tp!1233539))))

(declare-fun b!4075149 () Bool)

(declare-fun e!2529328 () Bool)

(declare-fun tp_is_empty!20853 () Bool)

(declare-fun tp!1233541 () Bool)

(assert (=> b!4075149 (= e!2529328 (and tp_is_empty!20853 tp!1233541))))

(declare-fun b!4075150 () Bool)

(declare-fun e!2529329 () Bool)

(declare-fun tp!1233535 () Bool)

(assert (=> b!4075150 (= e!2529329 (and tp_is_empty!20853 tp!1233535))))

(declare-fun b!4075151 () Bool)

(declare-fun e!2529321 () Bool)

(declare-fun tp!1233538 () Bool)

(assert (=> b!4075151 (= e!2529321 (and tp_is_empty!20853 tp!1233538))))

(declare-fun b!4075152 () Bool)

(declare-fun e!2529322 () Bool)

(declare-fun e!2529320 () Bool)

(assert (=> b!4075152 (= e!2529322 (not e!2529320))))

(declare-fun res!1664352 () Bool)

(assert (=> b!4075152 (=> res!1664352 e!2529320)))

(declare-fun p!2988 () List!43724)

(declare-fun matchR!5870 (Regex!11925 List!43724) Bool)

(assert (=> b!4075152 (= res!1664352 (not (matchR!5870 (regex!7020 r!4213) p!2988)))))

(declare-fun ruleValid!2944 (LexerInterface!6609 Rule!13840) Bool)

(assert (=> b!4075152 (ruleValid!2944 thiss!26199 r!4213)))

(declare-datatypes ((Unit!63145 0))(
  ( (Unit!63146) )
))
(declare-fun lt!1458420 () Unit!63145)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2012 (LexerInterface!6609 Rule!13840 List!43725) Unit!63145)

(assert (=> b!4075152 (= lt!1458420 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2012 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4075153 () Bool)

(declare-fun res!1664353 () Bool)

(assert (=> b!4075153 (=> res!1664353 e!2529320)))

(get-info :version)

(assert (=> b!4075153 (= res!1664353 (or (not ((_ is Cons!43601) rules!3870)) (not (= (h!49021 rules!3870) r!4213))))))

(declare-fun res!1664349 () Bool)

(assert (=> start!384760 (=> (not res!1664349) (not e!2529331))))

(assert (=> start!384760 (= res!1664349 ((_ is Lexer!6607) thiss!26199))))

(assert (=> start!384760 e!2529331))

(assert (=> start!384760 true))

(assert (=> start!384760 e!2529328))

(declare-fun e!2529326 () Bool)

(assert (=> start!384760 e!2529326))

(assert (=> start!384760 e!2529329))

(assert (=> start!384760 e!2529321))

(declare-fun e!2529318 () Bool)

(assert (=> start!384760 e!2529318))

(declare-fun b!4075154 () Bool)

(declare-fun e!2529327 () Bool)

(assert (=> b!4075154 (= e!2529320 e!2529327)))

(declare-fun res!1664358 () Bool)

(assert (=> b!4075154 (=> res!1664358 e!2529327)))

(assert (=> b!4075154 (= res!1664358 (isEmpty!26031 (t!337300 rules!3870)))))

(assert (=> b!4075154 (rulesInvariant!5952 thiss!26199 (t!337300 rules!3870))))

(declare-fun lt!1458415 () Unit!63145)

(declare-fun lemmaInvariantOnRulesThenOnTail!740 (LexerInterface!6609 Rule!13840 List!43725) Unit!63145)

(assert (=> b!4075154 (= lt!1458415 (lemmaInvariantOnRulesThenOnTail!740 thiss!26199 (h!49021 rules!3870) (t!337300 rules!3870)))))

(declare-fun b!4075155 () Bool)

(declare-fun res!1664354 () Bool)

(assert (=> b!4075155 (=> (not res!1664354) (not e!2529331))))

(declare-fun isEmpty!26032 (List!43724) Bool)

(assert (=> b!4075155 (= res!1664354 (not (isEmpty!26032 p!2988)))))

(assert (=> b!4075156 (= e!2529323 (and tp!1233540 tp!1233537))))

(declare-fun b!4075157 () Bool)

(declare-fun res!1664360 () Bool)

(assert (=> b!4075157 (=> (not res!1664360) (not e!2529331))))

(declare-fun contains!8687 (List!43725 Rule!13840) Bool)

(assert (=> b!4075157 (= res!1664360 (contains!8687 rules!3870 r!4213))))

(declare-fun b!4075158 () Bool)

(declare-fun tp!1233534 () Bool)

(assert (=> b!4075158 (= e!2529318 (and tp!1233534 (inv!58250 (tag!7880 r!4213)) (inv!58252 (transformation!7020 r!4213)) e!2529334))))

(declare-fun b!4075159 () Bool)

(declare-fun res!1664351 () Bool)

(assert (=> b!4075159 (=> (not res!1664351) (not e!2529331))))

(declare-fun suffix!1518 () List!43724)

(declare-fun ++!11426 (List!43724 List!43724) List!43724)

(assert (=> b!4075159 (= res!1664351 (= input!3411 (++!11426 p!2988 suffix!1518)))))

(declare-fun b!4075160 () Bool)

(declare-fun tp!1233536 () Bool)

(assert (=> b!4075160 (= e!2529326 (and e!2529324 tp!1233536))))

(declare-fun b!4075161 () Bool)

(assert (=> b!4075161 (= e!2529327 e!2529319)))

(declare-fun res!1664357 () Bool)

(assert (=> b!4075161 (=> res!1664357 e!2529319)))

(assert (=> b!4075161 (= res!1664357 e!2529330)))

(declare-fun res!1664359 () Bool)

(assert (=> b!4075161 (=> (not res!1664359) (not e!2529330))))

(declare-fun lt!1458416 () Bool)

(assert (=> b!4075161 (= res!1664359 (not lt!1458416))))

(assert (=> b!4075161 e!2529325))

(declare-fun res!1664350 () Bool)

(assert (=> b!4075161 (=> res!1664350 e!2529325)))

(assert (=> b!4075161 (= res!1664350 lt!1458416)))

(declare-fun isEmpty!26033 (Option!9428) Bool)

(assert (=> b!4075161 (= lt!1458416 (isEmpty!26033 lt!1458414))))

(declare-fun maxPrefix!3901 (LexerInterface!6609 List!43725 List!43724) Option!9428)

(assert (=> b!4075161 (= lt!1458414 (maxPrefix!3901 thiss!26199 (t!337300 rules!3870) input!3411))))

(declare-fun lt!1458417 () Unit!63145)

(declare-fun lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!14 (LexerInterface!6609 Rule!13840 List!43725 List!43724) Unit!63145)

(assert (=> b!4075161 (= lt!1458417 (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!14 thiss!26199 (h!49021 rules!3870) (t!337300 rules!3870) input!3411))))

(declare-fun b!4075162 () Bool)

(assert (=> b!4075162 (= e!2529331 e!2529322)))

(declare-fun res!1664356 () Bool)

(assert (=> b!4075162 (=> (not res!1664356) (not e!2529322))))

(declare-fun lt!1458419 () BalanceConc!26056)

(declare-fun apply!10203 (TokenValueInjection!13928 BalanceConc!26056) TokenValue!7250)

(declare-fun size!32572 (List!43724) Int)

(assert (=> b!4075162 (= res!1664356 (= (maxPrefix!3901 thiss!26199 rules!3870 input!3411) (Some!9427 (tuple2!42583 (Token!13167 (apply!10203 (transformation!7020 r!4213) lt!1458419) r!4213 (size!32572 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1458421 () Unit!63145)

(declare-fun lemmaSemiInverse!1987 (TokenValueInjection!13928 BalanceConc!26056) Unit!63145)

(assert (=> b!4075162 (= lt!1458421 (lemmaSemiInverse!1987 (transformation!7020 r!4213) lt!1458419))))

(declare-fun seqFromList!5237 (List!43724) BalanceConc!26056)

(assert (=> b!4075162 (= lt!1458419 (seqFromList!5237 p!2988))))

(assert (= (and start!384760 res!1664349) b!4075147))

(assert (= (and b!4075147 res!1664348) b!4075144))

(assert (= (and b!4075144 res!1664355) b!4075157))

(assert (= (and b!4075157 res!1664360) b!4075159))

(assert (= (and b!4075159 res!1664351) b!4075155))

(assert (= (and b!4075155 res!1664354) b!4075162))

(assert (= (and b!4075162 res!1664356) b!4075152))

(assert (= (and b!4075152 (not res!1664352)) b!4075153))

(assert (= (and b!4075153 (not res!1664353)) b!4075154))

(assert (= (and b!4075154 (not res!1664358)) b!4075161))

(assert (= (and b!4075161 (not res!1664350)) b!4075142))

(assert (= (and b!4075161 res!1664359) b!4075143))

(assert (= (and b!4075161 (not res!1664357)) b!4075146))

(assert (= (and start!384760 ((_ is Cons!43600) suffix!1518)) b!4075149))

(assert (= b!4075145 b!4075156))

(assert (= b!4075160 b!4075145))

(assert (= (and start!384760 ((_ is Cons!43601) rules!3870)) b!4075160))

(assert (= (and start!384760 ((_ is Cons!43600) p!2988)) b!4075150))

(assert (= (and start!384760 ((_ is Cons!43600) input!3411)) b!4075151))

(assert (= b!4075158 b!4075148))

(assert (= start!384760 b!4075158))

(declare-fun m!4683655 () Bool)

(assert (=> b!4075162 m!4683655))

(declare-fun m!4683657 () Bool)

(assert (=> b!4075162 m!4683657))

(declare-fun m!4683659 () Bool)

(assert (=> b!4075162 m!4683659))

(declare-fun m!4683661 () Bool)

(assert (=> b!4075162 m!4683661))

(declare-fun m!4683663 () Bool)

(assert (=> b!4075162 m!4683663))

(declare-fun m!4683665 () Bool)

(assert (=> b!4075147 m!4683665))

(declare-fun m!4683667 () Bool)

(assert (=> b!4075145 m!4683667))

(declare-fun m!4683669 () Bool)

(assert (=> b!4075145 m!4683669))

(declare-fun m!4683671 () Bool)

(assert (=> b!4075142 m!4683671))

(declare-fun m!4683673 () Bool)

(assert (=> b!4075158 m!4683673))

(declare-fun m!4683675 () Bool)

(assert (=> b!4075158 m!4683675))

(declare-fun m!4683677 () Bool)

(assert (=> b!4075159 m!4683677))

(declare-fun m!4683679 () Bool)

(assert (=> b!4075155 m!4683679))

(declare-fun m!4683681 () Bool)

(assert (=> b!4075161 m!4683681))

(declare-fun m!4683683 () Bool)

(assert (=> b!4075161 m!4683683))

(declare-fun m!4683685 () Bool)

(assert (=> b!4075161 m!4683685))

(assert (=> b!4075143 m!4683671))

(declare-fun m!4683687 () Bool)

(assert (=> b!4075144 m!4683687))

(declare-fun m!4683689 () Bool)

(assert (=> b!4075152 m!4683689))

(declare-fun m!4683691 () Bool)

(assert (=> b!4075152 m!4683691))

(declare-fun m!4683693 () Bool)

(assert (=> b!4075152 m!4683693))

(declare-fun m!4683695 () Bool)

(assert (=> b!4075157 m!4683695))

(declare-fun m!4683697 () Bool)

(assert (=> b!4075146 m!4683697))

(declare-fun m!4683699 () Bool)

(assert (=> b!4075154 m!4683699))

(declare-fun m!4683701 () Bool)

(assert (=> b!4075154 m!4683701))

(declare-fun m!4683703 () Bool)

(assert (=> b!4075154 m!4683703))

(check-sat (not b!4075162) (not b!4075158) (not b!4075152) (not b!4075154) (not b!4075142) (not b!4075144) (not b!4075160) (not b_next!114249) (not b!4075143) b_and!313267 tp_is_empty!20853 (not b_next!114253) (not b_next!114251) (not b!4075147) (not b!4075155) (not b!4075151) (not b!4075161) b_and!313269 b_and!313273 (not b!4075157) (not b!4075159) (not b!4075149) (not b!4075146) (not b!4075150) (not b!4075145) b_and!313271 (not b_next!114255))
(check-sat b_and!313267 (not b_next!114249) (not b_next!114253) (not b_next!114251) b_and!313269 b_and!313273 b_and!313271 (not b_next!114255))
