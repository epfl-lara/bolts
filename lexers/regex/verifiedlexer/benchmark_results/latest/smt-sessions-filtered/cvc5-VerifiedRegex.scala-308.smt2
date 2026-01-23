; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!9116 () Bool)

(assert start!9116)

(declare-fun b!98113 () Bool)

(declare-fun b_free!2933 () Bool)

(declare-fun b_next!2933 () Bool)

(assert (=> b!98113 (= b_free!2933 (not b_next!2933))))

(declare-fun tp!56417 () Bool)

(declare-fun b_and!4399 () Bool)

(assert (=> b!98113 (= tp!56417 b_and!4399)))

(declare-fun b_free!2935 () Bool)

(declare-fun b_next!2935 () Bool)

(assert (=> b!98113 (= b_free!2935 (not b_next!2935))))

(declare-fun tp!56418 () Bool)

(declare-fun b_and!4401 () Bool)

(assert (=> b!98113 (= tp!56418 b_and!4401)))

(declare-fun e!54366 () Bool)

(assert (=> b!98113 (= e!54366 (and tp!56417 tp!56418))))

(declare-fun b!98114 () Bool)

(declare-fun e!54359 () Bool)

(declare-fun e!54363 () Bool)

(declare-fun tp!56421 () Bool)

(assert (=> b!98114 (= e!54359 (and e!54363 tp!56421))))

(declare-fun b!98115 () Bool)

(declare-fun res!47693 () Bool)

(declare-fun e!54365 () Bool)

(assert (=> b!98115 (=> (not res!47693) (not e!54365))))

(declare-datatypes ((LexerInterface!238 0))(
  ( (LexerInterfaceExt!235 (__x!1767 Int)) (Lexer!236) )
))
(declare-fun thiss!19403 () LexerInterface!238)

(declare-datatypes ((String!2073 0))(
  ( (String!2074 (value!12730 String)) )
))
(declare-datatypes ((C!1750 0))(
  ( (C!1751 (val!482 Int)) )
))
(declare-datatypes ((List!1592 0))(
  ( (Nil!1586) (Cons!1586 (h!6983 C!1750) (t!21119 List!1592)) )
))
(declare-datatypes ((IArray!985 0))(
  ( (IArray!986 (innerList!550 List!1592)) )
))
(declare-datatypes ((Conc!492 0))(
  ( (Node!492 (left!1210 Conc!492) (right!1540 Conc!492) (csize!1214 Int) (cheight!703 Int)) (Leaf!801 (xs!3079 IArray!985) (csize!1215 Int)) (Empty!492) )
))
(declare-datatypes ((BalanceConc!988 0))(
  ( (BalanceConc!989 (c!24032 Conc!492)) )
))
(declare-datatypes ((Regex!414 0))(
  ( (ElementMatch!414 (c!24033 C!1750)) (Concat!750 (regOne!1340 Regex!414) (regTwo!1340 Regex!414)) (EmptyExpr!414) (Star!414 (reg!743 Regex!414)) (EmptyLang!414) (Union!414 (regOne!1341 Regex!414) (regTwo!1341 Regex!414)) )
))
(declare-datatypes ((List!1593 0))(
  ( (Nil!1587) (Cons!1587 (h!6984 (_ BitVec 16)) (t!21120 List!1593)) )
))
(declare-datatypes ((TokenValue!336 0))(
  ( (FloatLiteralValue!672 (text!2797 List!1593)) (TokenValueExt!335 (__x!1768 Int)) (Broken!1680 (value!12731 List!1593)) (Object!341) (End!336) (Def!336) (Underscore!336) (Match!336) (Else!336) (Error!336) (Case!336) (If!336) (Extends!336) (Abstract!336) (Class!336) (Val!336) (DelimiterValue!672 (del!396 List!1593)) (KeywordValue!342 (value!12732 List!1593)) (CommentValue!672 (value!12733 List!1593)) (WhitespaceValue!672 (value!12734 List!1593)) (IndentationValue!336 (value!12735 List!1593)) (String!2075) (Int32!336) (Broken!1681 (value!12736 List!1593)) (Boolean!337) (Unit!1044) (OperatorValue!339 (op!396 List!1593)) (IdentifierValue!672 (value!12737 List!1593)) (IdentifierValue!673 (value!12738 List!1593)) (WhitespaceValue!673 (value!12739 List!1593)) (True!672) (False!672) (Broken!1682 (value!12740 List!1593)) (Broken!1683 (value!12741 List!1593)) (True!673) (RightBrace!336) (RightBracket!336) (Colon!336) (Null!336) (Comma!336) (LeftBracket!336) (False!673) (LeftBrace!336) (ImaginaryLiteralValue!336 (text!2798 List!1593)) (StringLiteralValue!1008 (value!12742 List!1593)) (EOFValue!336 (value!12743 List!1593)) (IdentValue!336 (value!12744 List!1593)) (DelimiterValue!673 (value!12745 List!1593)) (DedentValue!336 (value!12746 List!1593)) (NewLineValue!336 (value!12747 List!1593)) (IntegerValue!1008 (value!12748 (_ BitVec 32)) (text!2799 List!1593)) (IntegerValue!1009 (value!12749 Int) (text!2800 List!1593)) (Times!336) (Or!336) (Equal!336) (Minus!336) (Broken!1684 (value!12750 List!1593)) (And!336) (Div!336) (LessEqual!336) (Mod!336) (Concat!751) (Not!336) (Plus!336) (SpaceValue!336 (value!12751 List!1593)) (IntegerValue!1010 (value!12752 Int) (text!2801 List!1593)) (StringLiteralValue!1009 (text!2802 List!1593)) (FloatLiteralValue!673 (text!2803 List!1593)) (BytesLiteralValue!336 (value!12753 List!1593)) (CommentValue!673 (value!12754 List!1593)) (StringLiteralValue!1010 (value!12755 List!1593)) (ErrorTokenValue!336 (msg!397 List!1593)) )
))
(declare-datatypes ((TokenValueInjection!496 0))(
  ( (TokenValueInjection!497 (toValue!901 Int) (toChars!760 Int)) )
))
(declare-datatypes ((Rule!492 0))(
  ( (Rule!493 (regex!346 Regex!414) (tag!524 String!2073) (isSeparator!346 Bool) (transformation!346 TokenValueInjection!496)) )
))
(declare-datatypes ((List!1594 0))(
  ( (Nil!1588) (Cons!1588 (h!6985 Rule!492) (t!21121 List!1594)) )
))
(declare-fun rules!2471 () List!1594)

(declare-fun rulesInvariant!232 (LexerInterface!238 List!1594) Bool)

(assert (=> b!98115 (= res!47693 (rulesInvariant!232 thiss!19403 rules!2471))))

(declare-fun b!98116 () Bool)

(declare-fun res!47689 () Bool)

(assert (=> b!98116 (=> (not res!47689) (not e!54365))))

(declare-fun isEmpty!675 (List!1594) Bool)

(assert (=> b!98116 (= res!47689 (not (isEmpty!675 rules!2471)))))

(declare-fun b!98117 () Bool)

(declare-fun e!54360 () Bool)

(declare-fun e!54364 () Bool)

(assert (=> b!98117 (= e!54360 e!54364)))

(declare-fun res!47690 () Bool)

(assert (=> b!98117 (=> (not res!47690) (not e!54364))))

(declare-fun lt!26221 () Bool)

(declare-datatypes ((Token!448 0))(
  ( (Token!449 (value!12756 TokenValue!336) (rule!847 Rule!492) (size!1399 Int) (originalCharacters!395 List!1592)) )
))
(declare-datatypes ((List!1595 0))(
  ( (Nil!1589) (Cons!1589 (h!6986 Token!448) (t!21122 List!1595)) )
))
(declare-fun lt!26223 () List!1595)

(assert (=> b!98117 (= res!47690 (and (or lt!26221 (not (is-Nil!1589 (t!21122 lt!26223)))) (not lt!26221)))))

(assert (=> b!98117 (= lt!26221 (not (is-Cons!1589 lt!26223)))))

(declare-datatypes ((IArray!987 0))(
  ( (IArray!988 (innerList!551 List!1595)) )
))
(declare-datatypes ((Conc!493 0))(
  ( (Node!493 (left!1211 Conc!493) (right!1541 Conc!493) (csize!1216 Int) (cheight!704 Int)) (Leaf!802 (xs!3080 IArray!987) (csize!1217 Int)) (Empty!493) )
))
(declare-datatypes ((BalanceConc!990 0))(
  ( (BalanceConc!991 (c!24034 Conc!493)) )
))
(declare-datatypes ((tuple2!1712 0))(
  ( (tuple2!1713 (_1!1063 BalanceConc!990) (_2!1063 BalanceConc!988)) )
))
(declare-fun lt!26224 () tuple2!1712)

(declare-fun list!626 (BalanceConc!990) List!1595)

(assert (=> b!98117 (= lt!26223 (list!626 (_1!1063 lt!26224)))))

(declare-fun b!98118 () Bool)

(declare-fun tp!56420 () Bool)

(declare-fun inv!1927 (String!2073) Bool)

(declare-fun inv!1930 (TokenValueInjection!496) Bool)

(assert (=> b!98118 (= e!54363 (and tp!56420 (inv!1927 (tag!524 (h!6985 rules!2471))) (inv!1930 (transformation!346 (h!6985 rules!2471))) e!54366))))

(declare-fun b!98119 () Bool)

(declare-fun e!54362 () Bool)

(declare-fun tp_is_empty!751 () Bool)

(declare-fun tp!56419 () Bool)

(assert (=> b!98119 (= e!54362 (and tp_is_empty!751 tp!56419))))

(declare-fun b!98120 () Bool)

(assert (=> b!98120 (= e!54365 e!54360)))

(declare-fun res!47691 () Bool)

(assert (=> b!98120 (=> (not res!47691) (not e!54360))))

(declare-fun isEmpty!676 (BalanceConc!988) Bool)

(assert (=> b!98120 (= res!47691 (not (isEmpty!676 (_2!1063 lt!26224))))))

(declare-fun input!2238 () List!1592)

(declare-fun lex!144 (LexerInterface!238 List!1594 BalanceConc!988) tuple2!1712)

(declare-fun seqFromList!186 (List!1592) BalanceConc!988)

(assert (=> b!98120 (= lt!26224 (lex!144 thiss!19403 rules!2471 (seqFromList!186 input!2238)))))

(declare-fun b!98121 () Bool)

(declare-fun size!1400 (List!1592) Int)

(declare-datatypes ((tuple2!1714 0))(
  ( (tuple2!1715 (_1!1064 Token!448) (_2!1064 List!1592)) )
))
(declare-datatypes ((Option!169 0))(
  ( (None!168) (Some!168 (v!12941 tuple2!1714)) )
))
(declare-fun get!402 (Option!169) tuple2!1714)

(declare-fun maxPrefix!78 (LexerInterface!238 List!1594 List!1592) Option!169)

(assert (=> b!98121 (= e!54364 (not (< (size!1400 (_2!1064 (get!402 (maxPrefix!78 thiss!19403 rules!2471 input!2238)))) (size!1400 input!2238))))))

(declare-fun prepend!114 (BalanceConc!990 Token!448) BalanceConc!990)

(declare-fun seqFromList!187 (List!1595) BalanceConc!990)

(assert (=> b!98121 (= lt!26223 (list!626 (prepend!114 (seqFromList!187 (t!21122 lt!26223)) (h!6986 lt!26223))))))

(declare-datatypes ((Unit!1045 0))(
  ( (Unit!1046) )
))
(declare-fun lt!26222 () Unit!1045)

(declare-fun seqFromListBHdTlConstructive!51 (Token!448 List!1595 BalanceConc!990) Unit!1045)

(assert (=> b!98121 (= lt!26222 (seqFromListBHdTlConstructive!51 (h!6986 lt!26223) (t!21122 lt!26223) (_1!1063 lt!26224)))))

(declare-fun res!47692 () Bool)

(assert (=> start!9116 (=> (not res!47692) (not e!54365))))

(assert (=> start!9116 (= res!47692 (is-Lexer!236 thiss!19403))))

(assert (=> start!9116 e!54365))

(assert (=> start!9116 true))

(assert (=> start!9116 e!54359))

(assert (=> start!9116 e!54362))

(assert (= (and start!9116 res!47692) b!98116))

(assert (= (and b!98116 res!47689) b!98115))

(assert (= (and b!98115 res!47693) b!98120))

(assert (= (and b!98120 res!47691) b!98117))

(assert (= (and b!98117 res!47690) b!98121))

(assert (= b!98118 b!98113))

(assert (= b!98114 b!98118))

(assert (= (and start!9116 (is-Cons!1588 rules!2471)) b!98114))

(assert (= (and start!9116 (is-Cons!1586 input!2238)) b!98119))

(declare-fun m!82434 () Bool)

(assert (=> b!98118 m!82434))

(declare-fun m!82436 () Bool)

(assert (=> b!98118 m!82436))

(declare-fun m!82438 () Bool)

(assert (=> b!98117 m!82438))

(declare-fun m!82440 () Bool)

(assert (=> b!98115 m!82440))

(declare-fun m!82442 () Bool)

(assert (=> b!98121 m!82442))

(declare-fun m!82444 () Bool)

(assert (=> b!98121 m!82444))

(declare-fun m!82446 () Bool)

(assert (=> b!98121 m!82446))

(declare-fun m!82448 () Bool)

(assert (=> b!98121 m!82448))

(declare-fun m!82450 () Bool)

(assert (=> b!98121 m!82450))

(assert (=> b!98121 m!82442))

(assert (=> b!98121 m!82446))

(declare-fun m!82452 () Bool)

(assert (=> b!98121 m!82452))

(assert (=> b!98121 m!82452))

(declare-fun m!82454 () Bool)

(assert (=> b!98121 m!82454))

(declare-fun m!82456 () Bool)

(assert (=> b!98121 m!82456))

(declare-fun m!82458 () Bool)

(assert (=> b!98116 m!82458))

(declare-fun m!82460 () Bool)

(assert (=> b!98120 m!82460))

(declare-fun m!82462 () Bool)

(assert (=> b!98120 m!82462))

(assert (=> b!98120 m!82462))

(declare-fun m!82464 () Bool)

(assert (=> b!98120 m!82464))

(push 1)

(assert (not b!98118))

(assert (not b!98114))

(assert (not b!98115))

(assert (not b_next!2935))

(assert (not b!98116))

(assert tp_is_empty!751)

(assert b_and!4399)

(assert (not b!98117))

(assert (not b!98121))

(assert (not b!98119))

(assert (not b_next!2933))

(assert (not b!98120))

(assert b_and!4401)

(check-sat)

(pop 1)

(push 1)

(assert b_and!4401)

(assert b_and!4399)

(assert (not b_next!2935))

(assert (not b_next!2933))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!22641 () Bool)

(declare-fun res!47716 () Bool)

(declare-fun e!54393 () Bool)

(assert (=> d!22641 (=> (not res!47716) (not e!54393))))

(declare-fun rulesValid!90 (LexerInterface!238 List!1594) Bool)

(assert (=> d!22641 (= res!47716 (rulesValid!90 thiss!19403 rules!2471))))

(assert (=> d!22641 (= (rulesInvariant!232 thiss!19403 rules!2471) e!54393)))

(declare-fun b!98151 () Bool)

(declare-datatypes ((List!1600 0))(
  ( (Nil!1594) (Cons!1594 (h!6991 String!2073) (t!21127 List!1600)) )
))
(declare-fun noDuplicateTag!90 (LexerInterface!238 List!1594 List!1600) Bool)

(assert (=> b!98151 (= e!54393 (noDuplicateTag!90 thiss!19403 rules!2471 Nil!1594))))

(assert (= (and d!22641 res!47716) b!98151))

(declare-fun m!82498 () Bool)

(assert (=> d!22641 m!82498))

(declare-fun m!82500 () Bool)

(assert (=> b!98151 m!82500))

(assert (=> b!98115 d!22641))

(declare-fun d!22643 () Bool)

(declare-fun lt!26239 () Bool)

(declare-fun isEmpty!679 (List!1592) Bool)

(declare-fun list!628 (BalanceConc!988) List!1592)

(assert (=> d!22643 (= lt!26239 (isEmpty!679 (list!628 (_2!1063 lt!26224))))))

(declare-fun isEmpty!680 (Conc!492) Bool)

(assert (=> d!22643 (= lt!26239 (isEmpty!680 (c!24032 (_2!1063 lt!26224))))))

(assert (=> d!22643 (= (isEmpty!676 (_2!1063 lt!26224)) lt!26239)))

(declare-fun bs!9625 () Bool)

(assert (= bs!9625 d!22643))

(declare-fun m!82502 () Bool)

(assert (=> bs!9625 m!82502))

(assert (=> bs!9625 m!82502))

(declare-fun m!82504 () Bool)

(assert (=> bs!9625 m!82504))

(declare-fun m!82506 () Bool)

(assert (=> bs!9625 m!82506))

(assert (=> b!98120 d!22643))

(declare-fun b!98162 () Bool)

(declare-fun res!47725 () Bool)

(declare-fun e!54401 () Bool)

(assert (=> b!98162 (=> (not res!47725) (not e!54401))))

(declare-fun lt!26242 () tuple2!1712)

(declare-datatypes ((tuple2!1720 0))(
  ( (tuple2!1721 (_1!1067 List!1595) (_2!1067 List!1592)) )
))
(declare-fun lexList!68 (LexerInterface!238 List!1594 List!1592) tuple2!1720)

(assert (=> b!98162 (= res!47725 (= (list!626 (_1!1063 lt!26242)) (_1!1067 (lexList!68 thiss!19403 rules!2471 (list!628 (seqFromList!186 input!2238))))))))

(declare-fun d!22645 () Bool)

(assert (=> d!22645 e!54401))

(declare-fun res!47726 () Bool)

(assert (=> d!22645 (=> (not res!47726) (not e!54401))))

(declare-fun e!54400 () Bool)

(assert (=> d!22645 (= res!47726 e!54400)))

(declare-fun c!24041 () Bool)

(declare-fun size!1403 (BalanceConc!990) Int)

(assert (=> d!22645 (= c!24041 (> (size!1403 (_1!1063 lt!26242)) 0))))

(declare-fun lexTailRecV2!65 (LexerInterface!238 List!1594 BalanceConc!988 BalanceConc!988 BalanceConc!988 BalanceConc!990) tuple2!1712)

(assert (=> d!22645 (= lt!26242 (lexTailRecV2!65 thiss!19403 rules!2471 (seqFromList!186 input!2238) (BalanceConc!989 Empty!492) (seqFromList!186 input!2238) (BalanceConc!991 Empty!493)))))

(assert (=> d!22645 (= (lex!144 thiss!19403 rules!2471 (seqFromList!186 input!2238)) lt!26242)))

(declare-fun b!98163 () Bool)

(declare-fun e!54402 () Bool)

(declare-fun isEmpty!681 (BalanceConc!990) Bool)

(assert (=> b!98163 (= e!54402 (not (isEmpty!681 (_1!1063 lt!26242))))))

(declare-fun b!98164 () Bool)

