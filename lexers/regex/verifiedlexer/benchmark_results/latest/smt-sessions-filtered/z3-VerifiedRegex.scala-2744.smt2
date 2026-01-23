; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!147722 () Bool)

(assert start!147722)

(declare-fun b!1578901 () Bool)

(declare-fun b_free!42583 () Bool)

(declare-fun b_next!43287 () Bool)

(assert (=> b!1578901 (= b_free!42583 (not b_next!43287))))

(declare-fun tp!464802 () Bool)

(declare-fun b_and!110573 () Bool)

(assert (=> b!1578901 (= tp!464802 b_and!110573)))

(declare-fun b_free!42585 () Bool)

(declare-fun b_next!43289 () Bool)

(assert (=> b!1578901 (= b_free!42585 (not b_next!43289))))

(declare-fun tp!464804 () Bool)

(declare-fun b_and!110575 () Bool)

(assert (=> b!1578901 (= tp!464804 b_and!110575)))

(declare-fun b!1578888 () Bool)

(declare-fun b_free!42587 () Bool)

(declare-fun b_next!43291 () Bool)

(assert (=> b!1578888 (= b_free!42587 (not b_next!43291))))

(declare-fun tp!464797 () Bool)

(declare-fun b_and!110577 () Bool)

(assert (=> b!1578888 (= tp!464797 b_and!110577)))

(declare-fun b_free!42589 () Bool)

(declare-fun b_next!43293 () Bool)

(assert (=> b!1578888 (= b_free!42589 (not b_next!43293))))

(declare-fun tp!464796 () Bool)

(declare-fun b_and!110579 () Bool)

(assert (=> b!1578888 (= tp!464796 b_and!110579)))

(declare-fun e!1014201 () Bool)

(assert (=> b!1578888 (= e!1014201 (and tp!464797 tp!464796))))

(declare-fun b!1578889 () Bool)

(declare-fun res!703744 () Bool)

(declare-fun e!1014204 () Bool)

(assert (=> b!1578889 (=> res!703744 e!1014204)))

