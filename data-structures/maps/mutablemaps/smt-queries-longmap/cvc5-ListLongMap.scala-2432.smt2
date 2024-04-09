; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38370 () Bool)

(assert start!38370)

(declare-fun b!395505 () Bool)

(declare-fun res!226840 () Bool)

(declare-fun e!239431 () Bool)

(assert (=> b!395505 (=> (not res!226840) (not e!239431))))

(declare-datatypes ((array!23543 0))(
  ( (array!23544 (arr!11221 (Array (_ BitVec 32) (_ BitVec 64))) (size!11573 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23543)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23543 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!395505 (= res!226840 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!395506 () Bool)

(assert (=> b!395506 (= e!239431 (bvsgt #b00000000000000000000000000000000 (size!11573 _keys!709)))))

(declare-fun b!395507 () Bool)

(declare-fun e!239433 () Bool)

(declare-fun tp_is_empty!9829 () Bool)

(assert (=> b!395507 (= e!239433 tp_is_empty!9829)))

(declare-fun res!226845 () Bool)

(assert (=> start!38370 (=> (not res!226845) (not e!239431))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38370 (= res!226845 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11573 _keys!709))))))

(assert (=> start!38370 e!239431))

(assert (=> start!38370 true))

(declare-datatypes ((V!14211 0))(
  ( (V!14212 (val!4959 Int)) )
))
(declare-datatypes ((ValueCell!4571 0))(
  ( (ValueCellFull!4571 (v!7201 V!14211)) (EmptyCell!4571) )
))
(declare-datatypes ((array!23545 0))(
  ( (array!23546 (arr!11222 (Array (_ BitVec 32) ValueCell!4571)) (size!11574 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23545)

(declare-fun e!239435 () Bool)

(declare-fun array_inv!8218 (array!23545) Bool)

(assert (=> start!38370 (and (array_inv!8218 _values!549) e!239435)))

(declare-fun array_inv!8219 (array!23543) Bool)

(assert (=> start!38370 (array_inv!8219 _keys!709)))

(declare-fun mapIsEmpty!16356 () Bool)

(declare-fun mapRes!16356 () Bool)

(assert (=> mapIsEmpty!16356 mapRes!16356))

(declare-fun b!395508 () Bool)

(declare-fun res!226841 () Bool)

(assert (=> b!395508 (=> (not res!226841) (not e!239431))))

(declare-datatypes ((List!6480 0))(
  ( (Nil!6477) (Cons!6476 (h!7332 (_ BitVec 64)) (t!11662 List!6480)) )
))
(declare-fun arrayNoDuplicates!0 (array!23543 (_ BitVec 32) List!6480) Bool)

(assert (=> b!395508 (= res!226841 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6477))))

(declare-fun b!395509 () Bool)

(declare-fun res!226843 () Bool)

(assert (=> b!395509 (=> (not res!226843) (not e!239431))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!395509 (= res!226843 (or (= (select (arr!11221 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11221 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!395510 () Bool)

(declare-fun res!226846 () Bool)

(assert (=> b!395510 (=> (not res!226846) (not e!239431))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!395510 (= res!226846 (and (= (size!11574 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11573 _keys!709) (size!11574 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!395511 () Bool)

(declare-fun res!226844 () Bool)

(assert (=> b!395511 (=> (not res!226844) (not e!239431))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!395511 (= res!226844 (validKeyInArray!0 k!794))))

(declare-fun b!395512 () Bool)

(declare-fun res!226842 () Bool)

(assert (=> b!395512 (=> (not res!226842) (not e!239431))))

(assert (=> b!395512 (= res!226842 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11573 _keys!709))))))

(declare-fun b!395513 () Bool)

(declare-fun res!226848 () Bool)

(assert (=> b!395513 (=> (not res!226848) (not e!239431))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23543 (_ BitVec 32)) Bool)

(assert (=> b!395513 (= res!226848 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!395514 () Bool)

(assert (=> b!395514 (= e!239435 (and e!239433 mapRes!16356))))

(declare-fun condMapEmpty!16356 () Bool)

(declare-fun mapDefault!16356 () ValueCell!4571)

