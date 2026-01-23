; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!148946 () Bool)

(assert start!148946)

(declare-fun b!1585941 () Bool)

(declare-fun b_free!42871 () Bool)

(declare-fun b_next!43575 () Bool)

(assert (=> b!1585941 (= b_free!42871 (not b_next!43575))))

(declare-fun tp!466279 () Bool)

(declare-fun b_and!111189 () Bool)

(assert (=> b!1585941 (= tp!466279 b_and!111189)))

(declare-fun b_free!42873 () Bool)

(declare-fun b_next!43577 () Bool)

(assert (=> b!1585941 (= b_free!42873 (not b_next!43577))))

(declare-fun tp!466281 () Bool)

(declare-fun b_and!111191 () Bool)

(assert (=> b!1585941 (= tp!466281 b_and!111191)))

(declare-fun b!1585939 () Bool)

(declare-fun b_free!42875 () Bool)

(declare-fun b_next!43579 () Bool)

(assert (=> b!1585939 (= b_free!42875 (not b_next!43579))))

(declare-fun tp!466284 () Bool)

(declare-fun b_and!111193 () Bool)

(assert (=> b!1585939 (= tp!466284 b_and!111193)))

(declare-fun b_free!42877 () Bool)

(declare-fun b_next!43581 () Bool)

(assert (=> b!1585939 (= b_free!42877 (not b_next!43581))))

(declare-fun tp!466283 () Bool)

(declare-fun b_and!111195 () Bool)

(assert (=> b!1585939 (= tp!466283 b_and!111195)))

(declare-fun b!1585935 () Bool)

(declare-fun e!1018647 () Bool)

(declare-fun e!1018645 () Bool)

(assert (=> b!1585935 (= e!1018647 e!1018645)))

(declare-fun res!707250 () Bool)

(assert (=> b!1585935 (=> res!707250 e!1018645)))

(declare-datatypes ((List!17495 0))(
  ( (Nil!17425) (Cons!17425 (h!22826 (_ BitVec 16)) (t!144206 List!17495)) )
))
(declare-datatypes ((TokenValue!3161 0))(
  ( (FloatLiteralValue!6322 (text!22572 List!17495)) (TokenValueExt!3160 (__x!11624 Int)) (Broken!15805 (value!97170 List!17495)) (Object!3230) (End!3161) (Def!3161) (Underscore!3161) (Match!3161) (Else!3161) (Error!3161) (Case!3161) (If!3161) (Extends!3161) (Abstract!3161) (Class!3161) (Val!3161) (DelimiterValue!6322 (del!3221 List!17495)) (KeywordValue!3167 (value!97171 List!17495)) (CommentValue!6322 (value!97172 List!17495)) (WhitespaceValue!6322 (value!97173 List!17495)) (IndentationValue!3161 (value!97174 List!17495)) (String!20136) (Int32!3161) (Broken!15806 (value!97175 List!17495)) (Boolean!3162) (Unit!27328) (OperatorValue!3164 (op!3221 List!17495)) (IdentifierValue!6322 (value!97176 List!17495)) (IdentifierValue!6323 (value!97177 List!17495)) (WhitespaceValue!6323 (value!97178 List!17495)) (True!6322) (False!6322) (Broken!15807 (value!97179 List!17495)) (Broken!15808 (value!97180 List!17495)) (True!6323) (RightBrace!3161) (RightBracket!3161) (Colon!3161) (Null!3161) (Comma!3161) (LeftBracket!3161) (False!6323) (LeftBrace!3161) (ImaginaryLiteralValue!3161 (text!22573 List!17495)) (StringLiteralValue!9483 (value!97181 List!17495)) (EOFValue!3161 (value!97182 List!17495)) (IdentValue!3161 (value!97183 List!17495)) (DelimiterValue!6323 (value!97184 List!17495)) (DedentValue!3161 (value!97185 List!17495)) (NewLineValue!3161 (value!97186 List!17495)) (IntegerValue!9483 (value!97187 (_ BitVec 32)) (text!22574 List!17495)) (IntegerValue!9484 (value!97188 Int) (text!22575 List!17495)) (Times!3161) (Or!3161) (Equal!3161) (Minus!3161) (Broken!15809 (value!97189 List!17495)) (And!3161) (Div!3161) (LessEqual!3161) (Mod!3161) (Concat!7560) (Not!3161) (Plus!3161) (SpaceValue!3161 (value!97190 List!17495)) (IntegerValue!9485 (value!97191 Int) (text!22576 List!17495)) (StringLiteralValue!9484 (text!22577 List!17495)) (FloatLiteralValue!6323 (text!22578 List!17495)) (BytesLiteralValue!3161 (value!97192 List!17495)) (CommentValue!6323 (value!97193 List!17495)) (StringLiteralValue!9485 (value!97194 List!17495)) (ErrorTokenValue!3161 (msg!3222 List!17495)) )
))
(declare-datatypes ((C!8972 0))(
  ( (C!8973 (val!5082 Int)) )
))
(declare-datatypes ((List!17496 0))(
  ( (Nil!17426) (Cons!17426 (h!22827 C!8972) (t!144207 List!17496)) )
))
(declare-datatypes ((IArray!11585 0))(
  ( (IArray!11586 (innerList!5850 List!17496)) )
))
(declare-datatypes ((Conc!5790 0))(
  ( (Node!5790 (left!14075 Conc!5790) (right!14405 Conc!5790) (csize!11810 Int) (cheight!6001 Int)) (Leaf!8546 (xs!8598 IArray!11585) (csize!11811 Int)) (Empty!5790) )
))
(declare-datatypes ((BalanceConc!11524 0))(
  ( (BalanceConc!11525 (c!257077 Conc!5790)) )
))
(declare-datatypes ((Regex!4399 0))(
  ( (ElementMatch!4399 (c!257078 C!8972)) (Concat!7561 (regOne!9310 Regex!4399) (regTwo!9310 Regex!4399)) (EmptyExpr!4399) (Star!4399 (reg!4728 Regex!4399)) (EmptyLang!4399) (Union!4399 (regOne!9311 Regex!4399) (regTwo!9311 Regex!4399)) )
))
(declare-datatypes ((String!20137 0))(
  ( (String!20138 (value!97195 String)) )
))
(declare-datatypes ((TokenValueInjection!5982 0))(
  ( (TokenValueInjection!5983 (toValue!4482 Int) (toChars!4341 Int)) )
))
(declare-datatypes ((Rule!5942 0))(
  ( (Rule!5943 (regex!3071 Regex!4399) (tag!3341 String!20137) (isSeparator!3071 Bool) (transformation!3071 TokenValueInjection!5982)) )
))
(declare-datatypes ((Token!5708 0))(
  ( (Token!5709 (value!97196 TokenValue!3161) (rule!4875 Rule!5942) (size!14020 Int) (originalCharacters!3885 List!17496)) )
))
(declare-datatypes ((tuple2!16912 0))(
  ( (tuple2!16913 (_1!9858 Token!5708) (_2!9858 List!17496)) )
))
(declare-datatypes ((Option!3136 0))(
  ( (None!3135) (Some!3135 (v!24004 tuple2!16912)) )
))
(declare-fun lt!558146 () Option!3136)

(declare-fun isDefined!2511 (Option!3136) Bool)

(assert (=> b!1585935 (= res!707250 (not (isDefined!2511 lt!558146)))))

(declare-fun lt!558130 () List!17496)

(declare-datatypes ((Unit!27329 0))(
  ( (Unit!27330) )
))
(declare-fun lt!558141 () Unit!27329)

(declare-datatypes ((List!17497 0))(
  ( (Nil!17427) (Cons!17427 (h!22828 Rule!5942) (t!144208 List!17497)) )
))
(declare-fun rules!1846 () List!17497)

(declare-datatypes ((LexerInterface!2700 0))(
  ( (LexerInterfaceExt!2697 (__x!11625 Int)) (Lexer!2698) )
))
(declare-fun thiss!17113 () LexerInterface!2700)

(declare-fun lt!558147 () List!17496)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!274 (LexerInterface!2700 List!17497 List!17496 List!17496) Unit!27329)

(assert (=> b!1585935 (= lt!558141 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!274 thiss!17113 rules!1846 lt!558130 lt!558147))))

(declare-fun b!1585936 () Bool)

(declare-fun e!1018652 () Bool)

(declare-fun e!1018648 () Bool)

(assert (=> b!1585936 (= e!1018652 (not e!1018648))))

(declare-fun res!707253 () Bool)

(assert (=> b!1585936 (=> res!707253 e!1018648)))

(declare-datatypes ((List!17498 0))(
  ( (Nil!17428) (Cons!17428 (h!22829 Token!5708) (t!144209 List!17498)) )
))
(declare-fun lt!558148 () List!17498)

(declare-fun tokens!457 () List!17498)

(assert (=> b!1585936 (= res!707253 (not (= lt!558148 (t!144209 tokens!457))))))

(declare-datatypes ((IArray!11587 0))(
  ( (IArray!11588 (innerList!5851 List!17498)) )
))
(declare-datatypes ((Conc!5791 0))(
  ( (Node!5791 (left!14076 Conc!5791) (right!14406 Conc!5791) (csize!11812 Int) (cheight!6002 Int)) (Leaf!8547 (xs!8599 IArray!11587) (csize!11813 Int)) (Empty!5791) )
))
(declare-datatypes ((BalanceConc!11526 0))(
  ( (BalanceConc!11527 (c!257079 Conc!5791)) )
))
(declare-datatypes ((tuple2!16914 0))(
  ( (tuple2!16915 (_1!9859 BalanceConc!11526) (_2!9859 BalanceConc!11524)) )
))
(declare-fun lt!558143 () tuple2!16914)

(declare-fun list!6759 (BalanceConc!11526) List!17498)

(assert (=> b!1585936 (= lt!558148 (list!6759 (_1!9859 lt!558143)))))

(declare-fun lt!558133 () Unit!27329)

(declare-fun theoremInvertabilityWhenTokenListSeparable!145 (LexerInterface!2700 List!17497 List!17498) Unit!27329)

(assert (=> b!1585936 (= lt!558133 (theoremInvertabilityWhenTokenListSeparable!145 thiss!17113 rules!1846 (t!144209 tokens!457)))))

(declare-fun lt!558138 () List!17496)

(declare-fun isPrefix!1331 (List!17496 List!17496) Bool)

(assert (=> b!1585936 (isPrefix!1331 lt!558130 lt!558138)))

(declare-fun lt!558132 () Unit!27329)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!856 (List!17496 List!17496) Unit!27329)

(assert (=> b!1585936 (= lt!558132 (lemmaConcatTwoListThenFirstIsPrefix!856 lt!558130 lt!558147))))

(declare-fun e!1018639 () Bool)

(declare-fun tp!466278 () Bool)

(declare-fun b!1585937 () Bool)

(declare-fun e!1018646 () Bool)

(declare-fun inv!22845 (Token!5708) Bool)

(assert (=> b!1585937 (= e!1018646 (and (inv!22845 (h!22829 tokens!457)) e!1018639 tp!466278))))

(declare-fun b!1585938 () Bool)

(declare-fun e!1018640 () Bool)

(declare-fun e!1018649 () Bool)

(declare-fun tp!466282 () Bool)

(assert (=> b!1585938 (= e!1018640 (and e!1018649 tp!466282))))

(declare-fun e!1018653 () Bool)

(assert (=> b!1585939 (= e!1018653 (and tp!466284 tp!466283))))

(declare-fun b!1585940 () Bool)

(declare-fun res!707258 () Bool)

(declare-fun e!1018641 () Bool)

