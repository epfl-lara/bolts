; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!219880 () Bool)

(assert start!219880)

(declare-fun b!2253253 () Bool)

(declare-fun b_free!66093 () Bool)

(declare-fun b_next!66797 () Bool)

(assert (=> b!2253253 (= b_free!66093 (not b_next!66797))))

(declare-fun tp!712011 () Bool)

(declare-fun b_and!176593 () Bool)

(assert (=> b!2253253 (= tp!712011 b_and!176593)))

(declare-fun b_free!66095 () Bool)

(declare-fun b_next!66799 () Bool)

(assert (=> b!2253253 (= b_free!66095 (not b_next!66799))))

(declare-fun tp!712015 () Bool)

(declare-fun b_and!176595 () Bool)

(assert (=> b!2253253 (= tp!712015 b_and!176595)))

(declare-fun b!2253254 () Bool)

(declare-fun b_free!66097 () Bool)

(declare-fun b_next!66801 () Bool)

(assert (=> b!2253254 (= b_free!66097 (not b_next!66801))))

(declare-fun tp!712004 () Bool)

(declare-fun b_and!176597 () Bool)

(assert (=> b!2253254 (= tp!712004 b_and!176597)))

(declare-fun b_free!66099 () Bool)

(declare-fun b_next!66803 () Bool)

(assert (=> b!2253254 (= b_free!66099 (not b_next!66803))))

(declare-fun tp!712012 () Bool)

(declare-fun b_and!176599 () Bool)

(assert (=> b!2253254 (= tp!712012 b_and!176599)))

(declare-fun b!2253258 () Bool)

(declare-fun b_free!66101 () Bool)

(declare-fun b_next!66805 () Bool)

(assert (=> b!2253258 (= b_free!66101 (not b_next!66805))))

(declare-fun tp!712016 () Bool)

(declare-fun b_and!176601 () Bool)

(assert (=> b!2253258 (= tp!712016 b_and!176601)))

(declare-fun b_free!66103 () Bool)

(declare-fun b_next!66807 () Bool)

(assert (=> b!2253258 (= b_free!66103 (not b_next!66807))))

(declare-fun tp!712010 () Bool)

(declare-fun b_and!176603 () Bool)

(assert (=> b!2253258 (= tp!712010 b_and!176603)))

(declare-fun b!2253250 () Bool)

(declare-fun b_free!66105 () Bool)

(declare-fun b_next!66809 () Bool)

(assert (=> b!2253250 (= b_free!66105 (not b_next!66809))))

(declare-fun tp!712021 () Bool)

(declare-fun b_and!176605 () Bool)

(assert (=> b!2253250 (= tp!712021 b_and!176605)))

(declare-fun b_free!66107 () Bool)

(declare-fun b_next!66811 () Bool)

(assert (=> b!2253250 (= b_free!66107 (not b_next!66811))))

(declare-fun tp!712018 () Bool)

(declare-fun b_and!176607 () Bool)

(assert (=> b!2253250 (= tp!712018 b_and!176607)))

(declare-fun b!2253229 () Bool)

(declare-fun e!1441976 () Bool)

