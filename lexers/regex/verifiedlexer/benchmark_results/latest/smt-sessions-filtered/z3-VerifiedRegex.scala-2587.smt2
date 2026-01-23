; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138546 () Bool)

(assert start!138546)

(declare-fun b!1476832 () Bool)

(declare-fun b_free!37767 () Bool)

(declare-fun b_next!38471 () Bool)

(assert (=> b!1476832 (= b_free!37767 (not b_next!38471))))

(declare-fun tp!417992 () Bool)

(declare-fun b_and!102053 () Bool)

(assert (=> b!1476832 (= tp!417992 b_and!102053)))

(declare-fun b_free!37769 () Bool)

(declare-fun b_next!38473 () Bool)

(assert (=> b!1476832 (= b_free!37769 (not b_next!38473))))

(declare-fun tp!417981 () Bool)

(declare-fun b_and!102055 () Bool)

(assert (=> b!1476832 (= tp!417981 b_and!102055)))

(declare-fun b!1476826 () Bool)

(declare-fun b_free!37771 () Bool)

(declare-fun b_next!38475 () Bool)

(assert (=> b!1476826 (= b_free!37771 (not b_next!38475))))

(declare-fun tp!417988 () Bool)

(declare-fun b_and!102057 () Bool)

(assert (=> b!1476826 (= tp!417988 b_and!102057)))

(declare-fun b_free!37773 () Bool)

(declare-fun b_next!38477 () Bool)

(assert (=> b!1476826 (= b_free!37773 (not b_next!38477))))

(declare-fun tp!417987 () Bool)

(declare-fun b_and!102059 () Bool)

(assert (=> b!1476826 (= tp!417987 b_and!102059)))

(declare-fun b!1476842 () Bool)

(declare-fun b_free!37775 () Bool)

(declare-fun b_next!38479 () Bool)

(assert (=> b!1476842 (= b_free!37775 (not b_next!38479))))

(declare-fun tp!417991 () Bool)

(declare-fun b_and!102061 () Bool)

(assert (=> b!1476842 (= tp!417991 b_and!102061)))

(declare-fun b_free!37777 () Bool)

(declare-fun b_next!38481 () Bool)

(assert (=> b!1476842 (= b_free!37777 (not b_next!38481))))

(declare-fun tp!417994 () Bool)

(declare-fun b_and!102063 () Bool)

(assert (=> b!1476842 (= tp!417994 b_and!102063)))

(declare-fun b!1476824 () Bool)

(declare-fun e!943646 () Bool)

