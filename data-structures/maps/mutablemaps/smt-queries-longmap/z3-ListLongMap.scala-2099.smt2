; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35772 () Bool)

(assert start!35772)

(declare-fun mapIsEmpty!13833 () Bool)

(declare-fun mapRes!13833 () Bool)

(assert (=> mapIsEmpty!13833 mapRes!13833))

(declare-fun res!199647 () Bool)

(declare-fun e!219894 () Bool)

(assert (=> start!35772 (=> (not res!199647) (not e!219894))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35772 (= res!199647 (validMask!0 mask!1842))))

(assert (=> start!35772 e!219894))

(assert (=> start!35772 true))

(declare-datatypes ((V!11933 0))(
  ( (V!11934 (val!4153 Int)) )
))
(declare-datatypes ((ValueCell!3765 0))(
  ( (ValueCellFull!3765 (v!6343 V!11933)) (EmptyCell!3765) )
))
(declare-datatypes ((array!19955 0))(
  ( (array!19956 (arr!9468 (Array (_ BitVec 32) ValueCell!3765)) (size!9820 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19955)

(declare-fun e!219896 () Bool)

(declare-fun array_inv!6966 (array!19955) Bool)

(assert (=> start!35772 (and (array_inv!6966 _values!1208) e!219896)))

(declare-datatypes ((array!19957 0))(
  ( (array!19958 (arr!9469 (Array (_ BitVec 32) (_ BitVec 64))) (size!9821 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19957)

(declare-fun array_inv!6967 (array!19957) Bool)

(assert (=> start!35772 (array_inv!6967 _keys!1456)))

(declare-fun b!359061 () Bool)

(declare-fun res!199646 () Bool)

(assert (=> b!359061 (=> (not res!199646) (not e!219894))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19957 (_ BitVec 32)) Bool)

(assert (=> b!359061 (= res!199646 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!359062 () Bool)

(declare-fun e!219892 () Bool)

(declare-fun tp_is_empty!8217 () Bool)

(assert (=> b!359062 (= e!219892 tp_is_empty!8217)))

(declare-fun b!359063 () Bool)

(declare-fun res!199648 () Bool)

(assert (=> b!359063 (=> (not res!199648) (not e!219894))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!359063 (= res!199648 (and (= (size!9820 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9821 _keys!1456) (size!9820 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!359064 () Bool)

(declare-fun e!219893 () Bool)

(assert (=> b!359064 (= e!219896 (and e!219893 mapRes!13833))))

(declare-fun condMapEmpty!13833 () Bool)

(declare-fun mapDefault!13833 () ValueCell!3765)

(assert (=> b!359064 (= condMapEmpty!13833 (= (arr!9468 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3765)) mapDefault!13833)))))

(declare-fun mapNonEmpty!13833 () Bool)

(declare-fun tp!27900 () Bool)

(assert (=> mapNonEmpty!13833 (= mapRes!13833 (and tp!27900 e!219892))))

(declare-fun mapRest!13833 () (Array (_ BitVec 32) ValueCell!3765))

(declare-fun mapValue!13833 () ValueCell!3765)

(declare-fun mapKey!13833 () (_ BitVec 32))

(assert (=> mapNonEmpty!13833 (= (arr!9468 _values!1208) (store mapRest!13833 mapKey!13833 mapValue!13833))))

(declare-fun b!359065 () Bool)

(assert (=> b!359065 (= e!219894 false)))

(declare-fun lt!166273 () Bool)

(declare-datatypes ((List!5484 0))(
  ( (Nil!5481) (Cons!5480 (h!6336 (_ BitVec 64)) (t!10642 List!5484)) )
))
(declare-fun arrayNoDuplicates!0 (array!19957 (_ BitVec 32) List!5484) Bool)

(assert (=> b!359065 (= lt!166273 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5481))))

(declare-fun b!359066 () Bool)

(assert (=> b!359066 (= e!219893 tp_is_empty!8217)))

(assert (= (and start!35772 res!199647) b!359063))

(assert (= (and b!359063 res!199648) b!359061))

(assert (= (and b!359061 res!199646) b!359065))

(assert (= (and b!359064 condMapEmpty!13833) mapIsEmpty!13833))

(assert (= (and b!359064 (not condMapEmpty!13833)) mapNonEmpty!13833))

(get-info :version)

(assert (= (and mapNonEmpty!13833 ((_ is ValueCellFull!3765) mapValue!13833)) b!359062))

(assert (= (and b!359064 ((_ is ValueCellFull!3765) mapDefault!13833)) b!359066))

(assert (= start!35772 b!359064))

(declare-fun m!356667 () Bool)

(assert (=> start!35772 m!356667))

(declare-fun m!356669 () Bool)

(assert (=> start!35772 m!356669))

(declare-fun m!356671 () Bool)

(assert (=> start!35772 m!356671))

(declare-fun m!356673 () Bool)

(assert (=> b!359061 m!356673))

(declare-fun m!356675 () Bool)

(assert (=> mapNonEmpty!13833 m!356675))

(declare-fun m!356677 () Bool)

(assert (=> b!359065 m!356677))

(check-sat (not b!359065) (not b!359061) tp_is_empty!8217 (not mapNonEmpty!13833) (not start!35772))
(check-sat)
