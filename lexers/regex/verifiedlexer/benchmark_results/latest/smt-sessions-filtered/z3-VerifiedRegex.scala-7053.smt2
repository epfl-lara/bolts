; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374224 () Bool)

(assert start!374224)

(declare-fun b!3975964 () Bool)

(declare-fun b_free!110265 () Bool)

(declare-fun b_next!110969 () Bool)

(assert (=> b!3975964 (= b_free!110265 (not b_next!110969))))

(declare-fun tp!1212260 () Bool)

(declare-fun b_and!305631 () Bool)

(assert (=> b!3975964 (= tp!1212260 b_and!305631)))

(declare-fun b_free!110267 () Bool)

(declare-fun b_next!110971 () Bool)

(assert (=> b!3975964 (= b_free!110267 (not b_next!110971))))

(declare-fun tp!1212254 () Bool)

(declare-fun b_and!305633 () Bool)

(assert (=> b!3975964 (= tp!1212254 b_and!305633)))

(declare-fun b!3975961 () Bool)

(declare-fun b_free!110269 () Bool)

(declare-fun b_next!110973 () Bool)

(assert (=> b!3975961 (= b_free!110269 (not b_next!110973))))

(declare-fun tp!1212253 () Bool)

(declare-fun b_and!305635 () Bool)

(assert (=> b!3975961 (= tp!1212253 b_and!305635)))

(declare-fun b_free!110271 () Bool)

(declare-fun b_next!110975 () Bool)

(assert (=> b!3975961 (= b_free!110271 (not b_next!110975))))

(declare-fun tp!1212258 () Bool)

(declare-fun b_and!305637 () Bool)

(assert (=> b!3975961 (= tp!1212258 b_and!305637)))

(declare-fun b!3975938 () Bool)

(declare-fun e!2463423 () Bool)

(declare-fun e!2463420 () Bool)

(declare-fun tp!1212259 () Bool)

(assert (=> b!3975938 (= e!2463423 (and e!2463420 tp!1212259))))

(declare-fun b!3975939 () Bool)

(declare-fun e!2463407 () Bool)

(declare-fun e!2463415 () Bool)

(assert (=> b!3975939 (= e!2463407 e!2463415)))

(declare-fun res!1610259 () Bool)

(assert (=> b!3975939 (=> res!1610259 e!2463415)))

