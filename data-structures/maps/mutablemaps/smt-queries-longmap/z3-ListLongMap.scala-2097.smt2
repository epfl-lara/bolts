; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35760 () Bool)

(assert start!35760)

(declare-fun mapIsEmpty!13815 () Bool)

(declare-fun mapRes!13815 () Bool)

(assert (=> mapIsEmpty!13815 mapRes!13815))

(declare-fun b!358953 () Bool)

(declare-fun res!199594 () Bool)

(declare-fun e!219804 () Bool)

(assert (=> b!358953 (=> (not res!199594) (not e!219804))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19931 0))(
  ( (array!19932 (arr!9456 (Array (_ BitVec 32) (_ BitVec 64))) (size!9808 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19931)

(declare-datatypes ((V!11917 0))(
  ( (V!11918 (val!4147 Int)) )
))
(declare-datatypes ((ValueCell!3759 0))(
  ( (ValueCellFull!3759 (v!6337 V!11917)) (EmptyCell!3759) )
))
(declare-datatypes ((array!19933 0))(
  ( (array!19934 (arr!9457 (Array (_ BitVec 32) ValueCell!3759)) (size!9809 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19933)

(assert (=> b!358953 (= res!199594 (and (= (size!9809 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9808 _keys!1456) (size!9809 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!358954 () Bool)

(declare-fun e!219806 () Bool)

(declare-fun e!219803 () Bool)

(assert (=> b!358954 (= e!219806 (and e!219803 mapRes!13815))))

(declare-fun condMapEmpty!13815 () Bool)

(declare-fun mapDefault!13815 () ValueCell!3759)

(assert (=> b!358954 (= condMapEmpty!13815 (= (arr!9457 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3759)) mapDefault!13815)))))

(declare-fun b!358955 () Bool)

(assert (=> b!358955 (= e!219804 false)))

(declare-fun lt!166255 () Bool)

(declare-datatypes ((List!5478 0))(
  ( (Nil!5475) (Cons!5474 (h!6330 (_ BitVec 64)) (t!10636 List!5478)) )
))
(declare-fun arrayNoDuplicates!0 (array!19931 (_ BitVec 32) List!5478) Bool)

(assert (=> b!358955 (= lt!166255 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5475))))

(declare-fun b!358956 () Bool)

(declare-fun tp_is_empty!8205 () Bool)

(assert (=> b!358956 (= e!219803 tp_is_empty!8205)))

(declare-fun mapNonEmpty!13815 () Bool)

(declare-fun tp!27882 () Bool)

(declare-fun e!219805 () Bool)

(assert (=> mapNonEmpty!13815 (= mapRes!13815 (and tp!27882 e!219805))))

(declare-fun mapValue!13815 () ValueCell!3759)

(declare-fun mapRest!13815 () (Array (_ BitVec 32) ValueCell!3759))

(declare-fun mapKey!13815 () (_ BitVec 32))

(assert (=> mapNonEmpty!13815 (= (arr!9457 _values!1208) (store mapRest!13815 mapKey!13815 mapValue!13815))))

(declare-fun res!199592 () Bool)

(assert (=> start!35760 (=> (not res!199592) (not e!219804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35760 (= res!199592 (validMask!0 mask!1842))))

(assert (=> start!35760 e!219804))

(assert (=> start!35760 true))

(declare-fun array_inv!6956 (array!19933) Bool)

(assert (=> start!35760 (and (array_inv!6956 _values!1208) e!219806)))

(declare-fun array_inv!6957 (array!19931) Bool)

(assert (=> start!35760 (array_inv!6957 _keys!1456)))

(declare-fun b!358957 () Bool)

(declare-fun res!199593 () Bool)

(assert (=> b!358957 (=> (not res!199593) (not e!219804))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19931 (_ BitVec 32)) Bool)

(assert (=> b!358957 (= res!199593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!358958 () Bool)

(assert (=> b!358958 (= e!219805 tp_is_empty!8205)))

(assert (= (and start!35760 res!199592) b!358953))

(assert (= (and b!358953 res!199594) b!358957))

(assert (= (and b!358957 res!199593) b!358955))

(assert (= (and b!358954 condMapEmpty!13815) mapIsEmpty!13815))

(assert (= (and b!358954 (not condMapEmpty!13815)) mapNonEmpty!13815))

(get-info :version)

(assert (= (and mapNonEmpty!13815 ((_ is ValueCellFull!3759) mapValue!13815)) b!358958))

(assert (= (and b!358954 ((_ is ValueCellFull!3759) mapDefault!13815)) b!358956))

(assert (= start!35760 b!358954))

(declare-fun m!356595 () Bool)

(assert (=> b!358955 m!356595))

(declare-fun m!356597 () Bool)

(assert (=> mapNonEmpty!13815 m!356597))

(declare-fun m!356599 () Bool)

(assert (=> start!35760 m!356599))

(declare-fun m!356601 () Bool)

(assert (=> start!35760 m!356601))

(declare-fun m!356603 () Bool)

(assert (=> start!35760 m!356603))

(declare-fun m!356605 () Bool)

(assert (=> b!358957 m!356605))

(check-sat tp_is_empty!8205 (not start!35760) (not b!358957) (not b!358955) (not mapNonEmpty!13815))
(check-sat)
