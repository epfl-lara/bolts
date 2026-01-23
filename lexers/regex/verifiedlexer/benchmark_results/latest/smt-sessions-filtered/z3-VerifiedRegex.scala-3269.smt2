; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187942 () Bool)

(assert start!187942)

(declare-fun b!1875060 () Bool)

(declare-fun b_free!52161 () Bool)

(declare-fun b_next!52865 () Bool)

(assert (=> b!1875060 (= b_free!52161 (not b_next!52865))))

(declare-fun tp!534467 () Bool)

(declare-fun b_and!144447 () Bool)

(assert (=> b!1875060 (= tp!534467 b_and!144447)))

(declare-fun b_free!52163 () Bool)

(declare-fun b_next!52867 () Bool)

(assert (=> b!1875060 (= b_free!52163 (not b_next!52867))))

(declare-fun tp!534469 () Bool)

(declare-fun b_and!144449 () Bool)

(assert (=> b!1875060 (= tp!534469 b_and!144449)))

(declare-fun b!1875054 () Bool)

(declare-fun e!1196703 () Bool)

(declare-fun e!1196699 () Bool)

(assert (=> b!1875054 (= e!1196703 (not e!1196699))))

(declare-fun res!838567 () Bool)

(assert (=> b!1875054 (=> res!838567 e!1196699)))

(declare-datatypes ((LexerInterface!3320 0))(
  ( (LexerInterfaceExt!3317 (__x!13106 Int)) (Lexer!3318) )
))
(declare-fun thiss!13718 () LexerInterface!3320)

(declare-fun from!845 () Int)

(declare-datatypes ((List!20961 0))(
  ( (Nil!20879) (Cons!20879 (h!26280 (_ BitVec 16)) (t!173178 List!20961)) )
))
(declare-datatypes ((TokenValue!3834 0))(
  ( (FloatLiteralValue!7668 (text!27283 List!20961)) (TokenValueExt!3833 (__x!13107 Int)) (Broken!19170 (value!116832 List!20961)) (Object!3915) (End!3834) (Def!3834) (Underscore!3834) (Match!3834) (Else!3834) (Error!3834) (Case!3834) (If!3834) (Extends!3834) (Abstract!3834) (Class!3834) (Val!3834) (DelimiterValue!7668 (del!3894 List!20961)) (KeywordValue!3840 (value!116833 List!20961)) (CommentValue!7668 (value!116834 List!20961)) (WhitespaceValue!7668 (value!116835 List!20961)) (IndentationValue!3834 (value!116836 List!20961)) (String!24119) (Int32!3834) (Broken!19171 (value!116837 List!20961)) (Boolean!3835) (Unit!35405) (OperatorValue!3837 (op!3894 List!20961)) (IdentifierValue!7668 (value!116838 List!20961)) (IdentifierValue!7669 (value!116839 List!20961)) (WhitespaceValue!7669 (value!116840 List!20961)) (True!7668) (False!7668) (Broken!19172 (value!116841 List!20961)) (Broken!19173 (value!116842 List!20961)) (True!7669) (RightBrace!3834) (RightBracket!3834) (Colon!3834) (Null!3834) (Comma!3834) (LeftBracket!3834) (False!7669) (LeftBrace!3834) (ImaginaryLiteralValue!3834 (text!27284 List!20961)) (StringLiteralValue!11502 (value!116843 List!20961)) (EOFValue!3834 (value!116844 List!20961)) (IdentValue!3834 (value!116845 List!20961)) (DelimiterValue!7669 (value!116846 List!20961)) (DedentValue!3834 (value!116847 List!20961)) (NewLineValue!3834 (value!116848 List!20961)) (IntegerValue!11502 (value!116849 (_ BitVec 32)) (text!27285 List!20961)) (IntegerValue!11503 (value!116850 Int) (text!27286 List!20961)) (Times!3834) (Or!3834) (Equal!3834) (Minus!3834) (Broken!19174 (value!116851 List!20961)) (And!3834) (Div!3834) (LessEqual!3834) (Mod!3834) (Concat!8941) (Not!3834) (Plus!3834) (SpaceValue!3834 (value!116852 List!20961)) (IntegerValue!11504 (value!116853 Int) (text!27287 List!20961)) (StringLiteralValue!11503 (text!27288 List!20961)) (FloatLiteralValue!7669 (text!27289 List!20961)) (BytesLiteralValue!3834 (value!116854 List!20961)) (CommentValue!7669 (value!116855 List!20961)) (StringLiteralValue!11504 (value!116856 List!20961)) (ErrorTokenValue!3834 (msg!3895 List!20961)) )
))
(declare-datatypes ((C!10372 0))(
  ( (C!10373 (val!6074 Int)) )
))
(declare-datatypes ((Regex!5107 0))(
  ( (ElementMatch!5107 (c!305492 C!10372)) (Concat!8942 (regOne!10726 Regex!5107) (regTwo!10726 Regex!5107)) (EmptyExpr!5107) (Star!5107 (reg!5436 Regex!5107)) (EmptyLang!5107) (Union!5107 (regOne!10727 Regex!5107) (regTwo!10727 Regex!5107)) )
))
(declare-datatypes ((List!20962 0))(
  ( (Nil!20880) (Cons!20880 (h!26281 C!10372) (t!173179 List!20962)) )
))
(declare-datatypes ((IArray!13855 0))(
  ( (IArray!13856 (innerList!6985 List!20962)) )
))
(declare-datatypes ((Conc!6925 0))(
  ( (Node!6925 (left!16780 Conc!6925) (right!17110 Conc!6925) (csize!14080 Int) (cheight!7136 Int)) (Leaf!10195 (xs!9809 IArray!13855) (csize!14081 Int)) (Empty!6925) )
))
(declare-datatypes ((BalanceConc!13666 0))(
  ( (BalanceConc!13667 (c!305493 Conc!6925)) )
))
(declare-datatypes ((TokenValueInjection!7252 0))(
  ( (TokenValueInjection!7253 (toValue!5295 Int) (toChars!5154 Int)) )
))
(declare-datatypes ((String!24120 0))(
  ( (String!24121 (value!116857 String)) )
))
(declare-datatypes ((Rule!7196 0))(
  ( (Rule!7197 (regex!3698 Regex!5107) (tag!4112 String!24120) (isSeparator!3698 Bool) (transformation!3698 TokenValueInjection!7252)) )
))
(declare-datatypes ((Token!6948 0))(
  ( (Token!6949 (value!116858 TokenValue!3834) (rule!5891 Rule!7196) (size!16559 Int) (originalCharacters!4505 List!20962)) )
))
(declare-fun separatorToken!84 () Token!6948)

