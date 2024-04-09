; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113046 () Bool)

(assert start!113046)

(declare-fun b!1339362 () Bool)

(declare-fun e!762911 () Bool)

(assert (=> b!1339362 (= e!762911 false)))

(declare-fun lt!593827 () Bool)

(declare-datatypes ((array!90941 0))(
  ( (array!90942 (arr!43922 (Array (_ BitVec 32) (_ BitVec 64))) (size!44473 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90941)

(declare-datatypes ((List!31280 0))(
  ( (Nil!31277) (Cons!31276 (h!32485 (_ BitVec 64)) (t!45619 List!31280)) )
))
(declare-fun arrayNoDuplicates!0 (array!90941 (_ BitVec 32) List!31280) Bool)

(assert (=> b!1339362 (= lt!593827 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31277))))

(declare-fun b!1339363 () Bool)

(declare-fun res!888590 () Bool)

(assert (=> b!1339363 (=> (not res!888590) (not e!762911))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90941 (_ BitVec 32)) Bool)

(assert (=> b!1339363 (= res!888590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339364 () Bool)

(declare-fun e!762910 () Bool)

(declare-fun tp_is_empty!37061 () Bool)

(assert (=> b!1339364 (= e!762910 tp_is_empty!37061)))

(declare-fun res!888588 () Bool)

(assert (=> start!113046 (=> (not res!888588) (not e!762911))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113046 (= res!888588 (validMask!0 mask!1977))))

(assert (=> start!113046 e!762911))

(assert (=> start!113046 true))

(declare-datatypes ((V!54517 0))(
  ( (V!54518 (val!18605 Int)) )
))
(declare-datatypes ((ValueCell!17632 0))(
  ( (ValueCellFull!17632 (v!21251 V!54517)) (EmptyCell!17632) )
))
(declare-datatypes ((array!90943 0))(
  ( (array!90944 (arr!43923 (Array (_ BitVec 32) ValueCell!17632)) (size!44474 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90943)

(declare-fun e!762909 () Bool)

(declare-fun array_inv!33039 (array!90943) Bool)

(assert (=> start!113046 (and (array_inv!33039 _values!1303) e!762909)))

(declare-fun array_inv!33040 (array!90941) Bool)

(assert (=> start!113046 (array_inv!33040 _keys!1571)))

(declare-fun b!1339365 () Bool)

(declare-fun e!762908 () Bool)

(declare-fun mapRes!57298 () Bool)

(assert (=> b!1339365 (= e!762909 (and e!762908 mapRes!57298))))

(declare-fun condMapEmpty!57298 () Bool)

(declare-fun mapDefault!57298 () ValueCell!17632)

