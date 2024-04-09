; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112584 () Bool)

(assert start!112584)

(declare-fun b_free!30943 () Bool)

(declare-fun b_next!30943 () Bool)

(assert (=> start!112584 (= b_free!30943 (not b_next!30943))))

(declare-fun tp!108467 () Bool)

(declare-fun b_and!49861 () Bool)

(assert (=> start!112584 (= tp!108467 b_and!49861)))

(declare-fun b!1334929 () Bool)

(declare-fun res!886050 () Bool)

(declare-fun e!760326 () Bool)

(assert (=> b!1334929 (=> (not res!886050) (not e!760326))))

(declare-datatypes ((V!54241 0))(
  ( (V!54242 (val!18501 Int)) )
))
(declare-datatypes ((ValueCell!17528 0))(
  ( (ValueCellFull!17528 (v!21136 V!54241)) (EmptyCell!17528) )
))
(declare-datatypes ((array!90545 0))(
  ( (array!90546 (arr!43734 (Array (_ BitVec 32) ValueCell!17528)) (size!44285 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90545)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-datatypes ((array!90547 0))(
  ( (array!90548 (arr!43735 (Array (_ BitVec 32) (_ BitVec 64))) (size!44286 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90547)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1334929 (= res!886050 (and (= (size!44285 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44286 _keys!1590) (size!44285 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!56953 () Bool)

(declare-fun mapRes!56953 () Bool)

(declare-fun tp!108466 () Bool)

(declare-fun e!760329 () Bool)

(assert (=> mapNonEmpty!56953 (= mapRes!56953 (and tp!108466 e!760329))))

(declare-fun mapKey!56953 () (_ BitVec 32))

(declare-fun mapRest!56953 () (Array (_ BitVec 32) ValueCell!17528))

(declare-fun mapValue!56953 () ValueCell!17528)

(assert (=> mapNonEmpty!56953 (= (arr!43734 _values!1320) (store mapRest!56953 mapKey!56953 mapValue!56953))))

(declare-fun b!1334930 () Bool)

(declare-fun tp_is_empty!36853 () Bool)

(assert (=> b!1334930 (= e!760329 tp_is_empty!36853)))

(declare-fun res!886051 () Bool)

(assert (=> start!112584 (=> (not res!886051) (not e!760326))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112584 (= res!886051 (validMask!0 mask!1998))))

(assert (=> start!112584 e!760326))

(declare-fun e!760330 () Bool)

(declare-fun array_inv!32917 (array!90545) Bool)

(assert (=> start!112584 (and (array_inv!32917 _values!1320) e!760330)))

(assert (=> start!112584 true))

(declare-fun array_inv!32918 (array!90547) Bool)

(assert (=> start!112584 (array_inv!32918 _keys!1590)))

(assert (=> start!112584 tp!108467))

(assert (=> start!112584 tp_is_empty!36853))

(declare-fun mapIsEmpty!56953 () Bool)

(assert (=> mapIsEmpty!56953 mapRes!56953))

(declare-fun b!1334931 () Bool)

(declare-fun e!760327 () Bool)

(assert (=> b!1334931 (= e!760330 (and e!760327 mapRes!56953))))

(declare-fun condMapEmpty!56953 () Bool)

(declare-fun mapDefault!56953 () ValueCell!17528)

