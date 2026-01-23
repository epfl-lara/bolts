; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!390314 () Bool)

(assert start!390314)

(declare-fun b!4117744 () Bool)

(declare-fun b_free!116219 () Bool)

(declare-fun b_next!116923 () Bool)

(assert (=> b!4117744 (= b_free!116219 (not b_next!116923))))

(declare-fun tp!1254661 () Bool)

(declare-fun b_and!318301 () Bool)

(assert (=> b!4117744 (= tp!1254661 b_and!318301)))

(declare-fun b_free!116221 () Bool)

(declare-fun b_next!116925 () Bool)

(assert (=> b!4117744 (= b_free!116221 (not b_next!116925))))

(declare-fun tp!1254666 () Bool)

(declare-fun b_and!318303 () Bool)

(assert (=> b!4117744 (= tp!1254666 b_and!318303)))

(declare-fun b!4117753 () Bool)

(declare-fun b_free!116223 () Bool)

(declare-fun b_next!116927 () Bool)

(assert (=> b!4117753 (= b_free!116223 (not b_next!116927))))

(declare-fun tp!1254665 () Bool)

(declare-fun b_and!318305 () Bool)

(assert (=> b!4117753 (= tp!1254665 b_and!318305)))

(declare-fun b_free!116225 () Bool)

(declare-fun b_next!116929 () Bool)

(assert (=> b!4117753 (= b_free!116225 (not b_next!116929))))

(declare-fun tp!1254657 () Bool)

(declare-fun b_and!318307 () Bool)

(assert (=> b!4117753 (= tp!1254657 b_and!318307)))

(declare-fun b!4117735 () Bool)

(declare-fun b_free!116227 () Bool)

(declare-fun b_next!116931 () Bool)

(assert (=> b!4117735 (= b_free!116227 (not b_next!116931))))

(declare-fun tp!1254664 () Bool)

(declare-fun b_and!318309 () Bool)

(assert (=> b!4117735 (= tp!1254664 b_and!318309)))

(declare-fun b_free!116229 () Bool)

(declare-fun b_next!116933 () Bool)

(assert (=> b!4117735 (= b_free!116229 (not b_next!116933))))

(declare-fun tp!1254660 () Bool)

(declare-fun b_and!318311 () Bool)

(assert (=> b!4117735 (= tp!1254660 b_and!318311)))

(declare-fun e!2555016 () Bool)

(assert (=> b!4117735 (= e!2555016 (and tp!1254664 tp!1254660))))

(declare-fun b!4117736 () Bool)

(declare-fun res!1681887 () Bool)

(declare-fun e!2555012 () Bool)

(assert (=> b!4117736 (=> (not res!1681887) (not e!2555012))))

(declare-datatypes ((C!24508 0))(
  ( (C!24509 (val!14364 Int)) )
))
(declare-datatypes ((List!44609 0))(
  ( (Nil!44485) (Cons!44485 (h!49905 C!24508) (t!340512 List!44609)) )
))
(declare-fun p!2912 () List!44609)

(declare-fun isEmpty!26451 (List!44609) Bool)

(assert (=> b!4117736 (= res!1681887 (not (isEmpty!26451 p!2912)))))

(declare-fun b!4117737 () Bool)

(declare-fun res!1681888 () Bool)

(assert (=> b!4117737 (=> (not res!1681888) (not e!2555012))))

(declare-datatypes ((LexerInterface!6845 0))(
  ( (LexerInterfaceExt!6842 (__x!27189 Int)) (Lexer!6843) )
))
(declare-fun thiss!25645 () LexerInterface!6845)

