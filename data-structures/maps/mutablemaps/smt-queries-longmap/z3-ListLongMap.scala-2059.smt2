; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35532 () Bool)

(assert start!35532)

(declare-fun mapIsEmpty!13473 () Bool)

(declare-fun mapRes!13473 () Bool)

(assert (=> mapIsEmpty!13473 mapRes!13473))

(declare-fun b!355785 () Bool)

(declare-fun e!218012 () Bool)

(declare-fun e!218013 () Bool)

(assert (=> b!355785 (= e!218012 (and e!218013 mapRes!13473))))

(declare-fun condMapEmpty!13473 () Bool)

(declare-datatypes ((V!11613 0))(
  ( (V!11614 (val!4033 Int)) )
))
(declare-datatypes ((ValueCell!3645 0))(
  ( (ValueCellFull!3645 (v!6223 V!11613)) (EmptyCell!3645) )
))
(declare-datatypes ((array!19497 0))(
  ( (array!19498 (arr!9239 (Array (_ BitVec 32) ValueCell!3645)) (size!9591 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19497)

(declare-fun mapDefault!13473 () ValueCell!3645)

(assert (=> b!355785 (= condMapEmpty!13473 (= (arr!9239 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3645)) mapDefault!13473)))))

(declare-fun mapNonEmpty!13473 () Bool)

(declare-fun tp!27450 () Bool)

(declare-fun e!218015 () Bool)

(assert (=> mapNonEmpty!13473 (= mapRes!13473 (and tp!27450 e!218015))))

(declare-fun mapKey!13473 () (_ BitVec 32))

(declare-fun mapValue!13473 () ValueCell!3645)

(declare-fun mapRest!13473 () (Array (_ BitVec 32) ValueCell!3645))

(assert (=> mapNonEmpty!13473 (= (arr!9239 _values!1208) (store mapRest!13473 mapKey!13473 mapValue!13473))))

(declare-fun b!355786 () Bool)

(declare-fun e!218014 () Bool)

(assert (=> b!355786 (= e!218014 false)))

(declare-fun lt!165841 () Bool)

(declare-datatypes ((array!19499 0))(
  ( (array!19500 (arr!9240 (Array (_ BitVec 32) (_ BitVec 64))) (size!9592 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19499)

(declare-datatypes ((List!5374 0))(
  ( (Nil!5371) (Cons!5370 (h!6226 (_ BitVec 64)) (t!10532 List!5374)) )
))
(declare-fun arrayNoDuplicates!0 (array!19499 (_ BitVec 32) List!5374) Bool)

(assert (=> b!355786 (= lt!165841 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5371))))

(declare-fun b!355787 () Bool)

(declare-fun tp_is_empty!7977 () Bool)

(assert (=> b!355787 (= e!218015 tp_is_empty!7977)))

(declare-fun b!355788 () Bool)

(assert (=> b!355788 (= e!218013 tp_is_empty!7977)))

(declare-fun b!355790 () Bool)

(declare-fun res!197452 () Bool)

(assert (=> b!355790 (=> (not res!197452) (not e!218014))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(assert (=> b!355790 (= res!197452 (and (= (size!9591 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9592 _keys!1456) (size!9591 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!355789 () Bool)

(declare-fun res!197451 () Bool)

(assert (=> b!355789 (=> (not res!197451) (not e!218014))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19499 (_ BitVec 32)) Bool)

(assert (=> b!355789 (= res!197451 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun res!197450 () Bool)

(assert (=> start!35532 (=> (not res!197450) (not e!218014))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35532 (= res!197450 (validMask!0 mask!1842))))

(assert (=> start!35532 e!218014))

(assert (=> start!35532 true))

(declare-fun array_inv!6804 (array!19497) Bool)

(assert (=> start!35532 (and (array_inv!6804 _values!1208) e!218012)))

(declare-fun array_inv!6805 (array!19499) Bool)

(assert (=> start!35532 (array_inv!6805 _keys!1456)))

(assert (= (and start!35532 res!197450) b!355790))

(assert (= (and b!355790 res!197452) b!355789))

(assert (= (and b!355789 res!197451) b!355786))

(assert (= (and b!355785 condMapEmpty!13473) mapIsEmpty!13473))

(assert (= (and b!355785 (not condMapEmpty!13473)) mapNonEmpty!13473))

(get-info :version)

(assert (= (and mapNonEmpty!13473 ((_ is ValueCellFull!3645) mapValue!13473)) b!355787))

(assert (= (and b!355785 ((_ is ValueCellFull!3645) mapDefault!13473)) b!355788))

(assert (= start!35532 b!355785))

(declare-fun m!354381 () Bool)

(assert (=> mapNonEmpty!13473 m!354381))

(declare-fun m!354383 () Bool)

(assert (=> b!355786 m!354383))

(declare-fun m!354385 () Bool)

(assert (=> b!355789 m!354385))

(declare-fun m!354387 () Bool)

(assert (=> start!35532 m!354387))

(declare-fun m!354389 () Bool)

(assert (=> start!35532 m!354389))

(declare-fun m!354391 () Bool)

(assert (=> start!35532 m!354391))

(check-sat (not mapNonEmpty!13473) (not start!35532) tp_is_empty!7977 (not b!355786) (not b!355789))
(check-sat)
