; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49040 () Bool)

(assert start!49040)

(declare-fun b!532938 () Bool)

(declare-fun b_free!14425 () Bool)

(declare-fun b_next!14441 () Bool)

(assert (=> b!532938 (= b_free!14425 (not b_next!14441))))

(declare-fun tp!170012 () Bool)

(declare-fun b_and!52075 () Bool)

(assert (=> b!532938 (= tp!170012 b_and!52075)))

(declare-fun b_free!14427 () Bool)

(declare-fun b_next!14443 () Bool)

(assert (=> b!532938 (= b_free!14427 (not b_next!14443))))

(declare-fun tp!170011 () Bool)

(declare-fun b_and!52077 () Bool)

(assert (=> b!532938 (= tp!170011 b_and!52077)))

(declare-fun b!532936 () Bool)

(declare-fun b_free!14429 () Bool)

(declare-fun b_next!14445 () Bool)

(assert (=> b!532936 (= b_free!14429 (not b_next!14445))))

(declare-fun tp!170009 () Bool)

(declare-fun b_and!52079 () Bool)

(assert (=> b!532936 (= tp!170009 b_and!52079)))

(declare-fun b_free!14431 () Bool)

(declare-fun b_next!14447 () Bool)

(assert (=> b!532936 (= b_free!14431 (not b_next!14447))))

(declare-fun tp!170004 () Bool)

(declare-fun b_and!52081 () Bool)

(assert (=> b!532936 (= tp!170004 b_and!52081)))

(declare-fun e!320938 () Bool)

(declare-fun b!532923 () Bool)

(declare-fun tp!170006 () Bool)

(declare-fun e!320944 () Bool)

(declare-datatypes ((C!3448 0))(
  ( (C!3449 (val!1950 Int)) )
))
(declare-datatypes ((Regex!1263 0))(
  ( (ElementMatch!1263 (c!101650 C!3448)) (Concat!2216 (regOne!3038 Regex!1263) (regTwo!3038 Regex!1263)) (EmptyExpr!1263) (Star!1263 (reg!1592 Regex!1263)) (EmptyLang!1263) (Union!1263 (regOne!3039 Regex!1263) (regTwo!3039 Regex!1263)) )
))
(declare-datatypes ((List!5115 0))(
  ( (Nil!5105) (Cons!5105 (h!10506 (_ BitVec 16)) (t!73900 List!5115)) )
))
(declare-datatypes ((String!6508 0))(
  ( (String!6509 (value!31317 String)) )
))
(declare-datatypes ((TokenValue!953 0))(
  ( (FloatLiteralValue!1906 (text!7116 List!5115)) (TokenValueExt!952 (__x!3804 Int)) (Broken!4765 (value!31318 List!5115)) (Object!962) (End!953) (Def!953) (Underscore!953) (Match!953) (Else!953) (Error!953) (Case!953) (If!953) (Extends!953) (Abstract!953) (Class!953) (Val!953) (DelimiterValue!1906 (del!1013 List!5115)) (KeywordValue!959 (value!31319 List!5115)) (CommentValue!1906 (value!31320 List!5115)) (WhitespaceValue!1906 (value!31321 List!5115)) (IndentationValue!953 (value!31322 List!5115)) (String!6510) (Int32!953) (Broken!4766 (value!31323 List!5115)) (Boolean!954) (Unit!8904) (OperatorValue!956 (op!1013 List!5115)) (IdentifierValue!1906 (value!31324 List!5115)) (IdentifierValue!1907 (value!31325 List!5115)) (WhitespaceValue!1907 (value!31326 List!5115)) (True!1906) (False!1906) (Broken!4767 (value!31327 List!5115)) (Broken!4768 (value!31328 List!5115)) (True!1907) (RightBrace!953) (RightBracket!953) (Colon!953) (Null!953) (Comma!953) (LeftBracket!953) (False!1907) (LeftBrace!953) (ImaginaryLiteralValue!953 (text!7117 List!5115)) (StringLiteralValue!2859 (value!31329 List!5115)) (EOFValue!953 (value!31330 List!5115)) (IdentValue!953 (value!31331 List!5115)) (DelimiterValue!1907 (value!31332 List!5115)) (DedentValue!953 (value!31333 List!5115)) (NewLineValue!953 (value!31334 List!5115)) (IntegerValue!2859 (value!31335 (_ BitVec 32)) (text!7118 List!5115)) (IntegerValue!2860 (value!31336 Int) (text!7119 List!5115)) (Times!953) (Or!953) (Equal!953) (Minus!953) (Broken!4769 (value!31337 List!5115)) (And!953) (Div!953) (LessEqual!953) (Mod!953) (Concat!2217) (Not!953) (Plus!953) (SpaceValue!953 (value!31338 List!5115)) (IntegerValue!2861 (value!31339 Int) (text!7120 List!5115)) (StringLiteralValue!2860 (text!7121 List!5115)) (FloatLiteralValue!1907 (text!7122 List!5115)) (BytesLiteralValue!953 (value!31340 List!5115)) (CommentValue!1907 (value!31341 List!5115)) (StringLiteralValue!2861 (value!31342 List!5115)) (ErrorTokenValue!953 (msg!1014 List!5115)) )
))
(declare-datatypes ((List!5116 0))(
  ( (Nil!5106) (Cons!5106 (h!10507 C!3448) (t!73901 List!5116)) )
))
(declare-datatypes ((IArray!3293 0))(
  ( (IArray!3294 (innerList!1704 List!5116)) )
))
(declare-datatypes ((Conc!1646 0))(
  ( (Node!1646 (left!4307 Conc!1646) (right!4637 Conc!1646) (csize!3522 Int) (cheight!1857 Int)) (Leaf!2618 (xs!4283 IArray!3293) (csize!3523 Int)) (Empty!1646) )
))
(declare-datatypes ((BalanceConc!3300 0))(
  ( (BalanceConc!3301 (c!101651 Conc!1646)) )
))
(declare-datatypes ((TokenValueInjection!1674 0))(
  ( (TokenValueInjection!1675 (toValue!1776 Int) (toChars!1635 Int)) )
))
(declare-datatypes ((Rule!1658 0))(
  ( (Rule!1659 (regex!929 Regex!1263) (tag!1191 String!6508) (isSeparator!929 Bool) (transformation!929 TokenValueInjection!1674)) )
))
(declare-datatypes ((Token!1594 0))(
  ( (Token!1595 (value!31343 TokenValue!953) (rule!1631 Rule!1658) (size!4128 Int) (originalCharacters!968 List!5116)) )
))
(declare-fun token!491 () Token!1594)

