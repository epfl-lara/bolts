; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!104368 () Bool)

(assert start!104368)

(declare-fun b!1179464 () Bool)

(declare-fun b_free!27957 () Bool)

(declare-fun b_next!28661 () Bool)

(assert (=> b!1179464 (= b_free!27957 (not b_next!28661))))

(declare-fun tp!335679 () Bool)

(declare-fun b_and!80901 () Bool)

(assert (=> b!1179464 (= tp!335679 b_and!80901)))

(declare-fun b_free!27959 () Bool)

(declare-fun b_next!28663 () Bool)

(assert (=> b!1179464 (= b_free!27959 (not b_next!28663))))

(declare-fun tp!335680 () Bool)

(declare-fun b_and!80903 () Bool)

(assert (=> b!1179464 (= tp!335680 b_and!80903)))

(declare-fun b!1179471 () Bool)

(declare-fun b_free!27961 () Bool)

(declare-fun b_next!28665 () Bool)

(assert (=> b!1179471 (= b_free!27961 (not b_next!28665))))

(declare-fun tp!335687 () Bool)

(declare-fun b_and!80905 () Bool)

(assert (=> b!1179471 (= tp!335687 b_and!80905)))

(declare-fun b_free!27963 () Bool)

(declare-fun b_next!28667 () Bool)

(assert (=> b!1179471 (= b_free!27963 (not b_next!28667))))

(declare-fun tp!335684 () Bool)

(declare-fun b_and!80907 () Bool)

(assert (=> b!1179471 (= tp!335684 b_and!80907)))

(declare-fun e!756795 () Bool)

(declare-datatypes ((C!6922 0))(
  ( (C!6923 (val!3757 Int)) )
))
(declare-datatypes ((List!11712 0))(
  ( (Nil!11688) (Cons!11688 (h!17089 C!6922) (t!111282 List!11712)) )
))
(declare-datatypes ((IArray!7673 0))(
  ( (IArray!7674 (innerList!3894 List!11712)) )
))
(declare-datatypes ((Conc!3834 0))(
  ( (Node!3834 (left!10212 Conc!3834) (right!10542 Conc!3834) (csize!7898 Int) (cheight!4045 Int)) (Leaf!5881 (xs!6539 IArray!7673) (csize!7899 Int)) (Empty!3834) )
))
(declare-datatypes ((List!11713 0))(
  ( (Nil!11689) (Cons!11689 (h!17090 (_ BitVec 16)) (t!111283 List!11713)) )
))
(declare-datatypes ((String!14159 0))(
  ( (String!14160 (value!65944 String)) )
))
(declare-datatypes ((TokenValue!2098 0))(
  ( (FloatLiteralValue!4196 (text!15131 List!11713)) (TokenValueExt!2097 (__x!7907 Int)) (Broken!10490 (value!65945 List!11713)) (Object!2121) (End!2098) (Def!2098) (Underscore!2098) (Match!2098) (Else!2098) (Error!2098) (Case!2098) (If!2098) (Extends!2098) (Abstract!2098) (Class!2098) (Val!2098) (DelimiterValue!4196 (del!2158 List!11713)) (KeywordValue!2104 (value!65946 List!11713)) (CommentValue!4196 (value!65947 List!11713)) (WhitespaceValue!4196 (value!65948 List!11713)) (IndentationValue!2098 (value!65949 List!11713)) (String!14161) (Int32!2098) (Broken!10491 (value!65950 List!11713)) (Boolean!2099) (Unit!18022) (OperatorValue!2101 (op!2158 List!11713)) (IdentifierValue!4196 (value!65951 List!11713)) (IdentifierValue!4197 (value!65952 List!11713)) (WhitespaceValue!4197 (value!65953 List!11713)) (True!4196) (False!4196) (Broken!10492 (value!65954 List!11713)) (Broken!10493 (value!65955 List!11713)) (True!4197) (RightBrace!2098) (RightBracket!2098) (Colon!2098) (Null!2098) (Comma!2098) (LeftBracket!2098) (False!4197) (LeftBrace!2098) (ImaginaryLiteralValue!2098 (text!15132 List!11713)) (StringLiteralValue!6294 (value!65956 List!11713)) (EOFValue!2098 (value!65957 List!11713)) (IdentValue!2098 (value!65958 List!11713)) (DelimiterValue!4197 (value!65959 List!11713)) (DedentValue!2098 (value!65960 List!11713)) (NewLineValue!2098 (value!65961 List!11713)) (IntegerValue!6294 (value!65962 (_ BitVec 32)) (text!15133 List!11713)) (IntegerValue!6295 (value!65963 Int) (text!15134 List!11713)) (Times!2098) (Or!2098) (Equal!2098) (Minus!2098) (Broken!10494 (value!65964 List!11713)) (And!2098) (Div!2098) (LessEqual!2098) (Mod!2098) (Concat!5400) (Not!2098) (Plus!2098) (SpaceValue!2098 (value!65965 List!11713)) (IntegerValue!6296 (value!65966 Int) (text!15135 List!11713)) (StringLiteralValue!6295 (text!15136 List!11713)) (FloatLiteralValue!4197 (text!15137 List!11713)) (BytesLiteralValue!2098 (value!65967 List!11713)) (CommentValue!4197 (value!65968 List!11713)) (StringLiteralValue!6296 (value!65969 List!11713)) (ErrorTokenValue!2098 (msg!2159 List!11713)) )
))
(declare-datatypes ((Regex!3302 0))(
  ( (ElementMatch!3302 (c!196636 C!6922)) (Concat!5401 (regOne!7116 Regex!3302) (regTwo!7116 Regex!3302)) (EmptyExpr!3302) (Star!3302 (reg!3631 Regex!3302)) (EmptyLang!3302) (Union!3302 (regOne!7117 Regex!3302) (regTwo!7117 Regex!3302)) )
))
(declare-datatypes ((BalanceConc!7690 0))(
  ( (BalanceConc!7691 (c!196637 Conc!3834)) )
))
(declare-datatypes ((TokenValueInjection!3896 0))(
  ( (TokenValueInjection!3897 (toValue!3137 Int) (toChars!2996 Int)) )
))
(declare-datatypes ((Rule!3864 0))(
  ( (Rule!3865 (regex!2032 Regex!3302) (tag!2294 String!14159) (isSeparator!2032 Bool) (transformation!2032 TokenValueInjection!3896)) )
))
(declare-datatypes ((Token!3726 0))(
  ( (Token!3727 (value!65970 TokenValue!2098) (rule!3453 Rule!3864) (size!9264 Int) (originalCharacters!2586 List!11712)) )
))
(declare-datatypes ((List!11714 0))(
  ( (Nil!11690) (Cons!11690 (h!17091 Token!3726) (t!111284 List!11714)) )
))
(declare-fun l!6534 () List!11714)

