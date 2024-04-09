; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33668 () Bool)

(assert start!33668)

(declare-fun b_free!6895 () Bool)

(declare-fun b_next!6895 () Bool)

(assert (=> start!33668 (= b_free!6895 (not b_next!6895))))

(declare-fun tp!24189 () Bool)

(declare-fun b_and!14093 () Bool)

(assert (=> start!33668 (= tp!24189 b_and!14093)))

(declare-fun b!334069 () Bool)

(declare-fun e!205094 () Bool)

(declare-fun e!205098 () Bool)

(declare-fun mapRes!11667 () Bool)

(assert (=> b!334069 (= e!205094 (and e!205098 mapRes!11667))))

(declare-fun condMapEmpty!11667 () Bool)

(declare-datatypes ((V!10107 0))(
  ( (V!10108 (val!3468 Int)) )
))
(declare-datatypes ((ValueCell!3080 0))(
  ( (ValueCellFull!3080 (v!5626 V!10107)) (EmptyCell!3080) )
))
(declare-datatypes ((array!17285 0))(
  ( (array!17286 (arr!8170 (Array (_ BitVec 32) ValueCell!3080)) (size!8522 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17285)

(declare-fun mapDefault!11667 () ValueCell!3080)

