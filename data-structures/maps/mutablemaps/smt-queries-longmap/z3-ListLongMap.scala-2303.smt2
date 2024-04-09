; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37290 () Bool)

(assert start!37290)

(declare-fun b_free!8409 () Bool)

(declare-fun b_next!8409 () Bool)

(assert (=> start!37290 (= b_free!8409 (not b_next!8409))))

(declare-fun tp!29942 () Bool)

(declare-fun b_and!15669 () Bool)

(assert (=> start!37290 (= tp!29942 b_and!15669)))

(declare-fun b!377451 () Bool)

(declare-fun res!213673 () Bool)

(declare-fun e!229803 () Bool)

(assert (=> b!377451 (=> (not res!213673) (not e!229803))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22013 0))(
  ( (array!22014 (arr!10472 (Array (_ BitVec 32) (_ BitVec 64))) (size!10824 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22013)

(assert (=> b!377451 (= res!213673 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10824 _keys!658))))))

(declare-fun b!377452 () Bool)

(declare-fun e!229797 () Bool)

(declare-fun tp_is_empty!9057 () Bool)

(assert (=> b!377452 (= e!229797 tp_is_empty!9057)))

(declare-fun res!213674 () Bool)

(assert (=> start!37290 (=> (not res!213674) (not e!229803))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37290 (= res!213674 (validMask!0 mask!970))))

(assert (=> start!37290 e!229803))

