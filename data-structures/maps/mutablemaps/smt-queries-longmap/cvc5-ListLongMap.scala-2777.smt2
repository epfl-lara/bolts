; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40542 () Bool)

(assert start!40542)

(declare-fun b!446504 () Bool)

(declare-fun res!265140 () Bool)

(declare-fun e!262292 () Bool)

(assert (=> b!446504 (=> (not res!265140) (not e!262292))))

(declare-datatypes ((array!27565 0))(
  ( (array!27566 (arr!13226 (Array (_ BitVec 32) (_ BitVec 64))) (size!13578 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27565)

(declare-datatypes ((List!7894 0))(
  ( (Nil!7891) (Cons!7890 (h!8746 (_ BitVec 64)) (t!13662 List!7894)) )
))
(declare-fun arrayNoDuplicates!0 (array!27565 (_ BitVec 32) List!7894) Bool)

(assert (=> b!446504 (= res!265140 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7891))))

(declare-fun b!446506 () Bool)

(declare-fun e!262293 () Bool)

(declare-fun tp_is_empty!11899 () Bool)

(assert (=> b!446506 (= e!262293 tp_is_empty!11899)))

(declare-fun b!446507 () Bool)

(declare-fun res!265136 () Bool)

(assert (=> b!446507 (=> (not res!265136) (not e!262292))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!446507 (= res!265136 (or (= (select (arr!13226 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13226 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!446508 () Bool)

(declare-fun res!265141 () Bool)

(assert (=> b!446508 (=> (not res!265141) (not e!262292))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!446508 (= res!265141 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!19479 () Bool)

(declare-fun mapRes!19479 () Bool)

(assert (=> mapIsEmpty!19479 mapRes!19479))

(declare-fun b!446509 () Bool)

(declare-fun res!265145 () Bool)

(assert (=> b!446509 (=> (not res!265145) (not e!262292))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16971 0))(
  ( (V!16972 (val!5994 Int)) )
))
(declare-datatypes ((ValueCell!5606 0))(
  ( (ValueCellFull!5606 (v!8245 V!16971)) (EmptyCell!5606) )
))
(declare-datatypes ((array!27567 0))(
  ( (array!27568 (arr!13227 (Array (_ BitVec 32) ValueCell!5606)) (size!13579 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27567)

(assert (=> b!446509 (= res!265145 (and (= (size!13579 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13578 _keys!709) (size!13579 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!446510 () Bool)

(declare-fun res!265146 () Bool)

(assert (=> b!446510 (=> (not res!265146) (not e!262292))))

(assert (=> b!446510 (= res!265146 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13578 _keys!709))))))

(declare-fun b!446511 () Bool)

(declare-fun res!265137 () Bool)

(assert (=> b!446511 (=> (not res!265137) (not e!262292))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27565 (_ BitVec 32)) Bool)

(assert (=> b!446511 (= res!265137 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!446512 () Bool)

(declare-fun e!262297 () Bool)

(assert (=> b!446512 (= e!262292 e!262297)))

(declare-fun res!265139 () Bool)

(assert (=> b!446512 (=> (not res!265139) (not e!262297))))

(declare-fun lt!203808 () array!27565)

(assert (=> b!446512 (= res!265139 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203808 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!446512 (= lt!203808 (array!27566 (store (arr!13226 _keys!709) i!563 k!794) (size!13578 _keys!709)))))

(declare-fun mapNonEmpty!19479 () Bool)

(declare-fun tp!37506 () Bool)

(assert (=> mapNonEmpty!19479 (= mapRes!19479 (and tp!37506 e!262293))))

(declare-fun mapRest!19479 () (Array (_ BitVec 32) ValueCell!5606))

(declare-fun mapKey!19479 () (_ BitVec 32))

(declare-fun mapValue!19479 () ValueCell!5606)

(assert (=> mapNonEmpty!19479 (= (arr!13227 _values!549) (store mapRest!19479 mapKey!19479 mapValue!19479))))

(declare-fun b!446513 () Bool)

(declare-fun res!265138 () Bool)

(assert (=> b!446513 (=> (not res!265138) (not e!262297))))

(assert (=> b!446513 (= res!265138 (arrayNoDuplicates!0 lt!203808 #b00000000000000000000000000000000 Nil!7891))))

(declare-fun res!265144 () Bool)

(assert (=> start!40542 (=> (not res!265144) (not e!262292))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40542 (= res!265144 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13578 _keys!709))))))

(assert (=> start!40542 e!262292))

(assert (=> start!40542 true))

(declare-fun e!262295 () Bool)

(declare-fun array_inv!9578 (array!27567) Bool)

(assert (=> start!40542 (and (array_inv!9578 _values!549) e!262295)))

(declare-fun array_inv!9579 (array!27565) Bool)

(assert (=> start!40542 (array_inv!9579 _keys!709)))

(declare-fun b!446505 () Bool)

(declare-fun res!265142 () Bool)

(assert (=> b!446505 (=> (not res!265142) (not e!262292))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!446505 (= res!265142 (validKeyInArray!0 k!794))))

(declare-fun b!446514 () Bool)

(assert (=> b!446514 (= e!262297 (and (bvsgt from!863 i!563) (bvsgt (bvadd #b00000000000000000000000000000001 from!863) (size!13578 _keys!709)) (bvsge i!563 (size!13579 _values!549))))))

(declare-fun b!446515 () Bool)

(declare-fun e!262294 () Bool)

(assert (=> b!446515 (= e!262294 tp_is_empty!11899)))

(declare-fun b!446516 () Bool)

(assert (=> b!446516 (= e!262295 (and e!262294 mapRes!19479))))

(declare-fun condMapEmpty!19479 () Bool)

(declare-fun mapDefault!19479 () ValueCell!5606)

