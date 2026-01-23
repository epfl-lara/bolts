; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!147426 () Bool)

(assert start!147426)

(declare-fun b!1577182 () Bool)

(declare-fun b_free!42487 () Bool)

(declare-fun b_next!43191 () Bool)

(assert (=> b!1577182 (= b_free!42487 (not b_next!43191))))

(declare-fun tp!464316 () Bool)

(declare-fun b_and!110413 () Bool)

(assert (=> b!1577182 (= tp!464316 b_and!110413)))

(declare-fun b_free!42489 () Bool)

(declare-fun b_next!43193 () Bool)

(assert (=> b!1577182 (= b_free!42489 (not b_next!43193))))

(declare-fun tp!464312 () Bool)

(declare-fun b_and!110415 () Bool)

(assert (=> b!1577182 (= tp!464312 b_and!110415)))

(declare-fun b!1577184 () Bool)

(declare-fun b_free!42491 () Bool)

(declare-fun b_next!43195 () Bool)

(assert (=> b!1577184 (= b_free!42491 (not b_next!43195))))

(declare-fun tp!464315 () Bool)

(declare-fun b_and!110417 () Bool)

(assert (=> b!1577184 (= tp!464315 b_and!110417)))

(declare-fun b_free!42493 () Bool)

(declare-fun b_next!43197 () Bool)

(assert (=> b!1577184 (= b_free!42493 (not b_next!43197))))

(declare-fun tp!464311 () Bool)

(declare-fun b_and!110419 () Bool)

(assert (=> b!1577184 (= tp!464311 b_and!110419)))

(declare-fun b!1577169 () Bool)

(declare-fun e!1013090 () Bool)

(declare-fun e!1013094 () Bool)

(assert (=> b!1577169 (= e!1013090 e!1013094)))

(declare-fun res!702940 () Bool)

(assert (=> b!1577169 (=> (not res!702940) (not e!1013094))))

(declare-datatypes ((C!8912 0))(
  ( (C!8913 (val!5052 Int)) )
))
(declare-datatypes ((List!17353 0))(
  ( (Nil!17283) (Cons!17283 (h!22684 C!8912) (t!143436 List!17353)) )
))
(declare-fun lt!549832 () List!17353)

(declare-fun lt!549834 () List!17353)

(assert (=> b!1577169 (= res!702940 (= lt!549832 lt!549834))))

(declare-fun lt!549838 () List!17353)

(declare-fun lt!549836 () List!17353)

(declare-fun ++!4483 (List!17353 List!17353) List!17353)

(assert (=> b!1577169 (= lt!549834 (++!4483 lt!549838 lt!549836))))

(declare-datatypes ((IArray!11465 0))(
  ( (IArray!11466 (innerList!5790 List!17353)) )
))
(declare-datatypes ((Conc!5730 0))(
  ( (Node!5730 (left!13976 Conc!5730) (right!14306 Conc!5730) (csize!11690 Int) (cheight!5941 Int)) (Leaf!8471 (xs!8534 IArray!11465) (csize!11691 Int)) (Empty!5730) )
))
(declare-datatypes ((BalanceConc!11404 0))(
  ( (BalanceConc!11405 (c!255641 Conc!5730)) )
))
(declare-fun lt!549839 () BalanceConc!11404)

(declare-fun list!6663 (BalanceConc!11404) List!17353)

(assert (=> b!1577169 (= lt!549832 (list!6663 lt!549839))))

(declare-fun lt!549837 () BalanceConc!11404)

(assert (=> b!1577169 (= lt!549836 (list!6663 lt!549837))))

