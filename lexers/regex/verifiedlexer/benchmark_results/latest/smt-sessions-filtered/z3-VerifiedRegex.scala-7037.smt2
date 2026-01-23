; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!373624 () Bool)

(assert start!373624)

(declare-fun b!3970535 () Bool)

(declare-fun b_free!109969 () Bool)

(declare-fun b_next!110673 () Bool)

(assert (=> b!3970535 (= b_free!109969 (not b_next!110673))))

(declare-fun tp!1210574 () Bool)

(declare-fun b_and!305215 () Bool)

(assert (=> b!3970535 (= tp!1210574 b_and!305215)))

(declare-fun b_free!109971 () Bool)

(declare-fun b_next!110675 () Bool)

(assert (=> b!3970535 (= b_free!109971 (not b_next!110675))))

(declare-fun tp!1210570 () Bool)

(declare-fun b_and!305217 () Bool)

(assert (=> b!3970535 (= tp!1210570 b_and!305217)))

(declare-fun b!3970539 () Bool)

(declare-fun b_free!109973 () Bool)

(declare-fun b_next!110677 () Bool)

(assert (=> b!3970539 (= b_free!109973 (not b_next!110677))))

(declare-fun tp!1210573 () Bool)

(declare-fun b_and!305219 () Bool)

(assert (=> b!3970539 (= tp!1210573 b_and!305219)))

(declare-fun b_free!109975 () Bool)

(declare-fun b_next!110679 () Bool)

(assert (=> b!3970539 (= b_free!109975 (not b_next!110679))))

(declare-fun tp!1210575 () Bool)

(declare-fun b_and!305221 () Bool)

(assert (=> b!3970539 (= tp!1210575 b_and!305221)))

(declare-fun b!3970532 () Bool)

(declare-fun res!1607184 () Bool)

(declare-fun e!2459478 () Bool)

(assert (=> b!3970532 (=> (not res!1607184) (not e!2459478))))

(declare-datatypes ((C!23320 0))(
  ( (C!23321 (val!13754 Int)) )
))
(declare-datatypes ((List!42494 0))(
  ( (Nil!42370) (Cons!42370 (h!47790 C!23320) (t!330861 List!42494)) )
))
(declare-datatypes ((IArray!25751 0))(
  ( (IArray!25752 (innerList!12933 List!42494)) )
))
(declare-datatypes ((Conc!12873 0))(
  ( (Node!12873 (left!32098 Conc!12873) (right!32428 Conc!12873) (csize!25976 Int) (cheight!13084 Int)) (Leaf!19911 (xs!16179 IArray!25751) (csize!25977 Int)) (Empty!12873) )
))
(declare-datatypes ((BalanceConc!25340 0))(
  ( (BalanceConc!25341 (c!688720 Conc!12873)) )
))
(declare-datatypes ((List!42495 0))(
  ( (Nil!42371) (Cons!42371 (h!47791 (_ BitVec 16)) (t!330862 List!42495)) )
))
(declare-datatypes ((TokenValue!6892 0))(
  ( (FloatLiteralValue!13784 (text!48689 List!42495)) (TokenValueExt!6891 (__x!26001 Int)) (Broken!34460 (value!210475 List!42495)) (Object!7015) (End!6892) (Def!6892) (Underscore!6892) (Match!6892) (Else!6892) (Error!6892) (Case!6892) (If!6892) (Extends!6892) (Abstract!6892) (Class!6892) (Val!6892) (DelimiterValue!13784 (del!6952 List!42495)) (KeywordValue!6898 (value!210476 List!42495)) (CommentValue!13784 (value!210477 List!42495)) (WhitespaceValue!13784 (value!210478 List!42495)) (IndentationValue!6892 (value!210479 List!42495)) (String!48177) (Int32!6892) (Broken!34461 (value!210480 List!42495)) (Boolean!6893) (Unit!61021) (OperatorValue!6895 (op!6952 List!42495)) (IdentifierValue!13784 (value!210481 List!42495)) (IdentifierValue!13785 (value!210482 List!42495)) (WhitespaceValue!13785 (value!210483 List!42495)) (True!13784) (False!13784) (Broken!34462 (value!210484 List!42495)) (Broken!34463 (value!210485 List!42495)) (True!13785) (RightBrace!6892) (RightBracket!6892) (Colon!6892) (Null!6892) (Comma!6892) (LeftBracket!6892) (False!13785) (LeftBrace!6892) (ImaginaryLiteralValue!6892 (text!48690 List!42495)) (StringLiteralValue!20676 (value!210486 List!42495)) (EOFValue!6892 (value!210487 List!42495)) (IdentValue!6892 (value!210488 List!42495)) (DelimiterValue!13785 (value!210489 List!42495)) (DedentValue!6892 (value!210490 List!42495)) (NewLineValue!6892 (value!210491 List!42495)) (IntegerValue!20676 (value!210492 (_ BitVec 32)) (text!48691 List!42495)) (IntegerValue!20677 (value!210493 Int) (text!48692 List!42495)) (Times!6892) (Or!6892) (Equal!6892) (Minus!6892) (Broken!34464 (value!210494 List!42495)) (And!6892) (Div!6892) (LessEqual!6892) (Mod!6892) (Concat!18459) (Not!6892) (Plus!6892) (SpaceValue!6892 (value!210495 List!42495)) (IntegerValue!20678 (value!210496 Int) (text!48693 List!42495)) (StringLiteralValue!20677 (text!48694 List!42495)) (FloatLiteralValue!13785 (text!48695 List!42495)) (BytesLiteralValue!6892 (value!210497 List!42495)) (CommentValue!13785 (value!210498 List!42495)) (StringLiteralValue!20678 (value!210499 List!42495)) (ErrorTokenValue!6892 (msg!6953 List!42495)) )
))
(declare-datatypes ((String!48178 0))(
  ( (String!48179 (value!210500 String)) )
))
(declare-datatypes ((Regex!11567 0))(
  ( (ElementMatch!11567 (c!688721 C!23320)) (Concat!18460 (regOne!23646 Regex!11567) (regTwo!23646 Regex!11567)) (EmptyExpr!11567) (Star!11567 (reg!11896 Regex!11567)) (EmptyLang!11567) (Union!11567 (regOne!23647 Regex!11567) (regTwo!23647 Regex!11567)) )
))
(declare-datatypes ((TokenValueInjection!13212 0))(
  ( (TokenValueInjection!13213 (toValue!9150 Int) (toChars!9009 Int)) )
))
(declare-datatypes ((Rule!13124 0))(
  ( (Rule!13125 (regex!6662 Regex!11567) (tag!7522 String!48178) (isSeparator!6662 Bool) (transformation!6662 TokenValueInjection!13212)) )
))
(declare-datatypes ((List!42496 0))(
  ( (Nil!42372) (Cons!42372 (h!47792 Rule!13124) (t!330863 List!42496)) )
))
(declare-fun rules!2999 () List!42496)

