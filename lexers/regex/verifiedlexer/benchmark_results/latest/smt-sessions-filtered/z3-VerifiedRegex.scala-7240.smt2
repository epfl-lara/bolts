; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!385580 () Bool)

(assert start!385580)

(declare-fun b!4080792 () Bool)

(declare-fun b_free!113873 () Bool)

(declare-fun b_next!114577 () Bool)

(assert (=> b!4080792 (= b_free!113873 (not b_next!114577))))

(declare-fun tp!1235347 () Bool)

(declare-fun b_and!313935 () Bool)

(assert (=> b!4080792 (= tp!1235347 b_and!313935)))

(declare-fun b_free!113875 () Bool)

(declare-fun b_next!114579 () Bool)

(assert (=> b!4080792 (= b_free!113875 (not b_next!114579))))

(declare-fun tp!1235352 () Bool)

(declare-fun b_and!313937 () Bool)

(assert (=> b!4080792 (= tp!1235352 b_and!313937)))

(declare-fun b!4080800 () Bool)

(declare-fun b_free!113877 () Bool)

(declare-fun b_next!114581 () Bool)

(assert (=> b!4080800 (= b_free!113877 (not b_next!114581))))

(declare-fun tp!1235349 () Bool)

(declare-fun b_and!313939 () Bool)

(assert (=> b!4080800 (= tp!1235349 b_and!313939)))

(declare-fun b_free!113879 () Bool)

(declare-fun b_next!114583 () Bool)

(assert (=> b!4080800 (= b_free!113879 (not b_next!114583))))

(declare-fun tp!1235348 () Bool)

(declare-fun b_and!313941 () Bool)

(assert (=> b!4080800 (= tp!1235348 b_and!313941)))

(declare-fun e!2532798 () Bool)

(declare-fun tp!1235351 () Bool)

(declare-fun b!4080787 () Bool)

(declare-datatypes ((List!43833 0))(
  ( (Nil!43709) (Cons!43709 (h!49129 (_ BitVec 16)) (t!337720 List!43833)) )
))
(declare-datatypes ((TokenValue!7282 0))(
  ( (FloatLiteralValue!14564 (text!51419 List!43833)) (TokenValueExt!7281 (__x!26781 Int)) (Broken!36410 (value!221608 List!43833)) (Object!7405) (End!7282) (Def!7282) (Underscore!7282) (Match!7282) (Else!7282) (Error!7282) (Case!7282) (If!7282) (Extends!7282) (Abstract!7282) (Class!7282) (Val!7282) (DelimiterValue!14564 (del!7342 List!43833)) (KeywordValue!7288 (value!221609 List!43833)) (CommentValue!14564 (value!221610 List!43833)) (WhitespaceValue!14564 (value!221611 List!43833)) (IndentationValue!7282 (value!221612 List!43833)) (String!50159) (Int32!7282) (Broken!36411 (value!221613 List!43833)) (Boolean!7283) (Unit!63246) (OperatorValue!7285 (op!7342 List!43833)) (IdentifierValue!14564 (value!221614 List!43833)) (IdentifierValue!14565 (value!221615 List!43833)) (WhitespaceValue!14565 (value!221616 List!43833)) (True!14564) (False!14564) (Broken!36412 (value!221617 List!43833)) (Broken!36413 (value!221618 List!43833)) (True!14565) (RightBrace!7282) (RightBracket!7282) (Colon!7282) (Null!7282) (Comma!7282) (LeftBracket!7282) (False!14565) (LeftBrace!7282) (ImaginaryLiteralValue!7282 (text!51420 List!43833)) (StringLiteralValue!21846 (value!221619 List!43833)) (EOFValue!7282 (value!221620 List!43833)) (IdentValue!7282 (value!221621 List!43833)) (DelimiterValue!14565 (value!221622 List!43833)) (DedentValue!7282 (value!221623 List!43833)) (NewLineValue!7282 (value!221624 List!43833)) (IntegerValue!21846 (value!221625 (_ BitVec 32)) (text!51421 List!43833)) (IntegerValue!21847 (value!221626 Int) (text!51422 List!43833)) (Times!7282) (Or!7282) (Equal!7282) (Minus!7282) (Broken!36414 (value!221627 List!43833)) (And!7282) (Div!7282) (LessEqual!7282) (Mod!7282) (Concat!19239) (Not!7282) (Plus!7282) (SpaceValue!7282 (value!221628 List!43833)) (IntegerValue!21848 (value!221629 Int) (text!51423 List!43833)) (StringLiteralValue!21847 (text!51424 List!43833)) (FloatLiteralValue!14565 (text!51425 List!43833)) (BytesLiteralValue!7282 (value!221630 List!43833)) (CommentValue!14565 (value!221631 List!43833)) (StringLiteralValue!21848 (value!221632 List!43833)) (ErrorTokenValue!7282 (msg!7343 List!43833)) )
))
(declare-datatypes ((C!24100 0))(
  ( (C!24101 (val!14160 Int)) )
))
(declare-datatypes ((Regex!11957 0))(
  ( (ElementMatch!11957 (c!703748 C!24100)) (Concat!19240 (regOne!24426 Regex!11957) (regTwo!24426 Regex!11957)) (EmptyExpr!11957) (Star!11957 (reg!12286 Regex!11957)) (EmptyLang!11957) (Union!11957 (regOne!24427 Regex!11957) (regTwo!24427 Regex!11957)) )
))
(declare-datatypes ((String!50160 0))(
  ( (String!50161 (value!221633 String)) )
))
(declare-datatypes ((List!43834 0))(
  ( (Nil!43710) (Cons!43710 (h!49130 C!24100) (t!337721 List!43834)) )
))
(declare-datatypes ((IArray!26531 0))(
  ( (IArray!26532 (innerList!13323 List!43834)) )
))
(declare-datatypes ((Conc!13263 0))(
  ( (Node!13263 (left!32851 Conc!13263) (right!33181 Conc!13263) (csize!26756 Int) (cheight!13474 Int)) (Leaf!20504 (xs!16569 IArray!26531) (csize!26757 Int)) (Empty!13263) )
))
(declare-datatypes ((BalanceConc!26120 0))(
  ( (BalanceConc!26121 (c!703749 Conc!13263)) )
))
(declare-datatypes ((TokenValueInjection!13992 0))(
  ( (TokenValueInjection!13993 (toValue!9624 Int) (toChars!9483 Int)) )
))
(declare-datatypes ((Rule!13904 0))(
  ( (Rule!13905 (regex!7052 Regex!11957) (tag!7912 String!50160) (isSeparator!7052 Bool) (transformation!7052 TokenValueInjection!13992)) )
))
(declare-fun r!4213 () Rule!13904)

