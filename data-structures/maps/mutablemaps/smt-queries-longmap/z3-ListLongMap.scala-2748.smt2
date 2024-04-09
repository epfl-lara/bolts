; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40336 () Bool)

(assert start!40336)

(declare-fun b!442761 () Bool)

(declare-fun e!260570 () Bool)

(declare-fun tp_is_empty!11727 () Bool)

(assert (=> b!442761 (= e!260570 tp_is_empty!11727)))

(declare-fun b!442762 () Bool)

(declare-fun res!262366 () Bool)

(declare-fun e!260571 () Bool)

(assert (=> b!442762 (=> (not res!262366) (not e!260571))))

(declare-datatypes ((array!27235 0))(
  ( (array!27236 (arr!13063 (Array (_ BitVec 32) (_ BitVec 64))) (size!13415 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27235)

(declare-datatypes ((List!7815 0))(
  ( (Nil!7812) (Cons!7811 (h!8667 (_ BitVec 64)) (t!13581 List!7815)) )
))
(declare-fun arrayNoDuplicates!0 (array!27235 (_ BitVec 32) List!7815) Bool)

(assert (=> b!442762 (= res!262366 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7812))))

(declare-fun b!442763 () Bool)

(declare-fun res!262362 () Bool)

(assert (=> b!442763 (=> (not res!262362) (not e!260571))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!442763 (= res!262362 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13415 _keys!709))))))

(declare-fun b!442764 () Bool)

(declare-fun res!262363 () Bool)

(assert (=> b!442764 (=> (not res!262363) (not e!260571))))

