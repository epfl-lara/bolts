; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!146826 () Bool)

(assert start!146826)

(declare-fun b!1573683 () Bool)

(declare-fun b_free!42231 () Bool)

(declare-fun b_next!42935 () Bool)

(assert (=> b!1573683 (= b_free!42231 (not b_next!42935))))

(declare-fun tp!463075 () Bool)

(declare-fun b_and!110037 () Bool)

(assert (=> b!1573683 (= tp!463075 b_and!110037)))

(declare-fun b_free!42233 () Bool)

(declare-fun b_next!42937 () Bool)

(assert (=> b!1573683 (= b_free!42233 (not b_next!42937))))

(declare-fun tp!463071 () Bool)

(declare-fun b_and!110039 () Bool)

(assert (=> b!1573683 (= tp!463071 b_and!110039)))

(declare-fun b!1573685 () Bool)

(declare-fun b_free!42235 () Bool)

(declare-fun b_next!42939 () Bool)

(assert (=> b!1573685 (= b_free!42235 (not b_next!42939))))

(declare-fun tp!463077 () Bool)

(declare-fun b_and!110041 () Bool)

(assert (=> b!1573685 (= tp!463077 b_and!110041)))

(declare-fun b_free!42237 () Bool)

(declare-fun b_next!42941 () Bool)

(assert (=> b!1573685 (= b_free!42237 (not b_next!42941))))

(declare-fun tp!463074 () Bool)

(declare-fun b_and!110043 () Bool)

(assert (=> b!1573685 (= tp!463074 b_and!110043)))

(declare-fun e!1010621 () Bool)

(declare-fun b!1573681 () Bool)

(declare-datatypes ((List!17263 0))(
  ( (Nil!17193) (Cons!17193 (h!22594 (_ BitVec 16)) (t!143166 List!17263)) )
))
(declare-datatypes ((TokenValue!3111 0))(
  ( (FloatLiteralValue!6222 (text!22222 List!17263)) (TokenValueExt!3110 (__x!11524 Int)) (Broken!15555 (value!95745 List!17263)) (Object!3180) (End!3111) (Def!3111) (Underscore!3111) (Match!3111) (Else!3111) (Error!3111) (Case!3111) (If!3111) (Extends!3111) (Abstract!3111) (Class!3111) (Val!3111) (DelimiterValue!6222 (del!3171 List!17263)) (KeywordValue!3117 (value!95746 List!17263)) (CommentValue!6222 (value!95747 List!17263)) (WhitespaceValue!6222 (value!95748 List!17263)) (IndentationValue!3111 (value!95749 List!17263)) (String!19886) (Int32!3111) (Broken!15556 (value!95750 List!17263)) (Boolean!3112) (Unit!26566) (OperatorValue!3114 (op!3171 List!17263)) (IdentifierValue!6222 (value!95751 List!17263)) (IdentifierValue!6223 (value!95752 List!17263)) (WhitespaceValue!6223 (value!95753 List!17263)) (True!6222) (False!6222) (Broken!15557 (value!95754 List!17263)) (Broken!15558 (value!95755 List!17263)) (True!6223) (RightBrace!3111) (RightBracket!3111) (Colon!3111) (Null!3111) (Comma!3111) (LeftBracket!3111) (False!6223) (LeftBrace!3111) (ImaginaryLiteralValue!3111 (text!22223 List!17263)) (StringLiteralValue!9333 (value!95756 List!17263)) (EOFValue!3111 (value!95757 List!17263)) (IdentValue!3111 (value!95758 List!17263)) (DelimiterValue!6223 (value!95759 List!17263)) (DedentValue!3111 (value!95760 List!17263)) (NewLineValue!3111 (value!95761 List!17263)) (IntegerValue!9333 (value!95762 (_ BitVec 32)) (text!22224 List!17263)) (IntegerValue!9334 (value!95763 Int) (text!22225 List!17263)) (Times!3111) (Or!3111) (Equal!3111) (Minus!3111) (Broken!15559 (value!95764 List!17263)) (And!3111) (Div!3111) (LessEqual!3111) (Mod!3111) (Concat!7460) (Not!3111) (Plus!3111) (SpaceValue!3111 (value!95765 List!17263)) (IntegerValue!9335 (value!95766 Int) (text!22226 List!17263)) (StringLiteralValue!9334 (text!22227 List!17263)) (FloatLiteralValue!6223 (text!22228 List!17263)) (BytesLiteralValue!3111 (value!95767 List!17263)) (CommentValue!6223 (value!95768 List!17263)) (StringLiteralValue!9335 (value!95769 List!17263)) (ErrorTokenValue!3111 (msg!3172 List!17263)) )
))
(declare-datatypes ((C!8872 0))(
  ( (C!8873 (val!5032 Int)) )
))
(declare-datatypes ((List!17264 0))(
  ( (Nil!17194) (Cons!17194 (h!22595 C!8872) (t!143167 List!17264)) )
))
(declare-datatypes ((IArray!11385 0))(
  ( (IArray!11386 (innerList!5750 List!17264)) )
))
(declare-datatypes ((Conc!5690 0))(
  ( (Node!5690 (left!13906 Conc!5690) (right!14236 Conc!5690) (csize!11610 Int) (cheight!5901 Int)) (Leaf!8421 (xs!8494 IArray!11385) (csize!11611 Int)) (Empty!5690) )
))
(declare-datatypes ((BalanceConc!11324 0))(
  ( (BalanceConc!11325 (c!255207 Conc!5690)) )
))
(declare-datatypes ((Regex!4349 0))(
  ( (ElementMatch!4349 (c!255208 C!8872)) (Concat!7461 (regOne!9210 Regex!4349) (regTwo!9210 Regex!4349)) (EmptyExpr!4349) (Star!4349 (reg!4678 Regex!4349)) (EmptyLang!4349) (Union!4349 (regOne!9211 Regex!4349) (regTwo!9211 Regex!4349)) )
))
(declare-datatypes ((String!19887 0))(
  ( (String!19888 (value!95770 String)) )
))
(declare-datatypes ((TokenValueInjection!5882 0))(
  ( (TokenValueInjection!5883 (toValue!4416 Int) (toChars!4275 Int)) )
))
(declare-datatypes ((Rule!5842 0))(
  ( (Rule!5843 (regex!3021 Regex!4349) (tag!3287 String!19887) (isSeparator!3021 Bool) (transformation!3021 TokenValueInjection!5882)) )
))
(declare-datatypes ((Token!5608 0))(
  ( (Token!5609 (value!95771 TokenValue!3111) (rule!4813 Rule!5842) (size!13874 Int) (originalCharacters!3835 List!17264)) )
))
(declare-datatypes ((List!17265 0))(
  ( (Nil!17195) (Cons!17195 (h!22596 Token!5608) (t!143168 List!17265)) )
))
(declare-fun tokens!457 () List!17265)

(declare-fun tp!463078 () Bool)

(declare-fun e!1010623 () Bool)

(declare-fun inv!21 (TokenValue!3111) Bool)

(assert (=> b!1573681 (= e!1010621 (and (inv!21 (value!95771 (h!22596 tokens!457))) e!1010623 tp!463078))))

(declare-fun b!1573682 () Bool)

(declare-fun res!701367 () Bool)

(declare-fun e!1010626 () Bool)

(assert (=> b!1573682 (=> (not res!701367) (not e!1010626))))

(declare-datatypes ((List!17266 0))(
  ( (Nil!17196) (Cons!17196 (h!22597 Rule!5842) (t!143169 List!17266)) )
))
(declare-fun rules!1846 () List!17266)

(declare-fun isEmpty!10271 (List!17266) Bool)

(assert (=> b!1573682 (= res!701367 (not (isEmpty!10271 rules!1846)))))

(declare-fun e!1010630 () Bool)

(assert (=> b!1573683 (= e!1010630 (and tp!463075 tp!463071))))

(declare-fun res!701372 () Bool)

(assert (=> start!146826 (=> (not res!701372) (not e!1010626))))

(declare-datatypes ((LexerInterface!2650 0))(
  ( (LexerInterfaceExt!2647 (__x!11525 Int)) (Lexer!2648) )
))
(declare-fun thiss!17113 () LexerInterface!2650)

(get-info :version)

(assert (=> start!146826 (= res!701372 ((_ is Lexer!2648) thiss!17113))))

(assert (=> start!146826 e!1010626))

(assert (=> start!146826 true))

(declare-fun e!1010624 () Bool)

(assert (=> start!146826 e!1010624))

(declare-fun e!1010619 () Bool)

(assert (=> start!146826 e!1010619))

(declare-fun tp!463076 () Bool)

(declare-fun b!1573684 () Bool)

(declare-fun e!1010627 () Bool)

(declare-fun e!1010622 () Bool)

(declare-fun inv!22601 (String!19887) Bool)

