; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81972 () Bool)

(assert start!81972)

(declare-fun b!955729 () Bool)

(declare-fun e!538429 () Bool)

(declare-fun e!538430 () Bool)

(declare-fun mapRes!33436 () Bool)

(assert (=> b!955729 (= e!538429 (and e!538430 mapRes!33436))))

(declare-fun condMapEmpty!33436 () Bool)

(declare-datatypes ((V!32961 0))(
  ( (V!32962 (val!10542 Int)) )
))
(declare-datatypes ((ValueCell!10010 0))(
  ( (ValueCellFull!10010 (v!13097 V!32961)) (EmptyCell!10010) )
))
(declare-datatypes ((array!58091 0))(
  ( (array!58092 (arr!27921 (Array (_ BitVec 32) ValueCell!10010)) (size!28401 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58091)

(declare-fun mapDefault!33436 () ValueCell!10010)