(declare-datatypes ((List!26791 0))(
  ( (Nil!26697) (Cons!26697 (h!32098 (_ BitVec 16)) (t!201019 List!26791)) )
))
(declare-datatypes ((TokenValue!4397 0))(
  ( (FloatLiteralValue!8794 (text!31224 List!26791)) (TokenValueExt!4396 (__x!17854 Int)) (Broken!21985 (value!134491 List!26791)) (Object!4490) (End!4397) (Def!4397) (Underscore!4397) (Match!4397) (Else!4397) (Error!4397) (Case!4397) (If!4397) (Extends!4397) (Abstract!4397) (Class!4397) (Val!4397) (DelimiterValue!8794 (del!4457 List!26791)) (KeywordValue!4403 (value!134492 List!26791)) (CommentValue!8794 (value!134493 List!26791)) (WhitespaceValue!8794 (value!134494 List!26791)) (IndentationValue!4397 (value!134495 List!26791)) (String!29088) (Int32!4397) (Broken!21986 (value!134496 List!26791)) (Boolean!4398) (Unit!39631) (OperatorValue!4400 (op!4457 List!26791)) (IdentifierValue!8794 (value!134497 List!26791)) (IdentifierValue!8795 (value!134498 List!26791)) (WhitespaceValue!8795 (value!134499 List!26791)) (True!8794) (False!8794) (Broken!21987 (value!134500 List!26791)) (Broken!21988 (value!134501 List!26791)) (True!8795) (RightBrace!4397) (RightBracket!4397) (Colon!4397) (Null!4397) (Comma!4397) (LeftBracket!4397) (False!8795) (LeftBrace!4397) (ImaginaryLiteralValue!4397 (text!31225 List!26791)) (StringLiteralValue!13191 (value!134502 List!26791)) (EOFValue!4397 (value!134503 List!26791)) (IdentValue!4397 (value!134504 List!26791)) (DelimiterValue!8795 (value!134505 List!26791)) (DedentValue!4397 (value!134506 List!26791)) (NewLineValue!4397 (value!134507 List!26791)) (IntegerValue!13191 (value!134508 (_ BitVec 32)) (text!31226 List!26791)) (IntegerValue!13192 (value!134509 Int) (text!31227 List!26791)) (Times!4397) (Or!4397) (Equal!4397) (Minus!4397) (Broken!21989 (value!134510 List!26791)) (And!4397) (Div!4397) (LessEqual!4397) (Mod!4397) (Concat!10980) (Not!4397) (Plus!4397) (SpaceValue!4397 (value!134511 List!26791)) (IntegerValue!13193 (value!134512 Int) (text!31228 List!26791)) (StringLiteralValue!13192 (text!31229 List!26791)) (FloatLiteralValue!8795 (text!31230 List!26791)) (BytesLiteralValue!4397 (value!134513 List!26791)) (CommentValue!8795 (value!134514 List!26791)) (StringLiteralValue!13193 (value!134515 List!26791)) (ErrorTokenValue!4397 (msg!4458 List!26791)) )
))
(declare-datatypes ((C!13312 0))(
  ( (C!13313 (val!7704 Int)) )
))
(declare-datatypes ((List!26792 0))(
  ( (Nil!26698) (Cons!26698 (h!32099 C!13312) (t!201020 List!26792)) )
))
(declare-datatypes ((IArray!17241 0))(
  ( (IArray!17242 (innerList!8678 List!26792)) )
))
(declare-datatypes ((Conc!8618 0))(
  ( (Node!8618 (left!20280 Conc!8618) (right!20610 Conc!8618) (csize!17466 Int) (cheight!8829 Int)) (Leaf!12721 (xs!11560 IArray!17241) (csize!17467 Int)) (Empty!8618) )
))
(declare-datatypes ((BalanceConc!16964 0))(
  ( (BalanceConc!16965 (c!358300 Conc!8618)) )
))
(declare-datatypes ((Regex!6583 0))(
  ( (ElementMatch!6583 (c!358301 C!13312)) (Concat!10981 (regOne!13678 Regex!6583) (regTwo!13678 Regex!6583)) (EmptyExpr!6583) (Star!6583 (reg!6912 Regex!6583)) (EmptyLang!6583) (Union!6583 (regOne!13679 Regex!6583) (regTwo!13679 Regex!6583)) )
))
(declare-datatypes ((String!29089 0))(
  ( (String!29090 (value!134516 String)) )
))
(declare-datatypes ((TokenValueInjection!8334 0))(
  ( (TokenValueInjection!8335 (toValue!5977 Int) (toChars!5836 Int)) )
))
(declare-datatypes ((Rule!8270 0))(
  ( (Rule!8271 (regex!4235 Regex!6583) (tag!4725 String!29089) (isSeparator!4235 Bool) (transformation!4235 TokenValueInjection!8334)) )
))
(declare-datatypes ((Token!7948 0))(
  ( (Token!7949 (value!134517 TokenValue!4397) (rule!6539 Rule!8270) (size!20898 Int) (originalCharacters!5005 List!26792)) )
))
(declare-datatypes ((List!26793 0))(
  ( (Nil!26699) (Cons!26699 (h!32100 Token!7948) (t!201021 List!26793)) )
))
(declare-fun tokens!456 () List!26793)

(declare-fun otherP!12 () List!26792)

(declare-fun size!20899 (BalanceConc!16964) Int)

(declare-fun charsOf!2623 (Token!7948) BalanceConc!16964)

(declare-fun head!4804 (List!26793) Token!7948)

(declare-fun size!20900 (List!26792) Int)

(assert (=> b!2253229 (= e!1441976 (<= (size!20899 (charsOf!2623 (head!4804 tokens!456))) (size!20900 otherP!12)))))

(declare-fun b!2253230 () Bool)

(declare-fun e!1441984 () Bool)

(declare-fun e!1441975 () Bool)

(declare-fun tp!712006 () Bool)

(assert (=> b!2253230 (= e!1441984 (and e!1441975 tp!712006))))

(declare-fun b!2253231 () Bool)

(declare-fun e!1441972 () Bool)

(declare-fun r!2363 () Rule!8270)

(declare-fun matchR!2844 (Regex!6583 List!26792) Bool)

