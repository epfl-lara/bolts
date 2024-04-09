; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99710 () Bool)

(assert start!99710)

(declare-fun b_free!25253 () Bool)

(declare-fun b_next!25253 () Bool)

(assert (=> start!99710 (= b_free!25253 (not b_next!25253))))

(declare-fun tp!88473 () Bool)

(declare-fun b_and!41387 () Bool)

(assert (=> start!99710 (= tp!88473 b_and!41387)))

(declare-fun b!1182065 () Bool)

(declare-fun res!785647 () Bool)

(declare-fun e!672094 () Bool)

(assert (=> b!1182065 (=> (not res!785647) (not e!672094))))

(declare-datatypes ((array!76334 0))(
  ( (array!76335 (arr!36813 (Array (_ BitVec 32) (_ BitVec 64))) (size!37350 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76334)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1182065 (= res!785647 (= (select (arr!36813 _keys!1208) i!673) k!934))))

(declare-fun b!1182067 () Bool)

(declare-fun e!672089 () Bool)

(assert (=> b!1182067 (= e!672094 e!672089)))

(declare-fun res!785651 () Bool)

(assert (=> b!1182067 (=> (not res!785651) (not e!672089))))

(declare-fun lt!534920 () array!76334)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76334 (_ BitVec 32)) Bool)

(assert (=> b!1182067 (= res!785651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!534920 mask!1564))))

(assert (=> b!1182067 (= lt!534920 (array!76335 (store (arr!36813 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37350 _keys!1208)))))

(declare-fun b!1182068 () Bool)

(declare-fun res!785641 () Bool)

(assert (=> b!1182068 (=> (not res!785641) (not e!672094))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1182068 (= res!785641 (validKeyInArray!0 k!934))))

(declare-fun b!1182069 () Bool)

(declare-fun res!785642 () Bool)

(assert (=> b!1182069 (=> (not res!785642) (not e!672094))))

(assert (=> b!1182069 (= res!785642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!46502 () Bool)

(declare-fun mapRes!46502 () Bool)

(declare-fun tp!88474 () Bool)

(declare-fun e!672087 () Bool)

(assert (=> mapNonEmpty!46502 (= mapRes!46502 (and tp!88474 e!672087))))

(declare-datatypes ((V!44837 0))(
  ( (V!44838 (val!14948 Int)) )
))
(declare-datatypes ((ValueCell!14182 0))(
  ( (ValueCellFull!14182 (v!17587 V!44837)) (EmptyCell!14182) )
))
(declare-fun mapValue!46502 () ValueCell!14182)

(declare-fun mapKey!46502 () (_ BitVec 32))

(declare-datatypes ((array!76336 0))(
  ( (array!76337 (arr!36814 (Array (_ BitVec 32) ValueCell!14182)) (size!37351 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76336)

(declare-fun mapRest!46502 () (Array (_ BitVec 32) ValueCell!14182))

(assert (=> mapNonEmpty!46502 (= (arr!36814 _values!996) (store mapRest!46502 mapKey!46502 mapValue!46502))))

(declare-fun b!1182070 () Bool)

(declare-fun e!672095 () Bool)

(declare-fun e!672086 () Bool)

(assert (=> b!1182070 (= e!672095 (and e!672086 mapRes!46502))))

(declare-fun condMapEmpty!46502 () Bool)

(declare-fun mapDefault!46502 () ValueCell!14182)

