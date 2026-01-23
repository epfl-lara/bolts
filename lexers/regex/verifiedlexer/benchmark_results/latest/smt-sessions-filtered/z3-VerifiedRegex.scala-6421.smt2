; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!335514 () Bool)

(assert start!335514)

(declare-fun b!3605947 () Bool)

(declare-fun b_free!93457 () Bool)

(declare-fun b_next!94161 () Bool)

(assert (=> b!3605947 (= b_free!93457 (not b_next!94161))))

(declare-fun tp!1102638 () Bool)

(declare-fun b_and!262499 () Bool)

(assert (=> b!3605947 (= tp!1102638 b_and!262499)))

(declare-fun b_free!93459 () Bool)

(declare-fun b_next!94163 () Bool)

(assert (=> b!3605947 (= b_free!93459 (not b_next!94163))))

(declare-fun tp!1102632 () Bool)

(declare-fun b_and!262501 () Bool)

(assert (=> b!3605947 (= tp!1102632 b_and!262501)))

(declare-fun b!3605924 () Bool)

(declare-fun b_free!93461 () Bool)

(declare-fun b_next!94165 () Bool)

(assert (=> b!3605924 (= b_free!93461 (not b_next!94165))))

(declare-fun tp!1102636 () Bool)

(declare-fun b_and!262503 () Bool)

(assert (=> b!3605924 (= tp!1102636 b_and!262503)))

(declare-fun b_free!93463 () Bool)

(declare-fun b_next!94167 () Bool)

(assert (=> b!3605924 (= b_free!93463 (not b_next!94167))))

(declare-fun tp!1102633 () Bool)

(declare-fun b_and!262505 () Bool)

(assert (=> b!3605924 (= tp!1102633 b_and!262505)))

(declare-fun b!3605948 () Bool)

(declare-fun b_free!93465 () Bool)

(declare-fun b_next!94169 () Bool)

(assert (=> b!3605948 (= b_free!93465 (not b_next!94169))))

(declare-fun tp!1102629 () Bool)

(declare-fun b_and!262507 () Bool)

(assert (=> b!3605948 (= tp!1102629 b_and!262507)))

(declare-fun b_free!93467 () Bool)

(declare-fun b_next!94171 () Bool)

(assert (=> b!3605948 (= b_free!93467 (not b_next!94171))))

(declare-fun tp!1102640 () Bool)

(declare-fun b_and!262509 () Bool)

(assert (=> b!3605948 (= tp!1102640 b_and!262509)))

(declare-fun b!3605935 () Bool)

(declare-fun b_free!93469 () Bool)

(declare-fun b_next!94173 () Bool)

(assert (=> b!3605935 (= b_free!93469 (not b_next!94173))))

(declare-fun tp!1102637 () Bool)

(declare-fun b_and!262511 () Bool)

(assert (=> b!3605935 (= tp!1102637 b_and!262511)))

(declare-fun b_free!93471 () Bool)

(declare-fun b_next!94175 () Bool)

(assert (=> b!3605935 (= b_free!93471 (not b_next!94175))))

(declare-fun tp!1102631 () Bool)

(declare-fun b_and!262513 () Bool)

(assert (=> b!3605935 (= tp!1102631 b_and!262513)))

(declare-fun b!3605916 () Bool)

(declare-datatypes ((Unit!54021 0))(
  ( (Unit!54022) )
))
(declare-fun e!2231483 () Unit!54021)

(declare-fun e!2231489 () Unit!54021)

(assert (=> b!3605916 (= e!2231483 e!2231489)))

(declare-fun c!623912 () Bool)

