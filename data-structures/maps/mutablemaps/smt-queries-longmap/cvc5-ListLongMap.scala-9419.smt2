; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112158 () Bool)

(assert start!112158)

(declare-fun mapNonEmpty!56314 () Bool)

(declare-fun mapRes!56314 () Bool)

(declare-fun tp!107222 () Bool)

(declare-fun e!757052 () Bool)

(assert (=> mapNonEmpty!56314 (= mapRes!56314 (and tp!107222 e!757052))))

(declare-datatypes ((V!53673 0))(
  ( (V!53674 (val!18288 Int)) )
))
(declare-datatypes ((ValueCell!17315 0))(
  ( (ValueCellFull!17315 (v!20923 V!53673)) (EmptyCell!17315) )
))
(declare-datatypes ((array!89719 0))(
  ( (array!89720 (arr!43321 (Array (_ BitVec 32) ValueCell!17315)) (size!43872 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89719)

(declare-fun mapValue!56314 () ValueCell!17315)

(declare-fun mapRest!56314 () (Array (_ BitVec 32) ValueCell!17315))

(declare-fun mapKey!56314 () (_ BitVec 32))

(assert (=> mapNonEmpty!56314 (= (arr!43321 _values!1320) (store mapRest!56314 mapKey!56314 mapValue!56314))))

(declare-fun mapIsEmpty!56314 () Bool)

(assert (=> mapIsEmpty!56314 mapRes!56314))

(declare-fun b!1327854 () Bool)

(declare-fun res!881149 () Bool)

(declare-fun e!757050 () Bool)

(assert (=> b!1327854 (=> (not res!881149) (not e!757050))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89721 0))(
  ( (array!89722 (arr!43322 (Array (_ BitVec 32) (_ BitVec 64))) (size!43873 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89721)

(assert (=> b!1327854 (= res!881149 (and (= (size!43872 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43873 _keys!1590) (size!43872 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1327855 () Bool)

(assert (=> b!1327855 (= e!757050 false)))

(declare-fun lt!590714 () Bool)

(declare-datatypes ((List!30882 0))(
  ( (Nil!30879) (Cons!30878 (h!32087 (_ BitVec 64)) (t!44895 List!30882)) )
))
(declare-fun arrayNoDuplicates!0 (array!89721 (_ BitVec 32) List!30882) Bool)

(assert (=> b!1327855 (= lt!590714 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30879))))

(declare-fun res!881150 () Bool)

(assert (=> start!112158 (=> (not res!881150) (not e!757050))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112158 (= res!881150 (validMask!0 mask!1998))))

(assert (=> start!112158 e!757050))

(assert (=> start!112158 true))

(declare-fun e!757053 () Bool)

(declare-fun array_inv!32639 (array!89719) Bool)

(assert (=> start!112158 (and (array_inv!32639 _values!1320) e!757053)))

(declare-fun array_inv!32640 (array!89721) Bool)

(assert (=> start!112158 (array_inv!32640 _keys!1590)))

(declare-fun b!1327856 () Bool)

(declare-fun e!757054 () Bool)

(assert (=> b!1327856 (= e!757053 (and e!757054 mapRes!56314))))

(declare-fun condMapEmpty!56314 () Bool)

(declare-fun mapDefault!56314 () ValueCell!17315)

