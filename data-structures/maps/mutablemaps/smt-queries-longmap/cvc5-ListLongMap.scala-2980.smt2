; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42164 () Bool)

(assert start!42164)

(declare-fun b_free!11689 () Bool)

(declare-fun b_next!11689 () Bool)

(assert (=> start!42164 (= b_free!11689 (not b_next!11689))))

(declare-fun tp!41088 () Bool)

(declare-fun b_and!20129 () Bool)

(assert (=> start!42164 (= tp!41088 b_and!20129)))

(declare-fun mapNonEmpty!21376 () Bool)

(declare-fun mapRes!21376 () Bool)

(declare-fun tp!41089 () Bool)

(declare-fun e!275617 () Bool)

(assert (=> mapNonEmpty!21376 (= mapRes!21376 (and tp!41089 e!275617))))

(declare-datatypes ((V!18595 0))(
  ( (V!18596 (val!6603 Int)) )
))
(declare-datatypes ((ValueCell!6215 0))(
  ( (ValueCellFull!6215 (v!8890 V!18595)) (EmptyCell!6215) )
))
(declare-datatypes ((array!29963 0))(
  ( (array!29964 (arr!14402 (Array (_ BitVec 32) ValueCell!6215)) (size!14754 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29963)

(declare-fun mapRest!21376 () (Array (_ BitVec 32) ValueCell!6215))

(declare-fun mapKey!21376 () (_ BitVec 32))

(declare-fun mapValue!21376 () ValueCell!6215)

(assert (=> mapNonEmpty!21376 (= (arr!14402 _values!833) (store mapRest!21376 mapKey!21376 mapValue!21376))))

(declare-fun b!470420 () Bool)

(declare-fun tp_is_empty!13117 () Bool)

(assert (=> b!470420 (= e!275617 tp_is_empty!13117)))

(declare-fun b!470421 () Bool)

(declare-fun e!275616 () Bool)

(assert (=> b!470421 (= e!275616 tp_is_empty!13117)))

(declare-fun b!470422 () Bool)

(declare-fun e!275618 () Bool)

(assert (=> b!470422 (= e!275618 (and e!275616 mapRes!21376))))

(declare-fun condMapEmpty!21376 () Bool)

(declare-fun mapDefault!21376 () ValueCell!6215)

