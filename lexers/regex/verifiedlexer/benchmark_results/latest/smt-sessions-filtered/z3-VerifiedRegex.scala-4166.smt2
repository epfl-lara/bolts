; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!224760 () Bool)

(assert start!224760)

(declare-fun b!2290244 () Bool)

(declare-fun b_free!68797 () Bool)

(declare-fun b_next!69501 () Bool)

(assert (=> b!2290244 (= b_free!68797 (not b_next!69501))))

(declare-fun tp!726143 () Bool)

(declare-fun b_and!181697 () Bool)

(assert (=> b!2290244 (= tp!726143 b_and!181697)))

(declare-fun b_free!68799 () Bool)

(declare-fun b_next!69503 () Bool)

(assert (=> b!2290244 (= b_free!68799 (not b_next!69503))))

(declare-fun tp!726136 () Bool)

(declare-fun b_and!181699 () Bool)

(assert (=> b!2290244 (= tp!726136 b_and!181699)))

(declare-fun b!2290224 () Bool)

(declare-fun b_free!68801 () Bool)

(declare-fun b_next!69505 () Bool)

(assert (=> b!2290224 (= b_free!68801 (not b_next!69505))))

(declare-fun tp!726134 () Bool)

(declare-fun b_and!181701 () Bool)

(assert (=> b!2290224 (= tp!726134 b_and!181701)))

(declare-fun b_free!68803 () Bool)

(declare-fun b_next!69507 () Bool)

(assert (=> b!2290224 (= b_free!68803 (not b_next!69507))))

(declare-fun tp!726146 () Bool)

(declare-fun b_and!181703 () Bool)

(assert (=> b!2290224 (= tp!726146 b_and!181703)))

(declare-fun b!2290246 () Bool)

(declare-fun b_free!68805 () Bool)

(declare-fun b_next!69509 () Bool)

(assert (=> b!2290246 (= b_free!68805 (not b_next!69509))))

(declare-fun tp!726137 () Bool)

(declare-fun b_and!181705 () Bool)

(assert (=> b!2290246 (= tp!726137 b_and!181705)))

(declare-fun b_free!68807 () Bool)

(declare-fun b_next!69511 () Bool)

(assert (=> b!2290246 (= b_free!68807 (not b_next!69511))))

(declare-fun tp!726138 () Bool)

(declare-fun b_and!181707 () Bool)

(assert (=> b!2290246 (= tp!726138 b_and!181707)))

(declare-fun b!2290215 () Bool)

(declare-fun b_free!68809 () Bool)

(declare-fun b_next!69513 () Bool)

(assert (=> b!2290215 (= b_free!68809 (not b_next!69513))))

(declare-fun tp!726144 () Bool)

(declare-fun b_and!181709 () Bool)

(assert (=> b!2290215 (= tp!726144 b_and!181709)))

(declare-fun b_free!68811 () Bool)

(declare-fun b_next!69515 () Bool)

(assert (=> b!2290215 (= b_free!68811 (not b_next!69515))))

(declare-fun tp!726135 () Bool)

(declare-fun b_and!181711 () Bool)

(assert (=> b!2290215 (= tp!726135 b_and!181711)))

(declare-fun b!2290213 () Bool)

(declare-fun res!979301 () Bool)

(declare-fun e!1467479 () Bool)

(assert (=> b!2290213 (=> res!979301 e!1467479)))