(declare-datatypes ((List!15634 0))(
  ( (Nil!15568) (Cons!15568 (h!20969 (_ BitVec 16)) (t!136727 List!15634)) )
))
(declare-datatypes ((TokenValue!2863 0))(
  ( (FloatLiteralValue!5726 (text!20486 List!15634)) (TokenValueExt!2862 (__x!9516 Int)) (Broken!14315 (value!88652 List!15634)) (Object!2928) (End!2863) (Def!2863) (Underscore!2863) (Match!2863) (Else!2863) (Error!2863) (Case!2863) (If!2863) (Extends!2863) (Abstract!2863) (Class!2863) (Val!2863) (DelimiterValue!5726 (del!2923 List!15634)) (KeywordValue!2869 (value!88653 List!15634)) (CommentValue!5726 (value!88654 List!15634)) (WhitespaceValue!5726 (value!88655 List!15634)) (IndentationValue!2863 (value!88656 List!15634)) (String!18570) (Int32!2863) (Broken!14316 (value!88657 List!15634)) (Boolean!2864) (Unit!25332) (OperatorValue!2866 (op!2923 List!15634)) (IdentifierValue!5726 (value!88658 List!15634)) (IdentifierValue!5727 (value!88659 List!15634)) (WhitespaceValue!5727 (value!88660 List!15634)) (True!5726) (False!5726) (Broken!14317 (value!88661 List!15634)) (Broken!14318 (value!88662 List!15634)) (True!5727) (RightBrace!2863) (RightBracket!2863) (Colon!2863) (Null!2863) (Comma!2863) (LeftBracket!2863) (False!5727) (LeftBrace!2863) (ImaginaryLiteralValue!2863 (text!20487 List!15634)) (StringLiteralValue!8589 (value!88663 List!15634)) (EOFValue!2863 (value!88664 List!15634)) (IdentValue!2863 (value!88665 List!15634)) (DelimiterValue!5727 (value!88666 List!15634)) (DedentValue!2863 (value!88667 List!15634)) (NewLineValue!2863 (value!88668 List!15634)) (IntegerValue!8589 (value!88669 (_ BitVec 32)) (text!20488 List!15634)) (IntegerValue!8590 (value!88670 Int) (text!20489 List!15634)) (Times!2863) (Or!2863) (Equal!2863) (Minus!2863) (Broken!14319 (value!88671 List!15634)) (And!2863) (Div!2863) (LessEqual!2863) (Mod!2863) (Concat!6950) (Not!2863) (Plus!2863) (SpaceValue!2863 (value!88672 List!15634)) (IntegerValue!8591 (value!88673 Int) (text!20490 List!15634)) (StringLiteralValue!8590 (text!20491 List!15634)) (FloatLiteralValue!5727 (text!20492 List!15634)) (BytesLiteralValue!2863 (value!88674 List!15634)) (CommentValue!5727 (value!88675 List!15634)) (StringLiteralValue!8591 (value!88676 List!15634)) (ErrorTokenValue!2863 (msg!2924 List!15634)) )
))
(declare-datatypes ((C!8352 0))(
  ( (C!8353 (val!4746 Int)) )
))
(declare-datatypes ((Regex!4087 0))(
  ( (ElementMatch!4087 (c!242653 C!8352)) (Concat!6951 (regOne!8686 Regex!4087) (regTwo!8686 Regex!4087)) (EmptyExpr!4087) (Star!4087 (reg!4416 Regex!4087)) (EmptyLang!4087) (Union!4087 (regOne!8687 Regex!4087) (regTwo!8687 Regex!4087)) )
))
(declare-datatypes ((String!18571 0))(
  ( (String!18572 (value!88677 String)) )
))
(declare-datatypes ((List!15635 0))(
  ( (Nil!15569) (Cons!15569 (h!20970 C!8352) (t!136728 List!15635)) )
))
(declare-datatypes ((IArray!10613 0))(
  ( (IArray!10614 (innerList!5364 List!15635)) )
))
(declare-datatypes ((Conc!5304 0))(
  ( (Node!5304 (left!13137 Conc!5304) (right!13467 Conc!5304) (csize!10838 Int) (cheight!5515 Int)) (Leaf!7892 (xs!8059 IArray!10613) (csize!10839 Int)) (Empty!5304) )
))
(declare-datatypes ((BalanceConc!10548 0))(
  ( (BalanceConc!10549 (c!242654 Conc!5304)) )
))
(declare-datatypes ((TokenValueInjection!5386 0))(
  ( (TokenValueInjection!5387 (toValue!4108 Int) (toChars!3967 Int)) )
))
(declare-datatypes ((Rule!5346 0))(
  ( (Rule!5347 (regex!2773 Regex!4087) (tag!3037 String!18571) (isSeparator!2773 Bool) (transformation!2773 TokenValueInjection!5386)) )
))
(declare-datatypes ((Token!5208 0))(
  ( (Token!5209 (value!88678 TokenValue!2863) (rule!4550 Rule!5346) (size!12617 Int) (originalCharacters!3635 List!15635)) )
))
(declare-datatypes ((List!15636 0))(
  ( (Nil!15570) (Cons!15570 (h!20971 Token!5208) (t!136729 List!15636)) )
))
(declare-fun l2!3105 () List!15636)

(declare-fun e!943641 () Bool)

(declare-fun tp!417985 () Bool)

(declare-fun inv!21 (TokenValue!2863) Bool)

(assert (=> b!1476824 (= e!943646 (and (inv!21 (value!88678 (h!20971 l2!3105))) e!943641 tp!417985))))

(declare-fun b!1476825 () Bool)

(declare-fun e!943640 () Bool)

(declare-fun e!943643 () Bool)

(declare-fun l1!3136 () List!15636)

(declare-fun tp!417984 () Bool)

(declare-fun inv!20777 (String!18571) Bool)

(declare-fun inv!20780 (TokenValueInjection!5386) Bool)

(assert (=> b!1476825 (= e!943643 (and tp!417984 (inv!20777 (tag!3037 (rule!4550 (h!20971 l1!3136)))) (inv!20780 (transformation!2773 (rule!4550 (h!20971 l1!3136)))) e!943640))))

(assert (=> b!1476826 (= e!943640 (and tp!417988 tp!417987))))

(declare-fun b!1476827 () Bool)

(declare-fun res!667468 () Bool)

(declare-fun e!943642 () Bool)

(assert (=> b!1476827 (=> (not res!667468) (not e!943642))))

(declare-fun isEmpty!9729 (List!15636) Bool)

(assert (=> b!1476827 (= res!667468 (not (isEmpty!9729 l1!3136)))))

(declare-fun res!667460 () Bool)

(assert (=> start!138546 (=> (not res!667460) (not e!943642))))