(assert (=> b!1585940 (=> (not res!707258) (not e!1018641))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!393 (LexerInterface!2700 List!17498 List!17497) Bool)

(assert (=> b!1585940 (= res!707258 (tokensListTwoByTwoPredicateSeparableList!393 thiss!17113 tokens!457 rules!1846))))

(declare-fun e!1018651 () Bool)

(assert (=> b!1585941 (= e!1018651 (and tp!466279 tp!466281))))

(declare-fun res!707262 () Bool)

(assert (=> start!148946 (=> (not res!707262) (not e!1018641))))

(get-info :version)

(assert (=> start!148946 (= res!707262 ((_ is Lexer!2698) thiss!17113))))

(assert (=> start!148946 e!1018641))

(assert (=> start!148946 true))

(assert (=> start!148946 e!1018640))

(assert (=> start!148946 e!1018646))

(declare-fun b!1585942 () Bool)

(declare-fun res!707251 () Bool)

(assert (=> b!1585942 (=> res!707251 e!1018647)))

(declare-fun isEmpty!10446 (BalanceConc!11526) Bool)

(declare-fun lex!1184 (LexerInterface!2700 List!17497 BalanceConc!11524) tuple2!16914)

(declare-fun seqFromList!1891 (List!17496) BalanceConc!11524)

(assert (=> b!1585942 (= res!707251 (isEmpty!10446 (_1!9859 (lex!1184 thiss!17113 rules!1846 (seqFromList!1891 lt!558130)))))))

(declare-fun b!1585943 () Bool)

(declare-fun res!707260 () Bool)

(assert (=> b!1585943 (=> res!707260 e!1018647)))

(declare-fun rulesProduceIndividualToken!1352 (LexerInterface!2700 List!17497 Token!5708) Bool)

(assert (=> b!1585943 (= res!707260 (not (rulesProduceIndividualToken!1352 thiss!17113 rules!1846 (h!22829 tokens!457))))))

(declare-fun b!1585944 () Bool)

(declare-fun rulesValidInductive!920 (LexerInterface!2700 List!17497) Bool)

(assert (=> b!1585944 (= e!1018645 (rulesValidInductive!920 thiss!17113 rules!1846))))

(declare-fun b!1585945 () Bool)

(declare-fun res!707261 () Bool)

(assert (=> b!1585945 (=> res!707261 e!1018645)))

(declare-fun lt!558150 () BalanceConc!11524)

(declare-fun prefixMatchZipperSequence!417 (Regex!4399 BalanceConc!11524) Bool)

(declare-fun rulesRegex!461 (LexerInterface!2700 List!17497) Regex!4399)

(declare-fun ++!4543 (BalanceConc!11524 BalanceConc!11524) BalanceConc!11524)

(declare-fun singletonSeq!1420 (C!8972) BalanceConc!11524)

(declare-fun apply!4254 (BalanceConc!11524 Int) C!8972)

(declare-fun charsOf!1720 (Token!5708) BalanceConc!11524)

(assert (=> b!1585945 (= res!707261 (prefixMatchZipperSequence!417 (rulesRegex!461 thiss!17113 rules!1846) (++!4543 lt!558150 (singletonSeq!1420 (apply!4254 (charsOf!1720 (h!22829 (t!144209 tokens!457))) 0)))))))

(declare-fun b!1585946 () Bool)

(declare-fun res!707259 () Bool)

(assert (=> b!1585946 (=> (not res!707259) (not e!1018641))))

(declare-fun isEmpty!10447 (List!17497) Bool)

(assert (=> b!1585946 (= res!707259 (not (isEmpty!10447 rules!1846)))))

(declare-fun b!1585947 () Bool)

(declare-fun e!1018642 () Bool)

(assert (=> b!1585947 (= e!1018642 e!1018647)))

(declare-fun res!707264 () Bool)

(assert (=> b!1585947 (=> res!707264 e!1018647)))

(declare-fun lt!558144 () List!17496)

(declare-fun lt!558142 () List!17496)

(assert (=> b!1585947 (= res!707264 (or (not (= lt!558144 lt!558142)) (not (= lt!558142 lt!558130)) (not (= lt!558144 lt!558130))))))

(declare-fun printList!815 (LexerInterface!2700 List!17498) List!17496)

(assert (=> b!1585947 (= lt!558142 (printList!815 thiss!17113 (Cons!17428 (h!22829 tokens!457) Nil!17428)))))

(declare-fun lt!558145 () BalanceConc!11524)

(declare-fun list!6760 (BalanceConc!11524) List!17496)

(assert (=> b!1585947 (= lt!558144 (list!6760 lt!558145))))

(declare-fun lt!558135 () BalanceConc!11526)

(declare-fun printTailRec!753 (LexerInterface!2700 BalanceConc!11526 Int BalanceConc!11524) BalanceConc!11524)

(assert (=> b!1585947 (= lt!558145 (printTailRec!753 thiss!17113 lt!558135 0 (BalanceConc!11525 Empty!5790)))))

(declare-fun print!1231 (LexerInterface!2700 BalanceConc!11526) BalanceConc!11524)

(assert (=> b!1585947 (= lt!558145 (print!1231 thiss!17113 lt!558135))))

(declare-fun singletonSeq!1421 (Token!5708) BalanceConc!11526)

(assert (=> b!1585947 (= lt!558135 (singletonSeq!1421 (h!22829 tokens!457)))))

(declare-fun lt!558136 () List!17496)

(declare-fun maxPrefix!1264 (LexerInterface!2700 List!17497 List!17496) Option!3136)

(assert (=> b!1585947 (= lt!558146 (maxPrefix!1264 thiss!17113 rules!1846 lt!558136))))

(declare-fun b!1585948 () Bool)

(assert (=> b!1585948 (= e!1018641 e!1018652)))

(declare-fun res!707252 () Bool)

(assert (=> b!1585948 (=> (not res!707252) (not e!1018652))))

(assert (=> b!1585948 (= res!707252 (= lt!558136 lt!558138))))

(declare-fun ++!4544 (List!17496 List!17496) List!17496)

(assert (=> b!1585948 (= lt!558138 (++!4544 lt!558130 lt!558147))))

(declare-fun lt!558140 () BalanceConc!11524)

(assert (=> b!1585948 (= lt!558136 (list!6760 lt!558140))))

(declare-fun lt!558137 () BalanceConc!11524)

(assert (=> b!1585948 (= lt!558147 (list!6760 lt!558137))))

(assert (=> b!1585948 (= lt!558130 (list!6760 lt!558150))))

(assert (=> b!1585948 (= lt!558150 (charsOf!1720 (h!22829 tokens!457)))))

(assert (=> b!1585948 (= lt!558143 (lex!1184 thiss!17113 rules!1846 lt!558137))))

(declare-fun lt!558149 () BalanceConc!11526)

(assert (=> b!1585948 (= lt!558137 (print!1231 thiss!17113 lt!558149))))

(declare-fun seqFromList!1892 (List!17498) BalanceConc!11526)

(assert (=> b!1585948 (= lt!558149 (seqFromList!1892 (t!144209 tokens!457)))))

(assert (=> b!1585948 (= lt!558140 (print!1231 thiss!17113 (seqFromList!1892 tokens!457)))))

(declare-fun b!1585949 () Bool)

(declare-fun res!707263 () Bool)

(assert (=> b!1585949 (=> res!707263 e!1018642)))

(declare-fun separableTokensPredicate!642 (LexerInterface!2700 Token!5708 Token!5708 List!17497) Bool)

(assert (=> b!1585949 (= res!707263 (not (separableTokensPredicate!642 thiss!17113 (h!22829 tokens!457) (h!22829 (t!144209 tokens!457)) rules!1846)))))

(declare-fun b!1585950 () Bool)

(declare-fun res!707257 () Bool)

(assert (=> b!1585950 (=> (not res!707257) (not e!1018641))))

(declare-fun rulesProduceEachTokenIndividuallyList!902 (LexerInterface!2700 List!17497 List!17498) Bool)

(assert (=> b!1585950 (= res!707257 (rulesProduceEachTokenIndividuallyList!902 thiss!17113 rules!1846 tokens!457))))

(declare-fun tp!466286 () Bool)

(declare-fun b!1585951 () Bool)

(declare-fun e!1018643 () Bool)

(declare-fun inv!22842 (String!20137) Bool)

(declare-fun inv!22846 (TokenValueInjection!5982) Bool)

(assert (=> b!1585951 (= e!1018643 (and tp!466286 (inv!22842 (tag!3341 (rule!4875 (h!22829 tokens!457)))) (inv!22846 (transformation!3071 (rule!4875 (h!22829 tokens!457)))) e!1018653))))

(declare-fun b!1585952 () Bool)

(declare-fun res!707254 () Bool)

(assert (=> b!1585952 (=> (not res!707254) (not e!1018641))))

(assert (=> b!1585952 (= res!707254 (and (not ((_ is Nil!17428) tokens!457)) (not ((_ is Nil!17428) (t!144209 tokens!457)))))))

(declare-fun tp!466285 () Bool)

(declare-fun b!1585953 () Bool)

(assert (=> b!1585953 (= e!1018649 (and tp!466285 (inv!22842 (tag!3341 (h!22828 rules!1846))) (inv!22846 (transformation!3071 (h!22828 rules!1846))) e!1018651))))

(declare-fun b!1585954 () Bool)

(declare-fun tp!466280 () Bool)

(declare-fun inv!21 (TokenValue!3161) Bool)

(assert (=> b!1585954 (= e!1018639 (and (inv!21 (value!97196 (h!22829 tokens!457))) e!1018643 tp!466280))))

(declare-fun b!1585955 () Bool)

(declare-fun res!707255 () Bool)

(assert (=> b!1585955 (=> (not res!707255) (not e!1018641))))

(declare-fun rulesInvariant!2369 (LexerInterface!2700 List!17497) Bool)

(assert (=> b!1585955 (= res!707255 (rulesInvariant!2369 thiss!17113 rules!1846))))

(declare-fun b!1585956 () Bool)

(assert (=> b!1585956 (= e!1018648 e!1018642)))

(declare-fun res!707256 () Bool)

(assert (=> b!1585956 (=> res!707256 e!1018642)))

(declare-fun lt!558131 () List!17498)

(declare-fun lt!558134 () List!17498)

(assert (=> b!1585956 (= res!707256 (or (not (= lt!558148 lt!558131)) (not (= lt!558131 lt!558134))))))

(assert (=> b!1585956 (= lt!558131 (list!6759 lt!558149))))

(assert (=> b!1585956 (= lt!558148 lt!558134)))

(declare-fun prepend!555 (BalanceConc!11526 Token!5708) BalanceConc!11526)

(assert (=> b!1585956 (= lt!558134 (list!6759 (prepend!555 (seqFromList!1892 (t!144209 (t!144209 tokens!457))) (h!22829 (t!144209 tokens!457)))))))

(declare-fun lt!558139 () Unit!27329)

(declare-fun seqFromListBHdTlConstructive!148 (Token!5708 List!17498 BalanceConc!11526) Unit!27329)

(assert (=> b!1585956 (= lt!558139 (seqFromListBHdTlConstructive!148 (h!22829 (t!144209 tokens!457)) (t!144209 (t!144209 tokens!457)) (_1!9859 lt!558143)))))

(assert (= (and start!148946 res!707262) b!1585946))

(assert (= (and b!1585946 res!707259) b!1585955))

(assert (= (and b!1585955 res!707255) b!1585950))

(assert (= (and b!1585950 res!707257) b!1585940))

(assert (= (and b!1585940 res!707258) b!1585952))

(assert (= (and b!1585952 res!707254) b!1585948))

(assert (= (and b!1585948 res!707252) b!1585936))

(assert (= (and b!1585936 (not res!707253)) b!1585956))

(assert (= (and b!1585956 (not res!707256)) b!1585949))

(assert (= (and b!1585949 (not res!707263)) b!1585947))

(assert (= (and b!1585947 (not res!707264)) b!1585943))

(assert (= (and b!1585943 (not res!707260)) b!1585942))

(assert (= (and b!1585942 (not res!707251)) b!1585935))

(assert (= (and b!1585935 (not res!707250)) b!1585945))

(assert (= (and b!1585945 (not res!707261)) b!1585944))

(assert (= b!1585953 b!1585941))

(assert (= b!1585938 b!1585953))

(assert (= (and start!148946 ((_ is Cons!17427) rules!1846)) b!1585938))

(assert (= b!1585951 b!1585939))

(assert (= b!1585954 b!1585951))

(assert (= b!1585937 b!1585954))

(assert (= (and start!148946 ((_ is Cons!17428) tokens!457)) b!1585937))

(declare-fun m!1875067 () Bool)

(assert (=> b!1585945 m!1875067))

(assert (=> b!1585945 m!1875067))

(declare-fun m!1875069 () Bool)

(assert (=> b!1585945 m!1875069))

(declare-fun m!1875071 () Bool)

(assert (=> b!1585945 m!1875071))

(declare-fun m!1875073 () Bool)

(assert (=> b!1585945 m!1875073))

(declare-fun m!1875075 () Bool)

(assert (=> b!1585945 m!1875075))

(assert (=> b!1585945 m!1875075))

(assert (=> b!1585945 m!1875069))

(declare-fun m!1875077 () Bool)

(assert (=> b!1585945 m!1875077))

(assert (=> b!1585945 m!1875073))

(assert (=> b!1585945 m!1875077))

(declare-fun m!1875079 () Bool)

(assert (=> b!1585946 m!1875079))

(declare-fun m!1875081 () Bool)

(assert (=> b!1585953 m!1875081))

(declare-fun m!1875083 () Bool)

(assert (=> b!1585953 m!1875083))

(declare-fun m!1875085 () Bool)

(assert (=> b!1585937 m!1875085))

(declare-fun m!1875087 () Bool)

(assert (=> b!1585942 m!1875087))

(assert (=> b!1585942 m!1875087))

(declare-fun m!1875089 () Bool)

(assert (=> b!1585942 m!1875089))

(declare-fun m!1875091 () Bool)

(assert (=> b!1585942 m!1875091))

(declare-fun m!1875093 () Bool)

(assert (=> b!1585943 m!1875093))

(declare-fun m!1875095 () Bool)

(assert (=> b!1585949 m!1875095))

(declare-fun m!1875097 () Bool)

(assert (=> b!1585950 m!1875097))

(declare-fun m!1875099 () Bool)

(assert (=> b!1585935 m!1875099))

(declare-fun m!1875101 () Bool)

(assert (=> b!1585935 m!1875101))

(declare-fun m!1875103 () Bool)

(assert (=> b!1585955 m!1875103))

(declare-fun m!1875105 () Bool)

(assert (=> b!1585951 m!1875105))

(declare-fun m!1875107 () Bool)

(assert (=> b!1585951 m!1875107))

(declare-fun m!1875109 () Bool)

(assert (=> b!1585948 m!1875109))

(declare-fun m!1875111 () Bool)

(assert (=> b!1585948 m!1875111))

(declare-fun m!1875113 () Bool)

(assert (=> b!1585948 m!1875113))

(declare-fun m!1875115 () Bool)

(assert (=> b!1585948 m!1875115))

(assert (=> b!1585948 m!1875111))

(declare-fun m!1875117 () Bool)

(assert (=> b!1585948 m!1875117))

(declare-fun m!1875119 () Bool)

(assert (=> b!1585948 m!1875119))

(declare-fun m!1875121 () Bool)

(assert (=> b!1585948 m!1875121))

(declare-fun m!1875123 () Bool)

(assert (=> b!1585948 m!1875123))

(declare-fun m!1875125 () Bool)

(assert (=> b!1585948 m!1875125))

(declare-fun m!1875127 () Bool)

(assert (=> b!1585948 m!1875127))

(declare-fun m!1875129 () Bool)

(assert (=> b!1585947 m!1875129))

(declare-fun m!1875131 () Bool)

(assert (=> b!1585947 m!1875131))

(declare-fun m!1875133 () Bool)

(assert (=> b!1585947 m!1875133))

(declare-fun m!1875135 () Bool)

(assert (=> b!1585947 m!1875135))

(declare-fun m!1875137 () Bool)

(assert (=> b!1585947 m!1875137))

(declare-fun m!1875139 () Bool)

(assert (=> b!1585947 m!1875139))

(declare-fun m!1875141 () Bool)

(assert (=> b!1585956 m!1875141))

(declare-fun m!1875143 () Bool)

(assert (=> b!1585956 m!1875143))

(declare-fun m!1875145 () Bool)

(assert (=> b!1585956 m!1875145))

(declare-fun m!1875147 () Bool)

(assert (=> b!1585956 m!1875147))

(declare-fun m!1875149 () Bool)

(assert (=> b!1585956 m!1875149))

(assert (=> b!1585956 m!1875145))

(assert (=> b!1585956 m!1875147))

(declare-fun m!1875151 () Bool)

(assert (=> b!1585940 m!1875151))

(declare-fun m!1875153 () Bool)

(assert (=> b!1585954 m!1875153))

(declare-fun m!1875155 () Bool)

(assert (=> b!1585936 m!1875155))

(declare-fun m!1875157 () Bool)

(assert (=> b!1585936 m!1875157))

(declare-fun m!1875159 () Bool)

(assert (=> b!1585936 m!1875159))

(declare-fun m!1875161 () Bool)

(assert (=> b!1585936 m!1875161))

(declare-fun m!1875163 () Bool)

(assert (=> b!1585944 m!1875163))

(check-sat (not b_next!43577) (not b!1585940) (not b!1585946) b_and!111191 (not b_next!43575) (not b!1585942) (not b!1585947) (not b!1585948) (not b!1585943) (not b_next!43581) (not b!1585945) (not b_next!43579) b_and!111193 (not b!1585951) (not b!1585953) (not b!1585950) (not b!1585949) (not b!1585954) (not b!1585936) (not b!1585944) b_and!111195 (not b!1585938) (not b!1585955) (not b!1585956) (not b!1585935) b_and!111189 (not b!1585937))
(check-sat (not b_next!43577) b_and!111191 b_and!111195 (not b_next!43575) (not b_next!43581) (not b_next!43579) b_and!111189 b_and!111193)
(get-model)

(declare-fun d!471868 () Bool)

(assert (=> d!471868 (= (separableTokensPredicate!642 thiss!17113 (h!22829 tokens!457) (h!22829 (t!144209 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!417 (rulesRegex!461 thiss!17113 rules!1846) (++!4543 (charsOf!1720 (h!22829 tokens!457)) (singletonSeq!1420 (apply!4254 (charsOf!1720 (h!22829 (t!144209 tokens!457))) 0))))))))

(declare-fun bs!391397 () Bool)

(assert (= bs!391397 d!471868))

(assert (=> bs!391397 m!1875117))

(assert (=> bs!391397 m!1875075))

(declare-fun m!1875183 () Bool)

(assert (=> bs!391397 m!1875183))

(assert (=> bs!391397 m!1875067))

(assert (=> bs!391397 m!1875073))

(assert (=> bs!391397 m!1875075))

(assert (=> bs!391397 m!1875077))

(assert (=> bs!391397 m!1875073))

(assert (=> bs!391397 m!1875117))

(assert (=> bs!391397 m!1875077))

(assert (=> bs!391397 m!1875067))

(assert (=> bs!391397 m!1875183))

(declare-fun m!1875185 () Bool)

(assert (=> bs!391397 m!1875185))

(assert (=> b!1585949 d!471868))

(declare-fun b!1586063 () Bool)

(declare-fun e!1018724 () Bool)

(assert (=> b!1586063 (= e!1018724 true)))

(declare-fun b!1586062 () Bool)

(declare-fun e!1018723 () Bool)

(assert (=> b!1586062 (= e!1018723 e!1018724)))

(declare-fun b!1586061 () Bool)

(declare-fun e!1018722 () Bool)

(assert (=> b!1586061 (= e!1018722 e!1018723)))

(declare-fun d!471870 () Bool)

(assert (=> d!471870 e!1018722))

(assert (= b!1586062 b!1586063))

(assert (= b!1586061 b!1586062))

(assert (= (and d!471870 ((_ is Cons!17427) rules!1846)) b!1586061))

(declare-fun order!10291 () Int)

(declare-fun order!10289 () Int)

(declare-fun lambda!66580 () Int)

(declare-fun dynLambda!7740 (Int Int) Int)

(declare-fun dynLambda!7741 (Int Int) Int)

(assert (=> b!1586063 (< (dynLambda!7740 order!10289 (toValue!4482 (transformation!3071 (h!22828 rules!1846)))) (dynLambda!7741 order!10291 lambda!66580))))

(declare-fun order!10293 () Int)

(declare-fun dynLambda!7742 (Int Int) Int)

(assert (=> b!1586063 (< (dynLambda!7742 order!10293 (toChars!4341 (transformation!3071 (h!22828 rules!1846)))) (dynLambda!7741 order!10291 lambda!66580))))

(assert (=> d!471870 true))

(declare-fun lt!558299 () Bool)

(declare-fun forall!4006 (List!17498 Int) Bool)

(assert (=> d!471870 (= lt!558299 (forall!4006 tokens!457 lambda!66580))))

(declare-fun e!1018712 () Bool)

(assert (=> d!471870 (= lt!558299 e!1018712)))

(declare-fun res!707339 () Bool)

(assert (=> d!471870 (=> res!707339 e!1018712)))

(assert (=> d!471870 (= res!707339 (not ((_ is Cons!17428) tokens!457)))))

(assert (=> d!471870 (not (isEmpty!10447 rules!1846))))

(assert (=> d!471870 (= (rulesProduceEachTokenIndividuallyList!902 thiss!17113 rules!1846 tokens!457) lt!558299)))

(declare-fun b!1586048 () Bool)

(declare-fun e!1018711 () Bool)

(assert (=> b!1586048 (= e!1018712 e!1018711)))

(declare-fun res!707340 () Bool)

(assert (=> b!1586048 (=> (not res!707340) (not e!1018711))))

(assert (=> b!1586048 (= res!707340 (rulesProduceIndividualToken!1352 thiss!17113 rules!1846 (h!22829 tokens!457)))))

(declare-fun b!1586049 () Bool)

(assert (=> b!1586049 (= e!1018711 (rulesProduceEachTokenIndividuallyList!902 thiss!17113 rules!1846 (t!144209 tokens!457)))))

(assert (= (and d!471870 (not res!707339)) b!1586048))

(assert (= (and b!1586048 res!707340) b!1586049))

(declare-fun m!1875423 () Bool)

(assert (=> d!471870 m!1875423))

(assert (=> d!471870 m!1875079))

(assert (=> b!1586048 m!1875093))

(declare-fun m!1875425 () Bool)

(assert (=> b!1586049 m!1875425))

(assert (=> b!1585950 d!471870))

(declare-fun d!471914 () Bool)

(declare-fun res!707352 () Bool)

(declare-fun e!1018738 () Bool)

(assert (=> d!471914 (=> res!707352 e!1018738)))

(assert (=> d!471914 (= res!707352 (or (not ((_ is Cons!17428) tokens!457)) (not ((_ is Cons!17428) (t!144209 tokens!457)))))))

(assert (=> d!471914 (= (tokensListTwoByTwoPredicateSeparableList!393 thiss!17113 tokens!457 rules!1846) e!1018738)))

(declare-fun b!1586085 () Bool)

(declare-fun e!1018739 () Bool)

(assert (=> b!1586085 (= e!1018738 e!1018739)))

(declare-fun res!707351 () Bool)

(assert (=> b!1586085 (=> (not res!707351) (not e!1018739))))

(assert (=> b!1586085 (= res!707351 (separableTokensPredicate!642 thiss!17113 (h!22829 tokens!457) (h!22829 (t!144209 tokens!457)) rules!1846))))

(declare-fun lt!558316 () Unit!27329)

(declare-fun Unit!27345 () Unit!27329)

(assert (=> b!1586085 (= lt!558316 Unit!27345)))

(declare-fun size!14024 (BalanceConc!11524) Int)

(assert (=> b!1586085 (> (size!14024 (charsOf!1720 (h!22829 (t!144209 tokens!457)))) 0)))

(declare-fun lt!558318 () Unit!27329)

(declare-fun Unit!27346 () Unit!27329)

(assert (=> b!1586085 (= lt!558318 Unit!27346)))

(assert (=> b!1586085 (rulesProduceIndividualToken!1352 thiss!17113 rules!1846 (h!22829 (t!144209 tokens!457)))))

(declare-fun lt!558315 () Unit!27329)

(declare-fun Unit!27347 () Unit!27329)

(assert (=> b!1586085 (= lt!558315 Unit!27347)))

(assert (=> b!1586085 (rulesProduceIndividualToken!1352 thiss!17113 rules!1846 (h!22829 tokens!457))))

(declare-fun lt!558320 () Unit!27329)

(declare-fun lt!558314 () Unit!27329)

(assert (=> b!1586085 (= lt!558320 lt!558314)))

(assert (=> b!1586085 (rulesProduceIndividualToken!1352 thiss!17113 rules!1846 (h!22829 (t!144209 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!522 (LexerInterface!2700 List!17497 List!17498 Token!5708) Unit!27329)

(assert (=> b!1586085 (= lt!558314 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!522 thiss!17113 rules!1846 tokens!457 (h!22829 (t!144209 tokens!457))))))

(declare-fun lt!558319 () Unit!27329)

(declare-fun lt!558317 () Unit!27329)

(assert (=> b!1586085 (= lt!558319 lt!558317)))

(assert (=> b!1586085 (rulesProduceIndividualToken!1352 thiss!17113 rules!1846 (h!22829 tokens!457))))

(assert (=> b!1586085 (= lt!558317 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!522 thiss!17113 rules!1846 tokens!457 (h!22829 tokens!457)))))

(declare-fun b!1586086 () Bool)

(assert (=> b!1586086 (= e!1018739 (tokensListTwoByTwoPredicateSeparableList!393 thiss!17113 (Cons!17428 (h!22829 (t!144209 tokens!457)) (t!144209 (t!144209 tokens!457))) rules!1846))))

(assert (= (and d!471914 (not res!707352)) b!1586085))

(assert (= (and b!1586085 res!707351) b!1586086))

(assert (=> b!1586085 m!1875093))

(declare-fun m!1875437 () Bool)

(assert (=> b!1586085 m!1875437))

(declare-fun m!1875439 () Bool)

(assert (=> b!1586085 m!1875439))

(assert (=> b!1586085 m!1875095))

(assert (=> b!1586085 m!1875077))

(declare-fun m!1875441 () Bool)

(assert (=> b!1586085 m!1875441))

(assert (=> b!1586085 m!1875077))

(declare-fun m!1875443 () Bool)

(assert (=> b!1586085 m!1875443))

(declare-fun m!1875445 () Bool)

(assert (=> b!1586086 m!1875445))

(assert (=> b!1585940 d!471914))

(declare-fun d!471920 () Bool)

(assert (=> d!471920 (= (isEmpty!10447 rules!1846) ((_ is Nil!17427) rules!1846))))

(assert (=> b!1585946 d!471920))

(declare-fun d!471922 () Bool)

(declare-fun isEmpty!10450 (Option!3136) Bool)

(assert (=> d!471922 (= (isDefined!2511 lt!558146) (not (isEmpty!10450 lt!558146)))))

(declare-fun bs!391409 () Bool)

(assert (= bs!391409 d!471922))

(declare-fun m!1875447 () Bool)

(assert (=> bs!391409 m!1875447))

(assert (=> b!1585935 d!471922))

(declare-fun b!1586099 () Bool)

(declare-fun res!707362 () Bool)

(declare-fun e!1018748 () Bool)

(assert (=> b!1586099 (=> (not res!707362) (not e!1018748))))

(declare-fun lt!558366 () Token!5708)

(declare-fun matchR!1918 (Regex!4399 List!17496) Bool)

(declare-datatypes ((Option!3137 0))(
  ( (None!3136) (Some!3136 (v!24011 Rule!5942)) )
))
(declare-fun get!4983 (Option!3137) Rule!5942)

(declare-fun getRuleFromTag!241 (LexerInterface!2700 List!17497 String!20137) Option!3137)

(assert (=> b!1586099 (= res!707362 (matchR!1918 (regex!3071 (get!4983 (getRuleFromTag!241 thiss!17113 rules!1846 (tag!3341 (rule!4875 lt!558366))))) (list!6760 (charsOf!1720 lt!558366))))))

(declare-fun d!471924 () Bool)

(assert (=> d!471924 (isDefined!2511 (maxPrefix!1264 thiss!17113 rules!1846 (++!4544 lt!558130 lt!558147)))))

(declare-fun lt!558370 () Unit!27329)

(declare-fun e!1018749 () Unit!27329)

(assert (=> d!471924 (= lt!558370 e!1018749)))

(declare-fun c!257100 () Bool)

(assert (=> d!471924 (= c!257100 (isEmpty!10450 (maxPrefix!1264 thiss!17113 rules!1846 (++!4544 lt!558130 lt!558147))))))

(declare-fun lt!558365 () Unit!27329)

(declare-fun lt!558359 () Unit!27329)

(assert (=> d!471924 (= lt!558365 lt!558359)))

(assert (=> d!471924 e!1018748))

(declare-fun res!707361 () Bool)

(assert (=> d!471924 (=> (not res!707361) (not e!1018748))))

(declare-fun isDefined!2512 (Option!3137) Bool)

(assert (=> d!471924 (= res!707361 (isDefined!2512 (getRuleFromTag!241 thiss!17113 rules!1846 (tag!3341 (rule!4875 lt!558366)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!241 (LexerInterface!2700 List!17497 List!17496 Token!5708) Unit!27329)

(assert (=> d!471924 (= lt!558359 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!241 thiss!17113 rules!1846 lt!558130 lt!558366))))

(declare-fun lt!558364 () Unit!27329)

(declare-fun lt!558369 () Unit!27329)

(assert (=> d!471924 (= lt!558364 lt!558369)))

(declare-fun lt!558368 () List!17496)

(assert (=> d!471924 (isPrefix!1331 lt!558368 (++!4544 lt!558130 lt!558147))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!127 (List!17496 List!17496 List!17496) Unit!27329)

(assert (=> d!471924 (= lt!558369 (lemmaPrefixStaysPrefixWhenAddingToSuffix!127 lt!558368 lt!558130 lt!558147))))

(assert (=> d!471924 (= lt!558368 (list!6760 (charsOf!1720 lt!558366)))))

(declare-fun lt!558360 () Unit!27329)

(declare-fun lt!558358 () Unit!27329)

(assert (=> d!471924 (= lt!558360 lt!558358)))

(declare-fun lt!558372 () List!17496)

(declare-fun lt!558367 () List!17496)

(assert (=> d!471924 (isPrefix!1331 lt!558372 (++!4544 lt!558372 lt!558367))))

(assert (=> d!471924 (= lt!558358 (lemmaConcatTwoListThenFirstIsPrefix!856 lt!558372 lt!558367))))

(declare-fun get!4984 (Option!3136) tuple2!16912)

(assert (=> d!471924 (= lt!558367 (_2!9858 (get!4984 (maxPrefix!1264 thiss!17113 rules!1846 lt!558130))))))

(assert (=> d!471924 (= lt!558372 (list!6760 (charsOf!1720 lt!558366)))))

(declare-fun head!3217 (List!17498) Token!5708)

(assert (=> d!471924 (= lt!558366 (head!3217 (list!6759 (_1!9859 (lex!1184 thiss!17113 rules!1846 (seqFromList!1891 lt!558130))))))))

(assert (=> d!471924 (not (isEmpty!10447 rules!1846))))

(assert (=> d!471924 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!274 thiss!17113 rules!1846 lt!558130 lt!558147) lt!558370)))

(declare-fun b!1586101 () Bool)

(declare-fun Unit!27348 () Unit!27329)

(assert (=> b!1586101 (= e!1018749 Unit!27348)))

(declare-fun lt!558357 () List!17496)

(assert (=> b!1586101 (= lt!558357 (++!4544 lt!558130 lt!558147))))

(declare-fun lt!558362 () Unit!27329)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!135 (LexerInterface!2700 Rule!5942 List!17497 List!17496) Unit!27329)

(assert (=> b!1586101 (= lt!558362 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!135 thiss!17113 (rule!4875 lt!558366) rules!1846 lt!558357))))

(declare-fun maxPrefixOneRule!733 (LexerInterface!2700 Rule!5942 List!17496) Option!3136)

(assert (=> b!1586101 (isEmpty!10450 (maxPrefixOneRule!733 thiss!17113 (rule!4875 lt!558366) lt!558357))))

(declare-fun lt!558373 () Unit!27329)

(assert (=> b!1586101 (= lt!558373 lt!558362)))

(declare-fun lt!558361 () List!17496)

(assert (=> b!1586101 (= lt!558361 (list!6760 (charsOf!1720 lt!558366)))))

(declare-fun lt!558371 () Unit!27329)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!131 (LexerInterface!2700 Rule!5942 List!17496 List!17496) Unit!27329)

(assert (=> b!1586101 (= lt!558371 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!131 thiss!17113 (rule!4875 lt!558366) lt!558361 (++!4544 lt!558130 lt!558147)))))

(assert (=> b!1586101 (not (matchR!1918 (regex!3071 (rule!4875 lt!558366)) lt!558361))))

(declare-fun lt!558363 () Unit!27329)

(assert (=> b!1586101 (= lt!558363 lt!558371)))

(assert (=> b!1586101 false))

(declare-fun b!1586100 () Bool)

(assert (=> b!1586100 (= e!1018748 (= (rule!4875 lt!558366) (get!4983 (getRuleFromTag!241 thiss!17113 rules!1846 (tag!3341 (rule!4875 lt!558366))))))))

(declare-fun b!1586102 () Bool)

(declare-fun Unit!27349 () Unit!27329)

(assert (=> b!1586102 (= e!1018749 Unit!27349)))

(assert (= (and d!471924 res!707361) b!1586099))

(assert (= (and b!1586099 res!707362) b!1586100))

(assert (= (and d!471924 c!257100) b!1586101))

(assert (= (and d!471924 (not c!257100)) b!1586102))

(declare-fun m!1875449 () Bool)

(assert (=> b!1586099 m!1875449))

(declare-fun m!1875451 () Bool)

(assert (=> b!1586099 m!1875451))

(declare-fun m!1875453 () Bool)

(assert (=> b!1586099 m!1875453))

(declare-fun m!1875455 () Bool)

(assert (=> b!1586099 m!1875455))

(assert (=> b!1586099 m!1875449))

(assert (=> b!1586099 m!1875453))

(assert (=> b!1586099 m!1875451))

(declare-fun m!1875457 () Bool)

(assert (=> b!1586099 m!1875457))

(assert (=> d!471924 m!1875121))

(declare-fun m!1875459 () Bool)

(assert (=> d!471924 m!1875459))

(declare-fun m!1875461 () Bool)

(assert (=> d!471924 m!1875461))

(declare-fun m!1875463 () Bool)

(assert (=> d!471924 m!1875463))

(declare-fun m!1875465 () Bool)

(assert (=> d!471924 m!1875465))

(assert (=> d!471924 m!1875079))

(assert (=> d!471924 m!1875459))

(declare-fun m!1875467 () Bool)

(assert (=> d!471924 m!1875467))

(declare-fun m!1875469 () Bool)

(assert (=> d!471924 m!1875469))

(assert (=> d!471924 m!1875449))

(assert (=> d!471924 m!1875451))

(assert (=> d!471924 m!1875087))

(assert (=> d!471924 m!1875089))

(declare-fun m!1875471 () Bool)

(assert (=> d!471924 m!1875471))

(assert (=> d!471924 m!1875121))

(declare-fun m!1875473 () Bool)

(assert (=> d!471924 m!1875473))

(assert (=> d!471924 m!1875449))

(declare-fun m!1875475 () Bool)

(assert (=> d!471924 m!1875475))

(declare-fun m!1875477 () Bool)

(assert (=> d!471924 m!1875477))

(declare-fun m!1875479 () Bool)

(assert (=> d!471924 m!1875479))

(assert (=> d!471924 m!1875453))

(declare-fun m!1875481 () Bool)

(assert (=> d!471924 m!1875481))

(assert (=> d!471924 m!1875469))

(declare-fun m!1875483 () Bool)

(assert (=> d!471924 m!1875483))

(assert (=> d!471924 m!1875453))

(assert (=> d!471924 m!1875475))

(assert (=> d!471924 m!1875121))

(assert (=> d!471924 m!1875459))

(declare-fun m!1875485 () Bool)

(assert (=> d!471924 m!1875485))

(assert (=> d!471924 m!1875463))

(assert (=> d!471924 m!1875087))

(assert (=> b!1586101 m!1875121))

(declare-fun m!1875487 () Bool)

(assert (=> b!1586101 m!1875487))

(assert (=> b!1586101 m!1875449))

(assert (=> b!1586101 m!1875451))

(declare-fun m!1875489 () Bool)

(assert (=> b!1586101 m!1875489))

(assert (=> b!1586101 m!1875449))

(assert (=> b!1586101 m!1875121))

(declare-fun m!1875491 () Bool)

(assert (=> b!1586101 m!1875491))

(declare-fun m!1875493 () Bool)

(assert (=> b!1586101 m!1875493))

(assert (=> b!1586101 m!1875493))

(declare-fun m!1875495 () Bool)

(assert (=> b!1586101 m!1875495))

(assert (=> b!1586100 m!1875453))

(assert (=> b!1586100 m!1875453))

(assert (=> b!1586100 m!1875455))

(assert (=> b!1585935 d!471924))

(declare-fun d!471926 () Bool)

(declare-fun list!6763 (Conc!5791) List!17498)

(assert (=> d!471926 (= (list!6759 (_1!9859 lt!558143)) (list!6763 (c!257079 (_1!9859 lt!558143))))))

(declare-fun bs!391410 () Bool)

(assert (= bs!391410 d!471926))

(declare-fun m!1875497 () Bool)

(assert (=> bs!391410 m!1875497))

(assert (=> b!1585936 d!471926))

(declare-fun d!471928 () Bool)

(declare-fun e!1018789 () Bool)

(assert (=> d!471928 e!1018789))

(declare-fun res!707397 () Bool)

(assert (=> d!471928 (=> (not res!707397) (not e!1018789))))

(assert (=> d!471928 (= res!707397 (= (list!6759 (_1!9859 (lex!1184 thiss!17113 rules!1846 (print!1231 thiss!17113 (seqFromList!1892 (t!144209 tokens!457)))))) (t!144209 tokens!457)))))

(declare-fun lt!558491 () Unit!27329)

(declare-fun e!1018790 () Unit!27329)

(assert (=> d!471928 (= lt!558491 e!1018790)))

(declare-fun c!257113 () Bool)

(assert (=> d!471928 (= c!257113 (or ((_ is Nil!17428) (t!144209 tokens!457)) ((_ is Nil!17428) (t!144209 (t!144209 tokens!457)))))))

(assert (=> d!471928 (not (isEmpty!10447 rules!1846))))

(assert (=> d!471928 (= (theoremInvertabilityWhenTokenListSeparable!145 thiss!17113 rules!1846 (t!144209 tokens!457)) lt!558491)))

(declare-fun b!1586172 () Bool)

(declare-fun Unit!27350 () Unit!27329)

(assert (=> b!1586172 (= e!1018790 Unit!27350)))

(declare-fun b!1586173 () Bool)

(declare-fun Unit!27351 () Unit!27329)

(assert (=> b!1586173 (= e!1018790 Unit!27351)))

(declare-fun lt!558488 () BalanceConc!11524)

(assert (=> b!1586173 (= lt!558488 (print!1231 thiss!17113 (seqFromList!1892 (t!144209 tokens!457))))))

(declare-fun lt!558480 () BalanceConc!11524)

(assert (=> b!1586173 (= lt!558480 (print!1231 thiss!17113 (seqFromList!1892 (t!144209 (t!144209 tokens!457)))))))

(declare-fun lt!558490 () tuple2!16914)

(assert (=> b!1586173 (= lt!558490 (lex!1184 thiss!17113 rules!1846 lt!558480))))

(declare-fun lt!558478 () List!17496)

(assert (=> b!1586173 (= lt!558478 (list!6760 (charsOf!1720 (h!22829 (t!144209 tokens!457)))))))

(declare-fun lt!558477 () List!17496)

(assert (=> b!1586173 (= lt!558477 (list!6760 lt!558480))))

(declare-fun lt!558484 () Unit!27329)

(assert (=> b!1586173 (= lt!558484 (lemmaConcatTwoListThenFirstIsPrefix!856 lt!558478 lt!558477))))

(assert (=> b!1586173 (isPrefix!1331 lt!558478 (++!4544 lt!558478 lt!558477))))

(declare-fun lt!558489 () Unit!27329)

(assert (=> b!1586173 (= lt!558489 lt!558484)))

(declare-fun lt!558476 () Unit!27329)

(assert (=> b!1586173 (= lt!558476 (theoremInvertabilityWhenTokenListSeparable!145 thiss!17113 rules!1846 (t!144209 (t!144209 tokens!457))))))

(declare-fun lt!558493 () Unit!27329)

(assert (=> b!1586173 (= lt!558493 (seqFromListBHdTlConstructive!148 (h!22829 (t!144209 (t!144209 tokens!457))) (t!144209 (t!144209 (t!144209 tokens!457))) (_1!9859 lt!558490)))))

(assert (=> b!1586173 (= (list!6759 (_1!9859 lt!558490)) (list!6759 (prepend!555 (seqFromList!1892 (t!144209 (t!144209 (t!144209 tokens!457)))) (h!22829 (t!144209 (t!144209 tokens!457))))))))

(declare-fun lt!558492 () Unit!27329)

(assert (=> b!1586173 (= lt!558492 lt!558493)))

(declare-fun lt!558481 () Option!3136)

(assert (=> b!1586173 (= lt!558481 (maxPrefix!1264 thiss!17113 rules!1846 (list!6760 lt!558488)))))

(assert (=> b!1586173 (= (print!1231 thiss!17113 (singletonSeq!1421 (h!22829 (t!144209 tokens!457)))) (printTailRec!753 thiss!17113 (singletonSeq!1421 (h!22829 (t!144209 tokens!457))) 0 (BalanceConc!11525 Empty!5790)))))

(declare-fun lt!558485 () Unit!27329)

(declare-fun Unit!27352 () Unit!27329)

(assert (=> b!1586173 (= lt!558485 Unit!27352)))

(declare-fun lt!558498 () Unit!27329)

(assert (=> b!1586173 (= lt!558498 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!274 thiss!17113 rules!1846 (list!6760 (charsOf!1720 (h!22829 (t!144209 tokens!457)))) (list!6760 lt!558480)))))

(assert (=> b!1586173 (= (list!6760 (charsOf!1720 (h!22829 (t!144209 tokens!457)))) (originalCharacters!3885 (h!22829 (t!144209 tokens!457))))))

(declare-fun lt!558475 () Unit!27329)

(declare-fun Unit!27353 () Unit!27329)

(assert (=> b!1586173 (= lt!558475 Unit!27353)))

(declare-fun head!3218 (List!17496) C!8972)

(assert (=> b!1586173 (= (list!6760 (singletonSeq!1420 (apply!4254 (charsOf!1720 (h!22829 (t!144209 (t!144209 tokens!457)))) 0))) (Cons!17426 (head!3218 (originalCharacters!3885 (h!22829 (t!144209 (t!144209 tokens!457))))) Nil!17426))))

(declare-fun lt!558494 () Unit!27329)

(declare-fun Unit!27354 () Unit!27329)

(assert (=> b!1586173 (= lt!558494 Unit!27354)))

(assert (=> b!1586173 (= (list!6760 (singletonSeq!1420 (apply!4254 (charsOf!1720 (h!22829 (t!144209 (t!144209 tokens!457)))) 0))) (Cons!17426 (head!3218 (list!6760 lt!558480)) Nil!17426))))

(declare-fun lt!558495 () Unit!27329)

(declare-fun Unit!27355 () Unit!27329)

(assert (=> b!1586173 (= lt!558495 Unit!27355)))

(declare-fun head!3219 (BalanceConc!11524) C!8972)

(assert (=> b!1586173 (= (list!6760 (singletonSeq!1420 (apply!4254 (charsOf!1720 (h!22829 (t!144209 (t!144209 tokens!457)))) 0))) (Cons!17426 (head!3219 lt!558480) Nil!17426))))

(declare-fun lt!558474 () Unit!27329)

(declare-fun Unit!27356 () Unit!27329)

(assert (=> b!1586173 (= lt!558474 Unit!27356)))

(assert (=> b!1586173 (isDefined!2511 (maxPrefix!1264 thiss!17113 rules!1846 (originalCharacters!3885 (h!22829 (t!144209 tokens!457)))))))

(declare-fun lt!558486 () Unit!27329)

(declare-fun Unit!27357 () Unit!27329)

(assert (=> b!1586173 (= lt!558486 Unit!27357)))

(assert (=> b!1586173 (isDefined!2511 (maxPrefix!1264 thiss!17113 rules!1846 (list!6760 (charsOf!1720 (h!22829 (t!144209 tokens!457))))))))

(declare-fun lt!558487 () Unit!27329)

(declare-fun Unit!27358 () Unit!27329)

(assert (=> b!1586173 (= lt!558487 Unit!27358)))

(declare-fun lt!558473 () Unit!27329)

(declare-fun Unit!27359 () Unit!27329)

(assert (=> b!1586173 (= lt!558473 Unit!27359)))

(assert (=> b!1586173 (= (_1!9858 (get!4984 (maxPrefix!1264 thiss!17113 rules!1846 (list!6760 (charsOf!1720 (h!22829 (t!144209 tokens!457))))))) (h!22829 (t!144209 tokens!457)))))

(declare-fun lt!558483 () Unit!27329)

(declare-fun Unit!27360 () Unit!27329)

(assert (=> b!1586173 (= lt!558483 Unit!27360)))

(declare-fun isEmpty!10452 (List!17496) Bool)

(assert (=> b!1586173 (isEmpty!10452 (_2!9858 (get!4984 (maxPrefix!1264 thiss!17113 rules!1846 (list!6760 (charsOf!1720 (h!22829 (t!144209 tokens!457))))))))))

(declare-fun lt!558496 () Unit!27329)

(declare-fun Unit!27361 () Unit!27329)

(assert (=> b!1586173 (= lt!558496 Unit!27361)))

(assert (=> b!1586173 (matchR!1918 (regex!3071 (rule!4875 (h!22829 (t!144209 tokens!457)))) (list!6760 (charsOf!1720 (h!22829 (t!144209 tokens!457)))))))

(declare-fun lt!558497 () Unit!27329)

(declare-fun Unit!27362 () Unit!27329)

(assert (=> b!1586173 (= lt!558497 Unit!27362)))

(assert (=> b!1586173 (= (rule!4875 (h!22829 (t!144209 tokens!457))) (rule!4875 (h!22829 (t!144209 tokens!457))))))

(declare-fun lt!558482 () Unit!27329)

(declare-fun Unit!27363 () Unit!27329)

(assert (=> b!1586173 (= lt!558482 Unit!27363)))

(declare-fun lt!558479 () Unit!27329)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!68 (LexerInterface!2700 List!17497 Token!5708 Rule!5942 List!17496) Unit!27329)

(assert (=> b!1586173 (= lt!558479 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!68 thiss!17113 rules!1846 (h!22829 (t!144209 tokens!457)) (rule!4875 (h!22829 (t!144209 tokens!457))) (list!6760 lt!558480)))))

