; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!333690 () Bool)

(assert start!333690)

(declare-fun b!3594035 () Bool)

(declare-fun b_free!92825 () Bool)

(declare-fun b_next!93529 () Bool)

(assert (=> b!3594035 (= b_free!92825 (not b_next!93529))))

(declare-fun tp!1099979 () Bool)

(declare-fun b_and!260283 () Bool)

(assert (=> b!3594035 (= tp!1099979 b_and!260283)))

(declare-fun b_free!92827 () Bool)

(declare-fun b_next!93531 () Bool)

(assert (=> b!3594035 (= b_free!92827 (not b_next!93531))))

(declare-fun tp!1099990 () Bool)

(declare-fun b_and!260285 () Bool)

(assert (=> b!3594035 (= tp!1099990 b_and!260285)))

(declare-fun b!3594047 () Bool)

(declare-fun b_free!92829 () Bool)

(declare-fun b_next!93533 () Bool)

(assert (=> b!3594047 (= b_free!92829 (not b_next!93533))))

(declare-fun tp!1099988 () Bool)

(declare-fun b_and!260287 () Bool)

(assert (=> b!3594047 (= tp!1099988 b_and!260287)))

(declare-fun b_free!92831 () Bool)

(declare-fun b_next!93535 () Bool)

(assert (=> b!3594047 (= b_free!92831 (not b_next!93535))))

(declare-fun tp!1099982 () Bool)

(declare-fun b_and!260289 () Bool)

(assert (=> b!3594047 (= tp!1099982 b_and!260289)))

(declare-fun b!3594029 () Bool)

(declare-fun b_free!92833 () Bool)

(declare-fun b_next!93537 () Bool)

(assert (=> b!3594029 (= b_free!92833 (not b_next!93537))))

(declare-fun tp!1099985 () Bool)

(declare-fun b_and!260291 () Bool)

(assert (=> b!3594029 (= tp!1099985 b_and!260291)))

(declare-fun b_free!92835 () Bool)

(declare-fun b_next!93539 () Bool)

(assert (=> b!3594029 (= b_free!92835 (not b_next!93539))))

(declare-fun tp!1099987 () Bool)

(declare-fun b_and!260293 () Bool)

(assert (=> b!3594029 (= tp!1099987 b_and!260293)))

(declare-fun b!3594038 () Bool)

(declare-fun b_free!92837 () Bool)

(declare-fun b_next!93541 () Bool)

(assert (=> b!3594038 (= b_free!92837 (not b_next!93541))))

(declare-fun tp!1099981 () Bool)

(declare-fun b_and!260295 () Bool)

(assert (=> b!3594038 (= tp!1099981 b_and!260295)))

(declare-fun b_free!92839 () Bool)

(declare-fun b_next!93543 () Bool)

(assert (=> b!3594038 (= b_free!92839 (not b_next!93543))))

(declare-fun tp!1099986 () Bool)

(declare-fun b_and!260297 () Bool)

(assert (=> b!3594038 (= tp!1099986 b_and!260297)))

(declare-fun b!3594017 () Bool)

(declare-fun e!2223956 () Bool)

(declare-datatypes ((List!37919 0))(
  ( (Nil!37795) (Cons!37795 (h!43215 (_ BitVec 16)) (t!291410 List!37919)) )
))
(declare-datatypes ((TokenValue!5818 0))(
  ( (FloatLiteralValue!11636 (text!41171 List!37919)) (TokenValueExt!5817 (__x!23853 Int)) (Broken!29090 (value!179692 List!37919)) (Object!5941) (End!5818) (Def!5818) (Underscore!5818) (Match!5818) (Else!5818) (Error!5818) (Case!5818) (If!5818) (Extends!5818) (Abstract!5818) (Class!5818) (Val!5818) (DelimiterValue!11636 (del!5878 List!37919)) (KeywordValue!5824 (value!179693 List!37919)) (CommentValue!11636 (value!179694 List!37919)) (WhitespaceValue!11636 (value!179695 List!37919)) (IndentationValue!5818 (value!179696 List!37919)) (String!42423) (Int32!5818) (Broken!29091 (value!179697 List!37919)) (Boolean!5819) (Unit!53800) (OperatorValue!5821 (op!5878 List!37919)) (IdentifierValue!11636 (value!179698 List!37919)) (IdentifierValue!11637 (value!179699 List!37919)) (WhitespaceValue!11637 (value!179700 List!37919)) (True!11636) (False!11636) (Broken!29092 (value!179701 List!37919)) (Broken!29093 (value!179702 List!37919)) (True!11637) (RightBrace!5818) (RightBracket!5818) (Colon!5818) (Null!5818) (Comma!5818) (LeftBracket!5818) (False!11637) (LeftBrace!5818) (ImaginaryLiteralValue!5818 (text!41172 List!37919)) (StringLiteralValue!17454 (value!179703 List!37919)) (EOFValue!5818 (value!179704 List!37919)) (IdentValue!5818 (value!179705 List!37919)) (DelimiterValue!11637 (value!179706 List!37919)) (DedentValue!5818 (value!179707 List!37919)) (NewLineValue!5818 (value!179708 List!37919)) (IntegerValue!17454 (value!179709 (_ BitVec 32)) (text!41173 List!37919)) (IntegerValue!17455 (value!179710 Int) (text!41174 List!37919)) (Times!5818) (Or!5818) (Equal!5818) (Minus!5818) (Broken!29094 (value!179711 List!37919)) (And!5818) (Div!5818) (LessEqual!5818) (Mod!5818) (Concat!16165) (Not!5818) (Plus!5818) (SpaceValue!5818 (value!179712 List!37919)) (IntegerValue!17456 (value!179713 Int) (text!41175 List!37919)) (StringLiteralValue!17455 (text!41176 List!37919)) (FloatLiteralValue!11637 (text!41177 List!37919)) (BytesLiteralValue!5818 (value!179714 List!37919)) (CommentValue!11637 (value!179715 List!37919)) (StringLiteralValue!17456 (value!179716 List!37919)) (ErrorTokenValue!5818 (msg!5879 List!37919)) )
))
(declare-datatypes ((C!20880 0))(
  ( (C!20881 (val!12488 Int)) )
))
(declare-datatypes ((Regex!10347 0))(
  ( (ElementMatch!10347 (c!622248 C!20880)) (Concat!16166 (regOne!21206 Regex!10347) (regTwo!21206 Regex!10347)) (EmptyExpr!10347) (Star!10347 (reg!10676 Regex!10347)) (EmptyLang!10347) (Union!10347 (regOne!21207 Regex!10347) (regTwo!21207 Regex!10347)) )
))
(declare-datatypes ((String!42424 0))(
  ( (String!42425 (value!179717 String)) )
))
(declare-datatypes ((List!37920 0))(
  ( (Nil!37796) (Cons!37796 (h!43216 C!20880) (t!291411 List!37920)) )
))
(declare-datatypes ((IArray!23007 0))(
  ( (IArray!23008 (innerList!11561 List!37920)) )
))
(declare-datatypes ((Conc!11501 0))(
  ( (Node!11501 (left!29529 Conc!11501) (right!29859 Conc!11501) (csize!23232 Int) (cheight!11712 Int)) (Leaf!17906 (xs!14703 IArray!23007) (csize!23233 Int)) (Empty!11501) )
))
(declare-datatypes ((BalanceConc!22616 0))(
  ( (BalanceConc!22617 (c!622249 Conc!11501)) )
))
(declare-datatypes ((TokenValueInjection!11064 0))(
  ( (TokenValueInjection!11065 (toValue!7872 Int) (toChars!7731 Int)) )
))
(declare-datatypes ((Rule!10976 0))(
  ( (Rule!10977 (regex!5588 Regex!10347) (tag!6266 String!42424) (isSeparator!5588 Bool) (transformation!5588 TokenValueInjection!11064)) )
))
(declare-datatypes ((Token!10542 0))(
  ( (Token!10543 (value!179718 TokenValue!5818) (rule!8310 Rule!10976) (size!28794 Int) (originalCharacters!6302 List!37920)) )
))
(declare-datatypes ((tuple2!37680 0))(
  ( (tuple2!37681 (_1!21974 Token!10542) (_2!21974 List!37920)) )
))
(declare-fun lt!1233551 () tuple2!37680)

(declare-fun lt!1233547 () Rule!10976)

(assert (=> b!3594017 (= e!2223956 (= (rule!8310 (_1!21974 lt!1233551)) lt!1233547))))

(declare-fun b!3594018 () Bool)

(declare-fun e!2223935 () Bool)

(declare-fun lt!1233541 () List!37920)

(declare-fun lt!1233550 () Int)

(declare-fun size!28795 (List!37920) Int)

(assert (=> b!3594018 (= e!2223935 (>= (size!28795 lt!1233541) lt!1233550))))

(declare-fun b!3594019 () Bool)

(declare-fun e!2223949 () Bool)

(declare-fun e!2223941 () Bool)

(assert (=> b!3594019 (= e!2223949 (not e!2223941))))

(declare-fun res!1451484 () Bool)

(assert (=> b!3594019 (=> res!1451484 e!2223941)))

(declare-fun rule!403 () Rule!10976)

(declare-fun lt!1233554 () List!37920)

(declare-fun matchR!4916 (Regex!10347 List!37920) Bool)

(assert (=> b!3594019 (= res!1451484 (not (matchR!4916 (regex!5588 rule!403) lt!1233554)))))

(declare-datatypes ((LexerInterface!5177 0))(
  ( (LexerInterfaceExt!5174 (__x!23854 Int)) (Lexer!5175) )
))
(declare-fun thiss!23823 () LexerInterface!5177)

(declare-fun ruleValid!1853 (LexerInterface!5177 Rule!10976) Bool)

(assert (=> b!3594019 (ruleValid!1853 thiss!23823 rule!403)))

(declare-datatypes ((List!37921 0))(
  ( (Nil!37797) (Cons!37797 (h!43217 Rule!10976) (t!291412 List!37921)) )
))
(declare-fun rules!3307 () List!37921)

(declare-datatypes ((Unit!53801 0))(
  ( (Unit!53802) )
))
(declare-fun lt!1233546 () Unit!53801)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1008 (LexerInterface!5177 Rule!10976 List!37921) Unit!53801)

(assert (=> b!3594019 (= lt!1233546 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1008 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3594020 () Bool)

(declare-fun res!1451474 () Bool)

(declare-fun e!2223936 () Bool)

(assert (=> b!3594020 (=> (not res!1451474) (not e!2223936))))

(declare-fun anOtherTypeRule!33 () Rule!10976)

(assert (=> b!3594020 (= res!1451474 (not (= (isSeparator!5588 anOtherTypeRule!33) (isSeparator!5588 rule!403))))))

(declare-fun b!3594021 () Bool)

(declare-fun res!1451486 () Bool)

(assert (=> b!3594021 (=> (not res!1451486) (not e!2223936))))

(declare-fun contains!7239 (List!37921 Rule!10976) Bool)

(assert (=> b!3594021 (= res!1451486 (contains!7239 rules!3307 anOtherTypeRule!33))))

(declare-fun e!2223940 () Bool)

(declare-fun b!3594023 () Bool)

(declare-fun tp!1099976 () Bool)

(declare-fun e!2223942 () Bool)

(declare-fun inv!51140 (String!42424) Bool)

(declare-fun inv!51143 (TokenValueInjection!11064) Bool)

(assert (=> b!3594023 (= e!2223942 (and tp!1099976 (inv!51140 (tag!6266 (h!43217 rules!3307))) (inv!51143 (transformation!5588 (h!43217 rules!3307))) e!2223940))))

(declare-fun b!3594024 () Bool)

(declare-fun e!2223958 () Bool)

(declare-fun tp!1099980 () Bool)

(assert (=> b!3594024 (= e!2223958 (and e!2223942 tp!1099980))))

(declare-fun b!3594025 () Bool)

(declare-fun e!2223945 () Bool)

(assert (=> b!3594025 (= e!2223941 e!2223945)))

(declare-fun res!1451473 () Bool)

(assert (=> b!3594025 (=> res!1451473 e!2223945)))

(declare-fun lt!1233539 () C!20880)

(declare-fun contains!7240 (List!37920 C!20880) Bool)

(declare-fun usedCharacters!802 (Regex!10347) List!37920)

(assert (=> b!3594025 (= res!1451473 (contains!7240 (usedCharacters!802 (regex!5588 rule!403)) lt!1233539))))

(declare-fun suffix!1395 () List!37920)

(declare-fun head!7518 (List!37920) C!20880)

(assert (=> b!3594025 (= lt!1233539 (head!7518 suffix!1395))))

(declare-fun b!3594026 () Bool)

(declare-fun res!1451470 () Bool)

(assert (=> b!3594026 (=> res!1451470 e!2223945)))

(declare-fun sepAndNonSepRulesDisjointChars!1758 (List!37921 List!37921) Bool)

(assert (=> b!3594026 (= res!1451470 (not (sepAndNonSepRulesDisjointChars!1758 rules!3307 rules!3307)))))

(declare-fun b!3594027 () Bool)

(declare-fun res!1451467 () Bool)

(assert (=> b!3594027 (=> (not res!1451467) (not e!2223949))))

(declare-fun token!511 () Token!10542)

(assert (=> b!3594027 (= res!1451467 (= (rule!8310 token!511) rule!403))))

(declare-fun tp!1099989 () Bool)

(declare-fun e!2223934 () Bool)

(declare-fun b!3594028 () Bool)

(declare-fun e!2223957 () Bool)

(assert (=> b!3594028 (= e!2223934 (and tp!1099989 (inv!51140 (tag!6266 (rule!8310 token!511))) (inv!51143 (transformation!5588 (rule!8310 token!511))) e!2223957))))

(declare-fun e!2223939 () Bool)

(assert (=> b!3594029 (= e!2223939 (and tp!1099985 tp!1099987))))

(declare-fun b!3594030 () Bool)

(declare-fun res!1451476 () Bool)

(assert (=> b!3594030 (=> (not res!1451476) (not e!2223949))))

(declare-fun lt!1233549 () tuple2!37680)

(declare-fun isEmpty!22282 (List!37920) Bool)

(assert (=> b!3594030 (= res!1451476 (isEmpty!22282 (_2!21974 lt!1233549)))))

(declare-fun b!3594031 () Bool)

(declare-fun res!1451482 () Bool)

(declare-fun e!2223937 () Bool)

(assert (=> b!3594031 (=> res!1451482 e!2223937)))

(declare-fun lt!1233538 () List!37920)

(assert (=> b!3594031 (= res!1451482 (not (matchR!4916 (regex!5588 (rule!8310 (_1!21974 lt!1233551))) lt!1233538)))))

(declare-fun b!3594032 () Bool)

(assert (=> b!3594032 (= e!2223945 e!2223937)))

(declare-fun res!1451481 () Bool)

(assert (=> b!3594032 (=> res!1451481 e!2223937)))

(declare-fun isPrefix!2951 (List!37920 List!37920) Bool)

(assert (=> b!3594032 (= res!1451481 (not (isPrefix!2951 lt!1233538 lt!1233541)))))

(declare-fun ++!9404 (List!37920 List!37920) List!37920)

(assert (=> b!3594032 (isPrefix!2951 lt!1233538 (++!9404 lt!1233538 (_2!21974 lt!1233551)))))

(declare-fun lt!1233536 () Unit!53801)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1872 (List!37920 List!37920) Unit!53801)

(assert (=> b!3594032 (= lt!1233536 (lemmaConcatTwoListThenFirstIsPrefix!1872 lt!1233538 (_2!21974 lt!1233551)))))

(declare-fun lt!1233543 () BalanceConc!22616)

(declare-fun list!13908 (BalanceConc!22616) List!37920)

(assert (=> b!3594032 (= lt!1233538 (list!13908 lt!1233543))))

(declare-fun charsOf!3602 (Token!10542) BalanceConc!22616)

(assert (=> b!3594032 (= lt!1233543 (charsOf!3602 (_1!21974 lt!1233551)))))

(declare-fun e!2223953 () Bool)

(assert (=> b!3594032 e!2223953))

(declare-fun res!1451472 () Bool)

(assert (=> b!3594032 (=> (not res!1451472) (not e!2223953))))

(declare-datatypes ((Option!7806 0))(
  ( (None!7805) (Some!7805 (v!37491 Rule!10976)) )
))
(declare-fun lt!1233540 () Option!7806)

(declare-fun isDefined!6038 (Option!7806) Bool)

(assert (=> b!3594032 (= res!1451472 (isDefined!6038 lt!1233540))))

(declare-fun getRuleFromTag!1194 (LexerInterface!5177 List!37921 String!42424) Option!7806)

(assert (=> b!3594032 (= lt!1233540 (getRuleFromTag!1194 thiss!23823 rules!3307 (tag!6266 (rule!8310 (_1!21974 lt!1233551)))))))

(declare-fun lt!1233557 () Unit!53801)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1194 (LexerInterface!5177 List!37921 List!37920 Token!10542) Unit!53801)

(assert (=> b!3594032 (= lt!1233557 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1194 thiss!23823 rules!3307 lt!1233541 (_1!21974 lt!1233551)))))

(declare-datatypes ((Option!7807 0))(
  ( (None!7806) (Some!7806 (v!37492 tuple2!37680)) )
))
(declare-fun lt!1233553 () Option!7807)

(declare-fun get!12210 (Option!7807) tuple2!37680)

(assert (=> b!3594032 (= lt!1233551 (get!12210 lt!1233553))))

(declare-fun lt!1233542 () Unit!53801)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!857 (LexerInterface!5177 List!37921 List!37920 List!37920) Unit!53801)

(assert (=> b!3594032 (= lt!1233542 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!857 thiss!23823 rules!3307 lt!1233554 suffix!1395))))

(declare-fun maxPrefix!2711 (LexerInterface!5177 List!37921 List!37920) Option!7807)

(assert (=> b!3594032 (= lt!1233553 (maxPrefix!2711 thiss!23823 rules!3307 lt!1233541))))

(assert (=> b!3594032 (isPrefix!2951 lt!1233554 lt!1233541)))

(declare-fun lt!1233556 () Unit!53801)

(assert (=> b!3594032 (= lt!1233556 (lemmaConcatTwoListThenFirstIsPrefix!1872 lt!1233554 suffix!1395))))

(assert (=> b!3594032 (= lt!1233541 (++!9404 lt!1233554 suffix!1395))))

(declare-fun b!3594033 () Bool)

(declare-fun e!2223933 () Bool)

(declare-fun e!2223938 () Bool)

(declare-fun tp!1099978 () Bool)

(assert (=> b!3594033 (= e!2223938 (and tp!1099978 (inv!51140 (tag!6266 rule!403)) (inv!51143 (transformation!5588 rule!403)) e!2223933))))

(declare-fun b!3594034 () Bool)

(declare-fun e!2223947 () Bool)

(assert (=> b!3594034 (= e!2223936 e!2223947)))

(declare-fun res!1451487 () Bool)

(assert (=> b!3594034 (=> (not res!1451487) (not e!2223947))))

(declare-fun lt!1233558 () Option!7807)

(declare-fun isDefined!6039 (Option!7807) Bool)

(assert (=> b!3594034 (= res!1451487 (isDefined!6039 lt!1233558))))

(assert (=> b!3594034 (= lt!1233558 (maxPrefix!2711 thiss!23823 rules!3307 lt!1233554))))

(assert (=> b!3594034 (= lt!1233554 (list!13908 (charsOf!3602 token!511)))))

(assert (=> b!3594035 (= e!2223933 (and tp!1099979 tp!1099990))))

(declare-fun b!3594036 () Bool)

(assert (=> b!3594036 (= e!2223953 e!2223956)))

(declare-fun res!1451475 () Bool)

(assert (=> b!3594036 (=> (not res!1451475) (not e!2223956))))

(assert (=> b!3594036 (= res!1451475 (matchR!4916 (regex!5588 lt!1233547) (list!13908 (charsOf!3602 (_1!21974 lt!1233551)))))))

(declare-fun get!12211 (Option!7806) Rule!10976)

(assert (=> b!3594036 (= lt!1233547 (get!12211 lt!1233540))))

(declare-fun b!3594037 () Bool)

(declare-fun res!1451479 () Bool)

(assert (=> b!3594037 (=> (not res!1451479) (not e!2223936))))

(assert (=> b!3594037 (= res!1451479 (contains!7239 rules!3307 rule!403))))

(assert (=> b!3594038 (= e!2223957 (and tp!1099981 tp!1099986))))

(declare-fun b!3594039 () Bool)

(declare-fun e!2223950 () Bool)

(assert (=> b!3594039 (= e!2223937 e!2223950)))

(declare-fun res!1451471 () Bool)

(assert (=> b!3594039 (=> res!1451471 e!2223950)))

(declare-fun apply!9094 (TokenValueInjection!11064 BalanceConc!22616) TokenValue!5818)

(declare-fun size!28796 (BalanceConc!22616) Int)

(assert (=> b!3594039 (= res!1451471 (not (= lt!1233553 (Some!7806 (tuple2!37681 (Token!10543 (apply!9094 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))) lt!1233543) (rule!8310 (_1!21974 lt!1233551)) (size!28796 lt!1233543) lt!1233538) (_2!21974 lt!1233551))))))))

(declare-fun lt!1233548 () Unit!53801)

(declare-fun lemmaCharactersSize!641 (Token!10542) Unit!53801)

(assert (=> b!3594039 (= lt!1233548 (lemmaCharactersSize!641 (_1!21974 lt!1233551)))))

(declare-fun lt!1233555 () Unit!53801)

(declare-fun lemmaEqSameImage!779 (TokenValueInjection!11064 BalanceConc!22616 BalanceConc!22616) Unit!53801)

(declare-fun seqFromList!4141 (List!37920) BalanceConc!22616)

(assert (=> b!3594039 (= lt!1233555 (lemmaEqSameImage!779 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))) lt!1233543 (seqFromList!4141 (originalCharacters!6302 (_1!21974 lt!1233551)))))))

(declare-fun lt!1233545 () Unit!53801)

(declare-fun lemmaSemiInverse!1345 (TokenValueInjection!11064 BalanceConc!22616) Unit!53801)

(assert (=> b!3594039 (= lt!1233545 (lemmaSemiInverse!1345 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))) lt!1233543))))

(declare-fun res!1451477 () Bool)

(assert (=> start!333690 (=> (not res!1451477) (not e!2223936))))

(get-info :version)

(assert (=> start!333690 (= res!1451477 ((_ is Lexer!5175) thiss!23823))))

(assert (=> start!333690 e!2223936))

(assert (=> start!333690 e!2223958))

(declare-fun e!2223948 () Bool)

(assert (=> start!333690 e!2223948))

(assert (=> start!333690 true))

(declare-fun e!2223951 () Bool)

(declare-fun inv!51144 (Token!10542) Bool)

(assert (=> start!333690 (and (inv!51144 token!511) e!2223951)))

(assert (=> start!333690 e!2223938))

(declare-fun e!2223943 () Bool)

(assert (=> start!333690 e!2223943))

(declare-fun b!3594022 () Bool)

(declare-fun tp!1099977 () Bool)

(declare-fun inv!21 (TokenValue!5818) Bool)

(assert (=> b!3594022 (= e!2223951 (and (inv!21 (value!179718 token!511)) e!2223934 tp!1099977))))

(declare-fun b!3594040 () Bool)

(declare-fun res!1451478 () Bool)

(assert (=> b!3594040 (=> (not res!1451478) (not e!2223936))))

(declare-fun isEmpty!22283 (List!37921) Bool)

(assert (=> b!3594040 (= res!1451478 (not (isEmpty!22283 rules!3307)))))

(declare-fun b!3594041 () Bool)

(declare-fun tp_is_empty!17777 () Bool)

(declare-fun tp!1099984 () Bool)

(assert (=> b!3594041 (= e!2223948 (and tp_is_empty!17777 tp!1099984))))

(declare-fun b!3594042 () Bool)

(declare-fun res!1451469 () Bool)

(assert (=> b!3594042 (=> res!1451469 e!2223945)))

(assert (=> b!3594042 (= res!1451469 (not (contains!7240 (usedCharacters!802 (regex!5588 anOtherTypeRule!33)) lt!1233539)))))

(declare-fun b!3594043 () Bool)

(assert (=> b!3594043 (= e!2223947 e!2223949)))

(declare-fun res!1451485 () Bool)

(assert (=> b!3594043 (=> (not res!1451485) (not e!2223949))))

(assert (=> b!3594043 (= res!1451485 (= (_1!21974 lt!1233549) token!511))))

(assert (=> b!3594043 (= lt!1233549 (get!12210 lt!1233558))))

(declare-fun b!3594044 () Bool)

(declare-fun res!1451468 () Bool)

(assert (=> b!3594044 (=> (not res!1451468) (not e!2223936))))

(declare-fun rulesInvariant!4574 (LexerInterface!5177 List!37921) Bool)

(assert (=> b!3594044 (= res!1451468 (rulesInvariant!4574 thiss!23823 rules!3307))))

(declare-fun b!3594045 () Bool)

(declare-fun tp!1099983 () Bool)

(assert (=> b!3594045 (= e!2223943 (and tp!1099983 (inv!51140 (tag!6266 anOtherTypeRule!33)) (inv!51143 (transformation!5588 anOtherTypeRule!33)) e!2223939))))

(declare-fun b!3594046 () Bool)

(declare-fun res!1451480 () Bool)

(assert (=> b!3594046 (=> res!1451480 e!2223941)))

