; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!275950 () Bool)

(assert start!275950)

(declare-fun b!2836856 () Bool)

(declare-fun b_free!81805 () Bool)

(declare-fun b_next!82509 () Bool)

(assert (=> b!2836856 (= b_free!81805 (not b_next!82509))))

(declare-fun tp!907692 () Bool)

(declare-fun b_and!207675 () Bool)

(assert (=> b!2836856 (= tp!907692 b_and!207675)))

(declare-fun b_free!81807 () Bool)

(declare-fun b_next!82511 () Bool)

(assert (=> b!2836856 (= b_free!81807 (not b_next!82511))))

(declare-fun tp!907684 () Bool)

(declare-fun b_and!207677 () Bool)

(assert (=> b!2836856 (= tp!907684 b_and!207677)))

(declare-fun b!2836855 () Bool)

(declare-fun b_free!81809 () Bool)

(declare-fun b_next!82513 () Bool)

(assert (=> b!2836855 (= b_free!81809 (not b_next!82513))))

(declare-fun tp!907687 () Bool)

(declare-fun b_and!207679 () Bool)

(assert (=> b!2836855 (= tp!907687 b_and!207679)))

(declare-fun b_free!81811 () Bool)

(declare-fun b_next!82515 () Bool)

(assert (=> b!2836855 (= b_free!81811 (not b_next!82515))))

(declare-fun tp!907680 () Bool)

(declare-fun b_and!207681 () Bool)

(assert (=> b!2836855 (= tp!907680 b_and!207681)))

(declare-fun b!2836853 () Bool)

(declare-fun b_free!81813 () Bool)

(declare-fun b_next!82517 () Bool)

(assert (=> b!2836853 (= b_free!81813 (not b_next!82517))))

(declare-fun tp!907683 () Bool)

(declare-fun b_and!207683 () Bool)

(assert (=> b!2836853 (= tp!907683 b_and!207683)))

(declare-fun b_free!81815 () Bool)

(declare-fun b_next!82519 () Bool)

(assert (=> b!2836853 (= b_free!81815 (not b_next!82519))))

(declare-fun tp!907685 () Bool)

(declare-fun b_and!207685 () Bool)

(assert (=> b!2836853 (= tp!907685 b_and!207685)))

(declare-fun e!1796338 () Bool)

(declare-fun tp!907689 () Bool)