(declare-fun isEmpty!25350 (List!42496) Bool)

(assert (=> b!3970532 (= res!1607184 (not (isEmpty!25350 rules!2999)))))

(declare-fun b!3970533 () Bool)

(declare-fun res!1607187 () Bool)

(declare-fun e!2459463 () Bool)

(assert (=> b!3970533 (=> (not res!1607187) (not e!2459463))))

(declare-fun prefix!494 () List!42494)

(declare-fun newSuffixResult!27 () List!42494)

(declare-fun newSuffix!27 () List!42494)

(declare-fun lt!1390518 () List!42494)

(declare-fun ++!11064 (List!42494 List!42494) List!42494)

(assert (=> b!3970533 (= res!1607187 (= (++!11064 lt!1390518 newSuffixResult!27) (++!11064 prefix!494 newSuffix!27)))))

(declare-datatypes ((Token!12462 0))(
  ( (Token!12463 (value!210501 TokenValue!6892) (rule!9650 Rule!13124) (size!31704 Int) (originalCharacters!7262 List!42494)) )
))
(declare-fun token!484 () Token!12462)

(declare-fun e!2459475 () Bool)

(declare-fun e!2459461 () Bool)

(declare-fun tp!1210577 () Bool)

(declare-fun b!3970534 () Bool)

(declare-fun inv!56617 (String!48178) Bool)

(declare-fun inv!56620 (TokenValueInjection!13212) Bool)

(assert (=> b!3970534 (= e!2459475 (and tp!1210577 (inv!56617 (tag!7522 (rule!9650 token!484))) (inv!56620 (transformation!6662 (rule!9650 token!484))) e!2459461))))

(declare-fun e!2459473 () Bool)

(assert (=> b!3970535 (= e!2459473 (and tp!1210574 tp!1210570))))

(declare-fun b!3970536 () Bool)

(declare-fun e!2459462 () Bool)

(declare-fun tp_is_empty!20105 () Bool)

(declare-fun tp!1210571 () Bool)

(assert (=> b!3970536 (= e!2459462 (and tp_is_empty!20105 tp!1210571))))

(declare-fun b!3970537 () Bool)

(declare-fun e!2459468 () Bool)

(declare-fun tp!1210581 () Bool)