(assert (=> b!442764 (= res!262363 (or (= (select (arr!13063 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13063 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!442765 () Bool)

(declare-fun res!262367 () Bool)

(assert (=> b!442765 (=> (not res!262367) (not e!260571))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27235 (_ BitVec 32)) Bool)

(assert (=> b!442765 (= res!262367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!442766 () Bool)

(declare-fun e!260573 () Bool)

(declare-fun mapRes!19215 () Bool)

(assert (=> b!442766 (= e!260573 (and e!260570 mapRes!19215))))

(declare-fun condMapEmpty!19215 () Bool)

(declare-datatypes ((V!16741 0))(
  ( (V!16742 (val!5908 Int)) )
))
(declare-datatypes ((ValueCell!5520 0))(
  ( (ValueCellFull!5520 (v!8155 V!16741)) (EmptyCell!5520) )
))
(declare-datatypes ((array!27237 0))(
  ( (array!27238 (arr!13064 (Array (_ BitVec 32) ValueCell!5520)) (size!13416 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27237)

(declare-fun mapDefault!19215 () ValueCell!5520)

(assert (=> b!442766 (= condMapEmpty!19215 (= (arr!13064 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5520)) mapDefault!19215)))))

(declare-fun res!262364 () Bool)

(assert (=> start!40336 (=> (not res!262364) (not e!260571))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40336 (= res!262364 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13415 _keys!709))))))

(assert (=> start!40336 e!260571))

(assert (=> start!40336 true))

(declare-fun array_inv!9470 (array!27237) Bool)

(assert (=> start!40336 (and (array_inv!9470 _values!549) e!260573)))

(declare-fun array_inv!9471 (array!27235) Bool)

(assert (=> start!40336 (array_inv!9471 _keys!709)))

(declare-fun b!442767 () Bool)

(declare-fun res!262361 () Bool)

(assert (=> b!442767 (=> (not res!262361) (not e!260571))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!442767 (= res!262361 (and (= (size!13416 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13415 _keys!709) (size!13416 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!19215 () Bool)

(assert (=> mapIsEmpty!19215 mapRes!19215))

(declare-fun b!442768 () Bool)

(declare-fun e!260572 () Bool)

(assert (=> b!442768 (= e!260572 false)))

(declare-fun lt!203232 () Bool)

(declare-fun lt!203231 () array!27235)

(assert (=> b!442768 (= lt!203232 (arrayNoDuplicates!0 lt!203231 #b00000000000000000000000000000000 Nil!7812))))

(declare-fun b!442769 () Bool)

(declare-fun res!262369 () Bool)

(assert (=> b!442769 (=> (not res!262369) (not e!260571))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!442769 (= res!262369 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!19215 () Bool)

(declare-fun tp!37197 () Bool)

(declare-fun e!260568 () Bool)

(assert (=> mapNonEmpty!19215 (= mapRes!19215 (and tp!37197 e!260568))))

(declare-fun mapValue!19215 () ValueCell!5520)

(declare-fun mapKey!19215 () (_ BitVec 32))

(declare-fun mapRest!19215 () (Array (_ BitVec 32) ValueCell!5520))

(assert (=> mapNonEmpty!19215 (= (arr!13064 _values!549) (store mapRest!19215 mapKey!19215 mapValue!19215))))

(declare-fun b!442770 () Bool)

(assert (=> b!442770 (= e!260571 e!260572)))

(declare-fun res!262368 () Bool)

(assert (=> b!442770 (=> (not res!262368) (not e!260572))))

(assert (=> b!442770 (= res!262368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203231 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!442770 (= lt!203231 (array!27236 (store (arr!13063 _keys!709) i!563 k0!794) (size!13415 _keys!709)))))

(declare-fun b!442771 () Bool)

(declare-fun res!262370 () Bool)

(assert (=> b!442771 (=> (not res!262370) (not e!260571))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!442771 (= res!262370 (validKeyInArray!0 k0!794))))

(declare-fun b!442772 () Bool)

(declare-fun res!262365 () Bool)

(assert (=> b!442772 (=> (not res!262365) (not e!260571))))

(declare-fun arrayContainsKey!0 (array!27235 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!442772 (= res!262365 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!442773 () Bool)

(assert (=> b!442773 (= e!260568 tp_is_empty!11727)))

(assert (= (and start!40336 res!262364) b!442769))

(assert (= (and b!442769 res!262369) b!442767))

(assert (= (and b!442767 res!262361) b!442765))

(assert (= (and b!442765 res!262367) b!442762))

(assert (= (and b!442762 res!262366) b!442763))

(assert (= (and b!442763 res!262362) b!442771))

(assert (= (and b!442771 res!262370) b!442764))

(assert (= (and b!442764 res!262363) b!442772))

(assert (= (and b!442772 res!262365) b!442770))

(assert (= (and b!442770 res!262368) b!442768))

(assert (= (and b!442766 condMapEmpty!19215) mapIsEmpty!19215))

(assert (= (and b!442766 (not condMapEmpty!19215)) mapNonEmpty!19215))

(get-info :version)

(assert (= (and mapNonEmpty!19215 ((_ is ValueCellFull!5520) mapValue!19215)) b!442773))

(assert (= (and b!442766 ((_ is ValueCellFull!5520) mapDefault!19215)) b!442761))

(assert (= start!40336 b!442766))

(declare-fun m!429251 () Bool)

(assert (=> mapNonEmpty!19215 m!429251))

(declare-fun m!429253 () Bool)

(assert (=> b!442771 m!429253))

(declare-fun m!429255 () Bool)

(assert (=> b!442762 m!429255))

(declare-fun m!429257 () Bool)

(assert (=> b!442768 m!429257))

(declare-fun m!429259 () Bool)

(assert (=> b!442772 m!429259))

(declare-fun m!429261 () Bool)

(assert (=> start!40336 m!429261))

(declare-fun m!429263 () Bool)

(assert (=> start!40336 m!429263))

(declare-fun m!429265 () Bool)

(assert (=> b!442769 m!429265))

(declare-fun m!429267 () Bool)

(assert (=> b!442770 m!429267))

(declare-fun m!429269 () Bool)

(assert (=> b!442770 m!429269))

(declare-fun m!429271 () Bool)

(assert (=> b!442765 m!429271))

(declare-fun m!429273 () Bool)

(assert (=> b!442764 m!429273))

(check-sat (not start!40336) (not b!442765) (not b!442772) (not b!442770) (not b!442771) (not b!442762) tp_is_empty!11727 (not mapNonEmpty!19215) (not b!442769) (not b!442768))
(check-sat)
