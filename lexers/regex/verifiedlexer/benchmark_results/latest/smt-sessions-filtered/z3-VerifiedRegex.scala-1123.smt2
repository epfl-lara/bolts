; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58696 () Bool)

(assert start!58696)

(declare-fun b!613750 () Bool)

(declare-fun b_free!17501 () Bool)

(declare-fun b_next!17517 () Bool)

(assert (=> b!613750 (= b_free!17501 (not b_next!17517))))

(declare-fun tp!189693 () Bool)

(declare-fun b_and!60879 () Bool)

(assert (=> b!613750 (= tp!189693 b_and!60879)))

(declare-fun b_free!17503 () Bool)

(declare-fun b_next!17519 () Bool)

(assert (=> b!613750 (= b_free!17503 (not b_next!17519))))

(declare-fun tp!189696 () Bool)

(declare-fun b_and!60881 () Bool)

(assert (=> b!613750 (= tp!189696 b_and!60881)))

(declare-fun b!613759 () Bool)

(declare-fun b_free!17505 () Bool)

(declare-fun b_next!17521 () Bool)

(assert (=> b!613759 (= b_free!17505 (not b_next!17521))))

(declare-fun tp!189694 () Bool)

(declare-fun b_and!60883 () Bool)

(assert (=> b!613759 (= tp!189694 b_and!60883)))

(declare-fun b_free!17507 () Bool)

(declare-fun b_next!17523 () Bool)

(assert (=> b!613759 (= b_free!17507 (not b_next!17523))))

(declare-fun tp!189700 () Bool)

(declare-fun b_and!60885 () Bool)

(assert (=> b!613759 (= tp!189700 b_and!60885)))

(declare-fun b!613746 () Bool)

(declare-fun res!266929 () Bool)

(declare-fun e!372060 () Bool)

(assert (=> b!613746 (=> res!266929 e!372060)))

(declare-datatypes ((C!4056 0))(
  ( (C!4057 (val!2254 Int)) )
))
(declare-datatypes ((List!6149 0))(
  ( (Nil!6139) (Cons!6139 (h!11540 C!4056) (t!81268 List!6149)) )
))
(declare-fun lt!263326 () List!6149)

(declare-datatypes ((Regex!1567 0))(
  ( (ElementMatch!1567 (c!113419 C!4056)) (Concat!2824 (regOne!3646 Regex!1567) (regTwo!3646 Regex!1567)) (EmptyExpr!1567) (Star!1567 (reg!1896 Regex!1567)) (EmptyLang!1567) (Union!1567 (regOne!3647 Regex!1567) (regTwo!3647 Regex!1567)) )
))
(declare-datatypes ((List!6150 0))(
  ( (Nil!6140) (Cons!6140 (h!11541 (_ BitVec 16)) (t!81269 List!6150)) )
))
(declare-datatypes ((TokenValue!1257 0))(
  ( (FloatLiteralValue!2514 (text!9244 List!6150)) (TokenValueExt!1256 (__x!4412 Int)) (Broken!6285 (value!39981 List!6150)) (Object!1266) (End!1257) (Def!1257) (Underscore!1257) (Match!1257) (Else!1257) (Error!1257) (Case!1257) (If!1257) (Extends!1257) (Abstract!1257) (Class!1257) (Val!1257) (DelimiterValue!2514 (del!1317 List!6150)) (KeywordValue!1263 (value!39982 List!6150)) (CommentValue!2514 (value!39983 List!6150)) (WhitespaceValue!2514 (value!39984 List!6150)) (IndentationValue!1257 (value!39985 List!6150)) (String!8028) (Int32!1257) (Broken!6286 (value!39986 List!6150)) (Boolean!1258) (Unit!11271) (OperatorValue!1260 (op!1317 List!6150)) (IdentifierValue!2514 (value!39987 List!6150)) (IdentifierValue!2515 (value!39988 List!6150)) (WhitespaceValue!2515 (value!39989 List!6150)) (True!2514) (False!2514) (Broken!6287 (value!39990 List!6150)) (Broken!6288 (value!39991 List!6150)) (True!2515) (RightBrace!1257) (RightBracket!1257) (Colon!1257) (Null!1257) (Comma!1257) (LeftBracket!1257) (False!2515) (LeftBrace!1257) (ImaginaryLiteralValue!1257 (text!9245 List!6150)) (StringLiteralValue!3771 (value!39992 List!6150)) (EOFValue!1257 (value!39993 List!6150)) (IdentValue!1257 (value!39994 List!6150)) (DelimiterValue!2515 (value!39995 List!6150)) (DedentValue!1257 (value!39996 List!6150)) (NewLineValue!1257 (value!39997 List!6150)) (IntegerValue!3771 (value!39998 (_ BitVec 32)) (text!9246 List!6150)) (IntegerValue!3772 (value!39999 Int) (text!9247 List!6150)) (Times!1257) (Or!1257) (Equal!1257) (Minus!1257) (Broken!6289 (value!40000 List!6150)) (And!1257) (Div!1257) (LessEqual!1257) (Mod!1257) (Concat!2825) (Not!1257) (Plus!1257) (SpaceValue!1257 (value!40001 List!6150)) (IntegerValue!3773 (value!40002 Int) (text!9248 List!6150)) (StringLiteralValue!3772 (text!9249 List!6150)) (FloatLiteralValue!2515 (text!9250 List!6150)) (BytesLiteralValue!1257 (value!40003 List!6150)) (CommentValue!2515 (value!40004 List!6150)) (StringLiteralValue!3773 (value!40005 List!6150)) (ErrorTokenValue!1257 (msg!1318 List!6150)) )
))
(declare-datatypes ((String!8029 0))(
  ( (String!8030 (value!40006 String)) )
))
(declare-datatypes ((IArray!3901 0))(
  ( (IArray!3902 (innerList!2008 List!6149)) )
))
(declare-datatypes ((Conc!1950 0))(
  ( (Node!1950 (left!4911 Conc!1950) (right!5241 Conc!1950) (csize!4130 Int) (cheight!2161 Int)) (Leaf!3074 (xs!4587 IArray!3901) (csize!4131 Int)) (Empty!1950) )
))
(declare-datatypes ((BalanceConc!3908 0))(
  ( (BalanceConc!3909 (c!113420 Conc!1950)) )
))
(declare-datatypes ((TokenValueInjection!2282 0))(
  ( (TokenValueInjection!2283 (toValue!2144 Int) (toChars!2003 Int)) )
))
(declare-datatypes ((Rule!2266 0))(
  ( (Rule!2267 (regex!1233 Regex!1567) (tag!1495 String!8029) (isSeparator!1233 Bool) (transformation!1233 TokenValueInjection!2282)) )
))
(declare-datatypes ((Token!2202 0))(
  ( (Token!2203 (value!40007 TokenValue!1257) (rule!2025 Rule!2266) (size!4827 Int) (originalCharacters!1272 List!6149)) )
))
(declare-fun token!491 () Token!2202)

(declare-fun lt!263328 () List!6149)

(declare-datatypes ((tuple2!7002 0))(
  ( (tuple2!7003 (_1!3765 Token!2202) (_2!3765 List!6149)) )
))
(declare-datatypes ((Option!1584 0))(
  ( (None!1583) (Some!1583 (v!16494 tuple2!7002)) )
))
(declare-fun lt!263300 () Option!1584)

(assert (=> b!613746 (= res!266929 (or (not (= lt!263328 lt!263326)) (not (= (originalCharacters!1272 (_1!3765 (v!16494 lt!263300))) (originalCharacters!1272 token!491)))))))

(declare-fun b!613747 () Bool)

(declare-fun res!266922 () Bool)

(assert (=> b!613747 (=> res!266922 e!372060)))

(declare-datatypes ((List!6151 0))(
  ( (Nil!6141) (Cons!6141 (h!11542 Rule!2266) (t!81270 List!6151)) )
))
(declare-fun rules!3103 () List!6151)

(declare-fun contains!1451 (List!6151 Rule!2266) Bool)

(assert (=> b!613747 (= res!266922 (not (contains!1451 rules!3103 (rule!2025 token!491))))))

(declare-fun b!613748 () Bool)

(declare-datatypes ((Unit!11272 0))(
  ( (Unit!11273) )
))
(declare-fun e!372066 () Unit!11272)

(declare-fun Unit!11274 () Unit!11272)

(assert (=> b!613748 (= e!372066 Unit!11274)))

(declare-fun b!613749 () Bool)

(declare-fun e!372042 () Bool)

(assert (=> b!613749 (= e!372042 e!372060)))

(declare-fun res!266919 () Bool)

(assert (=> b!613749 (=> res!266919 e!372060)))

(declare-fun input!2705 () List!6149)

(declare-fun lt!263315 () List!6149)

(declare-fun lt!263323 () Int)

(declare-fun lt!263301 () Int)

(assert (=> b!613749 (= res!266919 (or (not (= lt!263323 lt!263301)) (not (= lt!263315 input!2705)) (not (= lt!263315 lt!263326))))))

(declare-fun lt!263310 () Unit!11272)

(declare-fun lt!263313 () BalanceConc!3908)

(declare-fun lemmaSemiInverse!263 (TokenValueInjection!2282 BalanceConc!3908) Unit!11272)

(assert (=> b!613749 (= lt!263310 (lemmaSemiInverse!263 (transformation!1233 (rule!2025 token!491)) lt!263313))))

(declare-fun lt!263324 () Unit!11272)

(declare-fun lt!263319 () BalanceConc!3908)

(assert (=> b!613749 (= lt!263324 (lemmaSemiInverse!263 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))) lt!263319))))

(declare-fun lt!263335 () Unit!11272)

(declare-fun e!372065 () Unit!11272)

(assert (=> b!613749 (= lt!263335 e!372065)))

(declare-fun c!113416 () Bool)

(assert (=> b!613749 (= c!113416 (< lt!263323 lt!263301))))

(declare-fun e!372051 () Bool)

(assert (=> b!613749 e!372051))

(declare-fun res!266932 () Bool)

(assert (=> b!613749 (=> (not res!266932) (not e!372051))))

(declare-fun lt!263306 () TokenValue!1257)

(declare-datatypes ((LexerInterface!1119 0))(
  ( (LexerInterfaceExt!1116 (__x!4413 Int)) (Lexer!1117) )
))
(declare-fun thiss!22590 () LexerInterface!1119)

(declare-fun lt!263332 () List!6149)

(declare-fun suffix!1342 () List!6149)

(declare-fun maxPrefixOneRule!480 (LexerInterface!1119 Rule!2266 List!6149) Option!1584)

(assert (=> b!613749 (= res!266932 (= (maxPrefixOneRule!480 thiss!22590 (rule!2025 token!491) lt!263332) (Some!1583 (tuple2!7003 (Token!2203 lt!263306 (rule!2025 token!491) lt!263301 lt!263326) suffix!1342))))))

(declare-fun lt!263331 () Unit!11272)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!186 (LexerInterface!1119 List!6151 List!6149 List!6149 List!6149 Rule!2266) Unit!11272)

(assert (=> b!613749 (= lt!263331 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!186 thiss!22590 rules!3103 lt!263326 lt!263332 suffix!1342 (rule!2025 token!491)))))

(declare-fun lt!263298 () TokenValue!1257)

(assert (=> b!613749 (= (maxPrefixOneRule!480 thiss!22590 (rule!2025 (_1!3765 (v!16494 lt!263300))) input!2705) (Some!1583 (tuple2!7003 (Token!2203 lt!263298 (rule!2025 (_1!3765 (v!16494 lt!263300))) lt!263323 lt!263328) (_2!3765 (v!16494 lt!263300)))))))

(declare-fun lt!263295 () Unit!11272)

(assert (=> b!613749 (= lt!263295 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!186 thiss!22590 rules!3103 lt!263328 input!2705 (_2!3765 (v!16494 lt!263300)) (rule!2025 (_1!3765 (v!16494 lt!263300)))))))

(declare-fun e!372064 () Bool)

(assert (=> b!613749 e!372064))

(declare-fun res!266944 () Bool)

(assert (=> b!613749 (=> (not res!266944) (not e!372064))))

(assert (=> b!613749 (= res!266944 (= (value!40007 token!491) lt!263306))))

(declare-fun apply!1486 (TokenValueInjection!2282 BalanceConc!3908) TokenValue!1257)

(assert (=> b!613749 (= lt!263306 (apply!1486 (transformation!1233 (rule!2025 token!491)) lt!263313))))

(declare-fun seqFromList!1409 (List!6149) BalanceConc!3908)

(assert (=> b!613749 (= lt!263313 (seqFromList!1409 lt!263326))))

(declare-fun lt!263314 () List!6149)

(assert (=> b!613749 (= suffix!1342 lt!263314)))

(declare-fun lt!263308 () Unit!11272)

(declare-fun lemmaSamePrefixThenSameSuffix!574 (List!6149 List!6149 List!6149 List!6149 List!6149) Unit!11272)

(assert (=> b!613749 (= lt!263308 (lemmaSamePrefixThenSameSuffix!574 lt!263326 suffix!1342 lt!263326 lt!263314 lt!263332))))

(declare-fun getSuffix!378 (List!6149 List!6149) List!6149)

(assert (=> b!613749 (= lt!263314 (getSuffix!378 lt!263332 lt!263326))))

(declare-fun e!372048 () Bool)

(assert (=> b!613750 (= e!372048 (and tp!189693 tp!189696))))

(declare-fun b!613751 () Bool)

(declare-fun res!266930 () Bool)

(declare-fun e!372052 () Bool)

(assert (=> b!613751 (=> (not res!266930) (not e!372052))))

(declare-fun isEmpty!4431 (List!6151) Bool)

(assert (=> b!613751 (= res!266930 (not (isEmpty!4431 rules!3103)))))

(declare-fun b!613752 () Bool)

(declare-fun e!372058 () Bool)

(assert (=> b!613752 (= e!372051 e!372058)))

(declare-fun res!266934 () Bool)

(assert (=> b!613752 (=> res!266934 e!372058)))

(assert (=> b!613752 (= res!266934 (>= lt!263323 lt!263301))))

(declare-fun b!613753 () Bool)

(declare-fun e!372068 () Bool)

(declare-fun e!372049 () Bool)

(assert (=> b!613753 (= e!372068 e!372049)))

(declare-fun res!266943 () Bool)

(assert (=> b!613753 (=> (not res!266943) (not e!372049))))

(declare-fun lt!263312 () Option!1584)

(declare-fun isDefined!1395 (Option!1584) Bool)

(assert (=> b!613753 (= res!266943 (isDefined!1395 lt!263312))))

(declare-fun maxPrefix!817 (LexerInterface!1119 List!6151 List!6149) Option!1584)

(assert (=> b!613753 (= lt!263312 (maxPrefix!817 thiss!22590 rules!3103 lt!263332))))

(declare-fun ++!1721 (List!6149 List!6149) List!6149)

(assert (=> b!613753 (= lt!263332 (++!1721 input!2705 suffix!1342))))

(declare-fun b!613754 () Bool)

(declare-fun e!372040 () Bool)

(assert (=> b!613754 (= e!372049 e!372040)))

(declare-fun res!266939 () Bool)

(assert (=> b!613754 (=> (not res!266939) (not e!372040))))

(declare-fun lt!263325 () tuple2!7002)

(assert (=> b!613754 (= res!266939 (and (= (_1!3765 lt!263325) token!491) (= (_2!3765 lt!263325) suffix!1342)))))

(declare-fun get!2364 (Option!1584) tuple2!7002)

(assert (=> b!613754 (= lt!263325 (get!2364 lt!263312))))

(declare-fun tp!189697 () Bool)

(declare-fun b!613755 () Bool)

(declare-fun e!372055 () Bool)

(declare-fun e!372053 () Bool)

(declare-fun inv!7813 (String!8029) Bool)

(declare-fun inv!7816 (TokenValueInjection!2282) Bool)

(assert (=> b!613755 (= e!372053 (and tp!189697 (inv!7813 (tag!1495 (rule!2025 token!491))) (inv!7816 (transformation!1233 (rule!2025 token!491))) e!372055))))

(declare-fun b!613756 () Bool)

(declare-fun res!266946 () Bool)

(assert (=> b!613756 (=> res!266946 e!372060)))

(declare-fun isEmpty!4432 (List!6149) Bool)

(assert (=> b!613756 (= res!266946 (not (isEmpty!4432 (_2!3765 (v!16494 lt!263300)))))))

(declare-fun b!613757 () Bool)

(declare-fun Unit!11275 () Unit!11272)

(assert (=> b!613757 (= e!372066 Unit!11275)))

(declare-fun lt!263309 () Unit!11272)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!36 (LexerInterface!1119 List!6151 Rule!2266 List!6149 List!6149 Rule!2266) Unit!11272)

(assert (=> b!613757 (= lt!263309 (lemmaMaxPrefNoSmallerRuleMatches!36 thiss!22590 rules!3103 (rule!2025 token!491) input!2705 lt!263332 (rule!2025 (_1!3765 (v!16494 lt!263300)))))))

(declare-fun res!266941 () Bool)

(declare-fun matchR!670 (Regex!1567 List!6149) Bool)

(assert (=> b!613757 (= res!266941 (not (matchR!670 (regex!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))) input!2705)))))

(declare-fun e!372063 () Bool)

(assert (=> b!613757 (=> (not res!266941) (not e!372063))))

(assert (=> b!613757 e!372063))

(declare-fun b!613758 () Bool)

(declare-fun res!266935 () Bool)

(assert (=> b!613758 (=> (not res!266935) (not e!372052))))

(assert (=> b!613758 (= res!266935 (not (isEmpty!4432 input!2705)))))

(assert (=> b!613759 (= e!372055 (and tp!189694 tp!189700))))

(declare-fun b!613760 () Bool)

(declare-fun e!372054 () Bool)

(declare-fun lt!263304 () List!6149)

(assert (=> b!613760 (= e!372054 (= lt!263304 (_2!3765 (v!16494 lt!263300))))))

(declare-fun b!613761 () Bool)

(assert (=> b!613761 (= e!372064 (and (= (size!4827 token!491) lt!263301) (= (originalCharacters!1272 token!491) lt!263326) (= (tuple2!7003 token!491 suffix!1342) (tuple2!7003 (Token!2203 lt!263306 (rule!2025 token!491) lt!263301 lt!263326) lt!263314))))))

(declare-fun b!613762 () Bool)

(declare-fun res!266924 () Bool)

(assert (=> b!613762 (=> (not res!266924) (not e!372052))))

(declare-fun rulesInvariant!1082 (LexerInterface!1119 List!6151) Bool)

(assert (=> b!613762 (= res!266924 (rulesInvariant!1082 thiss!22590 rules!3103))))

(declare-fun b!613763 () Bool)

(assert (=> b!613763 (= e!372052 e!372068)))

(declare-fun res!266937 () Bool)

(assert (=> b!613763 (=> (not res!266937) (not e!372068))))

(assert (=> b!613763 (= res!266937 (= lt!263326 input!2705))))

(declare-fun list!2584 (BalanceConc!3908) List!6149)

(declare-fun charsOf!862 (Token!2202) BalanceConc!3908)

(assert (=> b!613763 (= lt!263326 (list!2584 (charsOf!862 token!491)))))

(declare-fun b!613764 () Bool)

(declare-fun res!266936 () Bool)

(declare-fun e!372046 () Bool)

(assert (=> b!613764 (=> res!266936 e!372046)))

(assert (=> b!613764 (= res!266936 (not (matchR!670 (regex!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))) input!2705)))))

(declare-fun e!372056 () Bool)

(declare-fun b!613765 () Bool)

(declare-fun tp!189701 () Bool)

(assert (=> b!613765 (= e!372056 (and tp!189701 (inv!7813 (tag!1495 (h!11542 rules!3103))) (inv!7816 (transformation!1233 (h!11542 rules!3103))) e!372048))))

(declare-fun b!613766 () Bool)

(declare-fun e!372067 () Bool)

(assert (=> b!613766 (= e!372067 false)))

(declare-fun b!613767 () Bool)

(declare-fun e!372059 () Bool)

(declare-fun tp_is_empty!3489 () Bool)

(declare-fun tp!189698 () Bool)

(assert (=> b!613767 (= e!372059 (and tp_is_empty!3489 tp!189698))))

(declare-fun b!613768 () Bool)

(declare-fun e!372043 () Bool)

(declare-fun e!372044 () Bool)

(assert (=> b!613768 (= e!372043 e!372044)))

(declare-fun res!266931 () Bool)

(assert (=> b!613768 (=> (not res!266931) (not e!372044))))

(declare-fun lt!263320 () List!6149)

(assert (=> b!613768 (= res!266931 (= lt!263320 lt!263332))))

(assert (=> b!613768 (= lt!263320 (++!1721 lt!263326 suffix!1342))))

(declare-fun res!266921 () Bool)

(assert (=> start!58696 (=> (not res!266921) (not e!372052))))

(get-info :version)

(assert (=> start!58696 (= res!266921 ((_ is Lexer!1117) thiss!22590))))

(assert (=> start!58696 e!372052))

(assert (=> start!58696 e!372059))

(declare-fun e!372047 () Bool)

(assert (=> start!58696 e!372047))

(declare-fun e!372069 () Bool)

(declare-fun inv!7817 (Token!2202) Bool)

(assert (=> start!58696 (and (inv!7817 token!491) e!372069)))

(assert (=> start!58696 true))

(declare-fun e!372061 () Bool)

(assert (=> start!58696 e!372061))

(declare-fun b!613769 () Bool)

(declare-fun res!266926 () Bool)

(assert (=> b!613769 (=> (not res!266926) (not e!372054))))

(assert (=> b!613769 (= res!266926 (= (_1!3765 (get!2364 lt!263300)) (_1!3765 (v!16494 lt!263300))))))

(declare-fun tp!189695 () Bool)

(declare-fun b!613770 () Bool)

(declare-fun inv!21 (TokenValue!1257) Bool)

(assert (=> b!613770 (= e!372069 (and (inv!21 (value!40007 token!491)) e!372053 tp!189695))))

(declare-fun b!613771 () Bool)

(declare-fun tp!189699 () Bool)

(assert (=> b!613771 (= e!372047 (and e!372056 tp!189699))))

(declare-fun b!613772 () Bool)

(declare-fun Unit!11276 () Unit!11272)

(assert (=> b!613772 (= e!372065 Unit!11276)))

(declare-fun lt!263316 () Unit!11272)

(assert (=> b!613772 (= lt!263316 (lemmaSemiInverse!263 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))) lt!263319))))

(declare-fun lt!263333 () Unit!11272)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!86 (LexerInterface!1119 List!6151 Rule!2266 List!6149 List!6149 List!6149 Rule!2266) Unit!11272)

(assert (=> b!613772 (= lt!263333 (lemmaMaxPrefixOutputsMaxPrefix!86 thiss!22590 rules!3103 (rule!2025 (_1!3765 (v!16494 lt!263300))) lt!263328 input!2705 input!2705 (rule!2025 token!491)))))

(declare-fun res!266927 () Bool)

(assert (=> b!613772 (= res!266927 (not (matchR!670 (regex!1233 (rule!2025 token!491)) input!2705)))))

(assert (=> b!613772 (=> (not res!266927) (not e!372067))))

(assert (=> b!613772 e!372067))

(declare-fun b!613773 () Bool)

(assert (=> b!613773 (= e!372060 e!372046)))