(declare-fun list!10257 (BalanceConc!16964) List!26792)

(assert (=> b!2253231 (= e!1441972 (not (matchR!2844 (regex!4235 r!2363) (list!10257 (charsOf!2623 (head!4804 tokens!456))))))))

(declare-fun b!2253233 () Bool)

(declare-fun res!962808 () Bool)

(declare-fun e!1441974 () Bool)

(assert (=> b!2253233 (=> (not res!962808) (not e!1441974))))

(declare-datatypes ((List!26794 0))(
  ( (Nil!26700) (Cons!26700 (h!32101 Rule!8270) (t!201022 List!26794)) )
))
(declare-fun rules!1750 () List!26794)

(declare-fun isEmpty!15062 (List!26794) Bool)

(assert (=> b!2253233 (= res!962808 (not (isEmpty!15062 rules!1750)))))

(declare-fun b!2253234 () Bool)

(declare-fun res!962809 () Bool)

(declare-fun e!1441973 () Bool)

(assert (=> b!2253234 (=> res!962809 e!1441973)))

(declare-fun lt!837519 () Int)

(declare-fun lt!837527 () Int)

(assert (=> b!2253234 (= res!962809 (>= lt!837519 lt!837527))))

(declare-fun b!2253235 () Bool)

(declare-fun e!1441994 () Bool)

(declare-fun tp!712019 () Bool)

(declare-fun inv!36232 (String!29089) Bool)

(declare-fun inv!36235 (TokenValueInjection!8334) Bool)

(assert (=> b!2253235 (= e!1441975 (and tp!712019 (inv!36232 (tag!4725 (h!32101 rules!1750))) (inv!36235 (transformation!4235 (h!32101 rules!1750))) e!1441994))))

(declare-fun b!2253236 () Bool)

(declare-fun e!1441971 () Bool)

(declare-fun tp_is_empty!10387 () Bool)

(declare-fun tp!712007 () Bool)

(assert (=> b!2253236 (= e!1441971 (and tp_is_empty!10387 tp!712007))))

(declare-fun b!2253237 () Bool)

(declare-fun res!962828 () Bool)

(declare-fun e!1441967 () Bool)

(assert (=> b!2253237 (=> (not res!962828) (not e!1441967))))

(declare-fun otherR!12 () Rule!8270)

(assert (=> b!2253237 (= res!962828 (not (= r!2363 otherR!12)))))

(declare-fun b!2253238 () Bool)

(declare-fun e!1441978 () Bool)

(assert (=> b!2253238 (= e!1441967 (not e!1441978))))

(declare-fun res!962807 () Bool)

(assert (=> b!2253238 (=> res!962807 e!1441978)))

(assert (=> b!2253238 (= res!962807 e!1441972)))

(declare-fun res!962817 () Bool)

(assert (=> b!2253238 (=> (not res!962817) (not e!1441972))))

(declare-fun lt!837530 () Bool)

(assert (=> b!2253238 (= res!962817 (not lt!837530))))

(declare-datatypes ((LexerInterface!3832 0))(
  ( (LexerInterfaceExt!3829 (__x!17855 Int)) (Lexer!3830) )
))
(declare-fun thiss!16613 () LexerInterface!3832)

(declare-fun ruleValid!1327 (LexerInterface!3832 Rule!8270) Bool)

(assert (=> b!2253238 (ruleValid!1327 thiss!16613 r!2363)))

(declare-datatypes ((Unit!39632 0))(
  ( (Unit!39633) )
))
(declare-fun lt!837524 () Unit!39632)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!734 (LexerInterface!3832 Rule!8270 List!26794) Unit!39632)

