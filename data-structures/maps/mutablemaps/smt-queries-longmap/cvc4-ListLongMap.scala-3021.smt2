; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42492 () Bool)

(assert start!42492)

(declare-fun b_free!11939 () Bool)

(declare-fun b_next!11939 () Bool)

(assert (=> start!42492 (= b_free!11939 (not b_next!11939))))

(declare-fun tp!41853 () Bool)

(declare-fun b_and!20425 () Bool)

(assert (=> start!42492 (= tp!41853 b_and!20425)))

(declare-fun b!473826 () Bool)

(declare-fun e!278063 () Bool)

(declare-fun tp_is_empty!13367 () Bool)

(assert (=> b!473826 (= e!278063 tp_is_empty!13367)))

(declare-fun mapNonEmpty!21766 () Bool)

(declare-fun mapRes!21766 () Bool)

(declare-fun tp!41854 () Bool)

(declare-fun e!278058 () Bool)

(assert (=> mapNonEmpty!21766 (= mapRes!21766 (and tp!41854 e!278058))))

(declare-datatypes ((V!18927 0))(
  ( (V!18928 (val!6728 Int)) )
))
(declare-datatypes ((ValueCell!6340 0))(
  ( (ValueCellFull!6340 (v!9016 V!18927)) (EmptyCell!6340) )
))
(declare-datatypes ((array!30451 0))(
  ( (array!30452 (arr!14641 (Array (_ BitVec 32) ValueCell!6340)) (size!14993 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30451)

(declare-fun mapRest!21766 () (Array (_ BitVec 32) ValueCell!6340))

(declare-fun mapValue!21766 () ValueCell!6340)

(declare-fun mapKey!21766 () (_ BitVec 32))

(assert (=> mapNonEmpty!21766 (= (arr!14641 _values!833) (store mapRest!21766 mapKey!21766 mapValue!21766))))

(declare-fun res!283082 () Bool)

(declare-fun e!278062 () Bool)

(assert (=> start!42492 (=> (not res!283082) (not e!278062))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42492 (= res!283082 (validMask!0 mask!1365))))

(assert (=> start!42492 e!278062))

(assert (=> start!42492 tp_is_empty!13367))

(assert (=> start!42492 tp!41853))

(assert (=> start!42492 true))

(declare-datatypes ((array!30453 0))(
  ( (array!30454 (arr!14642 (Array (_ BitVec 32) (_ BitVec 64))) (size!14994 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30453)

(declare-fun array_inv!10552 (array!30453) Bool)

(assert (=> start!42492 (array_inv!10552 _keys!1025)))

(declare-fun e!278061 () Bool)

(declare-fun array_inv!10553 (array!30451) Bool)

(assert (=> start!42492 (and (array_inv!10553 _values!833) e!278061)))

(declare-fun b!473827 () Bool)

(assert (=> b!473827 (= e!278061 (and e!278063 mapRes!21766))))

(declare-fun condMapEmpty!21766 () Bool)

(declare-fun mapDefault!21766 () ValueCell!6340)

