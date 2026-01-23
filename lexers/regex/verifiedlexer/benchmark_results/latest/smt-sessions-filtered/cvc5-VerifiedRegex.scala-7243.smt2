; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!385666 () Bool)

(assert start!385666)

(declare-fun b!4081436 () Bool)

(declare-fun b_free!113921 () Bool)

(declare-fun b_next!114625 () Bool)

(assert (=> b!4081436 (= b_free!113921 (not b_next!114625))))

(declare-fun tp!1235575 () Bool)

(declare-fun b_and!314007 () Bool)

(assert (=> b!4081436 (= tp!1235575 b_and!314007)))

(declare-fun b_free!113923 () Bool)

(declare-fun b_next!114627 () Bool)

(assert (=> b!4081436 (= b_free!113923 (not b_next!114627))))

(declare-fun tp!1235577 () Bool)

(declare-fun b_and!314009 () Bool)

(assert (=> b!4081436 (= tp!1235577 b_and!314009)))

(declare-fun b!4081423 () Bool)

(declare-fun b_free!113925 () Bool)

(declare-fun b_next!114629 () Bool)

(assert (=> b!4081423 (= b_free!113925 (not b_next!114629))))

(declare-fun tp!1235584 () Bool)

(declare-fun b_and!314011 () Bool)

(assert (=> b!4081423 (= tp!1235584 b_and!314011)))

(declare-fun b_free!113927 () Bool)

(declare-fun b_next!114631 () Bool)

(assert (=> b!4081423 (= b_free!113927 (not b_next!114631))))

(declare-fun tp!1235576 () Bool)

(declare-fun b_and!314013 () Bool)

(assert (=> b!4081423 (= tp!1235576 b_and!314013)))

(declare-fun e!2533202 () Bool)

(assert (=> b!4081423 (= e!2533202 (and tp!1235584 tp!1235576))))

(declare-fun b!4081424 () Bool)

(declare-fun e!2533204 () Bool)

(declare-fun e!2533201 () Bool)

(declare-fun tp!1235580 () Bool)

(assert (=> b!4081424 (= e!2533204 (and e!2533201 tp!1235580))))

(declare-fun b!4081425 () Bool)

(declare-fun e!2533199 () Bool)

(declare-fun tp_is_empty!20927 () Bool)

(declare-fun tp!1235579 () Bool)

(assert (=> b!4081425 (= e!2533199 (and tp_is_empty!20927 tp!1235579))))

(declare-fun b!4081426 () Bool)

(declare-fun e!2533194 () Bool)

(declare-fun e!2533200 () Bool)

(assert (=> b!4081426 (= e!2533194 e!2533200)))

(declare-fun res!1667538 () Bool)

(assert (=> b!4081426 (=> (not res!1667538) (not e!2533200))))

(declare-datatypes ((List!43850 0))(
  ( (Nil!43726) (Cons!43726 (h!49146 (_ BitVec 16)) (t!337761 List!43850)) )
))
(declare-datatypes ((TokenValue!7287 0))(
  ( (FloatLiteralValue!14574 (text!51454 List!43850)) (TokenValueExt!7286 (__x!26791 Int)) (Broken!36435 (value!221752 List!43850)) (Object!7410) (End!7287) (Def!7287) (Underscore!7287) (Match!7287) (Else!7287) (Error!7287) (Case!7287) (If!7287) (Extends!7287) (Abstract!7287) (Class!7287) (Val!7287) (DelimiterValue!14574 (del!7347 List!43850)) (KeywordValue!7293 (value!221753 List!43850)) (CommentValue!14574 (value!221754 List!43850)) (WhitespaceValue!14574 (value!221755 List!43850)) (IndentationValue!7287 (value!221756 List!43850)) (String!50186) (Int32!7287) (Broken!36436 (value!221757 List!43850)) (Boolean!7288) (Unit!63261) (OperatorValue!7290 (op!7347 List!43850)) (IdentifierValue!14574 (value!221758 List!43850)) (IdentifierValue!14575 (value!221759 List!43850)) (WhitespaceValue!14575 (value!221760 List!43850)) (True!14574) (False!14574) (Broken!36437 (value!221761 List!43850)) (Broken!36438 (value!221762 List!43850)) (True!14575) (RightBrace!7287) (RightBracket!7287) (Colon!7287) (Null!7287) (Comma!7287) (LeftBracket!7287) (False!14575) (LeftBrace!7287) (ImaginaryLiteralValue!7287 (text!51455 List!43850)) (StringLiteralValue!21861 (value!221763 List!43850)) (EOFValue!7287 (value!221764 List!43850)) (IdentValue!7287 (value!221765 List!43850)) (DelimiterValue!14575 (value!221766 List!43850)) (DedentValue!7287 (value!221767 List!43850)) (NewLineValue!7287 (value!221768 List!43850)) (IntegerValue!21861 (value!221769 (_ BitVec 32)) (text!51456 List!43850)) (IntegerValue!21862 (value!221770 Int) (text!51457 List!43850)) (Times!7287) (Or!7287) (Equal!7287) (Minus!7287) (Broken!36439 (value!221771 List!43850)) (And!7287) (Div!7287) (LessEqual!7287) (Mod!7287) (Concat!19249) (Not!7287) (Plus!7287) (SpaceValue!7287 (value!221772 List!43850)) (IntegerValue!21863 (value!221773 Int) (text!51458 List!43850)) (StringLiteralValue!21862 (text!51459 List!43850)) (FloatLiteralValue!14575 (text!51460 List!43850)) (BytesLiteralValue!7287 (value!221774 List!43850)) (CommentValue!14575 (value!221775 List!43850)) (StringLiteralValue!21863 (value!221776 List!43850)) (ErrorTokenValue!7287 (msg!7348 List!43850)) )
))
(declare-datatypes ((C!24110 0))(
  ( (C!24111 (val!14165 Int)) )
))
(declare-datatypes ((Regex!11962 0))(
  ( (ElementMatch!11962 (c!703807 C!24110)) (Concat!19250 (regOne!24436 Regex!11962) (regTwo!24436 Regex!11962)) (EmptyExpr!11962) (Star!11962 (reg!12291 Regex!11962)) (EmptyLang!11962) (Union!11962 (regOne!24437 Regex!11962) (regTwo!24437 Regex!11962)) )
))
(declare-datatypes ((String!50187 0))(
  ( (String!50188 (value!221777 String)) )
))
(declare-datatypes ((List!43851 0))(
  ( (Nil!43727) (Cons!43727 (h!49147 C!24110) (t!337762 List!43851)) )
))
(declare-datatypes ((IArray!26541 0))(
  ( (IArray!26542 (innerList!13328 List!43851)) )
))
(declare-datatypes ((Conc!13268 0))(
  ( (Node!13268 (left!32863 Conc!13268) (right!33193 Conc!13268) (csize!26766 Int) (cheight!13479 Int)) (Leaf!20512 (xs!16574 IArray!26541) (csize!26767 Int)) (Empty!13268) )
))
(declare-datatypes ((BalanceConc!26130 0))(
  ( (BalanceConc!26131 (c!703808 Conc!13268)) )
))
(declare-datatypes ((TokenValueInjection!14002 0))(
  ( (TokenValueInjection!14003 (toValue!9629 Int) (toChars!9488 Int)) )
))
(declare-datatypes ((Rule!13914 0))(
  ( (Rule!13915 (regex!7057 Regex!11962) (tag!7917 String!50187) (isSeparator!7057 Bool) (transformation!7057 TokenValueInjection!14002)) )
))
(declare-datatypes ((List!43852 0))(
  ( (Nil!43728) (Cons!43728 (h!49148 Rule!13914) (t!337763 List!43852)) )
))
(declare-fun rules!3870 () List!43852)

(declare-fun input!3411 () List!43851)

(declare-datatypes ((Token!13240 0))(
  ( (Token!13241 (value!221778 TokenValue!7287) (rule!10177 Rule!13914) (size!32663 Int) (originalCharacters!7651 List!43851)) )
))
(declare-datatypes ((tuple2!42688 0))(
  ( (tuple2!42689 (_1!24478 Token!13240) (_2!24478 List!43851)) )
))
(declare-datatypes ((Option!9465 0))(
  ( (None!9464) (Some!9464 (v!39924 tuple2!42688)) )
))
(declare-fun lt!1460303 () Option!9465)

(declare-datatypes ((LexerInterface!6646 0))(
  ( (LexerInterfaceExt!6643 (__x!26792 Int)) (Lexer!6644) )
))
(declare-fun thiss!26199 () LexerInterface!6646)

(declare-fun maxPrefix!3938 (LexerInterface!6646 List!43852 List!43851) Option!9465)

(assert (=> b!4081426 (= res!1667538 (= (maxPrefix!3938 thiss!26199 rules!3870 input!3411) lt!1460303))))

(declare-fun suffix!1518 () List!43851)

(declare-fun p!2988 () List!43851)

(declare-fun r!4213 () Rule!13914)

(declare-fun lt!1460301 () BalanceConc!26130)

(declare-fun apply!10240 (TokenValueInjection!14002 BalanceConc!26130) TokenValue!7287)

(declare-fun size!32664 (List!43851) Int)

(assert (=> b!4081426 (= lt!1460303 (Some!9464 (tuple2!42689 (Token!13241 (apply!10240 (transformation!7057 r!4213) lt!1460301) r!4213 (size!32664 p!2988) p!2988) suffix!1518)))))

(declare-datatypes ((Unit!63262 0))(
  ( (Unit!63263) )
))
(declare-fun lt!1460300 () Unit!63262)

(declare-fun lemmaSemiInverse!2024 (TokenValueInjection!14002 BalanceConc!26130) Unit!63262)

(assert (=> b!4081426 (= lt!1460300 (lemmaSemiInverse!2024 (transformation!7057 r!4213) lt!1460301))))

(declare-fun seqFromList!5274 (List!43851) BalanceConc!26130)

