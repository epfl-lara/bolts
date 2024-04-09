; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70588 () Bool)

(assert start!70588)

(declare-fun b_free!12871 () Bool)

(declare-fun b_next!12871 () Bool)

(assert (=> start!70588 (= b_free!12871 (not b_next!12871))))

(declare-fun tp!45348 () Bool)

(declare-fun b_and!21731 () Bool)

(assert (=> start!70588 (= tp!45348 b_and!21731)))

(declare-fun b!819551 () Bool)

(declare-fun e!455205 () Bool)

(declare-fun e!455209 () Bool)

(assert (=> b!819551 (= e!455205 (not e!455209))))

(declare-fun res!559350 () Bool)

(assert (=> b!819551 (=> res!559350 e!455209)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!819551 (= res!559350 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!24443 0))(
  ( (V!24444 (val!7338 Int)) )
))
(declare-datatypes ((tuple2!9670 0))(
  ( (tuple2!9671 (_1!4845 (_ BitVec 64)) (_2!4845 V!24443)) )
))
(declare-datatypes ((List!15529 0))(
  ( (Nil!15526) (Cons!15525 (h!16654 tuple2!9670) (t!21868 List!15529)) )
))
(declare-datatypes ((ListLongMap!8507 0))(
  ( (ListLongMap!8508 (toList!4269 List!15529)) )
))
(declare-fun lt!367958 () ListLongMap!8507)

(declare-fun lt!367961 () ListLongMap!8507)

(assert (=> b!819551 (= lt!367958 lt!367961)))

(declare-fun zeroValueBefore!34 () V!24443)

(declare-datatypes ((array!45330 0))(
  ( (array!45331 (arr!21714 (Array (_ BitVec 32) (_ BitVec 64))) (size!22135 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45330)

(declare-fun minValue!754 () V!24443)

(declare-datatypes ((ValueCell!6875 0))(
  ( (ValueCellFull!6875 (v!9764 V!24443)) (EmptyCell!6875) )
))
(declare-datatypes ((array!45332 0))(
  ( (array!45333 (arr!21715 (Array (_ BitVec 32) ValueCell!6875)) (size!22136 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45332)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueAfter!34 () V!24443)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-datatypes ((Unit!27989 0))(
  ( (Unit!27990) )
))
(declare-fun lt!367955 () Unit!27989)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!422 (array!45330 array!45332 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24443 V!24443 V!24443 V!24443 (_ BitVec 32) Int) Unit!27989)

(assert (=> b!819551 (= lt!367955 (lemmaNoChangeToArrayThenSameMapNoExtras!422 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2306 (array!45330 array!45332 (_ BitVec 32) (_ BitVec 32) V!24443 V!24443 (_ BitVec 32) Int) ListLongMap!8507)

(assert (=> b!819551 (= lt!367961 (getCurrentListMapNoExtraKeys!2306 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819551 (= lt!367958 (getCurrentListMapNoExtraKeys!2306 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819552 () Bool)

(assert (=> b!819552 (= e!455209 true)))

(declare-fun lt!367956 () tuple2!9670)

(declare-fun lt!367953 () ListLongMap!8507)

(declare-fun lt!367957 () tuple2!9670)

(declare-fun +!1812 (ListLongMap!8507 tuple2!9670) ListLongMap!8507)

(assert (=> b!819552 (= lt!367953 (+!1812 (+!1812 lt!367961 lt!367957) lt!367956))))

(declare-fun lt!367959 () ListLongMap!8507)

(assert (=> b!819552 (= (+!1812 lt!367958 lt!367956) (+!1812 lt!367959 lt!367956))))

(declare-fun lt!367954 () Unit!27989)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!189 (ListLongMap!8507 (_ BitVec 64) V!24443 V!24443) Unit!27989)

(assert (=> b!819552 (= lt!367954 (addSameAsAddTwiceSameKeyDiffValues!189 lt!367958 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!819552 (= lt!367956 (tuple2!9671 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!455210 () Bool)

(assert (=> b!819552 e!455210))

(declare-fun res!559349 () Bool)

(assert (=> b!819552 (=> (not res!559349) (not e!455210))))

(declare-fun lt!367960 () ListLongMap!8507)

(assert (=> b!819552 (= res!559349 (= lt!367960 lt!367959))))

(assert (=> b!819552 (= lt!367959 (+!1812 lt!367958 lt!367957))))

(assert (=> b!819552 (= lt!367957 (tuple2!9671 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun lt!367952 () ListLongMap!8507)

(declare-fun getCurrentListMap!2424 (array!45330 array!45332 (_ BitVec 32) (_ BitVec 32) V!24443 V!24443 (_ BitVec 32) Int) ListLongMap!8507)

(assert (=> b!819552 (= lt!367952 (getCurrentListMap!2424 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819552 (= lt!367960 (getCurrentListMap!2424 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!559351 () Bool)

(assert (=> start!70588 (=> (not res!559351) (not e!455205))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70588 (= res!559351 (validMask!0 mask!1312))))

(assert (=> start!70588 e!455205))

(declare-fun tp_is_empty!14581 () Bool)

(assert (=> start!70588 tp_is_empty!14581))

(declare-fun array_inv!17329 (array!45330) Bool)

(assert (=> start!70588 (array_inv!17329 _keys!976)))

(assert (=> start!70588 true))

(declare-fun e!455207 () Bool)

(declare-fun array_inv!17330 (array!45332) Bool)

(assert (=> start!70588 (and (array_inv!17330 _values!788) e!455207)))

(assert (=> start!70588 tp!45348))

(declare-fun b!819553 () Bool)

(declare-fun e!455204 () Bool)

(assert (=> b!819553 (= e!455204 tp_is_empty!14581)))

(declare-fun b!819554 () Bool)

(declare-fun e!455206 () Bool)

(declare-fun mapRes!23473 () Bool)

(assert (=> b!819554 (= e!455207 (and e!455206 mapRes!23473))))

(declare-fun condMapEmpty!23473 () Bool)

(declare-fun mapDefault!23473 () ValueCell!6875)

