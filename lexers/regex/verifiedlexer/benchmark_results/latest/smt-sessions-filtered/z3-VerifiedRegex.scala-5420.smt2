; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!275948 () Bool)

(assert start!275948)

(declare-fun b!2836813 () Bool)

(declare-fun b_free!81793 () Bool)

(declare-fun b_next!82497 () Bool)

(assert (=> b!2836813 (= b_free!81793 (not b_next!82497))))

(declare-fun tp!907645 () Bool)

(declare-fun b_and!207663 () Bool)

(assert (=> b!2836813 (= tp!907645 b_and!207663)))

(declare-fun b_free!81795 () Bool)

(declare-fun b_next!82499 () Bool)

(assert (=> b!2836813 (= b_free!81795 (not b_next!82499))))

(declare-fun tp!907646 () Bool)

(declare-fun b_and!207665 () Bool)

(assert (=> b!2836813 (= tp!907646 b_and!207665)))

(declare-fun b!2836806 () Bool)

(declare-fun b_free!81797 () Bool)

(declare-fun b_next!82501 () Bool)

(assert (=> b!2836806 (= b_free!81797 (not b_next!82501))))

(declare-fun tp!907641 () Bool)

(declare-fun b_and!207667 () Bool)

(assert (=> b!2836806 (= tp!907641 b_and!207667)))

(declare-fun b_free!81799 () Bool)

(declare-fun b_next!82503 () Bool)

(assert (=> b!2836806 (= b_free!81799 (not b_next!82503))))

(declare-fun tp!907643 () Bool)

(declare-fun b_and!207669 () Bool)

(assert (=> b!2836806 (= tp!907643 b_and!207669)))

(declare-fun b!2836817 () Bool)

(declare-fun b_free!81801 () Bool)

(declare-fun b_next!82505 () Bool)

(assert (=> b!2836817 (= b_free!81801 (not b_next!82505))))

(declare-fun tp!907637 () Bool)

(declare-fun b_and!207671 () Bool)

(assert (=> b!2836817 (= tp!907637 b_and!207671)))

(declare-fun b_free!81803 () Bool)

(declare-fun b_next!82507 () Bool)

(assert (=> b!2836817 (= b_free!81803 (not b_next!82507))))

(declare-fun tp!907648 () Bool)

(declare-fun b_and!207673 () Bool)

(assert (=> b!2836817 (= tp!907648 b_and!207673)))

(declare-fun b!2836805 () Bool)

(declare-datatypes ((C!17016 0))(
  ( (C!17017 (val!10520 Int)) )
))
(declare-datatypes ((List!33610 0))(
  ( (Nil!33486) (Cons!33486 (h!38906 C!17016) (t!231987 List!33610)) )
))
(declare-datatypes ((IArray!20817 0))(
  ( (IArray!20818 (innerList!10466 List!33610)) )
))
(declare-datatypes ((Conc!10406 0))(
  ( (Node!10406 (left!25270 Conc!10406) (right!25600 Conc!10406) (csize!21042 Int) (cheight!10617 Int)) (Leaf!15827 (xs!13518 IArray!20817) (csize!21043 Int)) (Empty!10406) )
))
(declare-datatypes ((BalanceConc!20450 0))(
  ( (BalanceConc!20451 (c!458392 Conc!10406)) )
))
(declare-datatypes ((List!33611 0))(
  ( (Nil!33487) (Cons!33487 (h!38907 (_ BitVec 16)) (t!231988 List!33611)) )
))
(declare-datatypes ((Regex!8417 0))(
  ( (ElementMatch!8417 (c!458393 C!17016)) (Concat!13673 (regOne!17346 Regex!8417) (regTwo!17346 Regex!8417)) (EmptyExpr!8417) (Star!8417 (reg!8746 Regex!8417)) (EmptyLang!8417) (Union!8417 (regOne!17347 Regex!8417) (regTwo!17347 Regex!8417)) )
))
(declare-datatypes ((String!36801 0))(
  ( (String!36802 (value!161584 String)) )
))
(declare-datatypes ((TokenValue!5256 0))(
  ( (FloatLiteralValue!10512 (text!37237 List!33611)) (TokenValueExt!5255 (__x!22250 Int)) (Broken!26280 (value!161585 List!33611)) (Object!5379) (End!5256) (Def!5256) (Underscore!5256) (Match!5256) (Else!5256) (Error!5256) (Case!5256) (If!5256) (Extends!5256) (Abstract!5256) (Class!5256) (Val!5256) (DelimiterValue!10512 (del!5316 List!33611)) (KeywordValue!5262 (value!161586 List!33611)) (CommentValue!10512 (value!161587 List!33611)) (WhitespaceValue!10512 (value!161588 List!33611)) (IndentationValue!5256 (value!161589 List!33611)) (String!36803) (Int32!5256) (Broken!26281 (value!161590 List!33611)) (Boolean!5257) (Unit!47428) (OperatorValue!5259 (op!5316 List!33611)) (IdentifierValue!10512 (value!161591 List!33611)) (IdentifierValue!10513 (value!161592 List!33611)) (WhitespaceValue!10513 (value!161593 List!33611)) (True!10512) (False!10512) (Broken!26282 (value!161594 List!33611)) (Broken!26283 (value!161595 List!33611)) (True!10513) (RightBrace!5256) (RightBracket!5256) (Colon!5256) (Null!5256) (Comma!5256) (LeftBracket!5256) (False!10513) (LeftBrace!5256) (ImaginaryLiteralValue!5256 (text!37238 List!33611)) (StringLiteralValue!15768 (value!161596 List!33611)) (EOFValue!5256 (value!161597 List!33611)) (IdentValue!5256 (value!161598 List!33611)) (DelimiterValue!10513 (value!161599 List!33611)) (DedentValue!5256 (value!161600 List!33611)) (NewLineValue!5256 (value!161601 List!33611)) (IntegerValue!15768 (value!161602 (_ BitVec 32)) (text!37239 List!33611)) (IntegerValue!15769 (value!161603 Int) (text!37240 List!33611)) (Times!5256) (Or!5256) (Equal!5256) (Minus!5256) (Broken!26284 (value!161604 List!33611)) (And!5256) (Div!5256) (LessEqual!5256) (Mod!5256) (Concat!13674) (Not!5256) (Plus!5256) (SpaceValue!5256 (value!161605 List!33611)) (IntegerValue!15770 (value!161606 Int) (text!37241 List!33611)) (StringLiteralValue!15769 (text!37242 List!33611)) (FloatLiteralValue!10513 (text!37243 List!33611)) (BytesLiteralValue!5256 (value!161607 List!33611)) (CommentValue!10513 (value!161608 List!33611)) (StringLiteralValue!15770 (value!161609 List!33611)) (ErrorTokenValue!5256 (msg!5317 List!33611)) )
))
(declare-datatypes ((TokenValueInjection!9940 0))(
  ( (TokenValueInjection!9941 (toValue!7068 Int) (toChars!6927 Int)) )
))
(declare-datatypes ((Rule!9852 0))(
  ( (Rule!9853 (regex!5026 Regex!8417) (tag!5530 String!36801) (isSeparator!5026 Bool) (transformation!5026 TokenValueInjection!9940)) )
))
(declare-datatypes ((Token!9454 0))(
  ( (Token!9455 (value!161610 TokenValue!5256) (rule!7454 Rule!9852) (size!26059 Int) (originalCharacters!5758 List!33610)) )
))
(declare-datatypes ((List!33612 0))(
  ( (Nil!33488) (Cons!33488 (h!38908 Token!9454) (t!231989 List!33612)) )
))
(declare-fun tokens!612 () List!33612)

