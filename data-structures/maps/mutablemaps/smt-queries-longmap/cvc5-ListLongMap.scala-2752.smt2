; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40372 () Bool)

(assert start!40372)

(declare-fun b!443249 () Bool)

(declare-fun e!260809 () Bool)

(declare-fun tp_is_empty!11749 () Bool)

(assert (=> b!443249 (= e!260809 tp_is_empty!11749)))

(declare-fun mapNonEmpty!19251 () Bool)

(declare-fun mapRes!19251 () Bool)

(declare-fun tp!37233 () Bool)

(declare-fun e!260811 () Bool)

(assert (=> mapNonEmpty!19251 (= mapRes!19251 (and tp!37233 e!260811))))

(declare-datatypes ((V!16771 0))(
  ( (V!16772 (val!5919 Int)) )
))
(declare-datatypes ((ValueCell!5531 0))(
  ( (ValueCellFull!5531 (v!8166 V!16771)) (EmptyCell!5531) )
))
(declare-fun mapRest!19251 () (Array (_ BitVec 32) ValueCell!5531))

(declare-fun mapKey!19251 () (_ BitVec 32))

(declare-fun mapValue!19251 () ValueCell!5531)

(declare-datatypes ((array!27277 0))(
  ( (array!27278 (arr!13083 (Array (_ BitVec 32) ValueCell!5531)) (size!13435 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27277)

(assert (=> mapNonEmpty!19251 (= (arr!13083 _values!549) (store mapRest!19251 mapKey!19251 mapValue!19251))))

(declare-fun b!443250 () Bool)

(declare-fun res!262730 () Bool)

(declare-fun e!260806 () Bool)

(assert (=> b!443250 (=> (not res!262730) (not e!260806))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!27279 0))(
  ( (array!27280 (arr!13084 (Array (_ BitVec 32) (_ BitVec 64))) (size!13436 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27279)

(assert (=> b!443250 (= res!262730 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13436 _keys!709))))))

(declare-fun b!443251 () Bool)

(declare-fun res!262727 () Bool)

(assert (=> b!443251 (=> (not res!262727) (not e!260806))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27279 (_ BitVec 32)) Bool)

(assert (=> b!443251 (= res!262727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!443252 () Bool)

(declare-fun e!260810 () Bool)

(assert (=> b!443252 (= e!260806 e!260810)))

(declare-fun res!262735 () Bool)

(assert (=> b!443252 (=> (not res!262735) (not e!260810))))

(declare-fun lt!203300 () array!27279)

(assert (=> b!443252 (= res!262735 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203300 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!443252 (= lt!203300 (array!27280 (store (arr!13084 _keys!709) i!563 k!794) (size!13436 _keys!709)))))

(declare-fun b!443253 () Bool)

(declare-fun res!262728 () Bool)

(assert (=> b!443253 (=> (not res!262728) (not e!260806))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!443253 (= res!262728 (validMask!0 mask!1025))))

(declare-fun res!262731 () Bool)

(assert (=> start!40372 (=> (not res!262731) (not e!260806))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40372 (= res!262731 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13436 _keys!709))))))

(assert (=> start!40372 e!260806))

(assert (=> start!40372 true))

(declare-fun e!260807 () Bool)

(declare-fun array_inv!9484 (array!27277) Bool)

(assert (=> start!40372 (and (array_inv!9484 _values!549) e!260807)))

(declare-fun array_inv!9485 (array!27279) Bool)

(assert (=> start!40372 (array_inv!9485 _keys!709)))

(declare-fun b!443254 () Bool)

(declare-fun res!262734 () Bool)

(assert (=> b!443254 (=> (not res!262734) (not e!260806))))

(declare-fun arrayContainsKey!0 (array!27279 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!443254 (= res!262734 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!443255 () Bool)

(assert (=> b!443255 (= e!260807 (and e!260809 mapRes!19251))))

(declare-fun condMapEmpty!19251 () Bool)

(declare-fun mapDefault!19251 () ValueCell!5531)

