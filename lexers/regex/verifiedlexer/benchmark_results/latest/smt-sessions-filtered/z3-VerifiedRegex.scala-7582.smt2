; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!400266 () Bool)

(assert start!400266)

(declare-fun b!4192985 () Bool)

(declare-fun b_free!122135 () Bool)

(declare-fun b_next!122839 () Bool)

(assert (=> b!4192985 (= b_free!122135 (not b_next!122839))))

(declare-fun tp!1281119 () Bool)

(declare-fun b_and!328609 () Bool)

(assert (=> b!4192985 (= tp!1281119 b_and!328609)))

(declare-fun b_free!122137 () Bool)

(declare-fun b_next!122841 () Bool)

(assert (=> b!4192985 (= b_free!122137 (not b_next!122841))))

(declare-fun tp!1281113 () Bool)

(declare-fun b_and!328611 () Bool)

(assert (=> b!4192985 (= tp!1281113 b_and!328611)))

(declare-fun b!4192979 () Bool)

(declare-fun b_free!122139 () Bool)

(declare-fun b_next!122843 () Bool)

(assert (=> b!4192979 (= b_free!122139 (not b_next!122843))))

(declare-fun tp!1281121 () Bool)

(declare-fun b_and!328613 () Bool)

(assert (=> b!4192979 (= tp!1281121 b_and!328613)))

(declare-fun b_free!122141 () Bool)

(declare-fun b_next!122845 () Bool)

(assert (=> b!4192979 (= b_free!122141 (not b_next!122845))))

(declare-fun tp!1281112 () Bool)

(declare-fun b_and!328615 () Bool)

(assert (=> b!4192979 (= tp!1281112 b_and!328615)))

(declare-fun b!4192989 () Bool)

(declare-fun b_free!122143 () Bool)

(declare-fun b_next!122847 () Bool)

(assert (=> b!4192989 (= b_free!122143 (not b_next!122847))))

(declare-fun tp!1281117 () Bool)

(declare-fun b_and!328617 () Bool)

(assert (=> b!4192989 (= tp!1281117 b_and!328617)))

(declare-fun b_free!122145 () Bool)

(declare-fun b_next!122849 () Bool)

(assert (=> b!4192989 (= b_free!122145 (not b_next!122849))))

(declare-fun tp!1281118 () Bool)

(declare-fun b_and!328619 () Bool)

(assert (=> b!4192989 (= tp!1281118 b_and!328619)))

(declare-fun b!4192973 () Bool)

(declare-fun res!1721095 () Bool)

(declare-fun e!2602829 () Bool)

(assert (=> b!4192973 (=> res!1721095 e!2602829)))

(declare-datatypes ((C!25360 0))(
  ( (C!25361 (val!14842 Int)) )
))
(declare-datatypes ((List!46179 0))(
  ( (Nil!46055) (Cons!46055 (h!51475 C!25360) (t!346110 List!46179)) )
))
(declare-datatypes ((IArray!27787 0))(
  ( (IArray!27788 (innerList!13951 List!46179)) )
))
(declare-datatypes ((Conc!13891 0))(
  ( (Node!13891 (left!34309 Conc!13891) (right!34639 Conc!13891) (csize!28012 Int) (cheight!14102 Int)) (Leaf!21474 (xs!17197 IArray!27787) (csize!28013 Int)) (Empty!13891) )
))
(declare-datatypes ((BalanceConc!27376 0))(
  ( (BalanceConc!27377 (c!715304 Conc!13891)) )
))
(declare-fun lt!1493444 () BalanceConc!27376)

(declare-fun lt!1493435 () Int)

(declare-fun size!33843 (BalanceConc!27376) Int)

(assert (=> b!4192973 (= res!1721095 (< (size!33843 lt!1493444) lt!1493435))))

(declare-fun b!4192974 () Bool)

(declare-fun res!1721106 () Bool)

(assert (=> b!4192974 (=> res!1721106 e!2602829)))

(declare-fun lt!1493437 () List!46179)

(declare-fun size!33844 (List!46179) Int)

(assert (=> b!4192974 (= res!1721106 (not (= lt!1493435 (size!33844 lt!1493437))))))