(declare-datatypes ((C!23384 0))(
  ( (C!23385 (val!13786 Int)) )
))
(declare-datatypes ((List!42600 0))(
  ( (Nil!42476) (Cons!42476 (h!47896 C!23384) (t!331087 List!42600)) )
))
(declare-datatypes ((IArray!25815 0))(
  ( (IArray!25816 (innerList!12965 List!42600)) )
))
(declare-datatypes ((Conc!12905 0))(
  ( (Node!12905 (left!32146 Conc!12905) (right!32476 Conc!12905) (csize!26040 Int) (cheight!13116 Int)) (Leaf!19959 (xs!16211 IArray!25815) (csize!26041 Int)) (Empty!12905) )
))
(declare-datatypes ((BalanceConc!25404 0))(
  ( (BalanceConc!25405 (c!689238 Conc!12905)) )
))
(declare-datatypes ((List!42601 0))(
  ( (Nil!42477) (Cons!42477 (h!47897 (_ BitVec 16)) (t!331088 List!42601)) )
))
(declare-datatypes ((TokenValue!6924 0))(
  ( (FloatLiteralValue!13848 (text!48913 List!42601)) (TokenValueExt!6923 (__x!26065 Int)) (Broken!34620 (value!211387 List!42601)) (Object!7047) (End!6924) (Def!6924) (Underscore!6924) (Match!6924) (Else!6924) (Error!6924) (Case!6924) (If!6924) (Extends!6924) (Abstract!6924) (Class!6924) (Val!6924) (DelimiterValue!13848 (del!6984 List!42601)) (KeywordValue!6930 (value!211388 List!42601)) (CommentValue!13848 (value!211389 List!42601)) (WhitespaceValue!13848 (value!211390 List!42601)) (IndentationValue!6924 (value!211391 List!42601)) (String!48337) (Int32!6924) (Broken!34621 (value!211392 List!42601)) (Boolean!6925) (Unit!61126) (OperatorValue!6927 (op!6984 List!42601)) (IdentifierValue!13848 (value!211393 List!42601)) (IdentifierValue!13849 (value!211394 List!42601)) (WhitespaceValue!13849 (value!211395 List!42601)) (True!13848) (False!13848) (Broken!34622 (value!211396 List!42601)) (Broken!34623 (value!211397 List!42601)) (True!13849) (RightBrace!6924) (RightBracket!6924) (Colon!6924) (Null!6924) (Comma!6924) (LeftBracket!6924) (False!13849) (LeftBrace!6924) (ImaginaryLiteralValue!6924 (text!48914 List!42601)) (StringLiteralValue!20772 (value!211398 List!42601)) (EOFValue!6924 (value!211399 List!42601)) (IdentValue!6924 (value!211400 List!42601)) (DelimiterValue!13849 (value!211401 List!42601)) (DedentValue!6924 (value!211402 List!42601)) (NewLineValue!6924 (value!211403 List!42601)) (IntegerValue!20772 (value!211404 (_ BitVec 32)) (text!48915 List!42601)) (IntegerValue!20773 (value!211405 Int) (text!48916 List!42601)) (Times!6924) (Or!6924) (Equal!6924) (Minus!6924) (Broken!34624 (value!211406 List!42601)) (And!6924) (Div!6924) (LessEqual!6924) (Mod!6924) (Concat!18523) (Not!6924) (Plus!6924) (SpaceValue!6924 (value!211407 List!42601)) (IntegerValue!20774 (value!211408 Int) (text!48917 List!42601)) (StringLiteralValue!20773 (text!48918 List!42601)) (FloatLiteralValue!13849 (text!48919 List!42601)) (BytesLiteralValue!6924 (value!211409 List!42601)) (CommentValue!13849 (value!211410 List!42601)) (StringLiteralValue!20774 (value!211411 List!42601)) (ErrorTokenValue!6924 (msg!6985 List!42601)) )
))
(declare-datatypes ((Regex!11599 0))(
  ( (ElementMatch!11599 (c!689239 C!23384)) (Concat!18524 (regOne!23710 Regex!11599) (regTwo!23710 Regex!11599)) (EmptyExpr!11599) (Star!11599 (reg!11928 Regex!11599)) (EmptyLang!11599) (Union!11599 (regOne!23711 Regex!11599) (regTwo!23711 Regex!11599)) )
))
(declare-datatypes ((String!48338 0))(
  ( (String!48339 (value!211412 String)) )
))
(declare-datatypes ((TokenValueInjection!13276 0))(
  ( (TokenValueInjection!13277 (toValue!9182 Int) (toChars!9041 Int)) )
))
(declare-datatypes ((Rule!13188 0))(
  ( (Rule!13189 (regex!6694 Regex!11599) (tag!7554 String!48338) (isSeparator!6694 Bool) (transformation!6694 TokenValueInjection!13276)) )
))
(declare-datatypes ((Token!12526 0))(
  ( (Token!12527 (value!211413 TokenValue!6924) (rule!9692 Rule!13188) (size!31778 Int) (originalCharacters!7294 List!42600)) )
))
(declare-datatypes ((tuple2!41720 0))(
  ( (tuple2!41721 (_1!23994 Token!12526) (_2!23994 List!42600)) )
))
(declare-datatypes ((Option!9108 0))(
  ( (None!9107) (Some!9107 (v!39455 tuple2!41720)) )
))
(declare-fun lt!1394026 () Option!9108)

(declare-fun lt!1394039 () Option!9108)

(assert (=> b!3975939 (= res!1610259 (not (= lt!1394026 lt!1394039)))))

(declare-fun lt!1394025 () Token!12526)

(declare-fun suffixResult!105 () List!42600)

(assert (=> b!3975939 (= lt!1394026 (Some!9107 (tuple2!41721 lt!1394025 suffixResult!105)))))

(declare-fun token!484 () Token!12526)

(declare-datatypes ((LexerInterface!6283 0))(
  ( (LexerInterfaceExt!6280 (__x!26066 Int)) (Lexer!6281) )
))
(declare-fun thiss!21717 () LexerInterface!6283)

(declare-fun lt!1394009 () List!42600)

(declare-fun maxPrefixOneRule!2615 (LexerInterface!6283 Rule!13188 List!42600) Option!9108)

(assert (=> b!3975939 (= lt!1394026 (maxPrefixOneRule!2615 thiss!21717 (rule!9692 token!484) lt!1394009))))

(declare-fun lt!1394031 () TokenValue!6924)

(declare-fun lt!1394016 () List!42600)

(declare-fun lt!1394021 () Int)

