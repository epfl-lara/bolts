; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112576 () Bool)

(assert start!112576)

(declare-fun b_free!30935 () Bool)

(declare-fun b_next!30935 () Bool)

(assert (=> start!112576 (= b_free!30935 (not b_next!30935))))

(declare-fun tp!108442 () Bool)

(declare-fun b_and!49853 () Bool)

(assert (=> start!112576 (= tp!108442 b_and!49853)))

(declare-fun b!1334833 () Bool)

(declare-fun res!885988 () Bool)

(declare-fun e!760268 () Bool)

(assert (=> b!1334833 (=> (not res!885988) (not e!760268))))

(declare-datatypes ((V!54229 0))(
  ( (V!54230 (val!18497 Int)) )
))
(declare-datatypes ((ValueCell!17524 0))(
  ( (ValueCellFull!17524 (v!21132 V!54229)) (EmptyCell!17524) )
))
(declare-datatypes ((array!90529 0))(
  ( (array!90530 (arr!43726 (Array (_ BitVec 32) ValueCell!17524)) (size!44277 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90529)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90531 0))(
  ( (array!90532 (arr!43727 (Array (_ BitVec 32) (_ BitVec 64))) (size!44278 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90531)

(assert (=> b!1334833 (= res!885988 (and (= (size!44277 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44278 _keys!1590) (size!44277 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1334834 () Bool)

(declare-fun e!760269 () Bool)

(declare-fun tp_is_empty!36845 () Bool)

(assert (=> b!1334834 (= e!760269 tp_is_empty!36845)))

(declare-fun mapIsEmpty!56941 () Bool)

(declare-fun mapRes!56941 () Bool)

(assert (=> mapIsEmpty!56941 mapRes!56941))

(declare-fun res!885992 () Bool)

(assert (=> start!112576 (=> (not res!885992) (not e!760268))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112576 (= res!885992 (validMask!0 mask!1998))))

(assert (=> start!112576 e!760268))

(declare-fun e!760270 () Bool)

(declare-fun array_inv!32911 (array!90529) Bool)

(assert (=> start!112576 (and (array_inv!32911 _values!1320) e!760270)))

(assert (=> start!112576 true))

(declare-fun array_inv!32912 (array!90531) Bool)

(assert (=> start!112576 (array_inv!32912 _keys!1590)))

(assert (=> start!112576 tp!108442))

(assert (=> start!112576 tp_is_empty!36845))

(declare-fun b!1334835 () Bool)

(assert (=> b!1334835 (= e!760268 false)))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun lt!592340 () Bool)

(declare-fun minValue!1262 () V!54229)

(declare-fun zeroValue!1262 () V!54229)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!24006 0))(
  ( (tuple2!24007 (_1!12013 (_ BitVec 64)) (_2!12013 V!54229)) )
))
(declare-datatypes ((List!31177 0))(
  ( (Nil!31174) (Cons!31173 (h!32382 tuple2!24006) (t!45448 List!31177)) )
))
(declare-datatypes ((ListLongMap!21675 0))(
  ( (ListLongMap!21676 (toList!10853 List!31177)) )
))
(declare-fun contains!8953 (ListLongMap!21675 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5764 (array!90531 array!90529 (_ BitVec 32) (_ BitVec 32) V!54229 V!54229 (_ BitVec 32) Int) ListLongMap!21675)

(assert (=> b!1334835 (= lt!592340 (contains!8953 (getCurrentListMap!5764 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun mapNonEmpty!56941 () Bool)

(declare-fun tp!108443 () Bool)

(declare-fun e!760267 () Bool)

(assert (=> mapNonEmpty!56941 (= mapRes!56941 (and tp!108443 e!760267))))

(declare-fun mapRest!56941 () (Array (_ BitVec 32) ValueCell!17524))

(declare-fun mapKey!56941 () (_ BitVec 32))

(declare-fun mapValue!56941 () ValueCell!17524)

(assert (=> mapNonEmpty!56941 (= (arr!43726 _values!1320) (store mapRest!56941 mapKey!56941 mapValue!56941))))

(declare-fun b!1334836 () Bool)

(declare-fun res!885991 () Bool)

(assert (=> b!1334836 (=> (not res!885991) (not e!760268))))

(declare-datatypes ((List!31178 0))(
  ( (Nil!31175) (Cons!31174 (h!32383 (_ BitVec 64)) (t!45449 List!31178)) )
))
(declare-fun arrayNoDuplicates!0 (array!90531 (_ BitVec 32) List!31178) Bool)

(assert (=> b!1334836 (= res!885991 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31175))))

(declare-fun b!1334837 () Bool)

(assert (=> b!1334837 (= e!760270 (and e!760269 mapRes!56941))))

(declare-fun condMapEmpty!56941 () Bool)

(declare-fun mapDefault!56941 () ValueCell!17524)

