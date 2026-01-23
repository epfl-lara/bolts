; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!391222 () Bool)

(assert start!391222)

(declare-fun b!4124287 () Bool)

(declare-fun b_free!116763 () Bool)

(declare-fun b_next!117467 () Bool)

(assert (=> b!4124287 (= b_free!116763 (not b_next!117467))))

(declare-fun tp!1256819 () Bool)

(declare-fun b_and!319205 () Bool)

(assert (=> b!4124287 (= tp!1256819 b_and!319205)))

(declare-fun b_free!116765 () Bool)

(declare-fun b_next!117469 () Bool)

(assert (=> b!4124287 (= b_free!116765 (not b_next!117469))))

(declare-fun tp!1256821 () Bool)

(declare-fun b_and!319207 () Bool)

(assert (=> b!4124287 (= tp!1256821 b_and!319207)))

(declare-fun b!4124266 () Bool)

(declare-fun b_free!116767 () Bool)

(declare-fun b_next!117471 () Bool)

(assert (=> b!4124266 (= b_free!116767 (not b_next!117471))))

(declare-fun tp!1256816 () Bool)

(declare-fun b_and!319209 () Bool)

(assert (=> b!4124266 (= tp!1256816 b_and!319209)))

(declare-fun b_free!116769 () Bool)

(declare-fun b_next!117473 () Bool)

(assert (=> b!4124266 (= b_free!116769 (not b_next!117473))))

(declare-fun tp!1256817 () Bool)

(declare-fun b_and!319211 () Bool)

(assert (=> b!4124266 (= tp!1256817 b_and!319211)))

(declare-fun b!4124270 () Bool)

(declare-fun b_free!116771 () Bool)

(declare-fun b_next!117475 () Bool)

(assert (=> b!4124270 (= b_free!116771 (not b_next!117475))))

(declare-fun tp!1256822 () Bool)

(declare-fun b_and!319213 () Bool)

(assert (=> b!4124270 (= tp!1256822 b_and!319213)))

(declare-fun b_free!116773 () Bool)

(declare-fun b_next!117477 () Bool)

(assert (=> b!4124270 (= b_free!116773 (not b_next!117477))))

(declare-fun tp!1256815 () Bool)

(declare-fun b_and!319215 () Bool)

(assert (=> b!4124270 (= tp!1256815 b_and!319215)))

(declare-fun b!4124265 () Bool)

(declare-fun e!2559161 () Bool)

(declare-fun e!2559157 () Bool)

(assert (=> b!4124265 (= e!2559161 e!2559157)))

(declare-fun res!1685509 () Bool)

(assert (=> b!4124265 (=> (not res!1685509) (not e!2559157))))

(declare-datatypes ((List!44749 0))(
  ( (Nil!44625) (Cons!44625 (h!50045 (_ BitVec 16)) (t!341006 List!44749)) )
))
(declare-datatypes ((TokenValue!7526 0))(
  ( (FloatLiteralValue!15052 (text!53127 List!44749)) (TokenValueExt!7525 (__x!27269 Int)) (Broken!37630 (value!228464 List!44749)) (Object!7649) (End!7526) (Def!7526) (Underscore!7526) (Match!7526) (Else!7526) (Error!7526) (Case!7526) (If!7526) (Extends!7526) (Abstract!7526) (Class!7526) (Val!7526) (DelimiterValue!15052 (del!7586 List!44749)) (KeywordValue!7532 (value!228465 List!44749)) (CommentValue!15052 (value!228466 List!44749)) (WhitespaceValue!15052 (value!228467 List!44749)) (IndentationValue!7526 (value!228468 List!44749)) (String!51379) (Int32!7526) (Broken!37631 (value!228469 List!44749)) (Boolean!7527) (Unit!63964) (OperatorValue!7529 (op!7586 List!44749)) (IdentifierValue!15052 (value!228470 List!44749)) (IdentifierValue!15053 (value!228471 List!44749)) (WhitespaceValue!15053 (value!228472 List!44749)) (True!15052) (False!15052) (Broken!37632 (value!228473 List!44749)) (Broken!37633 (value!228474 List!44749)) (True!15053) (RightBrace!7526) (RightBracket!7526) (Colon!7526) (Null!7526) (Comma!7526) (LeftBracket!7526) (False!15053) (LeftBrace!7526) (ImaginaryLiteralValue!7526 (text!53128 List!44749)) (StringLiteralValue!22578 (value!228475 List!44749)) (EOFValue!7526 (value!228476 List!44749)) (IdentValue!7526 (value!228477 List!44749)) (DelimiterValue!15053 (value!228478 List!44749)) (DedentValue!7526 (value!228479 List!44749)) (NewLineValue!7526 (value!228480 List!44749)) (IntegerValue!22578 (value!228481 (_ BitVec 32)) (text!53129 List!44749)) (IntegerValue!22579 (value!228482 Int) (text!53130 List!44749)) (Times!7526) (Or!7526) (Equal!7526) (Minus!7526) (Broken!37634 (value!228483 List!44749)) (And!7526) (Div!7526) (LessEqual!7526) (Mod!7526) (Concat!19727) (Not!7526) (Plus!7526) (SpaceValue!7526 (value!228484 List!44749)) (IntegerValue!22580 (value!228485 Int) (text!53131 List!44749)) (StringLiteralValue!22579 (text!53132 List!44749)) (FloatLiteralValue!15053 (text!53133 List!44749)) (BytesLiteralValue!7526 (value!228486 List!44749)) (CommentValue!15053 (value!228487 List!44749)) (StringLiteralValue!22580 (value!228488 List!44749)) (ErrorTokenValue!7526 (msg!7587 List!44749)) )
))
(declare-datatypes ((C!24588 0))(
  ( (C!24589 (val!14404 Int)) )
))
(declare-datatypes ((List!44750 0))(
  ( (Nil!44626) (Cons!44626 (h!50046 C!24588) (t!341007 List!44750)) )
))
(declare-datatypes ((IArray!27019 0))(
  ( (IArray!27020 (innerList!13567 List!44750)) )
))
(declare-datatypes ((Conc!13507 0))(
  ( (Node!13507 (left!33421 Conc!13507) (right!33751 Conc!13507) (csize!27244 Int) (cheight!13718 Int)) (Leaf!20870 (xs!16813 IArray!27019) (csize!27245 Int)) (Empty!13507) )
))
(declare-datatypes ((BalanceConc!26608 0))(
  ( (BalanceConc!26609 (c!707944 Conc!13507)) )
))
(declare-datatypes ((String!51380 0))(
  ( (String!51381 (value!228489 String)) )
))
(declare-datatypes ((Regex!12201 0))(
  ( (ElementMatch!12201 (c!707945 C!24588)) (Concat!19728 (regOne!24914 Regex!12201) (regTwo!24914 Regex!12201)) (EmptyExpr!12201) (Star!12201 (reg!12530 Regex!12201)) (EmptyLang!12201) (Union!12201 (regOne!24915 Regex!12201) (regTwo!24915 Regex!12201)) )
))
(declare-datatypes ((TokenValueInjection!14480 0))(
  ( (TokenValueInjection!14481 (toValue!9948 Int) (toChars!9807 Int)) )
))
(declare-datatypes ((Rule!14392 0))(
  ( (Rule!14393 (regex!7296 Regex!12201) (tag!8156 String!51380) (isSeparator!7296 Bool) (transformation!7296 TokenValueInjection!14480)) )
))
(declare-datatypes ((List!44751 0))(
  ( (Nil!44627) (Cons!44627 (h!50047 Rule!14392) (t!341008 List!44751)) )
))
(declare-fun rules!3756 () List!44751)

(declare-fun input!3238 () List!44750)

(declare-datatypes ((LexerInterface!6885 0))(
  ( (LexerInterfaceExt!6882 (__x!27270 Int)) (Lexer!6883) )
))
(declare-fun thiss!25645 () LexerInterface!6885)

(declare-datatypes ((Token!13522 0))(
  ( (Token!13523 (value!228490 TokenValue!7526) (rule!10378 Rule!14392) (size!33044 Int) (originalCharacters!7792 List!44750)) )
))
(declare-datatypes ((tuple2!43082 0))(
  ( (tuple2!43083 (_1!24675 Token!13522) (_2!24675 List!44750)) )
))
(declare-fun lt!1471520 () tuple2!43082)

(declare-datatypes ((Option!9604 0))(
  ( (None!9603) (Some!9603 (v!40197 tuple2!43082)) )
))
(declare-fun maxPrefix!4077 (LexerInterface!6885 List!44751 List!44750) Option!9604)

(assert (=> b!4124265 (= res!1685509 (= (maxPrefix!4077 thiss!25645 rules!3756 input!3238) (Some!9603 lt!1471520)))))

(declare-fun p!2912 () List!44750)

(declare-fun lt!1471513 () TokenValue!7526)

(declare-fun lt!1471512 () Int)

(declare-fun r!4008 () Rule!14392)

(declare-fun getSuffix!2560 (List!44750 List!44750) List!44750)

(assert (=> b!4124265 (= lt!1471520 (tuple2!43083 (Token!13523 lt!1471513 r!4008 lt!1471512 p!2912) (getSuffix!2560 input!3238 p!2912)))))

(declare-fun size!33045 (List!44750) Int)

(assert (=> b!4124265 (= lt!1471512 (size!33045 p!2912))))

(declare-fun lt!1471523 () BalanceConc!26608)

(declare-fun apply!10369 (TokenValueInjection!14480 BalanceConc!26608) TokenValue!7526)

(assert (=> b!4124265 (= lt!1471513 (apply!10369 (transformation!7296 r!4008) lt!1471523))))

(declare-datatypes ((Unit!63965 0))(
  ( (Unit!63966) )
))
(declare-fun lt!1471518 () Unit!63965)

(declare-fun lemmaSemiInverse!2154 (TokenValueInjection!14480 BalanceConc!26608) Unit!63965)

(assert (=> b!4124265 (= lt!1471518 (lemmaSemiInverse!2154 (transformation!7296 r!4008) lt!1471523))))

(declare-fun seqFromList!5413 (List!44750) BalanceConc!26608)

(assert (=> b!4124265 (= lt!1471523 (seqFromList!5413 p!2912))))

(declare-fun e!2559158 () Bool)

(assert (=> b!4124266 (= e!2559158 (and tp!1256816 tp!1256817))))

(declare-fun res!1685504 () Bool)

(assert (=> start!391222 (=> (not res!1685504) (not e!2559161))))

(get-info :version)

(assert (=> start!391222 (= res!1685504 ((_ is Lexer!6883) thiss!25645))))

(assert (=> start!391222 e!2559161))

(declare-fun e!2559148 () Bool)

(assert (=> start!391222 e!2559148))

(declare-fun e!2559160 () Bool)

(assert (=> start!391222 e!2559160))

(assert (=> start!391222 true))

(declare-fun e!2559150 () Bool)

(assert (=> start!391222 e!2559150))

(declare-fun e!2559164 () Bool)

(assert (=> start!391222 e!2559164))

(declare-fun e!2559147 () Bool)

(assert (=> start!391222 e!2559147))

(declare-fun b!4124267 () Bool)

(declare-fun res!1685505 () Bool)

(assert (=> b!4124267 (=> (not res!1685505) (not e!2559157))))

(declare-fun rBis!149 () Rule!14392)

(declare-fun getIndex!644 (List!44751 Rule!14392) Int)

(assert (=> b!4124267 (= res!1685505 (< (getIndex!644 rules!3756 rBis!149) (getIndex!644 rules!3756 r!4008)))))

(declare-fun b!4124268 () Bool)

(declare-fun res!1685517 () Bool)

(assert (=> b!4124268 (=> (not res!1685517) (not e!2559161))))

(declare-fun contains!8968 (List!44751 Rule!14392) Bool)

(assert (=> b!4124268 (= res!1685517 (contains!8968 rules!3756 r!4008))))

(declare-fun b!4124269 () Bool)

(declare-fun res!1685513 () Bool)

(assert (=> b!4124269 (=> (not res!1685513) (not e!2559161))))

(declare-fun rulesInvariant!6182 (LexerInterface!6885 List!44751) Bool)

(assert (=> b!4124269 (= res!1685513 (rulesInvariant!6182 thiss!25645 rules!3756))))

(declare-fun e!2559154 () Bool)

(assert (=> b!4124270 (= e!2559154 (and tp!1256822 tp!1256815))))

(declare-fun e!2559159 () Bool)

(declare-fun b!4124271 () Bool)

(declare-fun tp!1256823 () Bool)

(declare-fun inv!59205 (String!51380) Bool)

(declare-fun inv!59207 (TokenValueInjection!14480) Bool)

(assert (=> b!4124271 (= e!2559159 (and tp!1256823 (inv!59205 (tag!8156 (h!50047 rules!3756))) (inv!59207 (transformation!7296 (h!50047 rules!3756))) e!2559154))))

(declare-fun b!4124272 () Bool)

(declare-fun res!1685511 () Bool)

(assert (=> b!4124272 (=> (not res!1685511) (not e!2559157))))

(declare-fun matchR!6032 (Regex!12201 List!44750) Bool)

(assert (=> b!4124272 (= res!1685511 (matchR!6032 (regex!7296 r!4008) p!2912))))

(declare-fun tp!1256820 () Bool)

(declare-fun b!4124273 () Bool)

(assert (=> b!4124273 (= e!2559150 (and tp!1256820 (inv!59205 (tag!8156 r!4008)) (inv!59207 (transformation!7296 r!4008)) e!2559158))))

(declare-fun b!4124274 () Bool)

(declare-fun res!1685514 () Bool)

(assert (=> b!4124274 (=> (not res!1685514) (not e!2559161))))

(assert (=> b!4124274 (= res!1685514 (contains!8968 rules!3756 rBis!149))))

(declare-fun b!4124275 () Bool)

(declare-fun tp_is_empty!21325 () Bool)

(declare-fun tp!1256818 () Bool)

(assert (=> b!4124275 (= e!2559160 (and tp_is_empty!21325 tp!1256818))))

(declare-fun b!4124276 () Bool)

(declare-fun e!2559151 () Bool)

(declare-fun validRegex!5488 (Regex!12201) Bool)

(assert (=> b!4124276 (= e!2559151 (validRegex!5488 (regex!7296 rBis!149)))))

(declare-fun e!2559152 () Bool)

(declare-fun b!4124277 () Bool)

(declare-fun tp!1256813 () Bool)

(assert (=> b!4124277 (= e!2559147 (and tp!1256813 (inv!59205 (tag!8156 rBis!149)) (inv!59207 (transformation!7296 rBis!149)) e!2559152))))

