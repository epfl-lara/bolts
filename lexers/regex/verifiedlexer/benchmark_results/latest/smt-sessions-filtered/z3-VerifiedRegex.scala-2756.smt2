; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!149094 () Bool)

(assert start!149094)

(declare-fun b!1586586 () Bool)

(declare-fun b_free!42903 () Bool)

(declare-fun b_next!43607 () Bool)

(assert (=> b!1586586 (= b_free!42903 (not b_next!43607))))

(declare-fun tp!466444 () Bool)

(declare-fun b_and!111245 () Bool)

(assert (=> b!1586586 (= tp!466444 b_and!111245)))

(declare-fun b_free!42905 () Bool)

(declare-fun b_next!43609 () Bool)

(assert (=> b!1586586 (= b_free!42905 (not b_next!43609))))

(declare-fun tp!466445 () Bool)

(declare-fun b_and!111247 () Bool)

(assert (=> b!1586586 (= tp!466445 b_and!111247)))

(declare-fun b!1586591 () Bool)

(declare-fun b_free!42907 () Bool)

(declare-fun b_next!43611 () Bool)

(assert (=> b!1586591 (= b_free!42907 (not b_next!43611))))

(declare-fun tp!466440 () Bool)

(declare-fun b_and!111249 () Bool)

(assert (=> b!1586591 (= tp!466440 b_and!111249)))

(declare-fun b_free!42909 () Bool)

(declare-fun b_next!43613 () Bool)

(assert (=> b!1586591 (= b_free!42909 (not b_next!43613))))

(declare-fun tp!466441 () Bool)

(declare-fun b_and!111251 () Bool)

(assert (=> b!1586591 (= tp!466441 b_and!111251)))

(declare-fun tp!466446 () Bool)

(declare-fun e!1019076 () Bool)

(declare-fun b!1586577 () Bool)

(declare-datatypes ((List!17509 0))(
  ( (Nil!17439) (Cons!17439 (h!22840 (_ BitVec 16)) (t!144262 List!17509)) )
))
(declare-datatypes ((TokenValue!3163 0))(
  ( (FloatLiteralValue!6326 (text!22586 List!17509)) (TokenValueExt!3162 (__x!11628 Int)) (Broken!15815 (value!97227 List!17509)) (Object!3232) (End!3163) (Def!3163) (Underscore!3163) (Match!3163) (Else!3163) (Error!3163) (Case!3163) (If!3163) (Extends!3163) (Abstract!3163) (Class!3163) (Val!3163) (DelimiterValue!6326 (del!3223 List!17509)) (KeywordValue!3169 (value!97228 List!17509)) (CommentValue!6326 (value!97229 List!17509)) (WhitespaceValue!6326 (value!97230 List!17509)) (IndentationValue!3163 (value!97231 List!17509)) (String!20146) (Int32!3163) (Broken!15816 (value!97232 List!17509)) (Boolean!3164) (Unit!27372) (OperatorValue!3166 (op!3223 List!17509)) (IdentifierValue!6326 (value!97233 List!17509)) (IdentifierValue!6327 (value!97234 List!17509)) (WhitespaceValue!6327 (value!97235 List!17509)) (True!6326) (False!6326) (Broken!15817 (value!97236 List!17509)) (Broken!15818 (value!97237 List!17509)) (True!6327) (RightBrace!3163) (RightBracket!3163) (Colon!3163) (Null!3163) (Comma!3163) (LeftBracket!3163) (False!6327) (LeftBrace!3163) (ImaginaryLiteralValue!3163 (text!22587 List!17509)) (StringLiteralValue!9489 (value!97238 List!17509)) (EOFValue!3163 (value!97239 List!17509)) (IdentValue!3163 (value!97240 List!17509)) (DelimiterValue!6327 (value!97241 List!17509)) (DedentValue!3163 (value!97242 List!17509)) (NewLineValue!3163 (value!97243 List!17509)) (IntegerValue!9489 (value!97244 (_ BitVec 32)) (text!22588 List!17509)) (IntegerValue!9490 (value!97245 Int) (text!22589 List!17509)) (Times!3163) (Or!3163) (Equal!3163) (Minus!3163) (Broken!15819 (value!97246 List!17509)) (And!3163) (Div!3163) (LessEqual!3163) (Mod!3163) (Concat!7564) (Not!3163) (Plus!3163) (SpaceValue!3163 (value!97247 List!17509)) (IntegerValue!9491 (value!97248 Int) (text!22590 List!17509)) (StringLiteralValue!9490 (text!22591 List!17509)) (FloatLiteralValue!6327 (text!22592 List!17509)) (BytesLiteralValue!3163 (value!97249 List!17509)) (CommentValue!6327 (value!97250 List!17509)) (StringLiteralValue!9491 (value!97251 List!17509)) (ErrorTokenValue!3163 (msg!3224 List!17509)) )
))
(declare-datatypes ((C!8976 0))(
  ( (C!8977 (val!5084 Int)) )
))
(declare-datatypes ((List!17510 0))(
  ( (Nil!17440) (Cons!17440 (h!22841 C!8976) (t!144263 List!17510)) )
))
(declare-datatypes ((IArray!11593 0))(
  ( (IArray!11594 (innerList!5854 List!17510)) )
))
(declare-datatypes ((Conc!5794 0))(
  ( (Node!5794 (left!14084 Conc!5794) (right!14414 Conc!5794) (csize!11818 Int) (cheight!6005 Int)) (Leaf!8551 (xs!8602 IArray!11593) (csize!11819 Int)) (Empty!5794) )
))
(declare-datatypes ((BalanceConc!11532 0))(
  ( (BalanceConc!11533 (c!257149 Conc!5794)) )
))
(declare-datatypes ((Regex!4401 0))(
  ( (ElementMatch!4401 (c!257150 C!8976)) (Concat!7565 (regOne!9314 Regex!4401) (regTwo!9314 Regex!4401)) (EmptyExpr!4401) (Star!4401 (reg!4730 Regex!4401)) (EmptyLang!4401) (Union!4401 (regOne!9315 Regex!4401) (regTwo!9315 Regex!4401)) )
))
(declare-datatypes ((String!20147 0))(
  ( (String!20148 (value!97252 String)) )
))
(declare-datatypes ((TokenValueInjection!5986 0))(
  ( (TokenValueInjection!5987 (toValue!4484 Int) (toChars!4343 Int)) )
))
(declare-datatypes ((Rule!5946 0))(
  ( (Rule!5947 (regex!3073 Regex!4401) (tag!3343 String!20147) (isSeparator!3073 Bool) (transformation!3073 TokenValueInjection!5986)) )
))
(declare-datatypes ((Token!5712 0))(
  ( (Token!5713 (value!97253 TokenValue!3163) (rule!4877 Rule!5946) (size!14029 Int) (originalCharacters!3887 List!17510)) )
))
(declare-datatypes ((List!17511 0))(
  ( (Nil!17441) (Cons!17441 (h!22842 Token!5712) (t!144264 List!17511)) )
))
(declare-fun tokens!457 () List!17511)

(declare-fun e!1019077 () Bool)

(declare-fun inv!21 (TokenValue!3163) Bool)

(assert (=> b!1586577 (= e!1019077 (and (inv!21 (value!97253 (h!22842 tokens!457))) e!1019076 tp!466446))))

(declare-fun b!1586578 () Bool)

(declare-fun res!707618 () Bool)

(declare-fun e!1019086 () Bool)

(assert (=> b!1586578 (=> res!707618 e!1019086)))

(declare-datatypes ((List!17512 0))(
  ( (Nil!17442) (Cons!17442 (h!22843 Rule!5946) (t!144265 List!17512)) )
))
(declare-fun rules!1846 () List!17512)

(declare-datatypes ((LexerInterface!2702 0))(
  ( (LexerInterfaceExt!2699 (__x!11629 Int)) (Lexer!2700) )
))
(declare-fun thiss!17113 () LexerInterface!2702)

(declare-fun rulesProduceIndividualToken!1354 (LexerInterface!2702 List!17512 Token!5712) Bool)

(assert (=> b!1586578 (= res!707618 (not (rulesProduceIndividualToken!1354 thiss!17113 rules!1846 (h!22842 tokens!457))))))

(declare-fun b!1586579 () Bool)

(declare-fun e!1019073 () Bool)

(declare-fun e!1019070 () Bool)

(assert (=> b!1586579 (= e!1019073 e!1019070)))

(declare-fun res!707613 () Bool)

(assert (=> b!1586579 (=> res!707613 e!1019070)))

(declare-fun lt!558817 () List!17511)

(declare-fun lt!558836 () List!17511)

(declare-fun lt!558824 () List!17511)

(assert (=> b!1586579 (= res!707613 (or (not (= lt!558817 lt!558836)) (not (= lt!558836 lt!558824))))))

(declare-datatypes ((IArray!11595 0))(
  ( (IArray!11596 (innerList!5855 List!17511)) )
))
(declare-datatypes ((Conc!5795 0))(
  ( (Node!5795 (left!14085 Conc!5795) (right!14415 Conc!5795) (csize!11820 Int) (cheight!6006 Int)) (Leaf!8552 (xs!8603 IArray!11595) (csize!11821 Int)) (Empty!5795) )
))
(declare-datatypes ((BalanceConc!11534 0))(
  ( (BalanceConc!11535 (c!257151 Conc!5795)) )
))
(declare-fun lt!558826 () BalanceConc!11534)

(declare-fun list!6767 (BalanceConc!11534) List!17511)

(assert (=> b!1586579 (= lt!558836 (list!6767 lt!558826))))

(assert (=> b!1586579 (= lt!558817 lt!558824)))

(declare-fun prepend!559 (BalanceConc!11534 Token!5712) BalanceConc!11534)

(declare-fun seqFromList!1895 (List!17511) BalanceConc!11534)

(assert (=> b!1586579 (= lt!558824 (list!6767 (prepend!559 (seqFromList!1895 (t!144264 (t!144264 tokens!457))) (h!22842 (t!144264 tokens!457)))))))

(declare-datatypes ((Unit!27373 0))(
  ( (Unit!27374) )
))
(declare-fun lt!558820 () Unit!27373)

(declare-datatypes ((tuple2!16924 0))(
  ( (tuple2!16925 (_1!9864 BalanceConc!11534) (_2!9864 BalanceConc!11532)) )
))
(declare-fun lt!558819 () tuple2!16924)

(declare-fun seqFromListBHdTlConstructive!150 (Token!5712 List!17511 BalanceConc!11534) Unit!27373)

(assert (=> b!1586579 (= lt!558820 (seqFromListBHdTlConstructive!150 (h!22842 (t!144264 tokens!457)) (t!144264 (t!144264 tokens!457)) (_1!9864 lt!558819)))))

(declare-fun b!1586580 () Bool)

(declare-fun res!707621 () Bool)

(assert (=> b!1586580 (=> res!707621 e!1019070)))

(declare-fun separableTokensPredicate!644 (LexerInterface!2702 Token!5712 Token!5712 List!17512) Bool)

(assert (=> b!1586580 (= res!707621 (not (separableTokensPredicate!644 thiss!17113 (h!22842 tokens!457) (h!22842 (t!144264 tokens!457)) rules!1846)))))

(declare-fun b!1586582 () Bool)

(declare-fun tp!466443 () Bool)

(declare-fun e!1019072 () Bool)

(declare-fun inv!22856 (Token!5712) Bool)

(assert (=> b!1586582 (= e!1019072 (and (inv!22856 (h!22842 tokens!457)) e!1019077 tp!466443))))

(declare-fun b!1586583 () Bool)

(declare-fun e!1019079 () Bool)

(assert (=> b!1586583 (= e!1019086 e!1019079)))

(declare-fun res!707611 () Bool)

(assert (=> b!1586583 (=> res!707611 e!1019079)))

(declare-datatypes ((tuple2!16926 0))(
  ( (tuple2!16927 (_1!9865 Token!5712) (_2!9865 List!17510)) )
))
(declare-datatypes ((Option!3140 0))(
  ( (None!3139) (Some!3139 (v!24014 tuple2!16926)) )
))
(declare-fun lt!558828 () Option!3140)

(declare-fun isDefined!2515 (Option!3140) Bool)

(assert (=> b!1586583 (= res!707611 (not (isDefined!2515 lt!558828)))))

(declare-fun lt!558822 () List!17510)

(declare-fun lt!558833 () List!17510)

(declare-fun lt!558821 () Unit!27373)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!276 (LexerInterface!2702 List!17512 List!17510 List!17510) Unit!27373)

(assert (=> b!1586583 (= lt!558821 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!276 thiss!17113 rules!1846 lt!558833 lt!558822))))

(declare-fun tp!466447 () Bool)

(declare-fun e!1019082 () Bool)

(declare-fun b!1586584 () Bool)

(declare-fun inv!22853 (String!20147) Bool)

(declare-fun inv!22857 (TokenValueInjection!5986) Bool)

(assert (=> b!1586584 (= e!1019076 (and tp!466447 (inv!22853 (tag!3343 (rule!4877 (h!22842 tokens!457)))) (inv!22857 (transformation!3073 (rule!4877 (h!22842 tokens!457)))) e!1019082))))

(declare-fun b!1586585 () Bool)

(declare-fun res!707620 () Bool)

(declare-fun e!1019078 () Bool)

(assert (=> b!1586585 (=> (not res!707620) (not e!1019078))))

(declare-fun rulesInvariant!2371 (LexerInterface!2702 List!17512) Bool)

(assert (=> b!1586585 (= res!707620 (rulesInvariant!2371 thiss!17113 rules!1846))))

(declare-fun e!1019085 () Bool)

(assert (=> b!1586586 (= e!1019085 (and tp!466444 tp!466445))))

(declare-fun b!1586587 () Bool)

(declare-fun res!707616 () Bool)

(assert (=> b!1586587 (=> (not res!707616) (not e!1019078))))

(declare-fun isEmpty!10460 (List!17512) Bool)

(assert (=> b!1586587 (= res!707616 (not (isEmpty!10460 rules!1846)))))

(declare-fun b!1586588 () Bool)

(assert (=> b!1586588 (= e!1019070 e!1019086)))

(declare-fun res!707607 () Bool)

(assert (=> b!1586588 (=> res!707607 e!1019086)))

(declare-fun lt!558827 () List!17510)

(declare-fun lt!558823 () List!17510)

(assert (=> b!1586588 (= res!707607 (or (not (= lt!558823 lt!558827)) (not (= lt!558827 lt!558833)) (not (= lt!558823 lt!558833))))))

(declare-fun printList!817 (LexerInterface!2702 List!17511) List!17510)

(assert (=> b!1586588 (= lt!558827 (printList!817 thiss!17113 (Cons!17441 (h!22842 tokens!457) Nil!17441)))))

(declare-fun lt!558834 () BalanceConc!11532)

(declare-fun list!6768 (BalanceConc!11532) List!17510)

(assert (=> b!1586588 (= lt!558823 (list!6768 lt!558834))))

(declare-fun lt!558815 () BalanceConc!11534)

(declare-fun printTailRec!755 (LexerInterface!2702 BalanceConc!11534 Int BalanceConc!11532) BalanceConc!11532)

(assert (=> b!1586588 (= lt!558834 (printTailRec!755 thiss!17113 lt!558815 0 (BalanceConc!11533 Empty!5794)))))

(declare-fun print!1233 (LexerInterface!2702 BalanceConc!11534) BalanceConc!11532)

(assert (=> b!1586588 (= lt!558834 (print!1233 thiss!17113 lt!558815))))

(declare-fun singletonSeq!1424 (Token!5712) BalanceConc!11534)

(assert (=> b!1586588 (= lt!558815 (singletonSeq!1424 (h!22842 tokens!457)))))

(declare-fun lt!558832 () List!17510)

(declare-fun maxPrefix!1266 (LexerInterface!2702 List!17512 List!17510) Option!3140)

(assert (=> b!1586588 (= lt!558828 (maxPrefix!1266 thiss!17113 rules!1846 lt!558832))))

(declare-fun b!1586589 () Bool)

(declare-fun e!1019080 () Bool)

(declare-fun lt!558835 () BalanceConc!11532)

(declare-fun size!14030 (BalanceConc!11532) Int)

(assert (=> b!1586589 (= e!1019080 (< 0 (size!14030 lt!558835)))))

(declare-fun b!1586590 () Bool)

(declare-fun res!707617 () Bool)