(assert (=> b!2253238 (= lt!837524 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!734 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2253239 () Bool)

(declare-fun e!1441988 () Bool)

(declare-fun e!1441986 () Bool)

(assert (=> b!2253239 (= e!1441988 e!1441986)))

(declare-fun res!962822 () Bool)

(assert (=> b!2253239 (=> res!962822 e!1441986)))

(declare-fun lt!837529 () Int)

(declare-fun lt!837526 () Int)

(assert (=> b!2253239 (= res!962822 (not (= lt!837529 lt!837526)))))

(declare-fun lt!837534 () List!26792)

(assert (=> b!2253239 (= lt!837526 (size!20900 lt!837534))))

(assert (=> b!2253239 (= lt!837529 (size!20900 otherP!12))))

(declare-datatypes ((tuple2!26218 0))(
  ( (tuple2!26219 (_1!15619 Token!7948) (_2!15619 List!26792)) )
))
(declare-fun lt!837528 () tuple2!26218)

(declare-fun lt!837535 () List!26792)

(assert (=> b!2253239 (= (_2!15619 lt!837528) lt!837535)))

(declare-fun lt!837525 () Unit!39632)

(declare-fun input!1722 () List!26792)

(declare-fun lemmaSamePrefixThenSameSuffix!980 (List!26792 List!26792 List!26792 List!26792 List!26792) Unit!39632)

(assert (=> b!2253239 (= lt!837525 (lemmaSamePrefixThenSameSuffix!980 lt!837534 (_2!15619 lt!837528) lt!837534 lt!837535 input!1722))))

(declare-fun getSuffix!1060 (List!26792 List!26792) List!26792)

(assert (=> b!2253239 (= lt!837535 (getSuffix!1060 input!1722 lt!837534))))

(declare-fun isPrefix!2225 (List!26792 List!26792) Bool)

(declare-fun ++!6507 (List!26792 List!26792) List!26792)

(assert (=> b!2253239 (isPrefix!2225 lt!837534 (++!6507 lt!837534 (_2!15619 lt!837528)))))

(declare-fun lt!837522 () Unit!39632)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1470 (List!26792 List!26792) Unit!39632)

(assert (=> b!2253239 (= lt!837522 (lemmaConcatTwoListThenFirstIsPrefix!1470 lt!837534 (_2!15619 lt!837528)))))

(assert (=> b!2253239 (= lt!837534 (list!10257 (charsOf!2623 (h!32100 tokens!456))))))

(declare-fun b!2253240 () Bool)

(declare-fun e!1441979 () Bool)

(assert (=> b!2253240 (= e!1441978 e!1441979)))

(declare-fun res!962827 () Bool)

(assert (=> b!2253240 (=> res!962827 e!1441979)))

(get-info :version)

(assert (=> b!2253240 (= res!962827 (or (<= lt!837527 lt!837519) ((_ is Nil!26699) tokens!456)))))

(declare-fun getIndex!256 (List!26794 Rule!8270) Int)

(assert (=> b!2253240 (= lt!837519 (getIndex!256 rules!1750 otherR!12))))

(assert (=> b!2253240 (= lt!837527 (getIndex!256 rules!1750 r!2363))))

(assert (=> b!2253240 (ruleValid!1327 thiss!16613 otherR!12)))

(declare-fun lt!837531 () Unit!39632)

(assert (=> b!2253240 (= lt!837531 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!734 thiss!16613 otherR!12 rules!1750))))

(declare-fun tp!712008 () Bool)

(declare-fun e!1441989 () Bool)

(declare-fun e!1441990 () Bool)

(declare-fun b!2253241 () Bool)

(assert (=> b!2253241 (= e!1441990 (and tp!712008 (inv!36232 (tag!4725 r!2363)) (inv!36235 (transformation!4235 r!2363)) e!1441989))))

(declare-fun b!2253242 () Bool)

(assert (=> b!2253242 (= e!1441979 e!1441988)))

(declare-fun res!962823 () Bool)

(assert (=> b!2253242 (=> res!962823 e!1441988)))

(assert (=> b!2253242 (= res!962823 (not (= (h!32100 tokens!456) (_1!15619 lt!837528))))))

(declare-datatypes ((Option!5211 0))(
  ( (None!5210) (Some!5210 (v!30232 tuple2!26218)) )
))
(declare-fun lt!837520 () Option!5211)

(declare-fun get!8060 (Option!5211) tuple2!26218)

(assert (=> b!2253242 (= lt!837528 (get!8060 lt!837520))))

(declare-fun maxPrefix!2120 (LexerInterface!3832 List!26794 List!26792) Option!5211)

(assert (=> b!2253242 (= lt!837520 (maxPrefix!2120 thiss!16613 rules!1750 input!1722))))

(declare-fun b!2253243 () Bool)

(declare-fun tp!712005 () Bool)

(declare-fun e!1441977 () Bool)

(declare-fun e!1441985 () Bool)

(declare-fun inv!21 (TokenValue!4397) Bool)

(assert (=> b!2253243 (= e!1441977 (and (inv!21 (value!134517 (h!32100 tokens!456))) e!1441985 tp!712005))))

(declare-fun b!2253244 () Bool)

(declare-fun tp!712020 () Bool)

(declare-fun e!1441980 () Bool)

(assert (=> b!2253244 (= e!1441985 (and tp!712020 (inv!36232 (tag!4725 (rule!6539 (h!32100 tokens!456)))) (inv!36235 (transformation!4235 (rule!6539 (h!32100 tokens!456)))) e!1441980))))

(declare-fun b!2253245 () Bool)

(declare-fun res!962821 () Bool)

