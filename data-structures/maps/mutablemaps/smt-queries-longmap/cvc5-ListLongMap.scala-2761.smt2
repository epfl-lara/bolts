; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40426 () Bool)

(assert start!40426)

(declare-fun b!444302 () Bool)

(declare-fun res!263545 () Bool)

(declare-fun e!261295 () Bool)

(assert (=> b!444302 (=> (not res!263545) (not e!261295))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!444302 (= res!263545 (validMask!0 mask!1025))))

(declare-fun b!444304 () Bool)

(declare-fun res!263539 () Bool)

(assert (=> b!444304 (=> (not res!263539) (not e!261295))))

(declare-datatypes ((array!27377 0))(
  ( (array!27378 (arr!13133 (Array (_ BitVec 32) (_ BitVec 64))) (size!13485 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27377)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!444304 (= res!263539 (or (= (select (arr!13133 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13133 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!444305 () Bool)

(declare-fun e!261292 () Bool)

(assert (=> b!444305 (= e!261295 e!261292)))

(declare-fun res!263538 () Bool)

(assert (=> b!444305 (=> (not res!263538) (not e!261292))))

(declare-fun lt!203463 () array!27377)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27377 (_ BitVec 32)) Bool)

(assert (=> b!444305 (= res!263538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203463 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!444305 (= lt!203463 (array!27378 (store (arr!13133 _keys!709) i!563 k!794) (size!13485 _keys!709)))))

(declare-fun b!444306 () Bool)

(declare-fun res!263541 () Bool)

(assert (=> b!444306 (=> (not res!263541) (not e!261295))))

(declare-datatypes ((List!7842 0))(
  ( (Nil!7839) (Cons!7838 (h!8694 (_ BitVec 64)) (t!13608 List!7842)) )
))
(declare-fun arrayNoDuplicates!0 (array!27377 (_ BitVec 32) List!7842) Bool)

(assert (=> b!444306 (= res!263541 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7839))))

(declare-fun b!444307 () Bool)

(declare-fun res!263543 () Bool)

(assert (=> b!444307 (=> (not res!263543) (not e!261295))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!444307 (= res!263543 (validKeyInArray!0 k!794))))

(declare-fun b!444308 () Bool)

(declare-fun e!261293 () Bool)

(declare-fun tp_is_empty!11803 () Bool)

(assert (=> b!444308 (= e!261293 tp_is_empty!11803)))

(declare-fun b!444309 () Bool)

(declare-fun res!263542 () Bool)

(assert (=> b!444309 (=> (not res!263542) (not e!261295))))

(declare-fun arrayContainsKey!0 (array!27377 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!444309 (= res!263542 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!444310 () Bool)

(declare-fun e!261294 () Bool)

(assert (=> b!444310 (= e!261294 tp_is_empty!11803)))

(declare-fun b!444311 () Bool)

(declare-fun e!261296 () Bool)

(declare-fun mapRes!19332 () Bool)

(assert (=> b!444311 (= e!261296 (and e!261294 mapRes!19332))))

(declare-fun condMapEmpty!19332 () Bool)

(declare-datatypes ((V!16843 0))(
  ( (V!16844 (val!5946 Int)) )
))
(declare-datatypes ((ValueCell!5558 0))(
  ( (ValueCellFull!5558 (v!8193 V!16843)) (EmptyCell!5558) )
))
(declare-datatypes ((array!27379 0))(
  ( (array!27380 (arr!13134 (Array (_ BitVec 32) ValueCell!5558)) (size!13486 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27379)

(declare-fun mapDefault!19332 () ValueCell!5558)

