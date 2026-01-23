; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65916 () Bool)

(assert start!65916)

(declare-fun b!688991 () Bool)

(declare-fun b_free!19393 () Bool)

(declare-fun b_next!19457 () Bool)

(assert (=> b!688991 (= b_free!19393 (not b_next!19457))))

(declare-fun tp!206329 () Bool)

(declare-fun b_and!63187 () Bool)

(assert (=> b!688991 (= tp!206329 b_and!63187)))

(declare-fun b!689023 () Bool)

(declare-fun b_free!19395 () Bool)

(declare-fun b_next!19459 () Bool)

(assert (=> b!689023 (= b_free!19395 (not b_next!19459))))

(declare-fun tp!206330 () Bool)

(declare-fun b_and!63189 () Bool)

(assert (=> b!689023 (= tp!206330 b_and!63189)))

(declare-fun b_free!19397 () Bool)

(declare-fun b_next!19461 () Bool)

(assert (=> b!689023 (= b_free!19397 (not b_next!19461))))

(declare-fun tp!206313 () Bool)

(declare-fun b_and!63191 () Bool)

(assert (=> b!689023 (= tp!206313 b_and!63191)))

(declare-fun b!688990 () Bool)

(declare-fun b_free!19399 () Bool)

(declare-fun b_next!19463 () Bool)

(assert (=> b!688990 (= b_free!19399 (not b_next!19463))))

(declare-fun tp!206311 () Bool)

(declare-fun b_and!63193 () Bool)

(assert (=> b!688990 (= tp!206311 b_and!63193)))

(declare-fun b!689006 () Bool)

(declare-fun b_free!19401 () Bool)

(declare-fun b_next!19465 () Bool)

(assert (=> b!689006 (= b_free!19401 (not b_next!19465))))

(declare-fun tp!206316 () Bool)

(declare-fun b_and!63195 () Bool)

(assert (=> b!689006 (= tp!206316 b_and!63195)))

(declare-fun b!688997 () Bool)

(declare-fun b_free!19403 () Bool)

(declare-fun b_next!19467 () Bool)

(assert (=> b!688997 (= b_free!19403 (not b_next!19467))))

(declare-fun tp!206324 () Bool)

(declare-fun b_and!63197 () Bool)

(assert (=> b!688997 (= tp!206324 b_and!63197)))

(declare-fun b!689005 () Bool)

(declare-fun b_free!19405 () Bool)

(declare-fun b_next!19469 () Bool)

(assert (=> b!689005 (= b_free!19405 (not b_next!19469))))

(declare-fun tp!206315 () Bool)

(declare-fun b_and!63199 () Bool)

(assert (=> b!689005 (= tp!206315 b_and!63199)))

(declare-fun b!689025 () Bool)

(declare-fun b_free!19407 () Bool)

(declare-fun b_next!19471 () Bool)

(assert (=> b!689025 (= b_free!19407 (not b_next!19471))))

(declare-fun tp!206320 () Bool)

(declare-fun b_and!63201 () Bool)

(assert (=> b!689025 (= tp!206320 b_and!63201)))

(declare-datatypes ((Hashable!711 0))(
  ( (HashableExt!710 (__x!5275 Int)) )
))
(declare-datatypes ((C!4248 0))(
  ( (C!4249 (val!2354 Int)) )
))
(declare-datatypes ((Regex!1823 0))(
  ( (ElementMatch!1823 (c!121419 C!4248)) (Concat!3353 (regOne!4158 Regex!1823) (regTwo!4158 Regex!1823)) (EmptyExpr!1823) (Star!1823 (reg!2152 Regex!1823)) (EmptyLang!1823) (Union!1823 (regOne!4159 Regex!1823) (regTwo!4159 Regex!1823)) )
))
(declare-datatypes ((List!7395 0))(
  ( (Nil!7381) (Cons!7381 (h!12782 Regex!1823) (t!87206 List!7395)) )
))
(declare-datatypes ((Context!466 0))(
  ( (Context!467 (exprs!733 List!7395)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7746 0))(
  ( (tuple2!7747 (_1!4271 (InoxSet Context!466)) (_2!4271 Int)) )
))
(declare-datatypes ((array!2789 0))(
  ( (array!2790 (arr!1260 (Array (_ BitVec 32) (_ BitVec 64))) (size!6060 (_ BitVec 32))) )
))
(declare-datatypes ((List!7396 0))(
  ( (Nil!7382) (Cons!7382 (h!12783 C!4248) (t!87207 List!7396)) )
))
(declare-datatypes ((tuple2!7748 0))(
  ( (tuple2!7749 (_1!4272 tuple2!7746) (_2!4272 Int)) )
))
(declare-datatypes ((List!7397 0))(
  ( (Nil!7383) (Cons!7383 (h!12784 tuple2!7748) (t!87208 List!7397)) )
))
(declare-datatypes ((array!2791 0))(
  ( (array!2792 (arr!1261 (Array (_ BitVec 32) List!7397)) (size!6061 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1478 0))(
  ( (LongMapFixedSize!1479 (defaultEntry!1095 Int) (mask!2535 (_ BitVec 32)) (extraKeys!986 (_ BitVec 32)) (zeroValue!996 List!7397) (minValue!996 List!7397) (_size!1587 (_ BitVec 32)) (_keys!1033 array!2789) (_values!1018 array!2791) (_vacant!800 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2897 0))(
  ( (Cell!2898 (v!17593 LongMapFixedSize!1478)) )
))
(declare-datatypes ((MutLongMap!739 0))(
  ( (LongMap!739 (underlying!1661 Cell!2897)) (MutLongMapExt!738 (__x!5276 Int)) )
))
(declare-datatypes ((Cell!2899 0))(
  ( (Cell!2900 (v!17594 MutLongMap!739)) )
))
(declare-datatypes ((MutableMap!711 0))(
  ( (MutableMapExt!710 (__x!5277 Int)) (HashMap!711 (underlying!1662 Cell!2899) (hashF!2619 Hashable!711) (_size!1588 (_ BitVec 32)) (defaultValue!862 Int)) )
))
(declare-datatypes ((IArray!5233 0))(
  ( (IArray!5234 (innerList!2674 List!7396)) )
))
(declare-datatypes ((Conc!2616 0))(
  ( (Node!2616 (left!5956 Conc!2616) (right!6286 Conc!2616) (csize!5462 Int) (cheight!2827 Int)) (Leaf!3881 (xs!5265 IArray!5233) (csize!5463 Int)) (Empty!2616) )
))
(declare-datatypes ((BalanceConc!5244 0))(
  ( (BalanceConc!5245 (c!121420 Conc!2616)) )
))
(declare-datatypes ((CacheFindLongestMatch!22 0))(
  ( (CacheFindLongestMatch!23 (cache!1098 MutableMap!711) (totalInput!1789 BalanceConc!5244)) )
))
(declare-fun cacheFindLongestMatch!59 () CacheFindLongestMatch!22)

(declare-fun e!433012 () Bool)

(declare-fun tp!206317 () Bool)

(declare-fun e!433000 () Bool)

(declare-fun tp!206312 () Bool)

(declare-fun array_inv!920 (array!2789) Bool)

(declare-fun array_inv!921 (array!2791) Bool)

(assert (=> b!688990 (= e!433000 (and tp!206311 tp!206317 tp!206312 (array_inv!920 (_keys!1033 (v!17593 (underlying!1661 (v!17594 (underlying!1662 (cache!1098 cacheFindLongestMatch!59))))))) (array_inv!921 (_values!1018 (v!17593 (underlying!1661 (v!17594 (underlying!1662 (cache!1098 cacheFindLongestMatch!59))))))) e!433012))))

(declare-fun e!433026 () Bool)

(declare-fun e!433002 () Bool)

(assert (=> b!688991 (= e!433026 (and e!433002 tp!206329))))

(declare-fun b!688992 () Bool)

(declare-fun e!433005 () Bool)

(declare-datatypes ((List!7398 0))(
  ( (Nil!7384) (Cons!7384 (h!12785 (_ BitVec 16)) (t!87209 List!7398)) )
))
(declare-datatypes ((TokenValue!1530 0))(
  ( (FloatLiteralValue!3060 (text!11155 List!7398)) (TokenValueExt!1529 (__x!5278 Int)) (Broken!7650 (value!47992 List!7398)) (Object!1543) (End!1530) (Def!1530) (Underscore!1530) (Match!1530) (Else!1530) (Error!1530) (Case!1530) (If!1530) (Extends!1530) (Abstract!1530) (Class!1530) (Val!1530) (DelimiterValue!3060 (del!1590 List!7398)) (KeywordValue!1536 (value!47993 List!7398)) (CommentValue!3060 (value!47994 List!7398)) (WhitespaceValue!3060 (value!47995 List!7398)) (IndentationValue!1530 (value!47996 List!7398)) (String!9371) (Int32!1530) (Broken!7651 (value!47997 List!7398)) (Boolean!1531) (Unit!12622) (OperatorValue!1533 (op!1590 List!7398)) (IdentifierValue!3060 (value!47998 List!7398)) (IdentifierValue!3061 (value!47999 List!7398)) (WhitespaceValue!3061 (value!48000 List!7398)) (True!3060) (False!3060) (Broken!7652 (value!48001 List!7398)) (Broken!7653 (value!48002 List!7398)) (True!3061) (RightBrace!1530) (RightBracket!1530) (Colon!1530) (Null!1530) (Comma!1530) (LeftBracket!1530) (False!3061) (LeftBrace!1530) (ImaginaryLiteralValue!1530 (text!11156 List!7398)) (StringLiteralValue!4590 (value!48003 List!7398)) (EOFValue!1530 (value!48004 List!7398)) (IdentValue!1530 (value!48005 List!7398)) (DelimiterValue!3061 (value!48006 List!7398)) (DedentValue!1530 (value!48007 List!7398)) (NewLineValue!1530 (value!48008 List!7398)) (IntegerValue!4590 (value!48009 (_ BitVec 32)) (text!11157 List!7398)) (IntegerValue!4591 (value!48010 Int) (text!11158 List!7398)) (Times!1530) (Or!1530) (Equal!1530) (Minus!1530) (Broken!7654 (value!48011 List!7398)) (And!1530) (Div!1530) (LessEqual!1530) (Mod!1530) (Concat!3354) (Not!1530) (Plus!1530) (SpaceValue!1530 (value!48012 List!7398)) (IntegerValue!4592 (value!48013 Int) (text!11159 List!7398)) (StringLiteralValue!4591 (text!11160 List!7398)) (FloatLiteralValue!3061 (text!11161 List!7398)) (BytesLiteralValue!1530 (value!48014 List!7398)) (CommentValue!3061 (value!48015 List!7398)) (StringLiteralValue!4592 (value!48016 List!7398)) (ErrorTokenValue!1530 (msg!1591 List!7398)) )
))
(declare-datatypes ((String!9372 0))(
  ( (String!9373 (value!48017 String)) )
))
(declare-datatypes ((TokenValueInjection!2796 0))(
  ( (TokenValueInjection!2797 (toValue!2444 Int) (toChars!2303 Int)) )
))
(declare-datatypes ((Rule!2772 0))(
  ( (Rule!2773 (regex!1486 Regex!1823) (tag!1748 String!9372) (isSeparator!1486 Bool) (transformation!1486 TokenValueInjection!2796)) )
))
(declare-datatypes ((Token!2682 0))(
  ( (Token!2683 (value!48018 TokenValue!1530) (rule!2530 Rule!2772) (size!6062 Int) (originalCharacters!1766 List!7396)) )
))
(declare-datatypes ((List!7399 0))(
  ( (Nil!7385) (Cons!7385 (h!12786 Token!2682) (t!87210 List!7399)) )
))
(declare-datatypes ((IArray!5235 0))(
  ( (IArray!5236 (innerList!2675 List!7399)) )
))
(declare-datatypes ((Conc!2617 0))(
  ( (Node!2617 (left!5957 Conc!2617) (right!6287 Conc!2617) (csize!5464 Int) (cheight!2828 Int)) (Leaf!3882 (xs!5266 IArray!5235) (csize!5465 Int)) (Empty!2617) )
))
(declare-datatypes ((BalanceConc!5246 0))(
  ( (BalanceConc!5247 (c!121421 Conc!2617)) )
))
(declare-datatypes ((tuple2!7750 0))(
  ( (tuple2!7751 (_1!4273 BalanceConc!5246) (_2!4273 BalanceConc!5244)) )
))
(declare-fun lt!284253 () tuple2!7750)

(declare-fun list!3114 (BalanceConc!5246) List!7399)

(declare-fun ++!1937 (BalanceConc!5246 BalanceConc!5246) BalanceConc!5246)

(assert (=> b!688992 (= e!433005 (not (= (list!3114 (_1!4273 lt!284253)) (list!3114 (++!1937 (BalanceConc!5247 Empty!2617) (_1!4273 lt!284253))))))))

(declare-fun input!756 () BalanceConc!5244)

(declare-datatypes ((LexerInterface!1301 0))(
  ( (LexerInterfaceExt!1298 (__x!5279 Int)) (Lexer!1299) )
))
(declare-fun thiss!12183 () LexerInterface!1301)

(declare-datatypes ((List!7400 0))(
  ( (Nil!7386) (Cons!7386 (h!12787 Rule!2772) (t!87211 List!7400)) )
))
(declare-fun rules!1357 () List!7400)

(declare-fun lexRec!152 (LexerInterface!1301 List!7400 BalanceConc!5244) tuple2!7750)

(assert (=> b!688992 (= lt!284253 (lexRec!152 thiss!12183 rules!1357 input!756))))

(declare-fun b!688993 () Bool)

(declare-fun res!312928 () Bool)

(declare-fun e!433017 () Bool)

(assert (=> b!688993 (=> (not res!312928) (not e!433017))))

(declare-datatypes ((tuple3!694 0))(
  ( (tuple3!695 (_1!4274 Regex!1823) (_2!4274 Context!466) (_3!398 C!4248)) )
))
(declare-datatypes ((tuple2!7752 0))(
  ( (tuple2!7753 (_1!4275 tuple3!694) (_2!4275 (InoxSet Context!466))) )
))
(declare-datatypes ((List!7401 0))(
  ( (Nil!7387) (Cons!7387 (h!12788 tuple2!7752) (t!87212 List!7401)) )
))
(declare-datatypes ((array!2793 0))(
  ( (array!2794 (arr!1262 (Array (_ BitVec 32) List!7401)) (size!6063 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1480 0))(
  ( (LongMapFixedSize!1481 (defaultEntry!1096 Int) (mask!2536 (_ BitVec 32)) (extraKeys!987 (_ BitVec 32)) (zeroValue!997 List!7401) (minValue!997 List!7401) (_size!1589 (_ BitVec 32)) (_keys!1034 array!2789) (_values!1019 array!2793) (_vacant!801 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2901 0))(
  ( (Cell!2902 (v!17595 LongMapFixedSize!1480)) )
))
(declare-datatypes ((MutLongMap!740 0))(
  ( (LongMap!740 (underlying!1663 Cell!2901)) (MutLongMapExt!739 (__x!5280 Int)) )
))
(declare-datatypes ((Cell!2903 0))(
  ( (Cell!2904 (v!17596 MutLongMap!740)) )
))
(declare-datatypes ((Hashable!712 0))(
  ( (HashableExt!711 (__x!5281 Int)) )
))
(declare-datatypes ((MutableMap!712 0))(
  ( (MutableMapExt!711 (__x!5282 Int)) (HashMap!712 (underlying!1664 Cell!2903) (hashF!2620 Hashable!712) (_size!1590 (_ BitVec 32)) (defaultValue!863 Int)) )
))
(declare-datatypes ((CacheDown!366 0))(
  ( (CacheDown!367 (cache!1099 MutableMap!712)) )
))
(declare-fun cacheDown!470 () CacheDown!366)

(declare-fun valid!627 (CacheDown!366) Bool)

(assert (=> b!688993 (= res!312928 (valid!627 cacheDown!470))))

(declare-fun res!312924 () Bool)

(assert (=> start!65916 (=> (not res!312924) (not e!433017))))

(get-info :version)

(assert (=> start!65916 (= res!312924 ((_ is Lexer!1299) thiss!12183))))

(assert (=> start!65916 e!433017))

(declare-fun e!432998 () Bool)

(declare-fun inv!9484 (CacheFindLongestMatch!22) Bool)

(assert (=> start!65916 (and (inv!9484 cacheFindLongestMatch!59) e!432998)))

(declare-fun e!433018 () Bool)

(declare-fun inv!9485 (BalanceConc!5244) Bool)

(assert (=> start!65916 (and (inv!9485 input!756) e!433018)))

(declare-datatypes ((tuple2!7754 0))(
  ( (tuple2!7755 (_1!4276 Context!466) (_2!4276 C!4248)) )
))
(declare-datatypes ((tuple2!7756 0))(
  ( (tuple2!7757 (_1!4277 tuple2!7754) (_2!4277 (InoxSet Context!466))) )
))
(declare-datatypes ((List!7402 0))(
  ( (Nil!7388) (Cons!7388 (h!12789 tuple2!7756) (t!87213 List!7402)) )
))
(declare-datatypes ((array!2795 0))(
  ( (array!2796 (arr!1263 (Array (_ BitVec 32) List!7402)) (size!6064 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1482 0))(
  ( (LongMapFixedSize!1483 (defaultEntry!1097 Int) (mask!2537 (_ BitVec 32)) (extraKeys!988 (_ BitVec 32)) (zeroValue!998 List!7402) (minValue!998 List!7402) (_size!1591 (_ BitVec 32)) (_keys!1035 array!2789) (_values!1020 array!2795) (_vacant!802 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2905 0))(
  ( (Cell!2906 (v!17597 LongMapFixedSize!1482)) )
))
(declare-datatypes ((MutLongMap!741 0))(
  ( (LongMap!741 (underlying!1665 Cell!2905)) (MutLongMapExt!740 (__x!5283 Int)) )
))
(declare-datatypes ((Cell!2907 0))(
  ( (Cell!2908 (v!17598 MutLongMap!741)) )
))
(declare-datatypes ((Hashable!713 0))(
  ( (HashableExt!712 (__x!5284 Int)) )
))
(declare-datatypes ((MutableMap!713 0))(
  ( (MutableMapExt!712 (__x!5285 Int)) (HashMap!713 (underlying!1666 Cell!2907) (hashF!2621 Hashable!713) (_size!1592 (_ BitVec 32)) (defaultValue!864 Int)) )
))
(declare-datatypes ((CacheUp!360 0))(
  ( (CacheUp!361 (cache!1100 MutableMap!713)) )
))
(declare-fun cacheUp!457 () CacheUp!360)

(declare-fun e!433025 () Bool)

(declare-fun inv!9486 (CacheUp!360) Bool)

(assert (=> start!65916 (and (inv!9486 cacheUp!457) e!433025)))

(declare-fun e!433010 () Bool)

(declare-fun inv!9487 (CacheDown!366) Bool)

(assert (=> start!65916 (and (inv!9487 cacheDown!470) e!433010)))

(assert (=> start!65916 true))

(declare-fun e!433019 () Bool)

(assert (=> start!65916 e!433019))

(declare-fun b!688994 () Bool)

(declare-fun res!312923 () Bool)

(assert (=> b!688994 (=> (not res!312923) (not e!433017))))

(declare-fun valid!628 (CacheUp!360) Bool)

(assert (=> b!688994 (= res!312923 (valid!628 cacheUp!457))))

(declare-fun b!688995 () Bool)

(declare-fun res!312925 () Bool)

(assert (=> b!688995 (=> (not res!312925) (not e!433017))))

(declare-fun isEmpty!4850 (List!7400) Bool)

(assert (=> b!688995 (= res!312925 (not (isEmpty!4850 rules!1357)))))

(declare-fun b!688996 () Bool)

(declare-fun e!433001 () Bool)

(declare-fun e!433011 () Bool)

(declare-fun lt!284256 () MutLongMap!739)

(assert (=> b!688996 (= e!433001 (and e!433011 ((_ is LongMap!739) lt!284256)))))

(assert (=> b!688996 (= lt!284256 (v!17594 (underlying!1662 (cache!1098 cacheFindLongestMatch!59))))))

(declare-fun mapNonEmpty!2966 () Bool)

(declare-fun mapRes!2967 () Bool)

(declare-fun tp!206322 () Bool)

(declare-fun tp!206309 () Bool)

(assert (=> mapNonEmpty!2966 (= mapRes!2967 (and tp!206322 tp!206309))))

(declare-fun mapKey!2966 () (_ BitVec 32))

(declare-fun mapRest!2967 () (Array (_ BitVec 32) List!7402))

(declare-fun mapValue!2968 () List!7402)

(assert (=> mapNonEmpty!2966 (= (arr!1263 (_values!1020 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457))))))) (store mapRest!2967 mapKey!2966 mapValue!2968))))

(declare-fun e!433008 () Bool)

(assert (=> b!688997 (= e!433008 (and e!433001 tp!206324))))

(declare-fun b!688998 () Bool)

(declare-fun e!433029 () Bool)

(assert (=> b!688998 (= e!432998 (and e!433008 (inv!9485 (totalInput!1789 cacheFindLongestMatch!59)) e!433029))))

(declare-fun mapNonEmpty!2967 () Bool)

(declare-fun mapRes!2968 () Bool)

(declare-fun tp!206310 () Bool)

(declare-fun tp!206328 () Bool)

(assert (=> mapNonEmpty!2967 (= mapRes!2968 (and tp!206310 tp!206328))))

(declare-fun mapRest!2966 () (Array (_ BitVec 32) List!7397))

(declare-fun mapKey!2967 () (_ BitVec 32))

(declare-fun mapValue!2967 () List!7397)

(assert (=> mapNonEmpty!2967 (= (arr!1261 (_values!1018 (v!17593 (underlying!1661 (v!17594 (underlying!1662 (cache!1098 cacheFindLongestMatch!59))))))) (store mapRest!2966 mapKey!2967 mapValue!2967))))

(declare-fun mapIsEmpty!2966 () Bool)

(assert (=> mapIsEmpty!2966 mapRes!2967))

(declare-fun b!688999 () Bool)

(declare-fun e!433014 () Bool)

(declare-fun e!433009 () Bool)

(assert (=> b!688999 (= e!433014 e!433009)))

(declare-fun b!689000 () Bool)

(declare-fun e!433023 () Bool)

(declare-fun lt!284254 () MutLongMap!741)

(assert (=> b!689000 (= e!433002 (and e!433023 ((_ is LongMap!741) lt!284254)))))

(assert (=> b!689000 (= lt!284254 (v!17598 (underlying!1666 (cache!1100 cacheUp!457))))))

(declare-fun b!689001 () Bool)

(declare-fun e!433016 () Bool)

(declare-fun e!433027 () Bool)

(assert (=> b!689001 (= e!433016 e!433027)))

(declare-fun b!689002 () Bool)

(declare-fun e!433020 () Bool)

(assert (=> b!689002 (= e!433011 e!433020)))

(declare-fun mapIsEmpty!2967 () Bool)

(declare-fun mapRes!2966 () Bool)

(assert (=> mapIsEmpty!2967 mapRes!2966))

(declare-fun b!689003 () Bool)

(declare-fun e!433007 () Bool)

(assert (=> b!689003 (= e!433010 e!433007)))

(declare-fun b!689004 () Bool)

(declare-fun res!312922 () Bool)

(assert (=> b!689004 (=> (not res!312922) (not e!433005))))

(declare-fun lt!284252 () tuple2!7750)

(declare-fun isEmpty!4851 (List!7396) Bool)

(declare-fun list!3115 (BalanceConc!5244) List!7396)

(assert (=> b!689004 (= res!312922 (isEmpty!4851 (list!3115 (_2!4273 lt!284252))))))

(declare-fun e!433003 () Bool)

(assert (=> b!689005 (= e!433007 (and e!433003 tp!206315))))

(declare-fun e!433004 () Bool)

(declare-fun tp!206314 () Bool)

(declare-fun tp!206323 () Bool)

(declare-fun array_inv!922 (array!2795) Bool)

(assert (=> b!689006 (= e!433009 (and tp!206316 tp!206314 tp!206323 (array_inv!920 (_keys!1035 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457))))))) (array_inv!922 (_values!1020 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457))))))) e!433004))))

(declare-fun b!689007 () Bool)

(declare-fun tp!206307 () Bool)

(declare-fun inv!9488 (Conc!2616) Bool)

(assert (=> b!689007 (= e!433018 (and (inv!9488 (c!121420 input!756)) tp!206307))))

(declare-fun b!689008 () Bool)

(declare-fun e!433013 () Bool)

(assert (=> b!689008 (= e!433017 e!433013)))

(declare-fun res!312926 () Bool)

(assert (=> b!689008 (=> (not res!312926) (not e!433013))))

(declare-fun lt!284250 () List!7396)

(declare-fun lt!284251 () List!7396)

(declare-fun ++!1938 (List!7396 List!7396) List!7396)

(assert (=> b!689008 (= res!312926 (= lt!284250 (++!1938 lt!284251 lt!284250)))))

(assert (=> b!689008 (= lt!284250 (list!3115 input!756))))

(assert (=> b!689008 (= lt!284251 (list!3115 (BalanceConc!5245 Empty!2616)))))

(declare-fun b!689009 () Bool)

(declare-fun tp!206332 () Bool)

(assert (=> b!689009 (= e!433012 (and tp!206332 mapRes!2968))))

(declare-fun condMapEmpty!2966 () Bool)

(declare-fun mapDefault!2966 () List!7397)

(assert (=> b!689009 (= condMapEmpty!2966 (= (arr!1261 (_values!1018 (v!17593 (underlying!1661 (v!17594 (underlying!1662 (cache!1098 cacheFindLongestMatch!59))))))) ((as const (Array (_ BitVec 32) List!7397)) mapDefault!2966)))))

(declare-fun b!689010 () Bool)

(declare-fun lt!284255 () MutLongMap!740)

(assert (=> b!689010 (= e!433003 (and e!433016 ((_ is LongMap!740) lt!284255)))))

(assert (=> b!689010 (= lt!284255 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))

(declare-fun mapIsEmpty!2968 () Bool)

(assert (=> mapIsEmpty!2968 mapRes!2968))

(declare-fun b!689011 () Bool)

(declare-fun e!432997 () Bool)

(declare-fun tp!206319 () Bool)

(assert (=> b!689011 (= e!432997 (and tp!206319 mapRes!2966))))

(declare-fun condMapEmpty!2967 () Bool)

(declare-fun mapDefault!2968 () List!7401)

(assert (=> b!689011 (= condMapEmpty!2967 (= (arr!1262 (_values!1019 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))) ((as const (Array (_ BitVec 32) List!7401)) mapDefault!2968)))))

(declare-fun b!689012 () Bool)

(assert (=> b!689012 (= e!433025 e!433026)))

(declare-fun b!689013 () Bool)

(declare-fun e!433006 () Bool)

(declare-fun tp!206321 () Bool)

(assert (=> b!689013 (= e!433019 (and e!433006 tp!206321))))

(declare-fun b!689014 () Bool)

(assert (=> b!689014 (= e!433020 e!433000)))

(declare-fun b!689015 () Bool)

(declare-fun e!433028 () Bool)

(declare-fun tp!206318 () Bool)

(declare-fun inv!9482 (String!9372) Bool)

(declare-fun inv!9489 (TokenValueInjection!2796) Bool)

(assert (=> b!689015 (= e!433006 (and tp!206318 (inv!9482 (tag!1748 (h!12787 rules!1357))) (inv!9489 (transformation!1486 (h!12787 rules!1357))) e!433028))))

(declare-fun b!689016 () Bool)

(declare-fun tp!206333 () Bool)

(assert (=> b!689016 (= e!433029 (and (inv!9488 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))) tp!206333))))

(declare-fun b!689017 () Bool)

(assert (=> b!689017 (= e!433023 e!433014)))

(declare-fun b!689018 () Bool)

(declare-fun e!433015 () Bool)

(assert (=> b!689018 (= e!433027 e!433015)))

(declare-fun b!689019 () Bool)

(declare-fun res!312927 () Bool)

(assert (=> b!689019 (=> (not res!312927) (not e!433017))))

(declare-fun valid!629 (CacheFindLongestMatch!22) Bool)

(assert (=> b!689019 (= res!312927 (valid!629 cacheFindLongestMatch!59))))

(declare-fun b!689020 () Bool)

(declare-fun res!312921 () Bool)

(assert (=> b!689020 (=> (not res!312921) (not e!433017))))

(declare-fun rulesInvariant!1235 (LexerInterface!1301 List!7400) Bool)

(assert (=> b!689020 (= res!312921 (rulesInvariant!1235 thiss!12183 rules!1357))))

(declare-fun b!689021 () Bool)

(declare-fun tp!206308 () Bool)

(assert (=> b!689021 (= e!433004 (and tp!206308 mapRes!2967))))

(declare-fun condMapEmpty!2968 () Bool)

(declare-fun mapDefault!2967 () List!7402)

(assert (=> b!689021 (= condMapEmpty!2968 (= (arr!1263 (_values!1020 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457))))))) ((as const (Array (_ BitVec 32) List!7402)) mapDefault!2967)))))

(declare-fun b!689022 () Bool)

(declare-fun res!312930 () Bool)

(assert (=> b!689022 (=> (not res!312930) (not e!433017))))

(assert (=> b!689022 (= res!312930 (= (totalInput!1789 cacheFindLongestMatch!59) input!756))))

(assert (=> b!689023 (= e!433028 (and tp!206330 tp!206313))))

(declare-fun b!689024 () Bool)

(assert (=> b!689024 (= e!433013 e!433005)))

(declare-fun res!312929 () Bool)

(assert (=> b!689024 (=> (not res!312929) (not e!433005))))

(assert (=> b!689024 (= res!312929 (= (list!3114 (_1!4273 lt!284252)) (list!3114 (BalanceConc!5247 Empty!2617))))))

(assert (=> b!689024 (= lt!284252 (lexRec!152 thiss!12183 rules!1357 (BalanceConc!5245 Empty!2616)))))

(declare-fun mapNonEmpty!2968 () Bool)

(declare-fun tp!206326 () Bool)

(declare-fun tp!206325 () Bool)

(assert (=> mapNonEmpty!2968 (= mapRes!2966 (and tp!206326 tp!206325))))

(declare-fun mapKey!2968 () (_ BitVec 32))

(declare-fun mapValue!2966 () List!7401)

(declare-fun mapRest!2968 () (Array (_ BitVec 32) List!7401))

(assert (=> mapNonEmpty!2968 (= (arr!1262 (_values!1019 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))) (store mapRest!2968 mapKey!2968 mapValue!2966))))

(declare-fun tp!206331 () Bool)

(declare-fun tp!206327 () Bool)

(declare-fun array_inv!923 (array!2793) Bool)

(assert (=> b!689025 (= e!433015 (and tp!206320 tp!206331 tp!206327 (array_inv!920 (_keys!1034 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))) (array_inv!923 (_values!1019 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))) e!432997))))

(assert (= (and start!65916 res!312924) b!688995))

(assert (= (and b!688995 res!312925) b!689020))

(assert (= (and b!689020 res!312921) b!688994))

(assert (= (and b!688994 res!312923) b!688993))

(assert (= (and b!688993 res!312928) b!689019))

(assert (= (and b!689019 res!312927) b!689022))

(assert (= (and b!689022 res!312930) b!689008))

(assert (= (and b!689008 res!312926) b!689024))

(assert (= (and b!689024 res!312929) b!689004))

(assert (= (and b!689004 res!312922) b!688992))

(assert (= (and b!689009 condMapEmpty!2966) mapIsEmpty!2968))

(assert (= (and b!689009 (not condMapEmpty!2966)) mapNonEmpty!2967))

(assert (= b!688990 b!689009))

(assert (= b!689014 b!688990))

(assert (= b!689002 b!689014))

(assert (= (and b!688996 ((_ is LongMap!739) (v!17594 (underlying!1662 (cache!1098 cacheFindLongestMatch!59))))) b!689002))

(assert (= b!688997 b!688996))

(assert (= (and b!688998 ((_ is HashMap!711) (cache!1098 cacheFindLongestMatch!59))) b!688997))

(assert (= b!688998 b!689016))

(assert (= start!65916 b!688998))

(assert (= start!65916 b!689007))

(assert (= (and b!689021 condMapEmpty!2968) mapIsEmpty!2966))

(assert (= (and b!689021 (not condMapEmpty!2968)) mapNonEmpty!2966))

(assert (= b!689006 b!689021))

(assert (= b!688999 b!689006))

(assert (= b!689017 b!688999))

(assert (= (and b!689000 ((_ is LongMap!741) (v!17598 (underlying!1666 (cache!1100 cacheUp!457))))) b!689017))

(assert (= b!688991 b!689000))

(assert (= (and b!689012 ((_ is HashMap!713) (cache!1100 cacheUp!457))) b!688991))

(assert (= start!65916 b!689012))

(assert (= (and b!689011 condMapEmpty!2967) mapIsEmpty!2967))

(assert (= (and b!689011 (not condMapEmpty!2967)) mapNonEmpty!2968))

(assert (= b!689025 b!689011))

(assert (= b!689018 b!689025))

(assert (= b!689001 b!689018))

(assert (= (and b!689010 ((_ is LongMap!740) (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))) b!689001))

(assert (= b!689005 b!689010))

(assert (= (and b!689003 ((_ is HashMap!712) (cache!1099 cacheDown!470))) b!689005))

(assert (= start!65916 b!689003))

(assert (= b!689015 b!689023))

(assert (= b!689013 b!689015))

(assert (= (and start!65916 ((_ is Cons!7386) rules!1357)) b!689013))

(declare-fun m!945508 () Bool)

(assert (=> mapNonEmpty!2967 m!945508))

(declare-fun m!945510 () Bool)

(assert (=> b!688990 m!945510))

(declare-fun m!945512 () Bool)

(assert (=> b!688990 m!945512))

(declare-fun m!945514 () Bool)

(assert (=> b!689019 m!945514))

(declare-fun m!945516 () Bool)

(assert (=> b!689015 m!945516))

(declare-fun m!945518 () Bool)

(assert (=> b!689015 m!945518))

(declare-fun m!945520 () Bool)

(assert (=> b!689008 m!945520))

(declare-fun m!945522 () Bool)

(assert (=> b!689008 m!945522))

(declare-fun m!945524 () Bool)

(assert (=> b!689008 m!945524))

(declare-fun m!945526 () Bool)

(assert (=> b!688998 m!945526))

(declare-fun m!945528 () Bool)

(assert (=> mapNonEmpty!2966 m!945528))

(declare-fun m!945530 () Bool)

(assert (=> b!688992 m!945530))

(declare-fun m!945532 () Bool)

(assert (=> b!688992 m!945532))

(assert (=> b!688992 m!945532))

(declare-fun m!945534 () Bool)

(assert (=> b!688992 m!945534))

(declare-fun m!945536 () Bool)

(assert (=> b!688992 m!945536))

(declare-fun m!945538 () Bool)

(assert (=> b!689006 m!945538))

(declare-fun m!945540 () Bool)

(assert (=> b!689006 m!945540))

(declare-fun m!945542 () Bool)

(assert (=> start!65916 m!945542))

(declare-fun m!945544 () Bool)

(assert (=> start!65916 m!945544))

(declare-fun m!945546 () Bool)

(assert (=> start!65916 m!945546))

(declare-fun m!945548 () Bool)

(assert (=> start!65916 m!945548))

(declare-fun m!945550 () Bool)

(assert (=> b!689007 m!945550))

(declare-fun m!945552 () Bool)

(assert (=> b!688994 m!945552))

(declare-fun m!945554 () Bool)

(assert (=> b!688995 m!945554))

(declare-fun m!945556 () Bool)

(assert (=> b!689024 m!945556))

(declare-fun m!945558 () Bool)

(assert (=> b!689024 m!945558))

(declare-fun m!945560 () Bool)

(assert (=> b!689024 m!945560))

(declare-fun m!945562 () Bool)

(assert (=> b!689016 m!945562))

(declare-fun m!945564 () Bool)

(assert (=> b!689025 m!945564))

(declare-fun m!945566 () Bool)

(assert (=> b!689025 m!945566))

(declare-fun m!945568 () Bool)

(assert (=> b!689004 m!945568))

(assert (=> b!689004 m!945568))

(declare-fun m!945570 () Bool)

(assert (=> b!689004 m!945570))

(declare-fun m!945572 () Bool)

(assert (=> b!689020 m!945572))

(declare-fun m!945574 () Bool)

(assert (=> b!688993 m!945574))

(declare-fun m!945576 () Bool)

(assert (=> mapNonEmpty!2968 m!945576))

(check-sat (not mapNonEmpty!2966) (not b!689009) (not b!689008) b_and!63189 (not b!688998) (not b_next!19463) (not b!689016) b_and!63191 (not b_next!19465) (not b_next!19459) (not b!689015) b_and!63199 b_and!63195 (not b!689020) b_and!63193 (not b!689025) (not b_next!19467) (not mapNonEmpty!2968) (not b!689004) (not b!688992) (not b_next!19461) (not b!689013) (not b!689019) (not b!689011) (not b!689024) (not b_next!19469) b_and!63201 (not b!688995) (not b!688990) b_and!63187 (not b_next!19471) (not start!65916) b_and!63197 (not mapNonEmpty!2967) (not b!688993) (not b!689007) (not b!689006) (not b!689021) (not b_next!19457) (not b!688994))
(check-sat b_and!63195 b_and!63193 (not b_next!19467) (not b_next!19461) b_and!63189 b_and!63197 (not b_next!19463) b_and!63191 (not b_next!19457) (not b_next!19465) (not b_next!19459) b_and!63199 (not b_next!19469) b_and!63201 b_and!63187 (not b_next!19471))
(get-model)

(declare-fun d!232143 () Bool)

(declare-fun res!312933 () Bool)

(declare-fun e!433032 () Bool)

(assert (=> d!232143 (=> (not res!312933) (not e!433032))))

(declare-fun rulesValid!525 (LexerInterface!1301 List!7400) Bool)

(assert (=> d!232143 (= res!312933 (rulesValid!525 thiss!12183 rules!1357))))

(assert (=> d!232143 (= (rulesInvariant!1235 thiss!12183 rules!1357) e!433032)))

(declare-fun b!689028 () Bool)

(declare-datatypes ((List!7403 0))(
  ( (Nil!7389) (Cons!7389 (h!12790 String!9372) (t!87214 List!7403)) )
))
(declare-fun noDuplicateTag!525 (LexerInterface!1301 List!7400 List!7403) Bool)

(assert (=> b!689028 (= e!433032 (noDuplicateTag!525 thiss!12183 rules!1357 Nil!7389))))

(assert (= (and d!232143 res!312933) b!689028))

(declare-fun m!945578 () Bool)

(assert (=> d!232143 m!945578))

(declare-fun m!945580 () Bool)

(assert (=> b!689028 m!945580))

(assert (=> b!689020 d!232143))

(declare-fun d!232145 () Bool)

(declare-fun validCacheMapDown!58 (MutableMap!712) Bool)

(assert (=> d!232145 (= (valid!627 cacheDown!470) (validCacheMapDown!58 (cache!1099 cacheDown!470)))))

(declare-fun bs!136369 () Bool)

(assert (= bs!136369 d!232145))

(declare-fun m!945582 () Bool)

(assert (=> bs!136369 m!945582))

(assert (=> b!688993 d!232145))

(declare-fun d!232147 () Bool)

(declare-fun validCacheMapFindLongestMatch!4 (MutableMap!711 BalanceConc!5244) Bool)

(assert (=> d!232147 (= (valid!629 cacheFindLongestMatch!59) (validCacheMapFindLongestMatch!4 (cache!1098 cacheFindLongestMatch!59) (totalInput!1789 cacheFindLongestMatch!59)))))

(declare-fun bs!136370 () Bool)

(assert (= bs!136370 d!232147))

(declare-fun m!945584 () Bool)

(assert (=> bs!136370 m!945584))

(assert (=> b!689019 d!232147))

(declare-fun d!232149 () Bool)

(declare-fun list!3116 (Conc!2617) List!7399)

(assert (=> d!232149 (= (list!3114 (_1!4273 lt!284253)) (list!3116 (c!121421 (_1!4273 lt!284253))))))

(declare-fun bs!136371 () Bool)

(assert (= bs!136371 d!232149))

(declare-fun m!945586 () Bool)

(assert (=> bs!136371 m!945586))

(assert (=> b!688992 d!232149))

(declare-fun d!232151 () Bool)

(assert (=> d!232151 (= (list!3114 (++!1937 (BalanceConc!5247 Empty!2617) (_1!4273 lt!284253))) (list!3116 (c!121421 (++!1937 (BalanceConc!5247 Empty!2617) (_1!4273 lt!284253)))))))

(declare-fun bs!136372 () Bool)

(assert (= bs!136372 d!232151))

(declare-fun m!945588 () Bool)

(assert (=> bs!136372 m!945588))

(assert (=> b!688992 d!232151))

(declare-fun b!689040 () Bool)

(declare-fun e!433035 () Bool)

(declare-fun lt!284259 () BalanceConc!5246)

(declare-fun ++!1939 (List!7399 List!7399) List!7399)

(assert (=> b!689040 (= e!433035 (= (list!3114 lt!284259) (++!1939 (list!3114 (BalanceConc!5247 Empty!2617)) (list!3114 (_1!4273 lt!284253)))))))

(declare-fun b!689038 () Bool)

(declare-fun res!312943 () Bool)

(assert (=> b!689038 (=> (not res!312943) (not e!433035))))

(declare-fun height!315 (Conc!2617) Int)

(declare-fun ++!1940 (Conc!2617 Conc!2617) Conc!2617)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!689038 (= res!312943 (<= (height!315 (++!1940 (c!121421 (BalanceConc!5247 Empty!2617)) (c!121421 (_1!4273 lt!284253)))) (+ (max!0 (height!315 (c!121421 (BalanceConc!5247 Empty!2617))) (height!315 (c!121421 (_1!4273 lt!284253)))) 1)))))

(declare-fun b!689039 () Bool)

(declare-fun res!312942 () Bool)

(assert (=> b!689039 (=> (not res!312942) (not e!433035))))

(assert (=> b!689039 (= res!312942 (>= (height!315 (++!1940 (c!121421 (BalanceConc!5247 Empty!2617)) (c!121421 (_1!4273 lt!284253)))) (max!0 (height!315 (c!121421 (BalanceConc!5247 Empty!2617))) (height!315 (c!121421 (_1!4273 lt!284253))))))))

(declare-fun d!232153 () Bool)

(assert (=> d!232153 e!433035))

(declare-fun res!312945 () Bool)

(assert (=> d!232153 (=> (not res!312945) (not e!433035))))

(declare-fun appendAssocInst!132 (Conc!2617 Conc!2617) Bool)

(assert (=> d!232153 (= res!312945 (appendAssocInst!132 (c!121421 (BalanceConc!5247 Empty!2617)) (c!121421 (_1!4273 lt!284253))))))

(assert (=> d!232153 (= lt!284259 (BalanceConc!5247 (++!1940 (c!121421 (BalanceConc!5247 Empty!2617)) (c!121421 (_1!4273 lt!284253)))))))

(assert (=> d!232153 (= (++!1937 (BalanceConc!5247 Empty!2617) (_1!4273 lt!284253)) lt!284259)))

(declare-fun b!689037 () Bool)

(declare-fun res!312944 () Bool)

(assert (=> b!689037 (=> (not res!312944) (not e!433035))))

(declare-fun isBalanced!692 (Conc!2617) Bool)

(assert (=> b!689037 (= res!312944 (isBalanced!692 (++!1940 (c!121421 (BalanceConc!5247 Empty!2617)) (c!121421 (_1!4273 lt!284253)))))))

(assert (= (and d!232153 res!312945) b!689037))

(assert (= (and b!689037 res!312944) b!689038))

(assert (= (and b!689038 res!312943) b!689039))

(assert (= (and b!689039 res!312942) b!689040))

(declare-fun m!945590 () Bool)

(assert (=> b!689038 m!945590))

(declare-fun m!945592 () Bool)

(assert (=> b!689038 m!945592))

(declare-fun m!945594 () Bool)

(assert (=> b!689038 m!945594))

(declare-fun m!945596 () Bool)

(assert (=> b!689038 m!945596))

(assert (=> b!689038 m!945592))

(assert (=> b!689038 m!945590))

(assert (=> b!689038 m!945596))

(declare-fun m!945598 () Bool)

(assert (=> b!689038 m!945598))

(declare-fun m!945600 () Bool)

(assert (=> d!232153 m!945600))

(assert (=> d!232153 m!945592))

(assert (=> b!689037 m!945592))

(assert (=> b!689037 m!945592))

(declare-fun m!945602 () Bool)

(assert (=> b!689037 m!945602))

(assert (=> b!689039 m!945590))

(assert (=> b!689039 m!945592))

(assert (=> b!689039 m!945594))

(assert (=> b!689039 m!945596))

(assert (=> b!689039 m!945592))

(assert (=> b!689039 m!945590))

(assert (=> b!689039 m!945596))

(assert (=> b!689039 m!945598))

(declare-fun m!945604 () Bool)

(assert (=> b!689040 m!945604))

(assert (=> b!689040 m!945558))

(assert (=> b!689040 m!945530))

(assert (=> b!689040 m!945558))

(assert (=> b!689040 m!945530))

(declare-fun m!945606 () Bool)

(assert (=> b!689040 m!945606))

(assert (=> b!688992 d!232153))

(declare-fun b!689055 () Bool)

(declare-fun e!433044 () Bool)

(declare-fun lt!284266 () tuple2!7750)

(assert (=> b!689055 (= e!433044 (= (list!3115 (_2!4273 lt!284266)) (list!3115 input!756)))))

(declare-fun b!689056 () Bool)

(declare-fun e!433047 () tuple2!7750)

(assert (=> b!689056 (= e!433047 (tuple2!7751 (BalanceConc!5247 Empty!2617) input!756))))

(declare-fun b!689057 () Bool)

(declare-fun res!312954 () Bool)

(declare-fun e!433046 () Bool)

(assert (=> b!689057 (=> (not res!312954) (not e!433046))))

(declare-datatypes ((tuple2!7758 0))(
  ( (tuple2!7759 (_1!4278 List!7399) (_2!4278 List!7396)) )
))
(declare-fun lexList!321 (LexerInterface!1301 List!7400 List!7396) tuple2!7758)

(assert (=> b!689057 (= res!312954 (= (list!3114 (_1!4273 lt!284266)) (_1!4278 (lexList!321 thiss!12183 rules!1357 (list!3115 input!756)))))))

(declare-fun b!689058 () Bool)

(declare-fun lt!284267 () tuple2!7750)

(declare-datatypes ((tuple2!7760 0))(
  ( (tuple2!7761 (_1!4279 Token!2682) (_2!4279 BalanceConc!5244)) )
))
(declare-datatypes ((Option!1704 0))(
  ( (None!1703) (Some!1703 (v!17599 tuple2!7760)) )
))
(declare-fun lt!284268 () Option!1704)

(declare-fun prepend!255 (BalanceConc!5246 Token!2682) BalanceConc!5246)

(assert (=> b!689058 (= e!433047 (tuple2!7751 (prepend!255 (_1!4273 lt!284267) (_1!4279 (v!17599 lt!284268))) (_2!4273 lt!284267)))))

(assert (=> b!689058 (= lt!284267 (lexRec!152 thiss!12183 rules!1357 (_2!4279 (v!17599 lt!284268))))))

(declare-fun b!689059 () Bool)

(assert (=> b!689059 (= e!433046 (= (list!3115 (_2!4273 lt!284266)) (_2!4278 (lexList!321 thiss!12183 rules!1357 (list!3115 input!756)))))))

(declare-fun d!232155 () Bool)

(assert (=> d!232155 e!433046))

(declare-fun res!312952 () Bool)

(assert (=> d!232155 (=> (not res!312952) (not e!433046))))

(assert (=> d!232155 (= res!312952 e!433044)))

(declare-fun c!121430 () Bool)

(declare-fun size!6065 (BalanceConc!5246) Int)

(assert (=> d!232155 (= c!121430 (> (size!6065 (_1!4273 lt!284266)) 0))))

(assert (=> d!232155 (= lt!284266 e!433047)))

(declare-fun c!121431 () Bool)

(assert (=> d!232155 (= c!121431 ((_ is Some!1703) lt!284268))))

(declare-fun maxPrefixZipperSequence!455 (LexerInterface!1301 List!7400 BalanceConc!5244) Option!1704)

(assert (=> d!232155 (= lt!284268 (maxPrefixZipperSequence!455 thiss!12183 rules!1357 input!756))))

(assert (=> d!232155 (= (lexRec!152 thiss!12183 rules!1357 input!756) lt!284266)))

(declare-fun b!689060 () Bool)

(declare-fun e!433045 () Bool)

(assert (=> b!689060 (= e!433044 e!433045)))

(declare-fun res!312953 () Bool)

(declare-fun size!6066 (BalanceConc!5244) Int)

(assert (=> b!689060 (= res!312953 (< (size!6066 (_2!4273 lt!284266)) (size!6066 input!756)))))

(assert (=> b!689060 (=> (not res!312953) (not e!433045))))

(declare-fun b!689061 () Bool)

(declare-fun isEmpty!4852 (BalanceConc!5246) Bool)

(assert (=> b!689061 (= e!433045 (not (isEmpty!4852 (_1!4273 lt!284266))))))

(assert (= (and d!232155 c!121431) b!689058))

(assert (= (and d!232155 (not c!121431)) b!689056))

(assert (= (and d!232155 c!121430) b!689060))

(assert (= (and d!232155 (not c!121430)) b!689055))

(assert (= (and b!689060 res!312953) b!689061))

(assert (= (and d!232155 res!312952) b!689057))

(assert (= (and b!689057 res!312954) b!689059))

(declare-fun m!945608 () Bool)

(assert (=> b!689059 m!945608))

(assert (=> b!689059 m!945522))

(assert (=> b!689059 m!945522))

(declare-fun m!945610 () Bool)

(assert (=> b!689059 m!945610))

(assert (=> b!689055 m!945608))

(assert (=> b!689055 m!945522))

(declare-fun m!945612 () Bool)

(assert (=> b!689061 m!945612))

(declare-fun m!945614 () Bool)

(assert (=> b!689057 m!945614))

(assert (=> b!689057 m!945522))

(assert (=> b!689057 m!945522))

(assert (=> b!689057 m!945610))

(declare-fun m!945616 () Bool)

(assert (=> b!689058 m!945616))

(declare-fun m!945618 () Bool)

(assert (=> b!689058 m!945618))

(declare-fun m!945620 () Bool)

(assert (=> d!232155 m!945620))

(declare-fun m!945622 () Bool)

(assert (=> d!232155 m!945622))

(declare-fun m!945624 () Bool)

(assert (=> b!689060 m!945624))

(declare-fun m!945626 () Bool)

(assert (=> b!689060 m!945626))

(assert (=> b!688992 d!232155))

(declare-fun d!232157 () Bool)

(declare-fun validCacheMapUp!58 (MutableMap!713) Bool)

(assert (=> d!232157 (= (valid!628 cacheUp!457) (validCacheMapUp!58 (cache!1100 cacheUp!457)))))

(declare-fun bs!136373 () Bool)

(assert (= bs!136373 d!232157))

(declare-fun m!945628 () Bool)

(assert (=> bs!136373 m!945628))

(assert (=> b!688994 d!232157))

(declare-fun d!232159 () Bool)

(assert (=> d!232159 (= (isEmpty!4850 rules!1357) ((_ is Nil!7386) rules!1357))))

(assert (=> b!688995 d!232159))

(declare-fun d!232161 () Bool)

(assert (=> d!232161 (= (list!3114 (_1!4273 lt!284252)) (list!3116 (c!121421 (_1!4273 lt!284252))))))

(declare-fun bs!136374 () Bool)

(assert (= bs!136374 d!232161))

(declare-fun m!945630 () Bool)

(assert (=> bs!136374 m!945630))

(assert (=> b!689024 d!232161))

(declare-fun d!232163 () Bool)

(assert (=> d!232163 (= (list!3114 (BalanceConc!5247 Empty!2617)) (list!3116 (c!121421 (BalanceConc!5247 Empty!2617))))))

(declare-fun bs!136375 () Bool)

(assert (= bs!136375 d!232163))

(declare-fun m!945632 () Bool)

(assert (=> bs!136375 m!945632))

(assert (=> b!689024 d!232163))

(declare-fun b!689062 () Bool)

(declare-fun e!433048 () Bool)

(declare-fun lt!284269 () tuple2!7750)

(assert (=> b!689062 (= e!433048 (= (list!3115 (_2!4273 lt!284269)) (list!3115 (BalanceConc!5245 Empty!2616))))))

(declare-fun b!689063 () Bool)

(declare-fun e!433051 () tuple2!7750)

(assert (=> b!689063 (= e!433051 (tuple2!7751 (BalanceConc!5247 Empty!2617) (BalanceConc!5245 Empty!2616)))))

(declare-fun b!689064 () Bool)

(declare-fun res!312957 () Bool)

(declare-fun e!433050 () Bool)

(assert (=> b!689064 (=> (not res!312957) (not e!433050))))

(assert (=> b!689064 (= res!312957 (= (list!3114 (_1!4273 lt!284269)) (_1!4278 (lexList!321 thiss!12183 rules!1357 (list!3115 (BalanceConc!5245 Empty!2616))))))))

(declare-fun b!689065 () Bool)

(declare-fun lt!284270 () tuple2!7750)

(declare-fun lt!284271 () Option!1704)

(assert (=> b!689065 (= e!433051 (tuple2!7751 (prepend!255 (_1!4273 lt!284270) (_1!4279 (v!17599 lt!284271))) (_2!4273 lt!284270)))))

(assert (=> b!689065 (= lt!284270 (lexRec!152 thiss!12183 rules!1357 (_2!4279 (v!17599 lt!284271))))))

(declare-fun b!689066 () Bool)

(assert (=> b!689066 (= e!433050 (= (list!3115 (_2!4273 lt!284269)) (_2!4278 (lexList!321 thiss!12183 rules!1357 (list!3115 (BalanceConc!5245 Empty!2616))))))))

(declare-fun d!232165 () Bool)

(assert (=> d!232165 e!433050))

(declare-fun res!312955 () Bool)

(assert (=> d!232165 (=> (not res!312955) (not e!433050))))

(assert (=> d!232165 (= res!312955 e!433048)))

(declare-fun c!121432 () Bool)

(assert (=> d!232165 (= c!121432 (> (size!6065 (_1!4273 lt!284269)) 0))))

(assert (=> d!232165 (= lt!284269 e!433051)))

(declare-fun c!121433 () Bool)

(assert (=> d!232165 (= c!121433 ((_ is Some!1703) lt!284271))))

(assert (=> d!232165 (= lt!284271 (maxPrefixZipperSequence!455 thiss!12183 rules!1357 (BalanceConc!5245 Empty!2616)))))

(assert (=> d!232165 (= (lexRec!152 thiss!12183 rules!1357 (BalanceConc!5245 Empty!2616)) lt!284269)))

(declare-fun b!689067 () Bool)

(declare-fun e!433049 () Bool)

(assert (=> b!689067 (= e!433048 e!433049)))

(declare-fun res!312956 () Bool)

(assert (=> b!689067 (= res!312956 (< (size!6066 (_2!4273 lt!284269)) (size!6066 (BalanceConc!5245 Empty!2616))))))

(assert (=> b!689067 (=> (not res!312956) (not e!433049))))

(declare-fun b!689068 () Bool)

(assert (=> b!689068 (= e!433049 (not (isEmpty!4852 (_1!4273 lt!284269))))))

(assert (= (and d!232165 c!121433) b!689065))

(assert (= (and d!232165 (not c!121433)) b!689063))

(assert (= (and d!232165 c!121432) b!689067))

(assert (= (and d!232165 (not c!121432)) b!689062))

(assert (= (and b!689067 res!312956) b!689068))

(assert (= (and d!232165 res!312955) b!689064))

(assert (= (and b!689064 res!312957) b!689066))

(declare-fun m!945634 () Bool)

(assert (=> b!689066 m!945634))

(assert (=> b!689066 m!945524))

(assert (=> b!689066 m!945524))

(declare-fun m!945636 () Bool)

(assert (=> b!689066 m!945636))

(assert (=> b!689062 m!945634))

(assert (=> b!689062 m!945524))

(declare-fun m!945638 () Bool)

(assert (=> b!689068 m!945638))

(declare-fun m!945640 () Bool)

(assert (=> b!689064 m!945640))

(assert (=> b!689064 m!945524))

(assert (=> b!689064 m!945524))

(assert (=> b!689064 m!945636))

(declare-fun m!945642 () Bool)

(assert (=> b!689065 m!945642))

(declare-fun m!945644 () Bool)

(assert (=> b!689065 m!945644))

(declare-fun m!945646 () Bool)

(assert (=> d!232165 m!945646))

(declare-fun m!945648 () Bool)

(assert (=> d!232165 m!945648))

(declare-fun m!945650 () Bool)

(assert (=> b!689067 m!945650))

(declare-fun m!945652 () Bool)

(assert (=> b!689067 m!945652))

(assert (=> b!689024 d!232165))

(declare-fun d!232167 () Bool)

(declare-fun res!312960 () Bool)

(declare-fun e!433054 () Bool)

(assert (=> d!232167 (=> (not res!312960) (not e!433054))))

(assert (=> d!232167 (= res!312960 ((_ is HashMap!711) (cache!1098 cacheFindLongestMatch!59)))))

(assert (=> d!232167 (= (inv!9484 cacheFindLongestMatch!59) e!433054)))

(declare-fun b!689071 () Bool)

(assert (=> b!689071 (= e!433054 (validCacheMapFindLongestMatch!4 (cache!1098 cacheFindLongestMatch!59) (totalInput!1789 cacheFindLongestMatch!59)))))

(assert (= (and d!232167 res!312960) b!689071))

(assert (=> b!689071 m!945584))

(assert (=> start!65916 d!232167))

(declare-fun d!232169 () Bool)

(declare-fun isBalanced!693 (Conc!2616) Bool)

(assert (=> d!232169 (= (inv!9485 input!756) (isBalanced!693 (c!121420 input!756)))))

(declare-fun bs!136376 () Bool)

(assert (= bs!136376 d!232169))

(declare-fun m!945654 () Bool)

(assert (=> bs!136376 m!945654))

(assert (=> start!65916 d!232169))

(declare-fun d!232171 () Bool)

(declare-fun res!312963 () Bool)

(declare-fun e!433057 () Bool)

(assert (=> d!232171 (=> (not res!312963) (not e!433057))))

(assert (=> d!232171 (= res!312963 ((_ is HashMap!713) (cache!1100 cacheUp!457)))))

(assert (=> d!232171 (= (inv!9486 cacheUp!457) e!433057)))

(declare-fun b!689074 () Bool)

(assert (=> b!689074 (= e!433057 (validCacheMapUp!58 (cache!1100 cacheUp!457)))))

(assert (= (and d!232171 res!312963) b!689074))

(assert (=> b!689074 m!945628))

(assert (=> start!65916 d!232171))

(declare-fun d!232173 () Bool)

(declare-fun res!312966 () Bool)

(declare-fun e!433060 () Bool)

(assert (=> d!232173 (=> (not res!312966) (not e!433060))))

(assert (=> d!232173 (= res!312966 ((_ is HashMap!712) (cache!1099 cacheDown!470)))))

(assert (=> d!232173 (= (inv!9487 cacheDown!470) e!433060)))

(declare-fun b!689077 () Bool)

(assert (=> b!689077 (= e!433060 (validCacheMapDown!58 (cache!1099 cacheDown!470)))))

(assert (= (and d!232173 res!312966) b!689077))

(assert (=> b!689077 m!945582))

(assert (=> start!65916 d!232173))

(declare-fun d!232175 () Bool)

(assert (=> d!232175 (= (isEmpty!4851 (list!3115 (_2!4273 lt!284252))) ((_ is Nil!7382) (list!3115 (_2!4273 lt!284252))))))

(assert (=> b!689004 d!232175))

(declare-fun d!232177 () Bool)

(declare-fun list!3117 (Conc!2616) List!7396)

(assert (=> d!232177 (= (list!3115 (_2!4273 lt!284252)) (list!3117 (c!121420 (_2!4273 lt!284252))))))

(declare-fun bs!136377 () Bool)

(assert (= bs!136377 d!232177))

(declare-fun m!945656 () Bool)

(assert (=> bs!136377 m!945656))

(assert (=> b!689004 d!232177))

(declare-fun d!232179 () Bool)

(assert (=> d!232179 (= (array_inv!920 (_keys!1035 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457))))))) (bvsge (size!6060 (_keys!1035 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457))))))) #b00000000000000000000000000000000))))

(assert (=> b!689006 d!232179))

(declare-fun d!232181 () Bool)

(assert (=> d!232181 (= (array_inv!922 (_values!1020 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457))))))) (bvsge (size!6064 (_values!1020 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457))))))) #b00000000000000000000000000000000))))

(assert (=> b!689006 d!232181))

(declare-fun d!232183 () Bool)

(declare-fun c!121436 () Bool)

(assert (=> d!232183 (= c!121436 ((_ is Node!2616) (c!121420 (totalInput!1789 cacheFindLongestMatch!59))))))

(declare-fun e!433065 () Bool)

(assert (=> d!232183 (= (inv!9488 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))) e!433065)))

(declare-fun b!689084 () Bool)

(declare-fun inv!9490 (Conc!2616) Bool)

(assert (=> b!689084 (= e!433065 (inv!9490 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))))))

(declare-fun b!689085 () Bool)

(declare-fun e!433066 () Bool)

(assert (=> b!689085 (= e!433065 e!433066)))

(declare-fun res!312969 () Bool)

(assert (=> b!689085 (= res!312969 (not ((_ is Leaf!3881) (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))))))

(assert (=> b!689085 (=> res!312969 e!433066)))

(declare-fun b!689086 () Bool)

(declare-fun inv!9491 (Conc!2616) Bool)

(assert (=> b!689086 (= e!433066 (inv!9491 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))))))

(assert (= (and d!232183 c!121436) b!689084))

(assert (= (and d!232183 (not c!121436)) b!689085))

(assert (= (and b!689085 (not res!312969)) b!689086))

(declare-fun m!945658 () Bool)

(assert (=> b!689084 m!945658))

(declare-fun m!945660 () Bool)

(assert (=> b!689086 m!945660))

(assert (=> b!689016 d!232183))

(declare-fun d!232185 () Bool)

(assert (=> d!232185 (= (inv!9482 (tag!1748 (h!12787 rules!1357))) (= (mod (str.len (value!48017 (tag!1748 (h!12787 rules!1357)))) 2) 0))))

(assert (=> b!689015 d!232185))

(declare-fun d!232187 () Bool)

(declare-fun res!312972 () Bool)

(declare-fun e!433069 () Bool)

(assert (=> d!232187 (=> (not res!312972) (not e!433069))))

(declare-fun semiInverseModEq!568 (Int Int) Bool)

(assert (=> d!232187 (= res!312972 (semiInverseModEq!568 (toChars!2303 (transformation!1486 (h!12787 rules!1357))) (toValue!2444 (transformation!1486 (h!12787 rules!1357)))))))

(assert (=> d!232187 (= (inv!9489 (transformation!1486 (h!12787 rules!1357))) e!433069)))

(declare-fun b!689089 () Bool)

(declare-fun equivClasses!543 (Int Int) Bool)

(assert (=> b!689089 (= e!433069 (equivClasses!543 (toChars!2303 (transformation!1486 (h!12787 rules!1357))) (toValue!2444 (transformation!1486 (h!12787 rules!1357)))))))

(assert (= (and d!232187 res!312972) b!689089))

(declare-fun m!945662 () Bool)

(assert (=> d!232187 m!945662))

(declare-fun m!945664 () Bool)

(assert (=> b!689089 m!945664))

(assert (=> b!689015 d!232187))

(declare-fun d!232189 () Bool)

(assert (=> d!232189 (= (array_inv!920 (_keys!1034 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))) (bvsge (size!6060 (_keys!1034 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!689025 d!232189))

(declare-fun d!232191 () Bool)

(assert (=> d!232191 (= (array_inv!923 (_values!1019 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))) (bvsge (size!6063 (_values!1019 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!689025 d!232191))

(declare-fun d!232193 () Bool)

(assert (=> d!232193 (= (inv!9485 (totalInput!1789 cacheFindLongestMatch!59)) (isBalanced!693 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))))))

(declare-fun bs!136378 () Bool)

(assert (= bs!136378 d!232193))

(declare-fun m!945666 () Bool)

(assert (=> bs!136378 m!945666))

(assert (=> b!688998 d!232193))

(declare-fun d!232195 () Bool)

(assert (=> d!232195 (= (array_inv!920 (_keys!1033 (v!17593 (underlying!1661 (v!17594 (underlying!1662 (cache!1098 cacheFindLongestMatch!59))))))) (bvsge (size!6060 (_keys!1033 (v!17593 (underlying!1661 (v!17594 (underlying!1662 (cache!1098 cacheFindLongestMatch!59))))))) #b00000000000000000000000000000000))))

(assert (=> b!688990 d!232195))

(declare-fun d!232197 () Bool)

(assert (=> d!232197 (= (array_inv!921 (_values!1018 (v!17593 (underlying!1661 (v!17594 (underlying!1662 (cache!1098 cacheFindLongestMatch!59))))))) (bvsge (size!6061 (_values!1018 (v!17593 (underlying!1661 (v!17594 (underlying!1662 (cache!1098 cacheFindLongestMatch!59))))))) #b00000000000000000000000000000000))))

(assert (=> b!688990 d!232197))

(declare-fun d!232199 () Bool)

(declare-fun c!121437 () Bool)

(assert (=> d!232199 (= c!121437 ((_ is Node!2616) (c!121420 input!756)))))

(declare-fun e!433070 () Bool)

(assert (=> d!232199 (= (inv!9488 (c!121420 input!756)) e!433070)))

(declare-fun b!689090 () Bool)

(assert (=> b!689090 (= e!433070 (inv!9490 (c!121420 input!756)))))

(declare-fun b!689091 () Bool)

(declare-fun e!433071 () Bool)

(assert (=> b!689091 (= e!433070 e!433071)))

(declare-fun res!312973 () Bool)

(assert (=> b!689091 (= res!312973 (not ((_ is Leaf!3881) (c!121420 input!756))))))

(assert (=> b!689091 (=> res!312973 e!433071)))

(declare-fun b!689092 () Bool)

(assert (=> b!689092 (= e!433071 (inv!9491 (c!121420 input!756)))))

(assert (= (and d!232199 c!121437) b!689090))

(assert (= (and d!232199 (not c!121437)) b!689091))

(assert (= (and b!689091 (not res!312973)) b!689092))

(declare-fun m!945668 () Bool)

(assert (=> b!689090 m!945668))

(declare-fun m!945670 () Bool)

(assert (=> b!689092 m!945670))

(assert (=> b!689007 d!232199))

(declare-fun b!689101 () Bool)

(declare-fun e!433076 () List!7396)

(assert (=> b!689101 (= e!433076 lt!284250)))

(declare-fun b!689103 () Bool)

(declare-fun res!312979 () Bool)

(declare-fun e!433077 () Bool)

(assert (=> b!689103 (=> (not res!312979) (not e!433077))))

(declare-fun lt!284274 () List!7396)

(declare-fun size!6067 (List!7396) Int)

(assert (=> b!689103 (= res!312979 (= (size!6067 lt!284274) (+ (size!6067 lt!284251) (size!6067 lt!284250))))))

(declare-fun d!232201 () Bool)

(assert (=> d!232201 e!433077))

(declare-fun res!312978 () Bool)

(assert (=> d!232201 (=> (not res!312978) (not e!433077))))

(declare-fun content!1184 (List!7396) (InoxSet C!4248))

(assert (=> d!232201 (= res!312978 (= (content!1184 lt!284274) ((_ map or) (content!1184 lt!284251) (content!1184 lt!284250))))))

(assert (=> d!232201 (= lt!284274 e!433076)))

(declare-fun c!121440 () Bool)

(assert (=> d!232201 (= c!121440 ((_ is Nil!7382) lt!284251))))

(assert (=> d!232201 (= (++!1938 lt!284251 lt!284250) lt!284274)))

(declare-fun b!689102 () Bool)

(assert (=> b!689102 (= e!433076 (Cons!7382 (h!12783 lt!284251) (++!1938 (t!87207 lt!284251) lt!284250)))))

(declare-fun b!689104 () Bool)

(assert (=> b!689104 (= e!433077 (or (not (= lt!284250 Nil!7382)) (= lt!284274 lt!284251)))))

(assert (= (and d!232201 c!121440) b!689101))

(assert (= (and d!232201 (not c!121440)) b!689102))

(assert (= (and d!232201 res!312978) b!689103))

(assert (= (and b!689103 res!312979) b!689104))

(declare-fun m!945672 () Bool)

(assert (=> b!689103 m!945672))

(declare-fun m!945674 () Bool)

(assert (=> b!689103 m!945674))

(declare-fun m!945676 () Bool)

(assert (=> b!689103 m!945676))

(declare-fun m!945678 () Bool)

(assert (=> d!232201 m!945678))

(declare-fun m!945680 () Bool)

(assert (=> d!232201 m!945680))

(declare-fun m!945682 () Bool)

(assert (=> d!232201 m!945682))

(declare-fun m!945684 () Bool)

(assert (=> b!689102 m!945684))

(assert (=> b!689008 d!232201))

(declare-fun d!232203 () Bool)

(assert (=> d!232203 (= (list!3115 input!756) (list!3117 (c!121420 input!756)))))

(declare-fun bs!136379 () Bool)

(assert (= bs!136379 d!232203))

(declare-fun m!945686 () Bool)

(assert (=> bs!136379 m!945686))

(assert (=> b!689008 d!232203))

(declare-fun d!232205 () Bool)

(assert (=> d!232205 (= (list!3115 (BalanceConc!5245 Empty!2616)) (list!3117 (c!121420 (BalanceConc!5245 Empty!2616))))))

(declare-fun bs!136380 () Bool)

(assert (= bs!136380 d!232205))

(declare-fun m!945688 () Bool)

(assert (=> bs!136380 m!945688))

(assert (=> b!689008 d!232205))

(declare-fun setElem!3611 () Context!466)

(declare-fun e!433085 () Bool)

(declare-fun tp!206344 () Bool)

(declare-fun setNonEmpty!3611 () Bool)

(declare-fun setRes!3611 () Bool)

(declare-fun inv!9492 (Context!466) Bool)

(assert (=> setNonEmpty!3611 (= setRes!3611 (and tp!206344 (inv!9492 setElem!3611) e!433085))))

(declare-fun setRest!3611 () (InoxSet Context!466))

(assert (=> setNonEmpty!3611 (= (_2!4277 (h!12789 mapDefault!2967)) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3611 true) setRest!3611))))

(declare-fun setIsEmpty!3611 () Bool)

(assert (=> setIsEmpty!3611 setRes!3611))

(declare-fun e!433086 () Bool)

(assert (=> b!689021 (= tp!206308 e!433086)))

(declare-fun tp!206345 () Bool)

(declare-fun tp_is_empty!3641 () Bool)

(declare-fun b!689113 () Bool)

(declare-fun e!433084 () Bool)

(assert (=> b!689113 (= e!433086 (and (inv!9492 (_1!4276 (_1!4277 (h!12789 mapDefault!2967)))) e!433084 tp_is_empty!3641 setRes!3611 tp!206345))))

(declare-fun condSetEmpty!3611 () Bool)

(assert (=> b!689113 (= condSetEmpty!3611 (= (_2!4277 (h!12789 mapDefault!2967)) ((as const (Array Context!466 Bool)) false)))))

(declare-fun b!689114 () Bool)

(declare-fun tp!206343 () Bool)

(assert (=> b!689114 (= e!433085 tp!206343)))

(declare-fun b!689115 () Bool)

(declare-fun tp!206342 () Bool)

(assert (=> b!689115 (= e!433084 tp!206342)))

(assert (= b!689113 b!689115))

(assert (= (and b!689113 condSetEmpty!3611) setIsEmpty!3611))

(assert (= (and b!689113 (not condSetEmpty!3611)) setNonEmpty!3611))

(assert (= setNonEmpty!3611 b!689114))

(assert (= (and b!689021 ((_ is Cons!7388) mapDefault!2967)) b!689113))

(declare-fun m!945690 () Bool)

(assert (=> setNonEmpty!3611 m!945690))

(declare-fun m!945692 () Bool)

(assert (=> b!689113 m!945692))

(declare-fun tp!206360 () Bool)

(declare-fun setNonEmpty!3614 () Bool)

(declare-fun setRes!3614 () Bool)

(declare-fun setElem!3614 () Context!466)

(declare-fun e!433093 () Bool)

(assert (=> setNonEmpty!3614 (= setRes!3614 (and tp!206360 (inv!9492 setElem!3614) e!433093))))

(declare-fun setRest!3614 () (InoxSet Context!466))

(assert (=> setNonEmpty!3614 (= (_2!4275 (h!12788 mapDefault!2968)) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3614 true) setRest!3614))))

(declare-fun b!689124 () Bool)

(declare-fun e!433094 () Bool)

(declare-fun tp!206359 () Bool)

(assert (=> b!689124 (= e!433094 tp!206359)))

(declare-fun b!689125 () Bool)

(declare-fun tp!206357 () Bool)

(assert (=> b!689125 (= e!433093 tp!206357)))

(declare-fun e!433095 () Bool)

(assert (=> b!689011 (= tp!206319 e!433095)))

(declare-fun setIsEmpty!3614 () Bool)

(assert (=> setIsEmpty!3614 setRes!3614))

(declare-fun tp!206358 () Bool)

(declare-fun tp!206356 () Bool)

(declare-fun b!689126 () Bool)

(assert (=> b!689126 (= e!433095 (and tp!206356 (inv!9492 (_2!4274 (_1!4275 (h!12788 mapDefault!2968)))) e!433094 tp_is_empty!3641 setRes!3614 tp!206358))))

(declare-fun condSetEmpty!3614 () Bool)

(assert (=> b!689126 (= condSetEmpty!3614 (= (_2!4275 (h!12788 mapDefault!2968)) ((as const (Array Context!466 Bool)) false)))))

(assert (= b!689126 b!689124))

(assert (= (and b!689126 condSetEmpty!3614) setIsEmpty!3614))

(assert (= (and b!689126 (not condSetEmpty!3614)) setNonEmpty!3614))

(assert (= setNonEmpty!3614 b!689125))

(assert (= (and b!689011 ((_ is Cons!7387) mapDefault!2968)) b!689126))

(declare-fun m!945694 () Bool)

(assert (=> setNonEmpty!3614 m!945694))

(declare-fun m!945696 () Bool)

(assert (=> b!689126 m!945696))

(declare-fun b!689137 () Bool)

(declare-fun b_free!19409 () Bool)

(declare-fun b_next!19473 () Bool)

(assert (=> b!689137 (= b_free!19409 (not b_next!19473))))

(declare-fun tp!206369 () Bool)

(declare-fun b_and!63203 () Bool)

(assert (=> b!689137 (= tp!206369 b_and!63203)))

(declare-fun b_free!19411 () Bool)

(declare-fun b_next!19475 () Bool)

(assert (=> b!689137 (= b_free!19411 (not b_next!19475))))

(declare-fun tp!206371 () Bool)

(declare-fun b_and!63205 () Bool)

(assert (=> b!689137 (= tp!206371 b_and!63205)))

(declare-fun e!433105 () Bool)

(assert (=> b!689137 (= e!433105 (and tp!206369 tp!206371))))

(declare-fun b!689136 () Bool)

(declare-fun e!433106 () Bool)

(declare-fun tp!206372 () Bool)

(assert (=> b!689136 (= e!433106 (and tp!206372 (inv!9482 (tag!1748 (h!12787 (t!87211 rules!1357)))) (inv!9489 (transformation!1486 (h!12787 (t!87211 rules!1357)))) e!433105))))

(declare-fun b!689135 () Bool)

(declare-fun e!433104 () Bool)

(declare-fun tp!206370 () Bool)

(assert (=> b!689135 (= e!433104 (and e!433106 tp!206370))))

(assert (=> b!689013 (= tp!206321 e!433104)))

(assert (= b!689136 b!689137))

(assert (= b!689135 b!689136))

(assert (= (and b!689013 ((_ is Cons!7386) (t!87211 rules!1357))) b!689135))

(declare-fun m!945698 () Bool)

(assert (=> b!689136 m!945698))

(declare-fun m!945700 () Bool)

(assert (=> b!689136 m!945700))

(declare-fun b!689152 () Bool)

(declare-fun e!433120 () Bool)

(declare-fun tp!206394 () Bool)

(assert (=> b!689152 (= e!433120 tp!206394)))

(declare-fun setElem!3619 () Context!466)

(declare-fun setNonEmpty!3619 () Bool)

(declare-fun e!433121 () Bool)

(declare-fun tp!206391 () Bool)

(declare-fun setRes!3619 () Bool)

(assert (=> setNonEmpty!3619 (= setRes!3619 (and tp!206391 (inv!9492 setElem!3619) e!433121))))

(declare-fun mapValue!2971 () List!7402)

(declare-fun setRest!3620 () (InoxSet Context!466))

(assert (=> setNonEmpty!3619 (= (_2!4277 (h!12789 mapValue!2971)) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3619 true) setRest!3620))))

(declare-fun tp!206399 () Bool)

(declare-fun e!433123 () Bool)

(declare-fun e!433125 () Bool)

(declare-fun b!689153 () Bool)

(assert (=> b!689153 (= e!433125 (and (inv!9492 (_1!4276 (_1!4277 (h!12789 mapValue!2971)))) e!433123 tp_is_empty!3641 setRes!3619 tp!206399))))

(declare-fun condSetEmpty!3620 () Bool)

(assert (=> b!689153 (= condSetEmpty!3620 (= (_2!4277 (h!12789 mapValue!2971)) ((as const (Array Context!466 Bool)) false)))))

(declare-fun setIsEmpty!3619 () Bool)

(assert (=> setIsEmpty!3619 setRes!3619))

(declare-fun tp!206395 () Bool)

(declare-fun e!433122 () Bool)

(declare-fun setRes!3620 () Bool)

(declare-fun mapDefault!2971 () List!7402)

(declare-fun b!689154 () Bool)

(declare-fun e!433124 () Bool)

(assert (=> b!689154 (= e!433124 (and (inv!9492 (_1!4276 (_1!4277 (h!12789 mapDefault!2971)))) e!433122 tp_is_empty!3641 setRes!3620 tp!206395))))

(declare-fun condSetEmpty!3619 () Bool)

(assert (=> b!689154 (= condSetEmpty!3619 (= (_2!4277 (h!12789 mapDefault!2971)) ((as const (Array Context!466 Bool)) false)))))

(declare-fun b!689155 () Bool)

(declare-fun tp!206393 () Bool)

(assert (=> b!689155 (= e!433123 tp!206393)))

(declare-fun mapNonEmpty!2971 () Bool)

(declare-fun mapRes!2971 () Bool)

(declare-fun tp!206396 () Bool)

(assert (=> mapNonEmpty!2971 (= mapRes!2971 (and tp!206396 e!433125))))

(declare-fun mapKey!2971 () (_ BitVec 32))

(declare-fun mapRest!2971 () (Array (_ BitVec 32) List!7402))

(assert (=> mapNonEmpty!2971 (= mapRest!2967 (store mapRest!2971 mapKey!2971 mapValue!2971))))

(declare-fun setIsEmpty!3620 () Bool)

(assert (=> setIsEmpty!3620 setRes!3620))

(declare-fun condMapEmpty!2971 () Bool)

(assert (=> mapNonEmpty!2966 (= condMapEmpty!2971 (= mapRest!2967 ((as const (Array (_ BitVec 32) List!7402)) mapDefault!2971)))))

(assert (=> mapNonEmpty!2966 (= tp!206322 (and e!433124 mapRes!2971))))

(declare-fun b!689156 () Bool)

(declare-fun tp!206398 () Bool)

(assert (=> b!689156 (= e!433121 tp!206398)))

(declare-fun mapIsEmpty!2971 () Bool)

(assert (=> mapIsEmpty!2971 mapRes!2971))

(declare-fun b!689157 () Bool)

(declare-fun tp!206392 () Bool)

(assert (=> b!689157 (= e!433122 tp!206392)))

(declare-fun setNonEmpty!3620 () Bool)

(declare-fun tp!206397 () Bool)

(declare-fun setElem!3620 () Context!466)

(assert (=> setNonEmpty!3620 (= setRes!3620 (and tp!206397 (inv!9492 setElem!3620) e!433120))))

(declare-fun setRest!3619 () (InoxSet Context!466))

(assert (=> setNonEmpty!3620 (= (_2!4277 (h!12789 mapDefault!2971)) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3620 true) setRest!3619))))

(assert (= (and mapNonEmpty!2966 condMapEmpty!2971) mapIsEmpty!2971))

(assert (= (and mapNonEmpty!2966 (not condMapEmpty!2971)) mapNonEmpty!2971))

(assert (= b!689153 b!689155))

(assert (= (and b!689153 condSetEmpty!3620) setIsEmpty!3619))

(assert (= (and b!689153 (not condSetEmpty!3620)) setNonEmpty!3619))

(assert (= setNonEmpty!3619 b!689156))

(assert (= (and mapNonEmpty!2971 ((_ is Cons!7388) mapValue!2971)) b!689153))

(assert (= b!689154 b!689157))

(assert (= (and b!689154 condSetEmpty!3619) setIsEmpty!3620))

(assert (= (and b!689154 (not condSetEmpty!3619)) setNonEmpty!3620))

(assert (= setNonEmpty!3620 b!689152))

(assert (= (and mapNonEmpty!2966 ((_ is Cons!7388) mapDefault!2971)) b!689154))

(declare-fun m!945702 () Bool)

(assert (=> mapNonEmpty!2971 m!945702))

(declare-fun m!945704 () Bool)

(assert (=> setNonEmpty!3620 m!945704))

(declare-fun m!945706 () Bool)

(assert (=> b!689154 m!945706))

(declare-fun m!945708 () Bool)

(assert (=> setNonEmpty!3619 m!945708))

(declare-fun m!945710 () Bool)

(assert (=> b!689153 m!945710))

(declare-fun setNonEmpty!3621 () Bool)

(declare-fun setElem!3621 () Context!466)

(declare-fun tp!206402 () Bool)

(declare-fun setRes!3621 () Bool)

(declare-fun e!433127 () Bool)

(assert (=> setNonEmpty!3621 (= setRes!3621 (and tp!206402 (inv!9492 setElem!3621) e!433127))))

(declare-fun setRest!3621 () (InoxSet Context!466))

(assert (=> setNonEmpty!3621 (= (_2!4277 (h!12789 mapValue!2968)) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3621 true) setRest!3621))))

(declare-fun setIsEmpty!3621 () Bool)

(assert (=> setIsEmpty!3621 setRes!3621))

(declare-fun e!433128 () Bool)

(assert (=> mapNonEmpty!2966 (= tp!206309 e!433128)))

(declare-fun tp!206403 () Bool)

(declare-fun e!433126 () Bool)

(declare-fun b!689158 () Bool)

(assert (=> b!689158 (= e!433128 (and (inv!9492 (_1!4276 (_1!4277 (h!12789 mapValue!2968)))) e!433126 tp_is_empty!3641 setRes!3621 tp!206403))))

(declare-fun condSetEmpty!3621 () Bool)

(assert (=> b!689158 (= condSetEmpty!3621 (= (_2!4277 (h!12789 mapValue!2968)) ((as const (Array Context!466 Bool)) false)))))

(declare-fun b!689159 () Bool)

(declare-fun tp!206401 () Bool)

(assert (=> b!689159 (= e!433127 tp!206401)))

(declare-fun b!689160 () Bool)

(declare-fun tp!206400 () Bool)

(assert (=> b!689160 (= e!433126 tp!206400)))

(assert (= b!689158 b!689160))

(assert (= (and b!689158 condSetEmpty!3621) setIsEmpty!3621))

(assert (= (and b!689158 (not condSetEmpty!3621)) setNonEmpty!3621))

(assert (= setNonEmpty!3621 b!689159))

(assert (= (and mapNonEmpty!2966 ((_ is Cons!7388) mapValue!2968)) b!689158))

(declare-fun m!945712 () Bool)

(assert (=> setNonEmpty!3621 m!945712))

(declare-fun m!945714 () Bool)

(assert (=> b!689158 m!945714))

(declare-fun mapIsEmpty!2974 () Bool)

(declare-fun mapRes!2974 () Bool)

(assert (=> mapIsEmpty!2974 mapRes!2974))

(declare-fun setIsEmpty!3626 () Bool)

(declare-fun setRes!3627 () Bool)

(assert (=> setIsEmpty!3626 setRes!3627))

(declare-fun setNonEmpty!3626 () Bool)

(declare-fun e!433144 () Bool)

(declare-fun setElem!3626 () Context!466)

(declare-fun tp!206429 () Bool)

(assert (=> setNonEmpty!3626 (= setRes!3627 (and tp!206429 (inv!9492 setElem!3626) e!433144))))

(declare-fun mapValue!2974 () List!7401)

(declare-fun setRest!3626 () (InoxSet Context!466))

(assert (=> setNonEmpty!3626 (= (_2!4275 (h!12788 mapValue!2974)) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3626 true) setRest!3626))))

(declare-fun mapNonEmpty!2974 () Bool)

(declare-fun tp!206426 () Bool)

(declare-fun e!433145 () Bool)

(assert (=> mapNonEmpty!2974 (= mapRes!2974 (and tp!206426 e!433145))))

(declare-fun mapKey!2974 () (_ BitVec 32))

(declare-fun mapRest!2974 () (Array (_ BitVec 32) List!7401))

(assert (=> mapNonEmpty!2974 (= mapRest!2968 (store mapRest!2974 mapKey!2974 mapValue!2974))))

(declare-fun setIsEmpty!3627 () Bool)

(declare-fun setRes!3626 () Bool)

(assert (=> setIsEmpty!3627 setRes!3626))

(declare-fun b!689175 () Bool)

(declare-fun e!433141 () Bool)

(declare-fun tp!206433 () Bool)

(assert (=> b!689175 (= e!433141 tp!206433)))

(declare-fun tp!206431 () Bool)

(declare-fun tp!206430 () Bool)

(declare-fun e!433146 () Bool)

(declare-fun b!689176 () Bool)

(declare-fun mapDefault!2974 () List!7401)

(assert (=> b!689176 (= e!433146 (and tp!206430 (inv!9492 (_2!4274 (_1!4275 (h!12788 mapDefault!2974)))) e!433141 tp_is_empty!3641 setRes!3626 tp!206431))))

(declare-fun condSetEmpty!3627 () Bool)

(assert (=> b!689176 (= condSetEmpty!3627 (= (_2!4275 (h!12788 mapDefault!2974)) ((as const (Array Context!466 Bool)) false)))))

(declare-fun b!689177 () Bool)

(declare-fun e!433142 () Bool)

(declare-fun tp!206434 () Bool)

(declare-fun tp!206435 () Bool)

(assert (=> b!689177 (= e!433145 (and tp!206434 (inv!9492 (_2!4274 (_1!4275 (h!12788 mapValue!2974)))) e!433142 tp_is_empty!3641 setRes!3627 tp!206435))))

(declare-fun condSetEmpty!3626 () Bool)

(assert (=> b!689177 (= condSetEmpty!3626 (= (_2!4275 (h!12788 mapValue!2974)) ((as const (Array Context!466 Bool)) false)))))

(declare-fun b!689178 () Bool)

(declare-fun e!433143 () Bool)

(declare-fun tp!206427 () Bool)

(assert (=> b!689178 (= e!433143 tp!206427)))

(declare-fun b!689179 () Bool)

(declare-fun tp!206436 () Bool)

(assert (=> b!689179 (= e!433144 tp!206436)))

(declare-fun b!689180 () Bool)

(declare-fun tp!206432 () Bool)

(assert (=> b!689180 (= e!433142 tp!206432)))

(declare-fun setNonEmpty!3627 () Bool)

(declare-fun setElem!3627 () Context!466)

(declare-fun tp!206428 () Bool)

(assert (=> setNonEmpty!3627 (= setRes!3626 (and tp!206428 (inv!9492 setElem!3627) e!433143))))

(declare-fun setRest!3627 () (InoxSet Context!466))

(assert (=> setNonEmpty!3627 (= (_2!4275 (h!12788 mapDefault!2974)) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3627 true) setRest!3627))))

(declare-fun condMapEmpty!2974 () Bool)

(assert (=> mapNonEmpty!2968 (= condMapEmpty!2974 (= mapRest!2968 ((as const (Array (_ BitVec 32) List!7401)) mapDefault!2974)))))

(assert (=> mapNonEmpty!2968 (= tp!206326 (and e!433146 mapRes!2974))))

(assert (= (and mapNonEmpty!2968 condMapEmpty!2974) mapIsEmpty!2974))

(assert (= (and mapNonEmpty!2968 (not condMapEmpty!2974)) mapNonEmpty!2974))

(assert (= b!689177 b!689180))

(assert (= (and b!689177 condSetEmpty!3626) setIsEmpty!3626))

(assert (= (and b!689177 (not condSetEmpty!3626)) setNonEmpty!3626))

(assert (= setNonEmpty!3626 b!689179))

(assert (= (and mapNonEmpty!2974 ((_ is Cons!7387) mapValue!2974)) b!689177))

(assert (= b!689176 b!689175))

(assert (= (and b!689176 condSetEmpty!3627) setIsEmpty!3627))

(assert (= (and b!689176 (not condSetEmpty!3627)) setNonEmpty!3627))

(assert (= setNonEmpty!3627 b!689178))

(assert (= (and mapNonEmpty!2968 ((_ is Cons!7387) mapDefault!2974)) b!689176))

(declare-fun m!945716 () Bool)

(assert (=> setNonEmpty!3627 m!945716))

(declare-fun m!945718 () Bool)

(assert (=> mapNonEmpty!2974 m!945718))

(declare-fun m!945720 () Bool)

(assert (=> setNonEmpty!3626 m!945720))

(declare-fun m!945722 () Bool)

(assert (=> b!689176 m!945722))

(declare-fun m!945724 () Bool)

(assert (=> b!689177 m!945724))

(declare-fun e!433147 () Bool)

(declare-fun tp!206441 () Bool)

(declare-fun setRes!3628 () Bool)

(declare-fun setNonEmpty!3628 () Bool)

(declare-fun setElem!3628 () Context!466)

(assert (=> setNonEmpty!3628 (= setRes!3628 (and tp!206441 (inv!9492 setElem!3628) e!433147))))

(declare-fun setRest!3628 () (InoxSet Context!466))

(assert (=> setNonEmpty!3628 (= (_2!4275 (h!12788 mapValue!2966)) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3628 true) setRest!3628))))

(declare-fun b!689181 () Bool)

(declare-fun e!433148 () Bool)

(declare-fun tp!206440 () Bool)

(assert (=> b!689181 (= e!433148 tp!206440)))

(declare-fun b!689182 () Bool)

(declare-fun tp!206438 () Bool)

(assert (=> b!689182 (= e!433147 tp!206438)))

(declare-fun e!433149 () Bool)

(assert (=> mapNonEmpty!2968 (= tp!206325 e!433149)))

(declare-fun setIsEmpty!3628 () Bool)

(assert (=> setIsEmpty!3628 setRes!3628))

(declare-fun tp!206439 () Bool)

(declare-fun tp!206437 () Bool)

(declare-fun b!689183 () Bool)

(assert (=> b!689183 (= e!433149 (and tp!206437 (inv!9492 (_2!4274 (_1!4275 (h!12788 mapValue!2966)))) e!433148 tp_is_empty!3641 setRes!3628 tp!206439))))

(declare-fun condSetEmpty!3628 () Bool)

(assert (=> b!689183 (= condSetEmpty!3628 (= (_2!4275 (h!12788 mapValue!2966)) ((as const (Array Context!466 Bool)) false)))))

(assert (= b!689183 b!689181))

(assert (= (and b!689183 condSetEmpty!3628) setIsEmpty!3628))

(assert (= (and b!689183 (not condSetEmpty!3628)) setNonEmpty!3628))

(assert (= setNonEmpty!3628 b!689182))

(assert (= (and mapNonEmpty!2968 ((_ is Cons!7387) mapValue!2966)) b!689183))

(declare-fun m!945726 () Bool)

(assert (=> setNonEmpty!3628 m!945726))

(declare-fun m!945728 () Bool)

(assert (=> b!689183 m!945728))

(declare-fun tp!206444 () Bool)

(declare-fun e!433151 () Bool)

(declare-fun setRes!3629 () Bool)

(declare-fun setElem!3629 () Context!466)

(declare-fun setNonEmpty!3629 () Bool)

(assert (=> setNonEmpty!3629 (= setRes!3629 (and tp!206444 (inv!9492 setElem!3629) e!433151))))

(declare-fun setRest!3629 () (InoxSet Context!466))

(assert (=> setNonEmpty!3629 (= (_2!4277 (h!12789 (zeroValue!998 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457)))))))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3629 true) setRest!3629))))

(declare-fun setIsEmpty!3629 () Bool)

(assert (=> setIsEmpty!3629 setRes!3629))

(declare-fun e!433152 () Bool)

(assert (=> b!689006 (= tp!206314 e!433152)))

(declare-fun e!433150 () Bool)

(declare-fun b!689184 () Bool)

(declare-fun tp!206445 () Bool)

(assert (=> b!689184 (= e!433152 (and (inv!9492 (_1!4276 (_1!4277 (h!12789 (zeroValue!998 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457)))))))))) e!433150 tp_is_empty!3641 setRes!3629 tp!206445))))

(declare-fun condSetEmpty!3629 () Bool)

(assert (=> b!689184 (= condSetEmpty!3629 (= (_2!4277 (h!12789 (zeroValue!998 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457)))))))) ((as const (Array Context!466 Bool)) false)))))

(declare-fun b!689185 () Bool)

(declare-fun tp!206443 () Bool)

(assert (=> b!689185 (= e!433151 tp!206443)))

(declare-fun b!689186 () Bool)

(declare-fun tp!206442 () Bool)

(assert (=> b!689186 (= e!433150 tp!206442)))

(assert (= b!689184 b!689186))

(assert (= (and b!689184 condSetEmpty!3629) setIsEmpty!3629))

(assert (= (and b!689184 (not condSetEmpty!3629)) setNonEmpty!3629))

(assert (= setNonEmpty!3629 b!689185))

(assert (= (and b!689006 ((_ is Cons!7388) (zeroValue!998 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457)))))))) b!689184))

(declare-fun m!945730 () Bool)

(assert (=> setNonEmpty!3629 m!945730))

(declare-fun m!945732 () Bool)

(assert (=> b!689184 m!945732))

(declare-fun setElem!3630 () Context!466)

(declare-fun tp!206448 () Bool)

(declare-fun e!433154 () Bool)

(declare-fun setRes!3630 () Bool)

(declare-fun setNonEmpty!3630 () Bool)

(assert (=> setNonEmpty!3630 (= setRes!3630 (and tp!206448 (inv!9492 setElem!3630) e!433154))))

(declare-fun setRest!3630 () (InoxSet Context!466))

(assert (=> setNonEmpty!3630 (= (_2!4277 (h!12789 (minValue!998 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457)))))))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3630 true) setRest!3630))))

(declare-fun setIsEmpty!3630 () Bool)

(assert (=> setIsEmpty!3630 setRes!3630))

(declare-fun e!433155 () Bool)

(assert (=> b!689006 (= tp!206323 e!433155)))

(declare-fun b!689187 () Bool)

(declare-fun e!433153 () Bool)

(declare-fun tp!206449 () Bool)

(assert (=> b!689187 (= e!433155 (and (inv!9492 (_1!4276 (_1!4277 (h!12789 (minValue!998 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457)))))))))) e!433153 tp_is_empty!3641 setRes!3630 tp!206449))))

(declare-fun condSetEmpty!3630 () Bool)

(assert (=> b!689187 (= condSetEmpty!3630 (= (_2!4277 (h!12789 (minValue!998 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457)))))))) ((as const (Array Context!466 Bool)) false)))))

(declare-fun b!689188 () Bool)

(declare-fun tp!206447 () Bool)

(assert (=> b!689188 (= e!433154 tp!206447)))

(declare-fun b!689189 () Bool)

(declare-fun tp!206446 () Bool)

(assert (=> b!689189 (= e!433153 tp!206446)))

(assert (= b!689187 b!689189))

(assert (= (and b!689187 condSetEmpty!3630) setIsEmpty!3630))

(assert (= (and b!689187 (not condSetEmpty!3630)) setNonEmpty!3630))

(assert (= setNonEmpty!3630 b!689188))

(assert (= (and b!689006 ((_ is Cons!7388) (minValue!998 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457)))))))) b!689187))

(declare-fun m!945734 () Bool)

(assert (=> setNonEmpty!3630 m!945734))

(declare-fun m!945736 () Bool)

(assert (=> b!689187 m!945736))

(declare-fun e!433161 () Bool)

(declare-fun b!689198 () Bool)

(declare-fun tp!206458 () Bool)

(declare-fun tp!206456 () Bool)

(assert (=> b!689198 (= e!433161 (and (inv!9488 (left!5956 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))) tp!206456 (inv!9488 (right!6286 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))) tp!206458))))

(declare-fun b!689200 () Bool)

(declare-fun e!433160 () Bool)

(declare-fun tp!206457 () Bool)

(assert (=> b!689200 (= e!433160 tp!206457)))

(declare-fun b!689199 () Bool)

(declare-fun inv!9493 (IArray!5233) Bool)

(assert (=> b!689199 (= e!433161 (and (inv!9493 (xs!5265 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))) e!433160))))

(assert (=> b!689016 (= tp!206333 (and (inv!9488 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))) e!433161))))

(assert (= (and b!689016 ((_ is Node!2616) (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))) b!689198))

(assert (= b!689199 b!689200))

(assert (= (and b!689016 ((_ is Leaf!3881) (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))) b!689199))

(declare-fun m!945738 () Bool)

(assert (=> b!689198 m!945738))

(declare-fun m!945740 () Bool)

(assert (=> b!689198 m!945740))

(declare-fun m!945742 () Bool)

(assert (=> b!689199 m!945742))

(assert (=> b!689016 m!945562))

(declare-fun b!689214 () Bool)

(declare-fun e!433164 () Bool)

(declare-fun tp!206471 () Bool)

(declare-fun tp!206472 () Bool)

(assert (=> b!689214 (= e!433164 (and tp!206471 tp!206472))))

(declare-fun b!689213 () Bool)

(declare-fun tp!206469 () Bool)

(assert (=> b!689213 (= e!433164 tp!206469)))

(assert (=> b!689015 (= tp!206318 e!433164)))

(declare-fun b!689211 () Bool)

(assert (=> b!689211 (= e!433164 tp_is_empty!3641)))

(declare-fun b!689212 () Bool)

(declare-fun tp!206473 () Bool)

(declare-fun tp!206470 () Bool)

(assert (=> b!689212 (= e!433164 (and tp!206473 tp!206470))))

(assert (= (and b!689015 ((_ is ElementMatch!1823) (regex!1486 (h!12787 rules!1357)))) b!689211))

(assert (= (and b!689015 ((_ is Concat!3353) (regex!1486 (h!12787 rules!1357)))) b!689212))

(assert (= (and b!689015 ((_ is Star!1823) (regex!1486 (h!12787 rules!1357)))) b!689213))

(assert (= (and b!689015 ((_ is Union!1823) (regex!1486 (h!12787 rules!1357)))) b!689214))

(declare-fun setNonEmpty!3631 () Bool)

(declare-fun setRes!3631 () Bool)

(declare-fun setElem!3631 () Context!466)

(declare-fun tp!206478 () Bool)

(declare-fun e!433165 () Bool)

(assert (=> setNonEmpty!3631 (= setRes!3631 (and tp!206478 (inv!9492 setElem!3631) e!433165))))

(declare-fun setRest!3631 () (InoxSet Context!466))

(assert (=> setNonEmpty!3631 (= (_2!4275 (h!12788 (zeroValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470)))))))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3631 true) setRest!3631))))

(declare-fun b!689215 () Bool)

(declare-fun e!433166 () Bool)

(declare-fun tp!206477 () Bool)

(assert (=> b!689215 (= e!433166 tp!206477)))

(declare-fun b!689216 () Bool)

(declare-fun tp!206475 () Bool)

(assert (=> b!689216 (= e!433165 tp!206475)))

(declare-fun e!433167 () Bool)

(assert (=> b!689025 (= tp!206331 e!433167)))

(declare-fun setIsEmpty!3631 () Bool)

(assert (=> setIsEmpty!3631 setRes!3631))

(declare-fun b!689217 () Bool)

(declare-fun tp!206476 () Bool)

(declare-fun tp!206474 () Bool)

(assert (=> b!689217 (= e!433167 (and tp!206474 (inv!9492 (_2!4274 (_1!4275 (h!12788 (zeroValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470)))))))))) e!433166 tp_is_empty!3641 setRes!3631 tp!206476))))

(declare-fun condSetEmpty!3631 () Bool)

(assert (=> b!689217 (= condSetEmpty!3631 (= (_2!4275 (h!12788 (zeroValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470)))))))) ((as const (Array Context!466 Bool)) false)))))

(assert (= b!689217 b!689215))

(assert (= (and b!689217 condSetEmpty!3631) setIsEmpty!3631))

(assert (= (and b!689217 (not condSetEmpty!3631)) setNonEmpty!3631))

(assert (= setNonEmpty!3631 b!689216))

(assert (= (and b!689025 ((_ is Cons!7387) (zeroValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470)))))))) b!689217))

(declare-fun m!945744 () Bool)

(assert (=> setNonEmpty!3631 m!945744))

(declare-fun m!945746 () Bool)

(assert (=> b!689217 m!945746))

(declare-fun setRes!3632 () Bool)

(declare-fun e!433168 () Bool)

(declare-fun setNonEmpty!3632 () Bool)

(declare-fun setElem!3632 () Context!466)

(declare-fun tp!206483 () Bool)

(assert (=> setNonEmpty!3632 (= setRes!3632 (and tp!206483 (inv!9492 setElem!3632) e!433168))))

(declare-fun setRest!3632 () (InoxSet Context!466))

(assert (=> setNonEmpty!3632 (= (_2!4275 (h!12788 (minValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470)))))))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3632 true) setRest!3632))))

(declare-fun b!689218 () Bool)

(declare-fun e!433169 () Bool)

(declare-fun tp!206482 () Bool)

(assert (=> b!689218 (= e!433169 tp!206482)))

(declare-fun b!689219 () Bool)

(declare-fun tp!206480 () Bool)

(assert (=> b!689219 (= e!433168 tp!206480)))

(declare-fun e!433170 () Bool)

(assert (=> b!689025 (= tp!206327 e!433170)))

(declare-fun setIsEmpty!3632 () Bool)

(assert (=> setIsEmpty!3632 setRes!3632))

(declare-fun tp!206479 () Bool)

(declare-fun b!689220 () Bool)

(declare-fun tp!206481 () Bool)

(assert (=> b!689220 (= e!433170 (and tp!206479 (inv!9492 (_2!4274 (_1!4275 (h!12788 (minValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470)))))))))) e!433169 tp_is_empty!3641 setRes!3632 tp!206481))))

(declare-fun condSetEmpty!3632 () Bool)

(assert (=> b!689220 (= condSetEmpty!3632 (= (_2!4275 (h!12788 (minValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470)))))))) ((as const (Array Context!466 Bool)) false)))))

(assert (= b!689220 b!689218))

(assert (= (and b!689220 condSetEmpty!3632) setIsEmpty!3632))

(assert (= (and b!689220 (not condSetEmpty!3632)) setNonEmpty!3632))

(assert (= setNonEmpty!3632 b!689219))

(assert (= (and b!689025 ((_ is Cons!7387) (minValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470)))))))) b!689220))

(declare-fun m!945748 () Bool)

(assert (=> setNonEmpty!3632 m!945748))

(declare-fun m!945750 () Bool)

(assert (=> b!689220 m!945750))

(declare-fun b!689228 () Bool)

(declare-fun e!433176 () Bool)

(declare-fun tp!206490 () Bool)

(assert (=> b!689228 (= e!433176 tp!206490)))

(declare-fun b!689227 () Bool)

(declare-fun e!433175 () Bool)

(declare-fun setRes!3635 () Bool)

(declare-fun tp!206491 () Bool)

(assert (=> b!689227 (= e!433175 (and setRes!3635 tp!206491))))

(declare-fun condSetEmpty!3635 () Bool)

(assert (=> b!689227 (= condSetEmpty!3635 (= (_1!4271 (_1!4272 (h!12784 (zeroValue!996 (v!17593 (underlying!1661 (v!17594 (underlying!1662 (cache!1098 cacheFindLongestMatch!59))))))))) ((as const (Array Context!466 Bool)) false)))))

(declare-fun setIsEmpty!3635 () Bool)

(assert (=> setIsEmpty!3635 setRes!3635))

(assert (=> b!688990 (= tp!206317 e!433175)))

(declare-fun setElem!3635 () Context!466)

(declare-fun tp!206492 () Bool)

(declare-fun setNonEmpty!3635 () Bool)

(assert (=> setNonEmpty!3635 (= setRes!3635 (and tp!206492 (inv!9492 setElem!3635) e!433176))))

(declare-fun setRest!3635 () (InoxSet Context!466))

(assert (=> setNonEmpty!3635 (= (_1!4271 (_1!4272 (h!12784 (zeroValue!996 (v!17593 (underlying!1661 (v!17594 (underlying!1662 (cache!1098 cacheFindLongestMatch!59))))))))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3635 true) setRest!3635))))

(assert (= (and b!689227 condSetEmpty!3635) setIsEmpty!3635))

(assert (= (and b!689227 (not condSetEmpty!3635)) setNonEmpty!3635))

(assert (= setNonEmpty!3635 b!689228))

(assert (= (and b!688990 ((_ is Cons!7383) (zeroValue!996 (v!17593 (underlying!1661 (v!17594 (underlying!1662 (cache!1098 cacheFindLongestMatch!59)))))))) b!689227))

(declare-fun m!945752 () Bool)

(assert (=> setNonEmpty!3635 m!945752))

(declare-fun b!689230 () Bool)

(declare-fun e!433178 () Bool)

(declare-fun tp!206493 () Bool)

(assert (=> b!689230 (= e!433178 tp!206493)))

(declare-fun b!689229 () Bool)

(declare-fun e!433177 () Bool)

(declare-fun setRes!3636 () Bool)

(declare-fun tp!206494 () Bool)

(assert (=> b!689229 (= e!433177 (and setRes!3636 tp!206494))))

(declare-fun condSetEmpty!3636 () Bool)

(assert (=> b!689229 (= condSetEmpty!3636 (= (_1!4271 (_1!4272 (h!12784 (minValue!996 (v!17593 (underlying!1661 (v!17594 (underlying!1662 (cache!1098 cacheFindLongestMatch!59))))))))) ((as const (Array Context!466 Bool)) false)))))

(declare-fun setIsEmpty!3636 () Bool)

(assert (=> setIsEmpty!3636 setRes!3636))

(assert (=> b!688990 (= tp!206312 e!433177)))

(declare-fun setElem!3636 () Context!466)

(declare-fun tp!206495 () Bool)

(declare-fun setNonEmpty!3636 () Bool)

(assert (=> setNonEmpty!3636 (= setRes!3636 (and tp!206495 (inv!9492 setElem!3636) e!433178))))

(declare-fun setRest!3636 () (InoxSet Context!466))

(assert (=> setNonEmpty!3636 (= (_1!4271 (_1!4272 (h!12784 (minValue!996 (v!17593 (underlying!1661 (v!17594 (underlying!1662 (cache!1098 cacheFindLongestMatch!59))))))))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3636 true) setRest!3636))))

(assert (= (and b!689229 condSetEmpty!3636) setIsEmpty!3636))

(assert (= (and b!689229 (not condSetEmpty!3636)) setNonEmpty!3636))

(assert (= setNonEmpty!3636 b!689230))

(assert (= (and b!688990 ((_ is Cons!7383) (minValue!996 (v!17593 (underlying!1661 (v!17594 (underlying!1662 (cache!1098 cacheFindLongestMatch!59)))))))) b!689229))

(declare-fun m!945754 () Bool)

(assert (=> setNonEmpty!3636 m!945754))

(declare-fun b!689241 () Bool)

(declare-fun e!433188 () Bool)

(declare-fun tp!206516 () Bool)

(assert (=> b!689241 (= e!433188 tp!206516)))

(declare-fun b!689242 () Bool)

(declare-fun e!433189 () Bool)

(declare-fun tp!206511 () Bool)

(assert (=> b!689242 (= e!433189 tp!206511)))

(declare-fun setIsEmpty!3641 () Bool)

(declare-fun setRes!3642 () Bool)

(assert (=> setIsEmpty!3641 setRes!3642))

(declare-fun b!689243 () Bool)

(declare-fun e!433187 () Bool)

(declare-fun tp!206510 () Bool)

(assert (=> b!689243 (= e!433187 (and setRes!3642 tp!206510))))

(declare-fun condSetEmpty!3641 () Bool)

(declare-fun mapDefault!2977 () List!7397)

(assert (=> b!689243 (= condSetEmpty!3641 (= (_1!4271 (_1!4272 (h!12784 mapDefault!2977))) ((as const (Array Context!466 Bool)) false)))))

(declare-fun setNonEmpty!3641 () Bool)

(declare-fun tp!206515 () Bool)

(declare-fun setElem!3641 () Context!466)

(assert (=> setNonEmpty!3641 (= setRes!3642 (and tp!206515 (inv!9492 setElem!3641) e!433188))))

(declare-fun setRest!3642 () (InoxSet Context!466))

(assert (=> setNonEmpty!3641 (= (_1!4271 (_1!4272 (h!12784 mapDefault!2977))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3641 true) setRest!3642))))

(declare-fun setIsEmpty!3642 () Bool)

(declare-fun setRes!3641 () Bool)

(assert (=> setIsEmpty!3642 setRes!3641))

(declare-fun setElem!3642 () Context!466)

(declare-fun setNonEmpty!3642 () Bool)

(declare-fun tp!206512 () Bool)

(assert (=> setNonEmpty!3642 (= setRes!3641 (and tp!206512 (inv!9492 setElem!3642) e!433189))))

(declare-fun mapValue!2977 () List!7397)

(declare-fun setRest!3641 () (InoxSet Context!466))

(assert (=> setNonEmpty!3642 (= (_1!4271 (_1!4272 (h!12784 mapValue!2977))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3642 true) setRest!3641))))

(declare-fun condMapEmpty!2977 () Bool)

(assert (=> mapNonEmpty!2967 (= condMapEmpty!2977 (= mapRest!2966 ((as const (Array (_ BitVec 32) List!7397)) mapDefault!2977)))))

(declare-fun mapRes!2977 () Bool)

(assert (=> mapNonEmpty!2967 (= tp!206310 (and e!433187 mapRes!2977))))

(declare-fun mapNonEmpty!2977 () Bool)

(declare-fun tp!206513 () Bool)

(declare-fun e!433190 () Bool)

(assert (=> mapNonEmpty!2977 (= mapRes!2977 (and tp!206513 e!433190))))

(declare-fun mapKey!2977 () (_ BitVec 32))

(declare-fun mapRest!2977 () (Array (_ BitVec 32) List!7397))

(assert (=> mapNonEmpty!2977 (= mapRest!2966 (store mapRest!2977 mapKey!2977 mapValue!2977))))

(declare-fun b!689244 () Bool)

(declare-fun tp!206514 () Bool)

(assert (=> b!689244 (= e!433190 (and setRes!3641 tp!206514))))

(declare-fun condSetEmpty!3642 () Bool)

(assert (=> b!689244 (= condSetEmpty!3642 (= (_1!4271 (_1!4272 (h!12784 mapValue!2977))) ((as const (Array Context!466 Bool)) false)))))

(declare-fun mapIsEmpty!2977 () Bool)

(assert (=> mapIsEmpty!2977 mapRes!2977))

(assert (= (and mapNonEmpty!2967 condMapEmpty!2977) mapIsEmpty!2977))

(assert (= (and mapNonEmpty!2967 (not condMapEmpty!2977)) mapNonEmpty!2977))

(assert (= (and b!689244 condSetEmpty!3642) setIsEmpty!3642))

(assert (= (and b!689244 (not condSetEmpty!3642)) setNonEmpty!3642))

(assert (= setNonEmpty!3642 b!689242))

(assert (= (and mapNonEmpty!2977 ((_ is Cons!7383) mapValue!2977)) b!689244))

(assert (= (and b!689243 condSetEmpty!3641) setIsEmpty!3641))

(assert (= (and b!689243 (not condSetEmpty!3641)) setNonEmpty!3641))

(assert (= setNonEmpty!3641 b!689241))

(assert (= (and mapNonEmpty!2967 ((_ is Cons!7383) mapDefault!2977)) b!689243))

(declare-fun m!945756 () Bool)

(assert (=> setNonEmpty!3641 m!945756))

(declare-fun m!945758 () Bool)

(assert (=> setNonEmpty!3642 m!945758))

(declare-fun m!945760 () Bool)

(assert (=> mapNonEmpty!2977 m!945760))

(declare-fun b!689246 () Bool)

(declare-fun e!433192 () Bool)

(declare-fun tp!206517 () Bool)

(assert (=> b!689246 (= e!433192 tp!206517)))

(declare-fun b!689245 () Bool)

(declare-fun e!433191 () Bool)

(declare-fun setRes!3643 () Bool)

(declare-fun tp!206518 () Bool)

(assert (=> b!689245 (= e!433191 (and setRes!3643 tp!206518))))

(declare-fun condSetEmpty!3643 () Bool)

(assert (=> b!689245 (= condSetEmpty!3643 (= (_1!4271 (_1!4272 (h!12784 mapValue!2967))) ((as const (Array Context!466 Bool)) false)))))

(declare-fun setIsEmpty!3643 () Bool)

(assert (=> setIsEmpty!3643 setRes!3643))

(assert (=> mapNonEmpty!2967 (= tp!206328 e!433191)))

(declare-fun tp!206519 () Bool)

(declare-fun setNonEmpty!3643 () Bool)

(declare-fun setElem!3643 () Context!466)

(assert (=> setNonEmpty!3643 (= setRes!3643 (and tp!206519 (inv!9492 setElem!3643) e!433192))))

(declare-fun setRest!3643 () (InoxSet Context!466))

(assert (=> setNonEmpty!3643 (= (_1!4271 (_1!4272 (h!12784 mapValue!2967))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3643 true) setRest!3643))))

(assert (= (and b!689245 condSetEmpty!3643) setIsEmpty!3643))

(assert (= (and b!689245 (not condSetEmpty!3643)) setNonEmpty!3643))

(assert (= setNonEmpty!3643 b!689246))

(assert (= (and mapNonEmpty!2967 ((_ is Cons!7383) mapValue!2967)) b!689245))

(declare-fun m!945762 () Bool)

(assert (=> setNonEmpty!3643 m!945762))

(declare-fun tp!206522 () Bool)

(declare-fun e!433194 () Bool)

(declare-fun b!689247 () Bool)

(declare-fun tp!206520 () Bool)

(assert (=> b!689247 (= e!433194 (and (inv!9488 (left!5956 (c!121420 input!756))) tp!206520 (inv!9488 (right!6286 (c!121420 input!756))) tp!206522))))

(declare-fun b!689249 () Bool)

(declare-fun e!433193 () Bool)

(declare-fun tp!206521 () Bool)

(assert (=> b!689249 (= e!433193 tp!206521)))

(declare-fun b!689248 () Bool)

(assert (=> b!689248 (= e!433194 (and (inv!9493 (xs!5265 (c!121420 input!756))) e!433193))))

(assert (=> b!689007 (= tp!206307 (and (inv!9488 (c!121420 input!756)) e!433194))))

(assert (= (and b!689007 ((_ is Node!2616) (c!121420 input!756))) b!689247))

(assert (= b!689248 b!689249))

(assert (= (and b!689007 ((_ is Leaf!3881) (c!121420 input!756))) b!689248))

(declare-fun m!945764 () Bool)

(assert (=> b!689247 m!945764))

(declare-fun m!945766 () Bool)

(assert (=> b!689247 m!945766))

(declare-fun m!945768 () Bool)

(assert (=> b!689248 m!945768))

(assert (=> b!689007 m!945550))

(declare-fun b!689251 () Bool)

(declare-fun e!433196 () Bool)

(declare-fun tp!206523 () Bool)

(assert (=> b!689251 (= e!433196 tp!206523)))

(declare-fun b!689250 () Bool)

(declare-fun e!433195 () Bool)

(declare-fun setRes!3644 () Bool)

(declare-fun tp!206524 () Bool)

(assert (=> b!689250 (= e!433195 (and setRes!3644 tp!206524))))

(declare-fun condSetEmpty!3644 () Bool)

(assert (=> b!689250 (= condSetEmpty!3644 (= (_1!4271 (_1!4272 (h!12784 mapDefault!2966))) ((as const (Array Context!466 Bool)) false)))))

(declare-fun setIsEmpty!3644 () Bool)

(assert (=> setIsEmpty!3644 setRes!3644))

(assert (=> b!689009 (= tp!206332 e!433195)))

(declare-fun setNonEmpty!3644 () Bool)

(declare-fun setElem!3644 () Context!466)

(declare-fun tp!206525 () Bool)

(assert (=> setNonEmpty!3644 (= setRes!3644 (and tp!206525 (inv!9492 setElem!3644) e!433196))))

(declare-fun setRest!3644 () (InoxSet Context!466))

(assert (=> setNonEmpty!3644 (= (_1!4271 (_1!4272 (h!12784 mapDefault!2966))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3644 true) setRest!3644))))

(assert (= (and b!689250 condSetEmpty!3644) setIsEmpty!3644))

(assert (= (and b!689250 (not condSetEmpty!3644)) setNonEmpty!3644))

(assert (= setNonEmpty!3644 b!689251))

(assert (= (and b!689009 ((_ is Cons!7383) mapDefault!2966)) b!689250))

(declare-fun m!945770 () Bool)

(assert (=> setNonEmpty!3644 m!945770))

(check-sat (not b!689179) (not b!689219) (not b_next!19459) (not b!689249) (not setNonEmpty!3629) (not setNonEmpty!3644) (not b!689230) b_and!63199 (not b!689228) (not b!689159) (not b!689115) (not d!232161) (not setNonEmpty!3614) (not setNonEmpty!3636) (not b_next!19473) (not setNonEmpty!3621) (not b!689220) (not b!689136) (not b!689243) (not d!232143) (not b!689113) (not b!689185) (not d!232153) (not b!689247) b_and!63195 (not b!689180) (not b!689039) (not b!689187) b_and!63193 (not setNonEmpty!3632) (not b!689103) (not b!689059) (not b_next!19467) (not b!689175) (not b!689071) (not b!689067) (not setNonEmpty!3643) (not b!689114) (not b!689154) (not b!689152) (not setNonEmpty!3627) (not b!689089) (not b!689242) (not setNonEmpty!3619) (not b!689241) (not b!689216) (not d!232177) (not b!689092) (not b!689060) (not b!689077) (not b!689229) (not mapNonEmpty!2971) (not b!689215) (not b!689126) (not b!689184) (not b!689066) (not d!232187) (not mapNonEmpty!2974) (not b!689218) (not b_next!19461) (not b!689153) (not d!232155) (not b_next!19475) (not d!232147) (not d!232163) (not setNonEmpty!3641) (not setNonEmpty!3642) b_and!63189 (not b!689217) (not b!689124) (not b!689244) (not b!689188) (not b!689084) (not b!689178) (not b!689248) (not b!689074) (not b!689057) (not d!232165) (not b!689200) (not b_next!19469) (not setNonEmpty!3620) (not d!232203) b_and!63201 (not b!689214) (not b!689160) b_and!63187 (not b_next!19471) (not b!689246) (not b!689189) (not d!232193) (not b!689199) (not b!689037) tp_is_empty!3641 (not b!689086) (not b!689186) b_and!63197 (not d!232145) (not d!232201) (not b!689064) (not b!689090) (not setNonEmpty!3631) (not b!689102) (not d!232205) (not b!689125) (not b!689007) (not setNonEmpty!3611) (not mapNonEmpty!2977) (not setNonEmpty!3626) (not b_next!19463) (not b!689040) (not b!689156) (not setNonEmpty!3628) (not b!689245) (not b!689177) (not setNonEmpty!3630) (not b!689061) (not b!689213) (not b!689135) (not b!689065) (not b!689183) (not b!689062) (not b!689016) (not b!689155) (not d!232151) b_and!63191 (not b!689055) (not d!232149) (not b!689251) (not b!689158) (not b!689227) (not b_next!19457) (not b!689250) (not b!689068) b_and!63205 (not b!689058) (not b!689157) (not b!689182) b_and!63203 (not b!689176) (not d!232169) (not setNonEmpty!3635) (not b!689038) (not d!232157) (not b!689198) (not b_next!19465) (not b!689181) (not b!689028) (not b!689212))
(check-sat (not b_next!19473) b_and!63195 b_and!63193 (not b_next!19467) b_and!63189 b_and!63197 (not b_next!19463) b_and!63191 b_and!63203 (not b_next!19465) (not b_next!19459) b_and!63199 (not b_next!19461) (not b_next!19475) (not b_next!19469) b_and!63201 b_and!63187 (not b_next!19471) (not b_next!19457) b_and!63205)
(get-model)

(declare-fun d!232207 () Bool)

(declare-fun res!312986 () Bool)

(declare-fun e!433199 () Bool)

(assert (=> d!232207 (=> (not res!312986) (not e!433199))))

(declare-fun list!3118 (IArray!5233) List!7396)

(assert (=> d!232207 (= res!312986 (<= (size!6067 (list!3118 (xs!5265 (c!121420 input!756)))) 512))))

(assert (=> d!232207 (= (inv!9491 (c!121420 input!756)) e!433199)))

(declare-fun b!689256 () Bool)

(declare-fun res!312987 () Bool)

(assert (=> b!689256 (=> (not res!312987) (not e!433199))))

(assert (=> b!689256 (= res!312987 (= (csize!5463 (c!121420 input!756)) (size!6067 (list!3118 (xs!5265 (c!121420 input!756))))))))

(declare-fun b!689257 () Bool)

(assert (=> b!689257 (= e!433199 (and (> (csize!5463 (c!121420 input!756)) 0) (<= (csize!5463 (c!121420 input!756)) 512)))))

(assert (= (and d!232207 res!312986) b!689256))

(assert (= (and b!689256 res!312987) b!689257))

(declare-fun m!945772 () Bool)

(assert (=> d!232207 m!945772))

(assert (=> d!232207 m!945772))

(declare-fun m!945774 () Bool)

(assert (=> d!232207 m!945774))

(assert (=> b!689256 m!945772))

(assert (=> b!689256 m!945772))

(assert (=> b!689256 m!945774))

(assert (=> b!689092 d!232207))

(declare-fun d!232209 () Bool)

(declare-fun lambda!21438 () Int)

(declare-fun forall!1946 (List!7395 Int) Bool)

(assert (=> d!232209 (= (inv!9492 (_2!4274 (_1!4275 (h!12788 mapValue!2974)))) (forall!1946 (exprs!733 (_2!4274 (_1!4275 (h!12788 mapValue!2974)))) lambda!21438))))

(declare-fun bs!136381 () Bool)

(assert (= bs!136381 d!232209))

(declare-fun m!945776 () Bool)

(assert (=> bs!136381 m!945776))

(assert (=> b!689177 d!232209))

(declare-fun bs!136382 () Bool)

(declare-fun d!232211 () Bool)

(assert (= bs!136382 (and d!232211 d!232209)))

(declare-fun lambda!21439 () Int)

(assert (=> bs!136382 (= lambda!21439 lambda!21438)))

(assert (=> d!232211 (= (inv!9492 (_1!4276 (_1!4277 (h!12789 (minValue!998 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457)))))))))) (forall!1946 (exprs!733 (_1!4276 (_1!4277 (h!12789 (minValue!998 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457)))))))))) lambda!21439))))

(declare-fun bs!136383 () Bool)

(assert (= bs!136383 d!232211))

(declare-fun m!945778 () Bool)

(assert (=> bs!136383 m!945778))

(assert (=> b!689187 d!232211))

(declare-fun b!689270 () Bool)

(declare-fun res!313004 () Bool)

(declare-fun e!433205 () Bool)

(assert (=> b!689270 (=> (not res!313004) (not e!433205))))

(assert (=> b!689270 (= res!313004 (isBalanced!693 (left!5956 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))))))

(declare-fun b!689271 () Bool)

(declare-fun isEmpty!4853 (Conc!2616) Bool)

(assert (=> b!689271 (= e!433205 (not (isEmpty!4853 (right!6286 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))))))))

(declare-fun b!689272 () Bool)

(declare-fun res!313002 () Bool)

(assert (=> b!689272 (=> (not res!313002) (not e!433205))))

(assert (=> b!689272 (= res!313002 (not (isEmpty!4853 (left!5956 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))))))))

(declare-fun b!689273 () Bool)

(declare-fun res!313001 () Bool)

(assert (=> b!689273 (=> (not res!313001) (not e!433205))))

(assert (=> b!689273 (= res!313001 (isBalanced!693 (right!6286 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))))))

(declare-fun b!689274 () Bool)

(declare-fun res!313003 () Bool)

(assert (=> b!689274 (=> (not res!313003) (not e!433205))))

(declare-fun height!316 (Conc!2616) Int)

(assert (=> b!689274 (= res!313003 (<= (- (height!316 (left!5956 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))) (height!316 (right!6286 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))))) 1))))

(declare-fun d!232213 () Bool)

(declare-fun res!313000 () Bool)

(declare-fun e!433204 () Bool)

(assert (=> d!232213 (=> res!313000 e!433204)))

(assert (=> d!232213 (= res!313000 (not ((_ is Node!2616) (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))))))

(assert (=> d!232213 (= (isBalanced!693 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))) e!433204)))

(declare-fun b!689275 () Bool)

(assert (=> b!689275 (= e!433204 e!433205)))

(declare-fun res!313005 () Bool)

(assert (=> b!689275 (=> (not res!313005) (not e!433205))))

(assert (=> b!689275 (= res!313005 (<= (- 1) (- (height!316 (left!5956 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))) (height!316 (right!6286 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))))))))

(assert (= (and d!232213 (not res!313000)) b!689275))

(assert (= (and b!689275 res!313005) b!689274))

(assert (= (and b!689274 res!313003) b!689270))

(assert (= (and b!689270 res!313004) b!689273))

(assert (= (and b!689273 res!313001) b!689272))

(assert (= (and b!689272 res!313002) b!689271))

(declare-fun m!945780 () Bool)

(assert (=> b!689272 m!945780))

(declare-fun m!945782 () Bool)

(assert (=> b!689274 m!945782))

(declare-fun m!945784 () Bool)

(assert (=> b!689274 m!945784))

(declare-fun m!945786 () Bool)

(assert (=> b!689273 m!945786))

(declare-fun m!945788 () Bool)

(assert (=> b!689271 m!945788))

(declare-fun m!945790 () Bool)

(assert (=> b!689270 m!945790))

(assert (=> b!689275 m!945782))

(assert (=> b!689275 m!945784))

(assert (=> d!232193 d!232213))

(declare-fun bs!136384 () Bool)

(declare-fun d!232215 () Bool)

(assert (= bs!136384 (and d!232215 d!232209)))

(declare-fun lambda!21440 () Int)

(assert (=> bs!136384 (= lambda!21440 lambda!21438)))

(declare-fun bs!136385 () Bool)

(assert (= bs!136385 (and d!232215 d!232211)))

(assert (=> bs!136385 (= lambda!21440 lambda!21439)))

(assert (=> d!232215 (= (inv!9492 setElem!3629) (forall!1946 (exprs!733 setElem!3629) lambda!21440))))

(declare-fun bs!136386 () Bool)

(assert (= bs!136386 d!232215))

(declare-fun m!945792 () Bool)

(assert (=> bs!136386 m!945792))

(assert (=> setNonEmpty!3629 d!232215))

(declare-fun d!232217 () Bool)

(declare-fun res!313010 () Bool)

(declare-fun e!433210 () Bool)

(assert (=> d!232217 (=> res!313010 e!433210)))

(assert (=> d!232217 (= res!313010 ((_ is Nil!7386) rules!1357))))

(assert (=> d!232217 (= (noDuplicateTag!525 thiss!12183 rules!1357 Nil!7389) e!433210)))

(declare-fun b!689280 () Bool)

(declare-fun e!433211 () Bool)

(assert (=> b!689280 (= e!433210 e!433211)))

(declare-fun res!313011 () Bool)

(assert (=> b!689280 (=> (not res!313011) (not e!433211))))

(declare-fun contains!1564 (List!7403 String!9372) Bool)

(assert (=> b!689280 (= res!313011 (not (contains!1564 Nil!7389 (tag!1748 (h!12787 rules!1357)))))))

(declare-fun b!689281 () Bool)

(assert (=> b!689281 (= e!433211 (noDuplicateTag!525 thiss!12183 (t!87211 rules!1357) (Cons!7389 (tag!1748 (h!12787 rules!1357)) Nil!7389)))))

(assert (= (and d!232217 (not res!313010)) b!689280))

(assert (= (and b!689280 res!313011) b!689281))

(declare-fun m!945794 () Bool)

(assert (=> b!689280 m!945794))

(declare-fun m!945796 () Bool)

(assert (=> b!689281 m!945796))

(assert (=> b!689028 d!232217))

(declare-fun d!232219 () Bool)

(declare-fun c!121441 () Bool)

(assert (=> d!232219 (= c!121441 ((_ is Node!2616) (left!5956 (c!121420 input!756))))))

(declare-fun e!433212 () Bool)

(assert (=> d!232219 (= (inv!9488 (left!5956 (c!121420 input!756))) e!433212)))

(declare-fun b!689282 () Bool)

(assert (=> b!689282 (= e!433212 (inv!9490 (left!5956 (c!121420 input!756))))))

(declare-fun b!689283 () Bool)

(declare-fun e!433213 () Bool)

(assert (=> b!689283 (= e!433212 e!433213)))

(declare-fun res!313012 () Bool)

(assert (=> b!689283 (= res!313012 (not ((_ is Leaf!3881) (left!5956 (c!121420 input!756)))))))

(assert (=> b!689283 (=> res!313012 e!433213)))

(declare-fun b!689284 () Bool)

(assert (=> b!689284 (= e!433213 (inv!9491 (left!5956 (c!121420 input!756))))))

(assert (= (and d!232219 c!121441) b!689282))

(assert (= (and d!232219 (not c!121441)) b!689283))

(assert (= (and b!689283 (not res!313012)) b!689284))

(declare-fun m!945798 () Bool)

(assert (=> b!689282 m!945798))

(declare-fun m!945800 () Bool)

(assert (=> b!689284 m!945800))

(assert (=> b!689247 d!232219))

(declare-fun d!232221 () Bool)

(declare-fun c!121442 () Bool)

(assert (=> d!232221 (= c!121442 ((_ is Node!2616) (right!6286 (c!121420 input!756))))))

(declare-fun e!433214 () Bool)

(assert (=> d!232221 (= (inv!9488 (right!6286 (c!121420 input!756))) e!433214)))

(declare-fun b!689285 () Bool)

(assert (=> b!689285 (= e!433214 (inv!9490 (right!6286 (c!121420 input!756))))))

(declare-fun b!689286 () Bool)

(declare-fun e!433215 () Bool)

(assert (=> b!689286 (= e!433214 e!433215)))

(declare-fun res!313013 () Bool)

(assert (=> b!689286 (= res!313013 (not ((_ is Leaf!3881) (right!6286 (c!121420 input!756)))))))

(assert (=> b!689286 (=> res!313013 e!433215)))

(declare-fun b!689287 () Bool)

(assert (=> b!689287 (= e!433215 (inv!9491 (right!6286 (c!121420 input!756))))))

(assert (= (and d!232221 c!121442) b!689285))

(assert (= (and d!232221 (not c!121442)) b!689286))

(assert (= (and b!689286 (not res!313013)) b!689287))

(declare-fun m!945802 () Bool)

(assert (=> b!689285 m!945802))

(declare-fun m!945804 () Bool)

(assert (=> b!689287 m!945804))

(assert (=> b!689247 d!232221))

(declare-fun d!232223 () Bool)

(declare-fun c!121445 () Bool)

(assert (=> d!232223 (= c!121445 ((_ is Nil!7382) lt!284274))))

(declare-fun e!433218 () (InoxSet C!4248))

(assert (=> d!232223 (= (content!1184 lt!284274) e!433218)))

(declare-fun b!689292 () Bool)

(assert (=> b!689292 (= e!433218 ((as const (Array C!4248 Bool)) false))))

(declare-fun b!689293 () Bool)

(assert (=> b!689293 (= e!433218 ((_ map or) (store ((as const (Array C!4248 Bool)) false) (h!12783 lt!284274) true) (content!1184 (t!87207 lt!284274))))))

(assert (= (and d!232223 c!121445) b!689292))

(assert (= (and d!232223 (not c!121445)) b!689293))

(declare-fun m!945806 () Bool)

(assert (=> b!689293 m!945806))

(declare-fun m!945808 () Bool)

(assert (=> b!689293 m!945808))

(assert (=> d!232201 d!232223))

(declare-fun d!232225 () Bool)

(declare-fun c!121446 () Bool)

(assert (=> d!232225 (= c!121446 ((_ is Nil!7382) lt!284251))))

(declare-fun e!433219 () (InoxSet C!4248))

(assert (=> d!232225 (= (content!1184 lt!284251) e!433219)))

(declare-fun b!689294 () Bool)

(assert (=> b!689294 (= e!433219 ((as const (Array C!4248 Bool)) false))))

(declare-fun b!689295 () Bool)

(assert (=> b!689295 (= e!433219 ((_ map or) (store ((as const (Array C!4248 Bool)) false) (h!12783 lt!284251) true) (content!1184 (t!87207 lt!284251))))))

(assert (= (and d!232225 c!121446) b!689294))

(assert (= (and d!232225 (not c!121446)) b!689295))

(declare-fun m!945810 () Bool)

(assert (=> b!689295 m!945810))

(declare-fun m!945812 () Bool)

(assert (=> b!689295 m!945812))

(assert (=> d!232201 d!232225))

(declare-fun d!232227 () Bool)

(declare-fun c!121447 () Bool)

(assert (=> d!232227 (= c!121447 ((_ is Nil!7382) lt!284250))))

(declare-fun e!433220 () (InoxSet C!4248))

(assert (=> d!232227 (= (content!1184 lt!284250) e!433220)))

(declare-fun b!689296 () Bool)

(assert (=> b!689296 (= e!433220 ((as const (Array C!4248 Bool)) false))))

(declare-fun b!689297 () Bool)

(assert (=> b!689297 (= e!433220 ((_ map or) (store ((as const (Array C!4248 Bool)) false) (h!12783 lt!284250) true) (content!1184 (t!87207 lt!284250))))))

(assert (= (and d!232227 c!121447) b!689296))

(assert (= (and d!232227 (not c!121447)) b!689297))

(declare-fun m!945814 () Bool)

(assert (=> b!689297 m!945814))

(declare-fun m!945816 () Bool)

(assert (=> b!689297 m!945816))

(assert (=> d!232201 d!232227))

(declare-fun d!232229 () Bool)

(declare-fun res!313020 () Bool)

(declare-fun e!433223 () Bool)

(assert (=> d!232229 (=> (not res!313020) (not e!433223))))

(declare-fun size!6068 (Conc!2616) Int)

(assert (=> d!232229 (= res!313020 (= (csize!5462 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))) (+ (size!6068 (left!5956 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))) (size!6068 (right!6286 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))))))))

(assert (=> d!232229 (= (inv!9490 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))) e!433223)))

(declare-fun b!689304 () Bool)

(declare-fun res!313021 () Bool)

(assert (=> b!689304 (=> (not res!313021) (not e!433223))))

(assert (=> b!689304 (= res!313021 (and (not (= (left!5956 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))) Empty!2616)) (not (= (right!6286 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))) Empty!2616))))))

(declare-fun b!689305 () Bool)

(declare-fun res!313022 () Bool)

(assert (=> b!689305 (=> (not res!313022) (not e!433223))))

(assert (=> b!689305 (= res!313022 (= (cheight!2827 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))) (+ (max!0 (height!316 (left!5956 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))) (height!316 (right!6286 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))))) 1)))))

(declare-fun b!689306 () Bool)

(assert (=> b!689306 (= e!433223 (<= 0 (cheight!2827 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))))))

(assert (= (and d!232229 res!313020) b!689304))

(assert (= (and b!689304 res!313021) b!689305))

(assert (= (and b!689305 res!313022) b!689306))

(declare-fun m!945818 () Bool)

(assert (=> d!232229 m!945818))

(declare-fun m!945820 () Bool)

(assert (=> d!232229 m!945820))

(assert (=> b!689305 m!945782))

(assert (=> b!689305 m!945784))

(assert (=> b!689305 m!945782))

(assert (=> b!689305 m!945784))

(declare-fun m!945822 () Bool)

(assert (=> b!689305 m!945822))

(assert (=> b!689084 d!232229))

(declare-fun d!232231 () Bool)

(assert (=> d!232231 (= (list!3115 (_2!4273 lt!284266)) (list!3117 (c!121420 (_2!4273 lt!284266))))))

(declare-fun bs!136387 () Bool)

(assert (= bs!136387 d!232231))

(declare-fun m!945824 () Bool)

(assert (=> bs!136387 m!945824))

(assert (=> b!689055 d!232231))

(assert (=> b!689055 d!232203))

(declare-fun bs!136388 () Bool)

(declare-fun d!232233 () Bool)

(assert (= bs!136388 (and d!232233 d!232209)))

(declare-fun lambda!21441 () Int)

(assert (=> bs!136388 (= lambda!21441 lambda!21438)))

(declare-fun bs!136389 () Bool)

(assert (= bs!136389 (and d!232233 d!232211)))

(assert (=> bs!136389 (= lambda!21441 lambda!21439)))

(declare-fun bs!136390 () Bool)

(assert (= bs!136390 (and d!232233 d!232215)))

(assert (=> bs!136390 (= lambda!21441 lambda!21440)))

(assert (=> d!232233 (= (inv!9492 setElem!3620) (forall!1946 (exprs!733 setElem!3620) lambda!21441))))

(declare-fun bs!136391 () Bool)

(assert (= bs!136391 d!232233))

(declare-fun m!945826 () Bool)

(assert (=> bs!136391 m!945826))

(assert (=> setNonEmpty!3620 d!232233))

(declare-fun d!232235 () Bool)

(declare-fun c!121452 () Bool)

(assert (=> d!232235 (= c!121452 ((_ is Empty!2616) (c!121420 (_2!4273 lt!284252))))))

(declare-fun e!433228 () List!7396)

(assert (=> d!232235 (= (list!3117 (c!121420 (_2!4273 lt!284252))) e!433228)))

(declare-fun b!689317 () Bool)

(declare-fun e!433229 () List!7396)

(assert (=> b!689317 (= e!433229 (list!3118 (xs!5265 (c!121420 (_2!4273 lt!284252)))))))

(declare-fun b!689315 () Bool)

(assert (=> b!689315 (= e!433228 Nil!7382)))

(declare-fun b!689316 () Bool)

(assert (=> b!689316 (= e!433228 e!433229)))

(declare-fun c!121453 () Bool)

(assert (=> b!689316 (= c!121453 ((_ is Leaf!3881) (c!121420 (_2!4273 lt!284252))))))

(declare-fun b!689318 () Bool)

(assert (=> b!689318 (= e!433229 (++!1938 (list!3117 (left!5956 (c!121420 (_2!4273 lt!284252)))) (list!3117 (right!6286 (c!121420 (_2!4273 lt!284252))))))))

(assert (= (and d!232235 c!121452) b!689315))

(assert (= (and d!232235 (not c!121452)) b!689316))

(assert (= (and b!689316 c!121453) b!689317))

(assert (= (and b!689316 (not c!121453)) b!689318))

(declare-fun m!945828 () Bool)

(assert (=> b!689317 m!945828))

(declare-fun m!945830 () Bool)

(assert (=> b!689318 m!945830))

(declare-fun m!945832 () Bool)

(assert (=> b!689318 m!945832))

(assert (=> b!689318 m!945830))

(assert (=> b!689318 m!945832))

(declare-fun m!945834 () Bool)

(assert (=> b!689318 m!945834))

(assert (=> d!232177 d!232235))

(declare-fun bs!136392 () Bool)

(declare-fun d!232237 () Bool)

(assert (= bs!136392 (and d!232237 d!232209)))

(declare-fun lambda!21442 () Int)

(assert (=> bs!136392 (= lambda!21442 lambda!21438)))

(declare-fun bs!136393 () Bool)

(assert (= bs!136393 (and d!232237 d!232211)))

(assert (=> bs!136393 (= lambda!21442 lambda!21439)))

(declare-fun bs!136394 () Bool)

(assert (= bs!136394 (and d!232237 d!232215)))

(assert (=> bs!136394 (= lambda!21442 lambda!21440)))

(declare-fun bs!136395 () Bool)

(assert (= bs!136395 (and d!232237 d!232233)))

(assert (=> bs!136395 (= lambda!21442 lambda!21441)))

(assert (=> d!232237 (= (inv!9492 setElem!3631) (forall!1946 (exprs!733 setElem!3631) lambda!21442))))

(declare-fun bs!136396 () Bool)

(assert (= bs!136396 d!232237))

(declare-fun m!945836 () Bool)

(assert (=> bs!136396 m!945836))

(assert (=> setNonEmpty!3631 d!232237))

(declare-fun d!232239 () Bool)

(declare-fun res!313027 () Bool)

(declare-fun e!433232 () Bool)

(assert (=> d!232239 (=> (not res!313027) (not e!433232))))

(declare-fun valid!630 (MutableMap!713) Bool)

(assert (=> d!232239 (= res!313027 (valid!630 (cache!1100 cacheUp!457)))))

(assert (=> d!232239 (= (validCacheMapUp!58 (cache!1100 cacheUp!457)) e!433232)))

(declare-fun b!689323 () Bool)

(declare-fun res!313028 () Bool)

(assert (=> b!689323 (=> (not res!313028) (not e!433232))))

(declare-fun invariantList!132 (List!7402) Bool)

(declare-datatypes ((ListMap!313 0))(
  ( (ListMap!314 (toList!497 List!7402)) )
))
(declare-fun map!1642 (MutableMap!713) ListMap!313)

(assert (=> b!689323 (= res!313028 (invariantList!132 (toList!497 (map!1642 (cache!1100 cacheUp!457)))))))

(declare-fun b!689324 () Bool)

(declare-fun lambda!21445 () Int)

(declare-fun forall!1947 (List!7402 Int) Bool)

(assert (=> b!689324 (= e!433232 (forall!1947 (toList!497 (map!1642 (cache!1100 cacheUp!457))) lambda!21445))))

(assert (= (and d!232239 res!313027) b!689323))

(assert (= (and b!689323 res!313028) b!689324))

(declare-fun m!945839 () Bool)

(assert (=> d!232239 m!945839))

(declare-fun m!945841 () Bool)

(assert (=> b!689323 m!945841))

(declare-fun m!945843 () Bool)

(assert (=> b!689323 m!945843))

(assert (=> b!689324 m!945841))

(declare-fun m!945845 () Bool)

(assert (=> b!689324 m!945845))

(assert (=> b!689074 d!232239))

(declare-fun d!232241 () Bool)

(assert (=> d!232241 (= (list!3114 (_1!4273 lt!284266)) (list!3116 (c!121421 (_1!4273 lt!284266))))))

(declare-fun bs!136397 () Bool)

(assert (= bs!136397 d!232241))

(declare-fun m!945847 () Bool)

(assert (=> bs!136397 m!945847))

(assert (=> b!689057 d!232241))

(declare-fun d!232243 () Bool)

(declare-fun e!433240 () Bool)

(assert (=> d!232243 e!433240))

(declare-fun c!121459 () Bool)

(declare-fun lt!284281 () tuple2!7758)

(declare-fun size!6069 (List!7399) Int)

(assert (=> d!232243 (= c!121459 (> (size!6069 (_1!4278 lt!284281)) 0))))

(declare-fun e!433239 () tuple2!7758)

(assert (=> d!232243 (= lt!284281 e!433239)))

(declare-fun c!121458 () Bool)

(declare-datatypes ((tuple2!7762 0))(
  ( (tuple2!7763 (_1!4280 Token!2682) (_2!4280 List!7396)) )
))
(declare-datatypes ((Option!1705 0))(
  ( (None!1704) (Some!1704 (v!17601 tuple2!7762)) )
))
(declare-fun lt!284282 () Option!1705)

(assert (=> d!232243 (= c!121458 ((_ is Some!1704) lt!284282))))

(declare-fun maxPrefix!866 (LexerInterface!1301 List!7400 List!7396) Option!1705)

(assert (=> d!232243 (= lt!284282 (maxPrefix!866 thiss!12183 rules!1357 (list!3115 input!756)))))

(assert (=> d!232243 (= (lexList!321 thiss!12183 rules!1357 (list!3115 input!756)) lt!284281)))

(declare-fun b!689335 () Bool)

(declare-fun lt!284283 () tuple2!7758)

(assert (=> b!689335 (= e!433239 (tuple2!7759 (Cons!7385 (_1!4280 (v!17601 lt!284282)) (_1!4278 lt!284283)) (_2!4278 lt!284283)))))

(assert (=> b!689335 (= lt!284283 (lexList!321 thiss!12183 rules!1357 (_2!4280 (v!17601 lt!284282))))))

(declare-fun b!689336 () Bool)

(declare-fun e!433241 () Bool)

(assert (=> b!689336 (= e!433240 e!433241)))

(declare-fun res!313031 () Bool)

(assert (=> b!689336 (= res!313031 (< (size!6067 (_2!4278 lt!284281)) (size!6067 (list!3115 input!756))))))

(assert (=> b!689336 (=> (not res!313031) (not e!433241))))

(declare-fun b!689337 () Bool)

(assert (=> b!689337 (= e!433240 (= (_2!4278 lt!284281) (list!3115 input!756)))))

(declare-fun b!689338 () Bool)

(declare-fun isEmpty!4854 (List!7399) Bool)

(assert (=> b!689338 (= e!433241 (not (isEmpty!4854 (_1!4278 lt!284281))))))

(declare-fun b!689339 () Bool)

(assert (=> b!689339 (= e!433239 (tuple2!7759 Nil!7385 (list!3115 input!756)))))

(assert (= (and d!232243 c!121458) b!689335))

(assert (= (and d!232243 (not c!121458)) b!689339))

(assert (= (and d!232243 c!121459) b!689336))

(assert (= (and d!232243 (not c!121459)) b!689337))

(assert (= (and b!689336 res!313031) b!689338))

(declare-fun m!945849 () Bool)

(assert (=> d!232243 m!945849))

(assert (=> d!232243 m!945522))

(declare-fun m!945851 () Bool)

(assert (=> d!232243 m!945851))

(declare-fun m!945853 () Bool)

(assert (=> b!689335 m!945853))

(declare-fun m!945855 () Bool)

(assert (=> b!689336 m!945855))

(assert (=> b!689336 m!945522))

(declare-fun m!945857 () Bool)

(assert (=> b!689336 m!945857))

(declare-fun m!945859 () Bool)

(assert (=> b!689338 m!945859))

(assert (=> b!689057 d!232243))

(assert (=> b!689057 d!232203))

(declare-fun bs!136398 () Bool)

(declare-fun d!232245 () Bool)

(assert (= bs!136398 (and d!232245 d!232233)))

(declare-fun lambda!21446 () Int)

(assert (=> bs!136398 (= lambda!21446 lambda!21441)))

(declare-fun bs!136399 () Bool)

(assert (= bs!136399 (and d!232245 d!232211)))

(assert (=> bs!136399 (= lambda!21446 lambda!21439)))

(declare-fun bs!136400 () Bool)

(assert (= bs!136400 (and d!232245 d!232215)))

(assert (=> bs!136400 (= lambda!21446 lambda!21440)))

(declare-fun bs!136401 () Bool)

(assert (= bs!136401 (and d!232245 d!232209)))

(assert (=> bs!136401 (= lambda!21446 lambda!21438)))

(declare-fun bs!136402 () Bool)

(assert (= bs!136402 (and d!232245 d!232237)))

(assert (=> bs!136402 (= lambda!21446 lambda!21442)))

(assert (=> d!232245 (= (inv!9492 setElem!3632) (forall!1946 (exprs!733 setElem!3632) lambda!21446))))

(declare-fun bs!136403 () Bool)

(assert (= bs!136403 d!232245))

(declare-fun m!945861 () Bool)

(assert (=> bs!136403 m!945861))

(assert (=> setNonEmpty!3632 d!232245))

(declare-fun d!232247 () Bool)

(declare-fun res!313032 () Bool)

(declare-fun e!433242 () Bool)

(assert (=> d!232247 (=> (not res!313032) (not e!433242))))

(assert (=> d!232247 (= res!313032 (<= (size!6067 (list!3118 (xs!5265 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))))) 512))))

(assert (=> d!232247 (= (inv!9491 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))) e!433242)))

(declare-fun b!689340 () Bool)

(declare-fun res!313033 () Bool)

(assert (=> b!689340 (=> (not res!313033) (not e!433242))))

(assert (=> b!689340 (= res!313033 (= (csize!5463 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))) (size!6067 (list!3118 (xs!5265 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))))))))

(declare-fun b!689341 () Bool)

(assert (=> b!689341 (= e!433242 (and (> (csize!5463 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))) 0) (<= (csize!5463 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))) 512)))))

(assert (= (and d!232247 res!313032) b!689340))

(assert (= (and b!689340 res!313033) b!689341))

(declare-fun m!945863 () Bool)

(assert (=> d!232247 m!945863))

(assert (=> d!232247 m!945863))

(declare-fun m!945865 () Bool)

(assert (=> d!232247 m!945865))

(assert (=> b!689340 m!945863))

(assert (=> b!689340 m!945863))

(assert (=> b!689340 m!945865))

(assert (=> b!689086 d!232247))

(declare-fun bs!136404 () Bool)

(declare-fun d!232249 () Bool)

(assert (= bs!136404 (and d!232249 d!232233)))

(declare-fun lambda!21447 () Int)

(assert (=> bs!136404 (= lambda!21447 lambda!21441)))

(declare-fun bs!136405 () Bool)

(assert (= bs!136405 (and d!232249 d!232245)))

(assert (=> bs!136405 (= lambda!21447 lambda!21446)))

(declare-fun bs!136406 () Bool)

(assert (= bs!136406 (and d!232249 d!232211)))

(assert (=> bs!136406 (= lambda!21447 lambda!21439)))

(declare-fun bs!136407 () Bool)

(assert (= bs!136407 (and d!232249 d!232215)))

(assert (=> bs!136407 (= lambda!21447 lambda!21440)))

(declare-fun bs!136408 () Bool)

(assert (= bs!136408 (and d!232249 d!232209)))

(assert (=> bs!136408 (= lambda!21447 lambda!21438)))

(declare-fun bs!136409 () Bool)

(assert (= bs!136409 (and d!232249 d!232237)))

(assert (=> bs!136409 (= lambda!21447 lambda!21442)))

(assert (=> d!232249 (= (inv!9492 (_1!4276 (_1!4277 (h!12789 mapValue!2968)))) (forall!1946 (exprs!733 (_1!4276 (_1!4277 (h!12789 mapValue!2968)))) lambda!21447))))

(declare-fun bs!136410 () Bool)

(assert (= bs!136410 d!232249))

(declare-fun m!945867 () Bool)

(assert (=> bs!136410 m!945867))

(assert (=> b!689158 d!232249))

(declare-fun d!232251 () Bool)

(assert (=> d!232251 true))

(declare-fun order!5341 () Int)

(declare-fun lambda!21450 () Int)

(declare-fun order!5343 () Int)

(declare-fun dynLambda!3877 (Int Int) Int)

(declare-fun dynLambda!3878 (Int Int) Int)

(assert (=> d!232251 (< (dynLambda!3877 order!5341 (toValue!2444 (transformation!1486 (h!12787 rules!1357)))) (dynLambda!3878 order!5343 lambda!21450))))

(declare-fun Forall2!273 (Int) Bool)

(assert (=> d!232251 (= (equivClasses!543 (toChars!2303 (transformation!1486 (h!12787 rules!1357))) (toValue!2444 (transformation!1486 (h!12787 rules!1357)))) (Forall2!273 lambda!21450))))

(declare-fun bs!136411 () Bool)

(assert (= bs!136411 d!232251))

(declare-fun m!945869 () Bool)

(assert (=> bs!136411 m!945869))

(assert (=> b!689089 d!232251))

(declare-fun b!689357 () Bool)

(declare-fun e!433250 () List!7399)

(assert (=> b!689357 (= e!433250 (++!1939 (list!3116 (left!5957 (c!121421 (BalanceConc!5247 Empty!2617)))) (list!3116 (right!6287 (c!121421 (BalanceConc!5247 Empty!2617))))))))

(declare-fun b!689355 () Bool)

(declare-fun e!433249 () List!7399)

(assert (=> b!689355 (= e!433249 e!433250)))

(declare-fun c!121465 () Bool)

(assert (=> b!689355 (= c!121465 ((_ is Leaf!3882) (c!121421 (BalanceConc!5247 Empty!2617))))))

(declare-fun d!232253 () Bool)

(declare-fun c!121464 () Bool)

(assert (=> d!232253 (= c!121464 ((_ is Empty!2617) (c!121421 (BalanceConc!5247 Empty!2617))))))

(assert (=> d!232253 (= (list!3116 (c!121421 (BalanceConc!5247 Empty!2617))) e!433249)))

(declare-fun b!689354 () Bool)

(assert (=> b!689354 (= e!433249 Nil!7385)))

(declare-fun b!689356 () Bool)

(declare-fun list!3119 (IArray!5235) List!7399)

(assert (=> b!689356 (= e!433250 (list!3119 (xs!5266 (c!121421 (BalanceConc!5247 Empty!2617)))))))

(assert (= (and d!232253 c!121464) b!689354))

(assert (= (and d!232253 (not c!121464)) b!689355))

(assert (= (and b!689355 c!121465) b!689356))

(assert (= (and b!689355 (not c!121465)) b!689357))

(declare-fun m!945871 () Bool)

(assert (=> b!689357 m!945871))

(declare-fun m!945873 () Bool)

(assert (=> b!689357 m!945873))

(assert (=> b!689357 m!945871))

(assert (=> b!689357 m!945873))

(declare-fun m!945875 () Bool)

(assert (=> b!689357 m!945875))

(declare-fun m!945877 () Bool)

(assert (=> b!689356 m!945877))

(assert (=> d!232163 d!232253))

(declare-fun b!689370 () Bool)

(declare-fun e!433255 () Bool)

(declare-fun isEmpty!4855 (Conc!2617) Bool)

(assert (=> b!689370 (= e!433255 (not (isEmpty!4855 (right!6287 (++!1940 (c!121421 (BalanceConc!5247 Empty!2617)) (c!121421 (_1!4273 lt!284253)))))))))

(declare-fun b!689371 () Bool)

(declare-fun res!313050 () Bool)

(assert (=> b!689371 (=> (not res!313050) (not e!433255))))

(assert (=> b!689371 (= res!313050 (<= (- (height!315 (left!5957 (++!1940 (c!121421 (BalanceConc!5247 Empty!2617)) (c!121421 (_1!4273 lt!284253))))) (height!315 (right!6287 (++!1940 (c!121421 (BalanceConc!5247 Empty!2617)) (c!121421 (_1!4273 lt!284253)))))) 1))))

(declare-fun b!689372 () Bool)

(declare-fun res!313049 () Bool)

(assert (=> b!689372 (=> (not res!313049) (not e!433255))))

(assert (=> b!689372 (= res!313049 (not (isEmpty!4855 (left!5957 (++!1940 (c!121421 (BalanceConc!5247 Empty!2617)) (c!121421 (_1!4273 lt!284253)))))))))

(declare-fun d!232255 () Bool)

(declare-fun res!313048 () Bool)

(declare-fun e!433256 () Bool)

(assert (=> d!232255 (=> res!313048 e!433256)))

(assert (=> d!232255 (= res!313048 (not ((_ is Node!2617) (++!1940 (c!121421 (BalanceConc!5247 Empty!2617)) (c!121421 (_1!4273 lt!284253))))))))

(assert (=> d!232255 (= (isBalanced!692 (++!1940 (c!121421 (BalanceConc!5247 Empty!2617)) (c!121421 (_1!4273 lt!284253)))) e!433256)))

(declare-fun b!689373 () Bool)

(assert (=> b!689373 (= e!433256 e!433255)))

(declare-fun res!313052 () Bool)

(assert (=> b!689373 (=> (not res!313052) (not e!433255))))

(assert (=> b!689373 (= res!313052 (<= (- 1) (- (height!315 (left!5957 (++!1940 (c!121421 (BalanceConc!5247 Empty!2617)) (c!121421 (_1!4273 lt!284253))))) (height!315 (right!6287 (++!1940 (c!121421 (BalanceConc!5247 Empty!2617)) (c!121421 (_1!4273 lt!284253))))))))))

(declare-fun b!689374 () Bool)

(declare-fun res!313051 () Bool)

(assert (=> b!689374 (=> (not res!313051) (not e!433255))))

(assert (=> b!689374 (= res!313051 (isBalanced!692 (left!5957 (++!1940 (c!121421 (BalanceConc!5247 Empty!2617)) (c!121421 (_1!4273 lt!284253))))))))

(declare-fun b!689375 () Bool)

(declare-fun res!313053 () Bool)

(assert (=> b!689375 (=> (not res!313053) (not e!433255))))

(assert (=> b!689375 (= res!313053 (isBalanced!692 (right!6287 (++!1940 (c!121421 (BalanceConc!5247 Empty!2617)) (c!121421 (_1!4273 lt!284253))))))))

(assert (= (and d!232255 (not res!313048)) b!689373))

(assert (= (and b!689373 res!313052) b!689371))

(assert (= (and b!689371 res!313050) b!689374))

(assert (= (and b!689374 res!313051) b!689375))

(assert (= (and b!689375 res!313053) b!689372))

(assert (= (and b!689372 res!313049) b!689370))

(declare-fun m!945879 () Bool)

(assert (=> b!689370 m!945879))

(declare-fun m!945881 () Bool)

(assert (=> b!689371 m!945881))

(declare-fun m!945883 () Bool)

(assert (=> b!689371 m!945883))

(declare-fun m!945885 () Bool)

(assert (=> b!689372 m!945885))

(declare-fun m!945887 () Bool)

(assert (=> b!689374 m!945887))

(assert (=> b!689373 m!945881))

(assert (=> b!689373 m!945883))

(declare-fun m!945889 () Bool)

(assert (=> b!689375 m!945889))

(assert (=> b!689037 d!232255))

(declare-fun b!689418 () Bool)

(declare-fun e!433279 () Conc!2617)

(assert (=> b!689418 (= e!433279 (c!121421 (BalanceConc!5247 Empty!2617)))))

(declare-fun bm!43562 () Bool)

(declare-fun call!43582 () Conc!2617)

(declare-fun call!43577 () Conc!2617)

(assert (=> bm!43562 (= call!43582 call!43577)))

(declare-fun d!232257 () Bool)

(declare-fun e!433286 () Bool)

(assert (=> d!232257 e!433286))

(declare-fun res!313067 () Bool)

(assert (=> d!232257 (=> (not res!313067) (not e!433286))))

(assert (=> d!232257 (= res!313067 (appendAssocInst!132 (c!121421 (BalanceConc!5247 Empty!2617)) (c!121421 (_1!4273 lt!284253))))))

(declare-fun lt!284292 () Conc!2617)

(declare-fun e!433285 () Conc!2617)

(assert (=> d!232257 (= lt!284292 e!433285)))

(declare-fun c!121488 () Bool)

(assert (=> d!232257 (= c!121488 (= (c!121421 (BalanceConc!5247 Empty!2617)) Empty!2617))))

(declare-fun e!433283 () Bool)

(assert (=> d!232257 e!433283))

(declare-fun res!313066 () Bool)

(assert (=> d!232257 (=> (not res!313066) (not e!433283))))

(assert (=> d!232257 (= res!313066 (isBalanced!692 (c!121421 (BalanceConc!5247 Empty!2617))))))

(assert (=> d!232257 (= (++!1940 (c!121421 (BalanceConc!5247 Empty!2617)) (c!121421 (_1!4273 lt!284253))) lt!284292)))

(declare-fun b!689419 () Bool)

(declare-fun c!121483 () Bool)

(declare-fun call!43581 () Int)

(declare-fun call!43575 () Int)

(assert (=> b!689419 (= c!121483 (>= call!43581 call!43575))))

(declare-fun e!433284 () Conc!2617)

(declare-fun e!433281 () Conc!2617)

(assert (=> b!689419 (= e!433284 e!433281)))

(declare-fun bm!43563 () Bool)

(declare-fun call!43578 () Conc!2617)

(declare-fun call!43570 () Conc!2617)

(assert (=> bm!43563 (= call!43578 call!43570)))

(declare-fun c!121485 () Bool)

(declare-fun lt!284295 () Conc!2617)

(declare-fun c!121486 () Bool)

(declare-fun lt!284294 () Conc!2617)

(declare-fun c!121489 () Bool)

(declare-fun bm!43564 () Bool)

(declare-fun call!43572 () Conc!2617)

(declare-fun <>!43 (Conc!2617 Conc!2617) Conc!2617)

(assert (=> bm!43564 (= call!43570 (<>!43 (ite c!121486 (ite c!121483 (left!5957 (c!121421 (BalanceConc!5247 Empty!2617))) (ite c!121489 (left!5957 (right!6287 (c!121421 (BalanceConc!5247 Empty!2617)))) (left!5957 (c!121421 (BalanceConc!5247 Empty!2617))))) (ite c!121485 lt!284295 (right!6287 (left!5957 (c!121421 (_1!4273 lt!284253)))))) (ite c!121486 (ite c!121483 call!43572 (ite c!121489 lt!284294 (left!5957 (right!6287 (c!121421 (BalanceConc!5247 Empty!2617)))))) (ite c!121485 (right!6287 (left!5957 (c!121421 (_1!4273 lt!284253)))) (right!6287 (c!121421 (_1!4273 lt!284253)))))))))

(declare-fun b!689420 () Bool)

(declare-fun e!433277 () Conc!2617)

(declare-fun call!43569 () Conc!2617)

(assert (=> b!689420 (= e!433277 call!43569)))

(declare-fun bm!43565 () Bool)

(assert (=> bm!43565 (= call!43572 call!43577)))

(declare-fun b!689421 () Bool)

(declare-fun res!313068 () Bool)

(assert (=> b!689421 (=> (not res!313068) (not e!433286))))

(assert (=> b!689421 (= res!313068 (isBalanced!692 lt!284292))))

(declare-fun b!689422 () Bool)

(declare-fun res!313064 () Bool)

(assert (=> b!689422 (=> (not res!313064) (not e!433286))))

(assert (=> b!689422 (= res!313064 (<= (height!315 lt!284292) (+ (max!0 (height!315 (c!121421 (BalanceConc!5247 Empty!2617))) (height!315 (c!121421 (_1!4273 lt!284253)))) 1)))))

(declare-fun b!689423 () Bool)

(assert (=> b!689423 (= e!433286 (= (list!3116 lt!284292) (++!1939 (list!3116 (c!121421 (BalanceConc!5247 Empty!2617))) (list!3116 (c!121421 (_1!4273 lt!284253))))))))

(declare-fun b!689424 () Bool)

(declare-fun e!433280 () Conc!2617)

(assert (=> b!689424 (= e!433280 e!433284)))

(declare-fun lt!284293 () Int)

(assert (=> b!689424 (= c!121486 (< lt!284293 (- 1)))))

(declare-fun bm!43566 () Bool)

(declare-fun call!43571 () Conc!2617)

(assert (=> bm!43566 (= call!43571 call!43578)))

(declare-fun b!689425 () Bool)

(declare-fun e!433282 () Conc!2617)

(assert (=> b!689425 (= e!433282 e!433277)))

(assert (=> b!689425 (= lt!284295 call!43582)))

(declare-fun call!43576 () Int)

(declare-fun call!43580 () Int)

(assert (=> b!689425 (= c!121485 (= call!43576 (- call!43580 3)))))

(declare-fun bm!43567 () Bool)

(declare-fun call!43574 () Conc!2617)

(declare-fun call!43579 () Conc!2617)

(assert (=> bm!43567 (= call!43574 call!43579)))

(declare-fun b!689426 () Bool)

(declare-fun e!433278 () Conc!2617)

(declare-fun call!43573 () Conc!2617)

(assert (=> b!689426 (= e!433278 call!43573)))

(declare-fun b!689427 () Bool)

(declare-fun c!121487 () Bool)

(assert (=> b!689427 (= c!121487 (and (<= (- 1) lt!284293) (<= lt!284293 1)))))

(assert (=> b!689427 (= lt!284293 (- (height!315 (c!121421 (_1!4273 lt!284253))) (height!315 (c!121421 (BalanceConc!5247 Empty!2617)))))))

(assert (=> b!689427 (= e!433279 e!433280)))

(declare-fun b!689428 () Bool)

(assert (=> b!689428 (= e!433278 call!43573)))

(declare-fun b!689429 () Bool)

(assert (=> b!689429 (= e!433281 call!43578)))

(declare-fun b!689430 () Bool)

(assert (=> b!689430 (= e!433285 e!433279)))

(declare-fun c!121484 () Bool)

(assert (=> b!689430 (= c!121484 (= (c!121421 (_1!4273 lt!284253)) Empty!2617))))

(declare-fun bm!43568 () Bool)

(assert (=> bm!43568 (= call!43580 (height!315 (ite c!121486 (c!121421 (BalanceConc!5247 Empty!2617)) (c!121421 (_1!4273 lt!284253)))))))

(declare-fun bm!43569 () Bool)

(assert (=> bm!43569 (= call!43576 (height!315 (ite c!121486 lt!284294 lt!284295)))))

(declare-fun b!689431 () Bool)

(declare-fun c!121482 () Bool)

(assert (=> b!689431 (= c!121482 (>= call!43581 call!43575))))

(assert (=> b!689431 (= e!433284 e!433282)))

(declare-fun bm!43570 () Bool)

(assert (=> bm!43570 (= call!43577 (++!1940 (ite c!121486 (ite c!121483 (right!6287 (c!121421 (BalanceConc!5247 Empty!2617))) (right!6287 (right!6287 (c!121421 (BalanceConc!5247 Empty!2617))))) (c!121421 (BalanceConc!5247 Empty!2617))) (ite c!121486 (c!121421 (_1!4273 lt!284253)) (ite c!121482 (left!5957 (c!121421 (_1!4273 lt!284253))) (left!5957 (left!5957 (c!121421 (_1!4273 lt!284253))))))))))

(declare-fun bm!43571 () Bool)

(assert (=> bm!43571 (= call!43573 call!43574)))

(declare-fun bm!43572 () Bool)

(assert (=> bm!43572 (= call!43575 (height!315 (ite c!121486 (right!6287 (c!121421 (BalanceConc!5247 Empty!2617))) (left!5957 (c!121421 (_1!4273 lt!284253))))))))

(declare-fun b!689432 () Bool)

(assert (=> b!689432 (= e!433277 call!43569)))

(declare-fun b!689433 () Bool)

(declare-fun res!313065 () Bool)

(assert (=> b!689433 (=> (not res!313065) (not e!433286))))

(assert (=> b!689433 (= res!313065 (>= (height!315 lt!284292) (max!0 (height!315 (c!121421 (BalanceConc!5247 Empty!2617))) (height!315 (c!121421 (_1!4273 lt!284253))))))))

(declare-fun b!689434 () Bool)

(assert (=> b!689434 (= e!433280 call!43579)))

(declare-fun bm!43573 () Bool)

(declare-fun call!43567 () Conc!2617)

(assert (=> bm!43573 (= call!43567 call!43574)))

(declare-fun b!689435 () Bool)

(assert (=> b!689435 (= e!433282 call!43567)))

(declare-fun bm!43574 () Bool)

(declare-fun call!43568 () Conc!2617)

(assert (=> bm!43574 (= call!43579 (<>!43 (ite c!121487 (c!121421 (BalanceConc!5247 Empty!2617)) (ite c!121486 (ite c!121489 (left!5957 (c!121421 (BalanceConc!5247 Empty!2617))) call!43571) (ite c!121482 call!43582 (ite c!121485 call!43568 lt!284295)))) (ite c!121487 (c!121421 (_1!4273 lt!284253)) (ite c!121486 (ite c!121489 call!43571 lt!284294) (ite (or c!121482 c!121485) (right!6287 (c!121421 (_1!4273 lt!284253))) call!43568)))))))

(declare-fun b!689436 () Bool)

(assert (=> b!689436 (= e!433285 (c!121421 (_1!4273 lt!284253)))))

(declare-fun bm!43575 () Bool)

(assert (=> bm!43575 (= call!43581 (height!315 (ite c!121486 (left!5957 (c!121421 (BalanceConc!5247 Empty!2617))) (right!6287 (c!121421 (_1!4273 lt!284253))))))))

(declare-fun b!689437 () Bool)

(assert (=> b!689437 (= e!433281 e!433278)))

(assert (=> b!689437 (= lt!284294 call!43572)))

(assert (=> b!689437 (= c!121489 (= call!43576 (- call!43580 3)))))

(declare-fun bm!43576 () Bool)

(assert (=> bm!43576 (= call!43569 call!43567)))

(declare-fun b!689438 () Bool)

(assert (=> b!689438 (= e!433283 (isBalanced!692 (c!121421 (_1!4273 lt!284253))))))

(declare-fun bm!43577 () Bool)

(assert (=> bm!43577 (= call!43568 call!43570)))

(assert (= (and d!232257 res!313066) b!689438))

(assert (= (and d!232257 c!121488) b!689436))

(assert (= (and d!232257 (not c!121488)) b!689430))

(assert (= (and b!689430 c!121484) b!689418))

(assert (= (and b!689430 (not c!121484)) b!689427))

(assert (= (and b!689427 c!121487) b!689434))

(assert (= (and b!689427 (not c!121487)) b!689424))

(assert (= (and b!689424 c!121486) b!689419))

(assert (= (and b!689424 (not c!121486)) b!689431))

(assert (= (and b!689419 c!121483) b!689429))

(assert (= (and b!689419 (not c!121483)) b!689437))

(assert (= (and b!689437 c!121489) b!689426))

(assert (= (and b!689437 (not c!121489)) b!689428))

(assert (= (or b!689426 b!689428) bm!43566))

(assert (= (or b!689426 b!689428) bm!43571))

(assert (= (or b!689429 b!689437) bm!43565))

(assert (= (or b!689429 bm!43566) bm!43563))

(assert (= (and b!689431 c!121482) b!689435))

(assert (= (and b!689431 (not c!121482)) b!689425))

(assert (= (and b!689425 c!121485) b!689420))

(assert (= (and b!689425 (not c!121485)) b!689432))

(assert (= (or b!689420 b!689432) bm!43577))

(assert (= (or b!689420 b!689432) bm!43576))

(assert (= (or b!689435 b!689425) bm!43562))

(assert (= (or b!689435 bm!43576) bm!43573))

(assert (= (or b!689437 b!689425) bm!43569))

(assert (= (or b!689419 b!689431) bm!43575))

(assert (= (or bm!43563 bm!43577) bm!43564))

(assert (= (or bm!43565 bm!43562) bm!43570))

(assert (= (or b!689437 b!689425) bm!43568))

(assert (= (or bm!43571 bm!43573) bm!43567))

(assert (= (or b!689419 b!689431) bm!43572))

(assert (= (or b!689434 bm!43567) bm!43574))

(assert (= (and d!232257 res!313067) b!689421))

(assert (= (and b!689421 res!313068) b!689422))

(assert (= (and b!689422 res!313064) b!689433))

(assert (= (and b!689433 res!313065) b!689423))

(declare-fun m!945891 () Bool)

(assert (=> b!689438 m!945891))

(declare-fun m!945893 () Bool)

(assert (=> bm!43572 m!945893))

(declare-fun m!945895 () Bool)

(assert (=> bm!43569 m!945895))

(declare-fun m!945897 () Bool)

(assert (=> b!689422 m!945897))

(assert (=> b!689422 m!945590))

(assert (=> b!689422 m!945596))

(assert (=> b!689422 m!945590))

(assert (=> b!689422 m!945596))

(assert (=> b!689422 m!945598))

(declare-fun m!945899 () Bool)

(assert (=> bm!43574 m!945899))

(declare-fun m!945901 () Bool)

(assert (=> b!689423 m!945901))

(assert (=> b!689423 m!945632))

(assert (=> b!689423 m!945586))

(assert (=> b!689423 m!945632))

(assert (=> b!689423 m!945586))

(declare-fun m!945903 () Bool)

(assert (=> b!689423 m!945903))

(declare-fun m!945905 () Bool)

(assert (=> bm!43575 m!945905))

(assert (=> b!689427 m!945596))

(assert (=> b!689427 m!945590))

(assert (=> d!232257 m!945600))

(declare-fun m!945907 () Bool)

(assert (=> d!232257 m!945907))

(assert (=> b!689433 m!945897))

(assert (=> b!689433 m!945590))

(assert (=> b!689433 m!945596))

(assert (=> b!689433 m!945590))

(assert (=> b!689433 m!945596))

(assert (=> b!689433 m!945598))

(declare-fun m!945909 () Bool)

(assert (=> bm!43568 m!945909))

(declare-fun m!945911 () Bool)

(assert (=> bm!43570 m!945911))

(declare-fun m!945913 () Bool)

(assert (=> b!689421 m!945913))

(declare-fun m!945915 () Bool)

(assert (=> bm!43564 m!945915))

(assert (=> b!689037 d!232257))

(declare-fun d!232259 () Bool)

(declare-fun res!313075 () Bool)

(declare-fun e!433291 () Bool)

(assert (=> d!232259 (=> (not res!313075) (not e!433291))))

(declare-fun valid!631 (MutableMap!712) Bool)

(assert (=> d!232259 (= res!313075 (valid!631 (cache!1099 cacheDown!470)))))

(assert (=> d!232259 (= (validCacheMapDown!58 (cache!1099 cacheDown!470)) e!433291)))

(declare-fun b!689445 () Bool)

(declare-fun res!313076 () Bool)

(assert (=> b!689445 (=> (not res!313076) (not e!433291))))

(declare-fun invariantList!133 (List!7401) Bool)

(declare-datatypes ((ListMap!315 0))(
  ( (ListMap!316 (toList!498 List!7401)) )
))
(declare-fun map!1643 (MutableMap!712) ListMap!315)

(assert (=> b!689445 (= res!313076 (invariantList!133 (toList!498 (map!1643 (cache!1099 cacheDown!470)))))))

(declare-fun b!689446 () Bool)

(declare-fun lambda!21453 () Int)

(declare-fun forall!1948 (List!7401 Int) Bool)

(assert (=> b!689446 (= e!433291 (forall!1948 (toList!498 (map!1643 (cache!1099 cacheDown!470))) lambda!21453))))

(assert (= (and d!232259 res!313075) b!689445))

(assert (= (and b!689445 res!313076) b!689446))

(declare-fun m!945918 () Bool)

(assert (=> d!232259 m!945918))

(declare-fun m!945920 () Bool)

(assert (=> b!689445 m!945920))

(declare-fun m!945922 () Bool)

(assert (=> b!689445 m!945922))

(assert (=> b!689446 m!945920))

(declare-fun m!945924 () Bool)

(assert (=> b!689446 m!945924))

(assert (=> d!232145 d!232259))

(declare-fun bs!136412 () Bool)

(declare-fun d!232261 () Bool)

(assert (= bs!136412 (and d!232261 d!232233)))

(declare-fun lambda!21454 () Int)

(assert (=> bs!136412 (= lambda!21454 lambda!21441)))

(declare-fun bs!136413 () Bool)

(assert (= bs!136413 (and d!232261 d!232245)))

(assert (=> bs!136413 (= lambda!21454 lambda!21446)))

(declare-fun bs!136414 () Bool)

(assert (= bs!136414 (and d!232261 d!232211)))

(assert (=> bs!136414 (= lambda!21454 lambda!21439)))

(declare-fun bs!136415 () Bool)

(assert (= bs!136415 (and d!232261 d!232215)))

(assert (=> bs!136415 (= lambda!21454 lambda!21440)))

(declare-fun bs!136416 () Bool)

(assert (= bs!136416 (and d!232261 d!232209)))

(assert (=> bs!136416 (= lambda!21454 lambda!21438)))

(declare-fun bs!136417 () Bool)

(assert (= bs!136417 (and d!232261 d!232249)))

(assert (=> bs!136417 (= lambda!21454 lambda!21447)))

(declare-fun bs!136418 () Bool)

(assert (= bs!136418 (and d!232261 d!232237)))

(assert (=> bs!136418 (= lambda!21454 lambda!21442)))

(assert (=> d!232261 (= (inv!9492 setElem!3636) (forall!1946 (exprs!733 setElem!3636) lambda!21454))))

(declare-fun bs!136419 () Bool)

(assert (= bs!136419 d!232261))

(declare-fun m!945926 () Bool)

(assert (=> bs!136419 m!945926))

(assert (=> setNonEmpty!3636 d!232261))

(declare-fun d!232263 () Bool)

(assert (=> d!232263 true))

(declare-fun lt!284298 () Bool)

(declare-fun rulesValidInductive!517 (LexerInterface!1301 List!7400) Bool)

(assert (=> d!232263 (= lt!284298 (rulesValidInductive!517 thiss!12183 rules!1357))))

(declare-fun lambda!21457 () Int)

(declare-fun forall!1949 (List!7400 Int) Bool)

(assert (=> d!232263 (= lt!284298 (forall!1949 rules!1357 lambda!21457))))

(assert (=> d!232263 (= (rulesValid!525 thiss!12183 rules!1357) lt!284298)))

(declare-fun bs!136420 () Bool)

(assert (= bs!136420 d!232263))

(declare-fun m!945928 () Bool)

(assert (=> bs!136420 m!945928))

(declare-fun m!945930 () Bool)

(assert (=> bs!136420 m!945930))

(assert (=> d!232143 d!232263))

(assert (=> b!689059 d!232231))

(assert (=> b!689059 d!232243))

(assert (=> b!689059 d!232203))

(declare-fun bs!136421 () Bool)

(declare-fun d!232265 () Bool)

(assert (= bs!136421 (and d!232265 d!232233)))

(declare-fun lambda!21458 () Int)

(assert (=> bs!136421 (= lambda!21458 lambda!21441)))

(declare-fun bs!136422 () Bool)

(assert (= bs!136422 (and d!232265 d!232261)))

(assert (=> bs!136422 (= lambda!21458 lambda!21454)))

(declare-fun bs!136423 () Bool)

(assert (= bs!136423 (and d!232265 d!232245)))

(assert (=> bs!136423 (= lambda!21458 lambda!21446)))

(declare-fun bs!136424 () Bool)

(assert (= bs!136424 (and d!232265 d!232211)))

(assert (=> bs!136424 (= lambda!21458 lambda!21439)))

(declare-fun bs!136425 () Bool)

(assert (= bs!136425 (and d!232265 d!232215)))

(assert (=> bs!136425 (= lambda!21458 lambda!21440)))

(declare-fun bs!136426 () Bool)

(assert (= bs!136426 (and d!232265 d!232209)))

(assert (=> bs!136426 (= lambda!21458 lambda!21438)))

(declare-fun bs!136427 () Bool)

(assert (= bs!136427 (and d!232265 d!232249)))

(assert (=> bs!136427 (= lambda!21458 lambda!21447)))

(declare-fun bs!136428 () Bool)

(assert (= bs!136428 (and d!232265 d!232237)))

(assert (=> bs!136428 (= lambda!21458 lambda!21442)))

(assert (=> d!232265 (= (inv!9492 (_1!4276 (_1!4277 (h!12789 mapDefault!2967)))) (forall!1946 (exprs!733 (_1!4276 (_1!4277 (h!12789 mapDefault!2967)))) lambda!21458))))

(declare-fun bs!136429 () Bool)

(assert (= bs!136429 d!232265))

(declare-fun m!945932 () Bool)

(assert (=> bs!136429 m!945932))

(assert (=> b!689113 d!232265))

(declare-fun bs!136430 () Bool)

(declare-fun d!232267 () Bool)

(assert (= bs!136430 (and d!232267 d!232233)))

(declare-fun lambda!21459 () Int)

(assert (=> bs!136430 (= lambda!21459 lambda!21441)))

(declare-fun bs!136431 () Bool)

(assert (= bs!136431 (and d!232267 d!232261)))

(assert (=> bs!136431 (= lambda!21459 lambda!21454)))

(declare-fun bs!136432 () Bool)

(assert (= bs!136432 (and d!232267 d!232265)))

(assert (=> bs!136432 (= lambda!21459 lambda!21458)))

(declare-fun bs!136433 () Bool)

(assert (= bs!136433 (and d!232267 d!232245)))

(assert (=> bs!136433 (= lambda!21459 lambda!21446)))

(declare-fun bs!136434 () Bool)

(assert (= bs!136434 (and d!232267 d!232211)))

(assert (=> bs!136434 (= lambda!21459 lambda!21439)))

(declare-fun bs!136435 () Bool)

(assert (= bs!136435 (and d!232267 d!232215)))

(assert (=> bs!136435 (= lambda!21459 lambda!21440)))

(declare-fun bs!136436 () Bool)

(assert (= bs!136436 (and d!232267 d!232209)))

(assert (=> bs!136436 (= lambda!21459 lambda!21438)))

(declare-fun bs!136437 () Bool)

(assert (= bs!136437 (and d!232267 d!232249)))

(assert (=> bs!136437 (= lambda!21459 lambda!21447)))

(declare-fun bs!136438 () Bool)

(assert (= bs!136438 (and d!232267 d!232237)))

(assert (=> bs!136438 (= lambda!21459 lambda!21442)))

(assert (=> d!232267 (= (inv!9492 (_2!4274 (_1!4275 (h!12788 (zeroValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470)))))))))) (forall!1946 (exprs!733 (_2!4274 (_1!4275 (h!12788 (zeroValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470)))))))))) lambda!21459))))

(declare-fun bs!136439 () Bool)

(assert (= bs!136439 d!232267))

(declare-fun m!945934 () Bool)

(assert (=> bs!136439 m!945934))

(assert (=> b!689217 d!232267))

(declare-fun d!232269 () Bool)

(declare-fun c!121490 () Bool)

(assert (=> d!232269 (= c!121490 ((_ is Empty!2616) (c!121420 input!756)))))

(declare-fun e!433292 () List!7396)

(assert (=> d!232269 (= (list!3117 (c!121420 input!756)) e!433292)))

(declare-fun b!689451 () Bool)

(declare-fun e!433293 () List!7396)

(assert (=> b!689451 (= e!433293 (list!3118 (xs!5265 (c!121420 input!756))))))

(declare-fun b!689449 () Bool)

(assert (=> b!689449 (= e!433292 Nil!7382)))

(declare-fun b!689450 () Bool)

(assert (=> b!689450 (= e!433292 e!433293)))

(declare-fun c!121491 () Bool)

(assert (=> b!689450 (= c!121491 ((_ is Leaf!3881) (c!121420 input!756)))))

(declare-fun b!689452 () Bool)

(assert (=> b!689452 (= e!433293 (++!1938 (list!3117 (left!5956 (c!121420 input!756))) (list!3117 (right!6286 (c!121420 input!756)))))))

(assert (= (and d!232269 c!121490) b!689449))

(assert (= (and d!232269 (not c!121490)) b!689450))

(assert (= (and b!689450 c!121491) b!689451))

(assert (= (and b!689450 (not c!121491)) b!689452))

(assert (=> b!689451 m!945772))

(declare-fun m!945936 () Bool)

(assert (=> b!689452 m!945936))

(declare-fun m!945938 () Bool)

(assert (=> b!689452 m!945938))

(assert (=> b!689452 m!945936))

(assert (=> b!689452 m!945938))

(declare-fun m!945940 () Bool)

(assert (=> b!689452 m!945940))

(assert (=> d!232203 d!232269))

(declare-fun d!232271 () Bool)

(declare-fun lt!284301 () Bool)

(assert (=> d!232271 (= lt!284301 (isEmpty!4854 (list!3114 (_1!4273 lt!284266))))))

(assert (=> d!232271 (= lt!284301 (isEmpty!4855 (c!121421 (_1!4273 lt!284266))))))

(assert (=> d!232271 (= (isEmpty!4852 (_1!4273 lt!284266)) lt!284301)))

(declare-fun bs!136440 () Bool)

(assert (= bs!136440 d!232271))

(assert (=> bs!136440 m!945614))

(assert (=> bs!136440 m!945614))

(declare-fun m!945942 () Bool)

(assert (=> bs!136440 m!945942))

(declare-fun m!945944 () Bool)

(assert (=> bs!136440 m!945944))

(assert (=> b!689061 d!232271))

(declare-fun bs!136441 () Bool)

(declare-fun d!232273 () Bool)

(assert (= bs!136441 (and d!232273 d!232233)))

(declare-fun lambda!21460 () Int)

(assert (=> bs!136441 (= lambda!21460 lambda!21441)))

(declare-fun bs!136442 () Bool)

(assert (= bs!136442 (and d!232273 d!232261)))

(assert (=> bs!136442 (= lambda!21460 lambda!21454)))

(declare-fun bs!136443 () Bool)

(assert (= bs!136443 (and d!232273 d!232265)))

(assert (=> bs!136443 (= lambda!21460 lambda!21458)))

(declare-fun bs!136444 () Bool)

(assert (= bs!136444 (and d!232273 d!232267)))

(assert (=> bs!136444 (= lambda!21460 lambda!21459)))

(declare-fun bs!136445 () Bool)

(assert (= bs!136445 (and d!232273 d!232245)))

(assert (=> bs!136445 (= lambda!21460 lambda!21446)))

(declare-fun bs!136446 () Bool)

(assert (= bs!136446 (and d!232273 d!232211)))

(assert (=> bs!136446 (= lambda!21460 lambda!21439)))

(declare-fun bs!136447 () Bool)

(assert (= bs!136447 (and d!232273 d!232215)))

(assert (=> bs!136447 (= lambda!21460 lambda!21440)))

(declare-fun bs!136448 () Bool)

(assert (= bs!136448 (and d!232273 d!232209)))

(assert (=> bs!136448 (= lambda!21460 lambda!21438)))

(declare-fun bs!136449 () Bool)

(assert (= bs!136449 (and d!232273 d!232249)))

(assert (=> bs!136449 (= lambda!21460 lambda!21447)))

(declare-fun bs!136450 () Bool)

(assert (= bs!136450 (and d!232273 d!232237)))

(assert (=> bs!136450 (= lambda!21460 lambda!21442)))

(assert (=> d!232273 (= (inv!9492 (_2!4274 (_1!4275 (h!12788 (minValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470)))))))))) (forall!1946 (exprs!733 (_2!4274 (_1!4275 (h!12788 (minValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470)))))))))) lambda!21460))))

(declare-fun bs!136451 () Bool)

(assert (= bs!136451 d!232273))

(declare-fun m!945946 () Bool)

(assert (=> bs!136451 m!945946))

(assert (=> b!689220 d!232273))

(declare-fun d!232275 () Bool)

(declare-fun lt!284304 () Int)

(assert (=> d!232275 (= lt!284304 (size!6069 (list!3114 (_1!4273 lt!284266))))))

(declare-fun size!6070 (Conc!2617) Int)

(assert (=> d!232275 (= lt!284304 (size!6070 (c!121421 (_1!4273 lt!284266))))))

(assert (=> d!232275 (= (size!6065 (_1!4273 lt!284266)) lt!284304)))

(declare-fun bs!136452 () Bool)

(assert (= bs!136452 d!232275))

(assert (=> bs!136452 m!945614))

(assert (=> bs!136452 m!945614))

(declare-fun m!945948 () Bool)

(assert (=> bs!136452 m!945948))

(declare-fun m!945950 () Bool)

(assert (=> bs!136452 m!945950))

(assert (=> d!232155 d!232275))

(declare-fun bm!43580 () Bool)

(declare-fun call!43585 () Option!1704)

(declare-fun maxPrefixOneRuleZipperSequence!208 (LexerInterface!1301 Rule!2772 BalanceConc!5244) Option!1704)

(assert (=> bm!43580 (= call!43585 (maxPrefixOneRuleZipperSequence!208 thiss!12183 (h!12787 rules!1357) input!756))))

(declare-fun d!232277 () Bool)

(declare-fun e!433311 () Bool)

(assert (=> d!232277 e!433311))

(declare-fun res!313090 () Bool)

(assert (=> d!232277 (=> (not res!313090) (not e!433311))))

(declare-fun lt!284319 () Option!1704)

(declare-fun isDefined!1436 (Option!1704) Bool)

(declare-fun isDefined!1437 (Option!1705) Bool)

(declare-fun maxPrefixZipper!207 (LexerInterface!1301 List!7400 List!7396) Option!1705)

(assert (=> d!232277 (= res!313090 (= (isDefined!1436 lt!284319) (isDefined!1437 (maxPrefixZipper!207 thiss!12183 rules!1357 (list!3115 input!756)))))))

(declare-fun e!433309 () Option!1704)

(assert (=> d!232277 (= lt!284319 e!433309)))

(declare-fun c!121494 () Bool)

(assert (=> d!232277 (= c!121494 (and ((_ is Cons!7386) rules!1357) ((_ is Nil!7386) (t!87211 rules!1357))))))

(declare-datatypes ((Unit!12623 0))(
  ( (Unit!12624) )
))
(declare-fun lt!284320 () Unit!12623)

(declare-fun lt!284325 () Unit!12623)

(assert (=> d!232277 (= lt!284320 lt!284325)))

(declare-fun lt!284323 () List!7396)

(declare-fun lt!284322 () List!7396)

(declare-fun isPrefix!914 (List!7396 List!7396) Bool)

(assert (=> d!232277 (isPrefix!914 lt!284323 lt!284322)))

(declare-fun lemmaIsPrefixRefl!625 (List!7396 List!7396) Unit!12623)

(assert (=> d!232277 (= lt!284325 (lemmaIsPrefixRefl!625 lt!284323 lt!284322))))

(assert (=> d!232277 (= lt!284322 (list!3115 input!756))))

(assert (=> d!232277 (= lt!284323 (list!3115 input!756))))

(assert (=> d!232277 (rulesValidInductive!517 thiss!12183 rules!1357)))

(assert (=> d!232277 (= (maxPrefixZipperSequence!455 thiss!12183 rules!1357 input!756) lt!284319)))

(declare-fun b!689469 () Bool)

(declare-fun e!433308 () Bool)

(declare-fun get!2568 (Option!1704) tuple2!7760)

(declare-fun get!2569 (Option!1705) tuple2!7762)

(assert (=> b!689469 (= e!433308 (= (list!3115 (_2!4279 (get!2568 lt!284319))) (_2!4280 (get!2569 (maxPrefixZipper!207 thiss!12183 rules!1357 (list!3115 input!756))))))))

(declare-fun b!689470 () Bool)

(declare-fun e!433306 () Bool)

(declare-fun e!433307 () Bool)

(assert (=> b!689470 (= e!433306 e!433307)))

(declare-fun res!313093 () Bool)

(assert (=> b!689470 (=> (not res!313093) (not e!433307))))

(assert (=> b!689470 (= res!313093 (= (_1!4279 (get!2568 lt!284319)) (_1!4280 (get!2569 (maxPrefix!866 thiss!12183 rules!1357 (list!3115 input!756))))))))

(declare-fun b!689471 () Bool)

(declare-fun res!313091 () Bool)

(assert (=> b!689471 (=> (not res!313091) (not e!433311))))

(declare-fun e!433310 () Bool)

(assert (=> b!689471 (= res!313091 e!433310)))

(declare-fun res!313094 () Bool)

(assert (=> b!689471 (=> res!313094 e!433310)))

(assert (=> b!689471 (= res!313094 (not (isDefined!1436 lt!284319)))))

(declare-fun b!689472 () Bool)

(assert (=> b!689472 (= e!433307 (= (list!3115 (_2!4279 (get!2568 lt!284319))) (_2!4280 (get!2569 (maxPrefix!866 thiss!12183 rules!1357 (list!3115 input!756))))))))

(declare-fun b!689473 () Bool)

(assert (=> b!689473 (= e!433309 call!43585)))

(declare-fun b!689474 () Bool)

(assert (=> b!689474 (= e!433311 e!433306)))

(declare-fun res!313089 () Bool)

(assert (=> b!689474 (=> res!313089 e!433306)))

(assert (=> b!689474 (= res!313089 (not (isDefined!1436 lt!284319)))))

(declare-fun b!689475 () Bool)

(declare-fun lt!284324 () Option!1704)

(declare-fun lt!284321 () Option!1704)

(assert (=> b!689475 (= e!433309 (ite (and ((_ is None!1703) lt!284324) ((_ is None!1703) lt!284321)) None!1703 (ite ((_ is None!1703) lt!284321) lt!284324 (ite ((_ is None!1703) lt!284324) lt!284321 (ite (>= (size!6062 (_1!4279 (v!17599 lt!284324))) (size!6062 (_1!4279 (v!17599 lt!284321)))) lt!284324 lt!284321)))))))

(assert (=> b!689475 (= lt!284324 call!43585)))

(assert (=> b!689475 (= lt!284321 (maxPrefixZipperSequence!455 thiss!12183 (t!87211 rules!1357) input!756))))

(declare-fun b!689476 () Bool)

(assert (=> b!689476 (= e!433310 e!433308)))

(declare-fun res!313092 () Bool)

(assert (=> b!689476 (=> (not res!313092) (not e!433308))))

(assert (=> b!689476 (= res!313092 (= (_1!4279 (get!2568 lt!284319)) (_1!4280 (get!2569 (maxPrefixZipper!207 thiss!12183 rules!1357 (list!3115 input!756))))))))

(assert (= (and d!232277 c!121494) b!689473))

(assert (= (and d!232277 (not c!121494)) b!689475))

(assert (= (or b!689473 b!689475) bm!43580))

(assert (= (and d!232277 res!313090) b!689471))

(assert (= (and b!689471 (not res!313094)) b!689476))

(assert (= (and b!689476 res!313092) b!689469))

(assert (= (and b!689471 res!313091) b!689474))

(assert (= (and b!689474 (not res!313089)) b!689470))

(assert (= (and b!689470 res!313093) b!689472))

(declare-fun m!945952 () Bool)

(assert (=> b!689470 m!945952))

(assert (=> b!689470 m!945522))

(assert (=> b!689470 m!945522))

(assert (=> b!689470 m!945851))

(assert (=> b!689470 m!945851))

(declare-fun m!945954 () Bool)

(assert (=> b!689470 m!945954))

(assert (=> b!689476 m!945952))

(assert (=> b!689476 m!945522))

(assert (=> b!689476 m!945522))

(declare-fun m!945956 () Bool)

(assert (=> b!689476 m!945956))

(assert (=> b!689476 m!945956))

(declare-fun m!945958 () Bool)

(assert (=> b!689476 m!945958))

(declare-fun m!945960 () Bool)

(assert (=> bm!43580 m!945960))

(assert (=> d!232277 m!945522))

(assert (=> d!232277 m!945956))

(declare-fun m!945962 () Bool)

(assert (=> d!232277 m!945962))

(assert (=> d!232277 m!945928))

(declare-fun m!945964 () Bool)

(assert (=> d!232277 m!945964))

(declare-fun m!945966 () Bool)

(assert (=> d!232277 m!945966))

(assert (=> d!232277 m!945956))

(declare-fun m!945968 () Bool)

(assert (=> d!232277 m!945968))

(assert (=> d!232277 m!945522))

(assert (=> b!689469 m!945522))

(assert (=> b!689469 m!945956))

(assert (=> b!689469 m!945952))

(declare-fun m!945970 () Bool)

(assert (=> b!689469 m!945970))

(assert (=> b!689469 m!945956))

(assert (=> b!689469 m!945958))

(assert (=> b!689469 m!945522))

(assert (=> b!689474 m!945962))

(assert (=> b!689471 m!945962))

(assert (=> b!689472 m!945952))

(assert (=> b!689472 m!945970))

(assert (=> b!689472 m!945522))

(assert (=> b!689472 m!945851))

(assert (=> b!689472 m!945851))

(assert (=> b!689472 m!945954))

(assert (=> b!689472 m!945522))

(declare-fun m!945972 () Bool)

(assert (=> b!689475 m!945972))

(assert (=> d!232155 d!232277))

(declare-fun d!232279 () Bool)

(assert (=> d!232279 (= (height!315 (c!121421 (BalanceConc!5247 Empty!2617))) (ite ((_ is Empty!2617) (c!121421 (BalanceConc!5247 Empty!2617))) 0 (ite ((_ is Leaf!3882) (c!121421 (BalanceConc!5247 Empty!2617))) 1 (cheight!2828 (c!121421 (BalanceConc!5247 Empty!2617))))))))

(assert (=> b!689039 d!232279))

(declare-fun d!232281 () Bool)

(assert (=> d!232281 (= (height!315 (c!121421 (_1!4273 lt!284253))) (ite ((_ is Empty!2617) (c!121421 (_1!4273 lt!284253))) 0 (ite ((_ is Leaf!3882) (c!121421 (_1!4273 lt!284253))) 1 (cheight!2828 (c!121421 (_1!4273 lt!284253))))))))

(assert (=> b!689039 d!232281))

(declare-fun d!232283 () Bool)

(assert (=> d!232283 (= (height!315 (++!1940 (c!121421 (BalanceConc!5247 Empty!2617)) (c!121421 (_1!4273 lt!284253)))) (ite ((_ is Empty!2617) (++!1940 (c!121421 (BalanceConc!5247 Empty!2617)) (c!121421 (_1!4273 lt!284253)))) 0 (ite ((_ is Leaf!3882) (++!1940 (c!121421 (BalanceConc!5247 Empty!2617)) (c!121421 (_1!4273 lt!284253)))) 1 (cheight!2828 (++!1940 (c!121421 (BalanceConc!5247 Empty!2617)) (c!121421 (_1!4273 lt!284253)))))))))

(assert (=> b!689039 d!232283))

(declare-fun d!232285 () Bool)

(assert (=> d!232285 (= (max!0 (height!315 (c!121421 (BalanceConc!5247 Empty!2617))) (height!315 (c!121421 (_1!4273 lt!284253)))) (ite (< (height!315 (c!121421 (BalanceConc!5247 Empty!2617))) (height!315 (c!121421 (_1!4273 lt!284253)))) (height!315 (c!121421 (_1!4273 lt!284253))) (height!315 (c!121421 (BalanceConc!5247 Empty!2617)))))))

(assert (=> b!689039 d!232285))

(assert (=> b!689039 d!232257))

(declare-fun d!232287 () Bool)

(declare-fun e!433314 () Bool)

(assert (=> d!232287 e!433314))

(declare-fun res!313097 () Bool)

(assert (=> d!232287 (=> (not res!313097) (not e!433314))))

(declare-fun prepend!256 (Conc!2617 Token!2682) Conc!2617)

(assert (=> d!232287 (= res!313097 (isBalanced!692 (prepend!256 (c!121421 (_1!4273 lt!284270)) (_1!4279 (v!17599 lt!284271)))))))

(declare-fun lt!284328 () BalanceConc!5246)

(assert (=> d!232287 (= lt!284328 (BalanceConc!5247 (prepend!256 (c!121421 (_1!4273 lt!284270)) (_1!4279 (v!17599 lt!284271)))))))

(assert (=> d!232287 (= (prepend!255 (_1!4273 lt!284270) (_1!4279 (v!17599 lt!284271))) lt!284328)))

(declare-fun b!689479 () Bool)

(assert (=> b!689479 (= e!433314 (= (list!3114 lt!284328) (Cons!7385 (_1!4279 (v!17599 lt!284271)) (list!3114 (_1!4273 lt!284270)))))))

(assert (= (and d!232287 res!313097) b!689479))

(declare-fun m!945974 () Bool)

(assert (=> d!232287 m!945974))

(assert (=> d!232287 m!945974))

(declare-fun m!945976 () Bool)

(assert (=> d!232287 m!945976))

(declare-fun m!945978 () Bool)

(assert (=> b!689479 m!945978))

(declare-fun m!945980 () Bool)

(assert (=> b!689479 m!945980))

(assert (=> b!689065 d!232287))

(declare-fun b!689480 () Bool)

(declare-fun e!433315 () Bool)

(declare-fun lt!284329 () tuple2!7750)

(assert (=> b!689480 (= e!433315 (= (list!3115 (_2!4273 lt!284329)) (list!3115 (_2!4279 (v!17599 lt!284271)))))))

(declare-fun b!689481 () Bool)

(declare-fun e!433318 () tuple2!7750)

(assert (=> b!689481 (= e!433318 (tuple2!7751 (BalanceConc!5247 Empty!2617) (_2!4279 (v!17599 lt!284271))))))

(declare-fun b!689482 () Bool)

(declare-fun res!313100 () Bool)

(declare-fun e!433317 () Bool)

(assert (=> b!689482 (=> (not res!313100) (not e!433317))))

(assert (=> b!689482 (= res!313100 (= (list!3114 (_1!4273 lt!284329)) (_1!4278 (lexList!321 thiss!12183 rules!1357 (list!3115 (_2!4279 (v!17599 lt!284271)))))))))

(declare-fun b!689483 () Bool)

(declare-fun lt!284330 () tuple2!7750)

(declare-fun lt!284331 () Option!1704)

(assert (=> b!689483 (= e!433318 (tuple2!7751 (prepend!255 (_1!4273 lt!284330) (_1!4279 (v!17599 lt!284331))) (_2!4273 lt!284330)))))

(assert (=> b!689483 (= lt!284330 (lexRec!152 thiss!12183 rules!1357 (_2!4279 (v!17599 lt!284331))))))

(declare-fun b!689484 () Bool)

(assert (=> b!689484 (= e!433317 (= (list!3115 (_2!4273 lt!284329)) (_2!4278 (lexList!321 thiss!12183 rules!1357 (list!3115 (_2!4279 (v!17599 lt!284271)))))))))

(declare-fun d!232289 () Bool)

(assert (=> d!232289 e!433317))

(declare-fun res!313098 () Bool)

(assert (=> d!232289 (=> (not res!313098) (not e!433317))))

(assert (=> d!232289 (= res!313098 e!433315)))

(declare-fun c!121496 () Bool)

(assert (=> d!232289 (= c!121496 (> (size!6065 (_1!4273 lt!284329)) 0))))

(assert (=> d!232289 (= lt!284329 e!433318)))

(declare-fun c!121497 () Bool)

(assert (=> d!232289 (= c!121497 ((_ is Some!1703) lt!284331))))

(assert (=> d!232289 (= lt!284331 (maxPrefixZipperSequence!455 thiss!12183 rules!1357 (_2!4279 (v!17599 lt!284271))))))

(assert (=> d!232289 (= (lexRec!152 thiss!12183 rules!1357 (_2!4279 (v!17599 lt!284271))) lt!284329)))

(declare-fun b!689485 () Bool)

(declare-fun e!433316 () Bool)

(assert (=> b!689485 (= e!433315 e!433316)))

(declare-fun res!313099 () Bool)

(assert (=> b!689485 (= res!313099 (< (size!6066 (_2!4273 lt!284329)) (size!6066 (_2!4279 (v!17599 lt!284271)))))))

(assert (=> b!689485 (=> (not res!313099) (not e!433316))))

(declare-fun b!689486 () Bool)

(assert (=> b!689486 (= e!433316 (not (isEmpty!4852 (_1!4273 lt!284329))))))

(assert (= (and d!232289 c!121497) b!689483))

(assert (= (and d!232289 (not c!121497)) b!689481))

(assert (= (and d!232289 c!121496) b!689485))

(assert (= (and d!232289 (not c!121496)) b!689480))

(assert (= (and b!689485 res!313099) b!689486))

(assert (= (and d!232289 res!313098) b!689482))

(assert (= (and b!689482 res!313100) b!689484))

(declare-fun m!945982 () Bool)

(assert (=> b!689484 m!945982))

(declare-fun m!945984 () Bool)

(assert (=> b!689484 m!945984))

(assert (=> b!689484 m!945984))

(declare-fun m!945986 () Bool)

(assert (=> b!689484 m!945986))

(assert (=> b!689480 m!945982))

(assert (=> b!689480 m!945984))

(declare-fun m!945988 () Bool)

(assert (=> b!689486 m!945988))

(declare-fun m!945990 () Bool)

(assert (=> b!689482 m!945990))

(assert (=> b!689482 m!945984))

(assert (=> b!689482 m!945984))

(assert (=> b!689482 m!945986))

(declare-fun m!945992 () Bool)

(assert (=> b!689483 m!945992))

(declare-fun m!945994 () Bool)

(assert (=> b!689483 m!945994))

(declare-fun m!945996 () Bool)

(assert (=> d!232289 m!945996))

(declare-fun m!945998 () Bool)

(assert (=> d!232289 m!945998))

(declare-fun m!946000 () Bool)

(assert (=> b!689485 m!946000))

(declare-fun m!946002 () Bool)

(assert (=> b!689485 m!946002))

(assert (=> b!689065 d!232289))

(declare-fun bs!136453 () Bool)

(declare-fun d!232291 () Bool)

(assert (= bs!136453 (and d!232291 d!232233)))

(declare-fun lambda!21461 () Int)

(assert (=> bs!136453 (= lambda!21461 lambda!21441)))

(declare-fun bs!136454 () Bool)

(assert (= bs!136454 (and d!232291 d!232261)))

(assert (=> bs!136454 (= lambda!21461 lambda!21454)))

(declare-fun bs!136455 () Bool)

(assert (= bs!136455 (and d!232291 d!232265)))

(assert (=> bs!136455 (= lambda!21461 lambda!21458)))

(declare-fun bs!136456 () Bool)

(assert (= bs!136456 (and d!232291 d!232267)))

(assert (=> bs!136456 (= lambda!21461 lambda!21459)))

(declare-fun bs!136457 () Bool)

(assert (= bs!136457 (and d!232291 d!232273)))

(assert (=> bs!136457 (= lambda!21461 lambda!21460)))

(declare-fun bs!136458 () Bool)

(assert (= bs!136458 (and d!232291 d!232245)))

(assert (=> bs!136458 (= lambda!21461 lambda!21446)))

(declare-fun bs!136459 () Bool)

(assert (= bs!136459 (and d!232291 d!232211)))

(assert (=> bs!136459 (= lambda!21461 lambda!21439)))

(declare-fun bs!136460 () Bool)

(assert (= bs!136460 (and d!232291 d!232215)))

(assert (=> bs!136460 (= lambda!21461 lambda!21440)))

(declare-fun bs!136461 () Bool)

(assert (= bs!136461 (and d!232291 d!232209)))

(assert (=> bs!136461 (= lambda!21461 lambda!21438)))

(declare-fun bs!136462 () Bool)

(assert (= bs!136462 (and d!232291 d!232249)))

(assert (=> bs!136462 (= lambda!21461 lambda!21447)))

(declare-fun bs!136463 () Bool)

(assert (= bs!136463 (and d!232291 d!232237)))

(assert (=> bs!136463 (= lambda!21461 lambda!21442)))

(assert (=> d!232291 (= (inv!9492 setElem!3643) (forall!1946 (exprs!733 setElem!3643) lambda!21461))))

(declare-fun bs!136464 () Bool)

(assert (= bs!136464 d!232291))

(declare-fun m!946004 () Bool)

(assert (=> bs!136464 m!946004))

(assert (=> setNonEmpty!3643 d!232291))

(declare-fun bs!136465 () Bool)

(declare-fun d!232293 () Bool)

(assert (= bs!136465 (and d!232293 d!232233)))

(declare-fun lambda!21462 () Int)

(assert (=> bs!136465 (= lambda!21462 lambda!21441)))

(declare-fun bs!136466 () Bool)

(assert (= bs!136466 (and d!232293 d!232261)))

(assert (=> bs!136466 (= lambda!21462 lambda!21454)))

(declare-fun bs!136467 () Bool)

(assert (= bs!136467 (and d!232293 d!232265)))

(assert (=> bs!136467 (= lambda!21462 lambda!21458)))

(declare-fun bs!136468 () Bool)

(assert (= bs!136468 (and d!232293 d!232267)))

(assert (=> bs!136468 (= lambda!21462 lambda!21459)))

(declare-fun bs!136469 () Bool)

(assert (= bs!136469 (and d!232293 d!232273)))

(assert (=> bs!136469 (= lambda!21462 lambda!21460)))

(declare-fun bs!136470 () Bool)

(assert (= bs!136470 (and d!232293 d!232211)))

(assert (=> bs!136470 (= lambda!21462 lambda!21439)))

(declare-fun bs!136471 () Bool)

(assert (= bs!136471 (and d!232293 d!232215)))

(assert (=> bs!136471 (= lambda!21462 lambda!21440)))

(declare-fun bs!136472 () Bool)

(assert (= bs!136472 (and d!232293 d!232209)))

(assert (=> bs!136472 (= lambda!21462 lambda!21438)))

(declare-fun bs!136473 () Bool)

(assert (= bs!136473 (and d!232293 d!232245)))

(assert (=> bs!136473 (= lambda!21462 lambda!21446)))

(declare-fun bs!136474 () Bool)

(assert (= bs!136474 (and d!232293 d!232291)))

(assert (=> bs!136474 (= lambda!21462 lambda!21461)))

(declare-fun bs!136475 () Bool)

(assert (= bs!136475 (and d!232293 d!232249)))

(assert (=> bs!136475 (= lambda!21462 lambda!21447)))

(declare-fun bs!136476 () Bool)

(assert (= bs!136476 (and d!232293 d!232237)))

(assert (=> bs!136476 (= lambda!21462 lambda!21442)))

(assert (=> d!232293 (= (inv!9492 setElem!3627) (forall!1946 (exprs!733 setElem!3627) lambda!21462))))

(declare-fun bs!136477 () Bool)

(assert (= bs!136477 d!232293))

(declare-fun m!946006 () Bool)

(assert (=> bs!136477 m!946006))

(assert (=> setNonEmpty!3627 d!232293))

(declare-fun d!232295 () Bool)

(declare-fun c!121498 () Bool)

(assert (=> d!232295 (= c!121498 ((_ is Node!2616) (left!5956 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))))))

(declare-fun e!433319 () Bool)

(assert (=> d!232295 (= (inv!9488 (left!5956 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))) e!433319)))

(declare-fun b!689487 () Bool)

(assert (=> b!689487 (= e!433319 (inv!9490 (left!5956 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))))))

(declare-fun b!689488 () Bool)

(declare-fun e!433320 () Bool)

(assert (=> b!689488 (= e!433319 e!433320)))

(declare-fun res!313101 () Bool)

(assert (=> b!689488 (= res!313101 (not ((_ is Leaf!3881) (left!5956 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))))))))

(assert (=> b!689488 (=> res!313101 e!433320)))

(declare-fun b!689489 () Bool)

(assert (=> b!689489 (= e!433320 (inv!9491 (left!5956 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))))))

(assert (= (and d!232295 c!121498) b!689487))

(assert (= (and d!232295 (not c!121498)) b!689488))

(assert (= (and b!689488 (not res!313101)) b!689489))

(declare-fun m!946008 () Bool)

(assert (=> b!689487 m!946008))

(declare-fun m!946010 () Bool)

(assert (=> b!689489 m!946010))

(assert (=> b!689198 d!232295))

(declare-fun d!232297 () Bool)

(declare-fun c!121499 () Bool)

(assert (=> d!232297 (= c!121499 ((_ is Node!2616) (right!6286 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))))))

(declare-fun e!433321 () Bool)

(assert (=> d!232297 (= (inv!9488 (right!6286 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))) e!433321)))

(declare-fun b!689490 () Bool)

(assert (=> b!689490 (= e!433321 (inv!9490 (right!6286 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))))))

(declare-fun b!689491 () Bool)

(declare-fun e!433322 () Bool)

(assert (=> b!689491 (= e!433321 e!433322)))

(declare-fun res!313102 () Bool)

(assert (=> b!689491 (= res!313102 (not ((_ is Leaf!3881) (right!6286 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))))))))

(assert (=> b!689491 (=> res!313102 e!433322)))

(declare-fun b!689492 () Bool)

(assert (=> b!689492 (= e!433322 (inv!9491 (right!6286 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))))))

(assert (= (and d!232297 c!121499) b!689490))

(assert (= (and d!232297 (not c!121499)) b!689491))

(assert (= (and b!689491 (not res!313102)) b!689492))

(declare-fun m!946012 () Bool)

(assert (=> b!689490 m!946012))

(declare-fun m!946014 () Bool)

(assert (=> b!689492 m!946014))

(assert (=> b!689198 d!232297))

(declare-fun b!689511 () Bool)

(declare-fun e!433346 () Bool)

(declare-fun e!433345 () Bool)

(assert (=> b!689511 (= e!433346 e!433345)))

(declare-fun res!313125 () Bool)

(assert (=> b!689511 (=> (not res!313125) (not e!433345))))

(declare-fun appendAssoc!37 (List!7399 List!7399 List!7399) Bool)

(assert (=> b!689511 (= res!313125 (appendAssoc!37 (list!3116 (c!121421 (BalanceConc!5247 Empty!2617))) (list!3116 (left!5957 (left!5957 (c!121421 (_1!4273 lt!284253))))) (list!3116 (right!6287 (left!5957 (c!121421 (_1!4273 lt!284253)))))))))

(declare-fun b!689512 () Bool)

(declare-fun e!433347 () Bool)

(declare-fun e!433341 () Bool)

(assert (=> b!689512 (= e!433347 e!433341)))

(declare-fun res!313126 () Bool)

(assert (=> b!689512 (=> (not res!313126) (not e!433341))))

(assert (=> b!689512 (= res!313126 (appendAssoc!37 (list!3116 (left!5957 (c!121421 (BalanceConc!5247 Empty!2617)))) (list!3116 (right!6287 (c!121421 (BalanceConc!5247 Empty!2617)))) (list!3116 (c!121421 (_1!4273 lt!284253)))))))

(declare-fun b!689513 () Bool)

(declare-fun e!433342 () Bool)

(declare-fun e!433344 () Bool)

(assert (=> b!689513 (= e!433342 e!433344)))

(declare-fun res!313128 () Bool)

(assert (=> b!689513 (=> res!313128 e!433344)))

(assert (=> b!689513 (= res!313128 (not ((_ is Node!2617) (c!121421 (_1!4273 lt!284253)))))))

(declare-fun b!689514 () Bool)

(declare-fun e!433348 () Bool)

(assert (=> b!689514 (= e!433348 (appendAssoc!37 (list!3116 (left!5957 (c!121421 (BalanceConc!5247 Empty!2617)))) (list!3116 (left!5957 (right!6287 (c!121421 (BalanceConc!5247 Empty!2617))))) (++!1939 (list!3116 (right!6287 (right!6287 (c!121421 (BalanceConc!5247 Empty!2617))))) (list!3116 (c!121421 (_1!4273 lt!284253))))))))

(declare-fun b!689515 () Bool)

(declare-fun e!433343 () Bool)

(assert (=> b!689515 (= e!433341 e!433343)))

(declare-fun res!313124 () Bool)

(assert (=> b!689515 (=> res!313124 e!433343)))

(assert (=> b!689515 (= res!313124 (not ((_ is Node!2617) (right!6287 (c!121421 (BalanceConc!5247 Empty!2617))))))))

(declare-fun b!689516 () Bool)

(declare-fun e!433349 () Bool)

(assert (=> b!689516 (= e!433349 e!433346)))

(declare-fun res!313129 () Bool)

(assert (=> b!689516 (=> res!313129 e!433346)))

(assert (=> b!689516 (= res!313129 (not ((_ is Node!2617) (left!5957 (c!121421 (_1!4273 lt!284253))))))))

(declare-fun b!689517 () Bool)

(assert (=> b!689517 (= e!433343 e!433348)))

(declare-fun res!313121 () Bool)

(assert (=> b!689517 (=> (not res!313121) (not e!433348))))

(assert (=> b!689517 (= res!313121 (appendAssoc!37 (list!3116 (left!5957 (right!6287 (c!121421 (BalanceConc!5247 Empty!2617))))) (list!3116 (right!6287 (right!6287 (c!121421 (BalanceConc!5247 Empty!2617))))) (list!3116 (c!121421 (_1!4273 lt!284253)))))))

(declare-fun d!232299 () Bool)

(assert (=> d!232299 e!433342))

(declare-fun res!313127 () Bool)

(assert (=> d!232299 (=> (not res!313127) (not e!433342))))

(assert (=> d!232299 (= res!313127 e!433347)))

(declare-fun res!313122 () Bool)

(assert (=> d!232299 (=> res!313122 e!433347)))

(assert (=> d!232299 (= res!313122 (not ((_ is Node!2617) (c!121421 (BalanceConc!5247 Empty!2617)))))))

(assert (=> d!232299 (= (appendAssocInst!132 (c!121421 (BalanceConc!5247 Empty!2617)) (c!121421 (_1!4273 lt!284253))) true)))

(declare-fun b!689518 () Bool)

(assert (=> b!689518 (= e!433345 (appendAssoc!37 (++!1939 (list!3116 (c!121421 (BalanceConc!5247 Empty!2617))) (list!3116 (left!5957 (left!5957 (c!121421 (_1!4273 lt!284253)))))) (list!3116 (right!6287 (left!5957 (c!121421 (_1!4273 lt!284253))))) (list!3116 (right!6287 (c!121421 (_1!4273 lt!284253))))))))

(declare-fun b!689519 () Bool)

(assert (=> b!689519 (= e!433344 e!433349)))

(declare-fun res!313123 () Bool)

(assert (=> b!689519 (=> (not res!313123) (not e!433349))))

(assert (=> b!689519 (= res!313123 (appendAssoc!37 (list!3116 (c!121421 (BalanceConc!5247 Empty!2617))) (list!3116 (left!5957 (c!121421 (_1!4273 lt!284253)))) (list!3116 (right!6287 (c!121421 (_1!4273 lt!284253))))))))

(assert (= (and d!232299 (not res!313122)) b!689512))

(assert (= (and b!689512 res!313126) b!689515))

(assert (= (and b!689515 (not res!313124)) b!689517))

(assert (= (and b!689517 res!313121) b!689514))

(assert (= (and d!232299 res!313127) b!689513))

(assert (= (and b!689513 (not res!313128)) b!689519))

(assert (= (and b!689519 res!313123) b!689516))

(assert (= (and b!689516 (not res!313129)) b!689511))

(assert (= (and b!689511 res!313125) b!689518))

(declare-fun m!946016 () Bool)

(assert (=> b!689517 m!946016))

(declare-fun m!946018 () Bool)

(assert (=> b!689517 m!946018))

(assert (=> b!689517 m!945586))

(assert (=> b!689517 m!946016))

(assert (=> b!689517 m!946018))

(assert (=> b!689517 m!945586))

(declare-fun m!946020 () Bool)

(assert (=> b!689517 m!946020))

(assert (=> b!689511 m!945632))

(declare-fun m!946022 () Bool)

(assert (=> b!689511 m!946022))

(declare-fun m!946024 () Bool)

(assert (=> b!689511 m!946024))

(assert (=> b!689511 m!945632))

(assert (=> b!689511 m!946022))

(assert (=> b!689511 m!946024))

(declare-fun m!946026 () Bool)

(assert (=> b!689511 m!946026))

(assert (=> b!689514 m!946018))

(assert (=> b!689514 m!946018))

(assert (=> b!689514 m!945586))

(declare-fun m!946028 () Bool)

(assert (=> b!689514 m!946028))

(assert (=> b!689514 m!946016))

(assert (=> b!689514 m!945871))

(assert (=> b!689514 m!945586))

(assert (=> b!689514 m!945871))

(assert (=> b!689514 m!946016))

(assert (=> b!689514 m!946028))

(declare-fun m!946030 () Bool)

(assert (=> b!689514 m!946030))

(assert (=> b!689512 m!945871))

(assert (=> b!689512 m!945873))

(assert (=> b!689512 m!945586))

(assert (=> b!689512 m!945871))

(assert (=> b!689512 m!945873))

(assert (=> b!689512 m!945586))

(declare-fun m!946032 () Bool)

(assert (=> b!689512 m!946032))

(assert (=> b!689518 m!946024))

(declare-fun m!946034 () Bool)

(assert (=> b!689518 m!946034))

(assert (=> b!689518 m!946024))

(declare-fun m!946036 () Bool)

(assert (=> b!689518 m!946036))

(declare-fun m!946038 () Bool)

(assert (=> b!689518 m!946038))

(assert (=> b!689518 m!945632))

(assert (=> b!689518 m!946036))

(assert (=> b!689518 m!946022))

(assert (=> b!689518 m!945632))

(assert (=> b!689518 m!946022))

(assert (=> b!689518 m!946034))

(assert (=> b!689519 m!945632))

(declare-fun m!946040 () Bool)

(assert (=> b!689519 m!946040))

(assert (=> b!689519 m!946036))

(assert (=> b!689519 m!945632))

(assert (=> b!689519 m!946040))

(assert (=> b!689519 m!946036))

(declare-fun m!946042 () Bool)

(assert (=> b!689519 m!946042))

(assert (=> d!232153 d!232299))

(assert (=> d!232153 d!232257))

(declare-fun d!232301 () Bool)

(declare-fun lt!284334 () Int)

(assert (=> d!232301 (= lt!284334 (size!6067 (list!3115 (_2!4273 lt!284269))))))

(assert (=> d!232301 (= lt!284334 (size!6068 (c!121420 (_2!4273 lt!284269))))))

(assert (=> d!232301 (= (size!6066 (_2!4273 lt!284269)) lt!284334)))

(declare-fun bs!136478 () Bool)

(assert (= bs!136478 d!232301))

(assert (=> bs!136478 m!945634))

(assert (=> bs!136478 m!945634))

(declare-fun m!946044 () Bool)

(assert (=> bs!136478 m!946044))

(declare-fun m!946046 () Bool)

(assert (=> bs!136478 m!946046))

(assert (=> b!689067 d!232301))

(declare-fun d!232303 () Bool)

(declare-fun lt!284335 () Int)

(assert (=> d!232303 (= lt!284335 (size!6067 (list!3115 (BalanceConc!5245 Empty!2616))))))

(assert (=> d!232303 (= lt!284335 (size!6068 (c!121420 (BalanceConc!5245 Empty!2616))))))

(assert (=> d!232303 (= (size!6066 (BalanceConc!5245 Empty!2616)) lt!284335)))

(declare-fun bs!136479 () Bool)

(assert (= bs!136479 d!232303))

(assert (=> bs!136479 m!945524))

(assert (=> bs!136479 m!945524))

(declare-fun m!946048 () Bool)

(assert (=> bs!136479 m!946048))

(declare-fun m!946050 () Bool)

(assert (=> bs!136479 m!946050))

(assert (=> b!689067 d!232303))

(declare-fun d!232305 () Bool)

(declare-fun lt!284338 () Int)

(assert (=> d!232305 (>= lt!284338 0)))

(declare-fun e!433352 () Int)

(assert (=> d!232305 (= lt!284338 e!433352)))

(declare-fun c!121502 () Bool)

(assert (=> d!232305 (= c!121502 ((_ is Nil!7382) lt!284274))))

(assert (=> d!232305 (= (size!6067 lt!284274) lt!284338)))

(declare-fun b!689524 () Bool)

(assert (=> b!689524 (= e!433352 0)))

(declare-fun b!689525 () Bool)

(assert (=> b!689525 (= e!433352 (+ 1 (size!6067 (t!87207 lt!284274))))))

(assert (= (and d!232305 c!121502) b!689524))

(assert (= (and d!232305 (not c!121502)) b!689525))

(declare-fun m!946052 () Bool)

(assert (=> b!689525 m!946052))

(assert (=> b!689103 d!232305))

(declare-fun d!232307 () Bool)

(declare-fun lt!284339 () Int)

(assert (=> d!232307 (>= lt!284339 0)))

(declare-fun e!433353 () Int)

(assert (=> d!232307 (= lt!284339 e!433353)))

(declare-fun c!121503 () Bool)

(assert (=> d!232307 (= c!121503 ((_ is Nil!7382) lt!284251))))

(assert (=> d!232307 (= (size!6067 lt!284251) lt!284339)))

(declare-fun b!689526 () Bool)

(assert (=> b!689526 (= e!433353 0)))

(declare-fun b!689527 () Bool)

(assert (=> b!689527 (= e!433353 (+ 1 (size!6067 (t!87207 lt!284251))))))

(assert (= (and d!232307 c!121503) b!689526))

(assert (= (and d!232307 (not c!121503)) b!689527))

(declare-fun m!946054 () Bool)

(assert (=> b!689527 m!946054))

(assert (=> b!689103 d!232307))

(declare-fun d!232309 () Bool)

(declare-fun lt!284340 () Int)

(assert (=> d!232309 (>= lt!284340 0)))

(declare-fun e!433354 () Int)

(assert (=> d!232309 (= lt!284340 e!433354)))

(declare-fun c!121504 () Bool)

(assert (=> d!232309 (= c!121504 ((_ is Nil!7382) lt!284250))))

(assert (=> d!232309 (= (size!6067 lt!284250) lt!284340)))

(declare-fun b!689528 () Bool)

(assert (=> b!689528 (= e!433354 0)))

(declare-fun b!689529 () Bool)

(assert (=> b!689529 (= e!433354 (+ 1 (size!6067 (t!87207 lt!284250))))))

(assert (= (and d!232309 c!121504) b!689528))

(assert (= (and d!232309 (not c!121504)) b!689529))

(declare-fun m!946056 () Bool)

(assert (=> b!689529 m!946056))

(assert (=> b!689103 d!232309))

(declare-fun bs!136480 () Bool)

(declare-fun d!232311 () Bool)

(assert (= bs!136480 (and d!232311 d!232233)))

(declare-fun lambda!21463 () Int)

(assert (=> bs!136480 (= lambda!21463 lambda!21441)))

(declare-fun bs!136481 () Bool)

(assert (= bs!136481 (and d!232311 d!232261)))

(assert (=> bs!136481 (= lambda!21463 lambda!21454)))

(declare-fun bs!136482 () Bool)

(assert (= bs!136482 (and d!232311 d!232293)))

(assert (=> bs!136482 (= lambda!21463 lambda!21462)))

(declare-fun bs!136483 () Bool)

(assert (= bs!136483 (and d!232311 d!232265)))

(assert (=> bs!136483 (= lambda!21463 lambda!21458)))

(declare-fun bs!136484 () Bool)

(assert (= bs!136484 (and d!232311 d!232267)))

(assert (=> bs!136484 (= lambda!21463 lambda!21459)))

(declare-fun bs!136485 () Bool)

(assert (= bs!136485 (and d!232311 d!232273)))

(assert (=> bs!136485 (= lambda!21463 lambda!21460)))

(declare-fun bs!136486 () Bool)

(assert (= bs!136486 (and d!232311 d!232211)))

(assert (=> bs!136486 (= lambda!21463 lambda!21439)))

(declare-fun bs!136487 () Bool)

(assert (= bs!136487 (and d!232311 d!232215)))

(assert (=> bs!136487 (= lambda!21463 lambda!21440)))

(declare-fun bs!136488 () Bool)

(assert (= bs!136488 (and d!232311 d!232209)))

(assert (=> bs!136488 (= lambda!21463 lambda!21438)))

(declare-fun bs!136489 () Bool)

(assert (= bs!136489 (and d!232311 d!232245)))

(assert (=> bs!136489 (= lambda!21463 lambda!21446)))

(declare-fun bs!136490 () Bool)

(assert (= bs!136490 (and d!232311 d!232291)))

(assert (=> bs!136490 (= lambda!21463 lambda!21461)))

(declare-fun bs!136491 () Bool)

(assert (= bs!136491 (and d!232311 d!232249)))

(assert (=> bs!136491 (= lambda!21463 lambda!21447)))

(declare-fun bs!136492 () Bool)

(assert (= bs!136492 (and d!232311 d!232237)))

(assert (=> bs!136492 (= lambda!21463 lambda!21442)))

(assert (=> d!232311 (= (inv!9492 setElem!3635) (forall!1946 (exprs!733 setElem!3635) lambda!21463))))

(declare-fun bs!136493 () Bool)

(assert (= bs!136493 d!232311))

(declare-fun m!946058 () Bool)

(assert (=> bs!136493 m!946058))

(assert (=> setNonEmpty!3635 d!232311))

(declare-fun b!689535 () Bool)

(assert (=> b!689535 true))

(declare-fun d!232313 () Bool)

(declare-fun res!313134 () Bool)

(declare-fun e!433357 () Bool)

(assert (=> d!232313 (=> (not res!313134) (not e!433357))))

(declare-fun valid!632 (MutableMap!711) Bool)

(assert (=> d!232313 (= res!313134 (valid!632 (cache!1098 cacheFindLongestMatch!59)))))

(assert (=> d!232313 (= (validCacheMapFindLongestMatch!4 (cache!1098 cacheFindLongestMatch!59) (totalInput!1789 cacheFindLongestMatch!59)) e!433357)))

(declare-fun b!689534 () Bool)

(declare-fun res!313135 () Bool)

(assert (=> b!689534 (=> (not res!313135) (not e!433357))))

(declare-fun invariantList!134 (List!7397) Bool)

(declare-datatypes ((ListMap!317 0))(
  ( (ListMap!318 (toList!499 List!7397)) )
))
(declare-fun map!1644 (MutableMap!711) ListMap!317)

(assert (=> b!689534 (= res!313135 (invariantList!134 (toList!499 (map!1644 (cache!1098 cacheFindLongestMatch!59)))))))

(declare-fun lambda!21466 () Int)

(declare-fun forall!1950 (List!7397 Int) Bool)

(assert (=> b!689535 (= e!433357 (forall!1950 (toList!499 (map!1644 (cache!1098 cacheFindLongestMatch!59))) lambda!21466))))

(assert (= (and d!232313 res!313134) b!689534))

(assert (= (and b!689534 res!313135) b!689535))

(declare-fun m!946061 () Bool)

(assert (=> d!232313 m!946061))

(declare-fun m!946063 () Bool)

(assert (=> b!689534 m!946063))

(declare-fun m!946065 () Bool)

(assert (=> b!689534 m!946065))

(assert (=> b!689535 m!946063))

(declare-fun m!946067 () Bool)

(assert (=> b!689535 m!946067))

(assert (=> d!232147 d!232313))

(declare-fun bs!136494 () Bool)

(declare-fun d!232315 () Bool)

(assert (= bs!136494 (and d!232315 d!232233)))

(declare-fun lambda!21467 () Int)

(assert (=> bs!136494 (= lambda!21467 lambda!21441)))

(declare-fun bs!136495 () Bool)

(assert (= bs!136495 (and d!232315 d!232261)))

(assert (=> bs!136495 (= lambda!21467 lambda!21454)))

(declare-fun bs!136496 () Bool)

(assert (= bs!136496 (and d!232315 d!232265)))

(assert (=> bs!136496 (= lambda!21467 lambda!21458)))

(declare-fun bs!136497 () Bool)

(assert (= bs!136497 (and d!232315 d!232267)))

(assert (=> bs!136497 (= lambda!21467 lambda!21459)))

(declare-fun bs!136498 () Bool)

(assert (= bs!136498 (and d!232315 d!232273)))

(assert (=> bs!136498 (= lambda!21467 lambda!21460)))

(declare-fun bs!136499 () Bool)

(assert (= bs!136499 (and d!232315 d!232211)))

(assert (=> bs!136499 (= lambda!21467 lambda!21439)))

(declare-fun bs!136500 () Bool)

(assert (= bs!136500 (and d!232315 d!232215)))

(assert (=> bs!136500 (= lambda!21467 lambda!21440)))

(declare-fun bs!136501 () Bool)

(assert (= bs!136501 (and d!232315 d!232209)))

(assert (=> bs!136501 (= lambda!21467 lambda!21438)))

(declare-fun bs!136502 () Bool)

(assert (= bs!136502 (and d!232315 d!232293)))

(assert (=> bs!136502 (= lambda!21467 lambda!21462)))

(declare-fun bs!136503 () Bool)

(assert (= bs!136503 (and d!232315 d!232311)))

(assert (=> bs!136503 (= lambda!21467 lambda!21463)))

(declare-fun bs!136504 () Bool)

(assert (= bs!136504 (and d!232315 d!232245)))

(assert (=> bs!136504 (= lambda!21467 lambda!21446)))

(declare-fun bs!136505 () Bool)

(assert (= bs!136505 (and d!232315 d!232291)))

(assert (=> bs!136505 (= lambda!21467 lambda!21461)))

(declare-fun bs!136506 () Bool)

(assert (= bs!136506 (and d!232315 d!232249)))

(assert (=> bs!136506 (= lambda!21467 lambda!21447)))

(declare-fun bs!136507 () Bool)

(assert (= bs!136507 (and d!232315 d!232237)))

(assert (=> bs!136507 (= lambda!21467 lambda!21442)))

(assert (=> d!232315 (= (inv!9492 (_2!4274 (_1!4275 (h!12788 mapDefault!2974)))) (forall!1946 (exprs!733 (_2!4274 (_1!4275 (h!12788 mapDefault!2974)))) lambda!21467))))

(declare-fun bs!136508 () Bool)

(assert (= bs!136508 d!232315))

(declare-fun m!946069 () Bool)

(assert (=> bs!136508 m!946069))

(assert (=> b!689176 d!232315))

(declare-fun bs!136509 () Bool)

(declare-fun d!232317 () Bool)

(assert (= bs!136509 (and d!232317 d!232261)))

(declare-fun lambda!21468 () Int)

(assert (=> bs!136509 (= lambda!21468 lambda!21454)))

(declare-fun bs!136510 () Bool)

(assert (= bs!136510 (and d!232317 d!232265)))

(assert (=> bs!136510 (= lambda!21468 lambda!21458)))

(declare-fun bs!136511 () Bool)

(assert (= bs!136511 (and d!232317 d!232267)))

(assert (=> bs!136511 (= lambda!21468 lambda!21459)))

(declare-fun bs!136512 () Bool)

(assert (= bs!136512 (and d!232317 d!232273)))

(assert (=> bs!136512 (= lambda!21468 lambda!21460)))

(declare-fun bs!136513 () Bool)

(assert (= bs!136513 (and d!232317 d!232211)))

(assert (=> bs!136513 (= lambda!21468 lambda!21439)))

(declare-fun bs!136514 () Bool)

(assert (= bs!136514 (and d!232317 d!232215)))

(assert (=> bs!136514 (= lambda!21468 lambda!21440)))

(declare-fun bs!136515 () Bool)

(assert (= bs!136515 (and d!232317 d!232209)))

(assert (=> bs!136515 (= lambda!21468 lambda!21438)))

(declare-fun bs!136516 () Bool)

(assert (= bs!136516 (and d!232317 d!232233)))

(assert (=> bs!136516 (= lambda!21468 lambda!21441)))

(declare-fun bs!136517 () Bool)

(assert (= bs!136517 (and d!232317 d!232315)))

(assert (=> bs!136517 (= lambda!21468 lambda!21467)))

(declare-fun bs!136518 () Bool)

(assert (= bs!136518 (and d!232317 d!232293)))

(assert (=> bs!136518 (= lambda!21468 lambda!21462)))

(declare-fun bs!136519 () Bool)

(assert (= bs!136519 (and d!232317 d!232311)))

(assert (=> bs!136519 (= lambda!21468 lambda!21463)))

(declare-fun bs!136520 () Bool)

(assert (= bs!136520 (and d!232317 d!232245)))

(assert (=> bs!136520 (= lambda!21468 lambda!21446)))

(declare-fun bs!136521 () Bool)

(assert (= bs!136521 (and d!232317 d!232291)))

(assert (=> bs!136521 (= lambda!21468 lambda!21461)))

(declare-fun bs!136522 () Bool)

(assert (= bs!136522 (and d!232317 d!232249)))

(assert (=> bs!136522 (= lambda!21468 lambda!21447)))

(declare-fun bs!136523 () Bool)

(assert (= bs!136523 (and d!232317 d!232237)))

(assert (=> bs!136523 (= lambda!21468 lambda!21442)))

(assert (=> d!232317 (= (inv!9492 (_1!4276 (_1!4277 (h!12789 mapValue!2971)))) (forall!1946 (exprs!733 (_1!4276 (_1!4277 (h!12789 mapValue!2971)))) lambda!21468))))

(declare-fun bs!136524 () Bool)

(assert (= bs!136524 d!232317))

(declare-fun m!946071 () Bool)

(assert (=> bs!136524 m!946071))

(assert (=> b!689153 d!232317))

(declare-fun bs!136525 () Bool)

(declare-fun d!232319 () Bool)

(assert (= bs!136525 (and d!232319 d!232261)))

(declare-fun lambda!21469 () Int)

(assert (=> bs!136525 (= lambda!21469 lambda!21454)))

(declare-fun bs!136526 () Bool)

(assert (= bs!136526 (and d!232319 d!232265)))

(assert (=> bs!136526 (= lambda!21469 lambda!21458)))

(declare-fun bs!136527 () Bool)

(assert (= bs!136527 (and d!232319 d!232267)))

(assert (=> bs!136527 (= lambda!21469 lambda!21459)))

(declare-fun bs!136528 () Bool)

(assert (= bs!136528 (and d!232319 d!232273)))

(assert (=> bs!136528 (= lambda!21469 lambda!21460)))

(declare-fun bs!136529 () Bool)

(assert (= bs!136529 (and d!232319 d!232317)))

(assert (=> bs!136529 (= lambda!21469 lambda!21468)))

(declare-fun bs!136530 () Bool)

(assert (= bs!136530 (and d!232319 d!232211)))

(assert (=> bs!136530 (= lambda!21469 lambda!21439)))

(declare-fun bs!136531 () Bool)

(assert (= bs!136531 (and d!232319 d!232215)))

(assert (=> bs!136531 (= lambda!21469 lambda!21440)))

(declare-fun bs!136532 () Bool)

(assert (= bs!136532 (and d!232319 d!232209)))

(assert (=> bs!136532 (= lambda!21469 lambda!21438)))

(declare-fun bs!136533 () Bool)

(assert (= bs!136533 (and d!232319 d!232233)))

(assert (=> bs!136533 (= lambda!21469 lambda!21441)))

(declare-fun bs!136534 () Bool)

(assert (= bs!136534 (and d!232319 d!232315)))

(assert (=> bs!136534 (= lambda!21469 lambda!21467)))

(declare-fun bs!136535 () Bool)

(assert (= bs!136535 (and d!232319 d!232293)))

(assert (=> bs!136535 (= lambda!21469 lambda!21462)))

(declare-fun bs!136536 () Bool)

(assert (= bs!136536 (and d!232319 d!232311)))

(assert (=> bs!136536 (= lambda!21469 lambda!21463)))

(declare-fun bs!136537 () Bool)

(assert (= bs!136537 (and d!232319 d!232245)))

(assert (=> bs!136537 (= lambda!21469 lambda!21446)))

(declare-fun bs!136538 () Bool)

(assert (= bs!136538 (and d!232319 d!232291)))

(assert (=> bs!136538 (= lambda!21469 lambda!21461)))

(declare-fun bs!136539 () Bool)

(assert (= bs!136539 (and d!232319 d!232249)))

(assert (=> bs!136539 (= lambda!21469 lambda!21447)))

(declare-fun bs!136540 () Bool)

(assert (= bs!136540 (and d!232319 d!232237)))

(assert (=> bs!136540 (= lambda!21469 lambda!21442)))

(assert (=> d!232319 (= (inv!9492 (_1!4276 (_1!4277 (h!12789 mapDefault!2971)))) (forall!1946 (exprs!733 (_1!4276 (_1!4277 (h!12789 mapDefault!2971)))) lambda!21469))))

(declare-fun bs!136541 () Bool)

(assert (= bs!136541 d!232319))

(declare-fun m!946073 () Bool)

(assert (=> bs!136541 m!946073))

(assert (=> b!689154 d!232319))

(declare-fun bs!136542 () Bool)

(declare-fun d!232321 () Bool)

(assert (= bs!136542 (and d!232321 d!232261)))

(declare-fun lambda!21470 () Int)

(assert (=> bs!136542 (= lambda!21470 lambda!21454)))

(declare-fun bs!136543 () Bool)

(assert (= bs!136543 (and d!232321 d!232265)))

(assert (=> bs!136543 (= lambda!21470 lambda!21458)))

(declare-fun bs!136544 () Bool)

(assert (= bs!136544 (and d!232321 d!232267)))

(assert (=> bs!136544 (= lambda!21470 lambda!21459)))

(declare-fun bs!136545 () Bool)

(assert (= bs!136545 (and d!232321 d!232273)))

(assert (=> bs!136545 (= lambda!21470 lambda!21460)))

(declare-fun bs!136546 () Bool)

(assert (= bs!136546 (and d!232321 d!232317)))

(assert (=> bs!136546 (= lambda!21470 lambda!21468)))

(declare-fun bs!136547 () Bool)

(assert (= bs!136547 (and d!232321 d!232319)))

(assert (=> bs!136547 (= lambda!21470 lambda!21469)))

(declare-fun bs!136548 () Bool)

(assert (= bs!136548 (and d!232321 d!232211)))

(assert (=> bs!136548 (= lambda!21470 lambda!21439)))

(declare-fun bs!136549 () Bool)

(assert (= bs!136549 (and d!232321 d!232215)))

(assert (=> bs!136549 (= lambda!21470 lambda!21440)))

(declare-fun bs!136550 () Bool)

(assert (= bs!136550 (and d!232321 d!232209)))

(assert (=> bs!136550 (= lambda!21470 lambda!21438)))

(declare-fun bs!136551 () Bool)

(assert (= bs!136551 (and d!232321 d!232233)))

(assert (=> bs!136551 (= lambda!21470 lambda!21441)))

(declare-fun bs!136552 () Bool)

(assert (= bs!136552 (and d!232321 d!232315)))

(assert (=> bs!136552 (= lambda!21470 lambda!21467)))

(declare-fun bs!136553 () Bool)

(assert (= bs!136553 (and d!232321 d!232293)))

(assert (=> bs!136553 (= lambda!21470 lambda!21462)))

(declare-fun bs!136554 () Bool)

(assert (= bs!136554 (and d!232321 d!232311)))

(assert (=> bs!136554 (= lambda!21470 lambda!21463)))

(declare-fun bs!136555 () Bool)

(assert (= bs!136555 (and d!232321 d!232245)))

(assert (=> bs!136555 (= lambda!21470 lambda!21446)))

(declare-fun bs!136556 () Bool)

(assert (= bs!136556 (and d!232321 d!232291)))

(assert (=> bs!136556 (= lambda!21470 lambda!21461)))

(declare-fun bs!136557 () Bool)

(assert (= bs!136557 (and d!232321 d!232249)))

(assert (=> bs!136557 (= lambda!21470 lambda!21447)))

(declare-fun bs!136558 () Bool)

(assert (= bs!136558 (and d!232321 d!232237)))

(assert (=> bs!136558 (= lambda!21470 lambda!21442)))

(assert (=> d!232321 (= (inv!9492 setElem!3630) (forall!1946 (exprs!733 setElem!3630) lambda!21470))))

(declare-fun bs!136559 () Bool)

(assert (= bs!136559 d!232321))

(declare-fun m!946075 () Bool)

(assert (=> bs!136559 m!946075))

(assert (=> setNonEmpty!3630 d!232321))

(declare-fun bs!136560 () Bool)

(declare-fun d!232323 () Bool)

(assert (= bs!136560 (and d!232323 d!232261)))

(declare-fun lambda!21471 () Int)

(assert (=> bs!136560 (= lambda!21471 lambda!21454)))

(declare-fun bs!136561 () Bool)

(assert (= bs!136561 (and d!232323 d!232265)))

(assert (=> bs!136561 (= lambda!21471 lambda!21458)))

(declare-fun bs!136562 () Bool)

(assert (= bs!136562 (and d!232323 d!232267)))

(assert (=> bs!136562 (= lambda!21471 lambda!21459)))

(declare-fun bs!136563 () Bool)

(assert (= bs!136563 (and d!232323 d!232273)))

(assert (=> bs!136563 (= lambda!21471 lambda!21460)))

(declare-fun bs!136564 () Bool)

(assert (= bs!136564 (and d!232323 d!232317)))

(assert (=> bs!136564 (= lambda!21471 lambda!21468)))

(declare-fun bs!136565 () Bool)

(assert (= bs!136565 (and d!232323 d!232319)))

(assert (=> bs!136565 (= lambda!21471 lambda!21469)))

(declare-fun bs!136566 () Bool)

(assert (= bs!136566 (and d!232323 d!232215)))

(assert (=> bs!136566 (= lambda!21471 lambda!21440)))

(declare-fun bs!136567 () Bool)

(assert (= bs!136567 (and d!232323 d!232209)))

(assert (=> bs!136567 (= lambda!21471 lambda!21438)))

(declare-fun bs!136568 () Bool)

(assert (= bs!136568 (and d!232323 d!232233)))

(assert (=> bs!136568 (= lambda!21471 lambda!21441)))

(declare-fun bs!136569 () Bool)

(assert (= bs!136569 (and d!232323 d!232315)))

(assert (=> bs!136569 (= lambda!21471 lambda!21467)))

(declare-fun bs!136570 () Bool)

(assert (= bs!136570 (and d!232323 d!232293)))

(assert (=> bs!136570 (= lambda!21471 lambda!21462)))

(declare-fun bs!136571 () Bool)

(assert (= bs!136571 (and d!232323 d!232311)))

(assert (=> bs!136571 (= lambda!21471 lambda!21463)))

(declare-fun bs!136572 () Bool)

(assert (= bs!136572 (and d!232323 d!232245)))

(assert (=> bs!136572 (= lambda!21471 lambda!21446)))

(declare-fun bs!136573 () Bool)

(assert (= bs!136573 (and d!232323 d!232291)))

(assert (=> bs!136573 (= lambda!21471 lambda!21461)))

(declare-fun bs!136574 () Bool)

(assert (= bs!136574 (and d!232323 d!232211)))

(assert (=> bs!136574 (= lambda!21471 lambda!21439)))

(declare-fun bs!136575 () Bool)

(assert (= bs!136575 (and d!232323 d!232321)))

(assert (=> bs!136575 (= lambda!21471 lambda!21470)))

(declare-fun bs!136576 () Bool)

(assert (= bs!136576 (and d!232323 d!232249)))

(assert (=> bs!136576 (= lambda!21471 lambda!21447)))

(declare-fun bs!136577 () Bool)

(assert (= bs!136577 (and d!232323 d!232237)))

(assert (=> bs!136577 (= lambda!21471 lambda!21442)))

(assert (=> d!232323 (= (inv!9492 setElem!3644) (forall!1946 (exprs!733 setElem!3644) lambda!21471))))

(declare-fun bs!136578 () Bool)

(assert (= bs!136578 d!232323))

(declare-fun m!946077 () Bool)

(assert (=> bs!136578 m!946077))

(assert (=> setNonEmpty!3644 d!232323))

(assert (=> b!689077 d!232259))

(declare-fun bs!136579 () Bool)

(declare-fun d!232325 () Bool)

(assert (= bs!136579 (and d!232325 d!232261)))

(declare-fun lambda!21472 () Int)

(assert (=> bs!136579 (= lambda!21472 lambda!21454)))

(declare-fun bs!136580 () Bool)

(assert (= bs!136580 (and d!232325 d!232323)))

(assert (=> bs!136580 (= lambda!21472 lambda!21471)))

(declare-fun bs!136581 () Bool)

(assert (= bs!136581 (and d!232325 d!232265)))

(assert (=> bs!136581 (= lambda!21472 lambda!21458)))

(declare-fun bs!136582 () Bool)

(assert (= bs!136582 (and d!232325 d!232267)))

(assert (=> bs!136582 (= lambda!21472 lambda!21459)))

(declare-fun bs!136583 () Bool)

(assert (= bs!136583 (and d!232325 d!232273)))

(assert (=> bs!136583 (= lambda!21472 lambda!21460)))

(declare-fun bs!136584 () Bool)

(assert (= bs!136584 (and d!232325 d!232317)))

(assert (=> bs!136584 (= lambda!21472 lambda!21468)))

(declare-fun bs!136585 () Bool)

(assert (= bs!136585 (and d!232325 d!232319)))

(assert (=> bs!136585 (= lambda!21472 lambda!21469)))

(declare-fun bs!136586 () Bool)

(assert (= bs!136586 (and d!232325 d!232215)))

(assert (=> bs!136586 (= lambda!21472 lambda!21440)))

(declare-fun bs!136587 () Bool)

(assert (= bs!136587 (and d!232325 d!232209)))

(assert (=> bs!136587 (= lambda!21472 lambda!21438)))

(declare-fun bs!136588 () Bool)

(assert (= bs!136588 (and d!232325 d!232233)))

(assert (=> bs!136588 (= lambda!21472 lambda!21441)))

(declare-fun bs!136589 () Bool)

(assert (= bs!136589 (and d!232325 d!232315)))

(assert (=> bs!136589 (= lambda!21472 lambda!21467)))

(declare-fun bs!136590 () Bool)

(assert (= bs!136590 (and d!232325 d!232293)))

(assert (=> bs!136590 (= lambda!21472 lambda!21462)))

(declare-fun bs!136591 () Bool)

(assert (= bs!136591 (and d!232325 d!232311)))

(assert (=> bs!136591 (= lambda!21472 lambda!21463)))

(declare-fun bs!136592 () Bool)

(assert (= bs!136592 (and d!232325 d!232245)))

(assert (=> bs!136592 (= lambda!21472 lambda!21446)))

(declare-fun bs!136593 () Bool)

(assert (= bs!136593 (and d!232325 d!232291)))

(assert (=> bs!136593 (= lambda!21472 lambda!21461)))

(declare-fun bs!136594 () Bool)

(assert (= bs!136594 (and d!232325 d!232211)))

(assert (=> bs!136594 (= lambda!21472 lambda!21439)))

(declare-fun bs!136595 () Bool)

(assert (= bs!136595 (and d!232325 d!232321)))

(assert (=> bs!136595 (= lambda!21472 lambda!21470)))

(declare-fun bs!136596 () Bool)

(assert (= bs!136596 (and d!232325 d!232249)))

(assert (=> bs!136596 (= lambda!21472 lambda!21447)))

(declare-fun bs!136597 () Bool)

(assert (= bs!136597 (and d!232325 d!232237)))

(assert (=> bs!136597 (= lambda!21472 lambda!21442)))

(assert (=> d!232325 (= (inv!9492 (_1!4276 (_1!4277 (h!12789 (zeroValue!998 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457)))))))))) (forall!1946 (exprs!733 (_1!4276 (_1!4277 (h!12789 (zeroValue!998 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457)))))))))) lambda!21472))))

(declare-fun bs!136598 () Bool)

(assert (= bs!136598 d!232325))

(declare-fun m!946079 () Bool)

(assert (=> bs!136598 m!946079))

(assert (=> b!689184 d!232325))

(declare-fun d!232327 () Bool)

(assert (=> d!232327 (= (inv!9493 (xs!5265 (c!121420 input!756))) (<= (size!6067 (innerList!2674 (xs!5265 (c!121420 input!756)))) 2147483647))))

(declare-fun bs!136599 () Bool)

(assert (= bs!136599 d!232327))

(declare-fun m!946081 () Bool)

(assert (=> bs!136599 m!946081))

(assert (=> b!689248 d!232327))

(declare-fun bs!136600 () Bool)

(declare-fun d!232329 () Bool)

(assert (= bs!136600 (and d!232329 d!232261)))

(declare-fun lambda!21473 () Int)

(assert (=> bs!136600 (= lambda!21473 lambda!21454)))

(declare-fun bs!136601 () Bool)

(assert (= bs!136601 (and d!232329 d!232323)))

(assert (=> bs!136601 (= lambda!21473 lambda!21471)))

(declare-fun bs!136602 () Bool)

(assert (= bs!136602 (and d!232329 d!232265)))

(assert (=> bs!136602 (= lambda!21473 lambda!21458)))

(declare-fun bs!136603 () Bool)

(assert (= bs!136603 (and d!232329 d!232267)))

(assert (=> bs!136603 (= lambda!21473 lambda!21459)))

(declare-fun bs!136604 () Bool)

(assert (= bs!136604 (and d!232329 d!232325)))

(assert (=> bs!136604 (= lambda!21473 lambda!21472)))

(declare-fun bs!136605 () Bool)

(assert (= bs!136605 (and d!232329 d!232273)))

(assert (=> bs!136605 (= lambda!21473 lambda!21460)))

(declare-fun bs!136606 () Bool)

(assert (= bs!136606 (and d!232329 d!232317)))

(assert (=> bs!136606 (= lambda!21473 lambda!21468)))

(declare-fun bs!136607 () Bool)

(assert (= bs!136607 (and d!232329 d!232319)))

(assert (=> bs!136607 (= lambda!21473 lambda!21469)))

(declare-fun bs!136608 () Bool)

(assert (= bs!136608 (and d!232329 d!232215)))

(assert (=> bs!136608 (= lambda!21473 lambda!21440)))

(declare-fun bs!136609 () Bool)

(assert (= bs!136609 (and d!232329 d!232209)))

(assert (=> bs!136609 (= lambda!21473 lambda!21438)))

(declare-fun bs!136610 () Bool)

(assert (= bs!136610 (and d!232329 d!232233)))

(assert (=> bs!136610 (= lambda!21473 lambda!21441)))

(declare-fun bs!136611 () Bool)

(assert (= bs!136611 (and d!232329 d!232315)))

(assert (=> bs!136611 (= lambda!21473 lambda!21467)))

(declare-fun bs!136612 () Bool)

(assert (= bs!136612 (and d!232329 d!232293)))

(assert (=> bs!136612 (= lambda!21473 lambda!21462)))

(declare-fun bs!136613 () Bool)

(assert (= bs!136613 (and d!232329 d!232311)))

(assert (=> bs!136613 (= lambda!21473 lambda!21463)))

(declare-fun bs!136614 () Bool)

(assert (= bs!136614 (and d!232329 d!232245)))

(assert (=> bs!136614 (= lambda!21473 lambda!21446)))

(declare-fun bs!136615 () Bool)

(assert (= bs!136615 (and d!232329 d!232291)))

(assert (=> bs!136615 (= lambda!21473 lambda!21461)))

(declare-fun bs!136616 () Bool)

(assert (= bs!136616 (and d!232329 d!232211)))

(assert (=> bs!136616 (= lambda!21473 lambda!21439)))

(declare-fun bs!136617 () Bool)

(assert (= bs!136617 (and d!232329 d!232321)))

(assert (=> bs!136617 (= lambda!21473 lambda!21470)))

(declare-fun bs!136618 () Bool)

(assert (= bs!136618 (and d!232329 d!232249)))

(assert (=> bs!136618 (= lambda!21473 lambda!21447)))

(declare-fun bs!136619 () Bool)

(assert (= bs!136619 (and d!232329 d!232237)))

(assert (=> bs!136619 (= lambda!21473 lambda!21442)))

(assert (=> d!232329 (= (inv!9492 setElem!3628) (forall!1946 (exprs!733 setElem!3628) lambda!21473))))

(declare-fun bs!136620 () Bool)

(assert (= bs!136620 d!232329))

(declare-fun m!946083 () Bool)

(assert (=> bs!136620 m!946083))

(assert (=> setNonEmpty!3628 d!232329))

(declare-fun b!689541 () Bool)

(declare-fun e!433359 () List!7399)

(assert (=> b!689541 (= e!433359 (++!1939 (list!3116 (left!5957 (c!121421 (_1!4273 lt!284253)))) (list!3116 (right!6287 (c!121421 (_1!4273 lt!284253))))))))

(declare-fun b!689539 () Bool)

(declare-fun e!433358 () List!7399)

(assert (=> b!689539 (= e!433358 e!433359)))

(declare-fun c!121506 () Bool)

(assert (=> b!689539 (= c!121506 ((_ is Leaf!3882) (c!121421 (_1!4273 lt!284253))))))

(declare-fun d!232331 () Bool)

(declare-fun c!121505 () Bool)

(assert (=> d!232331 (= c!121505 ((_ is Empty!2617) (c!121421 (_1!4273 lt!284253))))))

(assert (=> d!232331 (= (list!3116 (c!121421 (_1!4273 lt!284253))) e!433358)))

(declare-fun b!689538 () Bool)

(assert (=> b!689538 (= e!433358 Nil!7385)))

(declare-fun b!689540 () Bool)

(assert (=> b!689540 (= e!433359 (list!3119 (xs!5266 (c!121421 (_1!4273 lt!284253)))))))

(assert (= (and d!232331 c!121505) b!689538))

(assert (= (and d!232331 (not c!121505)) b!689539))

(assert (= (and b!689539 c!121506) b!689540))

(assert (= (and b!689539 (not c!121506)) b!689541))

(assert (=> b!689541 m!946040))

(assert (=> b!689541 m!946036))

(assert (=> b!689541 m!946040))

(assert (=> b!689541 m!946036))

(declare-fun m!946085 () Bool)

(assert (=> b!689541 m!946085))

(declare-fun m!946087 () Bool)

(assert (=> b!689540 m!946087))

(assert (=> d!232149 d!232331))

(declare-fun b!689545 () Bool)

(declare-fun e!433361 () List!7399)

(assert (=> b!689545 (= e!433361 (++!1939 (list!3116 (left!5957 (c!121421 (_1!4273 lt!284252)))) (list!3116 (right!6287 (c!121421 (_1!4273 lt!284252))))))))

(declare-fun b!689543 () Bool)

(declare-fun e!433360 () List!7399)

(assert (=> b!689543 (= e!433360 e!433361)))

(declare-fun c!121508 () Bool)

(assert (=> b!689543 (= c!121508 ((_ is Leaf!3882) (c!121421 (_1!4273 lt!284252))))))

(declare-fun d!232333 () Bool)

(declare-fun c!121507 () Bool)

(assert (=> d!232333 (= c!121507 ((_ is Empty!2617) (c!121421 (_1!4273 lt!284252))))))

(assert (=> d!232333 (= (list!3116 (c!121421 (_1!4273 lt!284252))) e!433360)))

(declare-fun b!689542 () Bool)

(assert (=> b!689542 (= e!433360 Nil!7385)))

(declare-fun b!689544 () Bool)

(assert (=> b!689544 (= e!433361 (list!3119 (xs!5266 (c!121421 (_1!4273 lt!284252)))))))

(assert (= (and d!232333 c!121507) b!689542))

(assert (= (and d!232333 (not c!121507)) b!689543))

(assert (= (and b!689543 c!121508) b!689544))

(assert (= (and b!689543 (not c!121508)) b!689545))

(declare-fun m!946089 () Bool)

(assert (=> b!689545 m!946089))

(declare-fun m!946091 () Bool)

(assert (=> b!689545 m!946091))

(assert (=> b!689545 m!946089))

(assert (=> b!689545 m!946091))

(declare-fun m!946093 () Bool)

(assert (=> b!689545 m!946093))

(declare-fun m!946095 () Bool)

(assert (=> b!689544 m!946095))

(assert (=> d!232161 d!232333))

(assert (=> b!689007 d!232199))

(declare-fun bs!136621 () Bool)

(declare-fun d!232335 () Bool)

(assert (= bs!136621 (and d!232335 d!232261)))

(declare-fun lambda!21474 () Int)

(assert (=> bs!136621 (= lambda!21474 lambda!21454)))

(declare-fun bs!136622 () Bool)

(assert (= bs!136622 (and d!232335 d!232329)))

(assert (=> bs!136622 (= lambda!21474 lambda!21473)))

(declare-fun bs!136623 () Bool)

(assert (= bs!136623 (and d!232335 d!232323)))

(assert (=> bs!136623 (= lambda!21474 lambda!21471)))

(declare-fun bs!136624 () Bool)

(assert (= bs!136624 (and d!232335 d!232265)))

(assert (=> bs!136624 (= lambda!21474 lambda!21458)))

(declare-fun bs!136625 () Bool)

(assert (= bs!136625 (and d!232335 d!232267)))

(assert (=> bs!136625 (= lambda!21474 lambda!21459)))

(declare-fun bs!136626 () Bool)

(assert (= bs!136626 (and d!232335 d!232325)))

(assert (=> bs!136626 (= lambda!21474 lambda!21472)))

(declare-fun bs!136627 () Bool)

(assert (= bs!136627 (and d!232335 d!232273)))

(assert (=> bs!136627 (= lambda!21474 lambda!21460)))

(declare-fun bs!136628 () Bool)

(assert (= bs!136628 (and d!232335 d!232317)))

(assert (=> bs!136628 (= lambda!21474 lambda!21468)))

(declare-fun bs!136629 () Bool)

(assert (= bs!136629 (and d!232335 d!232319)))

(assert (=> bs!136629 (= lambda!21474 lambda!21469)))

(declare-fun bs!136630 () Bool)

(assert (= bs!136630 (and d!232335 d!232215)))

(assert (=> bs!136630 (= lambda!21474 lambda!21440)))

(declare-fun bs!136631 () Bool)

(assert (= bs!136631 (and d!232335 d!232209)))

(assert (=> bs!136631 (= lambda!21474 lambda!21438)))

(declare-fun bs!136632 () Bool)

(assert (= bs!136632 (and d!232335 d!232233)))

(assert (=> bs!136632 (= lambda!21474 lambda!21441)))

(declare-fun bs!136633 () Bool)

(assert (= bs!136633 (and d!232335 d!232315)))

(assert (=> bs!136633 (= lambda!21474 lambda!21467)))

(declare-fun bs!136634 () Bool)

(assert (= bs!136634 (and d!232335 d!232293)))

(assert (=> bs!136634 (= lambda!21474 lambda!21462)))

(declare-fun bs!136635 () Bool)

(assert (= bs!136635 (and d!232335 d!232311)))

(assert (=> bs!136635 (= lambda!21474 lambda!21463)))

(declare-fun bs!136636 () Bool)

(assert (= bs!136636 (and d!232335 d!232245)))

(assert (=> bs!136636 (= lambda!21474 lambda!21446)))

(declare-fun bs!136637 () Bool)

(assert (= bs!136637 (and d!232335 d!232291)))

(assert (=> bs!136637 (= lambda!21474 lambda!21461)))

(declare-fun bs!136638 () Bool)

(assert (= bs!136638 (and d!232335 d!232211)))

(assert (=> bs!136638 (= lambda!21474 lambda!21439)))

(declare-fun bs!136639 () Bool)

(assert (= bs!136639 (and d!232335 d!232321)))

(assert (=> bs!136639 (= lambda!21474 lambda!21470)))

(declare-fun bs!136640 () Bool)

(assert (= bs!136640 (and d!232335 d!232249)))

(assert (=> bs!136640 (= lambda!21474 lambda!21447)))

(declare-fun bs!136641 () Bool)

(assert (= bs!136641 (and d!232335 d!232237)))

(assert (=> bs!136641 (= lambda!21474 lambda!21442)))

(assert (=> d!232335 (= (inv!9492 (_2!4274 (_1!4275 (h!12788 mapValue!2966)))) (forall!1946 (exprs!733 (_2!4274 (_1!4275 (h!12788 mapValue!2966)))) lambda!21474))))

(declare-fun bs!136642 () Bool)

(assert (= bs!136642 d!232335))

(declare-fun m!946097 () Bool)

(assert (=> bs!136642 m!946097))

(assert (=> b!689183 d!232335))

(declare-fun bs!136643 () Bool)

(declare-fun d!232337 () Bool)

(assert (= bs!136643 (and d!232337 d!232261)))

(declare-fun lambda!21475 () Int)

(assert (=> bs!136643 (= lambda!21475 lambda!21454)))

(declare-fun bs!136644 () Bool)

(assert (= bs!136644 (and d!232337 d!232329)))

(assert (=> bs!136644 (= lambda!21475 lambda!21473)))

(declare-fun bs!136645 () Bool)

(assert (= bs!136645 (and d!232337 d!232323)))

(assert (=> bs!136645 (= lambda!21475 lambda!21471)))

(declare-fun bs!136646 () Bool)

(assert (= bs!136646 (and d!232337 d!232265)))

(assert (=> bs!136646 (= lambda!21475 lambda!21458)))

(declare-fun bs!136647 () Bool)

(assert (= bs!136647 (and d!232337 d!232267)))

(assert (=> bs!136647 (= lambda!21475 lambda!21459)))

(declare-fun bs!136648 () Bool)

(assert (= bs!136648 (and d!232337 d!232325)))

(assert (=> bs!136648 (= lambda!21475 lambda!21472)))

(declare-fun bs!136649 () Bool)

(assert (= bs!136649 (and d!232337 d!232273)))

(assert (=> bs!136649 (= lambda!21475 lambda!21460)))

(declare-fun bs!136650 () Bool)

(assert (= bs!136650 (and d!232337 d!232317)))

(assert (=> bs!136650 (= lambda!21475 lambda!21468)))

(declare-fun bs!136651 () Bool)

(assert (= bs!136651 (and d!232337 d!232319)))

(assert (=> bs!136651 (= lambda!21475 lambda!21469)))

(declare-fun bs!136652 () Bool)

(assert (= bs!136652 (and d!232337 d!232335)))

(assert (=> bs!136652 (= lambda!21475 lambda!21474)))

(declare-fun bs!136653 () Bool)

(assert (= bs!136653 (and d!232337 d!232215)))

(assert (=> bs!136653 (= lambda!21475 lambda!21440)))

(declare-fun bs!136654 () Bool)

(assert (= bs!136654 (and d!232337 d!232209)))

(assert (=> bs!136654 (= lambda!21475 lambda!21438)))

(declare-fun bs!136655 () Bool)

(assert (= bs!136655 (and d!232337 d!232233)))

(assert (=> bs!136655 (= lambda!21475 lambda!21441)))

(declare-fun bs!136656 () Bool)

(assert (= bs!136656 (and d!232337 d!232315)))

(assert (=> bs!136656 (= lambda!21475 lambda!21467)))

(declare-fun bs!136657 () Bool)

(assert (= bs!136657 (and d!232337 d!232293)))

(assert (=> bs!136657 (= lambda!21475 lambda!21462)))

(declare-fun bs!136658 () Bool)

(assert (= bs!136658 (and d!232337 d!232311)))

(assert (=> bs!136658 (= lambda!21475 lambda!21463)))

(declare-fun bs!136659 () Bool)

(assert (= bs!136659 (and d!232337 d!232245)))

(assert (=> bs!136659 (= lambda!21475 lambda!21446)))

(declare-fun bs!136660 () Bool)

(assert (= bs!136660 (and d!232337 d!232291)))

(assert (=> bs!136660 (= lambda!21475 lambda!21461)))

(declare-fun bs!136661 () Bool)

(assert (= bs!136661 (and d!232337 d!232211)))

(assert (=> bs!136661 (= lambda!21475 lambda!21439)))

(declare-fun bs!136662 () Bool)

(assert (= bs!136662 (and d!232337 d!232321)))

(assert (=> bs!136662 (= lambda!21475 lambda!21470)))

(declare-fun bs!136663 () Bool)

(assert (= bs!136663 (and d!232337 d!232249)))

(assert (=> bs!136663 (= lambda!21475 lambda!21447)))

(declare-fun bs!136664 () Bool)

(assert (= bs!136664 (and d!232337 d!232237)))

(assert (=> bs!136664 (= lambda!21475 lambda!21442)))

(assert (=> d!232337 (= (inv!9492 setElem!3614) (forall!1946 (exprs!733 setElem!3614) lambda!21475))))

(declare-fun bs!136665 () Bool)

(assert (= bs!136665 d!232337))

(declare-fun m!946099 () Bool)

(assert (=> bs!136665 m!946099))

(assert (=> setNonEmpty!3614 d!232337))

(declare-fun bs!136666 () Bool)

(declare-fun d!232339 () Bool)

(assert (= bs!136666 (and d!232339 d!232261)))

(declare-fun lambda!21476 () Int)

(assert (=> bs!136666 (= lambda!21476 lambda!21454)))

(declare-fun bs!136667 () Bool)

(assert (= bs!136667 (and d!232339 d!232329)))

(assert (=> bs!136667 (= lambda!21476 lambda!21473)))

(declare-fun bs!136668 () Bool)

(assert (= bs!136668 (and d!232339 d!232323)))

(assert (=> bs!136668 (= lambda!21476 lambda!21471)))

(declare-fun bs!136669 () Bool)

(assert (= bs!136669 (and d!232339 d!232265)))

(assert (=> bs!136669 (= lambda!21476 lambda!21458)))

(declare-fun bs!136670 () Bool)

(assert (= bs!136670 (and d!232339 d!232267)))

(assert (=> bs!136670 (= lambda!21476 lambda!21459)))

(declare-fun bs!136671 () Bool)

(assert (= bs!136671 (and d!232339 d!232325)))

(assert (=> bs!136671 (= lambda!21476 lambda!21472)))

(declare-fun bs!136672 () Bool)

(assert (= bs!136672 (and d!232339 d!232273)))

(assert (=> bs!136672 (= lambda!21476 lambda!21460)))

(declare-fun bs!136673 () Bool)

(assert (= bs!136673 (and d!232339 d!232317)))

(assert (=> bs!136673 (= lambda!21476 lambda!21468)))

(declare-fun bs!136674 () Bool)

(assert (= bs!136674 (and d!232339 d!232319)))

(assert (=> bs!136674 (= lambda!21476 lambda!21469)))

(declare-fun bs!136675 () Bool)

(assert (= bs!136675 (and d!232339 d!232335)))

(assert (=> bs!136675 (= lambda!21476 lambda!21474)))

(declare-fun bs!136676 () Bool)

(assert (= bs!136676 (and d!232339 d!232215)))

(assert (=> bs!136676 (= lambda!21476 lambda!21440)))

(declare-fun bs!136677 () Bool)

(assert (= bs!136677 (and d!232339 d!232209)))

(assert (=> bs!136677 (= lambda!21476 lambda!21438)))

(declare-fun bs!136678 () Bool)

(assert (= bs!136678 (and d!232339 d!232337)))

(assert (=> bs!136678 (= lambda!21476 lambda!21475)))

(declare-fun bs!136679 () Bool)

(assert (= bs!136679 (and d!232339 d!232233)))

(assert (=> bs!136679 (= lambda!21476 lambda!21441)))

(declare-fun bs!136680 () Bool)

(assert (= bs!136680 (and d!232339 d!232315)))

(assert (=> bs!136680 (= lambda!21476 lambda!21467)))

(declare-fun bs!136681 () Bool)

(assert (= bs!136681 (and d!232339 d!232293)))

(assert (=> bs!136681 (= lambda!21476 lambda!21462)))

(declare-fun bs!136682 () Bool)

(assert (= bs!136682 (and d!232339 d!232311)))

(assert (=> bs!136682 (= lambda!21476 lambda!21463)))

(declare-fun bs!136683 () Bool)

(assert (= bs!136683 (and d!232339 d!232245)))

(assert (=> bs!136683 (= lambda!21476 lambda!21446)))

(declare-fun bs!136684 () Bool)

(assert (= bs!136684 (and d!232339 d!232291)))

(assert (=> bs!136684 (= lambda!21476 lambda!21461)))

(declare-fun bs!136685 () Bool)

(assert (= bs!136685 (and d!232339 d!232211)))

(assert (=> bs!136685 (= lambda!21476 lambda!21439)))

(declare-fun bs!136686 () Bool)

(assert (= bs!136686 (and d!232339 d!232321)))

(assert (=> bs!136686 (= lambda!21476 lambda!21470)))

(declare-fun bs!136687 () Bool)

(assert (= bs!136687 (and d!232339 d!232249)))

(assert (=> bs!136687 (= lambda!21476 lambda!21447)))

(declare-fun bs!136688 () Bool)

(assert (= bs!136688 (and d!232339 d!232237)))

(assert (=> bs!136688 (= lambda!21476 lambda!21442)))

(assert (=> d!232339 (= (inv!9492 setElem!3621) (forall!1946 (exprs!733 setElem!3621) lambda!21476))))

(declare-fun bs!136689 () Bool)

(assert (= bs!136689 d!232339))

(declare-fun m!946101 () Bool)

(assert (=> bs!136689 m!946101))

(assert (=> setNonEmpty!3621 d!232339))

(assert (=> b!689071 d!232313))

(declare-fun d!232341 () Bool)

(declare-fun e!433362 () Bool)

(assert (=> d!232341 e!433362))

(declare-fun res!313136 () Bool)

(assert (=> d!232341 (=> (not res!313136) (not e!433362))))

(assert (=> d!232341 (= res!313136 (isBalanced!692 (prepend!256 (c!121421 (_1!4273 lt!284267)) (_1!4279 (v!17599 lt!284268)))))))

(declare-fun lt!284341 () BalanceConc!5246)

(assert (=> d!232341 (= lt!284341 (BalanceConc!5247 (prepend!256 (c!121421 (_1!4273 lt!284267)) (_1!4279 (v!17599 lt!284268)))))))

(assert (=> d!232341 (= (prepend!255 (_1!4273 lt!284267) (_1!4279 (v!17599 lt!284268))) lt!284341)))

(declare-fun b!689546 () Bool)

(assert (=> b!689546 (= e!433362 (= (list!3114 lt!284341) (Cons!7385 (_1!4279 (v!17599 lt!284268)) (list!3114 (_1!4273 lt!284267)))))))

(assert (= (and d!232341 res!313136) b!689546))

(declare-fun m!946103 () Bool)

(assert (=> d!232341 m!946103))

(assert (=> d!232341 m!946103))

(declare-fun m!946105 () Bool)

(assert (=> d!232341 m!946105))

(declare-fun m!946107 () Bool)

(assert (=> b!689546 m!946107))

(declare-fun m!946109 () Bool)

(assert (=> b!689546 m!946109))

(assert (=> b!689058 d!232341))

(declare-fun b!689547 () Bool)

(declare-fun e!433363 () Bool)

(declare-fun lt!284342 () tuple2!7750)

(assert (=> b!689547 (= e!433363 (= (list!3115 (_2!4273 lt!284342)) (list!3115 (_2!4279 (v!17599 lt!284268)))))))

(declare-fun b!689548 () Bool)

(declare-fun e!433366 () tuple2!7750)

(assert (=> b!689548 (= e!433366 (tuple2!7751 (BalanceConc!5247 Empty!2617) (_2!4279 (v!17599 lt!284268))))))

(declare-fun b!689549 () Bool)

(declare-fun res!313139 () Bool)

(declare-fun e!433365 () Bool)

(assert (=> b!689549 (=> (not res!313139) (not e!433365))))

(assert (=> b!689549 (= res!313139 (= (list!3114 (_1!4273 lt!284342)) (_1!4278 (lexList!321 thiss!12183 rules!1357 (list!3115 (_2!4279 (v!17599 lt!284268)))))))))

(declare-fun b!689550 () Bool)

(declare-fun lt!284343 () tuple2!7750)

(declare-fun lt!284344 () Option!1704)

(assert (=> b!689550 (= e!433366 (tuple2!7751 (prepend!255 (_1!4273 lt!284343) (_1!4279 (v!17599 lt!284344))) (_2!4273 lt!284343)))))

(assert (=> b!689550 (= lt!284343 (lexRec!152 thiss!12183 rules!1357 (_2!4279 (v!17599 lt!284344))))))

(declare-fun b!689551 () Bool)

(assert (=> b!689551 (= e!433365 (= (list!3115 (_2!4273 lt!284342)) (_2!4278 (lexList!321 thiss!12183 rules!1357 (list!3115 (_2!4279 (v!17599 lt!284268)))))))))

(declare-fun d!232343 () Bool)

(assert (=> d!232343 e!433365))

(declare-fun res!313137 () Bool)

(assert (=> d!232343 (=> (not res!313137) (not e!433365))))

(assert (=> d!232343 (= res!313137 e!433363)))

(declare-fun c!121509 () Bool)

(assert (=> d!232343 (= c!121509 (> (size!6065 (_1!4273 lt!284342)) 0))))

(assert (=> d!232343 (= lt!284342 e!433366)))

(declare-fun c!121510 () Bool)

(assert (=> d!232343 (= c!121510 ((_ is Some!1703) lt!284344))))

(assert (=> d!232343 (= lt!284344 (maxPrefixZipperSequence!455 thiss!12183 rules!1357 (_2!4279 (v!17599 lt!284268))))))

(assert (=> d!232343 (= (lexRec!152 thiss!12183 rules!1357 (_2!4279 (v!17599 lt!284268))) lt!284342)))

(declare-fun b!689552 () Bool)

(declare-fun e!433364 () Bool)

(assert (=> b!689552 (= e!433363 e!433364)))

(declare-fun res!313138 () Bool)

(assert (=> b!689552 (= res!313138 (< (size!6066 (_2!4273 lt!284342)) (size!6066 (_2!4279 (v!17599 lt!284268)))))))

(assert (=> b!689552 (=> (not res!313138) (not e!433364))))

(declare-fun b!689553 () Bool)

(assert (=> b!689553 (= e!433364 (not (isEmpty!4852 (_1!4273 lt!284342))))))

(assert (= (and d!232343 c!121510) b!689550))

(assert (= (and d!232343 (not c!121510)) b!689548))

(assert (= (and d!232343 c!121509) b!689552))

(assert (= (and d!232343 (not c!121509)) b!689547))

(assert (= (and b!689552 res!313138) b!689553))

(assert (= (and d!232343 res!313137) b!689549))

(assert (= (and b!689549 res!313139) b!689551))

(declare-fun m!946111 () Bool)

(assert (=> b!689551 m!946111))

(declare-fun m!946113 () Bool)

(assert (=> b!689551 m!946113))

(assert (=> b!689551 m!946113))

(declare-fun m!946115 () Bool)

(assert (=> b!689551 m!946115))

(assert (=> b!689547 m!946111))

(assert (=> b!689547 m!946113))

(declare-fun m!946117 () Bool)

(assert (=> b!689553 m!946117))

(declare-fun m!946119 () Bool)

(assert (=> b!689549 m!946119))

(assert (=> b!689549 m!946113))

(assert (=> b!689549 m!946113))

(assert (=> b!689549 m!946115))

(declare-fun m!946121 () Bool)

(assert (=> b!689550 m!946121))

(declare-fun m!946123 () Bool)

(assert (=> b!689550 m!946123))

(declare-fun m!946125 () Bool)

(assert (=> d!232343 m!946125))

(declare-fun m!946127 () Bool)

(assert (=> d!232343 m!946127))

(declare-fun m!946129 () Bool)

(assert (=> b!689552 m!946129))

(declare-fun m!946131 () Bool)

(assert (=> b!689552 m!946131))

(assert (=> b!689058 d!232343))

(declare-fun b!689554 () Bool)

(declare-fun res!313144 () Bool)

(declare-fun e!433368 () Bool)

(assert (=> b!689554 (=> (not res!313144) (not e!433368))))

(assert (=> b!689554 (= res!313144 (isBalanced!693 (left!5956 (c!121420 input!756))))))

(declare-fun b!689555 () Bool)

(assert (=> b!689555 (= e!433368 (not (isEmpty!4853 (right!6286 (c!121420 input!756)))))))

(declare-fun b!689556 () Bool)

(declare-fun res!313142 () Bool)

(assert (=> b!689556 (=> (not res!313142) (not e!433368))))

(assert (=> b!689556 (= res!313142 (not (isEmpty!4853 (left!5956 (c!121420 input!756)))))))

(declare-fun b!689557 () Bool)

(declare-fun res!313141 () Bool)

(assert (=> b!689557 (=> (not res!313141) (not e!433368))))

(assert (=> b!689557 (= res!313141 (isBalanced!693 (right!6286 (c!121420 input!756))))))

(declare-fun b!689558 () Bool)

(declare-fun res!313143 () Bool)

(assert (=> b!689558 (=> (not res!313143) (not e!433368))))

(assert (=> b!689558 (= res!313143 (<= (- (height!316 (left!5956 (c!121420 input!756))) (height!316 (right!6286 (c!121420 input!756)))) 1))))

(declare-fun d!232345 () Bool)

(declare-fun res!313140 () Bool)

(declare-fun e!433367 () Bool)

(assert (=> d!232345 (=> res!313140 e!433367)))

(assert (=> d!232345 (= res!313140 (not ((_ is Node!2616) (c!121420 input!756))))))

(assert (=> d!232345 (= (isBalanced!693 (c!121420 input!756)) e!433367)))

(declare-fun b!689559 () Bool)

(assert (=> b!689559 (= e!433367 e!433368)))

(declare-fun res!313145 () Bool)

(assert (=> b!689559 (=> (not res!313145) (not e!433368))))

(assert (=> b!689559 (= res!313145 (<= (- 1) (- (height!316 (left!5956 (c!121420 input!756))) (height!316 (right!6286 (c!121420 input!756))))))))

(assert (= (and d!232345 (not res!313140)) b!689559))

(assert (= (and b!689559 res!313145) b!689558))

(assert (= (and b!689558 res!313143) b!689554))

(assert (= (and b!689554 res!313144) b!689557))

(assert (= (and b!689557 res!313141) b!689556))

(assert (= (and b!689556 res!313142) b!689555))

(declare-fun m!946133 () Bool)

(assert (=> b!689556 m!946133))

(declare-fun m!946135 () Bool)

(assert (=> b!689558 m!946135))

(declare-fun m!946137 () Bool)

(assert (=> b!689558 m!946137))

(declare-fun m!946139 () Bool)

(assert (=> b!689557 m!946139))

(declare-fun m!946141 () Bool)

(assert (=> b!689555 m!946141))

(declare-fun m!946143 () Bool)

(assert (=> b!689554 m!946143))

(assert (=> b!689559 m!946135))

(assert (=> b!689559 m!946137))

(assert (=> d!232169 d!232345))

(declare-fun bs!136690 () Bool)

(declare-fun d!232347 () Bool)

(assert (= bs!136690 (and d!232347 d!232261)))

(declare-fun lambda!21477 () Int)

(assert (=> bs!136690 (= lambda!21477 lambda!21454)))

(declare-fun bs!136691 () Bool)

(assert (= bs!136691 (and d!232347 d!232329)))

(assert (=> bs!136691 (= lambda!21477 lambda!21473)))

(declare-fun bs!136692 () Bool)

(assert (= bs!136692 (and d!232347 d!232323)))

(assert (=> bs!136692 (= lambda!21477 lambda!21471)))

(declare-fun bs!136693 () Bool)

(assert (= bs!136693 (and d!232347 d!232265)))

(assert (=> bs!136693 (= lambda!21477 lambda!21458)))

(declare-fun bs!136694 () Bool)

(assert (= bs!136694 (and d!232347 d!232267)))

(assert (=> bs!136694 (= lambda!21477 lambda!21459)))

(declare-fun bs!136695 () Bool)

(assert (= bs!136695 (and d!232347 d!232325)))

(assert (=> bs!136695 (= lambda!21477 lambda!21472)))

(declare-fun bs!136696 () Bool)

(assert (= bs!136696 (and d!232347 d!232273)))

(assert (=> bs!136696 (= lambda!21477 lambda!21460)))

(declare-fun bs!136697 () Bool)

(assert (= bs!136697 (and d!232347 d!232317)))

(assert (=> bs!136697 (= lambda!21477 lambda!21468)))

(declare-fun bs!136698 () Bool)

(assert (= bs!136698 (and d!232347 d!232319)))

(assert (=> bs!136698 (= lambda!21477 lambda!21469)))

(declare-fun bs!136699 () Bool)

(assert (= bs!136699 (and d!232347 d!232335)))

(assert (=> bs!136699 (= lambda!21477 lambda!21474)))

(declare-fun bs!136700 () Bool)

(assert (= bs!136700 (and d!232347 d!232209)))

(assert (=> bs!136700 (= lambda!21477 lambda!21438)))

(declare-fun bs!136701 () Bool)

(assert (= bs!136701 (and d!232347 d!232337)))

(assert (=> bs!136701 (= lambda!21477 lambda!21475)))

(declare-fun bs!136702 () Bool)

(assert (= bs!136702 (and d!232347 d!232233)))

(assert (=> bs!136702 (= lambda!21477 lambda!21441)))

(declare-fun bs!136703 () Bool)

(assert (= bs!136703 (and d!232347 d!232315)))

(assert (=> bs!136703 (= lambda!21477 lambda!21467)))

(declare-fun bs!136704 () Bool)

(assert (= bs!136704 (and d!232347 d!232293)))

(assert (=> bs!136704 (= lambda!21477 lambda!21462)))

(declare-fun bs!136705 () Bool)

(assert (= bs!136705 (and d!232347 d!232311)))

(assert (=> bs!136705 (= lambda!21477 lambda!21463)))

(declare-fun bs!136706 () Bool)

(assert (= bs!136706 (and d!232347 d!232245)))

(assert (=> bs!136706 (= lambda!21477 lambda!21446)))

(declare-fun bs!136707 () Bool)

(assert (= bs!136707 (and d!232347 d!232291)))

(assert (=> bs!136707 (= lambda!21477 lambda!21461)))

(declare-fun bs!136708 () Bool)

(assert (= bs!136708 (and d!232347 d!232211)))

(assert (=> bs!136708 (= lambda!21477 lambda!21439)))

(declare-fun bs!136709 () Bool)

(assert (= bs!136709 (and d!232347 d!232321)))

(assert (=> bs!136709 (= lambda!21477 lambda!21470)))

(declare-fun bs!136710 () Bool)

(assert (= bs!136710 (and d!232347 d!232339)))

(assert (=> bs!136710 (= lambda!21477 lambda!21476)))

(declare-fun bs!136711 () Bool)

(assert (= bs!136711 (and d!232347 d!232215)))

(assert (=> bs!136711 (= lambda!21477 lambda!21440)))

(declare-fun bs!136712 () Bool)

(assert (= bs!136712 (and d!232347 d!232249)))

(assert (=> bs!136712 (= lambda!21477 lambda!21447)))

(declare-fun bs!136713 () Bool)

(assert (= bs!136713 (and d!232347 d!232237)))

(assert (=> bs!136713 (= lambda!21477 lambda!21442)))

(assert (=> d!232347 (= (inv!9492 setElem!3611) (forall!1946 (exprs!733 setElem!3611) lambda!21477))))

(declare-fun bs!136714 () Bool)

(assert (= bs!136714 d!232347))

(declare-fun m!946145 () Bool)

(assert (=> bs!136714 m!946145))

(assert (=> setNonEmpty!3611 d!232347))

(assert (=> b!689038 d!232279))

(assert (=> b!689038 d!232281))

(assert (=> b!689038 d!232283))

(assert (=> b!689038 d!232285))

(assert (=> b!689038 d!232257))

(declare-fun d!232349 () Bool)

(assert (=> d!232349 (= (inv!9482 (tag!1748 (h!12787 (t!87211 rules!1357)))) (= (mod (str.len (value!48017 (tag!1748 (h!12787 (t!87211 rules!1357))))) 2) 0))))

(assert (=> b!689136 d!232349))

(declare-fun d!232351 () Bool)

(declare-fun res!313146 () Bool)

(declare-fun e!433369 () Bool)

(assert (=> d!232351 (=> (not res!313146) (not e!433369))))

(assert (=> d!232351 (= res!313146 (semiInverseModEq!568 (toChars!2303 (transformation!1486 (h!12787 (t!87211 rules!1357)))) (toValue!2444 (transformation!1486 (h!12787 (t!87211 rules!1357))))))))

(assert (=> d!232351 (= (inv!9489 (transformation!1486 (h!12787 (t!87211 rules!1357)))) e!433369)))

(declare-fun b!689560 () Bool)

(assert (=> b!689560 (= e!433369 (equivClasses!543 (toChars!2303 (transformation!1486 (h!12787 (t!87211 rules!1357)))) (toValue!2444 (transformation!1486 (h!12787 (t!87211 rules!1357))))))))

(assert (= (and d!232351 res!313146) b!689560))

(declare-fun m!946147 () Bool)

(assert (=> d!232351 m!946147))

(declare-fun m!946149 () Bool)

(assert (=> b!689560 m!946149))

(assert (=> b!689136 d!232351))

(declare-fun d!232353 () Bool)

(assert (=> d!232353 (= (list!3115 (_2!4273 lt!284269)) (list!3117 (c!121420 (_2!4273 lt!284269))))))

(declare-fun bs!136715 () Bool)

(assert (= bs!136715 d!232353))

(declare-fun m!946151 () Bool)

(assert (=> bs!136715 m!946151))

(assert (=> b!689062 d!232353))

(assert (=> b!689062 d!232205))

(declare-fun bs!136716 () Bool)

(declare-fun d!232355 () Bool)

(assert (= bs!136716 (and d!232355 d!232261)))

(declare-fun lambda!21478 () Int)

(assert (=> bs!136716 (= lambda!21478 lambda!21454)))

(declare-fun bs!136717 () Bool)

(assert (= bs!136717 (and d!232355 d!232329)))

(assert (=> bs!136717 (= lambda!21478 lambda!21473)))

(declare-fun bs!136718 () Bool)

(assert (= bs!136718 (and d!232355 d!232323)))

(assert (=> bs!136718 (= lambda!21478 lambda!21471)))

(declare-fun bs!136719 () Bool)

(assert (= bs!136719 (and d!232355 d!232265)))

(assert (=> bs!136719 (= lambda!21478 lambda!21458)))

(declare-fun bs!136720 () Bool)

(assert (= bs!136720 (and d!232355 d!232267)))

(assert (=> bs!136720 (= lambda!21478 lambda!21459)))

(declare-fun bs!136721 () Bool)

(assert (= bs!136721 (and d!232355 d!232325)))

(assert (=> bs!136721 (= lambda!21478 lambda!21472)))

(declare-fun bs!136722 () Bool)

(assert (= bs!136722 (and d!232355 d!232273)))

(assert (=> bs!136722 (= lambda!21478 lambda!21460)))

(declare-fun bs!136723 () Bool)

(assert (= bs!136723 (and d!232355 d!232317)))

(assert (=> bs!136723 (= lambda!21478 lambda!21468)))

(declare-fun bs!136724 () Bool)

(assert (= bs!136724 (and d!232355 d!232319)))

(assert (=> bs!136724 (= lambda!21478 lambda!21469)))

(declare-fun bs!136725 () Bool)

(assert (= bs!136725 (and d!232355 d!232335)))

(assert (=> bs!136725 (= lambda!21478 lambda!21474)))

(declare-fun bs!136726 () Bool)

(assert (= bs!136726 (and d!232355 d!232209)))

(assert (=> bs!136726 (= lambda!21478 lambda!21438)))

(declare-fun bs!136727 () Bool)

(assert (= bs!136727 (and d!232355 d!232347)))

(assert (=> bs!136727 (= lambda!21478 lambda!21477)))

(declare-fun bs!136728 () Bool)

(assert (= bs!136728 (and d!232355 d!232337)))

(assert (=> bs!136728 (= lambda!21478 lambda!21475)))

(declare-fun bs!136729 () Bool)

(assert (= bs!136729 (and d!232355 d!232233)))

(assert (=> bs!136729 (= lambda!21478 lambda!21441)))

(declare-fun bs!136730 () Bool)

(assert (= bs!136730 (and d!232355 d!232315)))

(assert (=> bs!136730 (= lambda!21478 lambda!21467)))

(declare-fun bs!136731 () Bool)

(assert (= bs!136731 (and d!232355 d!232293)))

(assert (=> bs!136731 (= lambda!21478 lambda!21462)))

(declare-fun bs!136732 () Bool)

(assert (= bs!136732 (and d!232355 d!232311)))

(assert (=> bs!136732 (= lambda!21478 lambda!21463)))

(declare-fun bs!136733 () Bool)

(assert (= bs!136733 (and d!232355 d!232245)))

(assert (=> bs!136733 (= lambda!21478 lambda!21446)))

(declare-fun bs!136734 () Bool)

(assert (= bs!136734 (and d!232355 d!232291)))

(assert (=> bs!136734 (= lambda!21478 lambda!21461)))

(declare-fun bs!136735 () Bool)

(assert (= bs!136735 (and d!232355 d!232211)))

(assert (=> bs!136735 (= lambda!21478 lambda!21439)))

(declare-fun bs!136736 () Bool)

(assert (= bs!136736 (and d!232355 d!232321)))

(assert (=> bs!136736 (= lambda!21478 lambda!21470)))

(declare-fun bs!136737 () Bool)

(assert (= bs!136737 (and d!232355 d!232339)))

(assert (=> bs!136737 (= lambda!21478 lambda!21476)))

(declare-fun bs!136738 () Bool)

(assert (= bs!136738 (and d!232355 d!232215)))

(assert (=> bs!136738 (= lambda!21478 lambda!21440)))

(declare-fun bs!136739 () Bool)

(assert (= bs!136739 (and d!232355 d!232249)))

(assert (=> bs!136739 (= lambda!21478 lambda!21447)))

(declare-fun bs!136740 () Bool)

(assert (= bs!136740 (and d!232355 d!232237)))

(assert (=> bs!136740 (= lambda!21478 lambda!21442)))

(assert (=> d!232355 (= (inv!9492 (_2!4274 (_1!4275 (h!12788 mapDefault!2968)))) (forall!1946 (exprs!733 (_2!4274 (_1!4275 (h!12788 mapDefault!2968)))) lambda!21478))))

(declare-fun bs!136741 () Bool)

(assert (= bs!136741 d!232355))

(declare-fun m!946153 () Bool)

(assert (=> bs!136741 m!946153))

(assert (=> b!689126 d!232355))

(declare-fun d!232357 () Bool)

(assert (=> d!232357 (= (list!3114 (_1!4273 lt!284269)) (list!3116 (c!121421 (_1!4273 lt!284269))))))

(declare-fun bs!136742 () Bool)

(assert (= bs!136742 d!232357))

(declare-fun m!946155 () Bool)

(assert (=> bs!136742 m!946155))

(assert (=> b!689064 d!232357))

(declare-fun d!232359 () Bool)

(declare-fun e!433371 () Bool)

(assert (=> d!232359 e!433371))

(declare-fun c!121512 () Bool)

(declare-fun lt!284345 () tuple2!7758)

(assert (=> d!232359 (= c!121512 (> (size!6069 (_1!4278 lt!284345)) 0))))

(declare-fun e!433370 () tuple2!7758)

(assert (=> d!232359 (= lt!284345 e!433370)))

(declare-fun c!121511 () Bool)

(declare-fun lt!284346 () Option!1705)

(assert (=> d!232359 (= c!121511 ((_ is Some!1704) lt!284346))))

(assert (=> d!232359 (= lt!284346 (maxPrefix!866 thiss!12183 rules!1357 (list!3115 (BalanceConc!5245 Empty!2616))))))

(assert (=> d!232359 (= (lexList!321 thiss!12183 rules!1357 (list!3115 (BalanceConc!5245 Empty!2616))) lt!284345)))

(declare-fun b!689561 () Bool)

(declare-fun lt!284347 () tuple2!7758)

(assert (=> b!689561 (= e!433370 (tuple2!7759 (Cons!7385 (_1!4280 (v!17601 lt!284346)) (_1!4278 lt!284347)) (_2!4278 lt!284347)))))

(assert (=> b!689561 (= lt!284347 (lexList!321 thiss!12183 rules!1357 (_2!4280 (v!17601 lt!284346))))))

(declare-fun b!689562 () Bool)

(declare-fun e!433372 () Bool)

(assert (=> b!689562 (= e!433371 e!433372)))

(declare-fun res!313147 () Bool)

(assert (=> b!689562 (= res!313147 (< (size!6067 (_2!4278 lt!284345)) (size!6067 (list!3115 (BalanceConc!5245 Empty!2616)))))))

(assert (=> b!689562 (=> (not res!313147) (not e!433372))))

(declare-fun b!689563 () Bool)

(assert (=> b!689563 (= e!433371 (= (_2!4278 lt!284345) (list!3115 (BalanceConc!5245 Empty!2616))))))

(declare-fun b!689564 () Bool)

(assert (=> b!689564 (= e!433372 (not (isEmpty!4854 (_1!4278 lt!284345))))))

(declare-fun b!689565 () Bool)

(assert (=> b!689565 (= e!433370 (tuple2!7759 Nil!7385 (list!3115 (BalanceConc!5245 Empty!2616))))))

(assert (= (and d!232359 c!121511) b!689561))

(assert (= (and d!232359 (not c!121511)) b!689565))

(assert (= (and d!232359 c!121512) b!689562))

(assert (= (and d!232359 (not c!121512)) b!689563))

(assert (= (and b!689562 res!313147) b!689564))

(declare-fun m!946157 () Bool)

(assert (=> d!232359 m!946157))

(assert (=> d!232359 m!945524))

(declare-fun m!946159 () Bool)

(assert (=> d!232359 m!946159))

(declare-fun m!946161 () Bool)

(assert (=> b!689561 m!946161))

(declare-fun m!946163 () Bool)

(assert (=> b!689562 m!946163))

(assert (=> b!689562 m!945524))

(assert (=> b!689562 m!946048))

(declare-fun m!946165 () Bool)

(assert (=> b!689564 m!946165))

(assert (=> b!689064 d!232359))

(assert (=> b!689064 d!232205))

(declare-fun d!232361 () Bool)

(declare-fun lt!284348 () Int)

(assert (=> d!232361 (= lt!284348 (size!6067 (list!3115 (_2!4273 lt!284266))))))

(assert (=> d!232361 (= lt!284348 (size!6068 (c!121420 (_2!4273 lt!284266))))))

(assert (=> d!232361 (= (size!6066 (_2!4273 lt!284266)) lt!284348)))

(declare-fun bs!136743 () Bool)

(assert (= bs!136743 d!232361))

(assert (=> bs!136743 m!945608))

(assert (=> bs!136743 m!945608))

(declare-fun m!946167 () Bool)

(assert (=> bs!136743 m!946167))

(declare-fun m!946169 () Bool)

(assert (=> bs!136743 m!946169))

(assert (=> b!689060 d!232361))

(declare-fun d!232363 () Bool)

(declare-fun lt!284349 () Int)

(assert (=> d!232363 (= lt!284349 (size!6067 (list!3115 input!756)))))

(assert (=> d!232363 (= lt!284349 (size!6068 (c!121420 input!756)))))

(assert (=> d!232363 (= (size!6066 input!756) lt!284349)))

(declare-fun bs!136744 () Bool)

(assert (= bs!136744 d!232363))

(assert (=> bs!136744 m!945522))

(assert (=> bs!136744 m!945522))

(assert (=> bs!136744 m!945857))

(declare-fun m!946171 () Bool)

(assert (=> bs!136744 m!946171))

(assert (=> b!689060 d!232363))

(declare-fun b!689569 () Bool)

(declare-fun e!433374 () List!7399)

(assert (=> b!689569 (= e!433374 (++!1939 (list!3116 (left!5957 (c!121421 (++!1937 (BalanceConc!5247 Empty!2617) (_1!4273 lt!284253))))) (list!3116 (right!6287 (c!121421 (++!1937 (BalanceConc!5247 Empty!2617) (_1!4273 lt!284253)))))))))

(declare-fun b!689567 () Bool)

(declare-fun e!433373 () List!7399)

(assert (=> b!689567 (= e!433373 e!433374)))

(declare-fun c!121514 () Bool)

(assert (=> b!689567 (= c!121514 ((_ is Leaf!3882) (c!121421 (++!1937 (BalanceConc!5247 Empty!2617) (_1!4273 lt!284253)))))))

(declare-fun d!232365 () Bool)

(declare-fun c!121513 () Bool)

(assert (=> d!232365 (= c!121513 ((_ is Empty!2617) (c!121421 (++!1937 (BalanceConc!5247 Empty!2617) (_1!4273 lt!284253)))))))

(assert (=> d!232365 (= (list!3116 (c!121421 (++!1937 (BalanceConc!5247 Empty!2617) (_1!4273 lt!284253)))) e!433373)))

(declare-fun b!689566 () Bool)

(assert (=> b!689566 (= e!433373 Nil!7385)))

(declare-fun b!689568 () Bool)

(assert (=> b!689568 (= e!433374 (list!3119 (xs!5266 (c!121421 (++!1937 (BalanceConc!5247 Empty!2617) (_1!4273 lt!284253))))))))

(assert (= (and d!232365 c!121513) b!689566))

(assert (= (and d!232365 (not c!121513)) b!689567))

(assert (= (and b!689567 c!121514) b!689568))

(assert (= (and b!689567 (not c!121514)) b!689569))

(declare-fun m!946173 () Bool)

(assert (=> b!689569 m!946173))

(declare-fun m!946175 () Bool)

(assert (=> b!689569 m!946175))

(assert (=> b!689569 m!946173))

(assert (=> b!689569 m!946175))

(declare-fun m!946177 () Bool)

(assert (=> b!689569 m!946177))

(declare-fun m!946179 () Bool)

(assert (=> b!689568 m!946179))

(assert (=> d!232151 d!232365))

(declare-fun d!232367 () Bool)

(assert (=> d!232367 (= (list!3114 lt!284259) (list!3116 (c!121421 lt!284259)))))

(declare-fun bs!136745 () Bool)

(assert (= bs!136745 d!232367))

(declare-fun m!946181 () Bool)

(assert (=> bs!136745 m!946181))

(assert (=> b!689040 d!232367))

(declare-fun d!232369 () Bool)

(declare-fun e!433380 () Bool)

(assert (=> d!232369 e!433380))

(declare-fun res!313152 () Bool)

(assert (=> d!232369 (=> (not res!313152) (not e!433380))))

(declare-fun lt!284352 () List!7399)

(declare-fun content!1185 (List!7399) (InoxSet Token!2682))

(assert (=> d!232369 (= res!313152 (= (content!1185 lt!284352) ((_ map or) (content!1185 (list!3114 (BalanceConc!5247 Empty!2617))) (content!1185 (list!3114 (_1!4273 lt!284253))))))))

(declare-fun e!433379 () List!7399)

(assert (=> d!232369 (= lt!284352 e!433379)))

(declare-fun c!121517 () Bool)

(assert (=> d!232369 (= c!121517 ((_ is Nil!7385) (list!3114 (BalanceConc!5247 Empty!2617))))))

(assert (=> d!232369 (= (++!1939 (list!3114 (BalanceConc!5247 Empty!2617)) (list!3114 (_1!4273 lt!284253))) lt!284352)))

(declare-fun b!689578 () Bool)

(assert (=> b!689578 (= e!433379 (list!3114 (_1!4273 lt!284253)))))

(declare-fun b!689580 () Bool)

(declare-fun res!313153 () Bool)

(assert (=> b!689580 (=> (not res!313153) (not e!433380))))

(assert (=> b!689580 (= res!313153 (= (size!6069 lt!284352) (+ (size!6069 (list!3114 (BalanceConc!5247 Empty!2617))) (size!6069 (list!3114 (_1!4273 lt!284253))))))))

(declare-fun b!689579 () Bool)

(assert (=> b!689579 (= e!433379 (Cons!7385 (h!12786 (list!3114 (BalanceConc!5247 Empty!2617))) (++!1939 (t!87210 (list!3114 (BalanceConc!5247 Empty!2617))) (list!3114 (_1!4273 lt!284253)))))))

(declare-fun b!689581 () Bool)

(assert (=> b!689581 (= e!433380 (or (not (= (list!3114 (_1!4273 lt!284253)) Nil!7385)) (= lt!284352 (list!3114 (BalanceConc!5247 Empty!2617)))))))

(assert (= (and d!232369 c!121517) b!689578))

(assert (= (and d!232369 (not c!121517)) b!689579))

(assert (= (and d!232369 res!313152) b!689580))

(assert (= (and b!689580 res!313153) b!689581))

(declare-fun m!946183 () Bool)

(assert (=> d!232369 m!946183))

(assert (=> d!232369 m!945558))

(declare-fun m!946185 () Bool)

(assert (=> d!232369 m!946185))

(assert (=> d!232369 m!945530))

(declare-fun m!946187 () Bool)

(assert (=> d!232369 m!946187))

(declare-fun m!946189 () Bool)

(assert (=> b!689580 m!946189))

(assert (=> b!689580 m!945558))

(declare-fun m!946191 () Bool)

(assert (=> b!689580 m!946191))

(assert (=> b!689580 m!945530))

(declare-fun m!946193 () Bool)

(assert (=> b!689580 m!946193))

(assert (=> b!689579 m!945530))

(declare-fun m!946195 () Bool)

(assert (=> b!689579 m!946195))

(assert (=> b!689040 d!232369))

(assert (=> b!689040 d!232163))

(assert (=> b!689040 d!232149))

(declare-fun bs!136746 () Bool)

(declare-fun d!232371 () Bool)

(assert (= bs!136746 (and d!232371 d!232261)))

(declare-fun lambda!21479 () Int)

(assert (=> bs!136746 (= lambda!21479 lambda!21454)))

(declare-fun bs!136747 () Bool)

(assert (= bs!136747 (and d!232371 d!232329)))

(assert (=> bs!136747 (= lambda!21479 lambda!21473)))

(declare-fun bs!136748 () Bool)

(assert (= bs!136748 (and d!232371 d!232323)))

(assert (=> bs!136748 (= lambda!21479 lambda!21471)))

(declare-fun bs!136749 () Bool)

(assert (= bs!136749 (and d!232371 d!232265)))

(assert (=> bs!136749 (= lambda!21479 lambda!21458)))

(declare-fun bs!136750 () Bool)

(assert (= bs!136750 (and d!232371 d!232267)))

(assert (=> bs!136750 (= lambda!21479 lambda!21459)))

(declare-fun bs!136751 () Bool)

(assert (= bs!136751 (and d!232371 d!232325)))

(assert (=> bs!136751 (= lambda!21479 lambda!21472)))

(declare-fun bs!136752 () Bool)

(assert (= bs!136752 (and d!232371 d!232273)))

(assert (=> bs!136752 (= lambda!21479 lambda!21460)))

(declare-fun bs!136753 () Bool)

(assert (= bs!136753 (and d!232371 d!232317)))

(assert (=> bs!136753 (= lambda!21479 lambda!21468)))

(declare-fun bs!136754 () Bool)

(assert (= bs!136754 (and d!232371 d!232319)))

(assert (=> bs!136754 (= lambda!21479 lambda!21469)))

(declare-fun bs!136755 () Bool)

(assert (= bs!136755 (and d!232371 d!232335)))

(assert (=> bs!136755 (= lambda!21479 lambda!21474)))

(declare-fun bs!136756 () Bool)

(assert (= bs!136756 (and d!232371 d!232209)))

(assert (=> bs!136756 (= lambda!21479 lambda!21438)))

(declare-fun bs!136757 () Bool)

(assert (= bs!136757 (and d!232371 d!232347)))

(assert (=> bs!136757 (= lambda!21479 lambda!21477)))

(declare-fun bs!136758 () Bool)

(assert (= bs!136758 (and d!232371 d!232337)))

(assert (=> bs!136758 (= lambda!21479 lambda!21475)))

(declare-fun bs!136759 () Bool)

(assert (= bs!136759 (and d!232371 d!232233)))

(assert (=> bs!136759 (= lambda!21479 lambda!21441)))

(declare-fun bs!136760 () Bool)

(assert (= bs!136760 (and d!232371 d!232315)))

(assert (=> bs!136760 (= lambda!21479 lambda!21467)))

(declare-fun bs!136761 () Bool)

(assert (= bs!136761 (and d!232371 d!232293)))

(assert (=> bs!136761 (= lambda!21479 lambda!21462)))

(declare-fun bs!136762 () Bool)

(assert (= bs!136762 (and d!232371 d!232311)))

(assert (=> bs!136762 (= lambda!21479 lambda!21463)))

(declare-fun bs!136763 () Bool)

(assert (= bs!136763 (and d!232371 d!232245)))

(assert (=> bs!136763 (= lambda!21479 lambda!21446)))

(declare-fun bs!136764 () Bool)

(assert (= bs!136764 (and d!232371 d!232355)))

(assert (=> bs!136764 (= lambda!21479 lambda!21478)))

(declare-fun bs!136765 () Bool)

(assert (= bs!136765 (and d!232371 d!232291)))

(assert (=> bs!136765 (= lambda!21479 lambda!21461)))

(declare-fun bs!136766 () Bool)

(assert (= bs!136766 (and d!232371 d!232211)))

(assert (=> bs!136766 (= lambda!21479 lambda!21439)))

(declare-fun bs!136767 () Bool)

(assert (= bs!136767 (and d!232371 d!232321)))

(assert (=> bs!136767 (= lambda!21479 lambda!21470)))

(declare-fun bs!136768 () Bool)

(assert (= bs!136768 (and d!232371 d!232339)))

(assert (=> bs!136768 (= lambda!21479 lambda!21476)))

(declare-fun bs!136769 () Bool)

(assert (= bs!136769 (and d!232371 d!232215)))

(assert (=> bs!136769 (= lambda!21479 lambda!21440)))

(declare-fun bs!136770 () Bool)

(assert (= bs!136770 (and d!232371 d!232249)))

(assert (=> bs!136770 (= lambda!21479 lambda!21447)))

(declare-fun bs!136771 () Bool)

(assert (= bs!136771 (and d!232371 d!232237)))

(assert (=> bs!136771 (= lambda!21479 lambda!21442)))

(assert (=> d!232371 (= (inv!9492 setElem!3641) (forall!1946 (exprs!733 setElem!3641) lambda!21479))))

(declare-fun bs!136772 () Bool)

(assert (= bs!136772 d!232371))

(declare-fun m!946197 () Bool)

(assert (=> bs!136772 m!946197))

(assert (=> setNonEmpty!3641 d!232371))

(assert (=> d!232157 d!232239))

(declare-fun bs!136773 () Bool)

(declare-fun d!232373 () Bool)

(assert (= bs!136773 (and d!232373 d!232261)))

(declare-fun lambda!21480 () Int)

(assert (=> bs!136773 (= lambda!21480 lambda!21454)))

(declare-fun bs!136774 () Bool)

(assert (= bs!136774 (and d!232373 d!232329)))

(assert (=> bs!136774 (= lambda!21480 lambda!21473)))

(declare-fun bs!136775 () Bool)

(assert (= bs!136775 (and d!232373 d!232323)))

(assert (=> bs!136775 (= lambda!21480 lambda!21471)))

(declare-fun bs!136776 () Bool)

(assert (= bs!136776 (and d!232373 d!232265)))

(assert (=> bs!136776 (= lambda!21480 lambda!21458)))

(declare-fun bs!136777 () Bool)

(assert (= bs!136777 (and d!232373 d!232267)))

(assert (=> bs!136777 (= lambda!21480 lambda!21459)))

(declare-fun bs!136778 () Bool)

(assert (= bs!136778 (and d!232373 d!232371)))

(assert (=> bs!136778 (= lambda!21480 lambda!21479)))

(declare-fun bs!136779 () Bool)

(assert (= bs!136779 (and d!232373 d!232325)))

(assert (=> bs!136779 (= lambda!21480 lambda!21472)))

(declare-fun bs!136780 () Bool)

(assert (= bs!136780 (and d!232373 d!232273)))

(assert (=> bs!136780 (= lambda!21480 lambda!21460)))

(declare-fun bs!136781 () Bool)

(assert (= bs!136781 (and d!232373 d!232317)))

(assert (=> bs!136781 (= lambda!21480 lambda!21468)))

(declare-fun bs!136782 () Bool)

(assert (= bs!136782 (and d!232373 d!232319)))

(assert (=> bs!136782 (= lambda!21480 lambda!21469)))

(declare-fun bs!136783 () Bool)

(assert (= bs!136783 (and d!232373 d!232335)))

(assert (=> bs!136783 (= lambda!21480 lambda!21474)))

(declare-fun bs!136784 () Bool)

(assert (= bs!136784 (and d!232373 d!232209)))

(assert (=> bs!136784 (= lambda!21480 lambda!21438)))

(declare-fun bs!136785 () Bool)

(assert (= bs!136785 (and d!232373 d!232347)))

(assert (=> bs!136785 (= lambda!21480 lambda!21477)))

(declare-fun bs!136786 () Bool)

(assert (= bs!136786 (and d!232373 d!232337)))

(assert (=> bs!136786 (= lambda!21480 lambda!21475)))

(declare-fun bs!136787 () Bool)

(assert (= bs!136787 (and d!232373 d!232233)))

(assert (=> bs!136787 (= lambda!21480 lambda!21441)))

(declare-fun bs!136788 () Bool)

(assert (= bs!136788 (and d!232373 d!232315)))

(assert (=> bs!136788 (= lambda!21480 lambda!21467)))

(declare-fun bs!136789 () Bool)

(assert (= bs!136789 (and d!232373 d!232293)))

(assert (=> bs!136789 (= lambda!21480 lambda!21462)))

(declare-fun bs!136790 () Bool)

(assert (= bs!136790 (and d!232373 d!232311)))

(assert (=> bs!136790 (= lambda!21480 lambda!21463)))

(declare-fun bs!136791 () Bool)

(assert (= bs!136791 (and d!232373 d!232245)))

(assert (=> bs!136791 (= lambda!21480 lambda!21446)))

(declare-fun bs!136792 () Bool)

(assert (= bs!136792 (and d!232373 d!232355)))

(assert (=> bs!136792 (= lambda!21480 lambda!21478)))

(declare-fun bs!136793 () Bool)

(assert (= bs!136793 (and d!232373 d!232291)))

(assert (=> bs!136793 (= lambda!21480 lambda!21461)))

(declare-fun bs!136794 () Bool)

(assert (= bs!136794 (and d!232373 d!232211)))

(assert (=> bs!136794 (= lambda!21480 lambda!21439)))

(declare-fun bs!136795 () Bool)

(assert (= bs!136795 (and d!232373 d!232321)))

(assert (=> bs!136795 (= lambda!21480 lambda!21470)))

(declare-fun bs!136796 () Bool)

(assert (= bs!136796 (and d!232373 d!232339)))

(assert (=> bs!136796 (= lambda!21480 lambda!21476)))

(declare-fun bs!136797 () Bool)

(assert (= bs!136797 (and d!232373 d!232215)))

(assert (=> bs!136797 (= lambda!21480 lambda!21440)))

(declare-fun bs!136798 () Bool)

(assert (= bs!136798 (and d!232373 d!232249)))

(assert (=> bs!136798 (= lambda!21480 lambda!21447)))

(declare-fun bs!136799 () Bool)

(assert (= bs!136799 (and d!232373 d!232237)))

(assert (=> bs!136799 (= lambda!21480 lambda!21442)))

(assert (=> d!232373 (= (inv!9492 setElem!3626) (forall!1946 (exprs!733 setElem!3626) lambda!21480))))

(declare-fun bs!136800 () Bool)

(assert (= bs!136800 d!232373))

(declare-fun m!946199 () Bool)

(assert (=> bs!136800 m!946199))

(assert (=> setNonEmpty!3626 d!232373))

(declare-fun b!689582 () Bool)

(declare-fun e!433381 () List!7396)

(assert (=> b!689582 (= e!433381 lt!284250)))

(declare-fun b!689584 () Bool)

(declare-fun res!313155 () Bool)

(declare-fun e!433382 () Bool)

(assert (=> b!689584 (=> (not res!313155) (not e!433382))))

(declare-fun lt!284353 () List!7396)

(assert (=> b!689584 (= res!313155 (= (size!6067 lt!284353) (+ (size!6067 (t!87207 lt!284251)) (size!6067 lt!284250))))))

(declare-fun d!232375 () Bool)

(assert (=> d!232375 e!433382))

(declare-fun res!313154 () Bool)

(assert (=> d!232375 (=> (not res!313154) (not e!433382))))

(assert (=> d!232375 (= res!313154 (= (content!1184 lt!284353) ((_ map or) (content!1184 (t!87207 lt!284251)) (content!1184 lt!284250))))))

(assert (=> d!232375 (= lt!284353 e!433381)))

(declare-fun c!121518 () Bool)

(assert (=> d!232375 (= c!121518 ((_ is Nil!7382) (t!87207 lt!284251)))))

(assert (=> d!232375 (= (++!1938 (t!87207 lt!284251) lt!284250) lt!284353)))

(declare-fun b!689583 () Bool)

(assert (=> b!689583 (= e!433381 (Cons!7382 (h!12783 (t!87207 lt!284251)) (++!1938 (t!87207 (t!87207 lt!284251)) lt!284250)))))

(declare-fun b!689585 () Bool)

(assert (=> b!689585 (= e!433382 (or (not (= lt!284250 Nil!7382)) (= lt!284353 (t!87207 lt!284251))))))

(assert (= (and d!232375 c!121518) b!689582))

(assert (= (and d!232375 (not c!121518)) b!689583))

(assert (= (and d!232375 res!313154) b!689584))

(assert (= (and b!689584 res!313155) b!689585))

(declare-fun m!946201 () Bool)

(assert (=> b!689584 m!946201))

(assert (=> b!689584 m!946054))

(assert (=> b!689584 m!945676))

(declare-fun m!946203 () Bool)

(assert (=> d!232375 m!946203))

(assert (=> d!232375 m!945812))

(assert (=> d!232375 m!945682))

(declare-fun m!946205 () Bool)

(assert (=> b!689583 m!946205))

(assert (=> b!689102 d!232375))

(assert (=> b!689066 d!232353))

(assert (=> b!689066 d!232359))

(assert (=> b!689066 d!232205))

(declare-fun bs!136801 () Bool)

(declare-fun d!232377 () Bool)

(assert (= bs!136801 (and d!232377 d!232261)))

(declare-fun lambda!21481 () Int)

(assert (=> bs!136801 (= lambda!21481 lambda!21454)))

(declare-fun bs!136802 () Bool)

(assert (= bs!136802 (and d!232377 d!232329)))

(assert (=> bs!136802 (= lambda!21481 lambda!21473)))

(declare-fun bs!136803 () Bool)

(assert (= bs!136803 (and d!232377 d!232323)))

(assert (=> bs!136803 (= lambda!21481 lambda!21471)))

(declare-fun bs!136804 () Bool)

(assert (= bs!136804 (and d!232377 d!232267)))

(assert (=> bs!136804 (= lambda!21481 lambda!21459)))

(declare-fun bs!136805 () Bool)

(assert (= bs!136805 (and d!232377 d!232371)))

(assert (=> bs!136805 (= lambda!21481 lambda!21479)))

(declare-fun bs!136806 () Bool)

(assert (= bs!136806 (and d!232377 d!232325)))

(assert (=> bs!136806 (= lambda!21481 lambda!21472)))

(declare-fun bs!136807 () Bool)

(assert (= bs!136807 (and d!232377 d!232273)))

(assert (=> bs!136807 (= lambda!21481 lambda!21460)))

(declare-fun bs!136808 () Bool)

(assert (= bs!136808 (and d!232377 d!232317)))

(assert (=> bs!136808 (= lambda!21481 lambda!21468)))

(declare-fun bs!136809 () Bool)

(assert (= bs!136809 (and d!232377 d!232319)))

(assert (=> bs!136809 (= lambda!21481 lambda!21469)))

(declare-fun bs!136810 () Bool)

(assert (= bs!136810 (and d!232377 d!232335)))

(assert (=> bs!136810 (= lambda!21481 lambda!21474)))

(declare-fun bs!136811 () Bool)

(assert (= bs!136811 (and d!232377 d!232209)))

(assert (=> bs!136811 (= lambda!21481 lambda!21438)))

(declare-fun bs!136812 () Bool)

(assert (= bs!136812 (and d!232377 d!232347)))

(assert (=> bs!136812 (= lambda!21481 lambda!21477)))

(declare-fun bs!136813 () Bool)

(assert (= bs!136813 (and d!232377 d!232337)))

(assert (=> bs!136813 (= lambda!21481 lambda!21475)))

(declare-fun bs!136814 () Bool)

(assert (= bs!136814 (and d!232377 d!232233)))

(assert (=> bs!136814 (= lambda!21481 lambda!21441)))

(declare-fun bs!136815 () Bool)

(assert (= bs!136815 (and d!232377 d!232315)))

(assert (=> bs!136815 (= lambda!21481 lambda!21467)))

(declare-fun bs!136816 () Bool)

(assert (= bs!136816 (and d!232377 d!232293)))

(assert (=> bs!136816 (= lambda!21481 lambda!21462)))

(declare-fun bs!136817 () Bool)

(assert (= bs!136817 (and d!232377 d!232311)))

(assert (=> bs!136817 (= lambda!21481 lambda!21463)))

(declare-fun bs!136818 () Bool)

(assert (= bs!136818 (and d!232377 d!232373)))

(assert (=> bs!136818 (= lambda!21481 lambda!21480)))

(declare-fun bs!136819 () Bool)

(assert (= bs!136819 (and d!232377 d!232265)))

(assert (=> bs!136819 (= lambda!21481 lambda!21458)))

(declare-fun bs!136820 () Bool)

(assert (= bs!136820 (and d!232377 d!232245)))

(assert (=> bs!136820 (= lambda!21481 lambda!21446)))

(declare-fun bs!136821 () Bool)

(assert (= bs!136821 (and d!232377 d!232355)))

(assert (=> bs!136821 (= lambda!21481 lambda!21478)))

(declare-fun bs!136822 () Bool)

(assert (= bs!136822 (and d!232377 d!232291)))

(assert (=> bs!136822 (= lambda!21481 lambda!21461)))

(declare-fun bs!136823 () Bool)

(assert (= bs!136823 (and d!232377 d!232211)))

(assert (=> bs!136823 (= lambda!21481 lambda!21439)))

(declare-fun bs!136824 () Bool)

(assert (= bs!136824 (and d!232377 d!232321)))

(assert (=> bs!136824 (= lambda!21481 lambda!21470)))

(declare-fun bs!136825 () Bool)

(assert (= bs!136825 (and d!232377 d!232339)))

(assert (=> bs!136825 (= lambda!21481 lambda!21476)))

(declare-fun bs!136826 () Bool)

(assert (= bs!136826 (and d!232377 d!232215)))

(assert (=> bs!136826 (= lambda!21481 lambda!21440)))

(declare-fun bs!136827 () Bool)

(assert (= bs!136827 (and d!232377 d!232249)))

(assert (=> bs!136827 (= lambda!21481 lambda!21447)))

(declare-fun bs!136828 () Bool)

(assert (= bs!136828 (and d!232377 d!232237)))

(assert (=> bs!136828 (= lambda!21481 lambda!21442)))

(assert (=> d!232377 (= (inv!9492 setElem!3642) (forall!1946 (exprs!733 setElem!3642) lambda!21481))))

(declare-fun bs!136829 () Bool)

(assert (= bs!136829 d!232377))

(declare-fun m!946207 () Bool)

(assert (=> bs!136829 m!946207))

(assert (=> setNonEmpty!3642 d!232377))

(declare-fun d!232379 () Bool)

(assert (=> d!232379 (= (inv!9493 (xs!5265 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))) (<= (size!6067 (innerList!2674 (xs!5265 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))))) 2147483647))))

(declare-fun bs!136830 () Bool)

(assert (= bs!136830 d!232379))

(declare-fun m!946209 () Bool)

(assert (=> bs!136830 m!946209))

(assert (=> b!689199 d!232379))

(declare-fun d!232381 () Bool)

(declare-fun lt!284354 () Bool)

(assert (=> d!232381 (= lt!284354 (isEmpty!4854 (list!3114 (_1!4273 lt!284269))))))

(assert (=> d!232381 (= lt!284354 (isEmpty!4855 (c!121421 (_1!4273 lt!284269))))))

(assert (=> d!232381 (= (isEmpty!4852 (_1!4273 lt!284269)) lt!284354)))

(declare-fun bs!136831 () Bool)

(assert (= bs!136831 d!232381))

(assert (=> bs!136831 m!945640))

(assert (=> bs!136831 m!945640))

(declare-fun m!946211 () Bool)

(assert (=> bs!136831 m!946211))

(declare-fun m!946213 () Bool)

(assert (=> bs!136831 m!946213))

(assert (=> b!689068 d!232381))

(assert (=> b!689016 d!232183))

(declare-fun d!232383 () Bool)

(declare-fun c!121519 () Bool)

(assert (=> d!232383 (= c!121519 ((_ is Empty!2616) (c!121420 (BalanceConc!5245 Empty!2616))))))

(declare-fun e!433383 () List!7396)

(assert (=> d!232383 (= (list!3117 (c!121420 (BalanceConc!5245 Empty!2616))) e!433383)))

(declare-fun b!689588 () Bool)

(declare-fun e!433384 () List!7396)

(assert (=> b!689588 (= e!433384 (list!3118 (xs!5265 (c!121420 (BalanceConc!5245 Empty!2616)))))))

(declare-fun b!689586 () Bool)

(assert (=> b!689586 (= e!433383 Nil!7382)))

(declare-fun b!689587 () Bool)

(assert (=> b!689587 (= e!433383 e!433384)))

(declare-fun c!121520 () Bool)

(assert (=> b!689587 (= c!121520 ((_ is Leaf!3881) (c!121420 (BalanceConc!5245 Empty!2616))))))

(declare-fun b!689589 () Bool)

(assert (=> b!689589 (= e!433384 (++!1938 (list!3117 (left!5956 (c!121420 (BalanceConc!5245 Empty!2616)))) (list!3117 (right!6286 (c!121420 (BalanceConc!5245 Empty!2616))))))))

(assert (= (and d!232383 c!121519) b!689586))

(assert (= (and d!232383 (not c!121519)) b!689587))

(assert (= (and b!689587 c!121520) b!689588))

(assert (= (and b!689587 (not c!121520)) b!689589))

(declare-fun m!946215 () Bool)

(assert (=> b!689588 m!946215))

(declare-fun m!946217 () Bool)

(assert (=> b!689589 m!946217))

(declare-fun m!946219 () Bool)

(assert (=> b!689589 m!946219))

(assert (=> b!689589 m!946217))

(assert (=> b!689589 m!946219))

(declare-fun m!946221 () Bool)

(assert (=> b!689589 m!946221))

(assert (=> d!232205 d!232383))

(declare-fun d!232385 () Bool)

(declare-fun lt!284355 () Int)

(assert (=> d!232385 (= lt!284355 (size!6069 (list!3114 (_1!4273 lt!284269))))))

(assert (=> d!232385 (= lt!284355 (size!6070 (c!121421 (_1!4273 lt!284269))))))

(assert (=> d!232385 (= (size!6065 (_1!4273 lt!284269)) lt!284355)))

(declare-fun bs!136832 () Bool)

(assert (= bs!136832 d!232385))

(assert (=> bs!136832 m!945640))

(assert (=> bs!136832 m!945640))

(declare-fun m!946223 () Bool)

(assert (=> bs!136832 m!946223))

(declare-fun m!946225 () Bool)

(assert (=> bs!136832 m!946225))

(assert (=> d!232165 d!232385))

(declare-fun bm!43581 () Bool)

(declare-fun call!43586 () Option!1704)

(assert (=> bm!43581 (= call!43586 (maxPrefixOneRuleZipperSequence!208 thiss!12183 (h!12787 rules!1357) (BalanceConc!5245 Empty!2616)))))

(declare-fun d!232387 () Bool)

(declare-fun e!433390 () Bool)

(assert (=> d!232387 e!433390))

(declare-fun res!313157 () Bool)

(assert (=> d!232387 (=> (not res!313157) (not e!433390))))

(declare-fun lt!284356 () Option!1704)

(assert (=> d!232387 (= res!313157 (= (isDefined!1436 lt!284356) (isDefined!1437 (maxPrefixZipper!207 thiss!12183 rules!1357 (list!3115 (BalanceConc!5245 Empty!2616))))))))

(declare-fun e!433388 () Option!1704)

(assert (=> d!232387 (= lt!284356 e!433388)))

(declare-fun c!121521 () Bool)

(assert (=> d!232387 (= c!121521 (and ((_ is Cons!7386) rules!1357) ((_ is Nil!7386) (t!87211 rules!1357))))))

(declare-fun lt!284357 () Unit!12623)

(declare-fun lt!284362 () Unit!12623)

(assert (=> d!232387 (= lt!284357 lt!284362)))

(declare-fun lt!284360 () List!7396)

(declare-fun lt!284359 () List!7396)

(assert (=> d!232387 (isPrefix!914 lt!284360 lt!284359)))

(assert (=> d!232387 (= lt!284362 (lemmaIsPrefixRefl!625 lt!284360 lt!284359))))

(assert (=> d!232387 (= lt!284359 (list!3115 (BalanceConc!5245 Empty!2616)))))

(assert (=> d!232387 (= lt!284360 (list!3115 (BalanceConc!5245 Empty!2616)))))

(assert (=> d!232387 (rulesValidInductive!517 thiss!12183 rules!1357)))

(assert (=> d!232387 (= (maxPrefixZipperSequence!455 thiss!12183 rules!1357 (BalanceConc!5245 Empty!2616)) lt!284356)))

(declare-fun e!433387 () Bool)

(declare-fun b!689590 () Bool)

(assert (=> b!689590 (= e!433387 (= (list!3115 (_2!4279 (get!2568 lt!284356))) (_2!4280 (get!2569 (maxPrefixZipper!207 thiss!12183 rules!1357 (list!3115 (BalanceConc!5245 Empty!2616)))))))))

(declare-fun b!689591 () Bool)

(declare-fun e!433385 () Bool)

(declare-fun e!433386 () Bool)

(assert (=> b!689591 (= e!433385 e!433386)))

(declare-fun res!313160 () Bool)

(assert (=> b!689591 (=> (not res!313160) (not e!433386))))

(assert (=> b!689591 (= res!313160 (= (_1!4279 (get!2568 lt!284356)) (_1!4280 (get!2569 (maxPrefix!866 thiss!12183 rules!1357 (list!3115 (BalanceConc!5245 Empty!2616)))))))))

(declare-fun b!689592 () Bool)

(declare-fun res!313158 () Bool)

(assert (=> b!689592 (=> (not res!313158) (not e!433390))))

(declare-fun e!433389 () Bool)

(assert (=> b!689592 (= res!313158 e!433389)))

(declare-fun res!313161 () Bool)

(assert (=> b!689592 (=> res!313161 e!433389)))

(assert (=> b!689592 (= res!313161 (not (isDefined!1436 lt!284356)))))

(declare-fun b!689593 () Bool)

(assert (=> b!689593 (= e!433386 (= (list!3115 (_2!4279 (get!2568 lt!284356))) (_2!4280 (get!2569 (maxPrefix!866 thiss!12183 rules!1357 (list!3115 (BalanceConc!5245 Empty!2616)))))))))

(declare-fun b!689594 () Bool)

(assert (=> b!689594 (= e!433388 call!43586)))

(declare-fun b!689595 () Bool)

(assert (=> b!689595 (= e!433390 e!433385)))

(declare-fun res!313156 () Bool)

(assert (=> b!689595 (=> res!313156 e!433385)))

(assert (=> b!689595 (= res!313156 (not (isDefined!1436 lt!284356)))))

(declare-fun b!689596 () Bool)

(declare-fun lt!284361 () Option!1704)

(declare-fun lt!284358 () Option!1704)

(assert (=> b!689596 (= e!433388 (ite (and ((_ is None!1703) lt!284361) ((_ is None!1703) lt!284358)) None!1703 (ite ((_ is None!1703) lt!284358) lt!284361 (ite ((_ is None!1703) lt!284361) lt!284358 (ite (>= (size!6062 (_1!4279 (v!17599 lt!284361))) (size!6062 (_1!4279 (v!17599 lt!284358)))) lt!284361 lt!284358)))))))

(assert (=> b!689596 (= lt!284361 call!43586)))

(assert (=> b!689596 (= lt!284358 (maxPrefixZipperSequence!455 thiss!12183 (t!87211 rules!1357) (BalanceConc!5245 Empty!2616)))))

(declare-fun b!689597 () Bool)

(assert (=> b!689597 (= e!433389 e!433387)))

(declare-fun res!313159 () Bool)

(assert (=> b!689597 (=> (not res!313159) (not e!433387))))

(assert (=> b!689597 (= res!313159 (= (_1!4279 (get!2568 lt!284356)) (_1!4280 (get!2569 (maxPrefixZipper!207 thiss!12183 rules!1357 (list!3115 (BalanceConc!5245 Empty!2616)))))))))

(assert (= (and d!232387 c!121521) b!689594))

(assert (= (and d!232387 (not c!121521)) b!689596))

(assert (= (or b!689594 b!689596) bm!43581))

(assert (= (and d!232387 res!313157) b!689592))

(assert (= (and b!689592 (not res!313161)) b!689597))

(assert (= (and b!689597 res!313159) b!689590))

(assert (= (and b!689592 res!313158) b!689595))

(assert (= (and b!689595 (not res!313156)) b!689591))

(assert (= (and b!689591 res!313160) b!689593))

(declare-fun m!946227 () Bool)

(assert (=> b!689591 m!946227))

(assert (=> b!689591 m!945524))

(assert (=> b!689591 m!945524))

(assert (=> b!689591 m!946159))

(assert (=> b!689591 m!946159))

(declare-fun m!946229 () Bool)

(assert (=> b!689591 m!946229))

(assert (=> b!689597 m!946227))

(assert (=> b!689597 m!945524))

(assert (=> b!689597 m!945524))

(declare-fun m!946231 () Bool)

(assert (=> b!689597 m!946231))

(assert (=> b!689597 m!946231))

(declare-fun m!946233 () Bool)

(assert (=> b!689597 m!946233))

(declare-fun m!946235 () Bool)

(assert (=> bm!43581 m!946235))

(assert (=> d!232387 m!945524))

(assert (=> d!232387 m!946231))

(declare-fun m!946237 () Bool)

(assert (=> d!232387 m!946237))

(assert (=> d!232387 m!945928))

(declare-fun m!946239 () Bool)

(assert (=> d!232387 m!946239))

(declare-fun m!946241 () Bool)

(assert (=> d!232387 m!946241))

(assert (=> d!232387 m!946231))

(declare-fun m!946243 () Bool)

(assert (=> d!232387 m!946243))

(assert (=> d!232387 m!945524))

(assert (=> b!689590 m!945524))

(assert (=> b!689590 m!946231))

(assert (=> b!689590 m!946227))

(declare-fun m!946245 () Bool)

(assert (=> b!689590 m!946245))

(assert (=> b!689590 m!946231))

(assert (=> b!689590 m!946233))

(assert (=> b!689590 m!945524))

(assert (=> b!689595 m!946237))

(assert (=> b!689592 m!946237))

(assert (=> b!689593 m!946227))

(assert (=> b!689593 m!946245))

(assert (=> b!689593 m!945524))

(assert (=> b!689593 m!946159))

(assert (=> b!689593 m!946159))

(assert (=> b!689593 m!946229))

(assert (=> b!689593 m!945524))

(declare-fun m!946247 () Bool)

(assert (=> b!689596 m!946247))

(assert (=> d!232165 d!232387))

(declare-fun d!232389 () Bool)

(declare-fun res!313162 () Bool)

(declare-fun e!433391 () Bool)

(assert (=> d!232389 (=> (not res!313162) (not e!433391))))

(assert (=> d!232389 (= res!313162 (= (csize!5462 (c!121420 input!756)) (+ (size!6068 (left!5956 (c!121420 input!756))) (size!6068 (right!6286 (c!121420 input!756))))))))

(assert (=> d!232389 (= (inv!9490 (c!121420 input!756)) e!433391)))

(declare-fun b!689598 () Bool)

(declare-fun res!313163 () Bool)

(assert (=> b!689598 (=> (not res!313163) (not e!433391))))

(assert (=> b!689598 (= res!313163 (and (not (= (left!5956 (c!121420 input!756)) Empty!2616)) (not (= (right!6286 (c!121420 input!756)) Empty!2616))))))

(declare-fun b!689599 () Bool)

(declare-fun res!313164 () Bool)

(assert (=> b!689599 (=> (not res!313164) (not e!433391))))

(assert (=> b!689599 (= res!313164 (= (cheight!2827 (c!121420 input!756)) (+ (max!0 (height!316 (left!5956 (c!121420 input!756))) (height!316 (right!6286 (c!121420 input!756)))) 1)))))

(declare-fun b!689600 () Bool)

(assert (=> b!689600 (= e!433391 (<= 0 (cheight!2827 (c!121420 input!756))))))

(assert (= (and d!232389 res!313162) b!689598))

(assert (= (and b!689598 res!313163) b!689599))

(assert (= (and b!689599 res!313164) b!689600))

(declare-fun m!946249 () Bool)

(assert (=> d!232389 m!946249))

(declare-fun m!946251 () Bool)

(assert (=> d!232389 m!946251))

(assert (=> b!689599 m!946135))

(assert (=> b!689599 m!946137))

(assert (=> b!689599 m!946135))

(assert (=> b!689599 m!946137))

(declare-fun m!946253 () Bool)

(assert (=> b!689599 m!946253))

(assert (=> b!689090 d!232389))

(declare-fun bs!136833 () Bool)

(declare-fun d!232391 () Bool)

(assert (= bs!136833 (and d!232391 d!232261)))

(declare-fun lambda!21482 () Int)

(assert (=> bs!136833 (= lambda!21482 lambda!21454)))

(declare-fun bs!136834 () Bool)

(assert (= bs!136834 (and d!232391 d!232329)))

(assert (=> bs!136834 (= lambda!21482 lambda!21473)))

(declare-fun bs!136835 () Bool)

(assert (= bs!136835 (and d!232391 d!232323)))

(assert (=> bs!136835 (= lambda!21482 lambda!21471)))

(declare-fun bs!136836 () Bool)

(assert (= bs!136836 (and d!232391 d!232371)))

(assert (=> bs!136836 (= lambda!21482 lambda!21479)))

(declare-fun bs!136837 () Bool)

(assert (= bs!136837 (and d!232391 d!232325)))

(assert (=> bs!136837 (= lambda!21482 lambda!21472)))

(declare-fun bs!136838 () Bool)

(assert (= bs!136838 (and d!232391 d!232273)))

(assert (=> bs!136838 (= lambda!21482 lambda!21460)))

(declare-fun bs!136839 () Bool)

(assert (= bs!136839 (and d!232391 d!232317)))

(assert (=> bs!136839 (= lambda!21482 lambda!21468)))

(declare-fun bs!136840 () Bool)

(assert (= bs!136840 (and d!232391 d!232319)))

(assert (=> bs!136840 (= lambda!21482 lambda!21469)))

(declare-fun bs!136841 () Bool)

(assert (= bs!136841 (and d!232391 d!232335)))

(assert (=> bs!136841 (= lambda!21482 lambda!21474)))

(declare-fun bs!136842 () Bool)

(assert (= bs!136842 (and d!232391 d!232209)))

(assert (=> bs!136842 (= lambda!21482 lambda!21438)))

(declare-fun bs!136843 () Bool)

(assert (= bs!136843 (and d!232391 d!232347)))

(assert (=> bs!136843 (= lambda!21482 lambda!21477)))

(declare-fun bs!136844 () Bool)

(assert (= bs!136844 (and d!232391 d!232337)))

(assert (=> bs!136844 (= lambda!21482 lambda!21475)))

(declare-fun bs!136845 () Bool)

(assert (= bs!136845 (and d!232391 d!232233)))

(assert (=> bs!136845 (= lambda!21482 lambda!21441)))

(declare-fun bs!136846 () Bool)

(assert (= bs!136846 (and d!232391 d!232315)))

(assert (=> bs!136846 (= lambda!21482 lambda!21467)))

(declare-fun bs!136847 () Bool)

(assert (= bs!136847 (and d!232391 d!232293)))

(assert (=> bs!136847 (= lambda!21482 lambda!21462)))

(declare-fun bs!136848 () Bool)

(assert (= bs!136848 (and d!232391 d!232311)))

(assert (=> bs!136848 (= lambda!21482 lambda!21463)))

(declare-fun bs!136849 () Bool)

(assert (= bs!136849 (and d!232391 d!232373)))

(assert (=> bs!136849 (= lambda!21482 lambda!21480)))

(declare-fun bs!136850 () Bool)

(assert (= bs!136850 (and d!232391 d!232265)))

(assert (=> bs!136850 (= lambda!21482 lambda!21458)))

(declare-fun bs!136851 () Bool)

(assert (= bs!136851 (and d!232391 d!232267)))

(assert (=> bs!136851 (= lambda!21482 lambda!21459)))

(declare-fun bs!136852 () Bool)

(assert (= bs!136852 (and d!232391 d!232377)))

(assert (=> bs!136852 (= lambda!21482 lambda!21481)))

(declare-fun bs!136853 () Bool)

(assert (= bs!136853 (and d!232391 d!232245)))

(assert (=> bs!136853 (= lambda!21482 lambda!21446)))

(declare-fun bs!136854 () Bool)

(assert (= bs!136854 (and d!232391 d!232355)))

(assert (=> bs!136854 (= lambda!21482 lambda!21478)))

(declare-fun bs!136855 () Bool)

(assert (= bs!136855 (and d!232391 d!232291)))

(assert (=> bs!136855 (= lambda!21482 lambda!21461)))

(declare-fun bs!136856 () Bool)

(assert (= bs!136856 (and d!232391 d!232211)))

(assert (=> bs!136856 (= lambda!21482 lambda!21439)))

(declare-fun bs!136857 () Bool)

(assert (= bs!136857 (and d!232391 d!232321)))

(assert (=> bs!136857 (= lambda!21482 lambda!21470)))

(declare-fun bs!136858 () Bool)

(assert (= bs!136858 (and d!232391 d!232339)))

(assert (=> bs!136858 (= lambda!21482 lambda!21476)))

(declare-fun bs!136859 () Bool)

(assert (= bs!136859 (and d!232391 d!232215)))

(assert (=> bs!136859 (= lambda!21482 lambda!21440)))

(declare-fun bs!136860 () Bool)

(assert (= bs!136860 (and d!232391 d!232249)))

(assert (=> bs!136860 (= lambda!21482 lambda!21447)))

(declare-fun bs!136861 () Bool)

(assert (= bs!136861 (and d!232391 d!232237)))

(assert (=> bs!136861 (= lambda!21482 lambda!21442)))

(assert (=> d!232391 (= (inv!9492 setElem!3619) (forall!1946 (exprs!733 setElem!3619) lambda!21482))))

(declare-fun bs!136862 () Bool)

(assert (= bs!136862 d!232391))

(declare-fun m!946255 () Bool)

(assert (=> bs!136862 m!946255))

(assert (=> setNonEmpty!3619 d!232391))

(declare-fun d!232393 () Bool)

(assert (=> d!232393 true))

(declare-fun lambda!21485 () Int)

(declare-fun order!5345 () Int)

(declare-fun order!5347 () Int)

(declare-fun dynLambda!3879 (Int Int) Int)

(declare-fun dynLambda!3880 (Int Int) Int)

(assert (=> d!232393 (< (dynLambda!3879 order!5345 (toChars!2303 (transformation!1486 (h!12787 rules!1357)))) (dynLambda!3880 order!5347 lambda!21485))))

(assert (=> d!232393 true))

(assert (=> d!232393 (< (dynLambda!3877 order!5341 (toValue!2444 (transformation!1486 (h!12787 rules!1357)))) (dynLambda!3880 order!5347 lambda!21485))))

(declare-fun Forall!355 (Int) Bool)

(assert (=> d!232393 (= (semiInverseModEq!568 (toChars!2303 (transformation!1486 (h!12787 rules!1357))) (toValue!2444 (transformation!1486 (h!12787 rules!1357)))) (Forall!355 lambda!21485))))

(declare-fun bs!136863 () Bool)

(assert (= bs!136863 d!232393))

(declare-fun m!946257 () Bool)

(assert (=> bs!136863 m!946257))

(assert (=> d!232187 d!232393))

(declare-fun b!689608 () Bool)

(declare-fun e!433392 () Bool)

(declare-fun tp!206528 () Bool)

(declare-fun tp!206529 () Bool)

(assert (=> b!689608 (= e!433392 (and tp!206528 tp!206529))))

(declare-fun b!689607 () Bool)

(declare-fun tp!206526 () Bool)

(assert (=> b!689607 (= e!433392 tp!206526)))

(assert (=> b!689177 (= tp!206434 e!433392)))

(declare-fun b!689605 () Bool)

(assert (=> b!689605 (= e!433392 tp_is_empty!3641)))

(declare-fun b!689606 () Bool)

(declare-fun tp!206530 () Bool)

(declare-fun tp!206527 () Bool)

(assert (=> b!689606 (= e!433392 (and tp!206530 tp!206527))))

(assert (= (and b!689177 ((_ is ElementMatch!1823) (_1!4274 (_1!4275 (h!12788 mapValue!2974))))) b!689605))

(assert (= (and b!689177 ((_ is Concat!3353) (_1!4274 (_1!4275 (h!12788 mapValue!2974))))) b!689606))

(assert (= (and b!689177 ((_ is Star!1823) (_1!4274 (_1!4275 (h!12788 mapValue!2974))))) b!689607))

(assert (= (and b!689177 ((_ is Union!1823) (_1!4274 (_1!4275 (h!12788 mapValue!2974))))) b!689608))

(declare-fun setNonEmpty!3645 () Bool)

(declare-fun setElem!3645 () Context!466)

(declare-fun e!433393 () Bool)

(declare-fun tp!206535 () Bool)

(declare-fun setRes!3645 () Bool)

(assert (=> setNonEmpty!3645 (= setRes!3645 (and tp!206535 (inv!9492 setElem!3645) e!433393))))

(declare-fun setRest!3645 () (InoxSet Context!466))

(assert (=> setNonEmpty!3645 (= (_2!4275 (h!12788 (t!87212 mapValue!2974))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3645 true) setRest!3645))))

(declare-fun b!689609 () Bool)

(declare-fun e!433394 () Bool)

(declare-fun tp!206534 () Bool)

(assert (=> b!689609 (= e!433394 tp!206534)))

(declare-fun b!689610 () Bool)

(declare-fun tp!206532 () Bool)

(assert (=> b!689610 (= e!433393 tp!206532)))

(declare-fun e!433395 () Bool)

(assert (=> b!689177 (= tp!206435 e!433395)))

(declare-fun setIsEmpty!3645 () Bool)

(assert (=> setIsEmpty!3645 setRes!3645))

(declare-fun tp!206531 () Bool)

(declare-fun tp!206533 () Bool)

(declare-fun b!689611 () Bool)

(assert (=> b!689611 (= e!433395 (and tp!206531 (inv!9492 (_2!4274 (_1!4275 (h!12788 (t!87212 mapValue!2974))))) e!433394 tp_is_empty!3641 setRes!3645 tp!206533))))

(declare-fun condSetEmpty!3645 () Bool)

(assert (=> b!689611 (= condSetEmpty!3645 (= (_2!4275 (h!12788 (t!87212 mapValue!2974))) ((as const (Array Context!466 Bool)) false)))))

(assert (= b!689611 b!689609))

(assert (= (and b!689611 condSetEmpty!3645) setIsEmpty!3645))

(assert (= (and b!689611 (not condSetEmpty!3645)) setNonEmpty!3645))

(assert (= setNonEmpty!3645 b!689610))

(assert (= (and b!689177 ((_ is Cons!7387) (t!87212 mapValue!2974))) b!689611))

(declare-fun m!946259 () Bool)

(assert (=> setNonEmpty!3645 m!946259))

(declare-fun m!946261 () Bool)

(assert (=> b!689611 m!946261))

(declare-fun b!689616 () Bool)

(declare-fun e!433398 () Bool)

(declare-fun tp!206540 () Bool)

(declare-fun tp!206541 () Bool)

(assert (=> b!689616 (= e!433398 (and tp!206540 tp!206541))))

(assert (=> b!689179 (= tp!206436 e!433398)))

(assert (= (and b!689179 ((_ is Cons!7381) (exprs!733 setElem!3626))) b!689616))

(declare-fun e!433400 () Bool)

(declare-fun setNonEmpty!3646 () Bool)

(declare-fun tp!206544 () Bool)

(declare-fun setRes!3646 () Bool)

(declare-fun setElem!3646 () Context!466)

(assert (=> setNonEmpty!3646 (= setRes!3646 (and tp!206544 (inv!9492 setElem!3646) e!433400))))

(declare-fun setRest!3646 () (InoxSet Context!466))

(assert (=> setNonEmpty!3646 (= (_2!4277 (h!12789 (t!87213 (minValue!998 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457))))))))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3646 true) setRest!3646))))

(declare-fun setIsEmpty!3646 () Bool)

(assert (=> setIsEmpty!3646 setRes!3646))

(declare-fun e!433401 () Bool)

(assert (=> b!689187 (= tp!206449 e!433401)))

(declare-fun e!433399 () Bool)

(declare-fun b!689617 () Bool)

(declare-fun tp!206545 () Bool)

(assert (=> b!689617 (= e!433401 (and (inv!9492 (_1!4276 (_1!4277 (h!12789 (t!87213 (minValue!998 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457))))))))))) e!433399 tp_is_empty!3641 setRes!3646 tp!206545))))

(declare-fun condSetEmpty!3646 () Bool)

(assert (=> b!689617 (= condSetEmpty!3646 (= (_2!4277 (h!12789 (t!87213 (minValue!998 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457))))))))) ((as const (Array Context!466 Bool)) false)))))

(declare-fun b!689618 () Bool)

(declare-fun tp!206543 () Bool)

(assert (=> b!689618 (= e!433400 tp!206543)))

(declare-fun b!689619 () Bool)

(declare-fun tp!206542 () Bool)

(assert (=> b!689619 (= e!433399 tp!206542)))

(assert (= b!689617 b!689619))

(assert (= (and b!689617 condSetEmpty!3646) setIsEmpty!3646))

(assert (= (and b!689617 (not condSetEmpty!3646)) setNonEmpty!3646))

(assert (= setNonEmpty!3646 b!689618))

(assert (= (and b!689187 ((_ is Cons!7388) (t!87213 (minValue!998 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457))))))))) b!689617))

(declare-fun m!946263 () Bool)

(assert (=> setNonEmpty!3646 m!946263))

(declare-fun m!946265 () Bool)

(assert (=> b!689617 m!946265))

(declare-fun b!689620 () Bool)

(declare-fun e!433402 () Bool)

(declare-fun tp!206546 () Bool)

(declare-fun tp!206547 () Bool)

(assert (=> b!689620 (= e!433402 (and tp!206546 tp!206547))))

(assert (=> b!689155 (= tp!206393 e!433402)))

(assert (= (and b!689155 ((_ is Cons!7381) (exprs!733 (_1!4276 (_1!4277 (h!12789 mapValue!2971)))))) b!689620))

(declare-fun b!689621 () Bool)

(declare-fun e!433403 () Bool)

(declare-fun tp!206548 () Bool)

(declare-fun tp!206549 () Bool)

(assert (=> b!689621 (= e!433403 (and tp!206548 tp!206549))))

(assert (=> b!689251 (= tp!206523 e!433403)))

(assert (= (and b!689251 ((_ is Cons!7381) (exprs!733 setElem!3644))) b!689621))

(declare-fun condSetEmpty!3649 () Bool)

(assert (=> setNonEmpty!3629 (= condSetEmpty!3649 (= setRest!3629 ((as const (Array Context!466 Bool)) false)))))

(declare-fun setRes!3649 () Bool)

(assert (=> setNonEmpty!3629 (= tp!206444 setRes!3649)))

(declare-fun setIsEmpty!3649 () Bool)

(assert (=> setIsEmpty!3649 setRes!3649))

(declare-fun setElem!3649 () Context!466)

(declare-fun setNonEmpty!3649 () Bool)

(declare-fun tp!206555 () Bool)

(declare-fun e!433406 () Bool)

(assert (=> setNonEmpty!3649 (= setRes!3649 (and tp!206555 (inv!9492 setElem!3649) e!433406))))

(declare-fun setRest!3649 () (InoxSet Context!466))

(assert (=> setNonEmpty!3649 (= setRest!3629 ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3649 true) setRest!3649))))

(declare-fun b!689626 () Bool)

(declare-fun tp!206554 () Bool)

(assert (=> b!689626 (= e!433406 tp!206554)))

(assert (= (and setNonEmpty!3629 condSetEmpty!3649) setIsEmpty!3649))

(assert (= (and setNonEmpty!3629 (not condSetEmpty!3649)) setNonEmpty!3649))

(assert (= setNonEmpty!3649 b!689626))

(declare-fun m!946267 () Bool)

(assert (=> setNonEmpty!3649 m!946267))

(declare-fun b!689627 () Bool)

(declare-fun tp!206558 () Bool)

(declare-fun tp!206556 () Bool)

(declare-fun e!433408 () Bool)

(assert (=> b!689627 (= e!433408 (and (inv!9488 (left!5956 (left!5956 (c!121420 input!756)))) tp!206556 (inv!9488 (right!6286 (left!5956 (c!121420 input!756)))) tp!206558))))

(declare-fun b!689629 () Bool)

(declare-fun e!433407 () Bool)

(declare-fun tp!206557 () Bool)

(assert (=> b!689629 (= e!433407 tp!206557)))

(declare-fun b!689628 () Bool)

(assert (=> b!689628 (= e!433408 (and (inv!9493 (xs!5265 (left!5956 (c!121420 input!756)))) e!433407))))

(assert (=> b!689247 (= tp!206520 (and (inv!9488 (left!5956 (c!121420 input!756))) e!433408))))

(assert (= (and b!689247 ((_ is Node!2616) (left!5956 (c!121420 input!756)))) b!689627))

(assert (= b!689628 b!689629))

(assert (= (and b!689247 ((_ is Leaf!3881) (left!5956 (c!121420 input!756)))) b!689628))

(declare-fun m!946269 () Bool)

(assert (=> b!689627 m!946269))

(declare-fun m!946271 () Bool)

(assert (=> b!689627 m!946271))

(declare-fun m!946273 () Bool)

(assert (=> b!689628 m!946273))

(assert (=> b!689247 m!945764))

(declare-fun tp!206561 () Bool)

(declare-fun e!433410 () Bool)

(declare-fun b!689630 () Bool)

(declare-fun tp!206559 () Bool)

(assert (=> b!689630 (= e!433410 (and (inv!9488 (left!5956 (right!6286 (c!121420 input!756)))) tp!206559 (inv!9488 (right!6286 (right!6286 (c!121420 input!756)))) tp!206561))))

(declare-fun b!689632 () Bool)

(declare-fun e!433409 () Bool)

(declare-fun tp!206560 () Bool)

(assert (=> b!689632 (= e!433409 tp!206560)))

(declare-fun b!689631 () Bool)

(assert (=> b!689631 (= e!433410 (and (inv!9493 (xs!5265 (right!6286 (c!121420 input!756)))) e!433409))))

(assert (=> b!689247 (= tp!206522 (and (inv!9488 (right!6286 (c!121420 input!756))) e!433410))))

(assert (= (and b!689247 ((_ is Node!2616) (right!6286 (c!121420 input!756)))) b!689630))

(assert (= b!689631 b!689632))

(assert (= (and b!689247 ((_ is Leaf!3881) (right!6286 (c!121420 input!756)))) b!689631))

(declare-fun m!946275 () Bool)

(assert (=> b!689630 m!946275))

(declare-fun m!946277 () Bool)

(assert (=> b!689630 m!946277))

(declare-fun m!946279 () Bool)

(assert (=> b!689631 m!946279))

(assert (=> b!689247 m!945766))

(declare-fun b!689633 () Bool)

(declare-fun e!433411 () Bool)

(declare-fun tp!206562 () Bool)

(declare-fun tp!206563 () Bool)

(assert (=> b!689633 (= e!433411 (and tp!206562 tp!206563))))

(assert (=> b!689188 (= tp!206447 e!433411)))

(assert (= (and b!689188 ((_ is Cons!7381) (exprs!733 setElem!3630))) b!689633))

(declare-fun b!689634 () Bool)

(declare-fun e!433412 () Bool)

(declare-fun tp!206564 () Bool)

(declare-fun tp!206565 () Bool)

(assert (=> b!689634 (= e!433412 (and tp!206564 tp!206565))))

(assert (=> b!689181 (= tp!206440 e!433412)))

(assert (= (and b!689181 ((_ is Cons!7381) (exprs!733 (_2!4274 (_1!4275 (h!12788 mapValue!2966)))))) b!689634))

(declare-fun b!689639 () Bool)

(declare-fun e!433415 () Bool)

(declare-fun tp!206568 () Bool)

(assert (=> b!689639 (= e!433415 (and tp_is_empty!3641 tp!206568))))

(assert (=> b!689249 (= tp!206521 e!433415)))

(assert (= (and b!689249 ((_ is Cons!7382) (innerList!2674 (xs!5265 (c!121420 input!756))))) b!689639))

(declare-fun b!689640 () Bool)

(declare-fun e!433416 () Bool)

(declare-fun tp!206569 () Bool)

(declare-fun tp!206570 () Bool)

(assert (=> b!689640 (= e!433416 (and tp!206569 tp!206570))))

(assert (=> b!689186 (= tp!206442 e!433416)))

(assert (= (and b!689186 ((_ is Cons!7381) (exprs!733 (_1!4276 (_1!4277 (h!12789 (zeroValue!998 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457)))))))))))) b!689640))

(declare-fun condSetEmpty!3650 () Bool)

(assert (=> setNonEmpty!3620 (= condSetEmpty!3650 (= setRest!3619 ((as const (Array Context!466 Bool)) false)))))

(declare-fun setRes!3650 () Bool)

(assert (=> setNonEmpty!3620 (= tp!206397 setRes!3650)))

(declare-fun setIsEmpty!3650 () Bool)

(assert (=> setIsEmpty!3650 setRes!3650))

(declare-fun setElem!3650 () Context!466)

(declare-fun setNonEmpty!3650 () Bool)

(declare-fun tp!206572 () Bool)

(declare-fun e!433417 () Bool)

(assert (=> setNonEmpty!3650 (= setRes!3650 (and tp!206572 (inv!9492 setElem!3650) e!433417))))

(declare-fun setRest!3650 () (InoxSet Context!466))

(assert (=> setNonEmpty!3650 (= setRest!3619 ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3650 true) setRest!3650))))

(declare-fun b!689641 () Bool)

(declare-fun tp!206571 () Bool)

(assert (=> b!689641 (= e!433417 tp!206571)))

(assert (= (and setNonEmpty!3620 condSetEmpty!3650) setIsEmpty!3650))

(assert (= (and setNonEmpty!3620 (not condSetEmpty!3650)) setNonEmpty!3650))

(assert (= setNonEmpty!3650 b!689641))

(declare-fun m!946281 () Bool)

(assert (=> setNonEmpty!3650 m!946281))

(declare-fun condSetEmpty!3651 () Bool)

(assert (=> setNonEmpty!3631 (= condSetEmpty!3651 (= setRest!3631 ((as const (Array Context!466 Bool)) false)))))

(declare-fun setRes!3651 () Bool)

(assert (=> setNonEmpty!3631 (= tp!206478 setRes!3651)))

(declare-fun setIsEmpty!3651 () Bool)

(assert (=> setIsEmpty!3651 setRes!3651))

(declare-fun setNonEmpty!3651 () Bool)

(declare-fun tp!206574 () Bool)

(declare-fun e!433418 () Bool)

(declare-fun setElem!3651 () Context!466)

(assert (=> setNonEmpty!3651 (= setRes!3651 (and tp!206574 (inv!9492 setElem!3651) e!433418))))

(declare-fun setRest!3651 () (InoxSet Context!466))

(assert (=> setNonEmpty!3651 (= setRest!3631 ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3651 true) setRest!3651))))

(declare-fun b!689642 () Bool)

(declare-fun tp!206573 () Bool)

(assert (=> b!689642 (= e!433418 tp!206573)))

(assert (= (and setNonEmpty!3631 condSetEmpty!3651) setIsEmpty!3651))

(assert (= (and setNonEmpty!3631 (not condSetEmpty!3651)) setNonEmpty!3651))

(assert (= setNonEmpty!3651 b!689642))

(declare-fun m!946283 () Bool)

(assert (=> setNonEmpty!3651 m!946283))

(declare-fun b!689643 () Bool)

(declare-fun e!433419 () Bool)

(declare-fun tp!206575 () Bool)

(declare-fun tp!206576 () Bool)

(assert (=> b!689643 (= e!433419 (and tp!206575 tp!206576))))

(assert (=> b!689124 (= tp!206359 e!433419)))

(assert (= (and b!689124 ((_ is Cons!7381) (exprs!733 (_2!4274 (_1!4275 (h!12788 mapDefault!2968)))))) b!689643))

(declare-fun condSetEmpty!3652 () Bool)

(assert (=> setNonEmpty!3632 (= condSetEmpty!3652 (= setRest!3632 ((as const (Array Context!466 Bool)) false)))))

(declare-fun setRes!3652 () Bool)

(assert (=> setNonEmpty!3632 (= tp!206483 setRes!3652)))

(declare-fun setIsEmpty!3652 () Bool)

(assert (=> setIsEmpty!3652 setRes!3652))

(declare-fun e!433420 () Bool)

(declare-fun setNonEmpty!3652 () Bool)

(declare-fun tp!206578 () Bool)

(declare-fun setElem!3652 () Context!466)

(assert (=> setNonEmpty!3652 (= setRes!3652 (and tp!206578 (inv!9492 setElem!3652) e!433420))))

(declare-fun setRest!3652 () (InoxSet Context!466))

(assert (=> setNonEmpty!3652 (= setRest!3632 ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3652 true) setRest!3652))))

(declare-fun b!689644 () Bool)

(declare-fun tp!206577 () Bool)

(assert (=> b!689644 (= e!433420 tp!206577)))

(assert (= (and setNonEmpty!3632 condSetEmpty!3652) setIsEmpty!3652))

(assert (= (and setNonEmpty!3632 (not condSetEmpty!3652)) setNonEmpty!3652))

(assert (= setNonEmpty!3652 b!689644))

(declare-fun m!946285 () Bool)

(assert (=> setNonEmpty!3652 m!946285))

(declare-fun b!689646 () Bool)

(declare-fun e!433422 () Bool)

(declare-fun tp!206579 () Bool)

(assert (=> b!689646 (= e!433422 tp!206579)))

(declare-fun b!689645 () Bool)

(declare-fun e!433421 () Bool)

(declare-fun setRes!3653 () Bool)

(declare-fun tp!206580 () Bool)

(assert (=> b!689645 (= e!433421 (and setRes!3653 tp!206580))))

(declare-fun condSetEmpty!3653 () Bool)

(assert (=> b!689645 (= condSetEmpty!3653 (= (_1!4271 (_1!4272 (h!12784 (t!87208 (minValue!996 (v!17593 (underlying!1661 (v!17594 (underlying!1662 (cache!1098 cacheFindLongestMatch!59)))))))))) ((as const (Array Context!466 Bool)) false)))))

(declare-fun setIsEmpty!3653 () Bool)

(assert (=> setIsEmpty!3653 setRes!3653))

(assert (=> b!689229 (= tp!206494 e!433421)))

(declare-fun tp!206581 () Bool)

(declare-fun setElem!3653 () Context!466)

(declare-fun setNonEmpty!3653 () Bool)

(assert (=> setNonEmpty!3653 (= setRes!3653 (and tp!206581 (inv!9492 setElem!3653) e!433422))))

(declare-fun setRest!3653 () (InoxSet Context!466))

(assert (=> setNonEmpty!3653 (= (_1!4271 (_1!4272 (h!12784 (t!87208 (minValue!996 (v!17593 (underlying!1661 (v!17594 (underlying!1662 (cache!1098 cacheFindLongestMatch!59)))))))))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3653 true) setRest!3653))))

(assert (= (and b!689645 condSetEmpty!3653) setIsEmpty!3653))

(assert (= (and b!689645 (not condSetEmpty!3653)) setNonEmpty!3653))

(assert (= setNonEmpty!3653 b!689646))

(assert (= (and b!689229 ((_ is Cons!7383) (t!87208 (minValue!996 (v!17593 (underlying!1661 (v!17594 (underlying!1662 (cache!1098 cacheFindLongestMatch!59))))))))) b!689645))

(declare-fun m!946287 () Bool)

(assert (=> setNonEmpty!3653 m!946287))

(declare-fun setNonEmpty!3654 () Bool)

(declare-fun setRes!3654 () Bool)

(declare-fun e!433424 () Bool)

(declare-fun setElem!3654 () Context!466)

(declare-fun tp!206584 () Bool)

(assert (=> setNonEmpty!3654 (= setRes!3654 (and tp!206584 (inv!9492 setElem!3654) e!433424))))

(declare-fun setRest!3654 () (InoxSet Context!466))

(assert (=> setNonEmpty!3654 (= (_2!4277 (h!12789 (t!87213 mapValue!2968))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3654 true) setRest!3654))))

(declare-fun setIsEmpty!3654 () Bool)

(assert (=> setIsEmpty!3654 setRes!3654))

(declare-fun e!433425 () Bool)

(assert (=> b!689158 (= tp!206403 e!433425)))

(declare-fun tp!206585 () Bool)

(declare-fun e!433423 () Bool)

(declare-fun b!689647 () Bool)

(assert (=> b!689647 (= e!433425 (and (inv!9492 (_1!4276 (_1!4277 (h!12789 (t!87213 mapValue!2968))))) e!433423 tp_is_empty!3641 setRes!3654 tp!206585))))

(declare-fun condSetEmpty!3654 () Bool)

(assert (=> b!689647 (= condSetEmpty!3654 (= (_2!4277 (h!12789 (t!87213 mapValue!2968))) ((as const (Array Context!466 Bool)) false)))))

(declare-fun b!689648 () Bool)

(declare-fun tp!206583 () Bool)

(assert (=> b!689648 (= e!433424 tp!206583)))

(declare-fun b!689649 () Bool)

(declare-fun tp!206582 () Bool)

(assert (=> b!689649 (= e!433423 tp!206582)))

(assert (= b!689647 b!689649))

(assert (= (and b!689647 condSetEmpty!3654) setIsEmpty!3654))

(assert (= (and b!689647 (not condSetEmpty!3654)) setNonEmpty!3654))

(assert (= setNonEmpty!3654 b!689648))

(assert (= (and b!689158 ((_ is Cons!7388) (t!87213 mapValue!2968))) b!689647))

(declare-fun m!946289 () Bool)

(assert (=> setNonEmpty!3654 m!946289))

(declare-fun m!946291 () Bool)

(assert (=> b!689647 m!946291))

(declare-fun b!689652 () Bool)

(declare-fun b_free!19413 () Bool)

(declare-fun b_next!19477 () Bool)

(assert (=> b!689652 (= b_free!19413 (not b_next!19477))))

(declare-fun tp!206586 () Bool)

(declare-fun b_and!63207 () Bool)

(assert (=> b!689652 (= tp!206586 b_and!63207)))

(declare-fun b_free!19415 () Bool)

(declare-fun b_next!19479 () Bool)

(assert (=> b!689652 (= b_free!19415 (not b_next!19479))))

(declare-fun tp!206588 () Bool)

(declare-fun b_and!63209 () Bool)

(assert (=> b!689652 (= tp!206588 b_and!63209)))

(declare-fun e!433427 () Bool)

(assert (=> b!689652 (= e!433427 (and tp!206586 tp!206588))))

(declare-fun b!689651 () Bool)

(declare-fun tp!206589 () Bool)

(declare-fun e!433428 () Bool)

(assert (=> b!689651 (= e!433428 (and tp!206589 (inv!9482 (tag!1748 (h!12787 (t!87211 (t!87211 rules!1357))))) (inv!9489 (transformation!1486 (h!12787 (t!87211 (t!87211 rules!1357))))) e!433427))))

(declare-fun b!689650 () Bool)

(declare-fun e!433426 () Bool)

(declare-fun tp!206587 () Bool)

(assert (=> b!689650 (= e!433426 (and e!433428 tp!206587))))

(assert (=> b!689135 (= tp!206370 e!433426)))

(assert (= b!689651 b!689652))

(assert (= b!689650 b!689651))

(assert (= (and b!689135 ((_ is Cons!7386) (t!87211 (t!87211 rules!1357)))) b!689650))

(declare-fun m!946293 () Bool)

(assert (=> b!689651 m!946293))

(declare-fun m!946295 () Bool)

(assert (=> b!689651 m!946295))

(declare-fun b!689653 () Bool)

(declare-fun e!433430 () Bool)

(declare-fun tp!206590 () Bool)

(declare-fun tp!206591 () Bool)

(assert (=> b!689653 (= e!433430 (and tp!206590 tp!206591))))

(assert (=> b!689241 (= tp!206516 e!433430)))

(assert (= (and b!689241 ((_ is Cons!7381) (exprs!733 setElem!3641))) b!689653))

(declare-fun b!689654 () Bool)

(declare-fun e!433431 () Bool)

(declare-fun tp!206592 () Bool)

(declare-fun tp!206593 () Bool)

(assert (=> b!689654 (= e!433431 (and tp!206592 tp!206593))))

(assert (=> b!689216 (= tp!206475 e!433431)))

(assert (= (and b!689216 ((_ is Cons!7381) (exprs!733 setElem!3631))) b!689654))

(declare-fun b!689655 () Bool)

(declare-fun e!433432 () Bool)

(declare-fun tp!206594 () Bool)

(declare-fun tp!206595 () Bool)

(assert (=> b!689655 (= e!433432 (and tp!206594 tp!206595))))

(assert (=> b!689219 (= tp!206480 e!433432)))

(assert (= (and b!689219 ((_ is Cons!7381) (exprs!733 setElem!3632))) b!689655))

(declare-fun condSetEmpty!3655 () Bool)

(assert (=> setNonEmpty!3636 (= condSetEmpty!3655 (= setRest!3636 ((as const (Array Context!466 Bool)) false)))))

(declare-fun setRes!3655 () Bool)

(assert (=> setNonEmpty!3636 (= tp!206495 setRes!3655)))

(declare-fun setIsEmpty!3655 () Bool)

(assert (=> setIsEmpty!3655 setRes!3655))

(declare-fun setElem!3655 () Context!466)

(declare-fun e!433433 () Bool)

(declare-fun setNonEmpty!3655 () Bool)

(declare-fun tp!206597 () Bool)

(assert (=> setNonEmpty!3655 (= setRes!3655 (and tp!206597 (inv!9492 setElem!3655) e!433433))))

(declare-fun setRest!3655 () (InoxSet Context!466))

(assert (=> setNonEmpty!3655 (= setRest!3636 ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3655 true) setRest!3655))))

(declare-fun b!689656 () Bool)

(declare-fun tp!206596 () Bool)

(assert (=> b!689656 (= e!433433 tp!206596)))

(assert (= (and setNonEmpty!3636 condSetEmpty!3655) setIsEmpty!3655))

(assert (= (and setNonEmpty!3636 (not condSetEmpty!3655)) setNonEmpty!3655))

(assert (= setNonEmpty!3655 b!689656))

(declare-fun m!946297 () Bool)

(assert (=> setNonEmpty!3655 m!946297))

(declare-fun b!689657 () Bool)

(declare-fun e!433434 () Bool)

(declare-fun tp!206598 () Bool)

(declare-fun tp!206599 () Bool)

(assert (=> b!689657 (= e!433434 (and tp!206598 tp!206599))))

(assert (=> b!689159 (= tp!206401 e!433434)))

(assert (= (and b!689159 ((_ is Cons!7381) (exprs!733 setElem!3621))) b!689657))

(declare-fun setNonEmpty!3656 () Bool)

(declare-fun setElem!3656 () Context!466)

(declare-fun tp!206602 () Bool)

(declare-fun setRes!3656 () Bool)

(declare-fun e!433436 () Bool)

(assert (=> setNonEmpty!3656 (= setRes!3656 (and tp!206602 (inv!9492 setElem!3656) e!433436))))

(declare-fun setRest!3656 () (InoxSet Context!466))

(assert (=> setNonEmpty!3656 (= (_2!4277 (h!12789 (t!87213 mapDefault!2967))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3656 true) setRest!3656))))

(declare-fun setIsEmpty!3656 () Bool)

(assert (=> setIsEmpty!3656 setRes!3656))

(declare-fun e!433437 () Bool)

(assert (=> b!689113 (= tp!206345 e!433437)))

(declare-fun e!433435 () Bool)

(declare-fun b!689658 () Bool)

(declare-fun tp!206603 () Bool)

(assert (=> b!689658 (= e!433437 (and (inv!9492 (_1!4276 (_1!4277 (h!12789 (t!87213 mapDefault!2967))))) e!433435 tp_is_empty!3641 setRes!3656 tp!206603))))

(declare-fun condSetEmpty!3656 () Bool)

(assert (=> b!689658 (= condSetEmpty!3656 (= (_2!4277 (h!12789 (t!87213 mapDefault!2967))) ((as const (Array Context!466 Bool)) false)))))

(declare-fun b!689659 () Bool)

(declare-fun tp!206601 () Bool)

(assert (=> b!689659 (= e!433436 tp!206601)))

(declare-fun b!689660 () Bool)

(declare-fun tp!206600 () Bool)

(assert (=> b!689660 (= e!433435 tp!206600)))

(assert (= b!689658 b!689660))

(assert (= (and b!689658 condSetEmpty!3656) setIsEmpty!3656))

(assert (= (and b!689658 (not condSetEmpty!3656)) setNonEmpty!3656))

(assert (= setNonEmpty!3656 b!689659))

(assert (= (and b!689113 ((_ is Cons!7388) (t!87213 mapDefault!2967))) b!689658))

(declare-fun m!946299 () Bool)

(assert (=> setNonEmpty!3656 m!946299))

(declare-fun m!946301 () Bool)

(assert (=> b!689658 m!946301))

(declare-fun b!689664 () Bool)

(declare-fun e!433438 () Bool)

(declare-fun tp!206606 () Bool)

(declare-fun tp!206607 () Bool)

(assert (=> b!689664 (= e!433438 (and tp!206606 tp!206607))))

(declare-fun b!689663 () Bool)

(declare-fun tp!206604 () Bool)

(assert (=> b!689663 (= e!433438 tp!206604)))

(assert (=> b!689217 (= tp!206474 e!433438)))

(declare-fun b!689661 () Bool)

(assert (=> b!689661 (= e!433438 tp_is_empty!3641)))

(declare-fun b!689662 () Bool)

(declare-fun tp!206608 () Bool)

(declare-fun tp!206605 () Bool)

(assert (=> b!689662 (= e!433438 (and tp!206608 tp!206605))))

(assert (= (and b!689217 ((_ is ElementMatch!1823) (_1!4274 (_1!4275 (h!12788 (zeroValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))))))) b!689661))

(assert (= (and b!689217 ((_ is Concat!3353) (_1!4274 (_1!4275 (h!12788 (zeroValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))))))) b!689662))

(assert (= (and b!689217 ((_ is Star!1823) (_1!4274 (_1!4275 (h!12788 (zeroValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))))))) b!689663))

(assert (= (and b!689217 ((_ is Union!1823) (_1!4274 (_1!4275 (h!12788 (zeroValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))))))) b!689664))

(declare-fun tp!206613 () Bool)

(declare-fun setElem!3657 () Context!466)

(declare-fun e!433439 () Bool)

(declare-fun setNonEmpty!3657 () Bool)

(declare-fun setRes!3657 () Bool)

(assert (=> setNonEmpty!3657 (= setRes!3657 (and tp!206613 (inv!9492 setElem!3657) e!433439))))

(declare-fun setRest!3657 () (InoxSet Context!466))

(assert (=> setNonEmpty!3657 (= (_2!4275 (h!12788 (t!87212 (zeroValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3657 true) setRest!3657))))

(declare-fun b!689665 () Bool)

(declare-fun e!433440 () Bool)

(declare-fun tp!206612 () Bool)

(assert (=> b!689665 (= e!433440 tp!206612)))

(declare-fun b!689666 () Bool)

(declare-fun tp!206610 () Bool)

(assert (=> b!689666 (= e!433439 tp!206610)))

(declare-fun e!433441 () Bool)

(assert (=> b!689217 (= tp!206476 e!433441)))

(declare-fun setIsEmpty!3657 () Bool)

(assert (=> setIsEmpty!3657 setRes!3657))

(declare-fun tp!206609 () Bool)

(declare-fun b!689667 () Bool)

(declare-fun tp!206611 () Bool)

(assert (=> b!689667 (= e!433441 (and tp!206609 (inv!9492 (_2!4274 (_1!4275 (h!12788 (t!87212 (zeroValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))))))) e!433440 tp_is_empty!3641 setRes!3657 tp!206611))))

(declare-fun condSetEmpty!3657 () Bool)

(assert (=> b!689667 (= condSetEmpty!3657 (= (_2!4275 (h!12788 (t!87212 (zeroValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))))) ((as const (Array Context!466 Bool)) false)))))

(assert (= b!689667 b!689665))

(assert (= (and b!689667 condSetEmpty!3657) setIsEmpty!3657))

(assert (= (and b!689667 (not condSetEmpty!3657)) setNonEmpty!3657))

(assert (= setNonEmpty!3657 b!689666))

(assert (= (and b!689217 ((_ is Cons!7387) (t!87212 (zeroValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))))) b!689667))

(declare-fun m!946303 () Bool)

(assert (=> setNonEmpty!3657 m!946303))

(declare-fun m!946305 () Bool)

(assert (=> b!689667 m!946305))

(declare-fun b!689671 () Bool)

(declare-fun e!433442 () Bool)

(declare-fun tp!206616 () Bool)

(declare-fun tp!206617 () Bool)

(assert (=> b!689671 (= e!433442 (and tp!206616 tp!206617))))

(declare-fun b!689670 () Bool)

(declare-fun tp!206614 () Bool)

(assert (=> b!689670 (= e!433442 tp!206614)))

(assert (=> b!689220 (= tp!206479 e!433442)))

(declare-fun b!689668 () Bool)

(assert (=> b!689668 (= e!433442 tp_is_empty!3641)))

(declare-fun b!689669 () Bool)

(declare-fun tp!206618 () Bool)

(declare-fun tp!206615 () Bool)

(assert (=> b!689669 (= e!433442 (and tp!206618 tp!206615))))

(assert (= (and b!689220 ((_ is ElementMatch!1823) (_1!4274 (_1!4275 (h!12788 (minValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))))))) b!689668))

(assert (= (and b!689220 ((_ is Concat!3353) (_1!4274 (_1!4275 (h!12788 (minValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))))))) b!689669))

(assert (= (and b!689220 ((_ is Star!1823) (_1!4274 (_1!4275 (h!12788 (minValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))))))) b!689670))

(assert (= (and b!689220 ((_ is Union!1823) (_1!4274 (_1!4275 (h!12788 (minValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))))))) b!689671))

(declare-fun tp!206623 () Bool)

(declare-fun setElem!3658 () Context!466)

(declare-fun setRes!3658 () Bool)

(declare-fun e!433443 () Bool)

(declare-fun setNonEmpty!3658 () Bool)

(assert (=> setNonEmpty!3658 (= setRes!3658 (and tp!206623 (inv!9492 setElem!3658) e!433443))))

(declare-fun setRest!3658 () (InoxSet Context!466))

(assert (=> setNonEmpty!3658 (= (_2!4275 (h!12788 (t!87212 (minValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3658 true) setRest!3658))))

(declare-fun b!689672 () Bool)

(declare-fun e!433444 () Bool)

(declare-fun tp!206622 () Bool)

(assert (=> b!689672 (= e!433444 tp!206622)))

(declare-fun b!689673 () Bool)

(declare-fun tp!206620 () Bool)

(assert (=> b!689673 (= e!433443 tp!206620)))

(declare-fun e!433445 () Bool)

(assert (=> b!689220 (= tp!206481 e!433445)))

(declare-fun setIsEmpty!3658 () Bool)

(assert (=> setIsEmpty!3658 setRes!3658))

(declare-fun tp!206621 () Bool)

(declare-fun tp!206619 () Bool)

(declare-fun b!689674 () Bool)

(assert (=> b!689674 (= e!433445 (and tp!206619 (inv!9492 (_2!4274 (_1!4275 (h!12788 (t!87212 (minValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))))))) e!433444 tp_is_empty!3641 setRes!3658 tp!206621))))

(declare-fun condSetEmpty!3658 () Bool)

(assert (=> b!689674 (= condSetEmpty!3658 (= (_2!4275 (h!12788 (t!87212 (minValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))))) ((as const (Array Context!466 Bool)) false)))))

(assert (= b!689674 b!689672))

(assert (= (and b!689674 condSetEmpty!3658) setIsEmpty!3658))

(assert (= (and b!689674 (not condSetEmpty!3658)) setNonEmpty!3658))

(assert (= setNonEmpty!3658 b!689673))

(assert (= (and b!689220 ((_ is Cons!7387) (t!87212 (minValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470))))))))) b!689674))

(declare-fun m!946307 () Bool)

(assert (=> setNonEmpty!3658 m!946307))

(declare-fun m!946309 () Bool)

(assert (=> b!689674 m!946309))

(declare-fun b!689676 () Bool)

(declare-fun e!433447 () Bool)

(declare-fun tp!206624 () Bool)

(assert (=> b!689676 (= e!433447 tp!206624)))

(declare-fun b!689675 () Bool)

(declare-fun e!433446 () Bool)

(declare-fun setRes!3659 () Bool)

(declare-fun tp!206625 () Bool)

(assert (=> b!689675 (= e!433446 (and setRes!3659 tp!206625))))

(declare-fun condSetEmpty!3659 () Bool)

(assert (=> b!689675 (= condSetEmpty!3659 (= (_1!4271 (_1!4272 (h!12784 (t!87208 mapValue!2967)))) ((as const (Array Context!466 Bool)) false)))))

(declare-fun setIsEmpty!3659 () Bool)

(assert (=> setIsEmpty!3659 setRes!3659))

(assert (=> b!689245 (= tp!206518 e!433446)))

(declare-fun setNonEmpty!3659 () Bool)

(declare-fun tp!206626 () Bool)

(declare-fun setElem!3659 () Context!466)

(assert (=> setNonEmpty!3659 (= setRes!3659 (and tp!206626 (inv!9492 setElem!3659) e!433447))))

(declare-fun setRest!3659 () (InoxSet Context!466))

(assert (=> setNonEmpty!3659 (= (_1!4271 (_1!4272 (h!12784 (t!87208 mapValue!2967)))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3659 true) setRest!3659))))

(assert (= (and b!689675 condSetEmpty!3659) setIsEmpty!3659))

(assert (= (and b!689675 (not condSetEmpty!3659)) setNonEmpty!3659))

(assert (= setNonEmpty!3659 b!689676))

(assert (= (and b!689245 ((_ is Cons!7383) (t!87208 mapValue!2967))) b!689675))

(declare-fun m!946311 () Bool)

(assert (=> setNonEmpty!3659 m!946311))

(declare-fun b!689678 () Bool)

(declare-fun e!433449 () Bool)

(declare-fun tp!206627 () Bool)

(assert (=> b!689678 (= e!433449 tp!206627)))

(declare-fun b!689677 () Bool)

(declare-fun e!433448 () Bool)

(declare-fun setRes!3660 () Bool)

(declare-fun tp!206628 () Bool)

(assert (=> b!689677 (= e!433448 (and setRes!3660 tp!206628))))

(declare-fun condSetEmpty!3660 () Bool)

(assert (=> b!689677 (= condSetEmpty!3660 (= (_1!4271 (_1!4272 (h!12784 (t!87208 mapDefault!2977)))) ((as const (Array Context!466 Bool)) false)))))

(declare-fun setIsEmpty!3660 () Bool)

(assert (=> setIsEmpty!3660 setRes!3660))

(assert (=> b!689243 (= tp!206510 e!433448)))

(declare-fun tp!206629 () Bool)

(declare-fun setNonEmpty!3660 () Bool)

(declare-fun setElem!3660 () Context!466)

(assert (=> setNonEmpty!3660 (= setRes!3660 (and tp!206629 (inv!9492 setElem!3660) e!433449))))

(declare-fun setRest!3660 () (InoxSet Context!466))

(assert (=> setNonEmpty!3660 (= (_1!4271 (_1!4272 (h!12784 (t!87208 mapDefault!2977)))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3660 true) setRest!3660))))

(assert (= (and b!689677 condSetEmpty!3660) setIsEmpty!3660))

(assert (= (and b!689677 (not condSetEmpty!3660)) setNonEmpty!3660))

(assert (= setNonEmpty!3660 b!689678))

(assert (= (and b!689243 ((_ is Cons!7383) (t!87208 mapDefault!2977))) b!689677))

(declare-fun m!946313 () Bool)

(assert (=> setNonEmpty!3660 m!946313))

(declare-fun b!689679 () Bool)

(declare-fun e!433450 () Bool)

(declare-fun tp!206630 () Bool)

(declare-fun tp!206631 () Bool)

(assert (=> b!689679 (= e!433450 (and tp!206630 tp!206631))))

(assert (=> b!689114 (= tp!206343 e!433450)))

(assert (= (and b!689114 ((_ is Cons!7381) (exprs!733 setElem!3611))) b!689679))

(declare-fun condSetEmpty!3661 () Bool)

(assert (=> setNonEmpty!3643 (= condSetEmpty!3661 (= setRest!3643 ((as const (Array Context!466 Bool)) false)))))

(declare-fun setRes!3661 () Bool)

(assert (=> setNonEmpty!3643 (= tp!206519 setRes!3661)))

(declare-fun setIsEmpty!3661 () Bool)

(assert (=> setIsEmpty!3661 setRes!3661))

(declare-fun e!433451 () Bool)

(declare-fun setElem!3661 () Context!466)

(declare-fun tp!206633 () Bool)

(declare-fun setNonEmpty!3661 () Bool)

(assert (=> setNonEmpty!3661 (= setRes!3661 (and tp!206633 (inv!9492 setElem!3661) e!433451))))

(declare-fun setRest!3661 () (InoxSet Context!466))

(assert (=> setNonEmpty!3661 (= setRest!3643 ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3661 true) setRest!3661))))

(declare-fun b!689680 () Bool)

(declare-fun tp!206632 () Bool)

(assert (=> b!689680 (= e!433451 tp!206632)))

(assert (= (and setNonEmpty!3643 condSetEmpty!3661) setIsEmpty!3661))

(assert (= (and setNonEmpty!3643 (not condSetEmpty!3661)) setNonEmpty!3661))

(assert (= setNonEmpty!3661 b!689680))

(declare-fun m!946315 () Bool)

(assert (=> setNonEmpty!3661 m!946315))

(declare-fun condSetEmpty!3662 () Bool)

(assert (=> setNonEmpty!3627 (= condSetEmpty!3662 (= setRest!3627 ((as const (Array Context!466 Bool)) false)))))

(declare-fun setRes!3662 () Bool)

(assert (=> setNonEmpty!3627 (= tp!206428 setRes!3662)))

(declare-fun setIsEmpty!3662 () Bool)

(assert (=> setIsEmpty!3662 setRes!3662))

(declare-fun tp!206635 () Bool)

(declare-fun setNonEmpty!3662 () Bool)

(declare-fun e!433452 () Bool)

(declare-fun setElem!3662 () Context!466)

(assert (=> setNonEmpty!3662 (= setRes!3662 (and tp!206635 (inv!9492 setElem!3662) e!433452))))

(declare-fun setRest!3662 () (InoxSet Context!466))

(assert (=> setNonEmpty!3662 (= setRest!3627 ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3662 true) setRest!3662))))

(declare-fun b!689681 () Bool)

(declare-fun tp!206634 () Bool)

(assert (=> b!689681 (= e!433452 tp!206634)))

(assert (= (and setNonEmpty!3627 condSetEmpty!3662) setIsEmpty!3662))

(assert (= (and setNonEmpty!3627 (not condSetEmpty!3662)) setNonEmpty!3662))

(assert (= setNonEmpty!3662 b!689681))

(declare-fun m!946317 () Bool)

(assert (=> setNonEmpty!3662 m!946317))

(declare-fun b!689685 () Bool)

(declare-fun e!433453 () Bool)

(declare-fun tp!206638 () Bool)

(declare-fun tp!206639 () Bool)

(assert (=> b!689685 (= e!433453 (and tp!206638 tp!206639))))

(declare-fun b!689684 () Bool)

(declare-fun tp!206636 () Bool)

(assert (=> b!689684 (= e!433453 tp!206636)))

(assert (=> b!689212 (= tp!206473 e!433453)))

(declare-fun b!689682 () Bool)

(assert (=> b!689682 (= e!433453 tp_is_empty!3641)))

(declare-fun b!689683 () Bool)

(declare-fun tp!206640 () Bool)

(declare-fun tp!206637 () Bool)

(assert (=> b!689683 (= e!433453 (and tp!206640 tp!206637))))

(assert (= (and b!689212 ((_ is ElementMatch!1823) (regOne!4158 (regex!1486 (h!12787 rules!1357))))) b!689682))

(assert (= (and b!689212 ((_ is Concat!3353) (regOne!4158 (regex!1486 (h!12787 rules!1357))))) b!689683))

(assert (= (and b!689212 ((_ is Star!1823) (regOne!4158 (regex!1486 (h!12787 rules!1357))))) b!689684))

(assert (= (and b!689212 ((_ is Union!1823) (regOne!4158 (regex!1486 (h!12787 rules!1357))))) b!689685))

(declare-fun b!689689 () Bool)

(declare-fun e!433454 () Bool)

(declare-fun tp!206643 () Bool)

(declare-fun tp!206644 () Bool)

(assert (=> b!689689 (= e!433454 (and tp!206643 tp!206644))))

(declare-fun b!689688 () Bool)

(declare-fun tp!206641 () Bool)

(assert (=> b!689688 (= e!433454 tp!206641)))

(assert (=> b!689212 (= tp!206470 e!433454)))

(declare-fun b!689686 () Bool)

(assert (=> b!689686 (= e!433454 tp_is_empty!3641)))

(declare-fun b!689687 () Bool)

(declare-fun tp!206645 () Bool)

(declare-fun tp!206642 () Bool)

(assert (=> b!689687 (= e!433454 (and tp!206645 tp!206642))))

(assert (= (and b!689212 ((_ is ElementMatch!1823) (regTwo!4158 (regex!1486 (h!12787 rules!1357))))) b!689686))

(assert (= (and b!689212 ((_ is Concat!3353) (regTwo!4158 (regex!1486 (h!12787 rules!1357))))) b!689687))

(assert (= (and b!689212 ((_ is Star!1823) (regTwo!4158 (regex!1486 (h!12787 rules!1357))))) b!689688))

(assert (= (and b!689212 ((_ is Union!1823) (regTwo!4158 (regex!1486 (h!12787 rules!1357))))) b!689689))

(declare-fun b!689691 () Bool)

(declare-fun e!433456 () Bool)

(declare-fun tp!206646 () Bool)

(assert (=> b!689691 (= e!433456 tp!206646)))

(declare-fun b!689690 () Bool)

(declare-fun e!433455 () Bool)

(declare-fun setRes!3663 () Bool)

(declare-fun tp!206647 () Bool)

(assert (=> b!689690 (= e!433455 (and setRes!3663 tp!206647))))

(declare-fun condSetEmpty!3663 () Bool)

(assert (=> b!689690 (= condSetEmpty!3663 (= (_1!4271 (_1!4272 (h!12784 (t!87208 (zeroValue!996 (v!17593 (underlying!1661 (v!17594 (underlying!1662 (cache!1098 cacheFindLongestMatch!59)))))))))) ((as const (Array Context!466 Bool)) false)))))

(declare-fun setIsEmpty!3663 () Bool)

(assert (=> setIsEmpty!3663 setRes!3663))

(assert (=> b!689227 (= tp!206491 e!433455)))

(declare-fun setElem!3663 () Context!466)

(declare-fun tp!206648 () Bool)

(declare-fun setNonEmpty!3663 () Bool)

(assert (=> setNonEmpty!3663 (= setRes!3663 (and tp!206648 (inv!9492 setElem!3663) e!433456))))

(declare-fun setRest!3663 () (InoxSet Context!466))

(assert (=> setNonEmpty!3663 (= (_1!4271 (_1!4272 (h!12784 (t!87208 (zeroValue!996 (v!17593 (underlying!1661 (v!17594 (underlying!1662 (cache!1098 cacheFindLongestMatch!59)))))))))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3663 true) setRest!3663))))

(assert (= (and b!689690 condSetEmpty!3663) setIsEmpty!3663))

(assert (= (and b!689690 (not condSetEmpty!3663)) setNonEmpty!3663))

(assert (= setNonEmpty!3663 b!689691))

(assert (= (and b!689227 ((_ is Cons!7383) (t!87208 (zeroValue!996 (v!17593 (underlying!1661 (v!17594 (underlying!1662 (cache!1098 cacheFindLongestMatch!59))))))))) b!689690))

(declare-fun m!946319 () Bool)

(assert (=> setNonEmpty!3663 m!946319))

(declare-fun tp!206651 () Bool)

(declare-fun e!433458 () Bool)

(declare-fun b!689692 () Bool)

(declare-fun tp!206649 () Bool)

(assert (=> b!689692 (= e!433458 (and (inv!9488 (left!5956 (left!5956 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))))) tp!206649 (inv!9488 (right!6286 (left!5956 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))))) tp!206651))))

(declare-fun b!689694 () Bool)

(declare-fun e!433457 () Bool)

(declare-fun tp!206650 () Bool)

(assert (=> b!689694 (= e!433457 tp!206650)))

(declare-fun b!689693 () Bool)

(assert (=> b!689693 (= e!433458 (and (inv!9493 (xs!5265 (left!5956 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))))) e!433457))))

(assert (=> b!689198 (= tp!206456 (and (inv!9488 (left!5956 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))) e!433458))))

(assert (= (and b!689198 ((_ is Node!2616) (left!5956 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))))) b!689692))

(assert (= b!689693 b!689694))

(assert (= (and b!689198 ((_ is Leaf!3881) (left!5956 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))))) b!689693))

(declare-fun m!946321 () Bool)

(assert (=> b!689692 m!946321))

(declare-fun m!946323 () Bool)

(assert (=> b!689692 m!946323))

(declare-fun m!946325 () Bool)

(assert (=> b!689693 m!946325))

(assert (=> b!689198 m!945738))

(declare-fun tp!206652 () Bool)

(declare-fun e!433460 () Bool)

(declare-fun b!689695 () Bool)

(declare-fun tp!206654 () Bool)

(assert (=> b!689695 (= e!433460 (and (inv!9488 (left!5956 (right!6286 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))))) tp!206652 (inv!9488 (right!6286 (right!6286 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))))) tp!206654))))

(declare-fun b!689697 () Bool)

(declare-fun e!433459 () Bool)

(declare-fun tp!206653 () Bool)

(assert (=> b!689697 (= e!433459 tp!206653)))

(declare-fun b!689696 () Bool)

(assert (=> b!689696 (= e!433460 (and (inv!9493 (xs!5265 (right!6286 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))))) e!433459))))

(assert (=> b!689198 (= tp!206458 (and (inv!9488 (right!6286 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))) e!433460))))

(assert (= (and b!689198 ((_ is Node!2616) (right!6286 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))))) b!689695))

(assert (= b!689696 b!689697))

(assert (= (and b!689198 ((_ is Leaf!3881) (right!6286 (c!121420 (totalInput!1789 cacheFindLongestMatch!59))))) b!689696))

(declare-fun m!946327 () Bool)

(assert (=> b!689695 m!946327))

(declare-fun m!946329 () Bool)

(assert (=> b!689695 m!946329))

(declare-fun m!946331 () Bool)

(assert (=> b!689696 m!946331))

(assert (=> b!689198 m!945740))

(declare-fun b!689701 () Bool)

(declare-fun e!433461 () Bool)

(declare-fun tp!206657 () Bool)

(declare-fun tp!206658 () Bool)

(assert (=> b!689701 (= e!433461 (and tp!206657 tp!206658))))

(declare-fun b!689700 () Bool)

(declare-fun tp!206655 () Bool)

(assert (=> b!689700 (= e!433461 tp!206655)))

(assert (=> b!689214 (= tp!206471 e!433461)))

(declare-fun b!689698 () Bool)

(assert (=> b!689698 (= e!433461 tp_is_empty!3641)))

(declare-fun b!689699 () Bool)

(declare-fun tp!206659 () Bool)

(declare-fun tp!206656 () Bool)

(assert (=> b!689699 (= e!433461 (and tp!206659 tp!206656))))

(assert (= (and b!689214 ((_ is ElementMatch!1823) (regOne!4159 (regex!1486 (h!12787 rules!1357))))) b!689698))

(assert (= (and b!689214 ((_ is Concat!3353) (regOne!4159 (regex!1486 (h!12787 rules!1357))))) b!689699))

(assert (= (and b!689214 ((_ is Star!1823) (regOne!4159 (regex!1486 (h!12787 rules!1357))))) b!689700))

(assert (= (and b!689214 ((_ is Union!1823) (regOne!4159 (regex!1486 (h!12787 rules!1357))))) b!689701))

(declare-fun b!689705 () Bool)

(declare-fun e!433462 () Bool)

(declare-fun tp!206662 () Bool)

(declare-fun tp!206663 () Bool)

(assert (=> b!689705 (= e!433462 (and tp!206662 tp!206663))))

(declare-fun b!689704 () Bool)

(declare-fun tp!206660 () Bool)

(assert (=> b!689704 (= e!433462 tp!206660)))

(assert (=> b!689214 (= tp!206472 e!433462)))

(declare-fun b!689702 () Bool)

(assert (=> b!689702 (= e!433462 tp_is_empty!3641)))

(declare-fun b!689703 () Bool)

(declare-fun tp!206664 () Bool)

(declare-fun tp!206661 () Bool)

(assert (=> b!689703 (= e!433462 (and tp!206664 tp!206661))))

(assert (= (and b!689214 ((_ is ElementMatch!1823) (regTwo!4159 (regex!1486 (h!12787 rules!1357))))) b!689702))

(assert (= (and b!689214 ((_ is Concat!3353) (regTwo!4159 (regex!1486 (h!12787 rules!1357))))) b!689703))

(assert (= (and b!689214 ((_ is Star!1823) (regTwo!4159 (regex!1486 (h!12787 rules!1357))))) b!689704))

(assert (= (and b!689214 ((_ is Union!1823) (regTwo!4159 (regex!1486 (h!12787 rules!1357))))) b!689705))

(declare-fun b!689706 () Bool)

(declare-fun e!433463 () Bool)

(declare-fun tp!206665 () Bool)

(declare-fun tp!206666 () Bool)

(assert (=> b!689706 (= e!433463 (and tp!206665 tp!206666))))

(assert (=> b!689152 (= tp!206394 e!433463)))

(assert (= (and b!689152 ((_ is Cons!7381) (exprs!733 setElem!3620))) b!689706))

(declare-fun b!689708 () Bool)

(declare-fun e!433465 () Bool)

(declare-fun tp!206667 () Bool)

(assert (=> b!689708 (= e!433465 tp!206667)))

(declare-fun b!689707 () Bool)

(declare-fun e!433464 () Bool)

(declare-fun setRes!3664 () Bool)

(declare-fun tp!206668 () Bool)

(assert (=> b!689707 (= e!433464 (and setRes!3664 tp!206668))))

(declare-fun condSetEmpty!3664 () Bool)

(assert (=> b!689707 (= condSetEmpty!3664 (= (_1!4271 (_1!4272 (h!12784 (t!87208 mapValue!2977)))) ((as const (Array Context!466 Bool)) false)))))

(declare-fun setIsEmpty!3664 () Bool)

(assert (=> setIsEmpty!3664 setRes!3664))

(assert (=> b!689244 (= tp!206514 e!433464)))

(declare-fun setElem!3664 () Context!466)

(declare-fun setNonEmpty!3664 () Bool)

(declare-fun tp!206669 () Bool)

(assert (=> setNonEmpty!3664 (= setRes!3664 (and tp!206669 (inv!9492 setElem!3664) e!433465))))

(declare-fun setRest!3664 () (InoxSet Context!466))

(assert (=> setNonEmpty!3664 (= (_1!4271 (_1!4272 (h!12784 (t!87208 mapValue!2977)))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3664 true) setRest!3664))))

(assert (= (and b!689707 condSetEmpty!3664) setIsEmpty!3664))

(assert (= (and b!689707 (not condSetEmpty!3664)) setNonEmpty!3664))

(assert (= setNonEmpty!3664 b!689708))

(assert (= (and b!689244 ((_ is Cons!7383) (t!87208 mapValue!2977))) b!689707))

(declare-fun m!946333 () Bool)

(assert (=> setNonEmpty!3664 m!946333))

(declare-fun condSetEmpty!3665 () Bool)

(assert (=> setNonEmpty!3635 (= condSetEmpty!3665 (= setRest!3635 ((as const (Array Context!466 Bool)) false)))))

(declare-fun setRes!3665 () Bool)

(assert (=> setNonEmpty!3635 (= tp!206492 setRes!3665)))

(declare-fun setIsEmpty!3665 () Bool)

(assert (=> setIsEmpty!3665 setRes!3665))

(declare-fun tp!206671 () Bool)

(declare-fun setNonEmpty!3665 () Bool)

(declare-fun setElem!3665 () Context!466)

(declare-fun e!433466 () Bool)

(assert (=> setNonEmpty!3665 (= setRes!3665 (and tp!206671 (inv!9492 setElem!3665) e!433466))))

(declare-fun setRest!3665 () (InoxSet Context!466))

(assert (=> setNonEmpty!3665 (= setRest!3635 ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3665 true) setRest!3665))))

(declare-fun b!689709 () Bool)

(declare-fun tp!206670 () Bool)

(assert (=> b!689709 (= e!433466 tp!206670)))

(assert (= (and setNonEmpty!3635 condSetEmpty!3665) setIsEmpty!3665))

(assert (= (and setNonEmpty!3635 (not condSetEmpty!3665)) setNonEmpty!3665))

(assert (= setNonEmpty!3665 b!689709))

(declare-fun m!946335 () Bool)

(assert (=> setNonEmpty!3665 m!946335))

(declare-fun b!689710 () Bool)

(declare-fun e!433467 () Bool)

(declare-fun tp!206672 () Bool)

(assert (=> b!689710 (= e!433467 (and tp_is_empty!3641 tp!206672))))

(assert (=> b!689200 (= tp!206457 e!433467)))

(assert (= (and b!689200 ((_ is Cons!7382) (innerList!2674 (xs!5265 (c!121420 (totalInput!1789 cacheFindLongestMatch!59)))))) b!689710))

(declare-fun b!689714 () Bool)

(declare-fun e!433468 () Bool)

(declare-fun tp!206675 () Bool)

(declare-fun tp!206676 () Bool)

(assert (=> b!689714 (= e!433468 (and tp!206675 tp!206676))))

(declare-fun b!689713 () Bool)

(declare-fun tp!206673 () Bool)

(assert (=> b!689713 (= e!433468 tp!206673)))

(assert (=> b!689176 (= tp!206430 e!433468)))

(declare-fun b!689711 () Bool)

(assert (=> b!689711 (= e!433468 tp_is_empty!3641)))

(declare-fun b!689712 () Bool)

(declare-fun tp!206677 () Bool)

(declare-fun tp!206674 () Bool)

(assert (=> b!689712 (= e!433468 (and tp!206677 tp!206674))))

(assert (= (and b!689176 ((_ is ElementMatch!1823) (_1!4274 (_1!4275 (h!12788 mapDefault!2974))))) b!689711))

(assert (= (and b!689176 ((_ is Concat!3353) (_1!4274 (_1!4275 (h!12788 mapDefault!2974))))) b!689712))

(assert (= (and b!689176 ((_ is Star!1823) (_1!4274 (_1!4275 (h!12788 mapDefault!2974))))) b!689713))

(assert (= (and b!689176 ((_ is Union!1823) (_1!4274 (_1!4275 (h!12788 mapDefault!2974))))) b!689714))

(declare-fun e!433469 () Bool)

(declare-fun setElem!3666 () Context!466)

(declare-fun setRes!3666 () Bool)

(declare-fun tp!206682 () Bool)

(declare-fun setNonEmpty!3666 () Bool)

(assert (=> setNonEmpty!3666 (= setRes!3666 (and tp!206682 (inv!9492 setElem!3666) e!433469))))

(declare-fun setRest!3666 () (InoxSet Context!466))

(assert (=> setNonEmpty!3666 (= (_2!4275 (h!12788 (t!87212 mapDefault!2974))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3666 true) setRest!3666))))

(declare-fun b!689715 () Bool)

(declare-fun e!433470 () Bool)

(declare-fun tp!206681 () Bool)

(assert (=> b!689715 (= e!433470 tp!206681)))

(declare-fun b!689716 () Bool)

(declare-fun tp!206679 () Bool)

(assert (=> b!689716 (= e!433469 tp!206679)))

(declare-fun e!433471 () Bool)

(assert (=> b!689176 (= tp!206431 e!433471)))

(declare-fun setIsEmpty!3666 () Bool)

(assert (=> setIsEmpty!3666 setRes!3666))

(declare-fun tp!206680 () Bool)

(declare-fun tp!206678 () Bool)

(declare-fun b!689717 () Bool)

(assert (=> b!689717 (= e!433471 (and tp!206678 (inv!9492 (_2!4274 (_1!4275 (h!12788 (t!87212 mapDefault!2974))))) e!433470 tp_is_empty!3641 setRes!3666 tp!206680))))

(declare-fun condSetEmpty!3666 () Bool)

(assert (=> b!689717 (= condSetEmpty!3666 (= (_2!4275 (h!12788 (t!87212 mapDefault!2974))) ((as const (Array Context!466 Bool)) false)))))

(assert (= b!689717 b!689715))

(assert (= (and b!689717 condSetEmpty!3666) setIsEmpty!3666))

(assert (= (and b!689717 (not condSetEmpty!3666)) setNonEmpty!3666))

(assert (= setNonEmpty!3666 b!689716))

(assert (= (and b!689176 ((_ is Cons!7387) (t!87212 mapDefault!2974))) b!689717))

(declare-fun m!946337 () Bool)

(assert (=> setNonEmpty!3666 m!946337))

(declare-fun m!946339 () Bool)

(assert (=> b!689717 m!946339))

(declare-fun setRes!3667 () Bool)

(declare-fun e!433473 () Bool)

(declare-fun setElem!3667 () Context!466)

(declare-fun setNonEmpty!3667 () Bool)

(declare-fun tp!206685 () Bool)

(assert (=> setNonEmpty!3667 (= setRes!3667 (and tp!206685 (inv!9492 setElem!3667) e!433473))))

(declare-fun setRest!3667 () (InoxSet Context!466))

(assert (=> setNonEmpty!3667 (= (_2!4277 (h!12789 (t!87213 mapValue!2971))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3667 true) setRest!3667))))

(declare-fun setIsEmpty!3667 () Bool)

(assert (=> setIsEmpty!3667 setRes!3667))

(declare-fun e!433474 () Bool)

(assert (=> b!689153 (= tp!206399 e!433474)))

(declare-fun b!689718 () Bool)

(declare-fun e!433472 () Bool)

(declare-fun tp!206686 () Bool)

(assert (=> b!689718 (= e!433474 (and (inv!9492 (_1!4276 (_1!4277 (h!12789 (t!87213 mapValue!2971))))) e!433472 tp_is_empty!3641 setRes!3667 tp!206686))))

(declare-fun condSetEmpty!3667 () Bool)

(assert (=> b!689718 (= condSetEmpty!3667 (= (_2!4277 (h!12789 (t!87213 mapValue!2971))) ((as const (Array Context!466 Bool)) false)))))

(declare-fun b!689719 () Bool)

(declare-fun tp!206684 () Bool)

(assert (=> b!689719 (= e!433473 tp!206684)))

(declare-fun b!689720 () Bool)

(declare-fun tp!206683 () Bool)

(assert (=> b!689720 (= e!433472 tp!206683)))

(assert (= b!689718 b!689720))

(assert (= (and b!689718 condSetEmpty!3667) setIsEmpty!3667))

(assert (= (and b!689718 (not condSetEmpty!3667)) setNonEmpty!3667))

(assert (= setNonEmpty!3667 b!689719))

(assert (= (and b!689153 ((_ is Cons!7388) (t!87213 mapValue!2971))) b!689718))

(declare-fun m!946341 () Bool)

(assert (=> setNonEmpty!3667 m!946341))

(declare-fun m!946343 () Bool)

(assert (=> b!689718 m!946343))

(declare-fun b!689721 () Bool)

(declare-fun e!433475 () Bool)

(declare-fun tp!206687 () Bool)

(declare-fun tp!206688 () Bool)

(assert (=> b!689721 (= e!433475 (and tp!206687 tp!206688))))

(assert (=> b!689178 (= tp!206427 e!433475)))

(assert (= (and b!689178 ((_ is Cons!7381) (exprs!733 setElem!3627))) b!689721))

(declare-fun b!689723 () Bool)

(declare-fun e!433477 () Bool)

(declare-fun tp!206689 () Bool)

(assert (=> b!689723 (= e!433477 tp!206689)))

(declare-fun b!689722 () Bool)

(declare-fun e!433476 () Bool)

(declare-fun setRes!3668 () Bool)

(declare-fun tp!206690 () Bool)

(assert (=> b!689722 (= e!433476 (and setRes!3668 tp!206690))))

(declare-fun condSetEmpty!3668 () Bool)

(assert (=> b!689722 (= condSetEmpty!3668 (= (_1!4271 (_1!4272 (h!12784 (t!87208 mapDefault!2966)))) ((as const (Array Context!466 Bool)) false)))))

(declare-fun setIsEmpty!3668 () Bool)

(assert (=> setIsEmpty!3668 setRes!3668))

(assert (=> b!689250 (= tp!206524 e!433476)))

(declare-fun setElem!3668 () Context!466)

(declare-fun tp!206691 () Bool)

(declare-fun setNonEmpty!3668 () Bool)

(assert (=> setNonEmpty!3668 (= setRes!3668 (and tp!206691 (inv!9492 setElem!3668) e!433477))))

(declare-fun setRest!3668 () (InoxSet Context!466))

(assert (=> setNonEmpty!3668 (= (_1!4271 (_1!4272 (h!12784 (t!87208 mapDefault!2966)))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3668 true) setRest!3668))))

(assert (= (and b!689722 condSetEmpty!3668) setIsEmpty!3668))

(assert (= (and b!689722 (not condSetEmpty!3668)) setNonEmpty!3668))

(assert (= setNonEmpty!3668 b!689723))

(assert (= (and b!689250 ((_ is Cons!7383) (t!87208 mapDefault!2966))) b!689722))

(declare-fun m!946345 () Bool)

(assert (=> setNonEmpty!3668 m!946345))

(declare-fun setRes!3669 () Bool)

(declare-fun tp!206694 () Bool)

(declare-fun setElem!3669 () Context!466)

(declare-fun e!433479 () Bool)

(declare-fun setNonEmpty!3669 () Bool)

(assert (=> setNonEmpty!3669 (= setRes!3669 (and tp!206694 (inv!9492 setElem!3669) e!433479))))

(declare-fun setRest!3669 () (InoxSet Context!466))

(assert (=> setNonEmpty!3669 (= (_2!4277 (h!12789 (t!87213 mapDefault!2971))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3669 true) setRest!3669))))

(declare-fun setIsEmpty!3669 () Bool)

(assert (=> setIsEmpty!3669 setRes!3669))

(declare-fun e!433480 () Bool)

(assert (=> b!689154 (= tp!206395 e!433480)))

(declare-fun tp!206695 () Bool)

(declare-fun b!689724 () Bool)

(declare-fun e!433478 () Bool)

(assert (=> b!689724 (= e!433480 (and (inv!9492 (_1!4276 (_1!4277 (h!12789 (t!87213 mapDefault!2971))))) e!433478 tp_is_empty!3641 setRes!3669 tp!206695))))

(declare-fun condSetEmpty!3669 () Bool)

(assert (=> b!689724 (= condSetEmpty!3669 (= (_2!4277 (h!12789 (t!87213 mapDefault!2971))) ((as const (Array Context!466 Bool)) false)))))

(declare-fun b!689725 () Bool)

(declare-fun tp!206693 () Bool)

(assert (=> b!689725 (= e!433479 tp!206693)))

(declare-fun b!689726 () Bool)

(declare-fun tp!206692 () Bool)

(assert (=> b!689726 (= e!433478 tp!206692)))

(assert (= b!689724 b!689726))

(assert (= (and b!689724 condSetEmpty!3669) setIsEmpty!3669))

(assert (= (and b!689724 (not condSetEmpty!3669)) setNonEmpty!3669))

(assert (= setNonEmpty!3669 b!689725))

(assert (= (and b!689154 ((_ is Cons!7388) (t!87213 mapDefault!2971))) b!689724))

(declare-fun m!946347 () Bool)

(assert (=> setNonEmpty!3669 m!946347))

(declare-fun m!946349 () Bool)

(assert (=> b!689724 m!946349))

(declare-fun condSetEmpty!3670 () Bool)

(assert (=> setNonEmpty!3630 (= condSetEmpty!3670 (= setRest!3630 ((as const (Array Context!466 Bool)) false)))))

(declare-fun setRes!3670 () Bool)

(assert (=> setNonEmpty!3630 (= tp!206448 setRes!3670)))

(declare-fun setIsEmpty!3670 () Bool)

(assert (=> setIsEmpty!3670 setRes!3670))

(declare-fun tp!206697 () Bool)

(declare-fun e!433481 () Bool)

(declare-fun setNonEmpty!3670 () Bool)

(declare-fun setElem!3670 () Context!466)

(assert (=> setNonEmpty!3670 (= setRes!3670 (and tp!206697 (inv!9492 setElem!3670) e!433481))))

(declare-fun setRest!3670 () (InoxSet Context!466))

(assert (=> setNonEmpty!3670 (= setRest!3630 ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3670 true) setRest!3670))))

(declare-fun b!689727 () Bool)

(declare-fun tp!206696 () Bool)

(assert (=> b!689727 (= e!433481 tp!206696)))

(assert (= (and setNonEmpty!3630 condSetEmpty!3670) setIsEmpty!3670))

(assert (= (and setNonEmpty!3630 (not condSetEmpty!3670)) setNonEmpty!3670))

(assert (= setNonEmpty!3670 b!689727))

(declare-fun m!946351 () Bool)

(assert (=> setNonEmpty!3670 m!946351))

(declare-fun b!689728 () Bool)

(declare-fun e!433482 () Bool)

(declare-fun tp!206698 () Bool)

(declare-fun tp!206699 () Bool)

(assert (=> b!689728 (= e!433482 (and tp!206698 tp!206699))))

(assert (=> b!689180 (= tp!206432 e!433482)))

(assert (= (and b!689180 ((_ is Cons!7381) (exprs!733 (_2!4274 (_1!4275 (h!12788 mapValue!2974)))))) b!689728))

(declare-fun condSetEmpty!3671 () Bool)

(assert (=> setNonEmpty!3644 (= condSetEmpty!3671 (= setRest!3644 ((as const (Array Context!466 Bool)) false)))))

(declare-fun setRes!3671 () Bool)

(assert (=> setNonEmpty!3644 (= tp!206525 setRes!3671)))

(declare-fun setIsEmpty!3671 () Bool)

(assert (=> setIsEmpty!3671 setRes!3671))

(declare-fun setNonEmpty!3671 () Bool)

(declare-fun tp!206701 () Bool)

(declare-fun setElem!3671 () Context!466)

(declare-fun e!433483 () Bool)

(assert (=> setNonEmpty!3671 (= setRes!3671 (and tp!206701 (inv!9492 setElem!3671) e!433483))))

(declare-fun setRest!3671 () (InoxSet Context!466))

(assert (=> setNonEmpty!3671 (= setRest!3644 ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3671 true) setRest!3671))))

(declare-fun b!689729 () Bool)

(declare-fun tp!206700 () Bool)

(assert (=> b!689729 (= e!433483 tp!206700)))

(assert (= (and setNonEmpty!3644 condSetEmpty!3671) setIsEmpty!3671))

(assert (= (and setNonEmpty!3644 (not condSetEmpty!3671)) setNonEmpty!3671))

(assert (= setNonEmpty!3671 b!689729))

(declare-fun m!946353 () Bool)

(assert (=> setNonEmpty!3671 m!946353))

(declare-fun b!689730 () Bool)

(declare-fun e!433484 () Bool)

(declare-fun tp!206705 () Bool)

(assert (=> b!689730 (= e!433484 tp!206705)))

(declare-fun setNonEmpty!3672 () Bool)

(declare-fun setElem!3672 () Context!466)

(declare-fun setRes!3672 () Bool)

(declare-fun tp!206702 () Bool)

(declare-fun e!433485 () Bool)

(assert (=> setNonEmpty!3672 (= setRes!3672 (and tp!206702 (inv!9492 setElem!3672) e!433485))))

(declare-fun mapValue!2978 () List!7402)

(declare-fun setRest!3673 () (InoxSet Context!466))

(assert (=> setNonEmpty!3672 (= (_2!4277 (h!12789 mapValue!2978)) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3672 true) setRest!3673))))

(declare-fun e!433487 () Bool)

(declare-fun e!433489 () Bool)

(declare-fun b!689731 () Bool)

(declare-fun tp!206710 () Bool)

(assert (=> b!689731 (= e!433489 (and (inv!9492 (_1!4276 (_1!4277 (h!12789 mapValue!2978)))) e!433487 tp_is_empty!3641 setRes!3672 tp!206710))))

(declare-fun condSetEmpty!3673 () Bool)

(assert (=> b!689731 (= condSetEmpty!3673 (= (_2!4277 (h!12789 mapValue!2978)) ((as const (Array Context!466 Bool)) false)))))

(declare-fun setIsEmpty!3672 () Bool)

(assert (=> setIsEmpty!3672 setRes!3672))

(declare-fun e!433486 () Bool)

(declare-fun b!689732 () Bool)

(declare-fun setRes!3673 () Bool)

(declare-fun tp!206706 () Bool)

(declare-fun e!433488 () Bool)

(declare-fun mapDefault!2978 () List!7402)

(assert (=> b!689732 (= e!433488 (and (inv!9492 (_1!4276 (_1!4277 (h!12789 mapDefault!2978)))) e!433486 tp_is_empty!3641 setRes!3673 tp!206706))))

(declare-fun condSetEmpty!3672 () Bool)

(assert (=> b!689732 (= condSetEmpty!3672 (= (_2!4277 (h!12789 mapDefault!2978)) ((as const (Array Context!466 Bool)) false)))))

(declare-fun b!689733 () Bool)

(declare-fun tp!206704 () Bool)

(assert (=> b!689733 (= e!433487 tp!206704)))

(declare-fun mapNonEmpty!2978 () Bool)

(declare-fun mapRes!2978 () Bool)

(declare-fun tp!206707 () Bool)

(assert (=> mapNonEmpty!2978 (= mapRes!2978 (and tp!206707 e!433489))))

(declare-fun mapRest!2978 () (Array (_ BitVec 32) List!7402))

(declare-fun mapKey!2978 () (_ BitVec 32))

(assert (=> mapNonEmpty!2978 (= mapRest!2971 (store mapRest!2978 mapKey!2978 mapValue!2978))))

(declare-fun setIsEmpty!3673 () Bool)

(assert (=> setIsEmpty!3673 setRes!3673))

(declare-fun condMapEmpty!2978 () Bool)

(assert (=> mapNonEmpty!2971 (= condMapEmpty!2978 (= mapRest!2971 ((as const (Array (_ BitVec 32) List!7402)) mapDefault!2978)))))

(assert (=> mapNonEmpty!2971 (= tp!206396 (and e!433488 mapRes!2978))))

(declare-fun b!689734 () Bool)

(declare-fun tp!206709 () Bool)

(assert (=> b!689734 (= e!433485 tp!206709)))

(declare-fun mapIsEmpty!2978 () Bool)

(assert (=> mapIsEmpty!2978 mapRes!2978))

(declare-fun b!689735 () Bool)

(declare-fun tp!206703 () Bool)

(assert (=> b!689735 (= e!433486 tp!206703)))

(declare-fun setElem!3673 () Context!466)

(declare-fun tp!206708 () Bool)

(declare-fun setNonEmpty!3673 () Bool)

(assert (=> setNonEmpty!3673 (= setRes!3673 (and tp!206708 (inv!9492 setElem!3673) e!433484))))

(declare-fun setRest!3672 () (InoxSet Context!466))

(assert (=> setNonEmpty!3673 (= (_2!4277 (h!12789 mapDefault!2978)) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3673 true) setRest!3672))))

(assert (= (and mapNonEmpty!2971 condMapEmpty!2978) mapIsEmpty!2978))

(assert (= (and mapNonEmpty!2971 (not condMapEmpty!2978)) mapNonEmpty!2978))

(assert (= b!689731 b!689733))

(assert (= (and b!689731 condSetEmpty!3673) setIsEmpty!3672))

(assert (= (and b!689731 (not condSetEmpty!3673)) setNonEmpty!3672))

(assert (= setNonEmpty!3672 b!689734))

(assert (= (and mapNonEmpty!2978 ((_ is Cons!7388) mapValue!2978)) b!689731))

(assert (= b!689732 b!689735))

(assert (= (and b!689732 condSetEmpty!3672) setIsEmpty!3673))

(assert (= (and b!689732 (not condSetEmpty!3672)) setNonEmpty!3673))

(assert (= setNonEmpty!3673 b!689730))

(assert (= (and mapNonEmpty!2971 ((_ is Cons!7388) mapDefault!2978)) b!689732))

(declare-fun m!946355 () Bool)

(assert (=> mapNonEmpty!2978 m!946355))

(declare-fun m!946357 () Bool)

(assert (=> setNonEmpty!3673 m!946357))

(declare-fun m!946359 () Bool)

(assert (=> b!689732 m!946359))

(declare-fun m!946361 () Bool)

(assert (=> setNonEmpty!3672 m!946361))

(declare-fun m!946363 () Bool)

(assert (=> b!689731 m!946363))

(declare-fun tp!206713 () Bool)

(declare-fun setRes!3674 () Bool)

(declare-fun setElem!3674 () Context!466)

(declare-fun setNonEmpty!3674 () Bool)

(declare-fun e!433491 () Bool)

(assert (=> setNonEmpty!3674 (= setRes!3674 (and tp!206713 (inv!9492 setElem!3674) e!433491))))

(declare-fun setRest!3674 () (InoxSet Context!466))

(assert (=> setNonEmpty!3674 (= (_2!4277 (h!12789 (t!87213 (zeroValue!998 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457))))))))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3674 true) setRest!3674))))

(declare-fun setIsEmpty!3674 () Bool)

(assert (=> setIsEmpty!3674 setRes!3674))

(declare-fun e!433492 () Bool)

(assert (=> b!689184 (= tp!206445 e!433492)))

(declare-fun tp!206714 () Bool)

(declare-fun e!433490 () Bool)

(declare-fun b!689736 () Bool)

(assert (=> b!689736 (= e!433492 (and (inv!9492 (_1!4276 (_1!4277 (h!12789 (t!87213 (zeroValue!998 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457))))))))))) e!433490 tp_is_empty!3641 setRes!3674 tp!206714))))

(declare-fun condSetEmpty!3674 () Bool)

(assert (=> b!689736 (= condSetEmpty!3674 (= (_2!4277 (h!12789 (t!87213 (zeroValue!998 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457))))))))) ((as const (Array Context!466 Bool)) false)))))

(declare-fun b!689737 () Bool)

(declare-fun tp!206712 () Bool)

(assert (=> b!689737 (= e!433491 tp!206712)))

(declare-fun b!689738 () Bool)

(declare-fun tp!206711 () Bool)

(assert (=> b!689738 (= e!433490 tp!206711)))

(assert (= b!689736 b!689738))

(assert (= (and b!689736 condSetEmpty!3674) setIsEmpty!3674))

(assert (= (and b!689736 (not condSetEmpty!3674)) setNonEmpty!3674))

(assert (= setNonEmpty!3674 b!689737))

(assert (= (and b!689184 ((_ is Cons!7388) (t!87213 (zeroValue!998 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457))))))))) b!689736))

(declare-fun m!946365 () Bool)

(assert (=> setNonEmpty!3674 m!946365))

(declare-fun m!946367 () Bool)

(assert (=> b!689736 m!946367))

(declare-fun condSetEmpty!3675 () Bool)

(assert (=> setNonEmpty!3628 (= condSetEmpty!3675 (= setRest!3628 ((as const (Array Context!466 Bool)) false)))))

(declare-fun setRes!3675 () Bool)

(assert (=> setNonEmpty!3628 (= tp!206441 setRes!3675)))

(declare-fun setIsEmpty!3675 () Bool)

(assert (=> setIsEmpty!3675 setRes!3675))

(declare-fun tp!206716 () Bool)

(declare-fun setElem!3675 () Context!466)

(declare-fun setNonEmpty!3675 () Bool)

(declare-fun e!433493 () Bool)

(assert (=> setNonEmpty!3675 (= setRes!3675 (and tp!206716 (inv!9492 setElem!3675) e!433493))))

(declare-fun setRest!3675 () (InoxSet Context!466))

(assert (=> setNonEmpty!3675 (= setRest!3628 ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3675 true) setRest!3675))))

(declare-fun b!689739 () Bool)

(declare-fun tp!206715 () Bool)

(assert (=> b!689739 (= e!433493 tp!206715)))

(assert (= (and setNonEmpty!3628 condSetEmpty!3675) setIsEmpty!3675))

(assert (= (and setNonEmpty!3628 (not condSetEmpty!3675)) setNonEmpty!3675))

(assert (= setNonEmpty!3675 b!689739))

(declare-fun m!946369 () Bool)

(assert (=> setNonEmpty!3675 m!946369))

(declare-fun b!689740 () Bool)

(declare-fun e!433494 () Bool)

(declare-fun tp!206717 () Bool)

(declare-fun tp!206718 () Bool)

(assert (=> b!689740 (= e!433494 (and tp!206717 tp!206718))))

(assert (=> b!689156 (= tp!206398 e!433494)))

(assert (= (and b!689156 ((_ is Cons!7381) (exprs!733 setElem!3619))) b!689740))

(declare-fun b!689741 () Bool)

(declare-fun e!433495 () Bool)

(declare-fun tp!206719 () Bool)

(declare-fun tp!206720 () Bool)

(assert (=> b!689741 (= e!433495 (and tp!206719 tp!206720))))

(assert (=> b!689185 (= tp!206443 e!433495)))

(assert (= (and b!689185 ((_ is Cons!7381) (exprs!733 setElem!3629))) b!689741))

(declare-fun b!689742 () Bool)

(declare-fun e!433496 () Bool)

(declare-fun tp!206721 () Bool)

(declare-fun tp!206722 () Bool)

(assert (=> b!689742 (= e!433496 (and tp!206721 tp!206722))))

(assert (=> b!689189 (= tp!206446 e!433496)))

(assert (= (and b!689189 ((_ is Cons!7381) (exprs!733 (_1!4276 (_1!4277 (h!12789 (minValue!998 (v!17597 (underlying!1665 (v!17598 (underlying!1666 (cache!1100 cacheUp!457)))))))))))) b!689742))

(declare-fun b!689743 () Bool)

(declare-fun e!433497 () Bool)

(declare-fun tp!206723 () Bool)

(declare-fun tp!206724 () Bool)

(assert (=> b!689743 (= e!433497 (and tp!206723 tp!206724))))

(assert (=> b!689182 (= tp!206438 e!433497)))

(assert (= (and b!689182 ((_ is Cons!7381) (exprs!733 setElem!3628))) b!689743))

(declare-fun b!689744 () Bool)

(declare-fun e!433498 () Bool)

(declare-fun tp!206725 () Bool)

(declare-fun tp!206726 () Bool)

(assert (=> b!689744 (= e!433498 (and tp!206725 tp!206726))))

(assert (=> b!689157 (= tp!206392 e!433498)))

(assert (= (and b!689157 ((_ is Cons!7381) (exprs!733 (_1!4276 (_1!4277 (h!12789 mapDefault!2971)))))) b!689744))

(declare-fun b!689748 () Bool)

(declare-fun e!433499 () Bool)

(declare-fun tp!206729 () Bool)

(declare-fun tp!206730 () Bool)

(assert (=> b!689748 (= e!433499 (and tp!206729 tp!206730))))

(declare-fun b!689747 () Bool)

(declare-fun tp!206727 () Bool)

(assert (=> b!689747 (= e!433499 tp!206727)))

(assert (=> b!689183 (= tp!206437 e!433499)))

(declare-fun b!689745 () Bool)

(assert (=> b!689745 (= e!433499 tp_is_empty!3641)))

(declare-fun b!689746 () Bool)

(declare-fun tp!206731 () Bool)

(declare-fun tp!206728 () Bool)

(assert (=> b!689746 (= e!433499 (and tp!206731 tp!206728))))

(assert (= (and b!689183 ((_ is ElementMatch!1823) (_1!4274 (_1!4275 (h!12788 mapValue!2966))))) b!689745))

(assert (= (and b!689183 ((_ is Concat!3353) (_1!4274 (_1!4275 (h!12788 mapValue!2966))))) b!689746))

(assert (= (and b!689183 ((_ is Star!1823) (_1!4274 (_1!4275 (h!12788 mapValue!2966))))) b!689747))

(assert (= (and b!689183 ((_ is Union!1823) (_1!4274 (_1!4275 (h!12788 mapValue!2966))))) b!689748))

(declare-fun setNonEmpty!3676 () Bool)

(declare-fun tp!206736 () Bool)

(declare-fun setElem!3676 () Context!466)

(declare-fun e!433500 () Bool)

(declare-fun setRes!3676 () Bool)

(assert (=> setNonEmpty!3676 (= setRes!3676 (and tp!206736 (inv!9492 setElem!3676) e!433500))))

(declare-fun setRest!3676 () (InoxSet Context!466))

(assert (=> setNonEmpty!3676 (= (_2!4275 (h!12788 (t!87212 mapValue!2966))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3676 true) setRest!3676))))

(declare-fun b!689749 () Bool)

(declare-fun e!433501 () Bool)

(declare-fun tp!206735 () Bool)

(assert (=> b!689749 (= e!433501 tp!206735)))

(declare-fun b!689750 () Bool)

(declare-fun tp!206733 () Bool)

(assert (=> b!689750 (= e!433500 tp!206733)))

(declare-fun e!433502 () Bool)

(assert (=> b!689183 (= tp!206439 e!433502)))

(declare-fun setIsEmpty!3676 () Bool)

(assert (=> setIsEmpty!3676 setRes!3676))

(declare-fun b!689751 () Bool)

(declare-fun tp!206734 () Bool)

(declare-fun tp!206732 () Bool)

(assert (=> b!689751 (= e!433502 (and tp!206732 (inv!9492 (_2!4274 (_1!4275 (h!12788 (t!87212 mapValue!2966))))) e!433501 tp_is_empty!3641 setRes!3676 tp!206734))))

(declare-fun condSetEmpty!3676 () Bool)

(assert (=> b!689751 (= condSetEmpty!3676 (= (_2!4275 (h!12788 (t!87212 mapValue!2966))) ((as const (Array Context!466 Bool)) false)))))

(assert (= b!689751 b!689749))

(assert (= (and b!689751 condSetEmpty!3676) setIsEmpty!3676))

(assert (= (and b!689751 (not condSetEmpty!3676)) setNonEmpty!3676))

(assert (= setNonEmpty!3676 b!689750))

(assert (= (and b!689183 ((_ is Cons!7387) (t!87212 mapValue!2966))) b!689751))

(declare-fun m!946371 () Bool)

(assert (=> setNonEmpty!3676 m!946371))

(declare-fun m!946373 () Bool)

(assert (=> b!689751 m!946373))

(declare-fun condSetEmpty!3677 () Bool)

(assert (=> setNonEmpty!3614 (= condSetEmpty!3677 (= setRest!3614 ((as const (Array Context!466 Bool)) false)))))

(declare-fun setRes!3677 () Bool)

(assert (=> setNonEmpty!3614 (= tp!206360 setRes!3677)))

(declare-fun setIsEmpty!3677 () Bool)

(assert (=> setIsEmpty!3677 setRes!3677))

(declare-fun setElem!3677 () Context!466)

(declare-fun e!433503 () Bool)

(declare-fun setNonEmpty!3677 () Bool)

(declare-fun tp!206738 () Bool)

(assert (=> setNonEmpty!3677 (= setRes!3677 (and tp!206738 (inv!9492 setElem!3677) e!433503))))

(declare-fun setRest!3677 () (InoxSet Context!466))

(assert (=> setNonEmpty!3677 (= setRest!3614 ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3677 true) setRest!3677))))

(declare-fun b!689752 () Bool)

(declare-fun tp!206737 () Bool)

(assert (=> b!689752 (= e!433503 tp!206737)))

(assert (= (and setNonEmpty!3614 condSetEmpty!3677) setIsEmpty!3677))

(assert (= (and setNonEmpty!3614 (not condSetEmpty!3677)) setNonEmpty!3677))

(assert (= setNonEmpty!3677 b!689752))

(declare-fun m!946375 () Bool)

(assert (=> setNonEmpty!3677 m!946375))

(declare-fun condSetEmpty!3678 () Bool)

(assert (=> setNonEmpty!3621 (= condSetEmpty!3678 (= setRest!3621 ((as const (Array Context!466 Bool)) false)))))

(declare-fun setRes!3678 () Bool)

(assert (=> setNonEmpty!3621 (= tp!206402 setRes!3678)))

(declare-fun setIsEmpty!3678 () Bool)

(assert (=> setIsEmpty!3678 setRes!3678))

(declare-fun tp!206740 () Bool)

(declare-fun setNonEmpty!3678 () Bool)

(declare-fun setElem!3678 () Context!466)

(declare-fun e!433504 () Bool)

(assert (=> setNonEmpty!3678 (= setRes!3678 (and tp!206740 (inv!9492 setElem!3678) e!433504))))

(declare-fun setRest!3678 () (InoxSet Context!466))

(assert (=> setNonEmpty!3678 (= setRest!3621 ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3678 true) setRest!3678))))

(declare-fun b!689753 () Bool)

(declare-fun tp!206739 () Bool)

(assert (=> b!689753 (= e!433504 tp!206739)))

(assert (= (and setNonEmpty!3621 condSetEmpty!3678) setIsEmpty!3678))

(assert (= (and setNonEmpty!3621 (not condSetEmpty!3678)) setNonEmpty!3678))

(assert (= setNonEmpty!3678 b!689753))

(declare-fun m!946377 () Bool)

(assert (=> setNonEmpty!3678 m!946377))

(declare-fun b!689754 () Bool)

(declare-fun e!433505 () Bool)

(declare-fun tp!206741 () Bool)

(declare-fun tp!206742 () Bool)

(assert (=> b!689754 (= e!433505 (and tp!206741 tp!206742))))

(assert (=> b!689218 (= tp!206482 e!433505)))

(assert (= (and b!689218 ((_ is Cons!7381) (exprs!733 (_2!4274 (_1!4275 (h!12788 (minValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470)))))))))))) b!689754))

(declare-fun b!689755 () Bool)

(declare-fun e!433506 () Bool)

(declare-fun tp!206743 () Bool)

(declare-fun tp!206744 () Bool)

(assert (=> b!689755 (= e!433506 (and tp!206743 tp!206744))))

(assert (=> b!689215 (= tp!206477 e!433506)))

(assert (= (and b!689215 ((_ is Cons!7381) (exprs!733 (_2!4274 (_1!4275 (h!12788 (zeroValue!997 (v!17595 (underlying!1663 (v!17596 (underlying!1664 (cache!1099 cacheDown!470)))))))))))) b!689755))

(declare-fun b!689756 () Bool)

(declare-fun e!433507 () Bool)

(declare-fun tp!206745 () Bool)

(declare-fun tp!206746 () Bool)

(assert (=> b!689756 (= e!433507 (and tp!206745 tp!206746))))

(assert (=> b!689125 (= tp!206357 e!433507)))

(assert (= (and b!689125 ((_ is Cons!7381) (exprs!733 setElem!3614))) b!689756))

(declare-fun b!689757 () Bool)

(declare-fun e!433508 () Bool)

(declare-fun tp!206747 () Bool)

(declare-fun tp!206748 () Bool)

(assert (=> b!689757 (= e!433508 (and tp!206747 tp!206748))))

(assert (=> b!689242 (= tp!206511 e!433508)))

(assert (= (and b!689242 ((_ is Cons!7381) (exprs!733 setElem!3642))) b!689757))

(declare-fun condSetEmpty!3679 () Bool)

(assert (=> setNonEmpty!3611 (= condSetEmpty!3679 (= setRest!3611 ((as const (Array Context!466 Bool)) false)))))

(declare-fun setRes!3679 () Bool)

(assert (=> setNonEmpty!3611 (= tp!206344 setRes!3679)))

(declare-fun setIsEmpty!3679 () Bool)

(assert (=> setIsEmpty!3679 setRes!3679))

(declare-fun e!433509 () Bool)

(declare-fun tp!206750 () Bool)

(declare-fun setNonEmpty!3679 () Bool)

(declare-fun setElem!3679 () Context!466)

(assert (=> setNonEmpty!3679 (= setRes!3679 (and tp!206750 (inv!9492 setElem!3679) e!433509))))

(declare-fun setRest!3679 () (InoxSet Context!466))

(assert (=> setNonEmpty!3679 (= setRest!3611 ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3679 true) setRest!3679))))

(declare-fun b!689758 () Bool)

(declare-fun tp!206749 () Bool)

(assert (=> b!689758 (= e!433509 tp!206749)))

(assert (= (and setNonEmpty!3611 condSetEmpty!3679) setIsEmpty!3679))

(assert (= (and setNonEmpty!3611 (not condSetEmpty!3679)) setNonEmpty!3679))

(assert (= setNonEmpty!3679 b!689758))

(declare-fun m!946379 () Bool)

(assert (=> setNonEmpty!3679 m!946379))

(declare-fun b!689762 () Bool)

(declare-fun e!433510 () Bool)

(declare-fun tp!206753 () Bool)

(declare-fun tp!206754 () Bool)

(assert (=> b!689762 (= e!433510 (and tp!206753 tp!206754))))

(declare-fun b!689761 () Bool)

(declare-fun tp!206751 () Bool)

(assert (=> b!689761 (= e!433510 tp!206751)))

(assert (=> b!689136 (= tp!206372 e!433510)))

(declare-fun b!689759 () Bool)

(assert (=> b!689759 (= e!433510 tp_is_empty!3641)))

(declare-fun b!689760 () Bool)

(declare-fun tp!206755 () Bool)

(declare-fun tp!206752 () Bool)

(assert (=> b!689760 (= e!433510 (and tp!206755 tp!206752))))

(assert (= (and b!689136 ((_ is ElementMatch!1823) (regex!1486 (h!12787 (t!87211 rules!1357))))) b!689759))

(assert (= (and b!689136 ((_ is Concat!3353) (regex!1486 (h!12787 (t!87211 rules!1357))))) b!689760))

(assert (= (and b!689136 ((_ is Star!1823) (regex!1486 (h!12787 (t!87211 rules!1357))))) b!689761))

(assert (= (and b!689136 ((_ is Union!1823) (regex!1486 (h!12787 (t!87211 rules!1357))))) b!689762))

(declare-fun b!689766 () Bool)

(declare-fun e!433511 () Bool)

(declare-fun tp!206758 () Bool)

(declare-fun tp!206759 () Bool)

(assert (=> b!689766 (= e!433511 (and tp!206758 tp!206759))))

(declare-fun b!689765 () Bool)

(declare-fun tp!206756 () Bool)

(assert (=> b!689765 (= e!433511 tp!206756)))

(assert (=> b!689126 (= tp!206356 e!433511)))

(declare-fun b!689763 () Bool)

(assert (=> b!689763 (= e!433511 tp_is_empty!3641)))

(declare-fun b!689764 () Bool)

(declare-fun tp!206760 () Bool)

(declare-fun tp!206757 () Bool)

(assert (=> b!689764 (= e!433511 (and tp!206760 tp!206757))))

(assert (= (and b!689126 ((_ is ElementMatch!1823) (_1!4274 (_1!4275 (h!12788 mapDefault!2968))))) b!689763))

(assert (= (and b!689126 ((_ is Concat!3353) (_1!4274 (_1!4275 (h!12788 mapDefault!2968))))) b!689764))

(assert (= (and b!689126 ((_ is Star!1823) (_1!4274 (_1!4275 (h!12788 mapDefault!2968))))) b!689765))

(assert (= (and b!689126 ((_ is Union!1823) (_1!4274 (_1!4275 (h!12788 mapDefault!2968))))) b!689766))

(declare-fun setRes!3680 () Bool)

(declare-fun setNonEmpty!3680 () Bool)

(declare-fun setElem!3680 () Context!466)

(declare-fun tp!206765 () Bool)

(declare-fun e!433512 () Bool)

(assert (=> setNonEmpty!3680 (= setRes!3680 (and tp!206765 (inv!9492 setElem!3680) e!433512))))

(declare-fun setRest!3680 () (InoxSet Context!466))

(assert (=> setNonEmpty!3680 (= (_2!4275 (h!12788 (t!87212 mapDefault!2968))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3680 true) setRest!3680))))

(declare-fun b!689767 () Bool)

(declare-fun e!433513 () Bool)

(declare-fun tp!206764 () Bool)

(assert (=> b!689767 (= e!433513 tp!206764)))

(declare-fun b!689768 () Bool)

(declare-fun tp!206762 () Bool)

(assert (=> b!689768 (= e!433512 tp!206762)))

(declare-fun e!433514 () Bool)

(assert (=> b!689126 (= tp!206358 e!433514)))

(declare-fun setIsEmpty!3680 () Bool)

(assert (=> setIsEmpty!3680 setRes!3680))

(declare-fun tp!206761 () Bool)

(declare-fun b!689769 () Bool)

(declare-fun tp!206763 () Bool)

(assert (=> b!689769 (= e!433514 (and tp!206761 (inv!9492 (_2!4274 (_1!4275 (h!12788 (t!87212 mapDefault!2968))))) e!433513 tp_is_empty!3641 setRes!3680 tp!206763))))

(declare-fun condSetEmpty!3680 () Bool)

(assert (=> b!689769 (= condSetEmpty!3680 (= (_2!4275 (h!12788 (t!87212 mapDefault!2968))) ((as const (Array Context!466 Bool)) false)))))

(assert (= b!689769 b!689767))

(assert (= (and b!689769 condSetEmpty!3680) setIsEmpty!3680))

(assert (= (and b!689769 (not condSetEmpty!3680)) setNonEmpty!3680))

(assert (= setNonEmpty!3680 b!689768))

(assert (= (and b!689126 ((_ is Cons!7387) (t!87212 mapDefault!2968))) b!689769))

(declare-fun m!946381 () Bool)

(assert (=> setNonEmpty!3680 m!946381))

(declare-fun m!946383 () Bool)

(assert (=> b!689769 m!946383))

(declare-fun b!689770 () Bool)

(declare-fun e!433516 () Bool)

(declare-fun tp!206772 () Bool)

(assert (=> b!689770 (= e!433516 tp!206772)))

(declare-fun b!689771 () Bool)

(declare-fun e!433517 () Bool)

(declare-fun tp!206767 () Bool)

(assert (=> b!689771 (= e!433517 tp!206767)))

(declare-fun setIsEmpty!3681 () Bool)

(declare-fun setRes!3682 () Bool)

(assert (=> setIsEmpty!3681 setRes!3682))

(declare-fun b!689772 () Bool)

(declare-fun e!433515 () Bool)

(declare-fun tp!206766 () Bool)

(assert (=> b!689772 (= e!433515 (and setRes!3682 tp!206766))))

(declare-fun condSetEmpty!3681 () Bool)

(declare-fun mapDefault!2979 () List!7397)

(assert (=> b!689772 (= condSetEmpty!3681 (= (_1!4271 (_1!4272 (h!12784 mapDefault!2979))) ((as const (Array Context!466 Bool)) false)))))

(declare-fun setElem!3681 () Context!466)

(declare-fun tp!206771 () Bool)

(declare-fun setNonEmpty!3681 () Bool)

(assert (=> setNonEmpty!3681 (= setRes!3682 (and tp!206771 (inv!9492 setElem!3681) e!433516))))

(declare-fun setRest!3682 () (InoxSet Context!466))

(assert (=> setNonEmpty!3681 (= (_1!4271 (_1!4272 (h!12784 mapDefault!2979))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3681 true) setRest!3682))))

(declare-fun setIsEmpty!3682 () Bool)

(declare-fun setRes!3681 () Bool)

(assert (=> setIsEmpty!3682 setRes!3681))

(declare-fun tp!206768 () Bool)

(declare-fun setNonEmpty!3682 () Bool)

(declare-fun setElem!3682 () Context!466)

(assert (=> setNonEmpty!3682 (= setRes!3681 (and tp!206768 (inv!9492 setElem!3682) e!433517))))

(declare-fun mapValue!2979 () List!7397)

(declare-fun setRest!3681 () (InoxSet Context!466))

(assert (=> setNonEmpty!3682 (= (_1!4271 (_1!4272 (h!12784 mapValue!2979))) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3682 true) setRest!3681))))

(declare-fun condMapEmpty!2979 () Bool)

(assert (=> mapNonEmpty!2977 (= condMapEmpty!2979 (= mapRest!2977 ((as const (Array (_ BitVec 32) List!7397)) mapDefault!2979)))))

(declare-fun mapRes!2979 () Bool)

(assert (=> mapNonEmpty!2977 (= tp!206513 (and e!433515 mapRes!2979))))

(declare-fun mapNonEmpty!2979 () Bool)

(declare-fun tp!206769 () Bool)

(declare-fun e!433518 () Bool)

(assert (=> mapNonEmpty!2979 (= mapRes!2979 (and tp!206769 e!433518))))

(declare-fun mapRest!2979 () (Array (_ BitVec 32) List!7397))

(declare-fun mapKey!2979 () (_ BitVec 32))

(assert (=> mapNonEmpty!2979 (= mapRest!2977 (store mapRest!2979 mapKey!2979 mapValue!2979))))

(declare-fun b!689773 () Bool)

(declare-fun tp!206770 () Bool)

(assert (=> b!689773 (= e!433518 (and setRes!3681 tp!206770))))

(declare-fun condSetEmpty!3682 () Bool)

(assert (=> b!689773 (= condSetEmpty!3682 (= (_1!4271 (_1!4272 (h!12784 mapValue!2979))) ((as const (Array Context!466 Bool)) false)))))

(declare-fun mapIsEmpty!2979 () Bool)

(assert (=> mapIsEmpty!2979 mapRes!2979))

(assert (= (and mapNonEmpty!2977 condMapEmpty!2979) mapIsEmpty!2979))

(assert (= (and mapNonEmpty!2977 (not condMapEmpty!2979)) mapNonEmpty!2979))

(assert (= (and b!689773 condSetEmpty!3682) setIsEmpty!3682))

(assert (= (and b!689773 (not condSetEmpty!3682)) setNonEmpty!3682))

(assert (= setNonEmpty!3682 b!689771))

(assert (= (and mapNonEmpty!2979 ((_ is Cons!7383) mapValue!2979)) b!689773))

(assert (= (and b!689772 condSetEmpty!3681) setIsEmpty!3681))

(assert (= (and b!689772 (not condSetEmpty!3681)) setNonEmpty!3681))

(assert (= setNonEmpty!3681 b!689770))

(assert (= (and mapNonEmpty!2977 ((_ is Cons!7383) mapDefault!2979)) b!689772))

(declare-fun m!946385 () Bool)

(assert (=> setNonEmpty!3681 m!946385))

(declare-fun m!946387 () Bool)

(assert (=> setNonEmpty!3682 m!946387))

(declare-fun m!946389 () Bool)

(assert (=> mapNonEmpty!2979 m!946389))

(declare-fun b!689774 () Bool)

(declare-fun e!433519 () Bool)

(declare-fun tp!206773 () Bool)

(declare-fun tp!206774 () Bool)

(assert (=> b!689774 (= e!433519 (and tp!206773 tp!206774))))

(assert (=> b!689230 (= tp!206493 e!433519)))

(assert (= (and b!689230 ((_ is Cons!7381) (exprs!733 setElem!3636))) b!689774))

(declare-fun b!689775 () Bool)

(declare-fun e!433520 () Bool)

(declare-fun tp!206775 () Bool)

(declare-fun tp!206776 () Bool)

(assert (=> b!689775 (= e!433520 (and tp!206775 tp!206776))))

(assert (=> b!689160 (= tp!206400 e!433520)))

(assert (= (and b!689160 ((_ is Cons!7381) (exprs!733 (_1!4276 (_1!4277 (h!12789 mapValue!2968)))))) b!689775))

(declare-fun condSetEmpty!3683 () Bool)

(assert (=> setNonEmpty!3641 (= condSetEmpty!3683 (= setRest!3642 ((as const (Array Context!466 Bool)) false)))))

(declare-fun setRes!3683 () Bool)

(assert (=> setNonEmpty!3641 (= tp!206515 setRes!3683)))

(declare-fun setIsEmpty!3683 () Bool)

(assert (=> setIsEmpty!3683 setRes!3683))

(declare-fun setElem!3683 () Context!466)

(declare-fun tp!206778 () Bool)

(declare-fun e!433521 () Bool)

(declare-fun setNonEmpty!3683 () Bool)

(assert (=> setNonEmpty!3683 (= setRes!3683 (and tp!206778 (inv!9492 setElem!3683) e!433521))))

(declare-fun setRest!3683 () (InoxSet Context!466))

(assert (=> setNonEmpty!3683 (= setRest!3642 ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3683 true) setRest!3683))))

(declare-fun b!689776 () Bool)

(declare-fun tp!206777 () Bool)

(assert (=> b!689776 (= e!433521 tp!206777)))

(assert (= (and setNonEmpty!3641 condSetEmpty!3683) setIsEmpty!3683))

(assert (= (and setNonEmpty!3641 (not condSetEmpty!3683)) setNonEmpty!3683))

(assert (= setNonEmpty!3683 b!689776))

(declare-fun m!946391 () Bool)

(assert (=> setNonEmpty!3683 m!946391))

(declare-fun b!689777 () Bool)

(declare-fun e!433522 () Bool)

(declare-fun tp!206779 () Bool)

(declare-fun tp!206780 () Bool)

(assert (=> b!689777 (= e!433522 (and tp!206779 tp!206780))))

(assert (=> b!689115 (= tp!206342 e!433522)))

(assert (= (and b!689115 ((_ is Cons!7381) (exprs!733 (_1!4276 (_1!4277 (h!12789 mapDefault!2967)))))) b!689777))

(declare-fun condSetEmpty!3684 () Bool)

(assert (=> setNonEmpty!3626 (= condSetEmpty!3684 (= setRest!3626 ((as const (Array Context!466 Bool)) false)))))

(declare-fun setRes!3684 () Bool)

(assert (=> setNonEmpty!3626 (= tp!206429 setRes!3684)))

(declare-fun setIsEmpty!3684 () Bool)

(assert (=> setIsEmpty!3684 setRes!3684))

(declare-fun e!433523 () Bool)

(declare-fun setElem!3684 () Context!466)

(declare-fun tp!206782 () Bool)

(declare-fun setNonEmpty!3684 () Bool)

(assert (=> setNonEmpty!3684 (= setRes!3684 (and tp!206782 (inv!9492 setElem!3684) e!433523))))

(declare-fun setRest!3684 () (InoxSet Context!466))

(assert (=> setNonEmpty!3684 (= setRest!3626 ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3684 true) setRest!3684))))

(declare-fun b!689778 () Bool)

(declare-fun tp!206781 () Bool)

(assert (=> b!689778 (= e!433523 tp!206781)))

(assert (= (and setNonEmpty!3626 condSetEmpty!3684) setIsEmpty!3684))

(assert (= (and setNonEmpty!3626 (not condSetEmpty!3684)) setNonEmpty!3684))

(assert (= setNonEmpty!3684 b!689778))

(declare-fun m!946393 () Bool)

(assert (=> setNonEmpty!3684 m!946393))

(declare-fun b!689782 () Bool)

(declare-fun e!433524 () Bool)

(declare-fun tp!206785 () Bool)

(declare-fun tp!206786 () Bool)

(assert (=> b!689782 (= e!433524 (and tp!206785 tp!206786))))

(declare-fun b!689781 () Bool)

(declare-fun tp!206783 () Bool)

(assert (=> b!689781 (= e!433524 tp!206783)))

(assert (=> b!689213 (= tp!206469 e!433524)))

(declare-fun b!689779 () Bool)

(assert (=> b!689779 (= e!433524 tp_is_empty!3641)))

(declare-fun b!689780 () Bool)

(declare-fun tp!206787 () Bool)

(declare-fun tp!206784 () Bool)

(assert (=> b!689780 (= e!433524 (and tp!206787 tp!206784))))

(assert (= (and b!689213 ((_ is ElementMatch!1823) (reg!2152 (regex!1486 (h!12787 rules!1357))))) b!689779))

(assert (= (and b!689213 ((_ is Concat!3353) (reg!2152 (regex!1486 (h!12787 rules!1357))))) b!689780))

(assert (= (and b!689213 ((_ is Star!1823) (reg!2152 (regex!1486 (h!12787 rules!1357))))) b!689781))

(assert (= (and b!689213 ((_ is Union!1823) (reg!2152 (regex!1486 (h!12787 rules!1357))))) b!689782))

(declare-fun condSetEmpty!3685 () Bool)

(assert (=> setNonEmpty!3642 (= condSetEmpty!3685 (= setRest!3641 ((as const (Array Context!466 Bool)) false)))))

(declare-fun setRes!3685 () Bool)

(assert (=> setNonEmpty!3642 (= tp!206512 setRes!3685)))

(declare-fun setIsEmpty!3685 () Bool)

(assert (=> setIsEmpty!3685 setRes!3685))

(declare-fun e!433525 () Bool)

(declare-fun tp!206789 () Bool)

(declare-fun setElem!3685 () Context!466)

(declare-fun setNonEmpty!3685 () Bool)

(assert (=> setNonEmpty!3685 (= setRes!3685 (and tp!206789 (inv!9492 setElem!3685) e!433525))))

(declare-fun setRest!3685 () (InoxSet Context!466))

(assert (=> setNonEmpty!3685 (= setRest!3641 ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3685 true) setRest!3685))))

(declare-fun b!689783 () Bool)

(declare-fun tp!206788 () Bool)

(assert (=> b!689783 (= e!433525 tp!206788)))

(assert (= (and setNonEmpty!3642 condSetEmpty!3685) setIsEmpty!3685))

(assert (= (and setNonEmpty!3642 (not condSetEmpty!3685)) setNonEmpty!3685))

(assert (= setNonEmpty!3685 b!689783))

(declare-fun m!946395 () Bool)

(assert (=> setNonEmpty!3685 m!946395))

(declare-fun b!689784 () Bool)

(declare-fun e!433526 () Bool)

(declare-fun tp!206790 () Bool)

(declare-fun tp!206791 () Bool)

(assert (=> b!689784 (= e!433526 (and tp!206790 tp!206791))))

(assert (=> b!689246 (= tp!206517 e!433526)))

(assert (= (and b!689246 ((_ is Cons!7381) (exprs!733 setElem!3643))) b!689784))

(declare-fun mapIsEmpty!2980 () Bool)

(declare-fun mapRes!2980 () Bool)

(assert (=> mapIsEmpty!2980 mapRes!2980))

(declare-fun setIsEmpty!3686 () Bool)

(declare-fun setRes!3687 () Bool)

(assert (=> setIsEmpty!3686 setRes!3687))

(declare-fun tp!206795 () Bool)

(declare-fun setElem!3686 () Context!466)

(declare-fun e!433530 () Bool)

(declare-fun setNonEmpty!3686 () Bool)

(assert (=> setNonEmpty!3686 (= setRes!3687 (and tp!206795 (inv!9492 setElem!3686) e!433530))))

(declare-fun mapValue!2980 () List!7401)

(declare-fun setRest!3686 () (InoxSet Context!466))

(assert (=> setNonEmpty!3686 (= (_2!4275 (h!12788 mapValue!2980)) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3686 true) setRest!3686))))

(declare-fun mapNonEmpty!2980 () Bool)

(declare-fun tp!206792 () Bool)

(declare-fun e!433531 () Bool)

(assert (=> mapNonEmpty!2980 (= mapRes!2980 (and tp!206792 e!433531))))

(declare-fun mapRest!2980 () (Array (_ BitVec 32) List!7401))

(declare-fun mapKey!2980 () (_ BitVec 32))

(assert (=> mapNonEmpty!2980 (= mapRest!2974 (store mapRest!2980 mapKey!2980 mapValue!2980))))

(declare-fun setIsEmpty!3687 () Bool)

(declare-fun setRes!3686 () Bool)

(assert (=> setIsEmpty!3687 setRes!3686))

(declare-fun b!689785 () Bool)

(declare-fun e!433527 () Bool)

(declare-fun tp!206799 () Bool)

(assert (=> b!689785 (= e!433527 tp!206799)))

(declare-fun tp!206796 () Bool)

(declare-fun b!689786 () Bool)

(declare-fun mapDefault!2980 () List!7401)

(declare-fun tp!206797 () Bool)

(declare-fun e!433532 () Bool)

(assert (=> b!689786 (= e!433532 (and tp!206796 (inv!9492 (_2!4274 (_1!4275 (h!12788 mapDefault!2980)))) e!433527 tp_is_empty!3641 setRes!3686 tp!206797))))

(declare-fun condSetEmpty!3687 () Bool)

(assert (=> b!689786 (= condSetEmpty!3687 (= (_2!4275 (h!12788 mapDefault!2980)) ((as const (Array Context!466 Bool)) false)))))

(declare-fun e!433528 () Bool)

(declare-fun tp!206801 () Bool)

(declare-fun tp!206800 () Bool)

(declare-fun b!689787 () Bool)

(assert (=> b!689787 (= e!433531 (and tp!206800 (inv!9492 (_2!4274 (_1!4275 (h!12788 mapValue!2980)))) e!433528 tp_is_empty!3641 setRes!3687 tp!206801))))

(declare-fun condSetEmpty!3686 () Bool)

(assert (=> b!689787 (= condSetEmpty!3686 (= (_2!4275 (h!12788 mapValue!2980)) ((as const (Array Context!466 Bool)) false)))))

(declare-fun b!689788 () Bool)

(declare-fun e!433529 () Bool)

(declare-fun tp!206793 () Bool)

(assert (=> b!689788 (= e!433529 tp!206793)))

(declare-fun b!689789 () Bool)

(declare-fun tp!206802 () Bool)

(assert (=> b!689789 (= e!433530 tp!206802)))

(declare-fun b!689790 () Bool)

(declare-fun tp!206798 () Bool)

(assert (=> b!689790 (= e!433528 tp!206798)))

(declare-fun setNonEmpty!3687 () Bool)

(declare-fun setElem!3687 () Context!466)

(declare-fun tp!206794 () Bool)

(assert (=> setNonEmpty!3687 (= setRes!3686 (and tp!206794 (inv!9492 setElem!3687) e!433529))))

(declare-fun setRest!3687 () (InoxSet Context!466))

(assert (=> setNonEmpty!3687 (= (_2!4275 (h!12788 mapDefault!2980)) ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3687 true) setRest!3687))))

(declare-fun condMapEmpty!2980 () Bool)

(assert (=> mapNonEmpty!2974 (= condMapEmpty!2980 (= mapRest!2974 ((as const (Array (_ BitVec 32) List!7401)) mapDefault!2980)))))

(assert (=> mapNonEmpty!2974 (= tp!206426 (and e!433532 mapRes!2980))))

(assert (= (and mapNonEmpty!2974 condMapEmpty!2980) mapIsEmpty!2980))

(assert (= (and mapNonEmpty!2974 (not condMapEmpty!2980)) mapNonEmpty!2980))

(assert (= b!689787 b!689790))

(assert (= (and b!689787 condSetEmpty!3686) setIsEmpty!3686))

(assert (= (and b!689787 (not condSetEmpty!3686)) setNonEmpty!3686))

(assert (= setNonEmpty!3686 b!689789))

(assert (= (and mapNonEmpty!2980 ((_ is Cons!7387) mapValue!2980)) b!689787))

(assert (= b!689786 b!689785))

(assert (= (and b!689786 condSetEmpty!3687) setIsEmpty!3687))

(assert (= (and b!689786 (not condSetEmpty!3687)) setNonEmpty!3687))

(assert (= setNonEmpty!3687 b!689788))

(assert (= (and mapNonEmpty!2974 ((_ is Cons!7387) mapDefault!2980)) b!689786))

(declare-fun m!946397 () Bool)

(assert (=> setNonEmpty!3687 m!946397))

(declare-fun m!946399 () Bool)

(assert (=> mapNonEmpty!2980 m!946399))

(declare-fun m!946401 () Bool)

(assert (=> setNonEmpty!3686 m!946401))

(declare-fun m!946403 () Bool)

(assert (=> b!689786 m!946403))

(declare-fun m!946405 () Bool)

(assert (=> b!689787 m!946405))

(declare-fun b!689791 () Bool)

(declare-fun e!433533 () Bool)

(declare-fun tp!206803 () Bool)

(declare-fun tp!206804 () Bool)

(assert (=> b!689791 (= e!433533 (and tp!206803 tp!206804))))

(assert (=> b!689228 (= tp!206490 e!433533)))

(assert (= (and b!689228 ((_ is Cons!7381) (exprs!733 setElem!3635))) b!689791))

(declare-fun b!689792 () Bool)

(declare-fun e!433534 () Bool)

(declare-fun tp!206805 () Bool)

(declare-fun tp!206806 () Bool)

(assert (=> b!689792 (= e!433534 (and tp!206805 tp!206806))))

(assert (=> b!689175 (= tp!206433 e!433534)))

(assert (= (and b!689175 ((_ is Cons!7381) (exprs!733 (_2!4274 (_1!4275 (h!12788 mapDefault!2974)))))) b!689792))

(declare-fun condSetEmpty!3688 () Bool)

(assert (=> setNonEmpty!3619 (= condSetEmpty!3688 (= setRest!3620 ((as const (Array Context!466 Bool)) false)))))

(declare-fun setRes!3688 () Bool)

(assert (=> setNonEmpty!3619 (= tp!206391 setRes!3688)))

(declare-fun setIsEmpty!3688 () Bool)

(assert (=> setIsEmpty!3688 setRes!3688))

(declare-fun setElem!3688 () Context!466)

(declare-fun e!433535 () Bool)

(declare-fun setNonEmpty!3688 () Bool)

(declare-fun tp!206808 () Bool)

(assert (=> setNonEmpty!3688 (= setRes!3688 (and tp!206808 (inv!9492 setElem!3688) e!433535))))

(declare-fun setRest!3688 () (InoxSet Context!466))

(assert (=> setNonEmpty!3688 (= setRest!3620 ((_ map or) (store ((as const (Array Context!466 Bool)) false) setElem!3688 true) setRest!3688))))

(declare-fun b!689793 () Bool)

(declare-fun tp!206807 () Bool)

(assert (=> b!689793 (= e!433535 tp!206807)))

(assert (= (and setNonEmpty!3619 condSetEmpty!3688) setIsEmpty!3688))

(assert (= (and setNonEmpty!3619 (not condSetEmpty!3688)) setNonEmpty!3688))

(assert (= setNonEmpty!3688 b!689793))

(declare-fun m!946407 () Bool)

(assert (=> setNonEmpty!3688 m!946407))

(check-sat (not b_next!19459) (not b!689483) (not b!689768) (not d!232259) (not b!689742) (not setNonEmpty!3681) b_and!63199 b_and!63209 (not b!689699) (not b!689645) (not b!689583) (not b!689550) (not b!689687) (not d!232367) (not b!689486) (not b!689782) (not b!689633) (not b!689787) (not b!689479) (not b!689485) (not b!689527) (not d!232379) (not b!689370) (not b!689551) (not b_next!19479) (not b!689284) (not b!689740) (not b!689626) (not b!689784) (not b!689375) (not b!689609) (not b!689452) (not setNonEmpty!3656) (not mapNonEmpty!2980) (not b!689709) (not b!689777) (not b!689655) (not b!689731) (not b!689754) (not b_next!19473) (not b!689336) (not setNonEmpty!3682) (not b!689446) (not b!689790) (not b!689761) (not b!689728) (not b!689340) (not b!689727) (not d!232385) (not b!689247) (not b!689556) (not setNonEmpty!3645) b_and!63195 (not b!689512) (not b!689323) (not b!689735) (not mapNonEmpty!2979) (not d!232371) (not d!232267) (not b!689671) (not b!689788) (not b!689569) b_and!63193 (not d!232247) (not b!689592) (not d!232339) (not b!689438) (not b!689701) (not b!689256) (not b!689271) (not b!689324) (not b!689772) (not d!232335) (not b!689649) (not d!232241) (not d!232327) (not b!689716) (not b!689778) (not d!232329) (not b!689317) (not b_next!19467) (not bm!43570) (not b!689791) (not b!689703) (not b!689552) (not d!232393) (not b!689729) (not b!689422) (not d!232271) (not b!689642) (not bm!43581) (not b!689445) (not b!689423) (not bm!43580) (not d!232251) (not b!689643) (not b!689554) (not setNonEmpty!3652) (not d!232215) (not b!689475) (not b!689764) (not b!689484) (not b!689785) (not b!689611) (not b!689631) (not b!689750) (not b!689470) (not b!689639) (not b!689662) (not b!689762) (not d!232265) (not b!689525) (not b!689606) (not b!689640) (not b!689739) (not d!232351) b_and!63207 (not setNonEmpty!3666) (not b!689568) (not b!689663) (not b!689747) (not b!689641) (not b!689786) (not d!232369) (not b!689672) (not d!232231) (not b!689356) (not b!689617) (not b!689469) (not b!689541) (not b!689667) (not setNonEmpty!3664) (not b!689758) (not setNonEmpty!3662) (not d!232311) (not b!689534) (not b!689715) (not b!689593) (not b!689696) (not b!689712) (not b!689540) (not setNonEmpty!3665) (not b!689335) (not d!232273) (not b!689766) (not b!689751) (not setNonEmpty!3686) (not b!689610) (not b!689726) (not d!232211) (not d!232343) (not b!689792) (not d!232321) (not d!232347) (not b!689789) (not d!232377) (not b!689774) (not setNonEmpty!3678) (not b!689793) (not d!232389) (not b_next!19475) (not d!232315) (not b!689305) (not b!689760) (not b!689685) (not setNonEmpty!3677) (not b_next!19461) (not b!689514) (not b!689595) (not b!689719) (not setNonEmpty!3685) (not b!689373) (not bm!43569) (not b!689693) (not b!689734) (not b!689619) (not b!689597) (not b!689737) (not b!689684) (not b!689721) (not d!232287) (not d!232263) (not b!689776) (not b!689710) b_and!63189 (not b!689746) (not b!689557) (not b!689769) (not b!689690) (not b!689651) (not setNonEmpty!3673) (not b!689492) (not b!689756) (not b!689421) (not b!689555) (not b!689591) (not b!689357) (not b!689753) (not d!232357) (not setNonEmpty!3650) (not b!689775) (not setNonEmpty!3674) (not b!689659) (not b!689757) (not setNonEmpty!3651) (not b!689519) (not b!689695) (not b!689297) (not b!689748) (not b!689765) (not b!689545) (not b!689730) (not b!689630) (not b!689590) (not b!689694) (not b!689629) (not b!689707) (not b!689658) (not b!689282) (not b!689270) (not b!689599) (not setNonEmpty!3658) (not d!232375) (not d!232301) (not b!689708) b_and!63201 (not b!689692) (not b!689724) (not b!689704) (not b!689621) (not b_next!19469) (not b!689433) (not b!689544) (not setNonEmpty!3680) (not bm!43575) (not b!689596) (not b!689547) (not b!689677) (not setNonEmpty!3649) (not b!689546) (not setNonEmpty!3672) (not d!232207) (not bm!43572) (not b!689476) (not setNonEmpty!3687) (not setNonEmpty!3683) (not b!689480) b_and!63187 (not setNonEmpty!3655) (not b_next!19471) (not b!689561) (not b!689618) (not b!689718) (not b!689627) (not setNonEmpty!3675) (not b!689281) (not d!232291) (not bm!43568) (not b!689338) (not d!232303) (not b!689780) (not b!689287) (not b!689588) (not b!689773) (not setNonEmpty!3670) (not b!689691) (not d!232325) tp_is_empty!3641 b_and!63197 (not setNonEmpty!3688) (not d!232341) (not b!689273) (not b!689717) (not b!689620) (not bm!43564) (not b!689427) (not b!689295) (not b!689673) (not b!689275) (not b!689372) (not b!689487) (not b!689680) (not d!232249) (not b!689732) (not d!232353) (not setNonEmpty!3661) (not d!232363) (not b!689783) (not b!689688) (not setNonEmpty!3657) (not b!689674) (not b!689562) (not b!689272) (not b!689666) (not b!689318) (not b!689771) (not d!232233) (not mapNonEmpty!2978) (not b!689665) (not bm!43574) (not b!689549) (not b!689706) (not b!689274) (not b!689744) (not b!689280) (not b!689634) (not b!689553) (not b!689584) (not d!232355) (not d!232293) (not b!689517) (not d!232275) (not d!232381) (not d!232323) (not b!689656) (not d!232361) (not b!689781) (not b_next!19463) (not b!689482) (not b!689293) (not b!689664) (not d!232257) (not b!689579) (not d!232391) (not b!689738) (not b!689589) (not b!689770) (not b!689681) (not b!689683) (not d!232245) (not b!689697) (not d!232387) (not b!689558) (not b!689644) (not b!689755) (not setNonEmpty!3668) (not b!689518) (not b!689743) (not b!689489) (not b!689371) (not b!689723) (not setNonEmpty!3669) (not b!689607) (not b!689374) (not b!689564) (not b!689678) (not b!689689) (not b!689752) (not d!232243) (not b!689608) b_and!63191 (not d!232313) (not d!232237) (not setNonEmpty!3654) (not b!689650) (not b!689705) (not b!689675) (not b!689580) (not b!689767) (not d!232277) (not b!689713) (not setNonEmpty!3659) (not d!232319) (not b!689632) (not b!689646) (not d!232239) (not b!689451) (not setNonEmpty!3679) (not b!689616) (not b!689722) (not b_next!19457) b_and!63205 (not b!689511) (not b!689749) (not setNonEmpty!3660) (not b!689714) (not b!689733) (not setNonEmpty!3663) (not b!689720) (not b!689660) (not d!232359) (not b!689657) (not setNonEmpty!3653) (not b!689654) (not b!689535) (not b!689670) (not b!689472) (not d!232337) b_and!63203 (not b!689471) (not setNonEmpty!3667) (not b!689741) (not d!232261) (not b!689700) (not d!232209) (not setNonEmpty!3676) (not setNonEmpty!3671) (not setNonEmpty!3684) (not d!232289) (not b!689647) (not b!689679) (not b!689285) (not b_next!19465) (not d!232229) (not b!689560) (not b!689736) (not b!689529) (not b!689628) (not b!689198) (not b!689648) (not b!689490) (not setNonEmpty!3646) (not b!689474) (not b_next!19477) (not d!232373) (not b!689676) (not b!689725) (not b!689559) (not b!689669) (not d!232317) (not b!689653))
(check-sat (not b_next!19473) b_and!63195 b_and!63193 (not b_next!19467) b_and!63207 b_and!63189 b_and!63197 (not b_next!19463) b_and!63191 b_and!63203 (not b_next!19465) (not b_next!19477) (not b_next!19459) b_and!63199 b_and!63209 (not b_next!19479) (not b_next!19461) (not b_next!19475) (not b_next!19469) b_and!63201 b_and!63187 (not b_next!19471) (not b_next!19457) b_and!63205)
