; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71268 () Bool)

(assert start!71268)

(declare-fun b_free!13391 () Bool)

(declare-fun b_next!13391 () Bool)

(assert (=> start!71268 (= b_free!13391 (not b_next!13391))))

(declare-fun tp!46935 () Bool)

(declare-fun b_and!22347 () Bool)

(assert (=> start!71268 (= tp!46935 b_and!22347)))

(declare-fun b!827395 () Bool)

(declare-fun e!460963 () Bool)

(declare-fun tp_is_empty!15101 () Bool)

(assert (=> b!827395 (= e!460963 tp_is_empty!15101)))

(declare-fun b!827396 () Bool)

(declare-fun res!564052 () Bool)

(declare-fun e!460962 () Bool)

(assert (=> b!827396 (=> (not res!564052) (not e!460962))))

(declare-datatypes ((array!46336 0))(
  ( (array!46337 (arr!22208 (Array (_ BitVec 32) (_ BitVec 64))) (size!22629 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46336)

(declare-datatypes ((List!15918 0))(
  ( (Nil!15915) (Cons!15914 (h!17043 (_ BitVec 64)) (t!22275 List!15918)) )
))
(declare-fun arrayNoDuplicates!0 (array!46336 (_ BitVec 32) List!15918) Bool)

(assert (=> b!827396 (= res!564052 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15915))))

(declare-fun mapIsEmpty!24280 () Bool)

(declare-fun mapRes!24280 () Bool)

(assert (=> mapIsEmpty!24280 mapRes!24280))

(declare-fun b!827397 () Bool)

(declare-fun res!564053 () Bool)

(assert (=> b!827397 (=> (not res!564053) (not e!460962))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46336 (_ BitVec 32)) Bool)

(assert (=> b!827397 (= res!564053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!827398 () Bool)

(declare-fun res!564054 () Bool)

(assert (=> b!827398 (=> (not res!564054) (not e!460962))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!25135 0))(
  ( (V!25136 (val!7598 Int)) )
))
(declare-datatypes ((ValueCell!7135 0))(
  ( (ValueCellFull!7135 (v!10029 V!25135)) (EmptyCell!7135) )
))
(declare-datatypes ((array!46338 0))(
  ( (array!46339 (arr!22209 (Array (_ BitVec 32) ValueCell!7135)) (size!22630 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46338)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!827398 (= res!564054 (and (= (size!22630 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22629 _keys!976) (size!22630 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!827399 () Bool)

(assert (=> b!827399 (= e!460962 false)))

(declare-fun zeroValueAfter!34 () V!25135)

(declare-fun minValue!754 () V!25135)

(declare-datatypes ((tuple2!10080 0))(
  ( (tuple2!10081 (_1!5050 (_ BitVec 64)) (_2!5050 V!25135)) )
))
(declare-datatypes ((List!15919 0))(
  ( (Nil!15916) (Cons!15915 (h!17044 tuple2!10080) (t!22276 List!15919)) )
))
(declare-datatypes ((ListLongMap!8917 0))(
  ( (ListLongMap!8918 (toList!4474 List!15919)) )
))
(declare-fun lt!374884 () ListLongMap!8917)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2481 (array!46336 array!46338 (_ BitVec 32) (_ BitVec 32) V!25135 V!25135 (_ BitVec 32) Int) ListLongMap!8917)

(assert (=> b!827399 (= lt!374884 (getCurrentListMapNoExtraKeys!2481 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25135)

(declare-fun lt!374883 () ListLongMap!8917)

(assert (=> b!827399 (= lt!374883 (getCurrentListMapNoExtraKeys!2481 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!827400 () Bool)

(declare-fun e!460966 () Bool)

(declare-fun e!460965 () Bool)

(assert (=> b!827400 (= e!460966 (and e!460965 mapRes!24280))))

(declare-fun condMapEmpty!24280 () Bool)

(declare-fun mapDefault!24280 () ValueCell!7135)