(declare-datatypes ((List!38063 0))(
  ( (Nil!37939) (Cons!37939 (h!43359 (_ BitVec 16)) (t!292874 List!38063)) )
))
(declare-datatypes ((TokenValue!5852 0))(
  ( (FloatLiteralValue!11704 (text!41409 List!38063)) (TokenValueExt!5851 (__x!23921 Int)) (Broken!29260 (value!180661 List!38063)) (Object!5975) (End!5852) (Def!5852) (Underscore!5852) (Match!5852) (Else!5852) (Error!5852) (Case!5852) (If!5852) (Extends!5852) (Abstract!5852) (Class!5852) (Val!5852) (DelimiterValue!11704 (del!5912 List!38063)) (KeywordValue!5858 (value!180662 List!38063)) (CommentValue!11704 (value!180663 List!38063)) (WhitespaceValue!11704 (value!180664 List!38063)) (IndentationValue!5852 (value!180665 List!38063)) (String!42593) (Int32!5852) (Broken!29261 (value!180666 List!38063)) (Boolean!5853) (Unit!54023) (OperatorValue!5855 (op!5912 List!38063)) (IdentifierValue!11704 (value!180667 List!38063)) (IdentifierValue!11705 (value!180668 List!38063)) (WhitespaceValue!11705 (value!180669 List!38063)) (True!11704) (False!11704) (Broken!29262 (value!180670 List!38063)) (Broken!29263 (value!180671 List!38063)) (True!11705) (RightBrace!5852) (RightBracket!5852) (Colon!5852) (Null!5852) (Comma!5852) (LeftBracket!5852) (False!11705) (LeftBrace!5852) (ImaginaryLiteralValue!5852 (text!41410 List!38063)) (StringLiteralValue!17556 (value!180672 List!38063)) (EOFValue!5852 (value!180673 List!38063)) (IdentValue!5852 (value!180674 List!38063)) (DelimiterValue!11705 (value!180675 List!38063)) (DedentValue!5852 (value!180676 List!38063)) (NewLineValue!5852 (value!180677 List!38063)) (IntegerValue!17556 (value!180678 (_ BitVec 32)) (text!41411 List!38063)) (IntegerValue!17557 (value!180679 Int) (text!41412 List!38063)) (Times!5852) (Or!5852) (Equal!5852) (Minus!5852) (Broken!29264 (value!180680 List!38063)) (And!5852) (Div!5852) (LessEqual!5852) (Mod!5852) (Concat!16233) (Not!5852) (Plus!5852) (SpaceValue!5852 (value!180681 List!38063)) (IntegerValue!17558 (value!180682 Int) (text!41413 List!38063)) (StringLiteralValue!17557 (text!41414 List!38063)) (FloatLiteralValue!11705 (text!41415 List!38063)) (BytesLiteralValue!5852 (value!180683 List!38063)) (CommentValue!11705 (value!180684 List!38063)) (StringLiteralValue!17558 (value!180685 List!38063)) (ErrorTokenValue!5852 (msg!5913 List!38063)) )
))
(declare-datatypes ((String!42594 0))(
  ( (String!42595 (value!180686 String)) )
))
(declare-datatypes ((C!20948 0))(
  ( (C!20949 (val!12522 Int)) )
))
(declare-datatypes ((Regex!10381 0))(
  ( (ElementMatch!10381 (c!623914 C!20948)) (Concat!16234 (regOne!21274 Regex!10381) (regTwo!21274 Regex!10381)) (EmptyExpr!10381) (Star!10381 (reg!10710 Regex!10381)) (EmptyLang!10381) (Union!10381 (regOne!21275 Regex!10381) (regTwo!21275 Regex!10381)) )
))
(declare-datatypes ((List!38064 0))(
  ( (Nil!37940) (Cons!37940 (h!43360 C!20948) (t!292875 List!38064)) )
))
(declare-datatypes ((IArray!23119 0))(
  ( (IArray!23120 (innerList!11617 List!38064)) )
))
(declare-datatypes ((Conc!11557 0))(
  ( (Node!11557 (left!29646 Conc!11557) (right!29976 Conc!11557) (csize!23344 Int) (cheight!11768 Int)) (Leaf!17979 (xs!14759 IArray!23119) (csize!23345 Int)) (Empty!11557) )
))
(declare-datatypes ((BalanceConc!22728 0))(
  ( (BalanceConc!22729 (c!623915 Conc!11557)) )
))
(declare-datatypes ((TokenValueInjection!11132 0))(
  ( (TokenValueInjection!11133 (toValue!7906 Int) (toChars!7765 Int)) )
))
(declare-datatypes ((Rule!11044 0))(
  ( (Rule!11045 (regex!5622 Regex!10381) (tag!6322 String!42594) (isSeparator!5622 Bool) (transformation!5622 TokenValueInjection!11132)) )
))
(declare-datatypes ((Token!10610 0))(
  ( (Token!10611 (value!180687 TokenValue!5852) (rule!8366 Rule!11044) (size!28917 Int) (originalCharacters!6336 List!38064)) )
))
(declare-datatypes ((tuple2!37836 0))(
  ( (tuple2!37837 (_1!22052 Token!10610) (_2!22052 List!38064)) )
))
(declare-fun lt!1240018 () tuple2!37836)

(assert (=> b!3605916 (= c!623912 (not (isSeparator!5622 (rule!8366 (_1!22052 lt!1240018)))))))

(declare-fun b!3605917 () Bool)

(declare-fun Unit!54024 () Unit!54021)

(assert (=> b!3605917 (= e!2231489 Unit!54024)))

(declare-fun b!3605918 () Bool)

(declare-fun e!2231495 () Unit!54021)

(declare-fun Unit!54025 () Unit!54021)

(assert (=> b!3605918 (= e!2231495 Unit!54025)))

(declare-fun bm!260643 () Bool)

(declare-fun call!260650 () List!38064)

(declare-fun usedCharacters!836 (Regex!10381) List!38064)

(assert (=> bm!260643 (= call!260650 (usedCharacters!836 (regex!5622 (rule!8366 (_1!22052 lt!1240018)))))))

(declare-fun b!3605919 () Bool)

(declare-fun res!1458016 () Bool)

(declare-fun e!2231492 () Bool)

(assert (=> b!3605919 (=> res!1458016 e!2231492)))

(declare-datatypes ((List!38065 0))(
  ( (Nil!37941) (Cons!37941 (h!43361 Rule!11044) (t!292876 List!38065)) )
))
(declare-fun rules!3307 () List!38065)

(declare-fun sepAndNonSepRulesDisjointChars!1792 (List!38065 List!38065) Bool)

(assert (=> b!3605919 (= res!1458016 (not (sepAndNonSepRulesDisjointChars!1792 rules!3307 rules!3307)))))

(declare-fun b!3605920 () Bool)

(declare-fun e!2231494 () Bool)

(declare-fun lt!1239996 () Rule!11044)

(assert (=> b!3605920 (= e!2231494 (= (rule!8366 (_1!22052 lt!1240018)) lt!1239996))))

(declare-fun b!3605921 () Bool)

(declare-fun e!2231485 () Bool)

(assert (=> b!3605921 (= e!2231485 e!2231492)))

(declare-fun res!1458020 () Bool)

(assert (=> b!3605921 (=> res!1458020 e!2231492)))

(declare-fun lt!1240021 () List!38064)

(declare-fun lt!1239991 () C!20948)

(declare-fun contains!7307 (List!38064 C!20948) Bool)

(assert (=> b!3605921 (= res!1458020 (contains!7307 lt!1240021 lt!1239991))))

(declare-fun suffix!1395 () List!38064)

(declare-fun head!7574 (List!38064) C!20948)

(assert (=> b!3605921 (= lt!1239991 (head!7574 suffix!1395))))

(declare-fun rule!403 () Rule!11044)

(assert (=> b!3605921 (= lt!1240021 (usedCharacters!836 (regex!5622 rule!403)))))

