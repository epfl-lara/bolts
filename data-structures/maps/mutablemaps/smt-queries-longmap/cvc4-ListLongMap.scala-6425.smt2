; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82378 () Bool)

(assert start!82378)

(declare-fun b_free!18617 () Bool)

(declare-fun b_next!18617 () Bool)

(assert (=> start!82378 (= b_free!18617 (not b_next!18617))))

(declare-fun tp!64822 () Bool)

(declare-fun b_and!30123 () Bool)

(assert (=> start!82378 (= tp!64822 b_and!30123)))

(declare-fun b!960002 () Bool)

(declare-fun res!642725 () Bool)

(declare-fun e!541193 () Bool)

(assert (=> b!960002 (=> (not res!642725) (not e!541193))))

(declare-datatypes ((array!58765 0))(
  ( (array!58766 (arr!28252 (Array (_ BitVec 32) (_ BitVec 64))) (size!28732 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58765)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58765 (_ BitVec 32)) Bool)

(assert (=> b!960002 (= res!642725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!960004 () Bool)

(declare-fun res!642721 () Bool)

(assert (=> b!960004 (=> (not res!642721) (not e!541193))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!960004 (= res!642721 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28732 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28732 _keys!1668))))))

(declare-fun b!960005 () Bool)

(declare-fun e!541189 () Bool)

(declare-fun e!541190 () Bool)

(declare-fun mapRes!33973 () Bool)

(assert (=> b!960005 (= e!541189 (and e!541190 mapRes!33973))))

(declare-fun condMapEmpty!33973 () Bool)

(declare-datatypes ((V!33421 0))(
  ( (V!33422 (val!10715 Int)) )
))
(declare-datatypes ((ValueCell!10183 0))(
  ( (ValueCellFull!10183 (v!13272 V!33421)) (EmptyCell!10183) )
))
(declare-datatypes ((array!58767 0))(
  ( (array!58768 (arr!28253 (Array (_ BitVec 32) ValueCell!10183)) (size!28733 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58767)

(declare-fun mapDefault!33973 () ValueCell!10183)

