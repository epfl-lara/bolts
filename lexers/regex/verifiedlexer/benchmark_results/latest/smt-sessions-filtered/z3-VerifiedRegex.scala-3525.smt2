; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!203522 () Bool)

(assert start!203522)

(declare-fun b!2076878 () Bool)

(declare-fun b_free!59309 () Bool)

(declare-fun b_next!60013 () Bool)

(assert (=> b!2076878 (= b_free!59309 (not b_next!60013))))

(declare-fun tp!624840 () Bool)

(declare-fun b_and!166767 () Bool)

(assert (=> b!2076878 (= tp!624840 b_and!166767)))

(declare-fun b!2076871 () Bool)

(declare-fun b_free!59311 () Bool)

(declare-fun b_next!60015 () Bool)

(assert (=> b!2076871 (= b_free!59311 (not b_next!60015))))

(declare-fun tp!624850 () Bool)

(declare-fun b_and!166769 () Bool)

(assert (=> b!2076871 (= tp!624850 b_and!166769)))

(declare-fun b_free!59313 () Bool)

(declare-fun b_next!60017 () Bool)

(assert (=> b!2076871 (= b_free!59313 (not b_next!60017))))

(declare-fun tp!624835 () Bool)

(declare-fun b_and!166771 () Bool)

(assert (=> b!2076871 (= tp!624835 b_and!166771)))

(declare-fun b!2076882 () Bool)

(declare-fun b_free!59315 () Bool)

(declare-fun b_next!60019 () Bool)

(assert (=> b!2076882 (= b_free!59315 (not b_next!60019))))

(declare-fun tp!624849 () Bool)

(declare-fun b_and!166773 () Bool)

(assert (=> b!2076882 (= tp!624849 b_and!166773)))

(declare-fun b!2076870 () Bool)

(declare-fun b_free!59317 () Bool)

(declare-fun b_next!60021 () Bool)

(assert (=> b!2076870 (= b_free!59317 (not b_next!60021))))

(declare-fun tp!624847 () Bool)

(declare-fun b_and!166775 () Bool)

(assert (=> b!2076870 (= tp!624847 b_and!166775)))

(declare-fun b!2076869 () Bool)

(declare-fun b_free!59319 () Bool)

(declare-fun b_next!60023 () Bool)

(assert (=> b!2076869 (= b_free!59319 (not b_next!60023))))

(declare-fun tp!624846 () Bool)

(declare-fun b_and!166777 () Bool)

(assert (=> b!2076869 (= tp!624846 b_and!166777)))

(declare-fun b!2076857 () Bool)

(declare-fun e!1317367 () Bool)

(declare-fun e!1317360 () Bool)

(assert (=> b!2076857 (= e!1317367 e!1317360)))

(declare-fun b!2076858 () Bool)

(declare-fun e!1317353 () Bool)

(declare-fun tp!624843 () Bool)

(declare-fun mapRes!10241 () Bool)

(assert (=> b!2076858 (= e!1317353 (and tp!624843 mapRes!10241))))

(declare-fun condMapEmpty!10240 () Bool)

