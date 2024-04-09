; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112374 () Bool)

(assert start!112374)

(declare-fun b_free!30733 () Bool)

(declare-fun b_next!30733 () Bool)

(assert (=> start!112374 (= b_free!30733 (not b_next!30733))))

(declare-fun tp!107836 () Bool)

(declare-fun b_and!49531 () Bool)

(assert (=> start!112374 (= tp!107836 b_and!49531)))

(declare-fun b!1331388 () Bool)

(declare-fun res!883576 () Bool)

(declare-fun e!758673 () Bool)

(assert (=> b!1331388 (=> (not res!883576) (not e!758673))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90137 0))(
  ( (array!90138 (arr!43530 (Array (_ BitVec 32) (_ BitVec 64))) (size!44081 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90137)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1331388 (= res!883576 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44081 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!56638 () Bool)

(declare-fun mapRes!56638 () Bool)

(assert (=> mapIsEmpty!56638 mapRes!56638))

(declare-fun mapNonEmpty!56638 () Bool)

(declare-fun tp!107837 () Bool)

(declare-fun e!758671 () Bool)

(assert (=> mapNonEmpty!56638 (= mapRes!56638 (and tp!107837 e!758671))))

(declare-datatypes ((V!53961 0))(
  ( (V!53962 (val!18396 Int)) )
))
(declare-datatypes ((ValueCell!17423 0))(
  ( (ValueCellFull!17423 (v!21031 V!53961)) (EmptyCell!17423) )
))
(declare-datatypes ((array!90139 0))(
  ( (array!90140 (arr!43531 (Array (_ BitVec 32) ValueCell!17423)) (size!44082 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90139)

(declare-fun mapKey!56638 () (_ BitVec 32))

(declare-fun mapValue!56638 () ValueCell!17423)

(declare-fun mapRest!56638 () (Array (_ BitVec 32) ValueCell!17423))

(assert (=> mapNonEmpty!56638 (= (arr!43531 _values!1320) (store mapRest!56638 mapKey!56638 mapValue!56638))))

(declare-fun b!1331389 () Bool)

(declare-fun res!883575 () Bool)

(assert (=> b!1331389 (=> (not res!883575) (not e!758673))))

(declare-fun mask!1998 () (_ BitVec 32))

(assert (=> b!1331389 (= res!883575 (and (= (size!44082 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44081 _keys!1590) (size!44082 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1331390 () Bool)

(declare-fun res!883573 () Bool)

(assert (=> b!1331390 (=> (not res!883573) (not e!758673))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1331390 (= res!883573 (validKeyInArray!0 (select (arr!43530 _keys!1590) from!1980)))))

(declare-fun b!1331391 () Bool)

(declare-fun res!883577 () Bool)

(assert (=> b!1331391 (=> (not res!883577) (not e!758673))))

(assert (=> b!1331391 (= res!883577 (not (= (select (arr!43530 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1331392 () Bool)

(declare-fun e!758674 () Bool)

(declare-fun tp_is_empty!36643 () Bool)

(assert (=> b!1331392 (= e!758674 tp_is_empty!36643)))

(declare-fun b!1331393 () Bool)

(assert (=> b!1331393 (= e!758671 tp_is_empty!36643)))

(declare-fun b!1331394 () Bool)

(declare-fun res!883579 () Bool)

(assert (=> b!1331394 (=> (not res!883579) (not e!758673))))

(assert (=> b!1331394 (= res!883579 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1331395 () Bool)

(declare-fun e!758670 () Bool)

(assert (=> b!1331395 (= e!758670 (and e!758674 mapRes!56638))))

(declare-fun condMapEmpty!56638 () Bool)

(declare-fun mapDefault!56638 () ValueCell!17423)