(declare-fun res!266945 () Bool)

(assert (=> b!613773 (=> res!266945 e!372046)))

(declare-fun lt!263296 () Int)

(declare-fun lt!263305 () Int)

(assert (=> b!613773 (= res!266945 (<= lt!263296 lt!263305))))

(declare-fun lt!263303 () Unit!11272)

(assert (=> b!613773 (= lt!263303 e!372066)))

(declare-fun c!113418 () Bool)

(assert (=> b!613773 (= c!113418 (< lt!263296 lt!263305))))

(declare-fun getIndex!64 (List!6151 Rule!2266) Int)

(assert (=> b!613773 (= lt!263305 (getIndex!64 rules!3103 (rule!2025 token!491)))))

(assert (=> b!613773 (= lt!263296 (getIndex!64 rules!3103 (rule!2025 (_1!3765 (v!16494 lt!263300)))))))

(declare-fun b!613774 () Bool)

(declare-fun e!372045 () Unit!11272)

(declare-fun Unit!11277 () Unit!11272)

(assert (=> b!613774 (= e!372045 Unit!11277)))

(assert (=> b!613774 false))

(declare-fun b!613775 () Bool)

(assert (=> b!613775 (= e!372044 (not e!372042))))

(declare-fun res!266933 () Bool)

(assert (=> b!613775 (=> res!266933 e!372042)))

(declare-fun isPrefix!861 (List!6149 List!6149) Bool)

(assert (=> b!613775 (= res!266933 (not (isPrefix!861 input!2705 lt!263320)))))

(assert (=> b!613775 (isPrefix!861 lt!263326 lt!263320)))

(declare-fun lt!263330 () Unit!11272)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!706 (List!6149 List!6149) Unit!11272)

(assert (=> b!613775 (= lt!263330 (lemmaConcatTwoListThenFirstIsPrefix!706 lt!263326 suffix!1342))))

(assert (=> b!613775 (isPrefix!861 input!2705 lt!263332)))

(declare-fun lt!263329 () Unit!11272)

(assert (=> b!613775 (= lt!263329 (lemmaConcatTwoListThenFirstIsPrefix!706 input!2705 suffix!1342))))

(declare-fun e!372062 () Bool)

(assert (=> b!613775 e!372062))

(declare-fun res!266942 () Bool)

(assert (=> b!613775 (=> (not res!266942) (not e!372062))))

(assert (=> b!613775 (= res!266942 (= (value!40007 (_1!3765 (v!16494 lt!263300))) lt!263298))))

(assert (=> b!613775 (= lt!263298 (apply!1486 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))) lt!263319))))

(assert (=> b!613775 (= lt!263319 (seqFromList!1409 lt!263328))))

(declare-fun lt!263297 () Unit!11272)

(declare-fun lemmaInv!341 (TokenValueInjection!2282) Unit!11272)

(assert (=> b!613775 (= lt!263297 (lemmaInv!341 (transformation!1233 (rule!2025 token!491))))))

(declare-fun lt!263302 () Unit!11272)

(assert (=> b!613775 (= lt!263302 (lemmaInv!341 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300))))))))

(declare-fun ruleValid!431 (LexerInterface!1119 Rule!2266) Bool)

(assert (=> b!613775 (ruleValid!431 thiss!22590 (rule!2025 token!491))))

(declare-fun lt!263318 () Unit!11272)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!278 (LexerInterface!1119 Rule!2266 List!6151) Unit!11272)

(assert (=> b!613775 (= lt!263318 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!278 thiss!22590 (rule!2025 token!491) rules!3103))))

(assert (=> b!613775 (ruleValid!431 thiss!22590 (rule!2025 (_1!3765 (v!16494 lt!263300))))))

(declare-fun lt!263299 () Unit!11272)

(assert (=> b!613775 (= lt!263299 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!278 thiss!22590 (rule!2025 (_1!3765 (v!16494 lt!263300))) rules!3103))))

(assert (=> b!613775 (isPrefix!861 input!2705 input!2705)))

(declare-fun lt!263307 () Unit!11272)

(declare-fun lemmaIsPrefixRefl!597 (List!6149 List!6149) Unit!11272)

(assert (=> b!613775 (= lt!263307 (lemmaIsPrefixRefl!597 input!2705 input!2705))))

(assert (=> b!613775 (= (_2!3765 (v!16494 lt!263300)) lt!263304)))

(declare-fun lt!263311 () Unit!11272)

(assert (=> b!613775 (= lt!263311 (lemmaSamePrefixThenSameSuffix!574 lt!263328 (_2!3765 (v!16494 lt!263300)) lt!263328 lt!263304 input!2705))))

(assert (=> b!613775 (= lt!263304 (getSuffix!378 input!2705 lt!263328))))

(assert (=> b!613775 (isPrefix!861 lt!263328 lt!263315)))

(assert (=> b!613775 (= lt!263315 (++!1721 lt!263328 (_2!3765 (v!16494 lt!263300))))))

(declare-fun lt!263321 () Unit!11272)

(assert (=> b!613775 (= lt!263321 (lemmaConcatTwoListThenFirstIsPrefix!706 lt!263328 (_2!3765 (v!16494 lt!263300))))))

(declare-fun lt!263327 () Unit!11272)

(declare-fun lemmaCharactersSize!292 (Token!2202) Unit!11272)

(assert (=> b!613775 (= lt!263327 (lemmaCharactersSize!292 token!491))))

(declare-fun lt!263317 () Unit!11272)

(assert (=> b!613775 (= lt!263317 (lemmaCharactersSize!292 (_1!3765 (v!16494 lt!263300))))))

(declare-fun lt!263336 () Unit!11272)

(assert (=> b!613775 (= lt!263336 e!372045)))

(declare-fun c!113417 () Bool)

(assert (=> b!613775 (= c!113417 (> lt!263323 lt!263301))))

(declare-fun size!4828 (List!6149) Int)

(assert (=> b!613775 (= lt!263301 (size!4828 lt!263326))))

(assert (=> b!613775 (= lt!263323 (size!4828 lt!263328))))

(assert (=> b!613775 (= lt!263328 (list!2584 (charsOf!862 (_1!3765 (v!16494 lt!263300)))))))

(declare-fun lt!263334 () tuple2!7002)

(assert (=> b!613775 (= lt!263300 (Some!1583 lt!263334))))

(assert (=> b!613775 (= lt!263334 (tuple2!7003 (_1!3765 (v!16494 lt!263300)) (_2!3765 (v!16494 lt!263300))))))

(declare-fun lt!263294 () Unit!11272)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!306 (List!6149 List!6149 List!6149 List!6149) Unit!11272)

(assert (=> b!613775 (= lt!263294 (lemmaConcatSameAndSameSizesThenSameLists!306 lt!263326 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!613776 () Bool)

(assert (=> b!613776 (= e!372058 e!372054)))

(declare-fun res!266928 () Bool)

(assert (=> b!613776 (=> (not res!266928) (not e!372054))))

(assert (=> b!613776 (= res!266928 (isDefined!1395 lt!263300))))

(declare-fun b!613777 () Bool)

(assert (=> b!613777 (= e!372062 (and (= (size!4827 (_1!3765 (v!16494 lt!263300))) lt!263323) (= (originalCharacters!1272 (_1!3765 (v!16494 lt!263300))) lt!263328) (= lt!263334 (tuple2!7003 (Token!2203 lt!263298 (rule!2025 (_1!3765 (v!16494 lt!263300))) lt!263323 lt!263328) lt!263304))))))

(declare-fun b!613778 () Bool)

(declare-fun tp!189702 () Bool)

(assert (=> b!613778 (= e!372061 (and tp_is_empty!3489 tp!189702))))

(declare-fun b!613779 () Bool)

(declare-fun res!266925 () Bool)

(assert (=> b!613779 (=> (not res!266925) (not e!372064))))

(assert (=> b!613779 (= res!266925 (= (size!4827 token!491) (size!4828 (originalCharacters!1272 token!491))))))

(declare-fun b!613780 () Bool)

(assert (=> b!613780 (= e!372040 e!372043)))

(declare-fun res!266923 () Bool)

(assert (=> b!613780 (=> (not res!266923) (not e!372043))))

(assert (=> b!613780 (= res!266923 ((_ is Some!1583) lt!263300))))

(assert (=> b!613780 (= lt!263300 (maxPrefix!817 thiss!22590 rules!3103 input!2705))))

(declare-fun b!613781 () Bool)

(assert (=> b!613781 (= e!372046 false)))

(assert (=> b!613781 (not (matchR!670 (regex!1233 (rule!2025 token!491)) input!2705))))

(declare-fun lt!263322 () Unit!11272)

(assert (=> b!613781 (= lt!263322 (lemmaMaxPrefNoSmallerRuleMatches!36 thiss!22590 rules!3103 (rule!2025 (_1!3765 (v!16494 lt!263300))) input!2705 input!2705 (rule!2025 token!491)))))

(declare-fun b!613782 () Bool)

(declare-fun res!266938 () Bool)

(assert (=> b!613782 (=> res!266938 e!372060)))

(assert (=> b!613782 (= res!266938 (= (rule!2025 (_1!3765 (v!16494 lt!263300))) (rule!2025 token!491)))))

(declare-fun b!613783 () Bool)

(declare-fun Unit!11278 () Unit!11272)

(assert (=> b!613783 (= e!372065 Unit!11278)))

(declare-fun b!613784 () Bool)

(declare-fun Unit!11279 () Unit!11272)

(assert (=> b!613784 (= e!372045 Unit!11279)))

(declare-fun b!613785 () Bool)

(assert (=> b!613785 (= e!372063 false)))

(declare-fun b!613786 () Bool)

(declare-fun res!266920 () Bool)

(assert (=> b!613786 (=> (not res!266920) (not e!372062))))

(assert (=> b!613786 (= res!266920 (= (size!4827 (_1!3765 (v!16494 lt!263300))) (size!4828 (originalCharacters!1272 (_1!3765 (v!16494 lt!263300))))))))

(declare-fun b!613787 () Bool)

(declare-fun res!266940 () Bool)

(assert (=> b!613787 (=> res!266940 e!372060)))

(assert (=> b!613787 (= res!266940 (not (contains!1451 rules!3103 (rule!2025 (_1!3765 (v!16494 lt!263300))))))))

(assert (= (and start!58696 res!266921) b!613751))

(assert (= (and b!613751 res!266930) b!613762))

(assert (= (and b!613762 res!266924) b!613758))

(assert (= (and b!613758 res!266935) b!613763))

(assert (= (and b!613763 res!266937) b!613753))

(assert (= (and b!613753 res!266943) b!613754))

(assert (= (and b!613754 res!266939) b!613780))

(assert (= (and b!613780 res!266923) b!613768))

(assert (= (and b!613768 res!266931) b!613775))

(assert (= (and b!613775 c!113417) b!613774))

(assert (= (and b!613775 (not c!113417)) b!613784))

(assert (= (and b!613775 res!266942) b!613786))

(assert (= (and b!613786 res!266920) b!613777))

(assert (= (and b!613775 (not res!266933)) b!613749))

(assert (= (and b!613749 res!266944) b!613779))

(assert (= (and b!613779 res!266925) b!613761))

(assert (= (and b!613749 res!266932) b!613752))

(assert (= (and b!613752 (not res!266934)) b!613776))

(assert (= (and b!613776 res!266928) b!613769))

(assert (= (and b!613769 res!266926) b!613760))

(assert (= (and b!613749 c!113416) b!613772))

(assert (= (and b!613749 (not c!113416)) b!613783))

(assert (= (and b!613772 res!266927) b!613766))

(assert (= (and b!613749 (not res!266919)) b!613756))

(assert (= (and b!613756 (not res!266946)) b!613746))

(assert (= (and b!613746 (not res!266929)) b!613787))

(assert (= (and b!613787 (not res!266940)) b!613747))

(assert (= (and b!613747 (not res!266922)) b!613782))

(assert (= (and b!613782 (not res!266938)) b!613773))

(assert (= (and b!613773 c!113418) b!613757))

(assert (= (and b!613773 (not c!113418)) b!613748))

(assert (= (and b!613757 res!266941) b!613785))

(assert (= (and b!613773 (not res!266945)) b!613764))

(assert (= (and b!613764 (not res!266936)) b!613781))

(assert (= (and start!58696 ((_ is Cons!6139) suffix!1342)) b!613767))

(assert (= b!613765 b!613750))

(assert (= b!613771 b!613765))

(assert (= (and start!58696 ((_ is Cons!6141) rules!3103)) b!613771))

(assert (= b!613755 b!613759))

(assert (= b!613770 b!613755))

(assert (= start!58696 b!613770))

(assert (= (and start!58696 ((_ is Cons!6139) input!2705)) b!613778))

(declare-fun m!882373 () Bool)

(assert (=> b!613758 m!882373))

(declare-fun m!882375 () Bool)

(assert (=> b!613773 m!882375))

(declare-fun m!882377 () Bool)

(assert (=> b!613773 m!882377))

(declare-fun m!882379 () Bool)

(assert (=> b!613754 m!882379))

(declare-fun m!882381 () Bool)

(assert (=> b!613769 m!882381))

(declare-fun m!882383 () Bool)

(assert (=> b!613781 m!882383))

(declare-fun m!882385 () Bool)

(assert (=> b!613781 m!882385))

(declare-fun m!882387 () Bool)

(assert (=> b!613768 m!882387))

(declare-fun m!882389 () Bool)

(assert (=> b!613756 m!882389))

(declare-fun m!882391 () Bool)

(assert (=> b!613762 m!882391))

(declare-fun m!882393 () Bool)

(assert (=> b!613787 m!882393))

(declare-fun m!882395 () Bool)

(assert (=> b!613763 m!882395))

(assert (=> b!613763 m!882395))

(declare-fun m!882397 () Bool)

(assert (=> b!613763 m!882397))

(declare-fun m!882399 () Bool)

(assert (=> b!613749 m!882399))

(declare-fun m!882401 () Bool)

(assert (=> b!613749 m!882401))

(declare-fun m!882403 () Bool)

(assert (=> b!613749 m!882403))

(declare-fun m!882405 () Bool)

(assert (=> b!613749 m!882405))

(declare-fun m!882407 () Bool)

(assert (=> b!613749 m!882407))

(declare-fun m!882409 () Bool)

(assert (=> b!613749 m!882409))

(declare-fun m!882411 () Bool)

(assert (=> b!613749 m!882411))

(declare-fun m!882413 () Bool)

(assert (=> b!613749 m!882413))

(declare-fun m!882415 () Bool)

(assert (=> b!613749 m!882415))

(declare-fun m!882417 () Bool)

(assert (=> b!613749 m!882417))

(declare-fun m!882419 () Bool)

(assert (=> b!613764 m!882419))

(declare-fun m!882421 () Bool)

(assert (=> b!613775 m!882421))

(declare-fun m!882423 () Bool)

(assert (=> b!613775 m!882423))

(declare-fun m!882425 () Bool)

(assert (=> b!613775 m!882425))

(declare-fun m!882427 () Bool)

(assert (=> b!613775 m!882427))

(declare-fun m!882429 () Bool)

(assert (=> b!613775 m!882429))

(declare-fun m!882431 () Bool)

(assert (=> b!613775 m!882431))

(declare-fun m!882433 () Bool)

(assert (=> b!613775 m!882433))

(declare-fun m!882435 () Bool)

(assert (=> b!613775 m!882435))

(declare-fun m!882437 () Bool)

(assert (=> b!613775 m!882437))

(declare-fun m!882439 () Bool)

(assert (=> b!613775 m!882439))

(declare-fun m!882441 () Bool)

(assert (=> b!613775 m!882441))

(declare-fun m!882443 () Bool)

(assert (=> b!613775 m!882443))

(declare-fun m!882445 () Bool)

(assert (=> b!613775 m!882445))

(declare-fun m!882447 () Bool)

(assert (=> b!613775 m!882447))

(declare-fun m!882449 () Bool)

(assert (=> b!613775 m!882449))

(declare-fun m!882451 () Bool)

(assert (=> b!613775 m!882451))

(assert (=> b!613775 m!882435))

(declare-fun m!882453 () Bool)

(assert (=> b!613775 m!882453))

(declare-fun m!882455 () Bool)

(assert (=> b!613775 m!882455))

(declare-fun m!882457 () Bool)

(assert (=> b!613775 m!882457))

(declare-fun m!882459 () Bool)

(assert (=> b!613775 m!882459))

(declare-fun m!882461 () Bool)

(assert (=> b!613775 m!882461))

(declare-fun m!882463 () Bool)

(assert (=> b!613775 m!882463))

(declare-fun m!882465 () Bool)

(assert (=> b!613775 m!882465))

(declare-fun m!882467 () Bool)

(assert (=> b!613775 m!882467))

(declare-fun m!882469 () Bool)

(assert (=> b!613775 m!882469))

(declare-fun m!882471 () Bool)

(assert (=> b!613775 m!882471))

(declare-fun m!882473 () Bool)

(assert (=> b!613775 m!882473))

(declare-fun m!882475 () Bool)

(assert (=> b!613770 m!882475))

(declare-fun m!882477 () Bool)

(assert (=> b!613776 m!882477))

(declare-fun m!882479 () Bool)

(assert (=> start!58696 m!882479))

(declare-fun m!882481 () Bool)

(assert (=> b!613786 m!882481))

(declare-fun m!882483 () Bool)

(assert (=> b!613780 m!882483))

(assert (=> b!613772 m!882415))

(declare-fun m!882485 () Bool)

(assert (=> b!613772 m!882485))

(assert (=> b!613772 m!882383))

(declare-fun m!882487 () Bool)

(assert (=> b!613753 m!882487))

(declare-fun m!882489 () Bool)

(assert (=> b!613753 m!882489))

(declare-fun m!882491 () Bool)

(assert (=> b!613753 m!882491))

(declare-fun m!882493 () Bool)

(assert (=> b!613747 m!882493))

(declare-fun m!882495 () Bool)

(assert (=> b!613765 m!882495))

(declare-fun m!882497 () Bool)

(assert (=> b!613765 m!882497))

(declare-fun m!882499 () Bool)

(assert (=> b!613751 m!882499))

(declare-fun m!882501 () Bool)

(assert (=> b!613755 m!882501))

(declare-fun m!882503 () Bool)

(assert (=> b!613755 m!882503))

(declare-fun m!882505 () Bool)

(assert (=> b!613779 m!882505))

(declare-fun m!882507 () Bool)

(assert (=> b!613757 m!882507))

(assert (=> b!613757 m!882419))

(check-sat (not b_next!17523) (not b!613754) (not b!613757) (not b!613763) (not b!613747) (not b!613773) (not b!613764) (not b!613756) (not b!613781) b_and!60885 (not b!613765) (not b!613775) (not b!613755) (not b_next!17519) (not b_next!17517) (not b!613771) b_and!60881 b_and!60883 (not b!613749) (not b!613787) (not b!613786) (not b!613758) (not b!613768) (not start!58696) (not b!613753) b_and!60879 (not b!613772) (not b!613769) (not b!613751) (not b!613767) tp_is_empty!3489 (not b!613770) (not b!613778) (not b!613762) (not b!613779) (not b_next!17521) (not b!613780) (not b!613776))
(check-sat (not b_next!17523) b_and!60881 b_and!60883 b_and!60879 b_and!60885 (not b_next!17521) (not b_next!17519) (not b_next!17517))
(get-model)

(declare-fun d!216032 () Bool)

(declare-fun lt!263342 () Int)

(assert (=> d!216032 (>= lt!263342 0)))

(declare-fun e!372079 () Int)

(assert (=> d!216032 (= lt!263342 e!372079)))

(declare-fun c!113429 () Bool)

(assert (=> d!216032 (= c!113429 ((_ is Nil!6139) (originalCharacters!1272 (_1!3765 (v!16494 lt!263300)))))))

(assert (=> d!216032 (= (size!4828 (originalCharacters!1272 (_1!3765 (v!16494 lt!263300)))) lt!263342)))

(declare-fun b!613804 () Bool)

(assert (=> b!613804 (= e!372079 0)))

(declare-fun b!613805 () Bool)

(assert (=> b!613805 (= e!372079 (+ 1 (size!4828 (t!81268 (originalCharacters!1272 (_1!3765 (v!16494 lt!263300)))))))))

(assert (= (and d!216032 c!113429) b!613804))

(assert (= (and d!216032 (not c!113429)) b!613805))

(declare-fun m!882511 () Bool)

(assert (=> b!613805 m!882511))

(assert (=> b!613786 d!216032))

(declare-fun d!216038 () Bool)

(assert (=> d!216038 (= (inv!7813 (tag!1495 (h!11542 rules!3103))) (= (mod (str.len (value!40006 (tag!1495 (h!11542 rules!3103)))) 2) 0))))

(assert (=> b!613765 d!216038))

(declare-fun d!216042 () Bool)

(declare-fun res!266963 () Bool)

(declare-fun e!372096 () Bool)

(assert (=> d!216042 (=> (not res!266963) (not e!372096))))

(declare-fun semiInverseModEq!495 (Int Int) Bool)

(assert (=> d!216042 (= res!266963 (semiInverseModEq!495 (toChars!2003 (transformation!1233 (h!11542 rules!3103))) (toValue!2144 (transformation!1233 (h!11542 rules!3103)))))))

(assert (=> d!216042 (= (inv!7816 (transformation!1233 (h!11542 rules!3103))) e!372096)))

(declare-fun b!613830 () Bool)

(declare-fun equivClasses!478 (Int Int) Bool)

(assert (=> b!613830 (= e!372096 (equivClasses!478 (toChars!2003 (transformation!1233 (h!11542 rules!3103))) (toValue!2144 (transformation!1233 (h!11542 rules!3103)))))))

(assert (= (and d!216042 res!266963) b!613830))

(declare-fun m!882525 () Bool)

(assert (=> d!216042 m!882525))

(declare-fun m!882527 () Bool)

(assert (=> b!613830 m!882527))

(assert (=> b!613765 d!216042))

(declare-fun b!613871 () Bool)

(declare-fun e!372121 () Bool)

(declare-fun nullable!453 (Regex!1567) Bool)

(assert (=> b!613871 (= e!372121 (nullable!453 (regex!1233 (rule!2025 (_1!3765 (v!16494 lt!263300))))))))

(declare-fun b!613873 () Bool)

(declare-fun e!372119 () Bool)

(declare-fun e!372117 () Bool)

(assert (=> b!613873 (= e!372119 e!372117)))

(declare-fun res!266990 () Bool)

(assert (=> b!613873 (=> res!266990 e!372117)))

(declare-fun call!41000 () Bool)

(assert (=> b!613873 (= res!266990 call!41000)))

(declare-fun b!613874 () Bool)

(declare-fun res!266987 () Bool)

(declare-fun e!372122 () Bool)

(assert (=> b!613874 (=> res!266987 e!372122)))

(assert (=> b!613874 (= res!266987 (not ((_ is ElementMatch!1567) (regex!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))))))))

(declare-fun e!372118 () Bool)

(assert (=> b!613874 (= e!372118 e!372122)))

(declare-fun b!613875 () Bool)

(declare-fun res!266989 () Bool)

(declare-fun e!372120 () Bool)

(assert (=> b!613875 (=> (not res!266989) (not e!372120))))

(assert (=> b!613875 (= res!266989 (not call!41000))))

(declare-fun b!613876 () Bool)

(assert (=> b!613876 (= e!372122 e!372119)))

(declare-fun res!266988 () Bool)

(assert (=> b!613876 (=> (not res!266988) (not e!372119))))

(declare-fun lt!263349 () Bool)

(assert (=> b!613876 (= res!266988 (not lt!263349))))

(declare-fun b!613877 () Bool)

(declare-fun res!266993 () Bool)

(assert (=> b!613877 (=> res!266993 e!372117)))

(declare-fun tail!823 (List!6149) List!6149)

(assert (=> b!613877 (= res!266993 (not (isEmpty!4432 (tail!823 input!2705))))))

(declare-fun b!613878 () Bool)

(assert (=> b!613878 (= e!372118 (not lt!263349))))

(declare-fun bm!40995 () Bool)

(assert (=> bm!40995 (= call!41000 (isEmpty!4432 input!2705))))

(declare-fun b!613879 () Bool)

(declare-fun derivativeStep!337 (Regex!1567 C!4056) Regex!1567)

(declare-fun head!1294 (List!6149) C!4056)

(assert (=> b!613879 (= e!372121 (matchR!670 (derivativeStep!337 (regex!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))) (head!1294 input!2705)) (tail!823 input!2705)))))

