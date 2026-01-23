; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!273234 () Bool)

(assert start!273234)

(declare-fun b!2817664 () Bool)

(declare-fun b_free!80405 () Bool)

(declare-fun b_next!81109 () Bool)

(assert (=> b!2817664 (= b_free!80405 (not b_next!81109))))

(declare-fun tp!899582 () Bool)

(declare-fun b_and!205703 () Bool)

(assert (=> b!2817664 (= tp!899582 b_and!205703)))

(declare-fun b_free!80407 () Bool)

(declare-fun b_next!81111 () Bool)

(assert (=> b!2817664 (= b_free!80407 (not b_next!81111))))

(declare-fun tp!899588 () Bool)

(declare-fun b_and!205705 () Bool)

(assert (=> b!2817664 (= tp!899588 b_and!205705)))

(declare-fun b!2817663 () Bool)

(declare-fun b_free!80409 () Bool)

(declare-fun b_next!81113 () Bool)

(assert (=> b!2817663 (= b_free!80409 (not b_next!81113))))

(declare-fun tp!899590 () Bool)

(declare-fun b_and!205707 () Bool)

(assert (=> b!2817663 (= tp!899590 b_and!205707)))

(declare-fun b_free!80411 () Bool)

(declare-fun b_next!81115 () Bool)

(assert (=> b!2817663 (= b_free!80411 (not b_next!81115))))

(declare-fun tp!899587 () Bool)

(declare-fun b_and!205709 () Bool)

(assert (=> b!2817663 (= tp!899587 b_and!205709)))

(declare-fun b!2817677 () Bool)

(declare-fun e!1782026 () Bool)

(assert (=> b!2817677 (= e!1782026 true)))

(declare-fun b!2817676 () Bool)

(declare-fun e!1782025 () Bool)

(assert (=> b!2817676 (= e!1782025 e!1782026)))

(declare-fun b!2817675 () Bool)

(declare-fun e!1782024 () Bool)

(assert (=> b!2817675 (= e!1782024 e!1782025)))

(declare-fun b!2817657 () Bool)

(assert (=> b!2817657 e!1782024))

(assert (= b!2817676 b!2817677))

(assert (= b!2817675 b!2817676))

(declare-datatypes ((C!16824 0))(
  ( (C!16825 (val!10392 Int)) )
))
(declare-datatypes ((List!33112 0))(
  ( (Nil!32988) (Cons!32988 (h!38408 (_ BitVec 16)) (t!230195 List!33112)) )
))
(declare-datatypes ((TokenValue!5161 0))(
  ( (FloatLiteralValue!10322 (text!36572 List!33112)) (TokenValueExt!5160 (__x!21995 Int)) (Broken!25805 (value!158827 List!33112)) (Object!5284) (End!5161) (Def!5161) (Underscore!5161) (Match!5161) (Else!5161) (Error!5161) (Case!5161) (If!5161) (Extends!5161) (Abstract!5161) (Class!5161) (Val!5161) (DelimiterValue!10322 (del!5221 List!33112)) (KeywordValue!5167 (value!158828 List!33112)) (CommentValue!10322 (value!158829 List!33112)) (WhitespaceValue!10322 (value!158830 List!33112)) (IndentationValue!5161 (value!158831 List!33112)) (String!36260) (Int32!5161) (Broken!25806 (value!158832 List!33112)) (Boolean!5162) (Unit!46951) (OperatorValue!5164 (op!5221 List!33112)) (IdentifierValue!10322 (value!158833 List!33112)) (IdentifierValue!10323 (value!158834 List!33112)) (WhitespaceValue!10323 (value!158835 List!33112)) (True!10322) (False!10322) (Broken!25807 (value!158836 List!33112)) (Broken!25808 (value!158837 List!33112)) (True!10323) (RightBrace!5161) (RightBracket!5161) (Colon!5161) (Null!5161) (Comma!5161) (LeftBracket!5161) (False!10323) (LeftBrace!5161) (ImaginaryLiteralValue!5161 (text!36573 List!33112)) (StringLiteralValue!15483 (value!158838 List!33112)) (EOFValue!5161 (value!158839 List!33112)) (IdentValue!5161 (value!158840 List!33112)) (DelimiterValue!10323 (value!158841 List!33112)) (DedentValue!5161 (value!158842 List!33112)) (NewLineValue!5161 (value!158843 List!33112)) (IntegerValue!15483 (value!158844 (_ BitVec 32)) (text!36574 List!33112)) (IntegerValue!15484 (value!158845 Int) (text!36575 List!33112)) (Times!5161) (Or!5161) (Equal!5161) (Minus!5161) (Broken!25809 (value!158846 List!33112)) (And!5161) (Div!5161) (LessEqual!5161) (Mod!5161) (Concat!13482) (Not!5161) (Plus!5161) (SpaceValue!5161 (value!158847 List!33112)) (IntegerValue!15485 (value!158848 Int) (text!36576 List!33112)) (StringLiteralValue!15484 (text!36577 List!33112)) (FloatLiteralValue!10323 (text!36578 List!33112)) (BytesLiteralValue!5161 (value!158849 List!33112)) (CommentValue!10323 (value!158850 List!33112)) (StringLiteralValue!15485 (value!158851 List!33112)) (ErrorTokenValue!5161 (msg!5222 List!33112)) )
))
(declare-datatypes ((List!33113 0))(
  ( (Nil!32989) (Cons!32989 (h!38409 C!16824) (t!230196 List!33113)) )
))
(declare-datatypes ((IArray!20479 0))(
  ( (IArray!20480 (innerList!10297 List!33113)) )
))
(declare-datatypes ((Conc!10237 0))(
  ( (Node!10237 (left!24917 Conc!10237) (right!25247 Conc!10237) (csize!20704 Int) (cheight!10448 Int)) (Leaf!15594 (xs!13349 IArray!20479) (csize!20705 Int)) (Empty!10237) )
))
(declare-datatypes ((BalanceConc!20112 0))(
  ( (BalanceConc!20113 (c!456795 Conc!10237)) )
))
(declare-datatypes ((TokenValueInjection!9750 0))(
  ( (TokenValueInjection!9751 (toValue!6941 Int) (toChars!6800 Int)) )
))
(declare-datatypes ((Regex!8321 0))(
  ( (ElementMatch!8321 (c!456796 C!16824)) (Concat!13483 (regOne!17154 Regex!8321) (regTwo!17154 Regex!8321)) (EmptyExpr!8321) (Star!8321 (reg!8650 Regex!8321)) (EmptyLang!8321) (Union!8321 (regOne!17155 Regex!8321) (regTwo!17155 Regex!8321)) )
))
(declare-datatypes ((String!36261 0))(
  ( (String!36262 (value!158852 String)) )
))
(declare-datatypes ((Rule!9662 0))(
  ( (Rule!9663 (regex!4931 Regex!8321) (tag!5435 String!36261) (isSeparator!4931 Bool) (transformation!4931 TokenValueInjection!9750)) )
))
(declare-datatypes ((List!33114 0))(
  ( (Nil!32990) (Cons!32990 (h!38410 Rule!9662) (t!230197 List!33114)) )
))
(declare-fun rules!4424 () List!33114)

(get-info :version)

(assert (= (and b!2817657 ((_ is Cons!32990) rules!4424)) b!2817675))

(declare-fun lambda!103393 () Int)

(declare-fun order!17463 () Int)

(declare-fun order!17465 () Int)

(declare-fun dynLambda!13770 (Int Int) Int)

(declare-fun dynLambda!13771 (Int Int) Int)

(assert (=> b!2817677 (< (dynLambda!13770 order!17463 (toValue!6941 (transformation!4931 (h!38410 rules!4424)))) (dynLambda!13771 order!17465 lambda!103393))))

(declare-fun order!17467 () Int)

(declare-fun dynLambda!13772 (Int Int) Int)

(assert (=> b!2817677 (< (dynLambda!13772 order!17467 (toChars!6800 (transformation!4931 (h!38410 rules!4424)))) (dynLambda!13771 order!17465 lambda!103393))))

(declare-fun e!1782007 () Bool)

(declare-fun e!1782011 () Bool)

(declare-fun b!2817651 () Bool)

(declare-fun tp!899589 () Bool)

(declare-fun inv!44902 (String!36261) Bool)

(declare-fun inv!44905 (TokenValueInjection!9750) Bool)

(assert (=> b!2817651 (= e!1782011 (and tp!899589 (inv!44902 (tag!5435 (h!38410 rules!4424))) (inv!44905 (transformation!4931 (h!38410 rules!4424))) e!1782007))))

(declare-fun b!2817652 () Bool)

(declare-fun e!1782014 () Bool)

(declare-datatypes ((Token!9264 0))(
  ( (Token!9265 (value!158853 TokenValue!5161) (rule!7359 Rule!9662) (size!25699 Int) (originalCharacters!5663 List!33113)) )
))
(declare-datatypes ((List!33115 0))(
  ( (Nil!32991) (Cons!32991 (h!38411 Token!9264) (t!230198 List!33115)) )
))
(declare-fun l!6581 () List!33115)

(declare-fun tp!899584 () Bool)

(declare-fun e!1782012 () Bool)

(declare-fun inv!44906 (Token!9264) Bool)

(assert (=> b!2817652 (= e!1782014 (and (inv!44906 (h!38411 l!6581)) e!1782012 tp!899584))))

(declare-fun b!2817653 () Bool)

(declare-fun e!1782004 () Bool)

(declare-fun tp!899585 () Bool)

(assert (=> b!2817653 (= e!1782004 (and e!1782011 tp!899585))))

(declare-fun b!2817654 () Bool)

(declare-fun res!1172572 () Bool)

(declare-fun e!1782008 () Bool)

(assert (=> b!2817654 (=> (not res!1172572) (not e!1782008))))

(declare-fun isEmpty!18252 (List!33114) Bool)

(assert (=> b!2817654 (= res!1172572 (not (isEmpty!18252 rules!4424)))))

(declare-fun e!1782013 () Bool)

(declare-datatypes ((LexerInterface!4522 0))(
  ( (LexerInterfaceExt!4519 (__x!21996 Int)) (Lexer!4520) )
))
(declare-fun thiss!27755 () LexerInterface!4522)

(declare-fun lt!1006136 () List!33115)

(declare-fun b!2817655 () Bool)

(declare-datatypes ((IArray!20481 0))(
  ( (IArray!20482 (innerList!10298 List!33115)) )
))
(declare-datatypes ((Conc!10238 0))(
  ( (Node!10238 (left!24918 Conc!10238) (right!25248 Conc!10238) (csize!20706 Int) (cheight!10449 Int)) (Leaf!15595 (xs!13350 IArray!20481) (csize!20707 Int)) (Empty!10238) )
))
(declare-datatypes ((BalanceConc!20114 0))(
  ( (BalanceConc!20115 (c!456797 Conc!10238)) )
))
(declare-fun rulesProduceEachTokenIndividually!1084 (LexerInterface!4522 List!33114 BalanceConc!20114) Bool)

(declare-fun seqFromList!3234 (List!33115) BalanceConc!20114)

(assert (=> b!2817655 (= e!1782013 (rulesProduceEachTokenIndividually!1084 thiss!27755 rules!4424 (seqFromList!3234 lt!1006136)))))

(assert (=> b!2817657 (= e!1782008 (not e!1782013))))

(declare-fun res!1172568 () Bool)

(assert (=> b!2817657 (=> res!1172568 e!1782013)))

(declare-fun lt!1006135 () Bool)

(assert (=> b!2817657 (= res!1172568 (not lt!1006135))))

(declare-fun forall!6752 (List!33115 Int) Bool)

(assert (=> b!2817657 (forall!6752 lt!1006136 lambda!103393)))

(declare-datatypes ((Unit!46952 0))(
  ( (Unit!46953) )
))
(declare-fun lt!1006137 () Unit!46952)

(declare-fun lemmaForallSubseq!207 (List!33115 List!33115 Int) Unit!46952)

(assert (=> b!2817657 (= lt!1006137 (lemmaForallSubseq!207 lt!1006136 l!6581 lambda!103393))))

(declare-fun e!1782006 () Bool)

(assert (=> b!2817657 (= lt!1006135 e!1782006)))

(declare-fun res!1172569 () Bool)

(assert (=> b!2817657 (=> res!1172569 e!1782006)))

(assert (=> b!2817657 (= res!1172569 (not ((_ is Cons!32991) lt!1006136)))))

(declare-fun rulesProduceEachTokenIndividuallyList!1574 (LexerInterface!4522 List!33114 List!33115) Bool)

(assert (=> b!2817657 (= lt!1006135 (rulesProduceEachTokenIndividuallyList!1574 thiss!27755 rules!4424 lt!1006136))))

(declare-fun i!1730 () Int)

(declare-fun take!525 (List!33115 Int) List!33115)

(assert (=> b!2817657 (= lt!1006136 (take!525 l!6581 i!1730))))

(declare-fun b!2817658 () Bool)

(declare-fun e!1782010 () Bool)

(assert (=> b!2817658 (= e!1782006 e!1782010)))

(declare-fun res!1172576 () Bool)

(assert (=> b!2817658 (=> (not res!1172576) (not e!1782010))))

(declare-fun rulesProduceIndividualToken!2062 (LexerInterface!4522 List!33114 Token!9264) Bool)

(assert (=> b!2817658 (= res!1172576 (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 lt!1006136)))))

(declare-fun b!2817659 () Bool)

(declare-fun e!1782016 () Bool)

(declare-fun tp!899583 () Bool)

(declare-fun inv!21 (TokenValue!5161) Bool)

(assert (=> b!2817659 (= e!1782012 (and (inv!21 (value!158853 (h!38411 l!6581))) e!1782016 tp!899583))))

(declare-fun tp!899586 () Bool)

(declare-fun e!1782005 () Bool)

(declare-fun b!2817660 () Bool)

(assert (=> b!2817660 (= e!1782016 (and tp!899586 (inv!44902 (tag!5435 (rule!7359 (h!38411 l!6581)))) (inv!44905 (transformation!4931 (rule!7359 (h!38411 l!6581)))) e!1782005))))

(declare-fun b!2817661 () Bool)

(declare-fun res!1172575 () Bool)

(assert (=> b!2817661 (=> (not res!1172575) (not e!1782008))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!659 (LexerInterface!4522 List!33115 List!33114) Bool)

(assert (=> b!2817661 (= res!1172575 (tokensListTwoByTwoPredicateSeparableList!659 thiss!27755 l!6581 rules!4424))))

(declare-fun b!2817662 () Bool)

(declare-fun res!1172574 () Bool)

(assert (=> b!2817662 (=> (not res!1172574) (not e!1782008))))

(assert (=> b!2817662 (= res!1172574 ((_ is Nil!32991) l!6581))))

(assert (=> b!2817663 (= e!1782005 (and tp!899590 tp!899587))))

(assert (=> b!2817664 (= e!1782007 (and tp!899582 tp!899588))))

(declare-fun res!1172571 () Bool)

(assert (=> start!273234 (=> (not res!1172571) (not e!1782008))))

(assert (=> start!273234 (= res!1172571 ((_ is Lexer!4520) thiss!27755))))

(assert (=> start!273234 e!1782008))

(assert (=> start!273234 true))

(assert (=> start!273234 e!1782004))

(assert (=> start!273234 e!1782014))

(declare-fun b!2817656 () Bool)

(declare-fun res!1172570 () Bool)

(assert (=> b!2817656 (=> (not res!1172570) (not e!1782008))))

(assert (=> b!2817656 (= res!1172570 (rulesProduceEachTokenIndividuallyList!1574 thiss!27755 rules!4424 l!6581))))

(declare-fun b!2817665 () Bool)

(declare-fun res!1172573 () Bool)

(assert (=> b!2817665 (=> (not res!1172573) (not e!1782008))))

(declare-fun rulesInvariant!3940 (LexerInterface!4522 List!33114) Bool)

(assert (=> b!2817665 (= res!1172573 (rulesInvariant!3940 thiss!27755 rules!4424))))

(declare-fun b!2817666 () Bool)

(assert (=> b!2817666 (= e!1782010 (rulesProduceEachTokenIndividuallyList!1574 thiss!27755 rules!4424 (t!230198 lt!1006136)))))

(assert (= (and start!273234 res!1172571) b!2817654))

(assert (= (and b!2817654 res!1172572) b!2817665))

(assert (= (and b!2817665 res!1172573) b!2817656))

(assert (= (and b!2817656 res!1172570) b!2817661))

(assert (= (and b!2817661 res!1172575) b!2817662))

(assert (= (and b!2817662 res!1172574) b!2817657))

(assert (= (and b!2817657 (not res!1172569)) b!2817658))

(assert (= (and b!2817658 res!1172576) b!2817666))

(assert (= (and b!2817657 (not res!1172568)) b!2817655))

(assert (= b!2817651 b!2817664))

(assert (= b!2817653 b!2817651))

(assert (= (and start!273234 ((_ is Cons!32990) rules!4424)) b!2817653))

(assert (= b!2817660 b!2817663))

(assert (= b!2817659 b!2817660))

(assert (= b!2817652 b!2817659))

(assert (= (and start!273234 ((_ is Cons!32991) l!6581)) b!2817652))

(declare-fun m!3248427 () Bool)

(assert (=> b!2817651 m!3248427))

(declare-fun m!3248429 () Bool)

(assert (=> b!2817651 m!3248429))

(declare-fun m!3248431 () Bool)

(assert (=> b!2817656 m!3248431))

(declare-fun m!3248433 () Bool)

(assert (=> b!2817658 m!3248433))

(declare-fun m!3248435 () Bool)

(assert (=> b!2817660 m!3248435))

(declare-fun m!3248437 () Bool)

(assert (=> b!2817660 m!3248437))

(declare-fun m!3248439 () Bool)

(assert (=> b!2817654 m!3248439))

(declare-fun m!3248441 () Bool)

(assert (=> b!2817657 m!3248441))

(declare-fun m!3248443 () Bool)

(assert (=> b!2817657 m!3248443))

(declare-fun m!3248445 () Bool)

(assert (=> b!2817657 m!3248445))

(declare-fun m!3248447 () Bool)

(assert (=> b!2817657 m!3248447))

(declare-fun m!3248449 () Bool)

(assert (=> b!2817659 m!3248449))

(declare-fun m!3248451 () Bool)

(assert (=> b!2817666 m!3248451))

(declare-fun m!3248453 () Bool)

(assert (=> b!2817665 m!3248453))

(declare-fun m!3248455 () Bool)

(assert (=> b!2817652 m!3248455))

(declare-fun m!3248457 () Bool)

(assert (=> b!2817655 m!3248457))

(assert (=> b!2817655 m!3248457))

(declare-fun m!3248459 () Bool)

(assert (=> b!2817655 m!3248459))

(declare-fun m!3248461 () Bool)

(assert (=> b!2817661 m!3248461))

(check-sat (not b!2817675) b_and!205705 (not b!2817665) (not b!2817666) (not b!2817655) (not b!2817654) (not b!2817661) (not b!2817657) (not b!2817660) (not b!2817659) b_and!205707 (not b_next!81115) (not b_next!81109) b_and!205709 (not b!2817656) (not b!2817658) (not b_next!81113) (not b!2817651) (not b_next!81111) (not b!2817653) b_and!205703 (not b!2817652))
(check-sat b_and!205707 b_and!205705 b_and!205709 b_and!205703 (not b_next!81115) (not b_next!81109) (not b_next!81113) (not b_next!81111))
(get-model)

(declare-fun d!818233 () Bool)

(declare-fun res!1172581 () Bool)

(declare-fun e!1782029 () Bool)

(assert (=> d!818233 (=> (not res!1172581) (not e!1782029))))

(declare-fun isEmpty!18253 (List!33113) Bool)

(assert (=> d!818233 (= res!1172581 (not (isEmpty!18253 (originalCharacters!5663 (h!38411 l!6581)))))))

(assert (=> d!818233 (= (inv!44906 (h!38411 l!6581)) e!1782029)))

(declare-fun b!2817682 () Bool)

(declare-fun res!1172582 () Bool)

(assert (=> b!2817682 (=> (not res!1172582) (not e!1782029))))

(declare-fun list!12377 (BalanceConc!20112) List!33113)

(declare-fun dynLambda!13773 (Int TokenValue!5161) BalanceConc!20112)

(assert (=> b!2817682 (= res!1172582 (= (originalCharacters!5663 (h!38411 l!6581)) (list!12377 (dynLambda!13773 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (value!158853 (h!38411 l!6581))))))))

(declare-fun b!2817683 () Bool)

(declare-fun size!25700 (List!33113) Int)

(assert (=> b!2817683 (= e!1782029 (= (size!25699 (h!38411 l!6581)) (size!25700 (originalCharacters!5663 (h!38411 l!6581)))))))

(assert (= (and d!818233 res!1172581) b!2817682))

(assert (= (and b!2817682 res!1172582) b!2817683))

(declare-fun b_lambda!84231 () Bool)

(assert (=> (not b_lambda!84231) (not b!2817682)))

(declare-fun t!230200 () Bool)

(declare-fun tb!153685 () Bool)

(assert (=> (and b!2817664 (= (toChars!6800 (transformation!4931 (h!38410 rules!4424))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581))))) t!230200) tb!153685))

(declare-fun b!2817688 () Bool)

(declare-fun e!1782032 () Bool)

(declare-fun tp!899593 () Bool)

(declare-fun inv!44907 (Conc!10237) Bool)

(assert (=> b!2817688 (= e!1782032 (and (inv!44907 (c!456795 (dynLambda!13773 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (value!158853 (h!38411 l!6581))))) tp!899593))))

(declare-fun result!191290 () Bool)

(declare-fun inv!44908 (BalanceConc!20112) Bool)

(assert (=> tb!153685 (= result!191290 (and (inv!44908 (dynLambda!13773 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (value!158853 (h!38411 l!6581)))) e!1782032))))

(assert (= tb!153685 b!2817688))

(declare-fun m!3248463 () Bool)

(assert (=> b!2817688 m!3248463))

(declare-fun m!3248465 () Bool)

(assert (=> tb!153685 m!3248465))

(assert (=> b!2817682 t!230200))

(declare-fun b_and!205711 () Bool)

(assert (= b_and!205705 (and (=> t!230200 result!191290) b_and!205711)))

(declare-fun t!230202 () Bool)

(declare-fun tb!153687 () Bool)

(assert (=> (and b!2817663 (= (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581))))) t!230202) tb!153687))

(declare-fun result!191294 () Bool)

(assert (= result!191294 result!191290))

(assert (=> b!2817682 t!230202))

(declare-fun b_and!205713 () Bool)

(assert (= b_and!205709 (and (=> t!230202 result!191294) b_and!205713)))

(declare-fun m!3248467 () Bool)

(assert (=> d!818233 m!3248467))

(declare-fun m!3248469 () Bool)

(assert (=> b!2817682 m!3248469))

(assert (=> b!2817682 m!3248469))

(declare-fun m!3248471 () Bool)

(assert (=> b!2817682 m!3248471))

(declare-fun m!3248473 () Bool)

(assert (=> b!2817683 m!3248473))

(assert (=> b!2817652 d!818233))

(declare-fun bs!517070 () Bool)

(declare-fun d!818235 () Bool)

(assert (= bs!517070 (and d!818235 b!2817657)))

(declare-fun lambda!103396 () Int)

(assert (=> bs!517070 (= (= thiss!27755 Lexer!4520) (= lambda!103396 lambda!103393))))

(declare-fun b!2817697 () Bool)

(declare-fun e!1782041 () Bool)

(assert (=> b!2817697 (= e!1782041 true)))

(declare-fun b!2817696 () Bool)

(declare-fun e!1782040 () Bool)

(assert (=> b!2817696 (= e!1782040 e!1782041)))

(declare-fun b!2817695 () Bool)

(declare-fun e!1782039 () Bool)

(assert (=> b!2817695 (= e!1782039 e!1782040)))

(assert (=> d!818235 e!1782039))

(assert (= b!2817696 b!2817697))

(assert (= b!2817695 b!2817696))

(assert (= (and d!818235 ((_ is Cons!32990) rules!4424)) b!2817695))

(assert (=> b!2817697 (< (dynLambda!13770 order!17463 (toValue!6941 (transformation!4931 (h!38410 rules!4424)))) (dynLambda!13771 order!17465 lambda!103396))))

(assert (=> b!2817697 (< (dynLambda!13772 order!17467 (toChars!6800 (transformation!4931 (h!38410 rules!4424)))) (dynLambda!13771 order!17465 lambda!103396))))

(assert (=> d!818235 true))

(declare-fun lt!1006140 () Bool)

(assert (=> d!818235 (= lt!1006140 (forall!6752 l!6581 lambda!103396))))

(declare-fun e!1782038 () Bool)

(assert (=> d!818235 (= lt!1006140 e!1782038)))

(declare-fun res!1172587 () Bool)

(assert (=> d!818235 (=> res!1172587 e!1782038)))

(assert (=> d!818235 (= res!1172587 (not ((_ is Cons!32991) l!6581)))))

(assert (=> d!818235 (not (isEmpty!18252 rules!4424))))

(assert (=> d!818235 (= (rulesProduceEachTokenIndividuallyList!1574 thiss!27755 rules!4424 l!6581) lt!1006140)))

(declare-fun b!2817693 () Bool)

(declare-fun e!1782037 () Bool)

(assert (=> b!2817693 (= e!1782038 e!1782037)))

(declare-fun res!1172588 () Bool)

(assert (=> b!2817693 (=> (not res!1172588) (not e!1782037))))

(assert (=> b!2817693 (= res!1172588 (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 l!6581)))))

(declare-fun b!2817694 () Bool)

(assert (=> b!2817694 (= e!1782037 (rulesProduceEachTokenIndividuallyList!1574 thiss!27755 rules!4424 (t!230198 l!6581)))))

