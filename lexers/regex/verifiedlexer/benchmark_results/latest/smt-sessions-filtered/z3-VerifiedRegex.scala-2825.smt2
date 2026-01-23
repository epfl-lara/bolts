; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!158634 () Bool)

(assert start!158634)

(declare-fun b!1649509 () Bool)

(declare-fun b_free!44839 () Bool)

(declare-fun b_next!45543 () Bool)

(assert (=> b!1649509 (= b_free!44839 (not b_next!45543))))

(declare-fun tp!477690 () Bool)

(declare-fun b_and!117149 () Bool)

(assert (=> b!1649509 (= tp!477690 b_and!117149)))

(declare-fun b_free!44841 () Bool)

(declare-fun b_next!45545 () Bool)

(assert (=> b!1649509 (= b_free!44841 (not b_next!45545))))

(declare-fun tp!477687 () Bool)

(declare-fun b_and!117151 () Bool)

(assert (=> b!1649509 (= tp!477687 b_and!117151)))

(declare-fun b!1649522 () Bool)

(declare-fun b_free!44843 () Bool)

(declare-fun b_next!45547 () Bool)

(assert (=> b!1649522 (= b_free!44843 (not b_next!45547))))

(declare-fun tp!477686 () Bool)

(declare-fun b_and!117153 () Bool)

(assert (=> b!1649522 (= tp!477686 b_and!117153)))

(declare-fun b_free!44845 () Bool)

(declare-fun b_next!45549 () Bool)

(assert (=> b!1649522 (= b_free!44845 (not b_next!45549))))

(declare-fun tp!477692 () Bool)

(declare-fun b_and!117155 () Bool)

(assert (=> b!1649522 (= tp!477692 b_and!117155)))

(declare-fun b!1649507 () Bool)

(declare-fun e!1057870 () Bool)

(declare-datatypes ((C!9252 0))(
  ( (C!9253 (val!5222 Int)) )
))
(declare-datatypes ((List!18279 0))(
  ( (Nil!18209) (Cons!18209 (h!23610 C!9252) (t!150804 List!18279)) )
))
(declare-fun lt!611595 () List!18279)

(declare-datatypes ((IArray!12145 0))(
  ( (IArray!12146 (innerList!6130 List!18279)) )
))
(declare-datatypes ((Conc!6070 0))(
  ( (Node!6070 (left!14593 Conc!6070) (right!14923 Conc!6070) (csize!12370 Int) (cheight!6281 Int)) (Leaf!8896 (xs!8906 IArray!12145) (csize!12371 Int)) (Empty!6070) )
))
(declare-datatypes ((BalanceConc!12084 0))(
  ( (BalanceConc!12085 (c!268209 Conc!6070)) )
))
(declare-fun lt!611597 () BalanceConc!12084)

(declare-fun head!3630 (BalanceConc!12084) C!9252)

(assert (=> b!1649507 (= e!1057870 (= lt!611595 (Cons!18209 (head!3630 lt!611597) Nil!18209)))))

(declare-fun b!1649508 () Bool)

(declare-fun res!739243 () Bool)

(declare-fun e!1057886 () Bool)

(assert (=> b!1649508 (=> res!739243 e!1057886)))

(declare-fun lt!611596 () List!18279)

(declare-datatypes ((List!18280 0))(
  ( (Nil!18210) (Cons!18210 (h!23611 (_ BitVec 16)) (t!150805 List!18280)) )
))
(declare-datatypes ((TokenValue!3301 0))(
  ( (FloatLiteralValue!6602 (text!23552 List!18280)) (TokenValueExt!3300 (__x!11904 Int)) (Broken!16505 (value!101160 List!18280)) (Object!3370) (End!3301) (Def!3301) (Underscore!3301) (Match!3301) (Else!3301) (Error!3301) (Case!3301) (If!3301) (Extends!3301) (Abstract!3301) (Class!3301) (Val!3301) (DelimiterValue!6602 (del!3361 List!18280)) (KeywordValue!3307 (value!101161 List!18280)) (CommentValue!6602 (value!101162 List!18280)) (WhitespaceValue!6602 (value!101163 List!18280)) (IndentationValue!3301 (value!101164 List!18280)) (String!20836) (Int32!3301) (Broken!16506 (value!101165 List!18280)) (Boolean!3302) (Unit!30314) (OperatorValue!3304 (op!3361 List!18280)) (IdentifierValue!6602 (value!101166 List!18280)) (IdentifierValue!6603 (value!101167 List!18280)) (WhitespaceValue!6603 (value!101168 List!18280)) (True!6602) (False!6602) (Broken!16507 (value!101169 List!18280)) (Broken!16508 (value!101170 List!18280)) (True!6603) (RightBrace!3301) (RightBracket!3301) (Colon!3301) (Null!3301) (Comma!3301) (LeftBracket!3301) (False!6603) (LeftBrace!3301) (ImaginaryLiteralValue!3301 (text!23553 List!18280)) (StringLiteralValue!9903 (value!101171 List!18280)) (EOFValue!3301 (value!101172 List!18280)) (IdentValue!3301 (value!101173 List!18280)) (DelimiterValue!6603 (value!101174 List!18280)) (DedentValue!3301 (value!101175 List!18280)) (NewLineValue!3301 (value!101176 List!18280)) (IntegerValue!9903 (value!101177 (_ BitVec 32)) (text!23554 List!18280)) (IntegerValue!9904 (value!101178 Int) (text!23555 List!18280)) (Times!3301) (Or!3301) (Equal!3301) (Minus!3301) (Broken!16509 (value!101179 List!18280)) (And!3301) (Div!3301) (LessEqual!3301) (Mod!3301) (Concat!7840) (Not!3301) (Plus!3301) (SpaceValue!3301 (value!101180 List!18280)) (IntegerValue!9905 (value!101181 Int) (text!23556 List!18280)) (StringLiteralValue!9904 (text!23557 List!18280)) (FloatLiteralValue!6603 (text!23558 List!18280)) (BytesLiteralValue!3301 (value!101182 List!18280)) (CommentValue!6603 (value!101183 List!18280)) (StringLiteralValue!9905 (value!101184 List!18280)) (ErrorTokenValue!3301 (msg!3362 List!18280)) )
))
(declare-datatypes ((Regex!4539 0))(
  ( (ElementMatch!4539 (c!268210 C!9252)) (Concat!7841 (regOne!9590 Regex!4539) (regTwo!9590 Regex!4539)) (EmptyExpr!4539) (Star!4539 (reg!4868 Regex!4539)) (EmptyLang!4539) (Union!4539 (regOne!9591 Regex!4539) (regTwo!9591 Regex!4539)) )
))
(declare-datatypes ((String!20837 0))(
  ( (String!20838 (value!101185 String)) )
))
(declare-datatypes ((TokenValueInjection!6262 0))(
  ( (TokenValueInjection!6263 (toValue!4658 Int) (toChars!4517 Int)) )
))
(declare-datatypes ((Rule!6222 0))(
  ( (Rule!6223 (regex!3211 Regex!4539) (tag!3491 String!20837) (isSeparator!3211 Bool) (transformation!3211 TokenValueInjection!6262)) )
))
(declare-datatypes ((List!18281 0))(
  ( (Nil!18211) (Cons!18211 (h!23612 Rule!6222) (t!150806 List!18281)) )
))
(declare-fun rules!1846 () List!18281)

(declare-datatypes ((LexerInterface!2840 0))(
  ( (LexerInterfaceExt!2837 (__x!11905 Int)) (Lexer!2838) )
))
(declare-fun thiss!17113 () LexerInterface!2840)

(declare-datatypes ((Token!5988 0))(
  ( (Token!5989 (value!101186 TokenValue!3301) (rule!5069 Rule!6222) (size!14498 Int) (originalCharacters!4025 List!18279)) )
))
(declare-datatypes ((List!18282 0))(
  ( (Nil!18212) (Cons!18212 (h!23613 Token!5988) (t!150807 List!18282)) )
))
(declare-datatypes ((IArray!12147 0))(
  ( (IArray!12148 (innerList!6131 List!18282)) )
))
(declare-datatypes ((Conc!6071 0))(
  ( (Node!6071 (left!14594 Conc!6071) (right!14924 Conc!6071) (csize!12372 Int) (cheight!6282 Int)) (Leaf!8897 (xs!8907 IArray!12147) (csize!12373 Int)) (Empty!6071) )
))
(declare-datatypes ((BalanceConc!12086 0))(
  ( (BalanceConc!12087 (c!268211 Conc!6071)) )
))
(declare-fun isEmpty!11238 (BalanceConc!12086) Bool)

(declare-datatypes ((tuple2!17882 0))(
  ( (tuple2!17883 (_1!10343 BalanceConc!12086) (_2!10343 BalanceConc!12084)) )
))
(declare-fun lex!1324 (LexerInterface!2840 List!18281 BalanceConc!12084) tuple2!17882)

(declare-fun seqFromList!2161 (List!18279) BalanceConc!12084)

(assert (=> b!1649508 (= res!739243 (isEmpty!11238 (_1!10343 (lex!1324 thiss!17113 rules!1846 (seqFromList!2161 lt!611596)))))))

(declare-fun e!1057878 () Bool)

(assert (=> b!1649509 (= e!1057878 (and tp!477690 tp!477687))))

(declare-fun e!1057871 () Bool)

(declare-fun tp!477693 () Bool)

(declare-fun b!1649510 () Bool)

(declare-fun inv!23566 (String!20837) Bool)

(declare-fun inv!23569 (TokenValueInjection!6262) Bool)

(assert (=> b!1649510 (= e!1057871 (and tp!477693 (inv!23566 (tag!3491 (h!23612 rules!1846))) (inv!23569 (transformation!3211 (h!23612 rules!1846))) e!1057878))))

(declare-fun b!1649511 () Bool)

(declare-fun res!739249 () Bool)

(declare-fun e!1057873 () Bool)

(assert (=> b!1649511 (=> (not res!739249) (not e!1057873))))

(declare-fun tokens!457 () List!18282)

(declare-fun tokensListTwoByTwoPredicateSeparableList!533 (LexerInterface!2840 List!18282 List!18281) Bool)

(assert (=> b!1649511 (= res!739249 (tokensListTwoByTwoPredicateSeparableList!533 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1649512 () Bool)

(declare-fun res!739257 () Bool)

(assert (=> b!1649512 (=> (not res!739257) (not e!1057873))))

(get-info :version)

(assert (=> b!1649512 (= res!739257 (and (not ((_ is Nil!18212) tokens!457)) (not ((_ is Nil!18212) (t!150807 tokens!457)))))))

(declare-fun b!1649513 () Bool)

(declare-fun res!739239 () Bool)

(assert (=> b!1649513 (=> (not res!739239) (not e!1057870))))

(declare-fun head!3631 (List!18279) C!9252)

(assert (=> b!1649513 (= res!739239 (= lt!611595 (Cons!18209 (head!3631 (originalCharacters!4025 (h!23613 (t!150807 tokens!457)))) Nil!18209)))))

(declare-fun e!1057876 () Bool)

(declare-fun b!1649514 () Bool)

(declare-datatypes ((tuple2!17884 0))(
  ( (tuple2!17885 (_1!10344 Token!5988) (_2!10344 BalanceConc!12084)) )
))
(declare-datatypes ((Option!3457 0))(
  ( (None!3456) (Some!3456 (v!24625 tuple2!17884)) )
))
(declare-fun isDefined!2812 (Option!3457) Bool)

(declare-fun maxPrefixZipperSequence!717 (LexerInterface!2840 List!18281 BalanceConc!12084) Option!3457)

(assert (=> b!1649514 (= e!1057876 (isDefined!2812 (maxPrefixZipperSequence!717 thiss!17113 rules!1846 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457))))))))

(assert (=> b!1649514 e!1057870))

(declare-fun res!739248 () Bool)

(assert (=> b!1649514 (=> (not res!739248) (not e!1057870))))

(assert (=> b!1649514 (= res!739248 (= lt!611596 (originalCharacters!4025 (h!23613 tokens!457))))))

(declare-fun e!1057869 () Bool)

(declare-fun tp!477694 () Bool)

(declare-fun e!1057880 () Bool)

(declare-fun b!1649515 () Bool)

(declare-fun inv!21 (TokenValue!3301) Bool)

(assert (=> b!1649515 (= e!1057880 (and (inv!21 (value!101186 (h!23613 tokens!457))) e!1057869 tp!477694))))

(declare-fun res!739246 () Bool)

(assert (=> start!158634 (=> (not res!739246) (not e!1057873))))

(assert (=> start!158634 (= res!739246 ((_ is Lexer!2838) thiss!17113))))

(assert (=> start!158634 e!1057873))

(assert (=> start!158634 true))

(declare-fun e!1057877 () Bool)

(assert (=> start!158634 e!1057877))

(declare-fun e!1057884 () Bool)

(assert (=> start!158634 e!1057884))

(declare-fun b!1649516 () Bool)

(declare-fun e!1057874 () Bool)

(assert (=> b!1649516 (= e!1057886 e!1057874)))

(declare-fun res!739250 () Bool)

(assert (=> b!1649516 (=> res!739250 e!1057874)))

(declare-datatypes ((tuple2!17886 0))(
  ( (tuple2!17887 (_1!10345 Token!5988) (_2!10345 List!18279)) )
))
(declare-datatypes ((Option!3458 0))(
  ( (None!3457) (Some!3457 (v!24626 tuple2!17886)) )
))
(declare-fun lt!611586 () Option!3458)

(declare-fun isDefined!2813 (Option!3458) Bool)

(assert (=> b!1649516 (= res!739250 (not (isDefined!2813 lt!611586)))))

(declare-datatypes ((Unit!30315 0))(
  ( (Unit!30316) )
))
(declare-fun lt!611601 () Unit!30315)

(declare-fun lt!611591 () List!18279)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!408 (LexerInterface!2840 List!18281 List!18279 List!18279) Unit!30315)

(assert (=> b!1649516 (= lt!611601 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!408 thiss!17113 rules!1846 lt!611596 lt!611591))))

(declare-fun b!1649517 () Bool)

(declare-fun e!1057885 () Bool)

(assert (=> b!1649517 (= e!1057874 e!1057885)))

(declare-fun res!739244 () Bool)

(assert (=> b!1649517 (=> res!739244 e!1057885)))

(declare-fun lt!611598 () Regex!4539)

(declare-fun lt!611594 () BalanceConc!12084)

(declare-fun lt!611599 () BalanceConc!12084)

(declare-fun prefixMatchZipperSequence!621 (Regex!4539 BalanceConc!12084) Bool)

(declare-fun ++!4921 (BalanceConc!12084 BalanceConc!12084) BalanceConc!12084)

(assert (=> b!1649517 (= res!739244 (prefixMatchZipperSequence!621 lt!611598 (++!4921 lt!611594 lt!611599)))))

(declare-fun singletonSeq!1694 (C!9252) BalanceConc!12084)

(declare-fun apply!4798 (BalanceConc!12084 Int) C!9252)

(declare-fun charsOf!1860 (Token!5988) BalanceConc!12084)

(assert (=> b!1649517 (= lt!611599 (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0)))))

(declare-fun rulesRegex!595 (LexerInterface!2840 List!18281) Regex!4539)

(assert (=> b!1649517 (= lt!611598 (rulesRegex!595 thiss!17113 rules!1846))))

(declare-fun tp!477689 () Bool)

(declare-fun e!1057883 () Bool)

(declare-fun b!1649518 () Bool)

(assert (=> b!1649518 (= e!1057869 (and tp!477689 (inv!23566 (tag!3491 (rule!5069 (h!23613 tokens!457)))) (inv!23569 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) e!1057883))))

(declare-fun b!1649519 () Bool)

(assert (=> b!1649519 (= e!1057885 e!1057876)))

(declare-fun res!739253 () Bool)

(assert (=> b!1649519 (=> res!739253 e!1057876)))

(declare-fun prefixMatch!456 (Regex!4539 List!18279) Bool)

(declare-fun ++!4922 (List!18279 List!18279) List!18279)

(assert (=> b!1649519 (= res!739253 (prefixMatch!456 lt!611598 (++!4922 lt!611596 lt!611595)))))

(declare-fun list!7241 (BalanceConc!12084) List!18279)

(assert (=> b!1649519 (= lt!611595 (list!7241 lt!611599))))

(declare-fun b!1649520 () Bool)

(declare-fun res!739256 () Bool)

(assert (=> b!1649520 (=> (not res!739256) (not e!1057873))))

(declare-fun rulesInvariant!2509 (LexerInterface!2840 List!18281) Bool)

(assert (=> b!1649520 (= res!739256 (rulesInvariant!2509 thiss!17113 rules!1846))))

(declare-fun tp!477688 () Bool)

(declare-fun b!1649521 () Bool)

(declare-fun inv!23570 (Token!5988) Bool)

(assert (=> b!1649521 (= e!1057884 (and (inv!23570 (h!23613 tokens!457)) e!1057880 tp!477688))))

(assert (=> b!1649522 (= e!1057883 (and tp!477686 tp!477692))))

(declare-fun b!1649523 () Bool)

(declare-fun res!739254 () Bool)

(declare-fun e!1057882 () Bool)

(assert (=> b!1649523 (=> res!739254 e!1057882)))

(declare-fun separableTokensPredicate!780 (LexerInterface!2840 Token!5988 Token!5988 List!18281) Bool)

(assert (=> b!1649523 (= res!739254 (not (separableTokensPredicate!780 thiss!17113 (h!23613 tokens!457) (h!23613 (t!150807 tokens!457)) rules!1846)))))

(declare-fun b!1649524 () Bool)

(declare-fun e!1057868 () Bool)

(declare-fun e!1057872 () Bool)

(assert (=> b!1649524 (= e!1057868 (not e!1057872))))

(declare-fun res!739255 () Bool)

(assert (=> b!1649524 (=> res!739255 e!1057872)))

(declare-fun lt!611580 () List!18282)

(assert (=> b!1649524 (= res!739255 (not (= lt!611580 (t!150807 tokens!457))))))

(declare-fun lt!611587 () tuple2!17882)

(declare-fun list!7242 (BalanceConc!12086) List!18282)

(assert (=> b!1649524 (= lt!611580 (list!7242 (_1!10343 lt!611587)))))

(declare-fun lt!611582 () Unit!30315)

(declare-fun theoremInvertabilityWhenTokenListSeparable!283 (LexerInterface!2840 List!18281 List!18282) Unit!30315)

(assert (=> b!1649524 (= lt!611582 (theoremInvertabilityWhenTokenListSeparable!283 thiss!17113 rules!1846 (t!150807 tokens!457)))))

(declare-fun lt!611593 () List!18279)

(declare-fun isPrefix!1469 (List!18279 List!18279) Bool)

(assert (=> b!1649524 (isPrefix!1469 lt!611596 lt!611593)))

(declare-fun lt!611588 () Unit!30315)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!994 (List!18279 List!18279) Unit!30315)

(assert (=> b!1649524 (= lt!611588 (lemmaConcatTwoListThenFirstIsPrefix!994 lt!611596 lt!611591))))

(declare-fun b!1649525 () Bool)

(assert (=> b!1649525 (= e!1057872 e!1057882)))

(declare-fun res!739242 () Bool)

(assert (=> b!1649525 (=> res!739242 e!1057882)))

(declare-fun lt!611590 () List!18282)

(declare-fun lt!611581 () List!18282)

(assert (=> b!1649525 (= res!739242 (or (not (= lt!611580 lt!611590)) (not (= lt!611590 lt!611581))))))

(declare-fun lt!611585 () BalanceConc!12086)

(assert (=> b!1649525 (= lt!611590 (list!7242 lt!611585))))

(assert (=> b!1649525 (= lt!611580 lt!611581)))

(declare-fun prepend!775 (BalanceConc!12086 Token!5988) BalanceConc!12086)

(declare-fun seqFromList!2162 (List!18282) BalanceConc!12086)

(assert (=> b!1649525 (= lt!611581 (list!7242 (prepend!775 (seqFromList!2162 (t!150807 (t!150807 tokens!457))) (h!23613 (t!150807 tokens!457)))))))

(declare-fun lt!611600 () Unit!30315)

(declare-fun seqFromListBHdTlConstructive!286 (Token!5988 List!18282 BalanceConc!12086) Unit!30315)

(assert (=> b!1649525 (= lt!611600 (seqFromListBHdTlConstructive!286 (h!23613 (t!150807 tokens!457)) (t!150807 (t!150807 tokens!457)) (_1!10343 lt!611587)))))

(declare-fun b!1649526 () Bool)

(declare-fun res!739251 () Bool)

(assert (=> b!1649526 (=> (not res!739251) (not e!1057870))))

(assert (=> b!1649526 (= res!739251 (= lt!611595 (Cons!18209 (head!3631 lt!611591) Nil!18209)))))

(declare-fun b!1649527 () Bool)

(assert (=> b!1649527 (= e!1057873 e!1057868)))

(declare-fun res!739247 () Bool)

(assert (=> b!1649527 (=> (not res!739247) (not e!1057868))))

(declare-fun lt!611579 () List!18279)

(assert (=> b!1649527 (= res!739247 (= lt!611579 lt!611593))))

(assert (=> b!1649527 (= lt!611593 (++!4922 lt!611596 lt!611591))))

(declare-fun lt!611602 () BalanceConc!12084)

(assert (=> b!1649527 (= lt!611579 (list!7241 lt!611602))))

(assert (=> b!1649527 (= lt!611591 (list!7241 lt!611597))))

(assert (=> b!1649527 (= lt!611596 (list!7241 lt!611594))))

(assert (=> b!1649527 (= lt!611594 (charsOf!1860 (h!23613 tokens!457)))))

(assert (=> b!1649527 (= lt!611587 (lex!1324 thiss!17113 rules!1846 lt!611597))))

(declare-fun print!1371 (LexerInterface!2840 BalanceConc!12086) BalanceConc!12084)

(assert (=> b!1649527 (= lt!611597 (print!1371 thiss!17113 lt!611585))))

(assert (=> b!1649527 (= lt!611585 (seqFromList!2162 (t!150807 tokens!457)))))

(assert (=> b!1649527 (= lt!611602 (print!1371 thiss!17113 (seqFromList!2162 tokens!457)))))

(declare-fun b!1649528 () Bool)

(declare-fun res!739241 () Bool)

(assert (=> b!1649528 (=> (not res!739241) (not e!1057873))))

(declare-fun rulesProduceEachTokenIndividuallyList!1042 (LexerInterface!2840 List!18281 List!18282) Bool)

(assert (=> b!1649528 (= res!739241 (rulesProduceEachTokenIndividuallyList!1042 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1649529 () Bool)

(declare-fun res!739240 () Bool)

(assert (=> b!1649529 (=> (not res!739240) (not e!1057873))))

(declare-fun isEmpty!11239 (List!18281) Bool)

(assert (=> b!1649529 (= res!739240 (not (isEmpty!11239 rules!1846)))))

(declare-fun b!1649530 () Bool)

(declare-fun res!739245 () Bool)

(assert (=> b!1649530 (=> res!739245 e!1057886)))

(declare-fun rulesProduceIndividualToken!1488 (LexerInterface!2840 List!18281 Token!5988) Bool)

(assert (=> b!1649530 (= res!739245 (not (rulesProduceIndividualToken!1488 thiss!17113 rules!1846 (h!23613 tokens!457))))))

(declare-fun b!1649531 () Bool)

(declare-fun tp!477691 () Bool)

(assert (=> b!1649531 (= e!1057877 (and e!1057871 tp!477691))))

(declare-fun b!1649532 () Bool)

(assert (=> b!1649532 (= e!1057882 e!1057886)))

(declare-fun res!739252 () Bool)

(assert (=> b!1649532 (=> res!739252 e!1057886)))

(declare-fun lt!611592 () List!18279)

(declare-fun lt!611583 () List!18279)

(assert (=> b!1649532 (= res!739252 (or (not (= lt!611583 lt!611592)) (not (= lt!611592 lt!611596)) (not (= lt!611583 lt!611596))))))

(declare-fun printList!953 (LexerInterface!2840 List!18282) List!18279)

(assert (=> b!1649532 (= lt!611592 (printList!953 thiss!17113 (Cons!18212 (h!23613 tokens!457) Nil!18212)))))

(declare-fun lt!611589 () BalanceConc!12084)

(assert (=> b!1649532 (= lt!611583 (list!7241 lt!611589))))

(declare-fun lt!611584 () BalanceConc!12086)

(declare-fun printTailRec!891 (LexerInterface!2840 BalanceConc!12086 Int BalanceConc!12084) BalanceConc!12084)

(assert (=> b!1649532 (= lt!611589 (printTailRec!891 thiss!17113 lt!611584 0 (BalanceConc!12085 Empty!6070)))))

(assert (=> b!1649532 (= lt!611589 (print!1371 thiss!17113 lt!611584))))

(declare-fun singletonSeq!1695 (Token!5988) BalanceConc!12086)

(assert (=> b!1649532 (= lt!611584 (singletonSeq!1695 (h!23613 tokens!457)))))

(declare-fun maxPrefix!1402 (LexerInterface!2840 List!18281 List!18279) Option!3458)

(assert (=> b!1649532 (= lt!611586 (maxPrefix!1402 thiss!17113 rules!1846 lt!611579))))

(assert (= (and start!158634 res!739246) b!1649529))

(assert (= (and b!1649529 res!739240) b!1649520))

(assert (= (and b!1649520 res!739256) b!1649528))

(assert (= (and b!1649528 res!739241) b!1649511))

(assert (= (and b!1649511 res!739249) b!1649512))

(assert (= (and b!1649512 res!739257) b!1649527))

(assert (= (and b!1649527 res!739247) b!1649524))

(assert (= (and b!1649524 (not res!739255)) b!1649525))

(assert (= (and b!1649525 (not res!739242)) b!1649523))

(assert (= (and b!1649523 (not res!739254)) b!1649532))

(assert (= (and b!1649532 (not res!739252)) b!1649530))

(assert (= (and b!1649530 (not res!739245)) b!1649508))

(assert (= (and b!1649508 (not res!739243)) b!1649516))

(assert (= (and b!1649516 (not res!739250)) b!1649517))

(assert (= (and b!1649517 (not res!739244)) b!1649519))

(assert (= (and b!1649519 (not res!739253)) b!1649514))

(assert (= (and b!1649514 res!739248) b!1649513))

(assert (= (and b!1649513 res!739239) b!1649526))

(assert (= (and b!1649526 res!739251) b!1649507))

(assert (= b!1649510 b!1649509))

(assert (= b!1649531 b!1649510))

(assert (= (and start!158634 ((_ is Cons!18211) rules!1846)) b!1649531))

(assert (= b!1649518 b!1649522))

(assert (= b!1649515 b!1649518))

(assert (= b!1649521 b!1649515))

(assert (= (and start!158634 ((_ is Cons!18212) tokens!457)) b!1649521))

(declare-fun m!1997799 () Bool)

(assert (=> b!1649521 m!1997799))

(declare-fun m!1997801 () Bool)

(assert (=> b!1649515 m!1997801))

(declare-fun m!1997803 () Bool)

(assert (=> b!1649523 m!1997803))

(declare-fun m!1997805 () Bool)

(assert (=> b!1649517 m!1997805))

(declare-fun m!1997807 () Bool)

(assert (=> b!1649517 m!1997807))

(declare-fun m!1997809 () Bool)

(assert (=> b!1649517 m!1997809))

(declare-fun m!1997811 () Bool)

(assert (=> b!1649517 m!1997811))

(declare-fun m!1997813 () Bool)

(assert (=> b!1649517 m!1997813))

(assert (=> b!1649517 m!1997811))

(declare-fun m!1997815 () Bool)

(assert (=> b!1649517 m!1997815))

(assert (=> b!1649517 m!1997807))

(assert (=> b!1649517 m!1997815))

(declare-fun m!1997817 () Bool)

(assert (=> b!1649520 m!1997817))

(declare-fun m!1997819 () Bool)

(assert (=> b!1649524 m!1997819))

(declare-fun m!1997821 () Bool)

(assert (=> b!1649524 m!1997821))

(declare-fun m!1997823 () Bool)

(assert (=> b!1649524 m!1997823))

(declare-fun m!1997825 () Bool)

(assert (=> b!1649524 m!1997825))

(declare-fun m!1997827 () Bool)

(assert (=> b!1649530 m!1997827))

(declare-fun m!1997829 () Bool)

(assert (=> b!1649507 m!1997829))

(declare-fun m!1997831 () Bool)

(assert (=> b!1649528 m!1997831))

(declare-fun m!1997833 () Bool)

(assert (=> b!1649525 m!1997833))

(declare-fun m!1997835 () Bool)

(assert (=> b!1649525 m!1997835))

(declare-fun m!1997837 () Bool)

(assert (=> b!1649525 m!1997837))

(declare-fun m!1997839 () Bool)

(assert (=> b!1649525 m!1997839))

(assert (=> b!1649525 m!1997835))

(declare-fun m!1997841 () Bool)

(assert (=> b!1649525 m!1997841))

(assert (=> b!1649525 m!1997839))

(declare-fun m!1997843 () Bool)

(assert (=> b!1649529 m!1997843))

(declare-fun m!1997845 () Bool)

(assert (=> b!1649526 m!1997845))

(declare-fun m!1997847 () Bool)

(assert (=> b!1649518 m!1997847))

(declare-fun m!1997849 () Bool)

(assert (=> b!1649518 m!1997849))

(declare-fun m!1997851 () Bool)

(assert (=> b!1649532 m!1997851))

(declare-fun m!1997853 () Bool)

(assert (=> b!1649532 m!1997853))

(declare-fun m!1997855 () Bool)

(assert (=> b!1649532 m!1997855))

(declare-fun m!1997857 () Bool)

(assert (=> b!1649532 m!1997857))

(declare-fun m!1997859 () Bool)

(assert (=> b!1649532 m!1997859))

(declare-fun m!1997861 () Bool)

(assert (=> b!1649532 m!1997861))

(declare-fun m!1997863 () Bool)

(assert (=> b!1649514 m!1997863))

(assert (=> b!1649514 m!1997863))

(declare-fun m!1997865 () Bool)

(assert (=> b!1649514 m!1997865))

(assert (=> b!1649514 m!1997865))

(declare-fun m!1997867 () Bool)

(assert (=> b!1649514 m!1997867))

(declare-fun m!1997869 () Bool)

(assert (=> b!1649516 m!1997869))

(declare-fun m!1997871 () Bool)

(assert (=> b!1649516 m!1997871))

(declare-fun m!1997873 () Bool)

(assert (=> b!1649513 m!1997873))

(declare-fun m!1997875 () Bool)

(assert (=> b!1649508 m!1997875))

(assert (=> b!1649508 m!1997875))

(declare-fun m!1997877 () Bool)

(assert (=> b!1649508 m!1997877))

(declare-fun m!1997879 () Bool)

(assert (=> b!1649508 m!1997879))

(declare-fun m!1997881 () Bool)

(assert (=> b!1649510 m!1997881))

(declare-fun m!1997883 () Bool)

(assert (=> b!1649510 m!1997883))

(declare-fun m!1997885 () Bool)

(assert (=> b!1649519 m!1997885))

(assert (=> b!1649519 m!1997885))

(declare-fun m!1997887 () Bool)

(assert (=> b!1649519 m!1997887))

(declare-fun m!1997889 () Bool)

(assert (=> b!1649519 m!1997889))

(declare-fun m!1997891 () Bool)

(assert (=> b!1649527 m!1997891))

(declare-fun m!1997893 () Bool)

(assert (=> b!1649527 m!1997893))

(declare-fun m!1997895 () Bool)

(assert (=> b!1649527 m!1997895))

(declare-fun m!1997897 () Bool)

(assert (=> b!1649527 m!1997897))

(declare-fun m!1997899 () Bool)

(assert (=> b!1649527 m!1997899))

(declare-fun m!1997901 () Bool)

(assert (=> b!1649527 m!1997901))

(declare-fun m!1997903 () Bool)

(assert (=> b!1649527 m!1997903))

(declare-fun m!1997905 () Bool)

(assert (=> b!1649527 m!1997905))

(declare-fun m!1997907 () Bool)

(assert (=> b!1649527 m!1997907))

(declare-fun m!1997909 () Bool)

(assert (=> b!1649527 m!1997909))

(assert (=> b!1649527 m!1997895))

(declare-fun m!1997911 () Bool)

(assert (=> b!1649511 m!1997911))

(check-sat (not b!1649527) (not b!1649513) (not b_next!45543) (not b!1649514) (not b_next!45545) (not b_next!45549) (not b!1649523) b_and!117151 (not b!1649518) b_and!117153 (not b!1649531) (not b!1649520) (not b!1649507) (not b!1649529) (not b!1649511) (not b!1649524) b_and!117155 (not b!1649510) (not b!1649525) (not b!1649508) (not b!1649530) (not b!1649515) (not b!1649526) (not b!1649516) b_and!117149 (not b!1649519) (not b!1649517) (not b!1649528) (not b!1649521) (not b_next!45547) (not b!1649532))
(check-sat b_and!117155 (not b_next!45543) (not b_next!45545) (not b_next!45549) b_and!117151 b_and!117149 b_and!117153 (not b_next!45547))
(get-model)

(declare-fun d!497228 () Bool)

(assert (=> d!497228 (= (inv!23566 (tag!3491 (h!23612 rules!1846))) (= (mod (str.len (value!101185 (tag!3491 (h!23612 rules!1846)))) 2) 0))))

(assert (=> b!1649510 d!497228))

(declare-fun d!497236 () Bool)

(declare-fun res!739273 () Bool)

(declare-fun e!1057895 () Bool)

(assert (=> d!497236 (=> (not res!739273) (not e!1057895))))

(declare-fun semiInverseModEq!1241 (Int Int) Bool)

(assert (=> d!497236 (= res!739273 (semiInverseModEq!1241 (toChars!4517 (transformation!3211 (h!23612 rules!1846))) (toValue!4658 (transformation!3211 (h!23612 rules!1846)))))))

(assert (=> d!497236 (= (inv!23569 (transformation!3211 (h!23612 rules!1846))) e!1057895)))

(declare-fun b!1649541 () Bool)

(declare-fun equivClasses!1182 (Int Int) Bool)

(assert (=> b!1649541 (= e!1057895 (equivClasses!1182 (toChars!4517 (transformation!3211 (h!23612 rules!1846))) (toValue!4658 (transformation!3211 (h!23612 rules!1846)))))))

(assert (= (and d!497236 res!739273) b!1649541))

(declare-fun m!1997941 () Bool)

(assert (=> d!497236 m!1997941))

(declare-fun m!1997943 () Bool)

(assert (=> b!1649541 m!1997943))

(assert (=> b!1649510 d!497236))

(declare-fun b!1649560 () Bool)

(declare-fun res!739290 () Bool)

(declare-fun e!1057902 () Bool)

(assert (=> b!1649560 (=> (not res!739290) (not e!1057902))))

(declare-fun lt!611619 () Option!3458)

(declare-fun get!5302 (Option!3458) tuple2!17886)

(assert (=> b!1649560 (= res!739290 (= (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!611619)))) (originalCharacters!4025 (_1!10345 (get!5302 lt!611619)))))))

(declare-fun d!497244 () Bool)

(declare-fun e!1057903 () Bool)

(assert (=> d!497244 e!1057903))

(declare-fun res!739294 () Bool)

(assert (=> d!497244 (=> res!739294 e!1057903)))

(declare-fun isEmpty!11244 (Option!3458) Bool)

(assert (=> d!497244 (= res!739294 (isEmpty!11244 lt!611619))))

(declare-fun e!1057904 () Option!3458)

(assert (=> d!497244 (= lt!611619 e!1057904)))

(declare-fun c!268215 () Bool)

(assert (=> d!497244 (= c!268215 (and ((_ is Cons!18211) rules!1846) ((_ is Nil!18211) (t!150806 rules!1846))))))

(declare-fun lt!611623 () Unit!30315)

(declare-fun lt!611622 () Unit!30315)

(assert (=> d!497244 (= lt!611623 lt!611622)))

(assert (=> d!497244 (isPrefix!1469 lt!611579 lt!611579)))

(declare-fun lemmaIsPrefixRefl!995 (List!18279 List!18279) Unit!30315)

(assert (=> d!497244 (= lt!611622 (lemmaIsPrefixRefl!995 lt!611579 lt!611579))))

(declare-fun rulesValidInductive!1017 (LexerInterface!2840 List!18281) Bool)

(assert (=> d!497244 (rulesValidInductive!1017 thiss!17113 rules!1846)))

(assert (=> d!497244 (= (maxPrefix!1402 thiss!17113 rules!1846 lt!611579) lt!611619)))

(declare-fun b!1649561 () Bool)

(declare-fun res!739292 () Bool)

(assert (=> b!1649561 (=> (not res!739292) (not e!1057902))))

(declare-fun size!14501 (List!18279) Int)

(assert (=> b!1649561 (= res!739292 (< (size!14501 (_2!10345 (get!5302 lt!611619))) (size!14501 lt!611579)))))

(declare-fun b!1649562 () Bool)

(declare-fun res!739293 () Bool)

(assert (=> b!1649562 (=> (not res!739293) (not e!1057902))))

(assert (=> b!1649562 (= res!739293 (= (++!4922 (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!611619)))) (_2!10345 (get!5302 lt!611619))) lt!611579))))

(declare-fun b!1649563 () Bool)

(declare-fun contains!3174 (List!18281 Rule!6222) Bool)

(assert (=> b!1649563 (= e!1057902 (contains!3174 rules!1846 (rule!5069 (_1!10345 (get!5302 lt!611619)))))))

(declare-fun b!1649564 () Bool)

(declare-fun res!739291 () Bool)

(assert (=> b!1649564 (=> (not res!739291) (not e!1057902))))

(declare-fun matchR!2032 (Regex!4539 List!18279) Bool)

(assert (=> b!1649564 (= res!739291 (matchR!2032 (regex!3211 (rule!5069 (_1!10345 (get!5302 lt!611619)))) (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!611619))))))))

(declare-fun b!1649565 () Bool)

(assert (=> b!1649565 (= e!1057903 e!1057902)))

(declare-fun res!739289 () Bool)

(assert (=> b!1649565 (=> (not res!739289) (not e!1057902))))

(assert (=> b!1649565 (= res!739289 (isDefined!2813 lt!611619))))

(declare-fun call!105839 () Option!3458)

(declare-fun bm!105834 () Bool)

(declare-fun maxPrefixOneRule!811 (LexerInterface!2840 Rule!6222 List!18279) Option!3458)

(assert (=> bm!105834 (= call!105839 (maxPrefixOneRule!811 thiss!17113 (h!23612 rules!1846) lt!611579))))

(declare-fun b!1649566 () Bool)

(assert (=> b!1649566 (= e!1057904 call!105839)))

(declare-fun b!1649567 () Bool)

(declare-fun lt!611620 () Option!3458)

(declare-fun lt!611621 () Option!3458)

(assert (=> b!1649567 (= e!1057904 (ite (and ((_ is None!3457) lt!611620) ((_ is None!3457) lt!611621)) None!3457 (ite ((_ is None!3457) lt!611621) lt!611620 (ite ((_ is None!3457) lt!611620) lt!611621 (ite (>= (size!14498 (_1!10345 (v!24626 lt!611620))) (size!14498 (_1!10345 (v!24626 lt!611621)))) lt!611620 lt!611621)))))))

(assert (=> b!1649567 (= lt!611620 call!105839)))

(assert (=> b!1649567 (= lt!611621 (maxPrefix!1402 thiss!17113 (t!150806 rules!1846) lt!611579))))

(declare-fun b!1649568 () Bool)

(declare-fun res!739288 () Bool)

(assert (=> b!1649568 (=> (not res!739288) (not e!1057902))))

(declare-fun apply!4804 (TokenValueInjection!6262 BalanceConc!12084) TokenValue!3301)

(assert (=> b!1649568 (= res!739288 (= (value!101186 (_1!10345 (get!5302 lt!611619))) (apply!4804 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!611619)))) (seqFromList!2161 (originalCharacters!4025 (_1!10345 (get!5302 lt!611619)))))))))

(assert (= (and d!497244 c!268215) b!1649566))

(assert (= (and d!497244 (not c!268215)) b!1649567))

(assert (= (or b!1649566 b!1649567) bm!105834))

(assert (= (and d!497244 (not res!739294)) b!1649565))

(assert (= (and b!1649565 res!739289) b!1649560))

(assert (= (and b!1649560 res!739290) b!1649561))

(assert (= (and b!1649561 res!739292) b!1649562))

(assert (= (and b!1649562 res!739293) b!1649568))

(assert (= (and b!1649568 res!739288) b!1649564))

(assert (= (and b!1649564 res!739291) b!1649563))

(declare-fun m!1997945 () Bool)

(assert (=> b!1649562 m!1997945))

(declare-fun m!1997947 () Bool)

(assert (=> b!1649562 m!1997947))

(assert (=> b!1649562 m!1997947))

(declare-fun m!1997949 () Bool)

(assert (=> b!1649562 m!1997949))

(assert (=> b!1649562 m!1997949))

(declare-fun m!1997951 () Bool)

(assert (=> b!1649562 m!1997951))

(assert (=> b!1649564 m!1997945))

(assert (=> b!1649564 m!1997947))

(assert (=> b!1649564 m!1997947))

(assert (=> b!1649564 m!1997949))

(assert (=> b!1649564 m!1997949))

(declare-fun m!1997953 () Bool)

(assert (=> b!1649564 m!1997953))

(declare-fun m!1997955 () Bool)

(assert (=> d!497244 m!1997955))

(declare-fun m!1997957 () Bool)

(assert (=> d!497244 m!1997957))

(declare-fun m!1997959 () Bool)

(assert (=> d!497244 m!1997959))

(declare-fun m!1997961 () Bool)

(assert (=> d!497244 m!1997961))

(assert (=> b!1649563 m!1997945))

(declare-fun m!1997963 () Bool)

(assert (=> b!1649563 m!1997963))

(assert (=> b!1649560 m!1997945))

(assert (=> b!1649560 m!1997947))

(assert (=> b!1649560 m!1997947))

(assert (=> b!1649560 m!1997949))

(declare-fun m!1997965 () Bool)

(assert (=> b!1649567 m!1997965))

(assert (=> b!1649568 m!1997945))

(declare-fun m!1997967 () Bool)

(assert (=> b!1649568 m!1997967))

(assert (=> b!1649568 m!1997967))

(declare-fun m!1997969 () Bool)

(assert (=> b!1649568 m!1997969))

(assert (=> b!1649561 m!1997945))

(declare-fun m!1997971 () Bool)

(assert (=> b!1649561 m!1997971))

(declare-fun m!1997973 () Bool)

(assert (=> b!1649561 m!1997973))

(declare-fun m!1997975 () Bool)

(assert (=> bm!105834 m!1997975))

(declare-fun m!1997977 () Bool)

(assert (=> b!1649565 m!1997977))

(assert (=> b!1649532 d!497244))

(declare-fun d!497246 () Bool)

(declare-fun list!7244 (Conc!6070) List!18279)

(assert (=> d!497246 (= (list!7241 lt!611589) (list!7244 (c!268209 lt!611589)))))

(declare-fun bs!396395 () Bool)

(assert (= bs!396395 d!497246))

(declare-fun m!1997979 () Bool)

(assert (=> bs!396395 m!1997979))

(assert (=> b!1649532 d!497246))

(declare-fun d!497248 () Bool)

(declare-fun lt!611693 () BalanceConc!12084)

(declare-fun printListTailRec!393 (LexerInterface!2840 List!18282 List!18279) List!18279)

(declare-fun dropList!673 (BalanceConc!12086 Int) List!18282)

(assert (=> d!497248 (= (list!7241 lt!611693) (printListTailRec!393 thiss!17113 (dropList!673 lt!611584 0) (list!7241 (BalanceConc!12085 Empty!6070))))))

(declare-fun e!1057916 () BalanceConc!12084)

(assert (=> d!497248 (= lt!611693 e!1057916)))

(declare-fun c!268221 () Bool)

(declare-fun size!14503 (BalanceConc!12086) Int)

(assert (=> d!497248 (= c!268221 (>= 0 (size!14503 lt!611584)))))

(declare-fun e!1057915 () Bool)

(assert (=> d!497248 e!1057915))

(declare-fun res!739303 () Bool)

(assert (=> d!497248 (=> (not res!739303) (not e!1057915))))

(assert (=> d!497248 (= res!739303 (>= 0 0))))

(assert (=> d!497248 (= (printTailRec!891 thiss!17113 lt!611584 0 (BalanceConc!12085 Empty!6070)) lt!611693)))

(declare-fun b!1649587 () Bool)

(assert (=> b!1649587 (= e!1057915 (<= 0 (size!14503 lt!611584)))))

(declare-fun b!1649588 () Bool)

(assert (=> b!1649588 (= e!1057916 (BalanceConc!12085 Empty!6070))))

(declare-fun b!1649589 () Bool)

(declare-fun apply!4805 (BalanceConc!12086 Int) Token!5988)

(assert (=> b!1649589 (= e!1057916 (printTailRec!891 thiss!17113 lt!611584 (+ 0 1) (++!4921 (BalanceConc!12085 Empty!6070) (charsOf!1860 (apply!4805 lt!611584 0)))))))

(declare-fun lt!611697 () List!18282)

(assert (=> b!1649589 (= lt!611697 (list!7242 lt!611584))))

(declare-fun lt!611692 () Unit!30315)

(declare-fun lemmaDropApply!600 (List!18282 Int) Unit!30315)

(assert (=> b!1649589 (= lt!611692 (lemmaDropApply!600 lt!611697 0))))

(declare-fun head!3634 (List!18282) Token!5988)

(declare-fun drop!912 (List!18282 Int) List!18282)

(declare-fun apply!4806 (List!18282 Int) Token!5988)

(assert (=> b!1649589 (= (head!3634 (drop!912 lt!611697 0)) (apply!4806 lt!611697 0))))

(declare-fun lt!611694 () Unit!30315)

(assert (=> b!1649589 (= lt!611694 lt!611692)))

(declare-fun lt!611696 () List!18282)

(assert (=> b!1649589 (= lt!611696 (list!7242 lt!611584))))

(declare-fun lt!611698 () Unit!30315)

(declare-fun lemmaDropTail!580 (List!18282 Int) Unit!30315)

(assert (=> b!1649589 (= lt!611698 (lemmaDropTail!580 lt!611696 0))))

(declare-fun tail!2442 (List!18282) List!18282)

(assert (=> b!1649589 (= (tail!2442 (drop!912 lt!611696 0)) (drop!912 lt!611696 (+ 0 1)))))

(declare-fun lt!611695 () Unit!30315)

(assert (=> b!1649589 (= lt!611695 lt!611698)))

(assert (= (and d!497248 res!739303) b!1649587))

(assert (= (and d!497248 c!268221) b!1649588))

(assert (= (and d!497248 (not c!268221)) b!1649589))

(declare-fun m!1998033 () Bool)

(assert (=> d!497248 m!1998033))

(declare-fun m!1998035 () Bool)

(assert (=> d!497248 m!1998035))

(declare-fun m!1998037 () Bool)

(assert (=> d!497248 m!1998037))

(assert (=> d!497248 m!1998033))

(declare-fun m!1998039 () Bool)

(assert (=> d!497248 m!1998039))

(declare-fun m!1998041 () Bool)

(assert (=> d!497248 m!1998041))

(assert (=> d!497248 m!1998039))

(assert (=> b!1649587 m!1998037))

(declare-fun m!1998043 () Bool)

(assert (=> b!1649589 m!1998043))

(declare-fun m!1998045 () Bool)

(assert (=> b!1649589 m!1998045))

(declare-fun m!1998047 () Bool)

(assert (=> b!1649589 m!1998047))

(declare-fun m!1998049 () Bool)

(assert (=> b!1649589 m!1998049))

(assert (=> b!1649589 m!1998045))

(declare-fun m!1998051 () Bool)

(assert (=> b!1649589 m!1998051))

(declare-fun m!1998053 () Bool)

(assert (=> b!1649589 m!1998053))

(declare-fun m!1998055 () Bool)

(assert (=> b!1649589 m!1998055))

(declare-fun m!1998057 () Bool)

(assert (=> b!1649589 m!1998057))

(declare-fun m!1998059 () Bool)

(assert (=> b!1649589 m!1998059))

(declare-fun m!1998061 () Bool)

(assert (=> b!1649589 m!1998061))

(declare-fun m!1998063 () Bool)

(assert (=> b!1649589 m!1998063))

(assert (=> b!1649589 m!1998047))

(assert (=> b!1649589 m!1998051))

(assert (=> b!1649589 m!1998061))

(declare-fun m!1998065 () Bool)

(assert (=> b!1649589 m!1998065))

(declare-fun m!1998067 () Bool)

(assert (=> b!1649589 m!1998067))

(assert (=> b!1649589 m!1998055))

(assert (=> b!1649532 d!497248))

(declare-fun d!497254 () Bool)

(declare-fun lt!611701 () BalanceConc!12084)

(assert (=> d!497254 (= (list!7241 lt!611701) (printList!953 thiss!17113 (list!7242 lt!611584)))))

(assert (=> d!497254 (= lt!611701 (printTailRec!891 thiss!17113 lt!611584 0 (BalanceConc!12085 Empty!6070)))))

(assert (=> d!497254 (= (print!1371 thiss!17113 lt!611584) lt!611701)))

(declare-fun bs!396397 () Bool)

(assert (= bs!396397 d!497254))

(declare-fun m!1998069 () Bool)

(assert (=> bs!396397 m!1998069))

(assert (=> bs!396397 m!1998065))

(assert (=> bs!396397 m!1998065))

(declare-fun m!1998071 () Bool)

(assert (=> bs!396397 m!1998071))

(assert (=> bs!396397 m!1997859))

(assert (=> b!1649532 d!497254))

(declare-fun d!497256 () Bool)

(declare-fun c!268224 () Bool)

(assert (=> d!497256 (= c!268224 ((_ is Cons!18212) (Cons!18212 (h!23613 tokens!457) Nil!18212)))))

(declare-fun e!1057919 () List!18279)

(assert (=> d!497256 (= (printList!953 thiss!17113 (Cons!18212 (h!23613 tokens!457) Nil!18212)) e!1057919)))

(declare-fun b!1649594 () Bool)

(assert (=> b!1649594 (= e!1057919 (++!4922 (list!7241 (charsOf!1860 (h!23613 (Cons!18212 (h!23613 tokens!457) Nil!18212)))) (printList!953 thiss!17113 (t!150807 (Cons!18212 (h!23613 tokens!457) Nil!18212)))))))

(declare-fun b!1649595 () Bool)

(assert (=> b!1649595 (= e!1057919 Nil!18209)))

(assert (= (and d!497256 c!268224) b!1649594))

(assert (= (and d!497256 (not c!268224)) b!1649595))

(declare-fun m!1998073 () Bool)

(assert (=> b!1649594 m!1998073))

(assert (=> b!1649594 m!1998073))

(declare-fun m!1998075 () Bool)

(assert (=> b!1649594 m!1998075))

(declare-fun m!1998077 () Bool)

(assert (=> b!1649594 m!1998077))

(assert (=> b!1649594 m!1998075))

(assert (=> b!1649594 m!1998077))

(declare-fun m!1998079 () Bool)

(assert (=> b!1649594 m!1998079))

(assert (=> b!1649532 d!497256))

(declare-fun d!497258 () Bool)

(declare-fun e!1057922 () Bool)

(assert (=> d!497258 e!1057922))

(declare-fun res!739306 () Bool)

(assert (=> d!497258 (=> (not res!739306) (not e!1057922))))

(declare-fun lt!611704 () BalanceConc!12086)

(assert (=> d!497258 (= res!739306 (= (list!7242 lt!611704) (Cons!18212 (h!23613 tokens!457) Nil!18212)))))

(declare-fun singleton!735 (Token!5988) BalanceConc!12086)

(assert (=> d!497258 (= lt!611704 (singleton!735 (h!23613 tokens!457)))))

(assert (=> d!497258 (= (singletonSeq!1695 (h!23613 tokens!457)) lt!611704)))

(declare-fun b!1649598 () Bool)

(declare-fun isBalanced!1861 (Conc!6071) Bool)

(assert (=> b!1649598 (= e!1057922 (isBalanced!1861 (c!268211 lt!611704)))))

(assert (= (and d!497258 res!739306) b!1649598))

(declare-fun m!1998081 () Bool)

(assert (=> d!497258 m!1998081))

(declare-fun m!1998083 () Bool)

(assert (=> d!497258 m!1998083))

(declare-fun m!1998085 () Bool)

(assert (=> b!1649598 m!1998085))

(assert (=> b!1649532 d!497258))

(declare-fun d!497260 () Bool)

(declare-fun res!739311 () Bool)

(declare-fun e!1057925 () Bool)

(assert (=> d!497260 (=> (not res!739311) (not e!1057925))))

(declare-fun isEmpty!11246 (List!18279) Bool)

(assert (=> d!497260 (= res!739311 (not (isEmpty!11246 (originalCharacters!4025 (h!23613 tokens!457)))))))

(assert (=> d!497260 (= (inv!23570 (h!23613 tokens!457)) e!1057925)))

(declare-fun b!1649603 () Bool)

(declare-fun res!739312 () Bool)

(assert (=> b!1649603 (=> (not res!739312) (not e!1057925))))

(declare-fun dynLambda!8159 (Int TokenValue!3301) BalanceConc!12084)

(assert (=> b!1649603 (= res!739312 (= (originalCharacters!4025 (h!23613 tokens!457)) (list!7241 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (value!101186 (h!23613 tokens!457))))))))

(declare-fun b!1649604 () Bool)

(assert (=> b!1649604 (= e!1057925 (= (size!14498 (h!23613 tokens!457)) (size!14501 (originalCharacters!4025 (h!23613 tokens!457)))))))

(assert (= (and d!497260 res!739311) b!1649603))

(assert (= (and b!1649603 res!739312) b!1649604))

(declare-fun b_lambda!51853 () Bool)

(assert (=> (not b_lambda!51853) (not b!1649603)))

(declare-fun t!150810 () Bool)

(declare-fun tb!94479 () Bool)

(assert (=> (and b!1649509 (= (toChars!4517 (transformation!3211 (h!23612 rules!1846))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457))))) t!150810) tb!94479))

(declare-fun b!1649609 () Bool)

(declare-fun e!1057928 () Bool)

(declare-fun tp!477697 () Bool)

(declare-fun inv!23573 (Conc!6070) Bool)

(assert (=> b!1649609 (= e!1057928 (and (inv!23573 (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (value!101186 (h!23613 tokens!457))))) tp!477697))))

(declare-fun result!114150 () Bool)

(declare-fun inv!23574 (BalanceConc!12084) Bool)

(assert (=> tb!94479 (= result!114150 (and (inv!23574 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (value!101186 (h!23613 tokens!457)))) e!1057928))))

(assert (= tb!94479 b!1649609))

(declare-fun m!1998087 () Bool)

(assert (=> b!1649609 m!1998087))

(declare-fun m!1998089 () Bool)

(assert (=> tb!94479 m!1998089))

(assert (=> b!1649603 t!150810))

(declare-fun b_and!117157 () Bool)

(assert (= b_and!117151 (and (=> t!150810 result!114150) b_and!117157)))

(declare-fun t!150812 () Bool)

(declare-fun tb!94481 () Bool)

(assert (=> (and b!1649522 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457))))) t!150812) tb!94481))

(declare-fun result!114154 () Bool)

(assert (= result!114154 result!114150))

(assert (=> b!1649603 t!150812))

(declare-fun b_and!117159 () Bool)

(assert (= b_and!117155 (and (=> t!150812 result!114154) b_and!117159)))

(declare-fun m!1998091 () Bool)

(assert (=> d!497260 m!1998091))

(declare-fun m!1998093 () Bool)

(assert (=> b!1649603 m!1998093))

(assert (=> b!1649603 m!1998093))

(declare-fun m!1998095 () Bool)

(assert (=> b!1649603 m!1998095))

(declare-fun m!1998097 () Bool)

(assert (=> b!1649604 m!1998097))

(assert (=> b!1649521 d!497260))

(declare-fun d!497262 () Bool)

(declare-fun res!739326 () Bool)

(declare-fun e!1057942 () Bool)

(assert (=> d!497262 (=> res!739326 e!1057942)))

(assert (=> d!497262 (= res!739326 (or (not ((_ is Cons!18212) tokens!457)) (not ((_ is Cons!18212) (t!150807 tokens!457)))))))

(assert (=> d!497262 (= (tokensListTwoByTwoPredicateSeparableList!533 thiss!17113 tokens!457 rules!1846) e!1057942)))

(declare-fun b!1649629 () Bool)

(declare-fun e!1057943 () Bool)

(assert (=> b!1649629 (= e!1057942 e!1057943)))

(declare-fun res!739327 () Bool)

(assert (=> b!1649629 (=> (not res!739327) (not e!1057943))))

(assert (=> b!1649629 (= res!739327 (separableTokensPredicate!780 thiss!17113 (h!23613 tokens!457) (h!23613 (t!150807 tokens!457)) rules!1846))))

(declare-fun lt!611726 () Unit!30315)

(declare-fun Unit!30324 () Unit!30315)

(assert (=> b!1649629 (= lt!611726 Unit!30324)))

(declare-fun size!14504 (BalanceConc!12084) Int)

(assert (=> b!1649629 (> (size!14504 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) 0)))

(declare-fun lt!611723 () Unit!30315)

(declare-fun Unit!30326 () Unit!30315)

(assert (=> b!1649629 (= lt!611723 Unit!30326)))

(assert (=> b!1649629 (rulesProduceIndividualToken!1488 thiss!17113 rules!1846 (h!23613 (t!150807 tokens!457)))))

(declare-fun lt!611727 () Unit!30315)

(declare-fun Unit!30328 () Unit!30315)

(assert (=> b!1649629 (= lt!611727 Unit!30328)))

(assert (=> b!1649629 (rulesProduceIndividualToken!1488 thiss!17113 rules!1846 (h!23613 tokens!457))))

(declare-fun lt!611722 () Unit!30315)

(declare-fun lt!611724 () Unit!30315)

(assert (=> b!1649629 (= lt!611722 lt!611724)))

(assert (=> b!1649629 (rulesProduceIndividualToken!1488 thiss!17113 rules!1846 (h!23613 (t!150807 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!606 (LexerInterface!2840 List!18281 List!18282 Token!5988) Unit!30315)

(assert (=> b!1649629 (= lt!611724 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!606 thiss!17113 rules!1846 tokens!457 (h!23613 (t!150807 tokens!457))))))

(declare-fun lt!611728 () Unit!30315)

(declare-fun lt!611725 () Unit!30315)

(assert (=> b!1649629 (= lt!611728 lt!611725)))

(assert (=> b!1649629 (rulesProduceIndividualToken!1488 thiss!17113 rules!1846 (h!23613 tokens!457))))

(assert (=> b!1649629 (= lt!611725 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!606 thiss!17113 rules!1846 tokens!457 (h!23613 tokens!457)))))

(declare-fun b!1649630 () Bool)

(assert (=> b!1649630 (= e!1057943 (tokensListTwoByTwoPredicateSeparableList!533 thiss!17113 (Cons!18212 (h!23613 (t!150807 tokens!457)) (t!150807 (t!150807 tokens!457))) rules!1846))))

(assert (= (and d!497262 (not res!739326)) b!1649629))

(assert (= (and b!1649629 res!739327) b!1649630))

(assert (=> b!1649629 m!1997803))

(assert (=> b!1649629 m!1997815))

(declare-fun m!1998119 () Bool)

(assert (=> b!1649629 m!1998119))

(declare-fun m!1998121 () Bool)

(assert (=> b!1649629 m!1998121))

(assert (=> b!1649629 m!1997815))

(declare-fun m!1998123 () Bool)

(assert (=> b!1649629 m!1998123))

(declare-fun m!1998125 () Bool)

(assert (=> b!1649629 m!1998125))

(assert (=> b!1649629 m!1997827))

(declare-fun m!1998127 () Bool)

(assert (=> b!1649630 m!1998127))

(assert (=> b!1649511 d!497262))

(declare-fun d!497272 () Bool)

(assert (=> d!497272 (= (separableTokensPredicate!780 thiss!17113 (h!23613 tokens!457) (h!23613 (t!150807 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!621 (rulesRegex!595 thiss!17113 rules!1846) (++!4921 (charsOf!1860 (h!23613 tokens!457)) (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0))))))))

(declare-fun bs!396400 () Bool)

(assert (= bs!396400 d!497272))

(assert (=> bs!396400 m!1997815))

(assert (=> bs!396400 m!1997893))

(assert (=> bs!396400 m!1997815))

(assert (=> bs!396400 m!1997807))

(assert (=> bs!396400 m!1997805))

(assert (=> bs!396400 m!1997807))

(assert (=> bs!396400 m!1997809))

(assert (=> bs!396400 m!1997893))

(assert (=> bs!396400 m!1997809))

(declare-fun m!1998151 () Bool)

(assert (=> bs!396400 m!1998151))

(assert (=> bs!396400 m!1997805))

(assert (=> bs!396400 m!1998151))

(declare-fun m!1998153 () Bool)

(assert (=> bs!396400 m!1998153))

(assert (=> b!1649523 d!497272))

(declare-fun d!497280 () Bool)

(declare-fun list!7246 (Conc!6071) List!18282)

(assert (=> d!497280 (= (list!7242 (_1!10343 lt!611587)) (list!7246 (c!268211 (_1!10343 lt!611587))))))

(declare-fun bs!396401 () Bool)

(assert (= bs!396401 d!497280))

(declare-fun m!1998155 () Bool)

(assert (=> bs!396401 m!1998155))

(assert (=> b!1649524 d!497280))

(declare-fun d!497282 () Bool)

(declare-fun e!1057994 () Bool)

(assert (=> d!497282 e!1057994))

(declare-fun res!739390 () Bool)

(assert (=> d!497282 (=> (not res!739390) (not e!1057994))))

(assert (=> d!497282 (= res!739390 (= (list!7242 (_1!10343 (lex!1324 thiss!17113 rules!1846 (print!1371 thiss!17113 (seqFromList!2162 (t!150807 tokens!457)))))) (t!150807 tokens!457)))))

(declare-fun lt!611899 () Unit!30315)

(declare-fun e!1057995 () Unit!30315)

(assert (=> d!497282 (= lt!611899 e!1057995)))

(declare-fun c!268242 () Bool)

(assert (=> d!497282 (= c!268242 (or ((_ is Nil!18212) (t!150807 tokens!457)) ((_ is Nil!18212) (t!150807 (t!150807 tokens!457)))))))

(assert (=> d!497282 (not (isEmpty!11239 rules!1846))))

(assert (=> d!497282 (= (theoremInvertabilityWhenTokenListSeparable!283 thiss!17113 rules!1846 (t!150807 tokens!457)) lt!611899)))

(declare-fun b!1649721 () Bool)

(declare-fun Unit!30339 () Unit!30315)

(assert (=> b!1649721 (= e!1057995 Unit!30339)))

(declare-fun b!1649722 () Bool)

(declare-fun Unit!30340 () Unit!30315)

(assert (=> b!1649722 (= e!1057995 Unit!30340)))

(declare-fun lt!611903 () BalanceConc!12084)

(assert (=> b!1649722 (= lt!611903 (print!1371 thiss!17113 (seqFromList!2162 (t!150807 tokens!457))))))

(declare-fun lt!611909 () BalanceConc!12084)

(assert (=> b!1649722 (= lt!611909 (print!1371 thiss!17113 (seqFromList!2162 (t!150807 (t!150807 tokens!457)))))))

(declare-fun lt!611892 () tuple2!17882)

(assert (=> b!1649722 (= lt!611892 (lex!1324 thiss!17113 rules!1846 lt!611909))))

(declare-fun lt!611894 () List!18279)

(assert (=> b!1649722 (= lt!611894 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))))

(declare-fun lt!611917 () List!18279)

(assert (=> b!1649722 (= lt!611917 (list!7241 lt!611909))))

(declare-fun lt!611910 () Unit!30315)

(assert (=> b!1649722 (= lt!611910 (lemmaConcatTwoListThenFirstIsPrefix!994 lt!611894 lt!611917))))

(assert (=> b!1649722 (isPrefix!1469 lt!611894 (++!4922 lt!611894 lt!611917))))

(declare-fun lt!611906 () Unit!30315)

(assert (=> b!1649722 (= lt!611906 lt!611910)))

(declare-fun lt!611897 () Unit!30315)

(assert (=> b!1649722 (= lt!611897 (theoremInvertabilityWhenTokenListSeparable!283 thiss!17113 rules!1846 (t!150807 (t!150807 tokens!457))))))

(declare-fun lt!611902 () Unit!30315)

(assert (=> b!1649722 (= lt!611902 (seqFromListBHdTlConstructive!286 (h!23613 (t!150807 (t!150807 tokens!457))) (t!150807 (t!150807 (t!150807 tokens!457))) (_1!10343 lt!611892)))))

(assert (=> b!1649722 (= (list!7242 (_1!10343 lt!611892)) (list!7242 (prepend!775 (seqFromList!2162 (t!150807 (t!150807 (t!150807 tokens!457)))) (h!23613 (t!150807 (t!150807 tokens!457))))))))

(declare-fun lt!611900 () Unit!30315)

(assert (=> b!1649722 (= lt!611900 lt!611902)))

(declare-fun lt!611913 () Option!3458)

(assert (=> b!1649722 (= lt!611913 (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 lt!611903)))))

(assert (=> b!1649722 (= (print!1371 thiss!17113 (singletonSeq!1695 (h!23613 (t!150807 tokens!457)))) (printTailRec!891 thiss!17113 (singletonSeq!1695 (h!23613 (t!150807 tokens!457))) 0 (BalanceConc!12085 Empty!6070)))))

(declare-fun lt!611893 () Unit!30315)

(declare-fun Unit!30341 () Unit!30315)

(assert (=> b!1649722 (= lt!611893 Unit!30341)))

(declare-fun lt!611904 () Unit!30315)

(assert (=> b!1649722 (= lt!611904 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!408 thiss!17113 rules!1846 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) (list!7241 lt!611909)))))

(assert (=> b!1649722 (= (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) (originalCharacters!4025 (h!23613 (t!150807 tokens!457))))))

(declare-fun lt!611907 () Unit!30315)

(declare-fun Unit!30342 () Unit!30315)

(assert (=> b!1649722 (= lt!611907 Unit!30342)))

(assert (=> b!1649722 (= (list!7241 (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 (t!150807 tokens!457)))) 0))) (Cons!18209 (head!3631 (originalCharacters!4025 (h!23613 (t!150807 (t!150807 tokens!457))))) Nil!18209))))

(declare-fun lt!611911 () Unit!30315)

(declare-fun Unit!30343 () Unit!30315)

(assert (=> b!1649722 (= lt!611911 Unit!30343)))

(assert (=> b!1649722 (= (list!7241 (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 (t!150807 tokens!457)))) 0))) (Cons!18209 (head!3631 (list!7241 lt!611909)) Nil!18209))))

(declare-fun lt!611912 () Unit!30315)

(declare-fun Unit!30344 () Unit!30315)

(assert (=> b!1649722 (= lt!611912 Unit!30344)))

(assert (=> b!1649722 (= (list!7241 (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 (t!150807 tokens!457)))) 0))) (Cons!18209 (head!3630 lt!611909) Nil!18209))))

(declare-fun lt!611914 () Unit!30315)

(declare-fun Unit!30345 () Unit!30315)

(assert (=> b!1649722 (= lt!611914 Unit!30345)))

(assert (=> b!1649722 (isDefined!2813 (maxPrefix!1402 thiss!17113 rules!1846 (originalCharacters!4025 (h!23613 (t!150807 tokens!457)))))))

(declare-fun lt!611916 () Unit!30315)

(declare-fun Unit!30346 () Unit!30315)

(assert (=> b!1649722 (= lt!611916 Unit!30346)))

(assert (=> b!1649722 (isDefined!2813 (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457))))))))

(declare-fun lt!611908 () Unit!30315)

(declare-fun Unit!30347 () Unit!30315)

(assert (=> b!1649722 (= lt!611908 Unit!30347)))

(declare-fun lt!611895 () Unit!30315)

(declare-fun Unit!30348 () Unit!30315)

(assert (=> b!1649722 (= lt!611895 Unit!30348)))

(assert (=> b!1649722 (= (_1!10345 (get!5302 (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457))))))) (h!23613 (t!150807 tokens!457)))))

(declare-fun lt!611896 () Unit!30315)

(declare-fun Unit!30349 () Unit!30315)

(assert (=> b!1649722 (= lt!611896 Unit!30349)))

(assert (=> b!1649722 (isEmpty!11246 (_2!10345 (get!5302 (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457))))))))))

(declare-fun lt!611901 () Unit!30315)

(declare-fun Unit!30350 () Unit!30315)

(assert (=> b!1649722 (= lt!611901 Unit!30350)))

(assert (=> b!1649722 (matchR!2032 (regex!3211 (rule!5069 (h!23613 (t!150807 tokens!457)))) (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))))

(declare-fun lt!611905 () Unit!30315)

(declare-fun Unit!30351 () Unit!30315)

(assert (=> b!1649722 (= lt!611905 Unit!30351)))

(assert (=> b!1649722 (= (rule!5069 (h!23613 (t!150807 tokens!457))) (rule!5069 (h!23613 (t!150807 tokens!457))))))

(declare-fun lt!611915 () Unit!30315)

(declare-fun Unit!30352 () Unit!30315)

(assert (=> b!1649722 (= lt!611915 Unit!30352)))

(declare-fun lt!611898 () Unit!30315)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!170 (LexerInterface!2840 List!18281 Token!5988 Rule!6222 List!18279) Unit!30315)

(assert (=> b!1649722 (= lt!611898 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!170 thiss!17113 rules!1846 (h!23613 (t!150807 tokens!457)) (rule!5069 (h!23613 (t!150807 tokens!457))) (list!7241 lt!611909)))))

(declare-fun b!1649723 () Bool)

(declare-fun isEmpty!11247 (BalanceConc!12084) Bool)

(assert (=> b!1649723 (= e!1057994 (isEmpty!11247 (_2!10343 (lex!1324 thiss!17113 rules!1846 (print!1371 thiss!17113 (seqFromList!2162 (t!150807 tokens!457)))))))))

(assert (= (and d!497282 c!268242) b!1649721))

(assert (= (and d!497282 (not c!268242)) b!1649722))

(assert (= (and d!497282 res!739390) b!1649723))

(assert (=> d!497282 m!1997905))

(declare-fun m!1998329 () Bool)

(assert (=> d!497282 m!1998329))

(declare-fun m!1998331 () Bool)

(assert (=> d!497282 m!1998331))

(declare-fun m!1998333 () Bool)

(assert (=> d!497282 m!1998333))

(assert (=> d!497282 m!1997843))

(assert (=> d!497282 m!1997905))

(assert (=> d!497282 m!1998329))

(assert (=> b!1649722 m!1997815))

(declare-fun m!1998335 () Bool)

(assert (=> b!1649722 m!1998335))

(declare-fun m!1998337 () Bool)

(assert (=> b!1649722 m!1998337))

(assert (=> b!1649722 m!1998335))

(declare-fun m!1998339 () Bool)

(assert (=> b!1649722 m!1998339))

(assert (=> b!1649722 m!1997839))

(declare-fun m!1998341 () Bool)

(assert (=> b!1649722 m!1998341))

(assert (=> b!1649722 m!1997839))

(declare-fun m!1998343 () Bool)

(assert (=> b!1649722 m!1998343))

(declare-fun m!1998345 () Bool)

(assert (=> b!1649722 m!1998345))

(declare-fun m!1998347 () Bool)

(assert (=> b!1649722 m!1998347))

(declare-fun m!1998349 () Bool)

(assert (=> b!1649722 m!1998349))

(declare-fun m!1998351 () Bool)

(assert (=> b!1649722 m!1998351))

(declare-fun m!1998353 () Bool)

(assert (=> b!1649722 m!1998353))

(declare-fun m!1998355 () Bool)

(assert (=> b!1649722 m!1998355))

(declare-fun m!1998357 () Bool)

(assert (=> b!1649722 m!1998357))

(declare-fun m!1998359 () Bool)

(assert (=> b!1649722 m!1998359))

(assert (=> b!1649722 m!1998345))

(declare-fun m!1998361 () Bool)

(assert (=> b!1649722 m!1998361))

(assert (=> b!1649722 m!1998357))

(declare-fun m!1998363 () Bool)

(assert (=> b!1649722 m!1998363))

(assert (=> b!1649722 m!1998349))

(declare-fun m!1998365 () Bool)

(assert (=> b!1649722 m!1998365))

(declare-fun m!1998367 () Bool)

(assert (=> b!1649722 m!1998367))

(declare-fun m!1998369 () Bool)

(assert (=> b!1649722 m!1998369))

(assert (=> b!1649722 m!1997905))

(declare-fun m!1998371 () Bool)

(assert (=> b!1649722 m!1998371))

(assert (=> b!1649722 m!1998345))

(declare-fun m!1998373 () Bool)

(assert (=> b!1649722 m!1998373))

(declare-fun m!1998375 () Bool)

(assert (=> b!1649722 m!1998375))

(declare-fun m!1998377 () Bool)

(assert (=> b!1649722 m!1998377))

(assert (=> b!1649722 m!1998363))

(declare-fun m!1998379 () Bool)

(assert (=> b!1649722 m!1998379))

(assert (=> b!1649722 m!1997905))

(assert (=> b!1649722 m!1998329))

(assert (=> b!1649722 m!1998359))

(declare-fun m!1998381 () Bool)

(assert (=> b!1649722 m!1998381))

(declare-fun m!1998383 () Bool)

(assert (=> b!1649722 m!1998383))

(declare-fun m!1998385 () Bool)

(assert (=> b!1649722 m!1998385))

(assert (=> b!1649722 m!1998369))

(assert (=> b!1649722 m!1998347))

(declare-fun m!1998387 () Bool)

(assert (=> b!1649722 m!1998387))

(assert (=> b!1649722 m!1998335))

(assert (=> b!1649722 m!1998351))

(declare-fun m!1998389 () Bool)

(assert (=> b!1649722 m!1998389))

(assert (=> b!1649722 m!1998367))

(declare-fun m!1998391 () Bool)

(assert (=> b!1649722 m!1998391))

(assert (=> b!1649722 m!1998343))

(assert (=> b!1649722 m!1998353))

(declare-fun m!1998393 () Bool)

(assert (=> b!1649722 m!1998393))

(assert (=> b!1649722 m!1997815))

(assert (=> b!1649722 m!1998343))

(assert (=> b!1649722 m!1998353))

(declare-fun m!1998395 () Bool)

(assert (=> b!1649722 m!1998395))

(declare-fun m!1998397 () Bool)

(assert (=> b!1649722 m!1998397))

(assert (=> b!1649722 m!1998353))

(declare-fun m!1998399 () Bool)

(assert (=> b!1649722 m!1998399))

(assert (=> b!1649722 m!1998343))

(declare-fun m!1998401 () Bool)

(assert (=> b!1649722 m!1998401))

(assert (=> b!1649723 m!1997905))

(assert (=> b!1649723 m!1997905))

(assert (=> b!1649723 m!1998329))

(assert (=> b!1649723 m!1998329))

(assert (=> b!1649723 m!1998331))

(declare-fun m!1998403 () Bool)

(assert (=> b!1649723 m!1998403))

(assert (=> b!1649524 d!497282))

(declare-fun b!1649732 () Bool)

(declare-fun e!1058004 () Bool)

(declare-fun e!1058003 () Bool)

(assert (=> b!1649732 (= e!1058004 e!1058003)))

(declare-fun res!739399 () Bool)

(assert (=> b!1649732 (=> (not res!739399) (not e!1058003))))

(assert (=> b!1649732 (= res!739399 (not ((_ is Nil!18209) lt!611593)))))

(declare-fun b!1649734 () Bool)

(declare-fun tail!2444 (List!18279) List!18279)

(assert (=> b!1649734 (= e!1058003 (isPrefix!1469 (tail!2444 lt!611596) (tail!2444 lt!611593)))))

(declare-fun b!1649733 () Bool)

(declare-fun res!739400 () Bool)

(assert (=> b!1649733 (=> (not res!739400) (not e!1058003))))

(assert (=> b!1649733 (= res!739400 (= (head!3631 lt!611596) (head!3631 lt!611593)))))

(declare-fun b!1649735 () Bool)

(declare-fun e!1058002 () Bool)

(assert (=> b!1649735 (= e!1058002 (>= (size!14501 lt!611593) (size!14501 lt!611596)))))

(declare-fun d!497314 () Bool)

(assert (=> d!497314 e!1058002))

(declare-fun res!739402 () Bool)

(assert (=> d!497314 (=> res!739402 e!1058002)))

(declare-fun lt!611920 () Bool)

(assert (=> d!497314 (= res!739402 (not lt!611920))))

(assert (=> d!497314 (= lt!611920 e!1058004)))

(declare-fun res!739401 () Bool)

(assert (=> d!497314 (=> res!739401 e!1058004)))

(assert (=> d!497314 (= res!739401 ((_ is Nil!18209) lt!611596))))

(assert (=> d!497314 (= (isPrefix!1469 lt!611596 lt!611593) lt!611920)))

(assert (= (and d!497314 (not res!739401)) b!1649732))

(assert (= (and b!1649732 res!739399) b!1649733))

(assert (= (and b!1649733 res!739400) b!1649734))

(assert (= (and d!497314 (not res!739402)) b!1649735))

(declare-fun m!1998405 () Bool)

(assert (=> b!1649734 m!1998405))

(declare-fun m!1998407 () Bool)

(assert (=> b!1649734 m!1998407))

(assert (=> b!1649734 m!1998405))

(assert (=> b!1649734 m!1998407))

(declare-fun m!1998409 () Bool)

(assert (=> b!1649734 m!1998409))

(declare-fun m!1998411 () Bool)

(assert (=> b!1649733 m!1998411))

(declare-fun m!1998413 () Bool)

(assert (=> b!1649733 m!1998413))

(declare-fun m!1998415 () Bool)

(assert (=> b!1649735 m!1998415))

(declare-fun m!1998417 () Bool)

(assert (=> b!1649735 m!1998417))

(assert (=> b!1649524 d!497314))

(declare-fun d!497316 () Bool)

(assert (=> d!497316 (isPrefix!1469 lt!611596 (++!4922 lt!611596 lt!611591))))

(declare-fun lt!611923 () Unit!30315)

(declare-fun choose!9904 (List!18279 List!18279) Unit!30315)

(assert (=> d!497316 (= lt!611923 (choose!9904 lt!611596 lt!611591))))

(assert (=> d!497316 (= (lemmaConcatTwoListThenFirstIsPrefix!994 lt!611596 lt!611591) lt!611923)))

(declare-fun bs!396407 () Bool)

(assert (= bs!396407 d!497316))

(assert (=> bs!396407 m!1997899))

(assert (=> bs!396407 m!1997899))

(declare-fun m!1998419 () Bool)

(assert (=> bs!396407 m!1998419))

(declare-fun m!1998421 () Bool)

(assert (=> bs!396407 m!1998421))

(assert (=> b!1649524 d!497316))

(declare-fun d!497318 () Bool)

(assert (=> d!497318 (= (head!3631 (originalCharacters!4025 (h!23613 (t!150807 tokens!457)))) (h!23610 (originalCharacters!4025 (h!23613 (t!150807 tokens!457)))))))

(assert (=> b!1649513 d!497318))

(declare-fun d!497320 () Bool)

(declare-fun isEmpty!11248 (Option!3457) Bool)

(assert (=> d!497320 (= (isDefined!2812 (maxPrefixZipperSequence!717 thiss!17113 rules!1846 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457))))) (not (isEmpty!11248 (maxPrefixZipperSequence!717 thiss!17113 rules!1846 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))))

(declare-fun bs!396408 () Bool)

(assert (= bs!396408 d!497320))

(assert (=> bs!396408 m!1997865))

(declare-fun m!1998423 () Bool)

(assert (=> bs!396408 m!1998423))

(assert (=> b!1649514 d!497320))

(declare-fun e!1058018 () Bool)

(declare-fun lt!611941 () Option!3457)

(declare-fun b!1649752 () Bool)

(declare-fun get!5303 (Option!3457) tuple2!17884)

(declare-fun maxPrefixZipper!341 (LexerInterface!2840 List!18281 List!18279) Option!3458)

(assert (=> b!1649752 (= e!1058018 (= (list!7241 (_2!10344 (get!5303 lt!611941))) (_2!10345 (get!5302 (maxPrefixZipper!341 thiss!17113 rules!1846 (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))))))

(declare-fun b!1649753 () Bool)

(declare-fun e!1058017 () Bool)

(assert (=> b!1649753 (= e!1058017 e!1058018)))

(declare-fun res!739420 () Bool)

(assert (=> b!1649753 (=> (not res!739420) (not e!1058018))))

(assert (=> b!1649753 (= res!739420 (= (_1!10344 (get!5303 lt!611941)) (_1!10345 (get!5302 (maxPrefixZipper!341 thiss!17113 rules!1846 (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))))))

(declare-fun b!1649754 () Bool)

(declare-fun e!1058020 () Option!3457)

(declare-fun call!105845 () Option!3457)

(assert (=> b!1649754 (= e!1058020 call!105845)))

(declare-fun e!1058021 () Bool)

(declare-fun b!1649755 () Bool)

(assert (=> b!1649755 (= e!1058021 (= (list!7241 (_2!10344 (get!5303 lt!611941))) (_2!10345 (get!5302 (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))))))

(declare-fun b!1649756 () Bool)

(declare-fun e!1058019 () Bool)

(declare-fun e!1058022 () Bool)

(assert (=> b!1649756 (= e!1058019 e!1058022)))

(declare-fun res!739415 () Bool)

(assert (=> b!1649756 (=> res!739415 e!1058022)))

(assert (=> b!1649756 (= res!739415 (not (isDefined!2812 lt!611941)))))

(declare-fun b!1649757 () Bool)

(declare-fun lt!611938 () Option!3457)

(declare-fun lt!611940 () Option!3457)

(assert (=> b!1649757 (= e!1058020 (ite (and ((_ is None!3456) lt!611938) ((_ is None!3456) lt!611940)) None!3456 (ite ((_ is None!3456) lt!611940) lt!611938 (ite ((_ is None!3456) lt!611938) lt!611940 (ite (>= (size!14498 (_1!10344 (v!24625 lt!611938))) (size!14498 (_1!10344 (v!24625 lt!611940)))) lt!611938 lt!611940)))))))

(assert (=> b!1649757 (= lt!611938 call!105845)))

(assert (=> b!1649757 (= lt!611940 (maxPrefixZipperSequence!717 thiss!17113 (t!150806 rules!1846) (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))

(declare-fun bm!105840 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!335 (LexerInterface!2840 Rule!6222 BalanceConc!12084) Option!3457)

(assert (=> bm!105840 (= call!105845 (maxPrefixOneRuleZipperSequence!335 thiss!17113 (h!23612 rules!1846) (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))

(declare-fun d!497322 () Bool)

(assert (=> d!497322 e!1058019))

(declare-fun res!739418 () Bool)

(assert (=> d!497322 (=> (not res!739418) (not e!1058019))))

(assert (=> d!497322 (= res!739418 (= (isDefined!2812 lt!611941) (isDefined!2813 (maxPrefixZipper!341 thiss!17113 rules!1846 (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457))))))))))

(assert (=> d!497322 (= lt!611941 e!1058020)))

(declare-fun c!268245 () Bool)

(assert (=> d!497322 (= c!268245 (and ((_ is Cons!18211) rules!1846) ((_ is Nil!18211) (t!150806 rules!1846))))))

(declare-fun lt!611943 () Unit!30315)

(declare-fun lt!611939 () Unit!30315)

(assert (=> d!497322 (= lt!611943 lt!611939)))

(declare-fun lt!611944 () List!18279)

(declare-fun lt!611942 () List!18279)

(assert (=> d!497322 (isPrefix!1469 lt!611944 lt!611942)))

(assert (=> d!497322 (= lt!611939 (lemmaIsPrefixRefl!995 lt!611944 lt!611942))))

(assert (=> d!497322 (= lt!611942 (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))

(assert (=> d!497322 (= lt!611944 (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))

(assert (=> d!497322 (rulesValidInductive!1017 thiss!17113 rules!1846)))

(assert (=> d!497322 (= (maxPrefixZipperSequence!717 thiss!17113 rules!1846 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))) lt!611941)))

(declare-fun b!1649758 () Bool)

(assert (=> b!1649758 (= e!1058022 e!1058021)))

(declare-fun res!739417 () Bool)

(assert (=> b!1649758 (=> (not res!739417) (not e!1058021))))

(assert (=> b!1649758 (= res!739417 (= (_1!10344 (get!5303 lt!611941)) (_1!10345 (get!5302 (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))))))

(declare-fun b!1649759 () Bool)

(declare-fun res!739416 () Bool)

(assert (=> b!1649759 (=> (not res!739416) (not e!1058019))))

(assert (=> b!1649759 (= res!739416 e!1058017)))

(declare-fun res!739419 () Bool)

(assert (=> b!1649759 (=> res!739419 e!1058017)))

(assert (=> b!1649759 (= res!739419 (not (isDefined!2812 lt!611941)))))

(assert (= (and d!497322 c!268245) b!1649754))

(assert (= (and d!497322 (not c!268245)) b!1649757))

(assert (= (or b!1649754 b!1649757) bm!105840))

(assert (= (and d!497322 res!739418) b!1649759))

(assert (= (and b!1649759 (not res!739419)) b!1649753))

(assert (= (and b!1649753 res!739420) b!1649752))

(assert (= (and b!1649759 res!739416) b!1649756))

(assert (= (and b!1649756 (not res!739415)) b!1649758))

(assert (= (and b!1649758 res!739417) b!1649755))

(declare-fun m!1998425 () Bool)

(assert (=> b!1649755 m!1998425))

(declare-fun m!1998427 () Bool)

(assert (=> b!1649755 m!1998427))

(declare-fun m!1998429 () Bool)

(assert (=> b!1649755 m!1998429))

(declare-fun m!1998431 () Bool)

(assert (=> b!1649755 m!1998431))

(assert (=> b!1649755 m!1998425))

(declare-fun m!1998433 () Bool)

(assert (=> b!1649755 m!1998433))

(assert (=> b!1649755 m!1997863))

(assert (=> b!1649755 m!1998431))

(assert (=> bm!105840 m!1997863))

(declare-fun m!1998435 () Bool)

(assert (=> bm!105840 m!1998435))

(assert (=> b!1649752 m!1998429))

(assert (=> b!1649752 m!1998431))

(declare-fun m!1998437 () Bool)

(assert (=> b!1649752 m!1998437))

(assert (=> b!1649752 m!1998433))

(assert (=> b!1649752 m!1997863))

(assert (=> b!1649752 m!1998431))

(assert (=> b!1649752 m!1998437))

(declare-fun m!1998439 () Bool)

(assert (=> b!1649752 m!1998439))

(assert (=> d!497322 m!1998431))

(assert (=> d!497322 m!1998437))

(declare-fun m!1998441 () Bool)

(assert (=> d!497322 m!1998441))

(assert (=> d!497322 m!1997961))

(assert (=> d!497322 m!1997863))

(assert (=> d!497322 m!1998431))

(assert (=> d!497322 m!1998437))

(declare-fun m!1998443 () Bool)

(assert (=> d!497322 m!1998443))

(declare-fun m!1998445 () Bool)

(assert (=> d!497322 m!1998445))

(declare-fun m!1998447 () Bool)

(assert (=> d!497322 m!1998447))

(assert (=> b!1649757 m!1997863))

(declare-fun m!1998449 () Bool)

(assert (=> b!1649757 m!1998449))

(assert (=> b!1649758 m!1998433))

(assert (=> b!1649758 m!1997863))

(assert (=> b!1649758 m!1998431))

(assert (=> b!1649758 m!1998431))

(assert (=> b!1649758 m!1998425))

(assert (=> b!1649758 m!1998425))

(assert (=> b!1649758 m!1998427))

(assert (=> b!1649759 m!1998441))

(assert (=> b!1649756 m!1998441))

(assert (=> b!1649753 m!1998433))

(assert (=> b!1649753 m!1997863))

(assert (=> b!1649753 m!1998431))

(assert (=> b!1649753 m!1998431))

(assert (=> b!1649753 m!1998437))

(assert (=> b!1649753 m!1998437))

(assert (=> b!1649753 m!1998439))

(assert (=> b!1649514 d!497322))

(declare-fun d!497324 () Bool)

(declare-fun fromListB!966 (List!18279) BalanceConc!12084)

(assert (=> d!497324 (= (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457))) (fromListB!966 (originalCharacters!4025 (h!23613 tokens!457))))))

(declare-fun bs!396409 () Bool)

(assert (= bs!396409 d!497324))

(declare-fun m!1998451 () Bool)

(assert (=> bs!396409 m!1998451))

(assert (=> b!1649514 d!497324))

(declare-fun d!497326 () Bool)

(declare-fun e!1058025 () Bool)

(assert (=> d!497326 e!1058025))

(declare-fun res!739423 () Bool)

(assert (=> d!497326 (=> (not res!739423) (not e!1058025))))

(declare-fun prepend!777 (Conc!6071 Token!5988) Conc!6071)

(assert (=> d!497326 (= res!739423 (isBalanced!1861 (prepend!777 (c!268211 (seqFromList!2162 (t!150807 (t!150807 tokens!457)))) (h!23613 (t!150807 tokens!457)))))))

(declare-fun lt!611947 () BalanceConc!12086)

(assert (=> d!497326 (= lt!611947 (BalanceConc!12087 (prepend!777 (c!268211 (seqFromList!2162 (t!150807 (t!150807 tokens!457)))) (h!23613 (t!150807 tokens!457)))))))

(assert (=> d!497326 (= (prepend!775 (seqFromList!2162 (t!150807 (t!150807 tokens!457))) (h!23613 (t!150807 tokens!457))) lt!611947)))

(declare-fun b!1649762 () Bool)

(assert (=> b!1649762 (= e!1058025 (= (list!7242 lt!611947) (Cons!18212 (h!23613 (t!150807 tokens!457)) (list!7242 (seqFromList!2162 (t!150807 (t!150807 tokens!457)))))))))

(assert (= (and d!497326 res!739423) b!1649762))

(declare-fun m!1998453 () Bool)

(assert (=> d!497326 m!1998453))

(assert (=> d!497326 m!1998453))

(declare-fun m!1998455 () Bool)

(assert (=> d!497326 m!1998455))

(declare-fun m!1998457 () Bool)

(assert (=> b!1649762 m!1998457))

(assert (=> b!1649762 m!1997839))

(declare-fun m!1998459 () Bool)

(assert (=> b!1649762 m!1998459))

(assert (=> b!1649525 d!497326))

(declare-fun d!497328 () Bool)

(assert (=> d!497328 (= (list!7242 (prepend!775 (seqFromList!2162 (t!150807 (t!150807 tokens!457))) (h!23613 (t!150807 tokens!457)))) (list!7246 (c!268211 (prepend!775 (seqFromList!2162 (t!150807 (t!150807 tokens!457))) (h!23613 (t!150807 tokens!457))))))))

(declare-fun bs!396410 () Bool)

(assert (= bs!396410 d!497328))

(declare-fun m!1998461 () Bool)

(assert (=> bs!396410 m!1998461))

(assert (=> b!1649525 d!497328))

(declare-fun d!497330 () Bool)

(assert (=> d!497330 (= (list!7242 lt!611585) (list!7246 (c!268211 lt!611585)))))

(declare-fun bs!396411 () Bool)

(assert (= bs!396411 d!497330))

(declare-fun m!1998463 () Bool)

(assert (=> bs!396411 m!1998463))

(assert (=> b!1649525 d!497330))

(declare-fun d!497332 () Bool)

(declare-fun fromListB!967 (List!18282) BalanceConc!12086)

(assert (=> d!497332 (= (seqFromList!2162 (t!150807 (t!150807 tokens!457))) (fromListB!967 (t!150807 (t!150807 tokens!457))))))

(declare-fun bs!396412 () Bool)

(assert (= bs!396412 d!497332))

(declare-fun m!1998465 () Bool)

(assert (=> bs!396412 m!1998465))

(assert (=> b!1649525 d!497332))

(declare-fun d!497334 () Bool)

(assert (=> d!497334 (= (list!7242 (_1!10343 lt!611587)) (list!7242 (prepend!775 (seqFromList!2162 (t!150807 (t!150807 tokens!457))) (h!23613 (t!150807 tokens!457)))))))

(declare-fun lt!611950 () Unit!30315)

(declare-fun choose!9905 (Token!5988 List!18282 BalanceConc!12086) Unit!30315)

(assert (=> d!497334 (= lt!611950 (choose!9905 (h!23613 (t!150807 tokens!457)) (t!150807 (t!150807 tokens!457)) (_1!10343 lt!611587)))))

(declare-fun $colon$colon!368 (List!18282 Token!5988) List!18282)

(assert (=> d!497334 (= (list!7242 (_1!10343 lt!611587)) (list!7242 (seqFromList!2162 ($colon$colon!368 (t!150807 (t!150807 tokens!457)) (h!23613 (t!150807 tokens!457))))))))

(assert (=> d!497334 (= (seqFromListBHdTlConstructive!286 (h!23613 (t!150807 tokens!457)) (t!150807 (t!150807 tokens!457)) (_1!10343 lt!611587)) lt!611950)))

(declare-fun bs!396413 () Bool)

(assert (= bs!396413 d!497334))

(declare-fun m!1998467 () Bool)

(assert (=> bs!396413 m!1998467))

(assert (=> bs!396413 m!1998467))

(declare-fun m!1998469 () Bool)

(assert (=> bs!396413 m!1998469))

(assert (=> bs!396413 m!1997835))

(assert (=> bs!396413 m!1997837))

(assert (=> bs!396413 m!1998469))

(declare-fun m!1998471 () Bool)

(assert (=> bs!396413 m!1998471))

(assert (=> bs!396413 m!1997839))

(declare-fun m!1998473 () Bool)

(assert (=> bs!396413 m!1998473))

(assert (=> bs!396413 m!1997839))

(assert (=> bs!396413 m!1997835))

(assert (=> bs!396413 m!1997819))

(assert (=> b!1649525 d!497334))

(declare-fun d!497336 () Bool)

(assert (=> d!497336 (= (head!3631 lt!611591) (h!23610 lt!611591))))

(assert (=> b!1649526 d!497336))

(declare-fun b!1649773 () Bool)

(declare-fun e!1058033 () Bool)

(declare-fun inv!16 (TokenValue!3301) Bool)

(assert (=> b!1649773 (= e!1058033 (inv!16 (value!101186 (h!23613 tokens!457))))))

(declare-fun b!1649774 () Bool)

(declare-fun e!1058034 () Bool)

(declare-fun inv!15 (TokenValue!3301) Bool)

(assert (=> b!1649774 (= e!1058034 (inv!15 (value!101186 (h!23613 tokens!457))))))

(declare-fun d!497338 () Bool)

(declare-fun c!268252 () Bool)

(assert (=> d!497338 (= c!268252 ((_ is IntegerValue!9903) (value!101186 (h!23613 tokens!457))))))

(assert (=> d!497338 (= (inv!21 (value!101186 (h!23613 tokens!457))) e!1058033)))

(declare-fun b!1649775 () Bool)

(declare-fun res!739426 () Bool)

(assert (=> b!1649775 (=> res!739426 e!1058034)))

(assert (=> b!1649775 (= res!739426 (not ((_ is IntegerValue!9905) (value!101186 (h!23613 tokens!457)))))))

(declare-fun e!1058032 () Bool)

(assert (=> b!1649775 (= e!1058032 e!1058034)))

(declare-fun b!1649776 () Bool)

(assert (=> b!1649776 (= e!1058033 e!1058032)))

(declare-fun c!268251 () Bool)

(assert (=> b!1649776 (= c!268251 ((_ is IntegerValue!9904) (value!101186 (h!23613 tokens!457))))))

(declare-fun b!1649777 () Bool)

(declare-fun inv!17 (TokenValue!3301) Bool)

(assert (=> b!1649777 (= e!1058032 (inv!17 (value!101186 (h!23613 tokens!457))))))

(assert (= (and d!497338 c!268252) b!1649773))

(assert (= (and d!497338 (not c!268252)) b!1649776))

(assert (= (and b!1649776 c!268251) b!1649777))

(assert (= (and b!1649776 (not c!268251)) b!1649775))

(assert (= (and b!1649775 (not res!739426)) b!1649774))

(declare-fun m!1998475 () Bool)

(assert (=> b!1649773 m!1998475))

(declare-fun m!1998477 () Bool)

(assert (=> b!1649774 m!1998477))

(declare-fun m!1998479 () Bool)

(assert (=> b!1649777 m!1998479))

(assert (=> b!1649515 d!497338))

(declare-fun d!497340 () Bool)

(assert (=> d!497340 (= (isDefined!2813 lt!611586) (not (isEmpty!11244 lt!611586)))))

(declare-fun bs!396414 () Bool)

(assert (= bs!396414 d!497340))

(declare-fun m!1998481 () Bool)

(assert (=> bs!396414 m!1998481))

(assert (=> b!1649516 d!497340))

(declare-fun b!1649843 () Bool)

(declare-fun e!1058073 () Unit!30315)

(declare-fun Unit!30353 () Unit!30315)

(assert (=> b!1649843 (= e!1058073 Unit!30353)))

(declare-fun b!1649841 () Bool)

(declare-fun lt!612092 () Token!5988)

(declare-fun e!1058074 () Bool)

(declare-datatypes ((Option!3460 0))(
  ( (None!3459) (Some!3459 (v!24634 Rule!6222)) )
))
(declare-fun get!5304 (Option!3460) Rule!6222)

(declare-fun getRuleFromTag!316 (LexerInterface!2840 List!18281 String!20837) Option!3460)

(assert (=> b!1649841 (= e!1058074 (= (rule!5069 lt!612092) (get!5304 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!612092))))))))

(declare-fun b!1649842 () Bool)

(declare-fun Unit!30354 () Unit!30315)

(assert (=> b!1649842 (= e!1058073 Unit!30354)))

(declare-fun lt!612088 () List!18279)

(assert (=> b!1649842 (= lt!612088 (++!4922 lt!611596 lt!611591))))

(declare-fun lt!612076 () Unit!30315)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!210 (LexerInterface!2840 Rule!6222 List!18281 List!18279) Unit!30315)

(assert (=> b!1649842 (= lt!612076 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!210 thiss!17113 (rule!5069 lt!612092) rules!1846 lt!612088))))

(assert (=> b!1649842 (isEmpty!11244 (maxPrefixOneRule!811 thiss!17113 (rule!5069 lt!612092) lt!612088))))

(declare-fun lt!612083 () Unit!30315)

(assert (=> b!1649842 (= lt!612083 lt!612076)))

(declare-fun lt!612091 () List!18279)

(assert (=> b!1649842 (= lt!612091 (list!7241 (charsOf!1860 lt!612092)))))

(declare-fun lt!612077 () Unit!30315)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!206 (LexerInterface!2840 Rule!6222 List!18279 List!18279) Unit!30315)

(assert (=> b!1649842 (= lt!612077 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!206 thiss!17113 (rule!5069 lt!612092) lt!612091 (++!4922 lt!611596 lt!611591)))))

(assert (=> b!1649842 (not (matchR!2032 (regex!3211 (rule!5069 lt!612092)) lt!612091))))

(declare-fun lt!612085 () Unit!30315)

(assert (=> b!1649842 (= lt!612085 lt!612077)))

(assert (=> b!1649842 false))

(declare-fun d!497342 () Bool)

(assert (=> d!497342 (isDefined!2813 (maxPrefix!1402 thiss!17113 rules!1846 (++!4922 lt!611596 lt!611591)))))

(declare-fun lt!612078 () Unit!30315)

(assert (=> d!497342 (= lt!612078 e!1058073)))

(declare-fun c!268268 () Bool)

(assert (=> d!497342 (= c!268268 (isEmpty!11244 (maxPrefix!1402 thiss!17113 rules!1846 (++!4922 lt!611596 lt!611591))))))

(declare-fun lt!612087 () Unit!30315)

(declare-fun lt!612082 () Unit!30315)

(assert (=> d!497342 (= lt!612087 lt!612082)))

(assert (=> d!497342 e!1058074))

(declare-fun res!739459 () Bool)

(assert (=> d!497342 (=> (not res!739459) (not e!1058074))))

(declare-fun isDefined!2815 (Option!3460) Bool)

(assert (=> d!497342 (= res!739459 (isDefined!2815 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!612092)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!316 (LexerInterface!2840 List!18281 List!18279 Token!5988) Unit!30315)

(assert (=> d!497342 (= lt!612082 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!316 thiss!17113 rules!1846 lt!611596 lt!612092))))

(declare-fun lt!612090 () Unit!30315)

(declare-fun lt!612084 () Unit!30315)

(assert (=> d!497342 (= lt!612090 lt!612084)))

(declare-fun lt!612079 () List!18279)

(assert (=> d!497342 (isPrefix!1469 lt!612079 (++!4922 lt!611596 lt!611591))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!202 (List!18279 List!18279 List!18279) Unit!30315)

(assert (=> d!497342 (= lt!612084 (lemmaPrefixStaysPrefixWhenAddingToSuffix!202 lt!612079 lt!611596 lt!611591))))

(assert (=> d!497342 (= lt!612079 (list!7241 (charsOf!1860 lt!612092)))))

(declare-fun lt!612081 () Unit!30315)

(declare-fun lt!612080 () Unit!30315)

(assert (=> d!497342 (= lt!612081 lt!612080)))

(declare-fun lt!612086 () List!18279)

(declare-fun lt!612089 () List!18279)

(assert (=> d!497342 (isPrefix!1469 lt!612086 (++!4922 lt!612086 lt!612089))))

(assert (=> d!497342 (= lt!612080 (lemmaConcatTwoListThenFirstIsPrefix!994 lt!612086 lt!612089))))

(assert (=> d!497342 (= lt!612089 (_2!10345 (get!5302 (maxPrefix!1402 thiss!17113 rules!1846 lt!611596))))))

(assert (=> d!497342 (= lt!612086 (list!7241 (charsOf!1860 lt!612092)))))

(assert (=> d!497342 (= lt!612092 (head!3634 (list!7242 (_1!10343 (lex!1324 thiss!17113 rules!1846 (seqFromList!2161 lt!611596))))))))

(assert (=> d!497342 (not (isEmpty!11239 rules!1846))))

(assert (=> d!497342 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!408 thiss!17113 rules!1846 lt!611596 lt!611591) lt!612078)))

(declare-fun b!1649840 () Bool)

(declare-fun res!739460 () Bool)

(assert (=> b!1649840 (=> (not res!739460) (not e!1058074))))

(assert (=> b!1649840 (= res!739460 (matchR!2032 (regex!3211 (get!5304 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!612092))))) (list!7241 (charsOf!1860 lt!612092))))))

(assert (= (and d!497342 res!739459) b!1649840))

(assert (= (and b!1649840 res!739460) b!1649841))

(assert (= (and d!497342 c!268268) b!1649842))

(assert (= (and d!497342 (not c!268268)) b!1649843))

(declare-fun m!1998639 () Bool)

(assert (=> b!1649841 m!1998639))

(assert (=> b!1649841 m!1998639))

(declare-fun m!1998641 () Bool)

(assert (=> b!1649841 m!1998641))

(assert (=> b!1649842 m!1997899))

(declare-fun m!1998643 () Bool)

(assert (=> b!1649842 m!1998643))

(declare-fun m!1998645 () Bool)

(assert (=> b!1649842 m!1998645))

(assert (=> b!1649842 m!1998645))

(declare-fun m!1998647 () Bool)

(assert (=> b!1649842 m!1998647))

(declare-fun m!1998649 () Bool)

(assert (=> b!1649842 m!1998649))

(declare-fun m!1998651 () Bool)

(assert (=> b!1649842 m!1998651))

(declare-fun m!1998653 () Bool)

(assert (=> b!1649842 m!1998653))

(declare-fun m!1998655 () Bool)

(assert (=> b!1649842 m!1998655))

(assert (=> b!1649842 m!1997899))

(assert (=> b!1649842 m!1998649))

(declare-fun m!1998657 () Bool)

(assert (=> d!497342 m!1998657))

(declare-fun m!1998659 () Bool)

(assert (=> d!497342 m!1998659))

(declare-fun m!1998661 () Bool)

(assert (=> d!497342 m!1998661))

(declare-fun m!1998663 () Bool)

(assert (=> d!497342 m!1998663))

(assert (=> d!497342 m!1998645))

(assert (=> d!497342 m!1997843))

(assert (=> d!497342 m!1998645))

(assert (=> d!497342 m!1998647))

(assert (=> d!497342 m!1998639))

(declare-fun m!1998665 () Bool)

(assert (=> d!497342 m!1998665))

(assert (=> d!497342 m!1997899))

(assert (=> d!497342 m!1998657))

(assert (=> d!497342 m!1998639))

(declare-fun m!1998667 () Bool)

(assert (=> d!497342 m!1998667))

(assert (=> d!497342 m!1997875))

(assert (=> d!497342 m!1997877))

(assert (=> d!497342 m!1997899))

(declare-fun m!1998669 () Bool)

(assert (=> d!497342 m!1998669))

(declare-fun m!1998671 () Bool)

(assert (=> d!497342 m!1998671))

(declare-fun m!1998673 () Bool)

(assert (=> d!497342 m!1998673))

(declare-fun m!1998675 () Bool)

(assert (=> d!497342 m!1998675))

(declare-fun m!1998677 () Bool)

(assert (=> d!497342 m!1998677))

(assert (=> d!497342 m!1998661))

(assert (=> d!497342 m!1997899))

(declare-fun m!1998679 () Bool)

(assert (=> d!497342 m!1998679))

(assert (=> d!497342 m!1998669))

(declare-fun m!1998681 () Bool)

(assert (=> d!497342 m!1998681))

(assert (=> d!497342 m!1998669))

(declare-fun m!1998683 () Bool)

(assert (=> d!497342 m!1998683))

(assert (=> d!497342 m!1997875))

(assert (=> d!497342 m!1998671))

(assert (=> b!1649840 m!1998645))

(assert (=> b!1649840 m!1998639))

(assert (=> b!1649840 m!1998641))

(assert (=> b!1649840 m!1998647))

(declare-fun m!1998685 () Bool)

(assert (=> b!1649840 m!1998685))

(assert (=> b!1649840 m!1998645))

(assert (=> b!1649840 m!1998647))

(assert (=> b!1649840 m!1998639))

(assert (=> b!1649516 d!497342))

(declare-fun d!497376 () Bool)

(declare-fun lt!612093 () BalanceConc!12084)

(assert (=> d!497376 (= (list!7241 lt!612093) (printList!953 thiss!17113 (list!7242 (seqFromList!2162 tokens!457))))))

(assert (=> d!497376 (= lt!612093 (printTailRec!891 thiss!17113 (seqFromList!2162 tokens!457) 0 (BalanceConc!12085 Empty!6070)))))

(assert (=> d!497376 (= (print!1371 thiss!17113 (seqFromList!2162 tokens!457)) lt!612093)))

(declare-fun bs!396423 () Bool)

(assert (= bs!396423 d!497376))

(declare-fun m!1998687 () Bool)

(assert (=> bs!396423 m!1998687))

(assert (=> bs!396423 m!1997895))

(declare-fun m!1998689 () Bool)

(assert (=> bs!396423 m!1998689))

(assert (=> bs!396423 m!1998689))

(declare-fun m!1998691 () Bool)

(assert (=> bs!396423 m!1998691))

(assert (=> bs!396423 m!1997895))

(declare-fun m!1998693 () Bool)

(assert (=> bs!396423 m!1998693))

(assert (=> b!1649527 d!497376))

(declare-fun d!497378 () Bool)

(declare-fun lt!612094 () BalanceConc!12084)

(assert (=> d!497378 (= (list!7241 lt!612094) (printList!953 thiss!17113 (list!7242 lt!611585)))))

(assert (=> d!497378 (= lt!612094 (printTailRec!891 thiss!17113 lt!611585 0 (BalanceConc!12085 Empty!6070)))))

(assert (=> d!497378 (= (print!1371 thiss!17113 lt!611585) lt!612094)))

(declare-fun bs!396424 () Bool)

(assert (= bs!396424 d!497378))

(declare-fun m!1998695 () Bool)

(assert (=> bs!396424 m!1998695))

(assert (=> bs!396424 m!1997841))

(assert (=> bs!396424 m!1997841))

(declare-fun m!1998697 () Bool)

(assert (=> bs!396424 m!1998697))

(declare-fun m!1998699 () Bool)

(assert (=> bs!396424 m!1998699))

(assert (=> b!1649527 d!497378))

(declare-fun d!497380 () Bool)

(assert (=> d!497380 (= (list!7241 lt!611602) (list!7244 (c!268209 lt!611602)))))

(declare-fun bs!396425 () Bool)

(assert (= bs!396425 d!497380))

(declare-fun m!1998701 () Bool)

(assert (=> bs!396425 m!1998701))

(assert (=> b!1649527 d!497380))

(declare-fun d!497382 () Bool)

(assert (=> d!497382 (= (list!7241 lt!611597) (list!7244 (c!268209 lt!611597)))))

(declare-fun bs!396426 () Bool)

(assert (= bs!396426 d!497382))

(declare-fun m!1998703 () Bool)

(assert (=> bs!396426 m!1998703))

(assert (=> b!1649527 d!497382))

(declare-fun b!1649858 () Bool)

(declare-fun res!739472 () Bool)

(declare-fun e!1058087 () Bool)

(assert (=> b!1649858 (=> (not res!739472) (not e!1058087))))

(declare-fun lt!612099 () tuple2!17882)

(declare-datatypes ((tuple2!17890 0))(
  ( (tuple2!17891 (_1!10347 List!18282) (_2!10347 List!18279)) )
))
(declare-fun lexList!871 (LexerInterface!2840 List!18281 List!18279) tuple2!17890)

(assert (=> b!1649858 (= res!739472 (= (list!7242 (_1!10343 lt!612099)) (_1!10347 (lexList!871 thiss!17113 rules!1846 (list!7241 lt!611597)))))))

(declare-fun b!1649859 () Bool)

(declare-fun e!1058086 () Bool)

(assert (=> b!1649859 (= e!1058086 (= (_2!10343 lt!612099) lt!611597))))

(declare-fun b!1649860 () Bool)

(declare-fun e!1058085 () Bool)

(assert (=> b!1649860 (= e!1058086 e!1058085)))

(declare-fun res!739471 () Bool)

(assert (=> b!1649860 (= res!739471 (< (size!14504 (_2!10343 lt!612099)) (size!14504 lt!611597)))))

(assert (=> b!1649860 (=> (not res!739471) (not e!1058085))))

(declare-fun b!1649861 () Bool)

(assert (=> b!1649861 (= e!1058087 (= (list!7241 (_2!10343 lt!612099)) (_2!10347 (lexList!871 thiss!17113 rules!1846 (list!7241 lt!611597)))))))

(declare-fun b!1649862 () Bool)

(assert (=> b!1649862 (= e!1058085 (not (isEmpty!11238 (_1!10343 lt!612099))))))

(declare-fun d!497384 () Bool)

(assert (=> d!497384 e!1058087))

(declare-fun res!739473 () Bool)

(assert (=> d!497384 (=> (not res!739473) (not e!1058087))))

(assert (=> d!497384 (= res!739473 e!1058086)))

(declare-fun c!268271 () Bool)

(assert (=> d!497384 (= c!268271 (> (size!14503 (_1!10343 lt!612099)) 0))))

(declare-fun lexTailRecV2!594 (LexerInterface!2840 List!18281 BalanceConc!12084 BalanceConc!12084 BalanceConc!12084 BalanceConc!12086) tuple2!17882)

(assert (=> d!497384 (= lt!612099 (lexTailRecV2!594 thiss!17113 rules!1846 lt!611597 (BalanceConc!12085 Empty!6070) lt!611597 (BalanceConc!12087 Empty!6071)))))

(assert (=> d!497384 (= (lex!1324 thiss!17113 rules!1846 lt!611597) lt!612099)))

(assert (= (and d!497384 c!268271) b!1649860))

(assert (= (and d!497384 (not c!268271)) b!1649859))

(assert (= (and b!1649860 res!739471) b!1649862))

(assert (= (and d!497384 res!739473) b!1649858))

(assert (= (and b!1649858 res!739472) b!1649861))

(declare-fun m!1998705 () Bool)

(assert (=> b!1649858 m!1998705))

(assert (=> b!1649858 m!1997891))

(assert (=> b!1649858 m!1997891))

(declare-fun m!1998707 () Bool)

(assert (=> b!1649858 m!1998707))

(declare-fun m!1998709 () Bool)

(assert (=> b!1649861 m!1998709))

(assert (=> b!1649861 m!1997891))

(assert (=> b!1649861 m!1997891))

(assert (=> b!1649861 m!1998707))

(declare-fun m!1998711 () Bool)

(assert (=> b!1649860 m!1998711))

(declare-fun m!1998713 () Bool)

(assert (=> b!1649860 m!1998713))

(declare-fun m!1998715 () Bool)

(assert (=> d!497384 m!1998715))

(declare-fun m!1998717 () Bool)

(assert (=> d!497384 m!1998717))

(declare-fun m!1998719 () Bool)

(assert (=> b!1649862 m!1998719))

(assert (=> b!1649527 d!497384))

(declare-fun d!497386 () Bool)

(assert (=> d!497386 (= (list!7241 lt!611594) (list!7244 (c!268209 lt!611594)))))

(declare-fun bs!396427 () Bool)

(assert (= bs!396427 d!497386))

(declare-fun m!1998721 () Bool)

(assert (=> bs!396427 m!1998721))

(assert (=> b!1649527 d!497386))

(declare-fun d!497388 () Bool)

(assert (=> d!497388 (= (seqFromList!2162 tokens!457) (fromListB!967 tokens!457))))

(declare-fun bs!396428 () Bool)

(assert (= bs!396428 d!497388))

(declare-fun m!1998723 () Bool)

(assert (=> bs!396428 m!1998723))

(assert (=> b!1649527 d!497388))

(declare-fun b!1649874 () Bool)

(declare-fun lt!612102 () List!18279)

(declare-fun e!1058093 () Bool)

(assert (=> b!1649874 (= e!1058093 (or (not (= lt!611591 Nil!18209)) (= lt!612102 lt!611596)))))

(declare-fun b!1649871 () Bool)

(declare-fun e!1058092 () List!18279)

(assert (=> b!1649871 (= e!1058092 lt!611591)))

(declare-fun d!497390 () Bool)

(assert (=> d!497390 e!1058093))

(declare-fun res!739478 () Bool)

(assert (=> d!497390 (=> (not res!739478) (not e!1058093))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2529 (List!18279) (InoxSet C!9252))

(assert (=> d!497390 (= res!739478 (= (content!2529 lt!612102) ((_ map or) (content!2529 lt!611596) (content!2529 lt!611591))))))

(assert (=> d!497390 (= lt!612102 e!1058092)))

(declare-fun c!268274 () Bool)

(assert (=> d!497390 (= c!268274 ((_ is Nil!18209) lt!611596))))

(assert (=> d!497390 (= (++!4922 lt!611596 lt!611591) lt!612102)))

(declare-fun b!1649872 () Bool)

(assert (=> b!1649872 (= e!1058092 (Cons!18209 (h!23610 lt!611596) (++!4922 (t!150804 lt!611596) lt!611591)))))

(declare-fun b!1649873 () Bool)

(declare-fun res!739479 () Bool)

(assert (=> b!1649873 (=> (not res!739479) (not e!1058093))))

(assert (=> b!1649873 (= res!739479 (= (size!14501 lt!612102) (+ (size!14501 lt!611596) (size!14501 lt!611591))))))

(assert (= (and d!497390 c!268274) b!1649871))

(assert (= (and d!497390 (not c!268274)) b!1649872))

(assert (= (and d!497390 res!739478) b!1649873))

(assert (= (and b!1649873 res!739479) b!1649874))

(declare-fun m!1998725 () Bool)

(assert (=> d!497390 m!1998725))

(declare-fun m!1998727 () Bool)

(assert (=> d!497390 m!1998727))

(declare-fun m!1998729 () Bool)

(assert (=> d!497390 m!1998729))

(declare-fun m!1998731 () Bool)

(assert (=> b!1649872 m!1998731))

(declare-fun m!1998733 () Bool)

(assert (=> b!1649873 m!1998733))

(assert (=> b!1649873 m!1998417))

(declare-fun m!1998735 () Bool)

(assert (=> b!1649873 m!1998735))

(assert (=> b!1649527 d!497390))

(declare-fun d!497392 () Bool)

(declare-fun lt!612105 () BalanceConc!12084)

(assert (=> d!497392 (= (list!7241 lt!612105) (originalCharacters!4025 (h!23613 tokens!457)))))

(assert (=> d!497392 (= lt!612105 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (value!101186 (h!23613 tokens!457))))))

(assert (=> d!497392 (= (charsOf!1860 (h!23613 tokens!457)) lt!612105)))

(declare-fun b_lambda!51861 () Bool)

(assert (=> (not b_lambda!51861) (not d!497392)))

(assert (=> d!497392 t!150810))

(declare-fun b_and!117173 () Bool)

(assert (= b_and!117157 (and (=> t!150810 result!114150) b_and!117173)))

(assert (=> d!497392 t!150812))

(declare-fun b_and!117175 () Bool)

(assert (= b_and!117159 (and (=> t!150812 result!114154) b_and!117175)))

(declare-fun m!1998737 () Bool)

(assert (=> d!497392 m!1998737))

(assert (=> d!497392 m!1998093))

(assert (=> b!1649527 d!497392))

(declare-fun d!497394 () Bool)

(assert (=> d!497394 (= (seqFromList!2162 (t!150807 tokens!457)) (fromListB!967 (t!150807 tokens!457)))))

(declare-fun bs!396429 () Bool)

(assert (= bs!396429 d!497394))

(declare-fun m!1998739 () Bool)

(assert (=> bs!396429 m!1998739))

(assert (=> b!1649527 d!497394))

(declare-fun b!1649940 () Bool)

(declare-fun e!1058142 () Bool)

(assert (=> b!1649940 (= e!1058142 true)))

(declare-fun b!1649939 () Bool)

(declare-fun e!1058141 () Bool)

(assert (=> b!1649939 (= e!1058141 e!1058142)))

(declare-fun b!1649938 () Bool)

(declare-fun e!1058140 () Bool)

(assert (=> b!1649938 (= e!1058140 e!1058141)))

(declare-fun d!497396 () Bool)

(assert (=> d!497396 e!1058140))

(assert (= b!1649939 b!1649940))

(assert (= b!1649938 b!1649939))

(assert (= (and d!497396 ((_ is Cons!18211) rules!1846)) b!1649938))

(declare-fun lambda!67661 () Int)

(declare-fun order!10871 () Int)

(declare-fun order!10873 () Int)

(declare-fun dynLambda!8163 (Int Int) Int)

(declare-fun dynLambda!8164 (Int Int) Int)

(assert (=> b!1649940 (< (dynLambda!8163 order!10871 (toValue!4658 (transformation!3211 (h!23612 rules!1846)))) (dynLambda!8164 order!10873 lambda!67661))))

(declare-fun order!10875 () Int)

(declare-fun dynLambda!8165 (Int Int) Int)

(assert (=> b!1649940 (< (dynLambda!8165 order!10875 (toChars!4517 (transformation!3211 (h!23612 rules!1846)))) (dynLambda!8164 order!10873 lambda!67661))))

(assert (=> d!497396 true))

(declare-fun lt!612131 () Bool)

(declare-fun forall!4146 (List!18282 Int) Bool)

(assert (=> d!497396 (= lt!612131 (forall!4146 tokens!457 lambda!67661))))

(declare-fun e!1058133 () Bool)

(assert (=> d!497396 (= lt!612131 e!1058133)))

(declare-fun res!739507 () Bool)

(assert (=> d!497396 (=> res!739507 e!1058133)))

(assert (=> d!497396 (= res!739507 (not ((_ is Cons!18212) tokens!457)))))

(assert (=> d!497396 (not (isEmpty!11239 rules!1846))))

(assert (=> d!497396 (= (rulesProduceEachTokenIndividuallyList!1042 thiss!17113 rules!1846 tokens!457) lt!612131)))

(declare-fun b!1649928 () Bool)

(declare-fun e!1058132 () Bool)

(assert (=> b!1649928 (= e!1058133 e!1058132)))

(declare-fun res!739506 () Bool)

(assert (=> b!1649928 (=> (not res!739506) (not e!1058132))))

(assert (=> b!1649928 (= res!739506 (rulesProduceIndividualToken!1488 thiss!17113 rules!1846 (h!23613 tokens!457)))))

(declare-fun b!1649929 () Bool)

(assert (=> b!1649929 (= e!1058132 (rulesProduceEachTokenIndividuallyList!1042 thiss!17113 rules!1846 (t!150807 tokens!457)))))

(assert (= (and d!497396 (not res!739507)) b!1649928))

(assert (= (and b!1649928 res!739506) b!1649929))

(declare-fun m!1998799 () Bool)

(assert (=> d!497396 m!1998799))

(assert (=> d!497396 m!1997843))

(assert (=> b!1649928 m!1997827))

(declare-fun m!1998801 () Bool)

(assert (=> b!1649929 m!1998801))

(assert (=> b!1649528 d!497396))

(declare-fun d!497412 () Bool)

(declare-fun e!1058151 () Bool)

(assert (=> d!497412 e!1058151))

(declare-fun res!739519 () Bool)

(assert (=> d!497412 (=> (not res!739519) (not e!1058151))))

(declare-fun lt!612140 () BalanceConc!12084)

(assert (=> d!497412 (= res!739519 (= (list!7241 lt!612140) (Cons!18209 (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0) Nil!18209)))))

(declare-fun singleton!736 (C!9252) BalanceConc!12084)

(assert (=> d!497412 (= lt!612140 (singleton!736 (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0)))))

(assert (=> d!497412 (= (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0)) lt!612140)))

(declare-fun b!1649954 () Bool)

(declare-fun isBalanced!1862 (Conc!6070) Bool)

(assert (=> b!1649954 (= e!1058151 (isBalanced!1862 (c!268209 lt!612140)))))

(assert (= (and d!497412 res!739519) b!1649954))

(declare-fun m!1998803 () Bool)

(assert (=> d!497412 m!1998803))

(assert (=> d!497412 m!1997807))

(declare-fun m!1998805 () Bool)

(assert (=> d!497412 m!1998805))

(declare-fun m!1998807 () Bool)

(assert (=> b!1649954 m!1998807))

(assert (=> b!1649517 d!497412))

(declare-fun b!1649964 () Bool)

(declare-fun res!739528 () Bool)

(declare-fun e!1058154 () Bool)

(assert (=> b!1649964 (=> (not res!739528) (not e!1058154))))

(declare-fun height!941 (Conc!6070) Int)

(declare-fun ++!4924 (Conc!6070 Conc!6070) Conc!6070)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1649964 (= res!739528 (<= (height!941 (++!4924 (c!268209 lt!611594) (c!268209 lt!611599))) (+ (max!0 (height!941 (c!268209 lt!611594)) (height!941 (c!268209 lt!611599))) 1)))))

(declare-fun lt!612143 () BalanceConc!12084)

(declare-fun b!1649966 () Bool)

(assert (=> b!1649966 (= e!1058154 (= (list!7241 lt!612143) (++!4922 (list!7241 lt!611594) (list!7241 lt!611599))))))

(declare-fun b!1649963 () Bool)

(declare-fun res!739529 () Bool)

(assert (=> b!1649963 (=> (not res!739529) (not e!1058154))))

(assert (=> b!1649963 (= res!739529 (isBalanced!1862 (++!4924 (c!268209 lt!611594) (c!268209 lt!611599))))))

(declare-fun b!1649965 () Bool)

(declare-fun res!739531 () Bool)

(assert (=> b!1649965 (=> (not res!739531) (not e!1058154))))

(assert (=> b!1649965 (= res!739531 (>= (height!941 (++!4924 (c!268209 lt!611594) (c!268209 lt!611599))) (max!0 (height!941 (c!268209 lt!611594)) (height!941 (c!268209 lt!611599)))))))

(declare-fun d!497414 () Bool)

(assert (=> d!497414 e!1058154))

(declare-fun res!739530 () Bool)

(assert (=> d!497414 (=> (not res!739530) (not e!1058154))))

(declare-fun appendAssocInst!463 (Conc!6070 Conc!6070) Bool)

(assert (=> d!497414 (= res!739530 (appendAssocInst!463 (c!268209 lt!611594) (c!268209 lt!611599)))))

(assert (=> d!497414 (= lt!612143 (BalanceConc!12085 (++!4924 (c!268209 lt!611594) (c!268209 lt!611599))))))

(assert (=> d!497414 (= (++!4921 lt!611594 lt!611599) lt!612143)))

(assert (= (and d!497414 res!739530) b!1649963))

(assert (= (and b!1649963 res!739529) b!1649964))

(assert (= (and b!1649964 res!739528) b!1649965))

(assert (= (and b!1649965 res!739531) b!1649966))

(declare-fun m!1998825 () Bool)

(assert (=> b!1649965 m!1998825))

(declare-fun m!1998827 () Bool)

(assert (=> b!1649965 m!1998827))

(declare-fun m!1998829 () Bool)

(assert (=> b!1649965 m!1998829))

(assert (=> b!1649965 m!1998827))

(assert (=> b!1649965 m!1998825))

(declare-fun m!1998831 () Bool)

(assert (=> b!1649965 m!1998831))

(assert (=> b!1649965 m!1998829))

(declare-fun m!1998833 () Bool)

(assert (=> b!1649965 m!1998833))

(declare-fun m!1998835 () Bool)

(assert (=> b!1649966 m!1998835))

(assert (=> b!1649966 m!1997903))

(assert (=> b!1649966 m!1997889))

(assert (=> b!1649966 m!1997903))

(assert (=> b!1649966 m!1997889))

(declare-fun m!1998837 () Bool)

(assert (=> b!1649966 m!1998837))

(assert (=> b!1649963 m!1998829))

(assert (=> b!1649963 m!1998829))

(declare-fun m!1998839 () Bool)

(assert (=> b!1649963 m!1998839))

(declare-fun m!1998841 () Bool)

(assert (=> d!497414 m!1998841))

(assert (=> d!497414 m!1998829))

(assert (=> b!1649964 m!1998825))

(assert (=> b!1649964 m!1998827))

(assert (=> b!1649964 m!1998829))

(assert (=> b!1649964 m!1998827))

(assert (=> b!1649964 m!1998825))

(assert (=> b!1649964 m!1998831))

(assert (=> b!1649964 m!1998829))

(assert (=> b!1649964 m!1998833))

(assert (=> b!1649517 d!497414))

(declare-fun d!497420 () Bool)

(declare-fun lt!612172 () Bool)

(assert (=> d!497420 (= lt!612172 (prefixMatch!456 lt!611598 (list!7241 (++!4921 lt!611594 lt!611599))))))

(declare-datatypes ((List!18286 0))(
  ( (Nil!18216) (Cons!18216 (h!23617 Regex!4539) (t!150853 List!18286)) )
))
(declare-datatypes ((Context!1790 0))(
  ( (Context!1791 (exprs!1395 List!18286)) )
))
(declare-fun prefixMatchZipperSequence!623 ((InoxSet Context!1790) BalanceConc!12084 Int) Bool)

(declare-fun focus!201 (Regex!4539) (InoxSet Context!1790))

(assert (=> d!497420 (= lt!612172 (prefixMatchZipperSequence!623 (focus!201 lt!611598) (++!4921 lt!611594 lt!611599) 0))))

(declare-fun lt!612173 () Unit!30315)

(declare-fun lt!612165 () Unit!30315)

(assert (=> d!497420 (= lt!612173 lt!612165)))

(declare-fun lt!612164 () List!18279)

(declare-fun lt!612169 () (InoxSet Context!1790))

(declare-fun prefixMatchZipper!180 ((InoxSet Context!1790) List!18279) Bool)

(assert (=> d!497420 (= (prefixMatch!456 lt!611598 lt!612164) (prefixMatchZipper!180 lt!612169 lt!612164))))

(declare-datatypes ((List!18287 0))(
  ( (Nil!18217) (Cons!18217 (h!23618 Context!1790) (t!150854 List!18287)) )
))
(declare-fun lt!612166 () List!18287)

(declare-fun prefixMatchZipperRegexEquiv!180 ((InoxSet Context!1790) List!18287 Regex!4539 List!18279) Unit!30315)

(assert (=> d!497420 (= lt!612165 (prefixMatchZipperRegexEquiv!180 lt!612169 lt!612166 lt!611598 lt!612164))))

(assert (=> d!497420 (= lt!612164 (list!7241 (++!4921 lt!611594 lt!611599)))))

(declare-fun toList!941 ((InoxSet Context!1790)) List!18287)

(assert (=> d!497420 (= lt!612166 (toList!941 (focus!201 lt!611598)))))

(assert (=> d!497420 (= lt!612169 (focus!201 lt!611598))))

(declare-fun lt!612171 () Unit!30315)

(declare-fun lt!612170 () Unit!30315)

(assert (=> d!497420 (= lt!612171 lt!612170)))

(declare-fun lt!612168 () (InoxSet Context!1790))

(declare-fun lt!612167 () Int)

(declare-fun dropList!674 (BalanceConc!12084 Int) List!18279)

(assert (=> d!497420 (= (prefixMatchZipper!180 lt!612168 (dropList!674 (++!4921 lt!611594 lt!611599) lt!612167)) (prefixMatchZipperSequence!623 lt!612168 (++!4921 lt!611594 lt!611599) lt!612167))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!180 ((InoxSet Context!1790) BalanceConc!12084 Int) Unit!30315)

(assert (=> d!497420 (= lt!612170 (lemmaprefixMatchZipperSequenceEquivalent!180 lt!612168 (++!4921 lt!611594 lt!611599) lt!612167))))

(assert (=> d!497420 (= lt!612167 0)))

(assert (=> d!497420 (= lt!612168 (focus!201 lt!611598))))

(declare-fun validRegex!1808 (Regex!4539) Bool)

(assert (=> d!497420 (validRegex!1808 lt!611598)))

(assert (=> d!497420 (= (prefixMatchZipperSequence!621 lt!611598 (++!4921 lt!611594 lt!611599)) lt!612172)))

(declare-fun bs!396434 () Bool)

(assert (= bs!396434 d!497420))

(declare-fun m!1998859 () Bool)

(assert (=> bs!396434 m!1998859))

(declare-fun m!1998861 () Bool)

(assert (=> bs!396434 m!1998861))

(declare-fun m!1998863 () Bool)

(assert (=> bs!396434 m!1998863))

(declare-fun m!1998865 () Bool)

(assert (=> bs!396434 m!1998865))

(assert (=> bs!396434 m!1997811))

(declare-fun m!1998867 () Bool)

(assert (=> bs!396434 m!1998867))

(assert (=> bs!396434 m!1997811))

(declare-fun m!1998869 () Bool)

(assert (=> bs!396434 m!1998869))

(declare-fun m!1998871 () Bool)

(assert (=> bs!396434 m!1998871))

(assert (=> bs!396434 m!1997811))

(assert (=> bs!396434 m!1998861))

(assert (=> bs!396434 m!1998865))

(declare-fun m!1998873 () Bool)

(assert (=> bs!396434 m!1998873))

(assert (=> bs!396434 m!1998865))

(declare-fun m!1998875 () Bool)

(assert (=> bs!396434 m!1998875))

(assert (=> bs!396434 m!1997811))

(declare-fun m!1998877 () Bool)

(assert (=> bs!396434 m!1998877))

(declare-fun m!1998879 () Bool)

(assert (=> bs!396434 m!1998879))

(declare-fun m!1998881 () Bool)

(assert (=> bs!396434 m!1998881))

(assert (=> bs!396434 m!1997811))

(assert (=> bs!396434 m!1998879))

(declare-fun m!1998883 () Bool)

(assert (=> bs!396434 m!1998883))

(assert (=> b!1649517 d!497420))

(declare-fun d!497422 () Bool)

(declare-fun lt!612176 () C!9252)

(declare-fun apply!4807 (List!18279 Int) C!9252)

(assert (=> d!497422 (= lt!612176 (apply!4807 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) 0))))

(declare-fun apply!4808 (Conc!6070 Int) C!9252)

(assert (=> d!497422 (= lt!612176 (apply!4808 (c!268209 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) 0))))

(declare-fun e!1058194 () Bool)

(assert (=> d!497422 e!1058194))

(declare-fun res!739534 () Bool)

(assert (=> d!497422 (=> (not res!739534) (not e!1058194))))

(assert (=> d!497422 (= res!739534 (<= 0 0))))

(assert (=> d!497422 (= (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0) lt!612176)))

(declare-fun b!1650017 () Bool)

(assert (=> b!1650017 (= e!1058194 (< 0 (size!14504 (charsOf!1860 (h!23613 (t!150807 tokens!457))))))))

(assert (= (and d!497422 res!739534) b!1650017))

(assert (=> d!497422 m!1997815))

(assert (=> d!497422 m!1998343))

(assert (=> d!497422 m!1998343))

(declare-fun m!1998885 () Bool)

(assert (=> d!497422 m!1998885))

(declare-fun m!1998887 () Bool)

(assert (=> d!497422 m!1998887))

(assert (=> b!1650017 m!1997815))

(assert (=> b!1650017 m!1998123))

(assert (=> b!1649517 d!497422))

(declare-fun d!497424 () Bool)

(declare-fun lt!612179 () Unit!30315)

(declare-fun lemma!266 (List!18281 LexerInterface!2840 List!18281) Unit!30315)

(assert (=> d!497424 (= lt!612179 (lemma!266 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67664 () Int)

(declare-fun generalisedUnion!274 (List!18286) Regex!4539)

(declare-fun map!3751 (List!18281 Int) List!18286)

(assert (=> d!497424 (= (rulesRegex!595 thiss!17113 rules!1846) (generalisedUnion!274 (map!3751 rules!1846 lambda!67664)))))

(declare-fun bs!396435 () Bool)

(assert (= bs!396435 d!497424))

(declare-fun m!1998889 () Bool)

(assert (=> bs!396435 m!1998889))

(declare-fun m!1998891 () Bool)

(assert (=> bs!396435 m!1998891))

(assert (=> bs!396435 m!1998891))

(declare-fun m!1998893 () Bool)

(assert (=> bs!396435 m!1998893))

(assert (=> b!1649517 d!497424))

(declare-fun d!497426 () Bool)

(declare-fun lt!612180 () BalanceConc!12084)

(assert (=> d!497426 (= (list!7241 lt!612180) (originalCharacters!4025 (h!23613 (t!150807 tokens!457))))))

(assert (=> d!497426 (= lt!612180 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (value!101186 (h!23613 (t!150807 tokens!457)))))))

(assert (=> d!497426 (= (charsOf!1860 (h!23613 (t!150807 tokens!457))) lt!612180)))

(declare-fun b_lambda!51869 () Bool)

(assert (=> (not b_lambda!51869) (not d!497426)))

(declare-fun tb!94499 () Bool)

(declare-fun t!150839 () Bool)

(assert (=> (and b!1649509 (= (toChars!4517 (transformation!3211 (h!23612 rules!1846))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457)))))) t!150839) tb!94499))

(declare-fun b!1650018 () Bool)

(declare-fun e!1058195 () Bool)

(declare-fun tp!477752 () Bool)

(assert (=> b!1650018 (= e!1058195 (and (inv!23573 (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (value!101186 (h!23613 (t!150807 tokens!457)))))) tp!477752))))

(declare-fun result!114182 () Bool)

(assert (=> tb!94499 (= result!114182 (and (inv!23574 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (value!101186 (h!23613 (t!150807 tokens!457))))) e!1058195))))

(assert (= tb!94499 b!1650018))

(declare-fun m!1998895 () Bool)

(assert (=> b!1650018 m!1998895))

(declare-fun m!1998897 () Bool)

(assert (=> tb!94499 m!1998897))

(assert (=> d!497426 t!150839))

(declare-fun b_and!117185 () Bool)

(assert (= b_and!117173 (and (=> t!150839 result!114182) b_and!117185)))

(declare-fun t!150841 () Bool)

(declare-fun tb!94501 () Bool)

(assert (=> (and b!1649522 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457)))))) t!150841) tb!94501))

(declare-fun result!114184 () Bool)

(assert (= result!114184 result!114182))

(assert (=> d!497426 t!150841))

(declare-fun b_and!117187 () Bool)

(assert (= b_and!117175 (and (=> t!150841 result!114184) b_and!117187)))

(declare-fun m!1998899 () Bool)

(assert (=> d!497426 m!1998899))

(declare-fun m!1998901 () Bool)

(assert (=> d!497426 m!1998901))

(assert (=> b!1649517 d!497426))

(declare-fun d!497428 () Bool)

(assert (=> d!497428 (= (inv!23566 (tag!3491 (rule!5069 (h!23613 tokens!457)))) (= (mod (str.len (value!101185 (tag!3491 (rule!5069 (h!23613 tokens!457))))) 2) 0))))

(assert (=> b!1649518 d!497428))

(declare-fun d!497430 () Bool)

(declare-fun res!739535 () Bool)

(declare-fun e!1058196 () Bool)

(assert (=> d!497430 (=> (not res!739535) (not e!1058196))))

(assert (=> d!497430 (= res!739535 (semiInverseModEq!1241 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (toValue!4658 (transformation!3211 (rule!5069 (h!23613 tokens!457))))))))

(assert (=> d!497430 (= (inv!23569 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) e!1058196)))

(declare-fun b!1650019 () Bool)

(assert (=> b!1650019 (= e!1058196 (equivClasses!1182 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (toValue!4658 (transformation!3211 (rule!5069 (h!23613 tokens!457))))))))

(assert (= (and d!497430 res!739535) b!1650019))

(declare-fun m!1998903 () Bool)

(assert (=> d!497430 m!1998903))

(declare-fun m!1998905 () Bool)

(assert (=> b!1650019 m!1998905))

(assert (=> b!1649518 d!497430))

(declare-fun d!497432 () Bool)

(declare-fun lt!612183 () C!9252)

(assert (=> d!497432 (= lt!612183 (head!3631 (list!7241 lt!611597)))))

(declare-fun head!3635 (Conc!6070) C!9252)

(assert (=> d!497432 (= lt!612183 (head!3635 (c!268209 lt!611597)))))

(assert (=> d!497432 (not (isEmpty!11247 lt!611597))))

(assert (=> d!497432 (= (head!3630 lt!611597) lt!612183)))

(declare-fun bs!396436 () Bool)

(assert (= bs!396436 d!497432))

(assert (=> bs!396436 m!1997891))

(assert (=> bs!396436 m!1997891))

(declare-fun m!1998907 () Bool)

(assert (=> bs!396436 m!1998907))

(declare-fun m!1998909 () Bool)

(assert (=> bs!396436 m!1998909))

(declare-fun m!1998911 () Bool)

(assert (=> bs!396436 m!1998911))

(assert (=> b!1649507 d!497432))

(declare-fun d!497434 () Bool)

(declare-fun lt!612186 () Bool)

(declare-fun isEmpty!11250 (List!18282) Bool)

(assert (=> d!497434 (= lt!612186 (isEmpty!11250 (list!7242 (_1!10343 (lex!1324 thiss!17113 rules!1846 (seqFromList!2161 lt!611596))))))))

(declare-fun isEmpty!11251 (Conc!6071) Bool)

(assert (=> d!497434 (= lt!612186 (isEmpty!11251 (c!268211 (_1!10343 (lex!1324 thiss!17113 rules!1846 (seqFromList!2161 lt!611596))))))))

(assert (=> d!497434 (= (isEmpty!11238 (_1!10343 (lex!1324 thiss!17113 rules!1846 (seqFromList!2161 lt!611596)))) lt!612186)))

(declare-fun bs!396437 () Bool)

(assert (= bs!396437 d!497434))

(assert (=> bs!396437 m!1998657))

(assert (=> bs!396437 m!1998657))

(declare-fun m!1998913 () Bool)

(assert (=> bs!396437 m!1998913))

(declare-fun m!1998915 () Bool)

(assert (=> bs!396437 m!1998915))

(assert (=> b!1649508 d!497434))

(declare-fun b!1650020 () Bool)

(declare-fun res!739537 () Bool)

(declare-fun e!1058199 () Bool)

(assert (=> b!1650020 (=> (not res!739537) (not e!1058199))))

(declare-fun lt!612187 () tuple2!17882)

(assert (=> b!1650020 (= res!739537 (= (list!7242 (_1!10343 lt!612187)) (_1!10347 (lexList!871 thiss!17113 rules!1846 (list!7241 (seqFromList!2161 lt!611596))))))))

(declare-fun b!1650021 () Bool)

(declare-fun e!1058198 () Bool)

(assert (=> b!1650021 (= e!1058198 (= (_2!10343 lt!612187) (seqFromList!2161 lt!611596)))))

(declare-fun b!1650022 () Bool)

(declare-fun e!1058197 () Bool)

(assert (=> b!1650022 (= e!1058198 e!1058197)))

(declare-fun res!739536 () Bool)

(assert (=> b!1650022 (= res!739536 (< (size!14504 (_2!10343 lt!612187)) (size!14504 (seqFromList!2161 lt!611596))))))

(assert (=> b!1650022 (=> (not res!739536) (not e!1058197))))

(declare-fun b!1650023 () Bool)

(assert (=> b!1650023 (= e!1058199 (= (list!7241 (_2!10343 lt!612187)) (_2!10347 (lexList!871 thiss!17113 rules!1846 (list!7241 (seqFromList!2161 lt!611596))))))))

(declare-fun b!1650024 () Bool)

(assert (=> b!1650024 (= e!1058197 (not (isEmpty!11238 (_1!10343 lt!612187))))))

(declare-fun d!497436 () Bool)

(assert (=> d!497436 e!1058199))

(declare-fun res!739538 () Bool)

(assert (=> d!497436 (=> (not res!739538) (not e!1058199))))

(assert (=> d!497436 (= res!739538 e!1058198)))

(declare-fun c!268285 () Bool)

(assert (=> d!497436 (= c!268285 (> (size!14503 (_1!10343 lt!612187)) 0))))

(assert (=> d!497436 (= lt!612187 (lexTailRecV2!594 thiss!17113 rules!1846 (seqFromList!2161 lt!611596) (BalanceConc!12085 Empty!6070) (seqFromList!2161 lt!611596) (BalanceConc!12087 Empty!6071)))))

(assert (=> d!497436 (= (lex!1324 thiss!17113 rules!1846 (seqFromList!2161 lt!611596)) lt!612187)))

(assert (= (and d!497436 c!268285) b!1650022))

(assert (= (and d!497436 (not c!268285)) b!1650021))

(assert (= (and b!1650022 res!739536) b!1650024))

(assert (= (and d!497436 res!739538) b!1650020))

(assert (= (and b!1650020 res!739537) b!1650023))

(declare-fun m!1998917 () Bool)

(assert (=> b!1650020 m!1998917))

(assert (=> b!1650020 m!1997875))

(declare-fun m!1998919 () Bool)

(assert (=> b!1650020 m!1998919))

(assert (=> b!1650020 m!1998919))

(declare-fun m!1998921 () Bool)

(assert (=> b!1650020 m!1998921))

(declare-fun m!1998923 () Bool)

(assert (=> b!1650023 m!1998923))

(assert (=> b!1650023 m!1997875))

(assert (=> b!1650023 m!1998919))

(assert (=> b!1650023 m!1998919))

(assert (=> b!1650023 m!1998921))

(declare-fun m!1998925 () Bool)

(assert (=> b!1650022 m!1998925))

(assert (=> b!1650022 m!1997875))

(declare-fun m!1998927 () Bool)

(assert (=> b!1650022 m!1998927))

(declare-fun m!1998929 () Bool)

(assert (=> d!497436 m!1998929))

(assert (=> d!497436 m!1997875))

(assert (=> d!497436 m!1997875))

(declare-fun m!1998931 () Bool)

(assert (=> d!497436 m!1998931))

(declare-fun m!1998933 () Bool)

(assert (=> b!1650024 m!1998933))

(assert (=> b!1649508 d!497436))

(declare-fun d!497438 () Bool)

(assert (=> d!497438 (= (seqFromList!2161 lt!611596) (fromListB!966 lt!611596))))

(declare-fun bs!396438 () Bool)

(assert (= bs!396438 d!497438))

(declare-fun m!1998935 () Bool)

(assert (=> bs!396438 m!1998935))

(assert (=> b!1649508 d!497438))

(declare-fun d!497440 () Bool)

(assert (=> d!497440 (= (isEmpty!11239 rules!1846) ((_ is Nil!18211) rules!1846))))

(assert (=> b!1649529 d!497440))

(declare-fun d!497442 () Bool)

(declare-fun lt!612193 () Bool)

(declare-fun e!1058205 () Bool)

(assert (=> d!497442 (= lt!612193 e!1058205)))

(declare-fun res!739545 () Bool)

(assert (=> d!497442 (=> (not res!739545) (not e!1058205))))

(assert (=> d!497442 (= res!739545 (= (list!7242 (_1!10343 (lex!1324 thiss!17113 rules!1846 (print!1371 thiss!17113 (singletonSeq!1695 (h!23613 tokens!457)))))) (list!7242 (singletonSeq!1695 (h!23613 tokens!457)))))))

(declare-fun e!1058204 () Bool)

(assert (=> d!497442 (= lt!612193 e!1058204)))

(declare-fun res!739546 () Bool)

(assert (=> d!497442 (=> (not res!739546) (not e!1058204))))

(declare-fun lt!612192 () tuple2!17882)

(assert (=> d!497442 (= res!739546 (= (size!14503 (_1!10343 lt!612192)) 1))))

(assert (=> d!497442 (= lt!612192 (lex!1324 thiss!17113 rules!1846 (print!1371 thiss!17113 (singletonSeq!1695 (h!23613 tokens!457)))))))

(assert (=> d!497442 (not (isEmpty!11239 rules!1846))))

(assert (=> d!497442 (= (rulesProduceIndividualToken!1488 thiss!17113 rules!1846 (h!23613 tokens!457)) lt!612193)))

(declare-fun b!1650031 () Bool)

(declare-fun res!739547 () Bool)

(assert (=> b!1650031 (=> (not res!739547) (not e!1058204))))

(assert (=> b!1650031 (= res!739547 (= (apply!4805 (_1!10343 lt!612192) 0) (h!23613 tokens!457)))))

(declare-fun b!1650032 () Bool)

(assert (=> b!1650032 (= e!1058204 (isEmpty!11247 (_2!10343 lt!612192)))))

(declare-fun b!1650033 () Bool)

(assert (=> b!1650033 (= e!1058205 (isEmpty!11247 (_2!10343 (lex!1324 thiss!17113 rules!1846 (print!1371 thiss!17113 (singletonSeq!1695 (h!23613 tokens!457)))))))))

(assert (= (and d!497442 res!739546) b!1650031))

(assert (= (and b!1650031 res!739547) b!1650032))

(assert (= (and d!497442 res!739545) b!1650033))

(declare-fun m!1998937 () Bool)

(assert (=> d!497442 m!1998937))

(declare-fun m!1998939 () Bool)

(assert (=> d!497442 m!1998939))

(assert (=> d!497442 m!1997855))

(assert (=> d!497442 m!1998937))

(declare-fun m!1998941 () Bool)

(assert (=> d!497442 m!1998941))

(declare-fun m!1998943 () Bool)

(assert (=> d!497442 m!1998943))

(assert (=> d!497442 m!1997843))

(assert (=> d!497442 m!1997855))

(assert (=> d!497442 m!1997855))

(declare-fun m!1998945 () Bool)

(assert (=> d!497442 m!1998945))

(declare-fun m!1998947 () Bool)

(assert (=> b!1650031 m!1998947))

(declare-fun m!1998949 () Bool)

(assert (=> b!1650032 m!1998949))

(assert (=> b!1650033 m!1997855))

(assert (=> b!1650033 m!1997855))

(assert (=> b!1650033 m!1998937))

(assert (=> b!1650033 m!1998937))

(assert (=> b!1650033 m!1998939))

(declare-fun m!1998951 () Bool)

(assert (=> b!1650033 m!1998951))

(assert (=> b!1649530 d!497442))

(declare-fun d!497444 () Bool)

(declare-fun c!268288 () Bool)

(assert (=> d!497444 (= c!268288 (isEmpty!11246 (++!4922 lt!611596 lt!611595)))))

(declare-fun e!1058208 () Bool)

(assert (=> d!497444 (= (prefixMatch!456 lt!611598 (++!4922 lt!611596 lt!611595)) e!1058208)))

(declare-fun b!1650038 () Bool)

(declare-fun lostCause!460 (Regex!4539) Bool)

(assert (=> b!1650038 (= e!1058208 (not (lostCause!460 lt!611598)))))

(declare-fun b!1650039 () Bool)

(declare-fun derivativeStep!1110 (Regex!4539 C!9252) Regex!4539)

(assert (=> b!1650039 (= e!1058208 (prefixMatch!456 (derivativeStep!1110 lt!611598 (head!3631 (++!4922 lt!611596 lt!611595))) (tail!2444 (++!4922 lt!611596 lt!611595))))))

(assert (= (and d!497444 c!268288) b!1650038))

(assert (= (and d!497444 (not c!268288)) b!1650039))

(assert (=> d!497444 m!1997885))

(declare-fun m!1998953 () Bool)

(assert (=> d!497444 m!1998953))

(declare-fun m!1998955 () Bool)

(assert (=> b!1650038 m!1998955))

(assert (=> b!1650039 m!1997885))

(declare-fun m!1998957 () Bool)

(assert (=> b!1650039 m!1998957))

(assert (=> b!1650039 m!1998957))

(declare-fun m!1998959 () Bool)

(assert (=> b!1650039 m!1998959))

(assert (=> b!1650039 m!1997885))

(declare-fun m!1998961 () Bool)

(assert (=> b!1650039 m!1998961))

(assert (=> b!1650039 m!1998959))

(assert (=> b!1650039 m!1998961))

(declare-fun m!1998963 () Bool)

(assert (=> b!1650039 m!1998963))

(assert (=> b!1649519 d!497444))

(declare-fun b!1650043 () Bool)

(declare-fun e!1058210 () Bool)

(declare-fun lt!612194 () List!18279)

(assert (=> b!1650043 (= e!1058210 (or (not (= lt!611595 Nil!18209)) (= lt!612194 lt!611596)))))

(declare-fun b!1650040 () Bool)

(declare-fun e!1058209 () List!18279)

(assert (=> b!1650040 (= e!1058209 lt!611595)))

(declare-fun d!497446 () Bool)

(assert (=> d!497446 e!1058210))

(declare-fun res!739548 () Bool)

(assert (=> d!497446 (=> (not res!739548) (not e!1058210))))

(assert (=> d!497446 (= res!739548 (= (content!2529 lt!612194) ((_ map or) (content!2529 lt!611596) (content!2529 lt!611595))))))

(assert (=> d!497446 (= lt!612194 e!1058209)))

(declare-fun c!268289 () Bool)

(assert (=> d!497446 (= c!268289 ((_ is Nil!18209) lt!611596))))

(assert (=> d!497446 (= (++!4922 lt!611596 lt!611595) lt!612194)))

(declare-fun b!1650041 () Bool)

(assert (=> b!1650041 (= e!1058209 (Cons!18209 (h!23610 lt!611596) (++!4922 (t!150804 lt!611596) lt!611595)))))

(declare-fun b!1650042 () Bool)

(declare-fun res!739549 () Bool)

(assert (=> b!1650042 (=> (not res!739549) (not e!1058210))))

(assert (=> b!1650042 (= res!739549 (= (size!14501 lt!612194) (+ (size!14501 lt!611596) (size!14501 lt!611595))))))

(assert (= (and d!497446 c!268289) b!1650040))

(assert (= (and d!497446 (not c!268289)) b!1650041))

(assert (= (and d!497446 res!739548) b!1650042))

(assert (= (and b!1650042 res!739549) b!1650043))

(declare-fun m!1998965 () Bool)

(assert (=> d!497446 m!1998965))

(assert (=> d!497446 m!1998727))

(declare-fun m!1998967 () Bool)

(assert (=> d!497446 m!1998967))

(declare-fun m!1998969 () Bool)

(assert (=> b!1650041 m!1998969))

(declare-fun m!1998971 () Bool)

(assert (=> b!1650042 m!1998971))

(assert (=> b!1650042 m!1998417))

(declare-fun m!1998973 () Bool)

(assert (=> b!1650042 m!1998973))

(assert (=> b!1649519 d!497446))

(declare-fun d!497448 () Bool)

(assert (=> d!497448 (= (list!7241 lt!611599) (list!7244 (c!268209 lt!611599)))))

(declare-fun bs!396439 () Bool)

(assert (= bs!396439 d!497448))

(declare-fun m!1998975 () Bool)

(assert (=> bs!396439 m!1998975))

(assert (=> b!1649519 d!497448))

(declare-fun d!497450 () Bool)

(declare-fun res!739552 () Bool)

(declare-fun e!1058213 () Bool)

(assert (=> d!497450 (=> (not res!739552) (not e!1058213))))

(declare-fun rulesValid!1170 (LexerInterface!2840 List!18281) Bool)

(assert (=> d!497450 (= res!739552 (rulesValid!1170 thiss!17113 rules!1846))))

(assert (=> d!497450 (= (rulesInvariant!2509 thiss!17113 rules!1846) e!1058213)))

(declare-fun b!1650046 () Bool)

(declare-datatypes ((List!18288 0))(
  ( (Nil!18218) (Cons!18218 (h!23619 String!20837) (t!150855 List!18288)) )
))
(declare-fun noDuplicateTag!1170 (LexerInterface!2840 List!18281 List!18288) Bool)

(assert (=> b!1650046 (= e!1058213 (noDuplicateTag!1170 thiss!17113 rules!1846 Nil!18218))))

(assert (= (and d!497450 res!739552) b!1650046))

(declare-fun m!1998977 () Bool)

(assert (=> d!497450 m!1998977))

(declare-fun m!1998979 () Bool)

(assert (=> b!1650046 m!1998979))

(assert (=> b!1649520 d!497450))

(declare-fun b!1650060 () Bool)

(declare-fun e!1058216 () Bool)

(declare-fun tp!477766 () Bool)

(declare-fun tp!477763 () Bool)

(assert (=> b!1650060 (= e!1058216 (and tp!477766 tp!477763))))

(declare-fun b!1650057 () Bool)

(declare-fun tp_is_empty!7365 () Bool)

(assert (=> b!1650057 (= e!1058216 tp_is_empty!7365)))

(declare-fun b!1650058 () Bool)

(declare-fun tp!477764 () Bool)

(declare-fun tp!477767 () Bool)

(assert (=> b!1650058 (= e!1058216 (and tp!477764 tp!477767))))

(declare-fun b!1650059 () Bool)

(declare-fun tp!477765 () Bool)

(assert (=> b!1650059 (= e!1058216 tp!477765)))

(assert (=> b!1649510 (= tp!477693 e!1058216)))

(assert (= (and b!1649510 ((_ is ElementMatch!4539) (regex!3211 (h!23612 rules!1846)))) b!1650057))

(assert (= (and b!1649510 ((_ is Concat!7841) (regex!3211 (h!23612 rules!1846)))) b!1650058))

(assert (= (and b!1649510 ((_ is Star!4539) (regex!3211 (h!23612 rules!1846)))) b!1650059))

(assert (= (and b!1649510 ((_ is Union!4539) (regex!3211 (h!23612 rules!1846)))) b!1650060))

(declare-fun b!1650065 () Bool)

(declare-fun e!1058219 () Bool)

(declare-fun tp!477770 () Bool)

(assert (=> b!1650065 (= e!1058219 (and tp_is_empty!7365 tp!477770))))

(assert (=> b!1649515 (= tp!477694 e!1058219)))

(assert (= (and b!1649515 ((_ is Cons!18209) (originalCharacters!4025 (h!23613 tokens!457)))) b!1650065))

(declare-fun b!1650076 () Bool)

(declare-fun b_free!44855 () Bool)

(declare-fun b_next!45559 () Bool)

(assert (=> b!1650076 (= b_free!44855 (not b_next!45559))))

(declare-fun tp!477782 () Bool)

(declare-fun b_and!117189 () Bool)

(assert (=> b!1650076 (= tp!477782 b_and!117189)))

(declare-fun b_free!44857 () Bool)

(declare-fun b_next!45561 () Bool)

(assert (=> b!1650076 (= b_free!44857 (not b_next!45561))))

(declare-fun tb!94503 () Bool)

(declare-fun t!150846 () Bool)

(assert (=> (and b!1650076 (= (toChars!4517 (transformation!3211 (h!23612 (t!150806 rules!1846)))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457))))) t!150846) tb!94503))

(declare-fun result!114192 () Bool)

(assert (= result!114192 result!114150))

(assert (=> b!1649603 t!150846))

(assert (=> d!497392 t!150846))

(declare-fun t!150848 () Bool)

(declare-fun tb!94505 () Bool)

(assert (=> (and b!1650076 (= (toChars!4517 (transformation!3211 (h!23612 (t!150806 rules!1846)))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457)))))) t!150848) tb!94505))

(declare-fun result!114194 () Bool)

(assert (= result!114194 result!114182))

(assert (=> d!497426 t!150848))

(declare-fun b_and!117191 () Bool)

(declare-fun tp!477780 () Bool)

(assert (=> b!1650076 (= tp!477780 (and (=> t!150846 result!114192) (=> t!150848 result!114194) b_and!117191))))

(declare-fun e!1058229 () Bool)

(assert (=> b!1650076 (= e!1058229 (and tp!477782 tp!477780))))

(declare-fun b!1650075 () Bool)

(declare-fun e!1058230 () Bool)

(declare-fun tp!477781 () Bool)

(assert (=> b!1650075 (= e!1058230 (and tp!477781 (inv!23566 (tag!3491 (h!23612 (t!150806 rules!1846)))) (inv!23569 (transformation!3211 (h!23612 (t!150806 rules!1846)))) e!1058229))))

(declare-fun b!1650074 () Bool)

(declare-fun e!1058231 () Bool)

(declare-fun tp!477779 () Bool)

(assert (=> b!1650074 (= e!1058231 (and e!1058230 tp!477779))))

(assert (=> b!1649531 (= tp!477691 e!1058231)))

(assert (= b!1650075 b!1650076))

(assert (= b!1650074 b!1650075))

(assert (= (and b!1649531 ((_ is Cons!18211) (t!150806 rules!1846))) b!1650074))

(declare-fun m!1998981 () Bool)

(assert (=> b!1650075 m!1998981))

(declare-fun m!1998983 () Bool)

(assert (=> b!1650075 m!1998983))

(declare-fun b!1650090 () Bool)

(declare-fun b_free!44859 () Bool)

(declare-fun b_next!45563 () Bool)

(assert (=> b!1650090 (= b_free!44859 (not b_next!45563))))

(declare-fun tp!477795 () Bool)

(declare-fun b_and!117193 () Bool)

(assert (=> b!1650090 (= tp!477795 b_and!117193)))

(declare-fun b_free!44861 () Bool)

(declare-fun b_next!45565 () Bool)

(assert (=> b!1650090 (= b_free!44861 (not b_next!45565))))

(declare-fun t!150850 () Bool)

(declare-fun tb!94507 () Bool)

(assert (=> (and b!1650090 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457))))) t!150850) tb!94507))

(declare-fun result!114198 () Bool)

(assert (= result!114198 result!114150))

(assert (=> b!1649603 t!150850))

(assert (=> d!497392 t!150850))

(declare-fun t!150852 () Bool)

(declare-fun tb!94509 () Bool)

(assert (=> (and b!1650090 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457)))))) t!150852) tb!94509))

(declare-fun result!114200 () Bool)

(assert (= result!114200 result!114182))

(assert (=> d!497426 t!150852))

(declare-fun tp!477793 () Bool)

(declare-fun b_and!117195 () Bool)

(assert (=> b!1650090 (= tp!477793 (and (=> t!150850 result!114198) (=> t!150852 result!114200) b_and!117195))))

(declare-fun b!1650089 () Bool)

(declare-fun e!1058244 () Bool)

(declare-fun tp!477797 () Bool)

(declare-fun e!1058248 () Bool)

(assert (=> b!1650089 (= e!1058248 (and tp!477797 (inv!23566 (tag!3491 (rule!5069 (h!23613 (t!150807 tokens!457))))) (inv!23569 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) e!1058244))))

(declare-fun e!1058247 () Bool)

(declare-fun b!1650088 () Bool)

(declare-fun tp!477796 () Bool)

(assert (=> b!1650088 (= e!1058247 (and (inv!21 (value!101186 (h!23613 (t!150807 tokens!457)))) e!1058248 tp!477796))))

(declare-fun e!1058245 () Bool)

(assert (=> b!1649521 (= tp!477688 e!1058245)))

(declare-fun tp!477794 () Bool)

(declare-fun b!1650087 () Bool)

(assert (=> b!1650087 (= e!1058245 (and (inv!23570 (h!23613 (t!150807 tokens!457))) e!1058247 tp!477794))))

(assert (=> b!1650090 (= e!1058244 (and tp!477795 tp!477793))))

(assert (= b!1650089 b!1650090))

(assert (= b!1650088 b!1650089))

(assert (= b!1650087 b!1650088))

(assert (= (and b!1649521 ((_ is Cons!18212) (t!150807 tokens!457))) b!1650087))

(declare-fun m!1998985 () Bool)

(assert (=> b!1650089 m!1998985))

(declare-fun m!1998987 () Bool)

(assert (=> b!1650089 m!1998987))

(declare-fun m!1998989 () Bool)

(assert (=> b!1650088 m!1998989))

(declare-fun m!1998991 () Bool)

(assert (=> b!1650087 m!1998991))

(declare-fun b!1650094 () Bool)

(declare-fun e!1058250 () Bool)

(declare-fun tp!477801 () Bool)

(declare-fun tp!477798 () Bool)

(assert (=> b!1650094 (= e!1058250 (and tp!477801 tp!477798))))

(declare-fun b!1650091 () Bool)

(assert (=> b!1650091 (= e!1058250 tp_is_empty!7365)))

(declare-fun b!1650092 () Bool)

(declare-fun tp!477799 () Bool)

(declare-fun tp!477802 () Bool)

(assert (=> b!1650092 (= e!1058250 (and tp!477799 tp!477802))))

(declare-fun b!1650093 () Bool)

(declare-fun tp!477800 () Bool)

(assert (=> b!1650093 (= e!1058250 tp!477800)))

(assert (=> b!1649518 (= tp!477689 e!1058250)))

(assert (= (and b!1649518 ((_ is ElementMatch!4539) (regex!3211 (rule!5069 (h!23613 tokens!457))))) b!1650091))

(assert (= (and b!1649518 ((_ is Concat!7841) (regex!3211 (rule!5069 (h!23613 tokens!457))))) b!1650092))

(assert (= (and b!1649518 ((_ is Star!4539) (regex!3211 (rule!5069 (h!23613 tokens!457))))) b!1650093))

(assert (= (and b!1649518 ((_ is Union!4539) (regex!3211 (rule!5069 (h!23613 tokens!457))))) b!1650094))

(declare-fun b_lambda!51871 () Bool)

(assert (= b_lambda!51869 (or (and b!1649509 b_free!44841 (= (toChars!4517 (transformation!3211 (h!23612 rules!1846))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))))) (and b!1649522 b_free!44845 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))))) (and b!1650076 b_free!44857 (= (toChars!4517 (transformation!3211 (h!23612 (t!150806 rules!1846)))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))))) (and b!1650090 b_free!44861) b_lambda!51871)))

(declare-fun b_lambda!51873 () Bool)

(assert (= b_lambda!51861 (or (and b!1649509 b_free!44841 (= (toChars!4517 (transformation!3211 (h!23612 rules!1846))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))))) (and b!1649522 b_free!44845) (and b!1650076 b_free!44857 (= (toChars!4517 (transformation!3211 (h!23612 (t!150806 rules!1846)))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))))) (and b!1650090 b_free!44861 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))))) b_lambda!51873)))

(declare-fun b_lambda!51875 () Bool)

(assert (= b_lambda!51853 (or (and b!1649509 b_free!44841 (= (toChars!4517 (transformation!3211 (h!23612 rules!1846))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))))) (and b!1649522 b_free!44845) (and b!1650076 b_free!44857 (= (toChars!4517 (transformation!3211 (h!23612 (t!150806 rules!1846)))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))))) (and b!1650090 b_free!44861 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))))) b_lambda!51875)))

(check-sat (not b!1649562) b_and!117189 (not b!1649753) (not b!1649860) (not b!1649965) (not b!1650024) (not b!1649862) (not d!497422) (not d!497450) (not d!497254) (not d!497246) (not d!497330) (not b!1650042) (not d!497258) (not b!1650019) (not d!497386) (not b!1649773) (not d!497320) (not d!497388) (not b!1650041) (not b!1649630) (not d!497332) (not b_next!45559) (not b!1649963) (not b!1649756) (not b!1649840) (not d!497244) (not b!1649629) (not bm!105834) (not d!497430) (not b!1649861) (not b!1649954) (not d!497340) (not d!497380) (not d!497426) (not d!497282) (not d!497424) (not b!1649598) (not b!1650092) (not b_next!45543) (not b!1649609) (not d!497280) (not d!497342) (not b!1649758) (not b!1649841) (not d!497322) (not b!1650033) (not b!1649541) (not d!497260) (not d!497324) (not b!1649872) (not b_next!45545) (not b!1649928) (not b!1649755) (not d!497396) (not b!1649589) (not b!1649938) (not b!1649752) (not b!1650022) (not b!1650017) (not b!1649587) (not b!1649777) (not b!1650018) (not d!497394) (not b_next!45549) (not d!497436) (not b!1650039) (not b!1649873) (not b!1649734) (not d!497412) (not b!1650023) (not b!1650093) (not b_next!45565) (not b!1649858) (not d!497446) (not b!1649929) (not b!1649560) (not b!1649567) (not b_lambda!51871) (not d!497390) (not b!1649733) (not d!497376) (not b!1649723) b_and!117149 (not d!497236) b_and!117191 (not bm!105840) (not b!1649604) (not b!1650088) (not b!1649603) (not b!1649964) (not d!497334) (not b_next!45563) (not d!497448) (not b_lambda!51873) (not d!497382) (not b!1650074) (not tb!94499) (not b!1650038) (not d!497326) (not b!1650065) b_and!117153 (not b!1649774) (not b!1650046) (not b!1649757) (not b!1649565) (not d!497444) (not b!1649594) (not d!497420) tp_is_empty!7365 (not d!497432) (not d!497392) (not b!1649759) (not b!1649966) (not b!1650058) (not b!1649735) b_and!117185 (not b_lambda!51875) (not d!497378) (not b!1649561) b_and!117195 (not d!497384) (not b!1650087) b_and!117193 (not d!497434) (not b!1650020) (not b!1649564) (not b!1650032) (not d!497414) (not b!1650031) (not b!1650094) (not b_next!45547) (not b!1649563) (not b!1649722) (not d!497328) (not b!1649568) (not d!497248) (not b!1649842) (not tb!94479) (not b!1650060) (not b!1649762) (not b_next!45561) (not d!497438) (not d!497316) (not d!497442) b_and!117187 (not b!1650059) (not d!497272) (not b!1650075) (not b!1650089))
(check-sat (not b_next!45559) (not b_next!45543) (not b_next!45545) (not b_next!45549) (not b_next!45565) b_and!117189 (not b_next!45563) b_and!117153 b_and!117193 (not b_next!45547) (not b_next!45561) b_and!117187 b_and!117191 b_and!117149 b_and!117185 b_and!117195)
(get-model)

(declare-fun d!497482 () Bool)

(declare-fun lt!612245 () Int)

(assert (=> d!497482 (>= lt!612245 0)))

(declare-fun e!1058297 () Int)

(assert (=> d!497482 (= lt!612245 e!1058297)))

(declare-fun c!268305 () Bool)

(assert (=> d!497482 (= c!268305 ((_ is Nil!18209) lt!612102))))

(assert (=> d!497482 (= (size!14501 lt!612102) lt!612245)))

(declare-fun b!1650166 () Bool)

(assert (=> b!1650166 (= e!1058297 0)))

(declare-fun b!1650167 () Bool)

(assert (=> b!1650167 (= e!1058297 (+ 1 (size!14501 (t!150804 lt!612102))))))

(assert (= (and d!497482 c!268305) b!1650166))

(assert (= (and d!497482 (not c!268305)) b!1650167))

(declare-fun m!1999089 () Bool)

(assert (=> b!1650167 m!1999089))

(assert (=> b!1649873 d!497482))

(declare-fun d!497484 () Bool)

(declare-fun lt!612246 () Int)

(assert (=> d!497484 (>= lt!612246 0)))

(declare-fun e!1058298 () Int)

(assert (=> d!497484 (= lt!612246 e!1058298)))

(declare-fun c!268306 () Bool)

(assert (=> d!497484 (= c!268306 ((_ is Nil!18209) lt!611596))))

(assert (=> d!497484 (= (size!14501 lt!611596) lt!612246)))

(declare-fun b!1650168 () Bool)

(assert (=> b!1650168 (= e!1058298 0)))

(declare-fun b!1650169 () Bool)

(assert (=> b!1650169 (= e!1058298 (+ 1 (size!14501 (t!150804 lt!611596))))))

(assert (= (and d!497484 c!268306) b!1650168))

(assert (= (and d!497484 (not c!268306)) b!1650169))

(declare-fun m!1999091 () Bool)

(assert (=> b!1650169 m!1999091))

(assert (=> b!1649873 d!497484))

(declare-fun d!497486 () Bool)

(declare-fun lt!612247 () Int)

(assert (=> d!497486 (>= lt!612247 0)))

(declare-fun e!1058299 () Int)

(assert (=> d!497486 (= lt!612247 e!1058299)))

(declare-fun c!268307 () Bool)

(assert (=> d!497486 (= c!268307 ((_ is Nil!18209) lt!611591))))

(assert (=> d!497486 (= (size!14501 lt!611591) lt!612247)))

(declare-fun b!1650170 () Bool)

(assert (=> b!1650170 (= e!1058299 0)))

(declare-fun b!1650171 () Bool)

(assert (=> b!1650171 (= e!1058299 (+ 1 (size!14501 (t!150804 lt!611591))))))

(assert (= (and d!497486 c!268307) b!1650170))

(assert (= (and d!497486 (not c!268307)) b!1650171))

(declare-fun m!1999093 () Bool)

(assert (=> b!1650171 m!1999093))

(assert (=> b!1649873 d!497486))

(declare-fun d!497488 () Bool)

(declare-fun lt!612250 () Token!5988)

(assert (=> d!497488 (= lt!612250 (apply!4806 (list!7242 (_1!10343 lt!612192)) 0))))

(declare-fun apply!4810 (Conc!6071 Int) Token!5988)

(assert (=> d!497488 (= lt!612250 (apply!4810 (c!268211 (_1!10343 lt!612192)) 0))))

(declare-fun e!1058304 () Bool)

(assert (=> d!497488 e!1058304))

(declare-fun res!739607 () Bool)

(assert (=> d!497488 (=> (not res!739607) (not e!1058304))))

(assert (=> d!497488 (= res!739607 (<= 0 0))))

(assert (=> d!497488 (= (apply!4805 (_1!10343 lt!612192) 0) lt!612250)))

(declare-fun b!1650180 () Bool)

(assert (=> b!1650180 (= e!1058304 (< 0 (size!14503 (_1!10343 lt!612192))))))

(assert (= (and d!497488 res!739607) b!1650180))

(declare-fun m!1999107 () Bool)

(assert (=> d!497488 m!1999107))

(assert (=> d!497488 m!1999107))

(declare-fun m!1999109 () Bool)

(assert (=> d!497488 m!1999109))

(declare-fun m!1999111 () Bool)

(assert (=> d!497488 m!1999111))

(assert (=> b!1650180 m!1998941))

(assert (=> b!1650031 d!497488))

(declare-fun d!497492 () Bool)

(assert (=> d!497492 (= (inv!23566 (tag!3491 (h!23612 (t!150806 rules!1846)))) (= (mod (str.len (value!101185 (tag!3491 (h!23612 (t!150806 rules!1846))))) 2) 0))))

(assert (=> b!1650075 d!497492))

(declare-fun d!497494 () Bool)

(declare-fun res!739608 () Bool)

(declare-fun e!1058305 () Bool)

(assert (=> d!497494 (=> (not res!739608) (not e!1058305))))

(assert (=> d!497494 (= res!739608 (semiInverseModEq!1241 (toChars!4517 (transformation!3211 (h!23612 (t!150806 rules!1846)))) (toValue!4658 (transformation!3211 (h!23612 (t!150806 rules!1846))))))))

(assert (=> d!497494 (= (inv!23569 (transformation!3211 (h!23612 (t!150806 rules!1846)))) e!1058305)))

(declare-fun b!1650181 () Bool)

(assert (=> b!1650181 (= e!1058305 (equivClasses!1182 (toChars!4517 (transformation!3211 (h!23612 (t!150806 rules!1846)))) (toValue!4658 (transformation!3211 (h!23612 (t!150806 rules!1846))))))))

(assert (= (and d!497494 res!739608) b!1650181))

(declare-fun m!1999113 () Bool)

(assert (=> d!497494 m!1999113))

(declare-fun m!1999115 () Bool)

(assert (=> b!1650181 m!1999115))

(assert (=> b!1650075 d!497494))

(declare-fun d!497496 () Bool)

(assert (=> d!497496 (= (get!5304 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!612092)))) (v!24634 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!612092)))))))

(assert (=> b!1649841 d!497496))

(declare-fun b!1650216 () Bool)

(declare-fun e!1058331 () Option!3460)

(declare-fun e!1058332 () Option!3460)

(assert (=> b!1650216 (= e!1058331 e!1058332)))

(declare-fun c!268321 () Bool)

(assert (=> b!1650216 (= c!268321 (and ((_ is Cons!18211) rules!1846) (not (= (tag!3491 (h!23612 rules!1846)) (tag!3491 (rule!5069 lt!612092))))))))

(declare-fun b!1650217 () Bool)

(declare-fun e!1058330 () Bool)

(declare-fun e!1058329 () Bool)

(assert (=> b!1650217 (= e!1058330 e!1058329)))

(declare-fun res!739621 () Bool)

(assert (=> b!1650217 (=> (not res!739621) (not e!1058329))))

(declare-fun lt!612276 () Option!3460)

(assert (=> b!1650217 (= res!739621 (contains!3174 rules!1846 (get!5304 lt!612276)))))

(declare-fun b!1650218 () Bool)

(assert (=> b!1650218 (= e!1058329 (= (tag!3491 (get!5304 lt!612276)) (tag!3491 (rule!5069 lt!612092))))))

(declare-fun b!1650219 () Bool)

(assert (=> b!1650219 (= e!1058331 (Some!3459 (h!23612 rules!1846)))))

(declare-fun d!497498 () Bool)

(assert (=> d!497498 e!1058330))

(declare-fun res!739622 () Bool)

(assert (=> d!497498 (=> res!739622 e!1058330)))

(declare-fun isEmpty!11253 (Option!3460) Bool)

(assert (=> d!497498 (= res!739622 (isEmpty!11253 lt!612276))))

(assert (=> d!497498 (= lt!612276 e!1058331)))

(declare-fun c!268320 () Bool)

(assert (=> d!497498 (= c!268320 (and ((_ is Cons!18211) rules!1846) (= (tag!3491 (h!23612 rules!1846)) (tag!3491 (rule!5069 lt!612092)))))))

(assert (=> d!497498 (rulesInvariant!2509 thiss!17113 rules!1846)))

(assert (=> d!497498 (= (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!612092))) lt!612276)))

(declare-fun b!1650220 () Bool)

(declare-fun lt!612274 () Unit!30315)

(declare-fun lt!612275 () Unit!30315)

(assert (=> b!1650220 (= lt!612274 lt!612275)))

(assert (=> b!1650220 (rulesInvariant!2509 thiss!17113 (t!150806 rules!1846))))

(declare-fun lemmaInvariantOnRulesThenOnTail!103 (LexerInterface!2840 Rule!6222 List!18281) Unit!30315)

(assert (=> b!1650220 (= lt!612275 (lemmaInvariantOnRulesThenOnTail!103 thiss!17113 (h!23612 rules!1846) (t!150806 rules!1846)))))

(assert (=> b!1650220 (= e!1058332 (getRuleFromTag!316 thiss!17113 (t!150806 rules!1846) (tag!3491 (rule!5069 lt!612092))))))

(declare-fun b!1650221 () Bool)

(assert (=> b!1650221 (= e!1058332 None!3459)))

(assert (= (and d!497498 c!268320) b!1650219))

(assert (= (and d!497498 (not c!268320)) b!1650216))

(assert (= (and b!1650216 c!268321) b!1650220))

(assert (= (and b!1650216 (not c!268321)) b!1650221))

(assert (= (and d!497498 (not res!739622)) b!1650217))

(assert (= (and b!1650217 res!739621) b!1650218))

(declare-fun m!1999161 () Bool)

(assert (=> b!1650217 m!1999161))

(assert (=> b!1650217 m!1999161))

(declare-fun m!1999167 () Bool)

(assert (=> b!1650217 m!1999167))

(assert (=> b!1650218 m!1999161))

(declare-fun m!1999169 () Bool)

(assert (=> d!497498 m!1999169))

(assert (=> d!497498 m!1997817))

(declare-fun m!1999171 () Bool)

(assert (=> b!1650220 m!1999171))

(declare-fun m!1999173 () Bool)

(assert (=> b!1650220 m!1999173))

(declare-fun m!1999175 () Bool)

(assert (=> b!1650220 m!1999175))

(assert (=> b!1649841 d!497498))

(declare-fun d!497522 () Bool)

(declare-fun lt!612278 () Int)

(assert (=> d!497522 (>= lt!612278 0)))

(declare-fun e!1058333 () Int)

(assert (=> d!497522 (= lt!612278 e!1058333)))

(declare-fun c!268322 () Bool)

(assert (=> d!497522 (= c!268322 ((_ is Nil!18209) lt!612194))))

(assert (=> d!497522 (= (size!14501 lt!612194) lt!612278)))

(declare-fun b!1650222 () Bool)

(assert (=> b!1650222 (= e!1058333 0)))

(declare-fun b!1650223 () Bool)

(assert (=> b!1650223 (= e!1058333 (+ 1 (size!14501 (t!150804 lt!612194))))))

(assert (= (and d!497522 c!268322) b!1650222))

(assert (= (and d!497522 (not c!268322)) b!1650223))

(declare-fun m!1999177 () Bool)

(assert (=> b!1650223 m!1999177))

(assert (=> b!1650042 d!497522))

(assert (=> b!1650042 d!497484))

(declare-fun d!497524 () Bool)

(declare-fun lt!612279 () Int)

(assert (=> d!497524 (>= lt!612279 0)))

(declare-fun e!1058334 () Int)

(assert (=> d!497524 (= lt!612279 e!1058334)))

(declare-fun c!268323 () Bool)

(assert (=> d!497524 (= c!268323 ((_ is Nil!18209) lt!611595))))

(assert (=> d!497524 (= (size!14501 lt!611595) lt!612279)))

(declare-fun b!1650224 () Bool)

(assert (=> b!1650224 (= e!1058334 0)))

(declare-fun b!1650225 () Bool)

(assert (=> b!1650225 (= e!1058334 (+ 1 (size!14501 (t!150804 lt!611595))))))

(assert (= (and d!497524 c!268323) b!1650224))

(assert (= (and d!497524 (not c!268323)) b!1650225))

(declare-fun m!1999179 () Bool)

(assert (=> b!1650225 m!1999179))

(assert (=> b!1650042 d!497524))

(declare-fun d!497526 () Bool)

(assert (=> d!497526 (= (list!7241 (_2!10344 (get!5303 lt!611941))) (list!7244 (c!268209 (_2!10344 (get!5303 lt!611941)))))))

(declare-fun bs!396449 () Bool)

(assert (= bs!396449 d!497526))

(declare-fun m!1999181 () Bool)

(assert (=> bs!396449 m!1999181))

(assert (=> b!1649755 d!497526))

(declare-fun d!497528 () Bool)

(assert (=> d!497528 (= (get!5302 (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))) (v!24626 (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))))

(assert (=> b!1649755 d!497528))

(declare-fun d!497530 () Bool)

(assert (=> d!497530 (= (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))) (list!7244 (c!268209 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457))))))))

(declare-fun bs!396450 () Bool)

(assert (= bs!396450 d!497530))

(declare-fun m!1999183 () Bool)

(assert (=> bs!396450 m!1999183))

(assert (=> b!1649755 d!497530))

(declare-fun b!1650226 () Bool)

(declare-fun res!739625 () Bool)

(declare-fun e!1058335 () Bool)

(assert (=> b!1650226 (=> (not res!739625) (not e!1058335))))

(declare-fun lt!612280 () Option!3458)

(assert (=> b!1650226 (= res!739625 (= (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!612280)))) (originalCharacters!4025 (_1!10345 (get!5302 lt!612280)))))))

(declare-fun d!497532 () Bool)

(declare-fun e!1058336 () Bool)

(assert (=> d!497532 e!1058336))

(declare-fun res!739629 () Bool)

(assert (=> d!497532 (=> res!739629 e!1058336)))

(assert (=> d!497532 (= res!739629 (isEmpty!11244 lt!612280))))

(declare-fun e!1058337 () Option!3458)

(assert (=> d!497532 (= lt!612280 e!1058337)))

(declare-fun c!268324 () Bool)

(assert (=> d!497532 (= c!268324 (and ((_ is Cons!18211) rules!1846) ((_ is Nil!18211) (t!150806 rules!1846))))))

(declare-fun lt!612284 () Unit!30315)

(declare-fun lt!612283 () Unit!30315)

(assert (=> d!497532 (= lt!612284 lt!612283)))

(assert (=> d!497532 (isPrefix!1469 (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))) (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))

(assert (=> d!497532 (= lt!612283 (lemmaIsPrefixRefl!995 (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))) (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457))))))))

(assert (=> d!497532 (rulesValidInductive!1017 thiss!17113 rules!1846)))

(assert (=> d!497532 (= (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457))))) lt!612280)))

(declare-fun b!1650227 () Bool)

(declare-fun res!739627 () Bool)

(assert (=> b!1650227 (=> (not res!739627) (not e!1058335))))

(assert (=> b!1650227 (= res!739627 (< (size!14501 (_2!10345 (get!5302 lt!612280))) (size!14501 (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))))

(declare-fun b!1650228 () Bool)

(declare-fun res!739628 () Bool)

(assert (=> b!1650228 (=> (not res!739628) (not e!1058335))))

(assert (=> b!1650228 (= res!739628 (= (++!4922 (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!612280)))) (_2!10345 (get!5302 lt!612280))) (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457))))))))

(declare-fun b!1650229 () Bool)

(assert (=> b!1650229 (= e!1058335 (contains!3174 rules!1846 (rule!5069 (_1!10345 (get!5302 lt!612280)))))))

(declare-fun b!1650230 () Bool)

(declare-fun res!739626 () Bool)

(assert (=> b!1650230 (=> (not res!739626) (not e!1058335))))

(assert (=> b!1650230 (= res!739626 (matchR!2032 (regex!3211 (rule!5069 (_1!10345 (get!5302 lt!612280)))) (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!612280))))))))

(declare-fun b!1650231 () Bool)

(assert (=> b!1650231 (= e!1058336 e!1058335)))

(declare-fun res!739624 () Bool)

(assert (=> b!1650231 (=> (not res!739624) (not e!1058335))))

(assert (=> b!1650231 (= res!739624 (isDefined!2813 lt!612280))))

(declare-fun call!105849 () Option!3458)

(declare-fun bm!105844 () Bool)

(assert (=> bm!105844 (= call!105849 (maxPrefixOneRule!811 thiss!17113 (h!23612 rules!1846) (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457))))))))

(declare-fun b!1650232 () Bool)

(assert (=> b!1650232 (= e!1058337 call!105849)))

(declare-fun b!1650233 () Bool)

(declare-fun lt!612281 () Option!3458)

(declare-fun lt!612282 () Option!3458)

(assert (=> b!1650233 (= e!1058337 (ite (and ((_ is None!3457) lt!612281) ((_ is None!3457) lt!612282)) None!3457 (ite ((_ is None!3457) lt!612282) lt!612281 (ite ((_ is None!3457) lt!612281) lt!612282 (ite (>= (size!14498 (_1!10345 (v!24626 lt!612281))) (size!14498 (_1!10345 (v!24626 lt!612282)))) lt!612281 lt!612282)))))))

(assert (=> b!1650233 (= lt!612281 call!105849)))

(assert (=> b!1650233 (= lt!612282 (maxPrefix!1402 thiss!17113 (t!150806 rules!1846) (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457))))))))

(declare-fun b!1650234 () Bool)

(declare-fun res!739623 () Bool)

(assert (=> b!1650234 (=> (not res!739623) (not e!1058335))))

(assert (=> b!1650234 (= res!739623 (= (value!101186 (_1!10345 (get!5302 lt!612280))) (apply!4804 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!612280)))) (seqFromList!2161 (originalCharacters!4025 (_1!10345 (get!5302 lt!612280)))))))))

(assert (= (and d!497532 c!268324) b!1650232))

(assert (= (and d!497532 (not c!268324)) b!1650233))

(assert (= (or b!1650232 b!1650233) bm!105844))

(assert (= (and d!497532 (not res!739629)) b!1650231))

(assert (= (and b!1650231 res!739624) b!1650226))

(assert (= (and b!1650226 res!739625) b!1650227))

(assert (= (and b!1650227 res!739627) b!1650228))

(assert (= (and b!1650228 res!739628) b!1650234))

(assert (= (and b!1650234 res!739623) b!1650230))

(assert (= (and b!1650230 res!739626) b!1650229))

(declare-fun m!1999185 () Bool)

(assert (=> b!1650228 m!1999185))

(declare-fun m!1999187 () Bool)

(assert (=> b!1650228 m!1999187))

(assert (=> b!1650228 m!1999187))

(declare-fun m!1999189 () Bool)

(assert (=> b!1650228 m!1999189))

(assert (=> b!1650228 m!1999189))

(declare-fun m!1999191 () Bool)

(assert (=> b!1650228 m!1999191))

(assert (=> b!1650230 m!1999185))

(assert (=> b!1650230 m!1999187))

(assert (=> b!1650230 m!1999187))

(assert (=> b!1650230 m!1999189))

(assert (=> b!1650230 m!1999189))

(declare-fun m!1999193 () Bool)

(assert (=> b!1650230 m!1999193))

(declare-fun m!1999195 () Bool)

(assert (=> d!497532 m!1999195))

(assert (=> d!497532 m!1998431))

(assert (=> d!497532 m!1998431))

(declare-fun m!1999197 () Bool)

(assert (=> d!497532 m!1999197))

(assert (=> d!497532 m!1998431))

(assert (=> d!497532 m!1998431))

(declare-fun m!1999199 () Bool)

(assert (=> d!497532 m!1999199))

(assert (=> d!497532 m!1997961))

(assert (=> b!1650229 m!1999185))

(declare-fun m!1999201 () Bool)

(assert (=> b!1650229 m!1999201))

(assert (=> b!1650226 m!1999185))

(assert (=> b!1650226 m!1999187))

(assert (=> b!1650226 m!1999187))

(assert (=> b!1650226 m!1999189))

(assert (=> b!1650233 m!1998431))

(declare-fun m!1999203 () Bool)

(assert (=> b!1650233 m!1999203))

(assert (=> b!1650234 m!1999185))

(declare-fun m!1999205 () Bool)

(assert (=> b!1650234 m!1999205))

(assert (=> b!1650234 m!1999205))

(declare-fun m!1999207 () Bool)

(assert (=> b!1650234 m!1999207))

(assert (=> b!1650227 m!1999185))

(declare-fun m!1999209 () Bool)

(assert (=> b!1650227 m!1999209))

(assert (=> b!1650227 m!1998431))

(declare-fun m!1999211 () Bool)

(assert (=> b!1650227 m!1999211))

(assert (=> bm!105844 m!1998431))

(declare-fun m!1999213 () Bool)

(assert (=> bm!105844 m!1999213))

(declare-fun m!1999215 () Bool)

(assert (=> b!1650231 m!1999215))

(assert (=> b!1649755 d!497532))

(declare-fun d!497534 () Bool)

(assert (=> d!497534 (= (get!5303 lt!611941) (v!24625 lt!611941))))

(assert (=> b!1649755 d!497534))

(declare-fun d!497536 () Bool)

(declare-fun lt!612287 () Int)

(declare-fun size!14508 (List!18282) Int)

(assert (=> d!497536 (= lt!612287 (size!14508 (list!7242 (_1!10343 lt!612099))))))

(declare-fun size!14509 (Conc!6071) Int)

(assert (=> d!497536 (= lt!612287 (size!14509 (c!268211 (_1!10343 lt!612099))))))

(assert (=> d!497536 (= (size!14503 (_1!10343 lt!612099)) lt!612287)))

(declare-fun bs!396451 () Bool)

(assert (= bs!396451 d!497536))

(assert (=> bs!396451 m!1998705))

(assert (=> bs!396451 m!1998705))

(declare-fun m!1999217 () Bool)

(assert (=> bs!396451 m!1999217))

(declare-fun m!1999219 () Bool)

(assert (=> bs!396451 m!1999219))

(assert (=> d!497384 d!497536))

(declare-fun b!1650387 () Bool)

(declare-fun lt!612401 () Option!3457)

(declare-fun lt!612400 () tuple2!17882)

(declare-fun lexRec!374 (LexerInterface!2840 List!18281 BalanceConc!12084) tuple2!17882)

(assert (=> b!1650387 (= lt!612400 (lexRec!374 thiss!17113 rules!1846 (_2!10344 (v!24625 lt!612401))))))

(declare-fun e!1058413 () tuple2!17882)

(assert (=> b!1650387 (= e!1058413 (tuple2!17883 (prepend!775 (_1!10343 lt!612400) (_1!10344 (v!24625 lt!612401))) (_2!10343 lt!612400)))))

(declare-fun b!1650388 () Bool)

(declare-fun e!1058414 () tuple2!17882)

(assert (=> b!1650388 (= e!1058414 (tuple2!17883 (BalanceConc!12087 Empty!6071) lt!611597))))

(declare-fun b!1650389 () Bool)

(declare-fun lt!612416 () tuple2!17882)

(declare-fun e!1058415 () Bool)

(assert (=> b!1650389 (= e!1058415 (= (list!7241 (_2!10343 lt!612416)) (list!7241 (_2!10343 (lexRec!374 thiss!17113 rules!1846 lt!611597)))))))

(declare-fun b!1650390 () Bool)

(declare-fun lt!612421 () tuple2!17882)

(declare-fun lt!612403 () Option!3457)

(assert (=> b!1650390 (= lt!612421 (lexRec!374 thiss!17113 rules!1846 (_2!10344 (v!24625 lt!612403))))))

(assert (=> b!1650390 (= e!1058414 (tuple2!17883 (prepend!775 (_1!10343 lt!612421) (_1!10344 (v!24625 lt!612403))) (_2!10343 lt!612421)))))

(declare-fun b!1650391 () Bool)

(declare-fun lt!612407 () BalanceConc!12084)

(assert (=> b!1650391 (= e!1058413 (tuple2!17883 (BalanceConc!12087 Empty!6071) lt!612407))))

(declare-fun b!1650392 () Bool)

(declare-fun e!1058416 () tuple2!17882)

(assert (=> b!1650392 (= e!1058416 (tuple2!17883 (BalanceConc!12087 Empty!6071) lt!611597))))

(declare-fun d!497538 () Bool)

(assert (=> d!497538 e!1058415))

(declare-fun res!739687 () Bool)

(assert (=> d!497538 (=> (not res!739687) (not e!1058415))))

(assert (=> d!497538 (= res!739687 (= (list!7242 (_1!10343 lt!612416)) (list!7242 (_1!10343 (lexRec!374 thiss!17113 rules!1846 lt!611597)))))))

(assert (=> d!497538 (= lt!612416 e!1058416)))

(declare-fun c!268372 () Bool)

(declare-fun lt!612413 () Option!3457)

(assert (=> d!497538 (= c!268372 ((_ is Some!3456) lt!612413))))

(declare-fun maxPrefixZipperSequenceV2!269 (LexerInterface!2840 List!18281 BalanceConc!12084 BalanceConc!12084) Option!3457)

(assert (=> d!497538 (= lt!612413 (maxPrefixZipperSequenceV2!269 thiss!17113 rules!1846 lt!611597 lt!611597))))

(declare-fun lt!612393 () Unit!30315)

(declare-fun lt!612402 () Unit!30315)

(assert (=> d!497538 (= lt!612393 lt!612402)))

(declare-fun lt!612414 () List!18279)

(declare-fun lt!612406 () List!18279)

(declare-fun isSuffix!420 (List!18279 List!18279) Bool)

(assert (=> d!497538 (isSuffix!420 lt!612414 (++!4922 lt!612406 lt!612414))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!321 (List!18279 List!18279) Unit!30315)

(assert (=> d!497538 (= lt!612402 (lemmaConcatTwoListThenFSndIsSuffix!321 lt!612406 lt!612414))))

(assert (=> d!497538 (= lt!612414 (list!7241 lt!611597))))

(assert (=> d!497538 (= lt!612406 (list!7241 (BalanceConc!12085 Empty!6070)))))

(assert (=> d!497538 (= (lexTailRecV2!594 thiss!17113 rules!1846 lt!611597 (BalanceConc!12085 Empty!6070) lt!611597 (BalanceConc!12087 Empty!6071)) lt!612416)))

(declare-fun lt!612397 () BalanceConc!12084)

(declare-fun b!1650393 () Bool)

(declare-fun append!557 (BalanceConc!12086 Token!5988) BalanceConc!12086)

(assert (=> b!1650393 (= e!1058416 (lexTailRecV2!594 thiss!17113 rules!1846 lt!611597 lt!612397 (_2!10344 (v!24625 lt!612413)) (append!557 (BalanceConc!12087 Empty!6071) (_1!10344 (v!24625 lt!612413)))))))

(declare-fun lt!612410 () tuple2!17882)

(assert (=> b!1650393 (= lt!612410 (lexRec!374 thiss!17113 rules!1846 (_2!10344 (v!24625 lt!612413))))))

(declare-fun lt!612391 () List!18279)

(assert (=> b!1650393 (= lt!612391 (list!7241 (BalanceConc!12085 Empty!6070)))))

(declare-fun lt!612419 () List!18279)

(assert (=> b!1650393 (= lt!612419 (list!7241 (charsOf!1860 (_1!10344 (v!24625 lt!612413)))))))

(declare-fun lt!612395 () List!18279)

(assert (=> b!1650393 (= lt!612395 (list!7241 (_2!10344 (v!24625 lt!612413))))))

(declare-fun lt!612411 () Unit!30315)

(declare-fun lemmaConcatAssociativity!1024 (List!18279 List!18279 List!18279) Unit!30315)

(assert (=> b!1650393 (= lt!612411 (lemmaConcatAssociativity!1024 lt!612391 lt!612419 lt!612395))))

(assert (=> b!1650393 (= (++!4922 (++!4922 lt!612391 lt!612419) lt!612395) (++!4922 lt!612391 (++!4922 lt!612419 lt!612395)))))

(declare-fun lt!612415 () Unit!30315)

(assert (=> b!1650393 (= lt!612415 lt!612411)))

(assert (=> b!1650393 (= lt!612403 (maxPrefixZipperSequence!717 thiss!17113 rules!1846 lt!611597))))

(declare-fun c!268370 () Bool)

(assert (=> b!1650393 (= c!268370 ((_ is Some!3456) lt!612403))))

(assert (=> b!1650393 (= (lexRec!374 thiss!17113 rules!1846 lt!611597) e!1058414)))

(declare-fun lt!612405 () Unit!30315)

(declare-fun Unit!30355 () Unit!30315)

(assert (=> b!1650393 (= lt!612405 Unit!30355)))

(declare-fun lt!612409 () List!18282)

(assert (=> b!1650393 (= lt!612409 (list!7242 (BalanceConc!12087 Empty!6071)))))

(declare-fun lt!612418 () List!18282)

(assert (=> b!1650393 (= lt!612418 (Cons!18212 (_1!10344 (v!24625 lt!612413)) Nil!18212))))

(declare-fun lt!612398 () List!18282)

(assert (=> b!1650393 (= lt!612398 (list!7242 (_1!10343 lt!612410)))))

(declare-fun lt!612412 () Unit!30315)

(declare-fun lemmaConcatAssociativity!1025 (List!18282 List!18282 List!18282) Unit!30315)

(assert (=> b!1650393 (= lt!612412 (lemmaConcatAssociativity!1025 lt!612409 lt!612418 lt!612398))))

(declare-fun ++!4926 (List!18282 List!18282) List!18282)

(assert (=> b!1650393 (= (++!4926 (++!4926 lt!612409 lt!612418) lt!612398) (++!4926 lt!612409 (++!4926 lt!612418 lt!612398)))))

(declare-fun lt!612420 () Unit!30315)

(assert (=> b!1650393 (= lt!612420 lt!612412)))

(declare-fun lt!612392 () List!18279)

(assert (=> b!1650393 (= lt!612392 (++!4922 (list!7241 (BalanceConc!12085 Empty!6070)) (list!7241 (charsOf!1860 (_1!10344 (v!24625 lt!612413))))))))

(declare-fun lt!612396 () List!18279)

(assert (=> b!1650393 (= lt!612396 (list!7241 (_2!10344 (v!24625 lt!612413))))))

(declare-fun lt!612424 () List!18282)

(assert (=> b!1650393 (= lt!612424 (list!7242 (append!557 (BalanceConc!12087 Empty!6071) (_1!10344 (v!24625 lt!612413)))))))

(declare-fun lt!612422 () Unit!30315)

(declare-fun lemmaLexThenLexPrefix!262 (LexerInterface!2840 List!18281 List!18279 List!18279 List!18282 List!18282 List!18279) Unit!30315)

(assert (=> b!1650393 (= lt!612422 (lemmaLexThenLexPrefix!262 thiss!17113 rules!1846 lt!612392 lt!612396 lt!612424 (list!7242 (_1!10343 lt!612410)) (list!7241 (_2!10343 lt!612410))))))

(assert (=> b!1650393 (= (lexList!871 thiss!17113 rules!1846 lt!612392) (tuple2!17891 lt!612424 Nil!18209))))

(declare-fun lt!612394 () Unit!30315)

(assert (=> b!1650393 (= lt!612394 lt!612422)))

(assert (=> b!1650393 (= lt!612407 (++!4921 (BalanceConc!12085 Empty!6070) (charsOf!1860 (_1!10344 (v!24625 lt!612413)))))))

(assert (=> b!1650393 (= lt!612401 (maxPrefixZipperSequence!717 thiss!17113 rules!1846 lt!612407))))

(declare-fun c!268371 () Bool)

(assert (=> b!1650393 (= c!268371 ((_ is Some!3456) lt!612401))))

(assert (=> b!1650393 (= (lexRec!374 thiss!17113 rules!1846 (++!4921 (BalanceConc!12085 Empty!6070) (charsOf!1860 (_1!10344 (v!24625 lt!612413))))) e!1058413)))

(declare-fun lt!612404 () Unit!30315)

(declare-fun Unit!30356 () Unit!30315)

(assert (=> b!1650393 (= lt!612404 Unit!30356)))

(assert (=> b!1650393 (= lt!612397 (++!4921 (BalanceConc!12085 Empty!6070) (charsOf!1860 (_1!10344 (v!24625 lt!612413)))))))

(declare-fun lt!612399 () List!18279)

(assert (=> b!1650393 (= lt!612399 (list!7241 lt!612397))))

(declare-fun lt!612423 () List!18279)

(assert (=> b!1650393 (= lt!612423 (list!7241 (_2!10344 (v!24625 lt!612413))))))

(declare-fun lt!612417 () Unit!30315)

(assert (=> b!1650393 (= lt!612417 (lemmaConcatTwoListThenFSndIsSuffix!321 lt!612399 lt!612423))))

(assert (=> b!1650393 (isSuffix!420 lt!612423 (++!4922 lt!612399 lt!612423))))

(declare-fun lt!612408 () Unit!30315)

(assert (=> b!1650393 (= lt!612408 lt!612417)))

(assert (= (and d!497538 c!268372) b!1650393))

(assert (= (and d!497538 (not c!268372)) b!1650392))

(assert (= (and b!1650393 c!268370) b!1650390))

(assert (= (and b!1650393 (not c!268370)) b!1650388))

(assert (= (and b!1650393 c!268371) b!1650387))

(assert (= (and b!1650393 (not c!268371)) b!1650391))

(assert (= (and d!497538 res!739687) b!1650389))

(declare-fun m!1999341 () Bool)

(assert (=> b!1650390 m!1999341))

(declare-fun m!1999343 () Bool)

(assert (=> b!1650390 m!1999343))

(declare-fun m!1999345 () Bool)

(assert (=> b!1650393 m!1999345))

(declare-fun m!1999347 () Bool)

(assert (=> b!1650393 m!1999347))

(declare-fun m!1999349 () Bool)

(assert (=> b!1650393 m!1999349))

(declare-fun m!1999351 () Bool)

(assert (=> b!1650393 m!1999351))

(declare-fun m!1999353 () Bool)

(assert (=> b!1650393 m!1999353))

(declare-fun m!1999355 () Bool)

(assert (=> b!1650393 m!1999355))

(declare-fun m!1999357 () Bool)

(assert (=> b!1650393 m!1999357))

(declare-fun m!1999359 () Bool)

(assert (=> b!1650393 m!1999359))

(declare-fun m!1999361 () Bool)

(assert (=> b!1650393 m!1999361))

(declare-fun m!1999363 () Bool)

(assert (=> b!1650393 m!1999363))

(declare-fun m!1999365 () Bool)

(assert (=> b!1650393 m!1999365))

(assert (=> b!1650393 m!1999345))

(declare-fun m!1999367 () Bool)

(assert (=> b!1650393 m!1999367))

(declare-fun m!1999369 () Bool)

(assert (=> b!1650393 m!1999369))

(assert (=> b!1650393 m!1999349))

(declare-fun m!1999371 () Bool)

(assert (=> b!1650393 m!1999371))

(declare-fun m!1999373 () Bool)

(assert (=> b!1650393 m!1999373))

(declare-fun m!1999375 () Bool)

(assert (=> b!1650393 m!1999375))

(declare-fun m!1999377 () Bool)

(assert (=> b!1650393 m!1999377))

(declare-fun m!1999379 () Bool)

(assert (=> b!1650393 m!1999379))

(assert (=> b!1650393 m!1999377))

(declare-fun m!1999381 () Bool)

(assert (=> b!1650393 m!1999381))

(declare-fun m!1999383 () Bool)

(assert (=> b!1650393 m!1999383))

(assert (=> b!1650393 m!1999347))

(declare-fun m!1999385 () Bool)

(assert (=> b!1650393 m!1999385))

(declare-fun m!1999387 () Bool)

(assert (=> b!1650393 m!1999387))

(declare-fun m!1999389 () Bool)

(assert (=> b!1650393 m!1999389))

(declare-fun m!1999391 () Bool)

(assert (=> b!1650393 m!1999391))

(declare-fun m!1999393 () Bool)

(assert (=> b!1650393 m!1999393))

(declare-fun m!1999395 () Bool)

(assert (=> b!1650393 m!1999395))

(declare-fun m!1999397 () Bool)

(assert (=> b!1650393 m!1999397))

(assert (=> b!1650393 m!1999381))

(declare-fun m!1999399 () Bool)

(assert (=> b!1650393 m!1999399))

(assert (=> b!1650393 m!1999395))

(declare-fun m!1999401 () Bool)

(assert (=> b!1650393 m!1999401))

(assert (=> b!1650393 m!1999373))

(declare-fun m!1999403 () Bool)

(assert (=> b!1650393 m!1999403))

(assert (=> b!1650393 m!1998039))

(assert (=> b!1650393 m!1999385))

(declare-fun m!1999405 () Bool)

(assert (=> b!1650393 m!1999405))

(assert (=> b!1650393 m!1999387))

(assert (=> b!1650393 m!1999347))

(assert (=> b!1650393 m!1999357))

(assert (=> b!1650393 m!1998039))

(assert (=> b!1650393 m!1999371))

(declare-fun m!1999407 () Bool)

(assert (=> b!1650393 m!1999407))

(assert (=> b!1650393 m!1999395))

(declare-fun m!1999409 () Bool)

(assert (=> b!1650387 m!1999409))

(declare-fun m!1999411 () Bool)

(assert (=> b!1650387 m!1999411))

(declare-fun m!1999413 () Bool)

(assert (=> d!497538 m!1999413))

(assert (=> d!497538 m!1999413))

(declare-fun m!1999415 () Bool)

(assert (=> d!497538 m!1999415))

(declare-fun m!1999417 () Bool)

(assert (=> d!497538 m!1999417))

(declare-fun m!1999419 () Bool)

(assert (=> d!497538 m!1999419))

(assert (=> d!497538 m!1997891))

(declare-fun m!1999421 () Bool)

(assert (=> d!497538 m!1999421))

(assert (=> d!497538 m!1999363))

(assert (=> d!497538 m!1998039))

(declare-fun m!1999423 () Bool)

(assert (=> d!497538 m!1999423))

(declare-fun m!1999425 () Bool)

(assert (=> b!1650389 m!1999425))

(assert (=> b!1650389 m!1999363))

(declare-fun m!1999427 () Bool)

(assert (=> b!1650389 m!1999427))

(assert (=> d!497384 d!497538))

(assert (=> d!497282 d!497440))

(declare-fun b!1650408 () Bool)

(declare-fun res!739697 () Bool)

(declare-fun e!1058426 () Bool)

(assert (=> b!1650408 (=> (not res!739697) (not e!1058426))))

(declare-fun lt!612426 () tuple2!17882)

(assert (=> b!1650408 (= res!739697 (= (list!7242 (_1!10343 lt!612426)) (_1!10347 (lexList!871 thiss!17113 rules!1846 (list!7241 (print!1371 thiss!17113 (seqFromList!2162 (t!150807 tokens!457))))))))))

(declare-fun b!1650409 () Bool)

(declare-fun e!1058425 () Bool)

(assert (=> b!1650409 (= e!1058425 (= (_2!10343 lt!612426) (print!1371 thiss!17113 (seqFromList!2162 (t!150807 tokens!457)))))))

(declare-fun b!1650410 () Bool)

(declare-fun e!1058424 () Bool)

(assert (=> b!1650410 (= e!1058425 e!1058424)))

(declare-fun res!739696 () Bool)

(assert (=> b!1650410 (= res!739696 (< (size!14504 (_2!10343 lt!612426)) (size!14504 (print!1371 thiss!17113 (seqFromList!2162 (t!150807 tokens!457))))))))

(assert (=> b!1650410 (=> (not res!739696) (not e!1058424))))

(declare-fun b!1650411 () Bool)

(assert (=> b!1650411 (= e!1058426 (= (list!7241 (_2!10343 lt!612426)) (_2!10347 (lexList!871 thiss!17113 rules!1846 (list!7241 (print!1371 thiss!17113 (seqFromList!2162 (t!150807 tokens!457))))))))))

(declare-fun b!1650412 () Bool)

(assert (=> b!1650412 (= e!1058424 (not (isEmpty!11238 (_1!10343 lt!612426))))))

(declare-fun d!497572 () Bool)

(assert (=> d!497572 e!1058426))

(declare-fun res!739698 () Bool)

(assert (=> d!497572 (=> (not res!739698) (not e!1058426))))

(assert (=> d!497572 (= res!739698 e!1058425)))

(declare-fun c!268376 () Bool)

(assert (=> d!497572 (= c!268376 (> (size!14503 (_1!10343 lt!612426)) 0))))

(assert (=> d!497572 (= lt!612426 (lexTailRecV2!594 thiss!17113 rules!1846 (print!1371 thiss!17113 (seqFromList!2162 (t!150807 tokens!457))) (BalanceConc!12085 Empty!6070) (print!1371 thiss!17113 (seqFromList!2162 (t!150807 tokens!457))) (BalanceConc!12087 Empty!6071)))))

(assert (=> d!497572 (= (lex!1324 thiss!17113 rules!1846 (print!1371 thiss!17113 (seqFromList!2162 (t!150807 tokens!457)))) lt!612426)))

(assert (= (and d!497572 c!268376) b!1650410))

(assert (= (and d!497572 (not c!268376)) b!1650409))

(assert (= (and b!1650410 res!739696) b!1650412))

(assert (= (and d!497572 res!739698) b!1650408))

(assert (= (and b!1650408 res!739697) b!1650411))

(declare-fun m!1999429 () Bool)

(assert (=> b!1650408 m!1999429))

(assert (=> b!1650408 m!1998329))

(declare-fun m!1999431 () Bool)

(assert (=> b!1650408 m!1999431))

(assert (=> b!1650408 m!1999431))

(declare-fun m!1999433 () Bool)

(assert (=> b!1650408 m!1999433))

(declare-fun m!1999435 () Bool)

(assert (=> b!1650411 m!1999435))

(assert (=> b!1650411 m!1998329))

(assert (=> b!1650411 m!1999431))

(assert (=> b!1650411 m!1999431))

(assert (=> b!1650411 m!1999433))

(declare-fun m!1999439 () Bool)

(assert (=> b!1650410 m!1999439))

(assert (=> b!1650410 m!1998329))

(declare-fun m!1999443 () Bool)

(assert (=> b!1650410 m!1999443))

(declare-fun m!1999445 () Bool)

(assert (=> d!497572 m!1999445))

(assert (=> d!497572 m!1998329))

(assert (=> d!497572 m!1998329))

(declare-fun m!1999451 () Bool)

(assert (=> d!497572 m!1999451))

(declare-fun m!1999455 () Bool)

(assert (=> b!1650412 m!1999455))

(assert (=> d!497282 d!497572))

(declare-fun d!497574 () Bool)

(declare-fun lt!612427 () BalanceConc!12084)

(assert (=> d!497574 (= (list!7241 lt!612427) (printList!953 thiss!17113 (list!7242 (seqFromList!2162 (t!150807 tokens!457)))))))

(assert (=> d!497574 (= lt!612427 (printTailRec!891 thiss!17113 (seqFromList!2162 (t!150807 tokens!457)) 0 (BalanceConc!12085 Empty!6070)))))

(assert (=> d!497574 (= (print!1371 thiss!17113 (seqFromList!2162 (t!150807 tokens!457))) lt!612427)))

(declare-fun bs!396460 () Bool)

(assert (= bs!396460 d!497574))

(declare-fun m!1999463 () Bool)

(assert (=> bs!396460 m!1999463))

(assert (=> bs!396460 m!1997905))

(declare-fun m!1999467 () Bool)

(assert (=> bs!396460 m!1999467))

(assert (=> bs!396460 m!1999467))

(declare-fun m!1999469 () Bool)

(assert (=> bs!396460 m!1999469))

(assert (=> bs!396460 m!1997905))

(declare-fun m!1999471 () Bool)

(assert (=> bs!396460 m!1999471))

(assert (=> d!497282 d!497574))

(assert (=> d!497282 d!497394))

(declare-fun d!497580 () Bool)

(assert (=> d!497580 (= (list!7242 (_1!10343 (lex!1324 thiss!17113 rules!1846 (print!1371 thiss!17113 (seqFromList!2162 (t!150807 tokens!457)))))) (list!7246 (c!268211 (_1!10343 (lex!1324 thiss!17113 rules!1846 (print!1371 thiss!17113 (seqFromList!2162 (t!150807 tokens!457))))))))))

(declare-fun bs!396462 () Bool)

(assert (= bs!396462 d!497580))

(declare-fun m!1999473 () Bool)

(assert (=> bs!396462 m!1999473))

(assert (=> d!497282 d!497580))

(declare-fun d!497582 () Bool)

(assert (=> d!497582 true))

(declare-fun order!10879 () Int)

(declare-fun lambda!67676 () Int)

(declare-fun dynLambda!8168 (Int Int) Int)

(assert (=> d!497582 (< (dynLambda!8165 order!10875 (toChars!4517 (transformation!3211 (h!23612 rules!1846)))) (dynLambda!8168 order!10879 lambda!67676))))

(assert (=> d!497582 true))

(assert (=> d!497582 (< (dynLambda!8163 order!10871 (toValue!4658 (transformation!3211 (h!23612 rules!1846)))) (dynLambda!8168 order!10879 lambda!67676))))

(declare-fun Forall!654 (Int) Bool)

(assert (=> d!497582 (= (semiInverseModEq!1241 (toChars!4517 (transformation!3211 (h!23612 rules!1846))) (toValue!4658 (transformation!3211 (h!23612 rules!1846)))) (Forall!654 lambda!67676))))

(declare-fun bs!396463 () Bool)

(assert (= bs!396463 d!497582))

(declare-fun m!1999475 () Bool)

(assert (=> bs!396463 m!1999475))

(assert (=> d!497236 d!497582))

(declare-fun e!1058428 () Bool)

(declare-fun b!1650420 () Bool)

(declare-fun lt!612428 () List!18279)

(assert (=> b!1650420 (= e!1058428 (or (not (= (printList!953 thiss!17113 (t!150807 (Cons!18212 (h!23613 tokens!457) Nil!18212))) Nil!18209)) (= lt!612428 (list!7241 (charsOf!1860 (h!23613 (Cons!18212 (h!23613 tokens!457) Nil!18212)))))))))

(declare-fun b!1650417 () Bool)

(declare-fun e!1058427 () List!18279)

(assert (=> b!1650417 (= e!1058427 (printList!953 thiss!17113 (t!150807 (Cons!18212 (h!23613 tokens!457) Nil!18212))))))

(declare-fun d!497584 () Bool)

(assert (=> d!497584 e!1058428))

(declare-fun res!739699 () Bool)

(assert (=> d!497584 (=> (not res!739699) (not e!1058428))))

(assert (=> d!497584 (= res!739699 (= (content!2529 lt!612428) ((_ map or) (content!2529 (list!7241 (charsOf!1860 (h!23613 (Cons!18212 (h!23613 tokens!457) Nil!18212))))) (content!2529 (printList!953 thiss!17113 (t!150807 (Cons!18212 (h!23613 tokens!457) Nil!18212)))))))))

(assert (=> d!497584 (= lt!612428 e!1058427)))

(declare-fun c!268377 () Bool)

(assert (=> d!497584 (= c!268377 ((_ is Nil!18209) (list!7241 (charsOf!1860 (h!23613 (Cons!18212 (h!23613 tokens!457) Nil!18212))))))))

(assert (=> d!497584 (= (++!4922 (list!7241 (charsOf!1860 (h!23613 (Cons!18212 (h!23613 tokens!457) Nil!18212)))) (printList!953 thiss!17113 (t!150807 (Cons!18212 (h!23613 tokens!457) Nil!18212)))) lt!612428)))

(declare-fun b!1650418 () Bool)

(assert (=> b!1650418 (= e!1058427 (Cons!18209 (h!23610 (list!7241 (charsOf!1860 (h!23613 (Cons!18212 (h!23613 tokens!457) Nil!18212))))) (++!4922 (t!150804 (list!7241 (charsOf!1860 (h!23613 (Cons!18212 (h!23613 tokens!457) Nil!18212))))) (printList!953 thiss!17113 (t!150807 (Cons!18212 (h!23613 tokens!457) Nil!18212))))))))

(declare-fun b!1650419 () Bool)

(declare-fun res!739700 () Bool)

(assert (=> b!1650419 (=> (not res!739700) (not e!1058428))))

(assert (=> b!1650419 (= res!739700 (= (size!14501 lt!612428) (+ (size!14501 (list!7241 (charsOf!1860 (h!23613 (Cons!18212 (h!23613 tokens!457) Nil!18212))))) (size!14501 (printList!953 thiss!17113 (t!150807 (Cons!18212 (h!23613 tokens!457) Nil!18212)))))))))

(assert (= (and d!497584 c!268377) b!1650417))

(assert (= (and d!497584 (not c!268377)) b!1650418))

(assert (= (and d!497584 res!739699) b!1650419))

(assert (= (and b!1650419 res!739700) b!1650420))

(declare-fun m!1999477 () Bool)

(assert (=> d!497584 m!1999477))

(assert (=> d!497584 m!1998075))

(declare-fun m!1999479 () Bool)

(assert (=> d!497584 m!1999479))

(assert (=> d!497584 m!1998077))

(declare-fun m!1999481 () Bool)

(assert (=> d!497584 m!1999481))

(assert (=> b!1650418 m!1998077))

(declare-fun m!1999483 () Bool)

(assert (=> b!1650418 m!1999483))

(declare-fun m!1999485 () Bool)

(assert (=> b!1650419 m!1999485))

(assert (=> b!1650419 m!1998075))

(declare-fun m!1999487 () Bool)

(assert (=> b!1650419 m!1999487))

(assert (=> b!1650419 m!1998077))

(declare-fun m!1999489 () Bool)

(assert (=> b!1650419 m!1999489))

(assert (=> b!1649594 d!497584))

(declare-fun d!497586 () Bool)

(assert (=> d!497586 (= (list!7241 (charsOf!1860 (h!23613 (Cons!18212 (h!23613 tokens!457) Nil!18212)))) (list!7244 (c!268209 (charsOf!1860 (h!23613 (Cons!18212 (h!23613 tokens!457) Nil!18212))))))))

(declare-fun bs!396464 () Bool)

(assert (= bs!396464 d!497586))

(declare-fun m!1999491 () Bool)

(assert (=> bs!396464 m!1999491))

(assert (=> b!1649594 d!497586))

(declare-fun d!497588 () Bool)

(declare-fun lt!612429 () BalanceConc!12084)

(assert (=> d!497588 (= (list!7241 lt!612429) (originalCharacters!4025 (h!23613 (Cons!18212 (h!23613 tokens!457) Nil!18212))))))

(assert (=> d!497588 (= lt!612429 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (Cons!18212 (h!23613 tokens!457) Nil!18212))))) (value!101186 (h!23613 (Cons!18212 (h!23613 tokens!457) Nil!18212)))))))

(assert (=> d!497588 (= (charsOf!1860 (h!23613 (Cons!18212 (h!23613 tokens!457) Nil!18212))) lt!612429)))

(declare-fun b_lambda!51877 () Bool)

(assert (=> (not b_lambda!51877) (not d!497588)))

(declare-fun t!150864 () Bool)

(declare-fun tb!94511 () Bool)

(assert (=> (and b!1649509 (= (toChars!4517 (transformation!3211 (h!23612 rules!1846))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (Cons!18212 (h!23613 tokens!457) Nil!18212)))))) t!150864) tb!94511))

(declare-fun b!1650421 () Bool)

(declare-fun e!1058429 () Bool)

(declare-fun tp!477803 () Bool)

(assert (=> b!1650421 (= e!1058429 (and (inv!23573 (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (Cons!18212 (h!23613 tokens!457) Nil!18212))))) (value!101186 (h!23613 (Cons!18212 (h!23613 tokens!457) Nil!18212)))))) tp!477803))))

(declare-fun result!114202 () Bool)

(assert (=> tb!94511 (= result!114202 (and (inv!23574 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (Cons!18212 (h!23613 tokens!457) Nil!18212))))) (value!101186 (h!23613 (Cons!18212 (h!23613 tokens!457) Nil!18212))))) e!1058429))))

(assert (= tb!94511 b!1650421))

(declare-fun m!1999493 () Bool)

(assert (=> b!1650421 m!1999493))

(declare-fun m!1999495 () Bool)

(assert (=> tb!94511 m!1999495))

(assert (=> d!497588 t!150864))

(declare-fun b_and!117197 () Bool)

(assert (= b_and!117185 (and (=> t!150864 result!114202) b_and!117197)))

(declare-fun t!150866 () Bool)

(declare-fun tb!94513 () Bool)

(assert (=> (and b!1649522 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (Cons!18212 (h!23613 tokens!457) Nil!18212)))))) t!150866) tb!94513))

(declare-fun result!114204 () Bool)

(assert (= result!114204 result!114202))

(assert (=> d!497588 t!150866))

(declare-fun b_and!117199 () Bool)

(assert (= b_and!117187 (and (=> t!150866 result!114204) b_and!117199)))

(declare-fun t!150868 () Bool)

(declare-fun tb!94515 () Bool)

(assert (=> (and b!1650076 (= (toChars!4517 (transformation!3211 (h!23612 (t!150806 rules!1846)))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (Cons!18212 (h!23613 tokens!457) Nil!18212)))))) t!150868) tb!94515))

(declare-fun result!114206 () Bool)

(assert (= result!114206 result!114202))

(assert (=> d!497588 t!150868))

(declare-fun b_and!117201 () Bool)

(assert (= b_and!117191 (and (=> t!150868 result!114206) b_and!117201)))

(declare-fun t!150870 () Bool)

(declare-fun tb!94517 () Bool)

(assert (=> (and b!1650090 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (Cons!18212 (h!23613 tokens!457) Nil!18212)))))) t!150870) tb!94517))

(declare-fun result!114208 () Bool)

(assert (= result!114208 result!114202))

(assert (=> d!497588 t!150870))

(declare-fun b_and!117203 () Bool)

(assert (= b_and!117195 (and (=> t!150870 result!114208) b_and!117203)))

(declare-fun m!1999497 () Bool)

(assert (=> d!497588 m!1999497))

(declare-fun m!1999499 () Bool)

(assert (=> d!497588 m!1999499))

(assert (=> b!1649594 d!497588))

(declare-fun d!497590 () Bool)

(declare-fun c!268378 () Bool)

(assert (=> d!497590 (= c!268378 ((_ is Cons!18212) (t!150807 (Cons!18212 (h!23613 tokens!457) Nil!18212))))))

(declare-fun e!1058430 () List!18279)

(assert (=> d!497590 (= (printList!953 thiss!17113 (t!150807 (Cons!18212 (h!23613 tokens!457) Nil!18212))) e!1058430)))

(declare-fun b!1650422 () Bool)

(assert (=> b!1650422 (= e!1058430 (++!4922 (list!7241 (charsOf!1860 (h!23613 (t!150807 (Cons!18212 (h!23613 tokens!457) Nil!18212))))) (printList!953 thiss!17113 (t!150807 (t!150807 (Cons!18212 (h!23613 tokens!457) Nil!18212))))))))

(declare-fun b!1650423 () Bool)

(assert (=> b!1650423 (= e!1058430 Nil!18209)))

(assert (= (and d!497590 c!268378) b!1650422))

(assert (= (and d!497590 (not c!268378)) b!1650423))

(declare-fun m!1999501 () Bool)

(assert (=> b!1650422 m!1999501))

(assert (=> b!1650422 m!1999501))

(declare-fun m!1999503 () Bool)

(assert (=> b!1650422 m!1999503))

(declare-fun m!1999505 () Bool)

(assert (=> b!1650422 m!1999505))

(assert (=> b!1650422 m!1999503))

(assert (=> b!1650422 m!1999505))

(declare-fun m!1999507 () Bool)

(assert (=> b!1650422 m!1999507))

(assert (=> b!1649594 d!497590))

(assert (=> b!1649752 d!497526))

(declare-fun lt!612459 () Option!3458)

(declare-fun d!497592 () Bool)

(assert (=> d!497592 (= lt!612459 (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457))))))))

(declare-fun e!1058446 () Option!3458)

(assert (=> d!497592 (= lt!612459 e!1058446)))

(declare-fun c!268384 () Bool)

(assert (=> d!497592 (= c!268384 (and ((_ is Cons!18211) rules!1846) ((_ is Nil!18211) (t!150806 rules!1846))))))

(declare-fun lt!612461 () Unit!30315)

(declare-fun lt!612462 () Unit!30315)

(assert (=> d!497592 (= lt!612461 lt!612462)))

(assert (=> d!497592 (isPrefix!1469 (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))) (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))

(assert (=> d!497592 (= lt!612462 (lemmaIsPrefixRefl!995 (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))) (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457))))))))

(assert (=> d!497592 (rulesValidInductive!1017 thiss!17113 rules!1846)))

(assert (=> d!497592 (= (maxPrefixZipper!341 thiss!17113 rules!1846 (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457))))) lt!612459)))

(declare-fun bm!105898 () Bool)

(declare-fun call!105903 () Option!3458)

(declare-fun maxPrefixOneRuleZipper!123 (LexerInterface!2840 Rule!6222 List!18279) Option!3458)

(assert (=> bm!105898 (= call!105903 (maxPrefixOneRuleZipper!123 thiss!17113 (h!23612 rules!1846) (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457))))))))

(declare-fun b!1650460 () Bool)

(assert (=> b!1650460 (= e!1058446 call!105903)))

(declare-fun b!1650461 () Bool)

(declare-fun lt!612460 () Option!3458)

(declare-fun lt!612463 () Option!3458)

(assert (=> b!1650461 (= e!1058446 (ite (and ((_ is None!3457) lt!612460) ((_ is None!3457) lt!612463)) None!3457 (ite ((_ is None!3457) lt!612463) lt!612460 (ite ((_ is None!3457) lt!612460) lt!612463 (ite (>= (size!14498 (_1!10345 (v!24626 lt!612460))) (size!14498 (_1!10345 (v!24626 lt!612463)))) lt!612460 lt!612463)))))))

(assert (=> b!1650461 (= lt!612460 call!105903)))

(assert (=> b!1650461 (= lt!612463 (maxPrefixZipper!341 thiss!17113 (t!150806 rules!1846) (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457))))))))

(assert (= (and d!497592 c!268384) b!1650460))

(assert (= (and d!497592 (not c!268384)) b!1650461))

(assert (= (or b!1650460 b!1650461) bm!105898))

(assert (=> d!497592 m!1998431))

(assert (=> d!497592 m!1998425))

(assert (=> d!497592 m!1998431))

(assert (=> d!497592 m!1998431))

(assert (=> d!497592 m!1999197))

(assert (=> d!497592 m!1998431))

(assert (=> d!497592 m!1998431))

(assert (=> d!497592 m!1999199))

(assert (=> d!497592 m!1997961))

(assert (=> bm!105898 m!1998431))

(declare-fun m!1999567 () Bool)

(assert (=> bm!105898 m!1999567))

(assert (=> b!1650461 m!1998431))

(declare-fun m!1999569 () Bool)

(assert (=> b!1650461 m!1999569))

(assert (=> b!1649752 d!497592))

(declare-fun d!497602 () Bool)

(assert (=> d!497602 (= (get!5302 (maxPrefixZipper!341 thiss!17113 rules!1846 (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))) (v!24626 (maxPrefixZipper!341 thiss!17113 rules!1846 (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))))

(assert (=> b!1649752 d!497602))

(assert (=> b!1649752 d!497530))

(assert (=> b!1649752 d!497534))

(declare-fun d!497606 () Bool)

(declare-fun lt!612464 () Bool)

(assert (=> d!497606 (= lt!612464 (isEmpty!11250 (list!7242 (_1!10343 lt!612187))))))

(assert (=> d!497606 (= lt!612464 (isEmpty!11251 (c!268211 (_1!10343 lt!612187))))))

(assert (=> d!497606 (= (isEmpty!11238 (_1!10343 lt!612187)) lt!612464)))

(declare-fun bs!396468 () Bool)

(assert (= bs!396468 d!497606))

(assert (=> bs!396468 m!1998917))

(assert (=> bs!396468 m!1998917))

(declare-fun m!1999577 () Bool)

(assert (=> bs!396468 m!1999577))

(declare-fun m!1999579 () Bool)

(assert (=> bs!396468 m!1999579))

(assert (=> b!1650024 d!497606))

(declare-fun d!497608 () Bool)

(assert (=> d!497608 (= (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!611619)))) (list!7244 (c!268209 (charsOf!1860 (_1!10345 (get!5302 lt!611619))))))))

(declare-fun bs!396469 () Bool)

(assert (= bs!396469 d!497608))

(declare-fun m!1999581 () Bool)

(assert (=> bs!396469 m!1999581))

(assert (=> b!1649560 d!497608))

(declare-fun d!497610 () Bool)

(declare-fun lt!612465 () BalanceConc!12084)

(assert (=> d!497610 (= (list!7241 lt!612465) (originalCharacters!4025 (_1!10345 (get!5302 lt!611619))))))

(assert (=> d!497610 (= lt!612465 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!611619))))) (value!101186 (_1!10345 (get!5302 lt!611619)))))))

(assert (=> d!497610 (= (charsOf!1860 (_1!10345 (get!5302 lt!611619))) lt!612465)))

(declare-fun b_lambda!51881 () Bool)

(assert (=> (not b_lambda!51881) (not d!497610)))

(declare-fun t!150880 () Bool)

(declare-fun tb!94527 () Bool)

(assert (=> (and b!1649509 (= (toChars!4517 (transformation!3211 (h!23612 rules!1846))) (toChars!4517 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!611619)))))) t!150880) tb!94527))

(declare-fun b!1650467 () Bool)

(declare-fun e!1058450 () Bool)

(declare-fun tp!477805 () Bool)

(assert (=> b!1650467 (= e!1058450 (and (inv!23573 (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!611619))))) (value!101186 (_1!10345 (get!5302 lt!611619)))))) tp!477805))))

(declare-fun result!114218 () Bool)

(assert (=> tb!94527 (= result!114218 (and (inv!23574 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!611619))))) (value!101186 (_1!10345 (get!5302 lt!611619))))) e!1058450))))

(assert (= tb!94527 b!1650467))

(declare-fun m!1999583 () Bool)

(assert (=> b!1650467 m!1999583))

(declare-fun m!1999585 () Bool)

(assert (=> tb!94527 m!1999585))

(assert (=> d!497610 t!150880))

(declare-fun b_and!117213 () Bool)

(assert (= b_and!117197 (and (=> t!150880 result!114218) b_and!117213)))

(declare-fun t!150882 () Bool)

(declare-fun tb!94529 () Bool)

(assert (=> (and b!1649522 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (toChars!4517 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!611619)))))) t!150882) tb!94529))

(declare-fun result!114220 () Bool)

(assert (= result!114220 result!114218))

(assert (=> d!497610 t!150882))

(declare-fun b_and!117215 () Bool)

(assert (= b_and!117199 (and (=> t!150882 result!114220) b_and!117215)))

(declare-fun t!150884 () Bool)

(declare-fun tb!94531 () Bool)

(assert (=> (and b!1650076 (= (toChars!4517 (transformation!3211 (h!23612 (t!150806 rules!1846)))) (toChars!4517 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!611619)))))) t!150884) tb!94531))

(declare-fun result!114222 () Bool)

(assert (= result!114222 result!114218))

(assert (=> d!497610 t!150884))

(declare-fun b_and!117217 () Bool)

(assert (= b_and!117201 (and (=> t!150884 result!114222) b_and!117217)))

(declare-fun tb!94533 () Bool)

(declare-fun t!150886 () Bool)

(assert (=> (and b!1650090 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (toChars!4517 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!611619)))))) t!150886) tb!94533))

(declare-fun result!114224 () Bool)

(assert (= result!114224 result!114218))

(assert (=> d!497610 t!150886))

(declare-fun b_and!117219 () Bool)

(assert (= b_and!117203 (and (=> t!150886 result!114224) b_and!117219)))

(declare-fun m!1999587 () Bool)

(assert (=> d!497610 m!1999587))

(declare-fun m!1999589 () Bool)

(assert (=> d!497610 m!1999589))

(assert (=> b!1649560 d!497610))

(declare-fun d!497614 () Bool)

(assert (=> d!497614 (= (get!5302 lt!611619) (v!24626 lt!611619))))

(assert (=> b!1649560 d!497614))

(declare-fun d!497616 () Bool)

(declare-fun lt!612466 () Int)

(assert (=> d!497616 (>= lt!612466 0)))

(declare-fun e!1058451 () Int)

(assert (=> d!497616 (= lt!612466 e!1058451)))

(declare-fun c!268387 () Bool)

(assert (=> d!497616 (= c!268387 ((_ is Nil!18209) lt!611593))))

(assert (=> d!497616 (= (size!14501 lt!611593) lt!612466)))

(declare-fun b!1650468 () Bool)

(assert (=> b!1650468 (= e!1058451 0)))

(declare-fun b!1650469 () Bool)

(assert (=> b!1650469 (= e!1058451 (+ 1 (size!14501 (t!150804 lt!611593))))))

(assert (= (and d!497616 c!268387) b!1650468))

(assert (= (and d!497616 (not c!268387)) b!1650469))

(declare-fun m!1999591 () Bool)

(assert (=> b!1650469 m!1999591))

(assert (=> b!1649735 d!497616))

(assert (=> b!1649735 d!497484))

(declare-fun d!497618 () Bool)

(assert (=> d!497618 (= (list!7241 lt!612143) (list!7244 (c!268209 lt!612143)))))

(declare-fun bs!396470 () Bool)

(assert (= bs!396470 d!497618))

(declare-fun m!1999593 () Bool)

(assert (=> bs!396470 m!1999593))

(assert (=> b!1649966 d!497618))

(declare-fun lt!612467 () List!18279)

(declare-fun b!1650475 () Bool)

(declare-fun e!1058455 () Bool)

(assert (=> b!1650475 (= e!1058455 (or (not (= (list!7241 lt!611599) Nil!18209)) (= lt!612467 (list!7241 lt!611594))))))

(declare-fun b!1650472 () Bool)

(declare-fun e!1058454 () List!18279)

(assert (=> b!1650472 (= e!1058454 (list!7241 lt!611599))))

(declare-fun d!497620 () Bool)

(assert (=> d!497620 e!1058455))

(declare-fun res!739723 () Bool)

(assert (=> d!497620 (=> (not res!739723) (not e!1058455))))

(assert (=> d!497620 (= res!739723 (= (content!2529 lt!612467) ((_ map or) (content!2529 (list!7241 lt!611594)) (content!2529 (list!7241 lt!611599)))))))

(assert (=> d!497620 (= lt!612467 e!1058454)))

(declare-fun c!268388 () Bool)

(assert (=> d!497620 (= c!268388 ((_ is Nil!18209) (list!7241 lt!611594)))))

(assert (=> d!497620 (= (++!4922 (list!7241 lt!611594) (list!7241 lt!611599)) lt!612467)))

(declare-fun b!1650473 () Bool)

(assert (=> b!1650473 (= e!1058454 (Cons!18209 (h!23610 (list!7241 lt!611594)) (++!4922 (t!150804 (list!7241 lt!611594)) (list!7241 lt!611599))))))

(declare-fun b!1650474 () Bool)

(declare-fun res!739724 () Bool)

(assert (=> b!1650474 (=> (not res!739724) (not e!1058455))))

(assert (=> b!1650474 (= res!739724 (= (size!14501 lt!612467) (+ (size!14501 (list!7241 lt!611594)) (size!14501 (list!7241 lt!611599)))))))

(assert (= (and d!497620 c!268388) b!1650472))

(assert (= (and d!497620 (not c!268388)) b!1650473))

(assert (= (and d!497620 res!739723) b!1650474))

(assert (= (and b!1650474 res!739724) b!1650475))

(declare-fun m!1999597 () Bool)

(assert (=> d!497620 m!1999597))

(assert (=> d!497620 m!1997903))

(declare-fun m!1999599 () Bool)

(assert (=> d!497620 m!1999599))

(assert (=> d!497620 m!1997889))

(declare-fun m!1999601 () Bool)

(assert (=> d!497620 m!1999601))

(assert (=> b!1650473 m!1997889))

(declare-fun m!1999603 () Bool)

(assert (=> b!1650473 m!1999603))

(declare-fun m!1999605 () Bool)

(assert (=> b!1650474 m!1999605))

(assert (=> b!1650474 m!1997903))

(declare-fun m!1999607 () Bool)

(assert (=> b!1650474 m!1999607))

(assert (=> b!1650474 m!1997889))

(declare-fun m!1999609 () Bool)

(assert (=> b!1650474 m!1999609))

(assert (=> b!1649966 d!497620))

(assert (=> b!1649966 d!497386))

(assert (=> b!1649966 d!497448))

(declare-fun d!497622 () Bool)

(assert (=> d!497622 (= (inv!23574 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (value!101186 (h!23613 (t!150807 tokens!457))))) (isBalanced!1862 (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (value!101186 (h!23613 (t!150807 tokens!457)))))))))

(declare-fun bs!396472 () Bool)

(assert (= bs!396472 d!497622))

(declare-fun m!1999615 () Bool)

(assert (=> bs!396472 m!1999615))

(assert (=> tb!94499 d!497622))

(assert (=> b!1649928 d!497442))

(declare-fun d!497628 () Bool)

(assert (=> d!497628 (= (list!7242 (_1!10343 lt!612187)) (list!7246 (c!268211 (_1!10343 lt!612187))))))

(declare-fun bs!396474 () Bool)

(assert (= bs!396474 d!497628))

(declare-fun m!1999619 () Bool)

(assert (=> bs!396474 m!1999619))

(assert (=> b!1650020 d!497628))

(declare-fun b!1650495 () Bool)

(declare-fun e!1058469 () tuple2!17890)

(assert (=> b!1650495 (= e!1058469 (tuple2!17891 Nil!18212 (list!7241 (seqFromList!2161 lt!611596))))))

(declare-fun b!1650496 () Bool)

(declare-fun e!1058471 () Bool)

(declare-fun e!1058470 () Bool)

(assert (=> b!1650496 (= e!1058471 e!1058470)))

(declare-fun res!739730 () Bool)

(declare-fun lt!612474 () tuple2!17890)

(assert (=> b!1650496 (= res!739730 (< (size!14501 (_2!10347 lt!612474)) (size!14501 (list!7241 (seqFromList!2161 lt!611596)))))))

(assert (=> b!1650496 (=> (not res!739730) (not e!1058470))))

(declare-fun b!1650498 () Bool)

(assert (=> b!1650498 (= e!1058471 (= (_2!10347 lt!612474) (list!7241 (seqFromList!2161 lt!611596))))))

(declare-fun b!1650499 () Bool)

(declare-fun lt!612475 () Option!3458)

(declare-fun lt!612476 () tuple2!17890)

(assert (=> b!1650499 (= e!1058469 (tuple2!17891 (Cons!18212 (_1!10345 (v!24626 lt!612475)) (_1!10347 lt!612476)) (_2!10347 lt!612476)))))

(assert (=> b!1650499 (= lt!612476 (lexList!871 thiss!17113 rules!1846 (_2!10345 (v!24626 lt!612475))))))

(declare-fun b!1650497 () Bool)

(assert (=> b!1650497 (= e!1058470 (not (isEmpty!11250 (_1!10347 lt!612474))))))

(declare-fun d!497632 () Bool)

(assert (=> d!497632 e!1058471))

(declare-fun c!268397 () Bool)

(assert (=> d!497632 (= c!268397 (> (size!14508 (_1!10347 lt!612474)) 0))))

(assert (=> d!497632 (= lt!612474 e!1058469)))

(declare-fun c!268396 () Bool)

(assert (=> d!497632 (= c!268396 ((_ is Some!3457) lt!612475))))

(assert (=> d!497632 (= lt!612475 (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 (seqFromList!2161 lt!611596))))))

(assert (=> d!497632 (= (lexList!871 thiss!17113 rules!1846 (list!7241 (seqFromList!2161 lt!611596))) lt!612474)))

(assert (= (and d!497632 c!268396) b!1650499))

(assert (= (and d!497632 (not c!268396)) b!1650495))

(assert (= (and d!497632 c!268397) b!1650496))

(assert (= (and d!497632 (not c!268397)) b!1650498))

(assert (= (and b!1650496 res!739730) b!1650497))

(declare-fun m!1999625 () Bool)

(assert (=> b!1650496 m!1999625))

(assert (=> b!1650496 m!1998919))

(declare-fun m!1999627 () Bool)

(assert (=> b!1650496 m!1999627))

(declare-fun m!1999629 () Bool)

(assert (=> b!1650499 m!1999629))

(declare-fun m!1999631 () Bool)

(assert (=> b!1650497 m!1999631))

(declare-fun m!1999633 () Bool)

(assert (=> d!497632 m!1999633))

(assert (=> d!497632 m!1998919))

(declare-fun m!1999635 () Bool)

(assert (=> d!497632 m!1999635))

(assert (=> b!1650020 d!497632))

(declare-fun d!497640 () Bool)

(assert (=> d!497640 (= (list!7241 (seqFromList!2161 lt!611596)) (list!7244 (c!268209 (seqFromList!2161 lt!611596))))))

(declare-fun bs!396475 () Bool)

(assert (= bs!396475 d!497640))

(declare-fun m!1999637 () Bool)

(assert (=> bs!396475 m!1999637))

(assert (=> b!1650020 d!497640))

(declare-fun b!1650528 () Bool)

(declare-fun res!739749 () Bool)

(declare-fun e!1058490 () Bool)

(assert (=> b!1650528 (=> (not res!739749) (not e!1058490))))

(assert (=> b!1650528 (= res!739749 (isEmpty!11246 (tail!2444 (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!611619)))))))))

(declare-fun b!1650529 () Bool)

(declare-fun e!1058489 () Bool)

(assert (=> b!1650529 (= e!1058489 (matchR!2032 (derivativeStep!1110 (regex!3211 (rule!5069 (_1!10345 (get!5302 lt!611619)))) (head!3631 (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!611619)))))) (tail!2444 (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!611619)))))))))

(declare-fun b!1650530 () Bool)

(declare-fun e!1058491 () Bool)

(declare-fun lt!612479 () Bool)

(declare-fun call!105906 () Bool)

(assert (=> b!1650530 (= e!1058491 (= lt!612479 call!105906))))

(declare-fun b!1650531 () Bool)

(declare-fun e!1058488 () Bool)

(assert (=> b!1650531 (= e!1058491 e!1058488)))

(declare-fun c!268404 () Bool)

(assert (=> b!1650531 (= c!268404 ((_ is EmptyLang!4539) (regex!3211 (rule!5069 (_1!10345 (get!5302 lt!611619))))))))

(declare-fun b!1650532 () Bool)

(declare-fun res!739747 () Bool)

(declare-fun e!1058486 () Bool)

(assert (=> b!1650532 (=> res!739747 e!1058486)))

(assert (=> b!1650532 (= res!739747 (not ((_ is ElementMatch!4539) (regex!3211 (rule!5069 (_1!10345 (get!5302 lt!611619)))))))))

(assert (=> b!1650532 (= e!1058488 e!1058486)))

(declare-fun b!1650533 () Bool)

(declare-fun res!739753 () Bool)

(assert (=> b!1650533 (=> (not res!739753) (not e!1058490))))

(assert (=> b!1650533 (= res!739753 (not call!105906))))

(declare-fun b!1650534 () Bool)

(declare-fun res!739754 () Bool)

(declare-fun e!1058492 () Bool)

(assert (=> b!1650534 (=> res!739754 e!1058492)))

(assert (=> b!1650534 (= res!739754 (not (isEmpty!11246 (tail!2444 (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!611619))))))))))

(declare-fun b!1650535 () Bool)

(assert (=> b!1650535 (= e!1058490 (= (head!3631 (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!611619))))) (c!268210 (regex!3211 (rule!5069 (_1!10345 (get!5302 lt!611619)))))))))

(declare-fun d!497642 () Bool)

(assert (=> d!497642 e!1058491))

(declare-fun c!268405 () Bool)

(assert (=> d!497642 (= c!268405 ((_ is EmptyExpr!4539) (regex!3211 (rule!5069 (_1!10345 (get!5302 lt!611619))))))))

(assert (=> d!497642 (= lt!612479 e!1058489)))

(declare-fun c!268406 () Bool)

(assert (=> d!497642 (= c!268406 (isEmpty!11246 (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!611619))))))))

(assert (=> d!497642 (validRegex!1808 (regex!3211 (rule!5069 (_1!10345 (get!5302 lt!611619)))))))

(assert (=> d!497642 (= (matchR!2032 (regex!3211 (rule!5069 (_1!10345 (get!5302 lt!611619)))) (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!611619))))) lt!612479)))

(declare-fun b!1650536 () Bool)

(declare-fun e!1058487 () Bool)

(assert (=> b!1650536 (= e!1058487 e!1058492)))

(declare-fun res!739750 () Bool)

(assert (=> b!1650536 (=> res!739750 e!1058492)))

(assert (=> b!1650536 (= res!739750 call!105906)))

(declare-fun bm!105901 () Bool)

(assert (=> bm!105901 (= call!105906 (isEmpty!11246 (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!611619))))))))

(declare-fun b!1650537 () Bool)

(assert (=> b!1650537 (= e!1058488 (not lt!612479))))

(declare-fun b!1650538 () Bool)

(assert (=> b!1650538 (= e!1058492 (not (= (head!3631 (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!611619))))) (c!268210 (regex!3211 (rule!5069 (_1!10345 (get!5302 lt!611619))))))))))

(declare-fun b!1650539 () Bool)

(declare-fun res!739748 () Bool)

(assert (=> b!1650539 (=> res!739748 e!1058486)))

(assert (=> b!1650539 (= res!739748 e!1058490)))

(declare-fun res!739751 () Bool)

(assert (=> b!1650539 (=> (not res!739751) (not e!1058490))))

(assert (=> b!1650539 (= res!739751 lt!612479)))

(declare-fun b!1650540 () Bool)

(declare-fun nullable!1343 (Regex!4539) Bool)

(assert (=> b!1650540 (= e!1058489 (nullable!1343 (regex!3211 (rule!5069 (_1!10345 (get!5302 lt!611619))))))))

(declare-fun b!1650541 () Bool)

(assert (=> b!1650541 (= e!1058486 e!1058487)))

(declare-fun res!739752 () Bool)

(assert (=> b!1650541 (=> (not res!739752) (not e!1058487))))

(assert (=> b!1650541 (= res!739752 (not lt!612479))))

(assert (= (and d!497642 c!268406) b!1650540))

(assert (= (and d!497642 (not c!268406)) b!1650529))

(assert (= (and d!497642 c!268405) b!1650530))

(assert (= (and d!497642 (not c!268405)) b!1650531))

(assert (= (and b!1650531 c!268404) b!1650537))

(assert (= (and b!1650531 (not c!268404)) b!1650532))

(assert (= (and b!1650532 (not res!739747)) b!1650539))

(assert (= (and b!1650539 res!739751) b!1650533))

(assert (= (and b!1650533 res!739753) b!1650528))

(assert (= (and b!1650528 res!739749) b!1650535))

(assert (= (and b!1650539 (not res!739748)) b!1650541))

(assert (= (and b!1650541 res!739752) b!1650536))

(assert (= (and b!1650536 (not res!739750)) b!1650534))

(assert (= (and b!1650534 (not res!739754)) b!1650538))

(assert (= (or b!1650530 b!1650533 b!1650536) bm!105901))

(assert (=> b!1650538 m!1997949))

(declare-fun m!1999639 () Bool)

(assert (=> b!1650538 m!1999639))

(assert (=> b!1650534 m!1997949))

(declare-fun m!1999641 () Bool)

(assert (=> b!1650534 m!1999641))

(assert (=> b!1650534 m!1999641))

(declare-fun m!1999643 () Bool)

(assert (=> b!1650534 m!1999643))

(assert (=> bm!105901 m!1997949))

(declare-fun m!1999645 () Bool)

(assert (=> bm!105901 m!1999645))

(assert (=> b!1650529 m!1997949))

(assert (=> b!1650529 m!1999639))

(assert (=> b!1650529 m!1999639))

(declare-fun m!1999647 () Bool)

(assert (=> b!1650529 m!1999647))

(assert (=> b!1650529 m!1997949))

(assert (=> b!1650529 m!1999641))

(assert (=> b!1650529 m!1999647))

(assert (=> b!1650529 m!1999641))

(declare-fun m!1999649 () Bool)

(assert (=> b!1650529 m!1999649))

(declare-fun m!1999651 () Bool)

(assert (=> b!1650540 m!1999651))

(assert (=> d!497642 m!1997949))

(assert (=> d!497642 m!1999645))

(declare-fun m!1999653 () Bool)

(assert (=> d!497642 m!1999653))

(assert (=> b!1650528 m!1997949))

(assert (=> b!1650528 m!1999641))

(assert (=> b!1650528 m!1999641))

(assert (=> b!1650528 m!1999643))

(assert (=> b!1650535 m!1997949))

(assert (=> b!1650535 m!1999639))

(assert (=> b!1649564 d!497642))

(assert (=> b!1649564 d!497614))

(assert (=> b!1649564 d!497608))

(assert (=> b!1649564 d!497610))

(declare-fun b!1650553 () Bool)

(declare-fun e!1058498 () List!18282)

(assert (=> b!1650553 (= e!1058498 (++!4926 (list!7246 (left!14594 (c!268211 (_1!10343 lt!611587)))) (list!7246 (right!14924 (c!268211 (_1!10343 lt!611587))))))))

(declare-fun b!1650552 () Bool)

(declare-fun list!7248 (IArray!12147) List!18282)

(assert (=> b!1650552 (= e!1058498 (list!7248 (xs!8907 (c!268211 (_1!10343 lt!611587)))))))

(declare-fun d!497644 () Bool)

(declare-fun c!268411 () Bool)

(assert (=> d!497644 (= c!268411 ((_ is Empty!6071) (c!268211 (_1!10343 lt!611587))))))

(declare-fun e!1058497 () List!18282)

(assert (=> d!497644 (= (list!7246 (c!268211 (_1!10343 lt!611587))) e!1058497)))

(declare-fun b!1650550 () Bool)

(assert (=> b!1650550 (= e!1058497 Nil!18212)))

(declare-fun b!1650551 () Bool)

(assert (=> b!1650551 (= e!1058497 e!1058498)))

(declare-fun c!268412 () Bool)

(assert (=> b!1650551 (= c!268412 ((_ is Leaf!8897) (c!268211 (_1!10343 lt!611587))))))

(assert (= (and d!497644 c!268411) b!1650550))

(assert (= (and d!497644 (not c!268411)) b!1650551))

(assert (= (and b!1650551 c!268412) b!1650552))

(assert (= (and b!1650551 (not c!268412)) b!1650553))

(declare-fun m!1999655 () Bool)

(assert (=> b!1650553 m!1999655))

(declare-fun m!1999657 () Bool)

(assert (=> b!1650553 m!1999657))

(assert (=> b!1650553 m!1999655))

(assert (=> b!1650553 m!1999657))

(declare-fun m!1999659 () Bool)

(assert (=> b!1650553 m!1999659))

(declare-fun m!1999661 () Bool)

(assert (=> b!1650552 m!1999661))

(assert (=> d!497280 d!497644))

(declare-fun d!497646 () Bool)

(declare-fun c!268417 () Bool)

(assert (=> d!497646 (= c!268417 ((_ is Nil!18209) lt!612102))))

(declare-fun e!1058503 () (InoxSet C!9252))

(assert (=> d!497646 (= (content!2529 lt!612102) e!1058503)))

(declare-fun b!1650562 () Bool)

(assert (=> b!1650562 (= e!1058503 ((as const (Array C!9252 Bool)) false))))

(declare-fun b!1650563 () Bool)

(assert (=> b!1650563 (= e!1058503 ((_ map or) (store ((as const (Array C!9252 Bool)) false) (h!23610 lt!612102) true) (content!2529 (t!150804 lt!612102))))))

(assert (= (and d!497646 c!268417) b!1650562))

(assert (= (and d!497646 (not c!268417)) b!1650563))

(declare-fun m!1999663 () Bool)

(assert (=> b!1650563 m!1999663))

(declare-fun m!1999665 () Bool)

(assert (=> b!1650563 m!1999665))

(assert (=> d!497390 d!497646))

(declare-fun d!497648 () Bool)

(declare-fun c!268418 () Bool)

(assert (=> d!497648 (= c!268418 ((_ is Nil!18209) lt!611596))))

(declare-fun e!1058504 () (InoxSet C!9252))

(assert (=> d!497648 (= (content!2529 lt!611596) e!1058504)))

(declare-fun b!1650564 () Bool)

(assert (=> b!1650564 (= e!1058504 ((as const (Array C!9252 Bool)) false))))

(declare-fun b!1650565 () Bool)

(assert (=> b!1650565 (= e!1058504 ((_ map or) (store ((as const (Array C!9252 Bool)) false) (h!23610 lt!611596) true) (content!2529 (t!150804 lt!611596))))))

(assert (= (and d!497648 c!268418) b!1650564))

(assert (= (and d!497648 (not c!268418)) b!1650565))

(declare-fun m!1999667 () Bool)

(assert (=> b!1650565 m!1999667))

(declare-fun m!1999669 () Bool)

(assert (=> b!1650565 m!1999669))

(assert (=> d!497390 d!497648))

(declare-fun d!497650 () Bool)

(declare-fun c!268419 () Bool)

(assert (=> d!497650 (= c!268419 ((_ is Nil!18209) lt!611591))))

(declare-fun e!1058505 () (InoxSet C!9252))

(assert (=> d!497650 (= (content!2529 lt!611591) e!1058505)))

(declare-fun b!1650566 () Bool)

(assert (=> b!1650566 (= e!1058505 ((as const (Array C!9252 Bool)) false))))

(declare-fun b!1650567 () Bool)

(assert (=> b!1650567 (= e!1058505 ((_ map or) (store ((as const (Array C!9252 Bool)) false) (h!23610 lt!611591) true) (content!2529 (t!150804 lt!611591))))))

(assert (= (and d!497650 c!268419) b!1650566))

(assert (= (and d!497650 (not c!268419)) b!1650567))

(declare-fun m!1999671 () Bool)

(assert (=> b!1650567 m!1999671))

(declare-fun m!1999673 () Bool)

(assert (=> b!1650567 m!1999673))

(assert (=> d!497390 d!497650))

(declare-fun d!497652 () Bool)

(declare-fun charsToBigInt!0 (List!18280 Int) Int)

(assert (=> d!497652 (= (inv!15 (value!101186 (h!23613 tokens!457))) (= (charsToBigInt!0 (text!23556 (value!101186 (h!23613 tokens!457))) 0) (value!101181 (value!101186 (h!23613 tokens!457)))))))

(declare-fun bs!396476 () Bool)

(assert (= bs!396476 d!497652))

(declare-fun m!1999675 () Bool)

(assert (=> bs!396476 m!1999675))

(assert (=> b!1649774 d!497652))

(declare-fun b!1650570 () Bool)

(declare-fun res!739757 () Bool)

(declare-fun e!1058507 () Bool)

(assert (=> b!1650570 (=> (not res!739757) (not e!1058507))))

(declare-fun lt!612495 () Option!3458)

(assert (=> b!1650570 (= res!739757 (= (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!612495)))) (originalCharacters!4025 (_1!10345 (get!5302 lt!612495)))))))

(declare-fun d!497654 () Bool)

(declare-fun e!1058508 () Bool)

(assert (=> d!497654 e!1058508))

(declare-fun res!739761 () Bool)

(assert (=> d!497654 (=> res!739761 e!1058508)))

(assert (=> d!497654 (= res!739761 (isEmpty!11244 lt!612495))))

(declare-fun e!1058509 () Option!3458)

(assert (=> d!497654 (= lt!612495 e!1058509)))

(declare-fun c!268421 () Bool)

(assert (=> d!497654 (= c!268421 (and ((_ is Cons!18211) (t!150806 rules!1846)) ((_ is Nil!18211) (t!150806 (t!150806 rules!1846)))))))

(declare-fun lt!612499 () Unit!30315)

(declare-fun lt!612498 () Unit!30315)

(assert (=> d!497654 (= lt!612499 lt!612498)))

(assert (=> d!497654 (isPrefix!1469 lt!611579 lt!611579)))

(assert (=> d!497654 (= lt!612498 (lemmaIsPrefixRefl!995 lt!611579 lt!611579))))

(assert (=> d!497654 (rulesValidInductive!1017 thiss!17113 (t!150806 rules!1846))))

(assert (=> d!497654 (= (maxPrefix!1402 thiss!17113 (t!150806 rules!1846) lt!611579) lt!612495)))

(declare-fun b!1650571 () Bool)

(declare-fun res!739759 () Bool)

(assert (=> b!1650571 (=> (not res!739759) (not e!1058507))))

(assert (=> b!1650571 (= res!739759 (< (size!14501 (_2!10345 (get!5302 lt!612495))) (size!14501 lt!611579)))))

(declare-fun b!1650572 () Bool)

(declare-fun res!739760 () Bool)

(assert (=> b!1650572 (=> (not res!739760) (not e!1058507))))

(assert (=> b!1650572 (= res!739760 (= (++!4922 (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!612495)))) (_2!10345 (get!5302 lt!612495))) lt!611579))))

(declare-fun b!1650573 () Bool)

(assert (=> b!1650573 (= e!1058507 (contains!3174 (t!150806 rules!1846) (rule!5069 (_1!10345 (get!5302 lt!612495)))))))

(declare-fun b!1650574 () Bool)

(declare-fun res!739758 () Bool)

(assert (=> b!1650574 (=> (not res!739758) (not e!1058507))))

(assert (=> b!1650574 (= res!739758 (matchR!2032 (regex!3211 (rule!5069 (_1!10345 (get!5302 lt!612495)))) (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!612495))))))))

(declare-fun b!1650575 () Bool)

(assert (=> b!1650575 (= e!1058508 e!1058507)))

(declare-fun res!739756 () Bool)

(assert (=> b!1650575 (=> (not res!739756) (not e!1058507))))

(assert (=> b!1650575 (= res!739756 (isDefined!2813 lt!612495))))

(declare-fun call!105910 () Option!3458)

(declare-fun bm!105905 () Bool)

(assert (=> bm!105905 (= call!105910 (maxPrefixOneRule!811 thiss!17113 (h!23612 (t!150806 rules!1846)) lt!611579))))

(declare-fun b!1650576 () Bool)

(assert (=> b!1650576 (= e!1058509 call!105910)))

(declare-fun b!1650577 () Bool)

(declare-fun lt!612496 () Option!3458)

(declare-fun lt!612497 () Option!3458)

(assert (=> b!1650577 (= e!1058509 (ite (and ((_ is None!3457) lt!612496) ((_ is None!3457) lt!612497)) None!3457 (ite ((_ is None!3457) lt!612497) lt!612496 (ite ((_ is None!3457) lt!612496) lt!612497 (ite (>= (size!14498 (_1!10345 (v!24626 lt!612496))) (size!14498 (_1!10345 (v!24626 lt!612497)))) lt!612496 lt!612497)))))))

(assert (=> b!1650577 (= lt!612496 call!105910)))

(assert (=> b!1650577 (= lt!612497 (maxPrefix!1402 thiss!17113 (t!150806 (t!150806 rules!1846)) lt!611579))))

(declare-fun b!1650578 () Bool)

(declare-fun res!739755 () Bool)

(assert (=> b!1650578 (=> (not res!739755) (not e!1058507))))

(assert (=> b!1650578 (= res!739755 (= (value!101186 (_1!10345 (get!5302 lt!612495))) (apply!4804 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!612495)))) (seqFromList!2161 (originalCharacters!4025 (_1!10345 (get!5302 lt!612495)))))))))

(assert (= (and d!497654 c!268421) b!1650576))

(assert (= (and d!497654 (not c!268421)) b!1650577))

(assert (= (or b!1650576 b!1650577) bm!105905))

(assert (= (and d!497654 (not res!739761)) b!1650575))

(assert (= (and b!1650575 res!739756) b!1650570))

(assert (= (and b!1650570 res!739757) b!1650571))

(assert (= (and b!1650571 res!739759) b!1650572))

(assert (= (and b!1650572 res!739760) b!1650578))

(assert (= (and b!1650578 res!739755) b!1650574))

(assert (= (and b!1650574 res!739758) b!1650573))

(declare-fun m!1999695 () Bool)

(assert (=> b!1650572 m!1999695))

(declare-fun m!1999697 () Bool)

(assert (=> b!1650572 m!1999697))

(assert (=> b!1650572 m!1999697))

(declare-fun m!1999699 () Bool)

(assert (=> b!1650572 m!1999699))

(assert (=> b!1650572 m!1999699))

(declare-fun m!1999701 () Bool)

(assert (=> b!1650572 m!1999701))

(assert (=> b!1650574 m!1999695))

(assert (=> b!1650574 m!1999697))

(assert (=> b!1650574 m!1999697))

(assert (=> b!1650574 m!1999699))

(assert (=> b!1650574 m!1999699))

(declare-fun m!1999703 () Bool)

(assert (=> b!1650574 m!1999703))

(declare-fun m!1999705 () Bool)

(assert (=> d!497654 m!1999705))

(assert (=> d!497654 m!1997957))

(assert (=> d!497654 m!1997959))

(declare-fun m!1999707 () Bool)

(assert (=> d!497654 m!1999707))

(assert (=> b!1650573 m!1999695))

(declare-fun m!1999709 () Bool)

(assert (=> b!1650573 m!1999709))

(assert (=> b!1650570 m!1999695))

(assert (=> b!1650570 m!1999697))

(assert (=> b!1650570 m!1999697))

(assert (=> b!1650570 m!1999699))

(declare-fun m!1999711 () Bool)

(assert (=> b!1650577 m!1999711))

(assert (=> b!1650578 m!1999695))

(declare-fun m!1999713 () Bool)

(assert (=> b!1650578 m!1999713))

(assert (=> b!1650578 m!1999713))

(declare-fun m!1999715 () Bool)

(assert (=> b!1650578 m!1999715))

(assert (=> b!1650571 m!1999695))

(declare-fun m!1999717 () Bool)

(assert (=> b!1650571 m!1999717))

(assert (=> b!1650571 m!1997973))

(declare-fun m!1999719 () Bool)

(assert (=> bm!105905 m!1999719))

(declare-fun m!1999721 () Bool)

(assert (=> b!1650575 m!1999721))

(assert (=> b!1649567 d!497654))

(declare-fun b!1650582 () Bool)

(declare-fun e!1058511 () List!18282)

(assert (=> b!1650582 (= e!1058511 (++!4926 (list!7246 (left!14594 (c!268211 lt!611585))) (list!7246 (right!14924 (c!268211 lt!611585)))))))

(declare-fun b!1650581 () Bool)

(assert (=> b!1650581 (= e!1058511 (list!7248 (xs!8907 (c!268211 lt!611585))))))

(declare-fun d!497664 () Bool)

(declare-fun c!268422 () Bool)

(assert (=> d!497664 (= c!268422 ((_ is Empty!6071) (c!268211 lt!611585)))))

(declare-fun e!1058510 () List!18282)

(assert (=> d!497664 (= (list!7246 (c!268211 lt!611585)) e!1058510)))

(declare-fun b!1650579 () Bool)

(assert (=> b!1650579 (= e!1058510 Nil!18212)))

(declare-fun b!1650580 () Bool)

(assert (=> b!1650580 (= e!1058510 e!1058511)))

(declare-fun c!268423 () Bool)

(assert (=> b!1650580 (= c!268423 ((_ is Leaf!8897) (c!268211 lt!611585)))))

(assert (= (and d!497664 c!268422) b!1650579))

(assert (= (and d!497664 (not c!268422)) b!1650580))

(assert (= (and b!1650580 c!268423) b!1650581))

(assert (= (and b!1650580 (not c!268423)) b!1650582))

(declare-fun m!1999723 () Bool)

(assert (=> b!1650582 m!1999723))

(declare-fun m!1999725 () Bool)

(assert (=> b!1650582 m!1999725))

(assert (=> b!1650582 m!1999723))

(assert (=> b!1650582 m!1999725))

(declare-fun m!1999727 () Bool)

(assert (=> b!1650582 m!1999727))

(declare-fun m!1999729 () Bool)

(assert (=> b!1650581 m!1999729))

(assert (=> d!497330 d!497664))

(declare-fun d!497666 () Bool)

(declare-fun c!268428 () Bool)

(assert (=> d!497666 (= c!268428 ((_ is Node!6070) (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (value!101186 (h!23613 tokens!457))))))))

(declare-fun e!1058522 () Bool)

(assert (=> d!497666 (= (inv!23573 (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (value!101186 (h!23613 tokens!457))))) e!1058522)))

(declare-fun b!1650599 () Bool)

(declare-fun inv!23577 (Conc!6070) Bool)

(assert (=> b!1650599 (= e!1058522 (inv!23577 (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (value!101186 (h!23613 tokens!457))))))))

(declare-fun b!1650600 () Bool)

(declare-fun e!1058523 () Bool)

(assert (=> b!1650600 (= e!1058522 e!1058523)))

(declare-fun res!739769 () Bool)

(assert (=> b!1650600 (= res!739769 (not ((_ is Leaf!8896) (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (value!101186 (h!23613 tokens!457)))))))))

(assert (=> b!1650600 (=> res!739769 e!1058523)))

(declare-fun b!1650601 () Bool)

(declare-fun inv!23578 (Conc!6070) Bool)

(assert (=> b!1650601 (= e!1058523 (inv!23578 (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (value!101186 (h!23613 tokens!457))))))))

(assert (= (and d!497666 c!268428) b!1650599))

(assert (= (and d!497666 (not c!268428)) b!1650600))

(assert (= (and b!1650600 (not res!739769)) b!1650601))

(declare-fun m!1999781 () Bool)

(assert (=> b!1650599 m!1999781))

(declare-fun m!1999783 () Bool)

(assert (=> b!1650601 m!1999783))

(assert (=> b!1649609 d!497666))

(declare-fun d!497682 () Bool)

(assert (=> d!497682 (= (list!7241 lt!612180) (list!7244 (c!268209 lt!612180)))))

(declare-fun bs!396484 () Bool)

(assert (= bs!396484 d!497682))

(declare-fun m!1999785 () Bool)

(assert (=> bs!396484 m!1999785))

(assert (=> d!497426 d!497682))

(declare-fun d!497684 () Bool)

(declare-fun res!739770 () Bool)

(declare-fun e!1058524 () Bool)

(assert (=> d!497684 (=> res!739770 e!1058524)))

(assert (=> d!497684 (= res!739770 (or (not ((_ is Cons!18212) (Cons!18212 (h!23613 (t!150807 tokens!457)) (t!150807 (t!150807 tokens!457))))) (not ((_ is Cons!18212) (t!150807 (Cons!18212 (h!23613 (t!150807 tokens!457)) (t!150807 (t!150807 tokens!457))))))))))

(assert (=> d!497684 (= (tokensListTwoByTwoPredicateSeparableList!533 thiss!17113 (Cons!18212 (h!23613 (t!150807 tokens!457)) (t!150807 (t!150807 tokens!457))) rules!1846) e!1058524)))

(declare-fun b!1650602 () Bool)

(declare-fun e!1058525 () Bool)

(assert (=> b!1650602 (= e!1058524 e!1058525)))

(declare-fun res!739771 () Bool)

(assert (=> b!1650602 (=> (not res!739771) (not e!1058525))))

(assert (=> b!1650602 (= res!739771 (separableTokensPredicate!780 thiss!17113 (h!23613 (Cons!18212 (h!23613 (t!150807 tokens!457)) (t!150807 (t!150807 tokens!457)))) (h!23613 (t!150807 (Cons!18212 (h!23613 (t!150807 tokens!457)) (t!150807 (t!150807 tokens!457))))) rules!1846))))

(declare-fun lt!612511 () Unit!30315)

(declare-fun Unit!30360 () Unit!30315)

(assert (=> b!1650602 (= lt!612511 Unit!30360)))

(assert (=> b!1650602 (> (size!14504 (charsOf!1860 (h!23613 (t!150807 (Cons!18212 (h!23613 (t!150807 tokens!457)) (t!150807 (t!150807 tokens!457))))))) 0)))

(declare-fun lt!612508 () Unit!30315)

(declare-fun Unit!30361 () Unit!30315)

(assert (=> b!1650602 (= lt!612508 Unit!30361)))

(assert (=> b!1650602 (rulesProduceIndividualToken!1488 thiss!17113 rules!1846 (h!23613 (t!150807 (Cons!18212 (h!23613 (t!150807 tokens!457)) (t!150807 (t!150807 tokens!457))))))))

(declare-fun lt!612512 () Unit!30315)

(declare-fun Unit!30362 () Unit!30315)

(assert (=> b!1650602 (= lt!612512 Unit!30362)))

(assert (=> b!1650602 (rulesProduceIndividualToken!1488 thiss!17113 rules!1846 (h!23613 (Cons!18212 (h!23613 (t!150807 tokens!457)) (t!150807 (t!150807 tokens!457)))))))

(declare-fun lt!612507 () Unit!30315)

(declare-fun lt!612509 () Unit!30315)

(assert (=> b!1650602 (= lt!612507 lt!612509)))

(assert (=> b!1650602 (rulesProduceIndividualToken!1488 thiss!17113 rules!1846 (h!23613 (t!150807 (Cons!18212 (h!23613 (t!150807 tokens!457)) (t!150807 (t!150807 tokens!457))))))))

(assert (=> b!1650602 (= lt!612509 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!606 thiss!17113 rules!1846 (Cons!18212 (h!23613 (t!150807 tokens!457)) (t!150807 (t!150807 tokens!457))) (h!23613 (t!150807 (Cons!18212 (h!23613 (t!150807 tokens!457)) (t!150807 (t!150807 tokens!457)))))))))

(declare-fun lt!612513 () Unit!30315)

(declare-fun lt!612510 () Unit!30315)

(assert (=> b!1650602 (= lt!612513 lt!612510)))

(assert (=> b!1650602 (rulesProduceIndividualToken!1488 thiss!17113 rules!1846 (h!23613 (Cons!18212 (h!23613 (t!150807 tokens!457)) (t!150807 (t!150807 tokens!457)))))))

(assert (=> b!1650602 (= lt!612510 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!606 thiss!17113 rules!1846 (Cons!18212 (h!23613 (t!150807 tokens!457)) (t!150807 (t!150807 tokens!457))) (h!23613 (Cons!18212 (h!23613 (t!150807 tokens!457)) (t!150807 (t!150807 tokens!457))))))))

(declare-fun b!1650603 () Bool)

(assert (=> b!1650603 (= e!1058525 (tokensListTwoByTwoPredicateSeparableList!533 thiss!17113 (Cons!18212 (h!23613 (t!150807 (Cons!18212 (h!23613 (t!150807 tokens!457)) (t!150807 (t!150807 tokens!457))))) (t!150807 (t!150807 (Cons!18212 (h!23613 (t!150807 tokens!457)) (t!150807 (t!150807 tokens!457)))))) rules!1846))))

(assert (= (and d!497684 (not res!739770)) b!1650602))

(assert (= (and b!1650602 res!739771) b!1650603))

(declare-fun m!1999795 () Bool)

(assert (=> b!1650602 m!1999795))

(declare-fun m!1999797 () Bool)

(assert (=> b!1650602 m!1999797))

(declare-fun m!1999799 () Bool)

(assert (=> b!1650602 m!1999799))

(declare-fun m!1999801 () Bool)

(assert (=> b!1650602 m!1999801))

(assert (=> b!1650602 m!1999797))

(declare-fun m!1999805 () Bool)

(assert (=> b!1650602 m!1999805))

(declare-fun m!1999809 () Bool)

(assert (=> b!1650602 m!1999809))

(declare-fun m!1999813 () Bool)

(assert (=> b!1650602 m!1999813))

(declare-fun m!1999817 () Bool)

(assert (=> b!1650603 m!1999817))

(assert (=> b!1649630 d!497684))

(declare-fun d!497696 () Bool)

(assert (=> d!497696 (= (list!7241 (_2!10343 lt!612099)) (list!7244 (c!268209 (_2!10343 lt!612099))))))

(declare-fun bs!396488 () Bool)

(assert (= bs!396488 d!497696))

(declare-fun m!1999821 () Bool)

(assert (=> bs!396488 m!1999821))

(assert (=> b!1649861 d!497696))

(declare-fun b!1650609 () Bool)

(declare-fun e!1058529 () tuple2!17890)

(assert (=> b!1650609 (= e!1058529 (tuple2!17891 Nil!18212 (list!7241 lt!611597)))))

(declare-fun b!1650610 () Bool)

(declare-fun e!1058531 () Bool)

(declare-fun e!1058530 () Bool)

(assert (=> b!1650610 (= e!1058531 e!1058530)))

(declare-fun res!739773 () Bool)

(declare-fun lt!612514 () tuple2!17890)

(assert (=> b!1650610 (= res!739773 (< (size!14501 (_2!10347 lt!612514)) (size!14501 (list!7241 lt!611597))))))

(assert (=> b!1650610 (=> (not res!739773) (not e!1058530))))

(declare-fun b!1650612 () Bool)

(assert (=> b!1650612 (= e!1058531 (= (_2!10347 lt!612514) (list!7241 lt!611597)))))

(declare-fun b!1650613 () Bool)

(declare-fun lt!612515 () Option!3458)

(declare-fun lt!612516 () tuple2!17890)

(assert (=> b!1650613 (= e!1058529 (tuple2!17891 (Cons!18212 (_1!10345 (v!24626 lt!612515)) (_1!10347 lt!612516)) (_2!10347 lt!612516)))))

(assert (=> b!1650613 (= lt!612516 (lexList!871 thiss!17113 rules!1846 (_2!10345 (v!24626 lt!612515))))))

(declare-fun b!1650611 () Bool)

(assert (=> b!1650611 (= e!1058530 (not (isEmpty!11250 (_1!10347 lt!612514))))))

(declare-fun d!497700 () Bool)

(assert (=> d!497700 e!1058531))

(declare-fun c!268432 () Bool)

(assert (=> d!497700 (= c!268432 (> (size!14508 (_1!10347 lt!612514)) 0))))

(assert (=> d!497700 (= lt!612514 e!1058529)))

(declare-fun c!268431 () Bool)

(assert (=> d!497700 (= c!268431 ((_ is Some!3457) lt!612515))))

(assert (=> d!497700 (= lt!612515 (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 lt!611597)))))

(assert (=> d!497700 (= (lexList!871 thiss!17113 rules!1846 (list!7241 lt!611597)) lt!612514)))

(assert (= (and d!497700 c!268431) b!1650613))

(assert (= (and d!497700 (not c!268431)) b!1650609))

(assert (= (and d!497700 c!268432) b!1650610))

(assert (= (and d!497700 (not c!268432)) b!1650612))

(assert (= (and b!1650610 res!739773) b!1650611))

(declare-fun m!1999823 () Bool)

(assert (=> b!1650610 m!1999823))

(assert (=> b!1650610 m!1997891))

(declare-fun m!1999825 () Bool)

(assert (=> b!1650610 m!1999825))

(declare-fun m!1999827 () Bool)

(assert (=> b!1650613 m!1999827))

(declare-fun m!1999829 () Bool)

(assert (=> b!1650611 m!1999829))

(declare-fun m!1999831 () Bool)

(assert (=> d!497700 m!1999831))

(assert (=> d!497700 m!1997891))

(declare-fun m!1999833 () Bool)

(assert (=> d!497700 m!1999833))

(assert (=> b!1649861 d!497700))

(assert (=> b!1649861 d!497382))

(declare-fun d!497702 () Bool)

(declare-fun lt!612524 () BalanceConc!12084)

(assert (=> d!497702 (= (list!7241 lt!612524) (originalCharacters!4025 lt!612092))))

(assert (=> d!497702 (= lt!612524 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 lt!612092))) (value!101186 lt!612092)))))

(assert (=> d!497702 (= (charsOf!1860 lt!612092) lt!612524)))

(declare-fun b_lambda!51887 () Bool)

(assert (=> (not b_lambda!51887) (not d!497702)))

(declare-fun t!150905 () Bool)

(declare-fun tb!94551 () Bool)

(assert (=> (and b!1649509 (= (toChars!4517 (transformation!3211 (h!23612 rules!1846))) (toChars!4517 (transformation!3211 (rule!5069 lt!612092)))) t!150905) tb!94551))

(declare-fun b!1650617 () Bool)

(declare-fun e!1058534 () Bool)

(declare-fun tp!477807 () Bool)

(assert (=> b!1650617 (= e!1058534 (and (inv!23573 (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 lt!612092))) (value!101186 lt!612092)))) tp!477807))))

(declare-fun result!114244 () Bool)

(assert (=> tb!94551 (= result!114244 (and (inv!23574 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 lt!612092))) (value!101186 lt!612092))) e!1058534))))

(assert (= tb!94551 b!1650617))

(declare-fun m!1999845 () Bool)

(assert (=> b!1650617 m!1999845))

(declare-fun m!1999847 () Bool)

(assert (=> tb!94551 m!1999847))

(assert (=> d!497702 t!150905))

(declare-fun b_and!117237 () Bool)

(assert (= b_and!117213 (and (=> t!150905 result!114244) b_and!117237)))

(declare-fun tb!94553 () Bool)

(declare-fun t!150907 () Bool)

(assert (=> (and b!1649522 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (toChars!4517 (transformation!3211 (rule!5069 lt!612092)))) t!150907) tb!94553))

(declare-fun result!114246 () Bool)

(assert (= result!114246 result!114244))

(assert (=> d!497702 t!150907))

(declare-fun b_and!117239 () Bool)

(assert (= b_and!117215 (and (=> t!150907 result!114246) b_and!117239)))

(declare-fun t!150909 () Bool)

(declare-fun tb!94555 () Bool)

(assert (=> (and b!1650076 (= (toChars!4517 (transformation!3211 (h!23612 (t!150806 rules!1846)))) (toChars!4517 (transformation!3211 (rule!5069 lt!612092)))) t!150909) tb!94555))

(declare-fun result!114248 () Bool)

(assert (= result!114248 result!114244))

(assert (=> d!497702 t!150909))

(declare-fun b_and!117241 () Bool)

(assert (= b_and!117217 (and (=> t!150909 result!114248) b_and!117241)))

(declare-fun tb!94557 () Bool)

(declare-fun t!150911 () Bool)

(assert (=> (and b!1650090 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (toChars!4517 (transformation!3211 (rule!5069 lt!612092)))) t!150911) tb!94557))

(declare-fun result!114250 () Bool)

(assert (= result!114250 result!114244))

(assert (=> d!497702 t!150911))

(declare-fun b_and!117243 () Bool)

(assert (= b_and!117219 (and (=> t!150911 result!114250) b_and!117243)))

(declare-fun m!1999861 () Bool)

(assert (=> d!497702 m!1999861))

(declare-fun m!1999867 () Bool)

(assert (=> d!497702 m!1999867))

(assert (=> b!1649842 d!497702))

(declare-fun d!497704 () Bool)

(assert (=> d!497704 (isEmpty!11244 (maxPrefixOneRule!811 thiss!17113 (rule!5069 lt!612092) lt!612088))))

(declare-fun lt!612540 () Unit!30315)

(declare-fun choose!9910 (LexerInterface!2840 Rule!6222 List!18281 List!18279) Unit!30315)

(assert (=> d!497704 (= lt!612540 (choose!9910 thiss!17113 (rule!5069 lt!612092) rules!1846 lt!612088))))

(assert (=> d!497704 (not (isEmpty!11239 rules!1846))))

(assert (=> d!497704 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!210 thiss!17113 (rule!5069 lt!612092) rules!1846 lt!612088) lt!612540)))

(declare-fun bs!396491 () Bool)

(assert (= bs!396491 d!497704))

(assert (=> bs!396491 m!1998649))

(assert (=> bs!396491 m!1998649))

(assert (=> bs!396491 m!1998651))

(declare-fun m!1999937 () Bool)

(assert (=> bs!396491 m!1999937))

(assert (=> bs!396491 m!1997843))

(assert (=> b!1649842 d!497704))

(declare-fun d!497722 () Bool)

(assert (=> d!497722 (not (matchR!2032 (regex!3211 (rule!5069 lt!612092)) lt!612091))))

(declare-fun lt!612545 () Unit!30315)

(declare-fun choose!9911 (LexerInterface!2840 Rule!6222 List!18279 List!18279) Unit!30315)

(assert (=> d!497722 (= lt!612545 (choose!9911 thiss!17113 (rule!5069 lt!612092) lt!612091 (++!4922 lt!611596 lt!611591)))))

(assert (=> d!497722 (isPrefix!1469 lt!612091 (++!4922 lt!611596 lt!611591))))

(assert (=> d!497722 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!206 thiss!17113 (rule!5069 lt!612092) lt!612091 (++!4922 lt!611596 lt!611591)) lt!612545)))

(declare-fun bs!396492 () Bool)

(assert (= bs!396492 d!497722))

(assert (=> bs!396492 m!1998653))

(assert (=> bs!396492 m!1997899))

(declare-fun m!1999939 () Bool)

(assert (=> bs!396492 m!1999939))

(assert (=> bs!396492 m!1997899))

(declare-fun m!1999941 () Bool)

(assert (=> bs!396492 m!1999941))

(assert (=> b!1649842 d!497722))

(assert (=> b!1649842 d!497390))

(declare-fun b!1650662 () Bool)

(declare-fun res!739789 () Bool)

(declare-fun e!1058565 () Bool)

(assert (=> b!1650662 (=> (not res!739789) (not e!1058565))))

(assert (=> b!1650662 (= res!739789 (isEmpty!11246 (tail!2444 lt!612091)))))

(declare-fun b!1650663 () Bool)

(declare-fun e!1058564 () Bool)

(assert (=> b!1650663 (= e!1058564 (matchR!2032 (derivativeStep!1110 (regex!3211 (rule!5069 lt!612092)) (head!3631 lt!612091)) (tail!2444 lt!612091)))))

(declare-fun b!1650664 () Bool)

(declare-fun e!1058566 () Bool)

(declare-fun lt!612547 () Bool)

(declare-fun call!105914 () Bool)

(assert (=> b!1650664 (= e!1058566 (= lt!612547 call!105914))))

(declare-fun b!1650665 () Bool)

(declare-fun e!1058563 () Bool)

(assert (=> b!1650665 (= e!1058566 e!1058563)))

(declare-fun c!268450 () Bool)

(assert (=> b!1650665 (= c!268450 ((_ is EmptyLang!4539) (regex!3211 (rule!5069 lt!612092))))))

(declare-fun b!1650666 () Bool)

(declare-fun res!739787 () Bool)

(declare-fun e!1058561 () Bool)

(assert (=> b!1650666 (=> res!739787 e!1058561)))

(assert (=> b!1650666 (= res!739787 (not ((_ is ElementMatch!4539) (regex!3211 (rule!5069 lt!612092)))))))

(assert (=> b!1650666 (= e!1058563 e!1058561)))

(declare-fun b!1650667 () Bool)

(declare-fun res!739793 () Bool)

(assert (=> b!1650667 (=> (not res!739793) (not e!1058565))))

(assert (=> b!1650667 (= res!739793 (not call!105914))))

(declare-fun b!1650668 () Bool)

(declare-fun res!739794 () Bool)

(declare-fun e!1058567 () Bool)

(assert (=> b!1650668 (=> res!739794 e!1058567)))

(assert (=> b!1650668 (= res!739794 (not (isEmpty!11246 (tail!2444 lt!612091))))))

(declare-fun b!1650669 () Bool)

(assert (=> b!1650669 (= e!1058565 (= (head!3631 lt!612091) (c!268210 (regex!3211 (rule!5069 lt!612092)))))))

(declare-fun d!497724 () Bool)

(assert (=> d!497724 e!1058566))

(declare-fun c!268451 () Bool)

(assert (=> d!497724 (= c!268451 ((_ is EmptyExpr!4539) (regex!3211 (rule!5069 lt!612092))))))

(assert (=> d!497724 (= lt!612547 e!1058564)))

(declare-fun c!268452 () Bool)

(assert (=> d!497724 (= c!268452 (isEmpty!11246 lt!612091))))

(assert (=> d!497724 (validRegex!1808 (regex!3211 (rule!5069 lt!612092)))))

(assert (=> d!497724 (= (matchR!2032 (regex!3211 (rule!5069 lt!612092)) lt!612091) lt!612547)))

(declare-fun b!1650670 () Bool)

(declare-fun e!1058562 () Bool)

(assert (=> b!1650670 (= e!1058562 e!1058567)))

(declare-fun res!739790 () Bool)

(assert (=> b!1650670 (=> res!739790 e!1058567)))

(assert (=> b!1650670 (= res!739790 call!105914)))

(declare-fun bm!105909 () Bool)

(assert (=> bm!105909 (= call!105914 (isEmpty!11246 lt!612091))))

(declare-fun b!1650671 () Bool)

(assert (=> b!1650671 (= e!1058563 (not lt!612547))))

(declare-fun b!1650672 () Bool)

(assert (=> b!1650672 (= e!1058567 (not (= (head!3631 lt!612091) (c!268210 (regex!3211 (rule!5069 lt!612092))))))))

(declare-fun b!1650673 () Bool)

(declare-fun res!739788 () Bool)

(assert (=> b!1650673 (=> res!739788 e!1058561)))

(assert (=> b!1650673 (= res!739788 e!1058565)))

(declare-fun res!739791 () Bool)

(assert (=> b!1650673 (=> (not res!739791) (not e!1058565))))

(assert (=> b!1650673 (= res!739791 lt!612547)))

(declare-fun b!1650674 () Bool)

(assert (=> b!1650674 (= e!1058564 (nullable!1343 (regex!3211 (rule!5069 lt!612092))))))

(declare-fun b!1650675 () Bool)

(assert (=> b!1650675 (= e!1058561 e!1058562)))

(declare-fun res!739792 () Bool)

(assert (=> b!1650675 (=> (not res!739792) (not e!1058562))))

(assert (=> b!1650675 (= res!739792 (not lt!612547))))

(assert (= (and d!497724 c!268452) b!1650674))

(assert (= (and d!497724 (not c!268452)) b!1650663))

(assert (= (and d!497724 c!268451) b!1650664))

(assert (= (and d!497724 (not c!268451)) b!1650665))

(assert (= (and b!1650665 c!268450) b!1650671))

(assert (= (and b!1650665 (not c!268450)) b!1650666))

(assert (= (and b!1650666 (not res!739787)) b!1650673))

(assert (= (and b!1650673 res!739791) b!1650667))

(assert (= (and b!1650667 res!739793) b!1650662))

(assert (= (and b!1650662 res!739789) b!1650669))

(assert (= (and b!1650673 (not res!739788)) b!1650675))

(assert (= (and b!1650675 res!739792) b!1650670))

(assert (= (and b!1650670 (not res!739790)) b!1650668))

(assert (= (and b!1650668 (not res!739794)) b!1650672))

(assert (= (or b!1650664 b!1650667 b!1650670) bm!105909))

(declare-fun m!1999949 () Bool)

(assert (=> b!1650672 m!1999949))

(declare-fun m!1999953 () Bool)

(assert (=> b!1650668 m!1999953))

(assert (=> b!1650668 m!1999953))

(declare-fun m!1999957 () Bool)

(assert (=> b!1650668 m!1999957))

(declare-fun m!1999959 () Bool)

(assert (=> bm!105909 m!1999959))

(assert (=> b!1650663 m!1999949))

(assert (=> b!1650663 m!1999949))

(declare-fun m!1999961 () Bool)

(assert (=> b!1650663 m!1999961))

(assert (=> b!1650663 m!1999953))

(assert (=> b!1650663 m!1999961))

(assert (=> b!1650663 m!1999953))

(declare-fun m!1999965 () Bool)

(assert (=> b!1650663 m!1999965))

(declare-fun m!1999969 () Bool)

(assert (=> b!1650674 m!1999969))

(assert (=> d!497724 m!1999959))

(declare-fun m!1999971 () Bool)

(assert (=> d!497724 m!1999971))

(assert (=> b!1650662 m!1999953))

(assert (=> b!1650662 m!1999953))

(assert (=> b!1650662 m!1999957))

(assert (=> b!1650669 m!1999949))

(assert (=> b!1649842 d!497724))

(declare-fun d!497728 () Bool)

(assert (=> d!497728 (= (list!7241 (charsOf!1860 lt!612092)) (list!7244 (c!268209 (charsOf!1860 lt!612092))))))

(declare-fun bs!396493 () Bool)

(assert (= bs!396493 d!497728))

(declare-fun m!1999983 () Bool)

(assert (=> bs!396493 m!1999983))

(assert (=> b!1649842 d!497728))

(declare-fun d!497730 () Bool)

(assert (=> d!497730 (= (isEmpty!11244 (maxPrefixOneRule!811 thiss!17113 (rule!5069 lt!612092) lt!612088)) (not ((_ is Some!3457) (maxPrefixOneRule!811 thiss!17113 (rule!5069 lt!612092) lt!612088))))))

(assert (=> b!1649842 d!497730))

(declare-fun b!1650766 () Bool)

(declare-fun e!1058620 () Bool)

(declare-fun lt!612595 () Option!3458)

(assert (=> b!1650766 (= e!1058620 (= (size!14498 (_1!10345 (get!5302 lt!612595))) (size!14501 (originalCharacters!4025 (_1!10345 (get!5302 lt!612595))))))))

(declare-fun b!1650767 () Bool)

(declare-fun e!1058621 () Option!3458)

(declare-datatypes ((tuple2!17896 0))(
  ( (tuple2!17897 (_1!10350 List!18279) (_2!10350 List!18279)) )
))
(declare-fun lt!612593 () tuple2!17896)

(assert (=> b!1650767 (= e!1058621 (Some!3457 (tuple2!17887 (Token!5989 (apply!4804 (transformation!3211 (rule!5069 lt!612092)) (seqFromList!2161 (_1!10350 lt!612593))) (rule!5069 lt!612092) (size!14504 (seqFromList!2161 (_1!10350 lt!612593))) (_1!10350 lt!612593)) (_2!10350 lt!612593))))))

(declare-fun lt!612592 () Unit!30315)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!351 (Regex!4539 List!18279) Unit!30315)

(assert (=> b!1650767 (= lt!612592 (longestMatchIsAcceptedByMatchOrIsEmpty!351 (regex!3211 (rule!5069 lt!612092)) lt!612088))))

(declare-fun res!739843 () Bool)

(declare-fun findLongestMatchInner!367 (Regex!4539 List!18279 Int List!18279 List!18279 Int) tuple2!17896)

(assert (=> b!1650767 (= res!739843 (isEmpty!11246 (_1!10350 (findLongestMatchInner!367 (regex!3211 (rule!5069 lt!612092)) Nil!18209 (size!14501 Nil!18209) lt!612088 lt!612088 (size!14501 lt!612088)))))))

(declare-fun e!1058619 () Bool)

(assert (=> b!1650767 (=> res!739843 e!1058619)))

(assert (=> b!1650767 e!1058619))

(declare-fun lt!612594 () Unit!30315)

(assert (=> b!1650767 (= lt!612594 lt!612592)))

(declare-fun lt!612591 () Unit!30315)

(declare-fun lemmaSemiInverse!417 (TokenValueInjection!6262 BalanceConc!12084) Unit!30315)

(assert (=> b!1650767 (= lt!612591 (lemmaSemiInverse!417 (transformation!3211 (rule!5069 lt!612092)) (seqFromList!2161 (_1!10350 lt!612593))))))

(declare-fun b!1650768 () Bool)

(declare-fun res!739846 () Bool)

(assert (=> b!1650768 (=> (not res!739846) (not e!1058620))))

(assert (=> b!1650768 (= res!739846 (< (size!14501 (_2!10345 (get!5302 lt!612595))) (size!14501 lt!612088)))))

(declare-fun b!1650769 () Bool)

(declare-fun res!739841 () Bool)

(assert (=> b!1650769 (=> (not res!739841) (not e!1058620))))

(assert (=> b!1650769 (= res!739841 (= (++!4922 (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!612595)))) (_2!10345 (get!5302 lt!612595))) lt!612088))))

(declare-fun b!1650770 () Bool)

(assert (=> b!1650770 (= e!1058619 (matchR!2032 (regex!3211 (rule!5069 lt!612092)) (_1!10350 (findLongestMatchInner!367 (regex!3211 (rule!5069 lt!612092)) Nil!18209 (size!14501 Nil!18209) lt!612088 lt!612088 (size!14501 lt!612088)))))))

(declare-fun b!1650771 () Bool)

(declare-fun e!1058618 () Bool)

(assert (=> b!1650771 (= e!1058618 e!1058620)))

(declare-fun res!739840 () Bool)

(assert (=> b!1650771 (=> (not res!739840) (not e!1058620))))

(assert (=> b!1650771 (= res!739840 (matchR!2032 (regex!3211 (rule!5069 lt!612092)) (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!612595))))))))

(declare-fun b!1650772 () Bool)

(assert (=> b!1650772 (= e!1058621 None!3457)))

(declare-fun b!1650773 () Bool)

(declare-fun res!739844 () Bool)

(assert (=> b!1650773 (=> (not res!739844) (not e!1058620))))

(assert (=> b!1650773 (= res!739844 (= (rule!5069 (_1!10345 (get!5302 lt!612595))) (rule!5069 lt!612092)))))

(declare-fun d!497734 () Bool)

(assert (=> d!497734 e!1058618))

(declare-fun res!739842 () Bool)

(assert (=> d!497734 (=> res!739842 e!1058618)))

(assert (=> d!497734 (= res!739842 (isEmpty!11244 lt!612595))))

(assert (=> d!497734 (= lt!612595 e!1058621)))

(declare-fun c!268474 () Bool)

(assert (=> d!497734 (= c!268474 (isEmpty!11246 (_1!10350 lt!612593)))))

(declare-fun findLongestMatch!294 (Regex!4539 List!18279) tuple2!17896)

(assert (=> d!497734 (= lt!612593 (findLongestMatch!294 (regex!3211 (rule!5069 lt!612092)) lt!612088))))

(declare-fun ruleValid!755 (LexerInterface!2840 Rule!6222) Bool)

(assert (=> d!497734 (ruleValid!755 thiss!17113 (rule!5069 lt!612092))))

(assert (=> d!497734 (= (maxPrefixOneRule!811 thiss!17113 (rule!5069 lt!612092) lt!612088) lt!612595)))

(declare-fun b!1650774 () Bool)

(declare-fun res!739845 () Bool)

(assert (=> b!1650774 (=> (not res!739845) (not e!1058620))))

(assert (=> b!1650774 (= res!739845 (= (value!101186 (_1!10345 (get!5302 lt!612595))) (apply!4804 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!612595)))) (seqFromList!2161 (originalCharacters!4025 (_1!10345 (get!5302 lt!612595)))))))))

(assert (= (and d!497734 c!268474) b!1650772))

(assert (= (and d!497734 (not c!268474)) b!1650767))

(assert (= (and b!1650767 (not res!739843)) b!1650770))

(assert (= (and d!497734 (not res!739842)) b!1650771))

(assert (= (and b!1650771 res!739840) b!1650769))

(assert (= (and b!1650769 res!739841) b!1650768))

(assert (= (and b!1650768 res!739846) b!1650773))

(assert (= (and b!1650773 res!739844) b!1650774))

(assert (= (and b!1650774 res!739845) b!1650766))

(declare-fun m!2000141 () Bool)

(assert (=> d!497734 m!2000141))

(declare-fun m!2000143 () Bool)

(assert (=> d!497734 m!2000143))

(declare-fun m!2000145 () Bool)

(assert (=> d!497734 m!2000145))

(declare-fun m!2000147 () Bool)

(assert (=> d!497734 m!2000147))

(declare-fun m!2000149 () Bool)

(assert (=> b!1650767 m!2000149))

(declare-fun m!2000151 () Bool)

(assert (=> b!1650767 m!2000151))

(declare-fun m!2000153 () Bool)

(assert (=> b!1650767 m!2000153))

(declare-fun m!2000155 () Bool)

(assert (=> b!1650767 m!2000155))

(declare-fun m!2000157 () Bool)

(assert (=> b!1650767 m!2000157))

(assert (=> b!1650767 m!2000157))

(declare-fun m!2000159 () Bool)

(assert (=> b!1650767 m!2000159))

(declare-fun m!2000161 () Bool)

(assert (=> b!1650767 m!2000161))

(assert (=> b!1650767 m!2000157))

(declare-fun m!2000163 () Bool)

(assert (=> b!1650767 m!2000163))

(assert (=> b!1650767 m!2000153))

(assert (=> b!1650767 m!2000151))

(assert (=> b!1650767 m!2000157))

(declare-fun m!2000165 () Bool)

(assert (=> b!1650767 m!2000165))

(declare-fun m!2000167 () Bool)

(assert (=> b!1650766 m!2000167))

(declare-fun m!2000169 () Bool)

(assert (=> b!1650766 m!2000169))

(assert (=> b!1650768 m!2000167))

(declare-fun m!2000171 () Bool)

(assert (=> b!1650768 m!2000171))

(assert (=> b!1650768 m!2000153))

(assert (=> b!1650773 m!2000167))

(assert (=> b!1650770 m!2000151))

(assert (=> b!1650770 m!2000153))

(assert (=> b!1650770 m!2000151))

(assert (=> b!1650770 m!2000153))

(assert (=> b!1650770 m!2000155))

(declare-fun m!2000173 () Bool)

(assert (=> b!1650770 m!2000173))

(assert (=> b!1650769 m!2000167))

(declare-fun m!2000175 () Bool)

(assert (=> b!1650769 m!2000175))

(assert (=> b!1650769 m!2000175))

(declare-fun m!2000177 () Bool)

(assert (=> b!1650769 m!2000177))

(assert (=> b!1650769 m!2000177))

(declare-fun m!2000179 () Bool)

(assert (=> b!1650769 m!2000179))

(assert (=> b!1650774 m!2000167))

(declare-fun m!2000181 () Bool)

(assert (=> b!1650774 m!2000181))

(assert (=> b!1650774 m!2000181))

(declare-fun m!2000183 () Bool)

(assert (=> b!1650774 m!2000183))

(assert (=> b!1650771 m!2000167))

(assert (=> b!1650771 m!2000175))

(assert (=> b!1650771 m!2000175))

(assert (=> b!1650771 m!2000177))

(assert (=> b!1650771 m!2000177))

(declare-fun m!2000185 () Bool)

(assert (=> b!1650771 m!2000185))

(assert (=> b!1649842 d!497734))

(declare-fun d!497782 () Bool)

(declare-fun lt!612596 () BalanceConc!12084)

(assert (=> d!497782 (= (list!7241 lt!612596) (printList!953 thiss!17113 (list!7242 (singletonSeq!1695 (h!23613 tokens!457)))))))

(assert (=> d!497782 (= lt!612596 (printTailRec!891 thiss!17113 (singletonSeq!1695 (h!23613 tokens!457)) 0 (BalanceConc!12085 Empty!6070)))))

(assert (=> d!497782 (= (print!1371 thiss!17113 (singletonSeq!1695 (h!23613 tokens!457))) lt!612596)))

(declare-fun bs!396500 () Bool)

(assert (= bs!396500 d!497782))

(declare-fun m!2000187 () Bool)

(assert (=> bs!396500 m!2000187))

(assert (=> bs!396500 m!1997855))

(assert (=> bs!396500 m!1998945))

(assert (=> bs!396500 m!1998945))

(declare-fun m!2000189 () Bool)

(assert (=> bs!396500 m!2000189))

(assert (=> bs!396500 m!1997855))

(declare-fun m!2000191 () Bool)

(assert (=> bs!396500 m!2000191))

(assert (=> d!497442 d!497782))

(declare-fun d!497784 () Bool)

(declare-fun lt!612597 () Int)

(assert (=> d!497784 (= lt!612597 (size!14508 (list!7242 (_1!10343 lt!612192))))))

(assert (=> d!497784 (= lt!612597 (size!14509 (c!268211 (_1!10343 lt!612192))))))

(assert (=> d!497784 (= (size!14503 (_1!10343 lt!612192)) lt!612597)))

(declare-fun bs!396501 () Bool)

(assert (= bs!396501 d!497784))

(assert (=> bs!396501 m!1999107))

(assert (=> bs!396501 m!1999107))

(declare-fun m!2000193 () Bool)

(assert (=> bs!396501 m!2000193))

(declare-fun m!2000195 () Bool)

(assert (=> bs!396501 m!2000195))

(assert (=> d!497442 d!497784))

(assert (=> d!497442 d!497440))

(declare-fun b!1650775 () Bool)

(declare-fun res!739848 () Bool)

(declare-fun e!1058624 () Bool)

(assert (=> b!1650775 (=> (not res!739848) (not e!1058624))))

(declare-fun lt!612598 () tuple2!17882)

(assert (=> b!1650775 (= res!739848 (= (list!7242 (_1!10343 lt!612598)) (_1!10347 (lexList!871 thiss!17113 rules!1846 (list!7241 (print!1371 thiss!17113 (singletonSeq!1695 (h!23613 tokens!457))))))))))

(declare-fun b!1650776 () Bool)

(declare-fun e!1058623 () Bool)

(assert (=> b!1650776 (= e!1058623 (= (_2!10343 lt!612598) (print!1371 thiss!17113 (singletonSeq!1695 (h!23613 tokens!457)))))))

(declare-fun b!1650777 () Bool)

(declare-fun e!1058622 () Bool)

(assert (=> b!1650777 (= e!1058623 e!1058622)))

(declare-fun res!739847 () Bool)

(assert (=> b!1650777 (= res!739847 (< (size!14504 (_2!10343 lt!612598)) (size!14504 (print!1371 thiss!17113 (singletonSeq!1695 (h!23613 tokens!457))))))))

(assert (=> b!1650777 (=> (not res!739847) (not e!1058622))))

(declare-fun b!1650778 () Bool)

(assert (=> b!1650778 (= e!1058624 (= (list!7241 (_2!10343 lt!612598)) (_2!10347 (lexList!871 thiss!17113 rules!1846 (list!7241 (print!1371 thiss!17113 (singletonSeq!1695 (h!23613 tokens!457))))))))))

(declare-fun b!1650779 () Bool)

(assert (=> b!1650779 (= e!1058622 (not (isEmpty!11238 (_1!10343 lt!612598))))))

(declare-fun d!497786 () Bool)

(assert (=> d!497786 e!1058624))

(declare-fun res!739849 () Bool)

(assert (=> d!497786 (=> (not res!739849) (not e!1058624))))

(assert (=> d!497786 (= res!739849 e!1058623)))

(declare-fun c!268475 () Bool)

(assert (=> d!497786 (= c!268475 (> (size!14503 (_1!10343 lt!612598)) 0))))

(assert (=> d!497786 (= lt!612598 (lexTailRecV2!594 thiss!17113 rules!1846 (print!1371 thiss!17113 (singletonSeq!1695 (h!23613 tokens!457))) (BalanceConc!12085 Empty!6070) (print!1371 thiss!17113 (singletonSeq!1695 (h!23613 tokens!457))) (BalanceConc!12087 Empty!6071)))))

(assert (=> d!497786 (= (lex!1324 thiss!17113 rules!1846 (print!1371 thiss!17113 (singletonSeq!1695 (h!23613 tokens!457)))) lt!612598)))

(assert (= (and d!497786 c!268475) b!1650777))

(assert (= (and d!497786 (not c!268475)) b!1650776))

(assert (= (and b!1650777 res!739847) b!1650779))

(assert (= (and d!497786 res!739849) b!1650775))

(assert (= (and b!1650775 res!739848) b!1650778))

(declare-fun m!2000197 () Bool)

(assert (=> b!1650775 m!2000197))

(assert (=> b!1650775 m!1998937))

(declare-fun m!2000199 () Bool)

(assert (=> b!1650775 m!2000199))

(assert (=> b!1650775 m!2000199))

(declare-fun m!2000201 () Bool)

(assert (=> b!1650775 m!2000201))

(declare-fun m!2000203 () Bool)

(assert (=> b!1650778 m!2000203))

(assert (=> b!1650778 m!1998937))

(assert (=> b!1650778 m!2000199))

(assert (=> b!1650778 m!2000199))

(assert (=> b!1650778 m!2000201))

(declare-fun m!2000205 () Bool)

(assert (=> b!1650777 m!2000205))

(assert (=> b!1650777 m!1998937))

(declare-fun m!2000207 () Bool)

(assert (=> b!1650777 m!2000207))

(declare-fun m!2000209 () Bool)

(assert (=> d!497786 m!2000209))

(assert (=> d!497786 m!1998937))

(assert (=> d!497786 m!1998937))

(declare-fun m!2000211 () Bool)

(assert (=> d!497786 m!2000211))

(declare-fun m!2000213 () Bool)

(assert (=> b!1650779 m!2000213))

(assert (=> d!497442 d!497786))

(declare-fun d!497788 () Bool)

(assert (=> d!497788 (= (list!7242 (_1!10343 (lex!1324 thiss!17113 rules!1846 (print!1371 thiss!17113 (singletonSeq!1695 (h!23613 tokens!457)))))) (list!7246 (c!268211 (_1!10343 (lex!1324 thiss!17113 rules!1846 (print!1371 thiss!17113 (singletonSeq!1695 (h!23613 tokens!457))))))))))

(declare-fun bs!396502 () Bool)

(assert (= bs!396502 d!497788))

(declare-fun m!2000215 () Bool)

(assert (=> bs!396502 m!2000215))

(assert (=> d!497442 d!497788))

(declare-fun d!497790 () Bool)

(assert (=> d!497790 (= (list!7242 (singletonSeq!1695 (h!23613 tokens!457))) (list!7246 (c!268211 (singletonSeq!1695 (h!23613 tokens!457)))))))

(declare-fun bs!396503 () Bool)

(assert (= bs!396503 d!497790))

(declare-fun m!2000217 () Bool)

(assert (=> bs!396503 m!2000217))

(assert (=> d!497442 d!497790))

(assert (=> d!497442 d!497258))

(declare-fun d!497792 () Bool)

(declare-fun c!268480 () Bool)

(assert (=> d!497792 (= c!268480 ((_ is Empty!6070) (c!268209 lt!611594)))))

(declare-fun e!1058629 () List!18279)

(assert (=> d!497792 (= (list!7244 (c!268209 lt!611594)) e!1058629)))

(declare-fun b!1650789 () Bool)

(declare-fun e!1058630 () List!18279)

(assert (=> b!1650789 (= e!1058629 e!1058630)))

(declare-fun c!268481 () Bool)

(assert (=> b!1650789 (= c!268481 ((_ is Leaf!8896) (c!268209 lt!611594)))))

(declare-fun b!1650788 () Bool)

(assert (=> b!1650788 (= e!1058629 Nil!18209)))

(declare-fun b!1650791 () Bool)

(assert (=> b!1650791 (= e!1058630 (++!4922 (list!7244 (left!14593 (c!268209 lt!611594))) (list!7244 (right!14923 (c!268209 lt!611594)))))))

(declare-fun b!1650790 () Bool)

(declare-fun list!7249 (IArray!12145) List!18279)

(assert (=> b!1650790 (= e!1058630 (list!7249 (xs!8906 (c!268209 lt!611594))))))

(assert (= (and d!497792 c!268480) b!1650788))

(assert (= (and d!497792 (not c!268480)) b!1650789))

(assert (= (and b!1650789 c!268481) b!1650790))

(assert (= (and b!1650789 (not c!268481)) b!1650791))

(declare-fun m!2000219 () Bool)

(assert (=> b!1650791 m!2000219))

(declare-fun m!2000221 () Bool)

(assert (=> b!1650791 m!2000221))

(assert (=> b!1650791 m!2000219))

(assert (=> b!1650791 m!2000221))

(declare-fun m!2000223 () Bool)

(assert (=> b!1650791 m!2000223))

(declare-fun m!2000225 () Bool)

(assert (=> b!1650790 m!2000225))

(assert (=> d!497386 d!497792))

(declare-fun lt!612599 () List!18279)

(declare-fun b!1650795 () Bool)

(declare-fun e!1058632 () Bool)

(assert (=> b!1650795 (= e!1058632 (or (not (= lt!611591 Nil!18209)) (= lt!612599 (t!150804 lt!611596))))))

(declare-fun b!1650792 () Bool)

(declare-fun e!1058631 () List!18279)

(assert (=> b!1650792 (= e!1058631 lt!611591)))

(declare-fun d!497794 () Bool)

(assert (=> d!497794 e!1058632))

(declare-fun res!739850 () Bool)

(assert (=> d!497794 (=> (not res!739850) (not e!1058632))))

(assert (=> d!497794 (= res!739850 (= (content!2529 lt!612599) ((_ map or) (content!2529 (t!150804 lt!611596)) (content!2529 lt!611591))))))

(assert (=> d!497794 (= lt!612599 e!1058631)))

(declare-fun c!268482 () Bool)

(assert (=> d!497794 (= c!268482 ((_ is Nil!18209) (t!150804 lt!611596)))))

(assert (=> d!497794 (= (++!4922 (t!150804 lt!611596) lt!611591) lt!612599)))

(declare-fun b!1650793 () Bool)

(assert (=> b!1650793 (= e!1058631 (Cons!18209 (h!23610 (t!150804 lt!611596)) (++!4922 (t!150804 (t!150804 lt!611596)) lt!611591)))))

(declare-fun b!1650794 () Bool)

(declare-fun res!739851 () Bool)

(assert (=> b!1650794 (=> (not res!739851) (not e!1058632))))

(assert (=> b!1650794 (= res!739851 (= (size!14501 lt!612599) (+ (size!14501 (t!150804 lt!611596)) (size!14501 lt!611591))))))

(assert (= (and d!497794 c!268482) b!1650792))

(assert (= (and d!497794 (not c!268482)) b!1650793))

(assert (= (and d!497794 res!739850) b!1650794))

(assert (= (and b!1650794 res!739851) b!1650795))

(declare-fun m!2000227 () Bool)

(assert (=> d!497794 m!2000227))

(assert (=> d!497794 m!1999669))

(assert (=> d!497794 m!1998729))

(declare-fun m!2000229 () Bool)

(assert (=> b!1650793 m!2000229))

(declare-fun m!2000231 () Bool)

(assert (=> b!1650794 m!2000231))

(assert (=> b!1650794 m!1999091))

(assert (=> b!1650794 m!1998735))

(assert (=> b!1649872 d!497794))

(assert (=> b!1649840 d!497702))

(assert (=> b!1649840 d!497498))

(assert (=> b!1649840 d!497496))

(assert (=> b!1649840 d!497728))

(declare-fun b!1650796 () Bool)

(declare-fun res!739854 () Bool)

(declare-fun e!1058637 () Bool)

(assert (=> b!1650796 (=> (not res!739854) (not e!1058637))))

(assert (=> b!1650796 (= res!739854 (isEmpty!11246 (tail!2444 (list!7241 (charsOf!1860 lt!612092)))))))

(declare-fun e!1058636 () Bool)

(declare-fun b!1650797 () Bool)

(assert (=> b!1650797 (= e!1058636 (matchR!2032 (derivativeStep!1110 (regex!3211 (get!5304 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!612092))))) (head!3631 (list!7241 (charsOf!1860 lt!612092)))) (tail!2444 (list!7241 (charsOf!1860 lt!612092)))))))

(declare-fun b!1650798 () Bool)

(declare-fun e!1058638 () Bool)

(declare-fun lt!612600 () Bool)

(declare-fun call!105918 () Bool)

(assert (=> b!1650798 (= e!1058638 (= lt!612600 call!105918))))

(declare-fun b!1650799 () Bool)

(declare-fun e!1058635 () Bool)

(assert (=> b!1650799 (= e!1058638 e!1058635)))

(declare-fun c!268483 () Bool)

(assert (=> b!1650799 (= c!268483 ((_ is EmptyLang!4539) (regex!3211 (get!5304 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!612092)))))))))

(declare-fun b!1650800 () Bool)

(declare-fun res!739852 () Bool)

(declare-fun e!1058633 () Bool)

(assert (=> b!1650800 (=> res!739852 e!1058633)))

(assert (=> b!1650800 (= res!739852 (not ((_ is ElementMatch!4539) (regex!3211 (get!5304 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!612092))))))))))

(assert (=> b!1650800 (= e!1058635 e!1058633)))

(declare-fun b!1650801 () Bool)

(declare-fun res!739858 () Bool)

(assert (=> b!1650801 (=> (not res!739858) (not e!1058637))))

(assert (=> b!1650801 (= res!739858 (not call!105918))))

(declare-fun b!1650802 () Bool)

(declare-fun res!739859 () Bool)

(declare-fun e!1058639 () Bool)

(assert (=> b!1650802 (=> res!739859 e!1058639)))

(assert (=> b!1650802 (= res!739859 (not (isEmpty!11246 (tail!2444 (list!7241 (charsOf!1860 lt!612092))))))))

(declare-fun b!1650803 () Bool)

(assert (=> b!1650803 (= e!1058637 (= (head!3631 (list!7241 (charsOf!1860 lt!612092))) (c!268210 (regex!3211 (get!5304 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!612092))))))))))

(declare-fun d!497796 () Bool)

(assert (=> d!497796 e!1058638))

(declare-fun c!268484 () Bool)

(assert (=> d!497796 (= c!268484 ((_ is EmptyExpr!4539) (regex!3211 (get!5304 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!612092)))))))))

(assert (=> d!497796 (= lt!612600 e!1058636)))

(declare-fun c!268485 () Bool)

(assert (=> d!497796 (= c!268485 (isEmpty!11246 (list!7241 (charsOf!1860 lt!612092))))))

(assert (=> d!497796 (validRegex!1808 (regex!3211 (get!5304 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!612092))))))))

(assert (=> d!497796 (= (matchR!2032 (regex!3211 (get!5304 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!612092))))) (list!7241 (charsOf!1860 lt!612092))) lt!612600)))

(declare-fun b!1650804 () Bool)

(declare-fun e!1058634 () Bool)

(assert (=> b!1650804 (= e!1058634 e!1058639)))

(declare-fun res!739855 () Bool)

(assert (=> b!1650804 (=> res!739855 e!1058639)))

(assert (=> b!1650804 (= res!739855 call!105918)))

(declare-fun bm!105913 () Bool)

(assert (=> bm!105913 (= call!105918 (isEmpty!11246 (list!7241 (charsOf!1860 lt!612092))))))

(declare-fun b!1650805 () Bool)

(assert (=> b!1650805 (= e!1058635 (not lt!612600))))

(declare-fun b!1650806 () Bool)

(assert (=> b!1650806 (= e!1058639 (not (= (head!3631 (list!7241 (charsOf!1860 lt!612092))) (c!268210 (regex!3211 (get!5304 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!612092)))))))))))

(declare-fun b!1650807 () Bool)

(declare-fun res!739853 () Bool)

(assert (=> b!1650807 (=> res!739853 e!1058633)))

(assert (=> b!1650807 (= res!739853 e!1058637)))

(declare-fun res!739856 () Bool)

(assert (=> b!1650807 (=> (not res!739856) (not e!1058637))))

(assert (=> b!1650807 (= res!739856 lt!612600)))

(declare-fun b!1650808 () Bool)

(assert (=> b!1650808 (= e!1058636 (nullable!1343 (regex!3211 (get!5304 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!612092)))))))))

(declare-fun b!1650809 () Bool)

(assert (=> b!1650809 (= e!1058633 e!1058634)))

(declare-fun res!739857 () Bool)

(assert (=> b!1650809 (=> (not res!739857) (not e!1058634))))

(assert (=> b!1650809 (= res!739857 (not lt!612600))))

(assert (= (and d!497796 c!268485) b!1650808))

(assert (= (and d!497796 (not c!268485)) b!1650797))

(assert (= (and d!497796 c!268484) b!1650798))

(assert (= (and d!497796 (not c!268484)) b!1650799))

(assert (= (and b!1650799 c!268483) b!1650805))

(assert (= (and b!1650799 (not c!268483)) b!1650800))

(assert (= (and b!1650800 (not res!739852)) b!1650807))

(assert (= (and b!1650807 res!739856) b!1650801))

(assert (= (and b!1650801 res!739858) b!1650796))

(assert (= (and b!1650796 res!739854) b!1650803))

(assert (= (and b!1650807 (not res!739853)) b!1650809))

(assert (= (and b!1650809 res!739857) b!1650804))

(assert (= (and b!1650804 (not res!739855)) b!1650802))

(assert (= (and b!1650802 (not res!739859)) b!1650806))

(assert (= (or b!1650798 b!1650801 b!1650804) bm!105913))

(assert (=> b!1650806 m!1998647))

(declare-fun m!2000233 () Bool)

(assert (=> b!1650806 m!2000233))

(assert (=> b!1650802 m!1998647))

(declare-fun m!2000235 () Bool)

(assert (=> b!1650802 m!2000235))

(assert (=> b!1650802 m!2000235))

(declare-fun m!2000237 () Bool)

(assert (=> b!1650802 m!2000237))

(assert (=> bm!105913 m!1998647))

(declare-fun m!2000239 () Bool)

(assert (=> bm!105913 m!2000239))

(assert (=> b!1650797 m!1998647))

(assert (=> b!1650797 m!2000233))

(assert (=> b!1650797 m!2000233))

(declare-fun m!2000241 () Bool)

(assert (=> b!1650797 m!2000241))

(assert (=> b!1650797 m!1998647))

(assert (=> b!1650797 m!2000235))

(assert (=> b!1650797 m!2000241))

(assert (=> b!1650797 m!2000235))

(declare-fun m!2000243 () Bool)

(assert (=> b!1650797 m!2000243))

(declare-fun m!2000245 () Bool)

(assert (=> b!1650808 m!2000245))

(assert (=> d!497796 m!1998647))

(assert (=> d!497796 m!2000239))

(declare-fun m!2000247 () Bool)

(assert (=> d!497796 m!2000247))

(assert (=> b!1650796 m!1998647))

(assert (=> b!1650796 m!2000235))

(assert (=> b!1650796 m!2000235))

(assert (=> b!1650796 m!2000237))

(assert (=> b!1650803 m!1998647))

(assert (=> b!1650803 m!2000233))

(assert (=> b!1649840 d!497796))

(declare-fun d!497798 () Bool)

(assert (=> d!497798 (= (inv!23566 (tag!3491 (rule!5069 (h!23613 (t!150807 tokens!457))))) (= (mod (str.len (value!101185 (tag!3491 (rule!5069 (h!23613 (t!150807 tokens!457)))))) 2) 0))))

(assert (=> b!1650089 d!497798))

(declare-fun d!497800 () Bool)

(declare-fun res!739860 () Bool)

(declare-fun e!1058640 () Bool)

(assert (=> d!497800 (=> (not res!739860) (not e!1058640))))

(assert (=> d!497800 (= res!739860 (semiInverseModEq!1241 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (toValue!4658 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457)))))))))

(assert (=> d!497800 (= (inv!23569 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) e!1058640)))

(declare-fun b!1650810 () Bool)

(assert (=> b!1650810 (= e!1058640 (equivClasses!1182 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (toValue!4658 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457)))))))))

(assert (= (and d!497800 res!739860) b!1650810))

(declare-fun m!2000249 () Bool)

(assert (=> d!497800 m!2000249))

(declare-fun m!2000251 () Bool)

(assert (=> b!1650810 m!2000251))

(assert (=> b!1650089 d!497800))

(declare-fun d!497802 () Bool)

(assert (=> d!497802 (= (isEmpty!11244 lt!611586) (not ((_ is Some!3457) lt!611586)))))

(assert (=> d!497340 d!497802))

(declare-fun bs!396504 () Bool)

(declare-fun d!497804 () Bool)

(assert (= bs!396504 (and d!497804 d!497582)))

(declare-fun lambda!67683 () Int)

(assert (=> bs!396504 (= (and (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (toChars!4517 (transformation!3211 (h!23612 rules!1846)))) (= (toValue!4658 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (toValue!4658 (transformation!3211 (h!23612 rules!1846))))) (= lambda!67683 lambda!67676))))

(assert (=> d!497804 true))

(assert (=> d!497804 (< (dynLambda!8165 order!10875 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457))))) (dynLambda!8168 order!10879 lambda!67683))))

(assert (=> d!497804 true))

(assert (=> d!497804 (< (dynLambda!8163 order!10871 (toValue!4658 (transformation!3211 (rule!5069 (h!23613 tokens!457))))) (dynLambda!8168 order!10879 lambda!67683))))

(assert (=> d!497804 (= (semiInverseModEq!1241 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (toValue!4658 (transformation!3211 (rule!5069 (h!23613 tokens!457))))) (Forall!654 lambda!67683))))

(declare-fun bs!396505 () Bool)

(assert (= bs!396505 d!497804))

(declare-fun m!2000253 () Bool)

(assert (=> bs!396505 m!2000253))

(assert (=> d!497430 d!497804))

(declare-fun b!1650814 () Bool)

(declare-fun lt!612601 () List!18279)

(declare-fun e!1058642 () Bool)

(assert (=> b!1650814 (= e!1058642 (or (not (= lt!611595 Nil!18209)) (= lt!612601 (t!150804 lt!611596))))))

(declare-fun b!1650811 () Bool)

(declare-fun e!1058641 () List!18279)

(assert (=> b!1650811 (= e!1058641 lt!611595)))

(declare-fun d!497806 () Bool)

(assert (=> d!497806 e!1058642))

(declare-fun res!739861 () Bool)

(assert (=> d!497806 (=> (not res!739861) (not e!1058642))))

(assert (=> d!497806 (= res!739861 (= (content!2529 lt!612601) ((_ map or) (content!2529 (t!150804 lt!611596)) (content!2529 lt!611595))))))

(assert (=> d!497806 (= lt!612601 e!1058641)))

(declare-fun c!268486 () Bool)

(assert (=> d!497806 (= c!268486 ((_ is Nil!18209) (t!150804 lt!611596)))))

(assert (=> d!497806 (= (++!4922 (t!150804 lt!611596) lt!611595) lt!612601)))

(declare-fun b!1650812 () Bool)

(assert (=> b!1650812 (= e!1058641 (Cons!18209 (h!23610 (t!150804 lt!611596)) (++!4922 (t!150804 (t!150804 lt!611596)) lt!611595)))))

(declare-fun b!1650813 () Bool)

(declare-fun res!739862 () Bool)

(assert (=> b!1650813 (=> (not res!739862) (not e!1058642))))

(assert (=> b!1650813 (= res!739862 (= (size!14501 lt!612601) (+ (size!14501 (t!150804 lt!611596)) (size!14501 lt!611595))))))

(assert (= (and d!497806 c!268486) b!1650811))

(assert (= (and d!497806 (not c!268486)) b!1650812))

(assert (= (and d!497806 res!739861) b!1650813))

(assert (= (and b!1650813 res!739862) b!1650814))

(declare-fun m!2000255 () Bool)

(assert (=> d!497806 m!2000255))

(assert (=> d!497806 m!1999669))

(assert (=> d!497806 m!1998967))

(declare-fun m!2000257 () Bool)

(assert (=> b!1650812 m!2000257))

(declare-fun m!2000259 () Bool)

(assert (=> b!1650813 m!2000259))

(assert (=> b!1650813 m!1999091))

(assert (=> b!1650813 m!1998973))

(assert (=> b!1650041 d!497806))

(declare-fun b!1650833 () Bool)

(declare-fun e!1058667 () Bool)

(declare-fun appendAssoc!109 (List!18279 List!18279 List!18279) Bool)

(assert (=> b!1650833 (= e!1058667 (appendAssoc!109 (++!4922 (list!7244 (c!268209 lt!611594)) (list!7244 (left!14593 (left!14593 (c!268209 lt!611599))))) (list!7244 (right!14923 (left!14593 (c!268209 lt!611599)))) (list!7244 (right!14923 (c!268209 lt!611599)))))))

(declare-fun b!1650834 () Bool)

(declare-fun e!1058663 () Bool)

(declare-fun e!1058666 () Bool)

(assert (=> b!1650834 (= e!1058663 e!1058666)))

(declare-fun res!739882 () Bool)

(assert (=> b!1650834 (=> res!739882 e!1058666)))

(assert (=> b!1650834 (= res!739882 (not ((_ is Node!6070) (left!14593 (c!268209 lt!611599)))))))

(declare-fun d!497808 () Bool)

(declare-fun e!1058668 () Bool)

(assert (=> d!497808 e!1058668))

(declare-fun res!739889 () Bool)

(assert (=> d!497808 (=> (not res!739889) (not e!1058668))))

(declare-fun e!1058661 () Bool)

(assert (=> d!497808 (= res!739889 e!1058661)))

(declare-fun res!739888 () Bool)

(assert (=> d!497808 (=> res!739888 e!1058661)))

(assert (=> d!497808 (= res!739888 (not ((_ is Node!6070) (c!268209 lt!611594))))))

(assert (=> d!497808 (= (appendAssocInst!463 (c!268209 lt!611594) (c!268209 lt!611599)) true)))

(declare-fun b!1650835 () Bool)

(declare-fun e!1058669 () Bool)

(declare-fun e!1058665 () Bool)

(assert (=> b!1650835 (= e!1058669 e!1058665)))

(declare-fun res!739885 () Bool)

(assert (=> b!1650835 (=> res!739885 e!1058665)))

(assert (=> b!1650835 (= res!739885 (not ((_ is Node!6070) (right!14923 (c!268209 lt!611594)))))))

(declare-fun b!1650836 () Bool)

(declare-fun e!1058664 () Bool)

(assert (=> b!1650836 (= e!1058664 (appendAssoc!109 (list!7244 (left!14593 (c!268209 lt!611594))) (list!7244 (left!14593 (right!14923 (c!268209 lt!611594)))) (++!4922 (list!7244 (right!14923 (right!14923 (c!268209 lt!611594)))) (list!7244 (c!268209 lt!611599)))))))

(declare-fun b!1650837 () Bool)

(declare-fun e!1058662 () Bool)

(assert (=> b!1650837 (= e!1058662 e!1058663)))

(declare-fun res!739884 () Bool)

(assert (=> b!1650837 (=> (not res!739884) (not e!1058663))))

(assert (=> b!1650837 (= res!739884 (appendAssoc!109 (list!7244 (c!268209 lt!611594)) (list!7244 (left!14593 (c!268209 lt!611599))) (list!7244 (right!14923 (c!268209 lt!611599)))))))

(declare-fun b!1650838 () Bool)

(assert (=> b!1650838 (= e!1058665 e!1058664)))

(declare-fun res!739881 () Bool)

(assert (=> b!1650838 (=> (not res!739881) (not e!1058664))))

(assert (=> b!1650838 (= res!739881 (appendAssoc!109 (list!7244 (left!14593 (right!14923 (c!268209 lt!611594)))) (list!7244 (right!14923 (right!14923 (c!268209 lt!611594)))) (list!7244 (c!268209 lt!611599))))))

(declare-fun b!1650839 () Bool)

(assert (=> b!1650839 (= e!1058668 e!1058662)))

(declare-fun res!739886 () Bool)

(assert (=> b!1650839 (=> res!739886 e!1058662)))

(assert (=> b!1650839 (= res!739886 (not ((_ is Node!6070) (c!268209 lt!611599))))))

(declare-fun b!1650840 () Bool)

(assert (=> b!1650840 (= e!1058666 e!1058667)))

(declare-fun res!739887 () Bool)

(assert (=> b!1650840 (=> (not res!739887) (not e!1058667))))

(assert (=> b!1650840 (= res!739887 (appendAssoc!109 (list!7244 (c!268209 lt!611594)) (list!7244 (left!14593 (left!14593 (c!268209 lt!611599)))) (list!7244 (right!14923 (left!14593 (c!268209 lt!611599))))))))

(declare-fun b!1650841 () Bool)

(assert (=> b!1650841 (= e!1058661 e!1058669)))

(declare-fun res!739883 () Bool)

(assert (=> b!1650841 (=> (not res!739883) (not e!1058669))))

(assert (=> b!1650841 (= res!739883 (appendAssoc!109 (list!7244 (left!14593 (c!268209 lt!611594))) (list!7244 (right!14923 (c!268209 lt!611594))) (list!7244 (c!268209 lt!611599))))))

(assert (= (and d!497808 (not res!739888)) b!1650841))

(assert (= (and b!1650841 res!739883) b!1650835))

(assert (= (and b!1650835 (not res!739885)) b!1650838))

(assert (= (and b!1650838 res!739881) b!1650836))

(assert (= (and d!497808 res!739889) b!1650839))

(assert (= (and b!1650839 (not res!739886)) b!1650837))

(assert (= (and b!1650837 res!739884) b!1650834))

(assert (= (and b!1650834 (not res!739882)) b!1650840))

(assert (= (and b!1650840 res!739887) b!1650833))

(declare-fun m!2000261 () Bool)

(assert (=> b!1650836 m!2000261))

(declare-fun m!2000263 () Bool)

(assert (=> b!1650836 m!2000263))

(assert (=> b!1650836 m!2000219))

(assert (=> b!1650836 m!2000263))

(declare-fun m!2000265 () Bool)

(assert (=> b!1650836 m!2000265))

(declare-fun m!2000267 () Bool)

(assert (=> b!1650836 m!2000267))

(assert (=> b!1650836 m!2000261))

(assert (=> b!1650836 m!1998975))

(assert (=> b!1650836 m!2000265))

(assert (=> b!1650836 m!1998975))

(assert (=> b!1650836 m!2000219))

(assert (=> b!1650841 m!2000219))

(assert (=> b!1650841 m!2000221))

(assert (=> b!1650841 m!1998975))

(assert (=> b!1650841 m!2000219))

(assert (=> b!1650841 m!2000221))

(assert (=> b!1650841 m!1998975))

(declare-fun m!2000269 () Bool)

(assert (=> b!1650841 m!2000269))

(assert (=> b!1650840 m!1998721))

(declare-fun m!2000271 () Bool)

(assert (=> b!1650840 m!2000271))

(declare-fun m!2000273 () Bool)

(assert (=> b!1650840 m!2000273))

(assert (=> b!1650840 m!1998721))

(assert (=> b!1650840 m!2000271))

(assert (=> b!1650840 m!2000273))

(declare-fun m!2000275 () Bool)

(assert (=> b!1650840 m!2000275))

(assert (=> b!1650837 m!1998721))

(declare-fun m!2000277 () Bool)

(assert (=> b!1650837 m!2000277))

(declare-fun m!2000279 () Bool)

(assert (=> b!1650837 m!2000279))

(assert (=> b!1650837 m!1998721))

(assert (=> b!1650837 m!2000277))

(assert (=> b!1650837 m!2000279))

(declare-fun m!2000281 () Bool)

(assert (=> b!1650837 m!2000281))

(assert (=> b!1650833 m!1998721))

(assert (=> b!1650833 m!2000279))

(assert (=> b!1650833 m!2000273))

(declare-fun m!2000283 () Bool)

(assert (=> b!1650833 m!2000283))

(assert (=> b!1650833 m!2000273))

(assert (=> b!1650833 m!2000279))

(declare-fun m!2000285 () Bool)

(assert (=> b!1650833 m!2000285))

(assert (=> b!1650833 m!2000271))

(assert (=> b!1650833 m!1998721))

(assert (=> b!1650833 m!2000271))

(assert (=> b!1650833 m!2000283))

(assert (=> b!1650838 m!2000263))

(assert (=> b!1650838 m!2000261))

(assert (=> b!1650838 m!1998975))

(assert (=> b!1650838 m!2000263))

(assert (=> b!1650838 m!2000261))

(assert (=> b!1650838 m!1998975))

(declare-fun m!2000287 () Bool)

(assert (=> b!1650838 m!2000287))

(assert (=> d!497414 d!497808))

(declare-fun bm!105946 () Bool)

(declare-fun call!105964 () Conc!6070)

(declare-fun call!105957 () Conc!6070)

(assert (=> bm!105946 (= call!105964 call!105957)))

(declare-fun b!1650884 () Bool)

(declare-fun e!1058690 () Conc!6070)

(declare-fun e!1058698 () Conc!6070)

(assert (=> b!1650884 (= e!1058690 e!1058698)))

(declare-fun lt!612613 () Conc!6070)

(declare-fun call!105955 () Conc!6070)

(assert (=> b!1650884 (= lt!612613 call!105955)))

(declare-fun c!268509 () Bool)

(declare-fun call!105953 () Int)

(declare-fun call!105959 () Int)

(assert (=> b!1650884 (= c!268509 (= call!105953 (- call!105959 3)))))

(declare-fun b!1650885 () Bool)

(declare-fun e!1058695 () Conc!6070)

(declare-fun call!105963 () Conc!6070)

(assert (=> b!1650885 (= e!1058695 call!105963)))

(declare-fun b!1650886 () Bool)

(declare-fun e!1058694 () Conc!6070)

(declare-fun call!105962 () Conc!6070)

(assert (=> b!1650886 (= e!1058694 call!105962)))

(declare-fun b!1650887 () Bool)

(assert (=> b!1650887 (= e!1058694 call!105962)))

(declare-fun bm!105947 () Bool)

(declare-fun call!105952 () Conc!6070)

(assert (=> bm!105947 (= call!105963 call!105952)))

(declare-fun b!1650888 () Bool)

(declare-fun e!1058699 () Conc!6070)

(declare-fun e!1058692 () Conc!6070)

(assert (=> b!1650888 (= e!1058699 e!1058692)))

(declare-fun c!268510 () Bool)

(assert (=> b!1650888 (= c!268510 (= (c!268209 lt!611599) Empty!6070))))

(declare-fun bm!105948 () Bool)

(declare-fun call!105965 () Conc!6070)

(declare-fun call!105956 () Conc!6070)

(assert (=> bm!105948 (= call!105965 call!105956)))

(declare-fun b!1650889 () Bool)

(declare-fun e!1058691 () Bool)

(declare-fun lt!612611 () Conc!6070)

(assert (=> b!1650889 (= e!1058691 (= (list!7244 lt!612611) (++!4922 (list!7244 (c!268209 lt!611594)) (list!7244 (c!268209 lt!611599)))))))

(declare-fun b!1650890 () Bool)

(declare-fun c!268508 () Bool)

(declare-fun call!105961 () Int)

(declare-fun call!105951 () Int)

(assert (=> b!1650890 (= c!268508 (>= call!105961 call!105951))))

(declare-fun e!1058693 () Conc!6070)

(assert (=> b!1650890 (= e!1058693 e!1058690)))

(declare-fun c!268506 () Bool)

(declare-fun bm!105949 () Bool)

(assert (=> bm!105949 (= call!105951 (height!941 (ite c!268506 (right!14923 (c!268209 lt!611594)) (left!14593 (c!268209 lt!611599)))))))

(declare-fun b!1650891 () Bool)

(declare-fun c!268504 () Bool)

(declare-fun lt!612612 () Int)

(assert (=> b!1650891 (= c!268504 (and (<= (- 1) lt!612612) (<= lt!612612 1)))))

(assert (=> b!1650891 (= lt!612612 (- (height!941 (c!268209 lt!611599)) (height!941 (c!268209 lt!611594))))))

(declare-fun e!1058697 () Conc!6070)

(assert (=> b!1650891 (= e!1058692 e!1058697)))

(declare-fun bm!105950 () Bool)

(declare-fun call!105960 () Conc!6070)

(assert (=> bm!105950 (= call!105952 call!105960)))

(declare-fun b!1650892 () Bool)

(assert (=> b!1650892 (= e!1058697 e!1058693)))

(assert (=> b!1650892 (= c!268506 (< lt!612612 (- 1)))))

(declare-fun b!1650893 () Bool)

(declare-fun e!1058696 () Bool)

(assert (=> b!1650893 (= e!1058696 (isBalanced!1862 (c!268209 lt!611599)))))

(declare-fun b!1650894 () Bool)

(assert (=> b!1650894 (= e!1058690 call!105957)))

(declare-fun c!268503 () Bool)

(declare-fun bm!105951 () Bool)

(assert (=> bm!105951 (= call!105956 (++!4924 (ite c!268506 (ite c!268503 (right!14923 (c!268209 lt!611594)) (right!14923 (right!14923 (c!268209 lt!611594)))) (c!268209 lt!611594)) (ite c!268506 (c!268209 lt!611599) (ite c!268508 (left!14593 (c!268209 lt!611599)) (left!14593 (left!14593 (c!268209 lt!611599)))))))))

(declare-fun b!1650895 () Bool)

(declare-fun res!739904 () Bool)

(assert (=> b!1650895 (=> (not res!739904) (not e!1058691))))

(assert (=> b!1650895 (= res!739904 (>= (height!941 lt!612611) (max!0 (height!941 (c!268209 lt!611594)) (height!941 (c!268209 lt!611599)))))))

(declare-fun b!1650896 () Bool)

(assert (=> b!1650896 (= c!268503 (>= call!105961 call!105951))))

(assert (=> b!1650896 (= e!1058693 e!1058695)))

(declare-fun b!1650897 () Bool)

(assert (=> b!1650897 (= e!1058699 (c!268209 lt!611599))))

(declare-fun b!1650898 () Bool)

(assert (=> b!1650898 (= e!1058695 e!1058694)))

(declare-fun lt!612610 () Conc!6070)

(assert (=> b!1650898 (= lt!612610 call!105965)))

(declare-fun c!268505 () Bool)

(assert (=> b!1650898 (= c!268505 (= call!105959 (- call!105953 3)))))

(declare-fun bm!105952 () Bool)

(declare-fun call!105954 () Conc!6070)

(declare-fun call!105958 () Conc!6070)

(assert (=> bm!105952 (= call!105954 call!105958)))

(declare-fun bm!105953 () Bool)

(declare-fun call!105966 () Conc!6070)

(declare-fun <>!142 (Conc!6070 Conc!6070) Conc!6070)

(assert (=> bm!105953 (= call!105958 (<>!142 (ite c!268506 (ite c!268505 (left!14593 (c!268209 lt!611594)) call!105966) (ite c!268509 lt!612613 (right!14923 (left!14593 (c!268209 lt!611599))))) (ite c!268506 (ite c!268505 call!105966 lt!612610) (ite c!268509 (right!14923 (left!14593 (c!268209 lt!611599))) (right!14923 (c!268209 lt!611599))))))))

(declare-fun b!1650899 () Bool)

(assert (=> b!1650899 (= e!1058698 call!105964)))

(declare-fun bm!105954 () Bool)

(assert (=> bm!105954 (= call!105953 (height!941 (ite c!268506 (c!268209 lt!611594) lt!612613)))))

(declare-fun bm!105955 () Bool)

(assert (=> bm!105955 (= call!105962 call!105958)))

(declare-fun bm!105956 () Bool)

(assert (=> bm!105956 (= call!105960 (<>!142 (ite c!268504 (c!268209 lt!611594) (ite c!268506 (ite c!268503 (left!14593 (c!268209 lt!611594)) (ite c!268505 (left!14593 (right!14923 (c!268209 lt!611594))) (left!14593 (c!268209 lt!611594)))) (ite c!268508 call!105955 (ite c!268509 call!105954 lt!612613)))) (ite c!268504 (c!268209 lt!611599) (ite c!268506 (ite c!268503 call!105965 (ite c!268505 lt!612610 (left!14593 (right!14923 (c!268209 lt!611594))))) (ite (or c!268508 c!268509) (right!14923 (c!268209 lt!611599)) call!105954)))))))

(declare-fun b!1650900 () Bool)

(assert (=> b!1650900 (= e!1058698 call!105964)))

(declare-fun b!1650901 () Bool)

(declare-fun res!739903 () Bool)

(assert (=> b!1650901 (=> (not res!739903) (not e!1058691))))

(assert (=> b!1650901 (= res!739903 (<= (height!941 lt!612611) (+ (max!0 (height!941 (c!268209 lt!611594)) (height!941 (c!268209 lt!611599))) 1)))))

(declare-fun d!497810 () Bool)

(assert (=> d!497810 e!1058691))

(declare-fun res!739902 () Bool)

(assert (=> d!497810 (=> (not res!739902) (not e!1058691))))

(assert (=> d!497810 (= res!739902 (appendAssocInst!463 (c!268209 lt!611594) (c!268209 lt!611599)))))

(assert (=> d!497810 (= lt!612611 e!1058699)))

(declare-fun c!268507 () Bool)

(assert (=> d!497810 (= c!268507 (= (c!268209 lt!611594) Empty!6070))))

(assert (=> d!497810 e!1058696))

(declare-fun res!739901 () Bool)

(assert (=> d!497810 (=> (not res!739901) (not e!1058696))))

(assert (=> d!497810 (= res!739901 (isBalanced!1862 (c!268209 lt!611594)))))

(assert (=> d!497810 (= (++!4924 (c!268209 lt!611594) (c!268209 lt!611599)) lt!612611)))

(declare-fun bm!105957 () Bool)

(assert (=> bm!105957 (= call!105957 call!105952)))

(declare-fun bm!105958 () Bool)

(assert (=> bm!105958 (= call!105961 (height!941 (ite c!268506 (left!14593 (c!268209 lt!611594)) (right!14923 (c!268209 lt!611599)))))))

(declare-fun bm!105959 () Bool)

(assert (=> bm!105959 (= call!105955 call!105956)))

(declare-fun b!1650902 () Bool)

(declare-fun res!739900 () Bool)

(assert (=> b!1650902 (=> (not res!739900) (not e!1058691))))

(assert (=> b!1650902 (= res!739900 (isBalanced!1862 lt!612611))))

(declare-fun b!1650903 () Bool)

(assert (=> b!1650903 (= e!1058692 (c!268209 lt!611594))))

(declare-fun bm!105960 () Bool)

(assert (=> bm!105960 (= call!105959 (height!941 (ite c!268506 lt!612610 (c!268209 lt!611599))))))

(declare-fun bm!105961 () Bool)

(assert (=> bm!105961 (= call!105966 call!105963)))

(declare-fun b!1650904 () Bool)

(assert (=> b!1650904 (= e!1058697 call!105960)))

(assert (= (and d!497810 res!739901) b!1650893))

(assert (= (and d!497810 c!268507) b!1650897))

(assert (= (and d!497810 (not c!268507)) b!1650888))

(assert (= (and b!1650888 c!268510) b!1650903))

(assert (= (and b!1650888 (not c!268510)) b!1650891))

(assert (= (and b!1650891 c!268504) b!1650904))

(assert (= (and b!1650891 (not c!268504)) b!1650892))

(assert (= (and b!1650892 c!268506) b!1650896))

(assert (= (and b!1650892 (not c!268506)) b!1650890))

(assert (= (and b!1650896 c!268503) b!1650885))

(assert (= (and b!1650896 (not c!268503)) b!1650898))

(assert (= (and b!1650898 c!268505) b!1650886))

(assert (= (and b!1650898 (not c!268505)) b!1650887))

(assert (= (or b!1650886 b!1650887) bm!105961))

(assert (= (or b!1650886 b!1650887) bm!105955))

(assert (= (or b!1650885 b!1650898) bm!105948))

(assert (= (or b!1650885 bm!105961) bm!105947))

(assert (= (and b!1650890 c!268508) b!1650894))

(assert (= (and b!1650890 (not c!268508)) b!1650884))

(assert (= (and b!1650884 c!268509) b!1650899))

(assert (= (and b!1650884 (not c!268509)) b!1650900))

(assert (= (or b!1650899 b!1650900) bm!105952))

(assert (= (or b!1650899 b!1650900) bm!105946))

(assert (= (or b!1650894 b!1650884) bm!105959))

(assert (= (or b!1650894 bm!105946) bm!105957))

(assert (= (or bm!105955 bm!105952) bm!105953))

(assert (= (or bm!105947 bm!105957) bm!105950))

(assert (= (or b!1650896 b!1650890) bm!105958))

(assert (= (or b!1650896 b!1650890) bm!105949))

(assert (= (or bm!105948 bm!105959) bm!105951))

(assert (= (or b!1650898 b!1650884) bm!105960))

(assert (= (or b!1650898 b!1650884) bm!105954))

(assert (= (or b!1650904 bm!105950) bm!105956))

(assert (= (and d!497810 res!739902) b!1650902))

(assert (= (and b!1650902 res!739900) b!1650901))

(assert (= (and b!1650901 res!739903) b!1650895))

(assert (= (and b!1650895 res!739904) b!1650889))

(declare-fun m!2000289 () Bool)

(assert (=> bm!105951 m!2000289))

(assert (=> d!497810 m!1998841))

(declare-fun m!2000291 () Bool)

(assert (=> d!497810 m!2000291))

(declare-fun m!2000293 () Bool)

(assert (=> b!1650893 m!2000293))

(declare-fun m!2000295 () Bool)

(assert (=> bm!105958 m!2000295))

(declare-fun m!2000297 () Bool)

(assert (=> b!1650901 m!2000297))

(assert (=> b!1650901 m!1998827))

(assert (=> b!1650901 m!1998825))

(assert (=> b!1650901 m!1998827))

(assert (=> b!1650901 m!1998825))

(assert (=> b!1650901 m!1998831))

(declare-fun m!2000299 () Bool)

(assert (=> b!1650902 m!2000299))

(assert (=> b!1650895 m!2000297))

(assert (=> b!1650895 m!1998827))

(assert (=> b!1650895 m!1998825))

(assert (=> b!1650895 m!1998827))

(assert (=> b!1650895 m!1998825))

(assert (=> b!1650895 m!1998831))

(declare-fun m!2000301 () Bool)

(assert (=> b!1650889 m!2000301))

(assert (=> b!1650889 m!1998721))

(assert (=> b!1650889 m!1998975))

(assert (=> b!1650889 m!1998721))

(assert (=> b!1650889 m!1998975))

(declare-fun m!2000303 () Bool)

(assert (=> b!1650889 m!2000303))

(declare-fun m!2000305 () Bool)

(assert (=> bm!105960 m!2000305))

(declare-fun m!2000307 () Bool)

(assert (=> bm!105956 m!2000307))

(declare-fun m!2000309 () Bool)

(assert (=> bm!105953 m!2000309))

(declare-fun m!2000311 () Bool)

(assert (=> bm!105954 m!2000311))

(assert (=> b!1650891 m!1998825))

(assert (=> b!1650891 m!1998827))

(declare-fun m!2000313 () Bool)

(assert (=> bm!105949 m!2000313))

(assert (=> d!497414 d!497810))

(declare-fun d!497812 () Bool)

(declare-fun c!268511 () Bool)

(assert (=> d!497812 (= c!268511 ((_ is Empty!6070) (c!268209 lt!611597)))))

(declare-fun e!1058700 () List!18279)

(assert (=> d!497812 (= (list!7244 (c!268209 lt!611597)) e!1058700)))

(declare-fun b!1650906 () Bool)

(declare-fun e!1058701 () List!18279)

(assert (=> b!1650906 (= e!1058700 e!1058701)))

(declare-fun c!268512 () Bool)

(assert (=> b!1650906 (= c!268512 ((_ is Leaf!8896) (c!268209 lt!611597)))))

(declare-fun b!1650905 () Bool)

(assert (=> b!1650905 (= e!1058700 Nil!18209)))

(declare-fun b!1650908 () Bool)

(assert (=> b!1650908 (= e!1058701 (++!4922 (list!7244 (left!14593 (c!268209 lt!611597))) (list!7244 (right!14923 (c!268209 lt!611597)))))))

(declare-fun b!1650907 () Bool)

(assert (=> b!1650907 (= e!1058701 (list!7249 (xs!8906 (c!268209 lt!611597))))))

(assert (= (and d!497812 c!268511) b!1650905))

(assert (= (and d!497812 (not c!268511)) b!1650906))

(assert (= (and b!1650906 c!268512) b!1650907))

(assert (= (and b!1650906 (not c!268512)) b!1650908))

(declare-fun m!2000315 () Bool)

(assert (=> b!1650908 m!2000315))

(declare-fun m!2000317 () Bool)

(assert (=> b!1650908 m!2000317))

(assert (=> b!1650908 m!2000315))

(assert (=> b!1650908 m!2000317))

(declare-fun m!2000319 () Bool)

(assert (=> b!1650908 m!2000319))

(declare-fun m!2000321 () Bool)

(assert (=> b!1650907 m!2000321))

(assert (=> d!497382 d!497812))

(declare-fun d!497814 () Bool)

(declare-fun lt!612614 () Int)

(assert (=> d!497814 (>= lt!612614 0)))

(declare-fun e!1058702 () Int)

(assert (=> d!497814 (= lt!612614 e!1058702)))

(declare-fun c!268513 () Bool)

(assert (=> d!497814 (= c!268513 ((_ is Nil!18209) (_2!10345 (get!5302 lt!611619))))))

(assert (=> d!497814 (= (size!14501 (_2!10345 (get!5302 lt!611619))) lt!612614)))

(declare-fun b!1650909 () Bool)

(assert (=> b!1650909 (= e!1058702 0)))

(declare-fun b!1650910 () Bool)

(assert (=> b!1650910 (= e!1058702 (+ 1 (size!14501 (t!150804 (_2!10345 (get!5302 lt!611619))))))))

(assert (= (and d!497814 c!268513) b!1650909))

(assert (= (and d!497814 (not c!268513)) b!1650910))

(declare-fun m!2000323 () Bool)

(assert (=> b!1650910 m!2000323))

(assert (=> b!1649561 d!497814))

(assert (=> b!1649561 d!497614))

(declare-fun d!497816 () Bool)

(declare-fun lt!612615 () Int)

(assert (=> d!497816 (>= lt!612615 0)))

(declare-fun e!1058703 () Int)

(assert (=> d!497816 (= lt!612615 e!1058703)))

(declare-fun c!268514 () Bool)

(assert (=> d!497816 (= c!268514 ((_ is Nil!18209) lt!611579))))

(assert (=> d!497816 (= (size!14501 lt!611579) lt!612615)))

(declare-fun b!1650911 () Bool)

(assert (=> b!1650911 (= e!1058703 0)))

(declare-fun b!1650912 () Bool)

(assert (=> b!1650912 (= e!1058703 (+ 1 (size!14501 (t!150804 lt!611579))))))

(assert (= (and d!497816 c!268514) b!1650911))

(assert (= (and d!497816 (not c!268514)) b!1650912))

(declare-fun m!2000325 () Bool)

(assert (=> b!1650912 m!2000325))

(assert (=> b!1649561 d!497816))

(declare-fun d!497818 () Bool)

(declare-fun e!1058706 () Bool)

(assert (=> d!497818 e!1058706))

(declare-fun res!739907 () Bool)

(assert (=> d!497818 (=> (not res!739907) (not e!1058706))))

(declare-fun lt!612618 () BalanceConc!12084)

(assert (=> d!497818 (= res!739907 (= (list!7241 lt!612618) lt!611596))))

(declare-fun fromList!398 (List!18279) Conc!6070)

(assert (=> d!497818 (= lt!612618 (BalanceConc!12085 (fromList!398 lt!611596)))))

(assert (=> d!497818 (= (fromListB!966 lt!611596) lt!612618)))

(declare-fun b!1650915 () Bool)

(assert (=> b!1650915 (= e!1058706 (isBalanced!1862 (fromList!398 lt!611596)))))

(assert (= (and d!497818 res!739907) b!1650915))

(declare-fun m!2000327 () Bool)

(assert (=> d!497818 m!2000327))

(declare-fun m!2000329 () Bool)

(assert (=> d!497818 m!2000329))

(assert (=> b!1650915 m!2000329))

(assert (=> b!1650915 m!2000329))

(declare-fun m!2000331 () Bool)

(assert (=> b!1650915 m!2000331))

(assert (=> d!497438 d!497818))

(assert (=> b!1649965 d!497810))

(declare-fun d!497820 () Bool)

(assert (=> d!497820 (= (max!0 (height!941 (c!268209 lt!611594)) (height!941 (c!268209 lt!611599))) (ite (< (height!941 (c!268209 lt!611594)) (height!941 (c!268209 lt!611599))) (height!941 (c!268209 lt!611599)) (height!941 (c!268209 lt!611594))))))

(assert (=> b!1649965 d!497820))

(declare-fun d!497822 () Bool)

(assert (=> d!497822 (= (height!941 (c!268209 lt!611599)) (ite ((_ is Empty!6070) (c!268209 lt!611599)) 0 (ite ((_ is Leaf!8896) (c!268209 lt!611599)) 1 (cheight!6281 (c!268209 lt!611599)))))))

(assert (=> b!1649965 d!497822))

(declare-fun d!497824 () Bool)

(assert (=> d!497824 (= (height!941 (c!268209 lt!611594)) (ite ((_ is Empty!6070) (c!268209 lt!611594)) 0 (ite ((_ is Leaf!8896) (c!268209 lt!611594)) 1 (cheight!6281 (c!268209 lt!611594)))))))

(assert (=> b!1649965 d!497824))

(declare-fun d!497826 () Bool)

(assert (=> d!497826 (= (height!941 (++!4924 (c!268209 lt!611594) (c!268209 lt!611599))) (ite ((_ is Empty!6070) (++!4924 (c!268209 lt!611594) (c!268209 lt!611599))) 0 (ite ((_ is Leaf!8896) (++!4924 (c!268209 lt!611594) (c!268209 lt!611599))) 1 (cheight!6281 (++!4924 (c!268209 lt!611594) (c!268209 lt!611599))))))))

(assert (=> b!1649965 d!497826))

(declare-fun b!1650916 () Bool)

(declare-fun e!1058709 () Bool)

(declare-fun e!1058708 () Bool)

(assert (=> b!1650916 (= e!1058709 e!1058708)))

(declare-fun res!739908 () Bool)

(assert (=> b!1650916 (=> (not res!739908) (not e!1058708))))

(assert (=> b!1650916 (= res!739908 (not ((_ is Nil!18209) (tail!2444 lt!611593))))))

(declare-fun b!1650918 () Bool)

(assert (=> b!1650918 (= e!1058708 (isPrefix!1469 (tail!2444 (tail!2444 lt!611596)) (tail!2444 (tail!2444 lt!611593))))))

(declare-fun b!1650917 () Bool)

(declare-fun res!739909 () Bool)

(assert (=> b!1650917 (=> (not res!739909) (not e!1058708))))

(assert (=> b!1650917 (= res!739909 (= (head!3631 (tail!2444 lt!611596)) (head!3631 (tail!2444 lt!611593))))))

(declare-fun b!1650919 () Bool)

(declare-fun e!1058707 () Bool)

(assert (=> b!1650919 (= e!1058707 (>= (size!14501 (tail!2444 lt!611593)) (size!14501 (tail!2444 lt!611596))))))

(declare-fun d!497828 () Bool)

(assert (=> d!497828 e!1058707))

(declare-fun res!739911 () Bool)

(assert (=> d!497828 (=> res!739911 e!1058707)))

(declare-fun lt!612619 () Bool)

(assert (=> d!497828 (= res!739911 (not lt!612619))))

(assert (=> d!497828 (= lt!612619 e!1058709)))

(declare-fun res!739910 () Bool)

(assert (=> d!497828 (=> res!739910 e!1058709)))

(assert (=> d!497828 (= res!739910 ((_ is Nil!18209) (tail!2444 lt!611596)))))

(assert (=> d!497828 (= (isPrefix!1469 (tail!2444 lt!611596) (tail!2444 lt!611593)) lt!612619)))

(assert (= (and d!497828 (not res!739910)) b!1650916))

(assert (= (and b!1650916 res!739908) b!1650917))

(assert (= (and b!1650917 res!739909) b!1650918))

(assert (= (and d!497828 (not res!739911)) b!1650919))

(assert (=> b!1650918 m!1998405))

(declare-fun m!2000333 () Bool)

(assert (=> b!1650918 m!2000333))

(assert (=> b!1650918 m!1998407))

(declare-fun m!2000335 () Bool)

(assert (=> b!1650918 m!2000335))

(assert (=> b!1650918 m!2000333))

(assert (=> b!1650918 m!2000335))

(declare-fun m!2000337 () Bool)

(assert (=> b!1650918 m!2000337))

(assert (=> b!1650917 m!1998405))

(declare-fun m!2000339 () Bool)

(assert (=> b!1650917 m!2000339))

(assert (=> b!1650917 m!1998407))

(declare-fun m!2000341 () Bool)

(assert (=> b!1650917 m!2000341))

(assert (=> b!1650919 m!1998407))

(declare-fun m!2000343 () Bool)

(assert (=> b!1650919 m!2000343))

(assert (=> b!1650919 m!1998405))

(declare-fun m!2000345 () Bool)

(assert (=> b!1650919 m!2000345))

(assert (=> b!1649734 d!497828))

(declare-fun d!497830 () Bool)

(assert (=> d!497830 (= (tail!2444 lt!611596) (t!150804 lt!611596))))

(assert (=> b!1649734 d!497830))

(declare-fun d!497832 () Bool)

(assert (=> d!497832 (= (tail!2444 lt!611593) (t!150804 lt!611593))))

(assert (=> b!1649734 d!497832))

(declare-fun d!497834 () Bool)

(assert (=> d!497834 (= (list!7241 (_2!10343 lt!612187)) (list!7244 (c!268209 (_2!10343 lt!612187))))))

(declare-fun bs!396506 () Bool)

(assert (= bs!396506 d!497834))

(declare-fun m!2000347 () Bool)

(assert (=> bs!396506 m!2000347))

(assert (=> b!1650023 d!497834))

(assert (=> b!1650023 d!497632))

(assert (=> b!1650023 d!497640))

(declare-fun d!497836 () Bool)

(assert (=> d!497836 true))

(declare-fun lambda!67686 () Int)

(declare-fun order!10883 () Int)

(declare-fun dynLambda!8170 (Int Int) Int)

(assert (=> d!497836 (< (dynLambda!8163 order!10871 (toValue!4658 (transformation!3211 (h!23612 rules!1846)))) (dynLambda!8170 order!10883 lambda!67686))))

(declare-fun Forall2!525 (Int) Bool)

(assert (=> d!497836 (= (equivClasses!1182 (toChars!4517 (transformation!3211 (h!23612 rules!1846))) (toValue!4658 (transformation!3211 (h!23612 rules!1846)))) (Forall2!525 lambda!67686))))

(declare-fun bs!396507 () Bool)

(assert (= bs!396507 d!497836))

(declare-fun m!2000349 () Bool)

(assert (=> bs!396507 m!2000349))

(assert (=> b!1649541 d!497836))

(declare-fun d!497838 () Bool)

(declare-fun charsToBigInt!1 (List!18280) Int)

(assert (=> d!497838 (= (inv!17 (value!101186 (h!23613 tokens!457))) (= (charsToBigInt!1 (text!23555 (value!101186 (h!23613 tokens!457)))) (value!101178 (value!101186 (h!23613 tokens!457)))))))

(declare-fun bs!396508 () Bool)

(assert (= bs!396508 d!497838))

(declare-fun m!2000351 () Bool)

(assert (=> bs!396508 m!2000351))

(assert (=> b!1649777 d!497838))

(declare-fun c!268518 () Bool)

(declare-fun d!497840 () Bool)

(assert (=> d!497840 (= c!268518 (isEmpty!11246 (dropList!674 (++!4921 lt!611594 lt!611599) lt!612167)))))

(declare-fun e!1058714 () Bool)

(assert (=> d!497840 (= (prefixMatchZipper!180 lt!612168 (dropList!674 (++!4921 lt!611594 lt!611599) lt!612167)) e!1058714)))

(declare-fun b!1650928 () Bool)

(declare-fun lostCauseZipper!34 ((InoxSet Context!1790)) Bool)

(assert (=> b!1650928 (= e!1058714 (not (lostCauseZipper!34 lt!612168)))))

(declare-fun b!1650929 () Bool)

(declare-fun derivationStepZipper!58 ((InoxSet Context!1790) C!9252) (InoxSet Context!1790))

(assert (=> b!1650929 (= e!1058714 (prefixMatchZipper!180 (derivationStepZipper!58 lt!612168 (head!3631 (dropList!674 (++!4921 lt!611594 lt!611599) lt!612167))) (tail!2444 (dropList!674 (++!4921 lt!611594 lt!611599) lt!612167))))))

(assert (= (and d!497840 c!268518) b!1650928))

(assert (= (and d!497840 (not c!268518)) b!1650929))

(assert (=> d!497840 m!1998879))

(declare-fun m!2000353 () Bool)

(assert (=> d!497840 m!2000353))

(declare-fun m!2000355 () Bool)

(assert (=> b!1650928 m!2000355))

(assert (=> b!1650929 m!1998879))

(declare-fun m!2000357 () Bool)

(assert (=> b!1650929 m!2000357))

(assert (=> b!1650929 m!2000357))

(declare-fun m!2000359 () Bool)

(assert (=> b!1650929 m!2000359))

(assert (=> b!1650929 m!1998879))

(declare-fun m!2000361 () Bool)

(assert (=> b!1650929 m!2000361))

(assert (=> b!1650929 m!2000359))

(assert (=> b!1650929 m!2000361))

(declare-fun m!2000363 () Bool)

(assert (=> b!1650929 m!2000363))

(assert (=> d!497420 d!497840))

(declare-fun d!497842 () Bool)

(assert (=> d!497842 (= (prefixMatch!456 lt!611598 lt!612164) (prefixMatchZipper!180 lt!612169 lt!612164))))

(declare-fun lt!612622 () Unit!30315)

(declare-fun choose!9915 ((InoxSet Context!1790) List!18287 Regex!4539 List!18279) Unit!30315)

(assert (=> d!497842 (= lt!612622 (choose!9915 lt!612169 lt!612166 lt!611598 lt!612164))))

(assert (=> d!497842 (validRegex!1808 lt!611598)))

(assert (=> d!497842 (= (prefixMatchZipperRegexEquiv!180 lt!612169 lt!612166 lt!611598 lt!612164) lt!612622)))

(declare-fun bs!396509 () Bool)

(assert (= bs!396509 d!497842))

(assert (=> bs!396509 m!1998883))

(assert (=> bs!396509 m!1998859))

(declare-fun m!2000365 () Bool)

(assert (=> bs!396509 m!2000365))

(assert (=> bs!396509 m!1998871))

(assert (=> d!497420 d!497842))

(declare-fun d!497844 () Bool)

(declare-fun res!739924 () Bool)

(declare-fun e!1058738 () Bool)

(assert (=> d!497844 (=> res!739924 e!1058738)))

(assert (=> d!497844 (= res!739924 ((_ is ElementMatch!4539) lt!611598))))

(assert (=> d!497844 (= (validRegex!1808 lt!611598) e!1058738)))

(declare-fun b!1650956 () Bool)

(declare-fun e!1058736 () Bool)

(assert (=> b!1650956 (= e!1058738 e!1058736)))

(declare-fun c!268528 () Bool)

(assert (=> b!1650956 (= c!268528 ((_ is Star!4539) lt!611598))))

(declare-fun b!1650957 () Bool)

(declare-fun e!1058737 () Bool)

(declare-fun e!1058733 () Bool)

(assert (=> b!1650957 (= e!1058737 e!1058733)))

(declare-fun res!739925 () Bool)

(assert (=> b!1650957 (=> (not res!739925) (not e!1058733))))

(declare-fun call!105975 () Bool)

(assert (=> b!1650957 (= res!739925 call!105975)))

(declare-fun call!105974 () Bool)

(declare-fun c!268527 () Bool)

(declare-fun bm!105968 () Bool)

(assert (=> bm!105968 (= call!105974 (validRegex!1808 (ite c!268528 (reg!4868 lt!611598) (ite c!268527 (regTwo!9591 lt!611598) (regOne!9590 lt!611598)))))))

(declare-fun b!1650958 () Bool)

(declare-fun e!1058739 () Bool)

(assert (=> b!1650958 (= e!1058736 e!1058739)))

(declare-fun res!739926 () Bool)

(assert (=> b!1650958 (= res!739926 (not (nullable!1343 (reg!4868 lt!611598))))))

(assert (=> b!1650958 (=> (not res!739926) (not e!1058739))))

(declare-fun b!1650959 () Bool)

(declare-fun e!1058735 () Bool)

(assert (=> b!1650959 (= e!1058736 e!1058735)))

(assert (=> b!1650959 (= c!268527 ((_ is Union!4539) lt!611598))))

(declare-fun b!1650960 () Bool)

(declare-fun call!105973 () Bool)

(assert (=> b!1650960 (= e!1058733 call!105973)))

(declare-fun b!1650961 () Bool)

(declare-fun res!739927 () Bool)

(assert (=> b!1650961 (=> res!739927 e!1058737)))

(assert (=> b!1650961 (= res!739927 (not ((_ is Concat!7841) lt!611598)))))

(assert (=> b!1650961 (= e!1058735 e!1058737)))

(declare-fun bm!105969 () Bool)

(assert (=> bm!105969 (= call!105973 (validRegex!1808 (ite c!268527 (regOne!9591 lt!611598) (regTwo!9590 lt!611598))))))

(declare-fun b!1650962 () Bool)

(assert (=> b!1650962 (= e!1058739 call!105974)))

(declare-fun b!1650963 () Bool)

(declare-fun e!1058734 () Bool)

(assert (=> b!1650963 (= e!1058734 call!105975)))

(declare-fun bm!105970 () Bool)

(assert (=> bm!105970 (= call!105975 call!105974)))

(declare-fun b!1650964 () Bool)

(declare-fun res!739928 () Bool)

(assert (=> b!1650964 (=> (not res!739928) (not e!1058734))))

(assert (=> b!1650964 (= res!739928 call!105973)))

(assert (=> b!1650964 (= e!1058735 e!1058734)))

(assert (= (and d!497844 (not res!739924)) b!1650956))

(assert (= (and b!1650956 c!268528) b!1650958))

(assert (= (and b!1650956 (not c!268528)) b!1650959))

(assert (= (and b!1650958 res!739926) b!1650962))

(assert (= (and b!1650959 c!268527) b!1650964))

(assert (= (and b!1650959 (not c!268527)) b!1650961))

(assert (= (and b!1650964 res!739928) b!1650963))

(assert (= (and b!1650961 (not res!739927)) b!1650957))

(assert (= (and b!1650957 res!739925) b!1650960))

(assert (= (or b!1650963 b!1650957) bm!105970))

(assert (= (or b!1650964 b!1650960) bm!105969))

(assert (= (or b!1650962 bm!105970) bm!105968))

(declare-fun m!2000367 () Bool)

(assert (=> bm!105968 m!2000367))

(declare-fun m!2000369 () Bool)

(assert (=> b!1650958 m!2000369))

(declare-fun m!2000371 () Bool)

(assert (=> bm!105969 m!2000371))

(assert (=> d!497420 d!497844))

(declare-fun d!497846 () Bool)

(declare-fun e!1058744 () Bool)

(assert (=> d!497846 e!1058744))

(declare-fun res!739931 () Bool)

(assert (=> d!497846 (=> (not res!739931) (not e!1058744))))

(declare-fun lt!612693 () List!18287)

(declare-fun noDuplicate!253 (List!18287) Bool)

(assert (=> d!497846 (= res!739931 (noDuplicate!253 lt!612693))))

(declare-fun choose!9916 ((InoxSet Context!1790)) List!18287)

(assert (=> d!497846 (= lt!612693 (choose!9916 (focus!201 lt!611598)))))

(assert (=> d!497846 (= (toList!941 (focus!201 lt!611598)) lt!612693)))

(declare-fun b!1650971 () Bool)

(declare-fun content!2531 (List!18287) (InoxSet Context!1790))

(assert (=> b!1650971 (= e!1058744 (= (content!2531 lt!612693) (focus!201 lt!611598)))))

(assert (= (and d!497846 res!739931) b!1650971))

(declare-fun m!2000373 () Bool)

(assert (=> d!497846 m!2000373))

(assert (=> d!497846 m!1998865))

(declare-fun m!2000375 () Bool)

(assert (=> d!497846 m!2000375))

(declare-fun m!2000377 () Bool)

(assert (=> b!1650971 m!2000377))

(assert (=> d!497420 d!497846))

(declare-fun d!497848 () Bool)

(declare-fun e!1058749 () Bool)

(assert (=> d!497848 e!1058749))

(declare-fun res!739937 () Bool)

(assert (=> d!497848 (=> (not res!739937) (not e!1058749))))

(assert (=> d!497848 (= res!739937 (validRegex!1808 lt!611598))))

(assert (=> d!497848 (= (focus!201 lt!611598) (store ((as const (Array Context!1790 Bool)) false) (Context!1791 (Cons!18216 lt!611598 Nil!18216)) true))))

(declare-fun b!1650976 () Bool)

(declare-fun unfocusZipper!34 (List!18287) Regex!4539)

(assert (=> b!1650976 (= e!1058749 (= (unfocusZipper!34 (toList!941 (store ((as const (Array Context!1790 Bool)) false) (Context!1791 (Cons!18216 lt!611598 Nil!18216)) true))) lt!611598))))

(assert (= (and d!497848 res!739937) b!1650976))

(assert (=> d!497848 m!1998871))

(declare-fun m!2000379 () Bool)

(assert (=> d!497848 m!2000379))

(assert (=> b!1650976 m!2000379))

(assert (=> b!1650976 m!2000379))

(declare-fun m!2000381 () Bool)

(assert (=> b!1650976 m!2000381))

(assert (=> b!1650976 m!2000381))

(declare-fun m!2000383 () Bool)

(assert (=> b!1650976 m!2000383))

(assert (=> d!497420 d!497848))

(declare-fun d!497850 () Bool)

(declare-fun c!268531 () Bool)

(assert (=> d!497850 (= c!268531 (isEmpty!11246 lt!612164))))

(declare-fun e!1058750 () Bool)

(assert (=> d!497850 (= (prefixMatch!456 lt!611598 lt!612164) e!1058750)))

(declare-fun b!1650977 () Bool)

(assert (=> b!1650977 (= e!1058750 (not (lostCause!460 lt!611598)))))

(declare-fun b!1650978 () Bool)

(assert (=> b!1650978 (= e!1058750 (prefixMatch!456 (derivativeStep!1110 lt!611598 (head!3631 lt!612164)) (tail!2444 lt!612164)))))

(assert (= (and d!497850 c!268531) b!1650977))

(assert (= (and d!497850 (not c!268531)) b!1650978))

(declare-fun m!2000385 () Bool)

(assert (=> d!497850 m!2000385))

(assert (=> b!1650977 m!1998955))

(declare-fun m!2000387 () Bool)

(assert (=> b!1650978 m!2000387))

(assert (=> b!1650978 m!2000387))

(declare-fun m!2000389 () Bool)

(assert (=> b!1650978 m!2000389))

(declare-fun m!2000391 () Bool)

(assert (=> b!1650978 m!2000391))

(assert (=> b!1650978 m!2000389))

(assert (=> b!1650978 m!2000391))

(declare-fun m!2000393 () Bool)

(assert (=> b!1650978 m!2000393))

(assert (=> d!497420 d!497850))

(declare-fun c!268537 () Bool)

(declare-fun d!497852 () Bool)

(assert (=> d!497852 (= c!268537 (= lt!612167 (size!14504 (++!4921 lt!611594 lt!611599))))))

(declare-fun e!1058757 () Bool)

(assert (=> d!497852 (= (prefixMatchZipperSequence!623 lt!612168 (++!4921 lt!611594 lt!611599) lt!612167) e!1058757)))

(declare-fun b!1650990 () Bool)

(assert (=> b!1650990 (= e!1058757 (not (lostCauseZipper!34 lt!612168)))))

(declare-fun b!1650991 () Bool)

(assert (=> b!1650991 (= e!1058757 (prefixMatchZipperSequence!623 (derivationStepZipper!58 lt!612168 (apply!4798 (++!4921 lt!611594 lt!611599) lt!612167)) (++!4921 lt!611594 lt!611599) (+ lt!612167 1)))))

(assert (= (and d!497852 c!268537) b!1650990))

(assert (= (and d!497852 (not c!268537)) b!1650991))

(assert (=> d!497852 m!1997811))

(declare-fun m!2000395 () Bool)

(assert (=> d!497852 m!2000395))

(assert (=> b!1650990 m!2000355))

(assert (=> b!1650991 m!1997811))

(declare-fun m!2000397 () Bool)

(assert (=> b!1650991 m!2000397))

(assert (=> b!1650991 m!2000397))

(declare-fun m!2000399 () Bool)

(assert (=> b!1650991 m!2000399))

(assert (=> b!1650991 m!2000399))

(assert (=> b!1650991 m!1997811))

(declare-fun m!2000401 () Bool)

(assert (=> b!1650991 m!2000401))

(assert (=> d!497420 d!497852))

(declare-fun d!497854 () Bool)

(declare-fun c!268538 () Bool)

(assert (=> d!497854 (= c!268538 (isEmpty!11246 (list!7241 (++!4921 lt!611594 lt!611599))))))

(declare-fun e!1058758 () Bool)

(assert (=> d!497854 (= (prefixMatch!456 lt!611598 (list!7241 (++!4921 lt!611594 lt!611599))) e!1058758)))

(declare-fun b!1650992 () Bool)

(assert (=> b!1650992 (= e!1058758 (not (lostCause!460 lt!611598)))))

(declare-fun b!1650993 () Bool)

(assert (=> b!1650993 (= e!1058758 (prefixMatch!456 (derivativeStep!1110 lt!611598 (head!3631 (list!7241 (++!4921 lt!611594 lt!611599)))) (tail!2444 (list!7241 (++!4921 lt!611594 lt!611599)))))))

(assert (= (and d!497854 c!268538) b!1650992))

(assert (= (and d!497854 (not c!268538)) b!1650993))

(assert (=> d!497854 m!1998861))

(declare-fun m!2000403 () Bool)

(assert (=> d!497854 m!2000403))

(assert (=> b!1650992 m!1998955))

(assert (=> b!1650993 m!1998861))

(declare-fun m!2000405 () Bool)

(assert (=> b!1650993 m!2000405))

(assert (=> b!1650993 m!2000405))

(declare-fun m!2000407 () Bool)

(assert (=> b!1650993 m!2000407))

(assert (=> b!1650993 m!1998861))

(declare-fun m!2000409 () Bool)

(assert (=> b!1650993 m!2000409))

(assert (=> b!1650993 m!2000407))

(assert (=> b!1650993 m!2000409))

(declare-fun m!2000411 () Bool)

(assert (=> b!1650993 m!2000411))

(assert (=> d!497420 d!497854))

(declare-fun d!497856 () Bool)

(declare-fun drop!913 (List!18279 Int) List!18279)

(assert (=> d!497856 (= (dropList!674 (++!4921 lt!611594 lt!611599) lt!612167) (drop!913 (list!7244 (c!268209 (++!4921 lt!611594 lt!611599))) lt!612167))))

(declare-fun bs!396510 () Bool)

(assert (= bs!396510 d!497856))

(declare-fun m!2000493 () Bool)

(assert (=> bs!396510 m!2000493))

(assert (=> bs!396510 m!2000493))

(declare-fun m!2000497 () Bool)

(assert (=> bs!396510 m!2000497))

(assert (=> d!497420 d!497856))

(declare-fun d!497858 () Bool)

(assert (=> d!497858 (= (prefixMatchZipper!180 lt!612168 (dropList!674 (++!4921 lt!611594 lt!611599) lt!612167)) (prefixMatchZipperSequence!623 lt!612168 (++!4921 lt!611594 lt!611599) lt!612167))))

(declare-fun lt!612742 () Unit!30315)

(declare-fun choose!9917 ((InoxSet Context!1790) BalanceConc!12084 Int) Unit!30315)

(assert (=> d!497858 (= lt!612742 (choose!9917 lt!612168 (++!4921 lt!611594 lt!611599) lt!612167))))

(declare-fun e!1058773 () Bool)

(assert (=> d!497858 e!1058773))

(declare-fun res!739958 () Bool)

(assert (=> d!497858 (=> (not res!739958) (not e!1058773))))

(assert (=> d!497858 (= res!739958 (>= lt!612167 0))))

(assert (=> d!497858 (= (lemmaprefixMatchZipperSequenceEquivalent!180 lt!612168 (++!4921 lt!611594 lt!611599) lt!612167) lt!612742)))

(declare-fun b!1651015 () Bool)

(assert (=> b!1651015 (= e!1058773 (<= lt!612167 (size!14504 (++!4921 lt!611594 lt!611599))))))

(assert (= (and d!497858 res!739958) b!1651015))

(assert (=> d!497858 m!1997811))

(assert (=> d!497858 m!1998879))

(assert (=> d!497858 m!1998879))

(assert (=> d!497858 m!1998881))

(assert (=> d!497858 m!1997811))

(assert (=> d!497858 m!1998877))

(assert (=> d!497858 m!1997811))

(declare-fun m!2000523 () Bool)

(assert (=> d!497858 m!2000523))

(assert (=> b!1651015 m!1997811))

(assert (=> b!1651015 m!2000395))

(assert (=> d!497420 d!497858))

(declare-fun d!497876 () Bool)

(assert (=> d!497876 (= (list!7241 (++!4921 lt!611594 lt!611599)) (list!7244 (c!268209 (++!4921 lt!611594 lt!611599))))))

(declare-fun bs!396516 () Bool)

(assert (= bs!396516 d!497876))

(assert (=> bs!396516 m!2000493))

(assert (=> d!497420 d!497876))

(declare-fun d!497878 () Bool)

(declare-fun c!268540 () Bool)

(assert (=> d!497878 (= c!268540 (= 0 (size!14504 (++!4921 lt!611594 lt!611599))))))

(declare-fun e!1058774 () Bool)

(assert (=> d!497878 (= (prefixMatchZipperSequence!623 (focus!201 lt!611598) (++!4921 lt!611594 lt!611599) 0) e!1058774)))

(declare-fun b!1651016 () Bool)

(assert (=> b!1651016 (= e!1058774 (not (lostCauseZipper!34 (focus!201 lt!611598))))))

(declare-fun b!1651017 () Bool)

(assert (=> b!1651017 (= e!1058774 (prefixMatchZipperSequence!623 (derivationStepZipper!58 (focus!201 lt!611598) (apply!4798 (++!4921 lt!611594 lt!611599) 0)) (++!4921 lt!611594 lt!611599) (+ 0 1)))))

(assert (= (and d!497878 c!268540) b!1651016))

(assert (= (and d!497878 (not c!268540)) b!1651017))

(assert (=> d!497878 m!1997811))

(assert (=> d!497878 m!2000395))

(assert (=> b!1651016 m!1998865))

(declare-fun m!2000533 () Bool)

(assert (=> b!1651016 m!2000533))

(assert (=> b!1651017 m!1997811))

(declare-fun m!2000535 () Bool)

(assert (=> b!1651017 m!2000535))

(assert (=> b!1651017 m!1998865))

(assert (=> b!1651017 m!2000535))

(declare-fun m!2000537 () Bool)

(assert (=> b!1651017 m!2000537))

(assert (=> b!1651017 m!2000537))

(assert (=> b!1651017 m!1997811))

(declare-fun m!2000543 () Bool)

(assert (=> b!1651017 m!2000543))

(assert (=> d!497420 d!497878))

(declare-fun d!497880 () Bool)

(declare-fun c!268541 () Bool)

(assert (=> d!497880 (= c!268541 (isEmpty!11246 lt!612164))))

(declare-fun e!1058775 () Bool)

(assert (=> d!497880 (= (prefixMatchZipper!180 lt!612169 lt!612164) e!1058775)))

(declare-fun b!1651018 () Bool)

(assert (=> b!1651018 (= e!1058775 (not (lostCauseZipper!34 lt!612169)))))

(declare-fun b!1651019 () Bool)

(assert (=> b!1651019 (= e!1058775 (prefixMatchZipper!180 (derivationStepZipper!58 lt!612169 (head!3631 lt!612164)) (tail!2444 lt!612164)))))

(assert (= (and d!497880 c!268541) b!1651018))

(assert (= (and d!497880 (not c!268541)) b!1651019))

(assert (=> d!497880 m!2000385))

(declare-fun m!2000555 () Bool)

(assert (=> b!1651018 m!2000555))

(assert (=> b!1651019 m!2000387))

(assert (=> b!1651019 m!2000387))

(declare-fun m!2000557 () Bool)

(assert (=> b!1651019 m!2000557))

(assert (=> b!1651019 m!2000391))

(assert (=> b!1651019 m!2000557))

(assert (=> b!1651019 m!2000391))

(declare-fun m!2000561 () Bool)

(assert (=> b!1651019 m!2000561))

(assert (=> d!497420 d!497880))

(declare-fun b!1651039 () Bool)

(declare-fun res!739973 () Bool)

(declare-fun e!1058784 () Bool)

(assert (=> b!1651039 (=> (not res!739973) (not e!1058784))))

(assert (=> b!1651039 (= res!739973 (not (isEmpty!11251 (left!14594 (c!268211 lt!611704)))))))

(declare-fun b!1651040 () Bool)

(declare-fun res!739975 () Bool)

(assert (=> b!1651040 (=> (not res!739975) (not e!1058784))))

(assert (=> b!1651040 (= res!739975 (isBalanced!1861 (left!14594 (c!268211 lt!611704))))))

(declare-fun b!1651041 () Bool)

(assert (=> b!1651041 (= e!1058784 (not (isEmpty!11251 (right!14924 (c!268211 lt!611704)))))))

(declare-fun d!497882 () Bool)

(declare-fun res!739976 () Bool)

(declare-fun e!1058783 () Bool)

(assert (=> d!497882 (=> res!739976 e!1058783)))

(assert (=> d!497882 (= res!739976 (not ((_ is Node!6071) (c!268211 lt!611704))))))

(assert (=> d!497882 (= (isBalanced!1861 (c!268211 lt!611704)) e!1058783)))

(declare-fun b!1651038 () Bool)

(assert (=> b!1651038 (= e!1058783 e!1058784)))

(declare-fun res!739974 () Bool)

(assert (=> b!1651038 (=> (not res!739974) (not e!1058784))))

(declare-fun height!943 (Conc!6071) Int)

(assert (=> b!1651038 (= res!739974 (<= (- 1) (- (height!943 (left!14594 (c!268211 lt!611704))) (height!943 (right!14924 (c!268211 lt!611704))))))))

(declare-fun b!1651042 () Bool)

(declare-fun res!739977 () Bool)

(assert (=> b!1651042 (=> (not res!739977) (not e!1058784))))

(assert (=> b!1651042 (= res!739977 (isBalanced!1861 (right!14924 (c!268211 lt!611704))))))

(declare-fun b!1651043 () Bool)

(declare-fun res!739978 () Bool)

(assert (=> b!1651043 (=> (not res!739978) (not e!1058784))))

(assert (=> b!1651043 (= res!739978 (<= (- (height!943 (left!14594 (c!268211 lt!611704))) (height!943 (right!14924 (c!268211 lt!611704)))) 1))))

(assert (= (and d!497882 (not res!739976)) b!1651038))

(assert (= (and b!1651038 res!739974) b!1651043))

(assert (= (and b!1651043 res!739978) b!1651040))

(assert (= (and b!1651040 res!739975) b!1651042))

(assert (= (and b!1651042 res!739977) b!1651039))

(assert (= (and b!1651039 res!739973) b!1651041))

(declare-fun m!2000571 () Bool)

(assert (=> b!1651042 m!2000571))

(declare-fun m!2000573 () Bool)

(assert (=> b!1651040 m!2000573))

(declare-fun m!2000575 () Bool)

(assert (=> b!1651039 m!2000575))

(declare-fun m!2000577 () Bool)

(assert (=> b!1651041 m!2000577))

(declare-fun m!2000579 () Bool)

(assert (=> b!1651038 m!2000579))

(declare-fun m!2000581 () Bool)

(assert (=> b!1651038 m!2000581))

(assert (=> b!1651043 m!2000579))

(assert (=> b!1651043 m!2000581))

(assert (=> b!1649598 d!497882))

(declare-fun d!497888 () Bool)

(declare-fun res!739983 () Bool)

(declare-fun e!1058790 () Bool)

(assert (=> d!497888 (=> res!739983 e!1058790)))

(assert (=> d!497888 (= res!739983 ((_ is Nil!18211) rules!1846))))

(assert (=> d!497888 (= (noDuplicateTag!1170 thiss!17113 rules!1846 Nil!18218) e!1058790)))

(declare-fun b!1651050 () Bool)

(declare-fun e!1058791 () Bool)

(assert (=> b!1651050 (= e!1058790 e!1058791)))

(declare-fun res!739984 () Bool)

(assert (=> b!1651050 (=> (not res!739984) (not e!1058791))))

(declare-fun contains!3177 (List!18288 String!20837) Bool)

(assert (=> b!1651050 (= res!739984 (not (contains!3177 Nil!18218 (tag!3491 (h!23612 rules!1846)))))))

(declare-fun b!1651051 () Bool)

(assert (=> b!1651051 (= e!1058791 (noDuplicateTag!1170 thiss!17113 (t!150806 rules!1846) (Cons!18218 (tag!3491 (h!23612 rules!1846)) Nil!18218)))))

(assert (= (and d!497888 (not res!739983)) b!1651050))

(assert (= (and b!1651050 res!739984) b!1651051))

(declare-fun m!2000607 () Bool)

(assert (=> b!1651050 m!2000607))

(declare-fun m!2000609 () Bool)

(assert (=> b!1651051 m!2000609))

(assert (=> b!1650046 d!497888))

(declare-fun d!497892 () Bool)

(declare-fun c!268545 () Bool)

(assert (=> d!497892 (= c!268545 ((_ is Nil!18209) lt!612194))))

(declare-fun e!1058792 () (InoxSet C!9252))

(assert (=> d!497892 (= (content!2529 lt!612194) e!1058792)))

(declare-fun b!1651052 () Bool)

(assert (=> b!1651052 (= e!1058792 ((as const (Array C!9252 Bool)) false))))

(declare-fun b!1651053 () Bool)

(assert (=> b!1651053 (= e!1058792 ((_ map or) (store ((as const (Array C!9252 Bool)) false) (h!23610 lt!612194) true) (content!2529 (t!150804 lt!612194))))))

(assert (= (and d!497892 c!268545) b!1651052))

(assert (= (and d!497892 (not c!268545)) b!1651053))

(declare-fun m!2000611 () Bool)

(assert (=> b!1651053 m!2000611))

(declare-fun m!2000613 () Bool)

(assert (=> b!1651053 m!2000613))

(assert (=> d!497446 d!497892))

(assert (=> d!497446 d!497648))

(declare-fun d!497894 () Bool)

(declare-fun c!268546 () Bool)

(assert (=> d!497894 (= c!268546 ((_ is Nil!18209) lt!611595))))

(declare-fun e!1058793 () (InoxSet C!9252))

(assert (=> d!497894 (= (content!2529 lt!611595) e!1058793)))

(declare-fun b!1651054 () Bool)

(assert (=> b!1651054 (= e!1058793 ((as const (Array C!9252 Bool)) false))))

(declare-fun b!1651055 () Bool)

(assert (=> b!1651055 (= e!1058793 ((_ map or) (store ((as const (Array C!9252 Bool)) false) (h!23610 lt!611595) true) (content!2529 (t!150804 lt!611595))))))

(assert (= (and d!497894 c!268546) b!1651054))

(assert (= (and d!497894 (not c!268546)) b!1651055))

(declare-fun m!2000615 () Bool)

(assert (=> b!1651055 m!2000615))

(declare-fun m!2000617 () Bool)

(assert (=> b!1651055 m!2000617))

(assert (=> d!497446 d!497894))

(declare-fun d!497896 () Bool)

(assert (=> d!497896 (= (isDefined!2813 lt!611619) (not (isEmpty!11244 lt!611619)))))

(declare-fun bs!396517 () Bool)

(assert (= bs!396517 d!497896))

(assert (=> bs!396517 m!1997955))

(assert (=> b!1649565 d!497896))

(declare-fun b!1651090 () Bool)

(declare-fun e!1058808 () Bool)

(declare-fun isEmpty!11254 (Conc!6070) Bool)

(assert (=> b!1651090 (= e!1058808 (not (isEmpty!11254 (right!14923 (c!268209 lt!612140)))))))

(declare-fun b!1651091 () Bool)

(declare-fun res!740007 () Bool)

(assert (=> b!1651091 (=> (not res!740007) (not e!1058808))))

(assert (=> b!1651091 (= res!740007 (isBalanced!1862 (left!14593 (c!268209 lt!612140))))))

(declare-fun b!1651092 () Bool)

(declare-fun res!740004 () Bool)

(assert (=> b!1651092 (=> (not res!740004) (not e!1058808))))

(assert (=> b!1651092 (= res!740004 (isBalanced!1862 (right!14923 (c!268209 lt!612140))))))

(declare-fun b!1651093 () Bool)

(declare-fun res!740006 () Bool)

(assert (=> b!1651093 (=> (not res!740006) (not e!1058808))))

(assert (=> b!1651093 (= res!740006 (not (isEmpty!11254 (left!14593 (c!268209 lt!612140)))))))

(declare-fun b!1651094 () Bool)

(declare-fun e!1058809 () Bool)

(assert (=> b!1651094 (= e!1058809 e!1058808)))

(declare-fun res!740003 () Bool)

(assert (=> b!1651094 (=> (not res!740003) (not e!1058808))))

(assert (=> b!1651094 (= res!740003 (<= (- 1) (- (height!941 (left!14593 (c!268209 lt!612140))) (height!941 (right!14923 (c!268209 lt!612140))))))))

(declare-fun d!497898 () Bool)

(declare-fun res!740005 () Bool)

(assert (=> d!497898 (=> res!740005 e!1058809)))

(assert (=> d!497898 (= res!740005 (not ((_ is Node!6070) (c!268209 lt!612140))))))

(assert (=> d!497898 (= (isBalanced!1862 (c!268209 lt!612140)) e!1058809)))

(declare-fun b!1651095 () Bool)

(declare-fun res!740008 () Bool)

(assert (=> b!1651095 (=> (not res!740008) (not e!1058808))))

(assert (=> b!1651095 (= res!740008 (<= (- (height!941 (left!14593 (c!268209 lt!612140))) (height!941 (right!14923 (c!268209 lt!612140)))) 1))))

(assert (= (and d!497898 (not res!740005)) b!1651094))

(assert (= (and b!1651094 res!740003) b!1651095))

(assert (= (and b!1651095 res!740008) b!1651091))

(assert (= (and b!1651091 res!740007) b!1651092))

(assert (= (and b!1651092 res!740004) b!1651093))

(assert (= (and b!1651093 res!740006) b!1651090))

(declare-fun m!2000667 () Bool)

(assert (=> b!1651090 m!2000667))

(declare-fun m!2000669 () Bool)

(assert (=> b!1651092 m!2000669))

(declare-fun m!2000671 () Bool)

(assert (=> b!1651094 m!2000671))

(declare-fun m!2000673 () Bool)

(assert (=> b!1651094 m!2000673))

(declare-fun m!2000675 () Bool)

(assert (=> b!1651091 m!2000675))

(assert (=> b!1651095 m!2000671))

(assert (=> b!1651095 m!2000673))

(declare-fun m!2000677 () Bool)

(assert (=> b!1651093 m!2000677))

(assert (=> b!1649954 d!497898))

(declare-fun b!1651106 () Bool)

(declare-fun e!1058817 () Bool)

(declare-fun e!1058816 () Bool)

(assert (=> b!1651106 (= e!1058817 e!1058816)))

(declare-fun res!740017 () Bool)

(assert (=> b!1651106 (=> (not res!740017) (not e!1058816))))

(assert (=> b!1651106 (= res!740017 (not ((_ is Nil!18209) (++!4922 lt!611596 lt!611591))))))

(declare-fun b!1651108 () Bool)

(assert (=> b!1651108 (= e!1058816 (isPrefix!1469 (tail!2444 lt!611596) (tail!2444 (++!4922 lt!611596 lt!611591))))))

(declare-fun b!1651107 () Bool)

(declare-fun res!740018 () Bool)

(assert (=> b!1651107 (=> (not res!740018) (not e!1058816))))

(assert (=> b!1651107 (= res!740018 (= (head!3631 lt!611596) (head!3631 (++!4922 lt!611596 lt!611591))))))

(declare-fun b!1651109 () Bool)

(declare-fun e!1058815 () Bool)

(assert (=> b!1651109 (= e!1058815 (>= (size!14501 (++!4922 lt!611596 lt!611591)) (size!14501 lt!611596)))))

(declare-fun d!497918 () Bool)

(assert (=> d!497918 e!1058815))

(declare-fun res!740020 () Bool)

(assert (=> d!497918 (=> res!740020 e!1058815)))

(declare-fun lt!612766 () Bool)

(assert (=> d!497918 (= res!740020 (not lt!612766))))

(assert (=> d!497918 (= lt!612766 e!1058817)))

(declare-fun res!740019 () Bool)

(assert (=> d!497918 (=> res!740019 e!1058817)))

(assert (=> d!497918 (= res!740019 ((_ is Nil!18209) lt!611596))))

(assert (=> d!497918 (= (isPrefix!1469 lt!611596 (++!4922 lt!611596 lt!611591)) lt!612766)))

(assert (= (and d!497918 (not res!740019)) b!1651106))

(assert (= (and b!1651106 res!740017) b!1651107))

(assert (= (and b!1651107 res!740018) b!1651108))

(assert (= (and d!497918 (not res!740020)) b!1651109))

(assert (=> b!1651108 m!1998405))

(assert (=> b!1651108 m!1997899))

(declare-fun m!2000679 () Bool)

(assert (=> b!1651108 m!2000679))

(assert (=> b!1651108 m!1998405))

(assert (=> b!1651108 m!2000679))

(declare-fun m!2000681 () Bool)

(assert (=> b!1651108 m!2000681))

(assert (=> b!1651107 m!1998411))

(assert (=> b!1651107 m!1997899))

(declare-fun m!2000683 () Bool)

(assert (=> b!1651107 m!2000683))

(assert (=> b!1651109 m!1997899))

(declare-fun m!2000685 () Bool)

(assert (=> b!1651109 m!2000685))

(assert (=> b!1651109 m!1998417))

(assert (=> d!497316 d!497918))

(assert (=> d!497316 d!497390))

(declare-fun d!497920 () Bool)

(assert (=> d!497920 (isPrefix!1469 lt!611596 (++!4922 lt!611596 lt!611591))))

(assert (=> d!497920 true))

(declare-fun _$46!1112 () Unit!30315)

(assert (=> d!497920 (= (choose!9904 lt!611596 lt!611591) _$46!1112)))

(declare-fun bs!396523 () Bool)

(assert (= bs!396523 d!497920))

(assert (=> bs!396523 m!1997899))

(assert (=> bs!396523 m!1997899))

(assert (=> bs!396523 m!1998419))

(assert (=> d!497316 d!497920))

(declare-fun d!497922 () Bool)

(declare-fun charsToInt!0 (List!18280) (_ BitVec 32))

(assert (=> d!497922 (= (inv!16 (value!101186 (h!23613 tokens!457))) (= (charsToInt!0 (text!23554 (value!101186 (h!23613 tokens!457)))) (value!101177 (value!101186 (h!23613 tokens!457)))))))

(declare-fun bs!396524 () Bool)

(assert (= bs!396524 d!497922))

(declare-fun m!2000727 () Bool)

(assert (=> bs!396524 m!2000727))

(assert (=> b!1649773 d!497922))

(declare-fun d!497928 () Bool)

(declare-fun lt!612774 () Int)

(assert (=> d!497928 (= lt!612774 (size!14501 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457))))))))

(declare-fun size!14510 (Conc!6070) Int)

(assert (=> d!497928 (= lt!612774 (size!14510 (c!268209 (charsOf!1860 (h!23613 (t!150807 tokens!457))))))))

(assert (=> d!497928 (= (size!14504 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) lt!612774)))

(declare-fun bs!396527 () Bool)

(assert (= bs!396527 d!497928))

(assert (=> bs!396527 m!1997815))

(assert (=> bs!396527 m!1998343))

(assert (=> bs!396527 m!1998343))

(declare-fun m!2000753 () Bool)

(assert (=> bs!396527 m!2000753))

(declare-fun m!2000755 () Bool)

(assert (=> bs!396527 m!2000755))

(assert (=> b!1650017 d!497928))

(declare-fun d!497940 () Bool)

(assert (=> d!497940 (= (list!7241 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (value!101186 (h!23613 tokens!457)))) (list!7244 (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (value!101186 (h!23613 tokens!457))))))))

(declare-fun bs!396528 () Bool)

(assert (= bs!396528 d!497940))

(declare-fun m!2000757 () Bool)

(assert (=> bs!396528 m!2000757))

(assert (=> b!1649603 d!497940))

(declare-fun d!497942 () Bool)

(assert (=> d!497942 (= (head!3631 (list!7241 lt!611597)) (h!23610 (list!7241 lt!611597)))))

(assert (=> d!497432 d!497942))

(assert (=> d!497432 d!497382))

(declare-fun d!497944 () Bool)

(declare-fun lt!612780 () C!9252)

(assert (=> d!497944 (= lt!612780 (head!3631 (list!7244 (c!268209 lt!611597))))))

(declare-fun e!1058829 () C!9252)

(assert (=> d!497944 (= lt!612780 e!1058829)))

(declare-fun c!268563 () Bool)

(assert (=> d!497944 (= c!268563 ((_ is Leaf!8896) (c!268209 lt!611597)))))

(assert (=> d!497944 (isBalanced!1862 (c!268209 lt!611597))))

(assert (=> d!497944 (= (head!3635 (c!268209 lt!611597)) lt!612780)))

(declare-fun b!1651131 () Bool)

(declare-fun apply!4812 (IArray!12145 Int) C!9252)

(assert (=> b!1651131 (= e!1058829 (apply!4812 (xs!8906 (c!268209 lt!611597)) 0))))

(declare-fun b!1651132 () Bool)

(assert (=> b!1651132 (= e!1058829 (head!3635 (left!14593 (c!268209 lt!611597))))))

(assert (= (and d!497944 c!268563) b!1651131))

(assert (= (and d!497944 (not c!268563)) b!1651132))

(assert (=> d!497944 m!1998703))

(assert (=> d!497944 m!1998703))

(declare-fun m!2000777 () Bool)

(assert (=> d!497944 m!2000777))

(declare-fun m!2000779 () Bool)

(assert (=> d!497944 m!2000779))

(declare-fun m!2000781 () Bool)

(assert (=> b!1651131 m!2000781))

(declare-fun m!2000783 () Bool)

(assert (=> b!1651132 m!2000783))

(assert (=> d!497432 d!497944))

(declare-fun d!497950 () Bool)

(declare-fun lt!612783 () Bool)

(assert (=> d!497950 (= lt!612783 (isEmpty!11246 (list!7241 lt!611597)))))

(assert (=> d!497950 (= lt!612783 (isEmpty!11254 (c!268209 lt!611597)))))

(assert (=> d!497950 (= (isEmpty!11247 lt!611597) lt!612783)))

(declare-fun bs!396529 () Bool)

(assert (= bs!396529 d!497950))

(assert (=> bs!396529 m!1997891))

(assert (=> bs!396529 m!1997891))

(declare-fun m!2000785 () Bool)

(assert (=> bs!396529 m!2000785))

(declare-fun m!2000787 () Bool)

(assert (=> bs!396529 m!2000787))

(assert (=> d!497432 d!497950))

(assert (=> b!1649568 d!497614))

(declare-fun d!497952 () Bool)

(declare-fun dynLambda!8171 (Int BalanceConc!12084) TokenValue!3301)

(assert (=> d!497952 (= (apply!4804 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!611619)))) (seqFromList!2161 (originalCharacters!4025 (_1!10345 (get!5302 lt!611619))))) (dynLambda!8171 (toValue!4658 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!611619))))) (seqFromList!2161 (originalCharacters!4025 (_1!10345 (get!5302 lt!611619))))))))

(declare-fun b_lambda!51893 () Bool)

(assert (=> (not b_lambda!51893) (not d!497952)))

(declare-fun tb!94567 () Bool)

(declare-fun t!150928 () Bool)

(assert (=> (and b!1649509 (= (toValue!4658 (transformation!3211 (h!23612 rules!1846))) (toValue!4658 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!611619)))))) t!150928) tb!94567))

(declare-fun result!114260 () Bool)

(assert (=> tb!94567 (= result!114260 (inv!21 (dynLambda!8171 (toValue!4658 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!611619))))) (seqFromList!2161 (originalCharacters!4025 (_1!10345 (get!5302 lt!611619)))))))))

(declare-fun m!2000789 () Bool)

(assert (=> tb!94567 m!2000789))

(assert (=> d!497952 t!150928))

(declare-fun b_and!117261 () Bool)

(assert (= b_and!117149 (and (=> t!150928 result!114260) b_and!117261)))

(declare-fun t!150930 () Bool)

(declare-fun tb!94569 () Bool)

(assert (=> (and b!1649522 (= (toValue!4658 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (toValue!4658 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!611619)))))) t!150930) tb!94569))

(declare-fun result!114264 () Bool)

(assert (= result!114264 result!114260))

(assert (=> d!497952 t!150930))

(declare-fun b_and!117263 () Bool)

(assert (= b_and!117153 (and (=> t!150930 result!114264) b_and!117263)))

(declare-fun t!150932 () Bool)

(declare-fun tb!94571 () Bool)

(assert (=> (and b!1650076 (= (toValue!4658 (transformation!3211 (h!23612 (t!150806 rules!1846)))) (toValue!4658 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!611619)))))) t!150932) tb!94571))

(declare-fun result!114266 () Bool)

(assert (= result!114266 result!114260))

(assert (=> d!497952 t!150932))

(declare-fun b_and!117265 () Bool)

(assert (= b_and!117189 (and (=> t!150932 result!114266) b_and!117265)))

(declare-fun tb!94573 () Bool)

(declare-fun t!150934 () Bool)

(assert (=> (and b!1650090 (= (toValue!4658 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (toValue!4658 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!611619)))))) t!150934) tb!94573))

(declare-fun result!114268 () Bool)

(assert (= result!114268 result!114260))

(assert (=> d!497952 t!150934))

(declare-fun b_and!117267 () Bool)

(assert (= b_and!117193 (and (=> t!150934 result!114268) b_and!117267)))

(assert (=> d!497952 m!1997967))

(declare-fun m!2000791 () Bool)

(assert (=> d!497952 m!2000791))

(assert (=> b!1649568 d!497952))

(declare-fun d!497954 () Bool)

(assert (=> d!497954 (= (seqFromList!2161 (originalCharacters!4025 (_1!10345 (get!5302 lt!611619)))) (fromListB!966 (originalCharacters!4025 (_1!10345 (get!5302 lt!611619)))))))

(declare-fun bs!396530 () Bool)

(assert (= bs!396530 d!497954))

(declare-fun m!2000793 () Bool)

(assert (=> bs!396530 m!2000793))

(assert (=> b!1649568 d!497954))

(declare-fun d!497956 () Bool)

(declare-fun e!1058845 () Bool)

(assert (=> d!497956 e!1058845))

(declare-fun res!740032 () Bool)

(assert (=> d!497956 (=> (not res!740032) (not e!1058845))))

(declare-fun lt!612788 () BalanceConc!12086)

(assert (=> d!497956 (= res!740032 (= (list!7242 lt!612788) tokens!457))))

(declare-fun fromList!400 (List!18282) Conc!6071)

(assert (=> d!497956 (= lt!612788 (BalanceConc!12087 (fromList!400 tokens!457)))))

(assert (=> d!497956 (= (fromListB!967 tokens!457) lt!612788)))

(declare-fun b!1651157 () Bool)

(assert (=> b!1651157 (= e!1058845 (isBalanced!1861 (fromList!400 tokens!457)))))

(assert (= (and d!497956 res!740032) b!1651157))

(declare-fun m!2000795 () Bool)

(assert (=> d!497956 m!2000795))

(declare-fun m!2000797 () Bool)

(assert (=> d!497956 m!2000797))

(assert (=> b!1651157 m!2000797))

(assert (=> b!1651157 m!2000797))

(declare-fun m!2000799 () Bool)

(assert (=> b!1651157 m!2000799))

(assert (=> d!497388 d!497956))

(declare-fun d!497958 () Bool)

(assert (=> d!497958 (= (isEmpty!11246 (originalCharacters!4025 (h!23613 tokens!457))) ((_ is Nil!18209) (originalCharacters!4025 (h!23613 tokens!457))))))

(assert (=> d!497260 d!497958))

(declare-fun d!497960 () Bool)

(assert (=> d!497960 (= (list!7241 lt!612140) (list!7244 (c!268209 lt!612140)))))

(declare-fun bs!396531 () Bool)

(assert (= bs!396531 d!497960))

(declare-fun m!2000801 () Bool)

(assert (=> bs!396531 m!2000801))

(assert (=> d!497412 d!497960))

(declare-fun d!497962 () Bool)

(declare-fun e!1058853 () Bool)

(assert (=> d!497962 e!1058853))

(declare-fun res!740035 () Bool)

(assert (=> d!497962 (=> (not res!740035) (not e!1058853))))

(declare-fun lt!612792 () BalanceConc!12084)

(assert (=> d!497962 (= res!740035 (= (list!7241 lt!612792) (Cons!18209 (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0) Nil!18209)))))

(declare-fun choose!9918 (C!9252) BalanceConc!12084)

(assert (=> d!497962 (= lt!612792 (choose!9918 (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0)))))

(assert (=> d!497962 (= (singleton!736 (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0)) lt!612792)))

(declare-fun b!1651170 () Bool)

(assert (=> b!1651170 (= e!1058853 (isBalanced!1862 (c!268209 lt!612792)))))

(assert (= (and d!497962 res!740035) b!1651170))

(declare-fun m!2000811 () Bool)

(assert (=> d!497962 m!2000811))

(assert (=> d!497962 m!1997807))

(declare-fun m!2000813 () Bool)

(assert (=> d!497962 m!2000813))

(declare-fun m!2000815 () Bool)

(assert (=> b!1651170 m!2000815))

(assert (=> d!497412 d!497962))

(declare-fun lt!612793 () Bool)

(declare-fun d!497970 () Bool)

(assert (=> d!497970 (= lt!612793 (isEmpty!11246 (list!7241 (_2!10343 (lex!1324 thiss!17113 rules!1846 (print!1371 thiss!17113 (seqFromList!2162 (t!150807 tokens!457))))))))))

(assert (=> d!497970 (= lt!612793 (isEmpty!11254 (c!268209 (_2!10343 (lex!1324 thiss!17113 rules!1846 (print!1371 thiss!17113 (seqFromList!2162 (t!150807 tokens!457))))))))))

(assert (=> d!497970 (= (isEmpty!11247 (_2!10343 (lex!1324 thiss!17113 rules!1846 (print!1371 thiss!17113 (seqFromList!2162 (t!150807 tokens!457)))))) lt!612793)))

(declare-fun bs!396534 () Bool)

(assert (= bs!396534 d!497970))

(declare-fun m!2000817 () Bool)

(assert (=> bs!396534 m!2000817))

(assert (=> bs!396534 m!2000817))

(declare-fun m!2000819 () Bool)

(assert (=> bs!396534 m!2000819))

(declare-fun m!2000823 () Bool)

(assert (=> bs!396534 m!2000823))

(assert (=> b!1649723 d!497970))

(assert (=> b!1649723 d!497572))

(assert (=> b!1649723 d!497574))

(assert (=> b!1649723 d!497394))

(declare-fun d!497974 () Bool)

(assert (=> d!497974 (= (isDefined!2812 lt!611941) (not (isEmpty!11248 lt!611941)))))

(declare-fun bs!396536 () Bool)

(assert (= bs!396536 d!497974))

(declare-fun m!2000825 () Bool)

(assert (=> bs!396536 m!2000825))

(assert (=> b!1649759 d!497974))

(declare-fun d!497976 () Bool)

(declare-fun lt!612794 () Int)

(assert (=> d!497976 (= lt!612794 (size!14501 (list!7241 (_2!10343 lt!612099))))))

(assert (=> d!497976 (= lt!612794 (size!14510 (c!268209 (_2!10343 lt!612099))))))

(assert (=> d!497976 (= (size!14504 (_2!10343 lt!612099)) lt!612794)))

(declare-fun bs!396537 () Bool)

(assert (= bs!396537 d!497976))

(assert (=> bs!396537 m!1998709))

(assert (=> bs!396537 m!1998709))

(declare-fun m!2000827 () Bool)

(assert (=> bs!396537 m!2000827))

(declare-fun m!2000829 () Bool)

(assert (=> bs!396537 m!2000829))

(assert (=> b!1649860 d!497976))

(declare-fun d!497978 () Bool)

(declare-fun lt!612795 () Int)

(assert (=> d!497978 (= lt!612795 (size!14501 (list!7241 lt!611597)))))

(assert (=> d!497978 (= lt!612795 (size!14510 (c!268209 lt!611597)))))

(assert (=> d!497978 (= (size!14504 lt!611597) lt!612795)))

(declare-fun bs!396538 () Bool)

(assert (= bs!396538 d!497978))

(assert (=> bs!396538 m!1997891))

(assert (=> bs!396538 m!1997891))

(assert (=> bs!396538 m!1999825))

(declare-fun m!2000831 () Bool)

(assert (=> bs!396538 m!2000831))

(assert (=> b!1649860 d!497978))

(declare-fun d!497980 () Bool)

(declare-fun lt!612796 () Int)

(assert (=> d!497980 (= lt!612796 (size!14508 (list!7242 lt!611584)))))

(assert (=> d!497980 (= lt!612796 (size!14509 (c!268211 lt!611584)))))

(assert (=> d!497980 (= (size!14503 lt!611584) lt!612796)))

(declare-fun bs!396539 () Bool)

(assert (= bs!396539 d!497980))

(assert (=> bs!396539 m!1998065))

(assert (=> bs!396539 m!1998065))

(declare-fun m!2000833 () Bool)

(assert (=> bs!396539 m!2000833))

(declare-fun m!2000835 () Bool)

(assert (=> bs!396539 m!2000835))

(assert (=> b!1649587 d!497980))

(declare-fun b!1651174 () Bool)

(declare-fun e!1058855 () List!18282)

(assert (=> b!1651174 (= e!1058855 (++!4926 (list!7246 (left!14594 (c!268211 (prepend!775 (seqFromList!2162 (t!150807 (t!150807 tokens!457))) (h!23613 (t!150807 tokens!457)))))) (list!7246 (right!14924 (c!268211 (prepend!775 (seqFromList!2162 (t!150807 (t!150807 tokens!457))) (h!23613 (t!150807 tokens!457))))))))))

(declare-fun b!1651173 () Bool)

(assert (=> b!1651173 (= e!1058855 (list!7248 (xs!8907 (c!268211 (prepend!775 (seqFromList!2162 (t!150807 (t!150807 tokens!457))) (h!23613 (t!150807 tokens!457)))))))))

(declare-fun d!497984 () Bool)

(declare-fun c!268580 () Bool)

(assert (=> d!497984 (= c!268580 ((_ is Empty!6071) (c!268211 (prepend!775 (seqFromList!2162 (t!150807 (t!150807 tokens!457))) (h!23613 (t!150807 tokens!457))))))))

(declare-fun e!1058854 () List!18282)

(assert (=> d!497984 (= (list!7246 (c!268211 (prepend!775 (seqFromList!2162 (t!150807 (t!150807 tokens!457))) (h!23613 (t!150807 tokens!457))))) e!1058854)))

(declare-fun b!1651171 () Bool)

(assert (=> b!1651171 (= e!1058854 Nil!18212)))

(declare-fun b!1651172 () Bool)

(assert (=> b!1651172 (= e!1058854 e!1058855)))

(declare-fun c!268581 () Bool)

(assert (=> b!1651172 (= c!268581 ((_ is Leaf!8897) (c!268211 (prepend!775 (seqFromList!2162 (t!150807 (t!150807 tokens!457))) (h!23613 (t!150807 tokens!457))))))))

(assert (= (and d!497984 c!268580) b!1651171))

(assert (= (and d!497984 (not c!268580)) b!1651172))

(assert (= (and b!1651172 c!268581) b!1651173))

(assert (= (and b!1651172 (not c!268581)) b!1651174))

(declare-fun m!2000837 () Bool)

(assert (=> b!1651174 m!2000837))

(declare-fun m!2000839 () Bool)

(assert (=> b!1651174 m!2000839))

(assert (=> b!1651174 m!2000837))

(assert (=> b!1651174 m!2000839))

(declare-fun m!2000841 () Bool)

(assert (=> b!1651174 m!2000841))

(declare-fun m!2000843 () Bool)

(assert (=> b!1651173 m!2000843))

(assert (=> d!497328 d!497984))

(declare-fun d!497986 () Bool)

(declare-fun lt!612797 () Int)

(assert (=> d!497986 (= lt!612797 (size!14508 (list!7242 (_1!10343 lt!612187))))))

(assert (=> d!497986 (= lt!612797 (size!14509 (c!268211 (_1!10343 lt!612187))))))

(assert (=> d!497986 (= (size!14503 (_1!10343 lt!612187)) lt!612797)))

(declare-fun bs!396540 () Bool)

(assert (= bs!396540 d!497986))

(assert (=> bs!396540 m!1998917))

(assert (=> bs!396540 m!1998917))

(declare-fun m!2000845 () Bool)

(assert (=> bs!396540 m!2000845))

(declare-fun m!2000847 () Bool)

(assert (=> bs!396540 m!2000847))

(assert (=> d!497436 d!497986))

(declare-fun lt!612807 () tuple2!17882)

(declare-fun b!1651175 () Bool)

(declare-fun lt!612808 () Option!3457)

(assert (=> b!1651175 (= lt!612807 (lexRec!374 thiss!17113 rules!1846 (_2!10344 (v!24625 lt!612808))))))

(declare-fun e!1058856 () tuple2!17882)

(assert (=> b!1651175 (= e!1058856 (tuple2!17883 (prepend!775 (_1!10343 lt!612807) (_1!10344 (v!24625 lt!612808))) (_2!10343 lt!612807)))))

(declare-fun b!1651176 () Bool)

(declare-fun e!1058857 () tuple2!17882)

(assert (=> b!1651176 (= e!1058857 (tuple2!17883 (BalanceConc!12087 Empty!6071) (seqFromList!2161 lt!611596)))))

(declare-fun lt!612823 () tuple2!17882)

(declare-fun e!1058858 () Bool)

(declare-fun b!1651177 () Bool)

(assert (=> b!1651177 (= e!1058858 (= (list!7241 (_2!10343 lt!612823)) (list!7241 (_2!10343 (lexRec!374 thiss!17113 rules!1846 (seqFromList!2161 lt!611596))))))))

(declare-fun lt!612810 () Option!3457)

(declare-fun b!1651178 () Bool)

(declare-fun lt!612828 () tuple2!17882)

(assert (=> b!1651178 (= lt!612828 (lexRec!374 thiss!17113 rules!1846 (_2!10344 (v!24625 lt!612810))))))

(assert (=> b!1651178 (= e!1058857 (tuple2!17883 (prepend!775 (_1!10343 lt!612828) (_1!10344 (v!24625 lt!612810))) (_2!10343 lt!612828)))))

(declare-fun b!1651179 () Bool)

(declare-fun lt!612814 () BalanceConc!12084)

(assert (=> b!1651179 (= e!1058856 (tuple2!17883 (BalanceConc!12087 Empty!6071) lt!612814))))

(declare-fun b!1651180 () Bool)

(declare-fun e!1058859 () tuple2!17882)

(assert (=> b!1651180 (= e!1058859 (tuple2!17883 (BalanceConc!12087 Empty!6071) (seqFromList!2161 lt!611596)))))

(declare-fun d!497992 () Bool)

(assert (=> d!497992 e!1058858))

(declare-fun res!740036 () Bool)

(assert (=> d!497992 (=> (not res!740036) (not e!1058858))))

(assert (=> d!497992 (= res!740036 (= (list!7242 (_1!10343 lt!612823)) (list!7242 (_1!10343 (lexRec!374 thiss!17113 rules!1846 (seqFromList!2161 lt!611596))))))))

(assert (=> d!497992 (= lt!612823 e!1058859)))

(declare-fun c!268584 () Bool)

(declare-fun lt!612820 () Option!3457)

(assert (=> d!497992 (= c!268584 ((_ is Some!3456) lt!612820))))

(assert (=> d!497992 (= lt!612820 (maxPrefixZipperSequenceV2!269 thiss!17113 rules!1846 (seqFromList!2161 lt!611596) (seqFromList!2161 lt!611596)))))

(declare-fun lt!612800 () Unit!30315)

(declare-fun lt!612809 () Unit!30315)

(assert (=> d!497992 (= lt!612800 lt!612809)))

(declare-fun lt!612821 () List!18279)

(declare-fun lt!612813 () List!18279)

(assert (=> d!497992 (isSuffix!420 lt!612821 (++!4922 lt!612813 lt!612821))))

(assert (=> d!497992 (= lt!612809 (lemmaConcatTwoListThenFSndIsSuffix!321 lt!612813 lt!612821))))

(assert (=> d!497992 (= lt!612821 (list!7241 (seqFromList!2161 lt!611596)))))

(assert (=> d!497992 (= lt!612813 (list!7241 (BalanceConc!12085 Empty!6070)))))

(assert (=> d!497992 (= (lexTailRecV2!594 thiss!17113 rules!1846 (seqFromList!2161 lt!611596) (BalanceConc!12085 Empty!6070) (seqFromList!2161 lt!611596) (BalanceConc!12087 Empty!6071)) lt!612823)))

(declare-fun b!1651181 () Bool)

(declare-fun lt!612804 () BalanceConc!12084)

(assert (=> b!1651181 (= e!1058859 (lexTailRecV2!594 thiss!17113 rules!1846 (seqFromList!2161 lt!611596) lt!612804 (_2!10344 (v!24625 lt!612820)) (append!557 (BalanceConc!12087 Empty!6071) (_1!10344 (v!24625 lt!612820)))))))

(declare-fun lt!612817 () tuple2!17882)

(assert (=> b!1651181 (= lt!612817 (lexRec!374 thiss!17113 rules!1846 (_2!10344 (v!24625 lt!612820))))))

(declare-fun lt!612798 () List!18279)

(assert (=> b!1651181 (= lt!612798 (list!7241 (BalanceConc!12085 Empty!6070)))))

(declare-fun lt!612826 () List!18279)

(assert (=> b!1651181 (= lt!612826 (list!7241 (charsOf!1860 (_1!10344 (v!24625 lt!612820)))))))

(declare-fun lt!612802 () List!18279)

(assert (=> b!1651181 (= lt!612802 (list!7241 (_2!10344 (v!24625 lt!612820))))))

(declare-fun lt!612818 () Unit!30315)

(assert (=> b!1651181 (= lt!612818 (lemmaConcatAssociativity!1024 lt!612798 lt!612826 lt!612802))))

(assert (=> b!1651181 (= (++!4922 (++!4922 lt!612798 lt!612826) lt!612802) (++!4922 lt!612798 (++!4922 lt!612826 lt!612802)))))

(declare-fun lt!612822 () Unit!30315)

(assert (=> b!1651181 (= lt!612822 lt!612818)))

(assert (=> b!1651181 (= lt!612810 (maxPrefixZipperSequence!717 thiss!17113 rules!1846 (seqFromList!2161 lt!611596)))))

(declare-fun c!268582 () Bool)

(assert (=> b!1651181 (= c!268582 ((_ is Some!3456) lt!612810))))

(assert (=> b!1651181 (= (lexRec!374 thiss!17113 rules!1846 (seqFromList!2161 lt!611596)) e!1058857)))

(declare-fun lt!612812 () Unit!30315)

(declare-fun Unit!30365 () Unit!30315)

(assert (=> b!1651181 (= lt!612812 Unit!30365)))

(declare-fun lt!612816 () List!18282)

(assert (=> b!1651181 (= lt!612816 (list!7242 (BalanceConc!12087 Empty!6071)))))

(declare-fun lt!612825 () List!18282)

(assert (=> b!1651181 (= lt!612825 (Cons!18212 (_1!10344 (v!24625 lt!612820)) Nil!18212))))

(declare-fun lt!612805 () List!18282)

(assert (=> b!1651181 (= lt!612805 (list!7242 (_1!10343 lt!612817)))))

(declare-fun lt!612819 () Unit!30315)

(assert (=> b!1651181 (= lt!612819 (lemmaConcatAssociativity!1025 lt!612816 lt!612825 lt!612805))))

(assert (=> b!1651181 (= (++!4926 (++!4926 lt!612816 lt!612825) lt!612805) (++!4926 lt!612816 (++!4926 lt!612825 lt!612805)))))

(declare-fun lt!612827 () Unit!30315)

(assert (=> b!1651181 (= lt!612827 lt!612819)))

(declare-fun lt!612799 () List!18279)

(assert (=> b!1651181 (= lt!612799 (++!4922 (list!7241 (BalanceConc!12085 Empty!6070)) (list!7241 (charsOf!1860 (_1!10344 (v!24625 lt!612820))))))))

(declare-fun lt!612803 () List!18279)

(assert (=> b!1651181 (= lt!612803 (list!7241 (_2!10344 (v!24625 lt!612820))))))

(declare-fun lt!612831 () List!18282)

(assert (=> b!1651181 (= lt!612831 (list!7242 (append!557 (BalanceConc!12087 Empty!6071) (_1!10344 (v!24625 lt!612820)))))))

(declare-fun lt!612829 () Unit!30315)

(assert (=> b!1651181 (= lt!612829 (lemmaLexThenLexPrefix!262 thiss!17113 rules!1846 lt!612799 lt!612803 lt!612831 (list!7242 (_1!10343 lt!612817)) (list!7241 (_2!10343 lt!612817))))))

(assert (=> b!1651181 (= (lexList!871 thiss!17113 rules!1846 lt!612799) (tuple2!17891 lt!612831 Nil!18209))))

(declare-fun lt!612801 () Unit!30315)

(assert (=> b!1651181 (= lt!612801 lt!612829)))

(assert (=> b!1651181 (= lt!612814 (++!4921 (BalanceConc!12085 Empty!6070) (charsOf!1860 (_1!10344 (v!24625 lt!612820)))))))

(assert (=> b!1651181 (= lt!612808 (maxPrefixZipperSequence!717 thiss!17113 rules!1846 lt!612814))))

(declare-fun c!268583 () Bool)

(assert (=> b!1651181 (= c!268583 ((_ is Some!3456) lt!612808))))

(assert (=> b!1651181 (= (lexRec!374 thiss!17113 rules!1846 (++!4921 (BalanceConc!12085 Empty!6070) (charsOf!1860 (_1!10344 (v!24625 lt!612820))))) e!1058856)))

(declare-fun lt!612811 () Unit!30315)

(declare-fun Unit!30366 () Unit!30315)

(assert (=> b!1651181 (= lt!612811 Unit!30366)))

(assert (=> b!1651181 (= lt!612804 (++!4921 (BalanceConc!12085 Empty!6070) (charsOf!1860 (_1!10344 (v!24625 lt!612820)))))))

(declare-fun lt!612806 () List!18279)

(assert (=> b!1651181 (= lt!612806 (list!7241 lt!612804))))

(declare-fun lt!612830 () List!18279)

(assert (=> b!1651181 (= lt!612830 (list!7241 (_2!10344 (v!24625 lt!612820))))))

(declare-fun lt!612824 () Unit!30315)

(assert (=> b!1651181 (= lt!612824 (lemmaConcatTwoListThenFSndIsSuffix!321 lt!612806 lt!612830))))

(assert (=> b!1651181 (isSuffix!420 lt!612830 (++!4922 lt!612806 lt!612830))))

(declare-fun lt!612815 () Unit!30315)

(assert (=> b!1651181 (= lt!612815 lt!612824)))

(assert (= (and d!497992 c!268584) b!1651181))

(assert (= (and d!497992 (not c!268584)) b!1651180))

(assert (= (and b!1651181 c!268582) b!1651178))

(assert (= (and b!1651181 (not c!268582)) b!1651176))

(assert (= (and b!1651181 c!268583) b!1651175))

(assert (= (and b!1651181 (not c!268583)) b!1651179))

(assert (= (and d!497992 res!740036) b!1651177))

(declare-fun m!2000851 () Bool)

(assert (=> b!1651178 m!2000851))

(declare-fun m!2000853 () Bool)

(assert (=> b!1651178 m!2000853))

(declare-fun m!2000857 () Bool)

(assert (=> b!1651181 m!2000857))

(declare-fun m!2000861 () Bool)

(assert (=> b!1651181 m!2000861))

(declare-fun m!2000865 () Bool)

(assert (=> b!1651181 m!2000865))

(declare-fun m!2000867 () Bool)

(assert (=> b!1651181 m!2000867))

(declare-fun m!2000869 () Bool)

(assert (=> b!1651181 m!2000869))

(declare-fun m!2000871 () Bool)

(assert (=> b!1651181 m!2000871))

(declare-fun m!2000873 () Bool)

(assert (=> b!1651181 m!2000873))

(declare-fun m!2000875 () Bool)

(assert (=> b!1651181 m!2000875))

(assert (=> b!1651181 m!1997875))

(declare-fun m!2000877 () Bool)

(assert (=> b!1651181 m!2000877))

(assert (=> b!1651181 m!1997875))

(declare-fun m!2000879 () Bool)

(assert (=> b!1651181 m!2000879))

(declare-fun m!2000881 () Bool)

(assert (=> b!1651181 m!2000881))

(assert (=> b!1651181 m!2000857))

(declare-fun m!2000883 () Bool)

(assert (=> b!1651181 m!2000883))

(declare-fun m!2000885 () Bool)

(assert (=> b!1651181 m!2000885))

(assert (=> b!1651181 m!2000865))

(declare-fun m!2000887 () Bool)

(assert (=> b!1651181 m!2000887))

(declare-fun m!2000889 () Bool)

(assert (=> b!1651181 m!2000889))

(declare-fun m!2000891 () Bool)

(assert (=> b!1651181 m!2000891))

(declare-fun m!2000893 () Bool)

(assert (=> b!1651181 m!2000893))

(declare-fun m!2000895 () Bool)

(assert (=> b!1651181 m!2000895))

(assert (=> b!1651181 m!2000893))

(declare-fun m!2000897 () Bool)

(assert (=> b!1651181 m!2000897))

(declare-fun m!2000899 () Bool)

(assert (=> b!1651181 m!2000899))

(assert (=> b!1651181 m!2000861))

(declare-fun m!2000901 () Bool)

(assert (=> b!1651181 m!2000901))

(declare-fun m!2000903 () Bool)

(assert (=> b!1651181 m!2000903))

(declare-fun m!2000905 () Bool)

(assert (=> b!1651181 m!2000905))

(assert (=> b!1651181 m!1999391))

(declare-fun m!2000907 () Bool)

(assert (=> b!1651181 m!2000907))

(declare-fun m!2000909 () Bool)

(assert (=> b!1651181 m!2000909))

(declare-fun m!2000911 () Bool)

(assert (=> b!1651181 m!2000911))

(assert (=> b!1651181 m!2000897))

(declare-fun m!2000913 () Bool)

(assert (=> b!1651181 m!2000913))

(assert (=> b!1651181 m!1997875))

(assert (=> b!1651181 m!2000909))

(declare-fun m!2000915 () Bool)

(assert (=> b!1651181 m!2000915))

(assert (=> b!1651181 m!2000889))

(declare-fun m!2000917 () Bool)

(assert (=> b!1651181 m!2000917))

(assert (=> b!1651181 m!1998039))

(assert (=> b!1651181 m!2000901))

(declare-fun m!2000919 () Bool)

(assert (=> b!1651181 m!2000919))

(assert (=> b!1651181 m!2000903))

(assert (=> b!1651181 m!2000861))

(assert (=> b!1651181 m!2000873))

(assert (=> b!1651181 m!1998039))

(assert (=> b!1651181 m!2000887))

(declare-fun m!2000921 () Bool)

(assert (=> b!1651181 m!2000921))

(assert (=> b!1651181 m!2000909))

(declare-fun m!2000923 () Bool)

(assert (=> b!1651175 m!2000923))

(declare-fun m!2000925 () Bool)

(assert (=> b!1651175 m!2000925))

(declare-fun m!2000927 () Bool)

(assert (=> d!497992 m!2000927))

(assert (=> d!497992 m!2000927))

(declare-fun m!2000929 () Bool)

(assert (=> d!497992 m!2000929))

(declare-fun m!2000931 () Bool)

(assert (=> d!497992 m!2000931))

(declare-fun m!2000933 () Bool)

(assert (=> d!497992 m!2000933))

(assert (=> d!497992 m!1997875))

(assert (=> d!497992 m!1998919))

(assert (=> d!497992 m!1997875))

(assert (=> d!497992 m!1997875))

(declare-fun m!2000935 () Bool)

(assert (=> d!497992 m!2000935))

(assert (=> d!497992 m!1997875))

(assert (=> d!497992 m!2000879))

(assert (=> d!497992 m!1998039))

(declare-fun m!2000939 () Bool)

(assert (=> d!497992 m!2000939))

(declare-fun m!2000941 () Bool)

(assert (=> b!1651177 m!2000941))

(assert (=> b!1651177 m!1997875))

(assert (=> b!1651177 m!2000879))

(declare-fun m!2000945 () Bool)

(assert (=> b!1651177 m!2000945))

(assert (=> d!497436 d!497992))

(declare-fun lt!612838 () Option!3457)

(declare-fun e!1058864 () Bool)

(declare-fun b!1651185 () Bool)

(assert (=> b!1651185 (= e!1058864 (= (list!7241 (_2!10344 (get!5303 lt!612838))) (_2!10345 (get!5302 (maxPrefixZipper!341 thiss!17113 (t!150806 rules!1846) (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))))))

(declare-fun b!1651186 () Bool)

(declare-fun e!1058863 () Bool)

(assert (=> b!1651186 (= e!1058863 e!1058864)))

(declare-fun res!740045 () Bool)

(assert (=> b!1651186 (=> (not res!740045) (not e!1058864))))

(assert (=> b!1651186 (= res!740045 (= (_1!10344 (get!5303 lt!612838)) (_1!10345 (get!5302 (maxPrefixZipper!341 thiss!17113 (t!150806 rules!1846) (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))))))

(declare-fun b!1651187 () Bool)

(declare-fun e!1058866 () Option!3457)

(declare-fun call!105989 () Option!3457)

(assert (=> b!1651187 (= e!1058866 call!105989)))

(declare-fun b!1651188 () Bool)

(declare-fun e!1058867 () Bool)

(assert (=> b!1651188 (= e!1058867 (= (list!7241 (_2!10344 (get!5303 lt!612838))) (_2!10345 (get!5302 (maxPrefix!1402 thiss!17113 (t!150806 rules!1846) (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))))))

(declare-fun b!1651189 () Bool)

(declare-fun e!1058865 () Bool)

(declare-fun e!1058868 () Bool)

(assert (=> b!1651189 (= e!1058865 e!1058868)))

(declare-fun res!740040 () Bool)

(assert (=> b!1651189 (=> res!740040 e!1058868)))

(assert (=> b!1651189 (= res!740040 (not (isDefined!2812 lt!612838)))))

(declare-fun b!1651190 () Bool)

(declare-fun lt!612835 () Option!3457)

(declare-fun lt!612837 () Option!3457)

(assert (=> b!1651190 (= e!1058866 (ite (and ((_ is None!3456) lt!612835) ((_ is None!3456) lt!612837)) None!3456 (ite ((_ is None!3456) lt!612837) lt!612835 (ite ((_ is None!3456) lt!612835) lt!612837 (ite (>= (size!14498 (_1!10344 (v!24625 lt!612835))) (size!14498 (_1!10344 (v!24625 lt!612837)))) lt!612835 lt!612837)))))))

(assert (=> b!1651190 (= lt!612835 call!105989)))

(assert (=> b!1651190 (= lt!612837 (maxPrefixZipperSequence!717 thiss!17113 (t!150806 (t!150806 rules!1846)) (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))

(declare-fun bm!105984 () Bool)

(assert (=> bm!105984 (= call!105989 (maxPrefixOneRuleZipperSequence!335 thiss!17113 (h!23612 (t!150806 rules!1846)) (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))

(declare-fun d!498002 () Bool)

(assert (=> d!498002 e!1058865))

(declare-fun res!740043 () Bool)

(assert (=> d!498002 (=> (not res!740043) (not e!1058865))))

(assert (=> d!498002 (= res!740043 (= (isDefined!2812 lt!612838) (isDefined!2813 (maxPrefixZipper!341 thiss!17113 (t!150806 rules!1846) (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457))))))))))

(assert (=> d!498002 (= lt!612838 e!1058866)))

(declare-fun c!268585 () Bool)

(assert (=> d!498002 (= c!268585 (and ((_ is Cons!18211) (t!150806 rules!1846)) ((_ is Nil!18211) (t!150806 (t!150806 rules!1846)))))))

(declare-fun lt!612840 () Unit!30315)

(declare-fun lt!612836 () Unit!30315)

(assert (=> d!498002 (= lt!612840 lt!612836)))

(declare-fun lt!612841 () List!18279)

(declare-fun lt!612839 () List!18279)

(assert (=> d!498002 (isPrefix!1469 lt!612841 lt!612839)))

(assert (=> d!498002 (= lt!612836 (lemmaIsPrefixRefl!995 lt!612841 lt!612839))))

(assert (=> d!498002 (= lt!612839 (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))

(assert (=> d!498002 (= lt!612841 (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))

(assert (=> d!498002 (rulesValidInductive!1017 thiss!17113 (t!150806 rules!1846))))

(assert (=> d!498002 (= (maxPrefixZipperSequence!717 thiss!17113 (t!150806 rules!1846) (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))) lt!612838)))

(declare-fun b!1651191 () Bool)

(assert (=> b!1651191 (= e!1058868 e!1058867)))

(declare-fun res!740042 () Bool)

(assert (=> b!1651191 (=> (not res!740042) (not e!1058867))))

(assert (=> b!1651191 (= res!740042 (= (_1!10344 (get!5303 lt!612838)) (_1!10345 (get!5302 (maxPrefix!1402 thiss!17113 (t!150806 rules!1846) (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))))))

(declare-fun b!1651192 () Bool)

(declare-fun res!740041 () Bool)

(assert (=> b!1651192 (=> (not res!740041) (not e!1058865))))

(assert (=> b!1651192 (= res!740041 e!1058863)))

(declare-fun res!740044 () Bool)

(assert (=> b!1651192 (=> res!740044 e!1058863)))

(assert (=> b!1651192 (= res!740044 (not (isDefined!2812 lt!612838)))))

(assert (= (and d!498002 c!268585) b!1651187))

(assert (= (and d!498002 (not c!268585)) b!1651190))

(assert (= (or b!1651187 b!1651190) bm!105984))

(assert (= (and d!498002 res!740043) b!1651192))

(assert (= (and b!1651192 (not res!740044)) b!1651186))

(assert (= (and b!1651186 res!740045) b!1651185))

(assert (= (and b!1651192 res!740041) b!1651189))

(assert (= (and b!1651189 (not res!740040)) b!1651191))

(assert (= (and b!1651191 res!740042) b!1651188))

(assert (=> b!1651188 m!1999203))

(declare-fun m!2000947 () Bool)

(assert (=> b!1651188 m!2000947))

(declare-fun m!2000949 () Bool)

(assert (=> b!1651188 m!2000949))

(assert (=> b!1651188 m!1998431))

(assert (=> b!1651188 m!1999203))

(declare-fun m!2000951 () Bool)

(assert (=> b!1651188 m!2000951))

(assert (=> b!1651188 m!1997863))

(assert (=> b!1651188 m!1998431))

(assert (=> bm!105984 m!1997863))

(declare-fun m!2000953 () Bool)

(assert (=> bm!105984 m!2000953))

(assert (=> b!1651185 m!2000949))

(assert (=> b!1651185 m!1998431))

(assert (=> b!1651185 m!1999569))

(assert (=> b!1651185 m!2000951))

(assert (=> b!1651185 m!1997863))

(assert (=> b!1651185 m!1998431))

(assert (=> b!1651185 m!1999569))

(declare-fun m!2000955 () Bool)

(assert (=> b!1651185 m!2000955))

(assert (=> d!498002 m!1998431))

(assert (=> d!498002 m!1999569))

(declare-fun m!2000957 () Bool)

(assert (=> d!498002 m!2000957))

(assert (=> d!498002 m!1999707))

(assert (=> d!498002 m!1997863))

(assert (=> d!498002 m!1998431))

(assert (=> d!498002 m!1999569))

(declare-fun m!2000959 () Bool)

(assert (=> d!498002 m!2000959))

(declare-fun m!2000961 () Bool)

(assert (=> d!498002 m!2000961))

(declare-fun m!2000963 () Bool)

(assert (=> d!498002 m!2000963))

(assert (=> b!1651190 m!1997863))

(declare-fun m!2000965 () Bool)

(assert (=> b!1651190 m!2000965))

(assert (=> b!1651191 m!2000951))

(assert (=> b!1651191 m!1997863))

(assert (=> b!1651191 m!1998431))

(assert (=> b!1651191 m!1998431))

(assert (=> b!1651191 m!1999203))

(assert (=> b!1651191 m!1999203))

(assert (=> b!1651191 m!2000947))

(assert (=> b!1651192 m!2000957))

(assert (=> b!1651189 m!2000957))

(assert (=> b!1651186 m!2000951))

(assert (=> b!1651186 m!1997863))

(assert (=> b!1651186 m!1998431))

(assert (=> b!1651186 m!1998431))

(assert (=> b!1651186 m!1999569))

(assert (=> b!1651186 m!1999569))

(assert (=> b!1651186 m!2000955))

(assert (=> b!1649757 d!498002))

(declare-fun d!498004 () Bool)

(assert (=> d!498004 (= (list!7242 (_1!10343 lt!612099)) (list!7246 (c!268211 (_1!10343 lt!612099))))))

(declare-fun bs!396543 () Bool)

(assert (= bs!396543 d!498004))

(declare-fun m!2000967 () Bool)

(assert (=> bs!396543 m!2000967))

(assert (=> b!1649858 d!498004))

(assert (=> b!1649858 d!497700))

(assert (=> b!1649858 d!497382))

(declare-fun d!498006 () Bool)

(declare-fun lt!612842 () Token!5988)

(assert (=> d!498006 (= lt!612842 (apply!4806 (list!7242 lt!611584) 0))))

(assert (=> d!498006 (= lt!612842 (apply!4810 (c!268211 lt!611584) 0))))

(declare-fun e!1058869 () Bool)

(assert (=> d!498006 e!1058869))

(declare-fun res!740046 () Bool)

(assert (=> d!498006 (=> (not res!740046) (not e!1058869))))

(assert (=> d!498006 (= res!740046 (<= 0 0))))

(assert (=> d!498006 (= (apply!4805 lt!611584 0) lt!612842)))

(declare-fun b!1651193 () Bool)

(assert (=> b!1651193 (= e!1058869 (< 0 (size!14503 lt!611584)))))

(assert (= (and d!498006 res!740046) b!1651193))

(assert (=> d!498006 m!1998065))

(assert (=> d!498006 m!1998065))

(declare-fun m!2000969 () Bool)

(assert (=> d!498006 m!2000969))

(declare-fun m!2000971 () Bool)

(assert (=> d!498006 m!2000971))

(assert (=> b!1651193 m!1998037))

(assert (=> b!1649589 d!498006))

(declare-fun d!498008 () Bool)

(assert (=> d!498008 (= (list!7242 lt!611584) (list!7246 (c!268211 lt!611584)))))

(declare-fun bs!396544 () Bool)

(assert (= bs!396544 d!498008))

(declare-fun m!2000973 () Bool)

(assert (=> bs!396544 m!2000973))

(assert (=> b!1649589 d!498008))

(declare-fun d!498010 () Bool)

(assert (=> d!498010 (= (head!3634 (drop!912 lt!611697 0)) (apply!4806 lt!611697 0))))

(declare-fun lt!612845 () Unit!30315)

(declare-fun choose!9922 (List!18282 Int) Unit!30315)

(assert (=> d!498010 (= lt!612845 (choose!9922 lt!611697 0))))

(declare-fun e!1058875 () Bool)

(assert (=> d!498010 e!1058875))

(declare-fun res!740049 () Bool)

(assert (=> d!498010 (=> (not res!740049) (not e!1058875))))

(assert (=> d!498010 (= res!740049 (>= 0 0))))

(assert (=> d!498010 (= (lemmaDropApply!600 lt!611697 0) lt!612845)))

(declare-fun b!1651203 () Bool)

(assert (=> b!1651203 (= e!1058875 (< 0 (size!14508 lt!611697)))))

(assert (= (and d!498010 res!740049) b!1651203))

(assert (=> d!498010 m!1998055))

(assert (=> d!498010 m!1998055))

(assert (=> d!498010 m!1998057))

(assert (=> d!498010 m!1998043))

(declare-fun m!2000989 () Bool)

(assert (=> d!498010 m!2000989))

(declare-fun m!2000991 () Bool)

(assert (=> b!1651203 m!2000991))

(assert (=> b!1649589 d!498010))

(declare-fun b!1651227 () Bool)

(declare-fun e!1058890 () List!18282)

(assert (=> b!1651227 (= e!1058890 Nil!18212)))

(declare-fun b!1651228 () Bool)

(declare-fun e!1058892 () List!18282)

(assert (=> b!1651228 (= e!1058892 lt!611697)))

(declare-fun b!1651229 () Bool)

(declare-fun e!1058893 () Bool)

(declare-fun lt!612848 () List!18282)

(declare-fun e!1058889 () Int)

(assert (=> b!1651229 (= e!1058893 (= (size!14508 lt!612848) e!1058889))))

(declare-fun c!268600 () Bool)

(assert (=> b!1651229 (= c!268600 (<= 0 0))))

(declare-fun d!498014 () Bool)

(assert (=> d!498014 e!1058893))

(declare-fun res!740052 () Bool)

(assert (=> d!498014 (=> (not res!740052) (not e!1058893))))

(declare-fun content!2533 (List!18282) (InoxSet Token!5988))

(assert (=> d!498014 (= res!740052 (= ((_ map implies) (content!2533 lt!612848) (content!2533 lt!611697)) ((as const (InoxSet Token!5988)) true)))))

(assert (=> d!498014 (= lt!612848 e!1058890)))

(declare-fun c!268601 () Bool)

(assert (=> d!498014 (= c!268601 ((_ is Nil!18212) lt!611697))))

(assert (=> d!498014 (= (drop!912 lt!611697 0) lt!612848)))

(declare-fun bm!105987 () Bool)

(declare-fun call!105992 () Int)

(assert (=> bm!105987 (= call!105992 (size!14508 lt!611697))))

(declare-fun b!1651230 () Bool)

(declare-fun e!1058891 () Int)

(assert (=> b!1651230 (= e!1058891 0)))

(declare-fun b!1651231 () Bool)

(assert (=> b!1651231 (= e!1058890 e!1058892)))

(declare-fun c!268602 () Bool)

(assert (=> b!1651231 (= c!268602 (<= 0 0))))

(declare-fun b!1651232 () Bool)

(assert (=> b!1651232 (= e!1058892 (drop!912 (t!150807 lt!611697) (- 0 1)))))

(declare-fun b!1651233 () Bool)

(assert (=> b!1651233 (= e!1058889 call!105992)))

(declare-fun b!1651234 () Bool)

(assert (=> b!1651234 (= e!1058889 e!1058891)))

(declare-fun c!268603 () Bool)

(assert (=> b!1651234 (= c!268603 (>= 0 call!105992))))

(declare-fun b!1651235 () Bool)

(assert (=> b!1651235 (= e!1058891 (- call!105992 0))))

(assert (= (and d!498014 c!268601) b!1651227))

(assert (= (and d!498014 (not c!268601)) b!1651231))

(assert (= (and b!1651231 c!268602) b!1651228))

(assert (= (and b!1651231 (not c!268602)) b!1651232))

(assert (= (and d!498014 res!740052) b!1651229))

(assert (= (and b!1651229 c!268600) b!1651233))

(assert (= (and b!1651229 (not c!268600)) b!1651234))

(assert (= (and b!1651234 c!268603) b!1651230))

(assert (= (and b!1651234 (not c!268603)) b!1651235))

(assert (= (or b!1651233 b!1651234 b!1651235) bm!105987))

(declare-fun m!2000995 () Bool)

(assert (=> b!1651229 m!2000995))

(declare-fun m!2000997 () Bool)

(assert (=> d!498014 m!2000997))

(declare-fun m!2000999 () Bool)

(assert (=> d!498014 m!2000999))

(assert (=> bm!105987 m!2000991))

(declare-fun m!2001001 () Bool)

(assert (=> b!1651232 m!2001001))

(assert (=> b!1649589 d!498014))

(declare-fun d!498018 () Bool)

(declare-fun lt!612851 () Token!5988)

(declare-fun contains!3179 (List!18282 Token!5988) Bool)

(assert (=> d!498018 (contains!3179 lt!611697 lt!612851)))

(declare-fun e!1058900 () Token!5988)

(assert (=> d!498018 (= lt!612851 e!1058900)))

(declare-fun c!268607 () Bool)

(assert (=> d!498018 (= c!268607 (= 0 0))))

(declare-fun e!1058899 () Bool)

(assert (=> d!498018 e!1058899))

(declare-fun res!740055 () Bool)

(assert (=> d!498018 (=> (not res!740055) (not e!1058899))))

(assert (=> d!498018 (= res!740055 (<= 0 0))))

(assert (=> d!498018 (= (apply!4806 lt!611697 0) lt!612851)))

(declare-fun b!1651244 () Bool)

(assert (=> b!1651244 (= e!1058899 (< 0 (size!14508 lt!611697)))))

(declare-fun b!1651245 () Bool)

(assert (=> b!1651245 (= e!1058900 (head!3634 lt!611697))))

(declare-fun b!1651246 () Bool)

(assert (=> b!1651246 (= e!1058900 (apply!4806 (tail!2442 lt!611697) (- 0 1)))))

(assert (= (and d!498018 res!740055) b!1651244))

(assert (= (and d!498018 c!268607) b!1651245))

(assert (= (and d!498018 (not c!268607)) b!1651246))

(declare-fun m!2001013 () Bool)

(assert (=> d!498018 m!2001013))

(assert (=> b!1651244 m!2000991))

(declare-fun m!2001015 () Bool)

(assert (=> b!1651245 m!2001015))

(declare-fun m!2001017 () Bool)

(assert (=> b!1651246 m!2001017))

(assert (=> b!1651246 m!2001017))

(declare-fun m!2001019 () Bool)

(assert (=> b!1651246 m!2001019))

(assert (=> b!1649589 d!498018))

(declare-fun b!1651248 () Bool)

(declare-fun res!740056 () Bool)

(declare-fun e!1058901 () Bool)

(assert (=> b!1651248 (=> (not res!740056) (not e!1058901))))

(assert (=> b!1651248 (= res!740056 (<= (height!941 (++!4924 (c!268209 (BalanceConc!12085 Empty!6070)) (c!268209 (charsOf!1860 (apply!4805 lt!611584 0))))) (+ (max!0 (height!941 (c!268209 (BalanceConc!12085 Empty!6070))) (height!941 (c!268209 (charsOf!1860 (apply!4805 lt!611584 0))))) 1)))))

(declare-fun b!1651250 () Bool)

(declare-fun lt!612852 () BalanceConc!12084)

(assert (=> b!1651250 (= e!1058901 (= (list!7241 lt!612852) (++!4922 (list!7241 (BalanceConc!12085 Empty!6070)) (list!7241 (charsOf!1860 (apply!4805 lt!611584 0))))))))

(declare-fun b!1651247 () Bool)

(declare-fun res!740057 () Bool)

(assert (=> b!1651247 (=> (not res!740057) (not e!1058901))))

(assert (=> b!1651247 (= res!740057 (isBalanced!1862 (++!4924 (c!268209 (BalanceConc!12085 Empty!6070)) (c!268209 (charsOf!1860 (apply!4805 lt!611584 0))))))))

(declare-fun b!1651249 () Bool)

(declare-fun res!740059 () Bool)

(assert (=> b!1651249 (=> (not res!740059) (not e!1058901))))

(assert (=> b!1651249 (= res!740059 (>= (height!941 (++!4924 (c!268209 (BalanceConc!12085 Empty!6070)) (c!268209 (charsOf!1860 (apply!4805 lt!611584 0))))) (max!0 (height!941 (c!268209 (BalanceConc!12085 Empty!6070))) (height!941 (c!268209 (charsOf!1860 (apply!4805 lt!611584 0)))))))))

(declare-fun d!498022 () Bool)

(assert (=> d!498022 e!1058901))

(declare-fun res!740058 () Bool)

(assert (=> d!498022 (=> (not res!740058) (not e!1058901))))

(assert (=> d!498022 (= res!740058 (appendAssocInst!463 (c!268209 (BalanceConc!12085 Empty!6070)) (c!268209 (charsOf!1860 (apply!4805 lt!611584 0)))))))

(assert (=> d!498022 (= lt!612852 (BalanceConc!12085 (++!4924 (c!268209 (BalanceConc!12085 Empty!6070)) (c!268209 (charsOf!1860 (apply!4805 lt!611584 0))))))))

(assert (=> d!498022 (= (++!4921 (BalanceConc!12085 Empty!6070) (charsOf!1860 (apply!4805 lt!611584 0))) lt!612852)))

(assert (= (and d!498022 res!740058) b!1651247))

(assert (= (and b!1651247 res!740057) b!1651248))

(assert (= (and b!1651248 res!740056) b!1651249))

(assert (= (and b!1651249 res!740059) b!1651250))

(declare-fun m!2001021 () Bool)

(assert (=> b!1651249 m!2001021))

(declare-fun m!2001023 () Bool)

(assert (=> b!1651249 m!2001023))

(declare-fun m!2001025 () Bool)

(assert (=> b!1651249 m!2001025))

(assert (=> b!1651249 m!2001023))

(assert (=> b!1651249 m!2001021))

(declare-fun m!2001027 () Bool)

(assert (=> b!1651249 m!2001027))

(assert (=> b!1651249 m!2001025))

(declare-fun m!2001029 () Bool)

(assert (=> b!1651249 m!2001029))

(declare-fun m!2001031 () Bool)

(assert (=> b!1651250 m!2001031))

(assert (=> b!1651250 m!1998039))

(assert (=> b!1651250 m!1998047))

(declare-fun m!2001033 () Bool)

(assert (=> b!1651250 m!2001033))

(assert (=> b!1651250 m!1998039))

(assert (=> b!1651250 m!2001033))

(declare-fun m!2001035 () Bool)

(assert (=> b!1651250 m!2001035))

(assert (=> b!1651247 m!2001025))

(assert (=> b!1651247 m!2001025))

(declare-fun m!2001037 () Bool)

(assert (=> b!1651247 m!2001037))

(declare-fun m!2001039 () Bool)

(assert (=> d!498022 m!2001039))

(assert (=> d!498022 m!2001025))

(assert (=> b!1651248 m!2001021))

(assert (=> b!1651248 m!2001023))

(assert (=> b!1651248 m!2001025))

(assert (=> b!1651248 m!2001023))

(assert (=> b!1651248 m!2001021))

(assert (=> b!1651248 m!2001027))

(assert (=> b!1651248 m!2001025))

(assert (=> b!1651248 m!2001029))

(assert (=> b!1649589 d!498022))

(declare-fun d!498024 () Bool)

(declare-fun lt!612853 () BalanceConc!12084)

(assert (=> d!498024 (= (list!7241 lt!612853) (originalCharacters!4025 (apply!4805 lt!611584 0)))))

(assert (=> d!498024 (= lt!612853 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (apply!4805 lt!611584 0)))) (value!101186 (apply!4805 lt!611584 0))))))

(assert (=> d!498024 (= (charsOf!1860 (apply!4805 lt!611584 0)) lt!612853)))

(declare-fun b_lambda!51895 () Bool)

(assert (=> (not b_lambda!51895) (not d!498024)))

(declare-fun t!150938 () Bool)

(declare-fun tb!94575 () Bool)

(assert (=> (and b!1649509 (= (toChars!4517 (transformation!3211 (h!23612 rules!1846))) (toChars!4517 (transformation!3211 (rule!5069 (apply!4805 lt!611584 0))))) t!150938) tb!94575))

(declare-fun b!1651251 () Bool)

(declare-fun e!1058902 () Bool)

(declare-fun tp!477809 () Bool)

(assert (=> b!1651251 (= e!1058902 (and (inv!23573 (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (apply!4805 lt!611584 0)))) (value!101186 (apply!4805 lt!611584 0))))) tp!477809))))

(declare-fun result!114270 () Bool)

(assert (=> tb!94575 (= result!114270 (and (inv!23574 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (apply!4805 lt!611584 0)))) (value!101186 (apply!4805 lt!611584 0)))) e!1058902))))

(assert (= tb!94575 b!1651251))

(declare-fun m!2001041 () Bool)

(assert (=> b!1651251 m!2001041))

(declare-fun m!2001043 () Bool)

(assert (=> tb!94575 m!2001043))

(assert (=> d!498024 t!150938))

(declare-fun b_and!117269 () Bool)

(assert (= b_and!117237 (and (=> t!150938 result!114270) b_and!117269)))

(declare-fun tb!94577 () Bool)

(declare-fun t!150940 () Bool)

(assert (=> (and b!1649522 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (toChars!4517 (transformation!3211 (rule!5069 (apply!4805 lt!611584 0))))) t!150940) tb!94577))

(declare-fun result!114272 () Bool)

(assert (= result!114272 result!114270))

(assert (=> d!498024 t!150940))

(declare-fun b_and!117271 () Bool)

(assert (= b_and!117239 (and (=> t!150940 result!114272) b_and!117271)))

(declare-fun tb!94579 () Bool)

(declare-fun t!150942 () Bool)

(assert (=> (and b!1650076 (= (toChars!4517 (transformation!3211 (h!23612 (t!150806 rules!1846)))) (toChars!4517 (transformation!3211 (rule!5069 (apply!4805 lt!611584 0))))) t!150942) tb!94579))

(declare-fun result!114274 () Bool)

(assert (= result!114274 result!114270))

(assert (=> d!498024 t!150942))

(declare-fun b_and!117273 () Bool)

(assert (= b_and!117241 (and (=> t!150942 result!114274) b_and!117273)))

(declare-fun tb!94581 () Bool)

(declare-fun t!150944 () Bool)

(assert (=> (and b!1650090 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (toChars!4517 (transformation!3211 (rule!5069 (apply!4805 lt!611584 0))))) t!150944) tb!94581))

(declare-fun result!114276 () Bool)

(assert (= result!114276 result!114270))

(assert (=> d!498024 t!150944))

(declare-fun b_and!117275 () Bool)

(assert (= b_and!117243 (and (=> t!150944 result!114276) b_and!117275)))

(declare-fun m!2001045 () Bool)

(assert (=> d!498024 m!2001045))

(declare-fun m!2001047 () Bool)

(assert (=> d!498024 m!2001047))

(assert (=> b!1649589 d!498024))

(declare-fun d!498026 () Bool)

(assert (=> d!498026 (= (head!3634 (drop!912 lt!611697 0)) (h!23613 (drop!912 lt!611697 0)))))

(assert (=> b!1649589 d!498026))

(declare-fun d!498028 () Bool)

(declare-fun lt!612855 () BalanceConc!12084)

(assert (=> d!498028 (= (list!7241 lt!612855) (printListTailRec!393 thiss!17113 (dropList!673 lt!611584 (+ 0 1)) (list!7241 (++!4921 (BalanceConc!12085 Empty!6070) (charsOf!1860 (apply!4805 lt!611584 0))))))))

(declare-fun e!1058904 () BalanceConc!12084)

(assert (=> d!498028 (= lt!612855 e!1058904)))

(declare-fun c!268608 () Bool)

(assert (=> d!498028 (= c!268608 (>= (+ 0 1) (size!14503 lt!611584)))))

(declare-fun e!1058903 () Bool)

(assert (=> d!498028 e!1058903))

(declare-fun res!740060 () Bool)

(assert (=> d!498028 (=> (not res!740060) (not e!1058903))))

(assert (=> d!498028 (= res!740060 (>= (+ 0 1) 0))))

(assert (=> d!498028 (= (printTailRec!891 thiss!17113 lt!611584 (+ 0 1) (++!4921 (BalanceConc!12085 Empty!6070) (charsOf!1860 (apply!4805 lt!611584 0)))) lt!612855)))

(declare-fun b!1651252 () Bool)

(assert (=> b!1651252 (= e!1058903 (<= (+ 0 1) (size!14503 lt!611584)))))

(declare-fun b!1651253 () Bool)

(assert (=> b!1651253 (= e!1058904 (++!4921 (BalanceConc!12085 Empty!6070) (charsOf!1860 (apply!4805 lt!611584 0))))))

(declare-fun b!1651254 () Bool)

(assert (=> b!1651254 (= e!1058904 (printTailRec!891 thiss!17113 lt!611584 (+ 0 1 1) (++!4921 (++!4921 (BalanceConc!12085 Empty!6070) (charsOf!1860 (apply!4805 lt!611584 0))) (charsOf!1860 (apply!4805 lt!611584 (+ 0 1))))))))

(declare-fun lt!612859 () List!18282)

(assert (=> b!1651254 (= lt!612859 (list!7242 lt!611584))))

(declare-fun lt!612854 () Unit!30315)

(assert (=> b!1651254 (= lt!612854 (lemmaDropApply!600 lt!612859 (+ 0 1)))))

(assert (=> b!1651254 (= (head!3634 (drop!912 lt!612859 (+ 0 1))) (apply!4806 lt!612859 (+ 0 1)))))

(declare-fun lt!612856 () Unit!30315)

(assert (=> b!1651254 (= lt!612856 lt!612854)))

(declare-fun lt!612858 () List!18282)

(assert (=> b!1651254 (= lt!612858 (list!7242 lt!611584))))

(declare-fun lt!612860 () Unit!30315)

(assert (=> b!1651254 (= lt!612860 (lemmaDropTail!580 lt!612858 (+ 0 1)))))

(assert (=> b!1651254 (= (tail!2442 (drop!912 lt!612858 (+ 0 1))) (drop!912 lt!612858 (+ 0 1 1)))))

(declare-fun lt!612857 () Unit!30315)

(assert (=> b!1651254 (= lt!612857 lt!612860)))

(assert (= (and d!498028 res!740060) b!1651252))

(assert (= (and d!498028 c!268608) b!1651253))

(assert (= (and d!498028 (not c!268608)) b!1651254))

(declare-fun m!2001049 () Bool)

(assert (=> d!498028 m!2001049))

(declare-fun m!2001051 () Bool)

(assert (=> d!498028 m!2001051))

(assert (=> d!498028 m!1998037))

(assert (=> d!498028 m!2001049))

(declare-fun m!2001053 () Bool)

(assert (=> d!498028 m!2001053))

(declare-fun m!2001055 () Bool)

(assert (=> d!498028 m!2001055))

(assert (=> d!498028 m!1998051))

(assert (=> d!498028 m!2001053))

(assert (=> b!1651252 m!1998037))

(declare-fun m!2001057 () Bool)

(assert (=> b!1651254 m!2001057))

(declare-fun m!2001059 () Bool)

(assert (=> b!1651254 m!2001059))

(declare-fun m!2001061 () Bool)

(assert (=> b!1651254 m!2001061))

(declare-fun m!2001063 () Bool)

(assert (=> b!1651254 m!2001063))

(assert (=> b!1651254 m!2001059))

(declare-fun m!2001065 () Bool)

(assert (=> b!1651254 m!2001065))

(declare-fun m!2001067 () Bool)

(assert (=> b!1651254 m!2001067))

(declare-fun m!2001069 () Bool)

(assert (=> b!1651254 m!2001069))

(declare-fun m!2001071 () Bool)

(assert (=> b!1651254 m!2001071))

(declare-fun m!2001073 () Bool)

(assert (=> b!1651254 m!2001073))

(declare-fun m!2001075 () Bool)

(assert (=> b!1651254 m!2001075))

(declare-fun m!2001077 () Bool)

(assert (=> b!1651254 m!2001077))

(assert (=> b!1651254 m!1998051))

(assert (=> b!1651254 m!2001061))

(assert (=> b!1651254 m!2001065))

(assert (=> b!1651254 m!2001075))

(assert (=> b!1651254 m!1998065))

(declare-fun m!2001079 () Bool)

(assert (=> b!1651254 m!2001079))

(assert (=> b!1651254 m!2001069))

(assert (=> b!1649589 d!498028))

(declare-fun b!1651255 () Bool)

(declare-fun e!1058906 () List!18282)

(assert (=> b!1651255 (= e!1058906 Nil!18212)))

(declare-fun b!1651256 () Bool)

(declare-fun e!1058908 () List!18282)

(assert (=> b!1651256 (= e!1058908 lt!611696)))

(declare-fun b!1651257 () Bool)

(declare-fun e!1058909 () Bool)

(declare-fun lt!612861 () List!18282)

(declare-fun e!1058905 () Int)

(assert (=> b!1651257 (= e!1058909 (= (size!14508 lt!612861) e!1058905))))

(declare-fun c!268609 () Bool)

(assert (=> b!1651257 (= c!268609 (<= (+ 0 1) 0))))

(declare-fun d!498030 () Bool)

(assert (=> d!498030 e!1058909))

(declare-fun res!740061 () Bool)

(assert (=> d!498030 (=> (not res!740061) (not e!1058909))))

(assert (=> d!498030 (= res!740061 (= ((_ map implies) (content!2533 lt!612861) (content!2533 lt!611696)) ((as const (InoxSet Token!5988)) true)))))

(assert (=> d!498030 (= lt!612861 e!1058906)))

(declare-fun c!268610 () Bool)

(assert (=> d!498030 (= c!268610 ((_ is Nil!18212) lt!611696))))

(assert (=> d!498030 (= (drop!912 lt!611696 (+ 0 1)) lt!612861)))

(declare-fun bm!105988 () Bool)

(declare-fun call!105993 () Int)

(assert (=> bm!105988 (= call!105993 (size!14508 lt!611696))))

(declare-fun b!1651258 () Bool)

(declare-fun e!1058907 () Int)

(assert (=> b!1651258 (= e!1058907 0)))

(declare-fun b!1651259 () Bool)

(assert (=> b!1651259 (= e!1058906 e!1058908)))

(declare-fun c!268611 () Bool)

(assert (=> b!1651259 (= c!268611 (<= (+ 0 1) 0))))

(declare-fun b!1651260 () Bool)

(assert (=> b!1651260 (= e!1058908 (drop!912 (t!150807 lt!611696) (- (+ 0 1) 1)))))

(declare-fun b!1651261 () Bool)

(assert (=> b!1651261 (= e!1058905 call!105993)))

(declare-fun b!1651262 () Bool)

(assert (=> b!1651262 (= e!1058905 e!1058907)))

(declare-fun c!268612 () Bool)

(assert (=> b!1651262 (= c!268612 (>= (+ 0 1) call!105993))))

(declare-fun b!1651263 () Bool)

(assert (=> b!1651263 (= e!1058907 (- call!105993 (+ 0 1)))))

(assert (= (and d!498030 c!268610) b!1651255))

(assert (= (and d!498030 (not c!268610)) b!1651259))

(assert (= (and b!1651259 c!268611) b!1651256))

(assert (= (and b!1651259 (not c!268611)) b!1651260))

(assert (= (and d!498030 res!740061) b!1651257))

(assert (= (and b!1651257 c!268609) b!1651261))

(assert (= (and b!1651257 (not c!268609)) b!1651262))

(assert (= (and b!1651262 c!268612) b!1651258))

(assert (= (and b!1651262 (not c!268612)) b!1651263))

(assert (= (or b!1651261 b!1651262 b!1651263) bm!105988))

(declare-fun m!2001081 () Bool)

(assert (=> b!1651257 m!2001081))

(declare-fun m!2001083 () Bool)

(assert (=> d!498030 m!2001083))

(declare-fun m!2001085 () Bool)

(assert (=> d!498030 m!2001085))

(declare-fun m!2001087 () Bool)

(assert (=> bm!105988 m!2001087))

(declare-fun m!2001089 () Bool)

(assert (=> b!1651260 m!2001089))

(assert (=> b!1649589 d!498030))

(declare-fun d!498032 () Bool)

(assert (=> d!498032 (= (tail!2442 (drop!912 lt!611696 0)) (t!150807 (drop!912 lt!611696 0)))))

(assert (=> b!1649589 d!498032))

(declare-fun b!1651266 () Bool)

(declare-fun e!1058913 () List!18282)

(assert (=> b!1651266 (= e!1058913 Nil!18212)))

(declare-fun b!1651267 () Bool)

(declare-fun e!1058915 () List!18282)

(assert (=> b!1651267 (= e!1058915 lt!611696)))

(declare-fun b!1651268 () Bool)

(declare-fun e!1058916 () Bool)

(declare-fun lt!612864 () List!18282)

(declare-fun e!1058912 () Int)

(assert (=> b!1651268 (= e!1058916 (= (size!14508 lt!612864) e!1058912))))

(declare-fun c!268613 () Bool)

(assert (=> b!1651268 (= c!268613 (<= 0 0))))

(declare-fun d!498034 () Bool)

(assert (=> d!498034 e!1058916))

(declare-fun res!740064 () Bool)

(assert (=> d!498034 (=> (not res!740064) (not e!1058916))))

(assert (=> d!498034 (= res!740064 (= ((_ map implies) (content!2533 lt!612864) (content!2533 lt!611696)) ((as const (InoxSet Token!5988)) true)))))

(assert (=> d!498034 (= lt!612864 e!1058913)))

(declare-fun c!268614 () Bool)

(assert (=> d!498034 (= c!268614 ((_ is Nil!18212) lt!611696))))

(assert (=> d!498034 (= (drop!912 lt!611696 0) lt!612864)))

(declare-fun bm!105989 () Bool)

(declare-fun call!105994 () Int)

(assert (=> bm!105989 (= call!105994 (size!14508 lt!611696))))

(declare-fun b!1651269 () Bool)

(declare-fun e!1058914 () Int)

(assert (=> b!1651269 (= e!1058914 0)))

(declare-fun b!1651270 () Bool)

(assert (=> b!1651270 (= e!1058913 e!1058915)))

(declare-fun c!268615 () Bool)

(assert (=> b!1651270 (= c!268615 (<= 0 0))))

(declare-fun b!1651271 () Bool)

(assert (=> b!1651271 (= e!1058915 (drop!912 (t!150807 lt!611696) (- 0 1)))))

(declare-fun b!1651272 () Bool)

(assert (=> b!1651272 (= e!1058912 call!105994)))

(declare-fun b!1651273 () Bool)

(assert (=> b!1651273 (= e!1058912 e!1058914)))

(declare-fun c!268616 () Bool)

(assert (=> b!1651273 (= c!268616 (>= 0 call!105994))))

(declare-fun b!1651274 () Bool)

(assert (=> b!1651274 (= e!1058914 (- call!105994 0))))

(assert (= (and d!498034 c!268614) b!1651266))

(assert (= (and d!498034 (not c!268614)) b!1651270))

(assert (= (and b!1651270 c!268615) b!1651267))

(assert (= (and b!1651270 (not c!268615)) b!1651271))

(assert (= (and d!498034 res!740064) b!1651268))

(assert (= (and b!1651268 c!268613) b!1651272))

(assert (= (and b!1651268 (not c!268613)) b!1651273))

(assert (= (and b!1651273 c!268616) b!1651269))

(assert (= (and b!1651273 (not c!268616)) b!1651274))

(assert (= (or b!1651272 b!1651273 b!1651274) bm!105989))

(declare-fun m!2001091 () Bool)

(assert (=> b!1651268 m!2001091))

(declare-fun m!2001095 () Bool)

(assert (=> d!498034 m!2001095))

(assert (=> d!498034 m!2001085))

(assert (=> bm!105989 m!2001087))

(declare-fun m!2001097 () Bool)

(assert (=> b!1651271 m!2001097))

(assert (=> b!1649589 d!498034))

(declare-fun d!498038 () Bool)

(assert (=> d!498038 (= (tail!2442 (drop!912 lt!611696 0)) (drop!912 lt!611696 (+ 0 1)))))

(declare-fun lt!612868 () Unit!30315)

(declare-fun choose!9923 (List!18282 Int) Unit!30315)

(assert (=> d!498038 (= lt!612868 (choose!9923 lt!611696 0))))

(declare-fun e!1058921 () Bool)

(assert (=> d!498038 e!1058921))

(declare-fun res!740069 () Bool)

(assert (=> d!498038 (=> (not res!740069) (not e!1058921))))

(assert (=> d!498038 (= res!740069 (>= 0 0))))

(assert (=> d!498038 (= (lemmaDropTail!580 lt!611696 0) lt!612868)))

(declare-fun b!1651280 () Bool)

(assert (=> b!1651280 (= e!1058921 (< 0 (size!14508 lt!611696)))))

(assert (= (and d!498038 res!740069) b!1651280))

(assert (=> d!498038 m!1998061))

(assert (=> d!498038 m!1998061))

(assert (=> d!498038 m!1998063))

(assert (=> d!498038 m!1998067))

(declare-fun m!2001109 () Bool)

(assert (=> d!498038 m!2001109))

(assert (=> b!1651280 m!2001087))

(assert (=> b!1649589 d!498038))

(declare-fun bs!396545 () Bool)

(declare-fun d!498042 () Bool)

(assert (= bs!396545 (and d!498042 d!497836)))

(declare-fun lambda!67691 () Int)

(assert (=> bs!396545 (= (= (toValue!4658 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (toValue!4658 (transformation!3211 (h!23612 rules!1846)))) (= lambda!67691 lambda!67686))))

(assert (=> d!498042 true))

(assert (=> d!498042 (< (dynLambda!8163 order!10871 (toValue!4658 (transformation!3211 (rule!5069 (h!23613 tokens!457))))) (dynLambda!8170 order!10883 lambda!67691))))

(assert (=> d!498042 (= (equivClasses!1182 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (toValue!4658 (transformation!3211 (rule!5069 (h!23613 tokens!457))))) (Forall2!525 lambda!67691))))

(declare-fun bs!396546 () Bool)

(assert (= bs!396546 d!498042))

(declare-fun m!2001111 () Bool)

(assert (=> bs!396546 m!2001111))

(assert (=> b!1650019 d!498042))

(declare-fun d!498044 () Bool)

(declare-fun c!268618 () Bool)

(assert (=> d!498044 (= c!268618 (isEmpty!11246 (tail!2444 (++!4922 lt!611596 lt!611595))))))

(declare-fun e!1058924 () Bool)

(assert (=> d!498044 (= (prefixMatch!456 (derivativeStep!1110 lt!611598 (head!3631 (++!4922 lt!611596 lt!611595))) (tail!2444 (++!4922 lt!611596 lt!611595))) e!1058924)))

(declare-fun b!1651283 () Bool)

(assert (=> b!1651283 (= e!1058924 (not (lostCause!460 (derivativeStep!1110 lt!611598 (head!3631 (++!4922 lt!611596 lt!611595))))))))

(declare-fun b!1651284 () Bool)

(assert (=> b!1651284 (= e!1058924 (prefixMatch!456 (derivativeStep!1110 (derivativeStep!1110 lt!611598 (head!3631 (++!4922 lt!611596 lt!611595))) (head!3631 (tail!2444 (++!4922 lt!611596 lt!611595)))) (tail!2444 (tail!2444 (++!4922 lt!611596 lt!611595)))))))

(assert (= (and d!498044 c!268618) b!1651283))

(assert (= (and d!498044 (not c!268618)) b!1651284))

(assert (=> d!498044 m!1998961))

(declare-fun m!2001113 () Bool)

(assert (=> d!498044 m!2001113))

(assert (=> b!1651283 m!1998959))

(declare-fun m!2001115 () Bool)

(assert (=> b!1651283 m!2001115))

(assert (=> b!1651284 m!1998961))

(declare-fun m!2001117 () Bool)

(assert (=> b!1651284 m!2001117))

(assert (=> b!1651284 m!1998959))

(assert (=> b!1651284 m!2001117))

(declare-fun m!2001119 () Bool)

(assert (=> b!1651284 m!2001119))

(assert (=> b!1651284 m!1998961))

(declare-fun m!2001121 () Bool)

(assert (=> b!1651284 m!2001121))

(assert (=> b!1651284 m!2001119))

(assert (=> b!1651284 m!2001121))

(declare-fun m!2001125 () Bool)

(assert (=> b!1651284 m!2001125))

(assert (=> b!1650039 d!498044))

(declare-fun b!1651324 () Bool)

(declare-fun c!268634 () Bool)

(assert (=> b!1651324 (= c!268634 (nullable!1343 (regOne!9590 lt!611598)))))

(declare-fun e!1058952 () Regex!4539)

(declare-fun e!1058951 () Regex!4539)

(assert (=> b!1651324 (= e!1058952 e!1058951)))

(declare-fun b!1651325 () Bool)

(declare-fun e!1058950 () Regex!4539)

(assert (=> b!1651325 (= e!1058950 (ite (= (head!3631 (++!4922 lt!611596 lt!611595)) (c!268210 lt!611598)) EmptyExpr!4539 EmptyLang!4539))))

(declare-fun call!106012 () Regex!4539)

(declare-fun c!268635 () Bool)

(declare-fun c!268633 () Bool)

(declare-fun bm!106004 () Bool)

(assert (=> bm!106004 (= call!106012 (derivativeStep!1110 (ite c!268633 (regOne!9591 lt!611598) (ite c!268635 (reg!4868 lt!611598) (regOne!9590 lt!611598))) (head!3631 (++!4922 lt!611596 lt!611595))))))

(declare-fun bm!106005 () Bool)

(declare-fun call!106010 () Regex!4539)

(declare-fun call!106009 () Regex!4539)

(assert (=> bm!106005 (= call!106010 call!106009)))

(declare-fun b!1651326 () Bool)

(assert (=> b!1651326 (= e!1058951 (Union!4539 (Concat!7841 call!106010 (regTwo!9590 lt!611598)) EmptyLang!4539))))

(declare-fun bm!106006 () Bool)

(assert (=> bm!106006 (= call!106009 (derivativeStep!1110 (ite c!268633 (regTwo!9591 lt!611598) (ite c!268634 (regTwo!9590 lt!611598) (regOne!9590 lt!611598))) (head!3631 (++!4922 lt!611596 lt!611595))))))

(declare-fun b!1651327 () Bool)

(declare-fun e!1058954 () Regex!4539)

(assert (=> b!1651327 (= e!1058954 e!1058950)))

(declare-fun c!268636 () Bool)

(assert (=> b!1651327 (= c!268636 ((_ is ElementMatch!4539) lt!611598))))

(declare-fun d!498046 () Bool)

(declare-fun lt!612874 () Regex!4539)

(assert (=> d!498046 (validRegex!1808 lt!612874)))

(assert (=> d!498046 (= lt!612874 e!1058954)))

(declare-fun c!268637 () Bool)

(assert (=> d!498046 (= c!268637 (or ((_ is EmptyExpr!4539) lt!611598) ((_ is EmptyLang!4539) lt!611598)))))

(assert (=> d!498046 (validRegex!1808 lt!611598)))

(assert (=> d!498046 (= (derivativeStep!1110 lt!611598 (head!3631 (++!4922 lt!611596 lt!611595))) lt!612874)))

(declare-fun b!1651328 () Bool)

(assert (=> b!1651328 (= e!1058954 EmptyLang!4539)))

(declare-fun b!1651329 () Bool)

(declare-fun e!1058953 () Regex!4539)

(assert (=> b!1651329 (= e!1058953 (Union!4539 call!106012 call!106009))))

(declare-fun b!1651330 () Bool)

(assert (=> b!1651330 (= c!268633 ((_ is Union!4539) lt!611598))))

(assert (=> b!1651330 (= e!1058950 e!1058953)))

(declare-fun bm!106007 () Bool)

(declare-fun call!106011 () Regex!4539)

(assert (=> bm!106007 (= call!106011 call!106012)))

(declare-fun b!1651331 () Bool)

(assert (=> b!1651331 (= e!1058953 e!1058952)))

(assert (=> b!1651331 (= c!268635 ((_ is Star!4539) lt!611598))))

(declare-fun b!1651332 () Bool)

(assert (=> b!1651332 (= e!1058951 (Union!4539 (Concat!7841 call!106011 (regTwo!9590 lt!611598)) call!106010))))

(declare-fun b!1651333 () Bool)

(assert (=> b!1651333 (= e!1058952 (Concat!7841 call!106011 lt!611598))))

(assert (= (and d!498046 c!268637) b!1651328))

(assert (= (and d!498046 (not c!268637)) b!1651327))

(assert (= (and b!1651327 c!268636) b!1651325))

(assert (= (and b!1651327 (not c!268636)) b!1651330))

(assert (= (and b!1651330 c!268633) b!1651329))

(assert (= (and b!1651330 (not c!268633)) b!1651331))

(assert (= (and b!1651331 c!268635) b!1651333))

(assert (= (and b!1651331 (not c!268635)) b!1651324))

(assert (= (and b!1651324 c!268634) b!1651332))

(assert (= (and b!1651324 (not c!268634)) b!1651326))

(assert (= (or b!1651332 b!1651326) bm!106005))

(assert (= (or b!1651333 b!1651332) bm!106007))

(assert (= (or b!1651329 bm!106007) bm!106004))

(assert (= (or b!1651329 bm!106005) bm!106006))

(declare-fun m!2001133 () Bool)

(assert (=> b!1651324 m!2001133))

(assert (=> bm!106004 m!1998957))

(declare-fun m!2001135 () Bool)

(assert (=> bm!106004 m!2001135))

(assert (=> bm!106006 m!1998957))

(declare-fun m!2001137 () Bool)

(assert (=> bm!106006 m!2001137))

(declare-fun m!2001139 () Bool)

(assert (=> d!498046 m!2001139))

(assert (=> d!498046 m!1998871))

(assert (=> b!1650039 d!498046))

(declare-fun d!498052 () Bool)

(assert (=> d!498052 (= (head!3631 (++!4922 lt!611596 lt!611595)) (h!23610 (++!4922 lt!611596 lt!611595)))))

(assert (=> b!1650039 d!498052))

(declare-fun d!498054 () Bool)

(assert (=> d!498054 (= (tail!2444 (++!4922 lt!611596 lt!611595)) (t!150804 (++!4922 lt!611596 lt!611595)))))

(assert (=> b!1650039 d!498054))

(declare-fun b!1651334 () Bool)

(declare-fun e!1058956 () Bool)

(assert (=> b!1651334 (= e!1058956 (inv!16 (value!101186 (h!23613 (t!150807 tokens!457)))))))

(declare-fun b!1651335 () Bool)

(declare-fun e!1058957 () Bool)

(assert (=> b!1651335 (= e!1058957 (inv!15 (value!101186 (h!23613 (t!150807 tokens!457)))))))

(declare-fun d!498056 () Bool)

(declare-fun c!268639 () Bool)

(assert (=> d!498056 (= c!268639 ((_ is IntegerValue!9903) (value!101186 (h!23613 (t!150807 tokens!457)))))))

(assert (=> d!498056 (= (inv!21 (value!101186 (h!23613 (t!150807 tokens!457)))) e!1058956)))

(declare-fun b!1651336 () Bool)

(declare-fun res!740083 () Bool)

(assert (=> b!1651336 (=> res!740083 e!1058957)))

(assert (=> b!1651336 (= res!740083 (not ((_ is IntegerValue!9905) (value!101186 (h!23613 (t!150807 tokens!457))))))))

(declare-fun e!1058955 () Bool)

(assert (=> b!1651336 (= e!1058955 e!1058957)))

(declare-fun b!1651337 () Bool)

(assert (=> b!1651337 (= e!1058956 e!1058955)))

(declare-fun c!268638 () Bool)

(assert (=> b!1651337 (= c!268638 ((_ is IntegerValue!9904) (value!101186 (h!23613 (t!150807 tokens!457)))))))

(declare-fun b!1651338 () Bool)

(assert (=> b!1651338 (= e!1058955 (inv!17 (value!101186 (h!23613 (t!150807 tokens!457)))))))

(assert (= (and d!498056 c!268639) b!1651334))

(assert (= (and d!498056 (not c!268639)) b!1651337))

(assert (= (and b!1651337 c!268638) b!1651338))

(assert (= (and b!1651337 (not c!268638)) b!1651336))

(assert (= (and b!1651336 (not res!740083)) b!1651335))

(declare-fun m!2001141 () Bool)

(assert (=> b!1651334 m!2001141))

(declare-fun m!2001143 () Bool)

(assert (=> b!1651335 m!2001143))

(declare-fun m!2001145 () Bool)

(assert (=> b!1651338 m!2001145))

(assert (=> b!1650088 d!498056))

(assert (=> b!1649753 d!497534))

(assert (=> b!1649753 d!497602))

(assert (=> b!1649753 d!497592))

(assert (=> b!1649753 d!497530))

(declare-fun b!1651340 () Bool)

(declare-fun res!740084 () Bool)

(declare-fun e!1058959 () Bool)

(assert (=> b!1651340 (=> (not res!740084) (not e!1058959))))

(assert (=> b!1651340 (= res!740084 (not (isEmpty!11251 (left!14594 (prepend!777 (c!268211 (seqFromList!2162 (t!150807 (t!150807 tokens!457)))) (h!23613 (t!150807 tokens!457)))))))))

(declare-fun b!1651341 () Bool)

(declare-fun res!740086 () Bool)

(assert (=> b!1651341 (=> (not res!740086) (not e!1058959))))

(assert (=> b!1651341 (= res!740086 (isBalanced!1861 (left!14594 (prepend!777 (c!268211 (seqFromList!2162 (t!150807 (t!150807 tokens!457)))) (h!23613 (t!150807 tokens!457))))))))

(declare-fun b!1651342 () Bool)

(assert (=> b!1651342 (= e!1058959 (not (isEmpty!11251 (right!14924 (prepend!777 (c!268211 (seqFromList!2162 (t!150807 (t!150807 tokens!457)))) (h!23613 (t!150807 tokens!457)))))))))

(declare-fun d!498058 () Bool)

(declare-fun res!740087 () Bool)

(declare-fun e!1058958 () Bool)

(assert (=> d!498058 (=> res!740087 e!1058958)))

(assert (=> d!498058 (= res!740087 (not ((_ is Node!6071) (prepend!777 (c!268211 (seqFromList!2162 (t!150807 (t!150807 tokens!457)))) (h!23613 (t!150807 tokens!457))))))))

(assert (=> d!498058 (= (isBalanced!1861 (prepend!777 (c!268211 (seqFromList!2162 (t!150807 (t!150807 tokens!457)))) (h!23613 (t!150807 tokens!457)))) e!1058958)))

(declare-fun b!1651339 () Bool)

(assert (=> b!1651339 (= e!1058958 e!1058959)))

(declare-fun res!740085 () Bool)

(assert (=> b!1651339 (=> (not res!740085) (not e!1058959))))

(assert (=> b!1651339 (= res!740085 (<= (- 1) (- (height!943 (left!14594 (prepend!777 (c!268211 (seqFromList!2162 (t!150807 (t!150807 tokens!457)))) (h!23613 (t!150807 tokens!457))))) (height!943 (right!14924 (prepend!777 (c!268211 (seqFromList!2162 (t!150807 (t!150807 tokens!457)))) (h!23613 (t!150807 tokens!457))))))))))

(declare-fun b!1651343 () Bool)

(declare-fun res!740088 () Bool)

(assert (=> b!1651343 (=> (not res!740088) (not e!1058959))))

(assert (=> b!1651343 (= res!740088 (isBalanced!1861 (right!14924 (prepend!777 (c!268211 (seqFromList!2162 (t!150807 (t!150807 tokens!457)))) (h!23613 (t!150807 tokens!457))))))))

(declare-fun b!1651344 () Bool)

(declare-fun res!740089 () Bool)

(assert (=> b!1651344 (=> (not res!740089) (not e!1058959))))

(assert (=> b!1651344 (= res!740089 (<= (- (height!943 (left!14594 (prepend!777 (c!268211 (seqFromList!2162 (t!150807 (t!150807 tokens!457)))) (h!23613 (t!150807 tokens!457))))) (height!943 (right!14924 (prepend!777 (c!268211 (seqFromList!2162 (t!150807 (t!150807 tokens!457)))) (h!23613 (t!150807 tokens!457)))))) 1))))

(assert (= (and d!498058 (not res!740087)) b!1651339))

(assert (= (and b!1651339 res!740085) b!1651344))

(assert (= (and b!1651344 res!740089) b!1651341))

(assert (= (and b!1651341 res!740086) b!1651343))

(assert (= (and b!1651343 res!740088) b!1651340))

(assert (= (and b!1651340 res!740084) b!1651342))

(declare-fun m!2001147 () Bool)

(assert (=> b!1651343 m!2001147))

(declare-fun m!2001149 () Bool)

(assert (=> b!1651341 m!2001149))

(declare-fun m!2001151 () Bool)

(assert (=> b!1651340 m!2001151))

(declare-fun m!2001153 () Bool)

(assert (=> b!1651342 m!2001153))

(declare-fun m!2001155 () Bool)

(assert (=> b!1651339 m!2001155))

(declare-fun m!2001157 () Bool)

(assert (=> b!1651339 m!2001157))

(assert (=> b!1651344 m!2001155))

(assert (=> b!1651344 m!2001157))

(assert (=> d!497326 d!498058))

(declare-fun d!498060 () Bool)

(declare-fun e!1058975 () Bool)

(assert (=> d!498060 e!1058975))

(declare-fun res!740099 () Bool)

(assert (=> d!498060 (=> (not res!740099) (not e!1058975))))

(declare-fun lt!612879 () Conc!6071)

(assert (=> d!498060 (= res!740099 (isBalanced!1861 lt!612879))))

(declare-fun ++!4928 (Conc!6071 Conc!6071) Conc!6071)

(declare-fun fill!106 (Int Token!5988) IArray!12147)

(assert (=> d!498060 (= lt!612879 (++!4928 (Leaf!8897 (fill!106 1 (h!23613 (t!150807 tokens!457))) 1) (c!268211 (seqFromList!2162 (t!150807 (t!150807 tokens!457))))))))

(assert (=> d!498060 (isBalanced!1861 (c!268211 (seqFromList!2162 (t!150807 (t!150807 tokens!457)))))))

(assert (=> d!498060 (= (prepend!777 (c!268211 (seqFromList!2162 (t!150807 (t!150807 tokens!457)))) (h!23613 (t!150807 tokens!457))) lt!612879)))

(declare-fun b!1651366 () Bool)

(assert (=> b!1651366 (= e!1058975 (= (list!7246 lt!612879) (Cons!18212 (h!23613 (t!150807 tokens!457)) (list!7246 (c!268211 (seqFromList!2162 (t!150807 (t!150807 tokens!457))))))))))

(assert (= (and d!498060 res!740099) b!1651366))

(declare-fun m!2001183 () Bool)

(assert (=> d!498060 m!2001183))

(declare-fun m!2001185 () Bool)

(assert (=> d!498060 m!2001185))

(declare-fun m!2001187 () Bool)

(assert (=> d!498060 m!2001187))

(declare-fun m!2001189 () Bool)

(assert (=> d!498060 m!2001189))

(declare-fun m!2001191 () Bool)

(assert (=> b!1651366 m!2001191))

(declare-fun m!2001193 () Bool)

(assert (=> b!1651366 m!2001193))

(assert (=> d!497326 d!498060))

(declare-fun d!498072 () Bool)

(assert (=> d!498072 true))

(declare-fun lt!612883 () Bool)

(assert (=> d!498072 (= lt!612883 (rulesValidInductive!1017 thiss!17113 rules!1846))))

(declare-fun lambda!67694 () Int)

(declare-fun forall!4148 (List!18281 Int) Bool)

(assert (=> d!498072 (= lt!612883 (forall!4148 rules!1846 lambda!67694))))

(assert (=> d!498072 (= (rulesValid!1170 thiss!17113 rules!1846) lt!612883)))

(declare-fun bs!396550 () Bool)

(assert (= bs!396550 d!498072))

(assert (=> bs!396550 m!1997961))

(declare-fun m!2001205 () Bool)

(assert (=> bs!396550 m!2001205))

(assert (=> d!497450 d!498072))

(declare-fun d!498078 () Bool)

(assert (=> d!498078 (= (list!7241 lt!612105) (list!7244 (c!268209 lt!612105)))))

(declare-fun bs!396551 () Bool)

(assert (= bs!396551 d!498078))

(declare-fun m!2001207 () Bool)

(assert (=> bs!396551 m!2001207))

(assert (=> d!497392 d!498078))

(declare-fun bs!396552 () Bool)

(declare-fun d!498080 () Bool)

(assert (= bs!396552 (and d!498080 d!497424)))

(declare-fun lambda!67699 () Int)

(assert (=> bs!396552 (= lambda!67699 lambda!67664)))

(declare-fun lambda!67700 () Int)

(declare-fun forall!4149 (List!18286 Int) Bool)

(assert (=> d!498080 (forall!4149 (map!3751 rules!1846 lambda!67699) lambda!67700)))

(declare-fun lt!612892 () Unit!30315)

(declare-fun e!1058988 () Unit!30315)

(assert (=> d!498080 (= lt!612892 e!1058988)))

(declare-fun c!268655 () Bool)

(assert (=> d!498080 (= c!268655 ((_ is Nil!18211) rules!1846))))

(assert (=> d!498080 (rulesValidInductive!1017 thiss!17113 rules!1846)))

(assert (=> d!498080 (= (lemma!266 rules!1846 thiss!17113 rules!1846) lt!612892)))

(declare-fun b!1651390 () Bool)

(declare-fun Unit!30367 () Unit!30315)

(assert (=> b!1651390 (= e!1058988 Unit!30367)))

(declare-fun b!1651391 () Bool)

(declare-fun Unit!30368 () Unit!30315)

(assert (=> b!1651391 (= e!1058988 Unit!30368)))

(declare-fun lt!612893 () Unit!30315)

(assert (=> b!1651391 (= lt!612893 (lemma!266 rules!1846 thiss!17113 (t!150806 rules!1846)))))

(assert (= (and d!498080 c!268655) b!1651390))

(assert (= (and d!498080 (not c!268655)) b!1651391))

(declare-fun m!2001209 () Bool)

(assert (=> d!498080 m!2001209))

(assert (=> d!498080 m!2001209))

(declare-fun m!2001211 () Bool)

(assert (=> d!498080 m!2001211))

(assert (=> d!498080 m!1997961))

(declare-fun m!2001213 () Bool)

(assert (=> b!1651391 m!2001213))

(assert (=> d!497424 d!498080))

(declare-fun bs!396555 () Bool)

(declare-fun d!498082 () Bool)

(assert (= bs!396555 (and d!498082 d!498080)))

(declare-fun lambda!67703 () Int)

(assert (=> bs!396555 (= lambda!67703 lambda!67700)))

(declare-fun b!1651419 () Bool)

(declare-fun e!1059010 () Regex!4539)

(assert (=> b!1651419 (= e!1059010 EmptyLang!4539)))

(declare-fun b!1651421 () Bool)

(declare-fun e!1059005 () Bool)

(declare-fun e!1059006 () Bool)

(assert (=> b!1651421 (= e!1059005 e!1059006)))

(declare-fun c!268670 () Bool)

(declare-fun isEmpty!11256 (List!18286) Bool)

(declare-fun tail!2445 (List!18286) List!18286)

(assert (=> b!1651421 (= c!268670 (isEmpty!11256 (tail!2445 (map!3751 rules!1846 lambda!67664))))))

(declare-fun b!1651422 () Bool)

(declare-fun lt!612898 () Regex!4539)

(declare-fun isEmptyLang!74 (Regex!4539) Bool)

(assert (=> b!1651422 (= e!1059005 (isEmptyLang!74 lt!612898))))

(declare-fun b!1651423 () Bool)

(declare-fun e!1059007 () Regex!4539)

(assert (=> b!1651423 (= e!1059007 e!1059010)))

(declare-fun c!268667 () Bool)

(assert (=> b!1651423 (= c!268667 ((_ is Cons!18216) (map!3751 rules!1846 lambda!67664)))))

(declare-fun b!1651424 () Bool)

(declare-fun e!1059008 () Bool)

(assert (=> b!1651424 (= e!1059008 e!1059005)))

(declare-fun c!268669 () Bool)

(assert (=> b!1651424 (= c!268669 (isEmpty!11256 (map!3751 rules!1846 lambda!67664)))))

(declare-fun b!1651425 () Bool)

(declare-fun isUnion!74 (Regex!4539) Bool)

(assert (=> b!1651425 (= e!1059006 (isUnion!74 lt!612898))))

(declare-fun b!1651426 () Bool)

(assert (=> b!1651426 (= e!1059007 (h!23617 (map!3751 rules!1846 lambda!67664)))))

(assert (=> d!498082 e!1059008))

(declare-fun res!740109 () Bool)

(assert (=> d!498082 (=> (not res!740109) (not e!1059008))))

(assert (=> d!498082 (= res!740109 (validRegex!1808 lt!612898))))

(assert (=> d!498082 (= lt!612898 e!1059007)))

(declare-fun c!268668 () Bool)

(declare-fun e!1059009 () Bool)

(assert (=> d!498082 (= c!268668 e!1059009)))

(declare-fun res!740108 () Bool)

(assert (=> d!498082 (=> (not res!740108) (not e!1059009))))

(assert (=> d!498082 (= res!740108 ((_ is Cons!18216) (map!3751 rules!1846 lambda!67664)))))

(assert (=> d!498082 (forall!4149 (map!3751 rules!1846 lambda!67664) lambda!67703)))

(assert (=> d!498082 (= (generalisedUnion!274 (map!3751 rules!1846 lambda!67664)) lt!612898)))

(declare-fun b!1651420 () Bool)

(assert (=> b!1651420 (= e!1059009 (isEmpty!11256 (t!150853 (map!3751 rules!1846 lambda!67664))))))

(declare-fun b!1651427 () Bool)

(declare-fun head!3636 (List!18286) Regex!4539)

(assert (=> b!1651427 (= e!1059006 (= lt!612898 (head!3636 (map!3751 rules!1846 lambda!67664))))))

(declare-fun b!1651428 () Bool)

(assert (=> b!1651428 (= e!1059010 (Union!4539 (h!23617 (map!3751 rules!1846 lambda!67664)) (generalisedUnion!274 (t!150853 (map!3751 rules!1846 lambda!67664)))))))

(assert (= (and d!498082 res!740108) b!1651420))

(assert (= (and d!498082 c!268668) b!1651426))

(assert (= (and d!498082 (not c!268668)) b!1651423))

(assert (= (and b!1651423 c!268667) b!1651428))

(assert (= (and b!1651423 (not c!268667)) b!1651419))

(assert (= (and d!498082 res!740109) b!1651424))

(assert (= (and b!1651424 c!268669) b!1651422))

(assert (= (and b!1651424 (not c!268669)) b!1651421))

(assert (= (and b!1651421 c!268670) b!1651427))

(assert (= (and b!1651421 (not c!268670)) b!1651425))

(declare-fun m!2001231 () Bool)

(assert (=> b!1651425 m!2001231))

(declare-fun m!2001233 () Bool)

(assert (=> b!1651428 m!2001233))

(declare-fun m!2001235 () Bool)

(assert (=> b!1651420 m!2001235))

(declare-fun m!2001237 () Bool)

(assert (=> b!1651422 m!2001237))

(assert (=> b!1651421 m!1998891))

(declare-fun m!2001239 () Bool)

(assert (=> b!1651421 m!2001239))

(assert (=> b!1651421 m!2001239))

(declare-fun m!2001241 () Bool)

(assert (=> b!1651421 m!2001241))

(declare-fun m!2001243 () Bool)

(assert (=> d!498082 m!2001243))

(assert (=> d!498082 m!1998891))

(declare-fun m!2001245 () Bool)

(assert (=> d!498082 m!2001245))

(assert (=> b!1651424 m!1998891))

(declare-fun m!2001247 () Bool)

(assert (=> b!1651424 m!2001247))

(assert (=> b!1651427 m!1998891))

(declare-fun m!2001249 () Bool)

(assert (=> b!1651427 m!2001249))

(assert (=> d!497424 d!498082))

(declare-fun d!498090 () Bool)

(declare-fun lt!612907 () List!18286)

(declare-fun size!14511 (List!18286) Int)

(declare-fun size!14512 (List!18281) Int)

(assert (=> d!498090 (= (size!14511 lt!612907) (size!14512 rules!1846))))

(declare-fun e!1059021 () List!18286)

(assert (=> d!498090 (= lt!612907 e!1059021)))

(declare-fun c!268677 () Bool)

(assert (=> d!498090 (= c!268677 ((_ is Nil!18211) rules!1846))))

(assert (=> d!498090 (= (map!3751 rules!1846 lambda!67664) lt!612907)))

(declare-fun b!1651445 () Bool)

(assert (=> b!1651445 (= e!1059021 Nil!18216)))

(declare-fun b!1651446 () Bool)

(declare-fun $colon$colon!369 (List!18286 Regex!4539) List!18286)

(declare-fun dynLambda!8172 (Int Rule!6222) Regex!4539)

(assert (=> b!1651446 (= e!1059021 ($colon$colon!369 (map!3751 (t!150806 rules!1846) lambda!67664) (dynLambda!8172 lambda!67664 (h!23612 rules!1846))))))

(assert (= (and d!498090 c!268677) b!1651445))

(assert (= (and d!498090 (not c!268677)) b!1651446))

(declare-fun b_lambda!51897 () Bool)

(assert (=> (not b_lambda!51897) (not b!1651446)))

(declare-fun m!2001251 () Bool)

(assert (=> d!498090 m!2001251))

(declare-fun m!2001253 () Bool)

(assert (=> d!498090 m!2001253))

(declare-fun m!2001255 () Bool)

(assert (=> b!1651446 m!2001255))

(declare-fun m!2001257 () Bool)

(assert (=> b!1651446 m!2001257))

(assert (=> b!1651446 m!2001255))

(assert (=> b!1651446 m!2001257))

(declare-fun m!2001259 () Bool)

(assert (=> b!1651446 m!2001259))

(assert (=> d!497424 d!498090))

(declare-fun d!498092 () Bool)

(declare-fun res!740128 () Bool)

(declare-fun e!1059037 () Bool)

(assert (=> d!498092 (=> res!740128 e!1059037)))

(assert (=> d!498092 (= res!740128 ((_ is Nil!18212) tokens!457))))

(assert (=> d!498092 (= (forall!4146 tokens!457 lambda!67661) e!1059037)))

(declare-fun b!1651471 () Bool)

(declare-fun e!1059038 () Bool)

(assert (=> b!1651471 (= e!1059037 e!1059038)))

(declare-fun res!740129 () Bool)

(assert (=> b!1651471 (=> (not res!740129) (not e!1059038))))

(declare-fun dynLambda!8173 (Int Token!5988) Bool)

(assert (=> b!1651471 (= res!740129 (dynLambda!8173 lambda!67661 (h!23613 tokens!457)))))

(declare-fun b!1651472 () Bool)

(assert (=> b!1651472 (= e!1059038 (forall!4146 (t!150807 tokens!457) lambda!67661))))

(assert (= (and d!498092 (not res!740128)) b!1651471))

(assert (= (and b!1651471 res!740129) b!1651472))

(declare-fun b_lambda!51899 () Bool)

(assert (=> (not b_lambda!51899) (not b!1651471)))

(declare-fun m!2001273 () Bool)

(assert (=> b!1651471 m!2001273))

(declare-fun m!2001275 () Bool)

(assert (=> b!1651472 m!2001275))

(assert (=> d!497396 d!498092))

(assert (=> d!497396 d!497440))

(declare-fun b!1651476 () Bool)

(declare-fun e!1059040 () Bool)

(declare-fun lt!612912 () List!18279)

(assert (=> b!1651476 (= e!1059040 (or (not (= (_2!10345 (get!5302 lt!611619)) Nil!18209)) (= lt!612912 (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!611619)))))))))

(declare-fun b!1651473 () Bool)

(declare-fun e!1059039 () List!18279)

(assert (=> b!1651473 (= e!1059039 (_2!10345 (get!5302 lt!611619)))))

(declare-fun d!498098 () Bool)

(assert (=> d!498098 e!1059040))

(declare-fun res!740130 () Bool)

(assert (=> d!498098 (=> (not res!740130) (not e!1059040))))

(assert (=> d!498098 (= res!740130 (= (content!2529 lt!612912) ((_ map or) (content!2529 (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!611619))))) (content!2529 (_2!10345 (get!5302 lt!611619))))))))

(assert (=> d!498098 (= lt!612912 e!1059039)))

(declare-fun c!268683 () Bool)

(assert (=> d!498098 (= c!268683 ((_ is Nil!18209) (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!611619))))))))

(assert (=> d!498098 (= (++!4922 (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!611619)))) (_2!10345 (get!5302 lt!611619))) lt!612912)))

(declare-fun b!1651474 () Bool)

(assert (=> b!1651474 (= e!1059039 (Cons!18209 (h!23610 (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!611619))))) (++!4922 (t!150804 (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!611619))))) (_2!10345 (get!5302 lt!611619)))))))

(declare-fun b!1651475 () Bool)

(declare-fun res!740131 () Bool)

(assert (=> b!1651475 (=> (not res!740131) (not e!1059040))))

(assert (=> b!1651475 (= res!740131 (= (size!14501 lt!612912) (+ (size!14501 (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!611619))))) (size!14501 (_2!10345 (get!5302 lt!611619))))))))

(assert (= (and d!498098 c!268683) b!1651473))

(assert (= (and d!498098 (not c!268683)) b!1651474))

(assert (= (and d!498098 res!740130) b!1651475))

(assert (= (and b!1651475 res!740131) b!1651476))

(declare-fun m!2001285 () Bool)

(assert (=> d!498098 m!2001285))

(assert (=> d!498098 m!1997949))

(declare-fun m!2001289 () Bool)

(assert (=> d!498098 m!2001289))

(declare-fun m!2001291 () Bool)

(assert (=> d!498098 m!2001291))

(declare-fun m!2001293 () Bool)

(assert (=> b!1651474 m!2001293))

(declare-fun m!2001295 () Bool)

(assert (=> b!1651475 m!2001295))

(assert (=> b!1651475 m!1997949))

(declare-fun m!2001299 () Bool)

(assert (=> b!1651475 m!2001299))

(assert (=> b!1651475 m!1997971))

(assert (=> b!1649562 d!498098))

(assert (=> b!1649562 d!497608))

(assert (=> b!1649562 d!497610))

(assert (=> b!1649562 d!497614))

(declare-fun d!498100 () Bool)

(assert (=> d!498100 (= (list!7242 lt!611947) (list!7246 (c!268211 lt!611947)))))

(declare-fun bs!396556 () Bool)

(assert (= bs!396556 d!498100))

(declare-fun m!2001305 () Bool)

(assert (=> bs!396556 m!2001305))

(assert (=> b!1649762 d!498100))

(declare-fun d!498104 () Bool)

(assert (=> d!498104 (= (list!7242 (seqFromList!2162 (t!150807 (t!150807 tokens!457)))) (list!7246 (c!268211 (seqFromList!2162 (t!150807 (t!150807 tokens!457))))))))

(declare-fun bs!396557 () Bool)

(assert (= bs!396557 d!498104))

(assert (=> bs!396557 m!2001193))

(assert (=> b!1649762 d!498104))

(assert (=> b!1649964 d!497810))

(assert (=> b!1649964 d!497820))

(assert (=> b!1649964 d!497822))

(assert (=> b!1649964 d!497824))

(assert (=> b!1649964 d!497826))

(declare-fun d!498108 () Bool)

(assert (=> d!498108 (= (head!3631 lt!611596) (h!23610 lt!611596))))

(assert (=> b!1649733 d!498108))

(declare-fun d!498110 () Bool)

(assert (=> d!498110 (= (head!3631 lt!611593) (h!23610 lt!611593))))

(assert (=> b!1649733 d!498110))

(declare-fun d!498112 () Bool)

(declare-fun lt!612913 () Int)

(assert (=> d!498112 (= lt!612913 (size!14501 (list!7241 (_2!10343 lt!612187))))))

(assert (=> d!498112 (= lt!612913 (size!14510 (c!268209 (_2!10343 lt!612187))))))

(assert (=> d!498112 (= (size!14504 (_2!10343 lt!612187)) lt!612913)))

(declare-fun bs!396558 () Bool)

(assert (= bs!396558 d!498112))

(assert (=> bs!396558 m!1998923))

(assert (=> bs!396558 m!1998923))

(declare-fun m!2001315 () Bool)

(assert (=> bs!396558 m!2001315))

(declare-fun m!2001317 () Bool)

(assert (=> bs!396558 m!2001317))

(assert (=> b!1650022 d!498112))

(declare-fun d!498116 () Bool)

(declare-fun lt!612914 () Int)

(assert (=> d!498116 (= lt!612914 (size!14501 (list!7241 (seqFromList!2161 lt!611596))))))

(assert (=> d!498116 (= lt!612914 (size!14510 (c!268209 (seqFromList!2161 lt!611596))))))

(assert (=> d!498116 (= (size!14504 (seqFromList!2161 lt!611596)) lt!612914)))

(declare-fun bs!396559 () Bool)

(assert (= bs!396559 d!498116))

(assert (=> bs!396559 m!1997875))

(assert (=> bs!396559 m!1998919))

(assert (=> bs!396559 m!1998919))

(assert (=> bs!396559 m!1999627))

(declare-fun m!2001319 () Bool)

(assert (=> bs!396559 m!2001319))

(assert (=> b!1650022 d!498116))

(declare-fun d!498118 () Bool)

(declare-fun lt!612923 () C!9252)

(declare-fun contains!3180 (List!18279 C!9252) Bool)

(assert (=> d!498118 (contains!3180 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) lt!612923)))

(declare-fun e!1059057 () C!9252)

(assert (=> d!498118 (= lt!612923 e!1059057)))

(declare-fun c!268692 () Bool)

(assert (=> d!498118 (= c!268692 (= 0 0))))

(declare-fun e!1059058 () Bool)

(assert (=> d!498118 e!1059058))

(declare-fun res!740149 () Bool)

(assert (=> d!498118 (=> (not res!740149) (not e!1059058))))

(assert (=> d!498118 (= res!740149 (<= 0 0))))

(assert (=> d!498118 (= (apply!4807 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) 0) lt!612923)))

(declare-fun b!1651510 () Bool)

(assert (=> b!1651510 (= e!1059058 (< 0 (size!14501 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))))))

(declare-fun b!1651511 () Bool)

(assert (=> b!1651511 (= e!1059057 (head!3631 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457))))))))

(declare-fun b!1651512 () Bool)

(assert (=> b!1651512 (= e!1059057 (apply!4807 (tail!2444 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457))))) (- 0 1)))))

(assert (= (and d!498118 res!740149) b!1651510))

(assert (= (and d!498118 c!268692) b!1651511))

(assert (= (and d!498118 (not c!268692)) b!1651512))

(assert (=> d!498118 m!1998343))

(declare-fun m!2001337 () Bool)

(assert (=> d!498118 m!2001337))

(assert (=> b!1651510 m!1998343))

(assert (=> b!1651510 m!2000753))

(assert (=> b!1651511 m!1998343))

(declare-fun m!2001339 () Bool)

(assert (=> b!1651511 m!2001339))

(assert (=> b!1651512 m!1998343))

(declare-fun m!2001341 () Bool)

(assert (=> b!1651512 m!2001341))

(assert (=> b!1651512 m!2001341))

(declare-fun m!2001343 () Bool)

(assert (=> b!1651512 m!2001343))

(assert (=> d!497422 d!498118))

(declare-fun d!498126 () Bool)

(assert (=> d!498126 (= (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) (list!7244 (c!268209 (charsOf!1860 (h!23613 (t!150807 tokens!457))))))))

(declare-fun bs!396562 () Bool)

(assert (= bs!396562 d!498126))

(declare-fun m!2001345 () Bool)

(assert (=> bs!396562 m!2001345))

(assert (=> d!497422 d!498126))

(declare-fun b!1651552 () Bool)

(declare-fun e!1059081 () C!9252)

(declare-fun call!106025 () C!9252)

(assert (=> b!1651552 (= e!1059081 call!106025)))

(declare-fun b!1651553 () Bool)

(declare-fun e!1059083 () Bool)

(assert (=> b!1651553 (= e!1059083 (< 0 (size!14510 (c!268209 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))))))

(declare-fun b!1651554 () Bool)

(assert (=> b!1651554 (= e!1059081 call!106025)))

(declare-fun bm!106020 () Bool)

(declare-fun c!268704 () Bool)

(declare-fun c!268703 () Bool)

(assert (=> bm!106020 (= c!268704 c!268703)))

(declare-fun e!1059080 () Int)

(assert (=> bm!106020 (= call!106025 (apply!4808 (ite c!268703 (left!14593 (c!268209 (charsOf!1860 (h!23613 (t!150807 tokens!457))))) (right!14923 (c!268209 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))) e!1059080))))

(declare-fun b!1651555 () Bool)

(assert (=> b!1651555 (= e!1059080 0)))

(declare-fun b!1651556 () Bool)

(declare-fun e!1059082 () C!9252)

(assert (=> b!1651556 (= e!1059082 (apply!4812 (xs!8906 (c!268209 (charsOf!1860 (h!23613 (t!150807 tokens!457))))) 0))))

(declare-fun b!1651557 () Bool)

(assert (=> b!1651557 (= e!1059080 (- 0 (size!14510 (left!14593 (c!268209 (charsOf!1860 (h!23613 (t!150807 tokens!457))))))))))

(declare-fun d!498128 () Bool)

(declare-fun lt!612959 () C!9252)

(assert (=> d!498128 (= lt!612959 (apply!4807 (list!7244 (c!268209 (charsOf!1860 (h!23613 (t!150807 tokens!457))))) 0))))

(assert (=> d!498128 (= lt!612959 e!1059082)))

(declare-fun c!268705 () Bool)

(assert (=> d!498128 (= c!268705 ((_ is Leaf!8896) (c!268209 (charsOf!1860 (h!23613 (t!150807 tokens!457))))))))

(assert (=> d!498128 e!1059083))

(declare-fun res!740168 () Bool)

(assert (=> d!498128 (=> (not res!740168) (not e!1059083))))

(assert (=> d!498128 (= res!740168 (<= 0 0))))

(assert (=> d!498128 (= (apply!4808 (c!268209 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) 0) lt!612959)))

(declare-fun b!1651558 () Bool)

(assert (=> b!1651558 (= e!1059082 e!1059081)))

(declare-fun lt!612960 () Bool)

(declare-fun appendIndex!213 (List!18279 List!18279 Int) Bool)

(assert (=> b!1651558 (= lt!612960 (appendIndex!213 (list!7244 (left!14593 (c!268209 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))) (list!7244 (right!14923 (c!268209 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))) 0))))

(assert (=> b!1651558 (= c!268703 (< 0 (size!14510 (left!14593 (c!268209 (charsOf!1860 (h!23613 (t!150807 tokens!457))))))))))

(assert (= (and d!498128 res!740168) b!1651553))

(assert (= (and d!498128 c!268705) b!1651556))

(assert (= (and d!498128 (not c!268705)) b!1651558))

(assert (= (and b!1651558 c!268703) b!1651554))

(assert (= (and b!1651558 (not c!268703)) b!1651552))

(assert (= (or b!1651554 b!1651552) bm!106020))

(assert (= (and bm!106020 c!268704) b!1651555))

(assert (= (and bm!106020 (not c!268704)) b!1651557))

(assert (=> d!498128 m!2001345))

(assert (=> d!498128 m!2001345))

(declare-fun m!2001509 () Bool)

(assert (=> d!498128 m!2001509))

(declare-fun m!2001513 () Bool)

(assert (=> b!1651558 m!2001513))

(declare-fun m!2001515 () Bool)

(assert (=> b!1651558 m!2001515))

(assert (=> b!1651558 m!2001513))

(assert (=> b!1651558 m!2001515))

(declare-fun m!2001519 () Bool)

(assert (=> b!1651558 m!2001519))

(declare-fun m!2001521 () Bool)

(assert (=> b!1651558 m!2001521))

(declare-fun m!2001523 () Bool)

(assert (=> b!1651556 m!2001523))

(assert (=> b!1651553 m!2000755))

(declare-fun m!2001525 () Bool)

(assert (=> bm!106020 m!2001525))

(assert (=> b!1651557 m!2001521))

(assert (=> d!497422 d!498128))

(declare-fun d!498166 () Bool)

(declare-fun c!268706 () Bool)

(assert (=> d!498166 (= c!268706 ((_ is Empty!6070) (c!268209 lt!611602)))))

(declare-fun e!1059084 () List!18279)

(assert (=> d!498166 (= (list!7244 (c!268209 lt!611602)) e!1059084)))

(declare-fun b!1651560 () Bool)

(declare-fun e!1059085 () List!18279)

(assert (=> b!1651560 (= e!1059084 e!1059085)))

(declare-fun c!268707 () Bool)

(assert (=> b!1651560 (= c!268707 ((_ is Leaf!8896) (c!268209 lt!611602)))))

(declare-fun b!1651559 () Bool)

(assert (=> b!1651559 (= e!1059084 Nil!18209)))

(declare-fun b!1651562 () Bool)

(assert (=> b!1651562 (= e!1059085 (++!4922 (list!7244 (left!14593 (c!268209 lt!611602))) (list!7244 (right!14923 (c!268209 lt!611602)))))))

(declare-fun b!1651561 () Bool)

(assert (=> b!1651561 (= e!1059085 (list!7249 (xs!8906 (c!268209 lt!611602))))))

(assert (= (and d!498166 c!268706) b!1651559))

(assert (= (and d!498166 (not c!268706)) b!1651560))

(assert (= (and b!1651560 c!268707) b!1651561))

(assert (= (and b!1651560 (not c!268707)) b!1651562))

(declare-fun m!2001543 () Bool)

(assert (=> b!1651562 m!2001543))

(declare-fun m!2001547 () Bool)

(assert (=> b!1651562 m!2001547))

(assert (=> b!1651562 m!2001543))

(assert (=> b!1651562 m!2001547))

(declare-fun m!2001551 () Bool)

(assert (=> b!1651562 m!2001551))

(declare-fun m!2001555 () Bool)

(assert (=> b!1651561 m!2001555))

(assert (=> d!497380 d!498166))

(declare-fun d!498168 () Bool)

(declare-fun e!1059086 () Bool)

(assert (=> d!498168 e!1059086))

(declare-fun res!740169 () Bool)

(assert (=> d!498168 (=> (not res!740169) (not e!1059086))))

(declare-fun lt!612961 () BalanceConc!12084)

(assert (=> d!498168 (= res!740169 (= (list!7241 lt!612961) (originalCharacters!4025 (h!23613 tokens!457))))))

(assert (=> d!498168 (= lt!612961 (BalanceConc!12085 (fromList!398 (originalCharacters!4025 (h!23613 tokens!457)))))))

(assert (=> d!498168 (= (fromListB!966 (originalCharacters!4025 (h!23613 tokens!457))) lt!612961)))

(declare-fun b!1651563 () Bool)

(assert (=> b!1651563 (= e!1059086 (isBalanced!1862 (fromList!398 (originalCharacters!4025 (h!23613 tokens!457)))))))

(assert (= (and d!498168 res!740169) b!1651563))

(declare-fun m!2001559 () Bool)

(assert (=> d!498168 m!2001559))

(declare-fun m!2001561 () Bool)

(assert (=> d!498168 m!2001561))

(assert (=> b!1651563 m!2001561))

(assert (=> b!1651563 m!2001561))

(declare-fun m!2001565 () Bool)

(assert (=> b!1651563 m!2001565))

(assert (=> d!497324 d!498168))

(declare-fun b!1651564 () Bool)

(declare-fun e!1059089 () Bool)

(declare-fun lt!612966 () Option!3458)

(assert (=> b!1651564 (= e!1059089 (= (size!14498 (_1!10345 (get!5302 lt!612966))) (size!14501 (originalCharacters!4025 (_1!10345 (get!5302 lt!612966))))))))

(declare-fun b!1651565 () Bool)

(declare-fun e!1059090 () Option!3458)

(declare-fun lt!612964 () tuple2!17896)

(assert (=> b!1651565 (= e!1059090 (Some!3457 (tuple2!17887 (Token!5989 (apply!4804 (transformation!3211 (h!23612 rules!1846)) (seqFromList!2161 (_1!10350 lt!612964))) (h!23612 rules!1846) (size!14504 (seqFromList!2161 (_1!10350 lt!612964))) (_1!10350 lt!612964)) (_2!10350 lt!612964))))))

(declare-fun lt!612963 () Unit!30315)

(assert (=> b!1651565 (= lt!612963 (longestMatchIsAcceptedByMatchOrIsEmpty!351 (regex!3211 (h!23612 rules!1846)) lt!611579))))

(declare-fun res!740173 () Bool)

(assert (=> b!1651565 (= res!740173 (isEmpty!11246 (_1!10350 (findLongestMatchInner!367 (regex!3211 (h!23612 rules!1846)) Nil!18209 (size!14501 Nil!18209) lt!611579 lt!611579 (size!14501 lt!611579)))))))

(declare-fun e!1059088 () Bool)

(assert (=> b!1651565 (=> res!740173 e!1059088)))

(assert (=> b!1651565 e!1059088))

(declare-fun lt!612965 () Unit!30315)

(assert (=> b!1651565 (= lt!612965 lt!612963)))

(declare-fun lt!612962 () Unit!30315)

(assert (=> b!1651565 (= lt!612962 (lemmaSemiInverse!417 (transformation!3211 (h!23612 rules!1846)) (seqFromList!2161 (_1!10350 lt!612964))))))

(declare-fun b!1651566 () Bool)

(declare-fun res!740176 () Bool)

(assert (=> b!1651566 (=> (not res!740176) (not e!1059089))))

(assert (=> b!1651566 (= res!740176 (< (size!14501 (_2!10345 (get!5302 lt!612966))) (size!14501 lt!611579)))))

(declare-fun b!1651567 () Bool)

(declare-fun res!740171 () Bool)

(assert (=> b!1651567 (=> (not res!740171) (not e!1059089))))

(assert (=> b!1651567 (= res!740171 (= (++!4922 (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!612966)))) (_2!10345 (get!5302 lt!612966))) lt!611579))))

(declare-fun b!1651568 () Bool)

(assert (=> b!1651568 (= e!1059088 (matchR!2032 (regex!3211 (h!23612 rules!1846)) (_1!10350 (findLongestMatchInner!367 (regex!3211 (h!23612 rules!1846)) Nil!18209 (size!14501 Nil!18209) lt!611579 lt!611579 (size!14501 lt!611579)))))))

(declare-fun b!1651569 () Bool)

(declare-fun e!1059087 () Bool)

(assert (=> b!1651569 (= e!1059087 e!1059089)))

(declare-fun res!740170 () Bool)

(assert (=> b!1651569 (=> (not res!740170) (not e!1059089))))

(assert (=> b!1651569 (= res!740170 (matchR!2032 (regex!3211 (h!23612 rules!1846)) (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!612966))))))))

(declare-fun b!1651570 () Bool)

(assert (=> b!1651570 (= e!1059090 None!3457)))

(declare-fun b!1651571 () Bool)

(declare-fun res!740174 () Bool)

(assert (=> b!1651571 (=> (not res!740174) (not e!1059089))))

(assert (=> b!1651571 (= res!740174 (= (rule!5069 (_1!10345 (get!5302 lt!612966))) (h!23612 rules!1846)))))

(declare-fun d!498170 () Bool)

(assert (=> d!498170 e!1059087))

(declare-fun res!740172 () Bool)

(assert (=> d!498170 (=> res!740172 e!1059087)))

(assert (=> d!498170 (= res!740172 (isEmpty!11244 lt!612966))))

(assert (=> d!498170 (= lt!612966 e!1059090)))

(declare-fun c!268708 () Bool)

(assert (=> d!498170 (= c!268708 (isEmpty!11246 (_1!10350 lt!612964)))))

(assert (=> d!498170 (= lt!612964 (findLongestMatch!294 (regex!3211 (h!23612 rules!1846)) lt!611579))))

(assert (=> d!498170 (ruleValid!755 thiss!17113 (h!23612 rules!1846))))

(assert (=> d!498170 (= (maxPrefixOneRule!811 thiss!17113 (h!23612 rules!1846) lt!611579) lt!612966)))

(declare-fun b!1651572 () Bool)

(declare-fun res!740175 () Bool)

(assert (=> b!1651572 (=> (not res!740175) (not e!1059089))))

(assert (=> b!1651572 (= res!740175 (= (value!101186 (_1!10345 (get!5302 lt!612966))) (apply!4804 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!612966)))) (seqFromList!2161 (originalCharacters!4025 (_1!10345 (get!5302 lt!612966)))))))))

(assert (= (and d!498170 c!268708) b!1651570))

(assert (= (and d!498170 (not c!268708)) b!1651565))

(assert (= (and b!1651565 (not res!740173)) b!1651568))

(assert (= (and d!498170 (not res!740172)) b!1651569))

(assert (= (and b!1651569 res!740170) b!1651567))

(assert (= (and b!1651567 res!740171) b!1651566))

(assert (= (and b!1651566 res!740176) b!1651571))

(assert (= (and b!1651571 res!740174) b!1651572))

(assert (= (and b!1651572 res!740175) b!1651564))

(declare-fun m!2001577 () Bool)

(assert (=> d!498170 m!2001577))

(declare-fun m!2001579 () Bool)

(assert (=> d!498170 m!2001579))

(declare-fun m!2001581 () Bool)

(assert (=> d!498170 m!2001581))

(declare-fun m!2001583 () Bool)

(assert (=> d!498170 m!2001583))

(declare-fun m!2001585 () Bool)

(assert (=> b!1651565 m!2001585))

(assert (=> b!1651565 m!2000151))

(assert (=> b!1651565 m!1997973))

(declare-fun m!2001587 () Bool)

(assert (=> b!1651565 m!2001587))

(declare-fun m!2001589 () Bool)

(assert (=> b!1651565 m!2001589))

(assert (=> b!1651565 m!2001589))

(declare-fun m!2001591 () Bool)

(assert (=> b!1651565 m!2001591))

(declare-fun m!2001593 () Bool)

(assert (=> b!1651565 m!2001593))

(assert (=> b!1651565 m!2001589))

(declare-fun m!2001595 () Bool)

(assert (=> b!1651565 m!2001595))

(assert (=> b!1651565 m!1997973))

(assert (=> b!1651565 m!2000151))

(assert (=> b!1651565 m!2001589))

(declare-fun m!2001597 () Bool)

(assert (=> b!1651565 m!2001597))

(declare-fun m!2001599 () Bool)

(assert (=> b!1651564 m!2001599))

(declare-fun m!2001601 () Bool)

(assert (=> b!1651564 m!2001601))

(assert (=> b!1651566 m!2001599))

(declare-fun m!2001603 () Bool)

(assert (=> b!1651566 m!2001603))

(assert (=> b!1651566 m!1997973))

(assert (=> b!1651571 m!2001599))

(assert (=> b!1651568 m!2000151))

(assert (=> b!1651568 m!1997973))

(assert (=> b!1651568 m!2000151))

(assert (=> b!1651568 m!1997973))

(assert (=> b!1651568 m!2001587))

(declare-fun m!2001605 () Bool)

(assert (=> b!1651568 m!2001605))

(assert (=> b!1651567 m!2001599))

(declare-fun m!2001607 () Bool)

(assert (=> b!1651567 m!2001607))

(assert (=> b!1651567 m!2001607))

(declare-fun m!2001609 () Bool)

(assert (=> b!1651567 m!2001609))

(assert (=> b!1651567 m!2001609))

(declare-fun m!2001611 () Bool)

(assert (=> b!1651567 m!2001611))

(assert (=> b!1651572 m!2001599))

(declare-fun m!2001613 () Bool)

(assert (=> b!1651572 m!2001613))

(assert (=> b!1651572 m!2001613))

(declare-fun m!2001615 () Bool)

(assert (=> b!1651572 m!2001615))

(assert (=> b!1651569 m!2001599))

(assert (=> b!1651569 m!2001607))

(assert (=> b!1651569 m!2001607))

(assert (=> b!1651569 m!2001609))

(assert (=> b!1651569 m!2001609))

(declare-fun m!2001617 () Bool)

(assert (=> b!1651569 m!2001617))

(assert (=> bm!105834 d!498170))

(declare-fun d!498178 () Bool)

(assert (=> d!498178 (isPrefix!1469 lt!612079 (++!4922 lt!611596 lt!611591))))

(declare-fun lt!612970 () Unit!30315)

(declare-fun choose!9924 (List!18279 List!18279 List!18279) Unit!30315)

(assert (=> d!498178 (= lt!612970 (choose!9924 lt!612079 lt!611596 lt!611591))))

(assert (=> d!498178 (isPrefix!1469 lt!612079 lt!611596)))

(assert (=> d!498178 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!202 lt!612079 lt!611596 lt!611591) lt!612970)))

(declare-fun bs!396572 () Bool)

(assert (= bs!396572 d!498178))

(assert (=> bs!396572 m!1997899))

(assert (=> bs!396572 m!1997899))

(assert (=> bs!396572 m!1998679))

(declare-fun m!2001619 () Bool)

(assert (=> bs!396572 m!2001619))

(declare-fun m!2001621 () Bool)

(assert (=> bs!396572 m!2001621))

(assert (=> d!497342 d!498178))

(declare-fun b!1651574 () Bool)

(declare-fun e!1059094 () Bool)

(declare-fun e!1059093 () Bool)

(assert (=> b!1651574 (= e!1059094 e!1059093)))

(declare-fun res!740178 () Bool)

(assert (=> b!1651574 (=> (not res!740178) (not e!1059093))))

(assert (=> b!1651574 (= res!740178 (not ((_ is Nil!18209) (++!4922 lt!612086 lt!612089))))))

(declare-fun b!1651576 () Bool)

(assert (=> b!1651576 (= e!1059093 (isPrefix!1469 (tail!2444 lt!612086) (tail!2444 (++!4922 lt!612086 lt!612089))))))

(declare-fun b!1651575 () Bool)

(declare-fun res!740179 () Bool)

(assert (=> b!1651575 (=> (not res!740179) (not e!1059093))))

(assert (=> b!1651575 (= res!740179 (= (head!3631 lt!612086) (head!3631 (++!4922 lt!612086 lt!612089))))))

(declare-fun b!1651577 () Bool)

(declare-fun e!1059092 () Bool)

(assert (=> b!1651577 (= e!1059092 (>= (size!14501 (++!4922 lt!612086 lt!612089)) (size!14501 lt!612086)))))

(declare-fun d!498180 () Bool)

(assert (=> d!498180 e!1059092))

(declare-fun res!740181 () Bool)

(assert (=> d!498180 (=> res!740181 e!1059092)))

(declare-fun lt!612971 () Bool)

(assert (=> d!498180 (= res!740181 (not lt!612971))))

(assert (=> d!498180 (= lt!612971 e!1059094)))

(declare-fun res!740180 () Bool)

(assert (=> d!498180 (=> res!740180 e!1059094)))

(assert (=> d!498180 (= res!740180 ((_ is Nil!18209) lt!612086))))

(assert (=> d!498180 (= (isPrefix!1469 lt!612086 (++!4922 lt!612086 lt!612089)) lt!612971)))

(assert (= (and d!498180 (not res!740180)) b!1651574))

(assert (= (and b!1651574 res!740178) b!1651575))

(assert (= (and b!1651575 res!740179) b!1651576))

(assert (= (and d!498180 (not res!740181)) b!1651577))

(declare-fun m!2001623 () Bool)

(assert (=> b!1651576 m!2001623))

(assert (=> b!1651576 m!1998661))

(declare-fun m!2001625 () Bool)

(assert (=> b!1651576 m!2001625))

(assert (=> b!1651576 m!2001623))

(assert (=> b!1651576 m!2001625))

(declare-fun m!2001627 () Bool)

(assert (=> b!1651576 m!2001627))

(declare-fun m!2001629 () Bool)

(assert (=> b!1651575 m!2001629))

(assert (=> b!1651575 m!1998661))

(declare-fun m!2001631 () Bool)

(assert (=> b!1651575 m!2001631))

(assert (=> b!1651577 m!1998661))

(declare-fun m!2001633 () Bool)

(assert (=> b!1651577 m!2001633))

(declare-fun m!2001635 () Bool)

(assert (=> b!1651577 m!2001635))

(assert (=> d!497342 d!498180))

(assert (=> d!497342 d!497702))

(declare-fun b!1651578 () Bool)

(declare-fun res!740184 () Bool)

(declare-fun e!1059095 () Bool)

(assert (=> b!1651578 (=> (not res!740184) (not e!1059095))))

(declare-fun lt!612972 () Option!3458)

(assert (=> b!1651578 (= res!740184 (= (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!612972)))) (originalCharacters!4025 (_1!10345 (get!5302 lt!612972)))))))

(declare-fun d!498182 () Bool)

(declare-fun e!1059096 () Bool)

(assert (=> d!498182 e!1059096))

(declare-fun res!740188 () Bool)

(assert (=> d!498182 (=> res!740188 e!1059096)))

(assert (=> d!498182 (= res!740188 (isEmpty!11244 lt!612972))))

(declare-fun e!1059097 () Option!3458)

(assert (=> d!498182 (= lt!612972 e!1059097)))

(declare-fun c!268709 () Bool)

(assert (=> d!498182 (= c!268709 (and ((_ is Cons!18211) rules!1846) ((_ is Nil!18211) (t!150806 rules!1846))))))

(declare-fun lt!612976 () Unit!30315)

(declare-fun lt!612975 () Unit!30315)

(assert (=> d!498182 (= lt!612976 lt!612975)))

(assert (=> d!498182 (isPrefix!1469 (++!4922 lt!611596 lt!611591) (++!4922 lt!611596 lt!611591))))

(assert (=> d!498182 (= lt!612975 (lemmaIsPrefixRefl!995 (++!4922 lt!611596 lt!611591) (++!4922 lt!611596 lt!611591)))))

(assert (=> d!498182 (rulesValidInductive!1017 thiss!17113 rules!1846)))

(assert (=> d!498182 (= (maxPrefix!1402 thiss!17113 rules!1846 (++!4922 lt!611596 lt!611591)) lt!612972)))

(declare-fun b!1651579 () Bool)

(declare-fun res!740186 () Bool)

(assert (=> b!1651579 (=> (not res!740186) (not e!1059095))))

(assert (=> b!1651579 (= res!740186 (< (size!14501 (_2!10345 (get!5302 lt!612972))) (size!14501 (++!4922 lt!611596 lt!611591))))))

(declare-fun b!1651580 () Bool)

(declare-fun res!740187 () Bool)

(assert (=> b!1651580 (=> (not res!740187) (not e!1059095))))

(assert (=> b!1651580 (= res!740187 (= (++!4922 (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!612972)))) (_2!10345 (get!5302 lt!612972))) (++!4922 lt!611596 lt!611591)))))

(declare-fun b!1651581 () Bool)

(assert (=> b!1651581 (= e!1059095 (contains!3174 rules!1846 (rule!5069 (_1!10345 (get!5302 lt!612972)))))))

(declare-fun b!1651582 () Bool)

(declare-fun res!740185 () Bool)

(assert (=> b!1651582 (=> (not res!740185) (not e!1059095))))

(assert (=> b!1651582 (= res!740185 (matchR!2032 (regex!3211 (rule!5069 (_1!10345 (get!5302 lt!612972)))) (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!612972))))))))

(declare-fun b!1651583 () Bool)

(assert (=> b!1651583 (= e!1059096 e!1059095)))

(declare-fun res!740183 () Bool)

(assert (=> b!1651583 (=> (not res!740183) (not e!1059095))))

(assert (=> b!1651583 (= res!740183 (isDefined!2813 lt!612972))))

(declare-fun bm!106021 () Bool)

(declare-fun call!106026 () Option!3458)

(assert (=> bm!106021 (= call!106026 (maxPrefixOneRule!811 thiss!17113 (h!23612 rules!1846) (++!4922 lt!611596 lt!611591)))))

(declare-fun b!1651584 () Bool)

(assert (=> b!1651584 (= e!1059097 call!106026)))

(declare-fun b!1651585 () Bool)

(declare-fun lt!612973 () Option!3458)

(declare-fun lt!612974 () Option!3458)

(assert (=> b!1651585 (= e!1059097 (ite (and ((_ is None!3457) lt!612973) ((_ is None!3457) lt!612974)) None!3457 (ite ((_ is None!3457) lt!612974) lt!612973 (ite ((_ is None!3457) lt!612973) lt!612974 (ite (>= (size!14498 (_1!10345 (v!24626 lt!612973))) (size!14498 (_1!10345 (v!24626 lt!612974)))) lt!612973 lt!612974)))))))

(assert (=> b!1651585 (= lt!612973 call!106026)))

(assert (=> b!1651585 (= lt!612974 (maxPrefix!1402 thiss!17113 (t!150806 rules!1846) (++!4922 lt!611596 lt!611591)))))

(declare-fun b!1651586 () Bool)

(declare-fun res!740182 () Bool)

(assert (=> b!1651586 (=> (not res!740182) (not e!1059095))))

(assert (=> b!1651586 (= res!740182 (= (value!101186 (_1!10345 (get!5302 lt!612972))) (apply!4804 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!612972)))) (seqFromList!2161 (originalCharacters!4025 (_1!10345 (get!5302 lt!612972)))))))))

(assert (= (and d!498182 c!268709) b!1651584))

(assert (= (and d!498182 (not c!268709)) b!1651585))

(assert (= (or b!1651584 b!1651585) bm!106021))

(assert (= (and d!498182 (not res!740188)) b!1651583))

(assert (= (and b!1651583 res!740183) b!1651578))

(assert (= (and b!1651578 res!740184) b!1651579))

(assert (= (and b!1651579 res!740186) b!1651580))

(assert (= (and b!1651580 res!740187) b!1651586))

(assert (= (and b!1651586 res!740182) b!1651582))

(assert (= (and b!1651582 res!740185) b!1651581))

(declare-fun m!2001637 () Bool)

(assert (=> b!1651580 m!2001637))

(declare-fun m!2001639 () Bool)

(assert (=> b!1651580 m!2001639))

(assert (=> b!1651580 m!2001639))

(declare-fun m!2001641 () Bool)

(assert (=> b!1651580 m!2001641))

(assert (=> b!1651580 m!2001641))

(declare-fun m!2001643 () Bool)

(assert (=> b!1651580 m!2001643))

(assert (=> b!1651582 m!2001637))

(assert (=> b!1651582 m!2001639))

(assert (=> b!1651582 m!2001639))

(assert (=> b!1651582 m!2001641))

(assert (=> b!1651582 m!2001641))

(declare-fun m!2001645 () Bool)

(assert (=> b!1651582 m!2001645))

(declare-fun m!2001647 () Bool)

(assert (=> d!498182 m!2001647))

(assert (=> d!498182 m!1997899))

(assert (=> d!498182 m!1997899))

(declare-fun m!2001649 () Bool)

(assert (=> d!498182 m!2001649))

(assert (=> d!498182 m!1997899))

(assert (=> d!498182 m!1997899))

(declare-fun m!2001651 () Bool)

(assert (=> d!498182 m!2001651))

(assert (=> d!498182 m!1997961))

(assert (=> b!1651581 m!2001637))

(declare-fun m!2001653 () Bool)

(assert (=> b!1651581 m!2001653))

(assert (=> b!1651578 m!2001637))

(assert (=> b!1651578 m!2001639))

(assert (=> b!1651578 m!2001639))

(assert (=> b!1651578 m!2001641))

(assert (=> b!1651585 m!1997899))

(declare-fun m!2001655 () Bool)

(assert (=> b!1651585 m!2001655))

(assert (=> b!1651586 m!2001637))

(declare-fun m!2001657 () Bool)

(assert (=> b!1651586 m!2001657))

(assert (=> b!1651586 m!2001657))

(declare-fun m!2001659 () Bool)

(assert (=> b!1651586 m!2001659))

(assert (=> b!1651579 m!2001637))

(declare-fun m!2001661 () Bool)

(assert (=> b!1651579 m!2001661))

(assert (=> b!1651579 m!1997899))

(assert (=> b!1651579 m!2000685))

(assert (=> bm!106021 m!1997899))

(declare-fun m!2001663 () Bool)

(assert (=> bm!106021 m!2001663))

(declare-fun m!2001665 () Bool)

(assert (=> b!1651583 m!2001665))

(assert (=> d!497342 d!498182))

(declare-fun d!498184 () Bool)

(assert (=> d!498184 (= (isDefined!2813 (maxPrefix!1402 thiss!17113 rules!1846 (++!4922 lt!611596 lt!611591))) (not (isEmpty!11244 (maxPrefix!1402 thiss!17113 rules!1846 (++!4922 lt!611596 lt!611591)))))))

(declare-fun bs!396573 () Bool)

(assert (= bs!396573 d!498184))

(assert (=> bs!396573 m!1998669))

(assert (=> bs!396573 m!1998681))

(assert (=> d!497342 d!498184))

(declare-fun d!498186 () Bool)

(declare-fun e!1059100 () Bool)

(assert (=> d!498186 e!1059100))

(declare-fun res!740193 () Bool)

(assert (=> d!498186 (=> (not res!740193) (not e!1059100))))

(assert (=> d!498186 (= res!740193 (isDefined!2815 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!612092)))))))

(declare-fun lt!612979 () Unit!30315)

(declare-fun choose!9925 (LexerInterface!2840 List!18281 List!18279 Token!5988) Unit!30315)

(assert (=> d!498186 (= lt!612979 (choose!9925 thiss!17113 rules!1846 lt!611596 lt!612092))))

(assert (=> d!498186 (rulesInvariant!2509 thiss!17113 rules!1846)))

(assert (=> d!498186 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!316 thiss!17113 rules!1846 lt!611596 lt!612092) lt!612979)))

(declare-fun b!1651591 () Bool)

(declare-fun res!740194 () Bool)

(assert (=> b!1651591 (=> (not res!740194) (not e!1059100))))

(assert (=> b!1651591 (= res!740194 (matchR!2032 (regex!3211 (get!5304 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!612092))))) (list!7241 (charsOf!1860 lt!612092))))))

(declare-fun b!1651592 () Bool)

(assert (=> b!1651592 (= e!1059100 (= (rule!5069 lt!612092) (get!5304 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!612092))))))))

(assert (= (and d!498186 res!740193) b!1651591))

(assert (= (and b!1651591 res!740194) b!1651592))

(assert (=> d!498186 m!1998639))

(assert (=> d!498186 m!1998639))

(assert (=> d!498186 m!1998665))

(declare-fun m!2001667 () Bool)

(assert (=> d!498186 m!2001667))

(assert (=> d!498186 m!1997817))

(assert (=> b!1651591 m!1998639))

(assert (=> b!1651591 m!1998641))

(assert (=> b!1651591 m!1998645))

(assert (=> b!1651591 m!1998647))

(assert (=> b!1651591 m!1998685))

(assert (=> b!1651591 m!1998645))

(assert (=> b!1651591 m!1998647))

(assert (=> b!1651591 m!1998639))

(assert (=> b!1651592 m!1998639))

(assert (=> b!1651592 m!1998639))

(assert (=> b!1651592 m!1998641))

(assert (=> d!497342 d!498186))

(declare-fun d!498188 () Bool)

(assert (=> d!498188 (isPrefix!1469 lt!612086 (++!4922 lt!612086 lt!612089))))

(declare-fun lt!612980 () Unit!30315)

(assert (=> d!498188 (= lt!612980 (choose!9904 lt!612086 lt!612089))))

(assert (=> d!498188 (= (lemmaConcatTwoListThenFirstIsPrefix!994 lt!612086 lt!612089) lt!612980)))

(declare-fun bs!396574 () Bool)

(assert (= bs!396574 d!498188))

(assert (=> bs!396574 m!1998661))

(assert (=> bs!396574 m!1998661))

(assert (=> bs!396574 m!1998663))

(declare-fun m!2001669 () Bool)

(assert (=> bs!396574 m!2001669))

(assert (=> d!497342 d!498188))

(declare-fun d!498190 () Bool)

(assert (=> d!498190 (= (head!3634 (list!7242 (_1!10343 (lex!1324 thiss!17113 rules!1846 (seqFromList!2161 lt!611596))))) (h!23613 (list!7242 (_1!10343 (lex!1324 thiss!17113 rules!1846 (seqFromList!2161 lt!611596))))))))

(assert (=> d!497342 d!498190))

(declare-fun b!1651593 () Bool)

(declare-fun e!1059103 () Bool)

(declare-fun e!1059102 () Bool)

(assert (=> b!1651593 (= e!1059103 e!1059102)))

(declare-fun res!740195 () Bool)

(assert (=> b!1651593 (=> (not res!740195) (not e!1059102))))

(assert (=> b!1651593 (= res!740195 (not ((_ is Nil!18209) (++!4922 lt!611596 lt!611591))))))

(declare-fun b!1651595 () Bool)

(assert (=> b!1651595 (= e!1059102 (isPrefix!1469 (tail!2444 lt!612079) (tail!2444 (++!4922 lt!611596 lt!611591))))))

(declare-fun b!1651594 () Bool)

(declare-fun res!740196 () Bool)

(assert (=> b!1651594 (=> (not res!740196) (not e!1059102))))

(assert (=> b!1651594 (= res!740196 (= (head!3631 lt!612079) (head!3631 (++!4922 lt!611596 lt!611591))))))

(declare-fun b!1651596 () Bool)

(declare-fun e!1059101 () Bool)

(assert (=> b!1651596 (= e!1059101 (>= (size!14501 (++!4922 lt!611596 lt!611591)) (size!14501 lt!612079)))))

(declare-fun d!498192 () Bool)

(assert (=> d!498192 e!1059101))

(declare-fun res!740198 () Bool)

(assert (=> d!498192 (=> res!740198 e!1059101)))

(declare-fun lt!612981 () Bool)

(assert (=> d!498192 (= res!740198 (not lt!612981))))

(assert (=> d!498192 (= lt!612981 e!1059103)))

(declare-fun res!740197 () Bool)

(assert (=> d!498192 (=> res!740197 e!1059103)))

(assert (=> d!498192 (= res!740197 ((_ is Nil!18209) lt!612079))))

(assert (=> d!498192 (= (isPrefix!1469 lt!612079 (++!4922 lt!611596 lt!611591)) lt!612981)))

(assert (= (and d!498192 (not res!740197)) b!1651593))

(assert (= (and b!1651593 res!740195) b!1651594))

(assert (= (and b!1651594 res!740196) b!1651595))

(assert (= (and d!498192 (not res!740198)) b!1651596))

(declare-fun m!2001671 () Bool)

(assert (=> b!1651595 m!2001671))

(assert (=> b!1651595 m!1997899))

(assert (=> b!1651595 m!2000679))

(assert (=> b!1651595 m!2001671))

(assert (=> b!1651595 m!2000679))

(declare-fun m!2001673 () Bool)

(assert (=> b!1651595 m!2001673))

(declare-fun m!2001675 () Bool)

(assert (=> b!1651594 m!2001675))

(assert (=> b!1651594 m!1997899))

(assert (=> b!1651594 m!2000683))

(assert (=> b!1651596 m!1997899))

(assert (=> b!1651596 m!2000685))

(declare-fun m!2001677 () Bool)

(assert (=> b!1651596 m!2001677))

(assert (=> d!497342 d!498192))

(declare-fun d!498194 () Bool)

(assert (=> d!498194 (= (isEmpty!11244 (maxPrefix!1402 thiss!17113 rules!1846 (++!4922 lt!611596 lt!611591))) (not ((_ is Some!3457) (maxPrefix!1402 thiss!17113 rules!1846 (++!4922 lt!611596 lt!611591)))))))

(assert (=> d!497342 d!498194))

(assert (=> d!497342 d!497390))

(declare-fun b!1651600 () Bool)

(declare-fun e!1059105 () Bool)

(declare-fun lt!612982 () List!18279)

(assert (=> b!1651600 (= e!1059105 (or (not (= lt!612089 Nil!18209)) (= lt!612982 lt!612086)))))

(declare-fun b!1651597 () Bool)

(declare-fun e!1059104 () List!18279)

(assert (=> b!1651597 (= e!1059104 lt!612089)))

(declare-fun d!498196 () Bool)

(assert (=> d!498196 e!1059105))

(declare-fun res!740199 () Bool)

(assert (=> d!498196 (=> (not res!740199) (not e!1059105))))

(assert (=> d!498196 (= res!740199 (= (content!2529 lt!612982) ((_ map or) (content!2529 lt!612086) (content!2529 lt!612089))))))

(assert (=> d!498196 (= lt!612982 e!1059104)))

(declare-fun c!268710 () Bool)

(assert (=> d!498196 (= c!268710 ((_ is Nil!18209) lt!612086))))

(assert (=> d!498196 (= (++!4922 lt!612086 lt!612089) lt!612982)))

(declare-fun b!1651598 () Bool)

(assert (=> b!1651598 (= e!1059104 (Cons!18209 (h!23610 lt!612086) (++!4922 (t!150804 lt!612086) lt!612089)))))

(declare-fun b!1651599 () Bool)

(declare-fun res!740200 () Bool)

(assert (=> b!1651599 (=> (not res!740200) (not e!1059105))))

(assert (=> b!1651599 (= res!740200 (= (size!14501 lt!612982) (+ (size!14501 lt!612086) (size!14501 lt!612089))))))

(assert (= (and d!498196 c!268710) b!1651597))

(assert (= (and d!498196 (not c!268710)) b!1651598))

(assert (= (and d!498196 res!740199) b!1651599))

(assert (= (and b!1651599 res!740200) b!1651600))

(declare-fun m!2001679 () Bool)

(assert (=> d!498196 m!2001679))

(declare-fun m!2001681 () Bool)

(assert (=> d!498196 m!2001681))

(declare-fun m!2001683 () Bool)

(assert (=> d!498196 m!2001683))

(declare-fun m!2001685 () Bool)

(assert (=> b!1651598 m!2001685))

(declare-fun m!2001687 () Bool)

(assert (=> b!1651599 m!2001687))

(assert (=> b!1651599 m!2001635))

(declare-fun m!2001689 () Bool)

(assert (=> b!1651599 m!2001689))

(assert (=> d!497342 d!498196))

(declare-fun d!498198 () Bool)

(assert (=> d!498198 (= (isDefined!2815 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!612092)))) (not (isEmpty!11253 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!612092))))))))

(declare-fun bs!396575 () Bool)

(assert (= bs!396575 d!498198))

(assert (=> bs!396575 m!1998639))

(declare-fun m!2001691 () Bool)

(assert (=> bs!396575 m!2001691))

(assert (=> d!497342 d!498198))

(assert (=> d!497342 d!497498))

(declare-fun d!498200 () Bool)

(assert (=> d!498200 (= (list!7242 (_1!10343 (lex!1324 thiss!17113 rules!1846 (seqFromList!2161 lt!611596)))) (list!7246 (c!268211 (_1!10343 (lex!1324 thiss!17113 rules!1846 (seqFromList!2161 lt!611596))))))))

(declare-fun bs!396576 () Bool)

(assert (= bs!396576 d!498200))

(declare-fun m!2001693 () Bool)

(assert (=> bs!396576 m!2001693))

(assert (=> d!497342 d!498200))

(declare-fun d!498202 () Bool)

(assert (=> d!498202 (= (get!5302 (maxPrefix!1402 thiss!17113 rules!1846 lt!611596)) (v!24626 (maxPrefix!1402 thiss!17113 rules!1846 lt!611596)))))

(assert (=> d!497342 d!498202))

(assert (=> d!497342 d!497440))

(assert (=> d!497342 d!497438))

(declare-fun b!1651601 () Bool)

(declare-fun res!740203 () Bool)

(declare-fun e!1059106 () Bool)

(assert (=> b!1651601 (=> (not res!740203) (not e!1059106))))

(declare-fun lt!612983 () Option!3458)

(assert (=> b!1651601 (= res!740203 (= (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!612983)))) (originalCharacters!4025 (_1!10345 (get!5302 lt!612983)))))))

(declare-fun d!498204 () Bool)

(declare-fun e!1059107 () Bool)

(assert (=> d!498204 e!1059107))

(declare-fun res!740207 () Bool)

(assert (=> d!498204 (=> res!740207 e!1059107)))

(assert (=> d!498204 (= res!740207 (isEmpty!11244 lt!612983))))

(declare-fun e!1059108 () Option!3458)

(assert (=> d!498204 (= lt!612983 e!1059108)))

(declare-fun c!268711 () Bool)

(assert (=> d!498204 (= c!268711 (and ((_ is Cons!18211) rules!1846) ((_ is Nil!18211) (t!150806 rules!1846))))))

(declare-fun lt!612987 () Unit!30315)

(declare-fun lt!612986 () Unit!30315)

(assert (=> d!498204 (= lt!612987 lt!612986)))

(assert (=> d!498204 (isPrefix!1469 lt!611596 lt!611596)))

(assert (=> d!498204 (= lt!612986 (lemmaIsPrefixRefl!995 lt!611596 lt!611596))))

(assert (=> d!498204 (rulesValidInductive!1017 thiss!17113 rules!1846)))

(assert (=> d!498204 (= (maxPrefix!1402 thiss!17113 rules!1846 lt!611596) lt!612983)))

(declare-fun b!1651602 () Bool)

(declare-fun res!740205 () Bool)

(assert (=> b!1651602 (=> (not res!740205) (not e!1059106))))

(assert (=> b!1651602 (= res!740205 (< (size!14501 (_2!10345 (get!5302 lt!612983))) (size!14501 lt!611596)))))

(declare-fun b!1651603 () Bool)

(declare-fun res!740206 () Bool)

(assert (=> b!1651603 (=> (not res!740206) (not e!1059106))))

(assert (=> b!1651603 (= res!740206 (= (++!4922 (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!612983)))) (_2!10345 (get!5302 lt!612983))) lt!611596))))

(declare-fun b!1651604 () Bool)

(assert (=> b!1651604 (= e!1059106 (contains!3174 rules!1846 (rule!5069 (_1!10345 (get!5302 lt!612983)))))))

(declare-fun b!1651605 () Bool)

(declare-fun res!740204 () Bool)

(assert (=> b!1651605 (=> (not res!740204) (not e!1059106))))

(assert (=> b!1651605 (= res!740204 (matchR!2032 (regex!3211 (rule!5069 (_1!10345 (get!5302 lt!612983)))) (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!612983))))))))

(declare-fun b!1651606 () Bool)

(assert (=> b!1651606 (= e!1059107 e!1059106)))

(declare-fun res!740202 () Bool)

(assert (=> b!1651606 (=> (not res!740202) (not e!1059106))))

(assert (=> b!1651606 (= res!740202 (isDefined!2813 lt!612983))))

(declare-fun bm!106022 () Bool)

(declare-fun call!106027 () Option!3458)

(assert (=> bm!106022 (= call!106027 (maxPrefixOneRule!811 thiss!17113 (h!23612 rules!1846) lt!611596))))

(declare-fun b!1651607 () Bool)

(assert (=> b!1651607 (= e!1059108 call!106027)))

(declare-fun b!1651608 () Bool)

(declare-fun lt!612984 () Option!3458)

(declare-fun lt!612985 () Option!3458)

(assert (=> b!1651608 (= e!1059108 (ite (and ((_ is None!3457) lt!612984) ((_ is None!3457) lt!612985)) None!3457 (ite ((_ is None!3457) lt!612985) lt!612984 (ite ((_ is None!3457) lt!612984) lt!612985 (ite (>= (size!14498 (_1!10345 (v!24626 lt!612984))) (size!14498 (_1!10345 (v!24626 lt!612985)))) lt!612984 lt!612985)))))))

(assert (=> b!1651608 (= lt!612984 call!106027)))

(assert (=> b!1651608 (= lt!612985 (maxPrefix!1402 thiss!17113 (t!150806 rules!1846) lt!611596))))

(declare-fun b!1651609 () Bool)

(declare-fun res!740201 () Bool)

(assert (=> b!1651609 (=> (not res!740201) (not e!1059106))))

(assert (=> b!1651609 (= res!740201 (= (value!101186 (_1!10345 (get!5302 lt!612983))) (apply!4804 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!612983)))) (seqFromList!2161 (originalCharacters!4025 (_1!10345 (get!5302 lt!612983)))))))))

(assert (= (and d!498204 c!268711) b!1651607))

(assert (= (and d!498204 (not c!268711)) b!1651608))

(assert (= (or b!1651607 b!1651608) bm!106022))

(assert (= (and d!498204 (not res!740207)) b!1651606))

(assert (= (and b!1651606 res!740202) b!1651601))

(assert (= (and b!1651601 res!740203) b!1651602))

(assert (= (and b!1651602 res!740205) b!1651603))

(assert (= (and b!1651603 res!740206) b!1651609))

(assert (= (and b!1651609 res!740201) b!1651605))

(assert (= (and b!1651605 res!740204) b!1651604))

(declare-fun m!2001695 () Bool)

(assert (=> b!1651603 m!2001695))

(declare-fun m!2001697 () Bool)

(assert (=> b!1651603 m!2001697))

(assert (=> b!1651603 m!2001697))

(declare-fun m!2001699 () Bool)

(assert (=> b!1651603 m!2001699))

(assert (=> b!1651603 m!2001699))

(declare-fun m!2001701 () Bool)

(assert (=> b!1651603 m!2001701))

(assert (=> b!1651605 m!2001695))

(assert (=> b!1651605 m!2001697))

(assert (=> b!1651605 m!2001697))

(assert (=> b!1651605 m!2001699))

(assert (=> b!1651605 m!2001699))

(declare-fun m!2001703 () Bool)

(assert (=> b!1651605 m!2001703))

(declare-fun m!2001705 () Bool)

(assert (=> d!498204 m!2001705))

(declare-fun m!2001707 () Bool)

(assert (=> d!498204 m!2001707))

(declare-fun m!2001709 () Bool)

(assert (=> d!498204 m!2001709))

(assert (=> d!498204 m!1997961))

(assert (=> b!1651604 m!2001695))

(declare-fun m!2001711 () Bool)

(assert (=> b!1651604 m!2001711))

(assert (=> b!1651601 m!2001695))

(assert (=> b!1651601 m!2001697))

(assert (=> b!1651601 m!2001697))

(assert (=> b!1651601 m!2001699))

(declare-fun m!2001713 () Bool)

(assert (=> b!1651608 m!2001713))

(assert (=> b!1651609 m!2001695))

(declare-fun m!2001715 () Bool)

(assert (=> b!1651609 m!2001715))

(assert (=> b!1651609 m!2001715))

(declare-fun m!2001717 () Bool)

(assert (=> b!1651609 m!2001717))

(assert (=> b!1651602 m!2001695))

(declare-fun m!2001719 () Bool)

(assert (=> b!1651602 m!2001719))

(assert (=> b!1651602 m!1998417))

(declare-fun m!2001721 () Bool)

(assert (=> bm!106022 m!2001721))

(declare-fun m!2001723 () Bool)

(assert (=> b!1651606 m!2001723))

(assert (=> d!497342 d!498204))

(assert (=> d!497342 d!497436))

(assert (=> d!497342 d!497728))

(declare-fun d!498206 () Bool)

(declare-fun lt!612988 () Int)

(assert (=> d!498206 (>= lt!612988 0)))

(declare-fun e!1059109 () Int)

(assert (=> d!498206 (= lt!612988 e!1059109)))

(declare-fun c!268712 () Bool)

(assert (=> d!498206 (= c!268712 ((_ is Nil!18209) (originalCharacters!4025 (h!23613 tokens!457))))))

(assert (=> d!498206 (= (size!14501 (originalCharacters!4025 (h!23613 tokens!457))) lt!612988)))

(declare-fun b!1651610 () Bool)

(assert (=> b!1651610 (= e!1059109 0)))

(declare-fun b!1651611 () Bool)

(assert (=> b!1651611 (= e!1059109 (+ 1 (size!14501 (t!150804 (originalCharacters!4025 (h!23613 tokens!457))))))))

(assert (= (and d!498206 c!268712) b!1651610))

(assert (= (and d!498206 (not c!268712)) b!1651611))

(declare-fun m!2001725 () Bool)

(assert (=> b!1651611 m!2001725))

(assert (=> b!1649604 d!498206))

(declare-fun d!498208 () Bool)

(assert (=> d!498208 (= (isDefined!2813 (maxPrefix!1402 thiss!17113 rules!1846 (originalCharacters!4025 (h!23613 (t!150807 tokens!457))))) (not (isEmpty!11244 (maxPrefix!1402 thiss!17113 rules!1846 (originalCharacters!4025 (h!23613 (t!150807 tokens!457)))))))))

(declare-fun bs!396577 () Bool)

(assert (= bs!396577 d!498208))

(assert (=> bs!396577 m!1998367))

(declare-fun m!2001727 () Bool)

(assert (=> bs!396577 m!2001727))

(assert (=> b!1649722 d!498208))

(declare-fun b!1651612 () Bool)

(declare-fun res!740210 () Bool)

(declare-fun e!1059114 () Bool)

(assert (=> b!1651612 (=> (not res!740210) (not e!1059114))))

(assert (=> b!1651612 (= res!740210 (isEmpty!11246 (tail!2444 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))))))

(declare-fun b!1651613 () Bool)

(declare-fun e!1059113 () Bool)

(assert (=> b!1651613 (= e!1059113 (matchR!2032 (derivativeStep!1110 (regex!3211 (rule!5069 (h!23613 (t!150807 tokens!457)))) (head!3631 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))) (tail!2444 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))))))

(declare-fun b!1651614 () Bool)

(declare-fun e!1059115 () Bool)

(declare-fun lt!612989 () Bool)

(declare-fun call!106028 () Bool)

(assert (=> b!1651614 (= e!1059115 (= lt!612989 call!106028))))

(declare-fun b!1651615 () Bool)

(declare-fun e!1059112 () Bool)

(assert (=> b!1651615 (= e!1059115 e!1059112)))

(declare-fun c!268713 () Bool)

(assert (=> b!1651615 (= c!268713 ((_ is EmptyLang!4539) (regex!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))))))

(declare-fun b!1651616 () Bool)

(declare-fun res!740208 () Bool)

(declare-fun e!1059110 () Bool)

(assert (=> b!1651616 (=> res!740208 e!1059110)))

(assert (=> b!1651616 (= res!740208 (not ((_ is ElementMatch!4539) (regex!3211 (rule!5069 (h!23613 (t!150807 tokens!457)))))))))

(assert (=> b!1651616 (= e!1059112 e!1059110)))

(declare-fun b!1651617 () Bool)

(declare-fun res!740214 () Bool)

(assert (=> b!1651617 (=> (not res!740214) (not e!1059114))))

(assert (=> b!1651617 (= res!740214 (not call!106028))))

(declare-fun b!1651618 () Bool)

(declare-fun res!740215 () Bool)

(declare-fun e!1059116 () Bool)

(assert (=> b!1651618 (=> res!740215 e!1059116)))

(assert (=> b!1651618 (= res!740215 (not (isEmpty!11246 (tail!2444 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457))))))))))

(declare-fun b!1651619 () Bool)

(assert (=> b!1651619 (= e!1059114 (= (head!3631 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457))))) (c!268210 (regex!3211 (rule!5069 (h!23613 (t!150807 tokens!457)))))))))

(declare-fun d!498210 () Bool)

(assert (=> d!498210 e!1059115))

(declare-fun c!268714 () Bool)

(assert (=> d!498210 (= c!268714 ((_ is EmptyExpr!4539) (regex!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))))))

(assert (=> d!498210 (= lt!612989 e!1059113)))

(declare-fun c!268715 () Bool)

(assert (=> d!498210 (= c!268715 (isEmpty!11246 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457))))))))

(assert (=> d!498210 (validRegex!1808 (regex!3211 (rule!5069 (h!23613 (t!150807 tokens!457)))))))

(assert (=> d!498210 (= (matchR!2032 (regex!3211 (rule!5069 (h!23613 (t!150807 tokens!457)))) (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457))))) lt!612989)))

(declare-fun b!1651620 () Bool)

(declare-fun e!1059111 () Bool)

(assert (=> b!1651620 (= e!1059111 e!1059116)))

(declare-fun res!740211 () Bool)

(assert (=> b!1651620 (=> res!740211 e!1059116)))

(assert (=> b!1651620 (= res!740211 call!106028)))

(declare-fun bm!106023 () Bool)

(assert (=> bm!106023 (= call!106028 (isEmpty!11246 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457))))))))

(declare-fun b!1651621 () Bool)

(assert (=> b!1651621 (= e!1059112 (not lt!612989))))

(declare-fun b!1651622 () Bool)

(assert (=> b!1651622 (= e!1059116 (not (= (head!3631 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457))))) (c!268210 (regex!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))))))))

(declare-fun b!1651623 () Bool)

(declare-fun res!740209 () Bool)

(assert (=> b!1651623 (=> res!740209 e!1059110)))

(assert (=> b!1651623 (= res!740209 e!1059114)))

(declare-fun res!740212 () Bool)

(assert (=> b!1651623 (=> (not res!740212) (not e!1059114))))

(assert (=> b!1651623 (= res!740212 lt!612989)))

(declare-fun b!1651624 () Bool)

(assert (=> b!1651624 (= e!1059113 (nullable!1343 (regex!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))))))

(declare-fun b!1651625 () Bool)

(assert (=> b!1651625 (= e!1059110 e!1059111)))

(declare-fun res!740213 () Bool)

(assert (=> b!1651625 (=> (not res!740213) (not e!1059111))))

(assert (=> b!1651625 (= res!740213 (not lt!612989))))

(assert (= (and d!498210 c!268715) b!1651624))

(assert (= (and d!498210 (not c!268715)) b!1651613))

(assert (= (and d!498210 c!268714) b!1651614))

(assert (= (and d!498210 (not c!268714)) b!1651615))

(assert (= (and b!1651615 c!268713) b!1651621))

(assert (= (and b!1651615 (not c!268713)) b!1651616))

(assert (= (and b!1651616 (not res!740208)) b!1651623))

(assert (= (and b!1651623 res!740212) b!1651617))

(assert (= (and b!1651617 res!740214) b!1651612))

(assert (= (and b!1651612 res!740210) b!1651619))

(assert (= (and b!1651623 (not res!740209)) b!1651625))

(assert (= (and b!1651625 res!740213) b!1651620))

(assert (= (and b!1651620 (not res!740211)) b!1651618))

(assert (= (and b!1651618 (not res!740215)) b!1651622))

(assert (= (or b!1651614 b!1651617 b!1651620) bm!106023))

(assert (=> b!1651622 m!1998343))

(assert (=> b!1651622 m!2001339))

(assert (=> b!1651618 m!1998343))

(assert (=> b!1651618 m!2001341))

(assert (=> b!1651618 m!2001341))

(declare-fun m!2001729 () Bool)

(assert (=> b!1651618 m!2001729))

(assert (=> bm!106023 m!1998343))

(declare-fun m!2001731 () Bool)

(assert (=> bm!106023 m!2001731))

(assert (=> b!1651613 m!1998343))

(assert (=> b!1651613 m!2001339))

(assert (=> b!1651613 m!2001339))

(declare-fun m!2001733 () Bool)

(assert (=> b!1651613 m!2001733))

(assert (=> b!1651613 m!1998343))

(assert (=> b!1651613 m!2001341))

(assert (=> b!1651613 m!2001733))

(assert (=> b!1651613 m!2001341))

(declare-fun m!2001735 () Bool)

(assert (=> b!1651613 m!2001735))

(declare-fun m!2001737 () Bool)

(assert (=> b!1651624 m!2001737))

(assert (=> d!498210 m!1998343))

(assert (=> d!498210 m!2001731))

(declare-fun m!2001739 () Bool)

(assert (=> d!498210 m!2001739))

(assert (=> b!1651612 m!1998343))

(assert (=> b!1651612 m!2001341))

(assert (=> b!1651612 m!2001341))

(assert (=> b!1651612 m!2001729))

(assert (=> b!1651619 m!1998343))

(assert (=> b!1651619 m!2001339))

(assert (=> b!1649722 d!498210))

(declare-fun b!1651723 () Bool)

(declare-fun e!1059168 () Unit!30315)

(declare-fun Unit!30384 () Unit!30315)

(assert (=> b!1651723 (= e!1059168 Unit!30384)))

(declare-fun b!1651724 () Bool)

(declare-fun res!740241 () Bool)

(declare-fun e!1059167 () Bool)

(assert (=> b!1651724 (=> (not res!740241) (not e!1059167))))

(declare-fun lt!613477 () Token!5988)

(assert (=> b!1651724 (= res!740241 (matchR!2032 (regex!3211 (get!5304 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!613477))))) (list!7241 (charsOf!1860 lt!613477))))))

(declare-fun b!1651725 () Bool)

(declare-fun e!1059171 () Unit!30315)

(declare-fun Unit!30386 () Unit!30315)

(assert (=> b!1651725 (= e!1059171 Unit!30386)))

(declare-fun c!268753 () Bool)

(declare-fun getIndex!122 (List!18281 Rule!6222) Int)

(assert (=> b!1651725 (= c!268753 (< (getIndex!122 rules!1846 (rule!5069 (h!23613 (t!150807 tokens!457)))) (getIndex!122 rules!1846 (rule!5069 lt!613477))))))

(declare-fun lt!613464 () Unit!30315)

(declare-fun e!1059170 () Unit!30315)

(assert (=> b!1651725 (= lt!613464 e!1059170)))

(declare-fun c!268754 () Bool)

(assert (=> b!1651725 (= c!268754 (< (getIndex!122 rules!1846 (rule!5069 lt!613477)) (getIndex!122 rules!1846 (rule!5069 (h!23613 (t!150807 tokens!457))))))))

(declare-fun lt!613445 () Unit!30315)

(declare-fun e!1059173 () Unit!30315)

(assert (=> b!1651725 (= lt!613445 e!1059173)))

(declare-fun c!268757 () Bool)

(assert (=> b!1651725 (= c!268757 (= (getIndex!122 rules!1846 (rule!5069 lt!613477)) (getIndex!122 rules!1846 (rule!5069 (h!23613 (t!150807 tokens!457))))))))

(declare-fun lt!613457 () Unit!30315)

(declare-fun e!1059169 () Unit!30315)

(assert (=> b!1651725 (= lt!613457 e!1059169)))

(assert (=> b!1651725 false))

(declare-fun b!1651726 () Bool)

(declare-fun Unit!30388 () Unit!30315)

(assert (=> b!1651726 (= e!1059171 Unit!30388)))

(declare-fun d!498212 () Bool)

(assert (=> d!498212 (= (maxPrefix!1402 thiss!17113 rules!1846 (++!4922 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) (list!7241 lt!611909))) (Some!3457 (tuple2!17887 (h!23613 (t!150807 tokens!457)) (list!7241 lt!611909))))))

(declare-fun lt!613440 () Unit!30315)

(declare-fun Unit!30389 () Unit!30315)

(assert (=> d!498212 (= lt!613440 Unit!30389)))

(declare-fun lt!613492 () Unit!30315)

(assert (=> d!498212 (= lt!613492 e!1059171)))

(declare-fun c!268752 () Bool)

(assert (=> d!498212 (= c!268752 (not (= (rule!5069 lt!613477) (rule!5069 (h!23613 (t!150807 tokens!457))))))))

(declare-fun lt!613437 () Unit!30315)

(declare-fun lt!613479 () Unit!30315)

(assert (=> d!498212 (= lt!613437 lt!613479)))

(declare-fun lt!613430 () List!18279)

(assert (=> d!498212 (= (list!7241 lt!611909) lt!613430)))

(declare-fun lt!613444 () List!18279)

(declare-fun lemmaSamePrefixThenSameSuffix!676 (List!18279 List!18279 List!18279 List!18279 List!18279) Unit!30315)

(assert (=> d!498212 (= lt!613479 (lemmaSamePrefixThenSameSuffix!676 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) (list!7241 lt!611909) (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) lt!613430 lt!613444))))

(declare-fun lt!613472 () Unit!30315)

(declare-fun lt!613435 () Unit!30315)

(assert (=> d!498212 (= lt!613472 lt!613435)))

(declare-fun lt!613461 () List!18279)

(declare-fun lt!613454 () List!18279)

(assert (=> d!498212 (= lt!613461 lt!613454)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!177 (List!18279 List!18279 List!18279) Unit!30315)

(assert (=> d!498212 (= lt!613435 (lemmaIsPrefixSameLengthThenSameList!177 lt!613461 lt!613454 lt!613444))))

(assert (=> d!498212 (= lt!613454 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))))

(assert (=> d!498212 (= lt!613461 (list!7241 (charsOf!1860 lt!613477)))))

(declare-fun lt!613449 () Unit!30315)

(declare-fun e!1059172 () Unit!30315)

(assert (=> d!498212 (= lt!613449 e!1059172)))

(declare-fun c!268755 () Bool)

(assert (=> d!498212 (= c!268755 (< (size!14504 (charsOf!1860 lt!613477)) (size!14504 (charsOf!1860 (h!23613 (t!150807 tokens!457))))))))

(declare-fun lt!613448 () Unit!30315)

(assert (=> d!498212 (= lt!613448 e!1059168)))

(declare-fun c!268756 () Bool)

(assert (=> d!498212 (= c!268756 (> (size!14504 (charsOf!1860 lt!613477)) (size!14504 (charsOf!1860 (h!23613 (t!150807 tokens!457))))))))

(declare-fun lt!613433 () Unit!30315)

(declare-fun lt!613447 () Unit!30315)

(assert (=> d!498212 (= lt!613433 lt!613447)))

(assert (=> d!498212 (matchR!2032 (rulesRegex!595 thiss!17113 rules!1846) (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))))

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!54 (LexerInterface!2840 List!18281 List!18279 Token!5988 Rule!6222 List!18279) Unit!30315)

(assert (=> d!498212 (= lt!613447 (lemmaMaxPrefixThenMatchesRulesRegex!54 thiss!17113 rules!1846 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) (h!23613 (t!150807 tokens!457)) (rule!5069 (h!23613 (t!150807 tokens!457))) Nil!18209))))

(declare-fun lt!613467 () Unit!30315)

(declare-fun lt!613485 () Unit!30315)

(assert (=> d!498212 (= lt!613467 lt!613485)))

(declare-fun lt!613484 () List!18279)

(assert (=> d!498212 (= lt!613430 lt!613484)))

(declare-fun lt!613490 () List!18279)

(declare-fun lt!613478 () List!18279)

(assert (=> d!498212 (= lt!613485 (lemmaSamePrefixThenSameSuffix!676 lt!613490 lt!613430 lt!613478 lt!613484 lt!613444))))

(declare-fun getSuffix!724 (List!18279 List!18279) List!18279)

(assert (=> d!498212 (= lt!613484 (getSuffix!724 lt!613444 (list!7241 (charsOf!1860 lt!613477))))))

(assert (=> d!498212 (= lt!613478 (list!7241 (charsOf!1860 lt!613477)))))

(assert (=> d!498212 (= lt!613490 (list!7241 (charsOf!1860 lt!613477)))))

(declare-fun lt!613469 () Unit!30315)

(declare-fun lt!613480 () Unit!30315)

(assert (=> d!498212 (= lt!613469 lt!613480)))

(declare-fun lt!613489 () List!18279)

(assert (=> d!498212 (= (maxPrefixOneRule!811 thiss!17113 (rule!5069 lt!613477) lt!613444) (Some!3457 (tuple2!17887 (Token!5989 (apply!4804 (transformation!3211 (rule!5069 lt!613477)) (seqFromList!2161 lt!613489)) (rule!5069 lt!613477) (size!14501 lt!613489) lt!613489) lt!613430)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!243 (LexerInterface!2840 List!18281 List!18279 List!18279 List!18279 Rule!6222) Unit!30315)

(assert (=> d!498212 (= lt!613480 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!243 thiss!17113 rules!1846 lt!613489 lt!613444 lt!613430 (rule!5069 lt!613477)))))

(assert (=> d!498212 (= lt!613489 (list!7241 (charsOf!1860 lt!613477)))))

(declare-fun lt!613486 () Unit!30315)

(declare-fun lemmaCharactersSize!349 (Token!5988) Unit!30315)

(assert (=> d!498212 (= lt!613486 (lemmaCharactersSize!349 lt!613477))))

(declare-fun lt!613425 () Unit!30315)

(declare-fun lemmaEqSameImage!202 (TokenValueInjection!6262 BalanceConc!12084 BalanceConc!12084) Unit!30315)

(assert (=> d!498212 (= lt!613425 (lemmaEqSameImage!202 (transformation!3211 (rule!5069 lt!613477)) (charsOf!1860 lt!613477) (seqFromList!2161 (originalCharacters!4025 lt!613477))))))

(declare-fun lt!613423 () Unit!30315)

(assert (=> d!498212 (= lt!613423 (lemmaSemiInverse!417 (transformation!3211 (rule!5069 lt!613477)) (charsOf!1860 lt!613477)))))

(declare-fun lt!613446 () Unit!30315)

(declare-fun lemmaInv!482 (TokenValueInjection!6262) Unit!30315)

(assert (=> d!498212 (= lt!613446 (lemmaInv!482 (transformation!3211 (rule!5069 lt!613477))))))

(declare-fun lt!613432 () Unit!30315)

(declare-fun lt!613456 () Unit!30315)

(assert (=> d!498212 (= lt!613432 lt!613456)))

(declare-fun lt!613436 () List!18279)

(assert (=> d!498212 (isPrefix!1469 lt!613436 (++!4922 lt!613436 lt!613430))))

(assert (=> d!498212 (= lt!613456 (lemmaConcatTwoListThenFirstIsPrefix!994 lt!613436 lt!613430))))

(assert (=> d!498212 (= lt!613436 (list!7241 (charsOf!1860 lt!613477)))))

(declare-fun lt!613475 () Unit!30315)

(declare-fun lt!613473 () Unit!30315)

(assert (=> d!498212 (= lt!613475 lt!613473)))

(assert (=> d!498212 e!1059167))

(declare-fun res!740242 () Bool)

(assert (=> d!498212 (=> (not res!740242) (not e!1059167))))

(assert (=> d!498212 (= res!740242 (isDefined!2815 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!613477)))))))

(assert (=> d!498212 (= lt!613473 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!316 thiss!17113 rules!1846 lt!613444 lt!613477))))

(declare-fun lt!613488 () Option!3458)

(assert (=> d!498212 (= lt!613430 (_2!10345 (get!5302 lt!613488)))))

(assert (=> d!498212 (= lt!613477 (_1!10345 (get!5302 lt!613488)))))

(declare-fun lt!613453 () Unit!30315)

(assert (=> d!498212 (= lt!613453 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!408 thiss!17113 rules!1846 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) (list!7241 lt!611909)))))

(assert (=> d!498212 (= lt!613488 (maxPrefix!1402 thiss!17113 rules!1846 lt!613444))))

(declare-fun lt!613424 () Unit!30315)

(declare-fun lt!613481 () Unit!30315)

(assert (=> d!498212 (= lt!613424 lt!613481)))

(declare-fun lt!613483 () List!18279)

(assert (=> d!498212 (isPrefix!1469 lt!613483 (++!4922 lt!613483 (list!7241 lt!611909)))))

(assert (=> d!498212 (= lt!613481 (lemmaConcatTwoListThenFirstIsPrefix!994 lt!613483 (list!7241 lt!611909)))))

(assert (=> d!498212 (= lt!613483 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))))

(assert (=> d!498212 (= lt!613444 (++!4922 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) (list!7241 lt!611909)))))

(assert (=> d!498212 (not (isEmpty!11239 rules!1846))))

(assert (=> d!498212 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!170 thiss!17113 rules!1846 (h!23613 (t!150807 tokens!457)) (rule!5069 (h!23613 (t!150807 tokens!457))) (list!7241 lt!611909)) lt!613440)))

(declare-fun b!1651727 () Bool)

(assert (=> b!1651727 (= e!1059167 (= (rule!5069 lt!613477) (get!5304 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!613477))))))))

(declare-fun b!1651728 () Bool)

(declare-fun Unit!30402 () Unit!30315)

(assert (=> b!1651728 (= e!1059169 Unit!30402)))

(declare-fun b!1651729 () Bool)

(declare-fun Unit!30403 () Unit!30315)

(assert (=> b!1651729 (= e!1059172 Unit!30403)))

(declare-fun lt!613439 () List!18279)

(assert (=> b!1651729 (= lt!613439 (list!7241 (charsOf!1860 lt!613477)))))

(declare-fun lt!613431 () List!18279)

(assert (=> b!1651729 (= lt!613431 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))))

(declare-fun lt!613462 () Unit!30315)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!144 (LexerInterface!2840 List!18281 Rule!6222 List!18279 List!18279 List!18279 Rule!6222) Unit!30315)

(assert (=> b!1651729 (= lt!613462 (lemmaMaxPrefixOutputsMaxPrefix!144 thiss!17113 rules!1846 (rule!5069 lt!613477) lt!613439 lt!613444 lt!613431 (rule!5069 (h!23613 (t!150807 tokens!457)))))))

(assert (=> b!1651729 (not (matchR!2032 (regex!3211 (rule!5069 (h!23613 (t!150807 tokens!457)))) lt!613431))))

(declare-fun lt!613442 () Unit!30315)

(assert (=> b!1651729 (= lt!613442 lt!613462)))

(assert (=> b!1651729 false))

(declare-fun b!1651730 () Bool)

(assert (=> b!1651730 false))

(declare-fun lt!613443 () Unit!30315)

(declare-fun lt!613458 () Unit!30315)

(assert (=> b!1651730 (= lt!613443 lt!613458)))

(assert (=> b!1651730 (= (rule!5069 lt!613477) (rule!5069 (h!23613 (t!150807 tokens!457))))))

(declare-fun lemmaSameIndexThenSameElement!70 (List!18281 Rule!6222 Rule!6222) Unit!30315)

(assert (=> b!1651730 (= lt!613458 (lemmaSameIndexThenSameElement!70 rules!1846 (rule!5069 lt!613477) (rule!5069 (h!23613 (t!150807 tokens!457)))))))

(declare-fun Unit!30404 () Unit!30315)

(assert (=> b!1651730 (= e!1059169 Unit!30404)))

(declare-fun b!1651731 () Bool)

(declare-fun Unit!30405 () Unit!30315)

(assert (=> b!1651731 (= e!1059168 Unit!30405)))

(declare-fun lt!613451 () Unit!30315)

(assert (=> b!1651731 (= lt!613451 (lemmaMaxPrefixThenMatchesRulesRegex!54 thiss!17113 rules!1846 lt!613444 lt!613477 (rule!5069 lt!613477) lt!613430))))

(assert (=> b!1651731 (matchR!2032 (rulesRegex!595 thiss!17113 rules!1846) (list!7241 (charsOf!1860 lt!613477)))))

(declare-fun lt!613426 () Unit!30315)

(assert (=> b!1651731 (= lt!613426 lt!613451)))

(declare-fun lt!613466 () List!18279)

(assert (=> b!1651731 (= lt!613466 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))))

(declare-fun lt!613471 () List!18279)

(assert (=> b!1651731 (= lt!613471 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))))

(declare-fun lt!613474 () List!18279)

(assert (=> b!1651731 (= lt!613474 (getSuffix!724 lt!613444 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457))))))))

(declare-fun lt!613459 () Unit!30315)

(assert (=> b!1651731 (= lt!613459 (lemmaSamePrefixThenSameSuffix!676 lt!613466 (list!7241 lt!611909) lt!613471 lt!613474 lt!613444))))

(assert (=> b!1651731 (= (list!7241 lt!611909) lt!613474)))

(declare-fun lt!613427 () Unit!30315)

(assert (=> b!1651731 (= lt!613427 lt!613459)))

(declare-fun lt!613476 () List!18279)

(assert (=> b!1651731 (= lt!613476 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))))

(declare-fun lt!613434 () Unit!30315)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!167 (List!18279 List!18279) Unit!30315)

(assert (=> b!1651731 (= lt!613434 (lemmaAddHeadSuffixToPrefixStillPrefix!167 lt!613476 lt!613444))))

(assert (=> b!1651731 (isPrefix!1469 (++!4922 lt!613476 (Cons!18209 (head!3631 (getSuffix!724 lt!613444 lt!613476)) Nil!18209)) lt!613444)))

(declare-fun lt!613452 () Unit!30315)

(assert (=> b!1651731 (= lt!613452 lt!613434)))

(declare-fun lt!613438 () List!18279)

(assert (=> b!1651731 (= lt!613438 (list!7241 (charsOf!1860 lt!613477)))))

(declare-fun lt!613460 () List!18279)

(assert (=> b!1651731 (= lt!613460 (++!4922 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) (Cons!18209 (head!3631 (list!7241 lt!611909)) Nil!18209)))))

(declare-fun lt!613428 () Unit!30315)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!53 (List!18279 List!18279 List!18279) Unit!30315)

(assert (=> b!1651731 (= lt!613428 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!53 lt!613438 lt!613460 lt!613444))))

(assert (=> b!1651731 (isPrefix!1469 lt!613460 lt!613438)))

(declare-fun lt!613455 () Unit!30315)

(assert (=> b!1651731 (= lt!613455 lt!613428)))

(declare-fun lt!613450 () Regex!4539)

(assert (=> b!1651731 (= lt!613450 (rulesRegex!595 thiss!17113 rules!1846))))

(declare-fun lt!613463 () List!18279)

(assert (=> b!1651731 (= lt!613463 (++!4922 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) (Cons!18209 (head!3631 (list!7241 lt!611909)) Nil!18209)))))

(declare-fun lt!613422 () List!18279)

(assert (=> b!1651731 (= lt!613422 (list!7241 (charsOf!1860 lt!613477)))))

(declare-fun lt!613491 () Unit!30315)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!54 (Regex!4539 List!18279 List!18279) Unit!30315)

(assert (=> b!1651731 (= lt!613491 (lemmaNotPrefixMatchThenCannotMatchLonger!54 lt!613450 lt!613463 lt!613422))))

(assert (=> b!1651731 (not (matchR!2032 lt!613450 lt!613422))))

(declare-fun lt!613465 () Unit!30315)

(assert (=> b!1651731 (= lt!613465 lt!613491)))

(assert (=> b!1651731 false))

(declare-fun b!1651732 () Bool)

(assert (=> b!1651732 false))

(declare-fun lt!613468 () Unit!30315)

(declare-fun lt!613487 () Unit!30315)

(assert (=> b!1651732 (= lt!613468 lt!613487)))

(declare-fun lt!613441 () List!18279)

(assert (=> b!1651732 (not (matchR!2032 (regex!3211 (rule!5069 (h!23613 (t!150807 tokens!457)))) lt!613441))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!94 (LexerInterface!2840 List!18281 Rule!6222 List!18279 List!18279 Rule!6222) Unit!30315)

(assert (=> b!1651732 (= lt!613487 (lemmaMaxPrefNoSmallerRuleMatches!94 thiss!17113 rules!1846 (rule!5069 lt!613477) lt!613441 lt!613444 (rule!5069 (h!23613 (t!150807 tokens!457)))))))

(assert (=> b!1651732 (= lt!613441 (list!7241 (charsOf!1860 lt!613477)))))

(declare-fun Unit!30406 () Unit!30315)

(assert (=> b!1651732 (= e!1059170 Unit!30406)))

(declare-fun b!1651733 () Bool)

(declare-fun Unit!30407 () Unit!30315)

(assert (=> b!1651733 (= e!1059172 Unit!30407)))

(declare-fun b!1651734 () Bool)

(declare-fun Unit!30408 () Unit!30315)

(assert (=> b!1651734 (= e!1059173 Unit!30408)))

(declare-fun b!1651735 () Bool)

(declare-fun Unit!30409 () Unit!30315)

(assert (=> b!1651735 (= e!1059170 Unit!30409)))

(declare-fun b!1651736 () Bool)

(assert (=> b!1651736 false))

(declare-fun lt!613429 () Unit!30315)

(declare-fun lt!613482 () Unit!30315)

(assert (=> b!1651736 (= lt!613429 lt!613482)))

(declare-fun lt!613470 () List!18279)

(assert (=> b!1651736 (not (matchR!2032 (regex!3211 (rule!5069 lt!613477)) lt!613470))))

(assert (=> b!1651736 (= lt!613482 (lemmaMaxPrefNoSmallerRuleMatches!94 thiss!17113 rules!1846 (rule!5069 (h!23613 (t!150807 tokens!457))) lt!613470 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) (rule!5069 lt!613477)))))

(assert (=> b!1651736 (= lt!613470 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))))

(declare-fun Unit!30410 () Unit!30315)

(assert (=> b!1651736 (= e!1059173 Unit!30410)))

(assert (= (and d!498212 res!740242) b!1651724))

(assert (= (and b!1651724 res!740241) b!1651727))

(assert (= (and d!498212 c!268756) b!1651731))

(assert (= (and d!498212 (not c!268756)) b!1651723))

(assert (= (and d!498212 c!268755) b!1651729))

(assert (= (and d!498212 (not c!268755)) b!1651733))

(assert (= (and d!498212 c!268752) b!1651725))

(assert (= (and d!498212 (not c!268752)) b!1651726))

(assert (= (and b!1651725 c!268753) b!1651732))

(assert (= (and b!1651725 (not c!268753)) b!1651735))

(assert (= (and b!1651725 c!268754) b!1651736))

(assert (= (and b!1651725 (not c!268754)) b!1651734))

(assert (= (and b!1651725 c!268757) b!1651730))

(assert (= (and b!1651725 (not c!268757)) b!1651728))

(declare-fun m!2002121 () Bool)

(assert (=> b!1651736 m!2002121))

(assert (=> b!1651736 m!1997815))

(assert (=> b!1651736 m!1997815))

(assert (=> b!1651736 m!1998343))

(assert (=> b!1651736 m!1998343))

(declare-fun m!2002127 () Bool)

(assert (=> b!1651736 m!2002127))

(declare-fun m!2002131 () Bool)

(assert (=> b!1651727 m!2002131))

(assert (=> b!1651727 m!2002131))

(declare-fun m!2002133 () Bool)

(assert (=> b!1651727 m!2002133))

(declare-fun m!2002135 () Bool)

(assert (=> b!1651731 m!2002135))

(declare-fun m!2002137 () Bool)

(assert (=> b!1651731 m!2002137))

(assert (=> b!1651731 m!1998343))

(declare-fun m!2002139 () Bool)

(assert (=> b!1651731 m!2002139))

(assert (=> b!1651731 m!1998353))

(assert (=> b!1651731 m!1998355))

(assert (=> b!1651731 m!1998343))

(declare-fun m!2002141 () Bool)

(assert (=> b!1651731 m!2002141))

(assert (=> b!1651731 m!1997805))

(declare-fun m!2002147 () Bool)

(assert (=> b!1651731 m!2002147))

(declare-fun m!2002149 () Bool)

(assert (=> b!1651731 m!2002149))

(declare-fun m!2002151 () Bool)

(assert (=> b!1651731 m!2002151))

(assert (=> b!1651731 m!1997815))

(assert (=> b!1651731 m!1998343))

(declare-fun m!2002153 () Bool)

(assert (=> b!1651731 m!2002153))

(declare-fun m!2002155 () Bool)

(assert (=> b!1651731 m!2002155))

(assert (=> b!1651731 m!2002153))

(declare-fun m!2002157 () Bool)

(assert (=> b!1651731 m!2002157))

(declare-fun m!2002159 () Bool)

(assert (=> b!1651731 m!2002159))

(declare-fun m!2002163 () Bool)

(assert (=> b!1651731 m!2002163))

(assert (=> b!1651731 m!2002147))

(assert (=> b!1651731 m!2002135))

(declare-fun m!2002169 () Bool)

(assert (=> b!1651731 m!2002169))

(assert (=> b!1651731 m!1998353))

(declare-fun m!2002173 () Bool)

(assert (=> b!1651731 m!2002173))

(assert (=> b!1651731 m!2002163))

(assert (=> b!1651731 m!1997805))

(declare-fun m!2002175 () Bool)

(assert (=> b!1651731 m!2002175))

(assert (=> b!1651731 m!1997815))

(declare-fun m!2002177 () Bool)

(assert (=> b!1651731 m!2002177))

(assert (=> b!1651724 m!2002147))

(declare-fun m!2002179 () Bool)

(assert (=> b!1651724 m!2002179))

(assert (=> b!1651724 m!2002131))

(assert (=> b!1651724 m!2002133))

(assert (=> b!1651724 m!2002131))

(assert (=> b!1651724 m!2002163))

(assert (=> b!1651724 m!2002163))

(assert (=> b!1651724 m!2002147))

(declare-fun m!2002181 () Bool)

(assert (=> b!1651730 m!2002181))

(declare-fun m!2002183 () Bool)

(assert (=> b!1651729 m!2002183))

(assert (=> b!1651729 m!1997815))

(assert (=> b!1651729 m!1998343))

(assert (=> b!1651729 m!2002163))

(assert (=> b!1651729 m!1997815))

(assert (=> b!1651729 m!2002163))

(assert (=> b!1651729 m!2002147))

(declare-fun m!2002185 () Bool)

(assert (=> b!1651729 m!2002185))

(assert (=> d!498212 m!1997843))

(declare-fun m!2002187 () Bool)

(assert (=> d!498212 m!2002187))

(declare-fun m!2002189 () Bool)

(assert (=> d!498212 m!2002189))

(declare-fun m!2002191 () Bool)

(assert (=> d!498212 m!2002191))

(assert (=> d!498212 m!2002163))

(declare-fun m!2002193 () Bool)

(assert (=> d!498212 m!2002193))

(assert (=> d!498212 m!1997815))

(assert (=> d!498212 m!1998343))

(assert (=> d!498212 m!2002189))

(declare-fun m!2002195 () Bool)

(assert (=> d!498212 m!2002195))

(declare-fun m!2002197 () Bool)

(assert (=> d!498212 m!2002197))

(assert (=> d!498212 m!1997815))

(declare-fun m!2002199 () Bool)

(assert (=> d!498212 m!2002199))

(assert (=> d!498212 m!1998353))

(declare-fun m!2002201 () Bool)

(assert (=> d!498212 m!2002201))

(declare-fun m!2002203 () Bool)

(assert (=> d!498212 m!2002203))

(assert (=> d!498212 m!2002147))

(declare-fun m!2002205 () Bool)

(assert (=> d!498212 m!2002205))

(declare-fun m!2002207 () Bool)

(assert (=> d!498212 m!2002207))

(declare-fun m!2002209 () Bool)

(assert (=> d!498212 m!2002209))

(assert (=> d!498212 m!1998343))

(assert (=> d!498212 m!1998353))

(declare-fun m!2002211 () Bool)

(assert (=> d!498212 m!2002211))

(declare-fun m!2002213 () Bool)

(assert (=> d!498212 m!2002213))

(assert (=> d!498212 m!1998353))

(declare-fun m!2002215 () Bool)

(assert (=> d!498212 m!2002215))

(assert (=> d!498212 m!1997805))

(assert (=> d!498212 m!1998343))

(declare-fun m!2002217 () Bool)

(assert (=> d!498212 m!2002217))

(assert (=> d!498212 m!1998343))

(declare-fun m!2002219 () Bool)

(assert (=> d!498212 m!2002219))

(declare-fun m!2002221 () Bool)

(assert (=> d!498212 m!2002221))

(declare-fun m!2002223 () Bool)

(assert (=> d!498212 m!2002223))

(assert (=> d!498212 m!2002215))

(declare-fun m!2002225 () Bool)

(assert (=> d!498212 m!2002225))

(assert (=> d!498212 m!1998343))

(assert (=> d!498212 m!1998353))

(assert (=> d!498212 m!1998393))

(declare-fun m!2002227 () Bool)

(assert (=> d!498212 m!2002227))

(assert (=> d!498212 m!1998343))

(assert (=> d!498212 m!1998353))

(assert (=> d!498212 m!1998343))

(declare-fun m!2002229 () Bool)

(assert (=> d!498212 m!2002229))

(declare-fun m!2002231 () Bool)

(assert (=> d!498212 m!2002231))

(assert (=> d!498212 m!2002131))

(assert (=> d!498212 m!1997815))

(assert (=> d!498212 m!1998123))

(declare-fun m!2002233 () Bool)

(assert (=> d!498212 m!2002233))

(assert (=> d!498212 m!2002131))

(declare-fun m!2002235 () Bool)

(assert (=> d!498212 m!2002235))

(assert (=> d!498212 m!2002163))

(assert (=> d!498212 m!2002197))

(declare-fun m!2002237 () Bool)

(assert (=> d!498212 m!2002237))

(assert (=> d!498212 m!2002163))

(declare-fun m!2002239 () Bool)

(assert (=> d!498212 m!2002239))

(assert (=> d!498212 m!2002209))

(declare-fun m!2002241 () Bool)

(assert (=> d!498212 m!2002241))

(assert (=> d!498212 m!2002163))

(assert (=> d!498212 m!1997805))

(assert (=> d!498212 m!2002211))

(declare-fun m!2002243 () Bool)

(assert (=> d!498212 m!2002243))

(assert (=> d!498212 m!2002163))

(assert (=> d!498212 m!2002147))

(declare-fun m!2002245 () Bool)

(assert (=> b!1651732 m!2002245))

(declare-fun m!2002247 () Bool)

(assert (=> b!1651732 m!2002247))

(assert (=> b!1651732 m!2002163))

(assert (=> b!1651732 m!2002163))

(assert (=> b!1651732 m!2002147))

(declare-fun m!2002249 () Bool)

(assert (=> b!1651725 m!2002249))

(declare-fun m!2002251 () Bool)

(assert (=> b!1651725 m!2002251))

(assert (=> b!1649722 d!498212))

(declare-fun d!498246 () Bool)

(assert (=> d!498246 (= (list!7242 (_1!10343 lt!611892)) (list!7242 (prepend!775 (seqFromList!2162 (t!150807 (t!150807 (t!150807 tokens!457)))) (h!23613 (t!150807 (t!150807 tokens!457))))))))

(declare-fun lt!613498 () Unit!30315)

(assert (=> d!498246 (= lt!613498 (choose!9905 (h!23613 (t!150807 (t!150807 tokens!457))) (t!150807 (t!150807 (t!150807 tokens!457))) (_1!10343 lt!611892)))))

(assert (=> d!498246 (= (list!7242 (_1!10343 lt!611892)) (list!7242 (seqFromList!2162 ($colon$colon!368 (t!150807 (t!150807 (t!150807 tokens!457))) (h!23613 (t!150807 (t!150807 tokens!457)))))))))

(assert (=> d!498246 (= (seqFromListBHdTlConstructive!286 (h!23613 (t!150807 (t!150807 tokens!457))) (t!150807 (t!150807 (t!150807 tokens!457))) (_1!10343 lt!611892)) lt!613498)))

(declare-fun bs!396584 () Bool)

(assert (= bs!396584 d!498246))

(declare-fun m!2002253 () Bool)

(assert (=> bs!396584 m!2002253))

(assert (=> bs!396584 m!2002253))

(declare-fun m!2002255 () Bool)

(assert (=> bs!396584 m!2002255))

(assert (=> bs!396584 m!1998359))

(assert (=> bs!396584 m!1998381))

(assert (=> bs!396584 m!2002255))

(declare-fun m!2002257 () Bool)

(assert (=> bs!396584 m!2002257))

(assert (=> bs!396584 m!1998357))

(declare-fun m!2002259 () Bool)

(assert (=> bs!396584 m!2002259))

(assert (=> bs!396584 m!1998357))

(assert (=> bs!396584 m!1998359))

(assert (=> bs!396584 m!1998395))

(assert (=> b!1649722 d!498246))

(declare-fun d!498248 () Bool)

(assert (=> d!498248 (= (list!7241 lt!611909) (list!7244 (c!268209 lt!611909)))))

(declare-fun bs!396585 () Bool)

(assert (= bs!396585 d!498248))

(declare-fun m!2002261 () Bool)

(assert (=> bs!396585 m!2002261))

(assert (=> b!1649722 d!498248))

(declare-fun d!498250 () Bool)

(assert (=> d!498250 (= (head!3631 (originalCharacters!4025 (h!23613 (t!150807 (t!150807 tokens!457))))) (h!23610 (originalCharacters!4025 (h!23613 (t!150807 (t!150807 tokens!457))))))))

(assert (=> b!1649722 d!498250))

(declare-fun d!498252 () Bool)

(declare-fun e!1059177 () Bool)

(assert (=> d!498252 e!1059177))

(declare-fun res!740250 () Bool)

(assert (=> d!498252 (=> (not res!740250) (not e!1059177))))

(assert (=> d!498252 (= res!740250 (isBalanced!1861 (prepend!777 (c!268211 (seqFromList!2162 (t!150807 (t!150807 (t!150807 tokens!457))))) (h!23613 (t!150807 (t!150807 tokens!457))))))))

(declare-fun lt!613499 () BalanceConc!12086)

(assert (=> d!498252 (= lt!613499 (BalanceConc!12087 (prepend!777 (c!268211 (seqFromList!2162 (t!150807 (t!150807 (t!150807 tokens!457))))) (h!23613 (t!150807 (t!150807 tokens!457))))))))

(assert (=> d!498252 (= (prepend!775 (seqFromList!2162 (t!150807 (t!150807 (t!150807 tokens!457)))) (h!23613 (t!150807 (t!150807 tokens!457)))) lt!613499)))

(declare-fun b!1651746 () Bool)

(assert (=> b!1651746 (= e!1059177 (= (list!7242 lt!613499) (Cons!18212 (h!23613 (t!150807 (t!150807 tokens!457))) (list!7242 (seqFromList!2162 (t!150807 (t!150807 (t!150807 tokens!457))))))))))

(assert (= (and d!498252 res!740250) b!1651746))

(declare-fun m!2002263 () Bool)

(assert (=> d!498252 m!2002263))

(assert (=> d!498252 m!2002263))

(declare-fun m!2002265 () Bool)

(assert (=> d!498252 m!2002265))

(declare-fun m!2002267 () Bool)

(assert (=> b!1651746 m!2002267))

(assert (=> b!1651746 m!1998357))

(declare-fun m!2002269 () Bool)

(assert (=> b!1651746 m!2002269))

(assert (=> b!1649722 d!498252))

(declare-fun d!498254 () Bool)

(assert (=> d!498254 (= (seqFromList!2162 (t!150807 (t!150807 (t!150807 tokens!457)))) (fromListB!967 (t!150807 (t!150807 (t!150807 tokens!457)))))))

(declare-fun bs!396586 () Bool)

(assert (= bs!396586 d!498254))

(declare-fun m!2002271 () Bool)

(assert (=> bs!396586 m!2002271))

(assert (=> b!1649722 d!498254))

(declare-fun d!498256 () Bool)

(assert (=> d!498256 (= (get!5302 (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))) (v!24626 (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))))))

(assert (=> b!1649722 d!498256))

(assert (=> b!1649722 d!497394))

(declare-fun d!498258 () Bool)

(assert (=> d!498258 (= (head!3631 (list!7241 lt!611909)) (h!23610 (list!7241 lt!611909)))))

(assert (=> b!1649722 d!498258))

(declare-fun d!498260 () Bool)

(assert (=> d!498260 (= (list!7242 (_1!10343 lt!611892)) (list!7246 (c!268211 (_1!10343 lt!611892))))))

(declare-fun bs!396587 () Bool)

(assert (= bs!396587 d!498260))

(declare-fun m!2002273 () Bool)

(assert (=> bs!396587 m!2002273))

(assert (=> b!1649722 d!498260))

(declare-fun d!498262 () Bool)

(declare-fun lt!613500 () C!9252)

(assert (=> d!498262 (= lt!613500 (head!3631 (list!7241 lt!611909)))))

(assert (=> d!498262 (= lt!613500 (head!3635 (c!268209 lt!611909)))))

(assert (=> d!498262 (not (isEmpty!11247 lt!611909))))

(assert (=> d!498262 (= (head!3630 lt!611909) lt!613500)))

(declare-fun bs!396588 () Bool)

(assert (= bs!396588 d!498262))

(assert (=> bs!396588 m!1998353))

(assert (=> bs!396588 m!1998353))

(assert (=> bs!396588 m!1998355))

(declare-fun m!2002275 () Bool)

(assert (=> bs!396588 m!2002275))

(declare-fun m!2002277 () Bool)

(assert (=> bs!396588 m!2002277))

(assert (=> b!1649722 d!498262))

(declare-fun d!498264 () Bool)

(assert (=> d!498264 (= (isEmpty!11246 (_2!10345 (get!5302 (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))))) ((_ is Nil!18209) (_2!10345 (get!5302 (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))))))))

(assert (=> b!1649722 d!498264))

(declare-fun d!498266 () Bool)

(assert (=> d!498266 (= (list!7241 (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 (t!150807 tokens!457)))) 0))) (list!7244 (c!268209 (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 (t!150807 tokens!457)))) 0)))))))

(declare-fun bs!396589 () Bool)

(assert (= bs!396589 d!498266))

(declare-fun m!2002279 () Bool)

(assert (=> bs!396589 m!2002279))

(assert (=> b!1649722 d!498266))

(declare-fun d!498268 () Bool)

(declare-fun lt!613501 () BalanceConc!12084)

(assert (=> d!498268 (= (list!7241 lt!613501) (printList!953 thiss!17113 (list!7242 (seqFromList!2162 (t!150807 (t!150807 tokens!457))))))))

(assert (=> d!498268 (= lt!613501 (printTailRec!891 thiss!17113 (seqFromList!2162 (t!150807 (t!150807 tokens!457))) 0 (BalanceConc!12085 Empty!6070)))))

(assert (=> d!498268 (= (print!1371 thiss!17113 (seqFromList!2162 (t!150807 (t!150807 tokens!457)))) lt!613501)))

(declare-fun bs!396590 () Bool)

(assert (= bs!396590 d!498268))

(declare-fun m!2002281 () Bool)

(assert (=> bs!396590 m!2002281))

(assert (=> bs!396590 m!1997839))

(assert (=> bs!396590 m!1998459))

(assert (=> bs!396590 m!1998459))

(declare-fun m!2002283 () Bool)

(assert (=> bs!396590 m!2002283))

(assert (=> bs!396590 m!1997839))

(declare-fun m!2002285 () Bool)

(assert (=> bs!396590 m!2002285))

(assert (=> b!1649722 d!498268))

(declare-fun d!498270 () Bool)

(declare-fun e!1059178 () Bool)

(assert (=> d!498270 e!1059178))

(declare-fun res!740251 () Bool)

(assert (=> d!498270 (=> (not res!740251) (not e!1059178))))

(declare-fun lt!613502 () BalanceConc!12086)

(assert (=> d!498270 (= res!740251 (= (list!7242 lt!613502) (Cons!18212 (h!23613 (t!150807 tokens!457)) Nil!18212)))))

(assert (=> d!498270 (= lt!613502 (singleton!735 (h!23613 (t!150807 tokens!457))))))

(assert (=> d!498270 (= (singletonSeq!1695 (h!23613 (t!150807 tokens!457))) lt!613502)))

(declare-fun b!1651747 () Bool)

(assert (=> b!1651747 (= e!1059178 (isBalanced!1861 (c!268211 lt!613502)))))

(assert (= (and d!498270 res!740251) b!1651747))

(declare-fun m!2002287 () Bool)

(assert (=> d!498270 m!2002287))

(declare-fun m!2002289 () Bool)

(assert (=> d!498270 m!2002289))

(declare-fun m!2002291 () Bool)

(assert (=> b!1651747 m!2002291))

(assert (=> b!1649722 d!498270))

(declare-fun d!498272 () Bool)

(declare-fun lt!613503 () BalanceConc!12084)

(assert (=> d!498272 (= (list!7241 lt!613503) (printList!953 thiss!17113 (list!7242 (singletonSeq!1695 (h!23613 (t!150807 tokens!457))))))))

(assert (=> d!498272 (= lt!613503 (printTailRec!891 thiss!17113 (singletonSeq!1695 (h!23613 (t!150807 tokens!457))) 0 (BalanceConc!12085 Empty!6070)))))

(assert (=> d!498272 (= (print!1371 thiss!17113 (singletonSeq!1695 (h!23613 (t!150807 tokens!457)))) lt!613503)))

(declare-fun bs!396591 () Bool)

(assert (= bs!396591 d!498272))

(declare-fun m!2002293 () Bool)

(assert (=> bs!396591 m!2002293))

(assert (=> bs!396591 m!1998335))

(declare-fun m!2002295 () Bool)

(assert (=> bs!396591 m!2002295))

(assert (=> bs!396591 m!2002295))

(declare-fun m!2002297 () Bool)

(assert (=> bs!396591 m!2002297))

(assert (=> bs!396591 m!1998335))

(assert (=> bs!396591 m!1998339))

(assert (=> b!1649722 d!498272))

(declare-fun d!498274 () Bool)

(declare-fun lt!613504 () BalanceConc!12084)

(assert (=> d!498274 (= (list!7241 lt!613504) (originalCharacters!4025 (h!23613 (t!150807 (t!150807 tokens!457)))))))

(assert (=> d!498274 (= lt!613504 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457)))))) (value!101186 (h!23613 (t!150807 (t!150807 tokens!457))))))))

(assert (=> d!498274 (= (charsOf!1860 (h!23613 (t!150807 (t!150807 tokens!457)))) lt!613504)))

(declare-fun b_lambda!51903 () Bool)

(assert (=> (not b_lambda!51903) (not d!498274)))

(declare-fun tb!94591 () Bool)

(declare-fun t!150957 () Bool)

(assert (=> (and b!1649509 (= (toChars!4517 (transformation!3211 (h!23612 rules!1846))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457))))))) t!150957) tb!94591))

(declare-fun b!1651748 () Bool)

(declare-fun e!1059179 () Bool)

(declare-fun tp!477811 () Bool)

(assert (=> b!1651748 (= e!1059179 (and (inv!23573 (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457)))))) (value!101186 (h!23613 (t!150807 (t!150807 tokens!457))))))) tp!477811))))

(declare-fun result!114286 () Bool)

(assert (=> tb!94591 (= result!114286 (and (inv!23574 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457)))))) (value!101186 (h!23613 (t!150807 (t!150807 tokens!457)))))) e!1059179))))

(assert (= tb!94591 b!1651748))

(declare-fun m!2002299 () Bool)

(assert (=> b!1651748 m!2002299))

(declare-fun m!2002301 () Bool)

(assert (=> tb!94591 m!2002301))

(assert (=> d!498274 t!150957))

(declare-fun b_and!117285 () Bool)

(assert (= b_and!117269 (and (=> t!150957 result!114286) b_and!117285)))

(declare-fun t!150959 () Bool)

(declare-fun tb!94593 () Bool)

(assert (=> (and b!1649522 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457))))))) t!150959) tb!94593))

(declare-fun result!114288 () Bool)

(assert (= result!114288 result!114286))

(assert (=> d!498274 t!150959))

(declare-fun b_and!117287 () Bool)

(assert (= b_and!117271 (and (=> t!150959 result!114288) b_and!117287)))

(declare-fun t!150961 () Bool)

(declare-fun tb!94595 () Bool)

(assert (=> (and b!1650076 (= (toChars!4517 (transformation!3211 (h!23612 (t!150806 rules!1846)))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457))))))) t!150961) tb!94595))

(declare-fun result!114290 () Bool)

(assert (= result!114290 result!114286))

(assert (=> d!498274 t!150961))

(declare-fun b_and!117289 () Bool)

(assert (= b_and!117273 (and (=> t!150961 result!114290) b_and!117289)))

(declare-fun t!150963 () Bool)

(declare-fun tb!94597 () Bool)

(assert (=> (and b!1650090 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457))))))) t!150963) tb!94597))

(declare-fun result!114292 () Bool)

(assert (= result!114292 result!114286))

(assert (=> d!498274 t!150963))

(declare-fun b_and!117291 () Bool)

(assert (= b_and!117275 (and (=> t!150963 result!114292) b_and!117291)))

(declare-fun m!2002303 () Bool)

(assert (=> d!498274 m!2002303))

(declare-fun m!2002305 () Bool)

(assert (=> d!498274 m!2002305))

(assert (=> b!1649722 d!498274))

(declare-fun b!1651756 () Bool)

(declare-fun e!1059182 () Unit!30315)

(declare-fun Unit!30413 () Unit!30315)

(assert (=> b!1651756 (= e!1059182 Unit!30413)))

(declare-fun b!1651754 () Bool)

(declare-fun lt!613523 () Token!5988)

(declare-fun e!1059183 () Bool)

(assert (=> b!1651754 (= e!1059183 (= (rule!5069 lt!613523) (get!5304 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!613523))))))))

(declare-fun b!1651755 () Bool)

(declare-fun Unit!30414 () Unit!30315)

(assert (=> b!1651755 (= e!1059182 Unit!30414)))

(declare-fun lt!613519 () List!18279)

(assert (=> b!1651755 (= lt!613519 (++!4922 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) (list!7241 lt!611909)))))

(declare-fun lt!613507 () Unit!30315)

(assert (=> b!1651755 (= lt!613507 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!210 thiss!17113 (rule!5069 lt!613523) rules!1846 lt!613519))))

(assert (=> b!1651755 (isEmpty!11244 (maxPrefixOneRule!811 thiss!17113 (rule!5069 lt!613523) lt!613519))))

(declare-fun lt!613514 () Unit!30315)

(assert (=> b!1651755 (= lt!613514 lt!613507)))

(declare-fun lt!613522 () List!18279)

(assert (=> b!1651755 (= lt!613522 (list!7241 (charsOf!1860 lt!613523)))))

(declare-fun lt!613508 () Unit!30315)

(assert (=> b!1651755 (= lt!613508 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!206 thiss!17113 (rule!5069 lt!613523) lt!613522 (++!4922 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) (list!7241 lt!611909))))))

(assert (=> b!1651755 (not (matchR!2032 (regex!3211 (rule!5069 lt!613523)) lt!613522))))

(declare-fun lt!613516 () Unit!30315)

(assert (=> b!1651755 (= lt!613516 lt!613508)))

(assert (=> b!1651755 false))

(declare-fun d!498276 () Bool)

(assert (=> d!498276 (isDefined!2813 (maxPrefix!1402 thiss!17113 rules!1846 (++!4922 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) (list!7241 lt!611909))))))

(declare-fun lt!613509 () Unit!30315)

(assert (=> d!498276 (= lt!613509 e!1059182)))

(declare-fun c!268759 () Bool)

(assert (=> d!498276 (= c!268759 (isEmpty!11244 (maxPrefix!1402 thiss!17113 rules!1846 (++!4922 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) (list!7241 lt!611909)))))))

(declare-fun lt!613518 () Unit!30315)

(declare-fun lt!613513 () Unit!30315)

(assert (=> d!498276 (= lt!613518 lt!613513)))

(assert (=> d!498276 e!1059183))

(declare-fun res!740256 () Bool)

(assert (=> d!498276 (=> (not res!740256) (not e!1059183))))

(assert (=> d!498276 (= res!740256 (isDefined!2815 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!613523)))))))

(assert (=> d!498276 (= lt!613513 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!316 thiss!17113 rules!1846 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) lt!613523))))

(declare-fun lt!613521 () Unit!30315)

(declare-fun lt!613515 () Unit!30315)

(assert (=> d!498276 (= lt!613521 lt!613515)))

(declare-fun lt!613510 () List!18279)

(assert (=> d!498276 (isPrefix!1469 lt!613510 (++!4922 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) (list!7241 lt!611909)))))

(assert (=> d!498276 (= lt!613515 (lemmaPrefixStaysPrefixWhenAddingToSuffix!202 lt!613510 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) (list!7241 lt!611909)))))

(assert (=> d!498276 (= lt!613510 (list!7241 (charsOf!1860 lt!613523)))))

(declare-fun lt!613512 () Unit!30315)

(declare-fun lt!613511 () Unit!30315)

(assert (=> d!498276 (= lt!613512 lt!613511)))

(declare-fun lt!613517 () List!18279)

(declare-fun lt!613520 () List!18279)

(assert (=> d!498276 (isPrefix!1469 lt!613517 (++!4922 lt!613517 lt!613520))))

(assert (=> d!498276 (= lt!613511 (lemmaConcatTwoListThenFirstIsPrefix!994 lt!613517 lt!613520))))

(assert (=> d!498276 (= lt!613520 (_2!10345 (get!5302 (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457))))))))))

(assert (=> d!498276 (= lt!613517 (list!7241 (charsOf!1860 lt!613523)))))

(assert (=> d!498276 (= lt!613523 (head!3634 (list!7242 (_1!10343 (lex!1324 thiss!17113 rules!1846 (seqFromList!2161 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457))))))))))))

(assert (=> d!498276 (not (isEmpty!11239 rules!1846))))

(assert (=> d!498276 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!408 thiss!17113 rules!1846 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) (list!7241 lt!611909)) lt!613509)))

(declare-fun b!1651753 () Bool)

(declare-fun res!740257 () Bool)

(assert (=> b!1651753 (=> (not res!740257) (not e!1059183))))

(assert (=> b!1651753 (= res!740257 (matchR!2032 (regex!3211 (get!5304 (getRuleFromTag!316 thiss!17113 rules!1846 (tag!3491 (rule!5069 lt!613523))))) (list!7241 (charsOf!1860 lt!613523))))))

(assert (= (and d!498276 res!740256) b!1651753))

(assert (= (and b!1651753 res!740257) b!1651754))

(assert (= (and d!498276 c!268759) b!1651755))

(assert (= (and d!498276 (not c!268759)) b!1651756))

(declare-fun m!2002307 () Bool)

(assert (=> b!1651754 m!2002307))

(assert (=> b!1651754 m!2002307))

(declare-fun m!2002309 () Bool)

(assert (=> b!1651754 m!2002309))

(assert (=> b!1651755 m!2002211))

(declare-fun m!2002311 () Bool)

(assert (=> b!1651755 m!2002311))

(declare-fun m!2002313 () Bool)

(assert (=> b!1651755 m!2002313))

(assert (=> b!1651755 m!2002313))

(declare-fun m!2002315 () Bool)

(assert (=> b!1651755 m!2002315))

(declare-fun m!2002317 () Bool)

(assert (=> b!1651755 m!2002317))

(declare-fun m!2002319 () Bool)

(assert (=> b!1651755 m!2002319))

(declare-fun m!2002321 () Bool)

(assert (=> b!1651755 m!2002321))

(declare-fun m!2002323 () Bool)

(assert (=> b!1651755 m!2002323))

(assert (=> b!1651755 m!1998343))

(assert (=> b!1651755 m!1998353))

(assert (=> b!1651755 m!2002211))

(assert (=> b!1651755 m!2002317))

(declare-fun m!2002325 () Bool)

(assert (=> d!498276 m!2002325))

(declare-fun m!2002327 () Bool)

(assert (=> d!498276 m!2002327))

(declare-fun m!2002329 () Bool)

(assert (=> d!498276 m!2002329))

(declare-fun m!2002331 () Bool)

(assert (=> d!498276 m!2002331))

(assert (=> d!498276 m!2002313))

(assert (=> d!498276 m!1997843))

(assert (=> d!498276 m!2002313))

(assert (=> d!498276 m!2002315))

(assert (=> d!498276 m!2002307))

(declare-fun m!2002333 () Bool)

(assert (=> d!498276 m!2002333))

(assert (=> d!498276 m!1998343))

(assert (=> d!498276 m!1998353))

(assert (=> d!498276 m!2002211))

(assert (=> d!498276 m!2002325))

(assert (=> d!498276 m!2002307))

(assert (=> d!498276 m!1998343))

(assert (=> d!498276 m!1998353))

(declare-fun m!2002335 () Bool)

(assert (=> d!498276 m!2002335))

(declare-fun m!2002337 () Bool)

(assert (=> d!498276 m!2002337))

(declare-fun m!2002339 () Bool)

(assert (=> d!498276 m!2002339))

(assert (=> d!498276 m!2002211))

(assert (=> d!498276 m!2002243))

(assert (=> d!498276 m!1998345))

(assert (=> d!498276 m!1998361))

(assert (=> d!498276 m!1998343))

(declare-fun m!2002341 () Bool)

(assert (=> d!498276 m!2002341))

(declare-fun m!2002343 () Bool)

(assert (=> d!498276 m!2002343))

(assert (=> d!498276 m!2002329))

(assert (=> d!498276 m!2002211))

(declare-fun m!2002345 () Bool)

(assert (=> d!498276 m!2002345))

(assert (=> d!498276 m!2002243))

(declare-fun m!2002349 () Bool)

(assert (=> d!498276 m!2002349))

(assert (=> d!498276 m!2002243))

(declare-fun m!2002351 () Bool)

(assert (=> d!498276 m!2002351))

(assert (=> d!498276 m!1998343))

(assert (=> d!498276 m!2002337))

(assert (=> d!498276 m!1998343))

(assert (=> d!498276 m!1998345))

(assert (=> b!1651753 m!2002313))

(assert (=> b!1651753 m!2002307))

(assert (=> b!1651753 m!2002309))

(assert (=> b!1651753 m!2002315))

(declare-fun m!2002353 () Bool)

(assert (=> b!1651753 m!2002353))

(assert (=> b!1651753 m!2002313))

(assert (=> b!1651753 m!2002315))

(assert (=> b!1651753 m!2002307))

(assert (=> b!1649722 d!498276))

(declare-fun b!1651759 () Bool)

(declare-fun e!1059187 () Bool)

(declare-fun e!1059186 () Bool)

(assert (=> b!1651759 (= e!1059187 e!1059186)))

(declare-fun res!740260 () Bool)

(assert (=> b!1651759 (=> (not res!740260) (not e!1059186))))

(assert (=> b!1651759 (= res!740260 (not ((_ is Nil!18209) (++!4922 lt!611894 lt!611917))))))

(declare-fun b!1651761 () Bool)

(assert (=> b!1651761 (= e!1059186 (isPrefix!1469 (tail!2444 lt!611894) (tail!2444 (++!4922 lt!611894 lt!611917))))))

(declare-fun b!1651760 () Bool)

(declare-fun res!740261 () Bool)

(assert (=> b!1651760 (=> (not res!740261) (not e!1059186))))

(assert (=> b!1651760 (= res!740261 (= (head!3631 lt!611894) (head!3631 (++!4922 lt!611894 lt!611917))))))

(declare-fun b!1651762 () Bool)

(declare-fun e!1059185 () Bool)

(assert (=> b!1651762 (= e!1059185 (>= (size!14501 (++!4922 lt!611894 lt!611917)) (size!14501 lt!611894)))))

(declare-fun d!498280 () Bool)

(assert (=> d!498280 e!1059185))

(declare-fun res!740263 () Bool)

(assert (=> d!498280 (=> res!740263 e!1059185)))

(declare-fun lt!613525 () Bool)

(assert (=> d!498280 (= res!740263 (not lt!613525))))

(assert (=> d!498280 (= lt!613525 e!1059187)))

(declare-fun res!740262 () Bool)

(assert (=> d!498280 (=> res!740262 e!1059187)))

(assert (=> d!498280 (= res!740262 ((_ is Nil!18209) lt!611894))))

(assert (=> d!498280 (= (isPrefix!1469 lt!611894 (++!4922 lt!611894 lt!611917)) lt!613525)))

(assert (= (and d!498280 (not res!740262)) b!1651759))

(assert (= (and b!1651759 res!740260) b!1651760))

(assert (= (and b!1651760 res!740261) b!1651761))

(assert (= (and d!498280 (not res!740263)) b!1651762))

(declare-fun m!2002355 () Bool)

(assert (=> b!1651761 m!2002355))

(assert (=> b!1651761 m!1998351))

(declare-fun m!2002357 () Bool)

(assert (=> b!1651761 m!2002357))

(assert (=> b!1651761 m!2002355))

(assert (=> b!1651761 m!2002357))

(declare-fun m!2002359 () Bool)

(assert (=> b!1651761 m!2002359))

(declare-fun m!2002361 () Bool)

(assert (=> b!1651760 m!2002361))

(assert (=> b!1651760 m!1998351))

(declare-fun m!2002363 () Bool)

(assert (=> b!1651760 m!2002363))

(assert (=> b!1651762 m!1998351))

(declare-fun m!2002365 () Bool)

(assert (=> b!1651762 m!2002365))

(declare-fun m!2002367 () Bool)

(assert (=> b!1651762 m!2002367))

(assert (=> b!1649722 d!498280))

(assert (=> b!1649722 d!497332))

(declare-fun b!1651763 () Bool)

(declare-fun res!740266 () Bool)

(declare-fun e!1059188 () Bool)

(assert (=> b!1651763 (=> (not res!740266) (not e!1059188))))

(declare-fun lt!613526 () Option!3458)

(assert (=> b!1651763 (= res!740266 (= (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!613526)))) (originalCharacters!4025 (_1!10345 (get!5302 lt!613526)))))))

(declare-fun d!498282 () Bool)

(declare-fun e!1059189 () Bool)

(assert (=> d!498282 e!1059189))

(declare-fun res!740270 () Bool)

(assert (=> d!498282 (=> res!740270 e!1059189)))

(assert (=> d!498282 (= res!740270 (isEmpty!11244 lt!613526))))

(declare-fun e!1059190 () Option!3458)

(assert (=> d!498282 (= lt!613526 e!1059190)))

(declare-fun c!268760 () Bool)

(assert (=> d!498282 (= c!268760 (and ((_ is Cons!18211) rules!1846) ((_ is Nil!18211) (t!150806 rules!1846))))))

(declare-fun lt!613530 () Unit!30315)

(declare-fun lt!613529 () Unit!30315)

(assert (=> d!498282 (= lt!613530 lt!613529)))

(assert (=> d!498282 (isPrefix!1469 (list!7241 lt!611903) (list!7241 lt!611903))))

(assert (=> d!498282 (= lt!613529 (lemmaIsPrefixRefl!995 (list!7241 lt!611903) (list!7241 lt!611903)))))

(assert (=> d!498282 (rulesValidInductive!1017 thiss!17113 rules!1846)))

(assert (=> d!498282 (= (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 lt!611903)) lt!613526)))

(declare-fun b!1651764 () Bool)

(declare-fun res!740268 () Bool)

(assert (=> b!1651764 (=> (not res!740268) (not e!1059188))))

(assert (=> b!1651764 (= res!740268 (< (size!14501 (_2!10345 (get!5302 lt!613526))) (size!14501 (list!7241 lt!611903))))))

(declare-fun b!1651765 () Bool)

(declare-fun res!740269 () Bool)

(assert (=> b!1651765 (=> (not res!740269) (not e!1059188))))

(assert (=> b!1651765 (= res!740269 (= (++!4922 (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!613526)))) (_2!10345 (get!5302 lt!613526))) (list!7241 lt!611903)))))

(declare-fun b!1651766 () Bool)

(assert (=> b!1651766 (= e!1059188 (contains!3174 rules!1846 (rule!5069 (_1!10345 (get!5302 lt!613526)))))))

(declare-fun b!1651767 () Bool)

(declare-fun res!740267 () Bool)

(assert (=> b!1651767 (=> (not res!740267) (not e!1059188))))

(assert (=> b!1651767 (= res!740267 (matchR!2032 (regex!3211 (rule!5069 (_1!10345 (get!5302 lt!613526)))) (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!613526))))))))

(declare-fun b!1651768 () Bool)

(assert (=> b!1651768 (= e!1059189 e!1059188)))

(declare-fun res!740265 () Bool)

(assert (=> b!1651768 (=> (not res!740265) (not e!1059188))))

(assert (=> b!1651768 (= res!740265 (isDefined!2813 lt!613526))))

(declare-fun call!106031 () Option!3458)

(declare-fun bm!106026 () Bool)

(assert (=> bm!106026 (= call!106031 (maxPrefixOneRule!811 thiss!17113 (h!23612 rules!1846) (list!7241 lt!611903)))))

(declare-fun b!1651769 () Bool)

(assert (=> b!1651769 (= e!1059190 call!106031)))

(declare-fun b!1651770 () Bool)

(declare-fun lt!613527 () Option!3458)

(declare-fun lt!613528 () Option!3458)

(assert (=> b!1651770 (= e!1059190 (ite (and ((_ is None!3457) lt!613527) ((_ is None!3457) lt!613528)) None!3457 (ite ((_ is None!3457) lt!613528) lt!613527 (ite ((_ is None!3457) lt!613527) lt!613528 (ite (>= (size!14498 (_1!10345 (v!24626 lt!613527))) (size!14498 (_1!10345 (v!24626 lt!613528)))) lt!613527 lt!613528)))))))

(assert (=> b!1651770 (= lt!613527 call!106031)))

(assert (=> b!1651770 (= lt!613528 (maxPrefix!1402 thiss!17113 (t!150806 rules!1846) (list!7241 lt!611903)))))

(declare-fun b!1651771 () Bool)

(declare-fun res!740264 () Bool)

(assert (=> b!1651771 (=> (not res!740264) (not e!1059188))))

(assert (=> b!1651771 (= res!740264 (= (value!101186 (_1!10345 (get!5302 lt!613526))) (apply!4804 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!613526)))) (seqFromList!2161 (originalCharacters!4025 (_1!10345 (get!5302 lt!613526)))))))))

(assert (= (and d!498282 c!268760) b!1651769))

(assert (= (and d!498282 (not c!268760)) b!1651770))

(assert (= (or b!1651769 b!1651770) bm!106026))

(assert (= (and d!498282 (not res!740270)) b!1651768))

(assert (= (and b!1651768 res!740265) b!1651763))

(assert (= (and b!1651763 res!740266) b!1651764))

(assert (= (and b!1651764 res!740268) b!1651765))

(assert (= (and b!1651765 res!740269) b!1651771))

(assert (= (and b!1651771 res!740264) b!1651767))

(assert (= (and b!1651767 res!740267) b!1651766))

(declare-fun m!2002369 () Bool)

(assert (=> b!1651765 m!2002369))

(declare-fun m!2002371 () Bool)

(assert (=> b!1651765 m!2002371))

(assert (=> b!1651765 m!2002371))

(declare-fun m!2002373 () Bool)

(assert (=> b!1651765 m!2002373))

(assert (=> b!1651765 m!2002373))

(declare-fun m!2002375 () Bool)

(assert (=> b!1651765 m!2002375))

(assert (=> b!1651767 m!2002369))

(assert (=> b!1651767 m!2002371))

(assert (=> b!1651767 m!2002371))

(assert (=> b!1651767 m!2002373))

(assert (=> b!1651767 m!2002373))

(declare-fun m!2002381 () Bool)

(assert (=> b!1651767 m!2002381))

(declare-fun m!2002383 () Bool)

(assert (=> d!498282 m!2002383))

(assert (=> d!498282 m!1998363))

(assert (=> d!498282 m!1998363))

(declare-fun m!2002385 () Bool)

(assert (=> d!498282 m!2002385))

(assert (=> d!498282 m!1998363))

(assert (=> d!498282 m!1998363))

(declare-fun m!2002387 () Bool)

(assert (=> d!498282 m!2002387))

(assert (=> d!498282 m!1997961))

(assert (=> b!1651766 m!2002369))

(declare-fun m!2002389 () Bool)

(assert (=> b!1651766 m!2002389))

(assert (=> b!1651763 m!2002369))

(assert (=> b!1651763 m!2002371))

(assert (=> b!1651763 m!2002371))

(assert (=> b!1651763 m!2002373))

(assert (=> b!1651770 m!1998363))

(declare-fun m!2002391 () Bool)

(assert (=> b!1651770 m!2002391))

(assert (=> b!1651771 m!2002369))

(declare-fun m!2002393 () Bool)

(assert (=> b!1651771 m!2002393))

(assert (=> b!1651771 m!2002393))

(declare-fun m!2002395 () Bool)

(assert (=> b!1651771 m!2002395))

(assert (=> b!1651764 m!2002369))

(declare-fun m!2002401 () Bool)

(assert (=> b!1651764 m!2002401))

(assert (=> b!1651764 m!1998363))

(declare-fun m!2002403 () Bool)

(assert (=> b!1651764 m!2002403))

(assert (=> bm!106026 m!1998363))

(declare-fun m!2002407 () Bool)

(assert (=> bm!106026 m!2002407))

(declare-fun m!2002411 () Bool)

(assert (=> b!1651768 m!2002411))

(assert (=> b!1649722 d!498282))

(assert (=> b!1649722 d!498126))

(declare-fun b!1651776 () Bool)

(declare-fun res!740277 () Bool)

(declare-fun e!1059194 () Bool)

(assert (=> b!1651776 (=> (not res!740277) (not e!1059194))))

(declare-fun lt!613535 () Option!3458)

(assert (=> b!1651776 (= res!740277 (= (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!613535)))) (originalCharacters!4025 (_1!10345 (get!5302 lt!613535)))))))

(declare-fun d!498286 () Bool)

(declare-fun e!1059195 () Bool)

(assert (=> d!498286 e!1059195))

(declare-fun res!740281 () Bool)

(assert (=> d!498286 (=> res!740281 e!1059195)))

(assert (=> d!498286 (= res!740281 (isEmpty!11244 lt!613535))))

(declare-fun e!1059196 () Option!3458)

(assert (=> d!498286 (= lt!613535 e!1059196)))

(declare-fun c!268761 () Bool)

(assert (=> d!498286 (= c!268761 (and ((_ is Cons!18211) rules!1846) ((_ is Nil!18211) (t!150806 rules!1846))))))

(declare-fun lt!613539 () Unit!30315)

(declare-fun lt!613538 () Unit!30315)

(assert (=> d!498286 (= lt!613539 lt!613538)))

(assert (=> d!498286 (isPrefix!1469 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))))

(assert (=> d!498286 (= lt!613538 (lemmaIsPrefixRefl!995 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))) (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457))))))))

(assert (=> d!498286 (rulesValidInductive!1017 thiss!17113 rules!1846)))

(assert (=> d!498286 (= (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457))))) lt!613535)))

(declare-fun b!1651777 () Bool)

(declare-fun res!740279 () Bool)

(assert (=> b!1651777 (=> (not res!740279) (not e!1059194))))

(assert (=> b!1651777 (= res!740279 (< (size!14501 (_2!10345 (get!5302 lt!613535))) (size!14501 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))))))

(declare-fun b!1651778 () Bool)

(declare-fun res!740280 () Bool)

(assert (=> b!1651778 (=> (not res!740280) (not e!1059194))))

(assert (=> b!1651778 (= res!740280 (= (++!4922 (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!613535)))) (_2!10345 (get!5302 lt!613535))) (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457))))))))

(declare-fun b!1651779 () Bool)

(assert (=> b!1651779 (= e!1059194 (contains!3174 rules!1846 (rule!5069 (_1!10345 (get!5302 lt!613535)))))))

(declare-fun b!1651780 () Bool)

(declare-fun res!740278 () Bool)

(assert (=> b!1651780 (=> (not res!740278) (not e!1059194))))

(assert (=> b!1651780 (= res!740278 (matchR!2032 (regex!3211 (rule!5069 (_1!10345 (get!5302 lt!613535)))) (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!613535))))))))

(declare-fun b!1651781 () Bool)

(assert (=> b!1651781 (= e!1059195 e!1059194)))

(declare-fun res!740276 () Bool)

(assert (=> b!1651781 (=> (not res!740276) (not e!1059194))))

(assert (=> b!1651781 (= res!740276 (isDefined!2813 lt!613535))))

(declare-fun call!106032 () Option!3458)

(declare-fun bm!106027 () Bool)

(assert (=> bm!106027 (= call!106032 (maxPrefixOneRule!811 thiss!17113 (h!23612 rules!1846) (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457))))))))

(declare-fun b!1651782 () Bool)

(assert (=> b!1651782 (= e!1059196 call!106032)))

(declare-fun b!1651783 () Bool)

(declare-fun lt!613536 () Option!3458)

(declare-fun lt!613537 () Option!3458)

(assert (=> b!1651783 (= e!1059196 (ite (and ((_ is None!3457) lt!613536) ((_ is None!3457) lt!613537)) None!3457 (ite ((_ is None!3457) lt!613537) lt!613536 (ite ((_ is None!3457) lt!613536) lt!613537 (ite (>= (size!14498 (_1!10345 (v!24626 lt!613536))) (size!14498 (_1!10345 (v!24626 lt!613537)))) lt!613536 lt!613537)))))))

(assert (=> b!1651783 (= lt!613536 call!106032)))

(assert (=> b!1651783 (= lt!613537 (maxPrefix!1402 thiss!17113 (t!150806 rules!1846) (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457))))))))

(declare-fun b!1651784 () Bool)

(declare-fun res!740275 () Bool)

(assert (=> b!1651784 (=> (not res!740275) (not e!1059194))))

(assert (=> b!1651784 (= res!740275 (= (value!101186 (_1!10345 (get!5302 lt!613535))) (apply!4804 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!613535)))) (seqFromList!2161 (originalCharacters!4025 (_1!10345 (get!5302 lt!613535)))))))))

(assert (= (and d!498286 c!268761) b!1651782))

(assert (= (and d!498286 (not c!268761)) b!1651783))

(assert (= (or b!1651782 b!1651783) bm!106027))

(assert (= (and d!498286 (not res!740281)) b!1651781))

(assert (= (and b!1651781 res!740276) b!1651776))

(assert (= (and b!1651776 res!740277) b!1651777))

(assert (= (and b!1651777 res!740279) b!1651778))

(assert (= (and b!1651778 res!740280) b!1651784))

(assert (= (and b!1651784 res!740275) b!1651780))

(assert (= (and b!1651780 res!740278) b!1651779))

(declare-fun m!2002433 () Bool)

(assert (=> b!1651778 m!2002433))

(declare-fun m!2002435 () Bool)

(assert (=> b!1651778 m!2002435))

(assert (=> b!1651778 m!2002435))

(declare-fun m!2002437 () Bool)

(assert (=> b!1651778 m!2002437))

(assert (=> b!1651778 m!2002437))

(declare-fun m!2002439 () Bool)

(assert (=> b!1651778 m!2002439))

(assert (=> b!1651780 m!2002433))

(assert (=> b!1651780 m!2002435))

(assert (=> b!1651780 m!2002435))

(assert (=> b!1651780 m!2002437))

(assert (=> b!1651780 m!2002437))

(declare-fun m!2002441 () Bool)

(assert (=> b!1651780 m!2002441))

(declare-fun m!2002443 () Bool)

(assert (=> d!498286 m!2002443))

(assert (=> d!498286 m!1998343))

(assert (=> d!498286 m!1998343))

(declare-fun m!2002445 () Bool)

(assert (=> d!498286 m!2002445))

(assert (=> d!498286 m!1998343))

(assert (=> d!498286 m!1998343))

(declare-fun m!2002447 () Bool)

(assert (=> d!498286 m!2002447))

(assert (=> d!498286 m!1997961))

(assert (=> b!1651779 m!2002433))

(declare-fun m!2002449 () Bool)

(assert (=> b!1651779 m!2002449))

(assert (=> b!1651776 m!2002433))

(assert (=> b!1651776 m!2002435))

(assert (=> b!1651776 m!2002435))

(assert (=> b!1651776 m!2002437))

(assert (=> b!1651783 m!1998343))

(declare-fun m!2002451 () Bool)

(assert (=> b!1651783 m!2002451))

(assert (=> b!1651784 m!2002433))

(declare-fun m!2002453 () Bool)

(assert (=> b!1651784 m!2002453))

(assert (=> b!1651784 m!2002453))

(declare-fun m!2002455 () Bool)

(assert (=> b!1651784 m!2002455))

(assert (=> b!1651777 m!2002433))

(declare-fun m!2002457 () Bool)

(assert (=> b!1651777 m!2002457))

(assert (=> b!1651777 m!1998343))

(assert (=> b!1651777 m!2000753))

(assert (=> bm!106027 m!1998343))

(declare-fun m!2002463 () Bool)

(assert (=> bm!106027 m!2002463))

(declare-fun m!2002467 () Bool)

(assert (=> b!1651781 m!2002467))

(assert (=> b!1649722 d!498286))

(declare-fun d!498296 () Bool)

(assert (=> d!498296 (= (isDefined!2813 (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457)))))) (not (isEmpty!11244 (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 (charsOf!1860 (h!23613 (t!150807 tokens!457))))))))))

(declare-fun bs!396594 () Bool)

(assert (= bs!396594 d!498296))

(assert (=> bs!396594 m!1998345))

(declare-fun m!2002473 () Bool)

(assert (=> bs!396594 m!2002473))

(assert (=> b!1649722 d!498296))

(declare-fun d!498298 () Bool)

(declare-fun e!1059203 () Bool)

(assert (=> d!498298 e!1059203))

(declare-fun res!740293 () Bool)

(assert (=> d!498298 (=> (not res!740293) (not e!1059203))))

(assert (=> d!498298 (= res!740293 (= (list!7242 (_1!10343 (lex!1324 thiss!17113 rules!1846 (print!1371 thiss!17113 (seqFromList!2162 (t!150807 (t!150807 tokens!457))))))) (t!150807 (t!150807 tokens!457))))))

(declare-fun lt!613554 () Unit!30315)

(declare-fun e!1059204 () Unit!30315)

(assert (=> d!498298 (= lt!613554 e!1059204)))

(declare-fun c!268763 () Bool)

(assert (=> d!498298 (= c!268763 (or ((_ is Nil!18212) (t!150807 (t!150807 tokens!457))) ((_ is Nil!18212) (t!150807 (t!150807 (t!150807 tokens!457))))))))

(assert (=> d!498298 (not (isEmpty!11239 rules!1846))))

(assert (=> d!498298 (= (theoremInvertabilityWhenTokenListSeparable!283 thiss!17113 rules!1846 (t!150807 (t!150807 tokens!457))) lt!613554)))

(declare-fun b!1651798 () Bool)

(declare-fun Unit!30415 () Unit!30315)

(assert (=> b!1651798 (= e!1059204 Unit!30415)))

(declare-fun b!1651799 () Bool)

(declare-fun Unit!30416 () Unit!30315)

(assert (=> b!1651799 (= e!1059204 Unit!30416)))

(declare-fun lt!613558 () BalanceConc!12084)

(assert (=> b!1651799 (= lt!613558 (print!1371 thiss!17113 (seqFromList!2162 (t!150807 (t!150807 tokens!457)))))))

(declare-fun lt!613564 () BalanceConc!12084)

(assert (=> b!1651799 (= lt!613564 (print!1371 thiss!17113 (seqFromList!2162 (t!150807 (t!150807 (t!150807 tokens!457))))))))

(declare-fun lt!613547 () tuple2!17882)

(assert (=> b!1651799 (= lt!613547 (lex!1324 thiss!17113 rules!1846 lt!613564))))

(declare-fun lt!613549 () List!18279)

(assert (=> b!1651799 (= lt!613549 (list!7241 (charsOf!1860 (h!23613 (t!150807 (t!150807 tokens!457))))))))

(declare-fun lt!613572 () List!18279)

(assert (=> b!1651799 (= lt!613572 (list!7241 lt!613564))))

(declare-fun lt!613565 () Unit!30315)

(assert (=> b!1651799 (= lt!613565 (lemmaConcatTwoListThenFirstIsPrefix!994 lt!613549 lt!613572))))

(assert (=> b!1651799 (isPrefix!1469 lt!613549 (++!4922 lt!613549 lt!613572))))

(declare-fun lt!613561 () Unit!30315)

(assert (=> b!1651799 (= lt!613561 lt!613565)))

(declare-fun lt!613552 () Unit!30315)

(assert (=> b!1651799 (= lt!613552 (theoremInvertabilityWhenTokenListSeparable!283 thiss!17113 rules!1846 (t!150807 (t!150807 (t!150807 tokens!457)))))))

(declare-fun lt!613557 () Unit!30315)

(assert (=> b!1651799 (= lt!613557 (seqFromListBHdTlConstructive!286 (h!23613 (t!150807 (t!150807 (t!150807 tokens!457)))) (t!150807 (t!150807 (t!150807 (t!150807 tokens!457)))) (_1!10343 lt!613547)))))

(assert (=> b!1651799 (= (list!7242 (_1!10343 lt!613547)) (list!7242 (prepend!775 (seqFromList!2162 (t!150807 (t!150807 (t!150807 (t!150807 tokens!457))))) (h!23613 (t!150807 (t!150807 (t!150807 tokens!457)))))))))

(declare-fun lt!613555 () Unit!30315)

(assert (=> b!1651799 (= lt!613555 lt!613557)))

(declare-fun lt!613568 () Option!3458)

(assert (=> b!1651799 (= lt!613568 (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 lt!613558)))))

(assert (=> b!1651799 (= (print!1371 thiss!17113 (singletonSeq!1695 (h!23613 (t!150807 (t!150807 tokens!457))))) (printTailRec!891 thiss!17113 (singletonSeq!1695 (h!23613 (t!150807 (t!150807 tokens!457)))) 0 (BalanceConc!12085 Empty!6070)))))

(declare-fun lt!613548 () Unit!30315)

(declare-fun Unit!30417 () Unit!30315)

(assert (=> b!1651799 (= lt!613548 Unit!30417)))

(declare-fun lt!613559 () Unit!30315)

(assert (=> b!1651799 (= lt!613559 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!408 thiss!17113 rules!1846 (list!7241 (charsOf!1860 (h!23613 (t!150807 (t!150807 tokens!457))))) (list!7241 lt!613564)))))

(assert (=> b!1651799 (= (list!7241 (charsOf!1860 (h!23613 (t!150807 (t!150807 tokens!457))))) (originalCharacters!4025 (h!23613 (t!150807 (t!150807 tokens!457)))))))

(declare-fun lt!613562 () Unit!30315)

(declare-fun Unit!30418 () Unit!30315)

(assert (=> b!1651799 (= lt!613562 Unit!30418)))

(assert (=> b!1651799 (= (list!7241 (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 (t!150807 (t!150807 tokens!457))))) 0))) (Cons!18209 (head!3631 (originalCharacters!4025 (h!23613 (t!150807 (t!150807 (t!150807 tokens!457)))))) Nil!18209))))

(declare-fun lt!613566 () Unit!30315)

(declare-fun Unit!30419 () Unit!30315)

(assert (=> b!1651799 (= lt!613566 Unit!30419)))

(assert (=> b!1651799 (= (list!7241 (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 (t!150807 (t!150807 tokens!457))))) 0))) (Cons!18209 (head!3631 (list!7241 lt!613564)) Nil!18209))))

(declare-fun lt!613567 () Unit!30315)

(declare-fun Unit!30420 () Unit!30315)

(assert (=> b!1651799 (= lt!613567 Unit!30420)))

(assert (=> b!1651799 (= (list!7241 (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 (t!150807 (t!150807 tokens!457))))) 0))) (Cons!18209 (head!3630 lt!613564) Nil!18209))))

(declare-fun lt!613569 () Unit!30315)

(declare-fun Unit!30421 () Unit!30315)

(assert (=> b!1651799 (= lt!613569 Unit!30421)))

(assert (=> b!1651799 (isDefined!2813 (maxPrefix!1402 thiss!17113 rules!1846 (originalCharacters!4025 (h!23613 (t!150807 (t!150807 tokens!457))))))))

(declare-fun lt!613571 () Unit!30315)

(declare-fun Unit!30422 () Unit!30315)

(assert (=> b!1651799 (= lt!613571 Unit!30422)))

(assert (=> b!1651799 (isDefined!2813 (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 (charsOf!1860 (h!23613 (t!150807 (t!150807 tokens!457)))))))))

(declare-fun lt!613563 () Unit!30315)

(declare-fun Unit!30423 () Unit!30315)

(assert (=> b!1651799 (= lt!613563 Unit!30423)))

(declare-fun lt!613550 () Unit!30315)

(declare-fun Unit!30424 () Unit!30315)

(assert (=> b!1651799 (= lt!613550 Unit!30424)))

(assert (=> b!1651799 (= (_1!10345 (get!5302 (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 (charsOf!1860 (h!23613 (t!150807 (t!150807 tokens!457)))))))) (h!23613 (t!150807 (t!150807 tokens!457))))))

(declare-fun lt!613551 () Unit!30315)

(declare-fun Unit!30425 () Unit!30315)

(assert (=> b!1651799 (= lt!613551 Unit!30425)))

(assert (=> b!1651799 (isEmpty!11246 (_2!10345 (get!5302 (maxPrefix!1402 thiss!17113 rules!1846 (list!7241 (charsOf!1860 (h!23613 (t!150807 (t!150807 tokens!457)))))))))))

(declare-fun lt!613556 () Unit!30315)

(declare-fun Unit!30426 () Unit!30315)

(assert (=> b!1651799 (= lt!613556 Unit!30426)))

(assert (=> b!1651799 (matchR!2032 (regex!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457))))) (list!7241 (charsOf!1860 (h!23613 (t!150807 (t!150807 tokens!457))))))))

(declare-fun lt!613560 () Unit!30315)

(declare-fun Unit!30427 () Unit!30315)

(assert (=> b!1651799 (= lt!613560 Unit!30427)))

(assert (=> b!1651799 (= (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457)))) (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457)))))))

(declare-fun lt!613570 () Unit!30315)

(declare-fun Unit!30428 () Unit!30315)

(assert (=> b!1651799 (= lt!613570 Unit!30428)))

(declare-fun lt!613553 () Unit!30315)

(assert (=> b!1651799 (= lt!613553 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!170 thiss!17113 rules!1846 (h!23613 (t!150807 (t!150807 tokens!457))) (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457)))) (list!7241 lt!613564)))))

(declare-fun b!1651800 () Bool)

(assert (=> b!1651800 (= e!1059203 (isEmpty!11247 (_2!10343 (lex!1324 thiss!17113 rules!1846 (print!1371 thiss!17113 (seqFromList!2162 (t!150807 (t!150807 tokens!457))))))))))

(assert (= (and d!498298 c!268763) b!1651798))

(assert (= (and d!498298 (not c!268763)) b!1651799))

(assert (= (and d!498298 res!740293) b!1651800))

(assert (=> d!498298 m!1997839))

(assert (=> d!498298 m!1998341))

(declare-fun m!2002511 () Bool)

(assert (=> d!498298 m!2002511))

(declare-fun m!2002513 () Bool)

(assert (=> d!498298 m!2002513))

(assert (=> d!498298 m!1997843))

(assert (=> d!498298 m!1997839))

(assert (=> d!498298 m!1998341))

(assert (=> b!1651799 m!1998369))

(declare-fun m!2002515 () Bool)

(assert (=> b!1651799 m!2002515))

(declare-fun m!2002517 () Bool)

(assert (=> b!1651799 m!2002517))

(assert (=> b!1651799 m!2002515))

(declare-fun m!2002519 () Bool)

(assert (=> b!1651799 m!2002519))

(assert (=> b!1651799 m!1998357))

(declare-fun m!2002521 () Bool)

(assert (=> b!1651799 m!2002521))

(assert (=> b!1651799 m!1998357))

(declare-fun m!2002523 () Bool)

(assert (=> b!1651799 m!2002523))

(declare-fun m!2002527 () Bool)

(assert (=> b!1651799 m!2002527))

(declare-fun m!2002533 () Bool)

(assert (=> b!1651799 m!2002533))

(declare-fun m!2002535 () Bool)

(assert (=> b!1651799 m!2002535))

(declare-fun m!2002537 () Bool)

(assert (=> b!1651799 m!2002537))

(declare-fun m!2002541 () Bool)

(assert (=> b!1651799 m!2002541))

(declare-fun m!2002543 () Bool)

(assert (=> b!1651799 m!2002543))

(declare-fun m!2002545 () Bool)

(assert (=> b!1651799 m!2002545))

(declare-fun m!2002547 () Bool)

(assert (=> b!1651799 m!2002547))

(assert (=> b!1651799 m!2002527))

(declare-fun m!2002549 () Bool)

(assert (=> b!1651799 m!2002549))

(assert (=> b!1651799 m!2002545))

(declare-fun m!2002551 () Bool)

(assert (=> b!1651799 m!2002551))

(assert (=> b!1651799 m!2002535))

(declare-fun m!2002553 () Bool)

(assert (=> b!1651799 m!2002553))

(declare-fun m!2002555 () Bool)

(assert (=> b!1651799 m!2002555))

(declare-fun m!2002557 () Bool)

(assert (=> b!1651799 m!2002557))

(assert (=> b!1651799 m!1997839))

(declare-fun m!2002559 () Bool)

(assert (=> b!1651799 m!2002559))

(assert (=> b!1651799 m!2002527))

(declare-fun m!2002561 () Bool)

(assert (=> b!1651799 m!2002561))

(declare-fun m!2002563 () Bool)

(assert (=> b!1651799 m!2002563))

(declare-fun m!2002565 () Bool)

(assert (=> b!1651799 m!2002565))

(assert (=> b!1651799 m!2002551))

(declare-fun m!2002567 () Bool)

(assert (=> b!1651799 m!2002567))

(assert (=> b!1651799 m!1997839))

(assert (=> b!1651799 m!1998341))

(assert (=> b!1651799 m!2002547))

(declare-fun m!2002569 () Bool)

(assert (=> b!1651799 m!2002569))

(declare-fun m!2002571 () Bool)

(assert (=> b!1651799 m!2002571))

(declare-fun m!2002573 () Bool)

(assert (=> b!1651799 m!2002573))

(assert (=> b!1651799 m!2002557))

(assert (=> b!1651799 m!2002533))

(declare-fun m!2002575 () Bool)

(assert (=> b!1651799 m!2002575))

(assert (=> b!1651799 m!2002515))

(assert (=> b!1651799 m!2002537))

(declare-fun m!2002577 () Bool)

(assert (=> b!1651799 m!2002577))

(assert (=> b!1651799 m!2002555))

(declare-fun m!2002579 () Bool)

(assert (=> b!1651799 m!2002579))

(assert (=> b!1651799 m!2002523))

(assert (=> b!1651799 m!2002541))

(declare-fun m!2002581 () Bool)

(assert (=> b!1651799 m!2002581))

(assert (=> b!1651799 m!1998369))

(assert (=> b!1651799 m!2002523))

(assert (=> b!1651799 m!2002541))

(declare-fun m!2002583 () Bool)

(assert (=> b!1651799 m!2002583))

(declare-fun m!2002585 () Bool)

(assert (=> b!1651799 m!2002585))

(assert (=> b!1651799 m!2002541))

(declare-fun m!2002587 () Bool)

(assert (=> b!1651799 m!2002587))

(assert (=> b!1651799 m!2002523))

(declare-fun m!2002589 () Bool)

(assert (=> b!1651799 m!2002589))

(assert (=> b!1651800 m!1997839))

(assert (=> b!1651800 m!1997839))

(assert (=> b!1651800 m!1998341))

(assert (=> b!1651800 m!1998341))

(assert (=> b!1651800 m!2002511))

(declare-fun m!2002591 () Bool)

(assert (=> b!1651800 m!2002591))

(assert (=> b!1649722 d!498298))

(declare-fun d!498312 () Bool)

(declare-fun lt!613582 () BalanceConc!12084)

(assert (=> d!498312 (= (list!7241 lt!613582) (printListTailRec!393 thiss!17113 (dropList!673 (singletonSeq!1695 (h!23613 (t!150807 tokens!457))) 0) (list!7241 (BalanceConc!12085 Empty!6070))))))

(declare-fun e!1059216 () BalanceConc!12084)

(assert (=> d!498312 (= lt!613582 e!1059216)))

(declare-fun c!268768 () Bool)

(assert (=> d!498312 (= c!268768 (>= 0 (size!14503 (singletonSeq!1695 (h!23613 (t!150807 tokens!457))))))))

(declare-fun e!1059215 () Bool)

(assert (=> d!498312 e!1059215))

(declare-fun res!740302 () Bool)

(assert (=> d!498312 (=> (not res!740302) (not e!1059215))))

(assert (=> d!498312 (= res!740302 (>= 0 0))))

(assert (=> d!498312 (= (printTailRec!891 thiss!17113 (singletonSeq!1695 (h!23613 (t!150807 tokens!457))) 0 (BalanceConc!12085 Empty!6070)) lt!613582)))

(declare-fun b!1651817 () Bool)

(assert (=> b!1651817 (= e!1059215 (<= 0 (size!14503 (singletonSeq!1695 (h!23613 (t!150807 tokens!457))))))))

(declare-fun b!1651818 () Bool)

(assert (=> b!1651818 (= e!1059216 (BalanceConc!12085 Empty!6070))))

(declare-fun b!1651819 () Bool)

(assert (=> b!1651819 (= e!1059216 (printTailRec!891 thiss!17113 (singletonSeq!1695 (h!23613 (t!150807 tokens!457))) (+ 0 1) (++!4921 (BalanceConc!12085 Empty!6070) (charsOf!1860 (apply!4805 (singletonSeq!1695 (h!23613 (t!150807 tokens!457))) 0)))))))

(declare-fun lt!613586 () List!18282)

(assert (=> b!1651819 (= lt!613586 (list!7242 (singletonSeq!1695 (h!23613 (t!150807 tokens!457)))))))

(declare-fun lt!613581 () Unit!30315)

(assert (=> b!1651819 (= lt!613581 (lemmaDropApply!600 lt!613586 0))))

(assert (=> b!1651819 (= (head!3634 (drop!912 lt!613586 0)) (apply!4806 lt!613586 0))))

(declare-fun lt!613583 () Unit!30315)

(assert (=> b!1651819 (= lt!613583 lt!613581)))

(declare-fun lt!613585 () List!18282)

(assert (=> b!1651819 (= lt!613585 (list!7242 (singletonSeq!1695 (h!23613 (t!150807 tokens!457)))))))

(declare-fun lt!613587 () Unit!30315)

(assert (=> b!1651819 (= lt!613587 (lemmaDropTail!580 lt!613585 0))))

(assert (=> b!1651819 (= (tail!2442 (drop!912 lt!613585 0)) (drop!912 lt!613585 (+ 0 1)))))

(declare-fun lt!613584 () Unit!30315)

(assert (=> b!1651819 (= lt!613584 lt!613587)))

(assert (= (and d!498312 res!740302) b!1651817))

(assert (= (and d!498312 c!268768) b!1651818))

(assert (= (and d!498312 (not c!268768)) b!1651819))

(assert (=> d!498312 m!1998335))

(declare-fun m!2002613 () Bool)

(assert (=> d!498312 m!2002613))

(declare-fun m!2002615 () Bool)

(assert (=> d!498312 m!2002615))

(assert (=> d!498312 m!1998335))

(declare-fun m!2002617 () Bool)

(assert (=> d!498312 m!2002617))

(assert (=> d!498312 m!2002613))

(assert (=> d!498312 m!1998039))

(declare-fun m!2002619 () Bool)

(assert (=> d!498312 m!2002619))

(assert (=> d!498312 m!1998039))

(assert (=> b!1651817 m!1998335))

(assert (=> b!1651817 m!2002617))

(declare-fun m!2002623 () Bool)

(assert (=> b!1651819 m!2002623))

(declare-fun m!2002625 () Bool)

(assert (=> b!1651819 m!2002625))

(declare-fun m!2002627 () Bool)

(assert (=> b!1651819 m!2002627))

(declare-fun m!2002629 () Bool)

(assert (=> b!1651819 m!2002629))

(assert (=> b!1651819 m!1998335))

(assert (=> b!1651819 m!2002625))

(assert (=> b!1651819 m!1998335))

(declare-fun m!2002631 () Bool)

(assert (=> b!1651819 m!2002631))

(declare-fun m!2002633 () Bool)

(assert (=> b!1651819 m!2002633))

(declare-fun m!2002637 () Bool)

(assert (=> b!1651819 m!2002637))

(declare-fun m!2002639 () Bool)

(assert (=> b!1651819 m!2002639))

(declare-fun m!2002641 () Bool)

(assert (=> b!1651819 m!2002641))

(declare-fun m!2002643 () Bool)

(assert (=> b!1651819 m!2002643))

(declare-fun m!2002645 () Bool)

(assert (=> b!1651819 m!2002645))

(assert (=> b!1651819 m!2002627))

(assert (=> b!1651819 m!2002631))

(assert (=> b!1651819 m!2002643))

(assert (=> b!1651819 m!1998335))

(assert (=> b!1651819 m!2002295))

(declare-fun m!2002647 () Bool)

(assert (=> b!1651819 m!2002647))

(assert (=> b!1651819 m!2002637))

(assert (=> b!1649722 d!498312))

(assert (=> b!1649722 d!497574))

(declare-fun d!498320 () Bool)

(assert (=> d!498320 (isPrefix!1469 lt!611894 (++!4922 lt!611894 lt!611917))))

(declare-fun lt!613591 () Unit!30315)

(assert (=> d!498320 (= lt!613591 (choose!9904 lt!611894 lt!611917))))

(assert (=> d!498320 (= (lemmaConcatTwoListThenFirstIsPrefix!994 lt!611894 lt!611917) lt!613591)))

(declare-fun bs!396597 () Bool)

(assert (= bs!396597 d!498320))

(assert (=> bs!396597 m!1998351))

(assert (=> bs!396597 m!1998351))

(assert (=> bs!396597 m!1998389))

(declare-fun m!2002649 () Bool)

(assert (=> bs!396597 m!2002649))

(assert (=> b!1649722 d!498320))

(declare-fun d!498322 () Bool)

(declare-fun lt!613592 () C!9252)

(assert (=> d!498322 (= lt!613592 (apply!4807 (list!7241 (charsOf!1860 (h!23613 (t!150807 (t!150807 tokens!457))))) 0))))

(assert (=> d!498322 (= lt!613592 (apply!4808 (c!268209 (charsOf!1860 (h!23613 (t!150807 (t!150807 tokens!457))))) 0))))

(declare-fun e!1059226 () Bool)

(assert (=> d!498322 e!1059226))

(declare-fun res!740311 () Bool)

(assert (=> d!498322 (=> (not res!740311) (not e!1059226))))

(assert (=> d!498322 (= res!740311 (<= 0 0))))

(assert (=> d!498322 (= (apply!4798 (charsOf!1860 (h!23613 (t!150807 (t!150807 tokens!457)))) 0) lt!613592)))

(declare-fun b!1651838 () Bool)

(assert (=> b!1651838 (= e!1059226 (< 0 (size!14504 (charsOf!1860 (h!23613 (t!150807 (t!150807 tokens!457)))))))))

(assert (= (and d!498322 res!740311) b!1651838))

(assert (=> d!498322 m!1998369))

(assert (=> d!498322 m!2002523))

(assert (=> d!498322 m!2002523))

(declare-fun m!2002651 () Bool)

(assert (=> d!498322 m!2002651))

(declare-fun m!2002653 () Bool)

(assert (=> d!498322 m!2002653))

(assert (=> b!1651838 m!1998369))

(declare-fun m!2002655 () Bool)

(assert (=> b!1651838 m!2002655))

(assert (=> b!1649722 d!498322))

(declare-fun b!1651839 () Bool)

(declare-fun res!740313 () Bool)

(declare-fun e!1059229 () Bool)

(assert (=> b!1651839 (=> (not res!740313) (not e!1059229))))

(declare-fun lt!613593 () tuple2!17882)

(assert (=> b!1651839 (= res!740313 (= (list!7242 (_1!10343 lt!613593)) (_1!10347 (lexList!871 thiss!17113 rules!1846 (list!7241 lt!611909)))))))

(declare-fun b!1651840 () Bool)

(declare-fun e!1059228 () Bool)

(assert (=> b!1651840 (= e!1059228 (= (_2!10343 lt!613593) lt!611909))))

(declare-fun b!1651841 () Bool)

(declare-fun e!1059227 () Bool)

(assert (=> b!1651841 (= e!1059228 e!1059227)))

(declare-fun res!740312 () Bool)

(assert (=> b!1651841 (= res!740312 (< (size!14504 (_2!10343 lt!613593)) (size!14504 lt!611909)))))

(assert (=> b!1651841 (=> (not res!740312) (not e!1059227))))

(declare-fun b!1651842 () Bool)

(assert (=> b!1651842 (= e!1059229 (= (list!7241 (_2!10343 lt!613593)) (_2!10347 (lexList!871 thiss!17113 rules!1846 (list!7241 lt!611909)))))))

(declare-fun b!1651843 () Bool)

(assert (=> b!1651843 (= e!1059227 (not (isEmpty!11238 (_1!10343 lt!613593))))))

(declare-fun d!498324 () Bool)

(assert (=> d!498324 e!1059229))

(declare-fun res!740314 () Bool)

(assert (=> d!498324 (=> (not res!740314) (not e!1059229))))

(assert (=> d!498324 (= res!740314 e!1059228)))

(declare-fun c!268774 () Bool)

(assert (=> d!498324 (= c!268774 (> (size!14503 (_1!10343 lt!613593)) 0))))

(assert (=> d!498324 (= lt!613593 (lexTailRecV2!594 thiss!17113 rules!1846 lt!611909 (BalanceConc!12085 Empty!6070) lt!611909 (BalanceConc!12087 Empty!6071)))))

(assert (=> d!498324 (= (lex!1324 thiss!17113 rules!1846 lt!611909) lt!613593)))

(assert (= (and d!498324 c!268774) b!1651841))

(assert (= (and d!498324 (not c!268774)) b!1651840))

(assert (= (and b!1651841 res!740312) b!1651843))

(assert (= (and d!498324 res!740314) b!1651839))

(assert (= (and b!1651839 res!740313) b!1651842))

(declare-fun m!2002673 () Bool)

(assert (=> b!1651839 m!2002673))

(assert (=> b!1651839 m!1998353))

(assert (=> b!1651839 m!1998353))

(declare-fun m!2002677 () Bool)

(assert (=> b!1651839 m!2002677))

(declare-fun m!2002679 () Bool)

(assert (=> b!1651842 m!2002679))

(assert (=> b!1651842 m!1998353))

(assert (=> b!1651842 m!1998353))

(assert (=> b!1651842 m!2002677))

(declare-fun m!2002681 () Bool)

(assert (=> b!1651841 m!2002681))

(declare-fun m!2002683 () Bool)

(assert (=> b!1651841 m!2002683))

(declare-fun m!2002685 () Bool)

(assert (=> d!498324 m!2002685))

(declare-fun m!2002687 () Bool)

(assert (=> d!498324 m!2002687))

(declare-fun m!2002689 () Bool)

(assert (=> b!1651843 m!2002689))

(assert (=> b!1649722 d!498324))

(declare-fun b!1651844 () Bool)

(declare-fun res!740317 () Bool)

(declare-fun e!1059230 () Bool)

(assert (=> b!1651844 (=> (not res!740317) (not e!1059230))))

(declare-fun lt!613594 () Option!3458)

(assert (=> b!1651844 (= res!740317 (= (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!613594)))) (originalCharacters!4025 (_1!10345 (get!5302 lt!613594)))))))

(declare-fun d!498330 () Bool)

(declare-fun e!1059231 () Bool)

(assert (=> d!498330 e!1059231))

(declare-fun res!740321 () Bool)

(assert (=> d!498330 (=> res!740321 e!1059231)))

(assert (=> d!498330 (= res!740321 (isEmpty!11244 lt!613594))))

(declare-fun e!1059232 () Option!3458)

(assert (=> d!498330 (= lt!613594 e!1059232)))

(declare-fun c!268775 () Bool)

(assert (=> d!498330 (= c!268775 (and ((_ is Cons!18211) rules!1846) ((_ is Nil!18211) (t!150806 rules!1846))))))

(declare-fun lt!613598 () Unit!30315)

(declare-fun lt!613597 () Unit!30315)

(assert (=> d!498330 (= lt!613598 lt!613597)))

(assert (=> d!498330 (isPrefix!1469 (originalCharacters!4025 (h!23613 (t!150807 tokens!457))) (originalCharacters!4025 (h!23613 (t!150807 tokens!457))))))

(assert (=> d!498330 (= lt!613597 (lemmaIsPrefixRefl!995 (originalCharacters!4025 (h!23613 (t!150807 tokens!457))) (originalCharacters!4025 (h!23613 (t!150807 tokens!457)))))))

(assert (=> d!498330 (rulesValidInductive!1017 thiss!17113 rules!1846)))

(assert (=> d!498330 (= (maxPrefix!1402 thiss!17113 rules!1846 (originalCharacters!4025 (h!23613 (t!150807 tokens!457)))) lt!613594)))

(declare-fun b!1651845 () Bool)

(declare-fun res!740319 () Bool)

(assert (=> b!1651845 (=> (not res!740319) (not e!1059230))))

(assert (=> b!1651845 (= res!740319 (< (size!14501 (_2!10345 (get!5302 lt!613594))) (size!14501 (originalCharacters!4025 (h!23613 (t!150807 tokens!457))))))))

(declare-fun b!1651846 () Bool)

(declare-fun res!740320 () Bool)

(assert (=> b!1651846 (=> (not res!740320) (not e!1059230))))

(assert (=> b!1651846 (= res!740320 (= (++!4922 (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!613594)))) (_2!10345 (get!5302 lt!613594))) (originalCharacters!4025 (h!23613 (t!150807 tokens!457)))))))

(declare-fun b!1651847 () Bool)

(assert (=> b!1651847 (= e!1059230 (contains!3174 rules!1846 (rule!5069 (_1!10345 (get!5302 lt!613594)))))))

(declare-fun b!1651848 () Bool)

(declare-fun res!740318 () Bool)

(assert (=> b!1651848 (=> (not res!740318) (not e!1059230))))

(assert (=> b!1651848 (= res!740318 (matchR!2032 (regex!3211 (rule!5069 (_1!10345 (get!5302 lt!613594)))) (list!7241 (charsOf!1860 (_1!10345 (get!5302 lt!613594))))))))

(declare-fun b!1651849 () Bool)

(assert (=> b!1651849 (= e!1059231 e!1059230)))

(declare-fun res!740316 () Bool)

(assert (=> b!1651849 (=> (not res!740316) (not e!1059230))))

(assert (=> b!1651849 (= res!740316 (isDefined!2813 lt!613594))))

(declare-fun bm!106031 () Bool)

(declare-fun call!106036 () Option!3458)

(assert (=> bm!106031 (= call!106036 (maxPrefixOneRule!811 thiss!17113 (h!23612 rules!1846) (originalCharacters!4025 (h!23613 (t!150807 tokens!457)))))))

(declare-fun b!1651850 () Bool)

(assert (=> b!1651850 (= e!1059232 call!106036)))

(declare-fun b!1651851 () Bool)

(declare-fun lt!613595 () Option!3458)

(declare-fun lt!613596 () Option!3458)

(assert (=> b!1651851 (= e!1059232 (ite (and ((_ is None!3457) lt!613595) ((_ is None!3457) lt!613596)) None!3457 (ite ((_ is None!3457) lt!613596) lt!613595 (ite ((_ is None!3457) lt!613595) lt!613596 (ite (>= (size!14498 (_1!10345 (v!24626 lt!613595))) (size!14498 (_1!10345 (v!24626 lt!613596)))) lt!613595 lt!613596)))))))

(assert (=> b!1651851 (= lt!613595 call!106036)))

(assert (=> b!1651851 (= lt!613596 (maxPrefix!1402 thiss!17113 (t!150806 rules!1846) (originalCharacters!4025 (h!23613 (t!150807 tokens!457)))))))

(declare-fun b!1651852 () Bool)

(declare-fun res!740315 () Bool)

(assert (=> b!1651852 (=> (not res!740315) (not e!1059230))))

(assert (=> b!1651852 (= res!740315 (= (value!101186 (_1!10345 (get!5302 lt!613594))) (apply!4804 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!613594)))) (seqFromList!2161 (originalCharacters!4025 (_1!10345 (get!5302 lt!613594)))))))))

(assert (= (and d!498330 c!268775) b!1651850))

(assert (= (and d!498330 (not c!268775)) b!1651851))

(assert (= (or b!1651850 b!1651851) bm!106031))

(assert (= (and d!498330 (not res!740321)) b!1651849))

(assert (= (and b!1651849 res!740316) b!1651844))

(assert (= (and b!1651844 res!740317) b!1651845))

(assert (= (and b!1651845 res!740319) b!1651846))

(assert (= (and b!1651846 res!740320) b!1651852))

(assert (= (and b!1651852 res!740315) b!1651848))

(assert (= (and b!1651848 res!740318) b!1651847))

(declare-fun m!2002691 () Bool)

(assert (=> b!1651846 m!2002691))

(declare-fun m!2002693 () Bool)

(assert (=> b!1651846 m!2002693))

(assert (=> b!1651846 m!2002693))

(declare-fun m!2002695 () Bool)

(assert (=> b!1651846 m!2002695))

(assert (=> b!1651846 m!2002695))

(declare-fun m!2002697 () Bool)

(assert (=> b!1651846 m!2002697))

(assert (=> b!1651848 m!2002691))

(assert (=> b!1651848 m!2002693))

(assert (=> b!1651848 m!2002693))

(assert (=> b!1651848 m!2002695))

(assert (=> b!1651848 m!2002695))

(declare-fun m!2002699 () Bool)

(assert (=> b!1651848 m!2002699))

(declare-fun m!2002701 () Bool)

(assert (=> d!498330 m!2002701))

(declare-fun m!2002703 () Bool)

(assert (=> d!498330 m!2002703))

(declare-fun m!2002705 () Bool)

(assert (=> d!498330 m!2002705))

(assert (=> d!498330 m!1997961))

(assert (=> b!1651847 m!2002691))

(declare-fun m!2002707 () Bool)

(assert (=> b!1651847 m!2002707))

(assert (=> b!1651844 m!2002691))

(assert (=> b!1651844 m!2002693))

(assert (=> b!1651844 m!2002693))

(assert (=> b!1651844 m!2002695))

(declare-fun m!2002709 () Bool)

(assert (=> b!1651851 m!2002709))

(assert (=> b!1651852 m!2002691))

(declare-fun m!2002711 () Bool)

(assert (=> b!1651852 m!2002711))

(assert (=> b!1651852 m!2002711))

(declare-fun m!2002713 () Bool)

(assert (=> b!1651852 m!2002713))

(assert (=> b!1651845 m!2002691))

(declare-fun m!2002715 () Bool)

(assert (=> b!1651845 m!2002715))

(declare-fun m!2002717 () Bool)

(assert (=> b!1651845 m!2002717))

(declare-fun m!2002719 () Bool)

(assert (=> bm!106031 m!2002719))

(declare-fun m!2002721 () Bool)

(assert (=> b!1651849 m!2002721))

(assert (=> b!1649722 d!498330))

(declare-fun d!498332 () Bool)

(assert (=> d!498332 (= (list!7241 lt!611903) (list!7244 (c!268209 lt!611903)))))

(declare-fun bs!396599 () Bool)

(assert (= bs!396599 d!498332))

(declare-fun m!2002723 () Bool)

(assert (=> bs!396599 m!2002723))

(assert (=> b!1649722 d!498332))

(declare-fun b!1651856 () Bool)

(declare-fun e!1059234 () Bool)

(declare-fun lt!613599 () List!18279)

(assert (=> b!1651856 (= e!1059234 (or (not (= lt!611917 Nil!18209)) (= lt!613599 lt!611894)))))

(declare-fun b!1651853 () Bool)

(declare-fun e!1059233 () List!18279)

(assert (=> b!1651853 (= e!1059233 lt!611917)))

(declare-fun d!498334 () Bool)

(assert (=> d!498334 e!1059234))

(declare-fun res!740322 () Bool)

(assert (=> d!498334 (=> (not res!740322) (not e!1059234))))

(assert (=> d!498334 (= res!740322 (= (content!2529 lt!613599) ((_ map or) (content!2529 lt!611894) (content!2529 lt!611917))))))

(assert (=> d!498334 (= lt!613599 e!1059233)))

(declare-fun c!268776 () Bool)

(assert (=> d!498334 (= c!268776 ((_ is Nil!18209) lt!611894))))

(assert (=> d!498334 (= (++!4922 lt!611894 lt!611917) lt!613599)))

(declare-fun b!1651854 () Bool)

(assert (=> b!1651854 (= e!1059233 (Cons!18209 (h!23610 lt!611894) (++!4922 (t!150804 lt!611894) lt!611917)))))

(declare-fun b!1651855 () Bool)

(declare-fun res!740323 () Bool)

(assert (=> b!1651855 (=> (not res!740323) (not e!1059234))))

(assert (=> b!1651855 (= res!740323 (= (size!14501 lt!613599) (+ (size!14501 lt!611894) (size!14501 lt!611917))))))

(assert (= (and d!498334 c!268776) b!1651853))

(assert (= (and d!498334 (not c!268776)) b!1651854))

(assert (= (and d!498334 res!740322) b!1651855))

(assert (= (and b!1651855 res!740323) b!1651856))

(declare-fun m!2002725 () Bool)

(assert (=> d!498334 m!2002725))

(declare-fun m!2002727 () Bool)

(assert (=> d!498334 m!2002727))

(declare-fun m!2002729 () Bool)

(assert (=> d!498334 m!2002729))

(declare-fun m!2002731 () Bool)

(assert (=> b!1651854 m!2002731))

(declare-fun m!2002733 () Bool)

(assert (=> b!1651855 m!2002733))

(assert (=> b!1651855 m!2002367))

(declare-fun m!2002735 () Bool)

(assert (=> b!1651855 m!2002735))

(assert (=> b!1649722 d!498334))

(assert (=> b!1649722 d!497426))

(declare-fun d!498336 () Bool)

(assert (=> d!498336 (= (list!7242 (prepend!775 (seqFromList!2162 (t!150807 (t!150807 (t!150807 tokens!457)))) (h!23613 (t!150807 (t!150807 tokens!457))))) (list!7246 (c!268211 (prepend!775 (seqFromList!2162 (t!150807 (t!150807 (t!150807 tokens!457)))) (h!23613 (t!150807 (t!150807 tokens!457)))))))))

(declare-fun bs!396600 () Bool)

(assert (= bs!396600 d!498336))

(declare-fun m!2002737 () Bool)

(assert (=> bs!396600 m!2002737))

(assert (=> b!1649722 d!498336))

(declare-fun d!498338 () Bool)

(declare-fun e!1059235 () Bool)

(assert (=> d!498338 e!1059235))

(declare-fun res!740324 () Bool)

(assert (=> d!498338 (=> (not res!740324) (not e!1059235))))

(declare-fun lt!613600 () BalanceConc!12084)

(assert (=> d!498338 (= res!740324 (= (list!7241 lt!613600) (Cons!18209 (apply!4798 (charsOf!1860 (h!23613 (t!150807 (t!150807 tokens!457)))) 0) Nil!18209)))))

(assert (=> d!498338 (= lt!613600 (singleton!736 (apply!4798 (charsOf!1860 (h!23613 (t!150807 (t!150807 tokens!457)))) 0)))))

(assert (=> d!498338 (= (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 (t!150807 tokens!457)))) 0)) lt!613600)))

(declare-fun b!1651857 () Bool)

(assert (=> b!1651857 (= e!1059235 (isBalanced!1862 (c!268209 lt!613600)))))

(assert (= (and d!498338 res!740324) b!1651857))

(declare-fun m!2002739 () Bool)

(assert (=> d!498338 m!2002739))

(assert (=> d!498338 m!1998347))

(declare-fun m!2002741 () Bool)

(assert (=> d!498338 m!2002741))

(declare-fun m!2002743 () Bool)

(assert (=> b!1651857 m!2002743))

(assert (=> b!1649722 d!498338))

(assert (=> b!1649758 d!497534))

(assert (=> b!1649758 d!497528))

(assert (=> b!1649758 d!497532))

(assert (=> b!1649758 d!497530))

(declare-fun d!498340 () Bool)

(assert (=> d!498340 (= (inv!23574 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (value!101186 (h!23613 tokens!457)))) (isBalanced!1862 (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (value!101186 (h!23613 tokens!457))))))))

(declare-fun bs!396601 () Bool)

(assert (= bs!396601 d!498340))

(declare-fun m!2002745 () Bool)

(assert (=> bs!396601 m!2002745))

(assert (=> tb!94479 d!498340))

(declare-fun d!498342 () Bool)

(declare-fun lt!613601 () Bool)

(assert (=> d!498342 (= lt!613601 (isEmpty!11246 (list!7241 (_2!10343 lt!612192))))))

(assert (=> d!498342 (= lt!613601 (isEmpty!11254 (c!268209 (_2!10343 lt!612192))))))

(assert (=> d!498342 (= (isEmpty!11247 (_2!10343 lt!612192)) lt!613601)))

(declare-fun bs!396602 () Bool)

(assert (= bs!396602 d!498342))

(declare-fun m!2002747 () Bool)

(assert (=> bs!396602 m!2002747))

(assert (=> bs!396602 m!2002747))

(declare-fun m!2002749 () Bool)

(assert (=> bs!396602 m!2002749))

(declare-fun m!2002751 () Bool)

(assert (=> bs!396602 m!2002751))

(assert (=> b!1650032 d!498342))

(assert (=> b!1649756 d!497974))

(declare-fun d!498344 () Bool)

(assert (=> d!498344 (= (list!7241 lt!612094) (list!7244 (c!268209 lt!612094)))))

(declare-fun bs!396603 () Bool)

(assert (= bs!396603 d!498344))

(declare-fun m!2002753 () Bool)

(assert (=> bs!396603 m!2002753))

(assert (=> d!497378 d!498344))

(declare-fun d!498346 () Bool)

(declare-fun c!268777 () Bool)

(assert (=> d!498346 (= c!268777 ((_ is Cons!18212) (list!7242 lt!611585)))))

(declare-fun e!1059236 () List!18279)

(assert (=> d!498346 (= (printList!953 thiss!17113 (list!7242 lt!611585)) e!1059236)))

(declare-fun b!1651858 () Bool)

(assert (=> b!1651858 (= e!1059236 (++!4922 (list!7241 (charsOf!1860 (h!23613 (list!7242 lt!611585)))) (printList!953 thiss!17113 (t!150807 (list!7242 lt!611585)))))))

(declare-fun b!1651859 () Bool)

(assert (=> b!1651859 (= e!1059236 Nil!18209)))

(assert (= (and d!498346 c!268777) b!1651858))

(assert (= (and d!498346 (not c!268777)) b!1651859))

(declare-fun m!2002755 () Bool)

(assert (=> b!1651858 m!2002755))

(assert (=> b!1651858 m!2002755))

(declare-fun m!2002757 () Bool)

(assert (=> b!1651858 m!2002757))

(declare-fun m!2002759 () Bool)

(assert (=> b!1651858 m!2002759))

(assert (=> b!1651858 m!2002757))

(assert (=> b!1651858 m!2002759))

(declare-fun m!2002761 () Bool)

(assert (=> b!1651858 m!2002761))

(assert (=> d!497378 d!498346))

(assert (=> d!497378 d!497330))

(declare-fun d!498350 () Bool)

(declare-fun lt!613603 () BalanceConc!12084)

(assert (=> d!498350 (= (list!7241 lt!613603) (printListTailRec!393 thiss!17113 (dropList!673 lt!611585 0) (list!7241 (BalanceConc!12085 Empty!6070))))))

(declare-fun e!1059238 () BalanceConc!12084)

(assert (=> d!498350 (= lt!613603 e!1059238)))

(declare-fun c!268778 () Bool)

(assert (=> d!498350 (= c!268778 (>= 0 (size!14503 lt!611585)))))

(declare-fun e!1059237 () Bool)

(assert (=> d!498350 e!1059237))

(declare-fun res!740325 () Bool)

(assert (=> d!498350 (=> (not res!740325) (not e!1059237))))

(assert (=> d!498350 (= res!740325 (>= 0 0))))

(assert (=> d!498350 (= (printTailRec!891 thiss!17113 lt!611585 0 (BalanceConc!12085 Empty!6070)) lt!613603)))

(declare-fun b!1651860 () Bool)

(assert (=> b!1651860 (= e!1059237 (<= 0 (size!14503 lt!611585)))))

(declare-fun b!1651861 () Bool)

(assert (=> b!1651861 (= e!1059238 (BalanceConc!12085 Empty!6070))))

(declare-fun b!1651862 () Bool)

(assert (=> b!1651862 (= e!1059238 (printTailRec!891 thiss!17113 lt!611585 (+ 0 1) (++!4921 (BalanceConc!12085 Empty!6070) (charsOf!1860 (apply!4805 lt!611585 0)))))))

(declare-fun lt!613607 () List!18282)

(assert (=> b!1651862 (= lt!613607 (list!7242 lt!611585))))

(declare-fun lt!613602 () Unit!30315)

(assert (=> b!1651862 (= lt!613602 (lemmaDropApply!600 lt!613607 0))))

(assert (=> b!1651862 (= (head!3634 (drop!912 lt!613607 0)) (apply!4806 lt!613607 0))))

(declare-fun lt!613604 () Unit!30315)

(assert (=> b!1651862 (= lt!613604 lt!613602)))

(declare-fun lt!613606 () List!18282)

(assert (=> b!1651862 (= lt!613606 (list!7242 lt!611585))))

(declare-fun lt!613608 () Unit!30315)

(assert (=> b!1651862 (= lt!613608 (lemmaDropTail!580 lt!613606 0))))

(assert (=> b!1651862 (= (tail!2442 (drop!912 lt!613606 0)) (drop!912 lt!613606 (+ 0 1)))))

(declare-fun lt!613605 () Unit!30315)

(assert (=> b!1651862 (= lt!613605 lt!613608)))

(assert (= (and d!498350 res!740325) b!1651860))

(assert (= (and d!498350 c!268778) b!1651861))

(assert (= (and d!498350 (not c!268778)) b!1651862))

(declare-fun m!2002765 () Bool)

(assert (=> d!498350 m!2002765))

(declare-fun m!2002767 () Bool)

(assert (=> d!498350 m!2002767))

(declare-fun m!2002769 () Bool)

(assert (=> d!498350 m!2002769))

(assert (=> d!498350 m!2002765))

(assert (=> d!498350 m!1998039))

(declare-fun m!2002771 () Bool)

(assert (=> d!498350 m!2002771))

(assert (=> d!498350 m!1998039))

(assert (=> b!1651860 m!2002769))

(declare-fun m!2002773 () Bool)

(assert (=> b!1651862 m!2002773))

(declare-fun m!2002775 () Bool)

(assert (=> b!1651862 m!2002775))

(declare-fun m!2002777 () Bool)

(assert (=> b!1651862 m!2002777))

(declare-fun m!2002779 () Bool)

(assert (=> b!1651862 m!2002779))

(assert (=> b!1651862 m!2002775))

(declare-fun m!2002781 () Bool)

(assert (=> b!1651862 m!2002781))

(declare-fun m!2002783 () Bool)

(assert (=> b!1651862 m!2002783))

(declare-fun m!2002785 () Bool)

(assert (=> b!1651862 m!2002785))

(declare-fun m!2002787 () Bool)

(assert (=> b!1651862 m!2002787))

(declare-fun m!2002789 () Bool)

(assert (=> b!1651862 m!2002789))

(declare-fun m!2002791 () Bool)

(assert (=> b!1651862 m!2002791))

(declare-fun m!2002793 () Bool)

(assert (=> b!1651862 m!2002793))

(assert (=> b!1651862 m!2002777))

(assert (=> b!1651862 m!2002781))

(assert (=> b!1651862 m!2002791))

(assert (=> b!1651862 m!1997841))

(declare-fun m!2002795 () Bool)

(assert (=> b!1651862 m!2002795))

(assert (=> b!1651862 m!2002785))

(assert (=> d!497378 d!498350))

(assert (=> d!497334 d!497326))

(assert (=> d!497334 d!497328))

(declare-fun d!498356 () Bool)

(assert (=> d!498356 (= (list!7242 (seqFromList!2162 ($colon$colon!368 (t!150807 (t!150807 tokens!457)) (h!23613 (t!150807 tokens!457))))) (list!7246 (c!268211 (seqFromList!2162 ($colon$colon!368 (t!150807 (t!150807 tokens!457)) (h!23613 (t!150807 tokens!457)))))))))

(declare-fun bs!396607 () Bool)

(assert (= bs!396607 d!498356))

(declare-fun m!2002809 () Bool)

(assert (=> bs!396607 m!2002809))

(assert (=> d!497334 d!498356))

(assert (=> d!497334 d!497332))

(declare-fun d!498358 () Bool)

(assert (=> d!498358 (= ($colon$colon!368 (t!150807 (t!150807 tokens!457)) (h!23613 (t!150807 tokens!457))) (Cons!18212 (h!23613 (t!150807 tokens!457)) (t!150807 (t!150807 tokens!457))))))

(assert (=> d!497334 d!498358))

(declare-fun d!498362 () Bool)

(assert (=> d!498362 (= (list!7242 (_1!10343 lt!611587)) (list!7242 (prepend!775 (seqFromList!2162 (t!150807 (t!150807 tokens!457))) (h!23613 (t!150807 tokens!457)))))))

(assert (=> d!498362 true))

(declare-fun _$1!10052 () Unit!30315)

(assert (=> d!498362 (= (choose!9905 (h!23613 (t!150807 tokens!457)) (t!150807 (t!150807 tokens!457)) (_1!10343 lt!611587)) _$1!10052)))

(declare-fun bs!396614 () Bool)

(assert (= bs!396614 d!498362))

(assert (=> bs!396614 m!1997819))

(assert (=> bs!396614 m!1997839))

(assert (=> bs!396614 m!1997839))

(assert (=> bs!396614 m!1997835))

(assert (=> bs!396614 m!1997835))

(assert (=> bs!396614 m!1997837))

(assert (=> d!497334 d!498362))

(assert (=> d!497334 d!497280))

(declare-fun d!498388 () Bool)

(assert (=> d!498388 (= (seqFromList!2162 ($colon$colon!368 (t!150807 (t!150807 tokens!457)) (h!23613 (t!150807 tokens!457)))) (fromListB!967 ($colon$colon!368 (t!150807 (t!150807 tokens!457)) (h!23613 (t!150807 tokens!457)))))))

(declare-fun bs!396615 () Bool)

(assert (= bs!396615 d!498388))

(assert (=> bs!396615 m!1998467))

(declare-fun m!2002907 () Bool)

(assert (=> bs!396615 m!2002907))

(assert (=> d!497334 d!498388))

(declare-fun d!498390 () Bool)

(declare-fun lostCauseFct!162 (Regex!4539) Bool)

(assert (=> d!498390 (= (lostCause!460 lt!611598) (lostCauseFct!162 lt!611598))))

(declare-fun bs!396617 () Bool)

(assert (= bs!396617 d!498390))

(declare-fun m!2002927 () Bool)

(assert (=> bs!396617 m!2002927))

(assert (=> b!1650038 d!498390))

(declare-fun d!498398 () Bool)

(declare-fun c!268786 () Bool)

(assert (=> d!498398 (= c!268786 ((_ is Node!6070) (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (value!101186 (h!23613 (t!150807 tokens!457)))))))))

(declare-fun e!1059254 () Bool)

(assert (=> d!498398 (= (inv!23573 (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (value!101186 (h!23613 (t!150807 tokens!457)))))) e!1059254)))

(declare-fun b!1651891 () Bool)

(assert (=> b!1651891 (= e!1059254 (inv!23577 (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (value!101186 (h!23613 (t!150807 tokens!457)))))))))

(declare-fun b!1651892 () Bool)

(declare-fun e!1059255 () Bool)

(assert (=> b!1651892 (= e!1059254 e!1059255)))

(declare-fun res!740339 () Bool)

(assert (=> b!1651892 (= res!740339 (not ((_ is Leaf!8896) (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (value!101186 (h!23613 (t!150807 tokens!457))))))))))

(assert (=> b!1651892 (=> res!740339 e!1059255)))

(declare-fun b!1651893 () Bool)

(assert (=> b!1651893 (= e!1059255 (inv!23578 (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (value!101186 (h!23613 (t!150807 tokens!457)))))))))

(assert (= (and d!498398 c!268786) b!1651891))

(assert (= (and d!498398 (not c!268786)) b!1651892))

(assert (= (and b!1651892 (not res!740339)) b!1651893))

(declare-fun m!2002933 () Bool)

(assert (=> b!1651891 m!2002933))

(declare-fun m!2002937 () Bool)

(assert (=> b!1651893 m!2002937))

(assert (=> b!1650018 d!498398))

(declare-fun d!498400 () Bool)

(declare-fun res!740340 () Bool)

(declare-fun e!1059256 () Bool)

(assert (=> d!498400 (=> (not res!740340) (not e!1059256))))

(assert (=> d!498400 (= res!740340 (not (isEmpty!11246 (originalCharacters!4025 (h!23613 (t!150807 tokens!457))))))))

(assert (=> d!498400 (= (inv!23570 (h!23613 (t!150807 tokens!457))) e!1059256)))

(declare-fun b!1651894 () Bool)

(declare-fun res!740341 () Bool)

(assert (=> b!1651894 (=> (not res!740341) (not e!1059256))))

(assert (=> b!1651894 (= res!740341 (= (originalCharacters!4025 (h!23613 (t!150807 tokens!457))) (list!7241 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (value!101186 (h!23613 (t!150807 tokens!457)))))))))

(declare-fun b!1651895 () Bool)

(assert (=> b!1651895 (= e!1059256 (= (size!14498 (h!23613 (t!150807 tokens!457))) (size!14501 (originalCharacters!4025 (h!23613 (t!150807 tokens!457))))))))

(assert (= (and d!498400 res!740340) b!1651894))

(assert (= (and b!1651894 res!740341) b!1651895))

(declare-fun b_lambda!51907 () Bool)

(assert (=> (not b_lambda!51907) (not b!1651894)))

(assert (=> b!1651894 t!150839))

(declare-fun b_and!117301 () Bool)

(assert (= b_and!117285 (and (=> t!150839 result!114182) b_and!117301)))

(assert (=> b!1651894 t!150841))

(declare-fun b_and!117303 () Bool)

(assert (= b_and!117287 (and (=> t!150841 result!114184) b_and!117303)))

(assert (=> b!1651894 t!150848))

(declare-fun b_and!117305 () Bool)

(assert (= b_and!117289 (and (=> t!150848 result!114194) b_and!117305)))

(assert (=> b!1651894 t!150852))

(declare-fun b_and!117307 () Bool)

(assert (= b_and!117291 (and (=> t!150852 result!114200) b_and!117307)))

(declare-fun m!2002945 () Bool)

(assert (=> d!498400 m!2002945))

(assert (=> b!1651894 m!1998901))

(assert (=> b!1651894 m!1998901))

(declare-fun m!2002947 () Bool)

(assert (=> b!1651894 m!2002947))

(assert (=> b!1651895 m!2002717))

(assert (=> b!1650087 d!498400))

(declare-fun bs!396626 () Bool)

(declare-fun b!1651999 () Bool)

(assert (= bs!396626 (and b!1651999 d!497582)))

(declare-fun lambda!67718 () Int)

(assert (=> bs!396626 (= lambda!67718 lambda!67676)))

(declare-fun bs!396627 () Bool)

(assert (= bs!396627 (and b!1651999 d!497804)))

(assert (=> bs!396627 (= (and (= (toChars!4517 (transformation!3211 (h!23612 rules!1846))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457))))) (= (toValue!4658 (transformation!3211 (h!23612 rules!1846))) (toValue!4658 (transformation!3211 (rule!5069 (h!23613 tokens!457)))))) (= lambda!67718 lambda!67683))))

(declare-fun b!1652012 () Bool)

(declare-fun e!1059346 () Bool)

(assert (=> b!1652012 (= e!1059346 true)))

(declare-fun b!1652011 () Bool)

(declare-fun e!1059345 () Bool)

(assert (=> b!1652011 (= e!1059345 e!1059346)))

(assert (=> b!1651999 e!1059345))

(assert (= b!1652011 b!1652012))

(assert (= b!1651999 b!1652011))

(assert (=> b!1652012 (< (dynLambda!8163 order!10871 (toValue!4658 (transformation!3211 (h!23612 rules!1846)))) (dynLambda!8168 order!10879 lambda!67718))))

(assert (=> b!1652012 (< (dynLambda!8165 order!10875 (toChars!4517 (transformation!3211 (h!23612 rules!1846)))) (dynLambda!8168 order!10879 lambda!67718))))

(declare-fun b!1651995 () Bool)

(declare-fun e!1059335 () Bool)

(declare-fun lt!613670 () List!18279)

(assert (=> b!1651995 (= e!1059335 (matchR!2032 (regex!3211 (h!23612 rules!1846)) (_1!10350 (findLongestMatchInner!367 (regex!3211 (h!23612 rules!1846)) Nil!18209 (size!14501 Nil!18209) lt!613670 lt!613670 (size!14501 lt!613670)))))))

(declare-fun b!1651996 () Bool)

(declare-fun e!1059336 () Bool)

(declare-fun e!1059334 () Bool)

(assert (=> b!1651996 (= e!1059336 e!1059334)))

(declare-fun res!740400 () Bool)

(assert (=> b!1651996 (=> (not res!740400) (not e!1059334))))

(declare-fun lt!613672 () Option!3457)

(assert (=> b!1651996 (= res!740400 (= (_1!10344 (get!5303 lt!613672)) (_1!10345 (get!5302 (maxPrefixOneRule!811 thiss!17113 (h!23612 rules!1846) (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))))))

(declare-fun b!1651997 () Bool)

(assert (=> b!1651997 (= e!1059334 (= (list!7241 (_2!10344 (get!5303 lt!613672))) (_2!10345 (get!5302 (maxPrefixOneRule!811 thiss!17113 (h!23612 rules!1846) (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))))))

(declare-fun b!1651998 () Bool)

(declare-fun e!1059332 () Option!3457)

(assert (=> b!1651998 (= e!1059332 None!3456)))

(declare-fun d!498408 () Bool)

(declare-fun e!1059333 () Bool)

(assert (=> d!498408 e!1059333))

(declare-fun res!740399 () Bool)

(assert (=> d!498408 (=> (not res!740399) (not e!1059333))))

(assert (=> d!498408 (= res!740399 (= (isDefined!2812 lt!613672) (isDefined!2813 (maxPrefixOneRule!811 thiss!17113 (h!23612 rules!1846) (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457))))))))))

(assert (=> d!498408 (= lt!613672 e!1059332)))

(declare-fun c!268809 () Bool)

(declare-datatypes ((tuple2!17898 0))(
  ( (tuple2!17899 (_1!10351 BalanceConc!12084) (_2!10351 BalanceConc!12084)) )
))
(declare-fun lt!613666 () tuple2!17898)

(assert (=> d!498408 (= c!268809 (isEmpty!11247 (_1!10351 lt!613666)))))

(declare-fun findLongestMatchWithZipperSequence!121 (Regex!4539 BalanceConc!12084) tuple2!17898)

(assert (=> d!498408 (= lt!613666 (findLongestMatchWithZipperSequence!121 (regex!3211 (h!23612 rules!1846)) (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))

(assert (=> d!498408 (ruleValid!755 thiss!17113 (h!23612 rules!1846))))

(assert (=> d!498408 (= (maxPrefixOneRuleZipperSequence!335 thiss!17113 (h!23612 rules!1846) (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))) lt!613672)))

(assert (=> b!1651999 (= e!1059332 (Some!3456 (tuple2!17885 (Token!5989 (apply!4804 (transformation!3211 (h!23612 rules!1846)) (_1!10351 lt!613666)) (h!23612 rules!1846) (size!14504 (_1!10351 lt!613666)) (list!7241 (_1!10351 lt!613666))) (_2!10351 lt!613666))))))

(assert (=> b!1651999 (= lt!613670 (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))

(declare-fun lt!613668 () Unit!30315)

(assert (=> b!1651999 (= lt!613668 (longestMatchIsAcceptedByMatchOrIsEmpty!351 (regex!3211 (h!23612 rules!1846)) lt!613670))))

(declare-fun res!740397 () Bool)

(assert (=> b!1651999 (= res!740397 (isEmpty!11246 (_1!10350 (findLongestMatchInner!367 (regex!3211 (h!23612 rules!1846)) Nil!18209 (size!14501 Nil!18209) lt!613670 lt!613670 (size!14501 lt!613670)))))))

(assert (=> b!1651999 (=> res!740397 e!1059335)))

(assert (=> b!1651999 e!1059335))

(declare-fun lt!613675 () Unit!30315)

(assert (=> b!1651999 (= lt!613675 lt!613668)))

(declare-fun lt!613673 () Unit!30315)

(assert (=> b!1651999 (= lt!613673 (lemmaInv!482 (transformation!3211 (h!23612 rules!1846))))))

(declare-fun lt!613667 () Unit!30315)

(declare-fun ForallOf!236 (Int BalanceConc!12084) Unit!30315)

(assert (=> b!1651999 (= lt!613667 (ForallOf!236 lambda!67718 (_1!10351 lt!613666)))))

(declare-fun lt!613669 () Unit!30315)

(assert (=> b!1651999 (= lt!613669 (ForallOf!236 lambda!67718 (seqFromList!2161 (list!7241 (_1!10351 lt!613666)))))))

(declare-fun lt!613674 () Option!3457)

(assert (=> b!1651999 (= lt!613674 (Some!3456 (tuple2!17885 (Token!5989 (apply!4804 (transformation!3211 (h!23612 rules!1846)) (_1!10351 lt!613666)) (h!23612 rules!1846) (size!14504 (_1!10351 lt!613666)) (list!7241 (_1!10351 lt!613666))) (_2!10351 lt!613666))))))

(declare-fun lt!613671 () Unit!30315)

(assert (=> b!1651999 (= lt!613671 (lemmaEqSameImage!202 (transformation!3211 (h!23612 rules!1846)) (_1!10351 lt!613666) (seqFromList!2161 (list!7241 (_1!10351 lt!613666)))))))

(declare-fun b!1652000 () Bool)

(assert (=> b!1652000 (= e!1059333 e!1059336)))

(declare-fun res!740398 () Bool)

(assert (=> b!1652000 (=> res!740398 e!1059336)))

(assert (=> b!1652000 (= res!740398 (not (isDefined!2812 lt!613672)))))

(assert (= (and d!498408 c!268809) b!1651998))

(assert (= (and d!498408 (not c!268809)) b!1651999))

(assert (= (and b!1651999 (not res!740397)) b!1651995))

(assert (= (and d!498408 res!740399) b!1652000))

(assert (= (and b!1652000 (not res!740398)) b!1651996))

(assert (= (and b!1651996 res!740400) b!1651997))

(declare-fun m!2003059 () Bool)

(assert (=> b!1652000 m!2003059))

(declare-fun m!2003061 () Bool)

(assert (=> b!1651996 m!2003061))

(assert (=> b!1651996 m!1997863))

(assert (=> b!1651996 m!1998431))

(assert (=> b!1651996 m!1998431))

(assert (=> b!1651996 m!1999213))

(assert (=> b!1651996 m!1999213))

(declare-fun m!2003063 () Bool)

(assert (=> b!1651996 m!2003063))

(assert (=> b!1651995 m!2000151))

(declare-fun m!2003065 () Bool)

(assert (=> b!1651995 m!2003065))

(assert (=> b!1651995 m!2000151))

(assert (=> b!1651995 m!2003065))

(declare-fun m!2003067 () Bool)

(assert (=> b!1651995 m!2003067))

(declare-fun m!2003069 () Bool)

(assert (=> b!1651995 m!2003069))

(assert (=> d!498408 m!2003059))

(declare-fun m!2003071 () Bool)

(assert (=> d!498408 m!2003071))

(assert (=> d!498408 m!2001583))

(assert (=> d!498408 m!1997863))

(assert (=> d!498408 m!1998431))

(assert (=> d!498408 m!1999213))

(declare-fun m!2003073 () Bool)

(assert (=> d!498408 m!2003073))

(assert (=> d!498408 m!1998431))

(assert (=> d!498408 m!1999213))

(assert (=> d!498408 m!1997863))

(declare-fun m!2003075 () Bool)

(assert (=> d!498408 m!2003075))

(declare-fun m!2003077 () Bool)

(assert (=> b!1651997 m!2003077))

(assert (=> b!1651997 m!1999213))

(assert (=> b!1651997 m!2003063))

(assert (=> b!1651997 m!2003061))

(assert (=> b!1651997 m!1998431))

(assert (=> b!1651997 m!1999213))

(assert (=> b!1651997 m!1997863))

(assert (=> b!1651997 m!1998431))

(declare-fun m!2003079 () Bool)

(assert (=> b!1651999 m!2003079))

(declare-fun m!2003081 () Bool)

(assert (=> b!1651999 m!2003081))

(declare-fun m!2003083 () Bool)

(assert (=> b!1651999 m!2003083))

(declare-fun m!2003085 () Bool)

(assert (=> b!1651999 m!2003085))

(assert (=> b!1651999 m!2000151))

(declare-fun m!2003087 () Bool)

(assert (=> b!1651999 m!2003087))

(assert (=> b!1651999 m!2003081))

(declare-fun m!2003089 () Bool)

(assert (=> b!1651999 m!2003089))

(declare-fun m!2003091 () Bool)

(assert (=> b!1651999 m!2003091))

(declare-fun m!2003093 () Bool)

(assert (=> b!1651999 m!2003093))

(assert (=> b!1651999 m!2003065))

(assert (=> b!1651999 m!1997863))

(assert (=> b!1651999 m!1998431))

(declare-fun m!2003095 () Bool)

(assert (=> b!1651999 m!2003095))

(assert (=> b!1651999 m!2003079))

(assert (=> b!1651999 m!2000151))

(assert (=> b!1651999 m!2003065))

(assert (=> b!1651999 m!2003067))

(assert (=> b!1651999 m!2003081))

(declare-fun m!2003097 () Bool)

(assert (=> b!1651999 m!2003097))

(assert (=> bm!105840 d!498408))

(declare-fun d!498450 () Bool)

(assert (=> d!498450 (= (isDefined!2813 (maxPrefixZipper!341 thiss!17113 rules!1846 (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))) (not (isEmpty!11244 (maxPrefixZipper!341 thiss!17113 rules!1846 (list!7241 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457))))))))))

(declare-fun bs!396628 () Bool)

(assert (= bs!396628 d!498450))

(assert (=> bs!396628 m!1998437))

(declare-fun m!2003099 () Bool)

(assert (=> bs!396628 m!2003099))

(assert (=> d!497322 d!498450))

(assert (=> d!497322 d!497974))

(assert (=> d!497322 d!497592))

(declare-fun b!1652019 () Bool)

(declare-fun e!1059355 () Bool)

(declare-fun e!1059354 () Bool)

(assert (=> b!1652019 (= e!1059355 e!1059354)))

(declare-fun res!740411 () Bool)

(assert (=> b!1652019 (=> (not res!740411) (not e!1059354))))

(assert (=> b!1652019 (= res!740411 (not ((_ is Nil!18209) lt!611942)))))

(declare-fun b!1652021 () Bool)

(assert (=> b!1652021 (= e!1059354 (isPrefix!1469 (tail!2444 lt!611944) (tail!2444 lt!611942)))))

(declare-fun b!1652020 () Bool)

(declare-fun res!740412 () Bool)

(assert (=> b!1652020 (=> (not res!740412) (not e!1059354))))

(assert (=> b!1652020 (= res!740412 (= (head!3631 lt!611944) (head!3631 lt!611942)))))

(declare-fun b!1652022 () Bool)

(declare-fun e!1059353 () Bool)

(assert (=> b!1652022 (= e!1059353 (>= (size!14501 lt!611942) (size!14501 lt!611944)))))

(declare-fun d!498452 () Bool)

(assert (=> d!498452 e!1059353))

(declare-fun res!740414 () Bool)

(assert (=> d!498452 (=> res!740414 e!1059353)))

(declare-fun lt!613678 () Bool)

(assert (=> d!498452 (= res!740414 (not lt!613678))))

(assert (=> d!498452 (= lt!613678 e!1059355)))

(declare-fun res!740413 () Bool)

(assert (=> d!498452 (=> res!740413 e!1059355)))

(assert (=> d!498452 (= res!740413 ((_ is Nil!18209) lt!611944))))

(assert (=> d!498452 (= (isPrefix!1469 lt!611944 lt!611942) lt!613678)))

(assert (= (and d!498452 (not res!740413)) b!1652019))

(assert (= (and b!1652019 res!740411) b!1652020))

(assert (= (and b!1652020 res!740412) b!1652021))

(assert (= (and d!498452 (not res!740414)) b!1652022))

(declare-fun m!2003101 () Bool)

(assert (=> b!1652021 m!2003101))

(declare-fun m!2003103 () Bool)

(assert (=> b!1652021 m!2003103))

(assert (=> b!1652021 m!2003101))

(assert (=> b!1652021 m!2003103))

(declare-fun m!2003105 () Bool)

(assert (=> b!1652021 m!2003105))

(declare-fun m!2003107 () Bool)

(assert (=> b!1652020 m!2003107))

(declare-fun m!2003109 () Bool)

(assert (=> b!1652020 m!2003109))

(declare-fun m!2003111 () Bool)

(assert (=> b!1652022 m!2003111))

(declare-fun m!2003113 () Bool)

(assert (=> b!1652022 m!2003113))

(assert (=> d!497322 d!498452))

(declare-fun bs!396629 () Bool)

(declare-fun d!498454 () Bool)

(assert (= bs!396629 (and d!498454 d!498072)))

(declare-fun lambda!67721 () Int)

(assert (=> bs!396629 (= lambda!67721 lambda!67694)))

(assert (=> d!498454 true))

(declare-fun lt!613682 () Bool)

(assert (=> d!498454 (= lt!613682 (forall!4148 rules!1846 lambda!67721))))

(declare-fun e!1059374 () Bool)

(assert (=> d!498454 (= lt!613682 e!1059374)))

(declare-fun res!740421 () Bool)

(assert (=> d!498454 (=> res!740421 e!1059374)))

(assert (=> d!498454 (= res!740421 (not ((_ is Cons!18211) rules!1846)))))

(assert (=> d!498454 (= (rulesValidInductive!1017 thiss!17113 rules!1846) lt!613682)))

(declare-fun b!1652061 () Bool)

(declare-fun e!1059375 () Bool)

(assert (=> b!1652061 (= e!1059374 e!1059375)))

(declare-fun res!740422 () Bool)

(assert (=> b!1652061 (=> (not res!740422) (not e!1059375))))

(assert (=> b!1652061 (= res!740422 (ruleValid!755 thiss!17113 (h!23612 rules!1846)))))

(declare-fun b!1652062 () Bool)

(assert (=> b!1652062 (= e!1059375 (rulesValidInductive!1017 thiss!17113 (t!150806 rules!1846)))))

(assert (= (and d!498454 (not res!740421)) b!1652061))

(assert (= (and b!1652061 res!740422) b!1652062))

(declare-fun m!2003127 () Bool)

(assert (=> d!498454 m!2003127))

(assert (=> b!1652061 m!2001583))

(assert (=> b!1652062 m!1999707))

(assert (=> d!497322 d!498454))

(declare-fun d!498456 () Bool)

(assert (=> d!498456 (isPrefix!1469 lt!611944 lt!611942)))

(declare-fun lt!613685 () Unit!30315)

(declare-fun choose!9928 (List!18279 List!18279) Unit!30315)

(assert (=> d!498456 (= lt!613685 (choose!9928 lt!611944 lt!611942))))

(assert (=> d!498456 (= (lemmaIsPrefixRefl!995 lt!611944 lt!611942) lt!613685)))

(declare-fun bs!396630 () Bool)

(assert (= bs!396630 d!498456))

(assert (=> bs!396630 m!1998447))

(declare-fun m!2003129 () Bool)

(assert (=> bs!396630 m!2003129))

(assert (=> d!497322 d!498456))

(assert (=> d!497322 d!497530))

(declare-fun bs!396631 () Bool)

(declare-fun d!498458 () Bool)

(assert (= bs!396631 (and d!498458 d!497396)))

(declare-fun lambda!67722 () Int)

(assert (=> bs!396631 (= lambda!67722 lambda!67661)))

(declare-fun b!1652090 () Bool)

(declare-fun e!1059392 () Bool)

(assert (=> b!1652090 (= e!1059392 true)))

(declare-fun b!1652089 () Bool)

(declare-fun e!1059391 () Bool)

(assert (=> b!1652089 (= e!1059391 e!1059392)))

(declare-fun b!1652088 () Bool)

(declare-fun e!1059390 () Bool)

(assert (=> b!1652088 (= e!1059390 e!1059391)))

(assert (=> d!498458 e!1059390))

(assert (= b!1652089 b!1652090))

(assert (= b!1652088 b!1652089))

(assert (= (and d!498458 ((_ is Cons!18211) rules!1846)) b!1652088))

(assert (=> b!1652090 (< (dynLambda!8163 order!10871 (toValue!4658 (transformation!3211 (h!23612 rules!1846)))) (dynLambda!8164 order!10873 lambda!67722))))

(assert (=> b!1652090 (< (dynLambda!8165 order!10875 (toChars!4517 (transformation!3211 (h!23612 rules!1846)))) (dynLambda!8164 order!10873 lambda!67722))))

(assert (=> d!498458 true))

(declare-fun lt!613686 () Bool)

(assert (=> d!498458 (= lt!613686 (forall!4146 (t!150807 tokens!457) lambda!67722))))

(declare-fun e!1059389 () Bool)

(assert (=> d!498458 (= lt!613686 e!1059389)))

(declare-fun res!740424 () Bool)

(assert (=> d!498458 (=> res!740424 e!1059389)))

(assert (=> d!498458 (= res!740424 (not ((_ is Cons!18212) (t!150807 tokens!457))))))

(assert (=> d!498458 (not (isEmpty!11239 rules!1846))))

(assert (=> d!498458 (= (rulesProduceEachTokenIndividuallyList!1042 thiss!17113 rules!1846 (t!150807 tokens!457)) lt!613686)))

(declare-fun b!1652086 () Bool)

(declare-fun e!1059388 () Bool)

(assert (=> b!1652086 (= e!1059389 e!1059388)))

(declare-fun res!740423 () Bool)

(assert (=> b!1652086 (=> (not res!740423) (not e!1059388))))

(assert (=> b!1652086 (= res!740423 (rulesProduceIndividualToken!1488 thiss!17113 rules!1846 (h!23613 (t!150807 tokens!457))))))

(declare-fun b!1652087 () Bool)

(assert (=> b!1652087 (= e!1059388 (rulesProduceEachTokenIndividuallyList!1042 thiss!17113 rules!1846 (t!150807 (t!150807 tokens!457))))))

(assert (= (and d!498458 (not res!740424)) b!1652086))

(assert (= (and b!1652086 res!740423) b!1652087))

(declare-fun m!2003135 () Bool)

(assert (=> d!498458 m!2003135))

(assert (=> d!498458 m!1997843))

(assert (=> b!1652086 m!1998121))

(declare-fun m!2003143 () Bool)

(assert (=> b!1652087 m!2003143))

(assert (=> b!1649929 d!498458))

(declare-fun d!498460 () Bool)

(declare-fun c!268810 () Bool)

(assert (=> d!498460 (= c!268810 ((_ is Empty!6070) (c!268209 lt!611589)))))

(declare-fun e!1059397 () List!18279)

(assert (=> d!498460 (= (list!7244 (c!268209 lt!611589)) e!1059397)))

(declare-fun b!1652103 () Bool)

(declare-fun e!1059398 () List!18279)

(assert (=> b!1652103 (= e!1059397 e!1059398)))

(declare-fun c!268811 () Bool)

(assert (=> b!1652103 (= c!268811 ((_ is Leaf!8896) (c!268209 lt!611589)))))

(declare-fun b!1652102 () Bool)

(assert (=> b!1652102 (= e!1059397 Nil!18209)))

(declare-fun b!1652105 () Bool)

(assert (=> b!1652105 (= e!1059398 (++!4922 (list!7244 (left!14593 (c!268209 lt!611589))) (list!7244 (right!14923 (c!268209 lt!611589)))))))

(declare-fun b!1652104 () Bool)

(assert (=> b!1652104 (= e!1059398 (list!7249 (xs!8906 (c!268209 lt!611589))))))

(assert (= (and d!498460 c!268810) b!1652102))

(assert (= (and d!498460 (not c!268810)) b!1652103))

(assert (= (and b!1652103 c!268811) b!1652104))

(assert (= (and b!1652103 (not c!268811)) b!1652105))

(declare-fun m!2003145 () Bool)

(assert (=> b!1652105 m!2003145))

(declare-fun m!2003147 () Bool)

(assert (=> b!1652105 m!2003147))

(assert (=> b!1652105 m!2003145))

(assert (=> b!1652105 m!2003147))

(declare-fun m!2003149 () Bool)

(assert (=> b!1652105 m!2003149))

(declare-fun m!2003151 () Bool)

(assert (=> b!1652104 m!2003151))

(assert (=> d!497246 d!498460))

(assert (=> d!497272 d!497412))

(declare-fun lt!613695 () Bool)

(declare-fun d!498462 () Bool)

(assert (=> d!498462 (= lt!613695 (prefixMatch!456 (rulesRegex!595 thiss!17113 rules!1846) (list!7241 (++!4921 (charsOf!1860 (h!23613 tokens!457)) (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0))))))))

(assert (=> d!498462 (= lt!613695 (prefixMatchZipperSequence!623 (focus!201 (rulesRegex!595 thiss!17113 rules!1846)) (++!4921 (charsOf!1860 (h!23613 tokens!457)) (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0))) 0))))

(declare-fun lt!613696 () Unit!30315)

(declare-fun lt!613688 () Unit!30315)

(assert (=> d!498462 (= lt!613696 lt!613688)))

(declare-fun lt!613687 () List!18279)

(declare-fun lt!613692 () (InoxSet Context!1790))

(assert (=> d!498462 (= (prefixMatch!456 (rulesRegex!595 thiss!17113 rules!1846) lt!613687) (prefixMatchZipper!180 lt!613692 lt!613687))))

(declare-fun lt!613689 () List!18287)

(assert (=> d!498462 (= lt!613688 (prefixMatchZipperRegexEquiv!180 lt!613692 lt!613689 (rulesRegex!595 thiss!17113 rules!1846) lt!613687))))

(assert (=> d!498462 (= lt!613687 (list!7241 (++!4921 (charsOf!1860 (h!23613 tokens!457)) (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0)))))))

(assert (=> d!498462 (= lt!613689 (toList!941 (focus!201 (rulesRegex!595 thiss!17113 rules!1846))))))

(assert (=> d!498462 (= lt!613692 (focus!201 (rulesRegex!595 thiss!17113 rules!1846)))))

(declare-fun lt!613694 () Unit!30315)

(declare-fun lt!613693 () Unit!30315)

(assert (=> d!498462 (= lt!613694 lt!613693)))

(declare-fun lt!613691 () (InoxSet Context!1790))

(declare-fun lt!613690 () Int)

(assert (=> d!498462 (= (prefixMatchZipper!180 lt!613691 (dropList!674 (++!4921 (charsOf!1860 (h!23613 tokens!457)) (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0))) lt!613690)) (prefixMatchZipperSequence!623 lt!613691 (++!4921 (charsOf!1860 (h!23613 tokens!457)) (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0))) lt!613690))))

(assert (=> d!498462 (= lt!613693 (lemmaprefixMatchZipperSequenceEquivalent!180 lt!613691 (++!4921 (charsOf!1860 (h!23613 tokens!457)) (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0))) lt!613690))))

(assert (=> d!498462 (= lt!613690 0)))

(assert (=> d!498462 (= lt!613691 (focus!201 (rulesRegex!595 thiss!17113 rules!1846)))))

(assert (=> d!498462 (validRegex!1808 (rulesRegex!595 thiss!17113 rules!1846))))

(assert (=> d!498462 (= (prefixMatchZipperSequence!621 (rulesRegex!595 thiss!17113 rules!1846) (++!4921 (charsOf!1860 (h!23613 tokens!457)) (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0)))) lt!613695)))

(declare-fun bs!396632 () Bool)

(assert (= bs!396632 d!498462))

(declare-fun m!2003153 () Bool)

(assert (=> bs!396632 m!2003153))

(assert (=> bs!396632 m!1997805))

(declare-fun m!2003155 () Bool)

(assert (=> bs!396632 m!2003155))

(declare-fun m!2003157 () Bool)

(assert (=> bs!396632 m!2003157))

(declare-fun m!2003159 () Bool)

(assert (=> bs!396632 m!2003159))

(assert (=> bs!396632 m!1998151))

(declare-fun m!2003161 () Bool)

(assert (=> bs!396632 m!2003161))

(assert (=> bs!396632 m!1998151))

(declare-fun m!2003163 () Bool)

(assert (=> bs!396632 m!2003163))

(assert (=> bs!396632 m!1997805))

(declare-fun m!2003165 () Bool)

(assert (=> bs!396632 m!2003165))

(assert (=> bs!396632 m!1998151))

(assert (=> bs!396632 m!2003155))

(assert (=> bs!396632 m!2003159))

(declare-fun m!2003167 () Bool)

(assert (=> bs!396632 m!2003167))

(assert (=> bs!396632 m!1997805))

(assert (=> bs!396632 m!2003159))

(assert (=> bs!396632 m!1997805))

(declare-fun m!2003173 () Bool)

(assert (=> bs!396632 m!2003173))

(assert (=> bs!396632 m!1998151))

(declare-fun m!2003179 () Bool)

(assert (=> bs!396632 m!2003179))

(declare-fun m!2003181 () Bool)

(assert (=> bs!396632 m!2003181))

(declare-fun m!2003183 () Bool)

(assert (=> bs!396632 m!2003183))

(assert (=> bs!396632 m!1998151))

(assert (=> bs!396632 m!2003181))

(assert (=> bs!396632 m!1997805))

(declare-fun m!2003185 () Bool)

(assert (=> bs!396632 m!2003185))

(assert (=> d!497272 d!498462))

(declare-fun b!1652115 () Bool)

(declare-fun res!740425 () Bool)

(declare-fun e!1059406 () Bool)

(assert (=> b!1652115 (=> (not res!740425) (not e!1059406))))

(assert (=> b!1652115 (= res!740425 (<= (height!941 (++!4924 (c!268209 (charsOf!1860 (h!23613 tokens!457))) (c!268209 (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0))))) (+ (max!0 (height!941 (c!268209 (charsOf!1860 (h!23613 tokens!457)))) (height!941 (c!268209 (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0))))) 1)))))

(declare-fun b!1652117 () Bool)

(declare-fun lt!613697 () BalanceConc!12084)

(assert (=> b!1652117 (= e!1059406 (= (list!7241 lt!613697) (++!4922 (list!7241 (charsOf!1860 (h!23613 tokens!457))) (list!7241 (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0))))))))

(declare-fun b!1652114 () Bool)

(declare-fun res!740426 () Bool)

(assert (=> b!1652114 (=> (not res!740426) (not e!1059406))))

(assert (=> b!1652114 (= res!740426 (isBalanced!1862 (++!4924 (c!268209 (charsOf!1860 (h!23613 tokens!457))) (c!268209 (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0))))))))

(declare-fun b!1652116 () Bool)

(declare-fun res!740428 () Bool)

(assert (=> b!1652116 (=> (not res!740428) (not e!1059406))))

(assert (=> b!1652116 (= res!740428 (>= (height!941 (++!4924 (c!268209 (charsOf!1860 (h!23613 tokens!457))) (c!268209 (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0))))) (max!0 (height!941 (c!268209 (charsOf!1860 (h!23613 tokens!457)))) (height!941 (c!268209 (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0)))))))))

(declare-fun d!498464 () Bool)

(assert (=> d!498464 e!1059406))

(declare-fun res!740427 () Bool)

(assert (=> d!498464 (=> (not res!740427) (not e!1059406))))

(assert (=> d!498464 (= res!740427 (appendAssocInst!463 (c!268209 (charsOf!1860 (h!23613 tokens!457))) (c!268209 (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0)))))))

(assert (=> d!498464 (= lt!613697 (BalanceConc!12085 (++!4924 (c!268209 (charsOf!1860 (h!23613 tokens!457))) (c!268209 (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0))))))))

(assert (=> d!498464 (= (++!4921 (charsOf!1860 (h!23613 tokens!457)) (singletonSeq!1694 (apply!4798 (charsOf!1860 (h!23613 (t!150807 tokens!457))) 0))) lt!613697)))

(assert (= (and d!498464 res!740427) b!1652114))

(assert (= (and b!1652114 res!740426) b!1652115))

(assert (= (and b!1652115 res!740425) b!1652116))

(assert (= (and b!1652116 res!740428) b!1652117))

(declare-fun m!2003187 () Bool)

(assert (=> b!1652116 m!2003187))

(declare-fun m!2003189 () Bool)

(assert (=> b!1652116 m!2003189))

(declare-fun m!2003191 () Bool)

(assert (=> b!1652116 m!2003191))

(assert (=> b!1652116 m!2003189))

(assert (=> b!1652116 m!2003187))

(declare-fun m!2003193 () Bool)

(assert (=> b!1652116 m!2003193))

(assert (=> b!1652116 m!2003191))

(declare-fun m!2003195 () Bool)

(assert (=> b!1652116 m!2003195))

(declare-fun m!2003197 () Bool)

(assert (=> b!1652117 m!2003197))

(assert (=> b!1652117 m!1997893))

(declare-fun m!2003199 () Bool)

(assert (=> b!1652117 m!2003199))

(assert (=> b!1652117 m!1997809))

(declare-fun m!2003201 () Bool)

(assert (=> b!1652117 m!2003201))

(assert (=> b!1652117 m!2003199))

(assert (=> b!1652117 m!2003201))

(declare-fun m!2003203 () Bool)

(assert (=> b!1652117 m!2003203))

(assert (=> b!1652114 m!2003191))

(assert (=> b!1652114 m!2003191))

(declare-fun m!2003205 () Bool)

(assert (=> b!1652114 m!2003205))

(declare-fun m!2003207 () Bool)

(assert (=> d!498464 m!2003207))

(assert (=> d!498464 m!2003191))

(assert (=> b!1652115 m!2003187))

(assert (=> b!1652115 m!2003189))

(assert (=> b!1652115 m!2003191))

(assert (=> b!1652115 m!2003189))

(assert (=> b!1652115 m!2003187))

(assert (=> b!1652115 m!2003193))

(assert (=> b!1652115 m!2003191))

(assert (=> b!1652115 m!2003195))

(assert (=> d!497272 d!498464))

(assert (=> d!497272 d!497392))

(assert (=> d!497272 d!497422))

(assert (=> d!497272 d!497424))

(assert (=> d!497272 d!497426))

(declare-fun d!498470 () Bool)

(declare-fun lt!613700 () Bool)

(declare-fun content!2534 (List!18281) (InoxSet Rule!6222))

(assert (=> d!498470 (= lt!613700 (select (content!2534 rules!1846) (rule!5069 (_1!10345 (get!5302 lt!611619)))))))

(declare-fun e!1059411 () Bool)

(assert (=> d!498470 (= lt!613700 e!1059411)))

(declare-fun res!740434 () Bool)

(assert (=> d!498470 (=> (not res!740434) (not e!1059411))))

(assert (=> d!498470 (= res!740434 ((_ is Cons!18211) rules!1846))))

(assert (=> d!498470 (= (contains!3174 rules!1846 (rule!5069 (_1!10345 (get!5302 lt!611619)))) lt!613700)))

(declare-fun b!1652122 () Bool)

(declare-fun e!1059412 () Bool)

(assert (=> b!1652122 (= e!1059411 e!1059412)))

(declare-fun res!740433 () Bool)

(assert (=> b!1652122 (=> res!740433 e!1059412)))

(assert (=> b!1652122 (= res!740433 (= (h!23612 rules!1846) (rule!5069 (_1!10345 (get!5302 lt!611619)))))))

(declare-fun b!1652123 () Bool)

(assert (=> b!1652123 (= e!1059412 (contains!3174 (t!150806 rules!1846) (rule!5069 (_1!10345 (get!5302 lt!611619)))))))

(assert (= (and d!498470 res!740434) b!1652122))

(assert (= (and b!1652122 (not res!740433)) b!1652123))

(declare-fun m!2003209 () Bool)

(assert (=> d!498470 m!2003209))

(declare-fun m!2003211 () Bool)

(assert (=> d!498470 m!2003211))

(declare-fun m!2003213 () Bool)

(assert (=> b!1652123 m!2003213))

(assert (=> b!1649563 d!498470))

(assert (=> b!1649563 d!497614))

(declare-fun d!498472 () Bool)

(declare-fun c!268812 () Bool)

(assert (=> d!498472 (= c!268812 ((_ is Empty!6070) (c!268209 lt!611599)))))

(declare-fun e!1059413 () List!18279)

(assert (=> d!498472 (= (list!7244 (c!268209 lt!611599)) e!1059413)))

(declare-fun b!1652125 () Bool)

(declare-fun e!1059414 () List!18279)

(assert (=> b!1652125 (= e!1059413 e!1059414)))

(declare-fun c!268813 () Bool)

(assert (=> b!1652125 (= c!268813 ((_ is Leaf!8896) (c!268209 lt!611599)))))

(declare-fun b!1652124 () Bool)

(assert (=> b!1652124 (= e!1059413 Nil!18209)))

(declare-fun b!1652127 () Bool)

(assert (=> b!1652127 (= e!1059414 (++!4922 (list!7244 (left!14593 (c!268209 lt!611599))) (list!7244 (right!14923 (c!268209 lt!611599)))))))

(declare-fun b!1652126 () Bool)

(assert (=> b!1652126 (= e!1059414 (list!7249 (xs!8906 (c!268209 lt!611599))))))

(assert (= (and d!498472 c!268812) b!1652124))

(assert (= (and d!498472 (not c!268812)) b!1652125))

(assert (= (and b!1652125 c!268813) b!1652126))

(assert (= (and b!1652125 (not c!268813)) b!1652127))

(assert (=> b!1652127 m!2000277))

(assert (=> b!1652127 m!2000279))

(assert (=> b!1652127 m!2000277))

(assert (=> b!1652127 m!2000279))

(declare-fun m!2003215 () Bool)

(assert (=> b!1652127 m!2003215))

(declare-fun m!2003217 () Bool)

(assert (=> b!1652126 m!2003217))

(assert (=> d!497448 d!498472))

(declare-fun d!498474 () Bool)

(declare-fun e!1059415 () Bool)

(assert (=> d!498474 e!1059415))

(declare-fun res!740435 () Bool)

(assert (=> d!498474 (=> (not res!740435) (not e!1059415))))

(declare-fun lt!613701 () BalanceConc!12086)

(assert (=> d!498474 (= res!740435 (= (list!7242 lt!613701) (t!150807 (t!150807 tokens!457))))))

(assert (=> d!498474 (= lt!613701 (BalanceConc!12087 (fromList!400 (t!150807 (t!150807 tokens!457)))))))

(assert (=> d!498474 (= (fromListB!967 (t!150807 (t!150807 tokens!457))) lt!613701)))

(declare-fun b!1652128 () Bool)

(assert (=> b!1652128 (= e!1059415 (isBalanced!1861 (fromList!400 (t!150807 (t!150807 tokens!457)))))))

(assert (= (and d!498474 res!740435) b!1652128))

(declare-fun m!2003219 () Bool)

(assert (=> d!498474 m!2003219))

(declare-fun m!2003221 () Bool)

(assert (=> d!498474 m!2003221))

(assert (=> b!1652128 m!2003221))

(assert (=> b!1652128 m!2003221))

(declare-fun m!2003223 () Bool)

(assert (=> b!1652128 m!2003223))

(assert (=> d!497332 d!498474))

(declare-fun d!498476 () Bool)

(declare-fun e!1059416 () Bool)

(assert (=> d!498476 e!1059416))

(declare-fun res!740436 () Bool)

(assert (=> d!498476 (=> (not res!740436) (not e!1059416))))

(declare-fun lt!613702 () BalanceConc!12086)

(assert (=> d!498476 (= res!740436 (= (list!7242 lt!613702) (t!150807 tokens!457)))))

(assert (=> d!498476 (= lt!613702 (BalanceConc!12087 (fromList!400 (t!150807 tokens!457))))))

(assert (=> d!498476 (= (fromListB!967 (t!150807 tokens!457)) lt!613702)))

(declare-fun b!1652129 () Bool)

(assert (=> b!1652129 (= e!1059416 (isBalanced!1861 (fromList!400 (t!150807 tokens!457))))))

(assert (= (and d!498476 res!740436) b!1652129))

(declare-fun m!2003225 () Bool)

(assert (=> d!498476 m!2003225))

(declare-fun m!2003227 () Bool)

(assert (=> d!498476 m!2003227))

(assert (=> b!1652129 m!2003227))

(assert (=> b!1652129 m!2003227))

(declare-fun m!2003229 () Bool)

(assert (=> b!1652129 m!2003229))

(assert (=> d!497394 d!498476))

(declare-fun b!1652130 () Bool)

(declare-fun e!1059417 () Bool)

(assert (=> b!1652130 (= e!1059417 (not (isEmpty!11254 (right!14923 (++!4924 (c!268209 lt!611594) (c!268209 lt!611599))))))))

(declare-fun b!1652131 () Bool)

(declare-fun res!740441 () Bool)

(assert (=> b!1652131 (=> (not res!740441) (not e!1059417))))

(assert (=> b!1652131 (= res!740441 (isBalanced!1862 (left!14593 (++!4924 (c!268209 lt!611594) (c!268209 lt!611599)))))))

(declare-fun b!1652132 () Bool)

(declare-fun res!740438 () Bool)

(assert (=> b!1652132 (=> (not res!740438) (not e!1059417))))

(assert (=> b!1652132 (= res!740438 (isBalanced!1862 (right!14923 (++!4924 (c!268209 lt!611594) (c!268209 lt!611599)))))))

(declare-fun b!1652133 () Bool)

(declare-fun res!740440 () Bool)

(assert (=> b!1652133 (=> (not res!740440) (not e!1059417))))

(assert (=> b!1652133 (= res!740440 (not (isEmpty!11254 (left!14593 (++!4924 (c!268209 lt!611594) (c!268209 lt!611599))))))))

(declare-fun b!1652134 () Bool)

(declare-fun e!1059418 () Bool)

(assert (=> b!1652134 (= e!1059418 e!1059417)))

(declare-fun res!740437 () Bool)

(assert (=> b!1652134 (=> (not res!740437) (not e!1059417))))

(assert (=> b!1652134 (= res!740437 (<= (- 1) (- (height!941 (left!14593 (++!4924 (c!268209 lt!611594) (c!268209 lt!611599)))) (height!941 (right!14923 (++!4924 (c!268209 lt!611594) (c!268209 lt!611599)))))))))

(declare-fun d!498478 () Bool)

(declare-fun res!740439 () Bool)

(assert (=> d!498478 (=> res!740439 e!1059418)))

(assert (=> d!498478 (= res!740439 (not ((_ is Node!6070) (++!4924 (c!268209 lt!611594) (c!268209 lt!611599)))))))

(assert (=> d!498478 (= (isBalanced!1862 (++!4924 (c!268209 lt!611594) (c!268209 lt!611599))) e!1059418)))

(declare-fun b!1652135 () Bool)

(declare-fun res!740442 () Bool)

(assert (=> b!1652135 (=> (not res!740442) (not e!1059417))))

(assert (=> b!1652135 (= res!740442 (<= (- (height!941 (left!14593 (++!4924 (c!268209 lt!611594) (c!268209 lt!611599)))) (height!941 (right!14923 (++!4924 (c!268209 lt!611594) (c!268209 lt!611599))))) 1))))

(assert (= (and d!498478 (not res!740439)) b!1652134))

(assert (= (and b!1652134 res!740437) b!1652135))

(assert (= (and b!1652135 res!740442) b!1652131))

(assert (= (and b!1652131 res!740441) b!1652132))

(assert (= (and b!1652132 res!740438) b!1652133))

(assert (= (and b!1652133 res!740440) b!1652130))

(declare-fun m!2003231 () Bool)

(assert (=> b!1652130 m!2003231))

(declare-fun m!2003233 () Bool)

(assert (=> b!1652132 m!2003233))

(declare-fun m!2003235 () Bool)

(assert (=> b!1652134 m!2003235))

(declare-fun m!2003237 () Bool)

(assert (=> b!1652134 m!2003237))

(declare-fun m!2003239 () Bool)

(assert (=> b!1652131 m!2003239))

(assert (=> b!1652135 m!2003235))

(assert (=> b!1652135 m!2003237))

(declare-fun m!2003241 () Bool)

(assert (=> b!1652133 m!2003241))

(assert (=> b!1649963 d!498478))

(assert (=> b!1649963 d!497810))

(declare-fun d!498480 () Bool)

(assert (=> d!498480 (= (list!7241 lt!612093) (list!7244 (c!268209 lt!612093)))))

(declare-fun bs!396635 () Bool)

(assert (= bs!396635 d!498480))

(declare-fun m!2003243 () Bool)

(assert (=> bs!396635 m!2003243))

(assert (=> d!497376 d!498480))

(declare-fun d!498482 () Bool)

(declare-fun c!268814 () Bool)

(assert (=> d!498482 (= c!268814 ((_ is Cons!18212) (list!7242 (seqFromList!2162 tokens!457))))))

(declare-fun e!1059419 () List!18279)

(assert (=> d!498482 (= (printList!953 thiss!17113 (list!7242 (seqFromList!2162 tokens!457))) e!1059419)))

(declare-fun b!1652136 () Bool)

(assert (=> b!1652136 (= e!1059419 (++!4922 (list!7241 (charsOf!1860 (h!23613 (list!7242 (seqFromList!2162 tokens!457))))) (printList!953 thiss!17113 (t!150807 (list!7242 (seqFromList!2162 tokens!457))))))))

(declare-fun b!1652137 () Bool)

(assert (=> b!1652137 (= e!1059419 Nil!18209)))

(assert (= (and d!498482 c!268814) b!1652136))

(assert (= (and d!498482 (not c!268814)) b!1652137))

(declare-fun m!2003245 () Bool)

(assert (=> b!1652136 m!2003245))

(assert (=> b!1652136 m!2003245))

(declare-fun m!2003247 () Bool)

(assert (=> b!1652136 m!2003247))

(declare-fun m!2003249 () Bool)

(assert (=> b!1652136 m!2003249))

(assert (=> b!1652136 m!2003247))

(assert (=> b!1652136 m!2003249))

(declare-fun m!2003251 () Bool)

(assert (=> b!1652136 m!2003251))

(assert (=> d!497376 d!498482))

(declare-fun d!498484 () Bool)

(assert (=> d!498484 (= (list!7242 (seqFromList!2162 tokens!457)) (list!7246 (c!268211 (seqFromList!2162 tokens!457))))))

(declare-fun bs!396636 () Bool)

(assert (= bs!396636 d!498484))

(declare-fun m!2003253 () Bool)

(assert (=> bs!396636 m!2003253))

(assert (=> d!497376 d!498484))

(declare-fun d!498486 () Bool)

(declare-fun lt!613704 () BalanceConc!12084)

(assert (=> d!498486 (= (list!7241 lt!613704) (printListTailRec!393 thiss!17113 (dropList!673 (seqFromList!2162 tokens!457) 0) (list!7241 (BalanceConc!12085 Empty!6070))))))

(declare-fun e!1059421 () BalanceConc!12084)

(assert (=> d!498486 (= lt!613704 e!1059421)))

(declare-fun c!268815 () Bool)

(assert (=> d!498486 (= c!268815 (>= 0 (size!14503 (seqFromList!2162 tokens!457))))))

(declare-fun e!1059420 () Bool)

(assert (=> d!498486 e!1059420))

(declare-fun res!740443 () Bool)

(assert (=> d!498486 (=> (not res!740443) (not e!1059420))))

(assert (=> d!498486 (= res!740443 (>= 0 0))))

(assert (=> d!498486 (= (printTailRec!891 thiss!17113 (seqFromList!2162 tokens!457) 0 (BalanceConc!12085 Empty!6070)) lt!613704)))

(declare-fun b!1652138 () Bool)

(assert (=> b!1652138 (= e!1059420 (<= 0 (size!14503 (seqFromList!2162 tokens!457))))))

(declare-fun b!1652139 () Bool)

(assert (=> b!1652139 (= e!1059421 (BalanceConc!12085 Empty!6070))))

(declare-fun b!1652140 () Bool)

(assert (=> b!1652140 (= e!1059421 (printTailRec!891 thiss!17113 (seqFromList!2162 tokens!457) (+ 0 1) (++!4921 (BalanceConc!12085 Empty!6070) (charsOf!1860 (apply!4805 (seqFromList!2162 tokens!457) 0)))))))

(declare-fun lt!613708 () List!18282)

(assert (=> b!1652140 (= lt!613708 (list!7242 (seqFromList!2162 tokens!457)))))

(declare-fun lt!613703 () Unit!30315)

(assert (=> b!1652140 (= lt!613703 (lemmaDropApply!600 lt!613708 0))))

(assert (=> b!1652140 (= (head!3634 (drop!912 lt!613708 0)) (apply!4806 lt!613708 0))))

(declare-fun lt!613705 () Unit!30315)

(assert (=> b!1652140 (= lt!613705 lt!613703)))

(declare-fun lt!613707 () List!18282)

(assert (=> b!1652140 (= lt!613707 (list!7242 (seqFromList!2162 tokens!457)))))

(declare-fun lt!613709 () Unit!30315)

(assert (=> b!1652140 (= lt!613709 (lemmaDropTail!580 lt!613707 0))))

(assert (=> b!1652140 (= (tail!2442 (drop!912 lt!613707 0)) (drop!912 lt!613707 (+ 0 1)))))

(declare-fun lt!613706 () Unit!30315)

(assert (=> b!1652140 (= lt!613706 lt!613709)))

(assert (= (and d!498486 res!740443) b!1652138))

(assert (= (and d!498486 c!268815) b!1652139))

(assert (= (and d!498486 (not c!268815)) b!1652140))

(assert (=> d!498486 m!1997895))

(declare-fun m!2003255 () Bool)

(assert (=> d!498486 m!2003255))

(declare-fun m!2003257 () Bool)

(assert (=> d!498486 m!2003257))

(assert (=> d!498486 m!1997895))

(declare-fun m!2003259 () Bool)

(assert (=> d!498486 m!2003259))

(assert (=> d!498486 m!2003255))

(assert (=> d!498486 m!1998039))

(declare-fun m!2003261 () Bool)

(assert (=> d!498486 m!2003261))

(assert (=> d!498486 m!1998039))

(assert (=> b!1652138 m!1997895))

(assert (=> b!1652138 m!2003259))

(declare-fun m!2003263 () Bool)

(assert (=> b!1652140 m!2003263))

(declare-fun m!2003265 () Bool)

(assert (=> b!1652140 m!2003265))

(declare-fun m!2003267 () Bool)

(assert (=> b!1652140 m!2003267))

(declare-fun m!2003269 () Bool)

(assert (=> b!1652140 m!2003269))

(assert (=> b!1652140 m!1997895))

(assert (=> b!1652140 m!2003265))

(assert (=> b!1652140 m!1997895))

(declare-fun m!2003271 () Bool)

(assert (=> b!1652140 m!2003271))

(declare-fun m!2003273 () Bool)

(assert (=> b!1652140 m!2003273))

(declare-fun m!2003275 () Bool)

(assert (=> b!1652140 m!2003275))

(declare-fun m!2003277 () Bool)

(assert (=> b!1652140 m!2003277))

(declare-fun m!2003279 () Bool)

(assert (=> b!1652140 m!2003279))

(declare-fun m!2003281 () Bool)

(assert (=> b!1652140 m!2003281))

(declare-fun m!2003283 () Bool)

(assert (=> b!1652140 m!2003283))

(assert (=> b!1652140 m!2003267))

(assert (=> b!1652140 m!2003271))

(assert (=> b!1652140 m!2003281))

(assert (=> b!1652140 m!1997895))

(assert (=> b!1652140 m!1998689))

(declare-fun m!2003285 () Bool)

(assert (=> b!1652140 m!2003285))

(assert (=> b!1652140 m!2003275))

(assert (=> d!497376 d!498486))

(declare-fun d!498488 () Bool)

(assert (=> d!498488 (= (isEmpty!11250 (list!7242 (_1!10343 (lex!1324 thiss!17113 rules!1846 (seqFromList!2161 lt!611596))))) ((_ is Nil!18212) (list!7242 (_1!10343 (lex!1324 thiss!17113 rules!1846 (seqFromList!2161 lt!611596))))))))

(assert (=> d!497434 d!498488))

(assert (=> d!497434 d!498200))

(declare-fun d!498490 () Bool)

(declare-fun lt!613712 () Bool)

(assert (=> d!498490 (= lt!613712 (isEmpty!11250 (list!7246 (c!268211 (_1!10343 (lex!1324 thiss!17113 rules!1846 (seqFromList!2161 lt!611596)))))))))

(assert (=> d!498490 (= lt!613712 (= (size!14509 (c!268211 (_1!10343 (lex!1324 thiss!17113 rules!1846 (seqFromList!2161 lt!611596))))) 0))))

(assert (=> d!498490 (= (isEmpty!11251 (c!268211 (_1!10343 (lex!1324 thiss!17113 rules!1846 (seqFromList!2161 lt!611596))))) lt!613712)))

(declare-fun bs!396637 () Bool)

(assert (= bs!396637 d!498490))

(assert (=> bs!396637 m!2001693))

(assert (=> bs!396637 m!2001693))

(declare-fun m!2003287 () Bool)

(assert (=> bs!396637 m!2003287))

(declare-fun m!2003289 () Bool)

(assert (=> bs!396637 m!2003289))

(assert (=> d!497434 d!498490))

(declare-fun d!498492 () Bool)

(assert (=> d!498492 (= (isEmpty!11244 lt!611619) (not ((_ is Some!3457) lt!611619)))))

(assert (=> d!497244 d!498492))

(declare-fun b!1652141 () Bool)

(declare-fun e!1059424 () Bool)

(declare-fun e!1059423 () Bool)

(assert (=> b!1652141 (= e!1059424 e!1059423)))

(declare-fun res!740444 () Bool)

(assert (=> b!1652141 (=> (not res!740444) (not e!1059423))))

(assert (=> b!1652141 (= res!740444 (not ((_ is Nil!18209) lt!611579)))))

(declare-fun b!1652143 () Bool)

(assert (=> b!1652143 (= e!1059423 (isPrefix!1469 (tail!2444 lt!611579) (tail!2444 lt!611579)))))

(declare-fun b!1652142 () Bool)

(declare-fun res!740445 () Bool)

(assert (=> b!1652142 (=> (not res!740445) (not e!1059423))))

(assert (=> b!1652142 (= res!740445 (= (head!3631 lt!611579) (head!3631 lt!611579)))))

(declare-fun b!1652144 () Bool)

(declare-fun e!1059422 () Bool)

(assert (=> b!1652144 (= e!1059422 (>= (size!14501 lt!611579) (size!14501 lt!611579)))))

(declare-fun d!498494 () Bool)

(assert (=> d!498494 e!1059422))

(declare-fun res!740447 () Bool)

(assert (=> d!498494 (=> res!740447 e!1059422)))

(declare-fun lt!613713 () Bool)

(assert (=> d!498494 (= res!740447 (not lt!613713))))

(assert (=> d!498494 (= lt!613713 e!1059424)))

(declare-fun res!740446 () Bool)

(assert (=> d!498494 (=> res!740446 e!1059424)))

(assert (=> d!498494 (= res!740446 ((_ is Nil!18209) lt!611579))))

(assert (=> d!498494 (= (isPrefix!1469 lt!611579 lt!611579) lt!613713)))

(assert (= (and d!498494 (not res!740446)) b!1652141))

(assert (= (and b!1652141 res!740444) b!1652142))

(assert (= (and b!1652142 res!740445) b!1652143))

(assert (= (and d!498494 (not res!740447)) b!1652144))

(declare-fun m!2003291 () Bool)

(assert (=> b!1652143 m!2003291))

(assert (=> b!1652143 m!2003291))

(assert (=> b!1652143 m!2003291))

(assert (=> b!1652143 m!2003291))

(declare-fun m!2003293 () Bool)

(assert (=> b!1652143 m!2003293))

(declare-fun m!2003295 () Bool)

(assert (=> b!1652142 m!2003295))

(assert (=> b!1652142 m!2003295))

(assert (=> b!1652144 m!1997973))

(assert (=> b!1652144 m!1997973))

(assert (=> d!497244 d!498494))

(declare-fun d!498496 () Bool)

(assert (=> d!498496 (isPrefix!1469 lt!611579 lt!611579)))

(declare-fun lt!613714 () Unit!30315)

(assert (=> d!498496 (= lt!613714 (choose!9928 lt!611579 lt!611579))))

(assert (=> d!498496 (= (lemmaIsPrefixRefl!995 lt!611579 lt!611579) lt!613714)))

(declare-fun bs!396638 () Bool)

(assert (= bs!396638 d!498496))

(assert (=> bs!396638 m!1997957))

(declare-fun m!2003297 () Bool)

(assert (=> bs!396638 m!2003297))

(assert (=> d!497244 d!498496))

(assert (=> d!497244 d!498454))

(declare-fun d!498498 () Bool)

(assert (=> d!498498 (= (isEmpty!11248 (maxPrefixZipperSequence!717 thiss!17113 rules!1846 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457))))) (not ((_ is Some!3456) (maxPrefixZipperSequence!717 thiss!17113 rules!1846 (seqFromList!2161 (originalCharacters!4025 (h!23613 tokens!457)))))))))

(assert (=> d!497320 d!498498))

(declare-fun d!498500 () Bool)

(assert (=> d!498500 (= (list!7242 lt!611704) (list!7246 (c!268211 lt!611704)))))

(declare-fun bs!396639 () Bool)

(assert (= bs!396639 d!498500))

(declare-fun m!2003299 () Bool)

(assert (=> bs!396639 m!2003299))

(assert (=> d!497258 d!498500))

(declare-fun d!498502 () Bool)

(declare-fun e!1059427 () Bool)

(assert (=> d!498502 e!1059427))

(declare-fun res!740450 () Bool)

(assert (=> d!498502 (=> (not res!740450) (not e!1059427))))

(declare-fun lt!613717 () BalanceConc!12086)

(assert (=> d!498502 (= res!740450 (= (list!7242 lt!613717) (Cons!18212 (h!23613 tokens!457) Nil!18212)))))

(declare-fun choose!9930 (Token!5988) BalanceConc!12086)

(assert (=> d!498502 (= lt!613717 (choose!9930 (h!23613 tokens!457)))))

(assert (=> d!498502 (= (singleton!735 (h!23613 tokens!457)) lt!613717)))

(declare-fun b!1652147 () Bool)

(assert (=> b!1652147 (= e!1059427 (isBalanced!1861 (c!268211 lt!613717)))))

(assert (= (and d!498502 res!740450) b!1652147))

(declare-fun m!2003301 () Bool)

(assert (=> d!498502 m!2003301))

(declare-fun m!2003303 () Bool)

(assert (=> d!498502 m!2003303))

(declare-fun m!2003305 () Bool)

(assert (=> b!1652147 m!2003305))

(assert (=> d!497258 d!498502))

(declare-fun d!498504 () Bool)

(assert (=> d!498504 (= (dropList!673 lt!611584 0) (drop!912 (list!7246 (c!268211 lt!611584)) 0))))

(declare-fun bs!396640 () Bool)

(assert (= bs!396640 d!498504))

(assert (=> bs!396640 m!2000973))

(assert (=> bs!396640 m!2000973))

(declare-fun m!2003307 () Bool)

(assert (=> bs!396640 m!2003307))

(assert (=> d!497248 d!498504))

(declare-fun d!498506 () Bool)

(assert (=> d!498506 (= (list!7241 lt!611693) (list!7244 (c!268209 lt!611693)))))

(declare-fun bs!396641 () Bool)

(assert (= bs!396641 d!498506))

(declare-fun m!2003309 () Bool)

(assert (=> bs!396641 m!2003309))

(assert (=> d!497248 d!498506))

(declare-fun d!498508 () Bool)

(assert (=> d!498508 (= (list!7241 (BalanceConc!12085 Empty!6070)) (list!7244 (c!268209 (BalanceConc!12085 Empty!6070))))))

(declare-fun bs!396642 () Bool)

(assert (= bs!396642 d!498508))

(declare-fun m!2003311 () Bool)

(assert (=> bs!396642 m!2003311))

(assert (=> d!497248 d!498508))

(assert (=> d!497248 d!497980))

(declare-fun d!498510 () Bool)

(declare-fun lt!613730 () List!18279)

(assert (=> d!498510 (= lt!613730 (++!4922 (list!7241 (BalanceConc!12085 Empty!6070)) (printList!953 thiss!17113 (dropList!673 lt!611584 0))))))

(declare-fun e!1059430 () List!18279)

(assert (=> d!498510 (= lt!613730 e!1059430)))

(declare-fun c!268818 () Bool)

(assert (=> d!498510 (= c!268818 ((_ is Cons!18212) (dropList!673 lt!611584 0)))))

(assert (=> d!498510 (= (printListTailRec!393 thiss!17113 (dropList!673 lt!611584 0) (list!7241 (BalanceConc!12085 Empty!6070))) lt!613730)))

(declare-fun b!1652152 () Bool)

(assert (=> b!1652152 (= e!1059430 (printListTailRec!393 thiss!17113 (t!150807 (dropList!673 lt!611584 0)) (++!4922 (list!7241 (BalanceConc!12085 Empty!6070)) (list!7241 (charsOf!1860 (h!23613 (dropList!673 lt!611584 0)))))))))

(declare-fun lt!613731 () List!18279)

(assert (=> b!1652152 (= lt!613731 (list!7241 (charsOf!1860 (h!23613 (dropList!673 lt!611584 0)))))))

(declare-fun lt!613732 () List!18279)

(assert (=> b!1652152 (= lt!613732 (printList!953 thiss!17113 (t!150807 (dropList!673 lt!611584 0))))))

(declare-fun lt!613728 () Unit!30315)

(assert (=> b!1652152 (= lt!613728 (lemmaConcatAssociativity!1024 (list!7241 (BalanceConc!12085 Empty!6070)) lt!613731 lt!613732))))

(assert (=> b!1652152 (= (++!4922 (++!4922 (list!7241 (BalanceConc!12085 Empty!6070)) lt!613731) lt!613732) (++!4922 (list!7241 (BalanceConc!12085 Empty!6070)) (++!4922 lt!613731 lt!613732)))))

(declare-fun lt!613729 () Unit!30315)

(assert (=> b!1652152 (= lt!613729 lt!613728)))

(declare-fun b!1652153 () Bool)

(assert (=> b!1652153 (= e!1059430 (list!7241 (BalanceConc!12085 Empty!6070)))))

(assert (= (and d!498510 c!268818) b!1652152))

(assert (= (and d!498510 (not c!268818)) b!1652153))

(assert (=> d!498510 m!1998033))

(declare-fun m!2003313 () Bool)

(assert (=> d!498510 m!2003313))

(assert (=> d!498510 m!1998039))

(assert (=> d!498510 m!2003313))

(declare-fun m!2003315 () Bool)

(assert (=> d!498510 m!2003315))

(declare-fun m!2003317 () Bool)

(assert (=> b!1652152 m!2003317))

(declare-fun m!2003319 () Bool)

(assert (=> b!1652152 m!2003319))

(assert (=> b!1652152 m!1998039))

(declare-fun m!2003321 () Bool)

(assert (=> b!1652152 m!2003321))

(assert (=> b!1652152 m!2003317))

(declare-fun m!2003323 () Bool)

(assert (=> b!1652152 m!2003323))

(assert (=> b!1652152 m!1998039))

(declare-fun m!2003325 () Bool)

(assert (=> b!1652152 m!2003325))

(declare-fun m!2003327 () Bool)

(assert (=> b!1652152 m!2003327))

(assert (=> b!1652152 m!1998039))

(declare-fun m!2003329 () Bool)

(assert (=> b!1652152 m!2003329))

(assert (=> b!1652152 m!1998039))

(declare-fun m!2003331 () Bool)

(assert (=> b!1652152 m!2003331))

(assert (=> b!1652152 m!2003329))

(declare-fun m!2003333 () Bool)

(assert (=> b!1652152 m!2003333))

(declare-fun m!2003335 () Bool)

(assert (=> b!1652152 m!2003335))

(assert (=> b!1652152 m!2003321))

(assert (=> b!1652152 m!2003325))

(assert (=> b!1652152 m!2003335))

(assert (=> d!497248 d!498510))

(declare-fun d!498512 () Bool)

(assert (=> d!498512 (= (list!7241 lt!611701) (list!7244 (c!268209 lt!611701)))))

(declare-fun bs!396643 () Bool)

(assert (= bs!396643 d!498512))

(declare-fun m!2003337 () Bool)

(assert (=> bs!396643 m!2003337))

(assert (=> d!497254 d!498512))

(declare-fun d!498514 () Bool)

(declare-fun c!268819 () Bool)

(assert (=> d!498514 (= c!268819 ((_ is Cons!18212) (list!7242 lt!611584)))))

(declare-fun e!1059431 () List!18279)

(assert (=> d!498514 (= (printList!953 thiss!17113 (list!7242 lt!611584)) e!1059431)))

(declare-fun b!1652154 () Bool)

(assert (=> b!1652154 (= e!1059431 (++!4922 (list!7241 (charsOf!1860 (h!23613 (list!7242 lt!611584)))) (printList!953 thiss!17113 (t!150807 (list!7242 lt!611584)))))))

(declare-fun b!1652155 () Bool)

(assert (=> b!1652155 (= e!1059431 Nil!18209)))

(assert (= (and d!498514 c!268819) b!1652154))

(assert (= (and d!498514 (not c!268819)) b!1652155))

(declare-fun m!2003339 () Bool)

(assert (=> b!1652154 m!2003339))

(assert (=> b!1652154 m!2003339))

(declare-fun m!2003341 () Bool)

(assert (=> b!1652154 m!2003341))

(declare-fun m!2003343 () Bool)

(assert (=> b!1652154 m!2003343))

(assert (=> b!1652154 m!2003341))

(assert (=> b!1652154 m!2003343))

(declare-fun m!2003345 () Bool)

(assert (=> b!1652154 m!2003345))

(assert (=> d!497254 d!498514))

(assert (=> d!497254 d!498008))

(assert (=> d!497254 d!497248))

(assert (=> b!1649629 d!497442))

(assert (=> b!1649629 d!497272))

(assert (=> b!1649629 d!497928))

(declare-fun d!498516 () Bool)

(assert (=> d!498516 (rulesProduceIndividualToken!1488 thiss!17113 rules!1846 (h!23613 tokens!457))))

(declare-fun lt!613735 () Unit!30315)

(declare-fun choose!9931 (LexerInterface!2840 List!18281 List!18282 Token!5988) Unit!30315)

(assert (=> d!498516 (= lt!613735 (choose!9931 thiss!17113 rules!1846 tokens!457 (h!23613 tokens!457)))))

(assert (=> d!498516 (not (isEmpty!11239 rules!1846))))

(assert (=> d!498516 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!606 thiss!17113 rules!1846 tokens!457 (h!23613 tokens!457)) lt!613735)))

(declare-fun bs!396644 () Bool)

(assert (= bs!396644 d!498516))

(assert (=> bs!396644 m!1997827))

(declare-fun m!2003347 () Bool)

(assert (=> bs!396644 m!2003347))

(assert (=> bs!396644 m!1997843))

(assert (=> b!1649629 d!498516))

(assert (=> b!1649629 d!497426))

(declare-fun d!498518 () Bool)

(declare-fun lt!613737 () Bool)

(declare-fun e!1059433 () Bool)

(assert (=> d!498518 (= lt!613737 e!1059433)))

(declare-fun res!740451 () Bool)

(assert (=> d!498518 (=> (not res!740451) (not e!1059433))))

(assert (=> d!498518 (= res!740451 (= (list!7242 (_1!10343 (lex!1324 thiss!17113 rules!1846 (print!1371 thiss!17113 (singletonSeq!1695 (h!23613 (t!150807 tokens!457))))))) (list!7242 (singletonSeq!1695 (h!23613 (t!150807 tokens!457))))))))

(declare-fun e!1059432 () Bool)

(assert (=> d!498518 (= lt!613737 e!1059432)))

(declare-fun res!740452 () Bool)

(assert (=> d!498518 (=> (not res!740452) (not e!1059432))))

(declare-fun lt!613736 () tuple2!17882)

(assert (=> d!498518 (= res!740452 (= (size!14503 (_1!10343 lt!613736)) 1))))

(assert (=> d!498518 (= lt!613736 (lex!1324 thiss!17113 rules!1846 (print!1371 thiss!17113 (singletonSeq!1695 (h!23613 (t!150807 tokens!457))))))))

(assert (=> d!498518 (not (isEmpty!11239 rules!1846))))

(assert (=> d!498518 (= (rulesProduceIndividualToken!1488 thiss!17113 rules!1846 (h!23613 (t!150807 tokens!457))) lt!613737)))

(declare-fun b!1652156 () Bool)

(declare-fun res!740453 () Bool)

(assert (=> b!1652156 (=> (not res!740453) (not e!1059432))))

(assert (=> b!1652156 (= res!740453 (= (apply!4805 (_1!10343 lt!613736) 0) (h!23613 (t!150807 tokens!457))))))

(declare-fun b!1652157 () Bool)

(assert (=> b!1652157 (= e!1059432 (isEmpty!11247 (_2!10343 lt!613736)))))

(declare-fun b!1652158 () Bool)

(assert (=> b!1652158 (= e!1059433 (isEmpty!11247 (_2!10343 (lex!1324 thiss!17113 rules!1846 (print!1371 thiss!17113 (singletonSeq!1695 (h!23613 (t!150807 tokens!457))))))))))

(assert (= (and d!498518 res!740452) b!1652156))

(assert (= (and b!1652156 res!740453) b!1652157))

(assert (= (and d!498518 res!740451) b!1652158))

(assert (=> d!498518 m!1998337))

(declare-fun m!2003349 () Bool)

(assert (=> d!498518 m!2003349))

(assert (=> d!498518 m!1998335))

(assert (=> d!498518 m!1998337))

(declare-fun m!2003351 () Bool)

(assert (=> d!498518 m!2003351))

(declare-fun m!2003353 () Bool)

(assert (=> d!498518 m!2003353))

(assert (=> d!498518 m!1997843))

(assert (=> d!498518 m!1998335))

(assert (=> d!498518 m!1998335))

(assert (=> d!498518 m!2002295))

(declare-fun m!2003355 () Bool)

(assert (=> b!1652156 m!2003355))

(declare-fun m!2003357 () Bool)

(assert (=> b!1652157 m!2003357))

(assert (=> b!1652158 m!1998335))

(assert (=> b!1652158 m!1998335))

(assert (=> b!1652158 m!1998337))

(assert (=> b!1652158 m!1998337))

(assert (=> b!1652158 m!2003349))

(declare-fun m!2003359 () Bool)

(assert (=> b!1652158 m!2003359))

(assert (=> b!1649629 d!498518))

(declare-fun d!498520 () Bool)

(assert (=> d!498520 (rulesProduceIndividualToken!1488 thiss!17113 rules!1846 (h!23613 (t!150807 tokens!457)))))

(declare-fun lt!613738 () Unit!30315)

(assert (=> d!498520 (= lt!613738 (choose!9931 thiss!17113 rules!1846 tokens!457 (h!23613 (t!150807 tokens!457))))))

(assert (=> d!498520 (not (isEmpty!11239 rules!1846))))

(assert (=> d!498520 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!606 thiss!17113 rules!1846 tokens!457 (h!23613 (t!150807 tokens!457))) lt!613738)))

(declare-fun bs!396645 () Bool)

(assert (= bs!396645 d!498520))

(assert (=> bs!396645 m!1998121))

(declare-fun m!2003361 () Bool)

(assert (=> bs!396645 m!2003361))

(assert (=> bs!396645 m!1997843))

(assert (=> b!1649629 d!498520))

(declare-fun d!498522 () Bool)

(declare-fun lt!613739 () Bool)

(assert (=> d!498522 (= lt!613739 (isEmpty!11250 (list!7242 (_1!10343 lt!612099))))))

(assert (=> d!498522 (= lt!613739 (isEmpty!11251 (c!268211 (_1!10343 lt!612099))))))

(assert (=> d!498522 (= (isEmpty!11238 (_1!10343 lt!612099)) lt!613739)))

(declare-fun bs!396646 () Bool)

(assert (= bs!396646 d!498522))

(assert (=> bs!396646 m!1998705))

(assert (=> bs!396646 m!1998705))

(declare-fun m!2003363 () Bool)

(assert (=> bs!396646 m!2003363))

(declare-fun m!2003365 () Bool)

(assert (=> bs!396646 m!2003365))

(assert (=> b!1649862 d!498522))

(declare-fun d!498524 () Bool)

(assert (=> d!498524 (= (isEmpty!11246 (++!4922 lt!611596 lt!611595)) ((_ is Nil!18209) (++!4922 lt!611596 lt!611595)))))

(assert (=> d!497444 d!498524))

(declare-fun lt!613740 () Bool)

(declare-fun d!498526 () Bool)

(assert (=> d!498526 (= lt!613740 (isEmpty!11246 (list!7241 (_2!10343 (lex!1324 thiss!17113 rules!1846 (print!1371 thiss!17113 (singletonSeq!1695 (h!23613 tokens!457))))))))))

(assert (=> d!498526 (= lt!613740 (isEmpty!11254 (c!268209 (_2!10343 (lex!1324 thiss!17113 rules!1846 (print!1371 thiss!17113 (singletonSeq!1695 (h!23613 tokens!457))))))))))

(assert (=> d!498526 (= (isEmpty!11247 (_2!10343 (lex!1324 thiss!17113 rules!1846 (print!1371 thiss!17113 (singletonSeq!1695 (h!23613 tokens!457)))))) lt!613740)))

(declare-fun bs!396647 () Bool)

(assert (= bs!396647 d!498526))

(declare-fun m!2003367 () Bool)

(assert (=> bs!396647 m!2003367))

(assert (=> bs!396647 m!2003367))

(declare-fun m!2003369 () Bool)

(assert (=> bs!396647 m!2003369))

(declare-fun m!2003371 () Bool)

(assert (=> bs!396647 m!2003371))

(assert (=> b!1650033 d!498526))

(assert (=> b!1650033 d!497786))

(assert (=> b!1650033 d!497782))

(assert (=> b!1650033 d!497258))

(declare-fun b!1652162 () Bool)

(declare-fun e!1059434 () Bool)

(declare-fun tp!477899 () Bool)

(declare-fun tp!477896 () Bool)

(assert (=> b!1652162 (= e!1059434 (and tp!477899 tp!477896))))

(declare-fun b!1652159 () Bool)

(assert (=> b!1652159 (= e!1059434 tp_is_empty!7365)))

(declare-fun b!1652160 () Bool)

(declare-fun tp!477897 () Bool)

(declare-fun tp!477900 () Bool)

(assert (=> b!1652160 (= e!1059434 (and tp!477897 tp!477900))))

(declare-fun b!1652161 () Bool)

(declare-fun tp!477898 () Bool)

(assert (=> b!1652161 (= e!1059434 tp!477898)))

(assert (=> b!1650093 (= tp!477800 e!1059434)))

(assert (= (and b!1650093 ((_ is ElementMatch!4539) (reg!4868 (regex!3211 (rule!5069 (h!23613 tokens!457)))))) b!1652159))

(assert (= (and b!1650093 ((_ is Concat!7841) (reg!4868 (regex!3211 (rule!5069 (h!23613 tokens!457)))))) b!1652160))

(assert (= (and b!1650093 ((_ is Star!4539) (reg!4868 (regex!3211 (rule!5069 (h!23613 tokens!457)))))) b!1652161))

(assert (= (and b!1650093 ((_ is Union!4539) (reg!4868 (regex!3211 (rule!5069 (h!23613 tokens!457)))))) b!1652162))

(declare-fun b!1652165 () Bool)

(declare-fun b_free!44871 () Bool)

(declare-fun b_next!45575 () Bool)

(assert (=> b!1652165 (= b_free!44871 (not b_next!45575))))

(declare-fun t!151011 () Bool)

(declare-fun tb!94639 () Bool)

(assert (=> (and b!1652165 (= (toValue!4658 (transformation!3211 (h!23612 (t!150806 (t!150806 rules!1846))))) (toValue!4658 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!611619)))))) t!151011) tb!94639))

(declare-fun result!114336 () Bool)

(assert (= result!114336 result!114260))

(assert (=> d!497952 t!151011))

(declare-fun b_and!117317 () Bool)

(declare-fun tp!477904 () Bool)

(assert (=> b!1652165 (= tp!477904 (and (=> t!151011 result!114336) b_and!117317))))

(declare-fun b_free!44873 () Bool)

(declare-fun b_next!45577 () Bool)

(assert (=> b!1652165 (= b_free!44873 (not b_next!45577))))

(declare-fun tb!94641 () Bool)

(declare-fun t!151013 () Bool)

(assert (=> (and b!1652165 (= (toChars!4517 (transformation!3211 (h!23612 (t!150806 (t!150806 rules!1846))))) (toChars!4517 (transformation!3211 (rule!5069 lt!612092)))) t!151013) tb!94641))

(declare-fun result!114338 () Bool)

(assert (= result!114338 result!114244))

(assert (=> d!497702 t!151013))

(declare-fun t!151015 () Bool)

(declare-fun tb!94643 () Bool)

(assert (=> (and b!1652165 (= (toChars!4517 (transformation!3211 (h!23612 (t!150806 (t!150806 rules!1846))))) (toChars!4517 (transformation!3211 (rule!5069 (apply!4805 lt!611584 0))))) t!151015) tb!94643))

(declare-fun result!114340 () Bool)

(assert (= result!114340 result!114270))

(assert (=> d!498024 t!151015))

(declare-fun tb!94645 () Bool)

(declare-fun t!151017 () Bool)

(assert (=> (and b!1652165 (= (toChars!4517 (transformation!3211 (h!23612 (t!150806 (t!150806 rules!1846))))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457))))))) t!151017) tb!94645))

(declare-fun result!114342 () Bool)

(assert (= result!114342 result!114286))

(assert (=> d!498274 t!151017))

(declare-fun t!151019 () Bool)

(declare-fun tb!94647 () Bool)

(assert (=> (and b!1652165 (= (toChars!4517 (transformation!3211 (h!23612 (t!150806 (t!150806 rules!1846))))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457))))) t!151019) tb!94647))

(declare-fun result!114344 () Bool)

(assert (= result!114344 result!114150))

(assert (=> b!1649603 t!151019))

(assert (=> d!497392 t!151019))

(declare-fun tb!94649 () Bool)

(declare-fun t!151021 () Bool)

(assert (=> (and b!1652165 (= (toChars!4517 (transformation!3211 (h!23612 (t!150806 (t!150806 rules!1846))))) (toChars!4517 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!611619)))))) t!151021) tb!94649))

(declare-fun result!114346 () Bool)

(assert (= result!114346 result!114218))

(assert (=> d!497610 t!151021))

(declare-fun tb!94651 () Bool)

(declare-fun t!151023 () Bool)

(assert (=> (and b!1652165 (= (toChars!4517 (transformation!3211 (h!23612 (t!150806 (t!150806 rules!1846))))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457)))))) t!151023) tb!94651))

(declare-fun result!114348 () Bool)

(assert (= result!114348 result!114182))

(assert (=> b!1651894 t!151023))

(declare-fun t!151025 () Bool)

(declare-fun tb!94653 () Bool)

(assert (=> (and b!1652165 (= (toChars!4517 (transformation!3211 (h!23612 (t!150806 (t!150806 rules!1846))))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (Cons!18212 (h!23613 tokens!457) Nil!18212)))))) t!151025) tb!94653))

(declare-fun result!114350 () Bool)

(assert (= result!114350 result!114202))

(assert (=> d!497588 t!151025))

(assert (=> d!497426 t!151023))

(declare-fun tp!477902 () Bool)

(declare-fun b_and!117319 () Bool)

(assert (=> b!1652165 (= tp!477902 (and (=> t!151021 result!114346) (=> t!151015 result!114340) (=> t!151019 result!114344) (=> t!151025 result!114350) (=> t!151013 result!114338) (=> t!151023 result!114348) (=> t!151017 result!114342) b_and!117319))))

(declare-fun e!1059436 () Bool)

(assert (=> b!1652165 (= e!1059436 (and tp!477904 tp!477902))))

(declare-fun tp!477903 () Bool)

(declare-fun b!1652164 () Bool)

(declare-fun e!1059437 () Bool)

(assert (=> b!1652164 (= e!1059437 (and tp!477903 (inv!23566 (tag!3491 (h!23612 (t!150806 (t!150806 rules!1846))))) (inv!23569 (transformation!3211 (h!23612 (t!150806 (t!150806 rules!1846))))) e!1059436))))

(declare-fun b!1652163 () Bool)

(declare-fun e!1059438 () Bool)

(declare-fun tp!477901 () Bool)

(assert (=> b!1652163 (= e!1059438 (and e!1059437 tp!477901))))

(assert (=> b!1650074 (= tp!477779 e!1059438)))

(assert (= b!1652164 b!1652165))

(assert (= b!1652163 b!1652164))

(assert (= (and b!1650074 ((_ is Cons!18211) (t!150806 (t!150806 rules!1846)))) b!1652163))

(declare-fun m!2003373 () Bool)

(assert (=> b!1652164 m!2003373))

(declare-fun m!2003375 () Bool)

(assert (=> b!1652164 m!2003375))

(declare-fun b!1652169 () Bool)

(declare-fun e!1059439 () Bool)

(declare-fun tp!477908 () Bool)

(declare-fun tp!477905 () Bool)

(assert (=> b!1652169 (= e!1059439 (and tp!477908 tp!477905))))

(declare-fun b!1652166 () Bool)

(assert (=> b!1652166 (= e!1059439 tp_is_empty!7365)))

(declare-fun b!1652167 () Bool)

(declare-fun tp!477906 () Bool)

(declare-fun tp!477909 () Bool)

(assert (=> b!1652167 (= e!1059439 (and tp!477906 tp!477909))))

(declare-fun b!1652168 () Bool)

(declare-fun tp!477907 () Bool)

(assert (=> b!1652168 (= e!1059439 tp!477907)))

(assert (=> b!1650075 (= tp!477781 e!1059439)))

(assert (= (and b!1650075 ((_ is ElementMatch!4539) (regex!3211 (h!23612 (t!150806 rules!1846))))) b!1652166))

(assert (= (and b!1650075 ((_ is Concat!7841) (regex!3211 (h!23612 (t!150806 rules!1846))))) b!1652167))

(assert (= (and b!1650075 ((_ is Star!4539) (regex!3211 (h!23612 (t!150806 rules!1846))))) b!1652168))

(assert (= (and b!1650075 ((_ is Union!4539) (regex!3211 (h!23612 (t!150806 rules!1846))))) b!1652169))

(declare-fun b!1652173 () Bool)

(declare-fun e!1059440 () Bool)

(declare-fun tp!477913 () Bool)

(declare-fun tp!477910 () Bool)

(assert (=> b!1652173 (= e!1059440 (and tp!477913 tp!477910))))

(declare-fun b!1652170 () Bool)

(assert (=> b!1652170 (= e!1059440 tp_is_empty!7365)))

(declare-fun b!1652171 () Bool)

(declare-fun tp!477911 () Bool)

(declare-fun tp!477914 () Bool)

(assert (=> b!1652171 (= e!1059440 (and tp!477911 tp!477914))))

(declare-fun b!1652172 () Bool)

(declare-fun tp!477912 () Bool)

(assert (=> b!1652172 (= e!1059440 tp!477912)))

(assert (=> b!1650094 (= tp!477801 e!1059440)))

(assert (= (and b!1650094 ((_ is ElementMatch!4539) (regOne!9591 (regex!3211 (rule!5069 (h!23613 tokens!457)))))) b!1652170))

(assert (= (and b!1650094 ((_ is Concat!7841) (regOne!9591 (regex!3211 (rule!5069 (h!23613 tokens!457)))))) b!1652171))

(assert (= (and b!1650094 ((_ is Star!4539) (regOne!9591 (regex!3211 (rule!5069 (h!23613 tokens!457)))))) b!1652172))

(assert (= (and b!1650094 ((_ is Union!4539) (regOne!9591 (regex!3211 (rule!5069 (h!23613 tokens!457)))))) b!1652173))

(declare-fun b!1652177 () Bool)

(declare-fun e!1059441 () Bool)

(declare-fun tp!477918 () Bool)

(declare-fun tp!477915 () Bool)

(assert (=> b!1652177 (= e!1059441 (and tp!477918 tp!477915))))

(declare-fun b!1652174 () Bool)

(assert (=> b!1652174 (= e!1059441 tp_is_empty!7365)))

(declare-fun b!1652175 () Bool)

(declare-fun tp!477916 () Bool)

(declare-fun tp!477919 () Bool)

(assert (=> b!1652175 (= e!1059441 (and tp!477916 tp!477919))))

(declare-fun b!1652176 () Bool)

(declare-fun tp!477917 () Bool)

(assert (=> b!1652176 (= e!1059441 tp!477917)))

(assert (=> b!1650094 (= tp!477798 e!1059441)))

(assert (= (and b!1650094 ((_ is ElementMatch!4539) (regTwo!9591 (regex!3211 (rule!5069 (h!23613 tokens!457)))))) b!1652174))

(assert (= (and b!1650094 ((_ is Concat!7841) (regTwo!9591 (regex!3211 (rule!5069 (h!23613 tokens!457)))))) b!1652175))

(assert (= (and b!1650094 ((_ is Star!4539) (regTwo!9591 (regex!3211 (rule!5069 (h!23613 tokens!457)))))) b!1652176))

(assert (= (and b!1650094 ((_ is Union!4539) (regTwo!9591 (regex!3211 (rule!5069 (h!23613 tokens!457)))))) b!1652177))

(declare-fun b!1652181 () Bool)

(declare-fun e!1059442 () Bool)

(declare-fun tp!477923 () Bool)

(declare-fun tp!477920 () Bool)

(assert (=> b!1652181 (= e!1059442 (and tp!477923 tp!477920))))

(declare-fun b!1652178 () Bool)

(assert (=> b!1652178 (= e!1059442 tp_is_empty!7365)))

(declare-fun b!1652179 () Bool)

(declare-fun tp!477921 () Bool)

(declare-fun tp!477924 () Bool)

(assert (=> b!1652179 (= e!1059442 (and tp!477921 tp!477924))))

(declare-fun b!1652180 () Bool)

(declare-fun tp!477922 () Bool)

(assert (=> b!1652180 (= e!1059442 tp!477922)))

(assert (=> b!1650089 (= tp!477797 e!1059442)))

(assert (= (and b!1650089 ((_ is ElementMatch!4539) (regex!3211 (rule!5069 (h!23613 (t!150807 tokens!457)))))) b!1652178))

(assert (= (and b!1650089 ((_ is Concat!7841) (regex!3211 (rule!5069 (h!23613 (t!150807 tokens!457)))))) b!1652179))

(assert (= (and b!1650089 ((_ is Star!4539) (regex!3211 (rule!5069 (h!23613 (t!150807 tokens!457)))))) b!1652180))

(assert (= (and b!1650089 ((_ is Union!4539) (regex!3211 (rule!5069 (h!23613 (t!150807 tokens!457)))))) b!1652181))

(declare-fun b!1652185 () Bool)

(declare-fun e!1059443 () Bool)

(declare-fun tp!477928 () Bool)

(declare-fun tp!477925 () Bool)

(assert (=> b!1652185 (= e!1059443 (and tp!477928 tp!477925))))

(declare-fun b!1652182 () Bool)

(assert (=> b!1652182 (= e!1059443 tp_is_empty!7365)))

(declare-fun b!1652183 () Bool)

(declare-fun tp!477926 () Bool)

(declare-fun tp!477929 () Bool)

(assert (=> b!1652183 (= e!1059443 (and tp!477926 tp!477929))))

(declare-fun b!1652184 () Bool)

(declare-fun tp!477927 () Bool)

(assert (=> b!1652184 (= e!1059443 tp!477927)))

(assert (=> b!1650092 (= tp!477799 e!1059443)))

(assert (= (and b!1650092 ((_ is ElementMatch!4539) (regOne!9590 (regex!3211 (rule!5069 (h!23613 tokens!457)))))) b!1652182))

(assert (= (and b!1650092 ((_ is Concat!7841) (regOne!9590 (regex!3211 (rule!5069 (h!23613 tokens!457)))))) b!1652183))

(assert (= (and b!1650092 ((_ is Star!4539) (regOne!9590 (regex!3211 (rule!5069 (h!23613 tokens!457)))))) b!1652184))

(assert (= (and b!1650092 ((_ is Union!4539) (regOne!9590 (regex!3211 (rule!5069 (h!23613 tokens!457)))))) b!1652185))

(declare-fun b!1652189 () Bool)

(declare-fun e!1059444 () Bool)

(declare-fun tp!477933 () Bool)

(declare-fun tp!477930 () Bool)

(assert (=> b!1652189 (= e!1059444 (and tp!477933 tp!477930))))

(declare-fun b!1652186 () Bool)

(assert (=> b!1652186 (= e!1059444 tp_is_empty!7365)))

(declare-fun b!1652187 () Bool)

(declare-fun tp!477931 () Bool)

(declare-fun tp!477934 () Bool)

(assert (=> b!1652187 (= e!1059444 (and tp!477931 tp!477934))))

(declare-fun b!1652188 () Bool)

(declare-fun tp!477932 () Bool)

(assert (=> b!1652188 (= e!1059444 tp!477932)))

(assert (=> b!1650092 (= tp!477802 e!1059444)))

(assert (= (and b!1650092 ((_ is ElementMatch!4539) (regTwo!9590 (regex!3211 (rule!5069 (h!23613 tokens!457)))))) b!1652186))

(assert (= (and b!1650092 ((_ is Concat!7841) (regTwo!9590 (regex!3211 (rule!5069 (h!23613 tokens!457)))))) b!1652187))

(assert (= (and b!1650092 ((_ is Star!4539) (regTwo!9590 (regex!3211 (rule!5069 (h!23613 tokens!457)))))) b!1652188))

(assert (= (and b!1650092 ((_ is Union!4539) (regTwo!9590 (regex!3211 (rule!5069 (h!23613 tokens!457)))))) b!1652189))

(declare-fun b!1652192 () Bool)

(declare-fun e!1059447 () Bool)

(assert (=> b!1652192 (= e!1059447 true)))

(declare-fun b!1652191 () Bool)

(declare-fun e!1059446 () Bool)

(assert (=> b!1652191 (= e!1059446 e!1059447)))

(declare-fun b!1652190 () Bool)

(declare-fun e!1059445 () Bool)

(assert (=> b!1652190 (= e!1059445 e!1059446)))

(assert (=> b!1649938 e!1059445))

(assert (= b!1652191 b!1652192))

(assert (= b!1652190 b!1652191))

(assert (= (and b!1649938 ((_ is Cons!18211) (t!150806 rules!1846))) b!1652190))

(assert (=> b!1652192 (< (dynLambda!8163 order!10871 (toValue!4658 (transformation!3211 (h!23612 (t!150806 rules!1846))))) (dynLambda!8164 order!10873 lambda!67661))))

(assert (=> b!1652192 (< (dynLambda!8165 order!10875 (toChars!4517 (transformation!3211 (h!23612 (t!150806 rules!1846))))) (dynLambda!8164 order!10873 lambda!67661))))

(declare-fun b!1652196 () Bool)

(declare-fun e!1059448 () Bool)

(declare-fun tp!477938 () Bool)

(declare-fun tp!477935 () Bool)

(assert (=> b!1652196 (= e!1059448 (and tp!477938 tp!477935))))

(declare-fun b!1652193 () Bool)

(assert (=> b!1652193 (= e!1059448 tp_is_empty!7365)))

(declare-fun b!1652194 () Bool)

(declare-fun tp!477936 () Bool)

(declare-fun tp!477939 () Bool)

(assert (=> b!1652194 (= e!1059448 (and tp!477936 tp!477939))))

(declare-fun b!1652195 () Bool)

(declare-fun tp!477937 () Bool)

(assert (=> b!1652195 (= e!1059448 tp!477937)))

(assert (=> b!1650060 (= tp!477766 e!1059448)))

(assert (= (and b!1650060 ((_ is ElementMatch!4539) (regOne!9591 (regex!3211 (h!23612 rules!1846))))) b!1652193))

(assert (= (and b!1650060 ((_ is Concat!7841) (regOne!9591 (regex!3211 (h!23612 rules!1846))))) b!1652194))

(assert (= (and b!1650060 ((_ is Star!4539) (regOne!9591 (regex!3211 (h!23612 rules!1846))))) b!1652195))

(assert (= (and b!1650060 ((_ is Union!4539) (regOne!9591 (regex!3211 (h!23612 rules!1846))))) b!1652196))

(declare-fun b!1652200 () Bool)

(declare-fun e!1059449 () Bool)

(declare-fun tp!477943 () Bool)

(declare-fun tp!477940 () Bool)

(assert (=> b!1652200 (= e!1059449 (and tp!477943 tp!477940))))

(declare-fun b!1652197 () Bool)

(assert (=> b!1652197 (= e!1059449 tp_is_empty!7365)))

(declare-fun b!1652198 () Bool)

(declare-fun tp!477941 () Bool)

(declare-fun tp!477944 () Bool)

(assert (=> b!1652198 (= e!1059449 (and tp!477941 tp!477944))))

(declare-fun b!1652199 () Bool)

(declare-fun tp!477942 () Bool)

(assert (=> b!1652199 (= e!1059449 tp!477942)))

(assert (=> b!1650060 (= tp!477763 e!1059449)))

(assert (= (and b!1650060 ((_ is ElementMatch!4539) (regTwo!9591 (regex!3211 (h!23612 rules!1846))))) b!1652197))

(assert (= (and b!1650060 ((_ is Concat!7841) (regTwo!9591 (regex!3211 (h!23612 rules!1846))))) b!1652198))

(assert (= (and b!1650060 ((_ is Star!4539) (regTwo!9591 (regex!3211 (h!23612 rules!1846))))) b!1652199))

(assert (= (and b!1650060 ((_ is Union!4539) (regTwo!9591 (regex!3211 (h!23612 rules!1846))))) b!1652200))

(declare-fun b!1652204 () Bool)

(declare-fun e!1059450 () Bool)

(declare-fun tp!477948 () Bool)

(declare-fun tp!477945 () Bool)

(assert (=> b!1652204 (= e!1059450 (and tp!477948 tp!477945))))

(declare-fun b!1652201 () Bool)

(assert (=> b!1652201 (= e!1059450 tp_is_empty!7365)))

(declare-fun b!1652202 () Bool)

(declare-fun tp!477946 () Bool)

(declare-fun tp!477949 () Bool)

(assert (=> b!1652202 (= e!1059450 (and tp!477946 tp!477949))))

(declare-fun b!1652203 () Bool)

(declare-fun tp!477947 () Bool)

(assert (=> b!1652203 (= e!1059450 tp!477947)))

(assert (=> b!1650058 (= tp!477764 e!1059450)))

(assert (= (and b!1650058 ((_ is ElementMatch!4539) (regOne!9590 (regex!3211 (h!23612 rules!1846))))) b!1652201))

(assert (= (and b!1650058 ((_ is Concat!7841) (regOne!9590 (regex!3211 (h!23612 rules!1846))))) b!1652202))

(assert (= (and b!1650058 ((_ is Star!4539) (regOne!9590 (regex!3211 (h!23612 rules!1846))))) b!1652203))

(assert (= (and b!1650058 ((_ is Union!4539) (regOne!9590 (regex!3211 (h!23612 rules!1846))))) b!1652204))

(declare-fun b!1652208 () Bool)

(declare-fun e!1059451 () Bool)

(declare-fun tp!477953 () Bool)

(declare-fun tp!477950 () Bool)

(assert (=> b!1652208 (= e!1059451 (and tp!477953 tp!477950))))

(declare-fun b!1652205 () Bool)

(assert (=> b!1652205 (= e!1059451 tp_is_empty!7365)))

(declare-fun b!1652206 () Bool)

(declare-fun tp!477951 () Bool)

(declare-fun tp!477954 () Bool)

(assert (=> b!1652206 (= e!1059451 (and tp!477951 tp!477954))))

(declare-fun b!1652207 () Bool)

(declare-fun tp!477952 () Bool)

(assert (=> b!1652207 (= e!1059451 tp!477952)))

(assert (=> b!1650058 (= tp!477767 e!1059451)))

(assert (= (and b!1650058 ((_ is ElementMatch!4539) (regTwo!9590 (regex!3211 (h!23612 rules!1846))))) b!1652205))

(assert (= (and b!1650058 ((_ is Concat!7841) (regTwo!9590 (regex!3211 (h!23612 rules!1846))))) b!1652206))

(assert (= (and b!1650058 ((_ is Star!4539) (regTwo!9590 (regex!3211 (h!23612 rules!1846))))) b!1652207))

(assert (= (and b!1650058 ((_ is Union!4539) (regTwo!9590 (regex!3211 (h!23612 rules!1846))))) b!1652208))

(declare-fun b!1652209 () Bool)

(declare-fun e!1059452 () Bool)

(declare-fun tp!477955 () Bool)

(assert (=> b!1652209 (= e!1059452 (and tp_is_empty!7365 tp!477955))))

(assert (=> b!1650088 (= tp!477796 e!1059452)))

(assert (= (and b!1650088 ((_ is Cons!18209) (originalCharacters!4025 (h!23613 (t!150807 tokens!457))))) b!1652209))

(declare-fun b!1652213 () Bool)

(declare-fun e!1059453 () Bool)

(declare-fun tp!477959 () Bool)

(declare-fun tp!477956 () Bool)

(assert (=> b!1652213 (= e!1059453 (and tp!477959 tp!477956))))

(declare-fun b!1652210 () Bool)

(assert (=> b!1652210 (= e!1059453 tp_is_empty!7365)))

(declare-fun b!1652211 () Bool)

(declare-fun tp!477957 () Bool)

(declare-fun tp!477960 () Bool)

(assert (=> b!1652211 (= e!1059453 (and tp!477957 tp!477960))))

(declare-fun b!1652212 () Bool)

(declare-fun tp!477958 () Bool)

(assert (=> b!1652212 (= e!1059453 tp!477958)))

(assert (=> b!1650059 (= tp!477765 e!1059453)))

(assert (= (and b!1650059 ((_ is ElementMatch!4539) (reg!4868 (regex!3211 (h!23612 rules!1846))))) b!1652210))

(assert (= (and b!1650059 ((_ is Concat!7841) (reg!4868 (regex!3211 (h!23612 rules!1846))))) b!1652211))

(assert (= (and b!1650059 ((_ is Star!4539) (reg!4868 (regex!3211 (h!23612 rules!1846))))) b!1652212))

(assert (= (and b!1650059 ((_ is Union!4539) (reg!4868 (regex!3211 (h!23612 rules!1846))))) b!1652213))

(declare-fun b!1652222 () Bool)

(declare-fun tp!477968 () Bool)

(declare-fun e!1059458 () Bool)

(declare-fun tp!477969 () Bool)

(assert (=> b!1652222 (= e!1059458 (and (inv!23573 (left!14593 (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (value!101186 (h!23613 (t!150807 tokens!457))))))) tp!477968 (inv!23573 (right!14923 (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (value!101186 (h!23613 (t!150807 tokens!457))))))) tp!477969))))

(declare-fun b!1652224 () Bool)

(declare-fun e!1059459 () Bool)

(declare-fun tp!477967 () Bool)

(assert (=> b!1652224 (= e!1059459 tp!477967)))

(declare-fun b!1652223 () Bool)

(declare-fun inv!23580 (IArray!12145) Bool)

(assert (=> b!1652223 (= e!1059458 (and (inv!23580 (xs!8906 (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (value!101186 (h!23613 (t!150807 tokens!457))))))) e!1059459))))

(assert (=> b!1650018 (= tp!477752 (and (inv!23573 (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (value!101186 (h!23613 (t!150807 tokens!457)))))) e!1059458))))

(assert (= (and b!1650018 ((_ is Node!6070) (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (value!101186 (h!23613 (t!150807 tokens!457))))))) b!1652222))

(assert (= b!1652223 b!1652224))

(assert (= (and b!1650018 ((_ is Leaf!8896) (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (value!101186 (h!23613 (t!150807 tokens!457))))))) b!1652223))

(declare-fun m!2003377 () Bool)

(assert (=> b!1652222 m!2003377))

(declare-fun m!2003379 () Bool)

(assert (=> b!1652222 m!2003379))

(declare-fun m!2003381 () Bool)

(assert (=> b!1652223 m!2003381))

(assert (=> b!1650018 m!1998895))

(declare-fun b!1652228 () Bool)

(declare-fun b_free!44875 () Bool)

(declare-fun b_next!45579 () Bool)

(assert (=> b!1652228 (= b_free!44875 (not b_next!45579))))

(declare-fun t!151027 () Bool)

(declare-fun tb!94655 () Bool)

(assert (=> (and b!1652228 (= (toValue!4658 (transformation!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457)))))) (toValue!4658 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!611619)))))) t!151027) tb!94655))

(declare-fun result!114354 () Bool)

(assert (= result!114354 result!114260))

(assert (=> d!497952 t!151027))

(declare-fun b_and!117321 () Bool)

(declare-fun tp!477972 () Bool)

(assert (=> b!1652228 (= tp!477972 (and (=> t!151027 result!114354) b_and!117321))))

(declare-fun b_free!44877 () Bool)

(declare-fun b_next!45581 () Bool)

(assert (=> b!1652228 (= b_free!44877 (not b_next!45581))))

(declare-fun t!151029 () Bool)

(declare-fun tb!94657 () Bool)

(assert (=> (and b!1652228 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457)))))) (toChars!4517 (transformation!3211 (rule!5069 lt!612092)))) t!151029) tb!94657))

(declare-fun result!114356 () Bool)

(assert (= result!114356 result!114244))

(assert (=> d!497702 t!151029))

(declare-fun t!151031 () Bool)

(declare-fun tb!94659 () Bool)

(assert (=> (and b!1652228 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457)))))) (toChars!4517 (transformation!3211 (rule!5069 (apply!4805 lt!611584 0))))) t!151031) tb!94659))

(declare-fun result!114358 () Bool)

(assert (= result!114358 result!114270))

(assert (=> d!498024 t!151031))

(declare-fun t!151033 () Bool)

(declare-fun tb!94661 () Bool)

(assert (=> (and b!1652228 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457)))))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457))))))) t!151033) tb!94661))

(declare-fun result!114360 () Bool)

(assert (= result!114360 result!114286))

(assert (=> d!498274 t!151033))

(declare-fun t!151035 () Bool)

(declare-fun tb!94663 () Bool)

(assert (=> (and b!1652228 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457)))))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457))))) t!151035) tb!94663))

(declare-fun result!114362 () Bool)

(assert (= result!114362 result!114150))

(assert (=> b!1649603 t!151035))

(assert (=> d!497392 t!151035))

(declare-fun tb!94665 () Bool)

(declare-fun t!151037 () Bool)

(assert (=> (and b!1652228 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457)))))) (toChars!4517 (transformation!3211 (rule!5069 (_1!10345 (get!5302 lt!611619)))))) t!151037) tb!94665))

(declare-fun result!114364 () Bool)

(assert (= result!114364 result!114218))

(assert (=> d!497610 t!151037))

(declare-fun t!151039 () Bool)

(declare-fun tb!94667 () Bool)

(assert (=> (and b!1652228 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457)))))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457)))))) t!151039) tb!94667))

(declare-fun result!114366 () Bool)

(assert (= result!114366 result!114182))

(assert (=> b!1651894 t!151039))

(declare-fun t!151041 () Bool)

(declare-fun tb!94669 () Bool)

(assert (=> (and b!1652228 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457)))))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (Cons!18212 (h!23613 tokens!457) Nil!18212)))))) t!151041) tb!94669))

(declare-fun result!114368 () Bool)

(assert (= result!114368 result!114202))

(assert (=> d!497588 t!151041))

(assert (=> d!497426 t!151039))

(declare-fun tp!477970 () Bool)

(declare-fun b_and!117323 () Bool)

(assert (=> b!1652228 (= tp!477970 (and (=> t!151029 result!114356) (=> t!151041 result!114368) (=> t!151031 result!114358) (=> t!151035 result!114362) (=> t!151039 result!114366) (=> t!151037 result!114364) (=> t!151033 result!114360) b_and!117323))))

(declare-fun e!1059464 () Bool)

(declare-fun tp!477974 () Bool)

(declare-fun e!1059460 () Bool)

(declare-fun b!1652227 () Bool)

(assert (=> b!1652227 (= e!1059464 (and tp!477974 (inv!23566 (tag!3491 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457)))))) (inv!23569 (transformation!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457)))))) e!1059460))))

(declare-fun e!1059463 () Bool)

(declare-fun tp!477973 () Bool)

(declare-fun b!1652226 () Bool)

(assert (=> b!1652226 (= e!1059463 (and (inv!21 (value!101186 (h!23613 (t!150807 (t!150807 tokens!457))))) e!1059464 tp!477973))))

(declare-fun e!1059461 () Bool)

(assert (=> b!1650087 (= tp!477794 e!1059461)))

(declare-fun b!1652225 () Bool)

(declare-fun tp!477971 () Bool)

(assert (=> b!1652225 (= e!1059461 (and (inv!23570 (h!23613 (t!150807 (t!150807 tokens!457)))) e!1059463 tp!477971))))

(assert (=> b!1652228 (= e!1059460 (and tp!477972 tp!477970))))

(assert (= b!1652227 b!1652228))

(assert (= b!1652226 b!1652227))

(assert (= b!1652225 b!1652226))

(assert (= (and b!1650087 ((_ is Cons!18212) (t!150807 (t!150807 tokens!457)))) b!1652225))

(declare-fun m!2003383 () Bool)

(assert (=> b!1652227 m!2003383))

(declare-fun m!2003385 () Bool)

(assert (=> b!1652227 m!2003385))

(declare-fun m!2003387 () Bool)

(assert (=> b!1652226 m!2003387))

(declare-fun m!2003389 () Bool)

(assert (=> b!1652225 m!2003389))

(declare-fun b!1652229 () Bool)

(declare-fun tp!477976 () Bool)

(declare-fun e!1059466 () Bool)

(declare-fun tp!477977 () Bool)

(assert (=> b!1652229 (= e!1059466 (and (inv!23573 (left!14593 (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (value!101186 (h!23613 tokens!457)))))) tp!477976 (inv!23573 (right!14923 (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (value!101186 (h!23613 tokens!457)))))) tp!477977))))

(declare-fun b!1652231 () Bool)

(declare-fun e!1059467 () Bool)

(declare-fun tp!477975 () Bool)

(assert (=> b!1652231 (= e!1059467 tp!477975)))

(declare-fun b!1652230 () Bool)

(assert (=> b!1652230 (= e!1059466 (and (inv!23580 (xs!8906 (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (value!101186 (h!23613 tokens!457)))))) e!1059467))))

(assert (=> b!1649609 (= tp!477697 (and (inv!23573 (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (value!101186 (h!23613 tokens!457))))) e!1059466))))

(assert (= (and b!1649609 ((_ is Node!6070) (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (value!101186 (h!23613 tokens!457)))))) b!1652229))

(assert (= b!1652230 b!1652231))

(assert (= (and b!1649609 ((_ is Leaf!8896) (c!268209 (dynLambda!8159 (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (value!101186 (h!23613 tokens!457)))))) b!1652230))

(declare-fun m!2003391 () Bool)

(assert (=> b!1652229 m!2003391))

(declare-fun m!2003393 () Bool)

(assert (=> b!1652229 m!2003393))

(declare-fun m!2003395 () Bool)

(assert (=> b!1652230 m!2003395))

(assert (=> b!1649609 m!1998087))

(declare-fun b!1652232 () Bool)

(declare-fun e!1059468 () Bool)

(declare-fun tp!477978 () Bool)

(assert (=> b!1652232 (= e!1059468 (and tp_is_empty!7365 tp!477978))))

(assert (=> b!1650065 (= tp!477770 e!1059468)))

(assert (= (and b!1650065 ((_ is Cons!18209) (t!150804 (originalCharacters!4025 (h!23613 tokens!457))))) b!1652232))

(declare-fun b_lambda!51921 () Bool)

(assert (= b_lambda!51899 (or d!497396 b_lambda!51921)))

(declare-fun bs!396648 () Bool)

(declare-fun d!498528 () Bool)

(assert (= bs!396648 (and d!498528 d!497396)))

(assert (=> bs!396648 (= (dynLambda!8173 lambda!67661 (h!23613 tokens!457)) (rulesProduceIndividualToken!1488 thiss!17113 rules!1846 (h!23613 tokens!457)))))

(assert (=> bs!396648 m!1997827))

(assert (=> b!1651471 d!498528))

(declare-fun b_lambda!51923 () Bool)

(assert (= b_lambda!51903 (or (and b!1649522 b_free!44845 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457)))))))) (and b!1652165 b_free!44873 (= (toChars!4517 (transformation!3211 (h!23612 (t!150806 (t!150806 rules!1846))))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457)))))))) (and b!1652228 b_free!44877) (and b!1650090 b_free!44861 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457)))))))) (and b!1649509 b_free!44841 (= (toChars!4517 (transformation!3211 (h!23612 rules!1846))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457)))))))) (and b!1650076 b_free!44857 (= (toChars!4517 (transformation!3211 (h!23612 (t!150806 rules!1846)))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457)))))))) b_lambda!51923)))

(declare-fun b_lambda!51925 () Bool)

(assert (= b_lambda!51907 (or (and b!1652165 b_free!44873 (= (toChars!4517 (transformation!3211 (h!23612 (t!150806 (t!150806 rules!1846))))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))))) (and b!1649509 b_free!44841 (= (toChars!4517 (transformation!3211 (h!23612 rules!1846))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))))) (and b!1652228 b_free!44877 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 (t!150807 tokens!457)))))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))))) (and b!1649522 b_free!44845 (= (toChars!4517 (transformation!3211 (rule!5069 (h!23613 tokens!457)))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))))) (and b!1650090 b_free!44861) (and b!1650076 b_free!44857 (= (toChars!4517 (transformation!3211 (h!23612 (t!150806 rules!1846)))) (toChars!4517 (transformation!3211 (rule!5069 (h!23613 (t!150807 tokens!457))))))) b_lambda!51925)))

(declare-fun b_lambda!51927 () Bool)

(assert (= b_lambda!51897 (or d!497424 b_lambda!51927)))

(declare-fun bs!396649 () Bool)

(declare-fun d!498530 () Bool)

(assert (= bs!396649 (and d!498530 d!497424)))

(assert (=> bs!396649 (= (dynLambda!8172 lambda!67664 (h!23612 rules!1846)) (regex!3211 (h!23612 rules!1846)))))

(assert (=> b!1651446 d!498530))

(check-sat (not b!1652160) (not d!498282) (not b!1650778) (not d!498502) (not b!1650418) (not d!498296) (not d!498200) (not b!1650841) (not b!1652115) (not b!1651748) (not d!498010) (not b!1651109) (not b!1650422) (not b!1650389) (not b!1651800) (not b_lambda!51881) (not b!1650767) (not d!497588) (not b!1650529) (not b!1652144) (not b!1650218) (not b!1650228) (not d!498274) (not d!497896) (not d!498116) (not b!1651252) (not b!1651340) (not b!1651578) (not d!498072) (not d!497704) (not b!1650793) (not b!1651724) (not b!1651746) (not b!1652168) (not b!1652138) (not d!497790) (not d!498204) (not b!1652196) (not d!498512) (not b!1651229) (not d!498080) (not d!498520) (not b!1651427) (not bm!105844) (not b!1651040) (not b!1650577) (not b!1651562) (not b!1651474) (not b!1651251) (not b!1651619) (not b!1652175) (not b!1651188) (not bm!105956) (not b!1650775) (not b!1650387) (not b!1650528) (not d!498390) (not d!498526) (not b!1650837) (not d!497878) (not d!497796) (not b!1652123) (not b!1650473) (not b!1652207) (not d!498248) (not b!1652225) (not d!498044) (not b_next!45559) (not b!1650613) (not b!1651595) (not b!1651819) (not b_lambda!51895) (not b!1651556) (not b!1651784) (not b_next!45577) (not d!498126) (not b!1651608) (not d!498186) (not d!497592) (not b!1651248) (not bm!106004) (not b!1652154) (not b!1651425) (not b!1651891) (not b!1651580) (not b!1650171) (not b_lambda!51927) (not b!1651567) (not d!498008) (not b!1651132) (not d!498046) (not bm!105909) (not d!498038) (not d!498324) (not d!497856) (not b!1652206) (not b!1650599) (not d!498112) (not b!1650565) (not b!1650674) (not b!1651847) (not d!498506) (not b!1650575) (not d!498332) (not b!1651564) (not b!1650777) (not d!497606) (not b!1652202) (not bm!105951) (not d!497880) (not b!1651611) (not b!1651565) (not d!498210) (not d!497642) (not b!1651851) (not b!1651245) (not d!497854) (not b!1650231) (not b!1650663) (not b!1650991) (not b_next!45543) (not b!1649609) (not d!497962) (not d!497960) (not b!1650581) (not b!1651624) (not b!1651247) (not b!1652133) (not b!1651596) (not d!498474) (not d!497536) (not b!1651475) (not b!1651575) (not b!1651512) (not d!497950) (not d!498006) (not d!498252) (not d!497724) (not b!1651730) (not d!498266) (not b!1650553) (not b!1650833) (not b!1651612) (not d!498362) (not b!1651852) (not b!1650768) (not d!498272) (not b!1651747) (not bm!106031) (not b!1652188) (not d!498518) (not b!1651778) (not b!1651893) (not b!1652104) (not b!1652195) (not b!1651622) (not b!1652135) (not b!1650806) (not d!497702) (not b!1650808) (not d!498246) (not b!1651585) (not b!1651760) (not b!1652199) (not b!1650889) (not b!1650570) (not b!1651090) (not d!498458) (not b!1652223) (not b!1651324) (not b!1650803) (not d!497532) (not d!498182) (not d!498484) (not b!1651894) (not b!1651173) (not d!497876) (not d!498118) (not b_next!45545) (not d!498454) (not b!1651817) (not b!1652161) (not b!1650771) (not b!1651838) (not d!497696) (not b!1651843) (not b!1651420) (not d!498486) (not b!1650220) (not d!498510) (not d!497794) (not b!1651780) (not b!1652131) (not b!1650796) (not b!1652203) b_and!117317 (not b!1651579) b_and!117321 (not b!1651391) (not d!497494) (not bm!105989) (not d!498022) (not b!1651050) (not d!497622) (not b!1651591) (not b!1652184) (not b!1651510) (not d!498344) (not b!1651421) (not b!1651731) (not b!1650167) (not b!1651091) (not b!1651996) (not b!1652130) (not b!1650018) (not b!1650662) (not b!1651603) (not b!1652176) (not b!1652229) (not bm!105969) (not b!1650467) (not b!1651191) (not b!1651779) (not d!498504) (not b!1652169) (not d!497840) (not b!1650573) (not d!498356) (not d!497784) (not b!1652187) (not b_next!45549) (not b!1652173) (not b!1650977) b_and!117303 (not b!1652156) (not b!1651038) (not b!1651754) (not b!1651854) (not b!1652198) (not b!1650990) (not d!498476) (not b!1651569) (not b!1651571) (not d!497810) (not b!1651366) (not b!1652167) (not d!497574) (not d!497728) (not d!497654) (not b!1651566) (not d!497954) (not b!1652164) (not d!497818) (not b!1650223) (not b_next!45575) (not b!1650891) (not b!1651268) (not d!497530) (not b!1651246) (not b!1652231) b_and!117265 (not b!1651601) (not d!498254) (not b!1650774) (not b!1650840) (not b!1650474) (not d!498516) (not bm!105968) (not b!1651249) (not bm!105898) (not b!1652180) (not b!1651108) (not b!1651257) (not d!498400) (not tb!94575) (not d!498042) (not d!497976) (not d!497652) (not b!1651844) (not d!497722) (not b!1652212) (not b!1652232) (not b!1650390) (not b!1651042) (not bm!105905) (not b!1652209) (not b!1651092) (not d!498024) (not b!1652020) (not b!1650836) (not b!1652116) (not b!1650908) (not b_next!45565) (not b!1651017) (not b!1651557) (not d!497682) (not d!497922) (not d!497788) (not d!498330) (not d!498018) (not b!1650234) (not b!1650901) (not d!497584) (not b!1652105) (not d!498276) (not b!1651582) (not b!1651041) (not b!1651244) (not d!498480) (not b!1650538) (not b!1651841) (not b!1650769) (not b!1651424) (not d!497992) (not b!1651472) b_and!117319 (not d!498340) (not d!498082) (not b!1652200) (not b!1650672) (not d!498496) (not b!1651598) (not b!1652136) (not b_lambda!51923) (not b!1651753) (not b!1652211) (not b!1650895) (not b!1650461) (not b!1651338) (not b_lambda!51871) (not b!1650978) (not b!1650971) (not b!1651260) (not tb!94567) (not b!1652127) (not b!1652140) (not d!497846) (not b!1651725) (not d!497488) (not b_lambda!51887) (not b!1651283) (not b!1651606) (not b!1651175) (not b!1650217) (not d!498178) (not b!1650169) (not b!1651568) (not b!1650567) (not b!1652171) (not b!1650917) (not b!1650668) (not b!1650766) b_and!117267 (not b!1652134) (not b!1651344) (not b!1650910) (not b!1652022) (not b!1650794) (not b!1650572) (not d!497974) (not d!497526) (not d!497978) (not d!498450) (not b!1652163) (not d!498470) (not d!498456) (not b!1651093) (not b!1651583) (not b!1652181) (not d!497804) (not d!497586) (not b_lambda!51893) (not b!1650233) (not d!497582) (not bm!105913) (not b_lambda!51921) (not d!498078) (not b!1650563) (not b!1650976) (not b!1651762) (not b!1652152) (not b!1651777) (not d!497970) (not b!1650812) (not b!1650992) (not b!1651799) (not b!1651586) (not d!498198) (not b!1651131) (not d!497608) (not bm!106020) (not b!1650918) (not b!1652185) (not b!1651766) (not d!498270) b_and!117261 (not d!498490) (not d!498342) (not b!1651846) (not b!1650412) (not bm!106023) (not b!1651185) (not b!1651783) (not d!498002) (not b!1650610) (not d!498170) (not b!1651107) (not d!498298) (not tb!94511) (not bm!105954) (not b!1651280) (not b!1651015) (not d!498104) (not b!1651605) (not b!1650497) (not b!1650838) (not b!1651334) (not d!497538) (not b!1652143) (not b!1650227) (not b!1652179) (not b!1651763) (not b!1651335) (not d!497618) (not b!1651177) (not b!1650919) (not b!1651051) (not b!1651602) (not b!1652147) (not b!1651250) (not tb!94551) (not b!1651855) (not b!1651764) (not d!498312) b_and!117307 (not d!497838) (not b!1652142) (not b!1650810) (not b!1652222) (not b!1650773) (not b!1651422) (not d!498338) (not b!1651563) (not b!1652190) (not d!498408) (not d!498004) b_and!117305 (not d!498128) (not b!1651727) (not b!1652000) (not d!498260) (not d!497848) (not b!1650902) (not d!498188) (not b!1651043) (not b!1651019) (not b!1650993) (not d!497944) (not bm!105958) (not b!1651170) (not b!1650534) (not b_next!45563) (not d!497734) (not b!1651768) (not b_lambda!51873) (not tb!94591) (not d!498464) (not d!497986) (not b!1652128) (not b!1650582) (not b!1652162) (not d!497806) (not bm!105949) (not b!1651254) b_and!117263 (not d!498100) (not d!497620) (not b!1651053) (not b!1651558) (not d!498028) (not b!1651511) (not d!498184) (not b!1650421) (not b!1650496) (not b!1651186) (not d!497800) (not b!1651428) (not b!1652230) (not b!1651577) (not b!1652129) (not b!1651995) (not b!1651765) (not b!1651572) (not b!1650180) (not b!1651732) (not d!497834) (not b!1651999) (not b!1651848) (not d!497782) (not b!1650571) (not b!1652213) (not b!1651594) (not d!498322) (not b!1650574) (not b!1650229) (not b!1651193) (not b!1650813) (not d!498212) (not d!497980) (not b!1650601) (not b!1650535) (not b!1651553) (not b!1651018) (not b!1650928) (not b!1650469) (not d!498098) (not b!1652194) (not b!1652208) (not b!1651190) (not d!498500) (not b!1650410) (not b!1651181) (not b!1651178) (not d!497580) (not d!497610) (not tb!94527) (not b!1651343) (not d!498388) (not d!498196) (not b!1650408) (not b_lambda!51877) (not b!1651581) (not d!497700) (not d!497956) (not b!1651192) (not b!1650499) (not d!498014) (not b!1650669) (not d!498462) (not b!1652114) (not b!1651016) (not b!1651271) (not b!1651776) (not b!1651189) (not d!497640) (not b!1650225) (not bm!105987) (not b!1651604) (not b!1651203) (not bs!396648) (not b!1651599) (not b!1651781) tp_is_empty!7365 (not b!1650181) (not b!1650617) (not b!1652177) (not d!497852) (not b!1651755) b_and!117301 (not d!498090) (not b!1652062) (not b!1651341) (not b!1650230) (not b!1651849) (not b!1651770) (not b!1652226) (not b!1651729) (not d!498350) (not b!1650929) (not b!1652087) (not d!498320) (not b!1651845) (not b!1650907) (not b!1651576) (not d!497928) (not b!1650393) (not b!1650603) (not b!1651761) (not bm!106006) (not d!497628) (not d!497858) (not b!1650791) (not d!498030) (not b_lambda!51875) (not b!1652126) (not b!1652224) (not d!497572) (not d!497786) (not d!498268) (not b!1652021) (not b!1651284) (not b_next!45579) (not b!1652172) (not b!1651039) (not b!1652132) (not bm!105953) (not b!1651997) (not d!498286) (not b!1652088) (not b!1651767) (not b!1651858) (not d!498208) (not b!1651339) (not b!1651446) (not bm!106021) (not b!1652086) (not b!1652204) (not d!497632) (not b!1650915) (not b!1652227) (not d!498168) (not b!1651232) (not d!498262) (not b!1652117) (not b!1651771) (not b!1650226) (not b!1650411) (not d!498508) (not d!498522) (not bm!106027) (not b!1652157) (not d!498034) (not b!1650912) (not b_next!45547) (not b!1650779) (not bm!105901) (not b!1650540) (not b!1651055) (not b!1651157) (not b_next!45581) (not b!1650790) (not b!1650602) (not b!1651857) (not bm!106022) (not d!497498) (not bm!105960) (not b!1651592) (not b!1650958) (not bm!106026) (not b!1650797) (not b!1651895) (not d!497850) (not d!497940) (not b!1650611) (not b!1651618) (not b_lambda!51925) (not bm!105988) (not b!1650893) (not b!1650802) (not d!498060) (not b!1651609) (not b!1651561) (not b!1651613) (not b!1651839) (not d!497920) (not b!1650770) (not d!498336) (not b!1652183) (not b!1651860) (not b!1651862) (not b!1651094) (not b!1651736) (not b_next!45561) (not b!1650578) (not b!1651842) (not b!1652158) (not d!497842) (not d!498334) (not b!1652061) (not b!1652189) (not b!1650552) (not b!1651174) (not bm!105984) b_and!117323 (not b!1651095) (not d!497836) (not b!1650419) (not b!1651342))
(check-sat (not b_next!45543) (not b_next!45545) (not b_next!45549) b_and!117265 (not b_next!45565) b_and!117319 b_and!117267 b_and!117261 (not b_next!45563) b_and!117263 b_and!117301 (not b_next!45579) (not b_next!45561) b_and!117323 (not b_next!45559) (not b_next!45577) b_and!117317 b_and!117321 b_and!117303 (not b_next!45575) b_and!117307 b_and!117305 (not b_next!45547) (not b_next!45581))