(assert (=> b!4081426 (= lt!1460301 (seqFromList!5274 p!2988))))

(declare-fun b!4081427 () Bool)

(declare-fun e!2533193 () Bool)

(assert (=> b!4081427 (= e!2533200 (not e!2533193))))

(declare-fun res!1667540 () Bool)

(assert (=> b!4081427 (=> res!1667540 e!2533193)))

(declare-fun matchR!5907 (Regex!11962 List!43851) Bool)

(assert (=> b!4081427 (= res!1667540 (not (matchR!5907 (regex!7057 r!4213) p!2988)))))

(declare-fun ruleValid!2981 (LexerInterface!6646 Rule!13914) Bool)

(assert (=> b!4081427 (ruleValid!2981 thiss!26199 r!4213)))

(declare-fun lt!1460304 () Unit!63262)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2049 (LexerInterface!6646 Rule!13914 List!43852) Unit!63262)

(assert (=> b!4081427 (= lt!1460304 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2049 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4081428 () Bool)

(declare-fun e!2533195 () Bool)

(declare-fun tp!1235578 () Bool)

(assert (=> b!4081428 (= e!2533195 (and tp_is_empty!20927 tp!1235578))))

(declare-fun b!4081429 () Bool)

(declare-fun res!1667533 () Bool)

(assert (=> b!4081429 (=> (not res!1667533) (not e!2533194))))

(declare-fun rulesInvariant!5989 (LexerInterface!6646 List!43852) Bool)

(assert (=> b!4081429 (= res!1667533 (rulesInvariant!5989 thiss!26199 rules!3870))))

(declare-fun e!2533192 () Bool)

(declare-fun tp!1235583 () Bool)

(declare-fun b!4081430 () Bool)

(declare-fun inv!58387 (String!50187) Bool)

(declare-fun inv!58390 (TokenValueInjection!14002) Bool)

(assert (=> b!4081430 (= e!2533192 (and tp!1235583 (inv!58387 (tag!7917 r!4213)) (inv!58390 (transformation!7057 r!4213)) e!2533202))))

(declare-fun b!4081431 () Bool)

(declare-fun res!1667539 () Bool)

(assert (=> b!4081431 (=> (not res!1667539) (not e!2533194))))

(declare-fun contains!8728 (List!43852 Rule!13914) Bool)

(assert (=> b!4081431 (= res!1667539 (contains!8728 rules!3870 r!4213))))

(declare-fun b!4081432 () Bool)

(declare-fun res!1667532 () Bool)

(assert (=> b!4081432 (=> (not res!1667532) (not e!2533194))))

(declare-fun isEmpty!26134 (List!43851) Bool)

(assert (=> b!4081432 (= res!1667532 (not (isEmpty!26134 p!2988)))))

(declare-fun b!4081433 () Bool)

(declare-fun e!2533191 () Bool)

(declare-fun tp!1235582 () Bool)

(assert (=> b!4081433 (= e!2533191 (and tp_is_empty!20927 tp!1235582))))

(declare-fun b!4081434 () Bool)

(declare-fun res!1667534 () Bool)

(assert (=> b!4081434 (=> res!1667534 e!2533193)))

(assert (=> b!4081434 (= res!1667534 (or (and (is-Cons!43728 rules!3870) (= (h!49148 rules!3870) r!4213)) (not (is-Cons!43728 rules!3870)) (= (h!49148 rules!3870) r!4213)))))

(declare-fun res!1667531 () Bool)

(assert (=> start!385666 (=> (not res!1667531) (not e!2533194))))

(assert (=> start!385666 (= res!1667531 (is-Lexer!6644 thiss!26199))))

(assert (=> start!385666 e!2533194))

(assert (=> start!385666 true))

(assert (=> start!385666 e!2533195))

(assert (=> start!385666 e!2533204))

(assert (=> start!385666 e!2533199))

(assert (=> start!385666 e!2533191))

(assert (=> start!385666 e!2533192))

(declare-fun e!2533198 () Bool)

(declare-fun lt!1460302 () Option!9465)

(declare-fun lt!1460306 () tuple2!42688)

(declare-fun b!4081435 () Bool)

(assert (=> b!4081435 (= e!2533198 (or (not (= (rule!10177 (_1!24478 lt!1460306)) (h!49148 rules!3870))) (= (rule!10177 (_1!24478 lt!1460306)) r!4213) (not (= lt!1460302 lt!1460303))))))

(declare-fun get!14342 (Option!9465) tuple2!42688)

(assert (=> b!4081435 (= lt!1460306 (get!14342 lt!1460302))))

(declare-fun e!2533197 () Bool)

(assert (=> b!4081436 (= e!2533197 (and tp!1235575 tp!1235577))))

(declare-fun b!4081437 () Bool)

(assert (=> b!4081437 (= e!2533193 e!2533198)))

(declare-fun res!1667537 () Bool)

(assert (=> b!4081437 (=> res!1667537 e!2533198)))

(declare-fun isEmpty!26135 (Option!9465) Bool)

(assert (=> b!4081437 (= res!1667537 (isEmpty!26135 lt!1460302))))

(declare-fun maxPrefixOneRule!2928 (LexerInterface!6646 Rule!13914 List!43851) Option!9465)

(assert (=> b!4081437 (= lt!1460302 (maxPrefixOneRule!2928 thiss!26199 (h!49148 rules!3870) input!3411))))

(assert (=> b!4081437 (rulesInvariant!5989 thiss!26199 (t!337763 rules!3870))))

(declare-fun lt!1460305 () Unit!63262)

(declare-fun lemmaInvariantOnRulesThenOnTail!773 (LexerInterface!6646 Rule!13914 List!43852) Unit!63262)

(assert (=> b!4081437 (= lt!1460305 (lemmaInvariantOnRulesThenOnTail!773 thiss!26199 (h!49148 rules!3870) (t!337763 rules!3870)))))

(declare-fun b!4081438 () Bool)

(declare-fun res!1667536 () Bool)

(assert (=> b!4081438 (=> (not res!1667536) (not e!2533194))))

(declare-fun isEmpty!26136 (List!43852) Bool)

(assert (=> b!4081438 (= res!1667536 (not (isEmpty!26136 rules!3870)))))

(declare-fun b!4081439 () Bool)

(declare-fun tp!1235581 () Bool)

(assert (=> b!4081439 (= e!2533201 (and tp!1235581 (inv!58387 (tag!7917 (h!49148 rules!3870))) (inv!58390 (transformation!7057 (h!49148 rules!3870))) e!2533197))))

(declare-fun b!4081440 () Bool)

(declare-fun res!1667535 () Bool)

(assert (=> b!4081440 (=> (not res!1667535) (not e!2533194))))

(declare-fun ++!11463 (List!43851 List!43851) List!43851)

(assert (=> b!4081440 (= res!1667535 (= input!3411 (++!11463 p!2988 suffix!1518)))))

(assert (= (and start!385666 res!1667531) b!4081438))

(assert (= (and b!4081438 res!1667536) b!4081429))

(assert (= (and b!4081429 res!1667533) b!4081431))

(assert (= (and b!4081431 res!1667539) b!4081440))

(assert (= (and b!4081440 res!1667535) b!4081432))

(assert (= (and b!4081432 res!1667532) b!4081426))

(assert (= (and b!4081426 res!1667538) b!4081427))

(assert (= (and b!4081427 (not res!1667540)) b!4081434))

(assert (= (and b!4081434 (not res!1667534)) b!4081437))

(assert (= (and b!4081437 (not res!1667537)) b!4081435))

(assert (= (and start!385666 (is-Cons!43727 suffix!1518)) b!4081428))

(assert (= b!4081439 b!4081436))

(assert (= b!4081424 b!4081439))

(assert (= (and start!385666 (is-Cons!43728 rules!3870)) b!4081424))

(assert (= (and start!385666 (is-Cons!43727 p!2988)) b!4081425))

(assert (= (and start!385666 (is-Cons!43727 input!3411)) b!4081433))

(assert (= b!4081430 b!4081423))

(assert (= start!385666 b!4081430))

(declare-fun m!4689029 () Bool)

(assert (=> b!4081426 m!4689029))

(declare-fun m!4689031 () Bool)

(assert (=> b!4081426 m!4689031))

(declare-fun m!4689033 () Bool)

(assert (=> b!4081426 m!4689033))

(declare-fun m!4689035 () Bool)

(assert (=> b!4081426 m!4689035))

(declare-fun m!4689037 () Bool)

(assert (=> b!4081426 m!4689037))

(declare-fun m!4689039 () Bool)

(assert (=> b!4081432 m!4689039))

(declare-fun m!4689041 () Bool)

(assert (=> b!4081439 m!4689041))

(declare-fun m!4689043 () Bool)

(assert (=> b!4081439 m!4689043))

(declare-fun m!4689045 () Bool)

(assert (=> b!4081430 m!4689045))

(declare-fun m!4689047 () Bool)

(assert (=> b!4081430 m!4689047))

(declare-fun m!4689049 () Bool)

(assert (=> b!4081437 m!4689049))

(declare-fun m!4689051 () Bool)

(assert (=> b!4081437 m!4689051))

(declare-fun m!4689053 () Bool)

(assert (=> b!4081437 m!4689053))

(declare-fun m!4689055 () Bool)

(assert (=> b!4081437 m!4689055))

(declare-fun m!4689057 () Bool)

(assert (=> b!4081438 m!4689057))

(declare-fun m!4689059 () Bool)

(assert (=> b!4081431 m!4689059))

(declare-fun m!4689061 () Bool)

(assert (=> b!4081427 m!4689061))

(declare-fun m!4689063 () Bool)

(assert (=> b!4081427 m!4689063))

(declare-fun m!4689065 () Bool)

(assert (=> b!4081427 m!4689065))

(declare-fun m!4689067 () Bool)

(assert (=> b!4081440 m!4689067))

(declare-fun m!4689069 () Bool)

(assert (=> b!4081435 m!4689069))

(declare-fun m!4689071 () Bool)

(assert (=> b!4081429 m!4689071))

(push 1)

(assert (not b_next!114625))

(assert (not b!4081438))

(assert (not b!4081427))

(assert (not b!4081429))

(assert (not b!4081433))

(assert b_and!314013)

(assert (not b_next!114629))

(assert (not b!4081435))

(assert (not b!4081440))

(assert tp_is_empty!20927)

(assert (not b!4081437))

(assert (not b!4081430))

(assert (not b!4081425))

(assert b_and!314011)

(assert (not b_next!114631))

(assert (not b!4081428))

(assert (not b!4081426))

(assert (not b!4081424))

(assert b_and!314009)

(assert (not b_next!114627))

(assert (not b!4081432))

(assert (not b!4081431))

(assert b_and!314007)

(assert (not b!4081439))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!114625))