(declare-datatypes ((List!17389 0))(
  ( (Nil!17319) (Cons!17319 (h!22720 (_ BitVec 16)) (t!143566 List!17389)) )
))
(declare-datatypes ((TokenValue!3139 0))(
  ( (FloatLiteralValue!6278 (text!22418 List!17389)) (TokenValueExt!3138 (__x!11580 Int)) (Broken!15695 (value!96543 List!17389)) (Object!3208) (End!3139) (Def!3139) (Underscore!3139) (Match!3139) (Else!3139) (Error!3139) (Case!3139) (If!3139) (Extends!3139) (Abstract!3139) (Class!3139) (Val!3139) (DelimiterValue!6278 (del!3199 List!17389)) (KeywordValue!3145 (value!96544 List!17389)) (CommentValue!6278 (value!96545 List!17389)) (WhitespaceValue!6278 (value!96546 List!17389)) (IndentationValue!3139 (value!96547 List!17389)) (String!20026) (Int32!3139) (Broken!15696 (value!96548 List!17389)) (Boolean!3140) (Unit!26940) (OperatorValue!3142 (op!3199 List!17389)) (IdentifierValue!6278 (value!96549 List!17389)) (IdentifierValue!6279 (value!96550 List!17389)) (WhitespaceValue!6279 (value!96551 List!17389)) (True!6278) (False!6278) (Broken!15697 (value!96552 List!17389)) (Broken!15698 (value!96553 List!17389)) (True!6279) (RightBrace!3139) (RightBracket!3139) (Colon!3139) (Null!3139) (Comma!3139) (LeftBracket!3139) (False!6279) (LeftBrace!3139) (ImaginaryLiteralValue!3139 (text!22419 List!17389)) (StringLiteralValue!9417 (value!96554 List!17389)) (EOFValue!3139 (value!96555 List!17389)) (IdentValue!3139 (value!96556 List!17389)) (DelimiterValue!6279 (value!96557 List!17389)) (DedentValue!3139 (value!96558 List!17389)) (NewLineValue!3139 (value!96559 List!17389)) (IntegerValue!9417 (value!96560 (_ BitVec 32)) (text!22420 List!17389)) (IntegerValue!9418 (value!96561 Int) (text!22421 List!17389)) (Times!3139) (Or!3139) (Equal!3139) (Minus!3139) (Broken!15699 (value!96562 List!17389)) (And!3139) (Div!3139) (LessEqual!3139) (Mod!3139) (Concat!7516) (Not!3139) (Plus!3139) (SpaceValue!3139 (value!96563 List!17389)) (IntegerValue!9419 (value!96564 Int) (text!22422 List!17389)) (StringLiteralValue!9418 (text!22423 List!17389)) (FloatLiteralValue!6279 (text!22424 List!17389)) (BytesLiteralValue!3139 (value!96565 List!17389)) (CommentValue!6279 (value!96566 List!17389)) (StringLiteralValue!9419 (value!96567 List!17389)) (ErrorTokenValue!3139 (msg!3200 List!17389)) )
))
(declare-datatypes ((C!8928 0))(
  ( (C!8929 (val!5060 Int)) )
))
(declare-datatypes ((List!17390 0))(
  ( (Nil!17320) (Cons!17320 (h!22721 C!8928) (t!143567 List!17390)) )
))
(declare-datatypes ((IArray!11497 0))(
  ( (IArray!11498 (innerList!5806 List!17390)) )
))
(declare-datatypes ((Conc!5746 0))(
  ( (Node!5746 (left!14000 Conc!5746) (right!14330 Conc!5746) (csize!11722 Int) (cheight!5957 Int)) (Leaf!8491 (xs!8550 IArray!11497) (csize!11723 Int)) (Empty!5746) )
))
(declare-datatypes ((BalanceConc!11436 0))(
  ( (BalanceConc!11437 (c!255915 Conc!5746)) )
))
(declare-datatypes ((String!20027 0))(
  ( (String!20028 (value!96568 String)) )
))
(declare-datatypes ((Regex!4377 0))(
  ( (ElementMatch!4377 (c!255916 C!8928)) (Concat!7517 (regOne!9266 Regex!4377) (regTwo!9266 Regex!4377)) (EmptyExpr!4377) (Star!4377 (reg!4706 Regex!4377)) (EmptyLang!4377) (Union!4377 (regOne!9267 Regex!4377) (regTwo!9267 Regex!4377)) )
))
(declare-datatypes ((TokenValueInjection!5938 0))(
  ( (TokenValueInjection!5939 (toValue!4452 Int) (toChars!4311 Int)) )
))
(declare-datatypes ((Rule!5898 0))(
  ( (Rule!5899 (regex!3049 Regex!4377) (tag!3315 String!20027) (isSeparator!3049 Bool) (transformation!3049 TokenValueInjection!5938)) )
))
(declare-datatypes ((List!17391 0))(
  ( (Nil!17321) (Cons!17321 (h!22722 Rule!5898) (t!143568 List!17391)) )
))
(declare-fun rules!1846 () List!17391)

(declare-datatypes ((LexerInterface!2678 0))(
  ( (LexerInterfaceExt!2675 (__x!11581 Int)) (Lexer!2676) )
))
(declare-fun thiss!17113 () LexerInterface!2678)

(declare-datatypes ((Token!5664 0))(
  ( (Token!5665 (value!96569 TokenValue!3139) (rule!4845 Rule!5898) (size!13950 Int) (originalCharacters!3863 List!17390)) )
))
(declare-datatypes ((List!17392 0))(
  ( (Nil!17322) (Cons!17322 (h!22723 Token!5664) (t!143569 List!17392)) )
))
(declare-fun tokens!457 () List!17392)

(declare-fun separableTokensPredicate!620 (LexerInterface!2678 Token!5664 Token!5664 List!17391) Bool)

(assert (=> b!1578889 (= res!703744 (not (separableTokensPredicate!620 thiss!17113 (h!22723 tokens!457) (h!22723 (t!143569 tokens!457)) rules!1846)))))

(declare-fun b!1578890 () Bool)

(declare-fun res!703741 () Bool)