(declare-fun inv!22604 (TokenValueInjection!5882) Bool)

(assert (=> b!1573684 (= e!1010627 (and tp!463076 (inv!22601 (tag!3287 (h!22597 rules!1846))) (inv!22604 (transformation!3021 (h!22597 rules!1846))) e!1010622))))

(assert (=> b!1573685 (= e!1010622 (and tp!463077 tp!463074))))

(declare-fun b!1573686 () Bool)

(declare-fun res!701368 () Bool)

(assert (=> b!1573686 (=> (not res!701368) (not e!1010626))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!343 (LexerInterface!2650 List!17265 List!17266) Bool)

(assert (=> b!1573686 (= res!701368 (tokensListTwoByTwoPredicateSeparableList!343 thiss!17113 tokens!457 rules!1846))))

(declare-fun tp!463073 () Bool)

(declare-fun b!1573687 () Bool)

(declare-fun inv!22605 (Token!5608) Bool)

(assert (=> b!1573687 (= e!1010619 (and (inv!22605 (h!22596 tokens!457)) e!1010621 tp!463073))))

(declare-fun b!1573688 () Bool)

(declare-fun e!1010620 () Bool)

(assert (=> b!1573688 (= e!1010626 e!1010620)))

(declare-fun res!701371 () Bool)

(assert (=> b!1573688 (=> (not res!701371) (not e!1010620))))

(declare-fun lt!547028 () List!17264)

(declare-fun lt!547030 () List!17264)

(assert (=> b!1573688 (= res!701371 (= lt!547028 lt!547030))))

(declare-fun lt!547032 () List!17264)

(declare-fun lt!547026 () List!17264)

(declare-fun ++!4457 (List!17264 List!17264) List!17264)

(assert (=> b!1573688 (= lt!547030 (++!4457 lt!547032 lt!547026))))

(declare-fun lt!547025 () BalanceConc!11324)

(declare-fun list!6604 (BalanceConc!11324) List!17264)

(assert (=> b!1573688 (= lt!547028 (list!6604 lt!547025))))

(declare-fun lt!547027 () BalanceConc!11324)

(assert (=> b!1573688 (= lt!547026 (list!6604 lt!547027))))

(declare-fun charsOf!1670 (Token!5608) BalanceConc!11324)

(assert (=> b!1573688 (= lt!547032 (list!6604 (charsOf!1670 (h!22596 tokens!457))))))

(declare-datatypes ((IArray!11387 0))(
  ( (IArray!11388 (innerList!5751 List!17265)) )
))
(declare-datatypes ((Conc!5691 0))(
  ( (Node!5691 (left!13907 Conc!5691) (right!14237 Conc!5691) (csize!11612 Int) (cheight!5902 Int)) (Leaf!8422 (xs!8495 IArray!11387) (csize!11613 Int)) (Empty!5691) )
))
(declare-datatypes ((BalanceConc!11326 0))(
  ( (BalanceConc!11327 (c!255209 Conc!5691)) )
))
(declare-datatypes ((tuple2!16678 0))(
  ( (tuple2!16679 (_1!9741 BalanceConc!11326) (_2!9741 BalanceConc!11324)) )
))
(declare-fun lt!547029 () tuple2!16678)

(declare-fun lex!1134 (LexerInterface!2650 List!17266 BalanceConc!11324) tuple2!16678)

(assert (=> b!1573688 (= lt!547029 (lex!1134 thiss!17113 rules!1846 lt!547027))))

(declare-fun print!1181 (LexerInterface!2650 BalanceConc!11326) BalanceConc!11324)

(declare-fun seqFromList!1818 (List!17265) BalanceConc!11326)

(assert (=> b!1573688 (= lt!547027 (print!1181 thiss!17113 (seqFromList!1818 (t!143168 tokens!457))))))

(assert (=> b!1573688 (= lt!547025 (print!1181 thiss!17113 (seqFromList!1818 tokens!457)))))

(declare-fun b!1573689 () Bool)

(declare-fun tp!463070 () Bool)

(assert (=> b!1573689 (= e!1010624 (and e!1010627 tp!463070))))

(declare-fun b!1573690 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!852 (LexerInterface!2650 List!17266 List!17265) Bool)

(assert (=> b!1573690 (= e!1010620 (not (rulesProduceEachTokenIndividuallyList!852 thiss!17113 rules!1846 (t!143168 tokens!457))))))

(declare-fun isPrefix!1281 (List!17264 List!17264) Bool)

(assert (=> b!1573690 (isPrefix!1281 lt!547032 lt!547030)))

(declare-datatypes ((Unit!26567 0))(
  ( (Unit!26568) )
))
(declare-fun lt!547031 () Unit!26567)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!806 (List!17264 List!17264) Unit!26567)

(assert (=> b!1573690 (= lt!547031 (lemmaConcatTwoListThenFirstIsPrefix!806 lt!547032 lt!547026))))

(declare-fun b!1573691 () Bool)

(declare-fun tp!463072 () Bool)

(assert (=> b!1573691 (= e!1010623 (and tp!463072 (inv!22601 (tag!3287 (rule!4813 (h!22596 tokens!457)))) (inv!22604 (transformation!3021 (rule!4813 (h!22596 tokens!457)))) e!1010630))))

(declare-fun b!1573692 () Bool)

(declare-fun res!701370 () Bool)

(assert (=> b!1573692 (=> (not res!701370) (not e!1010626))))

(assert (=> b!1573692 (= res!701370 (and (not ((_ is Nil!17195) tokens!457)) (not ((_ is Nil!17195) (t!143168 tokens!457)))))))

(declare-fun b!1573693 () Bool)

(declare-fun res!701369 () Bool)

(assert (=> b!1573693 (=> (not res!701369) (not e!1010626))))

