; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49944 () Bool)

(assert start!49944)

(declare-fun b!541067 () Bool)

(declare-fun b_free!14945 () Bool)

(declare-fun b_next!14961 () Bool)

(assert (=> b!541067 (= b_free!14945 (not b_next!14961))))

(declare-fun tp!172318 () Bool)

(declare-fun b_and!52859 () Bool)

(assert (=> b!541067 (= tp!172318 b_and!52859)))

(declare-fun b_free!14947 () Bool)

(declare-fun b_next!14963 () Bool)

(assert (=> b!541067 (= b_free!14947 (not b_next!14963))))

(declare-fun tp!172322 () Bool)

(declare-fun b_and!52861 () Bool)

(assert (=> b!541067 (= tp!172322 b_and!52861)))

(declare-fun b!541077 () Bool)

(declare-fun b_free!14949 () Bool)

(declare-fun b_next!14965 () Bool)

(assert (=> b!541077 (= b_free!14949 (not b_next!14965))))

(declare-fun tp!172323 () Bool)

(declare-fun b_and!52863 () Bool)

(assert (=> b!541077 (= tp!172323 b_and!52863)))

(declare-fun b_free!14951 () Bool)

(declare-fun b_next!14967 () Bool)

(assert (=> b!541077 (= b_free!14951 (not b_next!14967))))

(declare-fun tp!172321 () Bool)

(declare-fun b_and!52865 () Bool)

(assert (=> b!541077 (= tp!172321 b_and!52865)))

(declare-fun b!541047 () Bool)

(declare-fun e!326740 () Bool)

(declare-fun tp_is_empty!2997 () Bool)

(declare-fun tp!172317 () Bool)

(assert (=> b!541047 (= e!326740 (and tp_is_empty!2997 tp!172317))))

(declare-fun b!541048 () Bool)

(declare-fun e!326747 () Bool)

(declare-fun e!326734 () Bool)

(assert (=> b!541048 (= e!326747 e!326734)))

(declare-fun res!230090 () Bool)

(assert (=> b!541048 (=> (not res!230090) (not e!326734))))

(declare-datatypes ((C!3564 0))(
  ( (C!3565 (val!2008 Int)) )
))
(declare-datatypes ((Regex!1321 0))(
  ( (ElementMatch!1321 (c!102424 C!3564)) (Concat!2332 (regOne!3154 Regex!1321) (regTwo!3154 Regex!1321)) (EmptyExpr!1321) (Star!1321 (reg!1650 Regex!1321)) (EmptyLang!1321) (Union!1321 (regOne!3155 Regex!1321) (regTwo!3155 Regex!1321)) )
))
(declare-datatypes ((List!5303 0))(
  ( (Nil!5293) (Cons!5293 (h!10694 (_ BitVec 16)) (t!74400 List!5303)) )
))
(declare-datatypes ((List!5304 0))(
  ( (Nil!5294) (Cons!5294 (h!10695 C!3564) (t!74401 List!5304)) )
))
(declare-datatypes ((IArray!3409 0))(
  ( (IArray!3410 (innerList!1762 List!5304)) )
))
(declare-datatypes ((Conc!1704 0))(
  ( (Node!1704 (left!4402 Conc!1704) (right!4732 Conc!1704) (csize!3638 Int) (cheight!1915 Int)) (Leaf!2705 (xs!4341 IArray!3409) (csize!3639 Int)) (Empty!1704) )
))
(declare-datatypes ((BalanceConc!3416 0))(
  ( (BalanceConc!3417 (c!102425 Conc!1704)) )
))
(declare-datatypes ((TokenValue!1011 0))(
  ( (FloatLiteralValue!2022 (text!7522 List!5303)) (TokenValueExt!1010 (__x!3920 Int)) (Broken!5055 (value!32970 List!5303)) (Object!1020) (End!1011) (Def!1011) (Underscore!1011) (Match!1011) (Else!1011) (Error!1011) (Case!1011) (If!1011) (Extends!1011) (Abstract!1011) (Class!1011) (Val!1011) (DelimiterValue!2022 (del!1071 List!5303)) (KeywordValue!1017 (value!32971 List!5303)) (CommentValue!2022 (value!32972 List!5303)) (WhitespaceValue!2022 (value!32973 List!5303)) (IndentationValue!1011 (value!32974 List!5303)) (String!6798) (Int32!1011) (Broken!5056 (value!32975 List!5303)) (Boolean!1012) (Unit!9250) (OperatorValue!1014 (op!1071 List!5303)) (IdentifierValue!2022 (value!32976 List!5303)) (IdentifierValue!2023 (value!32977 List!5303)) (WhitespaceValue!2023 (value!32978 List!5303)) (True!2022) (False!2022) (Broken!5057 (value!32979 List!5303)) (Broken!5058 (value!32980 List!5303)) (True!2023) (RightBrace!1011) (RightBracket!1011) (Colon!1011) (Null!1011) (Comma!1011) (LeftBracket!1011) (False!2023) (LeftBrace!1011) (ImaginaryLiteralValue!1011 (text!7523 List!5303)) (StringLiteralValue!3033 (value!32981 List!5303)) (EOFValue!1011 (value!32982 List!5303)) (IdentValue!1011 (value!32983 List!5303)) (DelimiterValue!2023 (value!32984 List!5303)) (DedentValue!1011 (value!32985 List!5303)) (NewLineValue!1011 (value!32986 List!5303)) (IntegerValue!3033 (value!32987 (_ BitVec 32)) (text!7524 List!5303)) (IntegerValue!3034 (value!32988 Int) (text!7525 List!5303)) (Times!1011) (Or!1011) (Equal!1011) (Minus!1011) (Broken!5059 (value!32989 List!5303)) (And!1011) (Div!1011) (LessEqual!1011) (Mod!1011) (Concat!2333) (Not!1011) (Plus!1011) (SpaceValue!1011 (value!32990 List!5303)) (IntegerValue!3035 (value!32991 Int) (text!7526 List!5303)) (StringLiteralValue!3034 (text!7527 List!5303)) (FloatLiteralValue!2023 (text!7528 List!5303)) (BytesLiteralValue!1011 (value!32992 List!5303)) (CommentValue!2023 (value!32993 List!5303)) (StringLiteralValue!3035 (value!32994 List!5303)) (ErrorTokenValue!1011 (msg!1072 List!5303)) )
))
(declare-datatypes ((String!6799 0))(
  ( (String!6800 (value!32995 String)) )
))
(declare-datatypes ((TokenValueInjection!1790 0))(
  ( (TokenValueInjection!1791 (toValue!1834 Int) (toChars!1693 Int)) )
))
(declare-datatypes ((Rule!1774 0))(
  ( (Rule!1775 (regex!987 Regex!1321) (tag!1249 String!6799) (isSeparator!987 Bool) (transformation!987 TokenValueInjection!1790)) )
))
(declare-datatypes ((Token!1710 0))(
  ( (Token!1711 (value!32996 TokenValue!1011) (rule!1697 Rule!1774) (size!4252 Int) (originalCharacters!1026 List!5304)) )
))
(declare-datatypes ((tuple2!6348 0))(
  ( (tuple2!6349 (_1!3438 Token!1710) (_2!3438 List!5304)) )
))
(declare-datatypes ((Option!1337 0))(
  ( (None!1336) (Some!1336 (v!16147 tuple2!6348)) )
))
(declare-fun lt!225331 () Option!1337)

