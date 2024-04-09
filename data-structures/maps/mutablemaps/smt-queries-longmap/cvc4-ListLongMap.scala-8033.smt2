; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99078 () Bool)

(assert start!99078)

(declare-fun b_free!24647 () Bool)

(declare-fun b_next!24647 () Bool)

(assert (=> start!99078 (= b_free!24647 (not b_next!24647))))

(declare-fun tp!86653 () Bool)

(declare-fun b_and!40157 () Bool)

(assert (=> start!99078 (= tp!86653 b_and!40157)))

(declare-fun b!1164294 () Bool)

(declare-fun res!772171 () Bool)

(declare-fun e!662028 () Bool)

(assert (=> b!1164294 (=> (not res!772171) (not e!662028))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1164294 (= res!772171 (validKeyInArray!0 k!934))))

(declare-fun b!1164295 () Bool)

(declare-fun res!772170 () Bool)

(assert (=> b!1164295 (=> (not res!772170) (not e!662028))))

(declare-datatypes ((array!75138 0))(
  ( (array!75139 (arr!36216 (Array (_ BitVec 32) (_ BitVec 64))) (size!36753 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75138)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75138 (_ BitVec 32)) Bool)

(assert (=> b!1164295 (= res!772170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1164296 () Bool)

(declare-fun res!772175 () Bool)

(declare-fun e!662026 () Bool)

(assert (=> b!1164296 (=> (not res!772175) (not e!662026))))

(declare-fun lt!524563 () array!75138)

(declare-datatypes ((List!25526 0))(
  ( (Nil!25523) (Cons!25522 (h!26731 (_ BitVec 64)) (t!37172 List!25526)) )
))
(declare-fun arrayNoDuplicates!0 (array!75138 (_ BitVec 32) List!25526) Bool)

(assert (=> b!1164296 (= res!772175 (arrayNoDuplicates!0 lt!524563 #b00000000000000000000000000000000 Nil!25523))))

(declare-fun b!1164297 () Bool)

(declare-fun e!662027 () Bool)

(declare-fun tp_is_empty!29177 () Bool)

(assert (=> b!1164297 (= e!662027 tp_is_empty!29177)))

(declare-fun b!1164298 () Bool)

(declare-fun e!662025 () Bool)

(assert (=> b!1164298 (= e!662025 tp_is_empty!29177)))

(declare-fun b!1164299 () Bool)

(declare-fun e!662031 () Bool)

(declare-fun mapRes!45590 () Bool)

(assert (=> b!1164299 (= e!662031 (and e!662025 mapRes!45590))))

(declare-fun condMapEmpty!45590 () Bool)

(declare-datatypes ((V!44029 0))(
  ( (V!44030 (val!14645 Int)) )
))
(declare-datatypes ((ValueCell!13879 0))(
  ( (ValueCellFull!13879 (v!17283 V!44029)) (EmptyCell!13879) )
))
(declare-datatypes ((array!75140 0))(
  ( (array!75141 (arr!36217 (Array (_ BitVec 32) ValueCell!13879)) (size!36754 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75140)

(declare-fun mapDefault!45590 () ValueCell!13879)

