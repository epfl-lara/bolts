; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37648 () Bool)

(assert start!37648)

(declare-fun mapNonEmpty!15687 () Bool)

(declare-fun mapRes!15687 () Bool)

(declare-fun tp!31014 () Bool)

(declare-fun e!233781 () Bool)

(assert (=> mapNonEmpty!15687 (= mapRes!15687 (and tp!31014 e!233781))))

(declare-datatypes ((V!13659 0))(
  ( (V!13660 (val!4752 Int)) )
))
(declare-datatypes ((ValueCell!4364 0))(
  ( (ValueCellFull!4364 (v!6945 V!13659)) (EmptyCell!4364) )
))
(declare-datatypes ((array!22713 0))(
  ( (array!22714 (arr!10822 (Array (_ BitVec 32) ValueCell!4364)) (size!11174 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22713)

(declare-fun mapRest!15687 () (Array (_ BitVec 32) ValueCell!4364))

(declare-fun mapKey!15687 () (_ BitVec 32))

(declare-fun mapValue!15687 () ValueCell!4364)

(assert (=> mapNonEmpty!15687 (= (arr!10822 _values!506) (store mapRest!15687 mapKey!15687 mapValue!15687))))

(declare-fun mapIsEmpty!15687 () Bool)

(assert (=> mapIsEmpty!15687 mapRes!15687))

(declare-fun b!385191 () Bool)

(declare-fun e!233784 () Bool)

(declare-fun e!233783 () Bool)

(assert (=> b!385191 (= e!233784 (and e!233783 mapRes!15687))))

(declare-fun condMapEmpty!15687 () Bool)

(declare-fun mapDefault!15687 () ValueCell!4364)