(assert (= (and d!818235 (not res!1172587)) b!2817693))

(assert (= (and b!2817693 res!1172588) b!2817694))

(declare-fun m!3248475 () Bool)

(assert (=> d!818235 m!3248475))

(assert (=> d!818235 m!3248439))

(declare-fun m!3248477 () Bool)

(assert (=> b!2817693 m!3248477))

(declare-fun m!3248479 () Bool)

(assert (=> b!2817694 m!3248479))

(assert (=> b!2817656 d!818235))

(declare-fun bs!517071 () Bool)

(declare-fun d!818239 () Bool)

(assert (= bs!517071 (and d!818239 b!2817657)))

(declare-fun lambda!103397 () Int)

(assert (=> bs!517071 (= (= thiss!27755 Lexer!4520) (= lambda!103397 lambda!103393))))

(declare-fun bs!517072 () Bool)

(assert (= bs!517072 (and d!818239 d!818235)))

(assert (=> bs!517072 (= lambda!103397 lambda!103396)))

(declare-fun b!2817704 () Bool)

(declare-fun e!1782046 () Bool)

(assert (=> b!2817704 (= e!1782046 true)))

(declare-fun b!2817703 () Bool)

(declare-fun e!1782045 () Bool)

(assert (=> b!2817703 (= e!1782045 e!1782046)))

(declare-fun b!2817702 () Bool)

(declare-fun e!1782044 () Bool)

(assert (=> b!2817702 (= e!1782044 e!1782045)))

(assert (=> d!818239 e!1782044))

(assert (= b!2817703 b!2817704))

(assert (= b!2817702 b!2817703))

(assert (= (and d!818239 ((_ is Cons!32990) rules!4424)) b!2817702))

(assert (=> b!2817704 (< (dynLambda!13770 order!17463 (toValue!6941 (transformation!4931 (h!38410 rules!4424)))) (dynLambda!13771 order!17465 lambda!103397))))

(assert (=> b!2817704 (< (dynLambda!13772 order!17467 (toChars!6800 (transformation!4931 (h!38410 rules!4424)))) (dynLambda!13771 order!17465 lambda!103397))))

(assert (=> d!818239 true))

(declare-fun lt!1006141 () Bool)

(assert (=> d!818239 (= lt!1006141 (forall!6752 (t!230198 lt!1006136) lambda!103397))))

(declare-fun e!1782043 () Bool)

(assert (=> d!818239 (= lt!1006141 e!1782043)))

(declare-fun res!1172589 () Bool)

(assert (=> d!818239 (=> res!1172589 e!1782043)))

(assert (=> d!818239 (= res!1172589 (not ((_ is Cons!32991) (t!230198 lt!1006136))))))

(assert (=> d!818239 (not (isEmpty!18252 rules!4424))))

(assert (=> d!818239 (= (rulesProduceEachTokenIndividuallyList!1574 thiss!27755 rules!4424 (t!230198 lt!1006136)) lt!1006141)))

(declare-fun b!2817700 () Bool)

(declare-fun e!1782042 () Bool)

(assert (=> b!2817700 (= e!1782043 e!1782042)))

(declare-fun res!1172590 () Bool)

(assert (=> b!2817700 (=> (not res!1172590) (not e!1782042))))

(assert (=> b!2817700 (= res!1172590 (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 (t!230198 lt!1006136))))))

(declare-fun b!2817701 () Bool)

(assert (=> b!2817701 (= e!1782042 (rulesProduceEachTokenIndividuallyList!1574 thiss!27755 rules!4424 (t!230198 (t!230198 lt!1006136))))))

(assert (= (and d!818239 (not res!1172589)) b!2817700))

(assert (= (and b!2817700 res!1172590) b!2817701))

(declare-fun m!3248481 () Bool)

(assert (=> d!818239 m!3248481))

(assert (=> d!818239 m!3248439))

(declare-fun m!3248483 () Bool)

(assert (=> b!2817700 m!3248483))

(declare-fun m!3248485 () Bool)

(assert (=> b!2817701 m!3248485))

(assert (=> b!2817666 d!818239))

(declare-fun bs!517075 () Bool)

(declare-fun d!818241 () Bool)

(assert (= bs!517075 (and d!818241 b!2817657)))

(declare-fun lambda!103407 () Int)

(assert (=> bs!517075 (= (= thiss!27755 Lexer!4520) (= lambda!103407 lambda!103393))))

(declare-fun bs!517076 () Bool)

(assert (= bs!517076 (and d!818241 d!818235)))

(assert (=> bs!517076 (= lambda!103407 lambda!103396)))

(declare-fun bs!517077 () Bool)

(assert (= bs!517077 (and d!818241 d!818239)))

(assert (=> bs!517077 (= lambda!103407 lambda!103397)))

(declare-fun b!2817721 () Bool)

(declare-fun e!1782061 () Bool)

(assert (=> b!2817721 (= e!1782061 true)))

(declare-fun b!2817720 () Bool)

(declare-fun e!1782060 () Bool)

(assert (=> b!2817720 (= e!1782060 e!1782061)))

(declare-fun b!2817719 () Bool)

(declare-fun e!1782059 () Bool)

(assert (=> b!2817719 (= e!1782059 e!1782060)))

(assert (=> d!818241 e!1782059))

(assert (= b!2817720 b!2817721))

(assert (= b!2817719 b!2817720))

(assert (= (and d!818241 ((_ is Cons!32990) rules!4424)) b!2817719))

(assert (=> b!2817721 (< (dynLambda!13770 order!17463 (toValue!6941 (transformation!4931 (h!38410 rules!4424)))) (dynLambda!13771 order!17465 lambda!103407))))

(assert (=> b!2817721 (< (dynLambda!13772 order!17467 (toChars!6800 (transformation!4931 (h!38410 rules!4424)))) (dynLambda!13771 order!17465 lambda!103407))))

(assert (=> d!818241 true))

(declare-fun e!1782058 () Bool)

(assert (=> d!818241 e!1782058))

(declare-fun res!1172599 () Bool)

(assert (=> d!818241 (=> (not res!1172599) (not e!1782058))))

(declare-fun lt!1006147 () Bool)

(declare-fun list!12378 (BalanceConc!20114) List!33115)

(assert (=> d!818241 (= res!1172599 (= lt!1006147 (forall!6752 (list!12378 (seqFromList!3234 lt!1006136)) lambda!103407)))))

(declare-fun forall!6753 (BalanceConc!20114 Int) Bool)

(assert (=> d!818241 (= lt!1006147 (forall!6753 (seqFromList!3234 lt!1006136) lambda!103407))))

(assert (=> d!818241 (not (isEmpty!18252 rules!4424))))

(assert (=> d!818241 (= (rulesProduceEachTokenIndividually!1084 thiss!27755 rules!4424 (seqFromList!3234 lt!1006136)) lt!1006147)))

(declare-fun b!2817718 () Bool)

(assert (=> b!2817718 (= e!1782058 (= lt!1006147 (rulesProduceEachTokenIndividuallyList!1574 thiss!27755 rules!4424 (list!12378 (seqFromList!3234 lt!1006136)))))))

(assert (= (and d!818241 res!1172599) b!2817718))

(assert (=> d!818241 m!3248457))

(declare-fun m!3248501 () Bool)

(assert (=> d!818241 m!3248501))

(assert (=> d!818241 m!3248501))

(declare-fun m!3248503 () Bool)

(assert (=> d!818241 m!3248503))

(assert (=> d!818241 m!3248457))

(declare-fun m!3248505 () Bool)

(assert (=> d!818241 m!3248505))

(assert (=> d!818241 m!3248439))

(assert (=> b!2817718 m!3248457))

(assert (=> b!2817718 m!3248501))

(assert (=> b!2817718 m!3248501))

(declare-fun m!3248507 () Bool)

(assert (=> b!2817718 m!3248507))

(assert (=> b!2817655 d!818241))

(declare-fun d!818251 () Bool)

(declare-fun fromListB!1462 (List!33115) BalanceConc!20114)

(assert (=> d!818251 (= (seqFromList!3234 lt!1006136) (fromListB!1462 lt!1006136))))

(declare-fun bs!517078 () Bool)

(assert (= bs!517078 d!818251))

(declare-fun m!3248509 () Bool)

(assert (=> bs!517078 m!3248509))

(assert (=> b!2817655 d!818251))

(declare-fun d!818253 () Bool)

(assert (=> d!818253 (= (isEmpty!18252 rules!4424) ((_ is Nil!32990) rules!4424))))

(assert (=> b!2817654 d!818253))

(declare-fun d!818255 () Bool)

(declare-fun res!1172602 () Bool)

(declare-fun e!1782064 () Bool)

(assert (=> d!818255 (=> (not res!1172602) (not e!1782064))))

(declare-fun rulesValid!1813 (LexerInterface!4522 List!33114) Bool)

(assert (=> d!818255 (= res!1172602 (rulesValid!1813 thiss!27755 rules!4424))))

(assert (=> d!818255 (= (rulesInvariant!3940 thiss!27755 rules!4424) e!1782064)))

(declare-fun b!2817724 () Bool)

(declare-datatypes ((List!33116 0))(
  ( (Nil!32992) (Cons!32992 (h!38412 String!36261) (t!230229 List!33116)) )
))
(declare-fun noDuplicateTag!1809 (LexerInterface!4522 List!33114 List!33116) Bool)

(assert (=> b!2817724 (= e!1782064 (noDuplicateTag!1809 thiss!27755 rules!4424 Nil!32992))))

(assert (= (and d!818255 res!1172602) b!2817724))

(declare-fun m!3248511 () Bool)

(assert (=> d!818255 m!3248511))

(declare-fun m!3248513 () Bool)

(assert (=> b!2817724 m!3248513))

(assert (=> b!2817665 d!818255))

(declare-fun d!818257 () Bool)

(declare-fun c!456802 () Bool)

(assert (=> d!818257 (= c!456802 ((_ is IntegerValue!15483) (value!158853 (h!38411 l!6581))))))

(declare-fun e!1782071 () Bool)

(assert (=> d!818257 (= (inv!21 (value!158853 (h!38411 l!6581))) e!1782071)))

(declare-fun b!2817735 () Bool)

(declare-fun e!1782072 () Bool)

(assert (=> b!2817735 (= e!1782071 e!1782072)))

(declare-fun c!456803 () Bool)

(assert (=> b!2817735 (= c!456803 ((_ is IntegerValue!15484) (value!158853 (h!38411 l!6581))))))

(declare-fun b!2817736 () Bool)

(declare-fun inv!17 (TokenValue!5161) Bool)

(assert (=> b!2817736 (= e!1782072 (inv!17 (value!158853 (h!38411 l!6581))))))

(declare-fun b!2817737 () Bool)

(declare-fun inv!16 (TokenValue!5161) Bool)

(assert (=> b!2817737 (= e!1782071 (inv!16 (value!158853 (h!38411 l!6581))))))

(declare-fun b!2817738 () Bool)

(declare-fun res!1172605 () Bool)

(declare-fun e!1782073 () Bool)

(assert (=> b!2817738 (=> res!1172605 e!1782073)))

(assert (=> b!2817738 (= res!1172605 (not ((_ is IntegerValue!15485) (value!158853 (h!38411 l!6581)))))))

(assert (=> b!2817738 (= e!1782072 e!1782073)))

(declare-fun b!2817739 () Bool)

(declare-fun inv!15 (TokenValue!5161) Bool)

(assert (=> b!2817739 (= e!1782073 (inv!15 (value!158853 (h!38411 l!6581))))))

(assert (= (and d!818257 c!456802) b!2817737))

(assert (= (and d!818257 (not c!456802)) b!2817735))

(assert (= (and b!2817735 c!456803) b!2817736))

(assert (= (and b!2817735 (not c!456803)) b!2817738))

(assert (= (and b!2817738 (not res!1172605)) b!2817739))

(declare-fun m!3248515 () Bool)

(assert (=> b!2817736 m!3248515))

(declare-fun m!3248517 () Bool)

(assert (=> b!2817737 m!3248517))

(declare-fun m!3248519 () Bool)

(assert (=> b!2817739 m!3248519))

(assert (=> b!2817659 d!818257))

(declare-fun d!818259 () Bool)

(declare-fun lt!1006173 () Bool)

(declare-fun e!1782097 () Bool)

(assert (=> d!818259 (= lt!1006173 e!1782097)))

(declare-fun res!1172625 () Bool)

(assert (=> d!818259 (=> (not res!1172625) (not e!1782097))))

(declare-datatypes ((tuple2!33358 0))(
  ( (tuple2!33359 (_1!19772 BalanceConc!20114) (_2!19772 BalanceConc!20112)) )
))
(declare-fun lex!1981 (LexerInterface!4522 List!33114 BalanceConc!20112) tuple2!33358)

(declare-fun print!1700 (LexerInterface!4522 BalanceConc!20114) BalanceConc!20112)

(declare-fun singletonSeq!2121 (Token!9264) BalanceConc!20114)

(assert (=> d!818259 (= res!1172625 (= (list!12378 (_1!19772 (lex!1981 thiss!27755 rules!4424 (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 lt!1006136)))))) (list!12378 (singletonSeq!2121 (h!38411 lt!1006136)))))))

(declare-fun e!1782096 () Bool)

(assert (=> d!818259 (= lt!1006173 e!1782096)))

(declare-fun res!1172624 () Bool)

(assert (=> d!818259 (=> (not res!1172624) (not e!1782096))))

(declare-fun lt!1006174 () tuple2!33358)

(declare-fun size!25701 (BalanceConc!20114) Int)

(assert (=> d!818259 (= res!1172624 (= (size!25701 (_1!19772 lt!1006174)) 1))))

(assert (=> d!818259 (= lt!1006174 (lex!1981 thiss!27755 rules!4424 (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 lt!1006136)))))))

(assert (=> d!818259 (not (isEmpty!18252 rules!4424))))

(assert (=> d!818259 (= (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 lt!1006136)) lt!1006173)))

(declare-fun b!2817770 () Bool)

(declare-fun res!1172626 () Bool)

(assert (=> b!2817770 (=> (not res!1172626) (not e!1782096))))

(declare-fun apply!7708 (BalanceConc!20114 Int) Token!9264)

(assert (=> b!2817770 (= res!1172626 (= (apply!7708 (_1!19772 lt!1006174) 0) (h!38411 lt!1006136)))))

(declare-fun b!2817771 () Bool)

(declare-fun isEmpty!18254 (BalanceConc!20112) Bool)

(assert (=> b!2817771 (= e!1782096 (isEmpty!18254 (_2!19772 lt!1006174)))))

(declare-fun b!2817772 () Bool)

(assert (=> b!2817772 (= e!1782097 (isEmpty!18254 (_2!19772 (lex!1981 thiss!27755 rules!4424 (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 lt!1006136)))))))))

(assert (= (and d!818259 res!1172624) b!2817770))

(assert (= (and b!2817770 res!1172626) b!2817771))

(assert (= (and d!818259 res!1172625) b!2817772))

(assert (=> d!818259 m!3248439))

(declare-fun m!3248547 () Bool)

(assert (=> d!818259 m!3248547))

(declare-fun m!3248549 () Bool)

(assert (=> d!818259 m!3248549))

(assert (=> d!818259 m!3248547))

(declare-fun m!3248551 () Bool)

(assert (=> d!818259 m!3248551))

(assert (=> d!818259 m!3248547))

(assert (=> d!818259 m!3248551))

(declare-fun m!3248553 () Bool)

(assert (=> d!818259 m!3248553))

(declare-fun m!3248555 () Bool)

(assert (=> d!818259 m!3248555))

(declare-fun m!3248557 () Bool)

(assert (=> d!818259 m!3248557))

(declare-fun m!3248559 () Bool)

(assert (=> b!2817770 m!3248559))

(declare-fun m!3248561 () Bool)

(assert (=> b!2817771 m!3248561))

(assert (=> b!2817772 m!3248547))

(assert (=> b!2817772 m!3248547))

(assert (=> b!2817772 m!3248551))

(assert (=> b!2817772 m!3248551))

(assert (=> b!2817772 m!3248553))

(declare-fun m!3248563 () Bool)

(assert (=> b!2817772 m!3248563))

(assert (=> b!2817658 d!818259))

(declare-fun d!818269 () Bool)

(declare-fun res!1172631 () Bool)

(declare-fun e!1782102 () Bool)

(assert (=> d!818269 (=> res!1172631 e!1782102)))

(assert (=> d!818269 (= res!1172631 ((_ is Nil!32991) lt!1006136))))

(assert (=> d!818269 (= (forall!6752 lt!1006136 lambda!103393) e!1782102)))

(declare-fun b!2817777 () Bool)

(declare-fun e!1782103 () Bool)

(assert (=> b!2817777 (= e!1782102 e!1782103)))

(declare-fun res!1172632 () Bool)

(assert (=> b!2817777 (=> (not res!1172632) (not e!1782103))))

(declare-fun dynLambda!13774 (Int Token!9264) Bool)

(assert (=> b!2817777 (= res!1172632 (dynLambda!13774 lambda!103393 (h!38411 lt!1006136)))))

(declare-fun b!2817778 () Bool)

(assert (=> b!2817778 (= e!1782103 (forall!6752 (t!230198 lt!1006136) lambda!103393))))

(assert (= (and d!818269 (not res!1172631)) b!2817777))

(assert (= (and b!2817777 res!1172632) b!2817778))

(declare-fun b_lambda!84233 () Bool)

(assert (=> (not b_lambda!84233) (not b!2817777)))

(declare-fun m!3248565 () Bool)

(assert (=> b!2817777 m!3248565))

(declare-fun m!3248567 () Bool)

(assert (=> b!2817778 m!3248567))

(assert (=> b!2817657 d!818269))

(declare-fun d!818271 () Bool)

(assert (=> d!818271 (forall!6752 lt!1006136 lambda!103393)))

(declare-fun lt!1006177 () Unit!46952)

(declare-fun choose!16666 (List!33115 List!33115 Int) Unit!46952)

(assert (=> d!818271 (= lt!1006177 (choose!16666 lt!1006136 l!6581 lambda!103393))))

(assert (=> d!818271 (forall!6752 l!6581 lambda!103393)))

(assert (=> d!818271 (= (lemmaForallSubseq!207 lt!1006136 l!6581 lambda!103393) lt!1006177)))

(declare-fun bs!517079 () Bool)

(assert (= bs!517079 d!818271))

(assert (=> bs!517079 m!3248441))

(declare-fun m!3248569 () Bool)

(assert (=> bs!517079 m!3248569))

(declare-fun m!3248571 () Bool)

(assert (=> bs!517079 m!3248571))

(assert (=> b!2817657 d!818271))

(declare-fun bs!517080 () Bool)

(declare-fun d!818273 () Bool)

(assert (= bs!517080 (and d!818273 b!2817657)))

(declare-fun lambda!103408 () Int)

(assert (=> bs!517080 (= (= thiss!27755 Lexer!4520) (= lambda!103408 lambda!103393))))

(declare-fun bs!517081 () Bool)

(assert (= bs!517081 (and d!818273 d!818235)))

(assert (=> bs!517081 (= lambda!103408 lambda!103396)))

(declare-fun bs!517082 () Bool)

(assert (= bs!517082 (and d!818273 d!818239)))

(assert (=> bs!517082 (= lambda!103408 lambda!103397)))

(declare-fun bs!517083 () Bool)

(assert (= bs!517083 (and d!818273 d!818241)))

(assert (=> bs!517083 (= lambda!103408 lambda!103407)))

(declare-fun b!2817783 () Bool)

(declare-fun e!1782108 () Bool)

(assert (=> b!2817783 (= e!1782108 true)))

(declare-fun b!2817782 () Bool)

(declare-fun e!1782107 () Bool)

(assert (=> b!2817782 (= e!1782107 e!1782108)))

(declare-fun b!2817781 () Bool)

(declare-fun e!1782106 () Bool)

(assert (=> b!2817781 (= e!1782106 e!1782107)))

(assert (=> d!818273 e!1782106))

(assert (= b!2817782 b!2817783))

(assert (= b!2817781 b!2817782))

(assert (= (and d!818273 ((_ is Cons!32990) rules!4424)) b!2817781))

(assert (=> b!2817783 (< (dynLambda!13770 order!17463 (toValue!6941 (transformation!4931 (h!38410 rules!4424)))) (dynLambda!13771 order!17465 lambda!103408))))

(assert (=> b!2817783 (< (dynLambda!13772 order!17467 (toChars!6800 (transformation!4931 (h!38410 rules!4424)))) (dynLambda!13771 order!17465 lambda!103408))))

(assert (=> d!818273 true))

(declare-fun lt!1006178 () Bool)

(assert (=> d!818273 (= lt!1006178 (forall!6752 lt!1006136 lambda!103408))))

(declare-fun e!1782105 () Bool)

(assert (=> d!818273 (= lt!1006178 e!1782105)))

(declare-fun res!1172633 () Bool)

(assert (=> d!818273 (=> res!1172633 e!1782105)))

(assert (=> d!818273 (= res!1172633 (not ((_ is Cons!32991) lt!1006136)))))

(assert (=> d!818273 (not (isEmpty!18252 rules!4424))))

(assert (=> d!818273 (= (rulesProduceEachTokenIndividuallyList!1574 thiss!27755 rules!4424 lt!1006136) lt!1006178)))

(declare-fun b!2817779 () Bool)

(declare-fun e!1782104 () Bool)

(assert (=> b!2817779 (= e!1782105 e!1782104)))

(declare-fun res!1172634 () Bool)

(assert (=> b!2817779 (=> (not res!1172634) (not e!1782104))))

(assert (=> b!2817779 (= res!1172634 (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 lt!1006136)))))

(declare-fun b!2817780 () Bool)

(assert (=> b!2817780 (= e!1782104 (rulesProduceEachTokenIndividuallyList!1574 thiss!27755 rules!4424 (t!230198 lt!1006136)))))

(assert (= (and d!818273 (not res!1172633)) b!2817779))

(assert (= (and b!2817779 res!1172634) b!2817780))

(declare-fun m!3248573 () Bool)

(assert (=> d!818273 m!3248573))

(assert (=> d!818273 m!3248439))

(assert (=> b!2817779 m!3248433))

(assert (=> b!2817780 m!3248451))

(assert (=> b!2817657 d!818273))

(declare-fun b!2817798 () Bool)

(declare-fun e!1782118 () List!33115)

(assert (=> b!2817798 (= e!1782118 Nil!32991)))

(declare-fun b!2817799 () Bool)

(declare-fun e!1782120 () Int)

(assert (=> b!2817799 (= e!1782120 i!1730)))

(declare-fun b!2817800 () Bool)

(assert (=> b!2817800 (= e!1782118 (Cons!32991 (h!38411 l!6581) (take!525 (t!230198 l!6581) (- i!1730 1))))))

(declare-fun b!2817802 () Bool)

(declare-fun e!1782117 () Bool)

(declare-fun lt!1006181 () List!33115)

(declare-fun e!1782119 () Int)

(declare-fun size!25703 (List!33115) Int)

(assert (=> b!2817802 (= e!1782117 (= (size!25703 lt!1006181) e!1782119))))

(declare-fun c!456817 () Bool)

(assert (=> b!2817802 (= c!456817 (<= i!1730 0))))

(declare-fun b!2817803 () Bool)

(assert (=> b!2817803 (= e!1782120 (size!25703 l!6581))))

(declare-fun b!2817804 () Bool)

(assert (=> b!2817804 (= e!1782119 e!1782120)))

(declare-fun c!456818 () Bool)

(assert (=> b!2817804 (= c!456818 (>= i!1730 (size!25703 l!6581)))))

(declare-fun b!2817801 () Bool)

(assert (=> b!2817801 (= e!1782119 0)))

(declare-fun d!818275 () Bool)

(assert (=> d!818275 e!1782117))

(declare-fun res!1172637 () Bool)