(assert (=> b!3970537 (= e!2459468 (and tp_is_empty!20105 tp!1210581))))

(declare-fun res!1607188 () Bool)

(assert (=> start!373624 (=> (not res!1607188) (not e!2459478))))

(declare-datatypes ((LexerInterface!6251 0))(
  ( (LexerInterfaceExt!6248 (__x!26002 Int)) (Lexer!6249) )
))
(declare-fun thiss!21717 () LexerInterface!6251)

(get-info :version)

(assert (=> start!373624 (= res!1607188 ((_ is Lexer!6249) thiss!21717))))

(assert (=> start!373624 e!2459478))

(declare-fun e!2459477 () Bool)

(assert (=> start!373624 e!2459477))

(declare-fun e!2459474 () Bool)

(declare-fun inv!56621 (Token!12462) Bool)

(assert (=> start!373624 (and (inv!56621 token!484) e!2459474)))

(declare-fun e!2459466 () Bool)

(assert (=> start!373624 e!2459466))

(assert (=> start!373624 e!2459462))

(assert (=> start!373624 e!2459468))

(assert (=> start!373624 true))

(declare-fun e!2459467 () Bool)

(assert (=> start!373624 e!2459467))

(declare-fun e!2459465 () Bool)

(assert (=> start!373624 e!2459465))

(declare-fun b!3970538 () Bool)

(declare-fun res!1607185 () Bool)

(assert (=> b!3970538 (=> (not res!1607185) (not e!2459478))))

(declare-fun rulesInvariant!5594 (LexerInterface!6251 List!42496) Bool)

(assert (=> b!3970538 (= res!1607185 (rulesInvariant!5594 thiss!21717 rules!2999))))

(assert (=> b!3970539 (= e!2459461 (and tp!1210573 tp!1210575))))

(declare-fun b!3970540 () Bool)

(declare-fun tp!1210578 () Bool)

(assert (=> b!3970540 (= e!2459466 (and tp_is_empty!20105 tp!1210578))))

(declare-fun b!3970541 () Bool)

(declare-fun res!1607186 () Bool)

(assert (=> b!3970541 (=> (not res!1607186) (not e!2459478))))

(declare-fun suffix!1299 () List!42494)

(declare-fun size!31705 (List!42494) Int)

(assert (=> b!3970541 (= res!1607186 (>= (size!31705 suffix!1299) (size!31705 newSuffix!27)))))

(declare-fun b!3970542 () Bool)

(declare-fun e!2459476 () Bool)

(declare-fun e!2459464 () Bool)

(assert (=> b!3970542 (= e!2459476 (not e!2459464))))

(declare-fun res!1607182 () Bool)

(assert (=> b!3970542 (=> res!1607182 e!2459464)))

(declare-fun lt!1390515 () List!42494)

(declare-fun lt!1390521 () List!42494)

(assert (=> b!3970542 (= res!1607182 (not (= lt!1390515 lt!1390521)))))

(declare-fun suffixResult!105 () List!42494)

(assert (=> b!3970542 (= lt!1390515 (++!11064 lt!1390518 suffixResult!105))))

(declare-datatypes ((Unit!61022 0))(
  ( (Unit!61023) )
))
(declare-fun lt!1390520 () Unit!61022)

(declare-fun lemmaInv!877 (TokenValueInjection!13212) Unit!61022)

(assert (=> b!3970542 (= lt!1390520 (lemmaInv!877 (transformation!6662 (rule!9650 token!484))))))

(declare-fun ruleValid!2594 (LexerInterface!6251 Rule!13124) Bool)

(assert (=> b!3970542 (ruleValid!2594 thiss!21717 (rule!9650 token!484))))

(declare-fun lt!1390516 () Unit!61022)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1668 (LexerInterface!6251 Rule!13124 List!42496) Unit!61022)

(assert (=> b!3970542 (= lt!1390516 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1668 thiss!21717 (rule!9650 token!484) rules!2999))))

(declare-fun b!3970543 () Bool)

(declare-fun tp!1210576 () Bool)

(declare-fun inv!21 (TokenValue!6892) Bool)

(assert (=> b!3970543 (= e!2459474 (and (inv!21 (value!210501 token!484)) e!2459475 tp!1210576))))

(declare-fun b!3970544 () Bool)

(declare-fun e!2459460 () Bool)

(assert (=> b!3970544 (= e!2459464 e!2459460)))

(declare-fun res!1607181 () Bool)

(assert (=> b!3970544 (=> res!1607181 e!2459460)))

(declare-fun isPrefix!3749 (List!42494 List!42494) Bool)