(assert (=> b!1586590 (=> (not res!707617) (not e!1019078))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!395 (LexerInterface!2702 List!17511 List!17512) Bool)

(assert (=> b!1586590 (= res!707617 (tokensListTwoByTwoPredicateSeparableList!395 thiss!17113 tokens!457 rules!1846))))

(assert (=> b!1586591 (= e!1019082 (and tp!466440 tp!466441))))

(declare-fun b!1586592 () Bool)

(declare-fun res!707609 () Bool)

(assert (=> b!1586592 (=> (not res!707609) (not e!1019078))))

(declare-fun rulesProduceEachTokenIndividuallyList!904 (LexerInterface!2702 List!17512 List!17511) Bool)

(assert (=> b!1586592 (= res!707609 (rulesProduceEachTokenIndividuallyList!904 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1586593 () Bool)

(declare-fun e!1019071 () Bool)

(assert (=> b!1586593 (= e!1019071 (not e!1019073))))

(declare-fun res!707610 () Bool)

(assert (=> b!1586593 (=> res!707610 e!1019073)))

(assert (=> b!1586593 (= res!707610 (not (= lt!558817 (t!144264 tokens!457))))))

(assert (=> b!1586593 (= lt!558817 (list!6767 (_1!9864 lt!558819)))))

(declare-fun lt!558829 () Unit!27373)

(declare-fun theoremInvertabilityWhenTokenListSeparable!147 (LexerInterface!2702 List!17512 List!17511) Unit!27373)

(assert (=> b!1586593 (= lt!558829 (theoremInvertabilityWhenTokenListSeparable!147 thiss!17113 rules!1846 (t!144264 tokens!457)))))

(declare-fun lt!558830 () List!17510)

(declare-fun isPrefix!1333 (List!17510 List!17510) Bool)

(assert (=> b!1586593 (isPrefix!1333 lt!558833 lt!558830)))

(declare-fun lt!558818 () Unit!27373)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!858 (List!17510 List!17510) Unit!27373)

(assert (=> b!1586593 (= lt!558818 (lemmaConcatTwoListThenFirstIsPrefix!858 lt!558833 lt!558822))))

(declare-fun b!1586594 () Bool)

(assert (=> b!1586594 (= e!1019079 e!1019080)))

(declare-fun res!707612 () Bool)

(assert (=> b!1586594 (=> res!707612 e!1019080)))

(declare-fun lt!558825 () BalanceConc!11532)

(declare-fun lt!558814 () Regex!4401)

(declare-fun prefixMatchZipperSequence!421 (Regex!4401 BalanceConc!11532) Bool)

(declare-fun ++!4549 (BalanceConc!11532 BalanceConc!11532) BalanceConc!11532)

(declare-fun singletonSeq!1425 (C!8976) BalanceConc!11532)

(declare-fun apply!4266 (BalanceConc!11532 Int) C!8976)

(assert (=> b!1586594 (= res!707612 (prefixMatchZipperSequence!421 lt!558814 (++!4549 lt!558825 (singletonSeq!1425 (apply!4266 lt!558835 0)))))))

(declare-fun charsOf!1722 (Token!5712) BalanceConc!11532)

(assert (=> b!1586594 (= lt!558835 (charsOf!1722 (h!22842 (t!144264 tokens!457))))))

(declare-fun rulesRegex!463 (LexerInterface!2702 List!17512) Regex!4401)

(assert (=> b!1586594 (= lt!558814 (rulesRegex!463 thiss!17113 rules!1846))))

(declare-fun res!707619 () Bool)

(assert (=> start!149094 (=> (not res!707619) (not e!1019078))))

(get-info :version)

(assert (=> start!149094 (= res!707619 ((_ is Lexer!2700) thiss!17113))))

(assert (=> start!149094 e!1019078))

(assert (=> start!149094 true))

(declare-fun e!1019083 () Bool)

(assert (=> start!149094 e!1019083))

(assert (=> start!149094 e!1019072))

(declare-fun tp!466442 () Bool)

(declare-fun b!1586581 () Bool)

(declare-fun e!1019075 () Bool)

(assert (=> b!1586581 (= e!1019075 (and tp!466442 (inv!22853 (tag!3343 (h!22843 rules!1846))) (inv!22857 (transformation!3073 (h!22843 rules!1846))) e!1019085))))

(declare-fun b!1586595 () Bool)

(declare-fun res!707615 () Bool)

(assert (=> b!1586595 (=> res!707615 e!1019086)))

(declare-fun isEmpty!10461 (BalanceConc!11534) Bool)

(declare-fun lex!1186 (LexerInterface!2702 List!17512 BalanceConc!11532) tuple2!16924)

(declare-fun seqFromList!1896 (List!17510) BalanceConc!11532)

(assert (=> b!1586595 (= res!707615 (isEmpty!10461 (_1!9864 (lex!1186 thiss!17113 rules!1846 (seqFromList!1896 lt!558833)))))))

(declare-fun b!1586596 () Bool)

(assert (=> b!1586596 (= e!1019078 e!1019071)))

(declare-fun res!707608 () Bool)

(assert (=> b!1586596 (=> (not res!707608) (not e!1019071))))

(assert (=> b!1586596 (= res!707608 (= lt!558832 lt!558830))))

(declare-fun ++!4550 (List!17510 List!17510) List!17510)

(assert (=> b!1586596 (= lt!558830 (++!4550 lt!558833 lt!558822))))

(declare-fun lt!558816 () BalanceConc!11532)

(assert (=> b!1586596 (= lt!558832 (list!6768 lt!558816))))

(declare-fun lt!558831 () BalanceConc!11532)

(assert (=> b!1586596 (= lt!558822 (list!6768 lt!558831))))

(assert (=> b!1586596 (= lt!558833 (list!6768 lt!558825))))

(assert (=> b!1586596 (= lt!558825 (charsOf!1722 (h!22842 tokens!457)))))

(assert (=> b!1586596 (= lt!558819 (lex!1186 thiss!17113 rules!1846 lt!558831))))

(assert (=> b!1586596 (= lt!558831 (print!1233 thiss!17113 lt!558826))))

(assert (=> b!1586596 (= lt!558826 (seqFromList!1895 (t!144264 tokens!457)))))

(assert (=> b!1586596 (= lt!558816 (print!1233 thiss!17113 (seqFromList!1895 tokens!457)))))

(declare-fun b!1586597 () Bool)

(declare-fun tp!466448 () Bool)

(assert (=> b!1586597 (= e!1019083 (and e!1019075 tp!466448))))

(declare-fun b!1586598 () Bool)

(declare-fun res!707614 () Bool)

(assert (=> b!1586598 (=> (not res!707614) (not e!1019078))))

(assert (=> b!1586598 (= res!707614 (and (not ((_ is Nil!17441) tokens!457)) (not ((_ is Nil!17441) (t!144264 tokens!457)))))))

(assert (= (and start!149094 res!707619) b!1586587))

(assert (= (and b!1586587 res!707616) b!1586585))

(assert (= (and b!1586585 res!707620) b!1586592))

(assert (= (and b!1586592 res!707609) b!1586590))

(assert (= (and b!1586590 res!707617) b!1586598))

(assert (= (and b!1586598 res!707614) b!1586596))

(assert (= (and b!1586596 res!707608) b!1586593))

(assert (= (and b!1586593 (not res!707610)) b!1586579))

(assert (= (and b!1586579 (not res!707613)) b!1586580))

(assert (= (and b!1586580 (not res!707621)) b!1586588))

(assert (= (and b!1586588 (not res!707607)) b!1586578))

(assert (= (and b!1586578 (not res!707618)) b!1586595))

(assert (= (and b!1586595 (not res!707615)) b!1586583))

(assert (= (and b!1586583 (not res!707611)) b!1586594))

(assert (= (and b!1586594 (not res!707612)) b!1586589))

(assert (= b!1586581 b!1586586))

(assert (= b!1586597 b!1586581))

(assert (= (and start!149094 ((_ is Cons!17442) rules!1846)) b!1586597))

(assert (= b!1586584 b!1586591))

(assert (= b!1586577 b!1586584))

(assert (= b!1586582 b!1586577))

(assert (= (and start!149094 ((_ is Cons!17441) tokens!457)) b!1586582))

(declare-fun m!1876235 () Bool)

(assert (=> b!1586593 m!1876235))

(declare-fun m!1876237 () Bool)

(assert (=> b!1586593 m!1876237))

(declare-fun m!1876239 () Bool)

(assert (=> b!1586593 m!1876239))

(declare-fun m!1876241 () Bool)

(assert (=> b!1586593 m!1876241))

(declare-fun m!1876243 () Bool)

(assert (=> b!1586587 m!1876243))

(declare-fun m!1876245 () Bool)

(assert (=> b!1586589 m!1876245))

(declare-fun m!1876247 () Bool)

(assert (=> b!1586596 m!1876247))

(declare-fun m!1876249 () Bool)

(assert (=> b!1586596 m!1876249))

(declare-fun m!1876251 () Bool)

(assert (=> b!1586596 m!1876251))

(declare-fun m!1876253 () Bool)

(assert (=> b!1586596 m!1876253))

(declare-fun m!1876255 () Bool)

(assert (=> b!1586596 m!1876255))

(declare-fun m!1876257 () Bool)

(assert (=> b!1586596 m!1876257))

(declare-fun m!1876259 () Bool)

(assert (=> b!1586596 m!1876259))

(declare-fun m!1876261 () Bool)

(assert (=> b!1586596 m!1876261))

(assert (=> b!1586596 m!1876253))

(declare-fun m!1876263 () Bool)

(assert (=> b!1586596 m!1876263))

(declare-fun m!1876265 () Bool)

(assert (=> b!1586596 m!1876265))

(declare-fun m!1876267 () Bool)

(assert (=> b!1586585 m!1876267))

(declare-fun m!1876269 () Bool)

(assert (=> b!1586583 m!1876269))

(declare-fun m!1876271 () Bool)

(assert (=> b!1586583 m!1876271))

(declare-fun m!1876273 () Bool)

(assert (=> b!1586588 m!1876273))

(declare-fun m!1876275 () Bool)

(assert (=> b!1586588 m!1876275))

(declare-fun m!1876277 () Bool)

(assert (=> b!1586588 m!1876277))

(declare-fun m!1876279 () Bool)

(assert (=> b!1586588 m!1876279))

(declare-fun m!1876281 () Bool)

(assert (=> b!1586588 m!1876281))

(declare-fun m!1876283 () Bool)

(assert (=> b!1586588 m!1876283))

(declare-fun m!1876285 () Bool)

(assert (=> b!1586592 m!1876285))

(declare-fun m!1876287 () Bool)

(assert (=> b!1586594 m!1876287))

(declare-fun m!1876289 () Bool)

(assert (=> b!1586594 m!1876289))

(declare-fun m!1876291 () Bool)

(assert (=> b!1586594 m!1876291))

(declare-fun m!1876293 () Bool)

(assert (=> b!1586594 m!1876293))

(declare-fun m!1876295 () Bool)

(assert (=> b!1586594 m!1876295))

(assert (=> b!1586594 m!1876295))

(assert (=> b!1586594 m!1876291))

(assert (=> b!1586594 m!1876293))

(declare-fun m!1876297 () Bool)

(assert (=> b!1586594 m!1876297))

(declare-fun m!1876299 () Bool)

(assert (=> b!1586577 m!1876299))

(declare-fun m!1876301 () Bool)

(assert (=> b!1586584 m!1876301))

(declare-fun m!1876303 () Bool)

(assert (=> b!1586584 m!1876303))

(declare-fun m!1876305 () Bool)

(assert (=> b!1586578 m!1876305))

(declare-fun m!1876307 () Bool)

(assert (=> b!1586580 m!1876307))

(declare-fun m!1876309 () Bool)

(assert (=> b!1586579 m!1876309))

(declare-fun m!1876311 () Bool)

(assert (=> b!1586579 m!1876311))

(declare-fun m!1876313 () Bool)

(assert (=> b!1586579 m!1876313))

(declare-fun m!1876315 () Bool)

(assert (=> b!1586579 m!1876315))

(declare-fun m!1876317 () Bool)

(assert (=> b!1586579 m!1876317))

(assert (=> b!1586579 m!1876313))

(assert (=> b!1586579 m!1876315))

(declare-fun m!1876319 () Bool)

(assert (=> b!1586581 m!1876319))

(declare-fun m!1876321 () Bool)

(assert (=> b!1586581 m!1876321))

(declare-fun m!1876323 () Bool)

(assert (=> b!1586582 m!1876323))

(declare-fun m!1876325 () Bool)

(assert (=> b!1586595 m!1876325))

(assert (=> b!1586595 m!1876325))

(declare-fun m!1876327 () Bool)

(assert (=> b!1586595 m!1876327))

(declare-fun m!1876329 () Bool)

(assert (=> b!1586595 m!1876329))

(declare-fun m!1876331 () Bool)

(assert (=> b!1586590 m!1876331))

(check-sat (not b!1586592) (not b!1586585) (not b!1586596) (not b!1586590) (not b!1586597) (not b!1586577) (not b!1586595) b_and!111249 (not b_next!43611) b_and!111251 (not b!1586581) (not b!1586593) (not b_next!43607) b_and!111247 (not b!1586594) (not b!1586578) b_and!111245 (not b!1586583) (not b!1586589) (not b_next!43609) (not b_next!43613) (not b!1586584) (not b!1586587) (not b!1586588) (not b!1586582) (not b!1586579) (not b!1586580))
(check-sat (not b_next!43607) b_and!111247 b_and!111245 b_and!111249 (not b_next!43611) b_and!111251 (not b_next!43609) (not b_next!43613))
(get-model)

(declare-fun d!472065 () Bool)

(declare-fun res!707636 () Bool)

(declare-fun e!1019095 () Bool)

(assert (=> d!472065 (=> (not res!707636) (not e!1019095))))

(declare-fun isEmpty!10466 (List!17510) Bool)

(assert (=> d!472065 (= res!707636 (not (isEmpty!10466 (originalCharacters!3887 (h!22842 tokens!457)))))))

(assert (=> d!472065 (= (inv!22856 (h!22842 tokens!457)) e!1019095)))

(declare-fun b!1586612 () Bool)

(declare-fun res!707637 () Bool)

(assert (=> b!1586612 (=> (not res!707637) (not e!1019095))))

(declare-fun dynLambda!7748 (Int TokenValue!3163) BalanceConc!11532)

(assert (=> b!1586612 (= res!707637 (= (originalCharacters!3887 (h!22842 tokens!457)) (list!6768 (dynLambda!7748 (toChars!4343 (transformation!3073 (rule!4877 (h!22842 tokens!457)))) (value!97253 (h!22842 tokens!457))))))))

(declare-fun b!1586613 () Bool)

(declare-fun size!14034 (List!17510) Int)

(assert (=> b!1586613 (= e!1019095 (= (size!14029 (h!22842 tokens!457)) (size!14034 (originalCharacters!3887 (h!22842 tokens!457)))))))

(assert (= (and d!472065 res!707636) b!1586612))

(assert (= (and b!1586612 res!707637) b!1586613))

(declare-fun b_lambda!49921 () Bool)

(assert (=> (not b_lambda!49921) (not b!1586612)))

(declare-fun tb!89303 () Bool)

(declare-fun t!144267 () Bool)

(assert (=> (and b!1586586 (= (toChars!4343 (transformation!3073 (h!22843 rules!1846))) (toChars!4343 (transformation!3073 (rule!4877 (h!22842 tokens!457))))) t!144267) tb!89303))

(declare-fun b!1586636 () Bool)

(declare-fun e!1019104 () Bool)

(declare-fun tp!466451 () Bool)

(declare-fun inv!22860 (Conc!5794) Bool)

(assert (=> b!1586636 (= e!1019104 (and (inv!22860 (c!257149 (dynLambda!7748 (toChars!4343 (transformation!3073 (rule!4877 (h!22842 tokens!457)))) (value!97253 (h!22842 tokens!457))))) tp!466451))))

(declare-fun result!108090 () Bool)

(declare-fun inv!22861 (BalanceConc!11532) Bool)

(assert (=> tb!89303 (= result!108090 (and (inv!22861 (dynLambda!7748 (toChars!4343 (transformation!3073 (rule!4877 (h!22842 tokens!457)))) (value!97253 (h!22842 tokens!457)))) e!1019104))))

(assert (= tb!89303 b!1586636))

(declare-fun m!1876373 () Bool)

(assert (=> b!1586636 m!1876373))

(declare-fun m!1876375 () Bool)

(assert (=> tb!89303 m!1876375))

(assert (=> b!1586612 t!144267))

(declare-fun b_and!111253 () Bool)

(assert (= b_and!111247 (and (=> t!144267 result!108090) b_and!111253)))

(declare-fun t!144269 () Bool)

(declare-fun tb!89305 () Bool)

(assert (=> (and b!1586591 (= (toChars!4343 (transformation!3073 (rule!4877 (h!22842 tokens!457)))) (toChars!4343 (transformation!3073 (rule!4877 (h!22842 tokens!457))))) t!144269) tb!89305))

(declare-fun result!108094 () Bool)

(assert (= result!108094 result!108090))

(assert (=> b!1586612 t!144269))

(declare-fun b_and!111255 () Bool)

(assert (= b_and!111251 (and (=> t!144269 result!108094) b_and!111255)))

(declare-fun m!1876377 () Bool)

(assert (=> d!472065 m!1876377))

(declare-fun m!1876379 () Bool)

(assert (=> b!1586612 m!1876379))

(assert (=> b!1586612 m!1876379))

(declare-fun m!1876381 () Bool)

(assert (=> b!1586612 m!1876381))

(declare-fun m!1876383 () Bool)

(assert (=> b!1586613 m!1876383))

(assert (=> b!1586582 d!472065))

(declare-fun d!472067 () Bool)

(declare-fun list!6771 (Conc!5795) List!17511)

(assert (=> d!472067 (= (list!6767 (_1!9864 lt!558819)) (list!6771 (c!257151 (_1!9864 lt!558819))))))

(declare-fun bs!391441 () Bool)

(assert (= bs!391441 d!472067))

(declare-fun m!1876385 () Bool)

(assert (=> bs!391441 m!1876385))

(assert (=> b!1586593 d!472067))

(declare-fun d!472069 () Bool)

(declare-fun e!1019160 () Bool)

(assert (=> d!472069 e!1019160))

(declare-fun res!707707 () Bool)

(assert (=> d!472069 (=> (not res!707707) (not e!1019160))))

(assert (=> d!472069 (= res!707707 (= (list!6767 (_1!9864 (lex!1186 thiss!17113 rules!1846 (print!1233 thiss!17113 (seqFromList!1895 (t!144264 tokens!457)))))) (t!144264 tokens!457)))))

(declare-fun lt!559000 () Unit!27373)

(declare-fun e!1019159 () Unit!27373)

(assert (=> d!472069 (= lt!559000 e!1019159)))

(declare-fun c!257176 () Bool)

(assert (=> d!472069 (= c!257176 (or ((_ is Nil!17441) (t!144264 tokens!457)) ((_ is Nil!17441) (t!144264 (t!144264 tokens!457)))))))

(assert (=> d!472069 (not (isEmpty!10460 rules!1846))))

(assert (=> d!472069 (= (theoremInvertabilityWhenTokenListSeparable!147 thiss!17113 rules!1846 (t!144264 tokens!457)) lt!559000)))

(declare-fun b!1586728 () Bool)

(declare-fun Unit!27375 () Unit!27373)

(assert (=> b!1586728 (= e!1019159 Unit!27375)))

(declare-fun b!1586729 () Bool)

(declare-fun Unit!27376 () Unit!27373)

(assert (=> b!1586729 (= e!1019159 Unit!27376)))

(declare-fun lt!558995 () BalanceConc!11532)

(assert (=> b!1586729 (= lt!558995 (print!1233 thiss!17113 (seqFromList!1895 (t!144264 tokens!457))))))

(declare-fun lt!558999 () BalanceConc!11532)

(assert (=> b!1586729 (= lt!558999 (print!1233 thiss!17113 (seqFromList!1895 (t!144264 (t!144264 tokens!457)))))))

(declare-fun lt!559001 () tuple2!16924)

(assert (=> b!1586729 (= lt!559001 (lex!1186 thiss!17113 rules!1846 lt!558999))))

(declare-fun lt!559017 () List!17510)

(assert (=> b!1586729 (= lt!559017 (list!6768 (charsOf!1722 (h!22842 (t!144264 tokens!457)))))))

(declare-fun lt!559003 () List!17510)

(assert (=> b!1586729 (= lt!559003 (list!6768 lt!558999))))

(declare-fun lt!559013 () Unit!27373)

(assert (=> b!1586729 (= lt!559013 (lemmaConcatTwoListThenFirstIsPrefix!858 lt!559017 lt!559003))))

(assert (=> b!1586729 (isPrefix!1333 lt!559017 (++!4550 lt!559017 lt!559003))))

(declare-fun lt!559016 () Unit!27373)

(assert (=> b!1586729 (= lt!559016 lt!559013)))

(declare-fun lt!559008 () Unit!27373)

(assert (=> b!1586729 (= lt!559008 (theoremInvertabilityWhenTokenListSeparable!147 thiss!17113 rules!1846 (t!144264 (t!144264 tokens!457))))))

(declare-fun lt!559011 () Unit!27373)

(assert (=> b!1586729 (= lt!559011 (seqFromListBHdTlConstructive!150 (h!22842 (t!144264 (t!144264 tokens!457))) (t!144264 (t!144264 (t!144264 tokens!457))) (_1!9864 lt!559001)))))

(assert (=> b!1586729 (= (list!6767 (_1!9864 lt!559001)) (list!6767 (prepend!559 (seqFromList!1895 (t!144264 (t!144264 (t!144264 tokens!457)))) (h!22842 (t!144264 (t!144264 tokens!457))))))))

(declare-fun lt!559018 () Unit!27373)

(assert (=> b!1586729 (= lt!559018 lt!559011)))

(declare-fun lt!558993 () Option!3140)

(assert (=> b!1586729 (= lt!558993 (maxPrefix!1266 thiss!17113 rules!1846 (list!6768 lt!558995)))))

(assert (=> b!1586729 (= (print!1233 thiss!17113 (singletonSeq!1424 (h!22842 (t!144264 tokens!457)))) (printTailRec!755 thiss!17113 (singletonSeq!1424 (h!22842 (t!144264 tokens!457))) 0 (BalanceConc!11533 Empty!5794)))))

(declare-fun lt!558998 () Unit!27373)

(declare-fun Unit!27377 () Unit!27373)

(assert (=> b!1586729 (= lt!558998 Unit!27377)))

(declare-fun lt!559002 () Unit!27373)

(assert (=> b!1586729 (= lt!559002 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!276 thiss!17113 rules!1846 (list!6768 (charsOf!1722 (h!22842 (t!144264 tokens!457)))) (list!6768 lt!558999)))))

(assert (=> b!1586729 (= (list!6768 (charsOf!1722 (h!22842 (t!144264 tokens!457)))) (originalCharacters!3887 (h!22842 (t!144264 tokens!457))))))

(declare-fun lt!559007 () Unit!27373)

(declare-fun Unit!27378 () Unit!27373)

(assert (=> b!1586729 (= lt!559007 Unit!27378)))

(declare-fun head!3221 (List!17510) C!8976)

(assert (=> b!1586729 (= (list!6768 (singletonSeq!1425 (apply!4266 (charsOf!1722 (h!22842 (t!144264 (t!144264 tokens!457)))) 0))) (Cons!17440 (head!3221 (originalCharacters!3887 (h!22842 (t!144264 (t!144264 tokens!457))))) Nil!17440))))

(declare-fun lt!559015 () Unit!27373)

(declare-fun Unit!27379 () Unit!27373)

(assert (=> b!1586729 (= lt!559015 Unit!27379)))

(assert (=> b!1586729 (= (list!6768 (singletonSeq!1425 (apply!4266 (charsOf!1722 (h!22842 (t!144264 (t!144264 tokens!457)))) 0))) (Cons!17440 (head!3221 (list!6768 lt!558999)) Nil!17440))))

(declare-fun lt!559004 () Unit!27373)

(declare-fun Unit!27380 () Unit!27373)

(assert (=> b!1586729 (= lt!559004 Unit!27380)))

(declare-fun head!3222 (BalanceConc!11532) C!8976)

(assert (=> b!1586729 (= (list!6768 (singletonSeq!1425 (apply!4266 (charsOf!1722 (h!22842 (t!144264 (t!144264 tokens!457)))) 0))) (Cons!17440 (head!3222 lt!558999) Nil!17440))))

(declare-fun lt!559014 () Unit!27373)

(declare-fun Unit!27381 () Unit!27373)

(assert (=> b!1586729 (= lt!559014 Unit!27381)))

(assert (=> b!1586729 (isDefined!2515 (maxPrefix!1266 thiss!17113 rules!1846 (originalCharacters!3887 (h!22842 (t!144264 tokens!457)))))))

(declare-fun lt!558994 () Unit!27373)

(declare-fun Unit!27382 () Unit!27373)

(assert (=> b!1586729 (= lt!558994 Unit!27382)))

(assert (=> b!1586729 (isDefined!2515 (maxPrefix!1266 thiss!17113 rules!1846 (list!6768 (charsOf!1722 (h!22842 (t!144264 tokens!457))))))))

(declare-fun lt!558996 () Unit!27373)

(declare-fun Unit!27383 () Unit!27373)

(assert (=> b!1586729 (= lt!558996 Unit!27383)))

(declare-fun lt!558997 () Unit!27373)

(declare-fun Unit!27384 () Unit!27373)

(assert (=> b!1586729 (= lt!558997 Unit!27384)))

(declare-fun get!4988 (Option!3140) tuple2!16926)

(assert (=> b!1586729 (= (_1!9865 (get!4988 (maxPrefix!1266 thiss!17113 rules!1846 (list!6768 (charsOf!1722 (h!22842 (t!144264 tokens!457))))))) (h!22842 (t!144264 tokens!457)))))

(declare-fun lt!559012 () Unit!27373)

(declare-fun Unit!27385 () Unit!27373)

(assert (=> b!1586729 (= lt!559012 Unit!27385)))

(assert (=> b!1586729 (isEmpty!10466 (_2!9865 (get!4988 (maxPrefix!1266 thiss!17113 rules!1846 (list!6768 (charsOf!1722 (h!22842 (t!144264 tokens!457))))))))))

(declare-fun lt!559006 () Unit!27373)

(declare-fun Unit!27386 () Unit!27373)

(assert (=> b!1586729 (= lt!559006 Unit!27386)))

(declare-fun matchR!1920 (Regex!4401 List!17510) Bool)

(assert (=> b!1586729 (matchR!1920 (regex!3073 (rule!4877 (h!22842 (t!144264 tokens!457)))) (list!6768 (charsOf!1722 (h!22842 (t!144264 tokens!457)))))))

(declare-fun lt!559010 () Unit!27373)

(declare-fun Unit!27387 () Unit!27373)

(assert (=> b!1586729 (= lt!559010 Unit!27387)))

(assert (=> b!1586729 (= (rule!4877 (h!22842 (t!144264 tokens!457))) (rule!4877 (h!22842 (t!144264 tokens!457))))))

(declare-fun lt!559009 () Unit!27373)

(declare-fun Unit!27388 () Unit!27373)

(assert (=> b!1586729 (= lt!559009 Unit!27388)))

(declare-fun lt!559005 () Unit!27373)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!69 (LexerInterface!2702 List!17512 Token!5712 Rule!5946 List!17510) Unit!27373)

(assert (=> b!1586729 (= lt!559005 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!69 thiss!17113 rules!1846 (h!22842 (t!144264 tokens!457)) (rule!4877 (h!22842 (t!144264 tokens!457))) (list!6768 lt!558999)))))

