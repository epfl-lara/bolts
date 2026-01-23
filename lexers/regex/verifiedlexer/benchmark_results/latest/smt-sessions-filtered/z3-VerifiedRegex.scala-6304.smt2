; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!316806 () Bool)

(assert start!316806)

(declare-fun b!3395402 () Bool)

(declare-fun b_free!88809 () Bool)

(declare-fun b_next!89513 () Bool)

(assert (=> b!3395402 (= b_free!88809 (not b_next!89513))))

(declare-fun tp!1059803 () Bool)

(declare-fun b_and!236615 () Bool)

(assert (=> b!3395402 (= tp!1059803 b_and!236615)))

(declare-fun b_free!88811 () Bool)

(declare-fun b_next!89515 () Bool)

(assert (=> b!3395402 (= b_free!88811 (not b_next!89515))))

(declare-fun tp!1059799 () Bool)

(declare-fun b_and!236617 () Bool)

(assert (=> b!3395402 (= tp!1059799 b_and!236617)))

(declare-fun b!3395424 () Bool)

(declare-fun b_free!88813 () Bool)

(declare-fun b_next!89517 () Bool)

(assert (=> b!3395424 (= b_free!88813 (not b_next!89517))))

(declare-fun tp!1059801 () Bool)

(declare-fun b_and!236619 () Bool)

(assert (=> b!3395424 (= tp!1059801 b_and!236619)))

(declare-fun b_free!88815 () Bool)

(declare-fun b_next!89519 () Bool)

(assert (=> b!3395424 (= b_free!88815 (not b_next!89519))))

(declare-fun tp!1059806 () Bool)

(declare-fun b_and!236621 () Bool)

(assert (=> b!3395424 (= tp!1059806 b_and!236621)))

(declare-fun b!3395407 () Bool)

(declare-fun b_free!88817 () Bool)

(declare-fun b_next!89521 () Bool)

(assert (=> b!3395407 (= b_free!88817 (not b_next!89521))))

(declare-fun tp!1059802 () Bool)

(declare-fun b_and!236623 () Bool)

(assert (=> b!3395407 (= tp!1059802 b_and!236623)))

(declare-fun b_free!88819 () Bool)

(declare-fun b_next!89523 () Bool)

(assert (=> b!3395407 (= b_free!88819 (not b_next!89523))))

(declare-fun tp!1059798 () Bool)

(declare-fun b_and!236625 () Bool)

(assert (=> b!3395407 (= tp!1059798 b_and!236625)))

(declare-fun b!3395395 () Bool)

(declare-fun e!2107576 () Bool)

(declare-fun e!2107574 () Bool)

(assert (=> b!3395395 (= e!2107576 e!2107574)))

(declare-fun res!1373726 () Bool)

(assert (=> b!3395395 (=> (not res!1373726) (not e!2107574))))

(declare-datatypes ((C!20480 0))(
  ( (C!20481 (val!12288 Int)) )
))
(declare-datatypes ((Regex!10147 0))(
  ( (ElementMatch!10147 (c!578796 C!20480)) (Concat!15765 (regOne!20806 Regex!10147) (regTwo!20806 Regex!10147)) (EmptyExpr!10147) (Star!10147 (reg!10476 Regex!10147)) (EmptyLang!10147) (Union!10147 (regOne!20807 Regex!10147) (regTwo!20807 Regex!10147)) )
))
(declare-datatypes ((List!37052 0))(
  ( (Nil!36928) (Cons!36928 (h!42348 (_ BitVec 16)) (t!265165 List!37052)) )
))
(declare-datatypes ((TokenValue!5618 0))(
  ( (FloatLiteralValue!11236 (text!39771 List!37052)) (TokenValueExt!5617 (__x!23453 Int)) (Broken!28090 (value!173992 List!37052)) (Object!5741) (End!5618) (Def!5618) (Underscore!5618) (Match!5618) (Else!5618) (Error!5618) (Case!5618) (If!5618) (Extends!5618) (Abstract!5618) (Class!5618) (Val!5618) (DelimiterValue!11236 (del!5678 List!37052)) (KeywordValue!5624 (value!173993 List!37052)) (CommentValue!11236 (value!173994 List!37052)) (WhitespaceValue!11236 (value!173995 List!37052)) (IndentationValue!5618 (value!173996 List!37052)) (String!41423) (Int32!5618) (Broken!28091 (value!173997 List!37052)) (Boolean!5619) (Unit!52101) (OperatorValue!5621 (op!5678 List!37052)) (IdentifierValue!11236 (value!173998 List!37052)) (IdentifierValue!11237 (value!173999 List!37052)) (WhitespaceValue!11237 (value!174000 List!37052)) (True!11236) (False!11236) (Broken!28092 (value!174001 List!37052)) (Broken!28093 (value!174002 List!37052)) (True!11237) (RightBrace!5618) (RightBracket!5618) (Colon!5618) (Null!5618) (Comma!5618) (LeftBracket!5618) (False!11237) (LeftBrace!5618) (ImaginaryLiteralValue!5618 (text!39772 List!37052)) (StringLiteralValue!16854 (value!174003 List!37052)) (EOFValue!5618 (value!174004 List!37052)) (IdentValue!5618 (value!174005 List!37052)) (DelimiterValue!11237 (value!174006 List!37052)) (DedentValue!5618 (value!174007 List!37052)) (NewLineValue!5618 (value!174008 List!37052)) (IntegerValue!16854 (value!174009 (_ BitVec 32)) (text!39773 List!37052)) (IntegerValue!16855 (value!174010 Int) (text!39774 List!37052)) (Times!5618) (Or!5618) (Equal!5618) (Minus!5618) (Broken!28094 (value!174011 List!37052)) (And!5618) (Div!5618) (LessEqual!5618) (Mod!5618) (Concat!15766) (Not!5618) (Plus!5618) (SpaceValue!5618 (value!174012 List!37052)) (IntegerValue!16856 (value!174013 Int) (text!39775 List!37052)) (StringLiteralValue!16855 (text!39776 List!37052)) (FloatLiteralValue!11237 (text!39777 List!37052)) (BytesLiteralValue!5618 (value!174014 List!37052)) (CommentValue!11237 (value!174015 List!37052)) (StringLiteralValue!16856 (value!174016 List!37052)) (ErrorTokenValue!5618 (msg!5679 List!37052)) )
))
(declare-datatypes ((List!37053 0))(
  ( (Nil!36929) (Cons!36929 (h!42349 C!20480) (t!265166 List!37053)) )
))
(declare-datatypes ((IArray!22307 0))(
  ( (IArray!22308 (innerList!11211 List!37053)) )
))
(declare-datatypes ((Conc!11151 0))(
  ( (Node!11151 (left!28791 Conc!11151) (right!29121 Conc!11151) (csize!22532 Int) (cheight!11362 Int)) (Leaf!17456 (xs!14309 IArray!22307) (csize!22533 Int)) (Empty!11151) )
))
(declare-datatypes ((BalanceConc!21916 0))(
  ( (BalanceConc!21917 (c!578797 Conc!11151)) )
))
(declare-datatypes ((String!41424 0))(
  ( (String!41425 (value!174017 String)) )
))
(declare-datatypes ((TokenValueInjection!10664 0))(
  ( (TokenValueInjection!10665 (toValue!7584 Int) (toChars!7443 Int)) )
))
(declare-datatypes ((Rule!10576 0))(
  ( (Rule!10577 (regex!5388 Regex!10147) (tag!5972 String!41424) (isSeparator!5388 Bool) (transformation!5388 TokenValueInjection!10664)) )
))
(declare-fun lt!1154155 () Rule!10576)

