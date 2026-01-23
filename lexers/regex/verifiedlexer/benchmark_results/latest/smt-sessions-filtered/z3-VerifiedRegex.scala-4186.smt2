; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!227108 () Bool)

(assert start!227108)

(declare-fun b!2306248 () Bool)

(declare-fun b_free!69741 () Bool)

(declare-fun b_next!70445 () Bool)

(assert (=> b!2306248 (= b_free!69741 (not b_next!70445))))

(declare-fun tp!731712 () Bool)

(declare-fun b_and!184081 () Bool)

(assert (=> b!2306248 (= tp!731712 b_and!184081)))

(declare-fun b_free!69743 () Bool)

(declare-fun b_next!70447 () Bool)

(assert (=> b!2306248 (= b_free!69743 (not b_next!70447))))

(declare-fun tp!731724 () Bool)

(declare-fun b_and!184083 () Bool)

(assert (=> b!2306248 (= tp!731724 b_and!184083)))

(declare-fun b!2306245 () Bool)

(declare-fun b_free!69745 () Bool)

(declare-fun b_next!70449 () Bool)

(assert (=> b!2306245 (= b_free!69745 (not b_next!70449))))

(declare-fun tp!731713 () Bool)

(declare-fun b_and!184085 () Bool)

(assert (=> b!2306245 (= tp!731713 b_and!184085)))

(declare-fun b_free!69747 () Bool)

(declare-fun b_next!70451 () Bool)

(assert (=> b!2306245 (= b_free!69747 (not b_next!70451))))

(declare-fun tp!731727 () Bool)

(declare-fun b_and!184087 () Bool)

(assert (=> b!2306245 (= tp!731727 b_and!184087)))

(declare-fun b!2306240 () Bool)

(declare-fun b_free!69749 () Bool)

(declare-fun b_next!70453 () Bool)

(assert (=> b!2306240 (= b_free!69749 (not b_next!70453))))

(declare-fun tp!731714 () Bool)

(declare-fun b_and!184089 () Bool)

(assert (=> b!2306240 (= tp!731714 b_and!184089)))

(declare-fun b_free!69751 () Bool)

(declare-fun b_next!70455 () Bool)

(assert (=> b!2306240 (= b_free!69751 (not b_next!70455))))

(declare-fun tp!731718 () Bool)

(declare-fun b_and!184091 () Bool)

(assert (=> b!2306240 (= tp!731718 b_and!184091)))

(declare-fun b!2306242 () Bool)

(declare-fun b_free!69753 () Bool)

(declare-fun b_next!70457 () Bool)

(assert (=> b!2306242 (= b_free!69753 (not b_next!70457))))

(declare-fun tp!731721 () Bool)

(declare-fun b_and!184093 () Bool)

(assert (=> b!2306242 (= tp!731721 b_and!184093)))

(declare-fun b_free!69755 () Bool)

(declare-fun b_next!70459 () Bool)

(assert (=> b!2306242 (= b_free!69755 (not b_next!70459))))

(declare-fun tp!731723 () Bool)

(declare-fun b_and!184095 () Bool)

(assert (=> b!2306242 (= tp!731723 b_and!184095)))

(declare-fun b!2306232 () Bool)

(declare-fun res!986050 () Bool)

(declare-fun e!1478011 () Bool)

(assert (=> b!2306232 (=> (not res!986050) (not e!1478011))))