(declare-fun tp!907650 () Bool)

(declare-fun e!1796284 () Bool)

(declare-fun e!1796280 () Bool)

(declare-fun inv!45461 (Token!9454) Bool)

(assert (=> b!2836805 (= e!1796284 (and (inv!45461 (h!38908 tokens!612)) e!1796280 tp!907650))))

(declare-fun e!1796291 () Bool)

(assert (=> b!2836806 (= e!1796291 (and tp!907641 tp!907643))))

(declare-fun b!2836807 () Bool)

(declare-fun e!1796289 () Bool)

(declare-fun tp!907649 () Bool)

(declare-fun e!1796288 () Bool)

(declare-fun tokensBis!14 () List!33612)

(assert (=> b!2836807 (= e!1796288 (and (inv!45461 (h!38908 tokensBis!14)) e!1796289 tp!907649))))

(declare-fun b!2836808 () Bool)

(declare-fun res!1180455 () Bool)

(declare-fun e!1796278 () Bool)

(assert (=> b!2836808 (=> (not res!1180455) (not e!1796278))))

(declare-datatypes ((List!33613 0))(
  ( (Nil!33489) (Cons!33489 (h!38909 Rule!9852) (t!231990 List!33613)) )
))
(declare-fun rules!4246 () List!33613)

(declare-fun isEmpty!18471 (List!33613) Bool)

(assert (=> b!2836808 (= res!1180455 (not (isEmpty!18471 rules!4246)))))

(declare-fun e!1796290 () Bool)

(declare-fun tp!907639 () Bool)

(declare-fun b!2836809 () Bool)

(declare-fun inv!45458 (String!36801) Bool)

(declare-fun inv!45462 (TokenValueInjection!9940) Bool)

(assert (=> b!2836809 (= e!1796290 (and tp!907639 (inv!45458 (tag!5530 (rule!7454 (h!38908 tokens!612)))) (inv!45462 (transformation!5026 (rule!7454 (h!38908 tokens!612)))) e!1796291))))

(declare-fun b!2836810 () Bool)

(assert (=> b!2836810 (= e!1796278 false)))

(declare-fun b!2836811 () Bool)

(declare-fun e!1796275 () Bool)

(declare-fun e!1796276 () Bool)

(declare-fun tp!907647 () Bool)

(assert (=> b!2836811 (= e!1796275 (and e!1796276 tp!907647))))

(declare-fun res!1180453 () Bool)

(assert (=> start!275948 (=> (not res!1180453) (not e!1796278))))