(declare-fun lt!1154158 () List!37053)

(declare-fun matchR!4739 (Regex!10147 List!37053) Bool)

(assert (=> b!3395395 (= res!1373726 (matchR!4739 (regex!5388 lt!1154155) lt!1154158))))

(declare-datatypes ((Option!7429 0))(
  ( (None!7428) (Some!7428 (v!36580 Rule!10576)) )
))
(declare-fun lt!1154166 () Option!7429)

(declare-fun get!11801 (Option!7429) Rule!10576)

(assert (=> b!3395395 (= lt!1154155 (get!11801 lt!1154166))))

(declare-fun b!3395396 () Bool)

(declare-fun res!1373718 () Bool)

(declare-fun e!2107588 () Bool)

(assert (=> b!3395396 (=> res!1373718 e!2107588)))

(declare-datatypes ((Token!10142 0))(
  ( (Token!10143 (value!174018 TokenValue!5618) (rule!7948 Rule!10576) (size!27956 Int) (originalCharacters!6102 List!37053)) )
))
(declare-fun separatorToken!241 () Token!10142)

(declare-datatypes ((List!37054 0))(
  ( (Nil!36930) (Cons!36930 (h!42350 Rule!10576) (t!265167 List!37054)) )
))
(declare-fun rules!2135 () List!37054)

(declare-fun lambda!120773 () Int)

(declare-datatypes ((LexerInterface!4977 0))(
  ( (LexerInterfaceExt!4974 (__x!23454 Int)) (Lexer!4975) )
))
(declare-fun thiss!18206 () LexerInterface!4977)

(declare-datatypes ((List!37055 0))(
  ( (Nil!36931) (Cons!36931 (h!42351 Token!10142) (t!265168 List!37055)) )
))
(declare-fun isEmpty!21192 (List!37055) Bool)

(declare-fun filter!540 (List!37055 Int) List!37055)

(declare-datatypes ((IArray!22309 0))(
  ( (IArray!22310 (innerList!11212 List!37055)) )
))
(declare-datatypes ((Conc!11152 0))(
  ( (Node!11152 (left!28792 Conc!11152) (right!29122 Conc!11152) (csize!22534 Int) (cheight!11363 Int)) (Leaf!17457 (xs!14310 IArray!22309) (csize!22535 Int)) (Empty!11152) )
))
(declare-datatypes ((BalanceConc!21918 0))(
  ( (BalanceConc!21919 (c!578798 Conc!11152)) )
))
(declare-fun list!13376 (BalanceConc!21918) List!37055)

(declare-datatypes ((tuple2!36554 0))(
  ( (tuple2!36555 (_1!21411 BalanceConc!21918) (_2!21411 BalanceConc!21916)) )
))
(declare-fun lex!2303 (LexerInterface!4977 List!37054 BalanceConc!21916) tuple2!36554)

(declare-fun printWithSeparatorToken!168 (LexerInterface!4977 BalanceConc!21918 Token!10142) BalanceConc!21916)

(assert (=> b!3395396 (= res!1373718 (not (isEmpty!21192 (filter!540 (list!13376 (_1!21411 (lex!2303 thiss!18206 rules!2135 (printWithSeparatorToken!168 thiss!18206 (BalanceConc!21919 Empty!11152) separatorToken!241)))) lambda!120773))))))

(declare-fun b!3395397 () Bool)

(declare-fun e!2107585 () Bool)

(declare-fun e!2107587 () Bool)

(assert (=> b!3395397 (= e!2107585 e!2107587)))

(declare-fun res!1373712 () Bool)

(assert (=> b!3395397 (=> res!1373712 e!2107587)))

(declare-fun tokens!494 () List!37055)

(assert (=> b!3395397 (= res!1373712 (isSeparator!5388 (rule!7948 (h!42351 tokens!494))))))

(declare-datatypes ((Unit!52102 0))(
  ( (Unit!52103) )
))
(declare-fun lt!1154156 () Unit!52102)

(declare-fun forallContained!1335 (List!37055 Int Token!10142) Unit!52102)

