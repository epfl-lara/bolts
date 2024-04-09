; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83734 () Bool)

(assert start!83734)

(declare-fun b!977314 () Bool)

(declare-fun e!550994 () Bool)

(declare-fun tp_is_empty!22509 () Bool)

(assert (=> b!977314 (= e!550994 tp_is_empty!22509)))

(declare-fun mapNonEmpty!35792 () Bool)

(declare-fun mapRes!35792 () Bool)

(declare-fun tp!68045 () Bool)

(assert (=> mapNonEmpty!35792 (= mapRes!35792 (and tp!68045 e!550994))))

(declare-datatypes ((V!34995 0))(
  ( (V!34996 (val!11305 Int)) )
))
(declare-datatypes ((ValueCell!10773 0))(
  ( (ValueCellFull!10773 (v!13867 V!34995)) (EmptyCell!10773) )
))
(declare-fun mapRest!35792 () (Array (_ BitVec 32) ValueCell!10773))

(declare-fun mapValue!35792 () ValueCell!10773)

(declare-fun mapKey!35792 () (_ BitVec 32))

(declare-datatypes ((array!61035 0))(
  ( (array!61036 (arr!29371 (Array (_ BitVec 32) ValueCell!10773)) (size!29851 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61035)

(assert (=> mapNonEmpty!35792 (= (arr!29371 _values!1278) (store mapRest!35792 mapKey!35792 mapValue!35792))))

(declare-fun res!654207 () Bool)

(declare-fun e!550992 () Bool)

(assert (=> start!83734 (=> (not res!654207) (not e!550992))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83734 (= res!654207 (validMask!0 mask!1948))))

(assert (=> start!83734 e!550992))

(assert (=> start!83734 true))

(declare-fun e!550993 () Bool)

(declare-fun array_inv!22609 (array!61035) Bool)

(assert (=> start!83734 (and (array_inv!22609 _values!1278) e!550993)))

(declare-datatypes ((array!61037 0))(
  ( (array!61038 (arr!29372 (Array (_ BitVec 32) (_ BitVec 64))) (size!29852 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61037)

(declare-fun array_inv!22610 (array!61037) Bool)

(assert (=> start!83734 (array_inv!22610 _keys!1544)))

(declare-fun b!977315 () Bool)

(assert (=> b!977315 (= e!550992 false)))

(declare-fun lt!433417 () Bool)

(declare-datatypes ((List!20500 0))(
  ( (Nil!20497) (Cons!20496 (h!21658 (_ BitVec 64)) (t!29023 List!20500)) )
))
(declare-fun arrayNoDuplicates!0 (array!61037 (_ BitVec 32) List!20500) Bool)

(assert (=> b!977315 (= lt!433417 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20497))))

(declare-fun mapIsEmpty!35792 () Bool)

(assert (=> mapIsEmpty!35792 mapRes!35792))

(declare-fun b!977316 () Bool)

(declare-fun res!654206 () Bool)

(assert (=> b!977316 (=> (not res!654206) (not e!550992))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61037 (_ BitVec 32)) Bool)

(assert (=> b!977316 (= res!654206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!977317 () Bool)

(declare-fun e!550990 () Bool)

(assert (=> b!977317 (= e!550993 (and e!550990 mapRes!35792))))

(declare-fun condMapEmpty!35792 () Bool)

(declare-fun mapDefault!35792 () ValueCell!10773)

(assert (=> b!977317 (= condMapEmpty!35792 (= (arr!29371 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10773)) mapDefault!35792)))))

(declare-fun b!977318 () Bool)

(declare-fun res!654205 () Bool)

(assert (=> b!977318 (=> (not res!654205) (not e!550992))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!977318 (= res!654205 (and (= (size!29851 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29852 _keys!1544) (size!29851 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!977319 () Bool)

(assert (=> b!977319 (= e!550990 tp_is_empty!22509)))

(assert (= (and start!83734 res!654207) b!977318))

(assert (= (and b!977318 res!654205) b!977316))

(assert (= (and b!977316 res!654206) b!977315))

(assert (= (and b!977317 condMapEmpty!35792) mapIsEmpty!35792))

(assert (= (and b!977317 (not condMapEmpty!35792)) mapNonEmpty!35792))

(get-info :version)

(assert (= (and mapNonEmpty!35792 ((_ is ValueCellFull!10773) mapValue!35792)) b!977314))

(assert (= (and b!977317 ((_ is ValueCellFull!10773) mapDefault!35792)) b!977319))

(assert (= start!83734 b!977317))

(declare-fun m!904679 () Bool)

(assert (=> mapNonEmpty!35792 m!904679))

(declare-fun m!904681 () Bool)

(assert (=> start!83734 m!904681))

(declare-fun m!904683 () Bool)

(assert (=> start!83734 m!904683))

(declare-fun m!904685 () Bool)

(assert (=> start!83734 m!904685))

(declare-fun m!904687 () Bool)

(assert (=> b!977315 m!904687))

(declare-fun m!904689 () Bool)

(assert (=> b!977316 m!904689))

(check-sat (not b!977315) (not start!83734) (not mapNonEmpty!35792) tp_is_empty!22509 (not b!977316))
(check-sat)
