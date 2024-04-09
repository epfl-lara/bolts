; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40540 () Bool)

(assert start!40540)

(declare-fun res!265113 () Bool)

(declare-fun e!262274 () Bool)

(assert (=> start!40540 (=> (not res!265113) (not e!262274))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!27561 0))(
  ( (array!27562 (arr!13224 (Array (_ BitVec 32) (_ BitVec 64))) (size!13576 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27561)

(assert (=> start!40540 (= res!265113 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13576 _keys!709))))))

(assert (=> start!40540 e!262274))

(assert (=> start!40540 true))

(declare-datatypes ((V!16967 0))(
  ( (V!16968 (val!5993 Int)) )
))
(declare-datatypes ((ValueCell!5605 0))(
  ( (ValueCellFull!5605 (v!8244 V!16967)) (EmptyCell!5605) )
))
(declare-datatypes ((array!27563 0))(
  ( (array!27564 (arr!13225 (Array (_ BitVec 32) ValueCell!5605)) (size!13577 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27563)

(declare-fun e!262276 () Bool)

(declare-fun array_inv!9576 (array!27563) Bool)

(assert (=> start!40540 (and (array_inv!9576 _values!549) e!262276)))

(declare-fun array_inv!9577 (array!27561) Bool)

(assert (=> start!40540 (array_inv!9577 _keys!709)))

(declare-fun mapNonEmpty!19476 () Bool)

(declare-fun mapRes!19476 () Bool)

(declare-fun tp!37503 () Bool)

(declare-fun e!262278 () Bool)

(assert (=> mapNonEmpty!19476 (= mapRes!19476 (and tp!37503 e!262278))))

(declare-fun mapValue!19476 () ValueCell!5605)

(declare-fun mapRest!19476 () (Array (_ BitVec 32) ValueCell!5605))

(declare-fun mapKey!19476 () (_ BitVec 32))

(assert (=> mapNonEmpty!19476 (= (arr!13225 _values!549) (store mapRest!19476 mapKey!19476 mapValue!19476))))

(declare-fun b!446463 () Bool)

(declare-fun res!265110 () Bool)

(assert (=> b!446463 (=> (not res!265110) (not e!262274))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!446463 (= res!265110 (validMask!0 mask!1025))))

(declare-fun b!446464 () Bool)

(declare-fun res!265108 () Bool)

(assert (=> b!446464 (=> (not res!265108) (not e!262274))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!446464 (= res!265108 (and (= (size!13577 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13576 _keys!709) (size!13577 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!19476 () Bool)

(assert (=> mapIsEmpty!19476 mapRes!19476))

(declare-fun b!446465 () Bool)

(declare-fun res!265106 () Bool)

(assert (=> b!446465 (=> (not res!265106) (not e!262274))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!446465 (= res!265106 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13576 _keys!709))))))

(declare-fun b!446466 () Bool)

(declare-fun res!265105 () Bool)

(assert (=> b!446466 (=> (not res!265105) (not e!262274))))

(declare-datatypes ((List!7893 0))(
  ( (Nil!7890) (Cons!7889 (h!8745 (_ BitVec 64)) (t!13661 List!7893)) )
))
(declare-fun arrayNoDuplicates!0 (array!27561 (_ BitVec 32) List!7893) Bool)

(assert (=> b!446466 (= res!265105 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7890))))

(declare-fun b!446467 () Bool)

(declare-fun res!265107 () Bool)

(assert (=> b!446467 (=> (not res!265107) (not e!262274))))

(assert (=> b!446467 (= res!265107 (or (= (select (arr!13224 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13224 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!446468 () Bool)

(declare-fun e!262275 () Bool)

(assert (=> b!446468 (= e!262276 (and e!262275 mapRes!19476))))

(declare-fun condMapEmpty!19476 () Bool)

(declare-fun mapDefault!19476 () ValueCell!5605)

