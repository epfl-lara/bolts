; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37772 () Bool)

(assert start!37772)

(declare-fun b_free!8867 () Bool)

(declare-fun b_next!8867 () Bool)

(assert (=> start!37772 (= b_free!8867 (not b_next!8867))))

(declare-fun tp!31352 () Bool)

(declare-fun b_and!16127 () Bool)

(assert (=> start!37772 (= tp!31352 b_and!16127)))

(declare-fun b!387416 () Bool)

(declare-fun res!221467 () Bool)

(declare-fun e!234865 () Bool)

(assert (=> b!387416 (=> (not res!221467) (not e!234865))))

(declare-datatypes ((array!22947 0))(
  ( (array!22948 (arr!10939 (Array (_ BitVec 32) (_ BitVec 64))) (size!11291 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22947)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!387416 (= res!221467 (or (= (select (arr!10939 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10939 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!387417 () Bool)

(declare-fun e!234867 () Bool)

(declare-fun tp_is_empty!9539 () Bool)

(assert (=> b!387417 (= e!234867 tp_is_empty!9539)))

(declare-fun b!387418 () Bool)

(declare-fun e!234866 () Bool)

(declare-fun e!234862 () Bool)

(declare-fun mapRes!15873 () Bool)

(assert (=> b!387418 (= e!234866 (and e!234862 mapRes!15873))))

(declare-fun condMapEmpty!15873 () Bool)

(declare-datatypes ((V!13823 0))(
  ( (V!13824 (val!4814 Int)) )
))
(declare-datatypes ((ValueCell!4426 0))(
  ( (ValueCellFull!4426 (v!7007 V!13823)) (EmptyCell!4426) )
))
(declare-datatypes ((array!22949 0))(
  ( (array!22950 (arr!10940 (Array (_ BitVec 32) ValueCell!4426)) (size!11292 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22949)

(declare-fun mapDefault!15873 () ValueCell!4426)