(assert (=> b!98164 (= e!54401 (= (list!628 (_2!1063 lt!26242)) (_2!1067 (lexList!68 thiss!19403 rules!2471 (list!628 (seqFromList!186 input!2238))))))))

(declare-fun b!98165 () Bool)

(assert (=> b!98165 (= e!54400 (= (_2!1063 lt!26242) (seqFromList!186 input!2238)))))

(declare-fun b!98166 () Bool)

(assert (=> b!98166 (= e!54400 e!54402)))

(declare-fun res!47724 () Bool)

(declare-fun size!1404 (BalanceConc!988) Int)

(assert (=> b!98166 (= res!47724 (< (size!1404 (_2!1063 lt!26242)) (size!1404 (seqFromList!186 input!2238))))))

(assert (=> b!98166 (=> (not res!47724) (not e!54402))))

(assert (= (and d!22645 c!24041) b!98166))

(assert (= (and d!22645 (not c!24041)) b!98165))

(assert (= (and b!98166 res!47724) b!98163))

(assert (= (and d!22645 res!47726) b!98162))

(assert (= (and b!98162 res!47725) b!98164))

(declare-fun m!82508 () Bool)

(assert (=> b!98164 m!82508))

(assert (=> b!98164 m!82462))

(declare-fun m!82510 () Bool)

(assert (=> b!98164 m!82510))

(assert (=> b!98164 m!82510))

(declare-fun m!82512 () Bool)

(assert (=> b!98164 m!82512))

(declare-fun m!82514 () Bool)

(assert (=> b!98163 m!82514))

(declare-fun m!82516 () Bool)

(assert (=> b!98166 m!82516))

(assert (=> b!98166 m!82462))

(declare-fun m!82518 () Bool)

(assert (=> b!98166 m!82518))

(declare-fun m!82520 () Bool)

(assert (=> d!22645 m!82520))

(assert (=> d!22645 m!82462))

(assert (=> d!22645 m!82462))

(declare-fun m!82522 () Bool)

(assert (=> d!22645 m!82522))

(declare-fun m!82524 () Bool)

(assert (=> b!98162 m!82524))

(assert (=> b!98162 m!82462))

(assert (=> b!98162 m!82510))

(assert (=> b!98162 m!82510))

(assert (=> b!98162 m!82512))

(assert (=> b!98120 d!22645))

(declare-fun d!22651 () Bool)

(declare-fun fromListB!82 (List!1592) BalanceConc!988)

(assert (=> d!22651 (= (seqFromList!186 input!2238) (fromListB!82 input!2238))))

(declare-fun bs!9626 () Bool)

(assert (= bs!9626 d!22651))

(declare-fun m!82526 () Bool)

(assert (=> bs!9626 m!82526))

(assert (=> b!98120 d!22651))

(declare-fun d!22653 () Bool)

(declare-fun list!629 (Conc!493) List!1595)

(assert (=> d!22653 (= (list!626 (_1!1063 lt!26224)) (list!629 (c!24034 (_1!1063 lt!26224))))))

(declare-fun bs!9627 () Bool)

(assert (= bs!9627 d!22653))

(declare-fun m!82528 () Bool)

(assert (=> bs!9627 m!82528))

(assert (=> b!98117 d!22653))

(declare-fun d!22655 () Bool)

(assert (=> d!22655 (= (inv!1927 (tag!524 (h!6985 rules!2471))) (= (mod (str.len (value!12730 (tag!524 (h!6985 rules!2471)))) 2) 0))))

(assert (=> b!98118 d!22655))

(declare-fun d!22657 () Bool)

(declare-fun res!47729 () Bool)

(declare-fun e!54405 () Bool)

(assert (=> d!22657 (=> (not res!47729) (not e!54405))))

(declare-fun semiInverseModEq!82 (Int Int) Bool)

(assert (=> d!22657 (= res!47729 (semiInverseModEq!82 (toChars!760 (transformation!346 (h!6985 rules!2471))) (toValue!901 (transformation!346 (h!6985 rules!2471)))))))

(assert (=> d!22657 (= (inv!1930 (transformation!346 (h!6985 rules!2471))) e!54405)))

(declare-fun b!98169 () Bool)

(declare-fun equivClasses!77 (Int Int) Bool)

(assert (=> b!98169 (= e!54405 (equivClasses!77 (toChars!760 (transformation!346 (h!6985 rules!2471))) (toValue!901 (transformation!346 (h!6985 rules!2471)))))))

(assert (= (and d!22657 res!47729) b!98169))

(declare-fun m!82530 () Bool)

(assert (=> d!22657 m!82530))

(declare-fun m!82532 () Bool)

(assert (=> b!98169 m!82532))

(assert (=> b!98118 d!22657))

(declare-fun b!98215 () Bool)

(declare-fun e!54422 () Bool)

(declare-fun e!54423 () Bool)

(assert (=> b!98215 (= e!54422 e!54423)))

(declare-fun res!47766 () Bool)

(assert (=> b!98215 (=> (not res!47766) (not e!54423))))

(declare-fun lt!26268 () Option!169)

(declare-fun isDefined!51 (Option!169) Bool)

(assert (=> b!98215 (= res!47766 (isDefined!51 lt!26268))))

(declare-fun b!98216 () Bool)

(declare-fun res!47771 () Bool)

(assert (=> b!98216 (=> (not res!47771) (not e!54423))))

(declare-fun ++!229 (List!1592 List!1592) List!1592)

(declare-fun charsOf!79 (Token!448) BalanceConc!988)

(assert (=> b!98216 (= res!47771 (= (++!229 (list!628 (charsOf!79 (_1!1064 (get!402 lt!26268)))) (_2!1064 (get!402 lt!26268))) input!2238))))

(declare-fun b!98217 () Bool)

(declare-fun res!47770 () Bool)

(assert (=> b!98217 (=> (not res!47770) (not e!54423))))

(declare-fun matchR!40 (Regex!414 List!1592) Bool)

(assert (=> b!98217 (= res!47770 (matchR!40 (regex!346 (rule!847 (_1!1064 (get!402 lt!26268)))) (list!628 (charsOf!79 (_1!1064 (get!402 lt!26268))))))))

(declare-fun bm!4373 () Bool)

(declare-fun call!4378 () Option!169)

(declare-fun maxPrefixOneRule!36 (LexerInterface!238 Rule!492 List!1592) Option!169)

(assert (=> bm!4373 (= call!4378 (maxPrefixOneRule!36 thiss!19403 (h!6985 rules!2471) input!2238))))

(declare-fun d!22659 () Bool)

(assert (=> d!22659 e!54422))

(declare-fun res!47768 () Bool)

(assert (=> d!22659 (=> res!47768 e!54422)))

(declare-fun isEmpty!682 (Option!169) Bool)

(assert (=> d!22659 (= res!47768 (isEmpty!682 lt!26268))))

(declare-fun e!54421 () Option!169)

(assert (=> d!22659 (= lt!26268 e!54421)))

(declare-fun c!24047 () Bool)

(assert (=> d!22659 (= c!24047 (and (is-Cons!1588 rules!2471) (is-Nil!1588 (t!21121 rules!2471))))))

(declare-fun lt!26272 () Unit!1045)

(declare-fun lt!26269 () Unit!1045)

(assert (=> d!22659 (= lt!26272 lt!26269)))

(declare-fun isPrefix!38 (List!1592 List!1592) Bool)

(assert (=> d!22659 (isPrefix!38 input!2238 input!2238)))

(declare-fun lemmaIsPrefixRefl!38 (List!1592 List!1592) Unit!1045)

(assert (=> d!22659 (= lt!26269 (lemmaIsPrefixRefl!38 input!2238 input!2238))))

(declare-fun rulesValidInductive!67 (LexerInterface!238 List!1594) Bool)

(assert (=> d!22659 (rulesValidInductive!67 thiss!19403 rules!2471)))

(assert (=> d!22659 (= (maxPrefix!78 thiss!19403 rules!2471 input!2238) lt!26268)))

(declare-fun b!98218 () Bool)

(declare-fun res!47765 () Bool)

(assert (=> b!98218 (=> (not res!47765) (not e!54423))))

(assert (=> b!98218 (= res!47765 (< (size!1400 (_2!1064 (get!402 lt!26268))) (size!1400 input!2238)))))

(declare-fun b!98219 () Bool)

(assert (=> b!98219 (= e!54421 call!4378)))

(declare-fun b!98220 () Bool)

(declare-fun res!47767 () Bool)

(assert (=> b!98220 (=> (not res!47767) (not e!54423))))

(assert (=> b!98220 (= res!47767 (= (list!628 (charsOf!79 (_1!1064 (get!402 lt!26268)))) (originalCharacters!395 (_1!1064 (get!402 lt!26268)))))))

(declare-fun b!98221 () Bool)

(declare-fun contains!252 (List!1594 Rule!492) Bool)

(assert (=> b!98221 (= e!54423 (contains!252 rules!2471 (rule!847 (_1!1064 (get!402 lt!26268)))))))

(declare-fun b!98222 () Bool)

(declare-fun lt!26270 () Option!169)

(declare-fun lt!26271 () Option!169)

(assert (=> b!98222 (= e!54421 (ite (and (is-None!168 lt!26270) (is-None!168 lt!26271)) None!168 (ite (is-None!168 lt!26271) lt!26270 (ite (is-None!168 lt!26270) lt!26271 (ite (>= (size!1399 (_1!1064 (v!12941 lt!26270))) (size!1399 (_1!1064 (v!12941 lt!26271)))) lt!26270 lt!26271)))))))

(assert (=> b!98222 (= lt!26270 call!4378)))

(assert (=> b!98222 (= lt!26271 (maxPrefix!78 thiss!19403 (t!21121 rules!2471) input!2238))))

(declare-fun b!98223 () Bool)

(declare-fun res!47769 () Bool)

(assert (=> b!98223 (=> (not res!47769) (not e!54423))))

(declare-fun apply!252 (TokenValueInjection!496 BalanceConc!988) TokenValue!336)

(assert (=> b!98223 (= res!47769 (= (value!12756 (_1!1064 (get!402 lt!26268))) (apply!252 (transformation!346 (rule!847 (_1!1064 (get!402 lt!26268)))) (seqFromList!186 (originalCharacters!395 (_1!1064 (get!402 lt!26268)))))))))

(assert (= (and d!22659 c!24047) b!98219))

(assert (= (and d!22659 (not c!24047)) b!98222))

(assert (= (or b!98219 b!98222) bm!4373))

(assert (= (and d!22659 (not res!47768)) b!98215))

(assert (= (and b!98215 res!47766) b!98220))

(assert (= (and b!98220 res!47767) b!98218))

(assert (= (and b!98218 res!47765) b!98216))

(assert (= (and b!98216 res!47771) b!98223))

(assert (= (and b!98223 res!47769) b!98217))

(assert (= (and b!98217 res!47770) b!98221))

(declare-fun m!82566 () Bool)

(assert (=> b!98220 m!82566))

(declare-fun m!82568 () Bool)

(assert (=> b!98220 m!82568))

(assert (=> b!98220 m!82568))

(declare-fun m!82570 () Bool)

(assert (=> b!98220 m!82570))

(assert (=> b!98217 m!82566))

(assert (=> b!98217 m!82568))

(assert (=> b!98217 m!82568))

(assert (=> b!98217 m!82570))

(assert (=> b!98217 m!82570))

(declare-fun m!82572 () Bool)

(assert (=> b!98217 m!82572))

(assert (=> b!98216 m!82566))

(assert (=> b!98216 m!82568))

(assert (=> b!98216 m!82568))

(assert (=> b!98216 m!82570))

(assert (=> b!98216 m!82570))

(declare-fun m!82574 () Bool)

(assert (=> b!98216 m!82574))

(declare-fun m!82576 () Bool)

(assert (=> b!98215 m!82576))

(declare-fun m!82578 () Bool)

(assert (=> b!98222 m!82578))

(declare-fun m!82580 () Bool)

(assert (=> bm!4373 m!82580))

(assert (=> b!98223 m!82566))

(declare-fun m!82582 () Bool)

(assert (=> b!98223 m!82582))

(assert (=> b!98223 m!82582))

(declare-fun m!82584 () Bool)

(assert (=> b!98223 m!82584))

(assert (=> b!98218 m!82566))

(declare-fun m!82586 () Bool)

(assert (=> b!98218 m!82586))

(assert (=> b!98218 m!82456))

(assert (=> b!98221 m!82566))

(declare-fun m!82588 () Bool)

(assert (=> b!98221 m!82588))

(declare-fun m!82590 () Bool)

(assert (=> d!22659 m!82590))

(declare-fun m!82592 () Bool)

(assert (=> d!22659 m!82592))

(declare-fun m!82594 () Bool)

(assert (=> d!22659 m!82594))

(declare-fun m!82596 () Bool)

(assert (=> d!22659 m!82596))

(assert (=> b!98121 d!22659))

(declare-fun d!22663 () Bool)

(assert (=> d!22663 (= (list!626 (_1!1063 lt!26224)) (list!626 (prepend!114 (seqFromList!187 (t!21122 lt!26223)) (h!6986 lt!26223))))))

(declare-fun lt!26275 () Unit!1045)

(declare-fun choose!1373 (Token!448 List!1595 BalanceConc!990) Unit!1045)

(assert (=> d!22663 (= lt!26275 (choose!1373 (h!6986 lt!26223) (t!21122 lt!26223) (_1!1063 lt!26224)))))

(declare-fun $colon$colon!33 (List!1595 Token!448) List!1595)

(assert (=> d!22663 (= (list!626 (_1!1063 lt!26224)) (list!626 (seqFromList!187 ($colon$colon!33 (t!21122 lt!26223) (h!6986 lt!26223)))))))

(assert (=> d!22663 (= (seqFromListBHdTlConstructive!51 (h!6986 lt!26223) (t!21122 lt!26223) (_1!1063 lt!26224)) lt!26275)))

(declare-fun bs!9630 () Bool)

(assert (= bs!9630 d!22663))

(assert (=> bs!9630 m!82446))

(declare-fun m!82602 () Bool)

(assert (=> bs!9630 m!82602))

(declare-fun m!82604 () Bool)

(assert (=> bs!9630 m!82604))

(assert (=> bs!9630 m!82446))

(assert (=> bs!9630 m!82452))

(declare-fun m!82606 () Bool)

(assert (=> bs!9630 m!82606))

(assert (=> bs!9630 m!82452))

(assert (=> bs!9630 m!82454))

(declare-fun m!82608 () Bool)

(assert (=> bs!9630 m!82608))

(assert (=> bs!9630 m!82608))

(assert (=> bs!9630 m!82602))

(assert (=> bs!9630 m!82438))

(assert (=> b!98121 d!22663))

(declare-fun d!22669 () Bool)

(assert (=> d!22669 (= (list!626 (prepend!114 (seqFromList!187 (t!21122 lt!26223)) (h!6986 lt!26223))) (list!629 (c!24034 (prepend!114 (seqFromList!187 (t!21122 lt!26223)) (h!6986 lt!26223)))))))

(declare-fun bs!9631 () Bool)

(assert (= bs!9631 d!22669))

(declare-fun m!82610 () Bool)

(assert (=> bs!9631 m!82610))

(assert (=> b!98121 d!22669))

(declare-fun d!22671 () Bool)

(declare-fun lt!26278 () Int)

(assert (=> d!22671 (>= lt!26278 0)))

(declare-fun e!54426 () Int)

(assert (=> d!22671 (= lt!26278 e!54426)))

(declare-fun c!24050 () Bool)

(assert (=> d!22671 (= c!24050 (is-Nil!1586 (_2!1064 (get!402 (maxPrefix!78 thiss!19403 rules!2471 input!2238)))))))

(assert (=> d!22671 (= (size!1400 (_2!1064 (get!402 (maxPrefix!78 thiss!19403 rules!2471 input!2238)))) lt!26278)))

(declare-fun b!98228 () Bool)

(assert (=> b!98228 (= e!54426 0)))

(declare-fun b!98229 () Bool)

(assert (=> b!98229 (= e!54426 (+ 1 (size!1400 (t!21119 (_2!1064 (get!402 (maxPrefix!78 thiss!19403 rules!2471 input!2238)))))))))

(assert (= (and d!22671 c!24050) b!98228))

(assert (= (and d!22671 (not c!24050)) b!98229))

(declare-fun m!82612 () Bool)

(assert (=> b!98229 m!82612))

(assert (=> b!98121 d!22671))

(declare-fun d!22673 () Bool)

(assert (=> d!22673 (= (get!402 (maxPrefix!78 thiss!19403 rules!2471 input!2238)) (v!12941 (maxPrefix!78 thiss!19403 rules!2471 input!2238)))))

(assert (=> b!98121 d!22673))

(declare-fun d!22675 () Bool)

(declare-fun lt!26279 () Int)

(assert (=> d!22675 (>= lt!26279 0)))

(declare-fun e!54427 () Int)

(assert (=> d!22675 (= lt!26279 e!54427)))

(declare-fun c!24051 () Bool)

(assert (=> d!22675 (= c!24051 (is-Nil!1586 input!2238))))

(assert (=> d!22675 (= (size!1400 input!2238) lt!26279)))

(declare-fun b!98230 () Bool)

(assert (=> b!98230 (= e!54427 0)))

(declare-fun b!98231 () Bool)

(assert (=> b!98231 (= e!54427 (+ 1 (size!1400 (t!21119 input!2238))))))

(assert (= (and d!22675 c!24051) b!98230))

(assert (= (and d!22675 (not c!24051)) b!98231))

(declare-fun m!82614 () Bool)

(assert (=> b!98231 m!82614))

(assert (=> b!98121 d!22675))

(declare-fun d!22677 () Bool)

(declare-fun fromListB!83 (List!1595) BalanceConc!990)

(assert (=> d!22677 (= (seqFromList!187 (t!21122 lt!26223)) (fromListB!83 (t!21122 lt!26223)))))

(declare-fun bs!9632 () Bool)

(assert (= bs!9632 d!22677))

(declare-fun m!82616 () Bool)

(assert (=> bs!9632 m!82616))

(assert (=> b!98121 d!22677))

(declare-fun d!22679 () Bool)

(declare-fun e!54430 () Bool)

(assert (=> d!22679 e!54430))

(declare-fun res!47774 () Bool)

(assert (=> d!22679 (=> (not res!47774) (not e!54430))))

(declare-fun isBalanced!120 (Conc!493) Bool)

(declare-fun prepend!116 (Conc!493 Token!448) Conc!493)

(assert (=> d!22679 (= res!47774 (isBalanced!120 (prepend!116 (c!24034 (seqFromList!187 (t!21122 lt!26223))) (h!6986 lt!26223))))))

(declare-fun lt!26282 () BalanceConc!990)

(assert (=> d!22679 (= lt!26282 (BalanceConc!991 (prepend!116 (c!24034 (seqFromList!187 (t!21122 lt!26223))) (h!6986 lt!26223))))))

(assert (=> d!22679 (= (prepend!114 (seqFromList!187 (t!21122 lt!26223)) (h!6986 lt!26223)) lt!26282)))