(declare-datatypes ((LexerInterface!4616 0))(
  ( (LexerInterfaceExt!4613 (__x!22251 Int)) (Lexer!4614) )
))
(declare-fun thiss!27264 () LexerInterface!4616)

(get-info :version)

(assert (=> start!275948 (= res!1180453 ((_ is Lexer!4614) thiss!27264))))

(assert (=> start!275948 e!1796278))

(assert (=> start!275948 true))

(assert (=> start!275948 e!1796275))

(assert (=> start!275948 e!1796288))

(assert (=> start!275948 e!1796284))

(declare-fun tp!907640 () Bool)

(declare-fun e!1796285 () Bool)

(declare-fun b!2836812 () Bool)

(declare-fun inv!21 (TokenValue!5256) Bool)

(assert (=> b!2836812 (= e!1796289 (and (inv!21 (value!161610 (h!38908 tokensBis!14))) e!1796285 tp!907640))))

(declare-fun e!1796277 () Bool)

(assert (=> b!2836813 (= e!1796277 (and tp!907645 tp!907646))))

(declare-fun tp!907644 () Bool)

(declare-fun b!2836814 () Bool)

(assert (=> b!2836814 (= e!1796280 (and (inv!21 (value!161610 (h!38908 tokens!612))) e!1796290 tp!907644))))

(declare-fun tp!907638 () Bool)

(declare-fun b!2836815 () Bool)

(assert (=> b!2836815 (= e!1796276 (and tp!907638 (inv!45458 (tag!5530 (h!38909 rules!4246))) (inv!45462 (transformation!5026 (h!38909 rules!4246))) e!1796277))))

(declare-fun e!1796282 () Bool)

(declare-fun tp!907642 () Bool)

(declare-fun b!2836816 () Bool)

(assert (=> b!2836816 (= e!1796285 (and tp!907642 (inv!45458 (tag!5530 (rule!7454 (h!38908 tokensBis!14)))) (inv!45462 (transformation!5026 (rule!7454 (h!38908 tokensBis!14)))) e!1796282))))

(assert (=> b!2836817 (= e!1796282 (and tp!907637 tp!907648))))

(declare-fun b!2836818 () Bool)

(declare-fun res!1180454 () Bool)

(assert (=> b!2836818 (=> (not res!1180454) (not e!1796278))))

(declare-fun rulesInvariant!4032 (LexerInterface!4616 List!33613) Bool)

(assert (=> b!2836818 (= res!1180454 (rulesInvariant!4032 thiss!27264 rules!4246))))

(assert (= (and start!275948 res!1180453) b!2836808))

(assert (= (and b!2836808 res!1180455) b!2836818))

(assert (= (and b!2836818 res!1180454) b!2836810))

(assert (= b!2836815 b!2836813))

(assert (= b!2836811 b!2836815))

(assert (= (and start!275948 ((_ is Cons!33489) rules!4246)) b!2836811))

(assert (= b!2836816 b!2836817))

(assert (= b!2836812 b!2836816))

(assert (= b!2836807 b!2836812))

(assert (= (and start!275948 ((_ is Cons!33488) tokensBis!14)) b!2836807))

(assert (= b!2836809 b!2836806))

(assert (= b!2836814 b!2836809))

(assert (= b!2836805 b!2836814))

(assert (= (and start!275948 ((_ is Cons!33488) tokens!612)) b!2836805))

(declare-fun m!3266623 () Bool)

(assert (=> b!2836805 m!3266623))

(declare-fun m!3266625 () Bool)

(assert (=> b!2836814 m!3266625))

(declare-fun m!3266627 () Bool)

(assert (=> b!2836809 m!3266627))

(declare-fun m!3266629 () Bool)

(assert (=> b!2836809 m!3266629))

(declare-fun m!3266631 () Bool)

(assert (=> b!2836812 m!3266631))

(declare-fun m!3266633 () Bool)

(assert (=> b!2836815 m!3266633))

(declare-fun m!3266635 () Bool)

(assert (=> b!2836815 m!3266635))

(declare-fun m!3266637 () Bool)

(assert (=> b!2836816 m!3266637))

(declare-fun m!3266639 () Bool)

(assert (=> b!2836816 m!3266639))

(declare-fun m!3266641 () Bool)

(assert (=> b!2836808 m!3266641))

(declare-fun m!3266643 () Bool)

(assert (=> b!2836818 m!3266643))

(declare-fun m!3266645 () Bool)

(assert (=> b!2836807 m!3266645))

(check-sat (not b!2836807) b_and!207669 (not b_next!82497) (not b_next!82507) (not b!2836816) (not b!2836809) (not b!2836811) (not b!2836818) b_and!207667 b_and!207673 (not b!2836815) (not b_next!82505) b_and!207665 (not b!2836812) (not b!2836814) (not b!2836808) (not b_next!82503) (not b_next!82499) (not b!2836805) b_and!207671 (not b_next!82501) b_and!207663)
(check-sat b_and!207669 (not b_next!82497) (not b_next!82507) b_and!207667 b_and!207673 (not b_next!82505) b_and!207665 b_and!207671 (not b_next!82503) (not b_next!82499) (not b_next!82501) b_and!207663)
