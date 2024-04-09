; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40070 () Bool)

(assert start!40070)

(declare-fun b_free!10329 () Bool)

(declare-fun b_next!10329 () Bool)

(assert (=> start!40070 (= b_free!10329 (not b_next!10329))))

(declare-fun tp!36516 () Bool)

(declare-fun b_and!18315 () Bool)

(assert (=> start!40070 (= tp!36516 b_and!18315)))

(declare-fun b!437057 () Bool)

(declare-fun e!257994 () Bool)

(declare-fun e!257992 () Bool)

(assert (=> b!437057 (= e!257994 e!257992)))

(declare-fun res!257871 () Bool)

(assert (=> b!437057 (=> (not res!257871) (not e!257992))))

(declare-datatypes ((array!26761 0))(
  ( (array!26762 (arr!12827 (Array (_ BitVec 32) (_ BitVec 64))) (size!13179 (_ BitVec 32))) )
))
(declare-fun lt!201550 () array!26761)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26761 (_ BitVec 32)) Bool)

(assert (=> b!437057 (= res!257871 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201550 mask!1025))))

(declare-fun _keys!709 () array!26761)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!437057 (= lt!201550 (array!26762 (store (arr!12827 _keys!709) i!563 k0!794) (size!13179 _keys!709)))))

(declare-fun b!437058 () Bool)

(declare-fun res!257868 () Bool)

(assert (=> b!437058 (=> (not res!257868) (not e!257994))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!437058 (= res!257868 (validKeyInArray!0 k0!794))))

(declare-fun b!437059 () Bool)

(declare-fun res!257873 () Bool)