(declare-fun b!3605923 () Bool)

(assert (=> b!3605923 false))

(declare-fun lt!1240011 () Unit!54021)

(declare-fun call!260649 () Unit!54021)

(assert (=> b!3605923 (= lt!1240011 call!260649)))

(declare-fun call!260648 () Bool)

(assert (=> b!3605923 (not call!260648)))

(declare-datatypes ((LexerInterface!5211 0))(
  ( (LexerInterfaceExt!5208 (__x!23922 Int)) (Lexer!5209) )
))
(declare-fun thiss!23823 () LexerInterface!5211)

(declare-fun lt!1240003 () Unit!54021)

(declare-fun lt!1239985 () C!20948)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!210 (LexerInterface!5211 List!38065 List!38065 Rule!11044 Rule!11044 C!20948) Unit!54021)

(assert (=> b!3605923 (= lt!1240003 (lemmaSepRuleNotContainsCharContainedInANonSepRule!210 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8366 (_1!22052 lt!1240018)) lt!1239985))))

(declare-fun Unit!54026 () Unit!54021)

(assert (=> b!3605923 (= e!2231495 Unit!54026)))

(declare-fun bm!260644 () Bool)

(assert (=> bm!260644 (= call!260648 (contains!7307 call!260650 lt!1239985))))

(declare-fun e!2231496 () Bool)

(assert (=> b!3605924 (= e!2231496 (and tp!1102636 tp!1102633))))

(declare-fun b!3605925 () Bool)

(declare-fun e!2231497 () Bool)

(declare-fun e!2231505 () Bool)

(assert (=> b!3605925 (= e!2231497 e!2231505)))

(declare-fun res!1458017 () Bool)

(assert (=> b!3605925 (=> res!1458017 e!2231505)))

(declare-datatypes ((Option!7874 0))(
  ( (None!7873) (Some!7873 (v!37603 tuple2!37836)) )
))
(declare-fun lt!1239994 () Option!7874)

(declare-fun lt!1239999 () List!38064)

(declare-fun lt!1240014 () TokenValue!5852)

(declare-fun lt!1240004 () Int)

(assert (=> b!3605925 (= res!1458017 (not (= lt!1239994 (Some!7873 (tuple2!37837 (Token!10611 lt!1240014 (rule!8366 (_1!22052 lt!1240018)) lt!1240004 lt!1239999) (_2!22052 lt!1240018))))))))

(declare-fun lt!1239997 () BalanceConc!22728)

(declare-fun size!28918 (BalanceConc!22728) Int)

(assert (=> b!3605925 (= lt!1240004 (size!28918 lt!1239997))))

(declare-fun apply!9128 (TokenValueInjection!11132 BalanceConc!22728) TokenValue!5852)

(assert (=> b!3605925 (= lt!1240014 (apply!9128 (transformation!5622 (rule!8366 (_1!22052 lt!1240018))) lt!1239997))))

(declare-fun lt!1240005 () Unit!54021)

(declare-fun lemmaCharactersSize!675 (Token!10610) Unit!54021)

(assert (=> b!3605925 (= lt!1240005 (lemmaCharactersSize!675 (_1!22052 lt!1240018)))))

(declare-fun lt!1239998 () Unit!54021)

(declare-fun lemmaEqSameImage!813 (TokenValueInjection!11132 BalanceConc!22728 BalanceConc!22728) Unit!54021)

(declare-fun seqFromList!4175 (List!38064) BalanceConc!22728)

(assert (=> b!3605925 (= lt!1239998 (lemmaEqSameImage!813 (transformation!5622 (rule!8366 (_1!22052 lt!1240018))) lt!1239997 (seqFromList!4175 (originalCharacters!6336 (_1!22052 lt!1240018)))))))

(declare-fun lt!1239988 () Unit!54021)

(declare-fun lemmaSemiInverse!1379 (TokenValueInjection!11132 BalanceConc!22728) Unit!54021)

(assert (=> b!3605925 (= lt!1239988 (lemmaSemiInverse!1379 (transformation!5622 (rule!8366 (_1!22052 lt!1240018))) lt!1239997))))

(declare-fun b!3605926 () Bool)

(declare-fun e!2231493 () Bool)

(declare-fun e!2231507 () Bool)

(assert (=> b!3605926 (= e!2231493 e!2231507)))

(declare-fun res!1458022 () Bool)

(assert (=> b!3605926 (=> (not res!1458022) (not e!2231507))))

(declare-fun lt!1239992 () tuple2!37836)

(declare-fun token!511 () Token!10610)

(assert (=> b!3605926 (= res!1458022 (= (_1!22052 lt!1239992) token!511))))

(declare-fun lt!1240013 () Option!7874)

(declare-fun get!12295 (Option!7874) tuple2!37836)

(assert (=> b!3605926 (= lt!1239992 (get!12295 lt!1240013))))

(declare-fun b!3605927 () Bool)

(declare-fun e!2231484 () Bool)

(assert (=> b!3605927 (= e!2231505 e!2231484)))

(declare-fun res!1458006 () Bool)

(assert (=> b!3605927 (=> res!1458006 e!2231484)))

(declare-fun lt!1240020 () Option!7874)

(declare-fun lt!1240007 () List!38064)

(assert (=> b!3605927 (= res!1458006 (or (not (= lt!1240007 (_2!22052 lt!1240018))) (not (= lt!1240020 (Some!7873 (tuple2!37837 (_1!22052 lt!1240018) lt!1240007))))))))

(assert (=> b!3605927 (= (_2!22052 lt!1240018) lt!1240007)))

(declare-fun lt!1239990 () List!38064)

(declare-fun lt!1240010 () Unit!54021)

(declare-fun lemmaSamePrefixThenSameSuffix!1340 (List!38064 List!38064 List!38064 List!38064 List!38064) Unit!54021)