(declare-fun b!613880 () Bool)

(assert (=> b!613880 (= e!372120 (= (head!1294 input!2705) (c!113419 (regex!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))))))))

(declare-fun b!613881 () Bool)

(assert (=> b!613881 (= e!372117 (not (= (head!1294 input!2705) (c!113419 (regex!1233 (rule!2025 (_1!3765 (v!16494 lt!263300))))))))))

(declare-fun b!613882 () Bool)

(declare-fun e!372123 () Bool)

(assert (=> b!613882 (= e!372123 (= lt!263349 call!41000))))

(declare-fun b!613883 () Bool)

(declare-fun res!266992 () Bool)

(assert (=> b!613883 (=> res!266992 e!372122)))

(assert (=> b!613883 (= res!266992 e!372120)))

(declare-fun res!266986 () Bool)

(assert (=> b!613883 (=> (not res!266986) (not e!372120))))

(assert (=> b!613883 (= res!266986 lt!263349)))

(declare-fun b!613884 () Bool)

(declare-fun res!266991 () Bool)

(assert (=> b!613884 (=> (not res!266991) (not e!372120))))

(assert (=> b!613884 (= res!266991 (isEmpty!4432 (tail!823 input!2705)))))

(declare-fun b!613872 () Bool)

(assert (=> b!613872 (= e!372123 e!372118)))

(declare-fun c!113447 () Bool)

(assert (=> b!613872 (= c!113447 ((_ is EmptyLang!1567) (regex!1233 (rule!2025 (_1!3765 (v!16494 lt!263300))))))))

(declare-fun d!216050 () Bool)

(assert (=> d!216050 e!372123))

(declare-fun c!113448 () Bool)

(assert (=> d!216050 (= c!113448 ((_ is EmptyExpr!1567) (regex!1233 (rule!2025 (_1!3765 (v!16494 lt!263300))))))))

(assert (=> d!216050 (= lt!263349 e!372121)))

(declare-fun c!113449 () Bool)

(assert (=> d!216050 (= c!113449 (isEmpty!4432 input!2705))))

(declare-fun validRegex!548 (Regex!1567) Bool)

(assert (=> d!216050 (validRegex!548 (regex!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))))))

(assert (=> d!216050 (= (matchR!670 (regex!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))) input!2705) lt!263349)))

(assert (= (and d!216050 c!113449) b!613871))

(assert (= (and d!216050 (not c!113449)) b!613879))

(assert (= (and d!216050 c!113448) b!613882))

(assert (= (and d!216050 (not c!113448)) b!613872))

(assert (= (and b!613872 c!113447) b!613878))

(assert (= (and b!613872 (not c!113447)) b!613874))

(assert (= (and b!613874 (not res!266987)) b!613883))

(assert (= (and b!613883 res!266986) b!613875))

(assert (= (and b!613875 res!266989) b!613884))

(assert (= (and b!613884 res!266991) b!613880))

(assert (= (and b!613883 (not res!266992)) b!613876))

(assert (= (and b!613876 res!266988) b!613873))

(assert (= (and b!613873 (not res!266990)) b!613877))

(assert (= (and b!613877 (not res!266993)) b!613881))

(assert (= (or b!613882 b!613873 b!613875) bm!40995))

(declare-fun m!882541 () Bool)

(assert (=> b!613879 m!882541))

(assert (=> b!613879 m!882541))

(declare-fun m!882543 () Bool)

(assert (=> b!613879 m!882543))

(declare-fun m!882545 () Bool)

(assert (=> b!613879 m!882545))

(assert (=> b!613879 m!882543))

(assert (=> b!613879 m!882545))

(declare-fun m!882547 () Bool)

(assert (=> b!613879 m!882547))

(assert (=> bm!40995 m!882373))

(assert (=> b!613884 m!882545))

(assert (=> b!613884 m!882545))

(declare-fun m!882549 () Bool)

(assert (=> b!613884 m!882549))

(assert (=> d!216050 m!882373))

(declare-fun m!882551 () Bool)

(assert (=> d!216050 m!882551))

(declare-fun m!882553 () Bool)

(assert (=> b!613871 m!882553))

(assert (=> b!613880 m!882541))

(assert (=> b!613877 m!882545))

(assert (=> b!613877 m!882545))

(assert (=> b!613877 m!882549))

(assert (=> b!613881 m!882541))

(assert (=> b!613764 d!216050))

(declare-fun d!216054 () Bool)

(declare-fun list!2586 (Conc!1950) List!6149)

(assert (=> d!216054 (= (list!2584 (charsOf!862 token!491)) (list!2586 (c!113420 (charsOf!862 token!491))))))

(declare-fun bs!71748 () Bool)

(assert (= bs!71748 d!216054))

(declare-fun m!882555 () Bool)

(assert (=> bs!71748 m!882555))

(assert (=> b!613763 d!216054))

(declare-fun d!216056 () Bool)

(declare-fun lt!263367 () BalanceConc!3908)

(assert (=> d!216056 (= (list!2584 lt!263367) (originalCharacters!1272 token!491))))

(declare-fun dynLambda!3562 (Int TokenValue!1257) BalanceConc!3908)

(assert (=> d!216056 (= lt!263367 (dynLambda!3562 (toChars!2003 (transformation!1233 (rule!2025 token!491))) (value!40007 token!491)))))

(assert (=> d!216056 (= (charsOf!862 token!491) lt!263367)))

(declare-fun b_lambda!24397 () Bool)

(assert (=> (not b_lambda!24397) (not d!216056)))

(declare-fun tb!53647 () Bool)

(declare-fun t!81272 () Bool)

(assert (=> (and b!613750 (= (toChars!2003 (transformation!1233 (h!11542 rules!3103))) (toChars!2003 (transformation!1233 (rule!2025 token!491)))) t!81272) tb!53647))

(declare-fun b!613919 () Bool)

(declare-fun e!372139 () Bool)

(declare-fun tp!189705 () Bool)

(declare-fun inv!7818 (Conc!1950) Bool)

(assert (=> b!613919 (= e!372139 (and (inv!7818 (c!113420 (dynLambda!3562 (toChars!2003 (transformation!1233 (rule!2025 token!491))) (value!40007 token!491)))) tp!189705))))

(declare-fun result!60390 () Bool)

(declare-fun inv!7819 (BalanceConc!3908) Bool)

(assert (=> tb!53647 (= result!60390 (and (inv!7819 (dynLambda!3562 (toChars!2003 (transformation!1233 (rule!2025 token!491))) (value!40007 token!491))) e!372139))))

(assert (= tb!53647 b!613919))

(declare-fun m!882595 () Bool)

(assert (=> b!613919 m!882595))

(declare-fun m!882597 () Bool)

(assert (=> tb!53647 m!882597))

(assert (=> d!216056 t!81272))

(declare-fun b_and!60891 () Bool)

(assert (= b_and!60881 (and (=> t!81272 result!60390) b_and!60891)))

(declare-fun t!81278 () Bool)

(declare-fun tb!53653 () Bool)

(assert (=> (and b!613759 (= (toChars!2003 (transformation!1233 (rule!2025 token!491))) (toChars!2003 (transformation!1233 (rule!2025 token!491)))) t!81278) tb!53653))

(declare-fun result!60400 () Bool)

(assert (= result!60400 result!60390))

(assert (=> d!216056 t!81278))

(declare-fun b_and!60893 () Bool)

(assert (= b_and!60885 (and (=> t!81278 result!60400) b_and!60893)))

(declare-fun m!882599 () Bool)

(assert (=> d!216056 m!882599))

(declare-fun m!882601 () Bool)

(assert (=> d!216056 m!882601))

(assert (=> b!613763 d!216056))

(declare-fun d!216066 () Bool)

(declare-fun res!267018 () Bool)

(declare-fun e!372142 () Bool)

(assert (=> d!216066 (=> (not res!267018) (not e!372142))))

(declare-fun rulesValid!457 (LexerInterface!1119 List!6151) Bool)

(assert (=> d!216066 (= res!267018 (rulesValid!457 thiss!22590 rules!3103))))

(assert (=> d!216066 (= (rulesInvariant!1082 thiss!22590 rules!3103) e!372142)))

(declare-fun b!613922 () Bool)

(declare-datatypes ((List!6152 0))(
  ( (Nil!6142) (Cons!6142 (h!11543 String!8029) (t!81343 List!6152)) )
))
(declare-fun noDuplicateTag!457 (LexerInterface!1119 List!6151 List!6152) Bool)

(assert (=> b!613922 (= e!372142 (noDuplicateTag!457 thiss!22590 rules!3103 Nil!6142))))

(assert (= (and d!216066 res!267018) b!613922))

(declare-fun m!882609 () Bool)

(assert (=> d!216066 m!882609))

(declare-fun m!882611 () Bool)

(assert (=> b!613922 m!882611))

(assert (=> b!613762 d!216066))

(declare-fun b!613961 () Bool)

(declare-fun res!267043 () Bool)

(declare-fun e!372167 () Bool)

(assert (=> b!613961 (=> res!267043 e!372167)))

(assert (=> b!613961 (= res!267043 (not ((_ is IntegerValue!3773) (value!40007 token!491))))))

(declare-fun e!372168 () Bool)

(assert (=> b!613961 (= e!372168 e!372167)))

(declare-fun b!613962 () Bool)

(declare-fun e!372169 () Bool)

(declare-fun inv!16 (TokenValue!1257) Bool)

(assert (=> b!613962 (= e!372169 (inv!16 (value!40007 token!491)))))

(declare-fun d!216074 () Bool)

(declare-fun c!113461 () Bool)

(assert (=> d!216074 (= c!113461 ((_ is IntegerValue!3771) (value!40007 token!491)))))

(assert (=> d!216074 (= (inv!21 (value!40007 token!491)) e!372169)))

(declare-fun b!613963 () Bool)

(assert (=> b!613963 (= e!372169 e!372168)))

(declare-fun c!113460 () Bool)

(assert (=> b!613963 (= c!113460 ((_ is IntegerValue!3772) (value!40007 token!491)))))

(declare-fun b!613964 () Bool)

(declare-fun inv!15 (TokenValue!1257) Bool)

(assert (=> b!613964 (= e!372167 (inv!15 (value!40007 token!491)))))

(declare-fun b!613965 () Bool)

(declare-fun inv!17 (TokenValue!1257) Bool)

(assert (=> b!613965 (= e!372168 (inv!17 (value!40007 token!491)))))

(assert (= (and d!216074 c!113461) b!613962))

(assert (= (and d!216074 (not c!113461)) b!613963))

(assert (= (and b!613963 c!113460) b!613965))

(assert (= (and b!613963 (not c!113460)) b!613961))

(assert (= (and b!613961 (not res!267043)) b!613964))

(declare-fun m!882643 () Bool)

(assert (=> b!613962 m!882643))

(declare-fun m!882645 () Bool)

(assert (=> b!613964 m!882645))

(declare-fun m!882647 () Bool)

(assert (=> b!613965 m!882647))

(assert (=> b!613770 d!216074))

(declare-fun d!216086 () Bool)

(assert (=> d!216086 (= suffix!1342 lt!263314)))

(declare-fun lt!263390 () Unit!11272)

(declare-fun choose!4514 (List!6149 List!6149 List!6149 List!6149 List!6149) Unit!11272)

(assert (=> d!216086 (= lt!263390 (choose!4514 lt!263326 suffix!1342 lt!263326 lt!263314 lt!263332))))

(assert (=> d!216086 (isPrefix!861 lt!263326 lt!263332)))

(assert (=> d!216086 (= (lemmaSamePrefixThenSameSuffix!574 lt!263326 suffix!1342 lt!263326 lt!263314 lt!263332) lt!263390)))

(declare-fun bs!71756 () Bool)

(assert (= bs!71756 d!216086))

(declare-fun m!882685 () Bool)

(assert (=> bs!71756 m!882685))

(declare-fun m!882687 () Bool)

(assert (=> bs!71756 m!882687))

(assert (=> b!613749 d!216086))

(declare-fun d!216102 () Bool)

(assert (=> d!216102 (= (maxPrefixOneRule!480 thiss!22590 (rule!2025 (_1!3765 (v!16494 lt!263300))) input!2705) (Some!1583 (tuple2!7003 (Token!2203 (apply!1486 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))) (seqFromList!1409 lt!263328)) (rule!2025 (_1!3765 (v!16494 lt!263300))) (size!4828 lt!263328) lt!263328) (_2!3765 (v!16494 lt!263300)))))))

(declare-fun lt!263411 () Unit!11272)

(declare-fun choose!4515 (LexerInterface!1119 List!6151 List!6149 List!6149 List!6149 Rule!2266) Unit!11272)

(assert (=> d!216102 (= lt!263411 (choose!4515 thiss!22590 rules!3103 lt!263328 input!2705 (_2!3765 (v!16494 lt!263300)) (rule!2025 (_1!3765 (v!16494 lt!263300)))))))

(assert (=> d!216102 (not (isEmpty!4431 rules!3103))))

(assert (=> d!216102 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!186 thiss!22590 rules!3103 lt!263328 input!2705 (_2!3765 (v!16494 lt!263300)) (rule!2025 (_1!3765 (v!16494 lt!263300)))) lt!263411)))

(declare-fun bs!71763 () Bool)

(assert (= bs!71763 d!216102))

(assert (=> bs!71763 m!882429))

(declare-fun m!882745 () Bool)

(assert (=> bs!71763 m!882745))

(assert (=> bs!71763 m!882459))

(assert (=> bs!71763 m!882429))

(assert (=> bs!71763 m!882399))

(assert (=> bs!71763 m!882499))

(declare-fun m!882747 () Bool)

(assert (=> bs!71763 m!882747))

(assert (=> b!613749 d!216102))

(declare-fun d!216136 () Bool)

(declare-fun dynLambda!3564 (Int BalanceConc!3908) TokenValue!1257)

(assert (=> d!216136 (= (apply!1486 (transformation!1233 (rule!2025 token!491)) lt!263313) (dynLambda!3564 (toValue!2144 (transformation!1233 (rule!2025 token!491))) lt!263313))))

(declare-fun b_lambda!24405 () Bool)

(assert (=> (not b_lambda!24405) (not d!216136)))

(declare-fun t!81288 () Bool)

(declare-fun tb!53663 () Bool)

(assert (=> (and b!613750 (= (toValue!2144 (transformation!1233 (h!11542 rules!3103))) (toValue!2144 (transformation!1233 (rule!2025 token!491)))) t!81288) tb!53663))

(declare-fun result!60412 () Bool)

(assert (=> tb!53663 (= result!60412 (inv!21 (dynLambda!3564 (toValue!2144 (transformation!1233 (rule!2025 token!491))) lt!263313)))))

(declare-fun m!882749 () Bool)

(assert (=> tb!53663 m!882749))

(assert (=> d!216136 t!81288))

(declare-fun b_and!60903 () Bool)

(assert (= b_and!60879 (and (=> t!81288 result!60412) b_and!60903)))

(declare-fun t!81290 () Bool)

(declare-fun tb!53665 () Bool)

(assert (=> (and b!613759 (= (toValue!2144 (transformation!1233 (rule!2025 token!491))) (toValue!2144 (transformation!1233 (rule!2025 token!491)))) t!81290) tb!53665))

(declare-fun result!60416 () Bool)

(assert (= result!60416 result!60412))

(assert (=> d!216136 t!81290))

(declare-fun b_and!60905 () Bool)

(assert (= b_and!60883 (and (=> t!81290 result!60416) b_and!60905)))

(declare-fun m!882751 () Bool)

(assert (=> d!216136 m!882751))

(assert (=> b!613749 d!216136))

(declare-fun b!614059 () Bool)

(declare-fun e!372225 () Bool)

(assert (=> b!614059 (= e!372225 true)))

(declare-fun d!216138 () Bool)

(assert (=> d!216138 e!372225))

(assert (= d!216138 b!614059))

(declare-fun order!4887 () Int)

(declare-fun order!4889 () Int)

(declare-fun lambda!16213 () Int)

(declare-fun dynLambda!3565 (Int Int) Int)

(declare-fun dynLambda!3566 (Int Int) Int)

(assert (=> b!614059 (< (dynLambda!3565 order!4887 (toValue!2144 (transformation!1233 (rule!2025 token!491)))) (dynLambda!3566 order!4889 lambda!16213))))

(declare-fun order!4891 () Int)

(declare-fun dynLambda!3567 (Int Int) Int)

(assert (=> b!614059 (< (dynLambda!3567 order!4891 (toChars!2003 (transformation!1233 (rule!2025 token!491)))) (dynLambda!3566 order!4889 lambda!16213))))

(assert (=> d!216138 (= (list!2584 (dynLambda!3562 (toChars!2003 (transformation!1233 (rule!2025 token!491))) (dynLambda!3564 (toValue!2144 (transformation!1233 (rule!2025 token!491))) lt!263313))) (list!2584 lt!263313))))

(declare-fun lt!263442 () Unit!11272)

(declare-fun ForallOf!129 (Int BalanceConc!3908) Unit!11272)

(assert (=> d!216138 (= lt!263442 (ForallOf!129 lambda!16213 lt!263313))))

(assert (=> d!216138 (= (lemmaSemiInverse!263 (transformation!1233 (rule!2025 token!491)) lt!263313) lt!263442)))

(declare-fun b_lambda!24409 () Bool)

(assert (=> (not b_lambda!24409) (not d!216138)))

(declare-fun tb!53671 () Bool)

(declare-fun t!81296 () Bool)

(assert (=> (and b!613750 (= (toChars!2003 (transformation!1233 (h!11542 rules!3103))) (toChars!2003 (transformation!1233 (rule!2025 token!491)))) t!81296) tb!53671))

(declare-fun e!372226 () Bool)

(declare-fun b!614060 () Bool)

(declare-fun tp!189710 () Bool)

(assert (=> b!614060 (= e!372226 (and (inv!7818 (c!113420 (dynLambda!3562 (toChars!2003 (transformation!1233 (rule!2025 token!491))) (dynLambda!3564 (toValue!2144 (transformation!1233 (rule!2025 token!491))) lt!263313)))) tp!189710))))

(declare-fun result!60422 () Bool)

(assert (=> tb!53671 (= result!60422 (and (inv!7819 (dynLambda!3562 (toChars!2003 (transformation!1233 (rule!2025 token!491))) (dynLambda!3564 (toValue!2144 (transformation!1233 (rule!2025 token!491))) lt!263313))) e!372226))))

(assert (= tb!53671 b!614060))

(declare-fun m!882857 () Bool)

(assert (=> b!614060 m!882857))

(declare-fun m!882859 () Bool)

(assert (=> tb!53671 m!882859))

(assert (=> d!216138 t!81296))

(declare-fun b_and!60911 () Bool)

(assert (= b_and!60891 (and (=> t!81296 result!60422) b_and!60911)))

(declare-fun t!81298 () Bool)

(declare-fun tb!53673 () Bool)

(assert (=> (and b!613759 (= (toChars!2003 (transformation!1233 (rule!2025 token!491))) (toChars!2003 (transformation!1233 (rule!2025 token!491)))) t!81298) tb!53673))

(declare-fun result!60424 () Bool)

(assert (= result!60424 result!60422))

(assert (=> d!216138 t!81298))

(declare-fun b_and!60913 () Bool)

(assert (= b_and!60893 (and (=> t!81298 result!60424) b_and!60913)))

(declare-fun b_lambda!24411 () Bool)

(assert (=> (not b_lambda!24411) (not d!216138)))

(assert (=> d!216138 t!81288))

(declare-fun b_and!60915 () Bool)

(assert (= b_and!60903 (and (=> t!81288 result!60412) b_and!60915)))

(assert (=> d!216138 t!81290))

(declare-fun b_and!60917 () Bool)

(assert (= b_and!60905 (and (=> t!81290 result!60416) b_and!60917)))

(declare-fun m!882861 () Bool)

(assert (=> d!216138 m!882861))

(declare-fun m!882863 () Bool)

(assert (=> d!216138 m!882863))

(declare-fun m!882865 () Bool)

(assert (=> d!216138 m!882865))

(declare-fun m!882867 () Bool)

(assert (=> d!216138 m!882867))

(assert (=> d!216138 m!882751))

(assert (=> d!216138 m!882751))

(assert (=> d!216138 m!882861))

(assert (=> b!613749 d!216138))

(declare-fun b!614162 () Bool)

(declare-fun e!372282 () Bool)

(declare-datatypes ((tuple2!7004 0))(
  ( (tuple2!7005 (_1!3766 List!6149) (_2!3766 List!6149)) )
))
(declare-fun findLongestMatchInner!211 (Regex!1567 List!6149 Int List!6149 List!6149 Int) tuple2!7004)

(assert (=> b!614162 (= e!372282 (matchR!670 (regex!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))) (_1!3766 (findLongestMatchInner!211 (regex!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))) Nil!6139 (size!4828 Nil!6139) input!2705 input!2705 (size!4828 input!2705)))))))

(declare-fun b!614163 () Bool)

(declare-fun e!372281 () Option!1584)

(declare-fun lt!263476 () tuple2!7004)

(declare-fun size!4829 (BalanceConc!3908) Int)

(assert (=> b!614163 (= e!372281 (Some!1583 (tuple2!7003 (Token!2203 (apply!1486 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))) (seqFromList!1409 (_1!3766 lt!263476))) (rule!2025 (_1!3765 (v!16494 lt!263300))) (size!4829 (seqFromList!1409 (_1!3766 lt!263476))) (_1!3766 lt!263476)) (_2!3766 lt!263476))))))

(declare-fun lt!263477 () Unit!11272)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!195 (Regex!1567 List!6149) Unit!11272)

(assert (=> b!614163 (= lt!263477 (longestMatchIsAcceptedByMatchOrIsEmpty!195 (regex!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))) input!2705))))

(declare-fun res!267162 () Bool)

(assert (=> b!614163 (= res!267162 (isEmpty!4432 (_1!3766 (findLongestMatchInner!211 (regex!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))) Nil!6139 (size!4828 Nil!6139) input!2705 input!2705 (size!4828 input!2705)))))))

(assert (=> b!614163 (=> res!267162 e!372282)))