(declare-fun e!1014197 () Bool)

(assert (=> b!1578890 (=> (not res!703741) (not e!1014197))))

(declare-fun rulesInvariant!2347 (LexerInterface!2678 List!17391) Bool)

(assert (=> b!1578890 (= res!703741 (rulesInvariant!2347 thiss!17113 rules!1846))))

(declare-fun tp!464798 () Bool)

(declare-fun b!1578891 () Bool)

(declare-fun e!1014202 () Bool)

(declare-fun inv!22734 (String!20027) Bool)

(declare-fun inv!22737 (TokenValueInjection!5938) Bool)

(assert (=> b!1578891 (= e!1014202 (and tp!464798 (inv!22734 (tag!3315 (h!22722 rules!1846))) (inv!22737 (transformation!3049 (h!22722 rules!1846))) e!1014201))))

(declare-fun b!1578892 () Bool)

(declare-fun e!1014203 () Bool)

(assert (=> b!1578892 (= e!1014203 e!1014204)))

(declare-fun res!703742 () Bool)

(assert (=> b!1578892 (=> res!703742 e!1014204)))

(declare-fun lt!551631 () List!17392)

(declare-fun lt!551632 () List!17392)

(declare-fun lt!551618 () List!17392)

(assert (=> b!1578892 (= res!703742 (or (not (= lt!551631 lt!551618)) (not (= lt!551618 lt!551632))))))

(declare-datatypes ((IArray!11499 0))(
  ( (IArray!11500 (innerList!5807 List!17392)) )
))
(declare-datatypes ((Conc!5747 0))(
  ( (Node!5747 (left!14001 Conc!5747) (right!14331 Conc!5747) (csize!11724 Int) (cheight!5958 Int)) (Leaf!8492 (xs!8551 IArray!11499) (csize!11725 Int)) (Empty!5747) )
))
(declare-datatypes ((BalanceConc!11438 0))(
  ( (BalanceConc!11439 (c!255917 Conc!5747)) )
))
(declare-fun lt!551620 () BalanceConc!11438)

(declare-fun list!6687 (BalanceConc!11438) List!17392)

(assert (=> b!1578892 (= lt!551618 (list!6687 lt!551620))))

(assert (=> b!1578892 (= lt!551631 lt!551632)))

(declare-fun prepend!523 (BalanceConc!11438 Token!5664) BalanceConc!11438)

(declare-fun seqFromList!1850 (List!17392) BalanceConc!11438)

(assert (=> b!1578892 (= lt!551632 (list!6687 (prepend!523 (seqFromList!1850 (t!143569 (t!143569 tokens!457))) (h!22723 (t!143569 tokens!457)))))))

(declare-datatypes ((Unit!26941 0))(
  ( (Unit!26942) )
))
(declare-fun lt!551624 () Unit!26941)

(declare-datatypes ((tuple2!16788 0))(
  ( (tuple2!16789 (_1!9796 BalanceConc!11438) (_2!9796 BalanceConc!11436)) )
))
(declare-fun lt!551621 () tuple2!16788)

(declare-fun seqFromListBHdTlConstructive!126 (Token!5664 List!17392 BalanceConc!11438) Unit!26941)

(assert (=> b!1578892 (= lt!551624 (seqFromListBHdTlConstructive!126 (h!22723 (t!143569 tokens!457)) (t!143569 (t!143569 tokens!457)) (_1!9796 lt!551621)))))

(declare-fun b!1578894 () Bool)

(declare-fun res!703745 () Bool)