(assert (=> b!3605927 (= lt!1240010 (lemmaSamePrefixThenSameSuffix!1340 lt!1239999 (_2!22052 lt!1240018) lt!1239999 lt!1240007 lt!1239990))))

(declare-fun getSuffix!1560 (List!38064 List!38064) List!38064)

(assert (=> b!3605927 (= lt!1240007 (getSuffix!1560 lt!1239990 lt!1239999))))

(declare-fun lt!1240006 () TokenValue!5852)

(declare-fun lt!1240022 () Int)

(assert (=> b!3605927 (= lt!1240020 (Some!7873 (tuple2!37837 (Token!10611 lt!1240006 (rule!8366 (_1!22052 lt!1240018)) lt!1240022 lt!1239999) (_2!22052 lt!1240018))))))

(declare-fun maxPrefixOneRule!1889 (LexerInterface!5211 Rule!11044 List!38064) Option!7874)

(assert (=> b!3605927 (= lt!1240020 (maxPrefixOneRule!1889 thiss!23823 (rule!8366 (_1!22052 lt!1240018)) lt!1239990))))

(declare-fun size!28919 (List!38064) Int)

(assert (=> b!3605927 (= lt!1240022 (size!28919 lt!1239999))))

(assert (=> b!3605927 (= lt!1240006 (apply!9128 (transformation!5622 (rule!8366 (_1!22052 lt!1240018))) (seqFromList!4175 lt!1239999)))))

(declare-fun lt!1240001 () Unit!54021)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!961 (LexerInterface!5211 List!38065 List!38064 List!38064 List!38064 Rule!11044) Unit!54021)

(assert (=> b!3605927 (= lt!1240001 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!961 thiss!23823 rules!3307 lt!1239999 lt!1239990 (_2!22052 lt!1240018) (rule!8366 (_1!22052 lt!1240018))))))

(declare-fun b!3605928 () Bool)

(assert (=> b!3605928 (= e!2231483 e!2231495)))

(declare-fun c!623910 () Bool)

(assert (=> b!3605928 (= c!623910 (isSeparator!5622 (rule!8366 (_1!22052 lt!1240018))))))

(declare-fun b!3605929 () Bool)

(assert (=> b!3605929 (= e!2231492 e!2231497)))

(declare-fun res!1458010 () Bool)

(assert (=> b!3605929 (=> res!1458010 e!2231497)))

(declare-fun isPrefix!2985 (List!38064 List!38064) Bool)

(assert (=> b!3605929 (= res!1458010 (not (isPrefix!2985 lt!1239999 lt!1239990)))))

(declare-fun ++!9438 (List!38064 List!38064) List!38064)

(assert (=> b!3605929 (isPrefix!2985 lt!1239999 (++!9438 lt!1239999 (_2!22052 lt!1240018)))))

(declare-fun lt!1240015 () Unit!54021)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1906 (List!38064 List!38064) Unit!54021)

(assert (=> b!3605929 (= lt!1240015 (lemmaConcatTwoListThenFirstIsPrefix!1906 lt!1239999 (_2!22052 lt!1240018)))))

(declare-fun list!13986 (BalanceConc!22728) List!38064)

(assert (=> b!3605929 (= lt!1239999 (list!13986 lt!1239997))))

(declare-fun charsOf!3636 (Token!10610) BalanceConc!22728)

(assert (=> b!3605929 (= lt!1239997 (charsOf!3636 (_1!22052 lt!1240018)))))

(declare-fun e!2231504 () Bool)

(assert (=> b!3605929 e!2231504))

(declare-fun res!1458005 () Bool)

(assert (=> b!3605929 (=> (not res!1458005) (not e!2231504))))

(declare-datatypes ((Option!7875 0))(
  ( (None!7874) (Some!7874 (v!37604 Rule!11044)) )
))
(declare-fun lt!1239989 () Option!7875)

(declare-fun isDefined!6106 (Option!7875) Bool)

(assert (=> b!3605929 (= res!1458005 (isDefined!6106 lt!1239989))))

(declare-fun getRuleFromTag!1228 (LexerInterface!5211 List!38065 String!42594) Option!7875)

(assert (=> b!3605929 (= lt!1239989 (getRuleFromTag!1228 thiss!23823 rules!3307 (tag!6322 (rule!8366 (_1!22052 lt!1240018)))))))

(declare-fun lt!1240009 () Unit!54021)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1228 (LexerInterface!5211 List!38065 List!38064 Token!10610) Unit!54021)

(assert (=> b!3605929 (= lt!1240009 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1228 thiss!23823 rules!3307 lt!1239990 (_1!22052 lt!1240018)))))

(assert (=> b!3605929 (= lt!1240018 (get!12295 lt!1239994))))

(declare-fun lt!1239986 () List!38064)

(declare-fun lt!1240012 () Unit!54021)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!891 (LexerInterface!5211 List!38065 List!38064 List!38064) Unit!54021)

(assert (=> b!3605929 (= lt!1240012 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!891 thiss!23823 rules!3307 lt!1239986 suffix!1395))))

(declare-fun maxPrefix!2745 (LexerInterface!5211 List!38065 List!38064) Option!7874)

(assert (=> b!3605929 (= lt!1239994 (maxPrefix!2745 thiss!23823 rules!3307 lt!1239990))))

(assert (=> b!3605929 (isPrefix!2985 lt!1239986 lt!1239990)))

(declare-fun lt!1239995 () Unit!54021)

(assert (=> b!3605929 (= lt!1239995 (lemmaConcatTwoListThenFirstIsPrefix!1906 lt!1239986 suffix!1395))))

(assert (=> b!3605929 (= lt!1239990 (++!9438 lt!1239986 suffix!1395))))

(declare-fun b!3605930 () Bool)

