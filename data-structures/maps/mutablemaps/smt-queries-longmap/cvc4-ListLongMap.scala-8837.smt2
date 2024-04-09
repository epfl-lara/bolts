; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107286 () Bool)

(assert start!107286)

(declare-fun b!1271175 () Bool)

(declare-fun e!724852 () Bool)

(declare-fun tp_is_empty!32939 () Bool)

(assert (=> b!1271175 (= e!724852 tp_is_empty!32939)))

(declare-fun b!1271176 () Bool)

(declare-fun e!724849 () Bool)

(declare-fun e!724853 () Bool)

(declare-fun mapRes!50989 () Bool)

(assert (=> b!1271176 (= e!724849 (and e!724853 mapRes!50989))))

(declare-fun condMapEmpty!50989 () Bool)

(declare-datatypes ((V!49111 0))(
  ( (V!49112 (val!16544 Int)) )
))
(declare-datatypes ((ValueCell!15616 0))(
  ( (ValueCellFull!15616 (v!19179 V!49111)) (EmptyCell!15616) )
))
(declare-datatypes ((array!83091 0))(
  ( (array!83092 (arr!40078 (Array (_ BitVec 32) ValueCell!15616)) (size!40615 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83091)

(declare-fun mapDefault!50989 () ValueCell!15616)