(declare-datatypes ((List!44610 0))(
  ( (Nil!44486) (Cons!44486 (h!49906 (_ BitVec 16)) (t!340513 List!44610)) )
))
(declare-datatypes ((TokenValue!7486 0))(
  ( (FloatLiteralValue!14972 (text!52847 List!44610)) (TokenValueExt!7485 (__x!27190 Int)) (Broken!37430 (value!227324 List!44610)) (Object!7609) (End!7486) (Def!7486) (Underscore!7486) (Match!7486) (Else!7486) (Error!7486) (Case!7486) (If!7486) (Extends!7486) (Abstract!7486) (Class!7486) (Val!7486) (DelimiterValue!14972 (del!7546 List!44610)) (KeywordValue!7492 (value!227325 List!44610)) (CommentValue!14972 (value!227326 List!44610)) (WhitespaceValue!14972 (value!227327 List!44610)) (IndentationValue!7486 (value!227328 List!44610)) (String!51179) (Int32!7486) (Broken!37431 (value!227329 List!44610)) (Boolean!7487) (Unit!63844) (OperatorValue!7489 (op!7546 List!44610)) (IdentifierValue!14972 (value!227330 List!44610)) (IdentifierValue!14973 (value!227331 List!44610)) (WhitespaceValue!14973 (value!227332 List!44610)) (True!14972) (False!14972) (Broken!37432 (value!227333 List!44610)) (Broken!37433 (value!227334 List!44610)) (True!14973) (RightBrace!7486) (RightBracket!7486) (Colon!7486) (Null!7486) (Comma!7486) (LeftBracket!7486) (False!14973) (LeftBrace!7486) (ImaginaryLiteralValue!7486 (text!52848 List!44610)) (StringLiteralValue!22458 (value!227335 List!44610)) (EOFValue!7486 (value!227336 List!44610)) (IdentValue!7486 (value!227337 List!44610)) (DelimiterValue!14973 (value!227338 List!44610)) (DedentValue!7486 (value!227339 List!44610)) (NewLineValue!7486 (value!227340 List!44610)) (IntegerValue!22458 (value!227341 (_ BitVec 32)) (text!52849 List!44610)) (IntegerValue!22459 (value!227342 Int) (text!52850 List!44610)) (Times!7486) (Or!7486) (Equal!7486) (Minus!7486) (Broken!37434 (value!227343 List!44610)) (And!7486) (Div!7486) (LessEqual!7486) (Mod!7486) (Concat!19647) (Not!7486) (Plus!7486) (SpaceValue!7486 (value!227344 List!44610)) (IntegerValue!22460 (value!227345 Int) (text!52851 List!44610)) (StringLiteralValue!22459 (text!52852 List!44610)) (FloatLiteralValue!14973 (text!52853 List!44610)) (BytesLiteralValue!7486 (value!227346 List!44610)) (CommentValue!14973 (value!227347 List!44610)) (StringLiteralValue!22460 (value!227348 List!44610)) (ErrorTokenValue!7486 (msg!7547 List!44610)) )
))
(declare-datatypes ((IArray!26939 0))(
  ( (IArray!26940 (innerList!13527 List!44609)) )
))
(declare-datatypes ((Conc!13467 0))(
  ( (Node!13467 (left!33329 Conc!13467) (right!33659 Conc!13467) (csize!27164 Int) (cheight!13678 Int)) (Leaf!20810 (xs!16773 IArray!26939) (csize!27165 Int)) (Empty!13467) )
))
(declare-datatypes ((BalanceConc!26528 0))(
  ( (BalanceConc!26529 (c!707278 Conc!13467)) )
))
(declare-datatypes ((String!51180 0))(
  ( (String!51181 (value!227349 String)) )
))
(declare-datatypes ((Regex!12161 0))(
  ( (ElementMatch!12161 (c!707279 C!24508)) (Concat!19648 (regOne!24834 Regex!12161) (regTwo!24834 Regex!12161)) (EmptyExpr!12161) (Star!12161 (reg!12490 Regex!12161)) (EmptyLang!12161) (Union!12161 (regOne!24835 Regex!12161) (regTwo!24835 Regex!12161)) )
))
(declare-datatypes ((TokenValueInjection!14400 0))(
  ( (TokenValueInjection!14401 (toValue!9908 Int) (toChars!9767 Int)) )
))
(declare-datatypes ((Rule!14312 0))(
  ( (Rule!14313 (regex!7256 Regex!12161) (tag!8116 String!51180) (isSeparator!7256 Bool) (transformation!7256 TokenValueInjection!14400)) )
))
(declare-datatypes ((List!44611 0))(
  ( (Nil!44487) (Cons!44487 (h!49907 Rule!14312) (t!340514 List!44611)) )
))
(declare-fun rules!3756 () List!44611)

(declare-fun rulesInvariant!6142 (LexerInterface!6845 List!44611) Bool)

(assert (=> b!4117737 (= res!1681888 (rulesInvariant!6142 thiss!25645 rules!3756))))