(assert (=> b!3395397 (= lt!1154156 (forallContained!1335 tokens!494 lambda!120773 (h!42351 tokens!494)))))

(declare-fun b!3395398 () Bool)

(assert (=> b!3395398 (= e!2107574 (= (rule!7948 (h!42351 tokens!494)) lt!1154155))))

(declare-fun e!2107573 () Bool)

(declare-fun e!2107594 () Bool)

(declare-fun b!3395399 () Bool)

(declare-fun tp!1059795 () Bool)

(declare-fun inv!50019 (String!41424) Bool)

(declare-fun inv!50022 (TokenValueInjection!10664) Bool)

(assert (=> b!3395399 (= e!2107573 (and tp!1059795 (inv!50019 (tag!5972 (h!42350 rules!2135))) (inv!50022 (transformation!5388 (h!42350 rules!2135))) e!2107594))))

(declare-fun b!3395400 () Bool)

(declare-fun res!1373701 () Bool)

(declare-fun e!2107584 () Bool)

(assert (=> b!3395400 (=> (not res!1373701) (not e!2107584))))

(get-info :version)

(assert (=> b!3395400 (= res!1373701 (and (not ((_ is Nil!36931) tokens!494)) ((_ is Nil!36931) (t!265168 tokens!494))))))

(declare-fun b!3395401 () Bool)

(declare-fun e!2107599 () Bool)

(assert (=> b!3395401 (= e!2107599 false)))

(declare-fun e!2107583 () Bool)

(assert (=> b!3395402 (= e!2107583 (and tp!1059803 tp!1059799))))

(declare-fun b!3395403 () Bool)

(declare-fun res!1373724 () Bool)

(assert (=> b!3395403 (=> (not res!1373724) (not e!2107584))))

(declare-fun forall!7795 (List!37055 Int) Bool)

(assert (=> b!3395403 (= res!1373724 (forall!7795 tokens!494 lambda!120773))))

(declare-fun b!3395404 () Bool)

(declare-fun res!1373709 () Bool)

(declare-fun e!2107579 () Bool)

(assert (=> b!3395404 (=> (not res!1373709) (not e!2107579))))

(declare-fun isEmpty!21193 (List!37054) Bool)

(assert (=> b!3395404 (= res!1373709 (not (isEmpty!21193 rules!2135)))))

(declare-fun e!2107570 () Bool)

(declare-fun b!3395405 () Bool)

(declare-fun e!2107592 () Bool)

(declare-fun tp!1059805 () Bool)

(assert (=> b!3395405 (= e!2107592 (and tp!1059805 (inv!50019 (tag!5972 (rule!7948 (h!42351 tokens!494)))) (inv!50022 (transformation!5388 (rule!7948 (h!42351 tokens!494)))) e!2107570))))

(declare-fun b!3395406 () Bool)

(declare-fun e!2107569 () Bool)

(declare-fun tp!1059794 () Bool)

(assert (=> b!3395406 (= e!2107569 (and e!2107573 tp!1059794))))

(assert (=> b!3395407 (= e!2107570 (and tp!1059802 tp!1059798))))

(declare-fun b!3395408 () Bool)

(declare-fun res!1373710 () Bool)

(assert (=> b!3395408 (=> (not res!1373710) (not e!2107584))))

(declare-fun rulesProduceIndividualToken!2469 (LexerInterface!4977 List!37054 Token!10142) Bool)

(assert (=> b!3395408 (= res!1373710 (rulesProduceIndividualToken!2469 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3395409 () Bool)

(declare-fun e!2107595 () Bool)

(declare-fun e!2107600 () Bool)

(assert (=> b!3395409 (= e!2107595 e!2107600)))

(declare-fun res!1373702 () Bool)

(assert (=> b!3395409 (=> res!1373702 e!2107600)))

(declare-fun lt!1154170 () Bool)

(assert (=> b!3395409 (= res!1373702 lt!1154170)))

(declare-fun lt!1154159 () Unit!52102)

(declare-fun e!2107578 () Unit!52102)

(assert (=> b!3395409 (= lt!1154159 e!2107578)))

(declare-fun c!578794 () Bool)

(assert (=> b!3395409 (= c!578794 lt!1154170)))

(declare-fun lt!1154165 () C!20480)

(declare-fun contains!6781 (List!37053 C!20480) Bool)

(declare-fun usedCharacters!644 (Regex!10147) List!37053)

(assert (=> b!3395409 (= lt!1154170 (not (contains!6781 (usedCharacters!644 (regex!5388 (rule!7948 separatorToken!241))) lt!1154165)))))

(declare-fun lt!1154145 () List!37053)

(declare-fun head!7247 (List!37053) C!20480)

(assert (=> b!3395409 (= lt!1154165 (head!7247 lt!1154145))))

(declare-fun lt!1154152 () BalanceConc!21916)

(declare-datatypes ((tuple2!36556 0))(
  ( (tuple2!36557 (_1!21412 Token!10142) (_2!21412 List!37053)) )
))
(declare-datatypes ((Option!7430 0))(
  ( (None!7429) (Some!7429 (v!36581 tuple2!36556)) )
))
(declare-fun maxPrefixOneRule!1700 (LexerInterface!4977 Rule!10576 List!37053) Option!7430)

(declare-fun apply!8611 (TokenValueInjection!10664 BalanceConc!21916) TokenValue!5618)

(declare-fun size!27957 (List!37053) Int)

(assert (=> b!3395409 (= (maxPrefixOneRule!1700 thiss!18206 (rule!7948 (h!42351 tokens!494)) lt!1154158) (Some!7429 (tuple2!36557 (Token!10143 (apply!8611 (transformation!5388 (rule!7948 (h!42351 tokens!494))) lt!1154152) (rule!7948 (h!42351 tokens!494)) (size!27957 lt!1154158) lt!1154158) Nil!36929)))))

(declare-fun lt!1154163 () Unit!52102)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!799 (LexerInterface!4977 List!37054 List!37053 List!37053 List!37053 Rule!10576) Unit!52102)

(assert (=> b!3395409 (= lt!1154163 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!799 thiss!18206 rules!2135 lt!1154158 lt!1154158 Nil!36929 (rule!7948 (h!42351 tokens!494))))))

(declare-fun e!2107593 () Bool)

(assert (=> b!3395409 e!2107593))

(declare-fun res!1373719 () Bool)

(assert (=> b!3395409 (=> (not res!1373719) (not e!2107593))))

(declare-fun lt!1154160 () Option!7429)

(declare-fun isDefined!5738 (Option!7429) Bool)

(assert (=> b!3395409 (= res!1373719 (isDefined!5738 lt!1154160))))

(declare-fun getRuleFromTag!1043 (LexerInterface!4977 List!37054 String!41424) Option!7429)

(assert (=> b!3395409 (= lt!1154160 (getRuleFromTag!1043 thiss!18206 rules!2135 (tag!5972 (rule!7948 separatorToken!241))))))

(declare-fun lt!1154172 () Unit!52102)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1043 (LexerInterface!4977 List!37054 List!37053 Token!10142) Unit!52102)

