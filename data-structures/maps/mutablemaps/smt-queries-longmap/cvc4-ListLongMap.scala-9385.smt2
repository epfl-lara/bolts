; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111786 () Bool)

(assert start!111786)

(declare-fun b_free!30407 () Bool)

(declare-fun b_next!30407 () Bool)

(assert (=> start!111786 (= b_free!30407 (not b_next!30407))))

(declare-fun tp!106698 () Bool)

(declare-fun b_and!48955 () Bool)

(assert (=> start!111786 (= tp!106698 b_and!48955)))

(declare-fun b!1324079 () Bool)

(declare-fun e!754863 () Bool)

(declare-fun tp_is_empty!36227 () Bool)

(assert (=> b!1324079 (= e!754863 tp_is_empty!36227)))

(declare-fun mapIsEmpty!55988 () Bool)

(declare-fun mapRes!55988 () Bool)

(assert (=> mapIsEmpty!55988 mapRes!55988))

(declare-fun b!1324080 () Bool)

(declare-fun res!878952 () Bool)

(declare-fun e!754865 () Bool)

(assert (=> b!1324080 (=> (not res!878952) (not e!754865))))

(declare-datatypes ((array!89323 0))(
  ( (array!89324 (arr!43131 (Array (_ BitVec 32) (_ BitVec 64))) (size!43682 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89323)

(declare-datatypes ((List!30772 0))(
  ( (Nil!30769) (Cons!30768 (h!31977 (_ BitVec 64)) (t!44705 List!30772)) )
))
(declare-fun arrayNoDuplicates!0 (array!89323 (_ BitVec 32) List!30772) Bool)

(assert (=> b!1324080 (= res!878952 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30769))))

(declare-fun b!1324081 () Bool)

(assert (=> b!1324081 (= e!754865 false)))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53405 0))(
  ( (V!53406 (val!18188 Int)) )
))
(declare-fun zeroValue!1279 () V!53405)

(declare-datatypes ((ValueCell!17215 0))(
  ( (ValueCellFull!17215 (v!20816 V!53405)) (EmptyCell!17215) )
))
(declare-datatypes ((array!89325 0))(
  ( (array!89326 (arr!43132 (Array (_ BitVec 32) ValueCell!17215)) (size!43683 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89325)

(declare-fun minValue!1279 () V!53405)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun lt!589375 () Bool)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23598 0))(
  ( (tuple2!23599 (_1!11809 (_ BitVec 64)) (_2!11809 V!53405)) )
))
(declare-datatypes ((List!30773 0))(
  ( (Nil!30770) (Cons!30769 (h!31978 tuple2!23598) (t!44706 List!30773)) )
))
(declare-datatypes ((ListLongMap!21267 0))(
  ( (ListLongMap!21268 (toList!10649 List!30773)) )
))
(declare-fun contains!8740 (ListLongMap!21267 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5586 (array!89323 array!89325 (_ BitVec 32) (_ BitVec 32) V!53405 V!53405 (_ BitVec 32) Int) ListLongMap!21267)

(assert (=> b!1324081 (= lt!589375 (contains!8740 (getCurrentListMap!5586 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun mapNonEmpty!55988 () Bool)

(declare-fun tp!106697 () Bool)

(declare-fun e!754867 () Bool)

(assert (=> mapNonEmpty!55988 (= mapRes!55988 (and tp!106697 e!754867))))

(declare-fun mapValue!55988 () ValueCell!17215)

(declare-fun mapKey!55988 () (_ BitVec 32))

(declare-fun mapRest!55988 () (Array (_ BitVec 32) ValueCell!17215))

(assert (=> mapNonEmpty!55988 (= (arr!43132 _values!1337) (store mapRest!55988 mapKey!55988 mapValue!55988))))

(declare-fun b!1324082 () Bool)

(assert (=> b!1324082 (= e!754867 tp_is_empty!36227)))

(declare-fun b!1324083 () Bool)

(declare-fun res!878951 () Bool)

(assert (=> b!1324083 (=> (not res!878951) (not e!754865))))

(assert (=> b!1324083 (= res!878951 (and (= (size!43683 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43682 _keys!1609) (size!43683 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1324084 () Bool)

(declare-fun res!878950 () Bool)

(assert (=> b!1324084 (=> (not res!878950) (not e!754865))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89323 (_ BitVec 32)) Bool)

(assert (=> b!1324084 (= res!878950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1324086 () Bool)

(declare-fun e!754866 () Bool)

(assert (=> b!1324086 (= e!754866 (and e!754863 mapRes!55988))))

(declare-fun condMapEmpty!55988 () Bool)

(declare-fun mapDefault!55988 () ValueCell!17215)

