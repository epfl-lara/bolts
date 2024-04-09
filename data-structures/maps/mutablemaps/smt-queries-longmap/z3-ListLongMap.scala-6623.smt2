; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83740 () Bool)

(assert start!83740)

(declare-fun b!977368 () Bool)

(declare-fun e!551036 () Bool)

(assert (=> b!977368 (= e!551036 false)))

(declare-fun lt!433426 () Bool)

(declare-datatypes ((array!61047 0))(
  ( (array!61048 (arr!29377 (Array (_ BitVec 32) (_ BitVec 64))) (size!29857 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61047)

(declare-datatypes ((List!20502 0))(
  ( (Nil!20499) (Cons!20498 (h!21660 (_ BitVec 64)) (t!29025 List!20502)) )
))
(declare-fun arrayNoDuplicates!0 (array!61047 (_ BitVec 32) List!20502) Bool)

(assert (=> b!977368 (= lt!433426 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20499))))

(declare-fun b!977369 () Bool)

(declare-fun res!654232 () Bool)

(assert (=> b!977369 (=> (not res!654232) (not e!551036))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35003 0))(
  ( (V!35004 (val!11308 Int)) )
))
(declare-datatypes ((ValueCell!10776 0))(
  ( (ValueCellFull!10776 (v!13870 V!35003)) (EmptyCell!10776) )
))
(declare-datatypes ((array!61049 0))(
  ( (array!61050 (arr!29378 (Array (_ BitVec 32) ValueCell!10776)) (size!29858 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61049)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!977369 (= res!654232 (and (= (size!29858 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29857 _keys!1544) (size!29858 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!977370 () Bool)

(declare-fun e!551039 () Bool)

(declare-fun e!551038 () Bool)

(declare-fun mapRes!35801 () Bool)

(assert (=> b!977370 (= e!551039 (and e!551038 mapRes!35801))))

(declare-fun condMapEmpty!35801 () Bool)

(declare-fun mapDefault!35801 () ValueCell!10776)

(assert (=> b!977370 (= condMapEmpty!35801 (= (arr!29378 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10776)) mapDefault!35801)))))

(declare-fun b!977371 () Bool)

(declare-fun res!654234 () Bool)

(assert (=> b!977371 (=> (not res!654234) (not e!551036))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61047 (_ BitVec 32)) Bool)

(assert (=> b!977371 (= res!654234 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!977372 () Bool)

(declare-fun e!551035 () Bool)

(declare-fun tp_is_empty!22515 () Bool)

(assert (=> b!977372 (= e!551035 tp_is_empty!22515)))

(declare-fun mapIsEmpty!35801 () Bool)

(assert (=> mapIsEmpty!35801 mapRes!35801))

(declare-fun b!977373 () Bool)

(assert (=> b!977373 (= e!551038 tp_is_empty!22515)))

(declare-fun res!654233 () Bool)

(assert (=> start!83740 (=> (not res!654233) (not e!551036))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83740 (= res!654233 (validMask!0 mask!1948))))

(assert (=> start!83740 e!551036))

(assert (=> start!83740 true))

(declare-fun array_inv!22613 (array!61049) Bool)

(assert (=> start!83740 (and (array_inv!22613 _values!1278) e!551039)))

(declare-fun array_inv!22614 (array!61047) Bool)

(assert (=> start!83740 (array_inv!22614 _keys!1544)))

(declare-fun mapNonEmpty!35801 () Bool)

(declare-fun tp!68054 () Bool)

(assert (=> mapNonEmpty!35801 (= mapRes!35801 (and tp!68054 e!551035))))

(declare-fun mapKey!35801 () (_ BitVec 32))

(declare-fun mapValue!35801 () ValueCell!10776)

(declare-fun mapRest!35801 () (Array (_ BitVec 32) ValueCell!10776))

(assert (=> mapNonEmpty!35801 (= (arr!29378 _values!1278) (store mapRest!35801 mapKey!35801 mapValue!35801))))

(assert (= (and start!83740 res!654233) b!977369))

(assert (= (and b!977369 res!654232) b!977371))

(assert (= (and b!977371 res!654234) b!977368))

(assert (= (and b!977370 condMapEmpty!35801) mapIsEmpty!35801))

(assert (= (and b!977370 (not condMapEmpty!35801)) mapNonEmpty!35801))

(get-info :version)

(assert (= (and mapNonEmpty!35801 ((_ is ValueCellFull!10776) mapValue!35801)) b!977372))

(assert (= (and b!977370 ((_ is ValueCellFull!10776) mapDefault!35801)) b!977373))

(assert (= start!83740 b!977370))

(declare-fun m!904715 () Bool)

(assert (=> b!977368 m!904715))

(declare-fun m!904717 () Bool)

(assert (=> b!977371 m!904717))

(declare-fun m!904719 () Bool)

(assert (=> start!83740 m!904719))

(declare-fun m!904721 () Bool)

(assert (=> start!83740 m!904721))

(declare-fun m!904723 () Bool)

(assert (=> start!83740 m!904723))

(declare-fun m!904725 () Bool)

(assert (=> mapNonEmpty!35801 m!904725))

(check-sat tp_is_empty!22515 (not mapNonEmpty!35801) (not b!977371) (not start!83740) (not b!977368))
(check-sat)