(assert (=> b!3395409 (= lt!1154172 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1043 thiss!18206 rules!2135 lt!1154145 separatorToken!241))))

(assert (=> b!3395409 e!2107576))

(declare-fun res!1373704 () Bool)

(assert (=> b!3395409 (=> (not res!1373704) (not e!2107576))))

(assert (=> b!3395409 (= res!1373704 (isDefined!5738 lt!1154166))))

(assert (=> b!3395409 (= lt!1154166 (getRuleFromTag!1043 thiss!18206 rules!2135 (tag!5972 (rule!7948 (h!42351 tokens!494)))))))

(declare-fun lt!1154151 () Unit!52102)

(assert (=> b!3395409 (= lt!1154151 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1043 thiss!18206 rules!2135 lt!1154158 (h!42351 tokens!494)))))

(declare-fun lt!1154154 () Unit!52102)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!972 (LexerInterface!4977 List!37054 List!37055 Token!10142) Unit!52102)

(assert (=> b!3395409 (= lt!1154154 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!972 thiss!18206 rules!2135 tokens!494 (h!42351 tokens!494)))))

(declare-fun isEmpty!21194 (List!37053) Bool)

(declare-fun getSuffix!1482 (List!37053 List!37053) List!37053)

(assert (=> b!3395409 (isEmpty!21194 (getSuffix!1482 lt!1154158 lt!1154158))))

(declare-fun lt!1154168 () Unit!52102)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!140 (List!37053) Unit!52102)

(assert (=> b!3395409 (= lt!1154168 (lemmaGetSuffixOnListWithItSelfIsEmpty!140 lt!1154158))))

(declare-fun b!3395410 () Bool)

(declare-fun e!2107571 () Bool)

(assert (=> b!3395410 (= e!2107588 e!2107571)))

(declare-fun res!1373723 () Bool)

(assert (=> b!3395410 (=> res!1373723 e!2107571)))

(declare-fun lt!1154149 () List!37055)

(assert (=> b!3395410 (= res!1373723 (not (= (filter!540 lt!1154149 lambda!120773) tokens!494)))))

(declare-fun lt!1154161 () BalanceConc!21916)

(assert (=> b!3395410 (= lt!1154149 (list!13376 (_1!21411 (lex!2303 thiss!18206 rules!2135 lt!1154161))))))

(declare-fun b!3395411 () Bool)

(declare-fun e!2107591 () Bool)

(assert (=> b!3395411 (= e!2107584 (not e!2107591))))

(declare-fun res!1373713 () Bool)

(assert (=> b!3395411 (=> res!1373713 e!2107591)))

(declare-fun lt!1154144 () List!37053)

(declare-fun lt!1154164 () List!37053)

(assert (=> b!3395411 (= res!1373713 (not (= lt!1154144 lt!1154164)))))

(declare-fun printList!1525 (LexerInterface!4977 List!37055) List!37053)

(assert (=> b!3395411 (= lt!1154164 (printList!1525 thiss!18206 (Cons!36931 (h!42351 tokens!494) Nil!36931)))))

(declare-fun lt!1154169 () BalanceConc!21916)

(declare-fun list!13377 (BalanceConc!21916) List!37053)

(assert (=> b!3395411 (= lt!1154144 (list!13377 lt!1154169))))

(declare-fun lt!1154148 () BalanceConc!21918)

(declare-fun printTailRec!1472 (LexerInterface!4977 BalanceConc!21918 Int BalanceConc!21916) BalanceConc!21916)

(assert (=> b!3395411 (= lt!1154169 (printTailRec!1472 thiss!18206 lt!1154148 0 (BalanceConc!21917 Empty!11151)))))

(declare-fun print!2042 (LexerInterface!4977 BalanceConc!21918) BalanceConc!21916)

(assert (=> b!3395411 (= lt!1154169 (print!2042 thiss!18206 lt!1154148))))

(declare-fun singletonSeq!2484 (Token!10142) BalanceConc!21918)

(assert (=> b!3395411 (= lt!1154148 (singletonSeq!2484 (h!42351 tokens!494)))))

(declare-fun b!3395412 () Bool)

(assert (=> b!3395412 (= e!2107587 e!2107595)))

(declare-fun res!1373715 () Bool)

(assert (=> b!3395412 (=> res!1373715 e!2107595)))

(declare-fun lt!1154147 () List!37053)

(declare-fun lt!1154162 () List!37053)

(assert (=> b!3395412 (= res!1373715 (not (= lt!1154147 lt!1154162)))))

(declare-fun ++!9043 (List!37053 List!37053) List!37053)

(assert (=> b!3395412 (= lt!1154162 (++!9043 lt!1154158 lt!1154145))))