(declare-datatypes ((List!27361 0))(
  ( (Nil!27267) (Cons!27267 (h!32668 (_ BitVec 16)) (t!204557 List!27361)) )
))
(declare-datatypes ((TokenValue!4525 0))(
  ( (FloatLiteralValue!9050 (text!32120 List!27361)) (TokenValueExt!4524 (__x!18110 Int)) (Broken!22625 (value!138139 List!27361)) (Object!4618) (End!4525) (Def!4525) (Underscore!4525) (Match!4525) (Else!4525) (Error!4525) (Case!4525) (If!4525) (Extends!4525) (Abstract!4525) (Class!4525) (Val!4525) (DelimiterValue!9050 (del!4585 List!27361)) (KeywordValue!4531 (value!138140 List!27361)) (CommentValue!9050 (value!138141 List!27361)) (WhitespaceValue!9050 (value!138142 List!27361)) (IndentationValue!4525 (value!138143 List!27361)) (String!29728) (Int32!4525) (Broken!22626 (value!138144 List!27361)) (Boolean!4526) (Unit!40151) (OperatorValue!4528 (op!4585 List!27361)) (IdentifierValue!9050 (value!138145 List!27361)) (IdentifierValue!9051 (value!138146 List!27361)) (WhitespaceValue!9051 (value!138147 List!27361)) (True!9050) (False!9050) (Broken!22627 (value!138148 List!27361)) (Broken!22628 (value!138149 List!27361)) (True!9051) (RightBrace!4525) (RightBracket!4525) (Colon!4525) (Null!4525) (Comma!4525) (LeftBracket!4525) (False!9051) (LeftBrace!4525) (ImaginaryLiteralValue!4525 (text!32121 List!27361)) (StringLiteralValue!13575 (value!138150 List!27361)) (EOFValue!4525 (value!138151 List!27361)) (IdentValue!4525 (value!138152 List!27361)) (DelimiterValue!9051 (value!138153 List!27361)) (DedentValue!4525 (value!138154 List!27361)) (NewLineValue!4525 (value!138155 List!27361)) (IntegerValue!13575 (value!138156 (_ BitVec 32)) (text!32122 List!27361)) (IntegerValue!13576 (value!138157 Int) (text!32123 List!27361)) (Times!4525) (Or!4525) (Equal!4525) (Minus!4525) (Broken!22629 (value!138158 List!27361)) (And!4525) (Div!4525) (LessEqual!4525) (Mod!4525) (Concat!11236) (Not!4525) (Plus!4525) (SpaceValue!4525 (value!138159 List!27361)) (IntegerValue!13577 (value!138160 Int) (text!32124 List!27361)) (StringLiteralValue!13576 (text!32125 List!27361)) (FloatLiteralValue!9051 (text!32126 List!27361)) (BytesLiteralValue!4525 (value!138161 List!27361)) (CommentValue!9051 (value!138162 List!27361)) (StringLiteralValue!13577 (value!138163 List!27361)) (ErrorTokenValue!4525 (msg!4586 List!27361)) )
))
(declare-datatypes ((C!13568 0))(
  ( (C!13569 (val!7832 Int)) )
))
(declare-datatypes ((List!27362 0))(
  ( (Nil!27268) (Cons!27268 (h!32669 C!13568) (t!204558 List!27362)) )
))
(declare-datatypes ((IArray!17753 0))(
  ( (IArray!17754 (innerList!8934 List!27362)) )
))
(declare-datatypes ((Conc!8874 0))(
  ( (Node!8874 (left!20668 Conc!8874) (right!20998 Conc!8874) (csize!17978 Int) (cheight!9085 Int)) (Leaf!13041 (xs!11816 IArray!17753) (csize!17979 Int)) (Empty!8874) )
))
(declare-datatypes ((BalanceConc!17476 0))(
  ( (BalanceConc!17477 (c!363154 Conc!8874)) )
))
(declare-datatypes ((Regex!6711 0))(
  ( (ElementMatch!6711 (c!363155 C!13568)) (Concat!11237 (regOne!13934 Regex!6711) (regTwo!13934 Regex!6711)) (EmptyExpr!6711) (Star!6711 (reg!7040 Regex!6711)) (EmptyLang!6711) (Union!6711 (regOne!13935 Regex!6711) (regTwo!13935 Regex!6711)) )
))
(declare-datatypes ((String!29729 0))(
  ( (String!29730 (value!138164 String)) )
))
(declare-datatypes ((TokenValueInjection!8590 0))(
  ( (TokenValueInjection!8591 (toValue!6153 Int) (toChars!6012 Int)) )
))
(declare-datatypes ((Rule!8526 0))(
  ( (Rule!8527 (regex!4363 Regex!6711) (tag!4853 String!29729) (isSeparator!4363 Bool) (transformation!4363 TokenValueInjection!8590)) )
))
(declare-fun r!2363 () Rule!8526)

(declare-fun lt!849674 () List!27362)

(declare-fun matchR!2968 (Regex!6711 List!27362) Bool)

(assert (=> b!2290213 (= res!979301 (not (matchR!2968 (regex!4363 r!2363) lt!849674)))))

(declare-fun b!2290214 () Bool)

(declare-fun e!1467490 () Bool)

(declare-fun e!1467496 () Bool)

(assert (=> b!2290214 (= e!1467490 e!1467496)))

(declare-fun res!979294 () Bool)

(assert (=> b!2290214 (=> res!979294 e!1467496)))

(declare-fun otherR!12 () Rule!8526)

(declare-datatypes ((List!27363 0))(
  ( (Nil!27269) (Cons!27269 (h!32670 Rule!8526) (t!204559 List!27363)) )
))
(declare-fun rules!1750 () List!27363)

(declare-fun getIndex!376 (List!27363 Rule!8526) Int)