(declare-fun b!1586730 () Bool)

(declare-fun isEmpty!10467 (BalanceConc!11532) Bool)

(assert (=> b!1586730 (= e!1019160 (isEmpty!10467 (_2!9864 (lex!1186 thiss!17113 rules!1846 (print!1233 thiss!17113 (seqFromList!1895 (t!144264 tokens!457)))))))))

(assert (= (and d!472069 c!257176) b!1586728))

(assert (= (and d!472069 (not c!257176)) b!1586729))

(assert (= (and d!472069 res!707707) b!1586730))

(declare-fun m!1876587 () Bool)

(assert (=> d!472069 m!1876587))

(declare-fun m!1876589 () Bool)

(assert (=> d!472069 m!1876589))

(assert (=> d!472069 m!1876243))

(assert (=> d!472069 m!1876251))

(assert (=> d!472069 m!1876251))

(assert (=> d!472069 m!1876587))

(declare-fun m!1876591 () Bool)

(assert (=> d!472069 m!1876591))

(assert (=> b!1586729 m!1876289))

(declare-fun m!1876593 () Bool)

(assert (=> b!1586729 m!1876593))

(declare-fun m!1876595 () Bool)

(assert (=> b!1586729 m!1876595))

(declare-fun m!1876597 () Bool)

(assert (=> b!1586729 m!1876597))

(declare-fun m!1876599 () Bool)

(assert (=> b!1586729 m!1876599))

(declare-fun m!1876601 () Bool)

(assert (=> b!1586729 m!1876601))

(declare-fun m!1876603 () Bool)

(assert (=> b!1586729 m!1876603))

(declare-fun m!1876605 () Bool)

(assert (=> b!1586729 m!1876605))

(assert (=> b!1586729 m!1876599))

(declare-fun m!1876607 () Bool)

(assert (=> b!1586729 m!1876607))

(declare-fun m!1876609 () Bool)

(assert (=> b!1586729 m!1876609))

(declare-fun m!1876611 () Bool)

(assert (=> b!1586729 m!1876611))

(assert (=> b!1586729 m!1876599))

(declare-fun m!1876613 () Bool)

(assert (=> b!1586729 m!1876613))

(assert (=> b!1586729 m!1876605))

(declare-fun m!1876615 () Bool)

(assert (=> b!1586729 m!1876615))

(declare-fun m!1876617 () Bool)

(assert (=> b!1586729 m!1876617))

(declare-fun m!1876619 () Bool)

(assert (=> b!1586729 m!1876619))

(declare-fun m!1876621 () Bool)

(assert (=> b!1586729 m!1876621))

(declare-fun m!1876623 () Bool)

(assert (=> b!1586729 m!1876623))

(assert (=> b!1586729 m!1876313))

(declare-fun m!1876625 () Bool)

(assert (=> b!1586729 m!1876625))

(declare-fun m!1876627 () Bool)

(assert (=> b!1586729 m!1876627))

(declare-fun m!1876629 () Bool)

(assert (=> b!1586729 m!1876629))

(declare-fun m!1876631 () Bool)

(assert (=> b!1586729 m!1876631))

(declare-fun m!1876633 () Bool)

(assert (=> b!1586729 m!1876633))

(declare-fun m!1876635 () Bool)

(assert (=> b!1586729 m!1876635))

(declare-fun m!1876637 () Bool)

(assert (=> b!1586729 m!1876637))

(declare-fun m!1876639 () Bool)

(assert (=> b!1586729 m!1876639))

(assert (=> b!1586729 m!1876597))

(declare-fun m!1876641 () Bool)

(assert (=> b!1586729 m!1876641))

(assert (=> b!1586729 m!1876251))

(assert (=> b!1586729 m!1876587))

(declare-fun m!1876643 () Bool)

(assert (=> b!1586729 m!1876643))

(declare-fun m!1876645 () Bool)

(assert (=> b!1586729 m!1876645))

(assert (=> b!1586729 m!1876629))

(assert (=> b!1586729 m!1876617))

(assert (=> b!1586729 m!1876595))

(assert (=> b!1586729 m!1876619))

(assert (=> b!1586729 m!1876633))

(assert (=> b!1586729 m!1876643))

(declare-fun m!1876647 () Bool)

(assert (=> b!1586729 m!1876647))

(declare-fun m!1876649 () Bool)

(assert (=> b!1586729 m!1876649))

(assert (=> b!1586729 m!1876251))

(declare-fun m!1876651 () Bool)

(assert (=> b!1586729 m!1876651))

(assert (=> b!1586729 m!1876629))

(declare-fun m!1876653 () Bool)

(assert (=> b!1586729 m!1876653))

(assert (=> b!1586729 m!1876289))

(assert (=> b!1586729 m!1876605))

(assert (=> b!1586729 m!1876605))

(assert (=> b!1586729 m!1876643))

(declare-fun m!1876655 () Bool)

(assert (=> b!1586729 m!1876655))

(assert (=> b!1586729 m!1876637))

(declare-fun m!1876657 () Bool)

(assert (=> b!1586729 m!1876657))

(declare-fun m!1876659 () Bool)

(assert (=> b!1586729 m!1876659))

(assert (=> b!1586729 m!1876655))

(assert (=> b!1586729 m!1876609))

(assert (=> b!1586729 m!1876313))

(assert (=> b!1586729 m!1876599))

(assert (=> b!1586730 m!1876251))

(assert (=> b!1586730 m!1876251))

(assert (=> b!1586730 m!1876587))

(assert (=> b!1586730 m!1876587))

(assert (=> b!1586730 m!1876589))

(declare-fun m!1876661 () Bool)

(assert (=> b!1586730 m!1876661))

(assert (=> b!1586593 d!472069))

(declare-fun b!1586740 () Bool)

(declare-fun res!707716 () Bool)

(declare-fun e!1019168 () Bool)

(assert (=> b!1586740 (=> (not res!707716) (not e!1019168))))

(assert (=> b!1586740 (= res!707716 (= (head!3221 lt!558833) (head!3221 lt!558830)))))

(declare-fun b!1586741 () Bool)

(declare-fun tail!2274 (List!17510) List!17510)

(assert (=> b!1586741 (= e!1019168 (isPrefix!1333 (tail!2274 lt!558833) (tail!2274 lt!558830)))))

(declare-fun b!1586742 () Bool)

(declare-fun e!1019167 () Bool)

(assert (=> b!1586742 (= e!1019167 (>= (size!14034 lt!558830) (size!14034 lt!558833)))))

(declare-fun d!472115 () Bool)

(assert (=> d!472115 e!1019167))

(declare-fun res!707719 () Bool)

(assert (=> d!472115 (=> res!707719 e!1019167)))

(declare-fun lt!559021 () Bool)

(assert (=> d!472115 (= res!707719 (not lt!559021))))

(declare-fun e!1019169 () Bool)

(assert (=> d!472115 (= lt!559021 e!1019169)))

(declare-fun res!707717 () Bool)

(assert (=> d!472115 (=> res!707717 e!1019169)))

(assert (=> d!472115 (= res!707717 ((_ is Nil!17440) lt!558833))))

(assert (=> d!472115 (= (isPrefix!1333 lt!558833 lt!558830) lt!559021)))

(declare-fun b!1586739 () Bool)

(assert (=> b!1586739 (= e!1019169 e!1019168)))

(declare-fun res!707718 () Bool)

(assert (=> b!1586739 (=> (not res!707718) (not e!1019168))))

(assert (=> b!1586739 (= res!707718 (not ((_ is Nil!17440) lt!558830)))))

(assert (= (and d!472115 (not res!707717)) b!1586739))

(assert (= (and b!1586739 res!707718) b!1586740))

(assert (= (and b!1586740 res!707716) b!1586741))

(assert (= (and d!472115 (not res!707719)) b!1586742))

(declare-fun m!1876663 () Bool)

(assert (=> b!1586740 m!1876663))

(declare-fun m!1876665 () Bool)

(assert (=> b!1586740 m!1876665))

(declare-fun m!1876667 () Bool)

(assert (=> b!1586741 m!1876667))

(declare-fun m!1876669 () Bool)

(assert (=> b!1586741 m!1876669))

(assert (=> b!1586741 m!1876667))

(assert (=> b!1586741 m!1876669))

(declare-fun m!1876671 () Bool)

(assert (=> b!1586741 m!1876671))

(declare-fun m!1876673 () Bool)

(assert (=> b!1586742 m!1876673))

(declare-fun m!1876675 () Bool)

(assert (=> b!1586742 m!1876675))

(assert (=> b!1586593 d!472115))

(declare-fun d!472117 () Bool)

(assert (=> d!472117 (isPrefix!1333 lt!558833 (++!4550 lt!558833 lt!558822))))

(declare-fun lt!559024 () Unit!27373)

(declare-fun choose!9502 (List!17510 List!17510) Unit!27373)

(assert (=> d!472117 (= lt!559024 (choose!9502 lt!558833 lt!558822))))

(assert (=> d!472117 (= (lemmaConcatTwoListThenFirstIsPrefix!858 lt!558833 lt!558822) lt!559024)))

(declare-fun bs!391453 () Bool)

(assert (= bs!391453 d!472117))

(assert (=> bs!391453 m!1876247))

(assert (=> bs!391453 m!1876247))

(declare-fun m!1876677 () Bool)

(assert (=> bs!391453 m!1876677))

(declare-fun m!1876679 () Bool)

(assert (=> bs!391453 m!1876679))

(assert (=> b!1586593 d!472117))

(declare-fun d!472119 () Bool)

(assert (=> d!472119 (= (inv!22853 (tag!3343 (h!22843 rules!1846))) (= (mod (str.len (value!97252 (tag!3343 (h!22843 rules!1846)))) 2) 0))))

(assert (=> b!1586581 d!472119))

(declare-fun d!472121 () Bool)

(declare-fun res!707722 () Bool)

(declare-fun e!1019172 () Bool)

(assert (=> d!472121 (=> (not res!707722) (not e!1019172))))

(declare-fun semiInverseModEq!1160 (Int Int) Bool)

(assert (=> d!472121 (= res!707722 (semiInverseModEq!1160 (toChars!4343 (transformation!3073 (h!22843 rules!1846))) (toValue!4484 (transformation!3073 (h!22843 rules!1846)))))))

(assert (=> d!472121 (= (inv!22857 (transformation!3073 (h!22843 rules!1846))) e!1019172)))

(declare-fun b!1586745 () Bool)

(declare-fun equivClasses!1101 (Int Int) Bool)

(assert (=> b!1586745 (= e!1019172 (equivClasses!1101 (toChars!4343 (transformation!3073 (h!22843 rules!1846))) (toValue!4484 (transformation!3073 (h!22843 rules!1846)))))))

(assert (= (and d!472121 res!707722) b!1586745))

(declare-fun m!1876681 () Bool)

(assert (=> d!472121 m!1876681))

(declare-fun m!1876683 () Bool)

(assert (=> b!1586745 m!1876683))

(assert (=> b!1586581 d!472121))

(declare-fun b!1586809 () Bool)

(declare-fun e!1019219 () Bool)

(assert (=> b!1586809 (= e!1019219 true)))

(declare-fun b!1586808 () Bool)

(declare-fun e!1019218 () Bool)

(assert (=> b!1586808 (= e!1019218 e!1019219)))

(declare-fun b!1586807 () Bool)

(declare-fun e!1019217 () Bool)

(assert (=> b!1586807 (= e!1019217 e!1019218)))

(declare-fun d!472123 () Bool)

(assert (=> d!472123 e!1019217))

(assert (= b!1586808 b!1586809))

(assert (= b!1586807 b!1586808))

(assert (= (and d!472123 ((_ is Cons!17442) rules!1846)) b!1586807))

(declare-fun lambda!66601 () Int)

(declare-fun order!10309 () Int)

(declare-fun order!10307 () Int)

(declare-fun dynLambda!7749 (Int Int) Int)

(declare-fun dynLambda!7750 (Int Int) Int)

(assert (=> b!1586809 (< (dynLambda!7749 order!10307 (toValue!4484 (transformation!3073 (h!22843 rules!1846)))) (dynLambda!7750 order!10309 lambda!66601))))

(declare-fun order!10311 () Int)

(declare-fun dynLambda!7751 (Int Int) Int)

(assert (=> b!1586809 (< (dynLambda!7751 order!10311 (toChars!4343 (transformation!3073 (h!22843 rules!1846)))) (dynLambda!7750 order!10309 lambda!66601))))

(assert (=> d!472123 true))

(declare-fun lt!559041 () Bool)

(declare-fun forall!4010 (List!17511 Int) Bool)

(assert (=> d!472123 (= lt!559041 (forall!4010 tokens!457 lambda!66601))))

(declare-fun e!1019210 () Bool)

(assert (=> d!472123 (= lt!559041 e!1019210)))

(declare-fun res!707754 () Bool)

(assert (=> d!472123 (=> res!707754 e!1019210)))

(assert (=> d!472123 (= res!707754 (not ((_ is Cons!17441) tokens!457)))))

(assert (=> d!472123 (not (isEmpty!10460 rules!1846))))

(assert (=> d!472123 (= (rulesProduceEachTokenIndividuallyList!904 thiss!17113 rules!1846 tokens!457) lt!559041)))

(declare-fun b!1586797 () Bool)

(declare-fun e!1019209 () Bool)

(assert (=> b!1586797 (= e!1019210 e!1019209)))

(declare-fun res!707753 () Bool)

(assert (=> b!1586797 (=> (not res!707753) (not e!1019209))))

(assert (=> b!1586797 (= res!707753 (rulesProduceIndividualToken!1354 thiss!17113 rules!1846 (h!22842 tokens!457)))))

(declare-fun b!1586798 () Bool)

(assert (=> b!1586798 (= e!1019209 (rulesProduceEachTokenIndividuallyList!904 thiss!17113 rules!1846 (t!144264 tokens!457)))))

(assert (= (and d!472123 (not res!707754)) b!1586797))

(assert (= (and b!1586797 res!707753) b!1586798))

(declare-fun m!1876769 () Bool)

(assert (=> d!472123 m!1876769))

(assert (=> d!472123 m!1876243))

(assert (=> b!1586797 m!1876305))

(declare-fun m!1876771 () Bool)

(assert (=> b!1586798 m!1876771))

(assert (=> b!1586592 d!472123))

(declare-fun d!472155 () Bool)

(declare-fun lt!559044 () Bool)

(declare-fun isEmpty!10469 (List!17511) Bool)

(assert (=> d!472155 (= lt!559044 (isEmpty!10469 (list!6767 (_1!9864 (lex!1186 thiss!17113 rules!1846 (seqFromList!1896 lt!558833))))))))

(declare-fun isEmpty!10470 (Conc!5795) Bool)

(assert (=> d!472155 (= lt!559044 (isEmpty!10470 (c!257151 (_1!9864 (lex!1186 thiss!17113 rules!1846 (seqFromList!1896 lt!558833))))))))

