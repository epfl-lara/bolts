; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35724 () Bool)

(assert start!35724)

(declare-fun b!358530 () Bool)

(declare-fun e!219533 () Bool)

(declare-fun e!219535 () Bool)

(declare-fun mapRes!13761 () Bool)

(assert (=> b!358530 (= e!219533 (and e!219535 mapRes!13761))))

(declare-fun condMapEmpty!13761 () Bool)

(declare-datatypes ((V!11869 0))(
  ( (V!11870 (val!4129 Int)) )
))
(declare-datatypes ((ValueCell!3741 0))(
  ( (ValueCellFull!3741 (v!6319 V!11869)) (EmptyCell!3741) )
))
(declare-datatypes ((array!19863 0))(
  ( (array!19864 (arr!9422 (Array (_ BitVec 32) ValueCell!3741)) (size!9774 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19863)

(declare-fun mapDefault!13761 () ValueCell!3741)

(assert (=> b!358530 (= condMapEmpty!13761 (= (arr!9422 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3741)) mapDefault!13761)))))

(declare-fun b!358531 () Bool)

(declare-fun e!219536 () Bool)

(declare-fun tp_is_empty!8169 () Bool)

(assert (=> b!358531 (= e!219536 tp_is_empty!8169)))

(declare-fun b!358532 () Bool)

(declare-fun e!219534 () Bool)

(assert (=> b!358532 (= e!219534 false)))

(declare-fun lt!166201 () Bool)

(declare-datatypes ((array!19865 0))(
  ( (array!19866 (arr!9423 (Array (_ BitVec 32) (_ BitVec 64))) (size!9775 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19865)

(declare-datatypes ((List!5463 0))(
  ( (Nil!5460) (Cons!5459 (h!6315 (_ BitVec 64)) (t!10621 List!5463)) )
))
(declare-fun arrayNoDuplicates!0 (array!19865 (_ BitVec 32) List!5463) Bool)

(assert (=> b!358532 (= lt!166201 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5460))))

(declare-fun b!358533 () Bool)

(assert (=> b!358533 (= e!219535 tp_is_empty!8169)))

(declare-fun b!358534 () Bool)

(declare-fun res!199331 () Bool)

(assert (=> b!358534 (=> (not res!199331) (not e!219534))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!358534 (= res!199331 (and (= (size!9774 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9775 _keys!1456) (size!9774 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!13761 () Bool)

(declare-fun tp!27819 () Bool)

(assert (=> mapNonEmpty!13761 (= mapRes!13761 (and tp!27819 e!219536))))

(declare-fun mapValue!13761 () ValueCell!3741)

(declare-fun mapKey!13761 () (_ BitVec 32))

(declare-fun mapRest!13761 () (Array (_ BitVec 32) ValueCell!3741))

(assert (=> mapNonEmpty!13761 (= (arr!9422 _values!1208) (store mapRest!13761 mapKey!13761 mapValue!13761))))

(declare-fun mapIsEmpty!13761 () Bool)

(assert (=> mapIsEmpty!13761 mapRes!13761))

(declare-fun b!358535 () Bool)

(declare-fun res!199332 () Bool)

(assert (=> b!358535 (=> (not res!199332) (not e!219534))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19865 (_ BitVec 32)) Bool)

(assert (=> b!358535 (= res!199332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun res!199333 () Bool)

(assert (=> start!35724 (=> (not res!199333) (not e!219534))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35724 (= res!199333 (validMask!0 mask!1842))))

(assert (=> start!35724 e!219534))

(assert (=> start!35724 true))

(declare-fun array_inv!6928 (array!19863) Bool)

(assert (=> start!35724 (and (array_inv!6928 _values!1208) e!219533)))

(declare-fun array_inv!6929 (array!19865) Bool)

(assert (=> start!35724 (array_inv!6929 _keys!1456)))

(assert (= (and start!35724 res!199333) b!358534))

(assert (= (and b!358534 res!199331) b!358535))

(assert (= (and b!358535 res!199332) b!358532))

(assert (= (and b!358530 condMapEmpty!13761) mapIsEmpty!13761))

(assert (= (and b!358530 (not condMapEmpty!13761)) mapNonEmpty!13761))

(get-info :version)

(assert (= (and mapNonEmpty!13761 ((_ is ValueCellFull!3741) mapValue!13761)) b!358531))

(assert (= (and b!358530 ((_ is ValueCellFull!3741) mapDefault!13761)) b!358533))

(assert (= start!35724 b!358530))

(declare-fun m!356307 () Bool)

(assert (=> b!358532 m!356307))

(declare-fun m!356309 () Bool)

(assert (=> mapNonEmpty!13761 m!356309))

(declare-fun m!356311 () Bool)

(assert (=> b!358535 m!356311))

(declare-fun m!356313 () Bool)

(assert (=> start!35724 m!356313))

(declare-fun m!356315 () Bool)

(assert (=> start!35724 m!356315))

(declare-fun m!356317 () Bool)

(assert (=> start!35724 m!356317))

(check-sat (not mapNonEmpty!13761) tp_is_empty!8169 (not b!358532) (not b!358535) (not start!35724))
(check-sat)