(declare-datatypes ((List!27546 0))(
  ( (Nil!27452) (Cons!27452 (h!32853 (_ BitVec 16)) (t!206418 List!27546)) )
))
(declare-datatypes ((TokenValue!4565 0))(
  ( (FloatLiteralValue!9130 (text!32400 List!27546)) (TokenValueExt!4564 (__x!18190 Int)) (Broken!22825 (value!139279 List!27546)) (Object!4658) (End!4565) (Def!4565) (Underscore!4565) (Match!4565) (Else!4565) (Error!4565) (Case!4565) (If!4565) (Extends!4565) (Abstract!4565) (Class!4565) (Val!4565) (DelimiterValue!9130 (del!4625 List!27546)) (KeywordValue!4571 (value!139280 List!27546)) (CommentValue!9130 (value!139281 List!27546)) (WhitespaceValue!9130 (value!139282 List!27546)) (IndentationValue!4565 (value!139283 List!27546)) (String!29928) (Int32!4565) (Broken!22826 (value!139284 List!27546)) (Boolean!4566) (Unit!40363) (OperatorValue!4568 (op!4625 List!27546)) (IdentifierValue!9130 (value!139285 List!27546)) (IdentifierValue!9131 (value!139286 List!27546)) (WhitespaceValue!9131 (value!139287 List!27546)) (True!9130) (False!9130) (Broken!22827 (value!139288 List!27546)) (Broken!22828 (value!139289 List!27546)) (True!9131) (RightBrace!4565) (RightBracket!4565) (Colon!4565) (Null!4565) (Comma!4565) (LeftBracket!4565) (False!9131) (LeftBrace!4565) (ImaginaryLiteralValue!4565 (text!32401 List!27546)) (StringLiteralValue!13695 (value!139290 List!27546)) (EOFValue!4565 (value!139291 List!27546)) (IdentValue!4565 (value!139292 List!27546)) (DelimiterValue!9131 (value!139293 List!27546)) (DedentValue!4565 (value!139294 List!27546)) (NewLineValue!4565 (value!139295 List!27546)) (IntegerValue!13695 (value!139296 (_ BitVec 32)) (text!32402 List!27546)) (IntegerValue!13696 (value!139297 Int) (text!32403 List!27546)) (Times!4565) (Or!4565) (Equal!4565) (Minus!4565) (Broken!22829 (value!139298 List!27546)) (And!4565) (Div!4565) (LessEqual!4565) (Mod!4565) (Concat!11316) (Not!4565) (Plus!4565) (SpaceValue!4565 (value!139299 List!27546)) (IntegerValue!13697 (value!139300 Int) (text!32404 List!27546)) (StringLiteralValue!13696 (text!32405 List!27546)) (FloatLiteralValue!9131 (text!32406 List!27546)) (BytesLiteralValue!4565 (value!139301 List!27546)) (CommentValue!9131 (value!139302 List!27546)) (StringLiteralValue!13697 (value!139303 List!27546)) (ErrorTokenValue!4565 (msg!4626 List!27546)) )
))
(declare-datatypes ((C!13648 0))(
  ( (C!13649 (val!7872 Int)) )
))
(declare-datatypes ((List!27547 0))(
  ( (Nil!27453) (Cons!27453 (h!32854 C!13648) (t!206419 List!27547)) )
))
(declare-datatypes ((IArray!17913 0))(
  ( (IArray!17914 (innerList!9014 List!27547)) )
))
(declare-datatypes ((Conc!8954 0))(
  ( (Node!8954 (left!20800 Conc!8954) (right!21130 Conc!8954) (csize!18138 Int) (cheight!9165 Int)) (Leaf!13141 (xs!11896 IArray!17913) (csize!18139 Int)) (Empty!8954) )
))
(declare-datatypes ((BalanceConc!17636 0))(
  ( (BalanceConc!17637 (c!365578 Conc!8954)) )
))
(declare-datatypes ((Regex!6751 0))(
  ( (ElementMatch!6751 (c!365579 C!13648)) (Concat!11317 (regOne!14014 Regex!6751) (regTwo!14014 Regex!6751)) (EmptyExpr!6751) (Star!6751 (reg!7080 Regex!6751)) (EmptyLang!6751) (Union!6751 (regOne!14015 Regex!6751) (regTwo!14015 Regex!6751)) )
))
(declare-datatypes ((String!29929 0))(
  ( (String!29930 (value!139304 String)) )
))
(declare-datatypes ((TokenValueInjection!8670 0))(
  ( (TokenValueInjection!8671 (toValue!6217 Int) (toChars!6076 Int)) )
))
(declare-datatypes ((Rule!8606 0))(
  ( (Rule!8607 (regex!4403 Regex!6751) (tag!4893 String!29929) (isSeparator!4403 Bool) (transformation!4403 TokenValueInjection!8670)) )
))
(declare-datatypes ((List!27548 0))(
  ( (Nil!27454) (Cons!27454 (h!32855 Rule!8606) (t!206420 List!27548)) )
))
(declare-fun rules!1750 () List!27548)

(declare-fun otherR!12 () Rule!8606)

(declare-fun contains!4791 (List!27548 Rule!8606) Bool)

(assert (=> b!2306232 (= res!986050 (contains!4791 rules!1750 otherR!12))))

(declare-fun b!2306233 () Bool)

(declare-datatypes ((Unit!40364 0))(
  ( (Unit!40365) )
))
(declare-fun e!1478028 () Unit!40364)