(declare-fun b!1586174 () Bool)

(declare-fun isEmpty!10453 (BalanceConc!11524) Bool)

(assert (=> b!1586174 (= e!1018789 (isEmpty!10453 (_2!9859 (lex!1184 thiss!17113 rules!1846 (print!1231 thiss!17113 (seqFromList!1892 (t!144209 tokens!457)))))))))

(assert (= (and d!471928 c!257113) b!1586172))

(assert (= (and d!471928 (not c!257113)) b!1586173))

(assert (= (and d!471928 res!707397) b!1586174))

(declare-fun m!1875615 () Bool)

(assert (=> d!471928 m!1875615))

(declare-fun m!1875617 () Bool)

(assert (=> d!471928 m!1875617))

(assert (=> d!471928 m!1875123))

(assert (=> d!471928 m!1875615))

(declare-fun m!1875619 () Bool)

(assert (=> d!471928 m!1875619))

(assert (=> d!471928 m!1875123))

(assert (=> d!471928 m!1875079))

(declare-fun m!1875621 () Bool)

(assert (=> b!1586173 m!1875621))

(declare-fun m!1875623 () Bool)

(assert (=> b!1586173 m!1875623))

(declare-fun m!1875625 () Bool)

(assert (=> b!1586173 m!1875625))