(declare-fun res!1458026 () Bool)

(declare-fun e!2231487 () Bool)

(assert (=> b!3605930 (=> (not res!1458026) (not e!2231487))))

(declare-fun anOtherTypeRule!33 () Rule!11044)

(assert (=> b!3605930 (= res!1458026 (not (= (isSeparator!5622 anOtherTypeRule!33) (isSeparator!5622 rule!403))))))

(declare-fun b!3605931 () Bool)

(declare-fun tp!1102641 () Bool)

(declare-fun e!2231502 () Bool)

(declare-fun e!2231490 () Bool)

(declare-fun inv!51303 (String!42594) Bool)

(declare-fun inv!51306 (TokenValueInjection!11132) Bool)

(assert (=> b!3605931 (= e!2231502 (and tp!1102641 (inv!51303 (tag!6322 (rule!8366 token!511))) (inv!51306 (transformation!5622 (rule!8366 token!511))) e!2231490))))

(declare-fun b!3605932 () Bool)

(declare-fun e!2231482 () Unit!54021)

(declare-fun Unit!54027 () Unit!54021)

(assert (=> b!3605932 (= e!2231482 Unit!54027)))

(declare-fun b!3605933 () Bool)

(declare-fun e!2231501 () Bool)

(declare-fun e!2231500 () Bool)

(declare-fun tp!1102630 () Bool)

(assert (=> b!3605933 (= e!2231501 (and e!2231500 tp!1102630))))

(declare-fun b!3605934 () Bool)

(assert (=> b!3605934 (= e!2231504 e!2231494)))

(declare-fun res!1458009 () Bool)

(assert (=> b!3605934 (=> (not res!1458009) (not e!2231494))))

(declare-fun matchR!4950 (Regex!10381 List!38064) Bool)

(assert (=> b!3605934 (= res!1458009 (matchR!4950 (regex!5622 lt!1239996) (list!13986 (charsOf!3636 (_1!22052 lt!1240018)))))))

(declare-fun get!12296 (Option!7875) Rule!11044)

(assert (=> b!3605934 (= lt!1239996 (get!12296 lt!1239989))))

(declare-fun e!2231486 () Bool)

(assert (=> b!3605935 (= e!2231486 (and tp!1102637 tp!1102631))))

(declare-fun b!3605936 () Bool)

(declare-fun e!2231510 () Bool)

(assert (=> b!3605936 (= e!2231510 true)))

(declare-fun lt!1240019 () Int)

(assert (=> b!3605936 (= lt!1240019 (size!28919 lt!1239986))))

(declare-fun b!3605937 () Bool)

(assert (=> b!3605937 (= e!2231507 (not e!2231485))))

(declare-fun res!1458025 () Bool)

(assert (=> b!3605937 (=> res!1458025 e!2231485)))

(assert (=> b!3605937 (= res!1458025 (not (matchR!4950 (regex!5622 rule!403) lt!1239986)))))

(declare-fun ruleValid!1887 (LexerInterface!5211 Rule!11044) Bool)

(assert (=> b!3605937 (ruleValid!1887 thiss!23823 rule!403)))

(declare-fun lt!1240017 () Unit!54021)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1042 (LexerInterface!5211 Rule!11044 List!38065) Unit!54021)