(assert (=> b!3975939 (= lt!1394025 (Token!12527 lt!1394031 (rule!9692 token!484) lt!1394021 lt!1394016))))

(declare-fun apply!9905 (TokenValueInjection!13276 BalanceConc!25404) TokenValue!6924)

(declare-fun seqFromList!4933 (List!42600) BalanceConc!25404)

(assert (=> b!3975939 (= lt!1394031 (apply!9905 (transformation!6694 (rule!9692 token!484)) (seqFromList!4933 lt!1394016)))))

(declare-datatypes ((List!42602 0))(
  ( (Nil!42478) (Cons!42478 (h!47898 Rule!13188) (t!331089 List!42602)) )
))
(declare-fun rules!2999 () List!42602)

(declare-datatypes ((Unit!61127 0))(
  ( (Unit!61128) )
))
(declare-fun lt!1394029 () Unit!61127)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1437 (LexerInterface!6283 List!42602 List!42600 List!42600 List!42600 Rule!13188) Unit!61127)

(assert (=> b!3975939 (= lt!1394029 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1437 thiss!21717 rules!2999 lt!1394016 lt!1394009 suffixResult!105 (rule!9692 token!484)))))

(declare-fun lt!1394023 () List!42600)

(assert (=> b!3975939 (= lt!1394023 suffixResult!105)))

(declare-fun lt!1394013 () Unit!61127)

(declare-fun lemmaSamePrefixThenSameSuffix!1968 (List!42600 List!42600 List!42600 List!42600 List!42600) Unit!61127)

(assert (=> b!3975939 (= lt!1394013 (lemmaSamePrefixThenSameSuffix!1968 lt!1394016 lt!1394023 lt!1394016 suffixResult!105 lt!1394009))))

(declare-fun lt!1394035 () List!42600)

(declare-fun isPrefix!3781 (List!42600 List!42600) Bool)

(assert (=> b!3975939 (isPrefix!3781 lt!1394016 lt!1394035)))

(declare-fun lt!1394027 () Unit!61127)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2624 (List!42600 List!42600) Unit!61127)

(assert (=> b!3975939 (= lt!1394027 (lemmaConcatTwoListThenFirstIsPrefix!2624 lt!1394016 lt!1394023))))

(declare-fun b!3975940 () Bool)

(declare-fun e!2463399 () Bool)

(assert (=> b!3975940 (= e!2463399 true)))

(declare-fun lt!1394036 () tuple2!41720)

(declare-fun lt!1394011 () List!42600)

(assert (=> b!3975940 (and (= suffixResult!105 lt!1394011) (= lt!1394036 (tuple2!41721 lt!1394025 lt!1394011)))))

(declare-fun lt!1394010 () Unit!61127)

(assert (=> b!3975940 (= lt!1394010 (lemmaSamePrefixThenSameSuffix!1968 lt!1394016 suffixResult!105 lt!1394016 lt!1394011 lt!1394009))))

(declare-fun lt!1394033 () List!42600)

(assert (=> b!3975940 (isPrefix!3781 lt!1394016 lt!1394033)))

(declare-fun lt!1394018 () Unit!61127)

(assert (=> b!3975940 (= lt!1394018 (lemmaConcatTwoListThenFirstIsPrefix!2624 lt!1394016 lt!1394011))))

(declare-fun b!3975941 () Bool)

(declare-fun e!2463411 () Bool)

(declare-fun e!2463412 () Bool)

(assert (=> b!3975941 (= e!2463411 e!2463412)))

(declare-fun res!1610251 () Bool)

(assert (=> b!3975941 (=> (not res!1610251) (not e!2463412))))

(declare-fun lt!1394015 () List!42600)

(declare-fun lt!1394032 () List!42600)

(assert (=> b!3975941 (= res!1610251 (= lt!1394015 lt!1394032))))

(declare-fun prefix!494 () List!42600)

(declare-fun newSuffix!27 () List!42600)

(declare-fun ++!11096 (List!42600 List!42600) List!42600)

