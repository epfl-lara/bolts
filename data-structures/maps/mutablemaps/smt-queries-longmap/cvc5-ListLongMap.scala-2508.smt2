; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38874 () Bool)

(assert start!38874)

(declare-fun b!405884 () Bool)

(declare-fun res!234454 () Bool)

(declare-fun e!243964 () Bool)

(assert (=> b!405884 (=> (not res!234454) (not e!243964))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24427 0))(
  ( (array!24428 (arr!11660 (Array (_ BitVec 32) (_ BitVec 64))) (size!12012 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24427)

(assert (=> b!405884 (= res!234454 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12012 _keys!709))))))

(declare-fun mapIsEmpty!17049 () Bool)

(declare-fun mapRes!17049 () Bool)

(assert (=> mapIsEmpty!17049 mapRes!17049))

(declare-fun b!405885 () Bool)

(declare-fun res!234457 () Bool)

(assert (=> b!405885 (=> (not res!234457) (not e!243964))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((V!14819 0))(
  ( (V!14820 (val!5187 Int)) )
))
(declare-datatypes ((ValueCell!4799 0))(
  ( (ValueCellFull!4799 (v!7430 V!14819)) (EmptyCell!4799) )
))
(declare-datatypes ((array!24429 0))(
  ( (array!24430 (arr!11661 (Array (_ BitVec 32) ValueCell!4799)) (size!12013 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24429)

(assert (=> b!405885 (= res!234457 (and (= (size!12013 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12012 _keys!709) (size!12013 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!405886 () Bool)

(declare-fun e!243966 () Bool)

(declare-fun tp_is_empty!10285 () Bool)

(assert (=> b!405886 (= e!243966 tp_is_empty!10285)))

(declare-fun b!405887 () Bool)

(declare-fun res!234461 () Bool)

(assert (=> b!405887 (=> (not res!234461) (not e!243964))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24427 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!405887 (= res!234461 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!405888 () Bool)

(declare-fun res!234456 () Bool)

(assert (=> b!405888 (=> (not res!234456) (not e!243964))))

(declare-datatypes ((List!6754 0))(
  ( (Nil!6751) (Cons!6750 (h!7606 (_ BitVec 64)) (t!11936 List!6754)) )
))
(declare-fun arrayNoDuplicates!0 (array!24427 (_ BitVec 32) List!6754) Bool)

(assert (=> b!405888 (= res!234456 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6751))))

(declare-fun b!405889 () Bool)

(declare-fun e!243967 () Bool)

(declare-fun e!243963 () Bool)

(assert (=> b!405889 (= e!243967 (and e!243963 mapRes!17049))))

(declare-fun condMapEmpty!17049 () Bool)

(declare-fun mapDefault!17049 () ValueCell!4799)