(assert (=> b!3970544 (= res!1607181 (not (isPrefix!3749 lt!1390518 lt!1390521)))))

(assert (=> b!3970544 (isPrefix!3749 prefix!494 lt!1390521)))

(declare-fun lt!1390519 () Unit!61022)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2592 (List!42494 List!42494) Unit!61022)

(assert (=> b!3970544 (= lt!1390519 (lemmaConcatTwoListThenFirstIsPrefix!2592 prefix!494 suffix!1299))))

(assert (=> b!3970544 (isPrefix!3749 lt!1390518 lt!1390515)))

(declare-fun lt!1390517 () Unit!61022)

(assert (=> b!3970544 (= lt!1390517 (lemmaConcatTwoListThenFirstIsPrefix!2592 lt!1390518 suffixResult!105))))

(declare-fun b!3970545 () Bool)

(declare-fun tp!1210579 () Bool)

(assert (=> b!3970545 (= e!2459465 (and tp_is_empty!20105 tp!1210579))))

(declare-fun b!3970546 () Bool)

(assert (=> b!3970546 (= e!2459463 e!2459476)))

(declare-fun res!1607183 () Bool)

(assert (=> b!3970546 (=> (not res!1607183) (not e!2459476))))

(declare-datatypes ((tuple2!41636 0))(
  ( (tuple2!41637 (_1!23952 Token!12462) (_2!23952 List!42494)) )
))
(declare-datatypes ((Option!9076 0))(
  ( (None!9075) (Some!9075 (v!39423 tuple2!41636)) )
))
(declare-fun maxPrefix!3549 (LexerInterface!6251 List!42496 List!42494) Option!9076)

(assert (=> b!3970546 (= res!1607183 (= (maxPrefix!3549 thiss!21717 rules!2999 lt!1390521) (Some!9075 (tuple2!41637 token!484 suffixResult!105))))))

(assert (=> b!3970546 (= lt!1390521 (++!11064 prefix!494 suffix!1299))))

(declare-fun b!3970547 () Bool)

(declare-fun res!1607189 () Bool)

(assert (=> b!3970547 (=> (not res!1607189) (not e!2459478))))

(assert (=> b!3970547 (= res!1607189 (isPrefix!3749 newSuffix!27 suffix!1299))))

(declare-fun e!2459470 () Bool)

(declare-fun tp!1210582 () Bool)

(declare-fun b!3970548 () Bool)

(assert (=> b!3970548 (= e!2459470 (and tp!1210582 (inv!56617 (tag!7522 (h!47792 rules!2999))) (inv!56620 (transformation!6662 (h!47792 rules!2999))) e!2459473))))

(declare-fun b!3970549 () Bool)

(assert (=> b!3970549 (= e!2459460 true)))

(assert (=> b!3970549 (isPrefix!3749 lt!1390518 prefix!494)))

(declare-fun lt!1390514 () Unit!61022)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!327 (List!42494 List!42494 List!42494) Unit!61022)

(assert (=> b!3970549 (= lt!1390514 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!327 prefix!494 lt!1390518 lt!1390521))))

(declare-fun b!3970550 () Bool)

(declare-fun tp!1210572 () Bool)

(assert (=> b!3970550 (= e!2459477 (and tp_is_empty!20105 tp!1210572))))

(declare-fun b!3970551 () Bool)

(assert (=> b!3970551 (= e!2459478 e!2459463)))

(declare-fun res!1607190 () Bool)

(assert (=> b!3970551 (=> (not res!1607190) (not e!2459463))))

(assert (=> b!3970551 (= res!1607190 (>= (size!31705 prefix!494) (size!31705 lt!1390518)))))

(declare-fun list!15722 (BalanceConc!25340) List!42494)

(declare-fun charsOf!4478 (Token!12462) BalanceConc!25340)

(assert (=> b!3970551 (= lt!1390518 (list!15722 (charsOf!4478 token!484)))))

(declare-fun b!3970552 () Bool)

(declare-fun tp!1210580 () Bool)

(assert (=> b!3970552 (= e!2459467 (and e!2459470 tp!1210580))))

(assert (= (and start!373624 res!1607188) b!3970532))

(assert (= (and b!3970532 res!1607184) b!3970538))

(assert (= (and b!3970538 res!1607185) b!3970541))

(assert (= (and b!3970541 res!1607186) b!3970547))

(assert (= (and b!3970547 res!1607189) b!3970551))

(assert (= (and b!3970551 res!1607190) b!3970533))

(assert (= (and b!3970533 res!1607187) b!3970546))

(assert (= (and b!3970546 res!1607183) b!3970542))

