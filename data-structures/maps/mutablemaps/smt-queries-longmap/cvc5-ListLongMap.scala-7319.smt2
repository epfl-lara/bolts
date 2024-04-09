; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93588 () Bool)

(assert start!93588)

(declare-fun b!1058871 () Bool)

(declare-fun e!602558 () Bool)

(declare-fun tp_is_empty!24901 () Bool)

(assert (=> b!1058871 (= e!602558 tp_is_empty!24901)))

(declare-fun mapIsEmpty!39001 () Bool)

(declare-fun mapRes!39001 () Bool)

(assert (=> mapIsEmpty!39001 mapRes!39001))

(declare-fun mapNonEmpty!39001 () Bool)

(declare-fun tp!74808 () Bool)

(declare-fun e!602559 () Bool)

(assert (=> mapNonEmpty!39001 (= mapRes!39001 (and tp!74808 e!602559))))

(declare-datatypes ((V!38337 0))(
  ( (V!38338 (val!12501 Int)) )
))
(declare-datatypes ((ValueCell!11747 0))(
  ( (ValueCellFull!11747 (v!15111 V!38337)) (EmptyCell!11747) )
))
(declare-fun mapValue!39001 () ValueCell!11747)

(declare-fun mapKey!39001 () (_ BitVec 32))

(declare-datatypes ((array!66810 0))(
  ( (array!66811 (arr!32116 (Array (_ BitVec 32) ValueCell!11747)) (size!32653 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66810)

(declare-fun mapRest!39001 () (Array (_ BitVec 32) ValueCell!11747))

(assert (=> mapNonEmpty!39001 (= (arr!32116 _values!955) (store mapRest!39001 mapKey!39001 mapValue!39001))))

(declare-fun b!1058872 () Bool)

(declare-fun e!602560 () Bool)

(assert (=> b!1058872 (= e!602560 (and e!602558 mapRes!39001))))

(declare-fun condMapEmpty!39001 () Bool)

(declare-fun mapDefault!39001 () ValueCell!11747)

