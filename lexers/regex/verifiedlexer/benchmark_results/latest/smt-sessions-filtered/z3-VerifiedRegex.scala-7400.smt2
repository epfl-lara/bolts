; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!393454 () Bool)

(assert start!393454)

(declare-fun b!4139999 () Bool)

(declare-fun b_free!117867 () Bool)

(declare-fun b_next!118571 () Bool)

(assert (=> b!4139999 (= b_free!117867 (not b_next!118571))))

(declare-fun tp!1262004 () Bool)

(declare-fun b_and!321449 () Bool)

(assert (=> b!4139999 (= tp!1262004 b_and!321449)))

(declare-fun b_free!117869 () Bool)

(declare-fun b_next!118573 () Bool)

(assert (=> b!4139999 (= b_free!117869 (not b_next!118573))))

(declare-fun tp!1262008 () Bool)

(declare-fun b_and!321451 () Bool)

(assert (=> b!4139999 (= tp!1262008 b_and!321451)))

(declare-fun b!4140017 () Bool)

(declare-fun b_free!117871 () Bool)

(declare-fun b_next!118575 () Bool)

(assert (=> b!4140017 (= b_free!117871 (not b_next!118575))))

(declare-fun tp!1262010 () Bool)

(declare-fun b_and!321453 () Bool)

(assert (=> b!4140017 (= tp!1262010 b_and!321453)))

(declare-fun b_free!117873 () Bool)

(declare-fun b_next!118577 () Bool)

(assert (=> b!4140017 (= b_free!117873 (not b_next!118577))))

(declare-fun tp!1262002 () Bool)

(declare-fun b_and!321455 () Bool)

(assert (=> b!4140017 (= tp!1262002 b_and!321455)))

(declare-fun b!4140018 () Bool)

(declare-fun b_free!117875 () Bool)

(declare-fun b_next!118579 () Bool)

(assert (=> b!4140018 (= b_free!117875 (not b_next!118579))))

(declare-fun tp!1262011 () Bool)

(declare-fun b_and!321457 () Bool)

(assert (=> b!4140018 (= tp!1262011 b_and!321457)))

(declare-fun b_free!117877 () Bool)

(declare-fun b_next!118581 () Bool)

(assert (=> b!4140018 (= b_free!117877 (not b_next!118581))))

(declare-fun tp!1262003 () Bool)

(declare-fun b_and!321459 () Bool)

(assert (=> b!4140018 (= tp!1262003 b_and!321459)))

(declare-fun b!4139996 () Bool)

(declare-fun res!1693585 () Bool)

(declare-fun e!2568767 () Bool)

(assert (=> b!4139996 (=> (not res!1693585) (not e!2568767))))

(declare-datatypes ((LexerInterface!6961 0))(
  ( (LexerInterfaceExt!6958 (__x!27421 Int)) (Lexer!6959) )
))
(declare-fun thiss!25645 () LexerInterface!6961)

(declare-datatypes ((List!45020 0))(
  ( (Nil!44896) (Cons!44896 (h!50316 (_ BitVec 16)) (t!342299 List!45020)) )
))
(declare-datatypes ((TokenValue!7602 0))(
  ( (FloatLiteralValue!15204 (text!53659 List!45020)) (TokenValueExt!7601 (__x!27422 Int)) (Broken!38010 (value!230630 List!45020)) (Object!7725) (End!7602) (Def!7602) (Underscore!7602) (Match!7602) (Else!7602) (Error!7602) (Case!7602) (If!7602) (Extends!7602) (Abstract!7602) (Class!7602) (Val!7602) (DelimiterValue!15204 (del!7662 List!45020)) (KeywordValue!7608 (value!230631 List!45020)) (CommentValue!15204 (value!230632 List!45020)) (WhitespaceValue!15204 (value!230633 List!45020)) (IndentationValue!7602 (value!230634 List!45020)) (String!51759) (Int32!7602) (Broken!38011 (value!230635 List!45020)) (Boolean!7603) (Unit!64198) (OperatorValue!7605 (op!7662 List!45020)) (IdentifierValue!15204 (value!230636 List!45020)) (IdentifierValue!15205 (value!230637 List!45020)) (WhitespaceValue!15205 (value!230638 List!45020)) (True!15204) (False!15204) (Broken!38012 (value!230639 List!45020)) (Broken!38013 (value!230640 List!45020)) (True!15205) (RightBrace!7602) (RightBracket!7602) (Colon!7602) (Null!7602) (Comma!7602) (LeftBracket!7602) (False!15205) (LeftBrace!7602) (ImaginaryLiteralValue!7602 (text!53660 List!45020)) (StringLiteralValue!22806 (value!230641 List!45020)) (EOFValue!7602 (value!230642 List!45020)) (IdentValue!7602 (value!230643 List!45020)) (DelimiterValue!15205 (value!230644 List!45020)) (DedentValue!7602 (value!230645 List!45020)) (NewLineValue!7602 (value!230646 List!45020)) (IntegerValue!22806 (value!230647 (_ BitVec 32)) (text!53661 List!45020)) (IntegerValue!22807 (value!230648 Int) (text!53662 List!45020)) (Times!7602) (Or!7602) (Equal!7602) (Minus!7602) (Broken!38014 (value!230649 List!45020)) (And!7602) (Div!7602) (LessEqual!7602) (Mod!7602) (Concat!19879) (Not!7602) (Plus!7602) (SpaceValue!7602 (value!230650 List!45020)) (IntegerValue!22808 (value!230651 Int) (text!53663 List!45020)) (StringLiteralValue!22807 (text!53664 List!45020)) (FloatLiteralValue!15205 (text!53665 List!45020)) (BytesLiteralValue!7602 (value!230652 List!45020)) (CommentValue!15205 (value!230653 List!45020)) (StringLiteralValue!22808 (value!230654 List!45020)) (ErrorTokenValue!7602 (msg!7663 List!45020)) )
))
(declare-datatypes ((C!24740 0))(
  ( (C!24741 (val!14480 Int)) )
))
(declare-datatypes ((List!45021 0))(
  ( (Nil!44897) (Cons!44897 (h!50317 C!24740) (t!342300 List!45021)) )
))
(declare-datatypes ((IArray!27171 0))(
  ( (IArray!27172 (innerList!13643 List!45021)) )
))
(declare-datatypes ((Conc!13583 0))(
  ( (Node!13583 (left!33619 Conc!13583) (right!33949 Conc!13583) (csize!27396 Int) (cheight!13794 Int)) (Leaf!20984 (xs!16889 IArray!27171) (csize!27397 Int)) (Empty!13583) )
))
(declare-datatypes ((BalanceConc!26760 0))(
  ( (BalanceConc!26761 (c!709754 Conc!13583)) )
))
(declare-datatypes ((String!51760 0))(
  ( (String!51761 (value!230655 String)) )
))
(declare-datatypes ((Regex!12277 0))(
  ( (ElementMatch!12277 (c!709755 C!24740)) (Concat!19880 (regOne!25066 Regex!12277) (regTwo!25066 Regex!12277)) (EmptyExpr!12277) (Star!12277 (reg!12606 Regex!12277)) (EmptyLang!12277) (Union!12277 (regOne!25067 Regex!12277) (regTwo!25067 Regex!12277)) )
))
(declare-datatypes ((TokenValueInjection!14632 0))(
  ( (TokenValueInjection!14633 (toValue!10036 Int) (toChars!9895 Int)) )
))
(declare-datatypes ((Rule!14544 0))(
  ( (Rule!14545 (regex!7372 Regex!12277) (tag!8232 String!51760) (isSeparator!7372 Bool) (transformation!7372 TokenValueInjection!14632)) )
))
(declare-fun r!4008 () Rule!14544)

(declare-fun ruleValid!3178 (LexerInterface!6961 Rule!14544) Bool)

(assert (=> b!4139996 (= res!1693585 (ruleValid!3178 thiss!25645 r!4008))))

(declare-fun b!4139997 () Bool)

(declare-fun e!2568766 () Bool)

(declare-fun lt!1476390 () List!45021)

(declare-fun input!3238 () List!45021)

(assert (=> b!4139997 (= e!2568766 (= lt!1476390 input!3238))))

(declare-fun lt!1476392 () List!45021)

(declare-fun isPrefix!4307 (List!45021 List!45021) Bool)

(assert (=> b!4139997 (isPrefix!4307 lt!1476392 lt!1476390)))

(declare-datatypes ((Token!13674 0))(
  ( (Token!13675 (value!230656 TokenValue!7602) (rule!10480 Rule!14544) (size!33254 Int) (originalCharacters!7868 List!45021)) )
))
(declare-datatypes ((tuple2!43282 0))(
  ( (tuple2!43283 (_1!24775 Token!13674) (_2!24775 List!45021)) )
))
(declare-fun lt!1476387 () tuple2!43282)

(declare-fun ++!11612 (List!45021 List!45021) List!45021)

(assert (=> b!4139997 (= lt!1476390 (++!11612 lt!1476392 (_2!24775 lt!1476387)))))

(declare-datatypes ((Unit!64199 0))(
  ( (Unit!64200) )
))
(declare-fun lt!1476397 () Unit!64199)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2936 (List!45021 List!45021) Unit!64199)

(assert (=> b!4139997 (= lt!1476397 (lemmaConcatTwoListThenFirstIsPrefix!2936 lt!1476392 (_2!24775 lt!1476387)))))

(declare-fun lt!1476391 () BalanceConc!26760)

(declare-fun list!16443 (BalanceConc!26760) List!45021)

(assert (=> b!4139997 (= lt!1476392 (list!16443 lt!1476391))))

(declare-fun b!4139998 () Bool)

(declare-fun res!1693580 () Bool)

(declare-fun e!2568768 () Bool)

(assert (=> b!4139998 (=> (not res!1693580) (not e!2568768))))

(declare-datatypes ((List!45022 0))(
  ( (Nil!44898) (Cons!44898 (h!50318 Rule!14544) (t!342301 List!45022)) )
))
(declare-fun rules!3756 () List!45022)

(declare-fun isEmpty!26769 (List!45022) Bool)

(assert (=> b!4139998 (= res!1693580 (not (isEmpty!26769 rules!3756)))))

(declare-fun e!2568758 () Bool)

(assert (=> b!4139999 (= e!2568758 (and tp!1262004 tp!1262008))))

(declare-fun b!4140000 () Bool)

(declare-fun res!1693573 () Bool)

(assert (=> b!4140000 (=> (not res!1693573) (not e!2568768))))

(declare-fun p!2912 () List!45021)

(declare-fun isEmpty!26770 (List!45021) Bool)

(assert (=> b!4140000 (= res!1693573 (not (isEmpty!26770 p!2912)))))

(declare-fun res!1693575 () Bool)

(assert (=> start!393454 (=> (not res!1693575) (not e!2568768))))

(get-info :version)

(assert (=> start!393454 (= res!1693575 ((_ is Lexer!6959) thiss!25645))))

(assert (=> start!393454 e!2568768))

(declare-fun e!2568769 () Bool)

(assert (=> start!393454 e!2568769))

(declare-fun e!2568770 () Bool)

(assert (=> start!393454 e!2568770))

(assert (=> start!393454 true))

(declare-fun e!2568761 () Bool)

(assert (=> start!393454 e!2568761))

(declare-fun e!2568773 () Bool)

(assert (=> start!393454 e!2568773))

(declare-fun e!2568764 () Bool)

(assert (=> start!393454 e!2568764))

(declare-fun b!4140001 () Bool)

(declare-fun e!2568762 () Bool)

(assert (=> b!4140001 (= e!2568767 (not e!2568762))))

(declare-fun res!1693576 () Bool)

(assert (=> b!4140001 (=> res!1693576 e!2568762)))

(declare-fun rBis!149 () Rule!14544)

(assert (=> b!4140001 (= res!1693576 (or (not ((_ is Cons!44898) rules!3756)) (not (= (h!50318 rules!3756) rBis!149))))))

(declare-fun lt!1476394 () Unit!64199)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2218 (LexerInterface!6961 Rule!14544 List!45022) Unit!64199)

