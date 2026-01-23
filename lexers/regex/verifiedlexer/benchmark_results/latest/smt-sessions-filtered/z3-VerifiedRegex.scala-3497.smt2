; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!201632 () Bool)

(assert start!201632)

(declare-fun b!2047755 () Bool)

(declare-fun b_free!57445 () Bool)

(declare-fun b_next!58149 () Bool)

(assert (=> b!2047755 (= b_free!57445 (not b_next!58149))))

(declare-fun tp!610121 () Bool)

(declare-fun b_and!163401 () Bool)

(assert (=> b!2047755 (= tp!610121 b_and!163401)))

(declare-fun b!2047769 () Bool)

(declare-fun b_free!57447 () Bool)

(declare-fun b_next!58151 () Bool)

(assert (=> b!2047769 (= b_free!57447 (not b_next!58151))))

(declare-fun tp!610114 () Bool)

(declare-fun b_and!163403 () Bool)

(assert (=> b!2047769 (= tp!610114 b_and!163403)))

(declare-fun b!2047732 () Bool)

(declare-fun b_free!57449 () Bool)

(declare-fun b_next!58153 () Bool)

(assert (=> b!2047732 (= b_free!57449 (not b_next!58153))))

(declare-fun tp!610106 () Bool)

(declare-fun b_and!163405 () Bool)

(assert (=> b!2047732 (= tp!610106 b_and!163405)))

(declare-fun b!2047720 () Bool)

(declare-fun b_free!57451 () Bool)

(declare-fun b_next!58155 () Bool)

(assert (=> b!2047720 (= b_free!57451 (not b_next!58155))))

(declare-fun tp!610122 () Bool)

(declare-fun b_and!163407 () Bool)

(assert (=> b!2047720 (= tp!610122 b_and!163407)))

(declare-fun b!2047749 () Bool)

(declare-fun b_free!57453 () Bool)

(declare-fun b_next!58157 () Bool)

(assert (=> b!2047749 (= b_free!57453 (not b_next!58157))))

(declare-fun tp!610111 () Bool)

(declare-fun b_and!163409 () Bool)

(assert (=> b!2047749 (= tp!610111 b_and!163409)))

(declare-fun b!2047760 () Bool)

(declare-fun b_free!57455 () Bool)

(declare-fun b_next!58159 () Bool)

(assert (=> b!2047760 (= b_free!57455 (not b_next!58159))))

(declare-fun tp!610093 () Bool)

(declare-fun b_and!163411 () Bool)

(assert (=> b!2047760 (= tp!610093 b_and!163411)))

(declare-fun b!2047722 () Bool)

(declare-fun b_free!57457 () Bool)

(declare-fun b_next!58161 () Bool)

(assert (=> b!2047722 (= b_free!57457 (not b_next!58161))))

(declare-fun tp!610089 () Bool)

(declare-fun b_and!163413 () Bool)

(assert (=> b!2047722 (= tp!610089 b_and!163413)))

(declare-fun b!2047717 () Bool)

(declare-fun b_free!57459 () Bool)

(declare-fun b_next!58163 () Bool)

(assert (=> b!2047717 (= b_free!57459 (not b_next!58163))))

(declare-fun tp!610129 () Bool)

(declare-fun b_and!163415 () Bool)

(assert (=> b!2047717 (= tp!610129 b_and!163415)))

(declare-fun b_free!57461 () Bool)

(declare-fun b_next!58165 () Bool)

(assert (=> b!2047717 (= b_free!57461 (not b_next!58165))))

(declare-fun tp!610127 () Bool)

(declare-fun b_and!163417 () Bool)

(assert (=> b!2047717 (= tp!610127 b_and!163417)))

(declare-fun b!2047728 () Bool)

(declare-fun b_free!57463 () Bool)

(declare-fun b_next!58167 () Bool)

(assert (=> b!2047728 (= b_free!57463 (not b_next!58167))))

(declare-fun tp!610096 () Bool)

(declare-fun b_and!163419 () Bool)

(assert (=> b!2047728 (= tp!610096 b_and!163419)))

(declare-fun b!2047723 () Bool)

(declare-fun b_free!57465 () Bool)

(declare-fun b_next!58169 () Bool)

(assert (=> b!2047723 (= b_free!57465 (not b_next!58169))))

(declare-fun tp!610084 () Bool)

(declare-fun b_and!163421 () Bool)

(assert (=> b!2047723 (= tp!610084 b_and!163421)))

(declare-fun b_free!57467 () Bool)

(declare-fun b_next!58171 () Bool)

(assert (=> b!2047723 (= b_free!57467 (not b_next!58171))))

(declare-fun tp!610123 () Bool)

(declare-fun b_and!163423 () Bool)

(assert (=> b!2047723 (= tp!610123 b_and!163423)))

(declare-fun b!2047714 () Bool)

(declare-fun b_free!57469 () Bool)

(declare-fun b_next!58173 () Bool)

(assert (=> b!2047714 (= b_free!57469 (not b_next!58173))))

(declare-fun tp!610091 () Bool)

(declare-fun b_and!163425 () Bool)

(assert (=> b!2047714 (= tp!610091 b_and!163425)))

(declare-fun b_free!57471 () Bool)

(declare-fun b_next!58175 () Bool)

(assert (=> b!2047714 (= b_free!57471 (not b_next!58175))))

(declare-fun tp!610097 () Bool)

(declare-fun b_and!163427 () Bool)

(assert (=> b!2047714 (= tp!610097 b_and!163427)))

(declare-fun e!1294343 () Bool)

(assert (=> b!2047714 (= e!1294343 (and tp!610091 tp!610097))))

(declare-fun b!2047715 () Bool)

(declare-fun e!1294366 () Bool)

(declare-fun e!1294333 () Bool)