(declare-fun b!98234 () Bool)

(assert (=> b!98234 (= e!54430 (= (list!626 lt!26282) (Cons!1589 (h!6986 lt!26223) (list!626 (seqFromList!187 (t!21122 lt!26223))))))))

(assert (= (and d!22679 res!47774) b!98234))

(declare-fun m!82618 () Bool)

(assert (=> d!22679 m!82618))

(assert (=> d!22679 m!82618))

(declare-fun m!82620 () Bool)

(assert (=> d!22679 m!82620))

(declare-fun m!82622 () Bool)

(assert (=> b!98234 m!82622))

(assert (=> b!98234 m!82446))

(declare-fun m!82624 () Bool)

(assert (=> b!98234 m!82624))

(assert (=> b!98121 d!22679))

(declare-fun d!22681 () Bool)

(assert (=> d!22681 (= (isEmpty!675 rules!2471) (is-Nil!1588 rules!2471))))

(assert (=> b!98116 d!22681))

(declare-fun b!98241 () Bool)

(declare-fun e!54435 () Bool)

(declare-fun tp!56439 () Bool)

(assert (=> b!98241 (= e!54435 (and tp_is_empty!751 tp!56439))))

(assert (=> b!98119 (= tp!56419 e!54435)))

(assert (= (and b!98119 (is-Cons!1586 (t!21119 input!2238))) b!98241))

(declare-fun b!98253 () Bool)

(declare-fun b_free!2941 () Bool)

(declare-fun b_next!2941 () Bool)

(assert (=> b!98253 (= b_free!2941 (not b_next!2941))))

(declare-fun tp!56449 () Bool)

(declare-fun b_and!4407 () Bool)

(assert (=> b!98253 (= tp!56449 b_and!4407)))

(declare-fun b_free!2943 () Bool)

(declare-fun b_next!2943 () Bool)

(assert (=> b!98253 (= b_free!2943 (not b_next!2943))))

(declare-fun tp!56450 () Bool)

(declare-fun b_and!4409 () Bool)

(assert (=> b!98253 (= tp!56450 b_and!4409)))

(declare-fun e!54448 () Bool)

(assert (=> b!98253 (= e!54448 (and tp!56449 tp!56450))))

(declare-fun b!98252 () Bool)

(declare-fun e!54446 () Bool)

(declare-fun tp!56448 () Bool)

(assert (=> b!98252 (= e!54446 (and tp!56448 (inv!1927 (tag!524 (h!6985 (t!21121 rules!2471)))) (inv!1930 (transformation!346 (h!6985 (t!21121 rules!2471)))) e!54448))))

(declare-fun b!98251 () Bool)

(declare-fun e!54447 () Bool)

(declare-fun tp!56451 () Bool)

(assert (=> b!98251 (= e!54447 (and e!54446 tp!56451))))

(assert (=> b!98114 (= tp!56421 e!54447)))

(assert (= b!98252 b!98253))

(assert (= b!98251 b!98252))

(assert (= (and b!98114 (is-Cons!1588 (t!21121 rules!2471))) b!98251))

(declare-fun m!82630 () Bool)

(assert (=> b!98252 m!82630))

(declare-fun m!82634 () Bool)

(assert (=> b!98252 m!82634))

(declare-fun b!98264 () Bool)

(declare-fun e!54451 () Bool)

(assert (=> b!98264 (= e!54451 tp_is_empty!751)))

(declare-fun b!98265 () Bool)

(declare-fun tp!56465 () Bool)

(declare-fun tp!56464 () Bool)

(assert (=> b!98265 (= e!54451 (and tp!56465 tp!56464))))

(assert (=> b!98118 (= tp!56420 e!54451)))

(declare-fun b!98267 () Bool)

(declare-fun tp!56463 () Bool)

(declare-fun tp!56466 () Bool)

(assert (=> b!98267 (= e!54451 (and tp!56463 tp!56466))))

(declare-fun b!98266 () Bool)

(declare-fun tp!56462 () Bool)

(assert (=> b!98266 (= e!54451 tp!56462)))

(assert (= (and b!98118 (is-ElementMatch!414 (regex!346 (h!6985 rules!2471)))) b!98264))

(assert (= (and b!98118 (is-Concat!750 (regex!346 (h!6985 rules!2471)))) b!98265))

(assert (= (and b!98118 (is-Star!414 (regex!346 (h!6985 rules!2471)))) b!98266))

(assert (= (and b!98118 (is-Union!414 (regex!346 (h!6985 rules!2471)))) b!98267))

(push 1)

(assert (not b!98229))

(assert (not b_next!2935))

(assert (not b!98169))

(assert tp_is_empty!751)

(assert (not b!98162))

(assert (not b!98252))

(assert (not d!22677))

(assert (not bm!4373))

(assert b_and!4409)

(assert (not d!22679))

(assert (not b!98217))

(assert (not b!98266))

(assert (not b!98241))

(assert (not b_next!2943))

(assert (not d!22659))

(assert (not d!22651))

(assert b_and!4407)

(assert (not b!98251))

(assert (not b_next!2933))

(assert (not b!98164))

(assert (not b!98221))

(assert b_and!4401)

(assert (not b!98234))

(assert (not b!98223))

(assert (not b!98151))

(assert (not d!22653))

(assert (not b!98220))

(assert (not d!22643))

(assert (not b!98215))

(assert (not b!98218))

(assert (not b!98267))

(assert (not b_next!2941))

(assert (not b!98216))

(assert (not b!98222))

(assert (not b!98231))

(assert (not b!98265))

(assert (not d!22669))

(assert b_and!4399)

(assert (not d!22657))

(assert (not b!98163))

(assert (not d!22641))

(assert (not b!98166))

(assert (not d!22645))

(assert (not d!22663))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2943))

(assert b_and!4407)

(assert (not b_next!2941))

(assert (not b_next!2935))

(assert b_and!4399)

(assert b_and!4409)

(assert (not b_next!2933))

(assert b_and!4401)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!22705 () Bool)

(assert (=> d!22705 (= (isEmpty!679 (list!628 (_2!1063 lt!26224))) (is-Nil!1586 (list!628 (_2!1063 lt!26224))))))

(assert (=> d!22643 d!22705))

(declare-fun d!22707 () Bool)

(declare-fun list!632 (Conc!492) List!1592)

(assert (=> d!22707 (= (list!628 (_2!1063 lt!26224)) (list!632 (c!24032 (_2!1063 lt!26224))))))

(declare-fun bs!9637 () Bool)

(assert (= bs!9637 d!22707))

(declare-fun m!82690 () Bool)

(assert (=> bs!9637 m!82690))

(assert (=> d!22643 d!22707))

(declare-fun d!22709 () Bool)

(declare-fun lt!26301 () Bool)

(assert (=> d!22709 (= lt!26301 (isEmpty!679 (list!632 (c!24032 (_2!1063 lt!26224)))))))

(declare-fun size!1407 (Conc!492) Int)

(assert (=> d!22709 (= lt!26301 (= (size!1407 (c!24032 (_2!1063 lt!26224))) 0))))

(assert (=> d!22709 (= (isEmpty!680 (c!24032 (_2!1063 lt!26224))) lt!26301)))

(declare-fun bs!9638 () Bool)

(assert (= bs!9638 d!22709))

(assert (=> bs!9638 m!82690))

(assert (=> bs!9638 m!82690))

(declare-fun m!82692 () Bool)

(assert (=> bs!9638 m!82692))

(declare-fun m!82694 () Bool)

(assert (=> bs!9638 m!82694))

(assert (=> d!22643 d!22709))

(declare-fun d!22711 () Bool)

(declare-fun lt!26304 () Int)

(declare-fun size!1408 (List!1595) Int)

(assert (=> d!22711 (= lt!26304 (size!1408 (list!626 (_1!1063 lt!26242))))))

(declare-fun size!1409 (Conc!493) Int)

(assert (=> d!22711 (= lt!26304 (size!1409 (c!24034 (_1!1063 lt!26242))))))

(assert (=> d!22711 (= (size!1403 (_1!1063 lt!26242)) lt!26304)))

(declare-fun bs!9639 () Bool)

(assert (= bs!9639 d!22711))

(assert (=> bs!9639 m!82524))

(assert (=> bs!9639 m!82524))

(declare-fun m!82696 () Bool)

(assert (=> bs!9639 m!82696))

(declare-fun m!82698 () Bool)

(assert (=> bs!9639 m!82698))

(assert (=> d!22645 d!22711))

(declare-fun b!98383 () Bool)

(declare-fun lt!26378 () tuple2!1712)

(declare-fun e!54520 () Bool)

(declare-fun lexRec!45 (LexerInterface!238 List!1594 BalanceConc!988) tuple2!1712)

(assert (=> b!98383 (= e!54520 (= (list!628 (_2!1063 lt!26378)) (list!628 (_2!1063 (lexRec!45 thiss!19403 rules!2471 (seqFromList!186 input!2238))))))))

(declare-fun d!22713 () Bool)

(assert (=> d!22713 e!54520))

(declare-fun res!47832 () Bool)

(assert (=> d!22713 (=> (not res!47832) (not e!54520))))

(assert (=> d!22713 (= res!47832 (= (list!626 (_1!1063 lt!26378)) (list!626 (_1!1063 (lexRec!45 thiss!19403 rules!2471 (seqFromList!186 input!2238))))))))

(declare-fun e!54518 () tuple2!1712)

(assert (=> d!22713 (= lt!26378 e!54518)))

(declare-fun c!24076 () Bool)

(declare-datatypes ((tuple2!1724 0))(
  ( (tuple2!1725 (_1!1069 Token!448) (_2!1069 BalanceConc!988)) )
))
(declare-datatypes ((Option!171 0))(
  ( (None!170) (Some!170 (v!12948 tuple2!1724)) )
))
(declare-fun lt!26404 () Option!171)

(assert (=> d!22713 (= c!24076 (is-Some!170 lt!26404))))

(declare-fun maxPrefixZipperSequenceV2!40 (LexerInterface!238 List!1594 BalanceConc!988 BalanceConc!988) Option!171)

(assert (=> d!22713 (= lt!26404 (maxPrefixZipperSequenceV2!40 thiss!19403 rules!2471 (seqFromList!186 input!2238) (seqFromList!186 input!2238)))))

(declare-fun lt!26411 () Unit!1045)

(declare-fun lt!26407 () Unit!1045)

(assert (=> d!22713 (= lt!26411 lt!26407)))

(declare-fun lt!26392 () List!1592)

(declare-fun lt!26387 () List!1592)

(declare-fun isSuffix!40 (List!1592 List!1592) Bool)