(assert (=> b!3395412 (= lt!1154147 (list!13377 lt!1154161))))

(declare-fun charsOf!3402 (Token!10142) BalanceConc!21916)

(assert (=> b!3395412 (= lt!1154145 (list!13377 (charsOf!3402 separatorToken!241)))))

(declare-fun lt!1154150 () BalanceConc!21918)

(assert (=> b!3395412 (= lt!1154161 (printWithSeparatorToken!168 thiss!18206 lt!1154150 separatorToken!241))))

(declare-fun b!3395413 () Bool)

(declare-fun e!2107577 () Bool)

(assert (=> b!3395413 (= e!2107593 e!2107577)))

(declare-fun res!1373720 () Bool)

(assert (=> b!3395413 (=> (not res!1373720) (not e!2107577))))

(declare-fun lt!1154146 () Rule!10576)

(assert (=> b!3395413 (= res!1373720 (matchR!4739 (regex!5388 lt!1154146) lt!1154145))))

(assert (=> b!3395413 (= lt!1154146 (get!11801 lt!1154160))))

(declare-fun b!3395414 () Bool)

(declare-fun Unit!52104 () Unit!52102)

(assert (=> b!3395414 (= e!2107578 Unit!52104)))

(declare-fun lt!1154171 () Unit!52102)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!478 (Regex!10147 List!37053 C!20480) Unit!52102)

(assert (=> b!3395414 (= lt!1154171 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!478 (regex!5388 (rule!7948 separatorToken!241)) lt!1154145 lt!1154165))))

(declare-fun res!1373717 () Bool)

(assert (=> b!3395414 (= res!1373717 (not (matchR!4739 (regex!5388 (rule!7948 separatorToken!241)) lt!1154145)))))

(assert (=> b!3395414 (=> (not res!1373717) (not e!2107599))))

(assert (=> b!3395414 e!2107599))

(declare-fun b!3395415 () Bool)

(declare-fun res!1373725 () Bool)

(declare-fun e!2107575 () Bool)

(assert (=> b!3395415 (=> res!1373725 e!2107575)))

(assert (=> b!3395415 (= res!1373725 (not (rulesProduceIndividualToken!2469 thiss!18206 rules!2135 (h!42351 tokens!494))))))

(declare-fun b!3395416 () Bool)

(assert (=> b!3395416 (= e!2107591 e!2107575)))

(declare-fun res!1373722 () Bool)

(assert (=> b!3395416 (=> res!1373722 e!2107575)))

(assert (=> b!3395416 (= res!1373722 (or (not (= lt!1154164 lt!1154158)) (not (= lt!1154144 lt!1154158))))))

(assert (=> b!3395416 (= lt!1154158 (list!13377 (charsOf!3402 (h!42351 tokens!494))))))

(declare-fun b!3395417 () Bool)

(declare-datatypes ((tuple2!36558 0))(
  ( (tuple2!36559 (_1!21413 List!37055) (_2!21413 List!37053)) )
))
(declare-fun e!2107596 () tuple2!36558)

(assert (=> b!3395417 (= e!2107596 (tuple2!36559 Nil!36931 lt!1154147))))

(assert (=> b!3395417 false))

(declare-fun b!3395418 () Bool)

(declare-fun tp!1059804 () Bool)

(declare-fun e!2107598 () Bool)

(assert (=> b!3395418 (= e!2107598 (and tp!1059804 (inv!50019 (tag!5972 (rule!7948 separatorToken!241))) (inv!50022 (transformation!5388 (rule!7948 separatorToken!241))) e!2107583))))

(declare-fun b!3395419 () Bool)

(declare-fun res!1373721 () Bool)

(assert (=> b!3395419 (=> (not res!1373721) (not e!2107584))))

(assert (=> b!3395419 (= res!1373721 (isSeparator!5388 (rule!7948 separatorToken!241)))))

(declare-fun e!2107590 () Bool)

(declare-fun e!2107597 () Bool)

(declare-fun b!3395420 () Bool)

(declare-fun tp!1059796 () Bool)

(declare-fun inv!50023 (Token!10142) Bool)

(assert (=> b!3395420 (= e!2107590 (and (inv!50023 (h!42351 tokens!494)) e!2107597 tp!1059796))))

(declare-fun b!3395421 () Bool)

(declare-fun Unit!52105 () Unit!52102)

(assert (=> b!3395421 (= e!2107578 Unit!52105)))

(declare-fun tp!1059797 () Bool)

(declare-fun b!3395422 () Bool)

(declare-fun inv!21 (TokenValue!5618) Bool)

(assert (=> b!3395422 (= e!2107597 (and (inv!21 (value!174018 (h!42351 tokens!494))) e!2107592 tp!1059797))))

(declare-fun e!2107581 () Bool)

(declare-fun b!3395423 () Bool)

(declare-fun tp!1059800 () Bool)

(assert (=> b!3395423 (= e!2107581 (and (inv!21 (value!174018 separatorToken!241)) e!2107598 tp!1059800))))

(assert (=> b!3395424 (= e!2107594 (and tp!1059801 tp!1059806))))

(declare-fun b!3395425 () Bool)

(declare-fun lt!1154153 () Option!7430)

(declare-fun lt!1154157 () tuple2!36558)

(assert (=> b!3395425 (= e!2107596 (tuple2!36559 (Cons!36931 (_1!21412 (v!36581 lt!1154153)) (_1!21413 lt!1154157)) (_2!21413 lt!1154157)))))

(declare-fun lexList!1414 (LexerInterface!4977 List!37054 List!37053) tuple2!36558)

(assert (=> b!3395425 (= lt!1154157 (lexList!1414 thiss!18206 rules!2135 (_2!21412 (v!36581 lt!1154153))))))

(declare-fun b!3395426 () Bool)

(declare-fun res!1373703 () Bool)

(assert (=> b!3395426 (=> (not res!1373703) (not e!2107579))))