(declare-fun b!4192975 () Bool)

(declare-fun res!1721098 () Bool)

(declare-fun e!2602836 () Bool)

(assert (=> b!4192975 (=> (not res!1721098) (not e!2602836))))

(declare-datatypes ((List!46180 0))(
  ( (Nil!46056) (Cons!46056 (h!51476 (_ BitVec 16)) (t!346111 List!46180)) )
))
(declare-datatypes ((TokenValue!7910 0))(
  ( (FloatLiteralValue!15820 (text!55815 List!46180)) (TokenValueExt!7909 (__x!28041 Int)) (Broken!39550 (value!239386 List!46180)) (Object!8033) (End!7910) (Def!7910) (Underscore!7910) (Match!7910) (Else!7910) (Error!7910) (Case!7910) (If!7910) (Extends!7910) (Abstract!7910) (Class!7910) (Val!7910) (DelimiterValue!15820 (del!7970 List!46180)) (KeywordValue!7916 (value!239387 List!46180)) (CommentValue!15820 (value!239388 List!46180)) (WhitespaceValue!15820 (value!239389 List!46180)) (IndentationValue!7910 (value!239390 List!46180)) (String!53415) (Int32!7910) (Broken!39551 (value!239391 List!46180)) (Boolean!7911) (Unit!65130) (OperatorValue!7913 (op!7970 List!46180)) (IdentifierValue!15820 (value!239392 List!46180)) (IdentifierValue!15821 (value!239393 List!46180)) (WhitespaceValue!15821 (value!239394 List!46180)) (True!15820) (False!15820) (Broken!39552 (value!239395 List!46180)) (Broken!39553 (value!239396 List!46180)) (True!15821) (RightBrace!7910) (RightBracket!7910) (Colon!7910) (Null!7910) (Comma!7910) (LeftBracket!7910) (False!15821) (LeftBrace!7910) (ImaginaryLiteralValue!7910 (text!55816 List!46180)) (StringLiteralValue!23730 (value!239397 List!46180)) (EOFValue!7910 (value!239398 List!46180)) (IdentValue!7910 (value!239399 List!46180)) (DelimiterValue!15821 (value!239400 List!46180)) (DedentValue!7910 (value!239401 List!46180)) (NewLineValue!7910 (value!239402 List!46180)) (IntegerValue!23730 (value!239403 (_ BitVec 32)) (text!55817 List!46180)) (IntegerValue!23731 (value!239404 Int) (text!55818 List!46180)) (Times!7910) (Or!7910) (Equal!7910) (Minus!7910) (Broken!39554 (value!239405 List!46180)) (And!7910) (Div!7910) (LessEqual!7910) (Mod!7910) (Concat!20495) (Not!7910) (Plus!7910) (SpaceValue!7910 (value!239406 List!46180)) (IntegerValue!23732 (value!239407 Int) (text!55819 List!46180)) (StringLiteralValue!23731 (text!55820 List!46180)) (FloatLiteralValue!15821 (text!55821 List!46180)) (BytesLiteralValue!7910 (value!239408 List!46180)) (CommentValue!15821 (value!239409 List!46180)) (StringLiteralValue!23732 (value!239410 List!46180)) (ErrorTokenValue!7910 (msg!7971 List!46180)) )
))
(declare-datatypes ((Regex!12585 0))(
  ( (ElementMatch!12585 (c!715305 C!25360)) (Concat!20496 (regOne!25682 Regex!12585) (regTwo!25682 Regex!12585)) (EmptyExpr!12585) (Star!12585 (reg!12914 Regex!12585)) (EmptyLang!12585) (Union!12585 (regOne!25683 Regex!12585) (regTwo!25683 Regex!12585)) )
))
(declare-datatypes ((String!53416 0))(
  ( (String!53417 (value!239411 String)) )
))
(declare-datatypes ((TokenValueInjection!15248 0))(
  ( (TokenValueInjection!15249 (toValue!10376 Int) (toChars!10235 Int)) )
))
(declare-datatypes ((Rule!15160 0))(
  ( (Rule!15161 (regex!7680 Regex!12585) (tag!8544 String!53416) (isSeparator!7680 Bool) (transformation!7680 TokenValueInjection!15248)) )
))
(declare-datatypes ((List!46181 0))(
  ( (Nil!46057) (Cons!46057 (h!51477 Rule!15160) (t!346112 List!46181)) )
))
(declare-fun rules!3843 () List!46181)

