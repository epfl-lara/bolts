; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99110 () Bool)

(assert start!99110)

(declare-fun b_free!24679 () Bool)

(declare-fun b_next!24679 () Bool)

(assert (=> start!99110 (= b_free!24679 (not b_next!24679))))

(declare-fun tp!86749 () Bool)

(declare-fun b_and!40221 () Bool)

(assert (=> start!99110 (= tp!86749 b_and!40221)))

(declare-fun b!1164999 () Bool)

(declare-fun res!772699 () Bool)

(declare-fun e!662365 () Bool)

(assert (=> b!1164999 (=> (not res!772699) (not e!662365))))

(declare-datatypes ((array!75202 0))(
  ( (array!75203 (arr!36248 (Array (_ BitVec 32) (_ BitVec 64))) (size!36785 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75202)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44073 0))(
  ( (V!44074 (val!14661 Int)) )
))
(declare-datatypes ((ValueCell!13895 0))(
  ( (ValueCellFull!13895 (v!17299 V!44073)) (EmptyCell!13895) )
))
(declare-datatypes ((array!75204 0))(
  ( (array!75205 (arr!36249 (Array (_ BitVec 32) ValueCell!13895)) (size!36786 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75204)

(assert (=> b!1164999 (= res!772699 (and (= (size!36786 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36785 _keys!1208) (size!36786 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!45638 () Bool)

(declare-fun mapRes!45638 () Bool)

(declare-fun tp!86748 () Bool)

(declare-fun e!662362 () Bool)

(assert (=> mapNonEmpty!45638 (= mapRes!45638 (and tp!86748 e!662362))))

(declare-fun mapValue!45638 () ValueCell!13895)

(declare-fun mapRest!45638 () (Array (_ BitVec 32) ValueCell!13895))

(declare-fun mapKey!45638 () (_ BitVec 32))

(assert (=> mapNonEmpty!45638 (= (arr!36249 _values!996) (store mapRest!45638 mapKey!45638 mapValue!45638))))

(declare-fun b!1165000 () Bool)

(declare-fun res!772701 () Bool)

(assert (=> b!1165000 (=> (not res!772701) (not e!662365))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75202 (_ BitVec 32)) Bool)

(assert (=> b!1165000 (= res!772701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1165001 () Bool)

(declare-fun e!662361 () Bool)

(assert (=> b!1165001 (= e!662365 e!662361)))

(declare-fun res!772694 () Bool)

(assert (=> b!1165001 (=> (not res!772694) (not e!662361))))

(declare-fun lt!524756 () array!75202)

(assert (=> b!1165001 (= res!772694 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524756 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1165001 (= lt!524756 (array!75203 (store (arr!36248 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36785 _keys!1208)))))

(declare-fun b!1165002 () Bool)

(declare-fun res!772697 () Bool)

(assert (=> b!1165002 (=> (not res!772697) (not e!662365))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1165002 (= res!772697 (validKeyInArray!0 k!934))))

(declare-fun b!1165003 () Bool)

(declare-fun res!772698 () Bool)

(assert (=> b!1165003 (=> (not res!772698) (not e!662365))))

(assert (=> b!1165003 (= res!772698 (= (select (arr!36248 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!45638 () Bool)

(assert (=> mapIsEmpty!45638 mapRes!45638))

(declare-fun b!1165004 () Bool)

(declare-fun res!772693 () Bool)

(assert (=> b!1165004 (=> (not res!772693) (not e!662365))))

(assert (=> b!1165004 (= res!772693 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36785 _keys!1208))))))

(declare-fun b!1165005 () Bool)

(declare-fun e!662367 () Bool)

(declare-fun tp_is_empty!29209 () Bool)

(assert (=> b!1165005 (= e!662367 tp_is_empty!29209)))

(declare-fun b!1165006 () Bool)

(assert (=> b!1165006 (= e!662362 tp_is_empty!29209)))

(declare-fun b!1165007 () Bool)

(declare-fun e!662363 () Bool)

(assert (=> b!1165007 (= e!662363 (and e!662367 mapRes!45638))))

(declare-fun condMapEmpty!45638 () Bool)

(declare-fun mapDefault!45638 () ValueCell!13895)

