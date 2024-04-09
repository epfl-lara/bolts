; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93892 () Bool)

(assert start!93892)

(declare-fun b_free!21329 () Bool)

(declare-fun b_next!21329 () Bool)

(assert (=> start!93892 (= b_free!21329 (not b_next!21329))))

(declare-fun tp!75410 () Bool)

(declare-fun b_and!34061 () Bool)

(assert (=> start!93892 (= tp!75410 b_and!34061)))

(declare-fun mapIsEmpty!39379 () Bool)

(declare-fun mapRes!39379 () Bool)

(assert (=> mapIsEmpty!39379 mapRes!39379))

(declare-fun b!1061466 () Bool)

(declare-fun e!604517 () Bool)

(declare-fun e!604515 () Bool)

(assert (=> b!1061466 (= e!604517 (and e!604515 mapRes!39379))))

(declare-fun condMapEmpty!39379 () Bool)

(declare-datatypes ((V!38653 0))(
  ( (V!38654 (val!12620 Int)) )
))
(declare-datatypes ((ValueCell!11866 0))(
  ( (ValueCellFull!11866 (v!15231 V!38653)) (EmptyCell!11866) )
))
(declare-datatypes ((array!67262 0))(
  ( (array!67263 (arr!32335 (Array (_ BitVec 32) ValueCell!11866)) (size!32872 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67262)

(declare-fun mapDefault!39379 () ValueCell!11866)

