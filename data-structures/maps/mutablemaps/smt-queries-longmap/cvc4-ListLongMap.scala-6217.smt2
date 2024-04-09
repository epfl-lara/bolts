; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79468 () Bool)

(assert start!79468)

(declare-fun b_free!17627 () Bool)

(declare-fun b_next!17627 () Bool)

(assert (=> start!79468 (= b_free!17627 (not b_next!17627))))

(declare-fun tp!61326 () Bool)

(declare-fun b_and!28831 () Bool)

(assert (=> start!79468 (= tp!61326 b_and!28831)))

(declare-fun b!933705 () Bool)

(declare-fun e!524307 () Bool)

(declare-fun e!524309 () Bool)

(declare-fun mapRes!31962 () Bool)

(assert (=> b!933705 (= e!524307 (and e!524309 mapRes!31962))))

(declare-fun condMapEmpty!31962 () Bool)

(declare-datatypes ((V!31811 0))(
  ( (V!31812 (val!10118 Int)) )
))
(declare-datatypes ((ValueCell!9586 0))(
  ( (ValueCellFull!9586 (v!12637 V!31811)) (EmptyCell!9586) )
))
(declare-datatypes ((array!56228 0))(
  ( (array!56229 (arr!27054 (Array (_ BitVec 32) ValueCell!9586)) (size!27514 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56228)

(declare-fun mapDefault!31962 () ValueCell!9586)

