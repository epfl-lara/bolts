; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112718 () Bool)

(assert start!112718)

(declare-fun b_free!31019 () Bool)

(declare-fun b_next!31019 () Bool)

(assert (=> start!112718 (= b_free!31019 (not b_next!31019))))

(declare-fun tp!108698 () Bool)

(declare-fun b_and!49985 () Bool)

(assert (=> start!112718 (= tp!108698 b_and!49985)))

(declare-fun b!1336570 () Bool)

(declare-fun res!887093 () Bool)

(declare-fun e!761141 () Bool)

(assert (=> b!1336570 (=> (not res!887093) (not e!761141))))

(declare-datatypes ((array!90689 0))(
  ( (array!90690 (arr!43805 (Array (_ BitVec 32) (_ BitVec 64))) (size!44356 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90689)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90689 (_ BitVec 32)) Bool)

(assert (=> b!1336570 (= res!887093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1336571 () Bool)

(declare-fun res!887095 () Bool)

(assert (=> b!1336571 (=> (not res!887095) (not e!761141))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1336571 (= res!887095 (validKeyInArray!0 (select (arr!43805 _keys!1590) from!1980)))))

(declare-fun mapNonEmpty!57071 () Bool)

(declare-fun mapRes!57071 () Bool)

(declare-fun tp!108699 () Bool)

(declare-fun e!761143 () Bool)

(assert (=> mapNonEmpty!57071 (= mapRes!57071 (and tp!108699 e!761143))))

(declare-datatypes ((V!54341 0))(
  ( (V!54342 (val!18539 Int)) )
))
(declare-datatypes ((ValueCell!17566 0))(
  ( (ValueCellFull!17566 (v!21177 V!54341)) (EmptyCell!17566) )
))
(declare-fun mapValue!57071 () ValueCell!17566)

(declare-fun mapRest!57071 () (Array (_ BitVec 32) ValueCell!17566))

(declare-datatypes ((array!90691 0))(
  ( (array!90692 (arr!43806 (Array (_ BitVec 32) ValueCell!17566)) (size!44357 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90691)

(declare-fun mapKey!57071 () (_ BitVec 32))

(assert (=> mapNonEmpty!57071 (= (arr!43806 _values!1320) (store mapRest!57071 mapKey!57071 mapValue!57071))))

(declare-fun b!1336572 () Bool)

(declare-fun res!887090 () Bool)

(assert (=> b!1336572 (=> (not res!887090) (not e!761141))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1336572 (= res!887090 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1336573 () Bool)

(declare-fun e!761142 () Bool)

(declare-fun tp_is_empty!36929 () Bool)

(assert (=> b!1336573 (= e!761142 tp_is_empty!36929)))

(declare-fun b!1336574 () Bool)

(declare-fun e!761139 () Bool)

(assert (=> b!1336574 (= e!761139 (and e!761142 mapRes!57071))))

(declare-fun condMapEmpty!57071 () Bool)

(declare-fun mapDefault!57071 () ValueCell!17566)