(assert (=> b!3594046 (= res!1451480 (isEmpty!22282 suffix!1395))))

(assert (=> b!3594047 (= e!2223940 (and tp!1099988 tp!1099982))))

(declare-fun b!3594048 () Bool)

(assert (=> b!3594048 (= e!2223950 e!2223935)))

(declare-fun res!1451483 () Bool)

(assert (=> b!3594048 (=> res!1451483 e!2223935)))

(declare-fun lt!1233537 () List!37920)

(assert (=> b!3594048 (= res!1451483 (not (= lt!1233537 (_2!21974 lt!1233551))))))

(assert (=> b!3594048 (= (_2!21974 lt!1233551) lt!1233537)))

(declare-fun lt!1233535 () Unit!53801)

(declare-fun lemmaSamePrefixThenSameSuffix!1306 (List!37920 List!37920 List!37920 List!37920 List!37920) Unit!53801)

(assert (=> b!3594048 (= lt!1233535 (lemmaSamePrefixThenSameSuffix!1306 lt!1233538 (_2!21974 lt!1233551) lt!1233538 lt!1233537 lt!1233541))))

(declare-fun getSuffix!1526 (List!37920 List!37920) List!37920)

(assert (=> b!3594048 (= lt!1233537 (getSuffix!1526 lt!1233541 lt!1233538))))

(declare-fun lt!1233552 () TokenValue!5818)

(declare-fun maxPrefixOneRule!1855 (LexerInterface!5177 Rule!10976 List!37920) Option!7807)

(assert (=> b!3594048 (= (maxPrefixOneRule!1855 thiss!23823 (rule!8310 (_1!21974 lt!1233551)) lt!1233541) (Some!7806 (tuple2!37681 (Token!10543 lt!1233552 (rule!8310 (_1!21974 lt!1233551)) lt!1233550 lt!1233538) (_2!21974 lt!1233551))))))

(assert (=> b!3594048 (= lt!1233550 (size!28795 lt!1233538))))

(assert (=> b!3594048 (= lt!1233552 (apply!9094 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))) (seqFromList!4141 lt!1233538)))))

(declare-fun lt!1233544 () Unit!53801)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!927 (LexerInterface!5177 List!37921 List!37920 List!37920 List!37920 Rule!10976) Unit!53801)

(assert (=> b!3594048 (= lt!1233544 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!927 thiss!23823 rules!3307 lt!1233538 lt!1233541 (_2!21974 lt!1233551) (rule!8310 (_1!21974 lt!1233551))))))

(assert (= (and start!333690 res!1451477) b!3594040))

(assert (= (and b!3594040 res!1451478) b!3594044))

(assert (= (and b!3594044 res!1451468) b!3594037))

(assert (= (and b!3594037 res!1451479) b!3594021))

(assert (= (and b!3594021 res!1451486) b!3594020))

(assert (= (and b!3594020 res!1451474) b!3594034))

(assert (= (and b!3594034 res!1451487) b!3594043))

(assert (= (and b!3594043 res!1451485) b!3594030))

(assert (= (and b!3594030 res!1451476) b!3594027))

(assert (= (and b!3594027 res!1451467) b!3594019))

(assert (= (and b!3594019 (not res!1451484)) b!3594046))

(assert (= (and b!3594046 (not res!1451480)) b!3594025))

(assert (= (and b!3594025 (not res!1451473)) b!3594042))

(assert (= (and b!3594042 (not res!1451469)) b!3594026))

(assert (= (and b!3594026 (not res!1451470)) b!3594032))

(assert (= (and b!3594032 res!1451472) b!3594036))

(assert (= (and b!3594036 res!1451475) b!3594017))

(assert (= (and b!3594032 (not res!1451481)) b!3594031))

(assert (= (and b!3594031 (not res!1451482)) b!3594039))

(assert (= (and b!3594039 (not res!1451471)) b!3594048))

(assert (= (and b!3594048 (not res!1451483)) b!3594018))

(assert (= b!3594023 b!3594047))

(assert (= b!3594024 b!3594023))

(assert (= (and start!333690 ((_ is Cons!37797) rules!3307)) b!3594024))

(assert (= (and start!333690 ((_ is Cons!37796) suffix!1395)) b!3594041))

(assert (= b!3594028 b!3594038))

(assert (= b!3594022 b!3594028))

(assert (= start!333690 b!3594022))

(assert (= b!3594033 b!3594035))

(assert (= start!333690 b!3594033))

(assert (= b!3594045 b!3594029))

(assert (= start!333690 b!3594045))

(declare-fun m!4088687 () Bool)

(assert (=> b!3594043 m!4088687))

(declare-fun m!4088689 () Bool)

(assert (=> b!3594039 m!4088689))

(declare-fun m!4088691 () Bool)

(assert (=> b!3594039 m!4088691))

(declare-fun m!4088693 () Bool)

(assert (=> b!3594039 m!4088693))

(assert (=> b!3594039 m!4088689))

(declare-fun m!4088695 () Bool)

(assert (=> b!3594039 m!4088695))

(declare-fun m!4088697 () Bool)

(assert (=> b!3594039 m!4088697))

(declare-fun m!4088699 () Bool)

(assert (=> b!3594039 m!4088699))

(declare-fun m!4088701 () Bool)

(assert (=> b!3594040 m!4088701))

(declare-fun m!4088703 () Bool)

(assert (=> b!3594019 m!4088703))

(declare-fun m!4088705 () Bool)

(assert (=> b!3594019 m!4088705))

(declare-fun m!4088707 () Bool)

(assert (=> b!3594019 m!4088707))

(declare-fun m!4088709 () Bool)

(assert (=> b!3594042 m!4088709))

(assert (=> b!3594042 m!4088709))

(declare-fun m!4088711 () Bool)

(assert (=> b!3594042 m!4088711))

(declare-fun m!4088713 () Bool)

(assert (=> b!3594048 m!4088713))

(declare-fun m!4088715 () Bool)

(assert (=> b!3594048 m!4088715))

(assert (=> b!3594048 m!4088713))

(declare-fun m!4088717 () Bool)

(assert (=> b!3594048 m!4088717))

(declare-fun m!4088719 () Bool)

(assert (=> b!3594048 m!4088719))

(declare-fun m!4088721 () Bool)

(assert (=> b!3594048 m!4088721))

(declare-fun m!4088723 () Bool)

(assert (=> b!3594048 m!4088723))

(declare-fun m!4088725 () Bool)

(assert (=> b!3594048 m!4088725))

(declare-fun m!4088727 () Bool)

(assert (=> b!3594044 m!4088727))

(declare-fun m!4088729 () Bool)

(assert (=> b!3594021 m!4088729))

(declare-fun m!4088731 () Bool)

(assert (=> b!3594034 m!4088731))

(declare-fun m!4088733 () Bool)

(assert (=> b!3594034 m!4088733))

(declare-fun m!4088735 () Bool)

(assert (=> b!3594034 m!4088735))

(assert (=> b!3594034 m!4088735))

(declare-fun m!4088737 () Bool)

(assert (=> b!3594034 m!4088737))

(declare-fun m!4088739 () Bool)

(assert (=> b!3594028 m!4088739))

(declare-fun m!4088741 () Bool)

(assert (=> b!3594028 m!4088741))

(declare-fun m!4088743 () Bool)

(assert (=> b!3594018 m!4088743))

(declare-fun m!4088745 () Bool)

(assert (=> b!3594036 m!4088745))

(assert (=> b!3594036 m!4088745))

(declare-fun m!4088747 () Bool)

(assert (=> b!3594036 m!4088747))

(assert (=> b!3594036 m!4088747))

(declare-fun m!4088749 () Bool)

(assert (=> b!3594036 m!4088749))

(declare-fun m!4088751 () Bool)

(assert (=> b!3594036 m!4088751))

(declare-fun m!4088753 () Bool)

(assert (=> b!3594045 m!4088753))

(declare-fun m!4088755 () Bool)

(assert (=> b!3594045 m!4088755))

(declare-fun m!4088757 () Bool)

(assert (=> b!3594030 m!4088757))

(declare-fun m!4088759 () Bool)

(assert (=> start!333690 m!4088759))

(declare-fun m!4088761 () Bool)

(assert (=> b!3594037 m!4088761))

(declare-fun m!4088763 () Bool)

(assert (=> b!3594025 m!4088763))

(assert (=> b!3594025 m!4088763))

(declare-fun m!4088765 () Bool)

(assert (=> b!3594025 m!4088765))

(declare-fun m!4088767 () Bool)

(assert (=> b!3594025 m!4088767))

(declare-fun m!4088769 () Bool)

(assert (=> b!3594032 m!4088769))

(declare-fun m!4088771 () Bool)

(assert (=> b!3594032 m!4088771))

(declare-fun m!4088773 () Bool)

(assert (=> b!3594032 m!4088773))

(declare-fun m!4088775 () Bool)

(assert (=> b!3594032 m!4088775))

(declare-fun m!4088777 () Bool)

(assert (=> b!3594032 m!4088777))

(declare-fun m!4088779 () Bool)

(assert (=> b!3594032 m!4088779))

(assert (=> b!3594032 m!4088745))

(declare-fun m!4088781 () Bool)

(assert (=> b!3594032 m!4088781))

(declare-fun m!4088783 () Bool)

(assert (=> b!3594032 m!4088783))

(declare-fun m!4088785 () Bool)

(assert (=> b!3594032 m!4088785))

(declare-fun m!4088787 () Bool)

(assert (=> b!3594032 m!4088787))

(declare-fun m!4088789 () Bool)

(assert (=> b!3594032 m!4088789))

(declare-fun m!4088791 () Bool)

(assert (=> b!3594032 m!4088791))

(declare-fun m!4088793 () Bool)

(assert (=> b!3594032 m!4088793))

(assert (=> b!3594032 m!4088769))

(declare-fun m!4088795 () Bool)

(assert (=> b!3594032 m!4088795))

(declare-fun m!4088797 () Bool)

(assert (=> b!3594022 m!4088797))

(declare-fun m!4088799 () Bool)

(assert (=> b!3594023 m!4088799))

(declare-fun m!4088801 () Bool)

(assert (=> b!3594023 m!4088801))

(declare-fun m!4088803 () Bool)

(assert (=> b!3594031 m!4088803))

(declare-fun m!4088805 () Bool)

(assert (=> b!3594033 m!4088805))

(declare-fun m!4088807 () Bool)

(assert (=> b!3594033 m!4088807))

(declare-fun m!4088809 () Bool)

(assert (=> b!3594046 m!4088809))

(declare-fun m!4088811 () Bool)

(assert (=> b!3594026 m!4088811))

(check-sat (not b!3594021) (not b!3594019) b_and!260283 (not b_next!93535) (not b!3594034) (not b_next!93533) (not b!3594024) (not b!3594041) (not b!3594045) (not b!3594022) (not b_next!93531) b_and!260287 tp_is_empty!17777 (not b_next!93539) (not b!3594039) b_and!260289 (not b!3594031) (not b!3594042) (not b_next!93529) (not b!3594030) (not b!3594037) b_and!260285 (not b_next!93541) b_and!260295 b_and!260291 (not b!3594018) b_and!260293 (not b!3594043) (not b!3594026) (not b!3594028) (not b!3594048) (not b!3594025) (not start!333690) (not b!3594046) (not b_next!93543) (not b!3594044) (not b!3594033) (not b!3594023) (not b!3594040) b_and!260297 (not b!3594036) (not b_next!93537) (not b!3594032))
(check-sat (not b_next!93539) b_and!260289 b_and!260283 (not b_next!93535) b_and!260293 (not b_next!93533) (not b_next!93543) b_and!260297 (not b_next!93537) (not b_next!93531) b_and!260287 (not b_next!93529) b_and!260285 (not b_next!93541) b_and!260295 b_and!260291)
(get-model)

(declare-fun d!1059291 () Bool)

(declare-fun e!2224071 () Bool)

(assert (=> d!1059291 e!2224071))

(declare-fun c!622296 () Bool)

(assert (=> d!1059291 (= c!622296 ((_ is EmptyExpr!10347) (regex!5588 lt!1233547)))))

(declare-fun lt!1233597 () Bool)

(declare-fun e!2224069 () Bool)

(assert (=> d!1059291 (= lt!1233597 e!2224069)))

(declare-fun c!622295 () Bool)

(assert (=> d!1059291 (= c!622295 (isEmpty!22282 (list!13908 (charsOf!3602 (_1!21974 lt!1233551)))))))

(declare-fun validRegex!4727 (Regex!10347) Bool)

(assert (=> d!1059291 (validRegex!4727 (regex!5588 lt!1233547))))

(assert (=> d!1059291 (= (matchR!4916 (regex!5588 lt!1233547) (list!13908 (charsOf!3602 (_1!21974 lt!1233551)))) lt!1233597)))

(declare-fun b!3594255 () Bool)

(declare-fun res!1451615 () Bool)

(declare-fun e!2224072 () Bool)

(assert (=> b!3594255 (=> (not res!1451615) (not e!2224072))))

(declare-fun call!260089 () Bool)

(assert (=> b!3594255 (= res!1451615 (not call!260089))))

(declare-fun b!3594256 () Bool)

(declare-fun e!2224070 () Bool)

(assert (=> b!3594256 (= e!2224070 (not (= (head!7518 (list!13908 (charsOf!3602 (_1!21974 lt!1233551)))) (c!622248 (regex!5588 lt!1233547)))))))

(declare-fun b!3594257 () Bool)

(assert (=> b!3594257 (= e!2224072 (= (head!7518 (list!13908 (charsOf!3602 (_1!21974 lt!1233551)))) (c!622248 (regex!5588 lt!1233547))))))

(declare-fun bm!260084 () Bool)

(assert (=> bm!260084 (= call!260089 (isEmpty!22282 (list!13908 (charsOf!3602 (_1!21974 lt!1233551)))))))

(declare-fun b!3594258 () Bool)

(declare-fun e!2224073 () Bool)

(assert (=> b!3594258 (= e!2224071 e!2224073)))

(declare-fun c!622297 () Bool)

(assert (=> b!3594258 (= c!622297 ((_ is EmptyLang!10347) (regex!5588 lt!1233547)))))

(declare-fun b!3594259 () Bool)

(assert (=> b!3594259 (= e!2224071 (= lt!1233597 call!260089))))

(declare-fun b!3594260 () Bool)

(declare-fun res!1451609 () Bool)

(assert (=> b!3594260 (=> res!1451609 e!2224070)))

(declare-fun tail!5569 (List!37920) List!37920)

(assert (=> b!3594260 (= res!1451609 (not (isEmpty!22282 (tail!5569 (list!13908 (charsOf!3602 (_1!21974 lt!1233551)))))))))

(declare-fun b!3594261 () Bool)

(declare-fun e!2224074 () Bool)

(declare-fun e!2224075 () Bool)

(assert (=> b!3594261 (= e!2224074 e!2224075)))

(declare-fun res!1451613 () Bool)

(assert (=> b!3594261 (=> (not res!1451613) (not e!2224075))))

(assert (=> b!3594261 (= res!1451613 (not lt!1233597))))

(declare-fun b!3594262 () Bool)

(declare-fun nullable!3571 (Regex!10347) Bool)

(assert (=> b!3594262 (= e!2224069 (nullable!3571 (regex!5588 lt!1233547)))))

(declare-fun b!3594263 () Bool)

(assert (=> b!3594263 (= e!2224073 (not lt!1233597))))

(declare-fun b!3594264 () Bool)

(declare-fun res!1451610 () Bool)

(assert (=> b!3594264 (=> (not res!1451610) (not e!2224072))))

(assert (=> b!3594264 (= res!1451610 (isEmpty!22282 (tail!5569 (list!13908 (charsOf!3602 (_1!21974 lt!1233551))))))))

(declare-fun b!3594265 () Bool)

(declare-fun res!1451614 () Bool)

(assert (=> b!3594265 (=> res!1451614 e!2224074)))

(assert (=> b!3594265 (= res!1451614 (not ((_ is ElementMatch!10347) (regex!5588 lt!1233547))))))

(assert (=> b!3594265 (= e!2224073 e!2224074)))

(declare-fun b!3594266 () Bool)

(assert (=> b!3594266 (= e!2224075 e!2224070)))

(declare-fun res!1451612 () Bool)

(assert (=> b!3594266 (=> res!1451612 e!2224070)))

(assert (=> b!3594266 (= res!1451612 call!260089)))

(declare-fun b!3594267 () Bool)

(declare-fun derivativeStep!3120 (Regex!10347 C!20880) Regex!10347)

(assert (=> b!3594267 (= e!2224069 (matchR!4916 (derivativeStep!3120 (regex!5588 lt!1233547) (head!7518 (list!13908 (charsOf!3602 (_1!21974 lt!1233551))))) (tail!5569 (list!13908 (charsOf!3602 (_1!21974 lt!1233551))))))))

(declare-fun b!3594268 () Bool)

(declare-fun res!1451611 () Bool)

(assert (=> b!3594268 (=> res!1451611 e!2224074)))

(assert (=> b!3594268 (= res!1451611 e!2224072)))

(declare-fun res!1451608 () Bool)

(assert (=> b!3594268 (=> (not res!1451608) (not e!2224072))))

(assert (=> b!3594268 (= res!1451608 lt!1233597)))

(assert (= (and d!1059291 c!622295) b!3594262))

(assert (= (and d!1059291 (not c!622295)) b!3594267))

(assert (= (and d!1059291 c!622296) b!3594259))

(assert (= (and d!1059291 (not c!622296)) b!3594258))

(assert (= (and b!3594258 c!622297) b!3594263))

(assert (= (and b!3594258 (not c!622297)) b!3594265))

(assert (= (and b!3594265 (not res!1451614)) b!3594268))

(assert (= (and b!3594268 res!1451608) b!3594255))

(assert (= (and b!3594255 res!1451615) b!3594264))

(assert (= (and b!3594264 res!1451610) b!3594257))

(assert (= (and b!3594268 (not res!1451611)) b!3594261))

(assert (= (and b!3594261 res!1451613) b!3594266))

(assert (= (and b!3594266 (not res!1451612)) b!3594260))

(assert (= (and b!3594260 (not res!1451609)) b!3594256))

(assert (= (or b!3594259 b!3594255 b!3594266) bm!260084))

(assert (=> bm!260084 m!4088747))

(declare-fun m!4088955 () Bool)

(assert (=> bm!260084 m!4088955))

(assert (=> b!3594267 m!4088747))

(declare-fun m!4088957 () Bool)

(assert (=> b!3594267 m!4088957))

(assert (=> b!3594267 m!4088957))

(declare-fun m!4088959 () Bool)

(assert (=> b!3594267 m!4088959))

(assert (=> b!3594267 m!4088747))

(declare-fun m!4088961 () Bool)

(assert (=> b!3594267 m!4088961))

(assert (=> b!3594267 m!4088959))

(assert (=> b!3594267 m!4088961))

(declare-fun m!4088963 () Bool)

(assert (=> b!3594267 m!4088963))

(assert (=> d!1059291 m!4088747))

(assert (=> d!1059291 m!4088955))

(declare-fun m!4088965 () Bool)

(assert (=> d!1059291 m!4088965))

(assert (=> b!3594264 m!4088747))

(assert (=> b!3594264 m!4088961))

(assert (=> b!3594264 m!4088961))

(declare-fun m!4088967 () Bool)

(assert (=> b!3594264 m!4088967))

(declare-fun m!4088969 () Bool)

(assert (=> b!3594262 m!4088969))

(assert (=> b!3594257 m!4088747))

(assert (=> b!3594257 m!4088957))

(assert (=> b!3594256 m!4088747))

(assert (=> b!3594256 m!4088957))

(assert (=> b!3594260 m!4088747))

(assert (=> b!3594260 m!4088961))

(assert (=> b!3594260 m!4088961))

(assert (=> b!3594260 m!4088967))

(assert (=> b!3594036 d!1059291))

(declare-fun d!1059317 () Bool)

(declare-fun list!13910 (Conc!11501) List!37920)

(assert (=> d!1059317 (= (list!13908 (charsOf!3602 (_1!21974 lt!1233551))) (list!13910 (c!622249 (charsOf!3602 (_1!21974 lt!1233551)))))))

(declare-fun bs!570336 () Bool)

(assert (= bs!570336 d!1059317))

(declare-fun m!4088971 () Bool)

(assert (=> bs!570336 m!4088971))

(assert (=> b!3594036 d!1059317))

(declare-fun d!1059319 () Bool)

(declare-fun lt!1233600 () BalanceConc!22616)

(assert (=> d!1059319 (= (list!13908 lt!1233600) (originalCharacters!6302 (_1!21974 lt!1233551)))))

(declare-fun dynLambda!16268 (Int TokenValue!5818) BalanceConc!22616)

(assert (=> d!1059319 (= lt!1233600 (dynLambda!16268 (toChars!7731 (transformation!5588 (rule!8310 (_1!21974 lt!1233551)))) (value!179718 (_1!21974 lt!1233551))))))

(assert (=> d!1059319 (= (charsOf!3602 (_1!21974 lt!1233551)) lt!1233600)))

(declare-fun b_lambda!106209 () Bool)

(assert (=> (not b_lambda!106209) (not d!1059319)))

(declare-fun tb!205273 () Bool)

(declare-fun t!291430 () Bool)

(assert (=> (and b!3594035 (= (toChars!7731 (transformation!5588 rule!403)) (toChars!7731 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291430) tb!205273))

(declare-fun b!3594273 () Bool)

(declare-fun e!2224078 () Bool)

(declare-fun tp!1099997 () Bool)

(declare-fun inv!51147 (Conc!11501) Bool)

(assert (=> b!3594273 (= e!2224078 (and (inv!51147 (c!622249 (dynLambda!16268 (toChars!7731 (transformation!5588 (rule!8310 (_1!21974 lt!1233551)))) (value!179718 (_1!21974 lt!1233551))))) tp!1099997))))

(declare-fun result!250256 () Bool)

(declare-fun inv!51148 (BalanceConc!22616) Bool)

(assert (=> tb!205273 (= result!250256 (and (inv!51148 (dynLambda!16268 (toChars!7731 (transformation!5588 (rule!8310 (_1!21974 lt!1233551)))) (value!179718 (_1!21974 lt!1233551)))) e!2224078))))

(assert (= tb!205273 b!3594273))

(declare-fun m!4088973 () Bool)

(assert (=> b!3594273 m!4088973))

(declare-fun m!4088975 () Bool)

(assert (=> tb!205273 m!4088975))

(assert (=> d!1059319 t!291430))

(declare-fun b_and!260323 () Bool)

(assert (= b_and!260285 (and (=> t!291430 result!250256) b_and!260323)))

(declare-fun tb!205275 () Bool)

(declare-fun t!291432 () Bool)

(assert (=> (and b!3594047 (= (toChars!7731 (transformation!5588 (h!43217 rules!3307))) (toChars!7731 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291432) tb!205275))

(declare-fun result!250260 () Bool)

(assert (= result!250260 result!250256))

(assert (=> d!1059319 t!291432))

(declare-fun b_and!260325 () Bool)

(assert (= b_and!260289 (and (=> t!291432 result!250260) b_and!260325)))

(declare-fun tb!205277 () Bool)

(declare-fun t!291434 () Bool)

(assert (=> (and b!3594029 (= (toChars!7731 (transformation!5588 anOtherTypeRule!33)) (toChars!7731 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291434) tb!205277))

(declare-fun result!250262 () Bool)

(assert (= result!250262 result!250256))

(assert (=> d!1059319 t!291434))

(declare-fun b_and!260327 () Bool)

(assert (= b_and!260293 (and (=> t!291434 result!250262) b_and!260327)))

(declare-fun t!291436 () Bool)

(declare-fun tb!205279 () Bool)

(assert (=> (and b!3594038 (= (toChars!7731 (transformation!5588 (rule!8310 token!511))) (toChars!7731 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291436) tb!205279))

(declare-fun result!250264 () Bool)

(assert (= result!250264 result!250256))

(assert (=> d!1059319 t!291436))

(declare-fun b_and!260329 () Bool)

(assert (= b_and!260297 (and (=> t!291436 result!250264) b_and!260329)))

(declare-fun m!4088977 () Bool)

(assert (=> d!1059319 m!4088977))

(declare-fun m!4088979 () Bool)

(assert (=> d!1059319 m!4088979))

(assert (=> b!3594036 d!1059319))

(declare-fun d!1059321 () Bool)

(assert (=> d!1059321 (= (get!12211 lt!1233540) (v!37491 lt!1233540))))

(assert (=> b!3594036 d!1059321))

(declare-fun d!1059323 () Bool)

(declare-fun lt!1233603 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5380 (List!37921) (InoxSet Rule!10976))

(assert (=> d!1059323 (= lt!1233603 (select (content!5380 rules!3307) rule!403))))

(declare-fun e!2224083 () Bool)

(assert (=> d!1059323 (= lt!1233603 e!2224083)))

(declare-fun res!1451620 () Bool)

(assert (=> d!1059323 (=> (not res!1451620) (not e!2224083))))

(assert (=> d!1059323 (= res!1451620 ((_ is Cons!37797) rules!3307))))

(assert (=> d!1059323 (= (contains!7239 rules!3307 rule!403) lt!1233603)))

(declare-fun b!3594278 () Bool)

(declare-fun e!2224084 () Bool)

(assert (=> b!3594278 (= e!2224083 e!2224084)))

(declare-fun res!1451621 () Bool)

(assert (=> b!3594278 (=> res!1451621 e!2224084)))

(assert (=> b!3594278 (= res!1451621 (= (h!43217 rules!3307) rule!403))))

(declare-fun b!3594279 () Bool)

(assert (=> b!3594279 (= e!2224084 (contains!7239 (t!291412 rules!3307) rule!403))))

(assert (= (and d!1059323 res!1451620) b!3594278))

(assert (= (and b!3594278 (not res!1451621)) b!3594279))

(declare-fun m!4088981 () Bool)

(assert (=> d!1059323 m!4088981))

(declare-fun m!4088983 () Bool)

(assert (=> d!1059323 m!4088983))

(declare-fun m!4088985 () Bool)

(assert (=> b!3594279 m!4088985))

(assert (=> b!3594037 d!1059323))

(declare-fun b!3594337 () Bool)

(declare-fun e!2224119 () Bool)

(assert (=> b!3594337 (= e!2224119 true)))

(declare-fun d!1059325 () Bool)

(assert (=> d!1059325 e!2224119))

(assert (= d!1059325 b!3594337))

(declare-fun lambda!123888 () Int)

(declare-fun order!20533 () Int)

(declare-fun order!20531 () Int)

(declare-fun dynLambda!16270 (Int Int) Int)

(declare-fun dynLambda!16271 (Int Int) Int)

(assert (=> b!3594337 (< (dynLambda!16270 order!20531 (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) (dynLambda!16271 order!20533 lambda!123888))))

(declare-fun order!20535 () Int)

(declare-fun dynLambda!16272 (Int Int) Int)

(assert (=> b!3594337 (< (dynLambda!16272 order!20535 (toChars!7731 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) (dynLambda!16271 order!20533 lambda!123888))))

(declare-fun dynLambda!16273 (Int BalanceConc!22616) TokenValue!5818)

(assert (=> d!1059325 (= (list!13908 (dynLambda!16268 (toChars!7731 (transformation!5588 (rule!8310 (_1!21974 lt!1233551)))) (dynLambda!16273 (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551)))) lt!1233543))) (list!13908 lt!1233543))))

(declare-fun lt!1233637 () Unit!53801)

(declare-fun ForallOf!629 (Int BalanceConc!22616) Unit!53801)

(assert (=> d!1059325 (= lt!1233637 (ForallOf!629 lambda!123888 lt!1233543))))

(assert (=> d!1059325 (= (lemmaSemiInverse!1345 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))) lt!1233543) lt!1233637)))

(declare-fun b_lambda!106215 () Bool)

(assert (=> (not b_lambda!106215) (not d!1059325)))

(declare-fun t!291454 () Bool)

(declare-fun tb!205297 () Bool)

(assert (=> (and b!3594035 (= (toChars!7731 (transformation!5588 rule!403)) (toChars!7731 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291454) tb!205297))

(declare-fun e!2224120 () Bool)

(declare-fun tp!1099998 () Bool)

(declare-fun b!3594338 () Bool)

(assert (=> b!3594338 (= e!2224120 (and (inv!51147 (c!622249 (dynLambda!16268 (toChars!7731 (transformation!5588 (rule!8310 (_1!21974 lt!1233551)))) (dynLambda!16273 (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551)))) lt!1233543)))) tp!1099998))))

(declare-fun result!250284 () Bool)

(assert (=> tb!205297 (= result!250284 (and (inv!51148 (dynLambda!16268 (toChars!7731 (transformation!5588 (rule!8310 (_1!21974 lt!1233551)))) (dynLambda!16273 (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551)))) lt!1233543))) e!2224120))))

