; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187946 () Bool)

(assert start!187946)

(declare-fun b!1875107 () Bool)

(declare-fun b_free!52169 () Bool)

(declare-fun b_next!52873 () Bool)

(assert (=> b!1875107 (= b_free!52169 (not b_next!52873))))

(declare-fun tp!534503 () Bool)

(declare-fun b_and!144455 () Bool)

(assert (=> b!1875107 (= tp!534503 b_and!144455)))

(declare-fun b_free!52171 () Bool)

(declare-fun b_next!52875 () Bool)

(assert (=> b!1875107 (= b_free!52171 (not b_next!52875))))

(declare-fun tp!534501 () Bool)

(declare-fun b_and!144457 () Bool)

(assert (=> b!1875107 (= tp!534501 b_and!144457)))

(declare-fun e!1196763 () Bool)

(assert (=> b!1875107 (= e!1196763 (and tp!534503 tp!534501))))

(declare-fun e!1196756 () Bool)

(declare-fun tp!534500 () Bool)

(declare-fun b!1875108 () Bool)

(declare-fun e!1196759 () Bool)

(declare-datatypes ((List!20967 0))(
  ( (Nil!20885) (Cons!20885 (h!26286 (_ BitVec 16)) (t!173184 List!20967)) )
))
(declare-datatypes ((TokenValue!3836 0))(
  ( (FloatLiteralValue!7672 (text!27297 List!20967)) (TokenValueExt!3835 (__x!13110 Int)) (Broken!19180 (value!116889 List!20967)) (Object!3917) (End!3836) (Def!3836) (Underscore!3836) (Match!3836) (Else!3836) (Error!3836) (Case!3836) (If!3836) (Extends!3836) (Abstract!3836) (Class!3836) (Val!3836) (DelimiterValue!7672 (del!3896 List!20967)) (KeywordValue!3842 (value!116890 List!20967)) (CommentValue!7672 (value!116891 List!20967)) (WhitespaceValue!7672 (value!116892 List!20967)) (IndentationValue!3836 (value!116893 List!20967)) (String!24129) (Int32!3836) (Broken!19181 (value!116894 List!20967)) (Boolean!3837) (Unit!35411) (OperatorValue!3839 (op!3896 List!20967)) (IdentifierValue!7672 (value!116895 List!20967)) (IdentifierValue!7673 (value!116896 List!20967)) (WhitespaceValue!7673 (value!116897 List!20967)) (True!7672) (False!7672) (Broken!19182 (value!116898 List!20967)) (Broken!19183 (value!116899 List!20967)) (True!7673) (RightBrace!3836) (RightBracket!3836) (Colon!3836) (Null!3836) (Comma!3836) (LeftBracket!3836) (False!7673) (LeftBrace!3836) (ImaginaryLiteralValue!3836 (text!27298 List!20967)) (StringLiteralValue!11508 (value!116900 List!20967)) (EOFValue!3836 (value!116901 List!20967)) (IdentValue!3836 (value!116902 List!20967)) (DelimiterValue!7673 (value!116903 List!20967)) (DedentValue!3836 (value!116904 List!20967)) (NewLineValue!3836 (value!116905 List!20967)) (IntegerValue!11508 (value!116906 (_ BitVec 32)) (text!27299 List!20967)) (IntegerValue!11509 (value!116907 Int) (text!27300 List!20967)) (Times!3836) (Or!3836) (Equal!3836) (Minus!3836) (Broken!19184 (value!116908 List!20967)) (And!3836) (Div!3836) (LessEqual!3836) (Mod!3836) (Concat!8945) (Not!3836) (Plus!3836) (SpaceValue!3836 (value!116909 List!20967)) (IntegerValue!11510 (value!116910 Int) (text!27301 List!20967)) (StringLiteralValue!11509 (text!27302 List!20967)) (FloatLiteralValue!7673 (text!27303 List!20967)) (BytesLiteralValue!3836 (value!116911 List!20967)) (CommentValue!7673 (value!116912 List!20967)) (StringLiteralValue!11510 (value!116913 List!20967)) (ErrorTokenValue!3836 (msg!3897 List!20967)) )
))
(declare-datatypes ((C!10376 0))(
  ( (C!10377 (val!6076 Int)) )
))
(declare-datatypes ((Regex!5109 0))(
  ( (ElementMatch!5109 (c!305498 C!10376)) (Concat!8946 (regOne!10730 Regex!5109) (regTwo!10730 Regex!5109)) (EmptyExpr!5109) (Star!5109 (reg!5438 Regex!5109)) (EmptyLang!5109) (Union!5109 (regOne!10731 Regex!5109) (regTwo!10731 Regex!5109)) )
))
(declare-datatypes ((List!20968 0))(
  ( (Nil!20886) (Cons!20886 (h!26287 C!10376) (t!173185 List!20968)) )
))
(declare-datatypes ((IArray!13863 0))(
  ( (IArray!13864 (innerList!6989 List!20968)) )
))
(declare-datatypes ((Conc!6929 0))(
  ( (Node!6929 (left!16785 Conc!6929) (right!17115 Conc!6929) (csize!14088 Int) (cheight!7140 Int)) (Leaf!10200 (xs!9813 IArray!13863) (csize!14089 Int)) (Empty!6929) )
))
(declare-datatypes ((BalanceConc!13674 0))(
  ( (BalanceConc!13675 (c!305499 Conc!6929)) )
))
(declare-datatypes ((String!24130 0))(
  ( (String!24131 (value!116914 String)) )
))
(declare-datatypes ((TokenValueInjection!7256 0))(
  ( (TokenValueInjection!7257 (toValue!5297 Int) (toChars!5156 Int)) )
))
(declare-datatypes ((Rule!7200 0))(
  ( (Rule!7201 (regex!3700 Regex!5109) (tag!4114 String!24130) (isSeparator!3700 Bool) (transformation!3700 TokenValueInjection!7256)) )
))
(declare-datatypes ((Token!6952 0))(
  ( (Token!6953 (value!116915 TokenValue!3836) (rule!5893 Rule!7200) (size!16563 Int) (originalCharacters!4507 List!20968)) )
))
(declare-fun separatorToken!84 () Token!6952)