(declare-fun isDefined!1149 (Option!1337) Bool)

(assert (=> b!541048 (= res!230090 (isDefined!1149 lt!225331))))

(declare-fun b!541049 () Bool)

(declare-fun e!326749 () Bool)

(declare-fun tp!172325 () Bool)

(assert (=> b!541049 (= e!326749 (and tp_is_empty!2997 tp!172325))))

(declare-fun b!541050 () Bool)

(declare-fun e!326735 () Bool)

(assert (=> b!541050 (= e!326735 e!326747)))

(declare-fun res!230106 () Bool)

(assert (=> b!541050 (=> res!230106 e!326747)))

(declare-fun lt!225317 () Int)

(declare-fun lt!225313 () Int)

(assert (=> b!541050 (= res!230106 (>= lt!225317 lt!225313))))

(declare-fun b!541051 () Bool)

(declare-fun e!326748 () Bool)

(declare-fun e!326754 () Bool)

(assert (=> b!541051 (= e!326748 e!326754)))

(declare-fun res!230113 () Bool)

(assert (=> b!541051 (=> res!230113 e!326754)))

(assert (=> b!541051 (= res!230113 (>= lt!225317 lt!225313))))

(assert (=> b!541051 e!326735))

(declare-fun res!230114 () Bool)

(assert (=> b!541051 (=> (not res!230114) (not e!326735))))

(declare-fun suffix!1342 () List!5304)

(declare-fun token!491 () Token!1710)

(declare-datatypes ((LexerInterface!873 0))(
  ( (LexerInterfaceExt!870 (__x!3921 Int)) (Lexer!871) )
))
(declare-fun thiss!22590 () LexerInterface!873)

(declare-fun lt!225323 () List!5304)

(declare-fun lt!225316 () TokenValue!1011)

(declare-fun lt!225326 () List!5304)

(declare-fun maxPrefixOneRule!286 (LexerInterface!873 Rule!1774 List!5304) Option!1337)

(assert (=> b!541051 (= res!230114 (= (maxPrefixOneRule!286 thiss!22590 (rule!1697 token!491) lt!225326) (Some!1336 (tuple2!6349 (Token!1711 lt!225316 (rule!1697 token!491) lt!225313 lt!225323) suffix!1342))))))

(declare-datatypes ((Unit!9251 0))(
  ( (Unit!9252) )
))
(declare-fun lt!225309 () Unit!9251)