(assert (= tb!205297 b!3594338))

(declare-fun m!4089079 () Bool)

(assert (=> b!3594338 m!4089079))

(declare-fun m!4089081 () Bool)

(assert (=> tb!205297 m!4089081))

(assert (=> d!1059325 t!291454))

(declare-fun b_and!260347 () Bool)

(assert (= b_and!260323 (and (=> t!291454 result!250284) b_and!260347)))

(declare-fun tb!205299 () Bool)

(declare-fun t!291456 () Bool)

(assert (=> (and b!3594047 (= (toChars!7731 (transformation!5588 (h!43217 rules!3307))) (toChars!7731 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291456) tb!205299))

(declare-fun result!250286 () Bool)

(assert (= result!250286 result!250284))

(assert (=> d!1059325 t!291456))

(declare-fun b_and!260349 () Bool)

(assert (= b_and!260325 (and (=> t!291456 result!250286) b_and!260349)))

(declare-fun tb!205301 () Bool)

(declare-fun t!291458 () Bool)

(assert (=> (and b!3594029 (= (toChars!7731 (transformation!5588 anOtherTypeRule!33)) (toChars!7731 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291458) tb!205301))

(declare-fun result!250288 () Bool)

(assert (= result!250288 result!250284))

(assert (=> d!1059325 t!291458))

(declare-fun b_and!260351 () Bool)

(assert (= b_and!260327 (and (=> t!291458 result!250288) b_and!260351)))

(declare-fun tb!205303 () Bool)

(declare-fun t!291460 () Bool)

(assert (=> (and b!3594038 (= (toChars!7731 (transformation!5588 (rule!8310 token!511))) (toChars!7731 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291460) tb!205303))

(declare-fun result!250290 () Bool)

(assert (= result!250290 result!250284))

(assert (=> d!1059325 t!291460))

(declare-fun b_and!260353 () Bool)

(assert (= b_and!260329 (and (=> t!291460 result!250290) b_and!260353)))

(declare-fun b_lambda!106217 () Bool)

(assert (=> (not b_lambda!106217) (not d!1059325)))

(declare-fun tb!205305 () Bool)

(declare-fun t!291462 () Bool)

(assert (=> (and b!3594035 (= (toValue!7872 (transformation!5588 rule!403)) (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291462) tb!205305))

(declare-fun result!250292 () Bool)

(assert (=> tb!205305 (= result!250292 (inv!21 (dynLambda!16273 (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551)))) lt!1233543)))))

(declare-fun m!4089083 () Bool)

(assert (=> tb!205305 m!4089083))

(assert (=> d!1059325 t!291462))

(declare-fun b_and!260355 () Bool)

(assert (= b_and!260283 (and (=> t!291462 result!250292) b_and!260355)))

(declare-fun t!291464 () Bool)

(declare-fun tb!205307 () Bool)

(assert (=> (and b!3594047 (= (toValue!7872 (transformation!5588 (h!43217 rules!3307))) (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291464) tb!205307))

(declare-fun result!250296 () Bool)

(assert (= result!250296 result!250292))

(assert (=> d!1059325 t!291464))

(declare-fun b_and!260357 () Bool)

(assert (= b_and!260287 (and (=> t!291464 result!250296) b_and!260357)))

(declare-fun tb!205309 () Bool)

(declare-fun t!291466 () Bool)

(assert (=> (and b!3594029 (= (toValue!7872 (transformation!5588 anOtherTypeRule!33)) (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291466) tb!205309))

(declare-fun result!250298 () Bool)

(assert (= result!250298 result!250292))

(assert (=> d!1059325 t!291466))

(declare-fun b_and!260359 () Bool)

(assert (= b_and!260291 (and (=> t!291466 result!250298) b_and!260359)))

(declare-fun t!291468 () Bool)

(declare-fun tb!205311 () Bool)

(assert (=> (and b!3594038 (= (toValue!7872 (transformation!5588 (rule!8310 token!511))) (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291468) tb!205311))

(declare-fun result!250300 () Bool)

(assert (= result!250300 result!250292))

(assert (=> d!1059325 t!291468))

(declare-fun b_and!260361 () Bool)

(assert (= b_and!260295 (and (=> t!291468 result!250300) b_and!260361)))

(declare-fun m!4089085 () Bool)

(assert (=> d!1059325 m!4089085))

(declare-fun m!4089087 () Bool)

(assert (=> d!1059325 m!4089087))

(declare-fun m!4089089 () Bool)

(assert (=> d!1059325 m!4089089))

(assert (=> d!1059325 m!4089089))

(declare-fun m!4089091 () Bool)

(assert (=> d!1059325 m!4089091))

(assert (=> d!1059325 m!4089087))

(assert (=> d!1059325 m!4088779))

(assert (=> b!3594039 d!1059325))

(declare-fun d!1059359 () Bool)

(declare-fun lt!1233640 () Int)

(assert (=> d!1059359 (= lt!1233640 (size!28795 (list!13908 lt!1233543)))))

(declare-fun size!28797 (Conc!11501) Int)

(assert (=> d!1059359 (= lt!1233640 (size!28797 (c!622249 lt!1233543)))))

(assert (=> d!1059359 (= (size!28796 lt!1233543) lt!1233640)))

(declare-fun bs!570342 () Bool)

(assert (= bs!570342 d!1059359))

(assert (=> bs!570342 m!4088779))

(assert (=> bs!570342 m!4088779))

(declare-fun m!4089093 () Bool)

(assert (=> bs!570342 m!4089093))

(declare-fun m!4089095 () Bool)

(assert (=> bs!570342 m!4089095))

(assert (=> b!3594039 d!1059359))

(declare-fun b!3594353 () Bool)

(declare-fun e!2224132 () Bool)

(assert (=> b!3594353 (= e!2224132 true)))

(declare-fun d!1059361 () Bool)

(assert (=> d!1059361 e!2224132))

(assert (= d!1059361 b!3594353))

(declare-fun lambda!123894 () Int)

(declare-fun order!20543 () Int)

(declare-fun dynLambda!16274 (Int Int) Int)

(assert (=> b!3594353 (< (dynLambda!16270 order!20531 (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) (dynLambda!16274 order!20543 lambda!123894))))

(assert (=> b!3594353 (< (dynLambda!16272 order!20535 (toChars!7731 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) (dynLambda!16274 order!20543 lambda!123894))))

(assert (=> d!1059361 (= (dynLambda!16273 (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551)))) lt!1233543) (dynLambda!16273 (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551)))) (seqFromList!4141 (originalCharacters!6302 (_1!21974 lt!1233551)))))))

(declare-fun lt!1233644 () Unit!53801)

(declare-fun Forall2of!288 (Int BalanceConc!22616 BalanceConc!22616) Unit!53801)

(assert (=> d!1059361 (= lt!1233644 (Forall2of!288 lambda!123894 lt!1233543 (seqFromList!4141 (originalCharacters!6302 (_1!21974 lt!1233551)))))))

(assert (=> d!1059361 (= (list!13908 lt!1233543) (list!13908 (seqFromList!4141 (originalCharacters!6302 (_1!21974 lt!1233551)))))))

(assert (=> d!1059361 (= (lemmaEqSameImage!779 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))) lt!1233543 (seqFromList!4141 (originalCharacters!6302 (_1!21974 lt!1233551)))) lt!1233644)))

(declare-fun b_lambda!106223 () Bool)

(assert (=> (not b_lambda!106223) (not d!1059361)))

(assert (=> d!1059361 t!291462))

(declare-fun b_and!260379 () Bool)

(assert (= b_and!260355 (and (=> t!291462 result!250292) b_and!260379)))

(assert (=> d!1059361 t!291464))

(declare-fun b_and!260381 () Bool)

(assert (= b_and!260357 (and (=> t!291464 result!250296) b_and!260381)))

(assert (=> d!1059361 t!291466))

(declare-fun b_and!260383 () Bool)

(assert (= b_and!260359 (and (=> t!291466 result!250298) b_and!260383)))

(assert (=> d!1059361 t!291468))

(declare-fun b_and!260385 () Bool)

(assert (= b_and!260361 (and (=> t!291468 result!250300) b_and!260385)))

(declare-fun b_lambda!106225 () Bool)

(assert (=> (not b_lambda!106225) (not d!1059361)))

(declare-fun tb!205321 () Bool)

(declare-fun t!291478 () Bool)

(assert (=> (and b!3594035 (= (toValue!7872 (transformation!5588 rule!403)) (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291478) tb!205321))

(declare-fun result!250310 () Bool)

(assert (=> tb!205321 (= result!250310 (inv!21 (dynLambda!16273 (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551)))) (seqFromList!4141 (originalCharacters!6302 (_1!21974 lt!1233551))))))))

(declare-fun m!4089107 () Bool)

(assert (=> tb!205321 m!4089107))

(assert (=> d!1059361 t!291478))

(declare-fun b_and!260387 () Bool)

(assert (= b_and!260379 (and (=> t!291478 result!250310) b_and!260387)))

(declare-fun t!291480 () Bool)

(declare-fun tb!205323 () Bool)

(assert (=> (and b!3594047 (= (toValue!7872 (transformation!5588 (h!43217 rules!3307))) (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291480) tb!205323))

(declare-fun result!250312 () Bool)

(assert (= result!250312 result!250310))

(assert (=> d!1059361 t!291480))

(declare-fun b_and!260389 () Bool)

(assert (= b_and!260381 (and (=> t!291480 result!250312) b_and!260389)))

(declare-fun t!291482 () Bool)

(declare-fun tb!205325 () Bool)

(assert (=> (and b!3594029 (= (toValue!7872 (transformation!5588 anOtherTypeRule!33)) (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291482) tb!205325))

(declare-fun result!250314 () Bool)

(assert (= result!250314 result!250310))

(assert (=> d!1059361 t!291482))

(declare-fun b_and!260391 () Bool)

(assert (= b_and!260383 (and (=> t!291482 result!250314) b_and!260391)))

(declare-fun tb!205327 () Bool)

(declare-fun t!291484 () Bool)

(assert (=> (and b!3594038 (= (toValue!7872 (transformation!5588 (rule!8310 token!511))) (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291484) tb!205327))

(declare-fun result!250316 () Bool)

(assert (= result!250316 result!250310))

(assert (=> d!1059361 t!291484))

(declare-fun b_and!260393 () Bool)

(assert (= b_and!260385 (and (=> t!291484 result!250316) b_and!260393)))

(assert (=> d!1059361 m!4088689))

(declare-fun m!4089109 () Bool)

(assert (=> d!1059361 m!4089109))

(assert (=> d!1059361 m!4088779))

(assert (=> d!1059361 m!4088689))

(declare-fun m!4089111 () Bool)

(assert (=> d!1059361 m!4089111))

(assert (=> d!1059361 m!4089087))

(assert (=> d!1059361 m!4088689))

(declare-fun m!4089113 () Bool)

(assert (=> d!1059361 m!4089113))

(assert (=> b!3594039 d!1059361))

(declare-fun d!1059365 () Bool)

(assert (=> d!1059365 (= (apply!9094 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))) lt!1233543) (dynLambda!16273 (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551)))) lt!1233543))))

(declare-fun b_lambda!106227 () Bool)

(assert (=> (not b_lambda!106227) (not d!1059365)))

(assert (=> d!1059365 t!291462))

(declare-fun b_and!260395 () Bool)

(assert (= b_and!260387 (and (=> t!291462 result!250292) b_and!260395)))

(assert (=> d!1059365 t!291464))

(declare-fun b_and!260397 () Bool)

(assert (= b_and!260389 (and (=> t!291464 result!250296) b_and!260397)))

(assert (=> d!1059365 t!291466))

(declare-fun b_and!260399 () Bool)

(assert (= b_and!260391 (and (=> t!291466 result!250298) b_and!260399)))

(assert (=> d!1059365 t!291468))

(declare-fun b_and!260401 () Bool)

(assert (= b_and!260393 (and (=> t!291468 result!250300) b_and!260401)))

(assert (=> d!1059365 m!4089087))

(assert (=> b!3594039 d!1059365))

(declare-fun d!1059369 () Bool)

(assert (=> d!1059369 (= (size!28794 (_1!21974 lt!1233551)) (size!28795 (originalCharacters!6302 (_1!21974 lt!1233551))))))

(declare-fun Unit!53803 () Unit!53801)

(assert (=> d!1059369 (= (lemmaCharactersSize!641 (_1!21974 lt!1233551)) Unit!53803)))

(declare-fun bs!570344 () Bool)

(assert (= bs!570344 d!1059369))

(declare-fun m!4089117 () Bool)

(assert (=> bs!570344 m!4089117))

(assert (=> b!3594039 d!1059369))

(declare-fun d!1059371 () Bool)

(declare-fun fromListB!1909 (List!37920) BalanceConc!22616)

(assert (=> d!1059371 (= (seqFromList!4141 (originalCharacters!6302 (_1!21974 lt!1233551))) (fromListB!1909 (originalCharacters!6302 (_1!21974 lt!1233551))))))

(declare-fun bs!570345 () Bool)

(assert (= bs!570345 d!1059371))

(declare-fun m!4089119 () Bool)

(assert (=> bs!570345 m!4089119))

(assert (=> b!3594039 d!1059371))

(declare-fun d!1059373 () Bool)

(declare-fun lt!1233649 () Int)

(assert (=> d!1059373 (>= lt!1233649 0)))

(declare-fun e!2224138 () Int)

(assert (=> d!1059373 (= lt!1233649 e!2224138)))

(declare-fun c!622313 () Bool)

(assert (=> d!1059373 (= c!622313 ((_ is Nil!37796) lt!1233541))))

(assert (=> d!1059373 (= (size!28795 lt!1233541) lt!1233649)))

(declare-fun b!3594360 () Bool)

(assert (=> b!3594360 (= e!2224138 0)))

(declare-fun b!3594361 () Bool)

(assert (=> b!3594361 (= e!2224138 (+ 1 (size!28795 (t!291411 lt!1233541))))))

(assert (= (and d!1059373 c!622313) b!3594360))

(assert (= (and d!1059373 (not c!622313)) b!3594361))

(declare-fun m!4089121 () Bool)

(assert (=> b!3594361 m!4089121))

(assert (=> b!3594018 d!1059373))

(declare-fun d!1059375 () Bool)

(declare-fun e!2224141 () Bool)

(assert (=> d!1059375 e!2224141))

(declare-fun c!622315 () Bool)

(assert (=> d!1059375 (= c!622315 ((_ is EmptyExpr!10347) (regex!5588 rule!403)))))

(declare-fun lt!1233650 () Bool)

(declare-fun e!2224139 () Bool)

(assert (=> d!1059375 (= lt!1233650 e!2224139)))

(declare-fun c!622314 () Bool)

(assert (=> d!1059375 (= c!622314 (isEmpty!22282 lt!1233554))))

(assert (=> d!1059375 (validRegex!4727 (regex!5588 rule!403))))

(assert (=> d!1059375 (= (matchR!4916 (regex!5588 rule!403) lt!1233554) lt!1233650)))

(declare-fun b!3594362 () Bool)

(declare-fun res!1451662 () Bool)

(declare-fun e!2224142 () Bool)

(assert (=> b!3594362 (=> (not res!1451662) (not e!2224142))))

(declare-fun call!260094 () Bool)

(assert (=> b!3594362 (= res!1451662 (not call!260094))))

(declare-fun b!3594363 () Bool)

(declare-fun e!2224140 () Bool)

(assert (=> b!3594363 (= e!2224140 (not (= (head!7518 lt!1233554) (c!622248 (regex!5588 rule!403)))))))

(declare-fun b!3594364 () Bool)

(assert (=> b!3594364 (= e!2224142 (= (head!7518 lt!1233554) (c!622248 (regex!5588 rule!403))))))

(declare-fun bm!260089 () Bool)

(assert (=> bm!260089 (= call!260094 (isEmpty!22282 lt!1233554))))

(declare-fun b!3594365 () Bool)

(declare-fun e!2224143 () Bool)

(assert (=> b!3594365 (= e!2224141 e!2224143)))

(declare-fun c!622316 () Bool)

(assert (=> b!3594365 (= c!622316 ((_ is EmptyLang!10347) (regex!5588 rule!403)))))

(declare-fun b!3594366 () Bool)

(assert (=> b!3594366 (= e!2224141 (= lt!1233650 call!260094))))

(declare-fun b!3594367 () Bool)

(declare-fun res!1451656 () Bool)

(assert (=> b!3594367 (=> res!1451656 e!2224140)))

(assert (=> b!3594367 (= res!1451656 (not (isEmpty!22282 (tail!5569 lt!1233554))))))

(declare-fun b!3594368 () Bool)

(declare-fun e!2224144 () Bool)

(declare-fun e!2224145 () Bool)

(assert (=> b!3594368 (= e!2224144 e!2224145)))

(declare-fun res!1451660 () Bool)

(assert (=> b!3594368 (=> (not res!1451660) (not e!2224145))))

(assert (=> b!3594368 (= res!1451660 (not lt!1233650))))

(declare-fun b!3594369 () Bool)

(assert (=> b!3594369 (= e!2224139 (nullable!3571 (regex!5588 rule!403)))))

(declare-fun b!3594370 () Bool)

(assert (=> b!3594370 (= e!2224143 (not lt!1233650))))

(declare-fun b!3594371 () Bool)

(declare-fun res!1451657 () Bool)

(assert (=> b!3594371 (=> (not res!1451657) (not e!2224142))))

(assert (=> b!3594371 (= res!1451657 (isEmpty!22282 (tail!5569 lt!1233554)))))

(declare-fun b!3594372 () Bool)

(declare-fun res!1451661 () Bool)

(assert (=> b!3594372 (=> res!1451661 e!2224144)))

(assert (=> b!3594372 (= res!1451661 (not ((_ is ElementMatch!10347) (regex!5588 rule!403))))))

(assert (=> b!3594372 (= e!2224143 e!2224144)))

(declare-fun b!3594373 () Bool)

(assert (=> b!3594373 (= e!2224145 e!2224140)))

(declare-fun res!1451659 () Bool)

(assert (=> b!3594373 (=> res!1451659 e!2224140)))

(assert (=> b!3594373 (= res!1451659 call!260094)))

(declare-fun b!3594374 () Bool)

(assert (=> b!3594374 (= e!2224139 (matchR!4916 (derivativeStep!3120 (regex!5588 rule!403) (head!7518 lt!1233554)) (tail!5569 lt!1233554)))))

(declare-fun b!3594375 () Bool)

(declare-fun res!1451658 () Bool)

(assert (=> b!3594375 (=> res!1451658 e!2224144)))

(assert (=> b!3594375 (= res!1451658 e!2224142)))

(declare-fun res!1451655 () Bool)

(assert (=> b!3594375 (=> (not res!1451655) (not e!2224142))))

(assert (=> b!3594375 (= res!1451655 lt!1233650)))

(assert (= (and d!1059375 c!622314) b!3594369))

(assert (= (and d!1059375 (not c!622314)) b!3594374))

(assert (= (and d!1059375 c!622315) b!3594366))

(assert (= (and d!1059375 (not c!622315)) b!3594365))

(assert (= (and b!3594365 c!622316) b!3594370))

(assert (= (and b!3594365 (not c!622316)) b!3594372))

(assert (= (and b!3594372 (not res!1451661)) b!3594375))

(assert (= (and b!3594375 res!1451655) b!3594362))

(assert (= (and b!3594362 res!1451662) b!3594371))

(assert (= (and b!3594371 res!1451657) b!3594364))

(assert (= (and b!3594375 (not res!1451658)) b!3594368))

(assert (= (and b!3594368 res!1451660) b!3594373))

(assert (= (and b!3594373 (not res!1451659)) b!3594367))

(assert (= (and b!3594367 (not res!1451656)) b!3594363))

(assert (= (or b!3594366 b!3594362 b!3594373) bm!260089))

(declare-fun m!4089123 () Bool)

(assert (=> bm!260089 m!4089123))

(declare-fun m!4089125 () Bool)

(assert (=> b!3594374 m!4089125))

(assert (=> b!3594374 m!4089125))

(declare-fun m!4089127 () Bool)

(assert (=> b!3594374 m!4089127))

(declare-fun m!4089129 () Bool)

(assert (=> b!3594374 m!4089129))

(assert (=> b!3594374 m!4089127))

(assert (=> b!3594374 m!4089129))

(declare-fun m!4089131 () Bool)

(assert (=> b!3594374 m!4089131))

(assert (=> d!1059375 m!4089123))

(declare-fun m!4089133 () Bool)

(assert (=> d!1059375 m!4089133))

(assert (=> b!3594371 m!4089129))

(assert (=> b!3594371 m!4089129))

(declare-fun m!4089135 () Bool)

(assert (=> b!3594371 m!4089135))

(declare-fun m!4089137 () Bool)

(assert (=> b!3594369 m!4089137))

(assert (=> b!3594364 m!4089125))

(assert (=> b!3594363 m!4089125))

(assert (=> b!3594367 m!4089129))

(assert (=> b!3594367 m!4089129))

(assert (=> b!3594367 m!4089135))

(assert (=> b!3594019 d!1059375))

(declare-fun d!1059377 () Bool)

(declare-fun res!1451667 () Bool)

(declare-fun e!2224152 () Bool)

(assert (=> d!1059377 (=> (not res!1451667) (not e!2224152))))

(assert (=> d!1059377 (= res!1451667 (validRegex!4727 (regex!5588 rule!403)))))

(assert (=> d!1059377 (= (ruleValid!1853 thiss!23823 rule!403) e!2224152)))

(declare-fun b!3594385 () Bool)

(declare-fun res!1451668 () Bool)

(assert (=> b!3594385 (=> (not res!1451668) (not e!2224152))))

(assert (=> b!3594385 (= res!1451668 (not (nullable!3571 (regex!5588 rule!403))))))

(declare-fun b!3594386 () Bool)

(assert (=> b!3594386 (= e!2224152 (not (= (tag!6266 rule!403) (String!42425 ""))))))

(assert (= (and d!1059377 res!1451667) b!3594385))

(assert (= (and b!3594385 res!1451668) b!3594386))

(assert (=> d!1059377 m!4089133))

(assert (=> b!3594385 m!4089137))

(assert (=> b!3594019 d!1059377))

(declare-fun d!1059383 () Bool)

(assert (=> d!1059383 (ruleValid!1853 thiss!23823 rule!403)))

(declare-fun lt!1233655 () Unit!53801)

(declare-fun choose!20920 (LexerInterface!5177 Rule!10976 List!37921) Unit!53801)

(assert (=> d!1059383 (= lt!1233655 (choose!20920 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1059383 (contains!7239 rules!3307 rule!403)))

(assert (=> d!1059383 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1008 thiss!23823 rule!403 rules!3307) lt!1233655)))

(declare-fun bs!570346 () Bool)

(assert (= bs!570346 d!1059383))

(assert (=> bs!570346 m!4088705))

(declare-fun m!4089159 () Bool)

(assert (=> bs!570346 m!4089159))

(assert (=> bs!570346 m!4088761))

(assert (=> b!3594019 d!1059383))

(declare-fun d!1059395 () Bool)

(assert (=> d!1059395 (= (isEmpty!22283 rules!3307) ((_ is Nil!37797) rules!3307))))

(assert (=> b!3594040 d!1059395))

(declare-fun d!1059397 () Bool)

(declare-fun e!2224159 () Bool)

(assert (=> d!1059397 e!2224159))

(declare-fun c!622318 () Bool)

(assert (=> d!1059397 (= c!622318 ((_ is EmptyExpr!10347) (regex!5588 (rule!8310 (_1!21974 lt!1233551)))))))

(declare-fun lt!1233656 () Bool)

(declare-fun e!2224157 () Bool)

(assert (=> d!1059397 (= lt!1233656 e!2224157)))

(declare-fun c!622317 () Bool)

(assert (=> d!1059397 (= c!622317 (isEmpty!22282 lt!1233538))))

(assert (=> d!1059397 (validRegex!4727 (regex!5588 (rule!8310 (_1!21974 lt!1233551))))))

(assert (=> d!1059397 (= (matchR!4916 (regex!5588 (rule!8310 (_1!21974 lt!1233551))) lt!1233538) lt!1233656)))

(declare-fun b!3594391 () Bool)

(declare-fun res!1451680 () Bool)

(declare-fun e!2224160 () Bool)

(assert (=> b!3594391 (=> (not res!1451680) (not e!2224160))))

(declare-fun call!260095 () Bool)

(assert (=> b!3594391 (= res!1451680 (not call!260095))))

(declare-fun b!3594392 () Bool)

(declare-fun e!2224158 () Bool)

(assert (=> b!3594392 (= e!2224158 (not (= (head!7518 lt!1233538) (c!622248 (regex!5588 (rule!8310 (_1!21974 lt!1233551)))))))))

(declare-fun b!3594393 () Bool)

(assert (=> b!3594393 (= e!2224160 (= (head!7518 lt!1233538) (c!622248 (regex!5588 (rule!8310 (_1!21974 lt!1233551))))))))

(declare-fun bm!260090 () Bool)

(assert (=> bm!260090 (= call!260095 (isEmpty!22282 lt!1233538))))

(declare-fun b!3594394 () Bool)

(declare-fun e!2224161 () Bool)

(assert (=> b!3594394 (= e!2224159 e!2224161)))

(declare-fun c!622319 () Bool)

(assert (=> b!3594394 (= c!622319 ((_ is EmptyLang!10347) (regex!5588 (rule!8310 (_1!21974 lt!1233551)))))))

(declare-fun b!3594395 () Bool)

(assert (=> b!3594395 (= e!2224159 (= lt!1233656 call!260095))))

(declare-fun b!3594396 () Bool)

(declare-fun res!1451674 () Bool)

(assert (=> b!3594396 (=> res!1451674 e!2224158)))

(assert (=> b!3594396 (= res!1451674 (not (isEmpty!22282 (tail!5569 lt!1233538))))))

(declare-fun b!3594397 () Bool)

(declare-fun e!2224162 () Bool)

(declare-fun e!2224163 () Bool)

(assert (=> b!3594397 (= e!2224162 e!2224163)))

(declare-fun res!1451678 () Bool)

(assert (=> b!3594397 (=> (not res!1451678) (not e!2224163))))

(assert (=> b!3594397 (= res!1451678 (not lt!1233656))))

(declare-fun b!3594398 () Bool)

(assert (=> b!3594398 (= e!2224157 (nullable!3571 (regex!5588 (rule!8310 (_1!21974 lt!1233551)))))))

(declare-fun b!3594399 () Bool)

(assert (=> b!3594399 (= e!2224161 (not lt!1233656))))

(declare-fun b!3594400 () Bool)

(declare-fun res!1451675 () Bool)

(assert (=> b!3594400 (=> (not res!1451675) (not e!2224160))))

(assert (=> b!3594400 (= res!1451675 (isEmpty!22282 (tail!5569 lt!1233538)))))

(declare-fun b!3594401 () Bool)

(declare-fun res!1451679 () Bool)

(assert (=> b!3594401 (=> res!1451679 e!2224162)))

(assert (=> b!3594401 (= res!1451679 (not ((_ is ElementMatch!10347) (regex!5588 (rule!8310 (_1!21974 lt!1233551))))))))

(assert (=> b!3594401 (= e!2224161 e!2224162)))

(declare-fun b!3594402 () Bool)

(assert (=> b!3594402 (= e!2224163 e!2224158)))

(declare-fun res!1451677 () Bool)

(assert (=> b!3594402 (=> res!1451677 e!2224158)))

(assert (=> b!3594402 (= res!1451677 call!260095)))

(declare-fun b!3594403 () Bool)

(assert (=> b!3594403 (= e!2224157 (matchR!4916 (derivativeStep!3120 (regex!5588 (rule!8310 (_1!21974 lt!1233551))) (head!7518 lt!1233538)) (tail!5569 lt!1233538)))))

(declare-fun b!3594404 () Bool)

(declare-fun res!1451676 () Bool)

(assert (=> b!3594404 (=> res!1451676 e!2224162)))

(assert (=> b!3594404 (= res!1451676 e!2224160)))

(declare-fun res!1451673 () Bool)

(assert (=> b!3594404 (=> (not res!1451673) (not e!2224160))))

(assert (=> b!3594404 (= res!1451673 lt!1233656)))

(assert (= (and d!1059397 c!622317) b!3594398))

(assert (= (and d!1059397 (not c!622317)) b!3594403))

(assert (= (and d!1059397 c!622318) b!3594395))

(assert (= (and d!1059397 (not c!622318)) b!3594394))

(assert (= (and b!3594394 c!622319) b!3594399))

(assert (= (and b!3594394 (not c!622319)) b!3594401))

(assert (= (and b!3594401 (not res!1451679)) b!3594404))

(assert (= (and b!3594404 res!1451673) b!3594391))

(assert (= (and b!3594391 res!1451680) b!3594400))

(assert (= (and b!3594400 res!1451675) b!3594393))

(assert (= (and b!3594404 (not res!1451676)) b!3594397))

(assert (= (and b!3594397 res!1451678) b!3594402))

(assert (= (and b!3594402 (not res!1451677)) b!3594396))

(assert (= (and b!3594396 (not res!1451674)) b!3594392))

(assert (= (or b!3594395 b!3594391 b!3594402) bm!260090))

(declare-fun m!4089161 () Bool)

(assert (=> bm!260090 m!4089161))

(declare-fun m!4089163 () Bool)

(assert (=> b!3594403 m!4089163))

(assert (=> b!3594403 m!4089163))

(declare-fun m!4089165 () Bool)

(assert (=> b!3594403 m!4089165))

(declare-fun m!4089167 () Bool)

(assert (=> b!3594403 m!4089167))

(assert (=> b!3594403 m!4089165))

(assert (=> b!3594403 m!4089167))

(declare-fun m!4089169 () Bool)

(assert (=> b!3594403 m!4089169))

(assert (=> d!1059397 m!4089161))

(declare-fun m!4089171 () Bool)

(assert (=> d!1059397 m!4089171))

(assert (=> b!3594400 m!4089167))

(assert (=> b!3594400 m!4089167))

(declare-fun m!4089173 () Bool)

(assert (=> b!3594400 m!4089173))

(declare-fun m!4089175 () Bool)

(assert (=> b!3594398 m!4089175))

(assert (=> b!3594393 m!4089163))

(assert (=> b!3594392 m!4089163))

(assert (=> b!3594396 m!4089167))

(assert (=> b!3594396 m!4089167))

(assert (=> b!3594396 m!4089173))

(assert (=> b!3594031 d!1059397))

(declare-fun d!1059399 () Bool)

(declare-fun res!1451685 () Bool)

(declare-fun e!2224166 () Bool)

(assert (=> d!1059399 (=> (not res!1451685) (not e!2224166))))

(assert (=> d!1059399 (= res!1451685 (not (isEmpty!22282 (originalCharacters!6302 token!511))))))

(assert (=> d!1059399 (= (inv!51144 token!511) e!2224166)))

(declare-fun b!3594409 () Bool)

(declare-fun res!1451686 () Bool)

(assert (=> b!3594409 (=> (not res!1451686) (not e!2224166))))

(assert (=> b!3594409 (= res!1451686 (= (originalCharacters!6302 token!511) (list!13908 (dynLambda!16268 (toChars!7731 (transformation!5588 (rule!8310 token!511))) (value!179718 token!511)))))))

(declare-fun b!3594410 () Bool)

(assert (=> b!3594410 (= e!2224166 (= (size!28794 token!511) (size!28795 (originalCharacters!6302 token!511))))))

(assert (= (and d!1059399 res!1451685) b!3594409))

(assert (= (and b!3594409 res!1451686) b!3594410))

(declare-fun b_lambda!106233 () Bool)

(assert (=> (not b_lambda!106233) (not b!3594409)))

(declare-fun tb!205337 () Bool)

(declare-fun t!291494 () Bool)

(assert (=> (and b!3594035 (= (toChars!7731 (transformation!5588 rule!403)) (toChars!7731 (transformation!5588 (rule!8310 token!511)))) t!291494) tb!205337))

(declare-fun b!3594411 () Bool)

(declare-fun e!2224167 () Bool)

(declare-fun tp!1100000 () Bool)

(assert (=> b!3594411 (= e!2224167 (and (inv!51147 (c!622249 (dynLambda!16268 (toChars!7731 (transformation!5588 (rule!8310 token!511))) (value!179718 token!511)))) tp!1100000))))

(declare-fun result!250326 () Bool)

(assert (=> tb!205337 (= result!250326 (and (inv!51148 (dynLambda!16268 (toChars!7731 (transformation!5588 (rule!8310 token!511))) (value!179718 token!511))) e!2224167))))

(assert (= tb!205337 b!3594411))

(declare-fun m!4089177 () Bool)

(assert (=> b!3594411 m!4089177))

(declare-fun m!4089179 () Bool)

(assert (=> tb!205337 m!4089179))

(assert (=> b!3594409 t!291494))

(declare-fun b_and!260419 () Bool)

(assert (= b_and!260347 (and (=> t!291494 result!250326) b_and!260419)))

(declare-fun t!291496 () Bool)

(declare-fun tb!205339 () Bool)

(assert (=> (and b!3594047 (= (toChars!7731 (transformation!5588 (h!43217 rules!3307))) (toChars!7731 (transformation!5588 (rule!8310 token!511)))) t!291496) tb!205339))

(declare-fun result!250328 () Bool)

(assert (= result!250328 result!250326))

(assert (=> b!3594409 t!291496))

(declare-fun b_and!260421 () Bool)

(assert (= b_and!260349 (and (=> t!291496 result!250328) b_and!260421)))

(declare-fun tb!205341 () Bool)

(declare-fun t!291498 () Bool)

(assert (=> (and b!3594029 (= (toChars!7731 (transformation!5588 anOtherTypeRule!33)) (toChars!7731 (transformation!5588 (rule!8310 token!511)))) t!291498) tb!205341))

(declare-fun result!250330 () Bool)

(assert (= result!250330 result!250326))

(assert (=> b!3594409 t!291498))

(declare-fun b_and!260423 () Bool)

(assert (= b_and!260351 (and (=> t!291498 result!250330) b_and!260423)))

(declare-fun t!291500 () Bool)

(declare-fun tb!205343 () Bool)

(assert (=> (and b!3594038 (= (toChars!7731 (transformation!5588 (rule!8310 token!511))) (toChars!7731 (transformation!5588 (rule!8310 token!511)))) t!291500) tb!205343))

(declare-fun result!250332 () Bool)

(assert (= result!250332 result!250326))

(assert (=> b!3594409 t!291500))

(declare-fun b_and!260425 () Bool)

(assert (= b_and!260353 (and (=> t!291500 result!250332) b_and!260425)))

(declare-fun m!4089181 () Bool)

(assert (=> d!1059399 m!4089181))

(declare-fun m!4089183 () Bool)

(assert (=> b!3594409 m!4089183))

(assert (=> b!3594409 m!4089183))

(declare-fun m!4089185 () Bool)

(assert (=> b!3594409 m!4089185))

(declare-fun m!4089187 () Bool)

(assert (=> b!3594410 m!4089187))

(assert (=> start!333690 d!1059399))

(declare-fun d!1059401 () Bool)

(declare-fun e!2224185 () Bool)

(assert (=> d!1059401 e!2224185))

(declare-fun res!1451698 () Bool)

(assert (=> d!1059401 (=> (not res!1451698) (not e!2224185))))

(declare-fun lt!1233668 () List!37920)

(declare-fun content!5381 (List!37920) (InoxSet C!20880))

(assert (=> d!1059401 (= res!1451698 (= (content!5381 lt!1233668) ((_ map or) (content!5381 lt!1233554) (content!5381 suffix!1395))))))

(declare-fun e!2224184 () List!37920)

(assert (=> d!1059401 (= lt!1233668 e!2224184)))

(declare-fun c!622328 () Bool)

(assert (=> d!1059401 (= c!622328 ((_ is Nil!37796) lt!1233554))))

(assert (=> d!1059401 (= (++!9404 lt!1233554 suffix!1395) lt!1233668)))

(declare-fun b!3594439 () Bool)

(assert (=> b!3594439 (= e!2224184 (Cons!37796 (h!43216 lt!1233554) (++!9404 (t!291411 lt!1233554) suffix!1395)))))

(declare-fun b!3594440 () Bool)

(declare-fun res!1451697 () Bool)

(assert (=> b!3594440 (=> (not res!1451697) (not e!2224185))))

(assert (=> b!3594440 (= res!1451697 (= (size!28795 lt!1233668) (+ (size!28795 lt!1233554) (size!28795 suffix!1395))))))

(declare-fun b!3594441 () Bool)

(assert (=> b!3594441 (= e!2224185 (or (not (= suffix!1395 Nil!37796)) (= lt!1233668 lt!1233554)))))

(declare-fun b!3594438 () Bool)

(assert (=> b!3594438 (= e!2224184 suffix!1395)))

(assert (= (and d!1059401 c!622328) b!3594438))

(assert (= (and d!1059401 (not c!622328)) b!3594439))

(assert (= (and d!1059401 res!1451698) b!3594440))

(assert (= (and b!3594440 res!1451697) b!3594441))

(declare-fun m!4089201 () Bool)

(assert (=> d!1059401 m!4089201))

(declare-fun m!4089203 () Bool)

(assert (=> d!1059401 m!4089203))

(declare-fun m!4089205 () Bool)

(assert (=> d!1059401 m!4089205))

(declare-fun m!4089207 () Bool)

(assert (=> b!3594439 m!4089207))

(declare-fun m!4089209 () Bool)

(assert (=> b!3594440 m!4089209))

(declare-fun m!4089211 () Bool)

(assert (=> b!3594440 m!4089211))

(declare-fun m!4089213 () Bool)

(assert (=> b!3594440 m!4089213))

(assert (=> b!3594032 d!1059401))

(declare-fun d!1059405 () Bool)

(declare-fun e!2224187 () Bool)

(assert (=> d!1059405 e!2224187))

(declare-fun res!1451700 () Bool)

(assert (=> d!1059405 (=> (not res!1451700) (not e!2224187))))

(declare-fun lt!1233669 () List!37920)

(assert (=> d!1059405 (= res!1451700 (= (content!5381 lt!1233669) ((_ map or) (content!5381 lt!1233538) (content!5381 (_2!21974 lt!1233551)))))))

(declare-fun e!2224186 () List!37920)

(assert (=> d!1059405 (= lt!1233669 e!2224186)))

(declare-fun c!622329 () Bool)

(assert (=> d!1059405 (= c!622329 ((_ is Nil!37796) lt!1233538))))

(assert (=> d!1059405 (= (++!9404 lt!1233538 (_2!21974 lt!1233551)) lt!1233669)))

(declare-fun b!3594443 () Bool)

(assert (=> b!3594443 (= e!2224186 (Cons!37796 (h!43216 lt!1233538) (++!9404 (t!291411 lt!1233538) (_2!21974 lt!1233551))))))

(declare-fun b!3594444 () Bool)

(declare-fun res!1451699 () Bool)

(assert (=> b!3594444 (=> (not res!1451699) (not e!2224187))))

(assert (=> b!3594444 (= res!1451699 (= (size!28795 lt!1233669) (+ (size!28795 lt!1233538) (size!28795 (_2!21974 lt!1233551)))))))

(declare-fun b!3594445 () Bool)

(assert (=> b!3594445 (= e!2224187 (or (not (= (_2!21974 lt!1233551) Nil!37796)) (= lt!1233669 lt!1233538)))))

(declare-fun b!3594442 () Bool)

(assert (=> b!3594442 (= e!2224186 (_2!21974 lt!1233551))))

(assert (= (and d!1059405 c!622329) b!3594442))

(assert (= (and d!1059405 (not c!622329)) b!3594443))

(assert (= (and d!1059405 res!1451700) b!3594444))

(assert (= (and b!3594444 res!1451699) b!3594445))

(declare-fun m!4089215 () Bool)

(assert (=> d!1059405 m!4089215))

(declare-fun m!4089217 () Bool)

(assert (=> d!1059405 m!4089217))

(declare-fun m!4089219 () Bool)

(assert (=> d!1059405 m!4089219))

(declare-fun m!4089221 () Bool)

(assert (=> b!3594443 m!4089221))

(declare-fun m!4089223 () Bool)

(assert (=> b!3594444 m!4089223))

(assert (=> b!3594444 m!4088715))

(declare-fun m!4089225 () Bool)

(assert (=> b!3594444 m!4089225))

(assert (=> b!3594032 d!1059405))

(declare-fun b!3594464 () Bool)

(declare-fun lt!1233682 () Unit!53801)

(declare-fun lt!1233684 () Unit!53801)

(assert (=> b!3594464 (= lt!1233682 lt!1233684)))

(assert (=> b!3594464 (rulesInvariant!4574 thiss!23823 (t!291412 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!502 (LexerInterface!5177 Rule!10976 List!37921) Unit!53801)

(assert (=> b!3594464 (= lt!1233684 (lemmaInvariantOnRulesThenOnTail!502 thiss!23823 (h!43217 rules!3307) (t!291412 rules!3307)))))

(declare-fun e!2224199 () Option!7806)

(assert (=> b!3594464 (= e!2224199 (getRuleFromTag!1194 thiss!23823 (t!291412 rules!3307) (tag!6266 (rule!8310 (_1!21974 lt!1233551)))))))

(declare-fun b!3594465 () Bool)

(declare-fun e!2224202 () Option!7806)

(assert (=> b!3594465 (= e!2224202 e!2224199)))

(declare-fun c!622334 () Bool)

(assert (=> b!3594465 (= c!622334 (and ((_ is Cons!37797) rules!3307) (not (= (tag!6266 (h!43217 rules!3307)) (tag!6266 (rule!8310 (_1!21974 lt!1233551)))))))))

(declare-fun b!3594466 () Bool)

(assert (=> b!3594466 (= e!2224202 (Some!7805 (h!43217 rules!3307)))))

(declare-fun b!3594468 () Bool)

(declare-fun e!2224201 () Bool)

(declare-fun e!2224200 () Bool)

(assert (=> b!3594468 (= e!2224201 e!2224200)))

(declare-fun res!1451711 () Bool)

(assert (=> b!3594468 (=> (not res!1451711) (not e!2224200))))

(declare-fun lt!1233683 () Option!7806)

(assert (=> b!3594468 (= res!1451711 (contains!7239 rules!3307 (get!12211 lt!1233683)))))

(declare-fun b!3594469 () Bool)

(assert (=> b!3594469 (= e!2224200 (= (tag!6266 (get!12211 lt!1233683)) (tag!6266 (rule!8310 (_1!21974 lt!1233551)))))))

(declare-fun d!1059407 () Bool)

(assert (=> d!1059407 e!2224201))

(declare-fun res!1451712 () Bool)

(assert (=> d!1059407 (=> res!1451712 e!2224201)))

(declare-fun isEmpty!22286 (Option!7806) Bool)

(assert (=> d!1059407 (= res!1451712 (isEmpty!22286 lt!1233683))))

(assert (=> d!1059407 (= lt!1233683 e!2224202)))

(declare-fun c!622335 () Bool)

(assert (=> d!1059407 (= c!622335 (and ((_ is Cons!37797) rules!3307) (= (tag!6266 (h!43217 rules!3307)) (tag!6266 (rule!8310 (_1!21974 lt!1233551))))))))

(assert (=> d!1059407 (rulesInvariant!4574 thiss!23823 rules!3307)))

(assert (=> d!1059407 (= (getRuleFromTag!1194 thiss!23823 rules!3307 (tag!6266 (rule!8310 (_1!21974 lt!1233551)))) lt!1233683)))

(declare-fun b!3594467 () Bool)

(assert (=> b!3594467 (= e!2224199 None!7805)))

(assert (= (and d!1059407 c!622335) b!3594466))

(assert (= (and d!1059407 (not c!622335)) b!3594465))

(assert (= (and b!3594465 c!622334) b!3594464))

(assert (= (and b!3594465 (not c!622334)) b!3594467))

(assert (= (and d!1059407 (not res!1451712)) b!3594468))

(assert (= (and b!3594468 res!1451711) b!3594469))

(declare-fun m!4089243 () Bool)

(assert (=> b!3594464 m!4089243))

(declare-fun m!4089245 () Bool)

(assert (=> b!3594464 m!4089245))

(declare-fun m!4089247 () Bool)

(assert (=> b!3594464 m!4089247))

(declare-fun m!4089249 () Bool)

(assert (=> b!3594468 m!4089249))

(assert (=> b!3594468 m!4089249))

(declare-fun m!4089251 () Bool)

(assert (=> b!3594468 m!4089251))

(assert (=> b!3594469 m!4089249))

(declare-fun m!4089253 () Bool)

(assert (=> d!1059407 m!4089253))

(assert (=> d!1059407 m!4088727))

(assert (=> b!3594032 d!1059407))

(declare-fun d!1059417 () Bool)

(declare-fun e!2224214 () Bool)

(assert (=> d!1059417 e!2224214))

(declare-fun res!1451729 () Bool)

(assert (=> d!1059417 (=> (not res!1451729) (not e!2224214))))

(assert (=> d!1059417 (= res!1451729 (isDefined!6038 (getRuleFromTag!1194 thiss!23823 rules!3307 (tag!6266 (rule!8310 (_1!21974 lt!1233551))))))))

(declare-fun lt!1233691 () Unit!53801)

(declare-fun choose!20923 (LexerInterface!5177 List!37921 List!37920 Token!10542) Unit!53801)

(assert (=> d!1059417 (= lt!1233691 (choose!20923 thiss!23823 rules!3307 lt!1233541 (_1!21974 lt!1233551)))))

(assert (=> d!1059417 (rulesInvariant!4574 thiss!23823 rules!3307)))

(assert (=> d!1059417 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1194 thiss!23823 rules!3307 lt!1233541 (_1!21974 lt!1233551)) lt!1233691)))

(declare-fun b!3594486 () Bool)

(declare-fun res!1451730 () Bool)

(assert (=> b!3594486 (=> (not res!1451730) (not e!2224214))))

(assert (=> b!3594486 (= res!1451730 (matchR!4916 (regex!5588 (get!12211 (getRuleFromTag!1194 thiss!23823 rules!3307 (tag!6266 (rule!8310 (_1!21974 lt!1233551)))))) (list!13908 (charsOf!3602 (_1!21974 lt!1233551)))))))

(declare-fun b!3594487 () Bool)

(assert (=> b!3594487 (= e!2224214 (= (rule!8310 (_1!21974 lt!1233551)) (get!12211 (getRuleFromTag!1194 thiss!23823 rules!3307 (tag!6266 (rule!8310 (_1!21974 lt!1233551)))))))))

(assert (= (and d!1059417 res!1451729) b!3594486))

(assert (= (and b!3594486 res!1451730) b!3594487))

(assert (=> d!1059417 m!4088785))

(assert (=> d!1059417 m!4088785))

(declare-fun m!4089259 () Bool)

(assert (=> d!1059417 m!4089259))

(declare-fun m!4089261 () Bool)

(assert (=> d!1059417 m!4089261))

(assert (=> d!1059417 m!4088727))

(assert (=> b!3594486 m!4088785))

(assert (=> b!3594486 m!4088785))

(declare-fun m!4089263 () Bool)

(assert (=> b!3594486 m!4089263))

(assert (=> b!3594486 m!4088745))

(assert (=> b!3594486 m!4088747))

(declare-fun m!4089265 () Bool)

(assert (=> b!3594486 m!4089265))

(assert (=> b!3594486 m!4088745))

(assert (=> b!3594486 m!4088747))

(assert (=> b!3594487 m!4088785))

(assert (=> b!3594487 m!4088785))

(assert (=> b!3594487 m!4089263))

(assert (=> b!3594032 d!1059417))

(declare-fun b!3594510 () Bool)

(declare-fun e!2224226 () Unit!53801)

(declare-fun Unit!53806 () Unit!53801)

(assert (=> b!3594510 (= e!2224226 Unit!53806)))

(declare-fun lt!1233781 () List!37920)

(assert (=> b!3594510 (= lt!1233781 (++!9404 lt!1233554 suffix!1395))))

(declare-fun lt!1233786 () Token!10542)

(declare-fun lt!1233787 () Unit!53801)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!458 (LexerInterface!5177 Rule!10976 List!37921 List!37920) Unit!53801)

(assert (=> b!3594510 (= lt!1233787 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!458 thiss!23823 (rule!8310 lt!1233786) rules!3307 lt!1233781))))

(declare-fun isEmpty!22287 (Option!7807) Bool)

(assert (=> b!3594510 (isEmpty!22287 (maxPrefixOneRule!1855 thiss!23823 (rule!8310 lt!1233786) lt!1233781))))

(declare-fun lt!1233788 () Unit!53801)

(assert (=> b!3594510 (= lt!1233788 lt!1233787)))

(declare-fun lt!1233782 () List!37920)

(assert (=> b!3594510 (= lt!1233782 (list!13908 (charsOf!3602 lt!1233786)))))

(declare-fun lt!1233784 () Unit!53801)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!446 (LexerInterface!5177 Rule!10976 List!37920 List!37920) Unit!53801)

(assert (=> b!3594510 (= lt!1233784 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!446 thiss!23823 (rule!8310 lt!1233786) lt!1233782 (++!9404 lt!1233554 suffix!1395)))))