(assert (=> b!1578894 (=> (not res!703745) (not e!1014197))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!371 (LexerInterface!2678 List!17392 List!17391) Bool)

(assert (=> b!1578894 (= res!703745 (tokensListTwoByTwoPredicateSeparableList!371 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1578895 () Bool)

(declare-fun e!1014200 () Bool)

(assert (=> b!1578895 (= e!1014200 (not e!1014203))))

(declare-fun res!703738 () Bool)

(assert (=> b!1578895 (=> res!703738 e!1014203)))

(assert (=> b!1578895 (= res!703738 (not (= lt!551631 (t!143569 tokens!457))))))

(assert (=> b!1578895 (= lt!551631 (list!6687 (_1!9796 lt!551621)))))

(declare-fun lt!551628 () Unit!26941)

(declare-fun theoremInvertabilityWhenTokenListSeparable!123 (LexerInterface!2678 List!17391 List!17392) Unit!26941)

(assert (=> b!1578895 (= lt!551628 (theoremInvertabilityWhenTokenListSeparable!123 thiss!17113 rules!1846 (t!143569 tokens!457)))))

(declare-fun lt!551619 () List!17390)

(declare-fun lt!551623 () List!17390)

(declare-fun isPrefix!1309 (List!17390 List!17390) Bool)

(assert (=> b!1578895 (isPrefix!1309 lt!551619 lt!551623)))

(declare-fun lt!551630 () Unit!26941)

(declare-fun lt!551622 () List!17390)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!834 (List!17390 List!17390) Unit!26941)

(assert (=> b!1578895 (= lt!551630 (lemmaConcatTwoListThenFirstIsPrefix!834 lt!551619 lt!551622))))

(declare-fun b!1578896 () Bool)

(assert (=> b!1578896 (= e!1014204 true)))

(declare-fun lt!551626 () BalanceConc!11438)

(declare-fun print!1209 (LexerInterface!2678 BalanceConc!11438) BalanceConc!11436)

(declare-fun printTailRec!731 (LexerInterface!2678 BalanceConc!11438 Int BalanceConc!11436) BalanceConc!11436)

(assert (=> b!1578896 (= (print!1209 thiss!17113 lt!551626) (printTailRec!731 thiss!17113 lt!551626 0 (BalanceConc!11437 Empty!5746)))))

(declare-fun singletonSeq!1385 (Token!5664) BalanceConc!11438)

(assert (=> b!1578896 (= lt!551626 (singletonSeq!1385 (h!22723 tokens!457)))))

(declare-fun lt!551625 () List!17390)

(declare-datatypes ((tuple2!16790 0))(
  ( (tuple2!16791 (_1!9797 Token!5664) (_2!9797 List!17390)) )
))
(declare-datatypes ((Option!3100 0))(
  ( (None!3099) (Some!3099 (v!23930 tuple2!16790)) )
))
(declare-fun lt!551627 () Option!3100)

(declare-fun maxPrefix!1242 (LexerInterface!2678 List!17391 List!17390) Option!3100)

(assert (=> b!1578896 (= lt!551627 (maxPrefix!1242 thiss!17113 rules!1846 lt!551625))))

(declare-fun b!1578897 () Bool)

(declare-fun res!703743 () Bool)

(assert (=> b!1578897 (=> (not res!703743) (not e!1014197))))

(declare-fun rulesProduceEachTokenIndividuallyList!880 (LexerInterface!2678 List!17391 List!17392) Bool)

(assert (=> b!1578897 (= res!703743 (rulesProduceEachTokenIndividuallyList!880 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1578898 () Bool)

(declare-fun res!703739 () Bool)

(assert (=> b!1578898 (=> (not res!703739) (not e!1014197))))

(get-info :version)

(assert (=> b!1578898 (= res!703739 (and (not ((_ is Nil!17322) tokens!457)) (not ((_ is Nil!17322) (t!143569 tokens!457)))))))

(declare-fun res!703746 () Bool)

(assert (=> start!147722 (=> (not res!703746) (not e!1014197))))

(assert (=> start!147722 (= res!703746 ((_ is Lexer!2676) thiss!17113))))

(assert (=> start!147722 e!1014197))

(assert (=> start!147722 true))

(declare-fun e!1014206 () Bool)

(assert (=> start!147722 e!1014206))

(declare-fun e!1014198 () Bool)

(assert (=> start!147722 e!1014198))

(declare-fun b!1578893 () Bool)

(assert (=> b!1578893 (= e!1014197 e!1014200)))

(declare-fun res!703737 () Bool)

(assert (=> b!1578893 (=> (not res!703737) (not e!1014200))))

(assert (=> b!1578893 (= res!703737 (= lt!551625 lt!551623))))

(declare-fun ++!4497 (List!17390 List!17390) List!17390)

(assert (=> b!1578893 (= lt!551623 (++!4497 lt!551619 lt!551622))))

(declare-fun lt!551617 () BalanceConc!11436)

(declare-fun list!6688 (BalanceConc!11436) List!17390)

(assert (=> b!1578893 (= lt!551625 (list!6688 lt!551617))))

(declare-fun lt!551629 () BalanceConc!11436)

(assert (=> b!1578893 (= lt!551622 (list!6688 lt!551629))))

(declare-fun charsOf!1698 (Token!5664) BalanceConc!11436)

(assert (=> b!1578893 (= lt!551619 (list!6688 (charsOf!1698 (h!22723 tokens!457))))))

(declare-fun lex!1162 (LexerInterface!2678 List!17391 BalanceConc!11436) tuple2!16788)

(assert (=> b!1578893 (= lt!551621 (lex!1162 thiss!17113 rules!1846 lt!551629))))

(assert (=> b!1578893 (= lt!551629 (print!1209 thiss!17113 lt!551620))))

(assert (=> b!1578893 (= lt!551620 (seqFromList!1850 (t!143569 tokens!457)))))

(assert (=> b!1578893 (= lt!551617 (print!1209 thiss!17113 (seqFromList!1850 tokens!457)))))

(declare-fun b!1578899 () Bool)

(declare-fun tp!464800 () Bool)

(assert (=> b!1578899 (= e!1014206 (and e!1014202 tp!464800))))

(declare-fun b!1578900 () Bool)

(declare-fun e!1014196 () Bool)

(declare-fun tp!464803 () Bool)

(declare-fun inv!22738 (Token!5664) Bool)

(assert (=> b!1578900 (= e!1014198 (and (inv!22738 (h!22723 tokens!457)) e!1014196 tp!464803))))

(declare-fun e!1014205 () Bool)

(assert (=> b!1578901 (= e!1014205 (and tp!464802 tp!464804))))

(declare-fun b!1578902 () Bool)

(declare-fun tp!464799 () Bool)

(declare-fun e!1014195 () Bool)

(declare-fun inv!21 (TokenValue!3139) Bool)

(assert (=> b!1578902 (= e!1014196 (and (inv!21 (value!96569 (h!22723 tokens!457))) e!1014195 tp!464799))))

(declare-fun b!1578903 () Bool)

(declare-fun res!703740 () Bool)

(assert (=> b!1578903 (=> (not res!703740) (not e!1014197))))

(declare-fun isEmpty!10347 (List!17391) Bool)

(assert (=> b!1578903 (= res!703740 (not (isEmpty!10347 rules!1846)))))

(declare-fun tp!464801 () Bool)

(declare-fun b!1578904 () Bool)

(assert (=> b!1578904 (= e!1014195 (and tp!464801 (inv!22734 (tag!3315 (rule!4845 (h!22723 tokens!457)))) (inv!22737 (transformation!3049 (rule!4845 (h!22723 tokens!457)))) e!1014205))))

(assert (= (and start!147722 res!703746) b!1578903))

(assert (= (and b!1578903 res!703740) b!1578890))

(assert (= (and b!1578890 res!703741) b!1578897))

(assert (= (and b!1578897 res!703743) b!1578894))

(assert (= (and b!1578894 res!703745) b!1578898))

(assert (= (and b!1578898 res!703739) b!1578893))

(assert (= (and b!1578893 res!703737) b!1578895))

(assert (= (and b!1578895 (not res!703738)) b!1578892))

(assert (= (and b!1578892 (not res!703742)) b!1578889))

(assert (= (and b!1578889 (not res!703744)) b!1578896))

(assert (= b!1578891 b!1578888))

(assert (= b!1578899 b!1578891))

(assert (= (and start!147722 ((_ is Cons!17321) rules!1846)) b!1578899))

(assert (= b!1578904 b!1578901))

(assert (= b!1578902 b!1578904))

(assert (= b!1578900 b!1578902))

(assert (= (and start!147722 ((_ is Cons!17322) tokens!457)) b!1578900))

(declare-fun m!1861249 () Bool)

(assert (=> b!1578900 m!1861249))

(declare-fun m!1861251 () Bool)

(assert (=> b!1578897 m!1861251))

(declare-fun m!1861253 () Bool)

(assert (=> b!1578891 m!1861253))

(declare-fun m!1861255 () Bool)

(assert (=> b!1578891 m!1861255))

(declare-fun m!1861257 () Bool)

(assert (=> b!1578890 m!1861257))

(declare-fun m!1861259 () Bool)

(assert (=> b!1578904 m!1861259))

(declare-fun m!1861261 () Bool)

(assert (=> b!1578904 m!1861261))

(declare-fun m!1861263 () Bool)

(assert (=> b!1578893 m!1861263))

(declare-fun m!1861265 () Bool)

(assert (=> b!1578893 m!1861265))

(declare-fun m!1861267 () Bool)

(assert (=> b!1578893 m!1861267))

(declare-fun m!1861269 () Bool)

(assert (=> b!1578893 m!1861269))

(declare-fun m!1861271 () Bool)

(assert (=> b!1578893 m!1861271))

(declare-fun m!1861273 () Bool)

(assert (=> b!1578893 m!1861273))

(declare-fun m!1861275 () Bool)

(assert (=> b!1578893 m!1861275))

(assert (=> b!1578893 m!1861265))

(declare-fun m!1861277 () Bool)

(assert (=> b!1578893 m!1861277))

(declare-fun m!1861279 () Bool)

(assert (=> b!1578893 m!1861279))

(declare-fun m!1861281 () Bool)

(assert (=> b!1578893 m!1861281))

(assert (=> b!1578893 m!1861269))

(declare-fun m!1861283 () Bool)

(assert (=> b!1578895 m!1861283))

(declare-fun m!1861285 () Bool)

(assert (=> b!1578895 m!1861285))

(declare-fun m!1861287 () Bool)

(assert (=> b!1578895 m!1861287))

(declare-fun m!1861289 () Bool)

(assert (=> b!1578895 m!1861289))

(declare-fun m!1861291 () Bool)

(assert (=> b!1578902 m!1861291))

(declare-fun m!1861293 () Bool)

(assert (=> b!1578889 m!1861293))

(declare-fun m!1861295 () Bool)

(assert (=> b!1578894 m!1861295))

(declare-fun m!1861297 () Bool)

(assert (=> b!1578903 m!1861297))

(declare-fun m!1861299 () Bool)

(assert (=> b!1578896 m!1861299))

(declare-fun m!1861301 () Bool)

(assert (=> b!1578896 m!1861301))

(declare-fun m!1861303 () Bool)

(assert (=> b!1578896 m!1861303))

(declare-fun m!1861305 () Bool)

(assert (=> b!1578896 m!1861305))

(declare-fun m!1861307 () Bool)

(assert (=> b!1578892 m!1861307))

(declare-fun m!1861309 () Bool)

(assert (=> b!1578892 m!1861309))

(declare-fun m!1861311 () Bool)

(assert (=> b!1578892 m!1861311))

(declare-fun m!1861313 () Bool)

(assert (=> b!1578892 m!1861313))

(declare-fun m!1861315 () Bool)

(assert (=> b!1578892 m!1861315))

(assert (=> b!1578892 m!1861311))

(assert (=> b!1578892 m!1861313))

(check-sat (not b!1578903) (not b!1578900) b_and!110579 (not b_next!43289) (not b_next!43287) (not b!1578892) (not b!1578895) (not b!1578894) (not b!1578889) (not b!1578896) b_and!110577 (not b!1578891) (not b!1578904) (not b_next!43291) b_and!110573 b_and!110575 (not b!1578893) (not b!1578890) (not b_next!43293) (not b!1578897) (not b!1578899) (not b!1578902))
(check-sat b_and!110579 b_and!110577 (not b_next!43289) (not b_next!43287) b_and!110575 (not b_next!43293) (not b_next!43291) b_and!110573)