(assert (=> d!22713 (isSuffix!40 lt!26392 (++!229 lt!26387 lt!26392))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!40 (List!1592 List!1592) Unit!1045)

(assert (=> d!22713 (= lt!26407 (lemmaConcatTwoListThenFSndIsSuffix!40 lt!26387 lt!26392))))

(assert (=> d!22713 (= lt!26392 (list!628 (seqFromList!186 input!2238)))))

(assert (=> d!22713 (= lt!26387 (list!628 (BalanceConc!989 Empty!492)))))

(assert (=> d!22713 (= (lexTailRecV2!65 thiss!19403 rules!2471 (seqFromList!186 input!2238) (BalanceConc!989 Empty!492) (seqFromList!186 input!2238) (BalanceConc!991 Empty!493)) lt!26378)))

(declare-fun b!98384 () Bool)

(declare-fun e!54521 () tuple2!1712)

(assert (=> b!98384 (= e!54521 (tuple2!1713 (BalanceConc!991 Empty!493) (seqFromList!186 input!2238)))))

(declare-fun lt!26410 () tuple2!1712)

(declare-fun lt!26393 () Option!171)

(declare-fun b!98385 () Bool)

(assert (=> b!98385 (= lt!26410 (lexRec!45 thiss!19403 rules!2471 (_2!1069 (v!12948 lt!26393))))))

(assert (=> b!98385 (= e!54521 (tuple2!1713 (prepend!114 (_1!1063 lt!26410) (_1!1069 (v!12948 lt!26393))) (_2!1063 lt!26410)))))

(declare-fun lt!26394 () BalanceConc!988)

(declare-fun b!98386 () Bool)

(declare-fun append!54 (BalanceConc!990 Token!448) BalanceConc!990)

(assert (=> b!98386 (= e!54518 (lexTailRecV2!65 thiss!19403 rules!2471 (seqFromList!186 input!2238) lt!26394 (_2!1069 (v!12948 lt!26404)) (append!54 (BalanceConc!991 Empty!493) (_1!1069 (v!12948 lt!26404)))))))

(declare-fun lt!26403 () tuple2!1712)

(assert (=> b!98386 (= lt!26403 (lexRec!45 thiss!19403 rules!2471 (_2!1069 (v!12948 lt!26404))))))

(declare-fun lt!26396 () List!1592)

(assert (=> b!98386 (= lt!26396 (list!628 (BalanceConc!989 Empty!492)))))

(declare-fun lt!26385 () List!1592)

(assert (=> b!98386 (= lt!26385 (list!628 (charsOf!79 (_1!1069 (v!12948 lt!26404)))))))

(declare-fun lt!26395 () List!1592)

(assert (=> b!98386 (= lt!26395 (list!628 (_2!1069 (v!12948 lt!26404))))))

(declare-fun lt!26405 () Unit!1045)

(declare-fun lemmaConcatAssociativity!90 (List!1592 List!1592 List!1592) Unit!1045)

(assert (=> b!98386 (= lt!26405 (lemmaConcatAssociativity!90 lt!26396 lt!26385 lt!26395))))

(assert (=> b!98386 (= (++!229 (++!229 lt!26396 lt!26385) lt!26395) (++!229 lt!26396 (++!229 lt!26385 lt!26395)))))

(declare-fun lt!26379 () Unit!1045)

(assert (=> b!98386 (= lt!26379 lt!26405)))

(declare-fun maxPrefixZipperSequence!43 (LexerInterface!238 List!1594 BalanceConc!988) Option!171)

(assert (=> b!98386 (= lt!26393 (maxPrefixZipperSequence!43 thiss!19403 rules!2471 (seqFromList!186 input!2238)))))

(declare-fun c!24078 () Bool)

(assert (=> b!98386 (= c!24078 (is-Some!170 lt!26393))))

(assert (=> b!98386 (= (lexRec!45 thiss!19403 rules!2471 (seqFromList!186 input!2238)) e!54521)))

(declare-fun lt!26402 () Unit!1045)

(declare-fun Unit!1050 () Unit!1045)

(assert (=> b!98386 (= lt!26402 Unit!1050)))

(declare-fun lt!26381 () List!1595)

(assert (=> b!98386 (= lt!26381 (list!626 (BalanceConc!991 Empty!493)))))

(declare-fun lt!26408 () List!1595)

(assert (=> b!98386 (= lt!26408 (Cons!1589 (_1!1069 (v!12948 lt!26404)) Nil!1589))))

(declare-fun lt!26389 () List!1595)

(assert (=> b!98386 (= lt!26389 (list!626 (_1!1063 lt!26403)))))

(declare-fun lt!26397 () Unit!1045)

(declare-fun lemmaConcatAssociativity!91 (List!1595 List!1595 List!1595) Unit!1045)

(assert (=> b!98386 (= lt!26397 (lemmaConcatAssociativity!91 lt!26381 lt!26408 lt!26389))))

(declare-fun ++!231 (List!1595 List!1595) List!1595)

(assert (=> b!98386 (= (++!231 (++!231 lt!26381 lt!26408) lt!26389) (++!231 lt!26381 (++!231 lt!26408 lt!26389)))))

(declare-fun lt!26409 () Unit!1045)

(assert (=> b!98386 (= lt!26409 lt!26397)))

(declare-fun lt!26399 () List!1592)

(assert (=> b!98386 (= lt!26399 (++!229 (list!628 (BalanceConc!989 Empty!492)) (list!628 (charsOf!79 (_1!1069 (v!12948 lt!26404))))))))

(declare-fun lt!26390 () List!1592)

(assert (=> b!98386 (= lt!26390 (list!628 (_2!1069 (v!12948 lt!26404))))))

(declare-fun lt!26383 () List!1595)

(assert (=> b!98386 (= lt!26383 (list!626 (append!54 (BalanceConc!991 Empty!493) (_1!1069 (v!12948 lt!26404)))))))

(declare-fun lt!26388 () Unit!1045)

(declare-fun lemmaLexThenLexPrefix!40 (LexerInterface!238 List!1594 List!1592 List!1592 List!1595 List!1595 List!1592) Unit!1045)

(assert (=> b!98386 (= lt!26388 (lemmaLexThenLexPrefix!40 thiss!19403 rules!2471 lt!26399 lt!26390 lt!26383 (list!626 (_1!1063 lt!26403)) (list!628 (_2!1063 lt!26403))))))

(assert (=> b!98386 (= (lexList!68 thiss!19403 rules!2471 lt!26399) (tuple2!1721 lt!26383 Nil!1586))))

(declare-fun lt!26382 () Unit!1045)

(assert (=> b!98386 (= lt!26382 lt!26388)))

(declare-fun lt!26384 () BalanceConc!988)

(declare-fun ++!232 (BalanceConc!988 BalanceConc!988) BalanceConc!988)

(assert (=> b!98386 (= lt!26384 (++!232 (BalanceConc!989 Empty!492) (charsOf!79 (_1!1069 (v!12948 lt!26404)))))))

(declare-fun lt!26391 () Option!171)

(assert (=> b!98386 (= lt!26391 (maxPrefixZipperSequence!43 thiss!19403 rules!2471 lt!26384))))

(declare-fun c!24077 () Bool)

(assert (=> b!98386 (= c!24077 (is-Some!170 lt!26391))))

(declare-fun e!54519 () tuple2!1712)

(assert (=> b!98386 (= (lexRec!45 thiss!19403 rules!2471 (++!232 (BalanceConc!989 Empty!492) (charsOf!79 (_1!1069 (v!12948 lt!26404))))) e!54519)))

(declare-fun lt!26380 () Unit!1045)

(declare-fun Unit!1051 () Unit!1045)

(assert (=> b!98386 (= lt!26380 Unit!1051)))

(assert (=> b!98386 (= lt!26394 (++!232 (BalanceConc!989 Empty!492) (charsOf!79 (_1!1069 (v!12948 lt!26404)))))))

(declare-fun lt!26406 () List!1592)

(assert (=> b!98386 (= lt!26406 (list!628 lt!26394))))

(declare-fun lt!26401 () List!1592)

(assert (=> b!98386 (= lt!26401 (list!628 (_2!1069 (v!12948 lt!26404))))))

(declare-fun lt!26400 () Unit!1045)

(assert (=> b!98386 (= lt!26400 (lemmaConcatTwoListThenFSndIsSuffix!40 lt!26406 lt!26401))))

(assert (=> b!98386 (isSuffix!40 lt!26401 (++!229 lt!26406 lt!26401))))

(declare-fun lt!26398 () Unit!1045)

(assert (=> b!98386 (= lt!26398 lt!26400)))

(declare-fun lt!26386 () tuple2!1712)

(declare-fun b!98387 () Bool)

(assert (=> b!98387 (= lt!26386 (lexRec!45 thiss!19403 rules!2471 (_2!1069 (v!12948 lt!26391))))))

(assert (=> b!98387 (= e!54519 (tuple2!1713 (prepend!114 (_1!1063 lt!26386) (_1!1069 (v!12948 lt!26391))) (_2!1063 lt!26386)))))

(declare-fun b!98388 () Bool)

(assert (=> b!98388 (= e!54519 (tuple2!1713 (BalanceConc!991 Empty!493) lt!26384))))

(declare-fun b!98389 () Bool)

(assert (=> b!98389 (= e!54518 (tuple2!1713 (BalanceConc!991 Empty!493) (seqFromList!186 input!2238)))))

(assert (= (and d!22713 c!24076) b!98386))

(assert (= (and d!22713 (not c!24076)) b!98389))

(assert (= (and b!98386 c!24078) b!98385))

(assert (= (and b!98386 (not c!24078)) b!98384))

(assert (= (and b!98386 c!24077) b!98387))

(assert (= (and b!98386 (not c!24077)) b!98388))

(assert (= (and d!22713 res!47832) b!98383))

(declare-fun m!82722 () Bool)

(assert (=> b!98383 m!82722))

(assert (=> b!98383 m!82462))

(declare-fun m!82724 () Bool)

(assert (=> b!98383 m!82724))

(declare-fun m!82728 () Bool)

(assert (=> b!98383 m!82728))

(declare-fun m!82732 () Bool)

(assert (=> d!22713 m!82732))

(declare-fun m!82734 () Bool)

(assert (=> d!22713 m!82734))

(declare-fun m!82736 () Bool)

(assert (=> d!22713 m!82736))

(declare-fun m!82738 () Bool)

(assert (=> d!22713 m!82738))

(assert (=> d!22713 m!82736))

(assert (=> d!22713 m!82462))

(assert (=> d!22713 m!82510))

(assert (=> d!22713 m!82462))

(assert (=> d!22713 m!82724))

(assert (=> d!22713 m!82462))

(assert (=> d!22713 m!82462))

(declare-fun m!82740 () Bool)

(assert (=> d!22713 m!82740))

(declare-fun m!82742 () Bool)

(assert (=> d!22713 m!82742))

(declare-fun m!82744 () Bool)

(assert (=> d!22713 m!82744))

(declare-fun m!82746 () Bool)

(assert (=> b!98387 m!82746))

(declare-fun m!82748 () Bool)

(assert (=> b!98387 m!82748))

(declare-fun m!82750 () Bool)

(assert (=> b!98385 m!82750))

(declare-fun m!82752 () Bool)

(assert (=> b!98385 m!82752))

(declare-fun m!82754 () Bool)

(assert (=> b!98386 m!82754))

(declare-fun m!82756 () Bool)

(assert (=> b!98386 m!82756))

(declare-fun m!82758 () Bool)

(assert (=> b!98386 m!82758))

(declare-fun m!82760 () Bool)

(assert (=> b!98386 m!82760))

(assert (=> b!98386 m!82744))

(declare-fun m!82762 () Bool)

(assert (=> b!98386 m!82762))

(declare-fun m!82764 () Bool)

(assert (=> b!98386 m!82764))

(assert (=> b!98386 m!82760))

(declare-fun m!82766 () Bool)

(assert (=> b!98386 m!82766))

(declare-fun m!82768 () Bool)

(assert (=> b!98386 m!82768))

(declare-fun m!82770 () Bool)

(assert (=> b!98386 m!82770))

(assert (=> b!98386 m!82768))

(declare-fun m!82772 () Bool)

(assert (=> b!98386 m!82772))

(declare-fun m!82774 () Bool)

(assert (=> b!98386 m!82774))

(declare-fun m!82776 () Bool)

(assert (=> b!98386 m!82776))

(assert (=> b!98386 m!82744))

(declare-fun m!82778 () Bool)

(assert (=> b!98386 m!82778))

(declare-fun m!82780 () Bool)

(assert (=> b!98386 m!82780))

(declare-fun m!82782 () Bool)

(assert (=> b!98386 m!82782))

(assert (=> b!98386 m!82782))

(declare-fun m!82784 () Bool)

(assert (=> b!98386 m!82784))

(declare-fun m!82786 () Bool)

(assert (=> b!98386 m!82786))

(declare-fun m!82788 () Bool)

(assert (=> b!98386 m!82788))

(declare-fun m!82790 () Bool)

(assert (=> b!98386 m!82790))

(assert (=> b!98386 m!82786))

(assert (=> b!98386 m!82772))

(declare-fun m!82792 () Bool)

(assert (=> b!98386 m!82792))

(declare-fun m!82794 () Bool)

(assert (=> b!98386 m!82794))

(declare-fun m!82796 () Bool)

(assert (=> b!98386 m!82796))

(declare-fun m!82798 () Bool)

(assert (=> b!98386 m!82798))

(assert (=> b!98386 m!82462))

(assert (=> b!98386 m!82724))

(declare-fun m!82800 () Bool)

(assert (=> b!98386 m!82800))

(declare-fun m!82802 () Bool)

(assert (=> b!98386 m!82802))

(assert (=> b!98386 m!82462))

(declare-fun m!82804 () Bool)

(assert (=> b!98386 m!82804))

(assert (=> b!98386 m!82790))

(declare-fun m!82806 () Bool)

(assert (=> b!98386 m!82806))

(assert (=> b!98386 m!82806))

(declare-fun m!82808 () Bool)

(assert (=> b!98386 m!82808))

(assert (=> b!98386 m!82790))

(assert (=> b!98386 m!82762))

(assert (=> b!98386 m!82800))

(declare-fun m!82810 () Bool)

(assert (=> b!98386 m!82810))

(declare-fun m!82812 () Bool)

(assert (=> b!98386 m!82812))

(assert (=> b!98386 m!82462))

(assert (=> b!98386 m!82800))

(declare-fun m!82814 () Bool)

(assert (=> b!98386 m!82814))

(assert (=> b!98386 m!82754))

(assert (=> b!98386 m!82756))

(assert (=> d!22645 d!22713))

(declare-fun d!22725 () Bool)

(assert (=> d!22725 (= (isEmpty!682 lt!26268) (not (is-Some!168 lt!26268)))))

(assert (=> d!22659 d!22725))

(declare-fun b!98418 () Bool)

(declare-fun res!47849 () Bool)

(declare-fun e!54539 () Bool)

(assert (=> b!98418 (=> (not res!47849) (not e!54539))))

(declare-fun head!451 (List!1592) C!1750)

(assert (=> b!98418 (= res!47849 (= (head!451 input!2238) (head!451 input!2238)))))

(declare-fun b!98419 () Bool)

(declare-fun tail!163 (List!1592) List!1592)

(assert (=> b!98419 (= e!54539 (isPrefix!38 (tail!163 input!2238) (tail!163 input!2238)))))

(declare-fun d!22727 () Bool)

(declare-fun e!54540 () Bool)

(assert (=> d!22727 e!54540))

(declare-fun res!47850 () Bool)

(assert (=> d!22727 (=> res!47850 e!54540)))

(declare-fun lt!26419 () Bool)

(assert (=> d!22727 (= res!47850 (not lt!26419))))

(declare-fun e!54538 () Bool)

(assert (=> d!22727 (= lt!26419 e!54538)))

(declare-fun res!47848 () Bool)

(assert (=> d!22727 (=> res!47848 e!54538)))

(assert (=> d!22727 (= res!47848 (is-Nil!1586 input!2238))))

(assert (=> d!22727 (= (isPrefix!38 input!2238 input!2238) lt!26419)))

(declare-fun b!98417 () Bool)

(assert (=> b!98417 (= e!54538 e!54539)))

(declare-fun res!47847 () Bool)

(assert (=> b!98417 (=> (not res!47847) (not e!54539))))

(assert (=> b!98417 (= res!47847 (not (is-Nil!1586 input!2238)))))

(declare-fun b!98420 () Bool)

(assert (=> b!98420 (= e!54540 (>= (size!1400 input!2238) (size!1400 input!2238)))))

(assert (= (and d!22727 (not res!47848)) b!98417))

(assert (= (and b!98417 res!47847) b!98418))

(assert (= (and b!98418 res!47849) b!98419))

(assert (= (and d!22727 (not res!47850)) b!98420))

(declare-fun m!82830 () Bool)

(assert (=> b!98418 m!82830))

(assert (=> b!98418 m!82830))

(declare-fun m!82832 () Bool)

(assert (=> b!98419 m!82832))

(assert (=> b!98419 m!82832))

(assert (=> b!98419 m!82832))

(assert (=> b!98419 m!82832))

(declare-fun m!82834 () Bool)

(assert (=> b!98419 m!82834))

(assert (=> b!98420 m!82456))

(assert (=> b!98420 m!82456))

(assert (=> d!22659 d!22727))

(declare-fun d!22733 () Bool)

(assert (=> d!22733 (isPrefix!38 input!2238 input!2238)))

(declare-fun lt!26426 () Unit!1045)

(declare-fun choose!1375 (List!1592 List!1592) Unit!1045)

(assert (=> d!22733 (= lt!26426 (choose!1375 input!2238 input!2238))))

(assert (=> d!22733 (= (lemmaIsPrefixRefl!38 input!2238 input!2238) lt!26426)))

(declare-fun bs!9643 () Bool)

(assert (= bs!9643 d!22733))

(assert (=> bs!9643 m!82592))

(declare-fun m!82844 () Bool)

(assert (=> bs!9643 m!82844))

(assert (=> d!22659 d!22733))

(declare-fun d!22741 () Bool)

(assert (=> d!22741 true))

(declare-fun lt!26437 () Bool)

(declare-fun lambda!1762 () Int)

(declare-fun forall!211 (List!1594 Int) Bool)

(assert (=> d!22741 (= lt!26437 (forall!211 rules!2471 lambda!1762))))

(declare-fun e!54559 () Bool)

(assert (=> d!22741 (= lt!26437 e!54559)))

(declare-fun res!47872 () Bool)

(assert (=> d!22741 (=> res!47872 e!54559)))

(assert (=> d!22741 (= res!47872 (not (is-Cons!1588 rules!2471)))))

(assert (=> d!22741 (= (rulesValidInductive!67 thiss!19403 rules!2471) lt!26437)))

(declare-fun b!98441 () Bool)

(declare-fun e!54558 () Bool)

(assert (=> b!98441 (= e!54559 e!54558)))

(declare-fun res!47871 () Bool)

(assert (=> b!98441 (=> (not res!47871) (not e!54558))))

(declare-fun ruleValid!39 (LexerInterface!238 Rule!492) Bool)

(assert (=> b!98441 (= res!47871 (ruleValid!39 thiss!19403 (h!6985 rules!2471)))))

(declare-fun b!98442 () Bool)

(assert (=> b!98442 (= e!54558 (rulesValidInductive!67 thiss!19403 (t!21121 rules!2471)))))

(assert (= (and d!22741 (not res!47872)) b!98441))

(assert (= (and b!98441 res!47871) b!98442))

(declare-fun m!82854 () Bool)

(assert (=> d!22741 m!82854))

(declare-fun m!82856 () Bool)

(assert (=> b!98441 m!82856))

(declare-fun m!82858 () Bool)

(assert (=> b!98442 m!82858))

(assert (=> d!22659 d!22741))

(declare-fun d!22747 () Bool)

(declare-fun lt!26438 () Int)

(assert (=> d!22747 (>= lt!26438 0)))

(declare-fun e!54560 () Int)

(assert (=> d!22747 (= lt!26438 e!54560)))

(declare-fun c!24083 () Bool)

(assert (=> d!22747 (= c!24083 (is-Nil!1586 (t!21119 (_2!1064 (get!402 (maxPrefix!78 thiss!19403 rules!2471 input!2238))))))))

(assert (=> d!22747 (= (size!1400 (t!21119 (_2!1064 (get!402 (maxPrefix!78 thiss!19403 rules!2471 input!2238))))) lt!26438)))

(declare-fun b!98445 () Bool)

(assert (=> b!98445 (= e!54560 0)))

(declare-fun b!98446 () Bool)

(assert (=> b!98446 (= e!54560 (+ 1 (size!1400 (t!21119 (t!21119 (_2!1064 (get!402 (maxPrefix!78 thiss!19403 rules!2471 input!2238))))))))))

(assert (= (and d!22747 c!24083) b!98445))

(assert (= (and d!22747 (not c!24083)) b!98446))

(declare-fun m!82860 () Bool)

(assert (=> b!98446 m!82860))

(assert (=> b!98229 d!22747))

(declare-fun d!22749 () Bool)

(declare-fun e!54565 () Bool)

(assert (=> d!22749 e!54565))

(declare-fun res!47877 () Bool)

(assert (=> d!22749 (=> (not res!47877) (not e!54565))))

(declare-fun lt!26442 () BalanceConc!990)

(assert (=> d!22749 (= res!47877 (= (list!626 lt!26442) (t!21122 lt!26223)))))

(declare-fun fromList!53 (List!1595) Conc!493)

(assert (=> d!22749 (= lt!26442 (BalanceConc!991 (fromList!53 (t!21122 lt!26223))))))

(assert (=> d!22749 (= (fromListB!83 (t!21122 lt!26223)) lt!26442)))

(declare-fun b!98453 () Bool)

(assert (=> b!98453 (= e!54565 (isBalanced!120 (fromList!53 (t!21122 lt!26223))))))

(assert (= (and d!22749 res!47877) b!98453))

(declare-fun m!82870 () Bool)

(assert (=> d!22749 m!82870))

(declare-fun m!82872 () Bool)

(assert (=> d!22749 m!82872))

(assert (=> b!98453 m!82872))

(assert (=> b!98453 m!82872))

(declare-fun m!82874 () Bool)

(assert (=> b!98453 m!82874))

(assert (=> d!22677 d!22749))

(declare-fun d!22755 () Bool)

(assert (=> d!22755 (= (inv!1927 (tag!524 (h!6985 (t!21121 rules!2471)))) (= (mod (str.len (value!12730 (tag!524 (h!6985 (t!21121 rules!2471))))) 2) 0))))

(assert (=> b!98252 d!22755))

(declare-fun d!22757 () Bool)

(declare-fun res!47878 () Bool)

(declare-fun e!54566 () Bool)

(assert (=> d!22757 (=> (not res!47878) (not e!54566))))

(assert (=> d!22757 (= res!47878 (semiInverseModEq!82 (toChars!760 (transformation!346 (h!6985 (t!21121 rules!2471)))) (toValue!901 (transformation!346 (h!6985 (t!21121 rules!2471))))))))

(assert (=> d!22757 (= (inv!1930 (transformation!346 (h!6985 (t!21121 rules!2471)))) e!54566)))

(declare-fun b!98454 () Bool)

(assert (=> b!98454 (= e!54566 (equivClasses!77 (toChars!760 (transformation!346 (h!6985 (t!21121 rules!2471)))) (toValue!901 (transformation!346 (h!6985 (t!21121 rules!2471))))))))

(assert (= (and d!22757 res!47878) b!98454))

(declare-fun m!82876 () Bool)

(assert (=> d!22757 m!82876))

(declare-fun m!82878 () Bool)

(assert (=> b!98454 m!82878))

(assert (=> b!98252 d!22757))

(declare-fun d!22759 () Bool)

(declare-fun c!24089 () Bool)

(assert (=> d!22759 (= c!24089 (is-Empty!493 (c!24034 (prepend!114 (seqFromList!187 (t!21122 lt!26223)) (h!6986 lt!26223)))))))

(declare-fun e!54571 () List!1595)

(assert (=> d!22759 (= (list!629 (c!24034 (prepend!114 (seqFromList!187 (t!21122 lt!26223)) (h!6986 lt!26223)))) e!54571)))

(declare-fun b!98464 () Bool)

(declare-fun e!54572 () List!1595)

(assert (=> b!98464 (= e!54571 e!54572)))

(declare-fun c!24090 () Bool)

(assert (=> b!98464 (= c!24090 (is-Leaf!802 (c!24034 (prepend!114 (seqFromList!187 (t!21122 lt!26223)) (h!6986 lt!26223)))))))

(declare-fun b!98463 () Bool)

(assert (=> b!98463 (= e!54571 Nil!1589)))

(declare-fun b!98466 () Bool)

(assert (=> b!98466 (= e!54572 (++!231 (list!629 (left!1211 (c!24034 (prepend!114 (seqFromList!187 (t!21122 lt!26223)) (h!6986 lt!26223))))) (list!629 (right!1541 (c!24034 (prepend!114 (seqFromList!187 (t!21122 lt!26223)) (h!6986 lt!26223)))))))))

(declare-fun b!98465 () Bool)

(declare-fun list!633 (IArray!987) List!1595)

(assert (=> b!98465 (= e!54572 (list!633 (xs!3080 (c!24034 (prepend!114 (seqFromList!187 (t!21122 lt!26223)) (h!6986 lt!26223))))))))

(assert (= (and d!22759 c!24089) b!98463))

(assert (= (and d!22759 (not c!24089)) b!98464))

(assert (= (and b!98464 c!24090) b!98465))

(assert (= (and b!98464 (not c!24090)) b!98466))

(declare-fun m!82880 () Bool)

(assert (=> b!98466 m!82880))

(declare-fun m!82882 () Bool)

(assert (=> b!98466 m!82882))

(assert (=> b!98466 m!82880))

(assert (=> b!98466 m!82882))

(declare-fun m!82884 () Bool)

(assert (=> b!98466 m!82884))

(declare-fun m!82886 () Bool)

(assert (=> b!98465 m!82886))

(assert (=> d!22669 d!22759))

(declare-fun d!22761 () Bool)

(assert (=> d!22761 true))

(declare-fun order!701 () Int)

(declare-fun lambda!1768 () Int)

(declare-fun order!703 () Int)

(declare-fun dynLambda!455 (Int Int) Int)

(declare-fun dynLambda!456 (Int Int) Int)

(assert (=> d!22761 (< (dynLambda!455 order!701 (toValue!901 (transformation!346 (h!6985 rules!2471)))) (dynLambda!456 order!703 lambda!1768))))

(declare-fun Forall2!50 (Int) Bool)

(assert (=> d!22761 (= (equivClasses!77 (toChars!760 (transformation!346 (h!6985 rules!2471))) (toValue!901 (transformation!346 (h!6985 rules!2471)))) (Forall2!50 lambda!1768))))

(declare-fun bs!9646 () Bool)

(assert (= bs!9646 d!22761))

(declare-fun m!82888 () Bool)

(assert (=> bs!9646 m!82888))

(assert (=> b!98169 d!22761))

(declare-fun d!22763 () Bool)

(declare-fun c!24091 () Bool)

(assert (=> d!22763 (= c!24091 (is-Empty!493 (c!24034 (_1!1063 lt!26224))))))

(declare-fun e!54575 () List!1595)

(assert (=> d!22763 (= (list!629 (c!24034 (_1!1063 lt!26224))) e!54575)))

(declare-fun b!98472 () Bool)

(declare-fun e!54576 () List!1595)

(assert (=> b!98472 (= e!54575 e!54576)))

(declare-fun c!24092 () Bool)

(assert (=> b!98472 (= c!24092 (is-Leaf!802 (c!24034 (_1!1063 lt!26224))))))

(declare-fun b!98471 () Bool)

(assert (=> b!98471 (= e!54575 Nil!1589)))

(declare-fun b!98474 () Bool)

(assert (=> b!98474 (= e!54576 (++!231 (list!629 (left!1211 (c!24034 (_1!1063 lt!26224)))) (list!629 (right!1541 (c!24034 (_1!1063 lt!26224))))))))

(declare-fun b!98473 () Bool)

(assert (=> b!98473 (= e!54576 (list!633 (xs!3080 (c!24034 (_1!1063 lt!26224)))))))

(assert (= (and d!22763 c!24091) b!98471))

(assert (= (and d!22763 (not c!24091)) b!98472))

(assert (= (and b!98472 c!24092) b!98473))

(assert (= (and b!98472 (not c!24092)) b!98474))

(declare-fun m!82890 () Bool)

(assert (=> b!98474 m!82890))

(declare-fun m!82892 () Bool)

(assert (=> b!98474 m!82892))

(assert (=> b!98474 m!82890))

(assert (=> b!98474 m!82892))

(declare-fun m!82894 () Bool)

(assert (=> b!98474 m!82894))

(declare-fun m!82896 () Bool)

(assert (=> b!98473 m!82896))

(assert (=> d!22653 d!22763))

(declare-fun d!22765 () Bool)

(declare-fun res!47885 () Bool)

(declare-fun e!54581 () Bool)

(assert (=> d!22765 (=> res!47885 e!54581)))

(assert (=> d!22765 (= res!47885 (is-Nil!1588 rules!2471))))

(assert (=> d!22765 (= (noDuplicateTag!90 thiss!19403 rules!2471 Nil!1594) e!54581)))

(declare-fun b!98479 () Bool)

(declare-fun e!54582 () Bool)

(assert (=> b!98479 (= e!54581 e!54582)))

(declare-fun res!47886 () Bool)

(assert (=> b!98479 (=> (not res!47886) (not e!54582))))

(declare-fun contains!254 (List!1600 String!2073) Bool)

(assert (=> b!98479 (= res!47886 (not (contains!254 Nil!1594 (tag!524 (h!6985 rules!2471)))))))

(declare-fun b!98480 () Bool)

(assert (=> b!98480 (= e!54582 (noDuplicateTag!90 thiss!19403 (t!21121 rules!2471) (Cons!1594 (tag!524 (h!6985 rules!2471)) Nil!1594)))))

(assert (= (and d!22765 (not res!47885)) b!98479))

(assert (= (and b!98479 res!47886) b!98480))

(declare-fun m!82898 () Bool)

(assert (=> b!98479 m!82898))

(declare-fun m!82900 () Bool)

(assert (=> b!98480 m!82900))

(assert (=> b!98151 d!22765))

(declare-fun d!22767 () Bool)

(declare-fun lt!26443 () Int)

(assert (=> d!22767 (>= lt!26443 0)))

(declare-fun e!54583 () Int)

(assert (=> d!22767 (= lt!26443 e!54583)))

(declare-fun c!24093 () Bool)

(assert (=> d!22767 (= c!24093 (is-Nil!1586 (t!21119 input!2238)))))

(assert (=> d!22767 (= (size!1400 (t!21119 input!2238)) lt!26443)))

(declare-fun b!98481 () Bool)

(assert (=> b!98481 (= e!54583 0)))

(declare-fun b!98482 () Bool)

(assert (=> b!98482 (= e!54583 (+ 1 (size!1400 (t!21119 (t!21119 input!2238)))))))

(assert (= (and d!22767 c!24093) b!98481))

(assert (= (and d!22767 (not c!24093)) b!98482))

(declare-fun m!82902 () Bool)

(assert (=> b!98482 m!82902))

(assert (=> b!98231 d!22767))

(declare-fun b!98483 () Bool)

(declare-fun e!54585 () Bool)

(declare-fun e!54586 () Bool)

(assert (=> b!98483 (= e!54585 e!54586)))

(declare-fun res!47888 () Bool)

(assert (=> b!98483 (=> (not res!47888) (not e!54586))))

(declare-fun lt!26444 () Option!169)

(assert (=> b!98483 (= res!47888 (isDefined!51 lt!26444))))

(declare-fun b!98484 () Bool)

(declare-fun res!47893 () Bool)

(assert (=> b!98484 (=> (not res!47893) (not e!54586))))

(assert (=> b!98484 (= res!47893 (= (++!229 (list!628 (charsOf!79 (_1!1064 (get!402 lt!26444)))) (_2!1064 (get!402 lt!26444))) input!2238))))

(declare-fun b!98485 () Bool)

(declare-fun res!47892 () Bool)

(assert (=> b!98485 (=> (not res!47892) (not e!54586))))

(assert (=> b!98485 (= res!47892 (matchR!40 (regex!346 (rule!847 (_1!1064 (get!402 lt!26444)))) (list!628 (charsOf!79 (_1!1064 (get!402 lt!26444))))))))

(declare-fun bm!4377 () Bool)

(declare-fun call!4382 () Option!169)

(assert (=> bm!4377 (= call!4382 (maxPrefixOneRule!36 thiss!19403 (h!6985 (t!21121 rules!2471)) input!2238))))

(declare-fun d!22769 () Bool)

(assert (=> d!22769 e!54585))

(declare-fun res!47890 () Bool)

(assert (=> d!22769 (=> res!47890 e!54585)))

(assert (=> d!22769 (= res!47890 (isEmpty!682 lt!26444))))

(declare-fun e!54584 () Option!169)

(assert (=> d!22769 (= lt!26444 e!54584)))

(declare-fun c!24094 () Bool)

(assert (=> d!22769 (= c!24094 (and (is-Cons!1588 (t!21121 rules!2471)) (is-Nil!1588 (t!21121 (t!21121 rules!2471)))))))

(declare-fun lt!26448 () Unit!1045)

(declare-fun lt!26445 () Unit!1045)

(assert (=> d!22769 (= lt!26448 lt!26445)))

(assert (=> d!22769 (isPrefix!38 input!2238 input!2238)))

(assert (=> d!22769 (= lt!26445 (lemmaIsPrefixRefl!38 input!2238 input!2238))))

(assert (=> d!22769 (rulesValidInductive!67 thiss!19403 (t!21121 rules!2471))))

(assert (=> d!22769 (= (maxPrefix!78 thiss!19403 (t!21121 rules!2471) input!2238) lt!26444)))

(declare-fun b!98486 () Bool)

(declare-fun res!47887 () Bool)

(assert (=> b!98486 (=> (not res!47887) (not e!54586))))

(assert (=> b!98486 (= res!47887 (< (size!1400 (_2!1064 (get!402 lt!26444))) (size!1400 input!2238)))))

(declare-fun b!98487 () Bool)

(assert (=> b!98487 (= e!54584 call!4382)))

(declare-fun b!98488 () Bool)

(declare-fun res!47889 () Bool)

(assert (=> b!98488 (=> (not res!47889) (not e!54586))))

(assert (=> b!98488 (= res!47889 (= (list!628 (charsOf!79 (_1!1064 (get!402 lt!26444)))) (originalCharacters!395 (_1!1064 (get!402 lt!26444)))))))

(declare-fun b!98489 () Bool)

(assert (=> b!98489 (= e!54586 (contains!252 (t!21121 rules!2471) (rule!847 (_1!1064 (get!402 lt!26444)))))))

(declare-fun b!98490 () Bool)

(declare-fun lt!26446 () Option!169)

(declare-fun lt!26447 () Option!169)

(assert (=> b!98490 (= e!54584 (ite (and (is-None!168 lt!26446) (is-None!168 lt!26447)) None!168 (ite (is-None!168 lt!26447) lt!26446 (ite (is-None!168 lt!26446) lt!26447 (ite (>= (size!1399 (_1!1064 (v!12941 lt!26446))) (size!1399 (_1!1064 (v!12941 lt!26447)))) lt!26446 lt!26447)))))))

(assert (=> b!98490 (= lt!26446 call!4382)))

(assert (=> b!98490 (= lt!26447 (maxPrefix!78 thiss!19403 (t!21121 (t!21121 rules!2471)) input!2238))))

(declare-fun b!98491 () Bool)

(declare-fun res!47891 () Bool)

(assert (=> b!98491 (=> (not res!47891) (not e!54586))))

(assert (=> b!98491 (= res!47891 (= (value!12756 (_1!1064 (get!402 lt!26444))) (apply!252 (transformation!346 (rule!847 (_1!1064 (get!402 lt!26444)))) (seqFromList!186 (originalCharacters!395 (_1!1064 (get!402 lt!26444)))))))))

(assert (= (and d!22769 c!24094) b!98487))

(assert (= (and d!22769 (not c!24094)) b!98490))

(assert (= (or b!98487 b!98490) bm!4377))

(assert (= (and d!22769 (not res!47890)) b!98483))

(assert (= (and b!98483 res!47888) b!98488))

(assert (= (and b!98488 res!47889) b!98486))

(assert (= (and b!98486 res!47887) b!98484))

(assert (= (and b!98484 res!47893) b!98491))

(assert (= (and b!98491 res!47891) b!98485))

(assert (= (and b!98485 res!47892) b!98489))

(declare-fun m!82904 () Bool)

(assert (=> b!98488 m!82904))

(declare-fun m!82906 () Bool)

(assert (=> b!98488 m!82906))

(assert (=> b!98488 m!82906))

(declare-fun m!82908 () Bool)

(assert (=> b!98488 m!82908))

(assert (=> b!98485 m!82904))

(assert (=> b!98485 m!82906))

(assert (=> b!98485 m!82906))

(assert (=> b!98485 m!82908))

(assert (=> b!98485 m!82908))

(declare-fun m!82910 () Bool)

(assert (=> b!98485 m!82910))

(assert (=> b!98484 m!82904))

(assert (=> b!98484 m!82906))

(assert (=> b!98484 m!82906))

(assert (=> b!98484 m!82908))

(assert (=> b!98484 m!82908))

(declare-fun m!82912 () Bool)

(assert (=> b!98484 m!82912))

(declare-fun m!82914 () Bool)

(assert (=> b!98483 m!82914))

(declare-fun m!82916 () Bool)

(assert (=> b!98490 m!82916))

(declare-fun m!82918 () Bool)

(assert (=> bm!4377 m!82918))

(assert (=> b!98491 m!82904))

(declare-fun m!82920 () Bool)

(assert (=> b!98491 m!82920))

(assert (=> b!98491 m!82920))

(declare-fun m!82922 () Bool)

(assert (=> b!98491 m!82922))

(assert (=> b!98486 m!82904))

(declare-fun m!82924 () Bool)

(assert (=> b!98486 m!82924))

(assert (=> b!98486 m!82456))

(assert (=> b!98489 m!82904))

(declare-fun m!82926 () Bool)

(assert (=> b!98489 m!82926))

(declare-fun m!82928 () Bool)

(assert (=> d!22769 m!82928))

(assert (=> d!22769 m!82592))

(assert (=> d!22769 m!82594))

(assert (=> d!22769 m!82858))

(assert (=> b!98222 d!22769))

(declare-fun d!22771 () Bool)

(assert (=> d!22771 (= (get!402 lt!26268) (v!12941 lt!26268))))

(assert (=> b!98223 d!22771))

(declare-fun d!22773 () Bool)

(declare-fun dynLambda!457 (Int BalanceConc!988) TokenValue!336)

(assert (=> d!22773 (= (apply!252 (transformation!346 (rule!847 (_1!1064 (get!402 lt!26268)))) (seqFromList!186 (originalCharacters!395 (_1!1064 (get!402 lt!26268))))) (dynLambda!457 (toValue!901 (transformation!346 (rule!847 (_1!1064 (get!402 lt!26268))))) (seqFromList!186 (originalCharacters!395 (_1!1064 (get!402 lt!26268))))))))

(declare-fun b_lambda!1123 () Bool)

(assert (=> (not b_lambda!1123) (not d!22773)))

(declare-fun t!21136 () Bool)

(declare-fun tb!2991 () Bool)

(assert (=> (and b!98113 (= (toValue!901 (transformation!346 (h!6985 rules!2471))) (toValue!901 (transformation!346 (rule!847 (_1!1064 (get!402 lt!26268)))))) t!21136) tb!2991))

(declare-fun result!4334 () Bool)

(declare-fun inv!21 (TokenValue!336) Bool)

(assert (=> tb!2991 (= result!4334 (inv!21 (dynLambda!457 (toValue!901 (transformation!346 (rule!847 (_1!1064 (get!402 lt!26268))))) (seqFromList!186 (originalCharacters!395 (_1!1064 (get!402 lt!26268)))))))))

(declare-fun m!82930 () Bool)

(assert (=> tb!2991 m!82930))

(assert (=> d!22773 t!21136))

(declare-fun b_and!4419 () Bool)

(assert (= b_and!4399 (and (=> t!21136 result!4334) b_and!4419)))

(declare-fun tb!2993 () Bool)

(declare-fun t!21138 () Bool)

(assert (=> (and b!98253 (= (toValue!901 (transformation!346 (h!6985 (t!21121 rules!2471)))) (toValue!901 (transformation!346 (rule!847 (_1!1064 (get!402 lt!26268)))))) t!21138) tb!2993))

(declare-fun result!4338 () Bool)

(assert (= result!4338 result!4334))

(assert (=> d!22773 t!21138))

(declare-fun b_and!4421 () Bool)

(assert (= b_and!4407 (and (=> t!21138 result!4338) b_and!4421)))

(assert (=> d!22773 m!82582))

(declare-fun m!82932 () Bool)

(assert (=> d!22773 m!82932))

(assert (=> b!98223 d!22773))

(declare-fun d!22775 () Bool)

(assert (=> d!22775 (= (seqFromList!186 (originalCharacters!395 (_1!1064 (get!402 lt!26268)))) (fromListB!82 (originalCharacters!395 (_1!1064 (get!402 lt!26268)))))))

(declare-fun bs!9647 () Bool)

(assert (= bs!9647 d!22775))

(declare-fun m!82940 () Bool)

(assert (=> bs!9647 m!82940))

(assert (=> b!98223 d!22775))

(declare-fun bs!9649 () Bool)

(declare-fun d!22777 () Bool)

(assert (= bs!9649 (and d!22777 d!22741)))

(declare-fun lambda!1771 () Int)

(assert (=> bs!9649 (= lambda!1771 lambda!1762)))

(assert (=> d!22777 true))

(declare-fun lt!26461 () Bool)

(assert (=> d!22777 (= lt!26461 (rulesValidInductive!67 thiss!19403 rules!2471))))

(assert (=> d!22777 (= lt!26461 (forall!211 rules!2471 lambda!1771))))

(assert (=> d!22777 (= (rulesValid!90 thiss!19403 rules!2471) lt!26461)))

(declare-fun bs!9650 () Bool)

(assert (= bs!9650 d!22777))

(assert (=> bs!9650 m!82596))

(declare-fun m!82950 () Bool)

(assert (=> bs!9650 m!82950))

(assert (=> d!22641 d!22777))

(declare-fun d!22785 () Bool)

(assert (=> d!22785 (= (list!628 (charsOf!79 (_1!1064 (get!402 lt!26268)))) (list!632 (c!24032 (charsOf!79 (_1!1064 (get!402 lt!26268))))))))

(declare-fun bs!9651 () Bool)

(assert (= bs!9651 d!22785))

(declare-fun m!82952 () Bool)

(assert (=> bs!9651 m!82952))

(assert (=> b!98220 d!22785))

(declare-fun d!22787 () Bool)

(declare-fun lt!26464 () BalanceConc!988)

(assert (=> d!22787 (= (list!628 lt!26464) (originalCharacters!395 (_1!1064 (get!402 lt!26268))))))

(declare-fun dynLambda!458 (Int TokenValue!336) BalanceConc!988)

(assert (=> d!22787 (= lt!26464 (dynLambda!458 (toChars!760 (transformation!346 (rule!847 (_1!1064 (get!402 lt!26268))))) (value!12756 (_1!1064 (get!402 lt!26268)))))))

(assert (=> d!22787 (= (charsOf!79 (_1!1064 (get!402 lt!26268))) lt!26464)))

(declare-fun b_lambda!1125 () Bool)

(assert (=> (not b_lambda!1125) (not d!22787)))

(declare-fun t!21140 () Bool)

(declare-fun tb!2995 () Bool)

(assert (=> (and b!98113 (= (toChars!760 (transformation!346 (h!6985 rules!2471))) (toChars!760 (transformation!346 (rule!847 (_1!1064 (get!402 lt!26268)))))) t!21140) tb!2995))

(declare-fun b!98515 () Bool)

(declare-fun e!54602 () Bool)

(declare-fun tp!56502 () Bool)

(declare-fun inv!1932 (Conc!492) Bool)

(assert (=> b!98515 (= e!54602 (and (inv!1932 (c!24032 (dynLambda!458 (toChars!760 (transformation!346 (rule!847 (_1!1064 (get!402 lt!26268))))) (value!12756 (_1!1064 (get!402 lt!26268)))))) tp!56502))))

(declare-fun result!4340 () Bool)

(declare-fun inv!1933 (BalanceConc!988) Bool)

(assert (=> tb!2995 (= result!4340 (and (inv!1933 (dynLambda!458 (toChars!760 (transformation!346 (rule!847 (_1!1064 (get!402 lt!26268))))) (value!12756 (_1!1064 (get!402 lt!26268))))) e!54602))))

(assert (= tb!2995 b!98515))

(declare-fun m!82954 () Bool)

(assert (=> b!98515 m!82954))

(declare-fun m!82956 () Bool)

(assert (=> tb!2995 m!82956))

(assert (=> d!22787 t!21140))

(declare-fun b_and!4423 () Bool)

(assert (= b_and!4401 (and (=> t!21140 result!4340) b_and!4423)))

(declare-fun t!21142 () Bool)

(declare-fun tb!2997 () Bool)

(assert (=> (and b!98253 (= (toChars!760 (transformation!346 (h!6985 (t!21121 rules!2471)))) (toChars!760 (transformation!346 (rule!847 (_1!1064 (get!402 lt!26268)))))) t!21142) tb!2997))

(declare-fun result!4344 () Bool)

(assert (= result!4344 result!4340))

(assert (=> d!22787 t!21142))

(declare-fun b_and!4425 () Bool)

(assert (= b_and!4409 (and (=> t!21142 result!4344) b_and!4425)))

(declare-fun m!82958 () Bool)

(assert (=> d!22787 m!82958))

(declare-fun m!82960 () Bool)

(assert (=> d!22787 m!82960))

(assert (=> b!98220 d!22787))

(assert (=> b!98220 d!22771))

(declare-fun d!22789 () Bool)

(declare-fun lt!26467 () Bool)

(declare-fun content!117 (List!1594) (Set Rule!492))

(assert (=> d!22789 (= lt!26467 (set.member (rule!847 (_1!1064 (get!402 lt!26268))) (content!117 rules!2471)))))

(declare-fun e!54608 () Bool)

(assert (=> d!22789 (= lt!26467 e!54608)))

(declare-fun res!47902 () Bool)

(assert (=> d!22789 (=> (not res!47902) (not e!54608))))

(assert (=> d!22789 (= res!47902 (is-Cons!1588 rules!2471))))

(assert (=> d!22789 (= (contains!252 rules!2471 (rule!847 (_1!1064 (get!402 lt!26268)))) lt!26467)))

(declare-fun b!98520 () Bool)

(declare-fun e!54607 () Bool)

(assert (=> b!98520 (= e!54608 e!54607)))

(declare-fun res!47901 () Bool)

(assert (=> b!98520 (=> res!47901 e!54607)))

(assert (=> b!98520 (= res!47901 (= (h!6985 rules!2471) (rule!847 (_1!1064 (get!402 lt!26268)))))))

(declare-fun b!98521 () Bool)

(assert (=> b!98521 (= e!54607 (contains!252 (t!21121 rules!2471) (rule!847 (_1!1064 (get!402 lt!26268)))))))

(assert (= (and d!22789 res!47902) b!98520))

(assert (= (and b!98520 (not res!47901)) b!98521))

(declare-fun m!82962 () Bool)

(assert (=> d!22789 m!82962))

(declare-fun m!82964 () Bool)

(assert (=> d!22789 m!82964))

(declare-fun m!82966 () Bool)

(assert (=> b!98521 m!82966))

(assert (=> b!98221 d!22789))

(assert (=> b!98221 d!22771))

(declare-fun b!98534 () Bool)

(declare-fun res!47919 () Bool)

(declare-fun e!54614 () Bool)

(assert (=> b!98534 (=> (not res!47919) (not e!54614))))

(assert (=> b!98534 (= res!47919 (isBalanced!120 (left!1211 (prepend!116 (c!24034 (seqFromList!187 (t!21122 lt!26223))) (h!6986 lt!26223)))))))

(declare-fun b!98535 () Bool)

(declare-fun res!47917 () Bool)

(assert (=> b!98535 (=> (not res!47917) (not e!54614))))

(declare-fun isEmpty!687 (Conc!493) Bool)

(assert (=> b!98535 (= res!47917 (not (isEmpty!687 (left!1211 (prepend!116 (c!24034 (seqFromList!187 (t!21122 lt!26223))) (h!6986 lt!26223))))))))

(declare-fun d!22791 () Bool)

(declare-fun res!47920 () Bool)

(declare-fun e!54613 () Bool)

(assert (=> d!22791 (=> res!47920 e!54613)))

(assert (=> d!22791 (= res!47920 (not (is-Node!493 (prepend!116 (c!24034 (seqFromList!187 (t!21122 lt!26223))) (h!6986 lt!26223)))))))

(assert (=> d!22791 (= (isBalanced!120 (prepend!116 (c!24034 (seqFromList!187 (t!21122 lt!26223))) (h!6986 lt!26223))) e!54613)))

(declare-fun b!98536 () Bool)

(assert (=> b!98536 (= e!54613 e!54614)))

(declare-fun res!47915 () Bool)

(assert (=> b!98536 (=> (not res!47915) (not e!54614))))

(declare-fun height!43 (Conc!493) Int)

(assert (=> b!98536 (= res!47915 (<= (- 1) (- (height!43 (left!1211 (prepend!116 (c!24034 (seqFromList!187 (t!21122 lt!26223))) (h!6986 lt!26223)))) (height!43 (right!1541 (prepend!116 (c!24034 (seqFromList!187 (t!21122 lt!26223))) (h!6986 lt!26223)))))))))

(declare-fun b!98537 () Bool)

(assert (=> b!98537 (= e!54614 (not (isEmpty!687 (right!1541 (prepend!116 (c!24034 (seqFromList!187 (t!21122 lt!26223))) (h!6986 lt!26223))))))))

(declare-fun b!98538 () Bool)

(declare-fun res!47916 () Bool)

(assert (=> b!98538 (=> (not res!47916) (not e!54614))))

(assert (=> b!98538 (= res!47916 (<= (- (height!43 (left!1211 (prepend!116 (c!24034 (seqFromList!187 (t!21122 lt!26223))) (h!6986 lt!26223)))) (height!43 (right!1541 (prepend!116 (c!24034 (seqFromList!187 (t!21122 lt!26223))) (h!6986 lt!26223))))) 1))))

(declare-fun b!98539 () Bool)

(declare-fun res!47918 () Bool)

(assert (=> b!98539 (=> (not res!47918) (not e!54614))))

(assert (=> b!98539 (= res!47918 (isBalanced!120 (right!1541 (prepend!116 (c!24034 (seqFromList!187 (t!21122 lt!26223))) (h!6986 lt!26223)))))))

(assert (= (and d!22791 (not res!47920)) b!98536))

(assert (= (and b!98536 res!47915) b!98538))

(assert (= (and b!98538 res!47916) b!98534))

(assert (= (and b!98534 res!47919) b!98539))

(assert (= (and b!98539 res!47918) b!98535))

(assert (= (and b!98535 res!47917) b!98537))

(declare-fun m!82968 () Bool)

(assert (=> b!98536 m!82968))

(declare-fun m!82970 () Bool)

(assert (=> b!98536 m!82970))

(declare-fun m!82972 () Bool)

(assert (=> b!98539 m!82972))

(assert (=> b!98538 m!82968))

(assert (=> b!98538 m!82970))

(declare-fun m!82974 () Bool)

(assert (=> b!98535 m!82974))

(declare-fun m!82976 () Bool)

(assert (=> b!98534 m!82976))

(declare-fun m!82978 () Bool)

(assert (=> b!98537 m!82978))

(assert (=> d!22679 d!22791))

(declare-fun d!22793 () Bool)

(declare-fun e!54617 () Bool)

(assert (=> d!22793 e!54617))

(declare-fun res!47923 () Bool)

(assert (=> d!22793 (=> (not res!47923) (not e!54617))))

(declare-fun lt!26470 () Conc!493)

(assert (=> d!22793 (= res!47923 (isBalanced!120 lt!26470))))

(declare-fun ++!233 (Conc!493 Conc!493) Conc!493)

(declare-fun fill!24 (Int Token!448) IArray!987)

(assert (=> d!22793 (= lt!26470 (++!233 (Leaf!802 (fill!24 1 (h!6986 lt!26223)) 1) (c!24034 (seqFromList!187 (t!21122 lt!26223)))))))

(assert (=> d!22793 (isBalanced!120 (c!24034 (seqFromList!187 (t!21122 lt!26223))))))

(assert (=> d!22793 (= (prepend!116 (c!24034 (seqFromList!187 (t!21122 lt!26223))) (h!6986 lt!26223)) lt!26470)))

(declare-fun b!98542 () Bool)

(assert (=> b!98542 (= e!54617 (= (list!629 lt!26470) (Cons!1589 (h!6986 lt!26223) (list!629 (c!24034 (seqFromList!187 (t!21122 lt!26223)))))))))

(assert (= (and d!22793 res!47923) b!98542))

(declare-fun m!82980 () Bool)

(assert (=> d!22793 m!82980))

(declare-fun m!82982 () Bool)

(assert (=> d!22793 m!82982))

(declare-fun m!82984 () Bool)

(assert (=> d!22793 m!82984))

(declare-fun m!82986 () Bool)

(assert (=> d!22793 m!82986))

(declare-fun m!82988 () Bool)

(assert (=> b!98542 m!82988))

(declare-fun m!82990 () Bool)

(assert (=> b!98542 m!82990))

(assert (=> d!22679 d!22793))

(declare-fun b!98610 () Bool)

(declare-fun e!54651 () Bool)

(declare-fun e!54650 () Bool)

(assert (=> b!98610 (= e!54651 e!54650)))

(declare-fun res!47981 () Bool)

(assert (=> b!98610 (=> (not res!47981) (not e!54650))))

(declare-fun lt!26513 () Option!169)

(assert (=> b!98610 (= res!47981 (matchR!40 (regex!346 (h!6985 rules!2471)) (list!628 (charsOf!79 (_1!1064 (get!402 lt!26513))))))))

(declare-fun b!98611 () Bool)

(declare-fun res!47979 () Bool)

(assert (=> b!98611 (=> (not res!47979) (not e!54650))))

(assert (=> b!98611 (= res!47979 (= (++!229 (list!628 (charsOf!79 (_1!1064 (get!402 lt!26513)))) (_2!1064 (get!402 lt!26513))) input!2238))))

(declare-fun b!98612 () Bool)

(declare-fun e!54653 () Option!169)

(declare-datatypes ((tuple2!1726 0))(
  ( (tuple2!1727 (_1!1070 List!1592) (_2!1070 List!1592)) )
))
(declare-fun lt!26514 () tuple2!1726)

(assert (=> b!98612 (= e!54653 (Some!168 (tuple2!1715 (Token!449 (apply!252 (transformation!346 (h!6985 rules!2471)) (seqFromList!186 (_1!1070 lt!26514))) (h!6985 rules!2471) (size!1404 (seqFromList!186 (_1!1070 lt!26514))) (_1!1070 lt!26514)) (_2!1070 lt!26514))))))

(declare-fun lt!26517 () Unit!1045)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!25 (Regex!414 List!1592) Unit!1045)