(declare-fun Unit!40366 () Unit!40364)

(assert (=> b!2306233 (= e!1478028 Unit!40366)))

(declare-fun lt!855337 () Unit!40364)

(declare-fun r!2363 () Rule!8606)

(declare-fun lemmaSameIndexThenSameElement!196 (List!27548 Rule!8606 Rule!8606) Unit!40364)

(assert (=> b!2306233 (= lt!855337 (lemmaSameIndexThenSameElement!196 rules!1750 r!2363 otherR!12))))

(assert (=> b!2306233 false))

(declare-fun tp!731719 () Bool)

(declare-fun b!2306234 () Bool)

(declare-fun e!1478017 () Bool)

(declare-datatypes ((Token!8284 0))(
  ( (Token!8285 (value!139305 TokenValue!4565) (rule!6753 Rule!8606) (size!21663 Int) (originalCharacters!5173 List!27547)) )
))
(declare-datatypes ((List!27549 0))(
  ( (Nil!27455) (Cons!27455 (h!32856 Token!8284) (t!206421 List!27549)) )
))
(declare-fun tokens!456 () List!27549)

(declare-fun e!1478037 () Bool)

(declare-fun inv!37092 (String!29929) Bool)

(declare-fun inv!37095 (TokenValueInjection!8670) Bool)

(assert (=> b!2306234 (= e!1478017 (and tp!731719 (inv!37092 (tag!4893 (rule!6753 (h!32856 tokens!456)))) (inv!37095 (transformation!4403 (rule!6753 (h!32856 tokens!456)))) e!1478037))))

(declare-fun b!2306235 () Bool)

(declare-fun Unit!40367 () Unit!40364)

(assert (=> b!2306235 (= e!1478028 Unit!40367)))

(declare-fun b!2306236 () Bool)

(declare-fun res!986063 () Bool)

(declare-fun e!1478020 () Bool)

(assert (=> b!2306236 (=> (not res!986063) (not e!1478020))))

(declare-fun e!1478019 () Bool)

(assert (=> b!2306236 (= res!986063 e!1478019)))

(declare-fun res!986054 () Bool)

(assert (=> b!2306236 (=> res!986054 e!1478019)))

(declare-fun lt!855336 () Bool)

(assert (=> b!2306236 (= res!986054 lt!855336)))

(declare-fun b!2306237 () Bool)

(declare-fun res!986059 () Bool)

(assert (=> b!2306237 (=> (not res!986059) (not e!1478011))))

(declare-datatypes ((LexerInterface!4000 0))(
  ( (LexerInterfaceExt!3997 (__x!18191 Int)) (Lexer!3998) )
))
(declare-fun thiss!16613 () LexerInterface!4000)

(declare-fun rulesInvariant!3502 (LexerInterface!4000 List!27548) Bool)

(assert (=> b!2306237 (= res!986059 (rulesInvariant!3502 thiss!16613 rules!1750))))

(declare-fun b!2306238 () Bool)

(declare-fun e!1478026 () Bool)

(assert (=> b!2306238 (= e!1478026 e!1478020)))

(declare-fun res!986064 () Bool)

(assert (=> b!2306238 (=> (not res!986064) (not e!1478020))))

(declare-fun e!1478033 () Bool)

(assert (=> b!2306238 (= res!986064 e!1478033)))

(declare-fun res!986061 () Bool)

(assert (=> b!2306238 (=> res!986061 e!1478033)))

(assert (=> b!2306238 (= res!986061 lt!855336)))

(declare-fun isEmpty!15695 (List!27549) Bool)

(assert (=> b!2306238 (= lt!855336 (isEmpty!15695 tokens!456))))

(declare-fun b!2306239 () Bool)

(declare-fun head!5056 (List!27549) Token!8284)

(assert (=> b!2306239 (= e!1478019 (= (rule!6753 (head!5056 tokens!456)) r!2363))))

(declare-fun e!1478013 () Bool)

(assert (=> b!2306240 (= e!1478013 (and tp!731714 tp!731718))))

(declare-fun b!2306241 () Bool)

(declare-fun otherP!12 () List!27547)

(declare-fun size!21664 (BalanceConc!17636) Int)

(declare-fun charsOf!2791 (Token!8284) BalanceConc!17636)

(declare-fun size!21665 (List!27547) Int)

(assert (=> b!2306241 (= e!1478033 (<= (size!21664 (charsOf!2791 (head!5056 tokens!456))) (size!21665 otherP!12)))))