(assert (=> b!2290214 (= res!979294 (<= (getIndex!376 rules!1750 r!2363) (getIndex!376 rules!1750 otherR!12)))))

(declare-datatypes ((LexerInterface!3960 0))(
  ( (LexerInterfaceExt!3957 (__x!18111 Int)) (Lexer!3958) )
))
(declare-fun thiss!16613 () LexerInterface!3960)

(declare-fun ruleValid!1453 (LexerInterface!3960 Rule!8526) Bool)

(assert (=> b!2290214 (ruleValid!1453 thiss!16613 otherR!12)))

(declare-datatypes ((Unit!40152 0))(
  ( (Unit!40153) )
))
(declare-fun lt!849678 () Unit!40152)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!858 (LexerInterface!3960 Rule!8526 List!27363) Unit!40152)

(assert (=> b!2290214 (= lt!849678 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!858 thiss!16613 otherR!12 rules!1750))))

(declare-fun e!1467491 () Bool)

(assert (=> b!2290215 (= e!1467491 (and tp!726144 tp!726135))))

(declare-fun b!2290216 () Bool)

(declare-fun res!979292 () Bool)

(declare-fun e!1467501 () Bool)

(assert (=> b!2290216 (=> (not res!979292) (not e!1467501))))

(declare-fun rulesInvariant!3462 (LexerInterface!3960 List!27363) Bool)

(assert (=> b!2290216 (= res!979292 (rulesInvariant!3462 thiss!16613 rules!1750))))

(declare-fun b!2290217 () Bool)

(declare-datatypes ((Token!8204 0))(
  ( (Token!8205 (value!138165 TokenValue!4525) (rule!6697 Rule!8526) (size!21464 Int) (originalCharacters!5133 List!27362)) )
))
(declare-datatypes ((List!27364 0))(
  ( (Nil!27270) (Cons!27270 (h!32671 Token!8204) (t!204560 List!27364)) )
))
(declare-fun tokens!456 () List!27364)

(declare-fun e!1467478 () Bool)

(declare-fun e!1467488 () Bool)

(declare-fun tp!726142 () Bool)

(declare-fun inv!21 (TokenValue!4525) Bool)

(assert (=> b!2290217 (= e!1467488 (and (inv!21 (value!138165 (h!32671 tokens!456))) e!1467478 tp!726142))))

(declare-fun tp!726147 () Bool)

(declare-fun e!1467493 () Bool)

(declare-fun b!2290218 () Bool)

(declare-fun e!1467500 () Bool)

(declare-fun inv!36864 (String!29729) Bool)

(declare-fun inv!36867 (TokenValueInjection!8590) Bool)

(assert (=> b!2290218 (= e!1467493 (and tp!726147 (inv!36864 (tag!4853 (h!32670 rules!1750))) (inv!36867 (transformation!4363 (h!32670 rules!1750))) e!1467500))))

(declare-fun b!2290219 () Bool)

(declare-fun e!1467487 () Bool)

(declare-fun tp_is_empty!10643 () Bool)

(declare-fun tp!726145 () Bool)

(assert (=> b!2290219 (= e!1467487 (and tp_is_empty!10643 tp!726145))))

(declare-fun b!2290220 () Bool)

(declare-fun e!1467482 () Bool)

(declare-fun otherP!12 () List!27362)

(declare-fun size!21465 (BalanceConc!17476) Int)

(declare-fun charsOf!2751 (Token!8204) BalanceConc!17476)

(declare-fun head!4990 (List!27364) Token!8204)

(declare-fun size!21466 (List!27362) Int)

(assert (=> b!2290220 (= e!1467482 (<= (size!21465 (charsOf!2751 (head!4990 tokens!456))) (size!21466 otherP!12)))))

(declare-fun b!2290221 () Bool)

(declare-fun res!979295 () Bool)

(assert (=> b!2290221 (=> res!979295 e!1467496)))

(get-info :version)

(assert (=> b!2290221 (= res!979295 ((_ is Nil!27270) tokens!456))))

(declare-fun b!2290222 () Bool)

(declare-fun tp!726140 () Bool)

(declare-fun e!1467483 () Bool)

(declare-fun e!1467485 () Bool)

(assert (=> b!2290222 (= e!1467485 (and tp!726140 (inv!36864 (tag!4853 otherR!12)) (inv!36867 (transformation!4363 otherR!12)) e!1467483))))

(declare-fun b!2290223 () Bool)

(declare-fun e!1467480 () Bool)

(declare-fun tp!726139 () Bool)

(assert (=> b!2290223 (= e!1467480 (and tp_is_empty!10643 tp!726139))))