(declare-datatypes ((List!20963 0))(
  ( (Nil!20881) (Cons!20881 (h!26282 Token!6948) (t!173180 List!20963)) )
))
(declare-datatypes ((IArray!13857 0))(
  ( (IArray!13858 (innerList!6986 List!20963)) )
))
(declare-datatypes ((Conc!6926 0))(
  ( (Node!6926 (left!16781 Conc!6926) (right!17111 Conc!6926) (csize!14082 Int) (cheight!7137 Int)) (Leaf!10196 (xs!9810 IArray!13857) (csize!14083 Int)) (Empty!6926) )
))
(declare-datatypes ((BalanceConc!13668 0))(
  ( (BalanceConc!13669 (c!305494 Conc!6926)) )
))
(declare-fun v!6352 () BalanceConc!13668)

(declare-fun lt!720480 () BalanceConc!13668)

(declare-fun lt!720475 () List!20963)

(declare-fun list!8512 (BalanceConc!13668) List!20963)

(declare-fun withSeparatorTokenInner!2 (LexerInterface!3320 BalanceConc!13668 Token!6948 Int BalanceConc!13668) BalanceConc!13668)

(declare-fun ++!5653 (List!20963 List!20963) List!20963)

(assert (=> b!1875054 (= res!838567 (not (= (list!8512 (withSeparatorTokenInner!2 thiss!13718 v!6352 separatorToken!84 (+ 1 from!845) lt!720480)) (++!5653 (list!8512 lt!720480) lt!720475))))))

(declare-fun acc!408 () BalanceConc!13668)

(declare-fun lt!720476 () Token!6948)

(declare-fun ++!5654 (BalanceConc!13668 BalanceConc!13668) BalanceConc!13668)

(declare-fun singletonSeq!1813 (Token!6948) BalanceConc!13668)

(assert (=> b!1875054 (= lt!720480 (++!5654 acc!408 (++!5654 (singletonSeq!1813 lt!720476) (singletonSeq!1813 separatorToken!84))))))

(declare-fun lt!720474 () List!20963)

(declare-fun lt!720470 () List!20963)

(assert (=> b!1875054 (= (++!5653 (++!5653 lt!720474 lt!720470) lt!720475) (++!5653 lt!720474 (++!5653 lt!720470 lt!720475)))))

(declare-datatypes ((Unit!35406 0))(
  ( (Unit!35407) )
))
(declare-fun lt!720471 () Unit!35406)

(declare-fun lemmaConcatAssociativity!1109 (List!20963 List!20963 List!20963) Unit!35406)

(assert (=> b!1875054 (= lt!720471 (lemmaConcatAssociativity!1109 lt!720474 lt!720470 lt!720475))))

