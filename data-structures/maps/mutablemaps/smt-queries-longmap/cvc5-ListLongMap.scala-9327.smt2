; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111434 () Bool)

(assert start!111434)

(declare-fun b_free!30055 () Bool)

(declare-fun b_next!30055 () Bool)

(assert (=> start!111434 (= b_free!30055 (not b_next!30055))))

(declare-fun tp!105642 () Bool)

(declare-fun b_and!48285 () Bool)

(assert (=> start!111434 (= tp!105642 b_and!48285)))

(declare-fun b!1318085 () Bool)

(declare-fun res!874863 () Bool)

(declare-fun e!752227 () Bool)

(assert (=> b!1318085 (=> (not res!874863) (not e!752227))))

(declare-datatypes ((array!88653 0))(
  ( (array!88654 (arr!42796 (Array (_ BitVec 32) (_ BitVec 64))) (size!43347 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88653)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!52937 0))(
  ( (V!52938 (val!18012 Int)) )
))
(declare-datatypes ((ValueCell!17039 0))(
  ( (ValueCellFull!17039 (v!20640 V!52937)) (EmptyCell!17039) )
))
(declare-datatypes ((array!88655 0))(
  ( (array!88656 (arr!42797 (Array (_ BitVec 32) ValueCell!17039)) (size!43348 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88655)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1318085 (= res!874863 (and (= (size!43348 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43347 _keys!1609) (size!43348 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun res!874859 () Bool)

(assert (=> start!111434 (=> (not res!874859) (not e!752227))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111434 (= res!874859 (validMask!0 mask!2019))))

(assert (=> start!111434 e!752227))

(declare-fun array_inv!32273 (array!88653) Bool)

(assert (=> start!111434 (array_inv!32273 _keys!1609)))

(assert (=> start!111434 true))

(declare-fun tp_is_empty!35875 () Bool)

(assert (=> start!111434 tp_is_empty!35875))

(declare-fun e!752225 () Bool)

(declare-fun array_inv!32274 (array!88655) Bool)

(assert (=> start!111434 (and (array_inv!32274 _values!1337) e!752225)))

(assert (=> start!111434 tp!105642))

(declare-fun b!1318086 () Bool)

(declare-fun res!874858 () Bool)

(assert (=> b!1318086 (=> (not res!874858) (not e!752227))))

(declare-datatypes ((List!30522 0))(
  ( (Nil!30519) (Cons!30518 (h!31727 (_ BitVec 64)) (t!44137 List!30522)) )
))
(declare-fun arrayNoDuplicates!0 (array!88653 (_ BitVec 32) List!30522) Bool)

(assert (=> b!1318086 (= res!874858 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30519))))

(declare-fun b!1318087 () Bool)

(declare-fun e!752223 () Bool)

(assert (=> b!1318087 (= e!752223 tp_is_empty!35875)))

(declare-fun b!1318088 () Bool)

(declare-fun from!2000 () (_ BitVec 32))

(assert (=> b!1318088 (= e!752227 (bvslt (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000))))

(declare-fun b!1318089 () Bool)

(declare-fun res!874862 () Bool)

(assert (=> b!1318089 (=> (not res!874862) (not e!752227))))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1318089 (= res!874862 (not (= (select (arr!42796 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1318090 () Bool)

(declare-fun e!752224 () Bool)

(assert (=> b!1318090 (= e!752224 tp_is_empty!35875)))

(declare-fun b!1318091 () Bool)

(declare-fun res!874864 () Bool)

(assert (=> b!1318091 (=> (not res!874864) (not e!752227))))

(assert (=> b!1318091 (= res!874864 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43347 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!55460 () Bool)

(declare-fun mapRes!55460 () Bool)

(declare-fun tp!105641 () Bool)

(assert (=> mapNonEmpty!55460 (= mapRes!55460 (and tp!105641 e!752224))))

(declare-fun mapKey!55460 () (_ BitVec 32))

(declare-fun mapValue!55460 () ValueCell!17039)

(declare-fun mapRest!55460 () (Array (_ BitVec 32) ValueCell!17039))

(assert (=> mapNonEmpty!55460 (= (arr!42797 _values!1337) (store mapRest!55460 mapKey!55460 mapValue!55460))))

(declare-fun mapIsEmpty!55460 () Bool)

(assert (=> mapIsEmpty!55460 mapRes!55460))

(declare-fun b!1318092 () Bool)

(assert (=> b!1318092 (= e!752225 (and e!752223 mapRes!55460))))

(declare-fun condMapEmpty!55460 () Bool)

(declare-fun mapDefault!55460 () ValueCell!17039)

