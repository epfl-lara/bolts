; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!141116 () Bool)

(assert start!141116)

(declare-fun b!1512316 () Bool)

(declare-fun b_free!39211 () Bool)

(declare-fun b_next!39915 () Bool)

(assert (=> b!1512316 (= b_free!39211 (not b_next!39915))))

(declare-fun tp!432399 () Bool)

(declare-fun b_and!105227 () Bool)

(assert (=> b!1512316 (= tp!432399 b_and!105227)))

(declare-fun b_free!39213 () Bool)

(declare-fun b_next!39917 () Bool)

(assert (=> b!1512316 (= b_free!39213 (not b_next!39917))))

(declare-fun tp!432385 () Bool)

(declare-fun b_and!105229 () Bool)

(assert (=> b!1512316 (= tp!432385 b_and!105229)))

(declare-fun b!1512287 () Bool)

(declare-fun b_free!39215 () Bool)

(declare-fun b_next!39919 () Bool)

(assert (=> b!1512287 (= b_free!39215 (not b_next!39919))))

(declare-fun tp!432401 () Bool)

(declare-fun b_and!105231 () Bool)

(assert (=> b!1512287 (= tp!432401 b_and!105231)))

(declare-fun b!1512301 () Bool)

(declare-fun b_free!39217 () Bool)

(declare-fun b_next!39921 () Bool)

(assert (=> b!1512301 (= b_free!39217 (not b_next!39921))))

(declare-fun tp!432409 () Bool)

(declare-fun b_and!105233 () Bool)

(assert (=> b!1512301 (= tp!432409 b_and!105233)))

(declare-fun b!1512308 () Bool)

(declare-fun b_free!39219 () Bool)

(declare-fun b_next!39923 () Bool)

(assert (=> b!1512308 (= b_free!39219 (not b_next!39923))))

(declare-fun tp!432407 () Bool)

(declare-fun b_and!105235 () Bool)

(assert (=> b!1512308 (= tp!432407 b_and!105235)))

(declare-fun b!1512307 () Bool)

(declare-fun b_free!39221 () Bool)

(declare-fun b_next!39925 () Bool)

(assert (=> b!1512307 (= b_free!39221 (not b_next!39925))))

(declare-fun tp!432386 () Bool)

(declare-fun b_and!105237 () Bool)

(assert (=> b!1512307 (= tp!432386 b_and!105237)))

(declare-fun b!1512296 () Bool)

(declare-fun b_free!39223 () Bool)

(declare-fun b_next!39927 () Bool)

(assert (=> b!1512296 (= b_free!39223 (not b_next!39927))))

(declare-fun tp!432411 () Bool)

(declare-fun b_and!105239 () Bool)

(assert (=> b!1512296 (= tp!432411 b_and!105239)))

(declare-fun b!1512295 () Bool)

(declare-fun b_free!39225 () Bool)

(declare-fun b_next!39929 () Bool)

(assert (=> b!1512295 (= b_free!39225 (not b_next!39929))))

(declare-fun tp!432395 () Bool)

(declare-fun b_and!105241 () Bool)

(assert (=> b!1512295 (= tp!432395 b_and!105241)))

(declare-fun e!967023 () Bool)

(declare-fun e!967054 () Bool)

(declare-datatypes ((List!16122 0))(
  ( (Nil!16054) (Cons!16054 (h!21455 (_ BitVec 16)) (t!139396 List!16122)) )
))
(declare-datatypes ((TokenValue!2932 0))(
  ( (FloatLiteralValue!5864 (text!20969 List!16122)) (TokenValueExt!2931 (__x!10014 Int)) (Broken!14660 (value!90631 List!16122)) (Object!2999) (End!2932) (Def!2932) (Underscore!2932) (Match!2932) (Else!2932) (Error!2932) (Case!2932) (If!2932) (Extends!2932) (Abstract!2932) (Class!2932) (Val!2932) (DelimiterValue!5864 (del!2992 List!16122)) (KeywordValue!2938 (value!90632 List!16122)) (CommentValue!5864 (value!90633 List!16122)) (WhitespaceValue!5864 (value!90634 List!16122)) (IndentationValue!2932 (value!90635 List!16122)) (String!18921) (Int32!2932) (Broken!14661 (value!90636 List!16122)) (Boolean!2933) (Unit!25740) (OperatorValue!2935 (op!2992 List!16122)) (IdentifierValue!5864 (value!90637 List!16122)) (IdentifierValue!5865 (value!90638 List!16122)) (WhitespaceValue!5865 (value!90639 List!16122)) (True!5864) (False!5864) (Broken!14662 (value!90640 List!16122)) (Broken!14663 (value!90641 List!16122)) (True!5865) (RightBrace!2932) (RightBracket!2932) (Colon!2932) (Null!2932) (Comma!2932) (LeftBracket!2932) (False!5865) (LeftBrace!2932) (ImaginaryLiteralValue!2932 (text!20970 List!16122)) (StringLiteralValue!8796 (value!90642 List!16122)) (EOFValue!2932 (value!90643 List!16122)) (IdentValue!2932 (value!90644 List!16122)) (DelimiterValue!5865 (value!90645 List!16122)) (DedentValue!2932 (value!90646 List!16122)) (NewLineValue!2932 (value!90647 List!16122)) (IntegerValue!8796 (value!90648 (_ BitVec 32)) (text!20971 List!16122)) (IntegerValue!8797 (value!90649 Int) (text!20972 List!16122)) (Times!2932) (Or!2932) (Equal!2932) (Minus!2932) (Broken!14664 (value!90650 List!16122)) (And!2932) (Div!2932) (LessEqual!2932) (Mod!2932) (Concat!7089) (Not!2932) (Plus!2932) (SpaceValue!2932 (value!90651 List!16122)) (IntegerValue!8798 (value!90652 Int) (text!20973 List!16122)) (StringLiteralValue!8797 (text!20974 List!16122)) (FloatLiteralValue!5865 (text!20975 List!16122)) (BytesLiteralValue!2932 (value!90653 List!16122)) (CommentValue!5865 (value!90654 List!16122)) (StringLiteralValue!8798 (value!90655 List!16122)) (ErrorTokenValue!2932 (msg!2993 List!16122)) )
))
(declare-datatypes ((C!8492 0))(
  ( (C!8493 (val!4818 Int)) )
))
(declare-datatypes ((List!16123 0))(
  ( (Nil!16055) (Cons!16055 (h!21456 C!8492) (t!139397 List!16123)) )
))
(declare-datatypes ((IArray!10875 0))(
  ( (IArray!10876 (innerList!5495 List!16123)) )
))
(declare-datatypes ((Conc!5435 0))(
  ( (Node!5435 (left!13358 Conc!5435) (right!13688 Conc!5435) (csize!11100 Int) (cheight!5646 Int)) (Leaf!8059 (xs!8216 IArray!10875) (csize!11101 Int)) (Empty!5435) )
))
(declare-datatypes ((BalanceConc!10812 0))(
  ( (BalanceConc!10813 (c!247915 Conc!5435)) )
))
(declare-datatypes ((Regex!4157 0))(
  ( (ElementMatch!4157 (c!247916 C!8492)) (Concat!7090 (regOne!8826 Regex!4157) (regTwo!8826 Regex!4157)) (EmptyExpr!4157) (Star!4157 (reg!4486 Regex!4157)) (EmptyLang!4157) (Union!4157 (regOne!8827 Regex!4157) (regTwo!8827 Regex!4157)) )
))
(declare-datatypes ((String!18922 0))(
  ( (String!18923 (value!90656 String)) )
))
(declare-datatypes ((TokenValueInjection!5524 0))(
  ( (TokenValueInjection!5525 (toValue!4191 Int) (toChars!4050 Int)) )
))
(declare-datatypes ((Rule!5484 0))(
  ( (Rule!5485 (regex!2842 Regex!4157) (tag!3106 String!18922) (isSeparator!2842 Bool) (transformation!2842 TokenValueInjection!5524)) )
))
(declare-datatypes ((List!16124 0))(
  ( (Nil!16056) (Cons!16056 (h!21457 Rule!5484) (t!139398 List!16124)) )
))
(declare-fun rules!1640 () List!16124)

(declare-fun b!1512267 () Bool)

(declare-fun tp!432405 () Bool)

(declare-fun inv!21280 (String!18922) Bool)

(declare-fun inv!21284 (TokenValueInjection!5524) Bool)

(assert (=> b!1512267 (= e!967023 (and tp!432405 (inv!21280 (tag!3106 (h!21457 rules!1640))) (inv!21284 (transformation!2842 (h!21457 rules!1640))) e!967054))))

(declare-fun b!1512268 () Bool)

(declare-fun e!967035 () Bool)

(declare-fun e!967024 () Bool)

(assert (=> b!1512268 (= e!967035 e!967024)))

(declare-fun b!1512270 () Bool)

(declare-fun e!967055 () Bool)

(declare-fun treated!70 () BalanceConc!10812)

(declare-fun tp!432396 () Bool)

(declare-fun inv!21285 (Conc!5435) Bool)

(assert (=> b!1512270 (= e!967055 (and (inv!21285 (c!247915 treated!70)) tp!432396))))

(declare-fun b!1512271 () Bool)

(declare-fun res!680507 () Bool)

(declare-fun e!967027 () Bool)

(assert (=> b!1512271 (=> (not res!680507) (not e!967027))))

(declare-datatypes ((LexerInterface!2495 0))(
  ( (LexerInterfaceExt!2492 (__x!10015 Int)) (Lexer!2493) )
))
(declare-fun thiss!13241 () LexerInterface!2495)

(declare-fun rulesInvariant!2269 (LexerInterface!2495 List!16124) Bool)

(assert (=> b!1512271 (= res!680507 (rulesInvariant!2269 thiss!13241 rules!1640))))

(declare-fun b!1512272 () Bool)

(declare-fun res!680511 () Bool)

(declare-fun e!967060 () Bool)

(assert (=> b!1512272 (=> res!680511 e!967060)))