(assert b_and!314009)

(assert b_and!314013)

(assert (not b_next!114627))

(assert (not b_next!114629))

(assert b_and!314007)

(assert b_and!314011)

(assert (not b_next!114631))

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!288682 () Bool)

(declare-fun call!288687 () Bool)

(assert (=> bm!288682 (= call!288687 (isEmpty!26134 p!2988))))

(declare-fun b!4081523 () Bool)

(declare-fun e!2533266 () Bool)

(declare-fun derivativeStep!3614 (Regex!11962 C!24110) Regex!11962)

(declare-fun head!8624 (List!43851) C!24110)

(declare-fun tail!6358 (List!43851) List!43851)

(assert (=> b!4081523 (= e!2533266 (matchR!5907 (derivativeStep!3614 (regex!7057 r!4213) (head!8624 p!2988)) (tail!6358 p!2988)))))

(declare-fun b!4081524 () Bool)

(declare-fun e!2533263 () Bool)

(assert (=> b!4081524 (= e!2533263 (not (= (head!8624 p!2988) (c!703807 (regex!7057 r!4213)))))))

(declare-fun b!4081525 () Bool)

(declare-fun e!2533265 () Bool)

(declare-fun e!2533262 () Bool)

(assert (=> b!4081525 (= e!2533265 e!2533262)))

(declare-fun c!703819 () Bool)

(assert (=> b!4081525 (= c!703819 (is-EmptyLang!11962 (regex!7057 r!4213)))))

(declare-fun b!4081526 () Bool)

(declare-fun lt!1460330 () Bool)

(assert (=> b!4081526 (= e!2533265 (= lt!1460330 call!288687))))

(declare-fun b!4081527 () Bool)

(declare-fun res!1667600 () Bool)

(declare-fun e!2533261 () Bool)

(assert (=> b!4081527 (=> res!1667600 e!2533261)))

(assert (=> b!4081527 (= res!1667600 (not (is-ElementMatch!11962 (regex!7057 r!4213))))))

(assert (=> b!4081527 (= e!2533262 e!2533261)))

(declare-fun b!4081528 () Bool)

(declare-fun e!2533264 () Bool)

(assert (=> b!4081528 (= e!2533264 e!2533263)))

(declare-fun res!1667597 () Bool)

(assert (=> b!4081528 (=> res!1667597 e!2533263)))

(assert (=> b!4081528 (= res!1667597 call!288687)))

(declare-fun b!4081529 () Bool)

(assert (=> b!4081529 (= e!2533261 e!2533264)))

(declare-fun res!1667596 () Bool)

(assert (=> b!4081529 (=> (not res!1667596) (not e!2533264))))

(assert (=> b!4081529 (= res!1667596 (not lt!1460330))))

(declare-fun d!1212196 () Bool)

(assert (=> d!1212196 e!2533265))

(declare-fun c!703818 () Bool)

(assert (=> d!1212196 (= c!703818 (is-EmptyExpr!11962 (regex!7057 r!4213)))))

(assert (=> d!1212196 (= lt!1460330 e!2533266)))

(declare-fun c!703820 () Bool)

(assert (=> d!1212196 (= c!703820 (isEmpty!26134 p!2988))))

(declare-fun validRegex!5413 (Regex!11962) Bool)

(assert (=> d!1212196 (validRegex!5413 (regex!7057 r!4213))))

(assert (=> d!1212196 (= (matchR!5907 (regex!7057 r!4213) p!2988) lt!1460330)))

(declare-fun b!4081530 () Bool)

(declare-fun res!1667599 () Bool)

(assert (=> b!4081530 (=> res!1667599 e!2533263)))

(assert (=> b!4081530 (= res!1667599 (not (isEmpty!26134 (tail!6358 p!2988))))))

(declare-fun b!4081531 () Bool)

(declare-fun res!1667595 () Bool)

(assert (=> b!4081531 (=> res!1667595 e!2533261)))

(declare-fun e!2533267 () Bool)

(assert (=> b!4081531 (= res!1667595 e!2533267)))

(declare-fun res!1667594 () Bool)

(assert (=> b!4081531 (=> (not res!1667594) (not e!2533267))))

(assert (=> b!4081531 (= res!1667594 lt!1460330)))

(declare-fun b!4081532 () Bool)

(declare-fun res!1667601 () Bool)

(assert (=> b!4081532 (=> (not res!1667601) (not e!2533267))))

(assert (=> b!4081532 (= res!1667601 (not call!288687))))

(declare-fun b!4081533 () Bool)

(assert (=> b!4081533 (= e!2533262 (not lt!1460330))))

(declare-fun b!4081534 () Bool)

(declare-fun res!1667598 () Bool)

(assert (=> b!4081534 (=> (not res!1667598) (not e!2533267))))

(assert (=> b!4081534 (= res!1667598 (isEmpty!26134 (tail!6358 p!2988)))))

(declare-fun b!4081535 () Bool)

(assert (=> b!4081535 (= e!2533267 (= (head!8624 p!2988) (c!703807 (regex!7057 r!4213))))))

(declare-fun b!4081536 () Bool)

(declare-fun nullable!4213 (Regex!11962) Bool)

(assert (=> b!4081536 (= e!2533266 (nullable!4213 (regex!7057 r!4213)))))

(assert (= (and d!1212196 c!703820) b!4081536))

(assert (= (and d!1212196 (not c!703820)) b!4081523))

(assert (= (and d!1212196 c!703818) b!4081526))

(assert (= (and d!1212196 (not c!703818)) b!4081525))

(assert (= (and b!4081525 c!703819) b!4081533))

(assert (= (and b!4081525 (not c!703819)) b!4081527))

(assert (= (and b!4081527 (not res!1667600)) b!4081531))

(assert (= (and b!4081531 res!1667594) b!4081532))

(assert (= (and b!4081532 res!1667601) b!4081534))

(assert (= (and b!4081534 res!1667598) b!4081535))

(assert (= (and b!4081531 (not res!1667595)) b!4081529))

(assert (= (and b!4081529 res!1667596) b!4081528))

(assert (= (and b!4081528 (not res!1667597)) b!4081530))

(assert (= (and b!4081530 (not res!1667599)) b!4081524))

(assert (= (or b!4081526 b!4081528 b!4081532) bm!288682))

(declare-fun m!4689117 () Bool)

(assert (=> b!4081524 m!4689117))

(declare-fun m!4689119 () Bool)

(assert (=> b!4081536 m!4689119))

(assert (=> b!4081523 m!4689117))

(assert (=> b!4081523 m!4689117))

(declare-fun m!4689121 () Bool)

(assert (=> b!4081523 m!4689121))

(declare-fun m!4689123 () Bool)

(assert (=> b!4081523 m!4689123))

(assert (=> b!4081523 m!4689121))

(assert (=> b!4081523 m!4689123))

(declare-fun m!4689125 () Bool)

(assert (=> b!4081523 m!4689125))

(assert (=> b!4081535 m!4689117))

(assert (=> b!4081534 m!4689123))

(assert (=> b!4081534 m!4689123))

(declare-fun m!4689127 () Bool)

(assert (=> b!4081534 m!4689127))

(assert (=> b!4081530 m!4689123))

(assert (=> b!4081530 m!4689123))

(assert (=> b!4081530 m!4689127))

(assert (=> bm!288682 m!4689039))

(assert (=> d!1212196 m!4689039))

(declare-fun m!4689129 () Bool)

(assert (=> d!1212196 m!4689129))

(assert (=> b!4081427 d!1212196))

(declare-fun d!1212198 () Bool)

(declare-fun res!1667606 () Bool)

(declare-fun e!2533270 () Bool)

(assert (=> d!1212198 (=> (not res!1667606) (not e!2533270))))

(assert (=> d!1212198 (= res!1667606 (validRegex!5413 (regex!7057 r!4213)))))

(assert (=> d!1212198 (= (ruleValid!2981 thiss!26199 r!4213) e!2533270)))

(declare-fun b!4081541 () Bool)

(declare-fun res!1667607 () Bool)

(assert (=> b!4081541 (=> (not res!1667607) (not e!2533270))))

(assert (=> b!4081541 (= res!1667607 (not (nullable!4213 (regex!7057 r!4213))))))

(declare-fun b!4081542 () Bool)

(assert (=> b!4081542 (= e!2533270 (not (= (tag!7917 r!4213) (String!50188 ""))))))

(assert (= (and d!1212198 res!1667606) b!4081541))

(assert (= (and b!4081541 res!1667607) b!4081542))

(assert (=> d!1212198 m!4689129))

(assert (=> b!4081541 m!4689119))

(assert (=> b!4081427 d!1212198))

(declare-fun d!1212200 () Bool)

(assert (=> d!1212200 (ruleValid!2981 thiss!26199 r!4213)))

(declare-fun lt!1460333 () Unit!63262)

(declare-fun choose!24919 (LexerInterface!6646 Rule!13914 List!43852) Unit!63262)

(assert (=> d!1212200 (= lt!1460333 (choose!24919 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1212200 (contains!8728 rules!3870 r!4213)))

(assert (=> d!1212200 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2049 thiss!26199 r!4213 rules!3870) lt!1460333)))

