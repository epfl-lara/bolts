; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411752 () Bool)

(assert start!411752)

(declare-fun b!4285614 () Bool)

(declare-fun b_free!127003 () Bool)

(declare-fun b_next!127707 () Bool)

(assert (=> b!4285614 (= b_free!127003 (not b_next!127707))))

(declare-fun tp!1312062 () Bool)

(declare-fun b_and!338213 () Bool)

(assert (=> b!4285614 (= tp!1312062 b_and!338213)))

(declare-fun b_free!127005 () Bool)

(declare-fun b_next!127709 () Bool)

(assert (=> b!4285614 (= b_free!127005 (not b_next!127709))))

(declare-fun tp!1312083 () Bool)

(declare-fun b_and!338215 () Bool)

(assert (=> b!4285614 (= tp!1312083 b_and!338215)))

(declare-fun b!4285638 () Bool)

(declare-fun b_free!127007 () Bool)

(declare-fun b_next!127711 () Bool)

(assert (=> b!4285638 (= b_free!127007 (not b_next!127711))))

(declare-fun tp!1312079 () Bool)

(declare-fun b_and!338217 () Bool)

(assert (=> b!4285638 (= tp!1312079 b_and!338217)))

(declare-fun b!4285629 () Bool)

(declare-fun b_free!127009 () Bool)

(declare-fun b_next!127713 () Bool)

(assert (=> b!4285629 (= b_free!127009 (not b_next!127713))))

(declare-fun tp!1312078 () Bool)

(declare-fun b_and!338219 () Bool)

(assert (=> b!4285629 (= tp!1312078 b_and!338219)))

(declare-fun b!4285619 () Bool)

(declare-fun b_free!127011 () Bool)

(declare-fun b_next!127715 () Bool)

(assert (=> b!4285619 (= b_free!127011 (not b_next!127715))))

(declare-fun tp!1312067 () Bool)

(declare-fun b_and!338221 () Bool)

(assert (=> b!4285619 (= tp!1312067 b_and!338221)))

(declare-fun b!4285604 () Bool)

(declare-fun b_free!127013 () Bool)

(declare-fun b_next!127717 () Bool)

(assert (=> b!4285604 (= b_free!127013 (not b_next!127717))))

(declare-fun tp!1312069 () Bool)

(declare-fun b_and!338223 () Bool)

(assert (=> b!4285604 (= tp!1312069 b_and!338223)))

(declare-fun b!4285631 () Bool)

(declare-fun b_free!127015 () Bool)

(declare-fun b_next!127719 () Bool)

(assert (=> b!4285631 (= b_free!127015 (not b_next!127719))))

(declare-fun tp!1312072 () Bool)

(declare-fun b_and!338225 () Bool)

(assert (=> b!4285631 (= tp!1312072 b_and!338225)))

(declare-fun b!4285637 () Bool)

(declare-fun b_free!127017 () Bool)

(declare-fun b_next!127721 () Bool)

(assert (=> b!4285637 (= b_free!127017 (not b_next!127721))))

(declare-fun tp!1312066 () Bool)

(declare-fun b_and!338227 () Bool)

(assert (=> b!4285637 (= tp!1312066 b_and!338227)))

(declare-fun b!4285601 () Bool)

(declare-fun res!1758330 () Bool)

(declare-fun e!2661230 () Bool)

(assert (=> b!4285601 (=> (not res!1758330) (not e!2661230))))

