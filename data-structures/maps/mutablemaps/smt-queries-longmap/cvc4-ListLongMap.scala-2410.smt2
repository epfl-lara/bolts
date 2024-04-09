; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38156 () Bool)

(assert start!38156)

(declare-fun b_free!9029 () Bool)

(declare-fun b_next!9029 () Bool)

(assert (=> start!38156 (= b_free!9029 (not b_next!9029))))

(declare-fun tp!31869 () Bool)

(declare-fun b_and!16409 () Bool)

(assert (=> start!38156 (= tp!31869 b_and!16409)))

(declare-fun mapNonEmpty!16146 () Bool)

(declare-fun mapRes!16146 () Bool)

(declare-fun tp!31868 () Bool)

(declare-fun e!237958 () Bool)

(assert (=> mapNonEmpty!16146 (= mapRes!16146 (and tp!31868 e!237958))))

(declare-datatypes ((V!14039 0))(
  ( (V!14040 (val!4895 Int)) )
))
(declare-datatypes ((ValueCell!4507 0))(
  ( (ValueCellFull!4507 (v!7128 V!14039)) (EmptyCell!4507) )
))
(declare-datatypes ((array!23283 0))(
  ( (array!23284 (arr!11097 (Array (_ BitVec 32) ValueCell!4507)) (size!11449 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23283)

(declare-fun mapRest!16146 () (Array (_ BitVec 32) ValueCell!4507))

(declare-fun mapKey!16146 () (_ BitVec 32))

(declare-fun mapValue!16146 () ValueCell!4507)

(assert (=> mapNonEmpty!16146 (= (arr!11097 _values!506) (store mapRest!16146 mapKey!16146 mapValue!16146))))

(declare-fun b!392969 () Bool)

(declare-fun e!237962 () Bool)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!392969 (= e!237962 (bvslt i!548 (size!11449 _values!506)))))

(declare-datatypes ((tuple2!6538 0))(
  ( (tuple2!6539 (_1!3279 (_ BitVec 64)) (_2!3279 V!14039)) )
))
(declare-datatypes ((List!6420 0))(
  ( (Nil!6417) (Cons!6416 (h!7272 tuple2!6538) (t!11598 List!6420)) )
))
(declare-datatypes ((ListLongMap!5465 0))(
  ( (ListLongMap!5466 (toList!2748 List!6420)) )
))
(declare-fun lt!185955 () ListLongMap!5465)

(declare-fun lt!185952 () ListLongMap!5465)

(declare-fun lt!185957 () tuple2!6538)

(declare-fun +!1046 (ListLongMap!5465 tuple2!6538) ListLongMap!5465)

(assert (=> b!392969 (= lt!185955 (+!1046 lt!185952 lt!185957))))

(declare-fun v!373 () V!14039)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun minValue!472 () V!14039)

(declare-datatypes ((Unit!11987 0))(
  ( (Unit!11988) )
))
(declare-fun lt!185956 () Unit!11987)

(declare-fun lt!185958 () ListLongMap!5465)

(declare-fun addCommutativeForDiffKeys!342 (ListLongMap!5465 (_ BitVec 64) V!14039 (_ BitVec 64) V!14039) Unit!11987)

(assert (=> b!392969 (= lt!185956 (addCommutativeForDiffKeys!342 lt!185958 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!392970 () Bool)

(declare-fun e!237957 () Bool)

(declare-fun e!237956 () Bool)

(assert (=> b!392970 (= e!237957 e!237956)))

(declare-fun res!225173 () Bool)

(assert (=> b!392970 (=> (not res!225173) (not e!237956))))

(declare-datatypes ((array!23285 0))(
  ( (array!23286 (arr!11098 (Array (_ BitVec 32) (_ BitVec 64))) (size!11450 (_ BitVec 32))) )
))
(declare-fun lt!185959 () array!23285)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23285 (_ BitVec 32)) Bool)

(assert (=> b!392970 (= res!225173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!185959 mask!970))))

(declare-fun _keys!658 () array!23285)

(assert (=> b!392970 (= lt!185959 (array!23286 (store (arr!11098 _keys!658) i!548 k!778) (size!11450 _keys!658)))))

(declare-fun b!392971 () Bool)

(declare-fun e!237955 () Bool)

(declare-fun tp_is_empty!9701 () Bool)

(assert (=> b!392971 (= e!237955 tp_is_empty!9701)))

(declare-fun b!392972 () Bool)

(declare-fun res!225172 () Bool)

(assert (=> b!392972 (=> (not res!225172) (not e!237957))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!392972 (= res!225172 (validKeyInArray!0 k!778))))

(declare-fun b!392973 () Bool)

(declare-fun res!225170 () Bool)

(assert (=> b!392973 (=> (not res!225170) (not e!237957))))

(assert (=> b!392973 (= res!225170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!392974 () Bool)

(declare-fun e!237961 () Bool)

(assert (=> b!392974 (= e!237961 e!237962)))

(declare-fun res!225166 () Bool)

(assert (=> b!392974 (=> res!225166 e!237962)))

(assert (=> b!392974 (= res!225166 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!185950 () ListLongMap!5465)

(assert (=> b!392974 (= lt!185950 lt!185952)))

(declare-fun lt!185949 () tuple2!6538)

(assert (=> b!392974 (= lt!185952 (+!1046 lt!185958 lt!185949))))

(declare-fun lt!185960 () ListLongMap!5465)

(assert (=> b!392974 (= lt!185960 lt!185955)))

(declare-fun lt!185951 () ListLongMap!5465)

(assert (=> b!392974 (= lt!185955 (+!1046 lt!185951 lt!185949))))

(declare-fun lt!185954 () ListLongMap!5465)

(assert (=> b!392974 (= lt!185960 (+!1046 lt!185954 lt!185949))))

(assert (=> b!392974 (= lt!185949 (tuple2!6539 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!392975 () Bool)

(declare-fun res!225177 () Bool)

(assert (=> b!392975 (=> (not res!225177) (not e!237957))))

(declare-fun arrayContainsKey!0 (array!23285 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!392975 (= res!225177 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!392976 () Bool)

(declare-fun res!225168 () Bool)

(assert (=> b!392976 (=> (not res!225168) (not e!237957))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!392976 (= res!225168 (and (= (size!11449 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11450 _keys!658) (size!11449 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!225171 () Bool)

(assert (=> start!38156 (=> (not res!225171) (not e!237957))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38156 (= res!225171 (validMask!0 mask!970))))

(assert (=> start!38156 e!237957))

(declare-fun e!237960 () Bool)

(declare-fun array_inv!8134 (array!23283) Bool)

(assert (=> start!38156 (and (array_inv!8134 _values!506) e!237960)))

(assert (=> start!38156 tp!31869))

(assert (=> start!38156 true))

(assert (=> start!38156 tp_is_empty!9701))

(declare-fun array_inv!8135 (array!23285) Bool)

(assert (=> start!38156 (array_inv!8135 _keys!658)))

(declare-fun b!392977 () Bool)

(declare-fun res!225174 () Bool)

(assert (=> b!392977 (=> (not res!225174) (not e!237957))))

(assert (=> b!392977 (= res!225174 (or (= (select (arr!11098 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11098 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!392978 () Bool)

(declare-fun res!225175 () Bool)

(assert (=> b!392978 (=> (not res!225175) (not e!237957))))

(assert (=> b!392978 (= res!225175 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11450 _keys!658))))))

(declare-fun b!392979 () Bool)

(assert (=> b!392979 (= e!237960 (and e!237955 mapRes!16146))))

(declare-fun condMapEmpty!16146 () Bool)

(declare-fun mapDefault!16146 () ValueCell!4507)

