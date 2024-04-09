; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38892 () Bool)

(assert start!38892)

(declare-fun res!234723 () Bool)

(declare-fun e!244125 () Bool)

(assert (=> start!38892 (=> (not res!234723) (not e!244125))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24463 0))(
  ( (array!24464 (arr!11678 (Array (_ BitVec 32) (_ BitVec 64))) (size!12030 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24463)

(assert (=> start!38892 (= res!234723 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12030 _keys!709))))))

(assert (=> start!38892 e!244125))

(assert (=> start!38892 true))

(declare-datatypes ((V!14843 0))(
  ( (V!14844 (val!5196 Int)) )
))
(declare-datatypes ((ValueCell!4808 0))(
  ( (ValueCellFull!4808 (v!7439 V!14843)) (EmptyCell!4808) )
))
(declare-datatypes ((array!24465 0))(
  ( (array!24466 (arr!11679 (Array (_ BitVec 32) ValueCell!4808)) (size!12031 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24465)

(declare-fun e!244126 () Bool)

(declare-fun array_inv!8530 (array!24465) Bool)

(assert (=> start!38892 (and (array_inv!8530 _values!549) e!244126)))

(declare-fun array_inv!8531 (array!24463) Bool)

(assert (=> start!38892 (array_inv!8531 _keys!709)))

(declare-fun b!406235 () Bool)

(declare-fun res!234726 () Bool)

(assert (=> b!406235 (=> (not res!234726) (not e!244125))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24463 (_ BitVec 32)) Bool)

(assert (=> b!406235 (= res!234726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!17076 () Bool)

(declare-fun mapRes!17076 () Bool)

(assert (=> mapIsEmpty!17076 mapRes!17076))

(declare-fun b!406236 () Bool)

(declare-fun e!244124 () Bool)

(assert (=> b!406236 (= e!244126 (and e!244124 mapRes!17076))))

(declare-fun condMapEmpty!17076 () Bool)

(declare-fun mapDefault!17076 () ValueCell!4808)