(declare-fun e!2532790 () Bool)

(declare-fun inv!58370 (String!50160) Bool)

(declare-fun inv!58372 (TokenValueInjection!13992) Bool)

(assert (=> b!4080787 (= e!2532798 (and tp!1235351 (inv!58370 (tag!7912 r!4213)) (inv!58372 (transformation!7052 r!4213)) e!2532790))))

(declare-fun b!4080788 () Bool)

(declare-fun res!1667197 () Bool)

(declare-fun e!2532788 () Bool)

(assert (=> b!4080788 (=> (not res!1667197) (not e!2532788))))

(declare-datatypes ((List!43835 0))(
  ( (Nil!43711) (Cons!43711 (h!49131 Rule!13904) (t!337722 List!43835)) )
))
(declare-fun rules!3870 () List!43835)

(declare-fun isEmpty!26119 (List!43835) Bool)

(assert (=> b!4080788 (= res!1667197 (not (isEmpty!26119 rules!3870)))))

(declare-fun b!4080789 () Bool)

(declare-fun res!1667199 () Bool)

(assert (=> b!4080789 (=> (not res!1667199) (not e!2532788))))

(declare-fun suffix!1518 () List!43834)

(declare-fun p!2988 () List!43834)

(declare-fun input!3411 () List!43834)

(declare-fun ++!11458 (List!43834 List!43834) List!43834)

(assert (=> b!4080789 (= res!1667199 (= input!3411 (++!11458 p!2988 suffix!1518)))))

(declare-fun b!4080790 () Bool)

(declare-fun res!1667192 () Bool)

(declare-fun e!2532789 () Bool)

(assert (=> b!4080790 (=> res!1667192 e!2532789)))

(get-info :version)

(assert (=> b!4080790 (= res!1667192 (or (not ((_ is Cons!43711) rules!3870)) (not (= (h!49131 rules!3870) r!4213))))))

(declare-fun b!4080791 () Bool)

(declare-fun e!2532785 () Bool)

