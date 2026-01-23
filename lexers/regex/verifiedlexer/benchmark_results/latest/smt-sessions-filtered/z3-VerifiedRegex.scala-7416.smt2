; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!394630 () Bool)

(assert start!394630)

(declare-fun b!4147271 () Bool)

(declare-fun b_free!118331 () Bool)

(declare-fun b_next!119035 () Bool)

(assert (=> b!4147271 (= b_free!118331 (not b_next!119035))))

(declare-fun tp!1264065 () Bool)

(declare-fun b_and!322405 () Bool)

(assert (=> b!4147271 (= tp!1264065 b_and!322405)))

(declare-fun b_free!118333 () Bool)

(declare-fun b_next!119037 () Bool)

(assert (=> b!4147271 (= b_free!118333 (not b_next!119037))))

(declare-fun tp!1264058 () Bool)

(declare-fun b_and!322407 () Bool)

(assert (=> b!4147271 (= tp!1264058 b_and!322407)))

(declare-fun b!4147275 () Bool)

(declare-fun b_free!118335 () Bool)

(declare-fun b_next!119039 () Bool)

(assert (=> b!4147275 (= b_free!118335 (not b_next!119039))))

(declare-fun tp!1264062 () Bool)

(declare-fun b_and!322409 () Bool)

(assert (=> b!4147275 (= tp!1264062 b_and!322409)))

(declare-fun b_free!118337 () Bool)

(declare-fun b_next!119041 () Bool)

(assert (=> b!4147275 (= b_free!118337 (not b_next!119041))))

(declare-fun tp!1264055 () Bool)

(declare-fun b_and!322411 () Bool)

(assert (=> b!4147275 (= tp!1264055 b_and!322411)))

(declare-fun b!4147278 () Bool)

(declare-fun b_free!118339 () Bool)

(declare-fun b_next!119043 () Bool)

(assert (=> b!4147278 (= b_free!118339 (not b_next!119043))))

(declare-fun tp!1264059 () Bool)

(declare-fun b_and!322413 () Bool)

(assert (=> b!4147278 (= tp!1264059 b_and!322413)))

(declare-fun b_free!118341 () Bool)

(declare-fun b_next!119045 () Bool)

(assert (=> b!4147278 (= b_free!118341 (not b_next!119045))))

(declare-fun tp!1264056 () Bool)

(declare-fun b_and!322415 () Bool)

(assert (=> b!4147278 (= tp!1264056 b_and!322415)))

(declare-fun b!4147266 () Bool)

(declare-fun res!1697646 () Bool)

(declare-fun e!2573235 () Bool)

(assert (=> b!4147266 (=> (not res!1697646) (not e!2573235))))

(declare-datatypes ((LexerInterface!6993 0))(
  ( (LexerInterfaceExt!6990 (__x!27485 Int)) (Lexer!6991) )
))
(declare-fun thiss!25645 () LexerInterface!6993)