(declare-datatypes ((List!17354 0))(
  ( (Nil!17284) (Cons!17284 (h!22685 (_ BitVec 16)) (t!143437 List!17354)) )
))
(declare-datatypes ((TokenValue!3131 0))(
  ( (FloatLiteralValue!6262 (text!22362 List!17354)) (TokenValueExt!3130 (__x!11564 Int)) (Broken!15655 (value!96315 List!17354)) (Object!3200) (End!3131) (Def!3131) (Underscore!3131) (Match!3131) (Else!3131) (Error!3131) (Case!3131) (If!3131) (Extends!3131) (Abstract!3131) (Class!3131) (Val!3131) (DelimiterValue!6262 (del!3191 List!17354)) (KeywordValue!3137 (value!96316 List!17354)) (CommentValue!6262 (value!96317 List!17354)) (WhitespaceValue!6262 (value!96318 List!17354)) (IndentationValue!3131 (value!96319 List!17354)) (String!19986) (Int32!3131) (Broken!15656 (value!96320 List!17354)) (Boolean!3132) (Unit!26814) (OperatorValue!3134 (op!3191 List!17354)) (IdentifierValue!6262 (value!96321 List!17354)) (IdentifierValue!6263 (value!96322 List!17354)) (WhitespaceValue!6263 (value!96323 List!17354)) (True!6262) (False!6262) (Broken!15657 (value!96324 List!17354)) (Broken!15658 (value!96325 List!17354)) (True!6263) (RightBrace!3131) (RightBracket!3131) (Colon!3131) (Null!3131) (Comma!3131) (LeftBracket!3131) (False!6263) (LeftBrace!3131) (ImaginaryLiteralValue!3131 (text!22363 List!17354)) (StringLiteralValue!9393 (value!96326 List!17354)) (EOFValue!3131 (value!96327 List!17354)) (IdentValue!3131 (value!96328 List!17354)) (DelimiterValue!6263 (value!96329 List!17354)) (DedentValue!3131 (value!96330 List!17354)) (NewLineValue!3131 (value!96331 List!17354)) (IntegerValue!9393 (value!96332 (_ BitVec 32)) (text!22364 List!17354)) (IntegerValue!9394 (value!96333 Int) (text!22365 List!17354)) (Times!3131) (Or!3131) (Equal!3131) (Minus!3131) (Broken!15659 (value!96334 List!17354)) (And!3131) (Div!3131) (LessEqual!3131) (Mod!3131) (Concat!7500) (Not!3131) (Plus!3131) (SpaceValue!3131 (value!96335 List!17354)) (IntegerValue!9395 (value!96336 Int) (text!22366 List!17354)) (StringLiteralValue!9394 (text!22367 List!17354)) (FloatLiteralValue!6263 (text!22368 List!17354)) (BytesLiteralValue!3131 (value!96337 List!17354)) (CommentValue!6263 (value!96338 List!17354)) (StringLiteralValue!9395 (value!96339 List!17354)) (ErrorTokenValue!3131 (msg!3192 List!17354)) )
))
(declare-datatypes ((Regex!4369 0))(
  ( (ElementMatch!4369 (c!255642 C!8912)) (Concat!7501 (regOne!9250 Regex!4369) (regTwo!9250 Regex!4369)) (EmptyExpr!4369) (Star!4369 (reg!4698 Regex!4369)) (EmptyLang!4369) (Union!4369 (regOne!9251 Regex!4369) (regTwo!9251 Regex!4369)) )
))
(declare-datatypes ((String!19987 0))(
  ( (String!19988 (value!96340 String)) )
))
(declare-datatypes ((TokenValueInjection!5922 0))(
  ( (TokenValueInjection!5923 (toValue!4440 Int) (toChars!4299 Int)) )
))
(declare-datatypes ((Rule!5882 0))(
  ( (Rule!5883 (regex!3041 Regex!4369) (tag!3307 String!19987) (isSeparator!3041 Bool) (transformation!3041 TokenValueInjection!5922)) )
))
(declare-datatypes ((Token!5648 0))(
  ( (Token!5649 (value!96341 TokenValue!3131) (rule!4835 Rule!5882) (size!13930 Int) (originalCharacters!3855 List!17353)) )
))
(declare-datatypes ((List!17355 0))(
  ( (Nil!17285) (Cons!17285 (h!22686 Token!5648) (t!143438 List!17355)) )
))
(declare-fun tokens!457 () List!17355)

(declare-fun charsOf!1690 (Token!5648) BalanceConc!11404)

(assert (=> b!1577169 (= lt!549838 (list!6663 (charsOf!1690 (h!22686 tokens!457))))))

(declare-datatypes ((IArray!11467 0))(
  ( (IArray!11468 (innerList!5791 List!17355)) )
))
(declare-datatypes ((Conc!5731 0))(
  ( (Node!5731 (left!13977 Conc!5731) (right!14307 Conc!5731) (csize!11692 Int) (cheight!5942 Int)) (Leaf!8472 (xs!8535 IArray!11467) (csize!11693 Int)) (Empty!5731) )
))
(declare-datatypes ((BalanceConc!11406 0))(
  ( (BalanceConc!11407 (c!255643 Conc!5731)) )
))
(declare-datatypes ((tuple2!16754 0))(
  ( (tuple2!16755 (_1!9779 BalanceConc!11406) (_2!9779 BalanceConc!11404)) )
))
(declare-fun lt!549840 () tuple2!16754)