(declare-datatypes ((Token!13230 0))(
  ( (Token!13231 (value!221634 TokenValue!7282) (rule!10170 Rule!13904) (size!32651 Int) (originalCharacters!7646 List!43834)) )
))
(declare-datatypes ((tuple2!42674 0))(
  ( (tuple2!42675 (_1!24471 Token!13230) (_2!24471 List!43834)) )
))
(declare-datatypes ((Option!9460 0))(
  ( (None!9459) (Some!9459 (v!39917 tuple2!42674)) )
))
(declare-fun lt!1460112 () Option!9460)

(declare-fun get!14334 (Option!9460) tuple2!42674)

(assert (=> b!4080791 (= e!2532785 (not (= (rule!10170 (_1!24471 (get!14334 lt!1460112))) (h!49131 rules!3870))))))

(declare-fun e!2532795 () Bool)

(assert (=> b!4080792 (= e!2532795 (and tp!1235347 tp!1235352))))

(declare-fun b!4080793 () Bool)

(declare-fun res!1667194 () Bool)

(assert (=> b!4080793 (=> (not res!1667194) (not e!2532788))))

(declare-fun isEmpty!26120 (List!43834) Bool)

(assert (=> b!4080793 (= res!1667194 (not (isEmpty!26120 p!2988)))))

(declare-fun b!4080794 () Bool)

(declare-fun res!1667190 () Bool)

(assert (=> b!4080794 (=> (not res!1667190) (not e!2532788))))

(declare-datatypes ((LexerInterface!6641 0))(
  ( (LexerInterfaceExt!6638 (__x!26782 Int)) (Lexer!6639) )
))
(declare-fun thiss!26199 () LexerInterface!6641)

(declare-fun rulesInvariant!5984 (LexerInterface!6641 List!43835) Bool)

(assert (=> b!4080794 (= res!1667190 (rulesInvariant!5984 thiss!26199 rules!3870))))

(declare-fun res!1667189 () Bool)

(assert (=> start!385580 (=> (not res!1667189) (not e!2532788))))

(assert (=> start!385580 (= res!1667189 ((_ is Lexer!6639) thiss!26199))))

(assert (=> start!385580 e!2532788))

(assert (=> start!385580 true))

(declare-fun e!2532787 () Bool)

(assert (=> start!385580 e!2532787))

(declare-fun e!2532794 () Bool)

(assert (=> start!385580 e!2532794))

(declare-fun e!2532793 () Bool)

(assert (=> start!385580 e!2532793))

(declare-fun e!2532797 () Bool)

(assert (=> start!385580 e!2532797))

(assert (=> start!385580 e!2532798))

(declare-fun b!4080795 () Bool)

(declare-fun e!2532796 () Bool)

(declare-fun tp!1235354 () Bool)

(assert (=> b!4080795 (= e!2532794 (and e!2532796 tp!1235354))))

(declare-fun b!4080796 () Bool)

(declare-fun e!2532783 () Bool)

(assert (=> b!4080796 (= e!2532789 e!2532783)))

(declare-fun res!1667196 () Bool)

(assert (=> b!4080796 (=> res!1667196 e!2532783)))

(assert (=> b!4080796 (= res!1667196 (isEmpty!26119 (t!337722 rules!3870)))))

(assert (=> b!4080796 (rulesInvariant!5984 thiss!26199 (t!337722 rules!3870))))

(declare-datatypes ((Unit!63247 0))(
  ( (Unit!63248) )
))
(declare-fun lt!1460115 () Unit!63247)

(declare-fun lemmaInvariantOnRulesThenOnTail!768 (LexerInterface!6641 Rule!13904 List!43835) Unit!63247)

(assert (=> b!4080796 (= lt!1460115 (lemmaInvariantOnRulesThenOnTail!768 thiss!26199 (h!49131 rules!3870) (t!337722 rules!3870)))))

(declare-fun b!4080797 () Bool)

(declare-fun e!2532784 () Bool)

(assert (=> b!4080797 (= e!2532788 e!2532784)))

(declare-fun res!1667191 () Bool)

(assert (=> b!4080797 (=> (not res!1667191) (not e!2532784))))

(declare-fun lt!1460113 () BalanceConc!26120)

(declare-fun maxPrefix!3933 (LexerInterface!6641 List!43835 List!43834) Option!9460)

(declare-fun apply!10235 (TokenValueInjection!13992 BalanceConc!26120) TokenValue!7282)

(declare-fun size!32652 (List!43834) Int)

