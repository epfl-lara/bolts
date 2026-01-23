; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!159870 () Bool)

(assert start!159870)

(declare-fun b!1656682 () Bool)

(declare-fun b_free!45047 () Bool)

(declare-fun b_next!45751 () Bool)

(assert (=> b!1656682 (= b_free!45047 (not b_next!45751))))

(declare-fun tp!478786 () Bool)

(declare-fun b_and!117589 () Bool)

(assert (=> b!1656682 (= tp!478786 b_and!117589)))

(declare-fun b_free!45049 () Bool)

(declare-fun b_next!45753 () Bool)

(assert (=> b!1656682 (= b_free!45049 (not b_next!45753))))

(declare-fun tp!478785 () Bool)

(declare-fun b_and!117591 () Bool)

(assert (=> b!1656682 (= tp!478785 b_and!117591)))

(declare-fun b!1656685 () Bool)

(declare-fun b_free!45051 () Bool)

(declare-fun b_next!45755 () Bool)

(assert (=> b!1656685 (= b_free!45051 (not b_next!45755))))

(declare-fun tp!478780 () Bool)

(declare-fun b_and!117593 () Bool)

(assert (=> b!1656685 (= tp!478780 b_and!117593)))

(declare-fun b_free!45053 () Bool)

(declare-fun b_next!45757 () Bool)

(assert (=> b!1656685 (= b_free!45053 (not b_next!45757))))

(declare-fun tp!478783 () Bool)

(declare-fun b_and!117595 () Bool)

(assert (=> b!1656685 (= tp!478783 b_and!117595)))

(declare-fun b!1656678 () Bool)

(declare-fun e!1062321 () Bool)

(declare-fun e!1062301 () Bool)

(assert (=> b!1656678 (= e!1062321 e!1062301)))

(declare-fun res!743005 () Bool)

(assert (=> b!1656678 (=> (not res!743005) (not e!1062301))))

(declare-datatypes ((C!9280 0))(
  ( (C!9281 (val!5236 Int)) )
))
(declare-datatypes ((List!18365 0))(
  ( (Nil!18295) (Cons!18295 (h!23696 C!9280) (t!151286 List!18365)) )
))
(declare-fun lt!619177 () List!18365)

(declare-fun lt!619197 () List!18365)

(assert (=> b!1656678 (= res!743005 (= lt!619177 lt!619197))))

(declare-fun lt!619200 () List!18365)

(declare-fun lt!619199 () List!18365)

(declare-fun ++!4963 (List!18365 List!18365) List!18365)

(assert (=> b!1656678 (= lt!619197 (++!4963 lt!619200 lt!619199))))

(declare-datatypes ((IArray!12201 0))(
  ( (IArray!12202 (innerList!6158 List!18365)) )
))
(declare-datatypes ((Conc!6098 0))(
  ( (Node!6098 (left!14648 Conc!6098) (right!14978 Conc!6098) (csize!12426 Int) (cheight!6309 Int)) (Leaf!8931 (xs!8938 IArray!12201) (csize!12427 Int)) (Empty!6098) )
))
(declare-datatypes ((BalanceConc!12140 0))(
  ( (BalanceConc!12141 (c!269463 Conc!6098)) )
))
(declare-fun lt!619184 () BalanceConc!12140)

(declare-fun list!7293 (BalanceConc!12140) List!18365)

(assert (=> b!1656678 (= lt!619177 (list!7293 lt!619184))))

(declare-fun lt!619193 () BalanceConc!12140)

(assert (=> b!1656678 (= lt!619199 (list!7293 lt!619193))))

(declare-fun lt!619172 () BalanceConc!12140)

(assert (=> b!1656678 (= lt!619200 (list!7293 lt!619172))))

(declare-datatypes ((List!18366 0))(
  ( (Nil!18296) (Cons!18296 (h!23697 (_ BitVec 16)) (t!151287 List!18366)) )
))
(declare-datatypes ((TokenValue!3315 0))(
  ( (FloatLiteralValue!6630 (text!23650 List!18366)) (TokenValueExt!3314 (__x!11932 Int)) (Broken!16575 (value!101559 List!18366)) (Object!3384) (End!3315) (Def!3315) (Underscore!3315) (Match!3315) (Else!3315) (Error!3315) (Case!3315) (If!3315) (Extends!3315) (Abstract!3315) (Class!3315) (Val!3315) (DelimiterValue!6630 (del!3375 List!18366)) (KeywordValue!3321 (value!101560 List!18366)) (CommentValue!6630 (value!101561 List!18366)) (WhitespaceValue!6630 (value!101562 List!18366)) (IndentationValue!3315 (value!101563 List!18366)) (String!20906) (Int32!3315) (Broken!16576 (value!101564 List!18366)) (Boolean!3316) (Unit!30726) (OperatorValue!3318 (op!3375 List!18366)) (IdentifierValue!6630 (value!101565 List!18366)) (IdentifierValue!6631 (value!101566 List!18366)) (WhitespaceValue!6631 (value!101567 List!18366)) (True!6630) (False!6630) (Broken!16577 (value!101568 List!18366)) (Broken!16578 (value!101569 List!18366)) (True!6631) (RightBrace!3315) (RightBracket!3315) (Colon!3315) (Null!3315) (Comma!3315) (LeftBracket!3315) (False!6631) (LeftBrace!3315) (ImaginaryLiteralValue!3315 (text!23651 List!18366)) (StringLiteralValue!9945 (value!101570 List!18366)) (EOFValue!3315 (value!101571 List!18366)) (IdentValue!3315 (value!101572 List!18366)) (DelimiterValue!6631 (value!101573 List!18366)) (DedentValue!3315 (value!101574 List!18366)) (NewLineValue!3315 (value!101575 List!18366)) (IntegerValue!9945 (value!101576 (_ BitVec 32)) (text!23652 List!18366)) (IntegerValue!9946 (value!101577 Int) (text!23653 List!18366)) (Times!3315) (Or!3315) (Equal!3315) (Minus!3315) (Broken!16579 (value!101578 List!18366)) (And!3315) (Div!3315) (LessEqual!3315) (Mod!3315) (Concat!7868) (Not!3315) (Plus!3315) (SpaceValue!3315 (value!101579 List!18366)) (IntegerValue!9947 (value!101580 Int) (text!23654 List!18366)) (StringLiteralValue!9946 (text!23655 List!18366)) (FloatLiteralValue!6631 (text!23656 List!18366)) (BytesLiteralValue!3315 (value!101581 List!18366)) (CommentValue!6631 (value!101582 List!18366)) (StringLiteralValue!9947 (value!101583 List!18366)) (ErrorTokenValue!3315 (msg!3376 List!18366)) )
))
(declare-datatypes ((Regex!4553 0))(
  ( (ElementMatch!4553 (c!269464 C!9280)) (Concat!7869 (regOne!9618 Regex!4553) (regTwo!9618 Regex!4553)) (EmptyExpr!4553) (Star!4553 (reg!4882 Regex!4553)) (EmptyLang!4553) (Union!4553 (regOne!9619 Regex!4553) (regTwo!9619 Regex!4553)) )
))
(declare-datatypes ((String!20907 0))(
  ( (String!20908 (value!101584 String)) )
))
(declare-datatypes ((TokenValueInjection!6290 0))(
  ( (TokenValueInjection!6291 (toValue!4676 Int) (toChars!4535 Int)) )
))
(declare-datatypes ((Rule!6250 0))(
  ( (Rule!6251 (regex!3225 Regex!4553) (tag!3507 String!20907) (isSeparator!3225 Bool) (transformation!3225 TokenValueInjection!6290)) )
))
(declare-datatypes ((Token!6016 0))(
  ( (Token!6017 (value!101585 TokenValue!3315) (rule!5097 Rule!6250) (size!14552 Int) (originalCharacters!4039 List!18365)) )
))
(declare-datatypes ((List!18367 0))(
  ( (Nil!18297) (Cons!18297 (h!23698 Token!6016) (t!151288 List!18367)) )
))
(declare-fun tokens!457 () List!18367)

(declare-fun charsOf!1874 (Token!6016) BalanceConc!12140)

(assert (=> b!1656678 (= lt!619172 (charsOf!1874 (h!23698 tokens!457)))))

(declare-datatypes ((List!18368 0))(
  ( (Nil!18298) (Cons!18298 (h!23699 Rule!6250) (t!151289 List!18368)) )
))
(declare-fun rules!1846 () List!18368)

(declare-datatypes ((LexerInterface!2854 0))(
  ( (LexerInterfaceExt!2851 (__x!11933 Int)) (Lexer!2852) )
))
(declare-fun thiss!17113 () LexerInterface!2854)

(declare-datatypes ((IArray!12203 0))(
  ( (IArray!12204 (innerList!6159 List!18367)) )
))
(declare-datatypes ((Conc!6099 0))(
  ( (Node!6099 (left!14649 Conc!6099) (right!14979 Conc!6099) (csize!12428 Int) (cheight!6310 Int)) (Leaf!8932 (xs!8939 IArray!12203) (csize!12429 Int)) (Empty!6099) )
))
(declare-datatypes ((BalanceConc!12142 0))(
  ( (BalanceConc!12143 (c!269465 Conc!6099)) )
))
(declare-datatypes ((tuple2!17994 0))(
  ( (tuple2!17995 (_1!10399 BalanceConc!12142) (_2!10399 BalanceConc!12140)) )
))
(declare-fun lt!619175 () tuple2!17994)

(declare-fun lex!1338 (LexerInterface!2854 List!18368 BalanceConc!12140) tuple2!17994)

(assert (=> b!1656678 (= lt!619175 (lex!1338 thiss!17113 rules!1846 lt!619193))))

(declare-fun lt!619181 () BalanceConc!12142)

(declare-fun print!1385 (LexerInterface!2854 BalanceConc!12142) BalanceConc!12140)

(assert (=> b!1656678 (= lt!619193 (print!1385 thiss!17113 lt!619181))))

(declare-fun seqFromList!2189 (List!18367) BalanceConc!12142)

(assert (=> b!1656678 (= lt!619181 (seqFromList!2189 (t!151288 tokens!457)))))

(assert (=> b!1656678 (= lt!619184 (print!1385 thiss!17113 (seqFromList!2189 tokens!457)))))

(declare-fun b!1656679 () Bool)

(declare-fun e!1062299 () Bool)

(declare-fun e!1062314 () Bool)

(assert (=> b!1656679 (= e!1062299 e!1062314)))

(declare-fun res!743012 () Bool)

(assert (=> b!1656679 (=> res!743012 e!1062314)))

(declare-datatypes ((tuple2!17996 0))(
  ( (tuple2!17997 (_1!10400 Token!6016) (_2!10400 BalanceConc!12140)) )
))
(declare-fun lt!619183 () tuple2!17996)

(assert (=> b!1656679 (= res!743012 (not (= (h!23698 tokens!457) (_1!10400 lt!619183))))))

(declare-datatypes ((Option!3495 0))(
  ( (None!3494) (Some!3494 (v!24697 tuple2!17996)) )
))
(declare-fun get!5343 (Option!3495) tuple2!17996)

(declare-fun maxPrefixZipperSequence!731 (LexerInterface!2854 List!18368 BalanceConc!12140) Option!3495)

(assert (=> b!1656679 (= lt!619183 (get!5343 (maxPrefixZipperSequence!731 thiss!17113 rules!1846 lt!619184)))))

(declare-fun b!1656680 () Bool)

(declare-fun res!742999 () Bool)

(declare-fun e!1062315 () Bool)

(assert (=> b!1656680 (=> (not res!742999) (not e!1062315))))

(declare-fun lt!619196 () List!18365)

(declare-fun head!3680 (List!18365) C!9280)

(assert (=> b!1656680 (= res!742999 (= lt!619196 (Cons!18295 (head!3680 (originalCharacters!4039 (h!23698 (t!151288 tokens!457)))) Nil!18295)))))

(declare-fun b!1656681 () Bool)

(declare-fun e!1062311 () Bool)

(declare-fun e!1062308 () Bool)

(declare-fun tp!478788 () Bool)

(assert (=> b!1656681 (= e!1062311 (and e!1062308 tp!478788))))

(declare-fun e!1062317 () Bool)

(assert (=> b!1656682 (= e!1062317 (and tp!478786 tp!478785))))

(declare-fun b!1656683 () Bool)

(declare-fun e!1062305 () Bool)

(declare-fun e!1062319 () Bool)

(assert (=> b!1656683 (= e!1062305 e!1062319)))

(declare-fun res!743010 () Bool)

(assert (=> b!1656683 (=> res!743010 e!1062319)))

(declare-fun isDefined!2850 (Option!3495) Bool)

(declare-fun seqFromList!2190 (List!18365) BalanceConc!12140)

(assert (=> b!1656683 (= res!743010 (not (isDefined!2850 (maxPrefixZipperSequence!731 thiss!17113 rules!1846 (seqFromList!2190 (originalCharacters!4039 (h!23698 tokens!457)))))))))

(declare-fun lt!619174 () List!18365)

(assert (=> b!1656683 (= lt!619196 lt!619174)))

(declare-fun head!3681 (BalanceConc!12140) C!9280)

(assert (=> b!1656683 (= lt!619174 (Cons!18295 (head!3681 lt!619193) Nil!18295))))

(assert (=> b!1656683 e!1062315))

(declare-fun res!743018 () Bool)

(assert (=> b!1656683 (=> (not res!743018) (not e!1062315))))

(assert (=> b!1656683 (= res!743018 (= lt!619200 (originalCharacters!4039 (h!23698 tokens!457))))))

(declare-fun b!1656684 () Bool)

(assert (=> b!1656684 (= e!1062315 (= lt!619196 (Cons!18295 (head!3680 lt!619199) Nil!18295)))))

(declare-fun e!1062316 () Bool)

(assert (=> b!1656685 (= e!1062316 (and tp!478780 tp!478783))))

(declare-fun b!1656686 () Bool)

(declare-datatypes ((tuple2!17998 0))(
  ( (tuple2!17999 (_1!10401 Token!6016) (_2!10401 List!18365)) )
))
(declare-fun lt!619190 () tuple2!17998)

(assert (=> b!1656686 (= e!1062314 (= (_2!10401 lt!619190) (list!7293 (_2!10400 lt!619183))))))

(declare-fun b!1656687 () Bool)

(declare-fun e!1062309 () Bool)

(assert (=> b!1656687 (= e!1062309 e!1062299)))

(declare-fun res!743014 () Bool)

(assert (=> b!1656687 (=> res!743014 e!1062299)))

(assert (=> b!1656687 (= res!743014 (or (not (= (_1!10401 lt!619190) (h!23698 tokens!457))) (not (= (_2!10401 lt!619190) lt!619199))))))

(declare-datatypes ((Option!3496 0))(
  ( (None!3495) (Some!3495 (v!24698 tuple2!17998)) )
))
(declare-fun lt!619198 () Option!3496)

(declare-fun get!5344 (Option!3496) tuple2!17998)

(assert (=> b!1656687 (= lt!619190 (get!5344 lt!619198))))

(declare-datatypes ((Unit!30727 0))(
  ( (Unit!30728) )
))
(declare-fun lt!619187 () Unit!30727)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!180 (LexerInterface!2854 List!18368 Token!6016 Rule!6250 List!18365) Unit!30727)

(assert (=> b!1656687 (= lt!619187 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!180 thiss!17113 rules!1846 (h!23698 tokens!457) (rule!5097 (h!23698 tokens!457)) lt!619199))))

(declare-fun e!1062307 () Bool)

(declare-fun tp!478787 () Bool)

(declare-fun b!1656688 () Bool)

(declare-fun inv!23641 (String!20907) Bool)

(declare-fun inv!23644 (TokenValueInjection!6290) Bool)

(assert (=> b!1656688 (= e!1062307 (and tp!478787 (inv!23641 (tag!3507 (rule!5097 (h!23698 tokens!457)))) (inv!23644 (transformation!3225 (rule!5097 (h!23698 tokens!457)))) e!1062316))))

(declare-fun b!1656689 () Bool)

(declare-fun e!1062306 () Bool)

(declare-fun e!1062300 () Bool)

(assert (=> b!1656689 (= e!1062306 e!1062300)))

(declare-fun res!743007 () Bool)

(assert (=> b!1656689 (=> res!743007 e!1062300)))

(declare-fun lt!619178 () Regex!4553)

(declare-fun lt!619185 () BalanceConc!12140)

(declare-fun prefixMatchZipperSequence!645 (Regex!4553 BalanceConc!12140) Bool)

(declare-fun ++!4964 (BalanceConc!12140 BalanceConc!12140) BalanceConc!12140)

(assert (=> b!1656689 (= res!743007 (prefixMatchZipperSequence!645 lt!619178 (++!4964 lt!619172 lt!619185)))))

(declare-fun singletonSeq!1722 (C!9280) BalanceConc!12140)

(declare-fun apply!4866 (BalanceConc!12140 Int) C!9280)

(assert (=> b!1656689 (= lt!619185 (singletonSeq!1722 (apply!4866 (charsOf!1874 (h!23698 (t!151288 tokens!457))) 0)))))

(declare-fun rulesRegex!609 (LexerInterface!2854 List!18368) Regex!4553)

(assert (=> b!1656689 (= lt!619178 (rulesRegex!609 thiss!17113 rules!1846))))

(declare-fun b!1656690 () Bool)

(declare-fun res!743006 () Bool)

(assert (=> b!1656690 (=> res!743006 e!1062299)))

(declare-fun maxPrefixZipper!352 (LexerInterface!2854 List!18368 List!18365) Option!3496)

(assert (=> b!1656690 (= res!743006 (not (= (h!23698 tokens!457) (_1!10401 (get!5344 (maxPrefixZipper!352 thiss!17113 rules!1846 lt!619177))))))))

(declare-fun b!1656691 () Bool)

(declare-fun e!1062313 () Bool)

(assert (=> b!1656691 (= e!1062301 (not e!1062313))))

(declare-fun res!743000 () Bool)

(assert (=> b!1656691 (=> res!743000 e!1062313)))

(declare-fun lt!619191 () List!18367)

(assert (=> b!1656691 (= res!743000 (not (= lt!619191 (t!151288 tokens!457))))))

(declare-fun list!7294 (BalanceConc!12142) List!18367)

(assert (=> b!1656691 (= lt!619191 (list!7294 (_1!10399 lt!619175)))))

(declare-fun lt!619173 () Unit!30727)

(declare-fun theoremInvertabilityWhenTokenListSeparable!297 (LexerInterface!2854 List!18368 List!18367) Unit!30727)

(assert (=> b!1656691 (= lt!619173 (theoremInvertabilityWhenTokenListSeparable!297 thiss!17113 rules!1846 (t!151288 tokens!457)))))

(declare-fun isPrefix!1483 (List!18365 List!18365) Bool)

(assert (=> b!1656691 (isPrefix!1483 lt!619200 lt!619197)))

(declare-fun lt!619189 () Unit!30727)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1008 (List!18365 List!18365) Unit!30727)

(assert (=> b!1656691 (= lt!619189 (lemmaConcatTwoListThenFirstIsPrefix!1008 lt!619200 lt!619199))))

(declare-fun b!1656692 () Bool)

(declare-fun res!743011 () Bool)

(assert (=> b!1656692 (=> res!743011 e!1062309)))

(declare-fun prefixMatch!470 (Regex!4553 List!18365) Bool)

(assert (=> b!1656692 (= res!743011 (prefixMatch!470 lt!619178 (++!4963 lt!619200 lt!619174)))))

(declare-fun b!1656693 () Bool)

(declare-fun res!743009 () Bool)

(declare-fun e!1062320 () Bool)

(assert (=> b!1656693 (=> (not res!743009) (not e!1062320))))

(declare-fun lt!619186 () tuple2!17998)

(declare-fun isEmpty!11337 (List!18365) Bool)

(assert (=> b!1656693 (= res!743009 (isEmpty!11337 (_2!10401 lt!619186)))))

(declare-fun b!1656694 () Bool)

(declare-fun matchR!2046 (Regex!4553 List!18365) Bool)

(assert (=> b!1656694 (= e!1062320 (matchR!2046 (regex!3225 (rule!5097 (h!23698 tokens!457))) lt!619200))))

(declare-fun b!1656695 () Bool)

(declare-fun res!742996 () Bool)

(assert (=> b!1656695 (=> (not res!742996) (not e!1062321))))

(get-info :version)

(assert (=> b!1656695 (= res!742996 (and (not ((_ is Nil!18297) tokens!457)) (not ((_ is Nil!18297) (t!151288 tokens!457)))))))

(declare-fun b!1656696 () Bool)

(declare-fun res!743003 () Bool)

(assert (=> b!1656696 (=> (not res!743003) (not e!1062321))))

(declare-fun isEmpty!11338 (List!18368) Bool)

(assert (=> b!1656696 (= res!743003 (not (isEmpty!11338 rules!1846)))))

(declare-fun b!1656697 () Bool)

(declare-fun res!743004 () Bool)

(assert (=> b!1656697 (=> (not res!743004) (not e!1062321))))

(declare-fun rulesInvariant!2523 (LexerInterface!2854 List!18368) Bool)

(assert (=> b!1656697 (= res!743004 (rulesInvariant!2523 thiss!17113 rules!1846))))

(declare-fun b!1656698 () Bool)

(declare-fun res!743020 () Bool)

(assert (=> b!1656698 (=> (not res!743020) (not e!1062321))))

(declare-fun rulesProduceEachTokenIndividuallyList!1056 (LexerInterface!2854 List!18368 List!18367) Bool)