(assert (=> b!3975941 (= lt!1394032 (++!11096 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42600)

(assert (=> b!3975941 (= lt!1394015 (++!11096 lt!1394016 newSuffixResult!27))))

(declare-fun b!3975942 () Bool)

(declare-fun e!2463422 () Bool)

(declare-fun e!2463406 () Bool)

(assert (=> b!3975942 (= e!2463422 e!2463406)))

(declare-fun res!1610249 () Bool)

(assert (=> b!3975942 (=> res!1610249 e!2463406)))

(assert (=> b!3975942 (= res!1610249 (not (isPrefix!3781 lt!1394016 lt!1394009)))))

(assert (=> b!3975942 (isPrefix!3781 prefix!494 lt!1394009)))

(declare-fun lt!1394020 () Unit!61127)

(declare-fun suffix!1299 () List!42600)

(assert (=> b!3975942 (= lt!1394020 (lemmaConcatTwoListThenFirstIsPrefix!2624 prefix!494 suffix!1299))))

(declare-fun lt!1394028 () List!42600)

(assert (=> b!3975942 (isPrefix!3781 lt!1394016 lt!1394028)))

(declare-fun lt!1394012 () Unit!61127)

(assert (=> b!3975942 (= lt!1394012 (lemmaConcatTwoListThenFirstIsPrefix!2624 lt!1394016 suffixResult!105))))

(declare-fun b!3975943 () Bool)

(declare-fun res!1610247 () Bool)

(declare-fun e!2463409 () Bool)

(assert (=> b!3975943 (=> (not res!1610247) (not e!2463409))))

(declare-fun size!31779 (List!42600) Int)

(assert (=> b!3975943 (= res!1610247 (>= (size!31779 suffix!1299) (size!31779 newSuffix!27)))))

(declare-fun b!3975944 () Bool)

(declare-fun e!2463405 () Bool)

(declare-fun tp_is_empty!20169 () Bool)

(declare-fun tp!1212252 () Bool)

(assert (=> b!3975944 (= e!2463405 (and tp_is_empty!20169 tp!1212252))))

(declare-fun b!3975945 () Bool)

(declare-fun res!1610260 () Bool)

(assert (=> b!3975945 (=> (not res!1610260) (not e!2463409))))

(assert (=> b!3975945 (= res!1610260 (isPrefix!3781 newSuffix!27 suffix!1299))))

(declare-fun res!1610258 () Bool)

(assert (=> start!374224 (=> (not res!1610258) (not e!2463409))))

(get-info :version)

(assert (=> start!374224 (= res!1610258 ((_ is Lexer!6281) thiss!21717))))

(assert (=> start!374224 e!2463409))

(declare-fun e!2463416 () Bool)

(assert (=> start!374224 e!2463416))

(declare-fun e!2463403 () Bool)

(declare-fun inv!56752 (Token!12526) Bool)

(assert (=> start!374224 (and (inv!56752 token!484) e!2463403)))

(declare-fun e!2463414 () Bool)

(assert (=> start!374224 e!2463414))

(assert (=> start!374224 e!2463405))

(declare-fun e!2463402 () Bool)

(assert (=> start!374224 e!2463402))

(assert (=> start!374224 true))

(assert (=> start!374224 e!2463423))

(declare-fun e!2463421 () Bool)

(assert (=> start!374224 e!2463421))

(declare-fun b!3975946 () Bool)

(declare-fun tp!1212257 () Bool)

(assert (=> b!3975946 (= e!2463416 (and tp_is_empty!20169 tp!1212257))))

(declare-fun b!3975947 () Bool)

(declare-fun tp!1212248 () Bool)

(assert (=> b!3975947 (= e!2463414 (and tp_is_empty!20169 tp!1212248))))

(declare-fun b!3975948 () Bool)

(declare-fun tp!1212256 () Bool)

(assert (=> b!3975948 (= e!2463402 (and tp_is_empty!20169 tp!1212256))))

(declare-fun b!3975949 () Bool)

(declare-fun e!2463417 () Bool)

(assert (=> b!3975949 (= e!2463417 (not e!2463422))))

(declare-fun res!1610255 () Bool)

(assert (=> b!3975949 (=> res!1610255 e!2463422)))

(assert (=> b!3975949 (= res!1610255 (not (= lt!1394028 lt!1394009)))))

(assert (=> b!3975949 (= lt!1394028 (++!11096 lt!1394016 suffixResult!105))))

(declare-fun lt!1394037 () Unit!61127)

(declare-fun lemmaInv!909 (TokenValueInjection!13276) Unit!61127)

(assert (=> b!3975949 (= lt!1394037 (lemmaInv!909 (transformation!6694 (rule!9692 token!484))))))

(declare-fun ruleValid!2626 (LexerInterface!6283 Rule!13188) Bool)

(assert (=> b!3975949 (ruleValid!2626 thiss!21717 (rule!9692 token!484))))

(declare-fun lt!1394014 () Unit!61127)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1700 (LexerInterface!6283 Rule!13188 List!42602) Unit!61127)

(assert (=> b!3975949 (= lt!1394014 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1700 thiss!21717 (rule!9692 token!484) rules!2999))))

(declare-fun b!3975950 () Bool)

(declare-fun e!2463413 () Bool)

(assert (=> b!3975950 (= e!2463413 e!2463407)))

(declare-fun res!1610250 () Bool)

(assert (=> b!3975950 (=> res!1610250 e!2463407)))

(declare-fun lt!1394024 () List!42600)

(assert (=> b!3975950 (= res!1610250 (or (not (= lt!1394009 lt!1394024)) (not (= lt!1394009 lt!1394035))))))

(assert (=> b!3975950 (= lt!1394024 lt!1394035)))

(assert (=> b!3975950 (= lt!1394035 (++!11096 lt!1394016 lt!1394023))))

(declare-fun lt!1394017 () List!42600)

(assert (=> b!3975950 (= lt!1394024 (++!11096 lt!1394017 suffix!1299))))

(declare-fun lt!1394034 () List!42600)

(assert (=> b!3975950 (= lt!1394023 (++!11096 lt!1394034 suffix!1299))))

(declare-fun lt!1394038 () Unit!61127)

(declare-fun lemmaConcatAssociativity!2416 (List!42600 List!42600 List!42600) Unit!61127)

(assert (=> b!3975950 (= lt!1394038 (lemmaConcatAssociativity!2416 lt!1394016 lt!1394034 suffix!1299))))

(declare-fun b!3975951 () Bool)

(declare-fun res!1610252 () Bool)

(declare-fun e!2463404 () Bool)

(assert (=> b!3975951 (=> (not res!1610252) (not e!2463404))))

(assert (=> b!3975951 (= res!1610252 (= (size!31778 token!484) (size!31779 (originalCharacters!7294 token!484))))))

(declare-fun b!3975952 () Bool)

(declare-fun res!1610261 () Bool)

(assert (=> b!3975952 (=> (not res!1610261) (not e!2463404))))

(assert (=> b!3975952 (= res!1610261 (= (value!211413 token!484) lt!1394031))))

(declare-fun b!3975953 () Bool)

(declare-fun tp!1212251 () Bool)

(assert (=> b!3975953 (= e!2463421 (and tp_is_empty!20169 tp!1212251))))

(declare-fun b!3975954 () Bool)

(declare-fun res!1610254 () Bool)

(assert (=> b!3975954 (=> (not res!1610254) (not e!2463409))))

(declare-fun rulesInvariant!5626 (LexerInterface!6283 List!42602) Bool)

(assert (=> b!3975954 (= res!1610254 (rulesInvariant!5626 thiss!21717 rules!2999))))

(declare-fun b!3975955 () Bool)

(declare-fun res!1610257 () Bool)

(assert (=> b!3975955 (=> (not res!1610257) (not e!2463409))))

(declare-fun isEmpty!25404 (List!42602) Bool)

(assert (=> b!3975955 (= res!1610257 (not (isEmpty!25404 rules!2999)))))

(declare-fun b!3975956 () Bool)

(assert (=> b!3975956 (= e!2463404 (and (= (size!31778 token!484) lt!1394021) (= (originalCharacters!7294 token!484) lt!1394016)))))

(declare-fun b!3975957 () Bool)

(declare-fun tp!1212250 () Bool)

(declare-fun e!2463418 () Bool)

(declare-fun inv!21 (TokenValue!6924) Bool)

(assert (=> b!3975957 (= e!2463403 (and (inv!21 (value!211413 token!484)) e!2463418 tp!1212250))))

(declare-fun e!2463419 () Bool)

(declare-fun b!3975958 () Bool)

(declare-fun tp!1212255 () Bool)

(declare-fun inv!56749 (String!48338) Bool)

(declare-fun inv!56753 (TokenValueInjection!13276) Bool)

(assert (=> b!3975958 (= e!2463420 (and tp!1212255 (inv!56749 (tag!7554 (h!47898 rules!2999))) (inv!56753 (transformation!6694 (h!47898 rules!2999))) e!2463419))))

(declare-fun b!3975959 () Bool)

(assert (=> b!3975959 (= e!2463406 e!2463413)))

(declare-fun res!1610253 () Bool)

(assert (=> b!3975959 (=> res!1610253 e!2463413)))

(assert (=> b!3975959 (= res!1610253 (not (= lt!1394017 prefix!494)))))

(assert (=> b!3975959 (= lt!1394017 (++!11096 lt!1394016 lt!1394034))))

(declare-fun getSuffix!2212 (List!42600 List!42600) List!42600)

(assert (=> b!3975959 (= lt!1394034 (getSuffix!2212 prefix!494 lt!1394016))))

(assert (=> b!3975959 (isPrefix!3781 lt!1394016 prefix!494)))

(declare-fun lt!1394008 () Unit!61127)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!359 (List!42600 List!42600 List!42600) Unit!61127)