(assert (=> d!818275 (=> (not res!1172637) (not e!1782117))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4603 (List!33115) (InoxSet Token!9264))

(assert (=> d!818275 (= res!1172637 (= ((_ map implies) (content!4603 lt!1006181) (content!4603 l!6581)) ((as const (InoxSet Token!9264)) true)))))

(assert (=> d!818275 (= lt!1006181 e!1782118)))

(declare-fun c!456816 () Bool)

(assert (=> d!818275 (= c!456816 (or ((_ is Nil!32991) l!6581) (<= i!1730 0)))))

(assert (=> d!818275 (= (take!525 l!6581 i!1730) lt!1006181)))

(assert (= (and d!818275 c!456816) b!2817798))

(assert (= (and d!818275 (not c!456816)) b!2817800))

(assert (= (and d!818275 res!1172637) b!2817802))

(assert (= (and b!2817802 c!456817) b!2817801))

(assert (= (and b!2817802 (not c!456817)) b!2817804))

(assert (= (and b!2817804 c!456818) b!2817803))

(assert (= (and b!2817804 (not c!456818)) b!2817799))

(declare-fun m!3248575 () Bool)

(assert (=> b!2817802 m!3248575))

(declare-fun m!3248577 () Bool)

(assert (=> b!2817804 m!3248577))

(assert (=> b!2817803 m!3248577))

(declare-fun m!3248579 () Bool)

(assert (=> b!2817800 m!3248579))

(declare-fun m!3248581 () Bool)

(assert (=> d!818275 m!3248581))

(declare-fun m!3248583 () Bool)

(assert (=> d!818275 m!3248583))

(assert (=> b!2817657 d!818275))

(declare-fun d!818277 () Bool)

(assert (=> d!818277 (= (inv!44902 (tag!5435 (h!38410 rules!4424))) (= (mod (str.len (value!158852 (tag!5435 (h!38410 rules!4424)))) 2) 0))))

(assert (=> b!2817651 d!818277))

(declare-fun d!818279 () Bool)

(declare-fun res!1172640 () Bool)

(declare-fun e!1782123 () Bool)

(assert (=> d!818279 (=> (not res!1172640) (not e!1782123))))

(declare-fun semiInverseModEq!2044 (Int Int) Bool)

(assert (=> d!818279 (= res!1172640 (semiInverseModEq!2044 (toChars!6800 (transformation!4931 (h!38410 rules!4424))) (toValue!6941 (transformation!4931 (h!38410 rules!4424)))))))

(assert (=> d!818279 (= (inv!44905 (transformation!4931 (h!38410 rules!4424))) e!1782123)))

(declare-fun b!2817807 () Bool)

(declare-fun equivClasses!1943 (Int Int) Bool)

(assert (=> b!2817807 (= e!1782123 (equivClasses!1943 (toChars!6800 (transformation!4931 (h!38410 rules!4424))) (toValue!6941 (transformation!4931 (h!38410 rules!4424)))))))

(assert (= (and d!818279 res!1172640) b!2817807))

(declare-fun m!3248585 () Bool)

(assert (=> d!818279 m!3248585))

(declare-fun m!3248587 () Bool)

(assert (=> b!2817807 m!3248587))

(assert (=> b!2817651 d!818279))

(declare-fun d!818281 () Bool)

(declare-fun res!1172652 () Bool)

(declare-fun e!1782138 () Bool)

(assert (=> d!818281 (=> res!1172652 e!1782138)))

(assert (=> d!818281 (= res!1172652 (or (not ((_ is Cons!32991) l!6581)) (not ((_ is Cons!32991) (t!230198 l!6581)))))))

(assert (=> d!818281 (= (tokensListTwoByTwoPredicateSeparableList!659 thiss!27755 l!6581 rules!4424) e!1782138)))

(declare-fun b!2817821 () Bool)

(declare-fun e!1782137 () Bool)

(assert (=> b!2817821 (= e!1782138 e!1782137)))

(declare-fun res!1172651 () Bool)

(assert (=> b!2817821 (=> (not res!1172651) (not e!1782137))))

(declare-fun separableTokensPredicate!885 (LexerInterface!4522 Token!9264 Token!9264 List!33114) Bool)

(assert (=> b!2817821 (= res!1172651 (separableTokensPredicate!885 thiss!27755 (h!38411 l!6581) (h!38411 (t!230198 l!6581)) rules!4424))))

(declare-fun lt!1006203 () Unit!46952)

(declare-fun Unit!46957 () Unit!46952)

(assert (=> b!2817821 (= lt!1006203 Unit!46957)))

(declare-fun size!25704 (BalanceConc!20112) Int)

(declare-fun charsOf!3060 (Token!9264) BalanceConc!20112)

(assert (=> b!2817821 (> (size!25704 (charsOf!3060 (h!38411 (t!230198 l!6581)))) 0)))

(declare-fun lt!1006205 () Unit!46952)

(declare-fun Unit!46958 () Unit!46952)

(assert (=> b!2817821 (= lt!1006205 Unit!46958)))

(assert (=> b!2817821 (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 (t!230198 l!6581)))))

(declare-fun lt!1006200 () Unit!46952)

(declare-fun Unit!46959 () Unit!46952)

(assert (=> b!2817821 (= lt!1006200 Unit!46959)))

(assert (=> b!2817821 (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 l!6581))))

(declare-fun lt!1006204 () Unit!46952)

(declare-fun lt!1006202 () Unit!46952)

(assert (=> b!2817821 (= lt!1006204 lt!1006202)))

(assert (=> b!2817821 (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 (t!230198 l!6581)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!699 (LexerInterface!4522 List!33114 List!33115 Token!9264) Unit!46952)

(assert (=> b!2817821 (= lt!1006202 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!699 thiss!27755 rules!4424 l!6581 (h!38411 (t!230198 l!6581))))))

(declare-fun lt!1006201 () Unit!46952)

(declare-fun lt!1006199 () Unit!46952)

(assert (=> b!2817821 (= lt!1006201 lt!1006199)))

(assert (=> b!2817821 (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 l!6581))))

(assert (=> b!2817821 (= lt!1006199 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!699 thiss!27755 rules!4424 l!6581 (h!38411 l!6581)))))

(declare-fun b!2817822 () Bool)

(assert (=> b!2817822 (= e!1782137 (tokensListTwoByTwoPredicateSeparableList!659 thiss!27755 (Cons!32991 (h!38411 (t!230198 l!6581)) (t!230198 (t!230198 l!6581))) rules!4424))))

(assert (= (and d!818281 (not res!1172652)) b!2817821))

(assert (= (and b!2817821 res!1172651) b!2817822))

(assert (=> b!2817821 m!3248477))

(declare-fun m!3248593 () Bool)

(assert (=> b!2817821 m!3248593))

(declare-fun m!3248595 () Bool)

(assert (=> b!2817821 m!3248595))

(declare-fun m!3248597 () Bool)

(assert (=> b!2817821 m!3248597))

(declare-fun m!3248599 () Bool)

(assert (=> b!2817821 m!3248599))

(assert (=> b!2817821 m!3248593))

(declare-fun m!3248601 () Bool)

(assert (=> b!2817821 m!3248601))

(declare-fun m!3248603 () Bool)

(assert (=> b!2817821 m!3248603))

(declare-fun m!3248605 () Bool)

(assert (=> b!2817822 m!3248605))

(assert (=> b!2817661 d!818281))

(declare-fun d!818285 () Bool)

(assert (=> d!818285 (= (inv!44902 (tag!5435 (rule!7359 (h!38411 l!6581)))) (= (mod (str.len (value!158852 (tag!5435 (rule!7359 (h!38411 l!6581))))) 2) 0))))

(assert (=> b!2817660 d!818285))

(declare-fun d!818287 () Bool)

(declare-fun res!1172653 () Bool)

(declare-fun e!1782139 () Bool)

(assert (=> d!818287 (=> (not res!1172653) (not e!1782139))))

(assert (=> d!818287 (= res!1172653 (semiInverseModEq!2044 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (toValue!6941 (transformation!4931 (rule!7359 (h!38411 l!6581))))))))

(assert (=> d!818287 (= (inv!44905 (transformation!4931 (rule!7359 (h!38411 l!6581)))) e!1782139)))

(declare-fun b!2817823 () Bool)

(assert (=> b!2817823 (= e!1782139 (equivClasses!1943 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (toValue!6941 (transformation!4931 (rule!7359 (h!38411 l!6581))))))))

(assert (= (and d!818287 res!1172653) b!2817823))

(declare-fun m!3248607 () Bool)

(assert (=> d!818287 m!3248607))

(declare-fun m!3248609 () Bool)

(assert (=> b!2817823 m!3248609))

(assert (=> b!2817660 d!818287))

(declare-fun b!2817828 () Bool)

(declare-fun e!1782142 () Bool)

(declare-fun tp_is_empty!14433 () Bool)

(declare-fun tp!899596 () Bool)

(assert (=> b!2817828 (= e!1782142 (and tp_is_empty!14433 tp!899596))))

(assert (=> b!2817659 (= tp!899583 e!1782142)))

(assert (= (and b!2817659 ((_ is Cons!32989) (originalCharacters!5663 (h!38411 l!6581)))) b!2817828))

(declare-fun b!2817839 () Bool)

(declare-fun b_free!80413 () Bool)

(declare-fun b_next!81117 () Bool)

(assert (=> b!2817839 (= b_free!80413 (not b_next!81117))))

(declare-fun tp!899607 () Bool)

(declare-fun b_and!205715 () Bool)

(assert (=> b!2817839 (= tp!899607 b_and!205715)))

(declare-fun b_free!80415 () Bool)

(declare-fun b_next!81119 () Bool)

(assert (=> b!2817839 (= b_free!80415 (not b_next!81119))))

(declare-fun t!230217 () Bool)

(declare-fun tb!153689 () Bool)

(assert (=> (and b!2817839 (= (toChars!6800 (transformation!4931 (h!38410 (t!230197 rules!4424)))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581))))) t!230217) tb!153689))

(declare-fun result!191300 () Bool)

(assert (= result!191300 result!191290))

(assert (=> b!2817682 t!230217))

(declare-fun b_and!205717 () Bool)

(declare-fun tp!899608 () Bool)

(assert (=> b!2817839 (= tp!899608 (and (=> t!230217 result!191300) b_and!205717))))

(declare-fun e!1782152 () Bool)

(assert (=> b!2817839 (= e!1782152 (and tp!899607 tp!899608))))

(declare-fun tp!899606 () Bool)

(declare-fun e!1782154 () Bool)

(declare-fun b!2817838 () Bool)

(assert (=> b!2817838 (= e!1782154 (and tp!899606 (inv!44902 (tag!5435 (h!38410 (t!230197 rules!4424)))) (inv!44905 (transformation!4931 (h!38410 (t!230197 rules!4424)))) e!1782152))))

(declare-fun b!2817837 () Bool)

(declare-fun e!1782153 () Bool)

(declare-fun tp!899605 () Bool)

(assert (=> b!2817837 (= e!1782153 (and e!1782154 tp!899605))))

(assert (=> b!2817653 (= tp!899585 e!1782153)))

(assert (= b!2817838 b!2817839))

(assert (= b!2817837 b!2817838))

(assert (= (and b!2817653 ((_ is Cons!32990) (t!230197 rules!4424))) b!2817837))

(declare-fun m!3248611 () Bool)

(assert (=> b!2817838 m!3248611))

(declare-fun m!3248613 () Bool)

(assert (=> b!2817838 m!3248613))

(declare-fun b!2817859 () Bool)

(declare-fun b_free!80417 () Bool)

(declare-fun b_next!81121 () Bool)

(assert (=> b!2817859 (= b_free!80417 (not b_next!81121))))

(declare-fun tp!899619 () Bool)

(declare-fun b_and!205719 () Bool)

(assert (=> b!2817859 (= tp!899619 b_and!205719)))

(declare-fun b_free!80419 () Bool)

(declare-fun b_next!81123 () Bool)

(assert (=> b!2817859 (= b_free!80419 (not b_next!81123))))

(declare-fun t!230220 () Bool)

(declare-fun tb!153691 () Bool)

(assert (=> (and b!2817859 (= (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581))))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581))))) t!230220) tb!153691))

(declare-fun result!191304 () Bool)

(assert (= result!191304 result!191290))

(assert (=> b!2817682 t!230220))

(declare-fun b_and!205721 () Bool)

(declare-fun tp!899621 () Bool)

(assert (=> b!2817859 (= tp!899621 (and (=> t!230220 result!191304) b_and!205721))))

(declare-fun b!2817857 () Bool)

(declare-fun e!1782174 () Bool)

(declare-fun tp!899622 () Bool)

(declare-fun e!1782171 () Bool)

(assert (=> b!2817857 (= e!1782174 (and (inv!21 (value!158853 (h!38411 (t!230198 l!6581)))) e!1782171 tp!899622))))

(declare-fun e!1782176 () Bool)

(declare-fun tp!899623 () Bool)

(declare-fun b!2817858 () Bool)

(assert (=> b!2817858 (= e!1782171 (and tp!899623 (inv!44902 (tag!5435 (rule!7359 (h!38411 (t!230198 l!6581))))) (inv!44905 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581))))) e!1782176))))

(assert (=> b!2817859 (= e!1782176 (and tp!899619 tp!899621))))

(declare-fun e!1782172 () Bool)

(declare-fun tp!899620 () Bool)

(declare-fun b!2817856 () Bool)

(assert (=> b!2817856 (= e!1782172 (and (inv!44906 (h!38411 (t!230198 l!6581))) e!1782174 tp!899620))))

(assert (=> b!2817652 (= tp!899584 e!1782172)))

(assert (= b!2817858 b!2817859))

(assert (= b!2817857 b!2817858))

(assert (= b!2817856 b!2817857))

(assert (= (and b!2817652 ((_ is Cons!32991) (t!230198 l!6581))) b!2817856))

(declare-fun m!3248615 () Bool)

(assert (=> b!2817857 m!3248615))

(declare-fun m!3248617 () Bool)

(assert (=> b!2817858 m!3248617))

(declare-fun m!3248619 () Bool)

(assert (=> b!2817858 m!3248619))

(declare-fun m!3248621 () Bool)

(assert (=> b!2817856 m!3248621))

(declare-fun b!2817873 () Bool)

(declare-fun e!1782181 () Bool)

(assert (=> b!2817873 (= e!1782181 tp_is_empty!14433)))

(declare-fun b!2817876 () Bool)

(declare-fun tp!899635 () Bool)

(declare-fun tp!899636 () Bool)

(assert (=> b!2817876 (= e!1782181 (and tp!899635 tp!899636))))

(assert (=> b!2817651 (= tp!899589 e!1782181)))

(declare-fun b!2817874 () Bool)

(declare-fun tp!899634 () Bool)

(declare-fun tp!899637 () Bool)

(assert (=> b!2817874 (= e!1782181 (and tp!899634 tp!899637))))

(declare-fun b!2817875 () Bool)

(declare-fun tp!899638 () Bool)

(assert (=> b!2817875 (= e!1782181 tp!899638)))

(assert (= (and b!2817651 ((_ is ElementMatch!8321) (regex!4931 (h!38410 rules!4424)))) b!2817873))

(assert (= (and b!2817651 ((_ is Concat!13483) (regex!4931 (h!38410 rules!4424)))) b!2817874))

(assert (= (and b!2817651 ((_ is Star!8321) (regex!4931 (h!38410 rules!4424)))) b!2817875))

(assert (= (and b!2817651 ((_ is Union!8321) (regex!4931 (h!38410 rules!4424)))) b!2817876))

(declare-fun b!2817877 () Bool)

(declare-fun e!1782182 () Bool)

(assert (=> b!2817877 (= e!1782182 tp_is_empty!14433)))

(declare-fun b!2817880 () Bool)

(declare-fun tp!899640 () Bool)

(declare-fun tp!899641 () Bool)

(assert (=> b!2817880 (= e!1782182 (and tp!899640 tp!899641))))

(assert (=> b!2817660 (= tp!899586 e!1782182)))

(declare-fun b!2817878 () Bool)

(declare-fun tp!899639 () Bool)

(declare-fun tp!899642 () Bool)

(assert (=> b!2817878 (= e!1782182 (and tp!899639 tp!899642))))

(declare-fun b!2817879 () Bool)

(declare-fun tp!899643 () Bool)

(assert (=> b!2817879 (= e!1782182 tp!899643)))

(assert (= (and b!2817660 ((_ is ElementMatch!8321) (regex!4931 (rule!7359 (h!38411 l!6581))))) b!2817877))

(assert (= (and b!2817660 ((_ is Concat!13483) (regex!4931 (rule!7359 (h!38411 l!6581))))) b!2817878))

(assert (= (and b!2817660 ((_ is Star!8321) (regex!4931 (rule!7359 (h!38411 l!6581))))) b!2817879))

(assert (= (and b!2817660 ((_ is Union!8321) (regex!4931 (rule!7359 (h!38411 l!6581))))) b!2817880))

(declare-fun b!2817883 () Bool)

(declare-fun e!1782185 () Bool)

(assert (=> b!2817883 (= e!1782185 true)))

(declare-fun b!2817882 () Bool)

(declare-fun e!1782184 () Bool)

(assert (=> b!2817882 (= e!1782184 e!1782185)))

(declare-fun b!2817881 () Bool)

(declare-fun e!1782183 () Bool)

(assert (=> b!2817881 (= e!1782183 e!1782184)))

(assert (=> b!2817675 e!1782183))

(assert (= b!2817882 b!2817883))

(assert (= b!2817881 b!2817882))

(assert (= (and b!2817675 ((_ is Cons!32990) (t!230197 rules!4424))) b!2817881))

(assert (=> b!2817883 (< (dynLambda!13770 order!17463 (toValue!6941 (transformation!4931 (h!38410 (t!230197 rules!4424))))) (dynLambda!13771 order!17465 lambda!103393))))

(assert (=> b!2817883 (< (dynLambda!13772 order!17467 (toChars!6800 (transformation!4931 (h!38410 (t!230197 rules!4424))))) (dynLambda!13771 order!17465 lambda!103393))))

(declare-fun b_lambda!84235 () Bool)

(assert (= b_lambda!84233 (or b!2817657 b_lambda!84235)))

(declare-fun bs!517086 () Bool)

(declare-fun d!818291 () Bool)

(assert (= bs!517086 (and d!818291 b!2817657)))

(assert (=> bs!517086 (= (dynLambda!13774 lambda!103393 (h!38411 lt!1006136)) (rulesProduceIndividualToken!2062 Lexer!4520 rules!4424 (h!38411 lt!1006136)))))

(declare-fun m!3248641 () Bool)

(assert (=> bs!517086 m!3248641))

(assert (=> b!2817777 d!818291))

(declare-fun b_lambda!84237 () Bool)

(assert (= b_lambda!84231 (or (and b!2817664 b_free!80407 (= (toChars!6800 (transformation!4931 (h!38410 rules!4424))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))))) (and b!2817663 b_free!80411) (and b!2817839 b_free!80415 (= (toChars!6800 (transformation!4931 (h!38410 (t!230197 rules!4424)))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))))) (and b!2817859 b_free!80419 (= (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581))))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))))) b_lambda!84237)))

(check-sat b_and!205715 (not d!818241) b_and!205713 tp_is_empty!14433 b_and!205717 b_and!205721 (not d!818287) (not b!2817823) (not b!2817694) (not b!2817724) (not b!2817736) (not b_lambda!84237) (not b!2817771) (not b!2817802) (not b!2817857) (not b!2817807) (not b!2817879) (not b!2817803) (not b_next!81123) (not b!2817718) (not b!2817780) (not d!818251) (not b!2817781) (not b!2817881) (not b!2817800) (not b_next!81117) (not b!2817838) (not d!818275) b_and!205707 (not d!818235) b_and!205711 (not bs!517086) (not b!2817770) (not d!818255) (not d!818259) (not b!2817779) (not b!2817700) (not b_next!81121) (not b_next!81115) (not b_next!81109) (not b!2817875) (not b!2817804) (not b!2817837) (not b!2817682) (not d!818239) (not b!2817821) (not b!2817880) (not b!2817688) (not b!2817858) (not b!2817701) (not b_lambda!84235) (not b!2817693) (not d!818273) (not b!2817876) (not b_next!81113) (not b!2817878) (not b_next!81119) (not b!2817695) (not b_next!81111) b_and!205703 b_and!205719 (not d!818279) (not b!2817683) (not b!2817874) (not b!2817828) (not d!818233) (not b!2817719) (not b!2817737) (not b!2817778) (not tb!153685) (not b!2817856) (not b!2817822) (not b!2817772) (not d!818271) (not b!2817702) (not b!2817739))
(check-sat (not b_next!81123) (not b_next!81117) b_and!205715 b_and!205707 b_and!205711 b_and!205713 (not b_next!81121) b_and!205717 b_and!205721 (not b_next!81115) (not b_next!81109) (not b_next!81113) (not b_next!81119) (not b_next!81111) b_and!205703 b_and!205719)
(get-model)

(declare-fun d!818309 () Bool)

(declare-fun lt!1006222 () Int)

(assert (=> d!818309 (>= lt!1006222 0)))

(declare-fun e!1782263 () Int)

(assert (=> d!818309 (= lt!1006222 e!1782263)))

(declare-fun c!456830 () Bool)

(assert (=> d!818309 (= c!456830 ((_ is Nil!32991) l!6581))))

(assert (=> d!818309 (= (size!25703 l!6581) lt!1006222)))

(declare-fun b!2817988 () Bool)

(assert (=> b!2817988 (= e!1782263 0)))

(declare-fun b!2817989 () Bool)

(assert (=> b!2817989 (= e!1782263 (+ 1 (size!25703 (t!230198 l!6581))))))

(assert (= (and d!818309 c!456830) b!2817988))

(assert (= (and d!818309 (not c!456830)) b!2817989))

(declare-fun m!3248699 () Bool)

(assert (=> b!2817989 m!3248699))

(assert (=> b!2817804 d!818309))

(declare-fun d!818311 () Bool)

(declare-fun res!1172685 () Bool)

(declare-fun e!1782264 () Bool)

(assert (=> d!818311 (=> res!1172685 e!1782264)))

(assert (=> d!818311 (= res!1172685 ((_ is Nil!32991) (list!12378 (seqFromList!3234 lt!1006136))))))

(assert (=> d!818311 (= (forall!6752 (list!12378 (seqFromList!3234 lt!1006136)) lambda!103407) e!1782264)))

(declare-fun b!2817990 () Bool)

(declare-fun e!1782265 () Bool)

(assert (=> b!2817990 (= e!1782264 e!1782265)))

(declare-fun res!1172686 () Bool)

(assert (=> b!2817990 (=> (not res!1172686) (not e!1782265))))

(assert (=> b!2817990 (= res!1172686 (dynLambda!13774 lambda!103407 (h!38411 (list!12378 (seqFromList!3234 lt!1006136)))))))

(declare-fun b!2817991 () Bool)

(assert (=> b!2817991 (= e!1782265 (forall!6752 (t!230198 (list!12378 (seqFromList!3234 lt!1006136))) lambda!103407))))

(assert (= (and d!818311 (not res!1172685)) b!2817990))

(assert (= (and b!2817990 res!1172686) b!2817991))

(declare-fun b_lambda!84247 () Bool)

(assert (=> (not b_lambda!84247) (not b!2817990)))

(declare-fun m!3248701 () Bool)

(assert (=> b!2817990 m!3248701))

(declare-fun m!3248703 () Bool)

(assert (=> b!2817991 m!3248703))

(assert (=> d!818241 d!818311))

(declare-fun d!818313 () Bool)

(declare-fun list!12381 (Conc!10238) List!33115)

(assert (=> d!818313 (= (list!12378 (seqFromList!3234 lt!1006136)) (list!12381 (c!456797 (seqFromList!3234 lt!1006136))))))

(declare-fun bs!517096 () Bool)

(assert (= bs!517096 d!818313))

(declare-fun m!3248705 () Bool)

(assert (=> bs!517096 m!3248705))

(assert (=> d!818241 d!818313))

(declare-fun d!818315 () Bool)

(declare-fun lt!1006225 () Bool)

(assert (=> d!818315 (= lt!1006225 (forall!6752 (list!12378 (seqFromList!3234 lt!1006136)) lambda!103407))))

(declare-fun forall!6755 (Conc!10238 Int) Bool)

(assert (=> d!818315 (= lt!1006225 (forall!6755 (c!456797 (seqFromList!3234 lt!1006136)) lambda!103407))))

(assert (=> d!818315 (= (forall!6753 (seqFromList!3234 lt!1006136) lambda!103407) lt!1006225)))

(declare-fun bs!517097 () Bool)

(assert (= bs!517097 d!818315))

(assert (=> bs!517097 m!3248457))

(assert (=> bs!517097 m!3248501))

(assert (=> bs!517097 m!3248501))

(assert (=> bs!517097 m!3248503))

(declare-fun m!3248707 () Bool)

(assert (=> bs!517097 m!3248707))

(assert (=> d!818241 d!818315))

(assert (=> d!818241 d!818253))

(assert (=> b!2817803 d!818309))

(declare-fun d!818317 () Bool)

(declare-fun res!1172687 () Bool)

(declare-fun e!1782266 () Bool)

(assert (=> d!818317 (=> (not res!1172687) (not e!1782266))))

(assert (=> d!818317 (= res!1172687 (not (isEmpty!18253 (originalCharacters!5663 (h!38411 (t!230198 l!6581))))))))

(assert (=> d!818317 (= (inv!44906 (h!38411 (t!230198 l!6581))) e!1782266)))

(declare-fun b!2817992 () Bool)

(declare-fun res!1172688 () Bool)

(assert (=> b!2817992 (=> (not res!1172688) (not e!1782266))))

(assert (=> b!2817992 (= res!1172688 (= (originalCharacters!5663 (h!38411 (t!230198 l!6581))) (list!12377 (dynLambda!13773 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581))))) (value!158853 (h!38411 (t!230198 l!6581)))))))))

(declare-fun b!2817993 () Bool)

(assert (=> b!2817993 (= e!1782266 (= (size!25699 (h!38411 (t!230198 l!6581))) (size!25700 (originalCharacters!5663 (h!38411 (t!230198 l!6581))))))))

(assert (= (and d!818317 res!1172687) b!2817992))

(assert (= (and b!2817992 res!1172688) b!2817993))

(declare-fun b_lambda!84249 () Bool)

(assert (=> (not b_lambda!84249) (not b!2817992)))

(declare-fun t!230232 () Bool)

(declare-fun tb!153701 () Bool)

(assert (=> (and b!2817664 (= (toChars!6800 (transformation!4931 (h!38410 rules!4424))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581)))))) t!230232) tb!153701))

(declare-fun b!2817994 () Bool)

(declare-fun e!1782267 () Bool)

(declare-fun tp!899697 () Bool)

(assert (=> b!2817994 (= e!1782267 (and (inv!44907 (c!456795 (dynLambda!13773 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581))))) (value!158853 (h!38411 (t!230198 l!6581)))))) tp!899697))))

(declare-fun result!191326 () Bool)

(assert (=> tb!153701 (= result!191326 (and (inv!44908 (dynLambda!13773 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581))))) (value!158853 (h!38411 (t!230198 l!6581))))) e!1782267))))

(assert (= tb!153701 b!2817994))

(declare-fun m!3248709 () Bool)

(assert (=> b!2817994 m!3248709))

(declare-fun m!3248711 () Bool)

(assert (=> tb!153701 m!3248711))