(declare-fun inv!21 (TokenValue!3836) Bool)

(assert (=> b!1875108 (= e!1196759 (and (inv!21 (value!116915 separatorToken!84)) e!1196756 tp!534500))))

(declare-fun b!1875109 () Bool)

(declare-fun e!1196760 () Bool)

(declare-datatypes ((List!20969 0))(
  ( (Nil!20887) (Cons!20887 (h!26288 Token!6952) (t!173186 List!20969)) )
))
(declare-datatypes ((IArray!13865 0))(
  ( (IArray!13866 (innerList!6990 List!20969)) )
))
(declare-datatypes ((Conc!6930 0))(
  ( (Node!6930 (left!16786 Conc!6930) (right!17116 Conc!6930) (csize!14090 Int) (cheight!7141 Int)) (Leaf!10201 (xs!9814 IArray!13865) (csize!14091 Int)) (Empty!6930) )
))
(declare-datatypes ((BalanceConc!13676 0))(
  ( (BalanceConc!13677 (c!305500 Conc!6930)) )
))
(declare-fun acc!408 () BalanceConc!13676)

(declare-fun tp!534502 () Bool)

(declare-fun inv!27745 (Conc!6930) Bool)

(assert (=> b!1875109 (= e!1196760 (and (inv!27745 (c!305500 acc!408)) tp!534502))))

(declare-fun b!1875110 () Bool)

(declare-fun e!1196757 () Bool)

(declare-fun from!845 () Int)

(assert (=> b!1875110 (= e!1196757 (<= 0 from!845))))