(assert (=> b!2290224 (= e!1467483 (and tp!726134 tp!726146))))

(declare-fun lt!849666 () List!27362)

(declare-fun b!2290225 () Bool)

(declare-datatypes ((tuple2!27074 0))(
  ( (tuple2!27075 (_1!16047 Token!8204) (_2!16047 List!27362)) )
))
(declare-datatypes ((Option!5353 0))(
  ( (None!5352) (Some!5352 (v!30432 tuple2!27074)) )
))
(declare-fun lt!849682 () Option!5353)

(declare-fun lt!849675 () Token!8204)

(assert (=> b!2290225 (= e!1467479 (= lt!849682 (Some!5352 (tuple2!27075 lt!849675 lt!849666))))))

(declare-fun input!1722 () List!27362)

(declare-fun isPrefix!2353 (List!27362 List!27362) Bool)

(assert (=> b!2290225 (isPrefix!2353 input!1722 input!1722)))

(declare-fun lt!849681 () Unit!40152)

(declare-fun lemmaIsPrefixRefl!1495 (List!27362 List!27362) Unit!40152)

(assert (=> b!2290225 (= lt!849681 (lemmaIsPrefixRefl!1495 input!1722 input!1722))))

(declare-fun lt!849673 () Unit!40152)

(declare-fun lt!849672 () BalanceConc!17476)

(declare-fun lemmaSemiInverse!1062 (TokenValueInjection!8590 BalanceConc!17476) Unit!40152)

(assert (=> b!2290225 (= lt!849673 (lemmaSemiInverse!1062 (transformation!4363 r!2363) lt!849672))))

(declare-fun b!2290226 () Bool)

(declare-fun e!1467503 () Bool)

(assert (=> b!2290226 (= e!1467503 e!1467479)))

(declare-fun res!979290 () Bool)

(assert (=> b!2290226 (=> res!979290 e!1467479)))

(assert (=> b!2290226 (= res!979290 (not (isPrefix!2353 lt!849674 input!1722)))))

(declare-fun lt!849680 () tuple2!27074)

(assert (=> b!2290226 (= lt!849682 (Some!5352 (tuple2!27075 lt!849675 (_2!16047 lt!849680))))))

(declare-fun maxPrefixOneRule!1394 (LexerInterface!3960 Rule!8526 List!27362) Option!5353)

(assert (=> b!2290226 (= lt!849682 (maxPrefixOneRule!1394 thiss!16613 r!2363 input!1722))))

(declare-fun lt!849671 () Int)

(declare-fun apply!6635 (TokenValueInjection!8590 BalanceConc!17476) TokenValue!4525)

(assert (=> b!2290226 (= lt!849675 (Token!8205 (apply!6635 (transformation!4363 r!2363) lt!849672) r!2363 lt!849671 lt!849674))))

(declare-fun seqFromList!3067 (List!27362) BalanceConc!17476)

(assert (=> b!2290226 (= lt!849672 (seqFromList!3067 lt!849674))))

(declare-fun lt!849669 () Unit!40152)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!587 (LexerInterface!3960 List!27363 List!27362 List!27362 List!27362 Rule!8526) Unit!40152)

(assert (=> b!2290226 (= lt!849669 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!587 thiss!16613 rules!1750 lt!849674 input!1722 (_2!16047 lt!849680) r!2363))))

(declare-fun b!2290227 () Bool)

(declare-fun res!979303 () Bool)

(assert (=> b!2290227 (=> (not res!979303) (not e!1467501))))

(declare-fun isEmpty!15525 (List!27363) Bool)

(assert (=> b!2290227 (= res!979303 (not (isEmpty!15525 rules!1750)))))

(declare-fun b!2290228 () Bool)

(declare-fun e!1467502 () Bool)

(assert (=> b!2290228 (= e!1467502 e!1467503)))

(declare-fun res!979304 () Bool)

(assert (=> b!2290228 (=> res!979304 e!1467503)))

(declare-fun lt!849677 () Int)

(assert (=> b!2290228 (= res!979304 (= lt!849677 lt!849671))))

(assert (=> b!2290228 (= lt!849671 (size!21466 lt!849674))))

(assert (=> b!2290228 (= lt!849677 (size!21466 otherP!12))))

(assert (=> b!2290228 (= (_2!16047 lt!849680) lt!849666)))

(declare-fun lt!849668 () Unit!40152)

(declare-fun lemmaSamePrefixThenSameSuffix!1054 (List!27362 List!27362 List!27362 List!27362 List!27362) Unit!40152)

