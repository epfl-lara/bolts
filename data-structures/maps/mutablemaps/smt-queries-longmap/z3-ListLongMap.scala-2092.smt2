; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35730 () Bool)

(assert start!35730)

(declare-fun b!358584 () Bool)

(declare-fun e!219579 () Bool)

(assert (=> b!358584 (= e!219579 false)))

(declare-fun lt!166210 () Bool)

(declare-datatypes ((array!19875 0))(
  ( (array!19876 (arr!9428 (Array (_ BitVec 32) (_ BitVec 64))) (size!9780 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19875)

(declare-datatypes ((List!5465 0))(
  ( (Nil!5462) (Cons!5461 (h!6317 (_ BitVec 64)) (t!10623 List!5465)) )
))
(declare-fun arrayNoDuplicates!0 (array!19875 (_ BitVec 32) List!5465) Bool)

(assert (=> b!358584 (= lt!166210 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5462))))

(declare-fun b!358585 () Bool)

(declare-fun res!199359 () Bool)

(assert (=> b!358585 (=> (not res!199359) (not e!219579))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19875 (_ BitVec 32)) Bool)

(assert (=> b!358585 (= res!199359 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!358586 () Bool)

(declare-fun e!219581 () Bool)

(declare-fun tp_is_empty!8175 () Bool)

(assert (=> b!358586 (= e!219581 tp_is_empty!8175)))

(declare-fun mapNonEmpty!13770 () Bool)

(declare-fun mapRes!13770 () Bool)

(declare-fun tp!27828 () Bool)

(assert (=> mapNonEmpty!13770 (= mapRes!13770 (and tp!27828 e!219581))))

(declare-fun mapKey!13770 () (_ BitVec 32))

(declare-datatypes ((V!11877 0))(
  ( (V!11878 (val!4132 Int)) )
))
(declare-datatypes ((ValueCell!3744 0))(
  ( (ValueCellFull!3744 (v!6322 V!11877)) (EmptyCell!3744) )
))
(declare-fun mapValue!13770 () ValueCell!3744)

(declare-fun mapRest!13770 () (Array (_ BitVec 32) ValueCell!3744))

(declare-datatypes ((array!19877 0))(
  ( (array!19878 (arr!9429 (Array (_ BitVec 32) ValueCell!3744)) (size!9781 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19877)

(assert (=> mapNonEmpty!13770 (= (arr!9429 _values!1208) (store mapRest!13770 mapKey!13770 mapValue!13770))))

(declare-fun res!199358 () Bool)

(assert (=> start!35730 (=> (not res!199358) (not e!219579))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35730 (= res!199358 (validMask!0 mask!1842))))

(assert (=> start!35730 e!219579))

(assert (=> start!35730 true))

(declare-fun e!219578 () Bool)

(declare-fun array_inv!6932 (array!19877) Bool)

(assert (=> start!35730 (and (array_inv!6932 _values!1208) e!219578)))

(declare-fun array_inv!6933 (array!19875) Bool)

(assert (=> start!35730 (array_inv!6933 _keys!1456)))

(declare-fun b!358587 () Bool)

(declare-fun e!219580 () Bool)

(assert (=> b!358587 (= e!219578 (and e!219580 mapRes!13770))))

(declare-fun condMapEmpty!13770 () Bool)

(declare-fun mapDefault!13770 () ValueCell!3744)

(assert (=> b!358587 (= condMapEmpty!13770 (= (arr!9429 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3744)) mapDefault!13770)))))

(declare-fun mapIsEmpty!13770 () Bool)

(assert (=> mapIsEmpty!13770 mapRes!13770))

(declare-fun b!358588 () Bool)

(assert (=> b!358588 (= e!219580 tp_is_empty!8175)))

(declare-fun b!358589 () Bool)

(declare-fun res!199360 () Bool)

(assert (=> b!358589 (=> (not res!199360) (not e!219579))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!358589 (= res!199360 (and (= (size!9781 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9780 _keys!1456) (size!9781 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(assert (= (and start!35730 res!199358) b!358589))

(assert (= (and b!358589 res!199360) b!358585))

(assert (= (and b!358585 res!199359) b!358584))

(assert (= (and b!358587 condMapEmpty!13770) mapIsEmpty!13770))

(assert (= (and b!358587 (not condMapEmpty!13770)) mapNonEmpty!13770))

(get-info :version)

(assert (= (and mapNonEmpty!13770 ((_ is ValueCellFull!3744) mapValue!13770)) b!358586))

(assert (= (and b!358587 ((_ is ValueCellFull!3744) mapDefault!13770)) b!358588))

(assert (= start!35730 b!358587))

(declare-fun m!356343 () Bool)

(assert (=> b!358584 m!356343))

(declare-fun m!356345 () Bool)

(assert (=> b!358585 m!356345))

(declare-fun m!356347 () Bool)

(assert (=> mapNonEmpty!13770 m!356347))

(declare-fun m!356349 () Bool)

(assert (=> start!35730 m!356349))

(declare-fun m!356351 () Bool)

(assert (=> start!35730 m!356351))

(declare-fun m!356353 () Bool)

(assert (=> start!35730 m!356353))

(check-sat (not b!358584) tp_is_empty!8175 (not mapNonEmpty!13770) (not b!358585) (not start!35730))
(check-sat)