(assert (=> b!614163 e!372282))

(declare-fun lt!263479 () Unit!11272)

(assert (=> b!614163 (= lt!263479 lt!263477)))

(declare-fun lt!263475 () Unit!11272)

(assert (=> b!614163 (= lt!263475 (lemmaSemiInverse!263 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))) (seqFromList!1409 (_1!3766 lt!263476))))))

(declare-fun b!614164 () Bool)

(declare-fun e!372280 () Bool)

(declare-fun e!372283 () Bool)

(assert (=> b!614164 (= e!372280 e!372283)))

(declare-fun res!267166 () Bool)

(assert (=> b!614164 (=> (not res!267166) (not e!372283))))

(declare-fun lt!263478 () Option!1584)

(assert (=> b!614164 (= res!267166 (matchR!670 (regex!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))) (list!2584 (charsOf!862 (_1!3765 (get!2364 lt!263478))))))))

(declare-fun d!216156 () Bool)

(assert (=> d!216156 e!372280))

(declare-fun res!267164 () Bool)

(assert (=> d!216156 (=> res!267164 e!372280)))

(declare-fun isEmpty!4434 (Option!1584) Bool)

(assert (=> d!216156 (= res!267164 (isEmpty!4434 lt!263478))))

(assert (=> d!216156 (= lt!263478 e!372281)))

(declare-fun c!113492 () Bool)

(assert (=> d!216156 (= c!113492 (isEmpty!4432 (_1!3766 lt!263476)))))

(declare-fun findLongestMatch!190 (Regex!1567 List!6149) tuple2!7004)

(assert (=> d!216156 (= lt!263476 (findLongestMatch!190 (regex!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))) input!2705))))

(assert (=> d!216156 (ruleValid!431 thiss!22590 (rule!2025 (_1!3765 (v!16494 lt!263300))))))

(assert (=> d!216156 (= (maxPrefixOneRule!480 thiss!22590 (rule!2025 (_1!3765 (v!16494 lt!263300))) input!2705) lt!263478)))

(declare-fun b!614165 () Bool)

(declare-fun res!267163 () Bool)

(assert (=> b!614165 (=> (not res!267163) (not e!372283))))

(assert (=> b!614165 (= res!267163 (< (size!4828 (_2!3765 (get!2364 lt!263478))) (size!4828 input!2705)))))

(declare-fun b!614166 () Bool)

(declare-fun res!267167 () Bool)

(assert (=> b!614166 (=> (not res!267167) (not e!372283))))

(assert (=> b!614166 (= res!267167 (= (value!40007 (_1!3765 (get!2364 lt!263478))) (apply!1486 (transformation!1233 (rule!2025 (_1!3765 (get!2364 lt!263478)))) (seqFromList!1409 (originalCharacters!1272 (_1!3765 (get!2364 lt!263478)))))))))

(declare-fun b!614167 () Bool)

(assert (=> b!614167 (= e!372283 (= (size!4827 (_1!3765 (get!2364 lt!263478))) (size!4828 (originalCharacters!1272 (_1!3765 (get!2364 lt!263478))))))))

(declare-fun b!614168 () Bool)

(declare-fun res!267168 () Bool)

(assert (=> b!614168 (=> (not res!267168) (not e!372283))))

(assert (=> b!614168 (= res!267168 (= (rule!2025 (_1!3765 (get!2364 lt!263478))) (rule!2025 (_1!3765 (v!16494 lt!263300)))))))

(declare-fun b!614169 () Bool)

(assert (=> b!614169 (= e!372281 None!1583)))

(declare-fun b!614170 () Bool)

(declare-fun res!267165 () Bool)

(assert (=> b!614170 (=> (not res!267165) (not e!372283))))

(assert (=> b!614170 (= res!267165 (= (++!1721 (list!2584 (charsOf!862 (_1!3765 (get!2364 lt!263478)))) (_2!3765 (get!2364 lt!263478))) input!2705))))

(assert (= (and d!216156 c!113492) b!614169))

(assert (= (and d!216156 (not c!113492)) b!614163))

(assert (= (and b!614163 (not res!267162)) b!614162))

(assert (= (and d!216156 (not res!267164)) b!614164))

(assert (= (and b!614164 res!267166) b!614170))

(assert (= (and b!614170 res!267165) b!614165))

(assert (= (and b!614165 res!267163) b!614168))

(assert (= (and b!614168 res!267168) b!614166))

(assert (= (and b!614166 res!267167) b!614167))

(declare-fun m!882959 () Bool)

(assert (=> b!614163 m!882959))

(declare-fun m!882961 () Bool)

(assert (=> b!614163 m!882961))

(declare-fun m!882963 () Bool)

(assert (=> b!614163 m!882963))

(assert (=> b!614163 m!882959))

(declare-fun m!882965 () Bool)

(assert (=> b!614163 m!882965))

(assert (=> b!614163 m!882959))

(declare-fun m!882967 () Bool)

(assert (=> b!614163 m!882967))

(assert (=> b!614163 m!882959))

(declare-fun m!882969 () Bool)

(assert (=> b!614163 m!882969))

(declare-fun m!882971 () Bool)

(assert (=> b!614163 m!882971))

(declare-fun m!882973 () Bool)

(assert (=> b!614163 m!882973))

(assert (=> b!614163 m!882971))

(assert (=> b!614163 m!882963))

(declare-fun m!882979 () Bool)

(assert (=> b!614163 m!882979))

(declare-fun m!882981 () Bool)

(assert (=> b!614168 m!882981))

(declare-fun m!882983 () Bool)

(assert (=> d!216156 m!882983))

(declare-fun m!882985 () Bool)

(assert (=> d!216156 m!882985))

(declare-fun m!882987 () Bool)

(assert (=> d!216156 m!882987))

(assert (=> d!216156 m!882431))

(assert (=> b!614166 m!882981))

(declare-fun m!882989 () Bool)

(assert (=> b!614166 m!882989))

(assert (=> b!614166 m!882989))

(declare-fun m!882991 () Bool)

(assert (=> b!614166 m!882991))

(assert (=> b!614165 m!882981))

(declare-fun m!882993 () Bool)

(assert (=> b!614165 m!882993))

(assert (=> b!614165 m!882963))

(assert (=> b!614167 m!882981))

(declare-fun m!882995 () Bool)

(assert (=> b!614167 m!882995))

(assert (=> b!614162 m!882971))

(assert (=> b!614162 m!882963))

(assert (=> b!614162 m!882971))

(assert (=> b!614162 m!882963))

(assert (=> b!614162 m!882979))

(declare-fun m!882997 () Bool)

(assert (=> b!614162 m!882997))

(assert (=> b!614170 m!882981))

(declare-fun m!882999 () Bool)

(assert (=> b!614170 m!882999))

(assert (=> b!614170 m!882999))

(declare-fun m!883001 () Bool)

(assert (=> b!614170 m!883001))

(assert (=> b!614170 m!883001))

(declare-fun m!883003 () Bool)

(assert (=> b!614170 m!883003))

(assert (=> b!614164 m!882981))

(assert (=> b!614164 m!882999))

(assert (=> b!614164 m!882999))

(assert (=> b!614164 m!883001))

(assert (=> b!614164 m!883001))

(declare-fun m!883005 () Bool)

(assert (=> b!614164 m!883005))

(assert (=> b!613749 d!216156))

(declare-fun bs!71774 () Bool)

(declare-fun d!216194 () Bool)

(assert (= bs!71774 (and d!216194 d!216138)))

(declare-fun lambda!16218 () Int)

(assert (=> bs!71774 (= (and (= (toChars!2003 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300))))) (toChars!2003 (transformation!1233 (rule!2025 token!491)))) (= (toValue!2144 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300))))) (toValue!2144 (transformation!1233 (rule!2025 token!491))))) (= lambda!16218 lambda!16213))))

(declare-fun b!614191 () Bool)

(declare-fun e!372291 () Bool)

(assert (=> b!614191 (= e!372291 true)))

(assert (=> d!216194 e!372291))

(assert (= d!216194 b!614191))

(assert (=> b!614191 (< (dynLambda!3565 order!4887 (toValue!2144 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))))) (dynLambda!3566 order!4889 lambda!16218))))

(assert (=> b!614191 (< (dynLambda!3567 order!4891 (toChars!2003 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))))) (dynLambda!3566 order!4889 lambda!16218))))

(assert (=> d!216194 (= (list!2584 (dynLambda!3562 (toChars!2003 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300))))) (dynLambda!3564 (toValue!2144 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300))))) lt!263319))) (list!2584 lt!263319))))

(declare-fun lt!263482 () Unit!11272)

(assert (=> d!216194 (= lt!263482 (ForallOf!129 lambda!16218 lt!263319))))

(assert (=> d!216194 (= (lemmaSemiInverse!263 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))) lt!263319) lt!263482)))

(declare-fun b_lambda!24423 () Bool)

(assert (=> (not b_lambda!24423) (not d!216194)))

(declare-fun t!81308 () Bool)

(declare-fun tb!53683 () Bool)

(assert (=> (and b!613750 (= (toChars!2003 (transformation!1233 (h!11542 rules!3103))) (toChars!2003 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))))) t!81308) tb!53683))

(declare-fun e!372298 () Bool)

(declare-fun b!614196 () Bool)

(declare-fun tp!189736 () Bool)

(assert (=> b!614196 (= e!372298 (and (inv!7818 (c!113420 (dynLambda!3562 (toChars!2003 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300))))) (dynLambda!3564 (toValue!2144 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300))))) lt!263319)))) tp!189736))))

(declare-fun result!60438 () Bool)

(assert (=> tb!53683 (= result!60438 (and (inv!7819 (dynLambda!3562 (toChars!2003 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300))))) (dynLambda!3564 (toValue!2144 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300))))) lt!263319))) e!372298))))

(assert (= tb!53683 b!614196))

(declare-fun m!883007 () Bool)

(assert (=> b!614196 m!883007))

(declare-fun m!883009 () Bool)

(assert (=> tb!53683 m!883009))

(assert (=> d!216194 t!81308))

(declare-fun b_and!60939 () Bool)

(assert (= b_and!60911 (and (=> t!81308 result!60438) b_and!60939)))

(declare-fun t!81310 () Bool)

(declare-fun tb!53685 () Bool)

(assert (=> (and b!613759 (= (toChars!2003 (transformation!1233 (rule!2025 token!491))) (toChars!2003 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))))) t!81310) tb!53685))

(declare-fun result!60440 () Bool)

(assert (= result!60440 result!60438))

(assert (=> d!216194 t!81310))

(declare-fun b_and!60941 () Bool)

(assert (= b_and!60913 (and (=> t!81310 result!60440) b_and!60941)))

(declare-fun b_lambda!24425 () Bool)

(assert (=> (not b_lambda!24425) (not d!216194)))

(declare-fun t!81312 () Bool)

(declare-fun tb!53687 () Bool)

(assert (=> (and b!613750 (= (toValue!2144 (transformation!1233 (h!11542 rules!3103))) (toValue!2144 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))))) t!81312) tb!53687))

(declare-fun result!60442 () Bool)

(assert (=> tb!53687 (= result!60442 (inv!21 (dynLambda!3564 (toValue!2144 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300))))) lt!263319)))))

(declare-fun m!883011 () Bool)

(assert (=> tb!53687 m!883011))

(assert (=> d!216194 t!81312))

(declare-fun b_and!60943 () Bool)

(assert (= b_and!60915 (and (=> t!81312 result!60442) b_and!60943)))

(declare-fun tb!53689 () Bool)

(declare-fun t!81314 () Bool)

(assert (=> (and b!613759 (= (toValue!2144 (transformation!1233 (rule!2025 token!491))) (toValue!2144 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))))) t!81314) tb!53689))

(declare-fun result!60444 () Bool)

(assert (= result!60444 result!60442))

(assert (=> d!216194 t!81314))

(declare-fun b_and!60947 () Bool)

(assert (= b_and!60917 (and (=> t!81314 result!60444) b_and!60947)))

(declare-fun m!883013 () Bool)

(assert (=> d!216194 m!883013))

(declare-fun m!883015 () Bool)

(assert (=> d!216194 m!883015))

(declare-fun m!883017 () Bool)

(assert (=> d!216194 m!883017))

(declare-fun m!883019 () Bool)

(assert (=> d!216194 m!883019))

(declare-fun m!883021 () Bool)

(assert (=> d!216194 m!883021))

(assert (=> d!216194 m!883021))

(assert (=> d!216194 m!883013))

(assert (=> b!613749 d!216194))

(declare-fun d!216196 () Bool)

(declare-fun lt!263485 () List!6149)

(assert (=> d!216196 (= (++!1721 lt!263326 lt!263485) lt!263332)))

(declare-fun e!372312 () List!6149)

(assert (=> d!216196 (= lt!263485 e!372312)))

(declare-fun c!113495 () Bool)

(assert (=> d!216196 (= c!113495 ((_ is Cons!6139) lt!263326))))

(assert (=> d!216196 (>= (size!4828 lt!263332) (size!4828 lt!263326))))

(assert (=> d!216196 (= (getSuffix!378 lt!263332 lt!263326) lt!263485)))

(declare-fun b!614215 () Bool)

(assert (=> b!614215 (= e!372312 (getSuffix!378 (tail!823 lt!263332) (t!81268 lt!263326)))))

(declare-fun b!614216 () Bool)

(assert (=> b!614216 (= e!372312 lt!263332)))

(assert (= (and d!216196 c!113495) b!614215))

(assert (= (and d!216196 (not c!113495)) b!614216))

(declare-fun m!883027 () Bool)

(assert (=> d!216196 m!883027))

(declare-fun m!883029 () Bool)

(assert (=> d!216196 m!883029))

(assert (=> d!216196 m!882471))

(declare-fun m!883031 () Bool)

(assert (=> b!614215 m!883031))

(assert (=> b!614215 m!883031))

(declare-fun m!883033 () Bool)

(assert (=> b!614215 m!883033))

(assert (=> b!613749 d!216196))

(declare-fun d!216198 () Bool)

(declare-fun fromListB!622 (List!6149) BalanceConc!3908)

(assert (=> d!216198 (= (seqFromList!1409 lt!263326) (fromListB!622 lt!263326))))

(declare-fun bs!71775 () Bool)

(assert (= bs!71775 d!216198))

(declare-fun m!883035 () Bool)

(assert (=> bs!71775 m!883035))

(assert (=> b!613749 d!216198))

(declare-fun b!614217 () Bool)

(declare-fun e!372315 () Bool)

(assert (=> b!614217 (= e!372315 (matchR!670 (regex!1233 (rule!2025 token!491)) (_1!3766 (findLongestMatchInner!211 (regex!1233 (rule!2025 token!491)) Nil!6139 (size!4828 Nil!6139) lt!263332 lt!263332 (size!4828 lt!263332)))))))

(declare-fun b!614218 () Bool)

(declare-fun e!372314 () Option!1584)

(declare-fun lt!263487 () tuple2!7004)

(assert (=> b!614218 (= e!372314 (Some!1583 (tuple2!7003 (Token!2203 (apply!1486 (transformation!1233 (rule!2025 token!491)) (seqFromList!1409 (_1!3766 lt!263487))) (rule!2025 token!491) (size!4829 (seqFromList!1409 (_1!3766 lt!263487))) (_1!3766 lt!263487)) (_2!3766 lt!263487))))))

(declare-fun lt!263488 () Unit!11272)

(assert (=> b!614218 (= lt!263488 (longestMatchIsAcceptedByMatchOrIsEmpty!195 (regex!1233 (rule!2025 token!491)) lt!263332))))

(declare-fun res!267171 () Bool)

(assert (=> b!614218 (= res!267171 (isEmpty!4432 (_1!3766 (findLongestMatchInner!211 (regex!1233 (rule!2025 token!491)) Nil!6139 (size!4828 Nil!6139) lt!263332 lt!263332 (size!4828 lt!263332)))))))

(assert (=> b!614218 (=> res!267171 e!372315)))

(assert (=> b!614218 e!372315))

(declare-fun lt!263490 () Unit!11272)

(assert (=> b!614218 (= lt!263490 lt!263488)))

(declare-fun lt!263486 () Unit!11272)

(assert (=> b!614218 (= lt!263486 (lemmaSemiInverse!263 (transformation!1233 (rule!2025 token!491)) (seqFromList!1409 (_1!3766 lt!263487))))))

(declare-fun b!614219 () Bool)

(declare-fun e!372313 () Bool)

(declare-fun e!372316 () Bool)

(assert (=> b!614219 (= e!372313 e!372316)))

(declare-fun res!267175 () Bool)

(assert (=> b!614219 (=> (not res!267175) (not e!372316))))

(declare-fun lt!263489 () Option!1584)

(assert (=> b!614219 (= res!267175 (matchR!670 (regex!1233 (rule!2025 token!491)) (list!2584 (charsOf!862 (_1!3765 (get!2364 lt!263489))))))))

(declare-fun d!216200 () Bool)

(assert (=> d!216200 e!372313))

(declare-fun res!267173 () Bool)

(assert (=> d!216200 (=> res!267173 e!372313)))

(assert (=> d!216200 (= res!267173 (isEmpty!4434 lt!263489))))

(assert (=> d!216200 (= lt!263489 e!372314)))

(declare-fun c!113496 () Bool)

(assert (=> d!216200 (= c!113496 (isEmpty!4432 (_1!3766 lt!263487)))))

(assert (=> d!216200 (= lt!263487 (findLongestMatch!190 (regex!1233 (rule!2025 token!491)) lt!263332))))

(assert (=> d!216200 (ruleValid!431 thiss!22590 (rule!2025 token!491))))

(assert (=> d!216200 (= (maxPrefixOneRule!480 thiss!22590 (rule!2025 token!491) lt!263332) lt!263489)))

(declare-fun b!614220 () Bool)

(declare-fun res!267172 () Bool)

(assert (=> b!614220 (=> (not res!267172) (not e!372316))))

(assert (=> b!614220 (= res!267172 (< (size!4828 (_2!3765 (get!2364 lt!263489))) (size!4828 lt!263332)))))

(declare-fun b!614221 () Bool)

(declare-fun res!267176 () Bool)

(assert (=> b!614221 (=> (not res!267176) (not e!372316))))

(assert (=> b!614221 (= res!267176 (= (value!40007 (_1!3765 (get!2364 lt!263489))) (apply!1486 (transformation!1233 (rule!2025 (_1!3765 (get!2364 lt!263489)))) (seqFromList!1409 (originalCharacters!1272 (_1!3765 (get!2364 lt!263489)))))))))

(declare-fun b!614222 () Bool)

(assert (=> b!614222 (= e!372316 (= (size!4827 (_1!3765 (get!2364 lt!263489))) (size!4828 (originalCharacters!1272 (_1!3765 (get!2364 lt!263489))))))))

(declare-fun b!614223 () Bool)

(declare-fun res!267177 () Bool)

(assert (=> b!614223 (=> (not res!267177) (not e!372316))))

(assert (=> b!614223 (= res!267177 (= (rule!2025 (_1!3765 (get!2364 lt!263489))) (rule!2025 token!491)))))

(declare-fun b!614224 () Bool)

(assert (=> b!614224 (= e!372314 None!1583)))

(declare-fun b!614225 () Bool)

(declare-fun res!267174 () Bool)

(assert (=> b!614225 (=> (not res!267174) (not e!372316))))

(assert (=> b!614225 (= res!267174 (= (++!1721 (list!2584 (charsOf!862 (_1!3765 (get!2364 lt!263489)))) (_2!3765 (get!2364 lt!263489))) lt!263332))))

(assert (= (and d!216200 c!113496) b!614224))

(assert (= (and d!216200 (not c!113496)) b!614218))

(assert (= (and b!614218 (not res!267171)) b!614217))

(assert (= (and d!216200 (not res!267173)) b!614219))

(assert (= (and b!614219 res!267175) b!614225))

(assert (= (and b!614225 res!267174) b!614220))

(assert (= (and b!614220 res!267172) b!614223))

(assert (= (and b!614223 res!267177) b!614221))

(assert (= (and b!614221 res!267176) b!614222))

(declare-fun m!883037 () Bool)

(assert (=> b!614218 m!883037))

(declare-fun m!883039 () Bool)

(assert (=> b!614218 m!883039))

(assert (=> b!614218 m!883029))

(assert (=> b!614218 m!883037))

(declare-fun m!883041 () Bool)

(assert (=> b!614218 m!883041))

(assert (=> b!614218 m!883037))

(declare-fun m!883043 () Bool)

(assert (=> b!614218 m!883043))

(assert (=> b!614218 m!883037))

(declare-fun m!883045 () Bool)

(assert (=> b!614218 m!883045))

(assert (=> b!614218 m!882971))

(declare-fun m!883047 () Bool)

(assert (=> b!614218 m!883047))

(assert (=> b!614218 m!882971))

(assert (=> b!614218 m!883029))

(declare-fun m!883049 () Bool)

(assert (=> b!614218 m!883049))

(declare-fun m!883051 () Bool)

(assert (=> b!614223 m!883051))

(declare-fun m!883053 () Bool)

(assert (=> d!216200 m!883053))

(declare-fun m!883055 () Bool)

(assert (=> d!216200 m!883055))

(declare-fun m!883057 () Bool)

(assert (=> d!216200 m!883057))

(assert (=> d!216200 m!882425))

(assert (=> b!614221 m!883051))

(declare-fun m!883059 () Bool)

(assert (=> b!614221 m!883059))

(assert (=> b!614221 m!883059))

(declare-fun m!883061 () Bool)

(assert (=> b!614221 m!883061))

(assert (=> b!614220 m!883051))

(declare-fun m!883063 () Bool)

(assert (=> b!614220 m!883063))

(assert (=> b!614220 m!883029))

(assert (=> b!614222 m!883051))

(declare-fun m!883065 () Bool)

(assert (=> b!614222 m!883065))

(assert (=> b!614217 m!882971))

(assert (=> b!614217 m!883029))

(assert (=> b!614217 m!882971))

(assert (=> b!614217 m!883029))

(assert (=> b!614217 m!883049))

(declare-fun m!883067 () Bool)

(assert (=> b!614217 m!883067))

(assert (=> b!614225 m!883051))

(declare-fun m!883069 () Bool)

(assert (=> b!614225 m!883069))

(assert (=> b!614225 m!883069))

(declare-fun m!883071 () Bool)

(assert (=> b!614225 m!883071))

(assert (=> b!614225 m!883071))

(declare-fun m!883073 () Bool)

(assert (=> b!614225 m!883073))

(assert (=> b!614219 m!883051))

(assert (=> b!614219 m!883069))

(assert (=> b!614219 m!883069))

(assert (=> b!614219 m!883071))

(assert (=> b!614219 m!883071))

(declare-fun m!883075 () Bool)

(assert (=> b!614219 m!883075))

(assert (=> b!613749 d!216200))

(declare-fun d!216202 () Bool)

(assert (=> d!216202 (= (maxPrefixOneRule!480 thiss!22590 (rule!2025 token!491) lt!263332) (Some!1583 (tuple2!7003 (Token!2203 (apply!1486 (transformation!1233 (rule!2025 token!491)) (seqFromList!1409 lt!263326)) (rule!2025 token!491) (size!4828 lt!263326) lt!263326) suffix!1342)))))

(declare-fun lt!263491 () Unit!11272)