(assert (=> b!98612 (= lt!26517 (longestMatchIsAcceptedByMatchOrIsEmpty!25 (regex!346 (h!6985 rules!2471)) input!2238))))

(declare-fun res!47975 () Bool)

(declare-fun findLongestMatchInner!24 (Regex!414 List!1592 Int List!1592 List!1592 Int) tuple2!1726)

(assert (=> b!98612 (= res!47975 (isEmpty!679 (_1!1070 (findLongestMatchInner!24 (regex!346 (h!6985 rules!2471)) Nil!1586 (size!1400 Nil!1586) input!2238 input!2238 (size!1400 input!2238)))))))

(declare-fun e!54652 () Bool)

(assert (=> b!98612 (=> res!47975 e!54652)))

(assert (=> b!98612 e!54652))

(declare-fun lt!26516 () Unit!1045)

(assert (=> b!98612 (= lt!26516 lt!26517)))

(declare-fun lt!26515 () Unit!1045)

(declare-fun lemmaSemiInverse!23 (TokenValueInjection!496 BalanceConc!988) Unit!1045)

(assert (=> b!98612 (= lt!26515 (lemmaSemiInverse!23 (transformation!346 (h!6985 rules!2471)) (seqFromList!186 (_1!1070 lt!26514))))))

(declare-fun b!98613 () Bool)

