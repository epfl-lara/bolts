; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83998 () Bool)

(assert start!83998)

(declare-fun b!981106 () Bool)

(declare-fun res!656645 () Bool)

(declare-fun e!553135 () Bool)

(assert (=> b!981106 (=> (not res!656645) (not e!553135))))

(declare-datatypes ((array!61541 0))(
  ( (array!61542 (arr!29624 (Array (_ BitVec 32) (_ BitVec 64))) (size!30104 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61541)

(declare-datatypes ((List!20658 0))(
  ( (Nil!20655) (Cons!20654 (h!21816 (_ BitVec 64)) (t!29349 List!20658)) )
))
(declare-fun arrayNoDuplicates!0 (array!61541 (_ BitVec 32) List!20658) Bool)

(assert (=> b!981106 (= res!656645 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20655))))

(declare-fun b!981107 () Bool)

(declare-fun res!656642 () Bool)

(assert (=> b!981107 (=> (not res!656642) (not e!553135))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61541 (_ BitVec 32)) Bool)

(assert (=> b!981107 (= res!656642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!981108 () Bool)

(declare-fun e!553134 () Bool)

(declare-fun tp_is_empty!22773 () Bool)

(assert (=> b!981108 (= e!553134 tp_is_empty!22773)))

(declare-fun b!981109 () Bool)

(declare-fun e!553132 () Bool)

(assert (=> b!981109 (= e!553132 tp_is_empty!22773)))

(declare-fun res!656644 () Bool)

(assert (=> start!83998 (=> (not res!656644) (not e!553135))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83998 (= res!656644 (validMask!0 mask!1948))))

(assert (=> start!83998 e!553135))

(assert (=> start!83998 true))

(declare-datatypes ((V!35347 0))(
  ( (V!35348 (val!11437 Int)) )
))
(declare-datatypes ((ValueCell!10905 0))(
  ( (ValueCellFull!10905 (v!13999 V!35347)) (EmptyCell!10905) )
))
(declare-datatypes ((array!61543 0))(
  ( (array!61544 (arr!29625 (Array (_ BitVec 32) ValueCell!10905)) (size!30105 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61543)

(declare-fun e!553136 () Bool)

(declare-fun array_inv!22785 (array!61543) Bool)

(assert (=> start!83998 (and (array_inv!22785 _values!1278) e!553136)))

(declare-fun array_inv!22786 (array!61541) Bool)

(assert (=> start!83998 (array_inv!22786 _keys!1544)))

(declare-fun mapNonEmpty!36188 () Bool)

(declare-fun mapRes!36188 () Bool)

(declare-fun tp!68702 () Bool)

(assert (=> mapNonEmpty!36188 (= mapRes!36188 (and tp!68702 e!553132))))

(declare-fun mapRest!36188 () (Array (_ BitVec 32) ValueCell!10905))

(declare-fun mapKey!36188 () (_ BitVec 32))

(declare-fun mapValue!36188 () ValueCell!10905)

(assert (=> mapNonEmpty!36188 (= (arr!29625 _values!1278) (store mapRest!36188 mapKey!36188 mapValue!36188))))

(declare-fun b!981110 () Bool)

(assert (=> b!981110 (= e!553136 (and e!553134 mapRes!36188))))

(declare-fun condMapEmpty!36188 () Bool)

(declare-fun mapDefault!36188 () ValueCell!10905)

(assert (=> b!981110 (= condMapEmpty!36188 (= (arr!29625 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10905)) mapDefault!36188)))))

(declare-fun b!981111 () Bool)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!981111 (= e!553135 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000)))))

(declare-fun b!981112 () Bool)

(declare-fun res!656643 () Bool)

(assert (=> b!981112 (=> (not res!656643) (not e!553135))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!981112 (= res!656643 (validKeyInArray!0 (select (arr!29624 _keys!1544) from!1932)))))

(declare-fun mapIsEmpty!36188 () Bool)

(assert (=> mapIsEmpty!36188 mapRes!36188))

(declare-fun b!981113 () Bool)

(declare-fun res!656641 () Bool)

(assert (=> b!981113 (=> (not res!656641) (not e!553135))))

(assert (=> b!981113 (= res!656641 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30104 _keys!1544))))))

(declare-fun b!981114 () Bool)

(declare-fun res!656646 () Bool)

(assert (=> b!981114 (=> (not res!656646) (not e!553135))))

(assert (=> b!981114 (= res!656646 (and (= (size!30105 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30104 _keys!1544) (size!30105 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(assert (= (and start!83998 res!656644) b!981114))

(assert (= (and b!981114 res!656646) b!981107))

(assert (= (and b!981107 res!656642) b!981106))

(assert (= (and b!981106 res!656645) b!981113))

(assert (= (and b!981113 res!656641) b!981112))

(assert (= (and b!981112 res!656643) b!981111))

(assert (= (and b!981110 condMapEmpty!36188) mapIsEmpty!36188))

(assert (= (and b!981110 (not condMapEmpty!36188)) mapNonEmpty!36188))

(get-info :version)

(assert (= (and mapNonEmpty!36188 ((_ is ValueCellFull!10905) mapValue!36188)) b!981109))

(assert (= (and b!981110 ((_ is ValueCellFull!10905) mapDefault!36188)) b!981108))

(assert (= start!83998 b!981110))

(declare-fun m!908643 () Bool)

(assert (=> mapNonEmpty!36188 m!908643))

(declare-fun m!908645 () Bool)

(assert (=> b!981107 m!908645))

(declare-fun m!908647 () Bool)

(assert (=> b!981106 m!908647))

(declare-fun m!908649 () Bool)

(assert (=> start!83998 m!908649))

(declare-fun m!908651 () Bool)

(assert (=> start!83998 m!908651))

(declare-fun m!908653 () Bool)

(assert (=> start!83998 m!908653))

(declare-fun m!908655 () Bool)

(assert (=> b!981112 m!908655))

(assert (=> b!981112 m!908655))

(declare-fun m!908657 () Bool)

(assert (=> b!981112 m!908657))

(check-sat (not mapNonEmpty!36188) (not b!981106) (not start!83998) tp_is_empty!22773 (not b!981107) (not b!981112))
(check-sat)