(declare-fun bs!592921 () Bool)

(assert (= bs!592921 d!1212200))

(assert (=> bs!592921 m!4689063))

(declare-fun m!4689131 () Bool)

(assert (=> bs!592921 m!4689131))

(assert (=> bs!592921 m!4689059))

(assert (=> b!4081427 d!1212200))

(declare-fun d!1212202 () Bool)

(assert (=> d!1212202 (= (isEmpty!26134 p!2988) (is-Nil!43727 p!2988))))

(assert (=> b!4081432 d!1212202))

(declare-fun d!1212204 () Bool)

(assert (=> d!1212204 (= (isEmpty!26136 rules!3870) (is-Nil!43728 rules!3870))))

(assert (=> b!4081438 d!1212204))

(declare-fun d!1212206 () Bool)

(declare-fun lt!1460336 () Bool)

(declare-fun content!6704 (List!43852) (Set Rule!13914))

(assert (=> d!1212206 (= lt!1460336 (set.member r!4213 (content!6704 rules!3870)))))

(declare-fun e!2533275 () Bool)

(assert (=> d!1212206 (= lt!1460336 e!2533275)))

(declare-fun res!1667613 () Bool)

(assert (=> d!1212206 (=> (not res!1667613) (not e!2533275))))

(assert (=> d!1212206 (= res!1667613 (is-Cons!43728 rules!3870))))

(assert (=> d!1212206 (= (contains!8728 rules!3870 r!4213) lt!1460336)))

(declare-fun b!4081547 () Bool)

(declare-fun e!2533276 () Bool)

(assert (=> b!4081547 (= e!2533275 e!2533276)))

(declare-fun res!1667612 () Bool)

(assert (=> b!4081547 (=> res!1667612 e!2533276)))

(assert (=> b!4081547 (= res!1667612 (= (h!49148 rules!3870) r!4213))))

(declare-fun b!4081548 () Bool)

(assert (=> b!4081548 (= e!2533276 (contains!8728 (t!337763 rules!3870) r!4213))))

(assert (= (and d!1212206 res!1667613) b!4081547))

(assert (= (and b!4081547 (not res!1667612)) b!4081548))

(declare-fun m!4689133 () Bool)

(assert (=> d!1212206 m!4689133))

(declare-fun m!4689135 () Bool)

(assert (=> d!1212206 m!4689135))

(declare-fun m!4689137 () Bool)

(assert (=> b!4081548 m!4689137))

(assert (=> b!4081431 d!1212206))

(declare-fun d!1212210 () Bool)

(assert (=> d!1212210 (= (isEmpty!26135 lt!1460302) (not (is-Some!9464 lt!1460302)))))

(assert (=> b!4081437 d!1212210))

(declare-fun b!4081615 () Bool)

(declare-fun e!2533310 () Option!9465)

(declare-datatypes ((tuple2!42692 0))(
  ( (tuple2!42693 (_1!24480 List!43851) (_2!24480 List!43851)) )
))
(declare-fun lt!1460355 () tuple2!42692)

(declare-fun size!32667 (BalanceConc!26130) Int)

(assert (=> b!4081615 (= e!2533310 (Some!9464 (tuple2!42689 (Token!13241 (apply!10240 (transformation!7057 (h!49148 rules!3870)) (seqFromList!5274 (_1!24480 lt!1460355))) (h!49148 rules!3870) (size!32667 (seqFromList!5274 (_1!24480 lt!1460355))) (_1!24480 lt!1460355)) (_2!24480 lt!1460355))))))

(declare-fun lt!1460357 () Unit!63262)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1413 (Regex!11962 List!43851) Unit!63262)

(assert (=> b!4081615 (= lt!1460357 (longestMatchIsAcceptedByMatchOrIsEmpty!1413 (regex!7057 (h!49148 rules!3870)) input!3411))))

(declare-fun res!1667662 () Bool)

(declare-fun findLongestMatchInner!1440 (Regex!11962 List!43851 Int List!43851 List!43851 Int) tuple2!42692)

(assert (=> b!4081615 (= res!1667662 (isEmpty!26134 (_1!24480 (findLongestMatchInner!1440 (regex!7057 (h!49148 rules!3870)) Nil!43727 (size!32664 Nil!43727) input!3411 input!3411 (size!32664 input!3411)))))))

(declare-fun e!2533309 () Bool)

(assert (=> b!4081615 (=> res!1667662 e!2533309)))

(assert (=> b!4081615 e!2533309))

(declare-fun lt!1460354 () Unit!63262)

(assert (=> b!4081615 (= lt!1460354 lt!1460357)))

(declare-fun lt!1460353 () Unit!63262)

(assert (=> b!4081615 (= lt!1460353 (lemmaSemiInverse!2024 (transformation!7057 (h!49148 rules!3870)) (seqFromList!5274 (_1!24480 lt!1460355))))))

(declare-fun b!4081616 () Bool)

(declare-fun res!1667658 () Bool)

(declare-fun e!2533312 () Bool)

(assert (=> b!4081616 (=> (not res!1667658) (not e!2533312))))

(declare-fun lt!1460356 () Option!9465)

(assert (=> b!4081616 (= res!1667658 (< (size!32664 (_2!24478 (get!14342 lt!1460356))) (size!32664 input!3411)))))

(declare-fun b!4081617 () Bool)

(assert (=> b!4081617 (= e!2533309 (matchR!5907 (regex!7057 (h!49148 rules!3870)) (_1!24480 (findLongestMatchInner!1440 (regex!7057 (h!49148 rules!3870)) Nil!43727 (size!32664 Nil!43727) input!3411 input!3411 (size!32664 input!3411)))))))

(declare-fun b!4081618 () Bool)

(declare-fun res!1667661 () Bool)

(assert (=> b!4081618 (=> (not res!1667661) (not e!2533312))))

(assert (=> b!4081618 (= res!1667661 (= (value!221778 (_1!24478 (get!14342 lt!1460356))) (apply!10240 (transformation!7057 (rule!10177 (_1!24478 (get!14342 lt!1460356)))) (seqFromList!5274 (originalCharacters!7651 (_1!24478 (get!14342 lt!1460356)))))))))

(declare-fun d!1212212 () Bool)

(declare-fun e!2533311 () Bool)

(assert (=> d!1212212 e!2533311))

(declare-fun res!1667663 () Bool)

(assert (=> d!1212212 (=> res!1667663 e!2533311)))

(assert (=> d!1212212 (= res!1667663 (isEmpty!26135 lt!1460356))))

(assert (=> d!1212212 (= lt!1460356 e!2533310)))

(declare-fun c!703832 () Bool)

(assert (=> d!1212212 (= c!703832 (isEmpty!26134 (_1!24480 lt!1460355)))))

(declare-fun findLongestMatch!1353 (Regex!11962 List!43851) tuple2!42692)

(assert (=> d!1212212 (= lt!1460355 (findLongestMatch!1353 (regex!7057 (h!49148 rules!3870)) input!3411))))

(assert (=> d!1212212 (ruleValid!2981 thiss!26199 (h!49148 rules!3870))))

(assert (=> d!1212212 (= (maxPrefixOneRule!2928 thiss!26199 (h!49148 rules!3870) input!3411) lt!1460356)))

(declare-fun b!4081619 () Bool)

(assert (=> b!4081619 (= e!2533311 e!2533312)))

(declare-fun res!1667664 () Bool)

(assert (=> b!4081619 (=> (not res!1667664) (not e!2533312))))

(declare-fun list!16247 (BalanceConc!26130) List!43851)

(declare-fun charsOf!4829 (Token!13240) BalanceConc!26130)

(assert (=> b!4081619 (= res!1667664 (matchR!5907 (regex!7057 (h!49148 rules!3870)) (list!16247 (charsOf!4829 (_1!24478 (get!14342 lt!1460356))))))))

(declare-fun b!4081620 () Bool)

(assert (=> b!4081620 (= e!2533310 None!9464)))

(declare-fun b!4081621 () Bool)

(declare-fun res!1667660 () Bool)

(assert (=> b!4081621 (=> (not res!1667660) (not e!2533312))))

(assert (=> b!4081621 (= res!1667660 (= (++!11463 (list!16247 (charsOf!4829 (_1!24478 (get!14342 lt!1460356)))) (_2!24478 (get!14342 lt!1460356))) input!3411))))

(declare-fun b!4081622 () Bool)

(declare-fun res!1667659 () Bool)

(assert (=> b!4081622 (=> (not res!1667659) (not e!2533312))))

(assert (=> b!4081622 (= res!1667659 (= (rule!10177 (_1!24478 (get!14342 lt!1460356))) (h!49148 rules!3870)))))

(declare-fun b!4081623 () Bool)

(assert (=> b!4081623 (= e!2533312 (= (size!32663 (_1!24478 (get!14342 lt!1460356))) (size!32664 (originalCharacters!7651 (_1!24478 (get!14342 lt!1460356))))))))

(assert (= (and d!1212212 c!703832) b!4081620))

(assert (= (and d!1212212 (not c!703832)) b!4081615))

(assert (= (and b!4081615 (not res!1667662)) b!4081617))

(assert (= (and d!1212212 (not res!1667663)) b!4081619))

(assert (= (and b!4081619 res!1667664) b!4081621))

(assert (= (and b!4081621 res!1667660) b!4081616))

(assert (= (and b!4081616 res!1667658) b!4081622))

(assert (= (and b!4081622 res!1667659) b!4081618))

(assert (= (and b!4081618 res!1667661) b!4081623))

(declare-fun m!4689155 () Bool)

(assert (=> b!4081621 m!4689155))

(declare-fun m!4689157 () Bool)

(assert (=> b!4081621 m!4689157))

(assert (=> b!4081621 m!4689157))

(declare-fun m!4689159 () Bool)

(assert (=> b!4081621 m!4689159))

(assert (=> b!4081621 m!4689159))

(declare-fun m!4689161 () Bool)

(assert (=> b!4081621 m!4689161))