(declare-fun e!1478015 () Bool)

(assert (=> b!2306242 (= e!1478015 (and tp!731721 tp!731723))))

(declare-fun b!2306243 () Bool)

(declare-fun e!1478016 () Bool)

(declare-fun tp_is_empty!10723 () Bool)

(declare-fun tp!731716 () Bool)

(assert (=> b!2306243 (= e!1478016 (and tp_is_empty!10723 tp!731716))))

(declare-fun b!2306244 () Bool)

(declare-fun e!1478010 () Bool)

(assert (=> b!2306244 (= e!1478010 true)))

(declare-fun lt!855342 () Bool)

(declare-fun lt!855332 () List!27547)

(declare-fun input!1722 () List!27547)

(declare-fun isPrefix!2393 (List!27547 List!27547) Bool)

(assert (=> b!2306244 (= lt!855342 (isPrefix!2393 lt!855332 input!1722))))

(declare-fun lt!855333 () Int)

(declare-datatypes ((tuple2!27362 0))(
  ( (tuple2!27363 (_1!16191 Token!8284) (_2!16191 List!27547)) )
))
(declare-fun lt!855341 () tuple2!27362)

(declare-datatypes ((Option!5401 0))(
  ( (None!5400) (Some!5400 (v!30506 tuple2!27362)) )
))
(declare-fun maxPrefixOneRule!1426 (LexerInterface!4000 Rule!8606 List!27547) Option!5401)

(declare-fun apply!6665 (TokenValueInjection!8670 BalanceConc!17636) TokenValue!4565)

(declare-fun seqFromList!3107 (List!27547) BalanceConc!17636)

(assert (=> b!2306244 (= (maxPrefixOneRule!1426 thiss!16613 r!2363 input!1722) (Some!5400 (tuple2!27363 (Token!8285 (apply!6665 (transformation!4403 r!2363) (seqFromList!3107 lt!855332)) r!2363 lt!855333 lt!855332) (_2!16191 lt!855341))))))

(declare-fun lt!855348 () Unit!40364)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!599 (LexerInterface!4000 List!27548 List!27547 List!27547 List!27547 Rule!8606) Unit!40364)

(assert (=> b!2306244 (= lt!855348 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!599 thiss!16613 rules!1750 lt!855332 input!1722 (_2!16191 lt!855341) r!2363))))

(assert (=> b!2306245 (= e!1478037 (and tp!731713 tp!731727))))

(declare-fun b!2306246 () Bool)

(declare-fun e!1478025 () Bool)

(declare-fun e!1478031 () Bool)

(assert (=> b!2306246 (= e!1478025 e!1478031)))

(declare-fun res!986065 () Bool)

(assert (=> b!2306246 (=> res!986065 e!1478031)))

(get-info :version)

(assert (=> b!2306246 (= res!986065 ((_ is Nil!27455) tokens!456))))

(declare-fun lt!855340 () Unit!40364)

(assert (=> b!2306246 (= lt!855340 e!1478028)))

(declare-fun c!365577 () Bool)

(declare-fun lt!855344 () Int)

(declare-fun lt!855338 () Int)

(assert (=> b!2306246 (= c!365577 (= lt!855344 lt!855338))))

(declare-fun b!2306247 () Bool)

(declare-fun res!986055 () Bool)

(assert (=> b!2306247 (=> (not res!986055) (not e!1478011))))

(declare-fun isEmpty!15696 (List!27548) Bool)

(assert (=> b!2306247 (= res!986055 (not (isEmpty!15696 rules!1750)))))

(declare-fun e!1478014 () Bool)

(assert (=> b!2306248 (= e!1478014 (and tp!731712 tp!731724))))

(declare-fun b!2306249 () Bool)

(declare-fun e!1478008 () Bool)

(declare-fun tp!731715 () Bool)

(assert (=> b!2306249 (= e!1478008 (and tp!731715 (inv!37092 (tag!4893 r!2363)) (inv!37095 (transformation!4403 r!2363)) e!1478015))))

(declare-fun b!2306250 () Bool)

(declare-fun res!986058 () Bool)

(assert (=> b!2306250 (=> (not res!986058) (not e!1478020))))

(assert (=> b!2306250 (= res!986058 (isPrefix!2393 otherP!12 input!1722))))

(declare-fun b!2306251 () Bool)

(assert (=> b!2306251 (= e!1478011 e!1478026)))