(declare-datatypes ((List!5305 0))(
  ( (Nil!5295) (Cons!5295 (h!10696 Rule!1774) (t!74402 List!5305)) )
))
(declare-fun rules!3103 () List!5305)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!38 (LexerInterface!873 List!5305 List!5304 List!5304 List!5304 Rule!1774) Unit!9251)

(assert (=> b!541051 (= lt!225309 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!38 thiss!22590 rules!3103 lt!225323 lt!225326 suffix!1342 (rule!1697 token!491)))))

(declare-fun input!2705 () List!5304)

(declare-fun lt!225319 () TokenValue!1011)

(declare-fun lt!225312 () List!5304)

(assert (=> b!541051 (= (maxPrefixOneRule!286 thiss!22590 (rule!1697 (_1!3438 (v!16147 lt!225331))) input!2705) (Some!1336 (tuple2!6349 (Token!1711 lt!225319 (rule!1697 (_1!3438 (v!16147 lt!225331))) lt!225317 lt!225312) (_2!3438 (v!16147 lt!225331)))))))

(declare-fun lt!225310 () Unit!9251)

(assert (=> b!541051 (= lt!225310 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!38 thiss!22590 rules!3103 lt!225312 input!2705 (_2!3438 (v!16147 lt!225331)) (rule!1697 (_1!3438 (v!16147 lt!225331)))))))

(declare-fun e!326729 () Bool)

(assert (=> b!541051 e!326729))

(declare-fun res!230108 () Bool)

(assert (=> b!541051 (=> (not res!230108) (not e!326729))))

(assert (=> b!541051 (= res!230108 (= (value!32996 token!491) lt!225316))))

(declare-fun apply!1262 (TokenValueInjection!1790 BalanceConc!3416) TokenValue!1011)

(declare-fun seqFromList!1185 (List!5304) BalanceConc!3416)

(assert (=> b!541051 (= lt!225316 (apply!1262 (transformation!987 (rule!1697 token!491)) (seqFromList!1185 lt!225323)))))

(declare-fun lt!225302 () List!5304)

(assert (=> b!541051 (= suffix!1342 lt!225302)))

(declare-fun lt!225325 () Unit!9251)

(declare-fun lemmaSamePrefixThenSameSuffix!356 (List!5304 List!5304 List!5304 List!5304 List!5304) Unit!9251)

(assert (=> b!541051 (= lt!225325 (lemmaSamePrefixThenSameSuffix!356 lt!225323 suffix!1342 lt!225323 lt!225302 lt!225326))))

(declare-fun getSuffix!152 (List!5304 List!5304) List!5304)

(assert (=> b!541051 (= lt!225302 (getSuffix!152 lt!225326 lt!225323))))

(declare-fun b!541052 () Bool)

(declare-fun e!326737 () Bool)

(declare-fun e!326736 () Bool)

(declare-fun tp!172326 () Bool)

(assert (=> b!541052 (= e!326737 (and e!326736 tp!172326))))

(declare-fun b!541053 () Bool)

(declare-fun res!230110 () Bool)

(declare-fun e!326751 () Bool)

(assert (=> b!541053 (=> res!230110 e!326751)))

(declare-fun matchR!480 (Regex!1321 List!5304) Bool)

(assert (=> b!541053 (= res!230110 (not (matchR!480 (regex!987 (rule!1697 (_1!3438 (v!16147 lt!225331)))) lt!225312)))))

(declare-fun b!541054 () Bool)

(declare-fun res!230099 () Bool)

(assert (=> b!541054 (=> res!230099 e!326754)))

(assert (=> b!541054 (= res!230099 (not (matchR!480 (regex!987 (rule!1697 token!491)) input!2705)))))

(declare-fun b!541055 () Bool)

(declare-fun res!230088 () Bool)

(assert (=> b!541055 (=> res!230088 e!326754)))

(assert (=> b!541055 (= res!230088 (not (= (getSuffix!152 input!2705 input!2705) Nil!5294)))))

(declare-fun b!541056 () Bool)

(declare-fun res!230091 () Bool)

(assert (=> b!541056 (=> res!230091 e!326754)))

(declare-fun isPrefix!629 (List!5304 List!5304) Bool)

(assert (=> b!541056 (= res!230091 (not (isPrefix!629 lt!225312 input!2705)))))

(declare-fun b!541057 () Bool)

(declare-fun e!326744 () Bool)

(declare-fun e!326739 () Bool)

(assert (=> b!541057 (= e!326744 e!326739)))

(declare-fun res!230101 () Bool)

(assert (=> b!541057 (=> (not res!230101) (not e!326739))))

(declare-fun lt!225322 () List!5304)

(assert (=> b!541057 (= res!230101 (= lt!225322 lt!225326))))

(declare-fun ++!1475 (List!5304 List!5304) List!5304)

(assert (=> b!541057 (= lt!225322 (++!1475 lt!225323 suffix!1342))))

