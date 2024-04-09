; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81766 () Bool)

(assert start!81766)

(declare-fun b!953511 () Bool)

(declare-fun e!537119 () Bool)

(declare-fun tp_is_empty!20821 () Bool)

(assert (=> b!953511 (= e!537119 tp_is_empty!20821)))

(declare-fun b!953512 () Bool)

(declare-fun e!537120 () Bool)

(declare-fun mapRes!33178 () Bool)

(assert (=> b!953512 (= e!537120 (and e!537119 mapRes!33178))))

(declare-fun condMapEmpty!33178 () Bool)

(declare-datatypes ((V!32745 0))(
  ( (V!32746 (val!10461 Int)) )
))
(declare-datatypes ((ValueCell!9929 0))(
  ( (ValueCellFull!9929 (v!13015 V!32745)) (EmptyCell!9929) )
))
(declare-datatypes ((array!57767 0))(
  ( (array!57768 (arr!27764 (Array (_ BitVec 32) ValueCell!9929)) (size!28244 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57767)

(declare-fun mapDefault!33178 () ValueCell!9929)

