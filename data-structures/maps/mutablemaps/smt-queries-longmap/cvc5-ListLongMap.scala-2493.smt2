; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38784 () Bool)

(assert start!38784)

(declare-fun b!404129 () Bool)

(declare-fun res!233110 () Bool)

(declare-fun e!243155 () Bool)

(assert (=> b!404129 (=> (not res!233110) (not e!243155))))

(declare-datatypes ((array!24257 0))(
  ( (array!24258 (arr!11575 (Array (_ BitVec 32) (_ BitVec 64))) (size!11927 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24257)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!404129 (= res!233110 (or (= (select (arr!11575 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11575 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!404130 () Bool)

(declare-fun res!233104 () Bool)

(assert (=> b!404130 (=> (not res!233104) (not e!243155))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24257 (_ BitVec 32)) Bool)

(assert (=> b!404130 (= res!233104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!233108 () Bool)

(assert (=> start!38784 (=> (not res!233108) (not e!243155))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38784 (= res!233108 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11927 _keys!709))))))

(assert (=> start!38784 e!243155))

(assert (=> start!38784 true))

(declare-datatypes ((V!14699 0))(
  ( (V!14700 (val!5142 Int)) )
))
(declare-datatypes ((ValueCell!4754 0))(
  ( (ValueCellFull!4754 (v!7385 V!14699)) (EmptyCell!4754) )
))
(declare-datatypes ((array!24259 0))(
  ( (array!24260 (arr!11576 (Array (_ BitVec 32) ValueCell!4754)) (size!11928 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24259)

(declare-fun e!243154 () Bool)

(declare-fun array_inv!8458 (array!24259) Bool)

(assert (=> start!38784 (and (array_inv!8458 _values!549) e!243154)))

(declare-fun array_inv!8459 (array!24257) Bool)

(assert (=> start!38784 (array_inv!8459 _keys!709)))

(declare-fun mapIsEmpty!16914 () Bool)

(declare-fun mapRes!16914 () Bool)

(assert (=> mapIsEmpty!16914 mapRes!16914))

(declare-fun b!404131 () Bool)

(declare-fun res!233105 () Bool)

(assert (=> b!404131 (=> (not res!233105) (not e!243155))))

(declare-datatypes ((List!6718 0))(
  ( (Nil!6715) (Cons!6714 (h!7570 (_ BitVec 64)) (t!11900 List!6718)) )
))
(declare-fun arrayNoDuplicates!0 (array!24257 (_ BitVec 32) List!6718) Bool)

(assert (=> b!404131 (= res!233105 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6715))))

(declare-fun b!404132 () Bool)

(declare-fun res!233103 () Bool)

(assert (=> b!404132 (=> (not res!233103) (not e!243155))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!404132 (= res!233103 (validKeyInArray!0 k!794))))

(declare-fun b!404133 () Bool)

(declare-fun e!243156 () Bool)

(assert (=> b!404133 (= e!243154 (and e!243156 mapRes!16914))))

(declare-fun condMapEmpty!16914 () Bool)

(declare-fun mapDefault!16914 () ValueCell!4754)