(declare-fun inv!21 (TokenValue!953) Bool)

(assert (=> b!532923 (= e!320944 (and (inv!21 (value!31343 token!491)) e!320938 tp!170006))))

(declare-fun b!532924 () Bool)

(declare-fun e!320936 () Bool)

(declare-fun e!320935 () Bool)

(assert (=> b!532924 (= e!320936 e!320935)))

(declare-fun res!225128 () Bool)

(assert (=> b!532924 (=> (not res!225128) (not e!320935))))

(declare-fun suffix!1342 () List!5116)

(declare-datatypes ((tuple2!6216 0))(
  ( (tuple2!6217 (_1!3372 Token!1594) (_2!3372 List!5116)) )
))
(declare-fun lt!219297 () tuple2!6216)

(assert (=> b!532924 (= res!225128 (and (= (_1!3372 lt!219297) token!491) (= (_2!3372 lt!219297) suffix!1342)))))

(declare-datatypes ((Option!1279 0))(
  ( (None!1278) (Some!1278 (v!16085 tuple2!6216)) )
))
(declare-fun lt!219303 () Option!1279)

(declare-fun get!1908 (Option!1279) tuple2!6216)

(assert (=> b!532924 (= lt!219297 (get!1908 lt!219303))))

(declare-fun b!532925 () Bool)

(declare-datatypes ((Unit!8905 0))(
  ( (Unit!8906) )
))
(declare-fun e!320929 () Unit!8905)

(declare-fun Unit!8907 () Unit!8905)

(assert (=> b!532925 (= e!320929 Unit!8907)))

(declare-fun b!532926 () Bool)

(declare-fun e!320943 () Bool)

(declare-fun e!320931 () Bool)

(declare-fun tp!170008 () Bool)

(assert (=> b!532926 (= e!320943 (and e!320931 tp!170008))))

(declare-fun b!532927 () Bool)

(declare-fun e!320934 () Bool)

(assert (=> b!532927 (= e!320934 (not true))))

(declare-fun lt!219295 () Option!1279)

