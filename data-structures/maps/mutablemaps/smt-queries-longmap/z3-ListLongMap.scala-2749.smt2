; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40342 () Bool)

(assert start!40342)

(declare-fun mapNonEmpty!19224 () Bool)

(declare-fun mapRes!19224 () Bool)

(declare-fun tp!37206 () Bool)

(declare-fun e!260622 () Bool)

(assert (=> mapNonEmpty!19224 (= mapRes!19224 (and tp!37206 e!260622))))

(declare-datatypes ((V!16749 0))(
  ( (V!16750 (val!5911 Int)) )
))
(declare-datatypes ((ValueCell!5523 0))(
  ( (ValueCellFull!5523 (v!8158 V!16749)) (EmptyCell!5523) )
))
(declare-datatypes ((array!27247 0))(
  ( (array!27248 (arr!13069 (Array (_ BitVec 32) ValueCell!5523)) (size!13421 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27247)

(declare-fun mapValue!19224 () ValueCell!5523)

(declare-fun mapRest!19224 () (Array (_ BitVec 32) ValueCell!5523))

(declare-fun mapKey!19224 () (_ BitVec 32))

(assert (=> mapNonEmpty!19224 (= (arr!13069 _values!549) (store mapRest!19224 mapKey!19224 mapValue!19224))))

(declare-fun b!442878 () Bool)

(declare-fun res!262453 () Bool)

(declare-fun e!260626 () Bool)

(assert (=> b!442878 (=> (not res!262453) (not e!260626))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!442878 (= res!262453 (validMask!0 mask!1025))))

(declare-fun res!262452 () Bool)

(assert (=> start!40342 (=> (not res!262452) (not e!260626))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!27249 0))(
  ( (array!27250 (arr!13070 (Array (_ BitVec 32) (_ BitVec 64))) (size!13422 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27249)

(assert (=> start!40342 (= res!262452 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13422 _keys!709))))))

(assert (=> start!40342 e!260626))

(assert (=> start!40342 true))

(declare-fun e!260624 () Bool)

(declare-fun array_inv!9476 (array!27247) Bool)

(assert (=> start!40342 (and (array_inv!9476 _values!549) e!260624)))

(declare-fun array_inv!9477 (array!27249) Bool)

(assert (=> start!40342 (array_inv!9477 _keys!709)))

(declare-fun b!442879 () Bool)

(declare-fun res!262454 () Bool)

(assert (=> b!442879 (=> (not res!262454) (not e!260626))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!442879 (= res!262454 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13422 _keys!709))))))

(declare-fun b!442880 () Bool)

(declare-fun res!262451 () Bool)

(assert (=> b!442880 (=> (not res!262451) (not e!260626))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!442880 (= res!262451 (and (= (size!13421 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13422 _keys!709) (size!13421 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!442881 () Bool)

(declare-fun e!260627 () Bool)

(assert (=> b!442881 (= e!260626 e!260627)))

(declare-fun res!262455 () Bool)

(assert (=> b!442881 (=> (not res!262455) (not e!260627))))

(declare-fun lt!203250 () array!27249)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27249 (_ BitVec 32)) Bool)

(assert (=> b!442881 (= res!262455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203250 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!442881 (= lt!203250 (array!27250 (store (arr!13070 _keys!709) i!563 k0!794) (size!13422 _keys!709)))))

(declare-fun b!442882 () Bool)

(declare-fun res!262457 () Bool)

(assert (=> b!442882 (=> (not res!262457) (not e!260626))))

(assert (=> b!442882 (= res!262457 (or (= (select (arr!13070 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13070 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!442883 () Bool)

(declare-fun e!260623 () Bool)

(assert (=> b!442883 (= e!260624 (and e!260623 mapRes!19224))))

(declare-fun condMapEmpty!19224 () Bool)

(declare-fun mapDefault!19224 () ValueCell!5523)

(assert (=> b!442883 (= condMapEmpty!19224 (= (arr!13069 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5523)) mapDefault!19224)))))

(declare-fun b!442884 () Bool)

(declare-fun tp_is_empty!11733 () Bool)

(assert (=> b!442884 (= e!260622 tp_is_empty!11733)))

(declare-fun b!442885 () Bool)

(declare-fun res!262456 () Bool)

(assert (=> b!442885 (=> (not res!262456) (not e!260626))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!442885 (= res!262456 (validKeyInArray!0 k0!794))))

(declare-fun b!442886 () Bool)

(assert (=> b!442886 (= e!260627 false)))

(declare-fun lt!203249 () Bool)

(declare-datatypes ((List!7818 0))(
  ( (Nil!7815) (Cons!7814 (h!8670 (_ BitVec 64)) (t!13584 List!7818)) )
))
(declare-fun arrayNoDuplicates!0 (array!27249 (_ BitVec 32) List!7818) Bool)

(assert (=> b!442886 (= lt!203249 (arrayNoDuplicates!0 lt!203250 #b00000000000000000000000000000000 Nil!7815))))

(declare-fun b!442887 () Bool)

(declare-fun res!262458 () Bool)

(assert (=> b!442887 (=> (not res!262458) (not e!260626))))

(declare-fun arrayContainsKey!0 (array!27249 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!442887 (= res!262458 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!442888 () Bool)

(declare-fun res!262460 () Bool)

(assert (=> b!442888 (=> (not res!262460) (not e!260626))))

(assert (=> b!442888 (= res!262460 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7815))))

(declare-fun b!442889 () Bool)

(assert (=> b!442889 (= e!260623 tp_is_empty!11733)))

(declare-fun b!442890 () Bool)

(declare-fun res!262459 () Bool)

(assert (=> b!442890 (=> (not res!262459) (not e!260626))))

(assert (=> b!442890 (= res!262459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!19224 () Bool)

(assert (=> mapIsEmpty!19224 mapRes!19224))

(assert (= (and start!40342 res!262452) b!442878))

(assert (= (and b!442878 res!262453) b!442880))

(assert (= (and b!442880 res!262451) b!442890))

(assert (= (and b!442890 res!262459) b!442888))

(assert (= (and b!442888 res!262460) b!442879))

(assert (= (and b!442879 res!262454) b!442885))

(assert (= (and b!442885 res!262456) b!442882))

(assert (= (and b!442882 res!262457) b!442887))

(assert (= (and b!442887 res!262458) b!442881))

(assert (= (and b!442881 res!262455) b!442886))

(assert (= (and b!442883 condMapEmpty!19224) mapIsEmpty!19224))

(assert (= (and b!442883 (not condMapEmpty!19224)) mapNonEmpty!19224))

(get-info :version)

(assert (= (and mapNonEmpty!19224 ((_ is ValueCellFull!5523) mapValue!19224)) b!442884))

(assert (= (and b!442883 ((_ is ValueCellFull!5523) mapDefault!19224)) b!442889))

(assert (= start!40342 b!442883))

(declare-fun m!429323 () Bool)

(assert (=> b!442890 m!429323))

(declare-fun m!429325 () Bool)

(assert (=> b!442888 m!429325))

(declare-fun m!429327 () Bool)

(assert (=> b!442887 m!429327))

(declare-fun m!429329 () Bool)

(assert (=> b!442885 m!429329))

(declare-fun m!429331 () Bool)

(assert (=> b!442881 m!429331))

(declare-fun m!429333 () Bool)

(assert (=> b!442881 m!429333))

(declare-fun m!429335 () Bool)

(assert (=> start!40342 m!429335))

(declare-fun m!429337 () Bool)

(assert (=> start!40342 m!429337))

(declare-fun m!429339 () Bool)

(assert (=> b!442882 m!429339))

(declare-fun m!429341 () Bool)

(assert (=> mapNonEmpty!19224 m!429341))

(declare-fun m!429343 () Bool)

(assert (=> b!442878 m!429343))

(declare-fun m!429345 () Bool)

(assert (=> b!442886 m!429345))

(check-sat (not b!442881) (not b!442878) (not start!40342) (not b!442885) (not mapNonEmpty!19224) (not b!442888) (not b!442887) (not b!442886) tp_is_empty!11733 (not b!442890))
(check-sat)