(assert (=> b!2290228 (= lt!849668 (lemmaSamePrefixThenSameSuffix!1054 lt!849674 (_2!16047 lt!849680) lt!849674 lt!849666 input!1722))))

(declare-fun getSuffix!1144 (List!27362 List!27362) List!27362)

(assert (=> b!2290228 (= lt!849666 (getSuffix!1144 input!1722 lt!849674))))

(declare-fun ++!6663 (List!27362 List!27362) List!27362)

(assert (=> b!2290228 (isPrefix!2353 lt!849674 (++!6663 lt!849674 (_2!16047 lt!849680)))))

(declare-fun lt!849670 () Unit!40152)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1558 (List!27362 List!27362) Unit!40152)

(assert (=> b!2290228 (= lt!849670 (lemmaConcatTwoListThenFirstIsPrefix!1558 lt!849674 (_2!16047 lt!849680)))))

(declare-fun list!10676 (BalanceConc!17476) List!27362)

(assert (=> b!2290228 (= lt!849674 (list!10676 (charsOf!2751 (h!32671 tokens!456))))))

(declare-fun b!2290229 () Bool)

(declare-fun e!1467477 () Bool)

(assert (=> b!2290229 (= e!1467477 (= (rule!6697 (head!4990 tokens!456)) r!2363))))

(declare-fun b!2290230 () Bool)

(assert (=> b!2290230 (= e!1467496 e!1467502)))

(declare-fun res!979296 () Bool)

(assert (=> b!2290230 (=> res!979296 e!1467502)))

(assert (=> b!2290230 (= res!979296 (not (= (h!32671 tokens!456) (_1!16047 lt!849680))))))

(declare-fun get!8224 (Option!5353) tuple2!27074)

(declare-fun maxPrefix!2224 (LexerInterface!3960 List!27363 List!27362) Option!5353)

(assert (=> b!2290230 (= lt!849680 (get!8224 (maxPrefix!2224 thiss!16613 rules!1750 input!1722)))))

(declare-fun tp!726141 () Bool)

(declare-fun b!2290231 () Bool)

(declare-fun e!1467494 () Bool)

(assert (=> b!2290231 (= e!1467494 (and tp!726141 (inv!36864 (tag!4853 r!2363)) (inv!36867 (transformation!4363 r!2363)) e!1467491))))

(declare-fun b!2290232 () Bool)

(declare-fun res!979289 () Bool)

(assert (=> b!2290232 (=> (not res!979289) (not e!1467501))))

(declare-fun contains!4739 (List!27363 Rule!8526) Bool)

(assert (=> b!2290232 (= res!979289 (contains!4739 rules!1750 r!2363))))

(declare-fun b!2290233 () Bool)

(declare-fun res!979288 () Bool)

(assert (=> b!2290233 (=> (not res!979288) (not e!1467501))))

(assert (=> b!2290233 (= res!979288 (contains!4739 rules!1750 otherR!12))))

(declare-fun b!2290234 () Bool)

(declare-fun e!1467481 () Bool)

(assert (=> b!2290234 (= e!1467481 (not (matchR!2968 (regex!4363 r!2363) (list!10676 (charsOf!2751 (head!4990 tokens!456))))))))

(declare-fun b!2290235 () Bool)

(declare-fun e!1467489 () Bool)

(assert (=> b!2290235 (= e!1467501 e!1467489)))

(declare-fun res!979299 () Bool)

(assert (=> b!2290235 (=> (not res!979299) (not e!1467489))))

(declare-datatypes ((IArray!17755 0))(
  ( (IArray!17756 (innerList!8935 List!27364)) )
))
(declare-datatypes ((Conc!8875 0))(
  ( (Node!8875 (left!20669 Conc!8875) (right!20999 Conc!8875) (csize!17980 Int) (cheight!9086 Int)) (Leaf!13042 (xs!11817 IArray!17755) (csize!17981 Int)) (Empty!8875) )
))
(declare-datatypes ((BalanceConc!17478 0))(
  ( (BalanceConc!17479 (c!363156 Conc!8875)) )
))
(declare-datatypes ((tuple2!27076 0))(
  ( (tuple2!27077 (_1!16048 BalanceConc!17478) (_2!16048 BalanceConc!17476)) )
))
(declare-fun lt!849679 () tuple2!27076)

(declare-fun suffix!886 () List!27362)

(declare-datatypes ((tuple2!27078 0))(
  ( (tuple2!27079 (_1!16049 List!27364) (_2!16049 List!27362)) )
))
(declare-fun list!10677 (BalanceConc!17478) List!27364)