(assert (=> b!3605937 (= lt!1240017 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1042 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3605938 () Bool)

(declare-fun res!1458018 () Bool)

(assert (=> b!3605938 (=> (not res!1458018) (not e!2231507))))

(assert (=> b!3605938 (= res!1458018 (= (rule!8366 token!511) rule!403))))

(declare-fun b!3605939 () Bool)

(declare-fun res!1458019 () Bool)

(assert (=> b!3605939 (=> (not res!1458019) (not e!2231487))))

(declare-fun isEmpty!22394 (List!38065) Bool)

(assert (=> b!3605939 (= res!1458019 (not (isEmpty!22394 rules!3307)))))

(declare-fun b!3605940 () Bool)

(declare-fun res!1458012 () Bool)

(assert (=> b!3605940 (=> (not res!1458012) (not e!2231487))))

(declare-fun rulesInvariant!4608 (LexerInterface!5211 List!38065) Bool)

(assert (=> b!3605940 (= res!1458012 (rulesInvariant!4608 thiss!23823 rules!3307))))

(declare-fun b!3605941 () Bool)

(assert (=> b!3605941 (= e!2231487 e!2231493)))

(declare-fun res!1458011 () Bool)

(assert (=> b!3605941 (=> (not res!1458011) (not e!2231493))))

(declare-fun isDefined!6107 (Option!7874) Bool)

(assert (=> b!3605941 (= res!1458011 (isDefined!6107 lt!1240013))))

(assert (=> b!3605941 (= lt!1240013 (maxPrefix!2745 thiss!23823 rules!3307 lt!1239986))))

(declare-fun lt!1240008 () BalanceConc!22728)

(assert (=> b!3605941 (= lt!1239986 (list!13986 lt!1240008))))

(assert (=> b!3605941 (= lt!1240008 (charsOf!3636 token!511))))

(declare-fun b!3605942 () Bool)

(declare-fun e!2231491 () Bool)

(declare-fun tp_is_empty!17845 () Bool)

(declare-fun tp!1102639 () Bool)

(assert (=> b!3605942 (= e!2231491 (and tp_is_empty!17845 tp!1102639))))

(declare-fun b!3605943 () Bool)

(declare-fun res!1458014 () Bool)

(assert (=> b!3605943 (=> res!1458014 e!2231492)))

(assert (=> b!3605943 (= res!1458014 (not (contains!7307 (usedCharacters!836 (regex!5622 anOtherTypeRule!33)) lt!1239991)))))

(declare-fun b!3605944 () Bool)

(declare-fun res!1458007 () Bool)

(assert (=> b!3605944 (=> (not res!1458007) (not e!2231487))))

(declare-fun contains!7308 (List!38065 Rule!11044) Bool)

(assert (=> b!3605944 (= res!1458007 (contains!7308 rules!3307 rule!403))))

(declare-fun b!3605945 () Bool)

(declare-fun res!1458024 () Bool)

(assert (=> b!3605945 (=> res!1458024 e!2231497)))

(assert (=> b!3605945 (= res!1458024 (not (matchR!4950 (regex!5622 (rule!8366 (_1!22052 lt!1240018))) lt!1239999)))))

(declare-fun bm!260645 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!606 (Regex!10381 List!38064 C!20948) Unit!54021)

(assert (=> bm!260645 (= call!260649 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!606 (regex!5622 (rule!8366 (_1!22052 lt!1240018))) lt!1239999 lt!1239985))))

(declare-fun b!3605946 () Bool)

(declare-fun res!1458015 () Bool)

(assert (=> b!3605946 (=> (not res!1458015) (not e!2231487))))

(assert (=> b!3605946 (= res!1458015 (contains!7308 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3605922 () Bool)

(assert (=> b!3605922 (= e!2231484 e!2231510)))

(declare-fun res!1458008 () Bool)

(assert (=> b!3605922 (=> res!1458008 e!2231510)))

(assert (=> b!3605922 (= res!1458008 (<= lt!1240004 (size!28918 lt!1240008)))))

(declare-fun lt!1239987 () Unit!54021)

(assert (=> b!3605922 (= lt!1239987 e!2231483)))

(declare-fun c!623913 () Bool)

(assert (=> b!3605922 (= c!623913 (isSeparator!5622 rule!403))))

(declare-fun lt!1240016 () Unit!54021)

(assert (=> b!3605922 (= lt!1240016 e!2231482)))

(declare-fun c!623911 () Bool)

(assert (=> b!3605922 (= c!623911 (not (contains!7307 lt!1240021 lt!1239985)))))

(assert (=> b!3605922 (= lt!1239985 (head!7574 lt!1239999))))

(declare-fun res!1458023 () Bool)

(assert (=> start!335514 (=> (not res!1458023) (not e!2231487))))

(get-info :version)

(assert (=> start!335514 (= res!1458023 ((_ is Lexer!5209) thiss!23823))))

(assert (=> start!335514 e!2231487))

(assert (=> start!335514 e!2231501))

(assert (=> start!335514 e!2231491))

(assert (=> start!335514 true))

(declare-fun e!2231498 () Bool)

(declare-fun inv!51307 (Token!10610) Bool)

(assert (=> start!335514 (and (inv!51307 token!511) e!2231498)))

(declare-fun e!2231503 () Bool)

(assert (=> start!335514 e!2231503))

(declare-fun e!2231506 () Bool)

(assert (=> start!335514 e!2231506))

(assert (=> b!3605947 (= e!2231490 (and tp!1102638 tp!1102632))))

(declare-fun e!2231488 () Bool)

(assert (=> b!3605948 (= e!2231488 (and tp!1102629 tp!1102640))))

(declare-fun b!3605949 () Bool)

(declare-fun tp!1102628 () Bool)

(declare-fun inv!21 (TokenValue!5852) Bool)

(assert (=> b!3605949 (= e!2231498 (and (inv!21 (value!180687 token!511)) e!2231502 tp!1102628))))

(declare-fun b!3605950 () Bool)

(declare-fun tp!1102642 () Bool)

(assert (=> b!3605950 (= e!2231506 (and tp!1102642 (inv!51303 (tag!6322 anOtherTypeRule!33)) (inv!51306 (transformation!5622 anOtherTypeRule!33)) e!2231488))))

(declare-fun b!3605951 () Bool)

(declare-fun res!1458021 () Bool)

(assert (=> b!3605951 (=> (not res!1458021) (not e!2231507))))

(declare-fun isEmpty!22395 (List!38064) Bool)

(assert (=> b!3605951 (= res!1458021 (isEmpty!22395 (_2!22052 lt!1239992)))))

(declare-fun tp!1102635 () Bool)

(declare-fun b!3605952 () Bool)

(assert (=> b!3605952 (= e!2231503 (and tp!1102635 (inv!51303 (tag!6322 rule!403)) (inv!51306 (transformation!5622 rule!403)) e!2231496))))

(declare-fun b!3605953 () Bool)

(declare-fun Unit!54028 () Unit!54021)

(assert (=> b!3605953 (= e!2231482 Unit!54028)))

(declare-fun lt!1239993 () Unit!54021)

(assert (=> b!3605953 (= lt!1239993 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!606 (regex!5622 rule!403) lt!1239986 lt!1239985))))

(assert (=> b!3605953 false))

(declare-fun b!3605954 () Bool)

(declare-fun tp!1102634 () Bool)

(assert (=> b!3605954 (= e!2231500 (and tp!1102634 (inv!51303 (tag!6322 (h!43361 rules!3307))) (inv!51306 (transformation!5622 (h!43361 rules!3307))) e!2231486))))

(declare-fun b!3605955 () Bool)

(declare-fun res!1458013 () Bool)

(assert (=> b!3605955 (=> res!1458013 e!2231485)))

(assert (=> b!3605955 (= res!1458013 (isEmpty!22395 suffix!1395))))

(declare-fun b!3605956 () Bool)

(assert (=> b!3605956 false))

(declare-fun lt!1240000 () Unit!54021)

(assert (=> b!3605956 (= lt!1240000 call!260649)))

(assert (=> b!3605956 (not call!260648)))

(declare-fun lt!1240002 () Unit!54021)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!328 (LexerInterface!5211 List!38065 List!38065 Rule!11044 Rule!11044 C!20948) Unit!54021)

(assert (=> b!3605956 (= lt!1240002 (lemmaNonSepRuleNotContainsCharContainedInASepRule!328 thiss!23823 rules!3307 rules!3307 (rule!8366 (_1!22052 lt!1240018)) rule!403 lt!1239985))))

(declare-fun Unit!54029 () Unit!54021)

(assert (=> b!3605956 (= e!2231489 Unit!54029)))

(assert (= (and start!335514 res!1458023) b!3605939))

(assert (= (and b!3605939 res!1458019) b!3605940))

(assert (= (and b!3605940 res!1458012) b!3605944))

(assert (= (and b!3605944 res!1458007) b!3605946))

(assert (= (and b!3605946 res!1458015) b!3605930))

(assert (= (and b!3605930 res!1458026) b!3605941))

(assert (= (and b!3605941 res!1458011) b!3605926))

(assert (= (and b!3605926 res!1458022) b!3605951))

(assert (= (and b!3605951 res!1458021) b!3605938))

(assert (= (and b!3605938 res!1458018) b!3605937))

(assert (= (and b!3605937 (not res!1458025)) b!3605955))

(assert (= (and b!3605955 (not res!1458013)) b!3605921))

(assert (= (and b!3605921 (not res!1458020)) b!3605943))

(assert (= (and b!3605943 (not res!1458014)) b!3605919))

(assert (= (and b!3605919 (not res!1458016)) b!3605929))

(assert (= (and b!3605929 res!1458005) b!3605934))

(assert (= (and b!3605934 res!1458009) b!3605920))

(assert (= (and b!3605929 (not res!1458010)) b!3605945))

(assert (= (and b!3605945 (not res!1458024)) b!3605925))

(assert (= (and b!3605925 (not res!1458017)) b!3605927))

(assert (= (and b!3605927 (not res!1458006)) b!3605922))

(assert (= (and b!3605922 c!623911) b!3605953))

(assert (= (and b!3605922 (not c!623911)) b!3605932))

(assert (= (and b!3605922 c!623913) b!3605916))

(assert (= (and b!3605922 (not c!623913)) b!3605928))

(assert (= (and b!3605916 c!623912) b!3605956))

(assert (= (and b!3605916 (not c!623912)) b!3605917))

(assert (= (and b!3605928 c!623910) b!3605923))

(assert (= (and b!3605928 (not c!623910)) b!3605918))

(assert (= (or b!3605956 b!3605923) bm!260645))

(assert (= (or b!3605956 b!3605923) bm!260643))

(assert (= (or b!3605956 b!3605923) bm!260644))

(assert (= (and b!3605922 (not res!1458008)) b!3605936))

(assert (= b!3605954 b!3605935))

(assert (= b!3605933 b!3605954))

(assert (= (and start!335514 ((_ is Cons!37941) rules!3307)) b!3605933))

(assert (= (and start!335514 ((_ is Cons!37940) suffix!1395)) b!3605942))

(assert (= b!3605931 b!3605947))

(assert (= b!3605949 b!3605931))

(assert (= start!335514 b!3605949))

(assert (= b!3605952 b!3605924))

(assert (= start!335514 b!3605952))

(assert (= b!3605950 b!3605948))

(assert (= start!335514 b!3605950))

(declare-fun m!4102665 () Bool)

(assert (=> b!3605941 m!4102665))

(declare-fun m!4102667 () Bool)

(assert (=> b!3605941 m!4102667))

(declare-fun m!4102669 () Bool)

(assert (=> b!3605941 m!4102669))

(declare-fun m!4102671 () Bool)

(assert (=> b!3605941 m!4102671))

(declare-fun m!4102673 () Bool)

(assert (=> b!3605951 m!4102673))

(declare-fun m!4102675 () Bool)

(assert (=> b!3605946 m!4102675))

(declare-fun m!4102677 () Bool)

(assert (=> b!3605952 m!4102677))

(declare-fun m!4102679 () Bool)

(assert (=> b!3605952 m!4102679))

(declare-fun m!4102681 () Bool)

(assert (=> bm!260645 m!4102681))

(declare-fun m!4102683 () Bool)

(assert (=> b!3605939 m!4102683))

(declare-fun m!4102685 () Bool)

(assert (=> b!3605929 m!4102685))

(declare-fun m!4102687 () Bool)

(assert (=> b!3605929 m!4102687))

(declare-fun m!4102689 () Bool)

(assert (=> b!3605929 m!4102689))

(declare-fun m!4102691 () Bool)

(assert (=> b!3605929 m!4102691))

(declare-fun m!4102693 () Bool)

(assert (=> b!3605929 m!4102693))

(declare-fun m!4102695 () Bool)

(assert (=> b!3605929 m!4102695))

(declare-fun m!4102697 () Bool)

(assert (=> b!3605929 m!4102697))

(declare-fun m!4102699 () Bool)

(assert (=> b!3605929 m!4102699))

(declare-fun m!4102701 () Bool)

(assert (=> b!3605929 m!4102701))

(declare-fun m!4102703 () Bool)

(assert (=> b!3605929 m!4102703))

(declare-fun m!4102705 () Bool)

(assert (=> b!3605929 m!4102705))

(declare-fun m!4102707 () Bool)

(assert (=> b!3605929 m!4102707))

(declare-fun m!4102709 () Bool)

(assert (=> b!3605929 m!4102709))

(declare-fun m!4102711 () Bool)

(assert (=> b!3605929 m!4102711))

(assert (=> b!3605929 m!4102687))

(declare-fun m!4102713 () Bool)

(assert (=> b!3605929 m!4102713))

(declare-fun m!4102715 () Bool)

(assert (=> b!3605943 m!4102715))

(assert (=> b!3605943 m!4102715))

(declare-fun m!4102717 () Bool)

(assert (=> b!3605943 m!4102717))

(declare-fun m!4102719 () Bool)

(assert (=> b!3605937 m!4102719))

(declare-fun m!4102721 () Bool)

(assert (=> b!3605937 m!4102721))

(declare-fun m!4102723 () Bool)

(assert (=> b!3605937 m!4102723))

(declare-fun m!4102725 () Bool)

(assert (=> start!335514 m!4102725))

(declare-fun m!4102727 () Bool)

(assert (=> b!3605931 m!4102727))

(declare-fun m!4102729 () Bool)

(assert (=> b!3605931 m!4102729))

(declare-fun m!4102731 () Bool)

(assert (=> bm!260643 m!4102731))

(declare-fun m!4102733 () Bool)

(assert (=> b!3605940 m!4102733))

(declare-fun m!4102735 () Bool)

(assert (=> b!3605956 m!4102735))

(declare-fun m!4102737 () Bool)

(assert (=> b!3605945 m!4102737))

(declare-fun m!4102739 () Bool)

(assert (=> b!3605955 m!4102739))

(assert (=> b!3605934 m!4102695))

(assert (=> b!3605934 m!4102695))

(declare-fun m!4102741 () Bool)

(assert (=> b!3605934 m!4102741))

(assert (=> b!3605934 m!4102741))

(declare-fun m!4102743 () Bool)

(assert (=> b!3605934 m!4102743))

(declare-fun m!4102745 () Bool)

(assert (=> b!3605934 m!4102745))

(declare-fun m!4102747 () Bool)

(assert (=> b!3605927 m!4102747))

(declare-fun m!4102749 () Bool)

(assert (=> b!3605927 m!4102749))

(declare-fun m!4102751 () Bool)

(assert (=> b!3605927 m!4102751))

(declare-fun m!4102753 () Bool)

(assert (=> b!3605927 m!4102753))

(declare-fun m!4102755 () Bool)

(assert (=> b!3605927 m!4102755))

(assert (=> b!3605927 m!4102751))

(declare-fun m!4102757 () Bool)

(assert (=> b!3605927 m!4102757))

(declare-fun m!4102759 () Bool)

(assert (=> b!3605927 m!4102759))

(declare-fun m!4102761 () Bool)

(assert (=> b!3605953 m!4102761))

(declare-fun m!4102763 () Bool)

(assert (=> bm!260644 m!4102763))

(declare-fun m!4102765 () Bool)

(assert (=> b!3605954 m!4102765))

(declare-fun m!4102767 () Bool)

(assert (=> b!3605954 m!4102767))

(declare-fun m!4102769 () Bool)

(assert (=> b!3605922 m!4102769))

(declare-fun m!4102771 () Bool)

(assert (=> b!3605922 m!4102771))

(declare-fun m!4102773 () Bool)

(assert (=> b!3605922 m!4102773))

(declare-fun m!4102775 () Bool)

(assert (=> b!3605926 m!4102775))

(declare-fun m!4102777 () Bool)

(assert (=> b!3605949 m!4102777))

(declare-fun m!4102779 () Bool)

(assert (=> b!3605944 m!4102779))

(declare-fun m!4102781 () Bool)

(assert (=> b!3605921 m!4102781))

(declare-fun m!4102783 () Bool)

(assert (=> b!3605921 m!4102783))

(declare-fun m!4102785 () Bool)

(assert (=> b!3605921 m!4102785))

(declare-fun m!4102787 () Bool)

(assert (=> b!3605925 m!4102787))

(declare-fun m!4102789 () Bool)

(assert (=> b!3605925 m!4102789))

(declare-fun m!4102791 () Bool)

(assert (=> b!3605925 m!4102791))

(declare-fun m!4102793 () Bool)

(assert (=> b!3605925 m!4102793))

(assert (=> b!3605925 m!4102791))

(declare-fun m!4102795 () Bool)

(assert (=> b!3605925 m!4102795))

(declare-fun m!4102797 () Bool)

(assert (=> b!3605925 m!4102797))

(declare-fun m!4102799 () Bool)

(assert (=> b!3605919 m!4102799))

(declare-fun m!4102801 () Bool)

(assert (=> b!3605923 m!4102801))

(declare-fun m!4102803 () Bool)

(assert (=> b!3605950 m!4102803))

(declare-fun m!4102805 () Bool)

(assert (=> b!3605950 m!4102805))

(declare-fun m!4102807 () Bool)

(assert (=> b!3605936 m!4102807))

(check-sat (not b_next!94173) (not b!3605950) (not b_next!94165) (not b!3605926) (not b!3605933) (not b!3605940) (not b!3605927) (not b!3605931) (not b!3605945) b_and!262499 b_and!262501 (not b!3605939) (not start!335514) (not b!3605951) (not b!3605953) (not b!3605943) (not bm!260644) (not b!3605937) b_and!262509 (not b!3605954) (not b!3605944) b_and!262513 (not b!3605922) (not b!3605955) (not b!3605949) (not b!3605941) tp_is_empty!17845 (not b!3605921) b_and!262511 (not b!3605934) (not b!3605956) (not b!3605952) (not bm!260645) (not b!3605925) b_and!262505 (not b!3605923) (not b!3605936) (not b_next!94171) (not b!3605929) (not b_next!94163) (not b!3605946) (not b_next!94161) (not b!3605919) b_and!262503 (not bm!260643) (not b_next!94175) (not b_next!94169) b_and!262507 (not b!3605942) (not b_next!94167))
(check-sat (not b_next!94173) b_and!262509 b_and!262513 b_and!262511 (not b_next!94165) b_and!262499 b_and!262501 b_and!262505 (not b_next!94171) (not b_next!94163) (not b_next!94161) b_and!262503 (not b_next!94175) (not b_next!94169) b_and!262507 (not b_next!94167))
