; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37524 () Bool)

(assert start!37524)

(declare-fun b_free!8643 () Bool)

(declare-fun b_next!8643 () Bool)

(assert (=> start!37524 (= b_free!8643 (not b_next!8643))))

(declare-fun tp!30645 () Bool)

(declare-fun b_and!15903 () Bool)

(assert (=> start!37524 (= tp!30645 b_and!15903)))

(declare-fun b!382585 () Bool)

(declare-fun e!232467 () Bool)

(assert (=> b!382585 (= e!232467 true)))

(declare-datatypes ((V!13493 0))(
  ( (V!13494 (val!4690 Int)) )
))
(declare-datatypes ((tuple2!6258 0))(
  ( (tuple2!6259 (_1!3139 (_ BitVec 64)) (_2!3139 V!13493)) )
))
(declare-datatypes ((List!6125 0))(
  ( (Nil!6122) (Cons!6121 (h!6977 tuple2!6258) (t!11283 List!6125)) )
))
(declare-datatypes ((ListLongMap!5185 0))(
  ( (ListLongMap!5186 (toList!2608 List!6125)) )
))
(declare-fun lt!179611 () ListLongMap!5185)

(declare-fun lt!179603 () ListLongMap!5185)

(assert (=> b!382585 (= lt!179611 lt!179603)))

(declare-fun b!382586 () Bool)

(declare-fun res!217755 () Bool)

(declare-fun e!232464 () Bool)

(assert (=> b!382586 (=> (not res!217755) (not e!232464))))