(declare-datatypes ((LexerInterface!2429 0))(
  ( (LexerInterfaceExt!2426 (__x!9517 Int)) (Lexer!2427) )
))
(declare-fun thiss!27374 () LexerInterface!2429)

(get-info :version)

(assert (=> start!138546 (= res!667460 ((_ is Lexer!2427) thiss!27374))))

(assert (=> start!138546 e!943642))

(assert (=> start!138546 true))

(declare-fun e!943644 () Bool)

(assert (=> start!138546 e!943644))

(declare-fun e!943645 () Bool)

(assert (=> start!138546 e!943645))

(declare-fun e!943652 () Bool)

(assert (=> start!138546 e!943652))

(declare-fun tp!417993 () Bool)

(declare-fun e!943649 () Bool)

(declare-fun b!1476828 () Bool)

(declare-fun inv!20781 (Token!5208) Bool)

(assert (=> b!1476828 (= e!943645 (and (inv!20781 (h!20971 l1!3136)) e!943649 tp!417993))))

(declare-fun b!1476829 () Bool)

(declare-fun res!667461 () Bool)

(assert (=> b!1476829 (=> (not res!667461) (not e!943642))))

(declare-datatypes ((List!15637 0))(
  ( (Nil!15571) (Cons!15571 (h!20972 Rule!5346) (t!136730 List!15637)) )
))
(declare-fun rules!4290 () List!15637)

(declare-fun tokensListTwoByTwoPredicateSeparableList!289 (LexerInterface!2429 List!15636 List!15637) Bool)

(assert (=> b!1476829 (= res!667461 (tokensListTwoByTwoPredicateSeparableList!289 thiss!27374 l2!3105 rules!4290))))

(declare-fun e!943647 () Bool)

(declare-fun tp!417989 () Bool)

(declare-fun b!1476830 () Bool)

(assert (=> b!1476830 (= e!943641 (and tp!417989 (inv!20777 (tag!3037 (rule!4550 (h!20971 l2!3105)))) (inv!20780 (transformation!2773 (rule!4550 (h!20971 l2!3105)))) e!943647))))

(declare-fun tp!417982 () Bool)

(declare-fun b!1476831 () Bool)

(assert (=> b!1476831 (= e!943652 (and (inv!20781 (h!20971 l2!3105)) e!943646 tp!417982))))

(assert (=> b!1476832 (= e!943647 (and tp!417992 tp!417981))))

(declare-fun b!1476833 () Bool)

(declare-fun res!667464 () Bool)

(assert (=> b!1476833 (=> (not res!667464) (not e!943642))))

(assert (=> b!1476833 (= res!667464 (tokensListTwoByTwoPredicateSeparableList!289 thiss!27374 l1!3136 rules!4290))))

(declare-fun b!1476834 () Bool)

(declare-fun res!667467 () Bool)

(assert (=> b!1476834 (=> (not res!667467) (not e!943642))))

(declare-fun rulesProduceEachTokenIndividuallyList!796 (LexerInterface!2429 List!15637 List!15636) Bool)

(assert (=> b!1476834 (= res!667467 (rulesProduceEachTokenIndividuallyList!796 thiss!27374 rules!4290 l1!3136))))

(declare-fun b!1476835 () Bool)

(declare-fun res!667463 () Bool)

(assert (=> b!1476835 (=> (not res!667463) (not e!943642))))

