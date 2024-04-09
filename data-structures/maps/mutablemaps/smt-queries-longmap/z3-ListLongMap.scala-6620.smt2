; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83722 () Bool)

(assert start!83722)

(declare-fun b!977206 () Bool)

(declare-fun e!550902 () Bool)

(declare-fun e!550903 () Bool)

(declare-fun mapRes!35774 () Bool)

(assert (=> b!977206 (= e!550902 (and e!550903 mapRes!35774))))

(declare-fun condMapEmpty!35774 () Bool)

(declare-datatypes ((V!34979 0))(
  ( (V!34980 (val!11299 Int)) )
))
(declare-datatypes ((ValueCell!10767 0))(
  ( (ValueCellFull!10767 (v!13861 V!34979)) (EmptyCell!10767) )
))
(declare-datatypes ((array!61013 0))(
  ( (array!61014 (arr!29360 (Array (_ BitVec 32) ValueCell!10767)) (size!29840 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61013)

(declare-fun mapDefault!35774 () ValueCell!10767)

(assert (=> b!977206 (= condMapEmpty!35774 (= (arr!29360 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10767)) mapDefault!35774)))))

(declare-fun mapIsEmpty!35774 () Bool)

(assert (=> mapIsEmpty!35774 mapRes!35774))

(declare-fun b!977207 () Bool)

(declare-fun res!654152 () Bool)

(declare-fun e!550900 () Bool)

(assert (=> b!977207 (=> (not res!654152) (not e!550900))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61015 0))(
  ( (array!61016 (arr!29361 (Array (_ BitVec 32) (_ BitVec 64))) (size!29841 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61015)

(declare-fun mask!1948 () (_ BitVec 32))

(assert (=> b!977207 (= res!654152 (and (= (size!29840 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29841 _keys!1544) (size!29840 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!35774 () Bool)

(declare-fun tp!68027 () Bool)

(declare-fun e!550901 () Bool)

(assert (=> mapNonEmpty!35774 (= mapRes!35774 (and tp!68027 e!550901))))

(declare-fun mapValue!35774 () ValueCell!10767)

(declare-fun mapRest!35774 () (Array (_ BitVec 32) ValueCell!10767))

(declare-fun mapKey!35774 () (_ BitVec 32))

(assert (=> mapNonEmpty!35774 (= (arr!29360 _values!1278) (store mapRest!35774 mapKey!35774 mapValue!35774))))

(declare-fun b!977209 () Bool)

(declare-fun tp_is_empty!22497 () Bool)

(assert (=> b!977209 (= e!550903 tp_is_empty!22497)))

(declare-fun b!977210 () Bool)

(assert (=> b!977210 (= e!550901 tp_is_empty!22497)))

(declare-fun b!977211 () Bool)

(assert (=> b!977211 (= e!550900 false)))

(declare-fun lt!433399 () Bool)

(declare-datatypes ((List!20495 0))(
  ( (Nil!20492) (Cons!20491 (h!21653 (_ BitVec 64)) (t!29018 List!20495)) )
))
(declare-fun arrayNoDuplicates!0 (array!61015 (_ BitVec 32) List!20495) Bool)

(assert (=> b!977211 (= lt!433399 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20492))))

(declare-fun b!977208 () Bool)

(declare-fun res!654153 () Bool)

(assert (=> b!977208 (=> (not res!654153) (not e!550900))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61015 (_ BitVec 32)) Bool)

(assert (=> b!977208 (= res!654153 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun res!654151 () Bool)

(assert (=> start!83722 (=> (not res!654151) (not e!550900))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83722 (= res!654151 (validMask!0 mask!1948))))

(assert (=> start!83722 e!550900))

(assert (=> start!83722 true))

(declare-fun array_inv!22603 (array!61013) Bool)

(assert (=> start!83722 (and (array_inv!22603 _values!1278) e!550902)))

(declare-fun array_inv!22604 (array!61015) Bool)

(assert (=> start!83722 (array_inv!22604 _keys!1544)))

(assert (= (and start!83722 res!654151) b!977207))

(assert (= (and b!977207 res!654152) b!977208))

(assert (= (and b!977208 res!654153) b!977211))

(assert (= (and b!977206 condMapEmpty!35774) mapIsEmpty!35774))

(assert (= (and b!977206 (not condMapEmpty!35774)) mapNonEmpty!35774))

(get-info :version)

(assert (= (and mapNonEmpty!35774 ((_ is ValueCellFull!10767) mapValue!35774)) b!977210))

(assert (= (and b!977206 ((_ is ValueCellFull!10767) mapDefault!35774)) b!977209))

(assert (= start!83722 b!977206))

(declare-fun m!904607 () Bool)

(assert (=> mapNonEmpty!35774 m!904607))

(declare-fun m!904609 () Bool)

(assert (=> b!977211 m!904609))

(declare-fun m!904611 () Bool)

(assert (=> b!977208 m!904611))

(declare-fun m!904613 () Bool)

(assert (=> start!83722 m!904613))

(declare-fun m!904615 () Bool)

(assert (=> start!83722 m!904615))

(declare-fun m!904617 () Bool)

(assert (=> start!83722 m!904617))

(check-sat (not b!977211) (not mapNonEmpty!35774) (not b!977208) (not start!83722) tp_is_empty!22497)
(check-sat)
