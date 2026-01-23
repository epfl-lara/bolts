; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!229956 () Bool)

(assert start!229956)

(declare-fun b!2328607 () Bool)

(declare-fun b_free!70257 () Bool)

(declare-fun b_next!70961 () Bool)

(assert (=> b!2328607 (= b_free!70257 (not b_next!70961))))

(declare-fun tp!737877 () Bool)

(declare-fun b_and!185169 () Bool)

(assert (=> b!2328607 (= tp!737877 b_and!185169)))

(declare-fun b_free!70259 () Bool)

(declare-fun b_next!70963 () Bool)

(assert (=> b!2328607 (= b_free!70259 (not b_next!70963))))

(declare-fun tp!737878 () Bool)

(declare-fun b_and!185171 () Bool)

(assert (=> b!2328607 (= tp!737878 b_and!185171)))

(declare-fun b!2328606 () Bool)

(declare-fun res!994219 () Bool)

(declare-fun e!1491989 () Bool)

(assert (=> b!2328606 (=> (not res!994219) (not e!1491989))))

(declare-datatypes ((List!27881 0))(
  ( (Nil!27783) (Cons!27783 (h!33184 (_ BitVec 16)) (t!207627 List!27881)) )
))
(declare-datatypes ((TokenValue!4602 0))(
  ( (FloatLiteralValue!9204 (text!32659 List!27881)) (TokenValueExt!4601 (__x!18363 Int)) (Broken!23010 (value!140543 List!27881)) (Object!4699) (End!4602) (Def!4602) (Underscore!4602) (Match!4602) (Else!4602) (Error!4602) (Case!4602) (If!4602) (Extends!4602) (Abstract!4602) (Class!4602) (Val!4602) (DelimiterValue!9204 (del!4662 List!27881)) (KeywordValue!4608 (value!140544 List!27881)) (CommentValue!9204 (value!140545 List!27881)) (WhitespaceValue!9204 (value!140546 List!27881)) (IndentationValue!4602 (value!140547 List!27881)) (String!30379) (Int32!4602) (Broken!23011 (value!140548 List!27881)) (Boolean!4603) (Unit!40574) (OperatorValue!4605 (op!4662 List!27881)) (IdentifierValue!9204 (value!140549 List!27881)) (IdentifierValue!9205 (value!140550 List!27881)) (WhitespaceValue!9205 (value!140551 List!27881)) (True!9204) (False!9204) (Broken!23012 (value!140552 List!27881)) (Broken!23013 (value!140553 List!27881)) (True!9205) (RightBrace!4602) (RightBracket!4602) (Colon!4602) (Null!4602) (Comma!4602) (LeftBracket!4602) (False!9205) (LeftBrace!4602) (ImaginaryLiteralValue!4602 (text!32660 List!27881)) (StringLiteralValue!13806 (value!140554 List!27881)) (EOFValue!4602 (value!140555 List!27881)) (IdentValue!4602 (value!140556 List!27881)) (DelimiterValue!9205 (value!140557 List!27881)) (DedentValue!4602 (value!140558 List!27881)) (NewLineValue!4602 (value!140559 List!27881)) (IntegerValue!13806 (value!140560 (_ BitVec 32)) (text!32661 List!27881)) (IntegerValue!13807 (value!140561 Int) (text!32662 List!27881)) (Times!4602) (Or!4602) (Equal!4602) (Minus!4602) (Broken!23014 (value!140562 List!27881)) (And!4602) (Div!4602) (LessEqual!4602) (Mod!4602) (Concat!11410) (Not!4602) (Plus!4602) (SpaceValue!4602 (value!140563 List!27881)) (IntegerValue!13808 (value!140564 Int) (text!32663 List!27881)) (StringLiteralValue!13807 (text!32664 List!27881)) (FloatLiteralValue!9205 (text!32665 List!27881)) (BytesLiteralValue!4602 (value!140565 List!27881)) (CommentValue!9205 (value!140566 List!27881)) (StringLiteralValue!13808 (value!140567 List!27881)) (ErrorTokenValue!4602 (msg!4663 List!27881)) )
))
(declare-datatypes ((C!13774 0))(
  ( (C!13775 (val!8043 Int)) )
))
(declare-datatypes ((Regex!6808 0))(
  ( (ElementMatch!6808 (c!369924 C!13774)) (Concat!11411 (regOne!14128 Regex!6808) (regTwo!14128 Regex!6808)) (EmptyExpr!6808) (Star!6808 (reg!7137 Regex!6808)) (EmptyLang!6808) (Union!6808 (regOne!14129 Regex!6808) (regTwo!14129 Regex!6808)) )
))
(declare-datatypes ((String!30380 0))(
  ( (String!30381 (value!140568 String)) )
))
(declare-datatypes ((List!27882 0))(
  ( (Nil!27784) (Cons!27784 (h!33185 C!13774) (t!207628 List!27882)) )
))
(declare-datatypes ((IArray!18225 0))(
  ( (IArray!18226 (innerList!9170 List!27882)) )
))
(declare-datatypes ((Conc!9110 0))(
  ( (Node!9110 (left!21083 Conc!9110) (right!21413 Conc!9110) (csize!18450 Int) (cheight!9321 Int)) (Leaf!13388 (xs!12090 IArray!18225) (csize!18451 Int)) (Empty!9110) )
))
(declare-datatypes ((BalanceConc!17832 0))(
  ( (BalanceConc!17833 (c!369925 Conc!9110)) )
))
(declare-datatypes ((TokenValueInjection!8724 0))(
  ( (TokenValueInjection!8725 (toValue!6256 Int) (toChars!6115 Int)) )
))
(declare-datatypes ((Rule!8656 0))(
  ( (Rule!8657 (regex!4428 Regex!6808) (tag!4918 String!30380) (isSeparator!4428 Bool) (transformation!4428 TokenValueInjection!8724)) )
))
(declare-datatypes ((List!27883 0))(
  ( (Nil!27785) (Cons!27785 (h!33186 Rule!8656) (t!207629 List!27883)) )
))
(declare-fun rules!853 () List!27883)