(assert (=> b!98613 (= e!54653 None!168)))

(declare-fun b!98615 () Bool)

(declare-fun res!47976 () Bool)

(assert (=> b!98615 (=> (not res!47976) (not e!54650))))

(assert (=> b!98615 (= res!47976 (= (rule!847 (_1!1064 (get!402 lt!26513))) (h!6985 rules!2471)))))

(declare-fun b!98616 () Bool)

(declare-fun res!47978 () Bool)

(assert (=> b!98616 (=> (not res!47978) (not e!54650))))

(assert (=> b!98616 (= res!47978 (= (value!12756 (_1!1064 (get!402 lt!26513))) (apply!252 (transformation!346 (rule!847 (_1!1064 (get!402 lt!26513)))) (seqFromList!186 (originalCharacters!395 (_1!1064 (get!402 lt!26513)))))))))

(declare-fun b!98617 () Bool)

(assert (=> b!98617 (= e!54650 (= (size!1399 (_1!1064 (get!402 lt!26513))) (size!1400 (originalCharacters!395 (_1!1064 (get!402 lt!26513))))))))

(declare-fun b!98618 () Bool)

(assert (=> b!98618 (= e!54652 (matchR!40 (regex!346 (h!6985 rules!2471)) (_1!1070 (findLongestMatchInner!24 (regex!346 (h!6985 rules!2471)) Nil!1586 (size!1400 Nil!1586) input!2238 input!2238 (size!1400 input!2238)))))))

(declare-fun d!22795 () Bool)

(assert (=> d!22795 e!54651))

(declare-fun res!47980 () Bool)

(assert (=> d!22795 (=> res!47980 e!54651)))

(assert (=> d!22795 (= res!47980 (isEmpty!682 lt!26513))))

(assert (=> d!22795 (= lt!26513 e!54653)))

(declare-fun c!24109 () Bool)

(assert (=> d!22795 (= c!24109 (isEmpty!679 (_1!1070 lt!26514)))))

(declare-fun findLongestMatch!23 (Regex!414 List!1592) tuple2!1726)

(assert (=> d!22795 (= lt!26514 (findLongestMatch!23 (regex!346 (h!6985 rules!2471)) input!2238))))

(assert (=> d!22795 (ruleValid!39 thiss!19403 (h!6985 rules!2471))))

(assert (=> d!22795 (= (maxPrefixOneRule!36 thiss!19403 (h!6985 rules!2471) input!2238) lt!26513)))

(declare-fun b!98614 () Bool)

(declare-fun res!47977 () Bool)

(assert (=> b!98614 (=> (not res!47977) (not e!54650))))

(assert (=> b!98614 (= res!47977 (< (size!1400 (_2!1064 (get!402 lt!26513))) (size!1400 input!2238)))))

(assert (= (and d!22795 c!24109) b!98613))

(assert (= (and d!22795 (not c!24109)) b!98612))

(assert (= (and b!98612 (not res!47975)) b!98618))

(assert (= (and d!22795 (not res!47980)) b!98610))

(assert (= (and b!98610 res!47981) b!98611))

(assert (= (and b!98611 res!47979) b!98614))

(assert (= (and b!98614 res!47977) b!98615))

(assert (= (and b!98615 res!47976) b!98616))

(assert (= (and b!98616 res!47978) b!98617))

(declare-fun m!83084 () Bool)

(assert (=> b!98614 m!83084))

(declare-fun m!83086 () Bool)

(assert (=> b!98614 m!83086))

(assert (=> b!98614 m!82456))

(assert (=> b!98616 m!83084))

(declare-fun m!83088 () Bool)

(assert (=> b!98616 m!83088))

(assert (=> b!98616 m!83088))

(declare-fun m!83090 () Bool)

(assert (=> b!98616 m!83090))

(declare-fun m!83092 () Bool)

(assert (=> b!98618 m!83092))

(assert (=> b!98618 m!82456))

(assert (=> b!98618 m!83092))

(assert (=> b!98618 m!82456))

(declare-fun m!83094 () Bool)

(assert (=> b!98618 m!83094))

(declare-fun m!83096 () Bool)

(assert (=> b!98618 m!83096))

(assert (=> b!98611 m!83084))

(declare-fun m!83098 () Bool)

(assert (=> b!98611 m!83098))

(assert (=> b!98611 m!83098))

(declare-fun m!83100 () Bool)

(assert (=> b!98611 m!83100))

(assert (=> b!98611 m!83100))

(declare-fun m!83102 () Bool)

(assert (=> b!98611 m!83102))

(assert (=> b!98615 m!83084))

(assert (=> b!98617 m!83084))

(declare-fun m!83104 () Bool)

(assert (=> b!98617 m!83104))

(assert (=> b!98612 m!82456))

(declare-fun m!83106 () Bool)

(assert (=> b!98612 m!83106))

(declare-fun m!83108 () Bool)

(assert (=> b!98612 m!83108))

(assert (=> b!98612 m!83106))

(declare-fun m!83110 () Bool)

(assert (=> b!98612 m!83110))

(assert (=> b!98612 m!83106))

(assert (=> b!98612 m!83106))

(declare-fun m!83112 () Bool)

(assert (=> b!98612 m!83112))

(declare-fun m!83114 () Bool)

(assert (=> b!98612 m!83114))

(assert (=> b!98612 m!83092))

(assert (=> b!98612 m!82456))

(assert (=> b!98612 m!83094))

(assert (=> b!98612 m!83092))

(declare-fun m!83116 () Bool)

(assert (=> b!98612 m!83116))

(assert (=> b!98610 m!83084))

(assert (=> b!98610 m!83098))

(assert (=> b!98610 m!83098))

(assert (=> b!98610 m!83100))

(assert (=> b!98610 m!83100))

(declare-fun m!83118 () Bool)

(assert (=> b!98610 m!83118))

(declare-fun m!83120 () Bool)

(assert (=> d!22795 m!83120))

(declare-fun m!83122 () Bool)

(assert (=> d!22795 m!83122))

(declare-fun m!83124 () Bool)

(assert (=> d!22795 m!83124))

(assert (=> d!22795 m!82856))

(assert (=> bm!4373 d!22795))

(declare-fun d!22817 () Bool)

(declare-fun e!54656 () Bool)

(assert (=> d!22817 e!54656))

(declare-fun res!47984 () Bool)

(assert (=> d!22817 (=> (not res!47984) (not e!54656))))

(declare-fun lt!26520 () BalanceConc!988)

(assert (=> d!22817 (= res!47984 (= (list!628 lt!26520) input!2238))))

(declare-fun fromList!54 (List!1592) Conc!492)

(assert (=> d!22817 (= lt!26520 (BalanceConc!989 (fromList!54 input!2238)))))

(assert (=> d!22817 (= (fromListB!82 input!2238) lt!26520)))

(declare-fun b!98621 () Bool)

(declare-fun isBalanced!122 (Conc!492) Bool)

(assert (=> b!98621 (= e!54656 (isBalanced!122 (fromList!54 input!2238)))))

(assert (= (and d!22817 res!47984) b!98621))

(declare-fun m!83126 () Bool)

(assert (=> d!22817 m!83126))

(declare-fun m!83128 () Bool)

(assert (=> d!22817 m!83128))

(assert (=> b!98621 m!83128))

(assert (=> b!98621 m!83128))

(declare-fun m!83130 () Bool)

(assert (=> b!98621 m!83130))

(assert (=> d!22651 d!22817))

(declare-fun d!22819 () Bool)

(assert (=> d!22819 true))

(declare-fun lambda!1777 () Int)

(declare-fun order!711 () Int)

(declare-fun order!713 () Int)

(declare-fun dynLambda!460 (Int Int) Int)

(declare-fun dynLambda!461 (Int Int) Int)

(assert (=> d!22819 (< (dynLambda!460 order!711 (toChars!760 (transformation!346 (h!6985 rules!2471)))) (dynLambda!461 order!713 lambda!1777))))

(assert (=> d!22819 true))

(assert (=> d!22819 (< (dynLambda!455 order!701 (toValue!901 (transformation!346 (h!6985 rules!2471)))) (dynLambda!461 order!713 lambda!1777))))

(declare-fun Forall!61 (Int) Bool)

(assert (=> d!22819 (= (semiInverseModEq!82 (toChars!760 (transformation!346 (h!6985 rules!2471))) (toValue!901 (transformation!346 (h!6985 rules!2471)))) (Forall!61 lambda!1777))))

(declare-fun bs!9657 () Bool)

(assert (= bs!9657 d!22819))

(declare-fun m!83132 () Bool)

(assert (=> bs!9657 m!83132))

(assert (=> d!22657 d!22819))

(declare-fun d!22821 () Bool)