(declare-fun rBis!167 () Rule!15160)

(declare-fun contains!9489 (List!46181 Rule!15160) Bool)

(assert (=> b!4192975 (= res!1721098 (contains!9489 rules!3843 rBis!167))))

(declare-fun b!4192976 () Bool)

(declare-fun res!1721091 () Bool)

(assert (=> b!4192976 (=> (not res!1721091) (not e!2602836))))

(declare-fun pBis!107 () List!46179)

(declare-fun input!3342 () List!46179)

(declare-fun isPrefix!4537 (List!46179 List!46179) Bool)

(assert (=> b!4192976 (= res!1721091 (isPrefix!4537 pBis!107 input!3342))))

(declare-fun b!4192977 () Bool)

(declare-fun e!2602827 () Bool)

(declare-fun tp_is_empty!22133 () Bool)

(declare-fun tp!1281123 () Bool)

(assert (=> b!4192977 (= e!2602827 (and tp_is_empty!22133 tp!1281123))))

(declare-fun tp!1281115 () Bool)

(declare-fun e!2602842 () Bool)

(declare-fun b!4192978 () Bool)

(declare-fun e!2602834 () Bool)

(declare-fun inv!60604 (String!53416) Bool)

(declare-fun inv!60606 (TokenValueInjection!15248) Bool)

(assert (=> b!4192978 (= e!2602842 (and tp!1281115 (inv!60604 (tag!8544 rBis!167)) (inv!60606 (transformation!7680 rBis!167)) e!2602834))))

(declare-fun e!2602831 () Bool)

(assert (=> b!4192979 (= e!2602831 (and tp!1281121 tp!1281112))))

(declare-fun b!4192980 () Bool)

(declare-fun e!2602839 () Bool)

(declare-fun tp!1281122 () Bool)

(assert (=> b!4192980 (= e!2602839 (and tp_is_empty!22133 tp!1281122))))

(declare-fun b!4192981 () Bool)

(declare-fun res!1721099 () Bool)

(assert (=> b!4192981 (=> (not res!1721099) (not e!2602836))))

(declare-fun r!4142 () Rule!15160)

(declare-fun validRegex!5702 (Regex!12585) Bool)

(assert (=> b!4192981 (= res!1721099 (validRegex!5702 (regex!7680 r!4142)))))

(declare-fun b!4192982 () Bool)

(declare-fun e!2602832 () Bool)

(assert (=> b!4192982 (= e!2602832 e!2602829)))

(declare-fun res!1721103 () Bool)

(assert (=> b!4192982 (=> res!1721103 e!2602829)))

(assert (=> b!4192982 (= res!1721103 (= lt!1493437 pBis!107))))

(declare-datatypes ((Token!14074 0))(
  ( (Token!14075 (value!239412 TokenValue!7910) (rule!10768 Rule!15160) (size!33845 Int) (originalCharacters!8068 List!46179)) )
))
(declare-datatypes ((tuple2!43850 0))(
  ( (tuple2!43851 (_1!25059 Token!14074) (_2!25059 List!46179)) )
))
(declare-fun lt!1493438 () tuple2!43850)

(declare-fun ++!11752 (List!46179 List!46179) List!46179)

(assert (=> b!4192982 (isPrefix!4537 lt!1493437 (++!11752 lt!1493437 (_2!25059 lt!1493438)))))

(declare-datatypes ((Unit!65131 0))(
  ( (Unit!65132) )
))
(declare-fun lt!1493443 () Unit!65131)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3034 (List!46179 List!46179) Unit!65131)

(assert (=> b!4192982 (= lt!1493443 (lemmaConcatTwoListThenFirstIsPrefix!3034 lt!1493437 (_2!25059 lt!1493438)))))

(declare-fun list!16644 (BalanceConc!27376) List!46179)

(assert (=> b!4192982 (= lt!1493437 (list!16644 lt!1493444))))