(assert (=> b!2253245 (=> (not res!962821) (not e!1441974))))

(declare-fun contains!4587 (List!26794 Rule!8270) Bool)

(assert (=> b!2253245 (= res!962821 (contains!4587 rules!1750 r!2363))))

(declare-fun b!2253246 () Bool)

(declare-fun e!1441992 () Bool)

(assert (=> b!2253246 (= e!1441992 (= (rule!6539 (head!4804 tokens!456)) r!2363))))

(declare-fun b!2253247 () Bool)

(declare-fun e!1441968 () Bool)

(declare-fun tp!712017 () Bool)

(assert (=> b!2253247 (= e!1441968 (and tp_is_empty!10387 tp!712017))))

(declare-fun b!2253248 () Bool)

(declare-fun res!962816 () Bool)

(assert (=> b!2253248 (=> (not res!962816) (not e!1441974))))

(declare-fun rulesInvariant!3334 (LexerInterface!3832 List!26794) Bool)

(assert (=> b!2253248 (= res!962816 (rulesInvariant!3334 thiss!16613 rules!1750))))

(declare-fun b!2253249 () Bool)

(declare-fun res!962815 () Bool)

(declare-fun e!1441982 () Bool)

(assert (=> b!2253249 (=> res!962815 e!1441982)))

(declare-fun isEmpty!15063 (List!26792) Bool)

(assert (=> b!2253249 (= res!962815 (isEmpty!15063 lt!837534))))

(declare-fun b!2253232 () Bool)

(declare-fun res!962811 () Bool)

(assert (=> b!2253232 (=> (not res!962811) (not e!1441967))))

(assert (=> b!2253232 (= res!962811 (isPrefix!2225 otherP!12 input!1722))))

(declare-fun res!962819 () Bool)

(assert (=> start!219880 (=> (not res!962819) (not e!1441974))))

(assert (=> start!219880 (= res!962819 ((_ is Lexer!3830) thiss!16613))))

(assert (=> start!219880 e!1441974))

(assert (=> start!219880 true))

(declare-fun e!1441983 () Bool)

(assert (=> start!219880 e!1441983))

(declare-fun e!1441965 () Bool)

(assert (=> start!219880 e!1441965))

(assert (=> start!219880 e!1441971))

(assert (=> start!219880 e!1441968))

(assert (=> start!219880 e!1441984))

(assert (=> start!219880 e!1441990))

(declare-fun e!1441987 () Bool)

(assert (=> start!219880 e!1441987))

(assert (=> b!2253250 (= e!1441980 (and tp!712021 tp!712018))))

(declare-fun b!2253251 () Bool)

(assert (=> b!2253251 (= e!1441973 true)))

(assert (=> b!2253251 (not (matchR!2844 (regex!4235 otherR!12) lt!837534))))

(declare-fun lt!837536 () Unit!39632)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!182 (LexerInterface!3832 List!26794 Rule!8270 List!26792 List!26792 Rule!8270) Unit!39632)

(assert (=> b!2253251 (= lt!837536 (lemmaMaxPrefNoSmallerRuleMatches!182 thiss!16613 rules!1750 r!2363 lt!837534 input!1722 otherR!12))))

(declare-fun b!2253252 () Bool)

(declare-fun tp!712013 () Bool)

(assert (=> b!2253252 (= e!1441983 (and tp_is_empty!10387 tp!712013))))

(assert (=> b!2253253 (= e!1441994 (and tp!712011 tp!712015))))

(assert (=> b!2253254 (= e!1441989 (and tp!712004 tp!712012))))

(declare-fun b!2253255 () Bool)

(assert (=> b!2253255 (= e!1441986 e!1441982)))

(declare-fun res!962824 () Bool)

(assert (=> b!2253255 (=> res!962824 e!1441982)))

(assert (=> b!2253255 (= res!962824 (not (isPrefix!2225 lt!837534 input!1722)))))

(assert (=> b!2253255 (= lt!837534 otherP!12)))

(declare-fun lt!837523 () Unit!39632)

(declare-fun lemmaIsPrefixSameLengthThenSameList!381 (List!26792 List!26792 List!26792) Unit!39632)

(assert (=> b!2253255 (= lt!837523 (lemmaIsPrefixSameLengthThenSameList!381 lt!837534 otherP!12 input!1722))))

(declare-fun b!2253256 () Bool)

(declare-fun e!1441991 () Bool)

(assert (=> b!2253256 (= e!1441991 e!1441967)))

(declare-fun res!962813 () Bool)

(assert (=> b!2253256 (=> (not res!962813) (not e!1441967))))

(assert (=> b!2253256 (= res!962813 e!1441976)))