(assert (=> b!3594510 (not (matchR!4916 (regex!5588 (rule!8310 lt!1233786)) lt!1233782))))

(declare-fun lt!1233778 () Unit!53801)

(assert (=> b!3594510 (= lt!1233778 lt!1233784)))

(assert (=> b!3594510 false))

(declare-fun b!3594508 () Bool)

(declare-fun res!1451741 () Bool)

(declare-fun e!2224225 () Bool)

(assert (=> b!3594508 (=> (not res!1451741) (not e!2224225))))

(assert (=> b!3594508 (= res!1451741 (matchR!4916 (regex!5588 (get!12211 (getRuleFromTag!1194 thiss!23823 rules!3307 (tag!6266 (rule!8310 lt!1233786))))) (list!13908 (charsOf!3602 lt!1233786))))))

(declare-fun b!3594509 () Bool)

(assert (=> b!3594509 (= e!2224225 (= (rule!8310 lt!1233786) (get!12211 (getRuleFromTag!1194 thiss!23823 rules!3307 (tag!6266 (rule!8310 lt!1233786))))))))

(declare-fun b!3594511 () Bool)

(declare-fun Unit!53807 () Unit!53801)

(assert (=> b!3594511 (= e!2224226 Unit!53807)))

(declare-fun d!1059423 () Bool)