(assert (=> d!216202 (= lt!263491 (choose!4515 thiss!22590 rules!3103 lt!263326 lt!263332 suffix!1342 (rule!2025 token!491)))))

(assert (=> d!216202 (not (isEmpty!4431 rules!3103))))

(assert (=> d!216202 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!186 thiss!22590 rules!3103 lt!263326 lt!263332 suffix!1342 (rule!2025 token!491)) lt!263491)))

(declare-fun bs!71776 () Bool)

(assert (= bs!71776 d!216202))

(assert (=> bs!71776 m!882409))

(declare-fun m!883077 () Bool)

(assert (=> bs!71776 m!883077))

(assert (=> bs!71776 m!882471))

(assert (=> bs!71776 m!882409))

(assert (=> bs!71776 m!882413))

(assert (=> bs!71776 m!882499))

(declare-fun m!883079 () Bool)

(assert (=> bs!71776 m!883079))

(assert (=> b!613749 d!216202))

(declare-fun d!216204 () Bool)

(assert (=> d!216204 (= (get!2364 lt!263300) (v!16494 lt!263300))))

(assert (=> b!613769 d!216204))

(declare-fun b!614237 () Bool)

(declare-fun e!372322 () Bool)

(declare-fun lt!263494 () List!6149)

(assert (=> b!614237 (= e!372322 (or (not (= suffix!1342 Nil!6139)) (= lt!263494 lt!263326)))))

(declare-fun b!614235 () Bool)

(declare-fun e!372321 () List!6149)

(assert (=> b!614235 (= e!372321 (Cons!6139 (h!11540 lt!263326) (++!1721 (t!81268 lt!263326) suffix!1342)))))

(declare-fun b!614234 () Bool)

(assert (=> b!614234 (= e!372321 suffix!1342)))

(declare-fun d!216206 () Bool)

(assert (=> d!216206 e!372322))

(declare-fun res!267183 () Bool)

(assert (=> d!216206 (=> (not res!267183) (not e!372322))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1120 (List!6149) (InoxSet C!4056))

(assert (=> d!216206 (= res!267183 (= (content!1120 lt!263494) ((_ map or) (content!1120 lt!263326) (content!1120 suffix!1342))))))

(assert (=> d!216206 (= lt!263494 e!372321)))

(declare-fun c!113499 () Bool)

(assert (=> d!216206 (= c!113499 ((_ is Nil!6139) lt!263326))))

(assert (=> d!216206 (= (++!1721 lt!263326 suffix!1342) lt!263494)))

(declare-fun b!614236 () Bool)

(declare-fun res!267182 () Bool)

(assert (=> b!614236 (=> (not res!267182) (not e!372322))))

(assert (=> b!614236 (= res!267182 (= (size!4828 lt!263494) (+ (size!4828 lt!263326) (size!4828 suffix!1342))))))

(assert (= (and d!216206 c!113499) b!614234))

(assert (= (and d!216206 (not c!113499)) b!614235))

(assert (= (and d!216206 res!267183) b!614236))

(assert (= (and b!614236 res!267182) b!614237))

(declare-fun m!883081 () Bool)

(assert (=> b!614235 m!883081))

(declare-fun m!883083 () Bool)

(assert (=> d!216206 m!883083))

(declare-fun m!883085 () Bool)

(assert (=> d!216206 m!883085))

(declare-fun m!883087 () Bool)

(assert (=> d!216206 m!883087))

(declare-fun m!883089 () Bool)

(assert (=> b!614236 m!883089))

(assert (=> b!614236 m!882471))

(declare-fun m!883091 () Bool)

(assert (=> b!614236 m!883091))

(assert (=> b!613768 d!216206))

(declare-fun d!216208 () Bool)

(declare-fun lt!263497 () Bool)

(declare-fun content!1121 (List!6151) (InoxSet Rule!2266))

(assert (=> d!216208 (= lt!263497 (select (content!1121 rules!3103) (rule!2025 token!491)))))

(declare-fun e!372328 () Bool)

(assert (=> d!216208 (= lt!263497 e!372328)))

(declare-fun res!267189 () Bool)

(assert (=> d!216208 (=> (not res!267189) (not e!372328))))

(assert (=> d!216208 (= res!267189 ((_ is Cons!6141) rules!3103))))

(assert (=> d!216208 (= (contains!1451 rules!3103 (rule!2025 token!491)) lt!263497)))

(declare-fun b!614242 () Bool)

(declare-fun e!372327 () Bool)

(assert (=> b!614242 (= e!372328 e!372327)))

(declare-fun res!267188 () Bool)

(assert (=> b!614242 (=> res!267188 e!372327)))

(assert (=> b!614242 (= res!267188 (= (h!11542 rules!3103) (rule!2025 token!491)))))

(declare-fun b!614243 () Bool)

(assert (=> b!614243 (= e!372327 (contains!1451 (t!81270 rules!3103) (rule!2025 token!491)))))

(assert (= (and d!216208 res!267189) b!614242))

(assert (= (and b!614242 (not res!267188)) b!614243))

(declare-fun m!883093 () Bool)

(assert (=> d!216208 m!883093))

(declare-fun m!883095 () Bool)

(assert (=> d!216208 m!883095))

(declare-fun m!883097 () Bool)

(assert (=> b!614243 m!883097))

(assert (=> b!613747 d!216208))

(declare-fun d!216210 () Bool)

(declare-fun lt!263498 () Bool)

(assert (=> d!216210 (= lt!263498 (select (content!1121 rules!3103) (rule!2025 (_1!3765 (v!16494 lt!263300)))))))

(declare-fun e!372330 () Bool)

(assert (=> d!216210 (= lt!263498 e!372330)))

(declare-fun res!267191 () Bool)

(assert (=> d!216210 (=> (not res!267191) (not e!372330))))

(assert (=> d!216210 (= res!267191 ((_ is Cons!6141) rules!3103))))

(assert (=> d!216210 (= (contains!1451 rules!3103 (rule!2025 (_1!3765 (v!16494 lt!263300)))) lt!263498)))

(declare-fun b!614244 () Bool)

(declare-fun e!372329 () Bool)

(assert (=> b!614244 (= e!372330 e!372329)))

(declare-fun res!267190 () Bool)

(assert (=> b!614244 (=> res!267190 e!372329)))

(assert (=> b!614244 (= res!267190 (= (h!11542 rules!3103) (rule!2025 (_1!3765 (v!16494 lt!263300)))))))

(declare-fun b!614245 () Bool)

(assert (=> b!614245 (= e!372329 (contains!1451 (t!81270 rules!3103) (rule!2025 (_1!3765 (v!16494 lt!263300)))))))

(assert (= (and d!216210 res!267191) b!614244))

(assert (= (and b!614244 (not res!267190)) b!614245))

(assert (=> d!216210 m!883093))

(declare-fun m!883099 () Bool)

(assert (=> d!216210 m!883099))

(declare-fun m!883101 () Bool)

(assert (=> b!614245 m!883101))

(assert (=> b!613787 d!216210))

(declare-fun d!216212 () Bool)

(assert (=> d!216212 (= (get!2364 lt!263312) (v!16494 lt!263312))))

(assert (=> b!613754 d!216212))

(declare-fun d!216214 () Bool)

(assert (=> d!216214 (= (apply!1486 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))) lt!263319) (dynLambda!3564 (toValue!2144 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300))))) lt!263319))))

(declare-fun b_lambda!24437 () Bool)

(assert (=> (not b_lambda!24437) (not d!216214)))

(assert (=> d!216214 t!81312))

(declare-fun b_and!60951 () Bool)

(assert (= b_and!60943 (and (=> t!81312 result!60442) b_and!60951)))

(assert (=> d!216214 t!81314))

(declare-fun b_and!60953 () Bool)

(assert (= b_and!60947 (and (=> t!81314 result!60444) b_and!60953)))

(assert (=> d!216214 m!883021))

(assert (=> b!613775 d!216214))

(declare-fun d!216216 () Bool)

(declare-fun lt!263499 () Int)

(assert (=> d!216216 (>= lt!263499 0)))

(declare-fun e!372331 () Int)

(assert (=> d!216216 (= lt!263499 e!372331)))

(declare-fun c!113500 () Bool)

(assert (=> d!216216 (= c!113500 ((_ is Nil!6139) lt!263326))))

(assert (=> d!216216 (= (size!4828 lt!263326) lt!263499)))

(declare-fun b!614246 () Bool)

(assert (=> b!614246 (= e!372331 0)))

(declare-fun b!614247 () Bool)

(assert (=> b!614247 (= e!372331 (+ 1 (size!4828 (t!81268 lt!263326))))))

(assert (= (and d!216216 c!113500) b!614246))

(assert (= (and d!216216 (not c!113500)) b!614247))

(declare-fun m!883103 () Bool)

(assert (=> b!614247 m!883103))

(assert (=> b!613775 d!216216))

(declare-fun b!614251 () Bool)

(declare-fun lt!263500 () List!6149)

(declare-fun e!372333 () Bool)

(assert (=> b!614251 (= e!372333 (or (not (= (_2!3765 (v!16494 lt!263300)) Nil!6139)) (= lt!263500 lt!263328)))))

(declare-fun b!614249 () Bool)

(declare-fun e!372332 () List!6149)

(assert (=> b!614249 (= e!372332 (Cons!6139 (h!11540 lt!263328) (++!1721 (t!81268 lt!263328) (_2!3765 (v!16494 lt!263300)))))))

(declare-fun b!614248 () Bool)

(assert (=> b!614248 (= e!372332 (_2!3765 (v!16494 lt!263300)))))

(declare-fun d!216218 () Bool)

(assert (=> d!216218 e!372333))

(declare-fun res!267193 () Bool)

(assert (=> d!216218 (=> (not res!267193) (not e!372333))))

(assert (=> d!216218 (= res!267193 (= (content!1120 lt!263500) ((_ map or) (content!1120 lt!263328) (content!1120 (_2!3765 (v!16494 lt!263300))))))))

(assert (=> d!216218 (= lt!263500 e!372332)))

(declare-fun c!113501 () Bool)

(assert (=> d!216218 (= c!113501 ((_ is Nil!6139) lt!263328))))

(assert (=> d!216218 (= (++!1721 lt!263328 (_2!3765 (v!16494 lt!263300))) lt!263500)))

(declare-fun b!614250 () Bool)

(declare-fun res!267192 () Bool)

(assert (=> b!614250 (=> (not res!267192) (not e!372333))))

(assert (=> b!614250 (= res!267192 (= (size!4828 lt!263500) (+ (size!4828 lt!263328) (size!4828 (_2!3765 (v!16494 lt!263300))))))))

(assert (= (and d!216218 c!113501) b!614248))

(assert (= (and d!216218 (not c!113501)) b!614249))

(assert (= (and d!216218 res!267193) b!614250))

(assert (= (and b!614250 res!267192) b!614251))

(declare-fun m!883105 () Bool)

(assert (=> b!614249 m!883105))

(declare-fun m!883107 () Bool)

(assert (=> d!216218 m!883107))

(declare-fun m!883109 () Bool)

(assert (=> d!216218 m!883109))

(declare-fun m!883111 () Bool)

(assert (=> d!216218 m!883111))

(declare-fun m!883113 () Bool)

(assert (=> b!614250 m!883113))

(assert (=> b!614250 m!882459))

(declare-fun m!883115 () Bool)

(assert (=> b!614250 m!883115))

(assert (=> b!613775 d!216218))

(declare-fun b!614262 () Bool)

(declare-fun e!372341 () Bool)

(assert (=> b!614262 (= e!372341 (isPrefix!861 (tail!823 lt!263326) (tail!823 lt!263320)))))

(declare-fun b!614260 () Bool)

(declare-fun e!372340 () Bool)

(assert (=> b!614260 (= e!372340 e!372341)))

(declare-fun res!267203 () Bool)

(assert (=> b!614260 (=> (not res!267203) (not e!372341))))

(assert (=> b!614260 (= res!267203 (not ((_ is Nil!6139) lt!263320)))))

(declare-fun b!614263 () Bool)

(declare-fun e!372342 () Bool)

(assert (=> b!614263 (= e!372342 (>= (size!4828 lt!263320) (size!4828 lt!263326)))))

(declare-fun d!216220 () Bool)

(assert (=> d!216220 e!372342))

(declare-fun res!267204 () Bool)

(assert (=> d!216220 (=> res!267204 e!372342)))

(declare-fun lt!263503 () Bool)

(assert (=> d!216220 (= res!267204 (not lt!263503))))

(assert (=> d!216220 (= lt!263503 e!372340)))

(declare-fun res!267202 () Bool)

(assert (=> d!216220 (=> res!267202 e!372340)))

(assert (=> d!216220 (= res!267202 ((_ is Nil!6139) lt!263326))))

(assert (=> d!216220 (= (isPrefix!861 lt!263326 lt!263320) lt!263503)))

(declare-fun b!614261 () Bool)

(declare-fun res!267205 () Bool)

(assert (=> b!614261 (=> (not res!267205) (not e!372341))))

(assert (=> b!614261 (= res!267205 (= (head!1294 lt!263326) (head!1294 lt!263320)))))

(assert (= (and d!216220 (not res!267202)) b!614260))

(assert (= (and b!614260 res!267203) b!614261))

(assert (= (and b!614261 res!267205) b!614262))

(assert (= (and d!216220 (not res!267204)) b!614263))

(declare-fun m!883117 () Bool)

(assert (=> b!614262 m!883117))

(declare-fun m!883119 () Bool)

(assert (=> b!614262 m!883119))

(assert (=> b!614262 m!883117))

(assert (=> b!614262 m!883119))

(declare-fun m!883121 () Bool)

(assert (=> b!614262 m!883121))

(declare-fun m!883123 () Bool)

(assert (=> b!614263 m!883123))

(assert (=> b!614263 m!882471))

(declare-fun m!883125 () Bool)

(assert (=> b!614261 m!883125))

(declare-fun m!883127 () Bool)

(assert (=> b!614261 m!883127))

(assert (=> b!613775 d!216220))

(declare-fun d!216222 () Bool)

(declare-fun lt!263504 () Int)

(assert (=> d!216222 (>= lt!263504 0)))

(declare-fun e!372343 () Int)

(assert (=> d!216222 (= lt!263504 e!372343)))

(declare-fun c!113502 () Bool)

(assert (=> d!216222 (= c!113502 ((_ is Nil!6139) lt!263328))))

(assert (=> d!216222 (= (size!4828 lt!263328) lt!263504)))

(declare-fun b!614264 () Bool)

(assert (=> b!614264 (= e!372343 0)))

(declare-fun b!614265 () Bool)

(assert (=> b!614265 (= e!372343 (+ 1 (size!4828 (t!81268 lt!263328))))))

(assert (= (and d!216222 c!113502) b!614264))

(assert (= (and d!216222 (not c!113502)) b!614265))

(declare-fun m!883129 () Bool)

(assert (=> b!614265 m!883129))

(assert (=> b!613775 d!216222))

(declare-fun d!216224 () Bool)

(assert (=> d!216224 (= (list!2584 (charsOf!862 (_1!3765 (v!16494 lt!263300)))) (list!2586 (c!113420 (charsOf!862 (_1!3765 (v!16494 lt!263300))))))))

(declare-fun bs!71777 () Bool)

(assert (= bs!71777 d!216224))

(declare-fun m!883131 () Bool)

(assert (=> bs!71777 m!883131))

(assert (=> b!613775 d!216224))

(declare-fun d!216226 () Bool)

(assert (=> d!216226 (isPrefix!861 input!2705 input!2705)))

(declare-fun lt!263507 () Unit!11272)

(declare-fun choose!4517 (List!6149 List!6149) Unit!11272)

(assert (=> d!216226 (= lt!263507 (choose!4517 input!2705 input!2705))))

(assert (=> d!216226 (= (lemmaIsPrefixRefl!597 input!2705 input!2705) lt!263507)))

(declare-fun bs!71778 () Bool)

(assert (= bs!71778 d!216226))

(assert (=> bs!71778 m!882441))

(declare-fun m!883133 () Bool)

(assert (=> bs!71778 m!883133))

(assert (=> b!613775 d!216226))

(declare-fun d!216228 () Bool)

(declare-fun lt!263508 () BalanceConc!3908)

(assert (=> d!216228 (= (list!2584 lt!263508) (originalCharacters!1272 (_1!3765 (v!16494 lt!263300))))))

(assert (=> d!216228 (= lt!263508 (dynLambda!3562 (toChars!2003 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300))))) (value!40007 (_1!3765 (v!16494 lt!263300)))))))

(assert (=> d!216228 (= (charsOf!862 (_1!3765 (v!16494 lt!263300))) lt!263508)))

(declare-fun b_lambda!24439 () Bool)

(assert (=> (not b_lambda!24439) (not d!216228)))

(declare-fun t!81328 () Bool)

(declare-fun tb!53703 () Bool)

(assert (=> (and b!613750 (= (toChars!2003 (transformation!1233 (h!11542 rules!3103))) (toChars!2003 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))))) t!81328) tb!53703))

(declare-fun b!614266 () Bool)

(declare-fun e!372344 () Bool)

(declare-fun tp!189751 () Bool)

(assert (=> b!614266 (= e!372344 (and (inv!7818 (c!113420 (dynLambda!3562 (toChars!2003 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300))))) (value!40007 (_1!3765 (v!16494 lt!263300)))))) tp!189751))))

(declare-fun result!60460 () Bool)

(assert (=> tb!53703 (= result!60460 (and (inv!7819 (dynLambda!3562 (toChars!2003 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300))))) (value!40007 (_1!3765 (v!16494 lt!263300))))) e!372344))))

(assert (= tb!53703 b!614266))

(declare-fun m!883135 () Bool)

(assert (=> b!614266 m!883135))

(declare-fun m!883137 () Bool)

(assert (=> tb!53703 m!883137))

(assert (=> d!216228 t!81328))

(declare-fun b_and!60955 () Bool)

(assert (= b_and!60939 (and (=> t!81328 result!60460) b_and!60955)))

(declare-fun t!81330 () Bool)

(declare-fun tb!53705 () Bool)

(assert (=> (and b!613759 (= (toChars!2003 (transformation!1233 (rule!2025 token!491))) (toChars!2003 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))))) t!81330) tb!53705))

(declare-fun result!60462 () Bool)

(assert (= result!60462 result!60460))

(assert (=> d!216228 t!81330))

(declare-fun b_and!60957 () Bool)

(assert (= b_and!60941 (and (=> t!81330 result!60462) b_and!60957)))

(declare-fun m!883139 () Bool)

(assert (=> d!216228 m!883139))

(declare-fun m!883141 () Bool)

(assert (=> d!216228 m!883141))

(assert (=> b!613775 d!216228))

(declare-fun d!216230 () Bool)

(declare-fun e!372347 () Bool)

(assert (=> d!216230 e!372347))

(declare-fun res!267208 () Bool)

(assert (=> d!216230 (=> (not res!267208) (not e!372347))))

(assert (=> d!216230 (= res!267208 (semiInverseModEq!495 (toChars!2003 (transformation!1233 (rule!2025 token!491))) (toValue!2144 (transformation!1233 (rule!2025 token!491)))))))

(declare-fun Unit!11284 () Unit!11272)

(assert (=> d!216230 (= (lemmaInv!341 (transformation!1233 (rule!2025 token!491))) Unit!11284)))

(declare-fun b!614269 () Bool)

(assert (=> b!614269 (= e!372347 (equivClasses!478 (toChars!2003 (transformation!1233 (rule!2025 token!491))) (toValue!2144 (transformation!1233 (rule!2025 token!491)))))))

(assert (= (and d!216230 res!267208) b!614269))

(declare-fun m!883143 () Bool)

(assert (=> d!216230 m!883143))

(declare-fun m!883145 () Bool)

(assert (=> b!614269 m!883145))

(assert (=> b!613775 d!216230))

(declare-fun d!216232 () Bool)

(assert (=> d!216232 (isPrefix!861 lt!263328 (++!1721 lt!263328 (_2!3765 (v!16494 lt!263300))))))

(declare-fun lt!263511 () Unit!11272)

(declare-fun choose!4518 (List!6149 List!6149) Unit!11272)

(assert (=> d!216232 (= lt!263511 (choose!4518 lt!263328 (_2!3765 (v!16494 lt!263300))))))

(assert (=> d!216232 (= (lemmaConcatTwoListThenFirstIsPrefix!706 lt!263328 (_2!3765 (v!16494 lt!263300))) lt!263511)))

(declare-fun bs!71779 () Bool)

(assert (= bs!71779 d!216232))

(assert (=> bs!71779 m!882467))

(assert (=> bs!71779 m!882467))

(declare-fun m!883147 () Bool)

(assert (=> bs!71779 m!883147))

(declare-fun m!883149 () Bool)

(assert (=> bs!71779 m!883149))

(assert (=> b!613775 d!216232))

(declare-fun d!216234 () Bool)

(assert (=> d!216234 (ruleValid!431 thiss!22590 (rule!2025 (_1!3765 (v!16494 lt!263300))))))

(declare-fun lt!263514 () Unit!11272)

(declare-fun choose!4519 (LexerInterface!1119 Rule!2266 List!6151) Unit!11272)

(assert (=> d!216234 (= lt!263514 (choose!4519 thiss!22590 (rule!2025 (_1!3765 (v!16494 lt!263300))) rules!3103))))

(assert (=> d!216234 (contains!1451 rules!3103 (rule!2025 (_1!3765 (v!16494 lt!263300))))))

(assert (=> d!216234 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!278 thiss!22590 (rule!2025 (_1!3765 (v!16494 lt!263300))) rules!3103) lt!263514)))

(declare-fun bs!71780 () Bool)

(assert (= bs!71780 d!216234))

(assert (=> bs!71780 m!882431))

(declare-fun m!883151 () Bool)

(assert (=> bs!71780 m!883151))

(assert (=> bs!71780 m!882393))

(assert (=> b!613775 d!216234))

(declare-fun d!216236 () Bool)

(declare-fun e!372348 () Bool)

(assert (=> d!216236 e!372348))

(declare-fun res!267209 () Bool)

(assert (=> d!216236 (=> (not res!267209) (not e!372348))))

(assert (=> d!216236 (= res!267209 (semiInverseModEq!495 (toChars!2003 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300))))) (toValue!2144 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))))))))

(declare-fun Unit!11285 () Unit!11272)

(assert (=> d!216236 (= (lemmaInv!341 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300))))) Unit!11285)))

(declare-fun b!614270 () Bool)

(assert (=> b!614270 (= e!372348 (equivClasses!478 (toChars!2003 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300))))) (toValue!2144 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))))))))

(assert (= (and d!216236 res!267209) b!614270))

(declare-fun m!883153 () Bool)

(assert (=> d!216236 m!883153))

(declare-fun m!883155 () Bool)

(assert (=> b!614270 m!883155))

(assert (=> b!613775 d!216236))

(declare-fun d!216238 () Bool)

(declare-fun res!267214 () Bool)

(declare-fun e!372351 () Bool)

(assert (=> d!216238 (=> (not res!267214) (not e!372351))))

(assert (=> d!216238 (= res!267214 (validRegex!548 (regex!1233 (rule!2025 (_1!3765 (v!16494 lt!263300))))))))

(assert (=> d!216238 (= (ruleValid!431 thiss!22590 (rule!2025 (_1!3765 (v!16494 lt!263300)))) e!372351)))