(declare-datatypes ((List!17356 0))(
  ( (Nil!17286) (Cons!17286 (h!22687 Rule!5882) (t!143439 List!17356)) )
))
(declare-fun rules!1846 () List!17356)

(declare-datatypes ((LexerInterface!2670 0))(
  ( (LexerInterfaceExt!2667 (__x!11565 Int)) (Lexer!2668) )
))
(declare-fun thiss!17113 () LexerInterface!2670)

(declare-fun lex!1154 (LexerInterface!2670 List!17356 BalanceConc!11404) tuple2!16754)

(assert (=> b!1577169 (= lt!549840 (lex!1154 thiss!17113 rules!1846 lt!549837))))

(declare-fun lt!549833 () BalanceConc!11406)

(declare-fun print!1201 (LexerInterface!2670 BalanceConc!11406) BalanceConc!11404)

(assert (=> b!1577169 (= lt!549837 (print!1201 thiss!17113 lt!549833))))

(declare-fun seqFromList!1840 (List!17355) BalanceConc!11406)

(assert (=> b!1577169 (= lt!549833 (seqFromList!1840 (t!143438 tokens!457)))))

(assert (=> b!1577169 (= lt!549839 (print!1201 thiss!17113 (seqFromList!1840 tokens!457)))))

(declare-fun b!1577170 () Bool)

(declare-fun e!1013091 () Bool)

(declare-fun e!1013093 () Bool)

(declare-fun tp!464310 () Bool)

(assert (=> b!1577170 (= e!1013091 (and e!1013093 tp!464310))))

(declare-fun b!1577171 () Bool)

(declare-fun tp!464314 () Bool)

(declare-fun e!1013098 () Bool)

(declare-fun inv!22697 (String!19987) Bool)

(declare-fun inv!22700 (TokenValueInjection!5922) Bool)

(assert (=> b!1577171 (= e!1013093 (and tp!464314 (inv!22697 (tag!3307 (h!22687 rules!1846))) (inv!22700 (transformation!3041 (h!22687 rules!1846))) e!1013098))))

(declare-fun b!1577172 () Bool)

(declare-fun e!1013089 () Bool)

(assert (=> b!1577172 (= e!1013089 true)))

(declare-fun lt!549835 () Bool)

(declare-fun separableTokensPredicate!612 (LexerInterface!2670 Token!5648 Token!5648 List!17356) Bool)

(assert (=> b!1577172 (= lt!549835 (separableTokensPredicate!612 thiss!17113 (h!22686 tokens!457) (h!22686 (t!143438 tokens!457)) rules!1846))))

(declare-fun e!1013088 () Bool)

(declare-fun e!1013095 () Bool)

(declare-fun tp!464318 () Bool)

(declare-fun b!1577173 () Bool)

(declare-fun inv!22701 (Token!5648) Bool)

(assert (=> b!1577173 (= e!1013095 (and (inv!22701 (h!22686 tokens!457)) e!1013088 tp!464318))))

(declare-fun b!1577174 () Bool)

(declare-fun res!702945 () Bool)

(assert (=> b!1577174 (=> (not res!702945) (not e!1013090))))

(declare-fun rulesInvariant!2339 (LexerInterface!2670 List!17356) Bool)

(assert (=> b!1577174 (= res!702945 (rulesInvariant!2339 thiss!17113 rules!1846))))

(declare-fun b!1577176 () Bool)

(declare-fun res!702938 () Bool)

(assert (=> b!1577176 (=> (not res!702938) (not e!1013090))))

(declare-fun isEmpty!10325 (List!17356) Bool)

(assert (=> b!1577176 (= res!702938 (not (isEmpty!10325 rules!1846)))))

(declare-fun b!1577177 () Bool)

(declare-fun e!1013087 () Bool)

(assert (=> b!1577177 (= e!1013087 e!1013089)))

(declare-fun res!702944 () Bool)

(assert (=> b!1577177 (=> res!702944 e!1013089)))

(declare-fun lt!549828 () List!17355)

(declare-fun lt!549841 () List!17355)

(declare-fun lt!549831 () List!17355)

(assert (=> b!1577177 (= res!702944 (or (not (= lt!549841 lt!549828)) (not (= lt!549828 lt!549831))))))

(declare-fun list!6664 (BalanceConc!11406) List!17355)

(assert (=> b!1577177 (= lt!549828 (list!6664 lt!549833))))

(assert (=> b!1577177 (= lt!549841 lt!549831)))

(declare-fun prepend!513 (BalanceConc!11406 Token!5648) BalanceConc!11406)