(assert (=> d!1059423 (isDefined!6039 (maxPrefix!2711 thiss!23823 rules!3307 (++!9404 lt!1233554 suffix!1395)))))

(declare-fun lt!1233793 () Unit!53801)

(assert (=> d!1059423 (= lt!1233793 e!2224226)))

(declare-fun c!622341 () Bool)

(assert (=> d!1059423 (= c!622341 (isEmpty!22287 (maxPrefix!2711 thiss!23823 rules!3307 (++!9404 lt!1233554 suffix!1395))))))

(declare-fun lt!1233790 () Unit!53801)

(declare-fun lt!1233791 () Unit!53801)

(assert (=> d!1059423 (= lt!1233790 lt!1233791)))

(assert (=> d!1059423 e!2224225))

(declare-fun res!1451742 () Bool)

(assert (=> d!1059423 (=> (not res!1451742) (not e!2224225))))

(assert (=> d!1059423 (= res!1451742 (isDefined!6038 (getRuleFromTag!1194 thiss!23823 rules!3307 (tag!6266 (rule!8310 lt!1233786)))))))

(assert (=> d!1059423 (= lt!1233791 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1194 thiss!23823 rules!3307 lt!1233554 lt!1233786))))

(declare-fun lt!1233783 () Unit!53801)

(declare-fun lt!1233777 () Unit!53801)

(assert (=> d!1059423 (= lt!1233783 lt!1233777)))

(declare-fun lt!1233792 () List!37920)