(declare-datatypes ((LexerInterface!4025 0))(
  ( (LexerInterfaceExt!4022 (__x!18364 Int)) (Lexer!4023) )
))
(declare-fun rulesInvariant!3525 (LexerInterface!4025 List!27883) Bool)

(assert (=> b!2328606 (= res!994219 (rulesInvariant!3525 Lexer!4023 rules!853))))

(declare-fun e!1491990 () Bool)

(assert (=> b!2328607 (= e!1491990 (and tp!737877 tp!737878))))

(declare-fun b!2328608 () Bool)

(declare-fun res!994218 () Bool)

(assert (=> b!2328608 (=> (not res!994218) (not e!1491989))))

(declare-datatypes ((Token!8334 0))(
  ( (Token!8335 (value!140569 TokenValue!4602) (rule!6784 Rule!8656) (size!22011 Int) (originalCharacters!5198 List!27882)) )
))
(declare-datatypes ((List!27884 0))(
  ( (Nil!27786) (Cons!27786 (h!33187 Token!8334) (t!207630 List!27884)) )
))
(declare-datatypes ((IArray!18227 0))(
  ( (IArray!18228 (innerList!9171 List!27884)) )
))
(declare-datatypes ((Conc!9111 0))(
  ( (Node!9111 (left!21084 Conc!9111) (right!21414 Conc!9111) (csize!18452 Int) (cheight!9322 Int)) (Leaf!13389 (xs!12091 IArray!18227) (csize!18453 Int)) (Empty!9111) )
))
(declare-datatypes ((BalanceConc!17834 0))(
  ( (BalanceConc!17835 (c!369926 Conc!9111)) )
))
(declare-datatypes ((PrintableTokens!1274 0))(
  ( (PrintableTokens!1275 (rules!16504 List!27883) (tokens!2473 BalanceConc!17834)) )
))
(declare-datatypes ((Option!5422 0))(
  ( (None!5421) (Some!5421 (v!30667 PrintableTokens!1274)) )
))
(declare-fun get!8380 (Option!5422) PrintableTokens!1274)

(assert (=> b!2328608 (= res!994218 (= (rules!16504 (get!8380 None!5421)) rules!853))))

(declare-fun tp!737874 () Bool)

(declare-fun e!1491992 () Bool)

(declare-fun b!2328609 () Bool)

(declare-fun inv!37829 (String!30380) Bool)

(declare-fun inv!37832 (TokenValueInjection!8724) Bool)

(assert (=> b!2328609 (= e!1491992 (and tp!737874 (inv!37829 (tag!4918 (h!33186 rules!853))) (inv!37832 (transformation!4428 (h!33186 rules!853))) e!1491990))))

(declare-fun b!2328610 () Bool)

(declare-fun res!994216 () Bool)

(assert (=> b!2328610 (=> (not res!994216) (not e!1491989))))

(declare-fun tokens!300 () BalanceConc!17834)

(declare-fun rulesProduceEachTokenIndividuallyList!1355 (LexerInterface!4025 List!27883 List!27884) Bool)

(declare-fun list!11044 (BalanceConc!17834) List!27884)

(assert (=> b!2328610 (= res!994216 (rulesProduceEachTokenIndividuallyList!1355 Lexer!4023 rules!853 (list!11044 tokens!300)))))