(declare-fun lt!219301 () List!5116)

(assert (=> b!532927 (= (_2!3372 (v!16085 lt!219295)) lt!219301)))

(declare-fun lt!219294 () List!5116)

(declare-fun input!2705 () List!5116)

(declare-fun lt!219291 () Unit!8905)

(declare-fun lemmaSamePrefixThenSameSuffix!298 (List!5116 List!5116 List!5116 List!5116 List!5116) Unit!8905)

(assert (=> b!532927 (= lt!219291 (lemmaSamePrefixThenSameSuffix!298 lt!219294 (_2!3372 (v!16085 lt!219295)) lt!219294 lt!219301 input!2705))))

(declare-fun getSuffix!94 (List!5116 List!5116) List!5116)

(assert (=> b!532927 (= lt!219301 (getSuffix!94 input!2705 lt!219294))))

(declare-fun isPrefix!571 (List!5116 List!5116) Bool)

(declare-fun ++!1417 (List!5116 List!5116) List!5116)

(assert (=> b!532927 (isPrefix!571 lt!219294 (++!1417 lt!219294 (_2!3372 (v!16085 lt!219295))))))

(declare-fun lt!219292 () Unit!8905)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!422 (List!5116 List!5116) Unit!8905)

(assert (=> b!532927 (= lt!219292 (lemmaConcatTwoListThenFirstIsPrefix!422 lt!219294 (_2!3372 (v!16085 lt!219295))))))

(declare-fun lt!219299 () Unit!8905)

(declare-fun lemmaCharactersSize!8 (Token!1594) Unit!8905)

(assert (=> b!532927 (= lt!219299 (lemmaCharactersSize!8 token!491))))

(declare-fun lt!219300 () Unit!8905)

(assert (=> b!532927 (= lt!219300 (lemmaCharactersSize!8 (_1!3372 (v!16085 lt!219295))))))

(declare-fun lt!219293 () Unit!8905)

(assert (=> b!532927 (= lt!219293 e!320929)))

(declare-fun c!101649 () Bool)

(declare-fun lt!219296 () List!5116)

(declare-fun size!4129 (List!5116) Int)

(assert (=> b!532927 (= c!101649 (> (size!4129 lt!219294) (size!4129 lt!219296)))))

(declare-fun list!2125 (BalanceConc!3300) List!5116)

(declare-fun charsOf!558 (Token!1594) BalanceConc!3300)

(assert (=> b!532927 (= lt!219294 (list!2125 (charsOf!558 (_1!3372 (v!16085 lt!219295)))))))

(assert (=> b!532927 (= lt!219295 (Some!1278 (v!16085 lt!219295)))))

(declare-fun lt!219302 () Unit!8905)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!14 (List!5116 List!5116 List!5116 List!5116) Unit!8905)