(declare-fun e!756797 () Bool)

(declare-fun tp!335682 () Bool)

(declare-fun b!1179462 () Bool)

(declare-fun inv!15513 (Token!3726) Bool)

(assert (=> b!1179462 (= e!756797 (and (inv!15513 (h!17091 l!6534)) e!756795 tp!335682))))

(declare-fun b!1179463 () Bool)

(declare-fun res!533130 () Bool)

(declare-fun e!756794 () Bool)

(assert (=> b!1179463 (=> (not res!533130) (not e!756794))))

(declare-datatypes ((List!11715 0))(
  ( (Nil!11691) (Cons!11691 (h!17092 Rule!3864) (t!111285 List!11715)) )
))
(declare-fun rules!4386 () List!11715)

(declare-fun isEmpty!7073 (List!11715) Bool)

(assert (=> b!1179463 (= res!533130 (not (isEmpty!7073 rules!4386)))))

(declare-fun e!756800 () Bool)

(assert (=> b!1179464 (= e!756800 (and tp!335679 tp!335680))))

(declare-fun b!1179465 () Bool)

(declare-fun e!756799 () Bool)

(declare-fun e!756801 () Bool)

(declare-fun tp!335686 () Bool)

(assert (=> b!1179465 (= e!756799 (and e!756801 tp!335686))))

(declare-fun b!1179466 () Bool)

(declare-fun res!533133 () Bool)

(assert (=> b!1179466 (=> (not res!533133) (not e!756794))))

(declare-datatypes ((LexerInterface!1727 0))(
  ( (LexerInterfaceExt!1724 (__x!7908 Int)) (Lexer!1725) )
))
(declare-fun thiss!27592 () LexerInterface!1727)

(declare-fun tokensListTwoByTwoPredicateSeparableList!121 (LexerInterface!1727 List!11714 List!11715) Bool)

(assert (=> b!1179466 (= res!533133 (tokensListTwoByTwoPredicateSeparableList!121 thiss!27592 l!6534 rules!4386))))

(declare-fun b!1179467 () Bool)

(declare-fun tp!335683 () Bool)

(declare-fun e!756802 () Bool)

(declare-fun inv!21 (TokenValue!2098) Bool)

(assert (=> b!1179467 (= e!756795 (and (inv!21 (value!65970 (h!17091 l!6534))) e!756802 tp!335683))))

(declare-fun b!1179468 () Bool)

(declare-fun res!533134 () Bool)

(assert (=> b!1179468 (=> (not res!533134) (not e!756794))))

(assert (=> b!1179468 (= res!533134 (is-Nil!11690 l!6534))))

(declare-fun b!1179469 () Bool)

(declare-fun res!533135 () Bool)

(assert (=> b!1179469 (=> (not res!533135) (not e!756794))))

(declare-fun rulesInvariant!1601 (LexerInterface!1727 List!11715) Bool)