(declare-fun b!2328611 () Bool)

(declare-fun e!1491991 () Bool)

(declare-fun tp!737875 () Bool)

(declare-fun inv!37833 (Conc!9111) Bool)

(assert (=> b!2328611 (= e!1491991 (and (inv!37833 (c!369926 tokens!300)) tp!737875))))

(declare-fun b!2328612 () Bool)

(declare-fun res!994217 () Bool)

(assert (=> b!2328612 (=> (not res!994217) (not e!1491989))))

(declare-fun rulesProduceEachTokenIndividually!933 (LexerInterface!4025 List!27883 BalanceConc!17834) Bool)

(assert (=> b!2328612 (= res!994217 (rulesProduceEachTokenIndividually!933 Lexer!4023 rules!853 tokens!300))))

(declare-fun b!2328613 () Bool)

(declare-fun res!994221 () Bool)

(assert (=> b!2328613 (=> (not res!994221) (not e!1491989))))

(assert (=> b!2328613 (= res!994221 false)))

(declare-fun b!2328614 () Bool)

(declare-fun res!994215 () Bool)

(assert (=> b!2328614 (=> (not res!994215) (not e!1491989))))

(declare-fun separableTokens!302 (LexerInterface!4025 BalanceConc!17834 List!27883) Bool)

(assert (=> b!2328614 (= res!994215 (not (separableTokens!302 Lexer!4023 tokens!300 rules!853)))))

(declare-fun b!2328615 () Bool)

(assert (=> b!2328615 (= e!1491989 true)))

(declare-fun b!2328616 () Bool)

(declare-fun e!1491988 () Bool)

(declare-fun tp!737876 () Bool)

(assert (=> b!2328616 (= e!1491988 (and e!1491992 tp!737876))))

(declare-fun res!994220 () Bool)

(assert (=> start!229956 (=> (not res!994220) (not e!1491989))))

(declare-fun isEmpty!15831 (List!27883) Bool)

(assert (=> start!229956 (= res!994220 (not (isEmpty!15831 rules!853)))))

(assert (=> start!229956 e!1491989))

(assert (=> start!229956 e!1491988))

(declare-fun inv!37834 (BalanceConc!17834) Bool)

(assert (=> start!229956 (and (inv!37834 tokens!300) e!1491991)))

(assert (= (and start!229956 res!994220) b!2328606))

(assert (= (and b!2328606 res!994219) b!2328610))

(assert (= (and b!2328610 res!994216) b!2328612))

(assert (= (and b!2328612 res!994217) b!2328614))

(assert (= (and b!2328614 res!994215) b!2328613))

(assert (= (and b!2328613 res!994221) b!2328608))

(assert (= (and b!2328608 res!994218) b!2328615))

(assert (= b!2328609 b!2328607))

(assert (= b!2328616 b!2328609))

(assert (= (and start!229956 (is-Cons!27785 rules!853)) b!2328616))

(assert (= start!229956 b!2328611))

(declare-fun m!2759105 () Bool)

(assert (=> b!2328611 m!2759105))

(declare-fun m!2759107 () Bool)

(assert (=> b!2328609 m!2759107))

(declare-fun m!2759109 () Bool)

(assert (=> b!2328609 m!2759109))

(declare-fun m!2759111 () Bool)

(assert (=> b!2328614 m!2759111))

(declare-fun m!2759113 () Bool)

(assert (=> b!2328612 m!2759113))

(declare-fun m!2759115 () Bool)

(assert (=> b!2328608 m!2759115))

(declare-fun m!2759117 () Bool)

(assert (=> b!2328606 m!2759117))

(declare-fun m!2759119 () Bool)

(assert (=> b!2328610 m!2759119))

(assert (=> b!2328610 m!2759119))

(declare-fun m!2759121 () Bool)

(assert (=> b!2328610 m!2759121))

(declare-fun m!2759123 () Bool)

(assert (=> start!229956 m!2759123))

(declare-fun m!2759125 () Bool)

(assert (=> start!229956 m!2759125))

(push 1)

(assert (not b!2328611))

(assert (not b!2328612))

(assert b_and!185169)

(assert (not b_next!70961))

(assert (not b!2328606))

(assert (not b!2328616))

(assert (not b_next!70963))

(assert (not b!2328610))

(assert b_and!185171)

(assert (not start!229956))

(assert (not b!2328614))

(assert (not b!2328608))

(assert (not b!2328609))

(check-sat)

(pop 1)

(push 1)

(assert b_and!185169)

(assert b_and!185171)

(assert (not b_next!70963))

(assert (not b_next!70961))

(check-sat)

(pop 1)