(assert (=> b!437059 (=> (not res!257873) (not e!257994))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16413 0))(
  ( (V!16414 (val!5785 Int)) )
))
(declare-datatypes ((ValueCell!5397 0))(
  ( (ValueCellFull!5397 (v!8028 V!16413)) (EmptyCell!5397) )
))
(declare-datatypes ((array!26763 0))(
  ( (array!26764 (arr!12828 (Array (_ BitVec 32) ValueCell!5397)) (size!13180 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26763)

(assert (=> b!437059 (= res!257873 (and (= (size!13180 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13179 _keys!709) (size!13180 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!18843 () Bool)

(declare-fun mapRes!18843 () Bool)

(declare-fun tp!36515 () Bool)

(declare-fun e!257993 () Bool)

(assert (=> mapNonEmpty!18843 (= mapRes!18843 (and tp!36515 e!257993))))

(declare-fun mapValue!18843 () ValueCell!5397)

(declare-fun mapKey!18843 () (_ BitVec 32))

(declare-fun mapRest!18843 () (Array (_ BitVec 32) ValueCell!5397))

(assert (=> mapNonEmpty!18843 (= (arr!12828 _values!549) (store mapRest!18843 mapKey!18843 mapValue!18843))))

(declare-fun b!437060 () Bool)

(declare-fun e!257995 () Bool)

(assert (=> b!437060 (= e!257995 (not true))))

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!201551 () array!26763)

(declare-fun zeroValue!515 () V!16413)

(declare-fun v!412 () V!16413)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!16413)

(declare-datatypes ((tuple2!7598 0))(
  ( (tuple2!7599 (_1!3809 (_ BitVec 64)) (_2!3809 V!16413)) )
))
(declare-datatypes ((List!7642 0))(
  ( (Nil!7639) (Cons!7638 (h!8494 tuple2!7598) (t!13406 List!7642)) )
))
(declare-datatypes ((ListLongMap!6525 0))(
  ( (ListLongMap!6526 (toList!3278 List!7642)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1460 (array!26761 array!26763 (_ BitVec 32) (_ BitVec 32) V!16413 V!16413 (_ BitVec 32) Int) ListLongMap!6525)

(declare-fun +!1422 (ListLongMap!6525 tuple2!7598) ListLongMap!6525)

(assert (=> b!437060 (= (getCurrentListMapNoExtraKeys!1460 lt!201550 lt!201551 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1422 (getCurrentListMapNoExtraKeys!1460 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7599 k0!794 v!412)))))

(declare-datatypes ((Unit!12959 0))(
  ( (Unit!12960) )
))
(declare-fun lt!201549 () Unit!12959)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!600 (array!26761 array!26763 (_ BitVec 32) (_ BitVec 32) V!16413 V!16413 (_ BitVec 32) (_ BitVec 64) V!16413 (_ BitVec 32) Int) Unit!12959)

(assert (=> b!437060 (= lt!201549 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!600 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!437061 () Bool)

(declare-fun tp_is_empty!11481 () Bool)

(assert (=> b!437061 (= e!257993 tp_is_empty!11481)))

(declare-fun b!437062 () Bool)

(declare-fun res!257867 () Bool)

(assert (=> b!437062 (=> (not res!257867) (not e!257994))))

(assert (=> b!437062 (= res!257867 (or (= (select (arr!12827 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12827 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!437064 () Bool)

(assert (=> b!437064 (= e!257992 e!257995)))

(declare-fun res!257864 () Bool)

(assert (=> b!437064 (=> (not res!257864) (not e!257995))))

(assert (=> b!437064 (= res!257864 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!201548 () ListLongMap!6525)

(assert (=> b!437064 (= lt!201548 (getCurrentListMapNoExtraKeys!1460 lt!201550 lt!201551 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!437064 (= lt!201551 (array!26764 (store (arr!12828 _values!549) i!563 (ValueCellFull!5397 v!412)) (size!13180 _values!549)))))

(declare-fun lt!201552 () ListLongMap!6525)

(assert (=> b!437064 (= lt!201552 (getCurrentListMapNoExtraKeys!1460 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!437065 () Bool)

(declare-fun e!257991 () Bool)

(declare-fun e!257990 () Bool)

(assert (=> b!437065 (= e!257991 (and e!257990 mapRes!18843))))

(declare-fun condMapEmpty!18843 () Bool)

(declare-fun mapDefault!18843 () ValueCell!5397)

(assert (=> b!437065 (= condMapEmpty!18843 (= (arr!12828 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5397)) mapDefault!18843)))))

(declare-fun b!437066 () Bool)

(declare-fun res!257866 () Bool)

(assert (=> b!437066 (=> (not res!257866) (not e!257994))))

(assert (=> b!437066 (= res!257866 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!18843 () Bool)

(assert (=> mapIsEmpty!18843 mapRes!18843))

(declare-fun b!437067 () Bool)

(declare-fun res!257874 () Bool)

(assert (=> b!437067 (=> (not res!257874) (not e!257994))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!437067 (= res!257874 (validMask!0 mask!1025))))

(declare-fun b!437068 () Bool)

(declare-fun res!257870 () Bool)

(assert (=> b!437068 (=> (not res!257870) (not e!257994))))

(declare-datatypes ((List!7643 0))(
  ( (Nil!7640) (Cons!7639 (h!8495 (_ BitVec 64)) (t!13407 List!7643)) )
))
(declare-fun arrayNoDuplicates!0 (array!26761 (_ BitVec 32) List!7643) Bool)

(assert (=> b!437068 (= res!257870 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7640))))

(declare-fun b!437069 () Bool)

(declare-fun res!257869 () Bool)

(assert (=> b!437069 (=> (not res!257869) (not e!257994))))

(assert (=> b!437069 (= res!257869 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13179 _keys!709))))))

(declare-fun b!437070 () Bool)

(declare-fun res!257865 () Bool)

(assert (=> b!437070 (=> (not res!257865) (not e!257992))))

(assert (=> b!437070 (= res!257865 (bvsle from!863 i!563))))

(declare-fun b!437071 () Bool)

(declare-fun res!257872 () Bool)

(assert (=> b!437071 (=> (not res!257872) (not e!257994))))

(declare-fun arrayContainsKey!0 (array!26761 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!437071 (= res!257872 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!437072 () Bool)

(declare-fun res!257863 () Bool)

(assert (=> b!437072 (=> (not res!257863) (not e!257992))))

(assert (=> b!437072 (= res!257863 (arrayNoDuplicates!0 lt!201550 #b00000000000000000000000000000000 Nil!7640))))

(declare-fun b!437063 () Bool)

(assert (=> b!437063 (= e!257990 tp_is_empty!11481)))

(declare-fun res!257862 () Bool)

(assert (=> start!40070 (=> (not res!257862) (not e!257994))))

(assert (=> start!40070 (= res!257862 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13179 _keys!709))))))

(assert (=> start!40070 e!257994))

(assert (=> start!40070 tp_is_empty!11481))

(assert (=> start!40070 tp!36516))

(assert (=> start!40070 true))

(declare-fun array_inv!9316 (array!26763) Bool)

(assert (=> start!40070 (and (array_inv!9316 _values!549) e!257991)))

(declare-fun array_inv!9317 (array!26761) Bool)

(assert (=> start!40070 (array_inv!9317 _keys!709)))

(assert (= (and start!40070 res!257862) b!437067))

(assert (= (and b!437067 res!257874) b!437059))

(assert (= (and b!437059 res!257873) b!437066))

(assert (= (and b!437066 res!257866) b!437068))

(assert (= (and b!437068 res!257870) b!437069))

(assert (= (and b!437069 res!257869) b!437058))

(assert (= (and b!437058 res!257868) b!437062))

(assert (= (and b!437062 res!257867) b!437071))

(assert (= (and b!437071 res!257872) b!437057))

(assert (= (and b!437057 res!257871) b!437072))

(assert (= (and b!437072 res!257863) b!437070))

(assert (= (and b!437070 res!257865) b!437064))

(assert (= (and b!437064 res!257864) b!437060))

(assert (= (and b!437065 condMapEmpty!18843) mapIsEmpty!18843))

(assert (= (and b!437065 (not condMapEmpty!18843)) mapNonEmpty!18843))

(get-info :version)

(assert (= (and mapNonEmpty!18843 ((_ is ValueCellFull!5397) mapValue!18843)) b!437061))

(assert (= (and b!437065 ((_ is ValueCellFull!5397) mapDefault!18843)) b!437063))

(assert (= start!40070 b!437065))

(declare-fun m!424803 () Bool)

(assert (=> b!437064 m!424803))

(declare-fun m!424805 () Bool)

(assert (=> b!437064 m!424805))

(declare-fun m!424807 () Bool)

(assert (=> b!437064 m!424807))

(declare-fun m!424809 () Bool)

(assert (=> b!437067 m!424809))

(declare-fun m!424811 () Bool)

(assert (=> mapNonEmpty!18843 m!424811))

(declare-fun m!424813 () Bool)

(assert (=> b!437058 m!424813))

(declare-fun m!424815 () Bool)

(assert (=> start!40070 m!424815))

(declare-fun m!424817 () Bool)

(assert (=> start!40070 m!424817))

(declare-fun m!424819 () Bool)

(assert (=> b!437071 m!424819))

(declare-fun m!424821 () Bool)

(assert (=> b!437057 m!424821))

(declare-fun m!424823 () Bool)

(assert (=> b!437057 m!424823))

(declare-fun m!424825 () Bool)

(assert (=> b!437072 m!424825))

(declare-fun m!424827 () Bool)

(assert (=> b!437066 m!424827))

(declare-fun m!424829 () Bool)

(assert (=> b!437060 m!424829))

(declare-fun m!424831 () Bool)

(assert (=> b!437060 m!424831))

(assert (=> b!437060 m!424831))

(declare-fun m!424833 () Bool)

(assert (=> b!437060 m!424833))

(declare-fun m!424835 () Bool)

(assert (=> b!437060 m!424835))

(declare-fun m!424837 () Bool)

(assert (=> b!437068 m!424837))

(declare-fun m!424839 () Bool)

(assert (=> b!437062 m!424839))

(check-sat (not b!437060) (not mapNonEmpty!18843) b_and!18315 (not b!437058) (not b!437066) (not start!40070) (not b_next!10329) tp_is_empty!11481 (not b!437071) (not b!437057) (not b!437064) (not b!437072) (not b!437067) (not b!437068))
(check-sat b_and!18315 (not b_next!10329))