(declare-fun b!614275 () Bool)

(declare-fun res!267215 () Bool)

(assert (=> b!614275 (=> (not res!267215) (not e!372351))))

(assert (=> b!614275 (= res!267215 (not (nullable!453 (regex!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))))))))

(declare-fun b!614276 () Bool)

(assert (=> b!614276 (= e!372351 (not (= (tag!1495 (rule!2025 (_1!3765 (v!16494 lt!263300)))) (String!8030 ""))))))

(assert (= (and d!216238 res!267214) b!614275))

(assert (= (and b!614275 res!267215) b!614276))

(assert (=> d!216238 m!882551))

(assert (=> b!614275 m!882553))

(assert (=> b!613775 d!216238))

(declare-fun d!216240 () Bool)

(assert (=> d!216240 (and (= lt!263326 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!263517 () Unit!11272)

(declare-fun choose!4520 (List!6149 List!6149 List!6149 List!6149) Unit!11272)

(assert (=> d!216240 (= lt!263517 (choose!4520 lt!263326 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!216240 (= (++!1721 lt!263326 suffix!1342) (++!1721 input!2705 suffix!1342))))

(assert (=> d!216240 (= (lemmaConcatSameAndSameSizesThenSameLists!306 lt!263326 suffix!1342 input!2705 suffix!1342) lt!263517)))

(declare-fun bs!71781 () Bool)

(assert (= bs!71781 d!216240))

(declare-fun m!883157 () Bool)

(assert (=> bs!71781 m!883157))

(assert (=> bs!71781 m!882387))

(assert (=> bs!71781 m!882491))

(assert (=> b!613775 d!216240))

(declare-fun d!216242 () Bool)

(assert (=> d!216242 (= (seqFromList!1409 lt!263328) (fromListB!622 lt!263328))))

(declare-fun bs!71782 () Bool)

(assert (= bs!71782 d!216242))

(declare-fun m!883159 () Bool)

(assert (=> bs!71782 m!883159))

(assert (=> b!613775 d!216242))

(declare-fun b!614279 () Bool)

(declare-fun e!372353 () Bool)

(assert (=> b!614279 (= e!372353 (isPrefix!861 (tail!823 input!2705) (tail!823 input!2705)))))

(declare-fun b!614277 () Bool)

(declare-fun e!372352 () Bool)

(assert (=> b!614277 (= e!372352 e!372353)))

(declare-fun res!267217 () Bool)

(assert (=> b!614277 (=> (not res!267217) (not e!372353))))

(assert (=> b!614277 (= res!267217 (not ((_ is Nil!6139) input!2705)))))

(declare-fun b!614280 () Bool)

(declare-fun e!372354 () Bool)

(assert (=> b!614280 (= e!372354 (>= (size!4828 input!2705) (size!4828 input!2705)))))

(declare-fun d!216244 () Bool)

(assert (=> d!216244 e!372354))

(declare-fun res!267218 () Bool)

(assert (=> d!216244 (=> res!267218 e!372354)))

(declare-fun lt!263518 () Bool)

(assert (=> d!216244 (= res!267218 (not lt!263518))))

(assert (=> d!216244 (= lt!263518 e!372352)))

(declare-fun res!267216 () Bool)

(assert (=> d!216244 (=> res!267216 e!372352)))

(assert (=> d!216244 (= res!267216 ((_ is Nil!6139) input!2705))))

(assert (=> d!216244 (= (isPrefix!861 input!2705 input!2705) lt!263518)))

(declare-fun b!614278 () Bool)

(declare-fun res!267219 () Bool)

(assert (=> b!614278 (=> (not res!267219) (not e!372353))))

(assert (=> b!614278 (= res!267219 (= (head!1294 input!2705) (head!1294 input!2705)))))

(assert (= (and d!216244 (not res!267216)) b!614277))

(assert (= (and b!614277 res!267217) b!614278))

(assert (= (and b!614278 res!267219) b!614279))

(assert (= (and d!216244 (not res!267218)) b!614280))

(assert (=> b!614279 m!882545))

(assert (=> b!614279 m!882545))

(assert (=> b!614279 m!882545))

(assert (=> b!614279 m!882545))

(declare-fun m!883161 () Bool)

(assert (=> b!614279 m!883161))

(assert (=> b!614280 m!882963))

(assert (=> b!614280 m!882963))

(assert (=> b!614278 m!882541))

(assert (=> b!614278 m!882541))

(assert (=> b!613775 d!216244))

(declare-fun d!216246 () Bool)

(assert (=> d!216246 (ruleValid!431 thiss!22590 (rule!2025 token!491))))

(declare-fun lt!263519 () Unit!11272)

(assert (=> d!216246 (= lt!263519 (choose!4519 thiss!22590 (rule!2025 token!491) rules!3103))))

(assert (=> d!216246 (contains!1451 rules!3103 (rule!2025 token!491))))

(assert (=> d!216246 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!278 thiss!22590 (rule!2025 token!491) rules!3103) lt!263519)))

(declare-fun bs!71783 () Bool)

(assert (= bs!71783 d!216246))

(assert (=> bs!71783 m!882425))

(declare-fun m!883163 () Bool)

(assert (=> bs!71783 m!883163))

(assert (=> bs!71783 m!882493))

(assert (=> b!613775 d!216246))

(declare-fun d!216248 () Bool)

(assert (=> d!216248 (isPrefix!861 input!2705 (++!1721 input!2705 suffix!1342))))

(declare-fun lt!263520 () Unit!11272)

(assert (=> d!216248 (= lt!263520 (choose!4518 input!2705 suffix!1342))))

(assert (=> d!216248 (= (lemmaConcatTwoListThenFirstIsPrefix!706 input!2705 suffix!1342) lt!263520)))

(declare-fun bs!71784 () Bool)

(assert (= bs!71784 d!216248))

(assert (=> bs!71784 m!882491))

(assert (=> bs!71784 m!882491))

(declare-fun m!883165 () Bool)

(assert (=> bs!71784 m!883165))

(declare-fun m!883167 () Bool)

(assert (=> bs!71784 m!883167))

(assert (=> b!613775 d!216248))

(declare-fun d!216250 () Bool)

(declare-fun res!267220 () Bool)

(declare-fun e!372355 () Bool)

(assert (=> d!216250 (=> (not res!267220) (not e!372355))))

(assert (=> d!216250 (= res!267220 (validRegex!548 (regex!1233 (rule!2025 token!491))))))

(assert (=> d!216250 (= (ruleValid!431 thiss!22590 (rule!2025 token!491)) e!372355)))

(declare-fun b!614281 () Bool)

(declare-fun res!267221 () Bool)

(assert (=> b!614281 (=> (not res!267221) (not e!372355))))

(assert (=> b!614281 (= res!267221 (not (nullable!453 (regex!1233 (rule!2025 token!491)))))))

(declare-fun b!614282 () Bool)

(assert (=> b!614282 (= e!372355 (not (= (tag!1495 (rule!2025 token!491)) (String!8030 ""))))))

(assert (= (and d!216250 res!267220) b!614281))

(assert (= (and b!614281 res!267221) b!614282))

(declare-fun m!883169 () Bool)

(assert (=> d!216250 m!883169))

(declare-fun m!883171 () Bool)

(assert (=> b!614281 m!883171))

(assert (=> b!613775 d!216250))

(declare-fun b!614285 () Bool)

(declare-fun e!372357 () Bool)

(assert (=> b!614285 (= e!372357 (isPrefix!861 (tail!823 input!2705) (tail!823 lt!263320)))))

(declare-fun b!614283 () Bool)

(declare-fun e!372356 () Bool)

(assert (=> b!614283 (= e!372356 e!372357)))

(declare-fun res!267223 () Bool)

(assert (=> b!614283 (=> (not res!267223) (not e!372357))))

(assert (=> b!614283 (= res!267223 (not ((_ is Nil!6139) lt!263320)))))

(declare-fun b!614286 () Bool)

(declare-fun e!372358 () Bool)

(assert (=> b!614286 (= e!372358 (>= (size!4828 lt!263320) (size!4828 input!2705)))))

(declare-fun d!216252 () Bool)

(assert (=> d!216252 e!372358))

(declare-fun res!267224 () Bool)

(assert (=> d!216252 (=> res!267224 e!372358)))

(declare-fun lt!263521 () Bool)

(assert (=> d!216252 (= res!267224 (not lt!263521))))

(assert (=> d!216252 (= lt!263521 e!372356)))

(declare-fun res!267222 () Bool)

(assert (=> d!216252 (=> res!267222 e!372356)))

(assert (=> d!216252 (= res!267222 ((_ is Nil!6139) input!2705))))

(assert (=> d!216252 (= (isPrefix!861 input!2705 lt!263320) lt!263521)))

(declare-fun b!614284 () Bool)

(declare-fun res!267225 () Bool)

(assert (=> b!614284 (=> (not res!267225) (not e!372357))))

(assert (=> b!614284 (= res!267225 (= (head!1294 input!2705) (head!1294 lt!263320)))))

(assert (= (and d!216252 (not res!267222)) b!614283))

(assert (= (and b!614283 res!267223) b!614284))

(assert (= (and b!614284 res!267225) b!614285))

(assert (= (and d!216252 (not res!267224)) b!614286))

(assert (=> b!614285 m!882545))

(assert (=> b!614285 m!883119))

(assert (=> b!614285 m!882545))

(assert (=> b!614285 m!883119))

(declare-fun m!883173 () Bool)

(assert (=> b!614285 m!883173))

(assert (=> b!614286 m!883123))

(assert (=> b!614286 m!882963))

(assert (=> b!614284 m!882541))

(assert (=> b!614284 m!883127))

(assert (=> b!613775 d!216252))

(declare-fun b!614289 () Bool)

(declare-fun e!372360 () Bool)

(assert (=> b!614289 (= e!372360 (isPrefix!861 (tail!823 input!2705) (tail!823 lt!263332)))))

(declare-fun b!614287 () Bool)

(declare-fun e!372359 () Bool)

(assert (=> b!614287 (= e!372359 e!372360)))

(declare-fun res!267227 () Bool)

(assert (=> b!614287 (=> (not res!267227) (not e!372360))))

(assert (=> b!614287 (= res!267227 (not ((_ is Nil!6139) lt!263332)))))

(declare-fun b!614290 () Bool)

(declare-fun e!372361 () Bool)

(assert (=> b!614290 (= e!372361 (>= (size!4828 lt!263332) (size!4828 input!2705)))))

(declare-fun d!216254 () Bool)

(assert (=> d!216254 e!372361))

(declare-fun res!267228 () Bool)

(assert (=> d!216254 (=> res!267228 e!372361)))

(declare-fun lt!263522 () Bool)

(assert (=> d!216254 (= res!267228 (not lt!263522))))

(assert (=> d!216254 (= lt!263522 e!372359)))

(declare-fun res!267226 () Bool)

(assert (=> d!216254 (=> res!267226 e!372359)))

(assert (=> d!216254 (= res!267226 ((_ is Nil!6139) input!2705))))

(assert (=> d!216254 (= (isPrefix!861 input!2705 lt!263332) lt!263522)))

(declare-fun b!614288 () Bool)

(declare-fun res!267229 () Bool)

(assert (=> b!614288 (=> (not res!267229) (not e!372360))))

(assert (=> b!614288 (= res!267229 (= (head!1294 input!2705) (head!1294 lt!263332)))))

(assert (= (and d!216254 (not res!267226)) b!614287))

(assert (= (and b!614287 res!267227) b!614288))

(assert (= (and b!614288 res!267229) b!614289))

(assert (= (and d!216254 (not res!267228)) b!614290))

(assert (=> b!614289 m!882545))

(assert (=> b!614289 m!883031))

(assert (=> b!614289 m!882545))

(assert (=> b!614289 m!883031))

(declare-fun m!883175 () Bool)

(assert (=> b!614289 m!883175))

(assert (=> b!614290 m!883029))

(assert (=> b!614290 m!882963))

(assert (=> b!614288 m!882541))

(declare-fun m!883177 () Bool)

(assert (=> b!614288 m!883177))

(assert (=> b!613775 d!216254))

(declare-fun d!216256 () Bool)

(declare-fun lt!263523 () List!6149)

(assert (=> d!216256 (= (++!1721 lt!263328 lt!263523) input!2705)))

(declare-fun e!372362 () List!6149)

(assert (=> d!216256 (= lt!263523 e!372362)))

(declare-fun c!113503 () Bool)

(assert (=> d!216256 (= c!113503 ((_ is Cons!6139) lt!263328))))

(assert (=> d!216256 (>= (size!4828 input!2705) (size!4828 lt!263328))))

(assert (=> d!216256 (= (getSuffix!378 input!2705 lt!263328) lt!263523)))

(declare-fun b!614291 () Bool)

(assert (=> b!614291 (= e!372362 (getSuffix!378 (tail!823 input!2705) (t!81268 lt!263328)))))

(declare-fun b!614292 () Bool)

(assert (=> b!614292 (= e!372362 input!2705)))

(assert (= (and d!216256 c!113503) b!614291))

(assert (= (and d!216256 (not c!113503)) b!614292))

(declare-fun m!883179 () Bool)

(assert (=> d!216256 m!883179))

(assert (=> d!216256 m!882963))

(assert (=> d!216256 m!882459))

(assert (=> b!614291 m!882545))

(assert (=> b!614291 m!882545))

(declare-fun m!883181 () Bool)

(assert (=> b!614291 m!883181))

(assert (=> b!613775 d!216256))

(declare-fun d!216258 () Bool)

(assert (=> d!216258 (= (size!4827 token!491) (size!4828 (originalCharacters!1272 token!491)))))

(declare-fun Unit!11286 () Unit!11272)

(assert (=> d!216258 (= (lemmaCharactersSize!292 token!491) Unit!11286)))

(declare-fun bs!71785 () Bool)

(assert (= bs!71785 d!216258))

(assert (=> bs!71785 m!882505))

(assert (=> b!613775 d!216258))

(declare-fun b!614295 () Bool)

(declare-fun e!372364 () Bool)

(assert (=> b!614295 (= e!372364 (isPrefix!861 (tail!823 lt!263328) (tail!823 lt!263315)))))

(declare-fun b!614293 () Bool)

(declare-fun e!372363 () Bool)

(assert (=> b!614293 (= e!372363 e!372364)))

(declare-fun res!267231 () Bool)

(assert (=> b!614293 (=> (not res!267231) (not e!372364))))

(assert (=> b!614293 (= res!267231 (not ((_ is Nil!6139) lt!263315)))))

(declare-fun b!614296 () Bool)

(declare-fun e!372365 () Bool)

(assert (=> b!614296 (= e!372365 (>= (size!4828 lt!263315) (size!4828 lt!263328)))))

(declare-fun d!216260 () Bool)

(assert (=> d!216260 e!372365))

(declare-fun res!267232 () Bool)

(assert (=> d!216260 (=> res!267232 e!372365)))

(declare-fun lt!263524 () Bool)

(assert (=> d!216260 (= res!267232 (not lt!263524))))

(assert (=> d!216260 (= lt!263524 e!372363)))

(declare-fun res!267230 () Bool)

(assert (=> d!216260 (=> res!267230 e!372363)))

(assert (=> d!216260 (= res!267230 ((_ is Nil!6139) lt!263328))))

(assert (=> d!216260 (= (isPrefix!861 lt!263328 lt!263315) lt!263524)))

(declare-fun b!614294 () Bool)

(declare-fun res!267233 () Bool)

(assert (=> b!614294 (=> (not res!267233) (not e!372364))))

(assert (=> b!614294 (= res!267233 (= (head!1294 lt!263328) (head!1294 lt!263315)))))

(assert (= (and d!216260 (not res!267230)) b!614293))

(assert (= (and b!614293 res!267231) b!614294))

(assert (= (and b!614294 res!267233) b!614295))

(assert (= (and d!216260 (not res!267232)) b!614296))

(declare-fun m!883183 () Bool)

(assert (=> b!614295 m!883183))

(declare-fun m!883185 () Bool)

(assert (=> b!614295 m!883185))

(assert (=> b!614295 m!883183))

(assert (=> b!614295 m!883185))

(declare-fun m!883187 () Bool)

(assert (=> b!614295 m!883187))

(declare-fun m!883189 () Bool)

(assert (=> b!614296 m!883189))

(assert (=> b!614296 m!882459))

(declare-fun m!883191 () Bool)

(assert (=> b!614294 m!883191))

(declare-fun m!883193 () Bool)

(assert (=> b!614294 m!883193))

(assert (=> b!613775 d!216260))

(declare-fun d!216262 () Bool)

(assert (=> d!216262 (= (size!4827 (_1!3765 (v!16494 lt!263300))) (size!4828 (originalCharacters!1272 (_1!3765 (v!16494 lt!263300)))))))

(declare-fun Unit!11287 () Unit!11272)

(assert (=> d!216262 (= (lemmaCharactersSize!292 (_1!3765 (v!16494 lt!263300))) Unit!11287)))

(declare-fun bs!71786 () Bool)

(assert (= bs!71786 d!216262))

(assert (=> bs!71786 m!882481))

(assert (=> b!613775 d!216262))

(declare-fun d!216264 () Bool)

(assert (=> d!216264 (isPrefix!861 lt!263326 (++!1721 lt!263326 suffix!1342))))

(declare-fun lt!263525 () Unit!11272)

(assert (=> d!216264 (= lt!263525 (choose!4518 lt!263326 suffix!1342))))

(assert (=> d!216264 (= (lemmaConcatTwoListThenFirstIsPrefix!706 lt!263326 suffix!1342) lt!263525)))

(declare-fun bs!71787 () Bool)

(assert (= bs!71787 d!216264))

(assert (=> bs!71787 m!882387))

(assert (=> bs!71787 m!882387))

(declare-fun m!883195 () Bool)

(assert (=> bs!71787 m!883195))

(declare-fun m!883197 () Bool)

(assert (=> bs!71787 m!883197))

(assert (=> b!613775 d!216264))

(declare-fun d!216266 () Bool)

(assert (=> d!216266 (= (_2!3765 (v!16494 lt!263300)) lt!263304)))

(declare-fun lt!263526 () Unit!11272)

(assert (=> d!216266 (= lt!263526 (choose!4514 lt!263328 (_2!3765 (v!16494 lt!263300)) lt!263328 lt!263304 input!2705))))

(assert (=> d!216266 (isPrefix!861 lt!263328 input!2705)))

(assert (=> d!216266 (= (lemmaSamePrefixThenSameSuffix!574 lt!263328 (_2!3765 (v!16494 lt!263300)) lt!263328 lt!263304 input!2705) lt!263526)))

(declare-fun bs!71788 () Bool)

(assert (= bs!71788 d!216266))

(declare-fun m!883199 () Bool)

(assert (=> bs!71788 m!883199))

(declare-fun m!883201 () Bool)

(assert (=> bs!71788 m!883201))

(assert (=> b!613775 d!216266))

(declare-fun d!216268 () Bool)

(assert (=> d!216268 (= (isDefined!1395 lt!263312) (not (isEmpty!4434 lt!263312)))))

(declare-fun bs!71789 () Bool)

(assert (= bs!71789 d!216268))

(declare-fun m!883203 () Bool)

(assert (=> bs!71789 m!883203))

(assert (=> b!613753 d!216268))

(declare-fun b!614315 () Bool)

(declare-fun e!372372 () Option!1584)

(declare-fun lt!263538 () Option!1584)

(declare-fun lt!263537 () Option!1584)

(assert (=> b!614315 (= e!372372 (ite (and ((_ is None!1583) lt!263538) ((_ is None!1583) lt!263537)) None!1583 (ite ((_ is None!1583) lt!263537) lt!263538 (ite ((_ is None!1583) lt!263538) lt!263537 (ite (>= (size!4827 (_1!3765 (v!16494 lt!263538))) (size!4827 (_1!3765 (v!16494 lt!263537)))) lt!263538 lt!263537)))))))

(declare-fun call!41011 () Option!1584)

(assert (=> b!614315 (= lt!263538 call!41011)))

(assert (=> b!614315 (= lt!263537 (maxPrefix!817 thiss!22590 (t!81270 rules!3103) lt!263332))))

(declare-fun b!614316 () Bool)

(declare-fun res!267250 () Bool)

(declare-fun e!372374 () Bool)

(assert (=> b!614316 (=> (not res!267250) (not e!372374))))

(declare-fun lt!263540 () Option!1584)

(assert (=> b!614316 (= res!267250 (= (list!2584 (charsOf!862 (_1!3765 (get!2364 lt!263540)))) (originalCharacters!1272 (_1!3765 (get!2364 lt!263540)))))))

(declare-fun bm!41006 () Bool)

(assert (=> bm!41006 (= call!41011 (maxPrefixOneRule!480 thiss!22590 (h!11542 rules!3103) lt!263332))))

(declare-fun b!614317 () Bool)

(assert (=> b!614317 (= e!372374 (contains!1451 rules!3103 (rule!2025 (_1!3765 (get!2364 lt!263540)))))))

(declare-fun b!614318 () Bool)

(declare-fun res!267254 () Bool)

(assert (=> b!614318 (=> (not res!267254) (not e!372374))))

(assert (=> b!614318 (= res!267254 (< (size!4828 (_2!3765 (get!2364 lt!263540))) (size!4828 lt!263332)))))

(declare-fun b!614319 () Bool)

(declare-fun res!267252 () Bool)

(assert (=> b!614319 (=> (not res!267252) (not e!372374))))

(assert (=> b!614319 (= res!267252 (= (++!1721 (list!2584 (charsOf!862 (_1!3765 (get!2364 lt!263540)))) (_2!3765 (get!2364 lt!263540))) lt!263332))))

(declare-fun d!216270 () Bool)

(declare-fun e!372373 () Bool)

(assert (=> d!216270 e!372373))

(declare-fun res!267249 () Bool)

(assert (=> d!216270 (=> res!267249 e!372373)))

(assert (=> d!216270 (= res!267249 (isEmpty!4434 lt!263540))))

(assert (=> d!216270 (= lt!263540 e!372372)))

(declare-fun c!113506 () Bool)

(assert (=> d!216270 (= c!113506 (and ((_ is Cons!6141) rules!3103) ((_ is Nil!6141) (t!81270 rules!3103))))))

(declare-fun lt!263541 () Unit!11272)

(declare-fun lt!263539 () Unit!11272)

(assert (=> d!216270 (= lt!263541 lt!263539)))

(assert (=> d!216270 (isPrefix!861 lt!263332 lt!263332)))

(assert (=> d!216270 (= lt!263539 (lemmaIsPrefixRefl!597 lt!263332 lt!263332))))

(declare-fun rulesValidInductive!464 (LexerInterface!1119 List!6151) Bool)

(assert (=> d!216270 (rulesValidInductive!464 thiss!22590 rules!3103)))

(assert (=> d!216270 (= (maxPrefix!817 thiss!22590 rules!3103 lt!263332) lt!263540)))

(declare-fun b!614320 () Bool)

(declare-fun res!267251 () Bool)

(assert (=> b!614320 (=> (not res!267251) (not e!372374))))

(assert (=> b!614320 (= res!267251 (matchR!670 (regex!1233 (rule!2025 (_1!3765 (get!2364 lt!263540)))) (list!2584 (charsOf!862 (_1!3765 (get!2364 lt!263540))))))))

(declare-fun b!614321 () Bool)

(assert (=> b!614321 (= e!372373 e!372374)))

(declare-fun res!267248 () Bool)

(assert (=> b!614321 (=> (not res!267248) (not e!372374))))

(assert (=> b!614321 (= res!267248 (isDefined!1395 lt!263540))))

(declare-fun b!614322 () Bool)

(declare-fun res!267253 () Bool)

(assert (=> b!614322 (=> (not res!267253) (not e!372374))))

(assert (=> b!614322 (= res!267253 (= (value!40007 (_1!3765 (get!2364 lt!263540))) (apply!1486 (transformation!1233 (rule!2025 (_1!3765 (get!2364 lt!263540)))) (seqFromList!1409 (originalCharacters!1272 (_1!3765 (get!2364 lt!263540)))))))))

(declare-fun b!614323 () Bool)

(assert (=> b!614323 (= e!372372 call!41011)))

(assert (= (and d!216270 c!113506) b!614323))

(assert (= (and d!216270 (not c!113506)) b!614315))

(assert (= (or b!614323 b!614315) bm!41006))

(assert (= (and d!216270 (not res!267249)) b!614321))

(assert (= (and b!614321 res!267248) b!614316))

(assert (= (and b!614316 res!267250) b!614318))

(assert (= (and b!614318 res!267254) b!614319))

(assert (= (and b!614319 res!267252) b!614322))

(assert (= (and b!614322 res!267253) b!614320))

(assert (= (and b!614320 res!267251) b!614317))

(declare-fun m!883205 () Bool)

(assert (=> b!614316 m!883205))

(declare-fun m!883207 () Bool)

(assert (=> b!614316 m!883207))

(assert (=> b!614316 m!883207))

(declare-fun m!883209 () Bool)

(assert (=> b!614316 m!883209))

(assert (=> b!614322 m!883205))

(declare-fun m!883211 () Bool)

(assert (=> b!614322 m!883211))

(assert (=> b!614322 m!883211))

(declare-fun m!883213 () Bool)

(assert (=> b!614322 m!883213))

(assert (=> b!614320 m!883205))

(assert (=> b!614320 m!883207))

(assert (=> b!614320 m!883207))

(assert (=> b!614320 m!883209))

(assert (=> b!614320 m!883209))

(declare-fun m!883215 () Bool)

(assert (=> b!614320 m!883215))

(declare-fun m!883217 () Bool)

(assert (=> b!614321 m!883217))

(declare-fun m!883219 () Bool)

(assert (=> b!614315 m!883219))

(assert (=> b!614319 m!883205))

(assert (=> b!614319 m!883207))

(assert (=> b!614319 m!883207))

(assert (=> b!614319 m!883209))

(assert (=> b!614319 m!883209))

(declare-fun m!883221 () Bool)

(assert (=> b!614319 m!883221))

(declare-fun m!883223 () Bool)

(assert (=> bm!41006 m!883223))

(declare-fun m!883225 () Bool)

(assert (=> d!216270 m!883225))

(declare-fun m!883227 () Bool)

(assert (=> d!216270 m!883227))

(declare-fun m!883229 () Bool)

(assert (=> d!216270 m!883229))

(declare-fun m!883231 () Bool)

(assert (=> d!216270 m!883231))

(assert (=> b!614318 m!883205))

(declare-fun m!883233 () Bool)

(assert (=> b!614318 m!883233))

(assert (=> b!614318 m!883029))

(assert (=> b!614317 m!883205))

(declare-fun m!883235 () Bool)

(assert (=> b!614317 m!883235))

(assert (=> b!613753 d!216270))

(declare-fun e!372376 () Bool)

(declare-fun b!614327 () Bool)

(declare-fun lt!263542 () List!6149)

(assert (=> b!614327 (= e!372376 (or (not (= suffix!1342 Nil!6139)) (= lt!263542 input!2705)))))

(declare-fun b!614325 () Bool)

(declare-fun e!372375 () List!6149)

(assert (=> b!614325 (= e!372375 (Cons!6139 (h!11540 input!2705) (++!1721 (t!81268 input!2705) suffix!1342)))))

(declare-fun b!614324 () Bool)

(assert (=> b!614324 (= e!372375 suffix!1342)))

(declare-fun d!216272 () Bool)

(assert (=> d!216272 e!372376))

(declare-fun res!267256 () Bool)

(assert (=> d!216272 (=> (not res!267256) (not e!372376))))

(assert (=> d!216272 (= res!267256 (= (content!1120 lt!263542) ((_ map or) (content!1120 input!2705) (content!1120 suffix!1342))))))

(assert (=> d!216272 (= lt!263542 e!372375)))

(declare-fun c!113507 () Bool)

(assert (=> d!216272 (= c!113507 ((_ is Nil!6139) input!2705))))

(assert (=> d!216272 (= (++!1721 input!2705 suffix!1342) lt!263542)))

(declare-fun b!614326 () Bool)

(declare-fun res!267255 () Bool)

(assert (=> b!614326 (=> (not res!267255) (not e!372376))))

(assert (=> b!614326 (= res!267255 (= (size!4828 lt!263542) (+ (size!4828 input!2705) (size!4828 suffix!1342))))))

(assert (= (and d!216272 c!113507) b!614324))

(assert (= (and d!216272 (not c!113507)) b!614325))

(assert (= (and d!216272 res!267256) b!614326))

(assert (= (and b!614326 res!267255) b!614327))

(declare-fun m!883237 () Bool)

(assert (=> b!614325 m!883237))

(declare-fun m!883239 () Bool)

(assert (=> d!216272 m!883239))

(declare-fun m!883241 () Bool)

(assert (=> d!216272 m!883241))

(assert (=> d!216272 m!883087))

(declare-fun m!883243 () Bool)

(assert (=> b!614326 m!883243))

(assert (=> b!614326 m!882963))

(assert (=> b!614326 m!883091))

(assert (=> b!613753 d!216272))

(declare-fun d!216274 () Bool)

(declare-fun lt!263545 () Int)

(assert (=> d!216274 (>= lt!263545 0)))

(declare-fun e!372383 () Int)

(assert (=> d!216274 (= lt!263545 e!372383)))

(declare-fun c!113512 () Bool)

(assert (=> d!216274 (= c!113512 (and ((_ is Cons!6141) rules!3103) (= (h!11542 rules!3103) (rule!2025 token!491))))))

(assert (=> d!216274 (contains!1451 rules!3103 (rule!2025 token!491))))

(assert (=> d!216274 (= (getIndex!64 rules!3103 (rule!2025 token!491)) lt!263545)))

(declare-fun b!614336 () Bool)

(assert (=> b!614336 (= e!372383 0)))

(declare-fun b!614337 () Bool)

(declare-fun e!372382 () Int)

(assert (=> b!614337 (= e!372383 e!372382)))

(declare-fun c!113513 () Bool)

(assert (=> b!614337 (= c!113513 (and ((_ is Cons!6141) rules!3103) (not (= (h!11542 rules!3103) (rule!2025 token!491)))))))

(declare-fun b!614338 () Bool)

(assert (=> b!614338 (= e!372382 (+ 1 (getIndex!64 (t!81270 rules!3103) (rule!2025 token!491))))))

(declare-fun b!614339 () Bool)

(assert (=> b!614339 (= e!372382 (- 1))))

(assert (= (and d!216274 c!113512) b!614336))

(assert (= (and d!216274 (not c!113512)) b!614337))

(assert (= (and b!614337 c!113513) b!614338))

(assert (= (and b!614337 (not c!113513)) b!614339))

(assert (=> d!216274 m!882493))

(declare-fun m!883245 () Bool)

(assert (=> b!614338 m!883245))

(assert (=> b!613773 d!216274))

(declare-fun d!216276 () Bool)

(declare-fun lt!263546 () Int)

(assert (=> d!216276 (>= lt!263546 0)))

(declare-fun e!372385 () Int)

(assert (=> d!216276 (= lt!263546 e!372385)))

(declare-fun c!113514 () Bool)

(assert (=> d!216276 (= c!113514 (and ((_ is Cons!6141) rules!3103) (= (h!11542 rules!3103) (rule!2025 (_1!3765 (v!16494 lt!263300))))))))

(assert (=> d!216276 (contains!1451 rules!3103 (rule!2025 (_1!3765 (v!16494 lt!263300))))))

(assert (=> d!216276 (= (getIndex!64 rules!3103 (rule!2025 (_1!3765 (v!16494 lt!263300)))) lt!263546)))

(declare-fun b!614340 () Bool)

(assert (=> b!614340 (= e!372385 0)))

(declare-fun b!614341 () Bool)

(declare-fun e!372384 () Int)

(assert (=> b!614341 (= e!372385 e!372384)))

(declare-fun c!113515 () Bool)

(assert (=> b!614341 (= c!113515 (and ((_ is Cons!6141) rules!3103) (not (= (h!11542 rules!3103) (rule!2025 (_1!3765 (v!16494 lt!263300)))))))))

(declare-fun b!614342 () Bool)

(assert (=> b!614342 (= e!372384 (+ 1 (getIndex!64 (t!81270 rules!3103) (rule!2025 (_1!3765 (v!16494 lt!263300))))))))

(declare-fun b!614343 () Bool)

(assert (=> b!614343 (= e!372384 (- 1))))

(assert (= (and d!216276 c!113514) b!614340))

(assert (= (and d!216276 (not c!113514)) b!614341))

(assert (= (and b!614341 c!113515) b!614342))

(assert (= (and b!614341 (not c!113515)) b!614343))

(assert (=> d!216276 m!882393))

(declare-fun m!883247 () Bool)

(assert (=> b!614342 m!883247))

(assert (=> b!613773 d!216276))

(assert (=> b!613772 d!216194))

(declare-fun d!216278 () Bool)

(assert (=> d!216278 (not (matchR!670 (regex!1233 (rule!2025 token!491)) input!2705))))

(declare-fun lt!263549 () Unit!11272)

(declare-fun choose!4522 (LexerInterface!1119 List!6151 Rule!2266 List!6149 List!6149 List!6149 Rule!2266) Unit!11272)

(assert (=> d!216278 (= lt!263549 (choose!4522 thiss!22590 rules!3103 (rule!2025 (_1!3765 (v!16494 lt!263300))) lt!263328 input!2705 input!2705 (rule!2025 token!491)))))

(assert (=> d!216278 (isPrefix!861 lt!263328 input!2705)))

(assert (=> d!216278 (= (lemmaMaxPrefixOutputsMaxPrefix!86 thiss!22590 rules!3103 (rule!2025 (_1!3765 (v!16494 lt!263300))) lt!263328 input!2705 input!2705 (rule!2025 token!491)) lt!263549)))

(declare-fun bs!71790 () Bool)

(assert (= bs!71790 d!216278))

(assert (=> bs!71790 m!882383))

(declare-fun m!883249 () Bool)

(assert (=> bs!71790 m!883249))

(assert (=> bs!71790 m!883201))

(assert (=> b!613772 d!216278))

(declare-fun b!614344 () Bool)

(declare-fun e!372390 () Bool)

(assert (=> b!614344 (= e!372390 (nullable!453 (regex!1233 (rule!2025 token!491))))))

(declare-fun b!614346 () Bool)

(declare-fun e!372388 () Bool)

(declare-fun e!372386 () Bool)

(assert (=> b!614346 (= e!372388 e!372386)))

(declare-fun res!267261 () Bool)

(assert (=> b!614346 (=> res!267261 e!372386)))

(declare-fun call!41012 () Bool)

(assert (=> b!614346 (= res!267261 call!41012)))

(declare-fun b!614347 () Bool)

(declare-fun res!267258 () Bool)

(declare-fun e!372391 () Bool)

(assert (=> b!614347 (=> res!267258 e!372391)))

(assert (=> b!614347 (= res!267258 (not ((_ is ElementMatch!1567) (regex!1233 (rule!2025 token!491)))))))

(declare-fun e!372387 () Bool)

(assert (=> b!614347 (= e!372387 e!372391)))

(declare-fun b!614348 () Bool)

(declare-fun res!267260 () Bool)

(declare-fun e!372389 () Bool)

(assert (=> b!614348 (=> (not res!267260) (not e!372389))))

(assert (=> b!614348 (= res!267260 (not call!41012))))

(declare-fun b!614349 () Bool)

(assert (=> b!614349 (= e!372391 e!372388)))

(declare-fun res!267259 () Bool)

(assert (=> b!614349 (=> (not res!267259) (not e!372388))))

(declare-fun lt!263550 () Bool)

(assert (=> b!614349 (= res!267259 (not lt!263550))))

(declare-fun b!614350 () Bool)

(declare-fun res!267264 () Bool)

(assert (=> b!614350 (=> res!267264 e!372386)))

(assert (=> b!614350 (= res!267264 (not (isEmpty!4432 (tail!823 input!2705))))))

(declare-fun b!614351 () Bool)

(assert (=> b!614351 (= e!372387 (not lt!263550))))

(declare-fun bm!41007 () Bool)

(assert (=> bm!41007 (= call!41012 (isEmpty!4432 input!2705))))

(declare-fun b!614352 () Bool)

(assert (=> b!614352 (= e!372390 (matchR!670 (derivativeStep!337 (regex!1233 (rule!2025 token!491)) (head!1294 input!2705)) (tail!823 input!2705)))))

(declare-fun b!614353 () Bool)

(assert (=> b!614353 (= e!372389 (= (head!1294 input!2705) (c!113419 (regex!1233 (rule!2025 token!491)))))))

(declare-fun b!614354 () Bool)

(assert (=> b!614354 (= e!372386 (not (= (head!1294 input!2705) (c!113419 (regex!1233 (rule!2025 token!491))))))))

(declare-fun b!614355 () Bool)

(declare-fun e!372392 () Bool)

(assert (=> b!614355 (= e!372392 (= lt!263550 call!41012))))

(declare-fun b!614356 () Bool)

(declare-fun res!267263 () Bool)

(assert (=> b!614356 (=> res!267263 e!372391)))

(assert (=> b!614356 (= res!267263 e!372389)))

(declare-fun res!267257 () Bool)

(assert (=> b!614356 (=> (not res!267257) (not e!372389))))

(assert (=> b!614356 (= res!267257 lt!263550)))

(declare-fun b!614357 () Bool)

(declare-fun res!267262 () Bool)

(assert (=> b!614357 (=> (not res!267262) (not e!372389))))

(assert (=> b!614357 (= res!267262 (isEmpty!4432 (tail!823 input!2705)))))

(declare-fun b!614345 () Bool)

(assert (=> b!614345 (= e!372392 e!372387)))

(declare-fun c!113516 () Bool)

(assert (=> b!614345 (= c!113516 ((_ is EmptyLang!1567) (regex!1233 (rule!2025 token!491))))))

(declare-fun d!216280 () Bool)

(assert (=> d!216280 e!372392))

(declare-fun c!113517 () Bool)

(assert (=> d!216280 (= c!113517 ((_ is EmptyExpr!1567) (regex!1233 (rule!2025 token!491))))))

(assert (=> d!216280 (= lt!263550 e!372390)))

(declare-fun c!113518 () Bool)

(assert (=> d!216280 (= c!113518 (isEmpty!4432 input!2705))))

(assert (=> d!216280 (validRegex!548 (regex!1233 (rule!2025 token!491)))))

(assert (=> d!216280 (= (matchR!670 (regex!1233 (rule!2025 token!491)) input!2705) lt!263550)))

(assert (= (and d!216280 c!113518) b!614344))

(assert (= (and d!216280 (not c!113518)) b!614352))

(assert (= (and d!216280 c!113517) b!614355))

(assert (= (and d!216280 (not c!113517)) b!614345))

(assert (= (and b!614345 c!113516) b!614351))

(assert (= (and b!614345 (not c!113516)) b!614347))

(assert (= (and b!614347 (not res!267258)) b!614356))

(assert (= (and b!614356 res!267257) b!614348))

(assert (= (and b!614348 res!267260) b!614357))

(assert (= (and b!614357 res!267262) b!614353))

(assert (= (and b!614356 (not res!267263)) b!614349))

(assert (= (and b!614349 res!267259) b!614346))

(assert (= (and b!614346 (not res!267261)) b!614350))

(assert (= (and b!614350 (not res!267264)) b!614354))

(assert (= (or b!614355 b!614346 b!614348) bm!41007))

(assert (=> b!614352 m!882541))

(assert (=> b!614352 m!882541))

(declare-fun m!883251 () Bool)

(assert (=> b!614352 m!883251))

(assert (=> b!614352 m!882545))

(assert (=> b!614352 m!883251))

(assert (=> b!614352 m!882545))

(declare-fun m!883253 () Bool)

(assert (=> b!614352 m!883253))

(assert (=> bm!41007 m!882373))

(assert (=> b!614357 m!882545))

(assert (=> b!614357 m!882545))

(assert (=> b!614357 m!882549))

(assert (=> d!216280 m!882373))

(assert (=> d!216280 m!883169))

(assert (=> b!614344 m!883171))

(assert (=> b!614353 m!882541))

(assert (=> b!614350 m!882545))

(assert (=> b!614350 m!882545))

(assert (=> b!614350 m!882549))

(assert (=> b!614354 m!882541))

(assert (=> b!613772 d!216280))

(declare-fun d!216282 () Bool)

(assert (=> d!216282 (= (isEmpty!4431 rules!3103) ((_ is Nil!6141) rules!3103))))

(assert (=> b!613751 d!216282))

(assert (=> b!613781 d!216280))

(declare-fun d!216284 () Bool)

(assert (=> d!216284 (not (matchR!670 (regex!1233 (rule!2025 token!491)) input!2705))))

(declare-fun lt!263553 () Unit!11272)

(declare-fun choose!4523 (LexerInterface!1119 List!6151 Rule!2266 List!6149 List!6149 Rule!2266) Unit!11272)

(assert (=> d!216284 (= lt!263553 (choose!4523 thiss!22590 rules!3103 (rule!2025 (_1!3765 (v!16494 lt!263300))) input!2705 input!2705 (rule!2025 token!491)))))

(assert (=> d!216284 (isPrefix!861 input!2705 input!2705)))

(assert (=> d!216284 (= (lemmaMaxPrefNoSmallerRuleMatches!36 thiss!22590 rules!3103 (rule!2025 (_1!3765 (v!16494 lt!263300))) input!2705 input!2705 (rule!2025 token!491)) lt!263553)))

(declare-fun bs!71791 () Bool)

(assert (= bs!71791 d!216284))

(assert (=> bs!71791 m!882383))

(declare-fun m!883255 () Bool)

(assert (=> bs!71791 m!883255))

(assert (=> bs!71791 m!882441))

(assert (=> b!613781 d!216284))

(declare-fun b!614358 () Bool)

(declare-fun e!372393 () Option!1584)

(declare-fun lt!263555 () Option!1584)

(declare-fun lt!263554 () Option!1584)

(assert (=> b!614358 (= e!372393 (ite (and ((_ is None!1583) lt!263555) ((_ is None!1583) lt!263554)) None!1583 (ite ((_ is None!1583) lt!263554) lt!263555 (ite ((_ is None!1583) lt!263555) lt!263554 (ite (>= (size!4827 (_1!3765 (v!16494 lt!263555))) (size!4827 (_1!3765 (v!16494 lt!263554)))) lt!263555 lt!263554)))))))

(declare-fun call!41013 () Option!1584)

(assert (=> b!614358 (= lt!263555 call!41013)))

(assert (=> b!614358 (= lt!263554 (maxPrefix!817 thiss!22590 (t!81270 rules!3103) input!2705))))

(declare-fun b!614359 () Bool)

(declare-fun res!267267 () Bool)

(declare-fun e!372395 () Bool)

(assert (=> b!614359 (=> (not res!267267) (not e!372395))))

(declare-fun lt!263557 () Option!1584)

(assert (=> b!614359 (= res!267267 (= (list!2584 (charsOf!862 (_1!3765 (get!2364 lt!263557)))) (originalCharacters!1272 (_1!3765 (get!2364 lt!263557)))))))

(declare-fun bm!41008 () Bool)

(assert (=> bm!41008 (= call!41013 (maxPrefixOneRule!480 thiss!22590 (h!11542 rules!3103) input!2705))))

(declare-fun b!614360 () Bool)

(assert (=> b!614360 (= e!372395 (contains!1451 rules!3103 (rule!2025 (_1!3765 (get!2364 lt!263557)))))))

(declare-fun b!614361 () Bool)

(declare-fun res!267271 () Bool)

(assert (=> b!614361 (=> (not res!267271) (not e!372395))))

(assert (=> b!614361 (= res!267271 (< (size!4828 (_2!3765 (get!2364 lt!263557))) (size!4828 input!2705)))))

(declare-fun b!614362 () Bool)

(declare-fun res!267269 () Bool)

(assert (=> b!614362 (=> (not res!267269) (not e!372395))))

(assert (=> b!614362 (= res!267269 (= (++!1721 (list!2584 (charsOf!862 (_1!3765 (get!2364 lt!263557)))) (_2!3765 (get!2364 lt!263557))) input!2705))))

(declare-fun d!216286 () Bool)

(declare-fun e!372394 () Bool)

(assert (=> d!216286 e!372394))

(declare-fun res!267266 () Bool)

(assert (=> d!216286 (=> res!267266 e!372394)))

(assert (=> d!216286 (= res!267266 (isEmpty!4434 lt!263557))))

(assert (=> d!216286 (= lt!263557 e!372393)))

(declare-fun c!113519 () Bool)

(assert (=> d!216286 (= c!113519 (and ((_ is Cons!6141) rules!3103) ((_ is Nil!6141) (t!81270 rules!3103))))))

(declare-fun lt!263558 () Unit!11272)

(declare-fun lt!263556 () Unit!11272)

(assert (=> d!216286 (= lt!263558 lt!263556)))

(assert (=> d!216286 (isPrefix!861 input!2705 input!2705)))

(assert (=> d!216286 (= lt!263556 (lemmaIsPrefixRefl!597 input!2705 input!2705))))

(assert (=> d!216286 (rulesValidInductive!464 thiss!22590 rules!3103)))

(assert (=> d!216286 (= (maxPrefix!817 thiss!22590 rules!3103 input!2705) lt!263557)))

(declare-fun b!614363 () Bool)

(declare-fun res!267268 () Bool)

(assert (=> b!614363 (=> (not res!267268) (not e!372395))))

(assert (=> b!614363 (= res!267268 (matchR!670 (regex!1233 (rule!2025 (_1!3765 (get!2364 lt!263557)))) (list!2584 (charsOf!862 (_1!3765 (get!2364 lt!263557))))))))

(declare-fun b!614364 () Bool)

(assert (=> b!614364 (= e!372394 e!372395)))

(declare-fun res!267265 () Bool)

(assert (=> b!614364 (=> (not res!267265) (not e!372395))))

(assert (=> b!614364 (= res!267265 (isDefined!1395 lt!263557))))

(declare-fun b!614365 () Bool)

(declare-fun res!267270 () Bool)

(assert (=> b!614365 (=> (not res!267270) (not e!372395))))

(assert (=> b!614365 (= res!267270 (= (value!40007 (_1!3765 (get!2364 lt!263557))) (apply!1486 (transformation!1233 (rule!2025 (_1!3765 (get!2364 lt!263557)))) (seqFromList!1409 (originalCharacters!1272 (_1!3765 (get!2364 lt!263557)))))))))

(declare-fun b!614366 () Bool)

(assert (=> b!614366 (= e!372393 call!41013)))

(assert (= (and d!216286 c!113519) b!614366))

(assert (= (and d!216286 (not c!113519)) b!614358))

(assert (= (or b!614366 b!614358) bm!41008))

(assert (= (and d!216286 (not res!267266)) b!614364))

(assert (= (and b!614364 res!267265) b!614359))

(assert (= (and b!614359 res!267267) b!614361))

(assert (= (and b!614361 res!267271) b!614362))

(assert (= (and b!614362 res!267269) b!614365))

(assert (= (and b!614365 res!267270) b!614363))

(assert (= (and b!614363 res!267268) b!614360))

(declare-fun m!883257 () Bool)

(assert (=> b!614359 m!883257))

(declare-fun m!883259 () Bool)

(assert (=> b!614359 m!883259))

(assert (=> b!614359 m!883259))

(declare-fun m!883261 () Bool)

(assert (=> b!614359 m!883261))

(assert (=> b!614365 m!883257))

(declare-fun m!883263 () Bool)

(assert (=> b!614365 m!883263))

(assert (=> b!614365 m!883263))

(declare-fun m!883265 () Bool)

(assert (=> b!614365 m!883265))

(assert (=> b!614363 m!883257))

(assert (=> b!614363 m!883259))

(assert (=> b!614363 m!883259))

(assert (=> b!614363 m!883261))

(assert (=> b!614363 m!883261))

(declare-fun m!883267 () Bool)

(assert (=> b!614363 m!883267))

(declare-fun m!883269 () Bool)

(assert (=> b!614364 m!883269))

(declare-fun m!883271 () Bool)

(assert (=> b!614358 m!883271))

(assert (=> b!614362 m!883257))

(assert (=> b!614362 m!883259))

(assert (=> b!614362 m!883259))

(assert (=> b!614362 m!883261))

(assert (=> b!614362 m!883261))

(declare-fun m!883273 () Bool)

(assert (=> b!614362 m!883273))

(declare-fun m!883275 () Bool)

(assert (=> bm!41008 m!883275))

(declare-fun m!883277 () Bool)

(assert (=> d!216286 m!883277))

(assert (=> d!216286 m!882441))

(assert (=> d!216286 m!882469))

(assert (=> d!216286 m!883231))

(assert (=> b!614361 m!883257))

(declare-fun m!883279 () Bool)

(assert (=> b!614361 m!883279))

(assert (=> b!614361 m!882963))

(assert (=> b!614360 m!883257))

(declare-fun m!883281 () Bool)

(assert (=> b!614360 m!883281))

(assert (=> b!613780 d!216286))

(declare-fun d!216288 () Bool)

(assert (=> d!216288 (= (isEmpty!4432 input!2705) ((_ is Nil!6139) input!2705))))

(assert (=> b!613758 d!216288))

(declare-fun d!216290 () Bool)

(declare-fun lt!263559 () Int)

(assert (=> d!216290 (>= lt!263559 0)))

(declare-fun e!372396 () Int)

(assert (=> d!216290 (= lt!263559 e!372396)))

(declare-fun c!113520 () Bool)

(assert (=> d!216290 (= c!113520 ((_ is Nil!6139) (originalCharacters!1272 token!491)))))

(assert (=> d!216290 (= (size!4828 (originalCharacters!1272 token!491)) lt!263559)))

(declare-fun b!614367 () Bool)

(assert (=> b!614367 (= e!372396 0)))

(declare-fun b!614368 () Bool)

(assert (=> b!614368 (= e!372396 (+ 1 (size!4828 (t!81268 (originalCharacters!1272 token!491)))))))

(assert (= (and d!216290 c!113520) b!614367))

(assert (= (and d!216290 (not c!113520)) b!614368))

(declare-fun m!883283 () Bool)

(assert (=> b!614368 m!883283))

(assert (=> b!613779 d!216290))

(declare-fun d!216292 () Bool)

(assert (=> d!216292 (not (matchR!670 (regex!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))) input!2705))))

(declare-fun lt!263560 () Unit!11272)

(assert (=> d!216292 (= lt!263560 (choose!4523 thiss!22590 rules!3103 (rule!2025 token!491) input!2705 lt!263332 (rule!2025 (_1!3765 (v!16494 lt!263300)))))))

(assert (=> d!216292 (isPrefix!861 input!2705 lt!263332)))

(assert (=> d!216292 (= (lemmaMaxPrefNoSmallerRuleMatches!36 thiss!22590 rules!3103 (rule!2025 token!491) input!2705 lt!263332 (rule!2025 (_1!3765 (v!16494 lt!263300)))) lt!263560)))

(declare-fun bs!71792 () Bool)

(assert (= bs!71792 d!216292))

(assert (=> bs!71792 m!882419))

(declare-fun m!883285 () Bool)

(assert (=> bs!71792 m!883285))

(assert (=> bs!71792 m!882421))

(assert (=> b!613757 d!216292))

(assert (=> b!613757 d!216050))

(declare-fun d!216294 () Bool)

(assert (=> d!216294 (= (isEmpty!4432 (_2!3765 (v!16494 lt!263300))) ((_ is Nil!6139) (_2!3765 (v!16494 lt!263300))))))

(assert (=> b!613756 d!216294))

(declare-fun d!216296 () Bool)

(declare-fun res!267276 () Bool)

(declare-fun e!372399 () Bool)

(assert (=> d!216296 (=> (not res!267276) (not e!372399))))

(assert (=> d!216296 (= res!267276 (not (isEmpty!4432 (originalCharacters!1272 token!491))))))

(assert (=> d!216296 (= (inv!7817 token!491) e!372399)))

(declare-fun b!614373 () Bool)

(declare-fun res!267277 () Bool)

(assert (=> b!614373 (=> (not res!267277) (not e!372399))))

(assert (=> b!614373 (= res!267277 (= (originalCharacters!1272 token!491) (list!2584 (dynLambda!3562 (toChars!2003 (transformation!1233 (rule!2025 token!491))) (value!40007 token!491)))))))

(declare-fun b!614374 () Bool)

(assert (=> b!614374 (= e!372399 (= (size!4827 token!491) (size!4828 (originalCharacters!1272 token!491))))))

(assert (= (and d!216296 res!267276) b!614373))

(assert (= (and b!614373 res!267277) b!614374))

(declare-fun b_lambda!24441 () Bool)

(assert (=> (not b_lambda!24441) (not b!614373)))

(assert (=> b!614373 t!81272))

(declare-fun b_and!60959 () Bool)

(assert (= b_and!60955 (and (=> t!81272 result!60390) b_and!60959)))

(assert (=> b!614373 t!81278))

(declare-fun b_and!60961 () Bool)

(assert (= b_and!60957 (and (=> t!81278 result!60400) b_and!60961)))

(declare-fun m!883287 () Bool)

(assert (=> d!216296 m!883287))

(assert (=> b!614373 m!882601))

(assert (=> b!614373 m!882601))

(declare-fun m!883289 () Bool)

(assert (=> b!614373 m!883289))

(assert (=> b!614374 m!882505))

(assert (=> start!58696 d!216296))

(declare-fun d!216298 () Bool)

(assert (=> d!216298 (= (isDefined!1395 lt!263300) (not (isEmpty!4434 lt!263300)))))

(declare-fun bs!71793 () Bool)

(assert (= bs!71793 d!216298))

(declare-fun m!883291 () Bool)

(assert (=> bs!71793 m!883291))

(assert (=> b!613776 d!216298))

(declare-fun d!216300 () Bool)

(assert (=> d!216300 (= (inv!7813 (tag!1495 (rule!2025 token!491))) (= (mod (str.len (value!40006 (tag!1495 (rule!2025 token!491)))) 2) 0))))

(assert (=> b!613755 d!216300))

(declare-fun d!216302 () Bool)

(declare-fun res!267278 () Bool)

(declare-fun e!372400 () Bool)

(assert (=> d!216302 (=> (not res!267278) (not e!372400))))

(assert (=> d!216302 (= res!267278 (semiInverseModEq!495 (toChars!2003 (transformation!1233 (rule!2025 token!491))) (toValue!2144 (transformation!1233 (rule!2025 token!491)))))))

(assert (=> d!216302 (= (inv!7816 (transformation!1233 (rule!2025 token!491))) e!372400)))

(declare-fun b!614375 () Bool)

(assert (=> b!614375 (= e!372400 (equivClasses!478 (toChars!2003 (transformation!1233 (rule!2025 token!491))) (toValue!2144 (transformation!1233 (rule!2025 token!491)))))))

(assert (= (and d!216302 res!267278) b!614375))

(assert (=> d!216302 m!883143))

(assert (=> b!614375 m!883145))

(assert (=> b!613755 d!216302))

(declare-fun b!614380 () Bool)

(declare-fun e!372403 () Bool)

(declare-fun tp!189754 () Bool)

(assert (=> b!614380 (= e!372403 (and tp_is_empty!3489 tp!189754))))

(assert (=> b!613770 (= tp!189695 e!372403)))

(assert (= (and b!613770 ((_ is Cons!6139) (originalCharacters!1272 token!491))) b!614380))

(declare-fun b!614393 () Bool)

(declare-fun e!372406 () Bool)

(declare-fun tp!189768 () Bool)

(assert (=> b!614393 (= e!372406 tp!189768)))

(assert (=> b!613765 (= tp!189701 e!372406)))

(declare-fun b!614391 () Bool)

(assert (=> b!614391 (= e!372406 tp_is_empty!3489)))

(declare-fun b!614394 () Bool)

(declare-fun tp!189766 () Bool)

(declare-fun tp!189769 () Bool)

(assert (=> b!614394 (= e!372406 (and tp!189766 tp!189769))))

(declare-fun b!614392 () Bool)

(declare-fun tp!189767 () Bool)

(declare-fun tp!189765 () Bool)

(assert (=> b!614392 (= e!372406 (and tp!189767 tp!189765))))

(assert (= (and b!613765 ((_ is ElementMatch!1567) (regex!1233 (h!11542 rules!3103)))) b!614391))

(assert (= (and b!613765 ((_ is Concat!2824) (regex!1233 (h!11542 rules!3103)))) b!614392))

(assert (= (and b!613765 ((_ is Star!1567) (regex!1233 (h!11542 rules!3103)))) b!614393))

(assert (= (and b!613765 ((_ is Union!1567) (regex!1233 (h!11542 rules!3103)))) b!614394))

(declare-fun b!614395 () Bool)

(declare-fun e!372407 () Bool)

(declare-fun tp!189770 () Bool)

(assert (=> b!614395 (= e!372407 (and tp_is_empty!3489 tp!189770))))

(assert (=> b!613778 (= tp!189702 e!372407)))

(assert (= (and b!613778 ((_ is Cons!6139) (t!81268 input!2705))) b!614395))

(declare-fun b!614396 () Bool)

(declare-fun e!372408 () Bool)

(declare-fun tp!189771 () Bool)

(assert (=> b!614396 (= e!372408 (and tp_is_empty!3489 tp!189771))))

(assert (=> b!613767 (= tp!189698 e!372408)))

(assert (= (and b!613767 ((_ is Cons!6139) (t!81268 suffix!1342))) b!614396))

(declare-fun b!614399 () Bool)

(declare-fun e!372409 () Bool)

(declare-fun tp!189775 () Bool)

(assert (=> b!614399 (= e!372409 tp!189775)))

(assert (=> b!613755 (= tp!189697 e!372409)))

(declare-fun b!614397 () Bool)

(assert (=> b!614397 (= e!372409 tp_is_empty!3489)))

(declare-fun b!614400 () Bool)

(declare-fun tp!189773 () Bool)

(declare-fun tp!189776 () Bool)

(assert (=> b!614400 (= e!372409 (and tp!189773 tp!189776))))

(declare-fun b!614398 () Bool)

(declare-fun tp!189774 () Bool)

(declare-fun tp!189772 () Bool)

(assert (=> b!614398 (= e!372409 (and tp!189774 tp!189772))))

(assert (= (and b!613755 ((_ is ElementMatch!1567) (regex!1233 (rule!2025 token!491)))) b!614397))

(assert (= (and b!613755 ((_ is Concat!2824) (regex!1233 (rule!2025 token!491)))) b!614398))

(assert (= (and b!613755 ((_ is Star!1567) (regex!1233 (rule!2025 token!491)))) b!614399))

(assert (= (and b!613755 ((_ is Union!1567) (regex!1233 (rule!2025 token!491)))) b!614400))

(declare-fun b!614411 () Bool)

(declare-fun b_free!17513 () Bool)

(declare-fun b_next!17529 () Bool)

(assert (=> b!614411 (= b_free!17513 (not b_next!17529))))

(declare-fun tb!53707 () Bool)

(declare-fun t!81332 () Bool)

(assert (=> (and b!614411 (= (toValue!2144 (transformation!1233 (h!11542 (t!81270 rules!3103)))) (toValue!2144 (transformation!1233 (rule!2025 token!491)))) t!81332) tb!53707))

(declare-fun result!60470 () Bool)

(assert (= result!60470 result!60412))

(assert (=> d!216136 t!81332))

(assert (=> d!216138 t!81332))

(declare-fun t!81334 () Bool)

(declare-fun tb!53709 () Bool)

(assert (=> (and b!614411 (= (toValue!2144 (transformation!1233 (h!11542 (t!81270 rules!3103)))) (toValue!2144 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))))) t!81334) tb!53709))

