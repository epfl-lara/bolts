; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70610 () Bool)

(assert start!70610)

(declare-fun b_free!12893 () Bool)

(declare-fun b_next!12893 () Bool)

(assert (=> start!70610 (= b_free!12893 (not b_next!12893))))

(declare-fun tp!45414 () Bool)

(declare-fun b_and!21753 () Bool)

(assert (=> start!70610 (= tp!45414 b_and!21753)))

(declare-fun res!559545 () Bool)

(declare-fun e!455439 () Bool)

(assert (=> start!70610 (=> (not res!559545) (not e!455439))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70610 (= res!559545 (validMask!0 mask!1312))))

(assert (=> start!70610 e!455439))

(declare-fun tp_is_empty!14603 () Bool)

(assert (=> start!70610 tp_is_empty!14603))

(declare-datatypes ((array!45370 0))(
  ( (array!45371 (arr!21734 (Array (_ BitVec 32) (_ BitVec 64))) (size!22155 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45370)

(declare-fun array_inv!17343 (array!45370) Bool)

(assert (=> start!70610 (array_inv!17343 _keys!976)))

(assert (=> start!70610 true))

(declare-datatypes ((V!24471 0))(
  ( (V!24472 (val!7349 Int)) )
))
(declare-datatypes ((ValueCell!6886 0))(
  ( (ValueCellFull!6886 (v!9775 V!24471)) (EmptyCell!6886) )
))
(declare-datatypes ((array!45372 0))(
  ( (array!45373 (arr!21735 (Array (_ BitVec 32) ValueCell!6886)) (size!22156 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45372)

(declare-fun e!455440 () Bool)

(declare-fun array_inv!17344 (array!45372) Bool)

(assert (=> start!70610 (and (array_inv!17344 _values!788) e!455440)))

(assert (=> start!70610 tp!45414))

(declare-fun b!819848 () Bool)

(declare-fun e!455438 () Bool)

(assert (=> b!819848 (= e!455438 true)))

(declare-datatypes ((tuple2!9688 0))(
  ( (tuple2!9689 (_1!4854 (_ BitVec 64)) (_2!4854 V!24471)) )
))
(declare-datatypes ((List!15545 0))(
  ( (Nil!15542) (Cons!15541 (h!16670 tuple2!9688) (t!21884 List!15545)) )
))
(declare-datatypes ((ListLongMap!8525 0))(
  ( (ListLongMap!8526 (toList!4278 List!15545)) )
))
(declare-fun lt!368286 () ListLongMap!8525)

(declare-fun lt!368285 () tuple2!9688)

(declare-fun lt!368284 () ListLongMap!8525)

(declare-fun lt!368289 () tuple2!9688)

(declare-fun +!1819 (ListLongMap!8525 tuple2!9688) ListLongMap!8525)

(assert (=> b!819848 (= lt!368286 (+!1819 (+!1819 lt!368284 lt!368285) lt!368289))))

(declare-fun lt!368290 () ListLongMap!8525)

(declare-fun lt!368291 () ListLongMap!8525)

(assert (=> b!819848 (= (+!1819 lt!368290 lt!368289) (+!1819 lt!368291 lt!368289))))

(declare-fun zeroValueBefore!34 () V!24471)

(declare-datatypes ((Unit!28007 0))(
  ( (Unit!28008) )
))
(declare-fun lt!368282 () Unit!28007)

(declare-fun zeroValueAfter!34 () V!24471)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!195 (ListLongMap!8525 (_ BitVec 64) V!24471 V!24471) Unit!28007)

(assert (=> b!819848 (= lt!368282 (addSameAsAddTwiceSameKeyDiffValues!195 lt!368290 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!819848 (= lt!368289 (tuple2!9689 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!455436 () Bool)

(assert (=> b!819848 e!455436))

(declare-fun res!559549 () Bool)

(assert (=> b!819848 (=> (not res!559549) (not e!455436))))

(declare-fun lt!368287 () ListLongMap!8525)

(assert (=> b!819848 (= res!559549 (= lt!368287 lt!368291))))

(assert (=> b!819848 (= lt!368291 (+!1819 lt!368290 lt!368285))))

(assert (=> b!819848 (= lt!368285 (tuple2!9689 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun lt!368283 () ListLongMap!8525)

(declare-fun minValue!754 () V!24471)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2430 (array!45370 array!45372 (_ BitVec 32) (_ BitVec 32) V!24471 V!24471 (_ BitVec 32) Int) ListLongMap!8525)

(assert (=> b!819848 (= lt!368283 (getCurrentListMap!2430 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!819848 (= lt!368287 (getCurrentListMap!2430 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819849 () Bool)

(declare-fun e!455437 () Bool)

(assert (=> b!819849 (= e!455437 tp_is_empty!14603)))

(declare-fun b!819850 () Bool)

(declare-fun res!559548 () Bool)

(assert (=> b!819850 (=> (not res!559548) (not e!455439))))

(declare-datatypes ((List!15546 0))(
  ( (Nil!15543) (Cons!15542 (h!16671 (_ BitVec 64)) (t!21885 List!15546)) )
))
(declare-fun arrayNoDuplicates!0 (array!45370 (_ BitVec 32) List!15546) Bool)

(assert (=> b!819850 (= res!559548 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15543))))

(declare-fun mapIsEmpty!23506 () Bool)

(declare-fun mapRes!23506 () Bool)

(assert (=> mapIsEmpty!23506 mapRes!23506))

(declare-fun b!819851 () Bool)

(assert (=> b!819851 (= e!455440 (and e!455437 mapRes!23506))))

(declare-fun condMapEmpty!23506 () Bool)

(declare-fun mapDefault!23506 () ValueCell!6886)