(declare-fun b!541058 () Bool)

(declare-fun e!326742 () Bool)

(assert (=> b!541058 (= e!326742 e!326744)))

(declare-fun res!230107 () Bool)

(assert (=> b!541058 (=> (not res!230107) (not e!326744))))

(get-info :version)

(assert (=> b!541058 (= res!230107 ((_ is Some!1336) lt!225331))))

(declare-fun maxPrefix!571 (LexerInterface!873 List!5305 List!5304) Option!1337)

(assert (=> b!541058 (= lt!225331 (maxPrefix!571 thiss!22590 rules!3103 input!2705))))

(declare-fun b!541059 () Bool)

(declare-fun res!230102 () Bool)

(assert (=> b!541059 (=> (not res!230102) (not e!326729))))

(declare-fun size!4253 (List!5304) Int)

(assert (=> b!541059 (= res!230102 (= (size!4252 token!491) (size!4253 (originalCharacters!1026 token!491))))))

(declare-fun b!541060 () Bool)

(declare-fun e!326741 () Bool)

(declare-fun e!326752 () Bool)

(assert (=> b!541060 (= e!326741 e!326752)))

(declare-fun res!230100 () Bool)

(assert (=> b!541060 (=> (not res!230100) (not e!326752))))

(declare-fun lt!225315 () Option!1337)

(assert (=> b!541060 (= res!230100 (isDefined!1149 lt!225315))))

(assert (=> b!541060 (= lt!225315 (maxPrefix!571 thiss!22590 rules!3103 lt!225326))))

(assert (=> b!541060 (= lt!225326 (++!1475 input!2705 suffix!1342))))

(declare-fun b!541061 () Bool)

(declare-fun get!1995 (Option!1337) tuple2!6348)

(assert (=> b!541061 (= e!326734 (= (_1!3438 (get!1995 lt!225331)) (_1!3438 (v!16147 lt!225331))))))

(declare-fun b!541062 () Bool)

(declare-fun e!326732 () Unit!9251)

(declare-fun Unit!9253 () Unit!9251)

(assert (=> b!541062 (= e!326732 Unit!9253)))

(assert (=> b!541062 false))

(declare-fun b!541063 () Bool)

(assert (=> b!541063 (= e!326729 (and (= (size!4252 token!491) lt!225313) (= (originalCharacters!1026 token!491) lt!225323) (= (tuple2!6349 token!491 suffix!1342) (tuple2!6349 (Token!1711 lt!225316 (rule!1697 token!491) lt!225313 lt!225323) lt!225302))))))

(declare-fun b!541064 () Bool)

(assert (=> b!541064 (= e!326751 true)))

(declare-fun lt!225318 () Int)

(assert (=> b!541064 (= lt!225318 (size!4253 input!2705))))

(declare-fun lt!225307 () Unit!9251)

(declare-fun lt!225304 () BalanceConc!3416)

(declare-fun lemmaSemiInverse!116 (TokenValueInjection!1790 BalanceConc!3416) Unit!9251)

(assert (=> b!541064 (= lt!225307 (lemmaSemiInverse!116 (transformation!987 (rule!1697 (_1!3438 (v!16147 lt!225331)))) lt!225304))))

(declare-fun b!541065 () Bool)

(declare-fun Unit!9254 () Unit!9251)

(assert (=> b!541065 (= e!326732 Unit!9254)))

(declare-fun b!541066 () Bool)

(declare-fun res!230104 () Bool)

(assert (=> b!541066 (=> res!230104 e!326754)))

(declare-fun contains!1231 (List!5305 Rule!1774) Bool)

(assert (=> b!541066 (= res!230104 (not (contains!1231 rules!3103 (rule!1697 token!491))))))

(declare-fun e!326731 () Bool)

(assert (=> b!541067 (= e!326731 (and tp!172318 tp!172322))))

(declare-fun b!541068 () Bool)

(assert (=> b!541068 (= e!326754 e!326751)))

(declare-fun res!230098 () Bool)

(assert (=> b!541068 (=> res!230098 e!326751)))

(assert (=> b!541068 (= res!230098 (not (contains!1231 rules!3103 (rule!1697 (_1!3438 (v!16147 lt!225331))))))))

(declare-fun lt!225311 () List!5304)

(assert (=> b!541068 (= lt!225311 (_2!3438 (v!16147 lt!225331)))))

(declare-fun b!541069 () Bool)

(declare-fun res!230094 () Bool)

(assert (=> b!541069 (=> res!230094 e!326754)))

(assert (=> b!541069 (= res!230094 (not (isPrefix!629 lt!225323 input!2705)))))

(declare-fun b!541070 () Bool)

(declare-fun tp!172319 () Bool)

(declare-fun e!326730 () Bool)

(declare-fun inv!6639 (String!6799) Bool)

(declare-fun inv!6642 (TokenValueInjection!1790) Bool)