(declare-datatypes ((List!16125 0))(
  ( (Nil!16057) (Cons!16057 (h!21458 Regex!4157) (t!139399 List!16125)) )
))
(declare-datatypes ((Context!1350 0))(
  ( (Context!1351 (exprs!1175 List!16125)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1352 0))(
  ( (tuple3!1353 (_1!8469 (InoxSet Context!1350)) (_2!8469 Int) (_3!1012 Int)) )
))
(declare-datatypes ((tuple2!14914 0))(
  ( (tuple2!14915 (_1!8470 tuple3!1352) (_2!8470 Int)) )
))
(declare-datatypes ((List!16126 0))(
  ( (Nil!16058) (Cons!16058 (h!21459 tuple2!14914) (t!139400 List!16126)) )
))
(declare-datatypes ((array!5166 0))(
  ( (array!5167 (arr!2304 (Array (_ BitVec 32) List!16126)) (size!12980 (_ BitVec 32))) )
))
(declare-datatypes ((array!5168 0))(
  ( (array!5169 (arr!2305 (Array (_ BitVec 32) (_ BitVec 64))) (size!12981 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2944 0))(
  ( (LongMapFixedSize!2945 (defaultEntry!1832 Int) (mask!4639 (_ BitVec 32)) (extraKeys!1719 (_ BitVec 32)) (zeroValue!1729 List!16126) (minValue!1729 List!16126) (_size!3025 (_ BitVec 32)) (_keys!1766 array!5168) (_values!1751 array!5166) (_vacant!1533 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5773 0))(
  ( (Cell!5774 (v!22868 LongMapFixedSize!2944)) )
))
(declare-datatypes ((MutLongMap!1472 0))(
  ( (LongMap!1472 (underlying!3153 Cell!5773)) (MutLongMapExt!1471 (__x!10016 Int)) )
))
(declare-datatypes ((Cell!5775 0))(
  ( (Cell!5776 (v!22869 MutLongMap!1472)) )
))
(declare-datatypes ((Hashable!1416 0))(
  ( (HashableExt!1415 (__x!10017 Int)) )
))
(declare-datatypes ((MutableMap!1416 0))(
  ( (MutableMapExt!1415 (__x!10018 Int)) (HashMap!1416 (underlying!3154 Cell!5775) (hashF!3335 Hashable!1416) (_size!3026 (_ BitVec 32)) (defaultValue!1576 Int)) )
))
(declare-datatypes ((tuple3!1354 0))(
  ( (tuple3!1355 (_1!8471 Regex!4157) (_2!8471 Context!1350) (_3!1013 C!8492)) )
))
(declare-datatypes ((tuple2!14916 0))(
  ( (tuple2!14917 (_1!8472 tuple3!1354) (_2!8472 (InoxSet Context!1350))) )
))
(declare-datatypes ((tuple2!14918 0))(
  ( (tuple2!14919 (_1!8473 Context!1350) (_2!8473 C!8492)) )
))
(declare-datatypes ((tuple2!14920 0))(
  ( (tuple2!14921 (_1!8474 tuple2!14918) (_2!8474 (InoxSet Context!1350))) )
))
(declare-datatypes ((List!16127 0))(
  ( (Nil!16059) (Cons!16059 (h!21460 tuple2!14920) (t!139401 List!16127)) )
))
(declare-datatypes ((array!5170 0))(
  ( (array!5171 (arr!2306 (Array (_ BitVec 32) List!16127)) (size!12982 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2946 0))(
  ( (LongMapFixedSize!2947 (defaultEntry!1833 Int) (mask!4640 (_ BitVec 32)) (extraKeys!1720 (_ BitVec 32)) (zeroValue!1730 List!16127) (minValue!1730 List!16127) (_size!3027 (_ BitVec 32)) (_keys!1767 array!5168) (_values!1752 array!5170) (_vacant!1534 (_ BitVec 32))) )
))
(declare-datatypes ((List!16128 0))(
  ( (Nil!16060) (Cons!16060 (h!21461 tuple2!14916) (t!139402 List!16128)) )
))
(declare-datatypes ((array!5172 0))(
  ( (array!5173 (arr!2307 (Array (_ BitVec 32) List!16128)) (size!12983 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2948 0))(
  ( (LongMapFixedSize!2949 (defaultEntry!1834 Int) (mask!4641 (_ BitVec 32)) (extraKeys!1721 (_ BitVec 32)) (zeroValue!1731 List!16128) (minValue!1731 List!16128) (_size!3028 (_ BitVec 32)) (_keys!1768 array!5168) (_values!1753 array!5172) (_vacant!1535 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5777 0))(
  ( (Cell!5778 (v!22870 LongMapFixedSize!2948)) )
))
(declare-datatypes ((MutLongMap!1473 0))(
  ( (LongMap!1473 (underlying!3155 Cell!5777)) (MutLongMapExt!1472 (__x!10019 Int)) )
))
(declare-datatypes ((Cell!5779 0))(
  ( (Cell!5780 (v!22871 MutLongMap!1473)) )
))
(declare-datatypes ((Hashable!1417 0))(
  ( (HashableExt!1416 (__x!10020 Int)) )
))
(declare-datatypes ((MutableMap!1417 0))(
  ( (MutableMapExt!1416 (__x!10021 Int)) (HashMap!1417 (underlying!3156 Cell!5779) (hashF!3336 Hashable!1417) (_size!3029 (_ BitVec 32)) (defaultValue!1577 Int)) )
))
(declare-datatypes ((CacheDown!848 0))(
  ( (CacheDown!849 (cache!1797 MutableMap!1417)) )
))
(declare-datatypes ((CacheFurthestNullable!268 0))(
  ( (CacheFurthestNullable!269 (cache!1798 MutableMap!1416) (totalInput!2294 BalanceConc!10812)) )
))
(declare-datatypes ((Cell!5781 0))(
  ( (Cell!5782 (v!22872 LongMapFixedSize!2946)) )
))
(declare-datatypes ((MutLongMap!1474 0))(
  ( (LongMap!1474 (underlying!3157 Cell!5781)) (MutLongMapExt!1473 (__x!10022 Int)) )
))
(declare-datatypes ((Token!5346 0))(
  ( (Token!5347 (value!90657 TokenValue!2932) (rule!4635 Rule!5484) (size!12984 Int) (originalCharacters!3704 List!16123)) )
))
(declare-datatypes ((tuple2!14922 0))(
  ( (tuple2!14923 (_1!8475 Token!5346) (_2!8475 BalanceConc!10812)) )
))
(declare-datatypes ((Option!2928 0))(
  ( (None!2927) (Some!2927 (v!22873 tuple2!14922)) )
))
(declare-datatypes ((Hashable!1418 0))(
  ( (HashableExt!1417 (__x!10023 Int)) )
))
(declare-datatypes ((Cell!5783 0))(
  ( (Cell!5784 (v!22874 MutLongMap!1474)) )
))
(declare-datatypes ((MutableMap!1418 0))(
  ( (MutableMapExt!1417 (__x!10024 Int)) (HashMap!1418 (underlying!3158 Cell!5783) (hashF!3337 Hashable!1418) (_size!3030 (_ BitVec 32)) (defaultValue!1578 Int)) )
))
(declare-datatypes ((CacheUp!844 0))(
  ( (CacheUp!845 (cache!1799 MutableMap!1418)) )
))
(declare-datatypes ((tuple4!672 0))(
  ( (tuple4!673 (_1!8476 Option!2928) (_2!8476 CacheUp!844) (_3!1014 CacheDown!848) (_4!336 CacheFurthestNullable!268)) )
))
(declare-fun lt!525947 () tuple4!672)

(declare-fun valid!1175 (CacheUp!844) Bool)

(assert (=> b!1512272 (= res!680511 (not (valid!1175 (_2!8476 lt!525947))))))

(declare-fun b!1512273 () Bool)

(declare-fun e!967037 () Bool)

(declare-fun e!967059 () Bool)

(assert (=> b!1512273 (= e!967037 (not e!967059))))

(declare-fun res!680512 () Bool)

(assert (=> b!1512273 (=> res!680512 e!967059)))

(declare-fun lt!525963 () List!16123)

(declare-fun lt!525952 () List!16123)

(declare-fun isSuffix!301 (List!16123 List!16123) Bool)

(assert (=> b!1512273 (= res!680512 (not (isSuffix!301 lt!525963 lt!525952)))))

(declare-fun lt!525962 () List!16123)

(assert (=> b!1512273 (isSuffix!301 lt!525963 lt!525962)))

(declare-datatypes ((Unit!25741 0))(
  ( (Unit!25742) )
))
(declare-fun lt!525975 () Unit!25741)

(declare-fun lt!525950 () List!16123)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!279 (List!16123 List!16123) Unit!25741)

(assert (=> b!1512273 (= lt!525975 (lemmaConcatTwoListThenFSndIsSuffix!279 lt!525950 lt!525963))))

(declare-fun b!1512274 () Bool)

(declare-fun e!967051 () Bool)

(assert (=> b!1512274 (= e!967059 e!967051)))

(declare-fun res!680514 () Bool)

(assert (=> b!1512274 (=> res!680514 e!967051)))

(get-info :version)

(assert (=> b!1512274 (= res!680514 (not ((_ is Some!2927) (_1!8476 lt!525947))))))

(declare-fun cacheUp!616 () CacheUp!844)

(declare-fun input!1102 () BalanceConc!10812)

(declare-fun cacheFurthestNullable!64 () CacheFurthestNullable!268)

(declare-fun totalInput!458 () BalanceConc!10812)

(declare-fun cacheDown!629 () CacheDown!848)

(declare-fun maxPrefixZipperSequenceV3Mem!25 (LexerInterface!2495 List!16124 BalanceConc!10812 BalanceConc!10812 CacheUp!844 CacheDown!848 CacheFurthestNullable!268) tuple4!672)

(assert (=> b!1512274 (= lt!525947 (maxPrefixZipperSequenceV3Mem!25 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun b!1512275 () Bool)

(declare-fun e!967053 () Bool)

(assert (=> b!1512275 (= e!967027 e!967053)))

(declare-fun res!680515 () Bool)

(assert (=> b!1512275 (=> (not res!680515) (not e!967053))))

(assert (=> b!1512275 (= res!680515 (= lt!525952 lt!525962))))

(declare-fun ++!4351 (List!16123 List!16123) List!16123)

(assert (=> b!1512275 (= lt!525962 (++!4351 lt!525950 lt!525963))))

(declare-fun list!6342 (BalanceConc!10812) List!16123)

(assert (=> b!1512275 (= lt!525952 (list!6342 totalInput!458))))

(assert (=> b!1512275 (= lt!525963 (list!6342 input!1102))))

(assert (=> b!1512275 (= lt!525950 (list!6342 treated!70))))

(declare-fun b!1512276 () Bool)

(declare-fun res!680517 () Bool)

(assert (=> b!1512276 (=> (not res!680517) (not e!967037))))

(assert (=> b!1512276 (= res!680517 (valid!1175 cacheUp!616))))

(declare-fun b!1512277 () Bool)

(declare-fun e!967028 () Bool)

(declare-fun e!967049 () Bool)

(declare-fun lt!525966 () MutLongMap!1474)

(assert (=> b!1512277 (= e!967028 (and e!967049 ((_ is LongMap!1474) lt!525966)))))

(assert (=> b!1512277 (= lt!525966 (v!22874 (underlying!3158 (cache!1799 cacheUp!616))))))

(declare-fun b!1512278 () Bool)

(declare-fun e!967032 () Bool)

(declare-fun e!967057 () Bool)

(assert (=> b!1512278 (= e!967032 e!967057)))

(declare-fun b!1512279 () Bool)

(declare-datatypes ((List!16129 0))(
  ( (Nil!16061) (Cons!16061 (h!21462 Token!5346) (t!139403 List!16129)) )
))
(declare-datatypes ((IArray!10877 0))(
  ( (IArray!10878 (innerList!5496 List!16129)) )
))
(declare-datatypes ((Conc!5436 0))(
  ( (Node!5436 (left!13359 Conc!5436) (right!13689 Conc!5436) (csize!11102 Int) (cheight!5647 Int)) (Leaf!8060 (xs!8217 IArray!10877) (csize!11103 Int)) (Empty!5436) )
))
(declare-datatypes ((BalanceConc!10814 0))(
  ( (BalanceConc!10815 (c!247917 Conc!5436)) )
))
(declare-datatypes ((tuple2!14924 0))(
  ( (tuple2!14925 (_1!8477 BalanceConc!10814) (_2!8477 BalanceConc!10812)) )
))
(declare-fun e!967039 () tuple2!14924)

(assert (=> b!1512279 (= e!967039 (tuple2!14925 (BalanceConc!10815 Empty!5436) input!1102))))

(declare-fun b!1512280 () Bool)

(declare-fun e!967029 () Bool)

(declare-fun acc!392 () BalanceConc!10814)

(declare-fun tp!432390 () Bool)

(declare-fun inv!21286 (Conc!5436) Bool)

(assert (=> b!1512280 (= e!967029 (and (inv!21286 (c!247917 acc!392)) tp!432390))))

(declare-fun b!1512281 () Bool)

(declare-fun res!680506 () Bool)

(assert (=> b!1512281 (=> (not res!680506) (not e!967037))))

(declare-fun lt!525978 () tuple2!14924)

(declare-fun lt!525948 () tuple2!14924)

(assert (=> b!1512281 (= res!680506 (= (list!6342 (_2!8477 lt!525978)) (list!6342 (_2!8477 lt!525948))))))

(declare-fun b!1512282 () Bool)

(declare-fun e!967046 () Bool)

(declare-fun tp!432391 () Bool)

(assert (=> b!1512282 (= e!967046 (and e!967023 tp!432391))))

(declare-fun b!1512283 () Bool)

(assert (=> b!1512283 (= e!967049 e!967032)))

(declare-fun b!1512284 () Bool)

(declare-fun e!967030 () Bool)

(declare-fun e!967043 () Bool)

(assert (=> b!1512284 (= e!967030 e!967043)))

(declare-fun e!967041 () Bool)

(declare-fun e!967050 () Bool)

(declare-fun b!1512285 () Bool)

(declare-fun e!967056 () Bool)

(declare-fun inv!21287 (BalanceConc!10812) Bool)

(assert (=> b!1512285 (= e!967050 (and e!967041 (inv!21287 (totalInput!2294 cacheFurthestNullable!64)) e!967056))))

(declare-fun mapIsEmpty!6975 () Bool)

(declare-fun mapRes!6977 () Bool)

(assert (=> mapIsEmpty!6975 mapRes!6977))

(declare-fun mapIsEmpty!6976 () Bool)

(declare-fun mapRes!6975 () Bool)

(assert (=> mapIsEmpty!6976 mapRes!6975))

(declare-fun b!1512286 () Bool)

(declare-fun res!680509 () Bool)

(assert (=> b!1512286 (=> (not res!680509) (not e!967037))))

(assert (=> b!1512286 (= res!680509 (= (totalInput!2294 cacheFurthestNullable!64) totalInput!458))))

(declare-fun mapIsEmpty!6977 () Bool)

(declare-fun mapRes!6976 () Bool)

(assert (=> mapIsEmpty!6977 mapRes!6976))

(assert (=> b!1512287 (= e!967043 (and e!967028 tp!432401))))

(declare-fun b!1512288 () Bool)

(declare-fun e!967034 () Bool)

(declare-fun e!967026 () Bool)

(assert (=> b!1512288 (= e!967034 e!967026)))

(declare-fun b!1512289 () Bool)

(declare-fun e!967048 () Bool)

(declare-fun e!967036 () Bool)

(declare-fun lt!525964 () MutLongMap!1473)

(assert (=> b!1512289 (= e!967048 (and e!967036 ((_ is LongMap!1473) lt!525964)))))

(assert (=> b!1512289 (= lt!525964 (v!22871 (underlying!3156 (cache!1797 cacheDown!629))))))

(declare-fun b!1512290 () Bool)

(declare-fun res!680508 () Bool)

(assert (=> b!1512290 (=> (not res!680508) (not e!967027))))

(declare-fun isEmpty!9925 (List!16124) Bool)

(assert (=> b!1512290 (= res!680508 (not (isEmpty!9925 rules!1640)))))

(declare-fun b!1512291 () Bool)

(declare-fun lt!525973 () tuple2!14924)

(declare-fun lt!525976 () Option!2928)

(declare-fun prepend!463 (BalanceConc!10814 Token!5346) BalanceConc!10814)

(assert (=> b!1512291 (= e!967039 (tuple2!14925 (prepend!463 (_1!8477 lt!525973) (_1!8475 (v!22873 lt!525976))) (_2!8477 lt!525973)))))

(declare-fun lexRec!330 (LexerInterface!2495 List!16124 BalanceConc!10812) tuple2!14924)

(assert (=> b!1512291 (= lt!525973 (lexRec!330 thiss!13241 rules!1640 (_2!8475 (v!22873 lt!525976))))))

(declare-fun b!1512269 () Bool)

(declare-fun e!967019 () Bool)

(declare-fun lt!525974 () tuple2!14924)

(declare-fun lt!525961 () BalanceConc!10812)

(assert (=> b!1512269 (= e!967019 (= lt!525974 (tuple2!14925 (BalanceConc!10815 Empty!5436) lt!525961)))))

(declare-fun res!680504 () Bool)

(assert (=> start!141116 (=> (not res!680504) (not e!967027))))

(assert (=> start!141116 (= res!680504 ((_ is Lexer!2493) thiss!13241))))

(assert (=> start!141116 e!967027))

(declare-fun inv!21288 (BalanceConc!10814) Bool)

(assert (=> start!141116 (and (inv!21288 acc!392) e!967029)))

(declare-fun inv!21289 (CacheUp!844) Bool)

(assert (=> start!141116 (and (inv!21289 cacheUp!616) e!967030)))

(declare-fun inv!21290 (CacheDown!848) Bool)

(assert (=> start!141116 (and (inv!21290 cacheDown!629) e!967035)))

(declare-fun e!967052 () Bool)

(assert (=> start!141116 (and (inv!21287 input!1102) e!967052)))

(assert (=> start!141116 (and (inv!21287 treated!70) e!967055)))

(assert (=> start!141116 true))

(assert (=> start!141116 e!967046))

(declare-fun inv!21291 (CacheFurthestNullable!268) Bool)

(assert (=> start!141116 (and (inv!21291 cacheFurthestNullable!64) e!967050)))

(declare-fun e!967031 () Bool)

(assert (=> start!141116 (and (inv!21287 totalInput!458) e!967031)))

(declare-fun b!1512292 () Bool)

(declare-fun res!680513 () Bool)

(declare-fun e!967025 () Bool)

(assert (=> b!1512292 (=> (not res!680513) (not e!967025))))

(declare-fun lt!525965 () tuple2!14924)

(declare-fun isEmpty!9926 (List!16123) Bool)

(assert (=> b!1512292 (= res!680513 (isEmpty!9926 (list!6342 (_2!8477 lt!525965))))))

(declare-fun b!1512293 () Bool)

(declare-fun res!680510 () Bool)

(assert (=> b!1512293 (=> res!680510 e!967060)))

(declare-fun valid!1176 (CacheFurthestNullable!268) Bool)

(assert (=> b!1512293 (= res!680510 (not (valid!1176 (_4!336 lt!525947))))))

(declare-fun b!1512294 () Bool)

(declare-fun res!680520 () Bool)

(assert (=> b!1512294 (=> (not res!680520) (not e!967037))))

(assert (=> b!1512294 (= res!680520 (valid!1176 cacheFurthestNullable!64))))

(declare-fun e!967033 () Bool)

(assert (=> b!1512295 (= e!967041 (and e!967033 tp!432395))))

(declare-fun e!967022 () Bool)

(declare-fun tp!432384 () Bool)

(declare-fun tp!432392 () Bool)

(declare-fun array_inv!1665 (array!5168) Bool)

(declare-fun array_inv!1666 (array!5170) Bool)

(assert (=> b!1512296 (= e!967057 (and tp!432411 tp!432392 tp!432384 (array_inv!1665 (_keys!1767 (v!22872 (underlying!3157 (v!22874 (underlying!3158 (cache!1799 cacheUp!616))))))) (array_inv!1666 (_values!1752 (v!22872 (underlying!3157 (v!22874 (underlying!3158 (cache!1799 cacheUp!616))))))) e!967022))))

(declare-fun b!1512297 () Bool)

(declare-fun e!967045 () Bool)

(declare-fun e!967040 () Bool)

(assert (=> b!1512297 (= e!967045 e!967040)))

(declare-fun b!1512298 () Bool)

(declare-fun res!680516 () Bool)

(assert (=> b!1512298 (=> (not res!680516) (not e!967037))))

(declare-fun valid!1177 (CacheDown!848) Bool)

(assert (=> b!1512298 (= res!680516 (valid!1177 cacheDown!629))))

(declare-fun b!1512299 () Bool)

(declare-fun tp!432404 () Bool)

(assert (=> b!1512299 (= e!967022 (and tp!432404 mapRes!6977))))

(declare-fun condMapEmpty!6977 () Bool)

(declare-fun mapDefault!6977 () List!16127)

(assert (=> b!1512299 (= condMapEmpty!6977 (= (arr!2306 (_values!1752 (v!22872 (underlying!3157 (v!22874 (underlying!3158 (cache!1799 cacheUp!616))))))) ((as const (Array (_ BitVec 32) List!16127)) mapDefault!6977)))))

(declare-fun mapNonEmpty!6975 () Bool)

(declare-fun tp!432402 () Bool)

(declare-fun tp!432406 () Bool)

(assert (=> mapNonEmpty!6975 (= mapRes!6975 (and tp!432402 tp!432406))))

(declare-fun mapKey!6976 () (_ BitVec 32))

(declare-fun mapRest!6976 () (Array (_ BitVec 32) List!16126))

(declare-fun mapValue!6975 () List!16126)

(assert (=> mapNonEmpty!6975 (= (arr!2304 (_values!1751 (v!22868 (underlying!3153 (v!22869 (underlying!3154 (cache!1798 cacheFurthestNullable!64))))))) (store mapRest!6976 mapKey!6976 mapValue!6975))))

(declare-fun b!1512300 () Bool)

(declare-fun e!967021 () Bool)

(assert (=> b!1512300 (= e!967021 e!967034)))

(declare-fun tp!432393 () Bool)

(declare-fun e!967047 () Bool)

(declare-fun tp!432398 () Bool)

(declare-fun array_inv!1667 (array!5166) Bool)

(assert (=> b!1512301 (= e!967026 (and tp!432409 tp!432393 tp!432398 (array_inv!1665 (_keys!1766 (v!22868 (underlying!3153 (v!22869 (underlying!3154 (cache!1798 cacheFurthestNullable!64))))))) (array_inv!1667 (_values!1751 (v!22868 (underlying!3153 (v!22869 (underlying!3154 (cache!1798 cacheFurthestNullable!64))))))) e!967047))))

(declare-fun b!1512302 () Bool)

(declare-fun tp!432400 () Bool)

(assert (=> b!1512302 (= e!967056 (and (inv!21285 (c!247915 (totalInput!2294 cacheFurthestNullable!64))) tp!432400))))

(declare-fun b!1512303 () Bool)

(declare-fun tp!432394 () Bool)

(assert (=> b!1512303 (= e!967047 (and tp!432394 mapRes!6975))))

(declare-fun condMapEmpty!6975 () Bool)

(declare-fun mapDefault!6976 () List!16126)

(assert (=> b!1512303 (= condMapEmpty!6975 (= (arr!2304 (_values!1751 (v!22868 (underlying!3153 (v!22869 (underlying!3154 (cache!1798 cacheFurthestNullable!64))))))) ((as const (Array (_ BitVec 32) List!16126)) mapDefault!6976)))))

(declare-fun b!1512304 () Bool)

(assert (=> b!1512304 (= e!967053 e!967025)))

(declare-fun res!680505 () Bool)

(assert (=> b!1512304 (=> (not res!680505) (not e!967025))))

(declare-fun lt!525954 () List!16129)

(declare-fun lt!525960 () List!16129)

(assert (=> b!1512304 (= res!680505 (= lt!525954 lt!525960))))

(declare-fun list!6343 (BalanceConc!10814) List!16129)

(assert (=> b!1512304 (= lt!525960 (list!6343 acc!392))))

(assert (=> b!1512304 (= lt!525954 (list!6343 (_1!8477 lt!525965)))))

(assert (=> b!1512304 (= lt!525965 (lexRec!330 thiss!13241 rules!1640 treated!70))))

(declare-fun b!1512305 () Bool)

(assert (=> b!1512305 (= e!967025 e!967037)))

(declare-fun res!680519 () Bool)

(assert (=> b!1512305 (=> (not res!680519) (not e!967037))))

(declare-fun ++!4352 (BalanceConc!10814 BalanceConc!10814) BalanceConc!10814)

(assert (=> b!1512305 (= res!680519 (= (list!6343 (_1!8477 lt!525978)) (list!6343 (++!4352 acc!392 (_1!8477 lt!525948)))))))

(assert (=> b!1512305 (= lt!525948 (lexRec!330 thiss!13241 rules!1640 input!1102))))

(assert (=> b!1512305 (= lt!525978 (lexRec!330 thiss!13241 rules!1640 totalInput!458))))

(declare-fun mapNonEmpty!6976 () Bool)

(declare-fun tp!432408 () Bool)

(declare-fun tp!432410 () Bool)

(assert (=> mapNonEmpty!6976 (= mapRes!6976 (and tp!432408 tp!432410))))

(declare-fun mapKey!6977 () (_ BitVec 32))

(declare-fun mapValue!6977 () List!16128)

(declare-fun mapRest!6977 () (Array (_ BitVec 32) List!16128))

(assert (=> mapNonEmpty!6976 (= (arr!2307 (_values!1753 (v!22870 (underlying!3155 (v!22871 (underlying!3156 (cache!1797 cacheDown!629))))))) (store mapRest!6977 mapKey!6977 mapValue!6977))))

(declare-fun mapNonEmpty!6977 () Bool)

(declare-fun tp!432382 () Bool)

(declare-fun tp!432387 () Bool)

(assert (=> mapNonEmpty!6977 (= mapRes!6977 (and tp!432382 tp!432387))))

(declare-fun mapRest!6975 () (Array (_ BitVec 32) List!16127))

(declare-fun mapValue!6976 () List!16127)

(declare-fun mapKey!6975 () (_ BitVec 32))

(assert (=> mapNonEmpty!6977 (= (arr!2306 (_values!1752 (v!22872 (underlying!3157 (v!22874 (underlying!3158 (cache!1799 cacheUp!616))))))) (store mapRest!6975 mapKey!6975 mapValue!6976))))

(declare-fun b!1512306 () Bool)

(declare-fun lt!525969 () MutLongMap!1472)

(assert (=> b!1512306 (= e!967033 (and e!967021 ((_ is LongMap!1472) lt!525969)))))

(assert (=> b!1512306 (= lt!525969 (v!22869 (underlying!3154 (cache!1798 cacheFurthestNullable!64))))))

(assert (=> b!1512307 (= e!967024 (and e!967048 tp!432386))))

(declare-fun tp!432403 () Bool)

(declare-fun e!967038 () Bool)

(declare-fun tp!432389 () Bool)

(declare-fun array_inv!1668 (array!5172) Bool)

(assert (=> b!1512308 (= e!967040 (and tp!432407 tp!432389 tp!432403 (array_inv!1665 (_keys!1768 (v!22870 (underlying!3155 (v!22871 (underlying!3156 (cache!1797 cacheDown!629))))))) (array_inv!1668 (_values!1753 (v!22870 (underlying!3155 (v!22871 (underlying!3156 (cache!1797 cacheDown!629))))))) e!967038))))

(declare-fun b!1512309 () Bool)

(assert (=> b!1512309 (= e!967060 (valid!1177 (_3!1014 lt!525947)))))

(declare-fun b!1512310 () Bool)

(assert (=> b!1512310 (= e!967036 e!967045)))

(declare-fun b!1512311 () Bool)

(declare-fun tp!432383 () Bool)

(assert (=> b!1512311 (= e!967052 (and (inv!21285 (c!247915 input!1102)) tp!432383))))

(declare-fun b!1512312 () Bool)

(declare-fun lt!525979 () tuple2!14924)

(declare-fun lt!525953 () Option!2928)

(assert (=> b!1512312 (= e!967019 (= lt!525974 (tuple2!14925 (prepend!463 (_1!8477 lt!525979) (_1!8475 (v!22873 lt!525953))) (_2!8477 lt!525979))))))

(assert (=> b!1512312 (= lt!525979 (lexRec!330 thiss!13241 rules!1640 (_2!8475 (v!22873 lt!525953))))))

(declare-fun b!1512313 () Bool)

(assert (=> b!1512313 (= e!967051 e!967060)))

(declare-fun res!680518 () Bool)

(assert (=> b!1512313 (=> res!680518 e!967060)))

(declare-fun lt!525955 () List!16123)

(assert (=> b!1512313 (= res!680518 (not (isSuffix!301 lt!525955 lt!525952)))))

(declare-fun lt!525951 () List!16123)

(assert (=> b!1512313 (isSuffix!301 lt!525955 (++!4351 lt!525951 lt!525955))))

(declare-fun lt!525972 () Unit!25741)

(assert (=> b!1512313 (= lt!525972 (lemmaConcatTwoListThenFSndIsSuffix!279 lt!525951 lt!525955))))

(assert (=> b!1512313 (= lt!525951 (list!6342 lt!525961))))

(assert (=> b!1512313 e!967019))

(declare-fun c!247913 () Bool)

(assert (=> b!1512313 (= c!247913 ((_ is Some!2927) lt!525953))))

(assert (=> b!1512313 (= lt!525974 (lexRec!330 thiss!13241 rules!1640 lt!525961))))

(declare-fun maxPrefixZipperSequence!588 (LexerInterface!2495 List!16124 BalanceConc!10812) Option!2928)

(assert (=> b!1512313 (= lt!525953 (maxPrefixZipperSequence!588 thiss!13241 rules!1640 lt!525961))))

(declare-fun lt!525957 () BalanceConc!10812)

(declare-fun ++!4353 (BalanceConc!10812 BalanceConc!10812) BalanceConc!10812)

(assert (=> b!1512313 (= lt!525961 (++!4353 treated!70 lt!525957))))

(declare-fun lt!525959 () List!16123)

(declare-fun lt!525971 () List!16129)

(declare-datatypes ((tuple2!14926 0))(
  ( (tuple2!14927 (_1!8478 List!16129) (_2!8478 List!16123)) )
))
(declare-fun lexList!746 (LexerInterface!2495 List!16124 List!16123) tuple2!14926)

(assert (=> b!1512313 (= (lexList!746 thiss!13241 rules!1640 lt!525959) (tuple2!14927 lt!525971 Nil!16055))))

(declare-fun lt!525958 () List!16129)

(declare-fun lt!525968 () Unit!25741)

(declare-fun lt!525970 () tuple2!14924)

(declare-fun lemmaLexThenLexPrefix!228 (LexerInterface!2495 List!16124 List!16123 List!16123 List!16129 List!16129 List!16123) Unit!25741)

(assert (=> b!1512313 (= lt!525968 (lemmaLexThenLexPrefix!228 thiss!13241 rules!1640 lt!525959 lt!525955 lt!525971 lt!525958 (list!6342 (_2!8477 lt!525970))))))

(declare-fun append!500 (BalanceConc!10814 Token!5346) BalanceConc!10814)

(assert (=> b!1512313 (= lt!525971 (list!6343 (append!500 acc!392 (_1!8475 (v!22873 (_1!8476 lt!525947))))))))

(declare-fun lt!525967 () List!16129)

(declare-fun ++!4354 (List!16129 List!16129) List!16129)

(assert (=> b!1512313 (= (++!4354 (++!4354 lt!525960 lt!525967) lt!525958) (++!4354 lt!525960 (++!4354 lt!525967 lt!525958)))))

(declare-fun lt!525956 () Unit!25741)

(declare-fun lemmaConcatAssociativity!940 (List!16129 List!16129 List!16129) Unit!25741)

(assert (=> b!1512313 (= lt!525956 (lemmaConcatAssociativity!940 lt!525960 lt!525967 lt!525958))))

(assert (=> b!1512313 (= lt!525958 (list!6343 (_1!8477 lt!525970)))))

(assert (=> b!1512313 (= lt!525967 (Cons!16061 (_1!8475 (v!22873 (_1!8476 lt!525947))) Nil!16061))))

(assert (=> b!1512313 (= lt!525948 e!967039)))

(declare-fun c!247914 () Bool)

(assert (=> b!1512313 (= c!247914 ((_ is Some!2927) lt!525976))))

(assert (=> b!1512313 (= lt!525976 (maxPrefixZipperSequence!588 thiss!13241 rules!1640 input!1102))))

(declare-fun lt!525949 () List!16123)

(assert (=> b!1512313 (= (++!4351 lt!525959 lt!525955) (++!4351 lt!525950 (++!4351 lt!525949 lt!525955)))))

(assert (=> b!1512313 (= lt!525959 (++!4351 lt!525950 lt!525949))))

(declare-fun lt!525977 () Unit!25741)

(declare-fun lemmaConcatAssociativity!941 (List!16123 List!16123 List!16123) Unit!25741)

(assert (=> b!1512313 (= lt!525977 (lemmaConcatAssociativity!941 lt!525950 lt!525949 lt!525955))))

(assert (=> b!1512313 (= lt!525955 (list!6342 (_2!8475 (v!22873 (_1!8476 lt!525947)))))))

(assert (=> b!1512313 (= lt!525949 (list!6342 lt!525957))))

(declare-fun charsOf!1629 (Token!5346) BalanceConc!10812)

(assert (=> b!1512313 (= lt!525957 (charsOf!1629 (_1!8475 (v!22873 (_1!8476 lt!525947)))))))

(assert (=> b!1512313 (= lt!525970 (lexRec!330 thiss!13241 rules!1640 (_2!8475 (v!22873 (_1!8476 lt!525947)))))))

(declare-fun b!1512314 () Bool)

(declare-fun tp!432397 () Bool)

(assert (=> b!1512314 (= e!967038 (and tp!432397 mapRes!6976))))

(declare-fun condMapEmpty!6976 () Bool)

(declare-fun mapDefault!6975 () List!16128)

(assert (=> b!1512314 (= condMapEmpty!6976 (= (arr!2307 (_values!1753 (v!22870 (underlying!3155 (v!22871 (underlying!3156 (cache!1797 cacheDown!629))))))) ((as const (Array (_ BitVec 32) List!16128)) mapDefault!6975)))))

(declare-fun b!1512315 () Bool)

(declare-fun tp!432388 () Bool)

(assert (=> b!1512315 (= e!967031 (and (inv!21285 (c!247915 totalInput!458)) tp!432388))))

(assert (=> b!1512316 (= e!967054 (and tp!432399 tp!432385))))

(assert (= (and start!141116 res!680504) b!1512290))

(assert (= (and b!1512290 res!680508) b!1512271))

(assert (= (and b!1512271 res!680507) b!1512275))

(assert (= (and b!1512275 res!680515) b!1512304))

(assert (= (and b!1512304 res!680505) b!1512292))

(assert (= (and b!1512292 res!680513) b!1512305))

(assert (= (and b!1512305 res!680519) b!1512281))

(assert (= (and b!1512281 res!680506) b!1512276))

(assert (= (and b!1512276 res!680517) b!1512298))

(assert (= (and b!1512298 res!680516) b!1512294))

(assert (= (and b!1512294 res!680520) b!1512286))

(assert (= (and b!1512286 res!680509) b!1512273))

(assert (= (and b!1512273 (not res!680512)) b!1512274))

(assert (= (and b!1512274 (not res!680514)) b!1512313))

(assert (= (and b!1512313 c!247914) b!1512291))

(assert (= (and b!1512313 (not c!247914)) b!1512279))

(assert (= (and b!1512313 c!247913) b!1512312))

(assert (= (and b!1512313 (not c!247913)) b!1512269))

(assert (= (and b!1512313 (not res!680518)) b!1512293))

(assert (= (and b!1512293 (not res!680510)) b!1512272))

(assert (= (and b!1512272 (not res!680511)) b!1512309))

(assert (= start!141116 b!1512280))

(assert (= (and b!1512299 condMapEmpty!6977) mapIsEmpty!6975))

(assert (= (and b!1512299 (not condMapEmpty!6977)) mapNonEmpty!6977))

(assert (= b!1512296 b!1512299))

(assert (= b!1512278 b!1512296))

(assert (= b!1512283 b!1512278))

(assert (= (and b!1512277 ((_ is LongMap!1474) (v!22874 (underlying!3158 (cache!1799 cacheUp!616))))) b!1512283))

(assert (= b!1512287 b!1512277))

(assert (= (and b!1512284 ((_ is HashMap!1418) (cache!1799 cacheUp!616))) b!1512287))

(assert (= start!141116 b!1512284))

(assert (= (and b!1512314 condMapEmpty!6976) mapIsEmpty!6977))

(assert (= (and b!1512314 (not condMapEmpty!6976)) mapNonEmpty!6976))

(assert (= b!1512308 b!1512314))

(assert (= b!1512297 b!1512308))

(assert (= b!1512310 b!1512297))

(assert (= (and b!1512289 ((_ is LongMap!1473) (v!22871 (underlying!3156 (cache!1797 cacheDown!629))))) b!1512310))

(assert (= b!1512307 b!1512289))

(assert (= (and b!1512268 ((_ is HashMap!1417) (cache!1797 cacheDown!629))) b!1512307))

(assert (= start!141116 b!1512268))

(assert (= start!141116 b!1512311))

(assert (= start!141116 b!1512270))

(assert (= b!1512267 b!1512316))

(assert (= b!1512282 b!1512267))

(assert (= (and start!141116 ((_ is Cons!16056) rules!1640)) b!1512282))

(assert (= (and b!1512303 condMapEmpty!6975) mapIsEmpty!6976))

(assert (= (and b!1512303 (not condMapEmpty!6975)) mapNonEmpty!6975))

(assert (= b!1512301 b!1512303))

(assert (= b!1512288 b!1512301))

(assert (= b!1512300 b!1512288))

(assert (= (and b!1512306 ((_ is LongMap!1472) (v!22869 (underlying!3154 (cache!1798 cacheFurthestNullable!64))))) b!1512300))

(assert (= b!1512295 b!1512306))

(assert (= (and b!1512285 ((_ is HashMap!1416) (cache!1798 cacheFurthestNullable!64))) b!1512295))

(assert (= b!1512285 b!1512302))

(assert (= start!141116 b!1512285))

(assert (= start!141116 b!1512315))

(declare-fun m!1776196 () Bool)

(assert (=> mapNonEmpty!6977 m!1776196))

(declare-fun m!1776198 () Bool)

(assert (=> b!1512311 m!1776198))

(declare-fun m!1776200 () Bool)

(assert (=> b!1512304 m!1776200))

(declare-fun m!1776202 () Bool)

(assert (=> b!1512304 m!1776202))

(declare-fun m!1776204 () Bool)

(assert (=> b!1512304 m!1776204))

(declare-fun m!1776206 () Bool)

(assert (=> b!1512296 m!1776206))

(declare-fun m!1776208 () Bool)

(assert (=> b!1512296 m!1776208))

(declare-fun m!1776210 () Bool)

(assert (=> b!1512290 m!1776210))

(declare-fun m!1776212 () Bool)

(assert (=> b!1512281 m!1776212))

(declare-fun m!1776214 () Bool)

(assert (=> b!1512281 m!1776214))

(declare-fun m!1776216 () Bool)

(assert (=> b!1512293 m!1776216))

(declare-fun m!1776218 () Bool)

(assert (=> b!1512272 m!1776218))

(declare-fun m!1776220 () Bool)

(assert (=> b!1512294 m!1776220))

(declare-fun m!1776222 () Bool)

(assert (=> b!1512315 m!1776222))

(declare-fun m!1776224 () Bool)

(assert (=> mapNonEmpty!6976 m!1776224))

(declare-fun m!1776226 () Bool)

(assert (=> b!1512267 m!1776226))

(declare-fun m!1776228 () Bool)

(assert (=> b!1512267 m!1776228))

(declare-fun m!1776230 () Bool)

(assert (=> start!141116 m!1776230))

(declare-fun m!1776232 () Bool)

(assert (=> start!141116 m!1776232))

(declare-fun m!1776234 () Bool)

(assert (=> start!141116 m!1776234))

(declare-fun m!1776236 () Bool)

(assert (=> start!141116 m!1776236))

(declare-fun m!1776238 () Bool)

(assert (=> start!141116 m!1776238))

(declare-fun m!1776240 () Bool)

(assert (=> start!141116 m!1776240))

(declare-fun m!1776242 () Bool)

(assert (=> start!141116 m!1776242))

(declare-fun m!1776244 () Bool)

(assert (=> b!1512312 m!1776244))

(declare-fun m!1776246 () Bool)

(assert (=> b!1512312 m!1776246))

(declare-fun m!1776248 () Bool)

(assert (=> b!1512298 m!1776248))

(declare-fun m!1776250 () Bool)

(assert (=> b!1512305 m!1776250))

(declare-fun m!1776252 () Bool)

(assert (=> b!1512305 m!1776252))

(declare-fun m!1776254 () Bool)

(assert (=> b!1512305 m!1776254))

(declare-fun m!1776256 () Bool)

(assert (=> b!1512305 m!1776256))

(declare-fun m!1776258 () Bool)

(assert (=> b!1512305 m!1776258))

(assert (=> b!1512305 m!1776250))

(declare-fun m!1776260 () Bool)

(assert (=> mapNonEmpty!6975 m!1776260))

(declare-fun m!1776262 () Bool)

(assert (=> b!1512276 m!1776262))

(declare-fun m!1776264 () Bool)

(assert (=> b!1512301 m!1776264))

(declare-fun m!1776266 () Bool)

(assert (=> b!1512301 m!1776266))

(declare-fun m!1776268 () Bool)

(assert (=> b!1512280 m!1776268))

(declare-fun m!1776270 () Bool)

(assert (=> b!1512308 m!1776270))

(declare-fun m!1776272 () Bool)

(assert (=> b!1512308 m!1776272))

(declare-fun m!1776274 () Bool)

(assert (=> b!1512271 m!1776274))

(declare-fun m!1776276 () Bool)

(assert (=> b!1512270 m!1776276))

(declare-fun m!1776278 () Bool)

(assert (=> b!1512292 m!1776278))

(assert (=> b!1512292 m!1776278))

(declare-fun m!1776280 () Bool)

(assert (=> b!1512292 m!1776280))

(declare-fun m!1776282 () Bool)

(assert (=> b!1512274 m!1776282))

(declare-fun m!1776284 () Bool)

(assert (=> b!1512273 m!1776284))

(declare-fun m!1776286 () Bool)

(assert (=> b!1512273 m!1776286))

(declare-fun m!1776288 () Bool)

(assert (=> b!1512273 m!1776288))

(declare-fun m!1776290 () Bool)

(assert (=> b!1512291 m!1776290))

(declare-fun m!1776292 () Bool)

(assert (=> b!1512291 m!1776292))

(declare-fun m!1776294 () Bool)

(assert (=> b!1512275 m!1776294))

(declare-fun m!1776296 () Bool)

(assert (=> b!1512275 m!1776296))

(declare-fun m!1776298 () Bool)

(assert (=> b!1512275 m!1776298))

(declare-fun m!1776300 () Bool)

(assert (=> b!1512275 m!1776300))

(declare-fun m!1776302 () Bool)

(assert (=> b!1512285 m!1776302))

(declare-fun m!1776304 () Bool)

(assert (=> b!1512313 m!1776304))

(declare-fun m!1776306 () Bool)

(assert (=> b!1512313 m!1776306))

(declare-fun m!1776308 () Bool)

(assert (=> b!1512313 m!1776308))

(declare-fun m!1776310 () Bool)

(assert (=> b!1512313 m!1776310))

(declare-fun m!1776312 () Bool)

(assert (=> b!1512313 m!1776312))

(declare-fun m!1776314 () Bool)

(assert (=> b!1512313 m!1776314))

(declare-fun m!1776316 () Bool)

(assert (=> b!1512313 m!1776316))

(declare-fun m!1776318 () Bool)

(assert (=> b!1512313 m!1776318))

(declare-fun m!1776320 () Bool)

(assert (=> b!1512313 m!1776320))

(declare-fun m!1776322 () Bool)

(assert (=> b!1512313 m!1776322))

(declare-fun m!1776324 () Bool)

(assert (=> b!1512313 m!1776324))

(declare-fun m!1776326 () Bool)

(assert (=> b!1512313 m!1776326))

(declare-fun m!1776328 () Bool)

(assert (=> b!1512313 m!1776328))

(declare-fun m!1776330 () Bool)

(assert (=> b!1512313 m!1776330))

(declare-fun m!1776332 () Bool)

(assert (=> b!1512313 m!1776332))

(assert (=> b!1512313 m!1776306))

(assert (=> b!1512313 m!1776322))

(declare-fun m!1776334 () Bool)

(assert (=> b!1512313 m!1776334))

(declare-fun m!1776336 () Bool)

(assert (=> b!1512313 m!1776336))

(declare-fun m!1776338 () Bool)

(assert (=> b!1512313 m!1776338))

(declare-fun m!1776340 () Bool)

(assert (=> b!1512313 m!1776340))

(declare-fun m!1776342 () Bool)

(assert (=> b!1512313 m!1776342))

(assert (=> b!1512313 m!1776318))

(declare-fun m!1776344 () Bool)

(assert (=> b!1512313 m!1776344))

(declare-fun m!1776346 () Bool)

(assert (=> b!1512313 m!1776346))

(declare-fun m!1776348 () Bool)

(assert (=> b!1512313 m!1776348))

(declare-fun m!1776350 () Bool)

(assert (=> b!1512313 m!1776350))

(assert (=> b!1512313 m!1776348))

(declare-fun m!1776352 () Bool)

(assert (=> b!1512313 m!1776352))

(declare-fun m!1776354 () Bool)

(assert (=> b!1512313 m!1776354))

(declare-fun m!1776356 () Bool)

(assert (=> b!1512313 m!1776356))

(declare-fun m!1776358 () Bool)

(assert (=> b!1512313 m!1776358))

(assert (=> b!1512313 m!1776316))

(declare-fun m!1776360 () Bool)

(assert (=> b!1512313 m!1776360))

(assert (=> b!1512313 m!1776330))

(declare-fun m!1776362 () Bool)

(assert (=> b!1512309 m!1776362))

(declare-fun m!1776364 () Bool)

(assert (=> b!1512302 m!1776364))

(check-sat b_and!105231 b_and!105227 b_and!105233 (not b!1512301) (not b!1512308) b_and!105239 (not b!1512272) (not b!1512309) (not b_next!39923) (not b!1512304) (not mapNonEmpty!6975) (not b_next!39929) (not b!1512273) (not b!1512276) (not b!1512313) (not b!1512314) (not b!1512293) (not b!1512271) (not b!1512281) (not b!1512274) (not start!141116) (not b!1512267) (not b!1512315) (not mapNonEmpty!6976) (not b!1512291) b_and!105229 (not b!1512270) (not b!1512294) b_and!105237 (not b!1512275) (not b!1512312) (not b_next!39921) (not b!1512296) (not b!1512305) (not b!1512282) (not b!1512302) (not b!1512292) b_and!105241 (not b!1512280) (not b_next!39925) (not b!1512290) (not b!1512311) (not b!1512298) (not b!1512285) (not b_next!39915) (not mapNonEmpty!6977) (not b!1512303) b_and!105235 (not b_next!39919) (not b_next!39917) (not b_next!39927) (not b!1512299))
(check-sat b_and!105231 b_and!105227 b_and!105233 b_and!105229 b_and!105239 b_and!105237 (not b_next!39921) (not b_next!39915) (not b_next!39923) (not b_next!39929) (not b_next!39927) b_and!105241 (not b_next!39925) b_and!105235 (not b_next!39919) (not b_next!39917))
(get-model)

(declare-fun d!447792 () Bool)

(declare-fun e!967063 () Bool)

(assert (=> d!447792 e!967063))

(declare-fun res!680525 () Bool)

(assert (=> d!447792 (=> (not res!680525) (not e!967063))))

(declare-fun isBalanced!1607 (Conc!5436) Bool)

(declare-fun prepend!464 (Conc!5436 Token!5346) Conc!5436)

(assert (=> d!447792 (= res!680525 (isBalanced!1607 (prepend!464 (c!247917 (_1!8477 lt!525973)) (_1!8475 (v!22873 lt!525976)))))))

(declare-fun lt!525982 () BalanceConc!10814)

(assert (=> d!447792 (= lt!525982 (BalanceConc!10815 (prepend!464 (c!247917 (_1!8477 lt!525973)) (_1!8475 (v!22873 lt!525976)))))))

(assert (=> d!447792 (= (prepend!463 (_1!8477 lt!525973) (_1!8475 (v!22873 lt!525976))) lt!525982)))

(declare-fun b!1512319 () Bool)

(assert (=> b!1512319 (= e!967063 (= (list!6343 lt!525982) (Cons!16061 (_1!8475 (v!22873 lt!525976)) (list!6343 (_1!8477 lt!525973)))))))

(assert (= (and d!447792 res!680525) b!1512319))

(declare-fun m!1776366 () Bool)

(assert (=> d!447792 m!1776366))

(assert (=> d!447792 m!1776366))

(declare-fun m!1776368 () Bool)

(assert (=> d!447792 m!1776368))

(declare-fun m!1776370 () Bool)

(assert (=> b!1512319 m!1776370))

(declare-fun m!1776372 () Bool)

(assert (=> b!1512319 m!1776372))

(assert (=> b!1512291 d!447792))

(declare-fun b!1512334 () Bool)

(declare-fun e!967073 () Bool)

(declare-fun e!967075 () Bool)

(assert (=> b!1512334 (= e!967073 e!967075)))

(declare-fun res!680534 () Bool)

(declare-fun lt!525990 () tuple2!14924)

(declare-fun size!12985 (BalanceConc!10812) Int)

(assert (=> b!1512334 (= res!680534 (< (size!12985 (_2!8477 lt!525990)) (size!12985 (_2!8475 (v!22873 lt!525976)))))))

(assert (=> b!1512334 (=> (not res!680534) (not e!967075))))

(declare-fun b!1512335 () Bool)

(declare-fun e!967074 () tuple2!14924)

(declare-fun lt!525989 () tuple2!14924)

(declare-fun lt!525991 () Option!2928)

(assert (=> b!1512335 (= e!967074 (tuple2!14925 (prepend!463 (_1!8477 lt!525989) (_1!8475 (v!22873 lt!525991))) (_2!8477 lt!525989)))))

(assert (=> b!1512335 (= lt!525989 (lexRec!330 thiss!13241 rules!1640 (_2!8475 (v!22873 lt!525991))))))

(declare-fun e!967072 () Bool)

(declare-fun b!1512336 () Bool)

(assert (=> b!1512336 (= e!967072 (= (list!6342 (_2!8477 lt!525990)) (_2!8478 (lexList!746 thiss!13241 rules!1640 (list!6342 (_2!8475 (v!22873 lt!525976)))))))))

(declare-fun b!1512337 () Bool)

(assert (=> b!1512337 (= e!967074 (tuple2!14925 (BalanceConc!10815 Empty!5436) (_2!8475 (v!22873 lt!525976))))))

(declare-fun d!447794 () Bool)

(assert (=> d!447794 e!967072))

(declare-fun res!680532 () Bool)

(assert (=> d!447794 (=> (not res!680532) (not e!967072))))

(assert (=> d!447794 (= res!680532 e!967073)))

(declare-fun c!247924 () Bool)

(declare-fun size!12986 (BalanceConc!10814) Int)

(assert (=> d!447794 (= c!247924 (> (size!12986 (_1!8477 lt!525990)) 0))))

(assert (=> d!447794 (= lt!525990 e!967074)))

(declare-fun c!247923 () Bool)

(assert (=> d!447794 (= c!247923 ((_ is Some!2927) lt!525991))))

(assert (=> d!447794 (= lt!525991 (maxPrefixZipperSequence!588 thiss!13241 rules!1640 (_2!8475 (v!22873 lt!525976))))))

(assert (=> d!447794 (= (lexRec!330 thiss!13241 rules!1640 (_2!8475 (v!22873 lt!525976))) lt!525990)))

(declare-fun b!1512338 () Bool)

(declare-fun isEmpty!9927 (BalanceConc!10814) Bool)

(assert (=> b!1512338 (= e!967075 (not (isEmpty!9927 (_1!8477 lt!525990))))))

(declare-fun b!1512339 () Bool)

(declare-fun res!680533 () Bool)

(assert (=> b!1512339 (=> (not res!680533) (not e!967072))))

(assert (=> b!1512339 (= res!680533 (= (list!6343 (_1!8477 lt!525990)) (_1!8478 (lexList!746 thiss!13241 rules!1640 (list!6342 (_2!8475 (v!22873 lt!525976)))))))))

(declare-fun b!1512340 () Bool)

(assert (=> b!1512340 (= e!967073 (= (list!6342 (_2!8477 lt!525990)) (list!6342 (_2!8475 (v!22873 lt!525976)))))))

(assert (= (and d!447794 c!247923) b!1512335))

(assert (= (and d!447794 (not c!247923)) b!1512337))

(assert (= (and d!447794 c!247924) b!1512334))

(assert (= (and d!447794 (not c!247924)) b!1512340))

(assert (= (and b!1512334 res!680534) b!1512338))

(assert (= (and d!447794 res!680532) b!1512339))

(assert (= (and b!1512339 res!680533) b!1512336))

(declare-fun m!1776374 () Bool)

(assert (=> b!1512336 m!1776374))

(declare-fun m!1776376 () Bool)

(assert (=> b!1512336 m!1776376))

(assert (=> b!1512336 m!1776376))

(declare-fun m!1776378 () Bool)

(assert (=> b!1512336 m!1776378))

(declare-fun m!1776380 () Bool)

(assert (=> b!1512338 m!1776380))

(declare-fun m!1776382 () Bool)

(assert (=> b!1512339 m!1776382))

(assert (=> b!1512339 m!1776376))

(assert (=> b!1512339 m!1776376))

(assert (=> b!1512339 m!1776378))

(declare-fun m!1776384 () Bool)

(assert (=> b!1512334 m!1776384))

(declare-fun m!1776386 () Bool)

(assert (=> b!1512334 m!1776386))

(declare-fun m!1776388 () Bool)

(assert (=> b!1512335 m!1776388))

(declare-fun m!1776390 () Bool)

(assert (=> b!1512335 m!1776390))

(declare-fun m!1776392 () Bool)

(assert (=> d!447794 m!1776392))

(declare-fun m!1776394 () Bool)

(assert (=> d!447794 m!1776394))

(assert (=> b!1512340 m!1776374))

(assert (=> b!1512340 m!1776376))

(assert (=> b!1512291 d!447794))

(declare-fun d!447796 () Bool)

(declare-fun validCacheMapDown!134 (MutableMap!1417) Bool)

(assert (=> d!447796 (= (valid!1177 (_3!1014 lt!525947)) (validCacheMapDown!134 (cache!1797 (_3!1014 lt!525947))))))

(declare-fun bs!364402 () Bool)

(assert (= bs!364402 d!447796))

(declare-fun m!1776396 () Bool)

(assert (=> bs!364402 m!1776396))

(assert (=> b!1512309 d!447796))

(declare-fun d!447798 () Bool)

(declare-fun validCacheMapUp!134 (MutableMap!1418) Bool)

(assert (=> d!447798 (= (valid!1175 (_2!8476 lt!525947)) (validCacheMapUp!134 (cache!1799 (_2!8476 lt!525947))))))

(declare-fun bs!364403 () Bool)

(assert (= bs!364403 d!447798))

(declare-fun m!1776398 () Bool)

(assert (=> bs!364403 m!1776398))

(assert (=> b!1512272 d!447798))

(declare-fun d!447800 () Bool)

(assert (=> d!447800 (= (isEmpty!9925 rules!1640) ((_ is Nil!16056) rules!1640))))

(assert (=> b!1512290 d!447800))

(declare-fun d!447802 () Bool)

(assert (=> d!447802 (= (array_inv!1665 (_keys!1768 (v!22870 (underlying!3155 (v!22871 (underlying!3156 (cache!1797 cacheDown!629))))))) (bvsge (size!12981 (_keys!1768 (v!22870 (underlying!3155 (v!22871 (underlying!3156 (cache!1797 cacheDown!629))))))) #b00000000000000000000000000000000))))

(assert (=> b!1512308 d!447802))

(declare-fun d!447804 () Bool)

(assert (=> d!447804 (= (array_inv!1668 (_values!1753 (v!22870 (underlying!3155 (v!22871 (underlying!3156 (cache!1797 cacheDown!629))))))) (bvsge (size!12983 (_values!1753 (v!22870 (underlying!3155 (v!22871 (underlying!3156 (cache!1797 cacheDown!629))))))) #b00000000000000000000000000000000))))

(assert (=> b!1512308 d!447804))

(declare-fun d!447806 () Bool)

(declare-fun res!680537 () Bool)

(declare-fun e!967078 () Bool)

(assert (=> d!447806 (=> (not res!680537) (not e!967078))))

(declare-fun rulesValid!1041 (LexerInterface!2495 List!16124) Bool)

(assert (=> d!447806 (= res!680537 (rulesValid!1041 thiss!13241 rules!1640))))

(assert (=> d!447806 (= (rulesInvariant!2269 thiss!13241 rules!1640) e!967078)))

(declare-fun b!1512343 () Bool)

(declare-datatypes ((List!16130 0))(
  ( (Nil!16062) (Cons!16062 (h!21463 String!18922) (t!139408 List!16130)) )
))
(declare-fun noDuplicateTag!1041 (LexerInterface!2495 List!16124 List!16130) Bool)

(assert (=> b!1512343 (= e!967078 (noDuplicateTag!1041 thiss!13241 rules!1640 Nil!16062))))

(assert (= (and d!447806 res!680537) b!1512343))

(declare-fun m!1776400 () Bool)

(assert (=> d!447806 m!1776400))

(declare-fun m!1776402 () Bool)

(assert (=> b!1512343 m!1776402))

(assert (=> b!1512271 d!447806))

(declare-fun d!447808 () Bool)

(declare-fun c!247927 () Bool)

(assert (=> d!447808 (= c!247927 ((_ is Node!5435) (c!247915 treated!70)))))

(declare-fun e!967083 () Bool)

(assert (=> d!447808 (= (inv!21285 (c!247915 treated!70)) e!967083)))

(declare-fun b!1512350 () Bool)

(declare-fun inv!21292 (Conc!5435) Bool)

(assert (=> b!1512350 (= e!967083 (inv!21292 (c!247915 treated!70)))))

(declare-fun b!1512351 () Bool)

(declare-fun e!967084 () Bool)

(assert (=> b!1512351 (= e!967083 e!967084)))

(declare-fun res!680540 () Bool)

(assert (=> b!1512351 (= res!680540 (not ((_ is Leaf!8059) (c!247915 treated!70))))))

(assert (=> b!1512351 (=> res!680540 e!967084)))

(declare-fun b!1512352 () Bool)

(declare-fun inv!21293 (Conc!5435) Bool)

(assert (=> b!1512352 (= e!967084 (inv!21293 (c!247915 treated!70)))))

(assert (= (and d!447808 c!247927) b!1512350))

(assert (= (and d!447808 (not c!247927)) b!1512351))

(assert (= (and b!1512351 (not res!680540)) b!1512352))

(declare-fun m!1776404 () Bool)

(assert (=> b!1512350 m!1776404))

(declare-fun m!1776406 () Bool)

(assert (=> b!1512352 m!1776406))

(assert (=> b!1512270 d!447808))

(declare-fun d!447810 () Bool)

(declare-fun isBalanced!1608 (Conc!5435) Bool)

(assert (=> d!447810 (= (inv!21287 treated!70) (isBalanced!1608 (c!247915 treated!70)))))

(declare-fun bs!364404 () Bool)

(assert (= bs!364404 d!447810))

(declare-fun m!1776408 () Bool)

(assert (=> bs!364404 m!1776408))

(assert (=> start!141116 d!447810))

(declare-fun d!447812 () Bool)

(assert (=> d!447812 (= (inv!21287 input!1102) (isBalanced!1608 (c!247915 input!1102)))))

(declare-fun bs!364405 () Bool)

(assert (= bs!364405 d!447812))

(declare-fun m!1776410 () Bool)

(assert (=> bs!364405 m!1776410))

(assert (=> start!141116 d!447812))

(declare-fun d!447814 () Bool)

(declare-fun res!680543 () Bool)

(declare-fun e!967087 () Bool)

(assert (=> d!447814 (=> (not res!680543) (not e!967087))))

(assert (=> d!447814 (= res!680543 ((_ is HashMap!1416) (cache!1798 cacheFurthestNullable!64)))))

(assert (=> d!447814 (= (inv!21291 cacheFurthestNullable!64) e!967087)))

(declare-fun b!1512355 () Bool)

(declare-fun validCacheMapFurthestNullable!47 (MutableMap!1416 BalanceConc!10812) Bool)

(assert (=> b!1512355 (= e!967087 (validCacheMapFurthestNullable!47 (cache!1798 cacheFurthestNullable!64) (totalInput!2294 cacheFurthestNullable!64)))))

(assert (= (and d!447814 res!680543) b!1512355))

(declare-fun m!1776412 () Bool)

(assert (=> b!1512355 m!1776412))

(assert (=> start!141116 d!447814))

(declare-fun d!447816 () Bool)

(declare-fun res!680546 () Bool)

(declare-fun e!967090 () Bool)

(assert (=> d!447816 (=> (not res!680546) (not e!967090))))

(assert (=> d!447816 (= res!680546 ((_ is HashMap!1417) (cache!1797 cacheDown!629)))))

(assert (=> d!447816 (= (inv!21290 cacheDown!629) e!967090)))

(declare-fun b!1512358 () Bool)

(assert (=> b!1512358 (= e!967090 (validCacheMapDown!134 (cache!1797 cacheDown!629)))))

(assert (= (and d!447816 res!680546) b!1512358))

(declare-fun m!1776414 () Bool)

(assert (=> b!1512358 m!1776414))

(assert (=> start!141116 d!447816))

(declare-fun d!447818 () Bool)

(assert (=> d!447818 (= (inv!21287 totalInput!458) (isBalanced!1608 (c!247915 totalInput!458)))))

(declare-fun bs!364406 () Bool)

(assert (= bs!364406 d!447818))

(declare-fun m!1776416 () Bool)

(assert (=> bs!364406 m!1776416))

(assert (=> start!141116 d!447818))

(declare-fun d!447820 () Bool)

(assert (=> d!447820 (= (inv!21288 acc!392) (isBalanced!1607 (c!247917 acc!392)))))

(declare-fun bs!364407 () Bool)

(assert (= bs!364407 d!447820))

(declare-fun m!1776418 () Bool)

(assert (=> bs!364407 m!1776418))

(assert (=> start!141116 d!447820))

(declare-fun d!447822 () Bool)

(declare-fun res!680549 () Bool)

(declare-fun e!967093 () Bool)

(assert (=> d!447822 (=> (not res!680549) (not e!967093))))

(assert (=> d!447822 (= res!680549 ((_ is HashMap!1418) (cache!1799 cacheUp!616)))))

(assert (=> d!447822 (= (inv!21289 cacheUp!616) e!967093)))

(declare-fun b!1512361 () Bool)

(assert (=> b!1512361 (= e!967093 (validCacheMapUp!134 (cache!1799 cacheUp!616)))))

(assert (= (and d!447822 res!680549) b!1512361))

(declare-fun m!1776420 () Bool)

(assert (=> b!1512361 m!1776420))

(assert (=> start!141116 d!447822))

(declare-fun d!447824 () Bool)

(assert (=> d!447824 (= (inv!21280 (tag!3106 (h!21457 rules!1640))) (= (mod (str.len (value!90656 (tag!3106 (h!21457 rules!1640)))) 2) 0))))

(assert (=> b!1512267 d!447824))

(declare-fun d!447826 () Bool)

(declare-fun res!680552 () Bool)

(declare-fun e!967096 () Bool)

(assert (=> d!447826 (=> (not res!680552) (not e!967096))))

(declare-fun semiInverseModEq!1070 (Int Int) Bool)

(assert (=> d!447826 (= res!680552 (semiInverseModEq!1070 (toChars!4050 (transformation!2842 (h!21457 rules!1640))) (toValue!4191 (transformation!2842 (h!21457 rules!1640)))))))

(assert (=> d!447826 (= (inv!21284 (transformation!2842 (h!21457 rules!1640))) e!967096)))

(declare-fun b!1512364 () Bool)

(declare-fun equivClasses!1029 (Int Int) Bool)

(assert (=> b!1512364 (= e!967096 (equivClasses!1029 (toChars!4050 (transformation!2842 (h!21457 rules!1640))) (toValue!4191 (transformation!2842 (h!21457 rules!1640)))))))

(assert (= (and d!447826 res!680552) b!1512364))

(declare-fun m!1776422 () Bool)

(assert (=> d!447826 m!1776422))

(declare-fun m!1776424 () Bool)

(assert (=> b!1512364 m!1776424))

(assert (=> b!1512267 d!447826))

(declare-fun b!1512365 () Bool)

(declare-fun e!967098 () Bool)

(declare-fun e!967100 () Bool)

(assert (=> b!1512365 (= e!967098 e!967100)))

(declare-fun res!680555 () Bool)

(declare-fun lt!525993 () tuple2!14924)

(assert (=> b!1512365 (= res!680555 (< (size!12985 (_2!8477 lt!525993)) (size!12985 totalInput!458)))))

(assert (=> b!1512365 (=> (not res!680555) (not e!967100))))

(declare-fun b!1512366 () Bool)

(declare-fun e!967099 () tuple2!14924)

(declare-fun lt!525992 () tuple2!14924)

(declare-fun lt!525994 () Option!2928)

(assert (=> b!1512366 (= e!967099 (tuple2!14925 (prepend!463 (_1!8477 lt!525992) (_1!8475 (v!22873 lt!525994))) (_2!8477 lt!525992)))))

(assert (=> b!1512366 (= lt!525992 (lexRec!330 thiss!13241 rules!1640 (_2!8475 (v!22873 lt!525994))))))

(declare-fun e!967097 () Bool)

(declare-fun b!1512367 () Bool)

(assert (=> b!1512367 (= e!967097 (= (list!6342 (_2!8477 lt!525993)) (_2!8478 (lexList!746 thiss!13241 rules!1640 (list!6342 totalInput!458)))))))

(declare-fun b!1512368 () Bool)

(assert (=> b!1512368 (= e!967099 (tuple2!14925 (BalanceConc!10815 Empty!5436) totalInput!458))))

(declare-fun d!447828 () Bool)

(assert (=> d!447828 e!967097))

(declare-fun res!680553 () Bool)

(assert (=> d!447828 (=> (not res!680553) (not e!967097))))

(assert (=> d!447828 (= res!680553 e!967098)))

(declare-fun c!247929 () Bool)

(assert (=> d!447828 (= c!247929 (> (size!12986 (_1!8477 lt!525993)) 0))))

(assert (=> d!447828 (= lt!525993 e!967099)))

(declare-fun c!247928 () Bool)

(assert (=> d!447828 (= c!247928 ((_ is Some!2927) lt!525994))))

(assert (=> d!447828 (= lt!525994 (maxPrefixZipperSequence!588 thiss!13241 rules!1640 totalInput!458))))

(assert (=> d!447828 (= (lexRec!330 thiss!13241 rules!1640 totalInput!458) lt!525993)))

(declare-fun b!1512369 () Bool)

(assert (=> b!1512369 (= e!967100 (not (isEmpty!9927 (_1!8477 lt!525993))))))

(declare-fun b!1512370 () Bool)

(declare-fun res!680554 () Bool)

(assert (=> b!1512370 (=> (not res!680554) (not e!967097))))

(assert (=> b!1512370 (= res!680554 (= (list!6343 (_1!8477 lt!525993)) (_1!8478 (lexList!746 thiss!13241 rules!1640 (list!6342 totalInput!458)))))))

(declare-fun b!1512371 () Bool)

(assert (=> b!1512371 (= e!967098 (= (list!6342 (_2!8477 lt!525993)) (list!6342 totalInput!458)))))

(assert (= (and d!447828 c!247928) b!1512366))

(assert (= (and d!447828 (not c!247928)) b!1512368))

(assert (= (and d!447828 c!247929) b!1512365))

(assert (= (and d!447828 (not c!247929)) b!1512371))

(assert (= (and b!1512365 res!680555) b!1512369))

(assert (= (and d!447828 res!680553) b!1512370))

(assert (= (and b!1512370 res!680554) b!1512367))

(declare-fun m!1776426 () Bool)

(assert (=> b!1512367 m!1776426))

(assert (=> b!1512367 m!1776296))

(assert (=> b!1512367 m!1776296))

(declare-fun m!1776428 () Bool)

(assert (=> b!1512367 m!1776428))

(declare-fun m!1776430 () Bool)

(assert (=> b!1512369 m!1776430))

(declare-fun m!1776432 () Bool)

(assert (=> b!1512370 m!1776432))

(assert (=> b!1512370 m!1776296))

(assert (=> b!1512370 m!1776296))

(assert (=> b!1512370 m!1776428))

(declare-fun m!1776434 () Bool)

(assert (=> b!1512365 m!1776434))

(declare-fun m!1776436 () Bool)

(assert (=> b!1512365 m!1776436))

(declare-fun m!1776438 () Bool)

(assert (=> b!1512366 m!1776438))

(declare-fun m!1776440 () Bool)

(assert (=> b!1512366 m!1776440))

(declare-fun m!1776442 () Bool)

(assert (=> d!447828 m!1776442))

(declare-fun m!1776444 () Bool)

(assert (=> d!447828 m!1776444))

(assert (=> b!1512371 m!1776426))

(assert (=> b!1512371 m!1776296))

(assert (=> b!1512305 d!447828))

(declare-fun b!1512382 () Bool)

(declare-fun res!680566 () Bool)

(declare-fun e!967103 () Bool)

(assert (=> b!1512382 (=> (not res!680566) (not e!967103))))

(declare-fun height!809 (Conc!5436) Int)

(declare-fun ++!4355 (Conc!5436 Conc!5436) Conc!5436)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1512382 (= res!680566 (>= (height!809 (++!4355 (c!247917 acc!392) (c!247917 (_1!8477 lt!525948)))) (max!0 (height!809 (c!247917 acc!392)) (height!809 (c!247917 (_1!8477 lt!525948))))))))

(declare-fun d!447830 () Bool)

(assert (=> d!447830 e!967103))

(declare-fun res!680564 () Bool)

(assert (=> d!447830 (=> (not res!680564) (not e!967103))))

(declare-fun appendAssocInst!367 (Conc!5436 Conc!5436) Bool)

(assert (=> d!447830 (= res!680564 (appendAssocInst!367 (c!247917 acc!392) (c!247917 (_1!8477 lt!525948))))))

(declare-fun lt!525997 () BalanceConc!10814)

(assert (=> d!447830 (= lt!525997 (BalanceConc!10815 (++!4355 (c!247917 acc!392) (c!247917 (_1!8477 lt!525948)))))))

(assert (=> d!447830 (= (++!4352 acc!392 (_1!8477 lt!525948)) lt!525997)))

(declare-fun b!1512383 () Bool)

(assert (=> b!1512383 (= e!967103 (= (list!6343 lt!525997) (++!4354 (list!6343 acc!392) (list!6343 (_1!8477 lt!525948)))))))

(declare-fun b!1512380 () Bool)

(declare-fun res!680565 () Bool)

(assert (=> b!1512380 (=> (not res!680565) (not e!967103))))

(assert (=> b!1512380 (= res!680565 (isBalanced!1607 (++!4355 (c!247917 acc!392) (c!247917 (_1!8477 lt!525948)))))))

(declare-fun b!1512381 () Bool)

(declare-fun res!680567 () Bool)

(assert (=> b!1512381 (=> (not res!680567) (not e!967103))))

(assert (=> b!1512381 (= res!680567 (<= (height!809 (++!4355 (c!247917 acc!392) (c!247917 (_1!8477 lt!525948)))) (+ (max!0 (height!809 (c!247917 acc!392)) (height!809 (c!247917 (_1!8477 lt!525948)))) 1)))))

(assert (= (and d!447830 res!680564) b!1512380))

(assert (= (and b!1512380 res!680565) b!1512381))

(assert (= (and b!1512381 res!680567) b!1512382))

(assert (= (and b!1512382 res!680566) b!1512383))

(declare-fun m!1776446 () Bool)

(assert (=> b!1512380 m!1776446))

(assert (=> b!1512380 m!1776446))

(declare-fun m!1776448 () Bool)

(assert (=> b!1512380 m!1776448))

(assert (=> b!1512382 m!1776446))

(declare-fun m!1776450 () Bool)

(assert (=> b!1512382 m!1776450))

(declare-fun m!1776452 () Bool)

(assert (=> b!1512382 m!1776452))

(declare-fun m!1776454 () Bool)

(assert (=> b!1512382 m!1776454))

(assert (=> b!1512382 m!1776450))

(assert (=> b!1512382 m!1776446))

(declare-fun m!1776456 () Bool)

(assert (=> b!1512382 m!1776456))

(assert (=> b!1512382 m!1776452))

(declare-fun m!1776458 () Bool)

(assert (=> b!1512383 m!1776458))

(assert (=> b!1512383 m!1776200))

(declare-fun m!1776460 () Bool)

(assert (=> b!1512383 m!1776460))

(assert (=> b!1512383 m!1776200))

(assert (=> b!1512383 m!1776460))

(declare-fun m!1776462 () Bool)

(assert (=> b!1512383 m!1776462))

(declare-fun m!1776464 () Bool)

(assert (=> d!447830 m!1776464))

(assert (=> d!447830 m!1776446))

(assert (=> b!1512381 m!1776446))

(assert (=> b!1512381 m!1776450))

(assert (=> b!1512381 m!1776452))

(assert (=> b!1512381 m!1776454))

(assert (=> b!1512381 m!1776450))

(assert (=> b!1512381 m!1776446))

(assert (=> b!1512381 m!1776456))

(assert (=> b!1512381 m!1776452))

(assert (=> b!1512305 d!447830))

(declare-fun d!447832 () Bool)

(declare-fun list!6344 (Conc!5436) List!16129)

(assert (=> d!447832 (= (list!6343 (_1!8477 lt!525978)) (list!6344 (c!247917 (_1!8477 lt!525978))))))

(declare-fun bs!364408 () Bool)

(assert (= bs!364408 d!447832))

(declare-fun m!1776466 () Bool)

(assert (=> bs!364408 m!1776466))

(assert (=> b!1512305 d!447832))

(declare-fun b!1512384 () Bool)

(declare-fun e!967105 () Bool)

(declare-fun e!967107 () Bool)

(assert (=> b!1512384 (= e!967105 e!967107)))

(declare-fun res!680570 () Bool)

(declare-fun lt!525999 () tuple2!14924)

(assert (=> b!1512384 (= res!680570 (< (size!12985 (_2!8477 lt!525999)) (size!12985 input!1102)))))

(assert (=> b!1512384 (=> (not res!680570) (not e!967107))))

(declare-fun b!1512385 () Bool)

(declare-fun e!967106 () tuple2!14924)

(declare-fun lt!525998 () tuple2!14924)

(declare-fun lt!526000 () Option!2928)

(assert (=> b!1512385 (= e!967106 (tuple2!14925 (prepend!463 (_1!8477 lt!525998) (_1!8475 (v!22873 lt!526000))) (_2!8477 lt!525998)))))

(assert (=> b!1512385 (= lt!525998 (lexRec!330 thiss!13241 rules!1640 (_2!8475 (v!22873 lt!526000))))))

(declare-fun e!967104 () Bool)

(declare-fun b!1512386 () Bool)

(assert (=> b!1512386 (= e!967104 (= (list!6342 (_2!8477 lt!525999)) (_2!8478 (lexList!746 thiss!13241 rules!1640 (list!6342 input!1102)))))))

(declare-fun b!1512387 () Bool)

(assert (=> b!1512387 (= e!967106 (tuple2!14925 (BalanceConc!10815 Empty!5436) input!1102))))

(declare-fun d!447834 () Bool)

(assert (=> d!447834 e!967104))

(declare-fun res!680568 () Bool)

(assert (=> d!447834 (=> (not res!680568) (not e!967104))))

(assert (=> d!447834 (= res!680568 e!967105)))

(declare-fun c!247934 () Bool)

(assert (=> d!447834 (= c!247934 (> (size!12986 (_1!8477 lt!525999)) 0))))

(assert (=> d!447834 (= lt!525999 e!967106)))

(declare-fun c!247933 () Bool)

(assert (=> d!447834 (= c!247933 ((_ is Some!2927) lt!526000))))

(assert (=> d!447834 (= lt!526000 (maxPrefixZipperSequence!588 thiss!13241 rules!1640 input!1102))))

(assert (=> d!447834 (= (lexRec!330 thiss!13241 rules!1640 input!1102) lt!525999)))

(declare-fun b!1512388 () Bool)

(assert (=> b!1512388 (= e!967107 (not (isEmpty!9927 (_1!8477 lt!525999))))))

(declare-fun b!1512389 () Bool)

(declare-fun res!680569 () Bool)

(assert (=> b!1512389 (=> (not res!680569) (not e!967104))))

(assert (=> b!1512389 (= res!680569 (= (list!6343 (_1!8477 lt!525999)) (_1!8478 (lexList!746 thiss!13241 rules!1640 (list!6342 input!1102)))))))

(declare-fun b!1512390 () Bool)

(assert (=> b!1512390 (= e!967105 (= (list!6342 (_2!8477 lt!525999)) (list!6342 input!1102)))))

(assert (= (and d!447834 c!247933) b!1512385))

(assert (= (and d!447834 (not c!247933)) b!1512387))

(assert (= (and d!447834 c!247934) b!1512384))

(assert (= (and d!447834 (not c!247934)) b!1512390))

(assert (= (and b!1512384 res!680570) b!1512388))

(assert (= (and d!447834 res!680568) b!1512389))

(assert (= (and b!1512389 res!680569) b!1512386))

(declare-fun m!1776468 () Bool)

(assert (=> b!1512386 m!1776468))

(assert (=> b!1512386 m!1776298))

(assert (=> b!1512386 m!1776298))

(declare-fun m!1776470 () Bool)

(assert (=> b!1512386 m!1776470))

(declare-fun m!1776472 () Bool)

(assert (=> b!1512388 m!1776472))

(declare-fun m!1776474 () Bool)

(assert (=> b!1512389 m!1776474))

(assert (=> b!1512389 m!1776298))

(assert (=> b!1512389 m!1776298))

(assert (=> b!1512389 m!1776470))

(declare-fun m!1776476 () Bool)

(assert (=> b!1512384 m!1776476))

(declare-fun m!1776478 () Bool)

(assert (=> b!1512384 m!1776478))

(declare-fun m!1776480 () Bool)

(assert (=> b!1512385 m!1776480))

(declare-fun m!1776482 () Bool)

(assert (=> b!1512385 m!1776482))

(declare-fun m!1776484 () Bool)

(assert (=> d!447834 m!1776484))

(assert (=> d!447834 m!1776304))

(assert (=> b!1512390 m!1776468))

(assert (=> b!1512390 m!1776298))

(assert (=> b!1512305 d!447834))

(declare-fun d!447836 () Bool)

(assert (=> d!447836 (= (list!6343 (++!4352 acc!392 (_1!8477 lt!525948))) (list!6344 (c!247917 (++!4352 acc!392 (_1!8477 lt!525948)))))))

(declare-fun bs!364409 () Bool)

(assert (= bs!364409 d!447836))

(declare-fun m!1776486 () Bool)

(assert (=> bs!364409 m!1776486))

(assert (=> b!1512305 d!447836))

(declare-fun d!447838 () Bool)

(assert (=> d!447838 (= (list!6343 acc!392) (list!6344 (c!247917 acc!392)))))

(declare-fun bs!364410 () Bool)

(assert (= bs!364410 d!447838))

(declare-fun m!1776488 () Bool)

(assert (=> bs!364410 m!1776488))

(assert (=> b!1512304 d!447838))

(declare-fun d!447840 () Bool)

(assert (=> d!447840 (= (list!6343 (_1!8477 lt!525965)) (list!6344 (c!247917 (_1!8477 lt!525965))))))

(declare-fun bs!364411 () Bool)

(assert (= bs!364411 d!447840))

(declare-fun m!1776490 () Bool)

(assert (=> bs!364411 m!1776490))

(assert (=> b!1512304 d!447840))

(declare-fun b!1512391 () Bool)

(declare-fun e!967109 () Bool)

(declare-fun e!967111 () Bool)

(assert (=> b!1512391 (= e!967109 e!967111)))

(declare-fun res!680573 () Bool)

(declare-fun lt!526002 () tuple2!14924)

(assert (=> b!1512391 (= res!680573 (< (size!12985 (_2!8477 lt!526002)) (size!12985 treated!70)))))

(assert (=> b!1512391 (=> (not res!680573) (not e!967111))))

(declare-fun b!1512392 () Bool)

(declare-fun e!967110 () tuple2!14924)

(declare-fun lt!526001 () tuple2!14924)

(declare-fun lt!526003 () Option!2928)

(assert (=> b!1512392 (= e!967110 (tuple2!14925 (prepend!463 (_1!8477 lt!526001) (_1!8475 (v!22873 lt!526003))) (_2!8477 lt!526001)))))

(assert (=> b!1512392 (= lt!526001 (lexRec!330 thiss!13241 rules!1640 (_2!8475 (v!22873 lt!526003))))))

(declare-fun e!967108 () Bool)

(declare-fun b!1512393 () Bool)

(assert (=> b!1512393 (= e!967108 (= (list!6342 (_2!8477 lt!526002)) (_2!8478 (lexList!746 thiss!13241 rules!1640 (list!6342 treated!70)))))))

(declare-fun b!1512394 () Bool)

(assert (=> b!1512394 (= e!967110 (tuple2!14925 (BalanceConc!10815 Empty!5436) treated!70))))

(declare-fun d!447842 () Bool)

(assert (=> d!447842 e!967108))

(declare-fun res!680571 () Bool)

(assert (=> d!447842 (=> (not res!680571) (not e!967108))))

(assert (=> d!447842 (= res!680571 e!967109)))

(declare-fun c!247936 () Bool)

(assert (=> d!447842 (= c!247936 (> (size!12986 (_1!8477 lt!526002)) 0))))

(assert (=> d!447842 (= lt!526002 e!967110)))

(declare-fun c!247935 () Bool)

(assert (=> d!447842 (= c!247935 ((_ is Some!2927) lt!526003))))

(assert (=> d!447842 (= lt!526003 (maxPrefixZipperSequence!588 thiss!13241 rules!1640 treated!70))))

(assert (=> d!447842 (= (lexRec!330 thiss!13241 rules!1640 treated!70) lt!526002)))

(declare-fun b!1512395 () Bool)

(assert (=> b!1512395 (= e!967111 (not (isEmpty!9927 (_1!8477 lt!526002))))))

(declare-fun b!1512396 () Bool)

(declare-fun res!680572 () Bool)

(assert (=> b!1512396 (=> (not res!680572) (not e!967108))))

(assert (=> b!1512396 (= res!680572 (= (list!6343 (_1!8477 lt!526002)) (_1!8478 (lexList!746 thiss!13241 rules!1640 (list!6342 treated!70)))))))

(declare-fun b!1512397 () Bool)

(assert (=> b!1512397 (= e!967109 (= (list!6342 (_2!8477 lt!526002)) (list!6342 treated!70)))))

(assert (= (and d!447842 c!247935) b!1512392))

(assert (= (and d!447842 (not c!247935)) b!1512394))

(assert (= (and d!447842 c!247936) b!1512391))

(assert (= (and d!447842 (not c!247936)) b!1512397))

(assert (= (and b!1512391 res!680573) b!1512395))

(assert (= (and d!447842 res!680571) b!1512396))

(assert (= (and b!1512396 res!680572) b!1512393))

(declare-fun m!1776492 () Bool)

(assert (=> b!1512393 m!1776492))

(assert (=> b!1512393 m!1776300))

(assert (=> b!1512393 m!1776300))

(declare-fun m!1776494 () Bool)

(assert (=> b!1512393 m!1776494))

(declare-fun m!1776496 () Bool)

(assert (=> b!1512395 m!1776496))

(declare-fun m!1776498 () Bool)

(assert (=> b!1512396 m!1776498))

(assert (=> b!1512396 m!1776300))

(assert (=> b!1512396 m!1776300))

(assert (=> b!1512396 m!1776494))

(declare-fun m!1776500 () Bool)

(assert (=> b!1512391 m!1776500))

(declare-fun m!1776502 () Bool)

(assert (=> b!1512391 m!1776502))

(declare-fun m!1776504 () Bool)

(assert (=> b!1512392 m!1776504))

(declare-fun m!1776506 () Bool)

(assert (=> b!1512392 m!1776506))

(declare-fun m!1776508 () Bool)

(assert (=> d!447842 m!1776508))

(declare-fun m!1776510 () Bool)

(assert (=> d!447842 m!1776510))

(assert (=> b!1512397 m!1776492))

(assert (=> b!1512397 m!1776300))

(assert (=> b!1512304 d!447842))

(declare-fun d!447844 () Bool)

(assert (=> d!447844 (= (inv!21287 (totalInput!2294 cacheFurthestNullable!64)) (isBalanced!1608 (c!247915 (totalInput!2294 cacheFurthestNullable!64))))))

(declare-fun bs!364412 () Bool)

(assert (= bs!364412 d!447844))

(declare-fun m!1776512 () Bool)

(assert (=> bs!364412 m!1776512))

(assert (=> b!1512285 d!447844))

(declare-fun d!447846 () Bool)

(declare-fun c!247937 () Bool)

(assert (=> d!447846 (= c!247937 ((_ is Node!5435) (c!247915 (totalInput!2294 cacheFurthestNullable!64))))))

(declare-fun e!967112 () Bool)

(assert (=> d!447846 (= (inv!21285 (c!247915 (totalInput!2294 cacheFurthestNullable!64))) e!967112)))

(declare-fun b!1512398 () Bool)

(assert (=> b!1512398 (= e!967112 (inv!21292 (c!247915 (totalInput!2294 cacheFurthestNullable!64))))))

(declare-fun b!1512399 () Bool)

(declare-fun e!967113 () Bool)

(assert (=> b!1512399 (= e!967112 e!967113)))

(declare-fun res!680574 () Bool)

(assert (=> b!1512399 (= res!680574 (not ((_ is Leaf!8059) (c!247915 (totalInput!2294 cacheFurthestNullable!64)))))))

(assert (=> b!1512399 (=> res!680574 e!967113)))

(declare-fun b!1512400 () Bool)

(assert (=> b!1512400 (= e!967113 (inv!21293 (c!247915 (totalInput!2294 cacheFurthestNullable!64))))))

(assert (= (and d!447846 c!247937) b!1512398))

(assert (= (and d!447846 (not c!247937)) b!1512399))

(assert (= (and b!1512399 (not res!680574)) b!1512400))

(declare-fun m!1776514 () Bool)

(assert (=> b!1512398 m!1776514))

(declare-fun m!1776516 () Bool)

(assert (=> b!1512400 m!1776516))

(assert (=> b!1512302 d!447846))

(declare-fun d!447848 () Bool)

(assert (=> d!447848 (= (array_inv!1665 (_keys!1766 (v!22868 (underlying!3153 (v!22869 (underlying!3154 (cache!1798 cacheFurthestNullable!64))))))) (bvsge (size!12981 (_keys!1766 (v!22868 (underlying!3153 (v!22869 (underlying!3154 (cache!1798 cacheFurthestNullable!64))))))) #b00000000000000000000000000000000))))

(assert (=> b!1512301 d!447848))

(declare-fun d!447850 () Bool)

(assert (=> d!447850 (= (array_inv!1667 (_values!1751 (v!22868 (underlying!3153 (v!22869 (underlying!3154 (cache!1798 cacheFurthestNullable!64))))))) (bvsge (size!12980 (_values!1751 (v!22868 (underlying!3153 (v!22869 (underlying!3154 (cache!1798 cacheFurthestNullable!64))))))) #b00000000000000000000000000000000))))

(assert (=> b!1512301 d!447850))

(declare-fun d!447852 () Bool)

(declare-fun list!6345 (Conc!5435) List!16123)

(assert (=> d!447852 (= (list!6342 (_2!8477 lt!525978)) (list!6345 (c!247915 (_2!8477 lt!525978))))))

(declare-fun bs!364413 () Bool)

(assert (= bs!364413 d!447852))

(declare-fun m!1776518 () Bool)

(assert (=> bs!364413 m!1776518))

(assert (=> b!1512281 d!447852))

(declare-fun d!447854 () Bool)

(assert (=> d!447854 (= (list!6342 (_2!8477 lt!525948)) (list!6345 (c!247915 (_2!8477 lt!525948))))))

(declare-fun bs!364414 () Bool)

(assert (= bs!364414 d!447854))

(declare-fun m!1776520 () Bool)

(assert (=> bs!364414 m!1776520))

(assert (=> b!1512281 d!447854))

(declare-fun d!447856 () Bool)

(declare-fun c!247940 () Bool)

(assert (=> d!447856 (= c!247940 ((_ is Node!5436) (c!247917 acc!392)))))

(declare-fun e!967118 () Bool)

(assert (=> d!447856 (= (inv!21286 (c!247917 acc!392)) e!967118)))

(declare-fun b!1512407 () Bool)

(declare-fun inv!21294 (Conc!5436) Bool)

(assert (=> b!1512407 (= e!967118 (inv!21294 (c!247917 acc!392)))))

(declare-fun b!1512408 () Bool)

(declare-fun e!967119 () Bool)

(assert (=> b!1512408 (= e!967118 e!967119)))

(declare-fun res!680577 () Bool)

(assert (=> b!1512408 (= res!680577 (not ((_ is Leaf!8060) (c!247917 acc!392))))))

(assert (=> b!1512408 (=> res!680577 e!967119)))

(declare-fun b!1512409 () Bool)

(declare-fun inv!21295 (Conc!5436) Bool)

(assert (=> b!1512409 (= e!967119 (inv!21295 (c!247917 acc!392)))))

(assert (= (and d!447856 c!247940) b!1512407))

(assert (= (and d!447856 (not c!247940)) b!1512408))

(assert (= (and b!1512408 (not res!680577)) b!1512409))

(declare-fun m!1776522 () Bool)

(assert (=> b!1512407 m!1776522))

(declare-fun m!1776524 () Bool)

(assert (=> b!1512409 m!1776524))

(assert (=> b!1512280 d!447856))

(declare-fun d!447858 () Bool)

(assert (=> d!447858 (= (valid!1177 cacheDown!629) (validCacheMapDown!134 (cache!1797 cacheDown!629)))))

(declare-fun bs!364415 () Bool)

(assert (= bs!364415 d!447858))

(assert (=> bs!364415 m!1776414))

(assert (=> b!1512298 d!447858))

(declare-fun d!447860 () Bool)

(declare-fun c!247941 () Bool)

(assert (=> d!447860 (= c!247941 ((_ is Node!5435) (c!247915 totalInput!458)))))

(declare-fun e!967120 () Bool)

(assert (=> d!447860 (= (inv!21285 (c!247915 totalInput!458)) e!967120)))

(declare-fun b!1512410 () Bool)

(assert (=> b!1512410 (= e!967120 (inv!21292 (c!247915 totalInput!458)))))

(declare-fun b!1512411 () Bool)

(declare-fun e!967121 () Bool)

(assert (=> b!1512411 (= e!967120 e!967121)))

(declare-fun res!680578 () Bool)

(assert (=> b!1512411 (= res!680578 (not ((_ is Leaf!8059) (c!247915 totalInput!458))))))

(assert (=> b!1512411 (=> res!680578 e!967121)))

(declare-fun b!1512412 () Bool)

(assert (=> b!1512412 (= e!967121 (inv!21293 (c!247915 totalInput!458)))))

(assert (= (and d!447860 c!247941) b!1512410))

(assert (= (and d!447860 (not c!247941)) b!1512411))

(assert (= (and b!1512411 (not res!680578)) b!1512412))

(declare-fun m!1776526 () Bool)

(assert (=> b!1512410 m!1776526))

(declare-fun m!1776528 () Bool)

(assert (=> b!1512412 m!1776528))

(assert (=> b!1512315 d!447860))

(declare-fun d!447862 () Bool)

(assert (=> d!447862 (= (array_inv!1665 (_keys!1767 (v!22872 (underlying!3157 (v!22874 (underlying!3158 (cache!1799 cacheUp!616))))))) (bvsge (size!12981 (_keys!1767 (v!22872 (underlying!3157 (v!22874 (underlying!3158 (cache!1799 cacheUp!616))))))) #b00000000000000000000000000000000))))

(assert (=> b!1512296 d!447862))

(declare-fun d!447864 () Bool)

(assert (=> d!447864 (= (array_inv!1666 (_values!1752 (v!22872 (underlying!3157 (v!22874 (underlying!3158 (cache!1799 cacheUp!616))))))) (bvsge (size!12982 (_values!1752 (v!22872 (underlying!3157 (v!22874 (underlying!3158 (cache!1799 cacheUp!616))))))) #b00000000000000000000000000000000))))

(assert (=> b!1512296 d!447864))

(declare-fun b!1512424 () Bool)

(declare-fun e!967126 () Bool)

(declare-fun lt!526006 () List!16123)

(assert (=> b!1512424 (= e!967126 (or (not (= lt!525955 Nil!16055)) (= lt!526006 lt!525951)))))

(declare-fun b!1512423 () Bool)

(declare-fun res!680583 () Bool)

(assert (=> b!1512423 (=> (not res!680583) (not e!967126))))

(declare-fun size!12987 (List!16123) Int)

(assert (=> b!1512423 (= res!680583 (= (size!12987 lt!526006) (+ (size!12987 lt!525951) (size!12987 lt!525955))))))

(declare-fun b!1512422 () Bool)

(declare-fun e!967127 () List!16123)

(assert (=> b!1512422 (= e!967127 (Cons!16055 (h!21456 lt!525951) (++!4351 (t!139397 lt!525951) lt!525955)))))

(declare-fun b!1512421 () Bool)

(assert (=> b!1512421 (= e!967127 lt!525955)))

(declare-fun d!447866 () Bool)

(assert (=> d!447866 e!967126))

(declare-fun res!680584 () Bool)

(assert (=> d!447866 (=> (not res!680584) (not e!967126))))

(declare-fun content!2312 (List!16123) (InoxSet C!8492))

(assert (=> d!447866 (= res!680584 (= (content!2312 lt!526006) ((_ map or) (content!2312 lt!525951) (content!2312 lt!525955))))))

(assert (=> d!447866 (= lt!526006 e!967127)))

(declare-fun c!247944 () Bool)

(assert (=> d!447866 (= c!247944 ((_ is Nil!16055) lt!525951))))

(assert (=> d!447866 (= (++!4351 lt!525951 lt!525955) lt!526006)))

(assert (= (and d!447866 c!247944) b!1512421))

(assert (= (and d!447866 (not c!247944)) b!1512422))

(assert (= (and d!447866 res!680584) b!1512423))

(assert (= (and b!1512423 res!680583) b!1512424))

(declare-fun m!1776530 () Bool)

(assert (=> b!1512423 m!1776530))

(declare-fun m!1776532 () Bool)

(assert (=> b!1512423 m!1776532))

(declare-fun m!1776534 () Bool)

(assert (=> b!1512423 m!1776534))

(declare-fun m!1776536 () Bool)

(assert (=> b!1512422 m!1776536))

(declare-fun m!1776538 () Bool)

(assert (=> d!447866 m!1776538))

(declare-fun m!1776540 () Bool)

(assert (=> d!447866 m!1776540))

(declare-fun m!1776542 () Bool)

(assert (=> d!447866 m!1776542))

(assert (=> b!1512313 d!447866))

(declare-fun d!447868 () Bool)

(assert (=> d!447868 (isSuffix!301 lt!525955 (++!4351 lt!525951 lt!525955))))

(declare-fun lt!526009 () Unit!25741)

(declare-fun choose!9158 (List!16123 List!16123) Unit!25741)

(assert (=> d!447868 (= lt!526009 (choose!9158 lt!525951 lt!525955))))

(assert (=> d!447868 (= (lemmaConcatTwoListThenFSndIsSuffix!279 lt!525951 lt!525955) lt!526009)))

(declare-fun bs!364416 () Bool)

(assert (= bs!364416 d!447868))

(assert (=> bs!364416 m!1776306))

(assert (=> bs!364416 m!1776306))

(assert (=> bs!364416 m!1776308))

(declare-fun m!1776544 () Bool)

(assert (=> bs!364416 m!1776544))

(assert (=> b!1512313 d!447868))

(declare-fun d!447870 () Bool)

(assert (=> d!447870 (= (list!6343 (append!500 acc!392 (_1!8475 (v!22873 (_1!8476 lt!525947))))) (list!6344 (c!247917 (append!500 acc!392 (_1!8475 (v!22873 (_1!8476 lt!525947)))))))))

(declare-fun bs!364417 () Bool)

(assert (= bs!364417 d!447870))

(declare-fun m!1776546 () Bool)

(assert (=> bs!364417 m!1776546))

(assert (=> b!1512313 d!447870))

(declare-fun d!447872 () Bool)

(declare-fun e!967132 () Bool)

(assert (=> d!447872 e!967132))

(declare-fun res!680590 () Bool)

(assert (=> d!447872 (=> (not res!680590) (not e!967132))))

(declare-fun lt!526012 () List!16129)

(declare-fun content!2313 (List!16129) (InoxSet Token!5346))

(assert (=> d!447872 (= res!680590 (= (content!2313 lt!526012) ((_ map or) (content!2313 lt!525960) (content!2313 (++!4354 lt!525967 lt!525958)))))))

(declare-fun e!967133 () List!16129)

(assert (=> d!447872 (= lt!526012 e!967133)))

(declare-fun c!247947 () Bool)

(assert (=> d!447872 (= c!247947 ((_ is Nil!16061) lt!525960))))

(assert (=> d!447872 (= (++!4354 lt!525960 (++!4354 lt!525967 lt!525958)) lt!526012)))

(declare-fun b!1512434 () Bool)

(assert (=> b!1512434 (= e!967133 (Cons!16061 (h!21462 lt!525960) (++!4354 (t!139403 lt!525960) (++!4354 lt!525967 lt!525958))))))

(declare-fun b!1512433 () Bool)

(assert (=> b!1512433 (= e!967133 (++!4354 lt!525967 lt!525958))))

(declare-fun b!1512435 () Bool)

(declare-fun res!680589 () Bool)

(assert (=> b!1512435 (=> (not res!680589) (not e!967132))))

(declare-fun size!12988 (List!16129) Int)

(assert (=> b!1512435 (= res!680589 (= (size!12988 lt!526012) (+ (size!12988 lt!525960) (size!12988 (++!4354 lt!525967 lt!525958)))))))

(declare-fun b!1512436 () Bool)

(assert (=> b!1512436 (= e!967132 (or (not (= (++!4354 lt!525967 lt!525958) Nil!16061)) (= lt!526012 lt!525960)))))

(assert (= (and d!447872 c!247947) b!1512433))

(assert (= (and d!447872 (not c!247947)) b!1512434))

(assert (= (and d!447872 res!680590) b!1512435))

(assert (= (and b!1512435 res!680589) b!1512436))

(declare-fun m!1776548 () Bool)

(assert (=> d!447872 m!1776548))

(declare-fun m!1776550 () Bool)

(assert (=> d!447872 m!1776550))

(assert (=> d!447872 m!1776348))

(declare-fun m!1776552 () Bool)

(assert (=> d!447872 m!1776552))

(assert (=> b!1512434 m!1776348))

(declare-fun m!1776554 () Bool)

(assert (=> b!1512434 m!1776554))

(declare-fun m!1776556 () Bool)

(assert (=> b!1512435 m!1776556))

(declare-fun m!1776558 () Bool)

(assert (=> b!1512435 m!1776558))

(assert (=> b!1512435 m!1776348))

(declare-fun m!1776560 () Bool)

(assert (=> b!1512435 m!1776560))

(assert (=> b!1512313 d!447872))

(declare-fun d!447874 () Bool)

(declare-fun e!967134 () Bool)

(assert (=> d!447874 e!967134))

(declare-fun res!680592 () Bool)

(assert (=> d!447874 (=> (not res!680592) (not e!967134))))

(declare-fun lt!526013 () List!16129)

(assert (=> d!447874 (= res!680592 (= (content!2313 lt!526013) ((_ map or) (content!2313 lt!525960) (content!2313 lt!525967))))))

(declare-fun e!967135 () List!16129)

(assert (=> d!447874 (= lt!526013 e!967135)))

(declare-fun c!247948 () Bool)

(assert (=> d!447874 (= c!247948 ((_ is Nil!16061) lt!525960))))

(assert (=> d!447874 (= (++!4354 lt!525960 lt!525967) lt!526013)))

(declare-fun b!1512438 () Bool)

(assert (=> b!1512438 (= e!967135 (Cons!16061 (h!21462 lt!525960) (++!4354 (t!139403 lt!525960) lt!525967)))))

(declare-fun b!1512437 () Bool)

(assert (=> b!1512437 (= e!967135 lt!525967)))

(declare-fun b!1512439 () Bool)

(declare-fun res!680591 () Bool)

(assert (=> b!1512439 (=> (not res!680591) (not e!967134))))

(assert (=> b!1512439 (= res!680591 (= (size!12988 lt!526013) (+ (size!12988 lt!525960) (size!12988 lt!525967))))))

(declare-fun b!1512440 () Bool)

(assert (=> b!1512440 (= e!967134 (or (not (= lt!525967 Nil!16061)) (= lt!526013 lt!525960)))))

(assert (= (and d!447874 c!247948) b!1512437))

(assert (= (and d!447874 (not c!247948)) b!1512438))

(assert (= (and d!447874 res!680592) b!1512439))

(assert (= (and b!1512439 res!680591) b!1512440))

(declare-fun m!1776562 () Bool)

(assert (=> d!447874 m!1776562))

(assert (=> d!447874 m!1776550))

(declare-fun m!1776564 () Bool)

(assert (=> d!447874 m!1776564))

(declare-fun m!1776566 () Bool)

(assert (=> b!1512438 m!1776566))

(declare-fun m!1776568 () Bool)

(assert (=> b!1512439 m!1776568))

(assert (=> b!1512439 m!1776558))

(declare-fun m!1776570 () Bool)

(assert (=> b!1512439 m!1776570))

(assert (=> b!1512313 d!447874))

(declare-fun d!447876 () Bool)

(declare-fun e!967136 () Bool)

(assert (=> d!447876 e!967136))

(declare-fun res!680594 () Bool)

(assert (=> d!447876 (=> (not res!680594) (not e!967136))))

(declare-fun lt!526014 () List!16129)

(assert (=> d!447876 (= res!680594 (= (content!2313 lt!526014) ((_ map or) (content!2313 (++!4354 lt!525960 lt!525967)) (content!2313 lt!525958))))))

(declare-fun e!967137 () List!16129)

(assert (=> d!447876 (= lt!526014 e!967137)))

(declare-fun c!247949 () Bool)

(assert (=> d!447876 (= c!247949 ((_ is Nil!16061) (++!4354 lt!525960 lt!525967)))))

(assert (=> d!447876 (= (++!4354 (++!4354 lt!525960 lt!525967) lt!525958) lt!526014)))

(declare-fun b!1512442 () Bool)

(assert (=> b!1512442 (= e!967137 (Cons!16061 (h!21462 (++!4354 lt!525960 lt!525967)) (++!4354 (t!139403 (++!4354 lt!525960 lt!525967)) lt!525958)))))

(declare-fun b!1512441 () Bool)

(assert (=> b!1512441 (= e!967137 lt!525958)))

(declare-fun b!1512443 () Bool)

(declare-fun res!680593 () Bool)

(assert (=> b!1512443 (=> (not res!680593) (not e!967136))))

(assert (=> b!1512443 (= res!680593 (= (size!12988 lt!526014) (+ (size!12988 (++!4354 lt!525960 lt!525967)) (size!12988 lt!525958))))))

(declare-fun b!1512444 () Bool)

(assert (=> b!1512444 (= e!967136 (or (not (= lt!525958 Nil!16061)) (= lt!526014 (++!4354 lt!525960 lt!525967))))))

(assert (= (and d!447876 c!247949) b!1512441))

(assert (= (and d!447876 (not c!247949)) b!1512442))

(assert (= (and d!447876 res!680594) b!1512443))

(assert (= (and b!1512443 res!680593) b!1512444))

(declare-fun m!1776572 () Bool)

(assert (=> d!447876 m!1776572))

(assert (=> d!447876 m!1776316))

(declare-fun m!1776574 () Bool)

(assert (=> d!447876 m!1776574))

(declare-fun m!1776576 () Bool)

(assert (=> d!447876 m!1776576))

(declare-fun m!1776578 () Bool)

(assert (=> b!1512442 m!1776578))

(declare-fun m!1776580 () Bool)

(assert (=> b!1512443 m!1776580))

(assert (=> b!1512443 m!1776316))

(declare-fun m!1776582 () Bool)

(assert (=> b!1512443 m!1776582))

(declare-fun m!1776584 () Bool)

(assert (=> b!1512443 m!1776584))

(assert (=> b!1512313 d!447876))

(declare-fun d!447878 () Bool)

(declare-fun e!967140 () Bool)

(assert (=> d!447878 e!967140))

(declare-fun res!680597 () Bool)

(assert (=> d!447878 (=> (not res!680597) (not e!967140))))

(declare-fun append!501 (Conc!5436 Token!5346) Conc!5436)

(assert (=> d!447878 (= res!680597 (isBalanced!1607 (append!501 (c!247917 acc!392) (_1!8475 (v!22873 (_1!8476 lt!525947))))))))

(declare-fun lt!526017 () BalanceConc!10814)

(assert (=> d!447878 (= lt!526017 (BalanceConc!10815 (append!501 (c!247917 acc!392) (_1!8475 (v!22873 (_1!8476 lt!525947))))))))

(assert (=> d!447878 (= (append!500 acc!392 (_1!8475 (v!22873 (_1!8476 lt!525947)))) lt!526017)))

(declare-fun b!1512447 () Bool)

(declare-fun $colon+!107 (List!16129 Token!5346) List!16129)

(assert (=> b!1512447 (= e!967140 (= (list!6343 lt!526017) ($colon+!107 (list!6343 acc!392) (_1!8475 (v!22873 (_1!8476 lt!525947))))))))

(assert (= (and d!447878 res!680597) b!1512447))

(declare-fun m!1776586 () Bool)

(assert (=> d!447878 m!1776586))

(assert (=> d!447878 m!1776586))

(declare-fun m!1776588 () Bool)

(assert (=> d!447878 m!1776588))

(declare-fun m!1776590 () Bool)

(assert (=> b!1512447 m!1776590))

(assert (=> b!1512447 m!1776200))

(assert (=> b!1512447 m!1776200))

(declare-fun m!1776592 () Bool)

(assert (=> b!1512447 m!1776592))

(assert (=> b!1512313 d!447878))

(declare-fun b!1512458 () Bool)

(declare-fun res!680608 () Bool)

(declare-fun e!967143 () Bool)

(assert (=> b!1512458 (=> (not res!680608) (not e!967143))))

(declare-fun height!810 (Conc!5435) Int)

(declare-fun ++!4356 (Conc!5435 Conc!5435) Conc!5435)

(assert (=> b!1512458 (= res!680608 (>= (height!810 (++!4356 (c!247915 treated!70) (c!247915 lt!525957))) (max!0 (height!810 (c!247915 treated!70)) (height!810 (c!247915 lt!525957)))))))

(declare-fun b!1512456 () Bool)

(declare-fun res!680609 () Bool)

(assert (=> b!1512456 (=> (not res!680609) (not e!967143))))

(assert (=> b!1512456 (= res!680609 (isBalanced!1608 (++!4356 (c!247915 treated!70) (c!247915 lt!525957))))))

(declare-fun d!447880 () Bool)

(assert (=> d!447880 e!967143))

(declare-fun res!680607 () Bool)

(assert (=> d!447880 (=> (not res!680607) (not e!967143))))

(declare-fun appendAssocInst!368 (Conc!5435 Conc!5435) Bool)

(assert (=> d!447880 (= res!680607 (appendAssocInst!368 (c!247915 treated!70) (c!247915 lt!525957)))))

(declare-fun lt!526020 () BalanceConc!10812)

(assert (=> d!447880 (= lt!526020 (BalanceConc!10813 (++!4356 (c!247915 treated!70) (c!247915 lt!525957))))))

(assert (=> d!447880 (= (++!4353 treated!70 lt!525957) lt!526020)))

(declare-fun b!1512457 () Bool)

(declare-fun res!680606 () Bool)

(assert (=> b!1512457 (=> (not res!680606) (not e!967143))))

(assert (=> b!1512457 (= res!680606 (<= (height!810 (++!4356 (c!247915 treated!70) (c!247915 lt!525957))) (+ (max!0 (height!810 (c!247915 treated!70)) (height!810 (c!247915 lt!525957))) 1)))))

(declare-fun b!1512459 () Bool)

(assert (=> b!1512459 (= e!967143 (= (list!6342 lt!526020) (++!4351 (list!6342 treated!70) (list!6342 lt!525957))))))

(assert (= (and d!447880 res!680607) b!1512456))

(assert (= (and b!1512456 res!680609) b!1512457))

(assert (= (and b!1512457 res!680606) b!1512458))

(assert (= (and b!1512458 res!680608) b!1512459))

(declare-fun m!1776594 () Bool)

(assert (=> b!1512457 m!1776594))

(declare-fun m!1776596 () Bool)

(assert (=> b!1512457 m!1776596))

(declare-fun m!1776598 () Bool)

(assert (=> b!1512457 m!1776598))

(assert (=> b!1512457 m!1776596))

(declare-fun m!1776600 () Bool)

(assert (=> b!1512457 m!1776600))

(assert (=> b!1512457 m!1776594))

(declare-fun m!1776602 () Bool)

(assert (=> b!1512457 m!1776602))

(assert (=> b!1512457 m!1776600))

(declare-fun m!1776604 () Bool)

(assert (=> b!1512459 m!1776604))

(assert (=> b!1512459 m!1776300))

(assert (=> b!1512459 m!1776324))

(assert (=> b!1512459 m!1776300))

(assert (=> b!1512459 m!1776324))

(declare-fun m!1776606 () Bool)

(assert (=> b!1512459 m!1776606))

(assert (=> b!1512456 m!1776596))

(assert (=> b!1512456 m!1776596))

(declare-fun m!1776608 () Bool)

(assert (=> b!1512456 m!1776608))

(assert (=> b!1512458 m!1776594))

(assert (=> b!1512458 m!1776596))

(assert (=> b!1512458 m!1776598))

(assert (=> b!1512458 m!1776596))

(assert (=> b!1512458 m!1776600))

(assert (=> b!1512458 m!1776594))

(assert (=> b!1512458 m!1776602))

(assert (=> b!1512458 m!1776600))

(declare-fun m!1776610 () Bool)

(assert (=> d!447880 m!1776610))

(assert (=> d!447880 m!1776596))

(assert (=> b!1512313 d!447880))

(declare-fun d!447882 () Bool)

(assert (=> d!447882 (= (lexList!746 thiss!13241 rules!1640 lt!525959) (tuple2!14927 lt!525971 Nil!16055))))

(declare-fun lt!526023 () Unit!25741)

(declare-fun choose!9159 (LexerInterface!2495 List!16124 List!16123 List!16123 List!16129 List!16129 List!16123) Unit!25741)

(assert (=> d!447882 (= lt!526023 (choose!9159 thiss!13241 rules!1640 lt!525959 lt!525955 lt!525971 lt!525958 (list!6342 (_2!8477 lt!525970))))))

(assert (=> d!447882 (not (isEmpty!9925 rules!1640))))

(assert (=> d!447882 (= (lemmaLexThenLexPrefix!228 thiss!13241 rules!1640 lt!525959 lt!525955 lt!525971 lt!525958 (list!6342 (_2!8477 lt!525970))) lt!526023)))

(declare-fun bs!364418 () Bool)

(assert (= bs!364418 d!447882))

(assert (=> bs!364418 m!1776352))

(assert (=> bs!364418 m!1776318))

(declare-fun m!1776612 () Bool)

(assert (=> bs!364418 m!1776612))

(assert (=> bs!364418 m!1776210))

(assert (=> b!1512313 d!447882))

(declare-fun d!447884 () Bool)

(declare-fun lt!526026 () BalanceConc!10812)

(assert (=> d!447884 (= (list!6342 lt!526026) (originalCharacters!3704 (_1!8475 (v!22873 (_1!8476 lt!525947)))))))

(declare-fun dynLambda!7219 (Int TokenValue!2932) BalanceConc!10812)

(assert (=> d!447884 (= lt!526026 (dynLambda!7219 (toChars!4050 (transformation!2842 (rule!4635 (_1!8475 (v!22873 (_1!8476 lt!525947)))))) (value!90657 (_1!8475 (v!22873 (_1!8476 lt!525947))))))))

(assert (=> d!447884 (= (charsOf!1629 (_1!8475 (v!22873 (_1!8476 lt!525947)))) lt!526026)))

(declare-fun b_lambda!47497 () Bool)

(assert (=> (not b_lambda!47497) (not d!447884)))

(declare-fun t!139405 () Bool)

(declare-fun tb!86205 () Bool)

(assert (=> (and b!1512316 (= (toChars!4050 (transformation!2842 (h!21457 rules!1640))) (toChars!4050 (transformation!2842 (rule!4635 (_1!8475 (v!22873 (_1!8476 lt!525947))))))) t!139405) tb!86205))

(declare-fun b!1512464 () Bool)

(declare-fun e!967146 () Bool)

(declare-fun tp!432414 () Bool)

(assert (=> b!1512464 (= e!967146 (and (inv!21285 (c!247915 (dynLambda!7219 (toChars!4050 (transformation!2842 (rule!4635 (_1!8475 (v!22873 (_1!8476 lt!525947)))))) (value!90657 (_1!8475 (v!22873 (_1!8476 lt!525947))))))) tp!432414))))

(declare-fun result!103676 () Bool)

(assert (=> tb!86205 (= result!103676 (and (inv!21287 (dynLambda!7219 (toChars!4050 (transformation!2842 (rule!4635 (_1!8475 (v!22873 (_1!8476 lt!525947)))))) (value!90657 (_1!8475 (v!22873 (_1!8476 lt!525947)))))) e!967146))))

(assert (= tb!86205 b!1512464))

(declare-fun m!1776614 () Bool)

(assert (=> b!1512464 m!1776614))

(declare-fun m!1776616 () Bool)

(assert (=> tb!86205 m!1776616))

(assert (=> d!447884 t!139405))

(declare-fun b_and!105243 () Bool)

(assert (= b_and!105229 (and (=> t!139405 result!103676) b_and!105243)))

(declare-fun m!1776618 () Bool)

(assert (=> d!447884 m!1776618))

(declare-fun m!1776620 () Bool)

(assert (=> d!447884 m!1776620))

(assert (=> b!1512313 d!447884))

(declare-fun e!967147 () Bool)

(declare-fun b!1512468 () Bool)

(declare-fun lt!526027 () List!16123)

(assert (=> b!1512468 (= e!967147 (or (not (= lt!525949 Nil!16055)) (= lt!526027 lt!525950)))))

(declare-fun b!1512467 () Bool)

(declare-fun res!680610 () Bool)

(assert (=> b!1512467 (=> (not res!680610) (not e!967147))))

(assert (=> b!1512467 (= res!680610 (= (size!12987 lt!526027) (+ (size!12987 lt!525950) (size!12987 lt!525949))))))

(declare-fun b!1512466 () Bool)

(declare-fun e!967148 () List!16123)

(assert (=> b!1512466 (= e!967148 (Cons!16055 (h!21456 lt!525950) (++!4351 (t!139397 lt!525950) lt!525949)))))

(declare-fun b!1512465 () Bool)

(assert (=> b!1512465 (= e!967148 lt!525949)))

(declare-fun d!447886 () Bool)

(assert (=> d!447886 e!967147))

(declare-fun res!680611 () Bool)

(assert (=> d!447886 (=> (not res!680611) (not e!967147))))

(assert (=> d!447886 (= res!680611 (= (content!2312 lt!526027) ((_ map or) (content!2312 lt!525950) (content!2312 lt!525949))))))

(assert (=> d!447886 (= lt!526027 e!967148)))

(declare-fun c!247954 () Bool)

(assert (=> d!447886 (= c!247954 ((_ is Nil!16055) lt!525950))))

(assert (=> d!447886 (= (++!4351 lt!525950 lt!525949) lt!526027)))

(assert (= (and d!447886 c!247954) b!1512465))

(assert (= (and d!447886 (not c!247954)) b!1512466))

(assert (= (and d!447886 res!680611) b!1512467))

(assert (= (and b!1512467 res!680610) b!1512468))

(declare-fun m!1776622 () Bool)

(assert (=> b!1512467 m!1776622))

(declare-fun m!1776624 () Bool)

(assert (=> b!1512467 m!1776624))

(declare-fun m!1776626 () Bool)

(assert (=> b!1512467 m!1776626))

(declare-fun m!1776628 () Bool)

(assert (=> b!1512466 m!1776628))

(declare-fun m!1776630 () Bool)

(assert (=> d!447886 m!1776630))

(declare-fun m!1776632 () Bool)

(assert (=> d!447886 m!1776632))

(declare-fun m!1776634 () Bool)

(assert (=> d!447886 m!1776634))

(assert (=> b!1512313 d!447886))

(declare-fun b!1512469 () Bool)

(declare-fun e!967150 () Bool)

(declare-fun e!967152 () Bool)

(assert (=> b!1512469 (= e!967150 e!967152)))

(declare-fun res!680614 () Bool)

(declare-fun lt!526029 () tuple2!14924)

(assert (=> b!1512469 (= res!680614 (< (size!12985 (_2!8477 lt!526029)) (size!12985 (_2!8475 (v!22873 (_1!8476 lt!525947))))))))

(assert (=> b!1512469 (=> (not res!680614) (not e!967152))))

(declare-fun b!1512470 () Bool)

(declare-fun e!967151 () tuple2!14924)

(declare-fun lt!526028 () tuple2!14924)

(declare-fun lt!526030 () Option!2928)

(assert (=> b!1512470 (= e!967151 (tuple2!14925 (prepend!463 (_1!8477 lt!526028) (_1!8475 (v!22873 lt!526030))) (_2!8477 lt!526028)))))

(assert (=> b!1512470 (= lt!526028 (lexRec!330 thiss!13241 rules!1640 (_2!8475 (v!22873 lt!526030))))))

(declare-fun e!967149 () Bool)

(declare-fun b!1512471 () Bool)

(assert (=> b!1512471 (= e!967149 (= (list!6342 (_2!8477 lt!526029)) (_2!8478 (lexList!746 thiss!13241 rules!1640 (list!6342 (_2!8475 (v!22873 (_1!8476 lt!525947))))))))))

(declare-fun b!1512472 () Bool)

(assert (=> b!1512472 (= e!967151 (tuple2!14925 (BalanceConc!10815 Empty!5436) (_2!8475 (v!22873 (_1!8476 lt!525947)))))))

(declare-fun d!447888 () Bool)

(assert (=> d!447888 e!967149))

(declare-fun res!680612 () Bool)

(assert (=> d!447888 (=> (not res!680612) (not e!967149))))

(assert (=> d!447888 (= res!680612 e!967150)))

(declare-fun c!247956 () Bool)

(assert (=> d!447888 (= c!247956 (> (size!12986 (_1!8477 lt!526029)) 0))))

(assert (=> d!447888 (= lt!526029 e!967151)))

(declare-fun c!247955 () Bool)

(assert (=> d!447888 (= c!247955 ((_ is Some!2927) lt!526030))))

(assert (=> d!447888 (= lt!526030 (maxPrefixZipperSequence!588 thiss!13241 rules!1640 (_2!8475 (v!22873 (_1!8476 lt!525947)))))))

(assert (=> d!447888 (= (lexRec!330 thiss!13241 rules!1640 (_2!8475 (v!22873 (_1!8476 lt!525947)))) lt!526029)))

(declare-fun b!1512473 () Bool)

(assert (=> b!1512473 (= e!967152 (not (isEmpty!9927 (_1!8477 lt!526029))))))

(declare-fun b!1512474 () Bool)

(declare-fun res!680613 () Bool)

(assert (=> b!1512474 (=> (not res!680613) (not e!967149))))

(assert (=> b!1512474 (= res!680613 (= (list!6343 (_1!8477 lt!526029)) (_1!8478 (lexList!746 thiss!13241 rules!1640 (list!6342 (_2!8475 (v!22873 (_1!8476 lt!525947))))))))))

(declare-fun b!1512475 () Bool)

(assert (=> b!1512475 (= e!967150 (= (list!6342 (_2!8477 lt!526029)) (list!6342 (_2!8475 (v!22873 (_1!8476 lt!525947))))))))

(assert (= (and d!447888 c!247955) b!1512470))

(assert (= (and d!447888 (not c!247955)) b!1512472))

(assert (= (and d!447888 c!247956) b!1512469))

(assert (= (and d!447888 (not c!247956)) b!1512475))

(assert (= (and b!1512469 res!680614) b!1512473))

(assert (= (and d!447888 res!680612) b!1512474))

(assert (= (and b!1512474 res!680613) b!1512471))

(declare-fun m!1776636 () Bool)

(assert (=> b!1512471 m!1776636))

(assert (=> b!1512471 m!1776338))

(assert (=> b!1512471 m!1776338))

(declare-fun m!1776638 () Bool)

(assert (=> b!1512471 m!1776638))

(declare-fun m!1776640 () Bool)

(assert (=> b!1512473 m!1776640))

(declare-fun m!1776642 () Bool)

(assert (=> b!1512474 m!1776642))

(assert (=> b!1512474 m!1776338))

(assert (=> b!1512474 m!1776338))

(assert (=> b!1512474 m!1776638))

(declare-fun m!1776644 () Bool)

(assert (=> b!1512469 m!1776644))

(declare-fun m!1776646 () Bool)

(assert (=> b!1512469 m!1776646))

(declare-fun m!1776648 () Bool)

(assert (=> b!1512470 m!1776648))

(declare-fun m!1776650 () Bool)

(assert (=> b!1512470 m!1776650))

(declare-fun m!1776652 () Bool)

(assert (=> d!447888 m!1776652))

(declare-fun m!1776654 () Bool)

(assert (=> d!447888 m!1776654))

(assert (=> b!1512475 m!1776636))

(assert (=> b!1512475 m!1776338))

(assert (=> b!1512313 d!447888))

(declare-fun d!447890 () Bool)

(assert (=> d!447890 (= (list!6342 lt!525961) (list!6345 (c!247915 lt!525961)))))

(declare-fun bs!364419 () Bool)

(assert (= bs!364419 d!447890))

(declare-fun m!1776656 () Bool)

(assert (=> bs!364419 m!1776656))

(assert (=> b!1512313 d!447890))

(declare-fun b!1512486 () Bool)

(declare-fun e!967161 () tuple2!14926)

(assert (=> b!1512486 (= e!967161 (tuple2!14927 Nil!16061 lt!525959))))

(declare-fun b!1512487 () Bool)

(declare-fun e!967159 () Bool)

(declare-fun lt!526039 () tuple2!14926)

(assert (=> b!1512487 (= e!967159 (= (_2!8478 lt!526039) lt!525959))))

(declare-fun d!447892 () Bool)

(assert (=> d!447892 e!967159))

(declare-fun c!247961 () Bool)

(assert (=> d!447892 (= c!247961 (> (size!12988 (_1!8478 lt!526039)) 0))))

(assert (=> d!447892 (= lt!526039 e!967161)))

(declare-fun c!247962 () Bool)

(declare-datatypes ((tuple2!14928 0))(
  ( (tuple2!14929 (_1!8479 Token!5346) (_2!8479 List!16123)) )
))
(declare-datatypes ((Option!2929 0))(
  ( (None!2928) (Some!2928 (v!22877 tuple2!14928)) )
))
(declare-fun lt!526038 () Option!2929)

(assert (=> d!447892 (= c!247962 ((_ is Some!2928) lt!526038))))

(declare-fun maxPrefix!1208 (LexerInterface!2495 List!16124 List!16123) Option!2929)

(assert (=> d!447892 (= lt!526038 (maxPrefix!1208 thiss!13241 rules!1640 lt!525959))))

(assert (=> d!447892 (= (lexList!746 thiss!13241 rules!1640 lt!525959) lt!526039)))

(declare-fun b!1512488 () Bool)

(declare-fun e!967160 () Bool)

(declare-fun isEmpty!9928 (List!16129) Bool)

(assert (=> b!1512488 (= e!967160 (not (isEmpty!9928 (_1!8478 lt!526039))))))

(declare-fun b!1512489 () Bool)

(declare-fun lt!526037 () tuple2!14926)

(assert (=> b!1512489 (= e!967161 (tuple2!14927 (Cons!16061 (_1!8479 (v!22877 lt!526038)) (_1!8478 lt!526037)) (_2!8478 lt!526037)))))

(assert (=> b!1512489 (= lt!526037 (lexList!746 thiss!13241 rules!1640 (_2!8479 (v!22877 lt!526038))))))

(declare-fun b!1512490 () Bool)

(assert (=> b!1512490 (= e!967159 e!967160)))

(declare-fun res!680617 () Bool)

(assert (=> b!1512490 (= res!680617 (< (size!12987 (_2!8478 lt!526039)) (size!12987 lt!525959)))))

(assert (=> b!1512490 (=> (not res!680617) (not e!967160))))

(assert (= (and d!447892 c!247962) b!1512489))

(assert (= (and d!447892 (not c!247962)) b!1512486))

(assert (= (and d!447892 c!247961) b!1512490))

(assert (= (and d!447892 (not c!247961)) b!1512487))

(assert (= (and b!1512490 res!680617) b!1512488))

(declare-fun m!1776658 () Bool)

(assert (=> d!447892 m!1776658))

(declare-fun m!1776660 () Bool)

(assert (=> d!447892 m!1776660))

(declare-fun m!1776662 () Bool)

(assert (=> b!1512488 m!1776662))

(declare-fun m!1776664 () Bool)

(assert (=> b!1512489 m!1776664))

(declare-fun m!1776666 () Bool)

(assert (=> b!1512490 m!1776666))

(declare-fun m!1776668 () Bool)

(assert (=> b!1512490 m!1776668))

(assert (=> b!1512313 d!447892))

(declare-fun d!447894 () Bool)

(declare-fun e!967162 () Bool)

(assert (=> d!447894 e!967162))

(declare-fun res!680619 () Bool)

(assert (=> d!447894 (=> (not res!680619) (not e!967162))))

(declare-fun lt!526040 () List!16129)

(assert (=> d!447894 (= res!680619 (= (content!2313 lt!526040) ((_ map or) (content!2313 lt!525967) (content!2313 lt!525958))))))

(declare-fun e!967163 () List!16129)

(assert (=> d!447894 (= lt!526040 e!967163)))

(declare-fun c!247963 () Bool)

(assert (=> d!447894 (= c!247963 ((_ is Nil!16061) lt!525967))))

(assert (=> d!447894 (= (++!4354 lt!525967 lt!525958) lt!526040)))

(declare-fun b!1512492 () Bool)

(assert (=> b!1512492 (= e!967163 (Cons!16061 (h!21462 lt!525967) (++!4354 (t!139403 lt!525967) lt!525958)))))

(declare-fun b!1512491 () Bool)

(assert (=> b!1512491 (= e!967163 lt!525958)))

(declare-fun b!1512493 () Bool)

(declare-fun res!680618 () Bool)

(assert (=> b!1512493 (=> (not res!680618) (not e!967162))))

(assert (=> b!1512493 (= res!680618 (= (size!12988 lt!526040) (+ (size!12988 lt!525967) (size!12988 lt!525958))))))

(declare-fun b!1512494 () Bool)

(assert (=> b!1512494 (= e!967162 (or (not (= lt!525958 Nil!16061)) (= lt!526040 lt!525967)))))

(assert (= (and d!447894 c!247963) b!1512491))

(assert (= (and d!447894 (not c!247963)) b!1512492))

(assert (= (and d!447894 res!680619) b!1512493))

(assert (= (and b!1512493 res!680618) b!1512494))

(declare-fun m!1776670 () Bool)

(assert (=> d!447894 m!1776670))

(assert (=> d!447894 m!1776564))

(assert (=> d!447894 m!1776576))

(declare-fun m!1776672 () Bool)

(assert (=> b!1512492 m!1776672))

(declare-fun m!1776674 () Bool)

(assert (=> b!1512493 m!1776674))

(assert (=> b!1512493 m!1776570))

(assert (=> b!1512493 m!1776584))

(assert (=> b!1512313 d!447894))

(declare-fun b!1512498 () Bool)

(declare-fun lt!526041 () List!16123)

(declare-fun e!967164 () Bool)

(assert (=> b!1512498 (= e!967164 (or (not (= (++!4351 lt!525949 lt!525955) Nil!16055)) (= lt!526041 lt!525950)))))

(declare-fun b!1512497 () Bool)

(declare-fun res!680620 () Bool)

(assert (=> b!1512497 (=> (not res!680620) (not e!967164))))

(assert (=> b!1512497 (= res!680620 (= (size!12987 lt!526041) (+ (size!12987 lt!525950) (size!12987 (++!4351 lt!525949 lt!525955)))))))

(declare-fun e!967165 () List!16123)

(declare-fun b!1512496 () Bool)

(assert (=> b!1512496 (= e!967165 (Cons!16055 (h!21456 lt!525950) (++!4351 (t!139397 lt!525950) (++!4351 lt!525949 lt!525955))))))

(declare-fun b!1512495 () Bool)

(assert (=> b!1512495 (= e!967165 (++!4351 lt!525949 lt!525955))))

(declare-fun d!447896 () Bool)

(assert (=> d!447896 e!967164))

(declare-fun res!680621 () Bool)

(assert (=> d!447896 (=> (not res!680621) (not e!967164))))

(assert (=> d!447896 (= res!680621 (= (content!2312 lt!526041) ((_ map or) (content!2312 lt!525950) (content!2312 (++!4351 lt!525949 lt!525955)))))))

(assert (=> d!447896 (= lt!526041 e!967165)))

(declare-fun c!247964 () Bool)

(assert (=> d!447896 (= c!247964 ((_ is Nil!16055) lt!525950))))

(assert (=> d!447896 (= (++!4351 lt!525950 (++!4351 lt!525949 lt!525955)) lt!526041)))

(assert (= (and d!447896 c!247964) b!1512495))

(assert (= (and d!447896 (not c!247964)) b!1512496))

(assert (= (and d!447896 res!680621) b!1512497))

(assert (= (and b!1512497 res!680620) b!1512498))

(declare-fun m!1776676 () Bool)

(assert (=> b!1512497 m!1776676))

(assert (=> b!1512497 m!1776624))

(assert (=> b!1512497 m!1776330))

(declare-fun m!1776678 () Bool)

(assert (=> b!1512497 m!1776678))

(assert (=> b!1512496 m!1776330))

(declare-fun m!1776680 () Bool)

(assert (=> b!1512496 m!1776680))

(declare-fun m!1776682 () Bool)

(assert (=> d!447896 m!1776682))

(assert (=> d!447896 m!1776632))

(assert (=> d!447896 m!1776330))

(declare-fun m!1776684 () Bool)

(assert (=> d!447896 m!1776684))

(assert (=> b!1512313 d!447896))

(declare-fun d!447898 () Bool)

(assert (=> d!447898 (= (list!6342 lt!525957) (list!6345 (c!247915 lt!525957)))))

(declare-fun bs!364420 () Bool)

(assert (= bs!364420 d!447898))

(declare-fun m!1776686 () Bool)

(assert (=> bs!364420 m!1776686))

(assert (=> b!1512313 d!447898))

(declare-fun e!967166 () Bool)

(declare-fun b!1512502 () Bool)

(declare-fun lt!526042 () List!16123)

(assert (=> b!1512502 (= e!967166 (or (not (= lt!525955 Nil!16055)) (= lt!526042 lt!525959)))))

(declare-fun b!1512501 () Bool)

(declare-fun res!680622 () Bool)

(assert (=> b!1512501 (=> (not res!680622) (not e!967166))))

(assert (=> b!1512501 (= res!680622 (= (size!12987 lt!526042) (+ (size!12987 lt!525959) (size!12987 lt!525955))))))

(declare-fun b!1512500 () Bool)

(declare-fun e!967167 () List!16123)

(assert (=> b!1512500 (= e!967167 (Cons!16055 (h!21456 lt!525959) (++!4351 (t!139397 lt!525959) lt!525955)))))

(declare-fun b!1512499 () Bool)

(assert (=> b!1512499 (= e!967167 lt!525955)))

(declare-fun d!447900 () Bool)

(assert (=> d!447900 e!967166))

(declare-fun res!680623 () Bool)

(assert (=> d!447900 (=> (not res!680623) (not e!967166))))

(assert (=> d!447900 (= res!680623 (= (content!2312 lt!526042) ((_ map or) (content!2312 lt!525959) (content!2312 lt!525955))))))

(assert (=> d!447900 (= lt!526042 e!967167)))

(declare-fun c!247965 () Bool)

(assert (=> d!447900 (= c!247965 ((_ is Nil!16055) lt!525959))))

(assert (=> d!447900 (= (++!4351 lt!525959 lt!525955) lt!526042)))

(assert (= (and d!447900 c!247965) b!1512499))

(assert (= (and d!447900 (not c!247965)) b!1512500))

(assert (= (and d!447900 res!680623) b!1512501))

(assert (= (and b!1512501 res!680622) b!1512502))

(declare-fun m!1776688 () Bool)

(assert (=> b!1512501 m!1776688))

(assert (=> b!1512501 m!1776668))

(assert (=> b!1512501 m!1776534))

(declare-fun m!1776690 () Bool)

(assert (=> b!1512500 m!1776690))

(declare-fun m!1776692 () Bool)

(assert (=> d!447900 m!1776692))

(declare-fun m!1776694 () Bool)

(assert (=> d!447900 m!1776694))

(assert (=> d!447900 m!1776542))

(assert (=> b!1512313 d!447900))

(declare-fun b!1512503 () Bool)

(declare-fun e!967169 () Bool)

(declare-fun e!967171 () Bool)

(assert (=> b!1512503 (= e!967169 e!967171)))

(declare-fun res!680626 () Bool)

(declare-fun lt!526044 () tuple2!14924)

(assert (=> b!1512503 (= res!680626 (< (size!12985 (_2!8477 lt!526044)) (size!12985 lt!525961)))))

(assert (=> b!1512503 (=> (not res!680626) (not e!967171))))

(declare-fun b!1512504 () Bool)

(declare-fun e!967170 () tuple2!14924)

(declare-fun lt!526043 () tuple2!14924)

(declare-fun lt!526045 () Option!2928)

(assert (=> b!1512504 (= e!967170 (tuple2!14925 (prepend!463 (_1!8477 lt!526043) (_1!8475 (v!22873 lt!526045))) (_2!8477 lt!526043)))))

(assert (=> b!1512504 (= lt!526043 (lexRec!330 thiss!13241 rules!1640 (_2!8475 (v!22873 lt!526045))))))

(declare-fun e!967168 () Bool)

(declare-fun b!1512505 () Bool)

(assert (=> b!1512505 (= e!967168 (= (list!6342 (_2!8477 lt!526044)) (_2!8478 (lexList!746 thiss!13241 rules!1640 (list!6342 lt!525961)))))))

(declare-fun b!1512506 () Bool)

(assert (=> b!1512506 (= e!967170 (tuple2!14925 (BalanceConc!10815 Empty!5436) lt!525961))))

(declare-fun d!447902 () Bool)

(assert (=> d!447902 e!967168))

(declare-fun res!680624 () Bool)

(assert (=> d!447902 (=> (not res!680624) (not e!967168))))

(assert (=> d!447902 (= res!680624 e!967169)))

(declare-fun c!247967 () Bool)

(assert (=> d!447902 (= c!247967 (> (size!12986 (_1!8477 lt!526044)) 0))))

(assert (=> d!447902 (= lt!526044 e!967170)))

(declare-fun c!247966 () Bool)

(assert (=> d!447902 (= c!247966 ((_ is Some!2927) lt!526045))))

(assert (=> d!447902 (= lt!526045 (maxPrefixZipperSequence!588 thiss!13241 rules!1640 lt!525961))))

(assert (=> d!447902 (= (lexRec!330 thiss!13241 rules!1640 lt!525961) lt!526044)))

(declare-fun b!1512507 () Bool)

(assert (=> b!1512507 (= e!967171 (not (isEmpty!9927 (_1!8477 lt!526044))))))

(declare-fun b!1512508 () Bool)

(declare-fun res!680625 () Bool)

(assert (=> b!1512508 (=> (not res!680625) (not e!967168))))

(assert (=> b!1512508 (= res!680625 (= (list!6343 (_1!8477 lt!526044)) (_1!8478 (lexList!746 thiss!13241 rules!1640 (list!6342 lt!525961)))))))

(declare-fun b!1512509 () Bool)

(assert (=> b!1512509 (= e!967169 (= (list!6342 (_2!8477 lt!526044)) (list!6342 lt!525961)))))

(assert (= (and d!447902 c!247966) b!1512504))

(assert (= (and d!447902 (not c!247966)) b!1512506))

(assert (= (and d!447902 c!247967) b!1512503))

(assert (= (and d!447902 (not c!247967)) b!1512509))

(assert (= (and b!1512503 res!680626) b!1512507))

(assert (= (and d!447902 res!680624) b!1512508))

(assert (= (and b!1512508 res!680625) b!1512505))

(declare-fun m!1776696 () Bool)

(assert (=> b!1512505 m!1776696))

(assert (=> b!1512505 m!1776354))

(assert (=> b!1512505 m!1776354))

(declare-fun m!1776698 () Bool)

(assert (=> b!1512505 m!1776698))

(declare-fun m!1776700 () Bool)

(assert (=> b!1512507 m!1776700))

(declare-fun m!1776702 () Bool)

(assert (=> b!1512508 m!1776702))

(assert (=> b!1512508 m!1776354))

(assert (=> b!1512508 m!1776354))

(assert (=> b!1512508 m!1776698))

(declare-fun m!1776704 () Bool)

(assert (=> b!1512503 m!1776704))

(declare-fun m!1776706 () Bool)

(assert (=> b!1512503 m!1776706))

(declare-fun m!1776708 () Bool)

(assert (=> b!1512504 m!1776708))

(declare-fun m!1776710 () Bool)

(assert (=> b!1512504 m!1776710))

(declare-fun m!1776712 () Bool)

(assert (=> d!447902 m!1776712))

(assert (=> d!447902 m!1776312))

(assert (=> b!1512509 m!1776696))

(assert (=> b!1512509 m!1776354))

(assert (=> b!1512313 d!447902))

(declare-fun b!1512513 () Bool)

(declare-fun lt!526046 () List!16123)

(declare-fun e!967172 () Bool)

(assert (=> b!1512513 (= e!967172 (or (not (= lt!525955 Nil!16055)) (= lt!526046 lt!525949)))))

(declare-fun b!1512512 () Bool)

(declare-fun res!680627 () Bool)

(assert (=> b!1512512 (=> (not res!680627) (not e!967172))))

(assert (=> b!1512512 (= res!680627 (= (size!12987 lt!526046) (+ (size!12987 lt!525949) (size!12987 lt!525955))))))

(declare-fun b!1512511 () Bool)

(declare-fun e!967173 () List!16123)

(assert (=> b!1512511 (= e!967173 (Cons!16055 (h!21456 lt!525949) (++!4351 (t!139397 lt!525949) lt!525955)))))

(declare-fun b!1512510 () Bool)

(assert (=> b!1512510 (= e!967173 lt!525955)))

(declare-fun d!447904 () Bool)

(assert (=> d!447904 e!967172))

(declare-fun res!680628 () Bool)

(assert (=> d!447904 (=> (not res!680628) (not e!967172))))

(assert (=> d!447904 (= res!680628 (= (content!2312 lt!526046) ((_ map or) (content!2312 lt!525949) (content!2312 lt!525955))))))

(assert (=> d!447904 (= lt!526046 e!967173)))

(declare-fun c!247968 () Bool)

(assert (=> d!447904 (= c!247968 ((_ is Nil!16055) lt!525949))))

(assert (=> d!447904 (= (++!4351 lt!525949 lt!525955) lt!526046)))

(assert (= (and d!447904 c!247968) b!1512510))

(assert (= (and d!447904 (not c!247968)) b!1512511))

(assert (= (and d!447904 res!680628) b!1512512))

(assert (= (and b!1512512 res!680627) b!1512513))

(declare-fun m!1776714 () Bool)

(assert (=> b!1512512 m!1776714))

(assert (=> b!1512512 m!1776626))

(assert (=> b!1512512 m!1776534))

(declare-fun m!1776716 () Bool)

(assert (=> b!1512511 m!1776716))

(declare-fun m!1776718 () Bool)

(assert (=> d!447904 m!1776718))

(assert (=> d!447904 m!1776634))

(assert (=> d!447904 m!1776542))

(assert (=> b!1512313 d!447904))

(declare-fun d!447906 () Bool)

(assert (=> d!447906 (= (++!4351 (++!4351 lt!525950 lt!525949) lt!525955) (++!4351 lt!525950 (++!4351 lt!525949 lt!525955)))))

(declare-fun lt!526049 () Unit!25741)

(declare-fun choose!9160 (List!16123 List!16123 List!16123) Unit!25741)

(assert (=> d!447906 (= lt!526049 (choose!9160 lt!525950 lt!525949 lt!525955))))

(assert (=> d!447906 (= (lemmaConcatAssociativity!941 lt!525950 lt!525949 lt!525955) lt!526049)))

(declare-fun bs!364421 () Bool)

(assert (= bs!364421 d!447906))

(assert (=> bs!364421 m!1776310))

(assert (=> bs!364421 m!1776310))

(declare-fun m!1776720 () Bool)

(assert (=> bs!364421 m!1776720))

(assert (=> bs!364421 m!1776330))

(declare-fun m!1776722 () Bool)

(assert (=> bs!364421 m!1776722))

(assert (=> bs!364421 m!1776330))

(assert (=> bs!364421 m!1776332))

(assert (=> b!1512313 d!447906))

(declare-fun b!1512530 () Bool)

(declare-fun lt!526066 () Option!2928)

(declare-fun e!967187 () Bool)

(declare-fun get!4735 (Option!2928) tuple2!14922)

(declare-fun get!4736 (Option!2929) tuple2!14928)

(declare-fun maxPrefixZipper!259 (LexerInterface!2495 List!16124 List!16123) Option!2929)

(assert (=> b!1512530 (= e!967187 (= (list!6342 (_2!8475 (get!4735 lt!526066))) (_2!8479 (get!4736 (maxPrefixZipper!259 thiss!13241 rules!1640 (list!6342 input!1102))))))))

(declare-fun b!1512532 () Bool)

(declare-fun e!967189 () Option!2928)

(declare-fun lt!526067 () Option!2928)

(declare-fun lt!526068 () Option!2928)

(assert (=> b!1512532 (= e!967189 (ite (and ((_ is None!2927) lt!526067) ((_ is None!2927) lt!526068)) None!2927 (ite ((_ is None!2927) lt!526068) lt!526067 (ite ((_ is None!2927) lt!526067) lt!526068 (ite (>= (size!12984 (_1!8475 (v!22873 lt!526067))) (size!12984 (_1!8475 (v!22873 lt!526068)))) lt!526067 lt!526068)))))))

(declare-fun call!100329 () Option!2928)

(assert (=> b!1512532 (= lt!526067 call!100329)))

(assert (=> b!1512532 (= lt!526068 (maxPrefixZipperSequence!588 thiss!13241 (t!139398 rules!1640) input!1102))))

(declare-fun e!967186 () Bool)

(declare-fun b!1512533 () Bool)

(assert (=> b!1512533 (= e!967186 (= (list!6342 (_2!8475 (get!4735 lt!526066))) (_2!8479 (get!4736 (maxPrefix!1208 thiss!13241 rules!1640 (list!6342 input!1102))))))))

(declare-fun b!1512534 () Bool)

(assert (=> b!1512534 (= e!967189 call!100329)))

(declare-fun b!1512535 () Bool)

(declare-fun e!967188 () Bool)

(assert (=> b!1512535 (= e!967188 e!967186)))

(declare-fun res!680645 () Bool)

(assert (=> b!1512535 (=> (not res!680645) (not e!967186))))

(assert (=> b!1512535 (= res!680645 (= (_1!8475 (get!4735 lt!526066)) (_1!8479 (get!4736 (maxPrefix!1208 thiss!13241 rules!1640 (list!6342 input!1102))))))))

(declare-fun b!1512536 () Bool)

(declare-fun e!967191 () Bool)

(assert (=> b!1512536 (= e!967191 e!967188)))

(declare-fun res!680646 () Bool)

(assert (=> b!1512536 (=> res!680646 e!967188)))

(declare-fun isDefined!2353 (Option!2928) Bool)

(assert (=> b!1512536 (= res!680646 (not (isDefined!2353 lt!526066)))))

(declare-fun bm!100324 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!278 (LexerInterface!2495 Rule!5484 BalanceConc!10812) Option!2928)

(assert (=> bm!100324 (= call!100329 (maxPrefixOneRuleZipperSequence!278 thiss!13241 (h!21457 rules!1640) input!1102))))

(declare-fun b!1512537 () Bool)

(declare-fun e!967190 () Bool)

(assert (=> b!1512537 (= e!967190 e!967187)))

(declare-fun res!680644 () Bool)

(assert (=> b!1512537 (=> (not res!680644) (not e!967187))))

(assert (=> b!1512537 (= res!680644 (= (_1!8475 (get!4735 lt!526066)) (_1!8479 (get!4736 (maxPrefixZipper!259 thiss!13241 rules!1640 (list!6342 input!1102))))))))

(declare-fun d!447908 () Bool)

(assert (=> d!447908 e!967191))

(declare-fun res!680642 () Bool)

(assert (=> d!447908 (=> (not res!680642) (not e!967191))))

(declare-fun isDefined!2354 (Option!2929) Bool)

(assert (=> d!447908 (= res!680642 (= (isDefined!2353 lt!526066) (isDefined!2354 (maxPrefixZipper!259 thiss!13241 rules!1640 (list!6342 input!1102)))))))

(assert (=> d!447908 (= lt!526066 e!967189)))

(declare-fun c!247971 () Bool)

(assert (=> d!447908 (= c!247971 (and ((_ is Cons!16056) rules!1640) ((_ is Nil!16056) (t!139398 rules!1640))))))

(declare-fun lt!526070 () Unit!25741)

(declare-fun lt!526065 () Unit!25741)

(assert (=> d!447908 (= lt!526070 lt!526065)))

(declare-fun lt!526064 () List!16123)

(declare-fun lt!526069 () List!16123)

(declare-fun isPrefix!1218 (List!16123 List!16123) Bool)

(assert (=> d!447908 (isPrefix!1218 lt!526064 lt!526069)))

(declare-fun lemmaIsPrefixRefl!848 (List!16123 List!16123) Unit!25741)

(assert (=> d!447908 (= lt!526065 (lemmaIsPrefixRefl!848 lt!526064 lt!526069))))

(assert (=> d!447908 (= lt!526069 (list!6342 input!1102))))

(assert (=> d!447908 (= lt!526064 (list!6342 input!1102))))

(declare-fun rulesValidInductive!856 (LexerInterface!2495 List!16124) Bool)

(assert (=> d!447908 (rulesValidInductive!856 thiss!13241 rules!1640)))

(assert (=> d!447908 (= (maxPrefixZipperSequence!588 thiss!13241 rules!1640 input!1102) lt!526066)))

(declare-fun b!1512531 () Bool)

(declare-fun res!680641 () Bool)

(assert (=> b!1512531 (=> (not res!680641) (not e!967191))))

(assert (=> b!1512531 (= res!680641 e!967190)))

(declare-fun res!680643 () Bool)

(assert (=> b!1512531 (=> res!680643 e!967190)))

(assert (=> b!1512531 (= res!680643 (not (isDefined!2353 lt!526066)))))

(assert (= (and d!447908 c!247971) b!1512534))

(assert (= (and d!447908 (not c!247971)) b!1512532))

(assert (= (or b!1512534 b!1512532) bm!100324))

(assert (= (and d!447908 res!680642) b!1512531))

(assert (= (and b!1512531 (not res!680643)) b!1512537))

(assert (= (and b!1512537 res!680644) b!1512530))

(assert (= (and b!1512531 res!680641) b!1512536))

(assert (= (and b!1512536 (not res!680646)) b!1512535))

(assert (= (and b!1512535 res!680645) b!1512533))

(declare-fun m!1776724 () Bool)

(assert (=> bm!100324 m!1776724))

(declare-fun m!1776726 () Bool)

(assert (=> b!1512535 m!1776726))

(assert (=> b!1512535 m!1776298))

(assert (=> b!1512535 m!1776298))

(declare-fun m!1776728 () Bool)

(assert (=> b!1512535 m!1776728))

(assert (=> b!1512535 m!1776728))

(declare-fun m!1776730 () Bool)

(assert (=> b!1512535 m!1776730))

(declare-fun m!1776732 () Bool)

(assert (=> b!1512531 m!1776732))

(assert (=> b!1512537 m!1776726))

(assert (=> b!1512537 m!1776298))

(assert (=> b!1512537 m!1776298))

(declare-fun m!1776734 () Bool)

(assert (=> b!1512537 m!1776734))

(assert (=> b!1512537 m!1776734))

(declare-fun m!1776736 () Bool)

(assert (=> b!1512537 m!1776736))

(declare-fun m!1776738 () Bool)

(assert (=> b!1512532 m!1776738))

(assert (=> b!1512536 m!1776732))

(assert (=> b!1512533 m!1776298))

(assert (=> b!1512533 m!1776728))

(declare-fun m!1776740 () Bool)

(assert (=> b!1512533 m!1776740))

(assert (=> b!1512533 m!1776298))

(assert (=> b!1512533 m!1776726))

(assert (=> b!1512533 m!1776728))

(assert (=> b!1512533 m!1776730))

(declare-fun m!1776742 () Bool)

(assert (=> d!447908 m!1776742))

(assert (=> d!447908 m!1776298))

(assert (=> d!447908 m!1776734))

(declare-fun m!1776744 () Bool)

(assert (=> d!447908 m!1776744))

(assert (=> d!447908 m!1776732))

(declare-fun m!1776746 () Bool)

(assert (=> d!447908 m!1776746))

(assert (=> d!447908 m!1776734))

(declare-fun m!1776748 () Bool)

(assert (=> d!447908 m!1776748))

(assert (=> d!447908 m!1776298))

(assert (=> b!1512530 m!1776734))

(assert (=> b!1512530 m!1776736))

(assert (=> b!1512530 m!1776740))

(assert (=> b!1512530 m!1776298))

(assert (=> b!1512530 m!1776734))

(assert (=> b!1512530 m!1776726))

(assert (=> b!1512530 m!1776298))

(assert (=> b!1512313 d!447908))

(declare-fun d!447910 () Bool)

(assert (=> d!447910 (= (++!4354 (++!4354 lt!525960 lt!525967) lt!525958) (++!4354 lt!525960 (++!4354 lt!525967 lt!525958)))))

(declare-fun lt!526073 () Unit!25741)

(declare-fun choose!9161 (List!16129 List!16129 List!16129) Unit!25741)

(assert (=> d!447910 (= lt!526073 (choose!9161 lt!525960 lt!525967 lt!525958))))

(assert (=> d!447910 (= (lemmaConcatAssociativity!940 lt!525960 lt!525967 lt!525958) lt!526073)))

(declare-fun bs!364422 () Bool)

(assert (= bs!364422 d!447910))

(assert (=> bs!364422 m!1776316))

(assert (=> bs!364422 m!1776316))

(assert (=> bs!364422 m!1776360))

(assert (=> bs!364422 m!1776348))

(assert (=> bs!364422 m!1776350))

(assert (=> bs!364422 m!1776348))

(declare-fun m!1776750 () Bool)

(assert (=> bs!364422 m!1776750))

(assert (=> b!1512313 d!447910))

(declare-fun d!447912 () Bool)

(assert (=> d!447912 (= (list!6342 (_2!8475 (v!22873 (_1!8476 lt!525947)))) (list!6345 (c!247915 (_2!8475 (v!22873 (_1!8476 lt!525947))))))))

(declare-fun bs!364423 () Bool)

(assert (= bs!364423 d!447912))

(declare-fun m!1776752 () Bool)

(assert (=> bs!364423 m!1776752))

(assert (=> b!1512313 d!447912))

(declare-fun d!447914 () Bool)

(declare-fun e!967194 () Bool)

(assert (=> d!447914 e!967194))

(declare-fun res!680649 () Bool)

(assert (=> d!447914 (=> res!680649 e!967194)))

(declare-fun lt!526076 () Bool)

(assert (=> d!447914 (= res!680649 (not lt!526076))))

(declare-fun drop!759 (List!16123 Int) List!16123)

(assert (=> d!447914 (= lt!526076 (= lt!525955 (drop!759 lt!525952 (- (size!12987 lt!525952) (size!12987 lt!525955)))))))

(assert (=> d!447914 (= (isSuffix!301 lt!525955 lt!525952) lt!526076)))

(declare-fun b!1512540 () Bool)

(assert (=> b!1512540 (= e!967194 (>= (size!12987 lt!525952) (size!12987 lt!525955)))))

(assert (= (and d!447914 (not res!680649)) b!1512540))

(declare-fun m!1776754 () Bool)

(assert (=> d!447914 m!1776754))

(assert (=> d!447914 m!1776534))

(declare-fun m!1776756 () Bool)

(assert (=> d!447914 m!1776756))

(assert (=> b!1512540 m!1776754))

(assert (=> b!1512540 m!1776534))

(assert (=> b!1512313 d!447914))

(declare-fun b!1512541 () Bool)

(declare-fun lt!526079 () Option!2928)

(declare-fun e!967196 () Bool)

(assert (=> b!1512541 (= e!967196 (= (list!6342 (_2!8475 (get!4735 lt!526079))) (_2!8479 (get!4736 (maxPrefixZipper!259 thiss!13241 rules!1640 (list!6342 lt!525961))))))))

(declare-fun b!1512543 () Bool)

(declare-fun e!967198 () Option!2928)

(declare-fun lt!526080 () Option!2928)

(declare-fun lt!526081 () Option!2928)

(assert (=> b!1512543 (= e!967198 (ite (and ((_ is None!2927) lt!526080) ((_ is None!2927) lt!526081)) None!2927 (ite ((_ is None!2927) lt!526081) lt!526080 (ite ((_ is None!2927) lt!526080) lt!526081 (ite (>= (size!12984 (_1!8475 (v!22873 lt!526080))) (size!12984 (_1!8475 (v!22873 lt!526081)))) lt!526080 lt!526081)))))))

(declare-fun call!100330 () Option!2928)

(assert (=> b!1512543 (= lt!526080 call!100330)))

(assert (=> b!1512543 (= lt!526081 (maxPrefixZipperSequence!588 thiss!13241 (t!139398 rules!1640) lt!525961))))

(declare-fun b!1512544 () Bool)

(declare-fun e!967195 () Bool)

(assert (=> b!1512544 (= e!967195 (= (list!6342 (_2!8475 (get!4735 lt!526079))) (_2!8479 (get!4736 (maxPrefix!1208 thiss!13241 rules!1640 (list!6342 lt!525961))))))))

(declare-fun b!1512545 () Bool)

(assert (=> b!1512545 (= e!967198 call!100330)))

(declare-fun b!1512546 () Bool)

(declare-fun e!967197 () Bool)

(assert (=> b!1512546 (= e!967197 e!967195)))

(declare-fun res!680654 () Bool)

(assert (=> b!1512546 (=> (not res!680654) (not e!967195))))

(assert (=> b!1512546 (= res!680654 (= (_1!8475 (get!4735 lt!526079)) (_1!8479 (get!4736 (maxPrefix!1208 thiss!13241 rules!1640 (list!6342 lt!525961))))))))

(declare-fun b!1512547 () Bool)

(declare-fun e!967200 () Bool)

(assert (=> b!1512547 (= e!967200 e!967197)))

(declare-fun res!680655 () Bool)

(assert (=> b!1512547 (=> res!680655 e!967197)))

(assert (=> b!1512547 (= res!680655 (not (isDefined!2353 lt!526079)))))

(declare-fun bm!100325 () Bool)

(assert (=> bm!100325 (= call!100330 (maxPrefixOneRuleZipperSequence!278 thiss!13241 (h!21457 rules!1640) lt!525961))))

(declare-fun b!1512548 () Bool)

(declare-fun e!967199 () Bool)

(assert (=> b!1512548 (= e!967199 e!967196)))

(declare-fun res!680653 () Bool)

(assert (=> b!1512548 (=> (not res!680653) (not e!967196))))

(assert (=> b!1512548 (= res!680653 (= (_1!8475 (get!4735 lt!526079)) (_1!8479 (get!4736 (maxPrefixZipper!259 thiss!13241 rules!1640 (list!6342 lt!525961))))))))

(declare-fun d!447916 () Bool)

(assert (=> d!447916 e!967200))

(declare-fun res!680651 () Bool)

(assert (=> d!447916 (=> (not res!680651) (not e!967200))))

(assert (=> d!447916 (= res!680651 (= (isDefined!2353 lt!526079) (isDefined!2354 (maxPrefixZipper!259 thiss!13241 rules!1640 (list!6342 lt!525961)))))))

(assert (=> d!447916 (= lt!526079 e!967198)))

(declare-fun c!247972 () Bool)

(assert (=> d!447916 (= c!247972 (and ((_ is Cons!16056) rules!1640) ((_ is Nil!16056) (t!139398 rules!1640))))))

(declare-fun lt!526083 () Unit!25741)

(declare-fun lt!526078 () Unit!25741)

(assert (=> d!447916 (= lt!526083 lt!526078)))

(declare-fun lt!526077 () List!16123)

(declare-fun lt!526082 () List!16123)

(assert (=> d!447916 (isPrefix!1218 lt!526077 lt!526082)))

(assert (=> d!447916 (= lt!526078 (lemmaIsPrefixRefl!848 lt!526077 lt!526082))))

(assert (=> d!447916 (= lt!526082 (list!6342 lt!525961))))

(assert (=> d!447916 (= lt!526077 (list!6342 lt!525961))))

(assert (=> d!447916 (rulesValidInductive!856 thiss!13241 rules!1640)))

(assert (=> d!447916 (= (maxPrefixZipperSequence!588 thiss!13241 rules!1640 lt!525961) lt!526079)))

(declare-fun b!1512542 () Bool)

(declare-fun res!680650 () Bool)

(assert (=> b!1512542 (=> (not res!680650) (not e!967200))))

(assert (=> b!1512542 (= res!680650 e!967199)))

(declare-fun res!680652 () Bool)

(assert (=> b!1512542 (=> res!680652 e!967199)))

(assert (=> b!1512542 (= res!680652 (not (isDefined!2353 lt!526079)))))

(assert (= (and d!447916 c!247972) b!1512545))

(assert (= (and d!447916 (not c!247972)) b!1512543))

(assert (= (or b!1512545 b!1512543) bm!100325))

(assert (= (and d!447916 res!680651) b!1512542))

(assert (= (and b!1512542 (not res!680652)) b!1512548))

(assert (= (and b!1512548 res!680653) b!1512541))

(assert (= (and b!1512542 res!680650) b!1512547))

(assert (= (and b!1512547 (not res!680655)) b!1512546))

(assert (= (and b!1512546 res!680654) b!1512544))

(declare-fun m!1776758 () Bool)

(assert (=> bm!100325 m!1776758))

(declare-fun m!1776760 () Bool)

(assert (=> b!1512546 m!1776760))

(assert (=> b!1512546 m!1776354))

(assert (=> b!1512546 m!1776354))

(declare-fun m!1776762 () Bool)

(assert (=> b!1512546 m!1776762))

(assert (=> b!1512546 m!1776762))

(declare-fun m!1776764 () Bool)

(assert (=> b!1512546 m!1776764))

(declare-fun m!1776766 () Bool)

(assert (=> b!1512542 m!1776766))

(assert (=> b!1512548 m!1776760))

(assert (=> b!1512548 m!1776354))

(assert (=> b!1512548 m!1776354))

(declare-fun m!1776768 () Bool)

(assert (=> b!1512548 m!1776768))

(assert (=> b!1512548 m!1776768))

(declare-fun m!1776770 () Bool)

(assert (=> b!1512548 m!1776770))

(declare-fun m!1776772 () Bool)

(assert (=> b!1512543 m!1776772))

(assert (=> b!1512547 m!1776766))

(assert (=> b!1512544 m!1776354))

(assert (=> b!1512544 m!1776762))

(declare-fun m!1776774 () Bool)

(assert (=> b!1512544 m!1776774))

(assert (=> b!1512544 m!1776354))

(assert (=> b!1512544 m!1776760))

(assert (=> b!1512544 m!1776762))

(assert (=> b!1512544 m!1776764))

(assert (=> d!447916 m!1776742))

(assert (=> d!447916 m!1776354))

(assert (=> d!447916 m!1776768))

(declare-fun m!1776776 () Bool)

(assert (=> d!447916 m!1776776))

(assert (=> d!447916 m!1776766))

(declare-fun m!1776778 () Bool)

(assert (=> d!447916 m!1776778))

(assert (=> d!447916 m!1776768))

(declare-fun m!1776780 () Bool)

(assert (=> d!447916 m!1776780))

(assert (=> d!447916 m!1776354))

(assert (=> b!1512541 m!1776768))

(assert (=> b!1512541 m!1776770))

(assert (=> b!1512541 m!1776774))

(assert (=> b!1512541 m!1776354))

(assert (=> b!1512541 m!1776768))

(assert (=> b!1512541 m!1776760))

(assert (=> b!1512541 m!1776354))

(assert (=> b!1512313 d!447916))

(declare-fun d!447918 () Bool)

(declare-fun e!967201 () Bool)

(assert (=> d!447918 e!967201))

(declare-fun res!680656 () Bool)

(assert (=> d!447918 (=> res!680656 e!967201)))

(declare-fun lt!526084 () Bool)

(assert (=> d!447918 (= res!680656 (not lt!526084))))

(assert (=> d!447918 (= lt!526084 (= lt!525955 (drop!759 (++!4351 lt!525951 lt!525955) (- (size!12987 (++!4351 lt!525951 lt!525955)) (size!12987 lt!525955)))))))

(assert (=> d!447918 (= (isSuffix!301 lt!525955 (++!4351 lt!525951 lt!525955)) lt!526084)))

(declare-fun b!1512549 () Bool)

(assert (=> b!1512549 (= e!967201 (>= (size!12987 (++!4351 lt!525951 lt!525955)) (size!12987 lt!525955)))))

(assert (= (and d!447918 (not res!680656)) b!1512549))

(assert (=> d!447918 m!1776306))

(declare-fun m!1776782 () Bool)

(assert (=> d!447918 m!1776782))

(assert (=> d!447918 m!1776534))

(assert (=> d!447918 m!1776306))

(declare-fun m!1776784 () Bool)

(assert (=> d!447918 m!1776784))

(assert (=> b!1512549 m!1776306))

(assert (=> b!1512549 m!1776782))

(assert (=> b!1512549 m!1776534))

(assert (=> b!1512313 d!447918))

(declare-fun d!447920 () Bool)

(assert (=> d!447920 (= (list!6343 (_1!8477 lt!525970)) (list!6344 (c!247917 (_1!8477 lt!525970))))))

(declare-fun bs!364424 () Bool)

(assert (= bs!364424 d!447920))

(declare-fun m!1776786 () Bool)

(assert (=> bs!364424 m!1776786))

(assert (=> b!1512313 d!447920))

(declare-fun d!447922 () Bool)

(assert (=> d!447922 (= (list!6342 (_2!8477 lt!525970)) (list!6345 (c!247915 (_2!8477 lt!525970))))))

(declare-fun bs!364425 () Bool)

(assert (= bs!364425 d!447922))

(declare-fun m!1776788 () Bool)

(assert (=> bs!364425 m!1776788))

(assert (=> b!1512313 d!447922))

(declare-fun d!447924 () Bool)

(assert (=> d!447924 (= (valid!1175 cacheUp!616) (validCacheMapUp!134 (cache!1799 cacheUp!616)))))

(declare-fun bs!364426 () Bool)

(assert (= bs!364426 d!447924))

(assert (=> bs!364426 m!1776420))

(assert (=> b!1512276 d!447924))

(declare-fun d!447926 () Bool)

(assert (=> d!447926 (= (valid!1176 cacheFurthestNullable!64) (validCacheMapFurthestNullable!47 (cache!1798 cacheFurthestNullable!64) (totalInput!2294 cacheFurthestNullable!64)))))

(declare-fun bs!364427 () Bool)

(assert (= bs!364427 d!447926))

(assert (=> bs!364427 m!1776412))

(assert (=> b!1512294 d!447926))

(declare-fun d!447928 () Bool)

(declare-fun e!967202 () Bool)

(assert (=> d!447928 e!967202))

(declare-fun res!680657 () Bool)

(assert (=> d!447928 (=> (not res!680657) (not e!967202))))

(assert (=> d!447928 (= res!680657 (isBalanced!1607 (prepend!464 (c!247917 (_1!8477 lt!525979)) (_1!8475 (v!22873 lt!525953)))))))

(declare-fun lt!526085 () BalanceConc!10814)

(assert (=> d!447928 (= lt!526085 (BalanceConc!10815 (prepend!464 (c!247917 (_1!8477 lt!525979)) (_1!8475 (v!22873 lt!525953)))))))

(assert (=> d!447928 (= (prepend!463 (_1!8477 lt!525979) (_1!8475 (v!22873 lt!525953))) lt!526085)))

(declare-fun b!1512550 () Bool)

(assert (=> b!1512550 (= e!967202 (= (list!6343 lt!526085) (Cons!16061 (_1!8475 (v!22873 lt!525953)) (list!6343 (_1!8477 lt!525979)))))))

(assert (= (and d!447928 res!680657) b!1512550))

(declare-fun m!1776790 () Bool)

(assert (=> d!447928 m!1776790))

(assert (=> d!447928 m!1776790))

(declare-fun m!1776792 () Bool)

(assert (=> d!447928 m!1776792))

(declare-fun m!1776794 () Bool)

(assert (=> b!1512550 m!1776794))

(declare-fun m!1776796 () Bool)

(assert (=> b!1512550 m!1776796))

(assert (=> b!1512312 d!447928))

(declare-fun b!1512551 () Bool)

(declare-fun e!967204 () Bool)

(declare-fun e!967206 () Bool)

(assert (=> b!1512551 (= e!967204 e!967206)))

(declare-fun res!680660 () Bool)

(declare-fun lt!526087 () tuple2!14924)

(assert (=> b!1512551 (= res!680660 (< (size!12985 (_2!8477 lt!526087)) (size!12985 (_2!8475 (v!22873 lt!525953)))))))

(assert (=> b!1512551 (=> (not res!680660) (not e!967206))))

(declare-fun b!1512552 () Bool)

(declare-fun e!967205 () tuple2!14924)

(declare-fun lt!526086 () tuple2!14924)

(declare-fun lt!526088 () Option!2928)

(assert (=> b!1512552 (= e!967205 (tuple2!14925 (prepend!463 (_1!8477 lt!526086) (_1!8475 (v!22873 lt!526088))) (_2!8477 lt!526086)))))

(assert (=> b!1512552 (= lt!526086 (lexRec!330 thiss!13241 rules!1640 (_2!8475 (v!22873 lt!526088))))))

(declare-fun e!967203 () Bool)

(declare-fun b!1512553 () Bool)

(assert (=> b!1512553 (= e!967203 (= (list!6342 (_2!8477 lt!526087)) (_2!8478 (lexList!746 thiss!13241 rules!1640 (list!6342 (_2!8475 (v!22873 lt!525953)))))))))

(declare-fun b!1512554 () Bool)

(assert (=> b!1512554 (= e!967205 (tuple2!14925 (BalanceConc!10815 Empty!5436) (_2!8475 (v!22873 lt!525953))))))

(declare-fun d!447930 () Bool)

(assert (=> d!447930 e!967203))

(declare-fun res!680658 () Bool)

(assert (=> d!447930 (=> (not res!680658) (not e!967203))))

(assert (=> d!447930 (= res!680658 e!967204)))

(declare-fun c!247974 () Bool)

(assert (=> d!447930 (= c!247974 (> (size!12986 (_1!8477 lt!526087)) 0))))

(assert (=> d!447930 (= lt!526087 e!967205)))

(declare-fun c!247973 () Bool)

(assert (=> d!447930 (= c!247973 ((_ is Some!2927) lt!526088))))

(assert (=> d!447930 (= lt!526088 (maxPrefixZipperSequence!588 thiss!13241 rules!1640 (_2!8475 (v!22873 lt!525953))))))

(assert (=> d!447930 (= (lexRec!330 thiss!13241 rules!1640 (_2!8475 (v!22873 lt!525953))) lt!526087)))

(declare-fun b!1512555 () Bool)

(assert (=> b!1512555 (= e!967206 (not (isEmpty!9927 (_1!8477 lt!526087))))))

(declare-fun b!1512556 () Bool)

(declare-fun res!680659 () Bool)

(assert (=> b!1512556 (=> (not res!680659) (not e!967203))))

(assert (=> b!1512556 (= res!680659 (= (list!6343 (_1!8477 lt!526087)) (_1!8478 (lexList!746 thiss!13241 rules!1640 (list!6342 (_2!8475 (v!22873 lt!525953)))))))))

(declare-fun b!1512557 () Bool)

(assert (=> b!1512557 (= e!967204 (= (list!6342 (_2!8477 lt!526087)) (list!6342 (_2!8475 (v!22873 lt!525953)))))))

(assert (= (and d!447930 c!247973) b!1512552))

(assert (= (and d!447930 (not c!247973)) b!1512554))

(assert (= (and d!447930 c!247974) b!1512551))

(assert (= (and d!447930 (not c!247974)) b!1512557))

(assert (= (and b!1512551 res!680660) b!1512555))

(assert (= (and d!447930 res!680658) b!1512556))

(assert (= (and b!1512556 res!680659) b!1512553))

(declare-fun m!1776798 () Bool)

(assert (=> b!1512553 m!1776798))

(declare-fun m!1776800 () Bool)

(assert (=> b!1512553 m!1776800))

(assert (=> b!1512553 m!1776800))

(declare-fun m!1776802 () Bool)

(assert (=> b!1512553 m!1776802))

(declare-fun m!1776804 () Bool)

(assert (=> b!1512555 m!1776804))

(declare-fun m!1776806 () Bool)

(assert (=> b!1512556 m!1776806))

(assert (=> b!1512556 m!1776800))

(assert (=> b!1512556 m!1776800))

(assert (=> b!1512556 m!1776802))

(declare-fun m!1776808 () Bool)

(assert (=> b!1512551 m!1776808))

(declare-fun m!1776810 () Bool)

(assert (=> b!1512551 m!1776810))

(declare-fun m!1776812 () Bool)

(assert (=> b!1512552 m!1776812))

(declare-fun m!1776814 () Bool)

(assert (=> b!1512552 m!1776814))

(declare-fun m!1776816 () Bool)

(assert (=> d!447930 m!1776816))

(declare-fun m!1776818 () Bool)

(assert (=> d!447930 m!1776818))

(assert (=> b!1512557 m!1776798))

(assert (=> b!1512557 m!1776800))

(assert (=> b!1512312 d!447930))

(declare-fun b!1512561 () Bool)

(declare-fun e!967207 () Bool)

(declare-fun lt!526089 () List!16123)

(assert (=> b!1512561 (= e!967207 (or (not (= lt!525963 Nil!16055)) (= lt!526089 lt!525950)))))

(declare-fun b!1512560 () Bool)

(declare-fun res!680661 () Bool)

(assert (=> b!1512560 (=> (not res!680661) (not e!967207))))

(assert (=> b!1512560 (= res!680661 (= (size!12987 lt!526089) (+ (size!12987 lt!525950) (size!12987 lt!525963))))))

(declare-fun b!1512559 () Bool)

(declare-fun e!967208 () List!16123)

(assert (=> b!1512559 (= e!967208 (Cons!16055 (h!21456 lt!525950) (++!4351 (t!139397 lt!525950) lt!525963)))))

(declare-fun b!1512558 () Bool)

(assert (=> b!1512558 (= e!967208 lt!525963)))

(declare-fun d!447932 () Bool)

(assert (=> d!447932 e!967207))

(declare-fun res!680662 () Bool)

(assert (=> d!447932 (=> (not res!680662) (not e!967207))))

(assert (=> d!447932 (= res!680662 (= (content!2312 lt!526089) ((_ map or) (content!2312 lt!525950) (content!2312 lt!525963))))))

(assert (=> d!447932 (= lt!526089 e!967208)))

(declare-fun c!247975 () Bool)

(assert (=> d!447932 (= c!247975 ((_ is Nil!16055) lt!525950))))

(assert (=> d!447932 (= (++!4351 lt!525950 lt!525963) lt!526089)))

(assert (= (and d!447932 c!247975) b!1512558))

(assert (= (and d!447932 (not c!247975)) b!1512559))

(assert (= (and d!447932 res!680662) b!1512560))

(assert (= (and b!1512560 res!680661) b!1512561))

(declare-fun m!1776820 () Bool)

(assert (=> b!1512560 m!1776820))

(assert (=> b!1512560 m!1776624))

(declare-fun m!1776822 () Bool)

(assert (=> b!1512560 m!1776822))

(declare-fun m!1776824 () Bool)

(assert (=> b!1512559 m!1776824))

(declare-fun m!1776826 () Bool)

(assert (=> d!447932 m!1776826))

(assert (=> d!447932 m!1776632))

(declare-fun m!1776828 () Bool)

(assert (=> d!447932 m!1776828))

(assert (=> b!1512275 d!447932))

(declare-fun d!447934 () Bool)

(assert (=> d!447934 (= (list!6342 totalInput!458) (list!6345 (c!247915 totalInput!458)))))

(declare-fun bs!364428 () Bool)

(assert (= bs!364428 d!447934))

(declare-fun m!1776830 () Bool)

(assert (=> bs!364428 m!1776830))

(assert (=> b!1512275 d!447934))

(declare-fun d!447936 () Bool)

(assert (=> d!447936 (= (list!6342 input!1102) (list!6345 (c!247915 input!1102)))))

(declare-fun bs!364429 () Bool)

(assert (= bs!364429 d!447936))

(declare-fun m!1776832 () Bool)

(assert (=> bs!364429 m!1776832))

(assert (=> b!1512275 d!447936))

(declare-fun d!447938 () Bool)

(assert (=> d!447938 (= (list!6342 treated!70) (list!6345 (c!247915 treated!70)))))

(declare-fun bs!364430 () Bool)

(assert (= bs!364430 d!447938))

(declare-fun m!1776834 () Bool)

(assert (=> bs!364430 m!1776834))

(assert (=> b!1512275 d!447938))

(declare-fun d!447940 () Bool)

(assert (=> d!447940 (= (valid!1176 (_4!336 lt!525947)) (validCacheMapFurthestNullable!47 (cache!1798 (_4!336 lt!525947)) (totalInput!2294 (_4!336 lt!525947))))))

(declare-fun bs!364431 () Bool)

(assert (= bs!364431 d!447940))

(declare-fun m!1776836 () Bool)

(assert (=> bs!364431 m!1776836))

(assert (=> b!1512293 d!447940))

(declare-fun d!447942 () Bool)

(declare-fun c!247976 () Bool)

(assert (=> d!447942 (= c!247976 ((_ is Node!5435) (c!247915 input!1102)))))

(declare-fun e!967209 () Bool)

(assert (=> d!447942 (= (inv!21285 (c!247915 input!1102)) e!967209)))

(declare-fun b!1512562 () Bool)

(assert (=> b!1512562 (= e!967209 (inv!21292 (c!247915 input!1102)))))

(declare-fun b!1512563 () Bool)

(declare-fun e!967210 () Bool)

(assert (=> b!1512563 (= e!967209 e!967210)))

(declare-fun res!680663 () Bool)

(assert (=> b!1512563 (= res!680663 (not ((_ is Leaf!8059) (c!247915 input!1102))))))

(assert (=> b!1512563 (=> res!680663 e!967210)))

(declare-fun b!1512564 () Bool)

(assert (=> b!1512564 (= e!967210 (inv!21293 (c!247915 input!1102)))))

(assert (= (and d!447942 c!247976) b!1512562))

(assert (= (and d!447942 (not c!247976)) b!1512563))

(assert (= (and b!1512563 (not res!680663)) b!1512564))

(declare-fun m!1776838 () Bool)

(assert (=> b!1512562 m!1776838))

(declare-fun m!1776840 () Bool)

(assert (=> b!1512564 m!1776840))

(assert (=> b!1512311 d!447942))

(declare-fun b!1512589 () Bool)

(declare-fun res!680689 () Bool)

(declare-fun e!967228 () Bool)

(assert (=> b!1512589 (=> (not res!680689) (not e!967228))))

(declare-fun e!967224 () Bool)

(assert (=> b!1512589 (= res!680689 e!967224)))

(declare-fun res!680684 () Bool)

(assert (=> b!1512589 (=> res!680684 e!967224)))

(declare-fun lt!526112 () tuple4!672)

(assert (=> b!1512589 (= res!680684 (not (isDefined!2353 (_1!8476 lt!526112))))))

(declare-fun b!1512590 () Bool)

(declare-fun res!680690 () Bool)

(assert (=> b!1512590 (=> (not res!680690) (not e!967228))))

(assert (=> b!1512590 (= res!680690 (valid!1175 (_2!8476 lt!526112)))))

(declare-fun b!1512591 () Bool)

(assert (=> b!1512591 (= e!967228 (= (totalInput!2294 (_4!336 lt!526112)) totalInput!458))))

(declare-fun b!1512592 () Bool)

(declare-datatypes ((tuple4!674 0))(
  ( (tuple4!675 (_1!8480 Option!2928) (_2!8480 CacheUp!844) (_3!1015 CacheFurthestNullable!268) (_4!337 CacheDown!848)) )
))
(declare-fun e!967227 () tuple4!674)

(declare-fun lt!526113 () tuple4!672)

(assert (=> b!1512592 (= e!967227 (tuple4!675 (_1!8476 lt!526113) (_2!8476 lt!526113) (_4!336 lt!526113) (_3!1014 lt!526113)))))

(declare-fun call!100333 () tuple4!672)

(assert (=> b!1512592 (= lt!526113 call!100333)))

(declare-fun b!1512593 () Bool)

(declare-fun e!967223 () Bool)

(assert (=> b!1512593 (= e!967224 e!967223)))

(declare-fun res!680685 () Bool)

(assert (=> b!1512593 (=> (not res!680685) (not e!967223))))

(assert (=> b!1512593 (= res!680685 (= (_1!8475 (get!4735 (_1!8476 lt!526112))) (_1!8479 (get!4736 (maxPrefixZipper!259 thiss!13241 rules!1640 (list!6342 input!1102))))))))

(declare-fun b!1512594 () Bool)

(assert (=> b!1512594 (= e!967223 (= (list!6342 (_2!8475 (get!4735 (_1!8476 lt!526112)))) (_2!8479 (get!4736 (maxPrefixZipper!259 thiss!13241 rules!1640 (list!6342 input!1102))))))))

(declare-fun b!1512595 () Bool)

(declare-fun res!680691 () Bool)

(assert (=> b!1512595 (=> (not res!680691) (not e!967228))))

(assert (=> b!1512595 (= res!680691 (valid!1177 (_3!1014 lt!526112)))))

(declare-fun b!1512596 () Bool)

(declare-fun lt!526108 () tuple4!672)

(declare-fun lt!526109 () tuple4!672)

(assert (=> b!1512596 (= e!967227 (tuple4!675 (ite (and ((_ is None!2927) (_1!8476 lt!526108)) ((_ is None!2927) (_1!8476 lt!526109))) None!2927 (ite ((_ is None!2927) (_1!8476 lt!526109)) (_1!8476 lt!526108) (ite ((_ is None!2927) (_1!8476 lt!526108)) (_1!8476 lt!526109) (ite (>= (size!12984 (_1!8475 (v!22873 (_1!8476 lt!526108)))) (size!12984 (_1!8475 (v!22873 (_1!8476 lt!526109))))) (_1!8476 lt!526108) (_1!8476 lt!526109))))) (_2!8476 lt!526109) (_4!336 lt!526109) (_3!1014 lt!526109)))))

(assert (=> b!1512596 (= lt!526108 call!100333)))

(assert (=> b!1512596 (= lt!526109 (maxPrefixZipperSequenceV3Mem!25 thiss!13241 (t!139398 rules!1640) input!1102 totalInput!458 (_2!8476 lt!526108) (_3!1014 lt!526108) (_4!336 lt!526108)))))

(declare-fun b!1512597 () Bool)

(declare-fun res!680686 () Bool)

(assert (=> b!1512597 (=> (not res!680686) (not e!967228))))

(assert (=> b!1512597 (= res!680686 (valid!1176 (_4!336 lt!526112)))))

(declare-fun b!1512598 () Bool)

(declare-fun res!680692 () Bool)

(assert (=> b!1512598 (=> (not res!680692) (not e!967228))))

(declare-fun e!967225 () Bool)

(assert (=> b!1512598 (= res!680692 e!967225)))

(declare-fun res!680688 () Bool)

(assert (=> b!1512598 (=> res!680688 e!967225)))

(assert (=> b!1512598 (= res!680688 (not (isDefined!2353 (_1!8476 lt!526112))))))

(declare-fun d!447944 () Bool)

(assert (=> d!447944 e!967228))

(declare-fun res!680693 () Bool)

(assert (=> d!447944 (=> (not res!680693) (not e!967228))))

(assert (=> d!447944 (= res!680693 (= (isDefined!2353 (_1!8476 lt!526112)) (isDefined!2354 (maxPrefixZipper!259 thiss!13241 rules!1640 (list!6342 input!1102)))))))

(declare-fun lt!526114 () tuple4!674)

(assert (=> d!447944 (= lt!526112 (tuple4!673 (_1!8480 lt!526114) (_2!8480 lt!526114) (_4!337 lt!526114) (_3!1015 lt!526114)))))

(assert (=> d!447944 (= lt!526114 e!967227)))

(declare-fun c!247979 () Bool)

(assert (=> d!447944 (= c!247979 (and ((_ is Cons!16056) rules!1640) ((_ is Nil!16056) (t!139398 rules!1640))))))

(declare-fun lt!526110 () Unit!25741)

(declare-fun lt!526115 () Unit!25741)

(assert (=> d!447944 (= lt!526110 lt!526115)))

(declare-fun lt!526116 () List!16123)

(declare-fun lt!526111 () List!16123)

(assert (=> d!447944 (isPrefix!1218 lt!526116 lt!526111)))

(assert (=> d!447944 (= lt!526115 (lemmaIsPrefixRefl!848 lt!526116 lt!526111))))

(assert (=> d!447944 (= lt!526111 (list!6342 input!1102))))

(assert (=> d!447944 (= lt!526116 (list!6342 input!1102))))

(assert (=> d!447944 (rulesValidInductive!856 thiss!13241 rules!1640)))

(assert (=> d!447944 (= (maxPrefixZipperSequenceV3Mem!25 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64) lt!526112)))

(declare-fun bm!100328 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!11 (LexerInterface!2495 Rule!5484 BalanceConc!10812 BalanceConc!10812 CacheUp!844 CacheDown!848 CacheFurthestNullable!268) tuple4!672)

(assert (=> bm!100328 (= call!100333 (maxPrefixOneRuleZipperSequenceV3Mem!11 thiss!13241 (h!21457 rules!1640) input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun b!1512599 () Bool)

(declare-fun e!967226 () Bool)

(assert (=> b!1512599 (= e!967225 e!967226)))

(declare-fun res!680687 () Bool)

(assert (=> b!1512599 (=> (not res!680687) (not e!967226))))

(assert (=> b!1512599 (= res!680687 (= (_1!8475 (get!4735 (_1!8476 lt!526112))) (_1!8479 (get!4736 (maxPrefix!1208 thiss!13241 rules!1640 (list!6342 input!1102))))))))

(declare-fun b!1512600 () Bool)

(assert (=> b!1512600 (= e!967226 (= (list!6342 (_2!8475 (get!4735 (_1!8476 lt!526112)))) (_2!8479 (get!4736 (maxPrefix!1208 thiss!13241 rules!1640 (list!6342 input!1102))))))))

(assert (= (and d!447944 c!247979) b!1512592))

(assert (= (and d!447944 (not c!247979)) b!1512596))

(assert (= (or b!1512592 b!1512596) bm!100328))

(assert (= (and d!447944 res!680693) b!1512589))

(assert (= (and b!1512589 (not res!680684)) b!1512593))

(assert (= (and b!1512593 res!680685) b!1512594))

(assert (= (and b!1512589 res!680689) b!1512598))

(assert (= (and b!1512598 (not res!680688)) b!1512599))

(assert (= (and b!1512599 res!680687) b!1512600))

(assert (= (and b!1512598 res!680692) b!1512590))

(assert (= (and b!1512590 res!680690) b!1512595))

(assert (= (and b!1512595 res!680691) b!1512597))

(assert (= (and b!1512597 res!680686) b!1512591))

(declare-fun m!1776842 () Bool)

(assert (=> b!1512599 m!1776842))

(assert (=> b!1512599 m!1776298))

(assert (=> b!1512599 m!1776298))

(assert (=> b!1512599 m!1776728))

(assert (=> b!1512599 m!1776728))

(assert (=> b!1512599 m!1776730))

(declare-fun m!1776844 () Bool)

(assert (=> b!1512589 m!1776844))

(declare-fun m!1776846 () Bool)

(assert (=> bm!100328 m!1776846))

(declare-fun m!1776848 () Bool)

(assert (=> b!1512595 m!1776848))

(declare-fun m!1776850 () Bool)

(assert (=> b!1512596 m!1776850))

(assert (=> b!1512598 m!1776844))

(declare-fun m!1776852 () Bool)

(assert (=> b!1512590 m!1776852))

(assert (=> b!1512593 m!1776842))

(assert (=> b!1512593 m!1776298))

(assert (=> b!1512593 m!1776298))

(assert (=> b!1512593 m!1776734))

(assert (=> b!1512593 m!1776734))

(assert (=> b!1512593 m!1776736))

(assert (=> b!1512600 m!1776842))

(declare-fun m!1776854 () Bool)

(assert (=> b!1512600 m!1776854))

(assert (=> b!1512600 m!1776298))

(assert (=> b!1512600 m!1776298))

(assert (=> b!1512600 m!1776728))

(assert (=> b!1512600 m!1776728))

(assert (=> b!1512600 m!1776730))

(declare-fun m!1776856 () Bool)

(assert (=> b!1512597 m!1776856))

(assert (=> b!1512594 m!1776842))

(assert (=> b!1512594 m!1776854))

(assert (=> b!1512594 m!1776298))

(assert (=> b!1512594 m!1776734))

(assert (=> b!1512594 m!1776736))

(assert (=> b!1512594 m!1776298))

(assert (=> b!1512594 m!1776734))

(declare-fun m!1776858 () Bool)

(assert (=> d!447944 m!1776858))

(assert (=> d!447944 m!1776844))

(declare-fun m!1776860 () Bool)

(assert (=> d!447944 m!1776860))

(assert (=> d!447944 m!1776298))

(assert (=> d!447944 m!1776298))

(assert (=> d!447944 m!1776734))

(assert (=> d!447944 m!1776734))

(assert (=> d!447944 m!1776748))

(assert (=> d!447944 m!1776742))

(assert (=> b!1512274 d!447944))

(declare-fun d!447946 () Bool)

(assert (=> d!447946 (= (isEmpty!9926 (list!6342 (_2!8477 lt!525965))) ((_ is Nil!16055) (list!6342 (_2!8477 lt!525965))))))

(assert (=> b!1512292 d!447946))

(declare-fun d!447948 () Bool)

(assert (=> d!447948 (= (list!6342 (_2!8477 lt!525965)) (list!6345 (c!247915 (_2!8477 lt!525965))))))

(declare-fun bs!364432 () Bool)

(assert (= bs!364432 d!447948))

(declare-fun m!1776862 () Bool)

(assert (=> bs!364432 m!1776862))

(assert (=> b!1512292 d!447948))

(declare-fun d!447950 () Bool)

(declare-fun e!967229 () Bool)

(assert (=> d!447950 e!967229))

(declare-fun res!680694 () Bool)

(assert (=> d!447950 (=> res!680694 e!967229)))

(declare-fun lt!526117 () Bool)

(assert (=> d!447950 (= res!680694 (not lt!526117))))

(assert (=> d!447950 (= lt!526117 (= lt!525963 (drop!759 lt!525952 (- (size!12987 lt!525952) (size!12987 lt!525963)))))))

(assert (=> d!447950 (= (isSuffix!301 lt!525963 lt!525952) lt!526117)))

(declare-fun b!1512601 () Bool)

(assert (=> b!1512601 (= e!967229 (>= (size!12987 lt!525952) (size!12987 lt!525963)))))

(assert (= (and d!447950 (not res!680694)) b!1512601))

(assert (=> d!447950 m!1776754))

(assert (=> d!447950 m!1776822))

(declare-fun m!1776864 () Bool)

(assert (=> d!447950 m!1776864))

(assert (=> b!1512601 m!1776754))

(assert (=> b!1512601 m!1776822))

(assert (=> b!1512273 d!447950))

(declare-fun d!447952 () Bool)

(declare-fun e!967230 () Bool)

(assert (=> d!447952 e!967230))

(declare-fun res!680695 () Bool)

(assert (=> d!447952 (=> res!680695 e!967230)))

(declare-fun lt!526118 () Bool)

(assert (=> d!447952 (= res!680695 (not lt!526118))))

(assert (=> d!447952 (= lt!526118 (= lt!525963 (drop!759 lt!525962 (- (size!12987 lt!525962) (size!12987 lt!525963)))))))

(assert (=> d!447952 (= (isSuffix!301 lt!525963 lt!525962) lt!526118)))

(declare-fun b!1512602 () Bool)

(assert (=> b!1512602 (= e!967230 (>= (size!12987 lt!525962) (size!12987 lt!525963)))))

(assert (= (and d!447952 (not res!680695)) b!1512602))

(declare-fun m!1776866 () Bool)

(assert (=> d!447952 m!1776866))

(assert (=> d!447952 m!1776822))

(declare-fun m!1776868 () Bool)

(assert (=> d!447952 m!1776868))

(assert (=> b!1512602 m!1776866))

(assert (=> b!1512602 m!1776822))

(assert (=> b!1512273 d!447952))

(declare-fun d!447954 () Bool)

(assert (=> d!447954 (isSuffix!301 lt!525963 (++!4351 lt!525950 lt!525963))))

(declare-fun lt!526119 () Unit!25741)

(assert (=> d!447954 (= lt!526119 (choose!9158 lt!525950 lt!525963))))

(assert (=> d!447954 (= (lemmaConcatTwoListThenFSndIsSuffix!279 lt!525950 lt!525963) lt!526119)))

(declare-fun bs!364433 () Bool)

(assert (= bs!364433 d!447954))

(assert (=> bs!364433 m!1776294))

(assert (=> bs!364433 m!1776294))

(declare-fun m!1776870 () Bool)

(assert (=> bs!364433 m!1776870))

(declare-fun m!1776872 () Bool)

(assert (=> bs!364433 m!1776872))

(assert (=> b!1512273 d!447954))

(declare-fun b!1512613 () Bool)

(declare-fun b_free!39227 () Bool)

(declare-fun b_next!39931 () Bool)

(assert (=> b!1512613 (= b_free!39227 (not b_next!39931))))

(declare-fun tp!432426 () Bool)

(declare-fun b_and!105245 () Bool)

(assert (=> b!1512613 (= tp!432426 b_and!105245)))

(declare-fun b_free!39229 () Bool)

(declare-fun b_next!39933 () Bool)

(assert (=> b!1512613 (= b_free!39229 (not b_next!39933))))

(declare-fun tb!86207 () Bool)

(declare-fun t!139407 () Bool)

(assert (=> (and b!1512613 (= (toChars!4050 (transformation!2842 (h!21457 (t!139398 rules!1640)))) (toChars!4050 (transformation!2842 (rule!4635 (_1!8475 (v!22873 (_1!8476 lt!525947))))))) t!139407) tb!86207))

(declare-fun result!103682 () Bool)

(assert (= result!103682 result!103676))

(assert (=> d!447884 t!139407))

(declare-fun b_and!105247 () Bool)

(declare-fun tp!432425 () Bool)

(assert (=> b!1512613 (= tp!432425 (and (=> t!139407 result!103682) b_and!105247))))

(declare-fun e!967240 () Bool)

(assert (=> b!1512613 (= e!967240 (and tp!432426 tp!432425))))

(declare-fun tp!432423 () Bool)

(declare-fun e!967239 () Bool)

(declare-fun b!1512612 () Bool)

(assert (=> b!1512612 (= e!967239 (and tp!432423 (inv!21280 (tag!3106 (h!21457 (t!139398 rules!1640)))) (inv!21284 (transformation!2842 (h!21457 (t!139398 rules!1640)))) e!967240))))

(declare-fun b!1512611 () Bool)

(declare-fun e!967241 () Bool)

(declare-fun tp!432424 () Bool)

(assert (=> b!1512611 (= e!967241 (and e!967239 tp!432424))))

(assert (=> b!1512282 (= tp!432391 e!967241)))

(assert (= b!1512612 b!1512613))

(assert (= b!1512611 b!1512612))

(assert (= (and b!1512282 ((_ is Cons!16056) (t!139398 rules!1640))) b!1512611))

(declare-fun m!1776874 () Bool)

(assert (=> b!1512612 m!1776874))

(declare-fun m!1776876 () Bool)

(assert (=> b!1512612 m!1776876))

(declare-fun setIsEmpty!9072 () Bool)

(declare-fun setRes!9072 () Bool)

(assert (=> setIsEmpty!9072 setRes!9072))

(declare-fun b!1512622 () Bool)

(declare-fun e!967249 () Bool)

(declare-fun tp!432441 () Bool)

(assert (=> b!1512622 (= e!967249 tp!432441)))

(declare-fun b!1512623 () Bool)

(declare-fun tp!432437 () Bool)

(declare-fun e!967250 () Bool)

(declare-fun tp!432439 () Bool)

(declare-fun tp_is_empty!7013 () Bool)

(declare-fun inv!21296 (Context!1350) Bool)

(assert (=> b!1512623 (= e!967250 (and tp!432439 (inv!21296 (_2!8471 (_1!8472 (h!21461 (zeroValue!1731 (v!22870 (underlying!3155 (v!22871 (underlying!3156 (cache!1797 cacheDown!629)))))))))) e!967249 tp_is_empty!7013 setRes!9072 tp!432437))))

(declare-fun condSetEmpty!9072 () Bool)

(assert (=> b!1512623 (= condSetEmpty!9072 (= (_2!8472 (h!21461 (zeroValue!1731 (v!22870 (underlying!3155 (v!22871 (underlying!3156 (cache!1797 cacheDown!629)))))))) ((as const (Array Context!1350 Bool)) false)))))

(declare-fun e!967251 () Bool)

(declare-fun tp!432438 () Bool)

(declare-fun setElem!9072 () Context!1350)

(declare-fun setNonEmpty!9072 () Bool)

(assert (=> setNonEmpty!9072 (= setRes!9072 (and tp!432438 (inv!21296 setElem!9072) e!967251))))

(declare-fun setRest!9072 () (InoxSet Context!1350))

(assert (=> setNonEmpty!9072 (= (_2!8472 (h!21461 (zeroValue!1731 (v!22870 (underlying!3155 (v!22871 (underlying!3156 (cache!1797 cacheDown!629)))))))) ((_ map or) (store ((as const (Array Context!1350 Bool)) false) setElem!9072 true) setRest!9072))))

(assert (=> b!1512308 (= tp!432389 e!967250)))

(declare-fun b!1512624 () Bool)

(declare-fun tp!432440 () Bool)

(assert (=> b!1512624 (= e!967251 tp!432440)))

(assert (= b!1512623 b!1512622))

(assert (= (and b!1512623 condSetEmpty!9072) setIsEmpty!9072))

(assert (= (and b!1512623 (not condSetEmpty!9072)) setNonEmpty!9072))

(assert (= setNonEmpty!9072 b!1512624))

(assert (= (and b!1512308 ((_ is Cons!16060) (zeroValue!1731 (v!22870 (underlying!3155 (v!22871 (underlying!3156 (cache!1797 cacheDown!629)))))))) b!1512623))

(declare-fun m!1776878 () Bool)

(assert (=> b!1512623 m!1776878))

(declare-fun m!1776880 () Bool)

(assert (=> setNonEmpty!9072 m!1776880))

(declare-fun setIsEmpty!9073 () Bool)

(declare-fun setRes!9073 () Bool)

(assert (=> setIsEmpty!9073 setRes!9073))

(declare-fun b!1512625 () Bool)

(declare-fun e!967252 () Bool)

(declare-fun tp!432446 () Bool)

(assert (=> b!1512625 (= e!967252 tp!432446)))

(declare-fun tp!432442 () Bool)

(declare-fun e!967253 () Bool)

(declare-fun b!1512626 () Bool)

(declare-fun tp!432444 () Bool)

(assert (=> b!1512626 (= e!967253 (and tp!432444 (inv!21296 (_2!8471 (_1!8472 (h!21461 (minValue!1731 (v!22870 (underlying!3155 (v!22871 (underlying!3156 (cache!1797 cacheDown!629)))))))))) e!967252 tp_is_empty!7013 setRes!9073 tp!432442))))

(declare-fun condSetEmpty!9073 () Bool)

(assert (=> b!1512626 (= condSetEmpty!9073 (= (_2!8472 (h!21461 (minValue!1731 (v!22870 (underlying!3155 (v!22871 (underlying!3156 (cache!1797 cacheDown!629)))))))) ((as const (Array Context!1350 Bool)) false)))))

(declare-fun setElem!9073 () Context!1350)

(declare-fun tp!432443 () Bool)

(declare-fun setNonEmpty!9073 () Bool)

(declare-fun e!967254 () Bool)

(assert (=> setNonEmpty!9073 (= setRes!9073 (and tp!432443 (inv!21296 setElem!9073) e!967254))))

(declare-fun setRest!9073 () (InoxSet Context!1350))

(assert (=> setNonEmpty!9073 (= (_2!8472 (h!21461 (minValue!1731 (v!22870 (underlying!3155 (v!22871 (underlying!3156 (cache!1797 cacheDown!629)))))))) ((_ map or) (store ((as const (Array Context!1350 Bool)) false) setElem!9073 true) setRest!9073))))

(assert (=> b!1512308 (= tp!432403 e!967253)))

(declare-fun b!1512627 () Bool)

(declare-fun tp!432445 () Bool)

(assert (=> b!1512627 (= e!967254 tp!432445)))

(assert (= b!1512626 b!1512625))

(assert (= (and b!1512626 condSetEmpty!9073) setIsEmpty!9073))

(assert (= (and b!1512626 (not condSetEmpty!9073)) setNonEmpty!9073))

(assert (= setNonEmpty!9073 b!1512627))

(assert (= (and b!1512308 ((_ is Cons!16060) (minValue!1731 (v!22870 (underlying!3155 (v!22871 (underlying!3156 (cache!1797 cacheDown!629)))))))) b!1512626))

(declare-fun m!1776882 () Bool)

(assert (=> b!1512626 m!1776882))

(declare-fun m!1776884 () Bool)

(assert (=> setNonEmpty!9073 m!1776884))

(declare-fun mapIsEmpty!6980 () Bool)

(declare-fun mapRes!6980 () Bool)

(assert (=> mapIsEmpty!6980 mapRes!6980))

(declare-fun setRes!9079 () Bool)

(declare-fun tp!432462 () Bool)

(declare-fun e!967263 () Bool)

(declare-fun setElem!9078 () Context!1350)

(declare-fun setNonEmpty!9078 () Bool)

(assert (=> setNonEmpty!9078 (= setRes!9079 (and tp!432462 (inv!21296 setElem!9078) e!967263))))

(declare-fun mapDefault!6980 () List!16126)

(declare-fun setRest!9078 () (InoxSet Context!1350))

(assert (=> setNonEmpty!9078 (= (_1!8469 (_1!8470 (h!21459 mapDefault!6980))) ((_ map or) (store ((as const (Array Context!1350 Bool)) false) setElem!9078 true) setRest!9078))))

(declare-fun b!1512638 () Bool)

(declare-fun e!967266 () Bool)

(declare-fun tp!432466 () Bool)

(assert (=> b!1512638 (= e!967266 tp!432466)))

(declare-fun mapNonEmpty!6980 () Bool)

(declare-fun tp!432463 () Bool)

(declare-fun e!967265 () Bool)

(assert (=> mapNonEmpty!6980 (= mapRes!6980 (and tp!432463 e!967265))))

(declare-fun mapValue!6980 () List!16126)

(declare-fun mapKey!6980 () (_ BitVec 32))

(declare-fun mapRest!6980 () (Array (_ BitVec 32) List!16126))

(assert (=> mapNonEmpty!6980 (= mapRest!6976 (store mapRest!6980 mapKey!6980 mapValue!6980))))

(declare-fun b!1512639 () Bool)

(declare-fun setRes!9078 () Bool)

(declare-fun tp!432461 () Bool)

(assert (=> b!1512639 (= e!967265 (and setRes!9078 tp!432461))))

(declare-fun condSetEmpty!9079 () Bool)

(assert (=> b!1512639 (= condSetEmpty!9079 (= (_1!8469 (_1!8470 (h!21459 mapValue!6980))) ((as const (Array Context!1350 Bool)) false)))))

(declare-fun condMapEmpty!6980 () Bool)

(assert (=> mapNonEmpty!6975 (= condMapEmpty!6980 (= mapRest!6976 ((as const (Array (_ BitVec 32) List!16126)) mapDefault!6980)))))

(declare-fun e!967264 () Bool)

(assert (=> mapNonEmpty!6975 (= tp!432402 (and e!967264 mapRes!6980))))

(declare-fun b!1512640 () Bool)

(declare-fun tp!432464 () Bool)

(assert (=> b!1512640 (= e!967263 tp!432464)))

(declare-fun b!1512641 () Bool)

(declare-fun tp!432467 () Bool)

(assert (=> b!1512641 (= e!967264 (and setRes!9079 tp!432467))))

(declare-fun condSetEmpty!9078 () Bool)

(assert (=> b!1512641 (= condSetEmpty!9078 (= (_1!8469 (_1!8470 (h!21459 mapDefault!6980))) ((as const (Array Context!1350 Bool)) false)))))

(declare-fun setElem!9079 () Context!1350)

(declare-fun tp!432465 () Bool)

(declare-fun setNonEmpty!9079 () Bool)

(assert (=> setNonEmpty!9079 (= setRes!9078 (and tp!432465 (inv!21296 setElem!9079) e!967266))))

(declare-fun setRest!9079 () (InoxSet Context!1350))

(assert (=> setNonEmpty!9079 (= (_1!8469 (_1!8470 (h!21459 mapValue!6980))) ((_ map or) (store ((as const (Array Context!1350 Bool)) false) setElem!9079 true) setRest!9079))))

(declare-fun setIsEmpty!9078 () Bool)

(assert (=> setIsEmpty!9078 setRes!9079))

(declare-fun setIsEmpty!9079 () Bool)

(assert (=> setIsEmpty!9079 setRes!9078))

(assert (= (and mapNonEmpty!6975 condMapEmpty!6980) mapIsEmpty!6980))

(assert (= (and mapNonEmpty!6975 (not condMapEmpty!6980)) mapNonEmpty!6980))

(assert (= (and b!1512639 condSetEmpty!9079) setIsEmpty!9079))

(assert (= (and b!1512639 (not condSetEmpty!9079)) setNonEmpty!9079))

(assert (= setNonEmpty!9079 b!1512638))

(assert (= (and mapNonEmpty!6980 ((_ is Cons!16058) mapValue!6980)) b!1512639))

(assert (= (and b!1512641 condSetEmpty!9078) setIsEmpty!9078))

(assert (= (and b!1512641 (not condSetEmpty!9078)) setNonEmpty!9078))

(assert (= setNonEmpty!9078 b!1512640))

(assert (= (and mapNonEmpty!6975 ((_ is Cons!16058) mapDefault!6980)) b!1512641))

(declare-fun m!1776886 () Bool)

(assert (=> setNonEmpty!9078 m!1776886))

(declare-fun m!1776888 () Bool)

(assert (=> mapNonEmpty!6980 m!1776888))

(declare-fun m!1776890 () Bool)

(assert (=> setNonEmpty!9079 m!1776890))

(declare-fun b!1512648 () Bool)

(declare-fun e!967272 () Bool)

(declare-fun setRes!9082 () Bool)

(declare-fun tp!432474 () Bool)

(assert (=> b!1512648 (= e!967272 (and setRes!9082 tp!432474))))

(declare-fun condSetEmpty!9082 () Bool)

(assert (=> b!1512648 (= condSetEmpty!9082 (= (_1!8469 (_1!8470 (h!21459 mapValue!6975))) ((as const (Array Context!1350 Bool)) false)))))

(declare-fun setIsEmpty!9082 () Bool)

(assert (=> setIsEmpty!9082 setRes!9082))

(assert (=> mapNonEmpty!6975 (= tp!432406 e!967272)))

(declare-fun tp!432476 () Bool)

(declare-fun e!967271 () Bool)

(declare-fun setElem!9082 () Context!1350)

(declare-fun setNonEmpty!9082 () Bool)

(assert (=> setNonEmpty!9082 (= setRes!9082 (and tp!432476 (inv!21296 setElem!9082) e!967271))))

(declare-fun setRest!9082 () (InoxSet Context!1350))

(assert (=> setNonEmpty!9082 (= (_1!8469 (_1!8470 (h!21459 mapValue!6975))) ((_ map or) (store ((as const (Array Context!1350 Bool)) false) setElem!9082 true) setRest!9082))))

(declare-fun b!1512649 () Bool)

(declare-fun tp!432475 () Bool)

(assert (=> b!1512649 (= e!967271 tp!432475)))

(assert (= (and b!1512648 condSetEmpty!9082) setIsEmpty!9082))

(assert (= (and b!1512648 (not condSetEmpty!9082)) setNonEmpty!9082))

(assert (= setNonEmpty!9082 b!1512649))

(assert (= (and mapNonEmpty!6975 ((_ is Cons!16058) mapValue!6975)) b!1512648))

(declare-fun m!1776892 () Bool)

(assert (=> setNonEmpty!9082 m!1776892))

(declare-fun tp!432484 () Bool)

(declare-fun e!967277 () Bool)

(declare-fun tp!432483 () Bool)

(declare-fun b!1512658 () Bool)

(assert (=> b!1512658 (= e!967277 (and (inv!21285 (left!13358 (c!247915 treated!70))) tp!432483 (inv!21285 (right!13688 (c!247915 treated!70))) tp!432484))))

(declare-fun b!1512660 () Bool)

(declare-fun e!967278 () Bool)

(declare-fun tp!432485 () Bool)

(assert (=> b!1512660 (= e!967278 tp!432485)))

(declare-fun b!1512659 () Bool)

(declare-fun inv!21297 (IArray!10875) Bool)

(assert (=> b!1512659 (= e!967277 (and (inv!21297 (xs!8216 (c!247915 treated!70))) e!967278))))

(assert (=> b!1512270 (= tp!432396 (and (inv!21285 (c!247915 treated!70)) e!967277))))

(assert (= (and b!1512270 ((_ is Node!5435) (c!247915 treated!70))) b!1512658))

(assert (= b!1512659 b!1512660))

(assert (= (and b!1512270 ((_ is Leaf!8059) (c!247915 treated!70))) b!1512659))

(declare-fun m!1776894 () Bool)

(assert (=> b!1512658 m!1776894))

(declare-fun m!1776896 () Bool)

(assert (=> b!1512658 m!1776896))

(declare-fun m!1776898 () Bool)

(assert (=> b!1512659 m!1776898))

(assert (=> b!1512270 m!1776276))

(declare-fun b!1512669 () Bool)

(declare-fun e!967285 () Bool)

(declare-fun tp!432497 () Bool)

(assert (=> b!1512669 (= e!967285 tp!432497)))

(declare-fun e!967286 () Bool)

(assert (=> b!1512299 (= tp!432404 e!967286)))

(declare-fun b!1512670 () Bool)

(declare-fun e!967287 () Bool)

(declare-fun tp!432496 () Bool)

(assert (=> b!1512670 (= e!967287 tp!432496)))

(declare-fun setRes!9085 () Bool)

(declare-fun tp!432495 () Bool)

(declare-fun setNonEmpty!9085 () Bool)

(declare-fun setElem!9085 () Context!1350)

(assert (=> setNonEmpty!9085 (= setRes!9085 (and tp!432495 (inv!21296 setElem!9085) e!967287))))

(declare-fun setRest!9085 () (InoxSet Context!1350))

(assert (=> setNonEmpty!9085 (= (_2!8474 (h!21460 mapDefault!6977)) ((_ map or) (store ((as const (Array Context!1350 Bool)) false) setElem!9085 true) setRest!9085))))

(declare-fun b!1512671 () Bool)

(declare-fun tp!432494 () Bool)

(assert (=> b!1512671 (= e!967286 (and (inv!21296 (_1!8473 (_1!8474 (h!21460 mapDefault!6977)))) e!967285 tp_is_empty!7013 setRes!9085 tp!432494))))

(declare-fun condSetEmpty!9085 () Bool)

(assert (=> b!1512671 (= condSetEmpty!9085 (= (_2!8474 (h!21460 mapDefault!6977)) ((as const (Array Context!1350 Bool)) false)))))

(declare-fun setIsEmpty!9085 () Bool)

(assert (=> setIsEmpty!9085 setRes!9085))

(assert (= b!1512671 b!1512669))

(assert (= (and b!1512671 condSetEmpty!9085) setIsEmpty!9085))

(assert (= (and b!1512671 (not condSetEmpty!9085)) setNonEmpty!9085))

(assert (= setNonEmpty!9085 b!1512670))

(assert (= (and b!1512299 ((_ is Cons!16059) mapDefault!6977)) b!1512671))

(declare-fun m!1776900 () Bool)

(assert (=> setNonEmpty!9085 m!1776900))

(declare-fun m!1776902 () Bool)

(assert (=> b!1512671 m!1776902))

(declare-fun e!967292 () Bool)

(declare-fun b!1512680 () Bool)

(declare-fun tp!432504 () Bool)

(declare-fun tp!432506 () Bool)

(assert (=> b!1512680 (= e!967292 (and (inv!21286 (left!13359 (c!247917 acc!392))) tp!432506 (inv!21286 (right!13689 (c!247917 acc!392))) tp!432504))))

(declare-fun b!1512682 () Bool)

(declare-fun e!967293 () Bool)

(declare-fun tp!432505 () Bool)

(assert (=> b!1512682 (= e!967293 tp!432505)))

(declare-fun b!1512681 () Bool)

(declare-fun inv!21298 (IArray!10877) Bool)

(assert (=> b!1512681 (= e!967292 (and (inv!21298 (xs!8217 (c!247917 acc!392))) e!967293))))

(assert (=> b!1512280 (= tp!432390 (and (inv!21286 (c!247917 acc!392)) e!967292))))

(assert (= (and b!1512280 ((_ is Node!5436) (c!247917 acc!392))) b!1512680))

(assert (= b!1512681 b!1512682))

(assert (= (and b!1512280 ((_ is Leaf!8060) (c!247917 acc!392))) b!1512681))

(declare-fun m!1776904 () Bool)

(assert (=> b!1512680 m!1776904))

(declare-fun m!1776906 () Bool)

(assert (=> b!1512680 m!1776906))

(declare-fun m!1776908 () Bool)

(assert (=> b!1512681 m!1776908))

(assert (=> b!1512280 m!1776268))

(declare-fun b!1512697 () Bool)

(declare-fun e!967306 () Bool)

(declare-fun tp!432528 () Bool)

(assert (=> b!1512697 (= e!967306 tp!432528)))

(declare-fun mapNonEmpty!6983 () Bool)

(declare-fun mapRes!6983 () Bool)

(declare-fun tp!432526 () Bool)

(declare-fun e!967311 () Bool)

(assert (=> mapNonEmpty!6983 (= mapRes!6983 (and tp!432526 e!967311))))

(declare-fun mapRest!6983 () (Array (_ BitVec 32) List!16127))

(declare-fun mapValue!6983 () List!16127)

(declare-fun mapKey!6983 () (_ BitVec 32))

(assert (=> mapNonEmpty!6983 (= mapRest!6975 (store mapRest!6983 mapKey!6983 mapValue!6983))))

(declare-fun tp!432531 () Bool)

(declare-fun e!967308 () Bool)

(declare-fun setRes!9090 () Bool)

(declare-fun setElem!9091 () Context!1350)

(declare-fun setNonEmpty!9090 () Bool)

(assert (=> setNonEmpty!9090 (= setRes!9090 (and tp!432531 (inv!21296 setElem!9091) e!967308))))

(declare-fun setRest!9090 () (InoxSet Context!1350))

(assert (=> setNonEmpty!9090 (= (_2!8474 (h!21460 mapValue!6983)) ((_ map or) (store ((as const (Array Context!1350 Bool)) false) setElem!9091 true) setRest!9090))))

(declare-fun b!1512698 () Bool)

(declare-fun e!967310 () Bool)

(declare-fun tp!432533 () Bool)

(assert (=> b!1512698 (= e!967310 tp!432533)))

(declare-fun condMapEmpty!6983 () Bool)

(declare-fun mapDefault!6983 () List!16127)

(assert (=> mapNonEmpty!6977 (= condMapEmpty!6983 (= mapRest!6975 ((as const (Array (_ BitVec 32) List!16127)) mapDefault!6983)))))

(declare-fun e!967307 () Bool)

(assert (=> mapNonEmpty!6977 (= tp!432382 (and e!967307 mapRes!6983))))

(declare-fun mapIsEmpty!6983 () Bool)

(assert (=> mapIsEmpty!6983 mapRes!6983))

(declare-fun tp!432532 () Bool)

(declare-fun b!1512699 () Bool)

(declare-fun e!967309 () Bool)

(declare-fun setRes!9091 () Bool)

(assert (=> b!1512699 (= e!967307 (and (inv!21296 (_1!8473 (_1!8474 (h!21460 mapDefault!6983)))) e!967309 tp_is_empty!7013 setRes!9091 tp!432532))))

(declare-fun condSetEmpty!9090 () Bool)

(assert (=> b!1512699 (= condSetEmpty!9090 (= (_2!8474 (h!21460 mapDefault!6983)) ((as const (Array Context!1350 Bool)) false)))))

(declare-fun setIsEmpty!9090 () Bool)

(assert (=> setIsEmpty!9090 setRes!9090))

(declare-fun b!1512700 () Bool)

(declare-fun tp!432525 () Bool)

(assert (=> b!1512700 (= e!967308 tp!432525)))

(declare-fun setElem!9090 () Context!1350)

(declare-fun setNonEmpty!9091 () Bool)

(declare-fun tp!432530 () Bool)

(assert (=> setNonEmpty!9091 (= setRes!9091 (and tp!432530 (inv!21296 setElem!9090) e!967310))))

(declare-fun setRest!9091 () (InoxSet Context!1350))

(assert (=> setNonEmpty!9091 (= (_2!8474 (h!21460 mapDefault!6983)) ((_ map or) (store ((as const (Array Context!1350 Bool)) false) setElem!9090 true) setRest!9091))))

(declare-fun tp!432527 () Bool)

(declare-fun b!1512701 () Bool)

(assert (=> b!1512701 (= e!967311 (and (inv!21296 (_1!8473 (_1!8474 (h!21460 mapValue!6983)))) e!967306 tp_is_empty!7013 setRes!9090 tp!432527))))

(declare-fun condSetEmpty!9091 () Bool)

(assert (=> b!1512701 (= condSetEmpty!9091 (= (_2!8474 (h!21460 mapValue!6983)) ((as const (Array Context!1350 Bool)) false)))))

(declare-fun setIsEmpty!9091 () Bool)

(assert (=> setIsEmpty!9091 setRes!9091))

(declare-fun b!1512702 () Bool)

(declare-fun tp!432529 () Bool)

(assert (=> b!1512702 (= e!967309 tp!432529)))

(assert (= (and mapNonEmpty!6977 condMapEmpty!6983) mapIsEmpty!6983))

(assert (= (and mapNonEmpty!6977 (not condMapEmpty!6983)) mapNonEmpty!6983))

(assert (= b!1512701 b!1512697))

(assert (= (and b!1512701 condSetEmpty!9091) setIsEmpty!9090))

(assert (= (and b!1512701 (not condSetEmpty!9091)) setNonEmpty!9090))

(assert (= setNonEmpty!9090 b!1512700))

(assert (= (and mapNonEmpty!6983 ((_ is Cons!16059) mapValue!6983)) b!1512701))

(assert (= b!1512699 b!1512702))

(assert (= (and b!1512699 condSetEmpty!9090) setIsEmpty!9091))

(assert (= (and b!1512699 (not condSetEmpty!9090)) setNonEmpty!9091))

(assert (= setNonEmpty!9091 b!1512698))

(assert (= (and mapNonEmpty!6977 ((_ is Cons!16059) mapDefault!6983)) b!1512699))

(declare-fun m!1776910 () Bool)

(assert (=> setNonEmpty!9091 m!1776910))

(declare-fun m!1776912 () Bool)

(assert (=> b!1512701 m!1776912))

(declare-fun m!1776914 () Bool)

(assert (=> setNonEmpty!9090 m!1776914))

(declare-fun m!1776916 () Bool)

(assert (=> mapNonEmpty!6983 m!1776916))

(declare-fun m!1776918 () Bool)

(assert (=> b!1512699 m!1776918))

(declare-fun b!1512703 () Bool)

(declare-fun e!967312 () Bool)

(declare-fun tp!432537 () Bool)

(assert (=> b!1512703 (= e!967312 tp!432537)))

(declare-fun e!967313 () Bool)

(assert (=> mapNonEmpty!6977 (= tp!432387 e!967313)))

(declare-fun b!1512704 () Bool)

(declare-fun e!967314 () Bool)

(declare-fun tp!432536 () Bool)

(assert (=> b!1512704 (= e!967314 tp!432536)))

(declare-fun setNonEmpty!9092 () Bool)

(declare-fun tp!432535 () Bool)

(declare-fun setElem!9092 () Context!1350)

(declare-fun setRes!9092 () Bool)

(assert (=> setNonEmpty!9092 (= setRes!9092 (and tp!432535 (inv!21296 setElem!9092) e!967314))))

(declare-fun setRest!9092 () (InoxSet Context!1350))

(assert (=> setNonEmpty!9092 (= (_2!8474 (h!21460 mapValue!6976)) ((_ map or) (store ((as const (Array Context!1350 Bool)) false) setElem!9092 true) setRest!9092))))

(declare-fun b!1512705 () Bool)

(declare-fun tp!432534 () Bool)

(assert (=> b!1512705 (= e!967313 (and (inv!21296 (_1!8473 (_1!8474 (h!21460 mapValue!6976)))) e!967312 tp_is_empty!7013 setRes!9092 tp!432534))))

(declare-fun condSetEmpty!9092 () Bool)

(assert (=> b!1512705 (= condSetEmpty!9092 (= (_2!8474 (h!21460 mapValue!6976)) ((as const (Array Context!1350 Bool)) false)))))

(declare-fun setIsEmpty!9092 () Bool)

(assert (=> setIsEmpty!9092 setRes!9092))

(assert (= b!1512705 b!1512703))

(assert (= (and b!1512705 condSetEmpty!9092) setIsEmpty!9092))

(assert (= (and b!1512705 (not condSetEmpty!9092)) setNonEmpty!9092))

(assert (= setNonEmpty!9092 b!1512704))

(assert (= (and mapNonEmpty!6977 ((_ is Cons!16059) mapValue!6976)) b!1512705))

(declare-fun m!1776920 () Bool)

(assert (=> setNonEmpty!9092 m!1776920))

(declare-fun m!1776922 () Bool)

(assert (=> b!1512705 m!1776922))

(declare-fun e!967315 () Bool)

(declare-fun tp!432539 () Bool)

(declare-fun tp!432538 () Bool)

(declare-fun b!1512706 () Bool)

(assert (=> b!1512706 (= e!967315 (and (inv!21285 (left!13358 (c!247915 totalInput!458))) tp!432538 (inv!21285 (right!13688 (c!247915 totalInput!458))) tp!432539))))

(declare-fun b!1512708 () Bool)

(declare-fun e!967316 () Bool)

(declare-fun tp!432540 () Bool)

(assert (=> b!1512708 (= e!967316 tp!432540)))

(declare-fun b!1512707 () Bool)

(assert (=> b!1512707 (= e!967315 (and (inv!21297 (xs!8216 (c!247915 totalInput!458))) e!967316))))

(assert (=> b!1512315 (= tp!432388 (and (inv!21285 (c!247915 totalInput!458)) e!967315))))

(assert (= (and b!1512315 ((_ is Node!5435) (c!247915 totalInput!458))) b!1512706))

(assert (= b!1512707 b!1512708))

(assert (= (and b!1512315 ((_ is Leaf!8059) (c!247915 totalInput!458))) b!1512707))

(declare-fun m!1776924 () Bool)

(assert (=> b!1512706 m!1776924))

(declare-fun m!1776926 () Bool)

(assert (=> b!1512706 m!1776926))

(declare-fun m!1776928 () Bool)

(assert (=> b!1512707 m!1776928))

(assert (=> b!1512315 m!1776222))

(declare-fun b!1512723 () Bool)

(declare-fun e!967330 () Bool)

(declare-fun tp!432569 () Bool)

(assert (=> b!1512723 (= e!967330 tp!432569)))

(declare-fun setIsEmpty!9097 () Bool)

(declare-fun setRes!9098 () Bool)

(assert (=> setIsEmpty!9097 setRes!9098))

(declare-fun condMapEmpty!6986 () Bool)

(declare-fun mapDefault!6986 () List!16128)

(assert (=> mapNonEmpty!6976 (= condMapEmpty!6986 (= mapRest!6977 ((as const (Array (_ BitVec 32) List!16128)) mapDefault!6986)))))

(declare-fun e!967329 () Bool)

(declare-fun mapRes!6986 () Bool)

(assert (=> mapNonEmpty!6976 (= tp!432408 (and e!967329 mapRes!6986))))

(declare-fun mapIsEmpty!6986 () Bool)

(assert (=> mapIsEmpty!6986 mapRes!6986))

(declare-fun setIsEmpty!9098 () Bool)

(declare-fun setRes!9097 () Bool)

(assert (=> setIsEmpty!9098 setRes!9097))

(declare-fun b!1512724 () Bool)

(declare-fun e!967331 () Bool)

(declare-fun tp!432564 () Bool)

(assert (=> b!1512724 (= e!967331 tp!432564)))

(declare-fun b!1512725 () Bool)

(declare-fun e!967334 () Bool)

(declare-fun tp!432563 () Bool)

(assert (=> b!1512725 (= e!967334 tp!432563)))

(declare-fun tp!432565 () Bool)

(declare-fun tp!432566 () Bool)

(declare-fun b!1512726 () Bool)

(declare-fun mapValue!6986 () List!16128)

(declare-fun e!967333 () Bool)

(assert (=> b!1512726 (= e!967333 (and tp!432566 (inv!21296 (_2!8471 (_1!8472 (h!21461 mapValue!6986)))) e!967330 tp_is_empty!7013 setRes!9097 tp!432565))))

(declare-fun condSetEmpty!9097 () Bool)

(assert (=> b!1512726 (= condSetEmpty!9097 (= (_2!8472 (h!21461 mapValue!6986)) ((as const (Array Context!1350 Bool)) false)))))

(declare-fun b!1512727 () Bool)

(declare-fun e!967332 () Bool)

(declare-fun tp!432568 () Bool)

(assert (=> b!1512727 (= e!967332 tp!432568)))

(declare-fun tp!432570 () Bool)

(declare-fun b!1512728 () Bool)

(declare-fun tp!432567 () Bool)

(assert (=> b!1512728 (= e!967329 (and tp!432570 (inv!21296 (_2!8471 (_1!8472 (h!21461 mapDefault!6986)))) e!967332 tp_is_empty!7013 setRes!9098 tp!432567))))

(declare-fun condSetEmpty!9098 () Bool)

(assert (=> b!1512728 (= condSetEmpty!9098 (= (_2!8472 (h!21461 mapDefault!6986)) ((as const (Array Context!1350 Bool)) false)))))

(declare-fun setNonEmpty!9097 () Bool)

(declare-fun setElem!9097 () Context!1350)

(declare-fun tp!432573 () Bool)

(assert (=> setNonEmpty!9097 (= setRes!9098 (and tp!432573 (inv!21296 setElem!9097) e!967334))))

(declare-fun setRest!9098 () (InoxSet Context!1350))

(assert (=> setNonEmpty!9097 (= (_2!8472 (h!21461 mapDefault!6986)) ((_ map or) (store ((as const (Array Context!1350 Bool)) false) setElem!9097 true) setRest!9098))))

(declare-fun mapNonEmpty!6986 () Bool)

(declare-fun tp!432571 () Bool)

(assert (=> mapNonEmpty!6986 (= mapRes!6986 (and tp!432571 e!967333))))

(declare-fun mapKey!6986 () (_ BitVec 32))

(declare-fun mapRest!6986 () (Array (_ BitVec 32) List!16128))

(assert (=> mapNonEmpty!6986 (= mapRest!6977 (store mapRest!6986 mapKey!6986 mapValue!6986))))

(declare-fun setElem!9098 () Context!1350)

(declare-fun tp!432572 () Bool)

(declare-fun setNonEmpty!9098 () Bool)

(assert (=> setNonEmpty!9098 (= setRes!9097 (and tp!432572 (inv!21296 setElem!9098) e!967331))))

(declare-fun setRest!9097 () (InoxSet Context!1350))

(assert (=> setNonEmpty!9098 (= (_2!8472 (h!21461 mapValue!6986)) ((_ map or) (store ((as const (Array Context!1350 Bool)) false) setElem!9098 true) setRest!9097))))

(assert (= (and mapNonEmpty!6976 condMapEmpty!6986) mapIsEmpty!6986))

(assert (= (and mapNonEmpty!6976 (not condMapEmpty!6986)) mapNonEmpty!6986))

(assert (= b!1512726 b!1512723))

(assert (= (and b!1512726 condSetEmpty!9097) setIsEmpty!9098))

(assert (= (and b!1512726 (not condSetEmpty!9097)) setNonEmpty!9098))

(assert (= setNonEmpty!9098 b!1512724))

(assert (= (and mapNonEmpty!6986 ((_ is Cons!16060) mapValue!6986)) b!1512726))

(assert (= b!1512728 b!1512727))

(assert (= (and b!1512728 condSetEmpty!9098) setIsEmpty!9097))

(assert (= (and b!1512728 (not condSetEmpty!9098)) setNonEmpty!9097))

(assert (= setNonEmpty!9097 b!1512725))

(assert (= (and mapNonEmpty!6976 ((_ is Cons!16060) mapDefault!6986)) b!1512728))

(declare-fun m!1776930 () Bool)

(assert (=> setNonEmpty!9097 m!1776930))

(declare-fun m!1776932 () Bool)

(assert (=> setNonEmpty!9098 m!1776932))

(declare-fun m!1776934 () Bool)

(assert (=> b!1512726 m!1776934))

(declare-fun m!1776936 () Bool)

(assert (=> mapNonEmpty!6986 m!1776936))

(declare-fun m!1776938 () Bool)

(assert (=> b!1512728 m!1776938))

(declare-fun setIsEmpty!9099 () Bool)

(declare-fun setRes!9099 () Bool)

(assert (=> setIsEmpty!9099 setRes!9099))

(declare-fun b!1512729 () Bool)

(declare-fun e!967335 () Bool)

(declare-fun tp!432578 () Bool)

(assert (=> b!1512729 (= e!967335 tp!432578)))

(declare-fun tp!432574 () Bool)

(declare-fun b!1512730 () Bool)

(declare-fun tp!432576 () Bool)

(declare-fun e!967336 () Bool)

(assert (=> b!1512730 (= e!967336 (and tp!432576 (inv!21296 (_2!8471 (_1!8472 (h!21461 mapValue!6977)))) e!967335 tp_is_empty!7013 setRes!9099 tp!432574))))

(declare-fun condSetEmpty!9099 () Bool)

(assert (=> b!1512730 (= condSetEmpty!9099 (= (_2!8472 (h!21461 mapValue!6977)) ((as const (Array Context!1350 Bool)) false)))))

(declare-fun e!967337 () Bool)

(declare-fun tp!432575 () Bool)

(declare-fun setElem!9099 () Context!1350)

(declare-fun setNonEmpty!9099 () Bool)

(assert (=> setNonEmpty!9099 (= setRes!9099 (and tp!432575 (inv!21296 setElem!9099) e!967337))))

(declare-fun setRest!9099 () (InoxSet Context!1350))

(assert (=> setNonEmpty!9099 (= (_2!8472 (h!21461 mapValue!6977)) ((_ map or) (store ((as const (Array Context!1350 Bool)) false) setElem!9099 true) setRest!9099))))

(assert (=> mapNonEmpty!6976 (= tp!432410 e!967336)))

(declare-fun b!1512731 () Bool)

(declare-fun tp!432577 () Bool)

(assert (=> b!1512731 (= e!967337 tp!432577)))

(assert (= b!1512730 b!1512729))

(assert (= (and b!1512730 condSetEmpty!9099) setIsEmpty!9099))

(assert (= (and b!1512730 (not condSetEmpty!9099)) setNonEmpty!9099))

(assert (= setNonEmpty!9099 b!1512731))

(assert (= (and mapNonEmpty!6976 ((_ is Cons!16060) mapValue!6977)) b!1512730))

(declare-fun m!1776940 () Bool)

(assert (=> b!1512730 m!1776940))

(declare-fun m!1776942 () Bool)

(assert (=> setNonEmpty!9099 m!1776942))

(declare-fun b!1512742 () Bool)

(declare-fun e!967340 () Bool)

(assert (=> b!1512742 (= e!967340 tp_is_empty!7013)))

(declare-fun b!1512744 () Bool)

(declare-fun tp!432592 () Bool)

(assert (=> b!1512744 (= e!967340 tp!432592)))

(declare-fun b!1512745 () Bool)

(declare-fun tp!432589 () Bool)

(declare-fun tp!432591 () Bool)

(assert (=> b!1512745 (= e!967340 (and tp!432589 tp!432591))))

(assert (=> b!1512267 (= tp!432405 e!967340)))

(declare-fun b!1512743 () Bool)

(declare-fun tp!432590 () Bool)

(declare-fun tp!432593 () Bool)

(assert (=> b!1512743 (= e!967340 (and tp!432590 tp!432593))))

(assert (= (and b!1512267 ((_ is ElementMatch!4157) (regex!2842 (h!21457 rules!1640)))) b!1512742))

(assert (= (and b!1512267 ((_ is Concat!7090) (regex!2842 (h!21457 rules!1640)))) b!1512743))

(assert (= (and b!1512267 ((_ is Star!4157) (regex!2842 (h!21457 rules!1640)))) b!1512744))

(assert (= (and b!1512267 ((_ is Union!4157) (regex!2842 (h!21457 rules!1640)))) b!1512745))

(declare-fun b!1512746 () Bool)

(declare-fun e!967341 () Bool)

(declare-fun tp!432597 () Bool)

(assert (=> b!1512746 (= e!967341 tp!432597)))

(declare-fun e!967342 () Bool)

(assert (=> b!1512296 (= tp!432392 e!967342)))

(declare-fun b!1512747 () Bool)

(declare-fun e!967343 () Bool)

(declare-fun tp!432596 () Bool)

(assert (=> b!1512747 (= e!967343 tp!432596)))

(declare-fun setNonEmpty!9100 () Bool)

(declare-fun setElem!9100 () Context!1350)

(declare-fun tp!432595 () Bool)

(declare-fun setRes!9100 () Bool)

(assert (=> setNonEmpty!9100 (= setRes!9100 (and tp!432595 (inv!21296 setElem!9100) e!967343))))

(declare-fun setRest!9100 () (InoxSet Context!1350))

(assert (=> setNonEmpty!9100 (= (_2!8474 (h!21460 (zeroValue!1730 (v!22872 (underlying!3157 (v!22874 (underlying!3158 (cache!1799 cacheUp!616)))))))) ((_ map or) (store ((as const (Array Context!1350 Bool)) false) setElem!9100 true) setRest!9100))))

(declare-fun tp!432594 () Bool)

(declare-fun b!1512748 () Bool)

(assert (=> b!1512748 (= e!967342 (and (inv!21296 (_1!8473 (_1!8474 (h!21460 (zeroValue!1730 (v!22872 (underlying!3157 (v!22874 (underlying!3158 (cache!1799 cacheUp!616)))))))))) e!967341 tp_is_empty!7013 setRes!9100 tp!432594))))

(declare-fun condSetEmpty!9100 () Bool)

(assert (=> b!1512748 (= condSetEmpty!9100 (= (_2!8474 (h!21460 (zeroValue!1730 (v!22872 (underlying!3157 (v!22874 (underlying!3158 (cache!1799 cacheUp!616)))))))) ((as const (Array Context!1350 Bool)) false)))))

(declare-fun setIsEmpty!9100 () Bool)

(assert (=> setIsEmpty!9100 setRes!9100))

(assert (= b!1512748 b!1512746))

(assert (= (and b!1512748 condSetEmpty!9100) setIsEmpty!9100))

(assert (= (and b!1512748 (not condSetEmpty!9100)) setNonEmpty!9100))

(assert (= setNonEmpty!9100 b!1512747))

(assert (= (and b!1512296 ((_ is Cons!16059) (zeroValue!1730 (v!22872 (underlying!3157 (v!22874 (underlying!3158 (cache!1799 cacheUp!616)))))))) b!1512748))

(declare-fun m!1776944 () Bool)

(assert (=> setNonEmpty!9100 m!1776944))

(declare-fun m!1776946 () Bool)

(assert (=> b!1512748 m!1776946))

(declare-fun b!1512749 () Bool)

(declare-fun e!967344 () Bool)

(declare-fun tp!432601 () Bool)

(assert (=> b!1512749 (= e!967344 tp!432601)))

(declare-fun e!967345 () Bool)

(assert (=> b!1512296 (= tp!432384 e!967345)))

(declare-fun b!1512750 () Bool)

(declare-fun e!967346 () Bool)

(declare-fun tp!432600 () Bool)

(assert (=> b!1512750 (= e!967346 tp!432600)))

(declare-fun setNonEmpty!9101 () Bool)

(declare-fun tp!432599 () Bool)

(declare-fun setElem!9101 () Context!1350)

(declare-fun setRes!9101 () Bool)

(assert (=> setNonEmpty!9101 (= setRes!9101 (and tp!432599 (inv!21296 setElem!9101) e!967346))))

(declare-fun setRest!9101 () (InoxSet Context!1350))

(assert (=> setNonEmpty!9101 (= (_2!8474 (h!21460 (minValue!1730 (v!22872 (underlying!3157 (v!22874 (underlying!3158 (cache!1799 cacheUp!616)))))))) ((_ map or) (store ((as const (Array Context!1350 Bool)) false) setElem!9101 true) setRest!9101))))

(declare-fun tp!432598 () Bool)

(declare-fun b!1512751 () Bool)

(assert (=> b!1512751 (= e!967345 (and (inv!21296 (_1!8473 (_1!8474 (h!21460 (minValue!1730 (v!22872 (underlying!3157 (v!22874 (underlying!3158 (cache!1799 cacheUp!616)))))))))) e!967344 tp_is_empty!7013 setRes!9101 tp!432598))))

(declare-fun condSetEmpty!9101 () Bool)

(assert (=> b!1512751 (= condSetEmpty!9101 (= (_2!8474 (h!21460 (minValue!1730 (v!22872 (underlying!3157 (v!22874 (underlying!3158 (cache!1799 cacheUp!616)))))))) ((as const (Array Context!1350 Bool)) false)))))

(declare-fun setIsEmpty!9101 () Bool)

(assert (=> setIsEmpty!9101 setRes!9101))

(assert (= b!1512751 b!1512749))

(assert (= (and b!1512751 condSetEmpty!9101) setIsEmpty!9101))

(assert (= (and b!1512751 (not condSetEmpty!9101)) setNonEmpty!9101))

(assert (= setNonEmpty!9101 b!1512750))

(assert (= (and b!1512296 ((_ is Cons!16059) (minValue!1730 (v!22872 (underlying!3157 (v!22874 (underlying!3158 (cache!1799 cacheUp!616)))))))) b!1512751))

(declare-fun m!1776948 () Bool)

(assert (=> setNonEmpty!9101 m!1776948))

(declare-fun m!1776950 () Bool)

(assert (=> b!1512751 m!1776950))

(declare-fun setIsEmpty!9102 () Bool)

(declare-fun setRes!9102 () Bool)

(assert (=> setIsEmpty!9102 setRes!9102))

(declare-fun b!1512752 () Bool)

(declare-fun e!967347 () Bool)

(declare-fun tp!432606 () Bool)

(assert (=> b!1512752 (= e!967347 tp!432606)))

(declare-fun tp!432602 () Bool)

(declare-fun tp!432604 () Bool)

(declare-fun e!967348 () Bool)

(declare-fun b!1512753 () Bool)

(assert (=> b!1512753 (= e!967348 (and tp!432604 (inv!21296 (_2!8471 (_1!8472 (h!21461 mapDefault!6975)))) e!967347 tp_is_empty!7013 setRes!9102 tp!432602))))

(declare-fun condSetEmpty!9102 () Bool)

(assert (=> b!1512753 (= condSetEmpty!9102 (= (_2!8472 (h!21461 mapDefault!6975)) ((as const (Array Context!1350 Bool)) false)))))

(declare-fun setElem!9102 () Context!1350)

(declare-fun setNonEmpty!9102 () Bool)

(declare-fun e!967349 () Bool)

(declare-fun tp!432603 () Bool)

(assert (=> setNonEmpty!9102 (= setRes!9102 (and tp!432603 (inv!21296 setElem!9102) e!967349))))

(declare-fun setRest!9102 () (InoxSet Context!1350))

(assert (=> setNonEmpty!9102 (= (_2!8472 (h!21461 mapDefault!6975)) ((_ map or) (store ((as const (Array Context!1350 Bool)) false) setElem!9102 true) setRest!9102))))

(assert (=> b!1512314 (= tp!432397 e!967348)))

(declare-fun b!1512754 () Bool)

(declare-fun tp!432605 () Bool)

(assert (=> b!1512754 (= e!967349 tp!432605)))

(assert (= b!1512753 b!1512752))

(assert (= (and b!1512753 condSetEmpty!9102) setIsEmpty!9102))

(assert (= (and b!1512753 (not condSetEmpty!9102)) setNonEmpty!9102))

(assert (= setNonEmpty!9102 b!1512754))

(assert (= (and b!1512314 ((_ is Cons!16060) mapDefault!6975)) b!1512753))

(declare-fun m!1776952 () Bool)

(assert (=> b!1512753 m!1776952))

(declare-fun m!1776954 () Bool)

(assert (=> setNonEmpty!9102 m!1776954))

(declare-fun b!1512755 () Bool)

(declare-fun e!967351 () Bool)

(declare-fun setRes!9103 () Bool)

(declare-fun tp!432607 () Bool)

(assert (=> b!1512755 (= e!967351 (and setRes!9103 tp!432607))))

(declare-fun condSetEmpty!9103 () Bool)

(assert (=> b!1512755 (= condSetEmpty!9103 (= (_1!8469 (_1!8470 (h!21459 mapDefault!6976))) ((as const (Array Context!1350 Bool)) false)))))

(declare-fun setIsEmpty!9103 () Bool)

(assert (=> setIsEmpty!9103 setRes!9103))

(assert (=> b!1512303 (= tp!432394 e!967351)))

(declare-fun tp!432609 () Bool)

(declare-fun setNonEmpty!9103 () Bool)

(declare-fun e!967350 () Bool)

(declare-fun setElem!9103 () Context!1350)

(assert (=> setNonEmpty!9103 (= setRes!9103 (and tp!432609 (inv!21296 setElem!9103) e!967350))))

(declare-fun setRest!9103 () (InoxSet Context!1350))

(assert (=> setNonEmpty!9103 (= (_1!8469 (_1!8470 (h!21459 mapDefault!6976))) ((_ map or) (store ((as const (Array Context!1350 Bool)) false) setElem!9103 true) setRest!9103))))

(declare-fun b!1512756 () Bool)

(declare-fun tp!432608 () Bool)

(assert (=> b!1512756 (= e!967350 tp!432608)))

(assert (= (and b!1512755 condSetEmpty!9103) setIsEmpty!9103))

(assert (= (and b!1512755 (not condSetEmpty!9103)) setNonEmpty!9103))

(assert (= setNonEmpty!9103 b!1512756))

(assert (= (and b!1512303 ((_ is Cons!16058) mapDefault!6976)) b!1512755))

(declare-fun m!1776956 () Bool)

(assert (=> setNonEmpty!9103 m!1776956))

(declare-fun tp!432611 () Bool)

(declare-fun e!967352 () Bool)

(declare-fun b!1512757 () Bool)

(declare-fun tp!432610 () Bool)

(assert (=> b!1512757 (= e!967352 (and (inv!21285 (left!13358 (c!247915 input!1102))) tp!432610 (inv!21285 (right!13688 (c!247915 input!1102))) tp!432611))))

(declare-fun b!1512759 () Bool)

(declare-fun e!967353 () Bool)

(declare-fun tp!432612 () Bool)

(assert (=> b!1512759 (= e!967353 tp!432612)))

(declare-fun b!1512758 () Bool)

(assert (=> b!1512758 (= e!967352 (and (inv!21297 (xs!8216 (c!247915 input!1102))) e!967353))))

(assert (=> b!1512311 (= tp!432383 (and (inv!21285 (c!247915 input!1102)) e!967352))))

(assert (= (and b!1512311 ((_ is Node!5435) (c!247915 input!1102))) b!1512757))

(assert (= b!1512758 b!1512759))

(assert (= (and b!1512311 ((_ is Leaf!8059) (c!247915 input!1102))) b!1512758))

(declare-fun m!1776958 () Bool)

(assert (=> b!1512757 m!1776958))

(declare-fun m!1776960 () Bool)

(assert (=> b!1512757 m!1776960))

(declare-fun m!1776962 () Bool)

(assert (=> b!1512758 m!1776962))

(assert (=> b!1512311 m!1776198))

(declare-fun e!967354 () Bool)

(declare-fun tp!432613 () Bool)

(declare-fun b!1512760 () Bool)

(declare-fun tp!432614 () Bool)

(assert (=> b!1512760 (= e!967354 (and (inv!21285 (left!13358 (c!247915 (totalInput!2294 cacheFurthestNullable!64)))) tp!432613 (inv!21285 (right!13688 (c!247915 (totalInput!2294 cacheFurthestNullable!64)))) tp!432614))))

(declare-fun b!1512762 () Bool)

(declare-fun e!967355 () Bool)

(declare-fun tp!432615 () Bool)

(assert (=> b!1512762 (= e!967355 tp!432615)))

(declare-fun b!1512761 () Bool)

(assert (=> b!1512761 (= e!967354 (and (inv!21297 (xs!8216 (c!247915 (totalInput!2294 cacheFurthestNullable!64)))) e!967355))))

(assert (=> b!1512302 (= tp!432400 (and (inv!21285 (c!247915 (totalInput!2294 cacheFurthestNullable!64))) e!967354))))

(assert (= (and b!1512302 ((_ is Node!5435) (c!247915 (totalInput!2294 cacheFurthestNullable!64)))) b!1512760))

(assert (= b!1512761 b!1512762))

(assert (= (and b!1512302 ((_ is Leaf!8059) (c!247915 (totalInput!2294 cacheFurthestNullable!64)))) b!1512761))

(declare-fun m!1776964 () Bool)

(assert (=> b!1512760 m!1776964))

(declare-fun m!1776966 () Bool)

(assert (=> b!1512760 m!1776966))

(declare-fun m!1776968 () Bool)

(assert (=> b!1512761 m!1776968))

(assert (=> b!1512302 m!1776364))

(declare-fun b!1512763 () Bool)

(declare-fun e!967357 () Bool)

(declare-fun setRes!9104 () Bool)

(declare-fun tp!432616 () Bool)

(assert (=> b!1512763 (= e!967357 (and setRes!9104 tp!432616))))

(declare-fun condSetEmpty!9104 () Bool)

(assert (=> b!1512763 (= condSetEmpty!9104 (= (_1!8469 (_1!8470 (h!21459 (zeroValue!1729 (v!22868 (underlying!3153 (v!22869 (underlying!3154 (cache!1798 cacheFurthestNullable!64))))))))) ((as const (Array Context!1350 Bool)) false)))))

(declare-fun setIsEmpty!9104 () Bool)

(assert (=> setIsEmpty!9104 setRes!9104))

(assert (=> b!1512301 (= tp!432393 e!967357)))

(declare-fun setElem!9104 () Context!1350)

(declare-fun setNonEmpty!9104 () Bool)

(declare-fun e!967356 () Bool)

(declare-fun tp!432618 () Bool)

(assert (=> setNonEmpty!9104 (= setRes!9104 (and tp!432618 (inv!21296 setElem!9104) e!967356))))

(declare-fun setRest!9104 () (InoxSet Context!1350))

(assert (=> setNonEmpty!9104 (= (_1!8469 (_1!8470 (h!21459 (zeroValue!1729 (v!22868 (underlying!3153 (v!22869 (underlying!3154 (cache!1798 cacheFurthestNullable!64))))))))) ((_ map or) (store ((as const (Array Context!1350 Bool)) false) setElem!9104 true) setRest!9104))))

(declare-fun b!1512764 () Bool)

(declare-fun tp!432617 () Bool)

(assert (=> b!1512764 (= e!967356 tp!432617)))

(assert (= (and b!1512763 condSetEmpty!9104) setIsEmpty!9104))

(assert (= (and b!1512763 (not condSetEmpty!9104)) setNonEmpty!9104))

(assert (= setNonEmpty!9104 b!1512764))

(assert (= (and b!1512301 ((_ is Cons!16058) (zeroValue!1729 (v!22868 (underlying!3153 (v!22869 (underlying!3154 (cache!1798 cacheFurthestNullable!64)))))))) b!1512763))

(declare-fun m!1776970 () Bool)

(assert (=> setNonEmpty!9104 m!1776970))

(declare-fun b!1512765 () Bool)

(declare-fun e!967359 () Bool)

(declare-fun setRes!9105 () Bool)

(declare-fun tp!432619 () Bool)

(assert (=> b!1512765 (= e!967359 (and setRes!9105 tp!432619))))

(declare-fun condSetEmpty!9105 () Bool)

(assert (=> b!1512765 (= condSetEmpty!9105 (= (_1!8469 (_1!8470 (h!21459 (minValue!1729 (v!22868 (underlying!3153 (v!22869 (underlying!3154 (cache!1798 cacheFurthestNullable!64))))))))) ((as const (Array Context!1350 Bool)) false)))))

(declare-fun setIsEmpty!9105 () Bool)

(assert (=> setIsEmpty!9105 setRes!9105))

(assert (=> b!1512301 (= tp!432398 e!967359)))

(declare-fun tp!432621 () Bool)

(declare-fun e!967358 () Bool)

(declare-fun setElem!9105 () Context!1350)

(declare-fun setNonEmpty!9105 () Bool)

(assert (=> setNonEmpty!9105 (= setRes!9105 (and tp!432621 (inv!21296 setElem!9105) e!967358))))

(declare-fun setRest!9105 () (InoxSet Context!1350))

(assert (=> setNonEmpty!9105 (= (_1!8469 (_1!8470 (h!21459 (minValue!1729 (v!22868 (underlying!3153 (v!22869 (underlying!3154 (cache!1798 cacheFurthestNullable!64))))))))) ((_ map or) (store ((as const (Array Context!1350 Bool)) false) setElem!9105 true) setRest!9105))))

(declare-fun b!1512766 () Bool)

(declare-fun tp!432620 () Bool)

(assert (=> b!1512766 (= e!967358 tp!432620)))

(assert (= (and b!1512765 condSetEmpty!9105) setIsEmpty!9105))

(assert (= (and b!1512765 (not condSetEmpty!9105)) setNonEmpty!9105))

(assert (= setNonEmpty!9105 b!1512766))

(assert (= (and b!1512301 ((_ is Cons!16058) (minValue!1729 (v!22868 (underlying!3153 (v!22869 (underlying!3154 (cache!1798 cacheFurthestNullable!64)))))))) b!1512765))

(declare-fun m!1776972 () Bool)

(assert (=> setNonEmpty!9105 m!1776972))

(check-sat (not setNonEmpty!9101) (not b!1512457) (not b!1512546) b_and!105231 (not setNonEmpty!9090) (not b!1512597) (not d!447896) (not b!1512497) (not b!1512749) (not b!1512358) (not b!1512381) (not b!1512552) (not b!1512658) (not b!1512589) (not d!447874) (not d!447952) (not b!1512671) (not b!1512400) (not b!1512530) (not d!447908) (not b!1512593) (not d!447898) (not d!447872) (not b!1512371) (not d!447794) (not b!1512339) (not b!1512493) (not b!1512434) (not d!447834) (not b!1512599) (not b!1512366) (not b!1512391) (not d!447950) (not b!1512395) (not b!1512458) b_and!105227 (not b!1512369) (not d!447914) (not d!447868) (not mapNonEmpty!6980) (not mapNonEmpty!6986) (not bm!100328) (not b!1512336) (not d!447882) (not b!1512641) (not d!447876) (not b!1512624) (not b!1512724) (not setNonEmpty!9098) (not b!1512473) (not b!1512540) b_and!105233 (not d!447798) (not setNonEmpty!9082) (not b!1512600) (not b!1512680) (not b!1512751) (not b!1512542) (not d!447826) (not b!1512543) (not b!1512471) (not mapNonEmpty!6983) (not b!1512698) (not b!1512660) (not b!1512745) (not b!1512315) (not b!1512531) (not b!1512398) (not b!1512550) (not b!1512407) (not b!1512753) (not b!1512639) (not b!1512659) (not b!1512532) (not d!447812) (not d!447840) b_and!105243 (not b!1512319) (not b!1512547) (not b!1512705) (not setNonEmpty!9104) (not b!1512699) (not b!1512435) (not b!1512697) (not b!1512469) (not b!1512410) (not b!1512270) (not b!1512557) (not b!1512388) (not setNonEmpty!9105) (not b!1512551) (not b!1512384) (not d!447910) (not tb!86205) (not d!447888) (not b!1512385) (not b!1512382) (not b!1512350) (not b!1512442) (not b!1512766) (not b!1512389) (not b!1512423) (not b!1512728) (not b!1512380) (not b!1512537) (not d!447818) (not d!447828) (not b!1512422) (not b_next!39933) (not d!447938) (not b!1512611) (not b!1512681) (not b!1512761) (not b!1512511) (not b!1512762) (not b!1512338) (not b!1512670) (not b!1512601) (not b!1512512) (not d!447878) (not b!1512409) (not b!1512702) (not bm!100325) (not b!1512596) (not d!447902) (not b!1512496) (not setNonEmpty!9102) b_and!105239 (not setNonEmpty!9103) (not d!447932) b_and!105237 (not d!447918) b_and!105247 (not d!447928) (not b!1512555) (not b!1512727) (not b!1512612) (not b!1512364) (not b!1512590) (not b!1512743) (not d!447838) (not b_next!39921) (not b!1512549) (not b!1512459) (not b!1512467) (not b!1512412) (not b!1512747) (not b!1512383) (not b!1512397) (not setNonEmpty!9097) (not b!1512490) (not b!1512701) (not b!1512708) (not b!1512456) (not b!1512638) (not b_next!39931) (not b!1512302) (not b!1512748) (not b!1512535) (not d!447944) (not d!447948) (not b!1512752) (not d!447894) (not d!447904) (not b!1512707) (not b!1512763) (not b!1512536) (not d!447796) (not b!1512508) (not b!1512764) (not b!1512470) (not b!1512367) (not b!1512553) (not setNonEmpty!9072) (not b!1512509) (not setNonEmpty!9099) (not b!1512533) (not b!1512648) (not b!1512503) (not b!1512704) (not b!1512622) (not d!447954) tp_is_empty!7013 (not b!1512754) (not b!1512343) (not b!1512726) (not d!447858) (not b!1512598) (not d!447792) (not b!1512443) (not setNonEmpty!9085) b_and!105241 (not b!1512280) (not b!1512758) (not b!1512760) (not d!447934) (not b!1512765) (not b!1512649) (not b!1512560) (not b_next!39925) (not b!1512548) (not b!1512439) (not setNonEmpty!9078) (not d!447916) (not b!1512759) (not b!1512700) (not d!447880) (not setNonEmpty!9092) (not d!447930) (not d!447830) (not b!1512361) (not b!1512390) (not b!1512311) (not d!447936) (not d!447890) (not b!1512729) (not b!1512386) (not d!447854) (not b!1512355) (not b!1512623) (not b!1512730) (not d!447852) (not b!1512475) (not d!447922) (not bm!100324) (not d!447810) (not b!1512340) (not b!1512562) (not b_next!39915) (not b!1512396) (not d!447832) (not d!447924) (not d!447844) (not b!1512746) (not b!1512725) (not d!447940) (not b!1512625) (not b!1512757) (not b!1512541) (not d!447866) (not setNonEmpty!9079) (not d!447900) (not b!1512393) (not b_next!39923) (not d!447842) (not b!1512564) (not d!447892) (not b!1512556) (not b!1512640) (not d!447926) (not b!1512595) (not b!1512756) (not b!1512723) (not b!1512438) (not b!1512669) (not b!1512559) (not b!1512474) (not b!1512626) (not b!1512492) (not d!447912) (not b!1512731) (not b!1512489) (not b_next!39919) (not b_next!39917) (not d!447920) (not b!1512352) b_and!105235 (not b!1512602) (not b!1512706) (not b_lambda!47497) (not d!447820) (not b!1512544) (not b!1512365) (not setNonEmpty!9100) (not b!1512504) (not b!1512501) (not b!1512392) (not b!1512466) (not b!1512334) (not d!447836) (not d!447870) (not d!447886) (not b!1512488) (not b_next!39929) (not b!1512750) (not d!447884) (not b!1512755) b_and!105245 (not b!1512335) (not d!447806) (not b!1512627) (not b!1512464) (not b!1512703) (not b!1512744) (not b!1512594) (not setNonEmpty!9073) (not b_next!39927) (not b!1512447) (not b!1512370) (not b!1512505) (not b!1512500) (not b!1512682) (not setNonEmpty!9091) (not b!1512507) (not d!447906))
(check-sat b_and!105231 b_and!105227 b_and!105233 b_and!105243 (not b_next!39933) b_and!105239 (not b_next!39921) (not b_next!39931) (not b_next!39915) (not b_next!39923) (not b_next!39929) b_and!105245 (not b_next!39927) b_and!105237 b_and!105247 b_and!105241 (not b_next!39925) b_and!105235 (not b_next!39919) (not b_next!39917))
