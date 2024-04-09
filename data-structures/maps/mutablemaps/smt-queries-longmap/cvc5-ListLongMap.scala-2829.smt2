; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40946 () Bool)

(assert start!40946)

(declare-fun b_free!10873 () Bool)

(declare-fun b_next!10873 () Bool)

(assert (=> start!40946 (= b_free!10873 (not b_next!10873))))

(declare-fun tp!38445 () Bool)

(declare-fun b_and!19033 () Bool)

(assert (=> start!40946 (= tp!38445 b_and!19033)))

(declare-fun b!455072 () Bool)

(declare-fun e!266103 () Bool)

(declare-fun tp_is_empty!12211 () Bool)

(assert (=> b!455072 (= e!266103 tp_is_empty!12211)))

(declare-fun b!455073 () Bool)

(declare-fun res!271388 () Bool)

(declare-fun e!266107 () Bool)

(assert (=> b!455073 (=> (not res!271388) (not e!266107))))

(declare-datatypes ((array!28191 0))(
  ( (array!28192 (arr!13536 (Array (_ BitVec 32) (_ BitVec 64))) (size!13888 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28191)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!455073 (= res!271388 (or (= (select (arr!13536 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13536 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!455074 () Bool)

(declare-fun res!271387 () Bool)

(assert (=> b!455074 (=> (not res!271387) (not e!266107))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28191 (_ BitVec 32)) Bool)

(assert (=> b!455074 (= res!271387 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!455075 () Bool)

(declare-fun e!266105 () Bool)

(declare-fun e!266108 () Bool)

(declare-fun mapRes!19957 () Bool)

(assert (=> b!455075 (= e!266105 (and e!266108 mapRes!19957))))

(declare-fun condMapEmpty!19957 () Bool)

(declare-datatypes ((V!17387 0))(
  ( (V!17388 (val!6150 Int)) )
))
(declare-datatypes ((ValueCell!5762 0))(
  ( (ValueCellFull!5762 (v!8412 V!17387)) (EmptyCell!5762) )
))
(declare-datatypes ((array!28193 0))(
  ( (array!28194 (arr!13537 (Array (_ BitVec 32) ValueCell!5762)) (size!13889 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28193)

(declare-fun mapDefault!19957 () ValueCell!5762)

