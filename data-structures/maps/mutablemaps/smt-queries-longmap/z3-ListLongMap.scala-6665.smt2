; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83992 () Bool)

(assert start!83992)

(declare-fun b!981037 () Bool)

(declare-fun e!553088 () Bool)

(declare-fun tp_is_empty!22767 () Bool)

(assert (=> b!981037 (= e!553088 tp_is_empty!22767)))

(declare-fun b!981038 () Bool)

(declare-fun e!553090 () Bool)

(assert (=> b!981038 (= e!553090 tp_is_empty!22767)))

(declare-fun b!981039 () Bool)

(declare-fun res!656600 () Bool)

(declare-fun e!553087 () Bool)

(assert (=> b!981039 (=> (not res!656600) (not e!553087))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35339 0))(
  ( (V!35340 (val!11434 Int)) )
))
(declare-datatypes ((ValueCell!10902 0))(
  ( (ValueCellFull!10902 (v!13996 V!35339)) (EmptyCell!10902) )
))
(declare-datatypes ((array!61531 0))(
  ( (array!61532 (arr!29619 (Array (_ BitVec 32) ValueCell!10902)) (size!30099 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61531)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61533 0))(
  ( (array!61534 (arr!29620 (Array (_ BitVec 32) (_ BitVec 64))) (size!30100 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61533)

(assert (=> b!981039 (= res!656600 (and (= (size!30099 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30100 _keys!1544) (size!30099 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!981040 () Bool)

(declare-fun e!553089 () Bool)

(declare-fun mapRes!36179 () Bool)

(assert (=> b!981040 (= e!553089 (and e!553090 mapRes!36179))))

(declare-fun condMapEmpty!36179 () Bool)

(declare-fun mapDefault!36179 () ValueCell!10902)

(assert (=> b!981040 (= condMapEmpty!36179 (= (arr!29619 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10902)) mapDefault!36179)))))

(declare-fun mapIsEmpty!36179 () Bool)

(assert (=> mapIsEmpty!36179 mapRes!36179))

(declare-fun res!656599 () Bool)

(assert (=> start!83992 (=> (not res!656599) (not e!553087))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83992 (= res!656599 (validMask!0 mask!1948))))

(assert (=> start!83992 e!553087))

(assert (=> start!83992 true))

(declare-fun array_inv!22781 (array!61531) Bool)

(assert (=> start!83992 (and (array_inv!22781 _values!1278) e!553089)))

(declare-fun array_inv!22782 (array!61533) Bool)

(assert (=> start!83992 (array_inv!22782 _keys!1544)))

(declare-fun b!981041 () Bool)

(assert (=> b!981041 (= e!553087 false)))

(declare-fun lt!435613 () Bool)

(declare-datatypes ((List!20656 0))(
  ( (Nil!20653) (Cons!20652 (h!21814 (_ BitVec 64)) (t!29347 List!20656)) )
))
(declare-fun arrayNoDuplicates!0 (array!61533 (_ BitVec 32) List!20656) Bool)

(assert (=> b!981041 (= lt!435613 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20653))))

(declare-fun mapNonEmpty!36179 () Bool)

(declare-fun tp!68693 () Bool)

(assert (=> mapNonEmpty!36179 (= mapRes!36179 (and tp!68693 e!553088))))

(declare-fun mapValue!36179 () ValueCell!10902)

(declare-fun mapRest!36179 () (Array (_ BitVec 32) ValueCell!10902))

(declare-fun mapKey!36179 () (_ BitVec 32))

(assert (=> mapNonEmpty!36179 (= (arr!29619 _values!1278) (store mapRest!36179 mapKey!36179 mapValue!36179))))

(declare-fun b!981042 () Bool)

(declare-fun res!656601 () Bool)

(assert (=> b!981042 (=> (not res!656601) (not e!553087))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61533 (_ BitVec 32)) Bool)

(assert (=> b!981042 (= res!656601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(assert (= (and start!83992 res!656599) b!981039))

(assert (= (and b!981039 res!656600) b!981042))

(assert (= (and b!981042 res!656601) b!981041))

(assert (= (and b!981040 condMapEmpty!36179) mapIsEmpty!36179))

(assert (= (and b!981040 (not condMapEmpty!36179)) mapNonEmpty!36179))

(get-info :version)

(assert (= (and mapNonEmpty!36179 ((_ is ValueCellFull!10902) mapValue!36179)) b!981037))

(assert (= (and b!981040 ((_ is ValueCellFull!10902) mapDefault!36179)) b!981038))

(assert (= start!83992 b!981040))

(declare-fun m!908603 () Bool)

(assert (=> start!83992 m!908603))

(declare-fun m!908605 () Bool)

(assert (=> start!83992 m!908605))

(declare-fun m!908607 () Bool)

(assert (=> start!83992 m!908607))

(declare-fun m!908609 () Bool)

(assert (=> b!981041 m!908609))

(declare-fun m!908611 () Bool)

(assert (=> mapNonEmpty!36179 m!908611))

(declare-fun m!908613 () Bool)

(assert (=> b!981042 m!908613))

(check-sat (not b!981042) tp_is_empty!22767 (not start!83992) (not b!981041) (not mapNonEmpty!36179))
(check-sat)
