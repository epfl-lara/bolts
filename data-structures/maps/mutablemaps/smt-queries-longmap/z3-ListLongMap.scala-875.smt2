; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20360 () Bool)

(assert start!20360)

(declare-fun b_free!5007 () Bool)

(declare-fun b_next!5007 () Bool)

(assert (=> start!20360 (= b_free!5007 (not b_next!5007))))

(declare-fun tp!18053 () Bool)

(declare-fun b_and!11771 () Bool)

(assert (=> start!20360 (= tp!18053 b_and!11771)))

(declare-fun mapNonEmpty!8363 () Bool)

(declare-fun mapRes!8363 () Bool)

(declare-fun tp!18052 () Bool)

(declare-fun e!131604 () Bool)

(assert (=> mapNonEmpty!8363 (= mapRes!8363 (and tp!18052 e!131604))))

(declare-fun mapKey!8363 () (_ BitVec 32))

(declare-datatypes ((V!6131 0))(
  ( (V!6132 (val!2476 Int)) )
))
(declare-datatypes ((ValueCell!2088 0))(
  ( (ValueCellFull!2088 (v!4442 V!6131)) (EmptyCell!2088) )
))
(declare-fun mapValue!8363 () ValueCell!2088)

(declare-datatypes ((array!8956 0))(
  ( (array!8957 (arr!4228 (Array (_ BitVec 32) ValueCell!2088)) (size!4553 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8956)

(declare-fun mapRest!8363 () (Array (_ BitVec 32) ValueCell!2088))

(assert (=> mapNonEmpty!8363 (= (arr!4228 _values!649) (store mapRest!8363 mapKey!8363 mapValue!8363))))

(declare-fun b!200710 () Bool)

(declare-fun res!95739 () Bool)

(declare-fun e!131602 () Bool)

(assert (=> b!200710 (=> (not res!95739) (not e!131602))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!200710 (= res!95739 (validKeyInArray!0 k0!843))))

(declare-fun b!200711 () Bool)

(declare-fun res!95735 () Bool)

(assert (=> b!200711 (=> (not res!95735) (not e!131602))))

(declare-datatypes ((array!8958 0))(
  ( (array!8959 (arr!4229 (Array (_ BitVec 32) (_ BitVec 64))) (size!4554 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8958)

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!200711 (= res!95735 (= (select (arr!4229 _keys!825) i!601) k0!843))))

(declare-fun b!200712 () Bool)

(declare-fun res!95734 () Bool)

(assert (=> b!200712 (=> (not res!95734) (not e!131602))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8958 (_ BitVec 32)) Bool)

(assert (=> b!200712 (= res!95734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!8363 () Bool)

(assert (=> mapIsEmpty!8363 mapRes!8363))

(declare-fun b!200713 () Bool)

(declare-fun e!131603 () Bool)

(declare-fun e!131605 () Bool)

(assert (=> b!200713 (= e!131603 e!131605)))

(declare-fun res!95740 () Bool)

(assert (=> b!200713 (=> res!95740 e!131605)))

(assert (=> b!200713 (= res!95740 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3740 0))(
  ( (tuple2!3741 (_1!1880 (_ BitVec 64)) (_2!1880 V!6131)) )
))
(declare-datatypes ((List!2680 0))(
  ( (Nil!2677) (Cons!2676 (h!3318 tuple2!3740) (t!7619 List!2680)) )
))
(declare-datatypes ((ListLongMap!2667 0))(
  ( (ListLongMap!2668 (toList!1349 List!2680)) )
))
(declare-fun lt!99486 () ListLongMap!2667)

(declare-fun lt!99487 () ListLongMap!2667)

(assert (=> b!200713 (= lt!99486 lt!99487)))

(declare-fun lt!99484 () ListLongMap!2667)

(declare-fun lt!99483 () tuple2!3740)

(declare-fun +!366 (ListLongMap!2667 tuple2!3740) ListLongMap!2667)

(assert (=> b!200713 (= lt!99487 (+!366 lt!99484 lt!99483))))

(declare-fun lt!99481 () ListLongMap!2667)

(declare-fun v!520 () V!6131)

(declare-fun zeroValue!615 () V!6131)

(declare-datatypes ((Unit!6039 0))(
  ( (Unit!6040) )
))
(declare-fun lt!99478 () Unit!6039)

(declare-fun addCommutativeForDiffKeys!87 (ListLongMap!2667 (_ BitVec 64) V!6131 (_ BitVec 64) V!6131) Unit!6039)

(assert (=> b!200713 (= lt!99478 (addCommutativeForDiffKeys!87 lt!99481 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!99493 () ListLongMap!2667)

(declare-fun lt!99492 () tuple2!3740)

(assert (=> b!200713 (= lt!99493 (+!366 lt!99486 lt!99492))))

(declare-fun lt!99490 () ListLongMap!2667)

(declare-fun lt!99489 () tuple2!3740)

(assert (=> b!200713 (= lt!99486 (+!366 lt!99490 lt!99489))))

(declare-fun lt!99491 () ListLongMap!2667)

(declare-fun lt!99482 () ListLongMap!2667)

(assert (=> b!200713 (= lt!99491 lt!99482)))

(assert (=> b!200713 (= lt!99482 (+!366 lt!99484 lt!99492))))

(assert (=> b!200713 (= lt!99484 (+!366 lt!99481 lt!99489))))

(declare-fun lt!99480 () ListLongMap!2667)

(assert (=> b!200713 (= lt!99493 (+!366 (+!366 lt!99480 lt!99489) lt!99492))))

(declare-fun minValue!615 () V!6131)

(assert (=> b!200713 (= lt!99492 (tuple2!3741 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!200713 (= lt!99489 (tuple2!3741 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!200715 () Bool)

(declare-fun tp_is_empty!4863 () Bool)

(assert (=> b!200715 (= e!131604 tp_is_empty!4863)))

(declare-fun b!200716 () Bool)

(assert (=> b!200716 (= e!131602 (not e!131603))))

(declare-fun res!95737 () Bool)

(assert (=> b!200716 (=> res!95737 e!131603)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!200716 (= res!95737 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!933 (array!8958 array!8956 (_ BitVec 32) (_ BitVec 32) V!6131 V!6131 (_ BitVec 32) Int) ListLongMap!2667)

(assert (=> b!200716 (= lt!99491 (getCurrentListMap!933 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99485 () array!8956)

(assert (=> b!200716 (= lt!99493 (getCurrentListMap!933 _keys!825 lt!99485 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200716 (and (= lt!99480 lt!99490) (= lt!99490 lt!99480))))

(assert (=> b!200716 (= lt!99490 (+!366 lt!99481 lt!99483))))

(assert (=> b!200716 (= lt!99483 (tuple2!3741 k0!843 v!520))))

(declare-fun lt!99479 () Unit!6039)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!46 (array!8958 array!8956 (_ BitVec 32) (_ BitVec 32) V!6131 V!6131 (_ BitVec 32) (_ BitVec 64) V!6131 (_ BitVec 32) Int) Unit!6039)

(assert (=> b!200716 (= lt!99479 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!46 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!304 (array!8958 array!8956 (_ BitVec 32) (_ BitVec 32) V!6131 V!6131 (_ BitVec 32) Int) ListLongMap!2667)

(assert (=> b!200716 (= lt!99480 (getCurrentListMapNoExtraKeys!304 _keys!825 lt!99485 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200716 (= lt!99485 (array!8957 (store (arr!4228 _values!649) i!601 (ValueCellFull!2088 v!520)) (size!4553 _values!649)))))

(assert (=> b!200716 (= lt!99481 (getCurrentListMapNoExtraKeys!304 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!200717 () Bool)

(declare-fun res!95733 () Bool)

(assert (=> b!200717 (=> (not res!95733) (not e!131602))))

(assert (=> b!200717 (= res!95733 (and (= (size!4553 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4554 _keys!825) (size!4553 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!200718 () Bool)

(declare-fun res!95738 () Bool)

(assert (=> b!200718 (=> (not res!95738) (not e!131602))))

(assert (=> b!200718 (= res!95738 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4554 _keys!825))))))

(declare-fun b!200719 () Bool)

(declare-fun e!131607 () Bool)

(assert (=> b!200719 (= e!131607 tp_is_empty!4863)))

(declare-fun res!95732 () Bool)

(assert (=> start!20360 (=> (not res!95732) (not e!131602))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20360 (= res!95732 (validMask!0 mask!1149))))

(assert (=> start!20360 e!131602))

(declare-fun e!131608 () Bool)

(declare-fun array_inv!2771 (array!8956) Bool)

(assert (=> start!20360 (and (array_inv!2771 _values!649) e!131608)))

(assert (=> start!20360 true))

(assert (=> start!20360 tp_is_empty!4863))

(declare-fun array_inv!2772 (array!8958) Bool)

(assert (=> start!20360 (array_inv!2772 _keys!825)))

(assert (=> start!20360 tp!18053))

(declare-fun b!200714 () Bool)

(assert (=> b!200714 (= e!131605 true)))

(assert (=> b!200714 (= (+!366 lt!99487 lt!99492) (+!366 lt!99482 lt!99483))))

(declare-fun lt!99488 () Unit!6039)

(assert (=> b!200714 (= lt!99488 (addCommutativeForDiffKeys!87 lt!99484 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!200720 () Bool)

(declare-fun res!95736 () Bool)

(assert (=> b!200720 (=> (not res!95736) (not e!131602))))

(declare-datatypes ((List!2681 0))(
  ( (Nil!2678) (Cons!2677 (h!3319 (_ BitVec 64)) (t!7620 List!2681)) )
))
(declare-fun arrayNoDuplicates!0 (array!8958 (_ BitVec 32) List!2681) Bool)

(assert (=> b!200720 (= res!95736 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2678))))

(declare-fun b!200721 () Bool)

(assert (=> b!200721 (= e!131608 (and e!131607 mapRes!8363))))

(declare-fun condMapEmpty!8363 () Bool)

(declare-fun mapDefault!8363 () ValueCell!2088)

(assert (=> b!200721 (= condMapEmpty!8363 (= (arr!4228 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2088)) mapDefault!8363)))))

(assert (= (and start!20360 res!95732) b!200717))

(assert (= (and b!200717 res!95733) b!200712))

(assert (= (and b!200712 res!95734) b!200720))

(assert (= (and b!200720 res!95736) b!200718))

(assert (= (and b!200718 res!95738) b!200710))

(assert (= (and b!200710 res!95739) b!200711))

(assert (= (and b!200711 res!95735) b!200716))

(assert (= (and b!200716 (not res!95737)) b!200713))

(assert (= (and b!200713 (not res!95740)) b!200714))

(assert (= (and b!200721 condMapEmpty!8363) mapIsEmpty!8363))

(assert (= (and b!200721 (not condMapEmpty!8363)) mapNonEmpty!8363))

(get-info :version)

(assert (= (and mapNonEmpty!8363 ((_ is ValueCellFull!2088) mapValue!8363)) b!200715))

(assert (= (and b!200721 ((_ is ValueCellFull!2088) mapDefault!8363)) b!200719))

(assert (= start!20360 b!200721))

(declare-fun m!227353 () Bool)

(assert (=> b!200714 m!227353))

(declare-fun m!227355 () Bool)

(assert (=> b!200714 m!227355))

(declare-fun m!227357 () Bool)

(assert (=> b!200714 m!227357))

(declare-fun m!227359 () Bool)

(assert (=> start!20360 m!227359))

(declare-fun m!227361 () Bool)

(assert (=> start!20360 m!227361))

(declare-fun m!227363 () Bool)

(assert (=> start!20360 m!227363))

(declare-fun m!227365 () Bool)

(assert (=> mapNonEmpty!8363 m!227365))

(declare-fun m!227367 () Bool)

(assert (=> b!200713 m!227367))

(declare-fun m!227369 () Bool)

(assert (=> b!200713 m!227369))

(declare-fun m!227371 () Bool)

(assert (=> b!200713 m!227371))

(declare-fun m!227373 () Bool)

(assert (=> b!200713 m!227373))

(declare-fun m!227375 () Bool)

(assert (=> b!200713 m!227375))

(declare-fun m!227377 () Bool)

(assert (=> b!200713 m!227377))

(declare-fun m!227379 () Bool)

(assert (=> b!200713 m!227379))

(assert (=> b!200713 m!227371))

(declare-fun m!227381 () Bool)

(assert (=> b!200713 m!227381))

(declare-fun m!227383 () Bool)

(assert (=> b!200710 m!227383))

(declare-fun m!227385 () Bool)

(assert (=> b!200712 m!227385))

(declare-fun m!227387 () Bool)

(assert (=> b!200716 m!227387))

(declare-fun m!227389 () Bool)

(assert (=> b!200716 m!227389))

(declare-fun m!227391 () Bool)

(assert (=> b!200716 m!227391))

(declare-fun m!227393 () Bool)

(assert (=> b!200716 m!227393))

(declare-fun m!227395 () Bool)

(assert (=> b!200716 m!227395))

(declare-fun m!227397 () Bool)

(assert (=> b!200716 m!227397))

(declare-fun m!227399 () Bool)

(assert (=> b!200716 m!227399))

(declare-fun m!227401 () Bool)

(assert (=> b!200711 m!227401))

(declare-fun m!227403 () Bool)

(assert (=> b!200720 m!227403))

(check-sat tp_is_empty!4863 (not b_next!5007) (not b!200712) (not b!200720) (not b!200714) (not b!200716) (not mapNonEmpty!8363) (not start!20360) (not b!200713) (not b!200710) b_and!11771)
(check-sat b_and!11771 (not b_next!5007))
