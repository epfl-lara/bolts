; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79810 () Bool)

(assert start!79810)

(declare-fun b_free!17755 () Bool)

(declare-fun b_next!17755 () Bool)

(assert (=> start!79810 (= b_free!17755 (not b_next!17755))))

(declare-fun tp!61725 () Bool)

(declare-fun b_and!29143 () Bool)

(assert (=> start!79810 (= tp!61725 b_and!29143)))

(declare-fun b!938235 () Bool)

(declare-fun e!526951 () Bool)

(declare-fun e!526950 () Bool)

(declare-fun mapRes!32170 () Bool)

(assert (=> b!938235 (= e!526951 (and e!526950 mapRes!32170))))

(declare-fun condMapEmpty!32170 () Bool)

(declare-datatypes ((V!31983 0))(
  ( (V!31984 (val!10182 Int)) )
))
(declare-datatypes ((ValueCell!9650 0))(
  ( (ValueCellFull!9650 (v!12710 V!31983)) (EmptyCell!9650) )
))
(declare-datatypes ((array!56492 0))(
  ( (array!56493 (arr!27181 (Array (_ BitVec 32) ValueCell!9650)) (size!27641 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56492)

(declare-fun mapDefault!32170 () ValueCell!9650)

