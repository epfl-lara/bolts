; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83968 () Bool)

(assert start!83968)

(declare-fun res!656493 () Bool)

(declare-fun e!552908 () Bool)

(assert (=> start!83968 (=> (not res!656493) (not e!552908))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83968 (= res!656493 (validMask!0 mask!1948))))

(assert (=> start!83968 e!552908))

(assert (=> start!83968 true))

(declare-datatypes ((V!35307 0))(
  ( (V!35308 (val!11422 Int)) )
))
(declare-datatypes ((ValueCell!10890 0))(
  ( (ValueCellFull!10890 (v!13984 V!35307)) (EmptyCell!10890) )
))
(declare-datatypes ((array!61487 0))(
  ( (array!61488 (arr!29597 (Array (_ BitVec 32) ValueCell!10890)) (size!30077 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61487)

(declare-fun e!552911 () Bool)

(declare-fun array_inv!22769 (array!61487) Bool)

(assert (=> start!83968 (and (array_inv!22769 _values!1278) e!552911)))

(declare-datatypes ((array!61489 0))(
  ( (array!61490 (arr!29598 (Array (_ BitVec 32) (_ BitVec 64))) (size!30078 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61489)

(declare-fun array_inv!22770 (array!61489) Bool)

(assert (=> start!83968 (array_inv!22770 _keys!1544)))

(declare-fun mapNonEmpty!36143 () Bool)

(declare-fun mapRes!36143 () Bool)

(declare-fun tp!68657 () Bool)

(declare-fun e!552907 () Bool)

(assert (=> mapNonEmpty!36143 (= mapRes!36143 (and tp!68657 e!552907))))

(declare-fun mapValue!36143 () ValueCell!10890)

(declare-fun mapKey!36143 () (_ BitVec 32))

(declare-fun mapRest!36143 () (Array (_ BitVec 32) ValueCell!10890))

(assert (=> mapNonEmpty!36143 (= (arr!29597 _values!1278) (store mapRest!36143 mapKey!36143 mapValue!36143))))

(declare-fun b!980821 () Bool)

(declare-fun e!552909 () Bool)

(declare-fun tp_is_empty!22743 () Bool)

(assert (=> b!980821 (= e!552909 tp_is_empty!22743)))

(declare-fun b!980822 () Bool)

(assert (=> b!980822 (= e!552908 false)))

(declare-fun lt!435577 () Bool)

(declare-datatypes ((List!20650 0))(
  ( (Nil!20647) (Cons!20646 (h!21808 (_ BitVec 64)) (t!29341 List!20650)) )
))
(declare-fun arrayNoDuplicates!0 (array!61489 (_ BitVec 32) List!20650) Bool)

(assert (=> b!980822 (= lt!435577 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20647))))

(declare-fun b!980823 () Bool)

(assert (=> b!980823 (= e!552911 (and e!552909 mapRes!36143))))

(declare-fun condMapEmpty!36143 () Bool)

(declare-fun mapDefault!36143 () ValueCell!10890)

(assert (=> b!980823 (= condMapEmpty!36143 (= (arr!29597 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10890)) mapDefault!36143)))))

(declare-fun b!980824 () Bool)

(declare-fun res!656492 () Bool)

(assert (=> b!980824 (=> (not res!656492) (not e!552908))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!980824 (= res!656492 (and (= (size!30077 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30078 _keys!1544) (size!30077 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!980825 () Bool)

(assert (=> b!980825 (= e!552907 tp_is_empty!22743)))

(declare-fun b!980826 () Bool)

(declare-fun res!656491 () Bool)

(assert (=> b!980826 (=> (not res!656491) (not e!552908))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61489 (_ BitVec 32)) Bool)

(assert (=> b!980826 (= res!656491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36143 () Bool)

(assert (=> mapIsEmpty!36143 mapRes!36143))

(assert (= (and start!83968 res!656493) b!980824))

(assert (= (and b!980824 res!656492) b!980826))

(assert (= (and b!980826 res!656491) b!980822))

(assert (= (and b!980823 condMapEmpty!36143) mapIsEmpty!36143))

(assert (= (and b!980823 (not condMapEmpty!36143)) mapNonEmpty!36143))

(get-info :version)

(assert (= (and mapNonEmpty!36143 ((_ is ValueCellFull!10890) mapValue!36143)) b!980825))

(assert (= (and b!980823 ((_ is ValueCellFull!10890) mapDefault!36143)) b!980821))

(assert (= start!83968 b!980823))

(declare-fun m!908459 () Bool)

(assert (=> start!83968 m!908459))

(declare-fun m!908461 () Bool)

(assert (=> start!83968 m!908461))

(declare-fun m!908463 () Bool)

(assert (=> start!83968 m!908463))

(declare-fun m!908465 () Bool)

(assert (=> mapNonEmpty!36143 m!908465))

(declare-fun m!908467 () Bool)

(assert (=> b!980822 m!908467))

(declare-fun m!908469 () Bool)

(assert (=> b!980826 m!908469))

(check-sat tp_is_empty!22743 (not mapNonEmpty!36143) (not start!83968) (not b!980822) (not b!980826))
(check-sat)