(declare-datatypes ((V!13181 0))(
  ( (V!13182 (val!4573 Int)) )
))
(declare-datatypes ((ValueCell!4185 0))(
  ( (ValueCellFull!4185 (v!6766 V!13181)) (EmptyCell!4185) )
))
(declare-datatypes ((array!22015 0))(
  ( (array!22016 (arr!10473 (Array (_ BitVec 32) ValueCell!4185)) (size!10825 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22015)

(declare-fun e!229800 () Bool)

(declare-fun array_inv!7712 (array!22015) Bool)

(assert (=> start!37290 (and (array_inv!7712 _values!506) e!229800)))

(assert (=> start!37290 tp!29942))

(assert (=> start!37290 true))

(assert (=> start!37290 tp_is_empty!9057))

(declare-fun array_inv!7713 (array!22013) Bool)

(assert (=> start!37290 (array_inv!7713 _keys!658)))

(declare-fun b!377453 () Bool)

(declare-fun e!229802 () Bool)

(assert (=> b!377453 (= e!229802 true)))

(declare-datatypes ((tuple2!6074 0))(
  ( (tuple2!6075 (_1!3047 (_ BitVec 64)) (_2!3047 V!13181)) )
))
(declare-datatypes ((List!5943 0))(
  ( (Nil!5940) (Cons!5939 (h!6795 tuple2!6074) (t!11101 List!5943)) )
))
(declare-datatypes ((ListLongMap!5001 0))(
  ( (ListLongMap!5002 (toList!2516 List!5943)) )
))
(declare-fun lt!175648 () ListLongMap!5001)

(declare-fun lt!175644 () ListLongMap!5001)

(declare-fun lt!175642 () tuple2!6074)

(declare-fun +!857 (ListLongMap!5001 tuple2!6074) ListLongMap!5001)

(assert (=> b!377453 (= lt!175648 (+!857 lt!175644 lt!175642))))

(declare-fun v!373 () V!13181)

(declare-fun lt!175639 () ListLongMap!5001)

(declare-datatypes ((Unit!11613 0))(
  ( (Unit!11614) )
))
(declare-fun lt!175637 () Unit!11613)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun zeroValue!472 () V!13181)

(declare-fun addCommutativeForDiffKeys!277 (ListLongMap!5001 (_ BitVec 64) V!13181 (_ BitVec 64) V!13181) Unit!11613)

(assert (=> b!377453 (= lt!175637 (addCommutativeForDiffKeys!277 lt!175639 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun mapNonEmpty!15150 () Bool)

(declare-fun mapRes!15150 () Bool)

(declare-fun tp!29943 () Bool)

(assert (=> mapNonEmpty!15150 (= mapRes!15150 (and tp!29943 e!229797))))

(declare-fun mapRest!15150 () (Array (_ BitVec 32) ValueCell!4185))

(declare-fun mapKey!15150 () (_ BitVec 32))

(declare-fun mapValue!15150 () ValueCell!4185)

(assert (=> mapNonEmpty!15150 (= (arr!10473 _values!506) (store mapRest!15150 mapKey!15150 mapValue!15150))))

(declare-fun b!377454 () Bool)

(declare-fun res!213668 () Bool)

(assert (=> b!377454 (=> (not res!213668) (not e!229803))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!377454 (= res!213668 (and (= (size!10825 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10824 _keys!658) (size!10825 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!15150 () Bool)

(assert (=> mapIsEmpty!15150 mapRes!15150))

(declare-fun b!377455 () Bool)

(declare-fun res!213669 () Bool)

(assert (=> b!377455 (=> (not res!213669) (not e!229803))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22013 (_ BitVec 32)) Bool)

(assert (=> b!377455 (= res!213669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!377456 () Bool)

(declare-fun e!229796 () Bool)

(assert (=> b!377456 (= e!229803 e!229796)))

(declare-fun res!213676 () Bool)

(assert (=> b!377456 (=> (not res!213676) (not e!229796))))

(declare-fun lt!175645 () array!22013)

(assert (=> b!377456 (= res!213676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!175645 mask!970))))

(assert (=> b!377456 (= lt!175645 (array!22014 (store (arr!10472 _keys!658) i!548 k0!778) (size!10824 _keys!658)))))

(declare-fun b!377457 () Bool)

(declare-fun res!213672 () Bool)

(assert (=> b!377457 (=> (not res!213672) (not e!229803))))

(assert (=> b!377457 (= res!213672 (or (= (select (arr!10472 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10472 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!377458 () Bool)

(declare-fun res!213671 () Bool)

(assert (=> b!377458 (=> (not res!213671) (not e!229796))))

(declare-datatypes ((List!5944 0))(
  ( (Nil!5941) (Cons!5940 (h!6796 (_ BitVec 64)) (t!11102 List!5944)) )
))
(declare-fun arrayNoDuplicates!0 (array!22013 (_ BitVec 32) List!5944) Bool)

(assert (=> b!377458 (= res!213671 (arrayNoDuplicates!0 lt!175645 #b00000000000000000000000000000000 Nil!5941))))

(declare-fun b!377459 () Bool)

(declare-fun res!213675 () Bool)

(assert (=> b!377459 (=> (not res!213675) (not e!229803))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!377459 (= res!213675 (validKeyInArray!0 k0!778))))

(declare-fun b!377460 () Bool)

(declare-fun res!213667 () Bool)

(assert (=> b!377460 (=> (not res!213667) (not e!229803))))

(declare-fun arrayContainsKey!0 (array!22013 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!377460 (= res!213667 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!377461 () Bool)

(declare-fun e!229801 () Bool)

(assert (=> b!377461 (= e!229800 (and e!229801 mapRes!15150))))

(declare-fun condMapEmpty!15150 () Bool)

(declare-fun mapDefault!15150 () ValueCell!4185)

(assert (=> b!377461 (= condMapEmpty!15150 (= (arr!10473 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4185)) mapDefault!15150)))))

(declare-fun b!377462 () Bool)

(declare-fun e!229798 () Bool)

(assert (=> b!377462 (= e!229796 (not e!229798))))

(declare-fun res!213670 () Bool)

(assert (=> b!377462 (=> res!213670 e!229798)))

(assert (=> b!377462 (= res!213670 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!175641 () ListLongMap!5001)

(declare-fun minValue!472 () V!13181)

(declare-fun getCurrentListMap!1951 (array!22013 array!22015 (_ BitVec 32) (_ BitVec 32) V!13181 V!13181 (_ BitVec 32) Int) ListLongMap!5001)

(assert (=> b!377462 (= lt!175641 (getCurrentListMap!1951 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175646 () ListLongMap!5001)

(declare-fun lt!175640 () array!22015)

(assert (=> b!377462 (= lt!175646 (getCurrentListMap!1951 lt!175645 lt!175640 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175636 () ListLongMap!5001)

(declare-fun lt!175638 () ListLongMap!5001)

(assert (=> b!377462 (and (= lt!175636 lt!175638) (= lt!175638 lt!175636))))

(assert (=> b!377462 (= lt!175638 (+!857 lt!175639 lt!175642))))

(assert (=> b!377462 (= lt!175642 (tuple2!6075 k0!778 v!373))))

(declare-fun lt!175643 () Unit!11613)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!102 (array!22013 array!22015 (_ BitVec 32) (_ BitVec 32) V!13181 V!13181 (_ BitVec 32) (_ BitVec 64) V!13181 (_ BitVec 32) Int) Unit!11613)

(assert (=> b!377462 (= lt!175643 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!102 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!769 (array!22013 array!22015 (_ BitVec 32) (_ BitVec 32) V!13181 V!13181 (_ BitVec 32) Int) ListLongMap!5001)

(assert (=> b!377462 (= lt!175636 (getCurrentListMapNoExtraKeys!769 lt!175645 lt!175640 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!377462 (= lt!175640 (array!22016 (store (arr!10473 _values!506) i!548 (ValueCellFull!4185 v!373)) (size!10825 _values!506)))))

(assert (=> b!377462 (= lt!175639 (getCurrentListMapNoExtraKeys!769 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!377463 () Bool)

(assert (=> b!377463 (= e!229801 tp_is_empty!9057)))

(declare-fun b!377464 () Bool)

(declare-fun res!213677 () Bool)

(assert (=> b!377464 (=> (not res!213677) (not e!229803))))

(assert (=> b!377464 (= res!213677 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5941))))

(declare-fun b!377465 () Bool)

(assert (=> b!377465 (= e!229798 e!229802)))

(declare-fun res!213666 () Bool)

(assert (=> b!377465 (=> res!213666 e!229802)))

(assert (=> b!377465 (= res!213666 (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!377465 (= lt!175646 lt!175648)))

(declare-fun lt!175647 () tuple2!6074)

(assert (=> b!377465 (= lt!175648 (+!857 lt!175638 lt!175647))))

(assert (=> b!377465 (= lt!175641 lt!175644)))

(assert (=> b!377465 (= lt!175644 (+!857 lt!175639 lt!175647))))

(assert (=> b!377465 (= lt!175646 (+!857 lt!175636 lt!175647))))

(assert (=> b!377465 (= lt!175647 (tuple2!6075 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(assert (= (and start!37290 res!213674) b!377454))

(assert (= (and b!377454 res!213668) b!377455))

(assert (= (and b!377455 res!213669) b!377464))

(assert (= (and b!377464 res!213677) b!377451))

(assert (= (and b!377451 res!213673) b!377459))

(assert (= (and b!377459 res!213675) b!377457))

(assert (= (and b!377457 res!213672) b!377460))

(assert (= (and b!377460 res!213667) b!377456))

(assert (= (and b!377456 res!213676) b!377458))

(assert (= (and b!377458 res!213671) b!377462))

(assert (= (and b!377462 (not res!213670)) b!377465))

(assert (= (and b!377465 (not res!213666)) b!377453))

(assert (= (and b!377461 condMapEmpty!15150) mapIsEmpty!15150))

(assert (= (and b!377461 (not condMapEmpty!15150)) mapNonEmpty!15150))

(get-info :version)

(assert (= (and mapNonEmpty!15150 ((_ is ValueCellFull!4185) mapValue!15150)) b!377452))

(assert (= (and b!377461 ((_ is ValueCellFull!4185) mapDefault!15150)) b!377463))

(assert (= start!37290 b!377461))

(declare-fun m!374273 () Bool)

(assert (=> b!377465 m!374273))

(declare-fun m!374275 () Bool)

(assert (=> b!377465 m!374275))

(declare-fun m!374277 () Bool)

(assert (=> b!377465 m!374277))

(declare-fun m!374279 () Bool)

(assert (=> b!377464 m!374279))

(declare-fun m!374281 () Bool)

(assert (=> b!377455 m!374281))

(declare-fun m!374283 () Bool)

(assert (=> mapNonEmpty!15150 m!374283))

(declare-fun m!374285 () Bool)

(assert (=> b!377462 m!374285))

(declare-fun m!374287 () Bool)

(assert (=> b!377462 m!374287))

(declare-fun m!374289 () Bool)

(assert (=> b!377462 m!374289))

(declare-fun m!374291 () Bool)

(assert (=> b!377462 m!374291))

(declare-fun m!374293 () Bool)

(assert (=> b!377462 m!374293))

(declare-fun m!374295 () Bool)

(assert (=> b!377462 m!374295))

(declare-fun m!374297 () Bool)

(assert (=> b!377462 m!374297))

(declare-fun m!374299 () Bool)

(assert (=> b!377459 m!374299))

(declare-fun m!374301 () Bool)

(assert (=> start!37290 m!374301))

(declare-fun m!374303 () Bool)

(assert (=> start!37290 m!374303))

(declare-fun m!374305 () Bool)

(assert (=> start!37290 m!374305))

(declare-fun m!374307 () Bool)

(assert (=> b!377453 m!374307))

(declare-fun m!374309 () Bool)

(assert (=> b!377453 m!374309))

(declare-fun m!374311 () Bool)

(assert (=> b!377458 m!374311))

(declare-fun m!374313 () Bool)

(assert (=> b!377460 m!374313))

(declare-fun m!374315 () Bool)

(assert (=> b!377457 m!374315))

(declare-fun m!374317 () Bool)

(assert (=> b!377456 m!374317))

(declare-fun m!374319 () Bool)

(assert (=> b!377456 m!374319))

(check-sat (not b!377465) (not b!377456) (not b!377459) (not b!377464) (not b!377460) (not b!377453) (not b!377458) (not mapNonEmpty!15150) tp_is_empty!9057 (not b!377462) (not b_next!8409) b_and!15669 (not start!37290) (not b!377455))
(check-sat b_and!15669 (not b_next!8409))