(assert (=> b!4081622 m!4689155))

(declare-fun m!4689163 () Bool)

(assert (=> b!4081617 m!4689163))

(declare-fun m!4689165 () Bool)

(assert (=> b!4081617 m!4689165))

(assert (=> b!4081617 m!4689163))

(assert (=> b!4081617 m!4689165))

(declare-fun m!4689167 () Bool)

(assert (=> b!4081617 m!4689167))

(declare-fun m!4689169 () Bool)

(assert (=> b!4081617 m!4689169))

(assert (=> b!4081618 m!4689155))

(declare-fun m!4689171 () Bool)

(assert (=> b!4081618 m!4689171))

(assert (=> b!4081618 m!4689171))

(declare-fun m!4689173 () Bool)

(assert (=> b!4081618 m!4689173))

(assert (=> b!4081619 m!4689155))

(assert (=> b!4081619 m!4689157))

(assert (=> b!4081619 m!4689157))

(assert (=> b!4081619 m!4689159))

(assert (=> b!4081619 m!4689159))

(declare-fun m!4689175 () Bool)

(assert (=> b!4081619 m!4689175))

(declare-fun m!4689177 () Bool)

(assert (=> b!4081615 m!4689177))

(assert (=> b!4081615 m!4689165))

(declare-fun m!4689179 () Bool)

(assert (=> b!4081615 m!4689179))

(declare-fun m!4689181 () Bool)

(assert (=> b!4081615 m!4689181))

(assert (=> b!4081615 m!4689163))

(assert (=> b!4081615 m!4689165))

(assert (=> b!4081615 m!4689167))

(declare-fun m!4689183 () Bool)

(assert (=> b!4081615 m!4689183))

(assert (=> b!4081615 m!4689179))

(declare-fun m!4689185 () Bool)

(assert (=> b!4081615 m!4689185))

(assert (=> b!4081615 m!4689179))

(assert (=> b!4081615 m!4689179))

(declare-fun m!4689187 () Bool)

(assert (=> b!4081615 m!4689187))

(assert (=> b!4081615 m!4689163))

(assert (=> b!4081623 m!4689155))

(declare-fun m!4689189 () Bool)

(assert (=> b!4081623 m!4689189))

(assert (=> b!4081616 m!4689155))

(declare-fun m!4689191 () Bool)

(assert (=> b!4081616 m!4689191))

(assert (=> b!4081616 m!4689165))

(declare-fun m!4689193 () Bool)

(assert (=> d!1212212 m!4689193))

(declare-fun m!4689195 () Bool)

(assert (=> d!1212212 m!4689195))

(declare-fun m!4689197 () Bool)

(assert (=> d!1212212 m!4689197))

(declare-fun m!4689199 () Bool)

(assert (=> d!1212212 m!4689199))

(assert (=> b!4081437 d!1212212))

(declare-fun d!1212220 () Bool)

(declare-fun res!1667667 () Bool)

(declare-fun e!2533315 () Bool)

(assert (=> d!1212220 (=> (not res!1667667) (not e!2533315))))

(declare-fun rulesValid!2755 (LexerInterface!6646 List!43852) Bool)

(assert (=> d!1212220 (= res!1667667 (rulesValid!2755 thiss!26199 (t!337763 rules!3870)))))

(assert (=> d!1212220 (= (rulesInvariant!5989 thiss!26199 (t!337763 rules!3870)) e!2533315)))

(declare-fun b!4081626 () Bool)

(declare-datatypes ((List!43856 0))(
  ( (Nil!43732) (Cons!43732 (h!49152 String!50187) (t!337787 List!43856)) )
))
(declare-fun noDuplicateTag!2756 (LexerInterface!6646 List!43852 List!43856) Bool)

(assert (=> b!4081626 (= e!2533315 (noDuplicateTag!2756 thiss!26199 (t!337763 rules!3870) Nil!43732))))

(assert (= (and d!1212220 res!1667667) b!4081626))

(declare-fun m!4689201 () Bool)

(assert (=> d!1212220 m!4689201))

(declare-fun m!4689203 () Bool)

(assert (=> b!4081626 m!4689203))

(assert (=> b!4081437 d!1212220))

(declare-fun d!1212222 () Bool)

(assert (=> d!1212222 (rulesInvariant!5989 thiss!26199 (t!337763 rules!3870))))

(declare-fun lt!1460360 () Unit!63262)

(declare-fun choose!24920 (LexerInterface!6646 Rule!13914 List!43852) Unit!63262)

(assert (=> d!1212222 (= lt!1460360 (choose!24920 thiss!26199 (h!49148 rules!3870) (t!337763 rules!3870)))))

(assert (=> d!1212222 (rulesInvariant!5989 thiss!26199 (Cons!43728 (h!49148 rules!3870) (t!337763 rules!3870)))))

(assert (=> d!1212222 (= (lemmaInvariantOnRulesThenOnTail!773 thiss!26199 (h!49148 rules!3870) (t!337763 rules!3870)) lt!1460360)))

(declare-fun bs!592923 () Bool)

(assert (= bs!592923 d!1212222))

(assert (=> bs!592923 m!4689053))

(declare-fun m!4689205 () Bool)

(assert (=> bs!592923 m!4689205))

(declare-fun m!4689207 () Bool)

(assert (=> bs!592923 m!4689207))

(assert (=> b!4081437 d!1212222))

(declare-fun d!1212224 () Bool)

(declare-fun dynLambda!18617 (Int BalanceConc!26130) TokenValue!7287)

(assert (=> d!1212224 (= (apply!10240 (transformation!7057 r!4213) lt!1460301) (dynLambda!18617 (toValue!9629 (transformation!7057 r!4213)) lt!1460301))))

(declare-fun b_lambda!119351 () Bool)

(assert (=> (not b_lambda!119351) (not d!1212224)))

(declare-fun tb!245137 () Bool)

(declare-fun t!337768 () Bool)

(assert (=> (and b!4081436 (= (toValue!9629 (transformation!7057 (h!49148 rules!3870))) (toValue!9629 (transformation!7057 r!4213))) t!337768) tb!245137))

(declare-fun result!297330 () Bool)

(declare-fun inv!21 (TokenValue!7287) Bool)

(assert (=> tb!245137 (= result!297330 (inv!21 (dynLambda!18617 (toValue!9629 (transformation!7057 r!4213)) lt!1460301)))))

(declare-fun m!4689209 () Bool)

(assert (=> tb!245137 m!4689209))

(assert (=> d!1212224 t!337768))

(declare-fun b_and!314023 () Bool)

(assert (= b_and!314007 (and (=> t!337768 result!297330) b_and!314023)))

(declare-fun t!337770 () Bool)

(declare-fun tb!245139 () Bool)

(assert (=> (and b!4081423 (= (toValue!9629 (transformation!7057 r!4213)) (toValue!9629 (transformation!7057 r!4213))) t!337770) tb!245139))

(declare-fun result!297334 () Bool)

(assert (= result!297334 result!297330))

(assert (=> d!1212224 t!337770))

(declare-fun b_and!314025 () Bool)

(assert (= b_and!314011 (and (=> t!337770 result!297334) b_and!314025)))

(declare-fun m!4689211 () Bool)

(assert (=> d!1212224 m!4689211))

(assert (=> b!4081426 d!1212224))

(declare-fun b!4081647 () Bool)

(declare-fun res!1667683 () Bool)

(declare-fun e!2533326 () Bool)

(assert (=> b!4081647 (=> (not res!1667683) (not e!2533326))))

(declare-fun lt!1460374 () Option!9465)

(assert (=> b!4081647 (= res!1667683 (matchR!5907 (regex!7057 (rule!10177 (_1!24478 (get!14342 lt!1460374)))) (list!16247 (charsOf!4829 (_1!24478 (get!14342 lt!1460374))))))))

(declare-fun b!4081648 () Bool)

(assert (=> b!4081648 (= e!2533326 (contains!8728 rules!3870 (rule!10177 (_1!24478 (get!14342 lt!1460374)))))))

(declare-fun b!4081649 () Bool)

(declare-fun e!2533325 () Option!9465)

(declare-fun call!288693 () Option!9465)

(assert (=> b!4081649 (= e!2533325 call!288693)))

(declare-fun d!1212226 () Bool)

(declare-fun e!2533327 () Bool)

(assert (=> d!1212226 e!2533327))

(declare-fun res!1667687 () Bool)

(assert (=> d!1212226 (=> res!1667687 e!2533327)))

(assert (=> d!1212226 (= res!1667687 (isEmpty!26135 lt!1460374))))

(assert (=> d!1212226 (= lt!1460374 e!2533325)))

(declare-fun c!703835 () Bool)

(assert (=> d!1212226 (= c!703835 (and (is-Cons!43728 rules!3870) (is-Nil!43728 (t!337763 rules!3870))))))

(declare-fun lt!1460373 () Unit!63262)

(declare-fun lt!1460372 () Unit!63262)

(assert (=> d!1212226 (= lt!1460373 lt!1460372)))

(declare-fun isPrefix!4116 (List!43851 List!43851) Bool)