(declare-fun res!962818 () Bool)

(assert (=> b!2253256 (=> res!962818 e!1441976)))

(assert (=> b!2253256 (= res!962818 lt!837530)))

(declare-fun isEmpty!15064 (List!26793) Bool)

(assert (=> b!2253256 (= lt!837530 (isEmpty!15064 tokens!456))))

(declare-fun b!2253257 () Bool)

(declare-fun res!962814 () Bool)

(assert (=> b!2253257 (=> (not res!962814) (not e!1441967))))

(assert (=> b!2253257 (= res!962814 e!1441992)))

(declare-fun res!962825 () Bool)

(assert (=> b!2253257 (=> res!962825 e!1441992)))

(assert (=> b!2253257 (= res!962825 lt!837530)))

(declare-fun e!1441970 () Bool)

(assert (=> b!2253258 (= e!1441970 (and tp!712016 tp!712010))))

(declare-fun b!2253259 () Bool)

(assert (=> b!2253259 (= e!1441974 e!1441991)))

(declare-fun res!962820 () Bool)

(assert (=> b!2253259 (=> (not res!962820) (not e!1441991))))

(declare-fun suffix!886 () List!26792)

(declare-datatypes ((IArray!17243 0))(
  ( (IArray!17244 (innerList!8679 List!26793)) )
))
(declare-datatypes ((Conc!8619 0))(
  ( (Node!8619 (left!20281 Conc!8619) (right!20611 Conc!8619) (csize!17468 Int) (cheight!8830 Int)) (Leaf!12722 (xs!11561 IArray!17243) (csize!17469 Int)) (Empty!8619) )
))
(declare-datatypes ((BalanceConc!16966 0))(
  ( (BalanceConc!16967 (c!358302 Conc!8619)) )
))
(declare-datatypes ((tuple2!26220 0))(
  ( (tuple2!26221 (_1!15620 BalanceConc!16966) (_2!15620 BalanceConc!16964)) )
))
(declare-fun lt!837521 () tuple2!26220)

(declare-datatypes ((tuple2!26222 0))(
  ( (tuple2!26223 (_1!15621 List!26793) (_2!15621 List!26792)) )
))
(declare-fun list!10258 (BalanceConc!16966) List!26793)

(assert (=> b!2253259 (= res!962820 (= (tuple2!26223 (list!10258 (_1!15620 lt!837521)) (list!10257 (_2!15620 lt!837521))) (tuple2!26223 tokens!456 suffix!886)))))

(declare-fun lex!1671 (LexerInterface!3832 List!26794 BalanceConc!16964) tuple2!26220)

(declare-fun seqFromList!2939 (List!26792) BalanceConc!16964)

(assert (=> b!2253259 (= lt!837521 (lex!1671 thiss!16613 rules!1750 (seqFromList!2939 input!1722)))))

(declare-fun tp!712014 () Bool)

(declare-fun b!2253260 () Bool)

(declare-fun inv!36236 (Token!7948) Bool)

(assert (=> b!2253260 (= e!1441987 (and (inv!36236 (h!32100 tokens!456)) e!1441977 tp!712014))))

(declare-fun tp!712009 () Bool)

(declare-fun b!2253261 () Bool)

(assert (=> b!2253261 (= e!1441965 (and tp!712009 (inv!36232 (tag!4725 otherR!12)) (inv!36235 (transformation!4235 otherR!12)) e!1441970))))

(declare-fun b!2253262 () Bool)

(assert (=> b!2253262 (= e!1441982 e!1441973)))

(declare-fun res!962826 () Bool)

(assert (=> b!2253262 (=> res!962826 e!1441973)))

(declare-fun lt!837532 () BalanceConc!16964)

(declare-fun apply!6555 (TokenValueInjection!8334 BalanceConc!16964) TokenValue!4397)

(assert (=> b!2253262 (= res!962826 (not (= lt!837520 (Some!5210 (tuple2!26219 (Token!7949 (apply!6555 (transformation!4235 r!2363) lt!837532) r!2363 lt!837526 lt!837534) lt!837535)))))))

(declare-fun lt!837533 () Unit!39632)

(declare-fun lemmaSemiInverse!1000 (TokenValueInjection!8334 BalanceConc!16964) Unit!39632)

(assert (=> b!2253262 (= lt!837533 (lemmaSemiInverse!1000 (transformation!4235 r!2363) lt!837532))))

(assert (=> b!2253262 (= lt!837532 (seqFromList!2939 lt!837534))))

(declare-fun b!2253263 () Bool)

(declare-fun res!962810 () Bool)

(assert (=> b!2253263 (=> res!962810 e!1441973)))

