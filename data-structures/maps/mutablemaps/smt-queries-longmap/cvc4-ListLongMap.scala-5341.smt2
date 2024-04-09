; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71400 () Bool)

(assert start!71400)

(declare-fun b_free!13457 () Bool)

(declare-fun b_next!13457 () Bool)

(assert (=> start!71400 (= b_free!13457 (not b_next!13457))))

(declare-fun tp!47146 () Bool)

(declare-fun b_and!22457 () Bool)

(assert (=> start!71400 (= tp!47146 b_and!22457)))

(declare-fun b!828796 () Bool)

(declare-fun e!461942 () Bool)

(declare-fun tp_is_empty!15167 () Bool)

(assert (=> b!828796 (= e!461942 tp_is_empty!15167)))

(declare-fun b!828797 () Bool)

(declare-fun e!461945 () Bool)

(declare-fun e!461946 () Bool)

(assert (=> b!828797 (= e!461945 (not e!461946))))

(declare-fun res!564802 () Bool)

(assert (=> b!828797 (=> res!564802 e!461946)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!828797 (= res!564802 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!25223 0))(
  ( (V!25224 (val!7631 Int)) )
))
(declare-datatypes ((tuple2!10142 0))(
  ( (tuple2!10143 (_1!5081 (_ BitVec 64)) (_2!5081 V!25223)) )
))
(declare-datatypes ((List!15976 0))(
  ( (Nil!15973) (Cons!15972 (h!17101 tuple2!10142) (t!22341 List!15976)) )
))
(declare-datatypes ((ListLongMap!8979 0))(
  ( (ListLongMap!8980 (toList!4505 List!15976)) )
))
(declare-fun lt!375725 () ListLongMap!8979)

(declare-fun lt!375724 () ListLongMap!8979)

(assert (=> b!828797 (= lt!375725 lt!375724)))

(declare-fun zeroValueBefore!34 () V!25223)

(declare-datatypes ((array!46474 0))(
  ( (array!46475 (arr!22273 (Array (_ BitVec 32) (_ BitVec 64))) (size!22694 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46474)

(declare-datatypes ((Unit!28399 0))(
  ( (Unit!28400) )
))
(declare-fun lt!375730 () Unit!28399)

(declare-fun zeroValueAfter!34 () V!25223)

(declare-fun minValue!754 () V!25223)

(declare-datatypes ((ValueCell!7168 0))(
  ( (ValueCellFull!7168 (v!10065 V!25223)) (EmptyCell!7168) )
))
(declare-datatypes ((array!46476 0))(
  ( (array!46477 (arr!22274 (Array (_ BitVec 32) ValueCell!7168)) (size!22695 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46476)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!597 (array!46474 array!46476 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25223 V!25223 V!25223 V!25223 (_ BitVec 32) Int) Unit!28399)

(assert (=> b!828797 (= lt!375730 (lemmaNoChangeToArrayThenSameMapNoExtras!597 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2507 (array!46474 array!46476 (_ BitVec 32) (_ BitVec 32) V!25223 V!25223 (_ BitVec 32) Int) ListLongMap!8979)

(assert (=> b!828797 (= lt!375724 (getCurrentListMapNoExtraKeys!2507 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!828797 (= lt!375725 (getCurrentListMapNoExtraKeys!2507 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!828798 () Bool)

(declare-fun e!461939 () Bool)

(assert (=> b!828798 (= e!461946 e!461939)))

(declare-fun res!564797 () Bool)

(assert (=> b!828798 (=> res!564797 e!461939)))

(declare-fun lt!375731 () ListLongMap!8979)

(declare-fun lt!375727 () tuple2!10142)

(declare-fun lt!375732 () tuple2!10142)

(declare-fun +!1938 (ListLongMap!8979 tuple2!10142) ListLongMap!8979)

(assert (=> b!828798 (= res!564797 (not (= lt!375731 (+!1938 (+!1938 lt!375724 lt!375727) lt!375732))))))

(declare-fun lt!375729 () ListLongMap!8979)

(assert (=> b!828798 (= (+!1938 lt!375725 lt!375732) (+!1938 lt!375729 lt!375732))))

(declare-fun lt!375726 () Unit!28399)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!247 (ListLongMap!8979 (_ BitVec 64) V!25223 V!25223) Unit!28399)

(assert (=> b!828798 (= lt!375726 (addSameAsAddTwiceSameKeyDiffValues!247 lt!375725 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!828798 (= lt!375732 (tuple2!10143 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!461940 () Bool)

(assert (=> b!828798 e!461940))

(declare-fun res!564796 () Bool)

(assert (=> b!828798 (=> (not res!564796) (not e!461940))))

(declare-fun lt!375728 () ListLongMap!8979)

(assert (=> b!828798 (= res!564796 (= lt!375728 lt!375729))))

(assert (=> b!828798 (= lt!375729 (+!1938 lt!375725 lt!375727))))

(assert (=> b!828798 (= lt!375727 (tuple2!10143 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2580 (array!46474 array!46476 (_ BitVec 32) (_ BitVec 32) V!25223 V!25223 (_ BitVec 32) Int) ListLongMap!8979)

(assert (=> b!828798 (= lt!375731 (getCurrentListMap!2580 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!828798 (= lt!375728 (getCurrentListMap!2580 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!828799 () Bool)

(declare-fun res!564800 () Bool)

(assert (=> b!828799 (=> (not res!564800) (not e!461945))))

(declare-datatypes ((List!15977 0))(
  ( (Nil!15974) (Cons!15973 (h!17102 (_ BitVec 64)) (t!22342 List!15977)) )
))
(declare-fun arrayNoDuplicates!0 (array!46474 (_ BitVec 32) List!15977) Bool)

(assert (=> b!828799 (= res!564800 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15974))))

(declare-fun b!828800 () Bool)

(assert (=> b!828800 (= e!461940 (= lt!375731 (+!1938 lt!375724 (tuple2!10143 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!828801 () Bool)

(declare-fun e!461944 () Bool)

(declare-fun e!461943 () Bool)

(declare-fun mapRes!24391 () Bool)

(assert (=> b!828801 (= e!461944 (and e!461943 mapRes!24391))))

(declare-fun condMapEmpty!24391 () Bool)

(declare-fun mapDefault!24391 () ValueCell!7168)