(assert (=> b!2817992 t!230232))

(declare-fun b_and!205735 () Bool)

(assert (= b_and!205711 (and (=> t!230232 result!191326) b_and!205735)))

(declare-fun t!230234 () Bool)

(declare-fun tb!153703 () Bool)

(assert (=> (and b!2817663 (= (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581)))))) t!230234) tb!153703))

(declare-fun result!191328 () Bool)

(assert (= result!191328 result!191326))

(assert (=> b!2817992 t!230234))

(declare-fun b_and!205737 () Bool)

(assert (= b_and!205713 (and (=> t!230234 result!191328) b_and!205737)))

(declare-fun tb!153705 () Bool)

(declare-fun t!230236 () Bool)

(assert (=> (and b!2817839 (= (toChars!6800 (transformation!4931 (h!38410 (t!230197 rules!4424)))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581)))))) t!230236) tb!153705))

(declare-fun result!191330 () Bool)

(assert (= result!191330 result!191326))

(assert (=> b!2817992 t!230236))

(declare-fun b_and!205739 () Bool)

(assert (= b_and!205717 (and (=> t!230236 result!191330) b_and!205739)))

(declare-fun t!230238 () Bool)

(declare-fun tb!153707 () Bool)

(assert (=> (and b!2817859 (= (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581))))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581)))))) t!230238) tb!153707))

(declare-fun result!191332 () Bool)

(assert (= result!191332 result!191326))

(assert (=> b!2817992 t!230238))

(declare-fun b_and!205741 () Bool)

(assert (= b_and!205721 (and (=> t!230238 result!191332) b_and!205741)))

(declare-fun m!3248713 () Bool)

(assert (=> d!818317 m!3248713))

(declare-fun m!3248715 () Bool)

(assert (=> b!2817992 m!3248715))

(assert (=> b!2817992 m!3248715))

(declare-fun m!3248717 () Bool)

(assert (=> b!2817992 m!3248717))

(declare-fun m!3248719 () Bool)

(assert (=> b!2817993 m!3248719))

(assert (=> b!2817856 d!818317))

(declare-fun bs!517098 () Bool)

(declare-fun d!818319 () Bool)

(assert (= bs!517098 (and d!818319 d!818273)))

(declare-fun lambda!103414 () Int)

(assert (=> bs!517098 (= lambda!103414 lambda!103408)))

(declare-fun bs!517099 () Bool)

(assert (= bs!517099 (and d!818319 d!818241)))

(assert (=> bs!517099 (= lambda!103414 lambda!103407)))

(declare-fun bs!517100 () Bool)

(assert (= bs!517100 (and d!818319 d!818235)))

(assert (=> bs!517100 (= lambda!103414 lambda!103396)))

(declare-fun bs!517101 () Bool)

(assert (= bs!517101 (and d!818319 d!818239)))

(assert (=> bs!517101 (= lambda!103414 lambda!103397)))

(declare-fun bs!517102 () Bool)

(assert (= bs!517102 (and d!818319 b!2817657)))

(assert (=> bs!517102 (= (= thiss!27755 Lexer!4520) (= lambda!103414 lambda!103393))))

(declare-fun b!2817999 () Bool)

(declare-fun e!1782272 () Bool)

(assert (=> b!2817999 (= e!1782272 true)))

(declare-fun b!2817998 () Bool)

(declare-fun e!1782271 () Bool)

(assert (=> b!2817998 (= e!1782271 e!1782272)))

(declare-fun b!2817997 () Bool)

(declare-fun e!1782270 () Bool)

(assert (=> b!2817997 (= e!1782270 e!1782271)))

(assert (=> d!818319 e!1782270))

(assert (= b!2817998 b!2817999))

(assert (= b!2817997 b!2817998))

(assert (= (and d!818319 ((_ is Cons!32990) rules!4424)) b!2817997))

(assert (=> b!2817999 (< (dynLambda!13770 order!17463 (toValue!6941 (transformation!4931 (h!38410 rules!4424)))) (dynLambda!13771 order!17465 lambda!103414))))

(assert (=> b!2817999 (< (dynLambda!13772 order!17467 (toChars!6800 (transformation!4931 (h!38410 rules!4424)))) (dynLambda!13771 order!17465 lambda!103414))))

(assert (=> d!818319 true))

(declare-fun lt!1006226 () Bool)

(assert (=> d!818319 (= lt!1006226 (forall!6752 (t!230198 (t!230198 lt!1006136)) lambda!103414))))

(declare-fun e!1782269 () Bool)

(assert (=> d!818319 (= lt!1006226 e!1782269)))

(declare-fun res!1172689 () Bool)

(assert (=> d!818319 (=> res!1172689 e!1782269)))

(assert (=> d!818319 (= res!1172689 (not ((_ is Cons!32991) (t!230198 (t!230198 lt!1006136)))))))

(assert (=> d!818319 (not (isEmpty!18252 rules!4424))))

(assert (=> d!818319 (= (rulesProduceEachTokenIndividuallyList!1574 thiss!27755 rules!4424 (t!230198 (t!230198 lt!1006136))) lt!1006226)))

(declare-fun b!2817995 () Bool)

(declare-fun e!1782268 () Bool)

(assert (=> b!2817995 (= e!1782269 e!1782268)))

(declare-fun res!1172690 () Bool)

(assert (=> b!2817995 (=> (not res!1172690) (not e!1782268))))

(assert (=> b!2817995 (= res!1172690 (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 (t!230198 (t!230198 lt!1006136)))))))

(declare-fun b!2817996 () Bool)

(assert (=> b!2817996 (= e!1782268 (rulesProduceEachTokenIndividuallyList!1574 thiss!27755 rules!4424 (t!230198 (t!230198 (t!230198 lt!1006136)))))))

(assert (= (and d!818319 (not res!1172689)) b!2817995))

(assert (= (and b!2817995 res!1172690) b!2817996))

(declare-fun m!3248721 () Bool)

(assert (=> d!818319 m!3248721))

(assert (=> d!818319 m!3248439))

(declare-fun m!3248723 () Bool)

(assert (=> b!2817995 m!3248723))

(declare-fun m!3248725 () Bool)

(assert (=> b!2817996 m!3248725))

(assert (=> b!2817701 d!818319))

(declare-fun d!818321 () Bool)

(declare-fun list!12382 (Conc!10237) List!33113)

(assert (=> d!818321 (= (list!12377 (dynLambda!13773 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (value!158853 (h!38411 l!6581)))) (list!12382 (c!456795 (dynLambda!13773 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (value!158853 (h!38411 l!6581))))))))

(declare-fun bs!517103 () Bool)

(assert (= bs!517103 d!818321))

(declare-fun m!3248727 () Bool)

(assert (=> bs!517103 m!3248727))

(assert (=> b!2817682 d!818321))

(declare-fun d!818323 () Bool)

(declare-fun lt!1006229 () Int)

(assert (=> d!818323 (>= lt!1006229 0)))

(declare-fun e!1782275 () Int)

(assert (=> d!818323 (= lt!1006229 e!1782275)))

(declare-fun c!456833 () Bool)

(assert (=> d!818323 (= c!456833 ((_ is Nil!32989) (originalCharacters!5663 (h!38411 l!6581))))))

(assert (=> d!818323 (= (size!25700 (originalCharacters!5663 (h!38411 l!6581))) lt!1006229)))

(declare-fun b!2818004 () Bool)

(assert (=> b!2818004 (= e!1782275 0)))

(declare-fun b!2818005 () Bool)

(assert (=> b!2818005 (= e!1782275 (+ 1 (size!25700 (t!230196 (originalCharacters!5663 (h!38411 l!6581))))))))

(assert (= (and d!818323 c!456833) b!2818004))

(assert (= (and d!818323 (not c!456833)) b!2818005))

(declare-fun m!3248729 () Bool)

(assert (=> b!2818005 m!3248729))

(assert (=> b!2817683 d!818323))

(declare-fun d!818325 () Bool)

(declare-fun lt!1006230 () Bool)

(declare-fun e!1782277 () Bool)

(assert (=> d!818325 (= lt!1006230 e!1782277)))

(declare-fun res!1172692 () Bool)

(assert (=> d!818325 (=> (not res!1172692) (not e!1782277))))

(assert (=> d!818325 (= res!1172692 (= (list!12378 (_1!19772 (lex!1981 thiss!27755 rules!4424 (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 (t!230198 lt!1006136))))))) (list!12378 (singletonSeq!2121 (h!38411 (t!230198 lt!1006136))))))))

(declare-fun e!1782276 () Bool)

(assert (=> d!818325 (= lt!1006230 e!1782276)))

(declare-fun res!1172691 () Bool)

(assert (=> d!818325 (=> (not res!1172691) (not e!1782276))))

(declare-fun lt!1006231 () tuple2!33358)

(assert (=> d!818325 (= res!1172691 (= (size!25701 (_1!19772 lt!1006231)) 1))))

(assert (=> d!818325 (= lt!1006231 (lex!1981 thiss!27755 rules!4424 (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 (t!230198 lt!1006136))))))))

(assert (=> d!818325 (not (isEmpty!18252 rules!4424))))

(assert (=> d!818325 (= (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 (t!230198 lt!1006136))) lt!1006230)))

(declare-fun b!2818006 () Bool)

(declare-fun res!1172693 () Bool)

(assert (=> b!2818006 (=> (not res!1172693) (not e!1782276))))

(assert (=> b!2818006 (= res!1172693 (= (apply!7708 (_1!19772 lt!1006231) 0) (h!38411 (t!230198 lt!1006136))))))

(declare-fun b!2818007 () Bool)

(assert (=> b!2818007 (= e!1782276 (isEmpty!18254 (_2!19772 lt!1006231)))))

(declare-fun b!2818008 () Bool)

(assert (=> b!2818008 (= e!1782277 (isEmpty!18254 (_2!19772 (lex!1981 thiss!27755 rules!4424 (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 (t!230198 lt!1006136))))))))))

(assert (= (and d!818325 res!1172691) b!2818006))

(assert (= (and b!2818006 res!1172693) b!2818007))

(assert (= (and d!818325 res!1172692) b!2818008))

(assert (=> d!818325 m!3248439))

(declare-fun m!3248731 () Bool)

(assert (=> d!818325 m!3248731))

(declare-fun m!3248733 () Bool)

(assert (=> d!818325 m!3248733))

(assert (=> d!818325 m!3248731))

(declare-fun m!3248735 () Bool)

(assert (=> d!818325 m!3248735))

(assert (=> d!818325 m!3248731))

(assert (=> d!818325 m!3248735))

(declare-fun m!3248737 () Bool)

(assert (=> d!818325 m!3248737))

(declare-fun m!3248739 () Bool)

(assert (=> d!818325 m!3248739))

(declare-fun m!3248741 () Bool)

(assert (=> d!818325 m!3248741))

(declare-fun m!3248743 () Bool)

(assert (=> b!2818006 m!3248743))

(declare-fun m!3248745 () Bool)

(assert (=> b!2818007 m!3248745))

(assert (=> b!2818008 m!3248731))

(assert (=> b!2818008 m!3248731))

(assert (=> b!2818008 m!3248735))

(assert (=> b!2818008 m!3248735))

(assert (=> b!2818008 m!3248737))

(declare-fun m!3248747 () Bool)

(assert (=> b!2818008 m!3248747))

(assert (=> b!2817700 d!818325))

(declare-fun d!818327 () Bool)

(assert (=> d!818327 (= (isEmpty!18253 (originalCharacters!5663 (h!38411 l!6581))) ((_ is Nil!32989) (originalCharacters!5663 (h!38411 l!6581))))))

(assert (=> d!818233 d!818327))

(declare-fun d!818329 () Bool)

(assert (=> d!818329 (= (inv!44902 (tag!5435 (rule!7359 (h!38411 (t!230198 l!6581))))) (= (mod (str.len (value!158852 (tag!5435 (rule!7359 (h!38411 (t!230198 l!6581)))))) 2) 0))))

(assert (=> b!2817858 d!818329))

(declare-fun d!818331 () Bool)

(declare-fun res!1172694 () Bool)

(declare-fun e!1782278 () Bool)

(assert (=> d!818331 (=> (not res!1172694) (not e!1782278))))

(assert (=> d!818331 (= res!1172694 (semiInverseModEq!2044 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581))))) (toValue!6941 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581)))))))))

(assert (=> d!818331 (= (inv!44905 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581))))) e!1782278)))

(declare-fun b!2818009 () Bool)

(assert (=> b!2818009 (= e!1782278 (equivClasses!1943 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581))))) (toValue!6941 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581)))))))))

(assert (= (and d!818331 res!1172694) b!2818009))

(declare-fun m!3248749 () Bool)

(assert (=> d!818331 m!3248749))

(declare-fun m!3248751 () Bool)

(assert (=> b!2818009 m!3248751))

(assert (=> b!2817858 d!818331))

(declare-fun bs!517104 () Bool)

(declare-fun d!818333 () Bool)

(assert (= bs!517104 (and d!818333 d!818273)))

(declare-fun lambda!103415 () Int)

(assert (=> bs!517104 (= lambda!103415 lambda!103408)))

(declare-fun bs!517105 () Bool)

(assert (= bs!517105 (and d!818333 d!818319)))

(assert (=> bs!517105 (= lambda!103415 lambda!103414)))

(declare-fun bs!517106 () Bool)

(assert (= bs!517106 (and d!818333 d!818241)))

(assert (=> bs!517106 (= lambda!103415 lambda!103407)))

(declare-fun bs!517107 () Bool)

(assert (= bs!517107 (and d!818333 d!818235)))

(assert (=> bs!517107 (= lambda!103415 lambda!103396)))

(declare-fun bs!517108 () Bool)

(assert (= bs!517108 (and d!818333 d!818239)))

(assert (=> bs!517108 (= lambda!103415 lambda!103397)))

(declare-fun bs!517109 () Bool)

(assert (= bs!517109 (and d!818333 b!2817657)))

(assert (=> bs!517109 (= (= thiss!27755 Lexer!4520) (= lambda!103415 lambda!103393))))

(declare-fun b!2818014 () Bool)

(declare-fun e!1782283 () Bool)

(assert (=> b!2818014 (= e!1782283 true)))

(declare-fun b!2818013 () Bool)

(declare-fun e!1782282 () Bool)

(assert (=> b!2818013 (= e!1782282 e!1782283)))

(declare-fun b!2818012 () Bool)

(declare-fun e!1782281 () Bool)

(assert (=> b!2818012 (= e!1782281 e!1782282)))

(assert (=> d!818333 e!1782281))

(assert (= b!2818013 b!2818014))

(assert (= b!2818012 b!2818013))

(assert (= (and d!818333 ((_ is Cons!32990) rules!4424)) b!2818012))

(assert (=> b!2818014 (< (dynLambda!13770 order!17463 (toValue!6941 (transformation!4931 (h!38410 rules!4424)))) (dynLambda!13771 order!17465 lambda!103415))))

(assert (=> b!2818014 (< (dynLambda!13772 order!17467 (toChars!6800 (transformation!4931 (h!38410 rules!4424)))) (dynLambda!13771 order!17465 lambda!103415))))

(assert (=> d!818333 true))

(declare-fun lt!1006232 () Bool)

(assert (=> d!818333 (= lt!1006232 (forall!6752 (list!12378 (seqFromList!3234 lt!1006136)) lambda!103415))))

(declare-fun e!1782280 () Bool)

(assert (=> d!818333 (= lt!1006232 e!1782280)))

(declare-fun res!1172695 () Bool)

(assert (=> d!818333 (=> res!1172695 e!1782280)))

(assert (=> d!818333 (= res!1172695 (not ((_ is Cons!32991) (list!12378 (seqFromList!3234 lt!1006136)))))))

(assert (=> d!818333 (not (isEmpty!18252 rules!4424))))

(assert (=> d!818333 (= (rulesProduceEachTokenIndividuallyList!1574 thiss!27755 rules!4424 (list!12378 (seqFromList!3234 lt!1006136))) lt!1006232)))

(declare-fun b!2818010 () Bool)

(declare-fun e!1782279 () Bool)

(assert (=> b!2818010 (= e!1782280 e!1782279)))

(declare-fun res!1172696 () Bool)

(assert (=> b!2818010 (=> (not res!1172696) (not e!1782279))))

(assert (=> b!2818010 (= res!1172696 (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 (list!12378 (seqFromList!3234 lt!1006136)))))))

(declare-fun b!2818011 () Bool)

(assert (=> b!2818011 (= e!1782279 (rulesProduceEachTokenIndividuallyList!1574 thiss!27755 rules!4424 (t!230198 (list!12378 (seqFromList!3234 lt!1006136)))))))

(assert (= (and d!818333 (not res!1172695)) b!2818010))

(assert (= (and b!2818010 res!1172696) b!2818011))

(assert (=> d!818333 m!3248501))

(declare-fun m!3248753 () Bool)

(assert (=> d!818333 m!3248753))

(assert (=> d!818333 m!3248439))

(declare-fun m!3248755 () Bool)

(assert (=> b!2818010 m!3248755))

(declare-fun m!3248757 () Bool)

(assert (=> b!2818011 m!3248757))

(assert (=> b!2817718 d!818333))

(assert (=> b!2817718 d!818313))

(declare-fun d!818335 () Bool)

(declare-fun charsToInt!0 (List!33112) (_ BitVec 32))

(assert (=> d!818335 (= (inv!16 (value!158853 (h!38411 l!6581))) (= (charsToInt!0 (text!36574 (value!158853 (h!38411 l!6581)))) (value!158844 (value!158853 (h!38411 l!6581)))))))

(declare-fun bs!517110 () Bool)

(assert (= bs!517110 d!818335))

(declare-fun m!3248759 () Bool)

(assert (=> bs!517110 m!3248759))

(assert (=> b!2817737 d!818335))

(declare-fun d!818337 () Bool)

(declare-fun c!456836 () Bool)

(assert (=> d!818337 (= c!456836 ((_ is Node!10237) (c!456795 (dynLambda!13773 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (value!158853 (h!38411 l!6581))))))))

(declare-fun e!1782288 () Bool)

(assert (=> d!818337 (= (inv!44907 (c!456795 (dynLambda!13773 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (value!158853 (h!38411 l!6581))))) e!1782288)))

(declare-fun b!2818021 () Bool)

(declare-fun inv!44911 (Conc!10237) Bool)

(assert (=> b!2818021 (= e!1782288 (inv!44911 (c!456795 (dynLambda!13773 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (value!158853 (h!38411 l!6581))))))))

(declare-fun b!2818022 () Bool)

(declare-fun e!1782289 () Bool)

(assert (=> b!2818022 (= e!1782288 e!1782289)))

(declare-fun res!1172699 () Bool)

(assert (=> b!2818022 (= res!1172699 (not ((_ is Leaf!15594) (c!456795 (dynLambda!13773 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (value!158853 (h!38411 l!6581)))))))))

(assert (=> b!2818022 (=> res!1172699 e!1782289)))

(declare-fun b!2818023 () Bool)

(declare-fun inv!44912 (Conc!10237) Bool)

(assert (=> b!2818023 (= e!1782289 (inv!44912 (c!456795 (dynLambda!13773 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (value!158853 (h!38411 l!6581))))))))

(assert (= (and d!818337 c!456836) b!2818021))

(assert (= (and d!818337 (not c!456836)) b!2818022))

(assert (= (and b!2818022 (not res!1172699)) b!2818023))

(declare-fun m!3248761 () Bool)

(assert (=> b!2818021 m!3248761))

(declare-fun m!3248763 () Bool)

(assert (=> b!2818023 m!3248763))

(assert (=> b!2817688 d!818337))

(declare-fun d!818339 () Bool)

(declare-fun e!1782292 () Bool)

(assert (=> d!818339 e!1782292))

(declare-fun res!1172702 () Bool)

(assert (=> d!818339 (=> (not res!1172702) (not e!1782292))))

(declare-fun lt!1006235 () BalanceConc!20114)

(assert (=> d!818339 (= res!1172702 (= (list!12378 lt!1006235) lt!1006136))))

(declare-fun fromList!574 (List!33115) Conc!10238)

(assert (=> d!818339 (= lt!1006235 (BalanceConc!20115 (fromList!574 lt!1006136)))))

(assert (=> d!818339 (= (fromListB!1462 lt!1006136) lt!1006235)))

(declare-fun b!2818026 () Bool)

(declare-fun isBalanced!3107 (Conc!10238) Bool)

(assert (=> b!2818026 (= e!1782292 (isBalanced!3107 (fromList!574 lt!1006136)))))

(assert (= (and d!818339 res!1172702) b!2818026))

(declare-fun m!3248765 () Bool)

(assert (=> d!818339 m!3248765))

(declare-fun m!3248767 () Bool)

(assert (=> d!818339 m!3248767))

(assert (=> b!2818026 m!3248767))

(assert (=> b!2818026 m!3248767))

(declare-fun m!3248769 () Bool)

(assert (=> b!2818026 m!3248769))

(assert (=> d!818251 d!818339))

(declare-fun d!818341 () Bool)

(declare-fun c!456838 () Bool)

(assert (=> d!818341 (= c!456838 ((_ is IntegerValue!15483) (value!158853 (h!38411 (t!230198 l!6581)))))))

(declare-fun e!1782293 () Bool)

(assert (=> d!818341 (= (inv!21 (value!158853 (h!38411 (t!230198 l!6581)))) e!1782293)))

(declare-fun b!2818027 () Bool)

(declare-fun e!1782294 () Bool)

(assert (=> b!2818027 (= e!1782293 e!1782294)))

(declare-fun c!456839 () Bool)

(assert (=> b!2818027 (= c!456839 ((_ is IntegerValue!15484) (value!158853 (h!38411 (t!230198 l!6581)))))))

(declare-fun b!2818028 () Bool)

(assert (=> b!2818028 (= e!1782294 (inv!17 (value!158853 (h!38411 (t!230198 l!6581)))))))

(declare-fun b!2818029 () Bool)

(assert (=> b!2818029 (= e!1782293 (inv!16 (value!158853 (h!38411 (t!230198 l!6581)))))))

(declare-fun b!2818030 () Bool)

(declare-fun res!1172703 () Bool)

(declare-fun e!1782295 () Bool)

(assert (=> b!2818030 (=> res!1172703 e!1782295)))

(assert (=> b!2818030 (= res!1172703 (not ((_ is IntegerValue!15485) (value!158853 (h!38411 (t!230198 l!6581))))))))

(assert (=> b!2818030 (= e!1782294 e!1782295)))

(declare-fun b!2818031 () Bool)

(assert (=> b!2818031 (= e!1782295 (inv!15 (value!158853 (h!38411 (t!230198 l!6581)))))))

(assert (= (and d!818341 c!456838) b!2818029))

(assert (= (and d!818341 (not c!456838)) b!2818027))

(assert (= (and b!2818027 c!456839) b!2818028))

(assert (= (and b!2818027 (not c!456839)) b!2818030))

(assert (= (and b!2818030 (not res!1172703)) b!2818031))

(declare-fun m!3248771 () Bool)

(assert (=> b!2818028 m!3248771))

(declare-fun m!3248773 () Bool)

(assert (=> b!2818029 m!3248773))

(declare-fun m!3248775 () Bool)

(assert (=> b!2818031 m!3248775))

(assert (=> b!2817857 d!818341))

(declare-fun d!818343 () Bool)

(declare-fun charsToBigInt!1 (List!33112) Int)

(assert (=> d!818343 (= (inv!17 (value!158853 (h!38411 l!6581))) (= (charsToBigInt!1 (text!36575 (value!158853 (h!38411 l!6581)))) (value!158845 (value!158853 (h!38411 l!6581)))))))

(declare-fun bs!517111 () Bool)

(assert (= bs!517111 d!818343))

(declare-fun m!3248777 () Bool)

(assert (=> bs!517111 m!3248777))

(assert (=> b!2817736 d!818343))

(declare-fun d!818345 () Bool)

(declare-fun isBalanced!3108 (Conc!10237) Bool)

(assert (=> d!818345 (= (inv!44908 (dynLambda!13773 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (value!158853 (h!38411 l!6581)))) (isBalanced!3108 (c!456795 (dynLambda!13773 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (value!158853 (h!38411 l!6581))))))))

(declare-fun bs!517112 () Bool)

(assert (= bs!517112 d!818345))

(declare-fun m!3248779 () Bool)

(assert (=> bs!517112 m!3248779))

(assert (=> tb!153685 d!818345))

(declare-fun d!818347 () Bool)

(declare-fun lt!1006238 () Token!9264)

(declare-fun apply!7710 (List!33115 Int) Token!9264)

(assert (=> d!818347 (= lt!1006238 (apply!7710 (list!12378 (_1!19772 lt!1006174)) 0))))

(declare-fun apply!7711 (Conc!10238 Int) Token!9264)

(assert (=> d!818347 (= lt!1006238 (apply!7711 (c!456797 (_1!19772 lt!1006174)) 0))))

(declare-fun e!1782298 () Bool)

(assert (=> d!818347 e!1782298))

(declare-fun res!1172706 () Bool)

(assert (=> d!818347 (=> (not res!1172706) (not e!1782298))))

(assert (=> d!818347 (= res!1172706 (<= 0 0))))

(assert (=> d!818347 (= (apply!7708 (_1!19772 lt!1006174) 0) lt!1006238)))

(declare-fun b!2818034 () Bool)

(assert (=> b!2818034 (= e!1782298 (< 0 (size!25701 (_1!19772 lt!1006174))))))

(assert (= (and d!818347 res!1172706) b!2818034))

(declare-fun m!3248781 () Bool)

(assert (=> d!818347 m!3248781))

(assert (=> d!818347 m!3248781))

(declare-fun m!3248783 () Bool)

(assert (=> d!818347 m!3248783))