(declare-fun b!1875112 () Bool)

(declare-fun e!1196762 () Bool)

(declare-fun e!1196758 () Bool)

(assert (=> b!1875112 (= e!1196762 e!1196758)))

(declare-fun res!838592 () Bool)

(assert (=> b!1875112 (=> (not res!838592) (not e!1196758))))

(declare-fun lt!720559 () Int)

(assert (=> b!1875112 (= res!838592 (and (<= from!845 lt!720559) (isSeparator!3700 (rule!5893 separatorToken!84)) (< from!845 lt!720559)))))

(declare-fun v!6352 () BalanceConc!13676)

(declare-fun size!16564 (BalanceConc!13676) Int)

(assert (=> b!1875112 (= lt!720559 (size!16564 v!6352))))

(declare-fun b!1875113 () Bool)

(declare-fun res!838591 () Bool)

(assert (=> b!1875113 (=> res!838591 e!1196757)))

(declare-fun lt!720555 () List!20969)

(declare-fun lt!720557 () Token!6952)

(declare-fun lt!720558 () BalanceConc!13676)

(declare-fun list!8514 (BalanceConc!13676) List!20969)

(declare-fun ++!5657 (BalanceConc!13676 BalanceConc!13676) BalanceConc!13676)

(declare-fun ++!5658 (List!20969 List!20969) List!20969)

(assert (=> b!1875113 (= res!838591 (not (= (list!8514 (++!5657 acc!408 lt!720558)) (++!5658 lt!720555 (Cons!20887 lt!720557 Nil!20887)))))))

(declare-fun b!1875114 () Bool)

(assert (=> b!1875114 (= e!1196758 (not e!1196757))))

(declare-fun res!838593 () Bool)

(assert (=> b!1875114 (=> res!838593 e!1196757)))

(declare-datatypes ((LexerInterface!3322 0))(
  ( (LexerInterfaceExt!3319 (__x!13111 Int)) (Lexer!3320) )
))
(declare-fun thiss!13718 () LexerInterface!3322)

(declare-fun lt!720549 () List!20969)

(declare-fun lt!720547 () BalanceConc!13676)

(declare-fun withSeparatorTokenInner!4 (LexerInterface!3322 BalanceConc!13676 Token!6952 Int BalanceConc!13676) BalanceConc!13676)

(assert (=> b!1875114 (= res!838593 (not (= (list!8514 (withSeparatorTokenInner!4 thiss!13718 v!6352 separatorToken!84 (+ 1 from!845) lt!720547)) (++!5658 (list!8514 lt!720547) lt!720549))))))

(declare-fun singletonSeq!1815 (Token!6952) BalanceConc!13676)

(assert (=> b!1875114 (= lt!720547 (++!5657 acc!408 (++!5657 lt!720558 (singletonSeq!1815 separatorToken!84))))))

(assert (=> b!1875114 (= lt!720558 (singletonSeq!1815 lt!720557))))

(declare-fun lt!720554 () List!20969)

(assert (=> b!1875114 (= (++!5658 (++!5658 lt!720555 lt!720554) lt!720549) (++!5658 lt!720555 (++!5658 lt!720554 lt!720549)))))

(declare-datatypes ((Unit!35412 0))(
  ( (Unit!35413) )
))
(declare-fun lt!720556 () Unit!35412)

(declare-fun lemmaConcatAssociativity!1111 (List!20969 List!20969 List!20969) Unit!35412)

(assert (=> b!1875114 (= lt!720556 (lemmaConcatAssociativity!1111 lt!720555 lt!720554 lt!720549))))

(declare-fun lt!720550 () List!20969)

(declare-fun withSeparatorTokenList!108 (LexerInterface!3322 List!20969 Token!6952) List!20969)

(assert (=> b!1875114 (= lt!720549 (withSeparatorTokenList!108 thiss!13718 lt!720550 separatorToken!84))))