(declare-fun m!1875627 () Bool)

(assert (=> b!1586173 m!1875627))

(assert (=> b!1586173 m!1875625))

(declare-fun m!1875629 () Bool)

(assert (=> b!1586173 m!1875629))

(assert (=> b!1586173 m!1875623))

(declare-fun m!1875631 () Bool)

(assert (=> b!1586173 m!1875631))

(declare-fun m!1875633 () Bool)

(assert (=> b!1586173 m!1875633))

(declare-fun m!1875635 () Bool)

(assert (=> b!1586173 m!1875635))

(assert (=> b!1586173 m!1875077))

(assert (=> b!1586173 m!1875627))

(assert (=> b!1586173 m!1875633))

(declare-fun m!1875637 () Bool)

(assert (=> b!1586173 m!1875637))

(assert (=> b!1586173 m!1875627))

(declare-fun m!1875639 () Bool)

(assert (=> b!1586173 m!1875639))

(assert (=> b!1586173 m!1875123))

(assert (=> b!1586173 m!1875615))

(declare-fun m!1875641 () Bool)

(assert (=> b!1586173 m!1875641))

(declare-fun m!1875643 () Bool)

(assert (=> b!1586173 m!1875643))

(declare-fun m!1875645 () Bool)

(assert (=> b!1586173 m!1875645))

(declare-fun m!1875647 () Bool)

(assert (=> b!1586173 m!1875647))

(declare-fun m!1875649 () Bool)

(assert (=> b!1586173 m!1875649))

(assert (=> b!1586173 m!1875123))

(declare-fun m!1875651 () Bool)

(assert (=> b!1586173 m!1875651))

(assert (=> b!1586173 m!1875651))

(declare-fun m!1875653 () Bool)

(assert (=> b!1586173 m!1875653))

(declare-fun m!1875655 () Bool)

(assert (=> b!1586173 m!1875655))

(assert (=> b!1586173 m!1875641))

(declare-fun m!1875657 () Bool)

(assert (=> b!1586173 m!1875657))

(declare-fun m!1875659 () Bool)

(assert (=> b!1586173 m!1875659))

(declare-fun m!1875661 () Bool)

(assert (=> b!1586173 m!1875661))

(assert (=> b!1586173 m!1875647))

(declare-fun m!1875663 () Bool)

(assert (=> b!1586173 m!1875663))

(declare-fun m!1875665 () Bool)

(assert (=> b!1586173 m!1875665))

(declare-fun m!1875667 () Bool)

(assert (=> b!1586173 m!1875667))

(declare-fun m!1875669 () Bool)

(assert (=> b!1586173 m!1875669))

(assert (=> b!1586173 m!1875077))

(assert (=> b!1586173 m!1875647))

(assert (=> b!1586173 m!1875655))

(declare-fun m!1875671 () Bool)

(assert (=> b!1586173 m!1875671))

(assert (=> b!1586173 m!1875621))

(declare-fun m!1875673 () Bool)

(assert (=> b!1586173 m!1875673))

(declare-fun m!1875675 () Bool)

(assert (=> b!1586173 m!1875675))

(assert (=> b!1586173 m!1875625))

(declare-fun m!1875677 () Bool)

(assert (=> b!1586173 m!1875677))

(assert (=> b!1586173 m!1875625))

(declare-fun m!1875679 () Bool)

(assert (=> b!1586173 m!1875679))

(assert (=> b!1586173 m!1875637))

(declare-fun m!1875681 () Bool)

(assert (=> b!1586173 m!1875681))

(assert (=> b!1586173 m!1875659))

(assert (=> b!1586173 m!1875145))

(declare-fun m!1875683 () Bool)

(assert (=> b!1586173 m!1875683))

(declare-fun m!1875685 () Bool)

(assert (=> b!1586173 m!1875685))

(assert (=> b!1586173 m!1875627))

(assert (=> b!1586173 m!1875641))

(assert (=> b!1586173 m!1875145))

(assert (=> b!1586173 m!1875681))

(declare-fun m!1875687 () Bool)

(assert (=> b!1586173 m!1875687))

(assert (=> b!1586174 m!1875123))

(assert (=> b!1586174 m!1875123))

(assert (=> b!1586174 m!1875615))

(assert (=> b!1586174 m!1875615))

(assert (=> b!1586174 m!1875617))

(declare-fun m!1875689 () Bool)

(assert (=> b!1586174 m!1875689))

(assert (=> b!1585936 d!471928))

(declare-fun d!471956 () Bool)

(declare-fun e!1018797 () Bool)

(assert (=> d!471956 e!1018797))

(declare-fun res!707408 () Bool)

(assert (=> d!471956 (=> res!707408 e!1018797)))

(declare-fun lt!558501 () Bool)

(assert (=> d!471956 (= res!707408 (not lt!558501))))

(declare-fun e!1018799 () Bool)

(assert (=> d!471956 (= lt!558501 e!1018799)))

(declare-fun res!707409 () Bool)

(assert (=> d!471956 (=> res!707409 e!1018799)))

(assert (=> d!471956 (= res!707409 ((_ is Nil!17426) lt!558130))))

(assert (=> d!471956 (= (isPrefix!1331 lt!558130 lt!558138) lt!558501)))

(declare-fun b!1586183 () Bool)

(declare-fun e!1018798 () Bool)

(assert (=> b!1586183 (= e!1018799 e!1018798)))

(declare-fun res!707407 () Bool)

(assert (=> b!1586183 (=> (not res!707407) (not e!1018798))))

(assert (=> b!1586183 (= res!707407 (not ((_ is Nil!17426) lt!558138)))))

(declare-fun b!1586185 () Bool)

(declare-fun tail!2271 (List!17496) List!17496)

(assert (=> b!1586185 (= e!1018798 (isPrefix!1331 (tail!2271 lt!558130) (tail!2271 lt!558138)))))

(declare-fun b!1586186 () Bool)

(declare-fun size!14025 (List!17496) Int)

(assert (=> b!1586186 (= e!1018797 (>= (size!14025 lt!558138) (size!14025 lt!558130)))))

(declare-fun b!1586184 () Bool)

(declare-fun res!707406 () Bool)

(assert (=> b!1586184 (=> (not res!707406) (not e!1018798))))

(assert (=> b!1586184 (= res!707406 (= (head!3218 lt!558130) (head!3218 lt!558138)))))

(assert (= (and d!471956 (not res!707409)) b!1586183))

(assert (= (and b!1586183 res!707407) b!1586184))

(assert (= (and b!1586184 res!707406) b!1586185))

(assert (= (and d!471956 (not res!707408)) b!1586186))

(declare-fun m!1875691 () Bool)

(assert (=> b!1586185 m!1875691))

(declare-fun m!1875693 () Bool)

(assert (=> b!1586185 m!1875693))

(assert (=> b!1586185 m!1875691))

(assert (=> b!1586185 m!1875693))

(declare-fun m!1875695 () Bool)

(assert (=> b!1586185 m!1875695))

(declare-fun m!1875697 () Bool)

(assert (=> b!1586186 m!1875697))

(declare-fun m!1875699 () Bool)

(assert (=> b!1586186 m!1875699))

(declare-fun m!1875701 () Bool)

(assert (=> b!1586184 m!1875701))

(declare-fun m!1875703 () Bool)

(assert (=> b!1586184 m!1875703))

(assert (=> b!1585936 d!471956))

(declare-fun d!471958 () Bool)

(assert (=> d!471958 (isPrefix!1331 lt!558130 (++!4544 lt!558130 lt!558147))))

(declare-fun lt!558504 () Unit!27329)

(declare-fun choose!9499 (List!17496 List!17496) Unit!27329)

(assert (=> d!471958 (= lt!558504 (choose!9499 lt!558130 lt!558147))))

(assert (=> d!471958 (= (lemmaConcatTwoListThenFirstIsPrefix!856 lt!558130 lt!558147) lt!558504)))

(declare-fun bs!391418 () Bool)

(assert (= bs!391418 d!471958))

(assert (=> bs!391418 m!1875121))

(assert (=> bs!391418 m!1875121))

(declare-fun m!1875705 () Bool)

(assert (=> bs!391418 m!1875705))

(declare-fun m!1875707 () Bool)

(assert (=> bs!391418 m!1875707))

(assert (=> b!1585936 d!471958))

(declare-fun d!471960 () Bool)

(declare-fun list!6764 (Conc!5790) List!17496)

(assert (=> d!471960 (= (list!6760 lt!558145) (list!6764 (c!257077 lt!558145)))))

(declare-fun bs!391419 () Bool)

(assert (= bs!391419 d!471960))

(declare-fun m!1875709 () Bool)

(assert (=> bs!391419 m!1875709))

(assert (=> b!1585947 d!471960))

(declare-fun b!1586205 () Bool)

(declare-fun e!1018808 () Bool)

(declare-fun lt!558515 () Option!3136)

(declare-fun contains!3044 (List!17497 Rule!5942) Bool)

(assert (=> b!1586205 (= e!1018808 (contains!3044 rules!1846 (rule!4875 (_1!9858 (get!4984 lt!558515)))))))

(declare-fun b!1586206 () Bool)

(declare-fun res!707429 () Bool)

(assert (=> b!1586206 (=> (not res!707429) (not e!1018808))))

(assert (=> b!1586206 (= res!707429 (= (++!4544 (list!6760 (charsOf!1720 (_1!9858 (get!4984 lt!558515)))) (_2!9858 (get!4984 lt!558515))) lt!558136))))

(declare-fun b!1586207 () Bool)

(declare-fun e!1018806 () Option!3136)

(declare-fun lt!558519 () Option!3136)

(declare-fun lt!558517 () Option!3136)

(assert (=> b!1586207 (= e!1018806 (ite (and ((_ is None!3135) lt!558519) ((_ is None!3135) lt!558517)) None!3135 (ite ((_ is None!3135) lt!558517) lt!558519 (ite ((_ is None!3135) lt!558519) lt!558517 (ite (>= (size!14020 (_1!9858 (v!24004 lt!558519))) (size!14020 (_1!9858 (v!24004 lt!558517)))) lt!558519 lt!558517)))))))

(declare-fun call!102916 () Option!3136)

(assert (=> b!1586207 (= lt!558519 call!102916)))

(assert (=> b!1586207 (= lt!558517 (maxPrefix!1264 thiss!17113 (t!144208 rules!1846) lt!558136))))

(declare-fun d!471962 () Bool)

(declare-fun e!1018807 () Bool)

(assert (=> d!471962 e!1018807))

(declare-fun res!707426 () Bool)

(assert (=> d!471962 (=> res!707426 e!1018807)))

(assert (=> d!471962 (= res!707426 (isEmpty!10450 lt!558515))))

(assert (=> d!471962 (= lt!558515 e!1018806)))

(declare-fun c!257116 () Bool)

(assert (=> d!471962 (= c!257116 (and ((_ is Cons!17427) rules!1846) ((_ is Nil!17427) (t!144208 rules!1846))))))

(declare-fun lt!558518 () Unit!27329)

(declare-fun lt!558516 () Unit!27329)

(assert (=> d!471962 (= lt!558518 lt!558516)))

(assert (=> d!471962 (isPrefix!1331 lt!558136 lt!558136)))

(declare-fun lemmaIsPrefixRefl!918 (List!17496 List!17496) Unit!27329)

(assert (=> d!471962 (= lt!558516 (lemmaIsPrefixRefl!918 lt!558136 lt!558136))))

(assert (=> d!471962 (rulesValidInductive!920 thiss!17113 rules!1846)))

(assert (=> d!471962 (= (maxPrefix!1264 thiss!17113 rules!1846 lt!558136) lt!558515)))

(declare-fun b!1586208 () Bool)

(assert (=> b!1586208 (= e!1018806 call!102916)))

(declare-fun bm!102911 () Bool)

(assert (=> bm!102911 (= call!102916 (maxPrefixOneRule!733 thiss!17113 (h!22828 rules!1846) lt!558136))))

(declare-fun b!1586209 () Bool)

(declare-fun res!707425 () Bool)

(assert (=> b!1586209 (=> (not res!707425) (not e!1018808))))

(assert (=> b!1586209 (= res!707425 (< (size!14025 (_2!9858 (get!4984 lt!558515))) (size!14025 lt!558136)))))

(declare-fun b!1586210 () Bool)

(declare-fun res!707424 () Bool)

(assert (=> b!1586210 (=> (not res!707424) (not e!1018808))))

(assert (=> b!1586210 (= res!707424 (matchR!1918 (regex!3071 (rule!4875 (_1!9858 (get!4984 lt!558515)))) (list!6760 (charsOf!1720 (_1!9858 (get!4984 lt!558515))))))))

(declare-fun b!1586211 () Bool)

(declare-fun res!707428 () Bool)

(assert (=> b!1586211 (=> (not res!707428) (not e!1018808))))

(assert (=> b!1586211 (= res!707428 (= (list!6760 (charsOf!1720 (_1!9858 (get!4984 lt!558515)))) (originalCharacters!3885 (_1!9858 (get!4984 lt!558515)))))))

(declare-fun b!1586212 () Bool)

(assert (=> b!1586212 (= e!1018807 e!1018808)))

(declare-fun res!707430 () Bool)

(assert (=> b!1586212 (=> (not res!707430) (not e!1018808))))

(assert (=> b!1586212 (= res!707430 (isDefined!2511 lt!558515))))

(declare-fun b!1586213 () Bool)

(declare-fun res!707427 () Bool)

(assert (=> b!1586213 (=> (not res!707427) (not e!1018808))))

(declare-fun apply!4260 (TokenValueInjection!5982 BalanceConc!11524) TokenValue!3161)

(assert (=> b!1586213 (= res!707427 (= (value!97196 (_1!9858 (get!4984 lt!558515))) (apply!4260 (transformation!3071 (rule!4875 (_1!9858 (get!4984 lt!558515)))) (seqFromList!1891 (originalCharacters!3885 (_1!9858 (get!4984 lt!558515)))))))))

(assert (= (and d!471962 c!257116) b!1586208))

(assert (= (and d!471962 (not c!257116)) b!1586207))

(assert (= (or b!1586208 b!1586207) bm!102911))

(assert (= (and d!471962 (not res!707426)) b!1586212))

(assert (= (and b!1586212 res!707430) b!1586211))

(assert (= (and b!1586211 res!707428) b!1586209))

(assert (= (and b!1586209 res!707425) b!1586206))

(assert (= (and b!1586206 res!707429) b!1586213))

(assert (= (and b!1586213 res!707427) b!1586210))

(assert (= (and b!1586210 res!707424) b!1586205))

(declare-fun m!1875711 () Bool)

(assert (=> d!471962 m!1875711))

(declare-fun m!1875713 () Bool)

(assert (=> d!471962 m!1875713))

(declare-fun m!1875715 () Bool)

(assert (=> d!471962 m!1875715))

(assert (=> d!471962 m!1875163))

(declare-fun m!1875717 () Bool)

(assert (=> b!1586206 m!1875717))

(declare-fun m!1875719 () Bool)

(assert (=> b!1586206 m!1875719))

(assert (=> b!1586206 m!1875719))

(declare-fun m!1875721 () Bool)

(assert (=> b!1586206 m!1875721))

(assert (=> b!1586206 m!1875721))

(declare-fun m!1875723 () Bool)

(assert (=> b!1586206 m!1875723))

(assert (=> b!1586205 m!1875717))

(declare-fun m!1875725 () Bool)

(assert (=> b!1586205 m!1875725))

(assert (=> b!1586213 m!1875717))

(declare-fun m!1875727 () Bool)

(assert (=> b!1586213 m!1875727))

(assert (=> b!1586213 m!1875727))

(declare-fun m!1875729 () Bool)

(assert (=> b!1586213 m!1875729))

(declare-fun m!1875731 () Bool)

(assert (=> b!1586212 m!1875731))

(assert (=> b!1586209 m!1875717))

(declare-fun m!1875733 () Bool)

(assert (=> b!1586209 m!1875733))

(declare-fun m!1875735 () Bool)

(assert (=> b!1586209 m!1875735))

(declare-fun m!1875737 () Bool)

(assert (=> b!1586207 m!1875737))

(declare-fun m!1875739 () Bool)

(assert (=> bm!102911 m!1875739))

(assert (=> b!1586211 m!1875717))

(assert (=> b!1586211 m!1875719))

(assert (=> b!1586211 m!1875719))

(assert (=> b!1586211 m!1875721))

(assert (=> b!1586210 m!1875717))

(assert (=> b!1586210 m!1875719))

(assert (=> b!1586210 m!1875719))

(assert (=> b!1586210 m!1875721))

(assert (=> b!1586210 m!1875721))

(declare-fun m!1875741 () Bool)

(assert (=> b!1586210 m!1875741))

(assert (=> b!1585947 d!471962))

(declare-fun d!471964 () Bool)

(declare-fun lt!558558 () BalanceConc!11524)

(declare-fun printListTailRec!313 (LexerInterface!2700 List!17498 List!17496) List!17496)

(declare-fun dropList!523 (BalanceConc!11526 Int) List!17498)

(assert (=> d!471964 (= (list!6760 lt!558558) (printListTailRec!313 thiss!17113 (dropList!523 lt!558135 0) (list!6760 (BalanceConc!11525 Empty!5790))))))

(declare-fun e!1018818 () BalanceConc!11524)

(assert (=> d!471964 (= lt!558558 e!1018818)))

(declare-fun c!257121 () Bool)

(declare-fun size!14026 (BalanceConc!11526) Int)

(assert (=> d!471964 (= c!257121 (>= 0 (size!14026 lt!558135)))))

(declare-fun e!1018817 () Bool)

(assert (=> d!471964 e!1018817))

(declare-fun res!707437 () Bool)

(assert (=> d!471964 (=> (not res!707437) (not e!1018817))))

(assert (=> d!471964 (= res!707437 (>= 0 0))))

(assert (=> d!471964 (= (printTailRec!753 thiss!17113 lt!558135 0 (BalanceConc!11525 Empty!5790)) lt!558558)))

(declare-fun b!1586228 () Bool)

(assert (=> b!1586228 (= e!1018817 (<= 0 (size!14026 lt!558135)))))

(declare-fun b!1586229 () Bool)

(assert (=> b!1586229 (= e!1018818 (BalanceConc!11525 Empty!5790))))

(declare-fun b!1586230 () Bool)

(declare-fun apply!4261 (BalanceConc!11526 Int) Token!5708)

(assert (=> b!1586230 (= e!1018818 (printTailRec!753 thiss!17113 lt!558135 (+ 0 1) (++!4543 (BalanceConc!11525 Empty!5790) (charsOf!1720 (apply!4261 lt!558135 0)))))))

(declare-fun lt!558565 () List!17498)

(assert (=> b!1586230 (= lt!558565 (list!6759 lt!558135))))

(declare-fun lt!558561 () Unit!27329)

(declare-fun lemmaDropApply!520 (List!17498 Int) Unit!27329)

(assert (=> b!1586230 (= lt!558561 (lemmaDropApply!520 lt!558565 0))))

(declare-fun drop!822 (List!17498 Int) List!17498)

(declare-fun apply!4262 (List!17498 Int) Token!5708)

(assert (=> b!1586230 (= (head!3217 (drop!822 lt!558565 0)) (apply!4262 lt!558565 0))))

(declare-fun lt!558556 () Unit!27329)

(assert (=> b!1586230 (= lt!558556 lt!558561)))

(declare-fun lt!558557 () List!17498)

(assert (=> b!1586230 (= lt!558557 (list!6759 lt!558135))))

(declare-fun lt!558560 () Unit!27329)