(declare-datatypes ((List!45135 0))(
  ( (Nil!45011) (Cons!45011 (h!50431 (_ BitVec 16)) (t!342910 List!45135)) )
))
(declare-datatypes ((TokenValue!7634 0))(
  ( (FloatLiteralValue!15268 (text!53883 List!45135)) (TokenValueExt!7633 (__x!27486 Int)) (Broken!38170 (value!231542 List!45135)) (Object!7757) (End!7634) (Def!7634) (Underscore!7634) (Match!7634) (Else!7634) (Error!7634) (Case!7634) (If!7634) (Extends!7634) (Abstract!7634) (Class!7634) (Val!7634) (DelimiterValue!15268 (del!7694 List!45135)) (KeywordValue!7640 (value!231543 List!45135)) (CommentValue!15268 (value!231544 List!45135)) (WhitespaceValue!15268 (value!231545 List!45135)) (IndentationValue!7634 (value!231546 List!45135)) (String!51919) (Int32!7634) (Broken!38171 (value!231547 List!45135)) (Boolean!7635) (Unit!64294) (OperatorValue!7637 (op!7694 List!45135)) (IdentifierValue!15268 (value!231548 List!45135)) (IdentifierValue!15269 (value!231549 List!45135)) (WhitespaceValue!15269 (value!231550 List!45135)) (True!15268) (False!15268) (Broken!38172 (value!231551 List!45135)) (Broken!38173 (value!231552 List!45135)) (True!15269) (RightBrace!7634) (RightBracket!7634) (Colon!7634) (Null!7634) (Comma!7634) (LeftBracket!7634) (False!15269) (LeftBrace!7634) (ImaginaryLiteralValue!7634 (text!53884 List!45135)) (StringLiteralValue!22902 (value!231553 List!45135)) (EOFValue!7634 (value!231554 List!45135)) (IdentValue!7634 (value!231555 List!45135)) (DelimiterValue!15269 (value!231556 List!45135)) (DedentValue!7634 (value!231557 List!45135)) (NewLineValue!7634 (value!231558 List!45135)) (IntegerValue!22902 (value!231559 (_ BitVec 32)) (text!53885 List!45135)) (IntegerValue!22903 (value!231560 Int) (text!53886 List!45135)) (Times!7634) (Or!7634) (Equal!7634) (Minus!7634) (Broken!38174 (value!231561 List!45135)) (And!7634) (Div!7634) (LessEqual!7634) (Mod!7634) (Concat!19943) (Not!7634) (Plus!7634) (SpaceValue!7634 (value!231562 List!45135)) (IntegerValue!22904 (value!231563 Int) (text!53887 List!45135)) (StringLiteralValue!22903 (text!53888 List!45135)) (FloatLiteralValue!15269 (text!53889 List!45135)) (BytesLiteralValue!7634 (value!231564 List!45135)) (CommentValue!15269 (value!231565 List!45135)) (StringLiteralValue!22904 (value!231566 List!45135)) (ErrorTokenValue!7634 (msg!7695 List!45135)) )
))
(declare-datatypes ((C!24804 0))(
  ( (C!24805 (val!14512 Int)) )
))
(declare-datatypes ((List!45136 0))(
  ( (Nil!45012) (Cons!45012 (h!50432 C!24804) (t!342911 List!45136)) )
))
(declare-datatypes ((IArray!27235 0))(
  ( (IArray!27236 (innerList!13675 List!45136)) )
))
(declare-datatypes ((Conc!13615 0))(
  ( (Node!13615 (left!33707 Conc!13615) (right!34037 Conc!13615) (csize!27460 Int) (cheight!13826 Int)) (Leaf!21032 (xs!16921 IArray!27235) (csize!27461 Int)) (Empty!13615) )
))
(declare-datatypes ((BalanceConc!26824 0))(
  ( (BalanceConc!26825 (c!710558 Conc!13615)) )
))
(declare-datatypes ((String!51920 0))(
  ( (String!51921 (value!231567 String)) )
))
(declare-datatypes ((Regex!12309 0))(
  ( (ElementMatch!12309 (c!710559 C!24804)) (Concat!19944 (regOne!25130 Regex!12309) (regTwo!25130 Regex!12309)) (EmptyExpr!12309) (Star!12309 (reg!12638 Regex!12309)) (EmptyLang!12309) (Union!12309 (regOne!25131 Regex!12309) (regTwo!25131 Regex!12309)) )
))
(declare-datatypes ((TokenValueInjection!14696 0))(
  ( (TokenValueInjection!14697 (toValue!10068 Int) (toChars!9927 Int)) )
))
(declare-datatypes ((Rule!14608 0))(
  ( (Rule!14609 (regex!7404 Regex!12309) (tag!8264 String!51920) (isSeparator!7404 Bool) (transformation!7404 TokenValueInjection!14696)) )
))
(declare-datatypes ((List!45137 0))(
  ( (Nil!45013) (Cons!45013 (h!50433 Rule!14608) (t!342912 List!45137)) )
))
(declare-fun rules!3756 () List!45137)

(declare-fun rulesInvariant!6290 (LexerInterface!6993 List!45137) Bool)

(assert (=> b!4147266 (= res!1697646 (rulesInvariant!6290 thiss!25645 rules!3756))))

(declare-fun b!4147267 () Bool)

(declare-fun res!1697650 () Bool)

(assert (=> b!4147267 (=> (not res!1697650) (not e!2573235))))

(declare-fun isEmpty!26865 (List!45137) Bool)

(assert (=> b!4147267 (= res!1697650 (not (isEmpty!26865 rules!3756)))))

(declare-fun b!4147268 () Bool)

(declare-fun e!2573236 () Bool)

(declare-fun e!2573239 () Bool)

(declare-fun tp!1264060 () Bool)

(assert (=> b!4147268 (= e!2573236 (and e!2573239 tp!1264060))))

(declare-fun b!4147269 () Bool)