(assert (=> b!532927 (= lt!219302 (lemmaConcatSameAndSameSizesThenSameLists!14 lt!219296 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!532928 () Bool)

(declare-fun e!320942 () Bool)

(declare-fun e!320937 () Bool)

(assert (=> b!532928 (= e!320942 e!320937)))

(declare-fun res!225131 () Bool)

(assert (=> b!532928 (=> (not res!225131) (not e!320937))))

(assert (=> b!532928 (= res!225131 (= lt!219296 input!2705))))

(assert (=> b!532928 (= lt!219296 (list!2125 (charsOf!558 token!491)))))

(declare-fun b!532929 () Bool)

(declare-fun res!225132 () Bool)

(assert (=> b!532929 (=> (not res!225132) (not e!320934))))

(declare-fun lt!219298 () List!5116)

(assert (=> b!532929 (= res!225132 (= (++!1417 lt!219296 suffix!1342) lt!219298))))

(declare-fun b!532930 () Bool)

(declare-fun e!320930 () Bool)

(declare-fun tp_is_empty!2881 () Bool)

(declare-fun tp!170007 () Bool)

(assert (=> b!532930 (= e!320930 (and tp_is_empty!2881 tp!170007))))

(declare-fun b!532931 () Bool)

(assert (=> b!532931 (= e!320935 e!320934)))

(declare-fun res!225126 () Bool)

(assert (=> b!532931 (=> (not res!225126) (not e!320934))))

(get-info :version)

(assert (=> b!532931 (= res!225126 ((_ is Some!1278) lt!219295))))

(declare-datatypes ((List!5117 0))(
  ( (Nil!5107) (Cons!5107 (h!10508 Rule!1658) (t!73902 List!5117)) )
))
(declare-fun rules!3103 () List!5117)

(declare-datatypes ((LexerInterface!815 0))(
  ( (LexerInterfaceExt!812 (__x!3805 Int)) (Lexer!813) )
))
(declare-fun thiss!22590 () LexerInterface!815)

(declare-fun maxPrefix!513 (LexerInterface!815 List!5117 List!5116) Option!1279)

(assert (=> b!532931 (= lt!219295 (maxPrefix!513 thiss!22590 rules!3103 input!2705))))

(declare-fun b!532932 () Bool)

(declare-fun res!225129 () Bool)

(assert (=> b!532932 (=> (not res!225129) (not e!320942))))

(declare-fun rulesInvariant!778 (LexerInterface!815 List!5117) Bool)

(assert (=> b!532932 (= res!225129 (rulesInvariant!778 thiss!22590 rules!3103))))

(declare-fun b!532933 () Bool)

(assert (=> b!532933 (= e!320937 e!320936)))

(declare-fun res!225124 () Bool)

(assert (=> b!532933 (=> (not res!225124) (not e!320936))))

(declare-fun isDefined!1091 (Option!1279) Bool)

(assert (=> b!532933 (= res!225124 (isDefined!1091 lt!219303))))

(assert (=> b!532933 (= lt!219303 (maxPrefix!513 thiss!22590 rules!3103 lt!219298))))

(assert (=> b!532933 (= lt!219298 (++!1417 input!2705 suffix!1342))))

(declare-fun b!532934 () Bool)

(declare-fun e!320932 () Bool)

(declare-fun tp!170003 () Bool)

(assert (=> b!532934 (= e!320932 (and tp_is_empty!2881 tp!170003))))

(declare-fun b!532935 () Bool)

(declare-fun res!225127 () Bool)

(assert (=> b!532935 (=> (not res!225127) (not e!320942))))

(declare-fun isEmpty!3694 (List!5117) Bool)

(assert (=> b!532935 (= res!225127 (not (isEmpty!3694 rules!3103)))))

(declare-fun res!225125 () Bool)

(assert (=> start!49040 (=> (not res!225125) (not e!320942))))

(assert (=> start!49040 (= res!225125 ((_ is Lexer!813) thiss!22590))))

(assert (=> start!49040 e!320942))

(assert (=> start!49040 e!320930))

(assert (=> start!49040 e!320943))

(declare-fun inv!6411 (Token!1594) Bool)

(assert (=> start!49040 (and (inv!6411 token!491) e!320944)))

(assert (=> start!49040 true))

(assert (=> start!49040 e!320932))

(declare-fun e!320939 () Bool)

(assert (=> b!532936 (= e!320939 (and tp!170009 tp!170004))))

(declare-fun b!532937 () Bool)

(declare-fun Unit!8908 () Unit!8905)

(assert (=> b!532937 (= e!320929 Unit!8908)))

(assert (=> b!532937 false))

(declare-fun e!320940 () Bool)

(assert (=> b!532938 (= e!320940 (and tp!170012 tp!170011))))

(declare-fun b!532939 () Bool)

(declare-fun tp!170010 () Bool)

(declare-fun inv!6408 (String!6508) Bool)

(declare-fun inv!6412 (TokenValueInjection!1674) Bool)

(assert (=> b!532939 (= e!320931 (and tp!170010 (inv!6408 (tag!1191 (h!10508 rules!3103))) (inv!6412 (transformation!929 (h!10508 rules!3103))) e!320940))))

(declare-fun b!532940 () Bool)

(declare-fun tp!170005 () Bool)

(assert (=> b!532940 (= e!320938 (and tp!170005 (inv!6408 (tag!1191 (rule!1631 token!491))) (inv!6412 (transformation!929 (rule!1631 token!491))) e!320939))))

(declare-fun b!532941 () Bool)

(declare-fun res!225130 () Bool)

(assert (=> b!532941 (=> (not res!225130) (not e!320942))))

(declare-fun isEmpty!3695 (List!5116) Bool)

(assert (=> b!532941 (= res!225130 (not (isEmpty!3695 input!2705)))))

(assert (= (and start!49040 res!225125) b!532935))

(assert (= (and b!532935 res!225127) b!532932))

(assert (= (and b!532932 res!225129) b!532941))

(assert (= (and b!532941 res!225130) b!532928))

(assert (= (and b!532928 res!225131) b!532933))

(assert (= (and b!532933 res!225124) b!532924))

(assert (= (and b!532924 res!225128) b!532931))

(assert (= (and b!532931 res!225126) b!532929))

(assert (= (and b!532929 res!225132) b!532927))

(assert (= (and b!532927 c!101649) b!532937))

(assert (= (and b!532927 (not c!101649)) b!532925))

(assert (= (and start!49040 ((_ is Cons!5106) suffix!1342)) b!532930))

(assert (= b!532939 b!532938))

(assert (= b!532926 b!532939))

(assert (= (and start!49040 ((_ is Cons!5107) rules!3103)) b!532926))

(assert (= b!532940 b!532936))

(assert (= b!532923 b!532940))

(assert (= start!49040 b!532923))

(assert (= (and start!49040 ((_ is Cons!5106) input!2705)) b!532934))

(declare-fun m!778209 () Bool)

(assert (=> b!532932 m!778209))

(declare-fun m!778211 () Bool)

(assert (=> b!532924 m!778211))

(declare-fun m!778213 () Bool)

(assert (=> b!532931 m!778213))

(declare-fun m!778215 () Bool)

(assert (=> b!532940 m!778215))

(declare-fun m!778217 () Bool)

(assert (=> b!532940 m!778217))

(declare-fun m!778219 () Bool)

(assert (=> b!532941 m!778219))

(declare-fun m!778221 () Bool)

(assert (=> b!532929 m!778221))

(declare-fun m!778223 () Bool)

(assert (=> b!532939 m!778223))

(declare-fun m!778225 () Bool)

(assert (=> b!532939 m!778225))

(declare-fun m!778227 () Bool)

(assert (=> b!532933 m!778227))

(declare-fun m!778229 () Bool)

(assert (=> b!532933 m!778229))

(declare-fun m!778231 () Bool)

(assert (=> b!532933 m!778231))

(declare-fun m!778233 () Bool)

(assert (=> start!49040 m!778233))

(declare-fun m!778235 () Bool)

(assert (=> b!532935 m!778235))

(declare-fun m!778237 () Bool)

(assert (=> b!532927 m!778237))

(declare-fun m!778239 () Bool)

(assert (=> b!532927 m!778239))

(declare-fun m!778241 () Bool)

(assert (=> b!532927 m!778241))

(declare-fun m!778243 () Bool)

(assert (=> b!532927 m!778243))

(declare-fun m!778245 () Bool)

(assert (=> b!532927 m!778245))

(declare-fun m!778247 () Bool)

(assert (=> b!532927 m!778247))

(declare-fun m!778249 () Bool)

(assert (=> b!532927 m!778249))

(assert (=> b!532927 m!778245))

(declare-fun m!778251 () Bool)

(assert (=> b!532927 m!778251))

(declare-fun m!778253 () Bool)

(assert (=> b!532927 m!778253))

(declare-fun m!778255 () Bool)

(assert (=> b!532927 m!778255))

(assert (=> b!532927 m!778253))

(declare-fun m!778257 () Bool)

(assert (=> b!532927 m!778257))

(declare-fun m!778259 () Bool)

(assert (=> b!532927 m!778259))

(declare-fun m!778261 () Bool)

(assert (=> b!532923 m!778261))

(declare-fun m!778263 () Bool)

(assert (=> b!532928 m!778263))

(assert (=> b!532928 m!778263))

(declare-fun m!778265 () Bool)

(assert (=> b!532928 m!778265))

(check-sat (not b!532930) b_and!52079 (not b_next!14441) (not b!532935) (not b_next!14443) (not b!532931) (not b!532934) b_and!52077 (not b!532929) b_and!52081 (not b!532939) (not b!532928) (not b_next!14445) tp_is_empty!2881 (not b!532932) (not start!49040) (not b!532940) (not b!532923) (not b!532933) (not b!532927) (not b_next!14447) (not b!532941) (not b!532924) b_and!52075 (not b!532926))
(check-sat (not b_next!14445) b_and!52079 (not b_next!14441) (not b_next!14447) (not b_next!14443) b_and!52077 b_and!52081 b_and!52075)
