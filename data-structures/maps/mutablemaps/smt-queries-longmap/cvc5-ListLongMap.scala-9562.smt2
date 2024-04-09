; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113270 () Bool)

(assert start!113270)

(declare-fun b_free!31285 () Bool)

(declare-fun b_next!31285 () Bool)

(assert (=> start!113270 (= b_free!31285 (not b_next!31285))))

(declare-fun tp!109661 () Bool)

(declare-fun b_and!50487 () Bool)

(assert (=> start!113270 (= tp!109661 b_and!50487)))

(declare-fun mapNonEmpty!57634 () Bool)

(declare-fun mapRes!57634 () Bool)

(declare-fun tp!109660 () Bool)

(declare-fun e!764588 () Bool)

(assert (=> mapNonEmpty!57634 (= mapRes!57634 (and tp!109660 e!764588))))

(declare-datatypes ((V!54817 0))(
  ( (V!54818 (val!18717 Int)) )
))
(declare-datatypes ((ValueCell!17744 0))(
  ( (ValueCellFull!17744 (v!21363 V!54817)) (EmptyCell!17744) )
))
(declare-fun mapValue!57634 () ValueCell!17744)

(declare-datatypes ((array!91371 0))(
  ( (array!91372 (arr!44137 (Array (_ BitVec 32) ValueCell!17744)) (size!44688 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91371)

(declare-fun mapKey!57634 () (_ BitVec 32))

(declare-fun mapRest!57634 () (Array (_ BitVec 32) ValueCell!17744))

(assert (=> mapNonEmpty!57634 (= (arr!44137 _values!1303) (store mapRest!57634 mapKey!57634 mapValue!57634))))

(declare-fun b!1343208 () Bool)

(declare-fun res!891269 () Bool)

(declare-fun e!764591 () Bool)

(assert (=> b!1343208 (=> (not res!891269) (not e!764591))))

(declare-datatypes ((array!91373 0))(
  ( (array!91374 (arr!44138 (Array (_ BitVec 32) (_ BitVec 64))) (size!44689 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91373)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1343208 (= res!891269 (validKeyInArray!0 (select (arr!44138 _keys!1571) from!1960)))))

(declare-fun b!1343209 () Bool)

(declare-fun res!891265 () Bool)

(assert (=> b!1343209 (=> (not res!891265) (not e!764591))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1343209 (= res!891265 (and (= (size!44688 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44689 _keys!1571) (size!44688 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun res!891266 () Bool)

(assert (=> start!113270 (=> (not res!891266) (not e!764591))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113270 (= res!891266 (validMask!0 mask!1977))))

(assert (=> start!113270 e!764591))

(declare-fun tp_is_empty!37285 () Bool)

(assert (=> start!113270 tp_is_empty!37285))

(assert (=> start!113270 true))

(declare-fun array_inv!33187 (array!91373) Bool)

(assert (=> start!113270 (array_inv!33187 _keys!1571)))

(declare-fun e!764587 () Bool)

(declare-fun array_inv!33188 (array!91371) Bool)

(assert (=> start!113270 (and (array_inv!33188 _values!1303) e!764587)))

(assert (=> start!113270 tp!109661))

(declare-fun b!1343210 () Bool)

(declare-fun res!891264 () Bool)

(assert (=> b!1343210 (=> (not res!891264) (not e!764591))))

(declare-fun k!1142 () (_ BitVec 64))

(assert (=> b!1343210 (= res!891264 (not (= (select (arr!44138 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1343211 () Bool)

(declare-fun res!891271 () Bool)

(assert (=> b!1343211 (=> (not res!891271) (not e!764591))))

(assert (=> b!1343211 (= res!891271 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44689 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1343212 () Bool)

(declare-fun res!891268 () Bool)

(assert (=> b!1343212 (=> (not res!891268) (not e!764591))))

(declare-datatypes ((List!31439 0))(
  ( (Nil!31436) (Cons!31435 (h!32644 (_ BitVec 64)) (t!45942 List!31439)) )
))
(declare-fun arrayNoDuplicates!0 (array!91373 (_ BitVec 32) List!31439) Bool)

(assert (=> b!1343212 (= res!891268 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31436))))

(declare-fun mapIsEmpty!57634 () Bool)

(assert (=> mapIsEmpty!57634 mapRes!57634))

(declare-fun b!1343213 () Bool)

(assert (=> b!1343213 (= e!764588 tp_is_empty!37285)))

(declare-fun b!1343214 () Bool)

(declare-fun e!764590 () Bool)

(assert (=> b!1343214 (= e!764590 tp_is_empty!37285)))

(declare-fun b!1343215 () Bool)

(declare-fun res!891272 () Bool)

(assert (=> b!1343215 (=> (not res!891272) (not e!764591))))

(assert (=> b!1343215 (= res!891272 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1343216 () Bool)

(assert (=> b!1343216 (= e!764587 (and e!764590 mapRes!57634))))

(declare-fun condMapEmpty!57634 () Bool)

(declare-fun mapDefault!57634 () ValueCell!17744)