(assert (=> b!1875114 (= lt!720554 (Cons!20887 lt!720557 (Cons!20887 separatorToken!84 Nil!20887)))))

(declare-fun apply!5500 (BalanceConc!13676 Int) Token!6952)

(assert (=> b!1875114 (= lt!720557 (apply!5500 v!6352 from!845))))

(assert (=> b!1875114 (= lt!720555 (list!8514 acc!408))))

(declare-fun lt!720553 () List!20969)

(declare-fun tail!2900 (List!20969) List!20969)

(assert (=> b!1875114 (= (tail!2900 lt!720553) lt!720550)))

(declare-fun lt!720552 () List!20969)

(declare-fun drop!1020 (List!20969 Int) List!20969)

(assert (=> b!1875114 (= lt!720550 (drop!1020 lt!720552 (+ 1 from!845)))))

(declare-fun lt!720551 () Unit!35412)

(declare-fun lemmaDropTail!638 (List!20969 Int) Unit!35412)

(assert (=> b!1875114 (= lt!720551 (lemmaDropTail!638 lt!720552 from!845))))

(declare-fun head!4371 (List!20969) Token!6952)

(declare-fun apply!5501 (List!20969 Int) Token!6952)

(assert (=> b!1875114 (= (head!4371 lt!720553) (apply!5501 lt!720552 from!845))))

(assert (=> b!1875114 (= lt!720553 (drop!1020 lt!720552 from!845))))

(declare-fun lt!720548 () Unit!35412)

(declare-fun lemmaDropApply!658 (List!20969 Int) Unit!35412)

(assert (=> b!1875114 (= lt!720548 (lemmaDropApply!658 lt!720552 from!845))))

(assert (=> b!1875114 (= lt!720552 (list!8514 v!6352))))

(declare-fun b!1875115 () Bool)

(declare-fun e!1196761 () Bool)

(declare-fun tp!534504 () Bool)

(assert (=> b!1875115 (= e!1196761 (and (inv!27745 (c!305500 v!6352)) tp!534504))))

(declare-fun res!838590 () Bool)

(assert (=> start!187946 (=> (not res!838590) (not e!1196762))))

(get-info :version)

(assert (=> start!187946 (= res!838590 (and ((_ is Lexer!3320) thiss!13718) (>= from!845 0)))))

(assert (=> start!187946 e!1196762))

(assert (=> start!187946 true))

(declare-fun inv!27746 (BalanceConc!13676) Bool)

(assert (=> start!187946 (and (inv!27746 acc!408) e!1196760)))

(assert (=> start!187946 (and (inv!27746 v!6352) e!1196761)))

(declare-fun inv!27747 (Token!6952) Bool)

(assert (=> start!187946 (and (inv!27747 separatorToken!84) e!1196759)))

(declare-fun b!1875111 () Bool)

(declare-fun tp!534505 () Bool)

(declare-fun inv!27740 (String!24130) Bool)

(declare-fun inv!27748 (TokenValueInjection!7256) Bool)

(assert (=> b!1875111 (= e!1196756 (and tp!534505 (inv!27740 (tag!4114 (rule!5893 separatorToken!84))) (inv!27748 (transformation!3700 (rule!5893 separatorToken!84))) e!1196763))))

(assert (= (and start!187946 res!838590) b!1875112))

(assert (= (and b!1875112 res!838592) b!1875114))

(assert (= (and b!1875114 (not res!838593)) b!1875113))

(assert (= (and b!1875113 (not res!838591)) b!1875110))

(assert (= start!187946 b!1875109))

(assert (= start!187946 b!1875115))

(assert (= b!1875111 b!1875107))

(assert (= b!1875108 b!1875111))

(assert (= start!187946 b!1875108))

(declare-fun m!2300439 () Bool)

(assert (=> b!1875111 m!2300439))

(declare-fun m!2300441 () Bool)

