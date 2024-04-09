; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83764 () Bool)

(assert start!83764)

(declare-fun b!977585 () Bool)

(declare-fun e!551217 () Bool)

(assert (=> b!977585 (= e!551217 false)))

(declare-fun lt!433462 () Bool)

(declare-datatypes ((array!61095 0))(
  ( (array!61096 (arr!29401 (Array (_ BitVec 32) (_ BitVec 64))) (size!29881 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61095)

(declare-datatypes ((List!20512 0))(
  ( (Nil!20509) (Cons!20508 (h!21670 (_ BitVec 64)) (t!29035 List!20512)) )
))
(declare-fun arrayNoDuplicates!0 (array!61095 (_ BitVec 32) List!20512) Bool)

(assert (=> b!977585 (= lt!433462 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20509))))

(declare-fun mapNonEmpty!35837 () Bool)

(declare-fun mapRes!35837 () Bool)

(declare-fun tp!68090 () Bool)

(declare-fun e!551216 () Bool)

(assert (=> mapNonEmpty!35837 (= mapRes!35837 (and tp!68090 e!551216))))

(declare-datatypes ((V!35035 0))(
  ( (V!35036 (val!11320 Int)) )
))
(declare-datatypes ((ValueCell!10788 0))(
  ( (ValueCellFull!10788 (v!13882 V!35035)) (EmptyCell!10788) )
))
(declare-fun mapRest!35837 () (Array (_ BitVec 32) ValueCell!10788))

(declare-datatypes ((array!61097 0))(
  ( (array!61098 (arr!29402 (Array (_ BitVec 32) ValueCell!10788)) (size!29882 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61097)

(declare-fun mapValue!35837 () ValueCell!10788)

(declare-fun mapKey!35837 () (_ BitVec 32))

(assert (=> mapNonEmpty!35837 (= (arr!29402 _values!1278) (store mapRest!35837 mapKey!35837 mapValue!35837))))

(declare-fun b!977586 () Bool)

(declare-fun res!654341 () Bool)

(assert (=> b!977586 (=> (not res!654341) (not e!551217))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!977586 (= res!654341 (and (= (size!29882 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29881 _keys!1544) (size!29882 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!977587 () Bool)

(declare-fun e!551215 () Bool)

(declare-fun e!551219 () Bool)

(assert (=> b!977587 (= e!551215 (and e!551219 mapRes!35837))))

(declare-fun condMapEmpty!35837 () Bool)

(declare-fun mapDefault!35837 () ValueCell!10788)

(assert (=> b!977587 (= condMapEmpty!35837 (= (arr!29402 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10788)) mapDefault!35837)))))

(declare-fun b!977588 () Bool)

(declare-fun tp_is_empty!22539 () Bool)

(assert (=> b!977588 (= e!551219 tp_is_empty!22539)))

(declare-fun b!977584 () Bool)

(assert (=> b!977584 (= e!551216 tp_is_empty!22539)))

(declare-fun res!654340 () Bool)

(assert (=> start!83764 (=> (not res!654340) (not e!551217))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83764 (= res!654340 (validMask!0 mask!1948))))

(assert (=> start!83764 e!551217))

(assert (=> start!83764 true))

(declare-fun array_inv!22631 (array!61097) Bool)

(assert (=> start!83764 (and (array_inv!22631 _values!1278) e!551215)))

(declare-fun array_inv!22632 (array!61095) Bool)

(assert (=> start!83764 (array_inv!22632 _keys!1544)))

(declare-fun mapIsEmpty!35837 () Bool)

(assert (=> mapIsEmpty!35837 mapRes!35837))

(declare-fun b!977589 () Bool)

(declare-fun res!654342 () Bool)

(assert (=> b!977589 (=> (not res!654342) (not e!551217))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61095 (_ BitVec 32)) Bool)

(assert (=> b!977589 (= res!654342 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(assert (= (and start!83764 res!654340) b!977586))

(assert (= (and b!977586 res!654341) b!977589))

(assert (= (and b!977589 res!654342) b!977585))

(assert (= (and b!977587 condMapEmpty!35837) mapIsEmpty!35837))

(assert (= (and b!977587 (not condMapEmpty!35837)) mapNonEmpty!35837))

(get-info :version)

(assert (= (and mapNonEmpty!35837 ((_ is ValueCellFull!10788) mapValue!35837)) b!977584))

(assert (= (and b!977587 ((_ is ValueCellFull!10788) mapDefault!35837)) b!977588))

(assert (= start!83764 b!977587))

(declare-fun m!904859 () Bool)

(assert (=> b!977585 m!904859))

(declare-fun m!904861 () Bool)

(assert (=> mapNonEmpty!35837 m!904861))

(declare-fun m!904863 () Bool)

(assert (=> start!83764 m!904863))

(declare-fun m!904865 () Bool)

(assert (=> start!83764 m!904865))

(declare-fun m!904867 () Bool)

(assert (=> start!83764 m!904867))

(declare-fun m!904869 () Bool)

(assert (=> b!977589 m!904869))

(check-sat (not b!977589) (not mapNonEmpty!35837) (not start!83764) (not b!977585) tp_is_empty!22539)
(check-sat)
