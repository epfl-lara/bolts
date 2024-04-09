; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113630 () Bool)

(assert start!113630)

(declare-fun b_free!31561 () Bool)

(declare-fun b_next!31561 () Bool)

(assert (=> start!113630 (= b_free!31561 (not b_next!31561))))

(declare-fun tp!110495 () Bool)

(declare-fun b_and!50929 () Bool)

(assert (=> start!113630 (= tp!110495 b_and!50929)))

(declare-fun b!1348383 () Bool)

(declare-fun e!767103 () Bool)

(declare-fun e!767102 () Bool)

(declare-fun mapRes!58055 () Bool)

(assert (=> b!1348383 (= e!767103 (and e!767102 mapRes!58055))))

(declare-fun condMapEmpty!58055 () Bool)

(declare-datatypes ((V!55185 0))(
  ( (V!55186 (val!18855 Int)) )
))
(declare-datatypes ((ValueCell!17882 0))(
  ( (ValueCellFull!17882 (v!21505 V!55185)) (EmptyCell!17882) )
))
(declare-datatypes ((array!91913 0))(
  ( (array!91914 (arr!44406 (Array (_ BitVec 32) ValueCell!17882)) (size!44957 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91913)

(declare-fun mapDefault!58055 () ValueCell!17882)