(declare-fun b!4124278 () Bool)

(declare-fun e!2559155 () Bool)

(declare-fun e!2559163 () Bool)

(assert (=> b!4124278 (= e!2559155 e!2559163)))

(declare-fun res!1685506 () Bool)

(assert (=> b!4124278 (=> res!1685506 e!2559163)))

(declare-fun lt!1471519 () Option!9604)

(declare-fun isEmpty!26562 (Option!9604) Bool)

(assert (=> b!4124278 (= res!1685506 (isEmpty!26562 lt!1471519))))

(declare-fun maxPrefixOneRule!3027 (LexerInterface!6885 Rule!14392 List!44750) Option!9604)

(assert (=> b!4124278 (= lt!1471519 (maxPrefixOneRule!3027 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4124278 (not (= rBis!149 r!4008))))

(declare-fun lt!1471515 () Unit!63965)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!36 (LexerInterface!6885 List!44751 Rule!14392 Rule!14392) Unit!63965)

(assert (=> b!4124278 (= lt!1471515 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!36 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6461 (List!44751) List!44751)

(assert (=> b!4124278 (contains!8968 (tail!6461 rules!3756) r!4008)))

(declare-fun lt!1471516 () Unit!63965)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!38 (List!44751 Rule!14392 Rule!14392) Unit!63965)

(assert (=> b!4124278 (= lt!1471516 (lemmaGetIndexBiggerAndHeadEqThenTailContains!38 rules!3756 rBis!149 r!4008))))

(declare-fun b!4124279 () Bool)

(declare-fun res!1685512 () Bool)

(assert (=> b!4124279 (=> (not res!1685512) (not e!2559157))))

(declare-fun ruleValid!3104 (LexerInterface!6885 Rule!14392) Bool)

(assert (=> b!4124279 (= res!1685512 (ruleValid!3104 thiss!25645 r!4008))))

(declare-fun b!4124280 () Bool)

(assert (=> b!4124280 (= e!2559157 (not e!2559155))))

(declare-fun res!1685515 () Bool)

(assert (=> b!4124280 (=> res!1685515 e!2559155)))

(assert (=> b!4124280 (= res!1685515 (or (not ((_ is Cons!44627) rules!3756)) (not (= (h!50047 rules!3756) rBis!149))))))

(declare-fun lt!1471517 () Unit!63965)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2148 (LexerInterface!6885 Rule!14392 List!44751) Unit!63965)

(assert (=> b!4124280 (= lt!1471517 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2148 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4124280 (ruleValid!3104 thiss!25645 rBis!149)))

(declare-fun lt!1471521 () Unit!63965)

(assert (=> b!4124280 (= lt!1471521 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2148 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4124281 () Bool)

(declare-fun res!1685503 () Bool)

(assert (=> b!4124281 (=> (not res!1685503) (not e!2559161))))

(declare-fun isEmpty!26563 (List!44751) Bool)

(assert (=> b!4124281 (= res!1685503 (not (isEmpty!26563 rules!3756)))))

(declare-fun b!4124282 () Bool)

(declare-fun e!2559153 () Bool)

(assert (=> b!4124282 (= e!2559153 e!2559151)))

(declare-fun res!1685508 () Bool)

(assert (=> b!4124282 (=> res!1685508 e!2559151)))

(assert (=> b!4124282 (= res!1685508 (matchR!6032 (regex!7296 rBis!149) p!2912))))

(declare-fun lt!1471524 () tuple2!43082)

(assert (=> b!4124282 (and (not (= (tag!8156 rBis!149) (tag!8156 r!4008))) (not (= lt!1471524 lt!1471520)))))

(declare-fun lt!1471522 () Unit!63965)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!54 (LexerInterface!6885 List!44751 Rule!14392 Rule!14392) Unit!63965)

(assert (=> b!4124282 (= lt!1471522 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!54 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun b!4124283 () Bool)

(declare-fun tp!1256814 () Bool)

(assert (=> b!4124283 (= e!2559164 (and tp_is_empty!21325 tp!1256814))))

(declare-fun b!4124284 () Bool)

(declare-fun res!1685510 () Bool)

(assert (=> b!4124284 (=> (not res!1685510) (not e!2559161))))

(declare-fun isEmpty!26564 (List!44750) Bool)

(assert (=> b!4124284 (= res!1685510 (not (isEmpty!26564 p!2912)))))

(declare-fun b!4124285 () Bool)

(declare-fun res!1685507 () Bool)

(assert (=> b!4124285 (=> (not res!1685507) (not e!2559161))))

(declare-fun isPrefix!4231 (List!44750 List!44750) Bool)

(assert (=> b!4124285 (= res!1685507 (isPrefix!4231 p!2912 input!3238))))

(declare-fun b!4124286 () Bool)

(declare-fun tp!1256824 () Bool)

(assert (=> b!4124286 (= e!2559148 (and e!2559159 tp!1256824))))

(assert (=> b!4124287 (= e!2559152 (and tp!1256819 tp!1256821))))

(declare-fun b!4124288 () Bool)

(assert (=> b!4124288 (= e!2559163 e!2559153)))

(declare-fun res!1685516 () Bool)

(assert (=> b!4124288 (=> res!1685516 e!2559153)))

(declare-fun lt!1471514 () Int)

(assert (=> b!4124288 (= res!1685516 (or (> lt!1471514 lt!1471512) (< lt!1471514 lt!1471512)))))

(declare-fun size!33046 (BalanceConc!26608) Int)

(declare-fun charsOf!4918 (Token!13522) BalanceConc!26608)

(assert (=> b!4124288 (= lt!1471514 (size!33046 (charsOf!4918 (_1!24675 lt!1471524))))))

(declare-fun get!14562 (Option!9604) tuple2!43082)

(assert (=> b!4124288 (= lt!1471524 (get!14562 lt!1471519))))

(assert (= (and start!391222 res!1685504) b!4124285))

(assert (= (and b!4124285 res!1685507) b!4124281))

(assert (= (and b!4124281 res!1685503) b!4124269))

(assert (= (and b!4124269 res!1685513) b!4124268))

(assert (= (and b!4124268 res!1685517) b!4124274))

(assert (= (and b!4124274 res!1685514) b!4124284))

(assert (= (and b!4124284 res!1685510) b!4124265))

(assert (= (and b!4124265 res!1685509) b!4124272))

(assert (= (and b!4124272 res!1685511) b!4124267))

(assert (= (and b!4124267 res!1685505) b!4124279))

(assert (= (and b!4124279 res!1685512) b!4124280))

(assert (= (and b!4124280 (not res!1685515)) b!4124278))

(assert (= (and b!4124278 (not res!1685506)) b!4124288))

(assert (= (and b!4124288 (not res!1685516)) b!4124282))

(assert (= (and b!4124282 (not res!1685508)) b!4124276))

(assert (= b!4124271 b!4124270))

(assert (= b!4124286 b!4124271))

(assert (= (and start!391222 ((_ is Cons!44627) rules!3756)) b!4124286))

(assert (= (and start!391222 ((_ is Cons!44626) p!2912)) b!4124275))

(assert (= b!4124273 b!4124266))

(assert (= start!391222 b!4124273))

(assert (= (and start!391222 ((_ is Cons!44626) input!3238)) b!4124283))

(assert (= b!4124277 b!4124287))

(assert (= start!391222 b!4124277))

(declare-fun m!4723163 () Bool)

(assert (=> b!4124267 m!4723163))

(declare-fun m!4723165 () Bool)

(assert (=> b!4124267 m!4723165))

(declare-fun m!4723167 () Bool)

(assert (=> b!4124272 m!4723167))

(declare-fun m!4723169 () Bool)

(assert (=> b!4124277 m!4723169))

(declare-fun m!4723171 () Bool)

(assert (=> b!4124277 m!4723171))

(declare-fun m!4723173 () Bool)

(assert (=> b!4124280 m!4723173))

(declare-fun m!4723175 () Bool)

(assert (=> b!4124280 m!4723175))

(declare-fun m!4723177 () Bool)

(assert (=> b!4124280 m!4723177))

(declare-fun m!4723179 () Bool)

(assert (=> b!4124288 m!4723179))

(assert (=> b!4124288 m!4723179))

(declare-fun m!4723181 () Bool)

(assert (=> b!4124288 m!4723181))

(declare-fun m!4723183 () Bool)

(assert (=> b!4124288 m!4723183))

(declare-fun m!4723185 () Bool)

(assert (=> b!4124279 m!4723185))

(declare-fun m!4723187 () Bool)

(assert (=> b!4124271 m!4723187))

(declare-fun m!4723189 () Bool)

(assert (=> b!4124271 m!4723189))

(declare-fun m!4723191 () Bool)

(assert (=> b!4124278 m!4723191))

(declare-fun m!4723193 () Bool)

(assert (=> b!4124278 m!4723193))

(declare-fun m!4723195 () Bool)

(assert (=> b!4124278 m!4723195))

(assert (=> b!4124278 m!4723191))

(declare-fun m!4723197 () Bool)

(assert (=> b!4124278 m!4723197))

(declare-fun m!4723199 () Bool)

(assert (=> b!4124278 m!4723199))

(declare-fun m!4723201 () Bool)

(assert (=> b!4124278 m!4723201))

(declare-fun m!4723203 () Bool)

(assert (=> b!4124269 m!4723203))

(declare-fun m!4723205 () Bool)

(assert (=> b!4124276 m!4723205))

(declare-fun m!4723207 () Bool)

(assert (=> b!4124274 m!4723207))

(declare-fun m!4723209 () Bool)

(assert (=> b!4124281 m!4723209))

(declare-fun m!4723211 () Bool)

(assert (=> b!4124273 m!4723211))

(declare-fun m!4723213 () Bool)

(assert (=> b!4124273 m!4723213))

(declare-fun m!4723215 () Bool)

(assert (=> b!4124268 m!4723215))

(declare-fun m!4723217 () Bool)

(assert (=> b!4124285 m!4723217))

(declare-fun m!4723219 () Bool)

(assert (=> b!4124284 m!4723219))

(declare-fun m!4723221 () Bool)

(assert (=> b!4124265 m!4723221))

(declare-fun m!4723223 () Bool)

(assert (=> b!4124265 m!4723223))

(declare-fun m!4723225 () Bool)

(assert (=> b!4124265 m!4723225))

(declare-fun m!4723227 () Bool)

(assert (=> b!4124265 m!4723227))

(declare-fun m!4723229 () Bool)

(assert (=> b!4124265 m!4723229))

(declare-fun m!4723231 () Bool)

(assert (=> b!4124265 m!4723231))

(declare-fun m!4723233 () Bool)

(assert (=> b!4124282 m!4723233))

(declare-fun m!4723235 () Bool)

(assert (=> b!4124282 m!4723235))

(check-sat (not b!4124285) (not b_next!117477) b_and!319211 (not b!4124275) (not b!4124276) (not b!4124273) (not b_next!117473) tp_is_empty!21325 (not b!4124288) (not b!4124274) (not b!4124284) (not b!4124283) b_and!319207 (not b!4124267) (not b!4124279) (not b!4124277) (not b!4124281) b_and!319215 (not b!4124280) (not b!4124268) (not b_next!117475) (not b_next!117471) (not b!4124269) b_and!319213 (not b!4124272) (not b!4124278) (not b!4124271) (not b!4124286) b_and!319209 (not b!4124282) (not b!4124265) b_and!319205 (not b_next!117469) (not b_next!117467))
(check-sat b_and!319207 (not b_next!117477) b_and!319215 (not b_next!117475) b_and!319211 (not b_next!117471) b_and!319213 b_and!319209 (not b_next!117473) b_and!319205 (not b_next!117469) (not b_next!117467))
(get-model)

(declare-fun d!1222319 () Bool)

(declare-fun lt!1471527 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6879 (List!44751) (InoxSet Rule!14392))

(assert (=> d!1222319 (= lt!1471527 (select (content!6879 rules!3756) rBis!149))))

(declare-fun e!2559183 () Bool)

(assert (=> d!1222319 (= lt!1471527 e!2559183)))

(declare-fun res!1685542 () Bool)

(assert (=> d!1222319 (=> (not res!1685542) (not e!2559183))))

(assert (=> d!1222319 (= res!1685542 ((_ is Cons!44627) rules!3756))))

(assert (=> d!1222319 (= (contains!8968 rules!3756 rBis!149) lt!1471527)))

(declare-fun b!4124311 () Bool)

(declare-fun e!2559184 () Bool)

(assert (=> b!4124311 (= e!2559183 e!2559184)))

(declare-fun res!1685541 () Bool)

(assert (=> b!4124311 (=> res!1685541 e!2559184)))

(assert (=> b!4124311 (= res!1685541 (= (h!50047 rules!3756) rBis!149))))

(declare-fun b!4124312 () Bool)

(assert (=> b!4124312 (= e!2559184 (contains!8968 (t!341008 rules!3756) rBis!149))))

(assert (= (and d!1222319 res!1685542) b!4124311))

(assert (= (and b!4124311 (not res!1685541)) b!4124312))

(declare-fun m!4723237 () Bool)

(assert (=> d!1222319 m!4723237))

(declare-fun m!4723239 () Bool)

(assert (=> d!1222319 m!4723239))

(declare-fun m!4723241 () Bool)

(assert (=> b!4124312 m!4723241))

(assert (=> b!4124274 d!1222319))

(declare-fun b!4124331 () Bool)

(declare-fun res!1685559 () Bool)

(declare-fun e!2559198 () Bool)

(assert (=> b!4124331 (=> (not res!1685559) (not e!2559198))))

(declare-fun head!8689 (List!44750) C!24588)

(assert (=> b!4124331 (= res!1685559 (= (head!8689 p!2912) (head!8689 input!3238)))))

(declare-fun b!4124330 () Bool)

(declare-fun e!2559200 () Bool)

(assert (=> b!4124330 (= e!2559200 e!2559198)))

(declare-fun res!1685557 () Bool)

(assert (=> b!4124330 (=> (not res!1685557) (not e!2559198))))

(assert (=> b!4124330 (= res!1685557 (not ((_ is Nil!44626) input!3238)))))

(declare-fun d!1222323 () Bool)

(declare-fun e!2559199 () Bool)

(assert (=> d!1222323 e!2559199))

(declare-fun res!1685558 () Bool)

(assert (=> d!1222323 (=> res!1685558 e!2559199)))

(declare-fun lt!1471530 () Bool)

(assert (=> d!1222323 (= res!1685558 (not lt!1471530))))

(assert (=> d!1222323 (= lt!1471530 e!2559200)))

(declare-fun res!1685556 () Bool)

(assert (=> d!1222323 (=> res!1685556 e!2559200)))

(assert (=> d!1222323 (= res!1685556 ((_ is Nil!44626) p!2912))))

(assert (=> d!1222323 (= (isPrefix!4231 p!2912 input!3238) lt!1471530)))

(declare-fun b!4124333 () Bool)

(assert (=> b!4124333 (= e!2559199 (>= (size!33045 input!3238) (size!33045 p!2912)))))

(declare-fun b!4124332 () Bool)

(declare-fun tail!6463 (List!44750) List!44750)

(assert (=> b!4124332 (= e!2559198 (isPrefix!4231 (tail!6463 p!2912) (tail!6463 input!3238)))))

(assert (= (and d!1222323 (not res!1685556)) b!4124330))

(assert (= (and b!4124330 res!1685557) b!4124331))

(assert (= (and b!4124331 res!1685559) b!4124332))

(assert (= (and d!1222323 (not res!1685558)) b!4124333))

(declare-fun m!4723249 () Bool)

(assert (=> b!4124331 m!4723249))

(declare-fun m!4723251 () Bool)

(assert (=> b!4124331 m!4723251))

(declare-fun m!4723253 () Bool)

(assert (=> b!4124333 m!4723253))

(assert (=> b!4124333 m!4723221))

(declare-fun m!4723255 () Bool)

(assert (=> b!4124332 m!4723255))

(declare-fun m!4723257 () Bool)

(assert (=> b!4124332 m!4723257))

(assert (=> b!4124332 m!4723255))

(assert (=> b!4124332 m!4723257))

(declare-fun m!4723259 () Bool)

(assert (=> b!4124332 m!4723259))

(assert (=> b!4124285 d!1222323))

(declare-fun d!1222327 () Bool)

(assert (=> d!1222327 (= (isEmpty!26564 p!2912) ((_ is Nil!44626) p!2912))))

(assert (=> b!4124284 d!1222327))

(declare-fun d!1222329 () Bool)

(declare-fun lt!1471540 () List!44750)

(declare-fun ++!11564 (List!44750 List!44750) List!44750)

(assert (=> d!1222329 (= (++!11564 p!2912 lt!1471540) input!3238)))

(declare-fun e!2559212 () List!44750)

(assert (=> d!1222329 (= lt!1471540 e!2559212)))

(declare-fun c!707962 () Bool)

(assert (=> d!1222329 (= c!707962 ((_ is Cons!44626) p!2912))))

(assert (=> d!1222329 (>= (size!33045 input!3238) (size!33045 p!2912))))

(assert (=> d!1222329 (= (getSuffix!2560 input!3238 p!2912) lt!1471540)))

(declare-fun b!4124354 () Bool)

(assert (=> b!4124354 (= e!2559212 (getSuffix!2560 (tail!6463 input!3238) (t!341007 p!2912)))))

(declare-fun b!4124355 () Bool)

(assert (=> b!4124355 (= e!2559212 input!3238)))

(assert (= (and d!1222329 c!707962) b!4124354))

(assert (= (and d!1222329 (not c!707962)) b!4124355))

(declare-fun m!4723267 () Bool)

(assert (=> d!1222329 m!4723267))

(assert (=> d!1222329 m!4723253))

(assert (=> d!1222329 m!4723221))

(assert (=> b!4124354 m!4723257))

(assert (=> b!4124354 m!4723257))

(declare-fun m!4723269 () Bool)

(assert (=> b!4124354 m!4723269))

(assert (=> b!4124265 d!1222329))

(declare-fun b!4124421 () Bool)

(declare-fun e!2559241 () Option!9604)

(declare-fun lt!1471575 () Option!9604)

(declare-fun lt!1471576 () Option!9604)

(assert (=> b!4124421 (= e!2559241 (ite (and ((_ is None!9603) lt!1471575) ((_ is None!9603) lt!1471576)) None!9603 (ite ((_ is None!9603) lt!1471576) lt!1471575 (ite ((_ is None!9603) lt!1471575) lt!1471576 (ite (>= (size!33044 (_1!24675 (v!40197 lt!1471575))) (size!33044 (_1!24675 (v!40197 lt!1471576)))) lt!1471575 lt!1471576)))))))

(declare-fun call!290055 () Option!9604)

(assert (=> b!4124421 (= lt!1471575 call!290055)))

(assert (=> b!4124421 (= lt!1471576 (maxPrefix!4077 thiss!25645 (t!341008 rules!3756) input!3238))))

(declare-fun b!4124422 () Bool)

(declare-fun res!1685605 () Bool)

(declare-fun e!2559240 () Bool)

(assert (=> b!4124422 (=> (not res!1685605) (not e!2559240))))

(declare-fun lt!1471579 () Option!9604)

(declare-fun list!16369 (BalanceConc!26608) List!44750)

(assert (=> b!4124422 (= res!1685605 (= (++!11564 (list!16369 (charsOf!4918 (_1!24675 (get!14562 lt!1471579)))) (_2!24675 (get!14562 lt!1471579))) input!3238))))

(declare-fun b!4124423 () Bool)

(declare-fun e!2559242 () Bool)

(assert (=> b!4124423 (= e!2559242 e!2559240)))

(declare-fun res!1685601 () Bool)

(assert (=> b!4124423 (=> (not res!1685601) (not e!2559240))))

(declare-fun isDefined!7237 (Option!9604) Bool)

(assert (=> b!4124423 (= res!1685601 (isDefined!7237 lt!1471579))))

(declare-fun b!4124424 () Bool)

(assert (=> b!4124424 (= e!2559241 call!290055)))

(declare-fun b!4124425 () Bool)

(declare-fun res!1685603 () Bool)

(assert (=> b!4124425 (=> (not res!1685603) (not e!2559240))))

(assert (=> b!4124425 (= res!1685603 (= (value!228490 (_1!24675 (get!14562 lt!1471579))) (apply!10369 (transformation!7296 (rule!10378 (_1!24675 (get!14562 lt!1471579)))) (seqFromList!5413 (originalCharacters!7792 (_1!24675 (get!14562 lt!1471579)))))))))

(declare-fun b!4124426 () Bool)

(declare-fun res!1685602 () Bool)

(assert (=> b!4124426 (=> (not res!1685602) (not e!2559240))))

(assert (=> b!4124426 (= res!1685602 (matchR!6032 (regex!7296 (rule!10378 (_1!24675 (get!14562 lt!1471579)))) (list!16369 (charsOf!4918 (_1!24675 (get!14562 lt!1471579))))))))

(declare-fun d!1222337 () Bool)

(assert (=> d!1222337 e!2559242))

(declare-fun res!1685604 () Bool)

(assert (=> d!1222337 (=> res!1685604 e!2559242)))

(assert (=> d!1222337 (= res!1685604 (isEmpty!26562 lt!1471579))))

(assert (=> d!1222337 (= lt!1471579 e!2559241)))

(declare-fun c!707975 () Bool)

(assert (=> d!1222337 (= c!707975 (and ((_ is Cons!44627) rules!3756) ((_ is Nil!44627) (t!341008 rules!3756))))))

(declare-fun lt!1471578 () Unit!63965)

(declare-fun lt!1471577 () Unit!63965)

(assert (=> d!1222337 (= lt!1471578 lt!1471577)))

(assert (=> d!1222337 (isPrefix!4231 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2743 (List!44750 List!44750) Unit!63965)

(assert (=> d!1222337 (= lt!1471577 (lemmaIsPrefixRefl!2743 input!3238 input!3238))))

(declare-fun rulesValidInductive!2694 (LexerInterface!6885 List!44751) Bool)

(assert (=> d!1222337 (rulesValidInductive!2694 thiss!25645 rules!3756)))

(assert (=> d!1222337 (= (maxPrefix!4077 thiss!25645 rules!3756 input!3238) lt!1471579)))

(declare-fun b!4124427 () Bool)

(assert (=> b!4124427 (= e!2559240 (contains!8968 rules!3756 (rule!10378 (_1!24675 (get!14562 lt!1471579)))))))

(declare-fun b!4124428 () Bool)

(declare-fun res!1685606 () Bool)

(assert (=> b!4124428 (=> (not res!1685606) (not e!2559240))))

(assert (=> b!4124428 (= res!1685606 (< (size!33045 (_2!24675 (get!14562 lt!1471579))) (size!33045 input!3238)))))

(declare-fun b!4124429 () Bool)

(declare-fun res!1685607 () Bool)

(assert (=> b!4124429 (=> (not res!1685607) (not e!2559240))))

(assert (=> b!4124429 (= res!1685607 (= (list!16369 (charsOf!4918 (_1!24675 (get!14562 lt!1471579)))) (originalCharacters!7792 (_1!24675 (get!14562 lt!1471579)))))))

(declare-fun bm!290050 () Bool)

(assert (=> bm!290050 (= call!290055 (maxPrefixOneRule!3027 thiss!25645 (h!50047 rules!3756) input!3238))))

(assert (= (and d!1222337 c!707975) b!4124424))

(assert (= (and d!1222337 (not c!707975)) b!4124421))

(assert (= (or b!4124424 b!4124421) bm!290050))

(assert (= (and d!1222337 (not res!1685604)) b!4124423))

(assert (= (and b!4124423 res!1685601) b!4124429))

(assert (= (and b!4124429 res!1685607) b!4124428))

(assert (= (and b!4124428 res!1685606) b!4124422))

(assert (= (and b!4124422 res!1685605) b!4124425))

(assert (= (and b!4124425 res!1685603) b!4124426))

(assert (= (and b!4124426 res!1685602) b!4124427))

(declare-fun m!4723323 () Bool)

(assert (=> b!4124425 m!4723323))

(declare-fun m!4723325 () Bool)

(assert (=> b!4124425 m!4723325))

(assert (=> b!4124425 m!4723325))

(declare-fun m!4723327 () Bool)

(assert (=> b!4124425 m!4723327))

(declare-fun m!4723329 () Bool)

(assert (=> b!4124423 m!4723329))

(assert (=> b!4124422 m!4723323))

(declare-fun m!4723331 () Bool)

(assert (=> b!4124422 m!4723331))

(assert (=> b!4124422 m!4723331))

(declare-fun m!4723333 () Bool)

(assert (=> b!4124422 m!4723333))

(assert (=> b!4124422 m!4723333))

(declare-fun m!4723335 () Bool)

(assert (=> b!4124422 m!4723335))

(assert (=> b!4124426 m!4723323))

(assert (=> b!4124426 m!4723331))

(assert (=> b!4124426 m!4723331))

(assert (=> b!4124426 m!4723333))

(assert (=> b!4124426 m!4723333))

(declare-fun m!4723337 () Bool)

(assert (=> b!4124426 m!4723337))

(assert (=> b!4124427 m!4723323))

(declare-fun m!4723339 () Bool)

(assert (=> b!4124427 m!4723339))

(assert (=> b!4124429 m!4723323))

(assert (=> b!4124429 m!4723331))

(assert (=> b!4124429 m!4723331))

(assert (=> b!4124429 m!4723333))

(assert (=> b!4124428 m!4723323))

(declare-fun m!4723341 () Bool)

(assert (=> b!4124428 m!4723341))

(assert (=> b!4124428 m!4723253))

(declare-fun m!4723343 () Bool)

(assert (=> b!4124421 m!4723343))

(declare-fun m!4723345 () Bool)

(assert (=> bm!290050 m!4723345))

(declare-fun m!4723347 () Bool)

(assert (=> d!1222337 m!4723347))

(declare-fun m!4723349 () Bool)

(assert (=> d!1222337 m!4723349))

(declare-fun m!4723351 () Bool)

(assert (=> d!1222337 m!4723351))

(declare-fun m!4723353 () Bool)

(assert (=> d!1222337 m!4723353))

(assert (=> b!4124265 d!1222337))

(declare-fun d!1222353 () Bool)

(declare-fun dynLambda!19079 (Int BalanceConc!26608) TokenValue!7526)

(assert (=> d!1222353 (= (apply!10369 (transformation!7296 r!4008) lt!1471523) (dynLambda!19079 (toValue!9948 (transformation!7296 r!4008)) lt!1471523))))

(declare-fun b_lambda!121033 () Bool)

(assert (=> (not b_lambda!121033) (not d!1222353)))

(declare-fun tb!247485 () Bool)

(declare-fun t!341016 () Bool)

(assert (=> (and b!4124287 (= (toValue!9948 (transformation!7296 rBis!149)) (toValue!9948 (transformation!7296 r!4008))) t!341016) tb!247485))

(declare-fun result!300712 () Bool)

(declare-fun inv!21 (TokenValue!7526) Bool)

(assert (=> tb!247485 (= result!300712 (inv!21 (dynLambda!19079 (toValue!9948 (transformation!7296 r!4008)) lt!1471523)))))

(declare-fun m!4723355 () Bool)

(assert (=> tb!247485 m!4723355))

(assert (=> d!1222353 t!341016))

(declare-fun b_and!319223 () Bool)

(assert (= b_and!319205 (and (=> t!341016 result!300712) b_and!319223)))

(declare-fun t!341018 () Bool)

(declare-fun tb!247487 () Bool)

(assert (=> (and b!4124266 (= (toValue!9948 (transformation!7296 r!4008)) (toValue!9948 (transformation!7296 r!4008))) t!341018) tb!247487))

(declare-fun result!300716 () Bool)

(assert (= result!300716 result!300712))

(assert (=> d!1222353 t!341018))

(declare-fun b_and!319225 () Bool)

(assert (= b_and!319209 (and (=> t!341018 result!300716) b_and!319225)))

(declare-fun t!341020 () Bool)

(declare-fun tb!247489 () Bool)

(assert (=> (and b!4124270 (= (toValue!9948 (transformation!7296 (h!50047 rules!3756))) (toValue!9948 (transformation!7296 r!4008))) t!341020) tb!247489))

(declare-fun result!300718 () Bool)

(assert (= result!300718 result!300712))

(assert (=> d!1222353 t!341020))

(declare-fun b_and!319227 () Bool)

(assert (= b_and!319213 (and (=> t!341020 result!300718) b_and!319227)))

(declare-fun m!4723357 () Bool)

(assert (=> d!1222353 m!4723357))

(assert (=> b!4124265 d!1222353))

(declare-fun b!4124524 () Bool)

(declare-fun e!2559303 () Bool)

(assert (=> b!4124524 (= e!2559303 true)))

(declare-fun d!1222355 () Bool)

(assert (=> d!1222355 e!2559303))

(assert (= d!1222355 b!4124524))

(declare-fun order!23489 () Int)

(declare-fun lambda!128703 () Int)

(declare-fun order!23491 () Int)

(declare-fun dynLambda!19080 (Int Int) Int)

(declare-fun dynLambda!19081 (Int Int) Int)

(assert (=> b!4124524 (< (dynLambda!19080 order!23489 (toValue!9948 (transformation!7296 r!4008))) (dynLambda!19081 order!23491 lambda!128703))))

(declare-fun order!23493 () Int)

(declare-fun dynLambda!19082 (Int Int) Int)

(assert (=> b!4124524 (< (dynLambda!19082 order!23493 (toChars!9807 (transformation!7296 r!4008))) (dynLambda!19081 order!23491 lambda!128703))))

(declare-fun dynLambda!19083 (Int TokenValue!7526) BalanceConc!26608)

(assert (=> d!1222355 (= (list!16369 (dynLambda!19083 (toChars!9807 (transformation!7296 r!4008)) (dynLambda!19079 (toValue!9948 (transformation!7296 r!4008)) lt!1471523))) (list!16369 lt!1471523))))

(declare-fun lt!1471598 () Unit!63965)

(declare-fun ForallOf!926 (Int BalanceConc!26608) Unit!63965)

(assert (=> d!1222355 (= lt!1471598 (ForallOf!926 lambda!128703 lt!1471523))))

(assert (=> d!1222355 (= (lemmaSemiInverse!2154 (transformation!7296 r!4008) lt!1471523) lt!1471598)))

(declare-fun b_lambda!121039 () Bool)

(assert (=> (not b_lambda!121039) (not d!1222355)))

(declare-fun t!341028 () Bool)

(declare-fun tb!247497 () Bool)

(assert (=> (and b!4124287 (= (toChars!9807 (transformation!7296 rBis!149)) (toChars!9807 (transformation!7296 r!4008))) t!341028) tb!247497))

(declare-fun e!2559306 () Bool)

(declare-fun tp!1256830 () Bool)

(declare-fun b!4124529 () Bool)

(declare-fun inv!59210 (Conc!13507) Bool)

(assert (=> b!4124529 (= e!2559306 (and (inv!59210 (c!707944 (dynLambda!19083 (toChars!9807 (transformation!7296 r!4008)) (dynLambda!19079 (toValue!9948 (transformation!7296 r!4008)) lt!1471523)))) tp!1256830))))

(declare-fun result!300728 () Bool)

(declare-fun inv!59211 (BalanceConc!26608) Bool)

(assert (=> tb!247497 (= result!300728 (and (inv!59211 (dynLambda!19083 (toChars!9807 (transformation!7296 r!4008)) (dynLambda!19079 (toValue!9948 (transformation!7296 r!4008)) lt!1471523))) e!2559306))))

(assert (= tb!247497 b!4124529))

(declare-fun m!4723421 () Bool)

(assert (=> b!4124529 m!4723421))

(declare-fun m!4723423 () Bool)

(assert (=> tb!247497 m!4723423))

(assert (=> d!1222355 t!341028))

(declare-fun b_and!319241 () Bool)

(assert (= b_and!319207 (and (=> t!341028 result!300728) b_and!319241)))

(declare-fun t!341030 () Bool)

(declare-fun tb!247499 () Bool)

(assert (=> (and b!4124266 (= (toChars!9807 (transformation!7296 r!4008)) (toChars!9807 (transformation!7296 r!4008))) t!341030) tb!247499))

(declare-fun result!300732 () Bool)

(assert (= result!300732 result!300728))

(assert (=> d!1222355 t!341030))

(declare-fun b_and!319243 () Bool)

(assert (= b_and!319211 (and (=> t!341030 result!300732) b_and!319243)))

(declare-fun t!341032 () Bool)

(declare-fun tb!247501 () Bool)

(assert (=> (and b!4124270 (= (toChars!9807 (transformation!7296 (h!50047 rules!3756))) (toChars!9807 (transformation!7296 r!4008))) t!341032) tb!247501))

(declare-fun result!300734 () Bool)

(assert (= result!300734 result!300728))

(assert (=> d!1222355 t!341032))

(declare-fun b_and!319245 () Bool)

(assert (= b_and!319215 (and (=> t!341032 result!300734) b_and!319245)))

(declare-fun b_lambda!121041 () Bool)

(assert (=> (not b_lambda!121041) (not d!1222355)))

(assert (=> d!1222355 t!341016))

(declare-fun b_and!319247 () Bool)

(assert (= b_and!319223 (and (=> t!341016 result!300712) b_and!319247)))

(assert (=> d!1222355 t!341018))

(declare-fun b_and!319249 () Bool)

(assert (= b_and!319225 (and (=> t!341018 result!300716) b_and!319249)))

(assert (=> d!1222355 t!341020))

(declare-fun b_and!319251 () Bool)

(assert (= b_and!319227 (and (=> t!341020 result!300718) b_and!319251)))

(declare-fun m!4723425 () Bool)

(assert (=> d!1222355 m!4723425))

(declare-fun m!4723427 () Bool)

(assert (=> d!1222355 m!4723427))

(assert (=> d!1222355 m!4723357))

(declare-fun m!4723429 () Bool)

(assert (=> d!1222355 m!4723429))

(assert (=> d!1222355 m!4723429))

(declare-fun m!4723431 () Bool)

(assert (=> d!1222355 m!4723431))

(assert (=> d!1222355 m!4723357))

(assert (=> b!4124265 d!1222355))

(declare-fun d!1222393 () Bool)

(declare-fun fromListB!2476 (List!44750) BalanceConc!26608)

(assert (=> d!1222393 (= (seqFromList!5413 p!2912) (fromListB!2476 p!2912))))

(declare-fun bs!594770 () Bool)

(assert (= bs!594770 d!1222393))

(declare-fun m!4723433 () Bool)

(assert (=> bs!594770 m!4723433))

(assert (=> b!4124265 d!1222393))

(declare-fun d!1222395 () Bool)

(declare-fun lt!1471601 () Int)

(assert (=> d!1222395 (>= lt!1471601 0)))

(declare-fun e!2559309 () Int)

(assert (=> d!1222395 (= lt!1471601 e!2559309)))

(declare-fun c!707991 () Bool)

(assert (=> d!1222395 (= c!707991 ((_ is Nil!44626) p!2912))))

(assert (=> d!1222395 (= (size!33045 p!2912) lt!1471601)))

(declare-fun b!4124534 () Bool)

(assert (=> b!4124534 (= e!2559309 0)))

(declare-fun b!4124535 () Bool)

(assert (=> b!4124535 (= e!2559309 (+ 1 (size!33045 (t!341007 p!2912))))))

(assert (= (and d!1222395 c!707991) b!4124534))

(assert (= (and d!1222395 (not c!707991)) b!4124535))

(declare-fun m!4723435 () Bool)

(assert (=> b!4124535 m!4723435))

(assert (=> b!4124265 d!1222395))

(declare-fun d!1222397 () Bool)

(assert (=> d!1222397 (= (inv!59205 (tag!8156 rBis!149)) (= (mod (str.len (value!228489 (tag!8156 rBis!149))) 2) 0))))

(assert (=> b!4124277 d!1222397))

(declare-fun d!1222399 () Bool)

(declare-fun res!1685664 () Bool)

(declare-fun e!2559312 () Bool)

(assert (=> d!1222399 (=> (not res!1685664) (not e!2559312))))

(declare-fun semiInverseModEq!3143 (Int Int) Bool)

(assert (=> d!1222399 (= res!1685664 (semiInverseModEq!3143 (toChars!9807 (transformation!7296 rBis!149)) (toValue!9948 (transformation!7296 rBis!149))))))

(assert (=> d!1222399 (= (inv!59207 (transformation!7296 rBis!149)) e!2559312)))

(declare-fun b!4124538 () Bool)

(declare-fun equivClasses!3042 (Int Int) Bool)

(assert (=> b!4124538 (= e!2559312 (equivClasses!3042 (toChars!9807 (transformation!7296 rBis!149)) (toValue!9948 (transformation!7296 rBis!149))))))

(assert (= (and d!1222399 res!1685664) b!4124538))

(declare-fun m!4723437 () Bool)

(assert (=> d!1222399 m!4723437))

(declare-fun m!4723439 () Bool)

(assert (=> b!4124538 m!4723439))

(assert (=> b!4124277 d!1222399))

(declare-fun b!4124557 () Bool)

(declare-fun e!2559328 () Bool)

(declare-fun call!290067 () Bool)

(assert (=> b!4124557 (= e!2559328 call!290067)))

(declare-fun bm!290061 () Bool)

(declare-fun call!290066 () Bool)

(assert (=> bm!290061 (= call!290067 call!290066)))

(declare-fun bm!290062 () Bool)

(declare-fun c!707996 () Bool)

(declare-fun c!707997 () Bool)

(assert (=> bm!290062 (= call!290066 (validRegex!5488 (ite c!707997 (reg!12530 (regex!7296 rBis!149)) (ite c!707996 (regTwo!24915 (regex!7296 rBis!149)) (regTwo!24914 (regex!7296 rBis!149))))))))

(declare-fun b!4124558 () Bool)

(declare-fun e!2559332 () Bool)

(assert (=> b!4124558 (= e!2559332 call!290067)))

(declare-fun b!4124559 () Bool)

(declare-fun res!1685679 () Bool)

(assert (=> b!4124559 (=> (not res!1685679) (not e!2559332))))

(declare-fun call!290068 () Bool)

(assert (=> b!4124559 (= res!1685679 call!290068)))

(declare-fun e!2559330 () Bool)

(assert (=> b!4124559 (= e!2559330 e!2559332)))

(declare-fun b!4124560 () Bool)

(declare-fun e!2559331 () Bool)

(assert (=> b!4124560 (= e!2559331 call!290066)))

(declare-fun b!4124561 () Bool)

(declare-fun e!2559333 () Bool)

(assert (=> b!4124561 (= e!2559333 e!2559328)))

(declare-fun res!1685675 () Bool)

(assert (=> b!4124561 (=> (not res!1685675) (not e!2559328))))

(assert (=> b!4124561 (= res!1685675 call!290068)))

(declare-fun b!4124562 () Bool)

(declare-fun res!1685677 () Bool)

(assert (=> b!4124562 (=> res!1685677 e!2559333)))

(assert (=> b!4124562 (= res!1685677 (not ((_ is Concat!19728) (regex!7296 rBis!149))))))

(assert (=> b!4124562 (= e!2559330 e!2559333)))

(declare-fun b!4124564 () Bool)

(declare-fun e!2559329 () Bool)

(declare-fun e!2559327 () Bool)

(assert (=> b!4124564 (= e!2559329 e!2559327)))

(assert (=> b!4124564 (= c!707997 ((_ is Star!12201) (regex!7296 rBis!149)))))

(declare-fun b!4124565 () Bool)

(assert (=> b!4124565 (= e!2559327 e!2559330)))

(assert (=> b!4124565 (= c!707996 ((_ is Union!12201) (regex!7296 rBis!149)))))

(declare-fun bm!290063 () Bool)

(assert (=> bm!290063 (= call!290068 (validRegex!5488 (ite c!707996 (regOne!24915 (regex!7296 rBis!149)) (regOne!24914 (regex!7296 rBis!149)))))))

(declare-fun b!4124563 () Bool)

(assert (=> b!4124563 (= e!2559327 e!2559331)))

(declare-fun res!1685676 () Bool)

(declare-fun nullable!4282 (Regex!12201) Bool)

(assert (=> b!4124563 (= res!1685676 (not (nullable!4282 (reg!12530 (regex!7296 rBis!149)))))))

(assert (=> b!4124563 (=> (not res!1685676) (not e!2559331))))

(declare-fun d!1222401 () Bool)

(declare-fun res!1685678 () Bool)

(assert (=> d!1222401 (=> res!1685678 e!2559329)))

(assert (=> d!1222401 (= res!1685678 ((_ is ElementMatch!12201) (regex!7296 rBis!149)))))

(assert (=> d!1222401 (= (validRegex!5488 (regex!7296 rBis!149)) e!2559329)))

(assert (= (and d!1222401 (not res!1685678)) b!4124564))

(assert (= (and b!4124564 c!707997) b!4124563))

(assert (= (and b!4124564 (not c!707997)) b!4124565))

(assert (= (and b!4124563 res!1685676) b!4124560))

(assert (= (and b!4124565 c!707996) b!4124559))

(assert (= (and b!4124565 (not c!707996)) b!4124562))

(assert (= (and b!4124559 res!1685679) b!4124558))

(assert (= (and b!4124562 (not res!1685677)) b!4124561))

(assert (= (and b!4124561 res!1685675) b!4124557))

(assert (= (or b!4124559 b!4124561) bm!290063))

(assert (= (or b!4124558 b!4124557) bm!290061))

(assert (= (or b!4124560 bm!290061) bm!290062))

(declare-fun m!4723441 () Bool)

(assert (=> bm!290062 m!4723441))

(declare-fun m!4723443 () Bool)

(assert (=> bm!290063 m!4723443))

(declare-fun m!4723445 () Bool)

(assert (=> b!4124563 m!4723445))

(assert (=> b!4124276 d!1222401))

(declare-fun d!1222403 () Bool)

(declare-fun lt!1471602 () Bool)

(assert (=> d!1222403 (= lt!1471602 (select (content!6879 (tail!6461 rules!3756)) r!4008))))

(declare-fun e!2559334 () Bool)

(assert (=> d!1222403 (= lt!1471602 e!2559334)))

(declare-fun res!1685681 () Bool)

(assert (=> d!1222403 (=> (not res!1685681) (not e!2559334))))

(assert (=> d!1222403 (= res!1685681 ((_ is Cons!44627) (tail!6461 rules!3756)))))

(assert (=> d!1222403 (= (contains!8968 (tail!6461 rules!3756) r!4008) lt!1471602)))

(declare-fun b!4124566 () Bool)

(declare-fun e!2559335 () Bool)

(assert (=> b!4124566 (= e!2559334 e!2559335)))

(declare-fun res!1685680 () Bool)

(assert (=> b!4124566 (=> res!1685680 e!2559335)))

(assert (=> b!4124566 (= res!1685680 (= (h!50047 (tail!6461 rules!3756)) r!4008))))

(declare-fun b!4124567 () Bool)

(assert (=> b!4124567 (= e!2559335 (contains!8968 (t!341008 (tail!6461 rules!3756)) r!4008))))

(assert (= (and d!1222403 res!1685681) b!4124566))

(assert (= (and b!4124566 (not res!1685680)) b!4124567))

(assert (=> d!1222403 m!4723191))

(declare-fun m!4723447 () Bool)

(assert (=> d!1222403 m!4723447))

(declare-fun m!4723449 () Bool)

(assert (=> d!1222403 m!4723449))

(declare-fun m!4723451 () Bool)

(assert (=> b!4124567 m!4723451))

(assert (=> b!4124278 d!1222403))

(declare-fun d!1222405 () Bool)

(assert (=> d!1222405 (= (tail!6461 rules!3756) (t!341008 rules!3756))))

(assert (=> b!4124278 d!1222405))

(declare-fun d!1222407 () Bool)

(assert (=> d!1222407 (contains!8968 (tail!6461 rules!3756) r!4008)))

(declare-fun lt!1471605 () Unit!63965)

(declare-fun choose!25218 (List!44751 Rule!14392 Rule!14392) Unit!63965)

(assert (=> d!1222407 (= lt!1471605 (choose!25218 rules!3756 rBis!149 r!4008))))

(declare-fun e!2559338 () Bool)

(assert (=> d!1222407 e!2559338))

(declare-fun res!1685684 () Bool)

(assert (=> d!1222407 (=> (not res!1685684) (not e!2559338))))

(assert (=> d!1222407 (= res!1685684 (contains!8968 rules!3756 rBis!149))))

(assert (=> d!1222407 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!38 rules!3756 rBis!149 r!4008) lt!1471605)))

(declare-fun b!4124570 () Bool)

(assert (=> b!4124570 (= e!2559338 (contains!8968 rules!3756 r!4008))))

(assert (= (and d!1222407 res!1685684) b!4124570))

(assert (=> d!1222407 m!4723191))

(assert (=> d!1222407 m!4723191))

(assert (=> d!1222407 m!4723193))

(declare-fun m!4723453 () Bool)

(assert (=> d!1222407 m!4723453))

(assert (=> d!1222407 m!4723207))

(assert (=> b!4124570 m!4723215))

(assert (=> b!4124278 d!1222407))

(declare-fun d!1222409 () Bool)

(assert (=> d!1222409 (= (isEmpty!26562 lt!1471519) (not ((_ is Some!9603) lt!1471519)))))

(assert (=> b!4124278 d!1222409))

(declare-fun b!4124669 () Bool)

(declare-fun e!2559392 () Bool)

(declare-fun e!2559391 () Bool)

(assert (=> b!4124669 (= e!2559392 e!2559391)))

(declare-fun res!1685736 () Bool)

(assert (=> b!4124669 (=> (not res!1685736) (not e!2559391))))

(declare-fun lt!1471645 () Option!9604)

(assert (=> b!4124669 (= res!1685736 (matchR!6032 (regex!7296 rBis!149) (list!16369 (charsOf!4918 (_1!24675 (get!14562 lt!1471645))))))))

(declare-fun d!1222411 () Bool)

(assert (=> d!1222411 e!2559392))

(declare-fun res!1685737 () Bool)

(assert (=> d!1222411 (=> res!1685737 e!2559392)))

(assert (=> d!1222411 (= res!1685737 (isEmpty!26562 lt!1471645))))

(declare-fun e!2559393 () Option!9604)

(assert (=> d!1222411 (= lt!1471645 e!2559393)))

(declare-fun c!708003 () Bool)

(declare-datatypes ((tuple2!43084 0))(
  ( (tuple2!43085 (_1!24676 List!44750) (_2!24676 List!44750)) )
))
(declare-fun lt!1471644 () tuple2!43084)

(assert (=> d!1222411 (= c!708003 (isEmpty!26564 (_1!24676 lt!1471644)))))

(declare-fun findLongestMatch!1411 (Regex!12201 List!44750) tuple2!43084)

(assert (=> d!1222411 (= lt!1471644 (findLongestMatch!1411 (regex!7296 rBis!149) input!3238))))

(assert (=> d!1222411 (ruleValid!3104 thiss!25645 rBis!149)))

(assert (=> d!1222411 (= (maxPrefixOneRule!3027 thiss!25645 rBis!149 input!3238) lt!1471645)))

(declare-fun b!4124670 () Bool)

(declare-fun res!1685738 () Bool)

(assert (=> b!4124670 (=> (not res!1685738) (not e!2559391))))

(assert (=> b!4124670 (= res!1685738 (= (rule!10378 (_1!24675 (get!14562 lt!1471645))) rBis!149))))

(declare-fun b!4124671 () Bool)

(declare-fun res!1685733 () Bool)

(assert (=> b!4124671 (=> (not res!1685733) (not e!2559391))))

(assert (=> b!4124671 (= res!1685733 (< (size!33045 (_2!24675 (get!14562 lt!1471645))) (size!33045 input!3238)))))

(declare-fun b!4124672 () Bool)

(declare-fun res!1685739 () Bool)

(assert (=> b!4124672 (=> (not res!1685739) (not e!2559391))))

(assert (=> b!4124672 (= res!1685739 (= (value!228490 (_1!24675 (get!14562 lt!1471645))) (apply!10369 (transformation!7296 (rule!10378 (_1!24675 (get!14562 lt!1471645)))) (seqFromList!5413 (originalCharacters!7792 (_1!24675 (get!14562 lt!1471645)))))))))

(declare-fun b!4124673 () Bool)

(declare-fun e!2559394 () Bool)

(declare-fun findLongestMatchInner!1498 (Regex!12201 List!44750 Int List!44750 List!44750 Int) tuple2!43084)

(assert (=> b!4124673 (= e!2559394 (matchR!6032 (regex!7296 rBis!149) (_1!24676 (findLongestMatchInner!1498 (regex!7296 rBis!149) Nil!44626 (size!33045 Nil!44626) input!3238 input!3238 (size!33045 input!3238)))))))

(declare-fun b!4124674 () Bool)

(declare-fun res!1685734 () Bool)

(assert (=> b!4124674 (=> (not res!1685734) (not e!2559391))))

(assert (=> b!4124674 (= res!1685734 (= (++!11564 (list!16369 (charsOf!4918 (_1!24675 (get!14562 lt!1471645)))) (_2!24675 (get!14562 lt!1471645))) input!3238))))

(declare-fun b!4124675 () Bool)

(assert (=> b!4124675 (= e!2559391 (= (size!33044 (_1!24675 (get!14562 lt!1471645))) (size!33045 (originalCharacters!7792 (_1!24675 (get!14562 lt!1471645))))))))

(declare-fun b!4124676 () Bool)

(assert (=> b!4124676 (= e!2559393 (Some!9603 (tuple2!43083 (Token!13523 (apply!10369 (transformation!7296 rBis!149) (seqFromList!5413 (_1!24676 lt!1471644))) rBis!149 (size!33046 (seqFromList!5413 (_1!24676 lt!1471644))) (_1!24676 lt!1471644)) (_2!24676 lt!1471644))))))

(declare-fun lt!1471646 () Unit!63965)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1471 (Regex!12201 List!44750) Unit!63965)

(assert (=> b!4124676 (= lt!1471646 (longestMatchIsAcceptedByMatchOrIsEmpty!1471 (regex!7296 rBis!149) input!3238))))

(declare-fun res!1685735 () Bool)

(assert (=> b!4124676 (= res!1685735 (isEmpty!26564 (_1!24676 (findLongestMatchInner!1498 (regex!7296 rBis!149) Nil!44626 (size!33045 Nil!44626) input!3238 input!3238 (size!33045 input!3238)))))))

(assert (=> b!4124676 (=> res!1685735 e!2559394)))

(assert (=> b!4124676 e!2559394))

(declare-fun lt!1471643 () Unit!63965)

(assert (=> b!4124676 (= lt!1471643 lt!1471646)))

(declare-fun lt!1471647 () Unit!63965)

(assert (=> b!4124676 (= lt!1471647 (lemmaSemiInverse!2154 (transformation!7296 rBis!149) (seqFromList!5413 (_1!24676 lt!1471644))))))

(declare-fun b!4124677 () Bool)

(assert (=> b!4124677 (= e!2559393 None!9603)))

(assert (= (and d!1222411 c!708003) b!4124677))

(assert (= (and d!1222411 (not c!708003)) b!4124676))

(assert (= (and b!4124676 (not res!1685735)) b!4124673))

(assert (= (and d!1222411 (not res!1685737)) b!4124669))

(assert (= (and b!4124669 res!1685736) b!4124674))

(assert (= (and b!4124674 res!1685734) b!4124671))

(assert (= (and b!4124671 res!1685733) b!4124670))

(assert (= (and b!4124670 res!1685738) b!4124672))

(assert (= (and b!4124672 res!1685739) b!4124675))

(declare-fun m!4723525 () Bool)

(assert (=> d!1222411 m!4723525))

(declare-fun m!4723527 () Bool)

(assert (=> d!1222411 m!4723527))

(declare-fun m!4723529 () Bool)

(assert (=> d!1222411 m!4723529))

(assert (=> d!1222411 m!4723175))

(declare-fun m!4723531 () Bool)

(assert (=> b!4124673 m!4723531))

(assert (=> b!4124673 m!4723253))

(assert (=> b!4124673 m!4723531))

(assert (=> b!4124673 m!4723253))

(declare-fun m!4723533 () Bool)

(assert (=> b!4124673 m!4723533))

(declare-fun m!4723535 () Bool)

(assert (=> b!4124673 m!4723535))

(declare-fun m!4723537 () Bool)

(assert (=> b!4124676 m!4723537))

(assert (=> b!4124676 m!4723531))

(assert (=> b!4124676 m!4723531))

(assert (=> b!4124676 m!4723253))

(assert (=> b!4124676 m!4723533))

(declare-fun m!4723539 () Bool)

(assert (=> b!4124676 m!4723539))

(declare-fun m!4723541 () Bool)

(assert (=> b!4124676 m!4723541))

(assert (=> b!4124676 m!4723539))

(declare-fun m!4723543 () Bool)

(assert (=> b!4124676 m!4723543))

(assert (=> b!4124676 m!4723253))

(assert (=> b!4124676 m!4723539))

(assert (=> b!4124676 m!4723539))

(declare-fun m!4723545 () Bool)

(assert (=> b!4124676 m!4723545))

(declare-fun m!4723547 () Bool)

(assert (=> b!4124676 m!4723547))

(declare-fun m!4723549 () Bool)

(assert (=> b!4124672 m!4723549))

(declare-fun m!4723551 () Bool)

(assert (=> b!4124672 m!4723551))

(assert (=> b!4124672 m!4723551))

(declare-fun m!4723553 () Bool)

(assert (=> b!4124672 m!4723553))

(assert (=> b!4124670 m!4723549))

(assert (=> b!4124671 m!4723549))

(declare-fun m!4723555 () Bool)

(assert (=> b!4124671 m!4723555))

(assert (=> b!4124671 m!4723253))

(assert (=> b!4124674 m!4723549))

(declare-fun m!4723557 () Bool)

(assert (=> b!4124674 m!4723557))

(assert (=> b!4124674 m!4723557))

(declare-fun m!4723559 () Bool)

(assert (=> b!4124674 m!4723559))

(assert (=> b!4124674 m!4723559))

(declare-fun m!4723561 () Bool)

(assert (=> b!4124674 m!4723561))

(assert (=> b!4124669 m!4723549))

(assert (=> b!4124669 m!4723557))

(assert (=> b!4124669 m!4723557))

(assert (=> b!4124669 m!4723559))

(assert (=> b!4124669 m!4723559))

(declare-fun m!4723563 () Bool)

(assert (=> b!4124669 m!4723563))

(assert (=> b!4124675 m!4723549))

(declare-fun m!4723565 () Bool)

(assert (=> b!4124675 m!4723565))

(assert (=> b!4124278 d!1222411))

(declare-fun d!1222427 () Bool)

(assert (=> d!1222427 (not (= rBis!149 r!4008))))

(declare-fun lt!1471650 () Unit!63965)

(declare-fun choose!25220 (LexerInterface!6885 List!44751 Rule!14392 Rule!14392) Unit!63965)

(assert (=> d!1222427 (= lt!1471650 (choose!25220 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1222427 (contains!8968 rules!3756 rBis!149)))

(assert (=> d!1222427 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!36 thiss!25645 rules!3756 rBis!149 r!4008) lt!1471650)))

(declare-fun bs!594773 () Bool)

(assert (= bs!594773 d!1222427))

(declare-fun m!4723567 () Bool)

(assert (=> bs!594773 m!4723567))

(assert (=> bs!594773 m!4723207))

(assert (=> b!4124278 d!1222427))

(declare-fun d!1222429 () Bool)

(declare-fun lt!1471653 () Int)

(assert (=> d!1222429 (= lt!1471653 (size!33045 (list!16369 (charsOf!4918 (_1!24675 lt!1471524)))))))

(declare-fun size!33047 (Conc!13507) Int)

(assert (=> d!1222429 (= lt!1471653 (size!33047 (c!707944 (charsOf!4918 (_1!24675 lt!1471524)))))))

(assert (=> d!1222429 (= (size!33046 (charsOf!4918 (_1!24675 lt!1471524))) lt!1471653)))

(declare-fun bs!594774 () Bool)

(assert (= bs!594774 d!1222429))

(assert (=> bs!594774 m!4723179))

(declare-fun m!4723569 () Bool)

(assert (=> bs!594774 m!4723569))

(assert (=> bs!594774 m!4723569))

(declare-fun m!4723571 () Bool)

(assert (=> bs!594774 m!4723571))

(declare-fun m!4723573 () Bool)

(assert (=> bs!594774 m!4723573))

(assert (=> b!4124288 d!1222429))

(declare-fun d!1222431 () Bool)

(declare-fun lt!1471656 () BalanceConc!26608)

(assert (=> d!1222431 (= (list!16369 lt!1471656) (originalCharacters!7792 (_1!24675 lt!1471524)))))

(assert (=> d!1222431 (= lt!1471656 (dynLambda!19083 (toChars!9807 (transformation!7296 (rule!10378 (_1!24675 lt!1471524)))) (value!228490 (_1!24675 lt!1471524))))))

(assert (=> d!1222431 (= (charsOf!4918 (_1!24675 lt!1471524)) lt!1471656)))

(declare-fun b_lambda!121051 () Bool)

(assert (=> (not b_lambda!121051) (not d!1222431)))

(declare-fun tb!247515 () Bool)

(declare-fun t!341046 () Bool)

(assert (=> (and b!4124287 (= (toChars!9807 (transformation!7296 rBis!149)) (toChars!9807 (transformation!7296 (rule!10378 (_1!24675 lt!1471524))))) t!341046) tb!247515))

(declare-fun b!4124678 () Bool)

(declare-fun e!2559395 () Bool)

(declare-fun tp!1256873 () Bool)

(assert (=> b!4124678 (= e!2559395 (and (inv!59210 (c!707944 (dynLambda!19083 (toChars!9807 (transformation!7296 (rule!10378 (_1!24675 lt!1471524)))) (value!228490 (_1!24675 lt!1471524))))) tp!1256873))))

(declare-fun result!300754 () Bool)

(assert (=> tb!247515 (= result!300754 (and (inv!59211 (dynLambda!19083 (toChars!9807 (transformation!7296 (rule!10378 (_1!24675 lt!1471524)))) (value!228490 (_1!24675 lt!1471524)))) e!2559395))))

(assert (= tb!247515 b!4124678))

(declare-fun m!4723575 () Bool)

(assert (=> b!4124678 m!4723575))

(declare-fun m!4723577 () Bool)

(assert (=> tb!247515 m!4723577))

(assert (=> d!1222431 t!341046))

(declare-fun b_and!319263 () Bool)

(assert (= b_and!319241 (and (=> t!341046 result!300754) b_and!319263)))

(declare-fun tb!247517 () Bool)

(declare-fun t!341048 () Bool)

(assert (=> (and b!4124266 (= (toChars!9807 (transformation!7296 r!4008)) (toChars!9807 (transformation!7296 (rule!10378 (_1!24675 lt!1471524))))) t!341048) tb!247517))

(declare-fun result!300756 () Bool)

(assert (= result!300756 result!300754))

(assert (=> d!1222431 t!341048))

(declare-fun b_and!319265 () Bool)

(assert (= b_and!319243 (and (=> t!341048 result!300756) b_and!319265)))

(declare-fun tb!247519 () Bool)

(declare-fun t!341050 () Bool)

(assert (=> (and b!4124270 (= (toChars!9807 (transformation!7296 (h!50047 rules!3756))) (toChars!9807 (transformation!7296 (rule!10378 (_1!24675 lt!1471524))))) t!341050) tb!247519))

(declare-fun result!300758 () Bool)

(assert (= result!300758 result!300754))

(assert (=> d!1222431 t!341050))

(declare-fun b_and!319267 () Bool)

(assert (= b_and!319245 (and (=> t!341050 result!300758) b_and!319267)))

(declare-fun m!4723579 () Bool)

(assert (=> d!1222431 m!4723579))

(declare-fun m!4723581 () Bool)

(assert (=> d!1222431 m!4723581))

(assert (=> b!4124288 d!1222431))

(declare-fun d!1222433 () Bool)

(assert (=> d!1222433 (= (get!14562 lt!1471519) (v!40197 lt!1471519))))

(assert (=> b!4124288 d!1222433))

(declare-fun b!4124690 () Bool)

(declare-fun e!2559402 () Int)

(assert (=> b!4124690 (= e!2559402 (- 1))))

(declare-fun b!4124688 () Bool)

(declare-fun e!2559401 () Int)

(assert (=> b!4124688 (= e!2559401 e!2559402)))

(declare-fun c!708008 () Bool)

(assert (=> b!4124688 (= c!708008 (and ((_ is Cons!44627) rules!3756) (not (= (h!50047 rules!3756) rBis!149))))))

(declare-fun b!4124689 () Bool)

(assert (=> b!4124689 (= e!2559402 (+ 1 (getIndex!644 (t!341008 rules!3756) rBis!149)))))

(declare-fun d!1222435 () Bool)

(declare-fun lt!1471659 () Int)

(assert (=> d!1222435 (>= lt!1471659 0)))

(assert (=> d!1222435 (= lt!1471659 e!2559401)))

(declare-fun c!708009 () Bool)

(assert (=> d!1222435 (= c!708009 (and ((_ is Cons!44627) rules!3756) (= (h!50047 rules!3756) rBis!149)))))

(assert (=> d!1222435 (contains!8968 rules!3756 rBis!149)))

(assert (=> d!1222435 (= (getIndex!644 rules!3756 rBis!149) lt!1471659)))

(declare-fun b!4124687 () Bool)

(assert (=> b!4124687 (= e!2559401 0)))

(assert (= (and d!1222435 c!708009) b!4124687))

(assert (= (and d!1222435 (not c!708009)) b!4124688))

(assert (= (and b!4124688 c!708008) b!4124689))

(assert (= (and b!4124688 (not c!708008)) b!4124690))

(declare-fun m!4723583 () Bool)

(assert (=> b!4124689 m!4723583))

(assert (=> d!1222435 m!4723207))

(assert (=> b!4124267 d!1222435))

(declare-fun b!4124694 () Bool)

(declare-fun e!2559404 () Int)

(assert (=> b!4124694 (= e!2559404 (- 1))))

(declare-fun b!4124692 () Bool)

(declare-fun e!2559403 () Int)

(assert (=> b!4124692 (= e!2559403 e!2559404)))

(declare-fun c!708010 () Bool)

(assert (=> b!4124692 (= c!708010 (and ((_ is Cons!44627) rules!3756) (not (= (h!50047 rules!3756) r!4008))))))

(declare-fun b!4124693 () Bool)

(assert (=> b!4124693 (= e!2559404 (+ 1 (getIndex!644 (t!341008 rules!3756) r!4008)))))

(declare-fun d!1222437 () Bool)

(declare-fun lt!1471660 () Int)

(assert (=> d!1222437 (>= lt!1471660 0)))

(assert (=> d!1222437 (= lt!1471660 e!2559403)))

(declare-fun c!708011 () Bool)

(assert (=> d!1222437 (= c!708011 (and ((_ is Cons!44627) rules!3756) (= (h!50047 rules!3756) r!4008)))))

(assert (=> d!1222437 (contains!8968 rules!3756 r!4008)))

(assert (=> d!1222437 (= (getIndex!644 rules!3756 r!4008) lt!1471660)))

(declare-fun b!4124691 () Bool)

(assert (=> b!4124691 (= e!2559403 0)))

(assert (= (and d!1222437 c!708011) b!4124691))

(assert (= (and d!1222437 (not c!708011)) b!4124692))

(assert (= (and b!4124692 c!708010) b!4124693))

(assert (= (and b!4124692 (not c!708010)) b!4124694))

(declare-fun m!4723585 () Bool)

(assert (=> b!4124693 m!4723585))

(assert (=> d!1222437 m!4723215))

(assert (=> b!4124267 d!1222437))

(declare-fun d!1222439 () Bool)

(declare-fun res!1685742 () Bool)

(declare-fun e!2559407 () Bool)

(assert (=> d!1222439 (=> (not res!1685742) (not e!2559407))))

(declare-fun rulesValid!2858 (LexerInterface!6885 List!44751) Bool)

(assert (=> d!1222439 (= res!1685742 (rulesValid!2858 thiss!25645 rules!3756))))

(assert (=> d!1222439 (= (rulesInvariant!6182 thiss!25645 rules!3756) e!2559407)))

(declare-fun b!4124697 () Bool)

(declare-datatypes ((List!44753 0))(
  ( (Nil!44629) (Cons!44629 (h!50049 String!51380) (t!341058 List!44753)) )
))
(declare-fun noDuplicateTag!2939 (LexerInterface!6885 List!44751 List!44753) Bool)

(assert (=> b!4124697 (= e!2559407 (noDuplicateTag!2939 thiss!25645 rules!3756 Nil!44629))))

(assert (= (and d!1222439 res!1685742) b!4124697))

(declare-fun m!4723587 () Bool)

(assert (=> d!1222439 m!4723587))

(declare-fun m!4723589 () Bool)

(assert (=> b!4124697 m!4723589))

(assert (=> b!4124269 d!1222439))

(declare-fun d!1222441 () Bool)

(declare-fun lt!1471661 () Bool)

(assert (=> d!1222441 (= lt!1471661 (select (content!6879 rules!3756) r!4008))))

(declare-fun e!2559408 () Bool)

(assert (=> d!1222441 (= lt!1471661 e!2559408)))

(declare-fun res!1685744 () Bool)

(assert (=> d!1222441 (=> (not res!1685744) (not e!2559408))))

(assert (=> d!1222441 (= res!1685744 ((_ is Cons!44627) rules!3756))))

(assert (=> d!1222441 (= (contains!8968 rules!3756 r!4008) lt!1471661)))

(declare-fun b!4124698 () Bool)

(declare-fun e!2559409 () Bool)

(assert (=> b!4124698 (= e!2559408 e!2559409)))

(declare-fun res!1685743 () Bool)

(assert (=> b!4124698 (=> res!1685743 e!2559409)))

(assert (=> b!4124698 (= res!1685743 (= (h!50047 rules!3756) r!4008))))

(declare-fun b!4124699 () Bool)

(assert (=> b!4124699 (= e!2559409 (contains!8968 (t!341008 rules!3756) r!4008))))

(assert (= (and d!1222441 res!1685744) b!4124698))

(assert (= (and b!4124698 (not res!1685743)) b!4124699))

(assert (=> d!1222441 m!4723237))

(declare-fun m!4723591 () Bool)

(assert (=> d!1222441 m!4723591))

(declare-fun m!4723593 () Bool)

(assert (=> b!4124699 m!4723593))

(assert (=> b!4124268 d!1222441))

(declare-fun d!1222443 () Bool)

(declare-fun res!1685749 () Bool)

(declare-fun e!2559412 () Bool)

(assert (=> d!1222443 (=> (not res!1685749) (not e!2559412))))

(assert (=> d!1222443 (= res!1685749 (validRegex!5488 (regex!7296 r!4008)))))

(assert (=> d!1222443 (= (ruleValid!3104 thiss!25645 r!4008) e!2559412)))

(declare-fun b!4124704 () Bool)

(declare-fun res!1685750 () Bool)

(assert (=> b!4124704 (=> (not res!1685750) (not e!2559412))))

(assert (=> b!4124704 (= res!1685750 (not (nullable!4282 (regex!7296 r!4008))))))

(declare-fun b!4124705 () Bool)

(assert (=> b!4124705 (= e!2559412 (not (= (tag!8156 r!4008) (String!51381 ""))))))

(assert (= (and d!1222443 res!1685749) b!4124704))

(assert (= (and b!4124704 res!1685750) b!4124705))

(declare-fun m!4723595 () Bool)

(assert (=> d!1222443 m!4723595))

(declare-fun m!4723597 () Bool)

(assert (=> b!4124704 m!4723597))

(assert (=> b!4124279 d!1222443))

(declare-fun d!1222445 () Bool)

(assert (=> d!1222445 (= (isEmpty!26563 rules!3756) ((_ is Nil!44627) rules!3756))))

(assert (=> b!4124281 d!1222445))

(declare-fun d!1222447 () Bool)

(assert (=> d!1222447 (ruleValid!3104 thiss!25645 r!4008)))

(declare-fun lt!1471664 () Unit!63965)

(declare-fun choose!25222 (LexerInterface!6885 Rule!14392 List!44751) Unit!63965)

(assert (=> d!1222447 (= lt!1471664 (choose!25222 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1222447 (contains!8968 rules!3756 r!4008)))

(assert (=> d!1222447 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2148 thiss!25645 r!4008 rules!3756) lt!1471664)))

(declare-fun bs!594775 () Bool)

(assert (= bs!594775 d!1222447))

(assert (=> bs!594775 m!4723185))

(declare-fun m!4723599 () Bool)

(assert (=> bs!594775 m!4723599))

(assert (=> bs!594775 m!4723215))

(assert (=> b!4124280 d!1222447))

(declare-fun d!1222449 () Bool)

(declare-fun res!1685751 () Bool)

(declare-fun e!2559413 () Bool)

(assert (=> d!1222449 (=> (not res!1685751) (not e!2559413))))

(assert (=> d!1222449 (= res!1685751 (validRegex!5488 (regex!7296 rBis!149)))))

(assert (=> d!1222449 (= (ruleValid!3104 thiss!25645 rBis!149) e!2559413)))

(declare-fun b!4124706 () Bool)

(declare-fun res!1685752 () Bool)

(assert (=> b!4124706 (=> (not res!1685752) (not e!2559413))))

(assert (=> b!4124706 (= res!1685752 (not (nullable!4282 (regex!7296 rBis!149))))))

(declare-fun b!4124707 () Bool)

(assert (=> b!4124707 (= e!2559413 (not (= (tag!8156 rBis!149) (String!51381 ""))))))

(assert (= (and d!1222449 res!1685751) b!4124706))

(assert (= (and b!4124706 res!1685752) b!4124707))

(assert (=> d!1222449 m!4723205))

(declare-fun m!4723601 () Bool)

(assert (=> b!4124706 m!4723601))

(assert (=> b!4124280 d!1222449))

(declare-fun d!1222451 () Bool)

(assert (=> d!1222451 (ruleValid!3104 thiss!25645 rBis!149)))

(declare-fun lt!1471665 () Unit!63965)

(assert (=> d!1222451 (= lt!1471665 (choose!25222 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1222451 (contains!8968 rules!3756 rBis!149)))

(assert (=> d!1222451 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2148 thiss!25645 rBis!149 rules!3756) lt!1471665)))

(declare-fun bs!594776 () Bool)

(assert (= bs!594776 d!1222451))

(assert (=> bs!594776 m!4723175))

(declare-fun m!4723603 () Bool)

(assert (=> bs!594776 m!4723603))

(assert (=> bs!594776 m!4723207))

(assert (=> b!4124280 d!1222451))

(declare-fun b!4124736 () Bool)

(declare-fun e!2559431 () Bool)

(declare-fun derivativeStep!3677 (Regex!12201 C!24588) Regex!12201)

(assert (=> b!4124736 (= e!2559431 (matchR!6032 (derivativeStep!3677 (regex!7296 rBis!149) (head!8689 p!2912)) (tail!6463 p!2912)))))

(declare-fun b!4124737 () Bool)

(declare-fun res!1685776 () Bool)

(declare-fun e!2559428 () Bool)

(assert (=> b!4124737 (=> res!1685776 e!2559428)))

(assert (=> b!4124737 (= res!1685776 (not (isEmpty!26564 (tail!6463 p!2912))))))

(declare-fun b!4124738 () Bool)

(declare-fun res!1685769 () Bool)

(declare-fun e!2559434 () Bool)

(assert (=> b!4124738 (=> res!1685769 e!2559434)))

(assert (=> b!4124738 (= res!1685769 (not ((_ is ElementMatch!12201) (regex!7296 rBis!149))))))

(declare-fun e!2559432 () Bool)

(assert (=> b!4124738 (= e!2559432 e!2559434)))

(declare-fun b!4124739 () Bool)

(assert (=> b!4124739 (= e!2559431 (nullable!4282 (regex!7296 rBis!149)))))

(declare-fun d!1222453 () Bool)

(declare-fun e!2559429 () Bool)

(assert (=> d!1222453 e!2559429))

(declare-fun c!708020 () Bool)

(assert (=> d!1222453 (= c!708020 ((_ is EmptyExpr!12201) (regex!7296 rBis!149)))))

(declare-fun lt!1471668 () Bool)

(assert (=> d!1222453 (= lt!1471668 e!2559431)))

(declare-fun c!708018 () Bool)

(assert (=> d!1222453 (= c!708018 (isEmpty!26564 p!2912))))

(assert (=> d!1222453 (validRegex!5488 (regex!7296 rBis!149))))

(assert (=> d!1222453 (= (matchR!6032 (regex!7296 rBis!149) p!2912) lt!1471668)))

(declare-fun b!4124740 () Bool)

(assert (=> b!4124740 (= e!2559432 (not lt!1471668))))

(declare-fun bm!290066 () Bool)

(declare-fun call!290071 () Bool)

(assert (=> bm!290066 (= call!290071 (isEmpty!26564 p!2912))))

(declare-fun b!4124741 () Bool)

(declare-fun res!1685775 () Bool)

(declare-fun e!2559433 () Bool)

(assert (=> b!4124741 (=> (not res!1685775) (not e!2559433))))

(assert (=> b!4124741 (= res!1685775 (not call!290071))))

(declare-fun b!4124742 () Bool)

(declare-fun res!1685771 () Bool)

(assert (=> b!4124742 (=> res!1685771 e!2559434)))

(assert (=> b!4124742 (= res!1685771 e!2559433)))

(declare-fun res!1685772 () Bool)

(assert (=> b!4124742 (=> (not res!1685772) (not e!2559433))))

(assert (=> b!4124742 (= res!1685772 lt!1471668)))

(declare-fun b!4124743 () Bool)

(assert (=> b!4124743 (= e!2559429 e!2559432)))

(declare-fun c!708019 () Bool)

(assert (=> b!4124743 (= c!708019 ((_ is EmptyLang!12201) (regex!7296 rBis!149)))))

(declare-fun b!4124744 () Bool)

(declare-fun res!1685770 () Bool)

(assert (=> b!4124744 (=> (not res!1685770) (not e!2559433))))

(assert (=> b!4124744 (= res!1685770 (isEmpty!26564 (tail!6463 p!2912)))))

(declare-fun b!4124745 () Bool)

(declare-fun e!2559430 () Bool)

(assert (=> b!4124745 (= e!2559434 e!2559430)))

(declare-fun res!1685773 () Bool)

(assert (=> b!4124745 (=> (not res!1685773) (not e!2559430))))

(assert (=> b!4124745 (= res!1685773 (not lt!1471668))))

(declare-fun b!4124746 () Bool)

(assert (=> b!4124746 (= e!2559430 e!2559428)))

(declare-fun res!1685774 () Bool)

(assert (=> b!4124746 (=> res!1685774 e!2559428)))

(assert (=> b!4124746 (= res!1685774 call!290071)))

(declare-fun b!4124747 () Bool)

(assert (=> b!4124747 (= e!2559429 (= lt!1471668 call!290071))))

(declare-fun b!4124748 () Bool)

(assert (=> b!4124748 (= e!2559428 (not (= (head!8689 p!2912) (c!707945 (regex!7296 rBis!149)))))))

(declare-fun b!4124749 () Bool)

(assert (=> b!4124749 (= e!2559433 (= (head!8689 p!2912) (c!707945 (regex!7296 rBis!149))))))

(assert (= (and d!1222453 c!708018) b!4124739))

(assert (= (and d!1222453 (not c!708018)) b!4124736))

(assert (= (and d!1222453 c!708020) b!4124747))

(assert (= (and d!1222453 (not c!708020)) b!4124743))

(assert (= (and b!4124743 c!708019) b!4124740))

(assert (= (and b!4124743 (not c!708019)) b!4124738))

(assert (= (and b!4124738 (not res!1685769)) b!4124742))

(assert (= (and b!4124742 res!1685772) b!4124741))

(assert (= (and b!4124741 res!1685775) b!4124744))

(assert (= (and b!4124744 res!1685770) b!4124749))

(assert (= (and b!4124742 (not res!1685771)) b!4124745))

(assert (= (and b!4124745 res!1685773) b!4124746))

(assert (= (and b!4124746 (not res!1685774)) b!4124737))

(assert (= (and b!4124737 (not res!1685776)) b!4124748))

(assert (= (or b!4124747 b!4124746 b!4124741) bm!290066))

(assert (=> b!4124749 m!4723249))

(assert (=> bm!290066 m!4723219))

(assert (=> b!4124744 m!4723255))

(assert (=> b!4124744 m!4723255))

(declare-fun m!4723605 () Bool)

(assert (=> b!4124744 m!4723605))

(assert (=> b!4124736 m!4723249))

(assert (=> b!4124736 m!4723249))

(declare-fun m!4723607 () Bool)

(assert (=> b!4124736 m!4723607))

(assert (=> b!4124736 m!4723255))

(assert (=> b!4124736 m!4723607))

(assert (=> b!4124736 m!4723255))

(declare-fun m!4723609 () Bool)

(assert (=> b!4124736 m!4723609))

(assert (=> b!4124748 m!4723249))

(assert (=> d!1222453 m!4723219))

(assert (=> d!1222453 m!4723205))

(assert (=> b!4124739 m!4723601))

(assert (=> b!4124737 m!4723255))

(assert (=> b!4124737 m!4723255))

(assert (=> b!4124737 m!4723605))

(assert (=> b!4124282 d!1222453))

(declare-fun d!1222455 () Bool)

(assert (=> d!1222455 (not (= (tag!8156 rBis!149) (tag!8156 r!4008)))))

(declare-fun lt!1471671 () Unit!63965)

(declare-fun choose!25223 (LexerInterface!6885 List!44751 Rule!14392 Rule!14392) Unit!63965)

(assert (=> d!1222455 (= lt!1471671 (choose!25223 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1222455 (contains!8968 rules!3756 rBis!149)))

(assert (=> d!1222455 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!54 thiss!25645 rules!3756 rBis!149 r!4008) lt!1471671)))

(declare-fun bs!594777 () Bool)

(assert (= bs!594777 d!1222455))

(declare-fun m!4723611 () Bool)

(assert (=> bs!594777 m!4723611))

(assert (=> bs!594777 m!4723207))

(assert (=> b!4124282 d!1222455))

(declare-fun d!1222457 () Bool)

(assert (=> d!1222457 (= (inv!59205 (tag!8156 (h!50047 rules!3756))) (= (mod (str.len (value!228489 (tag!8156 (h!50047 rules!3756)))) 2) 0))))

(assert (=> b!4124271 d!1222457))

(declare-fun d!1222459 () Bool)

(declare-fun res!1685777 () Bool)

(declare-fun e!2559435 () Bool)

(assert (=> d!1222459 (=> (not res!1685777) (not e!2559435))))

(assert (=> d!1222459 (= res!1685777 (semiInverseModEq!3143 (toChars!9807 (transformation!7296 (h!50047 rules!3756))) (toValue!9948 (transformation!7296 (h!50047 rules!3756)))))))

(assert (=> d!1222459 (= (inv!59207 (transformation!7296 (h!50047 rules!3756))) e!2559435)))

(declare-fun b!4124750 () Bool)

(assert (=> b!4124750 (= e!2559435 (equivClasses!3042 (toChars!9807 (transformation!7296 (h!50047 rules!3756))) (toValue!9948 (transformation!7296 (h!50047 rules!3756)))))))

(assert (= (and d!1222459 res!1685777) b!4124750))

(declare-fun m!4723613 () Bool)

(assert (=> d!1222459 m!4723613))

(declare-fun m!4723615 () Bool)

(assert (=> b!4124750 m!4723615))

(assert (=> b!4124271 d!1222459))

(declare-fun d!1222461 () Bool)

(assert (=> d!1222461 (= (inv!59205 (tag!8156 r!4008)) (= (mod (str.len (value!228489 (tag!8156 r!4008))) 2) 0))))

(assert (=> b!4124273 d!1222461))

(declare-fun d!1222463 () Bool)

(declare-fun res!1685778 () Bool)

(declare-fun e!2559436 () Bool)

(assert (=> d!1222463 (=> (not res!1685778) (not e!2559436))))

(assert (=> d!1222463 (= res!1685778 (semiInverseModEq!3143 (toChars!9807 (transformation!7296 r!4008)) (toValue!9948 (transformation!7296 r!4008))))))

(assert (=> d!1222463 (= (inv!59207 (transformation!7296 r!4008)) e!2559436)))

(declare-fun b!4124751 () Bool)

(assert (=> b!4124751 (= e!2559436 (equivClasses!3042 (toChars!9807 (transformation!7296 r!4008)) (toValue!9948 (transformation!7296 r!4008))))))

(assert (= (and d!1222463 res!1685778) b!4124751))

(declare-fun m!4723617 () Bool)

(assert (=> d!1222463 m!4723617))

(declare-fun m!4723619 () Bool)

(assert (=> b!4124751 m!4723619))

(assert (=> b!4124273 d!1222463))

(declare-fun b!4124752 () Bool)

(declare-fun e!2559440 () Bool)

(assert (=> b!4124752 (= e!2559440 (matchR!6032 (derivativeStep!3677 (regex!7296 r!4008) (head!8689 p!2912)) (tail!6463 p!2912)))))

(declare-fun b!4124753 () Bool)

(declare-fun res!1685786 () Bool)

(declare-fun e!2559437 () Bool)

(assert (=> b!4124753 (=> res!1685786 e!2559437)))

(assert (=> b!4124753 (= res!1685786 (not (isEmpty!26564 (tail!6463 p!2912))))))

(declare-fun b!4124754 () Bool)

(declare-fun res!1685779 () Bool)

(declare-fun e!2559443 () Bool)

(assert (=> b!4124754 (=> res!1685779 e!2559443)))

(assert (=> b!4124754 (= res!1685779 (not ((_ is ElementMatch!12201) (regex!7296 r!4008))))))

(declare-fun e!2559441 () Bool)

(assert (=> b!4124754 (= e!2559441 e!2559443)))

(declare-fun b!4124755 () Bool)

(assert (=> b!4124755 (= e!2559440 (nullable!4282 (regex!7296 r!4008)))))

(declare-fun d!1222465 () Bool)

(declare-fun e!2559438 () Bool)

(assert (=> d!1222465 e!2559438))

(declare-fun c!708023 () Bool)

(assert (=> d!1222465 (= c!708023 ((_ is EmptyExpr!12201) (regex!7296 r!4008)))))

(declare-fun lt!1471672 () Bool)

(assert (=> d!1222465 (= lt!1471672 e!2559440)))

(declare-fun c!708021 () Bool)

(assert (=> d!1222465 (= c!708021 (isEmpty!26564 p!2912))))

(assert (=> d!1222465 (validRegex!5488 (regex!7296 r!4008))))

(assert (=> d!1222465 (= (matchR!6032 (regex!7296 r!4008) p!2912) lt!1471672)))

(declare-fun b!4124756 () Bool)

(assert (=> b!4124756 (= e!2559441 (not lt!1471672))))

(declare-fun bm!290067 () Bool)

(declare-fun call!290072 () Bool)

(assert (=> bm!290067 (= call!290072 (isEmpty!26564 p!2912))))

(declare-fun b!4124757 () Bool)

(declare-fun res!1685785 () Bool)

(declare-fun e!2559442 () Bool)

(assert (=> b!4124757 (=> (not res!1685785) (not e!2559442))))

(assert (=> b!4124757 (= res!1685785 (not call!290072))))

(declare-fun b!4124758 () Bool)

(declare-fun res!1685781 () Bool)

(assert (=> b!4124758 (=> res!1685781 e!2559443)))

(assert (=> b!4124758 (= res!1685781 e!2559442)))

(declare-fun res!1685782 () Bool)

(assert (=> b!4124758 (=> (not res!1685782) (not e!2559442))))

(assert (=> b!4124758 (= res!1685782 lt!1471672)))

(declare-fun b!4124759 () Bool)

(assert (=> b!4124759 (= e!2559438 e!2559441)))

(declare-fun c!708022 () Bool)

(assert (=> b!4124759 (= c!708022 ((_ is EmptyLang!12201) (regex!7296 r!4008)))))

(declare-fun b!4124760 () Bool)

(declare-fun res!1685780 () Bool)

(assert (=> b!4124760 (=> (not res!1685780) (not e!2559442))))

(assert (=> b!4124760 (= res!1685780 (isEmpty!26564 (tail!6463 p!2912)))))

(declare-fun b!4124761 () Bool)

(declare-fun e!2559439 () Bool)

(assert (=> b!4124761 (= e!2559443 e!2559439)))

(declare-fun res!1685783 () Bool)

(assert (=> b!4124761 (=> (not res!1685783) (not e!2559439))))

(assert (=> b!4124761 (= res!1685783 (not lt!1471672))))

(declare-fun b!4124762 () Bool)

(assert (=> b!4124762 (= e!2559439 e!2559437)))

(declare-fun res!1685784 () Bool)

(assert (=> b!4124762 (=> res!1685784 e!2559437)))

(assert (=> b!4124762 (= res!1685784 call!290072)))

(declare-fun b!4124763 () Bool)

(assert (=> b!4124763 (= e!2559438 (= lt!1471672 call!290072))))

(declare-fun b!4124764 () Bool)

(assert (=> b!4124764 (= e!2559437 (not (= (head!8689 p!2912) (c!707945 (regex!7296 r!4008)))))))

(declare-fun b!4124765 () Bool)

(assert (=> b!4124765 (= e!2559442 (= (head!8689 p!2912) (c!707945 (regex!7296 r!4008))))))

(assert (= (and d!1222465 c!708021) b!4124755))

(assert (= (and d!1222465 (not c!708021)) b!4124752))

(assert (= (and d!1222465 c!708023) b!4124763))

(assert (= (and d!1222465 (not c!708023)) b!4124759))

(assert (= (and b!4124759 c!708022) b!4124756))

(assert (= (and b!4124759 (not c!708022)) b!4124754))

(assert (= (and b!4124754 (not res!1685779)) b!4124758))

(assert (= (and b!4124758 res!1685782) b!4124757))

(assert (= (and b!4124757 res!1685785) b!4124760))

(assert (= (and b!4124760 res!1685780) b!4124765))

(assert (= (and b!4124758 (not res!1685781)) b!4124761))

(assert (= (and b!4124761 res!1685783) b!4124762))

(assert (= (and b!4124762 (not res!1685784)) b!4124753))

(assert (= (and b!4124753 (not res!1685786)) b!4124764))

(assert (= (or b!4124763 b!4124762 b!4124757) bm!290067))

(assert (=> b!4124765 m!4723249))

(assert (=> bm!290067 m!4723219))

(assert (=> b!4124760 m!4723255))

(assert (=> b!4124760 m!4723255))

(assert (=> b!4124760 m!4723605))

(assert (=> b!4124752 m!4723249))

(assert (=> b!4124752 m!4723249))

(declare-fun m!4723621 () Bool)

(assert (=> b!4124752 m!4723621))

(assert (=> b!4124752 m!4723255))

(assert (=> b!4124752 m!4723621))

(assert (=> b!4124752 m!4723255))

(declare-fun m!4723623 () Bool)

(assert (=> b!4124752 m!4723623))

(assert (=> b!4124764 m!4723249))

(assert (=> d!1222465 m!4723219))

(assert (=> d!1222465 m!4723595))

(assert (=> b!4124755 m!4723597))

(assert (=> b!4124753 m!4723255))

(assert (=> b!4124753 m!4723255))

(assert (=> b!4124753 m!4723605))

(assert (=> b!4124272 d!1222465))

(declare-fun b!4124776 () Bool)

(declare-fun b_free!116779 () Bool)

(declare-fun b_next!117483 () Bool)

(assert (=> b!4124776 (= b_free!116779 (not b_next!117483))))

(declare-fun t!341052 () Bool)

(declare-fun tb!247521 () Bool)

(assert (=> (and b!4124776 (= (toValue!9948 (transformation!7296 (h!50047 (t!341008 rules!3756)))) (toValue!9948 (transformation!7296 r!4008))) t!341052) tb!247521))

(declare-fun result!300762 () Bool)

(assert (= result!300762 result!300712))

(assert (=> d!1222353 t!341052))

(assert (=> d!1222355 t!341052))

(declare-fun tp!1256884 () Bool)

(declare-fun b_and!319269 () Bool)

(assert (=> b!4124776 (= tp!1256884 (and (=> t!341052 result!300762) b_and!319269))))

(declare-fun b_free!116781 () Bool)

(declare-fun b_next!117485 () Bool)

(assert (=> b!4124776 (= b_free!116781 (not b_next!117485))))

(declare-fun t!341054 () Bool)

(declare-fun tb!247523 () Bool)

(assert (=> (and b!4124776 (= (toChars!9807 (transformation!7296 (h!50047 (t!341008 rules!3756)))) (toChars!9807 (transformation!7296 r!4008))) t!341054) tb!247523))

(declare-fun result!300764 () Bool)

(assert (= result!300764 result!300728))

(assert (=> d!1222355 t!341054))

(declare-fun t!341056 () Bool)

(declare-fun tb!247525 () Bool)

(assert (=> (and b!4124776 (= (toChars!9807 (transformation!7296 (h!50047 (t!341008 rules!3756)))) (toChars!9807 (transformation!7296 (rule!10378 (_1!24675 lt!1471524))))) t!341056) tb!247525))

(declare-fun result!300766 () Bool)

(assert (= result!300766 result!300754))

(assert (=> d!1222431 t!341056))

(declare-fun tp!1256885 () Bool)

(declare-fun b_and!319271 () Bool)

(assert (=> b!4124776 (= tp!1256885 (and (=> t!341054 result!300764) (=> t!341056 result!300766) b_and!319271))))

(declare-fun e!2559455 () Bool)

(assert (=> b!4124776 (= e!2559455 (and tp!1256884 tp!1256885))))

(declare-fun e!2559453 () Bool)

(declare-fun b!4124775 () Bool)

(declare-fun tp!1256882 () Bool)

(assert (=> b!4124775 (= e!2559453 (and tp!1256882 (inv!59205 (tag!8156 (h!50047 (t!341008 rules!3756)))) (inv!59207 (transformation!7296 (h!50047 (t!341008 rules!3756)))) e!2559455))))

(declare-fun b!4124774 () Bool)

(declare-fun e!2559454 () Bool)

(declare-fun tp!1256883 () Bool)

(assert (=> b!4124774 (= e!2559454 (and e!2559453 tp!1256883))))

(assert (=> b!4124286 (= tp!1256824 e!2559454)))

(assert (= b!4124775 b!4124776))

(assert (= b!4124774 b!4124775))

(assert (= (and b!4124286 ((_ is Cons!44627) (t!341008 rules!3756))) b!4124774))

(declare-fun m!4723625 () Bool)

(assert (=> b!4124775 m!4723625))

(declare-fun m!4723627 () Bool)

(assert (=> b!4124775 m!4723627))

(declare-fun b!4124781 () Bool)

(declare-fun e!2559458 () Bool)

(declare-fun tp!1256888 () Bool)

(assert (=> b!4124781 (= e!2559458 (and tp_is_empty!21325 tp!1256888))))

(assert (=> b!4124275 (= tp!1256818 e!2559458)))

(assert (= (and b!4124275 ((_ is Cons!44626) (t!341007 p!2912))) b!4124781))

(declare-fun b!4124792 () Bool)

(declare-fun e!2559461 () Bool)

(assert (=> b!4124792 (= e!2559461 tp_is_empty!21325)))

(declare-fun b!4124793 () Bool)

(declare-fun tp!1256901 () Bool)

(declare-fun tp!1256902 () Bool)

(assert (=> b!4124793 (= e!2559461 (and tp!1256901 tp!1256902))))

(assert (=> b!4124277 (= tp!1256813 e!2559461)))

(declare-fun b!4124795 () Bool)

(declare-fun tp!1256899 () Bool)

(declare-fun tp!1256900 () Bool)

(assert (=> b!4124795 (= e!2559461 (and tp!1256899 tp!1256900))))

(declare-fun b!4124794 () Bool)

(declare-fun tp!1256903 () Bool)

(assert (=> b!4124794 (= e!2559461 tp!1256903)))

(assert (= (and b!4124277 ((_ is ElementMatch!12201) (regex!7296 rBis!149))) b!4124792))

(assert (= (and b!4124277 ((_ is Concat!19728) (regex!7296 rBis!149))) b!4124793))

(assert (= (and b!4124277 ((_ is Star!12201) (regex!7296 rBis!149))) b!4124794))

(assert (= (and b!4124277 ((_ is Union!12201) (regex!7296 rBis!149))) b!4124795))

(declare-fun b!4124796 () Bool)

(declare-fun e!2559462 () Bool)

(assert (=> b!4124796 (= e!2559462 tp_is_empty!21325)))

(declare-fun b!4124797 () Bool)

(declare-fun tp!1256906 () Bool)

(declare-fun tp!1256907 () Bool)

(assert (=> b!4124797 (= e!2559462 (and tp!1256906 tp!1256907))))

(assert (=> b!4124271 (= tp!1256823 e!2559462)))

(declare-fun b!4124799 () Bool)

(declare-fun tp!1256904 () Bool)

(declare-fun tp!1256905 () Bool)

(assert (=> b!4124799 (= e!2559462 (and tp!1256904 tp!1256905))))

(declare-fun b!4124798 () Bool)

(declare-fun tp!1256908 () Bool)

(assert (=> b!4124798 (= e!2559462 tp!1256908)))

(assert (= (and b!4124271 ((_ is ElementMatch!12201) (regex!7296 (h!50047 rules!3756)))) b!4124796))

(assert (= (and b!4124271 ((_ is Concat!19728) (regex!7296 (h!50047 rules!3756)))) b!4124797))

(assert (= (and b!4124271 ((_ is Star!12201) (regex!7296 (h!50047 rules!3756)))) b!4124798))

(assert (= (and b!4124271 ((_ is Union!12201) (regex!7296 (h!50047 rules!3756)))) b!4124799))

(declare-fun b!4124800 () Bool)

(declare-fun e!2559463 () Bool)

(assert (=> b!4124800 (= e!2559463 tp_is_empty!21325)))

(declare-fun b!4124801 () Bool)

(declare-fun tp!1256911 () Bool)

(declare-fun tp!1256912 () Bool)

(assert (=> b!4124801 (= e!2559463 (and tp!1256911 tp!1256912))))

(assert (=> b!4124273 (= tp!1256820 e!2559463)))

(declare-fun b!4124803 () Bool)

(declare-fun tp!1256909 () Bool)

(declare-fun tp!1256910 () Bool)

(assert (=> b!4124803 (= e!2559463 (and tp!1256909 tp!1256910))))

(declare-fun b!4124802 () Bool)

(declare-fun tp!1256913 () Bool)

(assert (=> b!4124802 (= e!2559463 tp!1256913)))

(assert (= (and b!4124273 ((_ is ElementMatch!12201) (regex!7296 r!4008))) b!4124800))

(assert (= (and b!4124273 ((_ is Concat!19728) (regex!7296 r!4008))) b!4124801))

(assert (= (and b!4124273 ((_ is Star!12201) (regex!7296 r!4008))) b!4124802))

(assert (= (and b!4124273 ((_ is Union!12201) (regex!7296 r!4008))) b!4124803))

(declare-fun b!4124804 () Bool)

(declare-fun e!2559464 () Bool)

(declare-fun tp!1256914 () Bool)

(assert (=> b!4124804 (= e!2559464 (and tp_is_empty!21325 tp!1256914))))

(assert (=> b!4124283 (= tp!1256814 e!2559464)))

(assert (= (and b!4124283 ((_ is Cons!44626) (t!341007 input!3238))) b!4124804))

(declare-fun b_lambda!121053 () Bool)

(assert (= b_lambda!121033 (or (and b!4124287 b_free!116763 (= (toValue!9948 (transformation!7296 rBis!149)) (toValue!9948 (transformation!7296 r!4008)))) (and b!4124266 b_free!116767) (and b!4124270 b_free!116771 (= (toValue!9948 (transformation!7296 (h!50047 rules!3756))) (toValue!9948 (transformation!7296 r!4008)))) (and b!4124776 b_free!116779 (= (toValue!9948 (transformation!7296 (h!50047 (t!341008 rules!3756)))) (toValue!9948 (transformation!7296 r!4008)))) b_lambda!121053)))

(declare-fun b_lambda!121055 () Bool)

(assert (= b_lambda!121041 (or (and b!4124287 b_free!116763 (= (toValue!9948 (transformation!7296 rBis!149)) (toValue!9948 (transformation!7296 r!4008)))) (and b!4124266 b_free!116767) (and b!4124270 b_free!116771 (= (toValue!9948 (transformation!7296 (h!50047 rules!3756))) (toValue!9948 (transformation!7296 r!4008)))) (and b!4124776 b_free!116779 (= (toValue!9948 (transformation!7296 (h!50047 (t!341008 rules!3756)))) (toValue!9948 (transformation!7296 r!4008)))) b_lambda!121055)))

(declare-fun b_lambda!121057 () Bool)

(assert (= b_lambda!121039 (or (and b!4124287 b_free!116765 (= (toChars!9807 (transformation!7296 rBis!149)) (toChars!9807 (transformation!7296 r!4008)))) (and b!4124266 b_free!116769) (and b!4124270 b_free!116773 (= (toChars!9807 (transformation!7296 (h!50047 rules!3756))) (toChars!9807 (transformation!7296 r!4008)))) (and b!4124776 b_free!116781 (= (toChars!9807 (transformation!7296 (h!50047 (t!341008 rules!3756)))) (toChars!9807 (transformation!7296 r!4008)))) b_lambda!121057)))

(check-sat (not b!4124775) (not d!1222449) (not b!4124429) (not d!1222453) (not b!4124781) (not b!4124804) (not b!4124312) (not d!1222427) (not d!1222437) (not b!4124794) b_and!319267 b_and!319265 (not b!4124538) (not bm!290063) (not d!1222447) (not d!1222443) (not bm!290066) (not b_lambda!121051) (not d!1222451) (not b!4124671) (not b!4124765) (not b!4124331) (not b!4124689) (not d!1222407) (not b!4124737) (not b!4124803) (not b!4124753) b_and!319247 (not b!4124797) (not d!1222329) (not b!4124749) (not b!4124332) (not d!1222337) (not b!4124678) (not b!4124751) (not b_next!117477) (not b!4124426) b_and!319249 (not b!4124697) (not b!4124670) (not bm!290062) (not b!4124423) (not b!4124739) (not b_lambda!121055) (not b!4124422) (not b_next!117475) (not d!1222429) (not b!4124774) (not b!4124567) (not b!4124798) (not bm!290067) (not b!4124535) (not b!4124748) (not d!1222403) (not b!4124793) (not b!4124706) (not b!4124427) (not b!4124673) (not b!4124354) (not d!1222355) (not b_lambda!121057) (not tb!247485) b_and!319271 (not d!1222455) (not b!4124669) (not d!1222399) (not bm!290050) b_and!319263 (not b!4124529) (not d!1222411) (not b!4124699) (not d!1222393) (not b!4124750) (not b!4124570) (not d!1222439) (not b!4124799) (not b!4124744) (not b!4124704) (not b!4124764) (not b!4124795) (not b!4124333) (not b!4124693) (not b_lambda!121053) (not b!4124674) (not b_next!117483) (not b_next!117471) b_and!319251 (not b!4124752) (not b!4124801) (not b!4124676) (not d!1222465) (not d!1222459) (not b_next!117485) (not d!1222319) (not b!4124421) (not b!4124675) (not b!4124428) (not d!1222463) (not b_next!117469) (not d!1222431) (not b_next!117467) (not tb!247497) (not b!4124755) (not b!4124563) (not b_next!117473) b_and!319269 (not d!1222435) (not d!1222441) (not b!4124672) (not tb!247515) (not b!4124760) tp_is_empty!21325 (not b!4124425) (not b!4124802) (not b!4124736))
(check-sat b_and!319247 (not b_next!117475) (not b_next!117485) b_and!319267 b_and!319265 (not b_next!117477) b_and!319249 b_and!319271 b_and!319263 (not b_next!117483) (not b_next!117471) b_and!319251 (not b_next!117469) (not b_next!117467) (not b_next!117473) b_and!319269)