(assert (=> b!2253263 (= res!962810 (not (matchR!2844 (regex!4235 r!2363) lt!837534)))))

(declare-fun b!2253264 () Bool)

(declare-fun res!962812 () Bool)

(assert (=> b!2253264 (=> (not res!962812) (not e!1441974))))

(assert (=> b!2253264 (= res!962812 (contains!4587 rules!1750 otherR!12))))

(assert (= (and start!219880 res!962819) b!2253233))

(assert (= (and b!2253233 res!962808) b!2253248))

(assert (= (and b!2253248 res!962816) b!2253245))

(assert (= (and b!2253245 res!962821) b!2253264))

(assert (= (and b!2253264 res!962812) b!2253259))

(assert (= (and b!2253259 res!962820) b!2253256))

(assert (= (and b!2253256 (not res!962818)) b!2253229))

(assert (= (and b!2253256 res!962813) b!2253257))

(assert (= (and b!2253257 (not res!962825)) b!2253246))

(assert (= (and b!2253257 res!962814) b!2253232))

(assert (= (and b!2253232 res!962811) b!2253237))

(assert (= (and b!2253237 res!962828) b!2253238))

(assert (= (and b!2253238 res!962817) b!2253231))

(assert (= (and b!2253238 (not res!962807)) b!2253240))

(assert (= (and b!2253240 (not res!962827)) b!2253242))

(assert (= (and b!2253242 (not res!962823)) b!2253239))

(assert (= (and b!2253239 (not res!962822)) b!2253255))

(assert (= (and b!2253255 (not res!962824)) b!2253249))

(assert (= (and b!2253249 (not res!962815)) b!2253262))

(assert (= (and b!2253262 (not res!962826)) b!2253263))

(assert (= (and b!2253263 (not res!962810)) b!2253234))

(assert (= (and b!2253234 (not res!962809)) b!2253251))

(assert (= (and start!219880 ((_ is Cons!26698) input!1722)) b!2253252))

(assert (= b!2253261 b!2253258))

(assert (= start!219880 b!2253261))

(assert (= (and start!219880 ((_ is Cons!26698) suffix!886)) b!2253236))

(assert (= (and start!219880 ((_ is Cons!26698) otherP!12)) b!2253247))

(assert (= b!2253235 b!2253253))

(assert (= b!2253230 b!2253235))

(assert (= (and start!219880 ((_ is Cons!26700) rules!1750)) b!2253230))

(assert (= b!2253241 b!2253254))

(assert (= start!219880 b!2253241))

(assert (= b!2253244 b!2253250))

(assert (= b!2253243 b!2253244))

(assert (= b!2253260 b!2253243))

(assert (= (and start!219880 ((_ is Cons!26699) tokens!456)) b!2253260))

(declare-fun m!2683965 () Bool)

(assert (=> b!2253248 m!2683965))

(declare-fun m!2683967 () Bool)

(assert (=> b!2253242 m!2683967))

(declare-fun m!2683969 () Bool)

(assert (=> b!2253242 m!2683969))

(declare-fun m!2683971 () Bool)

(assert (=> b!2253241 m!2683971))

(declare-fun m!2683973 () Bool)

(assert (=> b!2253241 m!2683973))

(declare-fun m!2683975 () Bool)

(assert (=> b!2253251 m!2683975))

(declare-fun m!2683977 () Bool)

(assert (=> b!2253251 m!2683977))

(declare-fun m!2683979 () Bool)

(assert (=> b!2253264 m!2683979))

(declare-fun m!2683981 () Bool)

(assert (=> b!2253233 m!2683981))

(declare-fun m!2683983 () Bool)

(assert (=> b!2253246 m!2683983))

(declare-fun m!2683985 () Bool)

(assert (=> b!2253235 m!2683985))

(declare-fun m!2683987 () Bool)

(assert (=> b!2253235 m!2683987))

(assert (=> b!2253231 m!2683983))

(assert (=> b!2253231 m!2683983))

(declare-fun m!2683989 () Bool)

(assert (=> b!2253231 m!2683989))

(assert (=> b!2253231 m!2683989))

(declare-fun m!2683991 () Bool)

(assert (=> b!2253231 m!2683991))

(assert (=> b!2253231 m!2683991))

(declare-fun m!2683993 () Bool)

(assert (=> b!2253231 m!2683993))

(declare-fun m!2683995 () Bool)

(assert (=> b!2253239 m!2683995))

(declare-fun m!2683997 () Bool)

(assert (=> b!2253239 m!2683997))

(declare-fun m!2683999 () Bool)

(assert (=> b!2253239 m!2683999))

(declare-fun m!2684001 () Bool)

(assert (=> b!2253239 m!2684001))