(declare-fun result!60472 () Bool)

(assert (= result!60472 result!60442))

(assert (=> d!216194 t!81334))

(assert (=> d!216214 t!81334))

(declare-fun tp!189788 () Bool)

(declare-fun b_and!60963 () Bool)

(assert (=> b!614411 (= tp!189788 (and (=> t!81332 result!60470) (=> t!81334 result!60472) b_and!60963))))

(declare-fun b_free!17515 () Bool)

(declare-fun b_next!17531 () Bool)

(assert (=> b!614411 (= b_free!17515 (not b_next!17531))))

(declare-fun t!81336 () Bool)

(declare-fun tb!53711 () Bool)

(assert (=> (and b!614411 (= (toChars!2003 (transformation!1233 (h!11542 (t!81270 rules!3103)))) (toChars!2003 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))))) t!81336) tb!53711))

(declare-fun result!60474 () Bool)

(assert (= result!60474 result!60460))

(assert (=> d!216228 t!81336))

(declare-fun tb!53713 () Bool)

(declare-fun t!81338 () Bool)

(assert (=> (and b!614411 (= (toChars!2003 (transformation!1233 (h!11542 (t!81270 rules!3103)))) (toChars!2003 (transformation!1233 (rule!2025 token!491)))) t!81338) tb!53713))