(assert (=> b!3975959 (= lt!1394008 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!359 prefix!494 lt!1394016 lt!1394009))))

(declare-fun b!3975960 () Bool)

(declare-fun e!2463408 () Bool)

(assert (=> b!3975960 (= e!2463408 e!2463399)))

(declare-fun res!1610256 () Bool)

(assert (=> b!3975960 (=> res!1610256 e!2463399)))

(assert (=> b!3975960 (= res!1610256 (not (= lt!1394033 lt!1394009)))))

(assert (=> b!3975960 (= lt!1394033 (++!11096 lt!1394016 lt!1394011))))

(assert (=> b!3975960 (= lt!1394011 (getSuffix!2212 lt!1394009 lt!1394016))))

(assert (=> b!3975960 e!2463404))

(declare-fun res!1610263 () Bool)

(assert (=> b!3975960 (=> (not res!1610263) (not e!2463404))))

(assert (=> b!3975960 (= res!1610263 (isPrefix!3781 lt!1394009 lt!1394009))))

(declare-fun lt!1394019 () Unit!61127)

(declare-fun lemmaIsPrefixRefl!2373 (List!42600 List!42600) Unit!61127)

(assert (=> b!3975960 (= lt!1394019 (lemmaIsPrefixRefl!2373 lt!1394009 lt!1394009))))