(declare-fun m!2684003 () Bool)

(assert (=> b!2253239 m!2684003))

(assert (=> b!2253239 m!2683997))

(declare-fun m!2684005 () Bool)

(assert (=> b!2253239 m!2684005))

(declare-fun m!2684007 () Bool)

(assert (=> b!2253239 m!2684007))

(assert (=> b!2253239 m!2684001))

(declare-fun m!2684009 () Bool)

(assert (=> b!2253239 m!2684009))

(declare-fun m!2684011 () Bool)

(assert (=> b!2253239 m!2684011))

(declare-fun m!2684013 () Bool)

(assert (=> b!2253245 m!2684013))

(declare-fun m!2684015 () Bool)

(assert (=> b!2253255 m!2684015))

(declare-fun m!2684017 () Bool)

(assert (=> b!2253255 m!2684017))

(declare-fun m!2684019 () Bool)

(assert (=> b!2253260 m!2684019))

(declare-fun m!2684021 () Bool)

(assert (=> b!2253259 m!2684021))

(declare-fun m!2684023 () Bool)

(assert (=> b!2253259 m!2684023))

(declare-fun m!2684025 () Bool)

(assert (=> b!2253259 m!2684025))

(assert (=> b!2253259 m!2684025))

(declare-fun m!2684027 () Bool)

(assert (=> b!2253259 m!2684027))

(declare-fun m!2684029 () Bool)

(assert (=> b!2253240 m!2684029))

(declare-fun m!2684031 () Bool)

(assert (=> b!2253240 m!2684031))

(declare-fun m!2684033 () Bool)

(assert (=> b!2253240 m!2684033))

(declare-fun m!2684035 () Bool)

(assert (=> b!2253240 m!2684035))

(declare-fun m!2684037 () Bool)

(assert (=> b!2253263 m!2684037))

(assert (=> b!2253229 m!2683983))

(assert (=> b!2253229 m!2683983))

(assert (=> b!2253229 m!2683989))

(assert (=> b!2253229 m!2683989))

(declare-fun m!2684039 () Bool)

(assert (=> b!2253229 m!2684039))

(assert (=> b!2253229 m!2683999))

(declare-fun m!2684041 () Bool)

(assert (=> b!2253256 m!2684041))

(declare-fun m!2684043 () Bool)

(assert (=> b!2253262 m!2684043))

(declare-fun m!2684045 () Bool)

(assert (=> b!2253262 m!2684045))

(declare-fun m!2684047 () Bool)

(assert (=> b!2253262 m!2684047))

(declare-fun m!2684049 () Bool)

(assert (=> b!2253261 m!2684049))

(declare-fun m!2684051 () Bool)

(assert (=> b!2253261 m!2684051))

(declare-fun m!2684053 () Bool)

(assert (=> b!2253244 m!2684053))

(declare-fun m!2684055 () Bool)

(assert (=> b!2253244 m!2684055))

(declare-fun m!2684057 () Bool)

(assert (=> b!2253249 m!2684057))

(declare-fun m!2684059 () Bool)

(assert (=> b!2253243 m!2684059))

(declare-fun m!2684061 () Bool)

(assert (=> b!2253232 m!2684061))

(declare-fun m!2684063 () Bool)

(assert (=> b!2253238 m!2684063))

(declare-fun m!2684065 () Bool)

(assert (=> b!2253238 m!2684065))

(check-sat (not b!2253233) (not b!2253243) (not b!2253249) (not b!2253255) (not b_next!66803) (not b_next!66799) (not b!2253261) (not b_next!66801) (not b!2253238) (not b!2253248) (not b!2253247) (not b!2253260) b_and!176593 (not b!2253240) (not b!2253239) (not b_next!66805) b_and!176597 (not b!2253232) (not b!2253245) (not b!2253256) (not b!2253235) (not b!2253230) (not b_next!66809) b_and!176601 (not b!2253242) b_and!176603 (not b!2253259) (not b!2253241) (not b_next!66811) (not b!2253231) (not b!2253263) (not b!2253251) (not b!2253229) (not b!2253264) tp_is_empty!10387 (not b!2253246) b_and!176607 (not b!2253252) b_and!176595 (not b!2253236) b_and!176605 (not b!2253244) (not b_next!66797) (not b!2253262) (not b_next!66807) b_and!176599)
(check-sat b_and!176593 b_and!176603 (not b_next!66803) (not b_next!66811) (not b_next!66799) b_and!176607 b_and!176595 (not b_next!66801) (not b_next!66805) b_and!176597 (not b_next!66809) b_and!176601 b_and!176605 (not b_next!66797) (not b_next!66807) b_and!176599)
