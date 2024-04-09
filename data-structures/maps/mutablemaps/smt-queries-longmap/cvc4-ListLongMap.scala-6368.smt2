; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81976 () Bool)

(assert start!81976)

(declare-fun b!955765 () Bool)

(declare-fun e!538459 () Bool)

(declare-fun e!538461 () Bool)

(declare-fun mapRes!33442 () Bool)

(assert (=> b!955765 (= e!538459 (and e!538461 mapRes!33442))))

(declare-fun condMapEmpty!33442 () Bool)

(declare-datatypes ((V!32965 0))(
  ( (V!32966 (val!10544 Int)) )
))
(declare-datatypes ((ValueCell!10012 0))(
  ( (ValueCellFull!10012 (v!13099 V!32965)) (EmptyCell!10012) )
))
(declare-datatypes ((array!58097 0))(
  ( (array!58098 (arr!27924 (Array (_ BitVec 32) ValueCell!10012)) (size!28404 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58097)

(declare-fun mapDefault!33442 () ValueCell!10012)

