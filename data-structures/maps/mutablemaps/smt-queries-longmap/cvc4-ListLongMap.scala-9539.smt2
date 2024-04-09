; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113136 () Bool)

(assert start!113136)

(declare-fun b_free!31151 () Bool)

(declare-fun b_next!31151 () Bool)

(assert (=> start!113136 (= b_free!31151 (not b_next!31151))))

(declare-fun tp!109258 () Bool)

(declare-fun b_and!50219 () Bool)

(assert (=> start!113136 (= tp!109258 b_and!50219)))

(declare-fun b!1340662 () Bool)

(declare-fun res!889463 () Bool)

(declare-fun e!763584 () Bool)

(assert (=> b!1340662 (=> (not res!889463) (not e!763584))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91111 0))(
  ( (array!91112 (arr!44007 (Array (_ BitVec 32) (_ BitVec 64))) (size!44558 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91111)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1340662 (= res!889463 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44558 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1340663 () Bool)

(declare-fun res!889459 () Bool)

(assert (=> b!1340663 (=> (not res!889459) (not e!763584))))

(assert (=> b!1340663 (= res!889459 (not (= (select (arr!44007 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1340665 () Bool)

(declare-fun res!889458 () Bool)

(assert (=> b!1340665 (=> (not res!889458) (not e!763584))))

(declare-datatypes ((List!31338 0))(
  ( (Nil!31335) (Cons!31334 (h!32543 (_ BitVec 64)) (t!45707 List!31338)) )
))
(declare-fun arrayNoDuplicates!0 (array!91111 (_ BitVec 32) List!31338) Bool)

(assert (=> b!1340665 (= res!889458 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31335))))

(declare-fun b!1340666 () Bool)

(declare-fun res!889460 () Bool)

(assert (=> b!1340666 (=> (not res!889460) (not e!763584))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((V!54637 0))(
  ( (V!54638 (val!18650 Int)) )
))
(declare-datatypes ((ValueCell!17677 0))(
  ( (ValueCellFull!17677 (v!21296 V!54637)) (EmptyCell!17677) )
))
(declare-datatypes ((array!91113 0))(
  ( (array!91114 (arr!44008 (Array (_ BitVec 32) ValueCell!17677)) (size!44559 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91113)

(assert (=> b!1340666 (= res!889460 (and (= (size!44559 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44558 _keys!1571) (size!44559 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!57433 () Bool)

(declare-fun mapRes!57433 () Bool)

(declare-fun tp!109259 () Bool)

(declare-fun e!763585 () Bool)

(assert (=> mapNonEmpty!57433 (= mapRes!57433 (and tp!109259 e!763585))))

(declare-fun mapKey!57433 () (_ BitVec 32))

(declare-fun mapRest!57433 () (Array (_ BitVec 32) ValueCell!17677))

(declare-fun mapValue!57433 () ValueCell!17677)

(assert (=> mapNonEmpty!57433 (= (arr!44008 _values!1303) (store mapRest!57433 mapKey!57433 mapValue!57433))))

(declare-fun b!1340667 () Bool)

(declare-fun res!889461 () Bool)

(assert (=> b!1340667 (=> (not res!889461) (not e!763584))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1340667 (= res!889461 (validKeyInArray!0 (select (arr!44007 _keys!1571) from!1960)))))

(declare-fun b!1340668 () Bool)

(declare-fun res!889462 () Bool)

(assert (=> b!1340668 (=> (not res!889462) (not e!763584))))

(assert (=> b!1340668 (= res!889462 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1340669 () Bool)

(declare-fun e!763582 () Bool)

(declare-fun tp_is_empty!37151 () Bool)

(assert (=> b!1340669 (= e!763582 tp_is_empty!37151)))

(declare-fun mapIsEmpty!57433 () Bool)

(assert (=> mapIsEmpty!57433 mapRes!57433))

(declare-fun res!889457 () Bool)

(assert (=> start!113136 (=> (not res!889457) (not e!763584))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113136 (= res!889457 (validMask!0 mask!1977))))

(assert (=> start!113136 e!763584))

(assert (=> start!113136 tp_is_empty!37151))

(assert (=> start!113136 true))

(declare-fun array_inv!33095 (array!91111) Bool)

(assert (=> start!113136 (array_inv!33095 _keys!1571)))

(declare-fun e!763583 () Bool)

(declare-fun array_inv!33096 (array!91113) Bool)

(assert (=> start!113136 (and (array_inv!33096 _values!1303) e!763583)))

(assert (=> start!113136 tp!109258))

(declare-fun b!1340664 () Bool)

(declare-fun res!889455 () Bool)

(assert (=> b!1340664 (=> (not res!889455) (not e!763584))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91111 (_ BitVec 32)) Bool)

(assert (=> b!1340664 (= res!889455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1340670 () Bool)

(assert (=> b!1340670 (= e!763583 (and e!763582 mapRes!57433))))

(declare-fun condMapEmpty!57433 () Bool)

(declare-fun mapDefault!57433 () ValueCell!17677)