(declare-fun charsOf!5115 (Token!14074) BalanceConc!27376)

(assert (=> b!4192982 (= lt!1493444 (charsOf!5115 (_1!25059 lt!1493438)))))

(declare-datatypes ((Option!9874 0))(
  ( (None!9873) (Some!9873 (v!40709 tuple2!43850)) )
))
(declare-fun lt!1493439 () Option!9874)

(declare-fun get!14979 (Option!9874) tuple2!43850)

(assert (=> b!4192982 (= lt!1493438 (get!14979 lt!1493439))))

(declare-fun b!4192983 () Bool)

(declare-fun e!2602837 () Bool)

(declare-fun e!2602840 () Bool)

(declare-fun tp!1281120 () Bool)

(assert (=> b!4192983 (= e!2602837 (and e!2602840 tp!1281120))))

(declare-fun tp!1281114 () Bool)

(declare-fun b!4192984 () Bool)

(assert (=> b!4192984 (= e!2602840 (and tp!1281114 (inv!60604 (tag!8544 (h!51477 rules!3843))) (inv!60606 (transformation!7680 (h!51477 rules!3843))) e!2602831))))

(declare-fun e!2602830 () Bool)

(assert (=> b!4192985 (= e!2602830 (and tp!1281119 tp!1281113))))

(declare-fun tp!1281124 () Bool)

(declare-fun b!4192986 () Bool)

(declare-fun e!2602828 () Bool)

(assert (=> b!4192986 (= e!2602828 (and tp!1281124 (inv!60604 (tag!8544 r!4142)) (inv!60606 (transformation!7680 r!4142)) e!2602830))))

(declare-fun b!4192987 () Bool)

(declare-fun res!1721097 () Bool)

(assert (=> b!4192987 (=> (not res!1721097) (not e!2602836))))

(declare-fun p!2959 () List!46179)

(assert (=> b!4192987 (= res!1721097 (isPrefix!4537 p!2959 input!3342))))

(declare-fun b!4192988 () Bool)

(declare-fun e!2602825 () Bool)

(declare-fun e!2602835 () Bool)

(assert (=> b!4192988 (= e!2602825 e!2602835)))

(declare-fun res!1721092 () Bool)

(assert (=> b!4192988 (=> res!1721092 e!2602835)))

(declare-fun lt!1493445 () Int)

(assert (=> b!4192988 (= res!1721092 (<= lt!1493435 lt!1493445))))

(assert (=> b!4192988 (= lt!1493435 (size!33844 pBis!107))))

(assert (=> b!4192989 (= e!2602834 (and tp!1281117 tp!1281118))))

(declare-fun b!4192990 () Bool)

(declare-fun res!1721096 () Bool)

(assert (=> b!4192990 (=> (not res!1721096) (not e!2602836))))

(declare-fun isEmpty!27270 (List!46181) Bool)

(assert (=> b!4192990 (= res!1721096 (not (isEmpty!27270 rules!3843)))))

(declare-fun b!4192991 () Bool)

(declare-fun res!1721100 () Bool)

(assert (=> b!4192991 (=> (not res!1721100) (not e!2602836))))

(declare-fun matchR!6324 (Regex!12585 List!46179) Bool)

(assert (=> b!4192991 (= res!1721100 (matchR!6324 (regex!7680 r!4142) p!2959))))

(declare-fun b!4192992 () Bool)

(declare-fun e!2602826 () Bool)

(declare-fun tp!1281116 () Bool)

(assert (=> b!4192992 (= e!2602826 (and tp_is_empty!22133 tp!1281116))))

(declare-fun res!1721108 () Bool)

(assert (=> start!400266 (=> (not res!1721108) (not e!2602836))))

(declare-datatypes ((LexerInterface!7273 0))(
  ( (LexerInterfaceExt!7270 (__x!28042 Int)) (Lexer!7271) )
))
(declare-fun thiss!25986 () LexerInterface!7273)

(get-info :version)

(assert (=> start!400266 (= res!1721108 ((_ is Lexer!7271) thiss!25986))))

(assert (=> start!400266 e!2602836))

(assert (=> start!400266 true))

(assert (=> start!400266 e!2602842))

