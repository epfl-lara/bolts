; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112282 () Bool)

(assert start!112282)

(declare-fun b_free!30641 () Bool)

(declare-fun b_next!30641 () Bool)

(assert (=> start!112282 (= b_free!30641 (not b_next!30641))))

(declare-fun tp!107561 () Bool)

(declare-fun b_and!49347 () Bool)

(assert (=> start!112282 (= tp!107561 b_and!49347)))

(declare-fun b!1329640 () Bool)

(declare-fun e!757980 () Bool)

(declare-fun tp_is_empty!36551 () Bool)

(assert (=> b!1329640 (= e!757980 tp_is_empty!36551)))

(declare-fun res!882331 () Bool)

(declare-fun e!757983 () Bool)

(assert (=> start!112282 (=> (not res!882331) (not e!757983))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112282 (= res!882331 (validMask!0 mask!1998))))

(assert (=> start!112282 e!757983))

(declare-datatypes ((V!53837 0))(
  ( (V!53838 (val!18350 Int)) )
))
(declare-datatypes ((ValueCell!17377 0))(
  ( (ValueCellFull!17377 (v!20985 V!53837)) (EmptyCell!17377) )
))
(declare-datatypes ((array!89957 0))(
  ( (array!89958 (arr!43440 (Array (_ BitVec 32) ValueCell!17377)) (size!43991 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89957)

(declare-fun e!757982 () Bool)

(declare-fun array_inv!32725 (array!89957) Bool)

(assert (=> start!112282 (and (array_inv!32725 _values!1320) e!757982)))

(assert (=> start!112282 true))

(declare-datatypes ((array!89959 0))(
  ( (array!89960 (arr!43441 (Array (_ BitVec 32) (_ BitVec 64))) (size!43992 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89959)

(declare-fun array_inv!32726 (array!89959) Bool)

(assert (=> start!112282 (array_inv!32726 _keys!1590)))

(assert (=> start!112282 tp!107561))

(assert (=> start!112282 tp_is_empty!36551))

(declare-fun b!1329641 () Bool)

(declare-fun res!882330 () Bool)

(assert (=> b!1329641 (=> (not res!882330) (not e!757983))))

(declare-datatypes ((List!30962 0))(
  ( (Nil!30959) (Cons!30958 (h!32167 (_ BitVec 64)) (t!45023 List!30962)) )
))
(declare-fun arrayNoDuplicates!0 (array!89959 (_ BitVec 32) List!30962) Bool)

(assert (=> b!1329641 (= res!882330 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30959))))

(declare-fun b!1329642 () Bool)

(declare-fun res!882336 () Bool)

(assert (=> b!1329642 (=> (not res!882336) (not e!757983))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89959 (_ BitVec 32)) Bool)

(assert (=> b!1329642 (= res!882336 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapIsEmpty!56500 () Bool)

(declare-fun mapRes!56500 () Bool)

(assert (=> mapIsEmpty!56500 mapRes!56500))

(declare-fun b!1329643 () Bool)

(declare-fun e!757984 () Bool)

(assert (=> b!1329643 (= e!757984 tp_is_empty!36551)))

(declare-fun b!1329644 () Bool)

(declare-fun res!882337 () Bool)

(assert (=> b!1329644 (=> (not res!882337) (not e!757983))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1329644 (= res!882337 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43992 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1329645 () Bool)

(assert (=> b!1329645 (= e!757982 (and e!757984 mapRes!56500))))

(declare-fun condMapEmpty!56500 () Bool)

(declare-fun mapDefault!56500 () ValueCell!17377)