(declare-datatypes ((C!11180 0))(
  ( (C!11181 (val!6576 Int)) )
))
(declare-datatypes ((Regex!5517 0))(
  ( (ElementMatch!5517 (c!334904 C!11180)) (Concat!9742 (regOne!11546 Regex!5517) (regTwo!11546 Regex!5517)) (EmptyExpr!5517) (Star!5517 (reg!5846 Regex!5517)) (EmptyLang!5517) (Union!5517 (regOne!11547 Regex!5517) (regTwo!11547 Regex!5517)) )
))
(declare-datatypes ((List!23001 0))(
  ( (Nil!22917) (Cons!22917 (h!28318 Regex!5517) (t!193560 List!23001)) )
))
(declare-datatypes ((Context!2174 0))(
  ( (Context!2175 (exprs!1587 List!23001)) )
))
(declare-datatypes ((tuple2!21990 0))(
  ( (tuple2!21991 (_1!12649 Context!2174) (_2!12649 C!11180)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!21992 0))(
  ( (tuple2!21993 (_1!12650 tuple2!21990) (_2!12650 (InoxSet Context!2174))) )
))
(declare-datatypes ((List!23002 0))(
  ( (Nil!22918) (Cons!22918 (h!28319 tuple2!21992) (t!193561 List!23002)) )
))
(declare-datatypes ((array!7394 0))(
  ( (array!7395 (arr!3285 (Array (_ BitVec 32) List!23002)) (size!17883 (_ BitVec 32))) )
))
(declare-datatypes ((array!7396 0))(
  ( (array!7397 (arr!3286 (Array (_ BitVec 32) (_ BitVec 64))) (size!17884 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4294 0))(
  ( (LongMapFixedSize!4295 (defaultEntry!2512 Int) (mask!6221 (_ BitVec 32)) (extraKeys!2395 (_ BitVec 32)) (zeroValue!2405 List!23002) (minValue!2405 List!23002) (_size!4345 (_ BitVec 32)) (_keys!2444 array!7396) (_values!2427 array!7394) (_vacant!2208 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8413 0))(
  ( (Cell!8414 (v!27523 LongMapFixedSize!4294)) )
))
(declare-datatypes ((MutLongMap!2147 0))(
  ( (LongMap!2147 (underlying!4489 Cell!8413)) (MutLongMapExt!2146 (__x!14472 Int)) )
))
(declare-datatypes ((Hashable!2061 0))(
  ( (HashableExt!2060 (__x!14473 Int)) )
))
(declare-datatypes ((Cell!8415 0))(
  ( (Cell!8416 (v!27524 MutLongMap!2147)) )
))
(declare-datatypes ((MutableMap!2061 0))(
  ( (MutableMapExt!2060 (__x!14474 Int)) (HashMap!2061 (underlying!4490 Cell!8415) (hashF!3984 Hashable!2061) (_size!4346 (_ BitVec 32)) (defaultValue!2223 Int)) )
))
(declare-datatypes ((CacheUp!1356 0))(
  ( (CacheUp!1357 (cache!2442 MutableMap!2061)) )
))
(declare-fun cacheUp!562 () CacheUp!1356)

(declare-fun mapDefault!10241 () List!23002)

(assert (=> b!2076858 (= condMapEmpty!10240 (= (arr!3285 (_values!2427 (v!27523 (underlying!4489 (v!27524 (underlying!4490 (cache!2442 cacheUp!562))))))) ((as const (Array (_ BitVec 32) List!23002)) mapDefault!10241)))))

(declare-fun b!2076859 () Bool)

(declare-fun e!1317352 () Bool)

(declare-datatypes ((List!23003 0))(
  ( (Nil!22919) (Cons!22919 (h!28320 C!11180) (t!193562 List!23003)) )
))
(declare-datatypes ((IArray!15295 0))(
  ( (IArray!15296 (innerList!7705 List!23003)) )
))
(declare-datatypes ((Conc!7645 0))(
  ( (Node!7645 (left!18008 Conc!7645) (right!18338 Conc!7645) (csize!15520 Int) (cheight!7856 Int)) (Leaf!11171 (xs!10565 IArray!15295) (csize!15521 Int)) (Empty!7645) )
))
(declare-datatypes ((BalanceConc!15052 0))(
  ( (BalanceConc!15053 (c!334905 Conc!7645)) )
))
(declare-fun input!986 () BalanceConc!15052)

(declare-fun tp!624837 () Bool)

(declare-fun inv!30373 (Conc!7645) Bool)

(assert (=> b!2076859 (= e!1317352 (and (inv!30373 (c!334905 input!986)) tp!624837))))

(declare-fun b!2076860 () Bool)

(declare-fun e!1317356 () Bool)

(declare-fun e!1317350 () Bool)

(assert (=> b!2076860 (= e!1317356 e!1317350)))

(declare-fun b!2076861 () Bool)

(declare-fun e!1317366 () Bool)

(declare-fun treated!60 () BalanceConc!15052)

(declare-fun tp!624844 () Bool)

(assert (=> b!2076861 (= e!1317366 (and (inv!30373 (c!334905 treated!60)) tp!624844))))

(declare-fun b!2076862 () Bool)

(declare-fun e!1317372 () Bool)

(declare-fun e!1317371 () Bool)

(assert (=> b!2076862 (= e!1317372 e!1317371)))

(declare-fun b!2076863 () Bool)

(declare-fun e!1317357 () Bool)

(declare-fun totalInput!418 () BalanceConc!15052)

(declare-fun tp!624832 () Bool)

(assert (=> b!2076863 (= e!1317357 (and (inv!30373 (c!334905 totalInput!418)) tp!624832))))

(declare-fun b!2076864 () Bool)

(declare-fun e!1317361 () Bool)

(assert (=> b!2076864 (= e!1317361 e!1317372)))

(declare-fun b!2076865 () Bool)

(declare-fun e!1317363 () Bool)

(assert (=> b!2076865 (= e!1317363 e!1317356)))

(declare-fun b!2076866 () Bool)

(declare-fun e!1317369 () Bool)

(declare-fun lt!780180 () MutLongMap!2147)

(get-info :version)

(assert (=> b!2076866 (= e!1317369 (and e!1317363 ((_ is LongMap!2147) lt!780180)))))

(assert (=> b!2076866 (= lt!780180 (v!27524 (underlying!4490 (cache!2442 cacheUp!562))))))

(declare-fun b!2076867 () Bool)

(declare-fun res!905753 () Bool)

(declare-fun e!1317345 () Bool)

(assert (=> b!2076867 (=> (not res!905753) (not e!1317345))))

(declare-datatypes ((List!23004 0))(
  ( (Nil!22920) (Cons!22920 (h!28321 (_ BitVec 16)) (t!193563 List!23004)) )
))
(declare-datatypes ((TokenValue!4225 0))(
  ( (FloatLiteralValue!8450 (text!30020 List!23004)) (TokenValueExt!4224 (__x!14475 Int)) (Broken!21125 (value!128163 List!23004)) (Object!4308) (End!4225) (Def!4225) (Underscore!4225) (Match!4225) (Else!4225) (Error!4225) (Case!4225) (If!4225) (Extends!4225) (Abstract!4225) (Class!4225) (Val!4225) (DelimiterValue!8450 (del!4285 List!23004)) (KeywordValue!4231 (value!128164 List!23004)) (CommentValue!8450 (value!128165 List!23004)) (WhitespaceValue!8450 (value!128166 List!23004)) (IndentationValue!4225 (value!128167 List!23004)) (String!26316) (Int32!4225) (Broken!21126 (value!128168 List!23004)) (Boolean!4226) (Unit!37252) (OperatorValue!4228 (op!4285 List!23004)) (IdentifierValue!8450 (value!128169 List!23004)) (IdentifierValue!8451 (value!128170 List!23004)) (WhitespaceValue!8451 (value!128171 List!23004)) (True!8450) (False!8450) (Broken!21127 (value!128172 List!23004)) (Broken!21128 (value!128173 List!23004)) (True!8451) (RightBrace!4225) (RightBracket!4225) (Colon!4225) (Null!4225) (Comma!4225) (LeftBracket!4225) (False!8451) (LeftBrace!4225) (ImaginaryLiteralValue!4225 (text!30021 List!23004)) (StringLiteralValue!12675 (value!128174 List!23004)) (EOFValue!4225 (value!128175 List!23004)) (IdentValue!4225 (value!128176 List!23004)) (DelimiterValue!8451 (value!128177 List!23004)) (DedentValue!4225 (value!128178 List!23004)) (NewLineValue!4225 (value!128179 List!23004)) (IntegerValue!12675 (value!128180 (_ BitVec 32)) (text!30022 List!23004)) (IntegerValue!12676 (value!128181 Int) (text!30023 List!23004)) (Times!4225) (Or!4225) (Equal!4225) (Minus!4225) (Broken!21129 (value!128182 List!23004)) (And!4225) (Div!4225) (LessEqual!4225) (Mod!4225) (Concat!9743) (Not!4225) (Plus!4225) (SpaceValue!4225 (value!128183 List!23004)) (IntegerValue!12677 (value!128184 Int) (text!30024 List!23004)) (StringLiteralValue!12676 (text!30025 List!23004)) (FloatLiteralValue!8451 (text!30026 List!23004)) (BytesLiteralValue!4225 (value!128185 List!23004)) (CommentValue!8451 (value!128186 List!23004)) (StringLiteralValue!12677 (value!128187 List!23004)) (ErrorTokenValue!4225 (msg!4286 List!23004)) )
))
(declare-datatypes ((String!26317 0))(
  ( (String!26318 (value!128188 String)) )
))
(declare-datatypes ((TokenValueInjection!8034 0))(
  ( (TokenValueInjection!8035 (toValue!5782 Int) (toChars!5641 Int)) )
))
(declare-datatypes ((Rule!7978 0))(
  ( (Rule!7979 (regex!4089 Regex!5517) (tag!4579 String!26317) (isSeparator!4089 Bool) (transformation!4089 TokenValueInjection!8034)) )
))
(declare-datatypes ((Token!7726 0))(
  ( (Token!7727 (value!128189 TokenValue!4225) (rule!6374 Rule!7978) (size!17885 Int) (originalCharacters!4894 List!23003)) )
))
(declare-datatypes ((List!23005 0))(
  ( (Nil!22921) (Cons!22921 (h!28322 Token!7726) (t!193564 List!23005)) )
))
(declare-datatypes ((IArray!15297 0))(
  ( (IArray!15298 (innerList!7706 List!23005)) )
))
(declare-datatypes ((Conc!7646 0))(
  ( (Node!7646 (left!18009 Conc!7646) (right!18339 Conc!7646) (csize!15522 Int) (cheight!7857 Int)) (Leaf!11172 (xs!10566 IArray!15297) (csize!15523 Int)) (Empty!7646) )
))
(declare-datatypes ((BalanceConc!15054 0))(
  ( (BalanceConc!15055 (c!334906 Conc!7646)) )
))
(declare-datatypes ((tuple2!21994 0))(
  ( (tuple2!21995 (_1!12651 BalanceConc!15054) (_2!12651 BalanceConc!15052)) )
))
(declare-fun lt!780182 () tuple2!21994)

(declare-fun isEmpty!14139 (List!23003) Bool)

(declare-fun list!9337 (BalanceConc!15052) List!23003)

(assert (=> b!2076867 (= res!905753 (isEmpty!14139 (list!9337 (_2!12651 lt!780182))))))

(declare-fun b!2076868 () Bool)

(declare-fun res!905754 () Bool)

(declare-fun e!1317362 () Bool)

(assert (=> b!2076868 (=> (not res!905754) (not e!1317362))))

(declare-datatypes ((LexerInterface!3695 0))(
  ( (LexerInterfaceExt!3692 (__x!14476 Int)) (Lexer!3693) )
))
(declare-fun thiss!12889 () LexerInterface!3695)

(declare-datatypes ((List!23006 0))(
  ( (Nil!22922) (Cons!22922 (h!28323 Rule!7978) (t!193565 List!23006)) )
))
(declare-fun rules!1563 () List!23006)

(declare-fun rulesInvariant!3271 (LexerInterface!3695 List!23006) Bool)

(assert (=> b!2076868 (= res!905754 (rulesInvariant!3271 thiss!12889 rules!1563))))

(assert (=> b!2076869 (= e!1317360 (and e!1317369 tp!624846))))

(declare-fun mapIsEmpty!10240 () Bool)

(declare-fun mapRes!10240 () Bool)

(assert (=> mapIsEmpty!10240 mapRes!10240))

(declare-fun e!1317347 () Bool)

(declare-fun e!1317359 () Bool)

(assert (=> b!2076870 (= e!1317347 (and e!1317359 tp!624847))))

(declare-fun e!1317364 () Bool)

(assert (=> b!2076871 (= e!1317364 (and tp!624850 tp!624835))))

(declare-fun b!2076872 () Bool)

(declare-fun e!1317354 () Bool)

(declare-fun e!1317355 () Bool)

(declare-fun tp!624836 () Bool)

(assert (=> b!2076872 (= e!1317354 (and e!1317355 tp!624836))))

(declare-fun b!2076873 () Bool)

(declare-fun res!905752 () Bool)

(declare-fun e!1317346 () Bool)

(assert (=> b!2076873 (=> (not res!905752) (not e!1317346))))

(declare-fun lt!780176 () tuple2!21994)

(declare-fun lt!780183 () tuple2!21994)

(assert (=> b!2076873 (= res!905752 (= (list!9337 (_2!12651 lt!780176)) (list!9337 (_2!12651 lt!780183))))))

(declare-fun b!2076874 () Bool)

(declare-datatypes ((tuple3!2380 0))(
  ( (tuple3!2381 (_1!12652 Regex!5517) (_2!12652 Context!2174) (_3!1654 C!11180)) )
))
(declare-datatypes ((tuple2!21996 0))(
  ( (tuple2!21997 (_1!12653 tuple3!2380) (_2!12653 (InoxSet Context!2174))) )
))
(declare-datatypes ((List!23007 0))(
  ( (Nil!22923) (Cons!22923 (h!28324 tuple2!21996) (t!193566 List!23007)) )
))
(declare-datatypes ((array!7398 0))(
  ( (array!7399 (arr!3287 (Array (_ BitVec 32) List!23007)) (size!17886 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4296 0))(
  ( (LongMapFixedSize!4297 (defaultEntry!2513 Int) (mask!6222 (_ BitVec 32)) (extraKeys!2396 (_ BitVec 32)) (zeroValue!2406 List!23007) (minValue!2406 List!23007) (_size!4347 (_ BitVec 32)) (_keys!2445 array!7396) (_values!2428 array!7398) (_vacant!2209 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8417 0))(
  ( (Cell!8418 (v!27525 LongMapFixedSize!4296)) )
))
(declare-datatypes ((MutLongMap!2148 0))(
  ( (LongMap!2148 (underlying!4491 Cell!8417)) (MutLongMapExt!2147 (__x!14477 Int)) )
))
(declare-fun lt!780178 () MutLongMap!2148)

(assert (=> b!2076874 (= e!1317359 (and e!1317361 ((_ is LongMap!2148) lt!780178)))))

(declare-datatypes ((Hashable!2062 0))(
  ( (HashableExt!2061 (__x!14478 Int)) )
))
(declare-datatypes ((Cell!8419 0))(
  ( (Cell!8420 (v!27526 MutLongMap!2148)) )
))
(declare-datatypes ((MutableMap!2062 0))(
  ( (MutableMapExt!2061 (__x!14479 Int)) (HashMap!2062 (underlying!4492 Cell!8419) (hashF!3985 Hashable!2062) (_size!4348 (_ BitVec 32)) (defaultValue!2224 Int)) )
))
(declare-datatypes ((CacheDown!1360 0))(
  ( (CacheDown!1361 (cache!2443 MutableMap!2062)) )
))
(declare-fun cacheDown!575 () CacheDown!1360)

(assert (=> b!2076874 (= lt!780178 (v!27526 (underlying!4492 (cache!2443 cacheDown!575))))))

(declare-fun b!2076875 () Bool)

(declare-fun e!1317349 () Bool)

(assert (=> b!2076875 (= e!1317349 e!1317345)))

(declare-fun res!905755 () Bool)

(assert (=> b!2076875 (=> (not res!905755) (not e!1317345))))

(declare-fun acc!382 () BalanceConc!15054)

(declare-fun list!9338 (BalanceConc!15054) List!23005)

(assert (=> b!2076875 (= res!905755 (= (list!9338 (_1!12651 lt!780182)) (list!9338 acc!382)))))

(declare-fun lexRec!491 (LexerInterface!3695 List!23006 BalanceConc!15052) tuple2!21994)

(assert (=> b!2076875 (= lt!780182 (lexRec!491 thiss!12889 rules!1563 treated!60))))

(declare-fun mapNonEmpty!10240 () Bool)

(declare-fun tp!624841 () Bool)

(declare-fun tp!624842 () Bool)

(assert (=> mapNonEmpty!10240 (= mapRes!10241 (and tp!624841 tp!624842))))

(declare-fun mapKey!10241 () (_ BitVec 32))

(declare-fun mapValue!10240 () List!23002)

(declare-fun mapRest!10241 () (Array (_ BitVec 32) List!23002))

(assert (=> mapNonEmpty!10240 (= (arr!3285 (_values!2427 (v!27523 (underlying!4489 (v!27524 (underlying!4490 (cache!2442 cacheUp!562))))))) (store mapRest!10241 mapKey!10241 mapValue!10240))))

(declare-fun tp!624834 () Bool)

(declare-fun b!2076876 () Bool)

(declare-fun inv!30371 (String!26317) Bool)

(declare-fun inv!30374 (TokenValueInjection!8034) Bool)

(assert (=> b!2076876 (= e!1317355 (and tp!624834 (inv!30371 (tag!4579 (h!28323 rules!1563))) (inv!30374 (transformation!4089 (h!28323 rules!1563))) e!1317364))))

(declare-fun b!2076877 () Bool)

(assert (=> b!2076877 (= e!1317345 e!1317346)))

(declare-fun res!905759 () Bool)

(assert (=> b!2076877 (=> (not res!905759) (not e!1317346))))

(declare-fun ++!6240 (BalanceConc!15054 BalanceConc!15054) BalanceConc!15054)

(assert (=> b!2076877 (= res!905759 (= (list!9338 (_1!12651 lt!780176)) (list!9338 (++!6240 acc!382 (_1!12651 lt!780183)))))))

(assert (=> b!2076877 (= lt!780183 (lexRec!491 thiss!12889 rules!1563 input!986))))

(assert (=> b!2076877 (= lt!780176 (lexRec!491 thiss!12889 rules!1563 totalInput!418))))

(declare-fun tp!624845 () Bool)

(declare-fun e!1317370 () Bool)

(declare-fun tp!624848 () Bool)

(declare-fun array_inv!2364 (array!7396) Bool)

(declare-fun array_inv!2365 (array!7398) Bool)

(assert (=> b!2076878 (= e!1317371 (and tp!624840 tp!624845 tp!624848 (array_inv!2364 (_keys!2445 (v!27525 (underlying!4491 (v!27526 (underlying!4492 (cache!2443 cacheDown!575))))))) (array_inv!2365 (_values!2428 (v!27525 (underlying!4491 (v!27526 (underlying!4492 (cache!2443 cacheDown!575))))))) e!1317370))))

(declare-fun b!2076879 () Bool)

(declare-fun tp!624853 () Bool)

(assert (=> b!2076879 (= e!1317370 (and tp!624853 mapRes!10240))))

(declare-fun condMapEmpty!10241 () Bool)

(declare-fun mapDefault!10240 () List!23007)

(assert (=> b!2076879 (= condMapEmpty!10241 (= (arr!3287 (_values!2428 (v!27525 (underlying!4491 (v!27526 (underlying!4492 (cache!2443 cacheDown!575))))))) ((as const (Array (_ BitVec 32) List!23007)) mapDefault!10240)))))

(declare-fun b!2076880 () Bool)

(declare-fun res!905758 () Bool)

(assert (=> b!2076880 (=> (not res!905758) (not e!1317346))))

(declare-fun valid!1696 (CacheDown!1360) Bool)

(assert (=> b!2076880 (= res!905758 (valid!1696 cacheDown!575))))

(declare-fun res!905757 () Bool)

(assert (=> start!203522 (=> (not res!905757) (not e!1317362))))

(assert (=> start!203522 (= res!905757 ((_ is Lexer!3693) thiss!12889))))

(assert (=> start!203522 e!1317362))

(declare-fun e!1317358 () Bool)

(declare-fun inv!30375 (CacheDown!1360) Bool)

(assert (=> start!203522 (and (inv!30375 cacheDown!575) e!1317358)))

(assert (=> start!203522 true))

(declare-fun inv!30376 (CacheUp!1356) Bool)

(assert (=> start!203522 (and (inv!30376 cacheUp!562) e!1317367)))

(assert (=> start!203522 e!1317354))

(declare-fun inv!30377 (BalanceConc!15052) Bool)

(assert (=> start!203522 (and (inv!30377 totalInput!418) e!1317357)))

(assert (=> start!203522 (and (inv!30377 treated!60) e!1317366)))

(assert (=> start!203522 (and (inv!30377 input!986) e!1317352)))

(declare-fun e!1317365 () Bool)

(declare-fun inv!30378 (BalanceConc!15054) Bool)

(assert (=> start!203522 (and (inv!30378 acc!382) e!1317365)))

(declare-fun mapNonEmpty!10241 () Bool)

(declare-fun tp!624833 () Bool)

(declare-fun tp!624851 () Bool)

(assert (=> mapNonEmpty!10241 (= mapRes!10240 (and tp!624833 tp!624851))))

(declare-fun mapRest!10240 () (Array (_ BitVec 32) List!23007))

(declare-fun mapKey!10240 () (_ BitVec 32))

(declare-fun mapValue!10241 () List!23007)

(assert (=> mapNonEmpty!10241 (= (arr!3287 (_values!2428 (v!27525 (underlying!4491 (v!27526 (underlying!4492 (cache!2443 cacheDown!575))))))) (store mapRest!10240 mapKey!10240 mapValue!10241))))

(declare-fun b!2076881 () Bool)

(declare-fun lt!780181 () List!23003)

(declare-fun lt!780175 () List!23003)

(declare-fun isSuffix!523 (List!23003 List!23003) Bool)

(assert (=> b!2076881 (= e!1317346 (not (isSuffix!523 lt!780181 lt!780175)))))

(declare-fun lt!780184 () List!23003)

(assert (=> b!2076881 (isSuffix!523 lt!780181 lt!780184)))

(declare-datatypes ((Unit!37253 0))(
  ( (Unit!37254) )
))
(declare-fun lt!780179 () Unit!37253)

(declare-fun lt!780177 () List!23003)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!424 (List!23003 List!23003) Unit!37253)

(assert (=> b!2076881 (= lt!780179 (lemmaConcatTwoListThenFSndIsSuffix!424 lt!780177 lt!780181))))

(declare-fun tp!624852 () Bool)

(declare-fun tp!624838 () Bool)

(declare-fun array_inv!2366 (array!7394) Bool)

(assert (=> b!2076882 (= e!1317350 (and tp!624849 tp!624852 tp!624838 (array_inv!2364 (_keys!2444 (v!27523 (underlying!4489 (v!27524 (underlying!4490 (cache!2442 cacheUp!562))))))) (array_inv!2366 (_values!2427 (v!27523 (underlying!4489 (v!27524 (underlying!4490 (cache!2442 cacheUp!562))))))) e!1317353))))

(declare-fun b!2076883 () Bool)

(declare-fun res!905750 () Bool)

(assert (=> b!2076883 (=> (not res!905750) (not e!1317346))))

(declare-fun valid!1697 (CacheUp!1356) Bool)

(assert (=> b!2076883 (= res!905750 (valid!1697 cacheUp!562))))

(declare-fun b!2076884 () Bool)

(declare-fun res!905751 () Bool)

(assert (=> b!2076884 (=> (not res!905751) (not e!1317362))))

(declare-fun isEmpty!14140 (List!23006) Bool)

(assert (=> b!2076884 (= res!905751 (not (isEmpty!14140 rules!1563)))))

(declare-fun mapIsEmpty!10241 () Bool)

(assert (=> mapIsEmpty!10241 mapRes!10241))

(declare-fun b!2076885 () Bool)

(assert (=> b!2076885 (= e!1317362 e!1317349)))

(declare-fun res!905756 () Bool)

(assert (=> b!2076885 (=> (not res!905756) (not e!1317349))))

(assert (=> b!2076885 (= res!905756 (= lt!780175 lt!780184))))

(declare-fun ++!6241 (List!23003 List!23003) List!23003)

(assert (=> b!2076885 (= lt!780184 (++!6241 lt!780177 lt!780181))))

(assert (=> b!2076885 (= lt!780175 (list!9337 totalInput!418))))

(assert (=> b!2076885 (= lt!780181 (list!9337 input!986))))

(assert (=> b!2076885 (= lt!780177 (list!9337 treated!60))))

(declare-fun b!2076886 () Bool)

(declare-fun tp!624839 () Bool)

(declare-fun inv!30379 (Conc!7646) Bool)

(assert (=> b!2076886 (= e!1317365 (and (inv!30379 (c!334906 acc!382)) tp!624839))))

(declare-fun b!2076887 () Bool)

(assert (=> b!2076887 (= e!1317358 e!1317347)))

(assert (= (and start!203522 res!905757) b!2076884))

(assert (= (and b!2076884 res!905751) b!2076868))

(assert (= (and b!2076868 res!905754) b!2076885))

(assert (= (and b!2076885 res!905756) b!2076875))

(assert (= (and b!2076875 res!905755) b!2076867))

(assert (= (and b!2076867 res!905753) b!2076877))

(assert (= (and b!2076877 res!905759) b!2076873))

(assert (= (and b!2076873 res!905752) b!2076883))

(assert (= (and b!2076883 res!905750) b!2076880))

(assert (= (and b!2076880 res!905758) b!2076881))

(assert (= (and b!2076879 condMapEmpty!10241) mapIsEmpty!10240))

(assert (= (and b!2076879 (not condMapEmpty!10241)) mapNonEmpty!10241))

(assert (= b!2076878 b!2076879))

(assert (= b!2076862 b!2076878))

(assert (= b!2076864 b!2076862))

(assert (= (and b!2076874 ((_ is LongMap!2148) (v!27526 (underlying!4492 (cache!2443 cacheDown!575))))) b!2076864))

(assert (= b!2076870 b!2076874))

(assert (= (and b!2076887 ((_ is HashMap!2062) (cache!2443 cacheDown!575))) b!2076870))

(assert (= start!203522 b!2076887))

(assert (= (and b!2076858 condMapEmpty!10240) mapIsEmpty!10241))

(assert (= (and b!2076858 (not condMapEmpty!10240)) mapNonEmpty!10240))

(assert (= b!2076882 b!2076858))

(assert (= b!2076860 b!2076882))

(assert (= b!2076865 b!2076860))

(assert (= (and b!2076866 ((_ is LongMap!2147) (v!27524 (underlying!4490 (cache!2442 cacheUp!562))))) b!2076865))

(assert (= b!2076869 b!2076866))

(assert (= (and b!2076857 ((_ is HashMap!2061) (cache!2442 cacheUp!562))) b!2076869))

(assert (= start!203522 b!2076857))

(assert (= b!2076876 b!2076871))

(assert (= b!2076872 b!2076876))

(assert (= (and start!203522 ((_ is Cons!22922) rules!1563)) b!2076872))

(assert (= start!203522 b!2076863))

(assert (= start!203522 b!2076861))

(assert (= start!203522 b!2076859))

(assert (= start!203522 b!2076886))

(declare-fun m!2525885 () Bool)

(assert (=> mapNonEmpty!10241 m!2525885))

(declare-fun m!2525887 () Bool)

(assert (=> b!2076859 m!2525887))

(declare-fun m!2525889 () Bool)

(assert (=> b!2076880 m!2525889))

(declare-fun m!2525891 () Bool)

(assert (=> b!2076878 m!2525891))

(declare-fun m!2525893 () Bool)

(assert (=> b!2076878 m!2525893))

(declare-fun m!2525895 () Bool)

(assert (=> b!2076877 m!2525895))

(declare-fun m!2525897 () Bool)

(assert (=> b!2076877 m!2525897))

(declare-fun m!2525899 () Bool)

(assert (=> b!2076877 m!2525899))

(assert (=> b!2076877 m!2525899))

(declare-fun m!2525901 () Bool)

(assert (=> b!2076877 m!2525901))

(declare-fun m!2525903 () Bool)

(assert (=> b!2076877 m!2525903))

(declare-fun m!2525905 () Bool)

(assert (=> b!2076873 m!2525905))

(declare-fun m!2525907 () Bool)

(assert (=> b!2076873 m!2525907))

(declare-fun m!2525909 () Bool)

(assert (=> mapNonEmpty!10240 m!2525909))

(declare-fun m!2525911 () Bool)

(assert (=> b!2076883 m!2525911))

(declare-fun m!2525913 () Bool)

(assert (=> b!2076861 m!2525913))

(declare-fun m!2525915 () Bool)

(assert (=> b!2076885 m!2525915))

(declare-fun m!2525917 () Bool)

(assert (=> b!2076885 m!2525917))

(declare-fun m!2525919 () Bool)

(assert (=> b!2076885 m!2525919))

(declare-fun m!2525921 () Bool)

(assert (=> b!2076885 m!2525921))

(declare-fun m!2525923 () Bool)

(assert (=> b!2076876 m!2525923))

(declare-fun m!2525925 () Bool)

(assert (=> b!2076876 m!2525925))

(declare-fun m!2525927 () Bool)

(assert (=> b!2076884 m!2525927))

(declare-fun m!2525929 () Bool)

(assert (=> b!2076881 m!2525929))

(declare-fun m!2525931 () Bool)

(assert (=> b!2076881 m!2525931))

(declare-fun m!2525933 () Bool)

(assert (=> b!2076881 m!2525933))

(declare-fun m!2525935 () Bool)

(assert (=> b!2076882 m!2525935))

(declare-fun m!2525937 () Bool)

(assert (=> b!2076882 m!2525937))

(declare-fun m!2525939 () Bool)

(assert (=> b!2076867 m!2525939))

(assert (=> b!2076867 m!2525939))

(declare-fun m!2525941 () Bool)

(assert (=> b!2076867 m!2525941))

(declare-fun m!2525943 () Bool)

(assert (=> b!2076863 m!2525943))

(declare-fun m!2525945 () Bool)

(assert (=> start!203522 m!2525945))

(declare-fun m!2525947 () Bool)

(assert (=> start!203522 m!2525947))

(declare-fun m!2525949 () Bool)

(assert (=> start!203522 m!2525949))

(declare-fun m!2525951 () Bool)

(assert (=> start!203522 m!2525951))

(declare-fun m!2525953 () Bool)

(assert (=> start!203522 m!2525953))

(declare-fun m!2525955 () Bool)

(assert (=> start!203522 m!2525955))

(declare-fun m!2525957 () Bool)

(assert (=> b!2076875 m!2525957))

(declare-fun m!2525959 () Bool)

(assert (=> b!2076875 m!2525959))

(declare-fun m!2525961 () Bool)

(assert (=> b!2076875 m!2525961))

(declare-fun m!2525963 () Bool)

(assert (=> b!2076886 m!2525963))

(declare-fun m!2525965 () Bool)

(assert (=> b!2076868 m!2525965))

(check-sat (not mapNonEmpty!10240) b_and!166775 (not b!2076881) (not b_next!60021) (not b!2076863) (not b!2076867) (not b!2076883) (not b!2076884) (not b!2076872) b_and!166777 (not b!2076886) (not b!2076877) (not b_next!60015) (not b!2076876) (not b!2076882) (not b!2076880) (not b_next!60017) (not b_next!60019) b_and!166771 (not b!2076878) (not b!2076885) (not b_next!60013) (not start!203522) (not mapNonEmpty!10241) (not b!2076879) b_and!166773 (not b!2076861) (not b!2076858) (not b!2076873) (not b_next!60023) (not b!2076875) (not b!2076868) b_and!166767 b_and!166769 (not b!2076859))
(check-sat b_and!166775 (not b_next!60021) b_and!166777 (not b_next!60015) b_and!166771 (not b_next!60013) b_and!166773 (not b_next!60023) b_and!166767 b_and!166769 (not b_next!60017) (not b_next!60019))