(assert (=> b!541070 (= e!326730 (and tp!172319 (inv!6639 (tag!1249 (rule!1697 token!491))) (inv!6642 (transformation!987 (rule!1697 token!491))) e!326731))))

(declare-fun b!541071 () Bool)

(declare-fun res!230112 () Bool)

(assert (=> b!541071 (=> res!230112 e!326754)))

(declare-fun lt!225324 () List!5304)

(assert (=> b!541071 (= res!230112 (not (= lt!225324 input!2705)))))

(declare-fun b!541072 () Bool)

(declare-fun e!326753 () Bool)

(assert (=> b!541072 (= e!326753 e!326741)))

(declare-fun res!230093 () Bool)

(assert (=> b!541072 (=> (not res!230093) (not e!326741))))

(assert (=> b!541072 (= res!230093 (= lt!225323 input!2705))))

(declare-fun list!2197 (BalanceConc!3416) List!5304)

(declare-fun charsOf!616 (Token!1710) BalanceConc!3416)

(assert (=> b!541072 (= lt!225323 (list!2197 (charsOf!616 token!491)))))

(declare-fun e!326750 () Bool)

(declare-fun b!541073 () Bool)

(declare-fun lt!225300 () tuple2!6348)

(assert (=> b!541073 (= e!326750 (and (= (size!4252 (_1!3438 (v!16147 lt!225331))) lt!225317) (= (originalCharacters!1026 (_1!3438 (v!16147 lt!225331))) lt!225312) (= lt!225300 (tuple2!6349 (Token!1711 lt!225319 (rule!1697 (_1!3438 (v!16147 lt!225331))) lt!225317 lt!225312) lt!225311))))))

(declare-fun b!541074 () Bool)

(declare-fun res!230097 () Bool)

(assert (=> b!541074 (=> (not res!230097) (not e!326753))))

(declare-fun rulesInvariant!836 (LexerInterface!873 List!5305) Bool)

(assert (=> b!541074 (= res!230097 (rulesInvariant!836 thiss!22590 rules!3103))))

(declare-fun b!541075 () Bool)

(declare-fun e!326733 () Bool)

(declare-fun tp!172324 () Bool)

(assert (=> b!541075 (= e!326736 (and tp!172324 (inv!6639 (tag!1249 (h!10696 rules!3103))) (inv!6642 (transformation!987 (h!10696 rules!3103))) e!326733))))

(declare-fun res!230109 () Bool)

(assert (=> start!49944 (=> (not res!230109) (not e!326753))))

(assert (=> start!49944 (= res!230109 ((_ is Lexer!871) thiss!22590))))

(assert (=> start!49944 e!326753))

(assert (=> start!49944 e!326749))

(assert (=> start!49944 e!326737))

(declare-fun e!326745 () Bool)

(declare-fun inv!6643 (Token!1710) Bool)

(assert (=> start!49944 (and (inv!6643 token!491) e!326745)))

(assert (=> start!49944 true))

(assert (=> start!49944 e!326740))

(declare-fun b!541076 () Bool)

(declare-fun res!230111 () Bool)

(assert (=> b!541076 (=> res!230111 e!326754)))

(assert (=> b!541076 (= res!230111 (not (= (++!1475 lt!225312 lt!225311) input!2705)))))

(assert (=> b!541077 (= e!326733 (and tp!172323 tp!172321))))

(declare-fun b!541078 () Bool)

(declare-fun res!230103 () Bool)

(assert (=> b!541078 (=> (not res!230103) (not e!326750))))

(assert (=> b!541078 (= res!230103 (= (size!4252 (_1!3438 (v!16147 lt!225331))) (size!4253 (originalCharacters!1026 (_1!3438 (v!16147 lt!225331))))))))

(declare-fun b!541079 () Bool)

(declare-fun res!230105 () Bool)

(assert (=> b!541079 (=> (not res!230105) (not e!326753))))

(declare-fun isEmpty!3824 (List!5304) Bool)

(assert (=> b!541079 (= res!230105 (not (isEmpty!3824 input!2705)))))

(declare-fun b!541080 () Bool)

(declare-fun tp!172320 () Bool)

(declare-fun inv!21 (TokenValue!1011) Bool)

(assert (=> b!541080 (= e!326745 (and (inv!21 (value!32996 token!491)) e!326730 tp!172320))))

(declare-fun b!541081 () Bool)

(assert (=> b!541081 (= e!326739 (not e!326748))))

(declare-fun res!230092 () Bool)

(assert (=> b!541081 (=> res!230092 e!326748)))

(assert (=> b!541081 (= res!230092 (not (isPrefix!629 input!2705 lt!225322)))))

(assert (=> b!541081 (isPrefix!629 lt!225323 lt!225322)))

(declare-fun lt!225305 () Unit!9251)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!480 (List!5304 List!5304) Unit!9251)

(assert (=> b!541081 (= lt!225305 (lemmaConcatTwoListThenFirstIsPrefix!480 lt!225323 suffix!1342))))

