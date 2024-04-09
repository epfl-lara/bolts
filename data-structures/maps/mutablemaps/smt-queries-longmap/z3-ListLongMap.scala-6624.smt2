; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83746 () Bool)

(assert start!83746)

(declare-fun b!977422 () Bool)

(declare-fun res!654260 () Bool)

(declare-fun e!551081 () Bool)

(assert (=> b!977422 (=> (not res!654260) (not e!551081))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35011 0))(
  ( (V!35012 (val!11311 Int)) )
))
(declare-datatypes ((ValueCell!10779 0))(
  ( (ValueCellFull!10779 (v!13873 V!35011)) (EmptyCell!10779) )
))
(declare-datatypes ((array!61059 0))(
  ( (array!61060 (arr!29383 (Array (_ BitVec 32) ValueCell!10779)) (size!29863 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61059)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61061 0))(
  ( (array!61062 (arr!29384 (Array (_ BitVec 32) (_ BitVec 64))) (size!29864 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61061)

(assert (=> b!977422 (= res!654260 (and (= (size!29863 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29864 _keys!1544) (size!29863 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!977423 () Bool)

(declare-fun e!551084 () Bool)

(declare-fun e!551083 () Bool)

(declare-fun mapRes!35810 () Bool)

(assert (=> b!977423 (= e!551084 (and e!551083 mapRes!35810))))

(declare-fun condMapEmpty!35810 () Bool)

(declare-fun mapDefault!35810 () ValueCell!10779)

(assert (=> b!977423 (= condMapEmpty!35810 (= (arr!29383 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10779)) mapDefault!35810)))))

(declare-fun mapNonEmpty!35810 () Bool)

(declare-fun tp!68063 () Bool)

(declare-fun e!551082 () Bool)

(assert (=> mapNonEmpty!35810 (= mapRes!35810 (and tp!68063 e!551082))))

(declare-fun mapRest!35810 () (Array (_ BitVec 32) ValueCell!10779))

(declare-fun mapValue!35810 () ValueCell!10779)

(declare-fun mapKey!35810 () (_ BitVec 32))

(assert (=> mapNonEmpty!35810 (= (arr!29383 _values!1278) (store mapRest!35810 mapKey!35810 mapValue!35810))))

(declare-fun b!977424 () Bool)

(declare-fun res!654261 () Bool)

(assert (=> b!977424 (=> (not res!654261) (not e!551081))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61061 (_ BitVec 32)) Bool)

(assert (=> b!977424 (= res!654261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun res!654259 () Bool)

(assert (=> start!83746 (=> (not res!654259) (not e!551081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83746 (= res!654259 (validMask!0 mask!1948))))

(assert (=> start!83746 e!551081))

(assert (=> start!83746 true))

(declare-fun array_inv!22617 (array!61059) Bool)

(assert (=> start!83746 (and (array_inv!22617 _values!1278) e!551084)))

(declare-fun array_inv!22618 (array!61061) Bool)

(assert (=> start!83746 (array_inv!22618 _keys!1544)))

(declare-fun mapIsEmpty!35810 () Bool)

(assert (=> mapIsEmpty!35810 mapRes!35810))

(declare-fun b!977425 () Bool)

(assert (=> b!977425 (= e!551081 false)))

(declare-fun lt!433435 () Bool)

(declare-datatypes ((List!20504 0))(
  ( (Nil!20501) (Cons!20500 (h!21662 (_ BitVec 64)) (t!29027 List!20504)) )
))
(declare-fun arrayNoDuplicates!0 (array!61061 (_ BitVec 32) List!20504) Bool)

(assert (=> b!977425 (= lt!433435 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20501))))

(declare-fun b!977426 () Bool)

(declare-fun tp_is_empty!22521 () Bool)

(assert (=> b!977426 (= e!551083 tp_is_empty!22521)))

(declare-fun b!977427 () Bool)

(assert (=> b!977427 (= e!551082 tp_is_empty!22521)))

(assert (= (and start!83746 res!654259) b!977422))

(assert (= (and b!977422 res!654260) b!977424))

(assert (= (and b!977424 res!654261) b!977425))

(assert (= (and b!977423 condMapEmpty!35810) mapIsEmpty!35810))

(assert (= (and b!977423 (not condMapEmpty!35810)) mapNonEmpty!35810))

(get-info :version)

(assert (= (and mapNonEmpty!35810 ((_ is ValueCellFull!10779) mapValue!35810)) b!977427))

(assert (= (and b!977423 ((_ is ValueCellFull!10779) mapDefault!35810)) b!977426))

(assert (= start!83746 b!977423))

(declare-fun m!904751 () Bool)

(assert (=> mapNonEmpty!35810 m!904751))

(declare-fun m!904753 () Bool)

(assert (=> b!977424 m!904753))

(declare-fun m!904755 () Bool)

(assert (=> start!83746 m!904755))

(declare-fun m!904757 () Bool)

(assert (=> start!83746 m!904757))

(declare-fun m!904759 () Bool)

(assert (=> start!83746 m!904759))

(declare-fun m!904761 () Bool)

(assert (=> b!977425 m!904761))

(check-sat (not b!977424) tp_is_empty!22521 (not b!977425) (not mapNonEmpty!35810) (not start!83746))
(check-sat)