(declare-fun b!4117739 () Bool)

(declare-fun res!1681889 () Bool)

(declare-fun e!2555007 () Bool)

(assert (=> b!4117739 (=> (not res!1681889) (not e!2555007))))

(declare-fun r!4008 () Rule!14312)

(declare-fun rBis!149 () Rule!14312)

(declare-fun getIndex!604 (List!44611 Rule!14312) Int)

(assert (=> b!4117739 (= res!1681889 (< (getIndex!604 rules!3756 rBis!149) (getIndex!604 rules!3756 r!4008)))))

(declare-fun b!4117740 () Bool)

(declare-fun res!1681883 () Bool)

(assert (=> b!4117740 (=> (not res!1681883) (not e!2555007))))

(declare-fun matchR!5992 (Regex!12161 List!44609) Bool)

(assert (=> b!4117740 (= res!1681883 (matchR!5992 (regex!7256 r!4008) p!2912))))

(declare-fun tp!1254668 () Bool)

(declare-fun e!2555015 () Bool)

(declare-fun b!4117741 () Bool)

(declare-fun inv!59073 (String!51180) Bool)

(declare-fun inv!59075 (TokenValueInjection!14400) Bool)

(assert (=> b!4117741 (= e!2555015 (and tp!1254668 (inv!59073 (tag!8116 (h!49907 rules!3756))) (inv!59075 (transformation!7256 (h!49907 rules!3756))) e!2555016))))

(declare-fun b!4117742 () Bool)

(declare-fun res!1681891 () Bool)

(assert (=> b!4117742 (=> (not res!1681891) (not e!2555012))))

(declare-fun input!3238 () List!44609)

(declare-fun isPrefix!4191 (List!44609 List!44609) Bool)

(assert (=> b!4117742 (= res!1681891 (isPrefix!4191 p!2912 input!3238))))

(declare-fun b!4117743 () Bool)

(declare-fun e!2555004 () Bool)

(declare-fun tp!1254667 () Bool)

(assert (=> b!4117743 (= e!2555004 (and e!2555015 tp!1254667))))

(declare-fun e!2555006 () Bool)

(assert (=> b!4117744 (= e!2555006 (and tp!1254661 tp!1254666))))

(declare-fun e!2555013 () Bool)

(declare-fun b!4117745 () Bool)

(declare-fun tp!1254658 () Bool)

(assert (=> b!4117745 (= e!2555013 (and tp!1254658 (inv!59073 (tag!8116 r!4008)) (inv!59075 (transformation!7256 r!4008)) e!2555006))))

(declare-fun b!4117746 () Bool)

(declare-fun res!1681881 () Bool)

(assert (=> b!4117746 (=> (not res!1681881) (not e!2555012))))

(declare-fun isEmpty!26452 (List!44611) Bool)

(assert (=> b!4117746 (= res!1681881 (not (isEmpty!26452 rules!3756)))))

(declare-fun b!4117738 () Bool)

(declare-fun e!2555011 () Bool)

(declare-fun tp_is_empty!21245 () Bool)

(declare-fun tp!1254662 () Bool)

(assert (=> b!4117738 (= e!2555011 (and tp_is_empty!21245 tp!1254662))))

(declare-fun res!1681886 () Bool)

(assert (=> start!390314 (=> (not res!1681886) (not e!2555012))))

(get-info :version)

(assert (=> start!390314 (= res!1681886 ((_ is Lexer!6843) thiss!25645))))

(assert (=> start!390314 e!2555012))

(assert (=> start!390314 e!2555004))

(assert (=> start!390314 e!2555011))

(assert (=> start!390314 true))

(assert (=> start!390314 e!2555013))

(declare-fun e!2555003 () Bool)

(assert (=> start!390314 e!2555003))

(declare-fun e!2555014 () Bool)

(assert (=> start!390314 e!2555014))

(declare-fun b!4117747 () Bool)

(declare-fun res!1681882 () Bool)

(assert (=> b!4117747 (=> (not res!1681882) (not e!2555012))))

(declare-fun contains!8928 (List!44611 Rule!14312) Bool)

(assert (=> b!4117747 (= res!1681882 (contains!8928 rules!3756 r!4008))))

(declare-fun b!4117748 () Bool)

(declare-fun tp!1254659 () Bool)