(declare-datatypes ((C!11068 0))(
  ( (C!11069 (val!6520 Int)) )
))
(declare-datatypes ((Regex!5461 0))(
  ( (ElementMatch!5461 (c!331264 C!11068)) (Concat!9630 (regOne!11434 Regex!5461) (regTwo!11434 Regex!5461)) (EmptyExpr!5461) (Star!5461 (reg!5790 Regex!5461)) (EmptyLang!5461) (Union!5461 (regOne!11435 Regex!5461) (regTwo!11435 Regex!5461)) )
))
(declare-datatypes ((List!22605 0))(
  ( (Nil!22521) (Cons!22521 (h!27922 Regex!5461) (t!191741 List!22605)) )
))
(declare-datatypes ((Context!2062 0))(
  ( (Context!2063 (exprs!1531 List!22605)) )
))
(declare-datatypes ((tuple2!21274 0))(
  ( (tuple2!21275 (_1!12166 Context!2062) (_2!12166 C!11068)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!21276 0))(
  ( (tuple2!21277 (_1!12167 tuple2!21274) (_2!12167 (InoxSet Context!2062))) )
))
(declare-datatypes ((List!22606 0))(
  ( (Nil!22522) (Cons!22522 (h!27923 tuple2!21276) (t!191742 List!22606)) )
))
(declare-datatypes ((array!7018 0))(
  ( (array!7019 (arr!3118 (Array (_ BitVec 32) List!22606)) (size!17597 (_ BitVec 32))) )
))
(declare-datatypes ((array!7020 0))(
  ( (array!7021 (arr!3119 (Array (_ BitVec 32) (_ BitVec 64))) (size!17598 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4072 0))(
  ( (LongMapFixedSize!4073 (defaultEntry!2401 Int) (mask!6082 (_ BitVec 32)) (extraKeys!2284 (_ BitVec 32)) (zeroValue!2294 List!22606) (minValue!2294 List!22606) (_size!4123 (_ BitVec 32)) (_keys!2333 array!7020) (_values!2316 array!7018) (_vacant!2097 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7969 0))(
  ( (Cell!7970 (v!27187 LongMapFixedSize!4072)) )
))
(declare-datatypes ((MutLongMap!2036 0))(
  ( (LongMap!2036 (underlying!4267 Cell!7969)) (MutLongMapExt!2035 (__x!14032 Int)) )
))
(declare-fun lt!767680 () MutLongMap!2036)

(get-info :version)

(assert (=> b!2047715 (= e!1294366 (and e!1294333 ((_ is LongMap!2036) lt!767680)))))

(declare-datatypes ((Hashable!1950 0))(
  ( (HashableExt!1949 (__x!14033 Int)) )
))
(declare-datatypes ((Cell!7971 0))(
  ( (Cell!7972 (v!27188 MutLongMap!2036)) )
))
(declare-datatypes ((MutableMap!1950 0))(
  ( (MutableMapExt!1949 (__x!14034 Int)) (HashMap!1950 (underlying!4268 Cell!7971) (hashF!3873 Hashable!1950) (_size!4124 (_ BitVec 32)) (defaultValue!2112 Int)) )
))
(declare-datatypes ((CacheUp!1246 0))(
  ( (CacheUp!1247 (cache!2331 MutableMap!1950)) )
))
(declare-fun cacheUp!562 () CacheUp!1246)

(assert (=> b!2047715 (= lt!767680 (v!27188 (underlying!4268 (cache!2331 cacheUp!562))))))

(declare-fun b!2047716 () Bool)

(declare-fun e!1294318 () Bool)

(declare-fun e!1294363 () Bool)

(assert (=> b!2047716 (= e!1294318 e!1294363)))

(declare-fun e!1294355 () Bool)

(assert (=> b!2047717 (= e!1294355 (and tp!610129 tp!610127))))

(declare-fun b!2047718 () Bool)

(declare-fun e!1294332 () Bool)

(declare-datatypes ((List!22607 0))(
  ( (Nil!22523) (Cons!22523 (h!27924 (_ BitVec 16)) (t!191743 List!22607)) )
))
(declare-datatypes ((TokenValue!4169 0))(
  ( (FloatLiteralValue!8338 (text!29628 List!22607)) (TokenValueExt!4168 (__x!14035 Int)) (Broken!20845 (value!126567 List!22607)) (Object!4252) (End!4169) (Def!4169) (Underscore!4169) (Match!4169) (Else!4169) (Error!4169) (Case!4169) (If!4169) (Extends!4169) (Abstract!4169) (Class!4169) (Val!4169) (DelimiterValue!8338 (del!4229 List!22607)) (KeywordValue!4175 (value!126568 List!22607)) (CommentValue!8338 (value!126569 List!22607)) (WhitespaceValue!8338 (value!126570 List!22607)) (IndentationValue!4169 (value!126571 List!22607)) (String!26036) (Int32!4169) (Broken!20846 (value!126572 List!22607)) (Boolean!4170) (Unit!37066) (OperatorValue!4172 (op!4229 List!22607)) (IdentifierValue!8338 (value!126573 List!22607)) (IdentifierValue!8339 (value!126574 List!22607)) (WhitespaceValue!8339 (value!126575 List!22607)) (True!8338) (False!8338) (Broken!20847 (value!126576 List!22607)) (Broken!20848 (value!126577 List!22607)) (True!8339) (RightBrace!4169) (RightBracket!4169) (Colon!4169) (Null!4169) (Comma!4169) (LeftBracket!4169) (False!8339) (LeftBrace!4169) (ImaginaryLiteralValue!4169 (text!29629 List!22607)) (StringLiteralValue!12507 (value!126578 List!22607)) (EOFValue!4169 (value!126579 List!22607)) (IdentValue!4169 (value!126580 List!22607)) (DelimiterValue!8339 (value!126581 List!22607)) (DedentValue!4169 (value!126582 List!22607)) (NewLineValue!4169 (value!126583 List!22607)) (IntegerValue!12507 (value!126584 (_ BitVec 32)) (text!29630 List!22607)) (IntegerValue!12508 (value!126585 Int) (text!29631 List!22607)) (Times!4169) (Or!4169) (Equal!4169) (Minus!4169) (Broken!20849 (value!126586 List!22607)) (And!4169) (Div!4169) (LessEqual!4169) (Mod!4169) (Concat!9631) (Not!4169) (Plus!4169) (SpaceValue!4169 (value!126587 List!22607)) (IntegerValue!12509 (value!126588 Int) (text!29632 List!22607)) (StringLiteralValue!12508 (text!29633 List!22607)) (FloatLiteralValue!8339 (text!29634 List!22607)) (BytesLiteralValue!4169 (value!126589 List!22607)) (CommentValue!8339 (value!126590 List!22607)) (StringLiteralValue!12509 (value!126591 List!22607)) (ErrorTokenValue!4169 (msg!4230 List!22607)) )
))
(declare-datatypes ((List!22608 0))(
  ( (Nil!22524) (Cons!22524 (h!27925 C!11068) (t!191744 List!22608)) )
))
(declare-datatypes ((IArray!15085 0))(
  ( (IArray!15086 (innerList!7600 List!22608)) )
))
(declare-datatypes ((Conc!7540 0))(
  ( (Node!7540 (left!17847 Conc!7540) (right!18177 Conc!7540) (csize!15310 Int) (cheight!7751 Int)) (Leaf!11038 (xs!10448 IArray!15085) (csize!15311 Int)) (Empty!7540) )
))
(declare-datatypes ((BalanceConc!14842 0))(
  ( (BalanceConc!14843 (c!331265 Conc!7540)) )
))
(declare-datatypes ((String!26037 0))(
  ( (String!26038 (value!126592 String)) )
))
(declare-datatypes ((TokenValueInjection!7922 0))(
  ( (TokenValueInjection!7923 (toValue!5716 Int) (toChars!5575 Int)) )
))
(declare-datatypes ((Rule!7866 0))(
  ( (Rule!7867 (regex!4033 Regex!5461) (tag!4523 String!26037) (isSeparator!4033 Bool) (transformation!4033 TokenValueInjection!7922)) )
))
(declare-datatypes ((Token!7614 0))(
  ( (Token!7615 (value!126593 TokenValue!4169) (rule!6271 Rule!7866) (size!17599 Int) (originalCharacters!4838 List!22608)) )
))
(declare-datatypes ((tuple2!21278 0))(
  ( (tuple2!21279 (_1!12168 Token!7614) (_2!12168 BalanceConc!14842)) )
))
(declare-datatypes ((Option!4714 0))(
  ( (None!4713) (Some!4713 (v!27189 tuple2!21278)) )
))
(declare-fun lt!767684 () Option!4714)

(declare-fun e!1294356 () Option!4714)

(assert (=> b!2047718 (= e!1294332 (= lt!767684 e!1294356))))

(declare-fun c!331260 () Bool)

(declare-datatypes ((List!22609 0))(
  ( (Nil!22525) (Cons!22525 (h!27926 Rule!7866) (t!191745 List!22609)) )
))
(declare-fun rules!1563 () List!22609)

(assert (=> b!2047718 (= c!331260 ((_ is Cons!22525) rules!1563))))

(declare-fun b!2047719 () Bool)

(declare-fun e!1294330 () Bool)

(declare-datatypes ((List!22610 0))(
  ( (Nil!22526) (Cons!22526 (h!27927 Token!7614) (t!191746 List!22610)) )
))
(declare-datatypes ((IArray!15087 0))(
  ( (IArray!15088 (innerList!7601 List!22610)) )
))
(declare-datatypes ((Conc!7541 0))(
  ( (Node!7541 (left!17848 Conc!7541) (right!18178 Conc!7541) (csize!15312 Int) (cheight!7752 Int)) (Leaf!11039 (xs!10449 IArray!15087) (csize!15313 Int)) (Empty!7541) )
))
(declare-datatypes ((BalanceConc!14844 0))(
  ( (BalanceConc!14845 (c!331266 Conc!7541)) )
))
(declare-fun acc!382 () BalanceConc!14844)

(declare-fun tp!610098 () Bool)

(declare-fun inv!29884 (Conc!7541) Bool)

(assert (=> b!2047719 (= e!1294330 (and (inv!29884 (c!331266 acc!382)) tp!610098))))

(declare-fun e!1294362 () Bool)

(declare-fun e!1294316 () Bool)

(assert (=> b!2047720 (= e!1294362 (and e!1294316 tp!610122))))

(declare-fun b!2047721 () Bool)

(declare-fun e!1294367 () Bool)

(declare-fun tp!610103 () Bool)

(declare-fun mapRes!9448 () Bool)

(assert (=> b!2047721 (= e!1294367 (and tp!610103 mapRes!9448))))

(declare-fun condMapEmpty!9448 () Bool)

(declare-fun mapDefault!9446 () List!22606)

(assert (=> b!2047721 (= condMapEmpty!9448 (= (arr!3118 (_values!2316 (v!27187 (underlying!4267 (v!27188 (underlying!4268 (cache!2331 cacheUp!562))))))) ((as const (Array (_ BitVec 32) List!22606)) mapDefault!9446)))))

(declare-fun e!1294338 () Bool)

(declare-fun e!1294360 () Bool)

(assert (=> b!2047722 (= e!1294338 (and e!1294360 tp!610089))))

(declare-fun e!1294341 () Bool)

(assert (=> b!2047723 (= e!1294341 (and tp!610084 tp!610123))))

(declare-fun mapIsEmpty!9446 () Bool)

(declare-fun mapRes!9447 () Bool)

(assert (=> mapIsEmpty!9446 mapRes!9447))

(declare-fun b!2047724 () Bool)

(declare-fun e!1294372 () Bool)

(declare-fun e!1294357 () Bool)

(assert (=> b!2047724 (= e!1294372 (not e!1294357))))

(declare-fun res!896588 () Bool)

(assert (=> b!2047724 (=> res!896588 e!1294357)))

(declare-fun lt!767683 () List!22608)

(declare-fun lt!767698 () List!22608)

(declare-fun isSuffix!486 (List!22608 List!22608) Bool)

(assert (=> b!2047724 (= res!896588 (not (isSuffix!486 lt!767683 lt!767698)))))

(declare-fun lt!767690 () List!22608)

(assert (=> b!2047724 (isSuffix!486 lt!767683 lt!767690)))

(declare-datatypes ((Unit!37067 0))(
  ( (Unit!37068) )
))
(declare-fun lt!767682 () Unit!37067)

(declare-fun lt!767686 () List!22608)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!387 (List!22608 List!22608) Unit!37067)

(assert (=> b!2047724 (= lt!767682 (lemmaConcatTwoListThenFSndIsSuffix!387 lt!767686 lt!767683))))

(declare-fun lt!767688 () Option!4714)

(declare-fun b!2047725 () Bool)

(declare-datatypes ((LexerInterface!3644 0))(
  ( (LexerInterfaceExt!3641 (__x!14036 Int)) (Lexer!3642) )
))
(declare-fun thiss!12889 () LexerInterface!3644)

(declare-fun totalInput!418 () BalanceConc!14842)

(declare-fun input!986 () BalanceConc!14842)

(declare-fun maxPrefixZipperSequenceV2!323 (LexerInterface!3644 List!22609 BalanceConc!14842 BalanceConc!14842) Option!4714)

(assert (=> b!2047725 (= lt!767688 (maxPrefixZipperSequenceV2!323 thiss!12889 (t!191745 rules!1563) input!986 totalInput!418))))

(declare-fun lt!767695 () Option!4714)

(declare-fun call!125366 () Option!4714)

(assert (=> b!2047725 (= lt!767695 call!125366)))

(assert (=> b!2047725 (= e!1294356 (ite (and ((_ is None!4713) lt!767695) ((_ is None!4713) lt!767688)) None!4713 (ite ((_ is None!4713) lt!767688) lt!767695 (ite ((_ is None!4713) lt!767695) lt!767688 (ite (>= (size!17599 (_1!12168 (v!27189 lt!767695))) (size!17599 (_1!12168 (v!27189 lt!767688)))) (Some!4713 (v!27189 lt!767695)) lt!767688)))))))

(declare-fun b!2047726 () Bool)

(declare-fun e!1294371 () Bool)

(declare-fun tp!610094 () Bool)

(declare-fun inv!29885 (Conc!7540) Bool)

(assert (=> b!2047726 (= e!1294371 (and (inv!29885 (c!331265 input!986)) tp!610094))))

(declare-fun mapNonEmpty!9446 () Bool)

(declare-fun mapRes!9446 () Bool)

(declare-fun tp!610104 () Bool)

(declare-fun tp!610105 () Bool)

(assert (=> mapNonEmpty!9446 (= mapRes!9446 (and tp!610104 tp!610105))))

(declare-datatypes ((tuple3!2130 0))(
  ( (tuple3!2131 (_1!12169 Regex!5461) (_2!12169 Context!2062) (_3!1529 C!11068)) )
))
(declare-datatypes ((tuple2!21280 0))(
  ( (tuple2!21281 (_1!12170 tuple3!2130) (_2!12170 (InoxSet Context!2062))) )
))
(declare-datatypes ((List!22611 0))(
  ( (Nil!22527) (Cons!22527 (h!27928 tuple2!21280) (t!191747 List!22611)) )
))
(declare-fun mapValue!9446 () List!22611)

(declare-datatypes ((Hashable!1951 0))(
  ( (HashableExt!1950 (__x!14037 Int)) )
))
(declare-datatypes ((array!7022 0))(
  ( (array!7023 (arr!3120 (Array (_ BitVec 32) List!22611)) (size!17600 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4074 0))(
  ( (LongMapFixedSize!4075 (defaultEntry!2402 Int) (mask!6083 (_ BitVec 32)) (extraKeys!2285 (_ BitVec 32)) (zeroValue!2295 List!22611) (minValue!2295 List!22611) (_size!4125 (_ BitVec 32)) (_keys!2334 array!7020) (_values!2317 array!7022) (_vacant!2098 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7973 0))(
  ( (Cell!7974 (v!27190 LongMapFixedSize!4074)) )
))
(declare-datatypes ((MutLongMap!2037 0))(
  ( (LongMap!2037 (underlying!4269 Cell!7973)) (MutLongMapExt!2036 (__x!14038 Int)) )
))
(declare-datatypes ((Cell!7975 0))(
  ( (Cell!7976 (v!27191 MutLongMap!2037)) )
))
(declare-datatypes ((MutableMap!1951 0))(
  ( (MutableMapExt!1950 (__x!14039 Int)) (HashMap!1951 (underlying!4270 Cell!7975) (hashF!3874 Hashable!1951) (_size!4126 (_ BitVec 32)) (defaultValue!2113 Int)) )
))
(declare-datatypes ((CacheDown!1248 0))(
  ( (CacheDown!1249 (cache!2332 MutableMap!1951)) )
))
(declare-datatypes ((tuple3!2132 0))(
  ( (tuple3!2133 (_1!12171 Option!4714) (_2!12171 CacheUp!1246) (_3!1530 CacheDown!1248)) )
))
(declare-fun err!3209 () tuple3!2132)

(declare-fun mapKey!9449 () (_ BitVec 32))

(declare-fun mapRest!9446 () (Array (_ BitVec 32) List!22611))

(assert (=> mapNonEmpty!9446 (= (arr!3120 (_values!2317 (v!27190 (underlying!4269 (v!27191 (underlying!4270 (cache!2332 (_3!1530 err!3209)))))))) (store mapRest!9446 mapKey!9449 mapValue!9446))))

(declare-fun b!2047727 () Bool)

(declare-fun e!1294340 () Bool)

(assert (=> b!2047727 (= e!1294357 e!1294340)))

(declare-fun res!896584 () Bool)

(assert (=> b!2047727 (=> res!896584 e!1294340)))

(declare-fun lt!767685 () tuple3!2132)

(assert (=> b!2047727 (= res!896584 (not ((_ is Some!4713) (_1!12171 lt!767685))))))

(declare-fun cacheDown!575 () CacheDown!1248)

(declare-fun maxPrefixZipperSequenceV2MemOnlyDeriv!22 (LexerInterface!3644 List!22609 BalanceConc!14842 BalanceConc!14842 CacheUp!1246 CacheDown!1248) tuple3!2132)

(assert (=> b!2047727 (= lt!767685 (maxPrefixZipperSequenceV2MemOnlyDeriv!22 thiss!12889 rules!1563 input!986 totalInput!418 cacheUp!562 cacheDown!575))))

(declare-fun e!1294327 () Bool)

(declare-fun tp!610090 () Bool)

(declare-fun tp!610109 () Bool)

(declare-fun e!1294336 () Bool)

(declare-fun array_inv!2239 (array!7020) Bool)

(declare-fun array_inv!2240 (array!7022) Bool)

(assert (=> b!2047728 (= e!1294336 (and tp!610096 tp!610109 tp!610090 (array_inv!2239 (_keys!2334 (v!27190 (underlying!4269 (v!27191 (underlying!4270 (cache!2332 (_3!1530 err!3209)))))))) (array_inv!2240 (_values!2317 (v!27190 (underlying!4269 (v!27191 (underlying!4270 (cache!2332 (_3!1530 err!3209)))))))) e!1294327))))

(declare-fun e!1294342 () Bool)

(declare-fun b!2047729 () Bool)

(declare-fun tp!610100 () Bool)

(declare-fun err!3208 () Option!4714)

(declare-fun inv!29880 (String!26037) Bool)

(declare-fun inv!29886 (TokenValueInjection!7922) Bool)

(assert (=> b!2047729 (= e!1294342 (and tp!610100 (inv!29880 (tag!4523 (rule!6271 (_1!12168 (v!27189 err!3208))))) (inv!29886 (transformation!4033 (rule!6271 (_1!12168 (v!27189 err!3208))))) e!1294355))))

(declare-fun b!2047730 () Bool)

(assert (=> b!2047730 (= e!1294340 true)))

(declare-fun lt!767681 () Bool)

(declare-fun rulesValidInductive!1406 (LexerInterface!3644 List!22609) Bool)

(assert (=> b!2047730 (= lt!767681 (rulesValidInductive!1406 thiss!12889 rules!1563))))

(assert (=> b!2047730 e!1294332))

(declare-fun c!331261 () Bool)

(assert (=> b!2047730 (= c!331261 (and ((_ is Cons!22525) rules!1563) ((_ is Nil!22525) (t!191745 rules!1563))))))

(assert (=> b!2047730 (= lt!767684 (maxPrefixZipperSequenceV2!323 thiss!12889 rules!1563 input!986 totalInput!418))))

(declare-fun e!1294354 () Bool)

(assert (=> b!2047730 e!1294354))

(declare-fun res!896578 () Bool)

(assert (=> b!2047730 (=> (not res!896578) (not e!1294354))))

(declare-fun isPrefix!2003 (List!22608 List!22608) Bool)

(assert (=> b!2047730 (= res!896578 (isPrefix!2003 lt!767683 lt!767683))))

(declare-fun lt!767687 () Unit!37067)

(declare-fun lemmaIsPrefixRefl!1321 (List!22608 List!22608) Unit!37067)

(assert (=> b!2047730 (= lt!767687 (lemmaIsPrefixRefl!1321 lt!767683 lt!767683))))

(declare-fun lt!767699 () tuple3!2132)

(assert (=> b!2047730 (= lt!767699 (maxPrefixZipperSequenceV2MemOnlyDeriv!22 thiss!12889 rules!1563 input!986 totalInput!418 (_2!12171 lt!767685) (_3!1530 lt!767685)))))

(declare-datatypes ((tuple2!21282 0))(
  ( (tuple2!21283 (_1!12172 BalanceConc!14844) (_2!12172 BalanceConc!14842)) )
))
(declare-fun lt!767691 () tuple2!21282)

(declare-fun lexRec!449 (LexerInterface!3644 List!22609 BalanceConc!14842) tuple2!21282)

(assert (=> b!2047730 (= lt!767691 (lexRec!449 thiss!12889 rules!1563 (_2!12168 (v!27189 (_1!12171 lt!767685)))))))

(declare-fun b!2047731 () Bool)

(declare-fun e!1294351 () Bool)

(declare-fun e!1294349 () Bool)

(declare-fun lt!767694 () MutLongMap!2037)

(assert (=> b!2047731 (= e!1294351 (and e!1294349 ((_ is LongMap!2037) lt!767694)))))

(assert (=> b!2047731 (= lt!767694 (v!27191 (underlying!4270 (cache!2332 cacheDown!575))))))

(declare-fun e!1294324 () Bool)

(assert (=> b!2047732 (= e!1294324 (and e!1294351 tp!610106))))

(declare-fun b!2047733 () Bool)

(declare-fun tp!610086 () Bool)

(declare-fun e!1294344 () Bool)

(assert (=> b!2047733 (= e!1294344 (and tp!610086 (inv!29880 (tag!4523 (rule!6271 (_1!12168 (v!27189 (_1!12171 err!3209)))))) (inv!29886 (transformation!4033 (rule!6271 (_1!12168 (v!27189 (_1!12171 err!3209)))))) e!1294343))))

(declare-fun b!2047734 () Bool)

(declare-fun e!1294317 () tuple3!2132)

(assert (=> b!2047734 (= e!1294354 (= lt!767699 e!1294317))))

(declare-fun c!331263 () Bool)

(assert (=> b!2047734 (= c!331263 (and ((_ is Cons!22525) rules!1563) ((_ is Nil!22525) (t!191745 rules!1563))))))

(declare-fun mapIsEmpty!9447 () Bool)

(assert (=> mapIsEmpty!9447 mapRes!9446))

(declare-fun mapNonEmpty!9447 () Bool)

(declare-fun tp!610099 () Bool)

(declare-fun tp!610117 () Bool)

(assert (=> mapNonEmpty!9447 (= mapRes!9448 (and tp!610099 tp!610117))))

(declare-fun mapKey!9447 () (_ BitVec 32))

(declare-fun mapValue!9447 () List!22606)

(declare-fun mapRest!9448 () (Array (_ BitVec 32) List!22606))

(assert (=> mapNonEmpty!9447 (= (arr!3118 (_values!2316 (v!27187 (underlying!4267 (v!27188 (underlying!4268 (cache!2331 cacheUp!562))))))) (store mapRest!9448 mapKey!9447 mapValue!9447))))

(declare-fun b!2047735 () Bool)

(declare-fun e!1294345 () Bool)

(declare-fun e!1294352 () Bool)

(assert (=> b!2047735 (= e!1294345 e!1294352)))

(declare-fun mapIsEmpty!9448 () Bool)

(declare-fun mapRes!9449 () Bool)

(assert (=> mapIsEmpty!9448 mapRes!9449))

(declare-fun b!2047736 () Bool)

(declare-fun res!896587 () Bool)

(assert (=> b!2047736 (=> (not res!896587) (not e!1294372))))

(declare-fun lt!767689 () tuple2!21282)

(declare-fun lt!767697 () tuple2!21282)

(declare-fun list!9216 (BalanceConc!14842) List!22608)

(assert (=> b!2047736 (= res!896587 (= (list!9216 (_2!12172 lt!767689)) (list!9216 (_2!12172 lt!767697))))))

(declare-fun b!2047737 () Bool)

(declare-fun e!1294347 () Bool)

(declare-fun tp!610126 () Bool)

(assert (=> b!2047737 (= e!1294347 (and (inv!29885 (c!331265 (_2!12168 (v!27189 err!3208)))) tp!610126))))

(declare-fun e!1294331 () Bool)

(declare-fun b!2047738 () Bool)

(declare-fun tp!610118 () Bool)

(declare-fun inv!21 (TokenValue!4169) Bool)

(assert (=> b!2047738 (= e!1294331 (and (inv!21 (value!126593 (_1!12168 (v!27189 (_1!12171 err!3209))))) e!1294344 tp!610118))))

(declare-fun b!2047739 () Bool)

(declare-fun res!896583 () Bool)

(assert (=> b!2047739 (=> (not res!896583) (not e!1294372))))

(declare-fun valid!1619 (CacheDown!1248) Bool)

(assert (=> b!2047739 (= res!896583 (valid!1619 cacheDown!575))))

(declare-fun b!2047740 () Bool)

(declare-fun e!1294353 () Bool)

(assert (=> b!2047740 (= e!1294353 e!1294324)))

(declare-fun b!2047741 () Bool)

(declare-fun e!1294335 () Bool)

(assert (=> b!2047741 (= e!1294335 e!1294362)))

(declare-fun b!2047742 () Bool)

(declare-fun e!1294321 () Bool)

(declare-fun e!1294374 () Bool)

(declare-fun inv!29887 (Token!7614) Bool)

(declare-fun inv!29888 (BalanceConc!14842) Bool)

(assert (=> b!2047742 (= e!1294321 (and (inv!29887 (_1!12168 (v!27189 err!3208))) e!1294374 (inv!29888 (_2!12168 (v!27189 err!3208))) e!1294347))))

(declare-fun b!2047743 () Bool)

(declare-fun res!896590 () Bool)

(assert (=> b!2047743 (=> (not res!896590) (not e!1294372))))

(declare-fun valid!1620 (CacheUp!1246) Bool)

(assert (=> b!2047743 (= res!896590 (valid!1620 cacheUp!562))))

(declare-fun mapIsEmpty!9449 () Bool)

(assert (=> mapIsEmpty!9449 mapRes!9448))

(declare-fun b!2047744 () Bool)

(declare-fun e!1294329 () Bool)

(assert (=> b!2047744 (= e!1294363 e!1294329)))

(declare-fun mapNonEmpty!9448 () Bool)

(declare-fun tp!610110 () Bool)

(declare-fun tp!610124 () Bool)

(assert (=> mapNonEmpty!9448 (= mapRes!9447 (and tp!610110 tp!610124))))

(declare-fun mapRest!9447 () (Array (_ BitVec 32) List!22611))

(declare-fun mapValue!9449 () List!22611)

(declare-fun mapKey!9446 () (_ BitVec 32))

(assert (=> mapNonEmpty!9448 (= (arr!3120 (_values!2317 (v!27190 (underlying!4269 (v!27191 (underlying!4270 (cache!2332 cacheDown!575))))))) (store mapRest!9447 mapKey!9446 mapValue!9449))))

(declare-fun b!2047745 () Bool)

(declare-fun e!1294364 () Bool)

(assert (=> b!2047745 (= e!1294333 e!1294364)))

(declare-fun b!2047746 () Bool)

(declare-fun e!1294320 () Bool)

(assert (=> b!2047746 (= e!1294320 e!1294338)))

(declare-fun b!2047747 () Bool)

(declare-fun call!125367 () tuple3!2132)

(assert (=> b!2047747 (= e!1294317 call!125367)))

(declare-fun b!2047748 () Bool)

(declare-fun e!1294325 () Bool)

(declare-fun tp!610113 () Bool)

(assert (=> b!2047748 (= e!1294325 (and (inv!29885 (c!331265 totalInput!418)) tp!610113))))

(declare-fun tp!610101 () Bool)

(declare-fun tp!610102 () Bool)

(declare-fun e!1294319 () Bool)

(declare-fun array_inv!2241 (array!7018) Bool)

(assert (=> b!2047749 (= e!1294319 (and tp!610111 tp!610102 tp!610101 (array_inv!2239 (_keys!2333 (v!27187 (underlying!4267 (v!27188 (underlying!4268 (cache!2331 cacheUp!562))))))) (array_inv!2241 (_values!2316 (v!27187 (underlying!4267 (v!27188 (underlying!4268 (cache!2331 cacheUp!562))))))) e!1294367))))

(declare-fun b!2047750 () Bool)

(declare-fun e!1294314 () Bool)

(declare-fun e!1294334 () Bool)

(assert (=> b!2047750 (= e!1294314 e!1294334)))

(declare-fun b!2047751 () Bool)

(assert (=> b!2047751 true))

(assert (=> b!2047751 e!1294321))

(assert (=> b!2047751 (= e!1294356 err!3208)))

(declare-fun b!2047752 () Bool)

(declare-fun e!1294346 () Bool)

(declare-fun tp!610115 () Bool)

(assert (=> b!2047752 (= e!1294346 (and tp!610115 mapRes!9447))))

(declare-fun condMapEmpty!9447 () Bool)

(declare-fun mapDefault!9447 () List!22611)

(assert (=> b!2047752 (= condMapEmpty!9447 (= (arr!3120 (_values!2317 (v!27190 (underlying!4269 (v!27191 (underlying!4270 (cache!2332 cacheDown!575))))))) ((as const (Array (_ BitVec 32) List!22611)) mapDefault!9447)))))

(declare-fun b!2047753 () Bool)

(assert (=> b!2047753 (= e!1294332 (= lt!767684 call!125366))))

(declare-fun b!2047754 () Bool)

(declare-fun tp!610085 () Bool)

(assert (=> b!2047754 (= e!1294374 (and (inv!21 (value!126593 (_1!12168 (v!27189 err!3208)))) e!1294342 tp!610085))))

(declare-fun tp!610116 () Bool)

(declare-fun tp!610112 () Bool)

(assert (=> b!2047755 (= e!1294334 (and tp!610121 tp!610112 tp!610116 (array_inv!2239 (_keys!2334 (v!27190 (underlying!4269 (v!27191 (underlying!4270 (cache!2332 cacheDown!575))))))) (array_inv!2240 (_values!2317 (v!27190 (underlying!4269 (v!27191 (underlying!4270 (cache!2332 cacheDown!575))))))) e!1294346))))

(declare-fun b!2047756 () Bool)

(declare-fun e!1294361 () Bool)

(declare-fun e!1294326 () Bool)

(assert (=> b!2047756 (= e!1294361 e!1294326)))

(declare-fun res!896580 () Bool)

(assert (=> b!2047756 (=> (not res!896580) (not e!1294326))))

(assert (=> b!2047756 (= res!896580 (= lt!767698 lt!767690))))

(declare-fun ++!6112 (List!22608 List!22608) List!22608)

(assert (=> b!2047756 (= lt!767690 (++!6112 lt!767686 lt!767683))))

(assert (=> b!2047756 (= lt!767698 (list!9216 totalInput!418))))

(assert (=> b!2047756 (= lt!767683 (list!9216 input!986))))

(declare-fun treated!60 () BalanceConc!14842)

(assert (=> b!2047756 (= lt!767686 (list!9216 treated!60))))

(declare-fun bm!125361 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!12 (LexerInterface!3644 Rule!7866 BalanceConc!14842 BalanceConc!14842 CacheUp!1246 CacheDown!1248) tuple3!2132)

(assert (=> bm!125361 (= call!125367 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!12 thiss!12889 (h!27926 rules!1563) input!986 totalInput!418 (_2!12171 lt!767685) (_3!1530 lt!767685)))))

(declare-fun b!2047757 () Bool)

(declare-fun res!896581 () Bool)

(assert (=> b!2047757 (=> (not res!896581) (not e!1294361))))

(declare-fun isEmpty!13994 (List!22609) Bool)

(assert (=> b!2047757 (= res!896581 (not (isEmpty!13994 rules!1563)))))

(declare-fun b!2047758 () Bool)

(assert (=> b!2047758 (= e!1294352 e!1294336)))

(declare-fun b!2047759 () Bool)

(declare-fun e!1294323 () Bool)

(assert (=> b!2047759 (= e!1294323 e!1294372)))

(declare-fun res!896585 () Bool)

(assert (=> b!2047759 (=> (not res!896585) (not e!1294372))))

(declare-fun list!9217 (BalanceConc!14844) List!22610)

(declare-fun ++!6113 (BalanceConc!14844 BalanceConc!14844) BalanceConc!14844)

(assert (=> b!2047759 (= res!896585 (= (list!9217 (_1!12172 lt!767689)) (list!9217 (++!6113 acc!382 (_1!12172 lt!767697)))))))

(assert (=> b!2047759 (= lt!767697 (lexRec!449 thiss!12889 rules!1563 input!986))))

(assert (=> b!2047759 (= lt!767689 (lexRec!449 thiss!12889 rules!1563 totalInput!418))))

(declare-fun tp!610107 () Bool)

(declare-fun tp!610092 () Bool)

(declare-fun e!1294370 () Bool)

(assert (=> b!2047760 (= e!1294329 (and tp!610093 tp!610107 tp!610092 (array_inv!2239 (_keys!2333 (v!27187 (underlying!4267 (v!27188 (underlying!4268 (cache!2331 (_2!12171 err!3209)))))))) (array_inv!2241 (_values!2316 (v!27187 (underlying!4267 (v!27188 (underlying!4268 (cache!2331 (_2!12171 err!3209)))))))) e!1294370))))

(declare-fun b!2047761 () Bool)

(declare-fun tp!610095 () Bool)

(assert (=> b!2047761 (= e!1294327 (and tp!610095 mapRes!9446))))

(declare-fun condMapEmpty!9446 () Bool)

(declare-fun mapDefault!9449 () List!22611)

(assert (=> b!2047761 (= condMapEmpty!9446 (= (arr!3120 (_values!2317 (v!27190 (underlying!4269 (v!27191 (underlying!4270 (cache!2332 (_3!1530 err!3209)))))))) ((as const (Array (_ BitVec 32) List!22611)) mapDefault!9449)))))

(declare-fun bm!125362 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2!124 (LexerInterface!3644 Rule!7866 BalanceConc!14842 BalanceConc!14842) Option!4714)

(assert (=> bm!125362 (= call!125366 (maxPrefixOneRuleZipperSequenceV2!124 thiss!12889 (h!27926 rules!1563) input!986 totalInput!418))))

(declare-fun mapNonEmpty!9449 () Bool)

(declare-fun tp!610108 () Bool)

(declare-fun tp!610087 () Bool)

(assert (=> mapNonEmpty!9449 (= mapRes!9449 (and tp!610108 tp!610087))))

(declare-fun mapValue!9448 () List!22606)

(declare-fun mapKey!9448 () (_ BitVec 32))

(declare-fun mapRest!9449 () (Array (_ BitVec 32) List!22606))

(assert (=> mapNonEmpty!9449 (= (arr!3118 (_values!2316 (v!27187 (underlying!4267 (v!27188 (underlying!4268 (cache!2331 (_2!12171 err!3209)))))))) (store mapRest!9449 mapKey!9448 mapValue!9448))))

(declare-fun tp!610125 () Bool)

(declare-fun e!1294315 () Bool)

(declare-fun b!2047763 () Bool)

(assert (=> b!2047763 (= e!1294315 (and tp!610125 (inv!29880 (tag!4523 (h!27926 rules!1563))) (inv!29886 (transformation!4033 (h!27926 rules!1563))) e!1294341))))

(declare-fun b!2047764 () Bool)

(assert (=> b!2047764 true))

(declare-fun e!1294359 () Bool)

(declare-fun inv!29889 (CacheUp!1246) Bool)

(declare-fun inv!29890 (CacheDown!1248) Bool)

(assert (=> b!2047764 (and e!1294359 (inv!29889 (_2!12171 err!3209)) e!1294320 (inv!29890 (_3!1530 err!3209)) e!1294335)))

(declare-fun e!1294373 () tuple3!2132)

(assert (=> b!2047764 (= e!1294373 err!3209)))

(declare-fun lt!767700 () tuple3!2132)

(declare-fun b!2047765 () Bool)

(declare-fun lt!767696 () tuple3!2132)

(assert (=> b!2047765 (= lt!767700 (maxPrefixZipperSequenceV2MemOnlyDeriv!22 thiss!12889 (t!191745 rules!1563) input!986 totalInput!418 (_2!12171 lt!767696) (_3!1530 lt!767696)))))

(assert (=> b!2047765 (= lt!767696 call!125367)))

(assert (=> b!2047765 (= e!1294373 (tuple3!2133 (ite (and ((_ is None!4713) (_1!12171 lt!767696)) ((_ is None!4713) (_1!12171 lt!767700))) None!4713 (ite ((_ is None!4713) (_1!12171 lt!767700)) (_1!12171 lt!767696) (ite ((_ is None!4713) (_1!12171 lt!767696)) (_1!12171 lt!767700) (ite (>= (size!17599 (_1!12168 (v!27189 (_1!12171 lt!767696)))) (size!17599 (_1!12168 (v!27189 (_1!12171 lt!767700))))) (Some!4713 (v!27189 (_1!12171 lt!767696))) (Some!4713 (v!27189 (_1!12171 lt!767700))))))) (_2!12171 lt!767700) (_3!1530 lt!767700)))))

(declare-fun b!2047762 () Bool)

(declare-fun e!1294376 () Bool)

(declare-fun tp!610119 () Bool)

(assert (=> b!2047762 (= e!1294376 (and (inv!29885 (c!331265 (_2!12168 (v!27189 (_1!12171 err!3209))))) tp!610119))))

(declare-fun res!896586 () Bool)

(assert (=> start!201632 (=> (not res!896586) (not e!1294361))))

(assert (=> start!201632 (= res!896586 ((_ is Lexer!3642) thiss!12889))))

(assert (=> start!201632 e!1294361))

(assert (=> start!201632 (and (inv!29890 cacheDown!575) e!1294353)))

(assert (=> start!201632 true))

(declare-fun e!1294358 () Bool)

(assert (=> start!201632 (and (inv!29889 cacheUp!562) e!1294358)))

(declare-fun e!1294337 () Bool)

(assert (=> start!201632 e!1294337))

(assert (=> start!201632 (and (inv!29888 totalInput!418) e!1294325)))

(declare-fun e!1294339 () Bool)

(assert (=> start!201632 (and (inv!29888 treated!60) e!1294339)))

(assert (=> start!201632 (and (inv!29888 input!986) e!1294371)))

(declare-fun inv!29891 (BalanceConc!14844) Bool)

(assert (=> start!201632 (and (inv!29891 acc!382) e!1294330)))

(declare-fun b!2047766 () Bool)

(assert (=> b!2047766 (= e!1294359 (and (inv!29887 (_1!12168 (v!27189 (_1!12171 err!3209)))) e!1294331 (inv!29888 (_2!12168 (v!27189 (_1!12171 err!3209)))) e!1294376))))

(declare-fun b!2047767 () Bool)

(declare-fun lt!767692 () MutLongMap!2037)

(assert (=> b!2047767 (= e!1294316 (and e!1294345 ((_ is LongMap!2037) lt!767692)))))

(assert (=> b!2047767 (= lt!767692 (v!27191 (underlying!4270 (cache!2332 (_3!1530 err!3209)))))))

(declare-fun b!2047768 () Bool)

(declare-fun tp!610128 () Bool)

(assert (=> b!2047768 (= e!1294337 (and e!1294315 tp!610128))))

(declare-fun e!1294313 () Bool)

(assert (=> b!2047769 (= e!1294313 (and e!1294366 tp!610114))))

(declare-fun b!2047770 () Bool)

(declare-fun tp!610120 () Bool)

(assert (=> b!2047770 (= e!1294370 (and tp!610120 mapRes!9449))))

(declare-fun condMapEmpty!9449 () Bool)

(declare-fun mapDefault!9448 () List!22606)

(assert (=> b!2047770 (= condMapEmpty!9449 (= (arr!3118 (_values!2316 (v!27187 (underlying!4267 (v!27188 (underlying!4268 (cache!2331 (_2!12171 err!3209)))))))) ((as const (Array (_ BitVec 32) List!22606)) mapDefault!9448)))))

(declare-fun b!2047771 () Bool)

(assert (=> b!2047771 (= e!1294364 e!1294319)))

(declare-fun b!2047772 () Bool)

(declare-fun lt!767693 () MutLongMap!2036)

(assert (=> b!2047772 (= e!1294360 (and e!1294318 ((_ is LongMap!2036) lt!767693)))))

(assert (=> b!2047772 (= lt!767693 (v!27188 (underlying!4268 (cache!2331 (_2!12171 err!3209)))))))

(declare-fun b!2047773 () Bool)

(declare-fun res!896582 () Bool)

(assert (=> b!2047773 (=> (not res!896582) (not e!1294323))))

(declare-fun lt!767701 () tuple2!21282)

(declare-fun isEmpty!13995 (List!22608) Bool)

(assert (=> b!2047773 (= res!896582 (isEmpty!13995 (list!9216 (_2!12172 lt!767701))))))

(declare-fun b!2047774 () Bool)

(declare-fun tp!610088 () Bool)

(assert (=> b!2047774 (= e!1294339 (and (inv!29885 (c!331265 treated!60)) tp!610088))))

(declare-fun b!2047775 () Bool)

(declare-fun res!896589 () Bool)

(assert (=> b!2047775 (=> (not res!896589) (not e!1294361))))

(declare-fun rulesInvariant!3239 (LexerInterface!3644 List!22609) Bool)

(assert (=> b!2047775 (= res!896589 (rulesInvariant!3239 thiss!12889 rules!1563))))

(declare-fun b!2047776 () Bool)

(assert (=> b!2047776 (= e!1294349 e!1294314)))

(declare-fun b!2047777 () Bool)

(assert (=> b!2047777 (= e!1294326 e!1294323)))

(declare-fun res!896579 () Bool)

(assert (=> b!2047777 (=> (not res!896579) (not e!1294323))))

(assert (=> b!2047777 (= res!896579 (= (list!9217 (_1!12172 lt!767701)) (list!9217 acc!382)))))

(assert (=> b!2047777 (= lt!767701 (lexRec!449 thiss!12889 rules!1563 treated!60))))

(declare-fun b!2047778 () Bool)

(assert (=> b!2047778 (= e!1294317 e!1294373)))

(declare-fun c!331262 () Bool)

(assert (=> b!2047778 (= c!331262 ((_ is Cons!22525) rules!1563))))

(declare-fun b!2047779 () Bool)

(assert (=> b!2047779 (= e!1294358 e!1294313)))

(assert (= (and start!201632 res!896586) b!2047757))

(assert (= (and b!2047757 res!896581) b!2047775))

(assert (= (and b!2047775 res!896589) b!2047756))

(assert (= (and b!2047756 res!896580) b!2047777))

(assert (= (and b!2047777 res!896579) b!2047773))

(assert (= (and b!2047773 res!896582) b!2047759))

(assert (= (and b!2047759 res!896585) b!2047736))

(assert (= (and b!2047736 res!896587) b!2047743))

(assert (= (and b!2047743 res!896590) b!2047739))

(assert (= (and b!2047739 res!896583) b!2047724))

(assert (= (and b!2047724 (not res!896588)) b!2047727))

(assert (= (and b!2047727 (not res!896584)) b!2047730))

(assert (= (and b!2047730 res!896578) b!2047734))

(assert (= (and b!2047734 c!331263) b!2047747))

(assert (= (and b!2047734 (not c!331263)) b!2047778))

(assert (= (and b!2047778 c!331262) b!2047765))

(assert (= (and b!2047778 (not c!331262)) b!2047764))

(assert (= b!2047733 b!2047714))

(assert (= b!2047738 b!2047733))

(assert (= b!2047766 b!2047738))

(assert (= b!2047766 b!2047762))

(assert (= (and b!2047764 ((_ is Some!4713) (_1!12171 err!3209))) b!2047766))

(assert (= (and b!2047770 condMapEmpty!9449) mapIsEmpty!9448))

(assert (= (and b!2047770 (not condMapEmpty!9449)) mapNonEmpty!9449))

(assert (= b!2047760 b!2047770))

(assert (= b!2047744 b!2047760))

(assert (= b!2047716 b!2047744))

(assert (= (and b!2047772 ((_ is LongMap!2036) (v!27188 (underlying!4268 (cache!2331 (_2!12171 err!3209)))))) b!2047716))

(assert (= b!2047722 b!2047772))

(assert (= (and b!2047746 ((_ is HashMap!1950) (cache!2331 (_2!12171 err!3209)))) b!2047722))

(assert (= b!2047764 b!2047746))

(assert (= (and b!2047761 condMapEmpty!9446) mapIsEmpty!9447))

(assert (= (and b!2047761 (not condMapEmpty!9446)) mapNonEmpty!9446))

(assert (= b!2047728 b!2047761))

(assert (= b!2047758 b!2047728))

(assert (= b!2047735 b!2047758))

(assert (= (and b!2047767 ((_ is LongMap!2037) (v!27191 (underlying!4270 (cache!2332 (_3!1530 err!3209)))))) b!2047735))

(assert (= b!2047720 b!2047767))

(assert (= (and b!2047741 ((_ is HashMap!1951) (cache!2332 (_3!1530 err!3209)))) b!2047720))

(assert (= b!2047764 b!2047741))

(assert (= (or b!2047747 b!2047765) bm!125361))

(assert (= (and b!2047730 c!331261) b!2047753))

(assert (= (and b!2047730 (not c!331261)) b!2047718))

(assert (= (and b!2047718 c!331260) b!2047725))

(assert (= (and b!2047718 (not c!331260)) b!2047751))

(assert (= b!2047729 b!2047717))

(assert (= b!2047754 b!2047729))

(assert (= b!2047742 b!2047754))

(assert (= b!2047742 b!2047737))

(assert (= (and b!2047751 ((_ is Some!4713) err!3208)) b!2047742))

(assert (= (or b!2047753 b!2047725) bm!125362))

(assert (= (and b!2047752 condMapEmpty!9447) mapIsEmpty!9446))

(assert (= (and b!2047752 (not condMapEmpty!9447)) mapNonEmpty!9448))

(assert (= b!2047755 b!2047752))

(assert (= b!2047750 b!2047755))

(assert (= b!2047776 b!2047750))

(assert (= (and b!2047731 ((_ is LongMap!2037) (v!27191 (underlying!4270 (cache!2332 cacheDown!575))))) b!2047776))

(assert (= b!2047732 b!2047731))

(assert (= (and b!2047740 ((_ is HashMap!1951) (cache!2332 cacheDown!575))) b!2047732))

(assert (= start!201632 b!2047740))

(assert (= (and b!2047721 condMapEmpty!9448) mapIsEmpty!9449))

(assert (= (and b!2047721 (not condMapEmpty!9448)) mapNonEmpty!9447))

(assert (= b!2047749 b!2047721))

(assert (= b!2047771 b!2047749))

(assert (= b!2047745 b!2047771))

(assert (= (and b!2047715 ((_ is LongMap!2036) (v!27188 (underlying!4268 (cache!2331 cacheUp!562))))) b!2047745))

(assert (= b!2047769 b!2047715))

(assert (= (and b!2047779 ((_ is HashMap!1950) (cache!2331 cacheUp!562))) b!2047769))

(assert (= start!201632 b!2047779))

(assert (= b!2047763 b!2047723))

(assert (= b!2047768 b!2047763))

(assert (= (and start!201632 ((_ is Cons!22525) rules!1563)) b!2047768))

(assert (= start!201632 b!2047748))

(assert (= start!201632 b!2047774))

(assert (= start!201632 b!2047726))

(assert (= start!201632 b!2047719))

(declare-fun m!2491237 () Bool)

(assert (=> start!201632 m!2491237))

(declare-fun m!2491239 () Bool)

(assert (=> start!201632 m!2491239))

(declare-fun m!2491241 () Bool)

(assert (=> start!201632 m!2491241))

(declare-fun m!2491243 () Bool)

(assert (=> start!201632 m!2491243))

(declare-fun m!2491245 () Bool)

(assert (=> start!201632 m!2491245))

(declare-fun m!2491247 () Bool)

(assert (=> start!201632 m!2491247))

(declare-fun m!2491249 () Bool)

(assert (=> b!2047733 m!2491249))

(declare-fun m!2491251 () Bool)

(assert (=> b!2047733 m!2491251))

(declare-fun m!2491253 () Bool)

(assert (=> b!2047763 m!2491253))

(declare-fun m!2491255 () Bool)

(assert (=> b!2047763 m!2491255))

(declare-fun m!2491257 () Bool)

(assert (=> mapNonEmpty!9448 m!2491257))

(declare-fun m!2491259 () Bool)

(assert (=> b!2047749 m!2491259))

(declare-fun m!2491261 () Bool)

(assert (=> b!2047749 m!2491261))

(declare-fun m!2491263 () Bool)

(assert (=> b!2047765 m!2491263))

(declare-fun m!2491265 () Bool)

(assert (=> b!2047726 m!2491265))

(declare-fun m!2491267 () Bool)

(assert (=> b!2047719 m!2491267))

(declare-fun m!2491269 () Bool)

(assert (=> mapNonEmpty!9449 m!2491269))

(declare-fun m!2491271 () Bool)

(assert (=> b!2047766 m!2491271))

(declare-fun m!2491273 () Bool)

(assert (=> b!2047766 m!2491273))

(declare-fun m!2491275 () Bool)

(assert (=> b!2047777 m!2491275))

(declare-fun m!2491277 () Bool)

(assert (=> b!2047777 m!2491277))

(declare-fun m!2491279 () Bool)

(assert (=> b!2047777 m!2491279))

(declare-fun m!2491281 () Bool)

(assert (=> b!2047730 m!2491281))

(declare-fun m!2491283 () Bool)

(assert (=> b!2047730 m!2491283))

(declare-fun m!2491285 () Bool)

(assert (=> b!2047730 m!2491285))

(declare-fun m!2491287 () Bool)

(assert (=> b!2047730 m!2491287))

(declare-fun m!2491289 () Bool)

(assert (=> b!2047730 m!2491289))

(declare-fun m!2491291 () Bool)

(assert (=> b!2047730 m!2491291))

(declare-fun m!2491293 () Bool)

(assert (=> b!2047748 m!2491293))

(declare-fun m!2491295 () Bool)

(assert (=> b!2047724 m!2491295))

(declare-fun m!2491297 () Bool)

(assert (=> b!2047724 m!2491297))

(declare-fun m!2491299 () Bool)

(assert (=> b!2047724 m!2491299))

(declare-fun m!2491301 () Bool)

(assert (=> b!2047755 m!2491301))

(declare-fun m!2491303 () Bool)

(assert (=> b!2047755 m!2491303))

(declare-fun m!2491305 () Bool)

(assert (=> bm!125361 m!2491305))

(declare-fun m!2491307 () Bool)

(assert (=> b!2047737 m!2491307))

(declare-fun m!2491309 () Bool)

(assert (=> b!2047775 m!2491309))

(declare-fun m!2491311 () Bool)

(assert (=> b!2047736 m!2491311))

(declare-fun m!2491313 () Bool)

(assert (=> b!2047736 m!2491313))

(declare-fun m!2491315 () Bool)

(assert (=> b!2047759 m!2491315))

(declare-fun m!2491317 () Bool)

(assert (=> b!2047759 m!2491317))

(assert (=> b!2047759 m!2491315))

(declare-fun m!2491319 () Bool)

(assert (=> b!2047759 m!2491319))

(declare-fun m!2491321 () Bool)

(assert (=> b!2047759 m!2491321))

(declare-fun m!2491323 () Bool)

(assert (=> b!2047759 m!2491323))

(declare-fun m!2491325 () Bool)

(assert (=> b!2047738 m!2491325))

(declare-fun m!2491327 () Bool)

(assert (=> b!2047739 m!2491327))

(declare-fun m!2491329 () Bool)

(assert (=> mapNonEmpty!9446 m!2491329))

(declare-fun m!2491331 () Bool)

(assert (=> b!2047729 m!2491331))

(declare-fun m!2491333 () Bool)

(assert (=> b!2047729 m!2491333))

(declare-fun m!2491335 () Bool)

(assert (=> b!2047742 m!2491335))

(declare-fun m!2491337 () Bool)

(assert (=> b!2047742 m!2491337))

(declare-fun m!2491339 () Bool)

(assert (=> b!2047728 m!2491339))

(declare-fun m!2491341 () Bool)

(assert (=> b!2047728 m!2491341))

(declare-fun m!2491343 () Bool)

(assert (=> b!2047756 m!2491343))

(declare-fun m!2491345 () Bool)

(assert (=> b!2047756 m!2491345))

(declare-fun m!2491347 () Bool)

(assert (=> b!2047756 m!2491347))

(declare-fun m!2491349 () Bool)

(assert (=> b!2047756 m!2491349))

(declare-fun m!2491351 () Bool)

(assert (=> mapNonEmpty!9447 m!2491351))

(declare-fun m!2491353 () Bool)

(assert (=> b!2047757 m!2491353))

(declare-fun m!2491355 () Bool)

(assert (=> b!2047764 m!2491355))

(declare-fun m!2491357 () Bool)

(assert (=> b!2047764 m!2491357))

(declare-fun m!2491359 () Bool)

(assert (=> b!2047743 m!2491359))

(declare-fun m!2491361 () Bool)

(assert (=> b!2047725 m!2491361))

(declare-fun m!2491363 () Bool)

(assert (=> bm!125362 m!2491363))

(declare-fun m!2491365 () Bool)

(assert (=> b!2047754 m!2491365))

(declare-fun m!2491367 () Bool)

(assert (=> b!2047773 m!2491367))

(assert (=> b!2047773 m!2491367))

(declare-fun m!2491369 () Bool)

(assert (=> b!2047773 m!2491369))

(declare-fun m!2491371 () Bool)

(assert (=> b!2047727 m!2491371))

(declare-fun m!2491373 () Bool)

(assert (=> b!2047762 m!2491373))

(declare-fun m!2491375 () Bool)

(assert (=> b!2047760 m!2491375))

(declare-fun m!2491377 () Bool)

(assert (=> b!2047760 m!2491377))

(declare-fun m!2491379 () Bool)

(assert (=> b!2047774 m!2491379))

(check-sat b_and!163425 (not b!2047754) (not b!2047773) (not b!2047752) (not b!2047764) (not mapNonEmpty!9446) b_and!163405 (not start!201632) b_and!163411 (not mapNonEmpty!9447) (not b_next!58169) (not b!2047728) (not b!2047761) (not b!2047721) (not b!2047757) (not b!2047770) b_and!163417 (not b!2047762) (not b!2047742) (not b!2047738) (not b!2047755) (not b!2047777) (not b!2047719) b_and!163403 (not b!2047724) (not b!2047730) (not b_next!58167) (not b_next!58171) (not bm!125362) (not b_next!58175) (not b!2047736) (not b_next!58163) (not mapNonEmpty!9448) (not b!2047765) b_and!163413 b_and!163421 (not b_next!58149) (not b!2047739) (not b!2047766) (not b!2047726) (not b_next!58155) b_and!163401 (not b_next!58165) (not b!2047760) b_and!163409 b_and!163423 (not b!2047729) (not b_next!58153) (not b!2047768) (not b!2047733) (not bm!125361) b_and!163415 (not b_next!58173) (not b!2047756) b_and!163419 (not b!2047749) (not b_next!58161) (not b!2047737) (not b!2047725) (not b!2047748) b_and!163427 (not b!2047775) (not b!2047759) (not b!2047743) (not b!2047774) (not b_next!58159) (not b!2047763) (not mapNonEmpty!9449) b_and!163407 (not b_next!58151) (not b_next!58157) (not b!2047727))
(check-sat (not b_next!58169) b_and!163417 b_and!163425 b_and!163403 (not b_next!58167) (not b_next!58163) (not b_next!58149) b_and!163405 b_and!163423 (not b_next!58153) (not b_next!58161) b_and!163427 b_and!163411 (not b_next!58159) (not b_next!58171) (not b_next!58175) b_and!163413 b_and!163421 (not b_next!58155) b_and!163401 (not b_next!58165) b_and!163409 b_and!163415 b_and!163419 (not b_next!58173) b_and!163407 (not b_next!58151) (not b_next!58157))