(declare-fun m!3248785 () Bool)

(assert (=> d!818347 m!3248785))

(assert (=> b!2818034 m!3248557))

(assert (=> b!2817770 d!818347))

(declare-fun d!818349 () Bool)

(declare-fun charsToBigInt!0 (List!33112 Int) Int)

(assert (=> d!818349 (= (inv!15 (value!158853 (h!38411 l!6581))) (= (charsToBigInt!0 (text!36576 (value!158853 (h!38411 l!6581))) 0) (value!158848 (value!158853 (h!38411 l!6581)))))))

(declare-fun bs!517113 () Bool)

(assert (= bs!517113 d!818349))

(declare-fun m!3248787 () Bool)

(assert (=> bs!517113 m!3248787))

(assert (=> b!2817739 d!818349))

(declare-fun d!818351 () Bool)

(declare-fun res!1172712 () Bool)

(declare-fun e!1782303 () Bool)

(assert (=> d!818351 (=> res!1172712 e!1782303)))

(assert (=> d!818351 (= res!1172712 ((_ is Nil!32990) rules!4424))))

(assert (=> d!818351 (= (noDuplicateTag!1809 thiss!27755 rules!4424 Nil!32992) e!1782303)))

(declare-fun b!2818039 () Bool)

(declare-fun e!1782304 () Bool)

(assert (=> b!2818039 (= e!1782303 e!1782304)))

(declare-fun res!1172713 () Bool)

(assert (=> b!2818039 (=> (not res!1172713) (not e!1782304))))

(declare-fun contains!6055 (List!33116 String!36261) Bool)

(assert (=> b!2818039 (= res!1172713 (not (contains!6055 Nil!32992 (tag!5435 (h!38410 rules!4424)))))))

(declare-fun b!2818040 () Bool)

(assert (=> b!2818040 (= e!1782304 (noDuplicateTag!1809 thiss!27755 (t!230197 rules!4424) (Cons!32992 (tag!5435 (h!38410 rules!4424)) Nil!32992)))))

(assert (= (and d!818351 (not res!1172712)) b!2818039))

(assert (= (and b!2818039 res!1172713) b!2818040))

(declare-fun m!3248789 () Bool)

(assert (=> b!2818039 m!3248789))

(declare-fun m!3248791 () Bool)

(assert (=> b!2818040 m!3248791))

(assert (=> b!2817724 d!818351))

(declare-fun d!818353 () Bool)

(declare-fun res!1172714 () Bool)

(declare-fun e!1782305 () Bool)

(assert (=> d!818353 (=> res!1172714 e!1782305)))

(assert (=> d!818353 (= res!1172714 ((_ is Nil!32991) l!6581))))

(assert (=> d!818353 (= (forall!6752 l!6581 lambda!103396) e!1782305)))

(declare-fun b!2818041 () Bool)

(declare-fun e!1782306 () Bool)

(assert (=> b!2818041 (= e!1782305 e!1782306)))

(declare-fun res!1172715 () Bool)

(assert (=> b!2818041 (=> (not res!1172715) (not e!1782306))))

(assert (=> b!2818041 (= res!1172715 (dynLambda!13774 lambda!103396 (h!38411 l!6581)))))

(declare-fun b!2818042 () Bool)

(assert (=> b!2818042 (= e!1782306 (forall!6752 (t!230198 l!6581) lambda!103396))))

(assert (= (and d!818353 (not res!1172714)) b!2818041))

(assert (= (and b!2818041 res!1172715) b!2818042))

(declare-fun b_lambda!84251 () Bool)

(assert (=> (not b_lambda!84251) (not b!2818041)))

(declare-fun m!3248793 () Bool)

(assert (=> b!2818041 m!3248793))

(declare-fun m!3248795 () Bool)

(assert (=> b!2818042 m!3248795))

(assert (=> d!818235 d!818353))

(assert (=> d!818235 d!818253))

(declare-fun d!818355 () Bool)

(assert (=> d!818355 true))

(declare-fun order!17469 () Int)

(declare-fun lambda!103418 () Int)

(declare-fun dynLambda!13777 (Int Int) Int)

(assert (=> d!818355 (< (dynLambda!13770 order!17463 (toValue!6941 (transformation!4931 (h!38410 rules!4424)))) (dynLambda!13777 order!17469 lambda!103418))))

(declare-fun Forall2!826 (Int) Bool)

(assert (=> d!818355 (= (equivClasses!1943 (toChars!6800 (transformation!4931 (h!38410 rules!4424))) (toValue!6941 (transformation!4931 (h!38410 rules!4424)))) (Forall2!826 lambda!103418))))

(declare-fun bs!517114 () Bool)

(assert (= bs!517114 d!818355))

(declare-fun m!3248797 () Bool)

(assert (=> bs!517114 m!3248797))

(assert (=> b!2817807 d!818355))

(declare-fun d!818357 () Bool)

(declare-fun res!1172718 () Bool)

(declare-fun e!1782309 () Bool)

(assert (=> d!818357 (=> res!1172718 e!1782309)))

(assert (=> d!818357 (= res!1172718 ((_ is Nil!32991) lt!1006136))))

(assert (=> d!818357 (= (forall!6752 lt!1006136 lambda!103408) e!1782309)))

(declare-fun b!2818047 () Bool)

(declare-fun e!1782310 () Bool)

(assert (=> b!2818047 (= e!1782309 e!1782310)))

(declare-fun res!1172719 () Bool)

(assert (=> b!2818047 (=> (not res!1172719) (not e!1782310))))

(assert (=> b!2818047 (= res!1172719 (dynLambda!13774 lambda!103408 (h!38411 lt!1006136)))))

(declare-fun b!2818048 () Bool)

(assert (=> b!2818048 (= e!1782310 (forall!6752 (t!230198 lt!1006136) lambda!103408))))

(assert (= (and d!818357 (not res!1172718)) b!2818047))

(assert (= (and b!2818047 res!1172719) b!2818048))

(declare-fun b_lambda!84253 () Bool)

(assert (=> (not b_lambda!84253) (not b!2818047)))

(declare-fun m!3248799 () Bool)

(assert (=> b!2818047 m!3248799))

(declare-fun m!3248801 () Bool)

(assert (=> b!2818048 m!3248801))

(assert (=> d!818273 d!818357))

(assert (=> d!818273 d!818253))

(declare-fun d!818359 () Bool)

(declare-fun res!1172720 () Bool)

(declare-fun e!1782311 () Bool)

(assert (=> d!818359 (=> res!1172720 e!1782311)))

(assert (=> d!818359 (= res!1172720 ((_ is Nil!32991) (t!230198 lt!1006136)))))

(assert (=> d!818359 (= (forall!6752 (t!230198 lt!1006136) lambda!103393) e!1782311)))

(declare-fun b!2818049 () Bool)

(declare-fun e!1782312 () Bool)

(assert (=> b!2818049 (= e!1782311 e!1782312)))

(declare-fun res!1172721 () Bool)

(assert (=> b!2818049 (=> (not res!1172721) (not e!1782312))))

(assert (=> b!2818049 (= res!1172721 (dynLambda!13774 lambda!103393 (h!38411 (t!230198 lt!1006136))))))

(declare-fun b!2818050 () Bool)

(assert (=> b!2818050 (= e!1782312 (forall!6752 (t!230198 (t!230198 lt!1006136)) lambda!103393))))

(assert (= (and d!818359 (not res!1172720)) b!2818049))

(assert (= (and b!2818049 res!1172721) b!2818050))

(declare-fun b_lambda!84255 () Bool)

(assert (=> (not b_lambda!84255) (not b!2818049)))

(declare-fun m!3248803 () Bool)

(assert (=> b!2818049 m!3248803))

(declare-fun m!3248805 () Bool)

(assert (=> b!2818050 m!3248805))

(assert (=> b!2817778 d!818359))

(declare-fun d!818361 () Bool)

(declare-fun lt!1006239 () Bool)

(declare-fun e!1782314 () Bool)

(assert (=> d!818361 (= lt!1006239 e!1782314)))

(declare-fun res!1172723 () Bool)

(assert (=> d!818361 (=> (not res!1172723) (not e!1782314))))

(assert (=> d!818361 (= res!1172723 (= (list!12378 (_1!19772 (lex!1981 Lexer!4520 rules!4424 (print!1700 Lexer!4520 (singletonSeq!2121 (h!38411 lt!1006136)))))) (list!12378 (singletonSeq!2121 (h!38411 lt!1006136)))))))

(declare-fun e!1782313 () Bool)

(assert (=> d!818361 (= lt!1006239 e!1782313)))

(declare-fun res!1172722 () Bool)

(assert (=> d!818361 (=> (not res!1172722) (not e!1782313))))

(declare-fun lt!1006240 () tuple2!33358)

(assert (=> d!818361 (= res!1172722 (= (size!25701 (_1!19772 lt!1006240)) 1))))

(assert (=> d!818361 (= lt!1006240 (lex!1981 Lexer!4520 rules!4424 (print!1700 Lexer!4520 (singletonSeq!2121 (h!38411 lt!1006136)))))))

(assert (=> d!818361 (not (isEmpty!18252 rules!4424))))

(assert (=> d!818361 (= (rulesProduceIndividualToken!2062 Lexer!4520 rules!4424 (h!38411 lt!1006136)) lt!1006239)))

(declare-fun b!2818051 () Bool)

(declare-fun res!1172724 () Bool)

(assert (=> b!2818051 (=> (not res!1172724) (not e!1782313))))

(assert (=> b!2818051 (= res!1172724 (= (apply!7708 (_1!19772 lt!1006240) 0) (h!38411 lt!1006136)))))

(declare-fun b!2818052 () Bool)

(assert (=> b!2818052 (= e!1782313 (isEmpty!18254 (_2!19772 lt!1006240)))))

(declare-fun b!2818053 () Bool)

(assert (=> b!2818053 (= e!1782314 (isEmpty!18254 (_2!19772 (lex!1981 Lexer!4520 rules!4424 (print!1700 Lexer!4520 (singletonSeq!2121 (h!38411 lt!1006136)))))))))

(assert (= (and d!818361 res!1172722) b!2818051))

(assert (= (and b!2818051 res!1172724) b!2818052))

(assert (= (and d!818361 res!1172723) b!2818053))

(assert (=> d!818361 m!3248439))

(assert (=> d!818361 m!3248547))

(assert (=> d!818361 m!3248549))

(assert (=> d!818361 m!3248547))

(declare-fun m!3248807 () Bool)

(assert (=> d!818361 m!3248807))

(assert (=> d!818361 m!3248547))

(assert (=> d!818361 m!3248807))

(declare-fun m!3248809 () Bool)

(assert (=> d!818361 m!3248809))

(declare-fun m!3248811 () Bool)

(assert (=> d!818361 m!3248811))

(declare-fun m!3248813 () Bool)

(assert (=> d!818361 m!3248813))

(declare-fun m!3248815 () Bool)

(assert (=> b!2818051 m!3248815))

(declare-fun m!3248817 () Bool)

(assert (=> b!2818052 m!3248817))

(assert (=> b!2818053 m!3248547))

(assert (=> b!2818053 m!3248547))

(assert (=> b!2818053 m!3248807))

(assert (=> b!2818053 m!3248807))

(assert (=> b!2818053 m!3248809))

(declare-fun m!3248819 () Bool)

(assert (=> b!2818053 m!3248819))

(assert (=> bs!517086 d!818361))

(declare-fun d!818363 () Bool)

(declare-fun lt!1006245 () Bool)

(assert (=> d!818363 (= lt!1006245 (isEmpty!18253 (list!12377 (_2!19772 lt!1006174))))))

(declare-fun isEmpty!18257 (Conc!10237) Bool)

(assert (=> d!818363 (= lt!1006245 (isEmpty!18257 (c!456795 (_2!19772 lt!1006174))))))

(assert (=> d!818363 (= (isEmpty!18254 (_2!19772 lt!1006174)) lt!1006245)))

(declare-fun bs!517115 () Bool)

(assert (= bs!517115 d!818363))

(declare-fun m!3248821 () Bool)

(assert (=> bs!517115 m!3248821))

(assert (=> bs!517115 m!3248821))

(declare-fun m!3248823 () Bool)

(assert (=> bs!517115 m!3248823))

(declare-fun m!3248825 () Bool)

(assert (=> bs!517115 m!3248825))

(assert (=> b!2817771 d!818363))

(declare-fun lt!1006246 () Bool)

(declare-fun d!818367 () Bool)

(assert (=> d!818367 (= lt!1006246 (isEmpty!18253 (list!12377 (_2!19772 (lex!1981 thiss!27755 rules!4424 (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 lt!1006136))))))))))

(assert (=> d!818367 (= lt!1006246 (isEmpty!18257 (c!456795 (_2!19772 (lex!1981 thiss!27755 rules!4424 (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 lt!1006136))))))))))

(assert (=> d!818367 (= (isEmpty!18254 (_2!19772 (lex!1981 thiss!27755 rules!4424 (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 lt!1006136)))))) lt!1006246)))

(declare-fun bs!517116 () Bool)

(assert (= bs!517116 d!818367))

(declare-fun m!3248831 () Bool)

(assert (=> bs!517116 m!3248831))

(assert (=> bs!517116 m!3248831))

(declare-fun m!3248837 () Bool)

(assert (=> bs!517116 m!3248837))

(declare-fun m!3248839 () Bool)

(assert (=> bs!517116 m!3248839))

(assert (=> b!2817772 d!818367))

(declare-fun b!2818161 () Bool)

(declare-fun res!1172774 () Bool)

(declare-fun e!1782390 () Bool)

(assert (=> b!2818161 (=> (not res!1172774) (not e!1782390))))

(declare-fun lt!1006277 () tuple2!33358)

(declare-datatypes ((tuple2!33362 0))(
  ( (tuple2!33363 (_1!19774 List!33115) (_2!19774 List!33113)) )
))
(declare-fun lexList!1243 (LexerInterface!4522 List!33114 List!33113) tuple2!33362)

(assert (=> b!2818161 (= res!1172774 (= (list!12378 (_1!19772 lt!1006277)) (_1!19774 (lexList!1243 thiss!27755 rules!4424 (list!12377 (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 lt!1006136))))))))))

(declare-fun b!2818162 () Bool)

(assert (=> b!2818162 (= e!1782390 (= (list!12377 (_2!19772 lt!1006277)) (_2!19774 (lexList!1243 thiss!27755 rules!4424 (list!12377 (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 lt!1006136))))))))))

(declare-fun b!2818163 () Bool)

(declare-fun e!1782391 () Bool)

(declare-fun isEmpty!18258 (BalanceConc!20114) Bool)

(assert (=> b!2818163 (= e!1782391 (not (isEmpty!18258 (_1!19772 lt!1006277))))))

(declare-fun b!2818165 () Bool)

(declare-fun e!1782389 () Bool)

(assert (=> b!2818165 (= e!1782389 (= (_2!19772 lt!1006277) (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 lt!1006136)))))))

(declare-fun b!2818164 () Bool)

(assert (=> b!2818164 (= e!1782389 e!1782391)))

(declare-fun res!1172775 () Bool)

(assert (=> b!2818164 (= res!1172775 (< (size!25704 (_2!19772 lt!1006277)) (size!25704 (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 lt!1006136))))))))

(assert (=> b!2818164 (=> (not res!1172775) (not e!1782391))))

(declare-fun d!818369 () Bool)

(assert (=> d!818369 e!1782390))

(declare-fun res!1172776 () Bool)

(assert (=> d!818369 (=> (not res!1172776) (not e!1782390))))

(assert (=> d!818369 (= res!1172776 e!1782389)))

(declare-fun c!456862 () Bool)

(assert (=> d!818369 (= c!456862 (> (size!25701 (_1!19772 lt!1006277)) 0))))

(declare-fun lexTailRecV2!881 (LexerInterface!4522 List!33114 BalanceConc!20112 BalanceConc!20112 BalanceConc!20112 BalanceConc!20114) tuple2!33358)

(assert (=> d!818369 (= lt!1006277 (lexTailRecV2!881 thiss!27755 rules!4424 (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 lt!1006136))) (BalanceConc!20113 Empty!10237) (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 lt!1006136))) (BalanceConc!20115 Empty!10238)))))

(assert (=> d!818369 (= (lex!1981 thiss!27755 rules!4424 (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 lt!1006136)))) lt!1006277)))

(assert (= (and d!818369 c!456862) b!2818164))

(assert (= (and d!818369 (not c!456862)) b!2818165))

(assert (= (and b!2818164 res!1172775) b!2818163))

(assert (= (and d!818369 res!1172776) b!2818161))

(assert (= (and b!2818161 res!1172774) b!2818162))

(declare-fun m!3249005 () Bool)

(assert (=> b!2818164 m!3249005))

(assert (=> b!2818164 m!3248551))

(declare-fun m!3249007 () Bool)

(assert (=> b!2818164 m!3249007))

(declare-fun m!3249009 () Bool)

(assert (=> d!818369 m!3249009))

(assert (=> d!818369 m!3248551))

(assert (=> d!818369 m!3248551))

(declare-fun m!3249011 () Bool)

(assert (=> d!818369 m!3249011))

(declare-fun m!3249013 () Bool)

(assert (=> b!2818162 m!3249013))

(assert (=> b!2818162 m!3248551))

(declare-fun m!3249015 () Bool)

(assert (=> b!2818162 m!3249015))

(assert (=> b!2818162 m!3249015))

(declare-fun m!3249017 () Bool)

(assert (=> b!2818162 m!3249017))

(declare-fun m!3249019 () Bool)

(assert (=> b!2818163 m!3249019))

(declare-fun m!3249021 () Bool)

(assert (=> b!2818161 m!3249021))

(assert (=> b!2818161 m!3248551))

(assert (=> b!2818161 m!3249015))

(assert (=> b!2818161 m!3249015))

(assert (=> b!2818161 m!3249017))

(assert (=> b!2817772 d!818369))

(declare-fun d!818445 () Bool)

(declare-fun lt!1006280 () BalanceConc!20112)

(declare-fun printList!1217 (LexerInterface!4522 List!33115) List!33113)

(assert (=> d!818445 (= (list!12377 lt!1006280) (printList!1217 thiss!27755 (list!12378 (singletonSeq!2121 (h!38411 lt!1006136)))))))

(declare-fun printTailRec!1160 (LexerInterface!4522 BalanceConc!20114 Int BalanceConc!20112) BalanceConc!20112)

(assert (=> d!818445 (= lt!1006280 (printTailRec!1160 thiss!27755 (singletonSeq!2121 (h!38411 lt!1006136)) 0 (BalanceConc!20113 Empty!10237)))))

(assert (=> d!818445 (= (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 lt!1006136))) lt!1006280)))

(declare-fun bs!517150 () Bool)

(assert (= bs!517150 d!818445))

(declare-fun m!3249023 () Bool)

(assert (=> bs!517150 m!3249023))

(assert (=> bs!517150 m!3248547))

(assert (=> bs!517150 m!3248549))

(assert (=> bs!517150 m!3248549))

(declare-fun m!3249025 () Bool)

(assert (=> bs!517150 m!3249025))

(assert (=> bs!517150 m!3248547))

(declare-fun m!3249027 () Bool)

(assert (=> bs!517150 m!3249027))

(assert (=> b!2817772 d!818445))

(declare-fun d!818447 () Bool)

(declare-fun e!1782394 () Bool)

(assert (=> d!818447 e!1782394))

(declare-fun res!1172779 () Bool)

(assert (=> d!818447 (=> (not res!1172779) (not e!1782394))))

(declare-fun lt!1006283 () BalanceConc!20114)

(assert (=> d!818447 (= res!1172779 (= (list!12378 lt!1006283) (Cons!32991 (h!38411 lt!1006136) Nil!32991)))))

(declare-fun singleton!937 (Token!9264) BalanceConc!20114)

(assert (=> d!818447 (= lt!1006283 (singleton!937 (h!38411 lt!1006136)))))

(assert (=> d!818447 (= (singletonSeq!2121 (h!38411 lt!1006136)) lt!1006283)))

(declare-fun b!2818168 () Bool)

(assert (=> b!2818168 (= e!1782394 (isBalanced!3107 (c!456797 lt!1006283)))))

(assert (= (and d!818447 res!1172779) b!2818168))

(declare-fun m!3249029 () Bool)

(assert (=> d!818447 m!3249029))

(declare-fun m!3249031 () Bool)

(assert (=> d!818447 m!3249031))

(declare-fun m!3249033 () Bool)

(assert (=> b!2818168 m!3249033))

(assert (=> b!2817772 d!818447))

(declare-fun d!818449 () Bool)

(assert (=> d!818449 (= (inv!44902 (tag!5435 (h!38410 (t!230197 rules!4424)))) (= (mod (str.len (value!158852 (tag!5435 (h!38410 (t!230197 rules!4424))))) 2) 0))))

(assert (=> b!2817838 d!818449))

(declare-fun d!818451 () Bool)

(declare-fun res!1172780 () Bool)

(declare-fun e!1782395 () Bool)

(assert (=> d!818451 (=> (not res!1172780) (not e!1782395))))

(assert (=> d!818451 (= res!1172780 (semiInverseModEq!2044 (toChars!6800 (transformation!4931 (h!38410 (t!230197 rules!4424)))) (toValue!6941 (transformation!4931 (h!38410 (t!230197 rules!4424))))))))

(assert (=> d!818451 (= (inv!44905 (transformation!4931 (h!38410 (t!230197 rules!4424)))) e!1782395)))

(declare-fun b!2818169 () Bool)

(assert (=> b!2818169 (= e!1782395 (equivClasses!1943 (toChars!6800 (transformation!4931 (h!38410 (t!230197 rules!4424)))) (toValue!6941 (transformation!4931 (h!38410 (t!230197 rules!4424))))))))

(assert (= (and d!818451 res!1172780) b!2818169))

(declare-fun m!3249035 () Bool)

(assert (=> d!818451 m!3249035))

(declare-fun m!3249037 () Bool)

(assert (=> b!2818169 m!3249037))

(assert (=> b!2817838 d!818451))

(declare-fun d!818453 () Bool)

(declare-fun c!456865 () Bool)

(assert (=> d!818453 (= c!456865 ((_ is Nil!32991) lt!1006181))))

(declare-fun e!1782398 () (InoxSet Token!9264))

(assert (=> d!818453 (= (content!4603 lt!1006181) e!1782398)))

(declare-fun b!2818174 () Bool)

(assert (=> b!2818174 (= e!1782398 ((as const (Array Token!9264 Bool)) false))))

(declare-fun b!2818175 () Bool)

(assert (=> b!2818175 (= e!1782398 ((_ map or) (store ((as const (Array Token!9264 Bool)) false) (h!38411 lt!1006181) true) (content!4603 (t!230198 lt!1006181))))))

(assert (= (and d!818453 c!456865) b!2818174))

(assert (= (and d!818453 (not c!456865)) b!2818175))

(declare-fun m!3249039 () Bool)

(assert (=> b!2818175 m!3249039))

(declare-fun m!3249041 () Bool)

(assert (=> b!2818175 m!3249041))

(assert (=> d!818275 d!818453))

(declare-fun d!818455 () Bool)

(declare-fun c!456866 () Bool)

(assert (=> d!818455 (= c!456866 ((_ is Nil!32991) l!6581))))

(declare-fun e!1782399 () (InoxSet Token!9264))

(assert (=> d!818455 (= (content!4603 l!6581) e!1782399)))

(declare-fun b!2818176 () Bool)

(assert (=> b!2818176 (= e!1782399 ((as const (Array Token!9264 Bool)) false))))

(declare-fun b!2818177 () Bool)

(assert (=> b!2818177 (= e!1782399 ((_ map or) (store ((as const (Array Token!9264 Bool)) false) (h!38411 l!6581) true) (content!4603 (t!230198 l!6581))))))

(assert (= (and d!818455 c!456866) b!2818176))

(assert (= (and d!818455 (not c!456866)) b!2818177))

(declare-fun m!3249043 () Bool)

(assert (=> b!2818177 m!3249043))

(declare-fun m!3249045 () Bool)

(assert (=> b!2818177 m!3249045))

(assert (=> d!818275 d!818455))

(declare-fun d!818457 () Bool)

(declare-fun lt!1006284 () Bool)

(declare-fun e!1782401 () Bool)

(assert (=> d!818457 (= lt!1006284 e!1782401)))

(declare-fun res!1172782 () Bool)

(assert (=> d!818457 (=> (not res!1172782) (not e!1782401))))

(assert (=> d!818457 (= res!1172782 (= (list!12378 (_1!19772 (lex!1981 thiss!27755 rules!4424 (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 l!6581)))))) (list!12378 (singletonSeq!2121 (h!38411 l!6581)))))))

(declare-fun e!1782400 () Bool)

(assert (=> d!818457 (= lt!1006284 e!1782400)))

(declare-fun res!1172781 () Bool)

(assert (=> d!818457 (=> (not res!1172781) (not e!1782400))))

(declare-fun lt!1006285 () tuple2!33358)

(assert (=> d!818457 (= res!1172781 (= (size!25701 (_1!19772 lt!1006285)) 1))))

(assert (=> d!818457 (= lt!1006285 (lex!1981 thiss!27755 rules!4424 (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 l!6581)))))))

(assert (=> d!818457 (not (isEmpty!18252 rules!4424))))

(assert (=> d!818457 (= (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 l!6581)) lt!1006284)))

(declare-fun b!2818178 () Bool)

(declare-fun res!1172783 () Bool)

(assert (=> b!2818178 (=> (not res!1172783) (not e!1782400))))

(assert (=> b!2818178 (= res!1172783 (= (apply!7708 (_1!19772 lt!1006285) 0) (h!38411 l!6581)))))

(declare-fun b!2818179 () Bool)

