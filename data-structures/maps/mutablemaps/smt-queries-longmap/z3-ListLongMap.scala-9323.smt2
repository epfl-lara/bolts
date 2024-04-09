; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111412 () Bool)

(assert start!111412)

(declare-fun b_free!30033 () Bool)

(declare-fun b_next!30033 () Bool)

(assert (=> start!111412 (= b_free!30033 (not b_next!30033))))

(declare-fun tp!105575 () Bool)

(declare-fun b_and!48263 () Bool)

(assert (=> start!111412 (= tp!105575 b_and!48263)))

(declare-fun b!1317815 () Bool)

(declare-fun res!874687 () Bool)

(declare-fun e!752062 () Bool)

(assert (=> b!1317815 (=> (not res!874687) (not e!752062))))

(declare-datatypes ((array!88611 0))(
  ( (array!88612 (arr!42775 (Array (_ BitVec 32) (_ BitVec 64))) (size!43326 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88611)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1317815 (= res!874687 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43326 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1317816 () Bool)

(declare-fun res!874686 () Bool)

(assert (=> b!1317816 (=> (not res!874686) (not e!752062))))

(declare-datatypes ((V!52907 0))(
  ( (V!52908 (val!18001 Int)) )
))
(declare-datatypes ((ValueCell!17028 0))(
  ( (ValueCellFull!17028 (v!20629 V!52907)) (EmptyCell!17028) )
))
(declare-datatypes ((array!88613 0))(
  ( (array!88614 (arr!42776 (Array (_ BitVec 32) ValueCell!17028)) (size!43327 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88613)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1317816 (= res!874686 (and (= (size!43327 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43326 _keys!1609) (size!43327 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1317817 () Bool)

(declare-fun res!874688 () Bool)

(assert (=> b!1317817 (=> (not res!874688) (not e!752062))))

(declare-datatypes ((List!30505 0))(
  ( (Nil!30502) (Cons!30501 (h!31710 (_ BitVec 64)) (t!44120 List!30505)) )
))
(declare-fun arrayNoDuplicates!0 (array!88611 (_ BitVec 32) List!30505) Bool)

(assert (=> b!1317817 (= res!874688 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30502))))

(declare-fun b!1317818 () Bool)

(declare-fun e!752061 () Bool)

(declare-fun tp_is_empty!35853 () Bool)

(assert (=> b!1317818 (= e!752061 tp_is_empty!35853)))

(declare-fun b!1317819 () Bool)

(declare-fun e!752060 () Bool)

(declare-fun mapRes!55427 () Bool)

(assert (=> b!1317819 (= e!752060 (and e!752061 mapRes!55427))))

(declare-fun condMapEmpty!55427 () Bool)

(declare-fun mapDefault!55427 () ValueCell!17028)

(assert (=> b!1317819 (= condMapEmpty!55427 (= (arr!42776 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17028)) mapDefault!55427)))))

(declare-fun res!874689 () Bool)

(assert (=> start!111412 (=> (not res!874689) (not e!752062))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111412 (= res!874689 (validMask!0 mask!2019))))

(assert (=> start!111412 e!752062))

(declare-fun array_inv!32257 (array!88611) Bool)

(assert (=> start!111412 (array_inv!32257 _keys!1609)))

(assert (=> start!111412 true))

(assert (=> start!111412 tp_is_empty!35853))

(declare-fun array_inv!32258 (array!88613) Bool)

(assert (=> start!111412 (and (array_inv!32258 _values!1337) e!752060)))

(assert (=> start!111412 tp!105575))

(declare-fun b!1317820 () Bool)

(declare-fun e!752058 () Bool)

(assert (=> b!1317820 (= e!752058 tp_is_empty!35853)))

(declare-fun mapIsEmpty!55427 () Bool)

(assert (=> mapIsEmpty!55427 mapRes!55427))

(declare-fun b!1317821 () Bool)

(declare-fun res!874690 () Bool)

(assert (=> b!1317821 (=> (not res!874690) (not e!752062))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88611 (_ BitVec 32)) Bool)

(assert (=> b!1317821 (= res!874690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1317822 () Bool)

(assert (=> b!1317822 (= e!752062 false)))

(declare-fun zeroValue!1279 () V!52907)

(declare-fun minValue!1279 () V!52907)

(declare-fun defaultEntry!1340 () Int)

(declare-fun lt!586357 () Bool)

(declare-datatypes ((tuple2!23316 0))(
  ( (tuple2!23317 (_1!11668 (_ BitVec 64)) (_2!11668 V!52907)) )
))
(declare-datatypes ((List!30506 0))(
  ( (Nil!30503) (Cons!30502 (h!31711 tuple2!23316) (t!44121 List!30506)) )
))
(declare-datatypes ((ListLongMap!20985 0))(
  ( (ListLongMap!20986 (toList!10508 List!30506)) )
))
(declare-fun contains!8599 (ListLongMap!20985 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5464 (array!88611 array!88613 (_ BitVec 32) (_ BitVec 32) V!52907 V!52907 (_ BitVec 32) Int) ListLongMap!20985)

(assert (=> b!1317822 (= lt!586357 (contains!8599 (getCurrentListMap!5464 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun mapNonEmpty!55427 () Bool)

(declare-fun tp!105576 () Bool)

(assert (=> mapNonEmpty!55427 (= mapRes!55427 (and tp!105576 e!752058))))

(declare-fun mapValue!55427 () ValueCell!17028)

(declare-fun mapKey!55427 () (_ BitVec 32))

(declare-fun mapRest!55427 () (Array (_ BitVec 32) ValueCell!17028))

(assert (=> mapNonEmpty!55427 (= (arr!42776 _values!1337) (store mapRest!55427 mapKey!55427 mapValue!55427))))

(assert (= (and start!111412 res!874689) b!1317816))

(assert (= (and b!1317816 res!874686) b!1317821))

(assert (= (and b!1317821 res!874690) b!1317817))

(assert (= (and b!1317817 res!874688) b!1317815))

(assert (= (and b!1317815 res!874687) b!1317822))

(assert (= (and b!1317819 condMapEmpty!55427) mapIsEmpty!55427))

(assert (= (and b!1317819 (not condMapEmpty!55427)) mapNonEmpty!55427))

(get-info :version)

(assert (= (and mapNonEmpty!55427 ((_ is ValueCellFull!17028) mapValue!55427)) b!1317820))

(assert (= (and b!1317819 ((_ is ValueCellFull!17028) mapDefault!55427)) b!1317818))

(assert (= start!111412 b!1317819))

(declare-fun m!1205551 () Bool)

(assert (=> start!111412 m!1205551))

(declare-fun m!1205553 () Bool)

(assert (=> start!111412 m!1205553))

(declare-fun m!1205555 () Bool)

(assert (=> start!111412 m!1205555))

(declare-fun m!1205557 () Bool)

(assert (=> b!1317817 m!1205557))

(declare-fun m!1205559 () Bool)

(assert (=> mapNonEmpty!55427 m!1205559))

(declare-fun m!1205561 () Bool)

(assert (=> b!1317821 m!1205561))

(declare-fun m!1205563 () Bool)

(assert (=> b!1317822 m!1205563))

(assert (=> b!1317822 m!1205563))

(declare-fun m!1205565 () Bool)

(assert (=> b!1317822 m!1205565))

(check-sat (not b!1317822) (not b_next!30033) (not b!1317817) tp_is_empty!35853 (not start!111412) b_and!48263 (not b!1317821) (not mapNonEmpty!55427))
(check-sat b_and!48263 (not b_next!30033))
