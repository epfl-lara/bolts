; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112258 () Bool)

(assert start!112258)

(declare-fun b_free!30617 () Bool)

(declare-fun b_next!30617 () Bool)

(assert (=> start!112258 (= b_free!30617 (not b_next!30617))))

(declare-fun tp!107488 () Bool)

(declare-fun b_and!49299 () Bool)

(assert (=> start!112258 (= tp!107488 b_and!49299)))

(declare-fun mapIsEmpty!56464 () Bool)

(declare-fun mapRes!56464 () Bool)

(assert (=> mapIsEmpty!56464 mapRes!56464))

(declare-fun b!1329184 () Bool)

(declare-fun e!757802 () Bool)

(declare-fun tp_is_empty!36527 () Bool)

(assert (=> b!1329184 (= e!757802 tp_is_empty!36527)))

(declare-fun b!1329185 () Bool)

(declare-fun res!882008 () Bool)

(declare-fun e!757803 () Bool)

(assert (=> b!1329185 (=> (not res!882008) (not e!757803))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1329185 (= res!882008 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!56464 () Bool)

(declare-fun tp!107489 () Bool)

(declare-fun e!757800 () Bool)

(assert (=> mapNonEmpty!56464 (= mapRes!56464 (and tp!107489 e!757800))))

(declare-datatypes ((V!53805 0))(
  ( (V!53806 (val!18338 Int)) )
))
(declare-datatypes ((ValueCell!17365 0))(
  ( (ValueCellFull!17365 (v!20973 V!53805)) (EmptyCell!17365) )
))
(declare-datatypes ((array!89909 0))(
  ( (array!89910 (arr!43416 (Array (_ BitVec 32) ValueCell!17365)) (size!43967 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89909)

(declare-fun mapKey!56464 () (_ BitVec 32))

(declare-fun mapValue!56464 () ValueCell!17365)

(declare-fun mapRest!56464 () (Array (_ BitVec 32) ValueCell!17365))

(assert (=> mapNonEmpty!56464 (= (arr!43416 _values!1320) (store mapRest!56464 mapKey!56464 mapValue!56464))))

(declare-fun b!1329186 () Bool)

(declare-fun res!882009 () Bool)

(assert (=> b!1329186 (=> (not res!882009) (not e!757803))))

(declare-datatypes ((array!89911 0))(
  ( (array!89912 (arr!43417 (Array (_ BitVec 32) (_ BitVec 64))) (size!43968 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89911)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1329186 (= res!882009 (validKeyInArray!0 (select (arr!43417 _keys!1590) from!1980)))))

(declare-fun b!1329187 () Bool)

(declare-fun res!882014 () Bool)

(assert (=> b!1329187 (=> (not res!882014) (not e!757803))))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1329187 (= res!882014 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43968 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!882007 () Bool)

(assert (=> start!112258 (=> (not res!882007) (not e!757803))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112258 (= res!882007 (validMask!0 mask!1998))))

(assert (=> start!112258 e!757803))

(declare-fun e!757801 () Bool)

(declare-fun array_inv!32707 (array!89909) Bool)

(assert (=> start!112258 (and (array_inv!32707 _values!1320) e!757801)))

(assert (=> start!112258 true))

(declare-fun array_inv!32708 (array!89911) Bool)

(assert (=> start!112258 (array_inv!32708 _keys!1590)))

(assert (=> start!112258 tp!107488))

(assert (=> start!112258 tp_is_empty!36527))

(declare-fun b!1329188 () Bool)

(declare-fun res!882013 () Bool)

(assert (=> b!1329188 (=> (not res!882013) (not e!757803))))

(declare-datatypes ((List!30944 0))(
  ( (Nil!30941) (Cons!30940 (h!32149 (_ BitVec 64)) (t!44981 List!30944)) )
))
(declare-fun arrayNoDuplicates!0 (array!89911 (_ BitVec 32) List!30944) Bool)

(assert (=> b!1329188 (= res!882013 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30941))))

(declare-fun b!1329189 () Bool)

(assert (=> b!1329189 (= e!757801 (and e!757802 mapRes!56464))))

(declare-fun condMapEmpty!56464 () Bool)

(declare-fun mapDefault!56464 () ValueCell!17365)