(declare-fun rulesInvariant!4374 (LexerInterface!4977 List!37054) Bool)

(assert (=> b!3395426 (= res!1373703 (rulesInvariant!4374 thiss!18206 rules!2135))))

(declare-fun b!3395427 () Bool)

(declare-fun res!1373705 () Bool)

(assert (=> b!3395427 (=> res!1373705 e!2107588)))

(declare-fun printWithSeparatorTokenList!264 (LexerInterface!4977 List!37055 Token!10142) List!37053)

(assert (=> b!3395427 (= res!1373705 (not (= (filter!540 (_1!21413 (lexList!1414 thiss!18206 rules!2135 (printWithSeparatorTokenList!264 thiss!18206 tokens!494 separatorToken!241))) lambda!120773) tokens!494)))))

(declare-fun b!3395428 () Bool)

(assert (=> b!3395428 (= e!2107577 (= (rule!7948 separatorToken!241) lt!1154146))))

(declare-fun b!3395429 () Bool)

(assert (=> b!3395429 (= e!2107571 (= (filter!540 lt!1154149 lambda!120773) tokens!494))))

(declare-fun b!3395430 () Bool)

(declare-fun res!1373711 () Bool)

(assert (=> b!3395430 (=> (not res!1373711) (not e!2107584))))

(declare-fun sepAndNonSepRulesDisjointChars!1582 (List!37054 List!37054) Bool)

(assert (=> b!3395430 (= res!1373711 (sepAndNonSepRulesDisjointChars!1582 rules!2135 rules!2135))))

(declare-fun res!1373716 () Bool)

(assert (=> start!316806 (=> (not res!1373716) (not e!2107579))))

(assert (=> start!316806 (= res!1373716 ((_ is Lexer!4975) thiss!18206))))

(assert (=> start!316806 e!2107579))

(assert (=> start!316806 true))

(assert (=> start!316806 e!2107569))

(assert (=> start!316806 (and (inv!50023 separatorToken!241) e!2107581)))

(assert (=> start!316806 e!2107590))

(declare-fun b!3395431 () Bool)

(assert (=> b!3395431 (= e!2107579 e!2107584)))

(declare-fun res!1373706 () Bool)

(assert (=> b!3395431 (=> (not res!1373706) (not e!2107584))))

(declare-fun rulesProduceEachTokenIndividually!1428 (LexerInterface!4977 List!37054 BalanceConc!21918) Bool)

(assert (=> b!3395431 (= res!1373706 (rulesProduceEachTokenIndividually!1428 thiss!18206 rules!2135 lt!1154150))))

(declare-fun seqFromList!3829 (List!37055) BalanceConc!21918)

(assert (=> b!3395431 (= lt!1154150 (seqFromList!3829 tokens!494))))

(declare-fun b!3395432 () Bool)

(assert (=> b!3395432 (= e!2107575 e!2107585)))

(declare-fun res!1373708 () Bool)

(assert (=> b!3395432 (=> res!1373708 e!2107585)))

(declare-fun isEmpty!21195 (BalanceConc!21918) Bool)

(assert (=> b!3395432 (= res!1373708 (isEmpty!21195 (_1!21411 (lex!2303 thiss!18206 rules!2135 lt!1154152))))))

(declare-fun seqFromList!3830 (List!37053) BalanceConc!21916)

(assert (=> b!3395432 (= lt!1154152 (seqFromList!3830 lt!1154158))))

(declare-fun b!3395433 () Bool)

(assert (=> b!3395433 (= e!2107600 e!2107588)))

(declare-fun res!1373707 () Bool)

(assert (=> b!3395433 (=> res!1373707 e!2107588)))

(assert (=> b!3395433 (= res!1373707 (not (= e!2107596 (lexList!1414 thiss!18206 rules!2135 lt!1154147))))))

(declare-fun c!578795 () Bool)

(assert (=> b!3395433 (= c!578795 ((_ is Some!7429) lt!1154153))))

(declare-fun maxPrefix!2549 (LexerInterface!4977 List!37054 List!37053) Option!7430)

(assert (=> b!3395433 (= lt!1154153 (maxPrefix!2549 thiss!18206 rules!2135 lt!1154147))))

(assert (=> b!3395433 (= (maxPrefix!2549 thiss!18206 rules!2135 lt!1154162) (Some!7429 (tuple2!36557 (h!42351 tokens!494) lt!1154145)))))

(declare-fun lt!1154143 () Unit!52102)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!208 (LexerInterface!4977 List!37054 Token!10142 Rule!10576 List!37053 Rule!10576) Unit!52102)

(assert (=> b!3395433 (= lt!1154143 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!208 thiss!18206 rules!2135 (h!42351 tokens!494) (rule!7948 (h!42351 tokens!494)) lt!1154145 (rule!7948 separatorToken!241)))))

(assert (=> b!3395433 (not (contains!6781 (usedCharacters!644 (regex!5388 (rule!7948 (h!42351 tokens!494)))) lt!1154165))))

(declare-fun lt!1154167 () Unit!52102)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!228 (LexerInterface!4977 List!37054 List!37054 Rule!10576 Rule!10576 C!20480) Unit!52102)

(assert (=> b!3395433 (= lt!1154167 (lemmaNonSepRuleNotContainsCharContainedInASepRule!228 thiss!18206 rules!2135 rules!2135 (rule!7948 (h!42351 tokens!494)) (rule!7948 separatorToken!241) lt!1154165))))

(declare-fun b!3395434 () Bool)

(declare-fun res!1373714 () Bool)

(assert (=> b!3395434 (=> res!1373714 e!2107588)))

(assert (=> b!3395434 (= res!1373714 (not (isEmpty!21192 (filter!540 (_1!21413 (lexList!1414 thiss!18206 rules!2135 (printWithSeparatorTokenList!264 thiss!18206 Nil!36931 separatorToken!241))) lambda!120773))))))

