; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79898 () Bool)

(assert start!79898)

(declare-fun b_free!17767 () Bool)

(declare-fun b_next!17767 () Bool)

(assert (=> start!79898 (= b_free!17767 (not b_next!17767))))

(declare-fun tp!61765 () Bool)

(declare-fun b_and!29191 () Bool)

(assert (=> start!79898 (= tp!61765 b_and!29191)))

(declare-fun b!939118 () Bool)

(declare-fun e!527513 () Bool)

(declare-fun e!527510 () Bool)

(declare-fun mapRes!32192 () Bool)

(assert (=> b!939118 (= e!527513 (and e!527510 mapRes!32192))))

(declare-fun condMapEmpty!32192 () Bool)

(declare-datatypes ((V!31999 0))(
  ( (V!32000 (val!10188 Int)) )
))
(declare-datatypes ((ValueCell!9656 0))(
  ( (ValueCellFull!9656 (v!12719 V!31999)) (EmptyCell!9656) )
))
(declare-datatypes ((array!56516 0))(
  ( (array!56517 (arr!27192 (Array (_ BitVec 32) ValueCell!9656)) (size!27652 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56516)

(declare-fun mapDefault!32192 () ValueCell!9656)