(assert (=> b!1179469 (= res!533135 (rulesInvariant!1601 thiss!27592 rules!4386))))

(declare-fun tp!335685 () Bool)

(declare-fun b!1179470 () Bool)

(declare-fun inv!15510 (String!14159) Bool)

(declare-fun inv!15514 (TokenValueInjection!3896) Bool)

(assert (=> b!1179470 (= e!756801 (and tp!335685 (inv!15510 (tag!2294 (h!17092 rules!4386))) (inv!15514 (transformation!2032 (h!17092 rules!4386))) e!756800))))

(declare-fun res!533131 () Bool)

(assert (=> start!104368 (=> (not res!533131) (not e!756794))))

(assert (=> start!104368 (= res!533131 (is-Lexer!1725 thiss!27592))))

(assert (=> start!104368 e!756794))

(assert (=> start!104368 true))

(assert (=> start!104368 e!756799))

(assert (=> start!104368 e!756797))

(declare-fun e!756796 () Bool)

(assert (=> b!1179471 (= e!756796 (and tp!335687 tp!335684))))

(declare-fun b!1179472 () Bool)

(assert (=> b!1179472 (= e!756794 false)))

(declare-fun lt!406343 () List!11714)

(declare-fun i!1621 () Int)

(declare-fun drop!512 (List!11714 Int) List!11714)

(assert (=> b!1179472 (= lt!406343 (drop!512 l!6534 i!1621))))

(declare-fun tp!335681 () Bool)

(declare-fun b!1179473 () Bool)

(assert (=> b!1179473 (= e!756802 (and tp!335681 (inv!15510 (tag!2294 (rule!3453 (h!17091 l!6534)))) (inv!15514 (transformation!2032 (rule!3453 (h!17091 l!6534)))) e!756796))))

(declare-fun b!1179474 () Bool)

(declare-fun res!533132 () Bool)

(assert (=> b!1179474 (=> (not res!533132) (not e!756794))))

(declare-fun rulesProduceEachTokenIndividuallyList!593 (LexerInterface!1727 List!11715 List!11714) Bool)

(assert (=> b!1179474 (= res!533132 (rulesProduceEachTokenIndividuallyList!593 thiss!27592 rules!4386 l!6534))))

(assert (= (and start!104368 res!533131) b!1179463))

(assert (= (and b!1179463 res!533130) b!1179469))

(assert (= (and b!1179469 res!533135) b!1179474))

(assert (= (and b!1179474 res!533132) b!1179466))

(assert (= (and b!1179466 res!533133) b!1179468))

(assert (= (and b!1179468 res!533134) b!1179472))

(assert (= b!1179470 b!1179464))

(assert (= b!1179465 b!1179470))

(assert (= (and start!104368 (is-Cons!11691 rules!4386)) b!1179465))

(assert (= b!1179473 b!1179471))

(assert (= b!1179467 b!1179473))

(assert (= b!1179462 b!1179467))

(assert (= (and start!104368 (is-Cons!11690 l!6534)) b!1179462))

(declare-fun m!1355885 () Bool)

(assert (=> b!1179473 m!1355885))

(declare-fun m!1355887 () Bool)

(assert (=> b!1179473 m!1355887))

(declare-fun m!1355889 () Bool)

(assert (=> b!1179470 m!1355889))

(declare-fun m!1355891 () Bool)

(assert (=> b!1179470 m!1355891))

(declare-fun m!1355893 () Bool)

(assert (=> b!1179466 m!1355893))

(declare-fun m!1355895 () Bool)

(assert (=> b!1179462 m!1355895))

(declare-fun m!1355897 () Bool)

(assert (=> b!1179474 m!1355897))

(declare-fun m!1355899 () Bool)

(assert (=> b!1179472 m!1355899))

(declare-fun m!1355901 () Bool)

(assert (=> b!1179467 m!1355901))

(declare-fun m!1355903 () Bool)

(assert (=> b!1179469 m!1355903))

(declare-fun m!1355905 () Bool)

(assert (=> b!1179463 m!1355905))

(push 1)

(assert (not b!1179465))

(assert (not b_next!28667))

(assert (not b_next!28665))

(assert b_and!80907)

(assert (not b!1179467))

(assert b_and!80901)

(assert (not b_next!28663))

(assert (not b_next!28661))

(assert (not b!1179469))

(assert (not b!1179470))

(assert (not b!1179474))

(assert (not b!1179462))

(assert (not b!1179463))

(assert (not b!1179466))

(assert (not b!1179472))

(assert (not b!1179473))

(assert b_and!80903)

(assert b_and!80905)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!28667))

(assert (not b_next!28665))

(assert b_and!80907)

(assert b_and!80901)

(assert (not b_next!28663))

(assert (not b_next!28661))

(assert b_and!80903)

(assert b_and!80905)

(check-sat)

(pop 1)