(assert (=> b!541081 (isPrefix!629 input!2705 lt!225326)))

(declare-fun lt!225327 () Unit!9251)

(assert (=> b!541081 (= lt!225327 (lemmaConcatTwoListThenFirstIsPrefix!480 input!2705 suffix!1342))))

(assert (=> b!541081 e!326750))

(declare-fun res!230096 () Bool)

(assert (=> b!541081 (=> (not res!230096) (not e!326750))))

(assert (=> b!541081 (= res!230096 (= (value!32996 (_1!3438 (v!16147 lt!225331))) lt!225319))))

(assert (=> b!541081 (= lt!225319 (apply!1262 (transformation!987 (rule!1697 (_1!3438 (v!16147 lt!225331)))) lt!225304))))

(assert (=> b!541081 (= lt!225304 (seqFromList!1185 lt!225312))))

(declare-fun lt!225328 () Unit!9251)

(declare-fun lemmaInv!135 (TokenValueInjection!1790) Unit!9251)

(assert (=> b!541081 (= lt!225328 (lemmaInv!135 (transformation!987 (rule!1697 token!491))))))

(declare-fun lt!225320 () Unit!9251)

(assert (=> b!541081 (= lt!225320 (lemmaInv!135 (transformation!987 (rule!1697 (_1!3438 (v!16147 lt!225331))))))))

(declare-fun ruleValid!207 (LexerInterface!873 Rule!1774) Bool)

(assert (=> b!541081 (ruleValid!207 thiss!22590 (rule!1697 token!491))))

(declare-fun lt!225301 () Unit!9251)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!66 (LexerInterface!873 Rule!1774 List!5305) Unit!9251)

(assert (=> b!541081 (= lt!225301 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!66 thiss!22590 (rule!1697 token!491) rules!3103))))

(assert (=> b!541081 (ruleValid!207 thiss!22590 (rule!1697 (_1!3438 (v!16147 lt!225331))))))

(declare-fun lt!225314 () Unit!9251)

(assert (=> b!541081 (= lt!225314 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!66 thiss!22590 (rule!1697 (_1!3438 (v!16147 lt!225331))) rules!3103))))

(assert (=> b!541081 (isPrefix!629 input!2705 input!2705)))

(declare-fun lt!225308 () Unit!9251)

(declare-fun lemmaIsPrefixRefl!369 (List!5304 List!5304) Unit!9251)

(assert (=> b!541081 (= lt!225308 (lemmaIsPrefixRefl!369 input!2705 input!2705))))

(assert (=> b!541081 (= (_2!3438 (v!16147 lt!225331)) lt!225311)))

(declare-fun lt!225330 () Unit!9251)

(assert (=> b!541081 (= lt!225330 (lemmaSamePrefixThenSameSuffix!356 lt!225312 (_2!3438 (v!16147 lt!225331)) lt!225312 lt!225311 input!2705))))

(assert (=> b!541081 (= lt!225311 (getSuffix!152 input!2705 lt!225312))))

(assert (=> b!541081 (isPrefix!629 lt!225312 lt!225324)))

(assert (=> b!541081 (= lt!225324 (++!1475 lt!225312 (_2!3438 (v!16147 lt!225331))))))

(declare-fun lt!225321 () Unit!9251)

(assert (=> b!541081 (= lt!225321 (lemmaConcatTwoListThenFirstIsPrefix!480 lt!225312 (_2!3438 (v!16147 lt!225331))))))

(declare-fun lt!225329 () Unit!9251)

(declare-fun lemmaCharactersSize!66 (Token!1710) Unit!9251)

(assert (=> b!541081 (= lt!225329 (lemmaCharactersSize!66 token!491))))

(declare-fun lt!225306 () Unit!9251)

(assert (=> b!541081 (= lt!225306 (lemmaCharactersSize!66 (_1!3438 (v!16147 lt!225331))))))

(declare-fun lt!225333 () Unit!9251)

(assert (=> b!541081 (= lt!225333 e!326732)))

(declare-fun c!102423 () Bool)

(assert (=> b!541081 (= c!102423 (> lt!225317 lt!225313))))

(assert (=> b!541081 (= lt!225313 (size!4253 lt!225323))))

(assert (=> b!541081 (= lt!225317 (size!4253 lt!225312))))

(assert (=> b!541081 (= lt!225312 (list!2197 (charsOf!616 (_1!3438 (v!16147 lt!225331)))))))

(assert (=> b!541081 (= lt!225331 (Some!1336 lt!225300))))

(assert (=> b!541081 (= lt!225300 (tuple2!6349 (_1!3438 (v!16147 lt!225331)) (_2!3438 (v!16147 lt!225331))))))

(declare-fun lt!225303 () Unit!9251)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!72 (List!5304 List!5304 List!5304 List!5304) Unit!9251)

