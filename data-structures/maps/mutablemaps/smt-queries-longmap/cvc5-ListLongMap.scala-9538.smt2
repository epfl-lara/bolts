; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113126 () Bool)

(assert start!113126)

(declare-fun b_free!31141 () Bool)

(declare-fun b_next!31141 () Bool)

(assert (=> start!113126 (= b_free!31141 (not b_next!31141))))

(declare-fun tp!109229 () Bool)

(declare-fun b_and!50199 () Bool)

(assert (=> start!113126 (= tp!109229 b_and!50199)))

(declare-fun b!1340472 () Bool)

(declare-fun res!889323 () Bool)

(declare-fun e!763508 () Bool)

(assert (=> b!1340472 (=> (not res!889323) (not e!763508))))

(declare-datatypes ((array!91093 0))(
  ( (array!91094 (arr!43998 (Array (_ BitVec 32) (_ BitVec 64))) (size!44549 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91093)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1340472 (= res!889323 (validKeyInArray!0 (select (arr!43998 _keys!1571) from!1960)))))

(declare-fun b!1340473 () Bool)

(declare-fun res!889320 () Bool)

(assert (=> b!1340473 (=> (not res!889320) (not e!763508))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1340473 (= res!889320 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44549 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1340474 () Bool)

(declare-fun e!763510 () Bool)

(declare-fun tp_is_empty!37141 () Bool)

(assert (=> b!1340474 (= e!763510 tp_is_empty!37141)))

(declare-fun b!1340475 () Bool)

(declare-fun res!889324 () Bool)

(assert (=> b!1340475 (=> (not res!889324) (not e!763508))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91093 (_ BitVec 32)) Bool)

(assert (=> b!1340475 (= res!889324 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1340476 () Bool)

(declare-fun res!889327 () Bool)

(assert (=> b!1340476 (=> (not res!889327) (not e!763508))))

(assert (=> b!1340476 (= res!889327 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1340477 () Bool)

(declare-fun e!763507 () Bool)

(assert (=> b!1340477 (= e!763507 tp_is_empty!37141)))

(declare-fun mapIsEmpty!57418 () Bool)

(declare-fun mapRes!57418 () Bool)

(assert (=> mapIsEmpty!57418 mapRes!57418))

(declare-fun b!1340478 () Bool)

(declare-fun res!889321 () Bool)

(assert (=> b!1340478 (=> (not res!889321) (not e!763508))))

(assert (=> b!1340478 (= res!889321 (not (= (select (arr!43998 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1340480 () Bool)

(declare-fun res!889322 () Bool)

(assert (=> b!1340480 (=> (not res!889322) (not e!763508))))

(declare-datatypes ((V!54625 0))(
  ( (V!54626 (val!18645 Int)) )
))
(declare-fun minValue!1245 () V!54625)

(declare-fun zeroValue!1245 () V!54625)

(declare-datatypes ((ValueCell!17672 0))(
  ( (ValueCellFull!17672 (v!21291 V!54625)) (EmptyCell!17672) )
))
(declare-datatypes ((array!91095 0))(
  ( (array!91096 (arr!43999 (Array (_ BitVec 32) ValueCell!17672)) (size!44550 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91095)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24146 0))(
  ( (tuple2!24147 (_1!12083 (_ BitVec 64)) (_2!12083 V!54625)) )
))
(declare-datatypes ((List!31330 0))(
  ( (Nil!31327) (Cons!31326 (h!32535 tuple2!24146) (t!45689 List!31330)) )
))
(declare-datatypes ((ListLongMap!21815 0))(
  ( (ListLongMap!21816 (toList!10923 List!31330)) )
))
(declare-fun contains!9035 (ListLongMap!21815 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5826 (array!91093 array!91095 (_ BitVec 32) (_ BitVec 32) V!54625 V!54625 (_ BitVec 32) Int) ListLongMap!21815)

(assert (=> b!1340480 (= res!889322 (contains!9035 (getCurrentListMap!5826 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1340481 () Bool)

(declare-fun res!889328 () Bool)

(assert (=> b!1340481 (=> (not res!889328) (not e!763508))))

(assert (=> b!1340481 (= res!889328 (and (= (size!44550 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44549 _keys!1571) (size!44550 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1340482 () Bool)

(declare-fun res!889326 () Bool)

(assert (=> b!1340482 (=> (not res!889326) (not e!763508))))

(declare-datatypes ((List!31331 0))(
  ( (Nil!31328) (Cons!31327 (h!32536 (_ BitVec 64)) (t!45690 List!31331)) )
))
(declare-fun arrayNoDuplicates!0 (array!91093 (_ BitVec 32) List!31331) Bool)

(assert (=> b!1340482 (= res!889326 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31328))))

(declare-fun b!1340483 () Bool)

(declare-fun e!763509 () Bool)

(assert (=> b!1340483 (= e!763509 (and e!763510 mapRes!57418))))

(declare-fun condMapEmpty!57418 () Bool)

(declare-fun mapDefault!57418 () ValueCell!17672)