(assert (=> d!472155 (= (isEmpty!10461 (_1!9864 (lex!1186 thiss!17113 rules!1846 (seqFromList!1896 lt!558833)))) lt!559044)))

(declare-fun bs!391461 () Bool)

(assert (= bs!391461 d!472155))

(declare-fun m!1876773 () Bool)

(assert (=> bs!391461 m!1876773))

(assert (=> bs!391461 m!1876773))

(declare-fun m!1876775 () Bool)

(assert (=> bs!391461 m!1876775))

(declare-fun m!1876777 () Bool)

(assert (=> bs!391461 m!1876777))

(assert (=> b!1586595 d!472155))

(declare-fun b!1586828 () Bool)

(declare-fun e!1019234 () Bool)

(declare-fun e!1019232 () Bool)

(assert (=> b!1586828 (= e!1019234 e!1019232)))

(declare-fun res!707768 () Bool)

(declare-fun lt!559068 () tuple2!16924)

(assert (=> b!1586828 (= res!707768 (< (size!14030 (_2!9864 lt!559068)) (size!14030 (seqFromList!1896 lt!558833))))))

(assert (=> b!1586828 (=> (not res!707768) (not e!1019232))))

(declare-fun d!472157 () Bool)

(declare-fun e!1019233 () Bool)

(assert (=> d!472157 e!1019233))

(declare-fun res!707769 () Bool)

(assert (=> d!472157 (=> (not res!707769) (not e!1019233))))

(assert (=> d!472157 (= res!707769 e!1019234)))

(declare-fun c!257183 () Bool)

(declare-fun size!14035 (BalanceConc!11534) Int)

(assert (=> d!472157 (= c!257183 (> (size!14035 (_1!9864 lt!559068)) 0))))

(declare-fun lexTailRecV2!512 (LexerInterface!2702 List!17512 BalanceConc!11532 BalanceConc!11532 BalanceConc!11532 BalanceConc!11534) tuple2!16924)

(assert (=> d!472157 (= lt!559068 (lexTailRecV2!512 thiss!17113 rules!1846 (seqFromList!1896 lt!558833) (BalanceConc!11533 Empty!5794) (seqFromList!1896 lt!558833) (BalanceConc!11535 Empty!5795)))))

(assert (=> d!472157 (= (lex!1186 thiss!17113 rules!1846 (seqFromList!1896 lt!558833)) lt!559068)))

(declare-fun b!1586829 () Bool)

(assert (=> b!1586829 (= e!1019232 (not (isEmpty!10461 (_1!9864 lt!559068))))))

(declare-fun b!1586830 () Bool)

(declare-fun res!707767 () Bool)

(assert (=> b!1586830 (=> (not res!707767) (not e!1019233))))

(declare-datatypes ((tuple2!16930 0))(
  ( (tuple2!16931 (_1!9867 List!17511) (_2!9867 List!17510)) )
))
(declare-fun lexList!789 (LexerInterface!2702 List!17512 List!17510) tuple2!16930)

(assert (=> b!1586830 (= res!707767 (= (list!6767 (_1!9864 lt!559068)) (_1!9867 (lexList!789 thiss!17113 rules!1846 (list!6768 (seqFromList!1896 lt!558833))))))))

(declare-fun b!1586831 () Bool)

(assert (=> b!1586831 (= e!1019233 (= (list!6768 (_2!9864 lt!559068)) (_2!9867 (lexList!789 thiss!17113 rules!1846 (list!6768 (seqFromList!1896 lt!558833))))))))

(declare-fun b!1586832 () Bool)

(assert (=> b!1586832 (= e!1019234 (= (_2!9864 lt!559068) (seqFromList!1896 lt!558833)))))

(assert (= (and d!472157 c!257183) b!1586828))

(assert (= (and d!472157 (not c!257183)) b!1586832))

(assert (= (and b!1586828 res!707768) b!1586829))

(assert (= (and d!472157 res!707769) b!1586830))

(assert (= (and b!1586830 res!707767) b!1586831))

(declare-fun m!1876791 () Bool)

(assert (=> b!1586831 m!1876791))

(assert (=> b!1586831 m!1876325))

(declare-fun m!1876793 () Bool)

(assert (=> b!1586831 m!1876793))

(assert (=> b!1586831 m!1876793))

(declare-fun m!1876795 () Bool)

(assert (=> b!1586831 m!1876795))

(declare-fun m!1876797 () Bool)

(assert (=> b!1586830 m!1876797))

(assert (=> b!1586830 m!1876325))

(assert (=> b!1586830 m!1876793))

(assert (=> b!1586830 m!1876793))

(assert (=> b!1586830 m!1876795))

(declare-fun m!1876799 () Bool)

(assert (=> b!1586828 m!1876799))

(assert (=> b!1586828 m!1876325))

(declare-fun m!1876801 () Bool)

(assert (=> b!1586828 m!1876801))

(declare-fun m!1876803 () Bool)

(assert (=> b!1586829 m!1876803))

(declare-fun m!1876805 () Bool)

(assert (=> d!472157 m!1876805))

(assert (=> d!472157 m!1876325))

(assert (=> d!472157 m!1876325))

(declare-fun m!1876807 () Bool)

(assert (=> d!472157 m!1876807))

(assert (=> b!1586595 d!472157))

(declare-fun d!472163 () Bool)

(declare-fun fromListB!814 (List!17510) BalanceConc!11532)

(assert (=> d!472163 (= (seqFromList!1896 lt!558833) (fromListB!814 lt!558833))))

(declare-fun bs!391463 () Bool)

(assert (= bs!391463 d!472163))

(declare-fun m!1876809 () Bool)

(assert (=> bs!391463 m!1876809))

(assert (=> b!1586595 d!472163))

(declare-fun d!472165 () Bool)

(declare-fun res!707772 () Bool)

(declare-fun e!1019237 () Bool)

(assert (=> d!472165 (=> (not res!707772) (not e!1019237))))

(declare-fun rulesValid!1088 (LexerInterface!2702 List!17512) Bool)

(assert (=> d!472165 (= res!707772 (rulesValid!1088 thiss!17113 rules!1846))))

(assert (=> d!472165 (= (rulesInvariant!2371 thiss!17113 rules!1846) e!1019237)))

(declare-fun b!1586835 () Bool)

(declare-datatypes ((List!17516 0))(
  ( (Nil!17446) (Cons!17446 (h!22847 String!20147) (t!144311 List!17516)) )
))
(declare-fun noDuplicateTag!1088 (LexerInterface!2702 List!17512 List!17516) Bool)

(assert (=> b!1586835 (= e!1019237 (noDuplicateTag!1088 thiss!17113 rules!1846 Nil!17446))))

(assert (= (and d!472165 res!707772) b!1586835))

(declare-fun m!1876811 () Bool)

(assert (=> d!472165 m!1876811))

(declare-fun m!1876813 () Bool)

(assert (=> b!1586835 m!1876813))

(assert (=> b!1586585 d!472165))

(declare-fun d!472167 () Bool)

(declare-fun lt!559071 () BalanceConc!11532)

(assert (=> d!472167 (= (list!6768 lt!559071) (printList!817 thiss!17113 (list!6767 (seqFromList!1895 tokens!457))))))

(assert (=> d!472167 (= lt!559071 (printTailRec!755 thiss!17113 (seqFromList!1895 tokens!457) 0 (BalanceConc!11533 Empty!5794)))))

(assert (=> d!472167 (= (print!1233 thiss!17113 (seqFromList!1895 tokens!457)) lt!559071)))

(declare-fun bs!391464 () Bool)

(assert (= bs!391464 d!472167))

(declare-fun m!1876815 () Bool)

(assert (=> bs!391464 m!1876815))

(assert (=> bs!391464 m!1876253))

(declare-fun m!1876817 () Bool)

(assert (=> bs!391464 m!1876817))

(assert (=> bs!391464 m!1876817))

(declare-fun m!1876819 () Bool)

(assert (=> bs!391464 m!1876819))

(assert (=> bs!391464 m!1876253))

(declare-fun m!1876821 () Bool)

(assert (=> bs!391464 m!1876821))

(assert (=> b!1586596 d!472167))

(declare-fun d!472169 () Bool)

(declare-fun lt!559072 () BalanceConc!11532)

(assert (=> d!472169 (= (list!6768 lt!559072) (printList!817 thiss!17113 (list!6767 lt!558826)))))

(assert (=> d!472169 (= lt!559072 (printTailRec!755 thiss!17113 lt!558826 0 (BalanceConc!11533 Empty!5794)))))

(assert (=> d!472169 (= (print!1233 thiss!17113 lt!558826) lt!559072)))

(declare-fun bs!391465 () Bool)

(assert (= bs!391465 d!472169))

(declare-fun m!1876823 () Bool)

(assert (=> bs!391465 m!1876823))

(assert (=> bs!391465 m!1876311))

(assert (=> bs!391465 m!1876311))

(declare-fun m!1876825 () Bool)

(assert (=> bs!391465 m!1876825))

(declare-fun m!1876827 () Bool)

(assert (=> bs!391465 m!1876827))

(assert (=> b!1586596 d!472169))

(declare-fun d!472171 () Bool)

(declare-fun list!6772 (Conc!5794) List!17510)

(assert (=> d!472171 (= (list!6768 lt!558825) (list!6772 (c!257149 lt!558825)))))

(declare-fun bs!391466 () Bool)

(assert (= bs!391466 d!472171))

(declare-fun m!1876829 () Bool)

(assert (=> bs!391466 m!1876829))

(assert (=> b!1586596 d!472171))

(declare-fun b!1586836 () Bool)

(declare-fun e!1019240 () Bool)

(declare-fun e!1019238 () Bool)

(assert (=> b!1586836 (= e!1019240 e!1019238)))

(declare-fun res!707774 () Bool)

(declare-fun lt!559073 () tuple2!16924)

(assert (=> b!1586836 (= res!707774 (< (size!14030 (_2!9864 lt!559073)) (size!14030 lt!558831)))))

(assert (=> b!1586836 (=> (not res!707774) (not e!1019238))))

(declare-fun d!472173 () Bool)

(declare-fun e!1019239 () Bool)

(assert (=> d!472173 e!1019239))

(declare-fun res!707775 () Bool)

(assert (=> d!472173 (=> (not res!707775) (not e!1019239))))

(assert (=> d!472173 (= res!707775 e!1019240)))

(declare-fun c!257184 () Bool)

(assert (=> d!472173 (= c!257184 (> (size!14035 (_1!9864 lt!559073)) 0))))

(assert (=> d!472173 (= lt!559073 (lexTailRecV2!512 thiss!17113 rules!1846 lt!558831 (BalanceConc!11533 Empty!5794) lt!558831 (BalanceConc!11535 Empty!5795)))))

(assert (=> d!472173 (= (lex!1186 thiss!17113 rules!1846 lt!558831) lt!559073)))

(declare-fun b!1586837 () Bool)

(assert (=> b!1586837 (= e!1019238 (not (isEmpty!10461 (_1!9864 lt!559073))))))

(declare-fun b!1586838 () Bool)

(declare-fun res!707773 () Bool)

(assert (=> b!1586838 (=> (not res!707773) (not e!1019239))))

(assert (=> b!1586838 (= res!707773 (= (list!6767 (_1!9864 lt!559073)) (_1!9867 (lexList!789 thiss!17113 rules!1846 (list!6768 lt!558831)))))))

(declare-fun b!1586839 () Bool)

(assert (=> b!1586839 (= e!1019239 (= (list!6768 (_2!9864 lt!559073)) (_2!9867 (lexList!789 thiss!17113 rules!1846 (list!6768 lt!558831)))))))

(declare-fun b!1586840 () Bool)

(assert (=> b!1586840 (= e!1019240 (= (_2!9864 lt!559073) lt!558831))))

(assert (= (and d!472173 c!257184) b!1586836))

(assert (= (and d!472173 (not c!257184)) b!1586840))

(assert (= (and b!1586836 res!707774) b!1586837))

(assert (= (and d!472173 res!707775) b!1586838))

(assert (= (and b!1586838 res!707773) b!1586839))

(declare-fun m!1876831 () Bool)

(assert (=> b!1586839 m!1876831))

(assert (=> b!1586839 m!1876259))

(assert (=> b!1586839 m!1876259))

(declare-fun m!1876833 () Bool)

(assert (=> b!1586839 m!1876833))

(declare-fun m!1876835 () Bool)

(assert (=> b!1586838 m!1876835))

(assert (=> b!1586838 m!1876259))

(assert (=> b!1586838 m!1876259))

(assert (=> b!1586838 m!1876833))

(declare-fun m!1876837 () Bool)

(assert (=> b!1586836 m!1876837))

(declare-fun m!1876839 () Bool)

(assert (=> b!1586836 m!1876839))

(declare-fun m!1876841 () Bool)

(assert (=> b!1586837 m!1876841))

(declare-fun m!1876843 () Bool)

(assert (=> d!472173 m!1876843))

(declare-fun m!1876845 () Bool)

(assert (=> d!472173 m!1876845))

(assert (=> b!1586596 d!472173))

(declare-fun d!472175 () Bool)

(assert (=> d!472175 (= (list!6768 lt!558831) (list!6772 (c!257149 lt!558831)))))

(declare-fun bs!391467 () Bool)

(assert (= bs!391467 d!472175))

(declare-fun m!1876847 () Bool)

(assert (=> bs!391467 m!1876847))

(assert (=> b!1586596 d!472175))

(declare-fun d!472177 () Bool)

(declare-fun fromListB!815 (List!17511) BalanceConc!11534)

(assert (=> d!472177 (= (seqFromList!1895 tokens!457) (fromListB!815 tokens!457))))

(declare-fun bs!391468 () Bool)

(assert (= bs!391468 d!472177))

(declare-fun m!1876849 () Bool)

(assert (=> bs!391468 m!1876849))

(assert (=> b!1586596 d!472177))

(declare-fun d!472179 () Bool)

(declare-fun lt!559076 () BalanceConc!11532)

(assert (=> d!472179 (= (list!6768 lt!559076) (originalCharacters!3887 (h!22842 tokens!457)))))

(assert (=> d!472179 (= lt!559076 (dynLambda!7748 (toChars!4343 (transformation!3073 (rule!4877 (h!22842 tokens!457)))) (value!97253 (h!22842 tokens!457))))))

(assert (=> d!472179 (= (charsOf!1722 (h!22842 tokens!457)) lt!559076)))

(declare-fun b_lambda!49929 () Bool)

(assert (=> (not b_lambda!49929) (not d!472179)))

(assert (=> d!472179 t!144267))

(declare-fun b_and!111269 () Bool)

(assert (= b_and!111253 (and (=> t!144267 result!108090) b_and!111269)))

(assert (=> d!472179 t!144269))

(declare-fun b_and!111271 () Bool)

(assert (= b_and!111255 (and (=> t!144269 result!108094) b_and!111271)))

(declare-fun m!1876851 () Bool)

(assert (=> d!472179 m!1876851))

(assert (=> d!472179 m!1876379))

(assert (=> b!1586596 d!472179))

(declare-fun b!1586851 () Bool)

(declare-fun res!707780 () Bool)

(declare-fun e!1019245 () Bool)

(assert (=> b!1586851 (=> (not res!707780) (not e!1019245))))

(declare-fun lt!559079 () List!17510)

(assert (=> b!1586851 (= res!707780 (= (size!14034 lt!559079) (+ (size!14034 lt!558833) (size!14034 lt!558822))))))

(declare-fun b!1586852 () Bool)

(assert (=> b!1586852 (= e!1019245 (or (not (= lt!558822 Nil!17440)) (= lt!559079 lt!558833)))))

(declare-fun d!472181 () Bool)

(assert (=> d!472181 e!1019245))

(declare-fun res!707781 () Bool)

(assert (=> d!472181 (=> (not res!707781) (not e!1019245))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2403 (List!17510) (InoxSet C!8976))

(assert (=> d!472181 (= res!707781 (= (content!2403 lt!559079) ((_ map or) (content!2403 lt!558833) (content!2403 lt!558822))))))

(declare-fun e!1019246 () List!17510)

(assert (=> d!472181 (= lt!559079 e!1019246)))

(declare-fun c!257187 () Bool)

(assert (=> d!472181 (= c!257187 ((_ is Nil!17440) lt!558833))))

(assert (=> d!472181 (= (++!4550 lt!558833 lt!558822) lt!559079)))

(declare-fun b!1586849 () Bool)

(assert (=> b!1586849 (= e!1019246 lt!558822)))

(declare-fun b!1586850 () Bool)

(assert (=> b!1586850 (= e!1019246 (Cons!17440 (h!22841 lt!558833) (++!4550 (t!144263 lt!558833) lt!558822)))))

(assert (= (and d!472181 c!257187) b!1586849))

(assert (= (and d!472181 (not c!257187)) b!1586850))

(assert (= (and d!472181 res!707781) b!1586851))

(assert (= (and b!1586851 res!707780) b!1586852))

(declare-fun m!1876853 () Bool)

(assert (=> b!1586851 m!1876853))

(assert (=> b!1586851 m!1876675))

(declare-fun m!1876855 () Bool)

(assert (=> b!1586851 m!1876855))

(declare-fun m!1876857 () Bool)

(assert (=> d!472181 m!1876857))

(declare-fun m!1876859 () Bool)

(assert (=> d!472181 m!1876859))

(declare-fun m!1876861 () Bool)

(assert (=> d!472181 m!1876861))

(declare-fun m!1876863 () Bool)

(assert (=> b!1586850 m!1876863))

(assert (=> b!1586596 d!472181))

(declare-fun d!472183 () Bool)

(assert (=> d!472183 (= (list!6768 lt!558816) (list!6772 (c!257149 lt!558816)))))

(declare-fun bs!391469 () Bool)

(assert (= bs!391469 d!472183))

(declare-fun m!1876865 () Bool)

(assert (=> bs!391469 m!1876865))

(assert (=> b!1586596 d!472183))

(declare-fun d!472185 () Bool)

(assert (=> d!472185 (= (seqFromList!1895 (t!144264 tokens!457)) (fromListB!815 (t!144264 tokens!457)))))

(declare-fun bs!391470 () Bool)

(assert (= bs!391470 d!472185))

(declare-fun m!1876867 () Bool)

(assert (=> bs!391470 m!1876867))

(assert (=> b!1586596 d!472185))

(declare-fun d!472187 () Bool)

(declare-fun isEmpty!10471 (Option!3140) Bool)

(assert (=> d!472187 (= (isDefined!2515 lt!558828) (not (isEmpty!10471 lt!558828)))))

(declare-fun bs!391471 () Bool)

(assert (= bs!391471 d!472187))

(declare-fun m!1876869 () Bool)

(assert (=> bs!391471 m!1876869))

(assert (=> b!1586583 d!472187))

(declare-fun b!1586877 () Bool)

(declare-fun e!1019259 () Unit!27373)

(declare-fun Unit!27408 () Unit!27373)

(assert (=> b!1586877 (= e!1019259 Unit!27408)))

(declare-fun b!1586876 () Bool)

(declare-fun Unit!27409 () Unit!27373)

(assert (=> b!1586876 (= e!1019259 Unit!27409)))

(declare-fun lt!559169 () List!17510)

(assert (=> b!1586876 (= lt!559169 (++!4550 lt!558833 lt!558822))))

(declare-fun lt!559174 () Unit!27373)

(declare-fun lt!559166 () Token!5712)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!138 (LexerInterface!2702 Rule!5946 List!17512 List!17510) Unit!27373)

(assert (=> b!1586876 (= lt!559174 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!138 thiss!17113 (rule!4877 lt!559166) rules!1846 lt!559169))))

(declare-fun maxPrefixOneRule!735 (LexerInterface!2702 Rule!5946 List!17510) Option!3140)

