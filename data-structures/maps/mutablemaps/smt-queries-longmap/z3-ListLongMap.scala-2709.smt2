; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40082 () Bool)

(assert start!40082)

(declare-fun b_free!10341 () Bool)

(declare-fun b_next!10341 () Bool)

(assert (=> start!40082 (= b_free!10341 (not b_next!10341))))

(declare-fun tp!36552 () Bool)

(declare-fun b_and!18327 () Bool)

(assert (=> start!40082 (= tp!36552 b_and!18327)))

(declare-fun b!437345 () Bool)

(declare-fun res!258100 () Bool)

(declare-fun e!258121 () Bool)

(assert (=> b!437345 (=> (not res!258100) (not e!258121))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!437345 (= res!258100 (bvsle from!863 i!563))))

(declare-fun b!437346 () Bool)

(declare-fun e!258117 () Bool)

(declare-fun tp_is_empty!11493 () Bool)

(assert (=> b!437346 (= e!258117 tp_is_empty!11493)))

(declare-fun b!437347 () Bool)

(declare-fun e!258116 () Bool)

(assert (=> b!437347 (= e!258121 e!258116)))

(declare-fun res!258108 () Bool)

(assert (=> b!437347 (=> (not res!258108) (not e!258116))))

(assert (=> b!437347 (= res!258108 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16429 0))(
  ( (V!16430 (val!5791 Int)) )
))
(declare-fun minValue!515 () V!16429)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5403 0))(
  ( (ValueCellFull!5403 (v!8034 V!16429)) (EmptyCell!5403) )
))
(declare-datatypes ((array!26783 0))(
  ( (array!26784 (arr!12838 (Array (_ BitVec 32) ValueCell!5403)) (size!13190 (_ BitVec 32))) )
))
(declare-fun lt!201639 () array!26783)

(declare-fun zeroValue!515 () V!16429)

(declare-datatypes ((tuple2!7608 0))(
  ( (tuple2!7609 (_1!3814 (_ BitVec 64)) (_2!3814 V!16429)) )
))
(declare-datatypes ((List!7651 0))(
  ( (Nil!7648) (Cons!7647 (h!8503 tuple2!7608) (t!13415 List!7651)) )
))
(declare-datatypes ((ListLongMap!6535 0))(
  ( (ListLongMap!6536 (toList!3283 List!7651)) )
))
(declare-fun lt!201640 () ListLongMap!6535)

(declare-datatypes ((array!26785 0))(
  ( (array!26786 (arr!12839 (Array (_ BitVec 32) (_ BitVec 64))) (size!13191 (_ BitVec 32))) )
))
(declare-fun lt!201642 () array!26785)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1465 (array!26785 array!26783 (_ BitVec 32) (_ BitVec 32) V!16429 V!16429 (_ BitVec 32) Int) ListLongMap!6535)

