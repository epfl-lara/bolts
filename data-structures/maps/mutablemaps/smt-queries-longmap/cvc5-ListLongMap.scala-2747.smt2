; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40328 () Bool)

(assert start!40328)

(declare-fun b!442605 () Bool)

(declare-fun e!260500 () Bool)

(assert (=> b!442605 (= e!260500 false)))

(declare-fun lt!203207 () Bool)

(declare-datatypes ((array!27219 0))(
  ( (array!27220 (arr!13055 (Array (_ BitVec 32) (_ BitVec 64))) (size!13407 (_ BitVec 32))) )
))
(declare-fun lt!203208 () array!27219)

(declare-datatypes ((List!7811 0))(
  ( (Nil!7808) (Cons!7807 (h!8663 (_ BitVec 64)) (t!13577 List!7811)) )
))
(declare-fun arrayNoDuplicates!0 (array!27219 (_ BitVec 32) List!7811) Bool)

(assert (=> b!442605 (= lt!203207 (arrayNoDuplicates!0 lt!203208 #b00000000000000000000000000000000 Nil!7808))))

(declare-fun b!442607 () Bool)

(declare-fun res!262244 () Bool)

(declare-fun e!260499 () Bool)

(assert (=> b!442607 (=> (not res!262244) (not e!260499))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!442607 (= res!262244 (validMask!0 mask!1025))))

(declare-fun b!442608 () Bool)

(declare-fun res!262242 () Bool)

(assert (=> b!442608 (=> (not res!262242) (not e!260499))))

(declare-fun _keys!709 () array!27219)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!442608 (= res!262242 (or (= (select (arr!13055 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13055 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!442609 () Bool)

(declare-fun res!262250 () Bool)

(assert (=> b!442609 (=> (not res!262250) (not e!260499))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16731 0))(
  ( (V!16732 (val!5904 Int)) )
))
(declare-datatypes ((ValueCell!5516 0))(
  ( (ValueCellFull!5516 (v!8151 V!16731)) (EmptyCell!5516) )
))
(declare-datatypes ((array!27221 0))(
  ( (array!27222 (arr!13056 (Array (_ BitVec 32) ValueCell!5516)) (size!13408 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27221)

(assert (=> b!442609 (= res!262250 (and (= (size!13408 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13407 _keys!709) (size!13408 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!442610 () Bool)

(assert (=> b!442610 (= e!260499 e!260500)))

(declare-fun res!262241 () Bool)

(assert (=> b!442610 (=> (not res!262241) (not e!260500))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27219 (_ BitVec 32)) Bool)

(assert (=> b!442610 (= res!262241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203208 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!442610 (= lt!203208 (array!27220 (store (arr!13055 _keys!709) i!563 k!794) (size!13407 _keys!709)))))

(declare-fun b!442611 () Bool)

(declare-fun res!262249 () Bool)

(assert (=> b!442611 (=> (not res!262249) (not e!260499))))

(assert (=> b!442611 (= res!262249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!442612 () Bool)

(declare-fun res!262243 () Bool)

(assert (=> b!442612 (=> (not res!262243) (not e!260499))))

(assert (=> b!442612 (= res!262243 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7808))))

(declare-fun b!442613 () Bool)

(declare-fun res!262247 () Bool)

(assert (=> b!442613 (=> (not res!262247) (not e!260499))))

(declare-fun arrayContainsKey!0 (array!27219 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!442613 (= res!262247 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!442614 () Bool)

(declare-fun e!260498 () Bool)

(declare-fun tp_is_empty!11719 () Bool)

(assert (=> b!442614 (= e!260498 tp_is_empty!11719)))

(declare-fun b!442615 () Bool)

(declare-fun e!260496 () Bool)

(declare-fun mapRes!19203 () Bool)

(assert (=> b!442615 (= e!260496 (and e!260498 mapRes!19203))))

(declare-fun condMapEmpty!19203 () Bool)

(declare-fun mapDefault!19203 () ValueCell!5516)

