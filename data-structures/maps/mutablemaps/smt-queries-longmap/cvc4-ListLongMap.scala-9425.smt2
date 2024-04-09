; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112198 () Bool)

(assert start!112198)

(declare-fun b_free!30557 () Bool)

(declare-fun b_next!30557 () Bool)

(assert (=> start!112198 (= b_free!30557 (not b_next!30557))))

(declare-fun tp!107309 () Bool)

(declare-fun b_and!49217 () Bool)

(assert (=> start!112198 (= tp!107309 b_and!49217)))

(declare-fun b!1328275 () Bool)

(declare-fun e!757352 () Bool)

(assert (=> b!1328275 (= e!757352 false)))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89797 0))(
  ( (array!89798 (arr!43360 (Array (_ BitVec 32) (_ BitVec 64))) (size!43911 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89797)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-datatypes ((V!53725 0))(
  ( (V!53726 (val!18308 Int)) )
))
(declare-fun minValue!1262 () V!53725)

(declare-fun zeroValue!1262 () V!53725)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17335 0))(
  ( (ValueCellFull!17335 (v!20943 V!53725)) (EmptyCell!17335) )
))
(declare-datatypes ((array!89799 0))(
  ( (array!89800 (arr!43361 (Array (_ BitVec 32) ValueCell!17335)) (size!43912 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89799)

(declare-fun lt!590765 () Bool)

(declare-datatypes ((tuple2!23716 0))(
  ( (tuple2!23717 (_1!11868 (_ BitVec 64)) (_2!11868 V!53725)) )
))
(declare-datatypes ((List!30902 0))(
  ( (Nil!30899) (Cons!30898 (h!32107 tuple2!23716) (t!44915 List!30902)) )
))
(declare-datatypes ((ListLongMap!21385 0))(
  ( (ListLongMap!21386 (toList!10708 List!30902)) )
))
(declare-fun contains!8808 (ListLongMap!21385 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5640 (array!89797 array!89799 (_ BitVec 32) (_ BitVec 32) V!53725 V!53725 (_ BitVec 32) Int) ListLongMap!21385)

(assert (=> b!1328275 (= lt!590765 (contains!8808 (getCurrentListMap!5640 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun mapIsEmpty!56374 () Bool)

(declare-fun mapRes!56374 () Bool)

(assert (=> mapIsEmpty!56374 mapRes!56374))

(declare-fun mapNonEmpty!56374 () Bool)

(declare-fun tp!107308 () Bool)

(declare-fun e!757350 () Bool)

(assert (=> mapNonEmpty!56374 (= mapRes!56374 (and tp!107308 e!757350))))

(declare-fun mapValue!56374 () ValueCell!17335)

(declare-fun mapKey!56374 () (_ BitVec 32))

(declare-fun mapRest!56374 () (Array (_ BitVec 32) ValueCell!17335))

(assert (=> mapNonEmpty!56374 (= (arr!43361 _values!1320) (store mapRest!56374 mapKey!56374 mapValue!56374))))

(declare-fun b!1328276 () Bool)

(declare-fun tp_is_empty!36467 () Bool)

(assert (=> b!1328276 (= e!757350 tp_is_empty!36467)))

(declare-fun b!1328277 () Bool)

(declare-fun res!881391 () Bool)

(assert (=> b!1328277 (=> (not res!881391) (not e!757352))))

(assert (=> b!1328277 (= res!881391 (and (= (size!43912 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43911 _keys!1590) (size!43912 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun res!881389 () Bool)

(assert (=> start!112198 (=> (not res!881389) (not e!757352))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112198 (= res!881389 (validMask!0 mask!1998))))

(assert (=> start!112198 e!757352))

(declare-fun e!757353 () Bool)

(declare-fun array_inv!32669 (array!89799) Bool)

(assert (=> start!112198 (and (array_inv!32669 _values!1320) e!757353)))

(assert (=> start!112198 true))

(declare-fun array_inv!32670 (array!89797) Bool)

(assert (=> start!112198 (array_inv!32670 _keys!1590)))

(assert (=> start!112198 tp!107309))

(assert (=> start!112198 tp_is_empty!36467))

(declare-fun b!1328278 () Bool)

(declare-fun res!881392 () Bool)

(assert (=> b!1328278 (=> (not res!881392) (not e!757352))))

(assert (=> b!1328278 (= res!881392 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43911 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1328279 () Bool)

(declare-fun res!881393 () Bool)

(assert (=> b!1328279 (=> (not res!881393) (not e!757352))))

(declare-datatypes ((List!30903 0))(
  ( (Nil!30900) (Cons!30899 (h!32108 (_ BitVec 64)) (t!44916 List!30903)) )
))
(declare-fun arrayNoDuplicates!0 (array!89797 (_ BitVec 32) List!30903) Bool)

(assert (=> b!1328279 (= res!881393 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30900))))

(declare-fun b!1328280 () Bool)

(declare-fun res!881390 () Bool)

(assert (=> b!1328280 (=> (not res!881390) (not e!757352))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89797 (_ BitVec 32)) Bool)

(assert (=> b!1328280 (= res!881390 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1328281 () Bool)

(declare-fun e!757354 () Bool)

(assert (=> b!1328281 (= e!757353 (and e!757354 mapRes!56374))))

(declare-fun condMapEmpty!56374 () Bool)

(declare-fun mapDefault!56374 () ValueCell!17335)