(assert (=> start!400266 e!2602828))

(assert (=> start!400266 e!2602837))

(assert (=> start!400266 e!2602827))

(assert (=> start!400266 e!2602839))

(assert (=> start!400266 e!2602826))

(declare-fun b!4192993 () Bool)

(assert (=> b!4192993 (= e!2602829 false)))

(assert (=> b!4192993 (= pBis!107 lt!1493437)))

(declare-fun lt!1493432 () Unit!65131)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1001 (List!46179 List!46179 List!46179) Unit!65131)

(assert (=> b!4192993 (= lt!1493432 (lemmaIsPrefixSameLengthThenSameList!1001 pBis!107 lt!1493437 input!3342))))

(declare-fun b!4192994 () Bool)

(declare-fun res!1721104 () Bool)

(assert (=> b!4192994 (=> (not res!1721104) (not e!2602836))))

(assert (=> b!4192994 (= res!1721104 (contains!9489 rules!3843 r!4142))))

(declare-fun b!4192995 () Bool)

(declare-fun res!1721093 () Bool)

(assert (=> b!4192995 (=> (not res!1721093) (not e!2602836))))

(declare-fun rulesInvariant!6486 (LexerInterface!7273 List!46181) Bool)

(assert (=> b!4192995 (= res!1721093 (rulesInvariant!6486 thiss!25986 rules!3843))))

(declare-fun b!4192996 () Bool)

(declare-fun res!1721094 () Bool)

(assert (=> b!4192996 (=> (not res!1721094) (not e!2602836))))

(declare-fun ruleValid!3398 (LexerInterface!7273 Rule!15160) Bool)

(assert (=> b!4192996 (= res!1721094 (ruleValid!3398 thiss!25986 r!4142))))

(declare-fun b!4192997 () Bool)

(declare-fun res!1721105 () Bool)

(assert (=> b!4192997 (=> res!1721105 e!2602835)))

(assert (=> b!4192997 (= res!1721105 (not (ruleValid!3398 thiss!25986 rBis!167)))))

(declare-fun b!4192998 () Bool)

(declare-fun res!1721101 () Bool)

(assert (=> b!4192998 (=> res!1721101 e!2602835)))

(declare-fun lt!1493440 () Option!9874)

(declare-fun maxPrefix!4321 (LexerInterface!7273 List!46181 List!46179) Option!9874)

(assert (=> b!4192998 (= res!1721101 (not (= (maxPrefix!4321 thiss!25986 rules!3843 input!3342) lt!1493440)))))

(declare-fun b!4192999 () Bool)

(assert (=> b!4192999 (= e!2602836 (not e!2602825))))

(declare-fun res!1721102 () Bool)

(assert (=> b!4192999 (=> res!1721102 e!2602825)))

(declare-fun maxPrefixOneRule!3282 (LexerInterface!7273 Rule!15160 List!46179) Option!9874)

(assert (=> b!4192999 (= res!1721102 (not (= (maxPrefixOneRule!3282 thiss!25986 r!4142 input!3342) lt!1493440)))))

(declare-fun lt!1493446 () TokenValue!7910)

(declare-fun getSuffix!2830 (List!46179 List!46179) List!46179)

(assert (=> b!4192999 (= lt!1493440 (Some!9873 (tuple2!43851 (Token!14075 lt!1493446 r!4142 lt!1493445 p!2959) (getSuffix!2830 input!3342 p!2959))))))

(assert (=> b!4192999 (= lt!1493445 (size!33844 p!2959))))

(declare-fun lt!1493442 () BalanceConc!27376)

(declare-fun apply!10645 (TokenValueInjection!15248 BalanceConc!27376) TokenValue!7910)

(assert (=> b!4192999 (= lt!1493446 (apply!10645 (transformation!7680 r!4142) lt!1493442))))

(assert (=> b!4192999 (isPrefix!4537 input!3342 input!3342)))

(declare-fun lt!1493433 () Unit!65131)

(declare-fun lemmaIsPrefixRefl!2966 (List!46179 List!46179) Unit!65131)

(assert (=> b!4192999 (= lt!1493433 (lemmaIsPrefixRefl!2966 input!3342 input!3342))))