(assert (=> b!2290235 (= res!979299 (= (tuple2!27079 (list!10677 (_1!16048 lt!849679)) (list!10676 (_2!16048 lt!849679))) (tuple2!27079 tokens!456 suffix!886)))))

(declare-fun lex!1799 (LexerInterface!3960 List!27363 BalanceConc!17476) tuple2!27076)

(assert (=> b!2290235 (= lt!849679 (lex!1799 thiss!16613 rules!1750 (seqFromList!3067 input!1722)))))

(declare-fun b!2290236 () Bool)

(declare-fun e!1467474 () Bool)

(declare-fun tp!726149 () Bool)

(assert (=> b!2290236 (= e!1467474 (and e!1467493 tp!726149))))

(declare-fun b!2290237 () Bool)

(declare-fun res!979305 () Bool)

(declare-fun e!1467476 () Bool)

(assert (=> b!2290237 (=> (not res!979305) (not e!1467476))))

(assert (=> b!2290237 (= res!979305 (isPrefix!2353 otherP!12 input!1722))))

(declare-fun b!2290238 () Bool)

(assert (=> b!2290238 (= e!1467476 (not e!1467490))))

(declare-fun res!979298 () Bool)

(assert (=> b!2290238 (=> res!979298 e!1467490)))

(assert (=> b!2290238 (= res!979298 e!1467481)))

(declare-fun res!979297 () Bool)

(assert (=> b!2290238 (=> (not res!979297) (not e!1467481))))

(declare-fun lt!849667 () Bool)

(assert (=> b!2290238 (= res!979297 (not lt!849667))))

(assert (=> b!2290238 (ruleValid!1453 thiss!16613 r!2363)))

(declare-fun lt!849676 () Unit!40152)

(assert (=> b!2290238 (= lt!849676 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!858 thiss!16613 r!2363 rules!1750))))

(declare-fun res!979300 () Bool)

(assert (=> start!224760 (=> (not res!979300) (not e!1467501))))

(assert (=> start!224760 (= res!979300 ((_ is Lexer!3958) thiss!16613))))

(assert (=> start!224760 e!1467501))

(assert (=> start!224760 true))

(assert (=> start!224760 e!1467480))

(assert (=> start!224760 e!1467485))

(assert (=> start!224760 e!1467487))

(declare-fun e!1467495 () Bool)

(assert (=> start!224760 e!1467495))

(assert (=> start!224760 e!1467474))

(assert (=> start!224760 e!1467494))

(declare-fun e!1467486 () Bool)

(assert (=> start!224760 e!1467486))

(declare-fun b!2290239 () Bool)

(declare-fun res!979306 () Bool)

(assert (=> b!2290239 (=> (not res!979306) (not e!1467476))))

(assert (=> b!2290239 (= res!979306 (not (= r!2363 otherR!12)))))

(declare-fun tp!726133 () Bool)

(declare-fun b!2290240 () Bool)

(declare-fun inv!36868 (Token!8204) Bool)

(assert (=> b!2290240 (= e!1467486 (and (inv!36868 (h!32671 tokens!456)) e!1467488 tp!726133))))

(declare-fun b!2290241 () Bool)

(declare-fun tp!726148 () Bool)

(assert (=> b!2290241 (= e!1467495 (and tp_is_empty!10643 tp!726148))))

(declare-fun b!2290242 () Bool)

(declare-fun res!979293 () Bool)

(assert (=> b!2290242 (=> (not res!979293) (not e!1467476))))

(assert (=> b!2290242 (= res!979293 e!1467477)))

(declare-fun res!979302 () Bool)

(assert (=> b!2290242 (=> res!979302 e!1467477)))

(assert (=> b!2290242 (= res!979302 lt!849667)))

(declare-fun e!1467499 () Bool)

(declare-fun tp!726132 () Bool)

(declare-fun b!2290243 () Bool)

(assert (=> b!2290243 (= e!1467478 (and tp!726132 (inv!36864 (tag!4853 (rule!6697 (h!32671 tokens!456)))) (inv!36867 (transformation!4363 (rule!6697 (h!32671 tokens!456)))) e!1467499))))

(assert (=> b!2290244 (= e!1467499 (and tp!726143 tp!726136))))

(declare-fun b!2290245 () Bool)

(assert (=> b!2290245 (= e!1467489 e!1467476)))

(declare-fun res!979291 () Bool)

(assert (=> b!2290245 (=> (not res!979291) (not e!1467476))))

(assert (=> b!2290245 (= res!979291 e!1467482)))

(declare-fun res!979307 () Bool)

(assert (=> b!2290245 (=> res!979307 e!1467482)))