(assert (=> b!1586876 (isEmpty!10471 (maxPrefixOneRule!735 thiss!17113 (rule!4877 lt!559166) lt!559169))))

(declare-fun lt!559168 () Unit!27373)

(assert (=> b!1586876 (= lt!559168 lt!559174)))

(declare-fun lt!559175 () List!17510)

(assert (=> b!1586876 (= lt!559175 (list!6768 (charsOf!1722 lt!559166)))))

(declare-fun lt!559176 () Unit!27373)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!134 (LexerInterface!2702 Rule!5946 List!17510 List!17510) Unit!27373)

(assert (=> b!1586876 (= lt!559176 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!134 thiss!17113 (rule!4877 lt!559166) lt!559175 (++!4550 lt!558833 lt!558822)))))

(assert (=> b!1586876 (not (matchR!1920 (regex!3073 (rule!4877 lt!559166)) lt!559175))))

(declare-fun lt!559165 () Unit!27373)

(assert (=> b!1586876 (= lt!559165 lt!559176)))

(assert (=> b!1586876 false))

(declare-fun b!1586875 () Bool)

(declare-fun e!1019258 () Bool)

(declare-datatypes ((Option!3142 0))(
  ( (None!3141) (Some!3141 (v!24022 Rule!5946)) )
))
(declare-fun get!4990 (Option!3142) Rule!5946)

(declare-fun getRuleFromTag!244 (LexerInterface!2702 List!17512 String!20147) Option!3142)

(assert (=> b!1586875 (= e!1019258 (= (rule!4877 lt!559166) (get!4990 (getRuleFromTag!244 thiss!17113 rules!1846 (tag!3343 (rule!4877 lt!559166))))))))

(declare-fun b!1586874 () Bool)

(declare-fun res!707793 () Bool)

(assert (=> b!1586874 (=> (not res!707793) (not e!1019258))))

(assert (=> b!1586874 (= res!707793 (matchR!1920 (regex!3073 (get!4990 (getRuleFromTag!244 thiss!17113 rules!1846 (tag!3343 (rule!4877 lt!559166))))) (list!6768 (charsOf!1722 lt!559166))))))

(declare-fun d!472189 () Bool)

(assert (=> d!472189 (isDefined!2515 (maxPrefix!1266 thiss!17113 rules!1846 (++!4550 lt!558833 lt!558822)))))

(declare-fun lt!559173 () Unit!27373)

(assert (=> d!472189 (= lt!559173 e!1019259)))

(declare-fun c!257193 () Bool)

(assert (=> d!472189 (= c!257193 (isEmpty!10471 (maxPrefix!1266 thiss!17113 rules!1846 (++!4550 lt!558833 lt!558822))))))

(declare-fun lt!559179 () Unit!27373)

(declare-fun lt!559172 () Unit!27373)

(assert (=> d!472189 (= lt!559179 lt!559172)))

(assert (=> d!472189 e!1019258))

(declare-fun res!707794 () Bool)

(assert (=> d!472189 (=> (not res!707794) (not e!1019258))))

(declare-fun isDefined!2517 (Option!3142) Bool)

