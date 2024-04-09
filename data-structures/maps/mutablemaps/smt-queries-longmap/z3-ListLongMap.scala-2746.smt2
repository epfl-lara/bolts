; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40324 () Bool)

(assert start!40324)

(declare-fun b!442531 () Bool)

(declare-fun res!262192 () Bool)

(declare-fun e!260467 () Bool)

(assert (=> b!442531 (=> (not res!262192) (not e!260467))))

(declare-datatypes ((array!27213 0))(
  ( (array!27214 (arr!13052 (Array (_ BitVec 32) (_ BitVec 64))) (size!13404 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27213)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!442531 (= res!262192 (or (= (select (arr!13052 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13052 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19197 () Bool)

(declare-fun mapRes!19197 () Bool)

(declare-fun tp!37179 () Bool)

(declare-fun e!260464 () Bool)

(assert (=> mapNonEmpty!19197 (= mapRes!19197 (and tp!37179 e!260464))))

(declare-datatypes ((V!16725 0))(
  ( (V!16726 (val!5902 Int)) )
))
(declare-datatypes ((ValueCell!5514 0))(
  ( (ValueCellFull!5514 (v!8149 V!16725)) (EmptyCell!5514) )
))
(declare-datatypes ((array!27215 0))(
  ( (array!27216 (arr!13053 (Array (_ BitVec 32) ValueCell!5514)) (size!13405 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27215)

(declare-fun mapValue!19197 () ValueCell!5514)

(declare-fun mapKey!19197 () (_ BitVec 32))

(declare-fun mapRest!19197 () (Array (_ BitVec 32) ValueCell!5514))

(assert (=> mapNonEmpty!19197 (= (arr!13053 _values!549) (store mapRest!19197 mapKey!19197 mapValue!19197))))

(declare-fun b!442532 () Bool)

(assert (=> b!442532 (= e!260467 false)))

(declare-fun lt!203199 () Bool)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27213 (_ BitVec 32)) Bool)

(assert (=> b!442532 (= lt!203199 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!27214 (store (arr!13052 _keys!709) i!563 k0!794) (size!13404 _keys!709)) mask!1025))))

(declare-fun b!442533 () Bool)

(declare-fun res!262189 () Bool)

(assert (=> b!442533 (=> (not res!262189) (not e!260467))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!442533 (= res!262189 (validKeyInArray!0 k0!794))))

(declare-fun b!442534 () Bool)

(declare-fun e!260468 () Bool)

(declare-fun e!260466 () Bool)

(assert (=> b!442534 (= e!260468 (and e!260466 mapRes!19197))))

(declare-fun condMapEmpty!19197 () Bool)

(declare-fun mapDefault!19197 () ValueCell!5514)

(assert (=> b!442534 (= condMapEmpty!19197 (= (arr!13053 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5514)) mapDefault!19197)))))

(declare-fun b!442535 () Bool)

(declare-fun res!262191 () Bool)

(assert (=> b!442535 (=> (not res!262191) (not e!260467))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!442535 (= res!262191 (validMask!0 mask!1025))))

(declare-fun b!442536 () Bool)

(declare-fun tp_is_empty!11715 () Bool)

(assert (=> b!442536 (= e!260464 tp_is_empty!11715)))

(declare-fun b!442537 () Bool)

(declare-fun res!262190 () Bool)

(assert (=> b!442537 (=> (not res!262190) (not e!260467))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!442537 (= res!262190 (and (= (size!13405 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13404 _keys!709) (size!13405 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!442539 () Bool)

(declare-fun res!262185 () Bool)

(assert (=> b!442539 (=> (not res!262185) (not e!260467))))

(declare-datatypes ((List!7810 0))(
  ( (Nil!7807) (Cons!7806 (h!8662 (_ BitVec 64)) (t!13576 List!7810)) )
))
(declare-fun arrayNoDuplicates!0 (array!27213 (_ BitVec 32) List!7810) Bool)

(assert (=> b!442539 (= res!262185 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7807))))

(declare-fun mapIsEmpty!19197 () Bool)

(assert (=> mapIsEmpty!19197 mapRes!19197))

(declare-fun b!442540 () Bool)

(declare-fun res!262187 () Bool)

(assert (=> b!442540 (=> (not res!262187) (not e!260467))))

(assert (=> b!442540 (= res!262187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!442541 () Bool)

(assert (=> b!442541 (= e!260466 tp_is_empty!11715)))

(declare-fun b!442542 () Bool)

(declare-fun res!262193 () Bool)

(assert (=> b!442542 (=> (not res!262193) (not e!260467))))

(assert (=> b!442542 (= res!262193 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13404 _keys!709))))))

(declare-fun b!442538 () Bool)

(declare-fun res!262188 () Bool)

(assert (=> b!442538 (=> (not res!262188) (not e!260467))))

(declare-fun arrayContainsKey!0 (array!27213 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!442538 (= res!262188 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun res!262186 () Bool)

(assert (=> start!40324 (=> (not res!262186) (not e!260467))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40324 (= res!262186 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13404 _keys!709))))))

(assert (=> start!40324 e!260467))

(assert (=> start!40324 true))

(declare-fun array_inv!9462 (array!27215) Bool)

(assert (=> start!40324 (and (array_inv!9462 _values!549) e!260468)))

(declare-fun array_inv!9463 (array!27213) Bool)

(assert (=> start!40324 (array_inv!9463 _keys!709)))

(assert (= (and start!40324 res!262186) b!442535))

(assert (= (and b!442535 res!262191) b!442537))

(assert (= (and b!442537 res!262190) b!442540))

(assert (= (and b!442540 res!262187) b!442539))

(assert (= (and b!442539 res!262185) b!442542))

(assert (= (and b!442542 res!262193) b!442533))

(assert (= (and b!442533 res!262189) b!442531))

(assert (= (and b!442531 res!262192) b!442538))

(assert (= (and b!442538 res!262188) b!442532))

(assert (= (and b!442534 condMapEmpty!19197) mapIsEmpty!19197))

(assert (= (and b!442534 (not condMapEmpty!19197)) mapNonEmpty!19197))

(get-info :version)

(assert (= (and mapNonEmpty!19197 ((_ is ValueCellFull!5514) mapValue!19197)) b!442536))

(assert (= (and b!442534 ((_ is ValueCellFull!5514) mapDefault!19197)) b!442541))

(assert (= start!40324 b!442534))

(declare-fun m!429111 () Bool)

(assert (=> mapNonEmpty!19197 m!429111))

(declare-fun m!429113 () Bool)

(assert (=> b!442538 m!429113))

(declare-fun m!429115 () Bool)

(assert (=> b!442539 m!429115))

(declare-fun m!429117 () Bool)

(assert (=> start!40324 m!429117))

(declare-fun m!429119 () Bool)

(assert (=> start!40324 m!429119))

(declare-fun m!429121 () Bool)

(assert (=> b!442535 m!429121))

(declare-fun m!429123 () Bool)

(assert (=> b!442540 m!429123))

(declare-fun m!429125 () Bool)

(assert (=> b!442532 m!429125))

(declare-fun m!429127 () Bool)

(assert (=> b!442532 m!429127))

(declare-fun m!429129 () Bool)

(assert (=> b!442531 m!429129))

(declare-fun m!429131 () Bool)

(assert (=> b!442533 m!429131))

(check-sat (not b!442535) (not b!442532) (not b!442539) (not start!40324) tp_is_empty!11715 (not b!442540) (not mapNonEmpty!19197) (not b!442533) (not b!442538))
(check-sat)