(assert (=> d!1212226 (isPrefix!4116 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2667 (List!43851 List!43851) Unit!63262)

(assert (=> d!1212226 (= lt!1460372 (lemmaIsPrefixRefl!2667 input!3411 input!3411))))

(declare-fun rulesValidInductive!2596 (LexerInterface!6646 List!43852) Bool)

(assert (=> d!1212226 (rulesValidInductive!2596 thiss!26199 rules!3870)))

(assert (=> d!1212226 (= (maxPrefix!3938 thiss!26199 rules!3870 input!3411) lt!1460374)))

(declare-fun b!4081650 () Bool)

(declare-fun res!1667684 () Bool)

(assert (=> b!4081650 (=> (not res!1667684) (not e!2533326))))

(assert (=> b!4081650 (= res!1667684 (= (value!221778 (_1!24478 (get!14342 lt!1460374))) (apply!10240 (transformation!7057 (rule!10177 (_1!24478 (get!14342 lt!1460374)))) (seqFromList!5274 (originalCharacters!7651 (_1!24478 (get!14342 lt!1460374)))))))))

(declare-fun bm!288688 () Bool)

(assert (=> bm!288688 (= call!288693 (maxPrefixOneRule!2928 thiss!26199 (h!49148 rules!3870) input!3411))))

(declare-fun b!4081651 () Bool)

(declare-fun res!1667688 () Bool)

(assert (=> b!4081651 (=> (not res!1667688) (not e!2533326))))

(assert (=> b!4081651 (= res!1667688 (= (list!16247 (charsOf!4829 (_1!24478 (get!14342 lt!1460374)))) (originalCharacters!7651 (_1!24478 (get!14342 lt!1460374)))))))

(declare-fun b!4081652 () Bool)

(assert (=> b!4081652 (= e!2533327 e!2533326)))

(declare-fun res!1667685 () Bool)

(assert (=> b!4081652 (=> (not res!1667685) (not e!2533326))))

(declare-fun isDefined!7165 (Option!9465) Bool)

(assert (=> b!4081652 (= res!1667685 (isDefined!7165 lt!1460374))))

(declare-fun b!4081653 () Bool)

(declare-fun res!1667686 () Bool)

(assert (=> b!4081653 (=> (not res!1667686) (not e!2533326))))

(assert (=> b!4081653 (= res!1667686 (< (size!32664 (_2!24478 (get!14342 lt!1460374))) (size!32664 input!3411)))))

(declare-fun b!4081654 () Bool)

(declare-fun lt!1460375 () Option!9465)

(declare-fun lt!1460371 () Option!9465)

(assert (=> b!4081654 (= e!2533325 (ite (and (is-None!9464 lt!1460375) (is-None!9464 lt!1460371)) None!9464 (ite (is-None!9464 lt!1460371) lt!1460375 (ite (is-None!9464 lt!1460375) lt!1460371 (ite (>= (size!32663 (_1!24478 (v!39924 lt!1460375))) (size!32663 (_1!24478 (v!39924 lt!1460371)))) lt!1460375 lt!1460371)))))))

(assert (=> b!4081654 (= lt!1460375 call!288693)))

(assert (=> b!4081654 (= lt!1460371 (maxPrefix!3938 thiss!26199 (t!337763 rules!3870) input!3411))))

(declare-fun b!4081655 () Bool)

(declare-fun res!1667682 () Bool)

(assert (=> b!4081655 (=> (not res!1667682) (not e!2533326))))

(assert (=> b!4081655 (= res!1667682 (= (++!11463 (list!16247 (charsOf!4829 (_1!24478 (get!14342 lt!1460374)))) (_2!24478 (get!14342 lt!1460374))) input!3411))))

(assert (= (and d!1212226 c!703835) b!4081649))

(assert (= (and d!1212226 (not c!703835)) b!4081654))

(assert (= (or b!4081649 b!4081654) bm!288688))

(assert (= (and d!1212226 (not res!1667687)) b!4081652))

(assert (= (and b!4081652 res!1667685) b!4081651))

(assert (= (and b!4081651 res!1667688) b!4081653))

(assert (= (and b!4081653 res!1667686) b!4081655))

(assert (= (and b!4081655 res!1667682) b!4081650))

(assert (= (and b!4081650 res!1667684) b!4081647))

(assert (= (and b!4081647 res!1667683) b!4081648))

(declare-fun m!4689213 () Bool)

(assert (=> b!4081654 m!4689213))

(declare-fun m!4689215 () Bool)

(assert (=> b!4081653 m!4689215))

(declare-fun m!4689217 () Bool)

(assert (=> b!4081653 m!4689217))

(assert (=> b!4081653 m!4689165))

(assert (=> b!4081650 m!4689215))

(declare-fun m!4689219 () Bool)

(assert (=> b!4081650 m!4689219))

(assert (=> b!4081650 m!4689219))

(declare-fun m!4689221 () Bool)

(assert (=> b!4081650 m!4689221))

(declare-fun m!4689223 () Bool)

(assert (=> d!1212226 m!4689223))

(declare-fun m!4689225 () Bool)

(assert (=> d!1212226 m!4689225))

(declare-fun m!4689227 () Bool)

(assert (=> d!1212226 m!4689227))

(declare-fun m!4689229 () Bool)

(assert (=> d!1212226 m!4689229))

(assert (=> bm!288688 m!4689051))

(assert (=> b!4081648 m!4689215))

(declare-fun m!4689231 () Bool)

(assert (=> b!4081648 m!4689231))

(assert (=> b!4081647 m!4689215))

(declare-fun m!4689233 () Bool)

(assert (=> b!4081647 m!4689233))

(assert (=> b!4081647 m!4689233))

(declare-fun m!4689235 () Bool)

(assert (=> b!4081647 m!4689235))

(assert (=> b!4081647 m!4689235))

(declare-fun m!4689237 () Bool)

(assert (=> b!4081647 m!4689237))

(assert (=> b!4081655 m!4689215))

(assert (=> b!4081655 m!4689233))

(assert (=> b!4081655 m!4689233))

(assert (=> b!4081655 m!4689235))

(assert (=> b!4081655 m!4689235))

(declare-fun m!4689239 () Bool)

(assert (=> b!4081655 m!4689239))

(assert (=> b!4081651 m!4689215))

(assert (=> b!4081651 m!4689233))

(assert (=> b!4081651 m!4689233))

(assert (=> b!4081651 m!4689235))

(declare-fun m!4689241 () Bool)

(assert (=> b!4081652 m!4689241))

(assert (=> b!4081426 d!1212226))

(declare-fun d!1212228 () Bool)

(declare-fun lt!1460388 () Int)

(assert (=> d!1212228 (>= lt!1460388 0)))

(declare-fun e!2533332 () Int)

(assert (=> d!1212228 (= lt!1460388 e!2533332)))

(declare-fun c!703840 () Bool)

(assert (=> d!1212228 (= c!703840 (is-Nil!43727 p!2988))))

(assert (=> d!1212228 (= (size!32664 p!2988) lt!1460388)))

(declare-fun b!4081664 () Bool)

(assert (=> b!4081664 (= e!2533332 0)))

(declare-fun b!4081665 () Bool)

(assert (=> b!4081665 (= e!2533332 (+ 1 (size!32664 (t!337762 p!2988))))))

(assert (= (and d!1212228 c!703840) b!4081664))

(assert (= (and d!1212228 (not c!703840)) b!4081665))

(declare-fun m!4689243 () Bool)

(assert (=> b!4081665 m!4689243))

(assert (=> b!4081426 d!1212228))

(declare-fun d!1212230 () Bool)

(declare-fun fromListB!2407 (List!43851) BalanceConc!26130)

(assert (=> d!1212230 (= (seqFromList!5274 p!2988) (fromListB!2407 p!2988))))

(declare-fun bs!592924 () Bool)

(assert (= bs!592924 d!1212230))

(declare-fun m!4689245 () Bool)

(assert (=> bs!592924 m!4689245))

(assert (=> b!4081426 d!1212230))

(declare-fun b!4081699 () Bool)

(declare-fun e!2533345 () Bool)

(assert (=> b!4081699 (= e!2533345 true)))

(declare-fun d!1212232 () Bool)

(assert (=> d!1212232 e!2533345))

(assert (= d!1212232 b!4081699))

(declare-fun order!22889 () Int)

(declare-fun lambda!127792 () Int)

(declare-fun order!22887 () Int)

(declare-fun dynLambda!18618 (Int Int) Int)

(declare-fun dynLambda!18619 (Int Int) Int)

(assert (=> b!4081699 (< (dynLambda!18618 order!22887 (toValue!9629 (transformation!7057 r!4213))) (dynLambda!18619 order!22889 lambda!127792))))

(declare-fun order!22891 () Int)

(declare-fun dynLambda!18620 (Int Int) Int)

(assert (=> b!4081699 (< (dynLambda!18620 order!22891 (toChars!9488 (transformation!7057 r!4213))) (dynLambda!18619 order!22889 lambda!127792))))

(declare-fun dynLambda!18621 (Int TokenValue!7287) BalanceConc!26130)

(assert (=> d!1212232 (= (list!16247 (dynLambda!18621 (toChars!9488 (transformation!7057 r!4213)) (dynLambda!18617 (toValue!9629 (transformation!7057 r!4213)) lt!1460301))) (list!16247 lt!1460301))))

(declare-fun lt!1460401 () Unit!63262)

(declare-fun ForallOf!860 (Int BalanceConc!26130) Unit!63262)

(assert (=> d!1212232 (= lt!1460401 (ForallOf!860 lambda!127792 lt!1460301))))

(assert (=> d!1212232 (= (lemmaSemiInverse!2024 (transformation!7057 r!4213) lt!1460301) lt!1460401)))

(declare-fun b_lambda!119353 () Bool)

(assert (=> (not b_lambda!119353) (not d!1212232)))

(declare-fun tb!245141 () Bool)

(declare-fun t!337772 () Bool)

(assert (=> (and b!4081436 (= (toChars!9488 (transformation!7057 (h!49148 rules!3870))) (toChars!9488 (transformation!7057 r!4213))) t!337772) tb!245141))

(declare-fun tp!1235617 () Bool)

(declare-fun b!4081704 () Bool)

(declare-fun e!2533348 () Bool)

(declare-fun inv!58392 (Conc!13268) Bool)

(assert (=> b!4081704 (= e!2533348 (and (inv!58392 (c!703808 (dynLambda!18621 (toChars!9488 (transformation!7057 r!4213)) (dynLambda!18617 (toValue!9629 (transformation!7057 r!4213)) lt!1460301)))) tp!1235617))))

(declare-fun result!297336 () Bool)

(declare-fun inv!58393 (BalanceConc!26130) Bool)

(assert (=> tb!245141 (= result!297336 (and (inv!58393 (dynLambda!18621 (toChars!9488 (transformation!7057 r!4213)) (dynLambda!18617 (toValue!9629 (transformation!7057 r!4213)) lt!1460301))) e!2533348))))

(assert (= tb!245141 b!4081704))

(declare-fun m!4689283 () Bool)

(assert (=> b!4081704 m!4689283))

(declare-fun m!4689285 () Bool)

(assert (=> tb!245141 m!4689285))

(assert (=> d!1212232 t!337772))

(declare-fun b_and!314027 () Bool)

(assert (= b_and!314009 (and (=> t!337772 result!297336) b_and!314027)))

(declare-fun t!337774 () Bool)

(declare-fun tb!245143 () Bool)

(assert (=> (and b!4081423 (= (toChars!9488 (transformation!7057 r!4213)) (toChars!9488 (transformation!7057 r!4213))) t!337774) tb!245143))

(declare-fun result!297340 () Bool)

(assert (= result!297340 result!297336))

(assert (=> d!1212232 t!337774))

(declare-fun b_and!314029 () Bool)

(assert (= b_and!314013 (and (=> t!337774 result!297340) b_and!314029)))

(declare-fun b_lambda!119355 () Bool)

(assert (=> (not b_lambda!119355) (not d!1212232)))

(assert (=> d!1212232 t!337768))

(declare-fun b_and!314031 () Bool)

(assert (= b_and!314023 (and (=> t!337768 result!297330) b_and!314031)))

(assert (=> d!1212232 t!337770))

(declare-fun b_and!314033 () Bool)

(assert (= b_and!314025 (and (=> t!337770 result!297334) b_and!314033)))

(assert (=> d!1212232 m!4689211))

(assert (=> d!1212232 m!4689211))

(declare-fun m!4689287 () Bool)

(assert (=> d!1212232 m!4689287))

(assert (=> d!1212232 m!4689287))

(declare-fun m!4689289 () Bool)

(assert (=> d!1212232 m!4689289))

(declare-fun m!4689291 () Bool)

(assert (=> d!1212232 m!4689291))

(declare-fun m!4689293 () Bool)

(assert (=> d!1212232 m!4689293))

(assert (=> b!4081426 d!1212232))

(declare-fun d!1212240 () Bool)

(assert (=> d!1212240 (= (get!14342 lt!1460302) (v!39924 lt!1460302))))

(assert (=> b!4081435 d!1212240))

(declare-fun b!4081714 () Bool)

(declare-fun e!2533354 () List!43851)

(assert (=> b!4081714 (= e!2533354 (Cons!43727 (h!49147 p!2988) (++!11463 (t!337762 p!2988) suffix!1518)))))

(declare-fun e!2533353 () Bool)

(declare-fun b!4081716 () Bool)

(declare-fun lt!1460404 () List!43851)

(assert (=> b!4081716 (= e!2533353 (or (not (= suffix!1518 Nil!43727)) (= lt!1460404 p!2988)))))

(declare-fun b!4081715 () Bool)

(declare-fun res!1667714 () Bool)

(assert (=> b!4081715 (=> (not res!1667714) (not e!2533353))))

(assert (=> b!4081715 (= res!1667714 (= (size!32664 lt!1460404) (+ (size!32664 p!2988) (size!32664 suffix!1518))))))

(declare-fun b!4081713 () Bool)

(assert (=> b!4081713 (= e!2533354 suffix!1518)))

(declare-fun d!1212242 () Bool)

(assert (=> d!1212242 e!2533353))

(declare-fun res!1667715 () Bool)

(assert (=> d!1212242 (=> (not res!1667715) (not e!2533353))))

(declare-fun content!6705 (List!43851) (Set C!24110))

(assert (=> d!1212242 (= res!1667715 (= (content!6705 lt!1460404) (set.union (content!6705 p!2988) (content!6705 suffix!1518))))))

(assert (=> d!1212242 (= lt!1460404 e!2533354)))

(declare-fun c!703849 () Bool)

(assert (=> d!1212242 (= c!703849 (is-Nil!43727 p!2988))))

(assert (=> d!1212242 (= (++!11463 p!2988 suffix!1518) lt!1460404)))

(assert (= (and d!1212242 c!703849) b!4081713))

(assert (= (and d!1212242 (not c!703849)) b!4081714))

(assert (= (and d!1212242 res!1667715) b!4081715))

(assert (= (and b!4081715 res!1667714) b!4081716))

(declare-fun m!4689295 () Bool)

(assert (=> b!4081714 m!4689295))

(declare-fun m!4689297 () Bool)

(assert (=> b!4081715 m!4689297))

(assert (=> b!4081715 m!4689037))

(declare-fun m!4689299 () Bool)

(assert (=> b!4081715 m!4689299))

(declare-fun m!4689301 () Bool)

(assert (=> d!1212242 m!4689301))

(declare-fun m!4689303 () Bool)

(assert (=> d!1212242 m!4689303))

(declare-fun m!4689305 () Bool)

(assert (=> d!1212242 m!4689305))

(assert (=> b!4081440 d!1212242))

(declare-fun d!1212244 () Bool)

(assert (=> d!1212244 (= (inv!58387 (tag!7917 r!4213)) (= (mod (str.len (value!221777 (tag!7917 r!4213))) 2) 0))))

(assert (=> b!4081430 d!1212244))

(declare-fun d!1212246 () Bool)

(declare-fun res!1667718 () Bool)

(declare-fun e!2533357 () Bool)

(assert (=> d!1212246 (=> (not res!1667718) (not e!2533357))))

(declare-fun semiInverseModEq!3021 (Int Int) Bool)

(assert (=> d!1212246 (= res!1667718 (semiInverseModEq!3021 (toChars!9488 (transformation!7057 r!4213)) (toValue!9629 (transformation!7057 r!4213))))))

(assert (=> d!1212246 (= (inv!58390 (transformation!7057 r!4213)) e!2533357)))

(declare-fun b!4081719 () Bool)

(declare-fun equivClasses!2920 (Int Int) Bool)

(assert (=> b!4081719 (= e!2533357 (equivClasses!2920 (toChars!9488 (transformation!7057 r!4213)) (toValue!9629 (transformation!7057 r!4213))))))

(assert (= (and d!1212246 res!1667718) b!4081719))

(declare-fun m!4689307 () Bool)

(assert (=> d!1212246 m!4689307))

(declare-fun m!4689309 () Bool)

(assert (=> b!4081719 m!4689309))

(assert (=> b!4081430 d!1212246))

(declare-fun d!1212248 () Bool)

(assert (=> d!1212248 (= (inv!58387 (tag!7917 (h!49148 rules!3870))) (= (mod (str.len (value!221777 (tag!7917 (h!49148 rules!3870)))) 2) 0))))

(assert (=> b!4081439 d!1212248))

(declare-fun d!1212250 () Bool)

(declare-fun res!1667719 () Bool)

(declare-fun e!2533358 () Bool)

(assert (=> d!1212250 (=> (not res!1667719) (not e!2533358))))

(assert (=> d!1212250 (= res!1667719 (semiInverseModEq!3021 (toChars!9488 (transformation!7057 (h!49148 rules!3870))) (toValue!9629 (transformation!7057 (h!49148 rules!3870)))))))

(assert (=> d!1212250 (= (inv!58390 (transformation!7057 (h!49148 rules!3870))) e!2533358)))

(declare-fun b!4081720 () Bool)

(assert (=> b!4081720 (= e!2533358 (equivClasses!2920 (toChars!9488 (transformation!7057 (h!49148 rules!3870))) (toValue!9629 (transformation!7057 (h!49148 rules!3870)))))))

(assert (= (and d!1212250 res!1667719) b!4081720))

(declare-fun m!4689311 () Bool)

(assert (=> d!1212250 m!4689311))

(declare-fun m!4689313 () Bool)

(assert (=> b!4081720 m!4689313))

(assert (=> b!4081439 d!1212250))

(declare-fun d!1212252 () Bool)

(declare-fun res!1667720 () Bool)

(declare-fun e!2533359 () Bool)

(assert (=> d!1212252 (=> (not res!1667720) (not e!2533359))))

(assert (=> d!1212252 (= res!1667720 (rulesValid!2755 thiss!26199 rules!3870))))

(assert (=> d!1212252 (= (rulesInvariant!5989 thiss!26199 rules!3870) e!2533359)))

(declare-fun b!4081721 () Bool)

(assert (=> b!4081721 (= e!2533359 (noDuplicateTag!2756 thiss!26199 rules!3870 Nil!43732))))

(assert (= (and d!1212252 res!1667720) b!4081721))

(declare-fun m!4689315 () Bool)

(assert (=> d!1212252 m!4689315))

(declare-fun m!4689317 () Bool)

(assert (=> b!4081721 m!4689317))

(assert (=> b!4081429 d!1212252))

(declare-fun b!4081726 () Bool)

(declare-fun e!2533362 () Bool)

(declare-fun tp!1235620 () Bool)

(assert (=> b!4081726 (= e!2533362 (and tp_is_empty!20927 tp!1235620))))

(assert (=> b!4081433 (= tp!1235582 e!2533362)))

(assert (= (and b!4081433 (is-Cons!43727 (t!337762 input!3411))) b!4081726))

(declare-fun b!4081737 () Bool)

(declare-fun b_free!113937 () Bool)

(declare-fun b_next!114641 () Bool)

(assert (=> b!4081737 (= b_free!113937 (not b_next!114641))))

(declare-fun t!337776 () Bool)

(declare-fun tb!245145 () Bool)

(assert (=> (and b!4081737 (= (toValue!9629 (transformation!7057 (h!49148 (t!337763 rules!3870)))) (toValue!9629 (transformation!7057 r!4213))) t!337776) tb!245145))

(declare-fun result!297346 () Bool)

(assert (= result!297346 result!297330))

(assert (=> d!1212224 t!337776))

(assert (=> d!1212232 t!337776))

(declare-fun tp!1235629 () Bool)

(declare-fun b_and!314035 () Bool)

(assert (=> b!4081737 (= tp!1235629 (and (=> t!337776 result!297346) b_and!314035))))

(declare-fun b_free!113939 () Bool)

(declare-fun b_next!114643 () Bool)

(assert (=> b!4081737 (= b_free!113939 (not b_next!114643))))

(declare-fun t!337778 () Bool)

(declare-fun tb!245147 () Bool)

(assert (=> (and b!4081737 (= (toChars!9488 (transformation!7057 (h!49148 (t!337763 rules!3870)))) (toChars!9488 (transformation!7057 r!4213))) t!337778) tb!245147))

(declare-fun result!297348 () Bool)

(assert (= result!297348 result!297336))

(assert (=> d!1212232 t!337778))

(declare-fun b_and!314037 () Bool)

(declare-fun tp!1235630 () Bool)

(assert (=> b!4081737 (= tp!1235630 (and (=> t!337778 result!297348) b_and!314037))))

(declare-fun e!2533371 () Bool)

(assert (=> b!4081737 (= e!2533371 (and tp!1235629 tp!1235630))))

(declare-fun b!4081736 () Bool)

(declare-fun e!2533373 () Bool)

(declare-fun tp!1235632 () Bool)

(assert (=> b!4081736 (= e!2533373 (and tp!1235632 (inv!58387 (tag!7917 (h!49148 (t!337763 rules!3870)))) (inv!58390 (transformation!7057 (h!49148 (t!337763 rules!3870)))) e!2533371))))

(declare-fun b!4081735 () Bool)

(declare-fun e!2533372 () Bool)

(declare-fun tp!1235631 () Bool)

(assert (=> b!4081735 (= e!2533372 (and e!2533373 tp!1235631))))

(assert (=> b!4081424 (= tp!1235580 e!2533372)))

(assert (= b!4081736 b!4081737))

(assert (= b!4081735 b!4081736))

(assert (= (and b!4081424 (is-Cons!43728 (t!337763 rules!3870))) b!4081735))

(declare-fun m!4689319 () Bool)

(assert (=> b!4081736 m!4689319))

(declare-fun m!4689321 () Bool)

(assert (=> b!4081736 m!4689321))

(declare-fun b!4081738 () Bool)

(declare-fun e!2533375 () Bool)

(declare-fun tp!1235633 () Bool)

(assert (=> b!4081738 (= e!2533375 (and tp_is_empty!20927 tp!1235633))))

(assert (=> b!4081425 (= tp!1235579 e!2533375)))

(assert (= (and b!4081425 (is-Cons!43727 (t!337762 p!2988))) b!4081738))

(declare-fun e!2533378 () Bool)

(assert (=> b!4081430 (= tp!1235583 e!2533378)))

(declare-fun b!4081752 () Bool)

(declare-fun tp!1235647 () Bool)

(declare-fun tp!1235644 () Bool)

(assert (=> b!4081752 (= e!2533378 (and tp!1235647 tp!1235644))))

(declare-fun b!4081749 () Bool)

(assert (=> b!4081749 (= e!2533378 tp_is_empty!20927)))

(declare-fun b!4081751 () Bool)

(declare-fun tp!1235646 () Bool)

(assert (=> b!4081751 (= e!2533378 tp!1235646)))

(declare-fun b!4081750 () Bool)

(declare-fun tp!1235645 () Bool)

(declare-fun tp!1235648 () Bool)

(assert (=> b!4081750 (= e!2533378 (and tp!1235645 tp!1235648))))

(assert (= (and b!4081430 (is-ElementMatch!11962 (regex!7057 r!4213))) b!4081749))

(assert (= (and b!4081430 (is-Concat!19250 (regex!7057 r!4213))) b!4081750))

(assert (= (and b!4081430 (is-Star!11962 (regex!7057 r!4213))) b!4081751))

(assert (= (and b!4081430 (is-Union!11962 (regex!7057 r!4213))) b!4081752))

(declare-fun e!2533379 () Bool)

(assert (=> b!4081439 (= tp!1235581 e!2533379)))

(declare-fun b!4081756 () Bool)

(declare-fun tp!1235652 () Bool)

(declare-fun tp!1235649 () Bool)

(assert (=> b!4081756 (= e!2533379 (and tp!1235652 tp!1235649))))

(declare-fun b!4081753 () Bool)

(assert (=> b!4081753 (= e!2533379 tp_is_empty!20927)))

(declare-fun b!4081755 () Bool)

(declare-fun tp!1235651 () Bool)

(assert (=> b!4081755 (= e!2533379 tp!1235651)))

(declare-fun b!4081754 () Bool)

(declare-fun tp!1235650 () Bool)

(declare-fun tp!1235653 () Bool)

(assert (=> b!4081754 (= e!2533379 (and tp!1235650 tp!1235653))))

(assert (= (and b!4081439 (is-ElementMatch!11962 (regex!7057 (h!49148 rules!3870)))) b!4081753))

(assert (= (and b!4081439 (is-Concat!19250 (regex!7057 (h!49148 rules!3870)))) b!4081754))

(assert (= (and b!4081439 (is-Star!11962 (regex!7057 (h!49148 rules!3870)))) b!4081755))

(assert (= (and b!4081439 (is-Union!11962 (regex!7057 (h!49148 rules!3870)))) b!4081756))

(declare-fun b!4081757 () Bool)

(declare-fun e!2533380 () Bool)

(declare-fun tp!1235654 () Bool)

(assert (=> b!4081757 (= e!2533380 (and tp_is_empty!20927 tp!1235654))))

(assert (=> b!4081428 (= tp!1235578 e!2533380)))

(assert (= (and b!4081428 (is-Cons!43727 (t!337762 suffix!1518))) b!4081757))

(declare-fun b_lambda!119357 () Bool)

(assert (= b_lambda!119355 (or (and b!4081436 b_free!113921 (= (toValue!9629 (transformation!7057 (h!49148 rules!3870))) (toValue!9629 (transformation!7057 r!4213)))) (and b!4081423 b_free!113925) (and b!4081737 b_free!113937 (= (toValue!9629 (transformation!7057 (h!49148 (t!337763 rules!3870)))) (toValue!9629 (transformation!7057 r!4213)))) b_lambda!119357)))

(declare-fun b_lambda!119359 () Bool)

(assert (= b_lambda!119353 (or (and b!4081436 b_free!113923 (= (toChars!9488 (transformation!7057 (h!49148 rules!3870))) (toChars!9488 (transformation!7057 r!4213)))) (and b!4081423 b_free!113927) (and b!4081737 b_free!113939 (= (toChars!9488 (transformation!7057 (h!49148 (t!337763 rules!3870)))) (toChars!9488 (transformation!7057 r!4213)))) b_lambda!119359)))

(declare-fun b_lambda!119361 () Bool)

(assert (= b_lambda!119351 (or (and b!4081436 b_free!113921 (= (toValue!9629 (transformation!7057 (h!49148 rules!3870))) (toValue!9629 (transformation!7057 r!4213)))) (and b!4081423 b_free!113925) (and b!4081737 b_free!113937 (= (toValue!9629 (transformation!7057 (h!49148 (t!337763 rules!3870)))) (toValue!9629 (transformation!7057 r!4213)))) b_lambda!119361)))

(push 1)

(assert (not b_next!114625))

(assert (not b!4081721))

(assert (not b_next!114643))

(assert b_and!314035)

(assert b_and!314031)

(assert tp_is_empty!20927)

(assert (not b_lambda!119361))

(assert (not d!1212232))

(assert (not tb!245137))

(assert (not b!4081548))

(assert (not b!4081735))

(assert (not d!1212222))

(assert (not b!4081665))

(assert b_and!314027)

(assert (not b!4081715))

(assert (not b!4081752))

(assert (not d!1212200))

(assert (not b_lambda!119357))

(assert (not b!4081648))

(assert (not b!4081720))

(assert (not b!4081621))

(assert (not b!4081541))

(assert (not d!1212252))

(assert (not d!1212250))

(assert (not b!4081617))

(assert (not b!4081756))

(assert (not d!1212246))

(assert (not d!1212220))

(assert (not tb!245141))

(assert (not b_next!114631))

(assert (not b!4081757))

(assert (not b!4081622))

(assert b_and!314037)

(assert (not b!4081652))

(assert (not b!4081738))

(assert (not b!4081523))

(assert (not b!4081726))

(assert (not b_next!114641))

(assert (not b!4081650))

(assert (not d!1212196))

(assert (not b!4081754))

(assert (not b!4081755))

(assert (not bm!288682))

(assert (not b!4081653))

(assert (not b!4081623))

(assert (not d!1212242))

(assert (not b!4081524))

(assert (not b!4081647))

(assert (not d!1212230))

(assert (not b!4081751))

(assert (not b!4081626))

(assert (not d!1212212))

(assert (not b!4081534))

(assert (not b_next!114627))

(assert (not b!4081536))

(assert (not b!4081651))

(assert (not b_next!114629))

(assert (not b!4081535))

(assert (not b!4081618))

(assert (not d!1212206))

(assert (not b!4081736))

(assert (not b!4081619))

(assert (not bm!288688))

(assert (not b!4081750))

(assert (not b!4081616))

(assert (not b!4081530))

(assert (not d!1212226))

(assert (not b!4081719))

(assert (not b!4081704))

(assert (not b!4081615))

(assert b_and!314033)

(assert (not b_lambda!119359))

(assert b_and!314029)

(assert (not b!4081655))

(assert (not b!4081714))

(assert (not d!1212198))

(assert (not b!4081654))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!114625))

(assert b_and!314027)

(assert (not b_next!114631))

(assert b_and!314037)

(assert (not b_next!114641))

(assert (not b_next!114643))

(assert (not b_next!114627))

(assert (not b_next!114629))

(assert b_and!314035)

(assert b_and!314031)

(assert b_and!314033)

(assert b_and!314029)

(check-sat)

(pop 1)