(assert (=> d!1059423 (isPrefix!2951 lt!1233792 (++!9404 lt!1233554 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!422 (List!37920 List!37920 List!37920) Unit!53801)

(assert (=> d!1059423 (= lt!1233777 (lemmaPrefixStaysPrefixWhenAddingToSuffix!422 lt!1233792 lt!1233554 suffix!1395))))

(assert (=> d!1059423 (= lt!1233792 (list!13908 (charsOf!3602 lt!1233786)))))

(declare-fun lt!1233785 () Unit!53801)

(declare-fun lt!1233779 () Unit!53801)

(assert (=> d!1059423 (= lt!1233785 lt!1233779)))

(declare-fun lt!1233789 () List!37920)

(declare-fun lt!1233780 () List!37920)

(assert (=> d!1059423 (isPrefix!2951 lt!1233789 (++!9404 lt!1233789 lt!1233780))))

(assert (=> d!1059423 (= lt!1233779 (lemmaConcatTwoListThenFirstIsPrefix!1872 lt!1233789 lt!1233780))))

(assert (=> d!1059423 (= lt!1233780 (_2!21974 (get!12210 (maxPrefix!2711 thiss!23823 rules!3307 lt!1233554))))))

(assert (=> d!1059423 (= lt!1233789 (list!13908 (charsOf!3602 lt!1233786)))))

(declare-datatypes ((List!37924 0))(
  ( (Nil!37800) (Cons!37800 (h!43220 Token!10542) (t!291535 List!37924)) )
))
(declare-fun head!7520 (List!37924) Token!10542)

(declare-datatypes ((IArray!23011 0))(
  ( (IArray!23012 (innerList!11563 List!37924)) )
))
(declare-datatypes ((Conc!11503 0))(
  ( (Node!11503 (left!29535 Conc!11503) (right!29865 Conc!11503) (csize!23236 Int) (cheight!11714 Int)) (Leaf!17908 (xs!14705 IArray!23011) (csize!23237 Int)) (Empty!11503) )
))
(declare-datatypes ((BalanceConc!22620 0))(
  ( (BalanceConc!22621 (c!622381 Conc!11503)) )
))
(declare-fun list!13912 (BalanceConc!22620) List!37924)

(declare-datatypes ((tuple2!37686 0))(
  ( (tuple2!37687 (_1!21977 BalanceConc!22620) (_2!21977 BalanceConc!22616)) )
))
(declare-fun lex!2454 (LexerInterface!5177 List!37921 BalanceConc!22616) tuple2!37686)

(assert (=> d!1059423 (= lt!1233786 (head!7520 (list!13912 (_1!21977 (lex!2454 thiss!23823 rules!3307 (seqFromList!4141 lt!1233554))))))))

(assert (=> d!1059423 (not (isEmpty!22283 rules!3307))))

(assert (=> d!1059423 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!857 thiss!23823 rules!3307 lt!1233554 suffix!1395) lt!1233793)))

(assert (= (and d!1059423 res!1451742) b!3594508))

(assert (= (and b!3594508 res!1451741) b!3594509))

(assert (= (and d!1059423 c!622341) b!3594510))

(assert (= (and d!1059423 (not c!622341)) b!3594511))

(declare-fun m!4089317 () Bool)

(assert (=> b!3594510 m!4089317))

(assert (=> b!3594510 m!4089317))

(declare-fun m!4089319 () Bool)

(assert (=> b!3594510 m!4089319))

(declare-fun m!4089321 () Bool)

(assert (=> b!3594510 m!4089321))

(declare-fun m!4089323 () Bool)

(assert (=> b!3594510 m!4089323))

(declare-fun m!4089325 () Bool)

(assert (=> b!3594510 m!4089325))

(assert (=> b!3594510 m!4088773))

(declare-fun m!4089327 () Bool)

(assert (=> b!3594510 m!4089327))

(declare-fun m!4089329 () Bool)

(assert (=> b!3594510 m!4089329))

(assert (=> b!3594510 m!4088773))

(assert (=> b!3594510 m!4089323))

(declare-fun m!4089331 () Bool)

(assert (=> b!3594508 m!4089331))

(declare-fun m!4089333 () Bool)

(assert (=> b!3594508 m!4089333))

(assert (=> b!3594508 m!4089331))

(assert (=> b!3594508 m!4089323))

(assert (=> b!3594508 m!4089325))

(assert (=> b!3594508 m!4089323))

(assert (=> b!3594508 m!4089325))

(declare-fun m!4089335 () Bool)

(assert (=> b!3594508 m!4089335))

(assert (=> b!3594509 m!4089331))

(assert (=> b!3594509 m!4089331))

(assert (=> b!3594509 m!4089333))

(assert (=> d!1059423 m!4088773))

(declare-fun m!4089337 () Bool)

(assert (=> d!1059423 m!4089337))

(declare-fun m!4089339 () Bool)

(assert (=> d!1059423 m!4089339))

(declare-fun m!4089341 () Bool)

(assert (=> d!1059423 m!4089341))

(declare-fun m!4089343 () Bool)

(assert (=> d!1059423 m!4089343))

(assert (=> d!1059423 m!4089331))

(assert (=> d!1059423 m!4088701))

(declare-fun m!4089345 () Bool)

(assert (=> d!1059423 m!4089345))

(declare-fun m!4089347 () Bool)

(assert (=> d!1059423 m!4089347))

(declare-fun m!4089349 () Bool)

(assert (=> d!1059423 m!4089349))

(assert (=> d!1059423 m!4089323))

(assert (=> d!1059423 m!4089325))

(assert (=> d!1059423 m!4089347))

(declare-fun m!4089351 () Bool)

(assert (=> d!1059423 m!4089351))

(assert (=> d!1059423 m!4088733))

(assert (=> d!1059423 m!4089331))

(declare-fun m!4089353 () Bool)

(assert (=> d!1059423 m!4089353))

(assert (=> d!1059423 m!4088733))

(declare-fun m!4089355 () Bool)

(assert (=> d!1059423 m!4089355))

(declare-fun m!4089357 () Bool)

(assert (=> d!1059423 m!4089357))

(declare-fun m!4089359 () Bool)

(assert (=> d!1059423 m!4089359))

(assert (=> d!1059423 m!4089341))

(declare-fun m!4089361 () Bool)

(assert (=> d!1059423 m!4089361))

(declare-fun m!4089363 () Bool)

(assert (=> d!1059423 m!4089363))

(assert (=> d!1059423 m!4089357))

(assert (=> d!1059423 m!4088773))

(assert (=> d!1059423 m!4089347))

(assert (=> d!1059423 m!4088773))

(assert (=> d!1059423 m!4089323))

(assert (=> d!1059423 m!4089345))

(declare-fun m!4089365 () Bool)

(assert (=> d!1059423 m!4089365))

(assert (=> b!3594032 d!1059423))

(declare-fun b!3594541 () Bool)

(declare-fun e!2224242 () Bool)

(declare-fun e!2224244 () Bool)

(assert (=> b!3594541 (= e!2224242 e!2224244)))

(declare-fun res!1451765 () Bool)

(assert (=> b!3594541 (=> (not res!1451765) (not e!2224244))))

(assert (=> b!3594541 (= res!1451765 (not ((_ is Nil!37796) lt!1233541)))))

(declare-fun d!1059427 () Bool)

(declare-fun e!2224243 () Bool)

(assert (=> d!1059427 e!2224243))

(declare-fun res!1451767 () Bool)

(assert (=> d!1059427 (=> res!1451767 e!2224243)))

(declare-fun lt!1233804 () Bool)

(assert (=> d!1059427 (= res!1451767 (not lt!1233804))))

(assert (=> d!1059427 (= lt!1233804 e!2224242)))

(declare-fun res!1451764 () Bool)

(assert (=> d!1059427 (=> res!1451764 e!2224242)))

(assert (=> d!1059427 (= res!1451764 ((_ is Nil!37796) lt!1233554))))

(assert (=> d!1059427 (= (isPrefix!2951 lt!1233554 lt!1233541) lt!1233804)))

(declare-fun b!3594543 () Bool)

(assert (=> b!3594543 (= e!2224244 (isPrefix!2951 (tail!5569 lt!1233554) (tail!5569 lt!1233541)))))

(declare-fun b!3594542 () Bool)

(declare-fun res!1451766 () Bool)

(assert (=> b!3594542 (=> (not res!1451766) (not e!2224244))))

(assert (=> b!3594542 (= res!1451766 (= (head!7518 lt!1233554) (head!7518 lt!1233541)))))

(declare-fun b!3594544 () Bool)

(assert (=> b!3594544 (= e!2224243 (>= (size!28795 lt!1233541) (size!28795 lt!1233554)))))

(assert (= (and d!1059427 (not res!1451764)) b!3594541))

(assert (= (and b!3594541 res!1451765) b!3594542))

(assert (= (and b!3594542 res!1451766) b!3594543))

(assert (= (and d!1059427 (not res!1451767)) b!3594544))

(assert (=> b!3594543 m!4089129))

(declare-fun m!4089403 () Bool)

(assert (=> b!3594543 m!4089403))

(assert (=> b!3594543 m!4089129))

(assert (=> b!3594543 m!4089403))

(declare-fun m!4089405 () Bool)

(assert (=> b!3594543 m!4089405))

(assert (=> b!3594542 m!4089125))

(declare-fun m!4089407 () Bool)

(assert (=> b!3594542 m!4089407))

(assert (=> b!3594544 m!4088743))

(assert (=> b!3594544 m!4089211))

(assert (=> b!3594032 d!1059427))

(assert (=> b!3594032 d!1059319))

(declare-fun d!1059431 () Bool)

(assert (=> d!1059431 (= (isDefined!6038 lt!1233540) (not (isEmpty!22286 lt!1233540)))))

(declare-fun bs!570350 () Bool)

(assert (= bs!570350 d!1059431))

(declare-fun m!4089415 () Bool)

(assert (=> bs!570350 m!4089415))

(assert (=> b!3594032 d!1059431))

(declare-fun d!1059435 () Bool)

(assert (=> d!1059435 (= (list!13908 lt!1233543) (list!13910 (c!622249 lt!1233543)))))

(declare-fun bs!570351 () Bool)

(assert (= bs!570351 d!1059435))

(declare-fun m!4089417 () Bool)

(assert (=> bs!570351 m!4089417))

(assert (=> b!3594032 d!1059435))

(declare-fun b!3594549 () Bool)

(declare-fun e!2224248 () Bool)

(declare-fun e!2224250 () Bool)

(assert (=> b!3594549 (= e!2224248 e!2224250)))

(declare-fun res!1451773 () Bool)

(assert (=> b!3594549 (=> (not res!1451773) (not e!2224250))))

(assert (=> b!3594549 (= res!1451773 (not ((_ is Nil!37796) lt!1233541)))))

(declare-fun d!1059437 () Bool)

(declare-fun e!2224249 () Bool)

(assert (=> d!1059437 e!2224249))

(declare-fun res!1451775 () Bool)

(assert (=> d!1059437 (=> res!1451775 e!2224249)))

(declare-fun lt!1233806 () Bool)

(assert (=> d!1059437 (= res!1451775 (not lt!1233806))))

(assert (=> d!1059437 (= lt!1233806 e!2224248)))

(declare-fun res!1451772 () Bool)

(assert (=> d!1059437 (=> res!1451772 e!2224248)))

(assert (=> d!1059437 (= res!1451772 ((_ is Nil!37796) lt!1233538))))

(assert (=> d!1059437 (= (isPrefix!2951 lt!1233538 lt!1233541) lt!1233806)))

(declare-fun b!3594551 () Bool)

(assert (=> b!3594551 (= e!2224250 (isPrefix!2951 (tail!5569 lt!1233538) (tail!5569 lt!1233541)))))

(declare-fun b!3594550 () Bool)

(declare-fun res!1451774 () Bool)

(assert (=> b!3594550 (=> (not res!1451774) (not e!2224250))))

(assert (=> b!3594550 (= res!1451774 (= (head!7518 lt!1233538) (head!7518 lt!1233541)))))

(declare-fun b!3594552 () Bool)

(assert (=> b!3594552 (= e!2224249 (>= (size!28795 lt!1233541) (size!28795 lt!1233538)))))

(assert (= (and d!1059437 (not res!1451772)) b!3594549))

(assert (= (and b!3594549 res!1451773) b!3594550))

(assert (= (and b!3594550 res!1451774) b!3594551))

(assert (= (and d!1059437 (not res!1451775)) b!3594552))

(assert (=> b!3594551 m!4089167))

(assert (=> b!3594551 m!4089403))

(assert (=> b!3594551 m!4089167))

(assert (=> b!3594551 m!4089403))

(declare-fun m!4089421 () Bool)

(assert (=> b!3594551 m!4089421))

(assert (=> b!3594550 m!4089163))

(assert (=> b!3594550 m!4089407))

(assert (=> b!3594552 m!4088743))

(assert (=> b!3594552 m!4088715))

(assert (=> b!3594032 d!1059437))

(declare-fun d!1059441 () Bool)

(assert (=> d!1059441 (isPrefix!2951 lt!1233554 (++!9404 lt!1233554 suffix!1395))))

(declare-fun lt!1233811 () Unit!53801)

(declare-fun choose!20924 (List!37920 List!37920) Unit!53801)

(assert (=> d!1059441 (= lt!1233811 (choose!20924 lt!1233554 suffix!1395))))

(assert (=> d!1059441 (= (lemmaConcatTwoListThenFirstIsPrefix!1872 lt!1233554 suffix!1395) lt!1233811)))

(declare-fun bs!570353 () Bool)

(assert (= bs!570353 d!1059441))

(assert (=> bs!570353 m!4088773))

(assert (=> bs!570353 m!4088773))

(declare-fun m!4089449 () Bool)

(assert (=> bs!570353 m!4089449))

(declare-fun m!4089451 () Bool)

(assert (=> bs!570353 m!4089451))

(assert (=> b!3594032 d!1059441))

(declare-fun d!1059453 () Bool)

(assert (=> d!1059453 (= (get!12210 lt!1233553) (v!37492 lt!1233553))))

(assert (=> b!3594032 d!1059453))

(declare-fun d!1059455 () Bool)

(assert (=> d!1059455 (isPrefix!2951 lt!1233538 (++!9404 lt!1233538 (_2!21974 lt!1233551)))))

(declare-fun lt!1233812 () Unit!53801)

(assert (=> d!1059455 (= lt!1233812 (choose!20924 lt!1233538 (_2!21974 lt!1233551)))))

(assert (=> d!1059455 (= (lemmaConcatTwoListThenFirstIsPrefix!1872 lt!1233538 (_2!21974 lt!1233551)) lt!1233812)))

(declare-fun bs!570354 () Bool)

(assert (= bs!570354 d!1059455))

(assert (=> bs!570354 m!4088769))

(assert (=> bs!570354 m!4088769))

(assert (=> bs!570354 m!4088771))

(declare-fun m!4089453 () Bool)

(assert (=> bs!570354 m!4089453))

(assert (=> b!3594032 d!1059455))

(declare-fun b!3594623 () Bool)

(declare-fun e!2224286 () Bool)

(declare-fun e!2224285 () Bool)

(assert (=> b!3594623 (= e!2224286 e!2224285)))

(declare-fun res!1451797 () Bool)

(assert (=> b!3594623 (=> (not res!1451797) (not e!2224285))))

(declare-fun lt!1233824 () Option!7807)

(assert (=> b!3594623 (= res!1451797 (isDefined!6039 lt!1233824))))

(declare-fun b!3594624 () Bool)

(declare-fun e!2224287 () Option!7807)

(declare-fun lt!1233826 () Option!7807)

(declare-fun lt!1233825 () Option!7807)

(assert (=> b!3594624 (= e!2224287 (ite (and ((_ is None!7806) lt!1233826) ((_ is None!7806) lt!1233825)) None!7806 (ite ((_ is None!7806) lt!1233825) lt!1233826 (ite ((_ is None!7806) lt!1233826) lt!1233825 (ite (>= (size!28794 (_1!21974 (v!37492 lt!1233826))) (size!28794 (_1!21974 (v!37492 lt!1233825)))) lt!1233826 lt!1233825)))))))

(declare-fun call!260099 () Option!7807)

(assert (=> b!3594624 (= lt!1233826 call!260099)))

(assert (=> b!3594624 (= lt!1233825 (maxPrefix!2711 thiss!23823 (t!291412 rules!3307) lt!1233541))))

(declare-fun bm!260094 () Bool)

(assert (=> bm!260094 (= call!260099 (maxPrefixOneRule!1855 thiss!23823 (h!43217 rules!3307) lt!1233541))))

(declare-fun b!3594625 () Bool)

(declare-fun res!1451802 () Bool)

(assert (=> b!3594625 (=> (not res!1451802) (not e!2224285))))

(assert (=> b!3594625 (= res!1451802 (matchR!4916 (regex!5588 (rule!8310 (_1!21974 (get!12210 lt!1233824)))) (list!13908 (charsOf!3602 (_1!21974 (get!12210 lt!1233824))))))))

(declare-fun b!3594626 () Bool)

(declare-fun res!1451801 () Bool)

(assert (=> b!3594626 (=> (not res!1451801) (not e!2224285))))

(assert (=> b!3594626 (= res!1451801 (< (size!28795 (_2!21974 (get!12210 lt!1233824))) (size!28795 lt!1233541)))))

(declare-fun b!3594627 () Bool)

(declare-fun res!1451798 () Bool)

(assert (=> b!3594627 (=> (not res!1451798) (not e!2224285))))

(assert (=> b!3594627 (= res!1451798 (= (value!179718 (_1!21974 (get!12210 lt!1233824))) (apply!9094 (transformation!5588 (rule!8310 (_1!21974 (get!12210 lt!1233824)))) (seqFromList!4141 (originalCharacters!6302 (_1!21974 (get!12210 lt!1233824)))))))))

(declare-fun d!1059457 () Bool)

(assert (=> d!1059457 e!2224286))

(declare-fun res!1451803 () Bool)

(assert (=> d!1059457 (=> res!1451803 e!2224286)))

(assert (=> d!1059457 (= res!1451803 (isEmpty!22287 lt!1233824))))

(assert (=> d!1059457 (= lt!1233824 e!2224287)))

(declare-fun c!622349 () Bool)

(assert (=> d!1059457 (= c!622349 (and ((_ is Cons!37797) rules!3307) ((_ is Nil!37797) (t!291412 rules!3307))))))

(declare-fun lt!1233827 () Unit!53801)

(declare-fun lt!1233823 () Unit!53801)

(assert (=> d!1059457 (= lt!1233827 lt!1233823)))

(assert (=> d!1059457 (isPrefix!2951 lt!1233541 lt!1233541)))

(declare-fun lemmaIsPrefixRefl!1888 (List!37920 List!37920) Unit!53801)

(assert (=> d!1059457 (= lt!1233823 (lemmaIsPrefixRefl!1888 lt!1233541 lt!1233541))))

(declare-fun rulesValidInductive!1953 (LexerInterface!5177 List!37921) Bool)

(assert (=> d!1059457 (rulesValidInductive!1953 thiss!23823 rules!3307)))

(assert (=> d!1059457 (= (maxPrefix!2711 thiss!23823 rules!3307 lt!1233541) lt!1233824)))

(declare-fun b!3594628 () Bool)

(assert (=> b!3594628 (= e!2224285 (contains!7239 rules!3307 (rule!8310 (_1!21974 (get!12210 lt!1233824)))))))

(declare-fun b!3594629 () Bool)

(assert (=> b!3594629 (= e!2224287 call!260099)))

(declare-fun b!3594630 () Bool)

(declare-fun res!1451799 () Bool)

(assert (=> b!3594630 (=> (not res!1451799) (not e!2224285))))

(assert (=> b!3594630 (= res!1451799 (= (list!13908 (charsOf!3602 (_1!21974 (get!12210 lt!1233824)))) (originalCharacters!6302 (_1!21974 (get!12210 lt!1233824)))))))

(declare-fun b!3594631 () Bool)

(declare-fun res!1451800 () Bool)

(assert (=> b!3594631 (=> (not res!1451800) (not e!2224285))))

(assert (=> b!3594631 (= res!1451800 (= (++!9404 (list!13908 (charsOf!3602 (_1!21974 (get!12210 lt!1233824)))) (_2!21974 (get!12210 lt!1233824))) lt!1233541))))

(assert (= (and d!1059457 c!622349) b!3594629))

(assert (= (and d!1059457 (not c!622349)) b!3594624))

(assert (= (or b!3594629 b!3594624) bm!260094))

(assert (= (and d!1059457 (not res!1451803)) b!3594623))

(assert (= (and b!3594623 res!1451797) b!3594630))

(assert (= (and b!3594630 res!1451799) b!3594626))

(assert (= (and b!3594626 res!1451801) b!3594631))

(assert (= (and b!3594631 res!1451800) b!3594627))

(assert (= (and b!3594627 res!1451798) b!3594625))

(assert (= (and b!3594625 res!1451802) b!3594628))

(declare-fun m!4089459 () Bool)

(assert (=> b!3594625 m!4089459))

(declare-fun m!4089461 () Bool)

(assert (=> b!3594625 m!4089461))

(assert (=> b!3594625 m!4089461))

(declare-fun m!4089463 () Bool)

(assert (=> b!3594625 m!4089463))

(assert (=> b!3594625 m!4089463))

(declare-fun m!4089465 () Bool)

(assert (=> b!3594625 m!4089465))

(declare-fun m!4089467 () Bool)

(assert (=> b!3594624 m!4089467))

(assert (=> b!3594630 m!4089459))

(assert (=> b!3594630 m!4089461))

(assert (=> b!3594630 m!4089461))

(assert (=> b!3594630 m!4089463))

(assert (=> b!3594631 m!4089459))

(assert (=> b!3594631 m!4089461))

(assert (=> b!3594631 m!4089461))

(assert (=> b!3594631 m!4089463))

(assert (=> b!3594631 m!4089463))

(declare-fun m!4089469 () Bool)

(assert (=> b!3594631 m!4089469))

(assert (=> b!3594627 m!4089459))

(declare-fun m!4089471 () Bool)

(assert (=> b!3594627 m!4089471))

(assert (=> b!3594627 m!4089471))

(declare-fun m!4089473 () Bool)

(assert (=> b!3594627 m!4089473))

(declare-fun m!4089475 () Bool)

(assert (=> b!3594623 m!4089475))

(assert (=> b!3594626 m!4089459))

(declare-fun m!4089477 () Bool)

(assert (=> b!3594626 m!4089477))

(assert (=> b!3594626 m!4088743))

(declare-fun m!4089479 () Bool)

(assert (=> bm!260094 m!4089479))

(declare-fun m!4089481 () Bool)

(assert (=> d!1059457 m!4089481))

(declare-fun m!4089483 () Bool)

(assert (=> d!1059457 m!4089483))

(declare-fun m!4089485 () Bool)

(assert (=> d!1059457 m!4089485))

(declare-fun m!4089487 () Bool)

(assert (=> d!1059457 m!4089487))

(assert (=> b!3594628 m!4089459))

(declare-fun m!4089489 () Bool)

(assert (=> b!3594628 m!4089489))

(assert (=> b!3594032 d!1059457))

(declare-fun b!3594632 () Bool)

(declare-fun e!2224288 () Bool)

(declare-fun e!2224290 () Bool)

(assert (=> b!3594632 (= e!2224288 e!2224290)))

(declare-fun res!1451805 () Bool)

(assert (=> b!3594632 (=> (not res!1451805) (not e!2224290))))

(assert (=> b!3594632 (= res!1451805 (not ((_ is Nil!37796) (++!9404 lt!1233538 (_2!21974 lt!1233551)))))))

(declare-fun d!1059459 () Bool)

(declare-fun e!2224289 () Bool)

(assert (=> d!1059459 e!2224289))

(declare-fun res!1451807 () Bool)

(assert (=> d!1059459 (=> res!1451807 e!2224289)))

(declare-fun lt!1233828 () Bool)

(assert (=> d!1059459 (= res!1451807 (not lt!1233828))))

(assert (=> d!1059459 (= lt!1233828 e!2224288)))

(declare-fun res!1451804 () Bool)

(assert (=> d!1059459 (=> res!1451804 e!2224288)))

(assert (=> d!1059459 (= res!1451804 ((_ is Nil!37796) lt!1233538))))

(assert (=> d!1059459 (= (isPrefix!2951 lt!1233538 (++!9404 lt!1233538 (_2!21974 lt!1233551))) lt!1233828)))

(declare-fun b!3594634 () Bool)

(assert (=> b!3594634 (= e!2224290 (isPrefix!2951 (tail!5569 lt!1233538) (tail!5569 (++!9404 lt!1233538 (_2!21974 lt!1233551)))))))

(declare-fun b!3594633 () Bool)

(declare-fun res!1451806 () Bool)

(assert (=> b!3594633 (=> (not res!1451806) (not e!2224290))))

(assert (=> b!3594633 (= res!1451806 (= (head!7518 lt!1233538) (head!7518 (++!9404 lt!1233538 (_2!21974 lt!1233551)))))))

(declare-fun b!3594635 () Bool)

(assert (=> b!3594635 (= e!2224289 (>= (size!28795 (++!9404 lt!1233538 (_2!21974 lt!1233551))) (size!28795 lt!1233538)))))

(assert (= (and d!1059459 (not res!1451804)) b!3594632))

(assert (= (and b!3594632 res!1451805) b!3594633))

(assert (= (and b!3594633 res!1451806) b!3594634))

(assert (= (and d!1059459 (not res!1451807)) b!3594635))

(assert (=> b!3594634 m!4089167))

(assert (=> b!3594634 m!4088769))

(declare-fun m!4089491 () Bool)

(assert (=> b!3594634 m!4089491))

(assert (=> b!3594634 m!4089167))

(assert (=> b!3594634 m!4089491))

(declare-fun m!4089493 () Bool)

(assert (=> b!3594634 m!4089493))

(assert (=> b!3594633 m!4089163))

(assert (=> b!3594633 m!4088769))

(declare-fun m!4089495 () Bool)

(assert (=> b!3594633 m!4089495))

(assert (=> b!3594635 m!4088769))

(declare-fun m!4089497 () Bool)

(assert (=> b!3594635 m!4089497))

(assert (=> b!3594635 m!4088715))

(assert (=> b!3594032 d!1059459))

(declare-fun d!1059461 () Bool)

(assert (=> d!1059461 (= (isDefined!6039 lt!1233558) (not (isEmpty!22287 lt!1233558)))))

(declare-fun bs!570355 () Bool)

(assert (= bs!570355 d!1059461))

(declare-fun m!4089499 () Bool)

(assert (=> bs!570355 m!4089499))

(assert (=> b!3594034 d!1059461))

(declare-fun b!3594636 () Bool)

(declare-fun e!2224292 () Bool)

(declare-fun e!2224291 () Bool)

(assert (=> b!3594636 (= e!2224292 e!2224291)))

(declare-fun res!1451808 () Bool)

(assert (=> b!3594636 (=> (not res!1451808) (not e!2224291))))

(declare-fun lt!1233830 () Option!7807)

(assert (=> b!3594636 (= res!1451808 (isDefined!6039 lt!1233830))))

(declare-fun b!3594637 () Bool)

(declare-fun e!2224293 () Option!7807)

(declare-fun lt!1233832 () Option!7807)

(declare-fun lt!1233831 () Option!7807)

(assert (=> b!3594637 (= e!2224293 (ite (and ((_ is None!7806) lt!1233832) ((_ is None!7806) lt!1233831)) None!7806 (ite ((_ is None!7806) lt!1233831) lt!1233832 (ite ((_ is None!7806) lt!1233832) lt!1233831 (ite (>= (size!28794 (_1!21974 (v!37492 lt!1233832))) (size!28794 (_1!21974 (v!37492 lt!1233831)))) lt!1233832 lt!1233831)))))))

(declare-fun call!260100 () Option!7807)

(assert (=> b!3594637 (= lt!1233832 call!260100)))

(assert (=> b!3594637 (= lt!1233831 (maxPrefix!2711 thiss!23823 (t!291412 rules!3307) lt!1233554))))

(declare-fun bm!260095 () Bool)

(assert (=> bm!260095 (= call!260100 (maxPrefixOneRule!1855 thiss!23823 (h!43217 rules!3307) lt!1233554))))

(declare-fun b!3594638 () Bool)

(declare-fun res!1451813 () Bool)

(assert (=> b!3594638 (=> (not res!1451813) (not e!2224291))))

(assert (=> b!3594638 (= res!1451813 (matchR!4916 (regex!5588 (rule!8310 (_1!21974 (get!12210 lt!1233830)))) (list!13908 (charsOf!3602 (_1!21974 (get!12210 lt!1233830))))))))

(declare-fun b!3594639 () Bool)

(declare-fun res!1451812 () Bool)

(assert (=> b!3594639 (=> (not res!1451812) (not e!2224291))))

(assert (=> b!3594639 (= res!1451812 (< (size!28795 (_2!21974 (get!12210 lt!1233830))) (size!28795 lt!1233554)))))

(declare-fun b!3594640 () Bool)

(declare-fun res!1451809 () Bool)

(assert (=> b!3594640 (=> (not res!1451809) (not e!2224291))))

(assert (=> b!3594640 (= res!1451809 (= (value!179718 (_1!21974 (get!12210 lt!1233830))) (apply!9094 (transformation!5588 (rule!8310 (_1!21974 (get!12210 lt!1233830)))) (seqFromList!4141 (originalCharacters!6302 (_1!21974 (get!12210 lt!1233830)))))))))

(declare-fun d!1059463 () Bool)

(assert (=> d!1059463 e!2224292))

(declare-fun res!1451814 () Bool)

(assert (=> d!1059463 (=> res!1451814 e!2224292)))

(assert (=> d!1059463 (= res!1451814 (isEmpty!22287 lt!1233830))))

(assert (=> d!1059463 (= lt!1233830 e!2224293)))

(declare-fun c!622350 () Bool)

(assert (=> d!1059463 (= c!622350 (and ((_ is Cons!37797) rules!3307) ((_ is Nil!37797) (t!291412 rules!3307))))))

(declare-fun lt!1233833 () Unit!53801)

(declare-fun lt!1233829 () Unit!53801)

(assert (=> d!1059463 (= lt!1233833 lt!1233829)))

(assert (=> d!1059463 (isPrefix!2951 lt!1233554 lt!1233554)))

(assert (=> d!1059463 (= lt!1233829 (lemmaIsPrefixRefl!1888 lt!1233554 lt!1233554))))

(assert (=> d!1059463 (rulesValidInductive!1953 thiss!23823 rules!3307)))

(assert (=> d!1059463 (= (maxPrefix!2711 thiss!23823 rules!3307 lt!1233554) lt!1233830)))

(declare-fun b!3594641 () Bool)

(assert (=> b!3594641 (= e!2224291 (contains!7239 rules!3307 (rule!8310 (_1!21974 (get!12210 lt!1233830)))))))

(declare-fun b!3594642 () Bool)

(assert (=> b!3594642 (= e!2224293 call!260100)))

(declare-fun b!3594643 () Bool)

(declare-fun res!1451810 () Bool)

(assert (=> b!3594643 (=> (not res!1451810) (not e!2224291))))

(assert (=> b!3594643 (= res!1451810 (= (list!13908 (charsOf!3602 (_1!21974 (get!12210 lt!1233830)))) (originalCharacters!6302 (_1!21974 (get!12210 lt!1233830)))))))

(declare-fun b!3594644 () Bool)

(declare-fun res!1451811 () Bool)

(assert (=> b!3594644 (=> (not res!1451811) (not e!2224291))))

(assert (=> b!3594644 (= res!1451811 (= (++!9404 (list!13908 (charsOf!3602 (_1!21974 (get!12210 lt!1233830)))) (_2!21974 (get!12210 lt!1233830))) lt!1233554))))

(assert (= (and d!1059463 c!622350) b!3594642))

(assert (= (and d!1059463 (not c!622350)) b!3594637))

(assert (= (or b!3594642 b!3594637) bm!260095))

(assert (= (and d!1059463 (not res!1451814)) b!3594636))

(assert (= (and b!3594636 res!1451808) b!3594643))

(assert (= (and b!3594643 res!1451810) b!3594639))

(assert (= (and b!3594639 res!1451812) b!3594644))

(assert (= (and b!3594644 res!1451811) b!3594640))

(assert (= (and b!3594640 res!1451809) b!3594638))

(assert (= (and b!3594638 res!1451813) b!3594641))

(declare-fun m!4089501 () Bool)

(assert (=> b!3594638 m!4089501))

(declare-fun m!4089503 () Bool)

(assert (=> b!3594638 m!4089503))

(assert (=> b!3594638 m!4089503))

(declare-fun m!4089505 () Bool)

(assert (=> b!3594638 m!4089505))

(assert (=> b!3594638 m!4089505))

(declare-fun m!4089507 () Bool)

(assert (=> b!3594638 m!4089507))

(declare-fun m!4089509 () Bool)

(assert (=> b!3594637 m!4089509))

(assert (=> b!3594643 m!4089501))

(assert (=> b!3594643 m!4089503))

(assert (=> b!3594643 m!4089503))

(assert (=> b!3594643 m!4089505))

(assert (=> b!3594644 m!4089501))

(assert (=> b!3594644 m!4089503))

(assert (=> b!3594644 m!4089503))

(assert (=> b!3594644 m!4089505))

(assert (=> b!3594644 m!4089505))

(declare-fun m!4089511 () Bool)

(assert (=> b!3594644 m!4089511))

(assert (=> b!3594640 m!4089501))

(declare-fun m!4089513 () Bool)

(assert (=> b!3594640 m!4089513))

(assert (=> b!3594640 m!4089513))

(declare-fun m!4089515 () Bool)

(assert (=> b!3594640 m!4089515))

(declare-fun m!4089517 () Bool)

(assert (=> b!3594636 m!4089517))

(assert (=> b!3594639 m!4089501))

(declare-fun m!4089519 () Bool)

(assert (=> b!3594639 m!4089519))

(assert (=> b!3594639 m!4089211))

(declare-fun m!4089521 () Bool)

(assert (=> bm!260095 m!4089521))

(declare-fun m!4089523 () Bool)

(assert (=> d!1059463 m!4089523))

(declare-fun m!4089525 () Bool)

(assert (=> d!1059463 m!4089525))

(declare-fun m!4089527 () Bool)

(assert (=> d!1059463 m!4089527))

(assert (=> d!1059463 m!4089487))

(assert (=> b!3594641 m!4089501))

(declare-fun m!4089529 () Bool)

(assert (=> b!3594641 m!4089529))

(assert (=> b!3594034 d!1059463))

(declare-fun d!1059465 () Bool)

(assert (=> d!1059465 (= (list!13908 (charsOf!3602 token!511)) (list!13910 (c!622249 (charsOf!3602 token!511))))))

(declare-fun bs!570356 () Bool)

(assert (= bs!570356 d!1059465))

(declare-fun m!4089531 () Bool)

(assert (=> bs!570356 m!4089531))

(assert (=> b!3594034 d!1059465))

(declare-fun d!1059467 () Bool)

(declare-fun lt!1233834 () BalanceConc!22616)

(assert (=> d!1059467 (= (list!13908 lt!1233834) (originalCharacters!6302 token!511))))

(assert (=> d!1059467 (= lt!1233834 (dynLambda!16268 (toChars!7731 (transformation!5588 (rule!8310 token!511))) (value!179718 token!511)))))

(assert (=> d!1059467 (= (charsOf!3602 token!511) lt!1233834)))

(declare-fun b_lambda!106239 () Bool)

(assert (=> (not b_lambda!106239) (not d!1059467)))

(assert (=> d!1059467 t!291494))

(declare-fun b_and!260431 () Bool)

(assert (= b_and!260419 (and (=> t!291494 result!250326) b_and!260431)))

(assert (=> d!1059467 t!291496))

(declare-fun b_and!260433 () Bool)

(assert (= b_and!260421 (and (=> t!291496 result!250328) b_and!260433)))

(assert (=> d!1059467 t!291498))

(declare-fun b_and!260435 () Bool)

(assert (= b_and!260423 (and (=> t!291498 result!250330) b_and!260435)))

(assert (=> d!1059467 t!291500))

(declare-fun b_and!260437 () Bool)

(assert (= b_and!260425 (and (=> t!291500 result!250332) b_and!260437)))

(declare-fun m!4089533 () Bool)

(assert (=> d!1059467 m!4089533))

(assert (=> d!1059467 m!4089183))

(assert (=> b!3594034 d!1059467))

(declare-fun d!1059469 () Bool)

(assert (=> d!1059469 (= (inv!51140 (tag!6266 rule!403)) (= (mod (str.len (value!179717 (tag!6266 rule!403))) 2) 0))))

(assert (=> b!3594033 d!1059469))

(declare-fun d!1059471 () Bool)

(declare-fun res!1451817 () Bool)

(declare-fun e!2224296 () Bool)

(assert (=> d!1059471 (=> (not res!1451817) (not e!2224296))))

(declare-fun semiInverseModEq!2369 (Int Int) Bool)

(assert (=> d!1059471 (= res!1451817 (semiInverseModEq!2369 (toChars!7731 (transformation!5588 rule!403)) (toValue!7872 (transformation!5588 rule!403))))))

(assert (=> d!1059471 (= (inv!51143 (transformation!5588 rule!403)) e!2224296)))

(declare-fun b!3594647 () Bool)

(declare-fun equivClasses!2268 (Int Int) Bool)

(assert (=> b!3594647 (= e!2224296 (equivClasses!2268 (toChars!7731 (transformation!5588 rule!403)) (toValue!7872 (transformation!5588 rule!403))))))

(assert (= (and d!1059471 res!1451817) b!3594647))

(declare-fun m!4089535 () Bool)

(assert (=> d!1059471 m!4089535))

(declare-fun m!4089537 () Bool)

(assert (=> b!3594647 m!4089537))

(assert (=> b!3594033 d!1059471))

(declare-fun d!1059473 () Bool)

(declare-fun res!1451822 () Bool)

(declare-fun e!2224301 () Bool)

(assert (=> d!1059473 (=> res!1451822 e!2224301)))

(assert (=> d!1059473 (= res!1451822 (not ((_ is Cons!37797) rules!3307)))))

(assert (=> d!1059473 (= (sepAndNonSepRulesDisjointChars!1758 rules!3307 rules!3307) e!2224301)))

(declare-fun b!3594652 () Bool)

(declare-fun e!2224302 () Bool)

(assert (=> b!3594652 (= e!2224301 e!2224302)))

(declare-fun res!1451823 () Bool)

(assert (=> b!3594652 (=> (not res!1451823) (not e!2224302))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!795 (Rule!10976 List!37921) Bool)

(assert (=> b!3594652 (= res!1451823 (ruleDisjointCharsFromAllFromOtherType!795 (h!43217 rules!3307) rules!3307))))

(declare-fun b!3594653 () Bool)

(assert (=> b!3594653 (= e!2224302 (sepAndNonSepRulesDisjointChars!1758 rules!3307 (t!291412 rules!3307)))))

(assert (= (and d!1059473 (not res!1451822)) b!3594652))

(assert (= (and b!3594652 res!1451823) b!3594653))

(declare-fun m!4089539 () Bool)

(assert (=> b!3594652 m!4089539))

(declare-fun m!4089541 () Bool)

(assert (=> b!3594653 m!4089541))

(assert (=> b!3594026 d!1059473))

(declare-fun d!1059475 () Bool)

(declare-fun lt!1233837 () Bool)

(assert (=> d!1059475 (= lt!1233837 (select (content!5381 (usedCharacters!802 (regex!5588 rule!403))) lt!1233539))))

(declare-fun e!2224308 () Bool)

(assert (=> d!1059475 (= lt!1233837 e!2224308)))

(declare-fun res!1451829 () Bool)

(assert (=> d!1059475 (=> (not res!1451829) (not e!2224308))))

(assert (=> d!1059475 (= res!1451829 ((_ is Cons!37796) (usedCharacters!802 (regex!5588 rule!403))))))

(assert (=> d!1059475 (= (contains!7240 (usedCharacters!802 (regex!5588 rule!403)) lt!1233539) lt!1233837)))

(declare-fun b!3594658 () Bool)

(declare-fun e!2224307 () Bool)

(assert (=> b!3594658 (= e!2224308 e!2224307)))

(declare-fun res!1451828 () Bool)

(assert (=> b!3594658 (=> res!1451828 e!2224307)))

(assert (=> b!3594658 (= res!1451828 (= (h!43216 (usedCharacters!802 (regex!5588 rule!403))) lt!1233539))))

(declare-fun b!3594659 () Bool)

(assert (=> b!3594659 (= e!2224307 (contains!7240 (t!291411 (usedCharacters!802 (regex!5588 rule!403))) lt!1233539))))

(assert (= (and d!1059475 res!1451829) b!3594658))

(assert (= (and b!3594658 (not res!1451828)) b!3594659))

(assert (=> d!1059475 m!4088763))

(declare-fun m!4089543 () Bool)

(assert (=> d!1059475 m!4089543))

(declare-fun m!4089545 () Bool)

(assert (=> d!1059475 m!4089545))

(declare-fun m!4089547 () Bool)

(assert (=> b!3594659 m!4089547))

(assert (=> b!3594025 d!1059475))

(declare-fun b!3594676 () Bool)

(declare-fun e!2224319 () List!37920)

(declare-fun e!2224317 () List!37920)

(assert (=> b!3594676 (= e!2224319 e!2224317)))

(declare-fun c!622359 () Bool)

(assert (=> b!3594676 (= c!622359 ((_ is ElementMatch!10347) (regex!5588 rule!403)))))

(declare-fun b!3594677 () Bool)

(assert (=> b!3594677 (= e!2224319 Nil!37796)))

(declare-fun bm!260104 () Bool)

(declare-fun call!260111 () List!37920)

(declare-fun c!622360 () Bool)

(assert (=> bm!260104 (= call!260111 (usedCharacters!802 (ite c!622360 (regOne!21207 (regex!5588 rule!403)) (regTwo!21206 (regex!5588 rule!403)))))))

(declare-fun bm!260105 () Bool)

(declare-fun call!260109 () List!37920)

(declare-fun call!260112 () List!37920)

(assert (=> bm!260105 (= call!260109 call!260112)))

(declare-fun b!3594678 () Bool)

(declare-fun e!2224318 () List!37920)

(assert (=> b!3594678 (= e!2224318 call!260112)))

(declare-fun b!3594679 () Bool)

(declare-fun e!2224320 () List!37920)

(declare-fun call!260110 () List!37920)

(assert (=> b!3594679 (= e!2224320 call!260110)))

(declare-fun b!3594680 () Bool)

(assert (=> b!3594680 (= e!2224317 (Cons!37796 (c!622248 (regex!5588 rule!403)) Nil!37796))))

(declare-fun b!3594681 () Bool)

(assert (=> b!3594681 (= e!2224320 call!260110)))

(declare-fun b!3594682 () Bool)

(declare-fun c!622361 () Bool)

(assert (=> b!3594682 (= c!622361 ((_ is Star!10347) (regex!5588 rule!403)))))

(assert (=> b!3594682 (= e!2224317 e!2224318)))

(declare-fun b!3594683 () Bool)

(assert (=> b!3594683 (= e!2224318 e!2224320)))

(assert (=> b!3594683 (= c!622360 ((_ is Union!10347) (regex!5588 rule!403)))))

(declare-fun bm!260106 () Bool)

(assert (=> bm!260106 (= call!260112 (usedCharacters!802 (ite c!622361 (reg!10676 (regex!5588 rule!403)) (ite c!622360 (regTwo!21207 (regex!5588 rule!403)) (regOne!21206 (regex!5588 rule!403))))))))

(declare-fun bm!260107 () Bool)

(assert (=> bm!260107 (= call!260110 (++!9404 (ite c!622360 call!260111 call!260109) (ite c!622360 call!260109 call!260111)))))

(declare-fun d!1059477 () Bool)

(declare-fun c!622362 () Bool)

(assert (=> d!1059477 (= c!622362 (or ((_ is EmptyExpr!10347) (regex!5588 rule!403)) ((_ is EmptyLang!10347) (regex!5588 rule!403))))))

(assert (=> d!1059477 (= (usedCharacters!802 (regex!5588 rule!403)) e!2224319)))

(assert (= (and d!1059477 c!622362) b!3594677))

(assert (= (and d!1059477 (not c!622362)) b!3594676))

(assert (= (and b!3594676 c!622359) b!3594680))

(assert (= (and b!3594676 (not c!622359)) b!3594682))

(assert (= (and b!3594682 c!622361) b!3594678))

(assert (= (and b!3594682 (not c!622361)) b!3594683))

(assert (= (and b!3594683 c!622360) b!3594681))

(assert (= (and b!3594683 (not c!622360)) b!3594679))

(assert (= (or b!3594681 b!3594679) bm!260104))

(assert (= (or b!3594681 b!3594679) bm!260105))

(assert (= (or b!3594681 b!3594679) bm!260107))

(assert (= (or b!3594678 bm!260105) bm!260106))

(declare-fun m!4089549 () Bool)

(assert (=> bm!260104 m!4089549))

(declare-fun m!4089551 () Bool)

(assert (=> bm!260106 m!4089551))

(declare-fun m!4089553 () Bool)

(assert (=> bm!260107 m!4089553))

(assert (=> b!3594025 d!1059477))

(declare-fun d!1059479 () Bool)

(assert (=> d!1059479 (= (head!7518 suffix!1395) (h!43216 suffix!1395))))

(assert (=> b!3594025 d!1059479))

(declare-fun d!1059481 () Bool)

(assert (=> d!1059481 (= (maxPrefixOneRule!1855 thiss!23823 (rule!8310 (_1!21974 lt!1233551)) lt!1233541) (Some!7806 (tuple2!37681 (Token!10543 (apply!9094 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))) (seqFromList!4141 lt!1233538)) (rule!8310 (_1!21974 lt!1233551)) (size!28795 lt!1233538) lt!1233538) (_2!21974 lt!1233551))))))