(declare-fun lt!720478 () List!20963)

(declare-fun withSeparatorTokenList!106 (LexerInterface!3320 List!20963 Token!6948) List!20963)

(assert (=> b!1875054 (= lt!720475 (withSeparatorTokenList!106 thiss!13718 lt!720478 separatorToken!84))))

(assert (=> b!1875054 (= lt!720470 (Cons!20881 lt!720476 (Cons!20881 separatorToken!84 Nil!20881)))))

(declare-fun apply!5496 (BalanceConc!13668 Int) Token!6948)

(assert (=> b!1875054 (= lt!720476 (apply!5496 v!6352 from!845))))

(assert (=> b!1875054 (= lt!720474 (list!8512 acc!408))))

(declare-fun lt!720473 () List!20963)

(declare-fun tail!2898 (List!20963) List!20963)

(assert (=> b!1875054 (= (tail!2898 lt!720473) lt!720478)))

(declare-fun lt!720481 () List!20963)

(declare-fun drop!1018 (List!20963 Int) List!20963)

(assert (=> b!1875054 (= lt!720478 (drop!1018 lt!720481 (+ 1 from!845)))))

(declare-fun lt!720477 () Unit!35406)

(declare-fun lemmaDropTail!636 (List!20963 Int) Unit!35406)

(assert (=> b!1875054 (= lt!720477 (lemmaDropTail!636 lt!720481 from!845))))

(declare-fun head!4369 (List!20963) Token!6948)

(declare-fun apply!5497 (List!20963 Int) Token!6948)

(assert (=> b!1875054 (= (head!4369 lt!720473) (apply!5497 lt!720481 from!845))))

(assert (=> b!1875054 (= lt!720473 (drop!1018 lt!720481 from!845))))

(declare-fun lt!720479 () Unit!35406)

(declare-fun lemmaDropApply!656 (List!20963 Int) Unit!35406)

(assert (=> b!1875054 (= lt!720479 (lemmaDropApply!656 lt!720481 from!845))))

(assert (=> b!1875054 (= lt!720481 (list!8512 v!6352))))

(declare-fun b!1875055 () Bool)

(declare-fun e!1196701 () Bool)

(declare-fun e!1196697 () Bool)

(declare-fun tp!534468 () Bool)

(declare-fun inv!27729 (String!24120) Bool)

(declare-fun inv!27734 (TokenValueInjection!7252) Bool)

(assert (=> b!1875055 (= e!1196697 (and tp!534468 (inv!27729 (tag!4112 (rule!5891 separatorToken!84))) (inv!27734 (transformation!3698 (rule!5891 separatorToken!84))) e!1196701))))

(declare-fun b!1875056 () Bool)

(declare-fun e!1196698 () Bool)

(declare-fun tp!534466 () Bool)

(declare-fun inv!27735 (Conc!6926) Bool)

(assert (=> b!1875056 (= e!1196698 (and (inv!27735 (c!305494 acc!408)) tp!534466))))

(declare-fun b!1875057 () Bool)

(declare-fun e!1196705 () Bool)

(declare-fun tp!534465 () Bool)

(assert (=> b!1875057 (= e!1196705 (and (inv!27735 (c!305494 v!6352)) tp!534465))))

(declare-fun b!1875058 () Bool)

(declare-fun e!1196702 () Bool)

(assert (=> b!1875058 (= e!1196702 e!1196703)))

(declare-fun res!838569 () Bool)

(assert (=> b!1875058 (=> (not res!838569) (not e!1196703))))

(declare-fun lt!720472 () Int)

(assert (=> b!1875058 (= res!838569 (and (<= from!845 lt!720472) (isSeparator!3698 (rule!5891 separatorToken!84)) (< from!845 lt!720472)))))

(declare-fun size!16560 (BalanceConc!13668) Int)

(assert (=> b!1875058 (= lt!720472 (size!16560 v!6352))))

(declare-fun b!1875059 () Bool)

(assert (=> b!1875059 (= e!1196699 (<= 0 from!845))))

(assert (=> b!1875060 (= e!1196701 (and tp!534467 tp!534469))))

(declare-fun b!1875061 () Bool)

(declare-fun e!1196700 () Bool)

(declare-fun tp!534464 () Bool)

(declare-fun inv!21 (TokenValue!3834) Bool)

(assert (=> b!1875061 (= e!1196700 (and (inv!21 (value!116858 separatorToken!84)) e!1196697 tp!534464))))

(declare-fun res!838568 () Bool)

(assert (=> start!187942 (=> (not res!838568) (not e!1196702))))

(get-info :version)