(assert (=> b!2818179 (= e!1782400 (isEmpty!18254 (_2!19772 lt!1006285)))))

(declare-fun b!2818180 () Bool)

(assert (=> b!2818180 (= e!1782401 (isEmpty!18254 (_2!19772 (lex!1981 thiss!27755 rules!4424 (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 l!6581)))))))))

(assert (= (and d!818457 res!1172781) b!2818178))

(assert (= (and b!2818178 res!1172783) b!2818179))

(assert (= (and d!818457 res!1172782) b!2818180))

(assert (=> d!818457 m!3248439))

(declare-fun m!3249047 () Bool)

(assert (=> d!818457 m!3249047))

(declare-fun m!3249049 () Bool)

(assert (=> d!818457 m!3249049))

(assert (=> d!818457 m!3249047))

(declare-fun m!3249051 () Bool)

(assert (=> d!818457 m!3249051))

(assert (=> d!818457 m!3249047))

(assert (=> d!818457 m!3249051))

(declare-fun m!3249053 () Bool)

(assert (=> d!818457 m!3249053))

(declare-fun m!3249055 () Bool)

(assert (=> d!818457 m!3249055))

(declare-fun m!3249057 () Bool)

(assert (=> d!818457 m!3249057))

(declare-fun m!3249059 () Bool)

(assert (=> b!2818178 m!3249059))

(declare-fun m!3249061 () Bool)

(assert (=> b!2818179 m!3249061))

(assert (=> b!2818180 m!3249047))

(assert (=> b!2818180 m!3249047))

(assert (=> b!2818180 m!3249051))

(assert (=> b!2818180 m!3249051))

(assert (=> b!2818180 m!3249053))

(declare-fun m!3249063 () Bool)

(assert (=> b!2818180 m!3249063))

(assert (=> b!2817693 d!818457))

(assert (=> d!818259 d!818369))

(assert (=> d!818259 d!818253))

(declare-fun d!818459 () Bool)

(declare-fun lt!1006288 () Int)

(assert (=> d!818459 (= lt!1006288 (size!25703 (list!12378 (_1!19772 lt!1006174))))))

(declare-fun size!25708 (Conc!10238) Int)

(assert (=> d!818459 (= lt!1006288 (size!25708 (c!456797 (_1!19772 lt!1006174))))))

(assert (=> d!818459 (= (size!25701 (_1!19772 lt!1006174)) lt!1006288)))

(declare-fun bs!517151 () Bool)

(assert (= bs!517151 d!818459))

(assert (=> bs!517151 m!3248781))

(assert (=> bs!517151 m!3248781))

(declare-fun m!3249065 () Bool)

(assert (=> bs!517151 m!3249065))

(declare-fun m!3249067 () Bool)

(assert (=> bs!517151 m!3249067))

(assert (=> d!818259 d!818459))

(declare-fun d!818461 () Bool)

(assert (=> d!818461 (= (list!12378 (singletonSeq!2121 (h!38411 lt!1006136))) (list!12381 (c!456797 (singletonSeq!2121 (h!38411 lt!1006136)))))))

(declare-fun bs!517152 () Bool)

(assert (= bs!517152 d!818461))

(declare-fun m!3249069 () Bool)

(assert (=> bs!517152 m!3249069))

(assert (=> d!818259 d!818461))

(assert (=> d!818259 d!818445))

(assert (=> d!818259 d!818447))

(declare-fun d!818463 () Bool)

(assert (=> d!818463 (= (list!12378 (_1!19772 (lex!1981 thiss!27755 rules!4424 (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 lt!1006136)))))) (list!12381 (c!456797 (_1!19772 (lex!1981 thiss!27755 rules!4424 (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 lt!1006136))))))))))

(declare-fun bs!517153 () Bool)

(assert (= bs!517153 d!818463))

(declare-fun m!3249071 () Bool)

(assert (=> bs!517153 m!3249071))

(assert (=> d!818259 d!818463))

(declare-fun d!818465 () Bool)

(assert (=> d!818465 true))

(declare-fun lambda!103432 () Int)

(declare-fun order!17475 () Int)

(declare-fun dynLambda!13779 (Int Int) Int)

(assert (=> d!818465 (< (dynLambda!13772 order!17467 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581))))) (dynLambda!13779 order!17475 lambda!103432))))

(assert (=> d!818465 true))

(assert (=> d!818465 (< (dynLambda!13770 order!17463 (toValue!6941 (transformation!4931 (rule!7359 (h!38411 l!6581))))) (dynLambda!13779 order!17475 lambda!103432))))

(declare-fun Forall!1230 (Int) Bool)

(assert (=> d!818465 (= (semiInverseModEq!2044 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (toValue!6941 (transformation!4931 (rule!7359 (h!38411 l!6581))))) (Forall!1230 lambda!103432))))

(declare-fun bs!517154 () Bool)

(assert (= bs!517154 d!818465))

(declare-fun m!3249073 () Bool)

(assert (=> bs!517154 m!3249073))

(assert (=> d!818287 d!818465))

(declare-fun bs!517155 () Bool)

(declare-fun d!818467 () Bool)

(assert (= bs!517155 (and d!818467 d!818273)))

(declare-fun lambda!103433 () Int)

(assert (=> bs!517155 (= lambda!103433 lambda!103408)))

(declare-fun bs!517156 () Bool)

(assert (= bs!517156 (and d!818467 d!818319)))

(assert (=> bs!517156 (= lambda!103433 lambda!103414)))

(declare-fun bs!517157 () Bool)

(assert (= bs!517157 (and d!818467 d!818241)))

(assert (=> bs!517157 (= lambda!103433 lambda!103407)))

(declare-fun bs!517158 () Bool)

(assert (= bs!517158 (and d!818467 d!818235)))

(assert (=> bs!517158 (= lambda!103433 lambda!103396)))

(declare-fun bs!517159 () Bool)

(assert (= bs!517159 (and d!818467 d!818333)))

(assert (=> bs!517159 (= lambda!103433 lambda!103415)))

(declare-fun bs!517160 () Bool)

(assert (= bs!517160 (and d!818467 d!818239)))

(assert (=> bs!517160 (= lambda!103433 lambda!103397)))

(declare-fun bs!517161 () Bool)

(assert (= bs!517161 (and d!818467 b!2817657)))

(assert (=> bs!517161 (= (= thiss!27755 Lexer!4520) (= lambda!103433 lambda!103393))))

(declare-fun b!2818189 () Bool)

(declare-fun e!1782406 () Bool)

(assert (=> b!2818189 (= e!1782406 true)))

(declare-fun b!2818188 () Bool)

(declare-fun e!1782405 () Bool)

(assert (=> b!2818188 (= e!1782405 e!1782406)))

(declare-fun b!2818187 () Bool)

(declare-fun e!1782404 () Bool)

(assert (=> b!2818187 (= e!1782404 e!1782405)))

(assert (=> d!818467 e!1782404))

(assert (= b!2818188 b!2818189))

(assert (= b!2818187 b!2818188))

(assert (= (and d!818467 ((_ is Cons!32990) rules!4424)) b!2818187))

(assert (=> b!2818189 (< (dynLambda!13770 order!17463 (toValue!6941 (transformation!4931 (h!38410 rules!4424)))) (dynLambda!13771 order!17465 lambda!103433))))

(assert (=> b!2818189 (< (dynLambda!13772 order!17467 (toChars!6800 (transformation!4931 (h!38410 rules!4424)))) (dynLambda!13771 order!17465 lambda!103433))))

(assert (=> d!818467 true))

(declare-fun lt!1006289 () Bool)

(assert (=> d!818467 (= lt!1006289 (forall!6752 (t!230198 l!6581) lambda!103433))))

(declare-fun e!1782403 () Bool)

(assert (=> d!818467 (= lt!1006289 e!1782403)))

(declare-fun res!1172784 () Bool)

(assert (=> d!818467 (=> res!1172784 e!1782403)))

(assert (=> d!818467 (= res!1172784 (not ((_ is Cons!32991) (t!230198 l!6581))))))

(assert (=> d!818467 (not (isEmpty!18252 rules!4424))))

(assert (=> d!818467 (= (rulesProduceEachTokenIndividuallyList!1574 thiss!27755 rules!4424 (t!230198 l!6581)) lt!1006289)))

(declare-fun b!2818185 () Bool)

(declare-fun e!1782402 () Bool)

(assert (=> b!2818185 (= e!1782403 e!1782402)))

(declare-fun res!1172785 () Bool)

(assert (=> b!2818185 (=> (not res!1172785) (not e!1782402))))

(assert (=> b!2818185 (= res!1172785 (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 (t!230198 l!6581))))))

(declare-fun b!2818186 () Bool)

(assert (=> b!2818186 (= e!1782402 (rulesProduceEachTokenIndividuallyList!1574 thiss!27755 rules!4424 (t!230198 (t!230198 l!6581))))))

(assert (= (and d!818467 (not res!1172784)) b!2818185))

(assert (= (and b!2818185 res!1172785) b!2818186))

(declare-fun m!3249075 () Bool)

(assert (=> d!818467 m!3249075))

(assert (=> d!818467 m!3248439))

(assert (=> b!2818185 m!3248603))

(declare-fun m!3249077 () Bool)

(assert (=> b!2818186 m!3249077))

(assert (=> b!2817694 d!818467))

(declare-fun d!818469 () Bool)

(assert (=> d!818469 true))

(declare-fun lt!1006292 () Bool)

(declare-fun rulesValidInductive!1716 (LexerInterface!4522 List!33114) Bool)

(assert (=> d!818469 (= lt!1006292 (rulesValidInductive!1716 thiss!27755 rules!4424))))

(declare-fun lambda!103436 () Int)

(declare-fun forall!6756 (List!33114 Int) Bool)

(assert (=> d!818469 (= lt!1006292 (forall!6756 rules!4424 lambda!103436))))

(assert (=> d!818469 (= (rulesValid!1813 thiss!27755 rules!4424) lt!1006292)))

(declare-fun bs!517162 () Bool)

(assert (= bs!517162 d!818469))

(declare-fun m!3249079 () Bool)

(assert (=> bs!517162 m!3249079))

(declare-fun m!3249081 () Bool)

(assert (=> bs!517162 m!3249081))

(assert (=> d!818255 d!818469))

(declare-fun bs!517163 () Bool)

(declare-fun d!818471 () Bool)

(assert (= bs!517163 (and d!818471 d!818465)))

(declare-fun lambda!103437 () Int)

(assert (=> bs!517163 (= (and (= (toChars!6800 (transformation!4931 (h!38410 rules!4424))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581))))) (= (toValue!6941 (transformation!4931 (h!38410 rules!4424))) (toValue!6941 (transformation!4931 (rule!7359 (h!38411 l!6581)))))) (= lambda!103437 lambda!103432))))

(assert (=> d!818471 true))

(assert (=> d!818471 (< (dynLambda!13772 order!17467 (toChars!6800 (transformation!4931 (h!38410 rules!4424)))) (dynLambda!13779 order!17475 lambda!103437))))

(assert (=> d!818471 true))

(assert (=> d!818471 (< (dynLambda!13770 order!17463 (toValue!6941 (transformation!4931 (h!38410 rules!4424)))) (dynLambda!13779 order!17475 lambda!103437))))

(assert (=> d!818471 (= (semiInverseModEq!2044 (toChars!6800 (transformation!4931 (h!38410 rules!4424))) (toValue!6941 (transformation!4931 (h!38410 rules!4424)))) (Forall!1230 lambda!103437))))

(declare-fun bs!517164 () Bool)

(assert (= bs!517164 d!818471))

(declare-fun m!3249083 () Bool)

(assert (=> bs!517164 m!3249083))

(assert (=> d!818279 d!818471))

(declare-fun bs!517165 () Bool)

(declare-fun d!818473 () Bool)

(assert (= bs!517165 (and d!818473 d!818355)))

(declare-fun lambda!103438 () Int)

(assert (=> bs!517165 (= (= (toValue!6941 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (toValue!6941 (transformation!4931 (h!38410 rules!4424)))) (= lambda!103438 lambda!103418))))

(assert (=> d!818473 true))

(assert (=> d!818473 (< (dynLambda!13770 order!17463 (toValue!6941 (transformation!4931 (rule!7359 (h!38411 l!6581))))) (dynLambda!13777 order!17469 lambda!103438))))

(assert (=> d!818473 (= (equivClasses!1943 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (toValue!6941 (transformation!4931 (rule!7359 (h!38411 l!6581))))) (Forall2!826 lambda!103438))))

(declare-fun bs!517166 () Bool)

(assert (= bs!517166 d!818473))

(declare-fun m!3249085 () Bool)

(assert (=> bs!517166 m!3249085))

(assert (=> b!2817823 d!818473))

(declare-fun d!818475 () Bool)

(declare-fun lt!1006293 () Int)

(assert (=> d!818475 (>= lt!1006293 0)))

(declare-fun e!1782407 () Int)

(assert (=> d!818475 (= lt!1006293 e!1782407)))

(declare-fun c!456867 () Bool)

(assert (=> d!818475 (= c!456867 ((_ is Nil!32991) lt!1006181))))

(assert (=> d!818475 (= (size!25703 lt!1006181) lt!1006293)))

(declare-fun b!2818192 () Bool)

(assert (=> b!2818192 (= e!1782407 0)))

(declare-fun b!2818193 () Bool)

(assert (=> b!2818193 (= e!1782407 (+ 1 (size!25703 (t!230198 lt!1006181))))))

(assert (= (and d!818475 c!456867) b!2818192))

(assert (= (and d!818475 (not c!456867)) b!2818193))

(declare-fun m!3249087 () Bool)

(assert (=> b!2818193 m!3249087))

(assert (=> b!2817802 d!818475))

(declare-fun d!818477 () Bool)

(declare-fun res!1172787 () Bool)

(declare-fun e!1782409 () Bool)

(assert (=> d!818477 (=> res!1172787 e!1782409)))

(assert (=> d!818477 (= res!1172787 (or (not ((_ is Cons!32991) (Cons!32991 (h!38411 (t!230198 l!6581)) (t!230198 (t!230198 l!6581))))) (not ((_ is Cons!32991) (t!230198 (Cons!32991 (h!38411 (t!230198 l!6581)) (t!230198 (t!230198 l!6581))))))))))

(assert (=> d!818477 (= (tokensListTwoByTwoPredicateSeparableList!659 thiss!27755 (Cons!32991 (h!38411 (t!230198 l!6581)) (t!230198 (t!230198 l!6581))) rules!4424) e!1782409)))

(declare-fun b!2818194 () Bool)

(declare-fun e!1782408 () Bool)

(assert (=> b!2818194 (= e!1782409 e!1782408)))

(declare-fun res!1172786 () Bool)

(assert (=> b!2818194 (=> (not res!1172786) (not e!1782408))))

(assert (=> b!2818194 (= res!1172786 (separableTokensPredicate!885 thiss!27755 (h!38411 (Cons!32991 (h!38411 (t!230198 l!6581)) (t!230198 (t!230198 l!6581)))) (h!38411 (t!230198 (Cons!32991 (h!38411 (t!230198 l!6581)) (t!230198 (t!230198 l!6581))))) rules!4424))))

(declare-fun lt!1006298 () Unit!46952)

(declare-fun Unit!46960 () Unit!46952)

(assert (=> b!2818194 (= lt!1006298 Unit!46960)))

(assert (=> b!2818194 (> (size!25704 (charsOf!3060 (h!38411 (t!230198 (Cons!32991 (h!38411 (t!230198 l!6581)) (t!230198 (t!230198 l!6581))))))) 0)))

(declare-fun lt!1006300 () Unit!46952)

(declare-fun Unit!46961 () Unit!46952)

(assert (=> b!2818194 (= lt!1006300 Unit!46961)))

(assert (=> b!2818194 (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 (t!230198 (Cons!32991 (h!38411 (t!230198 l!6581)) (t!230198 (t!230198 l!6581))))))))

(declare-fun lt!1006295 () Unit!46952)

(declare-fun Unit!46962 () Unit!46952)

(assert (=> b!2818194 (= lt!1006295 Unit!46962)))

(assert (=> b!2818194 (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 (Cons!32991 (h!38411 (t!230198 l!6581)) (t!230198 (t!230198 l!6581)))))))

(declare-fun lt!1006299 () Unit!46952)

(declare-fun lt!1006297 () Unit!46952)

(assert (=> b!2818194 (= lt!1006299 lt!1006297)))

(assert (=> b!2818194 (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 (t!230198 (Cons!32991 (h!38411 (t!230198 l!6581)) (t!230198 (t!230198 l!6581))))))))

(assert (=> b!2818194 (= lt!1006297 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!699 thiss!27755 rules!4424 (Cons!32991 (h!38411 (t!230198 l!6581)) (t!230198 (t!230198 l!6581))) (h!38411 (t!230198 (Cons!32991 (h!38411 (t!230198 l!6581)) (t!230198 (t!230198 l!6581)))))))))

(declare-fun lt!1006296 () Unit!46952)

(declare-fun lt!1006294 () Unit!46952)

(assert (=> b!2818194 (= lt!1006296 lt!1006294)))

(assert (=> b!2818194 (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 (Cons!32991 (h!38411 (t!230198 l!6581)) (t!230198 (t!230198 l!6581)))))))

(assert (=> b!2818194 (= lt!1006294 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!699 thiss!27755 rules!4424 (Cons!32991 (h!38411 (t!230198 l!6581)) (t!230198 (t!230198 l!6581))) (h!38411 (Cons!32991 (h!38411 (t!230198 l!6581)) (t!230198 (t!230198 l!6581))))))))

(declare-fun b!2818195 () Bool)

(assert (=> b!2818195 (= e!1782408 (tokensListTwoByTwoPredicateSeparableList!659 thiss!27755 (Cons!32991 (h!38411 (t!230198 (Cons!32991 (h!38411 (t!230198 l!6581)) (t!230198 (t!230198 l!6581))))) (t!230198 (t!230198 (Cons!32991 (h!38411 (t!230198 l!6581)) (t!230198 (t!230198 l!6581)))))) rules!4424))))

(assert (= (and d!818477 (not res!1172787)) b!2818194))

(assert (= (and b!2818194 res!1172786) b!2818195))

(declare-fun m!3249089 () Bool)

(assert (=> b!2818194 m!3249089))

(declare-fun m!3249091 () Bool)

(assert (=> b!2818194 m!3249091))

(declare-fun m!3249093 () Bool)

(assert (=> b!2818194 m!3249093))

(declare-fun m!3249095 () Bool)

(assert (=> b!2818194 m!3249095))

(declare-fun m!3249097 () Bool)

(assert (=> b!2818194 m!3249097))

(assert (=> b!2818194 m!3249091))

(declare-fun m!3249099 () Bool)

(assert (=> b!2818194 m!3249099))

(declare-fun m!3249101 () Bool)

(assert (=> b!2818194 m!3249101))

(declare-fun m!3249103 () Bool)

(assert (=> b!2818195 m!3249103))

(assert (=> b!2817822 d!818477))

(declare-fun d!818479 () Bool)

(declare-fun res!1172788 () Bool)

(declare-fun e!1782410 () Bool)

(assert (=> d!818479 (=> res!1172788 e!1782410)))

(assert (=> d!818479 (= res!1172788 ((_ is Nil!32991) (t!230198 lt!1006136)))))

(assert (=> d!818479 (= (forall!6752 (t!230198 lt!1006136) lambda!103397) e!1782410)))

(declare-fun b!2818196 () Bool)

(declare-fun e!1782411 () Bool)

(assert (=> b!2818196 (= e!1782410 e!1782411)))

(declare-fun res!1172789 () Bool)

(assert (=> b!2818196 (=> (not res!1172789) (not e!1782411))))

(assert (=> b!2818196 (= res!1172789 (dynLambda!13774 lambda!103397 (h!38411 (t!230198 lt!1006136))))))

(declare-fun b!2818197 () Bool)

(assert (=> b!2818197 (= e!1782411 (forall!6752 (t!230198 (t!230198 lt!1006136)) lambda!103397))))

(assert (= (and d!818479 (not res!1172788)) b!2818196))

(assert (= (and b!2818196 res!1172789) b!2818197))

(declare-fun b_lambda!84265 () Bool)

(assert (=> (not b_lambda!84265) (not b!2818196)))

(declare-fun m!3249105 () Bool)

(assert (=> b!2818196 m!3249105))

(declare-fun m!3249107 () Bool)

(assert (=> b!2818197 m!3249107))

(assert (=> d!818239 d!818479))

(assert (=> d!818239 d!818253))

(assert (=> d!818271 d!818269))

(declare-fun d!818481 () Bool)

(assert (=> d!818481 (forall!6752 lt!1006136 lambda!103393)))

(assert (=> d!818481 true))

(declare-fun _$37!348 () Unit!46952)

(assert (=> d!818481 (= (choose!16666 lt!1006136 l!6581 lambda!103393) _$37!348)))

(declare-fun bs!517167 () Bool)

(assert (= bs!517167 d!818481))

(assert (=> bs!517167 m!3248441))

(assert (=> d!818271 d!818481))

(declare-fun d!818483 () Bool)

(declare-fun res!1172790 () Bool)

(declare-fun e!1782412 () Bool)

(assert (=> d!818483 (=> res!1172790 e!1782412)))

(assert (=> d!818483 (= res!1172790 ((_ is Nil!32991) l!6581))))

(assert (=> d!818483 (= (forall!6752 l!6581 lambda!103393) e!1782412)))

(declare-fun b!2818198 () Bool)

(declare-fun e!1782413 () Bool)

(assert (=> b!2818198 (= e!1782412 e!1782413)))

(declare-fun res!1172791 () Bool)

(assert (=> b!2818198 (=> (not res!1172791) (not e!1782413))))

(assert (=> b!2818198 (= res!1172791 (dynLambda!13774 lambda!103393 (h!38411 l!6581)))))

(declare-fun b!2818199 () Bool)

(assert (=> b!2818199 (= e!1782413 (forall!6752 (t!230198 l!6581) lambda!103393))))

(assert (= (and d!818483 (not res!1172790)) b!2818198))

(assert (= (and b!2818198 res!1172791) b!2818199))

(declare-fun b_lambda!84267 () Bool)

(assert (=> (not b_lambda!84267) (not b!2818198)))

(declare-fun m!3249109 () Bool)

(assert (=> b!2818198 m!3249109))

(declare-fun m!3249111 () Bool)

(assert (=> b!2818199 m!3249111))

(assert (=> d!818271 d!818483))

(assert (=> b!2817779 d!818259))

(declare-fun b!2818200 () Bool)

(declare-fun e!1782415 () List!33115)

(assert (=> b!2818200 (= e!1782415 Nil!32991)))

(declare-fun b!2818201 () Bool)

(declare-fun e!1782417 () Int)

(assert (=> b!2818201 (= e!1782417 (- i!1730 1))))

(declare-fun b!2818202 () Bool)

(assert (=> b!2818202 (= e!1782415 (Cons!32991 (h!38411 (t!230198 l!6581)) (take!525 (t!230198 (t!230198 l!6581)) (- (- i!1730 1) 1))))))

(declare-fun b!2818204 () Bool)

(declare-fun e!1782414 () Bool)

(declare-fun lt!1006301 () List!33115)

(declare-fun e!1782416 () Int)

(assert (=> b!2818204 (= e!1782414 (= (size!25703 lt!1006301) e!1782416))))

(declare-fun c!456869 () Bool)

(assert (=> b!2818204 (= c!456869 (<= (- i!1730 1) 0))))

(declare-fun b!2818205 () Bool)

(assert (=> b!2818205 (= e!1782417 (size!25703 (t!230198 l!6581)))))

(declare-fun b!2818206 () Bool)

(assert (=> b!2818206 (= e!1782416 e!1782417)))

(declare-fun c!456870 () Bool)

(assert (=> b!2818206 (= c!456870 (>= (- i!1730 1) (size!25703 (t!230198 l!6581))))))

(declare-fun b!2818203 () Bool)

(assert (=> b!2818203 (= e!1782416 0)))

(declare-fun d!818485 () Bool)

(assert (=> d!818485 e!1782414))

(declare-fun res!1172792 () Bool)

(assert (=> d!818485 (=> (not res!1172792) (not e!1782414))))

(assert (=> d!818485 (= res!1172792 (= ((_ map implies) (content!4603 lt!1006301) (content!4603 (t!230198 l!6581))) ((as const (InoxSet Token!9264)) true)))))

(assert (=> d!818485 (= lt!1006301 e!1782415)))

(declare-fun c!456868 () Bool)

(assert (=> d!818485 (= c!456868 (or ((_ is Nil!32991) (t!230198 l!6581)) (<= (- i!1730 1) 0)))))

(assert (=> d!818485 (= (take!525 (t!230198 l!6581) (- i!1730 1)) lt!1006301)))

(assert (= (and d!818485 c!456868) b!2818200))

(assert (= (and d!818485 (not c!456868)) b!2818202))

(assert (= (and d!818485 res!1172792) b!2818204))

(assert (= (and b!2818204 c!456869) b!2818203))

(assert (= (and b!2818204 (not c!456869)) b!2818206))

(assert (= (and b!2818206 c!456870) b!2818205))

(assert (= (and b!2818206 (not c!456870)) b!2818201))

(declare-fun m!3249113 () Bool)

(assert (=> b!2818204 m!3249113))

(assert (=> b!2818206 m!3248699))

(assert (=> b!2818205 m!3248699))

(declare-fun m!3249115 () Bool)

(assert (=> b!2818202 m!3249115))

(declare-fun m!3249117 () Bool)

(assert (=> d!818485 m!3249117))

(assert (=> d!818485 m!3249045))

(assert (=> b!2817800 d!818485))

(assert (=> b!2817780 d!818239))