(assert (= (and b!3970542 (not res!1607182)) b!3970544))

(assert (= (and b!3970544 (not res!1607181)) b!3970549))

(assert (= (and start!373624 ((_ is Cons!42370) prefix!494)) b!3970550))

(assert (= b!3970534 b!3970539))

(assert (= b!3970543 b!3970534))

(assert (= start!373624 b!3970543))

(assert (= (and start!373624 ((_ is Cons!42370) suffixResult!105)) b!3970540))

(assert (= (and start!373624 ((_ is Cons!42370) suffix!1299)) b!3970536))

(assert (= (and start!373624 ((_ is Cons!42370) newSuffix!27)) b!3970537))

(assert (= b!3970548 b!3970535))

(assert (= b!3970552 b!3970548))

(assert (= (and start!373624 ((_ is Cons!42372) rules!2999)) b!3970552))

(assert (= (and start!373624 ((_ is Cons!42370) newSuffixResult!27)) b!3970545))

(declare-fun m!4540665 () Bool)

(assert (=> b!3970532 m!4540665))

(declare-fun m!4540667 () Bool)

(assert (=> b!3970542 m!4540667))

(declare-fun m!4540669 () Bool)

(assert (=> b!3970542 m!4540669))

(declare-fun m!4540671 () Bool)

(assert (=> b!3970542 m!4540671))

(declare-fun m!4540673 () Bool)

(assert (=> b!3970542 m!4540673))

(declare-fun m!4540675 () Bool)

(assert (=> b!3970538 m!4540675))

(declare-fun m!4540677 () Bool)

(assert (=> b!3970546 m!4540677))

(declare-fun m!4540679 () Bool)

(assert (=> b!3970546 m!4540679))

(declare-fun m!4540681 () Bool)

(assert (=> b!3970547 m!4540681))

(declare-fun m!4540683 () Bool)

(assert (=> b!3970534 m!4540683))

(declare-fun m!4540685 () Bool)

(assert (=> b!3970534 m!4540685))

(declare-fun m!4540687 () Bool)

(assert (=> b!3970548 m!4540687))

(declare-fun m!4540689 () Bool)

(assert (=> b!3970548 m!4540689))

(declare-fun m!4540691 () Bool)

(assert (=> b!3970551 m!4540691))

(declare-fun m!4540693 () Bool)

(assert (=> b!3970551 m!4540693))

(declare-fun m!4540695 () Bool)

(assert (=> b!3970551 m!4540695))

(assert (=> b!3970551 m!4540695))

(declare-fun m!4540697 () Bool)

(assert (=> b!3970551 m!4540697))

(declare-fun m!4540699 () Bool)

(assert (=> b!3970543 m!4540699))

(declare-fun m!4540701 () Bool)

(assert (=> b!3970541 m!4540701))

(declare-fun m!4540703 () Bool)

(assert (=> b!3970541 m!4540703))

(declare-fun m!4540705 () Bool)

(assert (=> start!373624 m!4540705))

(declare-fun m!4540707 () Bool)

(assert (=> b!3970549 m!4540707))

(declare-fun m!4540709 () Bool)

(assert (=> b!3970549 m!4540709))

(declare-fun m!4540711 () Bool)

(assert (=> b!3970544 m!4540711))

(declare-fun m!4540713 () Bool)

(assert (=> b!3970544 m!4540713))

(declare-fun m!4540715 () Bool)

(assert (=> b!3970544 m!4540715))

(declare-fun m!4540717 () Bool)

(assert (=> b!3970544 m!4540717))

(declare-fun m!4540719 () Bool)

(assert (=> b!3970544 m!4540719))

(declare-fun m!4540721 () Bool)

(assert (=> b!3970533 m!4540721))

(declare-fun m!4540723 () Bool)

(assert (=> b!3970533 m!4540723))

(check-sat b_and!305217 (not b!3970543) (not b!3970545) (not b!3970549) (not b!3970541) (not b!3970547) (not b_next!110679) (not b!3970532) (not b!3970546) (not b!3970534) (not b!3970550) tp_is_empty!20105 (not b!3970537) b_and!305215 (not b!3970548) (not b!3970551) (not b!3970544) (not b!3970538) (not start!373624) (not b_next!110673) (not b!3970552) b_and!305219 b_and!305221 (not b!3970533) (not b!3970540) (not b_next!110677) (not b!3970536) (not b_next!110675) (not b!3970542))
(check-sat b_and!305217 b_and!305215 (not b_next!110673) (not b_next!110679) (not b_next!110677) (not b_next!110675) b_and!305219 b_and!305221)