(assert (=> b!4080797 (= res!1667191 (= (maxPrefix!3933 thiss!26199 rules!3870 input!3411) (Some!9459 (tuple2!42675 (Token!13231 (apply!10235 (transformation!7052 r!4213) lt!1460113) r!4213 (size!32652 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1460117 () Unit!63247)

(declare-fun lemmaSemiInverse!2019 (TokenValueInjection!13992 BalanceConc!26120) Unit!63247)

(assert (=> b!4080797 (= lt!1460117 (lemmaSemiInverse!2019 (transformation!7052 r!4213) lt!1460113))))

(declare-fun seqFromList!5269 (List!43834) BalanceConc!26120)

(assert (=> b!4080797 (= lt!1460113 (seqFromList!5269 p!2988))))

(declare-fun tp!1235350 () Bool)

(declare-fun b!4080798 () Bool)

(assert (=> b!4080798 (= e!2532796 (and tp!1235350 (inv!58370 (tag!7912 (h!49131 rules!3870))) (inv!58372 (transformation!7052 (h!49131 rules!3870))) e!2532795))))

(declare-fun b!4080799 () Bool)

(declare-fun tp_is_empty!20917 () Bool)

(declare-fun tp!1235346 () Bool)

(assert (=> b!4080799 (= e!2532787 (and tp_is_empty!20917 tp!1235346))))

(assert (=> b!4080800 (= e!2532790 (and tp!1235349 tp!1235348))))

(declare-fun b!4080801 () Bool)

(declare-fun tp!1235345 () Bool)

(assert (=> b!4080801 (= e!2532797 (and tp_is_empty!20917 tp!1235345))))

(declare-fun b!4080802 () Bool)

(declare-fun e!2532786 () Bool)

(assert (=> b!4080802 (= e!2532786 (not (= (rule!10170 (_1!24471 (get!14334 lt!1460112))) r!4213)))))

(declare-fun b!4080803 () Bool)

(assert (=> b!4080803 (= e!2532784 (not e!2532789))))

(declare-fun res!1667195 () Bool)

(assert (=> b!4080803 (=> res!1667195 e!2532789)))

(declare-fun matchR!5902 (Regex!11957 List!43834) Bool)

(assert (=> b!4080803 (= res!1667195 (not (matchR!5902 (regex!7052 r!4213) p!2988)))))

(declare-fun ruleValid!2976 (LexerInterface!6641 Rule!13904) Bool)

(assert (=> b!4080803 (ruleValid!2976 thiss!26199 r!4213)))

(declare-fun lt!1460114 () Unit!63247)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2044 (LexerInterface!6641 Rule!13904 List!43835) Unit!63247)

(assert (=> b!4080803 (= lt!1460114 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2044 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4080804 () Bool)

(declare-fun tp!1235353 () Bool)

(assert (=> b!4080804 (= e!2532793 (and tp_is_empty!20917 tp!1235353))))

(declare-fun b!4080805 () Bool)

(assert (=> b!4080805 (= e!2532783 e!2532786)))

(declare-fun res!1667198 () Bool)

(assert (=> b!4080805 (=> res!1667198 e!2532786)))

(declare-fun lt!1460116 () Bool)

(assert (=> b!4080805 (= res!1667198 lt!1460116)))

(assert (=> b!4080805 e!2532785))

(declare-fun res!1667193 () Bool)

(assert (=> b!4080805 (=> res!1667193 e!2532785)))

(assert (=> b!4080805 (= res!1667193 lt!1460116)))

(declare-fun isEmpty!26121 (Option!9460) Bool)

(assert (=> b!4080805 (= lt!1460116 (isEmpty!26121 lt!1460112))))

(assert (=> b!4080805 (= lt!1460112 (maxPrefix!3933 thiss!26199 (t!337722 rules!3870) input!3411))))

(declare-fun lt!1460111 () Unit!63247)

(declare-fun lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!16 (LexerInterface!6641 Rule!13904 List!43835 List!43834) Unit!63247)

(assert (=> b!4080805 (= lt!1460111 (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!16 thiss!26199 (h!49131 rules!3870) (t!337722 rules!3870) input!3411))))

(declare-fun b!4080806 () Bool)

(declare-fun res!1667188 () Bool)

(assert (=> b!4080806 (=> (not res!1667188) (not e!2532788))))

(declare-fun contains!8723 (List!43835 Rule!13904) Bool)

(assert (=> b!4080806 (= res!1667188 (contains!8723 rules!3870 r!4213))))

(assert (= (and start!385580 res!1667189) b!4080788))

(assert (= (and b!4080788 res!1667197) b!4080794))

(assert (= (and b!4080794 res!1667190) b!4080806))

(assert (= (and b!4080806 res!1667188) b!4080789))

(assert (= (and b!4080789 res!1667199) b!4080793))

(assert (= (and b!4080793 res!1667194) b!4080797))

(assert (= (and b!4080797 res!1667191) b!4080803))

(assert (= (and b!4080803 (not res!1667195)) b!4080790))

(assert (= (and b!4080790 (not res!1667192)) b!4080796))

(assert (= (and b!4080796 (not res!1667196)) b!4080805))

(assert (= (and b!4080805 (not res!1667193)) b!4080791))

(assert (= (and b!4080805 (not res!1667198)) b!4080802))

(assert (= (and start!385580 ((_ is Cons!43710) suffix!1518)) b!4080799))

(assert (= b!4080798 b!4080792))

(assert (= b!4080795 b!4080798))

(assert (= (and start!385580 ((_ is Cons!43711) rules!3870)) b!4080795))

(assert (= (and start!385580 ((_ is Cons!43710) p!2988)) b!4080804))

(assert (= (and start!385580 ((_ is Cons!43710) input!3411)) b!4080801))

(assert (= b!4080787 b!4080800))

(assert (= start!385580 b!4080787))

(declare-fun m!4688497 () Bool)

(assert (=> b!4080796 m!4688497))

(declare-fun m!4688499 () Bool)

(assert (=> b!4080796 m!4688499))

(declare-fun m!4688501 () Bool)

(assert (=> b!4080796 m!4688501))

(declare-fun m!4688503 () Bool)

(assert (=> b!4080802 m!4688503))

(declare-fun m!4688505 () Bool)

(assert (=> b!4080787 m!4688505))

(declare-fun m!4688507 () Bool)

(assert (=> b!4080787 m!4688507))

(declare-fun m!4688509 () Bool)

(assert (=> b!4080793 m!4688509))

(declare-fun m!4688511 () Bool)

(assert (=> b!4080794 m!4688511))

(declare-fun m!4688513 () Bool)

(assert (=> b!4080797 m!4688513))

(declare-fun m!4688515 () Bool)

(assert (=> b!4080797 m!4688515))

(declare-fun m!4688517 () Bool)

(assert (=> b!4080797 m!4688517))

(declare-fun m!4688519 () Bool)

(assert (=> b!4080797 m!4688519))

(declare-fun m!4688521 () Bool)

(assert (=> b!4080797 m!4688521))

(declare-fun m!4688523 () Bool)

(assert (=> b!4080805 m!4688523))

(declare-fun m!4688525 () Bool)

(assert (=> b!4080805 m!4688525))

(declare-fun m!4688527 () Bool)

(assert (=> b!4080805 m!4688527))

(declare-fun m!4688529 () Bool)

(assert (=> b!4080806 m!4688529))

(assert (=> b!4080791 m!4688503))

(declare-fun m!4688531 () Bool)

(assert (=> b!4080798 m!4688531))

(declare-fun m!4688533 () Bool)

(assert (=> b!4080798 m!4688533))

(declare-fun m!4688535 () Bool)

(assert (=> b!4080788 m!4688535))

(declare-fun m!4688537 () Bool)

(assert (=> b!4080803 m!4688537))

(declare-fun m!4688539 () Bool)

(assert (=> b!4080803 m!4688539))

(declare-fun m!4688541 () Bool)

(assert (=> b!4080803 m!4688541))

(declare-fun m!4688543 () Bool)

(assert (=> b!4080789 m!4688543))

(check-sat (not b!4080803) (not b!4080801) (not b!4080791) tp_is_empty!20917 (not b!4080797) (not b!4080796) (not b!4080787) (not b_next!114581) (not b_next!114577) b_and!313935 (not b!4080799) (not b_next!114583) (not b_next!114579) (not b!4080788) (not b!4080795) b_and!313941 (not b!4080793) (not b!4080802) (not b!4080789) (not b!4080805) (not b!4080804) (not b!4080794) (not b!4080806) b_and!313939 (not b!4080798) b_and!313937)
(check-sat b_and!313941 (not b_next!114581) (not b_next!114577) b_and!313935 b_and!313939 b_and!313937 (not b_next!114583) (not b_next!114579))