(declare-fun lt!1233840 () Unit!53801)

(declare-fun choose!20925 (LexerInterface!5177 List!37921 List!37920 List!37920 List!37920 Rule!10976) Unit!53801)

(assert (=> d!1059481 (= lt!1233840 (choose!20925 thiss!23823 rules!3307 lt!1233538 lt!1233541 (_2!21974 lt!1233551) (rule!8310 (_1!21974 lt!1233551))))))

(assert (=> d!1059481 (not (isEmpty!22283 rules!3307))))

(assert (=> d!1059481 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!927 thiss!23823 rules!3307 lt!1233538 lt!1233541 (_2!21974 lt!1233551) (rule!8310 (_1!21974 lt!1233551))) lt!1233840)))

(declare-fun bs!570357 () Bool)

(assert (= bs!570357 d!1059481))

(assert (=> bs!570357 m!4088713))

(assert (=> bs!570357 m!4088717))

(assert (=> bs!570357 m!4088721))

(assert (=> bs!570357 m!4088701))

(assert (=> bs!570357 m!4088715))

(declare-fun m!4089555 () Bool)

(assert (=> bs!570357 m!4089555))

(assert (=> bs!570357 m!4088713))

(assert (=> b!3594048 d!1059481))

(declare-fun d!1059483 () Bool)

(assert (=> d!1059483 (= (_2!21974 lt!1233551) lt!1233537)))

(declare-fun lt!1233843 () Unit!53801)

(declare-fun choose!20926 (List!37920 List!37920 List!37920 List!37920 List!37920) Unit!53801)

(assert (=> d!1059483 (= lt!1233843 (choose!20926 lt!1233538 (_2!21974 lt!1233551) lt!1233538 lt!1233537 lt!1233541))))

(assert (=> d!1059483 (isPrefix!2951 lt!1233538 lt!1233541)))

(assert (=> d!1059483 (= (lemmaSamePrefixThenSameSuffix!1306 lt!1233538 (_2!21974 lt!1233551) lt!1233538 lt!1233537 lt!1233541) lt!1233843)))

(declare-fun bs!570358 () Bool)

(assert (= bs!570358 d!1059483))

(declare-fun m!4089557 () Bool)

(assert (=> bs!570358 m!4089557))

(assert (=> bs!570358 m!4088775))

(assert (=> b!3594048 d!1059483))

(declare-fun d!1059485 () Bool)

(declare-fun lt!1233846 () List!37920)

(assert (=> d!1059485 (= (++!9404 lt!1233538 lt!1233846) lt!1233541)))

(declare-fun e!2224323 () List!37920)

(assert (=> d!1059485 (= lt!1233846 e!2224323)))

(declare-fun c!622365 () Bool)

(assert (=> d!1059485 (= c!622365 ((_ is Cons!37796) lt!1233538))))

(assert (=> d!1059485 (>= (size!28795 lt!1233541) (size!28795 lt!1233538))))

(assert (=> d!1059485 (= (getSuffix!1526 lt!1233541 lt!1233538) lt!1233846)))

(declare-fun b!3594688 () Bool)

(assert (=> b!3594688 (= e!2224323 (getSuffix!1526 (tail!5569 lt!1233541) (t!291411 lt!1233538)))))

(declare-fun b!3594689 () Bool)

(assert (=> b!3594689 (= e!2224323 lt!1233541)))

(assert (= (and d!1059485 c!622365) b!3594688))

(assert (= (and d!1059485 (not c!622365)) b!3594689))

(declare-fun m!4089559 () Bool)

(assert (=> d!1059485 m!4089559))

(assert (=> d!1059485 m!4088743))

(assert (=> d!1059485 m!4088715))

(assert (=> b!3594688 m!4089403))

(assert (=> b!3594688 m!4089403))

(declare-fun m!4089561 () Bool)

(assert (=> b!3594688 m!4089561))

(assert (=> b!3594048 d!1059485))

(declare-fun d!1059487 () Bool)

(declare-fun lt!1233847 () Int)

(assert (=> d!1059487 (>= lt!1233847 0)))

(declare-fun e!2224324 () Int)

(assert (=> d!1059487 (= lt!1233847 e!2224324)))

(declare-fun c!622366 () Bool)

(assert (=> d!1059487 (= c!622366 ((_ is Nil!37796) lt!1233538))))

(assert (=> d!1059487 (= (size!28795 lt!1233538) lt!1233847)))

(declare-fun b!3594690 () Bool)

(assert (=> b!3594690 (= e!2224324 0)))

(declare-fun b!3594691 () Bool)

(assert (=> b!3594691 (= e!2224324 (+ 1 (size!28795 (t!291411 lt!1233538))))))

(assert (= (and d!1059487 c!622366) b!3594690))

(assert (= (and d!1059487 (not c!622366)) b!3594691))

(declare-fun m!4089563 () Bool)

(assert (=> b!3594691 m!4089563))

(assert (=> b!3594048 d!1059487))

(declare-fun b!3594710 () Bool)

(declare-fun e!2224334 () Bool)

(declare-fun e!2224336 () Bool)

(assert (=> b!3594710 (= e!2224334 e!2224336)))

(declare-fun res!1451848 () Bool)

(assert (=> b!3594710 (=> (not res!1451848) (not e!2224336))))

(declare-fun lt!1233858 () Option!7807)

(assert (=> b!3594710 (= res!1451848 (matchR!4916 (regex!5588 (rule!8310 (_1!21974 lt!1233551))) (list!13908 (charsOf!3602 (_1!21974 (get!12210 lt!1233858))))))))

(declare-fun b!3594711 () Bool)

(declare-fun e!2224333 () Bool)

(declare-datatypes ((tuple2!37688 0))(
  ( (tuple2!37689 (_1!21978 List!37920) (_2!21978 List!37920)) )
))
(declare-fun findLongestMatchInner!977 (Regex!10347 List!37920 Int List!37920 List!37920 Int) tuple2!37688)

(assert (=> b!3594711 (= e!2224333 (matchR!4916 (regex!5588 (rule!8310 (_1!21974 lt!1233551))) (_1!21978 (findLongestMatchInner!977 (regex!5588 (rule!8310 (_1!21974 lt!1233551))) Nil!37796 (size!28795 Nil!37796) lt!1233541 lt!1233541 (size!28795 lt!1233541)))))))

(declare-fun b!3594712 () Bool)

(declare-fun e!2224335 () Option!7807)

(assert (=> b!3594712 (= e!2224335 None!7806)))

(declare-fun b!3594713 () Bool)

(declare-fun lt!1233860 () tuple2!37688)

(assert (=> b!3594713 (= e!2224335 (Some!7806 (tuple2!37681 (Token!10543 (apply!9094 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))) (seqFromList!4141 (_1!21978 lt!1233860))) (rule!8310 (_1!21974 lt!1233551)) (size!28796 (seqFromList!4141 (_1!21978 lt!1233860))) (_1!21978 lt!1233860)) (_2!21978 lt!1233860))))))

(declare-fun lt!1233859 () Unit!53801)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!950 (Regex!10347 List!37920) Unit!53801)

(assert (=> b!3594713 (= lt!1233859 (longestMatchIsAcceptedByMatchOrIsEmpty!950 (regex!5588 (rule!8310 (_1!21974 lt!1233551))) lt!1233541))))

(declare-fun res!1451846 () Bool)

(assert (=> b!3594713 (= res!1451846 (isEmpty!22282 (_1!21978 (findLongestMatchInner!977 (regex!5588 (rule!8310 (_1!21974 lt!1233551))) Nil!37796 (size!28795 Nil!37796) lt!1233541 lt!1233541 (size!28795 lt!1233541)))))))

(assert (=> b!3594713 (=> res!1451846 e!2224333)))

(assert (=> b!3594713 e!2224333))

(declare-fun lt!1233861 () Unit!53801)

(assert (=> b!3594713 (= lt!1233861 lt!1233859)))

(declare-fun lt!1233862 () Unit!53801)

(assert (=> b!3594713 (= lt!1233862 (lemmaSemiInverse!1345 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))) (seqFromList!4141 (_1!21978 lt!1233860))))))

(declare-fun b!3594714 () Bool)

(declare-fun res!1451847 () Bool)

(assert (=> b!3594714 (=> (not res!1451847) (not e!2224336))))

(assert (=> b!3594714 (= res!1451847 (= (rule!8310 (_1!21974 (get!12210 lt!1233858))) (rule!8310 (_1!21974 lt!1233551))))))

(declare-fun b!3594715 () Bool)

(declare-fun res!1451844 () Bool)

(assert (=> b!3594715 (=> (not res!1451844) (not e!2224336))))

(assert (=> b!3594715 (= res!1451844 (= (value!179718 (_1!21974 (get!12210 lt!1233858))) (apply!9094 (transformation!5588 (rule!8310 (_1!21974 (get!12210 lt!1233858)))) (seqFromList!4141 (originalCharacters!6302 (_1!21974 (get!12210 lt!1233858)))))))))

(declare-fun d!1059489 () Bool)

(assert (=> d!1059489 e!2224334))

(declare-fun res!1451850 () Bool)

(assert (=> d!1059489 (=> res!1451850 e!2224334)))

(assert (=> d!1059489 (= res!1451850 (isEmpty!22287 lt!1233858))))

(assert (=> d!1059489 (= lt!1233858 e!2224335)))

(declare-fun c!622369 () Bool)

(assert (=> d!1059489 (= c!622369 (isEmpty!22282 (_1!21978 lt!1233860)))))

(declare-fun findLongestMatch!892 (Regex!10347 List!37920) tuple2!37688)

(assert (=> d!1059489 (= lt!1233860 (findLongestMatch!892 (regex!5588 (rule!8310 (_1!21974 lt!1233551))) lt!1233541))))

(assert (=> d!1059489 (ruleValid!1853 thiss!23823 (rule!8310 (_1!21974 lt!1233551)))))

(assert (=> d!1059489 (= (maxPrefixOneRule!1855 thiss!23823 (rule!8310 (_1!21974 lt!1233551)) lt!1233541) lt!1233858)))

(declare-fun b!3594716 () Bool)

(declare-fun res!1451849 () Bool)

(assert (=> b!3594716 (=> (not res!1451849) (not e!2224336))))

(assert (=> b!3594716 (= res!1451849 (= (++!9404 (list!13908 (charsOf!3602 (_1!21974 (get!12210 lt!1233858)))) (_2!21974 (get!12210 lt!1233858))) lt!1233541))))

(declare-fun b!3594717 () Bool)

(assert (=> b!3594717 (= e!2224336 (= (size!28794 (_1!21974 (get!12210 lt!1233858))) (size!28795 (originalCharacters!6302 (_1!21974 (get!12210 lt!1233858))))))))

(declare-fun b!3594718 () Bool)

(declare-fun res!1451845 () Bool)

(assert (=> b!3594718 (=> (not res!1451845) (not e!2224336))))

(assert (=> b!3594718 (= res!1451845 (< (size!28795 (_2!21974 (get!12210 lt!1233858))) (size!28795 lt!1233541)))))

(assert (= (and d!1059489 c!622369) b!3594712))

(assert (= (and d!1059489 (not c!622369)) b!3594713))

(assert (= (and b!3594713 (not res!1451846)) b!3594711))

(assert (= (and d!1059489 (not res!1451850)) b!3594710))

(assert (= (and b!3594710 res!1451848) b!3594716))

(assert (= (and b!3594716 res!1451849) b!3594718))

(assert (= (and b!3594718 res!1451845) b!3594714))

(assert (= (and b!3594714 res!1451847) b!3594715))

(assert (= (and b!3594715 res!1451844) b!3594717))

(declare-fun m!4089565 () Bool)

(assert (=> b!3594711 m!4089565))

(assert (=> b!3594711 m!4088743))

(assert (=> b!3594711 m!4089565))

(assert (=> b!3594711 m!4088743))

(declare-fun m!4089567 () Bool)

(assert (=> b!3594711 m!4089567))

(declare-fun m!4089569 () Bool)

(assert (=> b!3594711 m!4089569))

(declare-fun m!4089571 () Bool)

(assert (=> b!3594716 m!4089571))

(declare-fun m!4089573 () Bool)

(assert (=> b!3594716 m!4089573))

(assert (=> b!3594716 m!4089573))

(declare-fun m!4089575 () Bool)

(assert (=> b!3594716 m!4089575))

(assert (=> b!3594716 m!4089575))

(declare-fun m!4089577 () Bool)

(assert (=> b!3594716 m!4089577))

(declare-fun m!4089579 () Bool)

(assert (=> d!1059489 m!4089579))

(declare-fun m!4089581 () Bool)

(assert (=> d!1059489 m!4089581))

(declare-fun m!4089583 () Bool)

(assert (=> d!1059489 m!4089583))

(declare-fun m!4089585 () Bool)

(assert (=> d!1059489 m!4089585))

(assert (=> b!3594715 m!4089571))

(declare-fun m!4089587 () Bool)

(assert (=> b!3594715 m!4089587))

(assert (=> b!3594715 m!4089587))

(declare-fun m!4089589 () Bool)

(assert (=> b!3594715 m!4089589))

(assert (=> b!3594713 m!4089565))

(assert (=> b!3594713 m!4088743))

(assert (=> b!3594713 m!4089567))

(assert (=> b!3594713 m!4088743))

(declare-fun m!4089591 () Bool)

(assert (=> b!3594713 m!4089591))

(declare-fun m!4089593 () Bool)

(assert (=> b!3594713 m!4089593))

(assert (=> b!3594713 m!4089593))

(declare-fun m!4089595 () Bool)

(assert (=> b!3594713 m!4089595))

(assert (=> b!3594713 m!4089593))

(declare-fun m!4089597 () Bool)

(assert (=> b!3594713 m!4089597))

(assert (=> b!3594713 m!4089565))

(assert (=> b!3594713 m!4089593))

(declare-fun m!4089599 () Bool)

(assert (=> b!3594713 m!4089599))

(declare-fun m!4089601 () Bool)

(assert (=> b!3594713 m!4089601))

(assert (=> b!3594717 m!4089571))

(declare-fun m!4089603 () Bool)

(assert (=> b!3594717 m!4089603))

(assert (=> b!3594710 m!4089571))

(assert (=> b!3594710 m!4089573))

(assert (=> b!3594710 m!4089573))

(assert (=> b!3594710 m!4089575))

(assert (=> b!3594710 m!4089575))

(declare-fun m!4089605 () Bool)

(assert (=> b!3594710 m!4089605))

(assert (=> b!3594718 m!4089571))

(declare-fun m!4089607 () Bool)

(assert (=> b!3594718 m!4089607))

(assert (=> b!3594718 m!4088743))

(assert (=> b!3594714 m!4089571))

(assert (=> b!3594048 d!1059489))

(declare-fun d!1059491 () Bool)

(assert (=> d!1059491 (= (apply!9094 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))) (seqFromList!4141 lt!1233538)) (dynLambda!16273 (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551)))) (seqFromList!4141 lt!1233538)))))

(declare-fun b_lambda!106241 () Bool)

(assert (=> (not b_lambda!106241) (not d!1059491)))

(declare-fun tb!205357 () Bool)

(declare-fun t!291514 () Bool)

(assert (=> (and b!3594035 (= (toValue!7872 (transformation!5588 rule!403)) (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291514) tb!205357))

(declare-fun result!250352 () Bool)

(assert (=> tb!205357 (= result!250352 (inv!21 (dynLambda!16273 (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551)))) (seqFromList!4141 lt!1233538))))))

(declare-fun m!4089609 () Bool)

(assert (=> tb!205357 m!4089609))

(assert (=> d!1059491 t!291514))

(declare-fun b_and!260439 () Bool)

(assert (= b_and!260395 (and (=> t!291514 result!250352) b_and!260439)))

(declare-fun tb!205359 () Bool)

(declare-fun t!291516 () Bool)

