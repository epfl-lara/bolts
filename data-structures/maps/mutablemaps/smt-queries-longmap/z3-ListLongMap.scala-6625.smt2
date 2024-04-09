; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83752 () Bool)

(assert start!83752)

(declare-fun b!977476 () Bool)

(declare-fun res!654288 () Bool)

(declare-fun e!551126 () Bool)

(assert (=> b!977476 (=> (not res!654288) (not e!551126))))

(declare-datatypes ((array!61071 0))(
  ( (array!61072 (arr!29389 (Array (_ BitVec 32) (_ BitVec 64))) (size!29869 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61071)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61071 (_ BitVec 32)) Bool)

(assert (=> b!977476 (= res!654288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!977477 () Bool)

(declare-fun e!551129 () Bool)

(declare-fun e!551125 () Bool)

(declare-fun mapRes!35819 () Bool)

(assert (=> b!977477 (= e!551129 (and e!551125 mapRes!35819))))

(declare-fun condMapEmpty!35819 () Bool)

(declare-datatypes ((V!35019 0))(
  ( (V!35020 (val!11314 Int)) )
))
(declare-datatypes ((ValueCell!10782 0))(
  ( (ValueCellFull!10782 (v!13876 V!35019)) (EmptyCell!10782) )
))
(declare-datatypes ((array!61073 0))(
  ( (array!61074 (arr!29390 (Array (_ BitVec 32) ValueCell!10782)) (size!29870 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61073)

(declare-fun mapDefault!35819 () ValueCell!10782)

(assert (=> b!977477 (= condMapEmpty!35819 (= (arr!29390 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10782)) mapDefault!35819)))))

(declare-fun b!977478 () Bool)

(declare-fun e!551128 () Bool)

(declare-fun tp_is_empty!22527 () Bool)

(assert (=> b!977478 (= e!551128 tp_is_empty!22527)))

(declare-fun mapNonEmpty!35819 () Bool)

(declare-fun tp!68072 () Bool)

(assert (=> mapNonEmpty!35819 (= mapRes!35819 (and tp!68072 e!551128))))

(declare-fun mapRest!35819 () (Array (_ BitVec 32) ValueCell!10782))

(declare-fun mapKey!35819 () (_ BitVec 32))

(declare-fun mapValue!35819 () ValueCell!10782)

(assert (=> mapNonEmpty!35819 (= (arr!29390 _values!1278) (store mapRest!35819 mapKey!35819 mapValue!35819))))

(declare-fun b!977479 () Bool)

(assert (=> b!977479 (= e!551125 tp_is_empty!22527)))

(declare-fun b!977480 () Bool)

(assert (=> b!977480 (= e!551126 false)))

(declare-fun lt!433444 () Bool)

(declare-datatypes ((List!20507 0))(
  ( (Nil!20504) (Cons!20503 (h!21665 (_ BitVec 64)) (t!29030 List!20507)) )
))
(declare-fun arrayNoDuplicates!0 (array!61071 (_ BitVec 32) List!20507) Bool)

(assert (=> b!977480 (= lt!433444 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20504))))

(declare-fun b!977481 () Bool)

(declare-fun res!654286 () Bool)

(assert (=> b!977481 (=> (not res!654286) (not e!551126))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!977481 (= res!654286 (and (= (size!29870 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29869 _keys!1544) (size!29870 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!35819 () Bool)

(assert (=> mapIsEmpty!35819 mapRes!35819))

(declare-fun res!654287 () Bool)

(assert (=> start!83752 (=> (not res!654287) (not e!551126))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83752 (= res!654287 (validMask!0 mask!1948))))

(assert (=> start!83752 e!551126))

(assert (=> start!83752 true))

(declare-fun array_inv!22619 (array!61073) Bool)

(assert (=> start!83752 (and (array_inv!22619 _values!1278) e!551129)))

(declare-fun array_inv!22620 (array!61071) Bool)

(assert (=> start!83752 (array_inv!22620 _keys!1544)))

(assert (= (and start!83752 res!654287) b!977481))

(assert (= (and b!977481 res!654286) b!977476))

(assert (= (and b!977476 res!654288) b!977480))

(assert (= (and b!977477 condMapEmpty!35819) mapIsEmpty!35819))

(assert (= (and b!977477 (not condMapEmpty!35819)) mapNonEmpty!35819))

(get-info :version)

(assert (= (and mapNonEmpty!35819 ((_ is ValueCellFull!10782) mapValue!35819)) b!977478))

(assert (= (and b!977477 ((_ is ValueCellFull!10782) mapDefault!35819)) b!977479))

(assert (= start!83752 b!977477))

(declare-fun m!904787 () Bool)

(assert (=> b!977476 m!904787))

(declare-fun m!904789 () Bool)

(assert (=> mapNonEmpty!35819 m!904789))

(declare-fun m!904791 () Bool)

(assert (=> b!977480 m!904791))

(declare-fun m!904793 () Bool)

(assert (=> start!83752 m!904793))

(declare-fun m!904795 () Bool)

(assert (=> start!83752 m!904795))

(declare-fun m!904797 () Bool)

(assert (=> start!83752 m!904797))

(check-sat (not start!83752) tp_is_empty!22527 (not b!977476) (not b!977480) (not mapNonEmpty!35819))
(check-sat)
