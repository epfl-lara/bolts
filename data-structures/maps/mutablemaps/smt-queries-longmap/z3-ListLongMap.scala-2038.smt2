; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35406 () Bool)

(assert start!35406)

(declare-fun b!354165 () Bool)

(declare-fun e!217066 () Bool)

(declare-fun tp_is_empty!7851 () Bool)

(assert (=> b!354165 (= e!217066 tp_is_empty!7851)))

(declare-fun b!354166 () Bool)

(declare-fun res!196398 () Bool)

(declare-fun e!217068 () Bool)

(assert (=> b!354166 (=> (not res!196398) (not e!217068))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19259 0))(
  ( (array!19260 (arr!9120 (Array (_ BitVec 32) (_ BitVec 64))) (size!9472 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19259)

(declare-datatypes ((V!11445 0))(
  ( (V!11446 (val!3970 Int)) )
))
(declare-datatypes ((ValueCell!3582 0))(
  ( (ValueCellFull!3582 (v!6160 V!11445)) (EmptyCell!3582) )
))
(declare-datatypes ((array!19261 0))(
  ( (array!19262 (arr!9121 (Array (_ BitVec 32) ValueCell!3582)) (size!9473 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19261)

(assert (=> b!354166 (= res!196398 (and (= (size!9473 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9472 _keys!1456) (size!9473 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!354168 () Bool)

(declare-fun e!217069 () Bool)

(declare-fun e!217070 () Bool)

(declare-fun mapRes!13284 () Bool)

(assert (=> b!354168 (= e!217069 (and e!217070 mapRes!13284))))

(declare-fun condMapEmpty!13284 () Bool)

(declare-fun mapDefault!13284 () ValueCell!3582)

(assert (=> b!354168 (= condMapEmpty!13284 (= (arr!9121 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3582)) mapDefault!13284)))))

(declare-fun b!354169 () Bool)

(assert (=> b!354169 (= e!217070 tp_is_empty!7851)))

(declare-fun mapIsEmpty!13284 () Bool)

(assert (=> mapIsEmpty!13284 mapRes!13284))

(declare-fun b!354170 () Bool)

(assert (=> b!354170 (= e!217068 false)))

(declare-fun lt!165652 () Bool)

(declare-datatypes ((List!5315 0))(
  ( (Nil!5312) (Cons!5311 (h!6167 (_ BitVec 64)) (t!10473 List!5315)) )
))
(declare-fun arrayNoDuplicates!0 (array!19259 (_ BitVec 32) List!5315) Bool)

(assert (=> b!354170 (= lt!165652 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5312))))

(declare-fun mapNonEmpty!13284 () Bool)

(declare-fun tp!27180 () Bool)

(assert (=> mapNonEmpty!13284 (= mapRes!13284 (and tp!27180 e!217066))))

(declare-fun mapValue!13284 () ValueCell!3582)

(declare-fun mapKey!13284 () (_ BitVec 32))

(declare-fun mapRest!13284 () (Array (_ BitVec 32) ValueCell!3582))

(assert (=> mapNonEmpty!13284 (= (arr!9121 _values!1208) (store mapRest!13284 mapKey!13284 mapValue!13284))))

(declare-fun b!354167 () Bool)

(declare-fun res!196397 () Bool)

(assert (=> b!354167 (=> (not res!196397) (not e!217068))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19259 (_ BitVec 32)) Bool)

(assert (=> b!354167 (= res!196397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun res!196399 () Bool)

(assert (=> start!35406 (=> (not res!196399) (not e!217068))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35406 (= res!196399 (validMask!0 mask!1842))))

(assert (=> start!35406 e!217068))

(assert (=> start!35406 true))

(declare-fun array_inv!6714 (array!19261) Bool)

(assert (=> start!35406 (and (array_inv!6714 _values!1208) e!217069)))

(declare-fun array_inv!6715 (array!19259) Bool)

(assert (=> start!35406 (array_inv!6715 _keys!1456)))

(assert (= (and start!35406 res!196399) b!354166))

(assert (= (and b!354166 res!196398) b!354167))

(assert (= (and b!354167 res!196397) b!354170))

(assert (= (and b!354168 condMapEmpty!13284) mapIsEmpty!13284))

(assert (= (and b!354168 (not condMapEmpty!13284)) mapNonEmpty!13284))

(get-info :version)

(assert (= (and mapNonEmpty!13284 ((_ is ValueCellFull!3582) mapValue!13284)) b!354165))

(assert (= (and b!354168 ((_ is ValueCellFull!3582) mapDefault!13284)) b!354169))

(assert (= start!35406 b!354168))

(declare-fun m!353247 () Bool)

(assert (=> b!354170 m!353247))

(declare-fun m!353249 () Bool)

(assert (=> mapNonEmpty!13284 m!353249))

(declare-fun m!353251 () Bool)

(assert (=> b!354167 m!353251))

(declare-fun m!353253 () Bool)

(assert (=> start!35406 m!353253))

(declare-fun m!353255 () Bool)

(assert (=> start!35406 m!353255))

(declare-fun m!353257 () Bool)

(assert (=> start!35406 m!353257))

(check-sat (not b!354167) (not start!35406) (not b!354170) (not mapNonEmpty!13284) tp_is_empty!7851)
(check-sat)