(assert (=> b!541081 (= lt!225303 (lemmaConcatSameAndSameSizesThenSameLists!72 lt!225323 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!541082 () Bool)

(assert (=> b!541082 (= e!326752 e!326742)))

(declare-fun res!230089 () Bool)

(assert (=> b!541082 (=> (not res!230089) (not e!326742))))

(declare-fun lt!225332 () tuple2!6348)

(assert (=> b!541082 (= res!230089 (and (= (_1!3438 lt!225332) token!491) (= (_2!3438 lt!225332) suffix!1342)))))

(assert (=> b!541082 (= lt!225332 (get!1995 lt!225315))))

(declare-fun b!541083 () Bool)

(declare-fun res!230095 () Bool)

(assert (=> b!541083 (=> (not res!230095) (not e!326753))))

(declare-fun isEmpty!3825 (List!5305) Bool)

(assert (=> b!541083 (= res!230095 (not (isEmpty!3825 rules!3103)))))

(assert (= (and start!49944 res!230109) b!541083))

(assert (= (and b!541083 res!230095) b!541074))

(assert (= (and b!541074 res!230097) b!541079))

(assert (= (and b!541079 res!230105) b!541072))

(assert (= (and b!541072 res!230093) b!541060))

(assert (= (and b!541060 res!230100) b!541082))

(assert (= (and b!541082 res!230089) b!541058))

(assert (= (and b!541058 res!230107) b!541057))

(assert (= (and b!541057 res!230101) b!541081))

(assert (= (and b!541081 c!102423) b!541062))

(assert (= (and b!541081 (not c!102423)) b!541065))

(assert (= (and b!541081 res!230096) b!541078))

(assert (= (and b!541078 res!230103) b!541073))

(assert (= (and b!541081 (not res!230092)) b!541051))

(assert (= (and b!541051 res!230108) b!541059))

(assert (= (and b!541059 res!230102) b!541063))

(assert (= (and b!541051 res!230114) b!541050))

(assert (= (and b!541050 (not res!230106)) b!541048))

(assert (= (and b!541048 res!230090) b!541061))

(assert (= (and b!541051 (not res!230113)) b!541066))

(assert (= (and b!541066 (not res!230104)) b!541054))

(assert (= (and b!541054 (not res!230099)) b!541069))

(assert (= (and b!541069 (not res!230094)) b!541055))

(assert (= (and b!541055 (not res!230088)) b!541071))

(assert (= (and b!541071 (not res!230112)) b!541056))

(assert (= (and b!541056 (not res!230091)) b!541076))

(assert (= (and b!541076 (not res!230111)) b!541068))

(assert (= (and b!541068 (not res!230098)) b!541053))

(assert (= (and b!541053 (not res!230110)) b!541064))

(assert (= (and start!49944 ((_ is Cons!5294) suffix!1342)) b!541049))

(assert (= b!541075 b!541077))

(assert (= b!541052 b!541075))

(assert (= (and start!49944 ((_ is Cons!5295) rules!3103)) b!541052))

(assert (= b!541070 b!541067))

(assert (= b!541080 b!541070))

(assert (= start!49944 b!541080))

(assert (= (and start!49944 ((_ is Cons!5294) input!2705)) b!541047))

(declare-fun m!788683 () Bool)

(assert (=> b!541081 m!788683))

(declare-fun m!788685 () Bool)

(assert (=> b!541081 m!788685))

(declare-fun m!788687 () Bool)

(assert (=> b!541081 m!788687))

(declare-fun m!788689 () Bool)

(assert (=> b!541081 m!788689))

(declare-fun m!788691 () Bool)

(assert (=> b!541081 m!788691))

(declare-fun m!788693 () Bool)

(assert (=> b!541081 m!788693))

(assert (=> b!541081 m!788683))

(declare-fun m!788695 () Bool)

(assert (=> b!541081 m!788695))

(declare-fun m!788697 () Bool)

(assert (=> b!541081 m!788697))

(declare-fun m!788699 () Bool)

(assert (=> b!541081 m!788699))

(declare-fun m!788701 () Bool)

(assert (=> b!541081 m!788701))

(declare-fun m!788703 () Bool)

(assert (=> b!541081 m!788703))

(declare-fun m!788705 () Bool)

(assert (=> b!541081 m!788705))

(declare-fun m!788707 () Bool)

(assert (=> b!541081 m!788707))

(declare-fun m!788709 () Bool)

(assert (=> b!541081 m!788709))

(declare-fun m!788711 () Bool)

(assert (=> b!541081 m!788711))

(declare-fun m!788713 () Bool)

(assert (=> b!541081 m!788713))

(declare-fun m!788715 () Bool)

(assert (=> b!541081 m!788715))

(declare-fun m!788717 () Bool)

(assert (=> b!541081 m!788717))

(declare-fun m!788719 () Bool)

(assert (=> b!541081 m!788719))

(declare-fun m!788721 () Bool)

(assert (=> b!541081 m!788721))

(declare-fun m!788723 () Bool)

(assert (=> b!541081 m!788723))

(declare-fun m!788725 () Bool)

(assert (=> b!541081 m!788725))

(declare-fun m!788727 () Bool)

(assert (=> b!541081 m!788727))

(declare-fun m!788729 () Bool)

(assert (=> b!541081 m!788729))

(declare-fun m!788731 () Bool)

(assert (=> b!541081 m!788731))

(declare-fun m!788733 () Bool)

(assert (=> b!541081 m!788733))

(declare-fun m!788735 () Bool)

(assert (=> b!541081 m!788735))

(declare-fun m!788737 () Bool)

(assert (=> b!541080 m!788737))

(declare-fun m!788739 () Bool)

(assert (=> b!541072 m!788739))

(assert (=> b!541072 m!788739))

(declare-fun m!788741 () Bool)

(assert (=> b!541072 m!788741))

(declare-fun m!788743 () Bool)

(assert (=> b!541082 m!788743))

(declare-fun m!788745 () Bool)

(assert (=> b!541074 m!788745))

(declare-fun m!788747 () Bool)

(assert (=> b!541079 m!788747))

(declare-fun m!788749 () Bool)

(assert (=> b!541053 m!788749))

(declare-fun m!788751 () Bool)

(assert (=> b!541048 m!788751))

(declare-fun m!788753 () Bool)

(assert (=> b!541059 m!788753))

(declare-fun m!788755 () Bool)

(assert (=> b!541057 m!788755))

(declare-fun m!788757 () Bool)

(assert (=> b!541061 m!788757))

(declare-fun m!788759 () Bool)

(assert (=> b!541069 m!788759))

(declare-fun m!788761 () Bool)

(assert (=> b!541075 m!788761))

(declare-fun m!788763 () Bool)

(assert (=> b!541075 m!788763))

(declare-fun m!788765 () Bool)

(assert (=> b!541051 m!788765))

(declare-fun m!788767 () Bool)

(assert (=> b!541051 m!788767))

(declare-fun m!788769 () Bool)

(assert (=> b!541051 m!788769))

(declare-fun m!788771 () Bool)

(assert (=> b!541051 m!788771))

(assert (=> b!541051 m!788769))

(declare-fun m!788773 () Bool)

(assert (=> b!541051 m!788773))

(declare-fun m!788775 () Bool)

(assert (=> b!541051 m!788775))

(declare-fun m!788777 () Bool)

(assert (=> b!541051 m!788777))

(declare-fun m!788779 () Bool)

(assert (=> b!541051 m!788779))

(declare-fun m!788781 () Bool)

(assert (=> b!541055 m!788781))

(declare-fun m!788783 () Bool)

(assert (=> b!541066 m!788783))

(declare-fun m!788785 () Bool)

(assert (=> b!541076 m!788785))

(declare-fun m!788787 () Bool)

(assert (=> b!541058 m!788787))

(declare-fun m!788789 () Bool)

(assert (=> b!541078 m!788789))

(declare-fun m!788791 () Bool)

(assert (=> b!541056 m!788791))

(declare-fun m!788793 () Bool)

(assert (=> b!541068 m!788793))

(declare-fun m!788795 () Bool)

(assert (=> b!541070 m!788795))

(declare-fun m!788797 () Bool)

(assert (=> b!541070 m!788797))

(declare-fun m!788799 () Bool)

(assert (=> start!49944 m!788799))

(declare-fun m!788801 () Bool)

(assert (=> b!541083 m!788801))

(declare-fun m!788803 () Bool)

(assert (=> b!541054 m!788803))

(declare-fun m!788805 () Bool)

(assert (=> b!541060 m!788805))

(declare-fun m!788807 () Bool)

(assert (=> b!541060 m!788807))

(declare-fun m!788809 () Bool)

(assert (=> b!541060 m!788809))

(declare-fun m!788811 () Bool)

(assert (=> b!541064 m!788811))

(declare-fun m!788813 () Bool)

(assert (=> b!541064 m!788813))

(check-sat b_and!52863 b_and!52861 (not b!541060) (not b!541066) (not b_next!14963) (not b!541055) b_and!52865 (not b!541052) (not b!541076) (not b_next!14967) (not start!49944) (not b!541081) (not b!541075) (not b_next!14961) (not b!541083) (not b!541072) (not b_next!14965) (not b!541056) (not b!541068) (not b!541053) (not b!541079) (not b!541061) (not b!541078) (not b!541069) (not b!541082) (not b!541070) (not b!541054) (not b!541064) tp_is_empty!2997 (not b!541049) b_and!52859 (not b!541048) (not b!541047) (not b!541057) (not b!541074) (not b!541058) (not b!541059) (not b!541051) (not b!541080))
(check-sat b_and!52863 b_and!52861 (not b_next!14961) (not b_next!14965) (not b_next!14963) b_and!52865 b_and!52859 (not b_next!14967))
