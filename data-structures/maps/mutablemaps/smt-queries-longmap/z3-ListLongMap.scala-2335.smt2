; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37482 () Bool)

(assert start!37482)

(declare-fun b_free!8601 () Bool)

(declare-fun b_next!8601 () Bool)

(assert (=> start!37482 (= b_free!8601 (not b_next!8601))))

(declare-fun tp!30519 () Bool)

(declare-fun b_and!15861 () Bool)

(assert (=> start!37482 (= tp!30519 b_and!15861)))

(declare-fun b!381703 () Bool)

(declare-fun res!217062 () Bool)

(declare-fun e!232026 () Bool)

(assert (=> b!381703 (=> (not res!217062) (not e!232026))))

(declare-datatypes ((array!22389 0))(
  ( (array!22390 (arr!10660 (Array (_ BitVec 32) (_ BitVec 64))) (size!11012 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22389)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22389 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!381703 (= res!217062 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15438 () Bool)

(declare-fun mapRes!15438 () Bool)

(assert (=> mapIsEmpty!15438 mapRes!15438))

(declare-fun b!381705 () Bool)

(declare-fun res!217060 () Bool)

(assert (=> b!381705 (=> (not res!217060) (not e!232026))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22389 (_ BitVec 32)) Bool)

(assert (=> b!381705 (= res!217060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!381706 () Bool)

(declare-fun e!232025 () Bool)

(declare-fun tp_is_empty!9249 () Bool)

(assert (=> b!381706 (= e!232025 tp_is_empty!9249)))

(declare-fun b!381707 () Bool)

(declare-fun res!217064 () Bool)

(declare-fun e!232024 () Bool)

(assert (=> b!381707 (=> (not res!217064) (not e!232024))))

(declare-fun lt!179037 () array!22389)

(declare-datatypes ((List!6094 0))(
  ( (Nil!6091) (Cons!6090 (h!6946 (_ BitVec 64)) (t!11252 List!6094)) )
))
(declare-fun arrayNoDuplicates!0 (array!22389 (_ BitVec 32) List!6094) Bool)

(assert (=> b!381707 (= res!217064 (arrayNoDuplicates!0 lt!179037 #b00000000000000000000000000000000 Nil!6091))))

(declare-fun b!381708 () Bool)

(declare-fun e!232023 () Bool)

(assert (=> b!381708 (= e!232023 (bvsle #b00000000000000000000000000000000 (size!11012 _keys!658)))))

(declare-datatypes ((V!13437 0))(
  ( (V!13438 (val!4669 Int)) )
))
(declare-datatypes ((tuple2!6226 0))(
  ( (tuple2!6227 (_1!3123 (_ BitVec 64)) (_2!3123 V!13437)) )
))
(declare-datatypes ((List!6095 0))(
  ( (Nil!6092) (Cons!6091 (h!6947 tuple2!6226) (t!11253 List!6095)) )
))
(declare-datatypes ((ListLongMap!5153 0))(
  ( (ListLongMap!5154 (toList!2592 List!6095)) )
))
(declare-fun lt!179039 () ListLongMap!5153)

(declare-fun lt!179044 () ListLongMap!5153)

(assert (=> b!381708 (= lt!179039 lt!179044)))

(declare-fun b!381709 () Bool)

(declare-fun res!217063 () Bool)

(assert (=> b!381709 (=> (not res!217063) (not e!232026))))

(assert (=> b!381709 (= res!217063 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6091))))

(declare-fun b!381710 () Bool)

(declare-fun e!232028 () Bool)

(assert (=> b!381710 (= e!232028 (and e!232025 mapRes!15438))))

(declare-fun condMapEmpty!15438 () Bool)

(declare-datatypes ((ValueCell!4281 0))(
  ( (ValueCellFull!4281 (v!6862 V!13437)) (EmptyCell!4281) )
))
(declare-datatypes ((array!22391 0))(
  ( (array!22392 (arr!10661 (Array (_ BitVec 32) ValueCell!4281)) (size!11013 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22391)

(declare-fun mapDefault!15438 () ValueCell!4281)

(assert (=> b!381710 (= condMapEmpty!15438 (= (arr!10661 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4281)) mapDefault!15438)))))

(declare-fun b!381711 () Bool)

(declare-fun res!217059 () Bool)

(assert (=> b!381711 (=> (not res!217059) (not e!232026))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!381711 (= res!217059 (or (= (select (arr!10660 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10660 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!381712 () Bool)

(declare-fun res!217055 () Bool)

(assert (=> b!381712 (=> (not res!217055) (not e!232026))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!381712 (= res!217055 (validKeyInArray!0 k0!778))))

(declare-fun b!381713 () Bool)

(declare-fun e!232029 () Bool)

(assert (=> b!381713 (= e!232029 tp_is_empty!9249)))

(declare-fun b!381714 () Bool)

(assert (=> b!381714 (= e!232024 (not e!232023))))

(declare-fun res!217054 () Bool)

(assert (=> b!381714 (=> res!217054 e!232023)))

(declare-fun lt!179041 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!381714 (= res!217054 (or (and (not lt!179041) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179041) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179041)))))

(assert (=> b!381714 (= lt!179041 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13437)

(declare-fun lt!179042 () ListLongMap!5153)

(declare-fun minValue!472 () V!13437)

(declare-fun getCurrentListMap!2011 (array!22389 array!22391 (_ BitVec 32) (_ BitVec 32) V!13437 V!13437 (_ BitVec 32) Int) ListLongMap!5153)

(assert (=> b!381714 (= lt!179042 (getCurrentListMap!2011 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179038 () array!22391)

(assert (=> b!381714 (= lt!179039 (getCurrentListMap!2011 lt!179037 lt!179038 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179040 () ListLongMap!5153)

(assert (=> b!381714 (and (= lt!179044 lt!179040) (= lt!179040 lt!179044))))

(declare-fun v!373 () V!13437)

(declare-fun lt!179036 () ListLongMap!5153)

(declare-fun +!929 (ListLongMap!5153 tuple2!6226) ListLongMap!5153)

(assert (=> b!381714 (= lt!179040 (+!929 lt!179036 (tuple2!6227 k0!778 v!373)))))

(declare-datatypes ((Unit!11751 0))(
  ( (Unit!11752) )
))
(declare-fun lt!179043 () Unit!11751)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!162 (array!22389 array!22391 (_ BitVec 32) (_ BitVec 32) V!13437 V!13437 (_ BitVec 32) (_ BitVec 64) V!13437 (_ BitVec 32) Int) Unit!11751)

(assert (=> b!381714 (= lt!179043 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!162 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!829 (array!22389 array!22391 (_ BitVec 32) (_ BitVec 32) V!13437 V!13437 (_ BitVec 32) Int) ListLongMap!5153)

(assert (=> b!381714 (= lt!179044 (getCurrentListMapNoExtraKeys!829 lt!179037 lt!179038 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!381714 (= lt!179038 (array!22392 (store (arr!10661 _values!506) i!548 (ValueCellFull!4281 v!373)) (size!11013 _values!506)))))

(assert (=> b!381714 (= lt!179036 (getCurrentListMapNoExtraKeys!829 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapNonEmpty!15438 () Bool)

(declare-fun tp!30518 () Bool)

(assert (=> mapNonEmpty!15438 (= mapRes!15438 (and tp!30518 e!232029))))

(declare-fun mapKey!15438 () (_ BitVec 32))

(declare-fun mapRest!15438 () (Array (_ BitVec 32) ValueCell!4281))

(declare-fun mapValue!15438 () ValueCell!4281)

(assert (=> mapNonEmpty!15438 (= (arr!10661 _values!506) (store mapRest!15438 mapKey!15438 mapValue!15438))))

(declare-fun b!381704 () Bool)

(declare-fun res!217061 () Bool)

(assert (=> b!381704 (=> (not res!217061) (not e!232026))))

(assert (=> b!381704 (= res!217061 (and (= (size!11013 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11012 _keys!658) (size!11013 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!217058 () Bool)

(assert (=> start!37482 (=> (not res!217058) (not e!232026))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37482 (= res!217058 (validMask!0 mask!970))))

(assert (=> start!37482 e!232026))

(declare-fun array_inv!7830 (array!22391) Bool)

(assert (=> start!37482 (and (array_inv!7830 _values!506) e!232028)))

(assert (=> start!37482 tp!30519))

(assert (=> start!37482 true))

(assert (=> start!37482 tp_is_empty!9249))

(declare-fun array_inv!7831 (array!22389) Bool)

(assert (=> start!37482 (array_inv!7831 _keys!658)))

(declare-fun b!381715 () Bool)

(assert (=> b!381715 (= e!232026 e!232024)))

(declare-fun res!217056 () Bool)

(assert (=> b!381715 (=> (not res!217056) (not e!232024))))

(assert (=> b!381715 (= res!217056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179037 mask!970))))

(assert (=> b!381715 (= lt!179037 (array!22390 (store (arr!10660 _keys!658) i!548 k0!778) (size!11012 _keys!658)))))

(declare-fun b!381716 () Bool)

(declare-fun res!217057 () Bool)

(assert (=> b!381716 (=> (not res!217057) (not e!232026))))

(assert (=> b!381716 (= res!217057 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11012 _keys!658))))))

(assert (= (and start!37482 res!217058) b!381704))

(assert (= (and b!381704 res!217061) b!381705))

(assert (= (and b!381705 res!217060) b!381709))

(assert (= (and b!381709 res!217063) b!381716))

(assert (= (and b!381716 res!217057) b!381712))

(assert (= (and b!381712 res!217055) b!381711))

(assert (= (and b!381711 res!217059) b!381703))

(assert (= (and b!381703 res!217062) b!381715))

(assert (= (and b!381715 res!217056) b!381707))

(assert (= (and b!381707 res!217064) b!381714))

(assert (= (and b!381714 (not res!217054)) b!381708))

(assert (= (and b!381710 condMapEmpty!15438) mapIsEmpty!15438))

(assert (= (and b!381710 (not condMapEmpty!15438)) mapNonEmpty!15438))

(get-info :version)

(assert (= (and mapNonEmpty!15438 ((_ is ValueCellFull!4281) mapValue!15438)) b!381713))

(assert (= (and b!381710 ((_ is ValueCellFull!4281) mapDefault!15438)) b!381706))

(assert (= start!37482 b!381710))

(declare-fun m!378619 () Bool)

(assert (=> b!381712 m!378619))

(declare-fun m!378621 () Bool)

(assert (=> start!37482 m!378621))

(declare-fun m!378623 () Bool)

(assert (=> start!37482 m!378623))

(declare-fun m!378625 () Bool)

(assert (=> start!37482 m!378625))

(declare-fun m!378627 () Bool)

(assert (=> b!381715 m!378627))

(declare-fun m!378629 () Bool)

(assert (=> b!381715 m!378629))

(declare-fun m!378631 () Bool)

(assert (=> b!381711 m!378631))

(declare-fun m!378633 () Bool)

(assert (=> mapNonEmpty!15438 m!378633))

(declare-fun m!378635 () Bool)

(assert (=> b!381709 m!378635))

(declare-fun m!378637 () Bool)

(assert (=> b!381705 m!378637))

(declare-fun m!378639 () Bool)

(assert (=> b!381703 m!378639))

(declare-fun m!378641 () Bool)

(assert (=> b!381707 m!378641))

(declare-fun m!378643 () Bool)

(assert (=> b!381714 m!378643))

(declare-fun m!378645 () Bool)

(assert (=> b!381714 m!378645))

(declare-fun m!378647 () Bool)

(assert (=> b!381714 m!378647))

(declare-fun m!378649 () Bool)

(assert (=> b!381714 m!378649))

(declare-fun m!378651 () Bool)

(assert (=> b!381714 m!378651))

(declare-fun m!378653 () Bool)

(assert (=> b!381714 m!378653))

(declare-fun m!378655 () Bool)

(assert (=> b!381714 m!378655))

(check-sat (not b!381715) (not b_next!8601) (not start!37482) (not b!381714) (not b!381707) (not b!381709) (not b!381705) (not b!381712) tp_is_empty!9249 b_and!15861 (not mapNonEmpty!15438) (not b!381703))
(check-sat b_and!15861 (not b_next!8601))
