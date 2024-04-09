; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112432 () Bool)

(assert start!112432)

(declare-fun b_free!30791 () Bool)

(declare-fun b_next!30791 () Bool)

(assert (=> start!112432 (= b_free!30791 (not b_next!30791))))

(declare-fun tp!108011 () Bool)

(declare-fun b_and!49643 () Bool)

(assert (=> start!112432 (= tp!108011 b_and!49643)))

(declare-fun b!1332454 () Bool)

(declare-fun e!759107 () Bool)

(assert (=> b!1332454 (= e!759107 false)))

(declare-datatypes ((V!54037 0))(
  ( (V!54038 (val!18425 Int)) )
))
(declare-datatypes ((ValueCell!17452 0))(
  ( (ValueCellFull!17452 (v!21060 V!54037)) (EmptyCell!17452) )
))
(declare-datatypes ((array!90251 0))(
  ( (array!90252 (arr!43587 (Array (_ BitVec 32) ValueCell!17452)) (size!44138 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90251)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun lt!591971 () Bool)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90253 0))(
  ( (array!90254 (arr!43588 (Array (_ BitVec 32) (_ BitVec 64))) (size!44139 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90253)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!54037)

(declare-fun zeroValue!1262 () V!54037)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23896 0))(
  ( (tuple2!23897 (_1!11958 (_ BitVec 64)) (_2!11958 V!54037)) )
))
(declare-datatypes ((List!31075 0))(
  ( (Nil!31072) (Cons!31071 (h!32280 tuple2!23896) (t!45280 List!31075)) )
))
(declare-datatypes ((ListLongMap!21565 0))(
  ( (ListLongMap!21566 (toList!10798 List!31075)) )
))
(declare-fun contains!8898 (ListLongMap!21565 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5719 (array!90253 array!90251 (_ BitVec 32) (_ BitVec 32) V!54037 V!54037 (_ BitVec 32) Int) ListLongMap!21565)

(assert (=> b!1332454 (= lt!591971 (contains!8898 (getCurrentListMap!5719 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun mapNonEmpty!56725 () Bool)

(declare-fun mapRes!56725 () Bool)

(declare-fun tp!108010 () Bool)

(declare-fun e!759106 () Bool)

(assert (=> mapNonEmpty!56725 (= mapRes!56725 (and tp!108010 e!759106))))

(declare-fun mapKey!56725 () (_ BitVec 32))

(declare-fun mapRest!56725 () (Array (_ BitVec 32) ValueCell!17452))

(declare-fun mapValue!56725 () ValueCell!17452)

(assert (=> mapNonEmpty!56725 (= (arr!43587 _values!1320) (store mapRest!56725 mapKey!56725 mapValue!56725))))

(declare-fun b!1332455 () Bool)

(declare-fun e!759109 () Bool)

(declare-fun tp_is_empty!36701 () Bool)

(assert (=> b!1332455 (= e!759109 tp_is_empty!36701)))

(declare-fun b!1332456 () Bool)

(declare-fun e!759108 () Bool)

(assert (=> b!1332456 (= e!759108 (and e!759109 mapRes!56725))))

(declare-fun condMapEmpty!56725 () Bool)

(declare-fun mapDefault!56725 () ValueCell!17452)