(assert (=> b!2290245 (= res!979307 lt!849667)))

(declare-fun isEmpty!15526 (List!27364) Bool)

(assert (=> b!2290245 (= lt!849667 (isEmpty!15526 tokens!456))))

(assert (=> b!2290246 (= e!1467500 (and tp!726137 tp!726138))))

(assert (= (and start!224760 res!979300) b!2290227))

(assert (= (and b!2290227 res!979303) b!2290216))

(assert (= (and b!2290216 res!979292) b!2290232))

(assert (= (and b!2290232 res!979289) b!2290233))

(assert (= (and b!2290233 res!979288) b!2290235))

(assert (= (and b!2290235 res!979299) b!2290245))

(assert (= (and b!2290245 (not res!979307)) b!2290220))

(assert (= (and b!2290245 res!979291) b!2290242))

(assert (= (and b!2290242 (not res!979302)) b!2290229))

(assert (= (and b!2290242 res!979293) b!2290237))

(assert (= (and b!2290237 res!979305) b!2290239))

(assert (= (and b!2290239 res!979306) b!2290238))

(assert (= (and b!2290238 res!979297) b!2290234))

(assert (= (and b!2290238 (not res!979298)) b!2290214))

(assert (= (and b!2290214 (not res!979294)) b!2290221))

(assert (= (and b!2290221 (not res!979295)) b!2290230))

(assert (= (and b!2290230 (not res!979296)) b!2290228))

(assert (= (and b!2290228 (not res!979304)) b!2290226))

(assert (= (and b!2290226 (not res!979290)) b!2290213))

(assert (= (and b!2290213 (not res!979301)) b!2290225))

(assert (= (and start!224760 ((_ is Cons!27268) input!1722)) b!2290223))

(assert (= b!2290222 b!2290224))

(assert (= start!224760 b!2290222))

(assert (= (and start!224760 ((_ is Cons!27268) suffix!886)) b!2290219))

(assert (= (and start!224760 ((_ is Cons!27268) otherP!12)) b!2290241))

(assert (= b!2290218 b!2290246))

(assert (= b!2290236 b!2290218))

(assert (= (and start!224760 ((_ is Cons!27269) rules!1750)) b!2290236))

(assert (= b!2290231 b!2290215))

(assert (= start!224760 b!2290231))

(assert (= b!2290243 b!2290244))

(assert (= b!2290217 b!2290243))

(assert (= b!2290240 b!2290217))

(assert (= (and start!224760 ((_ is Cons!27270) tokens!456)) b!2290240))

(declare-fun m!2717829 () Bool)

(assert (=> b!2290231 m!2717829))

(declare-fun m!2717831 () Bool)

(assert (=> b!2290231 m!2717831))

(declare-fun m!2717833 () Bool)

(assert (=> b!2290245 m!2717833))

(declare-fun m!2717835 () Bool)

(assert (=> b!2290214 m!2717835))

(declare-fun m!2717837 () Bool)

(assert (=> b!2290214 m!2717837))

(declare-fun m!2717839 () Bool)

(assert (=> b!2290214 m!2717839))

(declare-fun m!2717841 () Bool)

(assert (=> b!2290214 m!2717841))

(declare-fun m!2717843 () Bool)

(assert (=> b!2290233 m!2717843))

(declare-fun m!2717845 () Bool)

(assert (=> b!2290229 m!2717845))

(declare-fun m!2717847 () Bool)

(assert (=> b!2290216 m!2717847))

(declare-fun m!2717849 () Bool)

(assert (=> b!2290230 m!2717849))

(assert (=> b!2290230 m!2717849))

(declare-fun m!2717851 () Bool)

(assert (=> b!2290230 m!2717851))

(declare-fun m!2717853 () Bool)

(assert (=> b!2290240 m!2717853))

(assert (=> b!2290234 m!2717845))

(assert (=> b!2290234 m!2717845))

(declare-fun m!2717855 () Bool)

(assert (=> b!2290234 m!2717855))

(assert (=> b!2290234 m!2717855))

(declare-fun m!2717857 () Bool)

(assert (=> b!2290234 m!2717857))

(assert (=> b!2290234 m!2717857))

(declare-fun m!2717859 () Bool)

(assert (=> b!2290234 m!2717859))

(declare-fun m!2717861 () Bool)

(assert (=> b!2290213 m!2717861))

(declare-fun m!2717863 () Bool)

(assert (=> b!2290235 m!2717863))

(declare-fun m!2717865 () Bool)

(assert (=> b!2290235 m!2717865))

(declare-fun m!2717867 () Bool)