(assert (=> start!187942 (= res!838568 (and ((_ is Lexer!3318) thiss!13718) (>= from!845 0)))))

(assert (=> start!187942 e!1196702))

(assert (=> start!187942 true))

(declare-fun inv!27736 (BalanceConc!13668) Bool)

(assert (=> start!187942 (and (inv!27736 acc!408) e!1196698)))

(assert (=> start!187942 (and (inv!27736 v!6352) e!1196705)))

(declare-fun inv!27737 (Token!6948) Bool)

(assert (=> start!187942 (and (inv!27737 separatorToken!84) e!1196700)))

(assert (= (and start!187942 res!838568) b!1875058))

(assert (= (and b!1875058 res!838569) b!1875054))

(assert (= (and b!1875054 (not res!838567)) b!1875059))

(assert (= start!187942 b!1875056))

(assert (= start!187942 b!1875057))

(assert (= b!1875055 b!1875060))

(assert (= b!1875061 b!1875055))

(assert (= start!187942 b!1875061))

(declare-fun m!2300301 () Bool)

(assert (=> b!1875056 m!2300301))

(declare-fun m!2300303 () Bool)

(assert (=> b!1875054 m!2300303))

(declare-fun m!2300305 () Bool)

(assert (=> b!1875054 m!2300305))

(declare-fun m!2300307 () Bool)

(assert (=> b!1875054 m!2300307))

(declare-fun m!2300309 () Bool)

(assert (=> b!1875054 m!2300309))

(declare-fun m!2300311 () Bool)

(assert (=> b!1875054 m!2300311))

(declare-fun m!2300313 () Bool)

(assert (=> b!1875054 m!2300313))

(declare-fun m!2300315 () Bool)

(assert (=> b!1875054 m!2300315))

(declare-fun m!2300317 () Bool)

(assert (=> b!1875054 m!2300317))

(declare-fun m!2300319 () Bool)

(assert (=> b!1875054 m!2300319))

(declare-fun m!2300321 () Bool)

(assert (=> b!1875054 m!2300321))

(assert (=> b!1875054 m!2300309))

(assert (=> b!1875054 m!2300303))

(declare-fun m!2300323 () Bool)

(assert (=> b!1875054 m!2300323))

(declare-fun m!2300325 () Bool)

(assert (=> b!1875054 m!2300325))

(declare-fun m!2300327 () Bool)

(assert (=> b!1875054 m!2300327))

(declare-fun m!2300329 () Bool)

(assert (=> b!1875054 m!2300329))

(declare-fun m!2300331 () Bool)

(assert (=> b!1875054 m!2300331))

(declare-fun m!2300333 () Bool)

(assert (=> b!1875054 m!2300333))

(assert (=> b!1875054 m!2300331))

(declare-fun m!2300335 () Bool)

(assert (=> b!1875054 m!2300335))

(assert (=> b!1875054 m!2300311))

(declare-fun m!2300337 () Bool)

(assert (=> b!1875054 m!2300337))

(declare-fun m!2300339 () Bool)

(assert (=> b!1875054 m!2300339))

(declare-fun m!2300341 () Bool)

(assert (=> b!1875054 m!2300341))

(assert (=> b!1875054 m!2300323))

(declare-fun m!2300343 () Bool)

(assert (=> b!1875054 m!2300343))

(declare-fun m!2300345 () Bool)

(assert (=> b!1875054 m!2300345))

(assert (=> b!1875054 m!2300345))

(declare-fun m!2300347 () Bool)

(assert (=> b!1875054 m!2300347))

(assert (=> b!1875054 m!2300307))

(declare-fun m!2300349 () Bool)

(assert (=> b!1875054 m!2300349))

(declare-fun m!2300351 () Bool)

(assert (=> start!187942 m!2300351))

(declare-fun m!2300353 () Bool)

(assert (=> start!187942 m!2300353))

(declare-fun m!2300355 () Bool)

(assert (=> start!187942 m!2300355))

(declare-fun m!2300357 () Bool)

(assert (=> b!1875061 m!2300357))

(declare-fun m!2300359 () Bool)

(assert (=> b!1875058 m!2300359))

(declare-fun m!2300361 () Bool)

(assert (=> b!1875057 m!2300361))

(declare-fun m!2300363 () Bool)

(assert (=> b!1875055 m!2300363))

(declare-fun m!2300365 () Bool)

(assert (=> b!1875055 m!2300365))

(check-sat (not start!187942) (not b!1875054) (not b_next!52865) (not b!1875058) b_and!144447 (not b_next!52867) b_and!144449 (not b!1875056) (not b!1875057) (not b!1875061) (not b!1875055))
(check-sat b_and!144449 b_and!144447 (not b_next!52865) (not b_next!52867))