(assert (= (and start!316806 res!1373716) b!3395404))

(assert (= (and b!3395404 res!1373709) b!3395426))

(assert (= (and b!3395426 res!1373703) b!3395431))

(assert (= (and b!3395431 res!1373706) b!3395408))

(assert (= (and b!3395408 res!1373710) b!3395419))

(assert (= (and b!3395419 res!1373721) b!3395403))

(assert (= (and b!3395403 res!1373724) b!3395430))

(assert (= (and b!3395430 res!1373711) b!3395400))

(assert (= (and b!3395400 res!1373701) b!3395411))

(assert (= (and b!3395411 (not res!1373713)) b!3395416))

(assert (= (and b!3395416 (not res!1373722)) b!3395415))

(assert (= (and b!3395415 (not res!1373725)) b!3395432))

(assert (= (and b!3395432 (not res!1373708)) b!3395397))

(assert (= (and b!3395397 (not res!1373712)) b!3395412))

(assert (= (and b!3395412 (not res!1373715)) b!3395409))

(assert (= (and b!3395409 res!1373704) b!3395395))

(assert (= (and b!3395395 res!1373726) b!3395398))

(assert (= (and b!3395409 res!1373719) b!3395413))

(assert (= (and b!3395413 res!1373720) b!3395428))

(assert (= (and b!3395409 c!578794) b!3395414))

(assert (= (and b!3395409 (not c!578794)) b!3395421))

(assert (= (and b!3395414 res!1373717) b!3395401))

(assert (= (and b!3395409 (not res!1373702)) b!3395433))

(assert (= (and b!3395433 c!578795) b!3395425))

(assert (= (and b!3395433 (not c!578795)) b!3395417))

(assert (= (and b!3395433 (not res!1373707)) b!3395396))

(assert (= (and b!3395396 (not res!1373718)) b!3395434))

(assert (= (and b!3395434 (not res!1373714)) b!3395427))

(assert (= (and b!3395427 (not res!1373705)) b!3395410))

(assert (= (and b!3395410 (not res!1373723)) b!3395429))

(assert (= b!3395399 b!3395424))

(assert (= b!3395406 b!3395399))

(assert (= (and start!316806 ((_ is Cons!36930) rules!2135)) b!3395406))

(assert (= b!3395418 b!3395402))

(assert (= b!3395423 b!3395418))

(assert (= start!316806 b!3395423))

(assert (= b!3395405 b!3395407))

(assert (= b!3395422 b!3395405))

(assert (= b!3395420 b!3395422))

(assert (= (and start!316806 ((_ is Cons!36931) tokens!494)) b!3395420))

(declare-fun m!3765245 () Bool)

(assert (=> b!3395420 m!3765245))

(declare-fun m!3765247 () Bool)

(assert (=> b!3395433 m!3765247))

(declare-fun m!3765249 () Bool)

(assert (=> b!3395433 m!3765249))

(declare-fun m!3765251 () Bool)

(assert (=> b!3395433 m!3765251))

(declare-fun m!3765253 () Bool)

(assert (=> b!3395433 m!3765253))

(declare-fun m!3765255 () Bool)

(assert (=> b!3395433 m!3765255))

(declare-fun m!3765257 () Bool)

(assert (=> b!3395433 m!3765257))

(assert (=> b!3395433 m!3765247))

(declare-fun m!3765259 () Bool)

(assert (=> b!3395433 m!3765259))

(declare-fun m!3765261 () Bool)

(assert (=> start!316806 m!3765261))

(declare-fun m!3765263 () Bool)

(assert (=> b!3395415 m!3765263))

(declare-fun m!3765265 () Bool)

(assert (=> b!3395405 m!3765265))

(declare-fun m!3765267 () Bool)

(assert (=> b!3395405 m!3765267))

(declare-fun m!3765269 () Bool)

(assert (=> b!3395423 m!3765269))

(declare-fun m!3765271 () Bool)

(assert (=> b!3395399 m!3765271))

(declare-fun m!3765273 () Bool)

(assert (=> b!3395399 m!3765273))

(declare-fun m!3765275 () Bool)

(assert (=> b!3395408 m!3765275))

(declare-fun m!3765277 () Bool)

(assert (=> b!3395434 m!3765277))

(assert (=> b!3395434 m!3765277))

(declare-fun m!3765279 () Bool)

(assert (=> b!3395434 m!3765279))

(declare-fun m!3765281 () Bool)

(assert (=> b!3395434 m!3765281))

(assert (=> b!3395434 m!3765281))

(declare-fun m!3765283 () Bool)

(assert (=> b!3395434 m!3765283))

(declare-fun m!3765285 () Bool)

(assert (=> b!3395432 m!3765285))

(declare-fun m!3765287 () Bool)

(assert (=> b!3395432 m!3765287))

(declare-fun m!3765289 () Bool)

(assert (=> b!3395432 m!3765289))

(declare-fun m!3765291 () Bool)

(assert (=> b!3395431 m!3765291))

(declare-fun m!3765293 () Bool)

(assert (=> b!3395431 m!3765293))

(declare-fun m!3765295 () Bool)

(assert (=> b!3395427 m!3765295))

(assert (=> b!3395427 m!3765295))

(declare-fun m!3765297 () Bool)

(assert (=> b!3395427 m!3765297))

(declare-fun m!3765299 () Bool)

(assert (=> b!3395427 m!3765299))

(declare-fun m!3765301 () Bool)

(assert (=> b!3395416 m!3765301))

(assert (=> b!3395416 m!3765301))

(declare-fun m!3765303 () Bool)

(assert (=> b!3395416 m!3765303))

(declare-fun m!3765305 () Bool)

(assert (=> b!3395409 m!3765305))

(declare-fun m!3765307 () Bool)

(assert (=> b!3395409 m!3765307))

(declare-fun m!3765309 () Bool)