(declare-datatypes ((Hashable!4216 0))(
  ( (HashableExt!4215 (__x!28923 Int)) )
))
(declare-datatypes ((array!15424 0))(
  ( (array!15425 (arr!6884 (Array (_ BitVec 32) (_ BitVec 64))) (size!34823 (_ BitVec 32))) )
))
(declare-datatypes ((C!26032 0))(
  ( (C!26033 (val!15342 Int)) )
))
(declare-datatypes ((Regex!12917 0))(
  ( (ElementMatch!12917 (c!730103 C!26032)) (Concat!21235 (regOne!26346 Regex!12917) (regTwo!26346 Regex!12917)) (EmptyExpr!12917) (Star!12917 (reg!13246 Regex!12917)) (EmptyLang!12917) (Union!12917 (regOne!26347 Regex!12917) (regTwo!26347 Regex!12917)) )
))
(declare-datatypes ((List!47633 0))(
  ( (Nil!47509) (Cons!47509 (h!52929 Regex!12917) (t!354228 List!47633)) )
))
(declare-datatypes ((Context!5614 0))(
  ( (Context!5615 (exprs!3307 List!47633)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!44942 0))(
  ( (tuple2!44943 (_1!25630 (InoxSet Context!5614)) (_2!25630 Int)) )
))
(declare-datatypes ((tuple2!44944 0))(
  ( (tuple2!44945 (_1!25631 tuple2!44942) (_2!25631 Int)) )
))
(declare-datatypes ((List!47634 0))(
  ( (Nil!47510) (Cons!47510 (h!52930 tuple2!44944) (t!354229 List!47634)) )
))
(declare-datatypes ((array!15426 0))(
  ( (array!15427 (arr!6885 (Array (_ BitVec 32) List!47634)) (size!34824 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8600 0))(
  ( (LongMapFixedSize!8601 (defaultEntry!4685 Int) (mask!12728 (_ BitVec 32)) (extraKeys!4549 (_ BitVec 32)) (zeroValue!4559 List!47634) (minValue!4559 List!47634) (_size!8643 (_ BitVec 32)) (_keys!4600 array!15424) (_values!4581 array!15426) (_vacant!4361 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17009 0))(
  ( (Cell!17010 (v!41408 LongMapFixedSize!8600)) )
))
(declare-datatypes ((MutLongMap!4300 0))(
  ( (LongMap!4300 (underlying!8829 Cell!17009)) (MutLongMapExt!4299 (__x!28924 Int)) )
))
(declare-datatypes ((Cell!17011 0))(
  ( (Cell!17012 (v!41409 MutLongMap!4300)) )
))
(declare-datatypes ((MutableMap!4206 0))(
  ( (MutableMapExt!4205 (__x!28925 Int)) (HashMap!4206 (underlying!8830 Cell!17011) (hashF!6248 Hashable!4216) (_size!8644 (_ BitVec 32)) (defaultValue!4377 Int)) )
))
(declare-datatypes ((List!47635 0))(
  ( (Nil!47511) (Cons!47511 (h!52931 C!26032) (t!354230 List!47635)) )
))
(declare-datatypes ((IArray!28781 0))(
  ( (IArray!28782 (innerList!14448 List!47635)) )
))
(declare-datatypes ((Conc!14360 0))(
  ( (Node!14360 (left!35349 Conc!14360) (right!35679 Conc!14360) (csize!28950 Int) (cheight!14571 Int)) (Leaf!22220 (xs!17666 IArray!28781) (csize!28951 Int)) (Empty!14360) )
))
(declare-datatypes ((BalanceConc!28210 0))(
  ( (BalanceConc!28211 (c!730104 Conc!14360)) )
))
(declare-datatypes ((CacheFindLongestMatch!408 0))(
  ( (CacheFindLongestMatch!409 (cache!4346 MutableMap!4206) (totalInput!4310 BalanceConc!28210)) )
))
(declare-fun cacheFindLongestMatch!156 () CacheFindLongestMatch!408)

(declare-fun totalInput!528 () BalanceConc!28210)

(assert (=> b!4285601 (= res!1758330 (= (totalInput!4310 cacheFindLongestMatch!156) totalInput!528))))

(declare-fun b!4285602 () Bool)

(declare-fun e!2661254 () Bool)

(declare-fun input!1632 () BalanceConc!28210)

(declare-fun tp!1312085 () Bool)

(declare-fun inv!62962 (Conc!14360) Bool)

(assert (=> b!4285602 (= e!2661254 (and (inv!62962 (c!730104 input!1632)) tp!1312085))))

(declare-fun b!4285603 () Bool)

(declare-fun e!2661235 () Bool)

(declare-fun tp!1312064 () Bool)

(declare-fun mapRes!19454 () Bool)

(assert (=> b!4285603 (= e!2661235 (and tp!1312064 mapRes!19454))))

(declare-fun condMapEmpty!19453 () Bool)

(declare-datatypes ((tuple2!44946 0))(
  ( (tuple2!44947 (_1!25632 Context!5614) (_2!25632 C!26032)) )
))
(declare-datatypes ((tuple2!44948 0))(
  ( (tuple2!44949 (_1!25633 tuple2!44946) (_2!25633 (InoxSet Context!5614))) )
))
(declare-datatypes ((List!47636 0))(
  ( (Nil!47512) (Cons!47512 (h!52932 tuple2!44948) (t!354231 List!47636)) )
))
(declare-datatypes ((array!15428 0))(
  ( (array!15429 (arr!6886 (Array (_ BitVec 32) List!47636)) (size!34825 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8602 0))(
  ( (LongMapFixedSize!8603 (defaultEntry!4686 Int) (mask!12729 (_ BitVec 32)) (extraKeys!4550 (_ BitVec 32)) (zeroValue!4560 List!47636) (minValue!4560 List!47636) (_size!8645 (_ BitVec 32)) (_keys!4601 array!15424) (_values!4582 array!15428) (_vacant!4362 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17013 0))(
  ( (Cell!17014 (v!41410 LongMapFixedSize!8602)) )
))
(declare-datatypes ((MutLongMap!4301 0))(
  ( (LongMap!4301 (underlying!8831 Cell!17013)) (MutLongMapExt!4300 (__x!28926 Int)) )
))
(declare-datatypes ((Cell!17015 0))(
  ( (Cell!17016 (v!41411 MutLongMap!4301)) )
))
(declare-datatypes ((Hashable!4217 0))(
  ( (HashableExt!4216 (__x!28927 Int)) )
))
(declare-datatypes ((MutableMap!4207 0))(
  ( (MutableMapExt!4206 (__x!28928 Int)) (HashMap!4207 (underlying!8832 Cell!17015) (hashF!6249 Hashable!4217) (_size!8646 (_ BitVec 32)) (defaultValue!4378 Int)) )
))
(declare-datatypes ((CacheUp!2746 0))(
  ( (CacheUp!2747 (cache!4347 MutableMap!4207)) )
))
(declare-fun cacheUp!725 () CacheUp!2746)

(declare-fun mapDefault!19452 () List!47636)

(assert (=> b!4285603 (= condMapEmpty!19453 (= (arr!6886 (_values!4582 (v!41410 (underlying!8831 (v!41411 (underlying!8832 (cache!4347 cacheUp!725))))))) ((as const (Array (_ BitVec 32) List!47636)) mapDefault!19452)))))

(declare-fun e!2661250 () Bool)

(declare-fun e!2661249 () Bool)

(assert (=> b!4285604 (= e!2661250 (and e!2661249 tp!1312069))))

(declare-fun mapNonEmpty!19452 () Bool)

(declare-fun tp!1312073 () Bool)

(declare-fun tp!1312082 () Bool)

(assert (=> mapNonEmpty!19452 (= mapRes!19454 (and tp!1312073 tp!1312082))))

(declare-fun mapKey!19452 () (_ BitVec 32))

(declare-fun mapRest!19454 () (Array (_ BitVec 32) List!47636))

(declare-fun mapValue!19453 () List!47636)

(assert (=> mapNonEmpty!19452 (= (arr!6886 (_values!4582 (v!41410 (underlying!8831 (v!41411 (underlying!8832 (cache!4347 cacheUp!725))))))) (store mapRest!19454 mapKey!19452 mapValue!19453))))

(declare-fun mapIsEmpty!19452 () Bool)

(declare-fun mapRes!19453 () Bool)

(assert (=> mapIsEmpty!19452 mapRes!19453))

(declare-fun b!4285605 () Bool)

(declare-fun e!2661241 () Bool)

(declare-fun tp!1312076 () Bool)

(assert (=> b!4285605 (= e!2661241 (and (inv!62962 (c!730104 (totalInput!4310 cacheFindLongestMatch!156))) tp!1312076))))

(declare-fun b!4285606 () Bool)

(declare-fun e!2661236 () Bool)

(assert (=> b!4285606 (= e!2661236 e!2661230)))

(declare-fun res!1758335 () Bool)

(assert (=> b!4285606 (=> (not res!1758335) (not e!2661230))))

(declare-fun lt!1515823 () List!47635)

(declare-fun isSuffix!1014 (List!47635 List!47635) Bool)

(declare-fun list!17328 (BalanceConc!28210) List!47635)

(assert (=> b!4285606 (= res!1758335 (isSuffix!1014 lt!1515823 (list!17328 totalInput!528)))))

(assert (=> b!4285606 (= lt!1515823 (list!17328 input!1632))))

(declare-fun b!4285607 () Bool)

(declare-fun e!2661240 () Bool)

(declare-fun e!2661232 () Bool)

(assert (=> b!4285607 (= e!2661240 e!2661232)))

(declare-fun b!4285608 () Bool)

(declare-fun e!2661226 () Bool)

(declare-fun tp!1312065 () Bool)

(declare-fun mapRes!19452 () Bool)

(assert (=> b!4285608 (= e!2661226 (and tp!1312065 mapRes!19452))))

(declare-fun condMapEmpty!19454 () Bool)

(declare-fun mapDefault!19454 () List!47634)

(assert (=> b!4285608 (= condMapEmpty!19454 (= (arr!6885 (_values!4581 (v!41408 (underlying!8829 (v!41409 (underlying!8830 (cache!4346 cacheFindLongestMatch!156))))))) ((as const (Array (_ BitVec 32) List!47634)) mapDefault!19454)))))

(declare-fun b!4285609 () Bool)

(declare-datatypes ((List!47637 0))(
  ( (Nil!47513) (Cons!47513 (h!52933 (_ BitVec 16)) (t!354232 List!47637)) )
))
(declare-datatypes ((TokenValue!8318 0))(
  ( (FloatLiteralValue!16636 (text!58671 List!47637)) (TokenValueExt!8317 (__x!28929 Int)) (Broken!41590 (value!251016 List!47637)) (Object!8441) (End!8318) (Def!8318) (Underscore!8318) (Match!8318) (Else!8318) (Error!8318) (Case!8318) (If!8318) (Extends!8318) (Abstract!8318) (Class!8318) (Val!8318) (DelimiterValue!16636 (del!8378 List!47637)) (KeywordValue!8324 (value!251017 List!47637)) (CommentValue!16636 (value!251018 List!47637)) (WhitespaceValue!16636 (value!251019 List!47637)) (IndentationValue!8318 (value!251020 List!47637)) (String!55587) (Int32!8318) (Broken!41591 (value!251021 List!47637)) (Boolean!8319) (Unit!66381) (OperatorValue!8321 (op!8378 List!47637)) (IdentifierValue!16636 (value!251022 List!47637)) (IdentifierValue!16637 (value!251023 List!47637)) (WhitespaceValue!16637 (value!251024 List!47637)) (True!16636) (False!16636) (Broken!41592 (value!251025 List!47637)) (Broken!41593 (value!251026 List!47637)) (True!16637) (RightBrace!8318) (RightBracket!8318) (Colon!8318) (Null!8318) (Comma!8318) (LeftBracket!8318) (False!16637) (LeftBrace!8318) (ImaginaryLiteralValue!8318 (text!58672 List!47637)) (StringLiteralValue!24954 (value!251027 List!47637)) (EOFValue!8318 (value!251028 List!47637)) (IdentValue!8318 (value!251029 List!47637)) (DelimiterValue!16637 (value!251030 List!47637)) (DedentValue!8318 (value!251031 List!47637)) (NewLineValue!8318 (value!251032 List!47637)) (IntegerValue!24954 (value!251033 (_ BitVec 32)) (text!58673 List!47637)) (IntegerValue!24955 (value!251034 Int) (text!58674 List!47637)) (Times!8318) (Or!8318) (Equal!8318) (Minus!8318) (Broken!41594 (value!251035 List!47637)) (And!8318) (Div!8318) (LessEqual!8318) (Mod!8318) (Concat!21236) (Not!8318) (Plus!8318) (SpaceValue!8318 (value!251036 List!47637)) (IntegerValue!24956 (value!251037 Int) (text!58675 List!47637)) (StringLiteralValue!24955 (text!58676 List!47637)) (FloatLiteralValue!16637 (text!58677 List!47637)) (BytesLiteralValue!8318 (value!251038 List!47637)) (CommentValue!16637 (value!251039 List!47637)) (StringLiteralValue!24956 (value!251040 List!47637)) (ErrorTokenValue!8318 (msg!8379 List!47637)) )
))
(declare-datatypes ((String!55588 0))(
  ( (String!55589 (value!251041 String)) )
))
(declare-datatypes ((TokenValueInjection!15944 0))(
  ( (TokenValueInjection!15945 (toValue!10859 Int) (toChars!10718 Int)) )
))
(declare-datatypes ((Rule!15816 0))(
  ( (Rule!15817 (regex!8008 Regex!12917) (tag!8872 String!55588) (isSeparator!8008 Bool) (transformation!8008 TokenValueInjection!15944)) )
))
(declare-datatypes ((Token!14616 0))(
  ( (Token!14617 (value!251042 TokenValue!8318) (rule!11131 Rule!15816) (size!34826 Int) (originalCharacters!8339 List!47635)) )
))
(declare-datatypes ((tuple2!44950 0))(
  ( (tuple2!44951 (_1!25634 Token!14616) (_2!25634 BalanceConc!28210)) )
))
(declare-datatypes ((Option!10128 0))(
  ( (None!10127) (Some!10127 (v!41412 tuple2!44950)) )
))
(declare-fun e!2661248 () Option!10128)

(declare-fun rule!232 () Rule!15816)

(declare-datatypes ((tuple3!5358 0))(
  ( (tuple3!5359 (_1!25635 Regex!12917) (_2!25635 Context!5614) (_3!3159 C!26032)) )
))
(declare-datatypes ((tuple2!44952 0))(
  ( (tuple2!44953 (_1!25636 tuple3!5358) (_2!25636 (InoxSet Context!5614))) )
))
(declare-datatypes ((List!47638 0))(
  ( (Nil!47514) (Cons!47514 (h!52934 tuple2!44952) (t!354233 List!47638)) )
))
(declare-datatypes ((array!15430 0))(
  ( (array!15431 (arr!6887 (Array (_ BitVec 32) List!47638)) (size!34827 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8604 0))(
  ( (LongMapFixedSize!8605 (defaultEntry!4687 Int) (mask!12730 (_ BitVec 32)) (extraKeys!4551 (_ BitVec 32)) (zeroValue!4561 List!47638) (minValue!4561 List!47638) (_size!8647 (_ BitVec 32)) (_keys!4602 array!15424) (_values!4583 array!15430) (_vacant!4363 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17017 0))(
  ( (Cell!17018 (v!41413 LongMapFixedSize!8604)) )
))
(declare-datatypes ((MutLongMap!4302 0))(
  ( (LongMap!4302 (underlying!8833 Cell!17017)) (MutLongMapExt!4301 (__x!28930 Int)) )
))
(declare-datatypes ((tuple2!44954 0))(
  ( (tuple2!44955 (_1!25637 BalanceConc!28210) (_2!25637 BalanceConc!28210)) )
))
(declare-datatypes ((Hashable!4218 0))(
  ( (HashableExt!4217 (__x!28931 Int)) )
))
(declare-datatypes ((Cell!17019 0))(
  ( (Cell!17020 (v!41414 MutLongMap!4302)) )
))
(declare-datatypes ((MutableMap!4208 0))(
  ( (MutableMapExt!4207 (__x!28932 Int)) (HashMap!4208 (underlying!8834 Cell!17019) (hashF!6250 Hashable!4218) (_size!8648 (_ BitVec 32)) (defaultValue!4379 Int)) )
))
(declare-datatypes ((CacheDown!2866 0))(
  ( (CacheDown!2867 (cache!4348 MutableMap!4208)) )
))
(declare-datatypes ((tuple4!960 0))(
  ( (tuple4!961 (_1!25638 tuple2!44954) (_2!25638 CacheUp!2746) (_3!3160 CacheDown!2866) (_4!480 CacheFindLongestMatch!408)) )
))
(declare-fun lt!1515816 () tuple4!960)

(declare-fun apply!10826 (TokenValueInjection!15944 BalanceConc!28210) TokenValue!8318)

(declare-fun size!34828 (BalanceConc!28210) Int)

(assert (=> b!4285609 (= e!2661248 (Some!10127 (tuple2!44951 (Token!14617 (apply!10826 (transformation!8008 rule!232) (_1!25637 (_1!25638 lt!1515816))) rule!232 (size!34828 (_1!25637 (_1!25638 lt!1515816))) (list!17328 (_1!25637 (_1!25638 lt!1515816)))) (_2!25637 (_1!25638 lt!1515816)))))))

(declare-datatypes ((Unit!66382 0))(
  ( (Unit!66383) )
))
(declare-fun lt!1515822 () Unit!66382)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1678 (Regex!12917 List!47635) Unit!66382)

(assert (=> b!4285609 (= lt!1515822 (longestMatchIsAcceptedByMatchOrIsEmpty!1678 (regex!8008 rule!232) lt!1515823))))

(declare-datatypes ((tuple2!44956 0))(
  ( (tuple2!44957 (_1!25639 List!47635) (_2!25639 List!47635)) )
))
(declare-fun lt!1515818 () tuple2!44956)

(declare-fun findLongestMatchInner!1715 (Regex!12917 List!47635 Int List!47635 List!47635 Int) tuple2!44956)

(declare-fun size!34829 (List!47635) Int)

(assert (=> b!4285609 (= lt!1515818 (findLongestMatchInner!1715 (regex!8008 rule!232) Nil!47511 (size!34829 Nil!47511) lt!1515823 lt!1515823 (size!34829 lt!1515823)))))

(declare-fun res!1758331 () Bool)

(declare-fun isEmpty!28018 (List!47635) Bool)

(assert (=> b!4285609 (= res!1758331 (isEmpty!28018 (_1!25639 lt!1515818)))))

(declare-fun e!2661228 () Bool)

(assert (=> b!4285609 (=> res!1758331 e!2661228)))

(assert (=> b!4285609 e!2661228))

(declare-fun lt!1515821 () Unit!66382)

(declare-fun lemmaSemiInverse!2546 (TokenValueInjection!15944 BalanceConc!28210) Unit!66382)

(assert (=> b!4285609 (= lt!1515821 (lemmaSemiInverse!2546 (transformation!8008 rule!232) (_1!25637 (_1!25638 lt!1515816))))))

(declare-fun b!4285610 () Bool)

(declare-fun e!2661227 () Bool)

(assert (=> b!4285610 (= e!2661230 e!2661227)))

(declare-fun res!1758333 () Bool)

(assert (=> b!4285610 (=> (not res!1758333) (not e!2661227))))

(declare-fun findLongestMatchWithZipperSequenceV2!122 (Regex!12917 BalanceConc!28210 BalanceConc!28210) tuple2!44954)

(assert (=> b!4285610 (= res!1758333 (= (tuple2!44955 (_1!25637 (_1!25638 lt!1515816)) (_2!25637 (_1!25638 lt!1515816))) (findLongestMatchWithZipperSequenceV2!122 (regex!8008 rule!232) input!1632 totalInput!528)))))

(declare-fun cacheDown!738 () CacheDown!2866)

(declare-fun findLongestMatchWithZipperSequenceV2Mem!45 (Regex!12917 BalanceConc!28210 BalanceConc!28210 CacheUp!2746 CacheDown!2866 CacheFindLongestMatch!408) tuple4!960)

(assert (=> b!4285610 (= lt!1515816 (findLongestMatchWithZipperSequenceV2Mem!45 (regex!8008 rule!232) input!1632 totalInput!528 cacheUp!725 cacheDown!738 cacheFindLongestMatch!156))))

(declare-fun b!4285611 () Bool)

(declare-fun e!2661242 () Bool)

(declare-fun tp!1312068 () Bool)

(declare-fun e!2661225 () Bool)

(declare-fun inv!62958 (String!55588) Bool)

(declare-fun inv!62963 (TokenValueInjection!15944) Bool)

(assert (=> b!4285611 (= e!2661225 (and tp!1312068 (inv!62958 (tag!8872 rule!232)) (inv!62963 (transformation!8008 rule!232)) e!2661242))))

(declare-fun b!4285612 () Bool)

(assert (=> b!4285612 (= e!2661248 None!10127)))

(declare-fun b!4285613 () Bool)

(declare-fun e!2661245 () Bool)

(assert (=> b!4285613 (= e!2661245 (not (= (totalInput!4310 (_4!480 lt!1515816)) totalInput!528)))))

(assert (=> b!4285614 (= e!2661242 (and tp!1312062 tp!1312083))))

(declare-fun b!4285615 () Bool)

(declare-fun res!1758337 () Bool)

(assert (=> b!4285615 (=> (not res!1758337) (not e!2661236))))

(declare-fun valid!3338 (CacheDown!2866) Bool)

(assert (=> b!4285615 (= res!1758337 (valid!3338 cacheDown!738))))

(declare-fun b!4285616 () Bool)

(declare-fun e!2661246 () Bool)

(declare-fun tp!1312077 () Bool)

(assert (=> b!4285616 (= e!2661246 (and (inv!62962 (c!730104 totalInput!528)) tp!1312077))))

(declare-fun b!4285617 () Bool)

(declare-fun e!2661234 () Bool)

(declare-fun e!2661255 () Bool)

(assert (=> b!4285617 (= e!2661234 e!2661255)))

(declare-fun b!4285618 () Bool)

(declare-fun res!1758340 () Bool)

(assert (=> b!4285618 (=> res!1758340 e!2661245)))

(declare-fun valid!3339 (CacheUp!2746) Bool)

(assert (=> b!4285618 (= res!1758340 (not (valid!3339 (_2!25638 lt!1515816))))))

(declare-fun e!2661237 () Bool)

(declare-fun e!2661259 () Bool)

(assert (=> b!4285619 (= e!2661237 (and e!2661259 tp!1312067))))

(declare-fun b!4285620 () Bool)

(declare-fun e!2661239 () Bool)

(assert (=> b!4285620 (= e!2661232 e!2661239)))

(declare-fun b!4285621 () Bool)

(declare-fun res!1758341 () Bool)

(assert (=> b!4285621 (=> res!1758341 e!2661245)))

(declare-fun valid!3340 (CacheFindLongestMatch!408) Bool)

(assert (=> b!4285621 (= res!1758341 (not (valid!3340 (_4!480 lt!1515816))))))

(declare-fun b!4285622 () Bool)

(declare-fun e!2661260 () Bool)

(assert (=> b!4285622 (= e!2661260 e!2661237)))

(declare-fun b!4285623 () Bool)

(declare-fun e!2661231 () Bool)

(declare-fun e!2661233 () Bool)

(declare-fun lt!1515820 () MutLongMap!4301)

(get-info :version)

(assert (=> b!4285623 (= e!2661231 (and e!2661233 ((_ is LongMap!4301) lt!1515820)))))

(assert (=> b!4285623 (= lt!1515820 (v!41411 (underlying!8832 (cache!4347 cacheUp!725))))))

(declare-fun mapNonEmpty!19453 () Bool)

(declare-fun tp!1312071 () Bool)

(declare-fun tp!1312075 () Bool)

(assert (=> mapNonEmpty!19453 (= mapRes!19452 (and tp!1312071 tp!1312075))))

(declare-fun mapValue!19452 () List!47634)

(declare-fun mapRest!19453 () (Array (_ BitVec 32) List!47634))

(declare-fun mapKey!19453 () (_ BitVec 32))

(assert (=> mapNonEmpty!19453 (= (arr!6885 (_values!4581 (v!41408 (underlying!8829 (v!41409 (underlying!8830 (cache!4346 cacheFindLongestMatch!156))))))) (store mapRest!19453 mapKey!19453 mapValue!19452))))

(declare-fun b!4285624 () Bool)

(declare-fun e!2661258 () Bool)

(assert (=> b!4285624 (= e!2661233 e!2661258)))

(declare-fun b!4285625 () Bool)

(declare-fun res!1758334 () Bool)

(assert (=> b!4285625 (=> (not res!1758334) (not e!2661236))))

(assert (=> b!4285625 (= res!1758334 (valid!3340 cacheFindLongestMatch!156))))

(declare-fun b!4285626 () Bool)

(declare-fun lt!1515819 () MutLongMap!4302)

(assert (=> b!4285626 (= e!2661259 (and e!2661240 ((_ is LongMap!4302) lt!1515819)))))

(assert (=> b!4285626 (= lt!1515819 (v!41414 (underlying!8834 (cache!4348 cacheDown!738))))))

(declare-fun b!4285627 () Bool)

(declare-fun e!2661256 () Bool)

(declare-fun inv!62964 (BalanceConc!28210) Bool)

(assert (=> b!4285627 (= e!2661256 (and e!2661250 (inv!62964 (totalInput!4310 cacheFindLongestMatch!156)) e!2661241))))

(declare-fun mapNonEmpty!19454 () Bool)

(declare-fun tp!1312060 () Bool)

(declare-fun tp!1312081 () Bool)

(assert (=> mapNonEmpty!19454 (= mapRes!19453 (and tp!1312060 tp!1312081))))

(declare-fun mapRest!19452 () (Array (_ BitVec 32) List!47638))

(declare-fun mapValue!19454 () List!47638)

(declare-fun mapKey!19454 () (_ BitVec 32))

(assert (=> mapNonEmpty!19454 (= (arr!6887 (_values!4583 (v!41413 (underlying!8833 (v!41414 (underlying!8834 (cache!4348 cacheDown!738))))))) (store mapRest!19452 mapKey!19454 mapValue!19454))))

(declare-fun b!4285628 () Bool)

(declare-fun res!1758338 () Bool)

(assert (=> b!4285628 (=> res!1758338 e!2661245)))

(assert (=> b!4285628 (= res!1758338 (not (valid!3338 (_3!3160 lt!1515816))))))

(declare-fun tp!1312063 () Bool)

(declare-fun tp!1312084 () Bool)

(declare-fun e!2661252 () Bool)

(declare-fun array_inv!4930 (array!15424) Bool)

(declare-fun array_inv!4931 (array!15430) Bool)

(assert (=> b!4285629 (= e!2661239 (and tp!1312078 tp!1312084 tp!1312063 (array_inv!4930 (_keys!4602 (v!41413 (underlying!8833 (v!41414 (underlying!8834 (cache!4348 cacheDown!738))))))) (array_inv!4931 (_values!4583 (v!41413 (underlying!8833 (v!41414 (underlying!8834 (cache!4348 cacheDown!738))))))) e!2661252))))

(declare-fun res!1758339 () Bool)

(assert (=> start!411752 (=> (not res!1758339) (not e!2661236))))

(declare-datatypes ((LexerInterface!7600 0))(
  ( (LexerInterfaceExt!7597 (__x!28933 Int)) (Lexer!7598) )
))
(declare-fun thiss!16356 () LexerInterface!7600)

(assert (=> start!411752 (= res!1758339 ((_ is Lexer!7598) thiss!16356))))

(assert (=> start!411752 e!2661236))

(assert (=> start!411752 true))

(assert (=> start!411752 e!2661225))

(assert (=> start!411752 (and (inv!62964 input!1632) e!2661254)))

(declare-fun inv!62965 (CacheDown!2866) Bool)

(assert (=> start!411752 (and (inv!62965 cacheDown!738) e!2661260)))

(declare-fun inv!62966 (CacheFindLongestMatch!408) Bool)

(assert (=> start!411752 (and (inv!62966 cacheFindLongestMatch!156) e!2661256)))

(assert (=> start!411752 (and (inv!62964 totalInput!528) e!2661246)))

(declare-fun e!2661238 () Bool)

(declare-fun inv!62967 (CacheUp!2746) Bool)

(assert (=> start!411752 (and (inv!62967 cacheUp!725) e!2661238)))

(declare-fun b!4285630 () Bool)

(assert (=> b!4285630 (= e!2661227 e!2661245)))

(declare-fun res!1758332 () Bool)

(assert (=> b!4285630 (=> res!1758332 e!2661245)))

(declare-fun maxPrefixOneRuleZipperSequenceV2!252 (LexerInterface!7600 Rule!15816 BalanceConc!28210 BalanceConc!28210) Option!10128)

(assert (=> b!4285630 (= res!1758332 (not (= e!2661248 (maxPrefixOneRuleZipperSequenceV2!252 thiss!16356 rule!232 input!1632 totalInput!528))))))

(declare-fun c!730102 () Bool)

(declare-fun isEmpty!28019 (BalanceConc!28210) Bool)

(assert (=> b!4285630 (= c!730102 (isEmpty!28019 (_1!25637 (_1!25638 lt!1515816))))))

(declare-fun e!2661244 () Bool)

(assert (=> b!4285631 (= e!2661244 (and e!2661231 tp!1312072))))

(declare-fun mapIsEmpty!19453 () Bool)

(assert (=> mapIsEmpty!19453 mapRes!19452))

(declare-fun b!4285632 () Bool)

(declare-fun e!2661251 () Bool)

(assert (=> b!4285632 (= e!2661258 e!2661251)))

(declare-fun b!4285633 () Bool)

(declare-fun res!1758336 () Bool)

(assert (=> b!4285633 (=> (not res!1758336) (not e!2661236))))

(declare-fun ruleValid!3622 (LexerInterface!7600 Rule!15816) Bool)

(assert (=> b!4285633 (= res!1758336 (ruleValid!3622 thiss!16356 rule!232))))

(declare-fun b!4285634 () Bool)

(declare-fun tp!1312061 () Bool)

(assert (=> b!4285634 (= e!2661252 (and tp!1312061 mapRes!19453))))

(declare-fun condMapEmpty!19452 () Bool)

(declare-fun mapDefault!19453 () List!47638)

(assert (=> b!4285634 (= condMapEmpty!19452 (= (arr!6887 (_values!4583 (v!41413 (underlying!8833 (v!41414 (underlying!8834 (cache!4348 cacheDown!738))))))) ((as const (Array (_ BitVec 32) List!47638)) mapDefault!19453)))))

(declare-fun mapIsEmpty!19454 () Bool)

(assert (=> mapIsEmpty!19454 mapRes!19454))

(declare-fun b!4285635 () Bool)

(declare-fun e!2661243 () Bool)

(assert (=> b!4285635 (= e!2661243 e!2661234)))

(declare-fun b!4285636 () Bool)

(declare-fun lt!1515817 () MutLongMap!4300)

(assert (=> b!4285636 (= e!2661249 (and e!2661243 ((_ is LongMap!4300) lt!1515817)))))

(assert (=> b!4285636 (= lt!1515817 (v!41409 (underlying!8830 (cache!4346 cacheFindLongestMatch!156))))))

(declare-fun tp!1312074 () Bool)

(declare-fun tp!1312080 () Bool)

(declare-fun array_inv!4932 (array!15428) Bool)

(assert (=> b!4285637 (= e!2661251 (and tp!1312066 tp!1312080 tp!1312074 (array_inv!4930 (_keys!4601 (v!41410 (underlying!8831 (v!41411 (underlying!8832 (cache!4347 cacheUp!725))))))) (array_inv!4932 (_values!4582 (v!41410 (underlying!8831 (v!41411 (underlying!8832 (cache!4347 cacheUp!725))))))) e!2661235))))

(declare-fun tp!1312059 () Bool)

(declare-fun tp!1312070 () Bool)

(declare-fun array_inv!4933 (array!15426) Bool)

(assert (=> b!4285638 (= e!2661255 (and tp!1312079 tp!1312059 tp!1312070 (array_inv!4930 (_keys!4600 (v!41408 (underlying!8829 (v!41409 (underlying!8830 (cache!4346 cacheFindLongestMatch!156))))))) (array_inv!4933 (_values!4581 (v!41408 (underlying!8829 (v!41409 (underlying!8830 (cache!4346 cacheFindLongestMatch!156))))))) e!2661226))))

(declare-fun b!4285639 () Bool)

(declare-fun matchR!6486 (Regex!12917 List!47635) Bool)

(assert (=> b!4285639 (= e!2661228 (matchR!6486 (regex!8008 rule!232) (_1!25639 lt!1515818)))))

(declare-fun b!4285640 () Bool)

(assert (=> b!4285640 (= e!2661238 e!2661244)))

(declare-fun b!4285641 () Bool)

(declare-fun res!1758329 () Bool)

(assert (=> b!4285641 (=> (not res!1758329) (not e!2661236))))

(assert (=> b!4285641 (= res!1758329 (valid!3339 cacheUp!725))))

(assert (= (and start!411752 res!1758339) b!4285633))

(assert (= (and b!4285633 res!1758336) b!4285641))

(assert (= (and b!4285641 res!1758329) b!4285615))

(assert (= (and b!4285615 res!1758337) b!4285625))

(assert (= (and b!4285625 res!1758334) b!4285606))

(assert (= (and b!4285606 res!1758335) b!4285601))

(assert (= (and b!4285601 res!1758330) b!4285610))

(assert (= (and b!4285610 res!1758333) b!4285630))

(assert (= (and b!4285630 c!730102) b!4285612))

(assert (= (and b!4285630 (not c!730102)) b!4285609))

(assert (= (and b!4285609 (not res!1758331)) b!4285639))

(assert (= (and b!4285630 (not res!1758332)) b!4285618))

(assert (= (and b!4285618 (not res!1758340)) b!4285628))

(assert (= (and b!4285628 (not res!1758338)) b!4285621))

(assert (= (and b!4285621 (not res!1758341)) b!4285613))

(assert (= b!4285611 b!4285614))

(assert (= start!411752 b!4285611))

(assert (= start!411752 b!4285602))

(assert (= (and b!4285634 condMapEmpty!19452) mapIsEmpty!19452))

(assert (= (and b!4285634 (not condMapEmpty!19452)) mapNonEmpty!19454))

(assert (= b!4285629 b!4285634))

(assert (= b!4285620 b!4285629))

(assert (= b!4285607 b!4285620))

(assert (= (and b!4285626 ((_ is LongMap!4302) (v!41414 (underlying!8834 (cache!4348 cacheDown!738))))) b!4285607))

(assert (= b!4285619 b!4285626))

(assert (= (and b!4285622 ((_ is HashMap!4208) (cache!4348 cacheDown!738))) b!4285619))

(assert (= start!411752 b!4285622))

(assert (= (and b!4285608 condMapEmpty!19454) mapIsEmpty!19453))

(assert (= (and b!4285608 (not condMapEmpty!19454)) mapNonEmpty!19453))

(assert (= b!4285638 b!4285608))

(assert (= b!4285617 b!4285638))

(assert (= b!4285635 b!4285617))

(assert (= (and b!4285636 ((_ is LongMap!4300) (v!41409 (underlying!8830 (cache!4346 cacheFindLongestMatch!156))))) b!4285635))

(assert (= b!4285604 b!4285636))

(assert (= (and b!4285627 ((_ is HashMap!4206) (cache!4346 cacheFindLongestMatch!156))) b!4285604))

(assert (= b!4285627 b!4285605))

(assert (= start!411752 b!4285627))

(assert (= start!411752 b!4285616))

(assert (= (and b!4285603 condMapEmpty!19453) mapIsEmpty!19454))

(assert (= (and b!4285603 (not condMapEmpty!19453)) mapNonEmpty!19452))

(assert (= b!4285637 b!4285603))

(assert (= b!4285632 b!4285637))

(assert (= b!4285624 b!4285632))

(assert (= (and b!4285623 ((_ is LongMap!4301) (v!41411 (underlying!8832 (cache!4347 cacheUp!725))))) b!4285624))

(assert (= b!4285631 b!4285623))

(assert (= (and b!4285640 ((_ is HashMap!4207) (cache!4347 cacheUp!725))) b!4285631))

(assert (= start!411752 b!4285640))

(declare-fun m!4881475 () Bool)

(assert (=> b!4285637 m!4881475))

(declare-fun m!4881477 () Bool)

(assert (=> b!4285637 m!4881477))

(declare-fun m!4881479 () Bool)

(assert (=> b!4285606 m!4881479))

(assert (=> b!4285606 m!4881479))

(declare-fun m!4881481 () Bool)

(assert (=> b!4285606 m!4881481))

(declare-fun m!4881483 () Bool)

(assert (=> b!4285606 m!4881483))

(declare-fun m!4881485 () Bool)

(assert (=> b!4285638 m!4881485))

(declare-fun m!4881487 () Bool)

(assert (=> b!4285638 m!4881487))

(declare-fun m!4881489 () Bool)

(assert (=> b!4285641 m!4881489))

(declare-fun m!4881491 () Bool)

(assert (=> b!4285639 m!4881491))

(declare-fun m!4881493 () Bool)

(assert (=> b!4285611 m!4881493))

(declare-fun m!4881495 () Bool)

(assert (=> b!4285611 m!4881495))

(declare-fun m!4881497 () Bool)

(assert (=> mapNonEmpty!19453 m!4881497))

(declare-fun m!4881499 () Bool)

(assert (=> mapNonEmpty!19454 m!4881499))

(declare-fun m!4881501 () Bool)

(assert (=> b!4285625 m!4881501))

(declare-fun m!4881503 () Bool)

(assert (=> b!4285627 m!4881503))

(declare-fun m!4881505 () Bool)

(assert (=> b!4285610 m!4881505))

(declare-fun m!4881507 () Bool)

(assert (=> b!4285610 m!4881507))

(declare-fun m!4881509 () Bool)

(assert (=> b!4285629 m!4881509))

(declare-fun m!4881511 () Bool)

(assert (=> b!4285629 m!4881511))

(declare-fun m!4881513 () Bool)

(assert (=> b!4285609 m!4881513))

(declare-fun m!4881515 () Bool)

(assert (=> b!4285609 m!4881515))

(declare-fun m!4881517 () Bool)

(assert (=> b!4285609 m!4881517))

(declare-fun m!4881519 () Bool)

(assert (=> b!4285609 m!4881519))

(declare-fun m!4881521 () Bool)

(assert (=> b!4285609 m!4881521))

(declare-fun m!4881523 () Bool)

(assert (=> b!4285609 m!4881523))

(declare-fun m!4881525 () Bool)

(assert (=> b!4285609 m!4881525))

(assert (=> b!4285609 m!4881521))

(declare-fun m!4881527 () Bool)

(assert (=> b!4285609 m!4881527))

(assert (=> b!4285609 m!4881519))

(declare-fun m!4881529 () Bool)

(assert (=> b!4285609 m!4881529))

(declare-fun m!4881531 () Bool)

(assert (=> b!4285602 m!4881531))

(declare-fun m!4881533 () Bool)

(assert (=> b!4285621 m!4881533))

(declare-fun m!4881535 () Bool)

(assert (=> b!4285628 m!4881535))

(declare-fun m!4881537 () Bool)

(assert (=> b!4285630 m!4881537))

(declare-fun m!4881539 () Bool)

(assert (=> b!4285630 m!4881539))

(declare-fun m!4881541 () Bool)

(assert (=> start!411752 m!4881541))

(declare-fun m!4881543 () Bool)

(assert (=> start!411752 m!4881543))

(declare-fun m!4881545 () Bool)

(assert (=> start!411752 m!4881545))

(declare-fun m!4881547 () Bool)

(assert (=> start!411752 m!4881547))

(declare-fun m!4881549 () Bool)

(assert (=> start!411752 m!4881549))

(declare-fun m!4881551 () Bool)

(assert (=> b!4285615 m!4881551))

(declare-fun m!4881553 () Bool)

(assert (=> b!4285633 m!4881553))

(declare-fun m!4881555 () Bool)

(assert (=> b!4285618 m!4881555))

(declare-fun m!4881557 () Bool)

(assert (=> b!4285605 m!4881557))

(declare-fun m!4881559 () Bool)

(assert (=> mapNonEmpty!19452 m!4881559))

(declare-fun m!4881561 () Bool)

(assert (=> b!4285616 m!4881561))

(check-sat (not b_next!127717) (not b!4285638) b_and!338225 (not b!4285628) (not b!4285641) b_and!338227 (not b!4285610) (not mapNonEmpty!19454) (not b_next!127713) (not b!4285615) (not b!4285616) b_and!338217 (not b!4285633) b_and!338219 (not b_next!127709) (not start!411752) (not b!4285603) (not b!4285611) (not b_next!127721) (not b!4285630) b_and!338221 (not b!4285602) (not b_next!127719) b_and!338213 (not b!4285639) (not b!4285608) b_and!338215 (not b!4285634) (not b!4285606) (not mapNonEmpty!19452) (not mapNonEmpty!19453) (not b!4285605) (not b_next!127707) (not b!4285637) (not b!4285621) (not b!4285618) b_and!338223 (not b_next!127711) (not b!4285629) (not b!4285627) (not b!4285609) (not b_next!127715) (not b!4285625))
(check-sat (not b_next!127717) b_and!338225 (not b_next!127721) b_and!338221 b_and!338227 (not b_next!127719) (not b_next!127713) (not b_next!127707) b_and!338217 (not b_next!127715) b_and!338219 (not b_next!127709) b_and!338213 b_and!338215 b_and!338223 (not b_next!127711))
(get-model)

(declare-fun d!1265238 () Bool)

(declare-fun validCacheMapUp!414 (MutableMap!4207) Bool)

(assert (=> d!1265238 (= (valid!3339 cacheUp!725) (validCacheMapUp!414 (cache!4347 cacheUp!725)))))

(declare-fun bs!602832 () Bool)

(assert (= bs!602832 d!1265238))

(declare-fun m!4881563 () Bool)

(assert (=> bs!602832 m!4881563))

(assert (=> b!4285641 d!1265238))

(declare-fun d!1265240 () Bool)

(declare-fun res!1758348 () Bool)

(declare-fun e!2661263 () Bool)

(assert (=> d!1265240 (=> (not res!1758348) (not e!2661263))))

(declare-fun validRegex!5841 (Regex!12917) Bool)

(assert (=> d!1265240 (= res!1758348 (validRegex!5841 (regex!8008 rule!232)))))

(assert (=> d!1265240 (= (ruleValid!3622 thiss!16356 rule!232) e!2661263)))

(declare-fun b!4285646 () Bool)

(declare-fun res!1758349 () Bool)

(assert (=> b!4285646 (=> (not res!1758349) (not e!2661263))))

(declare-fun nullable!4533 (Regex!12917) Bool)

(assert (=> b!4285646 (= res!1758349 (not (nullable!4533 (regex!8008 rule!232))))))

(declare-fun b!4285647 () Bool)

(assert (=> b!4285647 (= e!2661263 (not (= (tag!8872 rule!232) (String!55589 ""))))))

(assert (= (and d!1265240 res!1758348) b!4285646))

(assert (= (and b!4285646 res!1758349) b!4285647))

(declare-fun m!4881565 () Bool)

(assert (=> d!1265240 m!4881565))

(declare-fun m!4881567 () Bool)

(assert (=> b!4285646 m!4881567))

(assert (=> b!4285633 d!1265240))

(declare-fun d!1265242 () Bool)

(declare-fun validCacheMapDown!445 (MutableMap!4208) Bool)

(assert (=> d!1265242 (= (valid!3338 cacheDown!738) (validCacheMapDown!445 (cache!4348 cacheDown!738)))))

(declare-fun bs!602833 () Bool)

(assert (= bs!602833 d!1265242))

(declare-fun m!4881569 () Bool)

(assert (=> bs!602833 m!4881569))

(assert (=> b!4285615 d!1265242))

(declare-fun d!1265244 () Bool)

(declare-fun validCacheMapFindLongestMatch!71 (MutableMap!4206 BalanceConc!28210) Bool)

(assert (=> d!1265244 (= (valid!3340 cacheFindLongestMatch!156) (validCacheMapFindLongestMatch!71 (cache!4346 cacheFindLongestMatch!156) (totalInput!4310 cacheFindLongestMatch!156)))))

(declare-fun bs!602834 () Bool)

(assert (= bs!602834 d!1265244))

(declare-fun m!4881571 () Bool)

(assert (=> bs!602834 m!4881571))

(assert (=> b!4285625 d!1265244))

(declare-fun d!1265246 () Bool)

(declare-fun c!730107 () Bool)

(assert (=> d!1265246 (= c!730107 ((_ is Node!14360) (c!730104 (totalInput!4310 cacheFindLongestMatch!156))))))

(declare-fun e!2661268 () Bool)

(assert (=> d!1265246 (= (inv!62962 (c!730104 (totalInput!4310 cacheFindLongestMatch!156))) e!2661268)))

(declare-fun b!4285654 () Bool)

(declare-fun inv!62968 (Conc!14360) Bool)

(assert (=> b!4285654 (= e!2661268 (inv!62968 (c!730104 (totalInput!4310 cacheFindLongestMatch!156))))))

(declare-fun b!4285655 () Bool)

(declare-fun e!2661269 () Bool)

(assert (=> b!4285655 (= e!2661268 e!2661269)))

(declare-fun res!1758352 () Bool)

(assert (=> b!4285655 (= res!1758352 (not ((_ is Leaf!22220) (c!730104 (totalInput!4310 cacheFindLongestMatch!156)))))))

(assert (=> b!4285655 (=> res!1758352 e!2661269)))

(declare-fun b!4285656 () Bool)

(declare-fun inv!62969 (Conc!14360) Bool)

(assert (=> b!4285656 (= e!2661269 (inv!62969 (c!730104 (totalInput!4310 cacheFindLongestMatch!156))))))

(assert (= (and d!1265246 c!730107) b!4285654))

(assert (= (and d!1265246 (not c!730107)) b!4285655))

(assert (= (and b!4285655 (not res!1758352)) b!4285656))

(declare-fun m!4881573 () Bool)

(assert (=> b!4285654 m!4881573))

(declare-fun m!4881575 () Bool)

(assert (=> b!4285656 m!4881575))

(assert (=> b!4285605 d!1265246))

(declare-fun d!1265248 () Bool)

(declare-fun c!730108 () Bool)

(assert (=> d!1265248 (= c!730108 ((_ is Node!14360) (c!730104 totalInput!528)))))

(declare-fun e!2661270 () Bool)

(assert (=> d!1265248 (= (inv!62962 (c!730104 totalInput!528)) e!2661270)))

(declare-fun b!4285657 () Bool)

(assert (=> b!4285657 (= e!2661270 (inv!62968 (c!730104 totalInput!528)))))

(declare-fun b!4285658 () Bool)

(declare-fun e!2661271 () Bool)

(assert (=> b!4285658 (= e!2661270 e!2661271)))

(declare-fun res!1758353 () Bool)

(assert (=> b!4285658 (= res!1758353 (not ((_ is Leaf!22220) (c!730104 totalInput!528))))))

(assert (=> b!4285658 (=> res!1758353 e!2661271)))

(declare-fun b!4285659 () Bool)

(assert (=> b!4285659 (= e!2661271 (inv!62969 (c!730104 totalInput!528)))))

(assert (= (and d!1265248 c!730108) b!4285657))

(assert (= (and d!1265248 (not c!730108)) b!4285658))

(assert (= (and b!4285658 (not res!1758353)) b!4285659))

(declare-fun m!4881577 () Bool)

(assert (=> b!4285657 m!4881577))

(declare-fun m!4881579 () Bool)

(assert (=> b!4285659 m!4881579))

(assert (=> b!4285616 d!1265248))

(declare-fun d!1265250 () Bool)

(declare-fun e!2661274 () Bool)

(assert (=> d!1265250 e!2661274))

(declare-fun res!1758356 () Bool)

(assert (=> d!1265250 (=> res!1758356 e!2661274)))

(declare-fun lt!1515826 () Bool)

(assert (=> d!1265250 (= res!1758356 (not lt!1515826))))

(declare-fun drop!2187 (List!47635 Int) List!47635)

(assert (=> d!1265250 (= lt!1515826 (= lt!1515823 (drop!2187 (list!17328 totalInput!528) (- (size!34829 (list!17328 totalInput!528)) (size!34829 lt!1515823)))))))

(assert (=> d!1265250 (= (isSuffix!1014 lt!1515823 (list!17328 totalInput!528)) lt!1515826)))

(declare-fun b!4285662 () Bool)

(assert (=> b!4285662 (= e!2661274 (>= (size!34829 (list!17328 totalInput!528)) (size!34829 lt!1515823)))))

(assert (= (and d!1265250 (not res!1758356)) b!4285662))

(assert (=> d!1265250 m!4881479))

(declare-fun m!4881581 () Bool)

(assert (=> d!1265250 m!4881581))

(assert (=> d!1265250 m!4881521))

(assert (=> d!1265250 m!4881479))

(declare-fun m!4881583 () Bool)

(assert (=> d!1265250 m!4881583))

(assert (=> b!4285662 m!4881479))

(assert (=> b!4285662 m!4881581))

(assert (=> b!4285662 m!4881521))

(assert (=> b!4285606 d!1265250))

(declare-fun d!1265252 () Bool)

(declare-fun list!17329 (Conc!14360) List!47635)

(assert (=> d!1265252 (= (list!17328 totalInput!528) (list!17329 (c!730104 totalInput!528)))))

(declare-fun bs!602835 () Bool)

(assert (= bs!602835 d!1265252))

(declare-fun m!4881585 () Bool)

(assert (=> bs!602835 m!4881585))

(assert (=> b!4285606 d!1265252))

(declare-fun d!1265254 () Bool)

(assert (=> d!1265254 (= (list!17328 input!1632) (list!17329 (c!730104 input!1632)))))

(declare-fun bs!602836 () Bool)

(assert (= bs!602836 d!1265254))

(declare-fun m!4881587 () Bool)

(assert (=> bs!602836 m!4881587))

(assert (=> b!4285606 d!1265254))

(declare-fun d!1265256 () Bool)

(declare-fun isBalanced!3878 (Conc!14360) Bool)

(assert (=> d!1265256 (= (inv!62964 (totalInput!4310 cacheFindLongestMatch!156)) (isBalanced!3878 (c!730104 (totalInput!4310 cacheFindLongestMatch!156))))))

(declare-fun bs!602837 () Bool)

(assert (= bs!602837 d!1265256))

(declare-fun m!4881589 () Bool)

(assert (=> bs!602837 m!4881589))

(assert (=> b!4285627 d!1265256))

(declare-fun d!1265258 () Bool)

(assert (=> d!1265258 (= (valid!3339 (_2!25638 lt!1515816)) (validCacheMapUp!414 (cache!4347 (_2!25638 lt!1515816))))))

(declare-fun bs!602838 () Bool)

(assert (= bs!602838 d!1265258))

(declare-fun m!4881591 () Bool)

(assert (=> bs!602838 m!4881591))

(assert (=> b!4285618 d!1265258))

(declare-fun d!1265260 () Bool)

(assert (=> d!1265260 (= (valid!3338 (_3!3160 lt!1515816)) (validCacheMapDown!445 (cache!4348 (_3!3160 lt!1515816))))))

(declare-fun bs!602839 () Bool)

(assert (= bs!602839 d!1265260))

(declare-fun m!4881593 () Bool)

(assert (=> bs!602839 m!4881593))

(assert (=> b!4285628 d!1265260))

(declare-fun d!1265262 () Bool)

(assert (=> d!1265262 (= (list!17328 (_1!25637 (_1!25638 lt!1515816))) (list!17329 (c!730104 (_1!25637 (_1!25638 lt!1515816)))))))

(declare-fun bs!602840 () Bool)

(assert (= bs!602840 d!1265262))

(declare-fun m!4881595 () Bool)

(assert (=> bs!602840 m!4881595))

(assert (=> b!4285609 d!1265262))

(declare-fun d!1265264 () Bool)

(declare-fun lt!1515829 () Int)

(assert (=> d!1265264 (>= lt!1515829 0)))

(declare-fun e!2661277 () Int)

(assert (=> d!1265264 (= lt!1515829 e!2661277)))

(declare-fun c!730111 () Bool)

(assert (=> d!1265264 (= c!730111 ((_ is Nil!47511) Nil!47511))))

(assert (=> d!1265264 (= (size!34829 Nil!47511) lt!1515829)))

(declare-fun b!4285667 () Bool)

(assert (=> b!4285667 (= e!2661277 0)))

(declare-fun b!4285668 () Bool)

(assert (=> b!4285668 (= e!2661277 (+ 1 (size!34829 (t!354230 Nil!47511))))))

(assert (= (and d!1265264 c!730111) b!4285667))

(assert (= (and d!1265264 (not c!730111)) b!4285668))

(declare-fun m!4881597 () Bool)

(assert (=> b!4285668 m!4881597))

(assert (=> b!4285609 d!1265264))

(declare-fun d!1265266 () Bool)

(declare-fun dynLambda!20321 (Int BalanceConc!28210) TokenValue!8318)

(assert (=> d!1265266 (= (apply!10826 (transformation!8008 rule!232) (_1!25637 (_1!25638 lt!1515816))) (dynLambda!20321 (toValue!10859 (transformation!8008 rule!232)) (_1!25637 (_1!25638 lt!1515816))))))

(declare-fun b_lambda!126105 () Bool)

(assert (=> (not b_lambda!126105) (not d!1265266)))

(declare-fun t!354235 () Bool)

(declare-fun tb!257089 () Bool)

(assert (=> (and b!4285614 (= (toValue!10859 (transformation!8008 rule!232)) (toValue!10859 (transformation!8008 rule!232))) t!354235) tb!257089))

(declare-fun result!314064 () Bool)

(declare-fun inv!21 (TokenValue!8318) Bool)

(assert (=> tb!257089 (= result!314064 (inv!21 (dynLambda!20321 (toValue!10859 (transformation!8008 rule!232)) (_1!25637 (_1!25638 lt!1515816)))))))

(declare-fun m!4881599 () Bool)

(assert (=> tb!257089 m!4881599))

(assert (=> d!1265266 t!354235))

(declare-fun b_and!338229 () Bool)

(assert (= b_and!338213 (and (=> t!354235 result!314064) b_and!338229)))

(declare-fun m!4881601 () Bool)

(assert (=> d!1265266 m!4881601))

(assert (=> b!4285609 d!1265266))

(declare-fun d!1265268 () Bool)

(declare-fun lt!1515830 () Int)

(assert (=> d!1265268 (>= lt!1515830 0)))

(declare-fun e!2661281 () Int)

(assert (=> d!1265268 (= lt!1515830 e!2661281)))

(declare-fun c!730112 () Bool)

(assert (=> d!1265268 (= c!730112 ((_ is Nil!47511) lt!1515823))))

(assert (=> d!1265268 (= (size!34829 lt!1515823) lt!1515830)))

(declare-fun b!4285671 () Bool)

(assert (=> b!4285671 (= e!2661281 0)))

(declare-fun b!4285672 () Bool)

(assert (=> b!4285672 (= e!2661281 (+ 1 (size!34829 (t!354230 lt!1515823))))))

(assert (= (and d!1265268 c!730112) b!4285671))

(assert (= (and d!1265268 (not c!730112)) b!4285672))

(declare-fun m!4881603 () Bool)

(assert (=> b!4285672 m!4881603))

(assert (=> b!4285609 d!1265268))

(declare-fun d!1265270 () Bool)

(assert (=> d!1265270 (= (isEmpty!28018 (_1!25639 lt!1515818)) ((_ is Nil!47511) (_1!25639 lt!1515818)))))

(assert (=> b!4285609 d!1265270))

(declare-fun b!4285677 () Bool)

(declare-fun e!2661284 () Bool)

(assert (=> b!4285677 (= e!2661284 true)))

(declare-fun d!1265272 () Bool)

(assert (=> d!1265272 e!2661284))

(assert (= d!1265272 b!4285677))

(declare-fun order!25037 () Int)

(declare-fun lambda!131480 () Int)

(declare-fun order!25035 () Int)

(declare-fun dynLambda!20322 (Int Int) Int)

(declare-fun dynLambda!20323 (Int Int) Int)

(assert (=> b!4285677 (< (dynLambda!20322 order!25035 (toValue!10859 (transformation!8008 rule!232))) (dynLambda!20323 order!25037 lambda!131480))))

(declare-fun order!25039 () Int)

(declare-fun dynLambda!20324 (Int Int) Int)

(assert (=> b!4285677 (< (dynLambda!20324 order!25039 (toChars!10718 (transformation!8008 rule!232))) (dynLambda!20323 order!25037 lambda!131480))))

(declare-fun dynLambda!20325 (Int TokenValue!8318) BalanceConc!28210)

(assert (=> d!1265272 (= (list!17328 (dynLambda!20325 (toChars!10718 (transformation!8008 rule!232)) (dynLambda!20321 (toValue!10859 (transformation!8008 rule!232)) (_1!25637 (_1!25638 lt!1515816))))) (list!17328 (_1!25637 (_1!25638 lt!1515816))))))

(declare-fun lt!1515833 () Unit!66382)

(declare-fun ForallOf!1095 (Int BalanceConc!28210) Unit!66382)

(assert (=> d!1265272 (= lt!1515833 (ForallOf!1095 lambda!131480 (_1!25637 (_1!25638 lt!1515816))))))

(assert (=> d!1265272 (= (lemmaSemiInverse!2546 (transformation!8008 rule!232) (_1!25637 (_1!25638 lt!1515816))) lt!1515833)))

(declare-fun b_lambda!126107 () Bool)

(assert (=> (not b_lambda!126107) (not d!1265272)))

(declare-fun t!354237 () Bool)

(declare-fun tb!257091 () Bool)

(assert (=> (and b!4285614 (= (toChars!10718 (transformation!8008 rule!232)) (toChars!10718 (transformation!8008 rule!232))) t!354237) tb!257091))

(declare-fun b!4285682 () Bool)

(declare-fun tp!1312088 () Bool)

(declare-fun e!2661287 () Bool)

(assert (=> b!4285682 (= e!2661287 (and (inv!62962 (c!730104 (dynLambda!20325 (toChars!10718 (transformation!8008 rule!232)) (dynLambda!20321 (toValue!10859 (transformation!8008 rule!232)) (_1!25637 (_1!25638 lt!1515816)))))) tp!1312088))))

(declare-fun result!314068 () Bool)

(assert (=> tb!257091 (= result!314068 (and (inv!62964 (dynLambda!20325 (toChars!10718 (transformation!8008 rule!232)) (dynLambda!20321 (toValue!10859 (transformation!8008 rule!232)) (_1!25637 (_1!25638 lt!1515816))))) e!2661287))))

(assert (= tb!257091 b!4285682))

(declare-fun m!4881605 () Bool)

(assert (=> b!4285682 m!4881605))

(declare-fun m!4881607 () Bool)

(assert (=> tb!257091 m!4881607))

(assert (=> d!1265272 t!354237))

(declare-fun b_and!338231 () Bool)

(assert (= b_and!338215 (and (=> t!354237 result!314068) b_and!338231)))

(declare-fun b_lambda!126109 () Bool)

(assert (=> (not b_lambda!126109) (not d!1265272)))

(assert (=> d!1265272 t!354235))

(declare-fun b_and!338233 () Bool)

(assert (= b_and!338229 (and (=> t!354235 result!314064) b_and!338233)))

(declare-fun m!4881609 () Bool)

(assert (=> d!1265272 m!4881609))

(declare-fun m!4881611 () Bool)

(assert (=> d!1265272 m!4881611))

(declare-fun m!4881613 () Bool)

(assert (=> d!1265272 m!4881613))

(assert (=> d!1265272 m!4881601))

(assert (=> d!1265272 m!4881601))

(assert (=> d!1265272 m!4881609))

(assert (=> d!1265272 m!4881527))

(assert (=> b!4285609 d!1265272))

(declare-fun bm!294479 () Bool)

(declare-fun call!294486 () Unit!66382)

(declare-fun lemmaIsPrefixRefl!3157 (List!47635 List!47635) Unit!66382)

(assert (=> bm!294479 (= call!294486 (lemmaIsPrefixRefl!3157 lt!1515823 lt!1515823))))

(declare-fun b!4285711 () Bool)

(declare-fun e!2661310 () Unit!66382)

(declare-fun Unit!66384 () Unit!66382)

(assert (=> b!4285711 (= e!2661310 Unit!66384)))

(declare-fun b!4285712 () Bool)

(declare-fun e!2661305 () Bool)

(declare-fun e!2661308 () Bool)

(assert (=> b!4285712 (= e!2661305 e!2661308)))

(declare-fun res!1758362 () Bool)

(assert (=> b!4285712 (=> res!1758362 e!2661308)))

(declare-fun lt!1515916 () tuple2!44956)

(assert (=> b!4285712 (= res!1758362 (isEmpty!28018 (_1!25639 lt!1515916)))))

(declare-fun b!4285713 () Bool)

(declare-fun e!2661307 () tuple2!44956)

(assert (=> b!4285713 (= e!2661307 (tuple2!44957 Nil!47511 Nil!47511))))

(declare-fun bm!294480 () Bool)

(declare-fun call!294491 () C!26032)

(declare-fun head!9019 (List!47635) C!26032)

(assert (=> bm!294480 (= call!294491 (head!9019 lt!1515823))))

(declare-fun d!1265274 () Bool)

(assert (=> d!1265274 e!2661305))

(declare-fun res!1758361 () Bool)

(assert (=> d!1265274 (=> (not res!1758361) (not e!2661305))))

(declare-fun ++!12107 (List!47635 List!47635) List!47635)

(assert (=> d!1265274 (= res!1758361 (= (++!12107 (_1!25639 lt!1515916) (_2!25639 lt!1515916)) lt!1515823))))

(declare-fun e!2661311 () tuple2!44956)

(assert (=> d!1265274 (= lt!1515916 e!2661311)))

(declare-fun c!730131 () Bool)

(declare-fun lostCause!1067 (Regex!12917) Bool)

(assert (=> d!1265274 (= c!730131 (lostCause!1067 (regex!8008 rule!232)))))

(declare-fun lt!1515894 () Unit!66382)

(declare-fun Unit!66385 () Unit!66382)

(assert (=> d!1265274 (= lt!1515894 Unit!66385)))

(declare-fun getSuffix!2868 (List!47635 List!47635) List!47635)

(assert (=> d!1265274 (= (getSuffix!2868 lt!1515823 Nil!47511) lt!1515823)))

(declare-fun lt!1515917 () Unit!66382)

(declare-fun lt!1515900 () Unit!66382)

(assert (=> d!1265274 (= lt!1515917 lt!1515900)))

(declare-fun lt!1515903 () List!47635)

(assert (=> d!1265274 (= lt!1515823 lt!1515903)))

(declare-fun lemmaSamePrefixThenSameSuffix!2284 (List!47635 List!47635 List!47635 List!47635 List!47635) Unit!66382)

(assert (=> d!1265274 (= lt!1515900 (lemmaSamePrefixThenSameSuffix!2284 Nil!47511 lt!1515823 Nil!47511 lt!1515903 lt!1515823))))

(assert (=> d!1265274 (= lt!1515903 (getSuffix!2868 lt!1515823 Nil!47511))))

(declare-fun lt!1515911 () Unit!66382)

(declare-fun lt!1515892 () Unit!66382)

(assert (=> d!1265274 (= lt!1515911 lt!1515892)))

(declare-fun isPrefix!4760 (List!47635 List!47635) Bool)

(assert (=> d!1265274 (isPrefix!4760 Nil!47511 (++!12107 Nil!47511 lt!1515823))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3104 (List!47635 List!47635) Unit!66382)

(assert (=> d!1265274 (= lt!1515892 (lemmaConcatTwoListThenFirstIsPrefix!3104 Nil!47511 lt!1515823))))

(assert (=> d!1265274 (validRegex!5841 (regex!8008 rule!232))))

(assert (=> d!1265274 (= (findLongestMatchInner!1715 (regex!8008 rule!232) Nil!47511 (size!34829 Nil!47511) lt!1515823 lt!1515823 (size!34829 lt!1515823)) lt!1515916)))

(declare-fun bm!294481 () Bool)

(declare-fun call!294490 () List!47635)

(declare-fun tail!6890 (List!47635) List!47635)

(assert (=> bm!294481 (= call!294490 (tail!6890 lt!1515823))))

(declare-fun b!4285714 () Bool)

(declare-fun e!2661304 () tuple2!44956)

(assert (=> b!4285714 (= e!2661311 e!2661304)))

(declare-fun c!730127 () Bool)

(assert (=> b!4285714 (= c!730127 (= (size!34829 Nil!47511) (size!34829 lt!1515823)))))

(declare-fun b!4285715 () Bool)

(declare-fun e!2661306 () tuple2!44956)

(declare-fun e!2661309 () tuple2!44956)

(assert (=> b!4285715 (= e!2661306 e!2661309)))

(declare-fun lt!1515899 () tuple2!44956)

(declare-fun call!294487 () tuple2!44956)

(assert (=> b!4285715 (= lt!1515899 call!294487)))

(declare-fun c!730129 () Bool)

(assert (=> b!4285715 (= c!730129 (isEmpty!28018 (_1!25639 lt!1515899)))))

(declare-fun bm!294482 () Bool)

(declare-fun call!294485 () Regex!12917)

(declare-fun derivativeStep!3859 (Regex!12917 C!26032) Regex!12917)

(assert (=> bm!294482 (= call!294485 (derivativeStep!3859 (regex!8008 rule!232) call!294491))))

(declare-fun b!4285716 () Bool)

(assert (=> b!4285716 (= e!2661309 (tuple2!44957 Nil!47511 lt!1515823))))

(declare-fun bm!294483 () Bool)

(declare-fun call!294489 () Bool)

(assert (=> bm!294483 (= call!294489 (isPrefix!4760 lt!1515823 lt!1515823))))

(declare-fun b!4285717 () Bool)

(assert (=> b!4285717 (= e!2661308 (>= (size!34829 (_1!25639 lt!1515916)) (size!34829 Nil!47511)))))

(declare-fun bm!294484 () Bool)

(declare-fun lt!1515914 () List!47635)

(assert (=> bm!294484 (= call!294487 (findLongestMatchInner!1715 call!294485 lt!1515914 (+ (size!34829 Nil!47511) 1) call!294490 lt!1515823 (size!34829 lt!1515823)))))

(declare-fun b!4285718 () Bool)

(declare-fun Unit!66386 () Unit!66382)

(assert (=> b!4285718 (= e!2661310 Unit!66386)))

(declare-fun lt!1515891 () Unit!66382)

(assert (=> b!4285718 (= lt!1515891 call!294486)))

(assert (=> b!4285718 call!294489))

(declare-fun lt!1515915 () Unit!66382)

(assert (=> b!4285718 (= lt!1515915 lt!1515891)))

(declare-fun lt!1515896 () Unit!66382)

(declare-fun call!294488 () Unit!66382)

(assert (=> b!4285718 (= lt!1515896 call!294488)))

(assert (=> b!4285718 (= lt!1515823 Nil!47511)))

(declare-fun lt!1515893 () Unit!66382)

(assert (=> b!4285718 (= lt!1515893 lt!1515896)))

(assert (=> b!4285718 false))

(declare-fun b!4285719 () Bool)

(assert (=> b!4285719 (= e!2661306 call!294487)))

(declare-fun b!4285720 () Bool)

(declare-fun c!730130 () Bool)

(declare-fun call!294484 () Bool)

(assert (=> b!4285720 (= c!730130 call!294484)))

(declare-fun lt!1515905 () Unit!66382)

(declare-fun lt!1515908 () Unit!66382)

(assert (=> b!4285720 (= lt!1515905 lt!1515908)))

(assert (=> b!4285720 (= lt!1515823 Nil!47511)))

(assert (=> b!4285720 (= lt!1515908 call!294488)))

(declare-fun lt!1515898 () Unit!66382)

(declare-fun lt!1515897 () Unit!66382)

(assert (=> b!4285720 (= lt!1515898 lt!1515897)))

(assert (=> b!4285720 call!294489))

(assert (=> b!4285720 (= lt!1515897 call!294486)))

(assert (=> b!4285720 (= e!2661304 e!2661307)))

(declare-fun b!4285721 () Bool)

(declare-fun c!730128 () Bool)

(assert (=> b!4285721 (= c!730128 call!294484)))

(declare-fun lt!1515910 () Unit!66382)

(declare-fun lt!1515913 () Unit!66382)

(assert (=> b!4285721 (= lt!1515910 lt!1515913)))

(declare-fun lt!1515912 () C!26032)

(declare-fun lt!1515906 () List!47635)

(assert (=> b!4285721 (= (++!12107 (++!12107 Nil!47511 (Cons!47511 lt!1515912 Nil!47511)) lt!1515906) lt!1515823)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1311 (List!47635 C!26032 List!47635 List!47635) Unit!66382)

(assert (=> b!4285721 (= lt!1515913 (lemmaMoveElementToOtherListKeepsConcatEq!1311 Nil!47511 lt!1515912 lt!1515906 lt!1515823))))

(assert (=> b!4285721 (= lt!1515906 (tail!6890 lt!1515823))))

(assert (=> b!4285721 (= lt!1515912 (head!9019 lt!1515823))))

(declare-fun lt!1515907 () Unit!66382)

(declare-fun lt!1515895 () Unit!66382)

(assert (=> b!4285721 (= lt!1515907 lt!1515895)))

(assert (=> b!4285721 (isPrefix!4760 (++!12107 Nil!47511 (Cons!47511 (head!9019 (getSuffix!2868 lt!1515823 Nil!47511)) Nil!47511)) lt!1515823)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!693 (List!47635 List!47635) Unit!66382)

(assert (=> b!4285721 (= lt!1515895 (lemmaAddHeadSuffixToPrefixStillPrefix!693 Nil!47511 lt!1515823))))

(declare-fun lt!1515890 () Unit!66382)

(declare-fun lt!1515902 () Unit!66382)

(assert (=> b!4285721 (= lt!1515890 lt!1515902)))

(assert (=> b!4285721 (= lt!1515902 (lemmaAddHeadSuffixToPrefixStillPrefix!693 Nil!47511 lt!1515823))))

(assert (=> b!4285721 (= lt!1515914 (++!12107 Nil!47511 (Cons!47511 (head!9019 lt!1515823) Nil!47511)))))

(declare-fun lt!1515904 () Unit!66382)

(assert (=> b!4285721 (= lt!1515904 e!2661310)))

(declare-fun c!730126 () Bool)

(assert (=> b!4285721 (= c!730126 (= (size!34829 Nil!47511) (size!34829 lt!1515823)))))

(declare-fun lt!1515901 () Unit!66382)

(declare-fun lt!1515909 () Unit!66382)

(assert (=> b!4285721 (= lt!1515901 lt!1515909)))

(assert (=> b!4285721 (<= (size!34829 Nil!47511) (size!34829 lt!1515823))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!605 (List!47635 List!47635) Unit!66382)

(assert (=> b!4285721 (= lt!1515909 (lemmaIsPrefixThenSmallerEqSize!605 Nil!47511 lt!1515823))))

(assert (=> b!4285721 (= e!2661304 e!2661306)))

(declare-fun bm!294485 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1039 (List!47635 List!47635 List!47635) Unit!66382)

(assert (=> bm!294485 (= call!294488 (lemmaIsPrefixSameLengthThenSameList!1039 lt!1515823 Nil!47511 lt!1515823))))

(declare-fun bm!294486 () Bool)

(assert (=> bm!294486 (= call!294484 (nullable!4533 (regex!8008 rule!232)))))

(declare-fun b!4285722 () Bool)

(assert (=> b!4285722 (= e!2661309 lt!1515899)))

(declare-fun b!4285723 () Bool)

(assert (=> b!4285723 (= e!2661311 (tuple2!44957 Nil!47511 lt!1515823))))

(declare-fun b!4285724 () Bool)

(assert (=> b!4285724 (= e!2661307 (tuple2!44957 Nil!47511 lt!1515823))))

(assert (= (and d!1265274 c!730131) b!4285723))

(assert (= (and d!1265274 (not c!730131)) b!4285714))

(assert (= (and b!4285714 c!730127) b!4285720))

(assert (= (and b!4285714 (not c!730127)) b!4285721))

(assert (= (and b!4285720 c!730130) b!4285713))

(assert (= (and b!4285720 (not c!730130)) b!4285724))

(assert (= (and b!4285721 c!730126) b!4285718))

(assert (= (and b!4285721 (not c!730126)) b!4285711))

(assert (= (and b!4285721 c!730128) b!4285715))

(assert (= (and b!4285721 (not c!730128)) b!4285719))

(assert (= (and b!4285715 c!730129) b!4285716))

(assert (= (and b!4285715 (not c!730129)) b!4285722))

(assert (= (or b!4285715 b!4285719) bm!294481))

(assert (= (or b!4285715 b!4285719) bm!294480))

(assert (= (or b!4285715 b!4285719) bm!294482))

(assert (= (or b!4285715 b!4285719) bm!294484))

(assert (= (or b!4285720 b!4285718) bm!294485))

(assert (= (or b!4285720 b!4285718) bm!294479))

(assert (= (or b!4285720 b!4285718) bm!294483))

(assert (= (or b!4285720 b!4285721) bm!294486))

(assert (= (and d!1265274 res!1758361) b!4285712))

(assert (= (and b!4285712 (not res!1758362)) b!4285717))

(declare-fun m!4881615 () Bool)

(assert (=> b!4285717 m!4881615))

(assert (=> b!4285717 m!4881519))

(declare-fun m!4881617 () Bool)

(assert (=> bm!294485 m!4881617))

(declare-fun m!4881619 () Bool)

(assert (=> bm!294482 m!4881619))

(declare-fun m!4881621 () Bool)

(assert (=> b!4285712 m!4881621))

(assert (=> bm!294484 m!4881521))

(declare-fun m!4881623 () Bool)

(assert (=> bm!294484 m!4881623))

(assert (=> bm!294486 m!4881567))

(assert (=> b!4285721 m!4881521))

(declare-fun m!4881625 () Bool)

(assert (=> b!4285721 m!4881625))

(declare-fun m!4881627 () Bool)

(assert (=> b!4285721 m!4881627))

(assert (=> b!4285721 m!4881625))

(declare-fun m!4881629 () Bool)

(assert (=> b!4285721 m!4881629))

(declare-fun m!4881631 () Bool)

(assert (=> b!4285721 m!4881631))

(declare-fun m!4881633 () Bool)

(assert (=> b!4285721 m!4881633))

(declare-fun m!4881635 () Bool)

(assert (=> b!4285721 m!4881635))

(declare-fun m!4881637 () Bool)

(assert (=> b!4285721 m!4881637))

(assert (=> b!4285721 m!4881519))

(declare-fun m!4881639 () Bool)

(assert (=> b!4285721 m!4881639))

(assert (=> b!4285721 m!4881627))

(declare-fun m!4881641 () Bool)

(assert (=> b!4285721 m!4881641))

(declare-fun m!4881643 () Bool)

(assert (=> b!4285721 m!4881643))

(declare-fun m!4881645 () Bool)

(assert (=> b!4285721 m!4881645))

(assert (=> b!4285721 m!4881633))

(declare-fun m!4881647 () Bool)

(assert (=> b!4285721 m!4881647))

(declare-fun m!4881649 () Bool)

(assert (=> bm!294483 m!4881649))

(declare-fun m!4881651 () Bool)

(assert (=> bm!294479 m!4881651))

(declare-fun m!4881653 () Bool)

(assert (=> d!1265274 m!4881653))

(declare-fun m!4881655 () Bool)

(assert (=> d!1265274 m!4881655))

(assert (=> d!1265274 m!4881565))

(declare-fun m!4881657 () Bool)

(assert (=> d!1265274 m!4881657))

(declare-fun m!4881659 () Bool)

(assert (=> d!1265274 m!4881659))

(assert (=> d!1265274 m!4881659))

(declare-fun m!4881661 () Bool)

(assert (=> d!1265274 m!4881661))

(assert (=> d!1265274 m!4881627))

(declare-fun m!4881663 () Bool)

(assert (=> d!1265274 m!4881663))

(assert (=> bm!294480 m!4881645))

(declare-fun m!4881665 () Bool)

(assert (=> b!4285715 m!4881665))

(assert (=> bm!294481 m!4881639))

(assert (=> b!4285609 d!1265274))

(declare-fun d!1265276 () Bool)

(declare-fun lt!1515920 () Int)

(assert (=> d!1265276 (= lt!1515920 (size!34829 (list!17328 (_1!25637 (_1!25638 lt!1515816)))))))

(declare-fun size!34830 (Conc!14360) Int)

(assert (=> d!1265276 (= lt!1515920 (size!34830 (c!730104 (_1!25637 (_1!25638 lt!1515816)))))))

(assert (=> d!1265276 (= (size!34828 (_1!25637 (_1!25638 lt!1515816))) lt!1515920)))

(declare-fun bs!602841 () Bool)

(assert (= bs!602841 d!1265276))

(assert (=> bs!602841 m!4881527))

(assert (=> bs!602841 m!4881527))

(declare-fun m!4881667 () Bool)

(assert (=> bs!602841 m!4881667))

(declare-fun m!4881669 () Bool)

(assert (=> bs!602841 m!4881669))

(assert (=> b!4285609 d!1265276))

(declare-fun d!1265278 () Bool)

(declare-fun e!2661314 () Bool)

(assert (=> d!1265278 e!2661314))

(declare-fun res!1758365 () Bool)

(assert (=> d!1265278 (=> res!1758365 e!2661314)))

(assert (=> d!1265278 (= res!1758365 (isEmpty!28018 (_1!25639 (findLongestMatchInner!1715 (regex!8008 rule!232) Nil!47511 (size!34829 Nil!47511) lt!1515823 lt!1515823 (size!34829 lt!1515823)))))))

(declare-fun lt!1515923 () Unit!66382)

(declare-fun choose!26135 (Regex!12917 List!47635) Unit!66382)

(assert (=> d!1265278 (= lt!1515923 (choose!26135 (regex!8008 rule!232) lt!1515823))))

(assert (=> d!1265278 (validRegex!5841 (regex!8008 rule!232))))

(assert (=> d!1265278 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1678 (regex!8008 rule!232) lt!1515823) lt!1515923)))

(declare-fun b!4285727 () Bool)

(assert (=> b!4285727 (= e!2661314 (matchR!6486 (regex!8008 rule!232) (_1!25639 (findLongestMatchInner!1715 (regex!8008 rule!232) Nil!47511 (size!34829 Nil!47511) lt!1515823 lt!1515823 (size!34829 lt!1515823)))))))

(assert (= (and d!1265278 (not res!1758365)) b!4285727))

(assert (=> d!1265278 m!4881519))

(assert (=> d!1265278 m!4881521))

(assert (=> d!1265278 m!4881523))

(assert (=> d!1265278 m!4881521))

(declare-fun m!4881671 () Bool)

(assert (=> d!1265278 m!4881671))

(assert (=> d!1265278 m!4881519))

(assert (=> d!1265278 m!4881565))

(declare-fun m!4881673 () Bool)

(assert (=> d!1265278 m!4881673))

(assert (=> b!4285727 m!4881519))

(assert (=> b!4285727 m!4881521))

(assert (=> b!4285727 m!4881519))

(assert (=> b!4285727 m!4881521))

(assert (=> b!4285727 m!4881523))

(declare-fun m!4881675 () Bool)

(assert (=> b!4285727 m!4881675))

(assert (=> b!4285609 d!1265278))

(declare-fun d!1265280 () Bool)

(assert (=> d!1265280 (= (array_inv!4930 (_keys!4601 (v!41410 (underlying!8831 (v!41411 (underlying!8832 (cache!4347 cacheUp!725))))))) (bvsge (size!34823 (_keys!4601 (v!41410 (underlying!8831 (v!41411 (underlying!8832 (cache!4347 cacheUp!725))))))) #b00000000000000000000000000000000))))

(assert (=> b!4285637 d!1265280))

(declare-fun d!1265282 () Bool)

(assert (=> d!1265282 (= (array_inv!4932 (_values!4582 (v!41410 (underlying!8831 (v!41411 (underlying!8832 (cache!4347 cacheUp!725))))))) (bvsge (size!34825 (_values!4582 (v!41410 (underlying!8831 (v!41411 (underlying!8832 (cache!4347 cacheUp!725))))))) #b00000000000000000000000000000000))))

(assert (=> b!4285637 d!1265282))

(declare-fun d!1265284 () Bool)

(assert (=> d!1265284 (= (array_inv!4930 (_keys!4602 (v!41413 (underlying!8833 (v!41414 (underlying!8834 (cache!4348 cacheDown!738))))))) (bvsge (size!34823 (_keys!4602 (v!41413 (underlying!8833 (v!41414 (underlying!8834 (cache!4348 cacheDown!738))))))) #b00000000000000000000000000000000))))

(assert (=> b!4285629 d!1265284))

(declare-fun d!1265286 () Bool)

(assert (=> d!1265286 (= (array_inv!4931 (_values!4583 (v!41413 (underlying!8833 (v!41414 (underlying!8834 (cache!4348 cacheDown!738))))))) (bvsge (size!34827 (_values!4583 (v!41413 (underlying!8833 (v!41414 (underlying!8834 (cache!4348 cacheDown!738))))))) #b00000000000000000000000000000000))))

(assert (=> b!4285629 d!1265286))

(declare-fun d!1265288 () Bool)

(declare-fun lt!1515926 () tuple2!44954)

(declare-fun findLongestMatch!1619 (Regex!12917 List!47635) tuple2!44956)

(assert (=> d!1265288 (= (tuple2!44957 (list!17328 (_1!25637 lt!1515926)) (list!17328 (_2!25637 lt!1515926))) (findLongestMatch!1619 (regex!8008 rule!232) (list!17328 input!1632)))))

(declare-fun choose!26136 (Regex!12917 BalanceConc!28210 BalanceConc!28210) tuple2!44954)

(assert (=> d!1265288 (= lt!1515926 (choose!26136 (regex!8008 rule!232) input!1632 totalInput!528))))

(assert (=> d!1265288 (validRegex!5841 (regex!8008 rule!232))))

(assert (=> d!1265288 (= (findLongestMatchWithZipperSequenceV2!122 (regex!8008 rule!232) input!1632 totalInput!528) lt!1515926)))

(declare-fun bs!602842 () Bool)

(assert (= bs!602842 d!1265288))

(assert (=> bs!602842 m!4881483))

(declare-fun m!4881677 () Bool)

(assert (=> bs!602842 m!4881677))

(assert (=> bs!602842 m!4881565))

(declare-fun m!4881679 () Bool)

(assert (=> bs!602842 m!4881679))

(declare-fun m!4881681 () Bool)

(assert (=> bs!602842 m!4881681))

(assert (=> bs!602842 m!4881483))

(declare-fun m!4881683 () Bool)

(assert (=> bs!602842 m!4881683))

(assert (=> b!4285610 d!1265288))

(declare-fun b!4285736 () Bool)

(declare-fun res!1758375 () Bool)

(declare-fun e!2661317 () Bool)

(assert (=> b!4285736 (=> (not res!1758375) (not e!2661317))))

(declare-fun lt!1515929 () tuple4!960)

(assert (=> b!4285736 (= res!1758375 (valid!3338 (_3!3160 lt!1515929)))))

(declare-fun d!1265290 () Bool)

(assert (=> d!1265290 e!2661317))

(declare-fun res!1758376 () Bool)

(assert (=> d!1265290 (=> (not res!1758376) (not e!2661317))))

(assert (=> d!1265290 (= res!1758376 (= (_1!25638 lt!1515929) (findLongestMatchWithZipperSequenceV2!122 (regex!8008 rule!232) input!1632 totalInput!528)))))

(declare-fun choose!26137 (Regex!12917 BalanceConc!28210 BalanceConc!28210 CacheUp!2746 CacheDown!2866 CacheFindLongestMatch!408) tuple4!960)

(assert (=> d!1265290 (= lt!1515929 (choose!26137 (regex!8008 rule!232) input!1632 totalInput!528 cacheUp!725 cacheDown!738 cacheFindLongestMatch!156))))

(assert (=> d!1265290 (validRegex!5841 (regex!8008 rule!232))))

(assert (=> d!1265290 (= (findLongestMatchWithZipperSequenceV2Mem!45 (regex!8008 rule!232) input!1632 totalInput!528 cacheUp!725 cacheDown!738 cacheFindLongestMatch!156) lt!1515929)))

(declare-fun b!4285739 () Bool)

(assert (=> b!4285739 (= e!2661317 (= (totalInput!4310 (_4!480 lt!1515929)) totalInput!528))))

(declare-fun b!4285738 () Bool)

(declare-fun res!1758377 () Bool)

(assert (=> b!4285738 (=> (not res!1758377) (not e!2661317))))

(assert (=> b!4285738 (= res!1758377 (valid!3340 (_4!480 lt!1515929)))))

(declare-fun b!4285737 () Bool)

(declare-fun res!1758374 () Bool)

(assert (=> b!4285737 (=> (not res!1758374) (not e!2661317))))

(assert (=> b!4285737 (= res!1758374 (valid!3339 (_2!25638 lt!1515929)))))

(assert (= (and d!1265290 res!1758376) b!4285736))

(assert (= (and b!4285736 res!1758375) b!4285737))

(assert (= (and b!4285737 res!1758374) b!4285738))

(assert (= (and b!4285738 res!1758377) b!4285739))

(declare-fun m!4881685 () Bool)

(assert (=> b!4285736 m!4881685))

(assert (=> d!1265290 m!4881505))

(declare-fun m!4881687 () Bool)

(assert (=> d!1265290 m!4881687))

(assert (=> d!1265290 m!4881565))

(declare-fun m!4881689 () Bool)

(assert (=> b!4285738 m!4881689))

(declare-fun m!4881691 () Bool)

(assert (=> b!4285737 m!4881691))

(assert (=> b!4285610 d!1265290))

(declare-fun d!1265292 () Bool)

(assert (=> d!1265292 (= (array_inv!4930 (_keys!4600 (v!41408 (underlying!8829 (v!41409 (underlying!8830 (cache!4346 cacheFindLongestMatch!156))))))) (bvsge (size!34823 (_keys!4600 (v!41408 (underlying!8829 (v!41409 (underlying!8830 (cache!4346 cacheFindLongestMatch!156))))))) #b00000000000000000000000000000000))))

(assert (=> b!4285638 d!1265292))

(declare-fun d!1265294 () Bool)

(assert (=> d!1265294 (= (array_inv!4933 (_values!4581 (v!41408 (underlying!8829 (v!41409 (underlying!8830 (cache!4346 cacheFindLongestMatch!156))))))) (bvsge (size!34824 (_values!4581 (v!41408 (underlying!8829 (v!41409 (underlying!8830 (cache!4346 cacheFindLongestMatch!156))))))) #b00000000000000000000000000000000))))

(assert (=> b!4285638 d!1265294))

(declare-fun d!1265296 () Bool)

(assert (=> d!1265296 (= (valid!3340 (_4!480 lt!1515816)) (validCacheMapFindLongestMatch!71 (cache!4346 (_4!480 lt!1515816)) (totalInput!4310 (_4!480 lt!1515816))))))

(declare-fun bs!602843 () Bool)

(assert (= bs!602843 d!1265296))

(declare-fun m!4881693 () Bool)

(assert (=> bs!602843 m!4881693))

(assert (=> b!4285621 d!1265296))

(declare-fun d!1265298 () Bool)

(declare-fun c!730132 () Bool)

(assert (=> d!1265298 (= c!730132 ((_ is Node!14360) (c!730104 input!1632)))))

(declare-fun e!2661318 () Bool)

(assert (=> d!1265298 (= (inv!62962 (c!730104 input!1632)) e!2661318)))

(declare-fun b!4285740 () Bool)

(assert (=> b!4285740 (= e!2661318 (inv!62968 (c!730104 input!1632)))))

(declare-fun b!4285741 () Bool)

(declare-fun e!2661319 () Bool)

(assert (=> b!4285741 (= e!2661318 e!2661319)))

(declare-fun res!1758378 () Bool)

(assert (=> b!4285741 (= res!1758378 (not ((_ is Leaf!22220) (c!730104 input!1632))))))

(assert (=> b!4285741 (=> res!1758378 e!2661319)))

(declare-fun b!4285742 () Bool)

(assert (=> b!4285742 (= e!2661319 (inv!62969 (c!730104 input!1632)))))

(assert (= (and d!1265298 c!730132) b!4285740))

(assert (= (and d!1265298 (not c!730132)) b!4285741))

(assert (= (and b!4285741 (not res!1758378)) b!4285742))

(declare-fun m!4881695 () Bool)

(assert (=> b!4285740 m!4881695))

(declare-fun m!4881697 () Bool)

(assert (=> b!4285742 m!4881697))

(assert (=> b!4285602 d!1265298))

(declare-fun bs!602844 () Bool)

(declare-fun b!4285756 () Bool)

(assert (= bs!602844 (and b!4285756 d!1265272)))

(declare-fun lambda!131485 () Int)

(assert (=> bs!602844 (= lambda!131485 lambda!131480)))

(declare-fun b!4285768 () Bool)

(declare-fun e!2661340 () Bool)

(assert (=> b!4285768 (= e!2661340 true)))

(declare-fun b!4285767 () Bool)

(declare-fun e!2661339 () Bool)

(assert (=> b!4285767 (= e!2661339 e!2661340)))

(assert (=> b!4285756 e!2661339))

(assert (= b!4285767 b!4285768))

(assert (= b!4285756 b!4285767))

(assert (=> b!4285768 (< (dynLambda!20322 order!25035 (toValue!10859 (transformation!8008 rule!232))) (dynLambda!20323 order!25037 lambda!131485))))

(assert (=> b!4285768 (< (dynLambda!20324 order!25039 (toChars!10718 (transformation!8008 rule!232))) (dynLambda!20323 order!25037 lambda!131485))))

(declare-fun b!4285755 () Bool)

(declare-fun e!2661330 () Bool)

(declare-fun e!2661334 () Bool)

(assert (=> b!4285755 (= e!2661330 e!2661334)))

(declare-fun res!1758388 () Bool)

(assert (=> b!4285755 (=> (not res!1758388) (not e!2661334))))

(declare-fun lt!1515956 () Option!10128)

(declare-fun get!15418 (Option!10128) tuple2!44950)

(declare-datatypes ((tuple2!44958 0))(
  ( (tuple2!44959 (_1!25640 Token!14616) (_2!25640 List!47635)) )
))
(declare-datatypes ((Option!10129 0))(
  ( (None!10128) (Some!10128 (v!41415 tuple2!44958)) )
))
(declare-fun get!15419 (Option!10129) tuple2!44958)

(declare-fun maxPrefixOneRule!3485 (LexerInterface!7600 Rule!15816 List!47635) Option!10129)

(assert (=> b!4285755 (= res!1758388 (= (_1!25634 (get!15418 lt!1515956)) (_1!25640 (get!15419 (maxPrefixOneRule!3485 thiss!16356 rule!232 (list!17328 input!1632))))))))

(declare-fun d!1265300 () Bool)

(declare-fun e!2661332 () Bool)

(assert (=> d!1265300 e!2661332))

(declare-fun res!1758389 () Bool)

(assert (=> d!1265300 (=> (not res!1758389) (not e!2661332))))

(declare-fun isDefined!7474 (Option!10128) Bool)

(declare-fun isDefined!7475 (Option!10129) Bool)

(assert (=> d!1265300 (= res!1758389 (= (isDefined!7474 lt!1515956) (isDefined!7475 (maxPrefixOneRule!3485 thiss!16356 rule!232 (list!17328 input!1632)))))))

(declare-fun e!2661333 () Option!10128)

(assert (=> d!1265300 (= lt!1515956 e!2661333)))

(declare-fun c!730136 () Bool)

(declare-fun lt!1515951 () tuple2!44954)

(assert (=> d!1265300 (= c!730136 (isEmpty!28019 (_1!25637 lt!1515951)))))

(assert (=> d!1265300 (= lt!1515951 (findLongestMatchWithZipperSequenceV2!122 (regex!8008 rule!232) input!1632 totalInput!528))))

(assert (=> d!1265300 (ruleValid!3622 thiss!16356 rule!232)))

(assert (=> d!1265300 (= (maxPrefixOneRuleZipperSequenceV2!252 thiss!16356 rule!232 input!1632 totalInput!528) lt!1515956)))

(assert (=> b!4285756 (= e!2661333 (Some!10127 (tuple2!44951 (Token!14617 (apply!10826 (transformation!8008 rule!232) (_1!25637 lt!1515951)) rule!232 (size!34828 (_1!25637 lt!1515951)) (list!17328 (_1!25637 lt!1515951))) (_2!25637 lt!1515951))))))

(declare-fun lt!1515958 () List!47635)

(assert (=> b!4285756 (= lt!1515958 (list!17328 input!1632))))

(declare-fun lt!1515959 () Unit!66382)

(assert (=> b!4285756 (= lt!1515959 (longestMatchIsAcceptedByMatchOrIsEmpty!1678 (regex!8008 rule!232) lt!1515958))))

(declare-fun res!1758387 () Bool)

(assert (=> b!4285756 (= res!1758387 (isEmpty!28018 (_1!25639 (findLongestMatchInner!1715 (regex!8008 rule!232) Nil!47511 (size!34829 Nil!47511) lt!1515958 lt!1515958 (size!34829 lt!1515958)))))))

(declare-fun e!2661331 () Bool)

(assert (=> b!4285756 (=> res!1758387 e!2661331)))

(assert (=> b!4285756 e!2661331))

(declare-fun lt!1515957 () Unit!66382)

(assert (=> b!4285756 (= lt!1515957 lt!1515959)))

(declare-fun lt!1515955 () Unit!66382)

(declare-fun lemmaInv!1198 (TokenValueInjection!15944) Unit!66382)

(assert (=> b!4285756 (= lt!1515955 (lemmaInv!1198 (transformation!8008 rule!232)))))

(declare-fun lt!1515950 () Unit!66382)

(assert (=> b!4285756 (= lt!1515950 (ForallOf!1095 lambda!131485 (_1!25637 lt!1515951)))))

(declare-fun lt!1515953 () Unit!66382)

(declare-fun seqFromList!5892 (List!47635) BalanceConc!28210)

(assert (=> b!4285756 (= lt!1515953 (ForallOf!1095 lambda!131485 (seqFromList!5892 (list!17328 (_1!25637 lt!1515951)))))))

(declare-fun lt!1515952 () Option!10128)

(assert (=> b!4285756 (= lt!1515952 (Some!10127 (tuple2!44951 (Token!14617 (apply!10826 (transformation!8008 rule!232) (_1!25637 lt!1515951)) rule!232 (size!34828 (_1!25637 lt!1515951)) (list!17328 (_1!25637 lt!1515951))) (_2!25637 lt!1515951))))))

(declare-fun lt!1515954 () Unit!66382)

(declare-fun lemmaEqSameImage!1052 (TokenValueInjection!15944 BalanceConc!28210 BalanceConc!28210) Unit!66382)

(assert (=> b!4285756 (= lt!1515954 (lemmaEqSameImage!1052 (transformation!8008 rule!232) (_1!25637 lt!1515951) (seqFromList!5892 (list!17328 (_1!25637 lt!1515951)))))))

(declare-fun b!4285757 () Bool)

(assert (=> b!4285757 (= e!2661334 (= (list!17328 (_2!25634 (get!15418 lt!1515956))) (_2!25640 (get!15419 (maxPrefixOneRule!3485 thiss!16356 rule!232 (list!17328 input!1632))))))))

(declare-fun b!4285758 () Bool)

(assert (=> b!4285758 (= e!2661332 e!2661330)))

(declare-fun res!1758390 () Bool)

(assert (=> b!4285758 (=> res!1758390 e!2661330)))

(assert (=> b!4285758 (= res!1758390 (not (isDefined!7474 lt!1515956)))))

(declare-fun b!4285759 () Bool)

(assert (=> b!4285759 (= e!2661333 None!10127)))

(declare-fun b!4285760 () Bool)

(assert (=> b!4285760 (= e!2661331 (matchR!6486 (regex!8008 rule!232) (_1!25639 (findLongestMatchInner!1715 (regex!8008 rule!232) Nil!47511 (size!34829 Nil!47511) lt!1515958 lt!1515958 (size!34829 lt!1515958)))))))

(assert (= (and d!1265300 c!730136) b!4285759))

(assert (= (and d!1265300 (not c!730136)) b!4285756))

(assert (= (and b!4285756 (not res!1758387)) b!4285760))

(assert (= (and d!1265300 res!1758389) b!4285758))

(assert (= (and b!4285758 (not res!1758390)) b!4285755))

(assert (= (and b!4285755 res!1758388) b!4285757))

(assert (=> b!4285760 m!4881519))

(declare-fun m!4881699 () Bool)

(assert (=> b!4285760 m!4881699))

(assert (=> b!4285760 m!4881519))

(assert (=> b!4285760 m!4881699))

(declare-fun m!4881701 () Bool)

(assert (=> b!4285760 m!4881701))

(declare-fun m!4881703 () Bool)

(assert (=> b!4285760 m!4881703))

(declare-fun m!4881705 () Bool)

(assert (=> b!4285757 m!4881705))

(declare-fun m!4881707 () Bool)

(assert (=> b!4285757 m!4881707))

(assert (=> b!4285757 m!4881483))

(declare-fun m!4881709 () Bool)

(assert (=> b!4285757 m!4881709))

(declare-fun m!4881711 () Bool)

(assert (=> b!4285757 m!4881711))

(assert (=> b!4285757 m!4881483))

(assert (=> b!4285757 m!4881709))

(assert (=> b!4285755 m!4881705))

(assert (=> b!4285755 m!4881483))

(assert (=> b!4285755 m!4881483))

(assert (=> b!4285755 m!4881709))

(assert (=> b!4285755 m!4881709))

(assert (=> b!4285755 m!4881711))

(declare-fun m!4881713 () Bool)

(assert (=> b!4285756 m!4881713))

(declare-fun m!4881715 () Bool)

(assert (=> b!4285756 m!4881715))

(declare-fun m!4881717 () Bool)

(assert (=> b!4285756 m!4881717))

(declare-fun m!4881719 () Bool)

(assert (=> b!4285756 m!4881719))

(assert (=> b!4285756 m!4881519))

(assert (=> b!4285756 m!4881483))

(declare-fun m!4881721 () Bool)

(assert (=> b!4285756 m!4881721))

(assert (=> b!4285756 m!4881715))

(declare-fun m!4881723 () Bool)

(assert (=> b!4285756 m!4881723))

(assert (=> b!4285756 m!4881715))

(declare-fun m!4881725 () Bool)

(assert (=> b!4285756 m!4881725))

(declare-fun m!4881727 () Bool)

(assert (=> b!4285756 m!4881727))

(declare-fun m!4881729 () Bool)

(assert (=> b!4285756 m!4881729))

(assert (=> b!4285756 m!4881721))

(assert (=> b!4285756 m!4881519))

(assert (=> b!4285756 m!4881699))

(assert (=> b!4285756 m!4881701))

(declare-fun m!4881731 () Bool)

(assert (=> b!4285756 m!4881731))

(assert (=> b!4285756 m!4881699))

(assert (=> d!1265300 m!4881709))

(declare-fun m!4881733 () Bool)

(assert (=> d!1265300 m!4881733))

(declare-fun m!4881735 () Bool)

(assert (=> d!1265300 m!4881735))

(declare-fun m!4881737 () Bool)

(assert (=> d!1265300 m!4881737))

(assert (=> d!1265300 m!4881505))

(assert (=> d!1265300 m!4881483))

(assert (=> d!1265300 m!4881553))

(assert (=> d!1265300 m!4881483))

(assert (=> d!1265300 m!4881709))

(assert (=> b!4285758 m!4881737))

(assert (=> b!4285630 d!1265300))

(declare-fun d!1265302 () Bool)

(declare-fun lt!1515962 () Bool)

(assert (=> d!1265302 (= lt!1515962 (isEmpty!28018 (list!17328 (_1!25637 (_1!25638 lt!1515816)))))))

(declare-fun isEmpty!28020 (Conc!14360) Bool)

(assert (=> d!1265302 (= lt!1515962 (isEmpty!28020 (c!730104 (_1!25637 (_1!25638 lt!1515816)))))))

(assert (=> d!1265302 (= (isEmpty!28019 (_1!25637 (_1!25638 lt!1515816))) lt!1515962)))

(declare-fun bs!602845 () Bool)

(assert (= bs!602845 d!1265302))

(assert (=> bs!602845 m!4881527))

(assert (=> bs!602845 m!4881527))

(declare-fun m!4881739 () Bool)

(assert (=> bs!602845 m!4881739))

(declare-fun m!4881741 () Bool)

(assert (=> bs!602845 m!4881741))

(assert (=> b!4285630 d!1265302))

(declare-fun d!1265304 () Bool)

(declare-fun res!1758393 () Bool)

(declare-fun e!2661343 () Bool)

(assert (=> d!1265304 (=> (not res!1758393) (not e!2661343))))

(assert (=> d!1265304 (= res!1758393 ((_ is HashMap!4207) (cache!4347 cacheUp!725)))))

(assert (=> d!1265304 (= (inv!62967 cacheUp!725) e!2661343)))

(declare-fun b!4285771 () Bool)

(assert (=> b!4285771 (= e!2661343 (validCacheMapUp!414 (cache!4347 cacheUp!725)))))

(assert (= (and d!1265304 res!1758393) b!4285771))

(assert (=> b!4285771 m!4881563))

(assert (=> start!411752 d!1265304))

(declare-fun d!1265306 () Bool)

(declare-fun res!1758396 () Bool)

(declare-fun e!2661346 () Bool)

(assert (=> d!1265306 (=> (not res!1758396) (not e!2661346))))

(assert (=> d!1265306 (= res!1758396 ((_ is HashMap!4206) (cache!4346 cacheFindLongestMatch!156)))))

(assert (=> d!1265306 (= (inv!62966 cacheFindLongestMatch!156) e!2661346)))

(declare-fun b!4285774 () Bool)

(assert (=> b!4285774 (= e!2661346 (validCacheMapFindLongestMatch!71 (cache!4346 cacheFindLongestMatch!156) (totalInput!4310 cacheFindLongestMatch!156)))))

(assert (= (and d!1265306 res!1758396) b!4285774))

(assert (=> b!4285774 m!4881571))

(assert (=> start!411752 d!1265306))

(declare-fun d!1265308 () Bool)

(declare-fun res!1758399 () Bool)

(declare-fun e!2661349 () Bool)

(assert (=> d!1265308 (=> (not res!1758399) (not e!2661349))))

(assert (=> d!1265308 (= res!1758399 ((_ is HashMap!4208) (cache!4348 cacheDown!738)))))

(assert (=> d!1265308 (= (inv!62965 cacheDown!738) e!2661349)))

(declare-fun b!4285777 () Bool)

(assert (=> b!4285777 (= e!2661349 (validCacheMapDown!445 (cache!4348 cacheDown!738)))))

(assert (= (and d!1265308 res!1758399) b!4285777))

(assert (=> b!4285777 m!4881569))

(assert (=> start!411752 d!1265308))

(declare-fun d!1265310 () Bool)

(assert (=> d!1265310 (= (inv!62964 totalInput!528) (isBalanced!3878 (c!730104 totalInput!528)))))

(declare-fun bs!602846 () Bool)

(assert (= bs!602846 d!1265310))

(declare-fun m!4881743 () Bool)

(assert (=> bs!602846 m!4881743))

(assert (=> start!411752 d!1265310))

(declare-fun d!1265312 () Bool)

(assert (=> d!1265312 (= (inv!62964 input!1632) (isBalanced!3878 (c!730104 input!1632)))))

(declare-fun bs!602847 () Bool)

(assert (= bs!602847 d!1265312))

(declare-fun m!4881745 () Bool)

(assert (=> bs!602847 m!4881745))

(assert (=> start!411752 d!1265312))

(declare-fun d!1265314 () Bool)

(assert (=> d!1265314 (= (inv!62958 (tag!8872 rule!232)) (= (mod (str.len (value!251041 (tag!8872 rule!232))) 2) 0))))

(assert (=> b!4285611 d!1265314))

(declare-fun d!1265316 () Bool)

(declare-fun res!1758402 () Bool)

(declare-fun e!2661352 () Bool)

(assert (=> d!1265316 (=> (not res!1758402) (not e!2661352))))

(declare-fun semiInverseModEq!3536 (Int Int) Bool)

(assert (=> d!1265316 (= res!1758402 (semiInverseModEq!3536 (toChars!10718 (transformation!8008 rule!232)) (toValue!10859 (transformation!8008 rule!232))))))

(assert (=> d!1265316 (= (inv!62963 (transformation!8008 rule!232)) e!2661352)))

(declare-fun b!4285780 () Bool)

(declare-fun equivClasses!3415 (Int Int) Bool)

(assert (=> b!4285780 (= e!2661352 (equivClasses!3415 (toChars!10718 (transformation!8008 rule!232)) (toValue!10859 (transformation!8008 rule!232))))))

(assert (= (and d!1265316 res!1758402) b!4285780))

(declare-fun m!4881747 () Bool)

(assert (=> d!1265316 m!4881747))

(declare-fun m!4881749 () Bool)

(assert (=> b!4285780 m!4881749))

(assert (=> b!4285611 d!1265316))

(declare-fun b!4285809 () Bool)

(declare-fun e!2661372 () Bool)

(assert (=> b!4285809 (= e!2661372 (nullable!4533 (regex!8008 rule!232)))))

(declare-fun b!4285810 () Bool)

(declare-fun e!2661371 () Bool)

(assert (=> b!4285810 (= e!2661371 (= (head!9019 (_1!25639 lt!1515818)) (c!730103 (regex!8008 rule!232))))))

(declare-fun d!1265318 () Bool)

(declare-fun e!2661367 () Bool)

(assert (=> d!1265318 e!2661367))

(declare-fun c!730144 () Bool)

(assert (=> d!1265318 (= c!730144 ((_ is EmptyExpr!12917) (regex!8008 rule!232)))))

(declare-fun lt!1515965 () Bool)

(assert (=> d!1265318 (= lt!1515965 e!2661372)))

(declare-fun c!730143 () Bool)

(assert (=> d!1265318 (= c!730143 (isEmpty!28018 (_1!25639 lt!1515818)))))

(assert (=> d!1265318 (validRegex!5841 (regex!8008 rule!232))))

(assert (=> d!1265318 (= (matchR!6486 (regex!8008 rule!232) (_1!25639 lt!1515818)) lt!1515965)))

(declare-fun b!4285811 () Bool)

(declare-fun e!2661369 () Bool)

(declare-fun e!2661368 () Bool)

(assert (=> b!4285811 (= e!2661369 e!2661368)))

(declare-fun res!1758426 () Bool)

(assert (=> b!4285811 (=> (not res!1758426) (not e!2661368))))

(assert (=> b!4285811 (= res!1758426 (not lt!1515965))))

(declare-fun b!4285812 () Bool)

(declare-fun call!294494 () Bool)

(assert (=> b!4285812 (= e!2661367 (= lt!1515965 call!294494))))

(declare-fun b!4285813 () Bool)

(declare-fun res!1758425 () Bool)

(assert (=> b!4285813 (=> (not res!1758425) (not e!2661371))))

(assert (=> b!4285813 (= res!1758425 (isEmpty!28018 (tail!6890 (_1!25639 lt!1515818))))))

(declare-fun b!4285814 () Bool)

(declare-fun res!1758422 () Bool)

(assert (=> b!4285814 (=> res!1758422 e!2661369)))

(assert (=> b!4285814 (= res!1758422 e!2661371)))

(declare-fun res!1758424 () Bool)

(assert (=> b!4285814 (=> (not res!1758424) (not e!2661371))))

(assert (=> b!4285814 (= res!1758424 lt!1515965)))

(declare-fun b!4285815 () Bool)

(declare-fun res!1758419 () Bool)

(assert (=> b!4285815 (=> (not res!1758419) (not e!2661371))))

(assert (=> b!4285815 (= res!1758419 (not call!294494))))

(declare-fun b!4285816 () Bool)

(declare-fun res!1758420 () Bool)

(assert (=> b!4285816 (=> res!1758420 e!2661369)))

(assert (=> b!4285816 (= res!1758420 (not ((_ is ElementMatch!12917) (regex!8008 rule!232))))))

(declare-fun e!2661370 () Bool)

(assert (=> b!4285816 (= e!2661370 e!2661369)))

(declare-fun b!4285817 () Bool)

(assert (=> b!4285817 (= e!2661367 e!2661370)))

(declare-fun c!730145 () Bool)

(assert (=> b!4285817 (= c!730145 ((_ is EmptyLang!12917) (regex!8008 rule!232)))))

(declare-fun b!4285818 () Bool)

(declare-fun e!2661373 () Bool)

(assert (=> b!4285818 (= e!2661368 e!2661373)))

(declare-fun res!1758423 () Bool)

(assert (=> b!4285818 (=> res!1758423 e!2661373)))

(assert (=> b!4285818 (= res!1758423 call!294494)))

(declare-fun b!4285819 () Bool)

(assert (=> b!4285819 (= e!2661370 (not lt!1515965))))

(declare-fun b!4285820 () Bool)

(assert (=> b!4285820 (= e!2661372 (matchR!6486 (derivativeStep!3859 (regex!8008 rule!232) (head!9019 (_1!25639 lt!1515818))) (tail!6890 (_1!25639 lt!1515818))))))

(declare-fun bm!294489 () Bool)

(assert (=> bm!294489 (= call!294494 (isEmpty!28018 (_1!25639 lt!1515818)))))

(declare-fun b!4285821 () Bool)

(declare-fun res!1758421 () Bool)

(assert (=> b!4285821 (=> res!1758421 e!2661373)))

(assert (=> b!4285821 (= res!1758421 (not (isEmpty!28018 (tail!6890 (_1!25639 lt!1515818)))))))

(declare-fun b!4285822 () Bool)

(assert (=> b!4285822 (= e!2661373 (not (= (head!9019 (_1!25639 lt!1515818)) (c!730103 (regex!8008 rule!232)))))))

(assert (= (and d!1265318 c!730143) b!4285809))

(assert (= (and d!1265318 (not c!730143)) b!4285820))

(assert (= (and d!1265318 c!730144) b!4285812))

(assert (= (and d!1265318 (not c!730144)) b!4285817))

(assert (= (and b!4285817 c!730145) b!4285819))

(assert (= (and b!4285817 (not c!730145)) b!4285816))

(assert (= (and b!4285816 (not res!1758420)) b!4285814))

(assert (= (and b!4285814 res!1758424) b!4285815))

(assert (= (and b!4285815 res!1758419) b!4285813))

(assert (= (and b!4285813 res!1758425) b!4285810))

(assert (= (and b!4285814 (not res!1758422)) b!4285811))

(assert (= (and b!4285811 res!1758426) b!4285818))

(assert (= (and b!4285818 (not res!1758423)) b!4285821))

(assert (= (and b!4285821 (not res!1758421)) b!4285822))

(assert (= (or b!4285812 b!4285815 b!4285818) bm!294489))

(declare-fun m!4881751 () Bool)

(assert (=> b!4285820 m!4881751))

(assert (=> b!4285820 m!4881751))

(declare-fun m!4881753 () Bool)

(assert (=> b!4285820 m!4881753))

(declare-fun m!4881755 () Bool)

(assert (=> b!4285820 m!4881755))

(assert (=> b!4285820 m!4881753))

(assert (=> b!4285820 m!4881755))

(declare-fun m!4881757 () Bool)

(assert (=> b!4285820 m!4881757))

(assert (=> b!4285821 m!4881755))

(assert (=> b!4285821 m!4881755))

(declare-fun m!4881759 () Bool)

(assert (=> b!4285821 m!4881759))

(assert (=> b!4285813 m!4881755))

(assert (=> b!4285813 m!4881755))

(assert (=> b!4285813 m!4881759))

(assert (=> d!1265318 m!4881529))

(assert (=> d!1265318 m!4881565))

(assert (=> b!4285809 m!4881567))

(assert (=> b!4285810 m!4881751))

(assert (=> bm!294489 m!4881529))

(assert (=> b!4285822 m!4881751))

(assert (=> b!4285639 d!1265318))

(declare-fun b!4285833 () Bool)

(declare-fun e!2661382 () Bool)

(declare-fun tp!1312105 () Bool)

(assert (=> b!4285833 (= e!2661382 tp!1312105)))

(declare-fun mapNonEmpty!19457 () Bool)

(declare-fun mapRes!19457 () Bool)

(declare-fun tp!1312109 () Bool)

(declare-fun e!2661384 () Bool)

(assert (=> mapNonEmpty!19457 (= mapRes!19457 (and tp!1312109 e!2661384))))

(declare-fun mapValue!19457 () List!47634)

(declare-fun mapKey!19457 () (_ BitVec 32))

(declare-fun mapRest!19457 () (Array (_ BitVec 32) List!47634))

(assert (=> mapNonEmpty!19457 (= mapRest!19453 (store mapRest!19457 mapKey!19457 mapValue!19457))))

(declare-fun b!4285834 () Bool)

(declare-fun e!2661383 () Bool)

(declare-fun tp!1312106 () Bool)

(assert (=> b!4285834 (= e!2661383 tp!1312106)))

(declare-fun b!4285835 () Bool)

(declare-fun setRes!26194 () Bool)

(declare-fun tp!1312104 () Bool)

(assert (=> b!4285835 (= e!2661384 (and setRes!26194 tp!1312104))))

(declare-fun condSetEmpty!26194 () Bool)

(assert (=> b!4285835 (= condSetEmpty!26194 (= (_1!25630 (_1!25631 (h!52930 mapValue!19457))) ((as const (Array Context!5614 Bool)) false)))))

(declare-fun setIsEmpty!26194 () Bool)

(assert (=> setIsEmpty!26194 setRes!26194))

(declare-fun tp!1312107 () Bool)

(declare-fun setNonEmpty!26194 () Bool)

(declare-fun setElem!26195 () Context!5614)

(declare-fun inv!62970 (Context!5614) Bool)

(assert (=> setNonEmpty!26194 (= setRes!26194 (and tp!1312107 (inv!62970 setElem!26195) e!2661383))))

(declare-fun setRest!26195 () (InoxSet Context!5614))

(assert (=> setNonEmpty!26194 (= (_1!25630 (_1!25631 (h!52930 mapValue!19457))) ((_ map or) (store ((as const (Array Context!5614 Bool)) false) setElem!26195 true) setRest!26195))))

(declare-fun mapIsEmpty!19457 () Bool)

(assert (=> mapIsEmpty!19457 mapRes!19457))

(declare-fun b!4285836 () Bool)

(declare-fun e!2661385 () Bool)

(declare-fun setRes!26195 () Bool)

(declare-fun tp!1312103 () Bool)

(assert (=> b!4285836 (= e!2661385 (and setRes!26195 tp!1312103))))

(declare-fun condSetEmpty!26195 () Bool)

(declare-fun mapDefault!19457 () List!47634)

(assert (=> b!4285836 (= condSetEmpty!26195 (= (_1!25630 (_1!25631 (h!52930 mapDefault!19457))) ((as const (Array Context!5614 Bool)) false)))))

(declare-fun condMapEmpty!19457 () Bool)

(assert (=> mapNonEmpty!19453 (= condMapEmpty!19457 (= mapRest!19453 ((as const (Array (_ BitVec 32) List!47634)) mapDefault!19457)))))

(assert (=> mapNonEmpty!19453 (= tp!1312071 (and e!2661385 mapRes!19457))))

(declare-fun setNonEmpty!26195 () Bool)

(declare-fun tp!1312108 () Bool)

(declare-fun setElem!26194 () Context!5614)

(assert (=> setNonEmpty!26195 (= setRes!26195 (and tp!1312108 (inv!62970 setElem!26194) e!2661382))))

(declare-fun setRest!26194 () (InoxSet Context!5614))

(assert (=> setNonEmpty!26195 (= (_1!25630 (_1!25631 (h!52930 mapDefault!19457))) ((_ map or) (store ((as const (Array Context!5614 Bool)) false) setElem!26194 true) setRest!26194))))

(declare-fun setIsEmpty!26195 () Bool)

(assert (=> setIsEmpty!26195 setRes!26195))

(assert (= (and mapNonEmpty!19453 condMapEmpty!19457) mapIsEmpty!19457))

(assert (= (and mapNonEmpty!19453 (not condMapEmpty!19457)) mapNonEmpty!19457))

(assert (= (and b!4285835 condSetEmpty!26194) setIsEmpty!26194))

(assert (= (and b!4285835 (not condSetEmpty!26194)) setNonEmpty!26194))

(assert (= setNonEmpty!26194 b!4285834))

(assert (= (and mapNonEmpty!19457 ((_ is Cons!47510) mapValue!19457)) b!4285835))

(assert (= (and b!4285836 condSetEmpty!26195) setIsEmpty!26195))

(assert (= (and b!4285836 (not condSetEmpty!26195)) setNonEmpty!26195))

(assert (= setNonEmpty!26195 b!4285833))

(assert (= (and mapNonEmpty!19453 ((_ is Cons!47510) mapDefault!19457)) b!4285836))

(declare-fun m!4881761 () Bool)

(assert (=> mapNonEmpty!19457 m!4881761))

(declare-fun m!4881763 () Bool)

(assert (=> setNonEmpty!26194 m!4881763))

(declare-fun m!4881765 () Bool)

(assert (=> setNonEmpty!26195 m!4881765))

(declare-fun e!2661391 () Bool)

(assert (=> mapNonEmpty!19453 (= tp!1312075 e!2661391)))

(declare-fun setNonEmpty!26198 () Bool)

(declare-fun setRes!26198 () Bool)

(declare-fun e!2661390 () Bool)

(declare-fun setElem!26198 () Context!5614)

(declare-fun tp!1312117 () Bool)

(assert (=> setNonEmpty!26198 (= setRes!26198 (and tp!1312117 (inv!62970 setElem!26198) e!2661390))))

(declare-fun setRest!26198 () (InoxSet Context!5614))

(assert (=> setNonEmpty!26198 (= (_1!25630 (_1!25631 (h!52930 mapValue!19452))) ((_ map or) (store ((as const (Array Context!5614 Bool)) false) setElem!26198 true) setRest!26198))))

(declare-fun setIsEmpty!26198 () Bool)

(assert (=> setIsEmpty!26198 setRes!26198))

(declare-fun b!4285843 () Bool)

(declare-fun tp!1312118 () Bool)

(assert (=> b!4285843 (= e!2661391 (and setRes!26198 tp!1312118))))

(declare-fun condSetEmpty!26198 () Bool)

(assert (=> b!4285843 (= condSetEmpty!26198 (= (_1!25630 (_1!25631 (h!52930 mapValue!19452))) ((as const (Array Context!5614 Bool)) false)))))

(declare-fun b!4285844 () Bool)

(declare-fun tp!1312116 () Bool)

(assert (=> b!4285844 (= e!2661390 tp!1312116)))

(assert (= (and b!4285843 condSetEmpty!26198) setIsEmpty!26198))

(assert (= (and b!4285843 (not condSetEmpty!26198)) setNonEmpty!26198))

(assert (= setNonEmpty!26198 b!4285844))

(assert (= (and mapNonEmpty!19453 ((_ is Cons!47510) mapValue!19452)) b!4285843))

(declare-fun m!4881767 () Bool)

(assert (=> setNonEmpty!26198 m!4881767))

(declare-fun mapIsEmpty!19460 () Bool)

(declare-fun mapRes!19460 () Bool)

(assert (=> mapIsEmpty!19460 mapRes!19460))

(declare-fun b!4285859 () Bool)

(declare-fun e!2661408 () Bool)

(declare-fun e!2661407 () Bool)

(declare-fun tp_is_empty!23065 () Bool)

(declare-fun setRes!26204 () Bool)

(declare-fun mapValue!19460 () List!47636)

(declare-fun tp!1312141 () Bool)

(assert (=> b!4285859 (= e!2661408 (and (inv!62970 (_1!25632 (_1!25633 (h!52932 mapValue!19460)))) e!2661407 tp_is_empty!23065 setRes!26204 tp!1312141))))

(declare-fun condSetEmpty!26204 () Bool)

(assert (=> b!4285859 (= condSetEmpty!26204 (= (_2!25633 (h!52932 mapValue!19460)) ((as const (Array Context!5614 Bool)) false)))))

(declare-fun condMapEmpty!19460 () Bool)

(declare-fun mapDefault!19460 () List!47636)

(assert (=> mapNonEmpty!19452 (= condMapEmpty!19460 (= mapRest!19454 ((as const (Array (_ BitVec 32) List!47636)) mapDefault!19460)))))

(declare-fun e!2661404 () Bool)

(assert (=> mapNonEmpty!19452 (= tp!1312073 (and e!2661404 mapRes!19460))))

(declare-fun b!4285860 () Bool)

(declare-fun e!2661409 () Bool)

(declare-fun tp!1312145 () Bool)

(assert (=> b!4285860 (= e!2661409 tp!1312145)))

(declare-fun setIsEmpty!26203 () Bool)

(assert (=> setIsEmpty!26203 setRes!26204))

(declare-fun b!4285861 () Bool)

(declare-fun e!2661406 () Bool)

(declare-fun tp!1312137 () Bool)

(assert (=> b!4285861 (= e!2661406 tp!1312137)))

(declare-fun setElem!26203 () Context!5614)

(declare-fun tp!1312139 () Bool)

(declare-fun setNonEmpty!26203 () Bool)

(declare-fun setRes!26203 () Bool)

(assert (=> setNonEmpty!26203 (= setRes!26203 (and tp!1312139 (inv!62970 setElem!26203) e!2661409))))

(declare-fun setRest!26204 () (InoxSet Context!5614))

(assert (=> setNonEmpty!26203 (= (_2!25633 (h!52932 mapDefault!19460)) ((_ map or) (store ((as const (Array Context!5614 Bool)) false) setElem!26203 true) setRest!26204))))

(declare-fun b!4285862 () Bool)

(declare-fun e!2661405 () Bool)

(declare-fun tp!1312142 () Bool)

(assert (=> b!4285862 (= e!2661405 tp!1312142)))

(declare-fun mapNonEmpty!19460 () Bool)

(declare-fun tp!1312138 () Bool)

(assert (=> mapNonEmpty!19460 (= mapRes!19460 (and tp!1312138 e!2661408))))

(declare-fun mapKey!19460 () (_ BitVec 32))

(declare-fun mapRest!19460 () (Array (_ BitVec 32) List!47636))

(assert (=> mapNonEmpty!19460 (= mapRest!19454 (store mapRest!19460 mapKey!19460 mapValue!19460))))

(declare-fun tp!1312144 () Bool)

(declare-fun b!4285863 () Bool)

(assert (=> b!4285863 (= e!2661404 (and (inv!62970 (_1!25632 (_1!25633 (h!52932 mapDefault!19460)))) e!2661405 tp_is_empty!23065 setRes!26203 tp!1312144))))

(declare-fun condSetEmpty!26203 () Bool)

(assert (=> b!4285863 (= condSetEmpty!26203 (= (_2!25633 (h!52932 mapDefault!19460)) ((as const (Array Context!5614 Bool)) false)))))

(declare-fun b!4285864 () Bool)

(declare-fun tp!1312140 () Bool)

(assert (=> b!4285864 (= e!2661407 tp!1312140)))

(declare-fun setIsEmpty!26204 () Bool)

(assert (=> setIsEmpty!26204 setRes!26203))

(declare-fun setNonEmpty!26204 () Bool)

(declare-fun setElem!26204 () Context!5614)

(declare-fun tp!1312143 () Bool)

(assert (=> setNonEmpty!26204 (= setRes!26204 (and tp!1312143 (inv!62970 setElem!26204) e!2661406))))

(declare-fun setRest!26203 () (InoxSet Context!5614))

(assert (=> setNonEmpty!26204 (= (_2!25633 (h!52932 mapValue!19460)) ((_ map or) (store ((as const (Array Context!5614 Bool)) false) setElem!26204 true) setRest!26203))))

(assert (= (and mapNonEmpty!19452 condMapEmpty!19460) mapIsEmpty!19460))

(assert (= (and mapNonEmpty!19452 (not condMapEmpty!19460)) mapNonEmpty!19460))

(assert (= b!4285859 b!4285864))

(assert (= (and b!4285859 condSetEmpty!26204) setIsEmpty!26203))

(assert (= (and b!4285859 (not condSetEmpty!26204)) setNonEmpty!26204))

(assert (= setNonEmpty!26204 b!4285861))

(assert (= (and mapNonEmpty!19460 ((_ is Cons!47512) mapValue!19460)) b!4285859))

(assert (= b!4285863 b!4285862))

(assert (= (and b!4285863 condSetEmpty!26203) setIsEmpty!26204))

(assert (= (and b!4285863 (not condSetEmpty!26203)) setNonEmpty!26203))

(assert (= setNonEmpty!26203 b!4285860))

(assert (= (and mapNonEmpty!19452 ((_ is Cons!47512) mapDefault!19460)) b!4285863))

(declare-fun m!4881769 () Bool)

(assert (=> b!4285863 m!4881769))

(declare-fun m!4881771 () Bool)

(assert (=> mapNonEmpty!19460 m!4881771))

(declare-fun m!4881773 () Bool)

(assert (=> b!4285859 m!4881773))

(declare-fun m!4881775 () Bool)

(assert (=> setNonEmpty!26203 m!4881775))

(declare-fun m!4881777 () Bool)

(assert (=> setNonEmpty!26204 m!4881777))

(declare-fun setRes!26207 () Bool)

(declare-fun setElem!26207 () Context!5614)

(declare-fun tp!1312155 () Bool)

(declare-fun e!2661416 () Bool)

(declare-fun setNonEmpty!26207 () Bool)

(assert (=> setNonEmpty!26207 (= setRes!26207 (and tp!1312155 (inv!62970 setElem!26207) e!2661416))))

(declare-fun setRest!26207 () (InoxSet Context!5614))

(assert (=> setNonEmpty!26207 (= (_2!25633 (h!52932 mapValue!19453)) ((_ map or) (store ((as const (Array Context!5614 Bool)) false) setElem!26207 true) setRest!26207))))

(declare-fun b!4285873 () Bool)

(declare-fun e!2661417 () Bool)

(declare-fun tp!1312154 () Bool)

(assert (=> b!4285873 (= e!2661417 tp!1312154)))

(declare-fun b!4285874 () Bool)

(declare-fun tp!1312157 () Bool)

(assert (=> b!4285874 (= e!2661416 tp!1312157)))

(declare-fun b!4285875 () Bool)

(declare-fun e!2661418 () Bool)

(declare-fun tp!1312156 () Bool)

(assert (=> b!4285875 (= e!2661418 (and (inv!62970 (_1!25632 (_1!25633 (h!52932 mapValue!19453)))) e!2661417 tp_is_empty!23065 setRes!26207 tp!1312156))))

(declare-fun condSetEmpty!26207 () Bool)

(assert (=> b!4285875 (= condSetEmpty!26207 (= (_2!25633 (h!52932 mapValue!19453)) ((as const (Array Context!5614 Bool)) false)))))

(declare-fun setIsEmpty!26207 () Bool)

(assert (=> setIsEmpty!26207 setRes!26207))

(assert (=> mapNonEmpty!19452 (= tp!1312082 e!2661418)))

(assert (= b!4285875 b!4285873))

(assert (= (and b!4285875 condSetEmpty!26207) setIsEmpty!26207))

(assert (= (and b!4285875 (not condSetEmpty!26207)) setNonEmpty!26207))

(assert (= setNonEmpty!26207 b!4285874))

(assert (= (and mapNonEmpty!19452 ((_ is Cons!47512) mapValue!19453)) b!4285875))

(declare-fun m!4881779 () Bool)

(assert (=> setNonEmpty!26207 m!4881779))

(declare-fun m!4881781 () Bool)

(assert (=> b!4285875 m!4881781))

(declare-fun b!4285884 () Bool)

(declare-fun tp!1312165 () Bool)

(declare-fun e!2661423 () Bool)

(declare-fun tp!1312166 () Bool)

(assert (=> b!4285884 (= e!2661423 (and (inv!62962 (left!35349 (c!730104 (totalInput!4310 cacheFindLongestMatch!156)))) tp!1312165 (inv!62962 (right!35679 (c!730104 (totalInput!4310 cacheFindLongestMatch!156)))) tp!1312166))))

(declare-fun b!4285886 () Bool)

(declare-fun e!2661424 () Bool)

(declare-fun tp!1312164 () Bool)

(assert (=> b!4285886 (= e!2661424 tp!1312164)))

(declare-fun b!4285885 () Bool)

(declare-fun inv!62971 (IArray!28781) Bool)

(assert (=> b!4285885 (= e!2661423 (and (inv!62971 (xs!17666 (c!730104 (totalInput!4310 cacheFindLongestMatch!156)))) e!2661424))))

(assert (=> b!4285605 (= tp!1312076 (and (inv!62962 (c!730104 (totalInput!4310 cacheFindLongestMatch!156))) e!2661423))))

(assert (= (and b!4285605 ((_ is Node!14360) (c!730104 (totalInput!4310 cacheFindLongestMatch!156)))) b!4285884))

(assert (= b!4285885 b!4285886))

(assert (= (and b!4285605 ((_ is Leaf!22220) (c!730104 (totalInput!4310 cacheFindLongestMatch!156)))) b!4285885))

(declare-fun m!4881783 () Bool)

(assert (=> b!4285884 m!4881783))

(declare-fun m!4881785 () Bool)

(assert (=> b!4285884 m!4881785))

(declare-fun m!4881787 () Bool)

(assert (=> b!4285885 m!4881787))

(assert (=> b!4285605 m!4881557))

(declare-fun setNonEmpty!26210 () Bool)

(declare-fun setElem!26210 () Context!5614)

(declare-fun e!2661431 () Bool)

(declare-fun tp!1312178 () Bool)

(declare-fun setRes!26210 () Bool)

(assert (=> setNonEmpty!26210 (= setRes!26210 (and tp!1312178 (inv!62970 setElem!26210) e!2661431))))

(declare-fun setRest!26210 () (InoxSet Context!5614))

(assert (=> setNonEmpty!26210 (= (_2!25636 (h!52934 mapDefault!19453)) ((_ map or) (store ((as const (Array Context!5614 Bool)) false) setElem!26210 true) setRest!26210))))

(declare-fun b!4285895 () Bool)

(declare-fun tp!1312179 () Bool)

(declare-fun e!2661433 () Bool)

(declare-fun e!2661432 () Bool)

(declare-fun tp!1312177 () Bool)

(assert (=> b!4285895 (= e!2661433 (and tp!1312179 (inv!62970 (_2!25635 (_1!25636 (h!52934 mapDefault!19453)))) e!2661432 tp_is_empty!23065 setRes!26210 tp!1312177))))

(declare-fun condSetEmpty!26210 () Bool)

(assert (=> b!4285895 (= condSetEmpty!26210 (= (_2!25636 (h!52934 mapDefault!19453)) ((as const (Array Context!5614 Bool)) false)))))

(declare-fun b!4285896 () Bool)

(declare-fun tp!1312180 () Bool)

(assert (=> b!4285896 (= e!2661431 tp!1312180)))

(assert (=> b!4285634 (= tp!1312061 e!2661433)))

(declare-fun setIsEmpty!26210 () Bool)

(assert (=> setIsEmpty!26210 setRes!26210))

(declare-fun b!4285897 () Bool)

(declare-fun tp!1312181 () Bool)

(assert (=> b!4285897 (= e!2661432 tp!1312181)))

(assert (= b!4285895 b!4285897))

(assert (= (and b!4285895 condSetEmpty!26210) setIsEmpty!26210))

(assert (= (and b!4285895 (not condSetEmpty!26210)) setNonEmpty!26210))

(assert (= setNonEmpty!26210 b!4285896))

(assert (= (and b!4285634 ((_ is Cons!47514) mapDefault!19453)) b!4285895))

(declare-fun m!4881789 () Bool)

(assert (=> setNonEmpty!26210 m!4881789))

(declare-fun m!4881791 () Bool)

(assert (=> b!4285895 m!4881791))

(declare-fun tp!1312183 () Bool)

(declare-fun tp!1312184 () Bool)

(declare-fun b!4285898 () Bool)

(declare-fun e!2661434 () Bool)

(assert (=> b!4285898 (= e!2661434 (and (inv!62962 (left!35349 (c!730104 totalInput!528))) tp!1312183 (inv!62962 (right!35679 (c!730104 totalInput!528))) tp!1312184))))

(declare-fun b!4285900 () Bool)

(declare-fun e!2661435 () Bool)

(declare-fun tp!1312182 () Bool)

(assert (=> b!4285900 (= e!2661435 tp!1312182)))

(declare-fun b!4285899 () Bool)

(assert (=> b!4285899 (= e!2661434 (and (inv!62971 (xs!17666 (c!730104 totalInput!528))) e!2661435))))

(assert (=> b!4285616 (= tp!1312077 (and (inv!62962 (c!730104 totalInput!528)) e!2661434))))

(assert (= (and b!4285616 ((_ is Node!14360) (c!730104 totalInput!528))) b!4285898))

(assert (= b!4285899 b!4285900))

(assert (= (and b!4285616 ((_ is Leaf!22220) (c!730104 totalInput!528))) b!4285899))

(declare-fun m!4881793 () Bool)

(assert (=> b!4285898 m!4881793))

(declare-fun m!4881795 () Bool)

(assert (=> b!4285898 m!4881795))

(declare-fun m!4881797 () Bool)

(assert (=> b!4285899 m!4881797))

(assert (=> b!4285616 m!4881561))

(declare-fun b!4285915 () Bool)

(declare-fun e!2661451 () Bool)

(declare-fun tp!1312210 () Bool)

(assert (=> b!4285915 (= e!2661451 tp!1312210)))

(declare-fun b!4285917 () Bool)

(declare-fun e!2661450 () Bool)

(declare-fun tp!1312207 () Bool)

(assert (=> b!4285917 (= e!2661450 tp!1312207)))

(declare-fun b!4285918 () Bool)

(declare-fun e!2661449 () Bool)

(declare-fun tp!1312216 () Bool)

(assert (=> b!4285918 (= e!2661449 tp!1312216)))

(declare-fun mapIsEmpty!19463 () Bool)

(declare-fun mapRes!19463 () Bool)

(assert (=> mapIsEmpty!19463 mapRes!19463))

(declare-fun setIsEmpty!26215 () Bool)

(declare-fun setRes!26215 () Bool)

(assert (=> setIsEmpty!26215 setRes!26215))

(declare-fun tp!1312213 () Bool)

(declare-fun tp!1312217 () Bool)

(declare-fun b!4285919 () Bool)

(declare-fun e!2661453 () Bool)

(declare-fun e!2661452 () Bool)

(declare-fun mapValue!19463 () List!47638)

(assert (=> b!4285919 (= e!2661452 (and tp!1312213 (inv!62970 (_2!25635 (_1!25636 (h!52934 mapValue!19463)))) e!2661453 tp_is_empty!23065 setRes!26215 tp!1312217))))

(declare-fun condSetEmpty!26216 () Bool)

(assert (=> b!4285919 (= condSetEmpty!26216 (= (_2!25636 (h!52934 mapValue!19463)) ((as const (Array Context!5614 Bool)) false)))))

(declare-fun tp!1312212 () Bool)

(declare-fun setNonEmpty!26215 () Bool)

(declare-fun setElem!26215 () Context!5614)

(declare-fun setRes!26216 () Bool)

(assert (=> setNonEmpty!26215 (= setRes!26216 (and tp!1312212 (inv!62970 setElem!26215) e!2661449))))

(declare-fun mapDefault!19463 () List!47638)

(declare-fun setRest!26215 () (InoxSet Context!5614))

(assert (=> setNonEmpty!26215 (= (_2!25636 (h!52934 mapDefault!19463)) ((_ map or) (store ((as const (Array Context!5614 Bool)) false) setElem!26215 true) setRest!26215))))

(declare-fun b!4285916 () Bool)

(declare-fun tp!1312214 () Bool)

(assert (=> b!4285916 (= e!2661453 tp!1312214)))

(declare-fun condMapEmpty!19463 () Bool)

(assert (=> mapNonEmpty!19454 (= condMapEmpty!19463 (= mapRest!19452 ((as const (Array (_ BitVec 32) List!47638)) mapDefault!19463)))))

(declare-fun e!2661448 () Bool)

(assert (=> mapNonEmpty!19454 (= tp!1312060 (and e!2661448 mapRes!19463))))

(declare-fun mapNonEmpty!19463 () Bool)

(declare-fun tp!1312211 () Bool)

(assert (=> mapNonEmpty!19463 (= mapRes!19463 (and tp!1312211 e!2661452))))

(declare-fun mapKey!19463 () (_ BitVec 32))

(declare-fun mapRest!19463 () (Array (_ BitVec 32) List!47638))

(assert (=> mapNonEmpty!19463 (= mapRest!19452 (store mapRest!19463 mapKey!19463 mapValue!19463))))

(declare-fun setNonEmpty!26216 () Bool)

(declare-fun tp!1312209 () Bool)

(declare-fun setElem!26216 () Context!5614)

(assert (=> setNonEmpty!26216 (= setRes!26215 (and tp!1312209 (inv!62970 setElem!26216) e!2661450))))

(declare-fun setRest!26216 () (InoxSet Context!5614))

(assert (=> setNonEmpty!26216 (= (_2!25636 (h!52934 mapValue!19463)) ((_ map or) (store ((as const (Array Context!5614 Bool)) false) setElem!26216 true) setRest!26216))))

(declare-fun setIsEmpty!26216 () Bool)

(assert (=> setIsEmpty!26216 setRes!26216))

(declare-fun tp!1312215 () Bool)

(declare-fun tp!1312208 () Bool)

(declare-fun b!4285920 () Bool)

(assert (=> b!4285920 (= e!2661448 (and tp!1312215 (inv!62970 (_2!25635 (_1!25636 (h!52934 mapDefault!19463)))) e!2661451 tp_is_empty!23065 setRes!26216 tp!1312208))))

(declare-fun condSetEmpty!26215 () Bool)

(assert (=> b!4285920 (= condSetEmpty!26215 (= (_2!25636 (h!52934 mapDefault!19463)) ((as const (Array Context!5614 Bool)) false)))))

(assert (= (and mapNonEmpty!19454 condMapEmpty!19463) mapIsEmpty!19463))

(assert (= (and mapNonEmpty!19454 (not condMapEmpty!19463)) mapNonEmpty!19463))

(assert (= b!4285919 b!4285916))

(assert (= (and b!4285919 condSetEmpty!26216) setIsEmpty!26215))

(assert (= (and b!4285919 (not condSetEmpty!26216)) setNonEmpty!26216))

(assert (= setNonEmpty!26216 b!4285917))

(assert (= (and mapNonEmpty!19463 ((_ is Cons!47514) mapValue!19463)) b!4285919))

(assert (= b!4285920 b!4285915))

(assert (= (and b!4285920 condSetEmpty!26215) setIsEmpty!26216))

(assert (= (and b!4285920 (not condSetEmpty!26215)) setNonEmpty!26215))

(assert (= setNonEmpty!26215 b!4285918))

(assert (= (and mapNonEmpty!19454 ((_ is Cons!47514) mapDefault!19463)) b!4285920))

(declare-fun m!4881799 () Bool)

(assert (=> setNonEmpty!26216 m!4881799))

(declare-fun m!4881801 () Bool)

(assert (=> mapNonEmpty!19463 m!4881801))

(declare-fun m!4881803 () Bool)

(assert (=> b!4285920 m!4881803))

(declare-fun m!4881805 () Bool)

(assert (=> setNonEmpty!26215 m!4881805))

(declare-fun m!4881807 () Bool)

(assert (=> b!4285919 m!4881807))

(declare-fun setRes!26217 () Bool)

(declare-fun e!2661454 () Bool)

(declare-fun setElem!26217 () Context!5614)

(declare-fun tp!1312219 () Bool)

(declare-fun setNonEmpty!26217 () Bool)

(assert (=> setNonEmpty!26217 (= setRes!26217 (and tp!1312219 (inv!62970 setElem!26217) e!2661454))))

(declare-fun setRest!26217 () (InoxSet Context!5614))

(assert (=> setNonEmpty!26217 (= (_2!25636 (h!52934 mapValue!19454)) ((_ map or) (store ((as const (Array Context!5614 Bool)) false) setElem!26217 true) setRest!26217))))

(declare-fun tp!1312220 () Bool)

(declare-fun tp!1312218 () Bool)

(declare-fun e!2661456 () Bool)

(declare-fun b!4285921 () Bool)

(declare-fun e!2661455 () Bool)

(assert (=> b!4285921 (= e!2661456 (and tp!1312220 (inv!62970 (_2!25635 (_1!25636 (h!52934 mapValue!19454)))) e!2661455 tp_is_empty!23065 setRes!26217 tp!1312218))))

(declare-fun condSetEmpty!26217 () Bool)

(assert (=> b!4285921 (= condSetEmpty!26217 (= (_2!25636 (h!52934 mapValue!19454)) ((as const (Array Context!5614 Bool)) false)))))

(declare-fun b!4285922 () Bool)

(declare-fun tp!1312221 () Bool)

(assert (=> b!4285922 (= e!2661454 tp!1312221)))

(assert (=> mapNonEmpty!19454 (= tp!1312081 e!2661456)))

(declare-fun setIsEmpty!26217 () Bool)

(assert (=> setIsEmpty!26217 setRes!26217))

(declare-fun b!4285923 () Bool)

(declare-fun tp!1312222 () Bool)

(assert (=> b!4285923 (= e!2661455 tp!1312222)))

(assert (= b!4285921 b!4285923))

(assert (= (and b!4285921 condSetEmpty!26217) setIsEmpty!26217))

(assert (= (and b!4285921 (not condSetEmpty!26217)) setNonEmpty!26217))

(assert (= setNonEmpty!26217 b!4285922))

(assert (= (and mapNonEmpty!19454 ((_ is Cons!47514) mapValue!19454)) b!4285921))

(declare-fun m!4881809 () Bool)

(assert (=> setNonEmpty!26217 m!4881809))

(declare-fun m!4881811 () Bool)

(assert (=> b!4285921 m!4881811))

(declare-fun e!2661458 () Bool)

(assert (=> b!4285608 (= tp!1312065 e!2661458)))

(declare-fun e!2661457 () Bool)

(declare-fun setElem!26218 () Context!5614)

(declare-fun setNonEmpty!26218 () Bool)

(declare-fun setRes!26218 () Bool)

(declare-fun tp!1312224 () Bool)

(assert (=> setNonEmpty!26218 (= setRes!26218 (and tp!1312224 (inv!62970 setElem!26218) e!2661457))))

(declare-fun setRest!26218 () (InoxSet Context!5614))

(assert (=> setNonEmpty!26218 (= (_1!25630 (_1!25631 (h!52930 mapDefault!19454))) ((_ map or) (store ((as const (Array Context!5614 Bool)) false) setElem!26218 true) setRest!26218))))

(declare-fun setIsEmpty!26218 () Bool)

(assert (=> setIsEmpty!26218 setRes!26218))

(declare-fun b!4285924 () Bool)

(declare-fun tp!1312225 () Bool)

(assert (=> b!4285924 (= e!2661458 (and setRes!26218 tp!1312225))))

(declare-fun condSetEmpty!26218 () Bool)

(assert (=> b!4285924 (= condSetEmpty!26218 (= (_1!25630 (_1!25631 (h!52930 mapDefault!19454))) ((as const (Array Context!5614 Bool)) false)))))

(declare-fun b!4285925 () Bool)

(declare-fun tp!1312223 () Bool)

(assert (=> b!4285925 (= e!2661457 tp!1312223)))

(assert (= (and b!4285924 condSetEmpty!26218) setIsEmpty!26218))

(assert (= (and b!4285924 (not condSetEmpty!26218)) setNonEmpty!26218))

(assert (= setNonEmpty!26218 b!4285925))

(assert (= (and b!4285608 ((_ is Cons!47510) mapDefault!19454)) b!4285924))

(declare-fun m!4881813 () Bool)

(assert (=> setNonEmpty!26218 m!4881813))

(declare-fun e!2661459 () Bool)

(declare-fun setElem!26219 () Context!5614)

(declare-fun tp!1312227 () Bool)

(declare-fun setRes!26219 () Bool)

(declare-fun setNonEmpty!26219 () Bool)

(assert (=> setNonEmpty!26219 (= setRes!26219 (and tp!1312227 (inv!62970 setElem!26219) e!2661459))))

(declare-fun setRest!26219 () (InoxSet Context!5614))

(assert (=> setNonEmpty!26219 (= (_2!25633 (h!52932 (zeroValue!4560 (v!41410 (underlying!8831 (v!41411 (underlying!8832 (cache!4347 cacheUp!725)))))))) ((_ map or) (store ((as const (Array Context!5614 Bool)) false) setElem!26219 true) setRest!26219))))

(declare-fun b!4285926 () Bool)

(declare-fun e!2661460 () Bool)

(declare-fun tp!1312226 () Bool)

(assert (=> b!4285926 (= e!2661460 tp!1312226)))

(declare-fun b!4285927 () Bool)

(declare-fun tp!1312229 () Bool)

(assert (=> b!4285927 (= e!2661459 tp!1312229)))

(declare-fun tp!1312228 () Bool)

(declare-fun e!2661461 () Bool)

(declare-fun b!4285928 () Bool)

(assert (=> b!4285928 (= e!2661461 (and (inv!62970 (_1!25632 (_1!25633 (h!52932 (zeroValue!4560 (v!41410 (underlying!8831 (v!41411 (underlying!8832 (cache!4347 cacheUp!725)))))))))) e!2661460 tp_is_empty!23065 setRes!26219 tp!1312228))))

(declare-fun condSetEmpty!26219 () Bool)

(assert (=> b!4285928 (= condSetEmpty!26219 (= (_2!25633 (h!52932 (zeroValue!4560 (v!41410 (underlying!8831 (v!41411 (underlying!8832 (cache!4347 cacheUp!725)))))))) ((as const (Array Context!5614 Bool)) false)))))

(declare-fun setIsEmpty!26219 () Bool)

(assert (=> setIsEmpty!26219 setRes!26219))

(assert (=> b!4285637 (= tp!1312080 e!2661461)))

(assert (= b!4285928 b!4285926))

(assert (= (and b!4285928 condSetEmpty!26219) setIsEmpty!26219))

(assert (= (and b!4285928 (not condSetEmpty!26219)) setNonEmpty!26219))

(assert (= setNonEmpty!26219 b!4285927))

(assert (= (and b!4285637 ((_ is Cons!47512) (zeroValue!4560 (v!41410 (underlying!8831 (v!41411 (underlying!8832 (cache!4347 cacheUp!725)))))))) b!4285928))

(declare-fun m!4881815 () Bool)

(assert (=> setNonEmpty!26219 m!4881815))

(declare-fun m!4881817 () Bool)

(assert (=> b!4285928 m!4881817))

(declare-fun tp!1312231 () Bool)

(declare-fun setNonEmpty!26220 () Bool)

(declare-fun setRes!26220 () Bool)

(declare-fun e!2661462 () Bool)

(declare-fun setElem!26220 () Context!5614)

(assert (=> setNonEmpty!26220 (= setRes!26220 (and tp!1312231 (inv!62970 setElem!26220) e!2661462))))

(declare-fun setRest!26220 () (InoxSet Context!5614))

(assert (=> setNonEmpty!26220 (= (_2!25633 (h!52932 (minValue!4560 (v!41410 (underlying!8831 (v!41411 (underlying!8832 (cache!4347 cacheUp!725)))))))) ((_ map or) (store ((as const (Array Context!5614 Bool)) false) setElem!26220 true) setRest!26220))))

(declare-fun b!4285929 () Bool)

(declare-fun e!2661463 () Bool)

(declare-fun tp!1312230 () Bool)

(assert (=> b!4285929 (= e!2661463 tp!1312230)))

(declare-fun b!4285930 () Bool)

(declare-fun tp!1312233 () Bool)

(assert (=> b!4285930 (= e!2661462 tp!1312233)))

(declare-fun b!4285931 () Bool)

(declare-fun tp!1312232 () Bool)

(declare-fun e!2661464 () Bool)

(assert (=> b!4285931 (= e!2661464 (and (inv!62970 (_1!25632 (_1!25633 (h!52932 (minValue!4560 (v!41410 (underlying!8831 (v!41411 (underlying!8832 (cache!4347 cacheUp!725)))))))))) e!2661463 tp_is_empty!23065 setRes!26220 tp!1312232))))

(declare-fun condSetEmpty!26220 () Bool)

(assert (=> b!4285931 (= condSetEmpty!26220 (= (_2!25633 (h!52932 (minValue!4560 (v!41410 (underlying!8831 (v!41411 (underlying!8832 (cache!4347 cacheUp!725)))))))) ((as const (Array Context!5614 Bool)) false)))))

(declare-fun setIsEmpty!26220 () Bool)

(assert (=> setIsEmpty!26220 setRes!26220))

(assert (=> b!4285637 (= tp!1312074 e!2661464)))

(assert (= b!4285931 b!4285929))

(assert (= (and b!4285931 condSetEmpty!26220) setIsEmpty!26220))

(assert (= (and b!4285931 (not condSetEmpty!26220)) setNonEmpty!26220))

(assert (= setNonEmpty!26220 b!4285930))

(assert (= (and b!4285637 ((_ is Cons!47512) (minValue!4560 (v!41410 (underlying!8831 (v!41411 (underlying!8832 (cache!4347 cacheUp!725)))))))) b!4285931))

(declare-fun m!4881819 () Bool)

(assert (=> setNonEmpty!26220 m!4881819))

(declare-fun m!4881821 () Bool)

(assert (=> b!4285931 m!4881821))

(declare-fun e!2661465 () Bool)

(declare-fun setElem!26221 () Context!5614)

(declare-fun setNonEmpty!26221 () Bool)

(declare-fun tp!1312235 () Bool)

(declare-fun setRes!26221 () Bool)

(assert (=> setNonEmpty!26221 (= setRes!26221 (and tp!1312235 (inv!62970 setElem!26221) e!2661465))))

(declare-fun setRest!26221 () (InoxSet Context!5614))

(assert (=> setNonEmpty!26221 (= (_2!25636 (h!52934 (zeroValue!4561 (v!41413 (underlying!8833 (v!41414 (underlying!8834 (cache!4348 cacheDown!738)))))))) ((_ map or) (store ((as const (Array Context!5614 Bool)) false) setElem!26221 true) setRest!26221))))

(declare-fun tp!1312234 () Bool)

(declare-fun e!2661466 () Bool)

(declare-fun tp!1312236 () Bool)

(declare-fun b!4285932 () Bool)

(declare-fun e!2661467 () Bool)

(assert (=> b!4285932 (= e!2661467 (and tp!1312236 (inv!62970 (_2!25635 (_1!25636 (h!52934 (zeroValue!4561 (v!41413 (underlying!8833 (v!41414 (underlying!8834 (cache!4348 cacheDown!738)))))))))) e!2661466 tp_is_empty!23065 setRes!26221 tp!1312234))))

(declare-fun condSetEmpty!26221 () Bool)

(assert (=> b!4285932 (= condSetEmpty!26221 (= (_2!25636 (h!52934 (zeroValue!4561 (v!41413 (underlying!8833 (v!41414 (underlying!8834 (cache!4348 cacheDown!738)))))))) ((as const (Array Context!5614 Bool)) false)))))

(declare-fun b!4285933 () Bool)

(declare-fun tp!1312237 () Bool)

(assert (=> b!4285933 (= e!2661465 tp!1312237)))

(assert (=> b!4285629 (= tp!1312084 e!2661467)))

(declare-fun setIsEmpty!26221 () Bool)

(assert (=> setIsEmpty!26221 setRes!26221))

(declare-fun b!4285934 () Bool)

(declare-fun tp!1312238 () Bool)

(assert (=> b!4285934 (= e!2661466 tp!1312238)))

(assert (= b!4285932 b!4285934))

(assert (= (and b!4285932 condSetEmpty!26221) setIsEmpty!26221))

(assert (= (and b!4285932 (not condSetEmpty!26221)) setNonEmpty!26221))

(assert (= setNonEmpty!26221 b!4285933))

(assert (= (and b!4285629 ((_ is Cons!47514) (zeroValue!4561 (v!41413 (underlying!8833 (v!41414 (underlying!8834 (cache!4348 cacheDown!738)))))))) b!4285932))

(declare-fun m!4881823 () Bool)

(assert (=> setNonEmpty!26221 m!4881823))

(declare-fun m!4881825 () Bool)

(assert (=> b!4285932 m!4881825))

(declare-fun setRes!26222 () Bool)

(declare-fun setElem!26222 () Context!5614)

(declare-fun e!2661468 () Bool)

(declare-fun tp!1312240 () Bool)

(declare-fun setNonEmpty!26222 () Bool)

(assert (=> setNonEmpty!26222 (= setRes!26222 (and tp!1312240 (inv!62970 setElem!26222) e!2661468))))

(declare-fun setRest!26222 () (InoxSet Context!5614))

(assert (=> setNonEmpty!26222 (= (_2!25636 (h!52934 (minValue!4561 (v!41413 (underlying!8833 (v!41414 (underlying!8834 (cache!4348 cacheDown!738)))))))) ((_ map or) (store ((as const (Array Context!5614 Bool)) false) setElem!26222 true) setRest!26222))))

(declare-fun e!2661469 () Bool)

(declare-fun e!2661470 () Bool)

(declare-fun b!4285935 () Bool)

(declare-fun tp!1312239 () Bool)

(declare-fun tp!1312241 () Bool)

(assert (=> b!4285935 (= e!2661470 (and tp!1312241 (inv!62970 (_2!25635 (_1!25636 (h!52934 (minValue!4561 (v!41413 (underlying!8833 (v!41414 (underlying!8834 (cache!4348 cacheDown!738)))))))))) e!2661469 tp_is_empty!23065 setRes!26222 tp!1312239))))

(declare-fun condSetEmpty!26222 () Bool)

(assert (=> b!4285935 (= condSetEmpty!26222 (= (_2!25636 (h!52934 (minValue!4561 (v!41413 (underlying!8833 (v!41414 (underlying!8834 (cache!4348 cacheDown!738)))))))) ((as const (Array Context!5614 Bool)) false)))))

(declare-fun b!4285936 () Bool)

(declare-fun tp!1312242 () Bool)

(assert (=> b!4285936 (= e!2661468 tp!1312242)))

(assert (=> b!4285629 (= tp!1312063 e!2661470)))

(declare-fun setIsEmpty!26222 () Bool)

(assert (=> setIsEmpty!26222 setRes!26222))

(declare-fun b!4285937 () Bool)

(declare-fun tp!1312243 () Bool)

(assert (=> b!4285937 (= e!2661469 tp!1312243)))

(assert (= b!4285935 b!4285937))

(assert (= (and b!4285935 condSetEmpty!26222) setIsEmpty!26222))

(assert (= (and b!4285935 (not condSetEmpty!26222)) setNonEmpty!26222))

(assert (= setNonEmpty!26222 b!4285936))

(assert (= (and b!4285629 ((_ is Cons!47514) (minValue!4561 (v!41413 (underlying!8833 (v!41414 (underlying!8834 (cache!4348 cacheDown!738)))))))) b!4285935))

(declare-fun m!4881827 () Bool)

(assert (=> setNonEmpty!26222 m!4881827))

(declare-fun m!4881829 () Bool)

(assert (=> b!4285935 m!4881829))

(declare-fun e!2661472 () Bool)

(assert (=> b!4285638 (= tp!1312059 e!2661472)))

(declare-fun setRes!26223 () Bool)

(declare-fun tp!1312245 () Bool)

(declare-fun e!2661471 () Bool)

(declare-fun setElem!26223 () Context!5614)

(declare-fun setNonEmpty!26223 () Bool)

(assert (=> setNonEmpty!26223 (= setRes!26223 (and tp!1312245 (inv!62970 setElem!26223) e!2661471))))

(declare-fun setRest!26223 () (InoxSet Context!5614))

(assert (=> setNonEmpty!26223 (= (_1!25630 (_1!25631 (h!52930 (zeroValue!4559 (v!41408 (underlying!8829 (v!41409 (underlying!8830 (cache!4346 cacheFindLongestMatch!156))))))))) ((_ map or) (store ((as const (Array Context!5614 Bool)) false) setElem!26223 true) setRest!26223))))

(declare-fun setIsEmpty!26223 () Bool)

(assert (=> setIsEmpty!26223 setRes!26223))

(declare-fun b!4285938 () Bool)

(declare-fun tp!1312246 () Bool)

(assert (=> b!4285938 (= e!2661472 (and setRes!26223 tp!1312246))))

(declare-fun condSetEmpty!26223 () Bool)

(assert (=> b!4285938 (= condSetEmpty!26223 (= (_1!25630 (_1!25631 (h!52930 (zeroValue!4559 (v!41408 (underlying!8829 (v!41409 (underlying!8830 (cache!4346 cacheFindLongestMatch!156))))))))) ((as const (Array Context!5614 Bool)) false)))))

(declare-fun b!4285939 () Bool)

(declare-fun tp!1312244 () Bool)

(assert (=> b!4285939 (= e!2661471 tp!1312244)))

(assert (= (and b!4285938 condSetEmpty!26223) setIsEmpty!26223))

(assert (= (and b!4285938 (not condSetEmpty!26223)) setNonEmpty!26223))

(assert (= setNonEmpty!26223 b!4285939))

(assert (= (and b!4285638 ((_ is Cons!47510) (zeroValue!4559 (v!41408 (underlying!8829 (v!41409 (underlying!8830 (cache!4346 cacheFindLongestMatch!156)))))))) b!4285938))

(declare-fun m!4881831 () Bool)

(assert (=> setNonEmpty!26223 m!4881831))

(declare-fun e!2661474 () Bool)

(assert (=> b!4285638 (= tp!1312070 e!2661474)))

(declare-fun setElem!26224 () Context!5614)

(declare-fun setNonEmpty!26224 () Bool)

(declare-fun tp!1312248 () Bool)

(declare-fun setRes!26224 () Bool)

(declare-fun e!2661473 () Bool)

(assert (=> setNonEmpty!26224 (= setRes!26224 (and tp!1312248 (inv!62970 setElem!26224) e!2661473))))

(declare-fun setRest!26224 () (InoxSet Context!5614))

(assert (=> setNonEmpty!26224 (= (_1!25630 (_1!25631 (h!52930 (minValue!4559 (v!41408 (underlying!8829 (v!41409 (underlying!8830 (cache!4346 cacheFindLongestMatch!156))))))))) ((_ map or) (store ((as const (Array Context!5614 Bool)) false) setElem!26224 true) setRest!26224))))

(declare-fun setIsEmpty!26224 () Bool)

(assert (=> setIsEmpty!26224 setRes!26224))

(declare-fun b!4285940 () Bool)

(declare-fun tp!1312249 () Bool)

(assert (=> b!4285940 (= e!2661474 (and setRes!26224 tp!1312249))))

(declare-fun condSetEmpty!26224 () Bool)

(assert (=> b!4285940 (= condSetEmpty!26224 (= (_1!25630 (_1!25631 (h!52930 (minValue!4559 (v!41408 (underlying!8829 (v!41409 (underlying!8830 (cache!4346 cacheFindLongestMatch!156))))))))) ((as const (Array Context!5614 Bool)) false)))))

(declare-fun b!4285941 () Bool)

(declare-fun tp!1312247 () Bool)

(assert (=> b!4285941 (= e!2661473 tp!1312247)))

(assert (= (and b!4285940 condSetEmpty!26224) setIsEmpty!26224))

(assert (= (and b!4285940 (not condSetEmpty!26224)) setNonEmpty!26224))

(assert (= setNonEmpty!26224 b!4285941))

(assert (= (and b!4285638 ((_ is Cons!47510) (minValue!4559 (v!41408 (underlying!8829 (v!41409 (underlying!8830 (cache!4346 cacheFindLongestMatch!156)))))))) b!4285940))

(declare-fun m!4881833 () Bool)

(assert (=> setNonEmpty!26224 m!4881833))

(declare-fun tp!1312251 () Bool)

(declare-fun e!2661475 () Bool)

(declare-fun tp!1312252 () Bool)

(declare-fun b!4285942 () Bool)

(assert (=> b!4285942 (= e!2661475 (and (inv!62962 (left!35349 (c!730104 input!1632))) tp!1312251 (inv!62962 (right!35679 (c!730104 input!1632))) tp!1312252))))

(declare-fun b!4285944 () Bool)

(declare-fun e!2661476 () Bool)

(declare-fun tp!1312250 () Bool)

(assert (=> b!4285944 (= e!2661476 tp!1312250)))

(declare-fun b!4285943 () Bool)

(assert (=> b!4285943 (= e!2661475 (and (inv!62971 (xs!17666 (c!730104 input!1632))) e!2661476))))

(assert (=> b!4285602 (= tp!1312085 (and (inv!62962 (c!730104 input!1632)) e!2661475))))

(assert (= (and b!4285602 ((_ is Node!14360) (c!730104 input!1632))) b!4285942))

(assert (= b!4285943 b!4285944))

(assert (= (and b!4285602 ((_ is Leaf!22220) (c!730104 input!1632))) b!4285943))

(declare-fun m!4881835 () Bool)

(assert (=> b!4285942 m!4881835))

(declare-fun m!4881837 () Bool)

(assert (=> b!4285942 m!4881837))

(declare-fun m!4881839 () Bool)

(assert (=> b!4285943 m!4881839))

(assert (=> b!4285602 m!4881531))

(declare-fun e!2661479 () Bool)

(assert (=> b!4285611 (= tp!1312068 e!2661479)))

(declare-fun b!4285957 () Bool)

(declare-fun tp!1312264 () Bool)

(assert (=> b!4285957 (= e!2661479 tp!1312264)))

(declare-fun b!4285958 () Bool)

(declare-fun tp!1312265 () Bool)

(declare-fun tp!1312267 () Bool)

(assert (=> b!4285958 (= e!2661479 (and tp!1312265 tp!1312267))))

(declare-fun b!4285956 () Bool)

(declare-fun tp!1312266 () Bool)

(declare-fun tp!1312263 () Bool)

(assert (=> b!4285956 (= e!2661479 (and tp!1312266 tp!1312263))))

(declare-fun b!4285955 () Bool)

(assert (=> b!4285955 (= e!2661479 tp_is_empty!23065)))

(assert (= (and b!4285611 ((_ is ElementMatch!12917) (regex!8008 rule!232))) b!4285955))

(assert (= (and b!4285611 ((_ is Concat!21235) (regex!8008 rule!232))) b!4285956))

(assert (= (and b!4285611 ((_ is Star!12917) (regex!8008 rule!232))) b!4285957))

(assert (= (and b!4285611 ((_ is Union!12917) (regex!8008 rule!232))) b!4285958))

(declare-fun setRes!26225 () Bool)

(declare-fun e!2661480 () Bool)

(declare-fun setElem!26225 () Context!5614)

(declare-fun tp!1312269 () Bool)

(declare-fun setNonEmpty!26225 () Bool)

(assert (=> setNonEmpty!26225 (= setRes!26225 (and tp!1312269 (inv!62970 setElem!26225) e!2661480))))

(declare-fun setRest!26225 () (InoxSet Context!5614))

(assert (=> setNonEmpty!26225 (= (_2!25633 (h!52932 mapDefault!19452)) ((_ map or) (store ((as const (Array Context!5614 Bool)) false) setElem!26225 true) setRest!26225))))

(declare-fun b!4285959 () Bool)

(declare-fun e!2661481 () Bool)

(declare-fun tp!1312268 () Bool)

(assert (=> b!4285959 (= e!2661481 tp!1312268)))

(declare-fun b!4285960 () Bool)

(declare-fun tp!1312271 () Bool)

(assert (=> b!4285960 (= e!2661480 tp!1312271)))

(declare-fun e!2661482 () Bool)

(declare-fun b!4285961 () Bool)

(declare-fun tp!1312270 () Bool)

(assert (=> b!4285961 (= e!2661482 (and (inv!62970 (_1!25632 (_1!25633 (h!52932 mapDefault!19452)))) e!2661481 tp_is_empty!23065 setRes!26225 tp!1312270))))

(declare-fun condSetEmpty!26225 () Bool)

(assert (=> b!4285961 (= condSetEmpty!26225 (= (_2!25633 (h!52932 mapDefault!19452)) ((as const (Array Context!5614 Bool)) false)))))

(declare-fun setIsEmpty!26225 () Bool)

(assert (=> setIsEmpty!26225 setRes!26225))

(assert (=> b!4285603 (= tp!1312064 e!2661482)))

(assert (= b!4285961 b!4285959))

(assert (= (and b!4285961 condSetEmpty!26225) setIsEmpty!26225))

(assert (= (and b!4285961 (not condSetEmpty!26225)) setNonEmpty!26225))

(assert (= setNonEmpty!26225 b!4285960))

(assert (= (and b!4285603 ((_ is Cons!47512) mapDefault!19452)) b!4285961))

(declare-fun m!4881841 () Bool)

(assert (=> setNonEmpty!26225 m!4881841))

(declare-fun m!4881843 () Bool)

(assert (=> b!4285961 m!4881843))

(declare-fun b_lambda!126111 () Bool)

(assert (= b_lambda!126109 (or (and b!4285614 b_free!127003) b_lambda!126111)))

(declare-fun b_lambda!126113 () Bool)

(assert (= b_lambda!126107 (or (and b!4285614 b_free!127005) b_lambda!126113)))

(declare-fun b_lambda!126115 () Bool)

(assert (= b_lambda!126105 (or (and b!4285614 b_free!127003) b_lambda!126115)))

(check-sat (not d!1265300) (not setNonEmpty!26204) (not setNonEmpty!26207) (not mapNonEmpty!19457) (not d!1265312) (not b!4285863) (not b!4285780) (not b_next!127717) (not bm!294485) (not b!4285777) (not b!4285822) (not setNonEmpty!26210) (not b!4285915) (not setNonEmpty!26218) (not setNonEmpty!26216) (not d!1265252) (not b!4285757) b_and!338219 (not b!4285657) b_and!338231 (not b_next!127709) (not b!4285958) (not b!4285935) (not b!4285899) (not setNonEmpty!26222) (not b!4285756) (not bm!294486) (not b!4285956) (not b!4285654) (not d!1265244) (not b_lambda!126115) (not b!4285659) (not b!4285885) (not d!1265302) (not d!1265254) (not b!4285897) (not b!4285715) (not bm!294481) (not b!4285861) b_and!338225 (not b!4285672) (not b!4285755) (not mapNonEmpty!19460) (not b!4285656) (not b!4285862) (not setNonEmpty!26219) (not b!4285931) (not setNonEmpty!26224) b_and!338233 (not b!4285810) (not b!4285758) (not d!1265296) (not b!4285927) (not b!4285922) (not b_next!127721) (not b!4285919) (not b!4285771) (not b!4285736) (not b!4285843) (not b!4285938) (not bm!294480) (not bm!294489) (not b!4285896) (not b!4285760) (not b!4285917) (not setNonEmpty!26221) (not bm!294482) (not b!4285961) (not d!1265276) (not b!4285895) (not b!4285820) (not b!4285937) (not b!4285742) b_and!338221 (not d!1265242) (not setNonEmpty!26194) (not d!1265274) (not b!4285959) (not setNonEmpty!26220) (not d!1265310) (not b!4285809) (not d!1265260) (not b!4285932) (not setNonEmpty!26225) b_and!338227 (not d!1265290) (not b!4285934) (not tb!257089) (not b!4285712) (not b!4285943) (not d!1265240) (not b!4285682) (not b!4285602) (not b!4285737) (not b!4285941) (not setNonEmpty!26198) (not b!4285926) (not b_next!127719) (not b!4285928) (not d!1265238) (not b!4285886) (not b!4285873) (not b!4285939) (not d!1265250) (not setNonEmpty!26203) (not b!4285864) (not d!1265288) (not b!4285900) (not mapNonEmpty!19463) (not d!1265316) (not d!1265278) (not d!1265258) (not b!4285738) (not b_next!127713) (not b!4285860) (not bm!294484) (not b!4285918) (not b!4285833) (not b!4285740) (not tb!257091) (not b!4285960) (not setNonEmpty!26223) (not bm!294483) (not b!4285859) (not b!4285930) (not b!4285605) (not setNonEmpty!26217) (not b_next!127707) (not b!4285821) (not setNonEmpty!26215) (not bm!294479) (not d!1265272) (not b!4285727) (not b!4285875) (not b_lambda!126113) (not b!4285774) tp_is_empty!23065 (not b!4285916) (not b!4285616) (not b!4285929) (not b!4285940) (not b!4285925) (not b!4285924) (not d!1265256) (not b!4285921) (not setNonEmpty!26195) (not b!4285884) b_and!338223 (not b!4285646) (not b_next!127711) (not b!4285835) (not b!4285668) (not b!4285844) (not b!4285834) (not b!4285662) (not b_lambda!126111) b_and!338217 (not b!4285920) (not b!4285836) (not d!1265262) (not b!4285933) (not b!4285942) (not b_next!127715) (not b!4285717) (not d!1265318) (not b!4285957) (not b!4285936) (not b!4285813) (not b!4285923) (not b!4285944) (not b!4285721) (not b!4285898) (not b!4285874))
(check-sat (not b_next!127717) b_and!338225 b_and!338233 (not b_next!127721) b_and!338221 b_and!338227 (not b_next!127719) (not b_next!127713) (not b_next!127707) b_and!338217 (not b_next!127715) b_and!338219 b_and!338231 (not b_next!127709) b_and!338223 (not b_next!127711))