(declare-fun d!818487 () Bool)

(declare-fun lt!1006304 () BalanceConc!20112)

(assert (=> d!818487 (= (list!12377 lt!1006304) (originalCharacters!5663 (h!38411 (t!230198 l!6581))))))

(assert (=> d!818487 (= lt!1006304 (dynLambda!13773 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581))))) (value!158853 (h!38411 (t!230198 l!6581)))))))

(assert (=> d!818487 (= (charsOf!3060 (h!38411 (t!230198 l!6581))) lt!1006304)))

(declare-fun b_lambda!84269 () Bool)

(assert (=> (not b_lambda!84269) (not d!818487)))

(assert (=> d!818487 t!230232))

(declare-fun b_and!205751 () Bool)

(assert (= b_and!205735 (and (=> t!230232 result!191326) b_and!205751)))

(assert (=> d!818487 t!230234))

(declare-fun b_and!205753 () Bool)

(assert (= b_and!205737 (and (=> t!230234 result!191328) b_and!205753)))

(assert (=> d!818487 t!230236))

(declare-fun b_and!205755 () Bool)

(assert (= b_and!205739 (and (=> t!230236 result!191330) b_and!205755)))

(assert (=> d!818487 t!230238))

(declare-fun b_and!205757 () Bool)

(assert (= b_and!205741 (and (=> t!230238 result!191332) b_and!205757)))

(declare-fun m!3249119 () Bool)

(assert (=> d!818487 m!3249119))

(assert (=> d!818487 m!3248715))

(assert (=> b!2817821 d!818487))

(declare-fun d!818489 () Bool)

(assert (=> d!818489 (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 l!6581))))

(declare-fun lt!1006319 () Unit!46952)

(declare-fun choose!16668 (LexerInterface!4522 List!33114 List!33115 Token!9264) Unit!46952)

(assert (=> d!818489 (= lt!1006319 (choose!16668 thiss!27755 rules!4424 l!6581 (h!38411 l!6581)))))

(assert (=> d!818489 (not (isEmpty!18252 rules!4424))))

(assert (=> d!818489 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!699 thiss!27755 rules!4424 l!6581 (h!38411 l!6581)) lt!1006319)))

(declare-fun bs!517169 () Bool)

(assert (= bs!517169 d!818489))

(assert (=> bs!517169 m!3248477))

(declare-fun m!3249153 () Bool)

(assert (=> bs!517169 m!3249153))

(assert (=> bs!517169 m!3248439))

(assert (=> b!2817821 d!818489))

(declare-fun d!818499 () Bool)

(assert (=> d!818499 (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 (t!230198 l!6581)))))

(declare-fun lt!1006320 () Unit!46952)

(assert (=> d!818499 (= lt!1006320 (choose!16668 thiss!27755 rules!4424 l!6581 (h!38411 (t!230198 l!6581))))))

(assert (=> d!818499 (not (isEmpty!18252 rules!4424))))

(assert (=> d!818499 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!699 thiss!27755 rules!4424 l!6581 (h!38411 (t!230198 l!6581))) lt!1006320)))

(declare-fun bs!517170 () Bool)

(assert (= bs!517170 d!818499))

(assert (=> bs!517170 m!3248603))

(declare-fun m!3249155 () Bool)

(assert (=> bs!517170 m!3249155))

(assert (=> bs!517170 m!3248439))

(assert (=> b!2817821 d!818499))

(declare-fun d!818501 () Bool)

(declare-fun lt!1006323 () Int)

(assert (=> d!818501 (= lt!1006323 (size!25700 (list!12377 (charsOf!3060 (h!38411 (t!230198 l!6581))))))))

(declare-fun size!25709 (Conc!10237) Int)

(assert (=> d!818501 (= lt!1006323 (size!25709 (c!456795 (charsOf!3060 (h!38411 (t!230198 l!6581))))))))

(assert (=> d!818501 (= (size!25704 (charsOf!3060 (h!38411 (t!230198 l!6581)))) lt!1006323)))

(declare-fun bs!517171 () Bool)

(assert (= bs!517171 d!818501))

(assert (=> bs!517171 m!3248593))

(declare-fun m!3249157 () Bool)

(assert (=> bs!517171 m!3249157))

(assert (=> bs!517171 m!3249157))

(declare-fun m!3249159 () Bool)

(assert (=> bs!517171 m!3249159))

(declare-fun m!3249161 () Bool)

(assert (=> bs!517171 m!3249161))

(assert (=> b!2817821 d!818501))

(declare-fun d!818503 () Bool)

(declare-fun lt!1006324 () Bool)

(declare-fun e!1782431 () Bool)

(assert (=> d!818503 (= lt!1006324 e!1782431)))

(declare-fun res!1172806 () Bool)

(assert (=> d!818503 (=> (not res!1172806) (not e!1782431))))

(assert (=> d!818503 (= res!1172806 (= (list!12378 (_1!19772 (lex!1981 thiss!27755 rules!4424 (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 (t!230198 l!6581))))))) (list!12378 (singletonSeq!2121 (h!38411 (t!230198 l!6581))))))))

(declare-fun e!1782430 () Bool)

(assert (=> d!818503 (= lt!1006324 e!1782430)))

(declare-fun res!1172805 () Bool)

(assert (=> d!818503 (=> (not res!1172805) (not e!1782430))))

(declare-fun lt!1006325 () tuple2!33358)

(assert (=> d!818503 (= res!1172805 (= (size!25701 (_1!19772 lt!1006325)) 1))))

(assert (=> d!818503 (= lt!1006325 (lex!1981 thiss!27755 rules!4424 (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 (t!230198 l!6581))))))))

(assert (=> d!818503 (not (isEmpty!18252 rules!4424))))

(assert (=> d!818503 (= (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 (t!230198 l!6581))) lt!1006324)))

(declare-fun b!2818225 () Bool)

(declare-fun res!1172807 () Bool)

(assert (=> b!2818225 (=> (not res!1172807) (not e!1782430))))

(assert (=> b!2818225 (= res!1172807 (= (apply!7708 (_1!19772 lt!1006325) 0) (h!38411 (t!230198 l!6581))))))

(declare-fun b!2818226 () Bool)

(assert (=> b!2818226 (= e!1782430 (isEmpty!18254 (_2!19772 lt!1006325)))))

(declare-fun b!2818227 () Bool)

(assert (=> b!2818227 (= e!1782431 (isEmpty!18254 (_2!19772 (lex!1981 thiss!27755 rules!4424 (print!1700 thiss!27755 (singletonSeq!2121 (h!38411 (t!230198 l!6581))))))))))

(assert (= (and d!818503 res!1172805) b!2818225))

(assert (= (and b!2818225 res!1172807) b!2818226))

(assert (= (and d!818503 res!1172806) b!2818227))

(assert (=> d!818503 m!3248439))

(declare-fun m!3249163 () Bool)

(assert (=> d!818503 m!3249163))

(declare-fun m!3249165 () Bool)

(assert (=> d!818503 m!3249165))

(assert (=> d!818503 m!3249163))

(declare-fun m!3249167 () Bool)

(assert (=> d!818503 m!3249167))

(assert (=> d!818503 m!3249163))

(assert (=> d!818503 m!3249167))

(declare-fun m!3249169 () Bool)

(assert (=> d!818503 m!3249169))

(declare-fun m!3249171 () Bool)

(assert (=> d!818503 m!3249171))

(declare-fun m!3249173 () Bool)

(assert (=> d!818503 m!3249173))

(declare-fun m!3249175 () Bool)

(assert (=> b!2818225 m!3249175))

(declare-fun m!3249177 () Bool)

(assert (=> b!2818226 m!3249177))

(assert (=> b!2818227 m!3249163))

(assert (=> b!2818227 m!3249163))

(assert (=> b!2818227 m!3249167))

(assert (=> b!2818227 m!3249167))

(assert (=> b!2818227 m!3249169))

(declare-fun m!3249179 () Bool)

(assert (=> b!2818227 m!3249179))

(assert (=> b!2817821 d!818503))

(assert (=> b!2817821 d!818457))

(declare-fun d!818505 () Bool)

(declare-fun prefixMatchZipperSequence!732 (Regex!8321 BalanceConc!20112) Bool)

(declare-fun rulesRegex!988 (LexerInterface!4522 List!33114) Regex!8321)

(declare-fun ++!8090 (BalanceConc!20112 BalanceConc!20112) BalanceConc!20112)

(declare-fun singletonSeq!2123 (C!16824) BalanceConc!20112)

(declare-fun apply!7712 (BalanceConc!20112 Int) C!16824)

(assert (=> d!818505 (= (separableTokensPredicate!885 thiss!27755 (h!38411 l!6581) (h!38411 (t!230198 l!6581)) rules!4424) (not (prefixMatchZipperSequence!732 (rulesRegex!988 thiss!27755 rules!4424) (++!8090 (charsOf!3060 (h!38411 l!6581)) (singletonSeq!2123 (apply!7712 (charsOf!3060 (h!38411 (t!230198 l!6581))) 0))))))))

(declare-fun bs!517172 () Bool)

(assert (= bs!517172 d!818505))

(declare-fun m!3249181 () Bool)

(assert (=> bs!517172 m!3249181))

(declare-fun m!3249183 () Bool)

(assert (=> bs!517172 m!3249183))

(assert (=> bs!517172 m!3248593))

(assert (=> bs!517172 m!3249181))

(declare-fun m!3249185 () Bool)

(assert (=> bs!517172 m!3249185))

(declare-fun m!3249187 () Bool)

(assert (=> bs!517172 m!3249187))

(declare-fun m!3249189 () Bool)

(assert (=> bs!517172 m!3249189))

(assert (=> bs!517172 m!3248593))

(declare-fun m!3249191 () Bool)

(assert (=> bs!517172 m!3249191))

(assert (=> bs!517172 m!3249191))

(assert (=> bs!517172 m!3249183))

(assert (=> bs!517172 m!3249187))

(assert (=> bs!517172 m!3249185))

(assert (=> b!2817821 d!818505))

(declare-fun b!2818228 () Bool)

(declare-fun e!1782432 () Bool)

(assert (=> b!2818228 (= e!1782432 tp_is_empty!14433)))

(declare-fun b!2818231 () Bool)

(declare-fun tp!899700 () Bool)

(declare-fun tp!899701 () Bool)

(assert (=> b!2818231 (= e!1782432 (and tp!899700 tp!899701))))

(assert (=> b!2817874 (= tp!899634 e!1782432)))

(declare-fun b!2818229 () Bool)

(declare-fun tp!899699 () Bool)

(declare-fun tp!899702 () Bool)

(assert (=> b!2818229 (= e!1782432 (and tp!899699 tp!899702))))

(declare-fun b!2818230 () Bool)

(declare-fun tp!899703 () Bool)

(assert (=> b!2818230 (= e!1782432 tp!899703)))

(assert (= (and b!2817874 ((_ is ElementMatch!8321) (regOne!17154 (regex!4931 (h!38410 rules!4424))))) b!2818228))

(assert (= (and b!2817874 ((_ is Concat!13483) (regOne!17154 (regex!4931 (h!38410 rules!4424))))) b!2818229))

(assert (= (and b!2817874 ((_ is Star!8321) (regOne!17154 (regex!4931 (h!38410 rules!4424))))) b!2818230))

(assert (= (and b!2817874 ((_ is Union!8321) (regOne!17154 (regex!4931 (h!38410 rules!4424))))) b!2818231))

(declare-fun b!2818232 () Bool)

(declare-fun e!1782433 () Bool)

(assert (=> b!2818232 (= e!1782433 tp_is_empty!14433)))

(declare-fun b!2818235 () Bool)

(declare-fun tp!899705 () Bool)

(declare-fun tp!899706 () Bool)

(assert (=> b!2818235 (= e!1782433 (and tp!899705 tp!899706))))

(assert (=> b!2817874 (= tp!899637 e!1782433)))

(declare-fun b!2818233 () Bool)

(declare-fun tp!899704 () Bool)

(declare-fun tp!899707 () Bool)

(assert (=> b!2818233 (= e!1782433 (and tp!899704 tp!899707))))

(declare-fun b!2818234 () Bool)

(declare-fun tp!899708 () Bool)

(assert (=> b!2818234 (= e!1782433 tp!899708)))

(assert (= (and b!2817874 ((_ is ElementMatch!8321) (regTwo!17154 (regex!4931 (h!38410 rules!4424))))) b!2818232))

(assert (= (and b!2817874 ((_ is Concat!13483) (regTwo!17154 (regex!4931 (h!38410 rules!4424))))) b!2818233))

(assert (= (and b!2817874 ((_ is Star!8321) (regTwo!17154 (regex!4931 (h!38410 rules!4424))))) b!2818234))

(assert (= (and b!2817874 ((_ is Union!8321) (regTwo!17154 (regex!4931 (h!38410 rules!4424))))) b!2818235))

(declare-fun b!2818236 () Bool)

(declare-fun e!1782434 () Bool)

(assert (=> b!2818236 (= e!1782434 tp_is_empty!14433)))

(declare-fun b!2818239 () Bool)

(declare-fun tp!899710 () Bool)

(declare-fun tp!899711 () Bool)

(assert (=> b!2818239 (= e!1782434 (and tp!899710 tp!899711))))

(assert (=> b!2817879 (= tp!899643 e!1782434)))

(declare-fun b!2818237 () Bool)

(declare-fun tp!899709 () Bool)

(declare-fun tp!899712 () Bool)

(assert (=> b!2818237 (= e!1782434 (and tp!899709 tp!899712))))

(declare-fun b!2818238 () Bool)

(declare-fun tp!899713 () Bool)

(assert (=> b!2818238 (= e!1782434 tp!899713)))

(assert (= (and b!2817879 ((_ is ElementMatch!8321) (reg!8650 (regex!4931 (rule!7359 (h!38411 l!6581)))))) b!2818236))

(assert (= (and b!2817879 ((_ is Concat!13483) (reg!8650 (regex!4931 (rule!7359 (h!38411 l!6581)))))) b!2818237))

(assert (= (and b!2817879 ((_ is Star!8321) (reg!8650 (regex!4931 (rule!7359 (h!38411 l!6581)))))) b!2818238))

(assert (= (and b!2817879 ((_ is Union!8321) (reg!8650 (regex!4931 (rule!7359 (h!38411 l!6581)))))) b!2818239))

(declare-fun b!2818242 () Bool)

(declare-fun e!1782437 () Bool)

(assert (=> b!2818242 (= e!1782437 true)))

(declare-fun b!2818241 () Bool)

(declare-fun e!1782436 () Bool)

(assert (=> b!2818241 (= e!1782436 e!1782437)))

(declare-fun b!2818240 () Bool)

(declare-fun e!1782435 () Bool)

(assert (=> b!2818240 (= e!1782435 e!1782436)))

(assert (=> b!2817695 e!1782435))

(assert (= b!2818241 b!2818242))

(assert (= b!2818240 b!2818241))

(assert (= (and b!2817695 ((_ is Cons!32990) (t!230197 rules!4424))) b!2818240))

(assert (=> b!2818242 (< (dynLambda!13770 order!17463 (toValue!6941 (transformation!4931 (h!38410 (t!230197 rules!4424))))) (dynLambda!13771 order!17465 lambda!103396))))

(assert (=> b!2818242 (< (dynLambda!13772 order!17467 (toChars!6800 (transformation!4931 (h!38410 (t!230197 rules!4424))))) (dynLambda!13771 order!17465 lambda!103396))))

(declare-fun b!2818245 () Bool)

(declare-fun e!1782440 () Bool)

(assert (=> b!2818245 (= e!1782440 true)))

(declare-fun b!2818244 () Bool)

(declare-fun e!1782439 () Bool)

(assert (=> b!2818244 (= e!1782439 e!1782440)))

(declare-fun b!2818243 () Bool)

(declare-fun e!1782438 () Bool)

(assert (=> b!2818243 (= e!1782438 e!1782439)))

(assert (=> b!2817719 e!1782438))

(assert (= b!2818244 b!2818245))

(assert (= b!2818243 b!2818244))

(assert (= (and b!2817719 ((_ is Cons!32990) (t!230197 rules!4424))) b!2818243))

(assert (=> b!2818245 (< (dynLambda!13770 order!17463 (toValue!6941 (transformation!4931 (h!38410 (t!230197 rules!4424))))) (dynLambda!13771 order!17465 lambda!103407))))

(assert (=> b!2818245 (< (dynLambda!13772 order!17467 (toChars!6800 (transformation!4931 (h!38410 (t!230197 rules!4424))))) (dynLambda!13771 order!17465 lambda!103407))))

(declare-fun b!2818246 () Bool)

(declare-fun e!1782441 () Bool)

(assert (=> b!2818246 (= e!1782441 tp_is_empty!14433)))

(declare-fun b!2818249 () Bool)

(declare-fun tp!899715 () Bool)

(declare-fun tp!899716 () Bool)

(assert (=> b!2818249 (= e!1782441 (and tp!899715 tp!899716))))

(assert (=> b!2817878 (= tp!899639 e!1782441)))

(declare-fun b!2818247 () Bool)

(declare-fun tp!899714 () Bool)

(declare-fun tp!899717 () Bool)

(assert (=> b!2818247 (= e!1782441 (and tp!899714 tp!899717))))

(declare-fun b!2818248 () Bool)

(declare-fun tp!899718 () Bool)

(assert (=> b!2818248 (= e!1782441 tp!899718)))

(assert (= (and b!2817878 ((_ is ElementMatch!8321) (regOne!17154 (regex!4931 (rule!7359 (h!38411 l!6581)))))) b!2818246))

(assert (= (and b!2817878 ((_ is Concat!13483) (regOne!17154 (regex!4931 (rule!7359 (h!38411 l!6581)))))) b!2818247))

(assert (= (and b!2817878 ((_ is Star!8321) (regOne!17154 (regex!4931 (rule!7359 (h!38411 l!6581)))))) b!2818248))

(assert (= (and b!2817878 ((_ is Union!8321) (regOne!17154 (regex!4931 (rule!7359 (h!38411 l!6581)))))) b!2818249))

(declare-fun b!2818250 () Bool)

(declare-fun e!1782442 () Bool)

(assert (=> b!2818250 (= e!1782442 tp_is_empty!14433)))

(declare-fun b!2818253 () Bool)

(declare-fun tp!899720 () Bool)

(declare-fun tp!899721 () Bool)

(assert (=> b!2818253 (= e!1782442 (and tp!899720 tp!899721))))

(assert (=> b!2817878 (= tp!899642 e!1782442)))

(declare-fun b!2818251 () Bool)

(declare-fun tp!899719 () Bool)

(declare-fun tp!899722 () Bool)

(assert (=> b!2818251 (= e!1782442 (and tp!899719 tp!899722))))

(declare-fun b!2818252 () Bool)

(declare-fun tp!899723 () Bool)

(assert (=> b!2818252 (= e!1782442 tp!899723)))

(assert (= (and b!2817878 ((_ is ElementMatch!8321) (regTwo!17154 (regex!4931 (rule!7359 (h!38411 l!6581)))))) b!2818250))

(assert (= (and b!2817878 ((_ is Concat!13483) (regTwo!17154 (regex!4931 (rule!7359 (h!38411 l!6581)))))) b!2818251))

(assert (= (and b!2817878 ((_ is Star!8321) (regTwo!17154 (regex!4931 (rule!7359 (h!38411 l!6581)))))) b!2818252))

(assert (= (and b!2817878 ((_ is Union!8321) (regTwo!17154 (regex!4931 (rule!7359 (h!38411 l!6581)))))) b!2818253))

(declare-fun b!2818257 () Bool)

(declare-fun b_free!80429 () Bool)

(declare-fun b_next!81133 () Bool)

(assert (=> b!2818257 (= b_free!80429 (not b_next!81133))))

(declare-fun tp!899724 () Bool)

(declare-fun b_and!205767 () Bool)

(assert (=> b!2818257 (= tp!899724 b_and!205767)))

(declare-fun b_free!80431 () Bool)

(declare-fun b_next!81135 () Bool)

(assert (=> b!2818257 (= b_free!80431 (not b_next!81135))))

(declare-fun t!230251 () Bool)

(declare-fun tb!153717 () Bool)

(assert (=> (and b!2818257 (= (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 (t!230198 l!6581)))))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581))))) t!230251) tb!153717))

(declare-fun result!191342 () Bool)

(assert (= result!191342 result!191290))

(assert (=> b!2817682 t!230251))

(declare-fun t!230253 () Bool)

(declare-fun tb!153719 () Bool)

(assert (=> (and b!2818257 (= (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 (t!230198 l!6581)))))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581)))))) t!230253) tb!153719))

(declare-fun result!191344 () Bool)

(assert (= result!191344 result!191326))

(assert (=> b!2817992 t!230253))

(assert (=> d!818487 t!230253))

(declare-fun tp!899726 () Bool)

(declare-fun b_and!205769 () Bool)

(assert (=> b!2818257 (= tp!899726 (and (=> t!230251 result!191342) (=> t!230253 result!191344) b_and!205769))))

(declare-fun b!2818255 () Bool)

(declare-fun e!1782446 () Bool)

(declare-fun tp!899727 () Bool)

(declare-fun e!1782443 () Bool)

(assert (=> b!2818255 (= e!1782446 (and (inv!21 (value!158853 (h!38411 (t!230198 (t!230198 l!6581))))) e!1782443 tp!899727))))

(declare-fun tp!899728 () Bool)

(declare-fun e!1782448 () Bool)

(declare-fun b!2818256 () Bool)

(assert (=> b!2818256 (= e!1782443 (and tp!899728 (inv!44902 (tag!5435 (rule!7359 (h!38411 (t!230198 (t!230198 l!6581)))))) (inv!44905 (transformation!4931 (rule!7359 (h!38411 (t!230198 (t!230198 l!6581)))))) e!1782448))))

(assert (=> b!2818257 (= e!1782448 (and tp!899724 tp!899726))))

(declare-fun tp!899725 () Bool)

(declare-fun b!2818254 () Bool)

(declare-fun e!1782444 () Bool)

(assert (=> b!2818254 (= e!1782444 (and (inv!44906 (h!38411 (t!230198 (t!230198 l!6581)))) e!1782446 tp!899725))))

(assert (=> b!2817856 (= tp!899620 e!1782444)))

(assert (= b!2818256 b!2818257))

(assert (= b!2818255 b!2818256))

(assert (= b!2818254 b!2818255))

(assert (= (and b!2817856 ((_ is Cons!32991) (t!230198 (t!230198 l!6581)))) b!2818254))

(declare-fun m!3249193 () Bool)

(assert (=> b!2818255 m!3249193))

(declare-fun m!3249195 () Bool)

(assert (=> b!2818256 m!3249195))

(declare-fun m!3249197 () Bool)

(assert (=> b!2818256 m!3249197))

(declare-fun m!3249199 () Bool)

(assert (=> b!2818254 m!3249199))

(declare-fun b!2818258 () Bool)

(declare-fun e!1782449 () Bool)

(assert (=> b!2818258 (= e!1782449 tp_is_empty!14433)))

(declare-fun b!2818261 () Bool)

(declare-fun tp!899730 () Bool)

(declare-fun tp!899731 () Bool)

(assert (=> b!2818261 (= e!1782449 (and tp!899730 tp!899731))))

(assert (=> b!2817838 (= tp!899606 e!1782449)))

(declare-fun b!2818259 () Bool)

(declare-fun tp!899729 () Bool)

(declare-fun tp!899732 () Bool)

(assert (=> b!2818259 (= e!1782449 (and tp!899729 tp!899732))))

(declare-fun b!2818260 () Bool)

(declare-fun tp!899733 () Bool)

(assert (=> b!2818260 (= e!1782449 tp!899733)))

(assert (= (and b!2817838 ((_ is ElementMatch!8321) (regex!4931 (h!38410 (t!230197 rules!4424))))) b!2818258))

(assert (= (and b!2817838 ((_ is Concat!13483) (regex!4931 (h!38410 (t!230197 rules!4424))))) b!2818259))

(assert (= (and b!2817838 ((_ is Star!8321) (regex!4931 (h!38410 (t!230197 rules!4424))))) b!2818260))

(assert (= (and b!2817838 ((_ is Union!8321) (regex!4931 (h!38410 (t!230197 rules!4424))))) b!2818261))

(declare-fun b!2818262 () Bool)

(declare-fun e!1782450 () Bool)

(assert (=> b!2818262 (= e!1782450 tp_is_empty!14433)))

(declare-fun b!2818265 () Bool)

(declare-fun tp!899735 () Bool)

(declare-fun tp!899736 () Bool)

(assert (=> b!2818265 (= e!1782450 (and tp!899735 tp!899736))))

(assert (=> b!2817875 (= tp!899638 e!1782450)))

(declare-fun b!2818263 () Bool)

(declare-fun tp!899734 () Bool)

(declare-fun tp!899737 () Bool)

(assert (=> b!2818263 (= e!1782450 (and tp!899734 tp!899737))))

(declare-fun b!2818264 () Bool)

(declare-fun tp!899738 () Bool)

(assert (=> b!2818264 (= e!1782450 tp!899738)))

(assert (= (and b!2817875 ((_ is ElementMatch!8321) (reg!8650 (regex!4931 (h!38410 rules!4424))))) b!2818262))

(assert (= (and b!2817875 ((_ is Concat!13483) (reg!8650 (regex!4931 (h!38410 rules!4424))))) b!2818263))

(assert (= (and b!2817875 ((_ is Star!8321) (reg!8650 (regex!4931 (h!38410 rules!4424))))) b!2818264))

(assert (= (and b!2817875 ((_ is Union!8321) (reg!8650 (regex!4931 (h!38410 rules!4424))))) b!2818265))

(declare-fun b!2818266 () Bool)