(assert (=> b!437347 (= lt!201640 (getCurrentListMapNoExtraKeys!1465 lt!201642 lt!201639 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26783)

(declare-fun v!412 () V!16429)

(assert (=> b!437347 (= lt!201639 (array!26784 (store (arr!12838 _values!549) i!563 (ValueCellFull!5403 v!412)) (size!13190 _values!549)))))

(declare-fun lt!201638 () ListLongMap!6535)

(declare-fun _keys!709 () array!26785)

(assert (=> b!437347 (= lt!201638 (getCurrentListMapNoExtraKeys!1465 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!437348 () Bool)

(declare-fun res!258107 () Bool)

(declare-fun e!258115 () Bool)

(assert (=> b!437348 (=> (not res!258107) (not e!258115))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!437348 (= res!258107 (validMask!0 mask!1025))))

(declare-fun b!437349 () Bool)

(declare-fun res!258098 () Bool)

(assert (=> b!437349 (=> (not res!258098) (not e!258115))))

(declare-datatypes ((List!7652 0))(
  ( (Nil!7649) (Cons!7648 (h!8504 (_ BitVec 64)) (t!13416 List!7652)) )
))
(declare-fun arrayNoDuplicates!0 (array!26785 (_ BitVec 32) List!7652) Bool)

(assert (=> b!437349 (= res!258098 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7649))))

(declare-fun mapIsEmpty!18861 () Bool)

(declare-fun mapRes!18861 () Bool)

(assert (=> mapIsEmpty!18861 mapRes!18861))

(declare-fun res!258101 () Bool)

(assert (=> start!40082 (=> (not res!258101) (not e!258115))))

(assert (=> start!40082 (= res!258101 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13191 _keys!709))))))

(assert (=> start!40082 e!258115))

(assert (=> start!40082 tp_is_empty!11493))

(assert (=> start!40082 tp!36552))

(assert (=> start!40082 true))

(declare-fun e!258118 () Bool)

(declare-fun array_inv!9324 (array!26783) Bool)

(assert (=> start!40082 (and (array_inv!9324 _values!549) e!258118)))

(declare-fun array_inv!9325 (array!26785) Bool)

(assert (=> start!40082 (array_inv!9325 _keys!709)))

(declare-fun b!437350 () Bool)

(assert (=> b!437350 (= e!258116 (not true))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun +!1427 (ListLongMap!6535 tuple2!7608) ListLongMap!6535)

(assert (=> b!437350 (= (getCurrentListMapNoExtraKeys!1465 lt!201642 lt!201639 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1427 (getCurrentListMapNoExtraKeys!1465 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7609 k0!794 v!412)))))

(declare-datatypes ((Unit!12969 0))(
  ( (Unit!12970) )
))
(declare-fun lt!201641 () Unit!12969)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!605 (array!26785 array!26783 (_ BitVec 32) (_ BitVec 32) V!16429 V!16429 (_ BitVec 32) (_ BitVec 64) V!16429 (_ BitVec 32) Int) Unit!12969)

(assert (=> b!437350 (= lt!201641 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!605 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!18861 () Bool)

(declare-fun tp!36551 () Bool)

(declare-fun e!258119 () Bool)

(assert (=> mapNonEmpty!18861 (= mapRes!18861 (and tp!36551 e!258119))))

(declare-fun mapKey!18861 () (_ BitVec 32))

(declare-fun mapRest!18861 () (Array (_ BitVec 32) ValueCell!5403))

(declare-fun mapValue!18861 () ValueCell!5403)

(assert (=> mapNonEmpty!18861 (= (arr!12838 _values!549) (store mapRest!18861 mapKey!18861 mapValue!18861))))

(declare-fun b!437351 () Bool)

(declare-fun res!258102 () Bool)

(assert (=> b!437351 (=> (not res!258102) (not e!258115))))

(assert (=> b!437351 (= res!258102 (and (= (size!13190 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13191 _keys!709) (size!13190 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!437352 () Bool)

(assert (=> b!437352 (= e!258118 (and e!258117 mapRes!18861))))

(declare-fun condMapEmpty!18861 () Bool)

(declare-fun mapDefault!18861 () ValueCell!5403)

(assert (=> b!437352 (= condMapEmpty!18861 (= (arr!12838 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5403)) mapDefault!18861)))))

(declare-fun b!437353 () Bool)

(declare-fun res!258103 () Bool)

(assert (=> b!437353 (=> (not res!258103) (not e!258115))))

(assert (=> b!437353 (= res!258103 (or (= (select (arr!12839 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12839 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!437354 () Bool)

(assert (=> b!437354 (= e!258119 tp_is_empty!11493)))

(declare-fun b!437355 () Bool)

(declare-fun res!258104 () Bool)

(assert (=> b!437355 (=> (not res!258104) (not e!258115))))

(assert (=> b!437355 (= res!258104 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13191 _keys!709))))))

(declare-fun b!437356 () Bool)

(declare-fun res!258097 () Bool)

(assert (=> b!437356 (=> (not res!258097) (not e!258115))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!437356 (= res!258097 (validKeyInArray!0 k0!794))))

(declare-fun b!437357 () Bool)

(declare-fun res!258096 () Bool)

(assert (=> b!437357 (=> (not res!258096) (not e!258121))))

(assert (=> b!437357 (= res!258096 (arrayNoDuplicates!0 lt!201642 #b00000000000000000000000000000000 Nil!7649))))

(declare-fun b!437358 () Bool)

(declare-fun res!258105 () Bool)

(assert (=> b!437358 (=> (not res!258105) (not e!258115))))

(declare-fun arrayContainsKey!0 (array!26785 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!437358 (= res!258105 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!437359 () Bool)

(declare-fun res!258099 () Bool)

(assert (=> b!437359 (=> (not res!258099) (not e!258115))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26785 (_ BitVec 32)) Bool)

(assert (=> b!437359 (= res!258099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!437360 () Bool)

(assert (=> b!437360 (= e!258115 e!258121)))

(declare-fun res!258106 () Bool)

(assert (=> b!437360 (=> (not res!258106) (not e!258121))))

(assert (=> b!437360 (= res!258106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201642 mask!1025))))

(assert (=> b!437360 (= lt!201642 (array!26786 (store (arr!12839 _keys!709) i!563 k0!794) (size!13191 _keys!709)))))

(assert (= (and start!40082 res!258101) b!437348))

(assert (= (and b!437348 res!258107) b!437351))

(assert (= (and b!437351 res!258102) b!437359))

(assert (= (and b!437359 res!258099) b!437349))

(assert (= (and b!437349 res!258098) b!437355))

(assert (= (and b!437355 res!258104) b!437356))

(assert (= (and b!437356 res!258097) b!437353))

(assert (= (and b!437353 res!258103) b!437358))

(assert (= (and b!437358 res!258105) b!437360))

(assert (= (and b!437360 res!258106) b!437357))

(assert (= (and b!437357 res!258096) b!437345))

(assert (= (and b!437345 res!258100) b!437347))

(assert (= (and b!437347 res!258108) b!437350))

(assert (= (and b!437352 condMapEmpty!18861) mapIsEmpty!18861))

(assert (= (and b!437352 (not condMapEmpty!18861)) mapNonEmpty!18861))

(get-info :version)

(assert (= (and mapNonEmpty!18861 ((_ is ValueCellFull!5403) mapValue!18861)) b!437354))

(assert (= (and b!437352 ((_ is ValueCellFull!5403) mapDefault!18861)) b!437346))

(assert (= start!40082 b!437352))

(declare-fun m!425031 () Bool)

(assert (=> b!437353 m!425031))

(declare-fun m!425033 () Bool)

(assert (=> b!437358 m!425033))

(declare-fun m!425035 () Bool)

(assert (=> start!40082 m!425035))

(declare-fun m!425037 () Bool)

(assert (=> start!40082 m!425037))

(declare-fun m!425039 () Bool)

(assert (=> b!437356 m!425039))

(declare-fun m!425041 () Bool)

(assert (=> b!437360 m!425041))

(declare-fun m!425043 () Bool)

(assert (=> b!437360 m!425043))

(declare-fun m!425045 () Bool)

(assert (=> b!437359 m!425045))

(declare-fun m!425047 () Bool)

(assert (=> b!437348 m!425047))

(declare-fun m!425049 () Bool)

(assert (=> mapNonEmpty!18861 m!425049))

(declare-fun m!425051 () Bool)

(assert (=> b!437350 m!425051))

(declare-fun m!425053 () Bool)

(assert (=> b!437350 m!425053))

(assert (=> b!437350 m!425053))

(declare-fun m!425055 () Bool)

(assert (=> b!437350 m!425055))

(declare-fun m!425057 () Bool)

(assert (=> b!437350 m!425057))

(declare-fun m!425059 () Bool)

(assert (=> b!437357 m!425059))

(declare-fun m!425061 () Bool)

(assert (=> b!437347 m!425061))

(declare-fun m!425063 () Bool)

(assert (=> b!437347 m!425063))

(declare-fun m!425065 () Bool)

(assert (=> b!437347 m!425065))

(declare-fun m!425067 () Bool)

(assert (=> b!437349 m!425067))

(check-sat tp_is_empty!11493 (not mapNonEmpty!18861) (not b!437347) (not start!40082) (not b!437356) (not b!437359) (not b!437349) (not b!437357) b_and!18327 (not b!437358) (not b_next!10341) (not b!437348) (not b!437360) (not b!437350))
(check-sat b_and!18327 (not b_next!10341))
