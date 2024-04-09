; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113060 () Bool)

(assert start!113060)

(declare-fun b_free!31075 () Bool)

(declare-fun b_next!31075 () Bool)

(assert (=> start!113060 (= b_free!31075 (not b_next!31075))))

(declare-fun tp!109031 () Bool)

(declare-fun b_and!50115 () Bool)

(assert (=> start!113060 (= tp!109031 b_and!50115)))

(declare-fun b!1339519 () Bool)

(declare-fun e!763014 () Bool)

(declare-fun tp_is_empty!37075 () Bool)

(assert (=> b!1339519 (= e!763014 tp_is_empty!37075)))

(declare-fun mapIsEmpty!57319 () Bool)

(declare-fun mapRes!57319 () Bool)

(assert (=> mapIsEmpty!57319 mapRes!57319))

(declare-fun b!1339520 () Bool)

(declare-fun res!888682 () Bool)

(declare-fun e!763015 () Bool)

(assert (=> b!1339520 (=> (not res!888682) (not e!763015))))

(declare-datatypes ((array!90969 0))(
  ( (array!90970 (arr!43936 (Array (_ BitVec 32) (_ BitVec 64))) (size!44487 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90969)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90969 (_ BitVec 32)) Bool)

(assert (=> b!1339520 (= res!888682 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339521 () Bool)

(declare-fun res!888686 () Bool)

(assert (=> b!1339521 (=> (not res!888686) (not e!763015))))

(declare-datatypes ((List!31288 0))(
  ( (Nil!31285) (Cons!31284 (h!32493 (_ BitVec 64)) (t!45627 List!31288)) )
))
(declare-fun arrayNoDuplicates!0 (array!90969 (_ BitVec 32) List!31288) Bool)

(assert (=> b!1339521 (= res!888686 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31285))))

(declare-fun b!1339522 () Bool)

(declare-fun res!888684 () Bool)

(assert (=> b!1339522 (=> (not res!888684) (not e!763015))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1339522 (= res!888684 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44487 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1339523 () Bool)

(declare-fun e!763012 () Bool)

(assert (=> b!1339523 (= e!763012 tp_is_empty!37075)))

(declare-fun res!888683 () Bool)

(assert (=> start!113060 (=> (not res!888683) (not e!763015))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113060 (= res!888683 (validMask!0 mask!1977))))

(assert (=> start!113060 e!763015))

(assert (=> start!113060 tp_is_empty!37075))

(assert (=> start!113060 true))

(declare-fun array_inv!33051 (array!90969) Bool)

(assert (=> start!113060 (array_inv!33051 _keys!1571)))

(declare-datatypes ((V!54537 0))(
  ( (V!54538 (val!18612 Int)) )
))
(declare-datatypes ((ValueCell!17639 0))(
  ( (ValueCellFull!17639 (v!21258 V!54537)) (EmptyCell!17639) )
))
(declare-datatypes ((array!90971 0))(
  ( (array!90972 (arr!43937 (Array (_ BitVec 32) ValueCell!17639)) (size!44488 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90971)

(declare-fun e!763016 () Bool)

(declare-fun array_inv!33052 (array!90971) Bool)

(assert (=> start!113060 (and (array_inv!33052 _values!1303) e!763016)))

(assert (=> start!113060 tp!109031))

(declare-fun b!1339524 () Bool)

(assert (=> b!1339524 (= e!763016 (and e!763012 mapRes!57319))))

(declare-fun condMapEmpty!57319 () Bool)

(declare-fun mapDefault!57319 () ValueCell!17639)