(declare-fun res!1697653 () Bool)

(assert (=> b!4147269 (=> (not res!1697653) (not e!2573235))))

(declare-fun p!2912 () List!45136)

(declare-fun isEmpty!26866 (List!45136) Bool)

(assert (=> b!4147269 (= res!1697653 (not (isEmpty!26866 p!2912)))))

(declare-fun b!4147270 () Bool)

(declare-fun e!2573244 () Bool)

(declare-fun e!2573231 () Bool)

(assert (=> b!4147270 (= e!2573244 e!2573231)))

(declare-fun res!1697655 () Bool)

(assert (=> b!4147270 (=> res!1697655 e!2573231)))

(declare-datatypes ((Token!13738 0))(
  ( (Token!13739 (value!231568 TokenValue!7634) (rule!10532 Rule!14608) (size!33370 Int) (originalCharacters!7900 List!45136)) )
))
(declare-datatypes ((tuple2!43386 0))(
  ( (tuple2!43387 (_1!24827 Token!13738) (_2!24827 List!45136)) )
))
(declare-datatypes ((Option!9710 0))(
  ( (None!9709) (Some!9709 (v!40365 tuple2!43386)) )
))
(declare-fun lt!1479278 () Option!9710)

(declare-fun isEmpty!26867 (Option!9710) Bool)

(assert (=> b!4147270 (= res!1697655 (isEmpty!26867 lt!1479278))))

(declare-fun input!3238 () List!45136)

(declare-fun rBis!149 () Rule!14608)

(declare-fun maxPrefixOneRule!3122 (LexerInterface!6993 Rule!14608 List!45136) Option!9710)

(assert (=> b!4147270 (= lt!1479278 (maxPrefixOneRule!3122 thiss!25645 rBis!149 input!3238))))

(declare-fun r!4008 () Rule!14608)

(assert (=> b!4147270 (not (= rBis!149 r!4008))))

(declare-datatypes ((Unit!64295 0))(
  ( (Unit!64296) )
))
(declare-fun lt!1479285 () Unit!64295)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!102 (LexerInterface!6993 List!45137 Rule!14608 Rule!14608) Unit!64295)

