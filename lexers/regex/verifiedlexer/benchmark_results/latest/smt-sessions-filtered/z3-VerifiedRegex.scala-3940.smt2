; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!215824 () Bool)

(assert start!215824)

(declare-fun b!2214574 () Bool)

(declare-fun b_free!64015 () Bool)

(declare-fun b_next!64719 () Bool)

(assert (=> b!2214574 (= b_free!64015 (not b_next!64719))))

(declare-fun tp!688469 () Bool)

(declare-fun b_and!173685 () Bool)

(assert (=> b!2214574 (= tp!688469 b_and!173685)))

(declare-fun b_free!64017 () Bool)

(declare-fun b_next!64721 () Bool)

(assert (=> b!2214574 (= b_free!64017 (not b_next!64721))))

(declare-fun tp!688467 () Bool)

(declare-fun b_and!173687 () Bool)

(assert (=> b!2214574 (= tp!688467 b_and!173687)))

(declare-fun b!2214576 () Bool)

(declare-fun b_free!64019 () Bool)

(declare-fun b_next!64723 () Bool)

(assert (=> b!2214576 (= b_free!64019 (not b_next!64723))))

(declare-fun tp!688466 () Bool)

(declare-fun b_and!173689 () Bool)

(assert (=> b!2214576 (= tp!688466 b_and!173689)))

(declare-fun b_free!64021 () Bool)

(declare-fun b_next!64725 () Bool)

(assert (=> b!2214576 (= b_free!64021 (not b_next!64725))))

(declare-fun tp!688472 () Bool)

(declare-fun b_and!173691 () Bool)

(assert (=> b!2214576 (= tp!688472 b_and!173691)))

(declare-fun b_free!64023 () Bool)

(declare-fun b_next!64727 () Bool)

(assert (=> start!215824 (= b_free!64023 (not b_next!64727))))

(declare-fun tp!688461 () Bool)

(declare-fun b_and!173693 () Bool)

(assert (=> start!215824 (= tp!688461 b_and!173693)))

(declare-fun b!2214585 () Bool)

(declare-fun b_free!64025 () Bool)

(declare-fun b_next!64729 () Bool)

(assert (=> b!2214585 (= b_free!64025 (not b_next!64729))))

(declare-fun tp!688460 () Bool)

(declare-fun b_and!173695 () Bool)

(assert (=> b!2214585 (= tp!688460 b_and!173695)))

(declare-fun b_free!64027 () Bool)

(declare-fun b_next!64731 () Bool)

(assert (=> b!2214585 (= b_free!64027 (not b_next!64731))))

(declare-fun tp!688468 () Bool)

(declare-fun b_and!173697 () Bool)

(assert (=> b!2214585 (= tp!688468 b_and!173697)))

(declare-fun b!2214583 () Bool)

(declare-fun b_free!64029 () Bool)

(declare-fun b_next!64733 () Bool)

(assert (=> b!2214583 (= b_free!64029 (not b_next!64733))))

(declare-fun tp!688458 () Bool)

(declare-fun b_and!173699 () Bool)

(assert (=> b!2214583 (= tp!688458 b_and!173699)))

(declare-fun b_free!64031 () Bool)

(declare-fun b_next!64735 () Bool)

(assert (=> b!2214583 (= b_free!64031 (not b_next!64735))))

(declare-fun tp!688459 () Bool)

(declare-fun b_and!173701 () Bool)

(assert (=> b!2214583 (= tp!688459 b_and!173701)))

(declare-fun b!2214572 () Bool)

(declare-fun e!1414390 () Bool)

(declare-fun e!1414381 () Bool)

(declare-fun tp!688470 () Bool)

(assert (=> b!2214572 (= e!1414390 (and e!1414381 tp!688470))))

(declare-fun e!1414375 () Bool)

(declare-fun e!1414385 () Bool)

(declare-fun b!2214573 () Bool)

(declare-fun tp!688463 () Bool)

(declare-datatypes ((List!26001 0))(
  ( (Nil!25917) (Cons!25917 (h!31318 (_ BitVec 16)) (t!198857 List!26001)) )
))
(declare-datatypes ((TokenValue!4313 0))(
  ( (FloatLiteralValue!8626 (text!30636 List!26001)) (TokenValueExt!4312 (__x!17079 Int)) (Broken!21565 (value!131751 List!26001)) (Object!4396) (End!4313) (Def!4313) (Underscore!4313) (Match!4313) (Else!4313) (Error!4313) (Case!4313) (If!4313) (Extends!4313) (Abstract!4313) (Class!4313) (Val!4313) (DelimiterValue!8626 (del!4373 List!26001)) (KeywordValue!4319 (value!131752 List!26001)) (CommentValue!8626 (value!131753 List!26001)) (WhitespaceValue!8626 (value!131754 List!26001)) (IndentationValue!4313 (value!131755 List!26001)) (String!28240) (Int32!4313) (Broken!21566 (value!131756 List!26001)) (Boolean!4314) (Unit!38925) (OperatorValue!4316 (op!4373 List!26001)) (IdentifierValue!8626 (value!131757 List!26001)) (IdentifierValue!8627 (value!131758 List!26001)) (WhitespaceValue!8627 (value!131759 List!26001)) (True!8626) (False!8626) (Broken!21567 (value!131760 List!26001)) (Broken!21568 (value!131761 List!26001)) (True!8627) (RightBrace!4313) (RightBracket!4313) (Colon!4313) (Null!4313) (Comma!4313) (LeftBracket!4313) (False!8627) (LeftBrace!4313) (ImaginaryLiteralValue!4313 (text!30637 List!26001)) (StringLiteralValue!12939 (value!131762 List!26001)) (EOFValue!4313 (value!131763 List!26001)) (IdentValue!4313 (value!131764 List!26001)) (DelimiterValue!8627 (value!131765 List!26001)) (DedentValue!4313 (value!131766 List!26001)) (NewLineValue!4313 (value!131767 List!26001)) (IntegerValue!12939 (value!131768 (_ BitVec 32)) (text!30638 List!26001)) (IntegerValue!12940 (value!131769 Int) (text!30639 List!26001)) (Times!4313) (Or!4313) (Equal!4313) (Minus!4313) (Broken!21569 (value!131770 List!26001)) (And!4313) (Div!4313) (LessEqual!4313) (Mod!4313) (Concat!10634) (Not!4313) (Plus!4313) (SpaceValue!4313 (value!131771 List!26001)) (IntegerValue!12941 (value!131772 Int) (text!30640 List!26001)) (StringLiteralValue!12940 (text!30641 List!26001)) (FloatLiteralValue!8627 (text!30642 List!26001)) (BytesLiteralValue!4313 (value!131773 List!26001)) (CommentValue!8627 (value!131774 List!26001)) (StringLiteralValue!12941 (value!131775 List!26001)) (ErrorTokenValue!4313 (msg!4374 List!26001)) )
))
(declare-datatypes ((String!28241 0))(
  ( (String!28242 (value!131776 String)) )
))
(declare-datatypes ((C!12788 0))(
  ( (C!12789 (val!7406 Int)) )
))
(declare-datatypes ((List!26002 0))(
  ( (Nil!25918) (Cons!25918 (h!31319 C!12788) (t!198858 List!26002)) )
))
(declare-datatypes ((IArray!16963 0))(
  ( (IArray!16964 (innerList!8539 List!26002)) )
))
(declare-datatypes ((Conc!8479 0))(
  ( (Node!8479 (left!19923 Conc!8479) (right!20253 Conc!8479) (csize!17188 Int) (cheight!8690 Int)) (Leaf!12420 (xs!11421 IArray!16963) (csize!17189 Int)) (Empty!8479) )
))
(declare-datatypes ((BalanceConc!16676 0))(
  ( (BalanceConc!16677 (c!353863 Conc!8479)) )
))
(declare-datatypes ((Regex!6321 0))(
  ( (ElementMatch!6321 (c!353864 C!12788)) (Concat!10635 (regOne!13154 Regex!6321) (regTwo!13154 Regex!6321)) (EmptyExpr!6321) (Star!6321 (reg!6650 Regex!6321)) (EmptyLang!6321) (Union!6321 (regOne!13155 Regex!6321) (regTwo!13155 Regex!6321)) )
))
(declare-datatypes ((TokenValueInjection!8210 0))(
  ( (TokenValueInjection!8211 (toValue!5888 Int) (toChars!5747 Int)) )
))
(declare-datatypes ((Rule!8154 0))(
  ( (Rule!8155 (regex!4177 Regex!6321) (tag!4667 String!28241) (isSeparator!4177 Bool) (transformation!4177 TokenValueInjection!8210)) )
))
(declare-datatypes ((Token!7836 0))(
  ( (Token!7837 (value!131777 TokenValue!4313) (rule!6477 Rule!8154) (size!20229 Int) (originalCharacters!4949 List!26002)) )
))
(declare-datatypes ((List!26003 0))(
  ( (Nil!25919) (Cons!25919 (h!31320 Token!7836) (t!198859 List!26003)) )
))
(declare-fun l!6601 () List!26003)

(declare-fun inv!35119 (Token!7836) Bool)

(assert (=> b!2214573 (= e!1414375 (and (inv!35119 (h!31320 l!6601)) e!1414385 tp!688463))))

(declare-fun e!1414391 () Bool)

(assert (=> b!2214574 (= e!1414391 (and tp!688469 tp!688467))))

(declare-datatypes ((List!26004 0))(
  ( (Nil!25920) (Cons!25920 (h!31321 Rule!8154) (t!198860 List!26004)) )
))
(declare-fun rules!4462 () List!26004)

(declare-fun e!1414382 () Bool)

(declare-fun tp!688457 () Bool)

(declare-fun b!2214575 () Bool)

(declare-fun inv!35116 (String!28241) Bool)

(declare-fun inv!35120 (TokenValueInjection!8210) Bool)

(assert (=> b!2214575 (= e!1414381 (and tp!688457 (inv!35116 (tag!4667 (h!31321 rules!4462))) (inv!35120 (transformation!4177 (h!31321 rules!4462))) e!1414382))))

(declare-fun e!1414392 () Bool)

(assert (=> b!2214576 (= e!1414392 (and tp!688466 tp!688472))))

(declare-fun b!2214577 () Bool)

(declare-fun res!951699 () Bool)

(declare-fun e!1414389 () Bool)

(assert (=> b!2214577 (=> (not res!951699) (not e!1414389))))

(declare-fun i!1797 () Int)

(assert (=> b!2214577 (= res!951699 (>= i!1797 0))))

(declare-fun e!1414374 () Bool)

(declare-fun b!2214578 () Bool)

(declare-fun t1!61 () Token!7836)

(declare-fun e!1414377 () Bool)

(declare-fun tp!688465 () Bool)

(declare-fun inv!21 (TokenValue!4313) Bool)

(assert (=> b!2214578 (= e!1414377 (and (inv!21 (value!131777 t1!61)) e!1414374 tp!688465))))

(declare-fun b!2214579 () Bool)

(declare-fun res!951701 () Bool)

(assert (=> b!2214579 (=> (not res!951701) (not e!1414389))))

(declare-fun t2!61 () Token!7836)

(declare-fun apply!6423 (List!26003 Int) Token!7836)

(assert (=> b!2214579 (= res!951701 (= (apply!6423 l!6601 (+ 1 i!1797)) t2!61))))

(declare-fun b!2214580 () Bool)

(declare-fun tp!688456 () Bool)

(assert (=> b!2214580 (= e!1414374 (and tp!688456 (inv!35116 (tag!4667 (rule!6477 t1!61))) (inv!35120 (transformation!4177 (rule!6477 t1!61))) e!1414392))))

(declare-fun e!1414379 () Bool)

(declare-fun b!2214581 () Bool)

(declare-fun e!1414384 () Bool)

(declare-fun tp!688462 () Bool)

(assert (=> b!2214581 (= e!1414384 (and tp!688462 (inv!35116 (tag!4667 (rule!6477 (h!31320 l!6601)))) (inv!35120 (transformation!4177 (rule!6477 (h!31320 l!6601)))) e!1414379))))

(declare-fun b!2214582 () Bool)

(declare-fun e!1414376 () Bool)

(declare-fun tp!688455 () Bool)

(declare-fun e!1414383 () Bool)

(assert (=> b!2214582 (= e!1414383 (and (inv!21 (value!131777 t2!61)) e!1414376 tp!688455))))

(declare-fun res!951695 () Bool)

(assert (=> start!215824 (=> (not res!951695) (not e!1414389))))

(declare-datatypes ((LexerInterface!3774 0))(
  ( (LexerInterfaceExt!3771 (__x!17080 Int)) (Lexer!3772) )
))
(declare-fun thiss!27908 () LexerInterface!3774)

(get-info :version)

(assert (=> start!215824 (= res!951695 ((_ is Lexer!3772) thiss!27908))))

(assert (=> start!215824 e!1414389))

(assert (=> start!215824 true))

(assert (=> start!215824 e!1414390))

(assert (=> start!215824 (and (inv!35119 t2!61) e!1414383)))

(assert (=> start!215824 tp!688461))

(assert (=> start!215824 e!1414375))

(assert (=> start!215824 (and (inv!35119 t1!61) e!1414377)))

(declare-fun b!2214571 () Bool)

(declare-fun p!3128 () Int)

(declare-fun dynLambda!11467 (Int Token!7836 Token!7836 List!26004) Bool)

(assert (=> b!2214571 (= e!1414389 (not (dynLambda!11467 p!3128 t1!61 t2!61 rules!4462)))))

(assert (=> b!2214583 (= e!1414379 (and tp!688458 tp!688459))))

(declare-fun b!2214584 () Bool)

(declare-fun res!951696 () Bool)

(assert (=> b!2214584 (=> (not res!951696) (not e!1414389))))

(declare-fun size!20230 (List!26003) Int)

(assert (=> b!2214584 (= res!951696 (< (+ 1 i!1797) (size!20230 l!6601)))))

(assert (=> b!2214585 (= e!1414382 (and tp!688460 tp!688468))))

(declare-fun b!2214586 () Bool)

(declare-fun res!951700 () Bool)

(assert (=> b!2214586 (=> (not res!951700) (not e!1414389))))

(declare-fun tokensListTwoByTwoPredicateList!44 (LexerInterface!3774 List!26003 List!26004 Int) Bool)

(assert (=> b!2214586 (= res!951700 (tokensListTwoByTwoPredicateList!44 thiss!27908 l!6601 rules!4462 p!3128))))

(declare-fun b!2214587 () Bool)

(declare-fun res!951698 () Bool)

(assert (=> b!2214587 (=> (not res!951698) (not e!1414389))))

(assert (=> b!2214587 (= res!951698 (= i!1797 0))))

(declare-fun b!2214588 () Bool)

(declare-fun res!951697 () Bool)

(assert (=> b!2214588 (=> (not res!951697) (not e!1414389))))

(assert (=> b!2214588 (= res!951697 (= (apply!6423 l!6601 i!1797) t1!61))))

(declare-fun b!2214589 () Bool)

(declare-fun tp!688471 () Bool)

(assert (=> b!2214589 (= e!1414385 (and (inv!21 (value!131777 (h!31320 l!6601))) e!1414384 tp!688471))))

(declare-fun tp!688464 () Bool)

(declare-fun b!2214590 () Bool)

(assert (=> b!2214590 (= e!1414376 (and tp!688464 (inv!35116 (tag!4667 (rule!6477 t2!61))) (inv!35120 (transformation!4177 (rule!6477 t2!61))) e!1414391))))

(assert (= (and start!215824 res!951695) b!2214586))

(assert (= (and b!2214586 res!951700) b!2214577))

(assert (= (and b!2214577 res!951699) b!2214584))

(assert (= (and b!2214584 res!951696) b!2214588))

(assert (= (and b!2214588 res!951697) b!2214579))

(assert (= (and b!2214579 res!951701) b!2214587))

(assert (= (and b!2214587 res!951698) b!2214571))

(assert (= b!2214575 b!2214585))

(assert (= b!2214572 b!2214575))

(assert (= (and start!215824 ((_ is Cons!25920) rules!4462)) b!2214572))

(assert (= b!2214590 b!2214574))

(assert (= b!2214582 b!2214590))

(assert (= start!215824 b!2214582))

(assert (= b!2214581 b!2214583))

(assert (= b!2214589 b!2214581))

(assert (= b!2214573 b!2214589))

(assert (= (and start!215824 ((_ is Cons!25919) l!6601)) b!2214573))

(assert (= b!2214580 b!2214576))

(assert (= b!2214578 b!2214580))

(assert (= start!215824 b!2214578))

(declare-fun b_lambda!71307 () Bool)

(assert (=> (not b_lambda!71307) (not b!2214571)))

(declare-fun t!198856 () Bool)

(declare-fun tb!132379 () Bool)

(assert (=> (and start!215824 (= p!3128 p!3128) t!198856) tb!132379))

(declare-fun result!160612 () Bool)

(assert (=> tb!132379 (= result!160612 true)))

(assert (=> b!2214571 t!198856))

(declare-fun b_and!173703 () Bool)

(assert (= b_and!173693 (and (=> t!198856 result!160612) b_and!173703)))

(declare-fun m!2656629 () Bool)

(assert (=> b!2214590 m!2656629))

(declare-fun m!2656631 () Bool)

(assert (=> b!2214590 m!2656631))

(declare-fun m!2656633 () Bool)

(assert (=> b!2214589 m!2656633))

(declare-fun m!2656635 () Bool)

(assert (=> b!2214573 m!2656635))

(declare-fun m!2656637 () Bool)

(assert (=> b!2214581 m!2656637))

(declare-fun m!2656639 () Bool)

(assert (=> b!2214581 m!2656639))

(declare-fun m!2656641 () Bool)

(assert (=> b!2214571 m!2656641))

(declare-fun m!2656643 () Bool)

(assert (=> b!2214580 m!2656643))

(declare-fun m!2656645 () Bool)

(assert (=> b!2214580 m!2656645))

(declare-fun m!2656647 () Bool)

(assert (=> start!215824 m!2656647))

(declare-fun m!2656649 () Bool)

(assert (=> start!215824 m!2656649))

(declare-fun m!2656651 () Bool)

(assert (=> b!2214579 m!2656651))

(declare-fun m!2656653 () Bool)

(assert (=> b!2214588 m!2656653))

(declare-fun m!2656655 () Bool)

(assert (=> b!2214586 m!2656655))

(declare-fun m!2656657 () Bool)

(assert (=> b!2214575 m!2656657))

(declare-fun m!2656659 () Bool)

(assert (=> b!2214575 m!2656659))

(declare-fun m!2656661 () Bool)

(assert (=> b!2214584 m!2656661))

(declare-fun m!2656663 () Bool)

(assert (=> b!2214578 m!2656663))

(declare-fun m!2656665 () Bool)

(assert (=> b!2214582 m!2656665))

(check-sat (not b_next!64723) (not b!2214590) (not b_next!64719) (not b!2214582) (not b!2214588) b_and!173695 (not start!215824) (not b!2214572) (not b_next!64729) b_and!173689 b_and!173701 (not b!2214579) b_and!173697 (not b_next!64721) (not b_next!64725) (not b!2214584) b_and!173685 (not b!2214589) (not b_lambda!71307) (not b_next!64727) b_and!173691 (not b!2214586) (not b!2214575) (not b!2214573) (not b!2214580) (not b_next!64733) b_and!173699 (not b_next!64731) (not b!2214578) (not b!2214581) b_and!173687 (not b_next!64735) b_and!173703)
(check-sat b_and!173701 (not b_next!64723) (not b_next!64719) (not b_next!64731) b_and!173695 b_and!173687 (not b_next!64729) b_and!173689 b_and!173697 (not b_next!64721) (not b_next!64725) b_and!173685 (not b_next!64727) b_and!173691 (not b_next!64733) b_and!173699 (not b_next!64735) b_and!173703)
(get-model)

(declare-fun b_lambda!71309 () Bool)

(assert (= b_lambda!71307 (or (and start!215824 b_free!64023) b_lambda!71309)))

(check-sat (not b!2214589) (not b_next!64723) (not b!2214590) (not b_next!64719) (not b!2214582) (not b!2214588) b_and!173695 (not start!215824) (not b!2214572) (not b_next!64729) b_and!173689 (not b_lambda!71309) b_and!173701 (not b!2214579) b_and!173697 (not b_next!64721) (not b_next!64725) (not b!2214584) b_and!173685 (not b_next!64727) b_and!173691 (not b!2214586) (not b!2214575) (not b!2214573) (not b!2214580) (not b_next!64733) b_and!173699 (not b_next!64731) (not b!2214578) (not b!2214581) b_and!173687 (not b_next!64735) b_and!173703)
(check-sat b_and!173701 (not b_next!64723) (not b_next!64719) (not b_next!64731) b_and!173695 b_and!173687 (not b_next!64729) b_and!173689 b_and!173697 (not b_next!64721) (not b_next!64725) b_and!173685 (not b_next!64727) b_and!173691 (not b_next!64733) b_and!173699 (not b_next!64735) b_and!173703)
(get-model)

(declare-fun d!662165 () Bool)

(assert (=> d!662165 (= (inv!35116 (tag!4667 (rule!6477 (h!31320 l!6601)))) (= (mod (str.len (value!131776 (tag!4667 (rule!6477 (h!31320 l!6601))))) 2) 0))))

(assert (=> b!2214581 d!662165))

(declare-fun d!662167 () Bool)

(declare-fun res!951720 () Bool)

(declare-fun e!1414396 () Bool)

(assert (=> d!662167 (=> (not res!951720) (not e!1414396))))

(declare-fun semiInverseModEq!1667 (Int Int) Bool)

(assert (=> d!662167 (= res!951720 (semiInverseModEq!1667 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (toValue!5888 (transformation!4177 (rule!6477 (h!31320 l!6601))))))))

(assert (=> d!662167 (= (inv!35120 (transformation!4177 (rule!6477 (h!31320 l!6601)))) e!1414396)))

(declare-fun b!2214593 () Bool)

(declare-fun equivClasses!1594 (Int Int) Bool)

(assert (=> b!2214593 (= e!1414396 (equivClasses!1594 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (toValue!5888 (transformation!4177 (rule!6477 (h!31320 l!6601))))))))

(assert (= (and d!662167 res!951720) b!2214593))

(declare-fun m!2656667 () Bool)

(assert (=> d!662167 m!2656667))

(declare-fun m!2656669 () Bool)

(assert (=> b!2214593 m!2656669))

(assert (=> b!2214581 d!662167))

(declare-fun d!662171 () Bool)

(assert (=> d!662171 (= (inv!35116 (tag!4667 (rule!6477 t1!61))) (= (mod (str.len (value!131776 (tag!4667 (rule!6477 t1!61)))) 2) 0))))

(assert (=> b!2214580 d!662171))

(declare-fun d!662173 () Bool)

(declare-fun res!951721 () Bool)

(declare-fun e!1414397 () Bool)

(assert (=> d!662173 (=> (not res!951721) (not e!1414397))))

(assert (=> d!662173 (= res!951721 (semiInverseModEq!1667 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (toValue!5888 (transformation!4177 (rule!6477 t1!61)))))))

(assert (=> d!662173 (= (inv!35120 (transformation!4177 (rule!6477 t1!61))) e!1414397)))

(declare-fun b!2214594 () Bool)

(assert (=> b!2214594 (= e!1414397 (equivClasses!1594 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (toValue!5888 (transformation!4177 (rule!6477 t1!61)))))))

(assert (= (and d!662173 res!951721) b!2214594))

(declare-fun m!2656671 () Bool)

(assert (=> d!662173 m!2656671))

(declare-fun m!2656673 () Bool)

(assert (=> b!2214594 m!2656673))

(assert (=> b!2214580 d!662173))

(declare-fun d!662175 () Bool)

(assert (=> d!662175 (= (inv!35116 (tag!4667 (rule!6477 t2!61))) (= (mod (str.len (value!131776 (tag!4667 (rule!6477 t2!61)))) 2) 0))))

(assert (=> b!2214590 d!662175))

(declare-fun d!662177 () Bool)

(declare-fun res!951722 () Bool)

(declare-fun e!1414398 () Bool)

(assert (=> d!662177 (=> (not res!951722) (not e!1414398))))

(assert (=> d!662177 (= res!951722 (semiInverseModEq!1667 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (toValue!5888 (transformation!4177 (rule!6477 t2!61)))))))

(assert (=> d!662177 (= (inv!35120 (transformation!4177 (rule!6477 t2!61))) e!1414398)))

(declare-fun b!2214595 () Bool)

(assert (=> b!2214595 (= e!1414398 (equivClasses!1594 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (toValue!5888 (transformation!4177 (rule!6477 t2!61)))))))

(assert (= (and d!662177 res!951722) b!2214595))

(declare-fun m!2656675 () Bool)

(assert (=> d!662177 m!2656675))

(declare-fun m!2656677 () Bool)

(assert (=> b!2214595 m!2656677))

(assert (=> b!2214590 d!662177))

(declare-fun d!662179 () Bool)

(declare-fun lt!826766 () Token!7836)

(declare-fun contains!4300 (List!26003 Token!7836) Bool)

(assert (=> d!662179 (contains!4300 l!6601 lt!826766)))

(declare-fun e!1414411 () Token!7836)

(assert (=> d!662179 (= lt!826766 e!1414411)))

(declare-fun c!353867 () Bool)

(assert (=> d!662179 (= c!353867 (= (+ 1 i!1797) 0))))

(declare-fun e!1414410 () Bool)

(assert (=> d!662179 e!1414410))

(declare-fun res!951733 () Bool)

(assert (=> d!662179 (=> (not res!951733) (not e!1414410))))

(assert (=> d!662179 (= res!951733 (<= 0 (+ 1 i!1797)))))

(assert (=> d!662179 (= (apply!6423 l!6601 (+ 1 i!1797)) lt!826766)))

(declare-fun b!2214615 () Bool)

(assert (=> b!2214615 (= e!1414410 (< (+ 1 i!1797) (size!20230 l!6601)))))

(declare-fun b!2214616 () Bool)

(declare-fun head!4732 (List!26003) Token!7836)

(assert (=> b!2214616 (= e!1414411 (head!4732 l!6601))))

(declare-fun b!2214617 () Bool)

(declare-fun tail!3217 (List!26003) List!26003)

(assert (=> b!2214617 (= e!1414411 (apply!6423 (tail!3217 l!6601) (- (+ 1 i!1797) 1)))))

(assert (= (and d!662179 res!951733) b!2214615))

(assert (= (and d!662179 c!353867) b!2214616))

(assert (= (and d!662179 (not c!353867)) b!2214617))

(declare-fun m!2656691 () Bool)

(assert (=> d!662179 m!2656691))

(assert (=> b!2214615 m!2656661))

(declare-fun m!2656693 () Bool)

(assert (=> b!2214616 m!2656693))

(declare-fun m!2656695 () Bool)

(assert (=> b!2214617 m!2656695))

(assert (=> b!2214617 m!2656695))

(declare-fun m!2656697 () Bool)

(assert (=> b!2214617 m!2656697))

(assert (=> b!2214579 d!662179))

(declare-fun b!2214635 () Bool)

(declare-fun res!951742 () Bool)

(declare-fun e!1414426 () Bool)

(assert (=> b!2214635 (=> res!951742 e!1414426)))

(assert (=> b!2214635 (= res!951742 (not ((_ is IntegerValue!12941) (value!131777 (h!31320 l!6601)))))))

(declare-fun e!1414425 () Bool)

(assert (=> b!2214635 (= e!1414425 e!1414426)))

(declare-fun b!2214636 () Bool)

(declare-fun e!1414427 () Bool)

(assert (=> b!2214636 (= e!1414427 e!1414425)))

(declare-fun c!353872 () Bool)

(assert (=> b!2214636 (= c!353872 ((_ is IntegerValue!12940) (value!131777 (h!31320 l!6601))))))

(declare-fun b!2214637 () Bool)

(declare-fun inv!16 (TokenValue!4313) Bool)

(assert (=> b!2214637 (= e!1414427 (inv!16 (value!131777 (h!31320 l!6601))))))

(declare-fun d!662183 () Bool)

(declare-fun c!353873 () Bool)

(assert (=> d!662183 (= c!353873 ((_ is IntegerValue!12939) (value!131777 (h!31320 l!6601))))))

(assert (=> d!662183 (= (inv!21 (value!131777 (h!31320 l!6601))) e!1414427)))

(declare-fun b!2214638 () Bool)

(declare-fun inv!17 (TokenValue!4313) Bool)

(assert (=> b!2214638 (= e!1414425 (inv!17 (value!131777 (h!31320 l!6601))))))

(declare-fun b!2214639 () Bool)

(declare-fun inv!15 (TokenValue!4313) Bool)

(assert (=> b!2214639 (= e!1414426 (inv!15 (value!131777 (h!31320 l!6601))))))

(assert (= (and d!662183 c!353873) b!2214637))

(assert (= (and d!662183 (not c!353873)) b!2214636))

(assert (= (and b!2214636 c!353872) b!2214638))

(assert (= (and b!2214636 (not c!353872)) b!2214635))

(assert (= (and b!2214635 (not res!951742)) b!2214639))

(declare-fun m!2656711 () Bool)

(assert (=> b!2214637 m!2656711))

(declare-fun m!2656713 () Bool)

(assert (=> b!2214638 m!2656713))

(declare-fun m!2656715 () Bool)

(assert (=> b!2214639 m!2656715))

(assert (=> b!2214589 d!662183))

(declare-fun b!2214640 () Bool)

(declare-fun res!951743 () Bool)

(declare-fun e!1414429 () Bool)

(assert (=> b!2214640 (=> res!951743 e!1414429)))

(assert (=> b!2214640 (= res!951743 (not ((_ is IntegerValue!12941) (value!131777 t1!61))))))

(declare-fun e!1414428 () Bool)

(assert (=> b!2214640 (= e!1414428 e!1414429)))

(declare-fun b!2214641 () Bool)

(declare-fun e!1414430 () Bool)

(assert (=> b!2214641 (= e!1414430 e!1414428)))

(declare-fun c!353874 () Bool)

(assert (=> b!2214641 (= c!353874 ((_ is IntegerValue!12940) (value!131777 t1!61)))))

(declare-fun b!2214642 () Bool)

(assert (=> b!2214642 (= e!1414430 (inv!16 (value!131777 t1!61)))))

(declare-fun d!662187 () Bool)

(declare-fun c!353875 () Bool)

(assert (=> d!662187 (= c!353875 ((_ is IntegerValue!12939) (value!131777 t1!61)))))

(assert (=> d!662187 (= (inv!21 (value!131777 t1!61)) e!1414430)))

(declare-fun b!2214643 () Bool)

(assert (=> b!2214643 (= e!1414428 (inv!17 (value!131777 t1!61)))))

(declare-fun b!2214644 () Bool)

(assert (=> b!2214644 (= e!1414429 (inv!15 (value!131777 t1!61)))))

(assert (= (and d!662187 c!353875) b!2214642))

(assert (= (and d!662187 (not c!353875)) b!2214641))

(assert (= (and b!2214641 c!353874) b!2214643))

(assert (= (and b!2214641 (not c!353874)) b!2214640))

(assert (= (and b!2214640 (not res!951743)) b!2214644))

(declare-fun m!2656721 () Bool)

(assert (=> b!2214642 m!2656721))

(declare-fun m!2656723 () Bool)

(assert (=> b!2214643 m!2656723))

(declare-fun m!2656725 () Bool)

(assert (=> b!2214644 m!2656725))

(assert (=> b!2214578 d!662187))

(declare-fun d!662191 () Bool)

(declare-fun lt!826767 () Token!7836)

(assert (=> d!662191 (contains!4300 l!6601 lt!826767)))

(declare-fun e!1414432 () Token!7836)

(assert (=> d!662191 (= lt!826767 e!1414432)))

(declare-fun c!353876 () Bool)

(assert (=> d!662191 (= c!353876 (= i!1797 0))))

(declare-fun e!1414431 () Bool)

(assert (=> d!662191 e!1414431))

(declare-fun res!951744 () Bool)

(assert (=> d!662191 (=> (not res!951744) (not e!1414431))))

(assert (=> d!662191 (= res!951744 (<= 0 i!1797))))

(assert (=> d!662191 (= (apply!6423 l!6601 i!1797) lt!826767)))

(declare-fun b!2214645 () Bool)

(assert (=> b!2214645 (= e!1414431 (< i!1797 (size!20230 l!6601)))))

(declare-fun b!2214646 () Bool)

(assert (=> b!2214646 (= e!1414432 (head!4732 l!6601))))

(declare-fun b!2214647 () Bool)

(assert (=> b!2214647 (= e!1414432 (apply!6423 (tail!3217 l!6601) (- i!1797 1)))))

(assert (= (and d!662191 res!951744) b!2214645))

(assert (= (and d!662191 c!353876) b!2214646))

(assert (= (and d!662191 (not c!353876)) b!2214647))

(declare-fun m!2656727 () Bool)

(assert (=> d!662191 m!2656727))

(assert (=> b!2214645 m!2656661))

(assert (=> b!2214646 m!2656693))

(assert (=> b!2214647 m!2656695))

(assert (=> b!2214647 m!2656695))

(declare-fun m!2656729 () Bool)

(assert (=> b!2214647 m!2656729))

(assert (=> b!2214588 d!662191))

(declare-fun d!662193 () Bool)

(declare-fun res!951749 () Bool)

(declare-fun e!1414440 () Bool)

(assert (=> d!662193 (=> res!951749 e!1414440)))

(assert (=> d!662193 (= res!951749 (or (not ((_ is Cons!25919) l!6601)) (not ((_ is Cons!25919) (t!198859 l!6601)))))))

(assert (=> d!662193 (= (tokensListTwoByTwoPredicateList!44 thiss!27908 l!6601 rules!4462 p!3128) e!1414440)))

(declare-fun b!2214658 () Bool)

(declare-fun e!1414441 () Bool)

(assert (=> b!2214658 (= e!1414440 e!1414441)))

(declare-fun res!951750 () Bool)

(assert (=> b!2214658 (=> (not res!951750) (not e!1414441))))

(assert (=> b!2214658 (= res!951750 (dynLambda!11467 p!3128 (h!31320 l!6601) (h!31320 (t!198859 l!6601)) rules!4462))))

(declare-fun b!2214659 () Bool)

(assert (=> b!2214659 (= e!1414441 (tokensListTwoByTwoPredicateList!44 thiss!27908 (Cons!25919 (h!31320 (t!198859 l!6601)) (t!198859 (t!198859 l!6601))) rules!4462 p!3128))))

(assert (= (and d!662193 (not res!951749)) b!2214658))

(assert (= (and b!2214658 res!951750) b!2214659))

(declare-fun b_lambda!71319 () Bool)

(assert (=> (not b_lambda!71319) (not b!2214658)))

(declare-fun t!198880 () Bool)

(declare-fun tb!132399 () Bool)

(assert (=> (and start!215824 (= p!3128 p!3128) t!198880) tb!132399))

(declare-fun result!160634 () Bool)

(assert (=> tb!132399 (= result!160634 true)))

(assert (=> b!2214658 t!198880))

(declare-fun b_and!173723 () Bool)

(assert (= b_and!173703 (and (=> t!198880 result!160634) b_and!173723)))

(declare-fun m!2656733 () Bool)

(assert (=> b!2214658 m!2656733))

(declare-fun m!2656735 () Bool)

(assert (=> b!2214659 m!2656735))

(assert (=> b!2214586 d!662193))

(declare-fun d!662197 () Bool)

(assert (=> d!662197 (= (inv!35116 (tag!4667 (h!31321 rules!4462))) (= (mod (str.len (value!131776 (tag!4667 (h!31321 rules!4462)))) 2) 0))))

(assert (=> b!2214575 d!662197))

(declare-fun d!662199 () Bool)

(declare-fun res!951751 () Bool)

(declare-fun e!1414442 () Bool)

(assert (=> d!662199 (=> (not res!951751) (not e!1414442))))

(assert (=> d!662199 (= res!951751 (semiInverseModEq!1667 (toChars!5747 (transformation!4177 (h!31321 rules!4462))) (toValue!5888 (transformation!4177 (h!31321 rules!4462)))))))

(assert (=> d!662199 (= (inv!35120 (transformation!4177 (h!31321 rules!4462))) e!1414442)))

(declare-fun b!2214660 () Bool)

(assert (=> b!2214660 (= e!1414442 (equivClasses!1594 (toChars!5747 (transformation!4177 (h!31321 rules!4462))) (toValue!5888 (transformation!4177 (h!31321 rules!4462)))))))

(assert (= (and d!662199 res!951751) b!2214660))

(declare-fun m!2656737 () Bool)

(assert (=> d!662199 m!2656737))

(declare-fun m!2656739 () Bool)

(assert (=> b!2214660 m!2656739))

(assert (=> b!2214575 d!662199))

(declare-fun d!662201 () Bool)

(declare-fun res!951761 () Bool)

(declare-fun e!1414453 () Bool)

(assert (=> d!662201 (=> (not res!951761) (not e!1414453))))

(declare-fun isEmpty!14830 (List!26002) Bool)

(assert (=> d!662201 (= res!951761 (not (isEmpty!14830 (originalCharacters!4949 t2!61))))))

(assert (=> d!662201 (= (inv!35119 t2!61) e!1414453)))

(declare-fun b!2214677 () Bool)

(declare-fun res!951762 () Bool)

(assert (=> b!2214677 (=> (not res!951762) (not e!1414453))))

(declare-fun list!10054 (BalanceConc!16676) List!26002)

(declare-fun dynLambda!11469 (Int TokenValue!4313) BalanceConc!16676)

(assert (=> b!2214677 (= res!951762 (= (originalCharacters!4949 t2!61) (list!10054 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))))

(declare-fun b!2214678 () Bool)

(declare-fun size!20232 (List!26002) Int)

(assert (=> b!2214678 (= e!1414453 (= (size!20229 t2!61) (size!20232 (originalCharacters!4949 t2!61))))))

(assert (= (and d!662201 res!951761) b!2214677))

(assert (= (and b!2214677 res!951762) b!2214678))

(declare-fun b_lambda!71323 () Bool)

(assert (=> (not b_lambda!71323) (not b!2214677)))

(declare-fun t!198890 () Bool)

(declare-fun tb!132409 () Bool)

(assert (=> (and b!2214574 (= (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (toChars!5747 (transformation!4177 (rule!6477 t2!61)))) t!198890) tb!132409))

(declare-fun b!2214683 () Bool)

(declare-fun e!1414456 () Bool)

(declare-fun tp!688480 () Bool)

(declare-fun inv!35123 (Conc!8479) Bool)

(assert (=> b!2214683 (= e!1414456 (and (inv!35123 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))) tp!688480))))

(declare-fun result!160644 () Bool)

(declare-fun inv!35124 (BalanceConc!16676) Bool)

(assert (=> tb!132409 (= result!160644 (and (inv!35124 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))) e!1414456))))

(assert (= tb!132409 b!2214683))

(declare-fun m!2656761 () Bool)

(assert (=> b!2214683 m!2656761))

(declare-fun m!2656763 () Bool)

(assert (=> tb!132409 m!2656763))

(assert (=> b!2214677 t!198890))

(declare-fun b_and!173733 () Bool)

(assert (= b_and!173687 (and (=> t!198890 result!160644) b_and!173733)))

(declare-fun tb!132411 () Bool)

(declare-fun t!198892 () Bool)

(assert (=> (and b!2214576 (= (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (toChars!5747 (transformation!4177 (rule!6477 t2!61)))) t!198892) tb!132411))

(declare-fun result!160648 () Bool)

(assert (= result!160648 result!160644))

(assert (=> b!2214677 t!198892))

(declare-fun b_and!173735 () Bool)

(assert (= b_and!173691 (and (=> t!198892 result!160648) b_and!173735)))

(declare-fun tb!132413 () Bool)

(declare-fun t!198894 () Bool)

(assert (=> (and b!2214585 (= (toChars!5747 (transformation!4177 (h!31321 rules!4462))) (toChars!5747 (transformation!4177 (rule!6477 t2!61)))) t!198894) tb!132413))

(declare-fun result!160650 () Bool)

(assert (= result!160650 result!160644))

(assert (=> b!2214677 t!198894))

(declare-fun b_and!173737 () Bool)

(assert (= b_and!173697 (and (=> t!198894 result!160650) b_and!173737)))

(declare-fun t!198896 () Bool)

(declare-fun tb!132415 () Bool)

(assert (=> (and b!2214583 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (toChars!5747 (transformation!4177 (rule!6477 t2!61)))) t!198896) tb!132415))

(declare-fun result!160652 () Bool)

(assert (= result!160652 result!160644))

(assert (=> b!2214677 t!198896))

(declare-fun b_and!173739 () Bool)

(assert (= b_and!173701 (and (=> t!198896 result!160652) b_and!173739)))

(declare-fun m!2656765 () Bool)

(assert (=> d!662201 m!2656765))

(declare-fun m!2656767 () Bool)

(assert (=> b!2214677 m!2656767))

(assert (=> b!2214677 m!2656767))

(declare-fun m!2656769 () Bool)

(assert (=> b!2214677 m!2656769))

(declare-fun m!2656771 () Bool)

(assert (=> b!2214678 m!2656771))

(assert (=> start!215824 d!662201))

(declare-fun d!662209 () Bool)

(declare-fun res!951763 () Bool)

(declare-fun e!1414457 () Bool)

(assert (=> d!662209 (=> (not res!951763) (not e!1414457))))

(assert (=> d!662209 (= res!951763 (not (isEmpty!14830 (originalCharacters!4949 t1!61))))))

(assert (=> d!662209 (= (inv!35119 t1!61) e!1414457)))

(declare-fun b!2214684 () Bool)

(declare-fun res!951764 () Bool)

(assert (=> b!2214684 (=> (not res!951764) (not e!1414457))))

(assert (=> b!2214684 (= res!951764 (= (originalCharacters!4949 t1!61) (list!10054 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))))

(declare-fun b!2214685 () Bool)

(assert (=> b!2214685 (= e!1414457 (= (size!20229 t1!61) (size!20232 (originalCharacters!4949 t1!61))))))

(assert (= (and d!662209 res!951763) b!2214684))

(assert (= (and b!2214684 res!951764) b!2214685))

(declare-fun b_lambda!71325 () Bool)

(assert (=> (not b_lambda!71325) (not b!2214684)))

(declare-fun tb!132417 () Bool)

(declare-fun t!198898 () Bool)

(assert (=> (and b!2214574 (= (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (toChars!5747 (transformation!4177 (rule!6477 t1!61)))) t!198898) tb!132417))

(declare-fun b!2214686 () Bool)

(declare-fun e!1414458 () Bool)

(declare-fun tp!688481 () Bool)

(assert (=> b!2214686 (= e!1414458 (and (inv!35123 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))) tp!688481))))

(declare-fun result!160654 () Bool)

(assert (=> tb!132417 (= result!160654 (and (inv!35124 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))) e!1414458))))

(assert (= tb!132417 b!2214686))

(declare-fun m!2656773 () Bool)

(assert (=> b!2214686 m!2656773))

(declare-fun m!2656775 () Bool)

(assert (=> tb!132417 m!2656775))

(assert (=> b!2214684 t!198898))

(declare-fun b_and!173741 () Bool)

(assert (= b_and!173733 (and (=> t!198898 result!160654) b_and!173741)))

(declare-fun t!198900 () Bool)

(declare-fun tb!132419 () Bool)

(assert (=> (and b!2214576 (= (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (toChars!5747 (transformation!4177 (rule!6477 t1!61)))) t!198900) tb!132419))

(declare-fun result!160656 () Bool)

(assert (= result!160656 result!160654))

(assert (=> b!2214684 t!198900))

(declare-fun b_and!173743 () Bool)

(assert (= b_and!173735 (and (=> t!198900 result!160656) b_and!173743)))

(declare-fun t!198902 () Bool)

(declare-fun tb!132421 () Bool)

(assert (=> (and b!2214585 (= (toChars!5747 (transformation!4177 (h!31321 rules!4462))) (toChars!5747 (transformation!4177 (rule!6477 t1!61)))) t!198902) tb!132421))

(declare-fun result!160658 () Bool)

(assert (= result!160658 result!160654))

(assert (=> b!2214684 t!198902))

(declare-fun b_and!173745 () Bool)

(assert (= b_and!173737 (and (=> t!198902 result!160658) b_and!173745)))

(declare-fun t!198904 () Bool)

(declare-fun tb!132423 () Bool)

(assert (=> (and b!2214583 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (toChars!5747 (transformation!4177 (rule!6477 t1!61)))) t!198904) tb!132423))

(declare-fun result!160660 () Bool)

(assert (= result!160660 result!160654))

(assert (=> b!2214684 t!198904))

(declare-fun b_and!173747 () Bool)

(assert (= b_and!173739 (and (=> t!198904 result!160660) b_and!173747)))

(declare-fun m!2656777 () Bool)

(assert (=> d!662209 m!2656777))

(declare-fun m!2656779 () Bool)

(assert (=> b!2214684 m!2656779))

(assert (=> b!2214684 m!2656779))

(declare-fun m!2656781 () Bool)

(assert (=> b!2214684 m!2656781))

(declare-fun m!2656783 () Bool)

(assert (=> b!2214685 m!2656783))

(assert (=> start!215824 d!662209))

(declare-fun d!662211 () Bool)

(declare-fun lt!826776 () Int)

(assert (=> d!662211 (>= lt!826776 0)))

(declare-fun e!1414464 () Int)

(assert (=> d!662211 (= lt!826776 e!1414464)))

(declare-fun c!353885 () Bool)

(assert (=> d!662211 (= c!353885 ((_ is Nil!25919) l!6601))))

(assert (=> d!662211 (= (size!20230 l!6601) lt!826776)))

(declare-fun b!2214694 () Bool)

(assert (=> b!2214694 (= e!1414464 0)))

(declare-fun b!2214695 () Bool)

(assert (=> b!2214695 (= e!1414464 (+ 1 (size!20230 (t!198859 l!6601))))))

(assert (= (and d!662211 c!353885) b!2214694))

(assert (= (and d!662211 (not c!353885)) b!2214695))

(declare-fun m!2656789 () Bool)

(assert (=> b!2214695 m!2656789))

(assert (=> b!2214584 d!662211))

(declare-fun d!662215 () Bool)

(declare-fun res!951770 () Bool)

(declare-fun e!1414471 () Bool)

(assert (=> d!662215 (=> (not res!951770) (not e!1414471))))

(assert (=> d!662215 (= res!951770 (not (isEmpty!14830 (originalCharacters!4949 (h!31320 l!6601)))))))

(assert (=> d!662215 (= (inv!35119 (h!31320 l!6601)) e!1414471)))

(declare-fun b!2214706 () Bool)

(declare-fun res!951771 () Bool)

(assert (=> b!2214706 (=> (not res!951771) (not e!1414471))))

(assert (=> b!2214706 (= res!951771 (= (originalCharacters!4949 (h!31320 l!6601)) (list!10054 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))))

(declare-fun b!2214707 () Bool)

(assert (=> b!2214707 (= e!1414471 (= (size!20229 (h!31320 l!6601)) (size!20232 (originalCharacters!4949 (h!31320 l!6601)))))))

(assert (= (and d!662215 res!951770) b!2214706))

(assert (= (and b!2214706 res!951771) b!2214707))

(declare-fun b_lambda!71327 () Bool)

(assert (=> (not b_lambda!71327) (not b!2214706)))

(declare-fun t!198906 () Bool)

(declare-fun tb!132425 () Bool)

(assert (=> (and b!2214574 (= (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601))))) t!198906) tb!132425))

(declare-fun b!2214708 () Bool)

(declare-fun e!1414472 () Bool)

(declare-fun tp!688482 () Bool)

(assert (=> b!2214708 (= e!1414472 (and (inv!35123 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))) tp!688482))))

(declare-fun result!160662 () Bool)

(assert (=> tb!132425 (= result!160662 (and (inv!35124 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))) e!1414472))))

(assert (= tb!132425 b!2214708))

(declare-fun m!2656791 () Bool)

(assert (=> b!2214708 m!2656791))

(declare-fun m!2656793 () Bool)

(assert (=> tb!132425 m!2656793))

(assert (=> b!2214706 t!198906))

(declare-fun b_and!173749 () Bool)

(assert (= b_and!173741 (and (=> t!198906 result!160662) b_and!173749)))

(declare-fun tb!132427 () Bool)

(declare-fun t!198908 () Bool)

(assert (=> (and b!2214576 (= (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601))))) t!198908) tb!132427))

(declare-fun result!160664 () Bool)

(assert (= result!160664 result!160662))

(assert (=> b!2214706 t!198908))

(declare-fun b_and!173751 () Bool)

(assert (= b_and!173743 (and (=> t!198908 result!160664) b_and!173751)))

(declare-fun t!198910 () Bool)

(declare-fun tb!132429 () Bool)

(assert (=> (and b!2214585 (= (toChars!5747 (transformation!4177 (h!31321 rules!4462))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601))))) t!198910) tb!132429))

(declare-fun result!160666 () Bool)

(assert (= result!160666 result!160662))

(assert (=> b!2214706 t!198910))

(declare-fun b_and!173753 () Bool)

(assert (= b_and!173745 (and (=> t!198910 result!160666) b_and!173753)))

(declare-fun t!198912 () Bool)

(declare-fun tb!132431 () Bool)

(assert (=> (and b!2214583 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601))))) t!198912) tb!132431))

(declare-fun result!160668 () Bool)

(assert (= result!160668 result!160662))

(assert (=> b!2214706 t!198912))

(declare-fun b_and!173755 () Bool)

(assert (= b_and!173747 (and (=> t!198912 result!160668) b_and!173755)))

(declare-fun m!2656795 () Bool)

(assert (=> d!662215 m!2656795))

(declare-fun m!2656797 () Bool)

(assert (=> b!2214706 m!2656797))

(assert (=> b!2214706 m!2656797))

(declare-fun m!2656799 () Bool)

(assert (=> b!2214706 m!2656799))

(declare-fun m!2656801 () Bool)

(assert (=> b!2214707 m!2656801))

(assert (=> b!2214573 d!662215))

(declare-fun b!2214709 () Bool)

(declare-fun res!951772 () Bool)

(declare-fun e!1414474 () Bool)

(assert (=> b!2214709 (=> res!951772 e!1414474)))

(assert (=> b!2214709 (= res!951772 (not ((_ is IntegerValue!12941) (value!131777 t2!61))))))

(declare-fun e!1414473 () Bool)

(assert (=> b!2214709 (= e!1414473 e!1414474)))

(declare-fun b!2214710 () Bool)

(declare-fun e!1414475 () Bool)

(assert (=> b!2214710 (= e!1414475 e!1414473)))

(declare-fun c!353890 () Bool)

(assert (=> b!2214710 (= c!353890 ((_ is IntegerValue!12940) (value!131777 t2!61)))))

(declare-fun b!2214711 () Bool)

(assert (=> b!2214711 (= e!1414475 (inv!16 (value!131777 t2!61)))))

(declare-fun d!662217 () Bool)

(declare-fun c!353891 () Bool)

(assert (=> d!662217 (= c!353891 ((_ is IntegerValue!12939) (value!131777 t2!61)))))

(assert (=> d!662217 (= (inv!21 (value!131777 t2!61)) e!1414475)))

(declare-fun b!2214712 () Bool)

(assert (=> b!2214712 (= e!1414473 (inv!17 (value!131777 t2!61)))))

(declare-fun b!2214713 () Bool)

(assert (=> b!2214713 (= e!1414474 (inv!15 (value!131777 t2!61)))))

(assert (= (and d!662217 c!353891) b!2214711))

(assert (= (and d!662217 (not c!353891)) b!2214710))

(assert (= (and b!2214710 c!353890) b!2214712))

(assert (= (and b!2214710 (not c!353890)) b!2214709))

(assert (= (and b!2214709 (not res!951772)) b!2214713))

(declare-fun m!2656803 () Bool)

(assert (=> b!2214711 m!2656803))

(declare-fun m!2656807 () Bool)

(assert (=> b!2214712 m!2656807))

(declare-fun m!2656809 () Bool)

(assert (=> b!2214713 m!2656809))

(assert (=> b!2214582 d!662217))

(declare-fun b!2214739 () Bool)

(declare-fun e!1414488 () Bool)

(declare-fun tp_is_empty!9815 () Bool)

(assert (=> b!2214739 (= e!1414488 tp_is_empty!9815)))

(assert (=> b!2214581 (= tp!688462 e!1414488)))

(declare-fun b!2214741 () Bool)

(declare-fun tp!688495 () Bool)

(assert (=> b!2214741 (= e!1414488 tp!688495)))

(declare-fun b!2214740 () Bool)

(declare-fun tp!688494 () Bool)

(declare-fun tp!688493 () Bool)

(assert (=> b!2214740 (= e!1414488 (and tp!688494 tp!688493))))

(declare-fun b!2214742 () Bool)

(declare-fun tp!688496 () Bool)

(declare-fun tp!688497 () Bool)

(assert (=> b!2214742 (= e!1414488 (and tp!688496 tp!688497))))

(assert (= (and b!2214581 ((_ is ElementMatch!6321) (regex!4177 (rule!6477 (h!31320 l!6601))))) b!2214739))

(assert (= (and b!2214581 ((_ is Concat!10635) (regex!4177 (rule!6477 (h!31320 l!6601))))) b!2214740))

(assert (= (and b!2214581 ((_ is Star!6321) (regex!4177 (rule!6477 (h!31320 l!6601))))) b!2214741))

(assert (= (and b!2214581 ((_ is Union!6321) (regex!4177 (rule!6477 (h!31320 l!6601))))) b!2214742))

(declare-fun b!2214748 () Bool)

(declare-fun e!1414492 () Bool)

(assert (=> b!2214748 (= e!1414492 tp_is_empty!9815)))

(assert (=> b!2214580 (= tp!688456 e!1414492)))

(declare-fun b!2214750 () Bool)

(declare-fun tp!688500 () Bool)

(assert (=> b!2214750 (= e!1414492 tp!688500)))

(declare-fun b!2214749 () Bool)

(declare-fun tp!688499 () Bool)

(declare-fun tp!688498 () Bool)

(assert (=> b!2214749 (= e!1414492 (and tp!688499 tp!688498))))

(declare-fun b!2214751 () Bool)

(declare-fun tp!688501 () Bool)

(declare-fun tp!688502 () Bool)

(assert (=> b!2214751 (= e!1414492 (and tp!688501 tp!688502))))

(assert (= (and b!2214580 ((_ is ElementMatch!6321) (regex!4177 (rule!6477 t1!61)))) b!2214748))

(assert (= (and b!2214580 ((_ is Concat!10635) (regex!4177 (rule!6477 t1!61)))) b!2214749))

(assert (= (and b!2214580 ((_ is Star!6321) (regex!4177 (rule!6477 t1!61)))) b!2214750))

(assert (= (and b!2214580 ((_ is Union!6321) (regex!4177 (rule!6477 t1!61)))) b!2214751))

(declare-fun b!2214753 () Bool)

(declare-fun e!1414494 () Bool)

(assert (=> b!2214753 (= e!1414494 tp_is_empty!9815)))

(assert (=> b!2214590 (= tp!688464 e!1414494)))

(declare-fun b!2214755 () Bool)

(declare-fun tp!688505 () Bool)

(assert (=> b!2214755 (= e!1414494 tp!688505)))

(declare-fun b!2214754 () Bool)

(declare-fun tp!688504 () Bool)

(declare-fun tp!688503 () Bool)

(assert (=> b!2214754 (= e!1414494 (and tp!688504 tp!688503))))

(declare-fun b!2214756 () Bool)

(declare-fun tp!688506 () Bool)

(declare-fun tp!688507 () Bool)

(assert (=> b!2214756 (= e!1414494 (and tp!688506 tp!688507))))

(assert (= (and b!2214590 ((_ is ElementMatch!6321) (regex!4177 (rule!6477 t2!61)))) b!2214753))

(assert (= (and b!2214590 ((_ is Concat!10635) (regex!4177 (rule!6477 t2!61)))) b!2214754))

(assert (= (and b!2214590 ((_ is Star!6321) (regex!4177 (rule!6477 t2!61)))) b!2214755))

(assert (= (and b!2214590 ((_ is Union!6321) (regex!4177 (rule!6477 t2!61)))) b!2214756))

(declare-fun b!2214767 () Bool)

(declare-fun e!1414503 () Bool)

(declare-fun tp!688512 () Bool)

(assert (=> b!2214767 (= e!1414503 (and tp_is_empty!9815 tp!688512))))

(assert (=> b!2214589 (= tp!688471 e!1414503)))

(assert (= (and b!2214589 ((_ is Cons!25918) (originalCharacters!4949 (h!31320 l!6601)))) b!2214767))

(declare-fun b!2214768 () Bool)

(declare-fun e!1414504 () Bool)

(declare-fun tp!688513 () Bool)

(assert (=> b!2214768 (= e!1414504 (and tp_is_empty!9815 tp!688513))))

(assert (=> b!2214578 (= tp!688465 e!1414504)))

(assert (= (and b!2214578 ((_ is Cons!25918) (originalCharacters!4949 t1!61))) b!2214768))

(declare-fun b!2214771 () Bool)

(declare-fun e!1414507 () Bool)

(assert (=> b!2214771 (= e!1414507 tp_is_empty!9815)))

(assert (=> b!2214575 (= tp!688457 e!1414507)))

(declare-fun b!2214773 () Bool)

(declare-fun tp!688516 () Bool)

(assert (=> b!2214773 (= e!1414507 tp!688516)))

(declare-fun b!2214772 () Bool)

(declare-fun tp!688515 () Bool)

(declare-fun tp!688514 () Bool)

(assert (=> b!2214772 (= e!1414507 (and tp!688515 tp!688514))))

(declare-fun b!2214774 () Bool)

(declare-fun tp!688517 () Bool)

(declare-fun tp!688518 () Bool)

(assert (=> b!2214774 (= e!1414507 (and tp!688517 tp!688518))))

(assert (= (and b!2214575 ((_ is ElementMatch!6321) (regex!4177 (h!31321 rules!4462)))) b!2214771))

(assert (= (and b!2214575 ((_ is Concat!10635) (regex!4177 (h!31321 rules!4462)))) b!2214772))

(assert (= (and b!2214575 ((_ is Star!6321) (regex!4177 (h!31321 rules!4462)))) b!2214773))

(assert (= (and b!2214575 ((_ is Union!6321) (regex!4177 (h!31321 rules!4462)))) b!2214774))

(declare-fun b!2214801 () Bool)

(declare-fun b_free!64037 () Bool)

(declare-fun b_next!64741 () Bool)

(assert (=> b!2214801 (= b_free!64037 (not b_next!64741))))

(declare-fun tp!688549 () Bool)

(declare-fun b_and!173761 () Bool)

(assert (=> b!2214801 (= tp!688549 b_and!173761)))

(declare-fun b_free!64039 () Bool)

(declare-fun b_next!64743 () Bool)

(assert (=> b!2214801 (= b_free!64039 (not b_next!64743))))

(declare-fun tb!132439 () Bool)

(declare-fun t!198920 () Bool)

(assert (=> (and b!2214801 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toChars!5747 (transformation!4177 (rule!6477 t2!61)))) t!198920) tb!132439))

(declare-fun result!160686 () Bool)

(assert (= result!160686 result!160644))

(assert (=> b!2214677 t!198920))

(declare-fun t!198922 () Bool)

(declare-fun tb!132441 () Bool)

(assert (=> (and b!2214801 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toChars!5747 (transformation!4177 (rule!6477 t1!61)))) t!198922) tb!132441))

(declare-fun result!160688 () Bool)

(assert (= result!160688 result!160654))

(assert (=> b!2214684 t!198922))

(declare-fun t!198924 () Bool)

(declare-fun tb!132443 () Bool)

(assert (=> (and b!2214801 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601))))) t!198924) tb!132443))

(declare-fun result!160690 () Bool)

(assert (= result!160690 result!160662))

(assert (=> b!2214706 t!198924))

(declare-fun b_and!173763 () Bool)

(declare-fun tp!688553 () Bool)

(assert (=> b!2214801 (= tp!688553 (and (=> t!198920 result!160686) (=> t!198922 result!160688) (=> t!198924 result!160690) b_and!173763))))

(declare-fun tp!688551 () Bool)

(declare-fun e!1414539 () Bool)

(declare-fun e!1414541 () Bool)

(declare-fun b!2214800 () Bool)

(assert (=> b!2214800 (= e!1414539 (and tp!688551 (inv!35116 (tag!4667 (rule!6477 (h!31320 (t!198859 l!6601))))) (inv!35120 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) e!1414541))))

(assert (=> b!2214801 (= e!1414541 (and tp!688549 tp!688553))))

(declare-fun b!2214799 () Bool)

(declare-fun tp!688550 () Bool)

(declare-fun e!1414538 () Bool)

(assert (=> b!2214799 (= e!1414538 (and (inv!21 (value!131777 (h!31320 (t!198859 l!6601)))) e!1414539 tp!688550))))

(declare-fun e!1414540 () Bool)

(assert (=> b!2214573 (= tp!688463 e!1414540)))

(declare-fun b!2214798 () Bool)

(declare-fun tp!688552 () Bool)

(assert (=> b!2214798 (= e!1414540 (and (inv!35119 (h!31320 (t!198859 l!6601))) e!1414538 tp!688552))))

(assert (= b!2214800 b!2214801))

(assert (= b!2214799 b!2214800))

(assert (= b!2214798 b!2214799))

(assert (= (and b!2214573 ((_ is Cons!25919) (t!198859 l!6601))) b!2214798))

(declare-fun m!2656847 () Bool)

(assert (=> b!2214800 m!2656847))

(declare-fun m!2656849 () Bool)

(assert (=> b!2214800 m!2656849))

(declare-fun m!2656851 () Bool)

(assert (=> b!2214799 m!2656851))

(declare-fun m!2656853 () Bool)

(assert (=> b!2214798 m!2656853))

(declare-fun b!2214834 () Bool)

(declare-fun b_free!64045 () Bool)

(declare-fun b_next!64749 () Bool)

(assert (=> b!2214834 (= b_free!64045 (not b_next!64749))))

(declare-fun tp!688586 () Bool)

(declare-fun b_and!173769 () Bool)

(assert (=> b!2214834 (= tp!688586 b_and!173769)))

(declare-fun b_free!64047 () Bool)

(declare-fun b_next!64751 () Bool)

(assert (=> b!2214834 (= b_free!64047 (not b_next!64751))))

(declare-fun tb!132451 () Bool)

(declare-fun t!198932 () Bool)

(assert (=> (and b!2214834 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toChars!5747 (transformation!4177 (rule!6477 t2!61)))) t!198932) tb!132451))

(declare-fun result!160704 () Bool)

(assert (= result!160704 result!160644))

(assert (=> b!2214677 t!198932))

(declare-fun tb!132453 () Bool)

(declare-fun t!198934 () Bool)

(assert (=> (and b!2214834 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toChars!5747 (transformation!4177 (rule!6477 t1!61)))) t!198934) tb!132453))

(declare-fun result!160706 () Bool)

(assert (= result!160706 result!160654))

(assert (=> b!2214684 t!198934))

(declare-fun tb!132455 () Bool)

(declare-fun t!198936 () Bool)

(assert (=> (and b!2214834 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601))))) t!198936) tb!132455))

(declare-fun result!160708 () Bool)

(assert (= result!160708 result!160662))

(assert (=> b!2214706 t!198936))

(declare-fun tp!688585 () Bool)

(declare-fun b_and!173771 () Bool)

(assert (=> b!2214834 (= tp!688585 (and (=> t!198932 result!160704) (=> t!198934 result!160706) (=> t!198936 result!160708) b_and!173771))))

(declare-fun e!1414564 () Bool)

(assert (=> b!2214834 (= e!1414564 (and tp!688586 tp!688585))))

(declare-fun b!2214833 () Bool)

(declare-fun tp!688587 () Bool)

(declare-fun e!1414562 () Bool)

(assert (=> b!2214833 (= e!1414562 (and tp!688587 (inv!35116 (tag!4667 (h!31321 (t!198860 rules!4462)))) (inv!35120 (transformation!4177 (h!31321 (t!198860 rules!4462)))) e!1414564))))

(declare-fun b!2214832 () Bool)

(declare-fun e!1414561 () Bool)

(declare-fun tp!688584 () Bool)

(assert (=> b!2214832 (= e!1414561 (and e!1414562 tp!688584))))

(assert (=> b!2214572 (= tp!688470 e!1414561)))

(assert (= b!2214833 b!2214834))

(assert (= b!2214832 b!2214833))

(assert (= (and b!2214572 ((_ is Cons!25920) (t!198860 rules!4462))) b!2214832))

(declare-fun m!2656863 () Bool)

(assert (=> b!2214833 m!2656863))

(declare-fun m!2656865 () Bool)

(assert (=> b!2214833 m!2656865))

(declare-fun b!2214850 () Bool)

(declare-fun e!1414571 () Bool)

(declare-fun tp!688606 () Bool)

(assert (=> b!2214850 (= e!1414571 (and tp_is_empty!9815 tp!688606))))

(assert (=> b!2214582 (= tp!688455 e!1414571)))

(assert (= (and b!2214582 ((_ is Cons!25918) (originalCharacters!4949 t2!61))) b!2214850))

(declare-fun b_lambda!71330 () Bool)

(assert (= b_lambda!71319 (or (and start!215824 b_free!64023) b_lambda!71330)))

(declare-fun b_lambda!71334 () Bool)

(assert (= b_lambda!71327 (or (and b!2214834 b_free!64047 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))))) (and b!2214574 b_free!64017 (= (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))))) (and b!2214576 b_free!64021 (= (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))))) (and b!2214583 b_free!64031) (and b!2214585 b_free!64027 (= (toChars!5747 (transformation!4177 (h!31321 rules!4462))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))))) (and b!2214801 b_free!64039 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))))) b_lambda!71334)))

(declare-fun b_lambda!71339 () Bool)

(assert (= b_lambda!71323 (or (and b!2214576 b_free!64021 (= (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (toChars!5747 (transformation!4177 (rule!6477 t2!61))))) (and b!2214585 b_free!64027 (= (toChars!5747 (transformation!4177 (h!31321 rules!4462))) (toChars!5747 (transformation!4177 (rule!6477 t2!61))))) (and b!2214834 b_free!64047 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toChars!5747 (transformation!4177 (rule!6477 t2!61))))) (and b!2214583 b_free!64031 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (toChars!5747 (transformation!4177 (rule!6477 t2!61))))) (and b!2214801 b_free!64039 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toChars!5747 (transformation!4177 (rule!6477 t2!61))))) (and b!2214574 b_free!64017) b_lambda!71339)))

(declare-fun b_lambda!71343 () Bool)

(assert (= b_lambda!71325 (or (and b!2214801 b_free!64039 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toChars!5747 (transformation!4177 (rule!6477 t1!61))))) (and b!2214574 b_free!64017 (= (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (toChars!5747 (transformation!4177 (rule!6477 t1!61))))) (and b!2214585 b_free!64027 (= (toChars!5747 (transformation!4177 (h!31321 rules!4462))) (toChars!5747 (transformation!4177 (rule!6477 t1!61))))) (and b!2214576 b_free!64021) (and b!2214834 b_free!64047 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toChars!5747 (transformation!4177 (rule!6477 t1!61))))) (and b!2214583 b_free!64031 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (toChars!5747 (transformation!4177 (rule!6477 t1!61))))) b_lambda!71343)))

(check-sat (not b!2214768) (not b!2214756) (not b!2214645) (not d!662173) b_and!173761 b_and!173771 (not b!2214755) (not b!2214643) (not b!2214832) b_and!173753 (not d!662167) (not b!2214772) (not b_lambda!71334) (not b!2214750) (not b_next!64721) tp_is_empty!9815 (not b_next!64725) (not b!2214595) (not b!2214660) b_and!173685 (not b!2214616) (not b!2214774) (not b_next!64743) (not d!662179) (not b!2214594) (not b!2214706) (not b_lambda!71339) (not b_next!64727) (not d!662177) b_and!173751 (not b!2214740) (not b!2214637) (not d!662199) (not b_next!64751) (not tb!132417) (not b!2214850) (not b_next!64723) (not tb!132425) (not b!2214800) (not b!2214639) (not b_next!64719) (not b!2214713) (not tb!132409) (not b!2214638) (not b!2214617) (not b!2214686) (not b!2214695) (not b_next!64749) (not b_next!64733) b_and!173699 (not b_next!64731) (not b!2214642) (not b!2214751) (not d!662201) (not b!2214685) (not b!2214773) b_and!173769 (not b!2214615) (not b!2214678) b_and!173749 b_and!173695 (not b!2214833) (not b!2214711) (not b!2214647) (not b!2214767) (not b_lambda!71343) (not b!2214684) b_and!173723 (not b!2214798) (not d!662191) (not b!2214749) (not b_next!64735) (not b!2214741) b_and!173755 (not d!662209) (not b_next!64741) (not b!2214712) (not b!2214659) (not b!2214683) (not b_lambda!71330) (not b!2214799) (not d!662215) (not b_next!64729) (not b!2214677) (not b!2214646) (not b!2214644) (not b!2214593) b_and!173689 (not b!2214707) (not b!2214754) (not b_lambda!71309) b_and!173763 (not b!2214742) (not b!2214708))
(check-sat b_and!173753 (not b_next!64721) (not b_next!64743) (not b_next!64719) (not b_next!64731) b_and!173769 b_and!173723 (not b_next!64735) b_and!173761 b_and!173771 (not b_next!64729) b_and!173689 b_and!173763 (not b_next!64725) b_and!173685 (not b_next!64727) b_and!173751 (not b_next!64751) (not b_next!64723) (not b_next!64749) (not b_next!64733) b_and!173699 b_and!173749 b_and!173695 b_and!173755 (not b_next!64741))
(get-model)

(declare-fun d!662237 () Bool)

(declare-fun lt!826780 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3520 (List!26003) (InoxSet Token!7836))

(assert (=> d!662237 (= lt!826780 (select (content!3520 l!6601) lt!826766))))

(declare-fun e!1414577 () Bool)

(assert (=> d!662237 (= lt!826780 e!1414577)))

(declare-fun res!951789 () Bool)

(assert (=> d!662237 (=> (not res!951789) (not e!1414577))))

(assert (=> d!662237 (= res!951789 ((_ is Cons!25919) l!6601))))

(assert (=> d!662237 (= (contains!4300 l!6601 lt!826766) lt!826780)))

(declare-fun b!2214855 () Bool)

(declare-fun e!1414576 () Bool)

(assert (=> b!2214855 (= e!1414577 e!1414576)))

(declare-fun res!951788 () Bool)

(assert (=> b!2214855 (=> res!951788 e!1414576)))

(assert (=> b!2214855 (= res!951788 (= (h!31320 l!6601) lt!826766))))

(declare-fun b!2214856 () Bool)

(assert (=> b!2214856 (= e!1414576 (contains!4300 (t!198859 l!6601) lt!826766))))

(assert (= (and d!662237 res!951789) b!2214855))

(assert (= (and b!2214855 (not res!951788)) b!2214856))

(declare-fun m!2656867 () Bool)

(assert (=> d!662237 m!2656867))

(declare-fun m!2656869 () Bool)

(assert (=> d!662237 m!2656869))

(declare-fun m!2656871 () Bool)

(assert (=> b!2214856 m!2656871))

(assert (=> d!662179 d!662237))

(declare-fun d!662239 () Bool)

(declare-fun lt!826783 () Int)

(assert (=> d!662239 (>= lt!826783 0)))

(declare-fun e!1414580 () Int)

(assert (=> d!662239 (= lt!826783 e!1414580)))

(declare-fun c!353901 () Bool)

(assert (=> d!662239 (= c!353901 ((_ is Nil!25918) (originalCharacters!4949 t2!61)))))

(assert (=> d!662239 (= (size!20232 (originalCharacters!4949 t2!61)) lt!826783)))

(declare-fun b!2214861 () Bool)

(assert (=> b!2214861 (= e!1414580 0)))

(declare-fun b!2214862 () Bool)

(assert (=> b!2214862 (= e!1414580 (+ 1 (size!20232 (t!198858 (originalCharacters!4949 t2!61)))))))

(assert (= (and d!662239 c!353901) b!2214861))

(assert (= (and d!662239 (not c!353901)) b!2214862))

(declare-fun m!2656873 () Bool)

(assert (=> b!2214862 m!2656873))

(assert (=> b!2214678 d!662239))

(declare-fun d!662241 () Bool)

(declare-fun charsToBigInt!1 (List!26001) Int)

(assert (=> d!662241 (= (inv!17 (value!131777 (h!31320 l!6601))) (= (charsToBigInt!1 (text!30639 (value!131777 (h!31320 l!6601)))) (value!131769 (value!131777 (h!31320 l!6601)))))))

(declare-fun bs!451573 () Bool)

(assert (= bs!451573 d!662241))

(declare-fun m!2656875 () Bool)

(assert (=> bs!451573 m!2656875))

(assert (=> b!2214638 d!662241))

(declare-fun d!662243 () Bool)

(declare-fun c!353904 () Bool)

(assert (=> d!662243 (= c!353904 ((_ is Node!8479) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))))

(declare-fun e!1414585 () Bool)

(assert (=> d!662243 (= (inv!35123 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))) e!1414585)))

(declare-fun b!2214869 () Bool)

(declare-fun inv!35125 (Conc!8479) Bool)

(assert (=> b!2214869 (= e!1414585 (inv!35125 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))))

(declare-fun b!2214870 () Bool)

(declare-fun e!1414586 () Bool)

(assert (=> b!2214870 (= e!1414585 e!1414586)))

(declare-fun res!951792 () Bool)

(assert (=> b!2214870 (= res!951792 (not ((_ is Leaf!12420) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))))))

(assert (=> b!2214870 (=> res!951792 e!1414586)))

(declare-fun b!2214871 () Bool)

(declare-fun inv!35126 (Conc!8479) Bool)

(assert (=> b!2214871 (= e!1414586 (inv!35126 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))))

(assert (= (and d!662243 c!353904) b!2214869))

(assert (= (and d!662243 (not c!353904)) b!2214870))

(assert (= (and b!2214870 (not res!951792)) b!2214871))

(declare-fun m!2656877 () Bool)

(assert (=> b!2214869 m!2656877))

(declare-fun m!2656879 () Bool)

(assert (=> b!2214871 m!2656879))

(assert (=> b!2214708 d!662243))

(declare-fun d!662245 () Bool)

(declare-fun charsToInt!0 (List!26001) (_ BitVec 32))

(assert (=> d!662245 (= (inv!16 (value!131777 (h!31320 l!6601))) (= (charsToInt!0 (text!30638 (value!131777 (h!31320 l!6601)))) (value!131768 (value!131777 (h!31320 l!6601)))))))

(declare-fun bs!451574 () Bool)

(assert (= bs!451574 d!662245))

(declare-fun m!2656881 () Bool)

(assert (=> bs!451574 m!2656881))

(assert (=> b!2214637 d!662245))

(declare-fun d!662247 () Bool)

(declare-fun list!10055 (Conc!8479) List!26002)

(assert (=> d!662247 (= (list!10054 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))) (list!10055 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))))

(declare-fun bs!451575 () Bool)

(assert (= bs!451575 d!662247))

(declare-fun m!2656883 () Bool)

(assert (=> bs!451575 m!2656883))

(assert (=> b!2214677 d!662247))

(declare-fun d!662249 () Bool)

(assert (=> d!662249 (= (inv!35116 (tag!4667 (rule!6477 (h!31320 (t!198859 l!6601))))) (= (mod (str.len (value!131776 (tag!4667 (rule!6477 (h!31320 (t!198859 l!6601)))))) 2) 0))))

(assert (=> b!2214800 d!662249))

(declare-fun d!662251 () Bool)

(declare-fun res!951793 () Bool)

(declare-fun e!1414587 () Bool)

(assert (=> d!662251 (=> (not res!951793) (not e!1414587))))

(assert (=> d!662251 (= res!951793 (semiInverseModEq!1667 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toValue!5888 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601)))))))))

(assert (=> d!662251 (= (inv!35120 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) e!1414587)))

(declare-fun b!2214872 () Bool)

(assert (=> b!2214872 (= e!1414587 (equivClasses!1594 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toValue!5888 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601)))))))))

(assert (= (and d!662251 res!951793) b!2214872))

(declare-fun m!2656885 () Bool)

(assert (=> d!662251 m!2656885))

(declare-fun m!2656887 () Bool)

(assert (=> b!2214872 m!2656887))

(assert (=> b!2214800 d!662251))

(declare-fun d!662253 () Bool)

(declare-fun lt!826784 () Int)

(assert (=> d!662253 (>= lt!826784 0)))

(declare-fun e!1414588 () Int)

(assert (=> d!662253 (= lt!826784 e!1414588)))

(declare-fun c!353905 () Bool)

(assert (=> d!662253 (= c!353905 ((_ is Nil!25919) (t!198859 l!6601)))))

(assert (=> d!662253 (= (size!20230 (t!198859 l!6601)) lt!826784)))

(declare-fun b!2214873 () Bool)

(assert (=> b!2214873 (= e!1414588 0)))

(declare-fun b!2214874 () Bool)

(assert (=> b!2214874 (= e!1414588 (+ 1 (size!20230 (t!198859 (t!198859 l!6601)))))))

(assert (= (and d!662253 c!353905) b!2214873))

(assert (= (and d!662253 (not c!353905)) b!2214874))

(declare-fun m!2656889 () Bool)

(assert (=> b!2214874 m!2656889))

(assert (=> b!2214695 d!662253))

(declare-fun b!2214875 () Bool)

(declare-fun res!951794 () Bool)

(declare-fun e!1414590 () Bool)

(assert (=> b!2214875 (=> res!951794 e!1414590)))

(assert (=> b!2214875 (= res!951794 (not ((_ is IntegerValue!12941) (value!131777 (h!31320 (t!198859 l!6601))))))))

(declare-fun e!1414589 () Bool)

(assert (=> b!2214875 (= e!1414589 e!1414590)))

(declare-fun b!2214876 () Bool)

(declare-fun e!1414591 () Bool)

(assert (=> b!2214876 (= e!1414591 e!1414589)))

(declare-fun c!353906 () Bool)

(assert (=> b!2214876 (= c!353906 ((_ is IntegerValue!12940) (value!131777 (h!31320 (t!198859 l!6601)))))))

(declare-fun b!2214877 () Bool)

(assert (=> b!2214877 (= e!1414591 (inv!16 (value!131777 (h!31320 (t!198859 l!6601)))))))

(declare-fun d!662255 () Bool)

(declare-fun c!353907 () Bool)

(assert (=> d!662255 (= c!353907 ((_ is IntegerValue!12939) (value!131777 (h!31320 (t!198859 l!6601)))))))

(assert (=> d!662255 (= (inv!21 (value!131777 (h!31320 (t!198859 l!6601)))) e!1414591)))

(declare-fun b!2214878 () Bool)

(assert (=> b!2214878 (= e!1414589 (inv!17 (value!131777 (h!31320 (t!198859 l!6601)))))))

(declare-fun b!2214879 () Bool)

(assert (=> b!2214879 (= e!1414590 (inv!15 (value!131777 (h!31320 (t!198859 l!6601)))))))

(assert (= (and d!662255 c!353907) b!2214877))

(assert (= (and d!662255 (not c!353907)) b!2214876))

(assert (= (and b!2214876 c!353906) b!2214878))

(assert (= (and b!2214876 (not c!353906)) b!2214875))

(assert (= (and b!2214875 (not res!951794)) b!2214879))

(declare-fun m!2656891 () Bool)

(assert (=> b!2214877 m!2656891))

(declare-fun m!2656893 () Bool)

(assert (=> b!2214878 m!2656893))

(declare-fun m!2656895 () Bool)

(assert (=> b!2214879 m!2656895))

(assert (=> b!2214799 d!662255))

(declare-fun d!662257 () Bool)

(assert (=> d!662257 true))

(declare-fun lambda!83500 () Int)

(declare-fun order!14821 () Int)

(declare-fun order!14819 () Int)

(declare-fun dynLambda!11470 (Int Int) Int)

(declare-fun dynLambda!11471 (Int Int) Int)

(assert (=> d!662257 (< (dynLambda!11470 order!14819 (toValue!5888 (transformation!4177 (h!31321 rules!4462)))) (dynLambda!11471 order!14821 lambda!83500))))

(declare-fun Forall2!663 (Int) Bool)

(assert (=> d!662257 (= (equivClasses!1594 (toChars!5747 (transformation!4177 (h!31321 rules!4462))) (toValue!5888 (transformation!4177 (h!31321 rules!4462)))) (Forall2!663 lambda!83500))))

(declare-fun bs!451576 () Bool)

(assert (= bs!451576 d!662257))

(declare-fun m!2656897 () Bool)

(assert (=> bs!451576 m!2656897))

(assert (=> b!2214660 d!662257))

(declare-fun d!662261 () Bool)

(declare-fun res!951798 () Bool)

(declare-fun e!1414594 () Bool)

(assert (=> d!662261 (=> res!951798 e!1414594)))

(assert (=> d!662261 (= res!951798 (or (not ((_ is Cons!25919) (Cons!25919 (h!31320 (t!198859 l!6601)) (t!198859 (t!198859 l!6601))))) (not ((_ is Cons!25919) (t!198859 (Cons!25919 (h!31320 (t!198859 l!6601)) (t!198859 (t!198859 l!6601))))))))))

(assert (=> d!662261 (= (tokensListTwoByTwoPredicateList!44 thiss!27908 (Cons!25919 (h!31320 (t!198859 l!6601)) (t!198859 (t!198859 l!6601))) rules!4462 p!3128) e!1414594)))

(declare-fun b!2214884 () Bool)

(declare-fun e!1414595 () Bool)

(assert (=> b!2214884 (= e!1414594 e!1414595)))

(declare-fun res!951799 () Bool)

(assert (=> b!2214884 (=> (not res!951799) (not e!1414595))))

(assert (=> b!2214884 (= res!951799 (dynLambda!11467 p!3128 (h!31320 (Cons!25919 (h!31320 (t!198859 l!6601)) (t!198859 (t!198859 l!6601)))) (h!31320 (t!198859 (Cons!25919 (h!31320 (t!198859 l!6601)) (t!198859 (t!198859 l!6601))))) rules!4462))))

(declare-fun b!2214885 () Bool)

(assert (=> b!2214885 (= e!1414595 (tokensListTwoByTwoPredicateList!44 thiss!27908 (Cons!25919 (h!31320 (t!198859 (Cons!25919 (h!31320 (t!198859 l!6601)) (t!198859 (t!198859 l!6601))))) (t!198859 (t!198859 (Cons!25919 (h!31320 (t!198859 l!6601)) (t!198859 (t!198859 l!6601)))))) rules!4462 p!3128))))

(assert (= (and d!662261 (not res!951798)) b!2214884))

(assert (= (and b!2214884 res!951799) b!2214885))

(declare-fun b_lambda!71345 () Bool)

(assert (=> (not b_lambda!71345) (not b!2214884)))

(declare-fun t!198938 () Bool)

(declare-fun tb!132457 () Bool)

(assert (=> (and start!215824 (= p!3128 p!3128) t!198938) tb!132457))

(declare-fun result!160710 () Bool)

(assert (=> tb!132457 (= result!160710 true)))

(assert (=> b!2214884 t!198938))

(declare-fun b_and!173773 () Bool)

(assert (= b_and!173723 (and (=> t!198938 result!160710) b_and!173773)))

(declare-fun m!2656899 () Bool)

(assert (=> b!2214884 m!2656899))

(declare-fun m!2656901 () Bool)

(assert (=> b!2214885 m!2656901))

(assert (=> b!2214659 d!662261))

(declare-fun d!662263 () Bool)

(declare-fun res!951800 () Bool)

(declare-fun e!1414596 () Bool)

(assert (=> d!662263 (=> (not res!951800) (not e!1414596))))

(assert (=> d!662263 (= res!951800 (not (isEmpty!14830 (originalCharacters!4949 (h!31320 (t!198859 l!6601))))))))

(assert (=> d!662263 (= (inv!35119 (h!31320 (t!198859 l!6601))) e!1414596)))

(declare-fun b!2214886 () Bool)

(declare-fun res!951801 () Bool)

(assert (=> b!2214886 (=> (not res!951801) (not e!1414596))))

(assert (=> b!2214886 (= res!951801 (= (originalCharacters!4949 (h!31320 (t!198859 l!6601))) (list!10054 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (value!131777 (h!31320 (t!198859 l!6601)))))))))

(declare-fun b!2214887 () Bool)

(assert (=> b!2214887 (= e!1414596 (= (size!20229 (h!31320 (t!198859 l!6601))) (size!20232 (originalCharacters!4949 (h!31320 (t!198859 l!6601))))))))

(assert (= (and d!662263 res!951800) b!2214886))

(assert (= (and b!2214886 res!951801) b!2214887))

(declare-fun b_lambda!71347 () Bool)

(assert (=> (not b_lambda!71347) (not b!2214886)))

(declare-fun tb!132459 () Bool)

(declare-fun t!198940 () Bool)

(assert (=> (and b!2214576 (= (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601)))))) t!198940) tb!132459))

(declare-fun b!2214888 () Bool)

(declare-fun e!1414597 () Bool)

(declare-fun tp!688607 () Bool)

(assert (=> b!2214888 (= e!1414597 (and (inv!35123 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (value!131777 (h!31320 (t!198859 l!6601)))))) tp!688607))))

(declare-fun result!160712 () Bool)

(assert (=> tb!132459 (= result!160712 (and (inv!35124 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (value!131777 (h!31320 (t!198859 l!6601))))) e!1414597))))

(assert (= tb!132459 b!2214888))

(declare-fun m!2656903 () Bool)

(assert (=> b!2214888 m!2656903))

(declare-fun m!2656905 () Bool)

(assert (=> tb!132459 m!2656905))

(assert (=> b!2214886 t!198940))

(declare-fun b_and!173775 () Bool)

(assert (= b_and!173751 (and (=> t!198940 result!160712) b_and!173775)))

(declare-fun tb!132461 () Bool)

(declare-fun t!198942 () Bool)

(assert (=> (and b!2214574 (= (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601)))))) t!198942) tb!132461))

(declare-fun result!160714 () Bool)

(assert (= result!160714 result!160712))

(assert (=> b!2214886 t!198942))

(declare-fun b_and!173777 () Bool)

(assert (= b_and!173749 (and (=> t!198942 result!160714) b_and!173777)))

(declare-fun tb!132463 () Bool)

(declare-fun t!198944 () Bool)

(assert (=> (and b!2214585 (= (toChars!5747 (transformation!4177 (h!31321 rules!4462))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601)))))) t!198944) tb!132463))

(declare-fun result!160716 () Bool)

(assert (= result!160716 result!160712))

(assert (=> b!2214886 t!198944))

(declare-fun b_and!173779 () Bool)

(assert (= b_and!173753 (and (=> t!198944 result!160716) b_and!173779)))

(declare-fun t!198946 () Bool)

(declare-fun tb!132465 () Bool)

(assert (=> (and b!2214583 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601)))))) t!198946) tb!132465))

(declare-fun result!160718 () Bool)

(assert (= result!160718 result!160712))

(assert (=> b!2214886 t!198946))

(declare-fun b_and!173781 () Bool)

(assert (= b_and!173755 (and (=> t!198946 result!160718) b_and!173781)))

(declare-fun t!198948 () Bool)

(declare-fun tb!132467 () Bool)

(assert (=> (and b!2214801 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601)))))) t!198948) tb!132467))

(declare-fun result!160720 () Bool)

(assert (= result!160720 result!160712))

(assert (=> b!2214886 t!198948))

(declare-fun b_and!173783 () Bool)

(assert (= b_and!173763 (and (=> t!198948 result!160720) b_and!173783)))

(declare-fun tb!132469 () Bool)

(declare-fun t!198950 () Bool)

(assert (=> (and b!2214834 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601)))))) t!198950) tb!132469))

(declare-fun result!160722 () Bool)

(assert (= result!160722 result!160712))

(assert (=> b!2214886 t!198950))

(declare-fun b_and!173785 () Bool)

(assert (= b_and!173771 (and (=> t!198950 result!160722) b_and!173785)))

(declare-fun m!2656907 () Bool)

(assert (=> d!662263 m!2656907))

(declare-fun m!2656909 () Bool)

(assert (=> b!2214886 m!2656909))

(assert (=> b!2214886 m!2656909))

(declare-fun m!2656911 () Bool)

(assert (=> b!2214886 m!2656911))

(declare-fun m!2656913 () Bool)

(assert (=> b!2214887 m!2656913))

(assert (=> b!2214798 d!662263))

(declare-fun d!662265 () Bool)

(assert (=> d!662265 true))

(declare-fun order!14825 () Int)

(declare-fun lambda!83503 () Int)

(declare-fun order!14823 () Int)

(declare-fun dynLambda!11472 (Int Int) Int)

(declare-fun dynLambda!11473 (Int Int) Int)

(assert (=> d!662265 (< (dynLambda!11472 order!14823 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601))))) (dynLambda!11473 order!14825 lambda!83503))))

(assert (=> d!662265 true))

(assert (=> d!662265 (< (dynLambda!11470 order!14819 (toValue!5888 (transformation!4177 (rule!6477 (h!31320 l!6601))))) (dynLambda!11473 order!14825 lambda!83503))))

(declare-fun Forall!1038 (Int) Bool)

(assert (=> d!662265 (= (semiInverseModEq!1667 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (toValue!5888 (transformation!4177 (rule!6477 (h!31320 l!6601))))) (Forall!1038 lambda!83503))))

(declare-fun bs!451577 () Bool)

(assert (= bs!451577 d!662265))

(declare-fun m!2656915 () Bool)

(assert (=> bs!451577 m!2656915))

(assert (=> d!662167 d!662265))

(declare-fun d!662267 () Bool)

(declare-fun lt!826785 () Int)

(assert (=> d!662267 (>= lt!826785 0)))

(declare-fun e!1414598 () Int)

(assert (=> d!662267 (= lt!826785 e!1414598)))

(declare-fun c!353908 () Bool)

(assert (=> d!662267 (= c!353908 ((_ is Nil!25918) (originalCharacters!4949 t1!61)))))

(assert (=> d!662267 (= (size!20232 (originalCharacters!4949 t1!61)) lt!826785)))

(declare-fun b!2214893 () Bool)

(assert (=> b!2214893 (= e!1414598 0)))

(declare-fun b!2214894 () Bool)

(assert (=> b!2214894 (= e!1414598 (+ 1 (size!20232 (t!198858 (originalCharacters!4949 t1!61)))))))

(assert (= (and d!662267 c!353908) b!2214893))

(assert (= (and d!662267 (not c!353908)) b!2214894))

(declare-fun m!2656917 () Bool)

(assert (=> b!2214894 m!2656917))

(assert (=> b!2214685 d!662267))

(assert (=> b!2214615 d!662211))

(declare-fun bs!451578 () Bool)

(declare-fun d!662269 () Bool)

(assert (= bs!451578 (and d!662269 d!662257)))

(declare-fun lambda!83504 () Int)

(assert (=> bs!451578 (= (= (toValue!5888 (transformation!4177 (rule!6477 t1!61))) (toValue!5888 (transformation!4177 (h!31321 rules!4462)))) (= lambda!83504 lambda!83500))))

(assert (=> d!662269 true))

(assert (=> d!662269 (< (dynLambda!11470 order!14819 (toValue!5888 (transformation!4177 (rule!6477 t1!61)))) (dynLambda!11471 order!14821 lambda!83504))))

(assert (=> d!662269 (= (equivClasses!1594 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (toValue!5888 (transformation!4177 (rule!6477 t1!61)))) (Forall2!663 lambda!83504))))

(declare-fun bs!451579 () Bool)

(assert (= bs!451579 d!662269))

(declare-fun m!2656919 () Bool)

(assert (=> bs!451579 m!2656919))

(assert (=> b!2214594 d!662269))

(declare-fun d!662271 () Bool)

(declare-fun charsToBigInt!0 (List!26001 Int) Int)

(assert (=> d!662271 (= (inv!15 (value!131777 t1!61)) (= (charsToBigInt!0 (text!30640 (value!131777 t1!61)) 0) (value!131772 (value!131777 t1!61))))))

(declare-fun bs!451580 () Bool)

(assert (= bs!451580 d!662271))

(declare-fun m!2656921 () Bool)

(assert (=> bs!451580 m!2656921))

(assert (=> b!2214644 d!662271))

(declare-fun d!662273 () Bool)

(assert (=> d!662273 (= (inv!17 (value!131777 t1!61)) (= (charsToBigInt!1 (text!30639 (value!131777 t1!61))) (value!131769 (value!131777 t1!61))))))

(declare-fun bs!451581 () Bool)

(assert (= bs!451581 d!662273))

(declare-fun m!2656923 () Bool)

(assert (=> bs!451581 m!2656923))

(assert (=> b!2214643 d!662273))

(declare-fun d!662275 () Bool)

(assert (=> d!662275 (= (isEmpty!14830 (originalCharacters!4949 (h!31320 l!6601))) ((_ is Nil!25918) (originalCharacters!4949 (h!31320 l!6601))))))

(assert (=> d!662215 d!662275))

(declare-fun d!662277 () Bool)

(assert (=> d!662277 (= (inv!16 (value!131777 t1!61)) (= (charsToInt!0 (text!30638 (value!131777 t1!61))) (value!131768 (value!131777 t1!61))))))

(declare-fun bs!451582 () Bool)

(assert (= bs!451582 d!662277))

(declare-fun m!2656925 () Bool)

(assert (=> bs!451582 m!2656925))

(assert (=> b!2214642 d!662277))

(declare-fun bs!451583 () Bool)

(declare-fun d!662279 () Bool)

(assert (= bs!451583 (and d!662279 d!662265)))

(declare-fun lambda!83505 () Int)

(assert (=> bs!451583 (= (and (= (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601))))) (= (toValue!5888 (transformation!4177 (rule!6477 t1!61))) (toValue!5888 (transformation!4177 (rule!6477 (h!31320 l!6601)))))) (= lambda!83505 lambda!83503))))

(assert (=> d!662279 true))

(assert (=> d!662279 (< (dynLambda!11472 order!14823 (toChars!5747 (transformation!4177 (rule!6477 t1!61)))) (dynLambda!11473 order!14825 lambda!83505))))

(assert (=> d!662279 true))

(assert (=> d!662279 (< (dynLambda!11470 order!14819 (toValue!5888 (transformation!4177 (rule!6477 t1!61)))) (dynLambda!11473 order!14825 lambda!83505))))

(assert (=> d!662279 (= (semiInverseModEq!1667 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (toValue!5888 (transformation!4177 (rule!6477 t1!61)))) (Forall!1038 lambda!83505))))

(declare-fun bs!451584 () Bool)

(assert (= bs!451584 d!662279))

(declare-fun m!2656927 () Bool)

(assert (=> bs!451584 m!2656927))

(assert (=> d!662173 d!662279))

(declare-fun d!662281 () Bool)

(declare-fun isBalanced!2626 (Conc!8479) Bool)

(assert (=> d!662281 (= (inv!35124 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))) (isBalanced!2626 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))))

(declare-fun bs!451585 () Bool)

(assert (= bs!451585 d!662281))

(declare-fun m!2656929 () Bool)

(assert (=> bs!451585 m!2656929))

(assert (=> tb!132417 d!662281))

(declare-fun d!662283 () Bool)

(assert (=> d!662283 (= (inv!15 (value!131777 (h!31320 l!6601))) (= (charsToBigInt!0 (text!30640 (value!131777 (h!31320 l!6601))) 0) (value!131772 (value!131777 (h!31320 l!6601)))))))

(declare-fun bs!451586 () Bool)

(assert (= bs!451586 d!662283))

(declare-fun m!2656931 () Bool)

(assert (=> bs!451586 m!2656931))

(assert (=> b!2214639 d!662283))

(declare-fun d!662285 () Bool)

(declare-fun lt!826786 () Bool)

(assert (=> d!662285 (= lt!826786 (select (content!3520 l!6601) lt!826767))))

(declare-fun e!1414600 () Bool)

(assert (=> d!662285 (= lt!826786 e!1414600)))

(declare-fun res!951803 () Bool)

(assert (=> d!662285 (=> (not res!951803) (not e!1414600))))

(assert (=> d!662285 (= res!951803 ((_ is Cons!25919) l!6601))))

(assert (=> d!662285 (= (contains!4300 l!6601 lt!826767) lt!826786)))

(declare-fun b!2214895 () Bool)

(declare-fun e!1414599 () Bool)

(assert (=> b!2214895 (= e!1414600 e!1414599)))

(declare-fun res!951802 () Bool)

(assert (=> b!2214895 (=> res!951802 e!1414599)))

(assert (=> b!2214895 (= res!951802 (= (h!31320 l!6601) lt!826767))))

(declare-fun b!2214896 () Bool)

(assert (=> b!2214896 (= e!1414599 (contains!4300 (t!198859 l!6601) lt!826767))))

(assert (= (and d!662285 res!951803) b!2214895))

(assert (= (and b!2214895 (not res!951802)) b!2214896))

(assert (=> d!662285 m!2656867))

(declare-fun m!2656933 () Bool)

(assert (=> d!662285 m!2656933))

(declare-fun m!2656935 () Bool)

(assert (=> b!2214896 m!2656935))

(assert (=> d!662191 d!662285))

(declare-fun d!662287 () Bool)

(declare-fun lt!826787 () Int)

(assert (=> d!662287 (>= lt!826787 0)))

(declare-fun e!1414601 () Int)

(assert (=> d!662287 (= lt!826787 e!1414601)))

(declare-fun c!353909 () Bool)

(assert (=> d!662287 (= c!353909 ((_ is Nil!25918) (originalCharacters!4949 (h!31320 l!6601))))))

(assert (=> d!662287 (= (size!20232 (originalCharacters!4949 (h!31320 l!6601))) lt!826787)))

(declare-fun b!2214897 () Bool)

(assert (=> b!2214897 (= e!1414601 0)))

(declare-fun b!2214898 () Bool)

(assert (=> b!2214898 (= e!1414601 (+ 1 (size!20232 (t!198858 (originalCharacters!4949 (h!31320 l!6601))))))))

(assert (= (and d!662287 c!353909) b!2214897))

(assert (= (and d!662287 (not c!353909)) b!2214898))

(declare-fun m!2656937 () Bool)

(assert (=> b!2214898 m!2656937))

(assert (=> b!2214707 d!662287))

(declare-fun d!662289 () Bool)

(declare-fun lt!826788 () Token!7836)

(assert (=> d!662289 (contains!4300 (tail!3217 l!6601) lt!826788)))

(declare-fun e!1414603 () Token!7836)

(assert (=> d!662289 (= lt!826788 e!1414603)))

(declare-fun c!353910 () Bool)

(assert (=> d!662289 (= c!353910 (= (- i!1797 1) 0))))

(declare-fun e!1414602 () Bool)

(assert (=> d!662289 e!1414602))

(declare-fun res!951804 () Bool)

(assert (=> d!662289 (=> (not res!951804) (not e!1414602))))

(assert (=> d!662289 (= res!951804 (<= 0 (- i!1797 1)))))

(assert (=> d!662289 (= (apply!6423 (tail!3217 l!6601) (- i!1797 1)) lt!826788)))

(declare-fun b!2214899 () Bool)

(assert (=> b!2214899 (= e!1414602 (< (- i!1797 1) (size!20230 (tail!3217 l!6601))))))

(declare-fun b!2214900 () Bool)

(assert (=> b!2214900 (= e!1414603 (head!4732 (tail!3217 l!6601)))))

(declare-fun b!2214901 () Bool)

(assert (=> b!2214901 (= e!1414603 (apply!6423 (tail!3217 (tail!3217 l!6601)) (- (- i!1797 1) 1)))))

(assert (= (and d!662289 res!951804) b!2214899))

(assert (= (and d!662289 c!353910) b!2214900))

(assert (= (and d!662289 (not c!353910)) b!2214901))

(assert (=> d!662289 m!2656695))

(declare-fun m!2656939 () Bool)

(assert (=> d!662289 m!2656939))

(assert (=> b!2214899 m!2656695))

(declare-fun m!2656941 () Bool)

(assert (=> b!2214899 m!2656941))

(assert (=> b!2214900 m!2656695))

(declare-fun m!2656943 () Bool)

(assert (=> b!2214900 m!2656943))

(assert (=> b!2214901 m!2656695))

(declare-fun m!2656945 () Bool)

(assert (=> b!2214901 m!2656945))

(assert (=> b!2214901 m!2656945))

(declare-fun m!2656947 () Bool)

(assert (=> b!2214901 m!2656947))

(assert (=> b!2214647 d!662289))

(declare-fun d!662291 () Bool)

(assert (=> d!662291 (= (tail!3217 l!6601) (t!198859 l!6601))))

(assert (=> b!2214647 d!662291))

(declare-fun d!662293 () Bool)

(assert (=> d!662293 (= (list!10054 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))) (list!10055 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))))

(declare-fun bs!451587 () Bool)

(assert (= bs!451587 d!662293))

(declare-fun m!2656949 () Bool)

(assert (=> bs!451587 m!2656949))

(assert (=> b!2214706 d!662293))

(declare-fun d!662295 () Bool)

(assert (=> d!662295 (= (head!4732 l!6601) (h!31320 l!6601))))

(assert (=> b!2214646 d!662295))

(declare-fun d!662297 () Bool)

(assert (=> d!662297 (= (inv!15 (value!131777 t2!61)) (= (charsToBigInt!0 (text!30640 (value!131777 t2!61)) 0) (value!131772 (value!131777 t2!61))))))

(declare-fun bs!451588 () Bool)

(assert (= bs!451588 d!662297))

(declare-fun m!2656951 () Bool)

(assert (=> bs!451588 m!2656951))

(assert (=> b!2214713 d!662297))

(declare-fun d!662299 () Bool)

(assert (=> d!662299 (= (inv!35116 (tag!4667 (h!31321 (t!198860 rules!4462)))) (= (mod (str.len (value!131776 (tag!4667 (h!31321 (t!198860 rules!4462))))) 2) 0))))

(assert (=> b!2214833 d!662299))

(declare-fun d!662301 () Bool)

(declare-fun res!951805 () Bool)

(declare-fun e!1414604 () Bool)

(assert (=> d!662301 (=> (not res!951805) (not e!1414604))))

(assert (=> d!662301 (= res!951805 (semiInverseModEq!1667 (toChars!5747 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toValue!5888 (transformation!4177 (h!31321 (t!198860 rules!4462))))))))

(assert (=> d!662301 (= (inv!35120 (transformation!4177 (h!31321 (t!198860 rules!4462)))) e!1414604)))

(declare-fun b!2214902 () Bool)

(assert (=> b!2214902 (= e!1414604 (equivClasses!1594 (toChars!5747 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toValue!5888 (transformation!4177 (h!31321 (t!198860 rules!4462))))))))

(assert (= (and d!662301 res!951805) b!2214902))

(declare-fun m!2656953 () Bool)

(assert (=> d!662301 m!2656953))

(declare-fun m!2656955 () Bool)

(assert (=> b!2214902 m!2656955))

(assert (=> b!2214833 d!662301))

(declare-fun d!662303 () Bool)

(declare-fun lt!826789 () Token!7836)

(assert (=> d!662303 (contains!4300 (tail!3217 l!6601) lt!826789)))

(declare-fun e!1414606 () Token!7836)

(assert (=> d!662303 (= lt!826789 e!1414606)))

(declare-fun c!353911 () Bool)

(assert (=> d!662303 (= c!353911 (= (- (+ 1 i!1797) 1) 0))))

(declare-fun e!1414605 () Bool)

(assert (=> d!662303 e!1414605))

(declare-fun res!951806 () Bool)

(assert (=> d!662303 (=> (not res!951806) (not e!1414605))))

(assert (=> d!662303 (= res!951806 (<= 0 (- (+ 1 i!1797) 1)))))

(assert (=> d!662303 (= (apply!6423 (tail!3217 l!6601) (- (+ 1 i!1797) 1)) lt!826789)))

(declare-fun b!2214903 () Bool)

(assert (=> b!2214903 (= e!1414605 (< (- (+ 1 i!1797) 1) (size!20230 (tail!3217 l!6601))))))

(declare-fun b!2214904 () Bool)

(assert (=> b!2214904 (= e!1414606 (head!4732 (tail!3217 l!6601)))))

(declare-fun b!2214905 () Bool)

(assert (=> b!2214905 (= e!1414606 (apply!6423 (tail!3217 (tail!3217 l!6601)) (- (- (+ 1 i!1797) 1) 1)))))

(assert (= (and d!662303 res!951806) b!2214903))

(assert (= (and d!662303 c!353911) b!2214904))

(assert (= (and d!662303 (not c!353911)) b!2214905))

(assert (=> d!662303 m!2656695))

(declare-fun m!2656957 () Bool)

(assert (=> d!662303 m!2656957))

(assert (=> b!2214903 m!2656695))

(assert (=> b!2214903 m!2656941))

(assert (=> b!2214904 m!2656695))

(assert (=> b!2214904 m!2656943))

(assert (=> b!2214905 m!2656695))

(assert (=> b!2214905 m!2656945))

(assert (=> b!2214905 m!2656945))

(declare-fun m!2656959 () Bool)

(assert (=> b!2214905 m!2656959))

(assert (=> b!2214617 d!662303))

(assert (=> b!2214617 d!662291))

(declare-fun d!662305 () Bool)

(declare-fun c!353912 () Bool)

(assert (=> d!662305 (= c!353912 ((_ is Node!8479) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))))

(declare-fun e!1414607 () Bool)

(assert (=> d!662305 (= (inv!35123 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))) e!1414607)))

(declare-fun b!2214906 () Bool)

(assert (=> b!2214906 (= e!1414607 (inv!35125 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))))

(declare-fun b!2214907 () Bool)

(declare-fun e!1414608 () Bool)

(assert (=> b!2214907 (= e!1414607 e!1414608)))

(declare-fun res!951807 () Bool)

(assert (=> b!2214907 (= res!951807 (not ((_ is Leaf!12420) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))))))

(assert (=> b!2214907 (=> res!951807 e!1414608)))

(declare-fun b!2214908 () Bool)

(assert (=> b!2214908 (= e!1414608 (inv!35126 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))))

(assert (= (and d!662305 c!353912) b!2214906))

(assert (= (and d!662305 (not c!353912)) b!2214907))

(assert (= (and b!2214907 (not res!951807)) b!2214908))

(declare-fun m!2656961 () Bool)

(assert (=> b!2214906 m!2656961))

(declare-fun m!2656963 () Bool)

(assert (=> b!2214908 m!2656963))

(assert (=> b!2214686 d!662305))

(assert (=> b!2214616 d!662295))

(assert (=> b!2214645 d!662211))

(declare-fun d!662307 () Bool)

(assert (=> d!662307 (= (inv!17 (value!131777 t2!61)) (= (charsToBigInt!1 (text!30639 (value!131777 t2!61))) (value!131769 (value!131777 t2!61))))))

(declare-fun bs!451589 () Bool)

(assert (= bs!451589 d!662307))

(declare-fun m!2656965 () Bool)

(assert (=> bs!451589 m!2656965))

(assert (=> b!2214712 d!662307))

(declare-fun d!662309 () Bool)

(assert (=> d!662309 (= (inv!16 (value!131777 t2!61)) (= (charsToInt!0 (text!30638 (value!131777 t2!61))) (value!131768 (value!131777 t2!61))))))

(declare-fun bs!451590 () Bool)

(assert (= bs!451590 d!662309))

(declare-fun m!2656967 () Bool)

(assert (=> bs!451590 m!2656967))

(assert (=> b!2214711 d!662309))

(declare-fun d!662311 () Bool)

(assert (=> d!662311 (= (list!10054 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))) (list!10055 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))))

(declare-fun bs!451591 () Bool)

(assert (= bs!451591 d!662311))

(declare-fun m!2656969 () Bool)

(assert (=> bs!451591 m!2656969))

(assert (=> b!2214684 d!662311))

(declare-fun d!662313 () Bool)

(assert (=> d!662313 (= (inv!35124 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))) (isBalanced!2626 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))))

(declare-fun bs!451592 () Bool)

(assert (= bs!451592 d!662313))

(declare-fun m!2656971 () Bool)

(assert (=> bs!451592 m!2656971))

(assert (=> tb!132425 d!662313))

(declare-fun bs!451593 () Bool)

(declare-fun d!662315 () Bool)

(assert (= bs!451593 (and d!662315 d!662257)))

(declare-fun lambda!83506 () Int)

(assert (=> bs!451593 (= (= (toValue!5888 (transformation!4177 (rule!6477 t2!61))) (toValue!5888 (transformation!4177 (h!31321 rules!4462)))) (= lambda!83506 lambda!83500))))

(declare-fun bs!451594 () Bool)

(assert (= bs!451594 (and d!662315 d!662269)))

(assert (=> bs!451594 (= (= (toValue!5888 (transformation!4177 (rule!6477 t2!61))) (toValue!5888 (transformation!4177 (rule!6477 t1!61)))) (= lambda!83506 lambda!83504))))

(assert (=> d!662315 true))

(assert (=> d!662315 (< (dynLambda!11470 order!14819 (toValue!5888 (transformation!4177 (rule!6477 t2!61)))) (dynLambda!11471 order!14821 lambda!83506))))

(assert (=> d!662315 (= (equivClasses!1594 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (toValue!5888 (transformation!4177 (rule!6477 t2!61)))) (Forall2!663 lambda!83506))))

(declare-fun bs!451595 () Bool)

(assert (= bs!451595 d!662315))

(declare-fun m!2656973 () Bool)

(assert (=> bs!451595 m!2656973))

(assert (=> b!2214595 d!662315))

(declare-fun bs!451596 () Bool)

(declare-fun d!662317 () Bool)

(assert (= bs!451596 (and d!662317 d!662257)))

(declare-fun lambda!83507 () Int)

(assert (=> bs!451596 (= (= (toValue!5888 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (toValue!5888 (transformation!4177 (h!31321 rules!4462)))) (= lambda!83507 lambda!83500))))

(declare-fun bs!451597 () Bool)

(assert (= bs!451597 (and d!662317 d!662269)))

(assert (=> bs!451597 (= (= (toValue!5888 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (toValue!5888 (transformation!4177 (rule!6477 t1!61)))) (= lambda!83507 lambda!83504))))

(declare-fun bs!451598 () Bool)

(assert (= bs!451598 (and d!662317 d!662315)))

(assert (=> bs!451598 (= (= (toValue!5888 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (toValue!5888 (transformation!4177 (rule!6477 t2!61)))) (= lambda!83507 lambda!83506))))

(assert (=> d!662317 true))

(assert (=> d!662317 (< (dynLambda!11470 order!14819 (toValue!5888 (transformation!4177 (rule!6477 (h!31320 l!6601))))) (dynLambda!11471 order!14821 lambda!83507))))

(assert (=> d!662317 (= (equivClasses!1594 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (toValue!5888 (transformation!4177 (rule!6477 (h!31320 l!6601))))) (Forall2!663 lambda!83507))))

(declare-fun bs!451599 () Bool)

(assert (= bs!451599 d!662317))

(declare-fun m!2656975 () Bool)

(assert (=> bs!451599 m!2656975))

(assert (=> b!2214593 d!662317))

(declare-fun d!662319 () Bool)

(assert (=> d!662319 (= (isEmpty!14830 (originalCharacters!4949 t2!61)) ((_ is Nil!25918) (originalCharacters!4949 t2!61)))))

(assert (=> d!662201 d!662319))

(declare-fun d!662321 () Bool)

(declare-fun c!353913 () Bool)

(assert (=> d!662321 (= c!353913 ((_ is Node!8479) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))))

(declare-fun e!1414609 () Bool)

(assert (=> d!662321 (= (inv!35123 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))) e!1414609)))

(declare-fun b!2214909 () Bool)

(assert (=> b!2214909 (= e!1414609 (inv!35125 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))))

(declare-fun b!2214910 () Bool)

(declare-fun e!1414610 () Bool)

(assert (=> b!2214910 (= e!1414609 e!1414610)))

(declare-fun res!951808 () Bool)

(assert (=> b!2214910 (= res!951808 (not ((_ is Leaf!12420) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))))))

(assert (=> b!2214910 (=> res!951808 e!1414610)))

(declare-fun b!2214911 () Bool)

(assert (=> b!2214911 (= e!1414610 (inv!35126 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))))

(assert (= (and d!662321 c!353913) b!2214909))

(assert (= (and d!662321 (not c!353913)) b!2214910))

(assert (= (and b!2214910 (not res!951808)) b!2214911))

(declare-fun m!2656977 () Bool)

(assert (=> b!2214909 m!2656977))

(declare-fun m!2656979 () Bool)

(assert (=> b!2214911 m!2656979))

(assert (=> b!2214683 d!662321))

(declare-fun bs!451600 () Bool)

(declare-fun d!662323 () Bool)

(assert (= bs!451600 (and d!662323 d!662265)))

(declare-fun lambda!83508 () Int)

(assert (=> bs!451600 (= (and (= (toChars!5747 (transformation!4177 (h!31321 rules!4462))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601))))) (= (toValue!5888 (transformation!4177 (h!31321 rules!4462))) (toValue!5888 (transformation!4177 (rule!6477 (h!31320 l!6601)))))) (= lambda!83508 lambda!83503))))

(declare-fun bs!451601 () Bool)

(assert (= bs!451601 (and d!662323 d!662279)))

(assert (=> bs!451601 (= (and (= (toChars!5747 (transformation!4177 (h!31321 rules!4462))) (toChars!5747 (transformation!4177 (rule!6477 t1!61)))) (= (toValue!5888 (transformation!4177 (h!31321 rules!4462))) (toValue!5888 (transformation!4177 (rule!6477 t1!61))))) (= lambda!83508 lambda!83505))))

(assert (=> d!662323 true))

(assert (=> d!662323 (< (dynLambda!11472 order!14823 (toChars!5747 (transformation!4177 (h!31321 rules!4462)))) (dynLambda!11473 order!14825 lambda!83508))))

(assert (=> d!662323 true))

(assert (=> d!662323 (< (dynLambda!11470 order!14819 (toValue!5888 (transformation!4177 (h!31321 rules!4462)))) (dynLambda!11473 order!14825 lambda!83508))))

(assert (=> d!662323 (= (semiInverseModEq!1667 (toChars!5747 (transformation!4177 (h!31321 rules!4462))) (toValue!5888 (transformation!4177 (h!31321 rules!4462)))) (Forall!1038 lambda!83508))))

(declare-fun bs!451602 () Bool)

(assert (= bs!451602 d!662323))

(declare-fun m!2656981 () Bool)

(assert (=> bs!451602 m!2656981))

(assert (=> d!662199 d!662323))

(declare-fun d!662325 () Bool)

(assert (=> d!662325 (= (inv!35124 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))) (isBalanced!2626 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))))

(declare-fun bs!451603 () Bool)

(assert (= bs!451603 d!662325))

(declare-fun m!2656983 () Bool)

(assert (=> bs!451603 m!2656983))

(assert (=> tb!132409 d!662325))

(declare-fun bs!451604 () Bool)

(declare-fun d!662327 () Bool)

(assert (= bs!451604 (and d!662327 d!662265)))

(declare-fun lambda!83509 () Int)

(assert (=> bs!451604 (= (and (= (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601))))) (= (toValue!5888 (transformation!4177 (rule!6477 t2!61))) (toValue!5888 (transformation!4177 (rule!6477 (h!31320 l!6601)))))) (= lambda!83509 lambda!83503))))

(declare-fun bs!451605 () Bool)

(assert (= bs!451605 (and d!662327 d!662279)))

(assert (=> bs!451605 (= (and (= (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (toChars!5747 (transformation!4177 (rule!6477 t1!61)))) (= (toValue!5888 (transformation!4177 (rule!6477 t2!61))) (toValue!5888 (transformation!4177 (rule!6477 t1!61))))) (= lambda!83509 lambda!83505))))

(declare-fun bs!451606 () Bool)

(assert (= bs!451606 (and d!662327 d!662323)))

(assert (=> bs!451606 (= (and (= (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (toChars!5747 (transformation!4177 (h!31321 rules!4462)))) (= (toValue!5888 (transformation!4177 (rule!6477 t2!61))) (toValue!5888 (transformation!4177 (h!31321 rules!4462))))) (= lambda!83509 lambda!83508))))

(assert (=> d!662327 true))

(assert (=> d!662327 (< (dynLambda!11472 order!14823 (toChars!5747 (transformation!4177 (rule!6477 t2!61)))) (dynLambda!11473 order!14825 lambda!83509))))

(assert (=> d!662327 true))

(assert (=> d!662327 (< (dynLambda!11470 order!14819 (toValue!5888 (transformation!4177 (rule!6477 t2!61)))) (dynLambda!11473 order!14825 lambda!83509))))

(assert (=> d!662327 (= (semiInverseModEq!1667 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (toValue!5888 (transformation!4177 (rule!6477 t2!61)))) (Forall!1038 lambda!83509))))

(declare-fun bs!451607 () Bool)

(assert (= bs!451607 d!662327))

(declare-fun m!2656985 () Bool)

(assert (=> bs!451607 m!2656985))

(assert (=> d!662177 d!662327))

(declare-fun d!662329 () Bool)

(assert (=> d!662329 (= (isEmpty!14830 (originalCharacters!4949 t1!61)) ((_ is Nil!25918) (originalCharacters!4949 t1!61)))))

(assert (=> d!662209 d!662329))

(declare-fun b!2214912 () Bool)

(declare-fun e!1414611 () Bool)

(declare-fun tp!688608 () Bool)

(assert (=> b!2214912 (= e!1414611 (and tp_is_empty!9815 tp!688608))))

(assert (=> b!2214850 (= tp!688606 e!1414611)))

(assert (= (and b!2214850 ((_ is Cons!25918) (t!198858 (originalCharacters!4949 t2!61)))) b!2214912))

(declare-fun b!2214913 () Bool)

(declare-fun e!1414612 () Bool)

(assert (=> b!2214913 (= e!1414612 tp_is_empty!9815)))

(assert (=> b!2214755 (= tp!688505 e!1414612)))

(declare-fun b!2214915 () Bool)

(declare-fun tp!688611 () Bool)

(assert (=> b!2214915 (= e!1414612 tp!688611)))

(declare-fun b!2214914 () Bool)

(declare-fun tp!688610 () Bool)

(declare-fun tp!688609 () Bool)

(assert (=> b!2214914 (= e!1414612 (and tp!688610 tp!688609))))

(declare-fun b!2214916 () Bool)

(declare-fun tp!688612 () Bool)

(declare-fun tp!688613 () Bool)

(assert (=> b!2214916 (= e!1414612 (and tp!688612 tp!688613))))

(assert (= (and b!2214755 ((_ is ElementMatch!6321) (reg!6650 (regex!4177 (rule!6477 t2!61))))) b!2214913))

(assert (= (and b!2214755 ((_ is Concat!10635) (reg!6650 (regex!4177 (rule!6477 t2!61))))) b!2214914))

(assert (= (and b!2214755 ((_ is Star!6321) (reg!6650 (regex!4177 (rule!6477 t2!61))))) b!2214915))

(assert (= (and b!2214755 ((_ is Union!6321) (reg!6650 (regex!4177 (rule!6477 t2!61))))) b!2214916))

(declare-fun b!2214917 () Bool)

(declare-fun e!1414613 () Bool)

(assert (=> b!2214917 (= e!1414613 tp_is_empty!9815)))

(assert (=> b!2214751 (= tp!688501 e!1414613)))

(declare-fun b!2214919 () Bool)

(declare-fun tp!688616 () Bool)

(assert (=> b!2214919 (= e!1414613 tp!688616)))

(declare-fun b!2214918 () Bool)

(declare-fun tp!688615 () Bool)

(declare-fun tp!688614 () Bool)

(assert (=> b!2214918 (= e!1414613 (and tp!688615 tp!688614))))

(declare-fun b!2214920 () Bool)

(declare-fun tp!688617 () Bool)

(declare-fun tp!688618 () Bool)

(assert (=> b!2214920 (= e!1414613 (and tp!688617 tp!688618))))

(assert (= (and b!2214751 ((_ is ElementMatch!6321) (regOne!13155 (regex!4177 (rule!6477 t1!61))))) b!2214917))

(assert (= (and b!2214751 ((_ is Concat!10635) (regOne!13155 (regex!4177 (rule!6477 t1!61))))) b!2214918))

(assert (= (and b!2214751 ((_ is Star!6321) (regOne!13155 (regex!4177 (rule!6477 t1!61))))) b!2214919))

(assert (= (and b!2214751 ((_ is Union!6321) (regOne!13155 (regex!4177 (rule!6477 t1!61))))) b!2214920))

(declare-fun b!2214921 () Bool)

(declare-fun e!1414614 () Bool)

(assert (=> b!2214921 (= e!1414614 tp_is_empty!9815)))

(assert (=> b!2214751 (= tp!688502 e!1414614)))

(declare-fun b!2214923 () Bool)

(declare-fun tp!688621 () Bool)

(assert (=> b!2214923 (= e!1414614 tp!688621)))

(declare-fun b!2214922 () Bool)

(declare-fun tp!688620 () Bool)

(declare-fun tp!688619 () Bool)

(assert (=> b!2214922 (= e!1414614 (and tp!688620 tp!688619))))

(declare-fun b!2214924 () Bool)

(declare-fun tp!688622 () Bool)

(declare-fun tp!688623 () Bool)

(assert (=> b!2214924 (= e!1414614 (and tp!688622 tp!688623))))

(assert (= (and b!2214751 ((_ is ElementMatch!6321) (regTwo!13155 (regex!4177 (rule!6477 t1!61))))) b!2214921))

(assert (= (and b!2214751 ((_ is Concat!10635) (regTwo!13155 (regex!4177 (rule!6477 t1!61))))) b!2214922))

(assert (= (and b!2214751 ((_ is Star!6321) (regTwo!13155 (regex!4177 (rule!6477 t1!61))))) b!2214923))

(assert (= (and b!2214751 ((_ is Union!6321) (regTwo!13155 (regex!4177 (rule!6477 t1!61))))) b!2214924))

(declare-fun tp!688631 () Bool)

(declare-fun e!1414620 () Bool)

(declare-fun tp!688632 () Bool)

(declare-fun b!2214933 () Bool)

(assert (=> b!2214933 (= e!1414620 (and (inv!35123 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))) tp!688632 (inv!35123 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))) tp!688631))))

(declare-fun b!2214935 () Bool)

(declare-fun e!1414619 () Bool)

(declare-fun tp!688630 () Bool)

(assert (=> b!2214935 (= e!1414619 tp!688630)))

(declare-fun b!2214934 () Bool)

(declare-fun inv!35127 (IArray!16963) Bool)

(assert (=> b!2214934 (= e!1414620 (and (inv!35127 (xs!11421 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))) e!1414619))))

(assert (=> b!2214708 (= tp!688482 (and (inv!35123 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))) e!1414620))))

(assert (= (and b!2214708 ((_ is Node!8479) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))) b!2214933))

(assert (= b!2214934 b!2214935))

(assert (= (and b!2214708 ((_ is Leaf!12420) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))) b!2214934))

(declare-fun m!2656987 () Bool)

(assert (=> b!2214933 m!2656987))

(declare-fun m!2656989 () Bool)

(assert (=> b!2214933 m!2656989))

(declare-fun m!2656991 () Bool)

(assert (=> b!2214934 m!2656991))

(assert (=> b!2214708 m!2656791))

(declare-fun b!2214936 () Bool)

(declare-fun e!1414621 () Bool)

(assert (=> b!2214936 (= e!1414621 tp_is_empty!9815)))

(assert (=> b!2214800 (= tp!688551 e!1414621)))

(declare-fun b!2214938 () Bool)

(declare-fun tp!688635 () Bool)

(assert (=> b!2214938 (= e!1414621 tp!688635)))

(declare-fun b!2214937 () Bool)

(declare-fun tp!688634 () Bool)

(declare-fun tp!688633 () Bool)

(assert (=> b!2214937 (= e!1414621 (and tp!688634 tp!688633))))

(declare-fun b!2214939 () Bool)

(declare-fun tp!688636 () Bool)

(declare-fun tp!688637 () Bool)

(assert (=> b!2214939 (= e!1414621 (and tp!688636 tp!688637))))

(assert (= (and b!2214800 ((_ is ElementMatch!6321) (regex!4177 (rule!6477 (h!31320 (t!198859 l!6601)))))) b!2214936))

(assert (= (and b!2214800 ((_ is Concat!10635) (regex!4177 (rule!6477 (h!31320 (t!198859 l!6601)))))) b!2214937))

(assert (= (and b!2214800 ((_ is Star!6321) (regex!4177 (rule!6477 (h!31320 (t!198859 l!6601)))))) b!2214938))

(assert (= (and b!2214800 ((_ is Union!6321) (regex!4177 (rule!6477 (h!31320 (t!198859 l!6601)))))) b!2214939))

(declare-fun b!2214940 () Bool)

(declare-fun e!1414622 () Bool)

(assert (=> b!2214940 (= e!1414622 tp_is_empty!9815)))

(assert (=> b!2214754 (= tp!688504 e!1414622)))

(declare-fun b!2214942 () Bool)

(declare-fun tp!688640 () Bool)

(assert (=> b!2214942 (= e!1414622 tp!688640)))

(declare-fun b!2214941 () Bool)

(declare-fun tp!688639 () Bool)

(declare-fun tp!688638 () Bool)

(assert (=> b!2214941 (= e!1414622 (and tp!688639 tp!688638))))

(declare-fun b!2214943 () Bool)

(declare-fun tp!688641 () Bool)

(declare-fun tp!688642 () Bool)

(assert (=> b!2214943 (= e!1414622 (and tp!688641 tp!688642))))

(assert (= (and b!2214754 ((_ is ElementMatch!6321) (regOne!13154 (regex!4177 (rule!6477 t2!61))))) b!2214940))

(assert (= (and b!2214754 ((_ is Concat!10635) (regOne!13154 (regex!4177 (rule!6477 t2!61))))) b!2214941))

(assert (= (and b!2214754 ((_ is Star!6321) (regOne!13154 (regex!4177 (rule!6477 t2!61))))) b!2214942))

(assert (= (and b!2214754 ((_ is Union!6321) (regOne!13154 (regex!4177 (rule!6477 t2!61))))) b!2214943))

(declare-fun b!2214944 () Bool)

(declare-fun e!1414623 () Bool)

(assert (=> b!2214944 (= e!1414623 tp_is_empty!9815)))

(assert (=> b!2214754 (= tp!688503 e!1414623)))

(declare-fun b!2214946 () Bool)

(declare-fun tp!688645 () Bool)

(assert (=> b!2214946 (= e!1414623 tp!688645)))

(declare-fun b!2214945 () Bool)

(declare-fun tp!688644 () Bool)

(declare-fun tp!688643 () Bool)

(assert (=> b!2214945 (= e!1414623 (and tp!688644 tp!688643))))

(declare-fun b!2214947 () Bool)

(declare-fun tp!688646 () Bool)

(declare-fun tp!688647 () Bool)

(assert (=> b!2214947 (= e!1414623 (and tp!688646 tp!688647))))

(assert (= (and b!2214754 ((_ is ElementMatch!6321) (regTwo!13154 (regex!4177 (rule!6477 t2!61))))) b!2214944))

(assert (= (and b!2214754 ((_ is Concat!10635) (regTwo!13154 (regex!4177 (rule!6477 t2!61))))) b!2214945))

(assert (= (and b!2214754 ((_ is Star!6321) (regTwo!13154 (regex!4177 (rule!6477 t2!61))))) b!2214946))

(assert (= (and b!2214754 ((_ is Union!6321) (regTwo!13154 (regex!4177 (rule!6477 t2!61))))) b!2214947))

(declare-fun b!2214948 () Bool)

(declare-fun e!1414624 () Bool)

(declare-fun tp!688648 () Bool)

(assert (=> b!2214948 (= e!1414624 (and tp_is_empty!9815 tp!688648))))

(assert (=> b!2214799 (= tp!688550 e!1414624)))

(assert (= (and b!2214799 ((_ is Cons!25918) (originalCharacters!4949 (h!31320 (t!198859 l!6601))))) b!2214948))

(declare-fun b!2214949 () Bool)

(declare-fun e!1414625 () Bool)

(assert (=> b!2214949 (= e!1414625 tp_is_empty!9815)))

(assert (=> b!2214750 (= tp!688500 e!1414625)))

(declare-fun b!2214951 () Bool)

(declare-fun tp!688651 () Bool)

(assert (=> b!2214951 (= e!1414625 tp!688651)))

(declare-fun b!2214950 () Bool)

(declare-fun tp!688650 () Bool)

(declare-fun tp!688649 () Bool)

(assert (=> b!2214950 (= e!1414625 (and tp!688650 tp!688649))))

(declare-fun b!2214952 () Bool)

(declare-fun tp!688652 () Bool)

(declare-fun tp!688653 () Bool)

(assert (=> b!2214952 (= e!1414625 (and tp!688652 tp!688653))))

(assert (= (and b!2214750 ((_ is ElementMatch!6321) (reg!6650 (regex!4177 (rule!6477 t1!61))))) b!2214949))

(assert (= (and b!2214750 ((_ is Concat!10635) (reg!6650 (regex!4177 (rule!6477 t1!61))))) b!2214950))

(assert (= (and b!2214750 ((_ is Star!6321) (reg!6650 (regex!4177 (rule!6477 t1!61))))) b!2214951))

(assert (= (and b!2214750 ((_ is Union!6321) (reg!6650 (regex!4177 (rule!6477 t1!61))))) b!2214952))

(declare-fun b!2214953 () Bool)

(declare-fun e!1414626 () Bool)

(declare-fun tp!688654 () Bool)

(assert (=> b!2214953 (= e!1414626 (and tp_is_empty!9815 tp!688654))))

(assert (=> b!2214768 (= tp!688513 e!1414626)))

(assert (= (and b!2214768 ((_ is Cons!25918) (t!198858 (originalCharacters!4949 t1!61)))) b!2214953))

(declare-fun b!2214957 () Bool)

(declare-fun b_free!64049 () Bool)

(declare-fun b_next!64753 () Bool)

(assert (=> b!2214957 (= b_free!64049 (not b_next!64753))))

(declare-fun tp!688655 () Bool)

(declare-fun b_and!173787 () Bool)

(assert (=> b!2214957 (= tp!688655 b_and!173787)))

(declare-fun b_free!64051 () Bool)

(declare-fun b_next!64755 () Bool)

(assert (=> b!2214957 (= b_free!64051 (not b_next!64755))))

(declare-fun t!198952 () Bool)

(declare-fun tb!132471 () Bool)

(assert (=> (and b!2214957 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))) (toChars!5747 (transformation!4177 (rule!6477 t2!61)))) t!198952) tb!132471))

(declare-fun result!160726 () Bool)

(assert (= result!160726 result!160644))

(assert (=> b!2214677 t!198952))

(declare-fun tb!132473 () Bool)

(declare-fun t!198954 () Bool)

(assert (=> (and b!2214957 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))) (toChars!5747 (transformation!4177 (rule!6477 t1!61)))) t!198954) tb!132473))

(declare-fun result!160728 () Bool)

(assert (= result!160728 result!160654))

(assert (=> b!2214684 t!198954))

(declare-fun t!198956 () Bool)

(declare-fun tb!132475 () Bool)

(assert (=> (and b!2214957 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601))))) t!198956) tb!132475))

(declare-fun result!160730 () Bool)

(assert (= result!160730 result!160662))

(assert (=> b!2214706 t!198956))

(declare-fun t!198958 () Bool)

(declare-fun tb!132477 () Bool)

(assert (=> (and b!2214957 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601)))))) t!198958) tb!132477))

(declare-fun result!160732 () Bool)

(assert (= result!160732 result!160712))

(assert (=> b!2214886 t!198958))

(declare-fun tp!688659 () Bool)

(declare-fun b_and!173789 () Bool)

(assert (=> b!2214957 (= tp!688659 (and (=> t!198952 result!160726) (=> t!198954 result!160728) (=> t!198956 result!160730) (=> t!198958 result!160732) b_and!173789))))

(declare-fun b!2214956 () Bool)

(declare-fun e!1414630 () Bool)

(declare-fun tp!688657 () Bool)

(declare-fun e!1414632 () Bool)

(assert (=> b!2214956 (= e!1414630 (and tp!688657 (inv!35116 (tag!4667 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))) (inv!35120 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))) e!1414632))))

(assert (=> b!2214957 (= e!1414632 (and tp!688655 tp!688659))))

(declare-fun b!2214955 () Bool)

(declare-fun tp!688656 () Bool)

(declare-fun e!1414629 () Bool)

(assert (=> b!2214955 (= e!1414629 (and (inv!21 (value!131777 (h!31320 (t!198859 (t!198859 l!6601))))) e!1414630 tp!688656))))

(declare-fun e!1414631 () Bool)

(assert (=> b!2214798 (= tp!688552 e!1414631)))

(declare-fun tp!688658 () Bool)

(declare-fun b!2214954 () Bool)

(assert (=> b!2214954 (= e!1414631 (and (inv!35119 (h!31320 (t!198859 (t!198859 l!6601)))) e!1414629 tp!688658))))

(assert (= b!2214956 b!2214957))

(assert (= b!2214955 b!2214956))

(assert (= b!2214954 b!2214955))

(assert (= (and b!2214798 ((_ is Cons!25919) (t!198859 (t!198859 l!6601)))) b!2214954))

(declare-fun m!2656993 () Bool)

(assert (=> b!2214956 m!2656993))

(declare-fun m!2656995 () Bool)

(assert (=> b!2214956 m!2656995))

(declare-fun m!2656997 () Bool)

(assert (=> b!2214955 m!2656997))

(declare-fun m!2656999 () Bool)

(assert (=> b!2214954 m!2656999))

(declare-fun b!2214958 () Bool)

(declare-fun e!1414633 () Bool)

(assert (=> b!2214958 (= e!1414633 tp_is_empty!9815)))

(assert (=> b!2214749 (= tp!688499 e!1414633)))

(declare-fun b!2214960 () Bool)

(declare-fun tp!688662 () Bool)

(assert (=> b!2214960 (= e!1414633 tp!688662)))

(declare-fun b!2214959 () Bool)

(declare-fun tp!688661 () Bool)

(declare-fun tp!688660 () Bool)

(assert (=> b!2214959 (= e!1414633 (and tp!688661 tp!688660))))

(declare-fun b!2214961 () Bool)

(declare-fun tp!688663 () Bool)

(declare-fun tp!688664 () Bool)

(assert (=> b!2214961 (= e!1414633 (and tp!688663 tp!688664))))

(assert (= (and b!2214749 ((_ is ElementMatch!6321) (regOne!13154 (regex!4177 (rule!6477 t1!61))))) b!2214958))

(assert (= (and b!2214749 ((_ is Concat!10635) (regOne!13154 (regex!4177 (rule!6477 t1!61))))) b!2214959))

(assert (= (and b!2214749 ((_ is Star!6321) (regOne!13154 (regex!4177 (rule!6477 t1!61))))) b!2214960))

(assert (= (and b!2214749 ((_ is Union!6321) (regOne!13154 (regex!4177 (rule!6477 t1!61))))) b!2214961))

(declare-fun b!2214962 () Bool)

(declare-fun e!1414634 () Bool)

(assert (=> b!2214962 (= e!1414634 tp_is_empty!9815)))

(assert (=> b!2214749 (= tp!688498 e!1414634)))

(declare-fun b!2214964 () Bool)

(declare-fun tp!688667 () Bool)

(assert (=> b!2214964 (= e!1414634 tp!688667)))

(declare-fun b!2214963 () Bool)

(declare-fun tp!688666 () Bool)

(declare-fun tp!688665 () Bool)

(assert (=> b!2214963 (= e!1414634 (and tp!688666 tp!688665))))

(declare-fun b!2214965 () Bool)

(declare-fun tp!688668 () Bool)

(declare-fun tp!688669 () Bool)

(assert (=> b!2214965 (= e!1414634 (and tp!688668 tp!688669))))

(assert (= (and b!2214749 ((_ is ElementMatch!6321) (regTwo!13154 (regex!4177 (rule!6477 t1!61))))) b!2214962))

(assert (= (and b!2214749 ((_ is Concat!10635) (regTwo!13154 (regex!4177 (rule!6477 t1!61))))) b!2214963))

(assert (= (and b!2214749 ((_ is Star!6321) (regTwo!13154 (regex!4177 (rule!6477 t1!61))))) b!2214964))

(assert (= (and b!2214749 ((_ is Union!6321) (regTwo!13154 (regex!4177 (rule!6477 t1!61))))) b!2214965))

(declare-fun b!2214966 () Bool)

(declare-fun e!1414635 () Bool)

(assert (=> b!2214966 (= e!1414635 tp_is_empty!9815)))

(assert (=> b!2214756 (= tp!688506 e!1414635)))

(declare-fun b!2214968 () Bool)

(declare-fun tp!688672 () Bool)

(assert (=> b!2214968 (= e!1414635 tp!688672)))

(declare-fun b!2214967 () Bool)

(declare-fun tp!688671 () Bool)

(declare-fun tp!688670 () Bool)

(assert (=> b!2214967 (= e!1414635 (and tp!688671 tp!688670))))

(declare-fun b!2214969 () Bool)

(declare-fun tp!688673 () Bool)

(declare-fun tp!688674 () Bool)

(assert (=> b!2214969 (= e!1414635 (and tp!688673 tp!688674))))

(assert (= (and b!2214756 ((_ is ElementMatch!6321) (regOne!13155 (regex!4177 (rule!6477 t2!61))))) b!2214966))

(assert (= (and b!2214756 ((_ is Concat!10635) (regOne!13155 (regex!4177 (rule!6477 t2!61))))) b!2214967))

(assert (= (and b!2214756 ((_ is Star!6321) (regOne!13155 (regex!4177 (rule!6477 t2!61))))) b!2214968))

(assert (= (and b!2214756 ((_ is Union!6321) (regOne!13155 (regex!4177 (rule!6477 t2!61))))) b!2214969))

(declare-fun b!2214970 () Bool)

(declare-fun e!1414636 () Bool)

(assert (=> b!2214970 (= e!1414636 tp_is_empty!9815)))

(assert (=> b!2214756 (= tp!688507 e!1414636)))

(declare-fun b!2214972 () Bool)

(declare-fun tp!688677 () Bool)

(assert (=> b!2214972 (= e!1414636 tp!688677)))

(declare-fun b!2214971 () Bool)

(declare-fun tp!688676 () Bool)

(declare-fun tp!688675 () Bool)

(assert (=> b!2214971 (= e!1414636 (and tp!688676 tp!688675))))

(declare-fun b!2214973 () Bool)

(declare-fun tp!688678 () Bool)

(declare-fun tp!688679 () Bool)

(assert (=> b!2214973 (= e!1414636 (and tp!688678 tp!688679))))

(assert (= (and b!2214756 ((_ is ElementMatch!6321) (regTwo!13155 (regex!4177 (rule!6477 t2!61))))) b!2214970))

(assert (= (and b!2214756 ((_ is Concat!10635) (regTwo!13155 (regex!4177 (rule!6477 t2!61))))) b!2214971))

(assert (= (and b!2214756 ((_ is Star!6321) (regTwo!13155 (regex!4177 (rule!6477 t2!61))))) b!2214972))

(assert (= (and b!2214756 ((_ is Union!6321) (regTwo!13155 (regex!4177 (rule!6477 t2!61))))) b!2214973))

(declare-fun b!2214974 () Bool)

(declare-fun e!1414637 () Bool)

(assert (=> b!2214974 (= e!1414637 tp_is_empty!9815)))

(assert (=> b!2214774 (= tp!688517 e!1414637)))

(declare-fun b!2214976 () Bool)

(declare-fun tp!688682 () Bool)

(assert (=> b!2214976 (= e!1414637 tp!688682)))

(declare-fun b!2214975 () Bool)

(declare-fun tp!688681 () Bool)

(declare-fun tp!688680 () Bool)

(assert (=> b!2214975 (= e!1414637 (and tp!688681 tp!688680))))

(declare-fun b!2214977 () Bool)

(declare-fun tp!688683 () Bool)

(declare-fun tp!688684 () Bool)

(assert (=> b!2214977 (= e!1414637 (and tp!688683 tp!688684))))

(assert (= (and b!2214774 ((_ is ElementMatch!6321) (regOne!13155 (regex!4177 (h!31321 rules!4462))))) b!2214974))

(assert (= (and b!2214774 ((_ is Concat!10635) (regOne!13155 (regex!4177 (h!31321 rules!4462))))) b!2214975))

(assert (= (and b!2214774 ((_ is Star!6321) (regOne!13155 (regex!4177 (h!31321 rules!4462))))) b!2214976))

(assert (= (and b!2214774 ((_ is Union!6321) (regOne!13155 (regex!4177 (h!31321 rules!4462))))) b!2214977))

(declare-fun b!2214978 () Bool)

(declare-fun e!1414638 () Bool)

(assert (=> b!2214978 (= e!1414638 tp_is_empty!9815)))

(assert (=> b!2214774 (= tp!688518 e!1414638)))

(declare-fun b!2214980 () Bool)

(declare-fun tp!688687 () Bool)

(assert (=> b!2214980 (= e!1414638 tp!688687)))

(declare-fun b!2214979 () Bool)

(declare-fun tp!688686 () Bool)

(declare-fun tp!688685 () Bool)

(assert (=> b!2214979 (= e!1414638 (and tp!688686 tp!688685))))

(declare-fun b!2214981 () Bool)

(declare-fun tp!688688 () Bool)

(declare-fun tp!688689 () Bool)

(assert (=> b!2214981 (= e!1414638 (and tp!688688 tp!688689))))

(assert (= (and b!2214774 ((_ is ElementMatch!6321) (regTwo!13155 (regex!4177 (h!31321 rules!4462))))) b!2214978))

(assert (= (and b!2214774 ((_ is Concat!10635) (regTwo!13155 (regex!4177 (h!31321 rules!4462))))) b!2214979))

(assert (= (and b!2214774 ((_ is Star!6321) (regTwo!13155 (regex!4177 (h!31321 rules!4462))))) b!2214980))

(assert (= (and b!2214774 ((_ is Union!6321) (regTwo!13155 (regex!4177 (h!31321 rules!4462))))) b!2214981))

(declare-fun b!2214982 () Bool)

(declare-fun e!1414639 () Bool)

(assert (=> b!2214982 (= e!1414639 tp_is_empty!9815)))

(assert (=> b!2214773 (= tp!688516 e!1414639)))

(declare-fun b!2214984 () Bool)

(declare-fun tp!688692 () Bool)

(assert (=> b!2214984 (= e!1414639 tp!688692)))

(declare-fun b!2214983 () Bool)

(declare-fun tp!688691 () Bool)

(declare-fun tp!688690 () Bool)

(assert (=> b!2214983 (= e!1414639 (and tp!688691 tp!688690))))

(declare-fun b!2214985 () Bool)

(declare-fun tp!688693 () Bool)

(declare-fun tp!688694 () Bool)

(assert (=> b!2214985 (= e!1414639 (and tp!688693 tp!688694))))

(assert (= (and b!2214773 ((_ is ElementMatch!6321) (reg!6650 (regex!4177 (h!31321 rules!4462))))) b!2214982))

(assert (= (and b!2214773 ((_ is Concat!10635) (reg!6650 (regex!4177 (h!31321 rules!4462))))) b!2214983))

(assert (= (and b!2214773 ((_ is Star!6321) (reg!6650 (regex!4177 (h!31321 rules!4462))))) b!2214984))

(assert (= (and b!2214773 ((_ is Union!6321) (reg!6650 (regex!4177 (h!31321 rules!4462))))) b!2214985))

(declare-fun b!2214986 () Bool)

(declare-fun e!1414640 () Bool)

(assert (=> b!2214986 (= e!1414640 tp_is_empty!9815)))

(assert (=> b!2214772 (= tp!688515 e!1414640)))

(declare-fun b!2214988 () Bool)

(declare-fun tp!688697 () Bool)

(assert (=> b!2214988 (= e!1414640 tp!688697)))

(declare-fun b!2214987 () Bool)

(declare-fun tp!688696 () Bool)

(declare-fun tp!688695 () Bool)

(assert (=> b!2214987 (= e!1414640 (and tp!688696 tp!688695))))

(declare-fun b!2214989 () Bool)

(declare-fun tp!688698 () Bool)

(declare-fun tp!688699 () Bool)

(assert (=> b!2214989 (= e!1414640 (and tp!688698 tp!688699))))

(assert (= (and b!2214772 ((_ is ElementMatch!6321) (regOne!13154 (regex!4177 (h!31321 rules!4462))))) b!2214986))

(assert (= (and b!2214772 ((_ is Concat!10635) (regOne!13154 (regex!4177 (h!31321 rules!4462))))) b!2214987))

(assert (= (and b!2214772 ((_ is Star!6321) (regOne!13154 (regex!4177 (h!31321 rules!4462))))) b!2214988))

(assert (= (and b!2214772 ((_ is Union!6321) (regOne!13154 (regex!4177 (h!31321 rules!4462))))) b!2214989))

(declare-fun b!2214990 () Bool)

(declare-fun e!1414641 () Bool)

(assert (=> b!2214990 (= e!1414641 tp_is_empty!9815)))

(assert (=> b!2214772 (= tp!688514 e!1414641)))

(declare-fun b!2214992 () Bool)

(declare-fun tp!688702 () Bool)

(assert (=> b!2214992 (= e!1414641 tp!688702)))

(declare-fun b!2214991 () Bool)

(declare-fun tp!688701 () Bool)

(declare-fun tp!688700 () Bool)

(assert (=> b!2214991 (= e!1414641 (and tp!688701 tp!688700))))

(declare-fun b!2214993 () Bool)

(declare-fun tp!688703 () Bool)

(declare-fun tp!688704 () Bool)

(assert (=> b!2214993 (= e!1414641 (and tp!688703 tp!688704))))

(assert (= (and b!2214772 ((_ is ElementMatch!6321) (regTwo!13154 (regex!4177 (h!31321 rules!4462))))) b!2214990))

(assert (= (and b!2214772 ((_ is Concat!10635) (regTwo!13154 (regex!4177 (h!31321 rules!4462))))) b!2214991))

(assert (= (and b!2214772 ((_ is Star!6321) (regTwo!13154 (regex!4177 (h!31321 rules!4462))))) b!2214992))

(assert (= (and b!2214772 ((_ is Union!6321) (regTwo!13154 (regex!4177 (h!31321 rules!4462))))) b!2214993))

(declare-fun b!2214994 () Bool)

(declare-fun e!1414642 () Bool)

(assert (=> b!2214994 (= e!1414642 tp_is_empty!9815)))

(assert (=> b!2214833 (= tp!688587 e!1414642)))

(declare-fun b!2214996 () Bool)

(declare-fun tp!688707 () Bool)

(assert (=> b!2214996 (= e!1414642 tp!688707)))

(declare-fun b!2214995 () Bool)

(declare-fun tp!688706 () Bool)

(declare-fun tp!688705 () Bool)

(assert (=> b!2214995 (= e!1414642 (and tp!688706 tp!688705))))

(declare-fun b!2214997 () Bool)

(declare-fun tp!688708 () Bool)

(declare-fun tp!688709 () Bool)

(assert (=> b!2214997 (= e!1414642 (and tp!688708 tp!688709))))

(assert (= (and b!2214833 ((_ is ElementMatch!6321) (regex!4177 (h!31321 (t!198860 rules!4462))))) b!2214994))

(assert (= (and b!2214833 ((_ is Concat!10635) (regex!4177 (h!31321 (t!198860 rules!4462))))) b!2214995))

(assert (= (and b!2214833 ((_ is Star!6321) (regex!4177 (h!31321 (t!198860 rules!4462))))) b!2214996))

(assert (= (and b!2214833 ((_ is Union!6321) (regex!4177 (h!31321 (t!198860 rules!4462))))) b!2214997))

(declare-fun tp!688711 () Bool)

(declare-fun tp!688712 () Bool)

(declare-fun e!1414644 () Bool)

(declare-fun b!2214998 () Bool)

(assert (=> b!2214998 (= e!1414644 (and (inv!35123 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))) tp!688712 (inv!35123 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))) tp!688711))))

(declare-fun b!2215000 () Bool)

(declare-fun e!1414643 () Bool)

(declare-fun tp!688710 () Bool)

(assert (=> b!2215000 (= e!1414643 tp!688710)))

(declare-fun b!2214999 () Bool)

(assert (=> b!2214999 (= e!1414644 (and (inv!35127 (xs!11421 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))) e!1414643))))

(assert (=> b!2214686 (= tp!688481 (and (inv!35123 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))) e!1414644))))

(assert (= (and b!2214686 ((_ is Node!8479) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))) b!2214998))

(assert (= b!2214999 b!2215000))

(assert (= (and b!2214686 ((_ is Leaf!12420) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))) b!2214999))

(declare-fun m!2657001 () Bool)

(assert (=> b!2214998 m!2657001))

(declare-fun m!2657003 () Bool)

(assert (=> b!2214998 m!2657003))

(declare-fun m!2657005 () Bool)

(assert (=> b!2214999 m!2657005))

(assert (=> b!2214686 m!2656773))

(declare-fun b!2215003 () Bool)

(declare-fun b_free!64053 () Bool)

(declare-fun b_next!64757 () Bool)

(assert (=> b!2215003 (= b_free!64053 (not b_next!64757))))

(declare-fun tp!688715 () Bool)

(declare-fun b_and!173791 () Bool)

(assert (=> b!2215003 (= tp!688715 b_and!173791)))

(declare-fun b_free!64055 () Bool)

(declare-fun b_next!64759 () Bool)

(assert (=> b!2215003 (= b_free!64055 (not b_next!64759))))

(declare-fun tb!132479 () Bool)

(declare-fun t!198960 () Bool)

(assert (=> (and b!2215003 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 (t!198860 rules!4462))))) (toChars!5747 (transformation!4177 (rule!6477 t2!61)))) t!198960) tb!132479))

(declare-fun result!160734 () Bool)

(assert (= result!160734 result!160644))

(assert (=> b!2214677 t!198960))

(declare-fun t!198962 () Bool)

(declare-fun tb!132481 () Bool)

(assert (=> (and b!2215003 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 (t!198860 rules!4462))))) (toChars!5747 (transformation!4177 (rule!6477 t1!61)))) t!198962) tb!132481))

(declare-fun result!160736 () Bool)

(assert (= result!160736 result!160654))

(assert (=> b!2214684 t!198962))

(declare-fun t!198964 () Bool)

(declare-fun tb!132483 () Bool)

(assert (=> (and b!2215003 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 (t!198860 rules!4462))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601))))) t!198964) tb!132483))

(declare-fun result!160738 () Bool)

(assert (= result!160738 result!160662))

(assert (=> b!2214706 t!198964))

(declare-fun t!198966 () Bool)

(declare-fun tb!132485 () Bool)

(assert (=> (and b!2215003 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 (t!198860 rules!4462))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601)))))) t!198966) tb!132485))

(declare-fun result!160740 () Bool)

(assert (= result!160740 result!160712))

(assert (=> b!2214886 t!198966))

(declare-fun tp!688714 () Bool)

(declare-fun b_and!173793 () Bool)

(assert (=> b!2215003 (= tp!688714 (and (=> t!198960 result!160734) (=> t!198962 result!160736) (=> t!198964 result!160738) (=> t!198966 result!160740) b_and!173793))))

(declare-fun e!1414648 () Bool)

(assert (=> b!2215003 (= e!1414648 (and tp!688715 tp!688714))))

(declare-fun e!1414646 () Bool)

(declare-fun tp!688716 () Bool)

(declare-fun b!2215002 () Bool)

(assert (=> b!2215002 (= e!1414646 (and tp!688716 (inv!35116 (tag!4667 (h!31321 (t!198860 (t!198860 rules!4462))))) (inv!35120 (transformation!4177 (h!31321 (t!198860 (t!198860 rules!4462))))) e!1414648))))

(declare-fun b!2215001 () Bool)

(declare-fun e!1414645 () Bool)

(declare-fun tp!688713 () Bool)

(assert (=> b!2215001 (= e!1414645 (and e!1414646 tp!688713))))

(assert (=> b!2214832 (= tp!688584 e!1414645)))

(assert (= b!2215002 b!2215003))

(assert (= b!2215001 b!2215002))

(assert (= (and b!2214832 ((_ is Cons!25920) (t!198860 (t!198860 rules!4462)))) b!2215001))

(declare-fun m!2657007 () Bool)

(assert (=> b!2215002 m!2657007))

(declare-fun m!2657009 () Bool)

(assert (=> b!2215002 m!2657009))

(declare-fun tp!688718 () Bool)

(declare-fun e!1414650 () Bool)

(declare-fun b!2215004 () Bool)

(declare-fun tp!688719 () Bool)

(assert (=> b!2215004 (= e!1414650 (and (inv!35123 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))) tp!688719 (inv!35123 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))) tp!688718))))

(declare-fun b!2215006 () Bool)

(declare-fun e!1414649 () Bool)

(declare-fun tp!688717 () Bool)

(assert (=> b!2215006 (= e!1414649 tp!688717)))

(declare-fun b!2215005 () Bool)

(assert (=> b!2215005 (= e!1414650 (and (inv!35127 (xs!11421 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))) e!1414649))))

(assert (=> b!2214683 (= tp!688480 (and (inv!35123 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))) e!1414650))))

(assert (= (and b!2214683 ((_ is Node!8479) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))) b!2215004))

(assert (= b!2215005 b!2215006))

(assert (= (and b!2214683 ((_ is Leaf!12420) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))) b!2215005))

(declare-fun m!2657011 () Bool)

(assert (=> b!2215004 m!2657011))

(declare-fun m!2657013 () Bool)

(assert (=> b!2215004 m!2657013))

(declare-fun m!2657015 () Bool)

(assert (=> b!2215005 m!2657015))

(assert (=> b!2214683 m!2656761))

(declare-fun b!2215007 () Bool)

(declare-fun e!1414651 () Bool)

(declare-fun tp!688720 () Bool)

(assert (=> b!2215007 (= e!1414651 (and tp_is_empty!9815 tp!688720))))

(assert (=> b!2214767 (= tp!688512 e!1414651)))

(assert (= (and b!2214767 ((_ is Cons!25918) (t!198858 (originalCharacters!4949 (h!31320 l!6601))))) b!2215007))

(declare-fun b!2215008 () Bool)

(declare-fun e!1414652 () Bool)

(assert (=> b!2215008 (= e!1414652 tp_is_empty!9815)))

(assert (=> b!2214742 (= tp!688496 e!1414652)))

(declare-fun b!2215010 () Bool)

(declare-fun tp!688723 () Bool)

(assert (=> b!2215010 (= e!1414652 tp!688723)))

(declare-fun b!2215009 () Bool)

(declare-fun tp!688722 () Bool)

(declare-fun tp!688721 () Bool)

(assert (=> b!2215009 (= e!1414652 (and tp!688722 tp!688721))))

(declare-fun b!2215011 () Bool)

(declare-fun tp!688724 () Bool)

(declare-fun tp!688725 () Bool)

(assert (=> b!2215011 (= e!1414652 (and tp!688724 tp!688725))))

(assert (= (and b!2214742 ((_ is ElementMatch!6321) (regOne!13155 (regex!4177 (rule!6477 (h!31320 l!6601)))))) b!2215008))

(assert (= (and b!2214742 ((_ is Concat!10635) (regOne!13155 (regex!4177 (rule!6477 (h!31320 l!6601)))))) b!2215009))

(assert (= (and b!2214742 ((_ is Star!6321) (regOne!13155 (regex!4177 (rule!6477 (h!31320 l!6601)))))) b!2215010))

(assert (= (and b!2214742 ((_ is Union!6321) (regOne!13155 (regex!4177 (rule!6477 (h!31320 l!6601)))))) b!2215011))

(declare-fun b!2215012 () Bool)

(declare-fun e!1414653 () Bool)

(assert (=> b!2215012 (= e!1414653 tp_is_empty!9815)))

(assert (=> b!2214742 (= tp!688497 e!1414653)))

(declare-fun b!2215014 () Bool)

(declare-fun tp!688728 () Bool)

(assert (=> b!2215014 (= e!1414653 tp!688728)))

(declare-fun b!2215013 () Bool)

(declare-fun tp!688727 () Bool)

(declare-fun tp!688726 () Bool)

(assert (=> b!2215013 (= e!1414653 (and tp!688727 tp!688726))))

(declare-fun b!2215015 () Bool)

(declare-fun tp!688729 () Bool)

(declare-fun tp!688730 () Bool)

(assert (=> b!2215015 (= e!1414653 (and tp!688729 tp!688730))))

(assert (= (and b!2214742 ((_ is ElementMatch!6321) (regTwo!13155 (regex!4177 (rule!6477 (h!31320 l!6601)))))) b!2215012))

(assert (= (and b!2214742 ((_ is Concat!10635) (regTwo!13155 (regex!4177 (rule!6477 (h!31320 l!6601)))))) b!2215013))

(assert (= (and b!2214742 ((_ is Star!6321) (regTwo!13155 (regex!4177 (rule!6477 (h!31320 l!6601)))))) b!2215014))

(assert (= (and b!2214742 ((_ is Union!6321) (regTwo!13155 (regex!4177 (rule!6477 (h!31320 l!6601)))))) b!2215015))

(declare-fun b!2215016 () Bool)

(declare-fun e!1414654 () Bool)

(assert (=> b!2215016 (= e!1414654 tp_is_empty!9815)))

(assert (=> b!2214741 (= tp!688495 e!1414654)))

(declare-fun b!2215018 () Bool)

(declare-fun tp!688733 () Bool)

(assert (=> b!2215018 (= e!1414654 tp!688733)))

(declare-fun b!2215017 () Bool)

(declare-fun tp!688732 () Bool)

(declare-fun tp!688731 () Bool)

(assert (=> b!2215017 (= e!1414654 (and tp!688732 tp!688731))))

(declare-fun b!2215019 () Bool)

(declare-fun tp!688734 () Bool)

(declare-fun tp!688735 () Bool)

(assert (=> b!2215019 (= e!1414654 (and tp!688734 tp!688735))))

(assert (= (and b!2214741 ((_ is ElementMatch!6321) (reg!6650 (regex!4177 (rule!6477 (h!31320 l!6601)))))) b!2215016))

(assert (= (and b!2214741 ((_ is Concat!10635) (reg!6650 (regex!4177 (rule!6477 (h!31320 l!6601)))))) b!2215017))

(assert (= (and b!2214741 ((_ is Star!6321) (reg!6650 (regex!4177 (rule!6477 (h!31320 l!6601)))))) b!2215018))

(assert (= (and b!2214741 ((_ is Union!6321) (reg!6650 (regex!4177 (rule!6477 (h!31320 l!6601)))))) b!2215019))

(declare-fun b!2215020 () Bool)

(declare-fun e!1414655 () Bool)

(assert (=> b!2215020 (= e!1414655 tp_is_empty!9815)))

(assert (=> b!2214740 (= tp!688494 e!1414655)))

(declare-fun b!2215022 () Bool)

(declare-fun tp!688738 () Bool)

(assert (=> b!2215022 (= e!1414655 tp!688738)))

(declare-fun b!2215021 () Bool)

(declare-fun tp!688737 () Bool)

(declare-fun tp!688736 () Bool)

(assert (=> b!2215021 (= e!1414655 (and tp!688737 tp!688736))))

(declare-fun b!2215023 () Bool)

(declare-fun tp!688739 () Bool)

(declare-fun tp!688740 () Bool)

(assert (=> b!2215023 (= e!1414655 (and tp!688739 tp!688740))))

(assert (= (and b!2214740 ((_ is ElementMatch!6321) (regOne!13154 (regex!4177 (rule!6477 (h!31320 l!6601)))))) b!2215020))

(assert (= (and b!2214740 ((_ is Concat!10635) (regOne!13154 (regex!4177 (rule!6477 (h!31320 l!6601)))))) b!2215021))

(assert (= (and b!2214740 ((_ is Star!6321) (regOne!13154 (regex!4177 (rule!6477 (h!31320 l!6601)))))) b!2215022))

(assert (= (and b!2214740 ((_ is Union!6321) (regOne!13154 (regex!4177 (rule!6477 (h!31320 l!6601)))))) b!2215023))

(declare-fun b!2215024 () Bool)

(declare-fun e!1414656 () Bool)

(assert (=> b!2215024 (= e!1414656 tp_is_empty!9815)))

(assert (=> b!2214740 (= tp!688493 e!1414656)))

(declare-fun b!2215026 () Bool)

(declare-fun tp!688743 () Bool)

(assert (=> b!2215026 (= e!1414656 tp!688743)))

(declare-fun b!2215025 () Bool)

(declare-fun tp!688742 () Bool)

(declare-fun tp!688741 () Bool)

(assert (=> b!2215025 (= e!1414656 (and tp!688742 tp!688741))))

(declare-fun b!2215027 () Bool)

(declare-fun tp!688744 () Bool)

(declare-fun tp!688745 () Bool)

(assert (=> b!2215027 (= e!1414656 (and tp!688744 tp!688745))))

(assert (= (and b!2214740 ((_ is ElementMatch!6321) (regTwo!13154 (regex!4177 (rule!6477 (h!31320 l!6601)))))) b!2215024))

(assert (= (and b!2214740 ((_ is Concat!10635) (regTwo!13154 (regex!4177 (rule!6477 (h!31320 l!6601)))))) b!2215025))

(assert (= (and b!2214740 ((_ is Star!6321) (regTwo!13154 (regex!4177 (rule!6477 (h!31320 l!6601)))))) b!2215026))

(assert (= (and b!2214740 ((_ is Union!6321) (regTwo!13154 (regex!4177 (rule!6477 (h!31320 l!6601)))))) b!2215027))

(declare-fun b_lambda!71349 () Bool)

(assert (= b_lambda!71347 (or (and b!2214576 b_free!64021 (= (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) (and b!2214585 b_free!64027 (= (toChars!5747 (transformation!4177 (h!31321 rules!4462))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) (and b!2215003 b_free!64055 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 (t!198860 rules!4462))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) (and b!2214583 b_free!64031 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) (and b!2214834 b_free!64047 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) (and b!2214957 b_free!64051 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) (and b!2214574 b_free!64017 (= (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) (and b!2214801 b_free!64039) b_lambda!71349)))

(declare-fun b_lambda!71351 () Bool)

(assert (= b_lambda!71345 (or (and start!215824 b_free!64023) b_lambda!71351)))

(check-sat (not b!2214902) (not b!2214872) (not b!2214976) (not b!2214951) (not b!2215013) (not d!662307) (not b!2214922) (not b!2214965) (not b_lambda!71351) (not b_lambda!71349) (not d!662315) (not b!2214943) (not b!2214981) (not d!662303) (not b!2214894) (not b_next!64759) (not b!2214946) (not b_lambda!71334) (not d!662293) (not b_next!64721) tp_is_empty!9815 (not b!2215005) (not b_next!64725) b_and!173685 (not b!2214961) (not d!662301) (not b!2214920) (not b!2214905) (not b_next!64743) (not b!2214964) (not b!2214901) (not b_lambda!71339) b_and!173777 (not b!2214996) (not b!2214898) (not b!2215015) (not b!2214963) (not b!2214947) (not b_next!64727) (not d!662241) (not b!2215006) (not b!2214935) (not b!2214950) (not b_next!64757) (not d!662247) (not b!2214953) (not b!2214879) (not b!2214862) (not d!662279) (not b_next!64751) (not b!2214888) (not b!2214973) (not b!2214971) (not b_next!64723) (not b!2214934) (not b!2214948) (not b_next!64753) (not b!2214918) (not b!2214980) (not b!2215019) b_and!173791 b_and!173789 (not b!2214915) (not b!2214874) (not b!2215010) (not b!2214987) (not b!2215009) (not b!2214900) (not d!662251) b_and!173787 (not b!2215002) (not b_next!64719) (not b!2214941) b_and!173781 (not b!2214933) (not b!2214686) (not b_next!64749) (not b!2215017) b_and!173775 (not b!2214942) (not d!662245) (not b_next!64733) b_and!173699 (not b!2214960) (not tb!132459) b_and!173793 (not b!2215026) (not b!2215001) (not b!2214969) (not b_next!64731) (not b!2214967) (not b!2214937) b_and!173783 (not b!2214954) (not d!662313) (not d!662257) (not d!662283) b_and!173769 (not b!2214997) (not d!662317) (not b!2214988) b_and!173695 (not d!662269) b_and!173779 (not b!2214977) (not b!2214991) (not d!662309) (not b_lambda!71343) (not b!2214871) b_and!173785 (not d!662237) (not b_next!64735) (not d!662297) (not d!662327) (not b!2214985) (not b!2215022) (not d!662271) (not b_next!64755) (not b!2214887) (not b!2214903) (not b!2214979) (not b!2214919) (not b_next!64741) (not b!2214886) (not b!2214955) (not b!2214923) (not d!662325) (not d!662285) (not d!662277) (not b!2214878) (not b!2214909) (not b!2215021) (not b_lambda!71330) (not b!2214683) b_and!173773 (not b!2214999) (not b!2214911) (not d!662263) (not b!2215000) (not b!2214938) (not b!2214908) (not b!2214912) (not b!2214995) (not d!662281) (not b!2215023) b_and!173761 (not b!2214998) (not b!2214983) (not b!2214989) (not b!2214984) (not b!2214939) (not d!662289) (not b!2214916) (not b!2214885) (not d!662265) (not b!2215011) (not b!2215014) (not d!662323) (not b!2214914) (not b!2215027) (not b!2214904) (not b_next!64729) (not b!2214959) (not b!2214899) (not b!2214968) (not d!662311) (not b!2214972) (not b!2214856) (not b!2214993) (not d!662273) (not b!2215004) (not b!2215018) b_and!173689 (not b!2214924) (not b!2214906) (not b!2214945) (not b!2214877) (not b!2214869) (not b_lambda!71309) (not b!2215007) (not b!2214975) (not b!2214896) (not b!2214708) (not b!2214952) (not b!2215025) (not b!2214992) (not b!2214956))
(check-sat (not b_next!64727) (not b_next!64757) (not b_next!64753) b_and!173793 (not b_next!64731) b_and!173783 b_and!173769 b_and!173785 (not b_next!64735) (not b_next!64755) (not b_next!64741) b_and!173773 b_and!173761 (not b_next!64729) b_and!173689 (not b_next!64759) (not b_next!64721) (not b_next!64725) b_and!173685 (not b_next!64743) b_and!173777 (not b_next!64751) (not b_next!64723) b_and!173791 b_and!173789 b_and!173787 b_and!173781 (not b_next!64719) (not b_next!64749) b_and!173775 (not b_next!64733) b_and!173699 b_and!173779 b_and!173695)
(get-model)

(declare-fun d!662421 () Bool)

(declare-fun choose!13068 (Int) Bool)

(assert (=> d!662421 (= (Forall!1038 lambda!83503) (choose!13068 lambda!83503))))

(declare-fun bs!451643 () Bool)

(assert (= bs!451643 d!662421))

(declare-fun m!2657167 () Bool)

(assert (=> bs!451643 m!2657167))

(assert (=> d!662265 d!662421))

(declare-fun d!662423 () Bool)

(assert (=> d!662423 (= (head!4732 (tail!3217 l!6601)) (h!31320 (tail!3217 l!6601)))))

(assert (=> b!2214900 d!662423))

(declare-fun b!2215217 () Bool)

(declare-fun res!951850 () Bool)

(declare-fun e!1414746 () Bool)

(assert (=> b!2215217 (=> (not res!951850) (not e!1414746))))

(assert (=> b!2215217 (= res!951850 (isBalanced!2626 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))))))

(declare-fun b!2215218 () Bool)

(declare-fun e!1414747 () Bool)

(assert (=> b!2215218 (= e!1414747 e!1414746)))

(declare-fun res!951851 () Bool)

(assert (=> b!2215218 (=> (not res!951851) (not e!1414746))))

(declare-fun height!1292 (Conc!8479) Int)

(assert (=> b!2215218 (= res!951851 (<= (- 1) (- (height!1292 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))) (height!1292 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))))))))

(declare-fun b!2215219 () Bool)

(declare-fun isEmpty!14831 (Conc!8479) Bool)

(assert (=> b!2215219 (= e!1414746 (not (isEmpty!14831 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))))))

(declare-fun b!2215220 () Bool)

(declare-fun res!951854 () Bool)

(assert (=> b!2215220 (=> (not res!951854) (not e!1414746))))

(assert (=> b!2215220 (= res!951854 (<= (- (height!1292 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))) (height!1292 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))) 1))))

(declare-fun b!2215221 () Bool)

(declare-fun res!951849 () Bool)

(assert (=> b!2215221 (=> (not res!951849) (not e!1414746))))

(assert (=> b!2215221 (= res!951849 (isBalanced!2626 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))))))

(declare-fun b!2215222 () Bool)

(declare-fun res!951852 () Bool)

(assert (=> b!2215222 (=> (not res!951852) (not e!1414746))))

(assert (=> b!2215222 (= res!951852 (not (isEmpty!14831 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))))))

(declare-fun d!662425 () Bool)

(declare-fun res!951853 () Bool)

(assert (=> d!662425 (=> res!951853 e!1414747)))

(assert (=> d!662425 (= res!951853 (not ((_ is Node!8479) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))))))

(assert (=> d!662425 (= (isBalanced!2626 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))) e!1414747)))

(assert (= (and d!662425 (not res!951853)) b!2215218))

(assert (= (and b!2215218 res!951851) b!2215220))

(assert (= (and b!2215220 res!951854) b!2215217))

(assert (= (and b!2215217 res!951850) b!2215221))

(assert (= (and b!2215221 res!951849) b!2215222))

(assert (= (and b!2215222 res!951852) b!2215219))

(declare-fun m!2657169 () Bool)

(assert (=> b!2215220 m!2657169))

(declare-fun m!2657171 () Bool)

(assert (=> b!2215220 m!2657171))

(declare-fun m!2657173 () Bool)

(assert (=> b!2215222 m!2657173))

(declare-fun m!2657175 () Bool)

(assert (=> b!2215221 m!2657175))

(assert (=> b!2215218 m!2657169))

(assert (=> b!2215218 m!2657171))

(declare-fun m!2657177 () Bool)

(assert (=> b!2215217 m!2657177))

(declare-fun m!2657179 () Bool)

(assert (=> b!2215219 m!2657179))

(assert (=> d!662281 d!662425))

(declare-fun b!2215223 () Bool)

(declare-fun res!951856 () Bool)

(declare-fun e!1414748 () Bool)

(assert (=> b!2215223 (=> (not res!951856) (not e!1414748))))

(assert (=> b!2215223 (= res!951856 (isBalanced!2626 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))))))

(declare-fun b!2215224 () Bool)

(declare-fun e!1414749 () Bool)

(assert (=> b!2215224 (= e!1414749 e!1414748)))

(declare-fun res!951857 () Bool)

(assert (=> b!2215224 (=> (not res!951857) (not e!1414748))))

(assert (=> b!2215224 (= res!951857 (<= (- 1) (- (height!1292 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))) (height!1292 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))))))))

(declare-fun b!2215225 () Bool)

(assert (=> b!2215225 (= e!1414748 (not (isEmpty!14831 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))))))

(declare-fun b!2215226 () Bool)

(declare-fun res!951860 () Bool)

(assert (=> b!2215226 (=> (not res!951860) (not e!1414748))))

(assert (=> b!2215226 (= res!951860 (<= (- (height!1292 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))) (height!1292 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))) 1))))

(declare-fun b!2215227 () Bool)

(declare-fun res!951855 () Bool)

(assert (=> b!2215227 (=> (not res!951855) (not e!1414748))))

(assert (=> b!2215227 (= res!951855 (isBalanced!2626 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))))))

(declare-fun b!2215228 () Bool)

(declare-fun res!951858 () Bool)

(assert (=> b!2215228 (=> (not res!951858) (not e!1414748))))

(assert (=> b!2215228 (= res!951858 (not (isEmpty!14831 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))))))

(declare-fun d!662427 () Bool)

(declare-fun res!951859 () Bool)

(assert (=> d!662427 (=> res!951859 e!1414749)))

(assert (=> d!662427 (= res!951859 (not ((_ is Node!8479) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))))))

(assert (=> d!662427 (= (isBalanced!2626 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))) e!1414749)))

(assert (= (and d!662427 (not res!951859)) b!2215224))

(assert (= (and b!2215224 res!951857) b!2215226))

(assert (= (and b!2215226 res!951860) b!2215223))

(assert (= (and b!2215223 res!951856) b!2215227))

(assert (= (and b!2215227 res!951855) b!2215228))

(assert (= (and b!2215228 res!951858) b!2215225))

(declare-fun m!2657181 () Bool)

(assert (=> b!2215226 m!2657181))

(declare-fun m!2657183 () Bool)

(assert (=> b!2215226 m!2657183))

(declare-fun m!2657185 () Bool)

(assert (=> b!2215228 m!2657185))

(declare-fun m!2657187 () Bool)

(assert (=> b!2215227 m!2657187))

(assert (=> b!2215224 m!2657181))

(assert (=> b!2215224 m!2657183))

(declare-fun m!2657189 () Bool)

(assert (=> b!2215223 m!2657189))

(declare-fun m!2657191 () Bool)

(assert (=> b!2215225 m!2657191))

(assert (=> d!662313 d!662427))

(declare-fun d!662429 () Bool)

(assert (=> d!662429 (= (inv!35127 (xs!11421 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))) (<= (size!20232 (innerList!8539 (xs!11421 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))) 2147483647))))

(declare-fun bs!451644 () Bool)

(assert (= bs!451644 d!662429))

(declare-fun m!2657193 () Bool)

(assert (=> bs!451644 m!2657193))

(assert (=> b!2215005 d!662429))

(declare-fun d!662431 () Bool)

(declare-fun lt!826802 () Int)

(assert (=> d!662431 (>= lt!826802 0)))

(declare-fun e!1414750 () Int)

(assert (=> d!662431 (= lt!826802 e!1414750)))

(declare-fun c!353929 () Bool)

(assert (=> d!662431 (= c!353929 ((_ is Nil!25918) (t!198858 (originalCharacters!4949 t2!61))))))

(assert (=> d!662431 (= (size!20232 (t!198858 (originalCharacters!4949 t2!61))) lt!826802)))

(declare-fun b!2215229 () Bool)

(assert (=> b!2215229 (= e!1414750 0)))

(declare-fun b!2215230 () Bool)

(assert (=> b!2215230 (= e!1414750 (+ 1 (size!20232 (t!198858 (t!198858 (originalCharacters!4949 t2!61))))))))

(assert (= (and d!662431 c!353929) b!2215229))

(assert (= (and d!662431 (not c!353929)) b!2215230))

(declare-fun m!2657195 () Bool)

(assert (=> b!2215230 m!2657195))

(assert (=> b!2214862 d!662431))

(declare-fun d!662433 () Bool)

(declare-fun res!951867 () Bool)

(declare-fun e!1414753 () Bool)

(assert (=> d!662433 (=> (not res!951867) (not e!1414753))))

(declare-fun size!20233 (Conc!8479) Int)

(assert (=> d!662433 (= res!951867 (= (csize!17188 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))) (+ (size!20233 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))) (size!20233 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))))))))

(assert (=> d!662433 (= (inv!35125 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))) e!1414753)))

(declare-fun b!2215237 () Bool)

(declare-fun res!951868 () Bool)

(assert (=> b!2215237 (=> (not res!951868) (not e!1414753))))

(assert (=> b!2215237 (= res!951868 (and (not (= (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))) Empty!8479)) (not (= (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))) Empty!8479))))))

(declare-fun b!2215238 () Bool)

(declare-fun res!951869 () Bool)

(assert (=> b!2215238 (=> (not res!951869) (not e!1414753))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2215238 (= res!951869 (= (cheight!8690 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))) (+ (max!0 (height!1292 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))) (height!1292 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))) 1)))))

(declare-fun b!2215239 () Bool)

(assert (=> b!2215239 (= e!1414753 (<= 0 (cheight!8690 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))))))

(assert (= (and d!662433 res!951867) b!2215237))

(assert (= (and b!2215237 res!951868) b!2215238))

(assert (= (and b!2215238 res!951869) b!2215239))

(declare-fun m!2657197 () Bool)

(assert (=> d!662433 m!2657197))

(declare-fun m!2657199 () Bool)

(assert (=> d!662433 m!2657199))

(assert (=> b!2215238 m!2657169))

(assert (=> b!2215238 m!2657171))

(assert (=> b!2215238 m!2657169))

(assert (=> b!2215238 m!2657171))

(declare-fun m!2657201 () Bool)

(assert (=> b!2215238 m!2657201))

(assert (=> b!2214906 d!662433))

(declare-fun d!662435 () Bool)

(assert (=> d!662435 (= (inv!35127 (xs!11421 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))) (<= (size!20232 (innerList!8539 (xs!11421 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))) 2147483647))))

(declare-fun bs!451645 () Bool)

(assert (= bs!451645 d!662435))

(declare-fun m!2657203 () Bool)

(assert (=> bs!451645 m!2657203))

(assert (=> b!2214999 d!662435))

(declare-fun bs!451646 () Bool)

(declare-fun d!662437 () Bool)

(assert (= bs!451646 (and d!662437 d!662257)))

(declare-fun lambda!83522 () Int)

(assert (=> bs!451646 (= (= (toValue!5888 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toValue!5888 (transformation!4177 (h!31321 rules!4462)))) (= lambda!83522 lambda!83500))))

(declare-fun bs!451647 () Bool)

(assert (= bs!451647 (and d!662437 d!662269)))

(assert (=> bs!451647 (= (= (toValue!5888 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toValue!5888 (transformation!4177 (rule!6477 t1!61)))) (= lambda!83522 lambda!83504))))

(declare-fun bs!451648 () Bool)

(assert (= bs!451648 (and d!662437 d!662315)))

(assert (=> bs!451648 (= (= (toValue!5888 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toValue!5888 (transformation!4177 (rule!6477 t2!61)))) (= lambda!83522 lambda!83506))))

(declare-fun bs!451649 () Bool)

(assert (= bs!451649 (and d!662437 d!662317)))

(assert (=> bs!451649 (= (= (toValue!5888 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toValue!5888 (transformation!4177 (rule!6477 (h!31320 l!6601))))) (= lambda!83522 lambda!83507))))

(assert (=> d!662437 true))

(assert (=> d!662437 (< (dynLambda!11470 order!14819 (toValue!5888 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601)))))) (dynLambda!11471 order!14821 lambda!83522))))

(assert (=> d!662437 (= (equivClasses!1594 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toValue!5888 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601)))))) (Forall2!663 lambda!83522))))

(declare-fun bs!451650 () Bool)

(assert (= bs!451650 d!662437))

(declare-fun m!2657205 () Bool)

(assert (=> bs!451650 m!2657205))

(assert (=> b!2214872 d!662437))

(declare-fun d!662439 () Bool)

(declare-fun res!951870 () Bool)

(declare-fun e!1414754 () Bool)

(assert (=> d!662439 (=> res!951870 e!1414754)))

(assert (=> d!662439 (= res!951870 (or (not ((_ is Cons!25919) (Cons!25919 (h!31320 (t!198859 (Cons!25919 (h!31320 (t!198859 l!6601)) (t!198859 (t!198859 l!6601))))) (t!198859 (t!198859 (Cons!25919 (h!31320 (t!198859 l!6601)) (t!198859 (t!198859 l!6601)))))))) (not ((_ is Cons!25919) (t!198859 (Cons!25919 (h!31320 (t!198859 (Cons!25919 (h!31320 (t!198859 l!6601)) (t!198859 (t!198859 l!6601))))) (t!198859 (t!198859 (Cons!25919 (h!31320 (t!198859 l!6601)) (t!198859 (t!198859 l!6601)))))))))))))

(assert (=> d!662439 (= (tokensListTwoByTwoPredicateList!44 thiss!27908 (Cons!25919 (h!31320 (t!198859 (Cons!25919 (h!31320 (t!198859 l!6601)) (t!198859 (t!198859 l!6601))))) (t!198859 (t!198859 (Cons!25919 (h!31320 (t!198859 l!6601)) (t!198859 (t!198859 l!6601)))))) rules!4462 p!3128) e!1414754)))

(declare-fun b!2215240 () Bool)

(declare-fun e!1414755 () Bool)

(assert (=> b!2215240 (= e!1414754 e!1414755)))

(declare-fun res!951871 () Bool)

(assert (=> b!2215240 (=> (not res!951871) (not e!1414755))))

(assert (=> b!2215240 (= res!951871 (dynLambda!11467 p!3128 (h!31320 (Cons!25919 (h!31320 (t!198859 (Cons!25919 (h!31320 (t!198859 l!6601)) (t!198859 (t!198859 l!6601))))) (t!198859 (t!198859 (Cons!25919 (h!31320 (t!198859 l!6601)) (t!198859 (t!198859 l!6601))))))) (h!31320 (t!198859 (Cons!25919 (h!31320 (t!198859 (Cons!25919 (h!31320 (t!198859 l!6601)) (t!198859 (t!198859 l!6601))))) (t!198859 (t!198859 (Cons!25919 (h!31320 (t!198859 l!6601)) (t!198859 (t!198859 l!6601)))))))) rules!4462))))

(declare-fun b!2215241 () Bool)

(assert (=> b!2215241 (= e!1414755 (tokensListTwoByTwoPredicateList!44 thiss!27908 (Cons!25919 (h!31320 (t!198859 (Cons!25919 (h!31320 (t!198859 (Cons!25919 (h!31320 (t!198859 l!6601)) (t!198859 (t!198859 l!6601))))) (t!198859 (t!198859 (Cons!25919 (h!31320 (t!198859 l!6601)) (t!198859 (t!198859 l!6601)))))))) (t!198859 (t!198859 (Cons!25919 (h!31320 (t!198859 (Cons!25919 (h!31320 (t!198859 l!6601)) (t!198859 (t!198859 l!6601))))) (t!198859 (t!198859 (Cons!25919 (h!31320 (t!198859 l!6601)) (t!198859 (t!198859 l!6601))))))))) rules!4462 p!3128))))

(assert (= (and d!662439 (not res!951870)) b!2215240))

(assert (= (and b!2215240 res!951871) b!2215241))

(declare-fun b_lambda!71361 () Bool)

(assert (=> (not b_lambda!71361) (not b!2215240)))

(declare-fun t!198999 () Bool)

(declare-fun tb!132517 () Bool)

(assert (=> (and start!215824 (= p!3128 p!3128) t!198999) tb!132517))

(declare-fun result!160774 () Bool)

(assert (=> tb!132517 (= result!160774 true)))

(assert (=> b!2215240 t!198999))

(declare-fun b_and!173817 () Bool)

(assert (= b_and!173773 (and (=> t!198999 result!160774) b_and!173817)))

(declare-fun m!2657207 () Bool)

(assert (=> b!2215240 m!2657207))

(declare-fun m!2657209 () Bool)

(assert (=> b!2215241 m!2657209))

(assert (=> b!2214885 d!662439))

(declare-fun d!662441 () Bool)

(declare-fun lt!826803 () Int)

(assert (=> d!662441 (>= lt!826803 0)))

(declare-fun e!1414756 () Int)

(assert (=> d!662441 (= lt!826803 e!1414756)))

(declare-fun c!353930 () Bool)

(assert (=> d!662441 (= c!353930 ((_ is Nil!25918) (originalCharacters!4949 (h!31320 (t!198859 l!6601)))))))

(assert (=> d!662441 (= (size!20232 (originalCharacters!4949 (h!31320 (t!198859 l!6601)))) lt!826803)))

(declare-fun b!2215242 () Bool)

(assert (=> b!2215242 (= e!1414756 0)))

(declare-fun b!2215243 () Bool)

(assert (=> b!2215243 (= e!1414756 (+ 1 (size!20232 (t!198858 (originalCharacters!4949 (h!31320 (t!198859 l!6601)))))))))

(assert (= (and d!662441 c!353930) b!2215242))

(assert (= (and d!662441 (not c!353930)) b!2215243))

(declare-fun m!2657211 () Bool)

(assert (=> b!2215243 m!2657211))

(assert (=> b!2214887 d!662441))

(declare-fun d!662443 () Bool)

(declare-fun choose!625 (List!26001) (_ BitVec 32))

(assert (=> d!662443 (= (charsToInt!0 (text!30638 (value!131777 (h!31320 l!6601)))) (choose!625 (text!30638 (value!131777 (h!31320 l!6601)))))))

(declare-fun bs!451651 () Bool)

(assert (= bs!451651 d!662443))

(declare-fun m!2657213 () Bool)

(assert (=> bs!451651 m!2657213))

(assert (=> d!662245 d!662443))

(declare-fun b!2215244 () Bool)

(declare-fun res!951872 () Bool)

(declare-fun e!1414758 () Bool)

(assert (=> b!2215244 (=> res!951872 e!1414758)))

(assert (=> b!2215244 (= res!951872 (not ((_ is IntegerValue!12941) (value!131777 (h!31320 (t!198859 (t!198859 l!6601)))))))))

(declare-fun e!1414757 () Bool)

(assert (=> b!2215244 (= e!1414757 e!1414758)))

(declare-fun b!2215245 () Bool)

(declare-fun e!1414759 () Bool)

(assert (=> b!2215245 (= e!1414759 e!1414757)))

(declare-fun c!353931 () Bool)

(assert (=> b!2215245 (= c!353931 ((_ is IntegerValue!12940) (value!131777 (h!31320 (t!198859 (t!198859 l!6601))))))))

(declare-fun b!2215246 () Bool)

(assert (=> b!2215246 (= e!1414759 (inv!16 (value!131777 (h!31320 (t!198859 (t!198859 l!6601))))))))

(declare-fun d!662445 () Bool)

(declare-fun c!353932 () Bool)

(assert (=> d!662445 (= c!353932 ((_ is IntegerValue!12939) (value!131777 (h!31320 (t!198859 (t!198859 l!6601))))))))

(assert (=> d!662445 (= (inv!21 (value!131777 (h!31320 (t!198859 (t!198859 l!6601))))) e!1414759)))

(declare-fun b!2215247 () Bool)

(assert (=> b!2215247 (= e!1414757 (inv!17 (value!131777 (h!31320 (t!198859 (t!198859 l!6601))))))))

(declare-fun b!2215248 () Bool)

(assert (=> b!2215248 (= e!1414758 (inv!15 (value!131777 (h!31320 (t!198859 (t!198859 l!6601))))))))

(assert (= (and d!662445 c!353932) b!2215246))

(assert (= (and d!662445 (not c!353932)) b!2215245))

(assert (= (and b!2215245 c!353931) b!2215247))

(assert (= (and b!2215245 (not c!353931)) b!2215244))

(assert (= (and b!2215244 (not res!951872)) b!2215248))

(declare-fun m!2657215 () Bool)

(assert (=> b!2215246 m!2657215))

(declare-fun m!2657217 () Bool)

(assert (=> b!2215247 m!2657217))

(declare-fun m!2657219 () Bool)

(assert (=> b!2215248 m!2657219))

(assert (=> b!2214955 d!662445))

(declare-fun b!2215259 () Bool)

(declare-fun e!1414765 () List!26002)

(declare-fun list!10057 (IArray!16963) List!26002)

(assert (=> b!2215259 (= e!1414765 (list!10057 (xs!11421 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))))))

(declare-fun b!2215260 () Bool)

(declare-fun ++!6458 (List!26002 List!26002) List!26002)

(assert (=> b!2215260 (= e!1414765 (++!6458 (list!10055 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))) (list!10055 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))))))

(declare-fun b!2215257 () Bool)

(declare-fun e!1414764 () List!26002)

(assert (=> b!2215257 (= e!1414764 Nil!25918)))

(declare-fun d!662447 () Bool)

(declare-fun c!353937 () Bool)

(assert (=> d!662447 (= c!353937 ((_ is Empty!8479) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))))

(assert (=> d!662447 (= (list!10055 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))) e!1414764)))

(declare-fun b!2215258 () Bool)

(assert (=> b!2215258 (= e!1414764 e!1414765)))

(declare-fun c!353938 () Bool)

(assert (=> b!2215258 (= c!353938 ((_ is Leaf!12420) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))))

(assert (= (and d!662447 c!353937) b!2215257))

(assert (= (and d!662447 (not c!353937)) b!2215258))

(assert (= (and b!2215258 c!353938) b!2215259))

(assert (= (and b!2215258 (not c!353938)) b!2215260))

(declare-fun m!2657221 () Bool)

(assert (=> b!2215259 m!2657221))

(declare-fun m!2657223 () Bool)

(assert (=> b!2215260 m!2657223))

(declare-fun m!2657225 () Bool)

(assert (=> b!2215260 m!2657225))

(assert (=> b!2215260 m!2657223))

(assert (=> b!2215260 m!2657225))

(declare-fun m!2657227 () Bool)

(assert (=> b!2215260 m!2657227))

(assert (=> d!662247 d!662447))

(declare-fun d!662449 () Bool)

(declare-fun choose!644 (List!26001) Int)

(assert (=> d!662449 (= (charsToBigInt!1 (text!30639 (value!131777 (h!31320 l!6601)))) (choose!644 (text!30639 (value!131777 (h!31320 l!6601)))))))

(declare-fun bs!451652 () Bool)

(assert (= bs!451652 d!662449))

(declare-fun m!2657229 () Bool)

(assert (=> bs!451652 m!2657229))

(assert (=> d!662241 d!662449))

(declare-fun d!662451 () Bool)

(assert (=> d!662451 (= (inv!35124 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (value!131777 (h!31320 (t!198859 l!6601))))) (isBalanced!2626 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (value!131777 (h!31320 (t!198859 l!6601)))))))))

(declare-fun bs!451653 () Bool)

(assert (= bs!451653 d!662451))

(declare-fun m!2657231 () Bool)

(assert (=> bs!451653 m!2657231))

(assert (=> tb!132459 d!662451))

(declare-fun d!662453 () Bool)

(declare-fun lt!826804 () Bool)

(assert (=> d!662453 (= lt!826804 (select (content!3520 (tail!3217 l!6601)) lt!826789))))

(declare-fun e!1414767 () Bool)

(assert (=> d!662453 (= lt!826804 e!1414767)))

(declare-fun res!951874 () Bool)

(assert (=> d!662453 (=> (not res!951874) (not e!1414767))))

(assert (=> d!662453 (= res!951874 ((_ is Cons!25919) (tail!3217 l!6601)))))

(assert (=> d!662453 (= (contains!4300 (tail!3217 l!6601) lt!826789) lt!826804)))

(declare-fun b!2215261 () Bool)

(declare-fun e!1414766 () Bool)

(assert (=> b!2215261 (= e!1414767 e!1414766)))

(declare-fun res!951873 () Bool)

(assert (=> b!2215261 (=> res!951873 e!1414766)))

(assert (=> b!2215261 (= res!951873 (= (h!31320 (tail!3217 l!6601)) lt!826789))))

(declare-fun b!2215262 () Bool)

(assert (=> b!2215262 (= e!1414766 (contains!4300 (t!198859 (tail!3217 l!6601)) lt!826789))))

(assert (= (and d!662453 res!951874) b!2215261))

(assert (= (and b!2215261 (not res!951873)) b!2215262))

(assert (=> d!662453 m!2656695))

(declare-fun m!2657233 () Bool)

(assert (=> d!662453 m!2657233))

(declare-fun m!2657235 () Bool)

(assert (=> d!662453 m!2657235))

(declare-fun m!2657237 () Bool)

(assert (=> b!2215262 m!2657237))

(assert (=> d!662303 d!662453))

(declare-fun d!662455 () Bool)

(assert (=> d!662455 (= (inv!17 (value!131777 (h!31320 (t!198859 l!6601)))) (= (charsToBigInt!1 (text!30639 (value!131777 (h!31320 (t!198859 l!6601))))) (value!131769 (value!131777 (h!31320 (t!198859 l!6601))))))))

(declare-fun bs!451654 () Bool)

(assert (= bs!451654 d!662455))

(declare-fun m!2657239 () Bool)

(assert (=> bs!451654 m!2657239))

(assert (=> b!2214878 d!662455))

(declare-fun d!662457 () Bool)

(declare-fun res!951879 () Bool)

(declare-fun e!1414770 () Bool)

(assert (=> d!662457 (=> (not res!951879) (not e!1414770))))

(assert (=> d!662457 (= res!951879 (<= (size!20232 (list!10057 (xs!11421 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))) 512))))

(assert (=> d!662457 (= (inv!35126 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))) e!1414770)))

(declare-fun b!2215267 () Bool)

(declare-fun res!951880 () Bool)

(assert (=> b!2215267 (=> (not res!951880) (not e!1414770))))

(assert (=> b!2215267 (= res!951880 (= (csize!17189 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))) (size!20232 (list!10057 (xs!11421 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))))))))

(declare-fun b!2215268 () Bool)

(assert (=> b!2215268 (= e!1414770 (and (> (csize!17189 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))) 0) (<= (csize!17189 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))) 512)))))

(assert (= (and d!662457 res!951879) b!2215267))

(assert (= (and b!2215267 res!951880) b!2215268))

(declare-fun m!2657241 () Bool)

(assert (=> d!662457 m!2657241))

(assert (=> d!662457 m!2657241))

(declare-fun m!2657243 () Bool)

(assert (=> d!662457 m!2657243))

(assert (=> b!2215267 m!2657241))

(assert (=> b!2215267 m!2657241))

(assert (=> b!2215267 m!2657243))

(assert (=> b!2214908 d!662457))

(declare-fun d!662459 () Bool)

(declare-fun res!951881 () Bool)

(declare-fun e!1414771 () Bool)

(assert (=> d!662459 (=> (not res!951881) (not e!1414771))))

(assert (=> d!662459 (= res!951881 (= (csize!17188 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))) (+ (size!20233 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))) (size!20233 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))))))))

(assert (=> d!662459 (= (inv!35125 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))) e!1414771)))

(declare-fun b!2215269 () Bool)

(declare-fun res!951882 () Bool)

(assert (=> b!2215269 (=> (not res!951882) (not e!1414771))))

(assert (=> b!2215269 (= res!951882 (and (not (= (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))) Empty!8479)) (not (= (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))) Empty!8479))))))

(declare-fun b!2215270 () Bool)

(declare-fun res!951883 () Bool)

(assert (=> b!2215270 (=> (not res!951883) (not e!1414771))))

(assert (=> b!2215270 (= res!951883 (= (cheight!8690 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))) (+ (max!0 (height!1292 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))) (height!1292 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))) 1)))))

(declare-fun b!2215271 () Bool)

(assert (=> b!2215271 (= e!1414771 (<= 0 (cheight!8690 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))))))

(assert (= (and d!662459 res!951881) b!2215269))

(assert (= (and b!2215269 res!951882) b!2215270))

(assert (= (and b!2215270 res!951883) b!2215271))

(declare-fun m!2657245 () Bool)

(assert (=> d!662459 m!2657245))

(declare-fun m!2657247 () Bool)

(assert (=> d!662459 m!2657247))

(assert (=> b!2215270 m!2657181))

(assert (=> b!2215270 m!2657183))

(assert (=> b!2215270 m!2657181))

(assert (=> b!2215270 m!2657183))

(declare-fun m!2657249 () Bool)

(assert (=> b!2215270 m!2657249))

(assert (=> b!2214869 d!662459))

(declare-fun d!662461 () Bool)

(assert (=> d!662461 (= (charsToInt!0 (text!30638 (value!131777 t1!61))) (choose!625 (text!30638 (value!131777 t1!61))))))

(declare-fun bs!451655 () Bool)

(assert (= bs!451655 d!662461))

(declare-fun m!2657251 () Bool)

(assert (=> bs!451655 m!2657251))

(assert (=> d!662277 d!662461))

(declare-fun d!662463 () Bool)

(declare-fun c!353939 () Bool)

(assert (=> d!662463 (= c!353939 ((_ is Node!8479) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (value!131777 (h!31320 (t!198859 l!6601)))))))))

(declare-fun e!1414772 () Bool)

(assert (=> d!662463 (= (inv!35123 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (value!131777 (h!31320 (t!198859 l!6601)))))) e!1414772)))

(declare-fun b!2215272 () Bool)

(assert (=> b!2215272 (= e!1414772 (inv!35125 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (value!131777 (h!31320 (t!198859 l!6601)))))))))

(declare-fun b!2215273 () Bool)

(declare-fun e!1414773 () Bool)

(assert (=> b!2215273 (= e!1414772 e!1414773)))

(declare-fun res!951884 () Bool)

(assert (=> b!2215273 (= res!951884 (not ((_ is Leaf!12420) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (value!131777 (h!31320 (t!198859 l!6601))))))))))

(assert (=> b!2215273 (=> res!951884 e!1414773)))

(declare-fun b!2215274 () Bool)

(assert (=> b!2215274 (= e!1414773 (inv!35126 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (value!131777 (h!31320 (t!198859 l!6601)))))))))

(assert (= (and d!662463 c!353939) b!2215272))

(assert (= (and d!662463 (not c!353939)) b!2215273))

(assert (= (and b!2215273 (not res!951884)) b!2215274))

(declare-fun m!2657253 () Bool)

(assert (=> b!2215272 m!2657253))

(declare-fun m!2657255 () Bool)

(assert (=> b!2215274 m!2657255))

(assert (=> b!2214888 d!662463))

(declare-fun d!662465 () Bool)

(declare-fun lt!826805 () Int)

(assert (=> d!662465 (>= lt!826805 0)))

(declare-fun e!1414774 () Int)

(assert (=> d!662465 (= lt!826805 e!1414774)))

(declare-fun c!353940 () Bool)

(assert (=> d!662465 (= c!353940 ((_ is Nil!25919) (t!198859 (t!198859 l!6601))))))

(assert (=> d!662465 (= (size!20230 (t!198859 (t!198859 l!6601))) lt!826805)))

(declare-fun b!2215275 () Bool)

(assert (=> b!2215275 (= e!1414774 0)))

(declare-fun b!2215276 () Bool)

(assert (=> b!2215276 (= e!1414774 (+ 1 (size!20230 (t!198859 (t!198859 (t!198859 l!6601))))))))

(assert (= (and d!662465 c!353940) b!2215275))

(assert (= (and d!662465 (not c!353940)) b!2215276))

(declare-fun m!2657257 () Bool)

(assert (=> b!2215276 m!2657257))

(assert (=> b!2214874 d!662465))

(assert (=> b!2214904 d!662423))

(declare-fun d!662467 () Bool)

(declare-fun c!353943 () Bool)

(assert (=> d!662467 (= c!353943 ((_ is Nil!25917) (text!30640 (value!131777 t2!61))))))

(declare-fun e!1414777 () Int)

(assert (=> d!662467 (= (charsToBigInt!0 (text!30640 (value!131777 t2!61)) 0) e!1414777)))

(declare-fun b!2215281 () Bool)

(assert (=> b!2215281 (= e!1414777 0)))

(declare-fun b!2215282 () Bool)

(declare-fun charToBigInt!0 ((_ BitVec 16)) Int)

(assert (=> b!2215282 (= e!1414777 (charsToBigInt!0 (t!198857 (text!30640 (value!131777 t2!61))) (+ (* 0 10) (charToBigInt!0 (h!31318 (text!30640 (value!131777 t2!61)))))))))

(assert (= (and d!662467 c!353943) b!2215281))

(assert (= (and d!662467 (not c!353943)) b!2215282))

(declare-fun m!2657259 () Bool)

(assert (=> b!2215282 m!2657259))

(declare-fun m!2657261 () Bool)

(assert (=> b!2215282 m!2657261))

(assert (=> d!662297 d!662467))

(declare-fun d!662469 () Bool)

(declare-fun choose!13069 (Int) Bool)

(assert (=> d!662469 (= (Forall2!663 lambda!83504) (choose!13069 lambda!83504))))

(declare-fun bs!451656 () Bool)

(assert (= bs!451656 d!662469))

(declare-fun m!2657263 () Bool)

(assert (=> bs!451656 m!2657263))

(assert (=> d!662269 d!662469))

(declare-fun bs!451657 () Bool)

(declare-fun d!662471 () Bool)

(assert (= bs!451657 (and d!662471 d!662257)))

(declare-fun lambda!83523 () Int)

(assert (=> bs!451657 (= (= (toValue!5888 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toValue!5888 (transformation!4177 (h!31321 rules!4462)))) (= lambda!83523 lambda!83500))))

(declare-fun bs!451658 () Bool)

(assert (= bs!451658 (and d!662471 d!662437)))

(assert (=> bs!451658 (= (= (toValue!5888 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toValue!5888 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601)))))) (= lambda!83523 lambda!83522))))

(declare-fun bs!451659 () Bool)

(assert (= bs!451659 (and d!662471 d!662315)))

(assert (=> bs!451659 (= (= (toValue!5888 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toValue!5888 (transformation!4177 (rule!6477 t2!61)))) (= lambda!83523 lambda!83506))))

(declare-fun bs!451660 () Bool)

(assert (= bs!451660 (and d!662471 d!662269)))

(assert (=> bs!451660 (= (= (toValue!5888 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toValue!5888 (transformation!4177 (rule!6477 t1!61)))) (= lambda!83523 lambda!83504))))

(declare-fun bs!451661 () Bool)

(assert (= bs!451661 (and d!662471 d!662317)))

(assert (=> bs!451661 (= (= (toValue!5888 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toValue!5888 (transformation!4177 (rule!6477 (h!31320 l!6601))))) (= lambda!83523 lambda!83507))))

(assert (=> d!662471 true))

(assert (=> d!662471 (< (dynLambda!11470 order!14819 (toValue!5888 (transformation!4177 (h!31321 (t!198860 rules!4462))))) (dynLambda!11471 order!14821 lambda!83523))))

(assert (=> d!662471 (= (equivClasses!1594 (toChars!5747 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toValue!5888 (transformation!4177 (h!31321 (t!198860 rules!4462))))) (Forall2!663 lambda!83523))))

(declare-fun bs!451662 () Bool)

(assert (= bs!451662 d!662471))

(declare-fun m!2657265 () Bool)

(assert (=> bs!451662 m!2657265))

(assert (=> b!2214902 d!662471))

(declare-fun d!662473 () Bool)

(assert (=> d!662473 (= (inv!35116 (tag!4667 (h!31321 (t!198860 (t!198860 rules!4462))))) (= (mod (str.len (value!131776 (tag!4667 (h!31321 (t!198860 (t!198860 rules!4462)))))) 2) 0))))

(assert (=> b!2215002 d!662473))

(declare-fun d!662475 () Bool)

(declare-fun res!951885 () Bool)

(declare-fun e!1414778 () Bool)

(assert (=> d!662475 (=> (not res!951885) (not e!1414778))))

(assert (=> d!662475 (= res!951885 (semiInverseModEq!1667 (toChars!5747 (transformation!4177 (h!31321 (t!198860 (t!198860 rules!4462))))) (toValue!5888 (transformation!4177 (h!31321 (t!198860 (t!198860 rules!4462)))))))))

(assert (=> d!662475 (= (inv!35120 (transformation!4177 (h!31321 (t!198860 (t!198860 rules!4462))))) e!1414778)))

(declare-fun b!2215283 () Bool)

(assert (=> b!2215283 (= e!1414778 (equivClasses!1594 (toChars!5747 (transformation!4177 (h!31321 (t!198860 (t!198860 rules!4462))))) (toValue!5888 (transformation!4177 (h!31321 (t!198860 (t!198860 rules!4462)))))))))

(assert (= (and d!662475 res!951885) b!2215283))

(declare-fun m!2657267 () Bool)

(assert (=> d!662475 m!2657267))

(declare-fun m!2657269 () Bool)

(assert (=> b!2215283 m!2657269))

(assert (=> b!2215002 d!662475))

(assert (=> b!2214683 d!662321))

(declare-fun d!662477 () Bool)

(declare-fun res!951886 () Bool)

(declare-fun e!1414779 () Bool)

(assert (=> d!662477 (=> (not res!951886) (not e!1414779))))

(assert (=> d!662477 (= res!951886 (<= (size!20232 (list!10057 (xs!11421 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))) 512))))

(assert (=> d!662477 (= (inv!35126 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))) e!1414779)))

(declare-fun b!2215284 () Bool)

(declare-fun res!951887 () Bool)

(assert (=> b!2215284 (=> (not res!951887) (not e!1414779))))

(assert (=> b!2215284 (= res!951887 (= (csize!17189 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))) (size!20232 (list!10057 (xs!11421 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))))))))

(declare-fun b!2215285 () Bool)

(assert (=> b!2215285 (= e!1414779 (and (> (csize!17189 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))) 0) (<= (csize!17189 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))) 512)))))

(assert (= (and d!662477 res!951886) b!2215284))

(assert (= (and b!2215284 res!951887) b!2215285))

(declare-fun m!2657271 () Bool)

(assert (=> d!662477 m!2657271))

(assert (=> d!662477 m!2657271))

(declare-fun m!2657273 () Bool)

(assert (=> d!662477 m!2657273))

(assert (=> b!2215284 m!2657271))

(assert (=> b!2215284 m!2657271))

(assert (=> b!2215284 m!2657273))

(assert (=> b!2214871 d!662477))

(declare-fun d!662479 () Bool)

(declare-fun c!353944 () Bool)

(assert (=> d!662479 (= c!353944 ((_ is Node!8479) (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))))))

(declare-fun e!1414780 () Bool)

(assert (=> d!662479 (= (inv!35123 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))) e!1414780)))

(declare-fun b!2215286 () Bool)

(assert (=> b!2215286 (= e!1414780 (inv!35125 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))))))

(declare-fun b!2215287 () Bool)

(declare-fun e!1414781 () Bool)

(assert (=> b!2215287 (= e!1414780 e!1414781)))

(declare-fun res!951888 () Bool)

(assert (=> b!2215287 (= res!951888 (not ((_ is Leaf!12420) (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))))))

(assert (=> b!2215287 (=> res!951888 e!1414781)))

(declare-fun b!2215288 () Bool)

(assert (=> b!2215288 (= e!1414781 (inv!35126 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))))))

(assert (= (and d!662479 c!353944) b!2215286))

(assert (= (and d!662479 (not c!353944)) b!2215287))

(assert (= (and b!2215287 (not res!951888)) b!2215288))

(declare-fun m!2657275 () Bool)

(assert (=> b!2215286 m!2657275))

(declare-fun m!2657277 () Bool)

(assert (=> b!2215288 m!2657277))

(assert (=> b!2214933 d!662479))

(declare-fun d!662481 () Bool)

(declare-fun c!353945 () Bool)

(assert (=> d!662481 (= c!353945 ((_ is Node!8479) (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))))))

(declare-fun e!1414782 () Bool)

(assert (=> d!662481 (= (inv!35123 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))) e!1414782)))

(declare-fun b!2215289 () Bool)

(assert (=> b!2215289 (= e!1414782 (inv!35125 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))))))

(declare-fun b!2215290 () Bool)

(declare-fun e!1414783 () Bool)

(assert (=> b!2215290 (= e!1414782 e!1414783)))

(declare-fun res!951889 () Bool)

(assert (=> b!2215290 (= res!951889 (not ((_ is Leaf!12420) (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))))))

(assert (=> b!2215290 (=> res!951889 e!1414783)))

(declare-fun b!2215291 () Bool)

(assert (=> b!2215291 (= e!1414783 (inv!35126 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))))))

(assert (= (and d!662481 c!353945) b!2215289))

(assert (= (and d!662481 (not c!353945)) b!2215290))

(assert (= (and b!2215290 (not res!951889)) b!2215291))

(declare-fun m!2657279 () Bool)

(assert (=> b!2215289 m!2657279))

(declare-fun m!2657281 () Bool)

(assert (=> b!2215291 m!2657281))

(assert (=> b!2214933 d!662481))

(declare-fun d!662483 () Bool)

(declare-fun c!353948 () Bool)

(assert (=> d!662483 (= c!353948 ((_ is Nil!25919) l!6601))))

(declare-fun e!1414786 () (InoxSet Token!7836))

(assert (=> d!662483 (= (content!3520 l!6601) e!1414786)))

(declare-fun b!2215296 () Bool)

(assert (=> b!2215296 (= e!1414786 ((as const (Array Token!7836 Bool)) false))))

(declare-fun b!2215297 () Bool)

(assert (=> b!2215297 (= e!1414786 ((_ map or) (store ((as const (Array Token!7836 Bool)) false) (h!31320 l!6601) true) (content!3520 (t!198859 l!6601))))))

(assert (= (and d!662483 c!353948) b!2215296))

(assert (= (and d!662483 (not c!353948)) b!2215297))

(declare-fun m!2657283 () Bool)

(assert (=> b!2215297 m!2657283))

(declare-fun m!2657285 () Bool)

(assert (=> b!2215297 m!2657285))

(assert (=> d!662285 d!662483))

(declare-fun d!662485 () Bool)

(assert (=> d!662485 (= (Forall2!663 lambda!83507) (choose!13069 lambda!83507))))

(declare-fun bs!451663 () Bool)

(assert (= bs!451663 d!662485))

(declare-fun m!2657287 () Bool)

(assert (=> bs!451663 m!2657287))

(assert (=> d!662317 d!662485))

(declare-fun d!662487 () Bool)

(assert (=> d!662487 (= (charsToInt!0 (text!30638 (value!131777 t2!61))) (choose!625 (text!30638 (value!131777 t2!61))))))

(declare-fun bs!451664 () Bool)

(assert (= bs!451664 d!662487))

(declare-fun m!2657289 () Bool)

(assert (=> bs!451664 m!2657289))

(assert (=> d!662309 d!662487))

(declare-fun d!662489 () Bool)

(assert (=> d!662489 (= (inv!16 (value!131777 (h!31320 (t!198859 l!6601)))) (= (charsToInt!0 (text!30638 (value!131777 (h!31320 (t!198859 l!6601))))) (value!131768 (value!131777 (h!31320 (t!198859 l!6601))))))))

(declare-fun bs!451665 () Bool)

(assert (= bs!451665 d!662489))

(declare-fun m!2657291 () Bool)

(assert (=> bs!451665 m!2657291))

(assert (=> b!2214877 d!662489))

(declare-fun d!662491 () Bool)

(assert (=> d!662491 (= (charsToBigInt!1 (text!30639 (value!131777 t1!61))) (choose!644 (text!30639 (value!131777 t1!61))))))

(declare-fun bs!451666 () Bool)

(assert (= bs!451666 d!662491))

(declare-fun m!2657293 () Bool)

(assert (=> bs!451666 m!2657293))

(assert (=> d!662273 d!662491))

(assert (=> b!2214708 d!662243))

(declare-fun d!662493 () Bool)

(declare-fun c!353949 () Bool)

(assert (=> d!662493 (= c!353949 ((_ is Node!8479) (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))))))

(declare-fun e!1414787 () Bool)

(assert (=> d!662493 (= (inv!35123 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))) e!1414787)))

(declare-fun b!2215298 () Bool)

(assert (=> b!2215298 (= e!1414787 (inv!35125 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))))))

(declare-fun b!2215299 () Bool)

(declare-fun e!1414788 () Bool)

(assert (=> b!2215299 (= e!1414787 e!1414788)))

(declare-fun res!951890 () Bool)

(assert (=> b!2215299 (= res!951890 (not ((_ is Leaf!12420) (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))))))

(assert (=> b!2215299 (=> res!951890 e!1414788)))

(declare-fun b!2215300 () Bool)

(assert (=> b!2215300 (= e!1414788 (inv!35126 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))))))

(assert (= (and d!662493 c!353949) b!2215298))

(assert (= (and d!662493 (not c!353949)) b!2215299))

(assert (= (and b!2215299 (not res!951890)) b!2215300))

(declare-fun m!2657295 () Bool)

(assert (=> b!2215298 m!2657295))

(declare-fun m!2657297 () Bool)

(assert (=> b!2215300 m!2657297))

(assert (=> b!2214998 d!662493))

(declare-fun d!662495 () Bool)

(declare-fun c!353950 () Bool)

(assert (=> d!662495 (= c!353950 ((_ is Node!8479) (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))))))

(declare-fun e!1414789 () Bool)

(assert (=> d!662495 (= (inv!35123 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))) e!1414789)))

(declare-fun b!2215301 () Bool)

(assert (=> b!2215301 (= e!1414789 (inv!35125 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))))))

(declare-fun b!2215302 () Bool)

(declare-fun e!1414790 () Bool)

(assert (=> b!2215302 (= e!1414789 e!1414790)))

(declare-fun res!951891 () Bool)

(assert (=> b!2215302 (= res!951891 (not ((_ is Leaf!12420) (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))))))

(assert (=> b!2215302 (=> res!951891 e!1414790)))

(declare-fun b!2215303 () Bool)

(assert (=> b!2215303 (= e!1414790 (inv!35126 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))))))

(assert (= (and d!662495 c!353950) b!2215301))

(assert (= (and d!662495 (not c!353950)) b!2215302))

(assert (= (and b!2215302 (not res!951891)) b!2215303))

(declare-fun m!2657299 () Bool)

(assert (=> b!2215301 m!2657299))

(declare-fun m!2657301 () Bool)

(assert (=> b!2215303 m!2657301))

(assert (=> b!2214998 d!662495))

(declare-fun d!662497 () Bool)

(declare-fun lt!826806 () Bool)

(assert (=> d!662497 (= lt!826806 (select (content!3520 (t!198859 l!6601)) lt!826767))))

(declare-fun e!1414792 () Bool)

(assert (=> d!662497 (= lt!826806 e!1414792)))

(declare-fun res!951893 () Bool)

(assert (=> d!662497 (=> (not res!951893) (not e!1414792))))

(assert (=> d!662497 (= res!951893 ((_ is Cons!25919) (t!198859 l!6601)))))

(assert (=> d!662497 (= (contains!4300 (t!198859 l!6601) lt!826767) lt!826806)))

(declare-fun b!2215304 () Bool)

(declare-fun e!1414791 () Bool)

(assert (=> b!2215304 (= e!1414792 e!1414791)))

(declare-fun res!951892 () Bool)

(assert (=> b!2215304 (=> res!951892 e!1414791)))

(assert (=> b!2215304 (= res!951892 (= (h!31320 (t!198859 l!6601)) lt!826767))))

(declare-fun b!2215305 () Bool)

(assert (=> b!2215305 (= e!1414791 (contains!4300 (t!198859 (t!198859 l!6601)) lt!826767))))

(assert (= (and d!662497 res!951893) b!2215304))

(assert (= (and b!2215304 (not res!951892)) b!2215305))

(assert (=> d!662497 m!2657285))

(declare-fun m!2657303 () Bool)

(assert (=> d!662497 m!2657303))

(declare-fun m!2657305 () Bool)

(assert (=> b!2215305 m!2657305))

(assert (=> b!2214896 d!662497))

(declare-fun d!662499 () Bool)

(declare-fun lt!826807 () Int)

(assert (=> d!662499 (>= lt!826807 0)))

(declare-fun e!1414793 () Int)

(assert (=> d!662499 (= lt!826807 e!1414793)))

(declare-fun c!353951 () Bool)

(assert (=> d!662499 (= c!353951 ((_ is Nil!25919) (tail!3217 l!6601)))))

(assert (=> d!662499 (= (size!20230 (tail!3217 l!6601)) lt!826807)))

(declare-fun b!2215306 () Bool)

(assert (=> b!2215306 (= e!1414793 0)))

(declare-fun b!2215307 () Bool)

(assert (=> b!2215307 (= e!1414793 (+ 1 (size!20230 (t!198859 (tail!3217 l!6601)))))))

(assert (= (and d!662499 c!353951) b!2215306))

(assert (= (and d!662499 (not c!353951)) b!2215307))

(declare-fun m!2657307 () Bool)

(assert (=> b!2215307 m!2657307))

(assert (=> b!2214899 d!662499))

(declare-fun d!662501 () Bool)

(declare-fun c!353952 () Bool)

(assert (=> d!662501 (= c!353952 ((_ is Node!8479) (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))))))

(declare-fun e!1414794 () Bool)

(assert (=> d!662501 (= (inv!35123 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))) e!1414794)))

(declare-fun b!2215308 () Bool)

(assert (=> b!2215308 (= e!1414794 (inv!35125 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))))))

(declare-fun b!2215309 () Bool)

(declare-fun e!1414795 () Bool)

(assert (=> b!2215309 (= e!1414794 e!1414795)))

(declare-fun res!951894 () Bool)

(assert (=> b!2215309 (= res!951894 (not ((_ is Leaf!12420) (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))))))

(assert (=> b!2215309 (=> res!951894 e!1414795)))

(declare-fun b!2215310 () Bool)

(assert (=> b!2215310 (= e!1414795 (inv!35126 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))))))

(assert (= (and d!662501 c!353952) b!2215308))

(assert (= (and d!662501 (not c!353952)) b!2215309))

(assert (= (and b!2215309 (not res!951894)) b!2215310))

(declare-fun m!2657309 () Bool)

(assert (=> b!2215308 m!2657309))

(declare-fun m!2657311 () Bool)

(assert (=> b!2215310 m!2657311))

(assert (=> b!2215004 d!662501))

(declare-fun d!662503 () Bool)

(declare-fun c!353953 () Bool)

(assert (=> d!662503 (= c!353953 ((_ is Node!8479) (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))))))

(declare-fun e!1414796 () Bool)

(assert (=> d!662503 (= (inv!35123 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))) e!1414796)))

(declare-fun b!2215311 () Bool)

(assert (=> b!2215311 (= e!1414796 (inv!35125 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))))))

(declare-fun b!2215312 () Bool)

(declare-fun e!1414797 () Bool)

(assert (=> b!2215312 (= e!1414796 e!1414797)))

(declare-fun res!951895 () Bool)

(assert (=> b!2215312 (= res!951895 (not ((_ is Leaf!12420) (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))))))

(assert (=> b!2215312 (=> res!951895 e!1414797)))

(declare-fun b!2215313 () Bool)

(assert (=> b!2215313 (= e!1414797 (inv!35126 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))))))

(assert (= (and d!662503 c!353953) b!2215311))

(assert (= (and d!662503 (not c!353953)) b!2215312))

(assert (= (and b!2215312 (not res!951895)) b!2215313))

(declare-fun m!2657313 () Bool)

(assert (=> b!2215311 m!2657313))

(declare-fun m!2657315 () Bool)

(assert (=> b!2215313 m!2657315))

(assert (=> b!2215004 d!662503))

(declare-fun d!662505 () Bool)

(assert (=> d!662505 (= (list!10054 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (value!131777 (h!31320 (t!198859 l!6601))))) (list!10055 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (value!131777 (h!31320 (t!198859 l!6601)))))))))

(declare-fun bs!451667 () Bool)

(assert (= bs!451667 d!662505))

(declare-fun m!2657317 () Bool)

(assert (=> bs!451667 m!2657317))

(assert (=> b!2214886 d!662505))

(declare-fun b!2215316 () Bool)

(declare-fun e!1414799 () List!26002)

(assert (=> b!2215316 (= e!1414799 (list!10057 (xs!11421 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))))))

(declare-fun b!2215317 () Bool)

(assert (=> b!2215317 (= e!1414799 (++!6458 (list!10055 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))) (list!10055 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))))))

(declare-fun b!2215314 () Bool)

(declare-fun e!1414798 () List!26002)

(assert (=> b!2215314 (= e!1414798 Nil!25918)))

(declare-fun d!662507 () Bool)

(declare-fun c!353954 () Bool)

(assert (=> d!662507 (= c!353954 ((_ is Empty!8479) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))))

(assert (=> d!662507 (= (list!10055 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))) e!1414798)))

(declare-fun b!2215315 () Bool)

(assert (=> b!2215315 (= e!1414798 e!1414799)))

(declare-fun c!353955 () Bool)

(assert (=> b!2215315 (= c!353955 ((_ is Leaf!12420) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))))

(assert (= (and d!662507 c!353954) b!2215314))

(assert (= (and d!662507 (not c!353954)) b!2215315))

(assert (= (and b!2215315 c!353955) b!2215316))

(assert (= (and b!2215315 (not c!353955)) b!2215317))

(assert (=> b!2215316 m!2657241))

(declare-fun m!2657319 () Bool)

(assert (=> b!2215317 m!2657319))

(declare-fun m!2657321 () Bool)

(assert (=> b!2215317 m!2657321))

(assert (=> b!2215317 m!2657319))

(assert (=> b!2215317 m!2657321))

(declare-fun m!2657323 () Bool)

(assert (=> b!2215317 m!2657323))

(assert (=> d!662311 d!662507))

(declare-fun b!2215320 () Bool)

(declare-fun e!1414801 () List!26002)

(assert (=> b!2215320 (= e!1414801 (list!10057 (xs!11421 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))))))

(declare-fun b!2215321 () Bool)

(assert (=> b!2215321 (= e!1414801 (++!6458 (list!10055 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))) (list!10055 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))))))

(declare-fun b!2215318 () Bool)

(declare-fun e!1414800 () List!26002)

(assert (=> b!2215318 (= e!1414800 Nil!25918)))

(declare-fun d!662509 () Bool)

(declare-fun c!353956 () Bool)

(assert (=> d!662509 (= c!353956 ((_ is Empty!8479) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))))

(assert (=> d!662509 (= (list!10055 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))) e!1414800)))

(declare-fun b!2215319 () Bool)

(assert (=> b!2215319 (= e!1414800 e!1414801)))

(declare-fun c!353957 () Bool)

(assert (=> b!2215319 (= c!353957 ((_ is Leaf!12420) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))))

(assert (= (and d!662509 c!353956) b!2215318))

(assert (= (and d!662509 (not c!353956)) b!2215319))

(assert (= (and b!2215319 c!353957) b!2215320))

(assert (= (and b!2215319 (not c!353957)) b!2215321))

(assert (=> b!2215320 m!2657271))

(declare-fun m!2657325 () Bool)

(assert (=> b!2215321 m!2657325))

(declare-fun m!2657327 () Bool)

(assert (=> b!2215321 m!2657327))

(assert (=> b!2215321 m!2657325))

(assert (=> b!2215321 m!2657327))

(declare-fun m!2657329 () Bool)

(assert (=> b!2215321 m!2657329))

(assert (=> d!662293 d!662509))

(declare-fun d!662511 () Bool)

(assert (=> d!662511 (= (inv!35116 (tag!4667 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))) (= (mod (str.len (value!131776 (tag!4667 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601))))))) 2) 0))))

(assert (=> b!2214956 d!662511))

(declare-fun d!662513 () Bool)

(declare-fun res!951896 () Bool)

(declare-fun e!1414802 () Bool)

(assert (=> d!662513 (=> (not res!951896) (not e!1414802))))

(assert (=> d!662513 (= res!951896 (semiInverseModEq!1667 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))) (toValue!5888 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601))))))))))

(assert (=> d!662513 (= (inv!35120 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))) e!1414802)))

(declare-fun b!2215322 () Bool)

(assert (=> b!2215322 (= e!1414802 (equivClasses!1594 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))) (toValue!5888 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601))))))))))

(assert (= (and d!662513 res!951896) b!2215322))

(declare-fun m!2657331 () Bool)

(assert (=> d!662513 m!2657331))

(declare-fun m!2657333 () Bool)

(assert (=> b!2215322 m!2657333))

(assert (=> b!2214956 d!662513))

(declare-fun d!662515 () Bool)

(assert (=> d!662515 (= (Forall2!663 lambda!83506) (choose!13069 lambda!83506))))

(declare-fun bs!451668 () Bool)

(assert (= bs!451668 d!662515))

(declare-fun m!2657335 () Bool)

(assert (=> bs!451668 m!2657335))

(assert (=> d!662315 d!662515))

(declare-fun d!662517 () Bool)

(declare-fun lt!826808 () Int)

(assert (=> d!662517 (>= lt!826808 0)))

(declare-fun e!1414803 () Int)

(assert (=> d!662517 (= lt!826808 e!1414803)))

(declare-fun c!353958 () Bool)

(assert (=> d!662517 (= c!353958 ((_ is Nil!25918) (t!198858 (originalCharacters!4949 t1!61))))))

(assert (=> d!662517 (= (size!20232 (t!198858 (originalCharacters!4949 t1!61))) lt!826808)))

(declare-fun b!2215323 () Bool)

(assert (=> b!2215323 (= e!1414803 0)))

(declare-fun b!2215324 () Bool)

(assert (=> b!2215324 (= e!1414803 (+ 1 (size!20232 (t!198858 (t!198858 (originalCharacters!4949 t1!61))))))))

(assert (= (and d!662517 c!353958) b!2215323))

(assert (= (and d!662517 (not c!353958)) b!2215324))

(declare-fun m!2657337 () Bool)

(assert (=> b!2215324 m!2657337))

(assert (=> b!2214894 d!662517))

(declare-fun b!2215325 () Bool)

(declare-fun res!951898 () Bool)

(declare-fun e!1414804 () Bool)

(assert (=> b!2215325 (=> (not res!951898) (not e!1414804))))

(assert (=> b!2215325 (= res!951898 (isBalanced!2626 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))))))

(declare-fun b!2215326 () Bool)

(declare-fun e!1414805 () Bool)

(assert (=> b!2215326 (= e!1414805 e!1414804)))

(declare-fun res!951899 () Bool)

(assert (=> b!2215326 (=> (not res!951899) (not e!1414804))))

(assert (=> b!2215326 (= res!951899 (<= (- 1) (- (height!1292 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))) (height!1292 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))))))))

(declare-fun b!2215327 () Bool)

(assert (=> b!2215327 (= e!1414804 (not (isEmpty!14831 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))))))

(declare-fun b!2215328 () Bool)

(declare-fun res!951902 () Bool)

(assert (=> b!2215328 (=> (not res!951902) (not e!1414804))))

(assert (=> b!2215328 (= res!951902 (<= (- (height!1292 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))) (height!1292 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))) 1))))

(declare-fun b!2215329 () Bool)

(declare-fun res!951897 () Bool)

(assert (=> b!2215329 (=> (not res!951897) (not e!1414804))))

(assert (=> b!2215329 (= res!951897 (isBalanced!2626 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))))))

(declare-fun b!2215330 () Bool)

(declare-fun res!951900 () Bool)

(assert (=> b!2215330 (=> (not res!951900) (not e!1414804))))

(assert (=> b!2215330 (= res!951900 (not (isEmpty!14831 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))))))

(declare-fun d!662519 () Bool)

(declare-fun res!951901 () Bool)

(assert (=> d!662519 (=> res!951901 e!1414805)))

(assert (=> d!662519 (= res!951901 (not ((_ is Node!8479) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))))))

(assert (=> d!662519 (= (isBalanced!2626 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))) e!1414805)))

(assert (= (and d!662519 (not res!951901)) b!2215326))

(assert (= (and b!2215326 res!951899) b!2215328))

(assert (= (and b!2215328 res!951902) b!2215325))

(assert (= (and b!2215325 res!951898) b!2215329))

(assert (= (and b!2215329 res!951897) b!2215330))

(assert (= (and b!2215330 res!951900) b!2215327))

(declare-fun m!2657339 () Bool)

(assert (=> b!2215328 m!2657339))

(declare-fun m!2657341 () Bool)

(assert (=> b!2215328 m!2657341))

(declare-fun m!2657343 () Bool)

(assert (=> b!2215330 m!2657343))

(declare-fun m!2657345 () Bool)

(assert (=> b!2215329 m!2657345))

(assert (=> b!2215326 m!2657339))

(assert (=> b!2215326 m!2657341))

(declare-fun m!2657347 () Bool)

(assert (=> b!2215325 m!2657347))

(declare-fun m!2657349 () Bool)

(assert (=> b!2215327 m!2657349))

(assert (=> d!662325 d!662519))

(declare-fun d!662521 () Bool)

(declare-fun lt!826809 () Token!7836)

(assert (=> d!662521 (contains!4300 (tail!3217 (tail!3217 l!6601)) lt!826809)))

(declare-fun e!1414807 () Token!7836)

(assert (=> d!662521 (= lt!826809 e!1414807)))

(declare-fun c!353959 () Bool)

(assert (=> d!662521 (= c!353959 (= (- (- i!1797 1) 1) 0))))

(declare-fun e!1414806 () Bool)

(assert (=> d!662521 e!1414806))

(declare-fun res!951903 () Bool)

(assert (=> d!662521 (=> (not res!951903) (not e!1414806))))

(assert (=> d!662521 (= res!951903 (<= 0 (- (- i!1797 1) 1)))))

(assert (=> d!662521 (= (apply!6423 (tail!3217 (tail!3217 l!6601)) (- (- i!1797 1) 1)) lt!826809)))

(declare-fun b!2215331 () Bool)

(assert (=> b!2215331 (= e!1414806 (< (- (- i!1797 1) 1) (size!20230 (tail!3217 (tail!3217 l!6601)))))))

(declare-fun b!2215332 () Bool)

(assert (=> b!2215332 (= e!1414807 (head!4732 (tail!3217 (tail!3217 l!6601))))))

(declare-fun b!2215333 () Bool)

(assert (=> b!2215333 (= e!1414807 (apply!6423 (tail!3217 (tail!3217 (tail!3217 l!6601))) (- (- (- i!1797 1) 1) 1)))))

(assert (= (and d!662521 res!951903) b!2215331))

(assert (= (and d!662521 c!353959) b!2215332))

(assert (= (and d!662521 (not c!353959)) b!2215333))

(assert (=> d!662521 m!2656945))

(declare-fun m!2657351 () Bool)

(assert (=> d!662521 m!2657351))

(assert (=> b!2215331 m!2656945))

(declare-fun m!2657353 () Bool)

(assert (=> b!2215331 m!2657353))

(assert (=> b!2215332 m!2656945))

(declare-fun m!2657355 () Bool)

(assert (=> b!2215332 m!2657355))

(assert (=> b!2215333 m!2656945))

(declare-fun m!2657357 () Bool)

(assert (=> b!2215333 m!2657357))

(assert (=> b!2215333 m!2657357))

(declare-fun m!2657359 () Bool)

(assert (=> b!2215333 m!2657359))

(assert (=> b!2214901 d!662521))

(declare-fun d!662523 () Bool)

(assert (=> d!662523 (= (tail!3217 (tail!3217 l!6601)) (t!198859 (tail!3217 l!6601)))))

(assert (=> b!2214901 d!662523))

(declare-fun d!662525 () Bool)

(assert (=> d!662525 (= (inv!15 (value!131777 (h!31320 (t!198859 l!6601)))) (= (charsToBigInt!0 (text!30640 (value!131777 (h!31320 (t!198859 l!6601)))) 0) (value!131772 (value!131777 (h!31320 (t!198859 l!6601))))))))

(declare-fun bs!451669 () Bool)

(assert (= bs!451669 d!662525))

(declare-fun m!2657361 () Bool)

(assert (=> bs!451669 m!2657361))

(assert (=> b!2214879 d!662525))

(declare-fun d!662527 () Bool)

(declare-fun lt!826810 () Int)

(assert (=> d!662527 (>= lt!826810 0)))

(declare-fun e!1414808 () Int)

(assert (=> d!662527 (= lt!826810 e!1414808)))

(declare-fun c!353960 () Bool)

(assert (=> d!662527 (= c!353960 ((_ is Nil!25918) (t!198858 (originalCharacters!4949 (h!31320 l!6601)))))))

(assert (=> d!662527 (= (size!20232 (t!198858 (originalCharacters!4949 (h!31320 l!6601)))) lt!826810)))

(declare-fun b!2215334 () Bool)

(assert (=> b!2215334 (= e!1414808 0)))

(declare-fun b!2215335 () Bool)

(assert (=> b!2215335 (= e!1414808 (+ 1 (size!20232 (t!198858 (t!198858 (originalCharacters!4949 (h!31320 l!6601)))))))))

(assert (= (and d!662527 c!353960) b!2215334))

(assert (= (and d!662527 (not c!353960)) b!2215335))

(declare-fun m!2657363 () Bool)

(assert (=> b!2215335 m!2657363))

(assert (=> b!2214898 d!662527))

(declare-fun d!662529 () Bool)

(declare-fun res!951904 () Bool)

(declare-fun e!1414809 () Bool)

(assert (=> d!662529 (=> (not res!951904) (not e!1414809))))

(assert (=> d!662529 (= res!951904 (<= (size!20232 (list!10057 (xs!11421 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))) 512))))

(assert (=> d!662529 (= (inv!35126 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))) e!1414809)))

(declare-fun b!2215336 () Bool)

(declare-fun res!951905 () Bool)

(assert (=> b!2215336 (=> (not res!951905) (not e!1414809))))

(assert (=> b!2215336 (= res!951905 (= (csize!17189 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))) (size!20232 (list!10057 (xs!11421 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))))))))

(declare-fun b!2215337 () Bool)

(assert (=> b!2215337 (= e!1414809 (and (> (csize!17189 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))) 0) (<= (csize!17189 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))) 512)))))

(assert (= (and d!662529 res!951904) b!2215336))

(assert (= (and b!2215336 res!951905) b!2215337))

(assert (=> d!662529 m!2657221))

(assert (=> d!662529 m!2657221))

(declare-fun m!2657365 () Bool)

(assert (=> d!662529 m!2657365))

(assert (=> b!2215336 m!2657221))

(assert (=> b!2215336 m!2657221))

(assert (=> b!2215336 m!2657365))

(assert (=> b!2214911 d!662529))

(assert (=> d!662237 d!662483))

(declare-fun d!662531 () Bool)

(assert (=> d!662531 (= (Forall2!663 lambda!83500) (choose!13069 lambda!83500))))

(declare-fun bs!451670 () Bool)

(assert (= bs!451670 d!662531))

(declare-fun m!2657367 () Bool)

(assert (=> bs!451670 m!2657367))

(assert (=> d!662257 d!662531))

(declare-fun d!662533 () Bool)

(declare-fun lt!826811 () Token!7836)

(assert (=> d!662533 (contains!4300 (tail!3217 (tail!3217 l!6601)) lt!826811)))

(declare-fun e!1414811 () Token!7836)

(assert (=> d!662533 (= lt!826811 e!1414811)))

(declare-fun c!353961 () Bool)

(assert (=> d!662533 (= c!353961 (= (- (- (+ 1 i!1797) 1) 1) 0))))

(declare-fun e!1414810 () Bool)

(assert (=> d!662533 e!1414810))

(declare-fun res!951906 () Bool)

(assert (=> d!662533 (=> (not res!951906) (not e!1414810))))

(assert (=> d!662533 (= res!951906 (<= 0 (- (- (+ 1 i!1797) 1) 1)))))

(assert (=> d!662533 (= (apply!6423 (tail!3217 (tail!3217 l!6601)) (- (- (+ 1 i!1797) 1) 1)) lt!826811)))

(declare-fun b!2215338 () Bool)

(assert (=> b!2215338 (= e!1414810 (< (- (- (+ 1 i!1797) 1) 1) (size!20230 (tail!3217 (tail!3217 l!6601)))))))

(declare-fun b!2215339 () Bool)

(assert (=> b!2215339 (= e!1414811 (head!4732 (tail!3217 (tail!3217 l!6601))))))

(declare-fun b!2215340 () Bool)

(assert (=> b!2215340 (= e!1414811 (apply!6423 (tail!3217 (tail!3217 (tail!3217 l!6601))) (- (- (- (+ 1 i!1797) 1) 1) 1)))))

(assert (= (and d!662533 res!951906) b!2215338))

(assert (= (and d!662533 c!353961) b!2215339))

(assert (= (and d!662533 (not c!353961)) b!2215340))

(assert (=> d!662533 m!2656945))

(declare-fun m!2657369 () Bool)

(assert (=> d!662533 m!2657369))

(assert (=> b!2215338 m!2656945))

(assert (=> b!2215338 m!2657353))

(assert (=> b!2215339 m!2656945))

(assert (=> b!2215339 m!2657355))

(assert (=> b!2215340 m!2656945))

(assert (=> b!2215340 m!2657357))

(assert (=> b!2215340 m!2657357))

(declare-fun m!2657371 () Bool)

(assert (=> b!2215340 m!2657371))

(assert (=> b!2214905 d!662533))

(assert (=> b!2214905 d!662523))

(declare-fun d!662535 () Bool)

(assert (=> d!662535 (= (Forall!1038 lambda!83509) (choose!13068 lambda!83509))))

(declare-fun bs!451671 () Bool)

(assert (= bs!451671 d!662535))

(declare-fun m!2657373 () Bool)

(assert (=> bs!451671 m!2657373))

(assert (=> d!662327 d!662535))

(declare-fun d!662537 () Bool)

(declare-fun c!353962 () Bool)

(assert (=> d!662537 (= c!353962 ((_ is Nil!25917) (text!30640 (value!131777 (h!31320 l!6601)))))))

(declare-fun e!1414812 () Int)

(assert (=> d!662537 (= (charsToBigInt!0 (text!30640 (value!131777 (h!31320 l!6601))) 0) e!1414812)))

(declare-fun b!2215341 () Bool)

(assert (=> b!2215341 (= e!1414812 0)))

(declare-fun b!2215342 () Bool)

(assert (=> b!2215342 (= e!1414812 (charsToBigInt!0 (t!198857 (text!30640 (value!131777 (h!31320 l!6601)))) (+ (* 0 10) (charToBigInt!0 (h!31318 (text!30640 (value!131777 (h!31320 l!6601))))))))))

(assert (= (and d!662537 c!353962) b!2215341))

(assert (= (and d!662537 (not c!353962)) b!2215342))

(declare-fun m!2657375 () Bool)

(assert (=> b!2215342 m!2657375))

(declare-fun m!2657377 () Bool)

(assert (=> b!2215342 m!2657377))

(assert (=> d!662283 d!662537))

(declare-fun d!662539 () Bool)

(declare-fun res!951907 () Bool)

(declare-fun e!1414813 () Bool)

(assert (=> d!662539 (=> (not res!951907) (not e!1414813))))

(assert (=> d!662539 (= res!951907 (= (csize!17188 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))) (+ (size!20233 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))) (size!20233 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))))))))

(assert (=> d!662539 (= (inv!35125 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))) e!1414813)))

(declare-fun b!2215343 () Bool)

(declare-fun res!951908 () Bool)

(assert (=> b!2215343 (=> (not res!951908) (not e!1414813))))

(assert (=> b!2215343 (= res!951908 (and (not (= (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))) Empty!8479)) (not (= (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))) Empty!8479))))))

(declare-fun b!2215344 () Bool)

(declare-fun res!951909 () Bool)

(assert (=> b!2215344 (=> (not res!951909) (not e!1414813))))

(assert (=> b!2215344 (= res!951909 (= (cheight!8690 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))) (+ (max!0 (height!1292 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))) (height!1292 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))) 1)))))

(declare-fun b!2215345 () Bool)

(assert (=> b!2215345 (= e!1414813 (<= 0 (cheight!8690 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))))))

(assert (= (and d!662539 res!951907) b!2215343))

(assert (= (and b!2215343 res!951908) b!2215344))

(assert (= (and b!2215344 res!951909) b!2215345))

(declare-fun m!2657379 () Bool)

(assert (=> d!662539 m!2657379))

(declare-fun m!2657381 () Bool)

(assert (=> d!662539 m!2657381))

(assert (=> b!2215344 m!2657339))

(assert (=> b!2215344 m!2657341))

(assert (=> b!2215344 m!2657339))

(assert (=> b!2215344 m!2657341))

(declare-fun m!2657383 () Bool)

(assert (=> b!2215344 m!2657383))

(assert (=> b!2214909 d!662539))

(assert (=> b!2214686 d!662305))

(assert (=> b!2214903 d!662499))

(declare-fun d!662541 () Bool)

(assert (=> d!662541 (= (charsToBigInt!1 (text!30639 (value!131777 t2!61))) (choose!644 (text!30639 (value!131777 t2!61))))))

(declare-fun bs!451672 () Bool)

(assert (= bs!451672 d!662541))

(declare-fun m!2657385 () Bool)

(assert (=> bs!451672 m!2657385))

(assert (=> d!662307 d!662541))

(declare-fun bs!451673 () Bool)

(declare-fun d!662543 () Bool)

(assert (= bs!451673 (and d!662543 d!662265)))

(declare-fun lambda!83524 () Int)

(assert (=> bs!451673 (= (and (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601))))) (= (toValue!5888 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toValue!5888 (transformation!4177 (rule!6477 (h!31320 l!6601)))))) (= lambda!83524 lambda!83503))))

(declare-fun bs!451674 () Bool)

(assert (= bs!451674 (and d!662543 d!662279)))

(assert (=> bs!451674 (= (and (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toChars!5747 (transformation!4177 (rule!6477 t1!61)))) (= (toValue!5888 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toValue!5888 (transformation!4177 (rule!6477 t1!61))))) (= lambda!83524 lambda!83505))))

(declare-fun bs!451675 () Bool)

(assert (= bs!451675 (and d!662543 d!662323)))

(assert (=> bs!451675 (= (and (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toChars!5747 (transformation!4177 (h!31321 rules!4462)))) (= (toValue!5888 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toValue!5888 (transformation!4177 (h!31321 rules!4462))))) (= lambda!83524 lambda!83508))))

(declare-fun bs!451676 () Bool)

(assert (= bs!451676 (and d!662543 d!662327)))

(assert (=> bs!451676 (= (and (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toChars!5747 (transformation!4177 (rule!6477 t2!61)))) (= (toValue!5888 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toValue!5888 (transformation!4177 (rule!6477 t2!61))))) (= lambda!83524 lambda!83509))))

(assert (=> d!662543 true))

(assert (=> d!662543 (< (dynLambda!11472 order!14823 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601)))))) (dynLambda!11473 order!14825 lambda!83524))))

(assert (=> d!662543 true))

(assert (=> d!662543 (< (dynLambda!11470 order!14819 (toValue!5888 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601)))))) (dynLambda!11473 order!14825 lambda!83524))))

(assert (=> d!662543 (= (semiInverseModEq!1667 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toValue!5888 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601)))))) (Forall!1038 lambda!83524))))

(declare-fun bs!451677 () Bool)

(assert (= bs!451677 d!662543))

(declare-fun m!2657387 () Bool)

(assert (=> bs!451677 m!2657387))

(assert (=> d!662251 d!662543))

(declare-fun d!662545 () Bool)

(declare-fun res!951910 () Bool)

(declare-fun e!1414814 () Bool)

(assert (=> d!662545 (=> (not res!951910) (not e!1414814))))

(assert (=> d!662545 (= res!951910 (not (isEmpty!14830 (originalCharacters!4949 (h!31320 (t!198859 (t!198859 l!6601)))))))))

(assert (=> d!662545 (= (inv!35119 (h!31320 (t!198859 (t!198859 l!6601)))) e!1414814)))

(declare-fun b!2215346 () Bool)

(declare-fun res!951911 () Bool)

(assert (=> b!2215346 (=> (not res!951911) (not e!1414814))))

(assert (=> b!2215346 (= res!951911 (= (originalCharacters!4949 (h!31320 (t!198859 (t!198859 l!6601)))) (list!10054 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))) (value!131777 (h!31320 (t!198859 (t!198859 l!6601))))))))))

(declare-fun b!2215347 () Bool)

(assert (=> b!2215347 (= e!1414814 (= (size!20229 (h!31320 (t!198859 (t!198859 l!6601)))) (size!20232 (originalCharacters!4949 (h!31320 (t!198859 (t!198859 l!6601)))))))))

(assert (= (and d!662545 res!951910) b!2215346))

(assert (= (and b!2215346 res!951911) b!2215347))

(declare-fun b_lambda!71363 () Bool)

(assert (=> (not b_lambda!71363) (not b!2215346)))

(declare-fun tb!132519 () Bool)

(declare-fun t!199002 () Bool)

(assert (=> (and b!2214574 (= (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601))))))) t!199002) tb!132519))

(declare-fun b!2215348 () Bool)

(declare-fun e!1414815 () Bool)

(declare-fun tp!688885 () Bool)

(assert (=> b!2215348 (= e!1414815 (and (inv!35123 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))) (value!131777 (h!31320 (t!198859 (t!198859 l!6601))))))) tp!688885))))

(declare-fun result!160776 () Bool)

(assert (=> tb!132519 (= result!160776 (and (inv!35124 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))) (value!131777 (h!31320 (t!198859 (t!198859 l!6601)))))) e!1414815))))

(assert (= tb!132519 b!2215348))

(declare-fun m!2657389 () Bool)

(assert (=> b!2215348 m!2657389))

(declare-fun m!2657391 () Bool)

(assert (=> tb!132519 m!2657391))

(assert (=> b!2215346 t!199002))

(declare-fun b_and!173819 () Bool)

(assert (= b_and!173777 (and (=> t!199002 result!160776) b_and!173819)))

(declare-fun t!199004 () Bool)

(declare-fun tb!132521 () Bool)

(assert (=> (and b!2214834 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601))))))) t!199004) tb!132521))

(declare-fun result!160778 () Bool)

(assert (= result!160778 result!160776))

(assert (=> b!2215346 t!199004))

(declare-fun b_and!173821 () Bool)

(assert (= b_and!173785 (and (=> t!199004 result!160778) b_and!173821)))

(declare-fun t!199006 () Bool)

(declare-fun tb!132523 () Bool)

(assert (=> (and b!2214957 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601))))))) t!199006) tb!132523))

(declare-fun result!160780 () Bool)

(assert (= result!160780 result!160776))

(assert (=> b!2215346 t!199006))

(declare-fun b_and!173823 () Bool)

(assert (= b_and!173789 (and (=> t!199006 result!160780) b_and!173823)))

(declare-fun t!199008 () Bool)

(declare-fun tb!132525 () Bool)

(assert (=> (and b!2214801 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601))))))) t!199008) tb!132525))

(declare-fun result!160782 () Bool)

(assert (= result!160782 result!160776))

(assert (=> b!2215346 t!199008))

(declare-fun b_and!173825 () Bool)

(assert (= b_and!173783 (and (=> t!199008 result!160782) b_and!173825)))

(declare-fun t!199010 () Bool)

(declare-fun tb!132527 () Bool)

(assert (=> (and b!2214585 (= (toChars!5747 (transformation!4177 (h!31321 rules!4462))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601))))))) t!199010) tb!132527))

(declare-fun result!160784 () Bool)

(assert (= result!160784 result!160776))

(assert (=> b!2215346 t!199010))

(declare-fun b_and!173827 () Bool)

(assert (= b_and!173779 (and (=> t!199010 result!160784) b_and!173827)))

(declare-fun tb!132529 () Bool)

(declare-fun t!199012 () Bool)

(assert (=> (and b!2214576 (= (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601))))))) t!199012) tb!132529))

(declare-fun result!160786 () Bool)

(assert (= result!160786 result!160776))

(assert (=> b!2215346 t!199012))

(declare-fun b_and!173829 () Bool)

(assert (= b_and!173775 (and (=> t!199012 result!160786) b_and!173829)))

(declare-fun t!199014 () Bool)

(declare-fun tb!132531 () Bool)

(assert (=> (and b!2214583 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601))))))) t!199014) tb!132531))

(declare-fun result!160788 () Bool)

(assert (= result!160788 result!160776))

(assert (=> b!2215346 t!199014))

(declare-fun b_and!173831 () Bool)

(assert (= b_and!173781 (and (=> t!199014 result!160788) b_and!173831)))

(declare-fun t!199016 () Bool)

(declare-fun tb!132533 () Bool)

(assert (=> (and b!2215003 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 (t!198860 rules!4462))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601))))))) t!199016) tb!132533))

(declare-fun result!160790 () Bool)

(assert (= result!160790 result!160776))

(assert (=> b!2215346 t!199016))

(declare-fun b_and!173833 () Bool)

(assert (= b_and!173793 (and (=> t!199016 result!160790) b_and!173833)))

(declare-fun m!2657393 () Bool)

(assert (=> d!662545 m!2657393))

(declare-fun m!2657395 () Bool)

(assert (=> b!2215346 m!2657395))

(assert (=> b!2215346 m!2657395))

(declare-fun m!2657397 () Bool)

(assert (=> b!2215346 m!2657397))

(declare-fun m!2657399 () Bool)

(assert (=> b!2215347 m!2657399))

(assert (=> b!2214954 d!662545))

(declare-fun d!662547 () Bool)

(assert (=> d!662547 (= (Forall!1038 lambda!83508) (choose!13068 lambda!83508))))

(declare-fun bs!451678 () Bool)

(assert (= bs!451678 d!662547))

(declare-fun m!2657401 () Bool)

(assert (=> bs!451678 m!2657401))

(assert (=> d!662323 d!662547))

(declare-fun d!662549 () Bool)

(declare-fun lt!826812 () Bool)

(assert (=> d!662549 (= lt!826812 (select (content!3520 (tail!3217 l!6601)) lt!826788))))

(declare-fun e!1414817 () Bool)

(assert (=> d!662549 (= lt!826812 e!1414817)))

(declare-fun res!951913 () Bool)

(assert (=> d!662549 (=> (not res!951913) (not e!1414817))))

(assert (=> d!662549 (= res!951913 ((_ is Cons!25919) (tail!3217 l!6601)))))

(assert (=> d!662549 (= (contains!4300 (tail!3217 l!6601) lt!826788) lt!826812)))

(declare-fun b!2215349 () Bool)

(declare-fun e!1414816 () Bool)

(assert (=> b!2215349 (= e!1414817 e!1414816)))

(declare-fun res!951912 () Bool)

(assert (=> b!2215349 (=> res!951912 e!1414816)))

(assert (=> b!2215349 (= res!951912 (= (h!31320 (tail!3217 l!6601)) lt!826788))))

(declare-fun b!2215350 () Bool)

(assert (=> b!2215350 (= e!1414816 (contains!4300 (t!198859 (tail!3217 l!6601)) lt!826788))))

(assert (= (and d!662549 res!951913) b!2215349))

(assert (= (and b!2215349 (not res!951912)) b!2215350))

(assert (=> d!662549 m!2656695))

(assert (=> d!662549 m!2657233))

(declare-fun m!2657403 () Bool)

(assert (=> d!662549 m!2657403))

(declare-fun m!2657405 () Bool)

(assert (=> b!2215350 m!2657405))

(assert (=> d!662289 d!662549))

(declare-fun d!662551 () Bool)

(declare-fun lt!826813 () Bool)

(assert (=> d!662551 (= lt!826813 (select (content!3520 (t!198859 l!6601)) lt!826766))))

(declare-fun e!1414819 () Bool)

(assert (=> d!662551 (= lt!826813 e!1414819)))

(declare-fun res!951915 () Bool)

(assert (=> d!662551 (=> (not res!951915) (not e!1414819))))

(assert (=> d!662551 (= res!951915 ((_ is Cons!25919) (t!198859 l!6601)))))

(assert (=> d!662551 (= (contains!4300 (t!198859 l!6601) lt!826766) lt!826813)))

(declare-fun b!2215351 () Bool)

(declare-fun e!1414818 () Bool)

(assert (=> b!2215351 (= e!1414819 e!1414818)))

(declare-fun res!951914 () Bool)

(assert (=> b!2215351 (=> res!951914 e!1414818)))

(assert (=> b!2215351 (= res!951914 (= (h!31320 (t!198859 l!6601)) lt!826766))))

(declare-fun b!2215352 () Bool)

(assert (=> b!2215352 (= e!1414818 (contains!4300 (t!198859 (t!198859 l!6601)) lt!826766))))

(assert (= (and d!662551 res!951915) b!2215351))

(assert (= (and b!2215351 (not res!951914)) b!2215352))

(assert (=> d!662551 m!2657285))

(declare-fun m!2657407 () Bool)

(assert (=> d!662551 m!2657407))

(declare-fun m!2657409 () Bool)

(assert (=> b!2215352 m!2657409))

(assert (=> b!2214856 d!662551))

(declare-fun d!662553 () Bool)

(assert (=> d!662553 (= (Forall!1038 lambda!83505) (choose!13068 lambda!83505))))

(declare-fun bs!451679 () Bool)

(assert (= bs!451679 d!662553))

(declare-fun m!2657411 () Bool)

(assert (=> bs!451679 m!2657411))

(assert (=> d!662279 d!662553))

(declare-fun d!662555 () Bool)

(assert (=> d!662555 (= (inv!35127 (xs!11421 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))) (<= (size!20232 (innerList!8539 (xs!11421 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))) 2147483647))))

(declare-fun bs!451680 () Bool)

(assert (= bs!451680 d!662555))

(declare-fun m!2657413 () Bool)

(assert (=> bs!451680 m!2657413))

(assert (=> b!2214934 d!662555))

(declare-fun d!662557 () Bool)

(declare-fun c!353963 () Bool)

(assert (=> d!662557 (= c!353963 ((_ is Nil!25917) (text!30640 (value!131777 t1!61))))))

(declare-fun e!1414820 () Int)

(assert (=> d!662557 (= (charsToBigInt!0 (text!30640 (value!131777 t1!61)) 0) e!1414820)))

(declare-fun b!2215353 () Bool)

(assert (=> b!2215353 (= e!1414820 0)))

(declare-fun b!2215354 () Bool)

(assert (=> b!2215354 (= e!1414820 (charsToBigInt!0 (t!198857 (text!30640 (value!131777 t1!61))) (+ (* 0 10) (charToBigInt!0 (h!31318 (text!30640 (value!131777 t1!61)))))))))

(assert (= (and d!662557 c!353963) b!2215353))

(assert (= (and d!662557 (not c!353963)) b!2215354))

(declare-fun m!2657415 () Bool)

(assert (=> b!2215354 m!2657415))

(declare-fun m!2657417 () Bool)

(assert (=> b!2215354 m!2657417))

(assert (=> d!662271 d!662557))

(declare-fun d!662559 () Bool)

(assert (=> d!662559 (= (isEmpty!14830 (originalCharacters!4949 (h!31320 (t!198859 l!6601)))) ((_ is Nil!25918) (originalCharacters!4949 (h!31320 (t!198859 l!6601)))))))

(assert (=> d!662263 d!662559))

(declare-fun bs!451681 () Bool)

(declare-fun d!662561 () Bool)

(assert (= bs!451681 (and d!662561 d!662543)))

(declare-fun lambda!83525 () Int)

(assert (=> bs!451681 (= (and (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601)))))) (= (toValue!5888 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toValue!5888 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) (= lambda!83525 lambda!83524))))

(declare-fun bs!451682 () Bool)

(assert (= bs!451682 (and d!662561 d!662327)))

(assert (=> bs!451682 (= (and (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toChars!5747 (transformation!4177 (rule!6477 t2!61)))) (= (toValue!5888 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toValue!5888 (transformation!4177 (rule!6477 t2!61))))) (= lambda!83525 lambda!83509))))

(declare-fun bs!451683 () Bool)

(assert (= bs!451683 (and d!662561 d!662265)))

(assert (=> bs!451683 (= (and (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601))))) (= (toValue!5888 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toValue!5888 (transformation!4177 (rule!6477 (h!31320 l!6601)))))) (= lambda!83525 lambda!83503))))

(declare-fun bs!451684 () Bool)

(assert (= bs!451684 (and d!662561 d!662279)))

(assert (=> bs!451684 (= (and (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toChars!5747 (transformation!4177 (rule!6477 t1!61)))) (= (toValue!5888 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toValue!5888 (transformation!4177 (rule!6477 t1!61))))) (= lambda!83525 lambda!83505))))

(declare-fun bs!451685 () Bool)

(assert (= bs!451685 (and d!662561 d!662323)))

(assert (=> bs!451685 (= (and (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toChars!5747 (transformation!4177 (h!31321 rules!4462)))) (= (toValue!5888 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toValue!5888 (transformation!4177 (h!31321 rules!4462))))) (= lambda!83525 lambda!83508))))

(assert (=> d!662561 true))

(assert (=> d!662561 (< (dynLambda!11472 order!14823 (toChars!5747 (transformation!4177 (h!31321 (t!198860 rules!4462))))) (dynLambda!11473 order!14825 lambda!83525))))

(assert (=> d!662561 true))

(assert (=> d!662561 (< (dynLambda!11470 order!14819 (toValue!5888 (transformation!4177 (h!31321 (t!198860 rules!4462))))) (dynLambda!11473 order!14825 lambda!83525))))

(assert (=> d!662561 (= (semiInverseModEq!1667 (toChars!5747 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toValue!5888 (transformation!4177 (h!31321 (t!198860 rules!4462))))) (Forall!1038 lambda!83525))))

(declare-fun bs!451686 () Bool)

(assert (= bs!451686 d!662561))

(declare-fun m!2657419 () Bool)

(assert (=> bs!451686 m!2657419))

(assert (=> d!662301 d!662561))

(declare-fun b!2215355 () Bool)

(declare-fun e!1414821 () Bool)

(assert (=> b!2215355 (= e!1414821 tp_is_empty!9815)))

(assert (=> b!2214951 (= tp!688651 e!1414821)))

(declare-fun b!2215357 () Bool)

(declare-fun tp!688888 () Bool)

(assert (=> b!2215357 (= e!1414821 tp!688888)))

(declare-fun b!2215356 () Bool)

(declare-fun tp!688887 () Bool)

(declare-fun tp!688886 () Bool)

(assert (=> b!2215356 (= e!1414821 (and tp!688887 tp!688886))))

(declare-fun b!2215358 () Bool)

(declare-fun tp!688889 () Bool)

(declare-fun tp!688890 () Bool)

(assert (=> b!2215358 (= e!1414821 (and tp!688889 tp!688890))))

(assert (= (and b!2214951 ((_ is ElementMatch!6321) (reg!6650 (reg!6650 (regex!4177 (rule!6477 t1!61)))))) b!2215355))

(assert (= (and b!2214951 ((_ is Concat!10635) (reg!6650 (reg!6650 (regex!4177 (rule!6477 t1!61)))))) b!2215356))

(assert (= (and b!2214951 ((_ is Star!6321) (reg!6650 (reg!6650 (regex!4177 (rule!6477 t1!61)))))) b!2215357))

(assert (= (and b!2214951 ((_ is Union!6321) (reg!6650 (reg!6650 (regex!4177 (rule!6477 t1!61)))))) b!2215358))

(declare-fun b!2215359 () Bool)

(declare-fun e!1414822 () Bool)

(assert (=> b!2215359 (= e!1414822 tp_is_empty!9815)))

(assert (=> b!2214942 (= tp!688640 e!1414822)))

(declare-fun b!2215361 () Bool)

(declare-fun tp!688893 () Bool)

(assert (=> b!2215361 (= e!1414822 tp!688893)))

(declare-fun b!2215360 () Bool)

(declare-fun tp!688892 () Bool)

(declare-fun tp!688891 () Bool)

(assert (=> b!2215360 (= e!1414822 (and tp!688892 tp!688891))))

(declare-fun b!2215362 () Bool)

(declare-fun tp!688894 () Bool)

(declare-fun tp!688895 () Bool)

(assert (=> b!2215362 (= e!1414822 (and tp!688894 tp!688895))))

(assert (= (and b!2214942 ((_ is ElementMatch!6321) (reg!6650 (regOne!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215359))

(assert (= (and b!2214942 ((_ is Concat!10635) (reg!6650 (regOne!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215360))

(assert (= (and b!2214942 ((_ is Star!6321) (reg!6650 (regOne!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215361))

(assert (= (and b!2214942 ((_ is Union!6321) (reg!6650 (regOne!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215362))

(declare-fun b!2215363 () Bool)

(declare-fun e!1414823 () Bool)

(assert (=> b!2215363 (= e!1414823 tp_is_empty!9815)))

(assert (=> b!2214920 (= tp!688617 e!1414823)))

(declare-fun b!2215365 () Bool)

(declare-fun tp!688898 () Bool)

(assert (=> b!2215365 (= e!1414823 tp!688898)))

(declare-fun b!2215364 () Bool)

(declare-fun tp!688897 () Bool)

(declare-fun tp!688896 () Bool)

(assert (=> b!2215364 (= e!1414823 (and tp!688897 tp!688896))))

(declare-fun b!2215366 () Bool)

(declare-fun tp!688899 () Bool)

(declare-fun tp!688900 () Bool)

(assert (=> b!2215366 (= e!1414823 (and tp!688899 tp!688900))))

(assert (= (and b!2214920 ((_ is ElementMatch!6321) (regOne!13155 (regOne!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215363))

(assert (= (and b!2214920 ((_ is Concat!10635) (regOne!13155 (regOne!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215364))

(assert (= (and b!2214920 ((_ is Star!6321) (regOne!13155 (regOne!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215365))

(assert (= (and b!2214920 ((_ is Union!6321) (regOne!13155 (regOne!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215366))

(declare-fun b!2215367 () Bool)

(declare-fun e!1414824 () Bool)

(assert (=> b!2215367 (= e!1414824 tp_is_empty!9815)))

(assert (=> b!2214920 (= tp!688618 e!1414824)))

(declare-fun b!2215369 () Bool)

(declare-fun tp!688903 () Bool)

(assert (=> b!2215369 (= e!1414824 tp!688903)))

(declare-fun b!2215368 () Bool)

(declare-fun tp!688902 () Bool)

(declare-fun tp!688901 () Bool)

(assert (=> b!2215368 (= e!1414824 (and tp!688902 tp!688901))))

(declare-fun b!2215370 () Bool)

(declare-fun tp!688904 () Bool)

(declare-fun tp!688905 () Bool)

(assert (=> b!2215370 (= e!1414824 (and tp!688904 tp!688905))))

(assert (= (and b!2214920 ((_ is ElementMatch!6321) (regTwo!13155 (regOne!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215367))

(assert (= (and b!2214920 ((_ is Concat!10635) (regTwo!13155 (regOne!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215368))

(assert (= (and b!2214920 ((_ is Star!6321) (regTwo!13155 (regOne!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215369))

(assert (= (and b!2214920 ((_ is Union!6321) (regTwo!13155 (regOne!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215370))

(declare-fun b!2215371 () Bool)

(declare-fun e!1414825 () Bool)

(assert (=> b!2215371 (= e!1414825 tp_is_empty!9815)))

(assert (=> b!2215019 (= tp!688734 e!1414825)))

(declare-fun b!2215373 () Bool)

(declare-fun tp!688908 () Bool)

(assert (=> b!2215373 (= e!1414825 tp!688908)))

(declare-fun b!2215372 () Bool)

(declare-fun tp!688907 () Bool)

(declare-fun tp!688906 () Bool)

(assert (=> b!2215372 (= e!1414825 (and tp!688907 tp!688906))))

(declare-fun b!2215374 () Bool)

(declare-fun tp!688909 () Bool)

(declare-fun tp!688910 () Bool)

(assert (=> b!2215374 (= e!1414825 (and tp!688909 tp!688910))))

(assert (= (and b!2215019 ((_ is ElementMatch!6321) (regOne!13155 (reg!6650 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215371))

(assert (= (and b!2215019 ((_ is Concat!10635) (regOne!13155 (reg!6650 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215372))

(assert (= (and b!2215019 ((_ is Star!6321) (regOne!13155 (reg!6650 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215373))

(assert (= (and b!2215019 ((_ is Union!6321) (regOne!13155 (reg!6650 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215374))

(declare-fun b!2215375 () Bool)

(declare-fun e!1414826 () Bool)

(assert (=> b!2215375 (= e!1414826 tp_is_empty!9815)))

(assert (=> b!2215019 (= tp!688735 e!1414826)))

(declare-fun b!2215377 () Bool)

(declare-fun tp!688913 () Bool)

(assert (=> b!2215377 (= e!1414826 tp!688913)))

(declare-fun b!2215376 () Bool)

(declare-fun tp!688912 () Bool)

(declare-fun tp!688911 () Bool)

(assert (=> b!2215376 (= e!1414826 (and tp!688912 tp!688911))))

(declare-fun b!2215378 () Bool)

(declare-fun tp!688914 () Bool)

(declare-fun tp!688915 () Bool)

(assert (=> b!2215378 (= e!1414826 (and tp!688914 tp!688915))))

(assert (= (and b!2215019 ((_ is ElementMatch!6321) (regTwo!13155 (reg!6650 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215375))

(assert (= (and b!2215019 ((_ is Concat!10635) (regTwo!13155 (reg!6650 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215376))

(assert (= (and b!2215019 ((_ is Star!6321) (regTwo!13155 (reg!6650 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215377))

(assert (= (and b!2215019 ((_ is Union!6321) (regTwo!13155 (reg!6650 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215378))

(declare-fun b!2215379 () Bool)

(declare-fun e!1414827 () Bool)

(assert (=> b!2215379 (= e!1414827 tp_is_empty!9815)))

(assert (=> b!2215010 (= tp!688723 e!1414827)))

(declare-fun b!2215381 () Bool)

(declare-fun tp!688918 () Bool)

(assert (=> b!2215381 (= e!1414827 tp!688918)))

(declare-fun b!2215380 () Bool)

(declare-fun tp!688917 () Bool)

(declare-fun tp!688916 () Bool)

(assert (=> b!2215380 (= e!1414827 (and tp!688917 tp!688916))))

(declare-fun b!2215382 () Bool)

(declare-fun tp!688919 () Bool)

(declare-fun tp!688920 () Bool)

(assert (=> b!2215382 (= e!1414827 (and tp!688919 tp!688920))))

(assert (= (and b!2215010 ((_ is ElementMatch!6321) (reg!6650 (regOne!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215379))

(assert (= (and b!2215010 ((_ is Concat!10635) (reg!6650 (regOne!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215380))

(assert (= (and b!2215010 ((_ is Star!6321) (reg!6650 (regOne!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215381))

(assert (= (and b!2215010 ((_ is Union!6321) (reg!6650 (regOne!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215382))

(declare-fun b!2215383 () Bool)

(declare-fun e!1414828 () Bool)

(declare-fun tp!688921 () Bool)

(assert (=> b!2215383 (= e!1414828 (and tp_is_empty!9815 tp!688921))))

(assert (=> b!2214955 (= tp!688656 e!1414828)))

(assert (= (and b!2214955 ((_ is Cons!25918) (originalCharacters!4949 (h!31320 (t!198859 (t!198859 l!6601)))))) b!2215383))

(declare-fun b!2215384 () Bool)

(declare-fun e!1414829 () Bool)

(assert (=> b!2215384 (= e!1414829 tp_is_empty!9815)))

(assert (=> b!2215017 (= tp!688732 e!1414829)))

(declare-fun b!2215386 () Bool)

(declare-fun tp!688924 () Bool)

(assert (=> b!2215386 (= e!1414829 tp!688924)))

(declare-fun b!2215385 () Bool)

(declare-fun tp!688923 () Bool)

(declare-fun tp!688922 () Bool)

(assert (=> b!2215385 (= e!1414829 (and tp!688923 tp!688922))))

(declare-fun b!2215387 () Bool)

(declare-fun tp!688925 () Bool)

(declare-fun tp!688926 () Bool)

(assert (=> b!2215387 (= e!1414829 (and tp!688925 tp!688926))))

(assert (= (and b!2215017 ((_ is ElementMatch!6321) (regOne!13154 (reg!6650 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215384))

(assert (= (and b!2215017 ((_ is Concat!10635) (regOne!13154 (reg!6650 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215385))

(assert (= (and b!2215017 ((_ is Star!6321) (regOne!13154 (reg!6650 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215386))

(assert (= (and b!2215017 ((_ is Union!6321) (regOne!13154 (reg!6650 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215387))

(declare-fun b!2215388 () Bool)

(declare-fun e!1414830 () Bool)

(assert (=> b!2215388 (= e!1414830 tp_is_empty!9815)))

(assert (=> b!2215017 (= tp!688731 e!1414830)))

(declare-fun b!2215390 () Bool)

(declare-fun tp!688929 () Bool)

(assert (=> b!2215390 (= e!1414830 tp!688929)))

(declare-fun b!2215389 () Bool)

(declare-fun tp!688928 () Bool)

(declare-fun tp!688927 () Bool)

(assert (=> b!2215389 (= e!1414830 (and tp!688928 tp!688927))))

(declare-fun b!2215391 () Bool)

(declare-fun tp!688930 () Bool)

(declare-fun tp!688931 () Bool)

(assert (=> b!2215391 (= e!1414830 (and tp!688930 tp!688931))))

(assert (= (and b!2215017 ((_ is ElementMatch!6321) (regTwo!13154 (reg!6650 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215388))

(assert (= (and b!2215017 ((_ is Concat!10635) (regTwo!13154 (reg!6650 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215389))

(assert (= (and b!2215017 ((_ is Star!6321) (regTwo!13154 (reg!6650 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215390))

(assert (= (and b!2215017 ((_ is Union!6321) (regTwo!13154 (reg!6650 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215391))

(declare-fun b!2215392 () Bool)

(declare-fun e!1414831 () Bool)

(assert (=> b!2215392 (= e!1414831 tp_is_empty!9815)))

(assert (=> b!2214973 (= tp!688678 e!1414831)))

(declare-fun b!2215394 () Bool)

(declare-fun tp!688934 () Bool)

(assert (=> b!2215394 (= e!1414831 tp!688934)))

(declare-fun b!2215393 () Bool)

(declare-fun tp!688933 () Bool)

(declare-fun tp!688932 () Bool)

(assert (=> b!2215393 (= e!1414831 (and tp!688933 tp!688932))))

(declare-fun b!2215395 () Bool)

(declare-fun tp!688935 () Bool)

(declare-fun tp!688936 () Bool)

(assert (=> b!2215395 (= e!1414831 (and tp!688935 tp!688936))))

(assert (= (and b!2214973 ((_ is ElementMatch!6321) (regOne!13155 (regTwo!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215392))

(assert (= (and b!2214973 ((_ is Concat!10635) (regOne!13155 (regTwo!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215393))

(assert (= (and b!2214973 ((_ is Star!6321) (regOne!13155 (regTwo!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215394))

(assert (= (and b!2214973 ((_ is Union!6321) (regOne!13155 (regTwo!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215395))

(declare-fun b!2215396 () Bool)

(declare-fun e!1414832 () Bool)

(assert (=> b!2215396 (= e!1414832 tp_is_empty!9815)))

(assert (=> b!2214973 (= tp!688679 e!1414832)))

(declare-fun b!2215398 () Bool)

(declare-fun tp!688939 () Bool)

(assert (=> b!2215398 (= e!1414832 tp!688939)))

(declare-fun b!2215397 () Bool)

(declare-fun tp!688938 () Bool)

(declare-fun tp!688937 () Bool)

(assert (=> b!2215397 (= e!1414832 (and tp!688938 tp!688937))))

(declare-fun b!2215399 () Bool)

(declare-fun tp!688940 () Bool)

(declare-fun tp!688941 () Bool)

(assert (=> b!2215399 (= e!1414832 (and tp!688940 tp!688941))))

(assert (= (and b!2214973 ((_ is ElementMatch!6321) (regTwo!13155 (regTwo!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215396))

(assert (= (and b!2214973 ((_ is Concat!10635) (regTwo!13155 (regTwo!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215397))

(assert (= (and b!2214973 ((_ is Star!6321) (regTwo!13155 (regTwo!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215398))

(assert (= (and b!2214973 ((_ is Union!6321) (regTwo!13155 (regTwo!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215399))

(declare-fun b!2215400 () Bool)

(declare-fun e!1414833 () Bool)

(assert (=> b!2215400 (= e!1414833 tp_is_empty!9815)))

(assert (=> b!2214964 (= tp!688667 e!1414833)))

(declare-fun b!2215402 () Bool)

(declare-fun tp!688944 () Bool)

(assert (=> b!2215402 (= e!1414833 tp!688944)))

(declare-fun b!2215401 () Bool)

(declare-fun tp!688943 () Bool)

(declare-fun tp!688942 () Bool)

(assert (=> b!2215401 (= e!1414833 (and tp!688943 tp!688942))))

(declare-fun b!2215403 () Bool)

(declare-fun tp!688945 () Bool)

(declare-fun tp!688946 () Bool)

(assert (=> b!2215403 (= e!1414833 (and tp!688945 tp!688946))))

(assert (= (and b!2214964 ((_ is ElementMatch!6321) (reg!6650 (regTwo!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215400))

(assert (= (and b!2214964 ((_ is Concat!10635) (reg!6650 (regTwo!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215401))

(assert (= (and b!2214964 ((_ is Star!6321) (reg!6650 (regTwo!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215402))

(assert (= (and b!2214964 ((_ is Union!6321) (reg!6650 (regTwo!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215403))

(declare-fun b!2215404 () Bool)

(declare-fun e!1414834 () Bool)

(assert (=> b!2215404 (= e!1414834 tp_is_empty!9815)))

(assert (=> b!2214922 (= tp!688620 e!1414834)))

(declare-fun b!2215406 () Bool)

(declare-fun tp!688949 () Bool)

(assert (=> b!2215406 (= e!1414834 tp!688949)))

(declare-fun b!2215405 () Bool)

(declare-fun tp!688948 () Bool)

(declare-fun tp!688947 () Bool)

(assert (=> b!2215405 (= e!1414834 (and tp!688948 tp!688947))))

(declare-fun b!2215407 () Bool)

(declare-fun tp!688950 () Bool)

(declare-fun tp!688951 () Bool)

(assert (=> b!2215407 (= e!1414834 (and tp!688950 tp!688951))))

(assert (= (and b!2214922 ((_ is ElementMatch!6321) (regOne!13154 (regTwo!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215404))

(assert (= (and b!2214922 ((_ is Concat!10635) (regOne!13154 (regTwo!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215405))

(assert (= (and b!2214922 ((_ is Star!6321) (regOne!13154 (regTwo!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215406))

(assert (= (and b!2214922 ((_ is Union!6321) (regOne!13154 (regTwo!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215407))

(declare-fun b!2215408 () Bool)

(declare-fun e!1414835 () Bool)

(assert (=> b!2215408 (= e!1414835 tp_is_empty!9815)))

(assert (=> b!2214922 (= tp!688619 e!1414835)))

(declare-fun b!2215410 () Bool)

(declare-fun tp!688954 () Bool)

(assert (=> b!2215410 (= e!1414835 tp!688954)))

(declare-fun b!2215409 () Bool)

(declare-fun tp!688953 () Bool)

(declare-fun tp!688952 () Bool)

(assert (=> b!2215409 (= e!1414835 (and tp!688953 tp!688952))))

(declare-fun b!2215411 () Bool)

(declare-fun tp!688955 () Bool)

(declare-fun tp!688956 () Bool)

(assert (=> b!2215411 (= e!1414835 (and tp!688955 tp!688956))))

(assert (= (and b!2214922 ((_ is ElementMatch!6321) (regTwo!13154 (regTwo!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215408))

(assert (= (and b!2214922 ((_ is Concat!10635) (regTwo!13154 (regTwo!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215409))

(assert (= (and b!2214922 ((_ is Star!6321) (regTwo!13154 (regTwo!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215410))

(assert (= (and b!2214922 ((_ is Union!6321) (regTwo!13154 (regTwo!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215411))

(declare-fun b!2215412 () Bool)

(declare-fun e!1414836 () Bool)

(assert (=> b!2215412 (= e!1414836 tp_is_empty!9815)))

(assert (=> b!2215021 (= tp!688737 e!1414836)))

(declare-fun b!2215414 () Bool)

(declare-fun tp!688959 () Bool)

(assert (=> b!2215414 (= e!1414836 tp!688959)))

(declare-fun b!2215413 () Bool)

(declare-fun tp!688958 () Bool)

(declare-fun tp!688957 () Bool)

(assert (=> b!2215413 (= e!1414836 (and tp!688958 tp!688957))))

(declare-fun b!2215415 () Bool)

(declare-fun tp!688960 () Bool)

(declare-fun tp!688961 () Bool)

(assert (=> b!2215415 (= e!1414836 (and tp!688960 tp!688961))))

(assert (= (and b!2215021 ((_ is ElementMatch!6321) (regOne!13154 (regOne!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215412))

(assert (= (and b!2215021 ((_ is Concat!10635) (regOne!13154 (regOne!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215413))

(assert (= (and b!2215021 ((_ is Star!6321) (regOne!13154 (regOne!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215414))

(assert (= (and b!2215021 ((_ is Union!6321) (regOne!13154 (regOne!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215415))

(declare-fun b!2215416 () Bool)

(declare-fun e!1414837 () Bool)

(assert (=> b!2215416 (= e!1414837 tp_is_empty!9815)))

(assert (=> b!2215021 (= tp!688736 e!1414837)))

(declare-fun b!2215418 () Bool)

(declare-fun tp!688964 () Bool)

(assert (=> b!2215418 (= e!1414837 tp!688964)))

(declare-fun b!2215417 () Bool)

(declare-fun tp!688963 () Bool)

(declare-fun tp!688962 () Bool)

(assert (=> b!2215417 (= e!1414837 (and tp!688963 tp!688962))))

(declare-fun b!2215419 () Bool)

(declare-fun tp!688965 () Bool)

(declare-fun tp!688966 () Bool)

(assert (=> b!2215419 (= e!1414837 (and tp!688965 tp!688966))))

(assert (= (and b!2215021 ((_ is ElementMatch!6321) (regTwo!13154 (regOne!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215416))

(assert (= (and b!2215021 ((_ is Concat!10635) (regTwo!13154 (regOne!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215417))

(assert (= (and b!2215021 ((_ is Star!6321) (regTwo!13154 (regOne!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215418))

(assert (= (and b!2215021 ((_ is Union!6321) (regTwo!13154 (regOne!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215419))

(declare-fun b!2215420 () Bool)

(declare-fun e!1414838 () Bool)

(assert (=> b!2215420 (= e!1414838 tp_is_empty!9815)))

(assert (=> b!2214993 (= tp!688703 e!1414838)))

(declare-fun b!2215422 () Bool)

(declare-fun tp!688969 () Bool)

(assert (=> b!2215422 (= e!1414838 tp!688969)))

(declare-fun b!2215421 () Bool)

(declare-fun tp!688968 () Bool)

(declare-fun tp!688967 () Bool)

(assert (=> b!2215421 (= e!1414838 (and tp!688968 tp!688967))))

(declare-fun b!2215423 () Bool)

(declare-fun tp!688970 () Bool)

(declare-fun tp!688971 () Bool)

(assert (=> b!2215423 (= e!1414838 (and tp!688970 tp!688971))))

(assert (= (and b!2214993 ((_ is ElementMatch!6321) (regOne!13155 (regTwo!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215420))

(assert (= (and b!2214993 ((_ is Concat!10635) (regOne!13155 (regTwo!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215421))

(assert (= (and b!2214993 ((_ is Star!6321) (regOne!13155 (regTwo!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215422))

(assert (= (and b!2214993 ((_ is Union!6321) (regOne!13155 (regTwo!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215423))

(declare-fun b!2215424 () Bool)

(declare-fun e!1414839 () Bool)

(assert (=> b!2215424 (= e!1414839 tp_is_empty!9815)))

(assert (=> b!2214993 (= tp!688704 e!1414839)))

(declare-fun b!2215426 () Bool)

(declare-fun tp!688974 () Bool)

(assert (=> b!2215426 (= e!1414839 tp!688974)))

(declare-fun b!2215425 () Bool)

(declare-fun tp!688973 () Bool)

(declare-fun tp!688972 () Bool)

(assert (=> b!2215425 (= e!1414839 (and tp!688973 tp!688972))))

(declare-fun b!2215427 () Bool)

(declare-fun tp!688975 () Bool)

(declare-fun tp!688976 () Bool)

(assert (=> b!2215427 (= e!1414839 (and tp!688975 tp!688976))))

(assert (= (and b!2214993 ((_ is ElementMatch!6321) (regTwo!13155 (regTwo!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215424))

(assert (= (and b!2214993 ((_ is Concat!10635) (regTwo!13155 (regTwo!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215425))

(assert (= (and b!2214993 ((_ is Star!6321) (regTwo!13155 (regTwo!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215426))

(assert (= (and b!2214993 ((_ is Union!6321) (regTwo!13155 (regTwo!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215427))

(declare-fun b!2215428 () Bool)

(declare-fun e!1414840 () Bool)

(assert (=> b!2215428 (= e!1414840 tp_is_empty!9815)))

(assert (=> b!2214984 (= tp!688692 e!1414840)))

(declare-fun b!2215430 () Bool)

(declare-fun tp!688979 () Bool)

(assert (=> b!2215430 (= e!1414840 tp!688979)))

(declare-fun b!2215429 () Bool)

(declare-fun tp!688978 () Bool)

(declare-fun tp!688977 () Bool)

(assert (=> b!2215429 (= e!1414840 (and tp!688978 tp!688977))))

(declare-fun b!2215431 () Bool)

(declare-fun tp!688980 () Bool)

(declare-fun tp!688981 () Bool)

(assert (=> b!2215431 (= e!1414840 (and tp!688980 tp!688981))))

(assert (= (and b!2214984 ((_ is ElementMatch!6321) (reg!6650 (reg!6650 (regex!4177 (h!31321 rules!4462)))))) b!2215428))

(assert (= (and b!2214984 ((_ is Concat!10635) (reg!6650 (reg!6650 (regex!4177 (h!31321 rules!4462)))))) b!2215429))

(assert (= (and b!2214984 ((_ is Star!6321) (reg!6650 (reg!6650 (regex!4177 (h!31321 rules!4462)))))) b!2215430))

(assert (= (and b!2214984 ((_ is Union!6321) (reg!6650 (reg!6650 (regex!4177 (h!31321 rules!4462)))))) b!2215431))

(declare-fun b!2215432 () Bool)

(declare-fun e!1414841 () Bool)

(declare-fun tp!688982 () Bool)

(assert (=> b!2215432 (= e!1414841 (and tp_is_empty!9815 tp!688982))))

(assert (=> b!2214953 (= tp!688654 e!1414841)))

(assert (= (and b!2214953 ((_ is Cons!25918) (t!198858 (t!198858 (originalCharacters!4949 t1!61))))) b!2215432))

(declare-fun b!2215433 () Bool)

(declare-fun e!1414842 () Bool)

(assert (=> b!2215433 (= e!1414842 tp_is_empty!9815)))

(assert (=> b!2214975 (= tp!688681 e!1414842)))

(declare-fun b!2215435 () Bool)

(declare-fun tp!688985 () Bool)

(assert (=> b!2215435 (= e!1414842 tp!688985)))

(declare-fun b!2215434 () Bool)

(declare-fun tp!688984 () Bool)

(declare-fun tp!688983 () Bool)

(assert (=> b!2215434 (= e!1414842 (and tp!688984 tp!688983))))

(declare-fun b!2215436 () Bool)

(declare-fun tp!688986 () Bool)

(declare-fun tp!688987 () Bool)

(assert (=> b!2215436 (= e!1414842 (and tp!688986 tp!688987))))

(assert (= (and b!2214975 ((_ is ElementMatch!6321) (regOne!13154 (regOne!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215433))

(assert (= (and b!2214975 ((_ is Concat!10635) (regOne!13154 (regOne!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215434))

(assert (= (and b!2214975 ((_ is Star!6321) (regOne!13154 (regOne!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215435))

(assert (= (and b!2214975 ((_ is Union!6321) (regOne!13154 (regOne!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215436))

(declare-fun b!2215437 () Bool)

(declare-fun e!1414843 () Bool)

(assert (=> b!2215437 (= e!1414843 tp_is_empty!9815)))

(assert (=> b!2214975 (= tp!688680 e!1414843)))

(declare-fun b!2215439 () Bool)

(declare-fun tp!688990 () Bool)

(assert (=> b!2215439 (= e!1414843 tp!688990)))

(declare-fun b!2215438 () Bool)

(declare-fun tp!688989 () Bool)

(declare-fun tp!688988 () Bool)

(assert (=> b!2215438 (= e!1414843 (and tp!688989 tp!688988))))

(declare-fun b!2215440 () Bool)

(declare-fun tp!688991 () Bool)

(declare-fun tp!688992 () Bool)

(assert (=> b!2215440 (= e!1414843 (and tp!688991 tp!688992))))

(assert (= (and b!2214975 ((_ is ElementMatch!6321) (regTwo!13154 (regOne!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215437))

(assert (= (and b!2214975 ((_ is Concat!10635) (regTwo!13154 (regOne!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215438))

(assert (= (and b!2214975 ((_ is Star!6321) (regTwo!13154 (regOne!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215439))

(assert (= (and b!2214975 ((_ is Union!6321) (regTwo!13154 (regOne!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215440))

(declare-fun b!2215441 () Bool)

(declare-fun e!1414844 () Bool)

(assert (=> b!2215441 (= e!1414844 tp_is_empty!9815)))

(assert (=> b!2214991 (= tp!688701 e!1414844)))

(declare-fun b!2215443 () Bool)

(declare-fun tp!688995 () Bool)

(assert (=> b!2215443 (= e!1414844 tp!688995)))

(declare-fun b!2215442 () Bool)

(declare-fun tp!688994 () Bool)

(declare-fun tp!688993 () Bool)

(assert (=> b!2215442 (= e!1414844 (and tp!688994 tp!688993))))

(declare-fun b!2215444 () Bool)

(declare-fun tp!688996 () Bool)

(declare-fun tp!688997 () Bool)

(assert (=> b!2215444 (= e!1414844 (and tp!688996 tp!688997))))

(assert (= (and b!2214991 ((_ is ElementMatch!6321) (regOne!13154 (regTwo!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215441))

(assert (= (and b!2214991 ((_ is Concat!10635) (regOne!13154 (regTwo!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215442))

(assert (= (and b!2214991 ((_ is Star!6321) (regOne!13154 (regTwo!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215443))

(assert (= (and b!2214991 ((_ is Union!6321) (regOne!13154 (regTwo!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215444))

(declare-fun b!2215445 () Bool)

(declare-fun e!1414845 () Bool)

(assert (=> b!2215445 (= e!1414845 tp_is_empty!9815)))

(assert (=> b!2214991 (= tp!688700 e!1414845)))

(declare-fun b!2215447 () Bool)

(declare-fun tp!689000 () Bool)

(assert (=> b!2215447 (= e!1414845 tp!689000)))

(declare-fun b!2215446 () Bool)

(declare-fun tp!688999 () Bool)

(declare-fun tp!688998 () Bool)

(assert (=> b!2215446 (= e!1414845 (and tp!688999 tp!688998))))

(declare-fun b!2215448 () Bool)

(declare-fun tp!689001 () Bool)

(declare-fun tp!689002 () Bool)

(assert (=> b!2215448 (= e!1414845 (and tp!689001 tp!689002))))

(assert (= (and b!2214991 ((_ is ElementMatch!6321) (regTwo!13154 (regTwo!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215445))

(assert (= (and b!2214991 ((_ is Concat!10635) (regTwo!13154 (regTwo!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215446))

(assert (= (and b!2214991 ((_ is Star!6321) (regTwo!13154 (regTwo!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215447))

(assert (= (and b!2214991 ((_ is Union!6321) (regTwo!13154 (regTwo!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215448))

(declare-fun b!2215449 () Bool)

(declare-fun e!1414846 () Bool)

(assert (=> b!2215449 (= e!1414846 tp_is_empty!9815)))

(assert (=> b!2214947 (= tp!688646 e!1414846)))

(declare-fun b!2215451 () Bool)

(declare-fun tp!689005 () Bool)

(assert (=> b!2215451 (= e!1414846 tp!689005)))

(declare-fun b!2215450 () Bool)

(declare-fun tp!689004 () Bool)

(declare-fun tp!689003 () Bool)

(assert (=> b!2215450 (= e!1414846 (and tp!689004 tp!689003))))

(declare-fun b!2215452 () Bool)

(declare-fun tp!689006 () Bool)

(declare-fun tp!689007 () Bool)

(assert (=> b!2215452 (= e!1414846 (and tp!689006 tp!689007))))

(assert (= (and b!2214947 ((_ is ElementMatch!6321) (regOne!13155 (regTwo!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215449))

(assert (= (and b!2214947 ((_ is Concat!10635) (regOne!13155 (regTwo!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215450))

(assert (= (and b!2214947 ((_ is Star!6321) (regOne!13155 (regTwo!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215451))

(assert (= (and b!2214947 ((_ is Union!6321) (regOne!13155 (regTwo!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215452))

(declare-fun b!2215453 () Bool)

(declare-fun e!1414847 () Bool)

(assert (=> b!2215453 (= e!1414847 tp_is_empty!9815)))

(assert (=> b!2214947 (= tp!688647 e!1414847)))

(declare-fun b!2215455 () Bool)

(declare-fun tp!689010 () Bool)

(assert (=> b!2215455 (= e!1414847 tp!689010)))

(declare-fun b!2215454 () Bool)

(declare-fun tp!689009 () Bool)

(declare-fun tp!689008 () Bool)

(assert (=> b!2215454 (= e!1414847 (and tp!689009 tp!689008))))

(declare-fun b!2215456 () Bool)

(declare-fun tp!689011 () Bool)

(declare-fun tp!689012 () Bool)

(assert (=> b!2215456 (= e!1414847 (and tp!689011 tp!689012))))

(assert (= (and b!2214947 ((_ is ElementMatch!6321) (regTwo!13155 (regTwo!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215453))

(assert (= (and b!2214947 ((_ is Concat!10635) (regTwo!13155 (regTwo!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215454))

(assert (= (and b!2214947 ((_ is Star!6321) (regTwo!13155 (regTwo!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215455))

(assert (= (and b!2214947 ((_ is Union!6321) (regTwo!13155 (regTwo!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215456))

(declare-fun b!2215457 () Bool)

(declare-fun e!1414848 () Bool)

(assert (=> b!2215457 (= e!1414848 tp_is_empty!9815)))

(assert (=> b!2215015 (= tp!688729 e!1414848)))

(declare-fun b!2215459 () Bool)

(declare-fun tp!689015 () Bool)

(assert (=> b!2215459 (= e!1414848 tp!689015)))

(declare-fun b!2215458 () Bool)

(declare-fun tp!689014 () Bool)

(declare-fun tp!689013 () Bool)

(assert (=> b!2215458 (= e!1414848 (and tp!689014 tp!689013))))

(declare-fun b!2215460 () Bool)

(declare-fun tp!689016 () Bool)

(declare-fun tp!689017 () Bool)

(assert (=> b!2215460 (= e!1414848 (and tp!689016 tp!689017))))

(assert (= (and b!2215015 ((_ is ElementMatch!6321) (regOne!13155 (regTwo!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215457))

(assert (= (and b!2215015 ((_ is Concat!10635) (regOne!13155 (regTwo!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215458))

(assert (= (and b!2215015 ((_ is Star!6321) (regOne!13155 (regTwo!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215459))

(assert (= (and b!2215015 ((_ is Union!6321) (regOne!13155 (regTwo!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215460))

(declare-fun b!2215461 () Bool)

(declare-fun e!1414849 () Bool)

(assert (=> b!2215461 (= e!1414849 tp_is_empty!9815)))

(assert (=> b!2215015 (= tp!688730 e!1414849)))

(declare-fun b!2215463 () Bool)

(declare-fun tp!689020 () Bool)

(assert (=> b!2215463 (= e!1414849 tp!689020)))

(declare-fun b!2215462 () Bool)

(declare-fun tp!689019 () Bool)

(declare-fun tp!689018 () Bool)

(assert (=> b!2215462 (= e!1414849 (and tp!689019 tp!689018))))

(declare-fun b!2215464 () Bool)

(declare-fun tp!689021 () Bool)

(declare-fun tp!689022 () Bool)

(assert (=> b!2215464 (= e!1414849 (and tp!689021 tp!689022))))

(assert (= (and b!2215015 ((_ is ElementMatch!6321) (regTwo!13155 (regTwo!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215461))

(assert (= (and b!2215015 ((_ is Concat!10635) (regTwo!13155 (regTwo!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215462))

(assert (= (and b!2215015 ((_ is Star!6321) (regTwo!13155 (regTwo!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215463))

(assert (= (and b!2215015 ((_ is Union!6321) (regTwo!13155 (regTwo!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215464))

(declare-fun b!2215465 () Bool)

(declare-fun e!1414850 () Bool)

(assert (=> b!2215465 (= e!1414850 tp_is_empty!9815)))

(assert (=> b!2214938 (= tp!688635 e!1414850)))

(declare-fun b!2215467 () Bool)

(declare-fun tp!689025 () Bool)

(assert (=> b!2215467 (= e!1414850 tp!689025)))

(declare-fun b!2215466 () Bool)

(declare-fun tp!689024 () Bool)

(declare-fun tp!689023 () Bool)

(assert (=> b!2215466 (= e!1414850 (and tp!689024 tp!689023))))

(declare-fun b!2215468 () Bool)

(declare-fun tp!689026 () Bool)

(declare-fun tp!689027 () Bool)

(assert (=> b!2215468 (= e!1414850 (and tp!689026 tp!689027))))

(assert (= (and b!2214938 ((_ is ElementMatch!6321) (reg!6650 (regex!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) b!2215465))

(assert (= (and b!2214938 ((_ is Concat!10635) (reg!6650 (regex!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) b!2215466))

(assert (= (and b!2214938 ((_ is Star!6321) (reg!6650 (regex!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) b!2215467))

(assert (= (and b!2214938 ((_ is Union!6321) (reg!6650 (regex!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) b!2215468))

(declare-fun e!1414852 () Bool)

(declare-fun tp!689030 () Bool)

(declare-fun tp!689029 () Bool)

(declare-fun b!2215469 () Bool)

(assert (=> b!2215469 (= e!1414852 (and (inv!35123 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (value!131777 (h!31320 (t!198859 l!6601))))))) tp!689030 (inv!35123 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (value!131777 (h!31320 (t!198859 l!6601))))))) tp!689029))))

(declare-fun b!2215471 () Bool)

(declare-fun e!1414851 () Bool)

(declare-fun tp!689028 () Bool)

(assert (=> b!2215471 (= e!1414851 tp!689028)))

(declare-fun b!2215470 () Bool)

(assert (=> b!2215470 (= e!1414852 (and (inv!35127 (xs!11421 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (value!131777 (h!31320 (t!198859 l!6601))))))) e!1414851))))

(assert (=> b!2214888 (= tp!688607 (and (inv!35123 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (value!131777 (h!31320 (t!198859 l!6601)))))) e!1414852))))

(assert (= (and b!2214888 ((_ is Node!8479) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (value!131777 (h!31320 (t!198859 l!6601))))))) b!2215469))

(assert (= b!2215470 b!2215471))

(assert (= (and b!2214888 ((_ is Leaf!12420) (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (value!131777 (h!31320 (t!198859 l!6601))))))) b!2215470))

(declare-fun m!2657421 () Bool)

(assert (=> b!2215469 m!2657421))

(declare-fun m!2657423 () Bool)

(assert (=> b!2215469 m!2657423))

(declare-fun m!2657425 () Bool)

(assert (=> b!2215470 m!2657425))

(assert (=> b!2214888 m!2656903))

(declare-fun b!2215472 () Bool)

(declare-fun e!1414853 () Bool)

(assert (=> b!2215472 (= e!1414853 tp_is_empty!9815)))

(assert (=> b!2214969 (= tp!688673 e!1414853)))

(declare-fun b!2215474 () Bool)

(declare-fun tp!689033 () Bool)

(assert (=> b!2215474 (= e!1414853 tp!689033)))

(declare-fun b!2215473 () Bool)

(declare-fun tp!689032 () Bool)

(declare-fun tp!689031 () Bool)

(assert (=> b!2215473 (= e!1414853 (and tp!689032 tp!689031))))

(declare-fun b!2215475 () Bool)

(declare-fun tp!689034 () Bool)

(declare-fun tp!689035 () Bool)

(assert (=> b!2215475 (= e!1414853 (and tp!689034 tp!689035))))

(assert (= (and b!2214969 ((_ is ElementMatch!6321) (regOne!13155 (regOne!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215472))

(assert (= (and b!2214969 ((_ is Concat!10635) (regOne!13155 (regOne!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215473))

(assert (= (and b!2214969 ((_ is Star!6321) (regOne!13155 (regOne!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215474))

(assert (= (and b!2214969 ((_ is Union!6321) (regOne!13155 (regOne!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215475))

(declare-fun b!2215476 () Bool)

(declare-fun e!1414854 () Bool)

(assert (=> b!2215476 (= e!1414854 tp_is_empty!9815)))

(assert (=> b!2214969 (= tp!688674 e!1414854)))

(declare-fun b!2215478 () Bool)

(declare-fun tp!689038 () Bool)

(assert (=> b!2215478 (= e!1414854 tp!689038)))

(declare-fun b!2215477 () Bool)

(declare-fun tp!689037 () Bool)

(declare-fun tp!689036 () Bool)

(assert (=> b!2215477 (= e!1414854 (and tp!689037 tp!689036))))

(declare-fun b!2215479 () Bool)

(declare-fun tp!689039 () Bool)

(declare-fun tp!689040 () Bool)

(assert (=> b!2215479 (= e!1414854 (and tp!689039 tp!689040))))

(assert (= (and b!2214969 ((_ is ElementMatch!6321) (regTwo!13155 (regOne!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215476))

(assert (= (and b!2214969 ((_ is Concat!10635) (regTwo!13155 (regOne!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215477))

(assert (= (and b!2214969 ((_ is Star!6321) (regTwo!13155 (regOne!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215478))

(assert (= (and b!2214969 ((_ is Union!6321) (regTwo!13155 (regOne!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215479))

(declare-fun b!2215480 () Bool)

(declare-fun e!1414855 () Bool)

(assert (=> b!2215480 (= e!1414855 tp_is_empty!9815)))

(assert (=> b!2214960 (= tp!688662 e!1414855)))

(declare-fun b!2215482 () Bool)

(declare-fun tp!689043 () Bool)

(assert (=> b!2215482 (= e!1414855 tp!689043)))

(declare-fun b!2215481 () Bool)

(declare-fun tp!689042 () Bool)

(declare-fun tp!689041 () Bool)

(assert (=> b!2215481 (= e!1414855 (and tp!689042 tp!689041))))

(declare-fun b!2215483 () Bool)

(declare-fun tp!689044 () Bool)

(declare-fun tp!689045 () Bool)

(assert (=> b!2215483 (= e!1414855 (and tp!689044 tp!689045))))

(assert (= (and b!2214960 ((_ is ElementMatch!6321) (reg!6650 (regOne!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215480))

(assert (= (and b!2214960 ((_ is Concat!10635) (reg!6650 (regOne!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215481))

(assert (= (and b!2214960 ((_ is Star!6321) (reg!6650 (regOne!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215482))

(assert (= (and b!2214960 ((_ is Union!6321) (reg!6650 (regOne!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215483))

(declare-fun b!2215484 () Bool)

(declare-fun e!1414856 () Bool)

(assert (=> b!2215484 (= e!1414856 tp_is_empty!9815)))

(assert (=> b!2214916 (= tp!688612 e!1414856)))

(declare-fun b!2215486 () Bool)

(declare-fun tp!689048 () Bool)

(assert (=> b!2215486 (= e!1414856 tp!689048)))

(declare-fun b!2215485 () Bool)

(declare-fun tp!689047 () Bool)

(declare-fun tp!689046 () Bool)

(assert (=> b!2215485 (= e!1414856 (and tp!689047 tp!689046))))

(declare-fun b!2215487 () Bool)

(declare-fun tp!689049 () Bool)

(declare-fun tp!689050 () Bool)

(assert (=> b!2215487 (= e!1414856 (and tp!689049 tp!689050))))

(assert (= (and b!2214916 ((_ is ElementMatch!6321) (regOne!13155 (reg!6650 (regex!4177 (rule!6477 t2!61)))))) b!2215484))

(assert (= (and b!2214916 ((_ is Concat!10635) (regOne!13155 (reg!6650 (regex!4177 (rule!6477 t2!61)))))) b!2215485))

(assert (= (and b!2214916 ((_ is Star!6321) (regOne!13155 (reg!6650 (regex!4177 (rule!6477 t2!61)))))) b!2215486))

(assert (= (and b!2214916 ((_ is Union!6321) (regOne!13155 (reg!6650 (regex!4177 (rule!6477 t2!61)))))) b!2215487))

(declare-fun b!2215488 () Bool)

(declare-fun e!1414857 () Bool)

(assert (=> b!2215488 (= e!1414857 tp_is_empty!9815)))

(assert (=> b!2214916 (= tp!688613 e!1414857)))

(declare-fun b!2215490 () Bool)

(declare-fun tp!689053 () Bool)

(assert (=> b!2215490 (= e!1414857 tp!689053)))

(declare-fun b!2215489 () Bool)

(declare-fun tp!689052 () Bool)

(declare-fun tp!689051 () Bool)

(assert (=> b!2215489 (= e!1414857 (and tp!689052 tp!689051))))

(declare-fun b!2215491 () Bool)

(declare-fun tp!689054 () Bool)

(declare-fun tp!689055 () Bool)

(assert (=> b!2215491 (= e!1414857 (and tp!689054 tp!689055))))

(assert (= (and b!2214916 ((_ is ElementMatch!6321) (regTwo!13155 (reg!6650 (regex!4177 (rule!6477 t2!61)))))) b!2215488))

(assert (= (and b!2214916 ((_ is Concat!10635) (regTwo!13155 (reg!6650 (regex!4177 (rule!6477 t2!61)))))) b!2215489))

(assert (= (and b!2214916 ((_ is Star!6321) (regTwo!13155 (reg!6650 (regex!4177 (rule!6477 t2!61)))))) b!2215490))

(assert (= (and b!2214916 ((_ is Union!6321) (regTwo!13155 (reg!6650 (regex!4177 (rule!6477 t2!61)))))) b!2215491))

(declare-fun b!2215492 () Bool)

(declare-fun e!1414858 () Bool)

(assert (=> b!2215492 (= e!1414858 tp_is_empty!9815)))

(assert (=> b!2214914 (= tp!688610 e!1414858)))

(declare-fun b!2215494 () Bool)

(declare-fun tp!689058 () Bool)

(assert (=> b!2215494 (= e!1414858 tp!689058)))

(declare-fun b!2215493 () Bool)

(declare-fun tp!689057 () Bool)

(declare-fun tp!689056 () Bool)

(assert (=> b!2215493 (= e!1414858 (and tp!689057 tp!689056))))

(declare-fun b!2215495 () Bool)

(declare-fun tp!689059 () Bool)

(declare-fun tp!689060 () Bool)

(assert (=> b!2215495 (= e!1414858 (and tp!689059 tp!689060))))

(assert (= (and b!2214914 ((_ is ElementMatch!6321) (regOne!13154 (reg!6650 (regex!4177 (rule!6477 t2!61)))))) b!2215492))

(assert (= (and b!2214914 ((_ is Concat!10635) (regOne!13154 (reg!6650 (regex!4177 (rule!6477 t2!61)))))) b!2215493))

(assert (= (and b!2214914 ((_ is Star!6321) (regOne!13154 (reg!6650 (regex!4177 (rule!6477 t2!61)))))) b!2215494))

(assert (= (and b!2214914 ((_ is Union!6321) (regOne!13154 (reg!6650 (regex!4177 (rule!6477 t2!61)))))) b!2215495))

(declare-fun b!2215496 () Bool)

(declare-fun e!1414859 () Bool)

(assert (=> b!2215496 (= e!1414859 tp_is_empty!9815)))

(assert (=> b!2214914 (= tp!688609 e!1414859)))

(declare-fun b!2215498 () Bool)

(declare-fun tp!689063 () Bool)

(assert (=> b!2215498 (= e!1414859 tp!689063)))

(declare-fun b!2215497 () Bool)

(declare-fun tp!689062 () Bool)

(declare-fun tp!689061 () Bool)

(assert (=> b!2215497 (= e!1414859 (and tp!689062 tp!689061))))

(declare-fun b!2215499 () Bool)

(declare-fun tp!689064 () Bool)

(declare-fun tp!689065 () Bool)

(assert (=> b!2215499 (= e!1414859 (and tp!689064 tp!689065))))

(assert (= (and b!2214914 ((_ is ElementMatch!6321) (regTwo!13154 (reg!6650 (regex!4177 (rule!6477 t2!61)))))) b!2215496))

(assert (= (and b!2214914 ((_ is Concat!10635) (regTwo!13154 (reg!6650 (regex!4177 (rule!6477 t2!61)))))) b!2215497))

(assert (= (and b!2214914 ((_ is Star!6321) (regTwo!13154 (reg!6650 (regex!4177 (rule!6477 t2!61)))))) b!2215498))

(assert (= (and b!2214914 ((_ is Union!6321) (regTwo!13154 (reg!6650 (regex!4177 (rule!6477 t2!61)))))) b!2215499))

(declare-fun b!2215500 () Bool)

(declare-fun e!1414860 () Bool)

(assert (=> b!2215500 (= e!1414860 tp_is_empty!9815)))

(assert (=> b!2214923 (= tp!688621 e!1414860)))

(declare-fun b!2215502 () Bool)

(declare-fun tp!689068 () Bool)

(assert (=> b!2215502 (= e!1414860 tp!689068)))

(declare-fun b!2215501 () Bool)

(declare-fun tp!689067 () Bool)

(declare-fun tp!689066 () Bool)

(assert (=> b!2215501 (= e!1414860 (and tp!689067 tp!689066))))

(declare-fun b!2215503 () Bool)

(declare-fun tp!689069 () Bool)

(declare-fun tp!689070 () Bool)

(assert (=> b!2215503 (= e!1414860 (and tp!689069 tp!689070))))

(assert (= (and b!2214923 ((_ is ElementMatch!6321) (reg!6650 (regTwo!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215500))

(assert (= (and b!2214923 ((_ is Concat!10635) (reg!6650 (regTwo!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215501))

(assert (= (and b!2214923 ((_ is Star!6321) (reg!6650 (regTwo!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215502))

(assert (= (and b!2214923 ((_ is Union!6321) (reg!6650 (regTwo!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215503))

(declare-fun b!2215504 () Bool)

(declare-fun e!1414861 () Bool)

(assert (=> b!2215504 (= e!1414861 tp_is_empty!9815)))

(assert (=> b!2215022 (= tp!688738 e!1414861)))

(declare-fun b!2215506 () Bool)

(declare-fun tp!689073 () Bool)

(assert (=> b!2215506 (= e!1414861 tp!689073)))

(declare-fun b!2215505 () Bool)

(declare-fun tp!689072 () Bool)

(declare-fun tp!689071 () Bool)

(assert (=> b!2215505 (= e!1414861 (and tp!689072 tp!689071))))

(declare-fun b!2215507 () Bool)

(declare-fun tp!689074 () Bool)

(declare-fun tp!689075 () Bool)

(assert (=> b!2215507 (= e!1414861 (and tp!689074 tp!689075))))

(assert (= (and b!2215022 ((_ is ElementMatch!6321) (reg!6650 (regOne!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215504))

(assert (= (and b!2215022 ((_ is Concat!10635) (reg!6650 (regOne!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215505))

(assert (= (and b!2215022 ((_ is Star!6321) (reg!6650 (regOne!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215506))

(assert (= (and b!2215022 ((_ is Union!6321) (reg!6650 (regOne!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215507))

(declare-fun b!2215508 () Bool)

(declare-fun e!1414862 () Bool)

(assert (=> b!2215508 (= e!1414862 tp_is_empty!9815)))

(assert (=> b!2214945 (= tp!688644 e!1414862)))

(declare-fun b!2215510 () Bool)

(declare-fun tp!689078 () Bool)

(assert (=> b!2215510 (= e!1414862 tp!689078)))

(declare-fun b!2215509 () Bool)

(declare-fun tp!689077 () Bool)

(declare-fun tp!689076 () Bool)

(assert (=> b!2215509 (= e!1414862 (and tp!689077 tp!689076))))

(declare-fun b!2215511 () Bool)

(declare-fun tp!689079 () Bool)

(declare-fun tp!689080 () Bool)

(assert (=> b!2215511 (= e!1414862 (and tp!689079 tp!689080))))

(assert (= (and b!2214945 ((_ is ElementMatch!6321) (regOne!13154 (regTwo!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215508))

(assert (= (and b!2214945 ((_ is Concat!10635) (regOne!13154 (regTwo!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215509))

(assert (= (and b!2214945 ((_ is Star!6321) (regOne!13154 (regTwo!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215510))

(assert (= (and b!2214945 ((_ is Union!6321) (regOne!13154 (regTwo!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215511))

(declare-fun b!2215512 () Bool)

(declare-fun e!1414863 () Bool)

(assert (=> b!2215512 (= e!1414863 tp_is_empty!9815)))

(assert (=> b!2214945 (= tp!688643 e!1414863)))

(declare-fun b!2215514 () Bool)

(declare-fun tp!689083 () Bool)

(assert (=> b!2215514 (= e!1414863 tp!689083)))

(declare-fun b!2215513 () Bool)

(declare-fun tp!689082 () Bool)

(declare-fun tp!689081 () Bool)

(assert (=> b!2215513 (= e!1414863 (and tp!689082 tp!689081))))

(declare-fun b!2215515 () Bool)

(declare-fun tp!689084 () Bool)

(declare-fun tp!689085 () Bool)

(assert (=> b!2215515 (= e!1414863 (and tp!689084 tp!689085))))

(assert (= (and b!2214945 ((_ is ElementMatch!6321) (regTwo!13154 (regTwo!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215512))

(assert (= (and b!2214945 ((_ is Concat!10635) (regTwo!13154 (regTwo!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215513))

(assert (= (and b!2214945 ((_ is Star!6321) (regTwo!13154 (regTwo!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215514))

(assert (= (and b!2214945 ((_ is Union!6321) (regTwo!13154 (regTwo!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215515))

(declare-fun b!2215516 () Bool)

(declare-fun e!1414864 () Bool)

(assert (=> b!2215516 (= e!1414864 tp_is_empty!9815)))

(assert (=> b!2215013 (= tp!688727 e!1414864)))

(declare-fun b!2215518 () Bool)

(declare-fun tp!689088 () Bool)

(assert (=> b!2215518 (= e!1414864 tp!689088)))

(declare-fun b!2215517 () Bool)

(declare-fun tp!689087 () Bool)

(declare-fun tp!689086 () Bool)

(assert (=> b!2215517 (= e!1414864 (and tp!689087 tp!689086))))

(declare-fun b!2215519 () Bool)

(declare-fun tp!689089 () Bool)

(declare-fun tp!689090 () Bool)

(assert (=> b!2215519 (= e!1414864 (and tp!689089 tp!689090))))

(assert (= (and b!2215013 ((_ is ElementMatch!6321) (regOne!13154 (regTwo!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215516))

(assert (= (and b!2215013 ((_ is Concat!10635) (regOne!13154 (regTwo!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215517))

(assert (= (and b!2215013 ((_ is Star!6321) (regOne!13154 (regTwo!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215518))

(assert (= (and b!2215013 ((_ is Union!6321) (regOne!13154 (regTwo!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215519))

(declare-fun b!2215520 () Bool)

(declare-fun e!1414865 () Bool)

(assert (=> b!2215520 (= e!1414865 tp_is_empty!9815)))

(assert (=> b!2215013 (= tp!688726 e!1414865)))

(declare-fun b!2215522 () Bool)

(declare-fun tp!689093 () Bool)

(assert (=> b!2215522 (= e!1414865 tp!689093)))

(declare-fun b!2215521 () Bool)

(declare-fun tp!689092 () Bool)

(declare-fun tp!689091 () Bool)

(assert (=> b!2215521 (= e!1414865 (and tp!689092 tp!689091))))

(declare-fun b!2215523 () Bool)

(declare-fun tp!689094 () Bool)

(declare-fun tp!689095 () Bool)

(assert (=> b!2215523 (= e!1414865 (and tp!689094 tp!689095))))

(assert (= (and b!2215013 ((_ is ElementMatch!6321) (regTwo!13154 (regTwo!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215520))

(assert (= (and b!2215013 ((_ is Concat!10635) (regTwo!13154 (regTwo!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215521))

(assert (= (and b!2215013 ((_ is Star!6321) (regTwo!13154 (regTwo!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215522))

(assert (= (and b!2215013 ((_ is Union!6321) (regTwo!13154 (regTwo!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215523))

(declare-fun b!2215524 () Bool)

(declare-fun e!1414866 () Bool)

(declare-fun tp!689096 () Bool)

(assert (=> b!2215524 (= e!1414866 (and tp_is_empty!9815 tp!689096))))

(assert (=> b!2214935 (= tp!688630 e!1414866)))

(assert (= (and b!2214935 ((_ is Cons!25918) (innerList!8539 (xs!11421 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))))) b!2215524))

(declare-fun b!2215525 () Bool)

(declare-fun e!1414867 () Bool)

(assert (=> b!2215525 (= e!1414867 tp_is_empty!9815)))

(assert (=> b!2214971 (= tp!688676 e!1414867)))

(declare-fun b!2215527 () Bool)

(declare-fun tp!689099 () Bool)

(assert (=> b!2215527 (= e!1414867 tp!689099)))

(declare-fun b!2215526 () Bool)

(declare-fun tp!689098 () Bool)

(declare-fun tp!689097 () Bool)

(assert (=> b!2215526 (= e!1414867 (and tp!689098 tp!689097))))

(declare-fun b!2215528 () Bool)

(declare-fun tp!689100 () Bool)

(declare-fun tp!689101 () Bool)

(assert (=> b!2215528 (= e!1414867 (and tp!689100 tp!689101))))

(assert (= (and b!2214971 ((_ is ElementMatch!6321) (regOne!13154 (regTwo!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215525))

(assert (= (and b!2214971 ((_ is Concat!10635) (regOne!13154 (regTwo!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215526))

(assert (= (and b!2214971 ((_ is Star!6321) (regOne!13154 (regTwo!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215527))

(assert (= (and b!2214971 ((_ is Union!6321) (regOne!13154 (regTwo!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215528))

(declare-fun b!2215529 () Bool)

(declare-fun e!1414868 () Bool)

(assert (=> b!2215529 (= e!1414868 tp_is_empty!9815)))

(assert (=> b!2214971 (= tp!688675 e!1414868)))

(declare-fun b!2215531 () Bool)

(declare-fun tp!689104 () Bool)

(assert (=> b!2215531 (= e!1414868 tp!689104)))

(declare-fun b!2215530 () Bool)

(declare-fun tp!689103 () Bool)

(declare-fun tp!689102 () Bool)

(assert (=> b!2215530 (= e!1414868 (and tp!689103 tp!689102))))

(declare-fun b!2215532 () Bool)

(declare-fun tp!689105 () Bool)

(declare-fun tp!689106 () Bool)

(assert (=> b!2215532 (= e!1414868 (and tp!689105 tp!689106))))

(assert (= (and b!2214971 ((_ is ElementMatch!6321) (regTwo!13154 (regTwo!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215529))

(assert (= (and b!2214971 ((_ is Concat!10635) (regTwo!13154 (regTwo!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215530))

(assert (= (and b!2214971 ((_ is Star!6321) (regTwo!13154 (regTwo!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215531))

(assert (= (and b!2214971 ((_ is Union!6321) (regTwo!13154 (regTwo!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215532))

(declare-fun b!2215533 () Bool)

(declare-fun e!1414869 () Bool)

(assert (=> b!2215533 (= e!1414869 tp_is_empty!9815)))

(assert (=> b!2214918 (= tp!688615 e!1414869)))

(declare-fun b!2215535 () Bool)

(declare-fun tp!689109 () Bool)

(assert (=> b!2215535 (= e!1414869 tp!689109)))

(declare-fun b!2215534 () Bool)

(declare-fun tp!689108 () Bool)

(declare-fun tp!689107 () Bool)

(assert (=> b!2215534 (= e!1414869 (and tp!689108 tp!689107))))

(declare-fun b!2215536 () Bool)

(declare-fun tp!689110 () Bool)

(declare-fun tp!689111 () Bool)

(assert (=> b!2215536 (= e!1414869 (and tp!689110 tp!689111))))

(assert (= (and b!2214918 ((_ is ElementMatch!6321) (regOne!13154 (regOne!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215533))

(assert (= (and b!2214918 ((_ is Concat!10635) (regOne!13154 (regOne!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215534))

(assert (= (and b!2214918 ((_ is Star!6321) (regOne!13154 (regOne!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215535))

(assert (= (and b!2214918 ((_ is Union!6321) (regOne!13154 (regOne!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215536))

(declare-fun b!2215537 () Bool)

(declare-fun e!1414870 () Bool)

(assert (=> b!2215537 (= e!1414870 tp_is_empty!9815)))

(assert (=> b!2214918 (= tp!688614 e!1414870)))

(declare-fun b!2215539 () Bool)

(declare-fun tp!689114 () Bool)

(assert (=> b!2215539 (= e!1414870 tp!689114)))

(declare-fun b!2215538 () Bool)

(declare-fun tp!689113 () Bool)

(declare-fun tp!689112 () Bool)

(assert (=> b!2215538 (= e!1414870 (and tp!689113 tp!689112))))

(declare-fun b!2215540 () Bool)

(declare-fun tp!689115 () Bool)

(declare-fun tp!689116 () Bool)

(assert (=> b!2215540 (= e!1414870 (and tp!689115 tp!689116))))

(assert (= (and b!2214918 ((_ is ElementMatch!6321) (regTwo!13154 (regOne!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215537))

(assert (= (and b!2214918 ((_ is Concat!10635) (regTwo!13154 (regOne!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215538))

(assert (= (and b!2214918 ((_ is Star!6321) (regTwo!13154 (regOne!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215539))

(assert (= (and b!2214918 ((_ is Union!6321) (regTwo!13154 (regOne!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215540))

(declare-fun b!2215541 () Bool)

(declare-fun e!1414871 () Bool)

(assert (=> b!2215541 (= e!1414871 tp_is_empty!9815)))

(assert (=> b!2215002 (= tp!688716 e!1414871)))

(declare-fun b!2215543 () Bool)

(declare-fun tp!689119 () Bool)

(assert (=> b!2215543 (= e!1414871 tp!689119)))

(declare-fun b!2215542 () Bool)

(declare-fun tp!689118 () Bool)

(declare-fun tp!689117 () Bool)

(assert (=> b!2215542 (= e!1414871 (and tp!689118 tp!689117))))

(declare-fun b!2215544 () Bool)

(declare-fun tp!689120 () Bool)

(declare-fun tp!689121 () Bool)

(assert (=> b!2215544 (= e!1414871 (and tp!689120 tp!689121))))

(assert (= (and b!2215002 ((_ is ElementMatch!6321) (regex!4177 (h!31321 (t!198860 (t!198860 rules!4462)))))) b!2215541))

(assert (= (and b!2215002 ((_ is Concat!10635) (regex!4177 (h!31321 (t!198860 (t!198860 rules!4462)))))) b!2215542))

(assert (= (and b!2215002 ((_ is Star!6321) (regex!4177 (h!31321 (t!198860 (t!198860 rules!4462)))))) b!2215543))

(assert (= (and b!2215002 ((_ is Union!6321) (regex!4177 (h!31321 (t!198860 (t!198860 rules!4462)))))) b!2215544))

(declare-fun b!2215545 () Bool)

(declare-fun e!1414872 () Bool)

(assert (=> b!2215545 (= e!1414872 tp_is_empty!9815)))

(assert (=> b!2215026 (= tp!688743 e!1414872)))

(declare-fun b!2215547 () Bool)

(declare-fun tp!689124 () Bool)

(assert (=> b!2215547 (= e!1414872 tp!689124)))

(declare-fun b!2215546 () Bool)

(declare-fun tp!689123 () Bool)

(declare-fun tp!689122 () Bool)

(assert (=> b!2215546 (= e!1414872 (and tp!689123 tp!689122))))

(declare-fun b!2215548 () Bool)

(declare-fun tp!689125 () Bool)

(declare-fun tp!689126 () Bool)

(assert (=> b!2215548 (= e!1414872 (and tp!689125 tp!689126))))

(assert (= (and b!2215026 ((_ is ElementMatch!6321) (reg!6650 (regTwo!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215545))

(assert (= (and b!2215026 ((_ is Concat!10635) (reg!6650 (regTwo!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215546))

(assert (= (and b!2215026 ((_ is Star!6321) (reg!6650 (regTwo!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215547))

(assert (= (and b!2215026 ((_ is Union!6321) (reg!6650 (regTwo!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215548))

(declare-fun b!2215549 () Bool)

(declare-fun e!1414873 () Bool)

(assert (=> b!2215549 (= e!1414873 tp_is_empty!9815)))

(assert (=> b!2214989 (= tp!688698 e!1414873)))

(declare-fun b!2215551 () Bool)

(declare-fun tp!689129 () Bool)

(assert (=> b!2215551 (= e!1414873 tp!689129)))

(declare-fun b!2215550 () Bool)

(declare-fun tp!689128 () Bool)

(declare-fun tp!689127 () Bool)

(assert (=> b!2215550 (= e!1414873 (and tp!689128 tp!689127))))

(declare-fun b!2215552 () Bool)

(declare-fun tp!689130 () Bool)

(declare-fun tp!689131 () Bool)

(assert (=> b!2215552 (= e!1414873 (and tp!689130 tp!689131))))

(assert (= (and b!2214989 ((_ is ElementMatch!6321) (regOne!13155 (regOne!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215549))

(assert (= (and b!2214989 ((_ is Concat!10635) (regOne!13155 (regOne!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215550))

(assert (= (and b!2214989 ((_ is Star!6321) (regOne!13155 (regOne!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215551))

(assert (= (and b!2214989 ((_ is Union!6321) (regOne!13155 (regOne!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215552))

(declare-fun b!2215553 () Bool)

(declare-fun e!1414874 () Bool)

(assert (=> b!2215553 (= e!1414874 tp_is_empty!9815)))

(assert (=> b!2214989 (= tp!688699 e!1414874)))

(declare-fun b!2215555 () Bool)

(declare-fun tp!689134 () Bool)

(assert (=> b!2215555 (= e!1414874 tp!689134)))

(declare-fun b!2215554 () Bool)

(declare-fun tp!689133 () Bool)

(declare-fun tp!689132 () Bool)

(assert (=> b!2215554 (= e!1414874 (and tp!689133 tp!689132))))

(declare-fun b!2215556 () Bool)

(declare-fun tp!689135 () Bool)

(declare-fun tp!689136 () Bool)

(assert (=> b!2215556 (= e!1414874 (and tp!689135 tp!689136))))

(assert (= (and b!2214989 ((_ is ElementMatch!6321) (regTwo!13155 (regOne!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215553))

(assert (= (and b!2214989 ((_ is Concat!10635) (regTwo!13155 (regOne!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215554))

(assert (= (and b!2214989 ((_ is Star!6321) (regTwo!13155 (regOne!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215555))

(assert (= (and b!2214989 ((_ is Union!6321) (regTwo!13155 (regOne!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215556))

(declare-fun b!2215557 () Bool)

(declare-fun e!1414875 () Bool)

(assert (=> b!2215557 (= e!1414875 tp_is_empty!9815)))

(assert (=> b!2214980 (= tp!688687 e!1414875)))

(declare-fun b!2215559 () Bool)

(declare-fun tp!689139 () Bool)

(assert (=> b!2215559 (= e!1414875 tp!689139)))

(declare-fun b!2215558 () Bool)

(declare-fun tp!689138 () Bool)

(declare-fun tp!689137 () Bool)

(assert (=> b!2215558 (= e!1414875 (and tp!689138 tp!689137))))

(declare-fun b!2215560 () Bool)

(declare-fun tp!689140 () Bool)

(declare-fun tp!689141 () Bool)

(assert (=> b!2215560 (= e!1414875 (and tp!689140 tp!689141))))

(assert (= (and b!2214980 ((_ is ElementMatch!6321) (reg!6650 (regTwo!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215557))

(assert (= (and b!2214980 ((_ is Concat!10635) (reg!6650 (regTwo!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215558))

(assert (= (and b!2214980 ((_ is Star!6321) (reg!6650 (regTwo!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215559))

(assert (= (and b!2214980 ((_ is Union!6321) (reg!6650 (regTwo!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215560))

(declare-fun b!2215561 () Bool)

(declare-fun e!1414876 () Bool)

(assert (=> b!2215561 (= e!1414876 tp_is_empty!9815)))

(assert (=> b!2214987 (= tp!688696 e!1414876)))

(declare-fun b!2215563 () Bool)

(declare-fun tp!689144 () Bool)

(assert (=> b!2215563 (= e!1414876 tp!689144)))

(declare-fun b!2215562 () Bool)

(declare-fun tp!689143 () Bool)

(declare-fun tp!689142 () Bool)

(assert (=> b!2215562 (= e!1414876 (and tp!689143 tp!689142))))

(declare-fun b!2215564 () Bool)

(declare-fun tp!689145 () Bool)

(declare-fun tp!689146 () Bool)

(assert (=> b!2215564 (= e!1414876 (and tp!689145 tp!689146))))

(assert (= (and b!2214987 ((_ is ElementMatch!6321) (regOne!13154 (regOne!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215561))

(assert (= (and b!2214987 ((_ is Concat!10635) (regOne!13154 (regOne!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215562))

(assert (= (and b!2214987 ((_ is Star!6321) (regOne!13154 (regOne!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215563))

(assert (= (and b!2214987 ((_ is Union!6321) (regOne!13154 (regOne!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215564))

(declare-fun b!2215565 () Bool)

(declare-fun e!1414877 () Bool)

(assert (=> b!2215565 (= e!1414877 tp_is_empty!9815)))

(assert (=> b!2214987 (= tp!688695 e!1414877)))

(declare-fun b!2215567 () Bool)

(declare-fun tp!689149 () Bool)

(assert (=> b!2215567 (= e!1414877 tp!689149)))

(declare-fun b!2215566 () Bool)

(declare-fun tp!689148 () Bool)

(declare-fun tp!689147 () Bool)

(assert (=> b!2215566 (= e!1414877 (and tp!689148 tp!689147))))

(declare-fun b!2215568 () Bool)

(declare-fun tp!689150 () Bool)

(declare-fun tp!689151 () Bool)

(assert (=> b!2215568 (= e!1414877 (and tp!689150 tp!689151))))

(assert (= (and b!2214987 ((_ is ElementMatch!6321) (regTwo!13154 (regOne!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215565))

(assert (= (and b!2214987 ((_ is Concat!10635) (regTwo!13154 (regOne!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215566))

(assert (= (and b!2214987 ((_ is Star!6321) (regTwo!13154 (regOne!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215567))

(assert (= (and b!2214987 ((_ is Union!6321) (regTwo!13154 (regOne!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215568))

(declare-fun b!2215569 () Bool)

(declare-fun e!1414879 () Bool)

(declare-fun tp!689154 () Bool)

(declare-fun tp!689153 () Bool)

(assert (=> b!2215569 (= e!1414879 (and (inv!35123 (left!19923 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))) tp!689154 (inv!35123 (right!20253 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))) tp!689153))))

(declare-fun b!2215571 () Bool)

(declare-fun e!1414878 () Bool)

(declare-fun tp!689152 () Bool)

(assert (=> b!2215571 (= e!1414878 tp!689152)))

(declare-fun b!2215570 () Bool)

(assert (=> b!2215570 (= e!1414879 (and (inv!35127 (xs!11421 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))) e!1414878))))

(assert (=> b!2214933 (= tp!688632 (and (inv!35123 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))) e!1414879))))

(assert (= (and b!2214933 ((_ is Node!8479) (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))) b!2215569))

(assert (= b!2215570 b!2215571))

(assert (= (and b!2214933 ((_ is Leaf!12420) (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))) b!2215570))

(declare-fun m!2657427 () Bool)

(assert (=> b!2215569 m!2657427))

(declare-fun m!2657429 () Bool)

(assert (=> b!2215569 m!2657429))

(declare-fun m!2657431 () Bool)

(assert (=> b!2215570 m!2657431))

(assert (=> b!2214933 m!2656987))

(declare-fun b!2215572 () Bool)

(declare-fun e!1414881 () Bool)

(declare-fun tp!689157 () Bool)

(declare-fun tp!689156 () Bool)

(assert (=> b!2215572 (= e!1414881 (and (inv!35123 (left!19923 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))) tp!689157 (inv!35123 (right!20253 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))) tp!689156))))

(declare-fun b!2215574 () Bool)

(declare-fun e!1414880 () Bool)

(declare-fun tp!689155 () Bool)

(assert (=> b!2215574 (= e!1414880 tp!689155)))

(declare-fun b!2215573 () Bool)

(assert (=> b!2215573 (= e!1414881 (and (inv!35127 (xs!11421 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))) e!1414880))))

(assert (=> b!2214933 (= tp!688631 (and (inv!35123 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601)))))) e!1414881))))

(assert (= (and b!2214933 ((_ is Node!8479) (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))) b!2215572))

(assert (= b!2215573 b!2215574))

(assert (= (and b!2214933 ((_ is Leaf!12420) (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (value!131777 (h!31320 l!6601))))))) b!2215573))

(declare-fun m!2657433 () Bool)

(assert (=> b!2215572 m!2657433))

(declare-fun m!2657435 () Bool)

(assert (=> b!2215572 m!2657435))

(declare-fun m!2657437 () Bool)

(assert (=> b!2215573 m!2657437))

(assert (=> b!2214933 m!2656989))

(declare-fun b!2215575 () Bool)

(declare-fun e!1414882 () Bool)

(assert (=> b!2215575 (= e!1414882 tp_is_empty!9815)))

(assert (=> b!2214996 (= tp!688707 e!1414882)))

(declare-fun b!2215577 () Bool)

(declare-fun tp!689160 () Bool)

(assert (=> b!2215577 (= e!1414882 tp!689160)))

(declare-fun b!2215576 () Bool)

(declare-fun tp!689159 () Bool)

(declare-fun tp!689158 () Bool)

(assert (=> b!2215576 (= e!1414882 (and tp!689159 tp!689158))))

(declare-fun b!2215578 () Bool)

(declare-fun tp!689161 () Bool)

(declare-fun tp!689162 () Bool)

(assert (=> b!2215578 (= e!1414882 (and tp!689161 tp!689162))))

(assert (= (and b!2214996 ((_ is ElementMatch!6321) (reg!6650 (regex!4177 (h!31321 (t!198860 rules!4462)))))) b!2215575))

(assert (= (and b!2214996 ((_ is Concat!10635) (reg!6650 (regex!4177 (h!31321 (t!198860 rules!4462)))))) b!2215576))

(assert (= (and b!2214996 ((_ is Star!6321) (reg!6650 (regex!4177 (h!31321 (t!198860 rules!4462)))))) b!2215577))

(assert (= (and b!2214996 ((_ is Union!6321) (reg!6650 (regex!4177 (h!31321 (t!198860 rules!4462)))))) b!2215578))

(declare-fun b!2215579 () Bool)

(declare-fun e!1414883 () Bool)

(declare-fun tp!689163 () Bool)

(assert (=> b!2215579 (= e!1414883 (and tp_is_empty!9815 tp!689163))))

(assert (=> b!2215000 (= tp!688710 e!1414883)))

(assert (= (and b!2215000 ((_ is Cons!25918) (innerList!8539 (xs!11421 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))))) b!2215579))

(declare-fun b!2215580 () Bool)

(declare-fun e!1414884 () Bool)

(declare-fun tp!689164 () Bool)

(assert (=> b!2215580 (= e!1414884 (and tp_is_empty!9815 tp!689164))))

(assert (=> b!2214912 (= tp!688608 e!1414884)))

(assert (= (and b!2214912 ((_ is Cons!25918) (t!198858 (t!198858 (originalCharacters!4949 t2!61))))) b!2215580))

(declare-fun tp!689167 () Bool)

(declare-fun e!1414886 () Bool)

(declare-fun b!2215581 () Bool)

(declare-fun tp!689166 () Bool)

(assert (=> b!2215581 (= e!1414886 (and (inv!35123 (left!19923 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))) tp!689167 (inv!35123 (right!20253 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))) tp!689166))))

(declare-fun b!2215583 () Bool)

(declare-fun e!1414885 () Bool)

(declare-fun tp!689165 () Bool)

(assert (=> b!2215583 (= e!1414885 tp!689165)))

(declare-fun b!2215582 () Bool)

(assert (=> b!2215582 (= e!1414886 (and (inv!35127 (xs!11421 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))) e!1414885))))

(assert (=> b!2214998 (= tp!688712 (and (inv!35123 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))) e!1414886))))

(assert (= (and b!2214998 ((_ is Node!8479) (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))) b!2215581))

(assert (= b!2215582 b!2215583))

(assert (= (and b!2214998 ((_ is Leaf!12420) (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))) b!2215582))

(declare-fun m!2657439 () Bool)

(assert (=> b!2215581 m!2657439))

(declare-fun m!2657441 () Bool)

(assert (=> b!2215581 m!2657441))

(declare-fun m!2657443 () Bool)

(assert (=> b!2215582 m!2657443))

(assert (=> b!2214998 m!2657001))

(declare-fun e!1414888 () Bool)

(declare-fun b!2215584 () Bool)

(declare-fun tp!689170 () Bool)

(declare-fun tp!689169 () Bool)

(assert (=> b!2215584 (= e!1414888 (and (inv!35123 (left!19923 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))) tp!689170 (inv!35123 (right!20253 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))) tp!689169))))

(declare-fun b!2215586 () Bool)

(declare-fun e!1414887 () Bool)

(declare-fun tp!689168 () Bool)

(assert (=> b!2215586 (= e!1414887 tp!689168)))

(declare-fun b!2215585 () Bool)

(assert (=> b!2215585 (= e!1414888 (and (inv!35127 (xs!11421 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))) e!1414887))))

(assert (=> b!2214998 (= tp!688711 (and (inv!35123 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61))))) e!1414888))))

(assert (= (and b!2214998 ((_ is Node!8479) (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))) b!2215584))

(assert (= b!2215585 b!2215586))

(assert (= (and b!2214998 ((_ is Leaf!12420) (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (value!131777 t1!61)))))) b!2215585))

(declare-fun m!2657445 () Bool)

(assert (=> b!2215584 m!2657445))

(declare-fun m!2657447 () Bool)

(assert (=> b!2215584 m!2657447))

(declare-fun m!2657449 () Bool)

(assert (=> b!2215585 m!2657449))

(assert (=> b!2214998 m!2657003))

(declare-fun b!2215587 () Bool)

(declare-fun e!1414889 () Bool)

(assert (=> b!2215587 (= e!1414889 tp_is_empty!9815)))

(assert (=> b!2214943 (= tp!688641 e!1414889)))

(declare-fun b!2215589 () Bool)

(declare-fun tp!689173 () Bool)

(assert (=> b!2215589 (= e!1414889 tp!689173)))

(declare-fun b!2215588 () Bool)

(declare-fun tp!689172 () Bool)

(declare-fun tp!689171 () Bool)

(assert (=> b!2215588 (= e!1414889 (and tp!689172 tp!689171))))

(declare-fun b!2215590 () Bool)

(declare-fun tp!689174 () Bool)

(declare-fun tp!689175 () Bool)

(assert (=> b!2215590 (= e!1414889 (and tp!689174 tp!689175))))

(assert (= (and b!2214943 ((_ is ElementMatch!6321) (regOne!13155 (regOne!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215587))

(assert (= (and b!2214943 ((_ is Concat!10635) (regOne!13155 (regOne!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215588))

(assert (= (and b!2214943 ((_ is Star!6321) (regOne!13155 (regOne!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215589))

(assert (= (and b!2214943 ((_ is Union!6321) (regOne!13155 (regOne!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215590))

(declare-fun b!2215591 () Bool)

(declare-fun e!1414890 () Bool)

(assert (=> b!2215591 (= e!1414890 tp_is_empty!9815)))

(assert (=> b!2214943 (= tp!688642 e!1414890)))

(declare-fun b!2215593 () Bool)

(declare-fun tp!689178 () Bool)

(assert (=> b!2215593 (= e!1414890 tp!689178)))

(declare-fun b!2215592 () Bool)

(declare-fun tp!689177 () Bool)

(declare-fun tp!689176 () Bool)

(assert (=> b!2215592 (= e!1414890 (and tp!689177 tp!689176))))

(declare-fun b!2215594 () Bool)

(declare-fun tp!689179 () Bool)

(declare-fun tp!689180 () Bool)

(assert (=> b!2215594 (= e!1414890 (and tp!689179 tp!689180))))

(assert (= (and b!2214943 ((_ is ElementMatch!6321) (regTwo!13155 (regOne!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215591))

(assert (= (and b!2214943 ((_ is Concat!10635) (regTwo!13155 (regOne!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215592))

(assert (= (and b!2214943 ((_ is Star!6321) (regTwo!13155 (regOne!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215593))

(assert (= (and b!2214943 ((_ is Union!6321) (regTwo!13155 (regOne!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215594))

(declare-fun b!2215595 () Bool)

(declare-fun e!1414891 () Bool)

(assert (=> b!2215595 (= e!1414891 tp_is_empty!9815)))

(assert (=> b!2215011 (= tp!688724 e!1414891)))

(declare-fun b!2215597 () Bool)

(declare-fun tp!689183 () Bool)

(assert (=> b!2215597 (= e!1414891 tp!689183)))

(declare-fun b!2215596 () Bool)

(declare-fun tp!689182 () Bool)

(declare-fun tp!689181 () Bool)

(assert (=> b!2215596 (= e!1414891 (and tp!689182 tp!689181))))

(declare-fun b!2215598 () Bool)

(declare-fun tp!689184 () Bool)

(declare-fun tp!689185 () Bool)

(assert (=> b!2215598 (= e!1414891 (and tp!689184 tp!689185))))

(assert (= (and b!2215011 ((_ is ElementMatch!6321) (regOne!13155 (regOne!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215595))

(assert (= (and b!2215011 ((_ is Concat!10635) (regOne!13155 (regOne!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215596))

(assert (= (and b!2215011 ((_ is Star!6321) (regOne!13155 (regOne!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215597))

(assert (= (and b!2215011 ((_ is Union!6321) (regOne!13155 (regOne!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215598))

(declare-fun b!2215599 () Bool)

(declare-fun e!1414892 () Bool)

(assert (=> b!2215599 (= e!1414892 tp_is_empty!9815)))

(assert (=> b!2215011 (= tp!688725 e!1414892)))

(declare-fun b!2215601 () Bool)

(declare-fun tp!689188 () Bool)

(assert (=> b!2215601 (= e!1414892 tp!689188)))

(declare-fun b!2215600 () Bool)

(declare-fun tp!689187 () Bool)

(declare-fun tp!689186 () Bool)

(assert (=> b!2215600 (= e!1414892 (and tp!689187 tp!689186))))

(declare-fun b!2215602 () Bool)

(declare-fun tp!689189 () Bool)

(declare-fun tp!689190 () Bool)

(assert (=> b!2215602 (= e!1414892 (and tp!689189 tp!689190))))

(assert (= (and b!2215011 ((_ is ElementMatch!6321) (regTwo!13155 (regOne!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215599))

(assert (= (and b!2215011 ((_ is Concat!10635) (regTwo!13155 (regOne!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215600))

(assert (= (and b!2215011 ((_ is Star!6321) (regTwo!13155 (regOne!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215601))

(assert (= (and b!2215011 ((_ is Union!6321) (regTwo!13155 (regOne!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215602))

(declare-fun b!2215603 () Bool)

(declare-fun e!1414893 () Bool)

(assert (=> b!2215603 (= e!1414893 tp_is_empty!9815)))

(assert (=> b!2214950 (= tp!688650 e!1414893)))

(declare-fun b!2215605 () Bool)

(declare-fun tp!689193 () Bool)

(assert (=> b!2215605 (= e!1414893 tp!689193)))

(declare-fun b!2215604 () Bool)

(declare-fun tp!689192 () Bool)

(declare-fun tp!689191 () Bool)

(assert (=> b!2215604 (= e!1414893 (and tp!689192 tp!689191))))

(declare-fun b!2215606 () Bool)

(declare-fun tp!689194 () Bool)

(declare-fun tp!689195 () Bool)

(assert (=> b!2215606 (= e!1414893 (and tp!689194 tp!689195))))

(assert (= (and b!2214950 ((_ is ElementMatch!6321) (regOne!13154 (reg!6650 (regex!4177 (rule!6477 t1!61)))))) b!2215603))

(assert (= (and b!2214950 ((_ is Concat!10635) (regOne!13154 (reg!6650 (regex!4177 (rule!6477 t1!61)))))) b!2215604))

(assert (= (and b!2214950 ((_ is Star!6321) (regOne!13154 (reg!6650 (regex!4177 (rule!6477 t1!61)))))) b!2215605))

(assert (= (and b!2214950 ((_ is Union!6321) (regOne!13154 (reg!6650 (regex!4177 (rule!6477 t1!61)))))) b!2215606))

(declare-fun b!2215607 () Bool)

(declare-fun e!1414894 () Bool)

(assert (=> b!2215607 (= e!1414894 tp_is_empty!9815)))

(assert (=> b!2214950 (= tp!688649 e!1414894)))

(declare-fun b!2215609 () Bool)

(declare-fun tp!689198 () Bool)

(assert (=> b!2215609 (= e!1414894 tp!689198)))

(declare-fun b!2215608 () Bool)

(declare-fun tp!689197 () Bool)

(declare-fun tp!689196 () Bool)

(assert (=> b!2215608 (= e!1414894 (and tp!689197 tp!689196))))

(declare-fun b!2215610 () Bool)

(declare-fun tp!689199 () Bool)

(declare-fun tp!689200 () Bool)

(assert (=> b!2215610 (= e!1414894 (and tp!689199 tp!689200))))

(assert (= (and b!2214950 ((_ is ElementMatch!6321) (regTwo!13154 (reg!6650 (regex!4177 (rule!6477 t1!61)))))) b!2215607))

(assert (= (and b!2214950 ((_ is Concat!10635) (regTwo!13154 (reg!6650 (regex!4177 (rule!6477 t1!61)))))) b!2215608))

(assert (= (and b!2214950 ((_ is Star!6321) (regTwo!13154 (reg!6650 (regex!4177 (rule!6477 t1!61)))))) b!2215609))

(assert (= (and b!2214950 ((_ is Union!6321) (regTwo!13154 (reg!6650 (regex!4177 (rule!6477 t1!61)))))) b!2215610))

(declare-fun tp!689203 () Bool)

(declare-fun b!2215611 () Bool)

(declare-fun tp!689202 () Bool)

(declare-fun e!1414896 () Bool)

(assert (=> b!2215611 (= e!1414896 (and (inv!35123 (left!19923 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))) tp!689203 (inv!35123 (right!20253 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))) tp!689202))))

(declare-fun b!2215613 () Bool)

(declare-fun e!1414895 () Bool)

(declare-fun tp!689201 () Bool)

(assert (=> b!2215613 (= e!1414895 tp!689201)))

(declare-fun b!2215612 () Bool)

(assert (=> b!2215612 (= e!1414896 (and (inv!35127 (xs!11421 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))) e!1414895))))

(assert (=> b!2215004 (= tp!688719 (and (inv!35123 (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))) e!1414896))))

(assert (= (and b!2215004 ((_ is Node!8479) (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))) b!2215611))

(assert (= b!2215612 b!2215613))

(assert (= (and b!2215004 ((_ is Leaf!12420) (left!19923 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))) b!2215612))

(declare-fun m!2657451 () Bool)

(assert (=> b!2215611 m!2657451))

(declare-fun m!2657453 () Bool)

(assert (=> b!2215611 m!2657453))

(declare-fun m!2657455 () Bool)

(assert (=> b!2215612 m!2657455))

(assert (=> b!2215004 m!2657011))

(declare-fun e!1414898 () Bool)

(declare-fun tp!689206 () Bool)

(declare-fun b!2215614 () Bool)

(declare-fun tp!689205 () Bool)

(assert (=> b!2215614 (= e!1414898 (and (inv!35123 (left!19923 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))) tp!689206 (inv!35123 (right!20253 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))) tp!689205))))

(declare-fun b!2215616 () Bool)

(declare-fun e!1414897 () Bool)

(declare-fun tp!689204 () Bool)

(assert (=> b!2215616 (= e!1414897 tp!689204)))

(declare-fun b!2215615 () Bool)

(assert (=> b!2215615 (= e!1414898 (and (inv!35127 (xs!11421 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))) e!1414897))))

(assert (=> b!2215004 (= tp!688718 (and (inv!35123 (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))) e!1414898))))

(assert (= (and b!2215004 ((_ is Node!8479) (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))) b!2215614))

(assert (= b!2215615 b!2215616))

(assert (= (and b!2215004 ((_ is Leaf!12420) (right!20253 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61)))))) b!2215615))

(declare-fun m!2657457 () Bool)

(assert (=> b!2215614 m!2657457))

(declare-fun m!2657459 () Bool)

(assert (=> b!2215614 m!2657459))

(declare-fun m!2657461 () Bool)

(assert (=> b!2215615 m!2657461))

(assert (=> b!2215004 m!2657013))

(declare-fun b!2215617 () Bool)

(declare-fun e!1414899 () Bool)

(assert (=> b!2215617 (= e!1414899 tp_is_empty!9815)))

(assert (=> b!2214941 (= tp!688639 e!1414899)))

(declare-fun b!2215619 () Bool)

(declare-fun tp!689209 () Bool)

(assert (=> b!2215619 (= e!1414899 tp!689209)))

(declare-fun b!2215618 () Bool)

(declare-fun tp!689208 () Bool)

(declare-fun tp!689207 () Bool)

(assert (=> b!2215618 (= e!1414899 (and tp!689208 tp!689207))))

(declare-fun b!2215620 () Bool)

(declare-fun tp!689210 () Bool)

(declare-fun tp!689211 () Bool)

(assert (=> b!2215620 (= e!1414899 (and tp!689210 tp!689211))))

(assert (= (and b!2214941 ((_ is ElementMatch!6321) (regOne!13154 (regOne!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215617))

(assert (= (and b!2214941 ((_ is Concat!10635) (regOne!13154 (regOne!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215618))

(assert (= (and b!2214941 ((_ is Star!6321) (regOne!13154 (regOne!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215619))

(assert (= (and b!2214941 ((_ is Union!6321) (regOne!13154 (regOne!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215620))

(declare-fun b!2215621 () Bool)

(declare-fun e!1414900 () Bool)

(assert (=> b!2215621 (= e!1414900 tp_is_empty!9815)))

(assert (=> b!2214941 (= tp!688638 e!1414900)))

(declare-fun b!2215623 () Bool)

(declare-fun tp!689214 () Bool)

(assert (=> b!2215623 (= e!1414900 tp!689214)))

(declare-fun b!2215622 () Bool)

(declare-fun tp!689213 () Bool)

(declare-fun tp!689212 () Bool)

(assert (=> b!2215622 (= e!1414900 (and tp!689213 tp!689212))))

(declare-fun b!2215624 () Bool)

(declare-fun tp!689215 () Bool)

(declare-fun tp!689216 () Bool)

(assert (=> b!2215624 (= e!1414900 (and tp!689215 tp!689216))))

(assert (= (and b!2214941 ((_ is ElementMatch!6321) (regTwo!13154 (regOne!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215621))

(assert (= (and b!2214941 ((_ is Concat!10635) (regTwo!13154 (regOne!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215622))

(assert (= (and b!2214941 ((_ is Star!6321) (regTwo!13154 (regOne!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215623))

(assert (= (and b!2214941 ((_ is Union!6321) (regTwo!13154 (regOne!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215624))

(declare-fun b!2215625 () Bool)

(declare-fun e!1414901 () Bool)

(assert (=> b!2215625 (= e!1414901 tp_is_empty!9815)))

(assert (=> b!2215009 (= tp!688722 e!1414901)))

(declare-fun b!2215627 () Bool)

(declare-fun tp!689219 () Bool)

(assert (=> b!2215627 (= e!1414901 tp!689219)))

(declare-fun b!2215626 () Bool)

(declare-fun tp!689218 () Bool)

(declare-fun tp!689217 () Bool)

(assert (=> b!2215626 (= e!1414901 (and tp!689218 tp!689217))))

(declare-fun b!2215628 () Bool)

(declare-fun tp!689220 () Bool)

(declare-fun tp!689221 () Bool)

(assert (=> b!2215628 (= e!1414901 (and tp!689220 tp!689221))))

(assert (= (and b!2215009 ((_ is ElementMatch!6321) (regOne!13154 (regOne!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215625))

(assert (= (and b!2215009 ((_ is Concat!10635) (regOne!13154 (regOne!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215626))

(assert (= (and b!2215009 ((_ is Star!6321) (regOne!13154 (regOne!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215627))

(assert (= (and b!2215009 ((_ is Union!6321) (regOne!13154 (regOne!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215628))

(declare-fun b!2215629 () Bool)

(declare-fun e!1414902 () Bool)

(assert (=> b!2215629 (= e!1414902 tp_is_empty!9815)))

(assert (=> b!2215009 (= tp!688721 e!1414902)))

(declare-fun b!2215631 () Bool)

(declare-fun tp!689224 () Bool)

(assert (=> b!2215631 (= e!1414902 tp!689224)))

(declare-fun b!2215630 () Bool)

(declare-fun tp!689223 () Bool)

(declare-fun tp!689222 () Bool)

(assert (=> b!2215630 (= e!1414902 (and tp!689223 tp!689222))))

(declare-fun b!2215632 () Bool)

(declare-fun tp!689225 () Bool)

(declare-fun tp!689226 () Bool)

(assert (=> b!2215632 (= e!1414902 (and tp!689225 tp!689226))))

(assert (= (and b!2215009 ((_ is ElementMatch!6321) (regTwo!13154 (regOne!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215629))

(assert (= (and b!2215009 ((_ is Concat!10635) (regTwo!13154 (regOne!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215630))

(assert (= (and b!2215009 ((_ is Star!6321) (regTwo!13154 (regOne!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215631))

(assert (= (and b!2215009 ((_ is Union!6321) (regTwo!13154 (regOne!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215632))

(declare-fun b!2215633 () Bool)

(declare-fun e!1414903 () Bool)

(assert (=> b!2215633 (= e!1414903 tp_is_empty!9815)))

(assert (=> b!2214965 (= tp!688668 e!1414903)))

(declare-fun b!2215635 () Bool)

(declare-fun tp!689229 () Bool)

(assert (=> b!2215635 (= e!1414903 tp!689229)))

(declare-fun b!2215634 () Bool)

(declare-fun tp!689228 () Bool)

(declare-fun tp!689227 () Bool)

(assert (=> b!2215634 (= e!1414903 (and tp!689228 tp!689227))))

(declare-fun b!2215636 () Bool)

(declare-fun tp!689230 () Bool)

(declare-fun tp!689231 () Bool)

(assert (=> b!2215636 (= e!1414903 (and tp!689230 tp!689231))))

(assert (= (and b!2214965 ((_ is ElementMatch!6321) (regOne!13155 (regTwo!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215633))

(assert (= (and b!2214965 ((_ is Concat!10635) (regOne!13155 (regTwo!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215634))

(assert (= (and b!2214965 ((_ is Star!6321) (regOne!13155 (regTwo!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215635))

(assert (= (and b!2214965 ((_ is Union!6321) (regOne!13155 (regTwo!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215636))

(declare-fun b!2215637 () Bool)

(declare-fun e!1414904 () Bool)

(assert (=> b!2215637 (= e!1414904 tp_is_empty!9815)))

(assert (=> b!2214965 (= tp!688669 e!1414904)))

(declare-fun b!2215639 () Bool)

(declare-fun tp!689234 () Bool)

(assert (=> b!2215639 (= e!1414904 tp!689234)))

(declare-fun b!2215638 () Bool)

(declare-fun tp!689233 () Bool)

(declare-fun tp!689232 () Bool)

(assert (=> b!2215638 (= e!1414904 (and tp!689233 tp!689232))))

(declare-fun b!2215640 () Bool)

(declare-fun tp!689235 () Bool)

(declare-fun tp!689236 () Bool)

(assert (=> b!2215640 (= e!1414904 (and tp!689235 tp!689236))))

(assert (= (and b!2214965 ((_ is ElementMatch!6321) (regTwo!13155 (regTwo!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215637))

(assert (= (and b!2214965 ((_ is Concat!10635) (regTwo!13155 (regTwo!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215638))

(assert (= (and b!2214965 ((_ is Star!6321) (regTwo!13155 (regTwo!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215639))

(assert (= (and b!2214965 ((_ is Union!6321) (regTwo!13155 (regTwo!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215640))

(declare-fun b!2215641 () Bool)

(declare-fun e!1414905 () Bool)

(assert (=> b!2215641 (= e!1414905 tp_is_empty!9815)))

(assert (=> b!2214963 (= tp!688666 e!1414905)))

(declare-fun b!2215643 () Bool)

(declare-fun tp!689239 () Bool)

(assert (=> b!2215643 (= e!1414905 tp!689239)))

(declare-fun b!2215642 () Bool)

(declare-fun tp!689238 () Bool)

(declare-fun tp!689237 () Bool)

(assert (=> b!2215642 (= e!1414905 (and tp!689238 tp!689237))))

(declare-fun b!2215644 () Bool)

(declare-fun tp!689240 () Bool)

(declare-fun tp!689241 () Bool)

(assert (=> b!2215644 (= e!1414905 (and tp!689240 tp!689241))))

(assert (= (and b!2214963 ((_ is ElementMatch!6321) (regOne!13154 (regTwo!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215641))

(assert (= (and b!2214963 ((_ is Concat!10635) (regOne!13154 (regTwo!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215642))

(assert (= (and b!2214963 ((_ is Star!6321) (regOne!13154 (regTwo!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215643))

(assert (= (and b!2214963 ((_ is Union!6321) (regOne!13154 (regTwo!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215644))

(declare-fun b!2215645 () Bool)

(declare-fun e!1414906 () Bool)

(assert (=> b!2215645 (= e!1414906 tp_is_empty!9815)))

(assert (=> b!2214963 (= tp!688665 e!1414906)))

(declare-fun b!2215647 () Bool)

(declare-fun tp!689244 () Bool)

(assert (=> b!2215647 (= e!1414906 tp!689244)))

(declare-fun b!2215646 () Bool)

(declare-fun tp!689243 () Bool)

(declare-fun tp!689242 () Bool)

(assert (=> b!2215646 (= e!1414906 (and tp!689243 tp!689242))))

(declare-fun b!2215648 () Bool)

(declare-fun tp!689245 () Bool)

(declare-fun tp!689246 () Bool)

(assert (=> b!2215648 (= e!1414906 (and tp!689245 tp!689246))))

(assert (= (and b!2214963 ((_ is ElementMatch!6321) (regTwo!13154 (regTwo!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215645))

(assert (= (and b!2214963 ((_ is Concat!10635) (regTwo!13154 (regTwo!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215646))

(assert (= (and b!2214963 ((_ is Star!6321) (regTwo!13154 (regTwo!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215647))

(assert (= (and b!2214963 ((_ is Union!6321) (regTwo!13154 (regTwo!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215648))

(declare-fun b!2215649 () Bool)

(declare-fun e!1414907 () Bool)

(assert (=> b!2215649 (= e!1414907 tp_is_empty!9815)))

(assert (=> b!2215027 (= tp!688744 e!1414907)))

(declare-fun b!2215651 () Bool)

(declare-fun tp!689249 () Bool)

(assert (=> b!2215651 (= e!1414907 tp!689249)))

(declare-fun b!2215650 () Bool)

(declare-fun tp!689248 () Bool)

(declare-fun tp!689247 () Bool)

(assert (=> b!2215650 (= e!1414907 (and tp!689248 tp!689247))))

(declare-fun b!2215652 () Bool)

(declare-fun tp!689250 () Bool)

(declare-fun tp!689251 () Bool)

(assert (=> b!2215652 (= e!1414907 (and tp!689250 tp!689251))))

(assert (= (and b!2215027 ((_ is ElementMatch!6321) (regOne!13155 (regTwo!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215649))

(assert (= (and b!2215027 ((_ is Concat!10635) (regOne!13155 (regTwo!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215650))

(assert (= (and b!2215027 ((_ is Star!6321) (regOne!13155 (regTwo!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215651))

(assert (= (and b!2215027 ((_ is Union!6321) (regOne!13155 (regTwo!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215652))

(declare-fun b!2215653 () Bool)

(declare-fun e!1414908 () Bool)

(assert (=> b!2215653 (= e!1414908 tp_is_empty!9815)))

(assert (=> b!2215027 (= tp!688745 e!1414908)))

(declare-fun b!2215655 () Bool)

(declare-fun tp!689254 () Bool)

(assert (=> b!2215655 (= e!1414908 tp!689254)))

(declare-fun b!2215654 () Bool)

(declare-fun tp!689253 () Bool)

(declare-fun tp!689252 () Bool)

(assert (=> b!2215654 (= e!1414908 (and tp!689253 tp!689252))))

(declare-fun b!2215656 () Bool)

(declare-fun tp!689255 () Bool)

(declare-fun tp!689256 () Bool)

(assert (=> b!2215656 (= e!1414908 (and tp!689255 tp!689256))))

(assert (= (and b!2215027 ((_ is ElementMatch!6321) (regTwo!13155 (regTwo!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215653))

(assert (= (and b!2215027 ((_ is Concat!10635) (regTwo!13155 (regTwo!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215654))

(assert (= (and b!2215027 ((_ is Star!6321) (regTwo!13155 (regTwo!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215655))

(assert (= (and b!2215027 ((_ is Union!6321) (regTwo!13155 (regTwo!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215656))

(declare-fun b!2215657 () Bool)

(declare-fun e!1414909 () Bool)

(assert (=> b!2215657 (= e!1414909 tp_is_empty!9815)))

(assert (=> b!2214919 (= tp!688616 e!1414909)))

(declare-fun b!2215659 () Bool)

(declare-fun tp!689259 () Bool)

(assert (=> b!2215659 (= e!1414909 tp!689259)))

(declare-fun b!2215658 () Bool)

(declare-fun tp!689258 () Bool)

(declare-fun tp!689257 () Bool)

(assert (=> b!2215658 (= e!1414909 (and tp!689258 tp!689257))))

(declare-fun b!2215660 () Bool)

(declare-fun tp!689260 () Bool)

(declare-fun tp!689261 () Bool)

(assert (=> b!2215660 (= e!1414909 (and tp!689260 tp!689261))))

(assert (= (and b!2214919 ((_ is ElementMatch!6321) (reg!6650 (regOne!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215657))

(assert (= (and b!2214919 ((_ is Concat!10635) (reg!6650 (regOne!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215658))

(assert (= (and b!2214919 ((_ is Star!6321) (reg!6650 (regOne!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215659))

(assert (= (and b!2214919 ((_ is Union!6321) (reg!6650 (regOne!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215660))

(declare-fun b!2215661 () Bool)

(declare-fun e!1414910 () Bool)

(assert (=> b!2215661 (= e!1414910 tp_is_empty!9815)))

(assert (=> b!2214956 (= tp!688657 e!1414910)))

(declare-fun b!2215663 () Bool)

(declare-fun tp!689264 () Bool)

(assert (=> b!2215663 (= e!1414910 tp!689264)))

(declare-fun b!2215662 () Bool)

(declare-fun tp!689263 () Bool)

(declare-fun tp!689262 () Bool)

(assert (=> b!2215662 (= e!1414910 (and tp!689263 tp!689262))))

(declare-fun b!2215664 () Bool)

(declare-fun tp!689265 () Bool)

(declare-fun tp!689266 () Bool)

(assert (=> b!2215664 (= e!1414910 (and tp!689265 tp!689266))))

(assert (= (and b!2214956 ((_ is ElementMatch!6321) (regex!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601))))))) b!2215661))

(assert (= (and b!2214956 ((_ is Concat!10635) (regex!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601))))))) b!2215662))

(assert (= (and b!2214956 ((_ is Star!6321) (regex!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601))))))) b!2215663))

(assert (= (and b!2214956 ((_ is Union!6321) (regex!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601))))))) b!2215664))

(declare-fun b!2215665 () Bool)

(declare-fun e!1414911 () Bool)

(assert (=> b!2215665 (= e!1414911 tp_is_empty!9815)))

(assert (=> b!2215018 (= tp!688733 e!1414911)))

(declare-fun b!2215667 () Bool)

(declare-fun tp!689269 () Bool)

(assert (=> b!2215667 (= e!1414911 tp!689269)))

(declare-fun b!2215666 () Bool)

(declare-fun tp!689268 () Bool)

(declare-fun tp!689267 () Bool)

(assert (=> b!2215666 (= e!1414911 (and tp!689268 tp!689267))))

(declare-fun b!2215668 () Bool)

(declare-fun tp!689270 () Bool)

(declare-fun tp!689271 () Bool)

(assert (=> b!2215668 (= e!1414911 (and tp!689270 tp!689271))))

(assert (= (and b!2215018 ((_ is ElementMatch!6321) (reg!6650 (reg!6650 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215665))

(assert (= (and b!2215018 ((_ is Concat!10635) (reg!6650 (reg!6650 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215666))

(assert (= (and b!2215018 ((_ is Star!6321) (reg!6650 (reg!6650 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215667))

(assert (= (and b!2215018 ((_ is Union!6321) (reg!6650 (reg!6650 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215668))

(declare-fun b!2215669 () Bool)

(declare-fun e!1414912 () Bool)

(assert (=> b!2215669 (= e!1414912 tp_is_empty!9815)))

(assert (=> b!2214985 (= tp!688693 e!1414912)))

(declare-fun b!2215671 () Bool)

(declare-fun tp!689274 () Bool)

(assert (=> b!2215671 (= e!1414912 tp!689274)))

(declare-fun b!2215670 () Bool)

(declare-fun tp!689273 () Bool)

(declare-fun tp!689272 () Bool)

(assert (=> b!2215670 (= e!1414912 (and tp!689273 tp!689272))))

(declare-fun b!2215672 () Bool)

(declare-fun tp!689275 () Bool)

(declare-fun tp!689276 () Bool)

(assert (=> b!2215672 (= e!1414912 (and tp!689275 tp!689276))))

(assert (= (and b!2214985 ((_ is ElementMatch!6321) (regOne!13155 (reg!6650 (regex!4177 (h!31321 rules!4462)))))) b!2215669))

(assert (= (and b!2214985 ((_ is Concat!10635) (regOne!13155 (reg!6650 (regex!4177 (h!31321 rules!4462)))))) b!2215670))

(assert (= (and b!2214985 ((_ is Star!6321) (regOne!13155 (reg!6650 (regex!4177 (h!31321 rules!4462)))))) b!2215671))

(assert (= (and b!2214985 ((_ is Union!6321) (regOne!13155 (reg!6650 (regex!4177 (h!31321 rules!4462)))))) b!2215672))

(declare-fun b!2215673 () Bool)

(declare-fun e!1414913 () Bool)

(assert (=> b!2215673 (= e!1414913 tp_is_empty!9815)))

(assert (=> b!2214985 (= tp!688694 e!1414913)))

(declare-fun b!2215675 () Bool)

(declare-fun tp!689279 () Bool)

(assert (=> b!2215675 (= e!1414913 tp!689279)))

(declare-fun b!2215674 () Bool)

(declare-fun tp!689278 () Bool)

(declare-fun tp!689277 () Bool)

(assert (=> b!2215674 (= e!1414913 (and tp!689278 tp!689277))))

(declare-fun b!2215676 () Bool)

(declare-fun tp!689280 () Bool)

(declare-fun tp!689281 () Bool)

(assert (=> b!2215676 (= e!1414913 (and tp!689280 tp!689281))))

(assert (= (and b!2214985 ((_ is ElementMatch!6321) (regTwo!13155 (reg!6650 (regex!4177 (h!31321 rules!4462)))))) b!2215673))

(assert (= (and b!2214985 ((_ is Concat!10635) (regTwo!13155 (reg!6650 (regex!4177 (h!31321 rules!4462)))))) b!2215674))

(assert (= (and b!2214985 ((_ is Star!6321) (regTwo!13155 (reg!6650 (regex!4177 (h!31321 rules!4462)))))) b!2215675))

(assert (= (and b!2214985 ((_ is Union!6321) (regTwo!13155 (reg!6650 (regex!4177 (h!31321 rules!4462)))))) b!2215676))

(declare-fun b!2215677 () Bool)

(declare-fun e!1414914 () Bool)

(assert (=> b!2215677 (= e!1414914 tp_is_empty!9815)))

(assert (=> b!2214976 (= tp!688682 e!1414914)))

(declare-fun b!2215679 () Bool)

(declare-fun tp!689284 () Bool)

(assert (=> b!2215679 (= e!1414914 tp!689284)))

(declare-fun b!2215678 () Bool)

(declare-fun tp!689283 () Bool)

(declare-fun tp!689282 () Bool)

(assert (=> b!2215678 (= e!1414914 (and tp!689283 tp!689282))))

(declare-fun b!2215680 () Bool)

(declare-fun tp!689285 () Bool)

(declare-fun tp!689286 () Bool)

(assert (=> b!2215680 (= e!1414914 (and tp!689285 tp!689286))))

(assert (= (and b!2214976 ((_ is ElementMatch!6321) (reg!6650 (regOne!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215677))

(assert (= (and b!2214976 ((_ is Concat!10635) (reg!6650 (regOne!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215678))

(assert (= (and b!2214976 ((_ is Star!6321) (reg!6650 (regOne!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215679))

(assert (= (and b!2214976 ((_ is Union!6321) (reg!6650 (regOne!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215680))

(declare-fun b!2215681 () Bool)

(declare-fun e!1414915 () Bool)

(assert (=> b!2215681 (= e!1414915 tp_is_empty!9815)))

(assert (=> b!2214967 (= tp!688671 e!1414915)))

(declare-fun b!2215683 () Bool)

(declare-fun tp!689289 () Bool)

(assert (=> b!2215683 (= e!1414915 tp!689289)))

(declare-fun b!2215682 () Bool)

(declare-fun tp!689288 () Bool)

(declare-fun tp!689287 () Bool)

(assert (=> b!2215682 (= e!1414915 (and tp!689288 tp!689287))))

(declare-fun b!2215684 () Bool)

(declare-fun tp!689290 () Bool)

(declare-fun tp!689291 () Bool)

(assert (=> b!2215684 (= e!1414915 (and tp!689290 tp!689291))))

(assert (= (and b!2214967 ((_ is ElementMatch!6321) (regOne!13154 (regOne!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215681))

(assert (= (and b!2214967 ((_ is Concat!10635) (regOne!13154 (regOne!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215682))

(assert (= (and b!2214967 ((_ is Star!6321) (regOne!13154 (regOne!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215683))

(assert (= (and b!2214967 ((_ is Union!6321) (regOne!13154 (regOne!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215684))

(declare-fun b!2215685 () Bool)

(declare-fun e!1414916 () Bool)

(assert (=> b!2215685 (= e!1414916 tp_is_empty!9815)))

(assert (=> b!2214967 (= tp!688670 e!1414916)))

(declare-fun b!2215687 () Bool)

(declare-fun tp!689294 () Bool)

(assert (=> b!2215687 (= e!1414916 tp!689294)))

(declare-fun b!2215686 () Bool)

(declare-fun tp!689293 () Bool)

(declare-fun tp!689292 () Bool)

(assert (=> b!2215686 (= e!1414916 (and tp!689293 tp!689292))))

(declare-fun b!2215688 () Bool)

(declare-fun tp!689295 () Bool)

(declare-fun tp!689296 () Bool)

(assert (=> b!2215688 (= e!1414916 (and tp!689295 tp!689296))))

(assert (= (and b!2214967 ((_ is ElementMatch!6321) (regTwo!13154 (regOne!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215685))

(assert (= (and b!2214967 ((_ is Concat!10635) (regTwo!13154 (regOne!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215686))

(assert (= (and b!2214967 ((_ is Star!6321) (regTwo!13154 (regOne!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215687))

(assert (= (and b!2214967 ((_ is Union!6321) (regTwo!13154 (regOne!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215688))

(declare-fun b!2215689 () Bool)

(declare-fun e!1414917 () Bool)

(assert (=> b!2215689 (= e!1414917 tp_is_empty!9815)))

(assert (=> b!2214992 (= tp!688702 e!1414917)))

(declare-fun b!2215691 () Bool)

(declare-fun tp!689299 () Bool)

(assert (=> b!2215691 (= e!1414917 tp!689299)))

(declare-fun b!2215690 () Bool)

(declare-fun tp!689298 () Bool)

(declare-fun tp!689297 () Bool)

(assert (=> b!2215690 (= e!1414917 (and tp!689298 tp!689297))))

(declare-fun b!2215692 () Bool)

(declare-fun tp!689300 () Bool)

(declare-fun tp!689301 () Bool)

(assert (=> b!2215692 (= e!1414917 (and tp!689300 tp!689301))))

(assert (= (and b!2214992 ((_ is ElementMatch!6321) (reg!6650 (regTwo!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215689))

(assert (= (and b!2214992 ((_ is Concat!10635) (reg!6650 (regTwo!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215690))

(assert (= (and b!2214992 ((_ is Star!6321) (reg!6650 (regTwo!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215691))

(assert (= (and b!2214992 ((_ is Union!6321) (reg!6650 (regTwo!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215692))

(declare-fun b!2215693 () Bool)

(declare-fun e!1414918 () Bool)

(assert (=> b!2215693 (= e!1414918 tp_is_empty!9815)))

(assert (=> b!2214983 (= tp!688691 e!1414918)))

(declare-fun b!2215695 () Bool)

(declare-fun tp!689304 () Bool)

(assert (=> b!2215695 (= e!1414918 tp!689304)))

(declare-fun b!2215694 () Bool)

(declare-fun tp!689303 () Bool)

(declare-fun tp!689302 () Bool)

(assert (=> b!2215694 (= e!1414918 (and tp!689303 tp!689302))))

(declare-fun b!2215696 () Bool)

(declare-fun tp!689305 () Bool)

(declare-fun tp!689306 () Bool)

(assert (=> b!2215696 (= e!1414918 (and tp!689305 tp!689306))))

(assert (= (and b!2214983 ((_ is ElementMatch!6321) (regOne!13154 (reg!6650 (regex!4177 (h!31321 rules!4462)))))) b!2215693))

(assert (= (and b!2214983 ((_ is Concat!10635) (regOne!13154 (reg!6650 (regex!4177 (h!31321 rules!4462)))))) b!2215694))

(assert (= (and b!2214983 ((_ is Star!6321) (regOne!13154 (reg!6650 (regex!4177 (h!31321 rules!4462)))))) b!2215695))

(assert (= (and b!2214983 ((_ is Union!6321) (regOne!13154 (reg!6650 (regex!4177 (h!31321 rules!4462)))))) b!2215696))

(declare-fun b!2215697 () Bool)

(declare-fun e!1414919 () Bool)

(assert (=> b!2215697 (= e!1414919 tp_is_empty!9815)))

(assert (=> b!2214983 (= tp!688690 e!1414919)))

(declare-fun b!2215699 () Bool)

(declare-fun tp!689309 () Bool)

(assert (=> b!2215699 (= e!1414919 tp!689309)))

(declare-fun b!2215698 () Bool)

(declare-fun tp!689308 () Bool)

(declare-fun tp!689307 () Bool)

(assert (=> b!2215698 (= e!1414919 (and tp!689308 tp!689307))))

(declare-fun b!2215700 () Bool)

(declare-fun tp!689310 () Bool)

(declare-fun tp!689311 () Bool)

(assert (=> b!2215700 (= e!1414919 (and tp!689310 tp!689311))))

(assert (= (and b!2214983 ((_ is ElementMatch!6321) (regTwo!13154 (reg!6650 (regex!4177 (h!31321 rules!4462)))))) b!2215697))

(assert (= (and b!2214983 ((_ is Concat!10635) (regTwo!13154 (reg!6650 (regex!4177 (h!31321 rules!4462)))))) b!2215698))

(assert (= (and b!2214983 ((_ is Star!6321) (regTwo!13154 (reg!6650 (regex!4177 (h!31321 rules!4462)))))) b!2215699))

(assert (= (and b!2214983 ((_ is Union!6321) (regTwo!13154 (reg!6650 (regex!4177 (h!31321 rules!4462)))))) b!2215700))

(declare-fun b!2215701 () Bool)

(declare-fun e!1414920 () Bool)

(assert (=> b!2215701 (= e!1414920 tp_is_empty!9815)))

(assert (=> b!2214952 (= tp!688652 e!1414920)))

(declare-fun b!2215703 () Bool)

(declare-fun tp!689314 () Bool)

(assert (=> b!2215703 (= e!1414920 tp!689314)))

(declare-fun b!2215702 () Bool)

(declare-fun tp!689313 () Bool)

(declare-fun tp!689312 () Bool)

(assert (=> b!2215702 (= e!1414920 (and tp!689313 tp!689312))))

(declare-fun b!2215704 () Bool)

(declare-fun tp!689315 () Bool)

(declare-fun tp!689316 () Bool)

(assert (=> b!2215704 (= e!1414920 (and tp!689315 tp!689316))))

(assert (= (and b!2214952 ((_ is ElementMatch!6321) (regOne!13155 (reg!6650 (regex!4177 (rule!6477 t1!61)))))) b!2215701))

(assert (= (and b!2214952 ((_ is Concat!10635) (regOne!13155 (reg!6650 (regex!4177 (rule!6477 t1!61)))))) b!2215702))

(assert (= (and b!2214952 ((_ is Star!6321) (regOne!13155 (reg!6650 (regex!4177 (rule!6477 t1!61)))))) b!2215703))

(assert (= (and b!2214952 ((_ is Union!6321) (regOne!13155 (reg!6650 (regex!4177 (rule!6477 t1!61)))))) b!2215704))

(declare-fun b!2215705 () Bool)

(declare-fun e!1414921 () Bool)

(assert (=> b!2215705 (= e!1414921 tp_is_empty!9815)))

(assert (=> b!2214952 (= tp!688653 e!1414921)))

(declare-fun b!2215707 () Bool)

(declare-fun tp!689319 () Bool)

(assert (=> b!2215707 (= e!1414921 tp!689319)))

(declare-fun b!2215706 () Bool)

(declare-fun tp!689318 () Bool)

(declare-fun tp!689317 () Bool)

(assert (=> b!2215706 (= e!1414921 (and tp!689318 tp!689317))))

(declare-fun b!2215708 () Bool)

(declare-fun tp!689320 () Bool)

(declare-fun tp!689321 () Bool)

(assert (=> b!2215708 (= e!1414921 (and tp!689320 tp!689321))))

(assert (= (and b!2214952 ((_ is ElementMatch!6321) (regTwo!13155 (reg!6650 (regex!4177 (rule!6477 t1!61)))))) b!2215705))

(assert (= (and b!2214952 ((_ is Concat!10635) (regTwo!13155 (reg!6650 (regex!4177 (rule!6477 t1!61)))))) b!2215706))

(assert (= (and b!2214952 ((_ is Star!6321) (regTwo!13155 (reg!6650 (regex!4177 (rule!6477 t1!61)))))) b!2215707))

(assert (= (and b!2214952 ((_ is Union!6321) (regTwo!13155 (reg!6650 (regex!4177 (rule!6477 t1!61)))))) b!2215708))

(declare-fun b!2215709 () Bool)

(declare-fun e!1414922 () Bool)

(declare-fun tp!689322 () Bool)

(assert (=> b!2215709 (= e!1414922 (and tp_is_empty!9815 tp!689322))))

(assert (=> b!2215006 (= tp!688717 e!1414922)))

(assert (= (and b!2215006 ((_ is Cons!25918) (innerList!8539 (xs!11421 (c!353863 (dynLambda!11469 (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (value!131777 t2!61))))))) b!2215709))

(declare-fun b!2215710 () Bool)

(declare-fun e!1414923 () Bool)

(assert (=> b!2215710 (= e!1414923 tp_is_empty!9815)))

(assert (=> b!2214939 (= tp!688636 e!1414923)))

(declare-fun b!2215712 () Bool)

(declare-fun tp!689325 () Bool)

(assert (=> b!2215712 (= e!1414923 tp!689325)))

(declare-fun b!2215711 () Bool)

(declare-fun tp!689324 () Bool)

(declare-fun tp!689323 () Bool)

(assert (=> b!2215711 (= e!1414923 (and tp!689324 tp!689323))))

(declare-fun b!2215713 () Bool)

(declare-fun tp!689326 () Bool)

(declare-fun tp!689327 () Bool)

(assert (=> b!2215713 (= e!1414923 (and tp!689326 tp!689327))))

(assert (= (and b!2214939 ((_ is ElementMatch!6321) (regOne!13155 (regex!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) b!2215710))

(assert (= (and b!2214939 ((_ is Concat!10635) (regOne!13155 (regex!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) b!2215711))

(assert (= (and b!2214939 ((_ is Star!6321) (regOne!13155 (regex!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) b!2215712))

(assert (= (and b!2214939 ((_ is Union!6321) (regOne!13155 (regex!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) b!2215713))

(declare-fun b!2215714 () Bool)

(declare-fun e!1414924 () Bool)

(assert (=> b!2215714 (= e!1414924 tp_is_empty!9815)))

(assert (=> b!2214939 (= tp!688637 e!1414924)))

(declare-fun b!2215716 () Bool)

(declare-fun tp!689330 () Bool)

(assert (=> b!2215716 (= e!1414924 tp!689330)))

(declare-fun b!2215715 () Bool)

(declare-fun tp!689329 () Bool)

(declare-fun tp!689328 () Bool)

(assert (=> b!2215715 (= e!1414924 (and tp!689329 tp!689328))))

(declare-fun b!2215717 () Bool)

(declare-fun tp!689331 () Bool)

(declare-fun tp!689332 () Bool)

(assert (=> b!2215717 (= e!1414924 (and tp!689331 tp!689332))))

(assert (= (and b!2214939 ((_ is ElementMatch!6321) (regTwo!13155 (regex!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) b!2215714))

(assert (= (and b!2214939 ((_ is Concat!10635) (regTwo!13155 (regex!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) b!2215715))

(assert (= (and b!2214939 ((_ is Star!6321) (regTwo!13155 (regex!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) b!2215716))

(assert (= (and b!2214939 ((_ is Union!6321) (regTwo!13155 (regex!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) b!2215717))

(declare-fun b!2215718 () Bool)

(declare-fun e!1414925 () Bool)

(declare-fun tp!689333 () Bool)

(assert (=> b!2215718 (= e!1414925 (and tp_is_empty!9815 tp!689333))))

(assert (=> b!2215007 (= tp!688720 e!1414925)))

(assert (= (and b!2215007 ((_ is Cons!25918) (t!198858 (t!198858 (originalCharacters!4949 (h!31320 l!6601)))))) b!2215718))

(declare-fun b!2215719 () Bool)

(declare-fun e!1414926 () Bool)

(assert (=> b!2215719 (= e!1414926 tp_is_empty!9815)))

(assert (=> b!2214961 (= tp!688663 e!1414926)))

(declare-fun b!2215721 () Bool)

(declare-fun tp!689336 () Bool)

(assert (=> b!2215721 (= e!1414926 tp!689336)))

(declare-fun b!2215720 () Bool)

(declare-fun tp!689335 () Bool)

(declare-fun tp!689334 () Bool)

(assert (=> b!2215720 (= e!1414926 (and tp!689335 tp!689334))))

(declare-fun b!2215722 () Bool)

(declare-fun tp!689337 () Bool)

(declare-fun tp!689338 () Bool)

(assert (=> b!2215722 (= e!1414926 (and tp!689337 tp!689338))))

(assert (= (and b!2214961 ((_ is ElementMatch!6321) (regOne!13155 (regOne!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215719))

(assert (= (and b!2214961 ((_ is Concat!10635) (regOne!13155 (regOne!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215720))

(assert (= (and b!2214961 ((_ is Star!6321) (regOne!13155 (regOne!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215721))

(assert (= (and b!2214961 ((_ is Union!6321) (regOne!13155 (regOne!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215722))

(declare-fun b!2215723 () Bool)

(declare-fun e!1414927 () Bool)

(assert (=> b!2215723 (= e!1414927 tp_is_empty!9815)))

(assert (=> b!2214961 (= tp!688664 e!1414927)))

(declare-fun b!2215725 () Bool)

(declare-fun tp!689341 () Bool)

(assert (=> b!2215725 (= e!1414927 tp!689341)))

(declare-fun b!2215724 () Bool)

(declare-fun tp!689340 () Bool)

(declare-fun tp!689339 () Bool)

(assert (=> b!2215724 (= e!1414927 (and tp!689340 tp!689339))))

(declare-fun b!2215726 () Bool)

(declare-fun tp!689342 () Bool)

(declare-fun tp!689343 () Bool)

(assert (=> b!2215726 (= e!1414927 (and tp!689342 tp!689343))))

(assert (= (and b!2214961 ((_ is ElementMatch!6321) (regTwo!13155 (regOne!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215723))

(assert (= (and b!2214961 ((_ is Concat!10635) (regTwo!13155 (regOne!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215724))

(assert (= (and b!2214961 ((_ is Star!6321) (regTwo!13155 (regOne!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215725))

(assert (= (and b!2214961 ((_ is Union!6321) (regTwo!13155 (regOne!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215726))

(declare-fun b!2215727 () Bool)

(declare-fun e!1414928 () Bool)

(assert (=> b!2215727 (= e!1414928 tp_is_empty!9815)))

(assert (=> b!2215023 (= tp!688739 e!1414928)))

(declare-fun b!2215729 () Bool)

(declare-fun tp!689346 () Bool)

(assert (=> b!2215729 (= e!1414928 tp!689346)))

(declare-fun b!2215728 () Bool)

(declare-fun tp!689345 () Bool)

(declare-fun tp!689344 () Bool)

(assert (=> b!2215728 (= e!1414928 (and tp!689345 tp!689344))))

(declare-fun b!2215730 () Bool)

(declare-fun tp!689347 () Bool)

(declare-fun tp!689348 () Bool)

(assert (=> b!2215730 (= e!1414928 (and tp!689347 tp!689348))))

(assert (= (and b!2215023 ((_ is ElementMatch!6321) (regOne!13155 (regOne!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215727))

(assert (= (and b!2215023 ((_ is Concat!10635) (regOne!13155 (regOne!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215728))

(assert (= (and b!2215023 ((_ is Star!6321) (regOne!13155 (regOne!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215729))

(assert (= (and b!2215023 ((_ is Union!6321) (regOne!13155 (regOne!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215730))

(declare-fun b!2215731 () Bool)

(declare-fun e!1414929 () Bool)

(assert (=> b!2215731 (= e!1414929 tp_is_empty!9815)))

(assert (=> b!2215023 (= tp!688740 e!1414929)))

(declare-fun b!2215733 () Bool)

(declare-fun tp!689351 () Bool)

(assert (=> b!2215733 (= e!1414929 tp!689351)))

(declare-fun b!2215732 () Bool)

(declare-fun tp!689350 () Bool)

(declare-fun tp!689349 () Bool)

(assert (=> b!2215732 (= e!1414929 (and tp!689350 tp!689349))))

(declare-fun b!2215734 () Bool)

(declare-fun tp!689352 () Bool)

(declare-fun tp!689353 () Bool)

(assert (=> b!2215734 (= e!1414929 (and tp!689352 tp!689353))))

(assert (= (and b!2215023 ((_ is ElementMatch!6321) (regTwo!13155 (regOne!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215731))

(assert (= (and b!2215023 ((_ is Concat!10635) (regTwo!13155 (regOne!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215732))

(assert (= (and b!2215023 ((_ is Star!6321) (regTwo!13155 (regOne!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215733))

(assert (= (and b!2215023 ((_ is Union!6321) (regTwo!13155 (regOne!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215734))

(declare-fun b!2215735 () Bool)

(declare-fun e!1414930 () Bool)

(assert (=> b!2215735 (= e!1414930 tp_is_empty!9815)))

(assert (=> b!2214915 (= tp!688611 e!1414930)))

(declare-fun b!2215737 () Bool)

(declare-fun tp!689356 () Bool)

(assert (=> b!2215737 (= e!1414930 tp!689356)))

(declare-fun b!2215736 () Bool)

(declare-fun tp!689355 () Bool)

(declare-fun tp!689354 () Bool)

(assert (=> b!2215736 (= e!1414930 (and tp!689355 tp!689354))))

(declare-fun b!2215738 () Bool)

(declare-fun tp!689357 () Bool)

(declare-fun tp!689358 () Bool)

(assert (=> b!2215738 (= e!1414930 (and tp!689357 tp!689358))))

(assert (= (and b!2214915 ((_ is ElementMatch!6321) (reg!6650 (reg!6650 (regex!4177 (rule!6477 t2!61)))))) b!2215735))

(assert (= (and b!2214915 ((_ is Concat!10635) (reg!6650 (reg!6650 (regex!4177 (rule!6477 t2!61)))))) b!2215736))

(assert (= (and b!2214915 ((_ is Star!6321) (reg!6650 (reg!6650 (regex!4177 (rule!6477 t2!61)))))) b!2215737))

(assert (= (and b!2214915 ((_ is Union!6321) (reg!6650 (reg!6650 (regex!4177 (rule!6477 t2!61)))))) b!2215738))

(declare-fun b!2215739 () Bool)

(declare-fun e!1414931 () Bool)

(assert (=> b!2215739 (= e!1414931 tp_is_empty!9815)))

(assert (=> b!2215014 (= tp!688728 e!1414931)))

(declare-fun b!2215741 () Bool)

(declare-fun tp!689361 () Bool)

(assert (=> b!2215741 (= e!1414931 tp!689361)))

(declare-fun b!2215740 () Bool)

(declare-fun tp!689360 () Bool)

(declare-fun tp!689359 () Bool)

(assert (=> b!2215740 (= e!1414931 (and tp!689360 tp!689359))))

(declare-fun b!2215742 () Bool)

(declare-fun tp!689362 () Bool)

(declare-fun tp!689363 () Bool)

(assert (=> b!2215742 (= e!1414931 (and tp!689362 tp!689363))))

(assert (= (and b!2215014 ((_ is ElementMatch!6321) (reg!6650 (regTwo!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215739))

(assert (= (and b!2215014 ((_ is Concat!10635) (reg!6650 (regTwo!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215740))

(assert (= (and b!2215014 ((_ is Star!6321) (reg!6650 (regTwo!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215741))

(assert (= (and b!2215014 ((_ is Union!6321) (reg!6650 (regTwo!13155 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215742))

(declare-fun b!2215743 () Bool)

(declare-fun e!1414932 () Bool)

(assert (=> b!2215743 (= e!1414932 tp_is_empty!9815)))

(assert (=> b!2214937 (= tp!688634 e!1414932)))

(declare-fun b!2215745 () Bool)

(declare-fun tp!689366 () Bool)

(assert (=> b!2215745 (= e!1414932 tp!689366)))

(declare-fun b!2215744 () Bool)

(declare-fun tp!689365 () Bool)

(declare-fun tp!689364 () Bool)

(assert (=> b!2215744 (= e!1414932 (and tp!689365 tp!689364))))

(declare-fun b!2215746 () Bool)

(declare-fun tp!689367 () Bool)

(declare-fun tp!689368 () Bool)

(assert (=> b!2215746 (= e!1414932 (and tp!689367 tp!689368))))

(assert (= (and b!2214937 ((_ is ElementMatch!6321) (regOne!13154 (regex!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) b!2215743))

(assert (= (and b!2214937 ((_ is Concat!10635) (regOne!13154 (regex!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) b!2215744))

(assert (= (and b!2214937 ((_ is Star!6321) (regOne!13154 (regex!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) b!2215745))

(assert (= (and b!2214937 ((_ is Union!6321) (regOne!13154 (regex!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) b!2215746))

(declare-fun b!2215747 () Bool)

(declare-fun e!1414933 () Bool)

(assert (=> b!2215747 (= e!1414933 tp_is_empty!9815)))

(assert (=> b!2214937 (= tp!688633 e!1414933)))

(declare-fun b!2215749 () Bool)

(declare-fun tp!689371 () Bool)

(assert (=> b!2215749 (= e!1414933 tp!689371)))

(declare-fun b!2215748 () Bool)

(declare-fun tp!689370 () Bool)

(declare-fun tp!689369 () Bool)

(assert (=> b!2215748 (= e!1414933 (and tp!689370 tp!689369))))

(declare-fun b!2215750 () Bool)

(declare-fun tp!689372 () Bool)

(declare-fun tp!689373 () Bool)

(assert (=> b!2215750 (= e!1414933 (and tp!689372 tp!689373))))

(assert (= (and b!2214937 ((_ is ElementMatch!6321) (regTwo!13154 (regex!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) b!2215747))

(assert (= (and b!2214937 ((_ is Concat!10635) (regTwo!13154 (regex!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) b!2215748))

(assert (= (and b!2214937 ((_ is Star!6321) (regTwo!13154 (regex!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) b!2215749))

(assert (= (and b!2214937 ((_ is Union!6321) (regTwo!13154 (regex!4177 (rule!6477 (h!31320 (t!198859 l!6601))))))) b!2215750))

(declare-fun b!2215751 () Bool)

(declare-fun e!1414934 () Bool)

(assert (=> b!2215751 (= e!1414934 tp_is_empty!9815)))

(assert (=> b!2214946 (= tp!688645 e!1414934)))

(declare-fun b!2215753 () Bool)

(declare-fun tp!689376 () Bool)

(assert (=> b!2215753 (= e!1414934 tp!689376)))

(declare-fun b!2215752 () Bool)

(declare-fun tp!689375 () Bool)

(declare-fun tp!689374 () Bool)

(assert (=> b!2215752 (= e!1414934 (and tp!689375 tp!689374))))

(declare-fun b!2215754 () Bool)

(declare-fun tp!689377 () Bool)

(declare-fun tp!689378 () Bool)

(assert (=> b!2215754 (= e!1414934 (and tp!689377 tp!689378))))

(assert (= (and b!2214946 ((_ is ElementMatch!6321) (reg!6650 (regTwo!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215751))

(assert (= (and b!2214946 ((_ is Concat!10635) (reg!6650 (regTwo!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215752))

(assert (= (and b!2214946 ((_ is Star!6321) (reg!6650 (regTwo!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215753))

(assert (= (and b!2214946 ((_ is Union!6321) (reg!6650 (regTwo!13154 (regex!4177 (rule!6477 t2!61)))))) b!2215754))

(declare-fun b!2215755 () Bool)

(declare-fun e!1414935 () Bool)

(assert (=> b!2215755 (= e!1414935 tp_is_empty!9815)))

(assert (=> b!2214977 (= tp!688683 e!1414935)))

(declare-fun b!2215757 () Bool)

(declare-fun tp!689381 () Bool)

(assert (=> b!2215757 (= e!1414935 tp!689381)))

(declare-fun b!2215756 () Bool)

(declare-fun tp!689380 () Bool)

(declare-fun tp!689379 () Bool)

(assert (=> b!2215756 (= e!1414935 (and tp!689380 tp!689379))))

(declare-fun b!2215758 () Bool)

(declare-fun tp!689382 () Bool)

(declare-fun tp!689383 () Bool)

(assert (=> b!2215758 (= e!1414935 (and tp!689382 tp!689383))))

(assert (= (and b!2214977 ((_ is ElementMatch!6321) (regOne!13155 (regOne!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215755))

(assert (= (and b!2214977 ((_ is Concat!10635) (regOne!13155 (regOne!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215756))

(assert (= (and b!2214977 ((_ is Star!6321) (regOne!13155 (regOne!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215757))

(assert (= (and b!2214977 ((_ is Union!6321) (regOne!13155 (regOne!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215758))

(declare-fun b!2215759 () Bool)

(declare-fun e!1414936 () Bool)

(assert (=> b!2215759 (= e!1414936 tp_is_empty!9815)))

(assert (=> b!2214977 (= tp!688684 e!1414936)))

(declare-fun b!2215761 () Bool)

(declare-fun tp!689386 () Bool)

(assert (=> b!2215761 (= e!1414936 tp!689386)))

(declare-fun b!2215760 () Bool)

(declare-fun tp!689385 () Bool)

(declare-fun tp!689384 () Bool)

(assert (=> b!2215760 (= e!1414936 (and tp!689385 tp!689384))))

(declare-fun b!2215762 () Bool)

(declare-fun tp!689387 () Bool)

(declare-fun tp!689388 () Bool)

(assert (=> b!2215762 (= e!1414936 (and tp!689387 tp!689388))))

(assert (= (and b!2214977 ((_ is ElementMatch!6321) (regTwo!13155 (regOne!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215759))

(assert (= (and b!2214977 ((_ is Concat!10635) (regTwo!13155 (regOne!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215760))

(assert (= (and b!2214977 ((_ is Star!6321) (regTwo!13155 (regOne!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215761))

(assert (= (and b!2214977 ((_ is Union!6321) (regTwo!13155 (regOne!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215762))

(declare-fun b!2215763 () Bool)

(declare-fun e!1414937 () Bool)

(assert (=> b!2215763 (= e!1414937 tp_is_empty!9815)))

(assert (=> b!2214968 (= tp!688672 e!1414937)))

(declare-fun b!2215765 () Bool)

(declare-fun tp!689391 () Bool)

(assert (=> b!2215765 (= e!1414937 tp!689391)))

(declare-fun b!2215764 () Bool)

(declare-fun tp!689390 () Bool)

(declare-fun tp!689389 () Bool)

(assert (=> b!2215764 (= e!1414937 (and tp!689390 tp!689389))))

(declare-fun b!2215766 () Bool)

(declare-fun tp!689392 () Bool)

(declare-fun tp!689393 () Bool)

(assert (=> b!2215766 (= e!1414937 (and tp!689392 tp!689393))))

(assert (= (and b!2214968 ((_ is ElementMatch!6321) (reg!6650 (regOne!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215763))

(assert (= (and b!2214968 ((_ is Concat!10635) (reg!6650 (regOne!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215764))

(assert (= (and b!2214968 ((_ is Star!6321) (reg!6650 (regOne!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215765))

(assert (= (and b!2214968 ((_ is Union!6321) (reg!6650 (regOne!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215766))

(declare-fun b!2215767 () Bool)

(declare-fun e!1414938 () Bool)

(assert (=> b!2215767 (= e!1414938 tp_is_empty!9815)))

(assert (=> b!2214924 (= tp!688622 e!1414938)))

(declare-fun b!2215769 () Bool)

(declare-fun tp!689396 () Bool)

(assert (=> b!2215769 (= e!1414938 tp!689396)))

(declare-fun b!2215768 () Bool)

(declare-fun tp!689395 () Bool)

(declare-fun tp!689394 () Bool)

(assert (=> b!2215768 (= e!1414938 (and tp!689395 tp!689394))))

(declare-fun b!2215770 () Bool)

(declare-fun tp!689397 () Bool)

(declare-fun tp!689398 () Bool)

(assert (=> b!2215770 (= e!1414938 (and tp!689397 tp!689398))))

(assert (= (and b!2214924 ((_ is ElementMatch!6321) (regOne!13155 (regTwo!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215767))

(assert (= (and b!2214924 ((_ is Concat!10635) (regOne!13155 (regTwo!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215768))

(assert (= (and b!2214924 ((_ is Star!6321) (regOne!13155 (regTwo!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215769))

(assert (= (and b!2214924 ((_ is Union!6321) (regOne!13155 (regTwo!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215770))

(declare-fun b!2215771 () Bool)

(declare-fun e!1414939 () Bool)

(assert (=> b!2215771 (= e!1414939 tp_is_empty!9815)))

(assert (=> b!2214924 (= tp!688623 e!1414939)))

(declare-fun b!2215773 () Bool)

(declare-fun tp!689401 () Bool)

(assert (=> b!2215773 (= e!1414939 tp!689401)))

(declare-fun b!2215772 () Bool)

(declare-fun tp!689400 () Bool)

(declare-fun tp!689399 () Bool)

(assert (=> b!2215772 (= e!1414939 (and tp!689400 tp!689399))))

(declare-fun b!2215774 () Bool)

(declare-fun tp!689402 () Bool)

(declare-fun tp!689403 () Bool)

(assert (=> b!2215774 (= e!1414939 (and tp!689402 tp!689403))))

(assert (= (and b!2214924 ((_ is ElementMatch!6321) (regTwo!13155 (regTwo!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215771))

(assert (= (and b!2214924 ((_ is Concat!10635) (regTwo!13155 (regTwo!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215772))

(assert (= (and b!2214924 ((_ is Star!6321) (regTwo!13155 (regTwo!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215773))

(assert (= (and b!2214924 ((_ is Union!6321) (regTwo!13155 (regTwo!13155 (regex!4177 (rule!6477 t1!61)))))) b!2215774))

(declare-fun b!2215775 () Bool)

(declare-fun e!1414940 () Bool)

(assert (=> b!2215775 (= e!1414940 tp_is_empty!9815)))

(assert (=> b!2214959 (= tp!688661 e!1414940)))

(declare-fun b!2215777 () Bool)

(declare-fun tp!689406 () Bool)

(assert (=> b!2215777 (= e!1414940 tp!689406)))

(declare-fun b!2215776 () Bool)

(declare-fun tp!689405 () Bool)

(declare-fun tp!689404 () Bool)

(assert (=> b!2215776 (= e!1414940 (and tp!689405 tp!689404))))

(declare-fun b!2215778 () Bool)

(declare-fun tp!689407 () Bool)

(declare-fun tp!689408 () Bool)

(assert (=> b!2215778 (= e!1414940 (and tp!689407 tp!689408))))

(assert (= (and b!2214959 ((_ is ElementMatch!6321) (regOne!13154 (regOne!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215775))

(assert (= (and b!2214959 ((_ is Concat!10635) (regOne!13154 (regOne!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215776))

(assert (= (and b!2214959 ((_ is Star!6321) (regOne!13154 (regOne!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215777))

(assert (= (and b!2214959 ((_ is Union!6321) (regOne!13154 (regOne!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215778))

(declare-fun b!2215779 () Bool)

(declare-fun e!1414941 () Bool)

(assert (=> b!2215779 (= e!1414941 tp_is_empty!9815)))

(assert (=> b!2214959 (= tp!688660 e!1414941)))

(declare-fun b!2215781 () Bool)

(declare-fun tp!689411 () Bool)

(assert (=> b!2215781 (= e!1414941 tp!689411)))

(declare-fun b!2215780 () Bool)

(declare-fun tp!689410 () Bool)

(declare-fun tp!689409 () Bool)

(assert (=> b!2215780 (= e!1414941 (and tp!689410 tp!689409))))

(declare-fun b!2215782 () Bool)

(declare-fun tp!689412 () Bool)

(declare-fun tp!689413 () Bool)

(assert (=> b!2215782 (= e!1414941 (and tp!689412 tp!689413))))

(assert (= (and b!2214959 ((_ is ElementMatch!6321) (regTwo!13154 (regOne!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215779))

(assert (= (and b!2214959 ((_ is Concat!10635) (regTwo!13154 (regOne!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215780))

(assert (= (and b!2214959 ((_ is Star!6321) (regTwo!13154 (regOne!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215781))

(assert (= (and b!2214959 ((_ is Union!6321) (regTwo!13154 (regOne!13154 (regex!4177 (rule!6477 t1!61)))))) b!2215782))

(declare-fun b!2215783 () Bool)

(declare-fun e!1414942 () Bool)

(assert (=> b!2215783 (= e!1414942 tp_is_empty!9815)))

(assert (=> b!2215025 (= tp!688742 e!1414942)))

(declare-fun b!2215785 () Bool)

(declare-fun tp!689416 () Bool)

(assert (=> b!2215785 (= e!1414942 tp!689416)))

(declare-fun b!2215784 () Bool)

(declare-fun tp!689415 () Bool)

(declare-fun tp!689414 () Bool)

(assert (=> b!2215784 (= e!1414942 (and tp!689415 tp!689414))))

(declare-fun b!2215786 () Bool)

(declare-fun tp!689417 () Bool)

(declare-fun tp!689418 () Bool)

(assert (=> b!2215786 (= e!1414942 (and tp!689417 tp!689418))))

(assert (= (and b!2215025 ((_ is ElementMatch!6321) (regOne!13154 (regTwo!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215783))

(assert (= (and b!2215025 ((_ is Concat!10635) (regOne!13154 (regTwo!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215784))

(assert (= (and b!2215025 ((_ is Star!6321) (regOne!13154 (regTwo!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215785))

(assert (= (and b!2215025 ((_ is Union!6321) (regOne!13154 (regTwo!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215786))

(declare-fun b!2215787 () Bool)

(declare-fun e!1414943 () Bool)

(assert (=> b!2215787 (= e!1414943 tp_is_empty!9815)))

(assert (=> b!2215025 (= tp!688741 e!1414943)))

(declare-fun b!2215789 () Bool)

(declare-fun tp!689421 () Bool)

(assert (=> b!2215789 (= e!1414943 tp!689421)))

(declare-fun b!2215788 () Bool)

(declare-fun tp!689420 () Bool)

(declare-fun tp!689419 () Bool)

(assert (=> b!2215788 (= e!1414943 (and tp!689420 tp!689419))))

(declare-fun b!2215790 () Bool)

(declare-fun tp!689422 () Bool)

(declare-fun tp!689423 () Bool)

(assert (=> b!2215790 (= e!1414943 (and tp!689422 tp!689423))))

(assert (= (and b!2215025 ((_ is ElementMatch!6321) (regTwo!13154 (regTwo!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215787))

(assert (= (and b!2215025 ((_ is Concat!10635) (regTwo!13154 (regTwo!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215788))

(assert (= (and b!2215025 ((_ is Star!6321) (regTwo!13154 (regTwo!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215789))

(assert (= (and b!2215025 ((_ is Union!6321) (regTwo!13154 (regTwo!13154 (regex!4177 (rule!6477 (h!31320 l!6601))))))) b!2215790))

(declare-fun b!2215794 () Bool)

(declare-fun b_free!64065 () Bool)

(declare-fun b_next!64769 () Bool)

(assert (=> b!2215794 (= b_free!64065 (not b_next!64769))))

(declare-fun tp!689424 () Bool)

(declare-fun b_and!173835 () Bool)

(assert (=> b!2215794 (= tp!689424 b_and!173835)))

(declare-fun b_free!64067 () Bool)

(declare-fun b_next!64771 () Bool)

(assert (=> b!2215794 (= b_free!64067 (not b_next!64771))))

(declare-fun tb!132535 () Bool)

(declare-fun t!199018 () Bool)

(assert (=> (and b!2215794 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 (t!198859 l!6601))))))) (toChars!5747 (transformation!4177 (rule!6477 t1!61)))) t!199018) tb!132535))

(declare-fun result!160792 () Bool)

(assert (= result!160792 result!160654))

(assert (=> b!2214684 t!199018))

(declare-fun tb!132537 () Bool)

(declare-fun t!199020 () Bool)

(assert (=> (and b!2215794 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 (t!198859 l!6601))))))) (toChars!5747 (transformation!4177 (rule!6477 t2!61)))) t!199020) tb!132537))

(declare-fun result!160794 () Bool)

(assert (= result!160794 result!160644))

(assert (=> b!2214677 t!199020))

(declare-fun t!199022 () Bool)

(declare-fun tb!132539 () Bool)

(assert (=> (and b!2215794 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 (t!198859 l!6601))))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601)))))) t!199022) tb!132539))

(declare-fun result!160796 () Bool)

(assert (= result!160796 result!160712))

(assert (=> b!2214886 t!199022))

(declare-fun t!199024 () Bool)

(declare-fun tb!132541 () Bool)

(assert (=> (and b!2215794 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 (t!198859 l!6601))))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601))))) t!199024) tb!132541))

(declare-fun result!160798 () Bool)

(assert (= result!160798 result!160662))

(assert (=> b!2214706 t!199024))

(declare-fun t!199026 () Bool)

(declare-fun tb!132543 () Bool)

(assert (=> (and b!2215794 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 (t!198859 l!6601))))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601))))))) t!199026) tb!132543))

(declare-fun result!160800 () Bool)

(assert (= result!160800 result!160776))

(assert (=> b!2215346 t!199026))

(declare-fun tp!689428 () Bool)

(declare-fun b_and!173837 () Bool)

(assert (=> b!2215794 (= tp!689428 (and (=> t!199020 result!160794) (=> t!199022 result!160796) (=> t!199024 result!160798) (=> t!199026 result!160800) (=> t!199018 result!160792) b_and!173837))))

(declare-fun b!2215793 () Bool)

(declare-fun e!1414949 () Bool)

(declare-fun tp!689426 () Bool)

(declare-fun e!1414947 () Bool)

(assert (=> b!2215793 (= e!1414947 (and tp!689426 (inv!35116 (tag!4667 (rule!6477 (h!31320 (t!198859 (t!198859 (t!198859 l!6601))))))) (inv!35120 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 (t!198859 l!6601))))))) e!1414949))))

(assert (=> b!2215794 (= e!1414949 (and tp!689424 tp!689428))))

(declare-fun b!2215792 () Bool)

(declare-fun e!1414946 () Bool)

(declare-fun tp!689425 () Bool)

(assert (=> b!2215792 (= e!1414946 (and (inv!21 (value!131777 (h!31320 (t!198859 (t!198859 (t!198859 l!6601)))))) e!1414947 tp!689425))))

(declare-fun e!1414948 () Bool)

(assert (=> b!2214954 (= tp!688658 e!1414948)))

(declare-fun tp!689427 () Bool)

(declare-fun b!2215791 () Bool)

(assert (=> b!2215791 (= e!1414948 (and (inv!35119 (h!31320 (t!198859 (t!198859 (t!198859 l!6601))))) e!1414946 tp!689427))))

(assert (= b!2215793 b!2215794))

(assert (= b!2215792 b!2215793))

(assert (= b!2215791 b!2215792))

(assert (= (and b!2214954 ((_ is Cons!25919) (t!198859 (t!198859 (t!198859 l!6601))))) b!2215791))

(declare-fun m!2657463 () Bool)

(assert (=> b!2215793 m!2657463))

(declare-fun m!2657465 () Bool)

(assert (=> b!2215793 m!2657465))

(declare-fun m!2657467 () Bool)

(assert (=> b!2215792 m!2657467))

(declare-fun m!2657469 () Bool)

(assert (=> b!2215791 m!2657469))

(declare-fun b!2215795 () Bool)

(declare-fun e!1414950 () Bool)

(assert (=> b!2215795 (= e!1414950 tp_is_empty!9815)))

(assert (=> b!2214981 (= tp!688688 e!1414950)))

(declare-fun b!2215797 () Bool)

(declare-fun tp!689431 () Bool)

(assert (=> b!2215797 (= e!1414950 tp!689431)))

(declare-fun b!2215796 () Bool)

(declare-fun tp!689430 () Bool)

(declare-fun tp!689429 () Bool)

(assert (=> b!2215796 (= e!1414950 (and tp!689430 tp!689429))))

(declare-fun b!2215798 () Bool)

(declare-fun tp!689432 () Bool)

(declare-fun tp!689433 () Bool)

(assert (=> b!2215798 (= e!1414950 (and tp!689432 tp!689433))))

(assert (= (and b!2214981 ((_ is ElementMatch!6321) (regOne!13155 (regTwo!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215795))

(assert (= (and b!2214981 ((_ is Concat!10635) (regOne!13155 (regTwo!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215796))

(assert (= (and b!2214981 ((_ is Star!6321) (regOne!13155 (regTwo!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215797))

(assert (= (and b!2214981 ((_ is Union!6321) (regOne!13155 (regTwo!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215798))

(declare-fun b!2215799 () Bool)

(declare-fun e!1414951 () Bool)

(assert (=> b!2215799 (= e!1414951 tp_is_empty!9815)))

(assert (=> b!2214981 (= tp!688689 e!1414951)))

(declare-fun b!2215801 () Bool)

(declare-fun tp!689436 () Bool)

(assert (=> b!2215801 (= e!1414951 tp!689436)))

(declare-fun b!2215800 () Bool)

(declare-fun tp!689435 () Bool)

(declare-fun tp!689434 () Bool)

(assert (=> b!2215800 (= e!1414951 (and tp!689435 tp!689434))))

(declare-fun b!2215802 () Bool)

(declare-fun tp!689437 () Bool)

(declare-fun tp!689438 () Bool)

(assert (=> b!2215802 (= e!1414951 (and tp!689437 tp!689438))))

(assert (= (and b!2214981 ((_ is ElementMatch!6321) (regTwo!13155 (regTwo!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215799))

(assert (= (and b!2214981 ((_ is Concat!10635) (regTwo!13155 (regTwo!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215800))

(assert (= (and b!2214981 ((_ is Star!6321) (regTwo!13155 (regTwo!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215801))

(assert (= (and b!2214981 ((_ is Union!6321) (regTwo!13155 (regTwo!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215802))

(declare-fun b!2215803 () Bool)

(declare-fun e!1414952 () Bool)

(assert (=> b!2215803 (= e!1414952 tp_is_empty!9815)))

(assert (=> b!2214972 (= tp!688677 e!1414952)))

(declare-fun b!2215805 () Bool)

(declare-fun tp!689441 () Bool)

(assert (=> b!2215805 (= e!1414952 tp!689441)))

(declare-fun b!2215804 () Bool)

(declare-fun tp!689440 () Bool)

(declare-fun tp!689439 () Bool)

(assert (=> b!2215804 (= e!1414952 (and tp!689440 tp!689439))))

(declare-fun b!2215806 () Bool)

(declare-fun tp!689442 () Bool)

(declare-fun tp!689443 () Bool)

(assert (=> b!2215806 (= e!1414952 (and tp!689442 tp!689443))))

(assert (= (and b!2214972 ((_ is ElementMatch!6321) (reg!6650 (regTwo!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215803))

(assert (= (and b!2214972 ((_ is Concat!10635) (reg!6650 (regTwo!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215804))

(assert (= (and b!2214972 ((_ is Star!6321) (reg!6650 (regTwo!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215805))

(assert (= (and b!2214972 ((_ is Union!6321) (reg!6650 (regTwo!13155 (regex!4177 (rule!6477 t2!61)))))) b!2215806))

(declare-fun b!2215807 () Bool)

(declare-fun e!1414953 () Bool)

(assert (=> b!2215807 (= e!1414953 tp_is_empty!9815)))

(assert (=> b!2214979 (= tp!688686 e!1414953)))

(declare-fun b!2215809 () Bool)

(declare-fun tp!689446 () Bool)

(assert (=> b!2215809 (= e!1414953 tp!689446)))

(declare-fun b!2215808 () Bool)

(declare-fun tp!689445 () Bool)

(declare-fun tp!689444 () Bool)

(assert (=> b!2215808 (= e!1414953 (and tp!689445 tp!689444))))

(declare-fun b!2215810 () Bool)

(declare-fun tp!689447 () Bool)

(declare-fun tp!689448 () Bool)

(assert (=> b!2215810 (= e!1414953 (and tp!689447 tp!689448))))

(assert (= (and b!2214979 ((_ is ElementMatch!6321) (regOne!13154 (regTwo!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215807))

(assert (= (and b!2214979 ((_ is Concat!10635) (regOne!13154 (regTwo!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215808))

(assert (= (and b!2214979 ((_ is Star!6321) (regOne!13154 (regTwo!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215809))

(assert (= (and b!2214979 ((_ is Union!6321) (regOne!13154 (regTwo!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215810))

(declare-fun b!2215811 () Bool)

(declare-fun e!1414954 () Bool)

(assert (=> b!2215811 (= e!1414954 tp_is_empty!9815)))

(assert (=> b!2214979 (= tp!688685 e!1414954)))

(declare-fun b!2215813 () Bool)

(declare-fun tp!689451 () Bool)

(assert (=> b!2215813 (= e!1414954 tp!689451)))

(declare-fun b!2215812 () Bool)

(declare-fun tp!689450 () Bool)

(declare-fun tp!689449 () Bool)

(assert (=> b!2215812 (= e!1414954 (and tp!689450 tp!689449))))

(declare-fun b!2215814 () Bool)

(declare-fun tp!689452 () Bool)

(declare-fun tp!689453 () Bool)

(assert (=> b!2215814 (= e!1414954 (and tp!689452 tp!689453))))

(assert (= (and b!2214979 ((_ is ElementMatch!6321) (regTwo!13154 (regTwo!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215811))

(assert (= (and b!2214979 ((_ is Concat!10635) (regTwo!13154 (regTwo!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215812))

(assert (= (and b!2214979 ((_ is Star!6321) (regTwo!13154 (regTwo!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215813))

(assert (= (and b!2214979 ((_ is Union!6321) (regTwo!13154 (regTwo!13155 (regex!4177 (h!31321 rules!4462)))))) b!2215814))

(declare-fun b!2215817 () Bool)

(declare-fun b_free!64069 () Bool)

(declare-fun b_next!64773 () Bool)

(assert (=> b!2215817 (= b_free!64069 (not b_next!64773))))

(declare-fun tp!689456 () Bool)

(declare-fun b_and!173839 () Bool)

(assert (=> b!2215817 (= tp!689456 b_and!173839)))

(declare-fun b_free!64071 () Bool)

(declare-fun b_next!64775 () Bool)

(assert (=> b!2215817 (= b_free!64071 (not b_next!64775))))

(declare-fun tb!132545 () Bool)

(declare-fun t!199028 () Bool)

(assert (=> (and b!2215817 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 (t!198860 (t!198860 rules!4462)))))) (toChars!5747 (transformation!4177 (rule!6477 t1!61)))) t!199028) tb!132545))

(declare-fun result!160802 () Bool)

(assert (= result!160802 result!160654))

(assert (=> b!2214684 t!199028))

(declare-fun t!199030 () Bool)

(declare-fun tb!132547 () Bool)

(assert (=> (and b!2215817 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 (t!198860 (t!198860 rules!4462)))))) (toChars!5747 (transformation!4177 (rule!6477 t2!61)))) t!199030) tb!132547))

(declare-fun result!160804 () Bool)

(assert (= result!160804 result!160644))

(assert (=> b!2214677 t!199030))

(declare-fun tb!132549 () Bool)

(declare-fun t!199032 () Bool)

(assert (=> (and b!2215817 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 (t!198860 (t!198860 rules!4462)))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601)))))) t!199032) tb!132549))

(declare-fun result!160806 () Bool)

(assert (= result!160806 result!160712))

(assert (=> b!2214886 t!199032))

(declare-fun t!199034 () Bool)

(declare-fun tb!132551 () Bool)

(assert (=> (and b!2215817 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 (t!198860 (t!198860 rules!4462)))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601))))) t!199034) tb!132551))

(declare-fun result!160808 () Bool)

(assert (= result!160808 result!160662))

(assert (=> b!2214706 t!199034))

(declare-fun t!199036 () Bool)

(declare-fun tb!132553 () Bool)

(assert (=> (and b!2215817 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 (t!198860 (t!198860 rules!4462)))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601))))))) t!199036) tb!132553))

(declare-fun result!160810 () Bool)

(assert (= result!160810 result!160776))

(assert (=> b!2215346 t!199036))

(declare-fun b_and!173841 () Bool)

(declare-fun tp!689455 () Bool)

(assert (=> b!2215817 (= tp!689455 (and (=> t!199036 result!160810) (=> t!199028 result!160802) (=> t!199034 result!160808) (=> t!199032 result!160806) (=> t!199030 result!160804) b_and!173841))))

(declare-fun e!1414958 () Bool)

(assert (=> b!2215817 (= e!1414958 (and tp!689456 tp!689455))))

(declare-fun e!1414956 () Bool)

(declare-fun b!2215816 () Bool)

(declare-fun tp!689457 () Bool)

(assert (=> b!2215816 (= e!1414956 (and tp!689457 (inv!35116 (tag!4667 (h!31321 (t!198860 (t!198860 (t!198860 rules!4462)))))) (inv!35120 (transformation!4177 (h!31321 (t!198860 (t!198860 (t!198860 rules!4462)))))) e!1414958))))

(declare-fun b!2215815 () Bool)

(declare-fun e!1414955 () Bool)

(declare-fun tp!689454 () Bool)

(assert (=> b!2215815 (= e!1414955 (and e!1414956 tp!689454))))

(assert (=> b!2215001 (= tp!688713 e!1414955)))

(assert (= b!2215816 b!2215817))

(assert (= b!2215815 b!2215816))

(assert (= (and b!2215001 ((_ is Cons!25920) (t!198860 (t!198860 (t!198860 rules!4462))))) b!2215815))

(declare-fun m!2657471 () Bool)

(assert (=> b!2215816 m!2657471))

(declare-fun m!2657473 () Bool)

(assert (=> b!2215816 m!2657473))

(declare-fun b!2215818 () Bool)

(declare-fun e!1414959 () Bool)

(assert (=> b!2215818 (= e!1414959 tp_is_empty!9815)))

(assert (=> b!2214997 (= tp!688708 e!1414959)))

(declare-fun b!2215820 () Bool)

(declare-fun tp!689460 () Bool)

(assert (=> b!2215820 (= e!1414959 tp!689460)))

(declare-fun b!2215819 () Bool)

(declare-fun tp!689459 () Bool)

(declare-fun tp!689458 () Bool)

(assert (=> b!2215819 (= e!1414959 (and tp!689459 tp!689458))))

(declare-fun b!2215821 () Bool)

(declare-fun tp!689461 () Bool)

(declare-fun tp!689462 () Bool)

(assert (=> b!2215821 (= e!1414959 (and tp!689461 tp!689462))))

(assert (= (and b!2214997 ((_ is ElementMatch!6321) (regOne!13155 (regex!4177 (h!31321 (t!198860 rules!4462)))))) b!2215818))

(assert (= (and b!2214997 ((_ is Concat!10635) (regOne!13155 (regex!4177 (h!31321 (t!198860 rules!4462)))))) b!2215819))

(assert (= (and b!2214997 ((_ is Star!6321) (regOne!13155 (regex!4177 (h!31321 (t!198860 rules!4462)))))) b!2215820))

(assert (= (and b!2214997 ((_ is Union!6321) (regOne!13155 (regex!4177 (h!31321 (t!198860 rules!4462)))))) b!2215821))

(declare-fun b!2215822 () Bool)

(declare-fun e!1414960 () Bool)

(assert (=> b!2215822 (= e!1414960 tp_is_empty!9815)))

(assert (=> b!2214997 (= tp!688709 e!1414960)))

(declare-fun b!2215824 () Bool)

(declare-fun tp!689465 () Bool)

(assert (=> b!2215824 (= e!1414960 tp!689465)))

(declare-fun b!2215823 () Bool)

(declare-fun tp!689464 () Bool)

(declare-fun tp!689463 () Bool)

(assert (=> b!2215823 (= e!1414960 (and tp!689464 tp!689463))))

(declare-fun b!2215825 () Bool)

(declare-fun tp!689466 () Bool)

(declare-fun tp!689467 () Bool)

(assert (=> b!2215825 (= e!1414960 (and tp!689466 tp!689467))))

(assert (= (and b!2214997 ((_ is ElementMatch!6321) (regTwo!13155 (regex!4177 (h!31321 (t!198860 rules!4462)))))) b!2215822))

(assert (= (and b!2214997 ((_ is Concat!10635) (regTwo!13155 (regex!4177 (h!31321 (t!198860 rules!4462)))))) b!2215823))

(assert (= (and b!2214997 ((_ is Star!6321) (regTwo!13155 (regex!4177 (h!31321 (t!198860 rules!4462)))))) b!2215824))

(assert (= (and b!2214997 ((_ is Union!6321) (regTwo!13155 (regex!4177 (h!31321 (t!198860 rules!4462)))))) b!2215825))

(declare-fun b!2215826 () Bool)

(declare-fun e!1414961 () Bool)

(assert (=> b!2215826 (= e!1414961 tp_is_empty!9815)))

(assert (=> b!2214988 (= tp!688697 e!1414961)))

(declare-fun b!2215828 () Bool)

(declare-fun tp!689470 () Bool)

(assert (=> b!2215828 (= e!1414961 tp!689470)))

(declare-fun b!2215827 () Bool)

(declare-fun tp!689469 () Bool)

(declare-fun tp!689468 () Bool)

(assert (=> b!2215827 (= e!1414961 (and tp!689469 tp!689468))))

(declare-fun b!2215829 () Bool)

(declare-fun tp!689471 () Bool)

(declare-fun tp!689472 () Bool)

(assert (=> b!2215829 (= e!1414961 (and tp!689471 tp!689472))))

(assert (= (and b!2214988 ((_ is ElementMatch!6321) (reg!6650 (regOne!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215826))

(assert (= (and b!2214988 ((_ is Concat!10635) (reg!6650 (regOne!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215827))

(assert (= (and b!2214988 ((_ is Star!6321) (reg!6650 (regOne!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215828))

(assert (= (and b!2214988 ((_ is Union!6321) (reg!6650 (regOne!13154 (regex!4177 (h!31321 rules!4462)))))) b!2215829))

(declare-fun b!2215830 () Bool)

(declare-fun e!1414962 () Bool)

(assert (=> b!2215830 (= e!1414962 tp_is_empty!9815)))

(assert (=> b!2214995 (= tp!688706 e!1414962)))

(declare-fun b!2215832 () Bool)

(declare-fun tp!689475 () Bool)

(assert (=> b!2215832 (= e!1414962 tp!689475)))

(declare-fun b!2215831 () Bool)

(declare-fun tp!689474 () Bool)

(declare-fun tp!689473 () Bool)

(assert (=> b!2215831 (= e!1414962 (and tp!689474 tp!689473))))

(declare-fun b!2215833 () Bool)

(declare-fun tp!689476 () Bool)

(declare-fun tp!689477 () Bool)

(assert (=> b!2215833 (= e!1414962 (and tp!689476 tp!689477))))

(assert (= (and b!2214995 ((_ is ElementMatch!6321) (regOne!13154 (regex!4177 (h!31321 (t!198860 rules!4462)))))) b!2215830))

(assert (= (and b!2214995 ((_ is Concat!10635) (regOne!13154 (regex!4177 (h!31321 (t!198860 rules!4462)))))) b!2215831))

(assert (= (and b!2214995 ((_ is Star!6321) (regOne!13154 (regex!4177 (h!31321 (t!198860 rules!4462)))))) b!2215832))

(assert (= (and b!2214995 ((_ is Union!6321) (regOne!13154 (regex!4177 (h!31321 (t!198860 rules!4462)))))) b!2215833))

(declare-fun b!2215834 () Bool)

(declare-fun e!1414963 () Bool)

(assert (=> b!2215834 (= e!1414963 tp_is_empty!9815)))

(assert (=> b!2214995 (= tp!688705 e!1414963)))

(declare-fun b!2215836 () Bool)

(declare-fun tp!689480 () Bool)

(assert (=> b!2215836 (= e!1414963 tp!689480)))

(declare-fun b!2215835 () Bool)

(declare-fun tp!689479 () Bool)

(declare-fun tp!689478 () Bool)

(assert (=> b!2215835 (= e!1414963 (and tp!689479 tp!689478))))

(declare-fun b!2215837 () Bool)

(declare-fun tp!689481 () Bool)

(declare-fun tp!689482 () Bool)

(assert (=> b!2215837 (= e!1414963 (and tp!689481 tp!689482))))

(assert (= (and b!2214995 ((_ is ElementMatch!6321) (regTwo!13154 (regex!4177 (h!31321 (t!198860 rules!4462)))))) b!2215834))

(assert (= (and b!2214995 ((_ is Concat!10635) (regTwo!13154 (regex!4177 (h!31321 (t!198860 rules!4462)))))) b!2215835))

(assert (= (and b!2214995 ((_ is Star!6321) (regTwo!13154 (regex!4177 (h!31321 (t!198860 rules!4462)))))) b!2215836))

(assert (= (and b!2214995 ((_ is Union!6321) (regTwo!13154 (regex!4177 (h!31321 (t!198860 rules!4462)))))) b!2215837))

(declare-fun b!2215838 () Bool)

(declare-fun e!1414964 () Bool)

(declare-fun tp!689483 () Bool)

(assert (=> b!2215838 (= e!1414964 (and tp_is_empty!9815 tp!689483))))

(assert (=> b!2214948 (= tp!688648 e!1414964)))

(assert (= (and b!2214948 ((_ is Cons!25918) (t!198858 (originalCharacters!4949 (h!31320 (t!198859 l!6601)))))) b!2215838))

(declare-fun b_lambda!71365 () Bool)

(assert (= b_lambda!71334 (or (and b!2214957 b_free!64051 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))))) (and b!2215003 b_free!64055 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 (t!198860 rules!4462))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))))) (and b!2215794 b_free!64067 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 (t!198859 l!6601))))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))))) (and b!2215817 b_free!64071 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 (t!198860 (t!198860 rules!4462)))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))))) b_lambda!71365)))

(declare-fun b_lambda!71367 () Bool)

(assert (= b_lambda!71339 (or (and b!2214957 b_free!64051 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))) (toChars!5747 (transformation!4177 (rule!6477 t2!61))))) (and b!2215003 b_free!64055 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 (t!198860 rules!4462))))) (toChars!5747 (transformation!4177 (rule!6477 t2!61))))) (and b!2215794 b_free!64067 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 (t!198859 l!6601))))))) (toChars!5747 (transformation!4177 (rule!6477 t2!61))))) (and b!2215817 b_free!64071 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 (t!198860 (t!198860 rules!4462)))))) (toChars!5747 (transformation!4177 (rule!6477 t2!61))))) b_lambda!71367)))

(declare-fun b_lambda!71369 () Bool)

(assert (= b_lambda!71363 (or (and b!2214583 b_free!64031 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 l!6601)))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))))) (and b!2214585 b_free!64027 (= (toChars!5747 (transformation!4177 (h!31321 rules!4462))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))))) (and b!2215794 b_free!64067 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 (t!198859 l!6601))))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))))) (and b!2215003 b_free!64055 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 (t!198860 rules!4462))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))))) (and b!2214957 b_free!64051) (and b!2215817 b_free!64071 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 (t!198860 (t!198860 rules!4462)))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))))) (and b!2214801 b_free!64039 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 l!6601))))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))))) (and b!2214834 b_free!64047 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 rules!4462)))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))))) (and b!2214576 b_free!64021 (= (toChars!5747 (transformation!4177 (rule!6477 t1!61))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))))) (and b!2214574 b_free!64017 (= (toChars!5747 (transformation!4177 (rule!6477 t2!61))) (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))))) b_lambda!71369)))

(declare-fun b_lambda!71371 () Bool)

(assert (= b_lambda!71361 (or (and start!215824 b_free!64023) b_lambda!71371)))

(declare-fun b_lambda!71373 () Bool)

(assert (= b_lambda!71343 (or (and b!2214957 b_free!64051 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 l!6601)))))) (toChars!5747 (transformation!4177 (rule!6477 t1!61))))) (and b!2215003 b_free!64055 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 (t!198860 rules!4462))))) (toChars!5747 (transformation!4177 (rule!6477 t1!61))))) (and b!2215794 b_free!64067 (= (toChars!5747 (transformation!4177 (rule!6477 (h!31320 (t!198859 (t!198859 (t!198859 l!6601))))))) (toChars!5747 (transformation!4177 (rule!6477 t1!61))))) (and b!2215817 b_free!64071 (= (toChars!5747 (transformation!4177 (h!31321 (t!198860 (t!198860 (t!198860 rules!4462)))))) (toChars!5747 (transformation!4177 (rule!6477 t1!61))))) b_lambda!71373)))

(check-sat (not b!2215618) (not b!2215429) (not b!2215505) (not b!2215707) (not b!2215381) (not b!2215564) (not b!2215813) (not b_next!64775) (not b!2215668) (not b!2215550) (not b!2215577) (not d!662421) (not b!2215370) (not d!662529) (not b!2215227) (not b!2215386) (not b!2215667) (not b!2215372) (not b!2215742) (not b!2215745) (not b_lambda!71351) (not b!2215350) (not b_lambda!71349) (not b!2215651) (not b!2215544) (not b!2215654) (not b!2215598) (not b!2215756) (not b!2215602) (not b!2215326) (not b!2215448) (not b!2215734) (not b!2215358) (not b!2215788) (not b!2215444) b_and!173821 (not b!2215601) (not b!2215405) (not b!2215558) (not b!2215426) (not b!2215310) (not d!662437) (not b!2215482) (not b!2215829) (not b!2215543) (not d!662487) (not b!2215274) (not b!2215356) (not b!2215361) (not b!2215749) (not d!662545) (not b_next!64759) (not d!662443) (not b!2215409) (not d!662471) (not b!2215624) (not b!2215639) tp_is_empty!9815 (not b!2215764) (not b!2215522) (not b!2215728) (not b!2215733) (not b!2215523) (not b!2215752) (not b_next!64721) (not b!2215774) b_and!173685 (not b!2215631) (not b!2215635) (not b!2215406) (not b!2215401) (not b!2215228) (not b!2215313) b_and!173841 (not b!2215634) b_and!173833 (not b_next!64725) (not b!2215218) (not b!2215814) (not b_next!64743) (not b!2215344) (not b!2215792) (not b!2215784) (not b_lambda!71373) (not b!2215490) (not b!2215717) (not b!2215447) (not b!2215530) (not b!2215462) (not b!2215497) (not b!2215346) (not d!662531) (not b_next!64727) (not b!2215320) (not b!2215819) (not b!2215610) (not b!2215821) (not b!2215679) (not d!662533) (not b!2215671) (not b!2215466) b_and!173823 (not b!2215703) (not b!2215272) (not b!2215560) (not b!2215800) (not b!2215459) (not b_next!64757) (not b!2215325) (not b!2215230) (not b!2215373) (not b!2215456) (not b!2215369) (not b!2215327) (not b!2215540) (not b!2215750) (not d!662449) (not b!2215288) (not b!2215511) (not b!2215777) (not b!2215594) (not b!2215475) (not b!2215648) (not b!2215336) (not b!2215479) (not b!2215683) (not b!2215316) (not b!2215387) (not b!2215785) (not b!2215718) (not b!2215698) (not b!2215659) (not b!2215567) (not b!2215725) (not b!2215782) (not b!2215221) (not b!2215556) (not b_next!64751) (not b!2215581) (not b!2215569) (not b!2215675) (not d!662455) (not b_next!64723) (not b!2215515) (not b!2214888) (not b!2215780) (not b!2215760) (not b!2215690) (not b!2215568) (not b!2215289) (not b!2215694) (not b!2215736) (not b!2215483) (not b!2215836) (not b!2215672) (not b!2215838) (not b!2215563) (not b!2215604) (not b!2215241) (not b!2215538) (not b!2215380) (not b_next!64753) (not b!2215614) (not b!2215789) (not b!2215283) (not d!662521) (not d!662459) (not b!2215331) (not b!2215586) (not b!2215374) (not b!2215402) (not b!2215307) (not b!2215589) (not b!2215615) b_and!173791 (not b!2215526) (not b!2215547) (not b!2215507) (not b!2215502) (not b!2215394) (not b!2215434) (not b!2215403) (not b!2215452) (not b!2215393) (not b!2215552) (not b!2215390) (not b!2215837) b_and!173829 (not b!2215399) (not d!662433) (not d!662553) (not b!2215477) (not b!2215291) (not b!2215243) (not b!2215471) (not b!2215766) (not b!2215583) (not b!2215695) (not d!662457) (not b!2215630) (not b!2215570) (not b!2215823) (not b!2215464) (not b!2215636) (not b!2215737) (not d!662535) (not b!2215354) (not b!2215451) (not b!2215656) b_and!173787 (not b!2215572) (not b!2215640) (not d!662497) (not b!2215692) (not b_next!64719) (not b!2215297) (not d!662469) (not b!2215418) (not b!2215562) (not b!2215605) (not b!2215474) (not b!2214933) (not b!2215808) (not b!2215352) (not b!2215582) (not b!2215650) (not b!2215729) (not b!2215442) b_and!173819 (not b!2215816) (not b!2215796) (not b!2215722) (not b!2215425) (not b_next!64733) (not b!2215470) (not b!2215430) (not d!662525) (not b_next!64749) (not b!2215494) (not b!2215217) (not b!2215699) (not d!662555) b_and!173699 (not b!2215443) (not b!2215362) (not b!2215687) (not b!2215585) (not b!2215455) (not b!2215776) (not b!2215831) (not b!2215682) (not b!2215748) (not b!2215222) b_and!173835 (not b!2215535) (not b!2215333) (not b!2215746) (not b!2215597) (not b!2215330) (not d!662485) (not b!2215768) (not b!2215646) (not b!2215732) (not b!2215548) (not b!2215262) (not b!2215519) (not b!2215658) (not b!2215592) b_and!173827 (not b_next!64731) (not b!2215754) (not b!2215450) (not b!2215485) (not b!2215724) (not b!2215378) (not b!2215469) (not b!2215539) (not b!2215478) (not b!2215489) (not b!2215348) (not b!2215627) (not b!2215691) (not b!2215417) (not b!2215628) (not b!2215542) (not b!2215259) (not b!2215270) (not b!2215696) (not b!2215806) (not d!662513) (not b!2215660) (not b!2215590) (not b!2215716) (not b!2215432) (not d!662549) (not b!2215704) (not b!2215438) (not b!2215528) (not b_next!64773) (not b!2215366) (not b!2215509) (not b!2215571) (not b!2215534) (not b!2215578) (not b!2215498) (not b!2215454) b_and!173769 (not b!2215389) (not b!2215481) (not b!2215797) (not b!2215421) (not b!2215322) (not b!2215364) (not b!2215790) (not b!2215298) (not b_next!64769) (not d!662515) b_and!173695 (not b!2215503) (not b!2215566) (not b!2215709) (not b!2215761) (not b!2215219) (not b!2215368) (not b!2215835) (not b!2215713) (not b!2215342) (not b!2215468) (not b!2215593) (not b!2215247) (not b!2215536) (not b!2215220) (not b!2215554) (not b!2215833) (not b!2215301) (not b!2215609) (not b!2215612) b_and!173839 (not b!2215786) (not b!2215282) (not d!662477) (not d!662451) (not b!2215720) (not d!662561) (not b!2215688) (not b!2215335) (not d!662541) (not b!2215619) (not b!2215758) (not b!2215422) (not b!2215463) (not b!2215815) (not b!2215517) (not b!2215226) (not b!2215487) (not b!2215329) (not b!2215391) (not b!2215580) (not b_next!64735) (not b!2215551) (not b!2215506) (not b!2215820) (not b!2215708) (not b!2215413) (not b!2215499) (not b!2215798) (not b_lambda!71365) (not b!2215300) (not b!2215663) (not b!2215579) (not b!2215338) (not b!2215655) (not b!2215613) (not b_next!64755) (not b_lambda!71367) (not b!2215632) (not b!2215622) (not b!2215385) (not b!2215700) (not b_lambda!71371) (not b_lambda!71369) (not b!2215518) (not b_next!64741) (not b!2215276) (not b!2215308) (not b!2215224) (not b!2215532) (not b!2215757) (not b!2215395) (not b!2215588) (not b!2215769) (not b!2215647) (not b!2215458) (not b!2215596) (not b!2215686) (not b!2215223) (not b!2215793) (not b!2215267) (not b!2215676) (not b!2215383) (not b!2215439) (not b!2215473) (not b!2215730) (not b!2215791) (not b!2215684) (not b!2215770) (not b!2215559) (not b!2215411) (not b_lambda!71330) (not b!2215600) (not b!2215238) (not b!2215778) (not b!2215546) (not b!2215712) (not b!2215260) (not b!2215407) (not b!2215510) (not b_next!64771) (not b!2215524) (not d!662543) (not b!2215321) (not b!2215467) (not b!2215574) b_and!173837 (not d!662547) b_and!173761 (not b!2215514) (not b!2215611) (not b!2215415) (not b!2215606) (not b!2215832) (not b!2215827) (not b!2215670) (not b!2215423) (not d!662453) (not b!2214998) (not b!2215753) (not b!2215616) (not b!2215825) (not b!2215531) (not b!2215576) (not b!2215584) (not b!2215706) (not b!2215741) (not b!2215365) (not b!2215419) (not b!2215324) (not d!662539) (not d!662475) (not b!2215340) (not d!662461) (not d!662491) (not b!2215744) (not b!2215339) (not b!2215347) (not b!2215248) (not b!2215225) (not b!2215801) (not b!2215435) (not b!2215805) (not b!2215781) (not b!2215357) (not b!2215721) (not b!2215397) (not b!2215382) (not b!2215810) (not b!2215317) (not b!2215246) (not b!2215664) (not b!2215513) (not b!2215773) b_and!173825 (not b!2215726) (not b!2215555) (not b!2215643) (not b!2215303) (not b!2215738) (not b!2215711) (not b!2215377) (not b!2215642) (not b_next!64729) (not b!2215495) (not d!662551) (not b!2215427) (not b!2215608) (not b!2215414) (not b!2215376) (not b!2215460) (not b!2215332) (not b!2215802) b_and!173831 (not b!2215623) (not b!2215360) (not b!2215620) (not tb!132519) (not b!2215765) (not d!662505) (not b!2215702) (not b!2215431) (not b!2215644) (not b!2215284) (not b!2215004) (not b!2215626) (not b!2215410) b_and!173689 (not b!2215521) (not b!2215398) (not b!2215305) (not b!2215740) (not b!2215491) (not d!662429) (not b!2215573) (not b!2215328) (not b!2215436) (not d!662435) (not b!2215715) (not b!2215446) (not b!2215527) (not b!2215311) (not b_lambda!71309) (not b!2215812) (not b!2215638) (not b!2215772) (not b!2215828) (not b!2215809) (not d!662489) (not b!2215824) (not b!2215674) b_and!173817 (not b!2215501) (not b!2215662) (not b!2215652) (not b!2215440) (not b!2215286) (not b!2215680) (not b!2215804) (not b!2215678) (not b!2215666) (not b!2215486) (not b!2215493) (not b!2215762))
(check-sat (not b_next!64775) b_and!173821 (not b_next!64743) (not b_next!64757) (not b_next!64753) b_and!173835 b_and!173839 (not b_next!64735) (not b_next!64755) (not b_next!64741) b_and!173817 (not b_next!64759) (not b_next!64721) b_and!173685 b_and!173841 b_and!173833 (not b_next!64725) (not b_next!64727) b_and!173823 (not b_next!64751) (not b_next!64723) b_and!173791 b_and!173829 b_and!173787 (not b_next!64719) (not b_next!64749) b_and!173819 (not b_next!64733) b_and!173699 b_and!173827 (not b_next!64731) (not b_next!64773) b_and!173769 (not b_next!64769) b_and!173695 (not b_next!64771) b_and!173837 b_and!173761 (not b_next!64729) b_and!173825 b_and!173831 b_and!173689)