(declare-fun result!60476 () Bool)

(assert (= result!60476 result!60390))

(assert (=> d!216056 t!81338))

(declare-fun tb!53715 () Bool)

(declare-fun t!81340 () Bool)

(assert (=> (and b!614411 (= (toChars!2003 (transformation!1233 (h!11542 (t!81270 rules!3103)))) (toChars!2003 (transformation!1233 (rule!2025 token!491)))) t!81340) tb!53715))

(declare-fun result!60478 () Bool)

(assert (= result!60478 result!60422))

(assert (=> d!216138 t!81340))

(assert (=> b!614373 t!81338))

(declare-fun tb!53717 () Bool)

(declare-fun t!81342 () Bool)

(assert (=> (and b!614411 (= (toChars!2003 (transformation!1233 (h!11542 (t!81270 rules!3103)))) (toChars!2003 (transformation!1233 (rule!2025 (_1!3765 (v!16494 lt!263300)))))) t!81342) tb!53717))

(declare-fun result!60480 () Bool)

(assert (= result!60480 result!60438))

(assert (=> d!216194 t!81342))

(declare-fun tp!189786 () Bool)

(declare-fun b_and!60965 () Bool)

(assert (=> b!614411 (= tp!189786 (and (=> t!81340 result!60478) (=> t!81342 result!60480) (=> t!81338 result!60476) (=> t!81336 result!60474) b_and!60965))))

(declare-fun e!372419 () Bool)

(assert (=> b!614411 (= e!372419 (and tp!189788 tp!189786))))

(declare-fun b!614410 () Bool)

(declare-fun e!372418 () Bool)

(declare-fun tp!189787 () Bool)

(assert (=> b!614410 (= e!372418 (and tp!189787 (inv!7813 (tag!1495 (h!11542 (t!81270 rules!3103)))) (inv!7816 (transformation!1233 (h!11542 (t!81270 rules!3103)))) e!372419))))

(declare-fun b!614409 () Bool)

(declare-fun e!372420 () Bool)

(declare-fun tp!189785 () Bool)

(assert (=> b!614409 (= e!372420 (and e!372418 tp!189785))))

(assert (=> b!613771 (= tp!189699 e!372420)))

(assert (= b!614410 b!614411))

(assert (= b!614409 b!614410))

(assert (= (and b!613771 ((_ is Cons!6141) (t!81270 rules!3103))) b!614409))

(declare-fun m!883293 () Bool)

(assert (=> b!614410 m!883293))

(declare-fun m!883295 () Bool)

(assert (=> b!614410 m!883295))

(declare-fun b_lambda!24443 () Bool)

(assert (= b_lambda!24411 (or (and b!613750 b_free!17501 (= (toValue!2144 (transformation!1233 (h!11542 rules!3103))) (toValue!2144 (transformation!1233 (rule!2025 token!491))))) (and b!613759 b_free!17505) (and b!614411 b_free!17513 (= (toValue!2144 (transformation!1233 (h!11542 (t!81270 rules!3103)))) (toValue!2144 (transformation!1233 (rule!2025 token!491))))) b_lambda!24443)))

(declare-fun b_lambda!24445 () Bool)

(assert (= b_lambda!24397 (or (and b!613750 b_free!17503 (= (toChars!2003 (transformation!1233 (h!11542 rules!3103))) (toChars!2003 (transformation!1233 (rule!2025 token!491))))) (and b!613759 b_free!17507) (and b!614411 b_free!17515 (= (toChars!2003 (transformation!1233 (h!11542 (t!81270 rules!3103)))) (toChars!2003 (transformation!1233 (rule!2025 token!491))))) b_lambda!24445)))

(declare-fun b_lambda!24447 () Bool)

(assert (= b_lambda!24409 (or (and b!613750 b_free!17503 (= (toChars!2003 (transformation!1233 (h!11542 rules!3103))) (toChars!2003 (transformation!1233 (rule!2025 token!491))))) (and b!613759 b_free!17507) (and b!614411 b_free!17515 (= (toChars!2003 (transformation!1233 (h!11542 (t!81270 rules!3103)))) (toChars!2003 (transformation!1233 (rule!2025 token!491))))) b_lambda!24447)))

(declare-fun b_lambda!24449 () Bool)

(assert (= b_lambda!24405 (or (and b!613750 b_free!17501 (= (toValue!2144 (transformation!1233 (h!11542 rules!3103))) (toValue!2144 (transformation!1233 (rule!2025 token!491))))) (and b!613759 b_free!17505) (and b!614411 b_free!17513 (= (toValue!2144 (transformation!1233 (h!11542 (t!81270 rules!3103)))) (toValue!2144 (transformation!1233 (rule!2025 token!491))))) b_lambda!24449)))

(declare-fun b_lambda!24451 () Bool)

(assert (= b_lambda!24441 (or (and b!613750 b_free!17503 (= (toChars!2003 (transformation!1233 (h!11542 rules!3103))) (toChars!2003 (transformation!1233 (rule!2025 token!491))))) (and b!613759 b_free!17507) (and b!614411 b_free!17515 (= (toChars!2003 (transformation!1233 (h!11542 (t!81270 rules!3103)))) (toChars!2003 (transformation!1233 (rule!2025 token!491))))) b_lambda!24451)))

(check-sat (not b_lambda!24423) (not b!613965) (not b!614270) (not b!614060) (not b_next!17519) (not b!613805) (not b_next!17517) (not b!614263) (not b_next!17523) (not b!613877) (not b_lambda!24439) (not tb!53687) (not b!614361) (not b!614373) (not d!216210) (not b!614291) (not d!216242) (not b!614166) (not b!614360) (not b!614285) (not b!614170) (not tb!53663) (not d!216234) (not d!216208) (not b!614164) (not b!614392) (not d!216102) (not b!613880) (not b!614344) (not b!614243) (not bm!41008) (not b!614365) (not d!216298) (not b!614338) b_and!60951 (not d!216226) (not d!216246) (not b!614223) (not d!216050) (not b!614359) (not d!216268) (not bm!40995) (not b!614280) (not b_next!17531) (not b!614221) (not b!614286) (not b!614284) (not d!216218) (not b!614217) (not b!613830) (not b!613964) (not tb!53671) (not b!614354) b_and!60959 (not b!614236) (not d!216202) (not b!614265) (not b!614279) (not b!614400) (not b!614409) (not b!614235) (not d!216230) (not b!614288) (not d!216270) (not b!614399) (not d!216200) (not d!216272) (not d!216066) (not b!614261) (not b!614168) (not b!614322) (not b!614374) (not d!216156) (not d!216240) (not b!614394) (not d!216296) (not b_lambda!24437) (not b!613922) (not d!216224) (not d!216086) (not b!614289) (not b_lambda!24425) (not b!614167) (not b!614350) (not d!216264) tp_is_empty!3489 (not d!216056) (not b!614225) (not b!614320) (not tb!53647) (not b!614396) (not b!614196) (not d!216194) (not b!614395) (not b!614352) (not d!216280) (not b!614342) (not d!216266) (not b!614281) (not b!614362) (not d!216232) (not b!614218) (not b_lambda!24445) (not b!614398) (not d!216258) (not b!614318) (not b!614245) (not d!216198) (not d!216284) (not b!614315) (not d!216278) (not b!613879) (not d!216276) b_and!60961 (not b!614363) (not d!216248) (not b!614215) (not b!614165) (not b!614222) (not b!614278) (not b!613884) (not b!614219) (not d!216206) (not bm!41006) (not b!614380) (not b!614269) (not tb!53703) b_and!60953 (not b!614316) (not b_lambda!24449) (not d!216292) (not b!614393) (not b!614353) (not b!614220) (not b!613881) (not b!614357) (not b!614163) (not d!216286) (not b!614294) (not bm!41007) (not d!216196) (not b!614410) (not d!216302) (not b!614250) b_and!60965 (not d!216250) (not b!614317) (not d!216054) (not b!614326) (not b!614364) (not b!614325) (not b!614266) (not b!614162) (not tb!53683) (not d!216262) (not b!613919) (not b!614296) (not b_lambda!24451) (not d!216138) (not b!614262) (not b!614290) (not d!216238) (not b!614247) (not b!614321) (not b!613962) (not d!216236) (not b_next!17529) (not b!614249) (not b_next!17521) (not b!613871) (not b!614368) (not d!216256) (not d!216274) (not b!614358) b_and!60963 (not b_lambda!24447) (not b_lambda!24443) (not b!614295) (not d!216042) (not b!614319) (not b!614275) (not d!216228) (not b!614375))
(check-sat (not b_next!17523) b_and!60951 (not b_next!17531) b_and!60959 b_and!60961 b_and!60953 b_and!60965 b_and!60963 (not b_next!17519) (not b_next!17517) (not b_next!17529) (not b_next!17521))