(assert (=> b!4147270 (= lt!1479285 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!102 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun contains!9086 (List!45137 Rule!14608) Bool)

(declare-fun tail!6593 (List!45137) List!45137)

(assert (=> b!4147270 (contains!9086 (tail!6593 rules!3756) r!4008)))

(declare-fun lt!1479281 () Unit!64295)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!108 (List!45137 Rule!14608 Rule!14608) Unit!64295)

(assert (=> b!4147270 (= lt!1479281 (lemmaGetIndexBiggerAndHeadEqThenTailContains!108 rules!3756 rBis!149 r!4008))))

(declare-fun e!2573241 () Bool)

(assert (=> b!4147271 (= e!2573241 (and tp!1264065 tp!1264058))))

(declare-fun b!4147272 () Bool)

(declare-fun e!2573242 () Bool)

(declare-fun tp_is_empty!21541 () Bool)

(declare-fun tp!1264057 () Bool)

(assert (=> b!4147272 (= e!2573242 (and tp_is_empty!21541 tp!1264057))))

(declare-fun b!4147273 () Bool)

(declare-fun res!1697648 () Bool)

(declare-fun e!2573238 () Bool)

(assert (=> b!4147273 (=> (not res!1697648) (not e!2573238))))

(declare-fun getIndex!750 (List!45137 Rule!14608) Int)

(assert (=> b!4147273 (= res!1697648 (< (getIndex!750 rules!3756 rBis!149) (getIndex!750 rules!3756 r!4008)))))

(declare-fun b!4147274 () Bool)

(declare-fun res!1697647 () Bool)

(assert (=> b!4147274 (=> (not res!1697647) (not e!2573235))))

(assert (=> b!4147274 (= res!1697647 (contains!9086 rules!3756 rBis!149))))

(declare-fun e!2573230 () Bool)

(assert (=> b!4147275 (= e!2573230 (and tp!1264062 tp!1264055))))

(declare-fun b!4147276 () Bool)

(declare-fun e!2573243 () Bool)

(assert (=> b!4147276 (= e!2573231 e!2573243)))

(declare-fun res!1697649 () Bool)

(assert (=> b!4147276 (=> res!1697649 e!2573243)))

(declare-fun lt!1479283 () Int)

(declare-fun lt!1479276 () Int)

(assert (=> b!4147276 (= res!1697649 (or (> lt!1479283 lt!1479276) (< lt!1479283 lt!1479276)))))

(declare-fun lt!1479277 () tuple2!43386)

(declare-fun size!33371 (BalanceConc!26824) Int)

(declare-fun charsOf!5003 (Token!13738) BalanceConc!26824)

(assert (=> b!4147276 (= lt!1479283 (size!33371 (charsOf!5003 (_1!24827 lt!1479277))))))

(declare-fun get!14701 (Option!9710) tuple2!43386)

(assert (=> b!4147276 (= lt!1479277 (get!14701 lt!1479278))))

(declare-fun b!4147277 () Bool)

(declare-fun res!1697657 () Bool)

(assert (=> b!4147277 (=> (not res!1697657) (not e!2573238))))

(declare-fun ruleValid!3210 (LexerInterface!6993 Rule!14608) Bool)

(assert (=> b!4147277 (= res!1697657 (ruleValid!3210 thiss!25645 r!4008))))

(declare-fun e!2573240 () Bool)

(assert (=> b!4147278 (= e!2573240 (and tp!1264059 tp!1264056))))

(declare-fun b!4147279 () Bool)

(assert (=> b!4147279 (= e!2573235 e!2573238)))

(declare-fun res!1697658 () Bool)

(assert (=> b!4147279 (=> (not res!1697658) (not e!2573238))))

(declare-fun lt!1479275 () tuple2!43386)

(declare-fun maxPrefix!4183 (LexerInterface!6993 List!45137 List!45136) Option!9710)

(assert (=> b!4147279 (= res!1697658 (= (maxPrefix!4183 thiss!25645 rules!3756 input!3238) (Some!9709 lt!1479275)))))

(declare-fun lt!1479282 () TokenValue!7634)

(declare-fun getSuffix!2666 (List!45136 List!45136) List!45136)

(assert (=> b!4147279 (= lt!1479275 (tuple2!43387 (Token!13739 lt!1479282 r!4008 lt!1479276 p!2912) (getSuffix!2666 input!3238 p!2912)))))

(declare-fun size!33372 (List!45136) Int)

(assert (=> b!4147279 (= lt!1479276 (size!33372 p!2912))))

(declare-fun lt!1479279 () BalanceConc!26824)

(declare-fun apply!10477 (TokenValueInjection!14696 BalanceConc!26824) TokenValue!7634)

(assert (=> b!4147279 (= lt!1479282 (apply!10477 (transformation!7404 r!4008) lt!1479279))))

(declare-fun lt!1479274 () Unit!64295)

(declare-fun lemmaSemiInverse!2262 (TokenValueInjection!14696 BalanceConc!26824) Unit!64295)

(assert (=> b!4147279 (= lt!1479274 (lemmaSemiInverse!2262 (transformation!7404 r!4008) lt!1479279))))

(declare-fun seqFromList!5521 (List!45136) BalanceConc!26824)

(assert (=> b!4147279 (= lt!1479279 (seqFromList!5521 p!2912))))

(declare-fun b!4147280 () Bool)

(assert (=> b!4147280 (= e!2573238 (not e!2573244))))

(declare-fun res!1697645 () Bool)

(assert (=> b!4147280 (=> res!1697645 e!2573244)))

(get-info :version)

(assert (=> b!4147280 (= res!1697645 (or (not ((_ is Cons!45013) rules!3756)) (not (= (h!50433 rules!3756) rBis!149))))))

(declare-fun lt!1479280 () Unit!64295)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2250 (LexerInterface!6993 Rule!14608 List!45137) Unit!64295)