(assert (=> b!1577177 (= lt!549831 (list!6664 (prepend!513 (seqFromList!1840 (t!143438 (t!143438 tokens!457))) (h!22686 (t!143438 tokens!457)))))))

(declare-datatypes ((Unit!26815 0))(
  ( (Unit!26816) )
))
(declare-fun lt!549830 () Unit!26815)

(declare-fun seqFromListBHdTlConstructive!118 (Token!5648 List!17355 BalanceConc!11406) Unit!26815)

(assert (=> b!1577177 (= lt!549830 (seqFromListBHdTlConstructive!118 (h!22686 (t!143438 tokens!457)) (t!143438 (t!143438 tokens!457)) (_1!9779 lt!549840)))))

(declare-fun b!1577178 () Bool)

(declare-fun res!702942 () Bool)

(assert (=> b!1577178 (=> (not res!702942) (not e!1013090))))

(get-info :version)

(assert (=> b!1577178 (= res!702942 (and (not ((_ is Nil!17285) tokens!457)) (not ((_ is Nil!17285) (t!143438 tokens!457)))))))

(declare-fun b!1577179 () Bool)

(declare-fun res!702939 () Bool)

(assert (=> b!1577179 (=> (not res!702939) (not e!1013090))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!363 (LexerInterface!2670 List!17355 List!17356) Bool)

(assert (=> b!1577179 (= res!702939 (tokensListTwoByTwoPredicateSeparableList!363 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1577180 () Bool)

(assert (=> b!1577180 (= e!1013094 (not e!1013087))))

(declare-fun res!702937 () Bool)

(assert (=> b!1577180 (=> res!702937 e!1013087)))

(assert (=> b!1577180 (= res!702937 (not (= lt!549841 (t!143438 tokens!457))))))

(assert (=> b!1577180 (= lt!549841 (list!6664 (_1!9779 lt!549840)))))

(declare-fun lt!549842 () Unit!26815)

(declare-fun theoremInvertabilityWhenTokenListSeparable!115 (LexerInterface!2670 List!17356 List!17355) Unit!26815)

(assert (=> b!1577180 (= lt!549842 (theoremInvertabilityWhenTokenListSeparable!115 thiss!17113 rules!1846 (t!143438 tokens!457)))))

(declare-fun isPrefix!1301 (List!17353 List!17353) Bool)

(assert (=> b!1577180 (isPrefix!1301 lt!549838 lt!549834)))

(declare-fun lt!549829 () Unit!26815)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!826 (List!17353 List!17353) Unit!26815)

(assert (=> b!1577180 (= lt!549829 (lemmaConcatTwoListThenFirstIsPrefix!826 lt!549838 lt!549836))))

(declare-fun tp!464313 () Bool)

(declare-fun e!1013097 () Bool)

(declare-fun e!1013096 () Bool)

(declare-fun b!1577181 () Bool)

(assert (=> b!1577181 (= e!1013097 (and tp!464313 (inv!22697 (tag!3307 (rule!4835 (h!22686 tokens!457)))) (inv!22700 (transformation!3041 (rule!4835 (h!22686 tokens!457)))) e!1013096))))

(assert (=> b!1577182 (= e!1013098 (and tp!464316 tp!464312))))

(declare-fun b!1577183 () Bool)

(declare-fun res!702941 () Bool)

(assert (=> b!1577183 (=> (not res!702941) (not e!1013090))))

(declare-fun rulesProduceEachTokenIndividuallyList!872 (LexerInterface!2670 List!17356 List!17355) Bool)

(assert (=> b!1577183 (= res!702941 (rulesProduceEachTokenIndividuallyList!872 thiss!17113 rules!1846 tokens!457))))

(assert (=> b!1577184 (= e!1013096 (and tp!464315 tp!464311))))

(declare-fun tp!464317 () Bool)

(declare-fun b!1577175 () Bool)

(declare-fun inv!21 (TokenValue!3131) Bool)

(assert (=> b!1577175 (= e!1013088 (and (inv!21 (value!96341 (h!22686 tokens!457))) e!1013097 tp!464317))))

(declare-fun res!702943 () Bool)

(assert (=> start!147426 (=> (not res!702943) (not e!1013090))))

(assert (=> start!147426 (= res!702943 ((_ is Lexer!2668) thiss!17113))))

(assert (=> start!147426 e!1013090))

(assert (=> start!147426 true))

(assert (=> start!147426 e!1013091))

(assert (=> start!147426 e!1013095))

(assert (= (and start!147426 res!702943) b!1577176))

(assert (= (and b!1577176 res!702938) b!1577174))

(assert (= (and b!1577174 res!702945) b!1577183))

(assert (= (and b!1577183 res!702941) b!1577179))

(assert (= (and b!1577179 res!702939) b!1577178))

(assert (= (and b!1577178 res!702942) b!1577169))

(assert (= (and b!1577169 res!702940) b!1577180))

(assert (= (and b!1577180 (not res!702937)) b!1577177))

(assert (= (and b!1577177 (not res!702944)) b!1577172))

(assert (= b!1577171 b!1577182))

(assert (= b!1577170 b!1577171))

(assert (= (and start!147426 ((_ is Cons!17286) rules!1846)) b!1577170))

(assert (= b!1577181 b!1577184))

(assert (= b!1577175 b!1577181))

(assert (= b!1577173 b!1577175))

(assert (= (and start!147426 ((_ is Cons!17285) tokens!457)) b!1577173))

(declare-fun m!1858061 () Bool)

(assert (=> b!1577183 m!1858061))

(declare-fun m!1858063 () Bool)

(assert (=> b!1577181 m!1858063))

(declare-fun m!1858065 () Bool)

(assert (=> b!1577181 m!1858065))

(declare-fun m!1858067 () Bool)

(assert (=> b!1577179 m!1858067))

(declare-fun m!1858069 () Bool)

(assert (=> b!1577177 m!1858069))

(declare-fun m!1858071 () Bool)

(assert (=> b!1577177 m!1858071))

(declare-fun m!1858073 () Bool)

(assert (=> b!1577177 m!1858073))

(declare-fun m!1858075 () Bool)

(assert (=> b!1577177 m!1858075))

(declare-fun m!1858077 () Bool)

(assert (=> b!1577177 m!1858077))

(assert (=> b!1577177 m!1858073))

(assert (=> b!1577177 m!1858075))

(declare-fun m!1858079 () Bool)

(assert (=> b!1577173 m!1858079))

(declare-fun m!1858081 () Bool)

(assert (=> b!1577172 m!1858081))

(declare-fun m!1858083 () Bool)

(assert (=> b!1577176 m!1858083))

(declare-fun m!1858085 () Bool)

(assert (=> b!1577174 m!1858085))

(declare-fun m!1858087 () Bool)

(assert (=> b!1577169 m!1858087))

(declare-fun m!1858089 () Bool)

(assert (=> b!1577169 m!1858089))

(declare-fun m!1858091 () Bool)

(assert (=> b!1577169 m!1858091))

(declare-fun m!1858093 () Bool)

(assert (=> b!1577169 m!1858093))

(declare-fun m!1858095 () Bool)

(assert (=> b!1577169 m!1858095))

(declare-fun m!1858097 () Bool)

(assert (=> b!1577169 m!1858097))

(assert (=> b!1577169 m!1858091))

(declare-fun m!1858099 () Bool)

(assert (=> b!1577169 m!1858099))

(declare-fun m!1858101 () Bool)

(assert (=> b!1577169 m!1858101))

(declare-fun m!1858103 () Bool)

(assert (=> b!1577169 m!1858103))

(assert (=> b!1577169 m!1858095))

(declare-fun m!1858105 () Bool)

(assert (=> b!1577169 m!1858105))

(declare-fun m!1858107 () Bool)

(assert (=> b!1577171 m!1858107))

(declare-fun m!1858109 () Bool)

(assert (=> b!1577171 m!1858109))

(declare-fun m!1858111 () Bool)

(assert (=> b!1577175 m!1858111))

(declare-fun m!1858113 () Bool)

(assert (=> b!1577180 m!1858113))

(declare-fun m!1858115 () Bool)

(assert (=> b!1577180 m!1858115))

(declare-fun m!1858117 () Bool)

(assert (=> b!1577180 m!1858117))

(declare-fun m!1858119 () Bool)

(assert (=> b!1577180 m!1858119))

(check-sat (not b!1577177) b_and!110417 (not b_next!43191) (not b!1577180) b_and!110419 (not b!1577183) (not b!1577175) (not b!1577169) (not b!1577172) (not b!1577170) (not b_next!43195) (not b!1577176) (not b!1577174) (not b!1577173) (not b_next!43193) (not b!1577181) b_and!110413 (not b_next!43197) (not b!1577171) (not b!1577179) b_and!110415)
(check-sat b_and!110417 (not b_next!43191) b_and!110419 (not b_next!43193) b_and!110413 (not b_next!43195) (not b_next!43197) b_and!110415)