(declare-datatypes ((String!36808 0))(
  ( (String!36809 (value!161614 String)) )
))
(declare-datatypes ((C!17018 0))(
  ( (C!17019 (val!10521 Int)) )
))
(declare-datatypes ((List!33614 0))(
  ( (Nil!33490) (Cons!33490 (h!38910 C!17018) (t!231991 List!33614)) )
))
(declare-datatypes ((IArray!20819 0))(
  ( (IArray!20820 (innerList!10467 List!33614)) )
))
(declare-datatypes ((Conc!10407 0))(
  ( (Node!10407 (left!25272 Conc!10407) (right!25602 Conc!10407) (csize!21044 Int) (cheight!10618 Int)) (Leaf!15829 (xs!13519 IArray!20819) (csize!21045 Int)) (Empty!10407) )
))
(declare-datatypes ((BalanceConc!20452 0))(
  ( (BalanceConc!20453 (c!458394 Conc!10407)) )
))
(declare-datatypes ((List!33615 0))(
  ( (Nil!33491) (Cons!33491 (h!38911 (_ BitVec 16)) (t!231992 List!33615)) )
))
(declare-datatypes ((Regex!8418 0))(
  ( (ElementMatch!8418 (c!458395 C!17018)) (Concat!13675 (regOne!17348 Regex!8418) (regTwo!17348 Regex!8418)) (EmptyExpr!8418) (Star!8418 (reg!8747 Regex!8418)) (EmptyLang!8418) (Union!8418 (regOne!17349 Regex!8418) (regTwo!17349 Regex!8418)) )
))
(declare-datatypes ((TokenValue!5257 0))(
  ( (FloatLiteralValue!10514 (text!37244 List!33615)) (TokenValueExt!5256 (__x!22252 Int)) (Broken!26285 (value!161615 List!33615)) (Object!5380) (End!5257) (Def!5257) (Underscore!5257) (Match!5257) (Else!5257) (Error!5257) (Case!5257) (If!5257) (Extends!5257) (Abstract!5257) (Class!5257) (Val!5257) (DelimiterValue!10514 (del!5317 List!33615)) (KeywordValue!5263 (value!161616 List!33615)) (CommentValue!10514 (value!161617 List!33615)) (WhitespaceValue!10514 (value!161618 List!33615)) (IndentationValue!5257 (value!161619 List!33615)) (String!36810) (Int32!5257) (Broken!26286 (value!161620 List!33615)) (Boolean!5258) (Unit!47429) (OperatorValue!5260 (op!5317 List!33615)) (IdentifierValue!10514 (value!161621 List!33615)) (IdentifierValue!10515 (value!161622 List!33615)) (WhitespaceValue!10515 (value!161623 List!33615)) (True!10514) (False!10514) (Broken!26287 (value!161624 List!33615)) (Broken!26288 (value!161625 List!33615)) (True!10515) (RightBrace!5257) (RightBracket!5257) (Colon!5257) (Null!5257) (Comma!5257) (LeftBracket!5257) (False!10515) (LeftBrace!5257) (ImaginaryLiteralValue!5257 (text!37245 List!33615)) (StringLiteralValue!15771 (value!161626 List!33615)) (EOFValue!5257 (value!161627 List!33615)) (IdentValue!5257 (value!161628 List!33615)) (DelimiterValue!10515 (value!161629 List!33615)) (DedentValue!5257 (value!161630 List!33615)) (NewLineValue!5257 (value!161631 List!33615)) (IntegerValue!15771 (value!161632 (_ BitVec 32)) (text!37246 List!33615)) (IntegerValue!15772 (value!161633 Int) (text!37247 List!33615)) (Times!5257) (Or!5257) (Equal!5257) (Minus!5257) (Broken!26289 (value!161634 List!33615)) (And!5257) (Div!5257) (LessEqual!5257) (Mod!5257) (Concat!13676) (Not!5257) (Plus!5257) (SpaceValue!5257 (value!161635 List!33615)) (IntegerValue!15773 (value!161636 Int) (text!37248 List!33615)) (StringLiteralValue!15772 (text!37249 List!33615)) (FloatLiteralValue!10515 (text!37250 List!33615)) (BytesLiteralValue!5257 (value!161637 List!33615)) (CommentValue!10515 (value!161638 List!33615)) (StringLiteralValue!15773 (value!161639 List!33615)) (ErrorTokenValue!5257 (msg!5318 List!33615)) )
))
(declare-datatypes ((TokenValueInjection!9942 0))(
  ( (TokenValueInjection!9943 (toValue!7069 Int) (toChars!6928 Int)) )
))
(declare-datatypes ((Rule!9854 0))(
  ( (Rule!9855 (regex!5027 Regex!8418) (tag!5531 String!36808) (isSeparator!5027 Bool) (transformation!5027 TokenValueInjection!9942)) )
))
(declare-datatypes ((Token!9456 0))(
  ( (Token!9457 (value!161640 TokenValue!5257) (rule!7455 Rule!9854) (size!26060 Int) (originalCharacters!5759 List!33614)) )
))
(declare-datatypes ((List!33616 0))(
  ( (Nil!33492) (Cons!33492 (h!38912 Token!9456) (t!231993 List!33616)) )
))
(declare-fun tokens!612 () List!33616)

(declare-fun e!1796332 () Bool)

(declare-fun b!2836850 () Bool)

(declare-fun inv!45466 (Token!9456) Bool)

(assert (=> b!2836850 (= e!1796338 (and (inv!45466 (h!38912 tokens!612)) e!1796332 tp!907689))))

(declare-fun b!2836851 () Bool)

(declare-fun res!1180464 () Bool)

(declare-fun e!1796340 () Bool)

(assert (=> b!2836851 (=> (not res!1180464) (not e!1796340))))

(declare-datatypes ((List!33617 0))(
  ( (Nil!33493) (Cons!33493 (h!38913 Rule!9854) (t!231994 List!33617)) )
))
(declare-fun rules!4246 () List!33617)