(assert (=> b!4147280 (= lt!1479280 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2250 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4147280 (ruleValid!3210 thiss!25645 rBis!149)))

(declare-fun lt!1479286 () Unit!64295)

(assert (=> b!4147280 (= lt!1479286 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2250 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4147281 () Bool)

(declare-fun res!1697651 () Bool)

(assert (=> b!4147281 (=> (not res!1697651) (not e!2573235))))

(declare-fun isPrefix!4339 (List!45136 List!45136) Bool)

(assert (=> b!4147281 (= res!1697651 (isPrefix!4339 p!2912 input!3238))))

(declare-fun b!4147282 () Bool)

(declare-fun e!2573228 () Bool)

(declare-fun tp!1264066 () Bool)

(assert (=> b!4147282 (= e!2573228 (and tp_is_empty!21541 tp!1264066))))

(declare-fun b!4147283 () Bool)

(declare-fun res!1697656 () Bool)

(assert (=> b!4147283 (=> (not res!1697656) (not e!2573235))))

(assert (=> b!4147283 (= res!1697656 (contains!9086 rules!3756 r!4008))))

(declare-fun res!1697654 () Bool)

(assert (=> start!394630 (=> (not res!1697654) (not e!2573235))))

(assert (=> start!394630 (= res!1697654 ((_ is Lexer!6991) thiss!25645))))

(assert (=> start!394630 e!2573235))

(assert (=> start!394630 e!2573236))

(assert (=> start!394630 e!2573228))

(assert (=> start!394630 true))

(declare-fun e!2573233 () Bool)

(assert (=> start!394630 e!2573233))

(assert (=> start!394630 e!2573242))

(declare-fun e!2573229 () Bool)

(assert (=> start!394630 e!2573229))

(declare-fun b!4147284 () Bool)

(declare-fun tp!1264063 () Bool)

(declare-fun inv!59623 (String!51920) Bool)

(declare-fun inv!59625 (TokenValueInjection!14696) Bool)

(assert (=> b!4147284 (= e!2573239 (and tp!1264063 (inv!59623 (tag!8264 (h!50433 rules!3756))) (inv!59625 (transformation!7404 (h!50433 rules!3756))) e!2573230))))

(declare-fun b!4147285 () Bool)

(assert (=> b!4147285 (= e!2573243 true)))

(declare-fun lt!1479273 () Bool)

(declare-fun matchR!6138 (Regex!12309 List!45136) Bool)

(assert (=> b!4147285 (= lt!1479273 (matchR!6138 (regex!7404 rBis!149) p!2912))))

(assert (=> b!4147285 (and (not (= (tag!8264 rBis!149) (tag!8264 r!4008))) (not (= lt!1479277 lt!1479275)))))

(declare-fun lt!1479284 () Unit!64295)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!66 (LexerInterface!6993 List!45137 Rule!14608 Rule!14608) Unit!64295)

(assert (=> b!4147285 (= lt!1479284 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!66 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun b!4147286 () Bool)

(declare-fun tp!1264061 () Bool)

(assert (=> b!4147286 (= e!2573233 (and tp!1264061 (inv!59623 (tag!8264 r!4008)) (inv!59625 (transformation!7404 r!4008)) e!2573240))))

(declare-fun tp!1264064 () Bool)

(declare-fun b!4147287 () Bool)

(assert (=> b!4147287 (= e!2573229 (and tp!1264064 (inv!59623 (tag!8264 rBis!149)) (inv!59625 (transformation!7404 rBis!149)) e!2573241))))

(declare-fun b!4147288 () Bool)

(declare-fun res!1697652 () Bool)

(assert (=> b!4147288 (=> (not res!1697652) (not e!2573238))))

(assert (=> b!4147288 (= res!1697652 (matchR!6138 (regex!7404 r!4008) p!2912))))

(assert (= (and start!394630 res!1697654) b!4147281))

(assert (= (and b!4147281 res!1697651) b!4147267))

(assert (= (and b!4147267 res!1697650) b!4147266))

(assert (= (and b!4147266 res!1697646) b!4147283))

(assert (= (and b!4147283 res!1697656) b!4147274))

(assert (= (and b!4147274 res!1697647) b!4147269))

(assert (= (and b!4147269 res!1697653) b!4147279))

(assert (= (and b!4147279 res!1697658) b!4147288))

(assert (= (and b!4147288 res!1697652) b!4147273))

(assert (= (and b!4147273 res!1697648) b!4147277))

(assert (= (and b!4147277 res!1697657) b!4147280))

(assert (= (and b!4147280 (not res!1697645)) b!4147270))

(assert (= (and b!4147270 (not res!1697655)) b!4147276))

(assert (= (and b!4147276 (not res!1697649)) b!4147285))

(assert (= b!4147284 b!4147275))

(assert (= b!4147268 b!4147284))

(assert (= (and start!394630 ((_ is Cons!45013) rules!3756)) b!4147268))

(assert (= (and start!394630 ((_ is Cons!45012) p!2912)) b!4147282))

(assert (= b!4147286 b!4147278))

(assert (= start!394630 b!4147286))

(assert (= (and start!394630 ((_ is Cons!45012) input!3238)) b!4147272))

(assert (= b!4147287 b!4147271))

(assert (= start!394630 b!4147287))

(declare-fun m!4743169 () Bool)

(assert (=> b!4147287 m!4743169))

(declare-fun m!4743171 () Bool)

(assert (=> b!4147287 m!4743171))

(declare-fun m!4743173 () Bool)

(assert (=> b!4147269 m!4743173))

(declare-fun m!4743175 () Bool)

(assert (=> b!4147283 m!4743175))

(declare-fun m!4743177 () Bool)

(assert (=> b!4147266 m!4743177))

(declare-fun m!4743179 () Bool)

(assert (=> b!4147274 m!4743179))

(declare-fun m!4743181 () Bool)

(assert (=> b!4147284 m!4743181))

(declare-fun m!4743183 () Bool)

(assert (=> b!4147284 m!4743183))

(declare-fun m!4743185 () Bool)

(assert (=> b!4147273 m!4743185))

(declare-fun m!4743187 () Bool)

(assert (=> b!4147273 m!4743187))

(declare-fun m!4743189 () Bool)

(assert (=> b!4147285 m!4743189))

(declare-fun m!4743191 () Bool)

(assert (=> b!4147285 m!4743191))

(declare-fun m!4743193 () Bool)

(assert (=> b!4147279 m!4743193))

(declare-fun m!4743195 () Bool)

(assert (=> b!4147279 m!4743195))

(declare-fun m!4743197 () Bool)

(assert (=> b!4147279 m!4743197))

(declare-fun m!4743199 () Bool)

(assert (=> b!4147279 m!4743199))

(declare-fun m!4743201 () Bool)

(assert (=> b!4147279 m!4743201))

(declare-fun m!4743203 () Bool)

(assert (=> b!4147279 m!4743203))

(declare-fun m!4743205 () Bool)

(assert (=> b!4147280 m!4743205))

(declare-fun m!4743207 () Bool)

(assert (=> b!4147280 m!4743207))

(declare-fun m!4743209 () Bool)

(assert (=> b!4147280 m!4743209))

(declare-fun m!4743211 () Bool)

(assert (=> b!4147267 m!4743211))

(declare-fun m!4743213 () Bool)

(assert (=> b!4147270 m!4743213))

(declare-fun m!4743215 () Bool)

(assert (=> b!4147270 m!4743215))

(declare-fun m!4743217 () Bool)

(assert (=> b!4147270 m!4743217))

(assert (=> b!4147270 m!4743213))

(declare-fun m!4743219 () Bool)

(assert (=> b!4147270 m!4743219))

(declare-fun m!4743221 () Bool)

(assert (=> b!4147270 m!4743221))

(declare-fun m!4743223 () Bool)

(assert (=> b!4147270 m!4743223))

(declare-fun m!4743225 () Bool)

(assert (=> b!4147276 m!4743225))

(assert (=> b!4147276 m!4743225))

(declare-fun m!4743227 () Bool)

(assert (=> b!4147276 m!4743227))

(declare-fun m!4743229 () Bool)

(assert (=> b!4147276 m!4743229))

(declare-fun m!4743231 () Bool)

(assert (=> b!4147286 m!4743231))

(declare-fun m!4743233 () Bool)

(assert (=> b!4147286 m!4743233))

(declare-fun m!4743235 () Bool)

(assert (=> b!4147288 m!4743235))

(declare-fun m!4743237 () Bool)

(assert (=> b!4147281 m!4743237))

(declare-fun m!4743239 () Bool)

(assert (=> b!4147277 m!4743239))

(check-sat (not b!4147270) (not b!4147282) (not b!4147269) b_and!322407 tp_is_empty!21541 (not b!4147283) (not b!4147276) (not b!4147285) (not b_next!119035) (not b!4147274) (not b!4147267) (not b!4147286) (not b!4147272) b_and!322411 b_and!322415 (not b_next!119039) (not b!4147273) (not b!4147280) (not b!4147279) (not b!4147281) (not b_next!119045) (not b!4147287) b_and!322405 (not b_next!119043) b_and!322413 (not b!4147277) (not b!4147268) (not b!4147266) (not b!4147284) b_and!322409 (not b_next!119041) (not b_next!119037) (not b!4147288))
(check-sat b_and!322407 (not b_next!119039) (not b_next!119045) (not b_next!119035) b_and!322413 b_and!322409 b_and!322411 b_and!322415 b_and!322405 (not b_next!119043) (not b_next!119041) (not b_next!119037))
