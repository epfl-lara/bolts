; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112600 () Bool)

(assert start!112600)

(declare-fun b_free!30959 () Bool)

(declare-fun b_next!30959 () Bool)

(assert (=> start!112600 (= b_free!30959 (not b_next!30959))))

(declare-fun tp!108515 () Bool)

(declare-fun b_and!49877 () Bool)

(assert (=> start!112600 (= tp!108515 b_and!49877)))

(declare-fun b!1335145 () Bool)

(declare-fun res!886196 () Bool)

(declare-fun e!760447 () Bool)

(assert (=> b!1335145 (=> (not res!886196) (not e!760447))))

(declare-datatypes ((array!90575 0))(
  ( (array!90576 (arr!43749 (Array (_ BitVec 32) (_ BitVec 64))) (size!44300 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90575)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90575 (_ BitVec 32)) Bool)

(assert (=> b!1335145 (= res!886196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1335146 () Bool)

(declare-fun res!886197 () Bool)

(assert (=> b!1335146 (=> (not res!886197) (not e!760447))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1335146 (= res!886197 (not (= (select (arr!43749 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1335147 () Bool)

(declare-fun res!886199 () Bool)

(assert (=> b!1335147 (=> (not res!886199) (not e!760447))))

(declare-datatypes ((V!54261 0))(
  ( (V!54262 (val!18509 Int)) )
))
(declare-datatypes ((ValueCell!17536 0))(
  ( (ValueCellFull!17536 (v!21144 V!54261)) (EmptyCell!17536) )
))
(declare-datatypes ((array!90577 0))(
  ( (array!90578 (arr!43750 (Array (_ BitVec 32) ValueCell!17536)) (size!44301 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90577)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1335147 (= res!886199 (and (= (size!44301 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44300 _keys!1590) (size!44301 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1335148 () Bool)

(assert (=> b!1335148 (= e!760447 (bvslt (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!56977 () Bool)

(declare-fun mapRes!56977 () Bool)

(assert (=> mapIsEmpty!56977 mapRes!56977))

(declare-fun b!1335149 () Bool)

(declare-fun e!760446 () Bool)

(declare-fun tp_is_empty!36869 () Bool)

(assert (=> b!1335149 (= e!760446 tp_is_empty!36869)))

(declare-fun b!1335150 () Bool)

(declare-fun res!886195 () Bool)

(assert (=> b!1335150 (=> (not res!886195) (not e!760447))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54261)

(declare-fun zeroValue!1262 () V!54261)

(declare-datatypes ((tuple2!24020 0))(
  ( (tuple2!24021 (_1!12020 (_ BitVec 64)) (_2!12020 V!54261)) )
))
(declare-datatypes ((List!31191 0))(
  ( (Nil!31188) (Cons!31187 (h!32396 tuple2!24020) (t!45462 List!31191)) )
))
(declare-datatypes ((ListLongMap!21689 0))(
  ( (ListLongMap!21690 (toList!10860 List!31191)) )
))
(declare-fun contains!8960 (ListLongMap!21689 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5771 (array!90575 array!90577 (_ BitVec 32) (_ BitVec 32) V!54261 V!54261 (_ BitVec 32) Int) ListLongMap!21689)

(assert (=> b!1335150 (= res!886195 (contains!8960 (getCurrentListMap!5771 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun res!886193 () Bool)

(assert (=> start!112600 (=> (not res!886193) (not e!760447))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112600 (= res!886193 (validMask!0 mask!1998))))

(assert (=> start!112600 e!760447))

(declare-fun e!760450 () Bool)

(declare-fun array_inv!32929 (array!90577) Bool)

(assert (=> start!112600 (and (array_inv!32929 _values!1320) e!760450)))

(assert (=> start!112600 true))

(declare-fun array_inv!32930 (array!90575) Bool)

(assert (=> start!112600 (array_inv!32930 _keys!1590)))

(assert (=> start!112600 tp!108515))

(assert (=> start!112600 tp_is_empty!36869))

(declare-fun b!1335151 () Bool)

(declare-fun res!886198 () Bool)

(assert (=> b!1335151 (=> (not res!886198) (not e!760447))))

(assert (=> b!1335151 (= res!886198 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44300 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1335152 () Bool)

(assert (=> b!1335152 (= e!760450 (and e!760446 mapRes!56977))))

(declare-fun condMapEmpty!56977 () Bool)

(declare-fun mapDefault!56977 () ValueCell!17536)