(declare-fun isEmpty!18472 (List!33617) Bool)

(assert (=> b!2836851 (= res!1180464 (not (isEmpty!18472 rules!4246)))))

(declare-fun tp!907679 () Bool)

(declare-fun b!2836852 () Bool)

(declare-fun e!1796334 () Bool)

(declare-fun e!1796341 () Bool)

(declare-fun inv!45463 (String!36808) Bool)

(declare-fun inv!45467 (TokenValueInjection!9942) Bool)

(assert (=> b!2836852 (= e!1796334 (and tp!907679 (inv!45463 (tag!5531 (h!38913 rules!4246))) (inv!45467 (transformation!5027 (h!38913 rules!4246))) e!1796341))))

(declare-fun e!1796330 () Bool)

(assert (=> b!2836853 (= e!1796330 (and tp!907683 tp!907685))))

(declare-fun e!1796329 () Bool)

(declare-fun tp!907690 () Bool)

(declare-fun b!2836854 () Bool)

(declare-fun e!1796326 () Bool)

(assert (=> b!2836854 (= e!1796326 (and tp!907690 (inv!45463 (tag!5531 (rule!7455 (h!38912 tokens!612)))) (inv!45467 (transformation!5027 (rule!7455 (h!38912 tokens!612)))) e!1796329))))

(assert (=> b!2836855 (= e!1796329 (and tp!907687 tp!907680))))

(assert (=> b!2836856 (= e!1796341 (and tp!907692 tp!907684))))

(declare-fun b!2836857 () Bool)

(declare-fun tp!907681 () Bool)

(declare-fun inv!21 (TokenValue!5257) Bool)

(assert (=> b!2836857 (= e!1796332 (and (inv!21 (value!161640 (h!38912 tokens!612))) e!1796326 tp!907681))))

(declare-fun b!2836849 () Bool)

(declare-fun e!1796328 () Bool)

(declare-fun tp!907691 () Bool)

(declare-fun e!1796339 () Bool)

(declare-fun tokensBis!14 () List!33616)

(assert (=> b!2836849 (= e!1796328 (and (inv!45466 (h!38912 tokensBis!14)) e!1796339 tp!907691))))

(declare-fun res!1180466 () Bool)

(assert (=> start!275950 (=> (not res!1180466) (not e!1796340))))

(declare-datatypes ((LexerInterface!4617 0))(
  ( (LexerInterfaceExt!4614 (__x!22253 Int)) (Lexer!4615) )
))
(declare-fun thiss!27264 () LexerInterface!4617)

(assert (=> start!275950 (= res!1180466 (is-Lexer!4615 thiss!27264))))

(assert (=> start!275950 e!1796340))

(assert (=> start!275950 true))

(declare-fun e!1796335 () Bool)

(assert (=> start!275950 e!1796335))

(assert (=> start!275950 e!1796328))

(assert (=> start!275950 e!1796338))

(declare-fun b!2836858 () Bool)

(assert (=> b!2836858 (= e!1796340 false)))

(declare-fun lt!1011452 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1658 (LexerInterface!4617 List!33617 List!33616) Bool)

(assert (=> b!2836858 (= lt!1011452 (rulesProduceEachTokenIndividuallyList!1658 thiss!27264 rules!4246 tokens!612))))

(declare-fun b!2836859 () Bool)

(declare-fun res!1180465 () Bool)

(assert (=> b!2836859 (=> (not res!1180465) (not e!1796340))))

(declare-fun subseq!493 (List!33616 List!33616) Bool)

(assert (=> b!2836859 (= res!1180465 (subseq!493 tokensBis!14 tokens!612))))

(declare-fun b!2836860 () Bool)

(declare-fun res!1180467 () Bool)

(assert (=> b!2836860 (=> (not res!1180467) (not e!1796340))))

(declare-fun rulesInvariant!4033 (LexerInterface!4617 List!33617) Bool)

(assert (=> b!2836860 (= res!1180467 (rulesInvariant!4033 thiss!27264 rules!4246))))

(declare-fun b!2836861 () Bool)