(declare-fun e!2463424 () Bool)

(assert (=> b!3975961 (= e!2463424 (and tp!1212253 tp!1212258))))

(declare-fun b!3975962 () Bool)

(declare-fun tp!1212249 () Bool)

(assert (=> b!3975962 (= e!2463418 (and tp!1212249 (inv!56749 (tag!7554 (rule!9692 token!484))) (inv!56753 (transformation!6694 (rule!9692 token!484))) e!2463424))))

(declare-fun b!3975963 () Bool)

(assert (=> b!3975963 (= e!2463409 e!2463411)))

(declare-fun res!1610262 () Bool)

(assert (=> b!3975963 (=> (not res!1610262) (not e!2463411))))

(declare-fun lt!1394007 () Int)

(assert (=> b!3975963 (= res!1610262 (>= lt!1394007 lt!1394021))))

(assert (=> b!3975963 (= lt!1394021 (size!31779 lt!1394016))))

(assert (=> b!3975963 (= lt!1394007 (size!31779 prefix!494))))

(declare-fun list!15764 (BalanceConc!25404) List!42600)

(declare-fun charsOf!4510 (Token!12526) BalanceConc!25404)

(assert (=> b!3975963 (= lt!1394016 (list!15764 (charsOf!4510 token!484)))))

(assert (=> b!3975964 (= e!2463419 (and tp!1212260 tp!1212254))))

(declare-fun b!3975965 () Bool)

(assert (=> b!3975965 (= e!2463415 e!2463408)))

(declare-fun res!1610248 () Bool)

(assert (=> b!3975965 (=> res!1610248 e!2463408)))

(declare-fun matchR!5576 (Regex!11599 List!42600) Bool)

(assert (=> b!3975965 (= res!1610248 (not (matchR!5576 (regex!6694 (rule!9692 token!484)) lt!1394016)))))

(assert (=> b!3975965 (isPrefix!3781 lt!1394016 lt!1394032)))

(declare-fun lt!1394030 () Unit!61127)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!614 (List!42600 List!42600 List!42600) Unit!61127)

(assert (=> b!3975965 (= lt!1394030 (lemmaPrefixStaysPrefixWhenAddingToSuffix!614 lt!1394016 prefix!494 newSuffix!27))))

(declare-fun lt!1394022 () Unit!61127)

(assert (=> b!3975965 (= lt!1394022 (lemmaPrefixStaysPrefixWhenAddingToSuffix!614 lt!1394016 prefix!494 suffix!1299))))

(declare-fun b!3975966 () Bool)