(assert (=> b!1573693 (= res!701369 (rulesProduceEachTokenIndividuallyList!852 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1573694 () Bool)

(declare-fun res!701366 () Bool)

(assert (=> b!1573694 (=> (not res!701366) (not e!1010626))))

(declare-fun rulesInvariant!2319 (LexerInterface!2650 List!17266) Bool)

(assert (=> b!1573694 (= res!701366 (rulesInvariant!2319 thiss!17113 rules!1846))))

(assert (= (and start!146826 res!701372) b!1573682))

(assert (= (and b!1573682 res!701367) b!1573694))

(assert (= (and b!1573694 res!701366) b!1573693))

(assert (= (and b!1573693 res!701369) b!1573686))

(assert (= (and b!1573686 res!701368) b!1573692))

(assert (= (and b!1573692 res!701370) b!1573688))

(assert (= (and b!1573688 res!701371) b!1573690))

(assert (= b!1573684 b!1573685))

(assert (= b!1573689 b!1573684))

(assert (= (and start!146826 ((_ is Cons!17196) rules!1846)) b!1573689))

(assert (= b!1573691 b!1573683))

(assert (= b!1573681 b!1573691))

(assert (= b!1573687 b!1573681))

(assert (= (and start!146826 ((_ is Cons!17195) tokens!457)) b!1573687))

(declare-fun m!1852603 () Bool)

(assert (=> b!1573681 m!1852603))

(declare-fun m!1852605 () Bool)

(assert (=> b!1573686 m!1852605))

(declare-fun m!1852607 () Bool)

(assert (=> b!1573693 m!1852607))

(declare-fun m!1852609 () Bool)

(assert (=> b!1573691 m!1852609))

(declare-fun m!1852611 () Bool)

(assert (=> b!1573691 m!1852611))

(declare-fun m!1852613 () Bool)

(assert (=> b!1573684 m!1852613))

(declare-fun m!1852615 () Bool)

(assert (=> b!1573684 m!1852615))

(declare-fun m!1852617 () Bool)

(assert (=> b!1573682 m!1852617))

(declare-fun m!1852619 () Bool)

(assert (=> b!1573688 m!1852619))

(declare-fun m!1852621 () Bool)

(assert (=> b!1573688 m!1852621))

(declare-fun m!1852623 () Bool)

(assert (=> b!1573688 m!1852623))

(declare-fun m!1852625 () Bool)

(assert (=> b!1573688 m!1852625))

(declare-fun m!1852627 () Bool)

(assert (=> b!1573688 m!1852627))

(assert (=> b!1573688 m!1852619))

(declare-fun m!1852629 () Bool)

(assert (=> b!1573688 m!1852629))

(declare-fun m!1852631 () Bool)

(assert (=> b!1573688 m!1852631))

(declare-fun m!1852633 () Bool)

(assert (=> b!1573688 m!1852633))

(declare-fun m!1852635 () Bool)

(assert (=> b!1573688 m!1852635))

(assert (=> b!1573688 m!1852633))

(declare-fun m!1852637 () Bool)

(assert (=> b!1573688 m!1852637))

(assert (=> b!1573688 m!1852621))

(declare-fun m!1852639 () Bool)

(assert (=> b!1573690 m!1852639))

(declare-fun m!1852641 () Bool)

(assert (=> b!1573690 m!1852641))

(declare-fun m!1852643 () Bool)

(assert (=> b!1573690 m!1852643))

(declare-fun m!1852645 () Bool)

(assert (=> b!1573687 m!1852645))

(declare-fun m!1852647 () Bool)

(assert (=> b!1573694 m!1852647))

(check-sat b_and!110041 b_and!110037 b_and!110039 (not b!1573691) (not b!1573690) (not b!1573681) (not b!1573689) (not b!1573694) (not b_next!42935) (not b!1573687) (not b!1573693) (not b_next!42941) (not b_next!42939) (not b!1573684) b_and!110043 (not b!1573688) (not b!1573682) (not b!1573686) (not b_next!42937))
(check-sat b_and!110041 b_and!110037 b_and!110039 (not b_next!42935) b_and!110043 (not b_next!42937) (not b_next!42941) (not b_next!42939))
(get-model)

(declare-fun b!1573765 () Bool)

(declare-fun e!1010682 () Bool)

(assert (=> b!1573765 (= e!1010682 true)))

(declare-fun b!1573764 () Bool)

(declare-fun e!1010681 () Bool)

(assert (=> b!1573764 (= e!1010681 e!1010682)))

(declare-fun b!1573763 () Bool)

(declare-fun e!1010680 () Bool)

(assert (=> b!1573763 (= e!1010680 e!1010681)))

(declare-fun d!467411 () Bool)

(assert (=> d!467411 e!1010680))

(assert (= b!1573764 b!1573765))

(assert (= b!1573763 b!1573764))

(assert (= (and d!467411 ((_ is Cons!17196) rules!1846)) b!1573763))

(declare-fun lambda!66343 () Int)

(declare-fun order!10125 () Int)

(declare-fun order!10127 () Int)

(declare-fun dynLambda!7621 (Int Int) Int)

(declare-fun dynLambda!7622 (Int Int) Int)

(assert (=> b!1573765 (< (dynLambda!7621 order!10125 (toValue!4416 (transformation!3021 (h!22597 rules!1846)))) (dynLambda!7622 order!10127 lambda!66343))))

(declare-fun order!10129 () Int)

(declare-fun dynLambda!7625 (Int Int) Int)

(assert (=> b!1573765 (< (dynLambda!7625 order!10129 (toChars!4275 (transformation!3021 (h!22597 rules!1846)))) (dynLambda!7622 order!10127 lambda!66343))))

(assert (=> d!467411 true))

(declare-fun lt!547071 () Bool)

(declare-fun forall!3971 (List!17265 Int) Bool)

(assert (=> d!467411 (= lt!547071 (forall!3971 tokens!457 lambda!66343))))

(declare-fun e!1010673 () Bool)

(assert (=> d!467411 (= lt!547071 e!1010673)))

(declare-fun res!701422 () Bool)

(assert (=> d!467411 (=> res!701422 e!1010673)))

(assert (=> d!467411 (= res!701422 (not ((_ is Cons!17195) tokens!457)))))

(assert (=> d!467411 (not (isEmpty!10271 rules!1846))))

(assert (=> d!467411 (= (rulesProduceEachTokenIndividuallyList!852 thiss!17113 rules!1846 tokens!457) lt!547071)))

(declare-fun b!1573753 () Bool)

(declare-fun e!1010672 () Bool)

(assert (=> b!1573753 (= e!1010673 e!1010672)))

(declare-fun res!701421 () Bool)

(assert (=> b!1573753 (=> (not res!701421) (not e!1010672))))

(declare-fun rulesProduceIndividualToken!1322 (LexerInterface!2650 List!17266 Token!5608) Bool)

(assert (=> b!1573753 (= res!701421 (rulesProduceIndividualToken!1322 thiss!17113 rules!1846 (h!22596 tokens!457)))))

(declare-fun b!1573754 () Bool)

(assert (=> b!1573754 (= e!1010672 (rulesProduceEachTokenIndividuallyList!852 thiss!17113 rules!1846 (t!143168 tokens!457)))))

(assert (= (and d!467411 (not res!701422)) b!1573753))

(assert (= (and b!1573753 res!701421) b!1573754))

(declare-fun m!1852743 () Bool)

(assert (=> d!467411 m!1852743))

(assert (=> d!467411 m!1852617))

(declare-fun m!1852745 () Bool)

(assert (=> b!1573753 m!1852745))

(assert (=> b!1573754 m!1852639))

(assert (=> b!1573693 d!467411))

(declare-fun d!467445 () Bool)

(assert (=> d!467445 (= (isEmpty!10271 rules!1846) ((_ is Nil!17196) rules!1846))))

(assert (=> b!1573682 d!467445))

(declare-fun d!467447 () Bool)

(declare-fun res!701427 () Bool)

(declare-fun e!1010685 () Bool)

(assert (=> d!467447 (=> (not res!701427) (not e!1010685))))

(declare-fun isEmpty!10274 (List!17264) Bool)

(assert (=> d!467447 (= res!701427 (not (isEmpty!10274 (originalCharacters!3835 (h!22596 tokens!457)))))))

(assert (=> d!467447 (= (inv!22605 (h!22596 tokens!457)) e!1010685)))

(declare-fun b!1573772 () Bool)

(declare-fun res!701428 () Bool)

(assert (=> b!1573772 (=> (not res!701428) (not e!1010685))))

(declare-fun dynLambda!7627 (Int TokenValue!3111) BalanceConc!11324)

(assert (=> b!1573772 (= res!701428 (= (originalCharacters!3835 (h!22596 tokens!457)) (list!6604 (dynLambda!7627 (toChars!4275 (transformation!3021 (rule!4813 (h!22596 tokens!457)))) (value!95771 (h!22596 tokens!457))))))))

(declare-fun b!1573773 () Bool)

(declare-fun size!13878 (List!17264) Int)

(assert (=> b!1573773 (= e!1010685 (= (size!13874 (h!22596 tokens!457)) (size!13878 (originalCharacters!3835 (h!22596 tokens!457)))))))

(assert (= (and d!467447 res!701427) b!1573772))

(assert (= (and b!1573772 res!701428) b!1573773))

(declare-fun b_lambda!49533 () Bool)

(assert (=> (not b_lambda!49533) (not b!1573772)))

(declare-fun t!143179 () Bool)

(declare-fun tb!88619 () Bool)

(assert (=> (and b!1573683 (= (toChars!4275 (transformation!3021 (rule!4813 (h!22596 tokens!457)))) (toChars!4275 (transformation!3021 (rule!4813 (h!22596 tokens!457))))) t!143179) tb!88619))

(declare-fun b!1573778 () Bool)

(declare-fun e!1010688 () Bool)

(declare-fun tp!463084 () Bool)

(declare-fun inv!22608 (Conc!5690) Bool)

(assert (=> b!1573778 (= e!1010688 (and (inv!22608 (c!255207 (dynLambda!7627 (toChars!4275 (transformation!3021 (rule!4813 (h!22596 tokens!457)))) (value!95771 (h!22596 tokens!457))))) tp!463084))))

(declare-fun result!107144 () Bool)

(declare-fun inv!22609 (BalanceConc!11324) Bool)

(assert (=> tb!88619 (= result!107144 (and (inv!22609 (dynLambda!7627 (toChars!4275 (transformation!3021 (rule!4813 (h!22596 tokens!457)))) (value!95771 (h!22596 tokens!457)))) e!1010688))))

(assert (= tb!88619 b!1573778))

(declare-fun m!1852747 () Bool)

(assert (=> b!1573778 m!1852747))

(declare-fun m!1852749 () Bool)

(assert (=> tb!88619 m!1852749))

(assert (=> b!1573772 t!143179))

(declare-fun b_and!110053 () Bool)

(assert (= b_and!110039 (and (=> t!143179 result!107144) b_and!110053)))

(declare-fun t!143181 () Bool)

(declare-fun tb!88621 () Bool)

(assert (=> (and b!1573685 (= (toChars!4275 (transformation!3021 (h!22597 rules!1846))) (toChars!4275 (transformation!3021 (rule!4813 (h!22596 tokens!457))))) t!143181) tb!88621))

(declare-fun result!107148 () Bool)

(assert (= result!107148 result!107144))

(assert (=> b!1573772 t!143181))

(declare-fun b_and!110055 () Bool)

(assert (= b_and!110043 (and (=> t!143181 result!107148) b_and!110055)))

(declare-fun m!1852751 () Bool)

(assert (=> d!467447 m!1852751))

(declare-fun m!1852753 () Bool)

(assert (=> b!1573772 m!1852753))

(assert (=> b!1573772 m!1852753))

(declare-fun m!1852755 () Bool)

(assert (=> b!1573772 m!1852755))

(declare-fun m!1852757 () Bool)

(assert (=> b!1573773 m!1852757))

(assert (=> b!1573687 d!467447))

(declare-fun b!1573789 () Bool)

(declare-fun e!1010695 () Bool)

(declare-fun inv!17 (TokenValue!3111) Bool)

(assert (=> b!1573789 (= e!1010695 (inv!17 (value!95771 (h!22596 tokens!457))))))

(declare-fun b!1573790 () Bool)

(declare-fun e!1010696 () Bool)

(declare-fun inv!15 (TokenValue!3111) Bool)

(assert (=> b!1573790 (= e!1010696 (inv!15 (value!95771 (h!22596 tokens!457))))))

(declare-fun d!467449 () Bool)

(declare-fun c!255220 () Bool)

(assert (=> d!467449 (= c!255220 ((_ is IntegerValue!9333) (value!95771 (h!22596 tokens!457))))))

(declare-fun e!1010697 () Bool)

(assert (=> d!467449 (= (inv!21 (value!95771 (h!22596 tokens!457))) e!1010697)))

(declare-fun b!1573791 () Bool)

(declare-fun res!701431 () Bool)

(assert (=> b!1573791 (=> res!701431 e!1010696)))

(assert (=> b!1573791 (= res!701431 (not ((_ is IntegerValue!9335) (value!95771 (h!22596 tokens!457)))))))

(assert (=> b!1573791 (= e!1010695 e!1010696)))

(declare-fun b!1573792 () Bool)

(assert (=> b!1573792 (= e!1010697 e!1010695)))

(declare-fun c!255221 () Bool)

(assert (=> b!1573792 (= c!255221 ((_ is IntegerValue!9334) (value!95771 (h!22596 tokens!457))))))

(declare-fun b!1573793 () Bool)

(declare-fun inv!16 (TokenValue!3111) Bool)

(assert (=> b!1573793 (= e!1010697 (inv!16 (value!95771 (h!22596 tokens!457))))))

(assert (= (and d!467449 c!255220) b!1573793))

(assert (= (and d!467449 (not c!255220)) b!1573792))

(assert (= (and b!1573792 c!255221) b!1573789))

(assert (= (and b!1573792 (not c!255221)) b!1573791))

(assert (= (and b!1573791 (not res!701431)) b!1573790))

(declare-fun m!1852759 () Bool)

(assert (=> b!1573789 m!1852759))

(declare-fun m!1852761 () Bool)

(assert (=> b!1573790 m!1852761))

(declare-fun m!1852763 () Bool)

(assert (=> b!1573793 m!1852763))

(assert (=> b!1573681 d!467449))

(declare-fun d!467451 () Bool)

(declare-fun res!701436 () Bool)

(declare-fun e!1010703 () Bool)

(assert (=> d!467451 (=> res!701436 e!1010703)))

(assert (=> d!467451 (= res!701436 (or (not ((_ is Cons!17195) tokens!457)) (not ((_ is Cons!17195) (t!143168 tokens!457)))))))

(assert (=> d!467451 (= (tokensListTwoByTwoPredicateSeparableList!343 thiss!17113 tokens!457 rules!1846) e!1010703)))

(declare-fun b!1573798 () Bool)

(declare-fun e!1010702 () Bool)

(assert (=> b!1573798 (= e!1010703 e!1010702)))

(declare-fun res!701437 () Bool)

(assert (=> b!1573798 (=> (not res!701437) (not e!1010702))))

(declare-fun separableTokensPredicate!602 (LexerInterface!2650 Token!5608 Token!5608 List!17266) Bool)

(assert (=> b!1573798 (= res!701437 (separableTokensPredicate!602 thiss!17113 (h!22596 tokens!457) (h!22596 (t!143168 tokens!457)) rules!1846))))

(declare-fun lt!547089 () Unit!26567)

(declare-fun Unit!26572 () Unit!26567)

(assert (=> b!1573798 (= lt!547089 Unit!26572)))

(declare-fun size!13879 (BalanceConc!11324) Int)

(assert (=> b!1573798 (> (size!13879 (charsOf!1670 (h!22596 (t!143168 tokens!457)))) 0)))

(declare-fun lt!547088 () Unit!26567)

(declare-fun Unit!26573 () Unit!26567)

(assert (=> b!1573798 (= lt!547088 Unit!26573)))

(assert (=> b!1573798 (rulesProduceIndividualToken!1322 thiss!17113 rules!1846 (h!22596 (t!143168 tokens!457)))))

(declare-fun lt!547092 () Unit!26567)

(declare-fun Unit!26574 () Unit!26567)

(assert (=> b!1573798 (= lt!547092 Unit!26574)))

(assert (=> b!1573798 (rulesProduceIndividualToken!1322 thiss!17113 rules!1846 (h!22596 tokens!457))))

(declare-fun lt!547087 () Unit!26567)

(declare-fun lt!547090 () Unit!26567)

(assert (=> b!1573798 (= lt!547087 lt!547090)))

(assert (=> b!1573798 (rulesProduceIndividualToken!1322 thiss!17113 rules!1846 (h!22596 (t!143168 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!501 (LexerInterface!2650 List!17266 List!17265 Token!5608) Unit!26567)

(assert (=> b!1573798 (= lt!547090 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!501 thiss!17113 rules!1846 tokens!457 (h!22596 (t!143168 tokens!457))))))

(declare-fun lt!547091 () Unit!26567)

(declare-fun lt!547086 () Unit!26567)

(assert (=> b!1573798 (= lt!547091 lt!547086)))

(assert (=> b!1573798 (rulesProduceIndividualToken!1322 thiss!17113 rules!1846 (h!22596 tokens!457))))

(assert (=> b!1573798 (= lt!547086 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!501 thiss!17113 rules!1846 tokens!457 (h!22596 tokens!457)))))

(declare-fun b!1573799 () Bool)

(assert (=> b!1573799 (= e!1010702 (tokensListTwoByTwoPredicateSeparableList!343 thiss!17113 (Cons!17195 (h!22596 (t!143168 tokens!457)) (t!143168 (t!143168 tokens!457))) rules!1846))))

(assert (= (and d!467451 (not res!701436)) b!1573798))

(assert (= (and b!1573798 res!701437) b!1573799))

(declare-fun m!1852765 () Bool)

(assert (=> b!1573798 m!1852765))

(declare-fun m!1852767 () Bool)

(assert (=> b!1573798 m!1852767))

(declare-fun m!1852769 () Bool)

(assert (=> b!1573798 m!1852769))

(declare-fun m!1852771 () Bool)

(assert (=> b!1573798 m!1852771))

(declare-fun m!1852773 () Bool)

(assert (=> b!1573798 m!1852773))

(assert (=> b!1573798 m!1852767))

(declare-fun m!1852775 () Bool)

(assert (=> b!1573798 m!1852775))

(assert (=> b!1573798 m!1852745))

(declare-fun m!1852777 () Bool)

(assert (=> b!1573799 m!1852777))

(assert (=> b!1573686 d!467451))

(declare-fun d!467453 () Bool)

(assert (=> d!467453 (= (inv!22601 (tag!3287 (rule!4813 (h!22596 tokens!457)))) (= (mod (str.len (value!95770 (tag!3287 (rule!4813 (h!22596 tokens!457))))) 2) 0))))

(assert (=> b!1573691 d!467453))

(declare-fun d!467455 () Bool)

(declare-fun res!701440 () Bool)

(declare-fun e!1010706 () Bool)

(assert (=> d!467455 (=> (not res!701440) (not e!1010706))))

(declare-fun semiInverseModEq!1136 (Int Int) Bool)

(assert (=> d!467455 (= res!701440 (semiInverseModEq!1136 (toChars!4275 (transformation!3021 (rule!4813 (h!22596 tokens!457)))) (toValue!4416 (transformation!3021 (rule!4813 (h!22596 tokens!457))))))))

(assert (=> d!467455 (= (inv!22604 (transformation!3021 (rule!4813 (h!22596 tokens!457)))) e!1010706)))

(declare-fun b!1573802 () Bool)

(declare-fun equivClasses!1077 (Int Int) Bool)

(assert (=> b!1573802 (= e!1010706 (equivClasses!1077 (toChars!4275 (transformation!3021 (rule!4813 (h!22596 tokens!457)))) (toValue!4416 (transformation!3021 (rule!4813 (h!22596 tokens!457))))))))

(assert (= (and d!467455 res!701440) b!1573802))

(declare-fun m!1852779 () Bool)

(assert (=> d!467455 m!1852779))

(declare-fun m!1852781 () Bool)

(assert (=> b!1573802 m!1852781))

(assert (=> b!1573691 d!467455))

(declare-fun bs!390389 () Bool)

(declare-fun d!467457 () Bool)

(assert (= bs!390389 (and d!467457 d!467411)))

(declare-fun lambda!66344 () Int)

(assert (=> bs!390389 (= lambda!66344 lambda!66343)))

(declare-fun b!1573807 () Bool)

(declare-fun e!1010711 () Bool)

(assert (=> b!1573807 (= e!1010711 true)))

(declare-fun b!1573806 () Bool)

(declare-fun e!1010710 () Bool)

(assert (=> b!1573806 (= e!1010710 e!1010711)))

(declare-fun b!1573805 () Bool)

(declare-fun e!1010709 () Bool)

(assert (=> b!1573805 (= e!1010709 e!1010710)))

(assert (=> d!467457 e!1010709))

(assert (= b!1573806 b!1573807))

(assert (= b!1573805 b!1573806))

(assert (= (and d!467457 ((_ is Cons!17196) rules!1846)) b!1573805))

(assert (=> b!1573807 (< (dynLambda!7621 order!10125 (toValue!4416 (transformation!3021 (h!22597 rules!1846)))) (dynLambda!7622 order!10127 lambda!66344))))

(assert (=> b!1573807 (< (dynLambda!7625 order!10129 (toChars!4275 (transformation!3021 (h!22597 rules!1846)))) (dynLambda!7622 order!10127 lambda!66344))))

(assert (=> d!467457 true))

(declare-fun lt!547093 () Bool)

(assert (=> d!467457 (= lt!547093 (forall!3971 (t!143168 tokens!457) lambda!66344))))

(declare-fun e!1010708 () Bool)

(assert (=> d!467457 (= lt!547093 e!1010708)))

(declare-fun res!701442 () Bool)

(assert (=> d!467457 (=> res!701442 e!1010708)))

(assert (=> d!467457 (= res!701442 (not ((_ is Cons!17195) (t!143168 tokens!457))))))

(assert (=> d!467457 (not (isEmpty!10271 rules!1846))))

(assert (=> d!467457 (= (rulesProduceEachTokenIndividuallyList!852 thiss!17113 rules!1846 (t!143168 tokens!457)) lt!547093)))

(declare-fun b!1573803 () Bool)

(declare-fun e!1010707 () Bool)

(assert (=> b!1573803 (= e!1010708 e!1010707)))

(declare-fun res!701441 () Bool)

(assert (=> b!1573803 (=> (not res!701441) (not e!1010707))))

(assert (=> b!1573803 (= res!701441 (rulesProduceIndividualToken!1322 thiss!17113 rules!1846 (h!22596 (t!143168 tokens!457))))))

(declare-fun b!1573804 () Bool)

(assert (=> b!1573804 (= e!1010707 (rulesProduceEachTokenIndividuallyList!852 thiss!17113 rules!1846 (t!143168 (t!143168 tokens!457))))))

(assert (= (and d!467457 (not res!701442)) b!1573803))

(assert (= (and b!1573803 res!701441) b!1573804))

(declare-fun m!1852783 () Bool)

(assert (=> d!467457 m!1852783))

(assert (=> d!467457 m!1852617))

(assert (=> b!1573803 m!1852771))

(declare-fun m!1852785 () Bool)

(assert (=> b!1573804 m!1852785))

(assert (=> b!1573690 d!467457))

(declare-fun b!1573817 () Bool)

(declare-fun res!701454 () Bool)

(declare-fun e!1010718 () Bool)

(assert (=> b!1573817 (=> (not res!701454) (not e!1010718))))

(declare-fun head!3151 (List!17264) C!8872)

(assert (=> b!1573817 (= res!701454 (= (head!3151 lt!547032) (head!3151 lt!547030)))))

(declare-fun d!467459 () Bool)

(declare-fun e!1010719 () Bool)

(assert (=> d!467459 e!1010719))

(declare-fun res!701453 () Bool)

(assert (=> d!467459 (=> res!701453 e!1010719)))

(declare-fun lt!547096 () Bool)

(assert (=> d!467459 (= res!701453 (not lt!547096))))

(declare-fun e!1010720 () Bool)

(assert (=> d!467459 (= lt!547096 e!1010720)))

(declare-fun res!701452 () Bool)

(assert (=> d!467459 (=> res!701452 e!1010720)))

(assert (=> d!467459 (= res!701452 ((_ is Nil!17194) lt!547032))))

(assert (=> d!467459 (= (isPrefix!1281 lt!547032 lt!547030) lt!547096)))

(declare-fun b!1573816 () Bool)

(assert (=> b!1573816 (= e!1010720 e!1010718)))

(declare-fun res!701451 () Bool)

(assert (=> b!1573816 (=> (not res!701451) (not e!1010718))))

(assert (=> b!1573816 (= res!701451 (not ((_ is Nil!17194) lt!547030)))))

(declare-fun b!1573818 () Bool)

(declare-fun tail!2232 (List!17264) List!17264)

(assert (=> b!1573818 (= e!1010718 (isPrefix!1281 (tail!2232 lt!547032) (tail!2232 lt!547030)))))

(declare-fun b!1573819 () Bool)

(assert (=> b!1573819 (= e!1010719 (>= (size!13878 lt!547030) (size!13878 lt!547032)))))

(assert (= (and d!467459 (not res!701452)) b!1573816))

(assert (= (and b!1573816 res!701451) b!1573817))

(assert (= (and b!1573817 res!701454) b!1573818))

(assert (= (and d!467459 (not res!701453)) b!1573819))

(declare-fun m!1852787 () Bool)

(assert (=> b!1573817 m!1852787))

(declare-fun m!1852789 () Bool)

(assert (=> b!1573817 m!1852789))

(declare-fun m!1852791 () Bool)

(assert (=> b!1573818 m!1852791))

(declare-fun m!1852793 () Bool)

(assert (=> b!1573818 m!1852793))

(assert (=> b!1573818 m!1852791))

(assert (=> b!1573818 m!1852793))

(declare-fun m!1852795 () Bool)

(assert (=> b!1573818 m!1852795))

(declare-fun m!1852797 () Bool)

(assert (=> b!1573819 m!1852797))

(declare-fun m!1852799 () Bool)

(assert (=> b!1573819 m!1852799))

(assert (=> b!1573690 d!467459))

(declare-fun d!467461 () Bool)

(assert (=> d!467461 (isPrefix!1281 lt!547032 (++!4457 lt!547032 lt!547026))))

(declare-fun lt!547099 () Unit!26567)

(declare-fun choose!9417 (List!17264 List!17264) Unit!26567)

(assert (=> d!467461 (= lt!547099 (choose!9417 lt!547032 lt!547026))))

(assert (=> d!467461 (= (lemmaConcatTwoListThenFirstIsPrefix!806 lt!547032 lt!547026) lt!547099)))

(declare-fun bs!390390 () Bool)

(assert (= bs!390390 d!467461))

(assert (=> bs!390390 m!1852627))

(assert (=> bs!390390 m!1852627))

(declare-fun m!1852801 () Bool)

(assert (=> bs!390390 m!1852801))

(declare-fun m!1852803 () Bool)

(assert (=> bs!390390 m!1852803))

(assert (=> b!1573690 d!467461))

(declare-fun d!467463 () Bool)

(assert (=> d!467463 (= (inv!22601 (tag!3287 (h!22597 rules!1846))) (= (mod (str.len (value!95770 (tag!3287 (h!22597 rules!1846)))) 2) 0))))

(assert (=> b!1573684 d!467463))

(declare-fun d!467465 () Bool)

(declare-fun res!701455 () Bool)

(declare-fun e!1010721 () Bool)

(assert (=> d!467465 (=> (not res!701455) (not e!1010721))))

(assert (=> d!467465 (= res!701455 (semiInverseModEq!1136 (toChars!4275 (transformation!3021 (h!22597 rules!1846))) (toValue!4416 (transformation!3021 (h!22597 rules!1846)))))))

(assert (=> d!467465 (= (inv!22604 (transformation!3021 (h!22597 rules!1846))) e!1010721)))

(declare-fun b!1573820 () Bool)

(assert (=> b!1573820 (= e!1010721 (equivClasses!1077 (toChars!4275 (transformation!3021 (h!22597 rules!1846))) (toValue!4416 (transformation!3021 (h!22597 rules!1846)))))))

(assert (= (and d!467465 res!701455) b!1573820))

(declare-fun m!1852805 () Bool)

(assert (=> d!467465 m!1852805))

(declare-fun m!1852807 () Bool)

(assert (=> b!1573820 m!1852807))

(assert (=> b!1573684 d!467465))

(declare-fun d!467467 () Bool)

(declare-fun res!701458 () Bool)

(declare-fun e!1010724 () Bool)

(assert (=> d!467467 (=> (not res!701458) (not e!1010724))))

(declare-fun rulesValid!1064 (LexerInterface!2650 List!17266) Bool)

(assert (=> d!467467 (= res!701458 (rulesValid!1064 thiss!17113 rules!1846))))

(assert (=> d!467467 (= (rulesInvariant!2319 thiss!17113 rules!1846) e!1010724)))

(declare-fun b!1573823 () Bool)

(declare-datatypes ((List!17268 0))(
  ( (Nil!17198) (Cons!17198 (h!22599 String!19887) (t!143191 List!17268)) )
))
(declare-fun noDuplicateTag!1064 (LexerInterface!2650 List!17266 List!17268) Bool)

(assert (=> b!1573823 (= e!1010724 (noDuplicateTag!1064 thiss!17113 rules!1846 Nil!17198))))

(assert (= (and d!467467 res!701458) b!1573823))

(declare-fun m!1852809 () Bool)

(assert (=> d!467467 m!1852809))

(declare-fun m!1852811 () Bool)

(assert (=> b!1573823 m!1852811))

(assert (=> b!1573694 d!467467))

(declare-fun d!467469 () Bool)

(declare-fun lt!547102 () BalanceConc!11324)

(declare-fun printList!783 (LexerInterface!2650 List!17265) List!17264)

(declare-fun list!6607 (BalanceConc!11326) List!17265)

(assert (=> d!467469 (= (list!6604 lt!547102) (printList!783 thiss!17113 (list!6607 (seqFromList!1818 tokens!457))))))

(declare-fun printTailRec!719 (LexerInterface!2650 BalanceConc!11326 Int BalanceConc!11324) BalanceConc!11324)

(assert (=> d!467469 (= lt!547102 (printTailRec!719 thiss!17113 (seqFromList!1818 tokens!457) 0 (BalanceConc!11325 Empty!5690)))))

(assert (=> d!467469 (= (print!1181 thiss!17113 (seqFromList!1818 tokens!457)) lt!547102)))

(declare-fun bs!390391 () Bool)

(assert (= bs!390391 d!467469))

(declare-fun m!1852813 () Bool)

(assert (=> bs!390391 m!1852813))

(assert (=> bs!390391 m!1852621))

(declare-fun m!1852815 () Bool)

(assert (=> bs!390391 m!1852815))

(assert (=> bs!390391 m!1852815))

(declare-fun m!1852817 () Bool)

(assert (=> bs!390391 m!1852817))

(assert (=> bs!390391 m!1852621))

(declare-fun m!1852819 () Bool)

(assert (=> bs!390391 m!1852819))

(assert (=> b!1573688 d!467469))

(declare-fun d!467471 () Bool)

(declare-fun list!6608 (Conc!5690) List!17264)

(assert (=> d!467471 (= (list!6604 lt!547025) (list!6608 (c!255207 lt!547025)))))

(declare-fun bs!390392 () Bool)

(assert (= bs!390392 d!467471))

(declare-fun m!1852821 () Bool)

(assert (=> bs!390392 m!1852821))

(assert (=> b!1573688 d!467471))

(declare-fun d!467473 () Bool)

(declare-fun fromListB!777 (List!17265) BalanceConc!11326)

(assert (=> d!467473 (= (seqFromList!1818 tokens!457) (fromListB!777 tokens!457))))

(declare-fun bs!390393 () Bool)

(assert (= bs!390393 d!467473))

(declare-fun m!1852823 () Bool)

(assert (=> bs!390393 m!1852823))

(assert (=> b!1573688 d!467473))

(declare-fun d!467475 () Bool)

(declare-fun lt!547105 () BalanceConc!11324)

(assert (=> d!467475 (= (list!6604 lt!547105) (originalCharacters!3835 (h!22596 tokens!457)))))

(assert (=> d!467475 (= lt!547105 (dynLambda!7627 (toChars!4275 (transformation!3021 (rule!4813 (h!22596 tokens!457)))) (value!95771 (h!22596 tokens!457))))))

(assert (=> d!467475 (= (charsOf!1670 (h!22596 tokens!457)) lt!547105)))

(declare-fun b_lambda!49535 () Bool)

(assert (=> (not b_lambda!49535) (not d!467475)))

(assert (=> d!467475 t!143179))

(declare-fun b_and!110057 () Bool)

(assert (= b_and!110053 (and (=> t!143179 result!107144) b_and!110057)))

(assert (=> d!467475 t!143181))

(declare-fun b_and!110059 () Bool)

(assert (= b_and!110055 (and (=> t!143181 result!107148) b_and!110059)))

(declare-fun m!1852825 () Bool)

(assert (=> d!467475 m!1852825))

(assert (=> d!467475 m!1852753))

(assert (=> b!1573688 d!467475))

(declare-fun b!1573930 () Bool)

(declare-fun e!1010804 () Bool)

(declare-fun e!1010805 () Bool)

(assert (=> b!1573930 (= e!1010804 e!1010805)))

(declare-fun res!701487 () Bool)

(declare-fun lt!547116 () tuple2!16678)

(assert (=> b!1573930 (= res!701487 (< (size!13879 (_2!9741 lt!547116)) (size!13879 lt!547027)))))

(assert (=> b!1573930 (=> (not res!701487) (not e!1010805))))

(declare-fun b!1573931 () Bool)

(declare-fun isEmpty!10275 (BalanceConc!11326) Bool)

(assert (=> b!1573931 (= e!1010805 (not (isEmpty!10275 (_1!9741 lt!547116))))))

(declare-fun b!1573933 () Bool)

(assert (=> b!1573933 (= e!1010804 (= (_2!9741 lt!547116) lt!547027))))

(declare-fun b!1573934 () Bool)

(declare-fun res!701485 () Bool)

(declare-fun e!1010803 () Bool)

(assert (=> b!1573934 (=> (not res!701485) (not e!1010803))))

(declare-datatypes ((tuple2!16682 0))(
  ( (tuple2!16683 (_1!9743 List!17265) (_2!9743 List!17264)) )
))
(declare-fun lexList!765 (LexerInterface!2650 List!17266 List!17264) tuple2!16682)

(assert (=> b!1573934 (= res!701485 (= (list!6607 (_1!9741 lt!547116)) (_1!9743 (lexList!765 thiss!17113 rules!1846 (list!6604 lt!547027)))))))

(declare-fun b!1573932 () Bool)

(assert (=> b!1573932 (= e!1010803 (= (list!6604 (_2!9741 lt!547116)) (_2!9743 (lexList!765 thiss!17113 rules!1846 (list!6604 lt!547027)))))))

(declare-fun d!467477 () Bool)

(assert (=> d!467477 e!1010803))

(declare-fun res!701486 () Bool)

(assert (=> d!467477 (=> (not res!701486) (not e!1010803))))

(assert (=> d!467477 (= res!701486 e!1010804)))

(declare-fun c!255230 () Bool)

(declare-fun size!13880 (BalanceConc!11326) Int)

(assert (=> d!467477 (= c!255230 (> (size!13880 (_1!9741 lt!547116)) 0))))

(declare-fun lexTailRecV2!488 (LexerInterface!2650 List!17266 BalanceConc!11324 BalanceConc!11324 BalanceConc!11324 BalanceConc!11326) tuple2!16678)

(assert (=> d!467477 (= lt!547116 (lexTailRecV2!488 thiss!17113 rules!1846 lt!547027 (BalanceConc!11325 Empty!5690) lt!547027 (BalanceConc!11327 Empty!5691)))))

(assert (=> d!467477 (= (lex!1134 thiss!17113 rules!1846 lt!547027) lt!547116)))

(assert (= (and d!467477 c!255230) b!1573930))

(assert (= (and d!467477 (not c!255230)) b!1573933))

(assert (= (and b!1573930 res!701487) b!1573931))

(assert (= (and d!467477 res!701486) b!1573934))

(assert (= (and b!1573934 res!701485) b!1573932))

(declare-fun m!1852871 () Bool)

(assert (=> b!1573934 m!1852871))

(assert (=> b!1573934 m!1852625))

(assert (=> b!1573934 m!1852625))

(declare-fun m!1852873 () Bool)

(assert (=> b!1573934 m!1852873))

(declare-fun m!1852875 () Bool)

(assert (=> b!1573930 m!1852875))

(declare-fun m!1852877 () Bool)

(assert (=> b!1573930 m!1852877))

(declare-fun m!1852879 () Bool)

(assert (=> b!1573931 m!1852879))

(declare-fun m!1852881 () Bool)

(assert (=> b!1573932 m!1852881))

(assert (=> b!1573932 m!1852625))

(assert (=> b!1573932 m!1852625))

(assert (=> b!1573932 m!1852873))

(declare-fun m!1852883 () Bool)

(assert (=> d!467477 m!1852883))

(declare-fun m!1852885 () Bool)

(assert (=> d!467477 m!1852885))

(assert (=> b!1573688 d!467477))

(declare-fun d!467491 () Bool)

(assert (=> d!467491 (= (list!6604 (charsOf!1670 (h!22596 tokens!457))) (list!6608 (c!255207 (charsOf!1670 (h!22596 tokens!457)))))))

(declare-fun bs!390396 () Bool)

(assert (= bs!390396 d!467491))

(declare-fun m!1852887 () Bool)

(assert (=> bs!390396 m!1852887))

(assert (=> b!1573688 d!467491))

(declare-fun d!467493 () Bool)

(declare-fun lt!547117 () BalanceConc!11324)

(assert (=> d!467493 (= (list!6604 lt!547117) (printList!783 thiss!17113 (list!6607 (seqFromList!1818 (t!143168 tokens!457)))))))

(assert (=> d!467493 (= lt!547117 (printTailRec!719 thiss!17113 (seqFromList!1818 (t!143168 tokens!457)) 0 (BalanceConc!11325 Empty!5690)))))

(assert (=> d!467493 (= (print!1181 thiss!17113 (seqFromList!1818 (t!143168 tokens!457))) lt!547117)))

(declare-fun bs!390397 () Bool)

(assert (= bs!390397 d!467493))

(declare-fun m!1852889 () Bool)

(assert (=> bs!390397 m!1852889))

(assert (=> bs!390397 m!1852633))

(declare-fun m!1852891 () Bool)

(assert (=> bs!390397 m!1852891))

(assert (=> bs!390397 m!1852891))

(declare-fun m!1852893 () Bool)

(assert (=> bs!390397 m!1852893))

(assert (=> bs!390397 m!1852633))

(declare-fun m!1852895 () Bool)

(assert (=> bs!390397 m!1852895))

(assert (=> b!1573688 d!467493))

(declare-fun d!467495 () Bool)

(assert (=> d!467495 (= (list!6604 lt!547027) (list!6608 (c!255207 lt!547027)))))

(declare-fun bs!390398 () Bool)

(assert (= bs!390398 d!467495))

(declare-fun m!1852897 () Bool)

(assert (=> bs!390398 m!1852897))

(assert (=> b!1573688 d!467495))

(declare-fun lt!547120 () List!17264)

(declare-fun e!1010811 () Bool)

(declare-fun b!1573946 () Bool)

(assert (=> b!1573946 (= e!1010811 (or (not (= lt!547026 Nil!17194)) (= lt!547120 lt!547032)))))

(declare-fun b!1573944 () Bool)

(declare-fun e!1010810 () List!17264)

(assert (=> b!1573944 (= e!1010810 (Cons!17194 (h!22595 lt!547032) (++!4457 (t!143167 lt!547032) lt!547026)))))

(declare-fun b!1573943 () Bool)

(assert (=> b!1573943 (= e!1010810 lt!547026)))

(declare-fun d!467497 () Bool)

(assert (=> d!467497 e!1010811))

(declare-fun res!701493 () Bool)

(assert (=> d!467497 (=> (not res!701493) (not e!1010811))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2371 (List!17264) (InoxSet C!8872))

(assert (=> d!467497 (= res!701493 (= (content!2371 lt!547120) ((_ map or) (content!2371 lt!547032) (content!2371 lt!547026))))))

(assert (=> d!467497 (= lt!547120 e!1010810)))

(declare-fun c!255233 () Bool)

(assert (=> d!467497 (= c!255233 ((_ is Nil!17194) lt!547032))))

(assert (=> d!467497 (= (++!4457 lt!547032 lt!547026) lt!547120)))

(declare-fun b!1573945 () Bool)

(declare-fun res!701492 () Bool)

(assert (=> b!1573945 (=> (not res!701492) (not e!1010811))))

(assert (=> b!1573945 (= res!701492 (= (size!13878 lt!547120) (+ (size!13878 lt!547032) (size!13878 lt!547026))))))

(assert (= (and d!467497 c!255233) b!1573943))

(assert (= (and d!467497 (not c!255233)) b!1573944))

(assert (= (and d!467497 res!701493) b!1573945))

(assert (= (and b!1573945 res!701492) b!1573946))

(declare-fun m!1852899 () Bool)

(assert (=> b!1573944 m!1852899))

(declare-fun m!1852901 () Bool)

(assert (=> d!467497 m!1852901))

(declare-fun m!1852903 () Bool)

(assert (=> d!467497 m!1852903))

(declare-fun m!1852905 () Bool)

(assert (=> d!467497 m!1852905))

(declare-fun m!1852907 () Bool)

(assert (=> b!1573945 m!1852907))

(assert (=> b!1573945 m!1852799))

(declare-fun m!1852909 () Bool)

(assert (=> b!1573945 m!1852909))

(assert (=> b!1573688 d!467497))

(declare-fun d!467499 () Bool)

(assert (=> d!467499 (= (seqFromList!1818 (t!143168 tokens!457)) (fromListB!777 (t!143168 tokens!457)))))

(declare-fun bs!390399 () Bool)

(assert (= bs!390399 d!467499))

(declare-fun m!1852911 () Bool)

(assert (=> bs!390399 m!1852911))

(assert (=> b!1573688 d!467499))

(declare-fun b!1573960 () Bool)

(declare-fun b_free!42247 () Bool)

(declare-fun b_next!42951 () Bool)

(assert (=> b!1573960 (= b_free!42247 (not b_next!42951))))

(declare-fun tp!463145 () Bool)

(declare-fun b_and!110069 () Bool)

(assert (=> b!1573960 (= tp!463145 b_and!110069)))

(declare-fun b_free!42249 () Bool)

(declare-fun b_next!42953 () Bool)

(assert (=> b!1573960 (= b_free!42249 (not b_next!42953))))

(declare-fun t!143188 () Bool)

(declare-fun tb!88627 () Bool)

(assert (=> (and b!1573960 (= (toChars!4275 (transformation!3021 (rule!4813 (h!22596 (t!143168 tokens!457))))) (toChars!4275 (transformation!3021 (rule!4813 (h!22596 tokens!457))))) t!143188) tb!88627))

(declare-fun result!107164 () Bool)

(assert (= result!107164 result!107144))

(assert (=> b!1573772 t!143188))

(assert (=> d!467475 t!143188))

(declare-fun b_and!110071 () Bool)

(declare-fun tp!463146 () Bool)

(assert (=> b!1573960 (= tp!463146 (and (=> t!143188 result!107164) b_and!110071))))

(declare-fun e!1010828 () Bool)

(assert (=> b!1573960 (= e!1010828 (and tp!463145 tp!463146))))

(declare-fun tp!463148 () Bool)

(declare-fun e!1010824 () Bool)

(declare-fun b!1573959 () Bool)

(assert (=> b!1573959 (= e!1010824 (and tp!463148 (inv!22601 (tag!3287 (rule!4813 (h!22596 (t!143168 tokens!457))))) (inv!22604 (transformation!3021 (rule!4813 (h!22596 (t!143168 tokens!457))))) e!1010828))))

(declare-fun b!1573958 () Bool)

(declare-fun tp!463149 () Bool)

(declare-fun e!1010826 () Bool)

(assert (=> b!1573958 (= e!1010826 (and (inv!21 (value!95771 (h!22596 (t!143168 tokens!457)))) e!1010824 tp!463149))))

(declare-fun b!1573957 () Bool)

(declare-fun tp!463147 () Bool)

(declare-fun e!1010827 () Bool)

(assert (=> b!1573957 (= e!1010827 (and (inv!22605 (h!22596 (t!143168 tokens!457))) e!1010826 tp!463147))))

(assert (=> b!1573687 (= tp!463073 e!1010827)))

(assert (= b!1573959 b!1573960))

(assert (= b!1573958 b!1573959))

(assert (= b!1573957 b!1573958))

(assert (= (and b!1573687 ((_ is Cons!17195) (t!143168 tokens!457))) b!1573957))

(declare-fun m!1852913 () Bool)

(assert (=> b!1573959 m!1852913))

(declare-fun m!1852915 () Bool)

(assert (=> b!1573959 m!1852915))

(declare-fun m!1852917 () Bool)

(assert (=> b!1573958 m!1852917))

(declare-fun m!1852919 () Bool)

(assert (=> b!1573957 m!1852919))

(declare-fun b!1573965 () Bool)

(declare-fun e!1010832 () Bool)

(declare-fun tp_is_empty!7153 () Bool)

(declare-fun tp!463152 () Bool)

(assert (=> b!1573965 (= e!1010832 (and tp_is_empty!7153 tp!463152))))

(assert (=> b!1573681 (= tp!463078 e!1010832)))

(assert (= (and b!1573681 ((_ is Cons!17194) (originalCharacters!3835 (h!22596 tokens!457)))) b!1573965))

(declare-fun b!1573976 () Bool)

(declare-fun e!1010835 () Bool)

(assert (=> b!1573976 (= e!1010835 tp_is_empty!7153)))

(declare-fun b!1573977 () Bool)

(declare-fun tp!463163 () Bool)

(declare-fun tp!463167 () Bool)

(assert (=> b!1573977 (= e!1010835 (and tp!463163 tp!463167))))

(declare-fun b!1573979 () Bool)

(declare-fun tp!463166 () Bool)

(declare-fun tp!463165 () Bool)

(assert (=> b!1573979 (= e!1010835 (and tp!463166 tp!463165))))

(declare-fun b!1573978 () Bool)

(declare-fun tp!463164 () Bool)

(assert (=> b!1573978 (= e!1010835 tp!463164)))

(assert (=> b!1573691 (= tp!463072 e!1010835)))

(assert (= (and b!1573691 ((_ is ElementMatch!4349) (regex!3021 (rule!4813 (h!22596 tokens!457))))) b!1573976))

(assert (= (and b!1573691 ((_ is Concat!7461) (regex!3021 (rule!4813 (h!22596 tokens!457))))) b!1573977))

(assert (= (and b!1573691 ((_ is Star!4349) (regex!3021 (rule!4813 (h!22596 tokens!457))))) b!1573978))

(assert (= (and b!1573691 ((_ is Union!4349) (regex!3021 (rule!4813 (h!22596 tokens!457))))) b!1573979))

(declare-fun b!1573980 () Bool)

(declare-fun e!1010836 () Bool)

(assert (=> b!1573980 (= e!1010836 tp_is_empty!7153)))

(declare-fun b!1573981 () Bool)

(declare-fun tp!463168 () Bool)

(declare-fun tp!463172 () Bool)

(assert (=> b!1573981 (= e!1010836 (and tp!463168 tp!463172))))

(declare-fun b!1573983 () Bool)

(declare-fun tp!463171 () Bool)

(declare-fun tp!463170 () Bool)

(assert (=> b!1573983 (= e!1010836 (and tp!463171 tp!463170))))

(declare-fun b!1573982 () Bool)

(declare-fun tp!463169 () Bool)

(assert (=> b!1573982 (= e!1010836 tp!463169)))

(assert (=> b!1573684 (= tp!463076 e!1010836)))

(assert (= (and b!1573684 ((_ is ElementMatch!4349) (regex!3021 (h!22597 rules!1846)))) b!1573980))

(assert (= (and b!1573684 ((_ is Concat!7461) (regex!3021 (h!22597 rules!1846)))) b!1573981))

(assert (= (and b!1573684 ((_ is Star!4349) (regex!3021 (h!22597 rules!1846)))) b!1573982))

(assert (= (and b!1573684 ((_ is Union!4349) (regex!3021 (h!22597 rules!1846)))) b!1573983))

(declare-fun b!1573994 () Bool)

(declare-fun b_free!42251 () Bool)

(declare-fun b_next!42955 () Bool)

(assert (=> b!1573994 (= b_free!42251 (not b_next!42955))))

(declare-fun tp!463183 () Bool)

(declare-fun b_and!110073 () Bool)

(assert (=> b!1573994 (= tp!463183 b_and!110073)))

(declare-fun b_free!42253 () Bool)

(declare-fun b_next!42957 () Bool)

(assert (=> b!1573994 (= b_free!42253 (not b_next!42957))))

(declare-fun tb!88629 () Bool)

(declare-fun t!143190 () Bool)

(assert (=> (and b!1573994 (= (toChars!4275 (transformation!3021 (h!22597 (t!143169 rules!1846)))) (toChars!4275 (transformation!3021 (rule!4813 (h!22596 tokens!457))))) t!143190) tb!88629))

(declare-fun result!107172 () Bool)

(assert (= result!107172 result!107144))

(assert (=> b!1573772 t!143190))

(assert (=> d!467475 t!143190))

(declare-fun b_and!110075 () Bool)

(declare-fun tp!463184 () Bool)

(assert (=> b!1573994 (= tp!463184 (and (=> t!143190 result!107172) b_and!110075))))

(declare-fun e!1010848 () Bool)

(assert (=> b!1573994 (= e!1010848 (and tp!463183 tp!463184))))

(declare-fun tp!463182 () Bool)

(declare-fun e!1010847 () Bool)

(declare-fun b!1573993 () Bool)

(assert (=> b!1573993 (= e!1010847 (and tp!463182 (inv!22601 (tag!3287 (h!22597 (t!143169 rules!1846)))) (inv!22604 (transformation!3021 (h!22597 (t!143169 rules!1846)))) e!1010848))))

(declare-fun b!1573992 () Bool)

(declare-fun e!1010846 () Bool)

(declare-fun tp!463181 () Bool)

(assert (=> b!1573992 (= e!1010846 (and e!1010847 tp!463181))))

(assert (=> b!1573689 (= tp!463070 e!1010846)))

(assert (= b!1573993 b!1573994))

(assert (= b!1573992 b!1573993))

(assert (= (and b!1573689 ((_ is Cons!17196) (t!143169 rules!1846))) b!1573992))

(declare-fun m!1852921 () Bool)

(assert (=> b!1573993 m!1852921))

(declare-fun m!1852923 () Bool)

(assert (=> b!1573993 m!1852923))

(declare-fun b_lambda!49541 () Bool)

(assert (= b_lambda!49535 (or (and b!1573683 b_free!42233) (and b!1573685 b_free!42237 (= (toChars!4275 (transformation!3021 (h!22597 rules!1846))) (toChars!4275 (transformation!3021 (rule!4813 (h!22596 tokens!457)))))) (and b!1573960 b_free!42249 (= (toChars!4275 (transformation!3021 (rule!4813 (h!22596 (t!143168 tokens!457))))) (toChars!4275 (transformation!3021 (rule!4813 (h!22596 tokens!457)))))) (and b!1573994 b_free!42253 (= (toChars!4275 (transformation!3021 (h!22597 (t!143169 rules!1846)))) (toChars!4275 (transformation!3021 (rule!4813 (h!22596 tokens!457)))))) b_lambda!49541)))

(declare-fun b_lambda!49543 () Bool)

(assert (= b_lambda!49533 (or (and b!1573683 b_free!42233) (and b!1573685 b_free!42237 (= (toChars!4275 (transformation!3021 (h!22597 rules!1846))) (toChars!4275 (transformation!3021 (rule!4813 (h!22596 tokens!457)))))) (and b!1573960 b_free!42249 (= (toChars!4275 (transformation!3021 (rule!4813 (h!22596 (t!143168 tokens!457))))) (toChars!4275 (transformation!3021 (rule!4813 (h!22596 tokens!457)))))) (and b!1573994 b_free!42253 (= (toChars!4275 (transformation!3021 (h!22597 (t!143169 rules!1846)))) (toChars!4275 (transformation!3021 (rule!4813 (h!22596 tokens!457)))))) b_lambda!49543)))

(check-sat (not tb!88619) (not b!1573931) (not b!1573823) (not b!1573992) (not b!1573773) (not b!1573793) b_and!110041 (not d!467491) (not b!1573993) (not b!1573820) (not d!467475) (not d!467497) (not b!1573799) (not b!1573804) (not b!1573979) (not b!1573802) (not b!1573958) b_and!110037 (not b!1573932) (not b!1573981) (not b!1573753) b_and!110073 (not d!467461) (not d!467465) (not d!467469) (not b!1573944) (not b!1573819) (not b!1573965) (not b!1573803) (not b_next!42951) (not b!1573978) (not d!467447) (not b_next!42941) (not b_next!42939) b_and!110071 (not b!1573959) (not b!1573798) b_and!110057 (not b!1573772) (not b!1573763) (not d!467457) (not d!467471) (not b!1573789) (not b!1573790) (not b_next!42957) (not d!467477) (not b!1573818) (not d!467411) (not b!1573778) b_and!110059 (not d!467499) (not b!1573957) (not b_next!42935) (not b!1573983) (not d!467495) (not b!1573754) (not b_next!42955) b_and!110075 (not b!1573977) (not d!467473) (not b_next!42953) (not b!1573930) (not b!1573805) (not d!467493) (not b!1573982) (not b_lambda!49541) (not b_lambda!49543) (not b_next!42937) b_and!110069 (not b!1573945) (not b!1573934) tp_is_empty!7153 (not d!467455) (not d!467467) (not b!1573817))
(check-sat b_and!110041 (not b_next!42951) b_and!110057 (not b_next!42957) (not b_next!42953) b_and!110073 b_and!110037 (not b_next!42941) (not b_next!42939) b_and!110071 b_and!110059 (not b_next!42935) (not b_next!42955) b_and!110075 (not b_next!42937) b_and!110069)