(declare-fun res!986051 () Bool)

(assert (=> b!2306251 (=> (not res!986051) (not e!1478026))))

(declare-datatypes ((IArray!17915 0))(
  ( (IArray!17916 (innerList!9015 List!27549)) )
))
(declare-datatypes ((Conc!8955 0))(
  ( (Node!8955 (left!20801 Conc!8955) (right!21131 Conc!8955) (csize!18140 Int) (cheight!9166 Int)) (Leaf!13142 (xs!11897 IArray!17915) (csize!18141 Int)) (Empty!8955) )
))
(declare-datatypes ((BalanceConc!17638 0))(
  ( (BalanceConc!17639 (c!365580 Conc!8955)) )
))
(declare-datatypes ((tuple2!27364 0))(
  ( (tuple2!27365 (_1!16192 BalanceConc!17638) (_2!16192 BalanceConc!17636)) )
))
(declare-fun lt!855339 () tuple2!27364)

(declare-fun suffix!886 () List!27547)

(declare-datatypes ((tuple2!27366 0))(
  ( (tuple2!27367 (_1!16193 List!27549) (_2!16193 List!27547)) )
))
(declare-fun list!10832 (BalanceConc!17638) List!27549)

(declare-fun list!10833 (BalanceConc!17636) List!27547)

(assert (=> b!2306251 (= res!986051 (= (tuple2!27367 (list!10832 (_1!16192 lt!855339)) (list!10833 (_2!16192 lt!855339))) (tuple2!27367 tokens!456 suffix!886)))))

(declare-fun lex!1839 (LexerInterface!4000 List!27548 BalanceConc!17636) tuple2!27364)

(assert (=> b!2306251 (= lt!855339 (lex!1839 thiss!16613 rules!1750 (seqFromList!3107 input!1722)))))

(declare-fun b!2306252 () Bool)

(declare-fun tp!731728 () Bool)

(declare-fun e!1478032 () Bool)

(assert (=> b!2306252 (= e!1478032 (and tp!731728 (inv!37092 (tag!4893 (h!32855 rules!1750))) (inv!37095 (transformation!4403 (h!32855 rules!1750))) e!1478014))))

(declare-fun res!986060 () Bool)

(assert (=> start!227108 (=> (not res!986060) (not e!1478011))))

(assert (=> start!227108 (= res!986060 ((_ is Lexer!3998) thiss!16613))))

(assert (=> start!227108 e!1478011))

(assert (=> start!227108 true))

(declare-fun e!1478029 () Bool)

(assert (=> start!227108 e!1478029))

(declare-fun e!1478022 () Bool)

(assert (=> start!227108 e!1478022))

(assert (=> start!227108 e!1478016))

(declare-fun e!1478036 () Bool)

(assert (=> start!227108 e!1478036))

(declare-fun e!1478035 () Bool)

(assert (=> start!227108 e!1478035))

(assert (=> start!227108 e!1478008))

(declare-fun e!1478018 () Bool)

(assert (=> start!227108 e!1478018))

(declare-fun b!2306253 () Bool)

(declare-fun e!1478034 () Bool)

(assert (=> b!2306253 (= e!1478034 e!1478025)))

(declare-fun res!986052 () Bool)

(assert (=> b!2306253 (=> res!986052 e!1478025)))

(assert (=> b!2306253 (= res!986052 (> lt!855344 lt!855338))))

(declare-fun getIndex!416 (List!27548 Rule!8606) Int)

(assert (=> b!2306253 (= lt!855338 (getIndex!416 rules!1750 otherR!12))))

(assert (=> b!2306253 (= lt!855344 (getIndex!416 rules!1750 r!2363))))

(declare-fun ruleValid!1493 (LexerInterface!4000 Rule!8606) Bool)

(assert (=> b!2306253 (ruleValid!1493 thiss!16613 otherR!12)))

(declare-fun lt!855347 () Unit!40364)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!898 (LexerInterface!4000 Rule!8606 List!27548) Unit!40364)