(declare-fun e!1782451 () Bool)

(assert (=> b!2818266 (= e!1782451 tp_is_empty!14433)))

(declare-fun b!2818269 () Bool)

(declare-fun tp!899740 () Bool)

(declare-fun tp!899741 () Bool)

(assert (=> b!2818269 (= e!1782451 (and tp!899740 tp!899741))))

(assert (=> b!2817880 (= tp!899640 e!1782451)))

(declare-fun b!2818267 () Bool)

(declare-fun tp!899739 () Bool)

(declare-fun tp!899742 () Bool)

(assert (=> b!2818267 (= e!1782451 (and tp!899739 tp!899742))))

(declare-fun b!2818268 () Bool)

(declare-fun tp!899743 () Bool)

(assert (=> b!2818268 (= e!1782451 tp!899743)))

(assert (= (and b!2817880 ((_ is ElementMatch!8321) (regOne!17155 (regex!4931 (rule!7359 (h!38411 l!6581)))))) b!2818266))

(assert (= (and b!2817880 ((_ is Concat!13483) (regOne!17155 (regex!4931 (rule!7359 (h!38411 l!6581)))))) b!2818267))

(assert (= (and b!2817880 ((_ is Star!8321) (regOne!17155 (regex!4931 (rule!7359 (h!38411 l!6581)))))) b!2818268))

(assert (= (and b!2817880 ((_ is Union!8321) (regOne!17155 (regex!4931 (rule!7359 (h!38411 l!6581)))))) b!2818269))

(declare-fun b!2818270 () Bool)

(declare-fun e!1782452 () Bool)

(assert (=> b!2818270 (= e!1782452 tp_is_empty!14433)))

(declare-fun b!2818273 () Bool)

(declare-fun tp!899745 () Bool)

(declare-fun tp!899746 () Bool)

(assert (=> b!2818273 (= e!1782452 (and tp!899745 tp!899746))))

(assert (=> b!2817880 (= tp!899641 e!1782452)))

(declare-fun b!2818271 () Bool)

(declare-fun tp!899744 () Bool)

(declare-fun tp!899747 () Bool)

(assert (=> b!2818271 (= e!1782452 (and tp!899744 tp!899747))))

(declare-fun b!2818272 () Bool)

(declare-fun tp!899748 () Bool)

(assert (=> b!2818272 (= e!1782452 tp!899748)))

(assert (= (and b!2817880 ((_ is ElementMatch!8321) (regTwo!17155 (regex!4931 (rule!7359 (h!38411 l!6581)))))) b!2818270))

(assert (= (and b!2817880 ((_ is Concat!13483) (regTwo!17155 (regex!4931 (rule!7359 (h!38411 l!6581)))))) b!2818271))

(assert (= (and b!2817880 ((_ is Star!8321) (regTwo!17155 (regex!4931 (rule!7359 (h!38411 l!6581)))))) b!2818272))

(assert (= (and b!2817880 ((_ is Union!8321) (regTwo!17155 (regex!4931 (rule!7359 (h!38411 l!6581)))))) b!2818273))

(declare-fun b!2818276 () Bool)

(declare-fun b_free!80433 () Bool)

(declare-fun b_next!81137 () Bool)

(assert (=> b!2818276 (= b_free!80433 (not b_next!81137))))

(declare-fun tp!899751 () Bool)

(declare-fun b_and!205771 () Bool)

(assert (=> b!2818276 (= tp!899751 b_and!205771)))

(declare-fun b_free!80435 () Bool)

(declare-fun b_next!81139 () Bool)

(assert (=> b!2818276 (= b_free!80435 (not b_next!81139))))

(declare-fun tb!153721 () Bool)

(declare-fun t!230255 () Bool)

(assert (=> (and b!2818276 (= (toChars!6800 (transformation!4931 (h!38410 (t!230197 (t!230197 rules!4424))))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581))))) t!230255) tb!153721))

(declare-fun result!191346 () Bool)

(assert (= result!191346 result!191290))

(assert (=> b!2817682 t!230255))

(declare-fun tb!153723 () Bool)

(declare-fun t!230257 () Bool)

(assert (=> (and b!2818276 (= (toChars!6800 (transformation!4931 (h!38410 (t!230197 (t!230197 rules!4424))))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581)))))) t!230257) tb!153723))

(declare-fun result!191348 () Bool)

(assert (= result!191348 result!191326))

(assert (=> b!2817992 t!230257))

(assert (=> d!818487 t!230257))

(declare-fun b_and!205773 () Bool)

(declare-fun tp!899752 () Bool)

(assert (=> b!2818276 (= tp!899752 (and (=> t!230255 result!191346) (=> t!230257 result!191348) b_and!205773))))

(declare-fun e!1782454 () Bool)

(assert (=> b!2818276 (= e!1782454 (and tp!899751 tp!899752))))

(declare-fun tp!899750 () Bool)

(declare-fun e!1782456 () Bool)

(declare-fun b!2818275 () Bool)

(assert (=> b!2818275 (= e!1782456 (and tp!899750 (inv!44902 (tag!5435 (h!38410 (t!230197 (t!230197 rules!4424))))) (inv!44905 (transformation!4931 (h!38410 (t!230197 (t!230197 rules!4424))))) e!1782454))))

(declare-fun b!2818274 () Bool)

(declare-fun e!1782455 () Bool)

(declare-fun tp!899749 () Bool)

(assert (=> b!2818274 (= e!1782455 (and e!1782456 tp!899749))))

(assert (=> b!2817837 (= tp!899605 e!1782455)))

(assert (= b!2818275 b!2818276))

(assert (= b!2818274 b!2818275))

(assert (= (and b!2817837 ((_ is Cons!32990) (t!230197 (t!230197 rules!4424)))) b!2818274))

(declare-fun m!3249201 () Bool)

(assert (=> b!2818275 m!3249201))

(declare-fun m!3249203 () Bool)

(assert (=> b!2818275 m!3249203))

(declare-fun b!2818279 () Bool)

(declare-fun e!1782459 () Bool)

(assert (=> b!2818279 (= e!1782459 true)))

(declare-fun b!2818278 () Bool)

(declare-fun e!1782458 () Bool)

(assert (=> b!2818278 (= e!1782458 e!1782459)))

(declare-fun b!2818277 () Bool)

(declare-fun e!1782457 () Bool)

(assert (=> b!2818277 (= e!1782457 e!1782458)))

(assert (=> b!2817781 e!1782457))

(assert (= b!2818278 b!2818279))

(assert (= b!2818277 b!2818278))

(assert (= (and b!2817781 ((_ is Cons!32990) (t!230197 rules!4424))) b!2818277))

(assert (=> b!2818279 (< (dynLambda!13770 order!17463 (toValue!6941 (transformation!4931 (h!38410 (t!230197 rules!4424))))) (dynLambda!13771 order!17465 lambda!103408))))

(assert (=> b!2818279 (< (dynLambda!13772 order!17467 (toChars!6800 (transformation!4931 (h!38410 (t!230197 rules!4424))))) (dynLambda!13771 order!17465 lambda!103408))))

(declare-fun b!2818280 () Bool)

(declare-fun e!1782460 () Bool)

(assert (=> b!2818280 (= e!1782460 tp_is_empty!14433)))

(declare-fun b!2818283 () Bool)

(declare-fun tp!899754 () Bool)

(declare-fun tp!899755 () Bool)

(assert (=> b!2818283 (= e!1782460 (and tp!899754 tp!899755))))

(assert (=> b!2817876 (= tp!899635 e!1782460)))

(declare-fun b!2818281 () Bool)

(declare-fun tp!899753 () Bool)

(declare-fun tp!899756 () Bool)

(assert (=> b!2818281 (= e!1782460 (and tp!899753 tp!899756))))

(declare-fun b!2818282 () Bool)

(declare-fun tp!899757 () Bool)

(assert (=> b!2818282 (= e!1782460 tp!899757)))

(assert (= (and b!2817876 ((_ is ElementMatch!8321) (regOne!17155 (regex!4931 (h!38410 rules!4424))))) b!2818280))

(assert (= (and b!2817876 ((_ is Concat!13483) (regOne!17155 (regex!4931 (h!38410 rules!4424))))) b!2818281))

(assert (= (and b!2817876 ((_ is Star!8321) (regOne!17155 (regex!4931 (h!38410 rules!4424))))) b!2818282))

(assert (= (and b!2817876 ((_ is Union!8321) (regOne!17155 (regex!4931 (h!38410 rules!4424))))) b!2818283))

(declare-fun b!2818284 () Bool)

(declare-fun e!1782461 () Bool)

(assert (=> b!2818284 (= e!1782461 tp_is_empty!14433)))

(declare-fun b!2818287 () Bool)

(declare-fun tp!899759 () Bool)

(declare-fun tp!899760 () Bool)

(assert (=> b!2818287 (= e!1782461 (and tp!899759 tp!899760))))

(assert (=> b!2817876 (= tp!899636 e!1782461)))

(declare-fun b!2818285 () Bool)

(declare-fun tp!899758 () Bool)

(declare-fun tp!899761 () Bool)

(assert (=> b!2818285 (= e!1782461 (and tp!899758 tp!899761))))

(declare-fun b!2818286 () Bool)

(declare-fun tp!899762 () Bool)

(assert (=> b!2818286 (= e!1782461 tp!899762)))

(assert (= (and b!2817876 ((_ is ElementMatch!8321) (regTwo!17155 (regex!4931 (h!38410 rules!4424))))) b!2818284))

(assert (= (and b!2817876 ((_ is Concat!13483) (regTwo!17155 (regex!4931 (h!38410 rules!4424))))) b!2818285))

(assert (= (and b!2817876 ((_ is Star!8321) (regTwo!17155 (regex!4931 (h!38410 rules!4424))))) b!2818286))

(assert (= (and b!2817876 ((_ is Union!8321) (regTwo!17155 (regex!4931 (h!38410 rules!4424))))) b!2818287))

(declare-fun b!2818288 () Bool)

(declare-fun e!1782462 () Bool)

(assert (=> b!2818288 (= e!1782462 tp_is_empty!14433)))

(declare-fun b!2818291 () Bool)

(declare-fun tp!899764 () Bool)

(declare-fun tp!899765 () Bool)

(assert (=> b!2818291 (= e!1782462 (and tp!899764 tp!899765))))

(assert (=> b!2817858 (= tp!899623 e!1782462)))

(declare-fun b!2818289 () Bool)

(declare-fun tp!899763 () Bool)

(declare-fun tp!899766 () Bool)

(assert (=> b!2818289 (= e!1782462 (and tp!899763 tp!899766))))

(declare-fun b!2818290 () Bool)

(declare-fun tp!899767 () Bool)

(assert (=> b!2818290 (= e!1782462 tp!899767)))

(assert (= (and b!2817858 ((_ is ElementMatch!8321) (regex!4931 (rule!7359 (h!38411 (t!230198 l!6581)))))) b!2818288))

(assert (= (and b!2817858 ((_ is Concat!13483) (regex!4931 (rule!7359 (h!38411 (t!230198 l!6581)))))) b!2818289))

(assert (= (and b!2817858 ((_ is Star!8321) (regex!4931 (rule!7359 (h!38411 (t!230198 l!6581)))))) b!2818290))

(assert (= (and b!2817858 ((_ is Union!8321) (regex!4931 (rule!7359 (h!38411 (t!230198 l!6581)))))) b!2818291))

(declare-fun b!2818294 () Bool)

(declare-fun e!1782465 () Bool)

(assert (=> b!2818294 (= e!1782465 true)))

(declare-fun b!2818293 () Bool)

(declare-fun e!1782464 () Bool)

(assert (=> b!2818293 (= e!1782464 e!1782465)))

(declare-fun b!2818292 () Bool)

(declare-fun e!1782463 () Bool)

(assert (=> b!2818292 (= e!1782463 e!1782464)))

(assert (=> b!2817881 e!1782463))

(assert (= b!2818293 b!2818294))

(assert (= b!2818292 b!2818293))

(assert (= (and b!2817881 ((_ is Cons!32990) (t!230197 (t!230197 rules!4424)))) b!2818292))

(assert (=> b!2818294 (< (dynLambda!13770 order!17463 (toValue!6941 (transformation!4931 (h!38410 (t!230197 (t!230197 rules!4424)))))) (dynLambda!13771 order!17465 lambda!103393))))

(assert (=> b!2818294 (< (dynLambda!13772 order!17467 (toChars!6800 (transformation!4931 (h!38410 (t!230197 (t!230197 rules!4424)))))) (dynLambda!13771 order!17465 lambda!103393))))

(declare-fun tp!899774 () Bool)

(declare-fun tp!899775 () Bool)

(declare-fun b!2818303 () Bool)

(declare-fun e!1782471 () Bool)

(assert (=> b!2818303 (= e!1782471 (and (inv!44907 (left!24917 (c!456795 (dynLambda!13773 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (value!158853 (h!38411 l!6581)))))) tp!899774 (inv!44907 (right!25247 (c!456795 (dynLambda!13773 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (value!158853 (h!38411 l!6581)))))) tp!899775))))

(declare-fun b!2818305 () Bool)

(declare-fun e!1782470 () Bool)

(declare-fun tp!899776 () Bool)

(assert (=> b!2818305 (= e!1782470 tp!899776)))

(declare-fun b!2818304 () Bool)

(declare-fun inv!44913 (IArray!20479) Bool)

(assert (=> b!2818304 (= e!1782471 (and (inv!44913 (xs!13349 (c!456795 (dynLambda!13773 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (value!158853 (h!38411 l!6581)))))) e!1782470))))

(assert (=> b!2817688 (= tp!899593 (and (inv!44907 (c!456795 (dynLambda!13773 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (value!158853 (h!38411 l!6581))))) e!1782471))))

(assert (= (and b!2817688 ((_ is Node!10237) (c!456795 (dynLambda!13773 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (value!158853 (h!38411 l!6581)))))) b!2818303))

(assert (= b!2818304 b!2818305))

(assert (= (and b!2817688 ((_ is Leaf!15594) (c!456795 (dynLambda!13773 (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (value!158853 (h!38411 l!6581)))))) b!2818304))

(declare-fun m!3249205 () Bool)

(assert (=> b!2818303 m!3249205))

(declare-fun m!3249207 () Bool)

(assert (=> b!2818303 m!3249207))

(declare-fun m!3249209 () Bool)

(assert (=> b!2818304 m!3249209))

(assert (=> b!2817688 m!3248463))

(declare-fun b!2818306 () Bool)

(declare-fun e!1782472 () Bool)

(declare-fun tp!899777 () Bool)

(assert (=> b!2818306 (= e!1782472 (and tp_is_empty!14433 tp!899777))))

(assert (=> b!2817857 (= tp!899622 e!1782472)))

(assert (= (and b!2817857 ((_ is Cons!32989) (originalCharacters!5663 (h!38411 (t!230198 l!6581))))) b!2818306))

(declare-fun b!2818309 () Bool)

(declare-fun e!1782475 () Bool)

(assert (=> b!2818309 (= e!1782475 true)))

(declare-fun b!2818308 () Bool)

(declare-fun e!1782474 () Bool)

(assert (=> b!2818308 (= e!1782474 e!1782475)))

(declare-fun b!2818307 () Bool)

(declare-fun e!1782473 () Bool)

(assert (=> b!2818307 (= e!1782473 e!1782474)))

(assert (=> b!2817702 e!1782473))

(assert (= b!2818308 b!2818309))

(assert (= b!2818307 b!2818308))

(assert (= (and b!2817702 ((_ is Cons!32990) (t!230197 rules!4424))) b!2818307))

(assert (=> b!2818309 (< (dynLambda!13770 order!17463 (toValue!6941 (transformation!4931 (h!38410 (t!230197 rules!4424))))) (dynLambda!13771 order!17465 lambda!103397))))

(assert (=> b!2818309 (< (dynLambda!13772 order!17467 (toChars!6800 (transformation!4931 (h!38410 (t!230197 rules!4424))))) (dynLambda!13771 order!17465 lambda!103397))))

(declare-fun b!2818310 () Bool)

(declare-fun e!1782476 () Bool)

(declare-fun tp!899778 () Bool)

(assert (=> b!2818310 (= e!1782476 (and tp_is_empty!14433 tp!899778))))

(assert (=> b!2817828 (= tp!899596 e!1782476)))

(assert (= (and b!2817828 ((_ is Cons!32989) (t!230196 (originalCharacters!5663 (h!38411 l!6581))))) b!2818310))

(declare-fun b_lambda!84273 () Bool)

(assert (= b_lambda!84249 (or (and b!2817663 b_free!80411 (= (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581))))))) (and b!2818257 b_free!80431 (= (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 (t!230198 l!6581)))))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581))))))) (and b!2817664 b_free!80407 (= (toChars!6800 (transformation!4931 (h!38410 rules!4424))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581))))))) (and b!2818276 b_free!80435 (= (toChars!6800 (transformation!4931 (h!38410 (t!230197 (t!230197 rules!4424))))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581))))))) (and b!2817839 b_free!80415 (= (toChars!6800 (transformation!4931 (h!38410 (t!230197 rules!4424)))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581))))))) (and b!2817859 b_free!80419) b_lambda!84273)))

(declare-fun b_lambda!84275 () Bool)

(assert (= b_lambda!84267 (or b!2817657 b_lambda!84275)))

(declare-fun bs!517173 () Bool)

(declare-fun d!818507 () Bool)

(assert (= bs!517173 (and d!818507 b!2817657)))

(assert (=> bs!517173 (= (dynLambda!13774 lambda!103393 (h!38411 l!6581)) (rulesProduceIndividualToken!2062 Lexer!4520 rules!4424 (h!38411 l!6581)))))

(declare-fun m!3249211 () Bool)

(assert (=> bs!517173 m!3249211))

(assert (=> b!2818198 d!818507))

(declare-fun b_lambda!84277 () Bool)

(assert (= b_lambda!84255 (or b!2817657 b_lambda!84277)))

(declare-fun bs!517174 () Bool)

(declare-fun d!818509 () Bool)

(assert (= bs!517174 (and d!818509 b!2817657)))

(assert (=> bs!517174 (= (dynLambda!13774 lambda!103393 (h!38411 (t!230198 lt!1006136))) (rulesProduceIndividualToken!2062 Lexer!4520 rules!4424 (h!38411 (t!230198 lt!1006136))))))

(declare-fun m!3249213 () Bool)

(assert (=> bs!517174 m!3249213))

(assert (=> b!2818049 d!818509))

(declare-fun b_lambda!84279 () Bool)

(assert (= b_lambda!84265 (or d!818239 b_lambda!84279)))

(declare-fun bs!517175 () Bool)

(declare-fun d!818511 () Bool)

(assert (= bs!517175 (and d!818511 d!818239)))

(assert (=> bs!517175 (= (dynLambda!13774 lambda!103397 (h!38411 (t!230198 lt!1006136))) (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 (t!230198 lt!1006136))))))

(assert (=> bs!517175 m!3248483))

(assert (=> b!2818196 d!818511))

(declare-fun b_lambda!84281 () Bool)

(assert (= b_lambda!84247 (or d!818241 b_lambda!84281)))

(declare-fun bs!517176 () Bool)

(declare-fun d!818513 () Bool)

(assert (= bs!517176 (and d!818513 d!818241)))

(assert (=> bs!517176 (= (dynLambda!13774 lambda!103407 (h!38411 (list!12378 (seqFromList!3234 lt!1006136)))) (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 (list!12378 (seqFromList!3234 lt!1006136)))))))

(assert (=> bs!517176 m!3248755))

(assert (=> b!2817990 d!818513))

(declare-fun b_lambda!84283 () Bool)

(assert (= b_lambda!84253 (or d!818273 b_lambda!84283)))

(declare-fun bs!517177 () Bool)

(declare-fun d!818515 () Bool)

(assert (= bs!517177 (and d!818515 d!818273)))

(assert (=> bs!517177 (= (dynLambda!13774 lambda!103408 (h!38411 lt!1006136)) (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 lt!1006136)))))

(assert (=> bs!517177 m!3248433))

(assert (=> b!2818047 d!818515))

(declare-fun b_lambda!84285 () Bool)

(assert (= b_lambda!84269 (or (and b!2817663 b_free!80411 (= (toChars!6800 (transformation!4931 (rule!7359 (h!38411 l!6581)))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581))))))) (and b!2818257 b_free!80431 (= (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 (t!230198 l!6581)))))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581))))))) (and b!2817664 b_free!80407 (= (toChars!6800 (transformation!4931 (h!38410 rules!4424))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581))))))) (and b!2818276 b_free!80435 (= (toChars!6800 (transformation!4931 (h!38410 (t!230197 (t!230197 rules!4424))))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581))))))) (and b!2817839 b_free!80415 (= (toChars!6800 (transformation!4931 (h!38410 (t!230197 rules!4424)))) (toChars!6800 (transformation!4931 (rule!7359 (h!38411 (t!230198 l!6581))))))) (and b!2817859 b_free!80419) b_lambda!84285)))

(declare-fun b_lambda!84287 () Bool)

(assert (= b_lambda!84251 (or d!818235 b_lambda!84287)))

(declare-fun bs!517178 () Bool)

(declare-fun d!818517 () Bool)

(assert (= bs!517178 (and d!818517 d!818235)))

(assert (=> bs!517178 (= (dynLambda!13774 lambda!103396 (h!38411 l!6581)) (rulesProduceIndividualToken!2062 thiss!27755 rules!4424 (h!38411 l!6581)))))

(assert (=> bs!517178 m!3248477))

(assert (=> b!2818041 d!818517))

(check-sat (not b_lambda!84281) (not b!2818264) (not b_lambda!84287) (not b!2818194) (not b!2818286) (not b!2818253) (not b!2818040) (not b_lambda!84237) (not b!2818306) (not b!2818007) (not b!2818048) (not b_next!81123) (not b!2818193) (not b!2818287) (not d!818335) (not d!818325) (not b!2818290) (not b!2818010) (not b!2818238) (not b!2817991) (not b!2818273) (not b!2818028) (not b!2818175) (not b!2818303) (not b!2818053) (not b!2818235) (not b!2818252) (not d!818469) (not b!2818052) (not b!2818009) (not b_next!81117) (not d!818313) (not d!818349) (not d!818319) b_and!205715 (not d!818503) (not b!2818256) (not b!2818226) (not b!2818199) (not d!818361) (not b!2817989) b_and!205707 (not b!2818237) (not b!2818021) (not d!818487) (not d!818485) (not d!818465) (not b!2817996) (not b!2818050) (not b!2818008) (not b!2818162) (not d!818317) (not b!2818277) (not b!2818042) (not b!2818202) (not b!2818180) (not b!2818205) (not d!818367) b_and!205773 (not b!2818307) (not b!2818206) (not b!2818169) (not b!2818247) (not b!2818187) b_and!205755 (not b!2818233) (not b!2818039) (not b!2818240) (not bs!517178) (not b!2817995) (not b_lambda!84275) (not b!2818168) (not b!2818161) (not b!2818282) (not b!2817993) (not b_next!81121) (not b!2818269) (not b_next!81115) (not b!2818051) (not b!2817994) (not b_next!81109) b_and!205753 (not b!2818005) (not b_lambda!84277) (not b!2818230) tp_is_empty!14433 (not d!818345) (not b!2818197) (not d!818471) (not b!2818255) (not b!2818195) (not b!2818034) (not b!2818274) (not b!2817992) (not b!2818177) (not b!2817688) (not b!2817997) (not d!818315) (not b!2818272) (not b!2818163) (not b!2818271) (not b_next!81135) (not d!818369) (not b!2818248) (not b!2818012) (not b_next!81139) (not b!2818243) (not b!2818305) (not d!818461) (not b!2818292) (not d!818457) (not b!2818227) (not d!818343) (not d!818481) (not b!2818259) (not b!2818275) (not d!818347) (not b_lambda!84285) (not b!2818026) (not b!2818239) (not b!2818268) (not b!2818260) (not b!2818178) (not b!2818285) (not b!2818289) (not d!818363) (not b_lambda!84235) (not d!818451) (not b!2818281) (not d!818339) (not d!818463) b_and!205769 (not b!2818029) (not b!2818254) (not d!818473) (not b_lambda!84273) (not b!2818186) (not bs!517175) (not b_next!81113) (not d!818447) (not b_next!81119) (not b_next!81111) (not d!818331) (not bs!517173) (not b!2818164) b_and!205757 (not b!2818249) (not b!2818291) (not b!2818031) (not b!2818265) (not b!2818006) (not d!818505) b_and!205751 b_and!205703 (not b!2818283) (not bs!517176) b_and!205719 (not bs!517174) (not b_next!81137) (not b!2818011) (not b!2818023) (not tb!153701) (not d!818459) (not d!818333) (not b!2818261) (not b!2818204) (not b!2818185) (not d!818445) (not d!818355) (not b_lambda!84279) b_and!205767 (not b!2818225) (not b!2818267) (not b!2818251) (not b_next!81133) (not d!818499) (not b!2818304) (not d!818501) (not b!2818310) (not b_lambda!84283) (not d!818489) (not b!2818263) (not d!818321) (not b!2818231) (not b!2818179) b_and!205771 (not b!2818234) (not bs!517177) (not b!2818229) (not d!818467))
(check-sat (not b_next!81123) (not b_next!81117) b_and!205715 b_and!205707 b_and!205773 b_and!205755 (not b_next!81121) (not b_next!81135) (not b_next!81139) b_and!205769 (not b_next!81137) b_and!205767 (not b_next!81133) b_and!205771 (not b_next!81115) (not b_next!81109) b_and!205753 (not b_next!81113) (not b_next!81119) (not b_next!81111) b_and!205757 b_and!205751 b_and!205703 b_and!205719)