(assert (=> b!3975966 (= e!2463412 e!2463417)))

(declare-fun res!1610264 () Bool)

(assert (=> b!3975966 (=> (not res!1610264) (not e!2463417))))

(declare-fun maxPrefix!3581 (LexerInterface!6283 List!42602 List!42600) Option!9108)

(assert (=> b!3975966 (= res!1610264 (= (maxPrefix!3581 thiss!21717 rules!2999 lt!1394009) lt!1394039))))

(assert (=> b!3975966 (= lt!1394039 (Some!9107 lt!1394036))))

(assert (=> b!3975966 (= lt!1394036 (tuple2!41721 token!484 suffixResult!105))))

(assert (=> b!3975966 (= lt!1394009 (++!11096 prefix!494 suffix!1299))))

(assert (= (and start!374224 res!1610258) b!3975955))

(assert (= (and b!3975955 res!1610257) b!3975954))

(assert (= (and b!3975954 res!1610254) b!3975943))

(assert (= (and b!3975943 res!1610247) b!3975945))

(assert (= (and b!3975945 res!1610260) b!3975963))

(assert (= (and b!3975963 res!1610262) b!3975941))

(assert (= (and b!3975941 res!1610251) b!3975966))

(assert (= (and b!3975966 res!1610264) b!3975949))

(assert (= (and b!3975949 (not res!1610255)) b!3975942))

(assert (= (and b!3975942 (not res!1610249)) b!3975959))

(assert (= (and b!3975959 (not res!1610253)) b!3975950))

(assert (= (and b!3975950 (not res!1610250)) b!3975939))

(assert (= (and b!3975939 (not res!1610259)) b!3975965))

(assert (= (and b!3975965 (not res!1610248)) b!3975960))

(assert (= (and b!3975960 res!1610263) b!3975952))

(assert (= (and b!3975952 res!1610261) b!3975951))

(assert (= (and b!3975951 res!1610252) b!3975956))

(assert (= (and b!3975960 (not res!1610256)) b!3975940))

(assert (= (and start!374224 ((_ is Cons!42476) prefix!494)) b!3975946))

(assert (= b!3975962 b!3975961))

(assert (= b!3975957 b!3975962))

(assert (= start!374224 b!3975957))

(assert (= (and start!374224 ((_ is Cons!42476) suffixResult!105)) b!3975947))

(assert (= (and start!374224 ((_ is Cons!42476) suffix!1299)) b!3975944))

(assert (= (and start!374224 ((_ is Cons!42476) newSuffix!27)) b!3975948))

(assert (= b!3975958 b!3975964))

(assert (= b!3975938 b!3975958))

(assert (= (and start!374224 ((_ is Cons!42478) rules!2999)) b!3975938))

(assert (= (and start!374224 ((_ is Cons!42476) newSuffixResult!27)) b!3975953))

(declare-fun m!4547035 () Bool)

(assert (=> b!3975950 m!4547035))

(declare-fun m!4547037 () Bool)

(assert (=> b!3975950 m!4547037))

(declare-fun m!4547039 () Bool)

(assert (=> b!3975950 m!4547039))

(declare-fun m!4547041 () Bool)

(assert (=> b!3975950 m!4547041))

(declare-fun m!4547043 () Bool)

(assert (=> b!3975951 m!4547043))

(declare-fun m!4547045 () Bool)

(assert (=> b!3975943 m!4547045))

(declare-fun m!4547047 () Bool)

(assert (=> b!3975943 m!4547047))

(declare-fun m!4547049 () Bool)

(assert (=> b!3975949 m!4547049))

(declare-fun m!4547051 () Bool)

(assert (=> b!3975949 m!4547051))

(declare-fun m!4547053 () Bool)

(assert (=> b!3975949 m!4547053))

(declare-fun m!4547055 () Bool)

(assert (=> b!3975949 m!4547055))

(declare-fun m!4547057 () Bool)

(assert (=> b!3975960 m!4547057))

(declare-fun m!4547059 () Bool)

(assert (=> b!3975960 m!4547059))

(declare-fun m!4547061 () Bool)

(assert (=> b!3975960 m!4547061))

(declare-fun m!4547063 () Bool)

(assert (=> b!3975960 m!4547063))

(declare-fun m!4547065 () Bool)

(assert (=> b!3975945 m!4547065))

(declare-fun m!4547067 () Bool)

(assert (=> b!3975941 m!4547067))

(declare-fun m!4547069 () Bool)

(assert (=> b!3975941 m!4547069))