(declare-fun lemmaDropTail!500 (List!17498 Int) Unit!27329)

(assert (=> b!1586230 (= lt!558560 (lemmaDropTail!500 lt!558557 0))))

(declare-fun tail!2272 (List!17498) List!17498)

(assert (=> b!1586230 (= (tail!2272 (drop!822 lt!558557 0)) (drop!822 lt!558557 (+ 0 1)))))

(declare-fun lt!558566 () Unit!27329)

(assert (=> b!1586230 (= lt!558566 lt!558560)))

(assert (= (and d!471964 res!707437) b!1586228))

(assert (= (and d!471964 c!257121) b!1586229))

(assert (= (and d!471964 (not c!257121)) b!1586230))

(declare-fun m!1875743 () Bool)

(assert (=> d!471964 m!1875743))

(declare-fun m!1875745 () Bool)

(assert (=> d!471964 m!1875745))

(declare-fun m!1875747 () Bool)

(assert (=> d!471964 m!1875747))

(declare-fun m!1875749 () Bool)

(assert (=> d!471964 m!1875749))

(assert (=> d!471964 m!1875745))

(assert (=> d!471964 m!1875749))

(declare-fun m!1875751 () Bool)

(assert (=> d!471964 m!1875751))

(assert (=> b!1586228 m!1875747))

(declare-fun m!1875753 () Bool)

(assert (=> b!1586230 m!1875753))

(declare-fun m!1875755 () Bool)

(assert (=> b!1586230 m!1875755))

(declare-fun m!1875757 () Bool)

(assert (=> b!1586230 m!1875757))

(declare-fun m!1875759 () Bool)

(assert (=> b!1586230 m!1875759))

(declare-fun m!1875761 () Bool)

(assert (=> b!1586230 m!1875761))

(assert (=> b!1586230 m!1875761))

(declare-fun m!1875763 () Bool)

(assert (=> b!1586230 m!1875763))

(declare-fun m!1875765 () Bool)

(assert (=> b!1586230 m!1875765))

(declare-fun m!1875767 () Bool)

(assert (=> b!1586230 m!1875767))

(declare-fun m!1875769 () Bool)

(assert (=> b!1586230 m!1875769))

(declare-fun m!1875771 () Bool)

(assert (=> b!1586230 m!1875771))

(declare-fun m!1875773 () Bool)

(assert (=> b!1586230 m!1875773))

(declare-fun m!1875775 () Bool)

(assert (=> b!1586230 m!1875775))

(declare-fun m!1875777 () Bool)

(assert (=> b!1586230 m!1875777))

(assert (=> b!1586230 m!1875757))

(assert (=> b!1586230 m!1875767))

(assert (=> b!1586230 m!1875755))

(assert (=> b!1586230 m!1875771))

(assert (=> b!1585947 d!471964))

(declare-fun d!471966 () Bool)

(declare-fun lt!558594 () BalanceConc!11524)

(assert (=> d!471966 (= (list!6760 lt!558594) (printList!815 thiss!17113 (list!6759 lt!558135)))))

(assert (=> d!471966 (= lt!558594 (printTailRec!753 thiss!17113 lt!558135 0 (BalanceConc!11525 Empty!5790)))))

(assert (=> d!471966 (= (print!1231 thiss!17113 lt!558135) lt!558594)))

(declare-fun bs!391420 () Bool)

(assert (= bs!391420 d!471966))

(declare-fun m!1875827 () Bool)

(assert (=> bs!391420 m!1875827))

(assert (=> bs!391420 m!1875777))

(assert (=> bs!391420 m!1875777))

(declare-fun m!1875829 () Bool)

(assert (=> bs!391420 m!1875829))

(assert (=> bs!391420 m!1875129))

(assert (=> b!1585947 d!471966))

(declare-fun d!471970 () Bool)

(declare-fun c!257125 () Bool)

(assert (=> d!471970 (= c!257125 ((_ is Cons!17428) (Cons!17428 (h!22829 tokens!457) Nil!17428)))))

(declare-fun e!1018829 () List!17496)

(assert (=> d!471970 (= (printList!815 thiss!17113 (Cons!17428 (h!22829 tokens!457) Nil!17428)) e!1018829)))

(declare-fun b!1586245 () Bool)

(assert (=> b!1586245 (= e!1018829 (++!4544 (list!6760 (charsOf!1720 (h!22829 (Cons!17428 (h!22829 tokens!457) Nil!17428)))) (printList!815 thiss!17113 (t!144209 (Cons!17428 (h!22829 tokens!457) Nil!17428)))))))

(declare-fun b!1586246 () Bool)

(assert (=> b!1586246 (= e!1018829 Nil!17426)))

(assert (= (and d!471970 c!257125) b!1586245))

(assert (= (and d!471970 (not c!257125)) b!1586246))

(declare-fun m!1875831 () Bool)

(assert (=> b!1586245 m!1875831))

(assert (=> b!1586245 m!1875831))

(declare-fun m!1875833 () Bool)

(assert (=> b!1586245 m!1875833))

(declare-fun m!1875835 () Bool)

(assert (=> b!1586245 m!1875835))

(assert (=> b!1586245 m!1875833))

(assert (=> b!1586245 m!1875835))

(declare-fun m!1875837 () Bool)

(assert (=> b!1586245 m!1875837))

(assert (=> b!1585947 d!471970))

(declare-fun d!471972 () Bool)

(declare-fun e!1018834 () Bool)

(assert (=> d!471972 e!1018834))

(declare-fun res!707450 () Bool)

(assert (=> d!471972 (=> (not res!707450) (not e!1018834))))

(declare-fun lt!558600 () BalanceConc!11526)

(assert (=> d!471972 (= res!707450 (= (list!6759 lt!558600) (Cons!17428 (h!22829 tokens!457) Nil!17428)))))

(declare-fun singleton!585 (Token!5708) BalanceConc!11526)

(assert (=> d!471972 (= lt!558600 (singleton!585 (h!22829 tokens!457)))))

(assert (=> d!471972 (= (singletonSeq!1421 (h!22829 tokens!457)) lt!558600)))

(declare-fun b!1586253 () Bool)

(declare-fun isBalanced!1705 (Conc!5791) Bool)

(assert (=> b!1586253 (= e!1018834 (isBalanced!1705 (c!257079 lt!558600)))))

(assert (= (and d!471972 res!707450) b!1586253))

(declare-fun m!1875845 () Bool)

(assert (=> d!471972 m!1875845))

(declare-fun m!1875849 () Bool)

(assert (=> d!471972 m!1875849))

(declare-fun m!1875853 () Bool)

(assert (=> b!1586253 m!1875853))

(assert (=> b!1585947 d!471972))

(declare-fun d!471980 () Bool)

(declare-fun lt!558601 () BalanceConc!11524)

(assert (=> d!471980 (= (list!6760 lt!558601) (printList!815 thiss!17113 (list!6759 (seqFromList!1892 tokens!457))))))

(assert (=> d!471980 (= lt!558601 (printTailRec!753 thiss!17113 (seqFromList!1892 tokens!457) 0 (BalanceConc!11525 Empty!5790)))))

(assert (=> d!471980 (= (print!1231 thiss!17113 (seqFromList!1892 tokens!457)) lt!558601)))

(declare-fun bs!391421 () Bool)

(assert (= bs!391421 d!471980))

(declare-fun m!1875855 () Bool)

(assert (=> bs!391421 m!1875855))

(assert (=> bs!391421 m!1875111))

(declare-fun m!1875857 () Bool)

(assert (=> bs!391421 m!1875857))

(assert (=> bs!391421 m!1875857))

(declare-fun m!1875859 () Bool)

(assert (=> bs!391421 m!1875859))

(assert (=> bs!391421 m!1875111))

(declare-fun m!1875861 () Bool)

(assert (=> bs!391421 m!1875861))

(assert (=> b!1585948 d!471980))

(declare-fun b!1586271 () Bool)

(declare-fun res!707460 () Bool)

(declare-fun e!1018845 () Bool)

(assert (=> b!1586271 (=> (not res!707460) (not e!1018845))))

(declare-fun lt!558608 () List!17496)

(assert (=> b!1586271 (= res!707460 (= (size!14025 lt!558608) (+ (size!14025 lt!558130) (size!14025 lt!558147))))))

(declare-fun b!1586270 () Bool)

(declare-fun e!1018844 () List!17496)

(assert (=> b!1586270 (= e!1018844 (Cons!17426 (h!22827 lt!558130) (++!4544 (t!144207 lt!558130) lt!558147)))))

(declare-fun b!1586272 () Bool)

(assert (=> b!1586272 (= e!1018845 (or (not (= lt!558147 Nil!17426)) (= lt!558608 lt!558130)))))

(declare-fun d!471982 () Bool)

(assert (=> d!471982 e!1018845))

(declare-fun res!707461 () Bool)