(assert (=> b!4117748 (= e!2555003 (and tp_is_empty!21245 tp!1254659))))

(declare-fun b!4117749 () Bool)

(assert (=> b!4117749 (= e!2555012 e!2555007)))

(declare-fun res!1681885 () Bool)

(assert (=> b!4117749 (=> (not res!1681885) (not e!2555007))))

(declare-fun lt!1469079 () BalanceConc!26528)

(declare-datatypes ((Token!13442 0))(
  ( (Token!13443 (value!227350 TokenValue!7486) (rule!10322 Rule!14312) (size!32921 Int) (originalCharacters!7752 List!44609)) )
))
(declare-datatypes ((tuple2!42970 0))(
  ( (tuple2!42971 (_1!24619 Token!13442) (_2!24619 List!44609)) )
))
(declare-datatypes ((Option!9564 0))(
  ( (None!9563) (Some!9563 (v!40141 tuple2!42970)) )
))
(declare-fun maxPrefix!4037 (LexerInterface!6845 List!44611 List!44609) Option!9564)

(declare-fun apply!10329 (TokenValueInjection!14400 BalanceConc!26528) TokenValue!7486)

(declare-fun size!32922 (List!44609) Int)

(declare-fun getSuffix!2520 (List!44609 List!44609) List!44609)

(assert (=> b!4117749 (= res!1681885 (= (maxPrefix!4037 thiss!25645 rules!3756 input!3238) (Some!9563 (tuple2!42971 (Token!13443 (apply!10329 (transformation!7256 r!4008) lt!1469079) r!4008 (size!32922 p!2912) p!2912) (getSuffix!2520 input!3238 p!2912)))))))

(declare-datatypes ((Unit!63845 0))(
  ( (Unit!63846) )
))
(declare-fun lt!1469081 () Unit!63845)

(declare-fun lemmaSemiInverse!2114 (TokenValueInjection!14400 BalanceConc!26528) Unit!63845)

(assert (=> b!4117749 (= lt!1469081 (lemmaSemiInverse!2114 (transformation!7256 r!4008) lt!1469079))))

(declare-fun seqFromList!5373 (List!44609) BalanceConc!26528)

(assert (=> b!4117749 (= lt!1469079 (seqFromList!5373 p!2912))))

(declare-fun b!4117750 () Bool)

(declare-fun res!1681890 () Bool)

(assert (=> b!4117750 (=> (not res!1681890) (not e!2555007))))

(declare-fun ruleValid!3064 (LexerInterface!6845 Rule!14312) Bool)

(assert (=> b!4117750 (= res!1681890 (ruleValid!3064 thiss!25645 r!4008))))

(declare-fun b!4117751 () Bool)

(declare-fun res!1681884 () Bool)

(assert (=> b!4117751 (=> (not res!1681884) (not e!2555012))))

(assert (=> b!4117751 (= res!1681884 (contains!8928 rules!3756 rBis!149))))

(declare-fun b!4117752 () Bool)

(assert (=> b!4117752 (= e!2555007 (not true))))

(declare-fun lt!1469082 () Bool)

(declare-fun rulesValidInductive!2677 (LexerInterface!6845 List!44611) Bool)

(assert (=> b!4117752 (= lt!1469082 (rulesValidInductive!2677 thiss!25645 rules!3756))))

(assert (=> b!4117752 (ruleValid!3064 thiss!25645 rBis!149)))

(declare-fun lt!1469080 () Unit!63845)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2108 (LexerInterface!6845 Rule!14312 List!44611) Unit!63845)

(assert (=> b!4117752 (= lt!1469080 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2108 thiss!25645 rBis!149 rules!3756))))

(declare-fun e!2555005 () Bool)

(assert (=> b!4117753 (= e!2555005 (and tp!1254665 tp!1254657))))

(declare-fun b!4117754 () Bool)

(declare-fun tp!1254663 () Bool)

(assert (=> b!4117754 (= e!2555014 (and tp!1254663 (inv!59073 (tag!8116 rBis!149)) (inv!59075 (transformation!7256 rBis!149)) e!2555005))))

(assert (= (and start!390314 res!1681886) b!4117742))

(assert (= (and b!4117742 res!1681891) b!4117746))

(assert (= (and b!4117746 res!1681881) b!4117737))

