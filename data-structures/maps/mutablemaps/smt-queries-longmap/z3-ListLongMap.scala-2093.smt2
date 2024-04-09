; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35736 () Bool)

(assert start!35736)

(declare-fun res!199386 () Bool)

(declare-fun e!219623 () Bool)

(assert (=> start!35736 (=> (not res!199386) (not e!219623))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35736 (= res!199386 (validMask!0 mask!1842))))

(assert (=> start!35736 e!219623))

(assert (=> start!35736 true))

(declare-datatypes ((V!11885 0))(
  ( (V!11886 (val!4135 Int)) )
))
(declare-datatypes ((ValueCell!3747 0))(
  ( (ValueCellFull!3747 (v!6325 V!11885)) (EmptyCell!3747) )
))
(declare-datatypes ((array!19887 0))(
  ( (array!19888 (arr!9434 (Array (_ BitVec 32) ValueCell!3747)) (size!9786 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19887)

(declare-fun e!219624 () Bool)

(declare-fun array_inv!6938 (array!19887) Bool)

(assert (=> start!35736 (and (array_inv!6938 _values!1208) e!219624)))

(declare-datatypes ((array!19889 0))(
  ( (array!19890 (arr!9435 (Array (_ BitVec 32) (_ BitVec 64))) (size!9787 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19889)

(declare-fun array_inv!6939 (array!19889) Bool)

(assert (=> start!35736 (array_inv!6939 _keys!1456)))

(declare-fun mapIsEmpty!13779 () Bool)

(declare-fun mapRes!13779 () Bool)

(assert (=> mapIsEmpty!13779 mapRes!13779))

(declare-fun b!358638 () Bool)

(declare-fun e!219625 () Bool)

(assert (=> b!358638 (= e!219624 (and e!219625 mapRes!13779))))

(declare-fun condMapEmpty!13779 () Bool)

(declare-fun mapDefault!13779 () ValueCell!3747)

(assert (=> b!358638 (= condMapEmpty!13779 (= (arr!9434 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3747)) mapDefault!13779)))))

(declare-fun b!358639 () Bool)

(declare-fun res!199387 () Bool)

(assert (=> b!358639 (=> (not res!199387) (not e!219623))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!358639 (= res!199387 (and (= (size!9786 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9787 _keys!1456) (size!9786 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!358640 () Bool)

(assert (=> b!358640 (= e!219623 false)))

(declare-fun lt!166219 () Bool)

(declare-datatypes ((List!5468 0))(
  ( (Nil!5465) (Cons!5464 (h!6320 (_ BitVec 64)) (t!10626 List!5468)) )
))
(declare-fun arrayNoDuplicates!0 (array!19889 (_ BitVec 32) List!5468) Bool)

(assert (=> b!358640 (= lt!166219 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5465))))

(declare-fun b!358641 () Bool)

(declare-fun res!199385 () Bool)

(assert (=> b!358641 (=> (not res!199385) (not e!219623))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19889 (_ BitVec 32)) Bool)

(assert (=> b!358641 (= res!199385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!358642 () Bool)

(declare-fun tp_is_empty!8181 () Bool)

(assert (=> b!358642 (= e!219625 tp_is_empty!8181)))

(declare-fun mapNonEmpty!13779 () Bool)

(declare-fun tp!27837 () Bool)

(declare-fun e!219622 () Bool)

(assert (=> mapNonEmpty!13779 (= mapRes!13779 (and tp!27837 e!219622))))

(declare-fun mapKey!13779 () (_ BitVec 32))

(declare-fun mapRest!13779 () (Array (_ BitVec 32) ValueCell!3747))

(declare-fun mapValue!13779 () ValueCell!3747)

(assert (=> mapNonEmpty!13779 (= (arr!9434 _values!1208) (store mapRest!13779 mapKey!13779 mapValue!13779))))

(declare-fun b!358643 () Bool)

(assert (=> b!358643 (= e!219622 tp_is_empty!8181)))

(assert (= (and start!35736 res!199386) b!358639))

(assert (= (and b!358639 res!199387) b!358641))

(assert (= (and b!358641 res!199385) b!358640))

(assert (= (and b!358638 condMapEmpty!13779) mapIsEmpty!13779))

(assert (= (and b!358638 (not condMapEmpty!13779)) mapNonEmpty!13779))

(get-info :version)

(assert (= (and mapNonEmpty!13779 ((_ is ValueCellFull!3747) mapValue!13779)) b!358643))

(assert (= (and b!358638 ((_ is ValueCellFull!3747) mapDefault!13779)) b!358642))

(assert (= start!35736 b!358638))

(declare-fun m!356379 () Bool)

(assert (=> start!35736 m!356379))

(declare-fun m!356381 () Bool)

(assert (=> start!35736 m!356381))

(declare-fun m!356383 () Bool)

(assert (=> start!35736 m!356383))

(declare-fun m!356385 () Bool)

(assert (=> b!358640 m!356385))

(declare-fun m!356387 () Bool)

(assert (=> b!358641 m!356387))

(declare-fun m!356389 () Bool)

(assert (=> mapNonEmpty!13779 m!356389))

(check-sat (not mapNonEmpty!13779) tp_is_empty!8181 (not start!35736) (not b!358640) (not b!358641))
(check-sat)