(assert (=> d!22821 (= (list!626 (seqFromList!187 ($colon$colon!33 (t!21122 lt!26223) (h!6986 lt!26223)))) (list!629 (c!24034 (seqFromList!187 ($colon$colon!33 (t!21122 lt!26223) (h!6986 lt!26223))))))))

(declare-fun bs!9658 () Bool)

(assert (= bs!9658 d!22821))

(declare-fun m!83134 () Bool)

(assert (=> bs!9658 m!83134))

(assert (=> d!22663 d!22821))

(assert (=> d!22663 d!22669))

(declare-fun d!22823 () Bool)

(assert (=> d!22823 (= (list!626 (_1!1063 lt!26224)) (list!626 (prepend!114 (seqFromList!187 (t!21122 lt!26223)) (h!6986 lt!26223))))))

(assert (=> d!22823 true))

(declare-fun _$1!9877 () Unit!1045)

(assert (=> d!22823 (= (choose!1373 (h!6986 lt!26223) (t!21122 lt!26223) (_1!1063 lt!26224)) _$1!9877)))

(declare-fun bs!9659 () Bool)

(assert (= bs!9659 d!22823))

(assert (=> bs!9659 m!82438))

(assert (=> bs!9659 m!82446))

(assert (=> bs!9659 m!82446))

(assert (=> bs!9659 m!82452))

(assert (=> bs!9659 m!82452))

(assert (=> bs!9659 m!82454))

(assert (=> d!22663 d!22823))

(assert (=> d!22663 d!22653))

(assert (=> d!22663 d!22677))

(assert (=> d!22663 d!22679))

(declare-fun d!22825 () Bool)

(assert (=> d!22825 (= (seqFromList!187 ($colon$colon!33 (t!21122 lt!26223) (h!6986 lt!26223))) (fromListB!83 ($colon$colon!33 (t!21122 lt!26223) (h!6986 lt!26223))))))

(declare-fun bs!9660 () Bool)

(assert (= bs!9660 d!22825))

(assert (=> bs!9660 m!82608))

(declare-fun m!83136 () Bool)

(assert (=> bs!9660 m!83136))

(assert (=> d!22663 d!22825))

(declare-fun d!22827 () Bool)

(assert (=> d!22827 (= ($colon$colon!33 (t!21122 lt!26223) (h!6986 lt!26223)) (Cons!1589 (h!6986 lt!26223) (t!21122 lt!26223)))))

(assert (=> d!22663 d!22827))

(declare-fun d!22829 () Bool)

(declare-fun lt!26521 () Int)

(assert (=> d!22829 (>= lt!26521 0)))

(declare-fun e!54657 () Int)

(assert (=> d!22829 (= lt!26521 e!54657)))

(declare-fun c!24111 () Bool)

(assert (=> d!22829 (= c!24111 (is-Nil!1586 (_2!1064 (get!402 lt!26268))))))

(assert (=> d!22829 (= (size!1400 (_2!1064 (get!402 lt!26268))) lt!26521)))

(declare-fun b!98626 () Bool)

(assert (=> b!98626 (= e!54657 0)))

(declare-fun b!98627 () Bool)

(assert (=> b!98627 (= e!54657 (+ 1 (size!1400 (t!21119 (_2!1064 (get!402 lt!26268))))))))

(assert (= (and d!22829 c!24111) b!98626))

(assert (= (and d!22829 (not c!24111)) b!98627))

(declare-fun m!83138 () Bool)

(assert (=> b!98627 m!83138))

(assert (=> b!98218 d!22829))

(assert (=> b!98218 d!22771))

(assert (=> b!98218 d!22675))

(declare-fun d!22831 () Bool)

(declare-fun lt!26524 () Int)

(assert (=> d!22831 (= lt!26524 (size!1400 (list!628 (_2!1063 lt!26242))))))

(assert (=> d!22831 (= lt!26524 (size!1407 (c!24032 (_2!1063 lt!26242))))))

(assert (=> d!22831 (= (size!1404 (_2!1063 lt!26242)) lt!26524)))

(declare-fun bs!9661 () Bool)

(assert (= bs!9661 d!22831))

(assert (=> bs!9661 m!82508))

(assert (=> bs!9661 m!82508))

(declare-fun m!83140 () Bool)

(assert (=> bs!9661 m!83140))

(declare-fun m!83142 () Bool)

(assert (=> bs!9661 m!83142))

(assert (=> b!98166 d!22831))

(declare-fun d!22833 () Bool)

(declare-fun lt!26525 () Int)

(assert (=> d!22833 (= lt!26525 (size!1400 (list!628 (seqFromList!186 input!2238))))))

(assert (=> d!22833 (= lt!26525 (size!1407 (c!24032 (seqFromList!186 input!2238))))))

(assert (=> d!22833 (= (size!1404 (seqFromList!186 input!2238)) lt!26525)))

(declare-fun bs!9662 () Bool)

(assert (= bs!9662 d!22833))

(assert (=> bs!9662 m!82462))

(assert (=> bs!9662 m!82510))

(assert (=> bs!9662 m!82510))

(declare-fun m!83144 () Bool)

(assert (=> bs!9662 m!83144))

(declare-fun m!83146 () Bool)

(assert (=> bs!9662 m!83146))

(assert (=> b!98166 d!22833))

(declare-fun d!22835 () Bool)

(assert (=> d!22835 (= (isDefined!51 lt!26268) (not (isEmpty!682 lt!26268)))))

(declare-fun bs!9663 () Bool)

(assert (= bs!9663 d!22835))

(assert (=> bs!9663 m!82590))

(assert (=> b!98215 d!22835))

(declare-fun d!22837 () Bool)

(assert (=> d!22837 (= (list!626 (_1!1063 lt!26242)) (list!629 (c!24034 (_1!1063 lt!26242))))))

(declare-fun bs!9664 () Bool)

(assert (= bs!9664 d!22837))

(declare-fun m!83148 () Bool)

(assert (=> bs!9664 m!83148))

(assert (=> b!98162 d!22837))

(declare-fun b!98638 () Bool)

(declare-fun e!54666 () Bool)

(declare-fun lt!26533 () tuple2!1720)

(declare-fun isEmpty!688 (List!1595) Bool)

(assert (=> b!98638 (= e!54666 (not (isEmpty!688 (_1!1067 lt!26533))))))

(declare-fun b!98639 () Bool)

(declare-fun e!54664 () tuple2!1720)

(declare-fun lt!26532 () Option!169)

(declare-fun lt!26534 () tuple2!1720)

(assert (=> b!98639 (= e!54664 (tuple2!1721 (Cons!1589 (_1!1064 (v!12941 lt!26532)) (_1!1067 lt!26534)) (_2!1067 lt!26534)))))

(assert (=> b!98639 (= lt!26534 (lexList!68 thiss!19403 rules!2471 (_2!1064 (v!12941 lt!26532))))))

(declare-fun b!98640 () Bool)

(assert (=> b!98640 (= e!54664 (tuple2!1721 Nil!1589 (list!628 (seqFromList!186 input!2238))))))

(declare-fun b!98641 () Bool)

(declare-fun e!54665 () Bool)

(assert (=> b!98641 (= e!54665 e!54666)))

(declare-fun res!47987 () Bool)

(assert (=> b!98641 (= res!47987 (< (size!1400 (_2!1067 lt!26533)) (size!1400 (list!628 (seqFromList!186 input!2238)))))))

(assert (=> b!98641 (=> (not res!47987) (not e!54666))))

(declare-fun d!22839 () Bool)

(assert (=> d!22839 e!54665))

(declare-fun c!24117 () Bool)

(assert (=> d!22839 (= c!24117 (> (size!1408 (_1!1067 lt!26533)) 0))))

(assert (=> d!22839 (= lt!26533 e!54664)))

(declare-fun c!24116 () Bool)

(assert (=> d!22839 (= c!24116 (is-Some!168 lt!26532))))

(assert (=> d!22839 (= lt!26532 (maxPrefix!78 thiss!19403 rules!2471 (list!628 (seqFromList!186 input!2238))))))

(assert (=> d!22839 (= (lexList!68 thiss!19403 rules!2471 (list!628 (seqFromList!186 input!2238))) lt!26533)))

(declare-fun b!98642 () Bool)

(assert (=> b!98642 (= e!54665 (= (_2!1067 lt!26533) (list!628 (seqFromList!186 input!2238))))))

(assert (= (and d!22839 c!24116) b!98639))

(assert (= (and d!22839 (not c!24116)) b!98640))

(assert (= (and d!22839 c!24117) b!98641))

(assert (= (and d!22839 (not c!24117)) b!98642))

(assert (= (and b!98641 res!47987) b!98638))

(declare-fun m!83150 () Bool)

(assert (=> b!98638 m!83150))

(declare-fun m!83152 () Bool)

(assert (=> b!98639 m!83152))

(declare-fun m!83154 () Bool)

(assert (=> b!98641 m!83154))

(assert (=> b!98641 m!82510))

(assert (=> b!98641 m!83144))

(declare-fun m!83156 () Bool)

(assert (=> d!22839 m!83156))

(assert (=> d!22839 m!82510))

(declare-fun m!83158 () Bool)

(assert (=> d!22839 m!83158))

(assert (=> b!98162 d!22839))

(declare-fun d!22841 () Bool)

(assert (=> d!22841 (= (list!628 (seqFromList!186 input!2238)) (list!632 (c!24032 (seqFromList!186 input!2238))))))

(declare-fun bs!9665 () Bool)

(assert (= bs!9665 d!22841))

(declare-fun m!83160 () Bool)

(assert (=> bs!9665 m!83160))

(assert (=> b!98162 d!22841))

(declare-fun d!22843 () Bool)

(assert (=> d!22843 (= (list!626 lt!26282) (list!629 (c!24034 lt!26282)))))

(declare-fun bs!9666 () Bool)

(assert (= bs!9666 d!22843))

(declare-fun m!83162 () Bool)

(assert (=> bs!9666 m!83162))

(assert (=> b!98234 d!22843))

(declare-fun d!22845 () Bool)

(assert (=> d!22845 (= (list!626 (seqFromList!187 (t!21122 lt!26223))) (list!629 (c!24034 (seqFromList!187 (t!21122 lt!26223)))))))

(declare-fun bs!9667 () Bool)

(assert (= bs!9667 d!22845))

(assert (=> bs!9667 m!82990))

(assert (=> b!98234 d!22845))

(declare-fun d!22847 () Bool)

(declare-fun e!54682 () Bool)

(assert (=> d!22847 e!54682))

(declare-fun c!24126 () Bool)

(assert (=> d!22847 (= c!24126 (is-EmptyExpr!414 (regex!346 (rule!847 (_1!1064 (get!402 lt!26268))))))))

(declare-fun lt!26537 () Bool)

(declare-fun e!54687 () Bool)

(assert (=> d!22847 (= lt!26537 e!54687)))

(declare-fun c!24125 () Bool)

(assert (=> d!22847 (= c!24125 (isEmpty!679 (list!628 (charsOf!79 (_1!1064 (get!402 lt!26268))))))))

(declare-fun validRegex!55 (Regex!414) Bool)

(assert (=> d!22847 (validRegex!55 (regex!346 (rule!847 (_1!1064 (get!402 lt!26268)))))))

(assert (=> d!22847 (= (matchR!40 (regex!346 (rule!847 (_1!1064 (get!402 lt!26268)))) (list!628 (charsOf!79 (_1!1064 (get!402 lt!26268))))) lt!26537)))

(declare-fun b!98671 () Bool)

(declare-fun res!48011 () Bool)

(declare-fun e!54684 () Bool)

(assert (=> b!98671 (=> (not res!48011) (not e!54684))))

(declare-fun call!4386 () Bool)

(assert (=> b!98671 (= res!48011 (not call!4386))))

(declare-fun b!98672 () Bool)

(declare-fun res!48006 () Bool)

(declare-fun e!54685 () Bool)

(assert (=> b!98672 (=> res!48006 e!54685)))

(assert (=> b!98672 (= res!48006 (not (is-ElementMatch!414 (regex!346 (rule!847 (_1!1064 (get!402 lt!26268)))))))))

(declare-fun e!54686 () Bool)

(assert (=> b!98672 (= e!54686 e!54685)))

(declare-fun b!98673 () Bool)

(assert (=> b!98673 (= e!54682 (= lt!26537 call!4386))))

(declare-fun bm!4381 () Bool)

(assert (=> bm!4381 (= call!4386 (isEmpty!679 (list!628 (charsOf!79 (_1!1064 (get!402 lt!26268))))))))

(declare-fun b!98674 () Bool)

(declare-fun res!48007 () Bool)

(declare-fun e!54683 () Bool)

(assert (=> b!98674 (=> res!48007 e!54683)))

(assert (=> b!98674 (= res!48007 (not (isEmpty!679 (tail!163 (list!628 (charsOf!79 (_1!1064 (get!402 lt!26268))))))))))

(declare-fun b!98675 () Bool)

(declare-fun nullable!48 (Regex!414) Bool)

(assert (=> b!98675 (= e!54687 (nullable!48 (regex!346 (rule!847 (_1!1064 (get!402 lt!26268))))))))

(declare-fun b!98676 () Bool)

(assert (=> b!98676 (= e!54686 (not lt!26537))))

(declare-fun b!98677 () Bool)

(declare-fun derivativeStep!30 (Regex!414 C!1750) Regex!414)

(assert (=> b!98677 (= e!54687 (matchR!40 (derivativeStep!30 (regex!346 (rule!847 (_1!1064 (get!402 lt!26268)))) (head!451 (list!628 (charsOf!79 (_1!1064 (get!402 lt!26268)))))) (tail!163 (list!628 (charsOf!79 (_1!1064 (get!402 lt!26268)))))))))

(declare-fun b!98678 () Bool)

(assert (=> b!98678 (= e!54683 (not (= (head!451 (list!628 (charsOf!79 (_1!1064 (get!402 lt!26268))))) (c!24033 (regex!346 (rule!847 (_1!1064 (get!402 lt!26268))))))))))

(declare-fun b!98679 () Bool)

(declare-fun res!48004 () Bool)

(assert (=> b!98679 (=> (not res!48004) (not e!54684))))

(assert (=> b!98679 (= res!48004 (isEmpty!679 (tail!163 (list!628 (charsOf!79 (_1!1064 (get!402 lt!26268)))))))))

(declare-fun b!98680 () Bool)

(declare-fun res!48010 () Bool)

(assert (=> b!98680 (=> res!48010 e!54685)))

(assert (=> b!98680 (= res!48010 e!54684)))

(declare-fun res!48009 () Bool)

(assert (=> b!98680 (=> (not res!48009) (not e!54684))))

(assert (=> b!98680 (= res!48009 lt!26537)))

(declare-fun b!98681 () Bool)

(declare-fun e!54681 () Bool)

(assert (=> b!98681 (= e!54681 e!54683)))

(declare-fun res!48008 () Bool)

(assert (=> b!98681 (=> res!48008 e!54683)))

(assert (=> b!98681 (= res!48008 call!4386)))

(declare-fun b!98682 () Bool)

(assert (=> b!98682 (= e!54684 (= (head!451 (list!628 (charsOf!79 (_1!1064 (get!402 lt!26268))))) (c!24033 (regex!346 (rule!847 (_1!1064 (get!402 lt!26268)))))))))

(declare-fun b!98683 () Bool)

(assert (=> b!98683 (= e!54685 e!54681)))

(declare-fun res!48005 () Bool)

(assert (=> b!98683 (=> (not res!48005) (not e!54681))))

(assert (=> b!98683 (= res!48005 (not lt!26537))))

(declare-fun b!98684 () Bool)

(assert (=> b!98684 (= e!54682 e!54686)))

(declare-fun c!24124 () Bool)

(assert (=> b!98684 (= c!24124 (is-EmptyLang!414 (regex!346 (rule!847 (_1!1064 (get!402 lt!26268))))))))

(assert (= (and d!22847 c!24125) b!98675))

(assert (= (and d!22847 (not c!24125)) b!98677))

(assert (= (and d!22847 c!24126) b!98673))

(assert (= (and d!22847 (not c!24126)) b!98684))

(assert (= (and b!98684 c!24124) b!98676))

(assert (= (and b!98684 (not c!24124)) b!98672))

(assert (= (and b!98672 (not res!48006)) b!98680))

(assert (= (and b!98680 res!48009) b!98671))

(assert (= (and b!98671 res!48011) b!98679))

(assert (= (and b!98679 res!48004) b!98682))

(assert (= (and b!98680 (not res!48010)) b!98683))

(assert (= (and b!98683 res!48005) b!98681))

(assert (= (and b!98681 (not res!48008)) b!98674))

(assert (= (and b!98674 (not res!48007)) b!98678))

(assert (= (or b!98673 b!98671 b!98681) bm!4381))

(assert (=> b!98678 m!82570))

(declare-fun m!83164 () Bool)

(assert (=> b!98678 m!83164))

(assert (=> b!98682 m!82570))

(assert (=> b!98682 m!83164))

(assert (=> b!98679 m!82570))

(declare-fun m!83166 () Bool)

(assert (=> b!98679 m!83166))

(assert (=> b!98679 m!83166))

(declare-fun m!83168 () Bool)

(assert (=> b!98679 m!83168))

(assert (=> b!98674 m!82570))

(assert (=> b!98674 m!83166))

(assert (=> b!98674 m!83166))

(assert (=> b!98674 m!83168))

(assert (=> bm!4381 m!82570))

(declare-fun m!83170 () Bool)

(assert (=> bm!4381 m!83170))

(declare-fun m!83172 () Bool)

(assert (=> b!98675 m!83172))

(assert (=> d!22847 m!82570))

(assert (=> d!22847 m!83170))

(declare-fun m!83174 () Bool)

(assert (=> d!22847 m!83174))

(assert (=> b!98677 m!82570))

(assert (=> b!98677 m!83164))

(assert (=> b!98677 m!83164))

(declare-fun m!83176 () Bool)

(assert (=> b!98677 m!83176))

(assert (=> b!98677 m!82570))

(assert (=> b!98677 m!83166))

(assert (=> b!98677 m!83176))

(assert (=> b!98677 m!83166))

(declare-fun m!83178 () Bool)

(assert (=> b!98677 m!83178))

(assert (=> b!98217 d!22847))

(assert (=> b!98217 d!22771))

(assert (=> b!98217 d!22785))

(assert (=> b!98217 d!22787))

(declare-fun d!22849 () Bool)

(assert (=> d!22849 (= (list!628 (_2!1063 lt!26242)) (list!632 (c!24032 (_2!1063 lt!26242))))))

(declare-fun bs!9668 () Bool)

(assert (= bs!9668 d!22849))

(declare-fun m!83180 () Bool)

(assert (=> bs!9668 m!83180))

(assert (=> b!98164 d!22849))

(assert (=> b!98164 d!22839))

(assert (=> b!98164 d!22841))

(declare-fun b!98694 () Bool)

(declare-fun e!54692 () List!1592)