(assert (=> (and b!3594047 (= (toValue!7872 (transformation!5588 (h!43217 rules!3307))) (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291516) tb!205359))

(declare-fun result!250354 () Bool)

(assert (= result!250354 result!250352))

(assert (=> d!1059491 t!291516))

(declare-fun b_and!260441 () Bool)

(assert (= b_and!260397 (and (=> t!291516 result!250354) b_and!260441)))

(declare-fun t!291518 () Bool)

(declare-fun tb!205361 () Bool)

(assert (=> (and b!3594029 (= (toValue!7872 (transformation!5588 anOtherTypeRule!33)) (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291518) tb!205361))

(declare-fun result!250356 () Bool)

(assert (= result!250356 result!250352))

(assert (=> d!1059491 t!291518))

(declare-fun b_and!260443 () Bool)

(assert (= b_and!260399 (and (=> t!291518 result!250356) b_and!260443)))

(declare-fun tb!205363 () Bool)

(declare-fun t!291520 () Bool)

(assert (=> (and b!3594038 (= (toValue!7872 (transformation!5588 (rule!8310 token!511))) (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291520) tb!205363))

(declare-fun result!250358 () Bool)

(assert (= result!250358 result!250352))

(assert (=> d!1059491 t!291520))

(declare-fun b_and!260445 () Bool)

(assert (= b_and!260401 (and (=> t!291520 result!250358) b_and!260445)))

(assert (=> d!1059491 m!4088713))

(declare-fun m!4089611 () Bool)

(assert (=> d!1059491 m!4089611))

(assert (=> b!3594048 d!1059491))

(declare-fun d!1059493 () Bool)

(assert (=> d!1059493 (= (seqFromList!4141 lt!1233538) (fromListB!1909 lt!1233538))))

(declare-fun bs!570359 () Bool)

(assert (= bs!570359 d!1059493))

(declare-fun m!4089613 () Bool)

(assert (=> bs!570359 m!4089613))

(assert (=> b!3594048 d!1059493))

(declare-fun d!1059495 () Bool)

(assert (=> d!1059495 (= (inv!51140 (tag!6266 (rule!8310 token!511))) (= (mod (str.len (value!179717 (tag!6266 (rule!8310 token!511)))) 2) 0))))

(assert (=> b!3594028 d!1059495))

(declare-fun d!1059497 () Bool)

(declare-fun res!1451851 () Bool)

(declare-fun e!2224338 () Bool)

(assert (=> d!1059497 (=> (not res!1451851) (not e!2224338))))

(assert (=> d!1059497 (= res!1451851 (semiInverseModEq!2369 (toChars!7731 (transformation!5588 (rule!8310 token!511))) (toValue!7872 (transformation!5588 (rule!8310 token!511)))))))

(assert (=> d!1059497 (= (inv!51143 (transformation!5588 (rule!8310 token!511))) e!2224338)))

(declare-fun b!3594719 () Bool)

(assert (=> b!3594719 (= e!2224338 (equivClasses!2268 (toChars!7731 (transformation!5588 (rule!8310 token!511))) (toValue!7872 (transformation!5588 (rule!8310 token!511)))))))

(assert (= (and d!1059497 res!1451851) b!3594719))

(declare-fun m!4089615 () Bool)

(assert (=> d!1059497 m!4089615))

(declare-fun m!4089617 () Bool)

(assert (=> b!3594719 m!4089617))

(assert (=> b!3594028 d!1059497))

(declare-fun d!1059499 () Bool)

(assert (=> d!1059499 (= (isEmpty!22282 (_2!21974 lt!1233549)) ((_ is Nil!37796) (_2!21974 lt!1233549)))))

(assert (=> b!3594030 d!1059499))

(declare-fun d!1059501 () Bool)

(declare-fun lt!1233863 () Bool)

(assert (=> d!1059501 (= lt!1233863 (select (content!5381 (usedCharacters!802 (regex!5588 anOtherTypeRule!33))) lt!1233539))))

(declare-fun e!2224340 () Bool)

(assert (=> d!1059501 (= lt!1233863 e!2224340)))

(declare-fun res!1451853 () Bool)

(assert (=> d!1059501 (=> (not res!1451853) (not e!2224340))))

(assert (=> d!1059501 (= res!1451853 ((_ is Cons!37796) (usedCharacters!802 (regex!5588 anOtherTypeRule!33))))))

(assert (=> d!1059501 (= (contains!7240 (usedCharacters!802 (regex!5588 anOtherTypeRule!33)) lt!1233539) lt!1233863)))

(declare-fun b!3594720 () Bool)

(declare-fun e!2224339 () Bool)

(assert (=> b!3594720 (= e!2224340 e!2224339)))

(declare-fun res!1451852 () Bool)

(assert (=> b!3594720 (=> res!1451852 e!2224339)))

(assert (=> b!3594720 (= res!1451852 (= (h!43216 (usedCharacters!802 (regex!5588 anOtherTypeRule!33))) lt!1233539))))

(declare-fun b!3594721 () Bool)

(assert (=> b!3594721 (= e!2224339 (contains!7240 (t!291411 (usedCharacters!802 (regex!5588 anOtherTypeRule!33))) lt!1233539))))

(assert (= (and d!1059501 res!1451853) b!3594720))

(assert (= (and b!3594720 (not res!1451852)) b!3594721))

(assert (=> d!1059501 m!4088709))

(declare-fun m!4089619 () Bool)

(assert (=> d!1059501 m!4089619))

(declare-fun m!4089621 () Bool)

(assert (=> d!1059501 m!4089621))

(declare-fun m!4089623 () Bool)

(assert (=> b!3594721 m!4089623))

(assert (=> b!3594042 d!1059501))

(declare-fun b!3594722 () Bool)

(declare-fun e!2224343 () List!37920)

(declare-fun e!2224341 () List!37920)

(assert (=> b!3594722 (= e!2224343 e!2224341)))

(declare-fun c!622370 () Bool)

(assert (=> b!3594722 (= c!622370 ((_ is ElementMatch!10347) (regex!5588 anOtherTypeRule!33)))))

(declare-fun b!3594723 () Bool)

(assert (=> b!3594723 (= e!2224343 Nil!37796)))

(declare-fun bm!260108 () Bool)

(declare-fun call!260115 () List!37920)

(declare-fun c!622371 () Bool)

(assert (=> bm!260108 (= call!260115 (usedCharacters!802 (ite c!622371 (regOne!21207 (regex!5588 anOtherTypeRule!33)) (regTwo!21206 (regex!5588 anOtherTypeRule!33)))))))

(declare-fun bm!260109 () Bool)

(declare-fun call!260113 () List!37920)

(declare-fun call!260116 () List!37920)

(assert (=> bm!260109 (= call!260113 call!260116)))

(declare-fun b!3594724 () Bool)

(declare-fun e!2224342 () List!37920)

(assert (=> b!3594724 (= e!2224342 call!260116)))

(declare-fun b!3594725 () Bool)

(declare-fun e!2224344 () List!37920)

(declare-fun call!260114 () List!37920)

(assert (=> b!3594725 (= e!2224344 call!260114)))

(declare-fun b!3594726 () Bool)

(assert (=> b!3594726 (= e!2224341 (Cons!37796 (c!622248 (regex!5588 anOtherTypeRule!33)) Nil!37796))))

(declare-fun b!3594727 () Bool)

(assert (=> b!3594727 (= e!2224344 call!260114)))

(declare-fun b!3594728 () Bool)

(declare-fun c!622372 () Bool)

(assert (=> b!3594728 (= c!622372 ((_ is Star!10347) (regex!5588 anOtherTypeRule!33)))))

(assert (=> b!3594728 (= e!2224341 e!2224342)))

(declare-fun b!3594729 () Bool)

(assert (=> b!3594729 (= e!2224342 e!2224344)))

(assert (=> b!3594729 (= c!622371 ((_ is Union!10347) (regex!5588 anOtherTypeRule!33)))))

(declare-fun bm!260110 () Bool)

(assert (=> bm!260110 (= call!260116 (usedCharacters!802 (ite c!622372 (reg!10676 (regex!5588 anOtherTypeRule!33)) (ite c!622371 (regTwo!21207 (regex!5588 anOtherTypeRule!33)) (regOne!21206 (regex!5588 anOtherTypeRule!33))))))))

(declare-fun bm!260111 () Bool)

(assert (=> bm!260111 (= call!260114 (++!9404 (ite c!622371 call!260115 call!260113) (ite c!622371 call!260113 call!260115)))))

(declare-fun d!1059503 () Bool)

(declare-fun c!622373 () Bool)

(assert (=> d!1059503 (= c!622373 (or ((_ is EmptyExpr!10347) (regex!5588 anOtherTypeRule!33)) ((_ is EmptyLang!10347) (regex!5588 anOtherTypeRule!33))))))

(assert (=> d!1059503 (= (usedCharacters!802 (regex!5588 anOtherTypeRule!33)) e!2224343)))

(assert (= (and d!1059503 c!622373) b!3594723))

(assert (= (and d!1059503 (not c!622373)) b!3594722))

(assert (= (and b!3594722 c!622370) b!3594726))

(assert (= (and b!3594722 (not c!622370)) b!3594728))

(assert (= (and b!3594728 c!622372) b!3594724))

(assert (= (and b!3594728 (not c!622372)) b!3594729))

(assert (= (and b!3594729 c!622371) b!3594727))

(assert (= (and b!3594729 (not c!622371)) b!3594725))

(assert (= (or b!3594727 b!3594725) bm!260108))

(assert (= (or b!3594727 b!3594725) bm!260109))

(assert (= (or b!3594727 b!3594725) bm!260111))

(assert (= (or b!3594724 bm!260109) bm!260110))

(declare-fun m!4089625 () Bool)

(assert (=> bm!260108 m!4089625))

(declare-fun m!4089627 () Bool)

(assert (=> bm!260110 m!4089627))

(declare-fun m!4089629 () Bool)

(assert (=> bm!260111 m!4089629))

(assert (=> b!3594042 d!1059503))

(declare-fun d!1059505 () Bool)

(assert (=> d!1059505 (= (get!12210 lt!1233558) (v!37492 lt!1233558))))

(assert (=> b!3594043 d!1059505))

(declare-fun b!3594740 () Bool)

(declare-fun res!1451856 () Bool)

(declare-fun e!2224351 () Bool)

(assert (=> b!3594740 (=> res!1451856 e!2224351)))

(assert (=> b!3594740 (= res!1451856 (not ((_ is IntegerValue!17456) (value!179718 token!511))))))

(declare-fun e!2224352 () Bool)

(assert (=> b!3594740 (= e!2224352 e!2224351)))

(declare-fun d!1059507 () Bool)

(declare-fun c!622379 () Bool)

(assert (=> d!1059507 (= c!622379 ((_ is IntegerValue!17454) (value!179718 token!511)))))

(declare-fun e!2224353 () Bool)

(assert (=> d!1059507 (= (inv!21 (value!179718 token!511)) e!2224353)))

(declare-fun b!3594741 () Bool)

(declare-fun inv!16 (TokenValue!5818) Bool)

(assert (=> b!3594741 (= e!2224353 (inv!16 (value!179718 token!511)))))

(declare-fun b!3594742 () Bool)

(assert (=> b!3594742 (= e!2224353 e!2224352)))

(declare-fun c!622378 () Bool)

(assert (=> b!3594742 (= c!622378 ((_ is IntegerValue!17455) (value!179718 token!511)))))

(declare-fun b!3594743 () Bool)

(declare-fun inv!15 (TokenValue!5818) Bool)

(assert (=> b!3594743 (= e!2224351 (inv!15 (value!179718 token!511)))))

(declare-fun b!3594744 () Bool)

(declare-fun inv!17 (TokenValue!5818) Bool)

(assert (=> b!3594744 (= e!2224352 (inv!17 (value!179718 token!511)))))

(assert (= (and d!1059507 c!622379) b!3594741))

(assert (= (and d!1059507 (not c!622379)) b!3594742))

(assert (= (and b!3594742 c!622378) b!3594744))

(assert (= (and b!3594742 (not c!622378)) b!3594740))

(assert (= (and b!3594740 (not res!1451856)) b!3594743))

(declare-fun m!4089631 () Bool)

(assert (=> b!3594741 m!4089631))

(declare-fun m!4089633 () Bool)

(assert (=> b!3594743 m!4089633))

(declare-fun m!4089635 () Bool)

(assert (=> b!3594744 m!4089635))

(assert (=> b!3594022 d!1059507))

(declare-fun d!1059509 () Bool)

(declare-fun lt!1233864 () Bool)

(assert (=> d!1059509 (= lt!1233864 (select (content!5380 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2224354 () Bool)

(assert (=> d!1059509 (= lt!1233864 e!2224354)))

(declare-fun res!1451857 () Bool)

(assert (=> d!1059509 (=> (not res!1451857) (not e!2224354))))

(assert (=> d!1059509 (= res!1451857 ((_ is Cons!37797) rules!3307))))

(assert (=> d!1059509 (= (contains!7239 rules!3307 anOtherTypeRule!33) lt!1233864)))

(declare-fun b!3594745 () Bool)

(declare-fun e!2224355 () Bool)

(assert (=> b!3594745 (= e!2224354 e!2224355)))

(declare-fun res!1451858 () Bool)

(assert (=> b!3594745 (=> res!1451858 e!2224355)))

(assert (=> b!3594745 (= res!1451858 (= (h!43217 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3594746 () Bool)

(assert (=> b!3594746 (= e!2224355 (contains!7239 (t!291412 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1059509 res!1451857) b!3594745))

(assert (= (and b!3594745 (not res!1451858)) b!3594746))

(assert (=> d!1059509 m!4088981))

(declare-fun m!4089637 () Bool)

(assert (=> d!1059509 m!4089637))

(declare-fun m!4089639 () Bool)

(assert (=> b!3594746 m!4089639))

(assert (=> b!3594021 d!1059509))

(declare-fun d!1059511 () Bool)

(assert (=> d!1059511 (= (inv!51140 (tag!6266 (h!43217 rules!3307))) (= (mod (str.len (value!179717 (tag!6266 (h!43217 rules!3307)))) 2) 0))))

(assert (=> b!3594023 d!1059511))

(declare-fun d!1059513 () Bool)

(declare-fun res!1451859 () Bool)

(declare-fun e!2224356 () Bool)

(assert (=> d!1059513 (=> (not res!1451859) (not e!2224356))))

(assert (=> d!1059513 (= res!1451859 (semiInverseModEq!2369 (toChars!7731 (transformation!5588 (h!43217 rules!3307))) (toValue!7872 (transformation!5588 (h!43217 rules!3307)))))))

(assert (=> d!1059513 (= (inv!51143 (transformation!5588 (h!43217 rules!3307))) e!2224356)))

(declare-fun b!3594747 () Bool)

(assert (=> b!3594747 (= e!2224356 (equivClasses!2268 (toChars!7731 (transformation!5588 (h!43217 rules!3307))) (toValue!7872 (transformation!5588 (h!43217 rules!3307)))))))

(assert (= (and d!1059513 res!1451859) b!3594747))

(declare-fun m!4089641 () Bool)

(assert (=> d!1059513 m!4089641))

(declare-fun m!4089643 () Bool)

(assert (=> b!3594747 m!4089643))

(assert (=> b!3594023 d!1059513))

(declare-fun d!1059515 () Bool)

(declare-fun res!1451862 () Bool)

(declare-fun e!2224359 () Bool)

(assert (=> d!1059515 (=> (not res!1451862) (not e!2224359))))

(declare-fun rulesValid!2128 (LexerInterface!5177 List!37921) Bool)

(assert (=> d!1059515 (= res!1451862 (rulesValid!2128 thiss!23823 rules!3307))))

(assert (=> d!1059515 (= (rulesInvariant!4574 thiss!23823 rules!3307) e!2224359)))

(declare-fun b!3594750 () Bool)

(declare-datatypes ((List!37925 0))(
  ( (Nil!37801) (Cons!37801 (h!43221 String!42424) (t!291536 List!37925)) )
))
(declare-fun noDuplicateTag!2124 (LexerInterface!5177 List!37921 List!37925) Bool)

(assert (=> b!3594750 (= e!2224359 (noDuplicateTag!2124 thiss!23823 rules!3307 Nil!37801))))

(assert (= (and d!1059515 res!1451862) b!3594750))

(declare-fun m!4089645 () Bool)

(assert (=> d!1059515 m!4089645))

(declare-fun m!4089647 () Bool)

(assert (=> b!3594750 m!4089647))

(assert (=> b!3594044 d!1059515))

(declare-fun d!1059517 () Bool)

(assert (=> d!1059517 (= (isEmpty!22282 suffix!1395) ((_ is Nil!37796) suffix!1395))))

(assert (=> b!3594046 d!1059517))

(declare-fun d!1059519 () Bool)

(assert (=> d!1059519 (= (inv!51140 (tag!6266 anOtherTypeRule!33)) (= (mod (str.len (value!179717 (tag!6266 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3594045 d!1059519))

(declare-fun d!1059521 () Bool)

(declare-fun res!1451863 () Bool)

(declare-fun e!2224360 () Bool)

(assert (=> d!1059521 (=> (not res!1451863) (not e!2224360))))

(assert (=> d!1059521 (= res!1451863 (semiInverseModEq!2369 (toChars!7731 (transformation!5588 anOtherTypeRule!33)) (toValue!7872 (transformation!5588 anOtherTypeRule!33))))))

(assert (=> d!1059521 (= (inv!51143 (transformation!5588 anOtherTypeRule!33)) e!2224360)))

(declare-fun b!3594751 () Bool)

(assert (=> b!3594751 (= e!2224360 (equivClasses!2268 (toChars!7731 (transformation!5588 anOtherTypeRule!33)) (toValue!7872 (transformation!5588 anOtherTypeRule!33))))))

(assert (= (and d!1059521 res!1451863) b!3594751))

(declare-fun m!4089649 () Bool)

(assert (=> d!1059521 m!4089649))

(declare-fun m!4089651 () Bool)

(assert (=> b!3594751 m!4089651))

(assert (=> b!3594045 d!1059521))

(declare-fun b!3594756 () Bool)

(declare-fun e!2224363 () Bool)

(declare-fun tp!1100049 () Bool)

(assert (=> b!3594756 (= e!2224363 (and tp_is_empty!17777 tp!1100049))))

(assert (=> b!3594041 (= tp!1099984 e!2224363)))

(assert (= (and b!3594041 ((_ is Cons!37796) (t!291411 suffix!1395))) b!3594756))

(declare-fun b!3594757 () Bool)

(declare-fun e!2224364 () Bool)

(declare-fun tp!1100050 () Bool)

(assert (=> b!3594757 (= e!2224364 (and tp_is_empty!17777 tp!1100050))))

(assert (=> b!3594022 (= tp!1099977 e!2224364)))

(assert (= (and b!3594022 ((_ is Cons!37796) (originalCharacters!6302 token!511))) b!3594757))

(declare-fun b!3594770 () Bool)

(declare-fun e!2224367 () Bool)

(declare-fun tp!1100064 () Bool)

(assert (=> b!3594770 (= e!2224367 tp!1100064)))

(assert (=> b!3594023 (= tp!1099976 e!2224367)))

(declare-fun b!3594769 () Bool)

(declare-fun tp!1100063 () Bool)

(declare-fun tp!1100065 () Bool)

(assert (=> b!3594769 (= e!2224367 (and tp!1100063 tp!1100065))))

(declare-fun b!3594768 () Bool)

(assert (=> b!3594768 (= e!2224367 tp_is_empty!17777)))

(declare-fun b!3594771 () Bool)

(declare-fun tp!1100061 () Bool)

(declare-fun tp!1100062 () Bool)

(assert (=> b!3594771 (= e!2224367 (and tp!1100061 tp!1100062))))

(assert (= (and b!3594023 ((_ is ElementMatch!10347) (regex!5588 (h!43217 rules!3307)))) b!3594768))

(assert (= (and b!3594023 ((_ is Concat!16166) (regex!5588 (h!43217 rules!3307)))) b!3594769))

(assert (= (and b!3594023 ((_ is Star!10347) (regex!5588 (h!43217 rules!3307)))) b!3594770))

(assert (= (and b!3594023 ((_ is Union!10347) (regex!5588 (h!43217 rules!3307)))) b!3594771))

(declare-fun b!3594774 () Bool)

(declare-fun e!2224368 () Bool)

(declare-fun tp!1100069 () Bool)

(assert (=> b!3594774 (= e!2224368 tp!1100069)))

(assert (=> b!3594033 (= tp!1099978 e!2224368)))

(declare-fun b!3594773 () Bool)

(declare-fun tp!1100068 () Bool)

(declare-fun tp!1100070 () Bool)

(assert (=> b!3594773 (= e!2224368 (and tp!1100068 tp!1100070))))

(declare-fun b!3594772 () Bool)

(assert (=> b!3594772 (= e!2224368 tp_is_empty!17777)))

(declare-fun b!3594775 () Bool)

(declare-fun tp!1100066 () Bool)

(declare-fun tp!1100067 () Bool)

(assert (=> b!3594775 (= e!2224368 (and tp!1100066 tp!1100067))))

(assert (= (and b!3594033 ((_ is ElementMatch!10347) (regex!5588 rule!403))) b!3594772))

(assert (= (and b!3594033 ((_ is Concat!16166) (regex!5588 rule!403))) b!3594773))

(assert (= (and b!3594033 ((_ is Star!10347) (regex!5588 rule!403))) b!3594774))

(assert (= (and b!3594033 ((_ is Union!10347) (regex!5588 rule!403))) b!3594775))

(declare-fun b!3594778 () Bool)

(declare-fun e!2224369 () Bool)

(declare-fun tp!1100074 () Bool)

(assert (=> b!3594778 (= e!2224369 tp!1100074)))

(assert (=> b!3594028 (= tp!1099989 e!2224369)))

(declare-fun b!3594777 () Bool)

(declare-fun tp!1100073 () Bool)

(declare-fun tp!1100075 () Bool)

(assert (=> b!3594777 (= e!2224369 (and tp!1100073 tp!1100075))))

(declare-fun b!3594776 () Bool)

(assert (=> b!3594776 (= e!2224369 tp_is_empty!17777)))

(declare-fun b!3594779 () Bool)

(declare-fun tp!1100071 () Bool)

(declare-fun tp!1100072 () Bool)

(assert (=> b!3594779 (= e!2224369 (and tp!1100071 tp!1100072))))

(assert (= (and b!3594028 ((_ is ElementMatch!10347) (regex!5588 (rule!8310 token!511)))) b!3594776))

(assert (= (and b!3594028 ((_ is Concat!16166) (regex!5588 (rule!8310 token!511)))) b!3594777))

(assert (= (and b!3594028 ((_ is Star!10347) (regex!5588 (rule!8310 token!511)))) b!3594778))

(assert (= (and b!3594028 ((_ is Union!10347) (regex!5588 (rule!8310 token!511)))) b!3594779))

(declare-fun b!3594782 () Bool)

(declare-fun e!2224370 () Bool)

(declare-fun tp!1100079 () Bool)

(assert (=> b!3594782 (= e!2224370 tp!1100079)))

(assert (=> b!3594045 (= tp!1099983 e!2224370)))

(declare-fun b!3594781 () Bool)

(declare-fun tp!1100078 () Bool)

(declare-fun tp!1100080 () Bool)

(assert (=> b!3594781 (= e!2224370 (and tp!1100078 tp!1100080))))

(declare-fun b!3594780 () Bool)

(assert (=> b!3594780 (= e!2224370 tp_is_empty!17777)))

(declare-fun b!3594783 () Bool)

(declare-fun tp!1100076 () Bool)

(declare-fun tp!1100077 () Bool)

(assert (=> b!3594783 (= e!2224370 (and tp!1100076 tp!1100077))))

(assert (= (and b!3594045 ((_ is ElementMatch!10347) (regex!5588 anOtherTypeRule!33))) b!3594780))

(assert (= (and b!3594045 ((_ is Concat!16166) (regex!5588 anOtherTypeRule!33))) b!3594781))

(assert (= (and b!3594045 ((_ is Star!10347) (regex!5588 anOtherTypeRule!33))) b!3594782))

(assert (= (and b!3594045 ((_ is Union!10347) (regex!5588 anOtherTypeRule!33))) b!3594783))

(declare-fun b!3594794 () Bool)

(declare-fun b_free!92845 () Bool)

(declare-fun b_next!93549 () Bool)

(assert (=> b!3594794 (= b_free!92845 (not b_next!93549))))

(declare-fun tb!205365 () Bool)

(declare-fun t!291522 () Bool)

(assert (=> (and b!3594794 (= (toValue!7872 (transformation!5588 (h!43217 (t!291412 rules!3307)))) (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291522) tb!205365))

(declare-fun result!250366 () Bool)

(assert (= result!250366 result!250292))

(assert (=> d!1059365 t!291522))

(assert (=> d!1059361 t!291522))

(assert (=> d!1059325 t!291522))

(declare-fun t!291524 () Bool)

(declare-fun tb!205367 () Bool)

(assert (=> (and b!3594794 (= (toValue!7872 (transformation!5588 (h!43217 (t!291412 rules!3307)))) (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291524) tb!205367))

(declare-fun result!250368 () Bool)

(assert (= result!250368 result!250310))

(assert (=> d!1059361 t!291524))

(declare-fun t!291526 () Bool)

(declare-fun tb!205369 () Bool)

(assert (=> (and b!3594794 (= (toValue!7872 (transformation!5588 (h!43217 (t!291412 rules!3307)))) (toValue!7872 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291526) tb!205369))

(declare-fun result!250370 () Bool)

(assert (= result!250370 result!250352))

(assert (=> d!1059491 t!291526))

(declare-fun b_and!260447 () Bool)

(declare-fun tp!1100090 () Bool)

(assert (=> b!3594794 (= tp!1100090 (and (=> t!291522 result!250366) (=> t!291524 result!250368) (=> t!291526 result!250370) b_and!260447))))

(declare-fun b_free!92847 () Bool)

(declare-fun b_next!93551 () Bool)

(assert (=> b!3594794 (= b_free!92847 (not b_next!93551))))

(declare-fun tb!205371 () Bool)

(declare-fun t!291528 () Bool)

(assert (=> (and b!3594794 (= (toChars!7731 (transformation!5588 (h!43217 (t!291412 rules!3307)))) (toChars!7731 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291528) tb!205371))

(declare-fun result!250372 () Bool)

(assert (= result!250372 result!250256))

(assert (=> d!1059319 t!291528))

(declare-fun t!291530 () Bool)

(declare-fun tb!205373 () Bool)

(assert (=> (and b!3594794 (= (toChars!7731 (transformation!5588 (h!43217 (t!291412 rules!3307)))) (toChars!7731 (transformation!5588 (rule!8310 (_1!21974 lt!1233551))))) t!291530) tb!205373))

(declare-fun result!250374 () Bool)

(assert (= result!250374 result!250284))

(assert (=> d!1059325 t!291530))

(declare-fun t!291532 () Bool)

(declare-fun tb!205375 () Bool)

(assert (=> (and b!3594794 (= (toChars!7731 (transformation!5588 (h!43217 (t!291412 rules!3307)))) (toChars!7731 (transformation!5588 (rule!8310 token!511)))) t!291532) tb!205375))

(declare-fun result!250376 () Bool)

(assert (= result!250376 result!250326))

(assert (=> b!3594409 t!291532))

(assert (=> d!1059467 t!291532))

(declare-fun tp!1100091 () Bool)

(declare-fun b_and!260449 () Bool)

(assert (=> b!3594794 (= tp!1100091 (and (=> t!291528 result!250372) (=> t!291530 result!250374) (=> t!291532 result!250376) b_and!260449))))

(declare-fun e!2224379 () Bool)

(assert (=> b!3594794 (= e!2224379 (and tp!1100090 tp!1100091))))

(declare-fun e!2224380 () Bool)

(declare-fun tp!1100092 () Bool)

(declare-fun b!3594793 () Bool)

(assert (=> b!3594793 (= e!2224380 (and tp!1100092 (inv!51140 (tag!6266 (h!43217 (t!291412 rules!3307)))) (inv!51143 (transformation!5588 (h!43217 (t!291412 rules!3307)))) e!2224379))))

(declare-fun b!3594792 () Bool)

(declare-fun e!2224381 () Bool)

(declare-fun tp!1100089 () Bool)

(assert (=> b!3594792 (= e!2224381 (and e!2224380 tp!1100089))))

(assert (=> b!3594024 (= tp!1099980 e!2224381)))

(assert (= b!3594793 b!3594794))

(assert (= b!3594792 b!3594793))

(assert (= (and b!3594024 ((_ is Cons!37797) (t!291412 rules!3307))) b!3594792))

(declare-fun m!4089653 () Bool)

(assert (=> b!3594793 m!4089653))

(declare-fun m!4089655 () Bool)

(assert (=> b!3594793 m!4089655))

(declare-fun b_lambda!106243 () Bool)

(assert (= b_lambda!106233 (or (and b!3594038 b_free!92839) (and b!3594794 b_free!92847 (= (toChars!7731 (transformation!5588 (h!43217 (t!291412 rules!3307)))) (toChars!7731 (transformation!5588 (rule!8310 token!511))))) (and b!3594029 b_free!92835 (= (toChars!7731 (transformation!5588 anOtherTypeRule!33)) (toChars!7731 (transformation!5588 (rule!8310 token!511))))) (and b!3594047 b_free!92831 (= (toChars!7731 (transformation!5588 (h!43217 rules!3307))) (toChars!7731 (transformation!5588 (rule!8310 token!511))))) (and b!3594035 b_free!92827 (= (toChars!7731 (transformation!5588 rule!403)) (toChars!7731 (transformation!5588 (rule!8310 token!511))))) b_lambda!106243)))

(declare-fun b_lambda!106245 () Bool)

(assert (= b_lambda!106239 (or (and b!3594038 b_free!92839) (and b!3594794 b_free!92847 (= (toChars!7731 (transformation!5588 (h!43217 (t!291412 rules!3307)))) (toChars!7731 (transformation!5588 (rule!8310 token!511))))) (and b!3594029 b_free!92835 (= (toChars!7731 (transformation!5588 anOtherTypeRule!33)) (toChars!7731 (transformation!5588 (rule!8310 token!511))))) (and b!3594047 b_free!92831 (= (toChars!7731 (transformation!5588 (h!43217 rules!3307))) (toChars!7731 (transformation!5588 (rule!8310 token!511))))) (and b!3594035 b_free!92827 (= (toChars!7731 (transformation!5588 rule!403)) (toChars!7731 (transformation!5588 (rule!8310 token!511))))) b_lambda!106245)))

(check-sat (not b!3594367) (not b!3594770) (not b_lambda!106209) tp_is_empty!17777 (not b!3594644) (not b!3594631) (not d!1059375) (not b_next!93539) b_and!260435 (not bm!260095) (not d!1059493) (not b!3594710) (not b!3594769) (not d!1059317) (not b!3594409) (not d!1059417) (not b!3594440) (not b!3594543) (not b_next!93529) (not b!3594751) (not b!3594624) (not bm!260107) (not b!3594741) (not d!1059423) (not b!3594260) (not b!3594264) (not b!3594509) (not b!3594551) (not b!3594364) (not b!3594486) (not b!3594715) (not b!3594439) (not d!1059435) (not d!1059441) (not b!3594267) (not d!1059323) (not b_lambda!106227) (not b!3594550) (not b!3594781) (not b_next!93535) (not d!1059509) (not b!3594713) (not b!3594711) (not tb!205337) (not d!1059401) (not bm!260089) (not d!1059359) b_and!260443 (not b!3594653) (not b_next!93541) (not b_lambda!106243) (not b!3594625) (not b!3594393) (not b!3594717) (not d!1059467) (not b!3594363) (not d!1059513) (not b!3594719) (not b!3594793) (not bm!260108) (not bm!260084) (not d!1059319) (not b!3594487) (not d!1059483) (not b!3594647) (not b!3594410) b_and!260439 (not b!3594627) (not b!3594464) (not b!3594633) b_and!260445 b_and!260447 (not b!3594626) (not bm!260106) (not d!1059407) (not b_next!93533) (not b!3594778) (not bm!260090) (not b!3594256) (not b!3594773) (not b!3594403) (not b!3594469) (not b!3594552) (not d!1059371) (not b!3594361) (not b!3594468) b_and!260449 (not b_lambda!106241) (not b!3594398) (not b!3594659) (not b_lambda!106215) (not d!1059475) (not b!3594746) (not b!3594510) (not b!3594630) (not b!3594743) (not d!1059501) (not d!1059369) b_and!260433 (not bm!260110) (not b!3594400) (not tb!205305) (not d!1059397) (not b!3594643) (not b!3594638) (not d!1059461) (not bm!260104) (not tb!205273) (not b!3594774) (not d!1059485) (not d!1059455) (not b!3594443) (not b!3594369) (not b!3594542) (not b_lambda!106225) (not b!3594691) (not b!3594782) (not d!1059471) (not b!3594744) (not d!1059325) (not b_lambda!106245) (not b!3594385) (not d!1059515) (not b!3594757) (not b!3594634) (not tb!205297) (not b!3594273) (not d!1059361) (not b!3594444) (not b_next!93549) (not b!3594792) (not tb!205321) (not bm!260111) (not b!3594636) (not b!3594396) (not b!3594714) (not b!3594775) (not b!3594411) (not b!3594374) (not b!3594783) (not b!3594262) (not d!1059405) (not b!3594718) (not b!3594371) (not b!3594635) (not tb!205357) (not b!3594779) (not d!1059399) (not d!1059481) (not d!1059521) (not b_next!93543) (not b!3594756) (not b!3594637) (not d!1059377) (not b!3594639) (not b!3594777) (not b!3594750) (not d!1059463) (not b!3594257) (not b!3594716) (not b!3594544) (not b!3594508) b_and!260441 (not d!1059489) (not b!3594688) (not b_next!93537) (not d!1059457) b_and!260431 (not b!3594771) (not b!3594392) (not b!3594279) (not b!3594338) (not b!3594623) (not b!3594721) (not b_next!93531) b_and!260437 (not bm!260094) (not d!1059383) (not b!3594641) (not d!1059431) (not b!3594652) (not d!1059291) (not b!3594640) (not d!1059497) (not b!3594747) (not b_next!93551) (not d!1059465) (not b_lambda!106217) (not b_lambda!106223) (not b!3594628))
(check-sat (not b_next!93529) (not b_next!93535) b_and!260443 (not b_next!93541) b_and!260447 (not b_next!93533) b_and!260449 b_and!260433 (not b_next!93549) (not b_next!93543) (not b_next!93531) b_and!260437 (not b_next!93551) (not b_next!93539) b_and!260435 b_and!260445 b_and!260439 b_and!260431 b_and!260441 (not b_next!93537))
