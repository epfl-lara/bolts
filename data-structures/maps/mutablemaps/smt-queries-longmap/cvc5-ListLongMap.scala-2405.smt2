; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38056 () Bool)

(assert start!38056)

(declare-fun b_free!8995 () Bool)

(declare-fun b_next!8995 () Bool)

(assert (=> start!38056 (= b_free!8995 (not b_next!8995))))

(declare-fun tp!31757 () Bool)

(declare-fun b_and!16339 () Bool)

(assert (=> start!38056 (= tp!31757 b_and!16339)))

(declare-fun b!391600 () Bool)

(declare-fun e!237175 () Bool)

(declare-fun e!237174 () Bool)

(assert (=> b!391600 (= e!237175 (not e!237174))))

(declare-fun res!224287 () Bool)

(assert (=> b!391600 (=> res!224287 e!237174)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!391600 (= res!224287 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!13995 0))(
  ( (V!13996 (val!4878 Int)) )
))
(declare-datatypes ((ValueCell!4490 0))(
  ( (ValueCellFull!4490 (v!7099 V!13995)) (EmptyCell!4490) )
))
(declare-datatypes ((array!23211 0))(
  ( (array!23212 (arr!11064 (Array (_ BitVec 32) ValueCell!4490)) (size!11416 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23211)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6510 0))(
  ( (tuple2!6511 (_1!3265 (_ BitVec 64)) (_2!3265 V!13995)) )
))
(declare-datatypes ((List!6393 0))(
  ( (Nil!6390) (Cons!6389 (h!7245 tuple2!6510) (t!11565 List!6393)) )
))
(declare-datatypes ((ListLongMap!5437 0))(
  ( (ListLongMap!5438 (toList!2734 List!6393)) )
))
(declare-fun lt!184974 () ListLongMap!5437)

(declare-fun zeroValue!472 () V!13995)

(declare-datatypes ((array!23213 0))(
  ( (array!23214 (arr!11065 (Array (_ BitVec 32) (_ BitVec 64))) (size!11417 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23213)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13995)

(declare-fun getCurrentListMap!2099 (array!23213 array!23211 (_ BitVec 32) (_ BitVec 32) V!13995 V!13995 (_ BitVec 32) Int) ListLongMap!5437)

(assert (=> b!391600 (= lt!184974 (getCurrentListMap!2099 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184973 () array!23213)

(declare-fun lt!184976 () array!23211)

(declare-fun lt!184975 () ListLongMap!5437)

(assert (=> b!391600 (= lt!184975 (getCurrentListMap!2099 lt!184973 lt!184976 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184978 () ListLongMap!5437)

(declare-fun lt!184971 () ListLongMap!5437)

(assert (=> b!391600 (and (= lt!184978 lt!184971) (= lt!184971 lt!184978))))

(declare-fun lt!184977 () ListLongMap!5437)

(declare-fun v!373 () V!13995)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun +!1032 (ListLongMap!5437 tuple2!6510) ListLongMap!5437)

(assert (=> b!391600 (= lt!184971 (+!1032 lt!184977 (tuple2!6511 k!778 v!373)))))

(declare-datatypes ((Unit!11955 0))(
  ( (Unit!11956) )
))
(declare-fun lt!184972 () Unit!11955)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!256 (array!23213 array!23211 (_ BitVec 32) (_ BitVec 32) V!13995 V!13995 (_ BitVec 32) (_ BitVec 64) V!13995 (_ BitVec 32) Int) Unit!11955)

(assert (=> b!391600 (= lt!184972 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!256 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!961 (array!23213 array!23211 (_ BitVec 32) (_ BitVec 32) V!13995 V!13995 (_ BitVec 32) Int) ListLongMap!5437)

(assert (=> b!391600 (= lt!184978 (getCurrentListMapNoExtraKeys!961 lt!184973 lt!184976 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!391600 (= lt!184976 (array!23212 (store (arr!11064 _values!506) i!548 (ValueCellFull!4490 v!373)) (size!11416 _values!506)))))

(assert (=> b!391600 (= lt!184977 (getCurrentListMapNoExtraKeys!961 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!391601 () Bool)

(declare-fun res!224286 () Bool)

(declare-fun e!237169 () Bool)

(assert (=> b!391601 (=> (not res!224286) (not e!237169))))

(assert (=> b!391601 (= res!224286 (and (= (size!11416 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11417 _keys!658) (size!11416 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!391602 () Bool)

(declare-fun res!224296 () Bool)

(assert (=> b!391602 (=> (not res!224296) (not e!237175))))

(declare-datatypes ((List!6394 0))(
  ( (Nil!6391) (Cons!6390 (h!7246 (_ BitVec 64)) (t!11566 List!6394)) )
))
(declare-fun arrayNoDuplicates!0 (array!23213 (_ BitVec 32) List!6394) Bool)

(assert (=> b!391602 (= res!224296 (arrayNoDuplicates!0 lt!184973 #b00000000000000000000000000000000 Nil!6391))))

(declare-fun mapNonEmpty!16086 () Bool)

(declare-fun mapRes!16086 () Bool)

(declare-fun tp!31758 () Bool)

(declare-fun e!237170 () Bool)

(assert (=> mapNonEmpty!16086 (= mapRes!16086 (and tp!31758 e!237170))))

(declare-fun mapValue!16086 () ValueCell!4490)

(declare-fun mapKey!16086 () (_ BitVec 32))

(declare-fun mapRest!16086 () (Array (_ BitVec 32) ValueCell!4490))

(assert (=> mapNonEmpty!16086 (= (arr!11064 _values!506) (store mapRest!16086 mapKey!16086 mapValue!16086))))

(declare-fun b!391603 () Bool)

(declare-fun res!224295 () Bool)

(assert (=> b!391603 (=> (not res!224295) (not e!237169))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23213 (_ BitVec 32)) Bool)

(assert (=> b!391603 (= res!224295 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!391604 () Bool)

(declare-fun res!224293 () Bool)

(assert (=> b!391604 (=> (not res!224293) (not e!237169))))

(assert (=> b!391604 (= res!224293 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6391))))

(declare-fun res!224292 () Bool)

(assert (=> start!38056 (=> (not res!224292) (not e!237169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38056 (= res!224292 (validMask!0 mask!970))))

(assert (=> start!38056 e!237169))

(declare-fun e!237171 () Bool)

(declare-fun array_inv!8112 (array!23211) Bool)

(assert (=> start!38056 (and (array_inv!8112 _values!506) e!237171)))

(assert (=> start!38056 tp!31757))

(assert (=> start!38056 true))

(declare-fun tp_is_empty!9667 () Bool)

(assert (=> start!38056 tp_is_empty!9667))

(declare-fun array_inv!8113 (array!23213) Bool)

(assert (=> start!38056 (array_inv!8113 _keys!658)))

(declare-fun b!391605 () Bool)

(declare-fun res!224291 () Bool)

(assert (=> b!391605 (=> (not res!224291) (not e!237169))))

(declare-fun arrayContainsKey!0 (array!23213 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!391605 (= res!224291 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!391606 () Bool)

(declare-fun e!237172 () Bool)

(assert (=> b!391606 (= e!237171 (and e!237172 mapRes!16086))))

(declare-fun condMapEmpty!16086 () Bool)

(declare-fun mapDefault!16086 () ValueCell!4490)