(assert (=> b!98694 (= e!54692 (Cons!1586 (h!6983 (list!628 (charsOf!79 (_1!1064 (get!402 lt!26268))))) (++!229 (t!21119 (list!628 (charsOf!79 (_1!1064 (get!402 lt!26268))))) (_2!1064 (get!402 lt!26268)))))))

(declare-fun d!22851 () Bool)

(declare-fun e!54693 () Bool)

(assert (=> d!22851 e!54693))

(declare-fun res!48017 () Bool)

(assert (=> d!22851 (=> (not res!48017) (not e!54693))))

(declare-fun lt!26540 () List!1592)

(declare-fun content!119 (List!1592) (Set C!1750))

(assert (=> d!22851 (= res!48017 (= (content!119 lt!26540) (set.union (content!119 (list!628 (charsOf!79 (_1!1064 (get!402 lt!26268))))) (content!119 (_2!1064 (get!402 lt!26268))))))))

(assert (=> d!22851 (= lt!26540 e!54692)))

(declare-fun c!24129 () Bool)

(assert (=> d!22851 (= c!24129 (is-Nil!1586 (list!628 (charsOf!79 (_1!1064 (get!402 lt!26268))))))))

(assert (=> d!22851 (= (++!229 (list!628 (charsOf!79 (_1!1064 (get!402 lt!26268)))) (_2!1064 (get!402 lt!26268))) lt!26540)))

(declare-fun b!98695 () Bool)

(declare-fun res!48016 () Bool)

(assert (=> b!98695 (=> (not res!48016) (not e!54693))))

(assert (=> b!98695 (= res!48016 (= (size!1400 lt!26540) (+ (size!1400 (list!628 (charsOf!79 (_1!1064 (get!402 lt!26268))))) (size!1400 (_2!1064 (get!402 lt!26268))))))))

(declare-fun b!98696 () Bool)

(assert (=> b!98696 (= e!54693 (or (not (= (_2!1064 (get!402 lt!26268)) Nil!1586)) (= lt!26540 (list!628 (charsOf!79 (_1!1064 (get!402 lt!26268)))))))))

(declare-fun b!98693 () Bool)

(assert (=> b!98693 (= e!54692 (_2!1064 (get!402 lt!26268)))))

(assert (= (and d!22851 c!24129) b!98693))

(assert (= (and d!22851 (not c!24129)) b!98694))

(assert (= (and d!22851 res!48017) b!98695))

(assert (= (and b!98695 res!48016) b!98696))

(declare-fun m!83182 () Bool)

(assert (=> b!98694 m!83182))

(declare-fun m!83184 () Bool)

(assert (=> d!22851 m!83184))

(assert (=> d!22851 m!82570))

(declare-fun m!83186 () Bool)

(assert (=> d!22851 m!83186))

(declare-fun m!83188 () Bool)

(assert (=> d!22851 m!83188))

(declare-fun m!83190 () Bool)

(assert (=> b!98695 m!83190))

(assert (=> b!98695 m!82570))

(declare-fun m!83192 () Bool)

(assert (=> b!98695 m!83192))

(assert (=> b!98695 m!82586))

(assert (=> b!98216 d!22851))

(assert (=> b!98216 d!22785))

(assert (=> b!98216 d!22787))

(assert (=> b!98216 d!22771))

(declare-fun d!22853 () Bool)

(declare-fun lt!26543 () Bool)

(assert (=> d!22853 (= lt!26543 (isEmpty!688 (list!626 (_1!1063 lt!26242))))))

(assert (=> d!22853 (= lt!26543 (isEmpty!687 (c!24034 (_1!1063 lt!26242))))))

(assert (=> d!22853 (= (isEmpty!681 (_1!1063 lt!26242)) lt!26543)))

(declare-fun bs!9669 () Bool)

(assert (= bs!9669 d!22853))

(assert (=> bs!9669 m!82524))

(assert (=> bs!9669 m!82524))

(declare-fun m!83194 () Bool)

(assert (=> bs!9669 m!83194))

(declare-fun m!83196 () Bool)

(assert (=> bs!9669 m!83196))

(assert (=> b!98163 d!22853))

(declare-fun b!98697 () Bool)

(declare-fun e!54694 () Bool)

(declare-fun tp!56503 () Bool)

(assert (=> b!98697 (= e!54694 (and tp_is_empty!751 tp!56503))))

(assert (=> b!98241 (= tp!56439 e!54694)))

(assert (= (and b!98241 (is-Cons!1586 (t!21119 (t!21119 input!2238)))) b!98697))

(declare-fun b!98698 () Bool)

(declare-fun e!54695 () Bool)

(assert (=> b!98698 (= e!54695 tp_is_empty!751)))

(declare-fun b!98699 () Bool)

(declare-fun tp!56507 () Bool)

(declare-fun tp!56506 () Bool)

(assert (=> b!98699 (= e!54695 (and tp!56507 tp!56506))))

(assert (=> b!98265 (= tp!56465 e!54695)))

(declare-fun b!98701 () Bool)

(declare-fun tp!56505 () Bool)

(declare-fun tp!56508 () Bool)

(assert (=> b!98701 (= e!54695 (and tp!56505 tp!56508))))

(declare-fun b!98700 () Bool)

(declare-fun tp!56504 () Bool)

(assert (=> b!98700 (= e!54695 tp!56504)))

(assert (= (and b!98265 (is-ElementMatch!414 (regOne!1340 (regex!346 (h!6985 rules!2471))))) b!98698))

(assert (= (and b!98265 (is-Concat!750 (regOne!1340 (regex!346 (h!6985 rules!2471))))) b!98699))

(assert (= (and b!98265 (is-Star!414 (regOne!1340 (regex!346 (h!6985 rules!2471))))) b!98700))

(assert (= (and b!98265 (is-Union!414 (regOne!1340 (regex!346 (h!6985 rules!2471))))) b!98701))

(declare-fun b!98702 () Bool)

(declare-fun e!54696 () Bool)

(assert (=> b!98702 (= e!54696 tp_is_empty!751)))

(declare-fun b!98703 () Bool)

(declare-fun tp!56512 () Bool)

(declare-fun tp!56511 () Bool)

(assert (=> b!98703 (= e!54696 (and tp!56512 tp!56511))))

(assert (=> b!98265 (= tp!56464 e!54696)))

(declare-fun b!98705 () Bool)

(declare-fun tp!56510 () Bool)

(declare-fun tp!56513 () Bool)

(assert (=> b!98705 (= e!54696 (and tp!56510 tp!56513))))

(declare-fun b!98704 () Bool)

(declare-fun tp!56509 () Bool)

(assert (=> b!98704 (= e!54696 tp!56509)))

(assert (= (and b!98265 (is-ElementMatch!414 (regTwo!1340 (regex!346 (h!6985 rules!2471))))) b!98702))

(assert (= (and b!98265 (is-Concat!750 (regTwo!1340 (regex!346 (h!6985 rules!2471))))) b!98703))

(assert (= (and b!98265 (is-Star!414 (regTwo!1340 (regex!346 (h!6985 rules!2471))))) b!98704))

(assert (= (and b!98265 (is-Union!414 (regTwo!1340 (regex!346 (h!6985 rules!2471))))) b!98705))

(declare-fun b!98708 () Bool)

(declare-fun b_free!2949 () Bool)

(declare-fun b_next!2949 () Bool)

(assert (=> b!98708 (= b_free!2949 (not b_next!2949))))

(declare-fun t!21148 () Bool)

(declare-fun tb!2999 () Bool)

(assert (=> (and b!98708 (= (toValue!901 (transformation!346 (h!6985 (t!21121 (t!21121 rules!2471))))) (toValue!901 (transformation!346 (rule!847 (_1!1064 (get!402 lt!26268)))))) t!21148) tb!2999))

(declare-fun result!4346 () Bool)

(assert (= result!4346 result!4334))

(assert (=> d!22773 t!21148))

(declare-fun b_and!4427 () Bool)

(declare-fun tp!56515 () Bool)

(assert (=> b!98708 (= tp!56515 (and (=> t!21148 result!4346) b_and!4427))))

(declare-fun b_free!2951 () Bool)

(declare-fun b_next!2951 () Bool)

(assert (=> b!98708 (= b_free!2951 (not b_next!2951))))

(declare-fun t!21150 () Bool)

(declare-fun tb!3001 () Bool)

(assert (=> (and b!98708 (= (toChars!760 (transformation!346 (h!6985 (t!21121 (t!21121 rules!2471))))) (toChars!760 (transformation!346 (rule!847 (_1!1064 (get!402 lt!26268)))))) t!21150) tb!3001))

(declare-fun result!4348 () Bool)

(assert (= result!4348 result!4340))

(assert (=> d!22787 t!21150))

(declare-fun tp!56516 () Bool)

(declare-fun b_and!4429 () Bool)

(assert (=> b!98708 (= tp!56516 (and (=> t!21150 result!4348) b_and!4429))))

(declare-fun e!54700 () Bool)

(assert (=> b!98708 (= e!54700 (and tp!56515 tp!56516))))

(declare-fun b!98707 () Bool)

(declare-fun e!54698 () Bool)

(declare-fun tp!56514 () Bool)

(assert (=> b!98707 (= e!54698 (and tp!56514 (inv!1927 (tag!524 (h!6985 (t!21121 (t!21121 rules!2471))))) (inv!1930 (transformation!346 (h!6985 (t!21121 (t!21121 rules!2471))))) e!54700))))

(declare-fun b!98706 () Bool)

(declare-fun e!54699 () Bool)

(declare-fun tp!56517 () Bool)

(assert (=> b!98706 (= e!54699 (and e!54698 tp!56517))))

(assert (=> b!98251 (= tp!56451 e!54699)))

(assert (= b!98707 b!98708))

(assert (= b!98706 b!98707))

(assert (= (and b!98251 (is-Cons!1588 (t!21121 (t!21121 rules!2471)))) b!98706))

(declare-fun m!83198 () Bool)

(assert (=> b!98707 m!83198))

(declare-fun m!83200 () Bool)

(assert (=> b!98707 m!83200))

(declare-fun b!98709 () Bool)

(declare-fun e!54701 () Bool)

(assert (=> b!98709 (= e!54701 tp_is_empty!751)))

(declare-fun b!98710 () Bool)

(declare-fun tp!56521 () Bool)

(declare-fun tp!56520 () Bool)

(assert (=> b!98710 (= e!54701 (and tp!56521 tp!56520))))

(assert (=> b!98267 (= tp!56463 e!54701)))

(declare-fun b!98712 () Bool)

(declare-fun tp!56519 () Bool)

(declare-fun tp!56522 () Bool)

(assert (=> b!98712 (= e!54701 (and tp!56519 tp!56522))))

(declare-fun b!98711 () Bool)

(declare-fun tp!56518 () Bool)

(assert (=> b!98711 (= e!54701 tp!56518)))

(assert (= (and b!98267 (is-ElementMatch!414 (regOne!1341 (regex!346 (h!6985 rules!2471))))) b!98709))

(assert (= (and b!98267 (is-Concat!750 (regOne!1341 (regex!346 (h!6985 rules!2471))))) b!98710))

(assert (= (and b!98267 (is-Star!414 (regOne!1341 (regex!346 (h!6985 rules!2471))))) b!98711))

(assert (= (and b!98267 (is-Union!414 (regOne!1341 (regex!346 (h!6985 rules!2471))))) b!98712))

(declare-fun b!98713 () Bool)

(declare-fun e!54702 () Bool)

(assert (=> b!98713 (= e!54702 tp_is_empty!751)))

(declare-fun b!98714 () Bool)

(declare-fun tp!56526 () Bool)

(declare-fun tp!56525 () Bool)

(assert (=> b!98714 (= e!54702 (and tp!56526 tp!56525))))

(assert (=> b!98267 (= tp!56466 e!54702)))

(declare-fun b!98716 () Bool)

(declare-fun tp!56524 () Bool)

(declare-fun tp!56527 () Bool)

(assert (=> b!98716 (= e!54702 (and tp!56524 tp!56527))))

(declare-fun b!98715 () Bool)

(declare-fun tp!56523 () Bool)

(assert (=> b!98715 (= e!54702 tp!56523)))

(assert (= (and b!98267 (is-ElementMatch!414 (regTwo!1341 (regex!346 (h!6985 rules!2471))))) b!98713))

(assert (= (and b!98267 (is-Concat!750 (regTwo!1341 (regex!346 (h!6985 rules!2471))))) b!98714))

(assert (= (and b!98267 (is-Star!414 (regTwo!1341 (regex!346 (h!6985 rules!2471))))) b!98715))

(assert (= (and b!98267 (is-Union!414 (regTwo!1341 (regex!346 (h!6985 rules!2471))))) b!98716))

(declare-fun b!98717 () Bool)

(declare-fun e!54703 () Bool)

(assert (=> b!98717 (= e!54703 tp_is_empty!751)))

(declare-fun b!98718 () Bool)

(declare-fun tp!56531 () Bool)

(declare-fun tp!56530 () Bool)

(assert (=> b!98718 (= e!54703 (and tp!56531 tp!56530))))

(assert (=> b!98266 (= tp!56462 e!54703)))

(declare-fun b!98720 () Bool)

(declare-fun tp!56529 () Bool)

(declare-fun tp!56532 () Bool)

(assert (=> b!98720 (= e!54703 (and tp!56529 tp!56532))))

(declare-fun b!98719 () Bool)

(declare-fun tp!56528 () Bool)

(assert (=> b!98719 (= e!54703 tp!56528)))

(assert (= (and b!98266 (is-ElementMatch!414 (reg!743 (regex!346 (h!6985 rules!2471))))) b!98717))

(assert (= (and b!98266 (is-Concat!750 (reg!743 (regex!346 (h!6985 rules!2471))))) b!98718))

(assert (= (and b!98266 (is-Star!414 (reg!743 (regex!346 (h!6985 rules!2471))))) b!98719))

(assert (= (and b!98266 (is-Union!414 (reg!743 (regex!346 (h!6985 rules!2471))))) b!98720))

(declare-fun b!98721 () Bool)

(declare-fun e!54704 () Bool)

(assert (=> b!98721 (= e!54704 tp_is_empty!751)))

(declare-fun b!98722 () Bool)

(declare-fun tp!56536 () Bool)

(declare-fun tp!56535 () Bool)

(assert (=> b!98722 (= e!54704 (and tp!56536 tp!56535))))

(assert (=> b!98252 (= tp!56448 e!54704)))

(declare-fun b!98724 () Bool)

(declare-fun tp!56534 () Bool)

(declare-fun tp!56537 () Bool)

(assert (=> b!98724 (= e!54704 (and tp!56534 tp!56537))))

(declare-fun b!98723 () Bool)

(declare-fun tp!56533 () Bool)

(assert (=> b!98723 (= e!54704 tp!56533)))

(assert (= (and b!98252 (is-ElementMatch!414 (regex!346 (h!6985 (t!21121 rules!2471))))) b!98721))

(assert (= (and b!98252 (is-Concat!750 (regex!346 (h!6985 (t!21121 rules!2471))))) b!98722))

(assert (= (and b!98252 (is-Star!414 (regex!346 (h!6985 (t!21121 rules!2471))))) b!98723))

(assert (= (and b!98252 (is-Union!414 (regex!346 (h!6985 (t!21121 rules!2471))))) b!98724))

(push 1)

(assert (not d!22777))

(assert (not b!98720))

(assert (not b!98442))

(assert (not b!98611))

(assert (not b!98678))

(assert (not b_next!2943))

(assert (not b!98386))

(assert (not d!22761))

(assert (not b!98486))

(assert (not b!98699))

(assert (not d!22845))

(assert (not b!98542))

(assert (not d!22787))

(assert (not d!22733))

(assert b_and!4421)

(assert (not b!98454))

(assert (not b!98490))

(assert (not b!98485))

(assert (not b!98679))

(assert (not tb!2995))

(assert (not b!98706))

(assert b_and!4425)

(assert (not b!98617))

(assert (not d!22711))

(assert (not b_next!2933))

(assert (not b!98515))

(assert (not d!22847))

(assert (not d!22851))

(assert (not d!22775))

(assert (not b!98641))

(assert (not b!98697))

(assert (not b!98488))

(assert (not d!22849))

(assert (not d!22707))

(assert (not b!98711))

(assert (not b!98491))

(assert (not d!22795))

(assert (not b!98446))

(assert (not b!98473))

(assert (not b!98615))

(assert (not b!98694))

(assert (not b!98677))

(assert (not d!22837))

(assert (not b!98719))

(assert (not b!98387))

(assert (not b!98700))

(assert (not d!22785))

(assert (not d!22841))

(assert (not b!98614))

(assert (not b!98537))

(assert (not b!98722))

(assert (not b!98714))

(assert (not b!98724))

(assert (not b!98521))

(assert (not b!98474))

(assert (not b!98695))

(assert (not b_next!2941))

(assert (not b!98701))

(assert (not b!98420))

(assert (not b!98482))

(assert b_and!4429)

(assert (not d!22833))

(assert (not b!98538))

(assert (not b!98705))

(assert (not d!22825))

(assert (not b!98715))

(assert (not b_next!2935))

(assert (not d!22793))

(assert (not d!22713))

(assert (not b!98712))

(assert (not b!98489))

(assert (not b!98453))

(assert (not b!98723))

(assert b_and!4427)

(assert (not b!98610))

(assert (not b!98682))

(assert (not b!98710))

(assert (not d!22853))

(assert (not b!98618))

(assert (not b!98385))

(assert (not b!98621))

(assert tp_is_empty!751)

(assert (not d!22757))

(assert (not b!98484))

(assert (not b!98638))

(assert (not d!22823))

(assert (not b!98465))

(assert (not d!22789))

(assert (not b!98419))

(assert (not b_lambda!1125))

(assert (not bm!4381))

(assert (not b_next!2949))

(assert (not d!22831))

(assert (not d!22769))

(assert (not b!98704))

(assert b_and!4423)

(assert (not b!98639))

(assert (not bm!4377))

(assert (not b!98539))

(assert (not d!22839))

(assert (not b!98535))

(assert (not b!98418))

(assert (not b!98441))

(assert (not b!98483))

(assert (not b!98480))

(assert (not b!98616))

(assert (not d!22709))

(assert (not d!22835))

(assert (not b!98627))

(assert (not d!22843))

(assert (not b!98466))

(assert (not b_next!2951))

(assert (not b!98675))

(assert (not b!98707))

(assert (not b!98534))

(assert (not b!98612))

(assert (not d!22817))

(assert b_and!4419)

(assert (not b!98536))

(assert (not d!22819))

(assert (not d!22749))

(assert (not b!98479))

(assert (not b_lambda!1123))

(assert (not d!22741))

(assert (not b!98674))

(assert (not b!98718))

(assert (not b!98703))

(assert (not b!98383))

(assert (not d!22821))

(assert (not b!98716))

(assert (not tb!2991))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2943))

(assert b_and!4421)

(assert b_and!4425)

(assert (not b_next!2933))

(assert (not b_next!2935))

(assert b_and!4427)

(assert (not b_next!2949))

(assert b_and!4423)

(assert (not b_next!2951))

(assert b_and!4419)

(assert (not b_next!2941))

(assert b_and!4429)

(check-sat)

(pop 1)