(assert (=> b!1476835 (= res!667463 (rulesProduceEachTokenIndividuallyList!796 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1476836 () Bool)

(declare-fun e!943650 () Bool)

(declare-fun tp!417983 () Bool)

(assert (=> b!1476836 (= e!943644 (and e!943650 tp!417983))))

(declare-fun b!1476837 () Bool)

(declare-fun res!667462 () Bool)

(assert (=> b!1476837 (=> (not res!667462) (not e!943642))))

(assert (=> b!1476837 (= res!667462 (not (isEmpty!9729 l2!3105)))))

(declare-fun b!1476838 () Bool)

(declare-fun res!667466 () Bool)

(assert (=> b!1476838 (=> (not res!667466) (not e!943642))))

(declare-fun isEmpty!9730 (List!15637) Bool)

(assert (=> b!1476838 (= res!667466 (not (isEmpty!9730 rules!4290)))))

(declare-fun tp!417990 () Bool)

(declare-fun b!1476839 () Bool)

(assert (=> b!1476839 (= e!943649 (and (inv!21 (value!88678 (h!20971 l1!3136))) e!943643 tp!417990))))

(declare-fun b!1476840 () Bool)

(declare-fun tp!417986 () Bool)

(declare-fun e!943653 () Bool)

(assert (=> b!1476840 (= e!943650 (and tp!417986 (inv!20777 (tag!3037 (h!20972 rules!4290))) (inv!20780 (transformation!2773 (h!20972 rules!4290))) e!943653))))

(declare-fun b!1476841 () Bool)

(declare-fun res!667465 () Bool)

(assert (=> b!1476841 (=> (not res!667465) (not e!943642))))

(declare-fun rulesInvariant!2218 (LexerInterface!2429 List!15637) Bool)

(assert (=> b!1476841 (= res!667465 (rulesInvariant!2218 thiss!27374 rules!4290))))

(assert (=> b!1476842 (= e!943653 (and tp!417991 tp!417994))))

(declare-fun b!1476843 () Bool)

(assert (=> b!1476843 (= e!943642 false)))

(declare-fun lt!513317 () Token!5208)

(declare-fun last!331 (List!15636) Token!5208)

(assert (=> b!1476843 (= lt!513317 (last!331 l1!3136))))

(assert (= (and start!138546 res!667460) b!1476838))

(assert (= (and b!1476838 res!667466) b!1476841))

(assert (= (and b!1476841 res!667465) b!1476834))

(assert (= (and b!1476834 res!667467) b!1476835))

(assert (= (and b!1476835 res!667463) b!1476833))

(assert (= (and b!1476833 res!667464) b!1476829))

(assert (= (and b!1476829 res!667461) b!1476827))

(assert (= (and b!1476827 res!667468) b!1476837))

(assert (= (and b!1476837 res!667462) b!1476843))

(assert (= b!1476840 b!1476842))

(assert (= b!1476836 b!1476840))

(assert (= (and start!138546 ((_ is Cons!15571) rules!4290)) b!1476836))

(assert (= b!1476825 b!1476826))

(assert (= b!1476839 b!1476825))

(assert (= b!1476828 b!1476839))

(assert (= (and start!138546 ((_ is Cons!15570) l1!3136)) b!1476828))

(assert (= b!1476830 b!1476832))

(assert (= b!1476824 b!1476830))

(assert (= b!1476831 b!1476824))

(assert (= (and start!138546 ((_ is Cons!15570) l2!3105)) b!1476831))

(declare-fun m!1722491 () Bool)

(assert (=> b!1476830 m!1722491))

(declare-fun m!1722493 () Bool)

(assert (=> b!1476830 m!1722493))

(declare-fun m!1722495 () Bool)

(assert (=> b!1476828 m!1722495))

(declare-fun m!1722497 () Bool)

(assert (=> b!1476839 m!1722497))

(declare-fun m!1722499 () Bool)

(assert (=> b!1476829 m!1722499))

(declare-fun m!1722501 () Bool)

(assert (=> b!1476840 m!1722501))

(declare-fun m!1722503 () Bool)

(assert (=> b!1476840 m!1722503))

(declare-fun m!1722505 () Bool)

(assert (=> b!1476833 m!1722505))

(declare-fun m!1722507 () Bool)

(assert (=> b!1476831 m!1722507))

(declare-fun m!1722509 () Bool)

(assert (=> b!1476825 m!1722509))

(declare-fun m!1722511 () Bool)

(assert (=> b!1476825 m!1722511))

(declare-fun m!1722513 () Bool)

(assert (=> b!1476838 m!1722513))

(declare-fun m!1722515 () Bool)

(assert (=> b!1476834 m!1722515))

(declare-fun m!1722517 () Bool)

(assert (=> b!1476837 m!1722517))

(declare-fun m!1722519 () Bool)

(assert (=> b!1476843 m!1722519))

(declare-fun m!1722521 () Bool)

(assert (=> b!1476824 m!1722521))

(declare-fun m!1722523 () Bool)

(assert (=> b!1476841 m!1722523))

(declare-fun m!1722525 () Bool)

(assert (=> b!1476835 m!1722525))

(declare-fun m!1722527 () Bool)

(assert (=> b!1476827 m!1722527))

(check-sat (not b_next!38475) (not b!1476831) (not b!1476834) (not b!1476836) (not b!1476829) (not b!1476841) (not b!1476828) (not b!1476840) (not b!1476835) (not b!1476827) b_and!102059 (not b!1476838) (not b_next!38479) (not b!1476824) b_and!102063 b_and!102053 b_and!102057 (not b!1476825) b_and!102061 (not b!1476833) (not b_next!38481) (not b_next!38473) b_and!102055 (not b_next!38471) (not b!1476843) (not b!1476837) (not b!1476839) (not b!1476830) (not b_next!38477))
(check-sat (not b_next!38475) b_and!102063 b_and!102061 b_and!102059 (not b_next!38479) (not b_next!38477) b_and!102053 b_and!102057 (not b_next!38481) (not b_next!38473) b_and!102055 (not b_next!38471))
