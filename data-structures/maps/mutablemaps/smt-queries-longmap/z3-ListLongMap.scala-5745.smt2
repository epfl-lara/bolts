; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74328 () Bool)

(assert start!74328)

(declare-fun b_free!15063 () Bool)

(declare-fun b_next!15063 () Bool)

(assert (=> start!74328 (= b_free!15063 (not b_next!15063))))

(declare-fun tp!52864 () Bool)

(declare-fun b_and!24857 () Bool)

(assert (=> start!74328 (= tp!52864 b_and!24857)))

(declare-fun b!874064 () Bool)

(declare-fun e!486717 () Bool)

(declare-fun e!486715 () Bool)

(declare-fun mapRes!27569 () Bool)

(assert (=> b!874064 (= e!486717 (and e!486715 mapRes!27569))))

(declare-fun condMapEmpty!27569 () Bool)

(declare-datatypes ((V!28123 0))(
  ( (V!28124 (val!8701 Int)) )
))
(declare-datatypes ((ValueCell!8214 0))(
  ( (ValueCellFull!8214 (v!11126 V!28123)) (EmptyCell!8214) )
))
(declare-datatypes ((array!50728 0))(
  ( (array!50729 (arr!24388 (Array (_ BitVec 32) ValueCell!8214)) (size!24829 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50728)

(declare-fun mapDefault!27569 () ValueCell!8214)

(assert (=> b!874064 (= condMapEmpty!27569 (= (arr!24388 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8214)) mapDefault!27569)))))

(declare-fun b!874065 () Bool)

(declare-fun res!594098 () Bool)

(declare-fun e!486716 () Bool)

(assert (=> b!874065 (=> (not res!594098) (not e!486716))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50730 0))(
  ( (array!50731 (arr!24389 (Array (_ BitVec 32) (_ BitVec 64))) (size!24830 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50730)

(assert (=> b!874065 (= res!594098 (and (= (size!24829 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24830 _keys!868) (size!24829 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!874066 () Bool)

(declare-fun res!594101 () Bool)

(assert (=> b!874066 (=> (not res!594101) (not e!486716))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50730 (_ BitVec 32)) Bool)

(assert (=> b!874066 (= res!594101 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!874067 () Bool)

(assert (=> b!874067 (= e!486716 false)))

(declare-fun v!557 () V!28123)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11494 0))(
  ( (tuple2!11495 (_1!5757 (_ BitVec 64)) (_2!5757 V!28123)) )
))
(declare-datatypes ((List!17382 0))(
  ( (Nil!17379) (Cons!17378 (h!18509 tuple2!11494) (t!24431 List!17382)) )
))
(declare-datatypes ((ListLongMap!10277 0))(
  ( (ListLongMap!10278 (toList!5154 List!17382)) )
))
(declare-fun lt!395848 () ListLongMap!10277)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28123)

(declare-fun zeroValue!654 () V!28123)

(declare-fun getCurrentListMapNoExtraKeys!3118 (array!50730 array!50728 (_ BitVec 32) (_ BitVec 32) V!28123 V!28123 (_ BitVec 32) Int) ListLongMap!10277)

(assert (=> b!874067 (= lt!395848 (getCurrentListMapNoExtraKeys!3118 _keys!868 (array!50729 (store (arr!24388 _values!688) i!612 (ValueCellFull!8214 v!557)) (size!24829 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395847 () ListLongMap!10277)

(assert (=> b!874067 (= lt!395847 (getCurrentListMapNoExtraKeys!3118 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!874069 () Bool)

(declare-fun e!486718 () Bool)

(declare-fun tp_is_empty!17307 () Bool)

(assert (=> b!874069 (= e!486718 tp_is_empty!17307)))

(declare-fun b!874070 () Bool)

(declare-fun res!594103 () Bool)

(assert (=> b!874070 (=> (not res!594103) (not e!486716))))

(declare-datatypes ((List!17383 0))(
  ( (Nil!17380) (Cons!17379 (h!18510 (_ BitVec 64)) (t!24432 List!17383)) )
))
(declare-fun arrayNoDuplicates!0 (array!50730 (_ BitVec 32) List!17383) Bool)

(assert (=> b!874070 (= res!594103 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17380))))

(declare-fun b!874071 () Bool)

(declare-fun res!594100 () Bool)

(assert (=> b!874071 (=> (not res!594100) (not e!486716))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!874071 (= res!594100 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!27569 () Bool)

(declare-fun tp!52865 () Bool)

(assert (=> mapNonEmpty!27569 (= mapRes!27569 (and tp!52865 e!486718))))

(declare-fun mapKey!27569 () (_ BitVec 32))

(declare-fun mapValue!27569 () ValueCell!8214)

(declare-fun mapRest!27569 () (Array (_ BitVec 32) ValueCell!8214))

(assert (=> mapNonEmpty!27569 (= (arr!24388 _values!688) (store mapRest!27569 mapKey!27569 mapValue!27569))))

(declare-fun b!874072 () Bool)

(declare-fun res!594102 () Bool)

(assert (=> b!874072 (=> (not res!594102) (not e!486716))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!874072 (= res!594102 (and (= (select (arr!24389 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!874073 () Bool)

(declare-fun res!594097 () Bool)

(assert (=> b!874073 (=> (not res!594097) (not e!486716))))

(assert (=> b!874073 (= res!594097 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24830 _keys!868))))))

(declare-fun b!874074 () Bool)

(declare-fun res!594099 () Bool)

(assert (=> b!874074 (=> (not res!594099) (not e!486716))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!874074 (= res!594099 (validKeyInArray!0 k0!854))))

(declare-fun mapIsEmpty!27569 () Bool)

(assert (=> mapIsEmpty!27569 mapRes!27569))

(declare-fun b!874068 () Bool)

(assert (=> b!874068 (= e!486715 tp_is_empty!17307)))

(declare-fun res!594096 () Bool)

(assert (=> start!74328 (=> (not res!594096) (not e!486716))))

(assert (=> start!74328 (= res!594096 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24830 _keys!868))))))

(assert (=> start!74328 e!486716))

(assert (=> start!74328 tp_is_empty!17307))

(assert (=> start!74328 true))

(assert (=> start!74328 tp!52864))

(declare-fun array_inv!19214 (array!50730) Bool)

(assert (=> start!74328 (array_inv!19214 _keys!868)))

(declare-fun array_inv!19215 (array!50728) Bool)

(assert (=> start!74328 (and (array_inv!19215 _values!688) e!486717)))

(assert (= (and start!74328 res!594096) b!874071))

(assert (= (and b!874071 res!594100) b!874065))

(assert (= (and b!874065 res!594098) b!874066))

(assert (= (and b!874066 res!594101) b!874070))

(assert (= (and b!874070 res!594103) b!874073))

(assert (= (and b!874073 res!594097) b!874074))

(assert (= (and b!874074 res!594099) b!874072))

(assert (= (and b!874072 res!594102) b!874067))

(assert (= (and b!874064 condMapEmpty!27569) mapIsEmpty!27569))

(assert (= (and b!874064 (not condMapEmpty!27569)) mapNonEmpty!27569))

(get-info :version)

(assert (= (and mapNonEmpty!27569 ((_ is ValueCellFull!8214) mapValue!27569)) b!874069))

(assert (= (and b!874064 ((_ is ValueCellFull!8214) mapDefault!27569)) b!874068))

(assert (= start!74328 b!874064))

(declare-fun m!814411 () Bool)

(assert (=> b!874071 m!814411))

(declare-fun m!814413 () Bool)

(assert (=> start!74328 m!814413))

(declare-fun m!814415 () Bool)

(assert (=> start!74328 m!814415))

(declare-fun m!814417 () Bool)

(assert (=> b!874067 m!814417))

(declare-fun m!814419 () Bool)

(assert (=> b!874067 m!814419))

(declare-fun m!814421 () Bool)

(assert (=> b!874067 m!814421))

(declare-fun m!814423 () Bool)

(assert (=> b!874070 m!814423))

(declare-fun m!814425 () Bool)

(assert (=> b!874074 m!814425))

(declare-fun m!814427 () Bool)

(assert (=> b!874066 m!814427))

(declare-fun m!814429 () Bool)

(assert (=> b!874072 m!814429))

(declare-fun m!814431 () Bool)

(assert (=> mapNonEmpty!27569 m!814431))

(check-sat (not b!874067) b_and!24857 (not b!874066) (not b!874070) (not start!74328) (not b_next!15063) tp_is_empty!17307 (not b!874071) (not b!874074) (not mapNonEmpty!27569))
(check-sat b_and!24857 (not b_next!15063))
