; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111766 () Bool)

(assert start!111766)

(declare-fun b_free!30387 () Bool)

(declare-fun b_next!30387 () Bool)

(assert (=> start!111766 (= b_free!30387 (not b_next!30387))))

(declare-fun tp!106638 () Bool)

(declare-fun b_and!48935 () Bool)

(assert (=> start!111766 (= tp!106638 b_and!48935)))

(declare-fun b!1323839 () Bool)

(declare-fun res!878802 () Bool)

(declare-fun e!754717 () Bool)

(assert (=> b!1323839 (=> (not res!878802) (not e!754717))))

(declare-datatypes ((array!89285 0))(
  ( (array!89286 (arr!43112 (Array (_ BitVec 32) (_ BitVec 64))) (size!43663 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89285)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89285 (_ BitVec 32)) Bool)

(assert (=> b!1323839 (= res!878802 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1323840 () Bool)

(assert (=> b!1323840 (= e!754717 false)))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53379 0))(
  ( (V!53380 (val!18178 Int)) )
))
(declare-fun zeroValue!1279 () V!53379)

(declare-datatypes ((ValueCell!17205 0))(
  ( (ValueCellFull!17205 (v!20806 V!53379)) (EmptyCell!17205) )
))
(declare-datatypes ((array!89287 0))(
  ( (array!89288 (arr!43113 (Array (_ BitVec 32) ValueCell!17205)) (size!43664 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89287)

(declare-fun minValue!1279 () V!53379)

(declare-fun lt!589345 () Bool)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23584 0))(
  ( (tuple2!23585 (_1!11802 (_ BitVec 64)) (_2!11802 V!53379)) )
))
(declare-datatypes ((List!30757 0))(
  ( (Nil!30754) (Cons!30753 (h!31962 tuple2!23584) (t!44690 List!30757)) )
))
(declare-datatypes ((ListLongMap!21253 0))(
  ( (ListLongMap!21254 (toList!10642 List!30757)) )
))
(declare-fun contains!8733 (ListLongMap!21253 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5579 (array!89285 array!89287 (_ BitVec 32) (_ BitVec 32) V!53379 V!53379 (_ BitVec 32) Int) ListLongMap!21253)

(assert (=> b!1323840 (= lt!589345 (contains!8733 (getCurrentListMap!5579 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1323842 () Bool)

(declare-fun res!878803 () Bool)

(assert (=> b!1323842 (=> (not res!878803) (not e!754717))))

(declare-datatypes ((List!30758 0))(
  ( (Nil!30755) (Cons!30754 (h!31963 (_ BitVec 64)) (t!44691 List!30758)) )
))
(declare-fun arrayNoDuplicates!0 (array!89285 (_ BitVec 32) List!30758) Bool)

(assert (=> b!1323842 (= res!878803 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30755))))

(declare-fun mapNonEmpty!55958 () Bool)

(declare-fun mapRes!55958 () Bool)

(declare-fun tp!106637 () Bool)

(declare-fun e!754716 () Bool)

(assert (=> mapNonEmpty!55958 (= mapRes!55958 (and tp!106637 e!754716))))

(declare-fun mapValue!55958 () ValueCell!17205)

(declare-fun mapKey!55958 () (_ BitVec 32))

(declare-fun mapRest!55958 () (Array (_ BitVec 32) ValueCell!17205))

(assert (=> mapNonEmpty!55958 (= (arr!43113 _values!1337) (store mapRest!55958 mapKey!55958 mapValue!55958))))

(declare-fun b!1323843 () Bool)

(declare-fun res!878800 () Bool)

(assert (=> b!1323843 (=> (not res!878800) (not e!754717))))

(assert (=> b!1323843 (= res!878800 (and (= (size!43664 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43663 _keys!1609) (size!43664 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1323844 () Bool)

(declare-fun e!754715 () Bool)

(declare-fun tp_is_empty!36207 () Bool)

(assert (=> b!1323844 (= e!754715 tp_is_empty!36207)))

(declare-fun mapIsEmpty!55958 () Bool)

(assert (=> mapIsEmpty!55958 mapRes!55958))

(declare-fun res!878801 () Bool)

(assert (=> start!111766 (=> (not res!878801) (not e!754717))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111766 (= res!878801 (validMask!0 mask!2019))))

(assert (=> start!111766 e!754717))

(declare-fun array_inv!32497 (array!89285) Bool)

(assert (=> start!111766 (array_inv!32497 _keys!1609)))

(assert (=> start!111766 true))

(assert (=> start!111766 tp_is_empty!36207))

(declare-fun e!754713 () Bool)

(declare-fun array_inv!32498 (array!89287) Bool)

(assert (=> start!111766 (and (array_inv!32498 _values!1337) e!754713)))

(assert (=> start!111766 tp!106638))

(declare-fun b!1323841 () Bool)

(assert (=> b!1323841 (= e!754716 tp_is_empty!36207)))

(declare-fun b!1323845 () Bool)

(assert (=> b!1323845 (= e!754713 (and e!754715 mapRes!55958))))

(declare-fun condMapEmpty!55958 () Bool)

(declare-fun mapDefault!55958 () ValueCell!17205)

(assert (=> b!1323845 (= condMapEmpty!55958 (= (arr!43113 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17205)) mapDefault!55958)))))

(declare-fun b!1323846 () Bool)

(declare-fun res!878799 () Bool)

(assert (=> b!1323846 (=> (not res!878799) (not e!754717))))

(assert (=> b!1323846 (= res!878799 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43663 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!111766 res!878801) b!1323843))

(assert (= (and b!1323843 res!878800) b!1323839))

(assert (= (and b!1323839 res!878802) b!1323842))

(assert (= (and b!1323842 res!878803) b!1323846))

(assert (= (and b!1323846 res!878799) b!1323840))

(assert (= (and b!1323845 condMapEmpty!55958) mapIsEmpty!55958))

(assert (= (and b!1323845 (not condMapEmpty!55958)) mapNonEmpty!55958))

(get-info :version)

(assert (= (and mapNonEmpty!55958 ((_ is ValueCellFull!17205) mapValue!55958)) b!1323841))

(assert (= (and b!1323845 ((_ is ValueCellFull!17205) mapDefault!55958)) b!1323844))

(assert (= start!111766 b!1323845))

(declare-fun m!1212907 () Bool)

(assert (=> b!1323839 m!1212907))

(declare-fun m!1212909 () Bool)

(assert (=> b!1323840 m!1212909))

(assert (=> b!1323840 m!1212909))

(declare-fun m!1212911 () Bool)

(assert (=> b!1323840 m!1212911))

(declare-fun m!1212913 () Bool)

(assert (=> start!111766 m!1212913))

(declare-fun m!1212915 () Bool)

(assert (=> start!111766 m!1212915))

(declare-fun m!1212917 () Bool)

(assert (=> start!111766 m!1212917))

(declare-fun m!1212919 () Bool)

(assert (=> mapNonEmpty!55958 m!1212919))

(declare-fun m!1212921 () Bool)

(assert (=> b!1323842 m!1212921))

(check-sat (not start!111766) (not b_next!30387) (not mapNonEmpty!55958) (not b!1323839) b_and!48935 tp_is_empty!36207 (not b!1323840) (not b!1323842))
(check-sat b_and!48935 (not b_next!30387))