(assert (=> b!3395409 m!3765309))

(declare-fun m!3765311 () Bool)

(assert (=> b!3395409 m!3765311))

(declare-fun m!3765313 () Bool)

(assert (=> b!3395409 m!3765313))

(declare-fun m!3765315 () Bool)

(assert (=> b!3395409 m!3765315))

(declare-fun m!3765317 () Bool)

(assert (=> b!3395409 m!3765317))

(declare-fun m!3765319 () Bool)

(assert (=> b!3395409 m!3765319))

(assert (=> b!3395409 m!3765307))

(declare-fun m!3765321 () Bool)

(assert (=> b!3395409 m!3765321))

(declare-fun m!3765323 () Bool)

(assert (=> b!3395409 m!3765323))

(declare-fun m!3765325 () Bool)

(assert (=> b!3395409 m!3765325))

(declare-fun m!3765327 () Bool)

(assert (=> b!3395409 m!3765327))

(declare-fun m!3765329 () Bool)

(assert (=> b!3395409 m!3765329))

(declare-fun m!3765331 () Bool)

(assert (=> b!3395409 m!3765331))

(declare-fun m!3765333 () Bool)

(assert (=> b!3395409 m!3765333))

(assert (=> b!3395409 m!3765305))

(declare-fun m!3765335 () Bool)

(assert (=> b!3395409 m!3765335))

(declare-fun m!3765337 () Bool)

(assert (=> b!3395409 m!3765337))

(declare-fun m!3765339 () Bool)

(assert (=> b!3395403 m!3765339))

(declare-fun m!3765341 () Bool)

(assert (=> b!3395414 m!3765341))

(declare-fun m!3765343 () Bool)

(assert (=> b!3395414 m!3765343))

(declare-fun m!3765345 () Bool)

(assert (=> b!3395410 m!3765345))

(declare-fun m!3765347 () Bool)

(assert (=> b!3395410 m!3765347))

(declare-fun m!3765349 () Bool)

(assert (=> b!3395410 m!3765349))

(declare-fun m!3765351 () Bool)

(assert (=> b!3395430 m!3765351))

(declare-fun m!3765353 () Bool)

(assert (=> b!3395412 m!3765353))

(declare-fun m!3765355 () Bool)

(assert (=> b!3395412 m!3765355))

(assert (=> b!3395412 m!3765353))

(declare-fun m!3765357 () Bool)

(assert (=> b!3395412 m!3765357))

(declare-fun m!3765359 () Bool)

(assert (=> b!3395412 m!3765359))

(declare-fun m!3765361 () Bool)

(assert (=> b!3395412 m!3765361))

(declare-fun m!3765363 () Bool)

(assert (=> b!3395413 m!3765363))

(declare-fun m!3765365 () Bool)

(assert (=> b!3395413 m!3765365))

(declare-fun m!3765367 () Bool)

(assert (=> b!3395397 m!3765367))

(assert (=> b!3395429 m!3765345))

(declare-fun m!3765369 () Bool)

(assert (=> b!3395411 m!3765369))

(declare-fun m!3765371 () Bool)

(assert (=> b!3395411 m!3765371))

(declare-fun m!3765373 () Bool)

(assert (=> b!3395411 m!3765373))

(declare-fun m!3765375 () Bool)

(assert (=> b!3395411 m!3765375))

(declare-fun m!3765377 () Bool)

(assert (=> b!3395411 m!3765377))

(declare-fun m!3765379 () Bool)

(assert (=> b!3395422 m!3765379))

(declare-fun m!3765381 () Bool)

(assert (=> b!3395404 m!3765381))

(declare-fun m!3765383 () Bool)

(assert (=> b!3395395 m!3765383))

(declare-fun m!3765385 () Bool)

(assert (=> b!3395395 m!3765385))

(declare-fun m!3765387 () Bool)

(assert (=> b!3395426 m!3765387))

(declare-fun m!3765389 () Bool)

(assert (=> b!3395418 m!3765389))

(declare-fun m!3765391 () Bool)

(assert (=> b!3395418 m!3765391))

(declare-fun m!3765393 () Bool)

(assert (=> b!3395396 m!3765393))

(declare-fun m!3765395 () Bool)

(assert (=> b!3395396 m!3765395))

(declare-fun m!3765397 () Bool)

(assert (=> b!3395396 m!3765397))

(declare-fun m!3765399 () Bool)

(assert (=> b!3395396 m!3765399))

(declare-fun m!3765401 () Bool)

(assert (=> b!3395396 m!3765401))

(assert (=> b!3395396 m!3765397))

(assert (=> b!3395396 m!3765393))

(assert (=> b!3395396 m!3765399))

(declare-fun m!3765403 () Bool)

(assert (=> b!3395425 m!3765403))

(check-sat (not b_next!89513) (not b_next!89515) (not b_next!89519) (not b!3395413) (not b!3395409) (not start!316806) (not b!3395416) (not b!3395397) (not b_next!89523) (not b!3395420) (not b!3395423) b_and!236623 b_and!236625 (not b!3395422) (not b!3395406) (not b!3395414) (not b!3395396) (not b!3395425) (not b!3395429) (not b!3395405) (not b!3395395) (not b!3395418) (not b!3395403) (not b!3395404) (not b_next!89517) (not b!3395410) (not b!3395431) (not b!3395411) (not b!3395408) b_and!236615 (not b!3395434) b_and!236621 (not b_next!89521) (not b!3395433) (not b!3395426) (not b!3395415) (not b!3395412) (not b!3395430) b_and!236619 b_and!236617 (not b!3395432) (not b!3395399) (not b!3395427))
(check-sat (not b_next!89513) (not b_next!89523) (not b_next!89515) (not b_next!89519) (not b_next!89517) b_and!236623 b_and!236625 b_and!236615 b_and!236621 (not b_next!89521) b_and!236619 b_and!236617)