(declare-fun m!4547071 () Bool)

(assert (=> b!3975940 m!4547071))

(declare-fun m!4547073 () Bool)

(assert (=> b!3975940 m!4547073))

(declare-fun m!4547075 () Bool)

(assert (=> b!3975940 m!4547075))

(declare-fun m!4547077 () Bool)

(assert (=> b!3975957 m!4547077))

(declare-fun m!4547079 () Bool)

(assert (=> start!374224 m!4547079))

(declare-fun m!4547081 () Bool)

(assert (=> b!3975959 m!4547081))

(declare-fun m!4547083 () Bool)

(assert (=> b!3975959 m!4547083))

(declare-fun m!4547085 () Bool)

(assert (=> b!3975959 m!4547085))

(declare-fun m!4547087 () Bool)

(assert (=> b!3975959 m!4547087))

(declare-fun m!4547089 () Bool)

(assert (=> b!3975939 m!4547089))

(declare-fun m!4547091 () Bool)

(assert (=> b!3975939 m!4547091))

(assert (=> b!3975939 m!4547089))

(declare-fun m!4547093 () Bool)

(assert (=> b!3975939 m!4547093))

(declare-fun m!4547095 () Bool)

(assert (=> b!3975939 m!4547095))

(declare-fun m!4547097 () Bool)

(assert (=> b!3975939 m!4547097))

(declare-fun m!4547099 () Bool)

(assert (=> b!3975939 m!4547099))

(declare-fun m!4547101 () Bool)

(assert (=> b!3975939 m!4547101))

(declare-fun m!4547103 () Bool)

(assert (=> b!3975962 m!4547103))

(declare-fun m!4547105 () Bool)

(assert (=> b!3975962 m!4547105))

(declare-fun m!4547107 () Bool)

(assert (=> b!3975954 m!4547107))

(declare-fun m!4547109 () Bool)

(assert (=> b!3975955 m!4547109))

(declare-fun m!4547111 () Bool)

(assert (=> b!3975965 m!4547111))

(declare-fun m!4547113 () Bool)

(assert (=> b!3975965 m!4547113))

(declare-fun m!4547115 () Bool)

(assert (=> b!3975965 m!4547115))

(declare-fun m!4547117 () Bool)

(assert (=> b!3975965 m!4547117))

(declare-fun m!4547119 () Bool)

(assert (=> b!3975958 m!4547119))

(declare-fun m!4547121 () Bool)

(assert (=> b!3975958 m!4547121))

(declare-fun m!4547123 () Bool)

(assert (=> b!3975963 m!4547123))

(declare-fun m!4547125 () Bool)

(assert (=> b!3975963 m!4547125))

(declare-fun m!4547127 () Bool)

(assert (=> b!3975963 m!4547127))

(assert (=> b!3975963 m!4547127))

(declare-fun m!4547129 () Bool)

(assert (=> b!3975963 m!4547129))

(declare-fun m!4547131 () Bool)

(assert (=> b!3975942 m!4547131))

(declare-fun m!4547133 () Bool)

(assert (=> b!3975942 m!4547133))

(declare-fun m!4547135 () Bool)

(assert (=> b!3975942 m!4547135))

(declare-fun m!4547137 () Bool)

(assert (=> b!3975942 m!4547137))

(declare-fun m!4547139 () Bool)

(assert (=> b!3975942 m!4547139))

(declare-fun m!4547141 () Bool)

(assert (=> b!3975966 m!4547141))

(declare-fun m!4547143 () Bool)

(assert (=> b!3975966 m!4547143))

(check-sat (not b!3975960) b_and!305635 (not b!3975962) (not b_next!110975) (not b!3975946) (not b!3975941) (not b!3975950) (not b!3975938) (not start!374224) (not b!3975963) (not b_next!110971) (not b_next!110969) (not b!3975957) b_and!305633 (not b!3975943) (not b_next!110973) (not b!3975940) (not b!3975953) b_and!305631 (not b!3975939) (not b!3975949) (not b!3975945) (not b!3975955) (not b!3975966) tp_is_empty!20169 (not b!3975959) (not b!3975951) (not b!3975948) (not b!3975958) (not b!3975944) (not b!3975954) (not b!3975947) (not b!3975965) (not b!3975942) b_and!305637)
(check-sat b_and!305635 b_and!305631 (not b_next!110975) b_and!305637 (not b_next!110971) (not b_next!110969) b_and!305633 (not b_next!110973))