(assert (=> b!4140001 (= lt!1476394 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2218 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4140001 (ruleValid!3178 thiss!25645 rBis!149)))

(declare-fun lt!1476386 () Unit!64199)

(assert (=> b!4140001 (= lt!1476386 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2218 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4140002 () Bool)

(declare-fun tp_is_empty!21477 () Bool)

(declare-fun tp!1262012 () Bool)

(assert (=> b!4140002 (= e!2568770 (and tp_is_empty!21477 tp!1262012))))

(declare-fun b!4140003 () Bool)

(declare-fun e!2568772 () Bool)

(assert (=> b!4140003 (= e!2568762 e!2568772)))

(declare-fun res!1693578 () Bool)

(assert (=> b!4140003 (=> res!1693578 e!2568772)))

(declare-datatypes ((Option!9678 0))(
  ( (None!9677) (Some!9677 (v!40313 tuple2!43282)) )
))
(declare-fun lt!1476398 () Option!9678)

(declare-fun isEmpty!26771 (Option!9678) Bool)

(assert (=> b!4140003 (= res!1693578 (isEmpty!26771 lt!1476398))))

(declare-fun maxPrefixOneRule!3090 (LexerInterface!6961 Rule!14544 List!45021) Option!9678)

(assert (=> b!4140003 (= lt!1476398 (maxPrefixOneRule!3090 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4140003 (not (= rBis!149 r!4008))))

(declare-fun lt!1476389 () Unit!64199)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!70 (LexerInterface!6961 List!45022 Rule!14544 Rule!14544) Unit!64199)

(assert (=> b!4140003 (= lt!1476389 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!70 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun contains!9052 (List!45022 Rule!14544) Bool)

(declare-fun tail!6541 (List!45022) List!45022)

(assert (=> b!4140003 (contains!9052 (tail!6541 rules!3756) r!4008)))

(declare-fun lt!1476395 () Unit!64199)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!76 (List!45022 Rule!14544 Rule!14544) Unit!64199)

(assert (=> b!4140003 (= lt!1476395 (lemmaGetIndexBiggerAndHeadEqThenTailContains!76 rules!3756 rBis!149 r!4008))))

(declare-fun b!4140004 () Bool)

(assert (=> b!4140004 (= e!2568772 e!2568766)))

(declare-fun res!1693583 () Bool)

(assert (=> b!4140004 (=> res!1693583 e!2568766)))

(declare-fun lt!1476385 () Int)

(declare-fun lt!1476393 () Int)

(assert (=> b!4140004 (= res!1693583 (or (> lt!1476385 lt!1476393) (>= lt!1476385 lt!1476393)))))

(declare-fun size!33255 (BalanceConc!26760) Int)

(assert (=> b!4140004 (= lt!1476385 (size!33255 lt!1476391))))

(declare-fun charsOf!4971 (Token!13674) BalanceConc!26760)

(assert (=> b!4140004 (= lt!1476391 (charsOf!4971 (_1!24775 lt!1476387)))))

(declare-fun get!14653 (Option!9678) tuple2!43282)

(assert (=> b!4140004 (= lt!1476387 (get!14653 lt!1476398))))

(declare-fun b!4140005 () Bool)

(assert (=> b!4140005 (= e!2568768 e!2568767)))

(declare-fun res!1693582 () Bool)

(assert (=> b!4140005 (=> (not res!1693582) (not e!2568767))))

(declare-fun lt!1476388 () TokenValue!7602)

(declare-fun maxPrefix!4151 (LexerInterface!6961 List!45022 List!45021) Option!9678)

(declare-fun getSuffix!2634 (List!45021 List!45021) List!45021)

(assert (=> b!4140005 (= res!1693582 (= (maxPrefix!4151 thiss!25645 rules!3756 input!3238) (Some!9677 (tuple2!43283 (Token!13675 lt!1476388 r!4008 lt!1476393 p!2912) (getSuffix!2634 input!3238 p!2912)))))))

(declare-fun size!33256 (List!45021) Int)

(assert (=> b!4140005 (= lt!1476393 (size!33256 p!2912))))

(declare-fun lt!1476384 () BalanceConc!26760)

(declare-fun apply!10445 (TokenValueInjection!14632 BalanceConc!26760) TokenValue!7602)

(assert (=> b!4140005 (= lt!1476388 (apply!10445 (transformation!7372 r!4008) lt!1476384))))

(declare-fun lt!1476396 () Unit!64199)

(declare-fun lemmaSemiInverse!2230 (TokenValueInjection!14632 BalanceConc!26760) Unit!64199)

(assert (=> b!4140005 (= lt!1476396 (lemmaSemiInverse!2230 (transformation!7372 r!4008) lt!1476384))))

(declare-fun seqFromList!5489 (List!45021) BalanceConc!26760)

(assert (=> b!4140005 (= lt!1476384 (seqFromList!5489 p!2912))))

(declare-fun b!4140006 () Bool)

(declare-fun tp!1262005 () Bool)

(assert (=> b!4140006 (= e!2568773 (and tp_is_empty!21477 tp!1262005))))

(declare-fun b!4140007 () Bool)

(declare-fun res!1693579 () Bool)

(assert (=> b!4140007 (=> (not res!1693579) (not e!2568768))))

(declare-fun rulesInvariant!6258 (LexerInterface!6961 List!45022) Bool)

(assert (=> b!4140007 (= res!1693579 (rulesInvariant!6258 thiss!25645 rules!3756))))

(declare-fun b!4140008 () Bool)

(declare-fun tp!1262001 () Bool)

(declare-fun e!2568763 () Bool)

(declare-fun inv!59501 (String!51760) Bool)

(declare-fun inv!59503 (TokenValueInjection!14632) Bool)

(assert (=> b!4140008 (= e!2568763 (and tp!1262001 (inv!59501 (tag!8232 (h!50318 rules!3756))) (inv!59503 (transformation!7372 (h!50318 rules!3756))) e!2568758))))

(declare-fun b!4140009 () Bool)

(declare-fun tp!1262006 () Bool)

(declare-fun e!2568765 () Bool)

(assert (=> b!4140009 (= e!2568761 (and tp!1262006 (inv!59501 (tag!8232 r!4008)) (inv!59503 (transformation!7372 r!4008)) e!2568765))))

(declare-fun b!4140010 () Bool)

(declare-fun tp!1262007 () Bool)

(assert (=> b!4140010 (= e!2568769 (and e!2568763 tp!1262007))))

(declare-fun b!4140011 () Bool)

(declare-fun res!1693581 () Bool)

(assert (=> b!4140011 (=> (not res!1693581) (not e!2568767))))

(declare-fun getIndex!718 (List!45022 Rule!14544) Int)

(assert (=> b!4140011 (= res!1693581 (< (getIndex!718 rules!3756 rBis!149) (getIndex!718 rules!3756 r!4008)))))

(declare-fun b!4140012 () Bool)

(declare-fun res!1693584 () Bool)

(assert (=> b!4140012 (=> (not res!1693584) (not e!2568768))))

(assert (=> b!4140012 (= res!1693584 (contains!9052 rules!3756 rBis!149))))

(declare-fun b!4140013 () Bool)

(declare-fun res!1693586 () Bool)

(assert (=> b!4140013 (=> (not res!1693586) (not e!2568767))))

(declare-fun matchR!6106 (Regex!12277 List!45021) Bool)

(assert (=> b!4140013 (= res!1693586 (matchR!6106 (regex!7372 r!4008) p!2912))))

(declare-fun b!4140014 () Bool)

(declare-fun res!1693577 () Bool)

(assert (=> b!4140014 (=> (not res!1693577) (not e!2568768))))

(assert (=> b!4140014 (= res!1693577 (contains!9052 rules!3756 r!4008))))

(declare-fun b!4140015 () Bool)

(declare-fun e!2568771 () Bool)

(declare-fun tp!1262009 () Bool)

(assert (=> b!4140015 (= e!2568764 (and tp!1262009 (inv!59501 (tag!8232 rBis!149)) (inv!59503 (transformation!7372 rBis!149)) e!2568771))))

(declare-fun b!4140016 () Bool)

(declare-fun res!1693574 () Bool)

(assert (=> b!4140016 (=> (not res!1693574) (not e!2568768))))

(assert (=> b!4140016 (= res!1693574 (isPrefix!4307 p!2912 input!3238))))

(assert (=> b!4140017 (= e!2568765 (and tp!1262010 tp!1262002))))

(assert (=> b!4140018 (= e!2568771 (and tp!1262011 tp!1262003))))

(assert (= (and start!393454 res!1693575) b!4140016))

(assert (= (and b!4140016 res!1693574) b!4139998))

(assert (= (and b!4139998 res!1693580) b!4140007))

(assert (= (and b!4140007 res!1693579) b!4140014))

(assert (= (and b!4140014 res!1693577) b!4140012))

(assert (= (and b!4140012 res!1693584) b!4140000))

(assert (= (and b!4140000 res!1693573) b!4140005))

(assert (= (and b!4140005 res!1693582) b!4140013))

(assert (= (and b!4140013 res!1693586) b!4140011))

(assert (= (and b!4140011 res!1693581) b!4139996))

(assert (= (and b!4139996 res!1693585) b!4140001))

(assert (= (and b!4140001 (not res!1693576)) b!4140003))

(assert (= (and b!4140003 (not res!1693578)) b!4140004))

(assert (= (and b!4140004 (not res!1693583)) b!4139997))

(assert (= b!4140008 b!4139999))

(assert (= b!4140010 b!4140008))

(assert (= (and start!393454 ((_ is Cons!44898) rules!3756)) b!4140010))

(assert (= (and start!393454 ((_ is Cons!44897) p!2912)) b!4140002))

(assert (= b!4140009 b!4140017))

(assert (= start!393454 b!4140009))

(assert (= (and start!393454 ((_ is Cons!44897) input!3238)) b!4140006))

(assert (= b!4140015 b!4140018))

(assert (= start!393454 b!4140015))

(declare-fun m!4736453 () Bool)

(assert (=> b!4139998 m!4736453))

(declare-fun m!4736455 () Bool)

(assert (=> b!4140016 m!4736455))

(declare-fun m!4736457 () Bool)

(assert (=> b!4140004 m!4736457))

(declare-fun m!4736459 () Bool)

(assert (=> b!4140004 m!4736459))

(declare-fun m!4736461 () Bool)

(assert (=> b!4140004 m!4736461))

(declare-fun m!4736463 () Bool)

(assert (=> b!4140011 m!4736463))

(declare-fun m!4736465 () Bool)

(assert (=> b!4140011 m!4736465))

(declare-fun m!4736467 () Bool)

(assert (=> b!4140012 m!4736467))

(declare-fun m!4736469 () Bool)

(assert (=> b!4140009 m!4736469))

(declare-fun m!4736471 () Bool)

(assert (=> b!4140009 m!4736471))

(declare-fun m!4736473 () Bool)

(assert (=> b!4140007 m!4736473))

(declare-fun m!4736475 () Bool)

(assert (=> b!4140014 m!4736475))

(declare-fun m!4736477 () Bool)

(assert (=> b!4140003 m!4736477))

(declare-fun m!4736479 () Bool)

(assert (=> b!4140003 m!4736479))

(declare-fun m!4736481 () Bool)

(assert (=> b!4140003 m!4736481))

(declare-fun m!4736483 () Bool)

(assert (=> b!4140003 m!4736483))

(assert (=> b!4140003 m!4736479))

(declare-fun m!4736485 () Bool)

(assert (=> b!4140003 m!4736485))

(declare-fun m!4736487 () Bool)

(assert (=> b!4140003 m!4736487))

(declare-fun m!4736489 () Bool)

(assert (=> b!4139997 m!4736489))

(declare-fun m!4736491 () Bool)

(assert (=> b!4139997 m!4736491))

(declare-fun m!4736493 () Bool)

(assert (=> b!4139997 m!4736493))

(declare-fun m!4736495 () Bool)

(assert (=> b!4139997 m!4736495))

(declare-fun m!4736497 () Bool)

(assert (=> b!4140015 m!4736497))

(declare-fun m!4736499 () Bool)

(assert (=> b!4140015 m!4736499))

(declare-fun m!4736501 () Bool)

(assert (=> b!4140013 m!4736501))

(declare-fun m!4736503 () Bool)

(assert (=> b!4140005 m!4736503))

(declare-fun m!4736505 () Bool)

(assert (=> b!4140005 m!4736505))

(declare-fun m!4736507 () Bool)

(assert (=> b!4140005 m!4736507))

(declare-fun m!4736509 () Bool)

(assert (=> b!4140005 m!4736509))

(declare-fun m!4736511 () Bool)

(assert (=> b!4140005 m!4736511))

(declare-fun m!4736513 () Bool)

(assert (=> b!4140005 m!4736513))

(declare-fun m!4736515 () Bool)

(assert (=> b!4140001 m!4736515))

(declare-fun m!4736517 () Bool)

(assert (=> b!4140001 m!4736517))

(declare-fun m!4736519 () Bool)

(assert (=> b!4140001 m!4736519))

(declare-fun m!4736521 () Bool)

(assert (=> b!4139996 m!4736521))

(declare-fun m!4736523 () Bool)

(assert (=> b!4140008 m!4736523))

(declare-fun m!4736525 () Bool)

(assert (=> b!4140008 m!4736525))

(declare-fun m!4736527 () Bool)

(assert (=> b!4140000 m!4736527))

(check-sat (not b!4140001) (not b!4140005) (not b!4140014) b_and!321455 (not b!4140002) (not b_next!118575) (not b!4140008) (not b_next!118571) (not b_next!118581) b_and!321459 (not b!4140006) b_and!321457 (not b!4140000) (not b_next!118573) b_and!321449 (not b!4140012) (not b!4139997) b_and!321453 (not b!4140016) b_and!321451 (not b!4139998) (not b!4140013) tp_is_empty!21477 (not b!4140015) (not b_next!118579) (not b!4140010) (not b!4140004) (not b!4140011) (not b!4139996) (not b!4140009) (not b_next!118577) (not b!4140007) (not b!4140003))
(check-sat b_and!321453 b_and!321451 b_and!321455 (not b_next!118575) (not b_next!118579) (not b_next!118577) (not b_next!118571) (not b_next!118581) b_and!321459 b_and!321457 (not b_next!118573) b_and!321449)
(get-model)

(declare-fun b!4140036 () Bool)

(declare-fun e!2568791 () Bool)

(declare-fun e!2568790 () Bool)

(assert (=> b!4140036 (= e!2568791 e!2568790)))

(declare-fun res!1693613 () Bool)

(assert (=> b!4140036 (=> (not res!1693613) (not e!2568790))))

(assert (=> b!4140036 (= res!1693613 (not ((_ is Nil!44897) lt!1476390)))))

(declare-fun b!4140037 () Bool)

(declare-fun res!1693616 () Bool)

(assert (=> b!4140037 (=> (not res!1693616) (not e!2568790))))

(declare-fun head!8734 (List!45021) C!24740)

(assert (=> b!4140037 (= res!1693616 (= (head!8734 lt!1476392) (head!8734 lt!1476390)))))

(declare-fun d!1225701 () Bool)

(declare-fun e!2568792 () Bool)

(assert (=> d!1225701 e!2568792))

(declare-fun res!1693614 () Bool)

(assert (=> d!1225701 (=> res!1693614 e!2568792)))

(declare-fun lt!1476407 () Bool)

(assert (=> d!1225701 (= res!1693614 (not lt!1476407))))

(assert (=> d!1225701 (= lt!1476407 e!2568791)))

(declare-fun res!1693615 () Bool)

(assert (=> d!1225701 (=> res!1693615 e!2568791)))

(assert (=> d!1225701 (= res!1693615 ((_ is Nil!44897) lt!1476392))))

(assert (=> d!1225701 (= (isPrefix!4307 lt!1476392 lt!1476390) lt!1476407)))

(declare-fun b!4140039 () Bool)

(assert (=> b!4140039 (= e!2568792 (>= (size!33256 lt!1476390) (size!33256 lt!1476392)))))

(declare-fun b!4140038 () Bool)

(declare-fun tail!6543 (List!45021) List!45021)

(assert (=> b!4140038 (= e!2568790 (isPrefix!4307 (tail!6543 lt!1476392) (tail!6543 lt!1476390)))))

(assert (= (and d!1225701 (not res!1693615)) b!4140036))

(assert (= (and b!4140036 res!1693613) b!4140037))

(assert (= (and b!4140037 res!1693616) b!4140038))

(assert (= (and d!1225701 (not res!1693614)) b!4140039))

(declare-fun m!4736537 () Bool)

(assert (=> b!4140037 m!4736537))

(declare-fun m!4736539 () Bool)

(assert (=> b!4140037 m!4736539))

(declare-fun m!4736541 () Bool)

(assert (=> b!4140039 m!4736541))

(declare-fun m!4736543 () Bool)

(assert (=> b!4140039 m!4736543))

(declare-fun m!4736545 () Bool)

(assert (=> b!4140038 m!4736545))

(declare-fun m!4736547 () Bool)

(assert (=> b!4140038 m!4736547))

(assert (=> b!4140038 m!4736545))

(assert (=> b!4140038 m!4736547))

(declare-fun m!4736549 () Bool)

(assert (=> b!4140038 m!4736549))

(assert (=> b!4139997 d!1225701))

(declare-fun b!4140049 () Bool)

(declare-fun e!2568797 () List!45021)

(assert (=> b!4140049 (= e!2568797 (Cons!44897 (h!50317 lt!1476392) (++!11612 (t!342300 lt!1476392) (_2!24775 lt!1476387))))))

(declare-fun b!4140048 () Bool)

(assert (=> b!4140048 (= e!2568797 (_2!24775 lt!1476387))))

(declare-fun d!1225709 () Bool)

(declare-fun e!2568798 () Bool)

(assert (=> d!1225709 e!2568798))

(declare-fun res!1693622 () Bool)

(assert (=> d!1225709 (=> (not res!1693622) (not e!2568798))))

(declare-fun lt!1476410 () List!45021)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6935 (List!45021) (InoxSet C!24740))

(assert (=> d!1225709 (= res!1693622 (= (content!6935 lt!1476410) ((_ map or) (content!6935 lt!1476392) (content!6935 (_2!24775 lt!1476387)))))))

(assert (=> d!1225709 (= lt!1476410 e!2568797)))

(declare-fun c!709758 () Bool)

(assert (=> d!1225709 (= c!709758 ((_ is Nil!44897) lt!1476392))))

(assert (=> d!1225709 (= (++!11612 lt!1476392 (_2!24775 lt!1476387)) lt!1476410)))

(declare-fun b!4140050 () Bool)

(declare-fun res!1693621 () Bool)

(assert (=> b!4140050 (=> (not res!1693621) (not e!2568798))))

(assert (=> b!4140050 (= res!1693621 (= (size!33256 lt!1476410) (+ (size!33256 lt!1476392) (size!33256 (_2!24775 lt!1476387)))))))

(declare-fun b!4140051 () Bool)

(assert (=> b!4140051 (= e!2568798 (or (not (= (_2!24775 lt!1476387) Nil!44897)) (= lt!1476410 lt!1476392)))))

(assert (= (and d!1225709 c!709758) b!4140048))

(assert (= (and d!1225709 (not c!709758)) b!4140049))

(assert (= (and d!1225709 res!1693622) b!4140050))

(assert (= (and b!4140050 res!1693621) b!4140051))

(declare-fun m!4736551 () Bool)

(assert (=> b!4140049 m!4736551))

(declare-fun m!4736553 () Bool)

(assert (=> d!1225709 m!4736553))

(declare-fun m!4736555 () Bool)

(assert (=> d!1225709 m!4736555))

(declare-fun m!4736557 () Bool)

(assert (=> d!1225709 m!4736557))

(declare-fun m!4736559 () Bool)

(assert (=> b!4140050 m!4736559))

(assert (=> b!4140050 m!4736543))

(declare-fun m!4736561 () Bool)

(assert (=> b!4140050 m!4736561))

(assert (=> b!4139997 d!1225709))

(declare-fun d!1225711 () Bool)

(assert (=> d!1225711 (isPrefix!4307 lt!1476392 (++!11612 lt!1476392 (_2!24775 lt!1476387)))))

(declare-fun lt!1476413 () Unit!64199)

(declare-fun choose!25319 (List!45021 List!45021) Unit!64199)

(assert (=> d!1225711 (= lt!1476413 (choose!25319 lt!1476392 (_2!24775 lt!1476387)))))

(assert (=> d!1225711 (= (lemmaConcatTwoListThenFirstIsPrefix!2936 lt!1476392 (_2!24775 lt!1476387)) lt!1476413)))

(declare-fun bs!595214 () Bool)

(assert (= bs!595214 d!1225711))

(assert (=> bs!595214 m!4736491))

(assert (=> bs!595214 m!4736491))

(declare-fun m!4736563 () Bool)

(assert (=> bs!595214 m!4736563))

(declare-fun m!4736565 () Bool)

(assert (=> bs!595214 m!4736565))

(assert (=> b!4139997 d!1225711))

(declare-fun d!1225713 () Bool)

(declare-fun list!16444 (Conc!13583) List!45021)

(assert (=> d!1225713 (= (list!16443 lt!1476391) (list!16444 (c!709754 lt!1476391)))))

(declare-fun bs!595215 () Bool)

(assert (= bs!595215 d!1225713))

(declare-fun m!4736567 () Bool)

(assert (=> bs!595215 m!4736567))

(assert (=> b!4139997 d!1225713))

(declare-fun d!1225715 () Bool)

(assert (=> d!1225715 (= (inv!59501 (tag!8232 (h!50318 rules!3756))) (= (mod (str.len (value!230655 (tag!8232 (h!50318 rules!3756)))) 2) 0))))

(assert (=> b!4140008 d!1225715))

(declare-fun d!1225717 () Bool)

(declare-fun res!1693625 () Bool)

(declare-fun e!2568801 () Bool)

(assert (=> d!1225717 (=> (not res!1693625) (not e!2568801))))

(declare-fun semiInverseModEq!3184 (Int Int) Bool)

(assert (=> d!1225717 (= res!1693625 (semiInverseModEq!3184 (toChars!9895 (transformation!7372 (h!50318 rules!3756))) (toValue!10036 (transformation!7372 (h!50318 rules!3756)))))))

(assert (=> d!1225717 (= (inv!59503 (transformation!7372 (h!50318 rules!3756))) e!2568801)))

(declare-fun b!4140054 () Bool)

(declare-fun equivClasses!3083 (Int Int) Bool)

(assert (=> b!4140054 (= e!2568801 (equivClasses!3083 (toChars!9895 (transformation!7372 (h!50318 rules!3756))) (toValue!10036 (transformation!7372 (h!50318 rules!3756)))))))

(assert (= (and d!1225717 res!1693625) b!4140054))

(declare-fun m!4736569 () Bool)

(assert (=> d!1225717 m!4736569))

(declare-fun m!4736571 () Bool)

(assert (=> b!4140054 m!4736571))

(assert (=> b!4140008 d!1225717))

(declare-fun d!1225719 () Bool)

(declare-fun res!1693630 () Bool)

(declare-fun e!2568804 () Bool)

(assert (=> d!1225719 (=> (not res!1693630) (not e!2568804))))

(declare-fun validRegex!5529 (Regex!12277) Bool)

(assert (=> d!1225719 (= res!1693630 (validRegex!5529 (regex!7372 r!4008)))))

(assert (=> d!1225719 (= (ruleValid!3178 thiss!25645 r!4008) e!2568804)))

(declare-fun b!4140059 () Bool)

(declare-fun res!1693631 () Bool)

(assert (=> b!4140059 (=> (not res!1693631) (not e!2568804))))

(declare-fun nullable!4321 (Regex!12277) Bool)

(assert (=> b!4140059 (= res!1693631 (not (nullable!4321 (regex!7372 r!4008))))))

(declare-fun b!4140060 () Bool)

(assert (=> b!4140060 (= e!2568804 (not (= (tag!8232 r!4008) (String!51761 ""))))))

(assert (= (and d!1225719 res!1693630) b!4140059))

(assert (= (and b!4140059 res!1693631) b!4140060))

(declare-fun m!4736573 () Bool)

(assert (=> d!1225719 m!4736573))

(declare-fun m!4736575 () Bool)

(assert (=> b!4140059 m!4736575))

(assert (=> b!4139996 d!1225719))

(declare-fun d!1225721 () Bool)

(declare-fun res!1693634 () Bool)

(declare-fun e!2568807 () Bool)

(assert (=> d!1225721 (=> (not res!1693634) (not e!2568807))))

(declare-fun rulesValid!2899 (LexerInterface!6961 List!45022) Bool)

(assert (=> d!1225721 (= res!1693634 (rulesValid!2899 thiss!25645 rules!3756))))

(assert (=> d!1225721 (= (rulesInvariant!6258 thiss!25645 rules!3756) e!2568807)))

(declare-fun b!4140063 () Bool)

(declare-datatypes ((List!45024 0))(
  ( (Nil!44900) (Cons!44900 (h!50320 String!51760) (t!342351 List!45024)) )
))
(declare-fun noDuplicateTag!2982 (LexerInterface!6961 List!45022 List!45024) Bool)

(assert (=> b!4140063 (= e!2568807 (noDuplicateTag!2982 thiss!25645 rules!3756 Nil!44900))))

(assert (= (and d!1225721 res!1693634) b!4140063))

(declare-fun m!4736577 () Bool)

(assert (=> d!1225721 m!4736577))

(declare-fun m!4736579 () Bool)

(assert (=> b!4140063 m!4736579))

(assert (=> b!4140007 d!1225721))

(declare-fun d!1225723 () Bool)

(assert (=> d!1225723 (= (isEmpty!26770 p!2912) ((_ is Nil!44897) p!2912))))

(assert (=> b!4140000 d!1225723))

(declare-fun d!1225725 () Bool)

(declare-fun lt!1476416 () Int)

(assert (=> d!1225725 (>= lt!1476416 0)))

(declare-fun e!2568813 () Int)

(assert (=> d!1225725 (= lt!1476416 e!2568813)))

(declare-fun c!709764 () Bool)

(assert (=> d!1225725 (= c!709764 (and ((_ is Cons!44898) rules!3756) (= (h!50318 rules!3756) rBis!149)))))

(assert (=> d!1225725 (contains!9052 rules!3756 rBis!149)))

(assert (=> d!1225725 (= (getIndex!718 rules!3756 rBis!149) lt!1476416)))

(declare-fun b!4140075 () Bool)

(declare-fun e!2568814 () Int)

(assert (=> b!4140075 (= e!2568814 (- 1))))

(declare-fun b!4140072 () Bool)

(assert (=> b!4140072 (= e!2568813 0)))

(declare-fun b!4140073 () Bool)

(assert (=> b!4140073 (= e!2568813 e!2568814)))

(declare-fun c!709763 () Bool)

(assert (=> b!4140073 (= c!709763 (and ((_ is Cons!44898) rules!3756) (not (= (h!50318 rules!3756) rBis!149))))))

(declare-fun b!4140074 () Bool)

(assert (=> b!4140074 (= e!2568814 (+ 1 (getIndex!718 (t!342301 rules!3756) rBis!149)))))

(assert (= (and d!1225725 c!709764) b!4140072))

(assert (= (and d!1225725 (not c!709764)) b!4140073))

(assert (= (and b!4140073 c!709763) b!4140074))

(assert (= (and b!4140073 (not c!709763)) b!4140075))

(assert (=> d!1225725 m!4736467))

(declare-fun m!4736581 () Bool)

(assert (=> b!4140074 m!4736581))

(assert (=> b!4140011 d!1225725))

(declare-fun d!1225727 () Bool)

(declare-fun lt!1476417 () Int)

(assert (=> d!1225727 (>= lt!1476417 0)))

(declare-fun e!2568815 () Int)

(assert (=> d!1225727 (= lt!1476417 e!2568815)))

(declare-fun c!709766 () Bool)

(assert (=> d!1225727 (= c!709766 (and ((_ is Cons!44898) rules!3756) (= (h!50318 rules!3756) r!4008)))))

(assert (=> d!1225727 (contains!9052 rules!3756 r!4008)))

(assert (=> d!1225727 (= (getIndex!718 rules!3756 r!4008) lt!1476417)))

(declare-fun b!4140079 () Bool)

(declare-fun e!2568816 () Int)

(assert (=> b!4140079 (= e!2568816 (- 1))))

(declare-fun b!4140076 () Bool)

(assert (=> b!4140076 (= e!2568815 0)))

(declare-fun b!4140077 () Bool)

(assert (=> b!4140077 (= e!2568815 e!2568816)))

(declare-fun c!709765 () Bool)

(assert (=> b!4140077 (= c!709765 (and ((_ is Cons!44898) rules!3756) (not (= (h!50318 rules!3756) r!4008))))))

(declare-fun b!4140078 () Bool)

(assert (=> b!4140078 (= e!2568816 (+ 1 (getIndex!718 (t!342301 rules!3756) r!4008)))))

(assert (= (and d!1225727 c!709766) b!4140076))

(assert (= (and d!1225727 (not c!709766)) b!4140077))

(assert (= (and b!4140077 c!709765) b!4140078))

(assert (= (and b!4140077 (not c!709765)) b!4140079))

(assert (=> d!1225727 m!4736475))

(declare-fun m!4736583 () Bool)

(assert (=> b!4140078 m!4736583))

(assert (=> b!4140011 d!1225727))

(declare-fun d!1225729 () Bool)

(assert (=> d!1225729 (= (isEmpty!26769 rules!3756) ((_ is Nil!44898) rules!3756))))

(assert (=> b!4139998 d!1225729))

(declare-fun d!1225731 () Bool)

(assert (=> d!1225731 (= (inv!59501 (tag!8232 r!4008)) (= (mod (str.len (value!230655 (tag!8232 r!4008))) 2) 0))))

(assert (=> b!4140009 d!1225731))

(declare-fun d!1225733 () Bool)

(declare-fun res!1693635 () Bool)

(declare-fun e!2568817 () Bool)

(assert (=> d!1225733 (=> (not res!1693635) (not e!2568817))))

(assert (=> d!1225733 (= res!1693635 (semiInverseModEq!3184 (toChars!9895 (transformation!7372 r!4008)) (toValue!10036 (transformation!7372 r!4008))))))

(assert (=> d!1225733 (= (inv!59503 (transformation!7372 r!4008)) e!2568817)))

(declare-fun b!4140080 () Bool)

(assert (=> b!4140080 (= e!2568817 (equivClasses!3083 (toChars!9895 (transformation!7372 r!4008)) (toValue!10036 (transformation!7372 r!4008))))))

(assert (= (and d!1225733 res!1693635) b!4140080))

(declare-fun m!4736585 () Bool)

(assert (=> d!1225733 m!4736585))

(declare-fun m!4736587 () Bool)

(assert (=> b!4140080 m!4736587))

(assert (=> b!4140009 d!1225733))

(declare-fun b!4140166 () Bool)

(declare-fun res!1693698 () Bool)

(declare-fun e!2568863 () Bool)

(assert (=> b!4140166 (=> (not res!1693698) (not e!2568863))))

(assert (=> b!4140166 (= res!1693698 (isEmpty!26770 (tail!6543 p!2912)))))

(declare-fun b!4140167 () Bool)

(declare-fun e!2568864 () Bool)

(declare-fun lt!1476441 () Bool)

(declare-fun call!290493 () Bool)

(assert (=> b!4140167 (= e!2568864 (= lt!1476441 call!290493))))

(declare-fun b!4140168 () Bool)

(declare-fun res!1693691 () Bool)

(declare-fun e!2568865 () Bool)

(assert (=> b!4140168 (=> res!1693691 e!2568865)))

(assert (=> b!4140168 (= res!1693691 (not ((_ is ElementMatch!12277) (regex!7372 r!4008))))))

(declare-fun e!2568860 () Bool)

(assert (=> b!4140168 (= e!2568860 e!2568865)))

(declare-fun b!4140169 () Bool)

(declare-fun res!1693693 () Bool)

(declare-fun e!2568866 () Bool)

(assert (=> b!4140169 (=> res!1693693 e!2568866)))

(assert (=> b!4140169 (= res!1693693 (not (isEmpty!26770 (tail!6543 p!2912))))))

(declare-fun b!4140170 () Bool)

(assert (=> b!4140170 (= e!2568864 e!2568860)))

(declare-fun c!709784 () Bool)

(assert (=> b!4140170 (= c!709784 ((_ is EmptyLang!12277) (regex!7372 r!4008)))))

(declare-fun b!4140171 () Bool)

(declare-fun res!1693694 () Bool)

(assert (=> b!4140171 (=> (not res!1693694) (not e!2568863))))

(assert (=> b!4140171 (= res!1693694 (not call!290493))))

(declare-fun b!4140172 () Bool)

(declare-fun e!2568862 () Bool)

(assert (=> b!4140172 (= e!2568862 e!2568866)))

(declare-fun res!1693695 () Bool)

(assert (=> b!4140172 (=> res!1693695 e!2568866)))

(assert (=> b!4140172 (= res!1693695 call!290493)))

(declare-fun b!4140173 () Bool)

(declare-fun e!2568861 () Bool)

(assert (=> b!4140173 (= e!2568861 (nullable!4321 (regex!7372 r!4008)))))

(declare-fun b!4140175 () Bool)

(assert (=> b!4140175 (= e!2568866 (not (= (head!8734 p!2912) (c!709755 (regex!7372 r!4008)))))))

(declare-fun bm!290488 () Bool)

(assert (=> bm!290488 (= call!290493 (isEmpty!26770 p!2912))))

(declare-fun b!4140176 () Bool)

(assert (=> b!4140176 (= e!2568863 (= (head!8734 p!2912) (c!709755 (regex!7372 r!4008))))))

(declare-fun b!4140177 () Bool)

(declare-fun derivativeStep!3716 (Regex!12277 C!24740) Regex!12277)

(assert (=> b!4140177 (= e!2568861 (matchR!6106 (derivativeStep!3716 (regex!7372 r!4008) (head!8734 p!2912)) (tail!6543 p!2912)))))

(declare-fun b!4140178 () Bool)

(assert (=> b!4140178 (= e!2568860 (not lt!1476441))))

(declare-fun b!4140179 () Bool)

(assert (=> b!4140179 (= e!2568865 e!2568862)))

(declare-fun res!1693692 () Bool)

(assert (=> b!4140179 (=> (not res!1693692) (not e!2568862))))

(assert (=> b!4140179 (= res!1693692 (not lt!1476441))))

(declare-fun d!1225735 () Bool)

(assert (=> d!1225735 e!2568864))

(declare-fun c!709782 () Bool)

(assert (=> d!1225735 (= c!709782 ((_ is EmptyExpr!12277) (regex!7372 r!4008)))))

(assert (=> d!1225735 (= lt!1476441 e!2568861)))

(declare-fun c!709783 () Bool)

(assert (=> d!1225735 (= c!709783 (isEmpty!26770 p!2912))))

(assert (=> d!1225735 (validRegex!5529 (regex!7372 r!4008))))

(assert (=> d!1225735 (= (matchR!6106 (regex!7372 r!4008) p!2912) lt!1476441)))

(declare-fun b!4140174 () Bool)

(declare-fun res!1693696 () Bool)

(assert (=> b!4140174 (=> res!1693696 e!2568865)))

(assert (=> b!4140174 (= res!1693696 e!2568863)))

(declare-fun res!1693697 () Bool)

(assert (=> b!4140174 (=> (not res!1693697) (not e!2568863))))

(assert (=> b!4140174 (= res!1693697 lt!1476441)))

(assert (= (and d!1225735 c!709783) b!4140173))

(assert (= (and d!1225735 (not c!709783)) b!4140177))

(assert (= (and d!1225735 c!709782) b!4140167))

(assert (= (and d!1225735 (not c!709782)) b!4140170))

(assert (= (and b!4140170 c!709784) b!4140178))

(assert (= (and b!4140170 (not c!709784)) b!4140168))

(assert (= (and b!4140168 (not res!1693691)) b!4140174))

(assert (= (and b!4140174 res!1693697) b!4140171))

(assert (= (and b!4140171 res!1693694) b!4140166))

(assert (= (and b!4140166 res!1693698) b!4140176))

(assert (= (and b!4140174 (not res!1693696)) b!4140179))

(assert (= (and b!4140179 res!1693692) b!4140172))

(assert (= (and b!4140172 (not res!1693695)) b!4140169))

(assert (= (and b!4140169 (not res!1693693)) b!4140175))

(assert (= (or b!4140167 b!4140171 b!4140172) bm!290488))

(assert (=> b!4140173 m!4736575))

(declare-fun m!4736655 () Bool)

(assert (=> b!4140175 m!4736655))

(assert (=> b!4140176 m!4736655))

(assert (=> bm!290488 m!4736527))

(assert (=> b!4140177 m!4736655))

(assert (=> b!4140177 m!4736655))

(declare-fun m!4736657 () Bool)

(assert (=> b!4140177 m!4736657))

(declare-fun m!4736659 () Bool)

(assert (=> b!4140177 m!4736659))

(assert (=> b!4140177 m!4736657))

(assert (=> b!4140177 m!4736659))

(declare-fun m!4736661 () Bool)

(assert (=> b!4140177 m!4736661))

(assert (=> d!1225735 m!4736527))

(assert (=> d!1225735 m!4736573))

(assert (=> b!4140166 m!4736659))

(assert (=> b!4140166 m!4736659))

(declare-fun m!4736663 () Bool)

(assert (=> b!4140166 m!4736663))

(assert (=> b!4140169 m!4736659))

(assert (=> b!4140169 m!4736659))

(assert (=> b!4140169 m!4736663))

(assert (=> b!4140013 d!1225735))

(declare-fun d!1225749 () Bool)

(declare-fun lt!1476451 () Bool)

(declare-fun content!6937 (List!45022) (InoxSet Rule!14544))

(assert (=> d!1225749 (= lt!1476451 (select (content!6937 (tail!6541 rules!3756)) r!4008))))

(declare-fun e!2568884 () Bool)

(assert (=> d!1225749 (= lt!1476451 e!2568884)))

(declare-fun res!1693714 () Bool)

(assert (=> d!1225749 (=> (not res!1693714) (not e!2568884))))

(assert (=> d!1225749 (= res!1693714 ((_ is Cons!44898) (tail!6541 rules!3756)))))

(assert (=> d!1225749 (= (contains!9052 (tail!6541 rules!3756) r!4008) lt!1476451)))

(declare-fun b!4140205 () Bool)

(declare-fun e!2568883 () Bool)

(assert (=> b!4140205 (= e!2568884 e!2568883)))

(declare-fun res!1693713 () Bool)

(assert (=> b!4140205 (=> res!1693713 e!2568883)))

(assert (=> b!4140205 (= res!1693713 (= (h!50318 (tail!6541 rules!3756)) r!4008))))

(declare-fun b!4140206 () Bool)

(assert (=> b!4140206 (= e!2568883 (contains!9052 (t!342301 (tail!6541 rules!3756)) r!4008))))

(assert (= (and d!1225749 res!1693714) b!4140205))

(assert (= (and b!4140205 (not res!1693713)) b!4140206))

(assert (=> d!1225749 m!4736479))

(declare-fun m!4736677 () Bool)

(assert (=> d!1225749 m!4736677))

(declare-fun m!4736679 () Bool)

(assert (=> d!1225749 m!4736679))

(declare-fun m!4736681 () Bool)

(assert (=> b!4140206 m!4736681))

(assert (=> b!4140003 d!1225749))

(declare-fun d!1225757 () Bool)

(assert (=> d!1225757 (= (tail!6541 rules!3756) (t!342301 rules!3756))))

(assert (=> b!4140003 d!1225757))

(declare-fun d!1225761 () Bool)

(assert (=> d!1225761 (contains!9052 (tail!6541 rules!3756) r!4008)))

(declare-fun lt!1476456 () Unit!64199)

(declare-fun choose!25322 (List!45022 Rule!14544 Rule!14544) Unit!64199)

(assert (=> d!1225761 (= lt!1476456 (choose!25322 rules!3756 rBis!149 r!4008))))

(declare-fun e!2568894 () Bool)

(assert (=> d!1225761 e!2568894))

(declare-fun res!1693724 () Bool)

(assert (=> d!1225761 (=> (not res!1693724) (not e!2568894))))

(assert (=> d!1225761 (= res!1693724 (contains!9052 rules!3756 rBis!149))))

(assert (=> d!1225761 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!76 rules!3756 rBis!149 r!4008) lt!1476456)))

(declare-fun b!4140220 () Bool)

(assert (=> b!4140220 (= e!2568894 (contains!9052 rules!3756 r!4008))))

(assert (= (and d!1225761 res!1693724) b!4140220))

(assert (=> d!1225761 m!4736479))

(assert (=> d!1225761 m!4736479))

(assert (=> d!1225761 m!4736481))

(declare-fun m!4736687 () Bool)

(assert (=> d!1225761 m!4736687))

(assert (=> d!1225761 m!4736467))

(assert (=> b!4140220 m!4736475))

(assert (=> b!4140003 d!1225761))

(declare-fun d!1225765 () Bool)

(assert (=> d!1225765 (= (isEmpty!26771 lt!1476398) (not ((_ is Some!9677) lt!1476398)))))

(assert (=> b!4140003 d!1225765))

(declare-fun b!4140288 () Bool)

(declare-fun e!2568937 () Option!9678)

(assert (=> b!4140288 (= e!2568937 None!9677)))

(declare-fun b!4140289 () Bool)

(declare-fun res!1693770 () Bool)

(declare-fun e!2568938 () Bool)

(assert (=> b!4140289 (=> (not res!1693770) (not e!2568938))))

(declare-fun lt!1476487 () Option!9678)

(assert (=> b!4140289 (= res!1693770 (< (size!33256 (_2!24775 (get!14653 lt!1476487))) (size!33256 input!3238)))))

(declare-fun b!4140290 () Bool)

(declare-fun res!1693773 () Bool)

(assert (=> b!4140290 (=> (not res!1693773) (not e!2568938))))

(assert (=> b!4140290 (= res!1693773 (= (value!230656 (_1!24775 (get!14653 lt!1476487))) (apply!10445 (transformation!7372 (rule!10480 (_1!24775 (get!14653 lt!1476487)))) (seqFromList!5489 (originalCharacters!7868 (_1!24775 (get!14653 lt!1476487)))))))))

(declare-fun d!1225767 () Bool)

(declare-fun e!2568936 () Bool)

(assert (=> d!1225767 e!2568936))

(declare-fun res!1693771 () Bool)

(assert (=> d!1225767 (=> res!1693771 e!2568936)))

(assert (=> d!1225767 (= res!1693771 (isEmpty!26771 lt!1476487))))

(assert (=> d!1225767 (= lt!1476487 e!2568937)))

(declare-fun c!709802 () Bool)

(declare-datatypes ((tuple2!43286 0))(
  ( (tuple2!43287 (_1!24777 List!45021) (_2!24777 List!45021)) )
))
(declare-fun lt!1476489 () tuple2!43286)

(assert (=> d!1225767 (= c!709802 (isEmpty!26770 (_1!24777 lt!1476489)))))

(declare-fun findLongestMatch!1438 (Regex!12277 List!45021) tuple2!43286)

(assert (=> d!1225767 (= lt!1476489 (findLongestMatch!1438 (regex!7372 rBis!149) input!3238))))

(assert (=> d!1225767 (ruleValid!3178 thiss!25645 rBis!149)))

(assert (=> d!1225767 (= (maxPrefixOneRule!3090 thiss!25645 rBis!149 input!3238) lt!1476487)))

(declare-fun b!4140291 () Bool)

(declare-fun res!1693776 () Bool)

(assert (=> b!4140291 (=> (not res!1693776) (not e!2568938))))

(assert (=> b!4140291 (= res!1693776 (= (++!11612 (list!16443 (charsOf!4971 (_1!24775 (get!14653 lt!1476487)))) (_2!24775 (get!14653 lt!1476487))) input!3238))))

(declare-fun b!4140292 () Bool)

(declare-fun res!1693775 () Bool)

(assert (=> b!4140292 (=> (not res!1693775) (not e!2568938))))

(assert (=> b!4140292 (= res!1693775 (= (rule!10480 (_1!24775 (get!14653 lt!1476487))) rBis!149))))

(declare-fun b!4140293 () Bool)

(assert (=> b!4140293 (= e!2568937 (Some!9677 (tuple2!43283 (Token!13675 (apply!10445 (transformation!7372 rBis!149) (seqFromList!5489 (_1!24777 lt!1476489))) rBis!149 (size!33255 (seqFromList!5489 (_1!24777 lt!1476489))) (_1!24777 lt!1476489)) (_2!24777 lt!1476489))))))

(declare-fun lt!1476488 () Unit!64199)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1498 (Regex!12277 List!45021) Unit!64199)

(assert (=> b!4140293 (= lt!1476488 (longestMatchIsAcceptedByMatchOrIsEmpty!1498 (regex!7372 rBis!149) input!3238))))

(declare-fun res!1693772 () Bool)

(declare-fun findLongestMatchInner!1525 (Regex!12277 List!45021 Int List!45021 List!45021 Int) tuple2!43286)

(assert (=> b!4140293 (= res!1693772 (isEmpty!26770 (_1!24777 (findLongestMatchInner!1525 (regex!7372 rBis!149) Nil!44897 (size!33256 Nil!44897) input!3238 input!3238 (size!33256 input!3238)))))))

(declare-fun e!2568935 () Bool)

(assert (=> b!4140293 (=> res!1693772 e!2568935)))

(assert (=> b!4140293 e!2568935))

(declare-fun lt!1476490 () Unit!64199)

(assert (=> b!4140293 (= lt!1476490 lt!1476488)))

(declare-fun lt!1476486 () Unit!64199)

(assert (=> b!4140293 (= lt!1476486 (lemmaSemiInverse!2230 (transformation!7372 rBis!149) (seqFromList!5489 (_1!24777 lt!1476489))))))

(declare-fun b!4140294 () Bool)

(assert (=> b!4140294 (= e!2568936 e!2568938)))

(declare-fun res!1693774 () Bool)

(assert (=> b!4140294 (=> (not res!1693774) (not e!2568938))))

(assert (=> b!4140294 (= res!1693774 (matchR!6106 (regex!7372 rBis!149) (list!16443 (charsOf!4971 (_1!24775 (get!14653 lt!1476487))))))))

(declare-fun b!4140295 () Bool)

(assert (=> b!4140295 (= e!2568935 (matchR!6106 (regex!7372 rBis!149) (_1!24777 (findLongestMatchInner!1525 (regex!7372 rBis!149) Nil!44897 (size!33256 Nil!44897) input!3238 input!3238 (size!33256 input!3238)))))))

(declare-fun b!4140296 () Bool)

(assert (=> b!4140296 (= e!2568938 (= (size!33254 (_1!24775 (get!14653 lt!1476487))) (size!33256 (originalCharacters!7868 (_1!24775 (get!14653 lt!1476487))))))))

(assert (= (and d!1225767 c!709802) b!4140288))

(assert (= (and d!1225767 (not c!709802)) b!4140293))

(assert (= (and b!4140293 (not res!1693772)) b!4140295))

(assert (= (and d!1225767 (not res!1693771)) b!4140294))

(assert (= (and b!4140294 res!1693774) b!4140291))

(assert (= (and b!4140291 res!1693776) b!4140289))

(assert (= (and b!4140289 res!1693770) b!4140292))

(assert (= (and b!4140292 res!1693775) b!4140290))

(assert (= (and b!4140290 res!1693773) b!4140296))

(declare-fun m!4736755 () Bool)

(assert (=> b!4140293 m!4736755))

(declare-fun m!4736757 () Bool)

(assert (=> b!4140293 m!4736757))

(declare-fun m!4736759 () Bool)

(assert (=> b!4140293 m!4736759))

(declare-fun m!4736761 () Bool)

(assert (=> b!4140293 m!4736761))

(declare-fun m!4736763 () Bool)

(assert (=> b!4140293 m!4736763))

(assert (=> b!4140293 m!4736755))

(assert (=> b!4140293 m!4736761))

(declare-fun m!4736765 () Bool)

(assert (=> b!4140293 m!4736765))

(declare-fun m!4736767 () Bool)

(assert (=> b!4140293 m!4736767))

(assert (=> b!4140293 m!4736757))

(declare-fun m!4736769 () Bool)

(assert (=> b!4140293 m!4736769))

(assert (=> b!4140293 m!4736761))

(assert (=> b!4140293 m!4736761))

(declare-fun m!4736771 () Bool)

(assert (=> b!4140293 m!4736771))

(declare-fun m!4736773 () Bool)

(assert (=> b!4140291 m!4736773))

(declare-fun m!4736775 () Bool)

(assert (=> b!4140291 m!4736775))

(assert (=> b!4140291 m!4736775))

(declare-fun m!4736777 () Bool)

(assert (=> b!4140291 m!4736777))

(assert (=> b!4140291 m!4736777))

(declare-fun m!4736779 () Bool)

(assert (=> b!4140291 m!4736779))

(assert (=> b!4140290 m!4736773))

(declare-fun m!4736781 () Bool)

(assert (=> b!4140290 m!4736781))

(assert (=> b!4140290 m!4736781))

(declare-fun m!4736783 () Bool)

(assert (=> b!4140290 m!4736783))

(declare-fun m!4736785 () Bool)

(assert (=> d!1225767 m!4736785))

(declare-fun m!4736787 () Bool)

(assert (=> d!1225767 m!4736787))

(declare-fun m!4736789 () Bool)

(assert (=> d!1225767 m!4736789))

(assert (=> d!1225767 m!4736517))

(assert (=> b!4140292 m!4736773))

(assert (=> b!4140296 m!4736773))

(declare-fun m!4736791 () Bool)

(assert (=> b!4140296 m!4736791))

(assert (=> b!4140295 m!4736755))

(assert (=> b!4140295 m!4736757))

(assert (=> b!4140295 m!4736755))

(assert (=> b!4140295 m!4736757))

(assert (=> b!4140295 m!4736759))

(declare-fun m!4736793 () Bool)

(assert (=> b!4140295 m!4736793))

(assert (=> b!4140294 m!4736773))

(assert (=> b!4140294 m!4736775))

(assert (=> b!4140294 m!4736775))

(assert (=> b!4140294 m!4736777))

(assert (=> b!4140294 m!4736777))

(declare-fun m!4736795 () Bool)

(assert (=> b!4140294 m!4736795))

(assert (=> b!4140289 m!4736773))

(declare-fun m!4736797 () Bool)

(assert (=> b!4140289 m!4736797))

(assert (=> b!4140289 m!4736757))

(assert (=> b!4140003 d!1225767))

(declare-fun d!1225803 () Bool)

(assert (=> d!1225803 (not (= rBis!149 r!4008))))

(declare-fun lt!1476493 () Unit!64199)

(declare-fun choose!25323 (LexerInterface!6961 List!45022 Rule!14544 Rule!14544) Unit!64199)

(assert (=> d!1225803 (= lt!1476493 (choose!25323 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1225803 (contains!9052 rules!3756 rBis!149)))

(assert (=> d!1225803 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!70 thiss!25645 rules!3756 rBis!149 r!4008) lt!1476493)))

(declare-fun bs!595222 () Bool)

(assert (= bs!595222 d!1225803))

(declare-fun m!4736799 () Bool)

(assert (=> bs!595222 m!4736799))

(assert (=> bs!595222 m!4736467))

(assert (=> b!4140003 d!1225803))

(declare-fun d!1225805 () Bool)

(assert (=> d!1225805 (ruleValid!3178 thiss!25645 r!4008)))

(declare-fun lt!1476496 () Unit!64199)

(declare-fun choose!25324 (LexerInterface!6961 Rule!14544 List!45022) Unit!64199)

(assert (=> d!1225805 (= lt!1476496 (choose!25324 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1225805 (contains!9052 rules!3756 r!4008)))

(assert (=> d!1225805 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2218 thiss!25645 r!4008 rules!3756) lt!1476496)))

(declare-fun bs!595223 () Bool)

(assert (= bs!595223 d!1225805))

(assert (=> bs!595223 m!4736521))

(declare-fun m!4736801 () Bool)

(assert (=> bs!595223 m!4736801))

(assert (=> bs!595223 m!4736475))

(assert (=> b!4140001 d!1225805))

(declare-fun d!1225807 () Bool)

(declare-fun res!1693777 () Bool)

(declare-fun e!2568939 () Bool)

(assert (=> d!1225807 (=> (not res!1693777) (not e!2568939))))

(assert (=> d!1225807 (= res!1693777 (validRegex!5529 (regex!7372 rBis!149)))))

(assert (=> d!1225807 (= (ruleValid!3178 thiss!25645 rBis!149) e!2568939)))

(declare-fun b!4140297 () Bool)

(declare-fun res!1693778 () Bool)

(assert (=> b!4140297 (=> (not res!1693778) (not e!2568939))))

(assert (=> b!4140297 (= res!1693778 (not (nullable!4321 (regex!7372 rBis!149))))))

(declare-fun b!4140298 () Bool)

(assert (=> b!4140298 (= e!2568939 (not (= (tag!8232 rBis!149) (String!51761 ""))))))

(assert (= (and d!1225807 res!1693777) b!4140297))

(assert (= (and b!4140297 res!1693778) b!4140298))

(declare-fun m!4736803 () Bool)

(assert (=> d!1225807 m!4736803))

(declare-fun m!4736805 () Bool)

(assert (=> b!4140297 m!4736805))

(assert (=> b!4140001 d!1225807))

(declare-fun d!1225809 () Bool)

(assert (=> d!1225809 (ruleValid!3178 thiss!25645 rBis!149)))

(declare-fun lt!1476497 () Unit!64199)

(assert (=> d!1225809 (= lt!1476497 (choose!25324 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1225809 (contains!9052 rules!3756 rBis!149)))

(assert (=> d!1225809 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2218 thiss!25645 rBis!149 rules!3756) lt!1476497)))

(declare-fun bs!595224 () Bool)

(assert (= bs!595224 d!1225809))

(assert (=> bs!595224 m!4736517))

(declare-fun m!4736807 () Bool)

(assert (=> bs!595224 m!4736807))

(assert (=> bs!595224 m!4736467))

(assert (=> b!4140001 d!1225809))

(declare-fun d!1225811 () Bool)

(declare-fun lt!1476498 () Bool)

(assert (=> d!1225811 (= lt!1476498 (select (content!6937 rules!3756) rBis!149))))

(declare-fun e!2568941 () Bool)

(assert (=> d!1225811 (= lt!1476498 e!2568941)))

(declare-fun res!1693780 () Bool)

(assert (=> d!1225811 (=> (not res!1693780) (not e!2568941))))

(assert (=> d!1225811 (= res!1693780 ((_ is Cons!44898) rules!3756))))

(assert (=> d!1225811 (= (contains!9052 rules!3756 rBis!149) lt!1476498)))

(declare-fun b!4140299 () Bool)

(declare-fun e!2568940 () Bool)

(assert (=> b!4140299 (= e!2568941 e!2568940)))

(declare-fun res!1693779 () Bool)

(assert (=> b!4140299 (=> res!1693779 e!2568940)))

(assert (=> b!4140299 (= res!1693779 (= (h!50318 rules!3756) rBis!149))))

(declare-fun b!4140300 () Bool)

(assert (=> b!4140300 (= e!2568940 (contains!9052 (t!342301 rules!3756) rBis!149))))

(assert (= (and d!1225811 res!1693780) b!4140299))

(assert (= (and b!4140299 (not res!1693779)) b!4140300))

(declare-fun m!4736809 () Bool)

(assert (=> d!1225811 m!4736809))

(declare-fun m!4736811 () Bool)

(assert (=> d!1225811 m!4736811))

(declare-fun m!4736813 () Bool)

(assert (=> b!4140300 m!4736813))

(assert (=> b!4140012 d!1225811))

(declare-fun d!1225813 () Bool)

(declare-fun dynLambda!19303 (Int BalanceConc!26760) TokenValue!7602)

(assert (=> d!1225813 (= (apply!10445 (transformation!7372 r!4008) lt!1476384) (dynLambda!19303 (toValue!10036 (transformation!7372 r!4008)) lt!1476384))))

(declare-fun b_lambda!121685 () Bool)

(assert (=> (not b_lambda!121685) (not d!1225813)))

(declare-fun tb!248505 () Bool)

(declare-fun t!342309 () Bool)

(assert (=> (and b!4139999 (= (toValue!10036 (transformation!7372 (h!50318 rules!3756))) (toValue!10036 (transformation!7372 r!4008))) t!342309) tb!248505))

(declare-fun result!302164 () Bool)

(declare-fun inv!21 (TokenValue!7602) Bool)

(assert (=> tb!248505 (= result!302164 (inv!21 (dynLambda!19303 (toValue!10036 (transformation!7372 r!4008)) lt!1476384)))))

(declare-fun m!4736815 () Bool)

(assert (=> tb!248505 m!4736815))

(assert (=> d!1225813 t!342309))

(declare-fun b_and!321467 () Bool)

(assert (= b_and!321449 (and (=> t!342309 result!302164) b_and!321467)))

(declare-fun t!342311 () Bool)

(declare-fun tb!248507 () Bool)

(assert (=> (and b!4140017 (= (toValue!10036 (transformation!7372 r!4008)) (toValue!10036 (transformation!7372 r!4008))) t!342311) tb!248507))

(declare-fun result!302168 () Bool)

(assert (= result!302168 result!302164))

(assert (=> d!1225813 t!342311))

(declare-fun b_and!321469 () Bool)

(assert (= b_and!321453 (and (=> t!342311 result!302168) b_and!321469)))

(declare-fun t!342313 () Bool)

(declare-fun tb!248509 () Bool)

(assert (=> (and b!4140018 (= (toValue!10036 (transformation!7372 rBis!149)) (toValue!10036 (transformation!7372 r!4008))) t!342313) tb!248509))

(declare-fun result!302170 () Bool)

(assert (= result!302170 result!302164))

(assert (=> d!1225813 t!342313))

(declare-fun b_and!321471 () Bool)

(assert (= b_and!321457 (and (=> t!342313 result!302170) b_and!321471)))

(declare-fun m!4736817 () Bool)

(assert (=> d!1225813 m!4736817))

(assert (=> b!4140005 d!1225813))

(declare-fun d!1225815 () Bool)

(declare-fun lt!1476501 () List!45021)

(assert (=> d!1225815 (= (++!11612 p!2912 lt!1476501) input!3238)))

(declare-fun e!2568947 () List!45021)

(assert (=> d!1225815 (= lt!1476501 e!2568947)))

(declare-fun c!709805 () Bool)

(assert (=> d!1225815 (= c!709805 ((_ is Cons!44897) p!2912))))

(assert (=> d!1225815 (>= (size!33256 input!3238) (size!33256 p!2912))))

(assert (=> d!1225815 (= (getSuffix!2634 input!3238 p!2912) lt!1476501)))

(declare-fun b!4140307 () Bool)

(assert (=> b!4140307 (= e!2568947 (getSuffix!2634 (tail!6543 input!3238) (t!342300 p!2912)))))

(declare-fun b!4140308 () Bool)

(assert (=> b!4140308 (= e!2568947 input!3238)))

(assert (= (and d!1225815 c!709805) b!4140307))

(assert (= (and d!1225815 (not c!709805)) b!4140308))

(declare-fun m!4736819 () Bool)

(assert (=> d!1225815 m!4736819))

(assert (=> d!1225815 m!4736757))

(assert (=> d!1225815 m!4736503))

(declare-fun m!4736821 () Bool)

(assert (=> b!4140307 m!4736821))

(assert (=> b!4140307 m!4736821))

(declare-fun m!4736823 () Bool)

(assert (=> b!4140307 m!4736823))

(assert (=> b!4140005 d!1225815))

(declare-fun b!4140327 () Bool)

(declare-fun res!1693801 () Bool)

(declare-fun e!2568955 () Bool)

(assert (=> b!4140327 (=> (not res!1693801) (not e!2568955))))

(declare-fun lt!1476514 () Option!9678)

(assert (=> b!4140327 (= res!1693801 (= (value!230656 (_1!24775 (get!14653 lt!1476514))) (apply!10445 (transformation!7372 (rule!10480 (_1!24775 (get!14653 lt!1476514)))) (seqFromList!5489 (originalCharacters!7868 (_1!24775 (get!14653 lt!1476514)))))))))

(declare-fun b!4140328 () Bool)

(declare-fun e!2568954 () Bool)

(assert (=> b!4140328 (= e!2568954 e!2568955)))

(declare-fun res!1693799 () Bool)

(assert (=> b!4140328 (=> (not res!1693799) (not e!2568955))))

(declare-fun isDefined!7276 (Option!9678) Bool)

(assert (=> b!4140328 (= res!1693799 (isDefined!7276 lt!1476514))))

(declare-fun d!1225817 () Bool)

(assert (=> d!1225817 e!2568954))

(declare-fun res!1693798 () Bool)

(assert (=> d!1225817 (=> res!1693798 e!2568954)))

(assert (=> d!1225817 (= res!1693798 (isEmpty!26771 lt!1476514))))

(declare-fun e!2568956 () Option!9678)

(assert (=> d!1225817 (= lt!1476514 e!2568956)))

(declare-fun c!709808 () Bool)

(assert (=> d!1225817 (= c!709808 (and ((_ is Cons!44898) rules!3756) ((_ is Nil!44898) (t!342301 rules!3756))))))

(declare-fun lt!1476516 () Unit!64199)

(declare-fun lt!1476512 () Unit!64199)

(assert (=> d!1225817 (= lt!1476516 lt!1476512)))

(assert (=> d!1225817 (isPrefix!4307 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2784 (List!45021 List!45021) Unit!64199)

(assert (=> d!1225817 (= lt!1476512 (lemmaIsPrefixRefl!2784 input!3238 input!3238))))

(declare-fun rulesValidInductive!2736 (LexerInterface!6961 List!45022) Bool)

(assert (=> d!1225817 (rulesValidInductive!2736 thiss!25645 rules!3756)))

(assert (=> d!1225817 (= (maxPrefix!4151 thiss!25645 rules!3756 input!3238) lt!1476514)))

(declare-fun b!4140329 () Bool)

(declare-fun call!290497 () Option!9678)

(assert (=> b!4140329 (= e!2568956 call!290497)))

(declare-fun b!4140330 () Bool)

(declare-fun res!1693796 () Bool)

(assert (=> b!4140330 (=> (not res!1693796) (not e!2568955))))

(assert (=> b!4140330 (= res!1693796 (= (list!16443 (charsOf!4971 (_1!24775 (get!14653 lt!1476514)))) (originalCharacters!7868 (_1!24775 (get!14653 lt!1476514)))))))

(declare-fun b!4140331 () Bool)

(declare-fun res!1693797 () Bool)

(assert (=> b!4140331 (=> (not res!1693797) (not e!2568955))))

(assert (=> b!4140331 (= res!1693797 (matchR!6106 (regex!7372 (rule!10480 (_1!24775 (get!14653 lt!1476514)))) (list!16443 (charsOf!4971 (_1!24775 (get!14653 lt!1476514))))))))

(declare-fun b!4140332 () Bool)

(declare-fun lt!1476513 () Option!9678)

(declare-fun lt!1476515 () Option!9678)

(assert (=> b!4140332 (= e!2568956 (ite (and ((_ is None!9677) lt!1476513) ((_ is None!9677) lt!1476515)) None!9677 (ite ((_ is None!9677) lt!1476515) lt!1476513 (ite ((_ is None!9677) lt!1476513) lt!1476515 (ite (>= (size!33254 (_1!24775 (v!40313 lt!1476513))) (size!33254 (_1!24775 (v!40313 lt!1476515)))) lt!1476513 lt!1476515)))))))

(assert (=> b!4140332 (= lt!1476513 call!290497)))

(assert (=> b!4140332 (= lt!1476515 (maxPrefix!4151 thiss!25645 (t!342301 rules!3756) input!3238))))

(declare-fun b!4140333 () Bool)

(assert (=> b!4140333 (= e!2568955 (contains!9052 rules!3756 (rule!10480 (_1!24775 (get!14653 lt!1476514)))))))

(declare-fun b!4140334 () Bool)

(declare-fun res!1693800 () Bool)

(assert (=> b!4140334 (=> (not res!1693800) (not e!2568955))))

(assert (=> b!4140334 (= res!1693800 (< (size!33256 (_2!24775 (get!14653 lt!1476514))) (size!33256 input!3238)))))

(declare-fun b!4140335 () Bool)

(declare-fun res!1693795 () Bool)

(assert (=> b!4140335 (=> (not res!1693795) (not e!2568955))))

(assert (=> b!4140335 (= res!1693795 (= (++!11612 (list!16443 (charsOf!4971 (_1!24775 (get!14653 lt!1476514)))) (_2!24775 (get!14653 lt!1476514))) input!3238))))

(declare-fun bm!290492 () Bool)

(assert (=> bm!290492 (= call!290497 (maxPrefixOneRule!3090 thiss!25645 (h!50318 rules!3756) input!3238))))

(assert (= (and d!1225817 c!709808) b!4140329))

(assert (= (and d!1225817 (not c!709808)) b!4140332))

(assert (= (or b!4140329 b!4140332) bm!290492))

(assert (= (and d!1225817 (not res!1693798)) b!4140328))

(assert (= (and b!4140328 res!1693799) b!4140330))

(assert (= (and b!4140330 res!1693796) b!4140334))

(assert (= (and b!4140334 res!1693800) b!4140335))

(assert (= (and b!4140335 res!1693795) b!4140327))

(assert (= (and b!4140327 res!1693801) b!4140331))

(assert (= (and b!4140331 res!1693797) b!4140333))

(declare-fun m!4736825 () Bool)

(assert (=> b!4140330 m!4736825))

(declare-fun m!4736827 () Bool)

(assert (=> b!4140330 m!4736827))

(assert (=> b!4140330 m!4736827))

(declare-fun m!4736829 () Bool)

(assert (=> b!4140330 m!4736829))

(assert (=> b!4140327 m!4736825))

(declare-fun m!4736831 () Bool)

(assert (=> b!4140327 m!4736831))

(assert (=> b!4140327 m!4736831))

(declare-fun m!4736833 () Bool)

(assert (=> b!4140327 m!4736833))

(declare-fun m!4736835 () Bool)

(assert (=> d!1225817 m!4736835))

(declare-fun m!4736837 () Bool)

(assert (=> d!1225817 m!4736837))

(declare-fun m!4736839 () Bool)

(assert (=> d!1225817 m!4736839))

(declare-fun m!4736841 () Bool)

(assert (=> d!1225817 m!4736841))

(assert (=> b!4140333 m!4736825))

(declare-fun m!4736843 () Bool)

(assert (=> b!4140333 m!4736843))

(assert (=> b!4140335 m!4736825))

(assert (=> b!4140335 m!4736827))

(assert (=> b!4140335 m!4736827))

(assert (=> b!4140335 m!4736829))

(assert (=> b!4140335 m!4736829))

(declare-fun m!4736845 () Bool)

(assert (=> b!4140335 m!4736845))

(declare-fun m!4736847 () Bool)

(assert (=> b!4140332 m!4736847))

(assert (=> b!4140334 m!4736825))

(declare-fun m!4736849 () Bool)

(assert (=> b!4140334 m!4736849))

(assert (=> b!4140334 m!4736757))

(declare-fun m!4736851 () Bool)

(assert (=> b!4140328 m!4736851))

(assert (=> b!4140331 m!4736825))

(assert (=> b!4140331 m!4736827))

(assert (=> b!4140331 m!4736827))

(assert (=> b!4140331 m!4736829))

(assert (=> b!4140331 m!4736829))

(declare-fun m!4736853 () Bool)

(assert (=> b!4140331 m!4736853))

(declare-fun m!4736855 () Bool)

(assert (=> bm!290492 m!4736855))

(assert (=> b!4140005 d!1225817))

(declare-fun d!1225819 () Bool)

(declare-fun fromListB!2517 (List!45021) BalanceConc!26760)

(assert (=> d!1225819 (= (seqFromList!5489 p!2912) (fromListB!2517 p!2912))))

(declare-fun bs!595225 () Bool)

(assert (= bs!595225 d!1225819))

(declare-fun m!4736857 () Bool)

(assert (=> bs!595225 m!4736857))

(assert (=> b!4140005 d!1225819))

(declare-fun b!4140426 () Bool)

(declare-fun e!2569002 () Bool)

(assert (=> b!4140426 (= e!2569002 true)))

(declare-fun d!1225821 () Bool)

(assert (=> d!1225821 e!2569002))

(assert (= d!1225821 b!4140426))

(declare-fun order!23755 () Int)

(declare-fun order!23753 () Int)

(declare-fun lambda!128943 () Int)

(declare-fun dynLambda!19304 (Int Int) Int)

(declare-fun dynLambda!19305 (Int Int) Int)

(assert (=> b!4140426 (< (dynLambda!19304 order!23753 (toValue!10036 (transformation!7372 r!4008))) (dynLambda!19305 order!23755 lambda!128943))))

(declare-fun order!23757 () Int)

(declare-fun dynLambda!19306 (Int Int) Int)

(assert (=> b!4140426 (< (dynLambda!19306 order!23757 (toChars!9895 (transformation!7372 r!4008))) (dynLambda!19305 order!23755 lambda!128943))))

(declare-fun dynLambda!19307 (Int TokenValue!7602) BalanceConc!26760)

(assert (=> d!1225821 (= (list!16443 (dynLambda!19307 (toChars!9895 (transformation!7372 r!4008)) (dynLambda!19303 (toValue!10036 (transformation!7372 r!4008)) lt!1476384))) (list!16443 lt!1476384))))

(declare-fun lt!1476541 () Unit!64199)

(declare-fun ForallOf!968 (Int BalanceConc!26760) Unit!64199)

(assert (=> d!1225821 (= lt!1476541 (ForallOf!968 lambda!128943 lt!1476384))))

(assert (=> d!1225821 (= (lemmaSemiInverse!2230 (transformation!7372 r!4008) lt!1476384) lt!1476541)))

(declare-fun b_lambda!121699 () Bool)

(assert (=> (not b_lambda!121699) (not d!1225821)))

(declare-fun t!342333 () Bool)

(declare-fun tb!248529 () Bool)

(assert (=> (and b!4139999 (= (toChars!9895 (transformation!7372 (h!50318 rules!3756))) (toChars!9895 (transformation!7372 r!4008))) t!342333) tb!248529))

(declare-fun e!2569005 () Bool)

(declare-fun b!4140431 () Bool)

(declare-fun tp!1262060 () Bool)

(declare-fun inv!59506 (Conc!13583) Bool)

(assert (=> b!4140431 (= e!2569005 (and (inv!59506 (c!709754 (dynLambda!19307 (toChars!9895 (transformation!7372 r!4008)) (dynLambda!19303 (toValue!10036 (transformation!7372 r!4008)) lt!1476384)))) tp!1262060))))

(declare-fun result!302198 () Bool)

(declare-fun inv!59507 (BalanceConc!26760) Bool)

(assert (=> tb!248529 (= result!302198 (and (inv!59507 (dynLambda!19307 (toChars!9895 (transformation!7372 r!4008)) (dynLambda!19303 (toValue!10036 (transformation!7372 r!4008)) lt!1476384))) e!2569005))))

(assert (= tb!248529 b!4140431))

(declare-fun m!4736919 () Bool)

(assert (=> b!4140431 m!4736919))

(declare-fun m!4736921 () Bool)

(assert (=> tb!248529 m!4736921))

(assert (=> d!1225821 t!342333))

(declare-fun b_and!321495 () Bool)

(assert (= b_and!321451 (and (=> t!342333 result!302198) b_and!321495)))

(declare-fun t!342335 () Bool)

(declare-fun tb!248531 () Bool)

(assert (=> (and b!4140017 (= (toChars!9895 (transformation!7372 r!4008)) (toChars!9895 (transformation!7372 r!4008))) t!342335) tb!248531))

(declare-fun result!302202 () Bool)

(assert (= result!302202 result!302198))

(assert (=> d!1225821 t!342335))

(declare-fun b_and!321497 () Bool)

(assert (= b_and!321455 (and (=> t!342335 result!302202) b_and!321497)))

(declare-fun tb!248533 () Bool)

(declare-fun t!342337 () Bool)

(assert (=> (and b!4140018 (= (toChars!9895 (transformation!7372 rBis!149)) (toChars!9895 (transformation!7372 r!4008))) t!342337) tb!248533))

(declare-fun result!302204 () Bool)

(assert (= result!302204 result!302198))

(assert (=> d!1225821 t!342337))

(declare-fun b_and!321499 () Bool)

(assert (= b_and!321459 (and (=> t!342337 result!302204) b_and!321499)))

(declare-fun b_lambda!121701 () Bool)

(assert (=> (not b_lambda!121701) (not d!1225821)))

(assert (=> d!1225821 t!342309))

(declare-fun b_and!321501 () Bool)

(assert (= b_and!321467 (and (=> t!342309 result!302164) b_and!321501)))

(assert (=> d!1225821 t!342311))

(declare-fun b_and!321503 () Bool)

(assert (= b_and!321469 (and (=> t!342311 result!302168) b_and!321503)))

(assert (=> d!1225821 t!342313))

(declare-fun b_and!321505 () Bool)

(assert (= b_and!321471 (and (=> t!342313 result!302170) b_and!321505)))

(assert (=> d!1225821 m!4736817))

(declare-fun m!4736923 () Bool)

(assert (=> d!1225821 m!4736923))

(declare-fun m!4736925 () Bool)

(assert (=> d!1225821 m!4736925))

(assert (=> d!1225821 m!4736817))

(assert (=> d!1225821 m!4736923))

(declare-fun m!4736927 () Bool)

(assert (=> d!1225821 m!4736927))

(declare-fun m!4736929 () Bool)

(assert (=> d!1225821 m!4736929))

(assert (=> b!4140005 d!1225821))

(declare-fun d!1225833 () Bool)

(declare-fun lt!1476544 () Int)

(assert (=> d!1225833 (>= lt!1476544 0)))

(declare-fun e!2569008 () Int)

(assert (=> d!1225833 (= lt!1476544 e!2569008)))

(declare-fun c!709821 () Bool)

(assert (=> d!1225833 (= c!709821 ((_ is Nil!44897) p!2912))))

(assert (=> d!1225833 (= (size!33256 p!2912) lt!1476544)))

(declare-fun b!4140436 () Bool)

(assert (=> b!4140436 (= e!2569008 0)))

(declare-fun b!4140437 () Bool)

(assert (=> b!4140437 (= e!2569008 (+ 1 (size!33256 (t!342300 p!2912))))))

(assert (= (and d!1225833 c!709821) b!4140436))

(assert (= (and d!1225833 (not c!709821)) b!4140437))

(declare-fun m!4736931 () Bool)

(assert (=> b!4140437 m!4736931))

(assert (=> b!4140005 d!1225833))

(declare-fun b!4140438 () Bool)

(declare-fun e!2569010 () Bool)

(declare-fun e!2569009 () Bool)

(assert (=> b!4140438 (= e!2569010 e!2569009)))

(declare-fun res!1693823 () Bool)

(assert (=> b!4140438 (=> (not res!1693823) (not e!2569009))))

(assert (=> b!4140438 (= res!1693823 (not ((_ is Nil!44897) input!3238)))))

(declare-fun b!4140439 () Bool)

(declare-fun res!1693826 () Bool)

(assert (=> b!4140439 (=> (not res!1693826) (not e!2569009))))

(assert (=> b!4140439 (= res!1693826 (= (head!8734 p!2912) (head!8734 input!3238)))))

(declare-fun d!1225835 () Bool)

(declare-fun e!2569011 () Bool)

(assert (=> d!1225835 e!2569011))

(declare-fun res!1693824 () Bool)

(assert (=> d!1225835 (=> res!1693824 e!2569011)))

(declare-fun lt!1476545 () Bool)

(assert (=> d!1225835 (= res!1693824 (not lt!1476545))))

(assert (=> d!1225835 (= lt!1476545 e!2569010)))

(declare-fun res!1693825 () Bool)

(assert (=> d!1225835 (=> res!1693825 e!2569010)))

(assert (=> d!1225835 (= res!1693825 ((_ is Nil!44897) p!2912))))

(assert (=> d!1225835 (= (isPrefix!4307 p!2912 input!3238) lt!1476545)))

(declare-fun b!4140441 () Bool)

(assert (=> b!4140441 (= e!2569011 (>= (size!33256 input!3238) (size!33256 p!2912)))))

(declare-fun b!4140440 () Bool)

(assert (=> b!4140440 (= e!2569009 (isPrefix!4307 (tail!6543 p!2912) (tail!6543 input!3238)))))

(assert (= (and d!1225835 (not res!1693825)) b!4140438))

(assert (= (and b!4140438 res!1693823) b!4140439))

(assert (= (and b!4140439 res!1693826) b!4140440))

(assert (= (and d!1225835 (not res!1693824)) b!4140441))

(assert (=> b!4140439 m!4736655))

(declare-fun m!4736933 () Bool)

(assert (=> b!4140439 m!4736933))

(assert (=> b!4140441 m!4736757))

(assert (=> b!4140441 m!4736503))

(assert (=> b!4140440 m!4736659))

(assert (=> b!4140440 m!4736821))

(assert (=> b!4140440 m!4736659))

(assert (=> b!4140440 m!4736821))

(declare-fun m!4736935 () Bool)

(assert (=> b!4140440 m!4736935))

(assert (=> b!4140016 d!1225835))

(declare-fun d!1225837 () Bool)

(declare-fun lt!1476546 () Bool)

(assert (=> d!1225837 (= lt!1476546 (select (content!6937 rules!3756) r!4008))))

(declare-fun e!2569013 () Bool)

(assert (=> d!1225837 (= lt!1476546 e!2569013)))

(declare-fun res!1693828 () Bool)

(assert (=> d!1225837 (=> (not res!1693828) (not e!2569013))))

(assert (=> d!1225837 (= res!1693828 ((_ is Cons!44898) rules!3756))))

(assert (=> d!1225837 (= (contains!9052 rules!3756 r!4008) lt!1476546)))

(declare-fun b!4140442 () Bool)

(declare-fun e!2569012 () Bool)

(assert (=> b!4140442 (= e!2569013 e!2569012)))

(declare-fun res!1693827 () Bool)

(assert (=> b!4140442 (=> res!1693827 e!2569012)))

(assert (=> b!4140442 (= res!1693827 (= (h!50318 rules!3756) r!4008))))

(declare-fun b!4140443 () Bool)

(assert (=> b!4140443 (= e!2569012 (contains!9052 (t!342301 rules!3756) r!4008))))

(assert (= (and d!1225837 res!1693828) b!4140442))

(assert (= (and b!4140442 (not res!1693827)) b!4140443))

(assert (=> d!1225837 m!4736809))

(declare-fun m!4736937 () Bool)

(assert (=> d!1225837 m!4736937))

(declare-fun m!4736939 () Bool)

(assert (=> b!4140443 m!4736939))

(assert (=> b!4140014 d!1225837))

(declare-fun d!1225839 () Bool)

(declare-fun lt!1476549 () Int)

(assert (=> d!1225839 (= lt!1476549 (size!33256 (list!16443 lt!1476391)))))

(declare-fun size!33258 (Conc!13583) Int)

(assert (=> d!1225839 (= lt!1476549 (size!33258 (c!709754 lt!1476391)))))

(assert (=> d!1225839 (= (size!33255 lt!1476391) lt!1476549)))

(declare-fun bs!595227 () Bool)

(assert (= bs!595227 d!1225839))

(assert (=> bs!595227 m!4736495))

(assert (=> bs!595227 m!4736495))

(declare-fun m!4736941 () Bool)

(assert (=> bs!595227 m!4736941))

(declare-fun m!4736943 () Bool)

(assert (=> bs!595227 m!4736943))

(assert (=> b!4140004 d!1225839))

(declare-fun d!1225841 () Bool)

(declare-fun lt!1476552 () BalanceConc!26760)

(assert (=> d!1225841 (= (list!16443 lt!1476552) (originalCharacters!7868 (_1!24775 lt!1476387)))))

(assert (=> d!1225841 (= lt!1476552 (dynLambda!19307 (toChars!9895 (transformation!7372 (rule!10480 (_1!24775 lt!1476387)))) (value!230656 (_1!24775 lt!1476387))))))

(assert (=> d!1225841 (= (charsOf!4971 (_1!24775 lt!1476387)) lt!1476552)))

(declare-fun b_lambda!121703 () Bool)

(assert (=> (not b_lambda!121703) (not d!1225841)))

(declare-fun tb!248535 () Bool)

(declare-fun t!342339 () Bool)

(assert (=> (and b!4139999 (= (toChars!9895 (transformation!7372 (h!50318 rules!3756))) (toChars!9895 (transformation!7372 (rule!10480 (_1!24775 lt!1476387))))) t!342339) tb!248535))

(declare-fun b!4140444 () Bool)

(declare-fun e!2569014 () Bool)

(declare-fun tp!1262061 () Bool)

(assert (=> b!4140444 (= e!2569014 (and (inv!59506 (c!709754 (dynLambda!19307 (toChars!9895 (transformation!7372 (rule!10480 (_1!24775 lt!1476387)))) (value!230656 (_1!24775 lt!1476387))))) tp!1262061))))

(declare-fun result!302206 () Bool)

(assert (=> tb!248535 (= result!302206 (and (inv!59507 (dynLambda!19307 (toChars!9895 (transformation!7372 (rule!10480 (_1!24775 lt!1476387)))) (value!230656 (_1!24775 lt!1476387)))) e!2569014))))

(assert (= tb!248535 b!4140444))

(declare-fun m!4736945 () Bool)

(assert (=> b!4140444 m!4736945))

(declare-fun m!4736947 () Bool)

(assert (=> tb!248535 m!4736947))

(assert (=> d!1225841 t!342339))

(declare-fun b_and!321507 () Bool)

(assert (= b_and!321495 (and (=> t!342339 result!302206) b_and!321507)))

(declare-fun tb!248537 () Bool)

(declare-fun t!342341 () Bool)

(assert (=> (and b!4140017 (= (toChars!9895 (transformation!7372 r!4008)) (toChars!9895 (transformation!7372 (rule!10480 (_1!24775 lt!1476387))))) t!342341) tb!248537))

(declare-fun result!302208 () Bool)

(assert (= result!302208 result!302206))

(assert (=> d!1225841 t!342341))

(declare-fun b_and!321509 () Bool)

(assert (= b_and!321497 (and (=> t!342341 result!302208) b_and!321509)))

(declare-fun t!342343 () Bool)

(declare-fun tb!248539 () Bool)

(assert (=> (and b!4140018 (= (toChars!9895 (transformation!7372 rBis!149)) (toChars!9895 (transformation!7372 (rule!10480 (_1!24775 lt!1476387))))) t!342343) tb!248539))

(declare-fun result!302210 () Bool)

(assert (= result!302210 result!302206))

(assert (=> d!1225841 t!342343))

(declare-fun b_and!321511 () Bool)

(assert (= b_and!321499 (and (=> t!342343 result!302210) b_and!321511)))

(declare-fun m!4736949 () Bool)

(assert (=> d!1225841 m!4736949))

(declare-fun m!4736951 () Bool)

(assert (=> d!1225841 m!4736951))

(assert (=> b!4140004 d!1225841))

(declare-fun d!1225843 () Bool)

(assert (=> d!1225843 (= (get!14653 lt!1476398) (v!40313 lt!1476398))))

(assert (=> b!4140004 d!1225843))

(declare-fun d!1225845 () Bool)

(assert (=> d!1225845 (= (inv!59501 (tag!8232 rBis!149)) (= (mod (str.len (value!230655 (tag!8232 rBis!149))) 2) 0))))

(assert (=> b!4140015 d!1225845))

(declare-fun d!1225847 () Bool)

(declare-fun res!1693829 () Bool)

(declare-fun e!2569015 () Bool)

(assert (=> d!1225847 (=> (not res!1693829) (not e!2569015))))

(assert (=> d!1225847 (= res!1693829 (semiInverseModEq!3184 (toChars!9895 (transformation!7372 rBis!149)) (toValue!10036 (transformation!7372 rBis!149))))))

(assert (=> d!1225847 (= (inv!59503 (transformation!7372 rBis!149)) e!2569015)))

(declare-fun b!4140445 () Bool)

(assert (=> b!4140445 (= e!2569015 (equivClasses!3083 (toChars!9895 (transformation!7372 rBis!149)) (toValue!10036 (transformation!7372 rBis!149))))))

(assert (= (and d!1225847 res!1693829) b!4140445))

(declare-fun m!4736953 () Bool)

(assert (=> d!1225847 m!4736953))

(declare-fun m!4736955 () Bool)

(assert (=> b!4140445 m!4736955))

(assert (=> b!4140015 d!1225847))

(declare-fun b!4140450 () Bool)

(declare-fun e!2569018 () Bool)

(declare-fun tp!1262064 () Bool)

(assert (=> b!4140450 (= e!2569018 (and tp_is_empty!21477 tp!1262064))))

(assert (=> b!4140002 (= tp!1262012 e!2569018)))

(assert (= (and b!4140002 ((_ is Cons!44897) (t!342300 p!2912))) b!4140450))

(declare-fun e!2569021 () Bool)

(assert (=> b!4140008 (= tp!1262001 e!2569021)))

(declare-fun b!4140464 () Bool)

(declare-fun tp!1262078 () Bool)

(declare-fun tp!1262079 () Bool)

(assert (=> b!4140464 (= e!2569021 (and tp!1262078 tp!1262079))))

(declare-fun b!4140461 () Bool)

(assert (=> b!4140461 (= e!2569021 tp_is_empty!21477)))

(declare-fun b!4140462 () Bool)

(declare-fun tp!1262076 () Bool)

(declare-fun tp!1262075 () Bool)

(assert (=> b!4140462 (= e!2569021 (and tp!1262076 tp!1262075))))

(declare-fun b!4140463 () Bool)

(declare-fun tp!1262077 () Bool)

(assert (=> b!4140463 (= e!2569021 tp!1262077)))

(assert (= (and b!4140008 ((_ is ElementMatch!12277) (regex!7372 (h!50318 rules!3756)))) b!4140461))

(assert (= (and b!4140008 ((_ is Concat!19880) (regex!7372 (h!50318 rules!3756)))) b!4140462))

(assert (= (and b!4140008 ((_ is Star!12277) (regex!7372 (h!50318 rules!3756)))) b!4140463))

(assert (= (and b!4140008 ((_ is Union!12277) (regex!7372 (h!50318 rules!3756)))) b!4140464))

(declare-fun b!4140465 () Bool)

(declare-fun e!2569022 () Bool)

(declare-fun tp!1262080 () Bool)

(assert (=> b!4140465 (= e!2569022 (and tp_is_empty!21477 tp!1262080))))

(assert (=> b!4140006 (= tp!1262005 e!2569022)))

(assert (= (and b!4140006 ((_ is Cons!44897) (t!342300 input!3238))) b!4140465))

(declare-fun b!4140476 () Bool)

(declare-fun b_free!117883 () Bool)

(declare-fun b_next!118587 () Bool)

(assert (=> b!4140476 (= b_free!117883 (not b_next!118587))))

(declare-fun t!342345 () Bool)

(declare-fun tb!248541 () Bool)

(assert (=> (and b!4140476 (= (toValue!10036 (transformation!7372 (h!50318 (t!342301 rules!3756)))) (toValue!10036 (transformation!7372 r!4008))) t!342345) tb!248541))

(declare-fun result!302218 () Bool)

(assert (= result!302218 result!302164))

(assert (=> d!1225813 t!342345))

(assert (=> d!1225821 t!342345))

(declare-fun b_and!321513 () Bool)

(declare-fun tp!1262091 () Bool)

(assert (=> b!4140476 (= tp!1262091 (and (=> t!342345 result!302218) b_and!321513))))

(declare-fun b_free!117885 () Bool)

(declare-fun b_next!118589 () Bool)

(assert (=> b!4140476 (= b_free!117885 (not b_next!118589))))

(declare-fun tb!248543 () Bool)

(declare-fun t!342347 () Bool)

(assert (=> (and b!4140476 (= (toChars!9895 (transformation!7372 (h!50318 (t!342301 rules!3756)))) (toChars!9895 (transformation!7372 r!4008))) t!342347) tb!248543))

(declare-fun result!302220 () Bool)

(assert (= result!302220 result!302198))

(assert (=> d!1225821 t!342347))

(declare-fun t!342349 () Bool)

(declare-fun tb!248545 () Bool)

(assert (=> (and b!4140476 (= (toChars!9895 (transformation!7372 (h!50318 (t!342301 rules!3756)))) (toChars!9895 (transformation!7372 (rule!10480 (_1!24775 lt!1476387))))) t!342349) tb!248545))

(declare-fun result!302222 () Bool)

(assert (= result!302222 result!302206))

(assert (=> d!1225841 t!342349))

(declare-fun b_and!321515 () Bool)

(declare-fun tp!1262092 () Bool)

(assert (=> b!4140476 (= tp!1262092 (and (=> t!342347 result!302220) (=> t!342349 result!302222) b_and!321515))))

(declare-fun e!2569034 () Bool)

(assert (=> b!4140476 (= e!2569034 (and tp!1262091 tp!1262092))))

(declare-fun e!2569032 () Bool)

(declare-fun tp!1262089 () Bool)

(declare-fun b!4140475 () Bool)

(assert (=> b!4140475 (= e!2569032 (and tp!1262089 (inv!59501 (tag!8232 (h!50318 (t!342301 rules!3756)))) (inv!59503 (transformation!7372 (h!50318 (t!342301 rules!3756)))) e!2569034))))

(declare-fun b!4140474 () Bool)

(declare-fun e!2569033 () Bool)

(declare-fun tp!1262090 () Bool)

(assert (=> b!4140474 (= e!2569033 (and e!2569032 tp!1262090))))

(assert (=> b!4140010 (= tp!1262007 e!2569033)))

(assert (= b!4140475 b!4140476))

(assert (= b!4140474 b!4140475))

(assert (= (and b!4140010 ((_ is Cons!44898) (t!342301 rules!3756))) b!4140474))

(declare-fun m!4736957 () Bool)

(assert (=> b!4140475 m!4736957))

(declare-fun m!4736959 () Bool)

(assert (=> b!4140475 m!4736959))

(declare-fun e!2569035 () Bool)

(assert (=> b!4140009 (= tp!1262006 e!2569035)))

(declare-fun b!4140480 () Bool)

(declare-fun tp!1262096 () Bool)

(declare-fun tp!1262097 () Bool)

(assert (=> b!4140480 (= e!2569035 (and tp!1262096 tp!1262097))))

(declare-fun b!4140477 () Bool)

(assert (=> b!4140477 (= e!2569035 tp_is_empty!21477)))

(declare-fun b!4140478 () Bool)

(declare-fun tp!1262094 () Bool)

(declare-fun tp!1262093 () Bool)

(assert (=> b!4140478 (= e!2569035 (and tp!1262094 tp!1262093))))

(declare-fun b!4140479 () Bool)

(declare-fun tp!1262095 () Bool)

(assert (=> b!4140479 (= e!2569035 tp!1262095)))

(assert (= (and b!4140009 ((_ is ElementMatch!12277) (regex!7372 r!4008))) b!4140477))

(assert (= (and b!4140009 ((_ is Concat!19880) (regex!7372 r!4008))) b!4140478))

(assert (= (and b!4140009 ((_ is Star!12277) (regex!7372 r!4008))) b!4140479))

(assert (= (and b!4140009 ((_ is Union!12277) (regex!7372 r!4008))) b!4140480))

(declare-fun e!2569036 () Bool)

(assert (=> b!4140015 (= tp!1262009 e!2569036)))

(declare-fun b!4140484 () Bool)

(declare-fun tp!1262101 () Bool)

(declare-fun tp!1262102 () Bool)

(assert (=> b!4140484 (= e!2569036 (and tp!1262101 tp!1262102))))

(declare-fun b!4140481 () Bool)

(assert (=> b!4140481 (= e!2569036 tp_is_empty!21477)))

(declare-fun b!4140482 () Bool)

(declare-fun tp!1262099 () Bool)

(declare-fun tp!1262098 () Bool)

(assert (=> b!4140482 (= e!2569036 (and tp!1262099 tp!1262098))))

(declare-fun b!4140483 () Bool)

(declare-fun tp!1262100 () Bool)

(assert (=> b!4140483 (= e!2569036 tp!1262100)))

(assert (= (and b!4140015 ((_ is ElementMatch!12277) (regex!7372 rBis!149))) b!4140481))

(assert (= (and b!4140015 ((_ is Concat!19880) (regex!7372 rBis!149))) b!4140482))

(assert (= (and b!4140015 ((_ is Star!12277) (regex!7372 rBis!149))) b!4140483))

(assert (= (and b!4140015 ((_ is Union!12277) (regex!7372 rBis!149))) b!4140484))

(declare-fun b_lambda!121705 () Bool)

(assert (= b_lambda!121699 (or (and b!4139999 b_free!117869 (= (toChars!9895 (transformation!7372 (h!50318 rules!3756))) (toChars!9895 (transformation!7372 r!4008)))) (and b!4140017 b_free!117873) (and b!4140018 b_free!117877 (= (toChars!9895 (transformation!7372 rBis!149)) (toChars!9895 (transformation!7372 r!4008)))) (and b!4140476 b_free!117885 (= (toChars!9895 (transformation!7372 (h!50318 (t!342301 rules!3756)))) (toChars!9895 (transformation!7372 r!4008)))) b_lambda!121705)))

(declare-fun b_lambda!121707 () Bool)

(assert (= b_lambda!121701 (or (and b!4139999 b_free!117867 (= (toValue!10036 (transformation!7372 (h!50318 rules!3756))) (toValue!10036 (transformation!7372 r!4008)))) (and b!4140017 b_free!117871) (and b!4140018 b_free!117875 (= (toValue!10036 (transformation!7372 rBis!149)) (toValue!10036 (transformation!7372 r!4008)))) (and b!4140476 b_free!117883 (= (toValue!10036 (transformation!7372 (h!50318 (t!342301 rules!3756)))) (toValue!10036 (transformation!7372 r!4008)))) b_lambda!121707)))

(declare-fun b_lambda!121709 () Bool)

(assert (= b_lambda!121685 (or (and b!4139999 b_free!117867 (= (toValue!10036 (transformation!7372 (h!50318 rules!3756))) (toValue!10036 (transformation!7372 r!4008)))) (and b!4140017 b_free!117871) (and b!4140018 b_free!117875 (= (toValue!10036 (transformation!7372 rBis!149)) (toValue!10036 (transformation!7372 r!4008)))) (and b!4140476 b_free!117883 (= (toValue!10036 (transformation!7372 (h!50318 (t!342301 rules!3756)))) (toValue!10036 (transformation!7372 r!4008)))) b_lambda!121709)))

(check-sat (not b_next!118581) (not b!4140294) (not b!4140307) b_and!321503 (not d!1225749) (not b!4140297) b_and!321513 (not b_lambda!121703) (not bm!290492) (not b!4140443) (not d!1225847) (not b!4140444) (not b!4140074) b_and!321501 (not b_next!118587) (not d!1225839) (not b!4140054) (not b!4140039) (not b!4140292) (not d!1225819) (not b!4140431) (not d!1225821) (not b!4140474) (not b!4140335) (not b_next!118573) (not b!4140437) (not b!4140175) (not b!4140479) (not b!4140078) (not d!1225803) (not d!1225761) (not b_lambda!121707) (not d!1225721) b_and!321515 (not b!4140465) (not b!4140450) (not b!4140439) (not d!1225809) (not d!1225709) (not b!4140206) (not b!4140327) (not b!4140300) (not d!1225805) (not b!4140328) (not d!1225811) (not tb!248535) (not b_next!118589) (not b!4140332) (not b!4140050) (not b!4140291) (not b!4140482) (not b!4140463) (not d!1225733) (not b!4140440) (not b_lambda!121709) (not d!1225713) (not b!4140293) (not b!4140462) (not b!4140059) (not d!1225725) (not b!4140441) (not d!1225719) (not b!4140063) b_and!321507 (not b!4140289) tp_is_empty!21477 (not b!4140478) (not b!4140169) (not d!1225841) (not b!4140475) (not b_lambda!121705) (not b!4140333) (not b!4140334) (not b!4140037) (not b!4140331) (not tb!248529) (not d!1225727) (not d!1225767) (not b_next!118575) (not b!4140445) (not b_next!118579) (not bm!290488) (not b!4140176) (not d!1225717) (not b!4140480) (not b_next!118577) (not b!4140173) b_and!321511 b_and!321505 (not b!4140296) (not b!4140049) (not d!1225837) (not b!4140330) (not d!1225807) (not b!4140295) (not d!1225735) (not b!4140464) (not b_next!118571) (not d!1225817) (not b!4140220) b_and!321509 (not b!4140290) (not b!4140177) (not b!4140484) (not b!4140166) (not d!1225815) (not tb!248505) (not b!4140080) (not b!4140038) (not d!1225711) (not b!4140483))
(check-sat (not b_next!118581) b_and!321513 b_and!321501 (not b_next!118587) (not b_next!118573) b_and!321515 (not b_next!118589) b_and!321507 (not b_next!118575) (not b_next!118579) b_and!321503 b_and!321505 (not b_next!118571) b_and!321509 (not b_next!118577) b_and!321511)
