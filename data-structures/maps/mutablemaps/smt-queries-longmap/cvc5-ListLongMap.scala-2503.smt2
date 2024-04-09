; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38844 () Bool)

(assert start!38844)

(declare-fun b!405299 () Bool)

(declare-fun res!234007 () Bool)

(declare-fun e!243693 () Bool)

(assert (=> b!405299 (=> (not res!234007) (not e!243693))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!405299 (= res!234007 (validMask!0 mask!1025))))

(declare-fun b!405300 () Bool)

(declare-fun res!234008 () Bool)

(assert (=> b!405300 (=> (not res!234008) (not e!243693))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24369 0))(
  ( (array!24370 (arr!11631 (Array (_ BitVec 32) (_ BitVec 64))) (size!11983 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24369)

(assert (=> b!405300 (= res!234008 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11983 _keys!709))))))

(declare-fun res!234011 () Bool)

(assert (=> start!38844 (=> (not res!234011) (not e!243693))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38844 (= res!234011 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11983 _keys!709))))))

(assert (=> start!38844 e!243693))

(assert (=> start!38844 true))

(declare-datatypes ((V!14779 0))(
  ( (V!14780 (val!5172 Int)) )
))
(declare-datatypes ((ValueCell!4784 0))(
  ( (ValueCellFull!4784 (v!7415 V!14779)) (EmptyCell!4784) )
))
(declare-datatypes ((array!24371 0))(
  ( (array!24372 (arr!11632 (Array (_ BitVec 32) ValueCell!4784)) (size!11984 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24371)

(declare-fun e!243697 () Bool)

(declare-fun array_inv!8496 (array!24371) Bool)

(assert (=> start!38844 (and (array_inv!8496 _values!549) e!243697)))

(declare-fun array_inv!8497 (array!24369) Bool)

(assert (=> start!38844 (array_inv!8497 _keys!709)))

(declare-fun b!405301 () Bool)

(declare-fun e!243696 () Bool)

(declare-fun mapRes!17004 () Bool)

(assert (=> b!405301 (= e!243697 (and e!243696 mapRes!17004))))

(declare-fun condMapEmpty!17004 () Bool)

(declare-fun mapDefault!17004 () ValueCell!4784)

