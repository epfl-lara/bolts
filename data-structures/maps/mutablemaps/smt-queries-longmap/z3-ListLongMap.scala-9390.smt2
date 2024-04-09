; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111814 () Bool)

(assert start!111814)

(declare-fun b_free!30435 () Bool)

(declare-fun b_next!30435 () Bool)

(assert (=> start!111814 (= b_free!30435 (not b_next!30435))))

(declare-fun tp!106782 () Bool)

(declare-fun b_and!48983 () Bool)

(assert (=> start!111814 (= tp!106782 b_and!48983)))

(declare-fun b!1324442 () Bool)

(declare-fun e!755074 () Bool)

(declare-fun tp_is_empty!36255 () Bool)

(assert (=> b!1324442 (= e!755074 tp_is_empty!36255)))

(declare-fun b!1324443 () Bool)

(declare-fun res!879188 () Bool)

(declare-fun e!755075 () Bool)

(assert (=> b!1324443 (=> (not res!879188) (not e!755075))))

(declare-datatypes ((array!89379 0))(
  ( (array!89380 (arr!43159 (Array (_ BitVec 32) (_ BitVec 64))) (size!43710 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89379)

(declare-datatypes ((List!30794 0))(
  ( (Nil!30791) (Cons!30790 (h!31999 (_ BitVec 64)) (t!44727 List!30794)) )
))
(declare-fun arrayNoDuplicates!0 (array!89379 (_ BitVec 32) List!30794) Bool)

(assert (=> b!1324443 (= res!879188 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30791))))

(declare-fun res!879189 () Bool)

(assert (=> start!111814 (=> (not res!879189) (not e!755075))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111814 (= res!879189 (validMask!0 mask!2019))))

(assert (=> start!111814 e!755075))

(declare-fun array_inv!32521 (array!89379) Bool)

(assert (=> start!111814 (array_inv!32521 _keys!1609)))

(assert (=> start!111814 true))

(assert (=> start!111814 tp_is_empty!36255))

(declare-datatypes ((V!53443 0))(
  ( (V!53444 (val!18202 Int)) )
))
(declare-datatypes ((ValueCell!17229 0))(
  ( (ValueCellFull!17229 (v!20830 V!53443)) (EmptyCell!17229) )
))
(declare-datatypes ((array!89381 0))(
  ( (array!89382 (arr!43160 (Array (_ BitVec 32) ValueCell!17229)) (size!43711 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89381)

(declare-fun e!755077 () Bool)

(declare-fun array_inv!32522 (array!89381) Bool)

(assert (=> start!111814 (and (array_inv!32522 _values!1337) e!755077)))

(assert (=> start!111814 tp!106782))

(declare-fun b!1324444 () Bool)

(declare-fun e!755076 () Bool)

(assert (=> b!1324444 (= e!755076 tp_is_empty!36255)))

(declare-fun b!1324445 () Bool)

(assert (=> b!1324445 (= e!755075 false)))

(declare-fun lt!589408 () Bool)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53443)

(declare-fun minValue!1279 () V!53443)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23622 0))(
  ( (tuple2!23623 (_1!11821 (_ BitVec 64)) (_2!11821 V!53443)) )
))
(declare-datatypes ((List!30795 0))(
  ( (Nil!30792) (Cons!30791 (h!32000 tuple2!23622) (t!44728 List!30795)) )
))
(declare-datatypes ((ListLongMap!21291 0))(
  ( (ListLongMap!21292 (toList!10661 List!30795)) )
))
(declare-fun contains!8752 (ListLongMap!21291 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5598 (array!89379 array!89381 (_ BitVec 32) (_ BitVec 32) V!53443 V!53443 (_ BitVec 32) Int) ListLongMap!21291)

(assert (=> b!1324445 (= lt!589408 (contains!8752 (getCurrentListMap!5598 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1324446 () Bool)

(declare-fun mapRes!56030 () Bool)

(assert (=> b!1324446 (= e!755077 (and e!755074 mapRes!56030))))

(declare-fun condMapEmpty!56030 () Bool)

(declare-fun mapDefault!56030 () ValueCell!17229)

(assert (=> b!1324446 (= condMapEmpty!56030 (= (arr!43160 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17229)) mapDefault!56030)))))

(declare-fun mapNonEmpty!56030 () Bool)

(declare-fun tp!106781 () Bool)

(assert (=> mapNonEmpty!56030 (= mapRes!56030 (and tp!106781 e!755076))))

(declare-fun mapRest!56030 () (Array (_ BitVec 32) ValueCell!17229))

(declare-fun mapValue!56030 () ValueCell!17229)

(declare-fun mapKey!56030 () (_ BitVec 32))

(assert (=> mapNonEmpty!56030 (= (arr!43160 _values!1337) (store mapRest!56030 mapKey!56030 mapValue!56030))))

(declare-fun b!1324447 () Bool)

(declare-fun res!879190 () Bool)

(assert (=> b!1324447 (=> (not res!879190) (not e!755075))))

(assert (=> b!1324447 (= res!879190 (and (= (size!43711 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43710 _keys!1609) (size!43711 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1324448 () Bool)

(declare-fun res!879187 () Bool)

(assert (=> b!1324448 (=> (not res!879187) (not e!755075))))

(assert (=> b!1324448 (= res!879187 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43710 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1324449 () Bool)

(declare-fun res!879186 () Bool)

(assert (=> b!1324449 (=> (not res!879186) (not e!755075))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89379 (_ BitVec 32)) Bool)

(assert (=> b!1324449 (= res!879186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun mapIsEmpty!56030 () Bool)

(assert (=> mapIsEmpty!56030 mapRes!56030))

(assert (= (and start!111814 res!879189) b!1324447))

(assert (= (and b!1324447 res!879190) b!1324449))

(assert (= (and b!1324449 res!879186) b!1324443))

(assert (= (and b!1324443 res!879188) b!1324448))

(assert (= (and b!1324448 res!879187) b!1324445))

(assert (= (and b!1324446 condMapEmpty!56030) mapIsEmpty!56030))

(assert (= (and b!1324446 (not condMapEmpty!56030)) mapNonEmpty!56030))

(get-info :version)

(assert (= (and mapNonEmpty!56030 ((_ is ValueCellFull!17229) mapValue!56030)) b!1324444))

(assert (= (and b!1324446 ((_ is ValueCellFull!17229) mapDefault!56030)) b!1324442))

(assert (= start!111814 b!1324446))

(declare-fun m!1213303 () Bool)

(assert (=> mapNonEmpty!56030 m!1213303))

(declare-fun m!1213305 () Bool)

(assert (=> b!1324449 m!1213305))

(declare-fun m!1213307 () Bool)

(assert (=> b!1324445 m!1213307))

(assert (=> b!1324445 m!1213307))

(declare-fun m!1213309 () Bool)

(assert (=> b!1324445 m!1213309))

(declare-fun m!1213311 () Bool)

(assert (=> start!111814 m!1213311))

(declare-fun m!1213313 () Bool)

(assert (=> start!111814 m!1213313))

(declare-fun m!1213315 () Bool)

(assert (=> start!111814 m!1213315))

(declare-fun m!1213317 () Bool)

(assert (=> b!1324443 m!1213317))

(check-sat (not b!1324445) (not mapNonEmpty!56030) (not b!1324443) tp_is_empty!36255 b_and!48983 (not start!111814) (not b!1324449) (not b_next!30435))
(check-sat b_and!48983 (not b_next!30435))