(assert (=> b!1875111 m!2300441))

(declare-fun m!2300443 () Bool)

(assert (=> b!1875115 m!2300443))

(declare-fun m!2300445 () Bool)

(assert (=> start!187946 m!2300445))

(declare-fun m!2300447 () Bool)

(assert (=> start!187946 m!2300447))

(declare-fun m!2300449 () Bool)

(assert (=> start!187946 m!2300449))

(declare-fun m!2300451 () Bool)

(assert (=> b!1875109 m!2300451))

(declare-fun m!2300453 () Bool)

(assert (=> b!1875113 m!2300453))

(assert (=> b!1875113 m!2300453))

(declare-fun m!2300455 () Bool)

(assert (=> b!1875113 m!2300455))

(declare-fun m!2300457 () Bool)

(assert (=> b!1875113 m!2300457))

(declare-fun m!2300459 () Bool)

(assert (=> b!1875114 m!2300459))

(declare-fun m!2300461 () Bool)

(assert (=> b!1875114 m!2300461))

(declare-fun m!2300463 () Bool)

(assert (=> b!1875114 m!2300463))

(declare-fun m!2300465 () Bool)

(assert (=> b!1875114 m!2300465))

(declare-fun m!2300467 () Bool)

(assert (=> b!1875114 m!2300467))

(assert (=> b!1875114 m!2300461))

(declare-fun m!2300469 () Bool)

(assert (=> b!1875114 m!2300469))

(declare-fun m!2300471 () Bool)

(assert (=> b!1875114 m!2300471))

(declare-fun m!2300473 () Bool)

(assert (=> b!1875114 m!2300473))

(declare-fun m!2300475 () Bool)

(assert (=> b!1875114 m!2300475))

(declare-fun m!2300477 () Bool)

(assert (=> b!1875114 m!2300477))

(declare-fun m!2300479 () Bool)

(assert (=> b!1875114 m!2300479))

(declare-fun m!2300481 () Bool)

(assert (=> b!1875114 m!2300481))

(declare-fun m!2300483 () Bool)

(assert (=> b!1875114 m!2300483))

(declare-fun m!2300485 () Bool)

(assert (=> b!1875114 m!2300485))

(declare-fun m!2300487 () Bool)

(assert (=> b!1875114 m!2300487))

(declare-fun m!2300489 () Bool)

(assert (=> b!1875114 m!2300489))

(declare-fun m!2300491 () Bool)

(assert (=> b!1875114 m!2300491))

(declare-fun m!2300493 () Bool)

(assert (=> b!1875114 m!2300493))

(assert (=> b!1875114 m!2300487))

(declare-fun m!2300495 () Bool)

(assert (=> b!1875114 m!2300495))

(assert (=> b!1875114 m!2300471))

(declare-fun m!2300497 () Bool)

(assert (=> b!1875114 m!2300497))

(declare-fun m!2300499 () Bool)

(assert (=> b!1875114 m!2300499))

(declare-fun m!2300501 () Bool)

(assert (=> b!1875114 m!2300501))

(declare-fun m!2300503 () Bool)

(assert (=> b!1875114 m!2300503))

(assert (=> b!1875114 m!2300503))

(declare-fun m!2300505 () Bool)

(assert (=> b!1875114 m!2300505))

(assert (=> b!1875114 m!2300459))

(assert (=> b!1875114 m!2300499))

(declare-fun m!2300507 () Bool)

(assert (=> b!1875108 m!2300507))

(declare-fun m!2300509 () Bool)

(assert (=> b!1875112 m!2300509))

(check-sat (not b_next!52873) (not b!1875113) (not b!1875114) (not b_next!52875) b_and!144455 (not b!1875111) b_and!144457 (not start!187946) (not b!1875115) (not b!1875112) (not b!1875108) (not b!1875109))
(check-sat b_and!144457 b_and!144455 (not b_next!52873) (not b_next!52875))