(assert (=> d!471982 (=> (not res!707461) (not e!1018845))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2401 (List!17496) (InoxSet C!8972))

(assert (=> d!471982 (= res!707461 (= (content!2401 lt!558608) ((_ map or) (content!2401 lt!558130) (content!2401 lt!558147))))))

(assert (=> d!471982 (= lt!558608 e!1018844)))

(declare-fun c!257129 () Bool)

(assert (=> d!471982 (= c!257129 ((_ is Nil!17426) lt!558130))))

(assert (=> d!471982 (= (++!4544 lt!558130 lt!558147) lt!558608)))

(declare-fun b!1586269 () Bool)

(assert (=> b!1586269 (= e!1018844 lt!558147)))

(assert (= (and d!471982 c!257129) b!1586269))

(assert (= (and d!471982 (not c!257129)) b!1586270))

(assert (= (and d!471982 res!707461) b!1586271))

(assert (= (and b!1586271 res!707460) b!1586272))

(declare-fun m!1875889 () Bool)

(assert (=> b!1586271 m!1875889))

(assert (=> b!1586271 m!1875699))

(declare-fun m!1875891 () Bool)

(assert (=> b!1586271 m!1875891))

(declare-fun m!1875893 () Bool)

(assert (=> b!1586270 m!1875893))

(declare-fun m!1875895 () Bool)

(assert (=> d!471982 m!1875895))

(declare-fun m!1875897 () Bool)

(assert (=> d!471982 m!1875897))

(declare-fun m!1875899 () Bool)

(assert (=> d!471982 m!1875899))

(assert (=> b!1585948 d!471982))

(declare-fun d!471994 () Bool)

(declare-fun lt!558609 () BalanceConc!11524)

(assert (=> d!471994 (= (list!6760 lt!558609) (printList!815 thiss!17113 (list!6759 lt!558149)))))

(assert (=> d!471994 (= lt!558609 (printTailRec!753 thiss!17113 lt!558149 0 (BalanceConc!11525 Empty!5790)))))

(assert (=> d!471994 (= (print!1231 thiss!17113 lt!558149) lt!558609)))

(declare-fun bs!391423 () Bool)

(assert (= bs!391423 d!471994))

(declare-fun m!1875901 () Bool)

(assert (=> bs!391423 m!1875901))

(assert (=> bs!391423 m!1875141))

(assert (=> bs!391423 m!1875141))

(declare-fun m!1875903 () Bool)

(assert (=> bs!391423 m!1875903))

(declare-fun m!1875905 () Bool)

(assert (=> bs!391423 m!1875905))

(assert (=> b!1585948 d!471994))

(declare-fun b!1586283 () Bool)

(declare-fun e!1018854 () Bool)

(declare-fun lt!558612 () tuple2!16914)

(assert (=> b!1586283 (= e!1018854 (not (isEmpty!10446 (_1!9859 lt!558612))))))

(declare-fun b!1586284 () Bool)

(declare-fun e!1018852 () Bool)

(assert (=> b!1586284 (= e!1018852 (= (_2!9859 lt!558612) lt!558137))))

(declare-fun e!1018853 () Bool)

(declare-fun b!1586285 () Bool)

(declare-datatypes ((tuple2!16918 0))(
  ( (tuple2!16919 (_1!9861 List!17498) (_2!9861 List!17496)) )
))
(declare-fun lexList!787 (LexerInterface!2700 List!17497 List!17496) tuple2!16918)

(assert (=> b!1586285 (= e!1018853 (= (list!6760 (_2!9859 lt!558612)) (_2!9861 (lexList!787 thiss!17113 rules!1846 (list!6760 lt!558137)))))))

(declare-fun d!471996 () Bool)

(assert (=> d!471996 e!1018853))

(declare-fun res!707469 () Bool)

(assert (=> d!471996 (=> (not res!707469) (not e!1018853))))

(assert (=> d!471996 (= res!707469 e!1018852)))

(declare-fun c!257132 () Bool)

(assert (=> d!471996 (= c!257132 (> (size!14026 (_1!9859 lt!558612)) 0))))

(declare-fun lexTailRecV2!510 (LexerInterface!2700 List!17497 BalanceConc!11524 BalanceConc!11524 BalanceConc!11524 BalanceConc!11526) tuple2!16914)

(assert (=> d!471996 (= lt!558612 (lexTailRecV2!510 thiss!17113 rules!1846 lt!558137 (BalanceConc!11525 Empty!5790) lt!558137 (BalanceConc!11527 Empty!5791)))))

(assert (=> d!471996 (= (lex!1184 thiss!17113 rules!1846 lt!558137) lt!558612)))

(declare-fun b!1586286 () Bool)

(declare-fun res!707470 () Bool)

(assert (=> b!1586286 (=> (not res!707470) (not e!1018853))))

(assert (=> b!1586286 (= res!707470 (= (list!6759 (_1!9859 lt!558612)) (_1!9861 (lexList!787 thiss!17113 rules!1846 (list!6760 lt!558137)))))))

(declare-fun b!1586287 () Bool)

(assert (=> b!1586287 (= e!1018852 e!1018854)))

(declare-fun res!707468 () Bool)

(assert (=> b!1586287 (= res!707468 (< (size!14024 (_2!9859 lt!558612)) (size!14024 lt!558137)))))

(assert (=> b!1586287 (=> (not res!707468) (not e!1018854))))

(assert (= (and d!471996 c!257132) b!1586287))

(assert (= (and d!471996 (not c!257132)) b!1586284))

(assert (= (and b!1586287 res!707468) b!1586283))

(assert (= (and d!471996 res!707469) b!1586286))

(assert (= (and b!1586286 res!707470) b!1586285))

(declare-fun m!1875909 () Bool)

(assert (=> b!1586286 m!1875909))

(assert (=> b!1586286 m!1875119))

(assert (=> b!1586286 m!1875119))

(declare-fun m!1875911 () Bool)

(assert (=> b!1586286 m!1875911))

(declare-fun m!1875913 () Bool)

(assert (=> b!1586287 m!1875913))

(declare-fun m!1875915 () Bool)

(assert (=> b!1586287 m!1875915))

(declare-fun m!1875917 () Bool)

(assert (=> b!1586283 m!1875917))

(declare-fun m!1875919 () Bool)

(assert (=> d!471996 m!1875919))

(declare-fun m!1875921 () Bool)

(assert (=> d!471996 m!1875921))

(declare-fun m!1875923 () Bool)

(assert (=> b!1586285 m!1875923))

(assert (=> b!1586285 m!1875119))

(assert (=> b!1586285 m!1875119))

(assert (=> b!1586285 m!1875911))

(assert (=> b!1585948 d!471996))

(declare-fun d!472000 () Bool)

(assert (=> d!472000 (= (list!6760 lt!558137) (list!6764 (c!257077 lt!558137)))))

(declare-fun bs!391425 () Bool)

(assert (= bs!391425 d!472000))

(declare-fun m!1875925 () Bool)

(assert (=> bs!391425 m!1875925))

(assert (=> b!1585948 d!472000))

(declare-fun d!472002 () Bool)

(declare-fun fromListB!810 (List!17498) BalanceConc!11526)

(assert (=> d!472002 (= (seqFromList!1892 tokens!457) (fromListB!810 tokens!457))))

(declare-fun bs!391426 () Bool)

(assert (= bs!391426 d!472002))

(declare-fun m!1875927 () Bool)

(assert (=> bs!391426 m!1875927))

(assert (=> b!1585948 d!472002))

(declare-fun d!472004 () Bool)

(assert (=> d!472004 (= (list!6760 lt!558150) (list!6764 (c!257077 lt!558150)))))

(declare-fun bs!391427 () Bool)

(assert (= bs!391427 d!472004))

(declare-fun m!1875929 () Bool)

(assert (=> bs!391427 m!1875929))

(assert (=> b!1585948 d!472004))

(declare-fun d!472006 () Bool)

(declare-fun lt!558615 () BalanceConc!11524)

(assert (=> d!472006 (= (list!6760 lt!558615) (originalCharacters!3885 (h!22829 tokens!457)))))

(declare-fun dynLambda!7743 (Int TokenValue!3161) BalanceConc!11524)

(assert (=> d!472006 (= lt!558615 (dynLambda!7743 (toChars!4341 (transformation!3071 (rule!4875 (h!22829 tokens!457)))) (value!97196 (h!22829 tokens!457))))))

(assert (=> d!472006 (= (charsOf!1720 (h!22829 tokens!457)) lt!558615)))

(declare-fun b_lambda!49903 () Bool)

(assert (=> (not b_lambda!49903) (not d!472006)))

(declare-fun t!144227 () Bool)

(declare-fun tb!89279 () Bool)

(assert (=> (and b!1585941 (= (toChars!4341 (transformation!3071 (h!22828 rules!1846))) (toChars!4341 (transformation!3071 (rule!4875 (h!22829 tokens!457))))) t!144227) tb!89279))

(declare-fun b!1586292 () Bool)

(declare-fun e!1018857 () Bool)

(declare-fun tp!466293 () Bool)

(declare-fun inv!22849 (Conc!5790) Bool)

(assert (=> b!1586292 (= e!1018857 (and (inv!22849 (c!257077 (dynLambda!7743 (toChars!4341 (transformation!3071 (rule!4875 (h!22829 tokens!457)))) (value!97196 (h!22829 tokens!457))))) tp!466293))))

(declare-fun result!108048 () Bool)

(declare-fun inv!22850 (BalanceConc!11524) Bool)

(assert (=> tb!89279 (= result!108048 (and (inv!22850 (dynLambda!7743 (toChars!4341 (transformation!3071 (rule!4875 (h!22829 tokens!457)))) (value!97196 (h!22829 tokens!457)))) e!1018857))))

(assert (= tb!89279 b!1586292))

(declare-fun m!1875931 () Bool)

(assert (=> b!1586292 m!1875931))

(declare-fun m!1875933 () Bool)

(assert (=> tb!89279 m!1875933))

(assert (=> d!472006 t!144227))

(declare-fun b_and!111209 () Bool)

(assert (= b_and!111191 (and (=> t!144227 result!108048) b_and!111209)))

(declare-fun t!144229 () Bool)

(declare-fun tb!89281 () Bool)

(assert (=> (and b!1585939 (= (toChars!4341 (transformation!3071 (rule!4875 (h!22829 tokens!457)))) (toChars!4341 (transformation!3071 (rule!4875 (h!22829 tokens!457))))) t!144229) tb!89281))

(declare-fun result!108052 () Bool)

(assert (= result!108052 result!108048))

(assert (=> d!472006 t!144229))

(declare-fun b_and!111211 () Bool)

(assert (= b_and!111195 (and (=> t!144229 result!108052) b_and!111211)))

(declare-fun m!1875935 () Bool)

(assert (=> d!472006 m!1875935))

(declare-fun m!1875937 () Bool)

(assert (=> d!472006 m!1875937))

(assert (=> b!1585948 d!472006))

(declare-fun d!472008 () Bool)

(assert (=> d!472008 (= (seqFromList!1892 (t!144209 tokens!457)) (fromListB!810 (t!144209 tokens!457)))))

(declare-fun bs!391428 () Bool)

(assert (= bs!391428 d!472008))

(declare-fun m!1875939 () Bool)

(assert (=> bs!391428 m!1875939))

(assert (=> b!1585948 d!472008))

(declare-fun d!472010 () Bool)

(assert (=> d!472010 (= (list!6760 lt!558140) (list!6764 (c!257077 lt!558140)))))

(declare-fun bs!391429 () Bool)

(assert (= bs!391429 d!472010))

(declare-fun m!1875941 () Bool)

(assert (=> bs!391429 m!1875941))

(assert (=> b!1585948 d!472010))

(declare-fun d!472012 () Bool)

(declare-fun res!707475 () Bool)

(declare-fun e!1018860 () Bool)

(assert (=> d!472012 (=> (not res!707475) (not e!1018860))))

(assert (=> d!472012 (= res!707475 (not (isEmpty!10452 (originalCharacters!3885 (h!22829 tokens!457)))))))

(assert (=> d!472012 (= (inv!22845 (h!22829 tokens!457)) e!1018860)))

(declare-fun b!1586297 () Bool)

(declare-fun res!707476 () Bool)

(assert (=> b!1586297 (=> (not res!707476) (not e!1018860))))

(assert (=> b!1586297 (= res!707476 (= (originalCharacters!3885 (h!22829 tokens!457)) (list!6760 (dynLambda!7743 (toChars!4341 (transformation!3071 (rule!4875 (h!22829 tokens!457)))) (value!97196 (h!22829 tokens!457))))))))

(declare-fun b!1586298 () Bool)

(assert (=> b!1586298 (= e!1018860 (= (size!14020 (h!22829 tokens!457)) (size!14025 (originalCharacters!3885 (h!22829 tokens!457)))))))

(assert (= (and d!472012 res!707475) b!1586297))

(assert (= (and b!1586297 res!707476) b!1586298))

(declare-fun b_lambda!49905 () Bool)

(assert (=> (not b_lambda!49905) (not b!1586297)))

(assert (=> b!1586297 t!144227))

(declare-fun b_and!111213 () Bool)

(assert (= b_and!111209 (and (=> t!144227 result!108048) b_and!111213)))

(assert (=> b!1586297 t!144229))

(declare-fun b_and!111215 () Bool)

(assert (= b_and!111211 (and (=> t!144229 result!108052) b_and!111215)))

(declare-fun m!1875943 () Bool)

(assert (=> d!472012 m!1875943))

(assert (=> b!1586297 m!1875937))

(assert (=> b!1586297 m!1875937))

(declare-fun m!1875945 () Bool)

(assert (=> b!1586297 m!1875945))

(declare-fun m!1875947 () Bool)

(assert (=> b!1586298 m!1875947))

(assert (=> b!1585937 d!472012))

(declare-fun b!1586313 () Bool)

(declare-fun res!707483 () Bool)

(declare-fun e!1018872 () Bool)

(assert (=> b!1586313 (=> res!707483 e!1018872)))

(assert (=> b!1586313 (= res!707483 (not ((_ is IntegerValue!9485) (value!97196 (h!22829 tokens!457)))))))

(declare-fun e!1018873 () Bool)

(assert (=> b!1586313 (= e!1018873 e!1018872)))

(declare-fun b!1586314 () Bool)

(declare-fun e!1018871 () Bool)

(assert (=> b!1586314 (= e!1018871 e!1018873)))

(declare-fun c!257137 () Bool)

(assert (=> b!1586314 (= c!257137 ((_ is IntegerValue!9484) (value!97196 (h!22829 tokens!457))))))

(declare-fun b!1586315 () Bool)

(declare-fun inv!15 (TokenValue!3161) Bool)

(assert (=> b!1586315 (= e!1018872 (inv!15 (value!97196 (h!22829 tokens!457))))))

(declare-fun b!1586316 () Bool)

(declare-fun inv!16 (TokenValue!3161) Bool)

(assert (=> b!1586316 (= e!1018871 (inv!16 (value!97196 (h!22829 tokens!457))))))

(declare-fun b!1586317 () Bool)

(declare-fun inv!17 (TokenValue!3161) Bool)

(assert (=> b!1586317 (= e!1018873 (inv!17 (value!97196 (h!22829 tokens!457))))))

(declare-fun d!472014 () Bool)

(declare-fun c!257138 () Bool)

(assert (=> d!472014 (= c!257138 ((_ is IntegerValue!9483) (value!97196 (h!22829 tokens!457))))))

(assert (=> d!472014 (= (inv!21 (value!97196 (h!22829 tokens!457))) e!1018871)))

(assert (= (and d!472014 c!257138) b!1586316))

(assert (= (and d!472014 (not c!257138)) b!1586314))

(assert (= (and b!1586314 c!257137) b!1586317))

(assert (= (and b!1586314 (not c!257137)) b!1586313))

(assert (= (and b!1586313 (not res!707483)) b!1586315))

(declare-fun m!1875949 () Bool)

(assert (=> b!1586315 m!1875949))

(declare-fun m!1875951 () Bool)

(assert (=> b!1586316 m!1875951))

(declare-fun m!1875953 () Bool)

(assert (=> b!1586317 m!1875953))

(assert (=> b!1585954 d!472014))

(declare-fun d!472016 () Bool)

(declare-fun lt!558642 () Bool)

(declare-fun e!1018918 () Bool)

(assert (=> d!472016 (= lt!558642 e!1018918)))

(declare-fun res!707493 () Bool)

(assert (=> d!472016 (=> (not res!707493) (not e!1018918))))

(assert (=> d!472016 (= res!707493 (= (list!6759 (_1!9859 (lex!1184 thiss!17113 rules!1846 (print!1231 thiss!17113 (singletonSeq!1421 (h!22829 tokens!457)))))) (list!6759 (singletonSeq!1421 (h!22829 tokens!457)))))))

(declare-fun e!1018917 () Bool)

(assert (=> d!472016 (= lt!558642 e!1018917)))

(declare-fun res!707492 () Bool)

(assert (=> d!472016 (=> (not res!707492) (not e!1018917))))

(declare-fun lt!558641 () tuple2!16914)

(assert (=> d!472016 (= res!707492 (= (size!14026 (_1!9859 lt!558641)) 1))))

(assert (=> d!472016 (= lt!558641 (lex!1184 thiss!17113 rules!1846 (print!1231 thiss!17113 (singletonSeq!1421 (h!22829 tokens!457)))))))

(assert (=> d!472016 (not (isEmpty!10447 rules!1846))))

(assert (=> d!472016 (= (rulesProduceIndividualToken!1352 thiss!17113 rules!1846 (h!22829 tokens!457)) lt!558642)))

(declare-fun b!1586374 () Bool)

(declare-fun res!707494 () Bool)

(assert (=> b!1586374 (=> (not res!707494) (not e!1018917))))

(assert (=> b!1586374 (= res!707494 (= (apply!4261 (_1!9859 lt!558641) 0) (h!22829 tokens!457)))))

(declare-fun b!1586375 () Bool)

(assert (=> b!1586375 (= e!1018917 (isEmpty!10453 (_2!9859 lt!558641)))))

(declare-fun b!1586376 () Bool)

(assert (=> b!1586376 (= e!1018918 (isEmpty!10453 (_2!9859 (lex!1184 thiss!17113 rules!1846 (print!1231 thiss!17113 (singletonSeq!1421 (h!22829 tokens!457)))))))))

(assert (= (and d!472016 res!707492) b!1586374))

(assert (= (and b!1586374 res!707494) b!1586375))

(assert (= (and d!472016 res!707493) b!1586376))

(assert (=> d!472016 m!1875131))

(declare-fun m!1875975 () Bool)

(assert (=> d!472016 m!1875975))

(declare-fun m!1875977 () Bool)

(assert (=> d!472016 m!1875977))

(assert (=> d!472016 m!1875131))

(declare-fun m!1875979 () Bool)

(assert (=> d!472016 m!1875979))

(assert (=> d!472016 m!1875079))

(assert (=> d!472016 m!1875131))

(declare-fun m!1875981 () Bool)

(assert (=> d!472016 m!1875981))

(assert (=> d!472016 m!1875975))

(declare-fun m!1875983 () Bool)

(assert (=> d!472016 m!1875983))

(declare-fun m!1875985 () Bool)

(assert (=> b!1586374 m!1875985))

(declare-fun m!1875987 () Bool)

(assert (=> b!1586375 m!1875987))

(assert (=> b!1586376 m!1875131))

(assert (=> b!1586376 m!1875131))

(assert (=> b!1586376 m!1875975))

(assert (=> b!1586376 m!1875975))

(assert (=> b!1586376 m!1875983))

(declare-fun m!1875989 () Bool)

(assert (=> b!1586376 m!1875989))

(assert (=> b!1585943 d!472016))

(declare-fun d!472018 () Bool)

(assert (=> d!472018 true))

(declare-fun lt!558645 () Bool)

(declare-fun lambda!66589 () Int)

(declare-fun forall!4008 (List!17497 Int) Bool)

(assert (=> d!472018 (= lt!558645 (forall!4008 rules!1846 lambda!66589))))

(declare-fun e!1018923 () Bool)

(assert (=> d!472018 (= lt!558645 e!1018923)))

(declare-fun res!707499 () Bool)

(assert (=> d!472018 (=> res!707499 e!1018923)))

(assert (=> d!472018 (= res!707499 (not ((_ is Cons!17427) rules!1846)))))

(assert (=> d!472018 (= (rulesValidInductive!920 thiss!17113 rules!1846) lt!558645)))

(declare-fun b!1586381 () Bool)

(declare-fun e!1018924 () Bool)

(assert (=> b!1586381 (= e!1018923 e!1018924)))

(declare-fun res!707500 () Bool)

(assert (=> b!1586381 (=> (not res!707500) (not e!1018924))))

(declare-fun ruleValid!713 (LexerInterface!2700 Rule!5942) Bool)

(assert (=> b!1586381 (= res!707500 (ruleValid!713 thiss!17113 (h!22828 rules!1846)))))

(declare-fun b!1586382 () Bool)

(assert (=> b!1586382 (= e!1018924 (rulesValidInductive!920 thiss!17113 (t!144208 rules!1846)))))

(assert (= (and d!472018 (not res!707499)) b!1586381))

(assert (= (and b!1586381 res!707500) b!1586382))

(declare-fun m!1875991 () Bool)

(assert (=> d!472018 m!1875991))

(declare-fun m!1875993 () Bool)

(assert (=> b!1586381 m!1875993))

(declare-fun m!1875995 () Bool)

(assert (=> b!1586382 m!1875995))

(assert (=> b!1585944 d!472018))

(declare-fun d!472020 () Bool)

(declare-fun res!707503 () Bool)

(declare-fun e!1018927 () Bool)

(assert (=> d!472020 (=> (not res!707503) (not e!1018927))))

(declare-fun rulesValid!1086 (LexerInterface!2700 List!17497) Bool)

(assert (=> d!472020 (= res!707503 (rulesValid!1086 thiss!17113 rules!1846))))

(assert (=> d!472020 (= (rulesInvariant!2369 thiss!17113 rules!1846) e!1018927)))

(declare-fun b!1586387 () Bool)

(declare-datatypes ((List!17502 0))(
  ( (Nil!17432) (Cons!17432 (h!22833 String!20137) (t!144255 List!17502)) )
))
(declare-fun noDuplicateTag!1086 (LexerInterface!2700 List!17497 List!17502) Bool)

(assert (=> b!1586387 (= e!1018927 (noDuplicateTag!1086 thiss!17113 rules!1846 Nil!17432))))

(assert (= (and d!472020 res!707503) b!1586387))

(declare-fun m!1875997 () Bool)

(assert (=> d!472020 m!1875997))

(declare-fun m!1875999 () Bool)

(assert (=> b!1586387 m!1875999))

(assert (=> b!1585955 d!472020))

(declare-fun d!472022 () Bool)

(declare-fun e!1018930 () Bool)

(assert (=> d!472022 e!1018930))

(declare-fun res!707506 () Bool)

(assert (=> d!472022 (=> (not res!707506) (not e!1018930))))

(declare-fun prepend!557 (Conc!5791 Token!5708) Conc!5791)

(assert (=> d!472022 (= res!707506 (isBalanced!1705 (prepend!557 (c!257079 (seqFromList!1892 (t!144209 (t!144209 tokens!457)))) (h!22829 (t!144209 tokens!457)))))))

(declare-fun lt!558648 () BalanceConc!11526)

(assert (=> d!472022 (= lt!558648 (BalanceConc!11527 (prepend!557 (c!257079 (seqFromList!1892 (t!144209 (t!144209 tokens!457)))) (h!22829 (t!144209 tokens!457)))))))

(assert (=> d!472022 (= (prepend!555 (seqFromList!1892 (t!144209 (t!144209 tokens!457))) (h!22829 (t!144209 tokens!457))) lt!558648)))

(declare-fun b!1586390 () Bool)

(assert (=> b!1586390 (= e!1018930 (= (list!6759 lt!558648) (Cons!17428 (h!22829 (t!144209 tokens!457)) (list!6759 (seqFromList!1892 (t!144209 (t!144209 tokens!457)))))))))

(assert (= (and d!472022 res!707506) b!1586390))

(declare-fun m!1876001 () Bool)

(assert (=> d!472022 m!1876001))

(assert (=> d!472022 m!1876001))

(declare-fun m!1876003 () Bool)

(assert (=> d!472022 m!1876003))

(declare-fun m!1876005 () Bool)

(assert (=> b!1586390 m!1876005))

(assert (=> b!1586390 m!1875145))

(declare-fun m!1876007 () Bool)

(assert (=> b!1586390 m!1876007))

(assert (=> b!1585956 d!472022))

(declare-fun d!472024 () Bool)

(assert (=> d!472024 (= (list!6759 (prepend!555 (seqFromList!1892 (t!144209 (t!144209 tokens!457))) (h!22829 (t!144209 tokens!457)))) (list!6763 (c!257079 (prepend!555 (seqFromList!1892 (t!144209 (t!144209 tokens!457))) (h!22829 (t!144209 tokens!457))))))))

(declare-fun bs!391430 () Bool)

(assert (= bs!391430 d!472024))

(declare-fun m!1876009 () Bool)

(assert (=> bs!391430 m!1876009))

(assert (=> b!1585956 d!472024))

(declare-fun d!472026 () Bool)

(assert (=> d!472026 (= (list!6759 lt!558149) (list!6763 (c!257079 lt!558149)))))

(declare-fun bs!391431 () Bool)

(assert (= bs!391431 d!472026))

(declare-fun m!1876011 () Bool)

(assert (=> bs!391431 m!1876011))

(assert (=> b!1585956 d!472026))

(declare-fun d!472028 () Bool)

(assert (=> d!472028 (= (seqFromList!1892 (t!144209 (t!144209 tokens!457))) (fromListB!810 (t!144209 (t!144209 tokens!457))))))

(declare-fun bs!391432 () Bool)

(assert (= bs!391432 d!472028))

(declare-fun m!1876013 () Bool)

(assert (=> bs!391432 m!1876013))

(assert (=> b!1585956 d!472028))

(declare-fun d!472030 () Bool)

(assert (=> d!472030 (= (list!6759 (_1!9859 lt!558143)) (list!6759 (prepend!555 (seqFromList!1892 (t!144209 (t!144209 tokens!457))) (h!22829 (t!144209 tokens!457)))))))

(declare-fun lt!558651 () Unit!27329)

(declare-fun choose!9500 (Token!5708 List!17498 BalanceConc!11526) Unit!27329)

(assert (=> d!472030 (= lt!558651 (choose!9500 (h!22829 (t!144209 tokens!457)) (t!144209 (t!144209 tokens!457)) (_1!9859 lt!558143)))))

(declare-fun $colon$colon!279 (List!17498 Token!5708) List!17498)

(assert (=> d!472030 (= (list!6759 (_1!9859 lt!558143)) (list!6759 (seqFromList!1892 ($colon$colon!279 (t!144209 (t!144209 tokens!457)) (h!22829 (t!144209 tokens!457))))))))

(assert (=> d!472030 (= (seqFromListBHdTlConstructive!148 (h!22829 (t!144209 tokens!457)) (t!144209 (t!144209 tokens!457)) (_1!9859 lt!558143)) lt!558651)))

(declare-fun bs!391433 () Bool)

(assert (= bs!391433 d!472030))

(assert (=> bs!391433 m!1875155))

(assert (=> bs!391433 m!1875145))

(assert (=> bs!391433 m!1875145))

(assert (=> bs!391433 m!1875147))

(assert (=> bs!391433 m!1875147))

(assert (=> bs!391433 m!1875149))

(declare-fun m!1876015 () Bool)

(assert (=> bs!391433 m!1876015))

(declare-fun m!1876017 () Bool)

(assert (=> bs!391433 m!1876017))

(assert (=> bs!391433 m!1876015))

(assert (=> bs!391433 m!1876017))

(declare-fun m!1876019 () Bool)

(assert (=> bs!391433 m!1876019))

(declare-fun m!1876021 () Bool)

(assert (=> bs!391433 m!1876021))

(assert (=> b!1585956 d!472030))

(declare-fun d!472032 () Bool)

(declare-fun e!1018933 () Bool)

(assert (=> d!472032 e!1018933))

(declare-fun res!707509 () Bool)

(assert (=> d!472032 (=> (not res!707509) (not e!1018933))))

(declare-fun lt!558654 () BalanceConc!11524)

(assert (=> d!472032 (= res!707509 (= (list!6760 lt!558654) (Cons!17426 (apply!4254 (charsOf!1720 (h!22829 (t!144209 tokens!457))) 0) Nil!17426)))))

(declare-fun singleton!586 (C!8972) BalanceConc!11524)

(assert (=> d!472032 (= lt!558654 (singleton!586 (apply!4254 (charsOf!1720 (h!22829 (t!144209 tokens!457))) 0)))))

(assert (=> d!472032 (= (singletonSeq!1420 (apply!4254 (charsOf!1720 (h!22829 (t!144209 tokens!457))) 0)) lt!558654)))

(declare-fun b!1586393 () Bool)

(declare-fun isBalanced!1706 (Conc!5790) Bool)

(assert (=> b!1586393 (= e!1018933 (isBalanced!1706 (c!257077 lt!558654)))))

(assert (= (and d!472032 res!707509) b!1586393))

(declare-fun m!1876023 () Bool)

(assert (=> d!472032 m!1876023))

(assert (=> d!472032 m!1875073))

(declare-fun m!1876025 () Bool)

(assert (=> d!472032 m!1876025))

(declare-fun m!1876027 () Bool)

(assert (=> b!1586393 m!1876027))

(assert (=> b!1585945 d!472032))

(declare-fun lt!558682 () Bool)

(declare-fun d!472034 () Bool)

(declare-fun prefixMatch!334 (Regex!4399 List!17496) Bool)

(assert (=> d!472034 (= lt!558682 (prefixMatch!334 (rulesRegex!461 thiss!17113 rules!1846) (list!6760 (++!4543 lt!558150 (singletonSeq!1420 (apply!4254 (charsOf!1720 (h!22829 (t!144209 tokens!457))) 0))))))))

(declare-datatypes ((List!17503 0))(
  ( (Nil!17433) (Cons!17433 (h!22834 Regex!4399) (t!144256 List!17503)) )
))
(declare-datatypes ((Context!1650 0))(
  ( (Context!1651 (exprs!1325 List!17503)) )
))
(declare-fun prefixMatchZipperSequence!419 ((InoxSet Context!1650) BalanceConc!11524 Int) Bool)

(declare-fun focus!131 (Regex!4399) (InoxSet Context!1650))

(assert (=> d!472034 (= lt!558682 (prefixMatchZipperSequence!419 (focus!131 (rulesRegex!461 thiss!17113 rules!1846)) (++!4543 lt!558150 (singletonSeq!1420 (apply!4254 (charsOf!1720 (h!22829 (t!144209 tokens!457))) 0))) 0))))

(declare-fun lt!558676 () Unit!27329)

(declare-fun lt!558684 () Unit!27329)

(assert (=> d!472034 (= lt!558676 lt!558684)))

(declare-fun lt!558679 () List!17496)

(declare-fun lt!558675 () (InoxSet Context!1650))

(declare-fun prefixMatchZipper!110 ((InoxSet Context!1650) List!17496) Bool)

(assert (=> d!472034 (= (prefixMatch!334 (rulesRegex!461 thiss!17113 rules!1846) lt!558679) (prefixMatchZipper!110 lt!558675 lt!558679))))

(declare-datatypes ((List!17504 0))(
  ( (Nil!17434) (Cons!17434 (h!22835 Context!1650) (t!144257 List!17504)) )
))
(declare-fun lt!558681 () List!17504)

(declare-fun prefixMatchZipperRegexEquiv!110 ((InoxSet Context!1650) List!17504 Regex!4399 List!17496) Unit!27329)

(assert (=> d!472034 (= lt!558684 (prefixMatchZipperRegexEquiv!110 lt!558675 lt!558681 (rulesRegex!461 thiss!17113 rules!1846) lt!558679))))

(assert (=> d!472034 (= lt!558679 (list!6760 (++!4543 lt!558150 (singletonSeq!1420 (apply!4254 (charsOf!1720 (h!22829 (t!144209 tokens!457))) 0)))))))

(declare-fun toList!871 ((InoxSet Context!1650)) List!17504)

(assert (=> d!472034 (= lt!558681 (toList!871 (focus!131 (rulesRegex!461 thiss!17113 rules!1846))))))

(assert (=> d!472034 (= lt!558675 (focus!131 (rulesRegex!461 thiss!17113 rules!1846)))))

(declare-fun lt!558680 () Unit!27329)

(declare-fun lt!558678 () Unit!27329)

(assert (=> d!472034 (= lt!558680 lt!558678)))

(declare-fun lt!558683 () (InoxSet Context!1650))

(declare-fun lt!558677 () Int)

(declare-fun dropList!524 (BalanceConc!11524 Int) List!17496)

(assert (=> d!472034 (= (prefixMatchZipper!110 lt!558683 (dropList!524 (++!4543 lt!558150 (singletonSeq!1420 (apply!4254 (charsOf!1720 (h!22829 (t!144209 tokens!457))) 0))) lt!558677)) (prefixMatchZipperSequence!419 lt!558683 (++!4543 lt!558150 (singletonSeq!1420 (apply!4254 (charsOf!1720 (h!22829 (t!144209 tokens!457))) 0))) lt!558677))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!110 ((InoxSet Context!1650) BalanceConc!11524 Int) Unit!27329)

(assert (=> d!472034 (= lt!558678 (lemmaprefixMatchZipperSequenceEquivalent!110 lt!558683 (++!4543 lt!558150 (singletonSeq!1420 (apply!4254 (charsOf!1720 (h!22829 (t!144209 tokens!457))) 0))) lt!558677))))

(assert (=> d!472034 (= lt!558677 0)))

(assert (=> d!472034 (= lt!558683 (focus!131 (rulesRegex!461 thiss!17113 rules!1846)))))

(declare-fun validRegex!1736 (Regex!4399) Bool)

(assert (=> d!472034 (validRegex!1736 (rulesRegex!461 thiss!17113 rules!1846))))

(assert (=> d!472034 (= (prefixMatchZipperSequence!417 (rulesRegex!461 thiss!17113 rules!1846) (++!4543 lt!558150 (singletonSeq!1420 (apply!4254 (charsOf!1720 (h!22829 (t!144209 tokens!457))) 0)))) lt!558682)))

(declare-fun bs!391434 () Bool)

(assert (= bs!391434 d!472034))

(assert (=> bs!391434 m!1875069))

(declare-fun m!1876029 () Bool)

(assert (=> bs!391434 m!1876029))

(assert (=> bs!391434 m!1875067))

(declare-fun m!1876031 () Bool)

(assert (=> bs!391434 m!1876031))

(assert (=> bs!391434 m!1875067))

(declare-fun m!1876033 () Bool)

(assert (=> bs!391434 m!1876033))

(assert (=> bs!391434 m!1875069))

(declare-fun m!1876035 () Bool)

(assert (=> bs!391434 m!1876035))

(assert (=> bs!391434 m!1875067))

(declare-fun m!1876037 () Bool)

(assert (=> bs!391434 m!1876037))

(assert (=> bs!391434 m!1875069))

(declare-fun m!1876039 () Bool)

(assert (=> bs!391434 m!1876039))

(assert (=> bs!391434 m!1876037))

(declare-fun m!1876041 () Bool)

(assert (=> bs!391434 m!1876041))

(assert (=> bs!391434 m!1876037))

(assert (=> bs!391434 m!1875069))

(declare-fun m!1876043 () Bool)

(assert (=> bs!391434 m!1876043))

(declare-fun m!1876045 () Bool)

(assert (=> bs!391434 m!1876045))

(assert (=> bs!391434 m!1875067))

(assert (=> bs!391434 m!1876029))

(declare-fun m!1876047 () Bool)

(assert (=> bs!391434 m!1876047))

(assert (=> bs!391434 m!1875067))

(declare-fun m!1876049 () Bool)

(assert (=> bs!391434 m!1876049))

(assert (=> bs!391434 m!1876035))

(declare-fun m!1876051 () Bool)

(assert (=> bs!391434 m!1876051))

(assert (=> bs!391434 m!1875069))

(declare-fun m!1876053 () Bool)

(assert (=> bs!391434 m!1876053))

(assert (=> b!1585945 d!472034))

(declare-fun d!472036 () Bool)

(declare-fun e!1018936 () Bool)

(assert (=> d!472036 e!1018936))

(declare-fun res!707519 () Bool)

(assert (=> d!472036 (=> (not res!707519) (not e!1018936))))

(declare-fun appendAssocInst!389 (Conc!5790 Conc!5790) Bool)

(assert (=> d!472036 (= res!707519 (appendAssocInst!389 (c!257077 lt!558150) (c!257077 (singletonSeq!1420 (apply!4254 (charsOf!1720 (h!22829 (t!144209 tokens!457))) 0)))))))

(declare-fun lt!558687 () BalanceConc!11524)

(declare-fun ++!4546 (Conc!5790 Conc!5790) Conc!5790)

(assert (=> d!472036 (= lt!558687 (BalanceConc!11525 (++!4546 (c!257077 lt!558150) (c!257077 (singletonSeq!1420 (apply!4254 (charsOf!1720 (h!22829 (t!144209 tokens!457))) 0))))))))

(assert (=> d!472036 (= (++!4543 lt!558150 (singletonSeq!1420 (apply!4254 (charsOf!1720 (h!22829 (t!144209 tokens!457))) 0))) lt!558687)))

(declare-fun b!1586405 () Bool)

(assert (=> b!1586405 (= e!1018936 (= (list!6760 lt!558687) (++!4544 (list!6760 lt!558150) (list!6760 (singletonSeq!1420 (apply!4254 (charsOf!1720 (h!22829 (t!144209 tokens!457))) 0))))))))

(declare-fun b!1586403 () Bool)

(declare-fun res!707518 () Bool)

(assert (=> b!1586403 (=> (not res!707518) (not e!1018936))))

(declare-fun height!855 (Conc!5790) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1586403 (= res!707518 (<= (height!855 (++!4546 (c!257077 lt!558150) (c!257077 (singletonSeq!1420 (apply!4254 (charsOf!1720 (h!22829 (t!144209 tokens!457))) 0))))) (+ (max!0 (height!855 (c!257077 lt!558150)) (height!855 (c!257077 (singletonSeq!1420 (apply!4254 (charsOf!1720 (h!22829 (t!144209 tokens!457))) 0))))) 1)))))

(declare-fun b!1586402 () Bool)

(declare-fun res!707521 () Bool)

(assert (=> b!1586402 (=> (not res!707521) (not e!1018936))))

(assert (=> b!1586402 (= res!707521 (isBalanced!1706 (++!4546 (c!257077 lt!558150) (c!257077 (singletonSeq!1420 (apply!4254 (charsOf!1720 (h!22829 (t!144209 tokens!457))) 0))))))))

(declare-fun b!1586404 () Bool)

(declare-fun res!707520 () Bool)

(assert (=> b!1586404 (=> (not res!707520) (not e!1018936))))

(assert (=> b!1586404 (= res!707520 (>= (height!855 (++!4546 (c!257077 lt!558150) (c!257077 (singletonSeq!1420 (apply!4254 (charsOf!1720 (h!22829 (t!144209 tokens!457))) 0))))) (max!0 (height!855 (c!257077 lt!558150)) (height!855 (c!257077 (singletonSeq!1420 (apply!4254 (charsOf!1720 (h!22829 (t!144209 tokens!457))) 0)))))))))

(assert (= (and d!472036 res!707519) b!1586402))

(assert (= (and b!1586402 res!707521) b!1586403))

(assert (= (and b!1586403 res!707518) b!1586404))

(assert (= (and b!1586404 res!707520) b!1586405))

(declare-fun m!1876055 () Bool)

(assert (=> b!1586403 m!1876055))

(assert (=> b!1586403 m!1876055))

(declare-fun m!1876057 () Bool)

(assert (=> b!1586403 m!1876057))

(declare-fun m!1876059 () Bool)

(assert (=> b!1586403 m!1876059))

(assert (=> b!1586403 m!1876057))

(declare-fun m!1876061 () Bool)

(assert (=> b!1586403 m!1876061))

(assert (=> b!1586403 m!1876061))

(declare-fun m!1876063 () Bool)

(assert (=> b!1586403 m!1876063))

(assert (=> b!1586402 m!1876061))

(assert (=> b!1586402 m!1876061))

(declare-fun m!1876065 () Bool)

(assert (=> b!1586402 m!1876065))

(declare-fun m!1876067 () Bool)

(assert (=> d!472036 m!1876067))

(assert (=> d!472036 m!1876061))

(declare-fun m!1876069 () Bool)

(assert (=> b!1586405 m!1876069))

(assert (=> b!1586405 m!1875115))

(assert (=> b!1586405 m!1875075))

(declare-fun m!1876071 () Bool)

(assert (=> b!1586405 m!1876071))

(assert (=> b!1586405 m!1875115))

(assert (=> b!1586405 m!1876071))

(declare-fun m!1876073 () Bool)

(assert (=> b!1586405 m!1876073))

(assert (=> b!1586404 m!1876055))

(assert (=> b!1586404 m!1876055))

(assert (=> b!1586404 m!1876057))

(assert (=> b!1586404 m!1876059))

(assert (=> b!1586404 m!1876057))

(assert (=> b!1586404 m!1876061))

(assert (=> b!1586404 m!1876061))

(assert (=> b!1586404 m!1876063))

(assert (=> b!1585945 d!472036))

(declare-fun d!472038 () Bool)

(declare-fun lt!558690 () C!8972)

(declare-fun apply!4263 (List!17496 Int) C!8972)

(assert (=> d!472038 (= lt!558690 (apply!4263 (list!6760 (charsOf!1720 (h!22829 (t!144209 tokens!457)))) 0))))

(declare-fun apply!4264 (Conc!5790 Int) C!8972)

(assert (=> d!472038 (= lt!558690 (apply!4264 (c!257077 (charsOf!1720 (h!22829 (t!144209 tokens!457)))) 0))))

(declare-fun e!1018939 () Bool)

(assert (=> d!472038 e!1018939))

(declare-fun res!707524 () Bool)

(assert (=> d!472038 (=> (not res!707524) (not e!1018939))))

(assert (=> d!472038 (= res!707524 (<= 0 0))))

(assert (=> d!472038 (= (apply!4254 (charsOf!1720 (h!22829 (t!144209 tokens!457))) 0) lt!558690)))

(declare-fun b!1586408 () Bool)

(assert (=> b!1586408 (= e!1018939 (< 0 (size!14024 (charsOf!1720 (h!22829 (t!144209 tokens!457))))))))

(assert (= (and d!472038 res!707524) b!1586408))

(assert (=> d!472038 m!1875077))

(assert (=> d!472038 m!1875627))

(assert (=> d!472038 m!1875627))

(declare-fun m!1876075 () Bool)

(assert (=> d!472038 m!1876075))

(declare-fun m!1876077 () Bool)

(assert (=> d!472038 m!1876077))

(assert (=> b!1586408 m!1875077))

(assert (=> b!1586408 m!1875441))

(assert (=> b!1585945 d!472038))

(declare-fun d!472040 () Bool)

(declare-fun lt!558693 () Unit!27329)

(declare-fun lemma!197 (List!17497 LexerInterface!2700 List!17497) Unit!27329)

(assert (=> d!472040 (= lt!558693 (lemma!197 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!66592 () Int)

(declare-fun generalisedUnion!205 (List!17503) Regex!4399)

(declare-fun map!3612 (List!17497 Int) List!17503)

(assert (=> d!472040 (= (rulesRegex!461 thiss!17113 rules!1846) (generalisedUnion!205 (map!3612 rules!1846 lambda!66592)))))

(declare-fun bs!391435 () Bool)

(assert (= bs!391435 d!472040))

(declare-fun m!1876079 () Bool)

(assert (=> bs!391435 m!1876079))

(declare-fun m!1876081 () Bool)

(assert (=> bs!391435 m!1876081))

(assert (=> bs!391435 m!1876081))

(declare-fun m!1876083 () Bool)

(assert (=> bs!391435 m!1876083))

(assert (=> b!1585945 d!472040))

(declare-fun d!472042 () Bool)

(declare-fun lt!558694 () BalanceConc!11524)

(assert (=> d!472042 (= (list!6760 lt!558694) (originalCharacters!3885 (h!22829 (t!144209 tokens!457))))))

(assert (=> d!472042 (= lt!558694 (dynLambda!7743 (toChars!4341 (transformation!3071 (rule!4875 (h!22829 (t!144209 tokens!457))))) (value!97196 (h!22829 (t!144209 tokens!457)))))))

(assert (=> d!472042 (= (charsOf!1720 (h!22829 (t!144209 tokens!457))) lt!558694)))

(declare-fun b_lambda!49913 () Bool)

(assert (=> (not b_lambda!49913) (not d!472042)))

(declare-fun tb!89291 () Bool)

(declare-fun t!144243 () Bool)

(assert (=> (and b!1585941 (= (toChars!4341 (transformation!3071 (h!22828 rules!1846))) (toChars!4341 (transformation!3071 (rule!4875 (h!22829 (t!144209 tokens!457)))))) t!144243) tb!89291))

(declare-fun b!1586409 () Bool)

(declare-fun e!1018940 () Bool)

(declare-fun tp!466344 () Bool)

(assert (=> b!1586409 (= e!1018940 (and (inv!22849 (c!257077 (dynLambda!7743 (toChars!4341 (transformation!3071 (rule!4875 (h!22829 (t!144209 tokens!457))))) (value!97196 (h!22829 (t!144209 tokens!457)))))) tp!466344))))

(declare-fun result!108070 () Bool)

(assert (=> tb!89291 (= result!108070 (and (inv!22850 (dynLambda!7743 (toChars!4341 (transformation!3071 (rule!4875 (h!22829 (t!144209 tokens!457))))) (value!97196 (h!22829 (t!144209 tokens!457))))) e!1018940))))

(assert (= tb!89291 b!1586409))

(declare-fun m!1876085 () Bool)

(assert (=> b!1586409 m!1876085))

(declare-fun m!1876087 () Bool)

(assert (=> tb!89291 m!1876087))

(assert (=> d!472042 t!144243))

(declare-fun b_and!111225 () Bool)

(assert (= b_and!111213 (and (=> t!144243 result!108070) b_and!111225)))

(declare-fun t!144245 () Bool)

(declare-fun tb!89293 () Bool)

(assert (=> (and b!1585939 (= (toChars!4341 (transformation!3071 (rule!4875 (h!22829 tokens!457)))) (toChars!4341 (transformation!3071 (rule!4875 (h!22829 (t!144209 tokens!457)))))) t!144245) tb!89293))

(declare-fun result!108072 () Bool)

(assert (= result!108072 result!108070))

(assert (=> d!472042 t!144245))

(declare-fun b_and!111227 () Bool)

(assert (= b_and!111215 (and (=> t!144245 result!108072) b_and!111227)))

(declare-fun m!1876089 () Bool)

(assert (=> d!472042 m!1876089))

(declare-fun m!1876091 () Bool)

(assert (=> d!472042 m!1876091))

(assert (=> b!1585945 d!472042))

(declare-fun d!472044 () Bool)

(assert (=> d!472044 (= (inv!22842 (tag!3341 (rule!4875 (h!22829 tokens!457)))) (= (mod (str.len (value!97195 (tag!3341 (rule!4875 (h!22829 tokens!457))))) 2) 0))))

(assert (=> b!1585951 d!472044))

(declare-fun d!472046 () Bool)

(declare-fun res!707527 () Bool)

(declare-fun e!1018943 () Bool)

(assert (=> d!472046 (=> (not res!707527) (not e!1018943))))

(declare-fun semiInverseModEq!1158 (Int Int) Bool)

(assert (=> d!472046 (= res!707527 (semiInverseModEq!1158 (toChars!4341 (transformation!3071 (rule!4875 (h!22829 tokens!457)))) (toValue!4482 (transformation!3071 (rule!4875 (h!22829 tokens!457))))))))

(assert (=> d!472046 (= (inv!22846 (transformation!3071 (rule!4875 (h!22829 tokens!457)))) e!1018943)))

(declare-fun b!1586412 () Bool)

(declare-fun equivClasses!1099 (Int Int) Bool)

(assert (=> b!1586412 (= e!1018943 (equivClasses!1099 (toChars!4341 (transformation!3071 (rule!4875 (h!22829 tokens!457)))) (toValue!4482 (transformation!3071 (rule!4875 (h!22829 tokens!457))))))))

(assert (= (and d!472046 res!707527) b!1586412))

(declare-fun m!1876093 () Bool)

(assert (=> d!472046 m!1876093))

(declare-fun m!1876095 () Bool)

(assert (=> b!1586412 m!1876095))

(assert (=> b!1585951 d!472046))

(declare-fun d!472048 () Bool)

(declare-fun lt!558697 () Bool)

(declare-fun isEmpty!10456 (List!17498) Bool)

(assert (=> d!472048 (= lt!558697 (isEmpty!10456 (list!6759 (_1!9859 (lex!1184 thiss!17113 rules!1846 (seqFromList!1891 lt!558130))))))))

(declare-fun isEmpty!10457 (Conc!5791) Bool)

(assert (=> d!472048 (= lt!558697 (isEmpty!10457 (c!257079 (_1!9859 (lex!1184 thiss!17113 rules!1846 (seqFromList!1891 lt!558130))))))))

(assert (=> d!472048 (= (isEmpty!10446 (_1!9859 (lex!1184 thiss!17113 rules!1846 (seqFromList!1891 lt!558130)))) lt!558697)))

(declare-fun bs!391436 () Bool)

(assert (= bs!391436 d!472048))

(assert (=> bs!391436 m!1875469))

(assert (=> bs!391436 m!1875469))

(declare-fun m!1876097 () Bool)

(assert (=> bs!391436 m!1876097))

(declare-fun m!1876099 () Bool)

(assert (=> bs!391436 m!1876099))

(assert (=> b!1585942 d!472048))

(declare-fun b!1586413 () Bool)

(declare-fun e!1018946 () Bool)

(declare-fun lt!558698 () tuple2!16914)

(assert (=> b!1586413 (= e!1018946 (not (isEmpty!10446 (_1!9859 lt!558698))))))

(declare-fun b!1586414 () Bool)

(declare-fun e!1018944 () Bool)

(assert (=> b!1586414 (= e!1018944 (= (_2!9859 lt!558698) (seqFromList!1891 lt!558130)))))

(declare-fun e!1018945 () Bool)

(declare-fun b!1586415 () Bool)

(assert (=> b!1586415 (= e!1018945 (= (list!6760 (_2!9859 lt!558698)) (_2!9861 (lexList!787 thiss!17113 rules!1846 (list!6760 (seqFromList!1891 lt!558130))))))))

(declare-fun d!472050 () Bool)

(assert (=> d!472050 e!1018945))

(declare-fun res!707529 () Bool)

(assert (=> d!472050 (=> (not res!707529) (not e!1018945))))

(assert (=> d!472050 (= res!707529 e!1018944)))

(declare-fun c!257143 () Bool)

(assert (=> d!472050 (= c!257143 (> (size!14026 (_1!9859 lt!558698)) 0))))

(assert (=> d!472050 (= lt!558698 (lexTailRecV2!510 thiss!17113 rules!1846 (seqFromList!1891 lt!558130) (BalanceConc!11525 Empty!5790) (seqFromList!1891 lt!558130) (BalanceConc!11527 Empty!5791)))))

(assert (=> d!472050 (= (lex!1184 thiss!17113 rules!1846 (seqFromList!1891 lt!558130)) lt!558698)))

(declare-fun b!1586416 () Bool)

(declare-fun res!707530 () Bool)

(assert (=> b!1586416 (=> (not res!707530) (not e!1018945))))

(assert (=> b!1586416 (= res!707530 (= (list!6759 (_1!9859 lt!558698)) (_1!9861 (lexList!787 thiss!17113 rules!1846 (list!6760 (seqFromList!1891 lt!558130))))))))

(declare-fun b!1586417 () Bool)

(assert (=> b!1586417 (= e!1018944 e!1018946)))

(declare-fun res!707528 () Bool)

(assert (=> b!1586417 (= res!707528 (< (size!14024 (_2!9859 lt!558698)) (size!14024 (seqFromList!1891 lt!558130))))))

(assert (=> b!1586417 (=> (not res!707528) (not e!1018946))))

(assert (= (and d!472050 c!257143) b!1586417))

(assert (= (and d!472050 (not c!257143)) b!1586414))

(assert (= (and b!1586417 res!707528) b!1586413))

(assert (= (and d!472050 res!707529) b!1586416))

(assert (= (and b!1586416 res!707530) b!1586415))

(declare-fun m!1876101 () Bool)

(assert (=> b!1586416 m!1876101))

(assert (=> b!1586416 m!1875087))

(declare-fun m!1876103 () Bool)

(assert (=> b!1586416 m!1876103))

(assert (=> b!1586416 m!1876103))

(declare-fun m!1876105 () Bool)

(assert (=> b!1586416 m!1876105))

(declare-fun m!1876107 () Bool)

(assert (=> b!1586417 m!1876107))

(assert (=> b!1586417 m!1875087))

(declare-fun m!1876109 () Bool)

(assert (=> b!1586417 m!1876109))

(declare-fun m!1876111 () Bool)

(assert (=> b!1586413 m!1876111))

(declare-fun m!1876113 () Bool)

(assert (=> d!472050 m!1876113))

(assert (=> d!472050 m!1875087))

(assert (=> d!472050 m!1875087))

(declare-fun m!1876115 () Bool)

(assert (=> d!472050 m!1876115))

(declare-fun m!1876117 () Bool)

(assert (=> b!1586415 m!1876117))

(assert (=> b!1586415 m!1875087))

(assert (=> b!1586415 m!1876103))

(assert (=> b!1586415 m!1876103))

(assert (=> b!1586415 m!1876105))

(assert (=> b!1585942 d!472050))

(declare-fun d!472052 () Bool)

(declare-fun fromListB!811 (List!17496) BalanceConc!11524)

(assert (=> d!472052 (= (seqFromList!1891 lt!558130) (fromListB!811 lt!558130))))

(declare-fun bs!391437 () Bool)

(assert (= bs!391437 d!472052))

(declare-fun m!1876119 () Bool)

(assert (=> bs!391437 m!1876119))

(assert (=> b!1585942 d!472052))

(declare-fun d!472054 () Bool)

(assert (=> d!472054 (= (inv!22842 (tag!3341 (h!22828 rules!1846))) (= (mod (str.len (value!97195 (tag!3341 (h!22828 rules!1846)))) 2) 0))))

(assert (=> b!1585953 d!472054))

(declare-fun d!472056 () Bool)

(declare-fun res!707531 () Bool)

(declare-fun e!1018947 () Bool)

(assert (=> d!472056 (=> (not res!707531) (not e!1018947))))

(assert (=> d!472056 (= res!707531 (semiInverseModEq!1158 (toChars!4341 (transformation!3071 (h!22828 rules!1846))) (toValue!4482 (transformation!3071 (h!22828 rules!1846)))))))

(assert (=> d!472056 (= (inv!22846 (transformation!3071 (h!22828 rules!1846))) e!1018947)))

(declare-fun b!1586418 () Bool)

(assert (=> b!1586418 (= e!1018947 (equivClasses!1099 (toChars!4341 (transformation!3071 (h!22828 rules!1846))) (toValue!4482 (transformation!3071 (h!22828 rules!1846)))))))

(assert (= (and d!472056 res!707531) b!1586418))

(declare-fun m!1876121 () Bool)

(assert (=> d!472056 m!1876121))

(declare-fun m!1876123 () Bool)

(assert (=> b!1586418 m!1876123))

(assert (=> b!1585953 d!472056))

(declare-fun b!1586429 () Bool)

(declare-fun b_free!42887 () Bool)

(declare-fun b_next!43591 () Bool)

(assert (=> b!1586429 (= b_free!42887 (not b_next!43591))))

(declare-fun tp!466354 () Bool)

(declare-fun b_and!111229 () Bool)

(assert (=> b!1586429 (= tp!466354 b_and!111229)))

(declare-fun b_free!42889 () Bool)

(declare-fun b_next!43593 () Bool)

(assert (=> b!1586429 (= b_free!42889 (not b_next!43593))))

(declare-fun t!144248 () Bool)

(declare-fun tb!89295 () Bool)

(assert (=> (and b!1586429 (= (toChars!4341 (transformation!3071 (h!22828 (t!144208 rules!1846)))) (toChars!4341 (transformation!3071 (rule!4875 (h!22829 tokens!457))))) t!144248) tb!89295))

(declare-fun result!108076 () Bool)

(assert (= result!108076 result!108048))

(assert (=> d!472006 t!144248))

(assert (=> b!1586297 t!144248))

(declare-fun tb!89297 () Bool)

(declare-fun t!144250 () Bool)

(assert (=> (and b!1586429 (= (toChars!4341 (transformation!3071 (h!22828 (t!144208 rules!1846)))) (toChars!4341 (transformation!3071 (rule!4875 (h!22829 (t!144209 tokens!457)))))) t!144250) tb!89297))

(declare-fun result!108078 () Bool)

(assert (= result!108078 result!108070))

(assert (=> d!472042 t!144250))

(declare-fun tp!466353 () Bool)

(declare-fun b_and!111231 () Bool)

(assert (=> b!1586429 (= tp!466353 (and (=> t!144248 result!108076) (=> t!144250 result!108078) b_and!111231))))

(declare-fun e!1018958 () Bool)

(assert (=> b!1586429 (= e!1018958 (and tp!466354 tp!466353))))

(declare-fun tp!466355 () Bool)

(declare-fun e!1018957 () Bool)

(declare-fun b!1586428 () Bool)

(assert (=> b!1586428 (= e!1018957 (and tp!466355 (inv!22842 (tag!3341 (h!22828 (t!144208 rules!1846)))) (inv!22846 (transformation!3071 (h!22828 (t!144208 rules!1846)))) e!1018958))))

(declare-fun b!1586427 () Bool)

(declare-fun e!1018956 () Bool)

(declare-fun tp!466356 () Bool)

(assert (=> b!1586427 (= e!1018956 (and e!1018957 tp!466356))))

(assert (=> b!1585938 (= tp!466282 e!1018956)))

(assert (= b!1586428 b!1586429))

(assert (= b!1586427 b!1586428))

(assert (= (and b!1585938 ((_ is Cons!17427) (t!144208 rules!1846))) b!1586427))

(declare-fun m!1876125 () Bool)

(assert (=> b!1586428 m!1876125))

(declare-fun m!1876127 () Bool)

(assert (=> b!1586428 m!1876127))

(declare-fun b!1586434 () Bool)

(declare-fun e!1018962 () Bool)

(declare-fun tp_is_empty!7197 () Bool)

(declare-fun tp!466359 () Bool)

(assert (=> b!1586434 (= e!1018962 (and tp_is_empty!7197 tp!466359))))

(assert (=> b!1585954 (= tp!466280 e!1018962)))

(assert (= (and b!1585954 ((_ is Cons!17426) (originalCharacters!3885 (h!22829 tokens!457)))) b!1586434))

(declare-fun e!1018965 () Bool)

(assert (=> b!1585951 (= tp!466286 e!1018965)))

(declare-fun b!1586448 () Bool)

(declare-fun tp!466371 () Bool)

(declare-fun tp!466373 () Bool)

(assert (=> b!1586448 (= e!1018965 (and tp!466371 tp!466373))))

(declare-fun b!1586445 () Bool)

(assert (=> b!1586445 (= e!1018965 tp_is_empty!7197)))

(declare-fun b!1586447 () Bool)

(declare-fun tp!466370 () Bool)

(assert (=> b!1586447 (= e!1018965 tp!466370)))

(declare-fun b!1586446 () Bool)

(declare-fun tp!466372 () Bool)

(declare-fun tp!466374 () Bool)

(assert (=> b!1586446 (= e!1018965 (and tp!466372 tp!466374))))

(assert (= (and b!1585951 ((_ is ElementMatch!4399) (regex!3071 (rule!4875 (h!22829 tokens!457))))) b!1586445))

(assert (= (and b!1585951 ((_ is Concat!7561) (regex!3071 (rule!4875 (h!22829 tokens!457))))) b!1586446))

(assert (= (and b!1585951 ((_ is Star!4399) (regex!3071 (rule!4875 (h!22829 tokens!457))))) b!1586447))

(assert (= (and b!1585951 ((_ is Union!4399) (regex!3071 (rule!4875 (h!22829 tokens!457))))) b!1586448))

(declare-fun b!1586462 () Bool)

(declare-fun b_free!42891 () Bool)

(declare-fun b_next!43595 () Bool)

(assert (=> b!1586462 (= b_free!42891 (not b_next!43595))))

(declare-fun tp!466388 () Bool)

(declare-fun b_and!111233 () Bool)

(assert (=> b!1586462 (= tp!466388 b_and!111233)))

(declare-fun b_free!42893 () Bool)

(declare-fun b_next!43597 () Bool)

(assert (=> b!1586462 (= b_free!42893 (not b_next!43597))))

(declare-fun t!144252 () Bool)

(declare-fun tb!89299 () Bool)

(assert (=> (and b!1586462 (= (toChars!4341 (transformation!3071 (rule!4875 (h!22829 (t!144209 tokens!457))))) (toChars!4341 (transformation!3071 (rule!4875 (h!22829 tokens!457))))) t!144252) tb!89299))

(declare-fun result!108086 () Bool)

(assert (= result!108086 result!108048))

(assert (=> d!472006 t!144252))

(assert (=> b!1586297 t!144252))

(declare-fun t!144254 () Bool)

(declare-fun tb!89301 () Bool)

(assert (=> (and b!1586462 (= (toChars!4341 (transformation!3071 (rule!4875 (h!22829 (t!144209 tokens!457))))) (toChars!4341 (transformation!3071 (rule!4875 (h!22829 (t!144209 tokens!457)))))) t!144254) tb!89301))

(declare-fun result!108088 () Bool)

(assert (= result!108088 result!108070))

(assert (=> d!472042 t!144254))

(declare-fun tp!466389 () Bool)

(declare-fun b_and!111235 () Bool)

(assert (=> b!1586462 (= tp!466389 (and (=> t!144252 result!108086) (=> t!144254 result!108088) b_and!111235))))

(declare-fun e!1018982 () Bool)

(declare-fun b!1586461 () Bool)

(declare-fun e!1018980 () Bool)

(declare-fun tp!466386 () Bool)

(assert (=> b!1586461 (= e!1018980 (and tp!466386 (inv!22842 (tag!3341 (rule!4875 (h!22829 (t!144209 tokens!457))))) (inv!22846 (transformation!3071 (rule!4875 (h!22829 (t!144209 tokens!457))))) e!1018982))))

(declare-fun b!1586459 () Bool)

(declare-fun tp!466385 () Bool)

(declare-fun e!1018983 () Bool)

(declare-fun e!1018979 () Bool)

(assert (=> b!1586459 (= e!1018979 (and (inv!22845 (h!22829 (t!144209 tokens!457))) e!1018983 tp!466385))))

(assert (=> b!1586462 (= e!1018982 (and tp!466388 tp!466389))))

(assert (=> b!1585937 (= tp!466278 e!1018979)))

(declare-fun tp!466387 () Bool)

(declare-fun b!1586460 () Bool)

(assert (=> b!1586460 (= e!1018983 (and (inv!21 (value!97196 (h!22829 (t!144209 tokens!457)))) e!1018980 tp!466387))))

(assert (= b!1586461 b!1586462))

(assert (= b!1586460 b!1586461))

(assert (= b!1586459 b!1586460))

(assert (= (and b!1585937 ((_ is Cons!17428) (t!144209 tokens!457))) b!1586459))

(declare-fun m!1876129 () Bool)

(assert (=> b!1586461 m!1876129))

(declare-fun m!1876131 () Bool)

(assert (=> b!1586461 m!1876131))

(declare-fun m!1876133 () Bool)

(assert (=> b!1586459 m!1876133))

(declare-fun m!1876135 () Bool)

(assert (=> b!1586460 m!1876135))

(declare-fun e!1018984 () Bool)

(assert (=> b!1585953 (= tp!466285 e!1018984)))

(declare-fun b!1586466 () Bool)

(declare-fun tp!466391 () Bool)

(declare-fun tp!466393 () Bool)

(assert (=> b!1586466 (= e!1018984 (and tp!466391 tp!466393))))

(declare-fun b!1586463 () Bool)

(assert (=> b!1586463 (= e!1018984 tp_is_empty!7197)))

(declare-fun b!1586465 () Bool)

(declare-fun tp!466390 () Bool)

(assert (=> b!1586465 (= e!1018984 tp!466390)))

(declare-fun b!1586464 () Bool)

(declare-fun tp!466392 () Bool)

(declare-fun tp!466394 () Bool)

(assert (=> b!1586464 (= e!1018984 (and tp!466392 tp!466394))))

(assert (= (and b!1585953 ((_ is ElementMatch!4399) (regex!3071 (h!22828 rules!1846)))) b!1586463))

(assert (= (and b!1585953 ((_ is Concat!7561) (regex!3071 (h!22828 rules!1846)))) b!1586464))

(assert (= (and b!1585953 ((_ is Star!4399) (regex!3071 (h!22828 rules!1846)))) b!1586465))

(assert (= (and b!1585953 ((_ is Union!4399) (regex!3071 (h!22828 rules!1846)))) b!1586466))

(declare-fun b_lambda!49915 () Bool)

(assert (= b_lambda!49905 (or (and b!1585941 b_free!42873 (= (toChars!4341 (transformation!3071 (h!22828 rules!1846))) (toChars!4341 (transformation!3071 (rule!4875 (h!22829 tokens!457)))))) (and b!1585939 b_free!42877) (and b!1586429 b_free!42889 (= (toChars!4341 (transformation!3071 (h!22828 (t!144208 rules!1846)))) (toChars!4341 (transformation!3071 (rule!4875 (h!22829 tokens!457)))))) (and b!1586462 b_free!42893 (= (toChars!4341 (transformation!3071 (rule!4875 (h!22829 (t!144209 tokens!457))))) (toChars!4341 (transformation!3071 (rule!4875 (h!22829 tokens!457)))))) b_lambda!49915)))

(declare-fun b_lambda!49917 () Bool)

(assert (= b_lambda!49913 (or (and b!1585941 b_free!42873 (= (toChars!4341 (transformation!3071 (h!22828 rules!1846))) (toChars!4341 (transformation!3071 (rule!4875 (h!22829 (t!144209 tokens!457))))))) (and b!1585939 b_free!42877 (= (toChars!4341 (transformation!3071 (rule!4875 (h!22829 tokens!457)))) (toChars!4341 (transformation!3071 (rule!4875 (h!22829 (t!144209 tokens!457))))))) (and b!1586429 b_free!42889 (= (toChars!4341 (transformation!3071 (h!22828 (t!144208 rules!1846)))) (toChars!4341 (transformation!3071 (rule!4875 (h!22829 (t!144209 tokens!457))))))) (and b!1586462 b_free!42893) b_lambda!49917)))

(declare-fun b_lambda!49919 () Bool)

(assert (= b_lambda!49903 (or (and b!1585941 b_free!42873 (= (toChars!4341 (transformation!3071 (h!22828 rules!1846))) (toChars!4341 (transformation!3071 (rule!4875 (h!22829 tokens!457)))))) (and b!1585939 b_free!42877) (and b!1586429 b_free!42889 (= (toChars!4341 (transformation!3071 (h!22828 (t!144208 rules!1846)))) (toChars!4341 (transformation!3071 (rule!4875 (h!22829 tokens!457)))))) (and b!1586462 b_free!42893 (= (toChars!4341 (transformation!3071 (rule!4875 (h!22829 (t!144209 tokens!457))))) (toChars!4341 (transformation!3071 (rule!4875 (h!22829 tokens!457)))))) b_lambda!49919)))

(check-sat (not b!1586446) (not b_lambda!49917) (not d!471980) (not b!1586381) (not b_next!43595) (not b!1586271) (not d!471972) (not b!1586409) (not d!471994) (not d!471958) (not b!1586466) (not d!472008) (not d!472022) (not d!472004) (not b_next!43577) (not b_lambda!49915) (not b!1586213) b_and!111225 (not d!472046) (not b!1586417) (not b!1586185) (not b!1586460) (not b!1586292) (not d!471928) (not tb!89291) (not b!1586375) (not b!1586287) (not d!472028) (not b!1586061) (not d!472026) (not b!1586086) b_and!111233 (not b!1586101) (not d!471996) (not b!1586447) (not b!1586085) (not b!1586402) (not b!1586416) (not b!1586376) (not b_next!43575) (not d!472050) (not b!1586283) (not d!472052) (not b!1586206) (not d!471962) (not b!1586270) (not b!1586209) (not d!472042) (not b!1586230) (not d!472006) (not b!1586253) (not d!472000) (not b!1586428) (not b!1586186) (not d!471966) (not b!1586099) (not b_next!43593) (not b!1586212) (not d!471964) (not d!471924) (not bm!102911) (not d!472002) (not b!1586298) (not d!472038) (not b!1586393) (not b!1586382) (not d!471922) (not d!472010) (not b_lambda!49919) (not d!472018) (not b!1586408) (not b!1586315) (not b!1586048) (not b!1586374) (not b!1586049) (not d!472048) (not tb!89279) tp_is_empty!7197 (not b!1586297) (not b!1586211) (not b!1586448) (not b_next!43597) (not b!1586173) b_and!111227 (not d!472040) (not b!1586207) (not d!471982) (not b!1586100) (not d!471960) (not d!472056) (not d!472024) b_and!111235 (not b!1586413) (not b!1586316) (not b!1586210) (not b!1586465) (not b!1586405) (not b!1586415) (not b!1586285) (not b_next!43581) (not b!1586205) (not d!472030) (not d!471870) (not b_next!43579) (not b!1586403) (not b!1586245) (not b_next!43591) (not b!1586461) (not d!472012) (not b!1586317) (not b!1586464) (not b!1586459) (not b!1586286) (not b!1586390) (not d!472016) (not b!1586434) b_and!111189 (not d!472036) (not d!471868) (not b!1586228) (not b!1586184) (not b!1586404) (not b!1586387) (not b!1586174) (not d!472020) b_and!111193 (not b!1586427) (not d!472032) (not d!472034) (not b!1586418) b_and!111231 (not b!1586412) (not d!471926) b_and!111229)
(check-sat (not b_next!43595) (not b_next!43577) b_and!111225 b_and!111233 (not b_next!43575) (not b_next!43593) (not b_next!43597) b_and!111227 b_and!111235 (not b_next!43581) (not b_next!43579) (not b_next!43591) b_and!111189 b_and!111193 b_and!111231 b_and!111229)
