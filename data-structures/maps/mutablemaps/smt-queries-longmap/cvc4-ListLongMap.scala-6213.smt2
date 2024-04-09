; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79444 () Bool)

(assert start!79444)

(declare-fun b_free!17603 () Bool)

(declare-fun b_next!17603 () Bool)

(assert (=> start!79444 (= b_free!17603 (not b_next!17603))))

(declare-fun tp!61254 () Bool)

(declare-fun b_and!28783 () Bool)

(assert (=> start!79444 (= tp!61254 b_and!28783)))

(declare-fun b!933197 () Bool)

(declare-fun e!524042 () Bool)

(declare-fun tp_is_empty!20111 () Bool)

(assert (=> b!933197 (= e!524042 tp_is_empty!20111)))

(declare-fun b!933198 () Bool)

(declare-fun res!628662 () Bool)

(declare-fun e!524047 () Bool)

(assert (=> b!933198 (=> (not res!628662) (not e!524047))))

(declare-datatypes ((array!56182 0))(
  ( (array!56183 (arr!27031 (Array (_ BitVec 32) (_ BitVec 64))) (size!27491 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56182)

(declare-datatypes ((List!19161 0))(
  ( (Nil!19158) (Cons!19157 (h!20303 (_ BitVec 64)) (t!27316 List!19161)) )
))
(declare-fun arrayNoDuplicates!0 (array!56182 (_ BitVec 32) List!19161) Bool)

(assert (=> b!933198 (= res!628662 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19158))))

(declare-fun b!933199 () Bool)

(declare-fun e!524048 () Bool)

(declare-fun e!524046 () Bool)

(declare-fun mapRes!31926 () Bool)

(assert (=> b!933199 (= e!524048 (and e!524046 mapRes!31926))))

(declare-fun condMapEmpty!31926 () Bool)

(declare-datatypes ((V!31779 0))(
  ( (V!31780 (val!10106 Int)) )
))
(declare-datatypes ((ValueCell!9574 0))(
  ( (ValueCellFull!9574 (v!12625 V!31779)) (EmptyCell!9574) )
))
(declare-datatypes ((array!56184 0))(
  ( (array!56185 (arr!27032 (Array (_ BitVec 32) ValueCell!9574)) (size!27492 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56184)

(declare-fun mapDefault!31926 () ValueCell!9574)