(declare-datatypes ((array!22473 0))(
  ( (array!22474 (arr!10702 (Array (_ BitVec 32) (_ BitVec 64))) (size!11054 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22473)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22473 (_ BitVec 32)) Bool)

(assert (=> b!382586 (= res!217755 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!382587 () Bool)

(declare-fun e!232470 () Bool)

(assert (=> b!382587 (= e!232464 e!232470)))

(declare-fun res!217748 () Bool)

(assert (=> b!382587 (=> (not res!217748) (not e!232470))))

(declare-fun lt!179609 () array!22473)

(assert (=> b!382587 (= res!217748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179609 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!382587 (= lt!179609 (array!22474 (store (arr!10702 _keys!658) i!548 k0!778) (size!11054 _keys!658)))))

(declare-fun b!382588 () Bool)

(declare-fun e!232469 () Bool)

(declare-fun e!232468 () Bool)

(declare-fun mapRes!15501 () Bool)

(assert (=> b!382588 (= e!232469 (and e!232468 mapRes!15501))))

(declare-fun condMapEmpty!15501 () Bool)

(declare-datatypes ((ValueCell!4302 0))(
  ( (ValueCellFull!4302 (v!6883 V!13493)) (EmptyCell!4302) )
))
(declare-datatypes ((array!22475 0))(
  ( (array!22476 (arr!10703 (Array (_ BitVec 32) ValueCell!4302)) (size!11055 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22475)

(declare-fun mapDefault!15501 () ValueCell!4302)

(assert (=> b!382588 (= condMapEmpty!15501 (= (arr!10703 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4302)) mapDefault!15501)))))

(declare-fun b!382589 () Bool)

(declare-fun res!217750 () Bool)

(assert (=> b!382589 (=> (not res!217750) (not e!232464))))

(declare-fun arrayContainsKey!0 (array!22473 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!382589 (= res!217750 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!382590 () Bool)

(declare-fun e!232466 () Bool)

(declare-fun tp_is_empty!9291 () Bool)

(assert (=> b!382590 (= e!232466 tp_is_empty!9291)))

(declare-fun b!382591 () Bool)

(declare-fun res!217751 () Bool)

(assert (=> b!382591 (=> (not res!217751) (not e!232464))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!382591 (= res!217751 (validKeyInArray!0 k0!778))))

(declare-fun b!382592 () Bool)

(assert (=> b!382592 (= e!232470 (not e!232467))))

(declare-fun res!217756 () Bool)

(assert (=> b!382592 (=> res!217756 e!232467)))

(declare-fun lt!179605 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!382592 (= res!217756 (or (and (not lt!179605) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179605) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179605)))))

(assert (=> b!382592 (= lt!179605 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun lt!179610 () ListLongMap!5185)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13493)

(declare-fun minValue!472 () V!13493)

(declare-fun getCurrentListMap!2026 (array!22473 array!22475 (_ BitVec 32) (_ BitVec 32) V!13493 V!13493 (_ BitVec 32) Int) ListLongMap!5185)

(assert (=> b!382592 (= lt!179610 (getCurrentListMap!2026 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179608 () array!22475)

(assert (=> b!382592 (= lt!179611 (getCurrentListMap!2026 lt!179609 lt!179608 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179607 () ListLongMap!5185)

(assert (=> b!382592 (and (= lt!179603 lt!179607) (= lt!179607 lt!179603))))

(declare-fun lt!179606 () ListLongMap!5185)

(declare-fun v!373 () V!13493)

(declare-fun +!944 (ListLongMap!5185 tuple2!6258) ListLongMap!5185)

(assert (=> b!382592 (= lt!179607 (+!944 lt!179606 (tuple2!6259 k0!778 v!373)))))

(declare-datatypes ((Unit!11781 0))(
  ( (Unit!11782) )
))
(declare-fun lt!179604 () Unit!11781)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!177 (array!22473 array!22475 (_ BitVec 32) (_ BitVec 32) V!13493 V!13493 (_ BitVec 32) (_ BitVec 64) V!13493 (_ BitVec 32) Int) Unit!11781)

(assert (=> b!382592 (= lt!179604 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!177 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!844 (array!22473 array!22475 (_ BitVec 32) (_ BitVec 32) V!13493 V!13493 (_ BitVec 32) Int) ListLongMap!5185)

(assert (=> b!382592 (= lt!179603 (getCurrentListMapNoExtraKeys!844 lt!179609 lt!179608 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!382592 (= lt!179608 (array!22476 (store (arr!10703 _values!506) i!548 (ValueCellFull!4302 v!373)) (size!11055 _values!506)))))

(assert (=> b!382592 (= lt!179606 (getCurrentListMapNoExtraKeys!844 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun res!217753 () Bool)

(assert (=> start!37524 (=> (not res!217753) (not e!232464))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37524 (= res!217753 (validMask!0 mask!970))))

(assert (=> start!37524 e!232464))

(declare-fun array_inv!7858 (array!22475) Bool)

(assert (=> start!37524 (and (array_inv!7858 _values!506) e!232469)))

(assert (=> start!37524 tp!30645))

(assert (=> start!37524 true))

(assert (=> start!37524 tp_is_empty!9291))

(declare-fun array_inv!7859 (array!22473) Bool)

(assert (=> start!37524 (array_inv!7859 _keys!658)))

(declare-fun b!382593 () Bool)

(assert (=> b!382593 (= e!232468 tp_is_empty!9291)))

(declare-fun b!382594 () Bool)

(declare-fun res!217747 () Bool)

(assert (=> b!382594 (=> (not res!217747) (not e!232464))))

(assert (=> b!382594 (= res!217747 (and (= (size!11055 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11054 _keys!658) (size!11055 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!382595 () Bool)

(declare-fun res!217754 () Bool)

(assert (=> b!382595 (=> (not res!217754) (not e!232470))))

(declare-datatypes ((List!6126 0))(
  ( (Nil!6123) (Cons!6122 (h!6978 (_ BitVec 64)) (t!11284 List!6126)) )
))
(declare-fun arrayNoDuplicates!0 (array!22473 (_ BitVec 32) List!6126) Bool)

(assert (=> b!382595 (= res!217754 (arrayNoDuplicates!0 lt!179609 #b00000000000000000000000000000000 Nil!6123))))

(declare-fun mapIsEmpty!15501 () Bool)

(assert (=> mapIsEmpty!15501 mapRes!15501))

(declare-fun b!382596 () Bool)

(declare-fun res!217757 () Bool)

(assert (=> b!382596 (=> (not res!217757) (not e!232464))))

(assert (=> b!382596 (= res!217757 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11054 _keys!658))))))

(declare-fun b!382597 () Bool)

(declare-fun res!217752 () Bool)

(assert (=> b!382597 (=> (not res!217752) (not e!232464))))

(assert (=> b!382597 (= res!217752 (or (= (select (arr!10702 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10702 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!15501 () Bool)

(declare-fun tp!30644 () Bool)

(assert (=> mapNonEmpty!15501 (= mapRes!15501 (and tp!30644 e!232466))))

(declare-fun mapRest!15501 () (Array (_ BitVec 32) ValueCell!4302))

(declare-fun mapKey!15501 () (_ BitVec 32))

(declare-fun mapValue!15501 () ValueCell!4302)

(assert (=> mapNonEmpty!15501 (= (arr!10703 _values!506) (store mapRest!15501 mapKey!15501 mapValue!15501))))

(declare-fun b!382598 () Bool)

(declare-fun res!217749 () Bool)

(assert (=> b!382598 (=> (not res!217749) (not e!232464))))

(assert (=> b!382598 (= res!217749 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6123))))

(assert (= (and start!37524 res!217753) b!382594))

(assert (= (and b!382594 res!217747) b!382586))

(assert (= (and b!382586 res!217755) b!382598))

(assert (= (and b!382598 res!217749) b!382596))

(assert (= (and b!382596 res!217757) b!382591))

(assert (= (and b!382591 res!217751) b!382597))

(assert (= (and b!382597 res!217752) b!382589))

(assert (= (and b!382589 res!217750) b!382587))

(assert (= (and b!382587 res!217748) b!382595))

(assert (= (and b!382595 res!217754) b!382592))

(assert (= (and b!382592 (not res!217756)) b!382585))

(assert (= (and b!382588 condMapEmpty!15501) mapIsEmpty!15501))

(assert (= (and b!382588 (not condMapEmpty!15501)) mapNonEmpty!15501))

(get-info :version)

(assert (= (and mapNonEmpty!15501 ((_ is ValueCellFull!4302) mapValue!15501)) b!382590))

(assert (= (and b!382588 ((_ is ValueCellFull!4302) mapDefault!15501)) b!382593))

(assert (= start!37524 b!382588))

(declare-fun m!379417 () Bool)

(assert (=> b!382592 m!379417))

(declare-fun m!379419 () Bool)

(assert (=> b!382592 m!379419))

(declare-fun m!379421 () Bool)

(assert (=> b!382592 m!379421))

(declare-fun m!379423 () Bool)

(assert (=> b!382592 m!379423))

(declare-fun m!379425 () Bool)

(assert (=> b!382592 m!379425))

(declare-fun m!379427 () Bool)

(assert (=> b!382592 m!379427))

(declare-fun m!379429 () Bool)

(assert (=> b!382592 m!379429))

(declare-fun m!379431 () Bool)

(assert (=> b!382597 m!379431))

(declare-fun m!379433 () Bool)

(assert (=> b!382595 m!379433))

(declare-fun m!379435 () Bool)

(assert (=> b!382591 m!379435))

(declare-fun m!379437 () Bool)

(assert (=> b!382589 m!379437))

(declare-fun m!379439 () Bool)

(assert (=> b!382586 m!379439))

(declare-fun m!379441 () Bool)

(assert (=> b!382587 m!379441))

(declare-fun m!379443 () Bool)

(assert (=> b!382587 m!379443))

(declare-fun m!379445 () Bool)

(assert (=> start!37524 m!379445))

(declare-fun m!379447 () Bool)

(assert (=> start!37524 m!379447))

(declare-fun m!379449 () Bool)

(assert (=> start!37524 m!379449))

(declare-fun m!379451 () Bool)

(assert (=> mapNonEmpty!15501 m!379451))

(declare-fun m!379453 () Bool)

(assert (=> b!382598 m!379453))

(check-sat tp_is_empty!9291 b_and!15903 (not b!382589) (not b_next!8643) (not b!382591) (not b!382592) (not b!382586) (not start!37524) (not b!382598) (not b!382587) (not mapNonEmpty!15501) (not b!382595))
(check-sat b_and!15903 (not b_next!8643))
