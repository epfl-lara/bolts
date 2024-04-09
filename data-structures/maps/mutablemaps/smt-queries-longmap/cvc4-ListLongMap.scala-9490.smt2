; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112588 () Bool)

(assert start!112588)

(declare-fun b_free!30947 () Bool)

(declare-fun b_next!30947 () Bool)

(assert (=> start!112588 (= b_free!30947 (not b_next!30947))))

(declare-fun tp!108479 () Bool)

(declare-fun b_and!49865 () Bool)

(assert (=> start!112588 (= tp!108479 b_and!49865)))

(declare-fun mapNonEmpty!56959 () Bool)

(declare-fun mapRes!56959 () Bool)

(declare-fun tp!108478 () Bool)

(declare-fun e!760357 () Bool)

(assert (=> mapNonEmpty!56959 (= mapRes!56959 (and tp!108478 e!760357))))

(declare-datatypes ((V!54245 0))(
  ( (V!54246 (val!18503 Int)) )
))
(declare-datatypes ((ValueCell!17530 0))(
  ( (ValueCellFull!17530 (v!21138 V!54245)) (EmptyCell!17530) )
))
(declare-datatypes ((array!90553 0))(
  ( (array!90554 (arr!43738 (Array (_ BitVec 32) ValueCell!17530)) (size!44289 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90553)

(declare-fun mapValue!56959 () ValueCell!17530)

(declare-fun mapKey!56959 () (_ BitVec 32))

(declare-fun mapRest!56959 () (Array (_ BitVec 32) ValueCell!17530))

(assert (=> mapNonEmpty!56959 (= (arr!43738 _values!1320) (store mapRest!56959 mapKey!56959 mapValue!56959))))

(declare-fun mapIsEmpty!56959 () Bool)

(assert (=> mapIsEmpty!56959 mapRes!56959))

(declare-fun b!1334977 () Bool)

(declare-fun e!760360 () Bool)

(declare-fun tp_is_empty!36857 () Bool)

(assert (=> b!1334977 (= e!760360 tp_is_empty!36857)))

(declare-fun b!1334978 () Bool)

(assert (=> b!1334978 (= e!760357 tp_is_empty!36857)))

(declare-fun b!1334979 () Bool)

(declare-fun res!886081 () Bool)

(declare-fun e!760356 () Bool)

(assert (=> b!1334979 (=> (not res!886081) (not e!760356))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90555 0))(
  ( (array!90556 (arr!43739 (Array (_ BitVec 32) (_ BitVec 64))) (size!44290 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90555)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1334979 (= res!886081 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44290 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1334980 () Bool)

(declare-fun res!886078 () Bool)

(assert (=> b!1334980 (=> (not res!886078) (not e!760356))))

(declare-fun mask!1998 () (_ BitVec 32))

(assert (=> b!1334980 (= res!886078 (and (= (size!44289 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44290 _keys!1590) (size!44289 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1334981 () Bool)

(declare-fun res!886080 () Bool)

(assert (=> b!1334981 (=> (not res!886080) (not e!760356))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90555 (_ BitVec 32)) Bool)

(assert (=> b!1334981 (= res!886080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun res!886079 () Bool)

(assert (=> start!112588 (=> (not res!886079) (not e!760356))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112588 (= res!886079 (validMask!0 mask!1998))))

(assert (=> start!112588 e!760356))

(declare-fun e!760358 () Bool)

(declare-fun array_inv!32921 (array!90553) Bool)

(assert (=> start!112588 (and (array_inv!32921 _values!1320) e!760358)))

(assert (=> start!112588 true))

(declare-fun array_inv!32922 (array!90555) Bool)

(assert (=> start!112588 (array_inv!32922 _keys!1590)))

(assert (=> start!112588 tp!108479))

(assert (=> start!112588 tp_is_empty!36857))

(declare-fun b!1334982 () Bool)

(assert (=> b!1334982 (= e!760358 (and e!760360 mapRes!56959))))

(declare-fun condMapEmpty!56959 () Bool)

(declare-fun mapDefault!56959 () ValueCell!17530)