(assert (=> d!472189 (= res!707794 (isDefined!2517 (getRuleFromTag!244 thiss!17113 rules!1846 (tag!3343 (rule!4877 lt!559166)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!244 (LexerInterface!2702 List!17512 List!17510 Token!5712) Unit!27373)

(assert (=> d!472189 (= lt!559172 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!244 thiss!17113 rules!1846 lt!558833 lt!559166))))

(declare-fun lt!559181 () Unit!27373)

(declare-fun lt!559178 () Unit!27373)

(assert (=> d!472189 (= lt!559181 lt!559178)))

(declare-fun lt!559167 () List!17510)

(assert (=> d!472189 (isPrefix!1333 lt!559167 (++!4550 lt!558833 lt!558822))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!130 (List!17510 List!17510 List!17510) Unit!27373)

(assert (=> d!472189 (= lt!559178 (lemmaPrefixStaysPrefixWhenAddingToSuffix!130 lt!559167 lt!558833 lt!558822))))

(assert (=> d!472189 (= lt!559167 (list!6768 (charsOf!1722 lt!559166)))))

(declare-fun lt!559171 () Unit!27373)

(declare-fun lt!559170 () Unit!27373)

(assert (=> d!472189 (= lt!559171 lt!559170)))

(declare-fun lt!559177 () List!17510)

(declare-fun lt!559180 () List!17510)

(assert (=> d!472189 (isPrefix!1333 lt!559177 (++!4550 lt!559177 lt!559180))))

(assert (=> d!472189 (= lt!559170 (lemmaConcatTwoListThenFirstIsPrefix!858 lt!559177 lt!559180))))

(assert (=> d!472189 (= lt!559180 (_2!9865 (get!4988 (maxPrefix!1266 thiss!17113 rules!1846 lt!558833))))))

(assert (=> d!472189 (= lt!559177 (list!6768 (charsOf!1722 lt!559166)))))

(declare-fun head!3225 (List!17511) Token!5712)

(assert (=> d!472189 (= lt!559166 (head!3225 (list!6767 (_1!9864 (lex!1186 thiss!17113 rules!1846 (seqFromList!1896 lt!558833))))))))

(assert (=> d!472189 (not (isEmpty!10460 rules!1846))))

(assert (=> d!472189 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!276 thiss!17113 rules!1846 lt!558833 lt!558822) lt!559173)))

(assert (= (and d!472189 res!707794) b!1586874))

(assert (= (and b!1586874 res!707793) b!1586875))

(assert (= (and d!472189 c!257193) b!1586876))

(assert (= (and d!472189 (not c!257193)) b!1586877))

(declare-fun m!1876923 () Bool)

(assert (=> b!1586876 m!1876923))

(declare-fun m!1876925 () Bool)

(assert (=> b!1586876 m!1876925))

(declare-fun m!1876927 () Bool)

(assert (=> b!1586876 m!1876927))

(declare-fun m!1876929 () Bool)

(assert (=> b!1586876 m!1876929))

(assert (=> b!1586876 m!1876929))

(declare-fun m!1876931 () Bool)

(assert (=> b!1586876 m!1876931))

(assert (=> b!1586876 m!1876923))

(assert (=> b!1586876 m!1876247))

(declare-fun m!1876933 () Bool)

(assert (=> b!1586876 m!1876933))

(assert (=> b!1586876 m!1876247))

(declare-fun m!1876935 () Bool)

(assert (=> b!1586876 m!1876935))

(declare-fun m!1876937 () Bool)

(assert (=> b!1586875 m!1876937))

(assert (=> b!1586875 m!1876937))

(declare-fun m!1876939 () Bool)

(assert (=> b!1586875 m!1876939))

(assert (=> b!1586874 m!1876937))

(assert (=> b!1586874 m!1876939))

(assert (=> b!1586874 m!1876931))

(declare-fun m!1876941 () Bool)

(assert (=> b!1586874 m!1876941))

(assert (=> b!1586874 m!1876929))

(assert (=> b!1586874 m!1876929))

(assert (=> b!1586874 m!1876931))

(assert (=> b!1586874 m!1876937))

(declare-fun m!1876943 () Bool)

(assert (=> d!472189 m!1876943))

(assert (=> d!472189 m!1876943))

(declare-fun m!1876945 () Bool)

(assert (=> d!472189 m!1876945))

(assert (=> d!472189 m!1876773))

(assert (=> d!472189 m!1876247))

(declare-fun m!1876947 () Bool)

(assert (=> d!472189 m!1876947))

(assert (=> d!472189 m!1876247))

(declare-fun m!1876949 () Bool)

(assert (=> d!472189 m!1876949))

(assert (=> d!472189 m!1876773))

(declare-fun m!1876951 () Bool)

(assert (=> d!472189 m!1876951))

(declare-fun m!1876953 () Bool)

(assert (=> d!472189 m!1876953))

(assert (=> d!472189 m!1876929))

(assert (=> d!472189 m!1876931))

(declare-fun m!1876955 () Bool)

(assert (=> d!472189 m!1876955))

(declare-fun m!1876957 () Bool)

(assert (=> d!472189 m!1876957))

(assert (=> d!472189 m!1876937))

(assert (=> d!472189 m!1876947))

(declare-fun m!1876959 () Bool)

(assert (=> d!472189 m!1876959))

(declare-fun m!1876961 () Bool)

(assert (=> d!472189 m!1876961))

(assert (=> d!472189 m!1876325))

(assert (=> d!472189 m!1876327))

(assert (=> d!472189 m!1876247))

(declare-fun m!1876963 () Bool)

(assert (=> d!472189 m!1876963))

(assert (=> d!472189 m!1876325))

(assert (=> d!472189 m!1876937))

(declare-fun m!1876965 () Bool)

(assert (=> d!472189 m!1876965))

(assert (=> d!472189 m!1876955))

(assert (=> d!472189 m!1876243))

(assert (=> d!472189 m!1876947))

(declare-fun m!1876967 () Bool)

(assert (=> d!472189 m!1876967))

(assert (=> d!472189 m!1876929))

(assert (=> b!1586583 d!472189))

(declare-fun d!472201 () Bool)

(declare-fun lt!559184 () C!8976)

(declare-fun apply!4272 (List!17510 Int) C!8976)

(assert (=> d!472201 (= lt!559184 (apply!4272 (list!6768 lt!558835) 0))))

(declare-fun apply!4273 (Conc!5794 Int) C!8976)

(assert (=> d!472201 (= lt!559184 (apply!4273 (c!257149 lt!558835) 0))))

(declare-fun e!1019262 () Bool)

(assert (=> d!472201 e!1019262))

(declare-fun res!707797 () Bool)

(assert (=> d!472201 (=> (not res!707797) (not e!1019262))))

(assert (=> d!472201 (= res!707797 (<= 0 0))))

(assert (=> d!472201 (= (apply!4266 lt!558835 0) lt!559184)))

(declare-fun b!1586880 () Bool)

(assert (=> b!1586880 (= e!1019262 (< 0 (size!14030 lt!558835)))))

(assert (= (and d!472201 res!707797) b!1586880))

(declare-fun m!1876969 () Bool)

(assert (=> d!472201 m!1876969))

(assert (=> d!472201 m!1876969))

(declare-fun m!1876971 () Bool)

(assert (=> d!472201 m!1876971))

(declare-fun m!1876973 () Bool)

(assert (=> d!472201 m!1876973))

(assert (=> b!1586880 m!1876245))

(assert (=> b!1586594 d!472201))

(declare-fun d!472203 () Bool)

(declare-fun e!1019265 () Bool)

(assert (=> d!472203 e!1019265))

(declare-fun res!707800 () Bool)

(assert (=> d!472203 (=> (not res!707800) (not e!1019265))))

(declare-fun lt!559187 () BalanceConc!11532)

(assert (=> d!472203 (= res!707800 (= (list!6768 lt!559187) (Cons!17440 (apply!4266 lt!558835 0) Nil!17440)))))

(declare-fun singleton!589 (C!8976) BalanceConc!11532)

(assert (=> d!472203 (= lt!559187 (singleton!589 (apply!4266 lt!558835 0)))))

(assert (=> d!472203 (= (singletonSeq!1425 (apply!4266 lt!558835 0)) lt!559187)))

(declare-fun b!1586883 () Bool)

(declare-fun isBalanced!1709 (Conc!5794) Bool)

(assert (=> b!1586883 (= e!1019265 (isBalanced!1709 (c!257149 lt!559187)))))

(assert (= (and d!472203 res!707800) b!1586883))

(declare-fun m!1876975 () Bool)

(assert (=> d!472203 m!1876975))

(assert (=> d!472203 m!1876295))

(declare-fun m!1876977 () Bool)

(assert (=> d!472203 m!1876977))

(declare-fun m!1876979 () Bool)

(assert (=> b!1586883 m!1876979))

(assert (=> b!1586594 d!472203))

(declare-fun lt!559209 () Bool)

(declare-fun d!472205 () Bool)

(declare-fun prefixMatch!336 (Regex!4401 List!17510) Bool)

(assert (=> d!472205 (= lt!559209 (prefixMatch!336 lt!558814 (list!6768 (++!4549 lt!558825 (singletonSeq!1425 (apply!4266 lt!558835 0))))))))

(declare-datatypes ((List!17517 0))(
  ( (Nil!17447) (Cons!17447 (h!22848 Regex!4401) (t!144312 List!17517)) )
))
(declare-datatypes ((Context!1654 0))(
  ( (Context!1655 (exprs!1327 List!17517)) )
))
(declare-fun prefixMatchZipperSequence!423 ((InoxSet Context!1654) BalanceConc!11532 Int) Bool)

(declare-fun focus!133 (Regex!4401) (InoxSet Context!1654))

(assert (=> d!472205 (= lt!559209 (prefixMatchZipperSequence!423 (focus!133 lt!558814) (++!4549 lt!558825 (singletonSeq!1425 (apply!4266 lt!558835 0))) 0))))

(declare-fun lt!559210 () Unit!27373)

(declare-fun lt!559212 () Unit!27373)

(assert (=> d!472205 (= lt!559210 lt!559212)))

(declare-fun lt!559216 () List!17510)

(declare-fun lt!559211 () (InoxSet Context!1654))

(declare-fun prefixMatchZipper!112 ((InoxSet Context!1654) List!17510) Bool)

(assert (=> d!472205 (= (prefixMatch!336 lt!558814 lt!559216) (prefixMatchZipper!112 lt!559211 lt!559216))))

(declare-datatypes ((List!17518 0))(
  ( (Nil!17448) (Cons!17448 (h!22849 Context!1654) (t!144313 List!17518)) )
))
(declare-fun lt!559213 () List!17518)

(declare-fun prefixMatchZipperRegexEquiv!112 ((InoxSet Context!1654) List!17518 Regex!4401 List!17510) Unit!27373)

(assert (=> d!472205 (= lt!559212 (prefixMatchZipperRegexEquiv!112 lt!559211 lt!559213 lt!558814 lt!559216))))

(assert (=> d!472205 (= lt!559216 (list!6768 (++!4549 lt!558825 (singletonSeq!1425 (apply!4266 lt!558835 0)))))))

(declare-fun toList!873 ((InoxSet Context!1654)) List!17518)

(assert (=> d!472205 (= lt!559213 (toList!873 (focus!133 lt!558814)))))

(assert (=> d!472205 (= lt!559211 (focus!133 lt!558814))))

(declare-fun lt!559214 () Unit!27373)

(declare-fun lt!559217 () Unit!27373)

(assert (=> d!472205 (= lt!559214 lt!559217)))

(declare-fun lt!559208 () Int)

(declare-fun lt!559215 () (InoxSet Context!1654))

(declare-fun dropList!527 (BalanceConc!11532 Int) List!17510)

(assert (=> d!472205 (= (prefixMatchZipper!112 lt!559215 (dropList!527 (++!4549 lt!558825 (singletonSeq!1425 (apply!4266 lt!558835 0))) lt!559208)) (prefixMatchZipperSequence!423 lt!559215 (++!4549 lt!558825 (singletonSeq!1425 (apply!4266 lt!558835 0))) lt!559208))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!112 ((InoxSet Context!1654) BalanceConc!11532 Int) Unit!27373)

(assert (=> d!472205 (= lt!559217 (lemmaprefixMatchZipperSequenceEquivalent!112 lt!559215 (++!4549 lt!558825 (singletonSeq!1425 (apply!4266 lt!558835 0))) lt!559208))))

(assert (=> d!472205 (= lt!559208 0)))

(assert (=> d!472205 (= lt!559215 (focus!133 lt!558814))))

(declare-fun validRegex!1738 (Regex!4401) Bool)

(assert (=> d!472205 (validRegex!1738 lt!558814)))

(assert (=> d!472205 (= (prefixMatchZipperSequence!421 lt!558814 (++!4549 lt!558825 (singletonSeq!1425 (apply!4266 lt!558835 0)))) lt!559209)))

(declare-fun bs!391473 () Bool)

(assert (= bs!391473 d!472205))

(declare-fun m!1876981 () Bool)

(assert (=> bs!391473 m!1876981))

(declare-fun m!1876983 () Bool)

(assert (=> bs!391473 m!1876983))

(declare-fun m!1876985 () Bool)

(assert (=> bs!391473 m!1876985))

(assert (=> bs!391473 m!1876293))

(assert (=> bs!391473 m!1876983))

(assert (=> bs!391473 m!1876293))

(declare-fun m!1876987 () Bool)

(assert (=> bs!391473 m!1876987))

(declare-fun m!1876989 () Bool)

(assert (=> bs!391473 m!1876989))

(declare-fun m!1876991 () Bool)

(assert (=> bs!391473 m!1876991))

(assert (=> bs!391473 m!1876293))

(declare-fun m!1876993 () Bool)

(assert (=> bs!391473 m!1876993))

(assert (=> bs!391473 m!1876989))

(assert (=> bs!391473 m!1876293))

(declare-fun m!1876995 () Bool)

(assert (=> bs!391473 m!1876995))

(declare-fun m!1876997 () Bool)

(assert (=> bs!391473 m!1876997))

(declare-fun m!1876999 () Bool)

(assert (=> bs!391473 m!1876999))

(assert (=> bs!391473 m!1876989))

(declare-fun m!1877001 () Bool)

(assert (=> bs!391473 m!1877001))

(assert (=> bs!391473 m!1876293))

(declare-fun m!1877003 () Bool)

(assert (=> bs!391473 m!1877003))

(assert (=> bs!391473 m!1876987))

(declare-fun m!1877005 () Bool)

(assert (=> bs!391473 m!1877005))

(assert (=> b!1586594 d!472205))

(declare-fun b!1586894 () Bool)

(declare-fun res!707812 () Bool)

(declare-fun e!1019268 () Bool)

(assert (=> b!1586894 (=> (not res!707812) (not e!1019268))))

(declare-fun height!857 (Conc!5794) Int)

(declare-fun ++!4552 (Conc!5794 Conc!5794) Conc!5794)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1586894 (= res!707812 (>= (height!857 (++!4552 (c!257149 lt!558825) (c!257149 (singletonSeq!1425 (apply!4266 lt!558835 0))))) (max!0 (height!857 (c!257149 lt!558825)) (height!857 (c!257149 (singletonSeq!1425 (apply!4266 lt!558835 0)))))))))

(declare-fun b!1586893 () Bool)

(declare-fun res!707810 () Bool)

(assert (=> b!1586893 (=> (not res!707810) (not e!1019268))))

(assert (=> b!1586893 (= res!707810 (<= (height!857 (++!4552 (c!257149 lt!558825) (c!257149 (singletonSeq!1425 (apply!4266 lt!558835 0))))) (+ (max!0 (height!857 (c!257149 lt!558825)) (height!857 (c!257149 (singletonSeq!1425 (apply!4266 lt!558835 0))))) 1)))))

(declare-fun b!1586892 () Bool)

(declare-fun res!707811 () Bool)

(assert (=> b!1586892 (=> (not res!707811) (not e!1019268))))

(assert (=> b!1586892 (= res!707811 (isBalanced!1709 (++!4552 (c!257149 lt!558825) (c!257149 (singletonSeq!1425 (apply!4266 lt!558835 0))))))))

(declare-fun lt!559220 () BalanceConc!11532)

(declare-fun b!1586895 () Bool)

(assert (=> b!1586895 (= e!1019268 (= (list!6768 lt!559220) (++!4550 (list!6768 lt!558825) (list!6768 (singletonSeq!1425 (apply!4266 lt!558835 0))))))))

(declare-fun d!472207 () Bool)

(assert (=> d!472207 e!1019268))

(declare-fun res!707809 () Bool)

(assert (=> d!472207 (=> (not res!707809) (not e!1019268))))

(declare-fun appendAssocInst!391 (Conc!5794 Conc!5794) Bool)

(assert (=> d!472207 (= res!707809 (appendAssocInst!391 (c!257149 lt!558825) (c!257149 (singletonSeq!1425 (apply!4266 lt!558835 0)))))))

(assert (=> d!472207 (= lt!559220 (BalanceConc!11533 (++!4552 (c!257149 lt!558825) (c!257149 (singletonSeq!1425 (apply!4266 lt!558835 0))))))))

(assert (=> d!472207 (= (++!4549 lt!558825 (singletonSeq!1425 (apply!4266 lt!558835 0))) lt!559220)))

(assert (= (and d!472207 res!707809) b!1586892))

(assert (= (and b!1586892 res!707811) b!1586893))

(assert (= (and b!1586893 res!707810) b!1586894))

(assert (= (and b!1586894 res!707812) b!1586895))

(declare-fun m!1877007 () Bool)

(assert (=> d!472207 m!1877007))

(declare-fun m!1877009 () Bool)

(assert (=> d!472207 m!1877009))

(declare-fun m!1877011 () Bool)

(assert (=> b!1586895 m!1877011))

(assert (=> b!1586895 m!1876261))

(assert (=> b!1586895 m!1876291))

(declare-fun m!1877013 () Bool)

(assert (=> b!1586895 m!1877013))

(assert (=> b!1586895 m!1876261))

(assert (=> b!1586895 m!1877013))

(declare-fun m!1877015 () Bool)

(assert (=> b!1586895 m!1877015))

(assert (=> b!1586892 m!1877009))

(assert (=> b!1586892 m!1877009))

(declare-fun m!1877017 () Bool)

(assert (=> b!1586892 m!1877017))

(assert (=> b!1586894 m!1877009))

(declare-fun m!1877019 () Bool)

(assert (=> b!1586894 m!1877019))

(assert (=> b!1586894 m!1877009))

(declare-fun m!1877021 () Bool)

(assert (=> b!1586894 m!1877021))

(assert (=> b!1586894 m!1877021))

(declare-fun m!1877023 () Bool)

(assert (=> b!1586894 m!1877023))

(declare-fun m!1877025 () Bool)

(assert (=> b!1586894 m!1877025))

(assert (=> b!1586894 m!1877023))

(assert (=> b!1586893 m!1877009))

(assert (=> b!1586893 m!1877019))

(assert (=> b!1586893 m!1877009))

(assert (=> b!1586893 m!1877021))

(assert (=> b!1586893 m!1877021))

(assert (=> b!1586893 m!1877023))

(assert (=> b!1586893 m!1877025))

(assert (=> b!1586893 m!1877023))

(assert (=> b!1586594 d!472207))

(declare-fun d!472209 () Bool)

(declare-fun lt!559223 () Unit!27373)

(declare-fun lemma!199 (List!17512 LexerInterface!2702 List!17512) Unit!27373)

(assert (=> d!472209 (= lt!559223 (lemma!199 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!66604 () Int)

(declare-fun generalisedUnion!207 (List!17517) Regex!4401)

(declare-fun map!3615 (List!17512 Int) List!17517)

(assert (=> d!472209 (= (rulesRegex!463 thiss!17113 rules!1846) (generalisedUnion!207 (map!3615 rules!1846 lambda!66604)))))

(declare-fun bs!391474 () Bool)

(assert (= bs!391474 d!472209))

(declare-fun m!1877027 () Bool)

(assert (=> bs!391474 m!1877027))

(declare-fun m!1877029 () Bool)

(assert (=> bs!391474 m!1877029))

(assert (=> bs!391474 m!1877029))

(declare-fun m!1877031 () Bool)

(assert (=> bs!391474 m!1877031))

(assert (=> b!1586594 d!472209))

(declare-fun d!472211 () Bool)

(declare-fun lt!559224 () BalanceConc!11532)

(assert (=> d!472211 (= (list!6768 lt!559224) (originalCharacters!3887 (h!22842 (t!144264 tokens!457))))))

(assert (=> d!472211 (= lt!559224 (dynLambda!7748 (toChars!4343 (transformation!3073 (rule!4877 (h!22842 (t!144264 tokens!457))))) (value!97253 (h!22842 (t!144264 tokens!457)))))))

(assert (=> d!472211 (= (charsOf!1722 (h!22842 (t!144264 tokens!457))) lt!559224)))

(declare-fun b_lambda!49931 () Bool)

(assert (=> (not b_lambda!49931) (not d!472211)))

(declare-fun tb!89315 () Bool)

(declare-fun t!144287 () Bool)

(assert (=> (and b!1586586 (= (toChars!4343 (transformation!3073 (h!22843 rules!1846))) (toChars!4343 (transformation!3073 (rule!4877 (h!22842 (t!144264 tokens!457)))))) t!144287) tb!89315))

(declare-fun b!1586896 () Bool)

(declare-fun e!1019269 () Bool)

(declare-fun tp!466456 () Bool)

(assert (=> b!1586896 (= e!1019269 (and (inv!22860 (c!257149 (dynLambda!7748 (toChars!4343 (transformation!3073 (rule!4877 (h!22842 (t!144264 tokens!457))))) (value!97253 (h!22842 (t!144264 tokens!457)))))) tp!466456))))

(declare-fun result!108106 () Bool)

(assert (=> tb!89315 (= result!108106 (and (inv!22861 (dynLambda!7748 (toChars!4343 (transformation!3073 (rule!4877 (h!22842 (t!144264 tokens!457))))) (value!97253 (h!22842 (t!144264 tokens!457))))) e!1019269))))

(assert (= tb!89315 b!1586896))

(declare-fun m!1877033 () Bool)

(assert (=> b!1586896 m!1877033))

(declare-fun m!1877035 () Bool)

(assert (=> tb!89315 m!1877035))

(assert (=> d!472211 t!144287))

(declare-fun b_and!111273 () Bool)

(assert (= b_and!111269 (and (=> t!144287 result!108106) b_and!111273)))

(declare-fun t!144289 () Bool)

(declare-fun tb!89317 () Bool)

(assert (=> (and b!1586591 (= (toChars!4343 (transformation!3073 (rule!4877 (h!22842 tokens!457)))) (toChars!4343 (transformation!3073 (rule!4877 (h!22842 (t!144264 tokens!457)))))) t!144289) tb!89317))

(declare-fun result!108108 () Bool)

(assert (= result!108108 result!108106))

(assert (=> d!472211 t!144289))

(declare-fun b_and!111275 () Bool)

(assert (= b_and!111271 (and (=> t!144289 result!108108) b_and!111275)))

(declare-fun m!1877037 () Bool)

(assert (=> d!472211 m!1877037))

(declare-fun m!1877039 () Bool)

(assert (=> d!472211 m!1877039))

(assert (=> b!1586594 d!472211))

(declare-fun d!472213 () Bool)

(assert (=> d!472213 (= (inv!22853 (tag!3343 (rule!4877 (h!22842 tokens!457)))) (= (mod (str.len (value!97252 (tag!3343 (rule!4877 (h!22842 tokens!457))))) 2) 0))))

(assert (=> b!1586584 d!472213))

(declare-fun d!472215 () Bool)

(declare-fun res!707813 () Bool)

(declare-fun e!1019270 () Bool)

(assert (=> d!472215 (=> (not res!707813) (not e!1019270))))

(assert (=> d!472215 (= res!707813 (semiInverseModEq!1160 (toChars!4343 (transformation!3073 (rule!4877 (h!22842 tokens!457)))) (toValue!4484 (transformation!3073 (rule!4877 (h!22842 tokens!457))))))))

(assert (=> d!472215 (= (inv!22857 (transformation!3073 (rule!4877 (h!22842 tokens!457)))) e!1019270)))

(declare-fun b!1586897 () Bool)

(assert (=> b!1586897 (= e!1019270 (equivClasses!1101 (toChars!4343 (transformation!3073 (rule!4877 (h!22842 tokens!457)))) (toValue!4484 (transformation!3073 (rule!4877 (h!22842 tokens!457))))))))

(assert (= (and d!472215 res!707813) b!1586897))

(declare-fun m!1877041 () Bool)

(assert (=> d!472215 m!1877041))

(declare-fun m!1877043 () Bool)

(assert (=> b!1586897 m!1877043))

(assert (=> b!1586584 d!472215))

(declare-fun d!472217 () Bool)

(assert (=> d!472217 (= (isEmpty!10460 rules!1846) ((_ is Nil!17442) rules!1846))))

(assert (=> b!1586587 d!472217))

(declare-fun b!1586908 () Bool)

(declare-fun res!707816 () Bool)

(declare-fun e!1019279 () Bool)

(assert (=> b!1586908 (=> res!707816 e!1019279)))

(assert (=> b!1586908 (= res!707816 (not ((_ is IntegerValue!9491) (value!97253 (h!22842 tokens!457)))))))

(declare-fun e!1019278 () Bool)

(assert (=> b!1586908 (= e!1019278 e!1019279)))

(declare-fun d!472219 () Bool)

(declare-fun c!257201 () Bool)

(assert (=> d!472219 (= c!257201 ((_ is IntegerValue!9489) (value!97253 (h!22842 tokens!457))))))

(declare-fun e!1019277 () Bool)

(assert (=> d!472219 (= (inv!21 (value!97253 (h!22842 tokens!457))) e!1019277)))

(declare-fun b!1586909 () Bool)

(assert (=> b!1586909 (= e!1019277 e!1019278)))

(declare-fun c!257202 () Bool)

(assert (=> b!1586909 (= c!257202 ((_ is IntegerValue!9490) (value!97253 (h!22842 tokens!457))))))

(declare-fun b!1586910 () Bool)

(declare-fun inv!15 (TokenValue!3163) Bool)

(assert (=> b!1586910 (= e!1019279 (inv!15 (value!97253 (h!22842 tokens!457))))))

(declare-fun b!1586911 () Bool)

(declare-fun inv!17 (TokenValue!3163) Bool)

(assert (=> b!1586911 (= e!1019278 (inv!17 (value!97253 (h!22842 tokens!457))))))

(declare-fun b!1586912 () Bool)

(declare-fun inv!16 (TokenValue!3163) Bool)

(assert (=> b!1586912 (= e!1019277 (inv!16 (value!97253 (h!22842 tokens!457))))))

(assert (= (and d!472219 c!257201) b!1586912))

(assert (= (and d!472219 (not c!257201)) b!1586909))

(assert (= (and b!1586909 c!257202) b!1586911))

(assert (= (and b!1586909 (not c!257202)) b!1586908))

(assert (= (and b!1586908 (not res!707816)) b!1586910))

(declare-fun m!1877045 () Bool)

(assert (=> b!1586910 m!1877045))

(declare-fun m!1877047 () Bool)

(assert (=> b!1586911 m!1877047))

(declare-fun m!1877049 () Bool)

(assert (=> b!1586912 m!1877049))

(assert (=> b!1586577 d!472219))

(declare-fun d!472221 () Bool)

(declare-fun lt!559240 () BalanceConc!11532)

(declare-fun printListTailRec!315 (LexerInterface!2702 List!17511 List!17510) List!17510)

(declare-fun dropList!528 (BalanceConc!11534 Int) List!17511)

(assert (=> d!472221 (= (list!6768 lt!559240) (printListTailRec!315 thiss!17113 (dropList!528 lt!558815 0) (list!6768 (BalanceConc!11533 Empty!5794))))))

(declare-fun e!1019285 () BalanceConc!11532)

(assert (=> d!472221 (= lt!559240 e!1019285)))

(declare-fun c!257205 () Bool)

(assert (=> d!472221 (= c!257205 (>= 0 (size!14035 lt!558815)))))

(declare-fun e!1019284 () Bool)

(assert (=> d!472221 e!1019284))

(declare-fun res!707819 () Bool)

(assert (=> d!472221 (=> (not res!707819) (not e!1019284))))

(assert (=> d!472221 (= res!707819 (>= 0 0))))

(assert (=> d!472221 (= (printTailRec!755 thiss!17113 lt!558815 0 (BalanceConc!11533 Empty!5794)) lt!559240)))

(declare-fun b!1586919 () Bool)

(assert (=> b!1586919 (= e!1019284 (<= 0 (size!14035 lt!558815)))))

(declare-fun b!1586920 () Bool)

(assert (=> b!1586920 (= e!1019285 (BalanceConc!11533 Empty!5794))))

(declare-fun b!1586921 () Bool)

(declare-fun apply!4274 (BalanceConc!11534 Int) Token!5712)

(assert (=> b!1586921 (= e!1019285 (printTailRec!755 thiss!17113 lt!558815 (+ 0 1) (++!4549 (BalanceConc!11533 Empty!5794) (charsOf!1722 (apply!4274 lt!558815 0)))))))

(declare-fun lt!559239 () List!17511)

(assert (=> b!1586921 (= lt!559239 (list!6767 lt!558815))))

(declare-fun lt!559242 () Unit!27373)

(declare-fun lemmaDropApply!522 (List!17511 Int) Unit!27373)

(assert (=> b!1586921 (= lt!559242 (lemmaDropApply!522 lt!559239 0))))

(declare-fun drop!824 (List!17511 Int) List!17511)

(declare-fun apply!4275 (List!17511 Int) Token!5712)

(assert (=> b!1586921 (= (head!3225 (drop!824 lt!559239 0)) (apply!4275 lt!559239 0))))

(declare-fun lt!559245 () Unit!27373)

(assert (=> b!1586921 (= lt!559245 lt!559242)))

(declare-fun lt!559244 () List!17511)

(assert (=> b!1586921 (= lt!559244 (list!6767 lt!558815))))

(declare-fun lt!559241 () Unit!27373)

(declare-fun lemmaDropTail!502 (List!17511 Int) Unit!27373)

(assert (=> b!1586921 (= lt!559241 (lemmaDropTail!502 lt!559244 0))))

(declare-fun tail!2276 (List!17511) List!17511)

(assert (=> b!1586921 (= (tail!2276 (drop!824 lt!559244 0)) (drop!824 lt!559244 (+ 0 1)))))

(declare-fun lt!559243 () Unit!27373)

(assert (=> b!1586921 (= lt!559243 lt!559241)))

(assert (= (and d!472221 res!707819) b!1586919))

(assert (= (and d!472221 c!257205) b!1586920))

(assert (= (and d!472221 (not c!257205)) b!1586921))

(declare-fun m!1877051 () Bool)

(assert (=> d!472221 m!1877051))

(declare-fun m!1877053 () Bool)

(assert (=> d!472221 m!1877053))

(assert (=> d!472221 m!1877051))

(assert (=> d!472221 m!1877053))

(declare-fun m!1877055 () Bool)

(assert (=> d!472221 m!1877055))

(declare-fun m!1877057 () Bool)

(assert (=> d!472221 m!1877057))

(declare-fun m!1877059 () Bool)

(assert (=> d!472221 m!1877059))

(assert (=> b!1586919 m!1877057))

(declare-fun m!1877061 () Bool)

(assert (=> b!1586921 m!1877061))

(declare-fun m!1877063 () Bool)

(assert (=> b!1586921 m!1877063))

(declare-fun m!1877065 () Bool)

(assert (=> b!1586921 m!1877065))

(declare-fun m!1877067 () Bool)

(assert (=> b!1586921 m!1877067))

(declare-fun m!1877069 () Bool)

(assert (=> b!1586921 m!1877069))

(assert (=> b!1586921 m!1877063))

(assert (=> b!1586921 m!1877069))

(declare-fun m!1877071 () Bool)

(assert (=> b!1586921 m!1877071))

(assert (=> b!1586921 m!1877065))

(declare-fun m!1877073 () Bool)

(assert (=> b!1586921 m!1877073))

(declare-fun m!1877075 () Bool)

(assert (=> b!1586921 m!1877075))

(assert (=> b!1586921 m!1877075))

(declare-fun m!1877077 () Bool)

(assert (=> b!1586921 m!1877077))

(declare-fun m!1877079 () Bool)

(assert (=> b!1586921 m!1877079))

(assert (=> b!1586921 m!1877071))

(declare-fun m!1877081 () Bool)

(assert (=> b!1586921 m!1877081))

(declare-fun m!1877083 () Bool)

(assert (=> b!1586921 m!1877083))

(declare-fun m!1877085 () Bool)

(assert (=> b!1586921 m!1877085))

(assert (=> b!1586588 d!472221))

(declare-fun d!472223 () Bool)

(declare-fun lt!559246 () BalanceConc!11532)

(assert (=> d!472223 (= (list!6768 lt!559246) (printList!817 thiss!17113 (list!6767 lt!558815)))))

(assert (=> d!472223 (= lt!559246 (printTailRec!755 thiss!17113 lt!558815 0 (BalanceConc!11533 Empty!5794)))))

(assert (=> d!472223 (= (print!1233 thiss!17113 lt!558815) lt!559246)))

(declare-fun bs!391475 () Bool)

(assert (= bs!391475 d!472223))

(declare-fun m!1877087 () Bool)

(assert (=> bs!391475 m!1877087))

(assert (=> bs!391475 m!1877061))

(assert (=> bs!391475 m!1877061))

(declare-fun m!1877089 () Bool)

(assert (=> bs!391475 m!1877089))

(assert (=> bs!391475 m!1876275))

(assert (=> b!1586588 d!472223))

(declare-fun d!472225 () Bool)

(assert (=> d!472225 (= (list!6768 lt!558834) (list!6772 (c!257149 lt!558834)))))

(declare-fun bs!391476 () Bool)

(assert (= bs!391476 d!472225))

(declare-fun m!1877091 () Bool)

(assert (=> bs!391476 m!1877091))

(assert (=> b!1586588 d!472225))

(declare-fun b!1586940 () Bool)

(declare-fun e!1019293 () Bool)

(declare-fun lt!559261 () Option!3140)

(declare-fun contains!3046 (List!17512 Rule!5946) Bool)

(assert (=> b!1586940 (= e!1019293 (contains!3046 rules!1846 (rule!4877 (_1!9865 (get!4988 lt!559261)))))))

(declare-fun b!1586941 () Bool)

(declare-fun e!1019292 () Bool)

(assert (=> b!1586941 (= e!1019292 e!1019293)))

(declare-fun res!707840 () Bool)

(assert (=> b!1586941 (=> (not res!707840) (not e!1019293))))

(assert (=> b!1586941 (= res!707840 (isDefined!2515 lt!559261))))

(declare-fun b!1586942 () Bool)

(declare-fun res!707834 () Bool)

(assert (=> b!1586942 (=> (not res!707834) (not e!1019293))))

(assert (=> b!1586942 (= res!707834 (= (++!4550 (list!6768 (charsOf!1722 (_1!9865 (get!4988 lt!559261)))) (_2!9865 (get!4988 lt!559261))) lt!558832))))

(declare-fun b!1586943 () Bool)

(declare-fun res!707839 () Bool)

(assert (=> b!1586943 (=> (not res!707839) (not e!1019293))))

(declare-fun apply!4276 (TokenValueInjection!5986 BalanceConc!11532) TokenValue!3163)

(assert (=> b!1586943 (= res!707839 (= (value!97253 (_1!9865 (get!4988 lt!559261))) (apply!4276 (transformation!3073 (rule!4877 (_1!9865 (get!4988 lt!559261)))) (seqFromList!1896 (originalCharacters!3887 (_1!9865 (get!4988 lt!559261)))))))))

(declare-fun b!1586944 () Bool)

(declare-fun res!707835 () Bool)

(assert (=> b!1586944 (=> (not res!707835) (not e!1019293))))

(assert (=> b!1586944 (= res!707835 (matchR!1920 (regex!3073 (rule!4877 (_1!9865 (get!4988 lt!559261)))) (list!6768 (charsOf!1722 (_1!9865 (get!4988 lt!559261))))))))

(declare-fun d!472227 () Bool)

(assert (=> d!472227 e!1019292))

(declare-fun res!707838 () Bool)

(assert (=> d!472227 (=> res!707838 e!1019292)))

(assert (=> d!472227 (= res!707838 (isEmpty!10471 lt!559261))))

(declare-fun e!1019294 () Option!3140)

(assert (=> d!472227 (= lt!559261 e!1019294)))

(declare-fun c!257208 () Bool)

(assert (=> d!472227 (= c!257208 (and ((_ is Cons!17442) rules!1846) ((_ is Nil!17442) (t!144265 rules!1846))))))

(declare-fun lt!559259 () Unit!27373)

(declare-fun lt!559258 () Unit!27373)

(assert (=> d!472227 (= lt!559259 lt!559258)))

(assert (=> d!472227 (isPrefix!1333 lt!558832 lt!558832)))

(declare-fun lemmaIsPrefixRefl!920 (List!17510 List!17510) Unit!27373)

(assert (=> d!472227 (= lt!559258 (lemmaIsPrefixRefl!920 lt!558832 lt!558832))))

(declare-fun rulesValidInductive!922 (LexerInterface!2702 List!17512) Bool)

(assert (=> d!472227 (rulesValidInductive!922 thiss!17113 rules!1846)))

(assert (=> d!472227 (= (maxPrefix!1266 thiss!17113 rules!1846 lt!558832) lt!559261)))

(declare-fun b!1586945 () Bool)

(declare-fun res!707836 () Bool)

(assert (=> b!1586945 (=> (not res!707836) (not e!1019293))))

(assert (=> b!1586945 (= res!707836 (= (list!6768 (charsOf!1722 (_1!9865 (get!4988 lt!559261)))) (originalCharacters!3887 (_1!9865 (get!4988 lt!559261)))))))

(declare-fun b!1586946 () Bool)

(declare-fun call!102922 () Option!3140)

(assert (=> b!1586946 (= e!1019294 call!102922)))

(declare-fun bm!102917 () Bool)

(assert (=> bm!102917 (= call!102922 (maxPrefixOneRule!735 thiss!17113 (h!22843 rules!1846) lt!558832))))

(declare-fun b!1586947 () Bool)

(declare-fun lt!559257 () Option!3140)

(declare-fun lt!559260 () Option!3140)

(assert (=> b!1586947 (= e!1019294 (ite (and ((_ is None!3139) lt!559257) ((_ is None!3139) lt!559260)) None!3139 (ite ((_ is None!3139) lt!559260) lt!559257 (ite ((_ is None!3139) lt!559257) lt!559260 (ite (>= (size!14029 (_1!9865 (v!24014 lt!559257))) (size!14029 (_1!9865 (v!24014 lt!559260)))) lt!559257 lt!559260)))))))

(assert (=> b!1586947 (= lt!559257 call!102922)))

(assert (=> b!1586947 (= lt!559260 (maxPrefix!1266 thiss!17113 (t!144265 rules!1846) lt!558832))))

(declare-fun b!1586948 () Bool)

(declare-fun res!707837 () Bool)

(assert (=> b!1586948 (=> (not res!707837) (not e!1019293))))

(assert (=> b!1586948 (= res!707837 (< (size!14034 (_2!9865 (get!4988 lt!559261))) (size!14034 lt!558832)))))

(assert (= (and d!472227 c!257208) b!1586946))

(assert (= (and d!472227 (not c!257208)) b!1586947))

(assert (= (or b!1586946 b!1586947) bm!102917))

(assert (= (and d!472227 (not res!707838)) b!1586941))

(assert (= (and b!1586941 res!707840) b!1586945))

(assert (= (and b!1586945 res!707836) b!1586948))

(assert (= (and b!1586948 res!707837) b!1586942))

(assert (= (and b!1586942 res!707834) b!1586943))

(assert (= (and b!1586943 res!707839) b!1586944))

(assert (= (and b!1586944 res!707835) b!1586940))

(declare-fun m!1877093 () Bool)

(assert (=> b!1586947 m!1877093))

(declare-fun m!1877095 () Bool)

(assert (=> b!1586942 m!1877095))

(declare-fun m!1877097 () Bool)

(assert (=> b!1586942 m!1877097))

(assert (=> b!1586942 m!1877097))

(declare-fun m!1877099 () Bool)

(assert (=> b!1586942 m!1877099))

(assert (=> b!1586942 m!1877099))

(declare-fun m!1877101 () Bool)

(assert (=> b!1586942 m!1877101))

(declare-fun m!1877103 () Bool)

(assert (=> bm!102917 m!1877103))

(assert (=> b!1586945 m!1877095))

(assert (=> b!1586945 m!1877097))

(assert (=> b!1586945 m!1877097))

(assert (=> b!1586945 m!1877099))

(assert (=> b!1586948 m!1877095))

(declare-fun m!1877105 () Bool)

(assert (=> b!1586948 m!1877105))

(declare-fun m!1877107 () Bool)

(assert (=> b!1586948 m!1877107))

(assert (=> b!1586943 m!1877095))

(declare-fun m!1877109 () Bool)

(assert (=> b!1586943 m!1877109))

(assert (=> b!1586943 m!1877109))

(declare-fun m!1877111 () Bool)

(assert (=> b!1586943 m!1877111))

(declare-fun m!1877113 () Bool)

(assert (=> d!472227 m!1877113))

(declare-fun m!1877115 () Bool)

(assert (=> d!472227 m!1877115))

(declare-fun m!1877117 () Bool)

(assert (=> d!472227 m!1877117))

(declare-fun m!1877119 () Bool)

(assert (=> d!472227 m!1877119))

(assert (=> b!1586940 m!1877095))

(declare-fun m!1877121 () Bool)

(assert (=> b!1586940 m!1877121))

(assert (=> b!1586944 m!1877095))

(assert (=> b!1586944 m!1877097))

(assert (=> b!1586944 m!1877097))

(assert (=> b!1586944 m!1877099))

(assert (=> b!1586944 m!1877099))

(declare-fun m!1877123 () Bool)

(assert (=> b!1586944 m!1877123))

(declare-fun m!1877125 () Bool)

(assert (=> b!1586941 m!1877125))

(assert (=> b!1586588 d!472227))

(declare-fun d!472229 () Bool)

(declare-fun c!257211 () Bool)

(assert (=> d!472229 (= c!257211 ((_ is Cons!17441) (Cons!17441 (h!22842 tokens!457) Nil!17441)))))

(declare-fun e!1019297 () List!17510)

(assert (=> d!472229 (= (printList!817 thiss!17113 (Cons!17441 (h!22842 tokens!457) Nil!17441)) e!1019297)))

(declare-fun b!1586953 () Bool)

(assert (=> b!1586953 (= e!1019297 (++!4550 (list!6768 (charsOf!1722 (h!22842 (Cons!17441 (h!22842 tokens!457) Nil!17441)))) (printList!817 thiss!17113 (t!144264 (Cons!17441 (h!22842 tokens!457) Nil!17441)))))))

(declare-fun b!1586954 () Bool)

(assert (=> b!1586954 (= e!1019297 Nil!17440)))

(assert (= (and d!472229 c!257211) b!1586953))

(assert (= (and d!472229 (not c!257211)) b!1586954))

(declare-fun m!1877127 () Bool)

(assert (=> b!1586953 m!1877127))

(assert (=> b!1586953 m!1877127))

(declare-fun m!1877129 () Bool)

(assert (=> b!1586953 m!1877129))

(declare-fun m!1877131 () Bool)

(assert (=> b!1586953 m!1877131))

(assert (=> b!1586953 m!1877129))

(assert (=> b!1586953 m!1877131))

(declare-fun m!1877133 () Bool)

(assert (=> b!1586953 m!1877133))

(assert (=> b!1586588 d!472229))

(declare-fun d!472231 () Bool)

(declare-fun e!1019300 () Bool)

(assert (=> d!472231 e!1019300))

(declare-fun res!707843 () Bool)

(assert (=> d!472231 (=> (not res!707843) (not e!1019300))))

(declare-fun lt!559264 () BalanceConc!11534)

(assert (=> d!472231 (= res!707843 (= (list!6767 lt!559264) (Cons!17441 (h!22842 tokens!457) Nil!17441)))))

(declare-fun singleton!590 (Token!5712) BalanceConc!11534)

(assert (=> d!472231 (= lt!559264 (singleton!590 (h!22842 tokens!457)))))

(assert (=> d!472231 (= (singletonSeq!1424 (h!22842 tokens!457)) lt!559264)))

(declare-fun b!1586957 () Bool)

(declare-fun isBalanced!1710 (Conc!5795) Bool)

(assert (=> b!1586957 (= e!1019300 (isBalanced!1710 (c!257151 lt!559264)))))

(assert (= (and d!472231 res!707843) b!1586957))

(declare-fun m!1877135 () Bool)

(assert (=> d!472231 m!1877135))

(declare-fun m!1877137 () Bool)

(assert (=> d!472231 m!1877137))

(declare-fun m!1877139 () Bool)

(assert (=> b!1586957 m!1877139))

(assert (=> b!1586588 d!472231))

(declare-fun d!472233 () Bool)

(declare-fun e!1019303 () Bool)

(assert (=> d!472233 e!1019303))

(declare-fun res!707846 () Bool)

(assert (=> d!472233 (=> (not res!707846) (not e!1019303))))

(declare-fun prepend!561 (Conc!5795 Token!5712) Conc!5795)

(assert (=> d!472233 (= res!707846 (isBalanced!1710 (prepend!561 (c!257151 (seqFromList!1895 (t!144264 (t!144264 tokens!457)))) (h!22842 (t!144264 tokens!457)))))))

(declare-fun lt!559267 () BalanceConc!11534)

(assert (=> d!472233 (= lt!559267 (BalanceConc!11535 (prepend!561 (c!257151 (seqFromList!1895 (t!144264 (t!144264 tokens!457)))) (h!22842 (t!144264 tokens!457)))))))

(assert (=> d!472233 (= (prepend!559 (seqFromList!1895 (t!144264 (t!144264 tokens!457))) (h!22842 (t!144264 tokens!457))) lt!559267)))

(declare-fun b!1586960 () Bool)

(assert (=> b!1586960 (= e!1019303 (= (list!6767 lt!559267) (Cons!17441 (h!22842 (t!144264 tokens!457)) (list!6767 (seqFromList!1895 (t!144264 (t!144264 tokens!457)))))))))

(assert (= (and d!472233 res!707846) b!1586960))

(declare-fun m!1877141 () Bool)

(assert (=> d!472233 m!1877141))

(assert (=> d!472233 m!1877141))

(declare-fun m!1877143 () Bool)

(assert (=> d!472233 m!1877143))

(declare-fun m!1877145 () Bool)

(assert (=> b!1586960 m!1877145))

(assert (=> b!1586960 m!1876313))

(declare-fun m!1877147 () Bool)

(assert (=> b!1586960 m!1877147))

(assert (=> b!1586579 d!472233))

(declare-fun d!472235 () Bool)

(assert (=> d!472235 (= (list!6767 (_1!9864 lt!558819)) (list!6767 (prepend!559 (seqFromList!1895 (t!144264 (t!144264 tokens!457))) (h!22842 (t!144264 tokens!457)))))))

(declare-fun lt!559270 () Unit!27373)

(declare-fun choose!9504 (Token!5712 List!17511 BalanceConc!11534) Unit!27373)

(assert (=> d!472235 (= lt!559270 (choose!9504 (h!22842 (t!144264 tokens!457)) (t!144264 (t!144264 tokens!457)) (_1!9864 lt!558819)))))

(declare-fun $colon$colon!281 (List!17511 Token!5712) List!17511)

(assert (=> d!472235 (= (list!6767 (_1!9864 lt!558819)) (list!6767 (seqFromList!1895 ($colon$colon!281 (t!144264 (t!144264 tokens!457)) (h!22842 (t!144264 tokens!457))))))))

(assert (=> d!472235 (= (seqFromListBHdTlConstructive!150 (h!22842 (t!144264 tokens!457)) (t!144264 (t!144264 tokens!457)) (_1!9864 lt!558819)) lt!559270)))

(declare-fun bs!391477 () Bool)

(assert (= bs!391477 d!472235))

(assert (=> bs!391477 m!1876313))

(assert (=> bs!391477 m!1876313))

(assert (=> bs!391477 m!1876315))

(assert (=> bs!391477 m!1876315))

(assert (=> bs!391477 m!1876317))

(assert (=> bs!391477 m!1876235))

(declare-fun m!1877149 () Bool)

(assert (=> bs!391477 m!1877149))

(declare-fun m!1877151 () Bool)

(assert (=> bs!391477 m!1877151))

(declare-fun m!1877153 () Bool)

(assert (=> bs!391477 m!1877153))

(assert (=> bs!391477 m!1877149))

(assert (=> bs!391477 m!1877151))

(declare-fun m!1877155 () Bool)

(assert (=> bs!391477 m!1877155))

(assert (=> b!1586579 d!472235))

(declare-fun d!472237 () Bool)

(assert (=> d!472237 (= (list!6767 (prepend!559 (seqFromList!1895 (t!144264 (t!144264 tokens!457))) (h!22842 (t!144264 tokens!457)))) (list!6771 (c!257151 (prepend!559 (seqFromList!1895 (t!144264 (t!144264 tokens!457))) (h!22842 (t!144264 tokens!457))))))))

(declare-fun bs!391478 () Bool)

(assert (= bs!391478 d!472237))

(declare-fun m!1877157 () Bool)

(assert (=> bs!391478 m!1877157))

(assert (=> b!1586579 d!472237))

(declare-fun d!472239 () Bool)

(assert (=> d!472239 (= (seqFromList!1895 (t!144264 (t!144264 tokens!457))) (fromListB!815 (t!144264 (t!144264 tokens!457))))))

(declare-fun bs!391479 () Bool)

(assert (= bs!391479 d!472239))

(declare-fun m!1877159 () Bool)

(assert (=> bs!391479 m!1877159))

(assert (=> b!1586579 d!472239))

(declare-fun d!472241 () Bool)

(assert (=> d!472241 (= (list!6767 lt!558826) (list!6771 (c!257151 lt!558826)))))

(declare-fun bs!391480 () Bool)

(assert (= bs!391480 d!472241))

(declare-fun m!1877161 () Bool)

(assert (=> bs!391480 m!1877161))

(assert (=> b!1586579 d!472241))

(declare-fun d!472243 () Bool)

(declare-fun res!707867 () Bool)

(declare-fun e!1019361 () Bool)

(assert (=> d!472243 (=> res!707867 e!1019361)))

(assert (=> d!472243 (= res!707867 (or (not ((_ is Cons!17441) tokens!457)) (not ((_ is Cons!17441) (t!144264 tokens!457)))))))

(assert (=> d!472243 (= (tokensListTwoByTwoPredicateSeparableList!395 thiss!17113 tokens!457 rules!1846) e!1019361)))

(declare-fun b!1587034 () Bool)

(declare-fun e!1019360 () Bool)

(assert (=> b!1587034 (= e!1019361 e!1019360)))

(declare-fun res!707866 () Bool)

(assert (=> b!1587034 (=> (not res!707866) (not e!1019360))))

(assert (=> b!1587034 (= res!707866 (separableTokensPredicate!644 thiss!17113 (h!22842 tokens!457) (h!22842 (t!144264 tokens!457)) rules!1846))))

(declare-fun lt!559372 () Unit!27373)

(declare-fun Unit!27410 () Unit!27373)

(assert (=> b!1587034 (= lt!559372 Unit!27410)))

(assert (=> b!1587034 (> (size!14030 (charsOf!1722 (h!22842 (t!144264 tokens!457)))) 0)))

(declare-fun lt!559371 () Unit!27373)

(declare-fun Unit!27411 () Unit!27373)

(assert (=> b!1587034 (= lt!559371 Unit!27411)))

(assert (=> b!1587034 (rulesProduceIndividualToken!1354 thiss!17113 rules!1846 (h!22842 (t!144264 tokens!457)))))

(declare-fun lt!559373 () Unit!27373)

(declare-fun Unit!27412 () Unit!27373)

(assert (=> b!1587034 (= lt!559373 Unit!27412)))

(assert (=> b!1587034 (rulesProduceIndividualToken!1354 thiss!17113 rules!1846 (h!22842 tokens!457))))

(declare-fun lt!559370 () Unit!27373)

(declare-fun lt!559374 () Unit!27373)

(assert (=> b!1587034 (= lt!559370 lt!559374)))

(assert (=> b!1587034 (rulesProduceIndividualToken!1354 thiss!17113 rules!1846 (h!22842 (t!144264 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!525 (LexerInterface!2702 List!17512 List!17511 Token!5712) Unit!27373)

(assert (=> b!1587034 (= lt!559374 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!525 thiss!17113 rules!1846 tokens!457 (h!22842 (t!144264 tokens!457))))))

(declare-fun lt!559369 () Unit!27373)

(declare-fun lt!559375 () Unit!27373)

(assert (=> b!1587034 (= lt!559369 lt!559375)))

(assert (=> b!1587034 (rulesProduceIndividualToken!1354 thiss!17113 rules!1846 (h!22842 tokens!457))))

(assert (=> b!1587034 (= lt!559375 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!525 thiss!17113 rules!1846 tokens!457 (h!22842 tokens!457)))))

(declare-fun b!1587035 () Bool)

(assert (=> b!1587035 (= e!1019360 (tokensListTwoByTwoPredicateSeparableList!395 thiss!17113 (Cons!17441 (h!22842 (t!144264 tokens!457)) (t!144264 (t!144264 tokens!457))) rules!1846))))

(assert (= (and d!472243 (not res!707867)) b!1587034))

(assert (= (and b!1587034 res!707866) b!1587035))

(declare-fun m!1877267 () Bool)

(assert (=> b!1587034 m!1877267))

(assert (=> b!1587034 m!1876305))

(declare-fun m!1877269 () Bool)

(assert (=> b!1587034 m!1877269))

(assert (=> b!1587034 m!1876289))

(assert (=> b!1587034 m!1876289))

(declare-fun m!1877271 () Bool)

(assert (=> b!1587034 m!1877271))

(declare-fun m!1877273 () Bool)

(assert (=> b!1587034 m!1877273))

(assert (=> b!1587034 m!1876307))

(declare-fun m!1877275 () Bool)

(assert (=> b!1587035 m!1877275))

(assert (=> b!1586590 d!472243))

(declare-fun d!472249 () Bool)

(assert (=> d!472249 (= (separableTokensPredicate!644 thiss!17113 (h!22842 tokens!457) (h!22842 (t!144264 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!421 (rulesRegex!463 thiss!17113 rules!1846) (++!4549 (charsOf!1722 (h!22842 tokens!457)) (singletonSeq!1425 (apply!4266 (charsOf!1722 (h!22842 (t!144264 tokens!457))) 0))))))))

(declare-fun bs!391482 () Bool)

(assert (= bs!391482 d!472249))

(assert (=> bs!391482 m!1876287))

(assert (=> bs!391482 m!1876289))

(declare-fun m!1877277 () Bool)

(assert (=> bs!391482 m!1877277))

(assert (=> bs!391482 m!1876287))

(declare-fun m!1877279 () Bool)

(assert (=> bs!391482 m!1877279))

(declare-fun m!1877281 () Bool)

(assert (=> bs!391482 m!1877281))

(assert (=> bs!391482 m!1877277))

(declare-fun m!1877283 () Bool)

(assert (=> bs!391482 m!1877283))

(assert (=> bs!391482 m!1876249))

(assert (=> bs!391482 m!1877283))

(assert (=> bs!391482 m!1877279))

(assert (=> bs!391482 m!1876289))

(assert (=> bs!391482 m!1876249))

(assert (=> b!1586580 d!472249))

(declare-fun d!472251 () Bool)

(declare-fun lt!559380 () Bool)

(declare-fun e!1019366 () Bool)

(assert (=> d!472251 (= lt!559380 e!1019366)))

(declare-fun res!707876 () Bool)

(assert (=> d!472251 (=> (not res!707876) (not e!1019366))))

(assert (=> d!472251 (= res!707876 (= (list!6767 (_1!9864 (lex!1186 thiss!17113 rules!1846 (print!1233 thiss!17113 (singletonSeq!1424 (h!22842 tokens!457)))))) (list!6767 (singletonSeq!1424 (h!22842 tokens!457)))))))

(declare-fun e!1019367 () Bool)

(assert (=> d!472251 (= lt!559380 e!1019367)))

(declare-fun res!707875 () Bool)

(assert (=> d!472251 (=> (not res!707875) (not e!1019367))))

(declare-fun lt!559381 () tuple2!16924)

(assert (=> d!472251 (= res!707875 (= (size!14035 (_1!9864 lt!559381)) 1))))

(assert (=> d!472251 (= lt!559381 (lex!1186 thiss!17113 rules!1846 (print!1233 thiss!17113 (singletonSeq!1424 (h!22842 tokens!457)))))))

(assert (=> d!472251 (not (isEmpty!10460 rules!1846))))

(assert (=> d!472251 (= (rulesProduceIndividualToken!1354 thiss!17113 rules!1846 (h!22842 tokens!457)) lt!559380)))

(declare-fun b!1587042 () Bool)

(declare-fun res!707874 () Bool)

(assert (=> b!1587042 (=> (not res!707874) (not e!1019367))))

(assert (=> b!1587042 (= res!707874 (= (apply!4274 (_1!9864 lt!559381) 0) (h!22842 tokens!457)))))

(declare-fun b!1587043 () Bool)

(assert (=> b!1587043 (= e!1019367 (isEmpty!10467 (_2!9864 lt!559381)))))

(declare-fun b!1587044 () Bool)

(assert (=> b!1587044 (= e!1019366 (isEmpty!10467 (_2!9864 (lex!1186 thiss!17113 rules!1846 (print!1233 thiss!17113 (singletonSeq!1424 (h!22842 tokens!457)))))))))

(assert (= (and d!472251 res!707875) b!1587042))

(assert (= (and b!1587042 res!707874) b!1587043))

(assert (= (and d!472251 res!707876) b!1587044))

(assert (=> d!472251 m!1876281))

(declare-fun m!1877285 () Bool)

(assert (=> d!472251 m!1877285))

(declare-fun m!1877287 () Bool)

(assert (=> d!472251 m!1877287))

(declare-fun m!1877289 () Bool)

(assert (=> d!472251 m!1877289))

(assert (=> d!472251 m!1876243))

(declare-fun m!1877291 () Bool)

(assert (=> d!472251 m!1877291))

(declare-fun m!1877293 () Bool)

(assert (=> d!472251 m!1877293))

(assert (=> d!472251 m!1876281))

(assert (=> d!472251 m!1876281))

(assert (=> d!472251 m!1877291))

(declare-fun m!1877295 () Bool)

(assert (=> b!1587042 m!1877295))

(declare-fun m!1877297 () Bool)

(assert (=> b!1587043 m!1877297))

(assert (=> b!1587044 m!1876281))

(assert (=> b!1587044 m!1876281))

(assert (=> b!1587044 m!1877291))

(assert (=> b!1587044 m!1877291))

(assert (=> b!1587044 m!1877293))

(declare-fun m!1877299 () Bool)

(assert (=> b!1587044 m!1877299))

(assert (=> b!1586578 d!472251))

(declare-fun d!472253 () Bool)

(declare-fun lt!559384 () Int)

(assert (=> d!472253 (= lt!559384 (size!14034 (list!6768 lt!558835)))))

(declare-fun size!14036 (Conc!5794) Int)

(assert (=> d!472253 (= lt!559384 (size!14036 (c!257149 lt!558835)))))

(assert (=> d!472253 (= (size!14030 lt!558835) lt!559384)))

(declare-fun bs!391483 () Bool)

(assert (= bs!391483 d!472253))

(assert (=> bs!391483 m!1876969))

(assert (=> bs!391483 m!1876969))

(declare-fun m!1877301 () Bool)

(assert (=> bs!391483 m!1877301))

(declare-fun m!1877303 () Bool)

(assert (=> bs!391483 m!1877303))

(assert (=> b!1586589 d!472253))

(declare-fun b!1587058 () Bool)

(declare-fun b_free!42919 () Bool)

(declare-fun b_next!43623 () Bool)

(assert (=> b!1587058 (= b_free!42919 (not b_next!43623))))

(declare-fun tp!466521 () Bool)

(declare-fun b_and!111285 () Bool)

(assert (=> b!1587058 (= tp!466521 b_and!111285)))

(declare-fun b_free!42921 () Bool)

(declare-fun b_next!43625 () Bool)

(assert (=> b!1587058 (= b_free!42921 (not b_next!43625))))

(declare-fun t!144303 () Bool)

(declare-fun tb!89327 () Bool)

(assert (=> (and b!1587058 (= (toChars!4343 (transformation!3073 (rule!4877 (h!22842 (t!144264 tokens!457))))) (toChars!4343 (transformation!3073 (rule!4877 (h!22842 tokens!457))))) t!144303) tb!89327))

(declare-fun result!108128 () Bool)

(assert (= result!108128 result!108090))

(assert (=> b!1586612 t!144303))

(assert (=> d!472179 t!144303))

(declare-fun t!144305 () Bool)

(declare-fun tb!89329 () Bool)

(assert (=> (and b!1587058 (= (toChars!4343 (transformation!3073 (rule!4877 (h!22842 (t!144264 tokens!457))))) (toChars!4343 (transformation!3073 (rule!4877 (h!22842 (t!144264 tokens!457)))))) t!144305) tb!89329))

(declare-fun result!108130 () Bool)

(assert (= result!108130 result!108106))

(assert (=> d!472211 t!144305))

(declare-fun tp!466519 () Bool)

(declare-fun b_and!111287 () Bool)

(assert (=> b!1587058 (= tp!466519 (and (=> t!144303 result!108128) (=> t!144305 result!108130) b_and!111287))))

(declare-fun b!1587056 () Bool)

(declare-fun e!1019381 () Bool)

(declare-fun tp!466517 () Bool)

(declare-fun e!1019380 () Bool)

(assert (=> b!1587056 (= e!1019380 (and (inv!21 (value!97253 (h!22842 (t!144264 tokens!457)))) e!1019381 tp!466517))))

(declare-fun e!1019385 () Bool)

(declare-fun tp!466520 () Bool)

(declare-fun b!1587055 () Bool)

(assert (=> b!1587055 (= e!1019385 (and (inv!22856 (h!22842 (t!144264 tokens!457))) e!1019380 tp!466520))))

(declare-fun e!1019382 () Bool)

(assert (=> b!1587058 (= e!1019382 (and tp!466521 tp!466519))))

(assert (=> b!1586582 (= tp!466443 e!1019385)))

(declare-fun b!1587057 () Bool)

(declare-fun tp!466518 () Bool)

(assert (=> b!1587057 (= e!1019381 (and tp!466518 (inv!22853 (tag!3343 (rule!4877 (h!22842 (t!144264 tokens!457))))) (inv!22857 (transformation!3073 (rule!4877 (h!22842 (t!144264 tokens!457))))) e!1019382))))

(assert (= b!1587057 b!1587058))

(assert (= b!1587056 b!1587057))

(assert (= b!1587055 b!1587056))

(assert (= (and b!1586582 ((_ is Cons!17441) (t!144264 tokens!457))) b!1587055))

(declare-fun m!1877305 () Bool)

(assert (=> b!1587056 m!1877305))

(declare-fun m!1877307 () Bool)

(assert (=> b!1587055 m!1877307))

(declare-fun m!1877309 () Bool)

(assert (=> b!1587057 m!1877309))

(declare-fun m!1877311 () Bool)

(assert (=> b!1587057 m!1877311))

(declare-fun b!1587063 () Bool)

(declare-fun e!1019388 () Bool)

(declare-fun tp_is_empty!7201 () Bool)

(declare-fun tp!466524 () Bool)

(assert (=> b!1587063 (= e!1019388 (and tp_is_empty!7201 tp!466524))))

(assert (=> b!1586577 (= tp!466446 e!1019388)))

(assert (= (and b!1586577 ((_ is Cons!17440) (originalCharacters!3887 (h!22842 tokens!457)))) b!1587063))

(declare-fun b!1587076 () Bool)

(declare-fun e!1019391 () Bool)

(declare-fun tp!466535 () Bool)

(assert (=> b!1587076 (= e!1019391 tp!466535)))

(assert (=> b!1586581 (= tp!466442 e!1019391)))

(declare-fun b!1587074 () Bool)

(assert (=> b!1587074 (= e!1019391 tp_is_empty!7201)))

(declare-fun b!1587075 () Bool)

(declare-fun tp!466539 () Bool)

(declare-fun tp!466538 () Bool)

(assert (=> b!1587075 (= e!1019391 (and tp!466539 tp!466538))))

(declare-fun b!1587077 () Bool)

(declare-fun tp!466536 () Bool)

(declare-fun tp!466537 () Bool)

(assert (=> b!1587077 (= e!1019391 (and tp!466536 tp!466537))))

(assert (= (and b!1586581 ((_ is ElementMatch!4401) (regex!3073 (h!22843 rules!1846)))) b!1587074))

(assert (= (and b!1586581 ((_ is Concat!7565) (regex!3073 (h!22843 rules!1846)))) b!1587075))

(assert (= (and b!1586581 ((_ is Star!4401) (regex!3073 (h!22843 rules!1846)))) b!1587076))

(assert (= (and b!1586581 ((_ is Union!4401) (regex!3073 (h!22843 rules!1846)))) b!1587077))

(declare-fun b!1587088 () Bool)

(declare-fun b_free!42923 () Bool)

(declare-fun b_next!43627 () Bool)

(assert (=> b!1587088 (= b_free!42923 (not b_next!43627))))

(declare-fun tp!466549 () Bool)

(declare-fun b_and!111289 () Bool)

(assert (=> b!1587088 (= tp!466549 b_and!111289)))

(declare-fun b_free!42925 () Bool)

(declare-fun b_next!43629 () Bool)

(assert (=> b!1587088 (= b_free!42925 (not b_next!43629))))

(declare-fun t!144307 () Bool)

(declare-fun tb!89331 () Bool)

(assert (=> (and b!1587088 (= (toChars!4343 (transformation!3073 (h!22843 (t!144265 rules!1846)))) (toChars!4343 (transformation!3073 (rule!4877 (h!22842 tokens!457))))) t!144307) tb!89331))

(declare-fun result!108138 () Bool)

(assert (= result!108138 result!108090))

(assert (=> b!1586612 t!144307))

(assert (=> d!472179 t!144307))

(declare-fun tb!89333 () Bool)

(declare-fun t!144309 () Bool)

(assert (=> (and b!1587088 (= (toChars!4343 (transformation!3073 (h!22843 (t!144265 rules!1846)))) (toChars!4343 (transformation!3073 (rule!4877 (h!22842 (t!144264 tokens!457)))))) t!144309) tb!89333))

(declare-fun result!108140 () Bool)

(assert (= result!108140 result!108106))

(assert (=> d!472211 t!144309))

(declare-fun b_and!111291 () Bool)

(declare-fun tp!466550 () Bool)

(assert (=> b!1587088 (= tp!466550 (and (=> t!144307 result!108138) (=> t!144309 result!108140) b_and!111291))))

(declare-fun e!1019401 () Bool)

(assert (=> b!1587088 (= e!1019401 (and tp!466549 tp!466550))))

(declare-fun b!1587087 () Bool)

(declare-fun tp!466551 () Bool)

(declare-fun e!1019403 () Bool)

(assert (=> b!1587087 (= e!1019403 (and tp!466551 (inv!22853 (tag!3343 (h!22843 (t!144265 rules!1846)))) (inv!22857 (transformation!3073 (h!22843 (t!144265 rules!1846)))) e!1019401))))

(declare-fun b!1587086 () Bool)

(declare-fun e!1019400 () Bool)

(declare-fun tp!466548 () Bool)

(assert (=> b!1587086 (= e!1019400 (and e!1019403 tp!466548))))

(assert (=> b!1586597 (= tp!466448 e!1019400)))

(assert (= b!1587087 b!1587088))

(assert (= b!1587086 b!1587087))

(assert (= (and b!1586597 ((_ is Cons!17442) (t!144265 rules!1846))) b!1587086))

(declare-fun m!1877313 () Bool)

(assert (=> b!1587087 m!1877313))

(declare-fun m!1877315 () Bool)

(assert (=> b!1587087 m!1877315))

(declare-fun b!1587091 () Bool)

(declare-fun e!1019404 () Bool)

(declare-fun tp!466552 () Bool)

(assert (=> b!1587091 (= e!1019404 tp!466552)))

(assert (=> b!1586584 (= tp!466447 e!1019404)))

(declare-fun b!1587089 () Bool)

(assert (=> b!1587089 (= e!1019404 tp_is_empty!7201)))

(declare-fun b!1587090 () Bool)

(declare-fun tp!466556 () Bool)

(declare-fun tp!466555 () Bool)

(assert (=> b!1587090 (= e!1019404 (and tp!466556 tp!466555))))

(declare-fun b!1587092 () Bool)

(declare-fun tp!466553 () Bool)

(declare-fun tp!466554 () Bool)

(assert (=> b!1587092 (= e!1019404 (and tp!466553 tp!466554))))

(assert (= (and b!1586584 ((_ is ElementMatch!4401) (regex!3073 (rule!4877 (h!22842 tokens!457))))) b!1587089))

(assert (= (and b!1586584 ((_ is Concat!7565) (regex!3073 (rule!4877 (h!22842 tokens!457))))) b!1587090))

(assert (= (and b!1586584 ((_ is Star!4401) (regex!3073 (rule!4877 (h!22842 tokens!457))))) b!1587091))

(assert (= (and b!1586584 ((_ is Union!4401) (regex!3073 (rule!4877 (h!22842 tokens!457))))) b!1587092))

(declare-fun b_lambda!49939 () Bool)

(assert (= b_lambda!49931 (or (and b!1586586 b_free!42905 (= (toChars!4343 (transformation!3073 (h!22843 rules!1846))) (toChars!4343 (transformation!3073 (rule!4877 (h!22842 (t!144264 tokens!457))))))) (and b!1586591 b_free!42909 (= (toChars!4343 (transformation!3073 (rule!4877 (h!22842 tokens!457)))) (toChars!4343 (transformation!3073 (rule!4877 (h!22842 (t!144264 tokens!457))))))) (and b!1587058 b_free!42921) (and b!1587088 b_free!42925 (= (toChars!4343 (transformation!3073 (h!22843 (t!144265 rules!1846)))) (toChars!4343 (transformation!3073 (rule!4877 (h!22842 (t!144264 tokens!457))))))) b_lambda!49939)))

(declare-fun b_lambda!49941 () Bool)

(assert (= b_lambda!49921 (or (and b!1586586 b_free!42905 (= (toChars!4343 (transformation!3073 (h!22843 rules!1846))) (toChars!4343 (transformation!3073 (rule!4877 (h!22842 tokens!457)))))) (and b!1586591 b_free!42909) (and b!1587058 b_free!42921 (= (toChars!4343 (transformation!3073 (rule!4877 (h!22842 (t!144264 tokens!457))))) (toChars!4343 (transformation!3073 (rule!4877 (h!22842 tokens!457)))))) (and b!1587088 b_free!42925 (= (toChars!4343 (transformation!3073 (h!22843 (t!144265 rules!1846)))) (toChars!4343 (transformation!3073 (rule!4877 (h!22842 tokens!457)))))) b_lambda!49941)))

(declare-fun b_lambda!49943 () Bool)

(assert (= b_lambda!49929 (or (and b!1586586 b_free!42905 (= (toChars!4343 (transformation!3073 (h!22843 rules!1846))) (toChars!4343 (transformation!3073 (rule!4877 (h!22842 tokens!457)))))) (and b!1586591 b_free!42909) (and b!1587058 b_free!42921 (= (toChars!4343 (transformation!3073 (rule!4877 (h!22842 (t!144264 tokens!457))))) (toChars!4343 (transformation!3073 (rule!4877 (h!22842 tokens!457)))))) (and b!1587088 b_free!42925 (= (toChars!4343 (transformation!3073 (h!22843 (t!144265 rules!1846)))) (toChars!4343 (transformation!3073 (rule!4877 (h!22842 tokens!457)))))) b_lambda!49943)))

(check-sat (not b!1586880) (not d!472121) (not b!1587087) b_and!111249 (not d!472225) b_and!111273 b_and!111285 (not b!1586943) (not d!472227) (not b_next!43607) tp_is_empty!7201 (not b!1586838) (not b!1587077) (not b!1586798) (not b!1586829) (not b!1586910) (not d!472223) (not d!472157) (not b!1586828) (not d!472209) (not b!1586742) (not b!1586851) (not b!1587092) (not b!1586921) (not b!1586953) (not b!1587042) (not b!1586947) (not b!1586944) (not b!1586797) (not b!1586874) (not b!1586912) b_and!111287 b_and!111289 (not b!1586831) (not b!1586894) (not b!1586636) (not d!472205) (not b!1586612) (not b!1587063) (not b!1586741) (not d!472167) (not b_next!43625) (not b!1587044) (not b!1586730) (not d!472189) (not tb!89315) (not d!472067) (not b!1586942) b_and!111245 (not b!1586948) (not b!1586945) (not d!472123) (not b!1586892) (not d!472183) (not bm!102917) (not b!1587035) (not b!1586911) (not b_next!43609) (not b_next!43613) (not d!472231) (not d!472175) (not d!472169) (not d!472215) (not d!472241) (not b!1586729) (not d!472065) (not b!1587057) (not d!472177) (not b!1587034) (not b_next!43627) (not d!472233) (not b!1587091) (not b!1587090) (not b!1587043) (not d!472235) (not b!1586960) (not d!472237) (not b!1586940) (not b!1586897) (not d!472203) (not d!472187) (not b!1587075) (not b!1586850) (not b!1586745) (not b!1587056) (not d!472171) (not b!1587086) (not b!1586941) (not b!1586613) (not d!472179) (not b!1586837) b_and!111291 (not d!472117) (not d!472201) (not d!472221) (not d!472253) (not d!472069) (not b!1586740) (not b!1587055) (not d!472251) (not d!472185) (not d!472163) (not b!1586835) (not b_next!43611) (not b_next!43623) (not b!1586875) (not b!1586919) (not d!472165) (not d!472181) (not b!1586957) (not d!472173) (not b!1586896) (not b_lambda!49941) (not d!472249) (not d!472207) (not b!1586895) (not d!472155) (not b!1587076) (not d!472211) (not b!1586830) (not b!1586807) (not b_next!43629) (not b_lambda!49939) (not tb!89303) (not b_lambda!49943) (not b!1586836) (not d!472239) (not b!1586883) (not b!1586876) b_and!111275 (not b!1586893) (not b!1586839))
(check-sat (not b_next!43607) (not b_next!43625) b_and!111245 (not b_next!43627) b_and!111291 b_and!111249 (not b_next!43629) b_and!111275 b_and!111273 b_and!111285 b_and!111287 b_and!111289 (not b_next!43609) (not b_next!43613) (not b_next!43611) (not b_next!43623))
