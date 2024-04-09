; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40400 () Bool)

(assert start!40400)

(declare-fun mapIsEmpty!19293 () Bool)

(declare-fun mapRes!19293 () Bool)

(assert (=> mapIsEmpty!19293 mapRes!19293))

(declare-fun b!443795 () Bool)

(declare-fun e!261060 () Bool)

(declare-fun tp_is_empty!11777 () Bool)

(assert (=> b!443795 (= e!261060 tp_is_empty!11777)))

(declare-fun mapNonEmpty!19293 () Bool)

(declare-fun tp!37275 () Bool)

(assert (=> mapNonEmpty!19293 (= mapRes!19293 (and tp!37275 e!261060))))

(declare-fun mapKey!19293 () (_ BitVec 32))

(declare-datatypes ((V!16807 0))(
  ( (V!16808 (val!5933 Int)) )
))
(declare-datatypes ((ValueCell!5545 0))(
  ( (ValueCellFull!5545 (v!8180 V!16807)) (EmptyCell!5545) )
))
(declare-fun mapValue!19293 () ValueCell!5545)

(declare-datatypes ((array!27329 0))(
  ( (array!27330 (arr!13109 (Array (_ BitVec 32) ValueCell!5545)) (size!13461 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27329)

(declare-fun mapRest!19293 () (Array (_ BitVec 32) ValueCell!5545))

(assert (=> mapNonEmpty!19293 (= (arr!13109 _values!549) (store mapRest!19293 mapKey!19293 mapValue!19293))))

(declare-fun b!443796 () Bool)

(declare-fun res!263147 () Bool)

(declare-fun e!261059 () Bool)

(assert (=> b!443796 (=> (not res!263147) (not e!261059))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!27331 0))(
  ( (array!27332 (arr!13110 (Array (_ BitVec 32) (_ BitVec 64))) (size!13462 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27331)

(assert (=> b!443796 (= res!263147 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13462 _keys!709))))))

(declare-fun b!443797 () Bool)

(declare-fun res!263155 () Bool)

(assert (=> b!443797 (=> (not res!263155) (not e!261059))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!443797 (= res!263155 (validKeyInArray!0 k!794))))

(declare-fun b!443798 () Bool)

(declare-fun res!263146 () Bool)

(assert (=> b!443798 (=> (not res!263146) (not e!261059))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27331 (_ BitVec 32)) Bool)

(assert (=> b!443798 (= res!263146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!443799 () Bool)

(declare-fun res!263152 () Bool)

(assert (=> b!443799 (=> (not res!263152) (not e!261059))))

(assert (=> b!443799 (= res!263152 (or (= (select (arr!13110 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13110 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!443800 () Bool)

(declare-fun e!261058 () Bool)

(assert (=> b!443800 (= e!261058 false)))

(declare-fun lt!203384 () Bool)

(declare-fun lt!203385 () array!27331)

(declare-datatypes ((List!7831 0))(
  ( (Nil!7828) (Cons!7827 (h!8683 (_ BitVec 64)) (t!13597 List!7831)) )
))
(declare-fun arrayNoDuplicates!0 (array!27331 (_ BitVec 32) List!7831) Bool)

(assert (=> b!443800 (= lt!203384 (arrayNoDuplicates!0 lt!203385 #b00000000000000000000000000000000 Nil!7828))))

(declare-fun b!443801 () Bool)

(declare-fun res!263148 () Bool)

(assert (=> b!443801 (=> (not res!263148) (not e!261059))))

(assert (=> b!443801 (= res!263148 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7828))))

(declare-fun b!443802 () Bool)

(declare-fun e!261061 () Bool)

(assert (=> b!443802 (= e!261061 tp_is_empty!11777)))

(declare-fun b!443803 () Bool)

(declare-fun res!263150 () Bool)

(assert (=> b!443803 (=> (not res!263150) (not e!261059))))

(declare-fun arrayContainsKey!0 (array!27331 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!443803 (= res!263150 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!443804 () Bool)

(declare-fun e!261062 () Bool)

(assert (=> b!443804 (= e!261062 (and e!261061 mapRes!19293))))

(declare-fun condMapEmpty!19293 () Bool)

(declare-fun mapDefault!19293 () ValueCell!5545)

