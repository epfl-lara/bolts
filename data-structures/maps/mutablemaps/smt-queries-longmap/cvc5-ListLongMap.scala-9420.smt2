; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112164 () Bool)

(assert start!112164)

(declare-fun b!1327908 () Bool)

(declare-fun res!881175 () Bool)

(declare-fun e!757095 () Bool)

(assert (=> b!1327908 (=> (not res!881175) (not e!757095))))

(declare-datatypes ((V!53681 0))(
  ( (V!53682 (val!18291 Int)) )
))
(declare-datatypes ((ValueCell!17318 0))(
  ( (ValueCellFull!17318 (v!20926 V!53681)) (EmptyCell!17318) )
))
(declare-datatypes ((array!89731 0))(
  ( (array!89732 (arr!43327 (Array (_ BitVec 32) ValueCell!17318)) (size!43878 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89731)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89733 0))(
  ( (array!89734 (arr!43328 (Array (_ BitVec 32) (_ BitVec 64))) (size!43879 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89733)

(assert (=> b!1327908 (= res!881175 (and (= (size!43878 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43879 _keys!1590) (size!43878 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!56323 () Bool)

(declare-fun mapRes!56323 () Bool)

(declare-fun tp!107231 () Bool)

(declare-fun e!757099 () Bool)

(assert (=> mapNonEmpty!56323 (= mapRes!56323 (and tp!107231 e!757099))))

(declare-fun mapValue!56323 () ValueCell!17318)

(declare-fun mapKey!56323 () (_ BitVec 32))

(declare-fun mapRest!56323 () (Array (_ BitVec 32) ValueCell!17318))

(assert (=> mapNonEmpty!56323 (= (arr!43327 _values!1320) (store mapRest!56323 mapKey!56323 mapValue!56323))))

(declare-fun b!1327909 () Bool)

(assert (=> b!1327909 (= e!757095 false)))

(declare-fun lt!590723 () Bool)

(declare-datatypes ((List!30884 0))(
  ( (Nil!30881) (Cons!30880 (h!32089 (_ BitVec 64)) (t!44897 List!30884)) )
))
(declare-fun arrayNoDuplicates!0 (array!89733 (_ BitVec 32) List!30884) Bool)

(assert (=> b!1327909 (= lt!590723 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30881))))

(declare-fun b!1327910 () Bool)

(declare-fun e!757097 () Bool)

(declare-fun e!757096 () Bool)

(assert (=> b!1327910 (= e!757097 (and e!757096 mapRes!56323))))

(declare-fun condMapEmpty!56323 () Bool)

(declare-fun mapDefault!56323 () ValueCell!17318)

