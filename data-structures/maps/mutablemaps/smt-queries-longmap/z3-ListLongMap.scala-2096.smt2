; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35754 () Bool)

(assert start!35754)

(declare-fun b!358899 () Bool)

(declare-fun e!219761 () Bool)

(declare-fun tp_is_empty!8199 () Bool)

(assert (=> b!358899 (= e!219761 tp_is_empty!8199)))

(declare-fun res!199567 () Bool)

(declare-fun e!219758 () Bool)

(assert (=> start!35754 (=> (not res!199567) (not e!219758))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35754 (= res!199567 (validMask!0 mask!1842))))

(assert (=> start!35754 e!219758))

(assert (=> start!35754 true))

(declare-datatypes ((V!11909 0))(
  ( (V!11910 (val!4144 Int)) )
))
(declare-datatypes ((ValueCell!3756 0))(
  ( (ValueCellFull!3756 (v!6334 V!11909)) (EmptyCell!3756) )
))
(declare-datatypes ((array!19923 0))(
  ( (array!19924 (arr!9452 (Array (_ BitVec 32) ValueCell!3756)) (size!9804 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19923)

(declare-fun e!219757 () Bool)

(declare-fun array_inv!6954 (array!19923) Bool)

(assert (=> start!35754 (and (array_inv!6954 _values!1208) e!219757)))

(declare-datatypes ((array!19925 0))(
  ( (array!19926 (arr!9453 (Array (_ BitVec 32) (_ BitVec 64))) (size!9805 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19925)

(declare-fun array_inv!6955 (array!19925) Bool)

(assert (=> start!35754 (array_inv!6955 _keys!1456)))

(declare-fun mapIsEmpty!13806 () Bool)

(declare-fun mapRes!13806 () Bool)

(assert (=> mapIsEmpty!13806 mapRes!13806))

(declare-fun mapNonEmpty!13806 () Bool)

(declare-fun tp!27873 () Bool)

(declare-fun e!219760 () Bool)

(assert (=> mapNonEmpty!13806 (= mapRes!13806 (and tp!27873 e!219760))))

(declare-fun mapRest!13806 () (Array (_ BitVec 32) ValueCell!3756))

(declare-fun mapKey!13806 () (_ BitVec 32))

(declare-fun mapValue!13806 () ValueCell!3756)

(assert (=> mapNonEmpty!13806 (= (arr!9452 _values!1208) (store mapRest!13806 mapKey!13806 mapValue!13806))))

(declare-fun b!358900 () Bool)

(declare-fun res!199566 () Bool)

(assert (=> b!358900 (=> (not res!199566) (not e!219758))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19925 (_ BitVec 32)) Bool)

(assert (=> b!358900 (= res!199566 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!358901 () Bool)

(declare-fun res!199565 () Bool)

(assert (=> b!358901 (=> (not res!199565) (not e!219758))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!358901 (= res!199565 (and (= (size!9804 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9805 _keys!1456) (size!9804 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!358902 () Bool)

(assert (=> b!358902 (= e!219757 (and e!219761 mapRes!13806))))

(declare-fun condMapEmpty!13806 () Bool)

(declare-fun mapDefault!13806 () ValueCell!3756)

(assert (=> b!358902 (= condMapEmpty!13806 (= (arr!9452 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3756)) mapDefault!13806)))))

(declare-fun b!358903 () Bool)

(assert (=> b!358903 (= e!219758 false)))

(declare-fun lt!166246 () Bool)

(declare-datatypes ((List!5477 0))(
  ( (Nil!5474) (Cons!5473 (h!6329 (_ BitVec 64)) (t!10635 List!5477)) )
))
(declare-fun arrayNoDuplicates!0 (array!19925 (_ BitVec 32) List!5477) Bool)

(assert (=> b!358903 (= lt!166246 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5474))))

(declare-fun b!358904 () Bool)

(assert (=> b!358904 (= e!219760 tp_is_empty!8199)))

(assert (= (and start!35754 res!199567) b!358901))

(assert (= (and b!358901 res!199565) b!358900))

(assert (= (and b!358900 res!199566) b!358903))

(assert (= (and b!358902 condMapEmpty!13806) mapIsEmpty!13806))

(assert (= (and b!358902 (not condMapEmpty!13806)) mapNonEmpty!13806))

(get-info :version)

(assert (= (and mapNonEmpty!13806 ((_ is ValueCellFull!3756) mapValue!13806)) b!358904))

(assert (= (and b!358902 ((_ is ValueCellFull!3756) mapDefault!13806)) b!358899))

(assert (= start!35754 b!358902))

(declare-fun m!356559 () Bool)

(assert (=> start!35754 m!356559))

(declare-fun m!356561 () Bool)

(assert (=> start!35754 m!356561))

(declare-fun m!356563 () Bool)

(assert (=> start!35754 m!356563))

(declare-fun m!356565 () Bool)

(assert (=> mapNonEmpty!13806 m!356565))

(declare-fun m!356567 () Bool)

(assert (=> b!358900 m!356567))

(declare-fun m!356569 () Bool)

(assert (=> b!358903 m!356569))

(check-sat (not b!358900) (not start!35754) (not b!358903) (not mapNonEmpty!13806) tp_is_empty!8199)
(check-sat)