(assert (= (and b!4117737 res!1681888) b!4117747))

(assert (= (and b!4117747 res!1681882) b!4117751))

(assert (= (and b!4117751 res!1681884) b!4117736))

(assert (= (and b!4117736 res!1681887) b!4117749))

(assert (= (and b!4117749 res!1681885) b!4117740))

(assert (= (and b!4117740 res!1681883) b!4117739))

(assert (= (and b!4117739 res!1681889) b!4117750))

(assert (= (and b!4117750 res!1681890) b!4117752))

(assert (= b!4117741 b!4117735))

(assert (= b!4117743 b!4117741))

(assert (= (and start!390314 ((_ is Cons!44487) rules!3756)) b!4117743))

(assert (= (and start!390314 ((_ is Cons!44485) p!2912)) b!4117738))

(assert (= b!4117745 b!4117744))

(assert (= start!390314 b!4117745))

(assert (= (and start!390314 ((_ is Cons!44485) input!3238)) b!4117748))

(assert (= b!4117754 b!4117753))

(assert (= start!390314 b!4117754))

(declare-fun m!4717291 () Bool)

(assert (=> b!4117736 m!4717291))

(declare-fun m!4717293 () Bool)

(assert (=> b!4117745 m!4717293))

(declare-fun m!4717295 () Bool)

(assert (=> b!4117745 m!4717295))

(declare-fun m!4717297 () Bool)

(assert (=> b!4117754 m!4717297))

(declare-fun m!4717299 () Bool)

(assert (=> b!4117754 m!4717299))

(declare-fun m!4717301 () Bool)

(assert (=> b!4117746 m!4717301))

(declare-fun m!4717303 () Bool)

(assert (=> b!4117742 m!4717303))

(declare-fun m!4717305 () Bool)

(assert (=> b!4117750 m!4717305))

(declare-fun m!4717307 () Bool)

(assert (=> b!4117752 m!4717307))

(declare-fun m!4717309 () Bool)

(assert (=> b!4117752 m!4717309))

(declare-fun m!4717311 () Bool)

(assert (=> b!4117752 m!4717311))

(declare-fun m!4717313 () Bool)

(assert (=> b!4117751 m!4717313))

(declare-fun m!4717315 () Bool)

(assert (=> b!4117747 m!4717315))

(declare-fun m!4717317 () Bool)

(assert (=> b!4117740 m!4717317))

(declare-fun m!4717319 () Bool)

(assert (=> b!4117739 m!4717319))

(declare-fun m!4717321 () Bool)

(assert (=> b!4117739 m!4717321))

(declare-fun m!4717323 () Bool)

(assert (=> b!4117741 m!4717323))

(declare-fun m!4717325 () Bool)

(assert (=> b!4117741 m!4717325))

(declare-fun m!4717327 () Bool)

(assert (=> b!4117737 m!4717327))

(declare-fun m!4717329 () Bool)

(assert (=> b!4117749 m!4717329))

(declare-fun m!4717331 () Bool)

(assert (=> b!4117749 m!4717331))

(declare-fun m!4717333 () Bool)

(assert (=> b!4117749 m!4717333))

(declare-fun m!4717335 () Bool)

(assert (=> b!4117749 m!4717335))

(declare-fun m!4717337 () Bool)

(assert (=> b!4117749 m!4717337))

(declare-fun m!4717339 () Bool)

(assert (=> b!4117749 m!4717339))

(check-sat (not b!4117738) (not b!4117754) (not b!4117750) (not b!4117739) (not b!4117747) (not b!4117743) (not b_next!116933) (not b_next!116931) b_and!318307 (not b!4117748) b_and!318305 (not b!4117745) (not b!4117741) (not b!4117736) b_and!318311 (not b!4117751) (not b_next!116925) b_and!318309 (not b!4117737) (not b!4117752) (not b!4117746) (not b_next!116923) tp_is_empty!21245 (not b!4117742) (not b_next!116929) (not b_next!116927) (not b!4117749) b_and!318303 (not b!4117740) b_and!318301)
(check-sat b_and!318307 b_and!318305 b_and!318311 (not b_next!116923) b_and!318301 (not b_next!116933) (not b_next!116931) (not b_next!116925) b_and!318309 (not b_next!116929) (not b_next!116927) b_and!318303)