(declare-fun tp!907686 () Bool)

(assert (=> b!2836861 (= e!1796335 (and e!1796334 tp!907686))))

(declare-fun b!2836862 () Bool)

(declare-fun e!1796327 () Bool)

(declare-fun tp!907682 () Bool)

(assert (=> b!2836862 (= e!1796327 (and tp!907682 (inv!45463 (tag!5531 (rule!7455 (h!38912 tokensBis!14)))) (inv!45467 (transformation!5027 (rule!7455 (h!38912 tokensBis!14)))) e!1796330))))

(declare-fun tp!907688 () Bool)

(declare-fun b!2836863 () Bool)

(assert (=> b!2836863 (= e!1796339 (and (inv!21 (value!161640 (h!38912 tokensBis!14))) e!1796327 tp!907688))))

(assert (= (and start!275950 res!1180466) b!2836851))

(assert (= (and b!2836851 res!1180464) b!2836860))

(assert (= (and b!2836860 res!1180467) b!2836859))

(assert (= (and b!2836859 res!1180465) b!2836858))

(assert (= b!2836852 b!2836856))

(assert (= b!2836861 b!2836852))

(assert (= (and start!275950 (is-Cons!33493 rules!4246)) b!2836861))

(assert (= b!2836862 b!2836853))

(assert (= b!2836863 b!2836862))

(assert (= b!2836849 b!2836863))

(assert (= (and start!275950 (is-Cons!33492 tokensBis!14)) b!2836849))

(assert (= b!2836854 b!2836855))

(assert (= b!2836857 b!2836854))

(assert (= b!2836850 b!2836857))

(assert (= (and start!275950 (is-Cons!33492 tokens!612)) b!2836850))

(declare-fun m!3266647 () Bool)

(assert (=> b!2836858 m!3266647))

(declare-fun m!3266649 () Bool)

(assert (=> b!2836860 m!3266649))

(declare-fun m!3266651 () Bool)

(assert (=> b!2836851 m!3266651))

(declare-fun m!3266653 () Bool)

(assert (=> b!2836854 m!3266653))

(declare-fun m!3266655 () Bool)

(assert (=> b!2836854 m!3266655))

(declare-fun m!3266657 () Bool)

(assert (=> b!2836852 m!3266657))

(declare-fun m!3266659 () Bool)

(assert (=> b!2836852 m!3266659))

(declare-fun m!3266661 () Bool)

(assert (=> b!2836862 m!3266661))

(declare-fun m!3266663 () Bool)

(assert (=> b!2836862 m!3266663))

(declare-fun m!3266665 () Bool)

(assert (=> b!2836849 m!3266665))

(declare-fun m!3266667 () Bool)

(assert (=> b!2836857 m!3266667))

(declare-fun m!3266669 () Bool)

(assert (=> b!2836863 m!3266669))

(declare-fun m!3266671 () Bool)

(assert (=> b!2836859 m!3266671))

(declare-fun m!3266673 () Bool)

(assert (=> b!2836850 m!3266673))

(push 1)

(assert (not b!2836857))

(assert (not b_next!82511))

(assert b_and!207677)

(assert (not b_next!82509))

(assert (not b!2836854))

(assert b_and!207681)

(assert b_and!207675)

(assert (not b_next!82517))

(assert (not b_next!82513))

(assert (not b!2836850))

(assert (not b!2836852))

(assert (not b!2836858))

(assert b_and!207685)

(assert (not b_next!82515))

(assert (not b!2836849))

(assert b_and!207679)

(assert (not b!2836861))

(assert (not b!2836859))

(assert b_and!207683)

(assert (not b!2836851))

(assert (not b_next!82519))

(assert (not b!2836862))

(assert (not b!2836863))

(assert (not b!2836860))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!82511))

(assert b_and!207677)

(assert (not b_next!82509))

(assert b_and!207681)

(assert b_and!207675)

(assert b_and!207679)

(assert b_and!207683)

(assert (not b_next!82517))

(assert (not b_next!82513))

(assert (not b_next!82519))

(assert b_and!207685)

(assert (not b_next!82515))

(check-sat)

(pop 1)

