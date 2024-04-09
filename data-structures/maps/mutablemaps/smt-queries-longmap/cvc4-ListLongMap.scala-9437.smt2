; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112270 () Bool)

(assert start!112270)

(declare-fun b_free!30629 () Bool)

(declare-fun b_next!30629 () Bool)

(assert (=> start!112270 (= b_free!30629 (not b_next!30629))))

(declare-fun tp!107524 () Bool)

(declare-fun b_and!49323 () Bool)

(assert (=> start!112270 (= tp!107524 b_and!49323)))

(declare-fun mapNonEmpty!56482 () Bool)

(declare-fun mapRes!56482 () Bool)

(declare-fun tp!107525 () Bool)

(declare-fun e!757893 () Bool)

(assert (=> mapNonEmpty!56482 (= mapRes!56482 (and tp!107525 e!757893))))

(declare-fun mapKey!56482 () (_ BitVec 32))

(declare-datatypes ((V!53821 0))(
  ( (V!53822 (val!18344 Int)) )
))
(declare-datatypes ((ValueCell!17371 0))(
  ( (ValueCellFull!17371 (v!20979 V!53821)) (EmptyCell!17371) )
))
(declare-datatypes ((array!89933 0))(
  ( (array!89934 (arr!43428 (Array (_ BitVec 32) ValueCell!17371)) (size!43979 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89933)

(declare-fun mapValue!56482 () ValueCell!17371)

(declare-fun mapRest!56482 () (Array (_ BitVec 32) ValueCell!17371))

(assert (=> mapNonEmpty!56482 (= (arr!43428 _values!1320) (store mapRest!56482 mapKey!56482 mapValue!56482))))

(declare-fun b!1329412 () Bool)

(declare-fun e!757891 () Bool)

(declare-fun tp_is_empty!36539 () Bool)

(assert (=> b!1329412 (= e!757891 tp_is_empty!36539)))

(declare-fun b!1329413 () Bool)

(declare-fun res!882172 () Bool)

(declare-fun e!757894 () Bool)

(assert (=> b!1329413 (=> (not res!882172) (not e!757894))))

(declare-datatypes ((array!89935 0))(
  ( (array!89936 (arr!43429 (Array (_ BitVec 32) (_ BitVec 64))) (size!43980 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89935)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1329413 (= res!882172 (validKeyInArray!0 (select (arr!43429 _keys!1590) from!1980)))))

(declare-fun b!1329414 () Bool)

(declare-fun res!882173 () Bool)

(assert (=> b!1329414 (=> (not res!882173) (not e!757894))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89935 (_ BitVec 32)) Bool)

(assert (=> b!1329414 (= res!882173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1329415 () Bool)

(declare-fun res!882169 () Bool)

(assert (=> b!1329415 (=> (not res!882169) (not e!757894))))

(declare-datatypes ((List!30952 0))(
  ( (Nil!30949) (Cons!30948 (h!32157 (_ BitVec 64)) (t!45001 List!30952)) )
))
(declare-fun arrayNoDuplicates!0 (array!89935 (_ BitVec 32) List!30952) Bool)

(assert (=> b!1329415 (= res!882169 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30949))))

(declare-fun b!1329417 () Bool)

(declare-fun res!882176 () Bool)

(assert (=> b!1329417 (=> (not res!882176) (not e!757894))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1329417 (= res!882176 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1329418 () Bool)

(declare-fun res!882171 () Bool)

(assert (=> b!1329418 (=> (not res!882171) (not e!757894))))

(assert (=> b!1329418 (= res!882171 (and (= (size!43979 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43980 _keys!1590) (size!43979 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1329419 () Bool)

(declare-fun res!882174 () Bool)

(assert (=> b!1329419 (=> (not res!882174) (not e!757894))))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1329419 (= res!882174 (not (= (select (arr!43429 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1329420 () Bool)

(assert (=> b!1329420 (= e!757893 tp_is_empty!36539)))

(declare-fun b!1329421 () Bool)

(declare-fun res!882168 () Bool)

(assert (=> b!1329421 (=> (not res!882168) (not e!757894))))

(assert (=> b!1329421 (= res!882168 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43980 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1329422 () Bool)

(declare-fun res!882170 () Bool)

(assert (=> b!1329422 (=> (not res!882170) (not e!757894))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!53821)

(declare-fun zeroValue!1262 () V!53821)

(declare-datatypes ((tuple2!23762 0))(
  ( (tuple2!23763 (_1!11891 (_ BitVec 64)) (_2!11891 V!53821)) )
))
(declare-datatypes ((List!30953 0))(
  ( (Nil!30950) (Cons!30949 (h!32158 tuple2!23762) (t!45002 List!30953)) )
))
(declare-datatypes ((ListLongMap!21431 0))(
  ( (ListLongMap!21432 (toList!10731 List!30953)) )
))
(declare-fun contains!8831 (ListLongMap!21431 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5663 (array!89935 array!89933 (_ BitVec 32) (_ BitVec 32) V!53821 V!53821 (_ BitVec 32) Int) ListLongMap!21431)

(assert (=> b!1329422 (= res!882170 (contains!8831 (getCurrentListMap!5663 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1329423 () Bool)

(declare-fun e!757892 () Bool)

(assert (=> b!1329423 (= e!757892 (and e!757891 mapRes!56482))))

(declare-fun condMapEmpty!56482 () Bool)

(declare-fun mapDefault!56482 () ValueCell!17371)