(assert (=> b!1656698 (= res!743020 (rulesProduceEachTokenIndividuallyList!1056 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1656699 () Bool)

(declare-fun e!1062318 () Bool)

(assert (=> b!1656699 (= e!1062313 e!1062318)))

(declare-fun res!742997 () Bool)

(assert (=> b!1656699 (=> res!742997 e!1062318)))

(declare-fun lt!619180 () List!18367)

(declare-fun lt!619171 () List!18367)

(assert (=> b!1656699 (= res!742997 (or (not (= lt!619191 lt!619171)) (not (= lt!619171 lt!619180))))))

(assert (=> b!1656699 (= lt!619171 (list!7294 lt!619181))))

(assert (=> b!1656699 (= lt!619191 lt!619180)))

(declare-fun prepend!799 (BalanceConc!12142 Token!6016) BalanceConc!12142)

(assert (=> b!1656699 (= lt!619180 (list!7294 (prepend!799 (seqFromList!2189 (t!151288 (t!151288 tokens!457))) (h!23698 (t!151288 tokens!457)))))))

(declare-fun lt!619176 () Unit!30727)

(declare-fun seqFromListBHdTlConstructive!300 (Token!6016 List!18367 BalanceConc!12142) Unit!30727)

(assert (=> b!1656699 (= lt!619176 (seqFromListBHdTlConstructive!300 (h!23698 (t!151288 tokens!457)) (t!151288 (t!151288 tokens!457)) (_1!10399 lt!619175)))))

(declare-fun b!1656700 () Bool)

(declare-fun res!743001 () Bool)

(declare-fun e!1062312 () Bool)

(assert (=> b!1656700 (=> res!743001 e!1062312)))

(declare-fun rulesProduceIndividualToken!1502 (LexerInterface!2854 List!18368 Token!6016) Bool)

(assert (=> b!1656700 (= res!743001 (not (rulesProduceIndividualToken!1502 thiss!17113 rules!1846 (h!23698 tokens!457))))))

(declare-fun b!1656701 () Bool)

(assert (=> b!1656701 (= e!1062312 e!1062306)))

(declare-fun res!742998 () Bool)

(assert (=> b!1656701 (=> res!742998 e!1062306)))

(declare-fun isDefined!2851 (Option!3496) Bool)

(assert (=> b!1656701 (= res!742998 (not (isDefined!2851 lt!619198)))))

(declare-fun lt!619188 () Unit!30727)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!422 (LexerInterface!2854 List!18368 List!18365 List!18365) Unit!30727)

(assert (=> b!1656701 (= lt!619188 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!422 thiss!17113 rules!1846 lt!619200 lt!619199))))

(declare-fun b!1656702 () Bool)

(declare-fun res!743017 () Bool)

(assert (=> b!1656702 (=> res!743017 e!1062312)))

(declare-fun isEmpty!11339 (BalanceConc!12142) Bool)

(assert (=> b!1656702 (= res!743017 (isEmpty!11339 (_1!10399 (lex!1338 thiss!17113 rules!1846 (seqFromList!2190 lt!619200)))))))

(declare-fun b!1656703 () Bool)

(declare-fun res!743016 () Bool)

(assert (=> b!1656703 (=> res!743016 e!1062318)))

(declare-fun separableTokensPredicate!794 (LexerInterface!2854 Token!6016 Token!6016 List!18368) Bool)

(assert (=> b!1656703 (= res!743016 (not (separableTokensPredicate!794 thiss!17113 (h!23698 tokens!457) (h!23698 (t!151288 tokens!457)) rules!1846)))))

(declare-fun b!1656704 () Bool)

(assert (=> b!1656704 (= e!1062318 e!1062312)))

(declare-fun res!743019 () Bool)

(assert (=> b!1656704 (=> res!743019 e!1062312)))

(declare-fun lt!619192 () List!18365)

(declare-fun lt!619182 () List!18365)

(assert (=> b!1656704 (= res!743019 (or (not (= lt!619182 lt!619192)) (not (= lt!619192 lt!619200)) (not (= lt!619182 lt!619200))))))

(declare-fun printList!967 (LexerInterface!2854 List!18367) List!18365)

(assert (=> b!1656704 (= lt!619192 (printList!967 thiss!17113 (Cons!18297 (h!23698 tokens!457) Nil!18297)))))

(declare-fun lt!619179 () BalanceConc!12140)

(assert (=> b!1656704 (= lt!619182 (list!7293 lt!619179))))

(declare-fun lt!619195 () BalanceConc!12142)

(declare-fun printTailRec!905 (LexerInterface!2854 BalanceConc!12142 Int BalanceConc!12140) BalanceConc!12140)

(assert (=> b!1656704 (= lt!619179 (printTailRec!905 thiss!17113 lt!619195 0 (BalanceConc!12141 Empty!6098)))))

(assert (=> b!1656704 (= lt!619179 (print!1385 thiss!17113 lt!619195))))

(declare-fun singletonSeq!1723 (Token!6016) BalanceConc!12142)

(assert (=> b!1656704 (= lt!619195 (singletonSeq!1723 (h!23698 tokens!457)))))

(declare-fun maxPrefix!1416 (LexerInterface!2854 List!18368 List!18365) Option!3496)

(assert (=> b!1656704 (= lt!619198 (maxPrefix!1416 thiss!17113 rules!1846 lt!619177))))

(declare-fun b!1656705 () Bool)

(declare-fun tp!478781 () Bool)

(assert (=> b!1656705 (= e!1062308 (and tp!478781 (inv!23641 (tag!3507 (h!23699 rules!1846))) (inv!23644 (transformation!3225 (h!23699 rules!1846))) e!1062317))))

(declare-fun b!1656706 () Bool)

(assert (=> b!1656706 (= e!1062300 e!1062305)))

(declare-fun res!743013 () Bool)

(assert (=> b!1656706 (=> res!743013 e!1062305)))

(assert (=> b!1656706 (= res!743013 (prefixMatch!470 lt!619178 (++!4963 lt!619200 lt!619196)))))

(assert (=> b!1656706 (= lt!619196 (list!7293 lt!619185))))

(declare-fun res!742995 () Bool)

(assert (=> start!159870 (=> (not res!742995) (not e!1062321))))

(assert (=> start!159870 (= res!742995 ((_ is Lexer!2852) thiss!17113))))

(assert (=> start!159870 e!1062321))

(assert (=> start!159870 true))

(assert (=> start!159870 e!1062311))

(declare-fun e!1062303 () Bool)

(assert (=> start!159870 e!1062303))

(declare-fun b!1656707 () Bool)

(declare-fun res!743002 () Bool)

(assert (=> b!1656707 (=> (not res!743002) (not e!1062321))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!547 (LexerInterface!2854 List!18367 List!18368) Bool)

(assert (=> b!1656707 (= res!743002 (tokensListTwoByTwoPredicateSeparableList!547 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1656708 () Bool)

(declare-fun tp!478782 () Bool)

(declare-fun e!1062310 () Bool)

(declare-fun inv!21 (TokenValue!3315) Bool)

(assert (=> b!1656708 (= e!1062310 (and (inv!21 (value!101585 (h!23698 tokens!457))) e!1062307 tp!478782))))

(declare-fun b!1656709 () Bool)

(assert (=> b!1656709 (= e!1062319 e!1062309)))

(declare-fun res!743008 () Bool)

(assert (=> b!1656709 (=> res!743008 e!1062309)))

(assert (=> b!1656709 (= res!743008 (prefixMatch!470 lt!619178 (++!4963 (originalCharacters!4039 (h!23698 tokens!457)) lt!619174)))))

(assert (=> b!1656709 e!1062320))

(declare-fun res!743015 () Bool)

(assert (=> b!1656709 (=> (not res!743015) (not e!1062320))))

(assert (=> b!1656709 (= res!743015 (= (_1!10401 lt!619186) (h!23698 tokens!457)))))

(declare-fun lt!619194 () Option!3496)

(assert (=> b!1656709 (= lt!619186 (get!5344 lt!619194))))

(assert (=> b!1656709 (isDefined!2851 lt!619194)))

(assert (=> b!1656709 (= lt!619194 (maxPrefix!1416 thiss!17113 rules!1846 lt!619200))))

(assert (=> b!1656709 (isDefined!2851 (maxPrefix!1416 thiss!17113 rules!1846 (originalCharacters!4039 (h!23698 tokens!457))))))

(declare-fun tp!478784 () Bool)

(declare-fun b!1656710 () Bool)

(declare-fun inv!23645 (Token!6016) Bool)

(assert (=> b!1656710 (= e!1062303 (and (inv!23645 (h!23698 tokens!457)) e!1062310 tp!478784))))

(assert (= (and start!159870 res!742995) b!1656696))

(assert (= (and b!1656696 res!743003) b!1656697))

(assert (= (and b!1656697 res!743004) b!1656698))

(assert (= (and b!1656698 res!743020) b!1656707))

(assert (= (and b!1656707 res!743002) b!1656695))

(assert (= (and b!1656695 res!742996) b!1656678))

(assert (= (and b!1656678 res!743005) b!1656691))

(assert (= (and b!1656691 (not res!743000)) b!1656699))

(assert (= (and b!1656699 (not res!742997)) b!1656703))

(assert (= (and b!1656703 (not res!743016)) b!1656704))

(assert (= (and b!1656704 (not res!743019)) b!1656700))

(assert (= (and b!1656700 (not res!743001)) b!1656702))

(assert (= (and b!1656702 (not res!743017)) b!1656701))

(assert (= (and b!1656701 (not res!742998)) b!1656689))

(assert (= (and b!1656689 (not res!743007)) b!1656706))

(assert (= (and b!1656706 (not res!743013)) b!1656683))

(assert (= (and b!1656683 res!743018) b!1656680))

(assert (= (and b!1656680 res!742999) b!1656684))

(assert (= (and b!1656683 (not res!743010)) b!1656709))

(assert (= (and b!1656709 res!743015) b!1656693))

(assert (= (and b!1656693 res!743009) b!1656694))

(assert (= (and b!1656709 (not res!743008)) b!1656692))

(assert (= (and b!1656692 (not res!743011)) b!1656687))

(assert (= (and b!1656687 (not res!743014)) b!1656690))

(assert (= (and b!1656690 (not res!743006)) b!1656679))

(assert (= (and b!1656679 (not res!743012)) b!1656686))

(assert (= b!1656705 b!1656682))

(assert (= b!1656681 b!1656705))

(assert (= (and start!159870 ((_ is Cons!18298) rules!1846)) b!1656681))

(assert (= b!1656688 b!1656685))

(assert (= b!1656708 b!1656688))

(assert (= b!1656710 b!1656708))

(assert (= (and start!159870 ((_ is Cons!18297) tokens!457)) b!1656710))

(declare-fun m!2011467 () Bool)

(assert (=> b!1656692 m!2011467))

(assert (=> b!1656692 m!2011467))

(declare-fun m!2011469 () Bool)

(assert (=> b!1656692 m!2011469))

(declare-fun m!2011471 () Bool)

(assert (=> b!1656707 m!2011471))

(declare-fun m!2011473 () Bool)

(assert (=> b!1656705 m!2011473))

(declare-fun m!2011475 () Bool)

(assert (=> b!1656705 m!2011475))

(declare-fun m!2011477 () Bool)

(assert (=> b!1656696 m!2011477))

(declare-fun m!2011479 () Bool)

(assert (=> b!1656684 m!2011479))

(declare-fun m!2011481 () Bool)

(assert (=> b!1656694 m!2011481))

(declare-fun m!2011483 () Bool)

(assert (=> b!1656691 m!2011483))

(declare-fun m!2011485 () Bool)

(assert (=> b!1656691 m!2011485))

(declare-fun m!2011487 () Bool)

(assert (=> b!1656691 m!2011487))

(declare-fun m!2011489 () Bool)

(assert (=> b!1656691 m!2011489))

(declare-fun m!2011491 () Bool)

(assert (=> b!1656688 m!2011491))

(declare-fun m!2011493 () Bool)

(assert (=> b!1656688 m!2011493))

(declare-fun m!2011495 () Bool)

(assert (=> b!1656683 m!2011495))

(assert (=> b!1656683 m!2011495))

(declare-fun m!2011497 () Bool)

(assert (=> b!1656683 m!2011497))

(assert (=> b!1656683 m!2011497))

(declare-fun m!2011499 () Bool)

(assert (=> b!1656683 m!2011499))

(declare-fun m!2011501 () Bool)

(assert (=> b!1656683 m!2011501))

(declare-fun m!2011503 () Bool)

(assert (=> b!1656700 m!2011503))

(declare-fun m!2011505 () Bool)

(assert (=> b!1656679 m!2011505))

(assert (=> b!1656679 m!2011505))

(declare-fun m!2011507 () Bool)

(assert (=> b!1656679 m!2011507))

(declare-fun m!2011509 () Bool)

(assert (=> b!1656693 m!2011509))

(declare-fun m!2011511 () Bool)

(assert (=> b!1656687 m!2011511))

(declare-fun m!2011513 () Bool)

(assert (=> b!1656687 m!2011513))

(declare-fun m!2011515 () Bool)

(assert (=> b!1656690 m!2011515))

(assert (=> b!1656690 m!2011515))

(declare-fun m!2011517 () Bool)

(assert (=> b!1656690 m!2011517))

(declare-fun m!2011519 () Bool)

(assert (=> b!1656678 m!2011519))

(declare-fun m!2011521 () Bool)

(assert (=> b!1656678 m!2011521))

(declare-fun m!2011523 () Bool)

(assert (=> b!1656678 m!2011523))

(declare-fun m!2011525 () Bool)

(assert (=> b!1656678 m!2011525))

(declare-fun m!2011527 () Bool)

(assert (=> b!1656678 m!2011527))

(declare-fun m!2011529 () Bool)

(assert (=> b!1656678 m!2011529))

(declare-fun m!2011531 () Bool)

(assert (=> b!1656678 m!2011531))

(declare-fun m!2011533 () Bool)

(assert (=> b!1656678 m!2011533))

(assert (=> b!1656678 m!2011527))

(declare-fun m!2011535 () Bool)

(assert (=> b!1656678 m!2011535))

(declare-fun m!2011537 () Bool)

(assert (=> b!1656678 m!2011537))

(declare-fun m!2011539 () Bool)

(assert (=> b!1656702 m!2011539))

(assert (=> b!1656702 m!2011539))

(declare-fun m!2011541 () Bool)

(assert (=> b!1656702 m!2011541))

(declare-fun m!2011543 () Bool)

(assert (=> b!1656702 m!2011543))

(declare-fun m!2011545 () Bool)

(assert (=> b!1656686 m!2011545))

(declare-fun m!2011547 () Bool)

(assert (=> b!1656709 m!2011547))

(declare-fun m!2011549 () Bool)

(assert (=> b!1656709 m!2011549))

(assert (=> b!1656709 m!2011549))

(declare-fun m!2011551 () Bool)

(assert (=> b!1656709 m!2011551))

(declare-fun m!2011553 () Bool)

(assert (=> b!1656709 m!2011553))

(declare-fun m!2011555 () Bool)

(assert (=> b!1656709 m!2011555))

(assert (=> b!1656709 m!2011555))

(declare-fun m!2011557 () Bool)

(assert (=> b!1656709 m!2011557))

(declare-fun m!2011559 () Bool)

(assert (=> b!1656709 m!2011559))

(declare-fun m!2011561 () Bool)

(assert (=> b!1656706 m!2011561))

(assert (=> b!1656706 m!2011561))

(declare-fun m!2011563 () Bool)

(assert (=> b!1656706 m!2011563))

(declare-fun m!2011565 () Bool)

(assert (=> b!1656706 m!2011565))

(declare-fun m!2011567 () Bool)

(assert (=> b!1656699 m!2011567))

(declare-fun m!2011569 () Bool)

(assert (=> b!1656699 m!2011569))

(declare-fun m!2011571 () Bool)

(assert (=> b!1656699 m!2011571))

(declare-fun m!2011573 () Bool)

(assert (=> b!1656699 m!2011573))

(declare-fun m!2011575 () Bool)

(assert (=> b!1656699 m!2011575))

(assert (=> b!1656699 m!2011571))

(assert (=> b!1656699 m!2011573))

(declare-fun m!2011577 () Bool)

(assert (=> b!1656710 m!2011577))

(declare-fun m!2011579 () Bool)

(assert (=> b!1656703 m!2011579))

(declare-fun m!2011581 () Bool)

(assert (=> b!1656680 m!2011581))

(declare-fun m!2011583 () Bool)

(assert (=> b!1656698 m!2011583))

(declare-fun m!2011585 () Bool)

(assert (=> b!1656689 m!2011585))

(declare-fun m!2011587 () Bool)

(assert (=> b!1656689 m!2011587))

(declare-fun m!2011589 () Bool)

(assert (=> b!1656689 m!2011589))

(declare-fun m!2011591 () Bool)

(assert (=> b!1656689 m!2011591))

(assert (=> b!1656689 m!2011591))

(declare-fun m!2011593 () Bool)

(assert (=> b!1656689 m!2011593))

(declare-fun m!2011595 () Bool)

(assert (=> b!1656689 m!2011595))

(assert (=> b!1656689 m!2011587))

(assert (=> b!1656689 m!2011595))

(declare-fun m!2011597 () Bool)

(assert (=> b!1656704 m!2011597))

(declare-fun m!2011599 () Bool)

(assert (=> b!1656704 m!2011599))

(declare-fun m!2011601 () Bool)

(assert (=> b!1656704 m!2011601))

(declare-fun m!2011603 () Bool)

(assert (=> b!1656704 m!2011603))

(declare-fun m!2011605 () Bool)

(assert (=> b!1656704 m!2011605))

(declare-fun m!2011607 () Bool)

(assert (=> b!1656704 m!2011607))

(declare-fun m!2011609 () Bool)

(assert (=> b!1656697 m!2011609))

(declare-fun m!2011611 () Bool)

(assert (=> b!1656708 m!2011611))

(declare-fun m!2011613 () Bool)

(assert (=> b!1656701 m!2011613))

(declare-fun m!2011615 () Bool)

(assert (=> b!1656701 m!2011615))

(check-sat (not b!1656687) (not b!1656686) (not b!1656690) b_and!117593 (not b!1656697) (not b!1656678) (not b!1656691) b_and!117589 (not b_next!45755) (not b!1656710) (not b!1656700) (not b!1656699) (not b!1656681) (not b!1656683) (not b!1656694) (not b!1656709) (not b!1656708) (not b!1656702) (not b!1656688) (not b!1656704) (not b!1656696) (not b!1656679) (not b!1656684) (not b!1656689) (not b!1656701) b_and!117595 b_and!117591 (not b!1656693) (not b!1656692) (not b!1656698) (not b_next!45751) (not b!1656703) (not b_next!45757) (not b!1656680) (not b!1656706) (not b!1656705) (not b_next!45753) (not b!1656707))
(check-sat b_and!117593 b_and!117589 (not b_next!45755) b_and!117595 b_and!117591 (not b_next!45751) (not b_next!45757) (not b_next!45753))
(get-model)

(declare-fun d!499683 () Bool)

(assert (=> d!499683 (= (head!3680 (originalCharacters!4039 (h!23698 (t!151288 tokens!457)))) (h!23696 (originalCharacters!4039 (h!23698 (t!151288 tokens!457)))))))

(assert (=> b!1656680 d!499683))

(declare-fun d!499685 () Bool)

(declare-fun isEmpty!11340 (Option!3496) Bool)

(assert (=> d!499685 (= (isDefined!2851 lt!619198) (not (isEmpty!11340 lt!619198)))))

(declare-fun bs!396880 () Bool)

(assert (= bs!396880 d!499685))

(declare-fun m!2011617 () Bool)

(assert (=> bs!396880 m!2011617))

(assert (=> b!1656701 d!499685))

(declare-fun lt!619286 () Token!6016)

(declare-fun e!1062343 () Bool)

(declare-fun b!1656746 () Bool)

(declare-datatypes ((Option!3497 0))(
  ( (None!3496) (Some!3496 (v!24705 Rule!6250)) )
))
(declare-fun get!5345 (Option!3497) Rule!6250)

(declare-fun getRuleFromTag!325 (LexerInterface!2854 List!18368 String!20907) Option!3497)

(assert (=> b!1656746 (= e!1062343 (= (rule!5097 lt!619286) (get!5345 (getRuleFromTag!325 thiss!17113 rules!1846 (tag!3507 (rule!5097 lt!619286))))))))

(declare-fun b!1656745 () Bool)

(declare-fun res!743056 () Bool)

(assert (=> b!1656745 (=> (not res!743056) (not e!1062343))))

(assert (=> b!1656745 (= res!743056 (matchR!2046 (regex!3225 (get!5345 (getRuleFromTag!325 thiss!17113 rules!1846 (tag!3507 (rule!5097 lt!619286))))) (list!7293 (charsOf!1874 lt!619286))))))

(declare-fun b!1656747 () Bool)

(declare-fun e!1062342 () Unit!30727)

(declare-fun Unit!30729 () Unit!30727)

(assert (=> b!1656747 (= e!1062342 Unit!30729)))

(declare-fun lt!619293 () List!18365)

(assert (=> b!1656747 (= lt!619293 (++!4963 lt!619200 lt!619199))))

(declare-fun lt!619290 () Unit!30727)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!219 (LexerInterface!2854 Rule!6250 List!18368 List!18365) Unit!30727)

(assert (=> b!1656747 (= lt!619290 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!219 thiss!17113 (rule!5097 lt!619286) rules!1846 lt!619293))))

(declare-fun maxPrefixOneRule!820 (LexerInterface!2854 Rule!6250 List!18365) Option!3496)

(assert (=> b!1656747 (isEmpty!11340 (maxPrefixOneRule!820 thiss!17113 (rule!5097 lt!619286) lt!619293))))

(declare-fun lt!619301 () Unit!30727)

(assert (=> b!1656747 (= lt!619301 lt!619290)))

(declare-fun lt!619295 () List!18365)

(assert (=> b!1656747 (= lt!619295 (list!7293 (charsOf!1874 lt!619286)))))

(declare-fun lt!619288 () Unit!30727)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!215 (LexerInterface!2854 Rule!6250 List!18365 List!18365) Unit!30727)

(assert (=> b!1656747 (= lt!619288 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!215 thiss!17113 (rule!5097 lt!619286) lt!619295 (++!4963 lt!619200 lt!619199)))))

(assert (=> b!1656747 (not (matchR!2046 (regex!3225 (rule!5097 lt!619286)) lt!619295))))

(declare-fun lt!619299 () Unit!30727)

(assert (=> b!1656747 (= lt!619299 lt!619288)))

(assert (=> b!1656747 false))

(declare-fun d!499687 () Bool)

(assert (=> d!499687 (isDefined!2851 (maxPrefix!1416 thiss!17113 rules!1846 (++!4963 lt!619200 lt!619199)))))

(declare-fun lt!619300 () Unit!30727)

(assert (=> d!499687 (= lt!619300 e!1062342)))

(declare-fun c!269472 () Bool)

(assert (=> d!499687 (= c!269472 (isEmpty!11340 (maxPrefix!1416 thiss!17113 rules!1846 (++!4963 lt!619200 lt!619199))))))

(declare-fun lt!619289 () Unit!30727)

(declare-fun lt!619298 () Unit!30727)

(assert (=> d!499687 (= lt!619289 lt!619298)))

(assert (=> d!499687 e!1062343))

(declare-fun res!743055 () Bool)

(assert (=> d!499687 (=> (not res!743055) (not e!1062343))))

(declare-fun isDefined!2852 (Option!3497) Bool)

(assert (=> d!499687 (= res!743055 (isDefined!2852 (getRuleFromTag!325 thiss!17113 rules!1846 (tag!3507 (rule!5097 lt!619286)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!325 (LexerInterface!2854 List!18368 List!18365 Token!6016) Unit!30727)

(assert (=> d!499687 (= lt!619298 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!325 thiss!17113 rules!1846 lt!619200 lt!619286))))

(declare-fun lt!619291 () Unit!30727)

(declare-fun lt!619296 () Unit!30727)

(assert (=> d!499687 (= lt!619291 lt!619296)))

(declare-fun lt!619294 () List!18365)

(assert (=> d!499687 (isPrefix!1483 lt!619294 (++!4963 lt!619200 lt!619199))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!211 (List!18365 List!18365 List!18365) Unit!30727)

(assert (=> d!499687 (= lt!619296 (lemmaPrefixStaysPrefixWhenAddingToSuffix!211 lt!619294 lt!619200 lt!619199))))

(assert (=> d!499687 (= lt!619294 (list!7293 (charsOf!1874 lt!619286)))))

(declare-fun lt!619292 () Unit!30727)

(declare-fun lt!619287 () Unit!30727)

(assert (=> d!499687 (= lt!619292 lt!619287)))

(declare-fun lt!619297 () List!18365)

(declare-fun lt!619302 () List!18365)

(assert (=> d!499687 (isPrefix!1483 lt!619297 (++!4963 lt!619297 lt!619302))))

(assert (=> d!499687 (= lt!619287 (lemmaConcatTwoListThenFirstIsPrefix!1008 lt!619297 lt!619302))))

(assert (=> d!499687 (= lt!619302 (_2!10401 (get!5344 (maxPrefix!1416 thiss!17113 rules!1846 lt!619200))))))

(assert (=> d!499687 (= lt!619297 (list!7293 (charsOf!1874 lt!619286)))))

(declare-fun head!3682 (List!18367) Token!6016)

(assert (=> d!499687 (= lt!619286 (head!3682 (list!7294 (_1!10399 (lex!1338 thiss!17113 rules!1846 (seqFromList!2190 lt!619200))))))))

(assert (=> d!499687 (not (isEmpty!11338 rules!1846))))

(assert (=> d!499687 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!422 thiss!17113 rules!1846 lt!619200 lt!619199) lt!619300)))

(declare-fun b!1656748 () Bool)

(declare-fun Unit!30730 () Unit!30727)

(assert (=> b!1656748 (= e!1062342 Unit!30730)))

(assert (= (and d!499687 res!743055) b!1656745))

(assert (= (and b!1656745 res!743056) b!1656746))

(assert (= (and d!499687 c!269472) b!1656747))

(assert (= (and d!499687 (not c!269472)) b!1656748))

(declare-fun m!2011713 () Bool)

(assert (=> b!1656746 m!2011713))

(assert (=> b!1656746 m!2011713))

(declare-fun m!2011715 () Bool)

(assert (=> b!1656746 m!2011715))

(declare-fun m!2011717 () Bool)

(assert (=> b!1656745 m!2011717))

(declare-fun m!2011719 () Bool)

(assert (=> b!1656745 m!2011719))

(assert (=> b!1656745 m!2011713))

(assert (=> b!1656745 m!2011715))

(assert (=> b!1656745 m!2011713))

(declare-fun m!2011721 () Bool)

(assert (=> b!1656745 m!2011721))

(assert (=> b!1656745 m!2011717))

(assert (=> b!1656745 m!2011721))

(declare-fun m!2011723 () Bool)

(assert (=> b!1656747 m!2011723))

(declare-fun m!2011725 () Bool)

(assert (=> b!1656747 m!2011725))

(declare-fun m!2011727 () Bool)

(assert (=> b!1656747 m!2011727))

(assert (=> b!1656747 m!2011723))

(declare-fun m!2011729 () Bool)

(assert (=> b!1656747 m!2011729))

(assert (=> b!1656747 m!2011721))

(assert (=> b!1656747 m!2011717))

(assert (=> b!1656747 m!2011519))

(declare-fun m!2011731 () Bool)

(assert (=> b!1656747 m!2011731))

(assert (=> b!1656747 m!2011721))

(assert (=> b!1656747 m!2011519))

(assert (=> d!499687 m!2011477))

(assert (=> d!499687 m!2011539))

(assert (=> d!499687 m!2011541))

(declare-fun m!2011733 () Bool)

(assert (=> d!499687 m!2011733))

(declare-fun m!2011735 () Bool)

(assert (=> d!499687 m!2011735))

(declare-fun m!2011737 () Bool)

(assert (=> d!499687 m!2011737))

(assert (=> d!499687 m!2011519))

(declare-fun m!2011739 () Bool)

(assert (=> d!499687 m!2011739))

(assert (=> d!499687 m!2011721))

(assert (=> d!499687 m!2011717))

(assert (=> d!499687 m!2011721))

(declare-fun m!2011741 () Bool)

(assert (=> d!499687 m!2011741))

(declare-fun m!2011743 () Bool)

(assert (=> d!499687 m!2011743))

(declare-fun m!2011745 () Bool)

(assert (=> d!499687 m!2011745))

(assert (=> d!499687 m!2011741))

(assert (=> d!499687 m!2011733))

(declare-fun m!2011747 () Bool)

(assert (=> d!499687 m!2011747))

(declare-fun m!2011749 () Bool)

(assert (=> d!499687 m!2011749))

(assert (=> d!499687 m!2011559))

(declare-fun m!2011751 () Bool)

(assert (=> d!499687 m!2011751))

(assert (=> d!499687 m!2011747))

(declare-fun m!2011753 () Bool)

(assert (=> d!499687 m!2011753))

(assert (=> d!499687 m!2011713))

(assert (=> d!499687 m!2011539))

(assert (=> d!499687 m!2011519))

(assert (=> d!499687 m!2011747))

(assert (=> d!499687 m!2011519))

(assert (=> d!499687 m!2011559))

(declare-fun m!2011755 () Bool)

(assert (=> d!499687 m!2011755))

(assert (=> d!499687 m!2011713))

(declare-fun m!2011757 () Bool)

(assert (=> d!499687 m!2011757))

(assert (=> b!1656701 d!499687))

(declare-fun d!499715 () Bool)

(declare-fun lt!619329 () Bool)

(declare-fun e!1062370 () Bool)

(assert (=> d!499715 (= lt!619329 e!1062370)))

(declare-fun res!743086 () Bool)

(assert (=> d!499715 (=> (not res!743086) (not e!1062370))))

(assert (=> d!499715 (= res!743086 (= (list!7294 (_1!10399 (lex!1338 thiss!17113 rules!1846 (print!1385 thiss!17113 (singletonSeq!1723 (h!23698 tokens!457)))))) (list!7294 (singletonSeq!1723 (h!23698 tokens!457)))))))

(declare-fun e!1062369 () Bool)

(assert (=> d!499715 (= lt!619329 e!1062369)))

(declare-fun res!743085 () Bool)

(assert (=> d!499715 (=> (not res!743085) (not e!1062369))))

(declare-fun lt!619328 () tuple2!17994)

(declare-fun size!14553 (BalanceConc!12142) Int)

(assert (=> d!499715 (= res!743085 (= (size!14553 (_1!10399 lt!619328)) 1))))

(assert (=> d!499715 (= lt!619328 (lex!1338 thiss!17113 rules!1846 (print!1385 thiss!17113 (singletonSeq!1723 (h!23698 tokens!457)))))))

(assert (=> d!499715 (not (isEmpty!11338 rules!1846))))

(assert (=> d!499715 (= (rulesProduceIndividualToken!1502 thiss!17113 rules!1846 (h!23698 tokens!457)) lt!619329)))

(declare-fun b!1656782 () Bool)

(declare-fun res!743084 () Bool)

(assert (=> b!1656782 (=> (not res!743084) (not e!1062369))))

(declare-fun apply!4868 (BalanceConc!12142 Int) Token!6016)

(assert (=> b!1656782 (= res!743084 (= (apply!4868 (_1!10399 lt!619328) 0) (h!23698 tokens!457)))))

(declare-fun b!1656783 () Bool)

(declare-fun isEmpty!11341 (BalanceConc!12140) Bool)

(assert (=> b!1656783 (= e!1062369 (isEmpty!11341 (_2!10399 lt!619328)))))

(declare-fun b!1656784 () Bool)

(assert (=> b!1656784 (= e!1062370 (isEmpty!11341 (_2!10399 (lex!1338 thiss!17113 rules!1846 (print!1385 thiss!17113 (singletonSeq!1723 (h!23698 tokens!457)))))))))

(assert (= (and d!499715 res!743085) b!1656782))

(assert (= (and b!1656782 res!743084) b!1656783))

(assert (= (and d!499715 res!743086) b!1656784))

(declare-fun m!2011789 () Bool)

(assert (=> d!499715 m!2011789))

(assert (=> d!499715 m!2011605))

(declare-fun m!2011791 () Bool)

(assert (=> d!499715 m!2011791))

(declare-fun m!2011793 () Bool)

(assert (=> d!499715 m!2011793))

(declare-fun m!2011795 () Bool)

(assert (=> d!499715 m!2011795))

(assert (=> d!499715 m!2011477))

(assert (=> d!499715 m!2011605))

(assert (=> d!499715 m!2011605))

(assert (=> d!499715 m!2011793))

(declare-fun m!2011797 () Bool)

(assert (=> d!499715 m!2011797))

(declare-fun m!2011799 () Bool)

(assert (=> b!1656782 m!2011799))

(declare-fun m!2011801 () Bool)

(assert (=> b!1656783 m!2011801))

(assert (=> b!1656784 m!2011605))

(assert (=> b!1656784 m!2011605))

(assert (=> b!1656784 m!2011793))

(assert (=> b!1656784 m!2011793))

(assert (=> b!1656784 m!2011795))

(declare-fun m!2011803 () Bool)

(assert (=> b!1656784 m!2011803))

(assert (=> b!1656700 d!499715))

(declare-fun d!499721 () Bool)

(assert (=> d!499721 (= (get!5343 (maxPrefixZipperSequence!731 thiss!17113 rules!1846 lt!619184)) (v!24697 (maxPrefixZipperSequence!731 thiss!17113 rules!1846 lt!619184)))))

(assert (=> b!1656679 d!499721))

(declare-fun b!1656807 () Bool)

(declare-fun e!1062392 () Bool)

(declare-fun e!1062394 () Bool)

(assert (=> b!1656807 (= e!1062392 e!1062394)))

(declare-fun res!743108 () Bool)

(assert (=> b!1656807 (=> (not res!743108) (not e!1062394))))

(declare-fun lt!619368 () Option!3495)

(assert (=> b!1656807 (= res!743108 (= (_1!10400 (get!5343 lt!619368)) (_1!10401 (get!5344 (maxPrefixZipper!352 thiss!17113 rules!1846 (list!7293 lt!619184))))))))

(declare-fun e!1062390 () Bool)

(declare-fun b!1656808 () Bool)

(assert (=> b!1656808 (= e!1062390 (= (list!7293 (_2!10400 (get!5343 lt!619368))) (_2!10401 (get!5344 (maxPrefix!1416 thiss!17113 rules!1846 (list!7293 lt!619184))))))))

(declare-fun b!1656809 () Bool)

(declare-fun res!743109 () Bool)

(declare-fun e!1062393 () Bool)

(assert (=> b!1656809 (=> (not res!743109) (not e!1062393))))

(assert (=> b!1656809 (= res!743109 e!1062392)))

(declare-fun res!743106 () Bool)

(assert (=> b!1656809 (=> res!743106 e!1062392)))

(assert (=> b!1656809 (= res!743106 (not (isDefined!2850 lt!619368)))))

(declare-fun b!1656810 () Bool)

(declare-fun e!1062391 () Bool)

(assert (=> b!1656810 (= e!1062393 e!1062391)))

(declare-fun res!743107 () Bool)

(assert (=> b!1656810 (=> res!743107 e!1062391)))

(assert (=> b!1656810 (= res!743107 (not (isDefined!2850 lt!619368)))))

(declare-fun b!1656811 () Bool)

(assert (=> b!1656811 (= e!1062394 (= (list!7293 (_2!10400 (get!5343 lt!619368))) (_2!10401 (get!5344 (maxPrefixZipper!352 thiss!17113 rules!1846 (list!7293 lt!619184))))))))

(declare-fun b!1656812 () Bool)

(declare-fun e!1062389 () Option!3495)

(declare-fun call!106144 () Option!3495)

(assert (=> b!1656812 (= e!1062389 call!106144)))

(declare-fun b!1656813 () Bool)

(declare-fun lt!619370 () Option!3495)

(declare-fun lt!619371 () Option!3495)

(assert (=> b!1656813 (= e!1062389 (ite (and ((_ is None!3494) lt!619370) ((_ is None!3494) lt!619371)) None!3494 (ite ((_ is None!3494) lt!619371) lt!619370 (ite ((_ is None!3494) lt!619370) lt!619371 (ite (>= (size!14552 (_1!10400 (v!24697 lt!619370))) (size!14552 (_1!10400 (v!24697 lt!619371)))) lt!619370 lt!619371)))))))

(assert (=> b!1656813 (= lt!619370 call!106144)))

(assert (=> b!1656813 (= lt!619371 (maxPrefixZipperSequence!731 thiss!17113 (t!151289 rules!1846) lt!619184))))

(declare-fun b!1656814 () Bool)

(assert (=> b!1656814 (= e!1062391 e!1062390)))

(declare-fun res!743110 () Bool)

(assert (=> b!1656814 (=> (not res!743110) (not e!1062390))))

(assert (=> b!1656814 (= res!743110 (= (_1!10400 (get!5343 lt!619368)) (_1!10401 (get!5344 (maxPrefix!1416 thiss!17113 rules!1846 (list!7293 lt!619184))))))))

(declare-fun bm!106139 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!345 (LexerInterface!2854 Rule!6250 BalanceConc!12140) Option!3495)

(assert (=> bm!106139 (= call!106144 (maxPrefixOneRuleZipperSequence!345 thiss!17113 (h!23699 rules!1846) lt!619184))))

(declare-fun d!499723 () Bool)

(assert (=> d!499723 e!1062393))

(declare-fun res!743105 () Bool)

(assert (=> d!499723 (=> (not res!743105) (not e!1062393))))

(assert (=> d!499723 (= res!743105 (= (isDefined!2850 lt!619368) (isDefined!2851 (maxPrefixZipper!352 thiss!17113 rules!1846 (list!7293 lt!619184)))))))

(assert (=> d!499723 (= lt!619368 e!1062389)))

(declare-fun c!269478 () Bool)

(assert (=> d!499723 (= c!269478 (and ((_ is Cons!18298) rules!1846) ((_ is Nil!18298) (t!151289 rules!1846))))))

(declare-fun lt!619369 () Unit!30727)

(declare-fun lt!619365 () Unit!30727)

(assert (=> d!499723 (= lt!619369 lt!619365)))

(declare-fun lt!619367 () List!18365)

(declare-fun lt!619366 () List!18365)

(assert (=> d!499723 (isPrefix!1483 lt!619367 lt!619366)))

(declare-fun lemmaIsPrefixRefl!1005 (List!18365 List!18365) Unit!30727)

(assert (=> d!499723 (= lt!619365 (lemmaIsPrefixRefl!1005 lt!619367 lt!619366))))

(assert (=> d!499723 (= lt!619366 (list!7293 lt!619184))))

(assert (=> d!499723 (= lt!619367 (list!7293 lt!619184))))

(declare-fun rulesValidInductive!1027 (LexerInterface!2854 List!18368) Bool)

(assert (=> d!499723 (rulesValidInductive!1027 thiss!17113 rules!1846)))

(assert (=> d!499723 (= (maxPrefixZipperSequence!731 thiss!17113 rules!1846 lt!619184) lt!619368)))

(assert (= (and d!499723 c!269478) b!1656812))

(assert (= (and d!499723 (not c!269478)) b!1656813))

(assert (= (or b!1656812 b!1656813) bm!106139))

(assert (= (and d!499723 res!743105) b!1656809))

(assert (= (and b!1656809 (not res!743106)) b!1656807))

(assert (= (and b!1656807 res!743108) b!1656811))

(assert (= (and b!1656809 res!743109) b!1656810))

(assert (= (and b!1656810 (not res!743107)) b!1656814))

(assert (= (and b!1656814 res!743110) b!1656808))

(declare-fun m!2011815 () Bool)

(assert (=> b!1656808 m!2011815))

(declare-fun m!2011817 () Bool)

(assert (=> b!1656808 m!2011817))

(declare-fun m!2011819 () Bool)

(assert (=> b!1656808 m!2011819))

(declare-fun m!2011821 () Bool)

(assert (=> b!1656808 m!2011821))

(assert (=> b!1656808 m!2011531))

(assert (=> b!1656808 m!2011819))

(assert (=> b!1656808 m!2011531))

(assert (=> b!1656814 m!2011817))

(assert (=> b!1656814 m!2011531))

(assert (=> b!1656814 m!2011531))

(assert (=> b!1656814 m!2011819))

(assert (=> b!1656814 m!2011819))

(assert (=> b!1656814 m!2011821))

(declare-fun m!2011823 () Bool)

(assert (=> d!499723 m!2011823))

(declare-fun m!2011825 () Bool)

(assert (=> d!499723 m!2011825))

(declare-fun m!2011827 () Bool)

(assert (=> d!499723 m!2011827))

(declare-fun m!2011829 () Bool)

(assert (=> d!499723 m!2011829))

(assert (=> d!499723 m!2011531))

(declare-fun m!2011831 () Bool)

(assert (=> d!499723 m!2011831))

(assert (=> d!499723 m!2011531))

(assert (=> d!499723 m!2011831))

(declare-fun m!2011833 () Bool)

(assert (=> d!499723 m!2011833))

(assert (=> b!1656809 m!2011825))

(assert (=> b!1656810 m!2011825))

(assert (=> b!1656807 m!2011817))

(assert (=> b!1656807 m!2011531))

(assert (=> b!1656807 m!2011531))

(assert (=> b!1656807 m!2011831))

(assert (=> b!1656807 m!2011831))

(declare-fun m!2011835 () Bool)

(assert (=> b!1656807 m!2011835))

(declare-fun m!2011837 () Bool)

(assert (=> b!1656813 m!2011837))

(assert (=> b!1656811 m!2011815))

(assert (=> b!1656811 m!2011831))

(assert (=> b!1656811 m!2011835))

(assert (=> b!1656811 m!2011817))

(assert (=> b!1656811 m!2011531))

(assert (=> b!1656811 m!2011831))

(assert (=> b!1656811 m!2011531))

(declare-fun m!2011839 () Bool)

(assert (=> bm!106139 m!2011839))

(assert (=> b!1656679 d!499723))

(declare-fun d!499731 () Bool)

(declare-fun lt!619374 () BalanceConc!12140)

(assert (=> d!499731 (= (list!7293 lt!619374) (printList!967 thiss!17113 (list!7294 lt!619181)))))

(assert (=> d!499731 (= lt!619374 (printTailRec!905 thiss!17113 lt!619181 0 (BalanceConc!12141 Empty!6098)))))

(assert (=> d!499731 (= (print!1385 thiss!17113 lt!619181) lt!619374)))

(declare-fun bs!396888 () Bool)

(assert (= bs!396888 d!499731))

(declare-fun m!2011841 () Bool)

(assert (=> bs!396888 m!2011841))

(assert (=> bs!396888 m!2011567))

(assert (=> bs!396888 m!2011567))

(declare-fun m!2011843 () Bool)

(assert (=> bs!396888 m!2011843))

(declare-fun m!2011845 () Bool)

(assert (=> bs!396888 m!2011845))

(assert (=> b!1656678 d!499731))

(declare-fun d!499733 () Bool)

(declare-fun list!7296 (Conc!6098) List!18365)

(assert (=> d!499733 (= (list!7293 lt!619184) (list!7296 (c!269463 lt!619184)))))

(declare-fun bs!396889 () Bool)

(assert (= bs!396889 d!499733))

(declare-fun m!2011847 () Bool)

(assert (=> bs!396889 m!2011847))

(assert (=> b!1656678 d!499733))

(declare-fun b!1656826 () Bool)

(declare-fun e!1062400 () Bool)

(declare-fun lt!619377 () List!18365)

(assert (=> b!1656826 (= e!1062400 (or (not (= lt!619199 Nil!18295)) (= lt!619377 lt!619200)))))

(declare-fun d!499735 () Bool)

(assert (=> d!499735 e!1062400))

(declare-fun res!743115 () Bool)

(assert (=> d!499735 (=> (not res!743115) (not e!1062400))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2544 (List!18365) (InoxSet C!9280))

(assert (=> d!499735 (= res!743115 (= (content!2544 lt!619377) ((_ map or) (content!2544 lt!619200) (content!2544 lt!619199))))))

(declare-fun e!1062399 () List!18365)

(assert (=> d!499735 (= lt!619377 e!1062399)))

(declare-fun c!269481 () Bool)

(assert (=> d!499735 (= c!269481 ((_ is Nil!18295) lt!619200))))

(assert (=> d!499735 (= (++!4963 lt!619200 lt!619199) lt!619377)))

(declare-fun b!1656824 () Bool)

(assert (=> b!1656824 (= e!1062399 (Cons!18295 (h!23696 lt!619200) (++!4963 (t!151286 lt!619200) lt!619199)))))

(declare-fun b!1656823 () Bool)

(assert (=> b!1656823 (= e!1062399 lt!619199)))

(declare-fun b!1656825 () Bool)

(declare-fun res!743116 () Bool)

(assert (=> b!1656825 (=> (not res!743116) (not e!1062400))))

(declare-fun size!14555 (List!18365) Int)

(assert (=> b!1656825 (= res!743116 (= (size!14555 lt!619377) (+ (size!14555 lt!619200) (size!14555 lt!619199))))))

(assert (= (and d!499735 c!269481) b!1656823))

(assert (= (and d!499735 (not c!269481)) b!1656824))

(assert (= (and d!499735 res!743115) b!1656825))

(assert (= (and b!1656825 res!743116) b!1656826))

(declare-fun m!2011849 () Bool)

(assert (=> d!499735 m!2011849))

(declare-fun m!2011851 () Bool)

(assert (=> d!499735 m!2011851))

(declare-fun m!2011853 () Bool)

(assert (=> d!499735 m!2011853))

(declare-fun m!2011855 () Bool)

(assert (=> b!1656824 m!2011855))

(declare-fun m!2011857 () Bool)

(assert (=> b!1656825 m!2011857))

(declare-fun m!2011859 () Bool)

(assert (=> b!1656825 m!2011859))

(declare-fun m!2011861 () Bool)

(assert (=> b!1656825 m!2011861))

(assert (=> b!1656678 d!499735))

(declare-fun d!499737 () Bool)

(declare-fun fromListB!985 (List!18367) BalanceConc!12142)

(assert (=> d!499737 (= (seqFromList!2189 (t!151288 tokens!457)) (fromListB!985 (t!151288 tokens!457)))))

(declare-fun bs!396890 () Bool)

(assert (= bs!396890 d!499737))

(declare-fun m!2011863 () Bool)

(assert (=> bs!396890 m!2011863))

(assert (=> b!1656678 d!499737))

(declare-fun d!499739 () Bool)

(declare-fun lt!619378 () BalanceConc!12140)

(assert (=> d!499739 (= (list!7293 lt!619378) (printList!967 thiss!17113 (list!7294 (seqFromList!2189 tokens!457))))))

(assert (=> d!499739 (= lt!619378 (printTailRec!905 thiss!17113 (seqFromList!2189 tokens!457) 0 (BalanceConc!12141 Empty!6098)))))

(assert (=> d!499739 (= (print!1385 thiss!17113 (seqFromList!2189 tokens!457)) lt!619378)))

(declare-fun bs!396891 () Bool)

(assert (= bs!396891 d!499739))

(declare-fun m!2011865 () Bool)

(assert (=> bs!396891 m!2011865))

(assert (=> bs!396891 m!2011527))

(declare-fun m!2011867 () Bool)

(assert (=> bs!396891 m!2011867))

(assert (=> bs!396891 m!2011867))

(declare-fun m!2011869 () Bool)

(assert (=> bs!396891 m!2011869))

(assert (=> bs!396891 m!2011527))

(declare-fun m!2011871 () Bool)

(assert (=> bs!396891 m!2011871))

(assert (=> b!1656678 d!499739))

(declare-fun b!1656837 () Bool)

(declare-fun e!1062408 () Bool)

(declare-fun lt!619381 () tuple2!17994)

(assert (=> b!1656837 (= e!1062408 (= (_2!10399 lt!619381) lt!619193))))

(declare-fun d!499741 () Bool)

(declare-fun e!1062409 () Bool)

(assert (=> d!499741 e!1062409))

(declare-fun res!743125 () Bool)

(assert (=> d!499741 (=> (not res!743125) (not e!1062409))))

(assert (=> d!499741 (= res!743125 e!1062408)))

(declare-fun c!269484 () Bool)

(assert (=> d!499741 (= c!269484 (> (size!14553 (_1!10399 lt!619381)) 0))))

(declare-fun lexTailRecV2!603 (LexerInterface!2854 List!18368 BalanceConc!12140 BalanceConc!12140 BalanceConc!12140 BalanceConc!12142) tuple2!17994)

(assert (=> d!499741 (= lt!619381 (lexTailRecV2!603 thiss!17113 rules!1846 lt!619193 (BalanceConc!12141 Empty!6098) lt!619193 (BalanceConc!12143 Empty!6099)))))

(assert (=> d!499741 (= (lex!1338 thiss!17113 rules!1846 lt!619193) lt!619381)))

(declare-fun b!1656838 () Bool)

(declare-fun e!1062407 () Bool)

(assert (=> b!1656838 (= e!1062408 e!1062407)))

(declare-fun res!743123 () Bool)

(declare-fun size!14556 (BalanceConc!12140) Int)

(assert (=> b!1656838 (= res!743123 (< (size!14556 (_2!10399 lt!619381)) (size!14556 lt!619193)))))

(assert (=> b!1656838 (=> (not res!743123) (not e!1062407))))

(declare-fun b!1656839 () Bool)

(assert (=> b!1656839 (= e!1062407 (not (isEmpty!11339 (_1!10399 lt!619381))))))

(declare-fun b!1656840 () Bool)

(declare-datatypes ((tuple2!18000 0))(
  ( (tuple2!18001 (_1!10402 List!18367) (_2!10402 List!18365)) )
))
(declare-fun lexList!880 (LexerInterface!2854 List!18368 List!18365) tuple2!18000)

(assert (=> b!1656840 (= e!1062409 (= (list!7293 (_2!10399 lt!619381)) (_2!10402 (lexList!880 thiss!17113 rules!1846 (list!7293 lt!619193)))))))

(declare-fun b!1656841 () Bool)

(declare-fun res!743124 () Bool)

(assert (=> b!1656841 (=> (not res!743124) (not e!1062409))))

(assert (=> b!1656841 (= res!743124 (= (list!7294 (_1!10399 lt!619381)) (_1!10402 (lexList!880 thiss!17113 rules!1846 (list!7293 lt!619193)))))))

(assert (= (and d!499741 c!269484) b!1656838))

(assert (= (and d!499741 (not c!269484)) b!1656837))

(assert (= (and b!1656838 res!743123) b!1656839))

(assert (= (and d!499741 res!743125) b!1656841))

(assert (= (and b!1656841 res!743124) b!1656840))

(declare-fun m!2011873 () Bool)

(assert (=> b!1656838 m!2011873))

(declare-fun m!2011875 () Bool)

(assert (=> b!1656838 m!2011875))

(declare-fun m!2011877 () Bool)

(assert (=> b!1656839 m!2011877))

(declare-fun m!2011879 () Bool)

(assert (=> b!1656840 m!2011879))

(assert (=> b!1656840 m!2011533))

(assert (=> b!1656840 m!2011533))

(declare-fun m!2011881 () Bool)

(assert (=> b!1656840 m!2011881))

(declare-fun m!2011883 () Bool)

(assert (=> b!1656841 m!2011883))

(assert (=> b!1656841 m!2011533))

(assert (=> b!1656841 m!2011533))

(assert (=> b!1656841 m!2011881))

(declare-fun m!2011885 () Bool)

(assert (=> d!499741 m!2011885))

(declare-fun m!2011887 () Bool)

(assert (=> d!499741 m!2011887))

(assert (=> b!1656678 d!499741))

(declare-fun d!499743 () Bool)

(assert (=> d!499743 (= (seqFromList!2189 tokens!457) (fromListB!985 tokens!457))))

(declare-fun bs!396892 () Bool)

(assert (= bs!396892 d!499743))

(declare-fun m!2011889 () Bool)

(assert (=> bs!396892 m!2011889))

(assert (=> b!1656678 d!499743))

(declare-fun d!499745 () Bool)

(assert (=> d!499745 (= (list!7293 lt!619172) (list!7296 (c!269463 lt!619172)))))

(declare-fun bs!396893 () Bool)

(assert (= bs!396893 d!499745))

(declare-fun m!2011891 () Bool)

(assert (=> bs!396893 m!2011891))

(assert (=> b!1656678 d!499745))

(declare-fun d!499747 () Bool)

(declare-fun lt!619384 () BalanceConc!12140)

(assert (=> d!499747 (= (list!7293 lt!619384) (originalCharacters!4039 (h!23698 tokens!457)))))

(declare-fun dynLambda!8209 (Int TokenValue!3315) BalanceConc!12140)

(assert (=> d!499747 (= lt!619384 (dynLambda!8209 (toChars!4535 (transformation!3225 (rule!5097 (h!23698 tokens!457)))) (value!101585 (h!23698 tokens!457))))))

(assert (=> d!499747 (= (charsOf!1874 (h!23698 tokens!457)) lt!619384)))

(declare-fun b_lambda!52027 () Bool)

(assert (=> (not b_lambda!52027) (not d!499747)))

(declare-fun t!151297 () Bool)

(declare-fun tb!94803 () Bool)

(assert (=> (and b!1656682 (= (toChars!4535 (transformation!3225 (h!23699 rules!1846))) (toChars!4535 (transformation!3225 (rule!5097 (h!23698 tokens!457))))) t!151297) tb!94803))

(declare-fun b!1656846 () Bool)

(declare-fun e!1062412 () Bool)

(declare-fun tp!478794 () Bool)

(declare-fun inv!23648 (Conc!6098) Bool)

(assert (=> b!1656846 (= e!1062412 (and (inv!23648 (c!269463 (dynLambda!8209 (toChars!4535 (transformation!3225 (rule!5097 (h!23698 tokens!457)))) (value!101585 (h!23698 tokens!457))))) tp!478794))))

(declare-fun result!114584 () Bool)

(declare-fun inv!23649 (BalanceConc!12140) Bool)

(assert (=> tb!94803 (= result!114584 (and (inv!23649 (dynLambda!8209 (toChars!4535 (transformation!3225 (rule!5097 (h!23698 tokens!457)))) (value!101585 (h!23698 tokens!457)))) e!1062412))))

(assert (= tb!94803 b!1656846))

(declare-fun m!2011893 () Bool)

(assert (=> b!1656846 m!2011893))

(declare-fun m!2011895 () Bool)

(assert (=> tb!94803 m!2011895))

(assert (=> d!499747 t!151297))

(declare-fun b_and!117601 () Bool)

(assert (= b_and!117591 (and (=> t!151297 result!114584) b_and!117601)))

(declare-fun t!151299 () Bool)

(declare-fun tb!94805 () Bool)

(assert (=> (and b!1656685 (= (toChars!4535 (transformation!3225 (rule!5097 (h!23698 tokens!457)))) (toChars!4535 (transformation!3225 (rule!5097 (h!23698 tokens!457))))) t!151299) tb!94805))

(declare-fun result!114588 () Bool)

(assert (= result!114588 result!114584))

(assert (=> d!499747 t!151299))

(declare-fun b_and!117603 () Bool)

(assert (= b_and!117595 (and (=> t!151299 result!114588) b_and!117603)))

(declare-fun m!2011897 () Bool)

(assert (=> d!499747 m!2011897))

(declare-fun m!2011899 () Bool)

(assert (=> d!499747 m!2011899))

(assert (=> b!1656678 d!499747))

(declare-fun d!499749 () Bool)

(assert (=> d!499749 (= (list!7293 lt!619193) (list!7296 (c!269463 lt!619193)))))

(declare-fun bs!396894 () Bool)

(assert (= bs!396894 d!499749))

(declare-fun m!2011901 () Bool)

(assert (=> bs!396894 m!2011901))

(assert (=> b!1656678 d!499749))

(declare-fun d!499751 () Bool)

(assert (=> d!499751 (= (list!7294 (_1!10399 lt!619175)) (list!7294 (prepend!799 (seqFromList!2189 (t!151288 (t!151288 tokens!457))) (h!23698 (t!151288 tokens!457)))))))

(declare-fun lt!619387 () Unit!30727)

(declare-fun choose!9949 (Token!6016 List!18367 BalanceConc!12142) Unit!30727)

(assert (=> d!499751 (= lt!619387 (choose!9949 (h!23698 (t!151288 tokens!457)) (t!151288 (t!151288 tokens!457)) (_1!10399 lt!619175)))))

(declare-fun $colon$colon!380 (List!18367 Token!6016) List!18367)

(assert (=> d!499751 (= (list!7294 (_1!10399 lt!619175)) (list!7294 (seqFromList!2189 ($colon$colon!380 (t!151288 (t!151288 tokens!457)) (h!23698 (t!151288 tokens!457))))))))

(assert (=> d!499751 (= (seqFromListBHdTlConstructive!300 (h!23698 (t!151288 tokens!457)) (t!151288 (t!151288 tokens!457)) (_1!10399 lt!619175)) lt!619387)))

(declare-fun bs!396895 () Bool)

(assert (= bs!396895 d!499751))

(assert (=> bs!396895 m!2011571))

(assert (=> bs!396895 m!2011573))

(declare-fun m!2011903 () Bool)

(assert (=> bs!396895 m!2011903))

(assert (=> bs!396895 m!2011573))

(assert (=> bs!396895 m!2011575))

(declare-fun m!2011905 () Bool)

(assert (=> bs!396895 m!2011905))

(assert (=> bs!396895 m!2011905))

(declare-fun m!2011907 () Bool)

(assert (=> bs!396895 m!2011907))

(assert (=> bs!396895 m!2011907))

(declare-fun m!2011909 () Bool)

(assert (=> bs!396895 m!2011909))

(assert (=> bs!396895 m!2011483))

(assert (=> bs!396895 m!2011571))

(assert (=> b!1656699 d!499751))

(declare-fun d!499753 () Bool)

(declare-fun e!1062415 () Bool)

(assert (=> d!499753 e!1062415))

(declare-fun res!743128 () Bool)

(assert (=> d!499753 (=> (not res!743128) (not e!1062415))))

(declare-fun isBalanced!1881 (Conc!6099) Bool)

(declare-fun prepend!801 (Conc!6099 Token!6016) Conc!6099)

(assert (=> d!499753 (= res!743128 (isBalanced!1881 (prepend!801 (c!269465 (seqFromList!2189 (t!151288 (t!151288 tokens!457)))) (h!23698 (t!151288 tokens!457)))))))

(declare-fun lt!619390 () BalanceConc!12142)

(assert (=> d!499753 (= lt!619390 (BalanceConc!12143 (prepend!801 (c!269465 (seqFromList!2189 (t!151288 (t!151288 tokens!457)))) (h!23698 (t!151288 tokens!457)))))))

(assert (=> d!499753 (= (prepend!799 (seqFromList!2189 (t!151288 (t!151288 tokens!457))) (h!23698 (t!151288 tokens!457))) lt!619390)))

(declare-fun b!1656849 () Bool)

(assert (=> b!1656849 (= e!1062415 (= (list!7294 lt!619390) (Cons!18297 (h!23698 (t!151288 tokens!457)) (list!7294 (seqFromList!2189 (t!151288 (t!151288 tokens!457)))))))))

(assert (= (and d!499753 res!743128) b!1656849))

(declare-fun m!2011911 () Bool)

(assert (=> d!499753 m!2011911))

(assert (=> d!499753 m!2011911))

(declare-fun m!2011913 () Bool)

(assert (=> d!499753 m!2011913))

(declare-fun m!2011915 () Bool)

(assert (=> b!1656849 m!2011915))

(assert (=> b!1656849 m!2011571))

(declare-fun m!2011917 () Bool)

(assert (=> b!1656849 m!2011917))

(assert (=> b!1656699 d!499753))

(declare-fun d!499755 () Bool)

(declare-fun list!7298 (Conc!6099) List!18367)

(assert (=> d!499755 (= (list!7294 (prepend!799 (seqFromList!2189 (t!151288 (t!151288 tokens!457))) (h!23698 (t!151288 tokens!457)))) (list!7298 (c!269465 (prepend!799 (seqFromList!2189 (t!151288 (t!151288 tokens!457))) (h!23698 (t!151288 tokens!457))))))))

(declare-fun bs!396896 () Bool)

(assert (= bs!396896 d!499755))

(declare-fun m!2011919 () Bool)

(assert (=> bs!396896 m!2011919))

(assert (=> b!1656699 d!499755))

(declare-fun d!499757 () Bool)

(assert (=> d!499757 (= (seqFromList!2189 (t!151288 (t!151288 tokens!457))) (fromListB!985 (t!151288 (t!151288 tokens!457))))))

(declare-fun bs!396897 () Bool)

(assert (= bs!396897 d!499757))

(declare-fun m!2011921 () Bool)

(assert (=> bs!396897 m!2011921))

(assert (=> b!1656699 d!499757))

(declare-fun d!499759 () Bool)

(assert (=> d!499759 (= (list!7294 lt!619181) (list!7298 (c!269465 lt!619181)))))

(declare-fun bs!396898 () Bool)

(assert (= bs!396898 d!499759))

(declare-fun m!2011923 () Bool)

(assert (=> bs!396898 m!2011923))

(assert (=> b!1656699 d!499759))

(declare-fun b!1656866 () Bool)

(declare-fun e!1062430 () Bool)

(assert (=> b!1656866 (= e!1062430 true)))

(declare-fun b!1656865 () Bool)

(declare-fun e!1062429 () Bool)

(assert (=> b!1656865 (= e!1062429 e!1062430)))

(declare-fun b!1656864 () Bool)

(declare-fun e!1062428 () Bool)

(assert (=> b!1656864 (= e!1062428 e!1062429)))

(declare-fun d!499761 () Bool)

(assert (=> d!499761 e!1062428))

(assert (= b!1656865 b!1656866))

(assert (= b!1656864 b!1656865))

(assert (= (and d!499761 ((_ is Cons!18298) rules!1846)) b!1656864))

(declare-fun lambda!67776 () Int)

(declare-fun order!10933 () Int)

(declare-fun order!10935 () Int)

(declare-fun dynLambda!8210 (Int Int) Int)

(declare-fun dynLambda!8211 (Int Int) Int)

(assert (=> b!1656866 (< (dynLambda!8210 order!10933 (toValue!4676 (transformation!3225 (h!23699 rules!1846)))) (dynLambda!8211 order!10935 lambda!67776))))

(declare-fun order!10937 () Int)

(declare-fun dynLambda!8212 (Int Int) Int)

(assert (=> b!1656866 (< (dynLambda!8212 order!10937 (toChars!4535 (transformation!3225 (h!23699 rules!1846)))) (dynLambda!8211 order!10935 lambda!67776))))

(assert (=> d!499761 true))

(declare-fun lt!619393 () Bool)

(declare-fun forall!4159 (List!18367 Int) Bool)

(assert (=> d!499761 (= lt!619393 (forall!4159 tokens!457 lambda!67776))))

(declare-fun e!1062420 () Bool)

(assert (=> d!499761 (= lt!619393 e!1062420)))

(declare-fun res!743133 () Bool)

(assert (=> d!499761 (=> res!743133 e!1062420)))

(assert (=> d!499761 (= res!743133 (not ((_ is Cons!18297) tokens!457)))))

(assert (=> d!499761 (not (isEmpty!11338 rules!1846))))

(assert (=> d!499761 (= (rulesProduceEachTokenIndividuallyList!1056 thiss!17113 rules!1846 tokens!457) lt!619393)))

(declare-fun b!1656854 () Bool)

(declare-fun e!1062421 () Bool)

(assert (=> b!1656854 (= e!1062420 e!1062421)))

(declare-fun res!743134 () Bool)

(assert (=> b!1656854 (=> (not res!743134) (not e!1062421))))

(assert (=> b!1656854 (= res!743134 (rulesProduceIndividualToken!1502 thiss!17113 rules!1846 (h!23698 tokens!457)))))

(declare-fun b!1656855 () Bool)

(assert (=> b!1656855 (= e!1062421 (rulesProduceEachTokenIndividuallyList!1056 thiss!17113 rules!1846 (t!151288 tokens!457)))))

(assert (= (and d!499761 (not res!743133)) b!1656854))

(assert (= (and b!1656854 res!743134) b!1656855))

(declare-fun m!2011925 () Bool)

(assert (=> d!499761 m!2011925))

(assert (=> d!499761 m!2011477))

(assert (=> b!1656854 m!2011503))

(declare-fun m!2011927 () Bool)

(assert (=> b!1656855 m!2011927))

(assert (=> b!1656698 d!499761))

(declare-fun d!499763 () Bool)

(declare-fun res!743137 () Bool)

(declare-fun e!1062433 () Bool)

(assert (=> d!499763 (=> (not res!743137) (not e!1062433))))

(declare-fun rulesValid!1180 (LexerInterface!2854 List!18368) Bool)

(assert (=> d!499763 (= res!743137 (rulesValid!1180 thiss!17113 rules!1846))))

(assert (=> d!499763 (= (rulesInvariant!2523 thiss!17113 rules!1846) e!1062433)))

(declare-fun b!1656871 () Bool)

(declare-datatypes ((List!18372 0))(
  ( (Nil!18302) (Cons!18302 (h!23703 String!20907) (t!151335 List!18372)) )
))
(declare-fun noDuplicateTag!1180 (LexerInterface!2854 List!18368 List!18372) Bool)

(assert (=> b!1656871 (= e!1062433 (noDuplicateTag!1180 thiss!17113 rules!1846 Nil!18302))))

(assert (= (and d!499763 res!743137) b!1656871))

(declare-fun m!2011929 () Bool)

(assert (=> d!499763 m!2011929))

(declare-fun m!2011931 () Bool)

(assert (=> b!1656871 m!2011931))

(assert (=> b!1656697 d!499763))

(declare-fun d!499765 () Bool)

(declare-fun res!743142 () Bool)

(declare-fun e!1062438 () Bool)

(assert (=> d!499765 (=> res!743142 e!1062438)))

(assert (=> d!499765 (= res!743142 (or (not ((_ is Cons!18297) tokens!457)) (not ((_ is Cons!18297) (t!151288 tokens!457)))))))

(assert (=> d!499765 (= (tokensListTwoByTwoPredicateSeparableList!547 thiss!17113 tokens!457 rules!1846) e!1062438)))

(declare-fun b!1656876 () Bool)

(declare-fun e!1062439 () Bool)

(assert (=> b!1656876 (= e!1062438 e!1062439)))

(declare-fun res!743143 () Bool)

(assert (=> b!1656876 (=> (not res!743143) (not e!1062439))))

(assert (=> b!1656876 (= res!743143 (separableTokensPredicate!794 thiss!17113 (h!23698 tokens!457) (h!23698 (t!151288 tokens!457)) rules!1846))))

(declare-fun lt!619412 () Unit!30727)

(declare-fun Unit!30736 () Unit!30727)

(assert (=> b!1656876 (= lt!619412 Unit!30736)))

(assert (=> b!1656876 (> (size!14556 (charsOf!1874 (h!23698 (t!151288 tokens!457)))) 0)))

(declare-fun lt!619410 () Unit!30727)

(declare-fun Unit!30737 () Unit!30727)

(assert (=> b!1656876 (= lt!619410 Unit!30737)))

(assert (=> b!1656876 (rulesProduceIndividualToken!1502 thiss!17113 rules!1846 (h!23698 (t!151288 tokens!457)))))

(declare-fun lt!619411 () Unit!30727)

(declare-fun Unit!30738 () Unit!30727)

(assert (=> b!1656876 (= lt!619411 Unit!30738)))

(assert (=> b!1656876 (rulesProduceIndividualToken!1502 thiss!17113 rules!1846 (h!23698 tokens!457))))

(declare-fun lt!619408 () Unit!30727)

(declare-fun lt!619409 () Unit!30727)

(assert (=> b!1656876 (= lt!619408 lt!619409)))

(assert (=> b!1656876 (rulesProduceIndividualToken!1502 thiss!17113 rules!1846 (h!23698 (t!151288 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!616 (LexerInterface!2854 List!18368 List!18367 Token!6016) Unit!30727)

(assert (=> b!1656876 (= lt!619409 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!616 thiss!17113 rules!1846 tokens!457 (h!23698 (t!151288 tokens!457))))))

(declare-fun lt!619414 () Unit!30727)

(declare-fun lt!619413 () Unit!30727)

(assert (=> b!1656876 (= lt!619414 lt!619413)))

(assert (=> b!1656876 (rulesProduceIndividualToken!1502 thiss!17113 rules!1846 (h!23698 tokens!457))))

(assert (=> b!1656876 (= lt!619413 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!616 thiss!17113 rules!1846 tokens!457 (h!23698 tokens!457)))))

(declare-fun b!1656877 () Bool)

(assert (=> b!1656877 (= e!1062439 (tokensListTwoByTwoPredicateSeparableList!547 thiss!17113 (Cons!18297 (h!23698 (t!151288 tokens!457)) (t!151288 (t!151288 tokens!457))) rules!1846))))

(assert (= (and d!499765 (not res!743142)) b!1656876))

(assert (= (and b!1656876 res!743143) b!1656877))

(declare-fun m!2011933 () Bool)

(assert (=> b!1656876 m!2011933))

(assert (=> b!1656876 m!2011595))

(declare-fun m!2011935 () Bool)

(assert (=> b!1656876 m!2011935))

(assert (=> b!1656876 m!2011579))

(declare-fun m!2011937 () Bool)

(assert (=> b!1656876 m!2011937))

(assert (=> b!1656876 m!2011595))

(declare-fun m!2011939 () Bool)

(assert (=> b!1656876 m!2011939))

(assert (=> b!1656876 m!2011503))

(declare-fun m!2011941 () Bool)

(assert (=> b!1656877 m!2011941))

(assert (=> b!1656707 d!499765))

(declare-fun d!499767 () Bool)

(declare-fun c!269488 () Bool)

(assert (=> d!499767 (= c!269488 (isEmpty!11337 (++!4963 lt!619200 lt!619196)))))

(declare-fun e!1062442 () Bool)

(assert (=> d!499767 (= (prefixMatch!470 lt!619178 (++!4963 lt!619200 lt!619196)) e!1062442)))

(declare-fun b!1656882 () Bool)

(declare-fun lostCause!469 (Regex!4553) Bool)

(assert (=> b!1656882 (= e!1062442 (not (lostCause!469 lt!619178)))))

(declare-fun b!1656883 () Bool)

(declare-fun derivativeStep!1119 (Regex!4553 C!9280) Regex!4553)

(declare-fun tail!2463 (List!18365) List!18365)

(assert (=> b!1656883 (= e!1062442 (prefixMatch!470 (derivativeStep!1119 lt!619178 (head!3680 (++!4963 lt!619200 lt!619196))) (tail!2463 (++!4963 lt!619200 lt!619196))))))

(assert (= (and d!499767 c!269488) b!1656882))

(assert (= (and d!499767 (not c!269488)) b!1656883))

(assert (=> d!499767 m!2011561))

(declare-fun m!2011943 () Bool)

(assert (=> d!499767 m!2011943))

(declare-fun m!2011945 () Bool)

(assert (=> b!1656882 m!2011945))

(assert (=> b!1656883 m!2011561))

(declare-fun m!2011947 () Bool)

(assert (=> b!1656883 m!2011947))

(assert (=> b!1656883 m!2011947))

(declare-fun m!2011949 () Bool)

(assert (=> b!1656883 m!2011949))

(assert (=> b!1656883 m!2011561))

(declare-fun m!2011951 () Bool)

(assert (=> b!1656883 m!2011951))

(assert (=> b!1656883 m!2011949))

(assert (=> b!1656883 m!2011951))

(declare-fun m!2011953 () Bool)

(assert (=> b!1656883 m!2011953))

(assert (=> b!1656706 d!499767))

(declare-fun b!1656887 () Bool)

(declare-fun lt!619415 () List!18365)

(declare-fun e!1062444 () Bool)

(assert (=> b!1656887 (= e!1062444 (or (not (= lt!619196 Nil!18295)) (= lt!619415 lt!619200)))))

(declare-fun d!499769 () Bool)

(assert (=> d!499769 e!1062444))

(declare-fun res!743144 () Bool)

(assert (=> d!499769 (=> (not res!743144) (not e!1062444))))

(assert (=> d!499769 (= res!743144 (= (content!2544 lt!619415) ((_ map or) (content!2544 lt!619200) (content!2544 lt!619196))))))

(declare-fun e!1062443 () List!18365)

(assert (=> d!499769 (= lt!619415 e!1062443)))

(declare-fun c!269489 () Bool)

(assert (=> d!499769 (= c!269489 ((_ is Nil!18295) lt!619200))))

(assert (=> d!499769 (= (++!4963 lt!619200 lt!619196) lt!619415)))

(declare-fun b!1656885 () Bool)

(assert (=> b!1656885 (= e!1062443 (Cons!18295 (h!23696 lt!619200) (++!4963 (t!151286 lt!619200) lt!619196)))))

(declare-fun b!1656884 () Bool)

(assert (=> b!1656884 (= e!1062443 lt!619196)))

(declare-fun b!1656886 () Bool)

(declare-fun res!743145 () Bool)

(assert (=> b!1656886 (=> (not res!743145) (not e!1062444))))

(assert (=> b!1656886 (= res!743145 (= (size!14555 lt!619415) (+ (size!14555 lt!619200) (size!14555 lt!619196))))))

(assert (= (and d!499769 c!269489) b!1656884))

(assert (= (and d!499769 (not c!269489)) b!1656885))

(assert (= (and d!499769 res!743144) b!1656886))

(assert (= (and b!1656886 res!743145) b!1656887))

(declare-fun m!2011955 () Bool)

(assert (=> d!499769 m!2011955))

(assert (=> d!499769 m!2011851))

(declare-fun m!2011957 () Bool)

(assert (=> d!499769 m!2011957))

(declare-fun m!2011959 () Bool)

(assert (=> b!1656885 m!2011959))

(declare-fun m!2011961 () Bool)

(assert (=> b!1656886 m!2011961))

(assert (=> b!1656886 m!2011859))

(declare-fun m!2011963 () Bool)

(assert (=> b!1656886 m!2011963))

(assert (=> b!1656706 d!499769))

(declare-fun d!499771 () Bool)

(assert (=> d!499771 (= (list!7293 lt!619185) (list!7296 (c!269463 lt!619185)))))

(declare-fun bs!396899 () Bool)

(assert (= bs!396899 d!499771))

(declare-fun m!2011965 () Bool)

(assert (=> bs!396899 m!2011965))

(assert (=> b!1656706 d!499771))

(declare-fun d!499773 () Bool)

(assert (=> d!499773 (= (head!3680 lt!619199) (h!23696 lt!619199))))

(assert (=> b!1656684 d!499773))

(declare-fun d!499775 () Bool)

(assert (=> d!499775 (= (inv!23641 (tag!3507 (h!23699 rules!1846))) (= (mod (str.len (value!101584 (tag!3507 (h!23699 rules!1846)))) 2) 0))))

(assert (=> b!1656705 d!499775))

(declare-fun d!499777 () Bool)

(declare-fun res!743148 () Bool)

(declare-fun e!1062447 () Bool)

(assert (=> d!499777 (=> (not res!743148) (not e!1062447))))

(declare-fun semiInverseModEq!1251 (Int Int) Bool)

(assert (=> d!499777 (= res!743148 (semiInverseModEq!1251 (toChars!4535 (transformation!3225 (h!23699 rules!1846))) (toValue!4676 (transformation!3225 (h!23699 rules!1846)))))))

(assert (=> d!499777 (= (inv!23644 (transformation!3225 (h!23699 rules!1846))) e!1062447)))

(declare-fun b!1656890 () Bool)

(declare-fun equivClasses!1192 (Int Int) Bool)

(assert (=> b!1656890 (= e!1062447 (equivClasses!1192 (toChars!4535 (transformation!3225 (h!23699 rules!1846))) (toValue!4676 (transformation!3225 (h!23699 rules!1846)))))))

(assert (= (and d!499777 res!743148) b!1656890))

(declare-fun m!2011967 () Bool)

(assert (=> d!499777 m!2011967))

(declare-fun m!2011969 () Bool)

(assert (=> b!1656890 m!2011969))

(assert (=> b!1656705 d!499777))

(declare-fun b!1656909 () Bool)

(declare-fun res!743164 () Bool)

(declare-fun e!1062456 () Bool)

(assert (=> b!1656909 (=> (not res!743164) (not e!1062456))))

(declare-fun lt!619428 () Option!3496)

(assert (=> b!1656909 (= res!743164 (= (list!7293 (charsOf!1874 (_1!10401 (get!5344 lt!619428)))) (originalCharacters!4039 (_1!10401 (get!5344 lt!619428)))))))

(declare-fun b!1656910 () Bool)

(declare-fun e!1062454 () Bool)

(assert (=> b!1656910 (= e!1062454 e!1062456)))

(declare-fun res!743169 () Bool)

(assert (=> b!1656910 (=> (not res!743169) (not e!1062456))))

(assert (=> b!1656910 (= res!743169 (isDefined!2851 lt!619428))))

(declare-fun b!1656911 () Bool)

(declare-fun res!743167 () Bool)

(assert (=> b!1656911 (=> (not res!743167) (not e!1062456))))

(declare-fun apply!4871 (TokenValueInjection!6290 BalanceConc!12140) TokenValue!3315)

(assert (=> b!1656911 (= res!743167 (= (value!101585 (_1!10401 (get!5344 lt!619428))) (apply!4871 (transformation!3225 (rule!5097 (_1!10401 (get!5344 lt!619428)))) (seqFromList!2190 (originalCharacters!4039 (_1!10401 (get!5344 lt!619428)))))))))

(declare-fun b!1656912 () Bool)

(declare-fun res!743165 () Bool)

(assert (=> b!1656912 (=> (not res!743165) (not e!1062456))))

(assert (=> b!1656912 (= res!743165 (< (size!14555 (_2!10401 (get!5344 lt!619428))) (size!14555 lt!619177)))))

(declare-fun d!499779 () Bool)

(assert (=> d!499779 e!1062454))

(declare-fun res!743168 () Bool)

(assert (=> d!499779 (=> res!743168 e!1062454)))

(assert (=> d!499779 (= res!743168 (isEmpty!11340 lt!619428))))

(declare-fun e!1062455 () Option!3496)

(assert (=> d!499779 (= lt!619428 e!1062455)))

(declare-fun c!269492 () Bool)

(assert (=> d!499779 (= c!269492 (and ((_ is Cons!18298) rules!1846) ((_ is Nil!18298) (t!151289 rules!1846))))))

(declare-fun lt!619429 () Unit!30727)

(declare-fun lt!619427 () Unit!30727)

(assert (=> d!499779 (= lt!619429 lt!619427)))

(assert (=> d!499779 (isPrefix!1483 lt!619177 lt!619177)))

(assert (=> d!499779 (= lt!619427 (lemmaIsPrefixRefl!1005 lt!619177 lt!619177))))

(assert (=> d!499779 (rulesValidInductive!1027 thiss!17113 rules!1846)))

(assert (=> d!499779 (= (maxPrefix!1416 thiss!17113 rules!1846 lt!619177) lt!619428)))

(declare-fun bm!106142 () Bool)

(declare-fun call!106147 () Option!3496)

(assert (=> bm!106142 (= call!106147 (maxPrefixOneRule!820 thiss!17113 (h!23699 rules!1846) lt!619177))))

(declare-fun b!1656913 () Bool)

(declare-fun res!743166 () Bool)

(assert (=> b!1656913 (=> (not res!743166) (not e!1062456))))

(assert (=> b!1656913 (= res!743166 (= (++!4963 (list!7293 (charsOf!1874 (_1!10401 (get!5344 lt!619428)))) (_2!10401 (get!5344 lt!619428))) lt!619177))))

(declare-fun b!1656914 () Bool)

(assert (=> b!1656914 (= e!1062455 call!106147)))

(declare-fun b!1656915 () Bool)

(declare-fun res!743163 () Bool)

(assert (=> b!1656915 (=> (not res!743163) (not e!1062456))))

(assert (=> b!1656915 (= res!743163 (matchR!2046 (regex!3225 (rule!5097 (_1!10401 (get!5344 lt!619428)))) (list!7293 (charsOf!1874 (_1!10401 (get!5344 lt!619428))))))))

(declare-fun b!1656916 () Bool)

(declare-fun contains!3189 (List!18368 Rule!6250) Bool)

(assert (=> b!1656916 (= e!1062456 (contains!3189 rules!1846 (rule!5097 (_1!10401 (get!5344 lt!619428)))))))

(declare-fun b!1656917 () Bool)

(declare-fun lt!619426 () Option!3496)

(declare-fun lt!619430 () Option!3496)

(assert (=> b!1656917 (= e!1062455 (ite (and ((_ is None!3495) lt!619426) ((_ is None!3495) lt!619430)) None!3495 (ite ((_ is None!3495) lt!619430) lt!619426 (ite ((_ is None!3495) lt!619426) lt!619430 (ite (>= (size!14552 (_1!10401 (v!24698 lt!619426))) (size!14552 (_1!10401 (v!24698 lt!619430)))) lt!619426 lt!619430)))))))

(assert (=> b!1656917 (= lt!619426 call!106147)))

(assert (=> b!1656917 (= lt!619430 (maxPrefix!1416 thiss!17113 (t!151289 rules!1846) lt!619177))))

(assert (= (and d!499779 c!269492) b!1656914))

(assert (= (and d!499779 (not c!269492)) b!1656917))

(assert (= (or b!1656914 b!1656917) bm!106142))

(assert (= (and d!499779 (not res!743168)) b!1656910))

(assert (= (and b!1656910 res!743169) b!1656909))

(assert (= (and b!1656909 res!743164) b!1656912))

(assert (= (and b!1656912 res!743165) b!1656913))

(assert (= (and b!1656913 res!743166) b!1656911))

(assert (= (and b!1656911 res!743167) b!1656915))

(assert (= (and b!1656915 res!743163) b!1656916))

(declare-fun m!2011971 () Bool)

(assert (=> b!1656917 m!2011971))

(declare-fun m!2011973 () Bool)

(assert (=> b!1656913 m!2011973))

(declare-fun m!2011975 () Bool)

(assert (=> b!1656913 m!2011975))

(assert (=> b!1656913 m!2011975))

(declare-fun m!2011977 () Bool)

(assert (=> b!1656913 m!2011977))

(assert (=> b!1656913 m!2011977))

(declare-fun m!2011979 () Bool)

(assert (=> b!1656913 m!2011979))

(declare-fun m!2011981 () Bool)

(assert (=> b!1656910 m!2011981))

(declare-fun m!2011983 () Bool)

(assert (=> d!499779 m!2011983))

(declare-fun m!2011985 () Bool)

(assert (=> d!499779 m!2011985))

(declare-fun m!2011987 () Bool)

(assert (=> d!499779 m!2011987))

(assert (=> d!499779 m!2011829))

(assert (=> b!1656916 m!2011973))

(declare-fun m!2011989 () Bool)

(assert (=> b!1656916 m!2011989))

(assert (=> b!1656909 m!2011973))

(assert (=> b!1656909 m!2011975))

(assert (=> b!1656909 m!2011975))

(assert (=> b!1656909 m!2011977))

(assert (=> b!1656915 m!2011973))

(assert (=> b!1656915 m!2011975))

(assert (=> b!1656915 m!2011975))

(assert (=> b!1656915 m!2011977))

(assert (=> b!1656915 m!2011977))

(declare-fun m!2011991 () Bool)

(assert (=> b!1656915 m!2011991))

(assert (=> b!1656912 m!2011973))

(declare-fun m!2011993 () Bool)

(assert (=> b!1656912 m!2011993))

(declare-fun m!2011995 () Bool)

(assert (=> b!1656912 m!2011995))

(declare-fun m!2011997 () Bool)

(assert (=> bm!106142 m!2011997))

(assert (=> b!1656911 m!2011973))

(declare-fun m!2011999 () Bool)

(assert (=> b!1656911 m!2011999))

(assert (=> b!1656911 m!2011999))

(declare-fun m!2012001 () Bool)

(assert (=> b!1656911 m!2012001))

(assert (=> b!1656704 d!499779))

(declare-fun d!499781 () Bool)

(declare-fun lt!619450 () BalanceConc!12140)

(declare-fun printListTailRec!402 (LexerInterface!2854 List!18367 List!18365) List!18365)

(declare-fun dropList!692 (BalanceConc!12142 Int) List!18367)

(assert (=> d!499781 (= (list!7293 lt!619450) (printListTailRec!402 thiss!17113 (dropList!692 lt!619195 0) (list!7293 (BalanceConc!12141 Empty!6098))))))

(declare-fun e!1062462 () BalanceConc!12140)

(assert (=> d!499781 (= lt!619450 e!1062462)))

(declare-fun c!269495 () Bool)

(assert (=> d!499781 (= c!269495 (>= 0 (size!14553 lt!619195)))))

(declare-fun e!1062461 () Bool)

(assert (=> d!499781 e!1062461))

(declare-fun res!743172 () Bool)

(assert (=> d!499781 (=> (not res!743172) (not e!1062461))))

(assert (=> d!499781 (= res!743172 (>= 0 0))))

(assert (=> d!499781 (= (printTailRec!905 thiss!17113 lt!619195 0 (BalanceConc!12141 Empty!6098)) lt!619450)))

(declare-fun b!1656924 () Bool)

(assert (=> b!1656924 (= e!1062461 (<= 0 (size!14553 lt!619195)))))

(declare-fun b!1656925 () Bool)

(assert (=> b!1656925 (= e!1062462 (BalanceConc!12141 Empty!6098))))

(declare-fun b!1656926 () Bool)

(assert (=> b!1656926 (= e!1062462 (printTailRec!905 thiss!17113 lt!619195 (+ 0 1) (++!4964 (BalanceConc!12141 Empty!6098) (charsOf!1874 (apply!4868 lt!619195 0)))))))

(declare-fun lt!619447 () List!18367)

(assert (=> b!1656926 (= lt!619447 (list!7294 lt!619195))))

(declare-fun lt!619451 () Unit!30727)

(declare-fun lemmaDropApply!609 (List!18367 Int) Unit!30727)

(assert (=> b!1656926 (= lt!619451 (lemmaDropApply!609 lt!619447 0))))

(declare-fun drop!923 (List!18367 Int) List!18367)

(declare-fun apply!4872 (List!18367 Int) Token!6016)

(assert (=> b!1656926 (= (head!3682 (drop!923 lt!619447 0)) (apply!4872 lt!619447 0))))

(declare-fun lt!619446 () Unit!30727)

(assert (=> b!1656926 (= lt!619446 lt!619451)))

(declare-fun lt!619445 () List!18367)

(assert (=> b!1656926 (= lt!619445 (list!7294 lt!619195))))

(declare-fun lt!619448 () Unit!30727)

(declare-fun lemmaDropTail!589 (List!18367 Int) Unit!30727)

(assert (=> b!1656926 (= lt!619448 (lemmaDropTail!589 lt!619445 0))))

(declare-fun tail!2464 (List!18367) List!18367)

(assert (=> b!1656926 (= (tail!2464 (drop!923 lt!619445 0)) (drop!923 lt!619445 (+ 0 1)))))

(declare-fun lt!619449 () Unit!30727)

(assert (=> b!1656926 (= lt!619449 lt!619448)))

(assert (= (and d!499781 res!743172) b!1656924))

(assert (= (and d!499781 c!269495) b!1656925))

(assert (= (and d!499781 (not c!269495)) b!1656926))

(declare-fun m!2012003 () Bool)

(assert (=> d!499781 m!2012003))

(declare-fun m!2012005 () Bool)

(assert (=> d!499781 m!2012005))

(declare-fun m!2012007 () Bool)

(assert (=> d!499781 m!2012007))

(declare-fun m!2012009 () Bool)

(assert (=> d!499781 m!2012009))

(assert (=> d!499781 m!2012009))

(assert (=> d!499781 m!2012003))

(declare-fun m!2012011 () Bool)

(assert (=> d!499781 m!2012011))

(assert (=> b!1656924 m!2012005))

(declare-fun m!2012013 () Bool)

(assert (=> b!1656926 m!2012013))

(declare-fun m!2012015 () Bool)

(assert (=> b!1656926 m!2012015))

(declare-fun m!2012017 () Bool)

(assert (=> b!1656926 m!2012017))

(declare-fun m!2012019 () Bool)

(assert (=> b!1656926 m!2012019))

(declare-fun m!2012021 () Bool)

(assert (=> b!1656926 m!2012021))

(assert (=> b!1656926 m!2012019))

(declare-fun m!2012023 () Bool)

(assert (=> b!1656926 m!2012023))

(declare-fun m!2012025 () Bool)

(assert (=> b!1656926 m!2012025))

(declare-fun m!2012027 () Bool)

(assert (=> b!1656926 m!2012027))

(declare-fun m!2012029 () Bool)

(assert (=> b!1656926 m!2012029))

(declare-fun m!2012031 () Bool)

(assert (=> b!1656926 m!2012031))

(assert (=> b!1656926 m!2012017))

(assert (=> b!1656926 m!2012025))

(declare-fun m!2012033 () Bool)

(assert (=> b!1656926 m!2012033))

(assert (=> b!1656926 m!2012029))

(declare-fun m!2012035 () Bool)

(assert (=> b!1656926 m!2012035))

(assert (=> b!1656926 m!2012031))

(declare-fun m!2012037 () Bool)

(assert (=> b!1656926 m!2012037))

(assert (=> b!1656704 d!499781))

(declare-fun d!499783 () Bool)

(declare-fun c!269498 () Bool)

(assert (=> d!499783 (= c!269498 ((_ is Cons!18297) (Cons!18297 (h!23698 tokens!457) Nil!18297)))))

(declare-fun e!1062465 () List!18365)

(assert (=> d!499783 (= (printList!967 thiss!17113 (Cons!18297 (h!23698 tokens!457) Nil!18297)) e!1062465)))

(declare-fun b!1656931 () Bool)

(assert (=> b!1656931 (= e!1062465 (++!4963 (list!7293 (charsOf!1874 (h!23698 (Cons!18297 (h!23698 tokens!457) Nil!18297)))) (printList!967 thiss!17113 (t!151288 (Cons!18297 (h!23698 tokens!457) Nil!18297)))))))

(declare-fun b!1656932 () Bool)

(assert (=> b!1656932 (= e!1062465 Nil!18295)))

(assert (= (and d!499783 c!269498) b!1656931))

(assert (= (and d!499783 (not c!269498)) b!1656932))

(declare-fun m!2012039 () Bool)

(assert (=> b!1656931 m!2012039))

(assert (=> b!1656931 m!2012039))

(declare-fun m!2012041 () Bool)

(assert (=> b!1656931 m!2012041))

(declare-fun m!2012043 () Bool)

(assert (=> b!1656931 m!2012043))

(assert (=> b!1656931 m!2012041))

(assert (=> b!1656931 m!2012043))

(declare-fun m!2012045 () Bool)

(assert (=> b!1656931 m!2012045))

(assert (=> b!1656704 d!499783))

(declare-fun d!499785 () Bool)

(assert (=> d!499785 (= (list!7293 lt!619179) (list!7296 (c!269463 lt!619179)))))

(declare-fun bs!396900 () Bool)

(assert (= bs!396900 d!499785))

(declare-fun m!2012047 () Bool)

(assert (=> bs!396900 m!2012047))

(assert (=> b!1656704 d!499785))

(declare-fun d!499787 () Bool)

(declare-fun e!1062468 () Bool)

(assert (=> d!499787 e!1062468))

(declare-fun res!743175 () Bool)

(assert (=> d!499787 (=> (not res!743175) (not e!1062468))))

(declare-fun lt!619454 () BalanceConc!12142)

(assert (=> d!499787 (= res!743175 (= (list!7294 lt!619454) (Cons!18297 (h!23698 tokens!457) Nil!18297)))))

(declare-fun singleton!754 (Token!6016) BalanceConc!12142)

(assert (=> d!499787 (= lt!619454 (singleton!754 (h!23698 tokens!457)))))

(assert (=> d!499787 (= (singletonSeq!1723 (h!23698 tokens!457)) lt!619454)))

(declare-fun b!1656935 () Bool)

(assert (=> b!1656935 (= e!1062468 (isBalanced!1881 (c!269465 lt!619454)))))

(assert (= (and d!499787 res!743175) b!1656935))

(declare-fun m!2012049 () Bool)

(assert (=> d!499787 m!2012049))

(declare-fun m!2012051 () Bool)

(assert (=> d!499787 m!2012051))

(declare-fun m!2012053 () Bool)

(assert (=> b!1656935 m!2012053))

(assert (=> b!1656704 d!499787))

(declare-fun d!499789 () Bool)

(declare-fun lt!619455 () BalanceConc!12140)

(assert (=> d!499789 (= (list!7293 lt!619455) (printList!967 thiss!17113 (list!7294 lt!619195)))))

(assert (=> d!499789 (= lt!619455 (printTailRec!905 thiss!17113 lt!619195 0 (BalanceConc!12141 Empty!6098)))))

(assert (=> d!499789 (= (print!1385 thiss!17113 lt!619195) lt!619455)))

(declare-fun bs!396901 () Bool)

(assert (= bs!396901 d!499789))

(declare-fun m!2012055 () Bool)

(assert (=> bs!396901 m!2012055))

(assert (=> bs!396901 m!2012013))

(assert (=> bs!396901 m!2012013))

(declare-fun m!2012057 () Bool)

(assert (=> bs!396901 m!2012057))

(assert (=> bs!396901 m!2011603))

(assert (=> b!1656704 d!499789))

(declare-fun d!499791 () Bool)

(declare-fun isEmpty!11342 (Option!3495) Bool)

(assert (=> d!499791 (= (isDefined!2850 (maxPrefixZipperSequence!731 thiss!17113 rules!1846 (seqFromList!2190 (originalCharacters!4039 (h!23698 tokens!457))))) (not (isEmpty!11342 (maxPrefixZipperSequence!731 thiss!17113 rules!1846 (seqFromList!2190 (originalCharacters!4039 (h!23698 tokens!457)))))))))

(declare-fun bs!396902 () Bool)

(assert (= bs!396902 d!499791))

(assert (=> bs!396902 m!2011497))

(declare-fun m!2012059 () Bool)

(assert (=> bs!396902 m!2012059))

(assert (=> b!1656683 d!499791))

(declare-fun b!1656936 () Bool)

(declare-fun e!1062472 () Bool)

(declare-fun e!1062474 () Bool)

(assert (=> b!1656936 (= e!1062472 e!1062474)))

(declare-fun res!743179 () Bool)

(assert (=> b!1656936 (=> (not res!743179) (not e!1062474))))

(declare-fun lt!619459 () Option!3495)

(assert (=> b!1656936 (= res!743179 (= (_1!10400 (get!5343 lt!619459)) (_1!10401 (get!5344 (maxPrefixZipper!352 thiss!17113 rules!1846 (list!7293 (seqFromList!2190 (originalCharacters!4039 (h!23698 tokens!457)))))))))))

(declare-fun b!1656937 () Bool)

(declare-fun e!1062470 () Bool)

(assert (=> b!1656937 (= e!1062470 (= (list!7293 (_2!10400 (get!5343 lt!619459))) (_2!10401 (get!5344 (maxPrefix!1416 thiss!17113 rules!1846 (list!7293 (seqFromList!2190 (originalCharacters!4039 (h!23698 tokens!457)))))))))))

(declare-fun b!1656938 () Bool)

(declare-fun res!743180 () Bool)

(declare-fun e!1062473 () Bool)

(assert (=> b!1656938 (=> (not res!743180) (not e!1062473))))

(assert (=> b!1656938 (= res!743180 e!1062472)))

(declare-fun res!743177 () Bool)

(assert (=> b!1656938 (=> res!743177 e!1062472)))

(assert (=> b!1656938 (= res!743177 (not (isDefined!2850 lt!619459)))))

(declare-fun b!1656939 () Bool)

(declare-fun e!1062471 () Bool)

(assert (=> b!1656939 (= e!1062473 e!1062471)))

(declare-fun res!743178 () Bool)

(assert (=> b!1656939 (=> res!743178 e!1062471)))

(assert (=> b!1656939 (= res!743178 (not (isDefined!2850 lt!619459)))))

(declare-fun b!1656940 () Bool)

(assert (=> b!1656940 (= e!1062474 (= (list!7293 (_2!10400 (get!5343 lt!619459))) (_2!10401 (get!5344 (maxPrefixZipper!352 thiss!17113 rules!1846 (list!7293 (seqFromList!2190 (originalCharacters!4039 (h!23698 tokens!457)))))))))))

(declare-fun b!1656941 () Bool)

(declare-fun e!1062469 () Option!3495)

(declare-fun call!106148 () Option!3495)

(assert (=> b!1656941 (= e!1062469 call!106148)))

(declare-fun b!1656942 () Bool)

(declare-fun lt!619461 () Option!3495)

(declare-fun lt!619462 () Option!3495)

(assert (=> b!1656942 (= e!1062469 (ite (and ((_ is None!3494) lt!619461) ((_ is None!3494) lt!619462)) None!3494 (ite ((_ is None!3494) lt!619462) lt!619461 (ite ((_ is None!3494) lt!619461) lt!619462 (ite (>= (size!14552 (_1!10400 (v!24697 lt!619461))) (size!14552 (_1!10400 (v!24697 lt!619462)))) lt!619461 lt!619462)))))))

(assert (=> b!1656942 (= lt!619461 call!106148)))

(assert (=> b!1656942 (= lt!619462 (maxPrefixZipperSequence!731 thiss!17113 (t!151289 rules!1846) (seqFromList!2190 (originalCharacters!4039 (h!23698 tokens!457)))))))

(declare-fun b!1656943 () Bool)

(assert (=> b!1656943 (= e!1062471 e!1062470)))

(declare-fun res!743181 () Bool)

(assert (=> b!1656943 (=> (not res!743181) (not e!1062470))))

(assert (=> b!1656943 (= res!743181 (= (_1!10400 (get!5343 lt!619459)) (_1!10401 (get!5344 (maxPrefix!1416 thiss!17113 rules!1846 (list!7293 (seqFromList!2190 (originalCharacters!4039 (h!23698 tokens!457)))))))))))

(declare-fun bm!106143 () Bool)

(assert (=> bm!106143 (= call!106148 (maxPrefixOneRuleZipperSequence!345 thiss!17113 (h!23699 rules!1846) (seqFromList!2190 (originalCharacters!4039 (h!23698 tokens!457)))))))

(declare-fun d!499793 () Bool)

(assert (=> d!499793 e!1062473))

(declare-fun res!743176 () Bool)

(assert (=> d!499793 (=> (not res!743176) (not e!1062473))))

(assert (=> d!499793 (= res!743176 (= (isDefined!2850 lt!619459) (isDefined!2851 (maxPrefixZipper!352 thiss!17113 rules!1846 (list!7293 (seqFromList!2190 (originalCharacters!4039 (h!23698 tokens!457))))))))))

(assert (=> d!499793 (= lt!619459 e!1062469)))

(declare-fun c!269499 () Bool)

(assert (=> d!499793 (= c!269499 (and ((_ is Cons!18298) rules!1846) ((_ is Nil!18298) (t!151289 rules!1846))))))

(declare-fun lt!619460 () Unit!30727)

(declare-fun lt!619456 () Unit!30727)

(assert (=> d!499793 (= lt!619460 lt!619456)))

(declare-fun lt!619458 () List!18365)

(declare-fun lt!619457 () List!18365)

(assert (=> d!499793 (isPrefix!1483 lt!619458 lt!619457)))

(assert (=> d!499793 (= lt!619456 (lemmaIsPrefixRefl!1005 lt!619458 lt!619457))))

(assert (=> d!499793 (= lt!619457 (list!7293 (seqFromList!2190 (originalCharacters!4039 (h!23698 tokens!457)))))))

(assert (=> d!499793 (= lt!619458 (list!7293 (seqFromList!2190 (originalCharacters!4039 (h!23698 tokens!457)))))))

(assert (=> d!499793 (rulesValidInductive!1027 thiss!17113 rules!1846)))

(assert (=> d!499793 (= (maxPrefixZipperSequence!731 thiss!17113 rules!1846 (seqFromList!2190 (originalCharacters!4039 (h!23698 tokens!457)))) lt!619459)))

(assert (= (and d!499793 c!269499) b!1656941))

(assert (= (and d!499793 (not c!269499)) b!1656942))

(assert (= (or b!1656941 b!1656942) bm!106143))

(assert (= (and d!499793 res!743176) b!1656938))

(assert (= (and b!1656938 (not res!743177)) b!1656936))

(assert (= (and b!1656936 res!743179) b!1656940))

(assert (= (and b!1656938 res!743180) b!1656939))

(assert (= (and b!1656939 (not res!743178)) b!1656943))

(assert (= (and b!1656943 res!743181) b!1656937))

(declare-fun m!2012061 () Bool)

(assert (=> b!1656937 m!2012061))

(declare-fun m!2012063 () Bool)

(assert (=> b!1656937 m!2012063))

(declare-fun m!2012065 () Bool)

(assert (=> b!1656937 m!2012065))

(declare-fun m!2012067 () Bool)

(assert (=> b!1656937 m!2012067))

(declare-fun m!2012069 () Bool)

(assert (=> b!1656937 m!2012069))

(assert (=> b!1656937 m!2012065))

(assert (=> b!1656937 m!2011495))

(assert (=> b!1656937 m!2012069))

(assert (=> b!1656943 m!2012063))

(assert (=> b!1656943 m!2011495))

(assert (=> b!1656943 m!2012069))

(assert (=> b!1656943 m!2012069))

(assert (=> b!1656943 m!2012065))

(assert (=> b!1656943 m!2012065))

(assert (=> b!1656943 m!2012067))

(declare-fun m!2012071 () Bool)

(assert (=> d!499793 m!2012071))

(declare-fun m!2012073 () Bool)

(assert (=> d!499793 m!2012073))

(declare-fun m!2012075 () Bool)

(assert (=> d!499793 m!2012075))

(assert (=> d!499793 m!2011829))

(assert (=> d!499793 m!2012069))

(declare-fun m!2012077 () Bool)

(assert (=> d!499793 m!2012077))

(assert (=> d!499793 m!2011495))

(assert (=> d!499793 m!2012069))

(assert (=> d!499793 m!2012077))

(declare-fun m!2012079 () Bool)

(assert (=> d!499793 m!2012079))

(assert (=> b!1656938 m!2012073))

(assert (=> b!1656939 m!2012073))

(assert (=> b!1656936 m!2012063))

(assert (=> b!1656936 m!2011495))

(assert (=> b!1656936 m!2012069))

(assert (=> b!1656936 m!2012069))

(assert (=> b!1656936 m!2012077))

(assert (=> b!1656936 m!2012077))

(declare-fun m!2012081 () Bool)

(assert (=> b!1656936 m!2012081))

(assert (=> b!1656942 m!2011495))

(declare-fun m!2012083 () Bool)

(assert (=> b!1656942 m!2012083))

(assert (=> b!1656940 m!2012061))

(assert (=> b!1656940 m!2012077))

(assert (=> b!1656940 m!2012081))

(assert (=> b!1656940 m!2012063))

(assert (=> b!1656940 m!2012069))

(assert (=> b!1656940 m!2012077))

(assert (=> b!1656940 m!2011495))

(assert (=> b!1656940 m!2012069))

(assert (=> bm!106143 m!2011495))

(declare-fun m!2012085 () Bool)

(assert (=> bm!106143 m!2012085))

(assert (=> b!1656683 d!499793))

(declare-fun d!499795 () Bool)

(declare-fun fromListB!986 (List!18365) BalanceConc!12140)

(assert (=> d!499795 (= (seqFromList!2190 (originalCharacters!4039 (h!23698 tokens!457))) (fromListB!986 (originalCharacters!4039 (h!23698 tokens!457))))))

(declare-fun bs!396903 () Bool)

(assert (= bs!396903 d!499795))

(declare-fun m!2012087 () Bool)

(assert (=> bs!396903 m!2012087))

(assert (=> b!1656683 d!499795))

(declare-fun d!499797 () Bool)

(declare-fun lt!619465 () C!9280)

(assert (=> d!499797 (= lt!619465 (head!3680 (list!7293 lt!619193)))))

(declare-fun head!3683 (Conc!6098) C!9280)

(assert (=> d!499797 (= lt!619465 (head!3683 (c!269463 lt!619193)))))

(assert (=> d!499797 (not (isEmpty!11341 lt!619193))))

(assert (=> d!499797 (= (head!3681 lt!619193) lt!619465)))

(declare-fun bs!396904 () Bool)

(assert (= bs!396904 d!499797))

(assert (=> bs!396904 m!2011533))

(assert (=> bs!396904 m!2011533))

(declare-fun m!2012089 () Bool)

(assert (=> bs!396904 m!2012089))

(declare-fun m!2012091 () Bool)

(assert (=> bs!396904 m!2012091))

(declare-fun m!2012093 () Bool)

(assert (=> bs!396904 m!2012093))

(assert (=> b!1656683 d!499797))

(declare-fun d!499799 () Bool)

(assert (=> d!499799 (= (separableTokensPredicate!794 thiss!17113 (h!23698 tokens!457) (h!23698 (t!151288 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!645 (rulesRegex!609 thiss!17113 rules!1846) (++!4964 (charsOf!1874 (h!23698 tokens!457)) (singletonSeq!1722 (apply!4866 (charsOf!1874 (h!23698 (t!151288 tokens!457))) 0))))))))

(declare-fun bs!396905 () Bool)

(assert (= bs!396905 d!499799))

(assert (=> bs!396905 m!2011521))

(assert (=> bs!396905 m!2011595))

(assert (=> bs!396905 m!2011595))

(assert (=> bs!396905 m!2011587))

(assert (=> bs!396905 m!2011587))

(assert (=> bs!396905 m!2011589))

(assert (=> bs!396905 m!2011585))

(declare-fun m!2012095 () Bool)

(assert (=> bs!396905 m!2012095))

(declare-fun m!2012097 () Bool)

(assert (=> bs!396905 m!2012097))

(assert (=> bs!396905 m!2011585))

(assert (=> bs!396905 m!2011521))

(assert (=> bs!396905 m!2011589))

(assert (=> bs!396905 m!2012095))

(assert (=> b!1656703 d!499799))

(declare-fun d!499801 () Bool)

(declare-fun lt!619468 () Bool)

(declare-fun isEmpty!11343 (List!18367) Bool)

(assert (=> d!499801 (= lt!619468 (isEmpty!11343 (list!7294 (_1!10399 (lex!1338 thiss!17113 rules!1846 (seqFromList!2190 lt!619200))))))))

(declare-fun isEmpty!11344 (Conc!6099) Bool)

(assert (=> d!499801 (= lt!619468 (isEmpty!11344 (c!269465 (_1!10399 (lex!1338 thiss!17113 rules!1846 (seqFromList!2190 lt!619200))))))))

(assert (=> d!499801 (= (isEmpty!11339 (_1!10399 (lex!1338 thiss!17113 rules!1846 (seqFromList!2190 lt!619200)))) lt!619468)))

(declare-fun bs!396906 () Bool)

(assert (= bs!396906 d!499801))

(assert (=> bs!396906 m!2011733))

(assert (=> bs!396906 m!2011733))

(declare-fun m!2012099 () Bool)

(assert (=> bs!396906 m!2012099))

(declare-fun m!2012101 () Bool)

(assert (=> bs!396906 m!2012101))

(assert (=> b!1656702 d!499801))

(declare-fun b!1656944 () Bool)

(declare-fun e!1062476 () Bool)

(declare-fun lt!619469 () tuple2!17994)

(assert (=> b!1656944 (= e!1062476 (= (_2!10399 lt!619469) (seqFromList!2190 lt!619200)))))

(declare-fun d!499803 () Bool)

(declare-fun e!1062477 () Bool)

(assert (=> d!499803 e!1062477))

(declare-fun res!743184 () Bool)

(assert (=> d!499803 (=> (not res!743184) (not e!1062477))))

(assert (=> d!499803 (= res!743184 e!1062476)))

(declare-fun c!269500 () Bool)

(assert (=> d!499803 (= c!269500 (> (size!14553 (_1!10399 lt!619469)) 0))))

(assert (=> d!499803 (= lt!619469 (lexTailRecV2!603 thiss!17113 rules!1846 (seqFromList!2190 lt!619200) (BalanceConc!12141 Empty!6098) (seqFromList!2190 lt!619200) (BalanceConc!12143 Empty!6099)))))

(assert (=> d!499803 (= (lex!1338 thiss!17113 rules!1846 (seqFromList!2190 lt!619200)) lt!619469)))

(declare-fun b!1656945 () Bool)

(declare-fun e!1062475 () Bool)

(assert (=> b!1656945 (= e!1062476 e!1062475)))

(declare-fun res!743182 () Bool)

(assert (=> b!1656945 (= res!743182 (< (size!14556 (_2!10399 lt!619469)) (size!14556 (seqFromList!2190 lt!619200))))))

(assert (=> b!1656945 (=> (not res!743182) (not e!1062475))))

(declare-fun b!1656946 () Bool)

(assert (=> b!1656946 (= e!1062475 (not (isEmpty!11339 (_1!10399 lt!619469))))))

(declare-fun b!1656947 () Bool)

(assert (=> b!1656947 (= e!1062477 (= (list!7293 (_2!10399 lt!619469)) (_2!10402 (lexList!880 thiss!17113 rules!1846 (list!7293 (seqFromList!2190 lt!619200))))))))

(declare-fun b!1656948 () Bool)

(declare-fun res!743183 () Bool)

(assert (=> b!1656948 (=> (not res!743183) (not e!1062477))))

(assert (=> b!1656948 (= res!743183 (= (list!7294 (_1!10399 lt!619469)) (_1!10402 (lexList!880 thiss!17113 rules!1846 (list!7293 (seqFromList!2190 lt!619200))))))))

(assert (= (and d!499803 c!269500) b!1656945))

(assert (= (and d!499803 (not c!269500)) b!1656944))

(assert (= (and b!1656945 res!743182) b!1656946))

(assert (= (and d!499803 res!743184) b!1656948))

(assert (= (and b!1656948 res!743183) b!1656947))

(declare-fun m!2012103 () Bool)

(assert (=> b!1656945 m!2012103))

(assert (=> b!1656945 m!2011539))

(declare-fun m!2012105 () Bool)

(assert (=> b!1656945 m!2012105))

(declare-fun m!2012107 () Bool)

(assert (=> b!1656946 m!2012107))

(declare-fun m!2012109 () Bool)

(assert (=> b!1656947 m!2012109))

(assert (=> b!1656947 m!2011539))

(declare-fun m!2012111 () Bool)

(assert (=> b!1656947 m!2012111))

(assert (=> b!1656947 m!2012111))

(declare-fun m!2012113 () Bool)

(assert (=> b!1656947 m!2012113))

(declare-fun m!2012115 () Bool)

(assert (=> b!1656948 m!2012115))

(assert (=> b!1656948 m!2011539))

(assert (=> b!1656948 m!2012111))

(assert (=> b!1656948 m!2012111))

(assert (=> b!1656948 m!2012113))

(declare-fun m!2012117 () Bool)

(assert (=> d!499803 m!2012117))

(assert (=> d!499803 m!2011539))

(assert (=> d!499803 m!2011539))

(declare-fun m!2012119 () Bool)

(assert (=> d!499803 m!2012119))

(assert (=> b!1656702 d!499803))

(declare-fun d!499805 () Bool)

(assert (=> d!499805 (= (seqFromList!2190 lt!619200) (fromListB!986 lt!619200))))

(declare-fun bs!396907 () Bool)

(assert (= bs!396907 d!499805))

(declare-fun m!2012121 () Bool)

(assert (=> bs!396907 m!2012121))

(assert (=> b!1656702 d!499805))

(declare-fun d!499807 () Bool)

(assert (=> d!499807 (= (list!7294 (_1!10399 lt!619175)) (list!7298 (c!269465 (_1!10399 lt!619175))))))

(declare-fun bs!396908 () Bool)

(assert (= bs!396908 d!499807))

(declare-fun m!2012123 () Bool)

(assert (=> bs!396908 m!2012123))

(assert (=> b!1656691 d!499807))

(declare-fun d!499809 () Bool)

(declare-fun e!1062508 () Bool)

(assert (=> d!499809 e!1062508))

(declare-fun res!743197 () Bool)

(assert (=> d!499809 (=> (not res!743197) (not e!1062508))))

(assert (=> d!499809 (= res!743197 (= (list!7294 (_1!10399 (lex!1338 thiss!17113 rules!1846 (print!1385 thiss!17113 (seqFromList!2189 (t!151288 tokens!457)))))) (t!151288 tokens!457)))))

(declare-fun lt!619753 () Unit!30727)

(declare-fun e!1062507 () Unit!30727)

(assert (=> d!499809 (= lt!619753 e!1062507)))

(declare-fun c!269521 () Bool)

(assert (=> d!499809 (= c!269521 (or ((_ is Nil!18297) (t!151288 tokens!457)) ((_ is Nil!18297) (t!151288 (t!151288 tokens!457)))))))

(assert (=> d!499809 (not (isEmpty!11338 rules!1846))))

(assert (=> d!499809 (= (theoremInvertabilityWhenTokenListSeparable!297 thiss!17113 rules!1846 (t!151288 tokens!457)) lt!619753)))

(declare-fun b!1657001 () Bool)

(declare-fun Unit!30750 () Unit!30727)

(assert (=> b!1657001 (= e!1062507 Unit!30750)))

(declare-fun b!1657002 () Bool)

(declare-fun Unit!30751 () Unit!30727)

(assert (=> b!1657002 (= e!1062507 Unit!30751)))

(declare-fun lt!619748 () BalanceConc!12140)

(assert (=> b!1657002 (= lt!619748 (print!1385 thiss!17113 (seqFromList!2189 (t!151288 tokens!457))))))

(declare-fun lt!619750 () BalanceConc!12140)

(assert (=> b!1657002 (= lt!619750 (print!1385 thiss!17113 (seqFromList!2189 (t!151288 (t!151288 tokens!457)))))))

(declare-fun lt!619757 () tuple2!17994)

(assert (=> b!1657002 (= lt!619757 (lex!1338 thiss!17113 rules!1846 lt!619750))))

(declare-fun lt!619742 () List!18365)

(assert (=> b!1657002 (= lt!619742 (list!7293 (charsOf!1874 (h!23698 (t!151288 tokens!457)))))))

(declare-fun lt!619758 () List!18365)

(assert (=> b!1657002 (= lt!619758 (list!7293 lt!619750))))

(declare-fun lt!619737 () Unit!30727)

(assert (=> b!1657002 (= lt!619737 (lemmaConcatTwoListThenFirstIsPrefix!1008 lt!619742 lt!619758))))

(assert (=> b!1657002 (isPrefix!1483 lt!619742 (++!4963 lt!619742 lt!619758))))

(declare-fun lt!619745 () Unit!30727)

(assert (=> b!1657002 (= lt!619745 lt!619737)))

(declare-fun lt!619754 () Unit!30727)

(assert (=> b!1657002 (= lt!619754 (theoremInvertabilityWhenTokenListSeparable!297 thiss!17113 rules!1846 (t!151288 (t!151288 tokens!457))))))

(declare-fun lt!619755 () Unit!30727)

(assert (=> b!1657002 (= lt!619755 (seqFromListBHdTlConstructive!300 (h!23698 (t!151288 (t!151288 tokens!457))) (t!151288 (t!151288 (t!151288 tokens!457))) (_1!10399 lt!619757)))))

(assert (=> b!1657002 (= (list!7294 (_1!10399 lt!619757)) (list!7294 (prepend!799 (seqFromList!2189 (t!151288 (t!151288 (t!151288 tokens!457)))) (h!23698 (t!151288 (t!151288 tokens!457))))))))

(declare-fun lt!619744 () Unit!30727)

(assert (=> b!1657002 (= lt!619744 lt!619755)))

(declare-fun lt!619762 () Option!3496)

(assert (=> b!1657002 (= lt!619762 (maxPrefix!1416 thiss!17113 rules!1846 (list!7293 lt!619748)))))

(assert (=> b!1657002 (= (print!1385 thiss!17113 (singletonSeq!1723 (h!23698 (t!151288 tokens!457)))) (printTailRec!905 thiss!17113 (singletonSeq!1723 (h!23698 (t!151288 tokens!457))) 0 (BalanceConc!12141 Empty!6098)))))

(declare-fun lt!619741 () Unit!30727)

(declare-fun Unit!30752 () Unit!30727)

(assert (=> b!1657002 (= lt!619741 Unit!30752)))

(declare-fun lt!619760 () Unit!30727)

(assert (=> b!1657002 (= lt!619760 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!422 thiss!17113 rules!1846 (list!7293 (charsOf!1874 (h!23698 (t!151288 tokens!457)))) (list!7293 lt!619750)))))

(assert (=> b!1657002 (= (list!7293 (charsOf!1874 (h!23698 (t!151288 tokens!457)))) (originalCharacters!4039 (h!23698 (t!151288 tokens!457))))))

(declare-fun lt!619740 () Unit!30727)

(declare-fun Unit!30753 () Unit!30727)

(assert (=> b!1657002 (= lt!619740 Unit!30753)))

(assert (=> b!1657002 (= (list!7293 (singletonSeq!1722 (apply!4866 (charsOf!1874 (h!23698 (t!151288 (t!151288 tokens!457)))) 0))) (Cons!18295 (head!3680 (originalCharacters!4039 (h!23698 (t!151288 (t!151288 tokens!457))))) Nil!18295))))

(declare-fun lt!619738 () Unit!30727)

(declare-fun Unit!30754 () Unit!30727)

(assert (=> b!1657002 (= lt!619738 Unit!30754)))

(assert (=> b!1657002 (= (list!7293 (singletonSeq!1722 (apply!4866 (charsOf!1874 (h!23698 (t!151288 (t!151288 tokens!457)))) 0))) (Cons!18295 (head!3680 (list!7293 lt!619750)) Nil!18295))))

(declare-fun lt!619747 () Unit!30727)

(declare-fun Unit!30755 () Unit!30727)

(assert (=> b!1657002 (= lt!619747 Unit!30755)))

(assert (=> b!1657002 (= (list!7293 (singletonSeq!1722 (apply!4866 (charsOf!1874 (h!23698 (t!151288 (t!151288 tokens!457)))) 0))) (Cons!18295 (head!3681 lt!619750) Nil!18295))))

(declare-fun lt!619746 () Unit!30727)

(declare-fun Unit!30756 () Unit!30727)

(assert (=> b!1657002 (= lt!619746 Unit!30756)))

(assert (=> b!1657002 (isDefined!2851 (maxPrefix!1416 thiss!17113 rules!1846 (originalCharacters!4039 (h!23698 (t!151288 tokens!457)))))))

(declare-fun lt!619739 () Unit!30727)

(declare-fun Unit!30757 () Unit!30727)

(assert (=> b!1657002 (= lt!619739 Unit!30757)))

(assert (=> b!1657002 (isDefined!2851 (maxPrefix!1416 thiss!17113 rules!1846 (list!7293 (charsOf!1874 (h!23698 (t!151288 tokens!457))))))))

(declare-fun lt!619756 () Unit!30727)

(declare-fun Unit!30758 () Unit!30727)

(assert (=> b!1657002 (= lt!619756 Unit!30758)))

(declare-fun lt!619751 () Unit!30727)

(declare-fun Unit!30759 () Unit!30727)

(assert (=> b!1657002 (= lt!619751 Unit!30759)))

(assert (=> b!1657002 (= (_1!10401 (get!5344 (maxPrefix!1416 thiss!17113 rules!1846 (list!7293 (charsOf!1874 (h!23698 (t!151288 tokens!457))))))) (h!23698 (t!151288 tokens!457)))))

(declare-fun lt!619759 () Unit!30727)

(declare-fun Unit!30760 () Unit!30727)

(assert (=> b!1657002 (= lt!619759 Unit!30760)))

(assert (=> b!1657002 (isEmpty!11337 (_2!10401 (get!5344 (maxPrefix!1416 thiss!17113 rules!1846 (list!7293 (charsOf!1874 (h!23698 (t!151288 tokens!457))))))))))

(declare-fun lt!619761 () Unit!30727)

(declare-fun Unit!30761 () Unit!30727)

(assert (=> b!1657002 (= lt!619761 Unit!30761)))

(assert (=> b!1657002 (matchR!2046 (regex!3225 (rule!5097 (h!23698 (t!151288 tokens!457)))) (list!7293 (charsOf!1874 (h!23698 (t!151288 tokens!457)))))))

(declare-fun lt!619749 () Unit!30727)

(declare-fun Unit!30762 () Unit!30727)

(assert (=> b!1657002 (= lt!619749 Unit!30762)))

(assert (=> b!1657002 (= (rule!5097 (h!23698 (t!151288 tokens!457))) (rule!5097 (h!23698 (t!151288 tokens!457))))))

(declare-fun lt!619743 () Unit!30727)

(declare-fun Unit!30763 () Unit!30727)

(assert (=> b!1657002 (= lt!619743 Unit!30763)))

(declare-fun lt!619752 () Unit!30727)

(assert (=> b!1657002 (= lt!619752 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!180 thiss!17113 rules!1846 (h!23698 (t!151288 tokens!457)) (rule!5097 (h!23698 (t!151288 tokens!457))) (list!7293 lt!619750)))))

(declare-fun b!1657003 () Bool)

(assert (=> b!1657003 (= e!1062508 (isEmpty!11341 (_2!10399 (lex!1338 thiss!17113 rules!1846 (print!1385 thiss!17113 (seqFromList!2189 (t!151288 tokens!457)))))))))

(assert (= (and d!499809 c!269521) b!1657001))

(assert (= (and d!499809 (not c!269521)) b!1657002))

(assert (= (and d!499809 res!743197) b!1657003))

(assert (=> d!499809 m!2011525))

(declare-fun m!2012245 () Bool)

(assert (=> d!499809 m!2012245))

(assert (=> d!499809 m!2011525))

(declare-fun m!2012247 () Bool)

(assert (=> d!499809 m!2012247))

(assert (=> d!499809 m!2011477))

(assert (=> d!499809 m!2012245))

(declare-fun m!2012249 () Bool)

(assert (=> d!499809 m!2012249))

(assert (=> b!1657002 m!2011525))

(assert (=> b!1657002 m!2012245))

(assert (=> b!1657002 m!2011525))

(declare-fun m!2012251 () Bool)

(assert (=> b!1657002 m!2012251))

(declare-fun m!2012253 () Bool)

(assert (=> b!1657002 m!2012253))

(declare-fun m!2012255 () Bool)

(assert (=> b!1657002 m!2012255))

(declare-fun m!2012257 () Bool)

(assert (=> b!1657002 m!2012257))

(assert (=> b!1657002 m!2012257))

(declare-fun m!2012259 () Bool)

(assert (=> b!1657002 m!2012259))

(declare-fun m!2012261 () Bool)

(assert (=> b!1657002 m!2012261))

(declare-fun m!2012263 () Bool)

(assert (=> b!1657002 m!2012263))

(declare-fun m!2012265 () Bool)

(assert (=> b!1657002 m!2012265))

(declare-fun m!2012267 () Bool)

(assert (=> b!1657002 m!2012267))

(declare-fun m!2012269 () Bool)

(assert (=> b!1657002 m!2012269))

(declare-fun m!2012271 () Bool)

(assert (=> b!1657002 m!2012271))

(declare-fun m!2012273 () Bool)

(assert (=> b!1657002 m!2012273))

(declare-fun m!2012275 () Bool)

(assert (=> b!1657002 m!2012275))

(declare-fun m!2012277 () Bool)

(assert (=> b!1657002 m!2012277))

(declare-fun m!2012279 () Bool)

(assert (=> b!1657002 m!2012279))

(declare-fun m!2012281 () Bool)

(assert (=> b!1657002 m!2012281))

(declare-fun m!2012283 () Bool)

(assert (=> b!1657002 m!2012283))

(assert (=> b!1657002 m!2012257))

(declare-fun m!2012285 () Bool)

(assert (=> b!1657002 m!2012285))

(assert (=> b!1657002 m!2012253))

(declare-fun m!2012287 () Bool)

(assert (=> b!1657002 m!2012287))

(assert (=> b!1657002 m!2011595))

(declare-fun m!2012289 () Bool)

(assert (=> b!1657002 m!2012289))

(assert (=> b!1657002 m!2012265))

(declare-fun m!2012291 () Bool)

(assert (=> b!1657002 m!2012291))

(assert (=> b!1657002 m!2012255))

(assert (=> b!1657002 m!2012251))

(assert (=> b!1657002 m!2011571))

(declare-fun m!2012293 () Bool)

(assert (=> b!1657002 m!2012293))

(declare-fun m!2012295 () Bool)

(assert (=> b!1657002 m!2012295))

(declare-fun m!2012297 () Bool)

(assert (=> b!1657002 m!2012297))

(declare-fun m!2012299 () Bool)

(assert (=> b!1657002 m!2012299))

(declare-fun m!2012301 () Bool)

(assert (=> b!1657002 m!2012301))

(declare-fun m!2012303 () Bool)

(assert (=> b!1657002 m!2012303))

(assert (=> b!1657002 m!2012265))

(assert (=> b!1657002 m!2012273))

(assert (=> b!1657002 m!2011571))

(assert (=> b!1657002 m!2012277))

(assert (=> b!1657002 m!2012301))

(declare-fun m!2012305 () Bool)

(assert (=> b!1657002 m!2012305))

(declare-fun m!2012307 () Bool)

(assert (=> b!1657002 m!2012307))

(assert (=> b!1657002 m!2011595))

(assert (=> b!1657002 m!2012265))

(assert (=> b!1657002 m!2012267))

(declare-fun m!2012309 () Bool)

(assert (=> b!1657002 m!2012309))

(declare-fun m!2012311 () Bool)

(assert (=> b!1657002 m!2012311))

(assert (=> b!1657002 m!2012305))

(assert (=> b!1657002 m!2012267))

(assert (=> b!1657002 m!2012281))

(assert (=> b!1657002 m!2012295))

(assert (=> b!1657002 m!2012267))

(declare-fun m!2012313 () Bool)

(assert (=> b!1657002 m!2012313))

(declare-fun m!2012315 () Bool)

(assert (=> b!1657002 m!2012315))

(assert (=> b!1657002 m!2012273))

(declare-fun m!2012317 () Bool)

(assert (=> b!1657002 m!2012317))

(assert (=> b!1657003 m!2011525))

(assert (=> b!1657003 m!2011525))

(assert (=> b!1657003 m!2012245))

(assert (=> b!1657003 m!2012245))

(assert (=> b!1657003 m!2012249))

(declare-fun m!2012319 () Bool)

(assert (=> b!1657003 m!2012319))

(assert (=> b!1656691 d!499809))

(declare-fun b!1657014 () Bool)

(declare-fun e!1062516 () Bool)

(assert (=> b!1657014 (= e!1062516 (isPrefix!1483 (tail!2463 lt!619200) (tail!2463 lt!619197)))))

(declare-fun b!1657013 () Bool)

(declare-fun res!743207 () Bool)

(assert (=> b!1657013 (=> (not res!743207) (not e!1062516))))

(assert (=> b!1657013 (= res!743207 (= (head!3680 lt!619200) (head!3680 lt!619197)))))

(declare-fun d!499813 () Bool)

(declare-fun e!1062515 () Bool)

(assert (=> d!499813 e!1062515))

(declare-fun res!743208 () Bool)

(assert (=> d!499813 (=> res!743208 e!1062515)))

(declare-fun lt!619765 () Bool)

(assert (=> d!499813 (= res!743208 (not lt!619765))))

(declare-fun e!1062517 () Bool)

(assert (=> d!499813 (= lt!619765 e!1062517)))

(declare-fun res!743209 () Bool)

(assert (=> d!499813 (=> res!743209 e!1062517)))

(assert (=> d!499813 (= res!743209 ((_ is Nil!18295) lt!619200))))

(assert (=> d!499813 (= (isPrefix!1483 lt!619200 lt!619197) lt!619765)))

(declare-fun b!1657015 () Bool)

(assert (=> b!1657015 (= e!1062515 (>= (size!14555 lt!619197) (size!14555 lt!619200)))))

(declare-fun b!1657012 () Bool)

(assert (=> b!1657012 (= e!1062517 e!1062516)))

(declare-fun res!743206 () Bool)

(assert (=> b!1657012 (=> (not res!743206) (not e!1062516))))

(assert (=> b!1657012 (= res!743206 (not ((_ is Nil!18295) lt!619197)))))

(assert (= (and d!499813 (not res!743209)) b!1657012))

(assert (= (and b!1657012 res!743206) b!1657013))

(assert (= (and b!1657013 res!743207) b!1657014))

(assert (= (and d!499813 (not res!743208)) b!1657015))

(declare-fun m!2012321 () Bool)

(assert (=> b!1657014 m!2012321))

(declare-fun m!2012323 () Bool)

(assert (=> b!1657014 m!2012323))

(assert (=> b!1657014 m!2012321))

(assert (=> b!1657014 m!2012323))

(declare-fun m!2012325 () Bool)

(assert (=> b!1657014 m!2012325))

(declare-fun m!2012327 () Bool)

(assert (=> b!1657013 m!2012327))

(declare-fun m!2012329 () Bool)

(assert (=> b!1657013 m!2012329))

(declare-fun m!2012331 () Bool)

(assert (=> b!1657015 m!2012331))

(assert (=> b!1657015 m!2011859))

(assert (=> b!1656691 d!499813))

(declare-fun d!499815 () Bool)

(assert (=> d!499815 (isPrefix!1483 lt!619200 (++!4963 lt!619200 lt!619199))))

(declare-fun lt!619768 () Unit!30727)

(declare-fun choose!9950 (List!18365 List!18365) Unit!30727)

(assert (=> d!499815 (= lt!619768 (choose!9950 lt!619200 lt!619199))))

(assert (=> d!499815 (= (lemmaConcatTwoListThenFirstIsPrefix!1008 lt!619200 lt!619199) lt!619768)))

(declare-fun bs!396909 () Bool)

(assert (= bs!396909 d!499815))

(assert (=> bs!396909 m!2011519))

(assert (=> bs!396909 m!2011519))

(declare-fun m!2012333 () Bool)

(assert (=> bs!396909 m!2012333))

(declare-fun m!2012335 () Bool)

(assert (=> bs!396909 m!2012335))

(assert (=> b!1656691 d!499815))

(declare-fun d!499817 () Bool)

(assert (=> d!499817 (= (get!5344 (maxPrefixZipper!352 thiss!17113 rules!1846 lt!619177)) (v!24698 (maxPrefixZipper!352 thiss!17113 rules!1846 lt!619177)))))

(assert (=> b!1656690 d!499817))

(declare-fun lt!619783 () Option!3496)

(declare-fun d!499819 () Bool)

(assert (=> d!499819 (= lt!619783 (maxPrefix!1416 thiss!17113 rules!1846 lt!619177))))

(declare-fun e!1062520 () Option!3496)

(assert (=> d!499819 (= lt!619783 e!1062520)))

(declare-fun c!269524 () Bool)

(assert (=> d!499819 (= c!269524 (and ((_ is Cons!18298) rules!1846) ((_ is Nil!18298) (t!151289 rules!1846))))))

(declare-fun lt!619779 () Unit!30727)

(declare-fun lt!619781 () Unit!30727)

(assert (=> d!499819 (= lt!619779 lt!619781)))

(assert (=> d!499819 (isPrefix!1483 lt!619177 lt!619177)))

(assert (=> d!499819 (= lt!619781 (lemmaIsPrefixRefl!1005 lt!619177 lt!619177))))

(assert (=> d!499819 (rulesValidInductive!1027 thiss!17113 rules!1846)))

(assert (=> d!499819 (= (maxPrefixZipper!352 thiss!17113 rules!1846 lt!619177) lt!619783)))

(declare-fun call!106151 () Option!3496)

(declare-fun bm!106146 () Bool)

(declare-fun maxPrefixOneRuleZipper!128 (LexerInterface!2854 Rule!6250 List!18365) Option!3496)

(assert (=> bm!106146 (= call!106151 (maxPrefixOneRuleZipper!128 thiss!17113 (h!23699 rules!1846) lt!619177))))

(declare-fun b!1657020 () Bool)

(assert (=> b!1657020 (= e!1062520 call!106151)))

(declare-fun b!1657021 () Bool)

(declare-fun lt!619782 () Option!3496)

(declare-fun lt!619780 () Option!3496)

(assert (=> b!1657021 (= e!1062520 (ite (and ((_ is None!3495) lt!619782) ((_ is None!3495) lt!619780)) None!3495 (ite ((_ is None!3495) lt!619780) lt!619782 (ite ((_ is None!3495) lt!619782) lt!619780 (ite (>= (size!14552 (_1!10401 (v!24698 lt!619782))) (size!14552 (_1!10401 (v!24698 lt!619780)))) lt!619782 lt!619780)))))))

(assert (=> b!1657021 (= lt!619782 call!106151)))

(assert (=> b!1657021 (= lt!619780 (maxPrefixZipper!352 thiss!17113 (t!151289 rules!1846) lt!619177))))

(assert (= (and d!499819 c!269524) b!1657020))

(assert (= (and d!499819 (not c!269524)) b!1657021))

(assert (= (or b!1657020 b!1657021) bm!106146))

(assert (=> d!499819 m!2011599))

(assert (=> d!499819 m!2011985))

(assert (=> d!499819 m!2011987))

(assert (=> d!499819 m!2011829))

(declare-fun m!2012337 () Bool)

(assert (=> bm!106146 m!2012337))

(declare-fun m!2012339 () Bool)

(assert (=> b!1657021 m!2012339))

(assert (=> b!1656690 d!499819))

(declare-fun d!499821 () Bool)

(declare-fun res!743214 () Bool)

(declare-fun e!1062523 () Bool)

(assert (=> d!499821 (=> (not res!743214) (not e!1062523))))

(assert (=> d!499821 (= res!743214 (not (isEmpty!11337 (originalCharacters!4039 (h!23698 tokens!457)))))))

(assert (=> d!499821 (= (inv!23645 (h!23698 tokens!457)) e!1062523)))

(declare-fun b!1657026 () Bool)

(declare-fun res!743215 () Bool)

(assert (=> b!1657026 (=> (not res!743215) (not e!1062523))))

(assert (=> b!1657026 (= res!743215 (= (originalCharacters!4039 (h!23698 tokens!457)) (list!7293 (dynLambda!8209 (toChars!4535 (transformation!3225 (rule!5097 (h!23698 tokens!457)))) (value!101585 (h!23698 tokens!457))))))))

(declare-fun b!1657027 () Bool)

(assert (=> b!1657027 (= e!1062523 (= (size!14552 (h!23698 tokens!457)) (size!14555 (originalCharacters!4039 (h!23698 tokens!457)))))))

(assert (= (and d!499821 res!743214) b!1657026))

(assert (= (and b!1657026 res!743215) b!1657027))

(declare-fun b_lambda!52029 () Bool)

(assert (=> (not b_lambda!52029) (not b!1657026)))

(assert (=> b!1657026 t!151297))

(declare-fun b_and!117605 () Bool)

(assert (= b_and!117601 (and (=> t!151297 result!114584) b_and!117605)))

(assert (=> b!1657026 t!151299))

(declare-fun b_and!117607 () Bool)

(assert (= b_and!117603 (and (=> t!151299 result!114588) b_and!117607)))

(declare-fun m!2012341 () Bool)

(assert (=> d!499821 m!2012341))

(assert (=> b!1657026 m!2011899))

(assert (=> b!1657026 m!2011899))

(declare-fun m!2012343 () Bool)

(assert (=> b!1657026 m!2012343))

(declare-fun m!2012345 () Bool)

(assert (=> b!1657027 m!2012345))

(assert (=> b!1656710 d!499821))

(declare-fun d!499823 () Bool)

(declare-fun e!1062526 () Bool)

(assert (=> d!499823 e!1062526))

(declare-fun res!743218 () Bool)

(assert (=> d!499823 (=> (not res!743218) (not e!1062526))))

(declare-fun lt!619786 () BalanceConc!12140)

(assert (=> d!499823 (= res!743218 (= (list!7293 lt!619786) (Cons!18295 (apply!4866 (charsOf!1874 (h!23698 (t!151288 tokens!457))) 0) Nil!18295)))))

(declare-fun singleton!756 (C!9280) BalanceConc!12140)

(assert (=> d!499823 (= lt!619786 (singleton!756 (apply!4866 (charsOf!1874 (h!23698 (t!151288 tokens!457))) 0)))))

(assert (=> d!499823 (= (singletonSeq!1722 (apply!4866 (charsOf!1874 (h!23698 (t!151288 tokens!457))) 0)) lt!619786)))

(declare-fun b!1657030 () Bool)

(declare-fun isBalanced!1882 (Conc!6098) Bool)

(assert (=> b!1657030 (= e!1062526 (isBalanced!1882 (c!269463 lt!619786)))))

(assert (= (and d!499823 res!743218) b!1657030))

(declare-fun m!2012347 () Bool)

(assert (=> d!499823 m!2012347))

(assert (=> d!499823 m!2011587))

(declare-fun m!2012349 () Bool)

(assert (=> d!499823 m!2012349))

(declare-fun m!2012351 () Bool)

(assert (=> b!1657030 m!2012351))

(assert (=> b!1656689 d!499823))

(declare-fun d!499825 () Bool)

(declare-fun lt!619815 () Bool)

(assert (=> d!499825 (= lt!619815 (prefixMatch!470 lt!619178 (list!7293 (++!4964 lt!619172 lt!619185))))))

(declare-datatypes ((List!18373 0))(
  ( (Nil!18303) (Cons!18303 (h!23704 Regex!4553) (t!151336 List!18373)) )
))
(declare-datatypes ((Context!1810 0))(
  ( (Context!1811 (exprs!1405 List!18373)) )
))
(declare-fun prefixMatchZipperSequence!647 ((InoxSet Context!1810) BalanceConc!12140 Int) Bool)

(declare-fun focus!211 (Regex!4553) (InoxSet Context!1810))

(assert (=> d!499825 (= lt!619815 (prefixMatchZipperSequence!647 (focus!211 lt!619178) (++!4964 lt!619172 lt!619185) 0))))

(declare-fun lt!619816 () Unit!30727)

(declare-fun lt!619811 () Unit!30727)

(assert (=> d!499825 (= lt!619816 lt!619811)))

(declare-fun lt!619813 () List!18365)

(declare-fun lt!619807 () (InoxSet Context!1810))

(declare-fun prefixMatchZipper!190 ((InoxSet Context!1810) List!18365) Bool)

(assert (=> d!499825 (= (prefixMatch!470 lt!619178 lt!619813) (prefixMatchZipper!190 lt!619807 lt!619813))))

(declare-datatypes ((List!18374 0))(
  ( (Nil!18304) (Cons!18304 (h!23705 Context!1810) (t!151337 List!18374)) )
))
(declare-fun lt!619809 () List!18374)

(declare-fun prefixMatchZipperRegexEquiv!190 ((InoxSet Context!1810) List!18374 Regex!4553 List!18365) Unit!30727)

(assert (=> d!499825 (= lt!619811 (prefixMatchZipperRegexEquiv!190 lt!619807 lt!619809 lt!619178 lt!619813))))

(assert (=> d!499825 (= lt!619813 (list!7293 (++!4964 lt!619172 lt!619185)))))

(declare-fun toList!951 ((InoxSet Context!1810)) List!18374)

(assert (=> d!499825 (= lt!619809 (toList!951 (focus!211 lt!619178)))))

(assert (=> d!499825 (= lt!619807 (focus!211 lt!619178))))

(declare-fun lt!619812 () Unit!30727)

(declare-fun lt!619808 () Unit!30727)

(assert (=> d!499825 (= lt!619812 lt!619808)))

(declare-fun lt!619810 () (InoxSet Context!1810))

(declare-fun lt!619814 () Int)

(declare-fun dropList!694 (BalanceConc!12140 Int) List!18365)

(assert (=> d!499825 (= (prefixMatchZipper!190 lt!619810 (dropList!694 (++!4964 lt!619172 lt!619185) lt!619814)) (prefixMatchZipperSequence!647 lt!619810 (++!4964 lt!619172 lt!619185) lt!619814))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!190 ((InoxSet Context!1810) BalanceConc!12140 Int) Unit!30727)

(assert (=> d!499825 (= lt!619808 (lemmaprefixMatchZipperSequenceEquivalent!190 lt!619810 (++!4964 lt!619172 lt!619185) lt!619814))))

(assert (=> d!499825 (= lt!619814 0)))

(assert (=> d!499825 (= lt!619810 (focus!211 lt!619178))))

(declare-fun validRegex!1818 (Regex!4553) Bool)

(assert (=> d!499825 (validRegex!1818 lt!619178)))

(assert (=> d!499825 (= (prefixMatchZipperSequence!645 lt!619178 (++!4964 lt!619172 lt!619185)) lt!619815)))

(declare-fun bs!396910 () Bool)

(assert (= bs!396910 d!499825))

(assert (=> bs!396910 m!2011591))

(declare-fun m!2012353 () Bool)

(assert (=> bs!396910 m!2012353))

(declare-fun m!2012355 () Bool)

(assert (=> bs!396910 m!2012355))

(declare-fun m!2012357 () Bool)

(assert (=> bs!396910 m!2012357))

(declare-fun m!2012359 () Bool)

(assert (=> bs!396910 m!2012359))

(declare-fun m!2012361 () Bool)

(assert (=> bs!396910 m!2012361))

(declare-fun m!2012363 () Bool)

(assert (=> bs!396910 m!2012363))

(assert (=> bs!396910 m!2012361))

(assert (=> bs!396910 m!2011591))

(declare-fun m!2012365 () Bool)

(assert (=> bs!396910 m!2012365))

(assert (=> bs!396910 m!2011591))

(declare-fun m!2012367 () Bool)

(assert (=> bs!396910 m!2012367))

(declare-fun m!2012369 () Bool)

(assert (=> bs!396910 m!2012369))

(declare-fun m!2012371 () Bool)

(assert (=> bs!396910 m!2012371))

(assert (=> bs!396910 m!2012353))

(declare-fun m!2012373 () Bool)

(assert (=> bs!396910 m!2012373))

(assert (=> bs!396910 m!2011591))

(assert (=> bs!396910 m!2012355))

(assert (=> bs!396910 m!2012361))

(declare-fun m!2012375 () Bool)

(assert (=> bs!396910 m!2012375))

(assert (=> bs!396910 m!2011591))

(declare-fun m!2012377 () Bool)

(assert (=> bs!396910 m!2012377))

(assert (=> b!1656689 d!499825))

(declare-fun b!1657040 () Bool)

(declare-fun res!743229 () Bool)

(declare-fun e!1062529 () Bool)

(assert (=> b!1657040 (=> (not res!743229) (not e!1062529))))

(declare-fun height!953 (Conc!6098) Int)

(declare-fun ++!4966 (Conc!6098 Conc!6098) Conc!6098)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1657040 (= res!743229 (<= (height!953 (++!4966 (c!269463 lt!619172) (c!269463 lt!619185))) (+ (max!0 (height!953 (c!269463 lt!619172)) (height!953 (c!269463 lt!619185))) 1)))))

(declare-fun b!1657039 () Bool)

(declare-fun res!743228 () Bool)

(assert (=> b!1657039 (=> (not res!743228) (not e!1062529))))

(assert (=> b!1657039 (= res!743228 (isBalanced!1882 (++!4966 (c!269463 lt!619172) (c!269463 lt!619185))))))

(declare-fun d!499827 () Bool)

(assert (=> d!499827 e!1062529))

(declare-fun res!743230 () Bool)

(assert (=> d!499827 (=> (not res!743230) (not e!1062529))))

(declare-fun appendAssocInst!473 (Conc!6098 Conc!6098) Bool)

(assert (=> d!499827 (= res!743230 (appendAssocInst!473 (c!269463 lt!619172) (c!269463 lt!619185)))))

(declare-fun lt!619819 () BalanceConc!12140)

(assert (=> d!499827 (= lt!619819 (BalanceConc!12141 (++!4966 (c!269463 lt!619172) (c!269463 lt!619185))))))

(assert (=> d!499827 (= (++!4964 lt!619172 lt!619185) lt!619819)))

(declare-fun b!1657041 () Bool)

(declare-fun res!743227 () Bool)

(assert (=> b!1657041 (=> (not res!743227) (not e!1062529))))

(assert (=> b!1657041 (= res!743227 (>= (height!953 (++!4966 (c!269463 lt!619172) (c!269463 lt!619185))) (max!0 (height!953 (c!269463 lt!619172)) (height!953 (c!269463 lt!619185)))))))

(declare-fun b!1657042 () Bool)

(assert (=> b!1657042 (= e!1062529 (= (list!7293 lt!619819) (++!4963 (list!7293 lt!619172) (list!7293 lt!619185))))))

(assert (= (and d!499827 res!743230) b!1657039))

(assert (= (and b!1657039 res!743228) b!1657040))

(assert (= (and b!1657040 res!743229) b!1657041))

(assert (= (and b!1657041 res!743227) b!1657042))

(declare-fun m!2012379 () Bool)

(assert (=> b!1657042 m!2012379))

(assert (=> b!1657042 m!2011537))

(assert (=> b!1657042 m!2011565))

(assert (=> b!1657042 m!2011537))

(assert (=> b!1657042 m!2011565))

(declare-fun m!2012381 () Bool)

(assert (=> b!1657042 m!2012381))

(declare-fun m!2012383 () Bool)

(assert (=> b!1657039 m!2012383))

(assert (=> b!1657039 m!2012383))

(declare-fun m!2012385 () Bool)

(assert (=> b!1657039 m!2012385))

(declare-fun m!2012387 () Bool)

(assert (=> d!499827 m!2012387))

(assert (=> d!499827 m!2012383))

(declare-fun m!2012389 () Bool)

(assert (=> b!1657040 m!2012389))

(assert (=> b!1657040 m!2012383))

(assert (=> b!1657040 m!2012383))

(declare-fun m!2012391 () Bool)

(assert (=> b!1657040 m!2012391))

(declare-fun m!2012393 () Bool)

(assert (=> b!1657040 m!2012393))

(assert (=> b!1657040 m!2012389))

(assert (=> b!1657040 m!2012393))

(declare-fun m!2012395 () Bool)

(assert (=> b!1657040 m!2012395))

(assert (=> b!1657041 m!2012389))

(assert (=> b!1657041 m!2012383))

(assert (=> b!1657041 m!2012383))

(assert (=> b!1657041 m!2012391))

(assert (=> b!1657041 m!2012393))

(assert (=> b!1657041 m!2012389))

(assert (=> b!1657041 m!2012393))

(assert (=> b!1657041 m!2012395))

(assert (=> b!1656689 d!499827))

(declare-fun d!499829 () Bool)

(declare-fun lt!619822 () C!9280)

(declare-fun apply!4875 (List!18365 Int) C!9280)

(assert (=> d!499829 (= lt!619822 (apply!4875 (list!7293 (charsOf!1874 (h!23698 (t!151288 tokens!457)))) 0))))

(declare-fun apply!4876 (Conc!6098 Int) C!9280)

(assert (=> d!499829 (= lt!619822 (apply!4876 (c!269463 (charsOf!1874 (h!23698 (t!151288 tokens!457)))) 0))))

(declare-fun e!1062532 () Bool)

(assert (=> d!499829 e!1062532))

(declare-fun res!743233 () Bool)

(assert (=> d!499829 (=> (not res!743233) (not e!1062532))))

(assert (=> d!499829 (= res!743233 (<= 0 0))))

(assert (=> d!499829 (= (apply!4866 (charsOf!1874 (h!23698 (t!151288 tokens!457))) 0) lt!619822)))

(declare-fun b!1657045 () Bool)

(assert (=> b!1657045 (= e!1062532 (< 0 (size!14556 (charsOf!1874 (h!23698 (t!151288 tokens!457))))))))

(assert (= (and d!499829 res!743233) b!1657045))

(assert (=> d!499829 m!2011595))

(assert (=> d!499829 m!2012265))

(assert (=> d!499829 m!2012265))

(declare-fun m!2012397 () Bool)

(assert (=> d!499829 m!2012397))

(declare-fun m!2012399 () Bool)

(assert (=> d!499829 m!2012399))

(assert (=> b!1657045 m!2011595))

(assert (=> b!1657045 m!2011935))

(assert (=> b!1656689 d!499829))

(declare-fun d!499831 () Bool)

(declare-fun lt!619825 () Unit!30727)

(declare-fun lemma!276 (List!18368 LexerInterface!2854 List!18368) Unit!30727)

(assert (=> d!499831 (= lt!619825 (lemma!276 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67779 () Int)

(declare-fun generalisedUnion!284 (List!18373) Regex!4553)

(declare-fun map!3768 (List!18368 Int) List!18373)

(assert (=> d!499831 (= (rulesRegex!609 thiss!17113 rules!1846) (generalisedUnion!284 (map!3768 rules!1846 lambda!67779)))))

(declare-fun bs!396911 () Bool)

(assert (= bs!396911 d!499831))

(declare-fun m!2012401 () Bool)

(assert (=> bs!396911 m!2012401))

(declare-fun m!2012403 () Bool)

(assert (=> bs!396911 m!2012403))

(assert (=> bs!396911 m!2012403))

(declare-fun m!2012405 () Bool)

(assert (=> bs!396911 m!2012405))

(assert (=> b!1656689 d!499831))

(declare-fun d!499833 () Bool)

(declare-fun lt!619826 () BalanceConc!12140)

(assert (=> d!499833 (= (list!7293 lt!619826) (originalCharacters!4039 (h!23698 (t!151288 tokens!457))))))

(assert (=> d!499833 (= lt!619826 (dynLambda!8209 (toChars!4535 (transformation!3225 (rule!5097 (h!23698 (t!151288 tokens!457))))) (value!101585 (h!23698 (t!151288 tokens!457)))))))

(assert (=> d!499833 (= (charsOf!1874 (h!23698 (t!151288 tokens!457))) lt!619826)))

(declare-fun b_lambda!52031 () Bool)

(assert (=> (not b_lambda!52031) (not d!499833)))

(declare-fun t!151307 () Bool)

(declare-fun tb!94807 () Bool)

(assert (=> (and b!1656682 (= (toChars!4535 (transformation!3225 (h!23699 rules!1846))) (toChars!4535 (transformation!3225 (rule!5097 (h!23698 (t!151288 tokens!457)))))) t!151307) tb!94807))

(declare-fun b!1657046 () Bool)

(declare-fun e!1062533 () Bool)

(declare-fun tp!478795 () Bool)

(assert (=> b!1657046 (= e!1062533 (and (inv!23648 (c!269463 (dynLambda!8209 (toChars!4535 (transformation!3225 (rule!5097 (h!23698 (t!151288 tokens!457))))) (value!101585 (h!23698 (t!151288 tokens!457)))))) tp!478795))))

(declare-fun result!114590 () Bool)

(assert (=> tb!94807 (= result!114590 (and (inv!23649 (dynLambda!8209 (toChars!4535 (transformation!3225 (rule!5097 (h!23698 (t!151288 tokens!457))))) (value!101585 (h!23698 (t!151288 tokens!457))))) e!1062533))))

(assert (= tb!94807 b!1657046))

(declare-fun m!2012407 () Bool)

(assert (=> b!1657046 m!2012407))

(declare-fun m!2012409 () Bool)

(assert (=> tb!94807 m!2012409))

(assert (=> d!499833 t!151307))

(declare-fun b_and!117609 () Bool)

(assert (= b_and!117605 (and (=> t!151307 result!114590) b_and!117609)))

(declare-fun t!151309 () Bool)

(declare-fun tb!94809 () Bool)

(assert (=> (and b!1656685 (= (toChars!4535 (transformation!3225 (rule!5097 (h!23698 tokens!457)))) (toChars!4535 (transformation!3225 (rule!5097 (h!23698 (t!151288 tokens!457)))))) t!151309) tb!94809))

(declare-fun result!114592 () Bool)

(assert (= result!114592 result!114590))

(assert (=> d!499833 t!151309))

(declare-fun b_and!117611 () Bool)

(assert (= b_and!117607 (and (=> t!151309 result!114592) b_and!117611)))

(declare-fun m!2012411 () Bool)

(assert (=> d!499833 m!2012411))

(declare-fun m!2012413 () Bool)

(assert (=> d!499833 m!2012413))

(assert (=> b!1656689 d!499833))

(declare-fun d!499835 () Bool)

(assert (=> d!499835 (= (inv!23641 (tag!3507 (rule!5097 (h!23698 tokens!457)))) (= (mod (str.len (value!101584 (tag!3507 (rule!5097 (h!23698 tokens!457))))) 2) 0))))

(assert (=> b!1656688 d!499835))

(declare-fun d!499837 () Bool)

(declare-fun res!743234 () Bool)

(declare-fun e!1062534 () Bool)

(assert (=> d!499837 (=> (not res!743234) (not e!1062534))))

(assert (=> d!499837 (= res!743234 (semiInverseModEq!1251 (toChars!4535 (transformation!3225 (rule!5097 (h!23698 tokens!457)))) (toValue!4676 (transformation!3225 (rule!5097 (h!23698 tokens!457))))))))

(assert (=> d!499837 (= (inv!23644 (transformation!3225 (rule!5097 (h!23698 tokens!457)))) e!1062534)))

(declare-fun b!1657047 () Bool)

(assert (=> b!1657047 (= e!1062534 (equivClasses!1192 (toChars!4535 (transformation!3225 (rule!5097 (h!23698 tokens!457)))) (toValue!4676 (transformation!3225 (rule!5097 (h!23698 tokens!457))))))))

(assert (= (and d!499837 res!743234) b!1657047))

(declare-fun m!2012415 () Bool)

(assert (=> d!499837 m!2012415))

(declare-fun m!2012417 () Bool)

(assert (=> b!1657047 m!2012417))

(assert (=> b!1656688 d!499837))

(declare-fun b!1657048 () Bool)

(declare-fun res!743236 () Bool)

(declare-fun e!1062537 () Bool)

(assert (=> b!1657048 (=> (not res!743236) (not e!1062537))))

(declare-fun lt!619829 () Option!3496)

(assert (=> b!1657048 (= res!743236 (= (list!7293 (charsOf!1874 (_1!10401 (get!5344 lt!619829)))) (originalCharacters!4039 (_1!10401 (get!5344 lt!619829)))))))

(declare-fun b!1657049 () Bool)

(declare-fun e!1062535 () Bool)

(assert (=> b!1657049 (= e!1062535 e!1062537)))

(declare-fun res!743241 () Bool)

(assert (=> b!1657049 (=> (not res!743241) (not e!1062537))))

(assert (=> b!1657049 (= res!743241 (isDefined!2851 lt!619829))))

(declare-fun b!1657050 () Bool)

(declare-fun res!743239 () Bool)

(assert (=> b!1657050 (=> (not res!743239) (not e!1062537))))

(assert (=> b!1657050 (= res!743239 (= (value!101585 (_1!10401 (get!5344 lt!619829))) (apply!4871 (transformation!3225 (rule!5097 (_1!10401 (get!5344 lt!619829)))) (seqFromList!2190 (originalCharacters!4039 (_1!10401 (get!5344 lt!619829)))))))))

(declare-fun b!1657051 () Bool)

(declare-fun res!743237 () Bool)

(assert (=> b!1657051 (=> (not res!743237) (not e!1062537))))

(assert (=> b!1657051 (= res!743237 (< (size!14555 (_2!10401 (get!5344 lt!619829))) (size!14555 (originalCharacters!4039 (h!23698 tokens!457)))))))

(declare-fun d!499839 () Bool)

(assert (=> d!499839 e!1062535))

(declare-fun res!743240 () Bool)

(assert (=> d!499839 (=> res!743240 e!1062535)))

(assert (=> d!499839 (= res!743240 (isEmpty!11340 lt!619829))))

(declare-fun e!1062536 () Option!3496)

(assert (=> d!499839 (= lt!619829 e!1062536)))

(declare-fun c!269528 () Bool)

(assert (=> d!499839 (= c!269528 (and ((_ is Cons!18298) rules!1846) ((_ is Nil!18298) (t!151289 rules!1846))))))

(declare-fun lt!619830 () Unit!30727)

(declare-fun lt!619828 () Unit!30727)

(assert (=> d!499839 (= lt!619830 lt!619828)))

(assert (=> d!499839 (isPrefix!1483 (originalCharacters!4039 (h!23698 tokens!457)) (originalCharacters!4039 (h!23698 tokens!457)))))

(assert (=> d!499839 (= lt!619828 (lemmaIsPrefixRefl!1005 (originalCharacters!4039 (h!23698 tokens!457)) (originalCharacters!4039 (h!23698 tokens!457))))))

(assert (=> d!499839 (rulesValidInductive!1027 thiss!17113 rules!1846)))

(assert (=> d!499839 (= (maxPrefix!1416 thiss!17113 rules!1846 (originalCharacters!4039 (h!23698 tokens!457))) lt!619829)))

(declare-fun bm!106147 () Bool)

(declare-fun call!106152 () Option!3496)

(assert (=> bm!106147 (= call!106152 (maxPrefixOneRule!820 thiss!17113 (h!23699 rules!1846) (originalCharacters!4039 (h!23698 tokens!457))))))

(declare-fun b!1657052 () Bool)

(declare-fun res!743238 () Bool)

(assert (=> b!1657052 (=> (not res!743238) (not e!1062537))))

(assert (=> b!1657052 (= res!743238 (= (++!4963 (list!7293 (charsOf!1874 (_1!10401 (get!5344 lt!619829)))) (_2!10401 (get!5344 lt!619829))) (originalCharacters!4039 (h!23698 tokens!457))))))

(declare-fun b!1657053 () Bool)

(assert (=> b!1657053 (= e!1062536 call!106152)))

(declare-fun b!1657054 () Bool)

(declare-fun res!743235 () Bool)

(assert (=> b!1657054 (=> (not res!743235) (not e!1062537))))

(assert (=> b!1657054 (= res!743235 (matchR!2046 (regex!3225 (rule!5097 (_1!10401 (get!5344 lt!619829)))) (list!7293 (charsOf!1874 (_1!10401 (get!5344 lt!619829))))))))

(declare-fun b!1657055 () Bool)

(assert (=> b!1657055 (= e!1062537 (contains!3189 rules!1846 (rule!5097 (_1!10401 (get!5344 lt!619829)))))))

(declare-fun b!1657056 () Bool)

(declare-fun lt!619827 () Option!3496)

(declare-fun lt!619831 () Option!3496)

(assert (=> b!1657056 (= e!1062536 (ite (and ((_ is None!3495) lt!619827) ((_ is None!3495) lt!619831)) None!3495 (ite ((_ is None!3495) lt!619831) lt!619827 (ite ((_ is None!3495) lt!619827) lt!619831 (ite (>= (size!14552 (_1!10401 (v!24698 lt!619827))) (size!14552 (_1!10401 (v!24698 lt!619831)))) lt!619827 lt!619831)))))))

(assert (=> b!1657056 (= lt!619827 call!106152)))

(assert (=> b!1657056 (= lt!619831 (maxPrefix!1416 thiss!17113 (t!151289 rules!1846) (originalCharacters!4039 (h!23698 tokens!457))))))

(assert (= (and d!499839 c!269528) b!1657053))

(assert (= (and d!499839 (not c!269528)) b!1657056))

(assert (= (or b!1657053 b!1657056) bm!106147))

(assert (= (and d!499839 (not res!743240)) b!1657049))

(assert (= (and b!1657049 res!743241) b!1657048))

(assert (= (and b!1657048 res!743236) b!1657051))

(assert (= (and b!1657051 res!743237) b!1657052))

(assert (= (and b!1657052 res!743238) b!1657050))

(assert (= (and b!1657050 res!743239) b!1657054))

(assert (= (and b!1657054 res!743235) b!1657055))

(declare-fun m!2012419 () Bool)

(assert (=> b!1657056 m!2012419))

(declare-fun m!2012421 () Bool)

(assert (=> b!1657052 m!2012421))

(declare-fun m!2012423 () Bool)

(assert (=> b!1657052 m!2012423))

(assert (=> b!1657052 m!2012423))

(declare-fun m!2012425 () Bool)

(assert (=> b!1657052 m!2012425))

(assert (=> b!1657052 m!2012425))

(declare-fun m!2012427 () Bool)

(assert (=> b!1657052 m!2012427))

(declare-fun m!2012429 () Bool)

(assert (=> b!1657049 m!2012429))

(declare-fun m!2012431 () Bool)

(assert (=> d!499839 m!2012431))

(declare-fun m!2012433 () Bool)

(assert (=> d!499839 m!2012433))

(declare-fun m!2012435 () Bool)

(assert (=> d!499839 m!2012435))

(assert (=> d!499839 m!2011829))

(assert (=> b!1657055 m!2012421))

(declare-fun m!2012437 () Bool)

(assert (=> b!1657055 m!2012437))

(assert (=> b!1657048 m!2012421))

(assert (=> b!1657048 m!2012423))

(assert (=> b!1657048 m!2012423))

(assert (=> b!1657048 m!2012425))

(assert (=> b!1657054 m!2012421))

(assert (=> b!1657054 m!2012423))

(assert (=> b!1657054 m!2012423))

(assert (=> b!1657054 m!2012425))

(assert (=> b!1657054 m!2012425))

(declare-fun m!2012439 () Bool)

(assert (=> b!1657054 m!2012439))

(assert (=> b!1657051 m!2012421))

(declare-fun m!2012441 () Bool)

(assert (=> b!1657051 m!2012441))

(assert (=> b!1657051 m!2012345))

(declare-fun m!2012443 () Bool)

(assert (=> bm!106147 m!2012443))

(assert (=> b!1657050 m!2012421))

(declare-fun m!2012445 () Bool)

(assert (=> b!1657050 m!2012445))

(assert (=> b!1657050 m!2012445))

(declare-fun m!2012447 () Bool)

(assert (=> b!1657050 m!2012447))

(assert (=> b!1656709 d!499839))

(declare-fun d!499841 () Bool)

(assert (=> d!499841 (= (isDefined!2851 (maxPrefix!1416 thiss!17113 rules!1846 (originalCharacters!4039 (h!23698 tokens!457)))) (not (isEmpty!11340 (maxPrefix!1416 thiss!17113 rules!1846 (originalCharacters!4039 (h!23698 tokens!457))))))))

(declare-fun bs!396912 () Bool)

(assert (= bs!396912 d!499841))

(assert (=> bs!396912 m!2011555))

(declare-fun m!2012449 () Bool)

(assert (=> bs!396912 m!2012449))

(assert (=> b!1656709 d!499841))

(declare-fun d!499843 () Bool)

(assert (=> d!499843 (= (get!5344 lt!619194) (v!24698 lt!619194))))

(assert (=> b!1656709 d!499843))

(declare-fun lt!619832 () List!18365)

(declare-fun e!1062539 () Bool)

(declare-fun b!1657060 () Bool)

(assert (=> b!1657060 (= e!1062539 (or (not (= lt!619174 Nil!18295)) (= lt!619832 (originalCharacters!4039 (h!23698 tokens!457)))))))

(declare-fun d!499845 () Bool)

(assert (=> d!499845 e!1062539))

(declare-fun res!743242 () Bool)

(assert (=> d!499845 (=> (not res!743242) (not e!1062539))))

(assert (=> d!499845 (= res!743242 (= (content!2544 lt!619832) ((_ map or) (content!2544 (originalCharacters!4039 (h!23698 tokens!457))) (content!2544 lt!619174))))))

(declare-fun e!1062538 () List!18365)

(assert (=> d!499845 (= lt!619832 e!1062538)))

(declare-fun c!269529 () Bool)

(assert (=> d!499845 (= c!269529 ((_ is Nil!18295) (originalCharacters!4039 (h!23698 tokens!457))))))

(assert (=> d!499845 (= (++!4963 (originalCharacters!4039 (h!23698 tokens!457)) lt!619174) lt!619832)))

(declare-fun b!1657058 () Bool)

(assert (=> b!1657058 (= e!1062538 (Cons!18295 (h!23696 (originalCharacters!4039 (h!23698 tokens!457))) (++!4963 (t!151286 (originalCharacters!4039 (h!23698 tokens!457))) lt!619174)))))

(declare-fun b!1657057 () Bool)

(assert (=> b!1657057 (= e!1062538 lt!619174)))

(declare-fun b!1657059 () Bool)

(declare-fun res!743243 () Bool)

(assert (=> b!1657059 (=> (not res!743243) (not e!1062539))))

(assert (=> b!1657059 (= res!743243 (= (size!14555 lt!619832) (+ (size!14555 (originalCharacters!4039 (h!23698 tokens!457))) (size!14555 lt!619174))))))

(assert (= (and d!499845 c!269529) b!1657057))

(assert (= (and d!499845 (not c!269529)) b!1657058))

(assert (= (and d!499845 res!743242) b!1657059))

(assert (= (and b!1657059 res!743243) b!1657060))

(declare-fun m!2012451 () Bool)

(assert (=> d!499845 m!2012451))

(declare-fun m!2012453 () Bool)

(assert (=> d!499845 m!2012453))

(declare-fun m!2012455 () Bool)

(assert (=> d!499845 m!2012455))

(declare-fun m!2012457 () Bool)

(assert (=> b!1657058 m!2012457))

(declare-fun m!2012459 () Bool)

(assert (=> b!1657059 m!2012459))

(assert (=> b!1657059 m!2012345))

(declare-fun m!2012461 () Bool)

(assert (=> b!1657059 m!2012461))

(assert (=> b!1656709 d!499845))

(declare-fun d!499847 () Bool)

(declare-fun c!269530 () Bool)

(assert (=> d!499847 (= c!269530 (isEmpty!11337 (++!4963 (originalCharacters!4039 (h!23698 tokens!457)) lt!619174)))))

(declare-fun e!1062540 () Bool)

(assert (=> d!499847 (= (prefixMatch!470 lt!619178 (++!4963 (originalCharacters!4039 (h!23698 tokens!457)) lt!619174)) e!1062540)))

(declare-fun b!1657061 () Bool)

(assert (=> b!1657061 (= e!1062540 (not (lostCause!469 lt!619178)))))

(declare-fun b!1657062 () Bool)

(assert (=> b!1657062 (= e!1062540 (prefixMatch!470 (derivativeStep!1119 lt!619178 (head!3680 (++!4963 (originalCharacters!4039 (h!23698 tokens!457)) lt!619174))) (tail!2463 (++!4963 (originalCharacters!4039 (h!23698 tokens!457)) lt!619174))))))

(assert (= (and d!499847 c!269530) b!1657061))

(assert (= (and d!499847 (not c!269530)) b!1657062))

(assert (=> d!499847 m!2011549))

(declare-fun m!2012463 () Bool)

(assert (=> d!499847 m!2012463))

(assert (=> b!1657061 m!2011945))

(assert (=> b!1657062 m!2011549))

(declare-fun m!2012465 () Bool)

(assert (=> b!1657062 m!2012465))

(assert (=> b!1657062 m!2012465))

(declare-fun m!2012467 () Bool)

(assert (=> b!1657062 m!2012467))

(assert (=> b!1657062 m!2011549))

(declare-fun m!2012469 () Bool)

(assert (=> b!1657062 m!2012469))

(assert (=> b!1657062 m!2012467))

(assert (=> b!1657062 m!2012469))

(declare-fun m!2012471 () Bool)

(assert (=> b!1657062 m!2012471))

(assert (=> b!1656709 d!499847))

(declare-fun d!499849 () Bool)

(assert (=> d!499849 (= (isDefined!2851 lt!619194) (not (isEmpty!11340 lt!619194)))))

(declare-fun bs!396913 () Bool)

(assert (= bs!396913 d!499849))

(declare-fun m!2012473 () Bool)

(assert (=> bs!396913 m!2012473))

(assert (=> b!1656709 d!499849))

(declare-fun b!1657063 () Bool)

(declare-fun res!743245 () Bool)

(declare-fun e!1062543 () Bool)

(assert (=> b!1657063 (=> (not res!743245) (not e!1062543))))

(declare-fun lt!619835 () Option!3496)

(assert (=> b!1657063 (= res!743245 (= (list!7293 (charsOf!1874 (_1!10401 (get!5344 lt!619835)))) (originalCharacters!4039 (_1!10401 (get!5344 lt!619835)))))))

(declare-fun b!1657064 () Bool)

(declare-fun e!1062541 () Bool)

(assert (=> b!1657064 (= e!1062541 e!1062543)))

(declare-fun res!743250 () Bool)

(assert (=> b!1657064 (=> (not res!743250) (not e!1062543))))

(assert (=> b!1657064 (= res!743250 (isDefined!2851 lt!619835))))

(declare-fun b!1657065 () Bool)

(declare-fun res!743248 () Bool)

(assert (=> b!1657065 (=> (not res!743248) (not e!1062543))))

(assert (=> b!1657065 (= res!743248 (= (value!101585 (_1!10401 (get!5344 lt!619835))) (apply!4871 (transformation!3225 (rule!5097 (_1!10401 (get!5344 lt!619835)))) (seqFromList!2190 (originalCharacters!4039 (_1!10401 (get!5344 lt!619835)))))))))

(declare-fun b!1657066 () Bool)

(declare-fun res!743246 () Bool)

(assert (=> b!1657066 (=> (not res!743246) (not e!1062543))))

(assert (=> b!1657066 (= res!743246 (< (size!14555 (_2!10401 (get!5344 lt!619835))) (size!14555 lt!619200)))))

(declare-fun d!499851 () Bool)

(assert (=> d!499851 e!1062541))

(declare-fun res!743249 () Bool)

(assert (=> d!499851 (=> res!743249 e!1062541)))

(assert (=> d!499851 (= res!743249 (isEmpty!11340 lt!619835))))

(declare-fun e!1062542 () Option!3496)

(assert (=> d!499851 (= lt!619835 e!1062542)))

(declare-fun c!269531 () Bool)

(assert (=> d!499851 (= c!269531 (and ((_ is Cons!18298) rules!1846) ((_ is Nil!18298) (t!151289 rules!1846))))))

(declare-fun lt!619836 () Unit!30727)

(declare-fun lt!619834 () Unit!30727)

(assert (=> d!499851 (= lt!619836 lt!619834)))

(assert (=> d!499851 (isPrefix!1483 lt!619200 lt!619200)))

(assert (=> d!499851 (= lt!619834 (lemmaIsPrefixRefl!1005 lt!619200 lt!619200))))

(assert (=> d!499851 (rulesValidInductive!1027 thiss!17113 rules!1846)))

(assert (=> d!499851 (= (maxPrefix!1416 thiss!17113 rules!1846 lt!619200) lt!619835)))

(declare-fun bm!106148 () Bool)

(declare-fun call!106153 () Option!3496)

(assert (=> bm!106148 (= call!106153 (maxPrefixOneRule!820 thiss!17113 (h!23699 rules!1846) lt!619200))))

(declare-fun b!1657067 () Bool)

(declare-fun res!743247 () Bool)

(assert (=> b!1657067 (=> (not res!743247) (not e!1062543))))

(assert (=> b!1657067 (= res!743247 (= (++!4963 (list!7293 (charsOf!1874 (_1!10401 (get!5344 lt!619835)))) (_2!10401 (get!5344 lt!619835))) lt!619200))))

(declare-fun b!1657068 () Bool)

(assert (=> b!1657068 (= e!1062542 call!106153)))

(declare-fun b!1657069 () Bool)

(declare-fun res!743244 () Bool)

(assert (=> b!1657069 (=> (not res!743244) (not e!1062543))))

(assert (=> b!1657069 (= res!743244 (matchR!2046 (regex!3225 (rule!5097 (_1!10401 (get!5344 lt!619835)))) (list!7293 (charsOf!1874 (_1!10401 (get!5344 lt!619835))))))))

(declare-fun b!1657070 () Bool)

(assert (=> b!1657070 (= e!1062543 (contains!3189 rules!1846 (rule!5097 (_1!10401 (get!5344 lt!619835)))))))

(declare-fun b!1657071 () Bool)

(declare-fun lt!619833 () Option!3496)

(declare-fun lt!619837 () Option!3496)

(assert (=> b!1657071 (= e!1062542 (ite (and ((_ is None!3495) lt!619833) ((_ is None!3495) lt!619837)) None!3495 (ite ((_ is None!3495) lt!619837) lt!619833 (ite ((_ is None!3495) lt!619833) lt!619837 (ite (>= (size!14552 (_1!10401 (v!24698 lt!619833))) (size!14552 (_1!10401 (v!24698 lt!619837)))) lt!619833 lt!619837)))))))

(assert (=> b!1657071 (= lt!619833 call!106153)))

(assert (=> b!1657071 (= lt!619837 (maxPrefix!1416 thiss!17113 (t!151289 rules!1846) lt!619200))))

(assert (= (and d!499851 c!269531) b!1657068))

(assert (= (and d!499851 (not c!269531)) b!1657071))

(assert (= (or b!1657068 b!1657071) bm!106148))

(assert (= (and d!499851 (not res!743249)) b!1657064))

(assert (= (and b!1657064 res!743250) b!1657063))

(assert (= (and b!1657063 res!743245) b!1657066))

(assert (= (and b!1657066 res!743246) b!1657067))

(assert (= (and b!1657067 res!743247) b!1657065))

(assert (= (and b!1657065 res!743248) b!1657069))

(assert (= (and b!1657069 res!743244) b!1657070))

(declare-fun m!2012475 () Bool)

(assert (=> b!1657071 m!2012475))

(declare-fun m!2012477 () Bool)

(assert (=> b!1657067 m!2012477))

(declare-fun m!2012479 () Bool)

(assert (=> b!1657067 m!2012479))

(assert (=> b!1657067 m!2012479))

(declare-fun m!2012481 () Bool)

(assert (=> b!1657067 m!2012481))

(assert (=> b!1657067 m!2012481))

(declare-fun m!2012483 () Bool)

(assert (=> b!1657067 m!2012483))

(declare-fun m!2012485 () Bool)

(assert (=> b!1657064 m!2012485))

(declare-fun m!2012487 () Bool)

(assert (=> d!499851 m!2012487))

(declare-fun m!2012489 () Bool)

(assert (=> d!499851 m!2012489))

(declare-fun m!2012491 () Bool)

(assert (=> d!499851 m!2012491))

(assert (=> d!499851 m!2011829))

(assert (=> b!1657070 m!2012477))

(declare-fun m!2012493 () Bool)

(assert (=> b!1657070 m!2012493))

(assert (=> b!1657063 m!2012477))

(assert (=> b!1657063 m!2012479))

(assert (=> b!1657063 m!2012479))

(assert (=> b!1657063 m!2012481))

(assert (=> b!1657069 m!2012477))

(assert (=> b!1657069 m!2012479))

(assert (=> b!1657069 m!2012479))

(assert (=> b!1657069 m!2012481))

(assert (=> b!1657069 m!2012481))

(declare-fun m!2012495 () Bool)

(assert (=> b!1657069 m!2012495))

(assert (=> b!1657066 m!2012477))

(declare-fun m!2012497 () Bool)

(assert (=> b!1657066 m!2012497))

(assert (=> b!1657066 m!2011859))

(declare-fun m!2012499 () Bool)

(assert (=> bm!106148 m!2012499))

(assert (=> b!1657065 m!2012477))

(declare-fun m!2012501 () Bool)

(assert (=> b!1657065 m!2012501))

(assert (=> b!1657065 m!2012501))

(declare-fun m!2012503 () Bool)

(assert (=> b!1657065 m!2012503))

(assert (=> b!1656709 d!499851))

(declare-fun b!1657082 () Bool)

(declare-fun e!1062551 () Bool)

(declare-fun inv!17 (TokenValue!3315) Bool)

(assert (=> b!1657082 (= e!1062551 (inv!17 (value!101585 (h!23698 tokens!457))))))

(declare-fun b!1657083 () Bool)

(declare-fun e!1062552 () Bool)

(declare-fun inv!16 (TokenValue!3315) Bool)

(assert (=> b!1657083 (= e!1062552 (inv!16 (value!101585 (h!23698 tokens!457))))))

(declare-fun b!1657084 () Bool)

(assert (=> b!1657084 (= e!1062552 e!1062551)))

(declare-fun c!269537 () Bool)

(assert (=> b!1657084 (= c!269537 ((_ is IntegerValue!9946) (value!101585 (h!23698 tokens!457))))))

(declare-fun d!499853 () Bool)

(declare-fun c!269536 () Bool)

(assert (=> d!499853 (= c!269536 ((_ is IntegerValue!9945) (value!101585 (h!23698 tokens!457))))))

(assert (=> d!499853 (= (inv!21 (value!101585 (h!23698 tokens!457))) e!1062552)))

(declare-fun b!1657085 () Bool)

(declare-fun e!1062550 () Bool)

(declare-fun inv!15 (TokenValue!3315) Bool)

(assert (=> b!1657085 (= e!1062550 (inv!15 (value!101585 (h!23698 tokens!457))))))

(declare-fun b!1657086 () Bool)

(declare-fun res!743253 () Bool)

(assert (=> b!1657086 (=> res!743253 e!1062550)))

(assert (=> b!1657086 (= res!743253 (not ((_ is IntegerValue!9947) (value!101585 (h!23698 tokens!457)))))))

(assert (=> b!1657086 (= e!1062551 e!1062550)))

(assert (= (and d!499853 c!269536) b!1657083))

(assert (= (and d!499853 (not c!269536)) b!1657084))

(assert (= (and b!1657084 c!269537) b!1657082))

(assert (= (and b!1657084 (not c!269537)) b!1657086))

(assert (= (and b!1657086 (not res!743253)) b!1657085))

(declare-fun m!2012505 () Bool)

(assert (=> b!1657082 m!2012505))

(declare-fun m!2012507 () Bool)

(assert (=> b!1657083 m!2012507))

(declare-fun m!2012509 () Bool)

(assert (=> b!1657085 m!2012509))

(assert (=> b!1656708 d!499853))

(declare-fun d!499855 () Bool)

(assert (=> d!499855 (= (get!5344 lt!619198) (v!24698 lt!619198))))

(assert (=> b!1656687 d!499855))

(declare-fun b!1657312 () Bool)

(declare-fun e!1062686 () Unit!30727)

(declare-fun Unit!30780 () Unit!30727)

(assert (=> b!1657312 (= e!1062686 Unit!30780)))

(declare-fun lt!620261 () List!18365)

(declare-fun lt!620233 () Token!6016)

(assert (=> b!1657312 (= lt!620261 (list!7293 (charsOf!1874 lt!620233)))))

(declare-fun lt!620240 () List!18365)

(assert (=> b!1657312 (= lt!620240 (list!7293 (charsOf!1874 (h!23698 tokens!457))))))

(declare-fun lt!620270 () Unit!30727)

(declare-fun lt!620278 () List!18365)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!154 (LexerInterface!2854 List!18368 Rule!6250 List!18365 List!18365 List!18365 Rule!6250) Unit!30727)

(assert (=> b!1657312 (= lt!620270 (lemmaMaxPrefixOutputsMaxPrefix!154 thiss!17113 rules!1846 (rule!5097 lt!620233) lt!620261 lt!620278 lt!620240 (rule!5097 (h!23698 tokens!457))))))

(assert (=> b!1657312 (not (matchR!2046 (regex!3225 (rule!5097 (h!23698 tokens!457))) lt!620240))))

(declare-fun lt!620254 () Unit!30727)

(assert (=> b!1657312 (= lt!620254 lt!620270)))

(assert (=> b!1657312 false))

(declare-fun b!1657313 () Bool)

(assert (=> b!1657313 false))

(declare-fun lt!620255 () Unit!30727)

(declare-fun lt!620218 () Unit!30727)

(assert (=> b!1657313 (= lt!620255 lt!620218)))

(declare-fun lt!620248 () List!18365)

(assert (=> b!1657313 (not (matchR!2046 (regex!3225 (rule!5097 lt!620233)) lt!620248))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!104 (LexerInterface!2854 List!18368 Rule!6250 List!18365 List!18365 Rule!6250) Unit!30727)

(assert (=> b!1657313 (= lt!620218 (lemmaMaxPrefNoSmallerRuleMatches!104 thiss!17113 rules!1846 (rule!5097 (h!23698 tokens!457)) lt!620248 (list!7293 (charsOf!1874 (h!23698 tokens!457))) (rule!5097 lt!620233)))))

(assert (=> b!1657313 (= lt!620248 (list!7293 (charsOf!1874 (h!23698 tokens!457))))))

(declare-fun e!1062682 () Unit!30727)

(declare-fun Unit!30781 () Unit!30727)

(assert (=> b!1657313 (= e!1062682 Unit!30781)))

(declare-fun b!1657314 () Bool)

(declare-fun e!1062677 () Unit!30727)

(declare-fun Unit!30782 () Unit!30727)

(assert (=> b!1657314 (= e!1062677 Unit!30782)))

(declare-fun c!269594 () Bool)

(declare-fun getIndex!132 (List!18368 Rule!6250) Int)

(assert (=> b!1657314 (= c!269594 (< (getIndex!132 rules!1846 (rule!5097 (h!23698 tokens!457))) (getIndex!132 rules!1846 (rule!5097 lt!620233))))))

(declare-fun lt!620211 () Unit!30727)

(declare-fun e!1062675 () Unit!30727)

(assert (=> b!1657314 (= lt!620211 e!1062675)))

(declare-fun c!269592 () Bool)

(assert (=> b!1657314 (= c!269592 (< (getIndex!132 rules!1846 (rule!5097 lt!620233)) (getIndex!132 rules!1846 (rule!5097 (h!23698 tokens!457)))))))

(declare-fun lt!620226 () Unit!30727)

(assert (=> b!1657314 (= lt!620226 e!1062682)))

(declare-fun c!269589 () Bool)

(assert (=> b!1657314 (= c!269589 (= (getIndex!132 rules!1846 (rule!5097 lt!620233)) (getIndex!132 rules!1846 (rule!5097 (h!23698 tokens!457)))))))

(declare-fun lt!620206 () Unit!30727)

(declare-fun e!1062678 () Unit!30727)

(assert (=> b!1657314 (= lt!620206 e!1062678)))

(assert (=> b!1657314 false))

(declare-fun b!1657315 () Bool)

(assert (=> b!1657315 false))

(declare-fun lt!620267 () Unit!30727)

(declare-fun lt!620227 () Unit!30727)

(assert (=> b!1657315 (= lt!620267 lt!620227)))

(declare-fun lt!620264 () List!18365)

(assert (=> b!1657315 (not (matchR!2046 (regex!3225 (rule!5097 (h!23698 tokens!457))) lt!620264))))

(assert (=> b!1657315 (= lt!620227 (lemmaMaxPrefNoSmallerRuleMatches!104 thiss!17113 rules!1846 (rule!5097 lt!620233) lt!620264 lt!620278 (rule!5097 (h!23698 tokens!457))))))

(assert (=> b!1657315 (= lt!620264 (list!7293 (charsOf!1874 lt!620233)))))

(declare-fun Unit!30783 () Unit!30727)

(assert (=> b!1657315 (= e!1062675 Unit!30783)))

(declare-fun d!499857 () Bool)

(assert (=> d!499857 (= (maxPrefix!1416 thiss!17113 rules!1846 (++!4963 (list!7293 (charsOf!1874 (h!23698 tokens!457))) lt!619199)) (Some!3495 (tuple2!17999 (h!23698 tokens!457) lt!619199)))))

(declare-fun lt!620262 () Unit!30727)

(declare-fun Unit!30784 () Unit!30727)

(assert (=> d!499857 (= lt!620262 Unit!30784)))

(declare-fun lt!620237 () Unit!30727)

(assert (=> d!499857 (= lt!620237 e!1062677)))

(declare-fun c!269593 () Bool)

(assert (=> d!499857 (= c!269593 (not (= (rule!5097 lt!620233) (rule!5097 (h!23698 tokens!457)))))))

(declare-fun lt!620230 () Unit!30727)

(declare-fun lt!620280 () Unit!30727)

(assert (=> d!499857 (= lt!620230 lt!620280)))

(declare-fun lt!620247 () List!18365)

(assert (=> d!499857 (= lt!619199 lt!620247)))

(declare-fun lemmaSamePrefixThenSameSuffix!686 (List!18365 List!18365 List!18365 List!18365 List!18365) Unit!30727)

(assert (=> d!499857 (= lt!620280 (lemmaSamePrefixThenSameSuffix!686 (list!7293 (charsOf!1874 (h!23698 tokens!457))) lt!619199 (list!7293 (charsOf!1874 (h!23698 tokens!457))) lt!620247 lt!620278))))

(declare-fun lt!620238 () Unit!30727)

(declare-fun lt!620269 () Unit!30727)

(assert (=> d!499857 (= lt!620238 lt!620269)))

(declare-fun lt!620252 () List!18365)

(declare-fun lt!620236 () List!18365)

(assert (=> d!499857 (= lt!620252 lt!620236)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!187 (List!18365 List!18365 List!18365) Unit!30727)

(assert (=> d!499857 (= lt!620269 (lemmaIsPrefixSameLengthThenSameList!187 lt!620252 lt!620236 lt!620278))))

(assert (=> d!499857 (= lt!620236 (list!7293 (charsOf!1874 (h!23698 tokens!457))))))

(assert (=> d!499857 (= lt!620252 (list!7293 (charsOf!1874 lt!620233)))))

(declare-fun lt!620250 () Unit!30727)

(assert (=> d!499857 (= lt!620250 e!1062686)))

(declare-fun c!269590 () Bool)

(assert (=> d!499857 (= c!269590 (< (size!14556 (charsOf!1874 lt!620233)) (size!14556 (charsOf!1874 (h!23698 tokens!457)))))))

(declare-fun lt!620275 () Unit!30727)

(declare-fun e!1062676 () Unit!30727)

(assert (=> d!499857 (= lt!620275 e!1062676)))

(declare-fun c!269591 () Bool)

(assert (=> d!499857 (= c!269591 (> (size!14556 (charsOf!1874 lt!620233)) (size!14556 (charsOf!1874 (h!23698 tokens!457)))))))

(declare-fun lt!620232 () Unit!30727)

(declare-fun lt!620209 () Unit!30727)

(assert (=> d!499857 (= lt!620232 lt!620209)))

(assert (=> d!499857 (matchR!2046 (rulesRegex!609 thiss!17113 rules!1846) (list!7293 (charsOf!1874 (h!23698 tokens!457))))))

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!64 (LexerInterface!2854 List!18368 List!18365 Token!6016 Rule!6250 List!18365) Unit!30727)

(assert (=> d!499857 (= lt!620209 (lemmaMaxPrefixThenMatchesRulesRegex!64 thiss!17113 rules!1846 (list!7293 (charsOf!1874 (h!23698 tokens!457))) (h!23698 tokens!457) (rule!5097 (h!23698 tokens!457)) Nil!18295))))

(declare-fun lt!620239 () Unit!30727)

(declare-fun lt!620204 () Unit!30727)

(assert (=> d!499857 (= lt!620239 lt!620204)))

(declare-fun lt!620277 () List!18365)

(assert (=> d!499857 (= lt!620247 lt!620277)))

(declare-fun lt!620253 () List!18365)

(declare-fun lt!620242 () List!18365)

(assert (=> d!499857 (= lt!620204 (lemmaSamePrefixThenSameSuffix!686 lt!620242 lt!620247 lt!620253 lt!620277 lt!620278))))

(declare-fun getSuffix!734 (List!18365 List!18365) List!18365)

(assert (=> d!499857 (= lt!620277 (getSuffix!734 lt!620278 (list!7293 (charsOf!1874 lt!620233))))))

(assert (=> d!499857 (= lt!620253 (list!7293 (charsOf!1874 lt!620233)))))

(assert (=> d!499857 (= lt!620242 (list!7293 (charsOf!1874 lt!620233)))))

(declare-fun lt!620245 () Unit!30727)

(declare-fun lt!620231 () Unit!30727)

(assert (=> d!499857 (= lt!620245 lt!620231)))

(declare-fun lt!620212 () List!18365)

(assert (=> d!499857 (= (maxPrefixOneRule!820 thiss!17113 (rule!5097 lt!620233) lt!620278) (Some!3495 (tuple2!17999 (Token!6017 (apply!4871 (transformation!3225 (rule!5097 lt!620233)) (seqFromList!2190 lt!620212)) (rule!5097 lt!620233) (size!14555 lt!620212) lt!620212) lt!620247)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!253 (LexerInterface!2854 List!18368 List!18365 List!18365 List!18365 Rule!6250) Unit!30727)

(assert (=> d!499857 (= lt!620231 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!253 thiss!17113 rules!1846 lt!620212 lt!620278 lt!620247 (rule!5097 lt!620233)))))

(assert (=> d!499857 (= lt!620212 (list!7293 (charsOf!1874 lt!620233)))))

(declare-fun lt!620219 () Unit!30727)

(declare-fun lemmaCharactersSize!359 (Token!6016) Unit!30727)

(assert (=> d!499857 (= lt!620219 (lemmaCharactersSize!359 lt!620233))))

(declare-fun lt!620217 () Unit!30727)

(declare-fun lemmaEqSameImage!212 (TokenValueInjection!6290 BalanceConc!12140 BalanceConc!12140) Unit!30727)

(assert (=> d!499857 (= lt!620217 (lemmaEqSameImage!212 (transformation!3225 (rule!5097 lt!620233)) (charsOf!1874 lt!620233) (seqFromList!2190 (originalCharacters!4039 lt!620233))))))

(declare-fun lt!620273 () Unit!30727)

(declare-fun lemmaSemiInverse!427 (TokenValueInjection!6290 BalanceConc!12140) Unit!30727)

(assert (=> d!499857 (= lt!620273 (lemmaSemiInverse!427 (transformation!3225 (rule!5097 lt!620233)) (charsOf!1874 lt!620233)))))

(declare-fun lt!620221 () Unit!30727)

(declare-fun lemmaInv!492 (TokenValueInjection!6290) Unit!30727)

(assert (=> d!499857 (= lt!620221 (lemmaInv!492 (transformation!3225 (rule!5097 lt!620233))))))

(declare-fun lt!620258 () Unit!30727)

(declare-fun lt!620213 () Unit!30727)

(assert (=> d!499857 (= lt!620258 lt!620213)))

(declare-fun lt!620246 () List!18365)

(assert (=> d!499857 (isPrefix!1483 lt!620246 (++!4963 lt!620246 lt!620247))))

(assert (=> d!499857 (= lt!620213 (lemmaConcatTwoListThenFirstIsPrefix!1008 lt!620246 lt!620247))))

(assert (=> d!499857 (= lt!620246 (list!7293 (charsOf!1874 lt!620233)))))

(declare-fun lt!620207 () Unit!30727)

(declare-fun lt!620260 () Unit!30727)

(assert (=> d!499857 (= lt!620207 lt!620260)))

(declare-fun e!1062674 () Bool)

(assert (=> d!499857 e!1062674))

(declare-fun res!743362 () Bool)

(assert (=> d!499857 (=> (not res!743362) (not e!1062674))))

(assert (=> d!499857 (= res!743362 (isDefined!2852 (getRuleFromTag!325 thiss!17113 rules!1846 (tag!3507 (rule!5097 lt!620233)))))))

(assert (=> d!499857 (= lt!620260 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!325 thiss!17113 rules!1846 lt!620278 lt!620233))))

(declare-fun lt!620249 () Option!3496)

(assert (=> d!499857 (= lt!620247 (_2!10401 (get!5344 lt!620249)))))

(assert (=> d!499857 (= lt!620233 (_1!10401 (get!5344 lt!620249)))))

(declare-fun lt!620220 () Unit!30727)

(assert (=> d!499857 (= lt!620220 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!422 thiss!17113 rules!1846 (list!7293 (charsOf!1874 (h!23698 tokens!457))) lt!619199))))

(assert (=> d!499857 (= lt!620249 (maxPrefix!1416 thiss!17113 rules!1846 lt!620278))))

(declare-fun lt!620266 () Unit!30727)

(declare-fun lt!620244 () Unit!30727)

(assert (=> d!499857 (= lt!620266 lt!620244)))

(declare-fun lt!620224 () List!18365)

(assert (=> d!499857 (isPrefix!1483 lt!620224 (++!4963 lt!620224 lt!619199))))

(assert (=> d!499857 (= lt!620244 (lemmaConcatTwoListThenFirstIsPrefix!1008 lt!620224 lt!619199))))

(assert (=> d!499857 (= lt!620224 (list!7293 (charsOf!1874 (h!23698 tokens!457))))))

(assert (=> d!499857 (= lt!620278 (++!4963 (list!7293 (charsOf!1874 (h!23698 tokens!457))) lt!619199))))

(assert (=> d!499857 (not (isEmpty!11338 rules!1846))))

(assert (=> d!499857 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!180 thiss!17113 rules!1846 (h!23698 tokens!457) (rule!5097 (h!23698 tokens!457)) lt!619199) lt!620262)))

(declare-fun b!1657317 () Bool)

(assert (=> b!1657317 (= e!1062674 (= (rule!5097 lt!620233) (get!5345 (getRuleFromTag!325 thiss!17113 rules!1846 (tag!3507 (rule!5097 lt!620233))))))))

(declare-fun b!1657318 () Bool)

(assert (=> b!1657318 false))

(declare-fun lt!620228 () Unit!30727)

(declare-fun lt!620214 () Unit!30727)

(assert (=> b!1657318 (= lt!620228 lt!620214)))

(assert (=> b!1657318 (= (rule!5097 lt!620233) (rule!5097 (h!23698 tokens!457)))))

(declare-fun lemmaSameIndexThenSameElement!80 (List!18368 Rule!6250 Rule!6250) Unit!30727)

(assert (=> b!1657318 (= lt!620214 (lemmaSameIndexThenSameElement!80 rules!1846 (rule!5097 lt!620233) (rule!5097 (h!23698 tokens!457))))))

(declare-fun Unit!30785 () Unit!30727)

(assert (=> b!1657318 (= e!1062678 Unit!30785)))

(declare-fun b!1657319 () Bool)

(declare-fun Unit!30786 () Unit!30727)

(assert (=> b!1657319 (= e!1062676 Unit!30786)))

(declare-fun b!1657320 () Bool)

(declare-fun Unit!30787 () Unit!30727)

(assert (=> b!1657320 (= e!1062686 Unit!30787)))

(declare-fun b!1657321 () Bool)

(declare-fun res!743364 () Bool)

(assert (=> b!1657321 (=> (not res!743364) (not e!1062674))))

(assert (=> b!1657321 (= res!743364 (matchR!2046 (regex!3225 (get!5345 (getRuleFromTag!325 thiss!17113 rules!1846 (tag!3507 (rule!5097 lt!620233))))) (list!7293 (charsOf!1874 lt!620233))))))

(declare-fun b!1657322 () Bool)

(declare-fun Unit!30788 () Unit!30727)

(assert (=> b!1657322 (= e!1062675 Unit!30788)))

(declare-fun b!1657323 () Bool)

(declare-fun Unit!30789 () Unit!30727)

(assert (=> b!1657323 (= e!1062682 Unit!30789)))

(declare-fun b!1657325 () Bool)

(declare-fun Unit!30790 () Unit!30727)

(assert (=> b!1657325 (= e!1062678 Unit!30790)))

(declare-fun b!1657326 () Bool)

(declare-fun Unit!30791 () Unit!30727)

(assert (=> b!1657326 (= e!1062677 Unit!30791)))

(declare-fun b!1657327 () Bool)

(declare-fun Unit!30792 () Unit!30727)

(assert (=> b!1657327 (= e!1062676 Unit!30792)))

(declare-fun lt!620234 () Unit!30727)

(assert (=> b!1657327 (= lt!620234 (lemmaMaxPrefixThenMatchesRulesRegex!64 thiss!17113 rules!1846 lt!620278 lt!620233 (rule!5097 lt!620233) lt!620247))))

(assert (=> b!1657327 (matchR!2046 (rulesRegex!609 thiss!17113 rules!1846) (list!7293 (charsOf!1874 lt!620233)))))

(declare-fun lt!620210 () Unit!30727)

(assert (=> b!1657327 (= lt!620210 lt!620234)))

(declare-fun lt!620208 () List!18365)

(assert (=> b!1657327 (= lt!620208 (list!7293 (charsOf!1874 (h!23698 tokens!457))))))

(declare-fun lt!620223 () List!18365)

(assert (=> b!1657327 (= lt!620223 (list!7293 (charsOf!1874 (h!23698 tokens!457))))))

(declare-fun lt!620241 () List!18365)

(assert (=> b!1657327 (= lt!620241 (getSuffix!734 lt!620278 (list!7293 (charsOf!1874 (h!23698 tokens!457)))))))

(declare-fun lt!620274 () Unit!30727)

(assert (=> b!1657327 (= lt!620274 (lemmaSamePrefixThenSameSuffix!686 lt!620208 lt!619199 lt!620223 lt!620241 lt!620278))))

(assert (=> b!1657327 (= lt!619199 lt!620241)))

(declare-fun lt!620216 () Unit!30727)

(assert (=> b!1657327 (= lt!620216 lt!620274)))

(declare-fun lt!620235 () List!18365)

(assert (=> b!1657327 (= lt!620235 (list!7293 (charsOf!1874 (h!23698 tokens!457))))))

(declare-fun lt!620229 () Unit!30727)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!177 (List!18365 List!18365) Unit!30727)

(assert (=> b!1657327 (= lt!620229 (lemmaAddHeadSuffixToPrefixStillPrefix!177 lt!620235 lt!620278))))

(assert (=> b!1657327 (isPrefix!1483 (++!4963 lt!620235 (Cons!18295 (head!3680 (getSuffix!734 lt!620278 lt!620235)) Nil!18295)) lt!620278)))

(declare-fun lt!620251 () Unit!30727)

(assert (=> b!1657327 (= lt!620251 lt!620229)))

(declare-fun lt!620205 () List!18365)

(assert (=> b!1657327 (= lt!620205 (list!7293 (charsOf!1874 lt!620233)))))

(declare-fun lt!620256 () List!18365)

(assert (=> b!1657327 (= lt!620256 (++!4963 (list!7293 (charsOf!1874 (h!23698 tokens!457))) (Cons!18295 (head!3680 lt!619199) Nil!18295)))))

(declare-fun lt!620276 () Unit!30727)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!63 (List!18365 List!18365 List!18365) Unit!30727)

(assert (=> b!1657327 (= lt!620276 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!63 lt!620205 lt!620256 lt!620278))))

(assert (=> b!1657327 (isPrefix!1483 lt!620256 lt!620205)))

(declare-fun lt!620279 () Unit!30727)

(assert (=> b!1657327 (= lt!620279 lt!620276)))

(declare-fun lt!620215 () Regex!4553)

(assert (=> b!1657327 (= lt!620215 (rulesRegex!609 thiss!17113 rules!1846))))

(declare-fun lt!620243 () List!18365)

(assert (=> b!1657327 (= lt!620243 (++!4963 (list!7293 (charsOf!1874 (h!23698 tokens!457))) (Cons!18295 (head!3680 lt!619199) Nil!18295)))))

(declare-fun lt!620225 () List!18365)

(assert (=> b!1657327 (= lt!620225 (list!7293 (charsOf!1874 lt!620233)))))

(declare-fun lt!620222 () Unit!30727)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!64 (Regex!4553 List!18365 List!18365) Unit!30727)

(assert (=> b!1657327 (= lt!620222 (lemmaNotPrefixMatchThenCannotMatchLonger!64 lt!620215 lt!620243 lt!620225))))

(assert (=> b!1657327 (not (matchR!2046 lt!620215 lt!620225))))

(declare-fun lt!620263 () Unit!30727)

(assert (=> b!1657327 (= lt!620263 lt!620222)))

(assert (=> b!1657327 false))

(assert (= (and d!499857 res!743362) b!1657321))

(assert (= (and b!1657321 res!743364) b!1657317))

(assert (= (and d!499857 c!269591) b!1657327))

(assert (= (and d!499857 (not c!269591)) b!1657319))

(assert (= (and d!499857 c!269590) b!1657312))

(assert (= (and d!499857 (not c!269590)) b!1657320))

(assert (= (and d!499857 c!269593) b!1657314))

(assert (= (and d!499857 (not c!269593)) b!1657326))

(assert (= (and b!1657314 c!269594) b!1657315))

(assert (= (and b!1657314 (not c!269594)) b!1657322))

(assert (= (and b!1657314 c!269592) b!1657313))

(assert (= (and b!1657314 (not c!269592)) b!1657323))

(assert (= (and b!1657314 c!269589) b!1657318))

(assert (= (and b!1657314 (not c!269589)) b!1657325))

(declare-fun m!2013005 () Bool)

(assert (=> b!1657312 m!2013005))

(declare-fun m!2013007 () Bool)

(assert (=> b!1657312 m!2013007))

(declare-fun m!2013009 () Bool)

(assert (=> b!1657312 m!2013009))

(assert (=> b!1657312 m!2011521))

(declare-fun m!2013011 () Bool)

(assert (=> b!1657312 m!2013011))

(declare-fun m!2013013 () Bool)

(assert (=> b!1657312 m!2013013))

(assert (=> b!1657312 m!2011521))

(assert (=> b!1657312 m!2013005))

(assert (=> b!1657327 m!2013005))

(assert (=> b!1657327 m!2013007))

(assert (=> b!1657327 m!2013011))

(declare-fun m!2013015 () Bool)

(assert (=> b!1657327 m!2013015))

(declare-fun m!2013017 () Bool)

(assert (=> b!1657327 m!2013017))

(declare-fun m!2013019 () Bool)

(assert (=> b!1657327 m!2013019))

(declare-fun m!2013021 () Bool)

(assert (=> b!1657327 m!2013021))

(declare-fun m!2013023 () Bool)

(assert (=> b!1657327 m!2013023))

(declare-fun m!2013025 () Bool)

(assert (=> b!1657327 m!2013025))

(assert (=> b!1657327 m!2013011))

(declare-fun m!2013027 () Bool)

(assert (=> b!1657327 m!2013027))

(assert (=> b!1657327 m!2013005))

(declare-fun m!2013029 () Bool)

(assert (=> b!1657327 m!2013029))

(assert (=> b!1657327 m!2011521))

(assert (=> b!1657327 m!2013011))

(declare-fun m!2013031 () Bool)

(assert (=> b!1657327 m!2013031))

(assert (=> b!1657327 m!2013023))

(declare-fun m!2013033 () Bool)

(assert (=> b!1657327 m!2013033))

(assert (=> b!1657327 m!2011479))

(assert (=> b!1657327 m!2013021))

(declare-fun m!2013035 () Bool)

(assert (=> b!1657327 m!2013035))

(assert (=> b!1657327 m!2011585))

(assert (=> b!1657327 m!2011521))

(assert (=> b!1657327 m!2011585))

(assert (=> b!1657327 m!2013007))

(declare-fun m!2013037 () Bool)

(assert (=> b!1657327 m!2013037))

(declare-fun m!2013039 () Bool)

(assert (=> b!1657327 m!2013039))

(declare-fun m!2013041 () Bool)

(assert (=> b!1657327 m!2013041))

(declare-fun m!2013043 () Bool)

(assert (=> b!1657314 m!2013043))

(declare-fun m!2013045 () Bool)

(assert (=> b!1657314 m!2013045))

(declare-fun m!2013047 () Bool)

(assert (=> b!1657315 m!2013047))

(declare-fun m!2013049 () Bool)

(assert (=> b!1657315 m!2013049))

(assert (=> b!1657315 m!2013005))

(assert (=> b!1657315 m!2013005))

(assert (=> b!1657315 m!2013007))

(declare-fun m!2013051 () Bool)

(assert (=> b!1657318 m!2013051))

(declare-fun m!2013053 () Bool)

(assert (=> b!1657313 m!2013053))

(assert (=> b!1657313 m!2011521))

(assert (=> b!1657313 m!2011521))

(assert (=> b!1657313 m!2013011))

(assert (=> b!1657313 m!2013011))

(declare-fun m!2013055 () Bool)

(assert (=> b!1657313 m!2013055))

(declare-fun m!2013057 () Bool)

(assert (=> b!1657317 m!2013057))

(assert (=> b!1657317 m!2013057))

(declare-fun m!2013059 () Bool)

(assert (=> b!1657317 m!2013059))

(assert (=> b!1657321 m!2013005))

(assert (=> b!1657321 m!2013007))

(assert (=> b!1657321 m!2013007))

(declare-fun m!2013061 () Bool)

(assert (=> b!1657321 m!2013061))

(assert (=> b!1657321 m!2013057))

(assert (=> b!1657321 m!2013059))

(assert (=> b!1657321 m!2013057))

(assert (=> b!1657321 m!2013005))

(declare-fun m!2013063 () Bool)

(assert (=> d!499857 m!2013063))

(declare-fun m!2013065 () Bool)

(assert (=> d!499857 m!2013065))

(declare-fun m!2013067 () Bool)

(assert (=> d!499857 m!2013067))

(declare-fun m!2013069 () Bool)

(assert (=> d!499857 m!2013069))

(assert (=> d!499857 m!2013005))

(declare-fun m!2013071 () Bool)

(assert (=> d!499857 m!2013071))

(assert (=> d!499857 m!2013005))

(declare-fun m!2013073 () Bool)

(assert (=> d!499857 m!2013073))

(declare-fun m!2013075 () Bool)

(assert (=> d!499857 m!2013075))

(declare-fun m!2013077 () Bool)

(assert (=> d!499857 m!2013077))

(declare-fun m!2013079 () Bool)

(assert (=> d!499857 m!2013079))

(declare-fun m!2013081 () Bool)

(assert (=> d!499857 m!2013081))

(assert (=> d!499857 m!2013011))

(declare-fun m!2013083 () Bool)

(assert (=> d!499857 m!2013083))

(assert (=> d!499857 m!2013005))

(declare-fun m!2013085 () Bool)

(assert (=> d!499857 m!2013085))

(declare-fun m!2013087 () Bool)

(assert (=> d!499857 m!2013087))

(assert (=> d!499857 m!2013007))

(declare-fun m!2013091 () Bool)

(assert (=> d!499857 m!2013091))

(declare-fun m!2013095 () Bool)

(assert (=> d!499857 m!2013095))

(assert (=> d!499857 m!2013005))

(declare-fun m!2013099 () Bool)

(assert (=> d!499857 m!2013099))

(declare-fun m!2013101 () Bool)

(assert (=> d!499857 m!2013101))

(assert (=> d!499857 m!2013005))

(assert (=> d!499857 m!2013007))

(assert (=> d!499857 m!2013011))

(assert (=> d!499857 m!2013011))

(declare-fun m!2013103 () Bool)

(assert (=> d!499857 m!2013103))

(assert (=> d!499857 m!2011477))

(assert (=> d!499857 m!2013057))

(declare-fun m!2013105 () Bool)

(assert (=> d!499857 m!2013105))

(assert (=> d!499857 m!2013075))

(declare-fun m!2013107 () Bool)

(assert (=> d!499857 m!2013107))

(declare-fun m!2013109 () Bool)

(assert (=> d!499857 m!2013109))

(assert (=> d!499857 m!2011585))

(assert (=> d!499857 m!2013011))

(declare-fun m!2013111 () Bool)

(assert (=> d!499857 m!2013111))

(assert (=> d!499857 m!2011521))

(assert (=> d!499857 m!2013011))

(declare-fun m!2013113 () Bool)

(assert (=> d!499857 m!2013113))

(declare-fun m!2013115 () Bool)

(assert (=> d!499857 m!2013115))

(declare-fun m!2013117 () Bool)

(assert (=> d!499857 m!2013117))

(declare-fun m!2013119 () Bool)

(assert (=> d!499857 m!2013119))

(assert (=> d!499857 m!2011585))

(assert (=> d!499857 m!2011521))

(declare-fun m!2013121 () Bool)

(assert (=> d!499857 m!2013121))

(declare-fun m!2013123 () Bool)

(assert (=> d!499857 m!2013123))

(assert (=> d!499857 m!2011521))

(assert (=> d!499857 m!2013107))

(declare-fun m!2013125 () Bool)

(assert (=> d!499857 m!2013125))

(assert (=> d!499857 m!2013011))

(assert (=> d!499857 m!2013079))

(declare-fun m!2013127 () Bool)

(assert (=> d!499857 m!2013127))

(assert (=> d!499857 m!2013011))

(declare-fun m!2013129 () Bool)

(assert (=> d!499857 m!2013129))

(assert (=> d!499857 m!2013057))

(assert (=> d!499857 m!2013067))

(assert (=> d!499857 m!2013085))

(assert (=> b!1656687 d!499857))

(declare-fun d!499955 () Bool)

(assert (=> d!499955 (= (list!7293 (_2!10400 lt!619183)) (list!7296 (c!269463 (_2!10400 lt!619183))))))

(declare-fun bs!396935 () Bool)

(assert (= bs!396935 d!499955))

(declare-fun m!2013131 () Bool)

(assert (=> bs!396935 m!2013131))

(assert (=> b!1656686 d!499955))

(declare-fun d!499957 () Bool)

(assert (=> d!499957 (= (isEmpty!11338 rules!1846) ((_ is Nil!18298) rules!1846))))

(assert (=> b!1656696 d!499957))

(declare-fun bm!106163 () Bool)

(declare-fun call!106168 () Bool)

(assert (=> bm!106163 (= call!106168 (isEmpty!11337 lt!619200))))

(declare-fun b!1657405 () Bool)

(declare-fun e!1062722 () Bool)

(assert (=> b!1657405 (= e!1062722 (= (head!3680 lt!619200) (c!269464 (regex!3225 (rule!5097 (h!23698 tokens!457))))))))

(declare-fun b!1657406 () Bool)

(declare-fun e!1062726 () Bool)

(declare-fun e!1062724 () Bool)

(assert (=> b!1657406 (= e!1062726 e!1062724)))

(declare-fun res!743416 () Bool)

(assert (=> b!1657406 (=> (not res!743416) (not e!1062724))))

(declare-fun lt!620290 () Bool)

(assert (=> b!1657406 (= res!743416 (not lt!620290))))

(declare-fun d!499959 () Bool)

(declare-fun e!1062727 () Bool)

(assert (=> d!499959 e!1062727))

(declare-fun c!269613 () Bool)

(assert (=> d!499959 (= c!269613 ((_ is EmptyExpr!4553) (regex!3225 (rule!5097 (h!23698 tokens!457)))))))

(declare-fun e!1062725 () Bool)

(assert (=> d!499959 (= lt!620290 e!1062725)))

(declare-fun c!269612 () Bool)

(assert (=> d!499959 (= c!269612 (isEmpty!11337 lt!619200))))

(assert (=> d!499959 (validRegex!1818 (regex!3225 (rule!5097 (h!23698 tokens!457))))))

(assert (=> d!499959 (= (matchR!2046 (regex!3225 (rule!5097 (h!23698 tokens!457))) lt!619200) lt!620290)))

(declare-fun b!1657407 () Bool)

(declare-fun res!743413 () Bool)

(assert (=> b!1657407 (=> (not res!743413) (not e!1062722))))

(assert (=> b!1657407 (= res!743413 (isEmpty!11337 (tail!2463 lt!619200)))))

(declare-fun b!1657408 () Bool)

(declare-fun e!1062723 () Bool)

(assert (=> b!1657408 (= e!1062723 (not (= (head!3680 lt!619200) (c!269464 (regex!3225 (rule!5097 (h!23698 tokens!457)))))))))

(declare-fun b!1657409 () Bool)

(declare-fun nullable!1352 (Regex!4553) Bool)

(assert (=> b!1657409 (= e!1062725 (nullable!1352 (regex!3225 (rule!5097 (h!23698 tokens!457)))))))

(declare-fun b!1657410 () Bool)

(declare-fun res!743414 () Bool)

(assert (=> b!1657410 (=> (not res!743414) (not e!1062722))))

(assert (=> b!1657410 (= res!743414 (not call!106168))))

(declare-fun b!1657411 () Bool)

(assert (=> b!1657411 (= e!1062727 (= lt!620290 call!106168))))

(declare-fun b!1657412 () Bool)

(assert (=> b!1657412 (= e!1062724 e!1062723)))

(declare-fun res!743411 () Bool)

(assert (=> b!1657412 (=> res!743411 e!1062723)))

(assert (=> b!1657412 (= res!743411 call!106168)))

(declare-fun b!1657413 () Bool)

(assert (=> b!1657413 (= e!1062725 (matchR!2046 (derivativeStep!1119 (regex!3225 (rule!5097 (h!23698 tokens!457))) (head!3680 lt!619200)) (tail!2463 lt!619200)))))

(declare-fun b!1657414 () Bool)

(declare-fun res!743412 () Bool)

(assert (=> b!1657414 (=> res!743412 e!1062723)))

(assert (=> b!1657414 (= res!743412 (not (isEmpty!11337 (tail!2463 lt!619200))))))

(declare-fun b!1657415 () Bool)

(declare-fun res!743415 () Bool)

(assert (=> b!1657415 (=> res!743415 e!1062726)))

(assert (=> b!1657415 (= res!743415 e!1062722)))

(declare-fun res!743417 () Bool)

(assert (=> b!1657415 (=> (not res!743417) (not e!1062722))))

(assert (=> b!1657415 (= res!743417 lt!620290)))

(declare-fun b!1657416 () Bool)

(declare-fun res!743410 () Bool)

(assert (=> b!1657416 (=> res!743410 e!1062726)))

(assert (=> b!1657416 (= res!743410 (not ((_ is ElementMatch!4553) (regex!3225 (rule!5097 (h!23698 tokens!457))))))))

(declare-fun e!1062728 () Bool)

(assert (=> b!1657416 (= e!1062728 e!1062726)))

(declare-fun b!1657417 () Bool)

(assert (=> b!1657417 (= e!1062728 (not lt!620290))))

(declare-fun b!1657418 () Bool)

(assert (=> b!1657418 (= e!1062727 e!1062728)))

(declare-fun c!269611 () Bool)

(assert (=> b!1657418 (= c!269611 ((_ is EmptyLang!4553) (regex!3225 (rule!5097 (h!23698 tokens!457)))))))

(assert (= (and d!499959 c!269612) b!1657409))

(assert (= (and d!499959 (not c!269612)) b!1657413))

(assert (= (and d!499959 c!269613) b!1657411))

(assert (= (and d!499959 (not c!269613)) b!1657418))

(assert (= (and b!1657418 c!269611) b!1657417))

(assert (= (and b!1657418 (not c!269611)) b!1657416))

(assert (= (and b!1657416 (not res!743410)) b!1657415))

(assert (= (and b!1657415 res!743417) b!1657410))

(assert (= (and b!1657410 res!743414) b!1657407))

(assert (= (and b!1657407 res!743413) b!1657405))

(assert (= (and b!1657415 (not res!743415)) b!1657406))

(assert (= (and b!1657406 res!743416) b!1657412))

(assert (= (and b!1657412 (not res!743411)) b!1657414))

(assert (= (and b!1657414 (not res!743412)) b!1657408))

(assert (= (or b!1657411 b!1657412 b!1657410) bm!106163))

(declare-fun m!2013161 () Bool)

(assert (=> b!1657409 m!2013161))

(declare-fun m!2013163 () Bool)

(assert (=> d!499959 m!2013163))

(declare-fun m!2013165 () Bool)

(assert (=> d!499959 m!2013165))

(assert (=> b!1657414 m!2012321))

(assert (=> b!1657414 m!2012321))

(declare-fun m!2013167 () Bool)

(assert (=> b!1657414 m!2013167))

(assert (=> b!1657413 m!2012327))

(assert (=> b!1657413 m!2012327))

(declare-fun m!2013169 () Bool)

(assert (=> b!1657413 m!2013169))

(assert (=> b!1657413 m!2012321))

(assert (=> b!1657413 m!2013169))

(assert (=> b!1657413 m!2012321))

(declare-fun m!2013171 () Bool)

(assert (=> b!1657413 m!2013171))

(assert (=> bm!106163 m!2013163))

(assert (=> b!1657407 m!2012321))

(assert (=> b!1657407 m!2012321))

(assert (=> b!1657407 m!2013167))

(assert (=> b!1657408 m!2012327))

(assert (=> b!1657405 m!2012327))

(assert (=> b!1656694 d!499959))

(declare-fun d!499969 () Bool)

(assert (=> d!499969 (= (isEmpty!11337 (_2!10401 lt!619186)) ((_ is Nil!18295) (_2!10401 lt!619186)))))

(assert (=> b!1656693 d!499969))

(declare-fun d!499973 () Bool)

(declare-fun c!269616 () Bool)

(assert (=> d!499973 (= c!269616 (isEmpty!11337 (++!4963 lt!619200 lt!619174)))))

(declare-fun e!1062732 () Bool)

(assert (=> d!499973 (= (prefixMatch!470 lt!619178 (++!4963 lt!619200 lt!619174)) e!1062732)))

(declare-fun b!1657423 () Bool)

(assert (=> b!1657423 (= e!1062732 (not (lostCause!469 lt!619178)))))

(declare-fun b!1657424 () Bool)

(assert (=> b!1657424 (= e!1062732 (prefixMatch!470 (derivativeStep!1119 lt!619178 (head!3680 (++!4963 lt!619200 lt!619174))) (tail!2463 (++!4963 lt!619200 lt!619174))))))

(assert (= (and d!499973 c!269616) b!1657423))

(assert (= (and d!499973 (not c!269616)) b!1657424))

(assert (=> d!499973 m!2011467))

(declare-fun m!2013173 () Bool)

(assert (=> d!499973 m!2013173))

(assert (=> b!1657423 m!2011945))

(assert (=> b!1657424 m!2011467))

(declare-fun m!2013175 () Bool)

(assert (=> b!1657424 m!2013175))

(assert (=> b!1657424 m!2013175))

(declare-fun m!2013177 () Bool)

(assert (=> b!1657424 m!2013177))

(assert (=> b!1657424 m!2011467))

(declare-fun m!2013179 () Bool)

(assert (=> b!1657424 m!2013179))

(assert (=> b!1657424 m!2013177))

(assert (=> b!1657424 m!2013179))

(declare-fun m!2013181 () Bool)

(assert (=> b!1657424 m!2013181))

(assert (=> b!1656692 d!499973))

(declare-fun e!1062734 () Bool)

(declare-fun lt!620292 () List!18365)

(declare-fun b!1657428 () Bool)

(assert (=> b!1657428 (= e!1062734 (or (not (= lt!619174 Nil!18295)) (= lt!620292 lt!619200)))))

(declare-fun d!499975 () Bool)

(assert (=> d!499975 e!1062734))

(declare-fun res!743420 () Bool)

(assert (=> d!499975 (=> (not res!743420) (not e!1062734))))

(assert (=> d!499975 (= res!743420 (= (content!2544 lt!620292) ((_ map or) (content!2544 lt!619200) (content!2544 lt!619174))))))

(declare-fun e!1062733 () List!18365)

(assert (=> d!499975 (= lt!620292 e!1062733)))

(declare-fun c!269617 () Bool)

(assert (=> d!499975 (= c!269617 ((_ is Nil!18295) lt!619200))))

(assert (=> d!499975 (= (++!4963 lt!619200 lt!619174) lt!620292)))

(declare-fun b!1657426 () Bool)

(assert (=> b!1657426 (= e!1062733 (Cons!18295 (h!23696 lt!619200) (++!4963 (t!151286 lt!619200) lt!619174)))))

(declare-fun b!1657425 () Bool)

(assert (=> b!1657425 (= e!1062733 lt!619174)))

(declare-fun b!1657427 () Bool)

(declare-fun res!743421 () Bool)

(assert (=> b!1657427 (=> (not res!743421) (not e!1062734))))

(assert (=> b!1657427 (= res!743421 (= (size!14555 lt!620292) (+ (size!14555 lt!619200) (size!14555 lt!619174))))))

(assert (= (and d!499975 c!269617) b!1657425))

(assert (= (and d!499975 (not c!269617)) b!1657426))

(assert (= (and d!499975 res!743420) b!1657427))

(assert (= (and b!1657427 res!743421) b!1657428))

(declare-fun m!2013183 () Bool)

(assert (=> d!499975 m!2013183))

(assert (=> d!499975 m!2011851))

(assert (=> d!499975 m!2012455))

(declare-fun m!2013185 () Bool)

(assert (=> b!1657426 m!2013185))

(declare-fun m!2013187 () Bool)

(assert (=> b!1657427 m!2013187))

(assert (=> b!1657427 m!2011859))

(assert (=> b!1657427 m!2012461))

(assert (=> b!1656692 d!499975))

(declare-fun b!1657454 () Bool)

(declare-fun b_free!45055 () Bool)

(declare-fun b_next!45759 () Bool)

(assert (=> b!1657454 (= b_free!45055 (not b_next!45759))))

(declare-fun tp!478812 () Bool)

(declare-fun b_and!117621 () Bool)

(assert (=> b!1657454 (= tp!478812 b_and!117621)))

(declare-fun b_free!45057 () Bool)

(declare-fun b_next!45761 () Bool)

(assert (=> b!1657454 (= b_free!45057 (not b_next!45761))))

(declare-fun t!151317 () Bool)

(declare-fun tb!94815 () Bool)

(assert (=> (and b!1657454 (= (toChars!4535 (transformation!3225 (rule!5097 (h!23698 (t!151288 tokens!457))))) (toChars!4535 (transformation!3225 (rule!5097 (h!23698 tokens!457))))) t!151317) tb!94815))

(declare-fun result!114602 () Bool)

(assert (= result!114602 result!114584))

(assert (=> d!499747 t!151317))

(assert (=> b!1657026 t!151317))

(declare-fun t!151319 () Bool)

(declare-fun tb!94817 () Bool)

(assert (=> (and b!1657454 (= (toChars!4535 (transformation!3225 (rule!5097 (h!23698 (t!151288 tokens!457))))) (toChars!4535 (transformation!3225 (rule!5097 (h!23698 (t!151288 tokens!457)))))) t!151319) tb!94817))

(declare-fun result!114604 () Bool)

(assert (= result!114604 result!114590))

(assert (=> d!499833 t!151319))

(declare-fun b_and!117623 () Bool)

(declare-fun tp!478811 () Bool)

(assert (=> b!1657454 (= tp!478811 (and (=> t!151317 result!114602) (=> t!151319 result!114604) b_and!117623))))

(declare-fun e!1062764 () Bool)

(declare-fun tp!478813 () Bool)

(declare-fun b!1657452 () Bool)

(declare-fun e!1062765 () Bool)

(assert (=> b!1657452 (= e!1062764 (and (inv!21 (value!101585 (h!23698 (t!151288 tokens!457)))) e!1062765 tp!478813))))

(declare-fun e!1062766 () Bool)

(declare-fun b!1657451 () Bool)

(declare-fun tp!478810 () Bool)

(assert (=> b!1657451 (= e!1062766 (and (inv!23645 (h!23698 (t!151288 tokens!457))) e!1062764 tp!478810))))

(declare-fun e!1062761 () Bool)

(declare-fun b!1657453 () Bool)

(declare-fun tp!478809 () Bool)

(assert (=> b!1657453 (= e!1062765 (and tp!478809 (inv!23641 (tag!3507 (rule!5097 (h!23698 (t!151288 tokens!457))))) (inv!23644 (transformation!3225 (rule!5097 (h!23698 (t!151288 tokens!457))))) e!1062761))))

(assert (=> b!1656710 (= tp!478784 e!1062766)))

(assert (=> b!1657454 (= e!1062761 (and tp!478812 tp!478811))))

(assert (= b!1657453 b!1657454))

(assert (= b!1657452 b!1657453))

(assert (= b!1657451 b!1657452))

(assert (= (and b!1656710 ((_ is Cons!18297) (t!151288 tokens!457))) b!1657451))

(declare-fun m!2013197 () Bool)

(assert (=> b!1657452 m!2013197))

(declare-fun m!2013199 () Bool)

(assert (=> b!1657451 m!2013199))

(declare-fun m!2013201 () Bool)

(assert (=> b!1657453 m!2013201))

(declare-fun m!2013203 () Bool)

(assert (=> b!1657453 m!2013203))

(declare-fun e!1062777 () Bool)

(assert (=> b!1656705 (= tp!478781 e!1062777)))

(declare-fun b!1657472 () Bool)

(declare-fun tp!478839 () Bool)

(declare-fun tp!478838 () Bool)

(assert (=> b!1657472 (= e!1062777 (and tp!478839 tp!478838))))

(declare-fun b!1657474 () Bool)

(declare-fun tp!478841 () Bool)

(declare-fun tp!478840 () Bool)

(assert (=> b!1657474 (= e!1062777 (and tp!478841 tp!478840))))

(declare-fun b!1657471 () Bool)

(declare-fun tp_is_empty!7383 () Bool)

(assert (=> b!1657471 (= e!1062777 tp_is_empty!7383)))

(declare-fun b!1657473 () Bool)

(declare-fun tp!478837 () Bool)

(assert (=> b!1657473 (= e!1062777 tp!478837)))

(assert (= (and b!1656705 ((_ is ElementMatch!4553) (regex!3225 (h!23699 rules!1846)))) b!1657471))

(assert (= (and b!1656705 ((_ is Concat!7869) (regex!3225 (h!23699 rules!1846)))) b!1657472))

(assert (= (and b!1656705 ((_ is Star!4553) (regex!3225 (h!23699 rules!1846)))) b!1657473))

(assert (= (and b!1656705 ((_ is Union!4553) (regex!3225 (h!23699 rules!1846)))) b!1657474))

(declare-fun e!1062778 () Bool)

(assert (=> b!1656688 (= tp!478787 e!1062778)))

(declare-fun b!1657476 () Bool)

(declare-fun tp!478844 () Bool)

(declare-fun tp!478843 () Bool)

(assert (=> b!1657476 (= e!1062778 (and tp!478844 tp!478843))))

(declare-fun b!1657478 () Bool)

(declare-fun tp!478846 () Bool)

(declare-fun tp!478845 () Bool)

(assert (=> b!1657478 (= e!1062778 (and tp!478846 tp!478845))))

(declare-fun b!1657475 () Bool)

(assert (=> b!1657475 (= e!1062778 tp_is_empty!7383)))

(declare-fun b!1657477 () Bool)

(declare-fun tp!478842 () Bool)

(assert (=> b!1657477 (= e!1062778 tp!478842)))

(assert (= (and b!1656688 ((_ is ElementMatch!4553) (regex!3225 (rule!5097 (h!23698 tokens!457))))) b!1657475))

(assert (= (and b!1656688 ((_ is Concat!7869) (regex!3225 (rule!5097 (h!23698 tokens!457))))) b!1657476))

(assert (= (and b!1656688 ((_ is Star!4553) (regex!3225 (rule!5097 (h!23698 tokens!457))))) b!1657477))

(assert (= (and b!1656688 ((_ is Union!4553) (regex!3225 (rule!5097 (h!23698 tokens!457))))) b!1657478))

(declare-fun b!1657487 () Bool)

(declare-fun e!1062783 () Bool)

(declare-fun tp!478851 () Bool)

(assert (=> b!1657487 (= e!1062783 (and tp_is_empty!7383 tp!478851))))

(assert (=> b!1656708 (= tp!478782 e!1062783)))

(assert (= (and b!1656708 ((_ is Cons!18295) (originalCharacters!4039 (h!23698 tokens!457)))) b!1657487))

(declare-fun b!1657519 () Bool)

(declare-fun b_free!45063 () Bool)

(declare-fun b_next!45767 () Bool)

(assert (=> b!1657519 (= b_free!45063 (not b_next!45767))))

(declare-fun tp!478881 () Bool)

(declare-fun b_and!117629 () Bool)

(assert (=> b!1657519 (= tp!478881 b_and!117629)))

(declare-fun b_free!45065 () Bool)

(declare-fun b_next!45769 () Bool)

(assert (=> b!1657519 (= b_free!45065 (not b_next!45769))))

(declare-fun t!151325 () Bool)

(declare-fun tb!94823 () Bool)

(assert (=> (and b!1657519 (= (toChars!4535 (transformation!3225 (h!23699 (t!151289 rules!1846)))) (toChars!4535 (transformation!3225 (rule!5097 (h!23698 tokens!457))))) t!151325) tb!94823))

(declare-fun result!114622 () Bool)

(assert (= result!114622 result!114584))

(assert (=> d!499747 t!151325))

(assert (=> b!1657026 t!151325))

(declare-fun tb!94825 () Bool)

(declare-fun t!151327 () Bool)

(assert (=> (and b!1657519 (= (toChars!4535 (transformation!3225 (h!23699 (t!151289 rules!1846)))) (toChars!4535 (transformation!3225 (rule!5097 (h!23698 (t!151288 tokens!457)))))) t!151327) tb!94825))

(declare-fun result!114624 () Bool)

(assert (= result!114624 result!114590))

(assert (=> d!499833 t!151327))

(declare-fun b_and!117631 () Bool)

(declare-fun tp!478876 () Bool)

(assert (=> b!1657519 (= tp!478876 (and (=> t!151325 result!114622) (=> t!151327 result!114624) b_and!117631))))

(declare-fun e!1062803 () Bool)

(assert (=> b!1657519 (= e!1062803 (and tp!478881 tp!478876))))

(declare-fun e!1062800 () Bool)

(declare-fun b!1657518 () Bool)

(declare-fun tp!478877 () Bool)

(assert (=> b!1657518 (= e!1062800 (and tp!478877 (inv!23641 (tag!3507 (h!23699 (t!151289 rules!1846)))) (inv!23644 (transformation!3225 (h!23699 (t!151289 rules!1846)))) e!1062803))))

(declare-fun b!1657517 () Bool)

(declare-fun e!1062802 () Bool)

(declare-fun tp!478878 () Bool)

(assert (=> b!1657517 (= e!1062802 (and e!1062800 tp!478878))))

(assert (=> b!1656681 (= tp!478788 e!1062802)))

(assert (= b!1657518 b!1657519))

(assert (= b!1657517 b!1657518))

(assert (= (and b!1656681 ((_ is Cons!18298) (t!151289 rules!1846))) b!1657517))

(declare-fun m!2013213 () Bool)

(assert (=> b!1657518 m!2013213))

(declare-fun m!2013215 () Bool)

(assert (=> b!1657518 m!2013215))

(declare-fun b_lambda!52037 () Bool)

(assert (= b_lambda!52031 (or (and b!1656682 b_free!45049 (= (toChars!4535 (transformation!3225 (h!23699 rules!1846))) (toChars!4535 (transformation!3225 (rule!5097 (h!23698 (t!151288 tokens!457))))))) (and b!1656685 b_free!45053 (= (toChars!4535 (transformation!3225 (rule!5097 (h!23698 tokens!457)))) (toChars!4535 (transformation!3225 (rule!5097 (h!23698 (t!151288 tokens!457))))))) (and b!1657454 b_free!45057) (and b!1657519 b_free!45065 (= (toChars!4535 (transformation!3225 (h!23699 (t!151289 rules!1846)))) (toChars!4535 (transformation!3225 (rule!5097 (h!23698 (t!151288 tokens!457))))))) b_lambda!52037)))

(declare-fun b_lambda!52039 () Bool)

(assert (= b_lambda!52027 (or (and b!1656682 b_free!45049 (= (toChars!4535 (transformation!3225 (h!23699 rules!1846))) (toChars!4535 (transformation!3225 (rule!5097 (h!23698 tokens!457)))))) (and b!1656685 b_free!45053) (and b!1657454 b_free!45057 (= (toChars!4535 (transformation!3225 (rule!5097 (h!23698 (t!151288 tokens!457))))) (toChars!4535 (transformation!3225 (rule!5097 (h!23698 tokens!457)))))) (and b!1657519 b_free!45065 (= (toChars!4535 (transformation!3225 (h!23699 (t!151289 rules!1846)))) (toChars!4535 (transformation!3225 (rule!5097 (h!23698 tokens!457)))))) b_lambda!52039)))

(declare-fun b_lambda!52041 () Bool)

(assert (= b_lambda!52029 (or (and b!1656682 b_free!45049 (= (toChars!4535 (transformation!3225 (h!23699 rules!1846))) (toChars!4535 (transformation!3225 (rule!5097 (h!23698 tokens!457)))))) (and b!1656685 b_free!45053) (and b!1657454 b_free!45057 (= (toChars!4535 (transformation!3225 (rule!5097 (h!23698 (t!151288 tokens!457))))) (toChars!4535 (transformation!3225 (rule!5097 (h!23698 tokens!457)))))) (and b!1657519 b_free!45065 (= (toChars!4535 (transformation!3225 (h!23699 (t!151289 rules!1846)))) (toChars!4535 (transformation!3225 (rule!5097 (h!23698 tokens!457)))))) b_lambda!52041)))

(check-sat (not b!1656808) (not b!1657426) (not d!499815) (not d!499975) (not b!1657517) (not b!1656849) (not bm!106143) (not b!1656807) (not b!1657413) (not d!499763) (not d!499851) (not bm!106139) (not d!499805) (not b!1657312) (not b!1657473) (not d!499787) (not b!1657409) (not d!499849) (not b!1657476) (not b!1657021) (not d!499759) (not b!1656784) (not b!1657317) (not b_next!45767) (not b!1657058) (not b!1656782) b_and!117593 (not d!499821) b_and!117631 (not bm!106146) (not d!499801) (not b!1657039) (not b!1657063) (not b!1656854) (not b!1657314) (not b_next!45769) (not b!1657453) (not b!1657047) (not d!499845) (not b_lambda!52037) (not b!1657487) (not bm!106142) (not b!1657423) (not d!499789) (not b!1657313) (not b!1656747) (not b!1657070) (not b!1656838) (not b!1657477) (not b!1656946) (not b!1656846) (not bm!106147) (not b!1657066) (not b!1657518) (not b!1656840) (not b!1657451) (not b!1657472) (not b!1657014) (not b_lambda!52041) (not b!1656864) (not b!1656912) (not b!1657478) (not b!1656931) (not b!1656746) (not d!499785) (not b!1656886) (not d!499743) (not b!1657318) (not bm!106163) (not b!1656942) b_and!117589 (not b!1656945) (not d!499827) (not d!499959) (not b_lambda!52039) (not b!1657055) (not d!499749) (not tb!94803) (not d!499761) (not b!1657050) (not b!1656855) (not d!499777) (not b!1656936) (not d!499955) (not b!1656913) (not d!499795) (not d!499753) (not b_next!45755) (not d!499757) (not b!1656943) (not b!1657424) (not b!1656885) (not d!499731) (not d!499767) (not b!1656882) (not b!1656811) (not b!1656939) (not b!1656877) (not d!499841) (not b!1657321) (not b!1656824) (not b!1657015) (not tb!94807) (not b!1657065) (not b!1656825) (not b!1656876) (not b!1657085) (not b!1656947) (not b!1657067) (not b!1656926) (not b!1656841) (not b!1656935) (not d!499819) b_and!117621 (not d!499857) (not b!1657405) (not b!1656871) (not b!1656911) (not b!1656916) (not d!499779) (not d!499769) (not b!1656915) (not b!1657427) (not d!499829) (not b!1657069) (not b!1656814) (not d!499755) (not b!1657408) (not b!1657056) (not b!1657041) (not b!1656839) (not b!1656810) (not b!1656948) (not d!499833) (not b!1656890) (not d!499831) (not d!499745) (not d!499771) (not d!499799) (not bm!106148) (not b!1657045) (not b!1657083) (not b!1656937) (not b!1657064) (not b!1657027) (not b!1657414) (not b!1657003) (not b!1657059) b_and!117623 (not d!499739) (not b!1656813) b_and!117629 (not d!499847) (not d!499685) (not b!1657082) (not d!499839) (not b!1657327) (not d!499715) (not d!499791) (not b_next!45759) (not b!1656938) (not b!1657051) (not b_next!45751) (not d!499741) (not b!1657040) (not b!1657474) (not b!1657052) (not b!1656924) (not b!1657315) b_and!117611 (not b!1656809) (not b!1656910) (not b!1657062) (not b!1657061) (not b!1657054) (not b!1656917) (not b!1657049) (not d!499803) (not b!1657046) (not d!499973) (not d!499837) (not b!1657452) (not d!499751) (not b!1656940) (not b!1656783) (not b!1657048) (not b!1656745) (not b!1657026) (not d!499781) (not b!1657042) (not d!499807) (not d!499747) b_and!117609 (not d!499823) (not b!1657002) (not b_next!45761) (not b_next!45757) tp_is_empty!7383 (not d!499735) (not b!1657013) (not b!1656883) (not b!1657030) (not d!499825) (not b!1656909) (not b_next!45753) (not d!499797) (not d!499809) (not b!1657071) (not d!499733) (not b!1657407) (not d!499737) (not d!499687) (not d!499793) (not d!499723))
(check-sat (not b_next!45767) (not b_next!45769) b_and!117589 (not b_next!45755) b_and!117621 b_and!117623 b_and!117629 (not b_next!45759) (not b_next!45751) b_and!117611 (not b_next!45753) b_and!117593 b_and!117631 b_and!117609 (not b_next!45761) (not b_next!45757))