(assert (=> b!2290235 m!2717867))

(assert (=> b!2290235 m!2717867))

(declare-fun m!2717869 () Bool)

(assert (=> b!2290235 m!2717869))

(declare-fun m!2717871 () Bool)

(assert (=> b!2290228 m!2717871))

(declare-fun m!2717873 () Bool)

(assert (=> b!2290228 m!2717873))

(declare-fun m!2717875 () Bool)

(assert (=> b!2290228 m!2717875))

(declare-fun m!2717877 () Bool)

(assert (=> b!2290228 m!2717877))

(declare-fun m!2717879 () Bool)

(assert (=> b!2290228 m!2717879))

(assert (=> b!2290228 m!2717875))

(declare-fun m!2717881 () Bool)

(assert (=> b!2290228 m!2717881))

(assert (=> b!2290228 m!2717881))

(declare-fun m!2717883 () Bool)

(assert (=> b!2290228 m!2717883))

(declare-fun m!2717885 () Bool)

(assert (=> b!2290228 m!2717885))

(declare-fun m!2717887 () Bool)

(assert (=> b!2290228 m!2717887))

(declare-fun m!2717889 () Bool)

(assert (=> b!2290217 m!2717889))

(declare-fun m!2717891 () Bool)

(assert (=> b!2290227 m!2717891))

(declare-fun m!2717893 () Bool)

(assert (=> b!2290243 m!2717893))

(declare-fun m!2717895 () Bool)

(assert (=> b!2290243 m!2717895))

(declare-fun m!2717897 () Bool)

(assert (=> b!2290232 m!2717897))

(declare-fun m!2717899 () Bool)

(assert (=> b!2290222 m!2717899))

(declare-fun m!2717901 () Bool)

(assert (=> b!2290222 m!2717901))

(declare-fun m!2717903 () Bool)

(assert (=> b!2290218 m!2717903))

(declare-fun m!2717905 () Bool)

(assert (=> b!2290218 m!2717905))

(declare-fun m!2717907 () Bool)

(assert (=> b!2290238 m!2717907))

(declare-fun m!2717909 () Bool)

(assert (=> b!2290238 m!2717909))

(declare-fun m!2717911 () Bool)

(assert (=> b!2290237 m!2717911))

(declare-fun m!2717913 () Bool)

(assert (=> b!2290225 m!2717913))

(declare-fun m!2717915 () Bool)

(assert (=> b!2290225 m!2717915))

(declare-fun m!2717917 () Bool)

(assert (=> b!2290225 m!2717917))

(assert (=> b!2290220 m!2717845))

(assert (=> b!2290220 m!2717845))

(assert (=> b!2290220 m!2717855))

(assert (=> b!2290220 m!2717855))

(declare-fun m!2717919 () Bool)

(assert (=> b!2290220 m!2717919))

(assert (=> b!2290220 m!2717871))

(declare-fun m!2717921 () Bool)

(assert (=> b!2290226 m!2717921))

(declare-fun m!2717923 () Bool)

(assert (=> b!2290226 m!2717923))

(declare-fun m!2717925 () Bool)

(assert (=> b!2290226 m!2717925))

(declare-fun m!2717927 () Bool)

(assert (=> b!2290226 m!2717927))

(declare-fun m!2717929 () Bool)

(assert (=> b!2290226 m!2717929))

(check-sat (not b!2290233) (not b!2290230) (not b!2290220) b_and!181703 (not b_next!69505) (not b!2290218) b_and!181697 b_and!181705 (not b!2290231) (not b!2290241) (not b_next!69503) (not b!2290219) (not b!2290238) (not b!2290228) (not b!2290213) (not b!2290236) (not b!2290229) (not b!2290227) (not b!2290217) (not b_next!69511) (not b!2290216) b_and!181709 (not b!2290223) (not b!2290237) b_and!181699 (not b_next!69515) (not b!2290222) (not b_next!69501) b_and!181711 (not b!2290234) b_and!181707 (not b_next!69507) (not b!2290235) (not b!2290232) (not b!2290225) (not b_next!69513) (not b!2290240) b_and!181701 tp_is_empty!10643 (not b!2290243) (not b!2290214) (not b!2290226) (not b!2290245) (not b_next!69509))
(check-sat b_and!181703 (not b_next!69505) (not b_next!69503) b_and!181697 (not b_next!69511) b_and!181709 (not b_next!69501) b_and!181711 (not b_next!69513) b_and!181701 (not b_next!69509) b_and!181705 b_and!181699 (not b_next!69515) b_and!181707 (not b_next!69507))
