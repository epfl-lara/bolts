; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35712 () Bool)

(assert start!35712)

(declare-fun mapNonEmpty!13743 () Bool)

(declare-fun mapRes!13743 () Bool)

(declare-fun tp!27801 () Bool)

(declare-fun e!219443 () Bool)

(assert (=> mapNonEmpty!13743 (= mapRes!13743 (and tp!27801 e!219443))))

(declare-datatypes ((V!11853 0))(
  ( (V!11854 (val!4123 Int)) )
))
(declare-datatypes ((ValueCell!3735 0))(
  ( (ValueCellFull!3735 (v!6313 V!11853)) (EmptyCell!3735) )
))
(declare-fun mapRest!13743 () (Array (_ BitVec 32) ValueCell!3735))

(declare-fun mapKey!13743 () (_ BitVec 32))

(declare-fun mapValue!13743 () ValueCell!3735)

(declare-datatypes ((array!19841 0))(
  ( (array!19842 (arr!9411 (Array (_ BitVec 32) ValueCell!3735)) (size!9763 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19841)

(assert (=> mapNonEmpty!13743 (= (arr!9411 _values!1208) (store mapRest!13743 mapKey!13743 mapValue!13743))))

(declare-fun b!358422 () Bool)

(declare-fun e!219444 () Bool)

(declare-fun tp_is_empty!8157 () Bool)

(assert (=> b!358422 (= e!219444 tp_is_empty!8157)))

(declare-fun res!199279 () Bool)

(declare-fun e!219442 () Bool)

(assert (=> start!35712 (=> (not res!199279) (not e!219442))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35712 (= res!199279 (validMask!0 mask!1842))))

(assert (=> start!35712 e!219442))

(assert (=> start!35712 true))

(declare-fun e!219446 () Bool)

(declare-fun array_inv!6918 (array!19841) Bool)

(assert (=> start!35712 (and (array_inv!6918 _values!1208) e!219446)))

(declare-datatypes ((array!19843 0))(
  ( (array!19844 (arr!9412 (Array (_ BitVec 32) (_ BitVec 64))) (size!9764 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19843)

(declare-fun array_inv!6919 (array!19843) Bool)

(assert (=> start!35712 (array_inv!6919 _keys!1456)))

(declare-fun b!358423 () Bool)

(assert (=> b!358423 (= e!219443 tp_is_empty!8157)))

(declare-fun b!358424 () Bool)

(assert (=> b!358424 (= e!219446 (and e!219444 mapRes!13743))))

(declare-fun condMapEmpty!13743 () Bool)

(declare-fun mapDefault!13743 () ValueCell!3735)

(assert (=> b!358424 (= condMapEmpty!13743 (= (arr!9411 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3735)) mapDefault!13743)))))

(declare-fun mapIsEmpty!13743 () Bool)

(assert (=> mapIsEmpty!13743 mapRes!13743))

(declare-fun b!358425 () Bool)

(declare-fun res!199278 () Bool)

(assert (=> b!358425 (=> (not res!199278) (not e!219442))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!358425 (= res!199278 (and (= (size!9763 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9764 _keys!1456) (size!9763 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!358426 () Bool)

(assert (=> b!358426 (= e!219442 false)))

(declare-fun lt!166183 () Bool)

(declare-datatypes ((List!5458 0))(
  ( (Nil!5455) (Cons!5454 (h!6310 (_ BitVec 64)) (t!10616 List!5458)) )
))
(declare-fun arrayNoDuplicates!0 (array!19843 (_ BitVec 32) List!5458) Bool)

(assert (=> b!358426 (= lt!166183 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5455))))

(declare-fun b!358427 () Bool)

(declare-fun res!199277 () Bool)

(assert (=> b!358427 (=> (not res!199277) (not e!219442))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19843 (_ BitVec 32)) Bool)

(assert (=> b!358427 (= res!199277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(assert (= (and start!35712 res!199279) b!358425))

(assert (= (and b!358425 res!199278) b!358427))

(assert (= (and b!358427 res!199277) b!358426))

(assert (= (and b!358424 condMapEmpty!13743) mapIsEmpty!13743))

(assert (= (and b!358424 (not condMapEmpty!13743)) mapNonEmpty!13743))

(get-info :version)

(assert (= (and mapNonEmpty!13743 ((_ is ValueCellFull!3735) mapValue!13743)) b!358423))

(assert (= (and b!358424 ((_ is ValueCellFull!3735) mapDefault!13743)) b!358422))

(assert (= start!35712 b!358424))

(declare-fun m!356235 () Bool)

(assert (=> mapNonEmpty!13743 m!356235))

(declare-fun m!356237 () Bool)

(assert (=> start!35712 m!356237))

(declare-fun m!356239 () Bool)

(assert (=> start!35712 m!356239))

(declare-fun m!356241 () Bool)

(assert (=> start!35712 m!356241))

(declare-fun m!356243 () Bool)

(assert (=> b!358426 m!356243))

(declare-fun m!356245 () Bool)

(assert (=> b!358427 m!356245))

(check-sat (not b!358426) (not start!35712) (not mapNonEmpty!13743) (not b!358427) tp_is_empty!8157)
(check-sat)