(assert (=> b!2306253 (= lt!855347 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!898 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2306254 () Bool)

(declare-fun res!986056 () Bool)

(assert (=> b!2306254 (=> (not res!986056) (not e!1478020))))

(assert (=> b!2306254 (= res!986056 (not (= r!2363 otherR!12)))))

(declare-fun b!2306255 () Bool)

(declare-fun tp!731726 () Bool)

(assert (=> b!2306255 (= e!1478029 (and tp_is_empty!10723 tp!731726))))

(declare-fun b!2306256 () Bool)

(declare-fun res!986057 () Bool)

(assert (=> b!2306256 (=> (not res!986057) (not e!1478011))))

(assert (=> b!2306256 (= res!986057 (contains!4791 rules!1750 r!2363))))

(declare-fun b!2306257 () Bool)

(declare-fun tp!731729 () Bool)

(assert (=> b!2306257 (= e!1478022 (and tp!731729 (inv!37092 (tag!4893 otherR!12)) (inv!37095 (transformation!4403 otherR!12)) e!1478013))))

(declare-fun b!2306258 () Bool)

(declare-fun e!1478027 () Bool)

(declare-fun tp!731722 () Bool)

(declare-fun inv!21 (TokenValue!4565) Bool)

(assert (=> b!2306258 (= e!1478027 (and (inv!21 (value!139305 (h!32856 tokens!456))) e!1478017 tp!731722))))

(declare-fun tp!731725 () Bool)

(declare-fun b!2306259 () Bool)

(declare-fun inv!37096 (Token!8284) Bool)

(assert (=> b!2306259 (= e!1478018 (and (inv!37096 (h!32856 tokens!456)) e!1478027 tp!731725))))

(declare-fun b!2306260 () Bool)

(declare-fun e!1478024 () Bool)

(declare-fun matchR!3008 (Regex!6751 List!27547) Bool)

(assert (=> b!2306260 (= e!1478024 (not (matchR!3008 (regex!4403 r!2363) (list!10833 (charsOf!2791 (head!5056 tokens!456))))))))

(declare-fun b!2306261 () Bool)

(assert (=> b!2306261 (= e!1478031 e!1478010)))

(declare-fun res!986053 () Bool)

(assert (=> b!2306261 (=> res!986053 e!1478010)))

(declare-fun lt!855335 () Int)

(assert (=> b!2306261 (= res!986053 (<= lt!855335 lt!855333))))

(assert (=> b!2306261 (= lt!855333 (size!21665 lt!855332))))

(assert (=> b!2306261 (= lt!855335 (size!21665 otherP!12))))

(declare-fun lt!855345 () List!27547)

(assert (=> b!2306261 (= (_2!16191 lt!855341) lt!855345)))

(declare-fun lt!855346 () Unit!40364)

(declare-fun lemmaSamePrefixThenSameSuffix!1074 (List!27547 List!27547 List!27547 List!27547 List!27547) Unit!40364)

(assert (=> b!2306261 (= lt!855346 (lemmaSamePrefixThenSameSuffix!1074 lt!855332 (_2!16191 lt!855341) lt!855332 lt!855345 input!1722))))

(declare-fun getSuffix!1172 (List!27547 List!27547) List!27547)

(assert (=> b!2306261 (= lt!855345 (getSuffix!1172 input!1722 lt!855332))))

(declare-fun ++!6721 (List!27547 List!27547) List!27547)

(assert (=> b!2306261 (isPrefix!2393 lt!855332 (++!6721 lt!855332 (_2!16191 lt!855341)))))

(declare-fun lt!855343 () Unit!40364)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1586 (List!27547 List!27547) Unit!40364)

(assert (=> b!2306261 (= lt!855343 (lemmaConcatTwoListThenFirstIsPrefix!1586 lt!855332 (_2!16191 lt!855341)))))

(assert (=> b!2306261 (= lt!855332 (list!10833 (charsOf!2791 (h!32856 tokens!456))))))

(declare-fun get!8276 (Option!5401) tuple2!27362)

(declare-fun maxPrefix!2256 (LexerInterface!4000 List!27548 List!27547) Option!5401)

(assert (=> b!2306261 (= lt!855341 (get!8276 (maxPrefix!2256 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2306262 () Bool)

(assert (=> b!2306262 (= e!1478020 (not e!1478034))))

(declare-fun res!986049 () Bool)

(assert (=> b!2306262 (=> res!986049 e!1478034)))

(assert (=> b!2306262 (= res!986049 e!1478024)))

(declare-fun res!986062 () Bool)

(assert (=> b!2306262 (=> (not res!986062) (not e!1478024))))

(assert (=> b!2306262 (= res!986062 (not lt!855336))))

(assert (=> b!2306262 (ruleValid!1493 thiss!16613 r!2363)))

(declare-fun lt!855334 () Unit!40364)

(assert (=> b!2306262 (= lt!855334 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!898 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2306263 () Bool)

(declare-fun tp!731717 () Bool)

(assert (=> b!2306263 (= e!1478035 (and e!1478032 tp!731717))))

(declare-fun b!2306264 () Bool)

(declare-fun tp!731720 () Bool)

(assert (=> b!2306264 (= e!1478036 (and tp_is_empty!10723 tp!731720))))

(assert (= (and start!227108 res!986060) b!2306247))

(assert (= (and b!2306247 res!986055) b!2306237))

(assert (= (and b!2306237 res!986059) b!2306256))

(assert (= (and b!2306256 res!986057) b!2306232))

(assert (= (and b!2306232 res!986050) b!2306251))

(assert (= (and b!2306251 res!986051) b!2306238))

(assert (= (and b!2306238 (not res!986061)) b!2306241))

(assert (= (and b!2306238 res!986064) b!2306236))

(assert (= (and b!2306236 (not res!986054)) b!2306239))

(assert (= (and b!2306236 res!986063) b!2306250))

(assert (= (and b!2306250 res!986058) b!2306254))

(assert (= (and b!2306254 res!986056) b!2306262))

(assert (= (and b!2306262 res!986062) b!2306260))

(assert (= (and b!2306262 (not res!986049)) b!2306253))

(assert (= (and b!2306253 (not res!986052)) b!2306246))

(assert (= (and b!2306246 c!365577) b!2306233))

(assert (= (and b!2306246 (not c!365577)) b!2306235))

(assert (= (and b!2306246 (not res!986065)) b!2306261))

(assert (= (and b!2306261 (not res!986053)) b!2306244))

(assert (= (and start!227108 ((_ is Cons!27453) input!1722)) b!2306255))

(assert (= b!2306257 b!2306240))

(assert (= start!227108 b!2306257))

(assert (= (and start!227108 ((_ is Cons!27453) suffix!886)) b!2306243))

(assert (= (and start!227108 ((_ is Cons!27453) otherP!12)) b!2306264))

(assert (= b!2306252 b!2306248))

(assert (= b!2306263 b!2306252))

(assert (= (and start!227108 ((_ is Cons!27454) rules!1750)) b!2306263))

(assert (= b!2306249 b!2306242))

(assert (= start!227108 b!2306249))

(assert (= b!2306234 b!2306245))

(assert (= b!2306258 b!2306234))

(assert (= b!2306259 b!2306258))

(assert (= (and start!227108 ((_ is Cons!27455) tokens!456)) b!2306259))

(declare-fun m!2733307 () Bool)

(assert (=> b!2306247 m!2733307))

(declare-fun m!2733309 () Bool)

(assert (=> b!2306251 m!2733309))

(declare-fun m!2733311 () Bool)

(assert (=> b!2306251 m!2733311))

(declare-fun m!2733313 () Bool)

(assert (=> b!2306251 m!2733313))

(assert (=> b!2306251 m!2733313))

(declare-fun m!2733315 () Bool)

(assert (=> b!2306251 m!2733315))

(declare-fun m!2733317 () Bool)

(assert (=> b!2306257 m!2733317))

(declare-fun m!2733319 () Bool)

(assert (=> b!2306257 m!2733319))

(declare-fun m!2733321 () Bool)

(assert (=> b!2306256 m!2733321))

(declare-fun m!2733323 () Bool)

(assert (=> b!2306249 m!2733323))

(declare-fun m!2733325 () Bool)

(assert (=> b!2306249 m!2733325))

(declare-fun m!2733327 () Bool)

(assert (=> b!2306237 m!2733327))

(declare-fun m!2733329 () Bool)

(assert (=> b!2306234 m!2733329))

(declare-fun m!2733331 () Bool)

(assert (=> b!2306234 m!2733331))

(declare-fun m!2733333 () Bool)

(assert (=> b!2306238 m!2733333))

(declare-fun m!2733335 () Bool)

(assert (=> b!2306262 m!2733335))

(declare-fun m!2733337 () Bool)

(assert (=> b!2306262 m!2733337))

(declare-fun m!2733339 () Bool)

(assert (=> b!2306232 m!2733339))

(declare-fun m!2733341 () Bool)

(assert (=> b!2306252 m!2733341))

(declare-fun m!2733343 () Bool)

(assert (=> b!2306252 m!2733343))

(declare-fun m!2733345 () Bool)

(assert (=> b!2306261 m!2733345))

(declare-fun m!2733347 () Bool)

(assert (=> b!2306261 m!2733347))

(declare-fun m!2733349 () Bool)

(assert (=> b!2306261 m!2733349))

(declare-fun m!2733351 () Bool)

(assert (=> b!2306261 m!2733351))

(declare-fun m!2733353 () Bool)

(assert (=> b!2306261 m!2733353))

(declare-fun m!2733355 () Bool)

(assert (=> b!2306261 m!2733355))

(assert (=> b!2306261 m!2733351))

(declare-fun m!2733357 () Bool)

(assert (=> b!2306261 m!2733357))

(declare-fun m!2733359 () Bool)

(assert (=> b!2306261 m!2733359))

(assert (=> b!2306261 m!2733355))

(declare-fun m!2733361 () Bool)

(assert (=> b!2306261 m!2733361))

(assert (=> b!2306261 m!2733347))

(declare-fun m!2733363 () Bool)

(assert (=> b!2306261 m!2733363))

(declare-fun m!2733365 () Bool)

(assert (=> b!2306261 m!2733365))

(declare-fun m!2733367 () Bool)

(assert (=> b!2306258 m!2733367))

(declare-fun m!2733369 () Bool)

(assert (=> b!2306244 m!2733369))

(declare-fun m!2733371 () Bool)

(assert (=> b!2306244 m!2733371))

(declare-fun m!2733373 () Bool)

(assert (=> b!2306244 m!2733373))

(declare-fun m!2733375 () Bool)

(assert (=> b!2306244 m!2733375))

(assert (=> b!2306244 m!2733369))

(declare-fun m!2733377 () Bool)

(assert (=> b!2306244 m!2733377))

(declare-fun m!2733379 () Bool)

(assert (=> b!2306239 m!2733379))

(declare-fun m!2733381 () Bool)

(assert (=> b!2306233 m!2733381))

(declare-fun m!2733383 () Bool)

(assert (=> b!2306250 m!2733383))

(declare-fun m!2733385 () Bool)

(assert (=> b!2306253 m!2733385))

(declare-fun m!2733387 () Bool)

(assert (=> b!2306253 m!2733387))

(declare-fun m!2733389 () Bool)

(assert (=> b!2306253 m!2733389))

(declare-fun m!2733391 () Bool)

(assert (=> b!2306253 m!2733391))

(declare-fun m!2733393 () Bool)

(assert (=> b!2306259 m!2733393))

(assert (=> b!2306241 m!2733379))

(assert (=> b!2306241 m!2733379))

(declare-fun m!2733395 () Bool)

(assert (=> b!2306241 m!2733395))

(assert (=> b!2306241 m!2733395))

(declare-fun m!2733397 () Bool)

(assert (=> b!2306241 m!2733397))

(assert (=> b!2306241 m!2733365))

(assert (=> b!2306260 m!2733379))

(assert (=> b!2306260 m!2733379))

(assert (=> b!2306260 m!2733395))

(assert (=> b!2306260 m!2733395))

(declare-fun m!2733399 () Bool)

(assert (=> b!2306260 m!2733399))

(assert (=> b!2306260 m!2733399))

(declare-fun m!2733401 () Bool)

(assert (=> b!2306260 m!2733401))

(check-sat (not b!2306233) (not b_next!70445) (not b_next!70455) (not b!2306250) tp_is_empty!10723 (not b!2306239) (not b!2306255) b_and!184093 (not b_next!70451) (not b!2306262) (not b!2306264) (not b!2306256) (not b!2306260) (not b!2306263) (not b!2306252) (not b!2306253) (not b!2306244) (not b_next!70457) (not b!2306232) (not b!2306259) b_and!184085 (not b!2306261) (not b!2306258) b_and!184083 (not b_next!70449) (not b!2306238) b_and!184095 b_and!184091 b_and!184087 (not b!2306243) (not b_next!70459) (not b!2306241) (not b!2306257) (not b!2306234) (not b!2306247) (not b_next!70453) b_and!184089 b_and!184081 (not b!2306237) (not b!2306251) (not b!2306249) (not b_next!70447))
(check-sat (not b_next!70445) (not b_next!70455) (not b_next!70457) b_and!184093 b_and!184085 b_and!184083 (not b_next!70449) (not b_next!70459) (not b_next!70451) (not b_next!70447) b_and!184095 b_and!184091 b_and!184087 (not b_next!70453) b_and!184089 b_and!184081)
