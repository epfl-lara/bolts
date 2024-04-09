; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79380 () Bool)

(assert start!79380)

(declare-fun b_free!17539 () Bool)

(declare-fun b_next!17539 () Bool)

(assert (=> start!79380 (= b_free!17539 (not b_next!17539))))

(declare-fun tp!61061 () Bool)

(declare-fun b_and!28655 () Bool)

(assert (=> start!79380 (= tp!61061 b_and!28655)))

(declare-fun b!931886 () Bool)

(declare-fun e!523370 () Bool)

(declare-fun e!523373 () Bool)

(declare-fun mapRes!31830 () Bool)

(assert (=> b!931886 (= e!523370 (and e!523373 mapRes!31830))))

(declare-fun condMapEmpty!31830 () Bool)

(declare-datatypes ((V!31695 0))(
  ( (V!31696 (val!10074 Int)) )
))
(declare-datatypes ((ValueCell!9542 0))(
  ( (ValueCellFull!9542 (v!12593 V!31695)) (EmptyCell!9542) )
))
(declare-datatypes ((array!56064 0))(
  ( (array!56065 (arr!26972 (Array (_ BitVec 32) ValueCell!9542)) (size!27432 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56064)

(declare-fun mapDefault!31830 () ValueCell!9542)

