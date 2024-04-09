; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101108 () Bool)

(assert start!101108)

(declare-fun b_free!26033 () Bool)

(declare-fun b_next!26033 () Bool)

(assert (=> start!101108 (= b_free!26033 (not b_next!26033))))

(declare-fun tp!91118 () Bool)

(declare-fun b_and!43175 () Bool)

(assert (=> start!101108 (= tp!91118 b_and!43175)))

(declare-fun b!1211301 () Bool)

(declare-fun res!804787 () Bool)

(declare-fun e!687972 () Bool)

(assert (=> b!1211301 (=> (not res!804787) (not e!687972))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1211301 (= res!804787 (validMask!0 mask!1564))))

(declare-fun b!1211302 () Bool)

(declare-fun res!804794 () Bool)

(assert (=> b!1211302 (=> (not res!804794) (not e!687972))))

(declare-datatypes ((array!78232 0))(
  ( (array!78233 (arr!37748 (Array (_ BitVec 32) (_ BitVec 64))) (size!38285 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78232)

(declare-datatypes ((List!26767 0))(
  ( (Nil!26764) (Cons!26763 (h!27972 (_ BitVec 64)) (t!39787 List!26767)) )
))
(declare-fun arrayNoDuplicates!0 (array!78232 (_ BitVec 32) List!26767) Bool)

(assert (=> b!1211302 (= res!804794 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26764))))

(declare-fun b!1211303 () Bool)

(declare-datatypes ((Unit!40077 0))(
  ( (Unit!40078) )
))
(declare-fun e!687973 () Unit!40077)

(declare-fun Unit!40079 () Unit!40077)

(assert (=> b!1211303 (= e!687973 Unit!40079)))

(declare-fun b!1211304 () Bool)

(declare-fun e!687967 () Bool)

(declare-fun tp_is_empty!30737 () Bool)

(assert (=> b!1211304 (= e!687967 tp_is_empty!30737)))

(declare-fun b!1211305 () Bool)

(declare-fun e!687960 () Bool)

(declare-fun e!687963 () Bool)

(declare-fun mapRes!47977 () Bool)

(assert (=> b!1211305 (= e!687960 (and e!687963 mapRes!47977))))

(declare-fun condMapEmpty!47977 () Bool)

(declare-datatypes ((V!46109 0))(
  ( (V!46110 (val!15425 Int)) )
))
(declare-datatypes ((ValueCell!14659 0))(
  ( (ValueCellFull!14659 (v!18078 V!46109)) (EmptyCell!14659) )
))
(declare-datatypes ((array!78234 0))(
  ( (array!78235 (arr!37749 (Array (_ BitVec 32) ValueCell!14659)) (size!38286 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78234)

(declare-fun mapDefault!47977 () ValueCell!14659)