(declare-fun lt!1493434 () Unit!65131)

(declare-fun lemmaSemiInverse!2446 (TokenValueInjection!15248 BalanceConc!27376) Unit!65131)

(assert (=> b!4192999 (= lt!1493434 (lemmaSemiInverse!2446 (transformation!7680 r!4142) lt!1493442))))

(declare-fun seqFromList!5705 (List!46179) BalanceConc!27376)

(assert (=> b!4192999 (= lt!1493442 (seqFromList!5705 p!2959))))

(declare-fun b!4193000 () Bool)

(assert (=> b!4193000 (= e!2602835 e!2602832)))

(declare-fun res!1721107 () Bool)

(assert (=> b!4193000 (=> res!1721107 e!2602832)))

(declare-fun isEmpty!27271 (Option!9874) Bool)

(assert (=> b!4193000 (= res!1721107 (isEmpty!27271 lt!1493439))))

(assert (=> b!4193000 (= lt!1493439 (maxPrefixOneRule!3282 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1493436 () Unit!65131)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2404 (LexerInterface!7273 Rule!15160 List!46181) Unit!65131)

(assert (=> b!4193000 (= lt!1493436 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2404 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4193000 (<= lt!1493435 (size!33844 input!3342))))

(declare-fun lt!1493441 () Unit!65131)

(declare-fun lemmaIsPrefixThenSmallerEqSize!567 (List!46179 List!46179) Unit!65131)

(assert (=> b!4193000 (= lt!1493441 (lemmaIsPrefixThenSmallerEqSize!567 pBis!107 input!3342))))

(assert (= (and start!400266 res!1721108) b!4192987))

(assert (= (and b!4192987 res!1721097) b!4192976))

(assert (= (and b!4192976 res!1721091) b!4192990))

(assert (= (and b!4192990 res!1721096) b!4192995))

(assert (= (and b!4192995 res!1721093) b!4192994))

(assert (= (and b!4192994 res!1721104) b!4192975))

(assert (= (and b!4192975 res!1721098) b!4192981))

(assert (= (and b!4192981 res!1721099) b!4192991))

(assert (= (and b!4192991 res!1721100) b!4192996))

(assert (= (and b!4192996 res!1721094) b!4192999))

(assert (= (and b!4192999 (not res!1721102)) b!4192988))

(assert (= (and b!4192988 (not res!1721092)) b!4192997))

(assert (= (and b!4192997 (not res!1721105)) b!4192998))

(assert (= (and b!4192998 (not res!1721101)) b!4193000))

(assert (= (and b!4193000 (not res!1721107)) b!4192982))

(assert (= (and b!4192982 (not res!1721103)) b!4192973))

(assert (= (and b!4192973 (not res!1721095)) b!4192974))

(assert (= (and b!4192974 (not res!1721106)) b!4192993))

(assert (= b!4192978 b!4192989))

(assert (= start!400266 b!4192978))

(assert (= b!4192986 b!4192985))

(assert (= start!400266 b!4192986))

(assert (= b!4192984 b!4192979))

(assert (= b!4192983 b!4192984))

(assert (= (and start!400266 ((_ is Cons!46057) rules!3843)) b!4192983))

(assert (= (and start!400266 ((_ is Cons!46055) input!3342)) b!4192977))

(assert (= (and start!400266 ((_ is Cons!46055) pBis!107)) b!4192980))

(assert (= (and start!400266 ((_ is Cons!46055) p!2959)) b!4192992))

(declare-fun m!4781611 () Bool)

(assert (=> b!4192976 m!4781611))

(declare-fun m!4781613 () Bool)

(assert (=> b!4192999 m!4781613))

(declare-fun m!4781615 () Bool)

(assert (=> b!4192999 m!4781615))

(declare-fun m!4781617 () Bool)

(assert (=> b!4192999 m!4781617))

(declare-fun m!4781619 () Bool)

(assert (=> b!4192999 m!4781619))

(declare-fun m!4781621 () Bool)

(assert (=> b!4192999 m!4781621))

(declare-fun m!4781623 () Bool)

(assert (=> b!4192999 m!4781623))

(declare-fun m!4781625 () Bool)

(assert (=> b!4192999 m!4781625))

(declare-fun m!4781627 () Bool)

(assert (=> b!4192999 m!4781627))

(declare-fun m!4781629 () Bool)

(assert (=> b!4192993 m!4781629))

(declare-fun m!4781631 () Bool)

(assert (=> b!4192984 m!4781631))

(declare-fun m!4781633 () Bool)

(assert (=> b!4192984 m!4781633))

(declare-fun m!4781635 () Bool)

(assert (=> b!4192975 m!4781635))

(declare-fun m!4781637 () Bool)

(assert (=> b!4192986 m!4781637))

(declare-fun m!4781639 () Bool)

(assert (=> b!4192986 m!4781639))

(declare-fun m!4781641 () Bool)

(assert (=> b!4192974 m!4781641))

(declare-fun m!4781643 () Bool)

(assert (=> b!4192978 m!4781643))

(declare-fun m!4781645 () Bool)

(assert (=> b!4192978 m!4781645))

(declare-fun m!4781647 () Bool)

(assert (=> b!4192995 m!4781647))

(declare-fun m!4781649 () Bool)

(assert (=> b!4192990 m!4781649))

(declare-fun m!4781651 () Bool)

(assert (=> b!4192991 m!4781651))

(declare-fun m!4781653 () Bool)

(assert (=> b!4192981 m!4781653))

(declare-fun m!4781655 () Bool)

(assert (=> b!4192998 m!4781655))

(declare-fun m!4781657 () Bool)

(assert (=> b!4192987 m!4781657))

(declare-fun m!4781659 () Bool)

(assert (=> b!4193000 m!4781659))

(declare-fun m!4781661 () Bool)

(assert (=> b!4193000 m!4781661))

(declare-fun m!4781663 () Bool)

(assert (=> b!4193000 m!4781663))

(declare-fun m!4781665 () Bool)

(assert (=> b!4193000 m!4781665))

(declare-fun m!4781667 () Bool)

(assert (=> b!4193000 m!4781667))

(declare-fun m!4781669 () Bool)

(assert (=> b!4192982 m!4781669))

(declare-fun m!4781671 () Bool)

(assert (=> b!4192982 m!4781671))

(declare-fun m!4781673 () Bool)

(assert (=> b!4192982 m!4781673))

(declare-fun m!4781675 () Bool)

(assert (=> b!4192982 m!4781675))

(declare-fun m!4781677 () Bool)

(assert (=> b!4192982 m!4781677))

(assert (=> b!4192982 m!4781675))

(declare-fun m!4781679 () Bool)

(assert (=> b!4192982 m!4781679))

(declare-fun m!4781681 () Bool)

(assert (=> b!4192996 m!4781681))

(declare-fun m!4781683 () Bool)

(assert (=> b!4192988 m!4781683))

(declare-fun m!4781685 () Bool)

(assert (=> b!4192997 m!4781685))

(declare-fun m!4781687 () Bool)

(assert (=> b!4192994 m!4781687))

(declare-fun m!4781689 () Bool)

(assert (=> b!4192973 m!4781689))

(check-sat (not b!4192994) (not b!4192976) (not b!4192988) (not b!4192975) (not b!4193000) b_and!328611 (not b!4192987) (not b_next!122847) (not b!4192996) (not b_next!122839) (not b!4192995) (not b_next!122841) (not b!4192984) (not b!4192980) b_and!328617 (not b!4192982) (not b!4192991) (not b!4192999) (not b_next!122843) b_and!328615 (not b!4192998) b_and!328613 b_and!328619 (not b!4192978) (not b_next!122849) tp_is_empty!22133 (not b!4192986) (not b!4192997) (not b!4192977) (not b!4192973) (not b!4192990) (not b!4192974) (not b!4192983) (not b!4192992) (not b_next!122845) (not b!4192993) b_and!328609 (not b!4192981))
(check-sat b_and!328617 (not b_next!122843) b_and!328611 b_and!328615 (not b_next!122847) (not b_next!122839) (not b_next!122849) (not b_next!122841) (not b_next!122845) b_and!328609 b_and!328613 b_and!328619)
