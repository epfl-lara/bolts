; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4292 () Bool)

(assert start!4292)

(declare-fun b_free!1159 () Bool)

(declare-fun b_next!1159 () Bool)

(assert (=> start!4292 (= b_free!1159 (not b_next!1159))))

(declare-fun tp!4902 () Bool)

(declare-fun b_and!1975 () Bool)

(assert (=> start!4292 (= tp!4902 b_and!1975)))

(declare-fun b!33039 () Bool)

(declare-fun e!20988 () Bool)

(declare-fun e!20984 () Bool)

(assert (=> b!33039 (= e!20988 e!20984)))

(declare-fun res!20073 () Bool)

(assert (=> b!33039 (=> (not res!20073) (not e!20984))))

(declare-datatypes ((V!1843 0))(
  ( (V!1844 (val!783 Int)) )
))
(declare-datatypes ((tuple2!1266 0))(
  ( (tuple2!1267 (_1!643 (_ BitVec 64)) (_2!643 V!1843)) )
))
(declare-datatypes ((List!869 0))(
  ( (Nil!866) (Cons!865 (h!1432 tuple2!1266) (t!3568 List!869)) )
))
(declare-datatypes ((ListLongMap!847 0))(
  ( (ListLongMap!848 (toList!439 List!869)) )
))
(declare-fun lt!11967 () ListLongMap!847)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun contains!378 (ListLongMap!847 (_ BitVec 64)) Bool)

(assert (=> b!33039 (= res!20073 (not (contains!378 lt!11967 k!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2235 0))(
  ( (array!2236 (arr!1069 (Array (_ BitVec 32) (_ BitVec 64))) (size!1170 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2235)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-datatypes ((ValueCell!557 0))(
  ( (ValueCellFull!557 (v!1874 V!1843)) (EmptyCell!557) )
))
(declare-datatypes ((array!2237 0))(
  ( (array!2238 (arr!1070 (Array (_ BitVec 32) ValueCell!557)) (size!1171 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2237)

(declare-fun zeroValue!1443 () V!1843)

(declare-fun minValue!1443 () V!1843)

(declare-fun getCurrentListMap!264 (array!2235 array!2237 (_ BitVec 32) (_ BitVec 32) V!1843 V!1843 (_ BitVec 32) Int) ListLongMap!847)

(assert (=> b!33039 (= lt!11967 (getCurrentListMap!264 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!33040 () Bool)

(declare-fun res!20074 () Bool)

(assert (=> b!33040 (=> (not res!20074) (not e!20988))))

(declare-datatypes ((List!870 0))(
  ( (Nil!867) (Cons!866 (h!1433 (_ BitVec 64)) (t!3569 List!870)) )
))
(declare-fun arrayNoDuplicates!0 (array!2235 (_ BitVec 32) List!870) Bool)

(assert (=> b!33040 (= res!20074 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!867))))

(declare-fun b!33041 () Bool)

(declare-fun e!20983 () Bool)

(declare-fun tp_is_empty!1513 () Bool)

(assert (=> b!33041 (= e!20983 tp_is_empty!1513)))

(declare-fun b!33042 () Bool)

(declare-fun res!20075 () Bool)

(assert (=> b!33042 (=> (not res!20075) (not e!20988))))

(assert (=> b!33042 (= res!20075 (and (= (size!1171 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1170 _keys!1833) (size!1171 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!33043 () Bool)

(declare-fun res!20076 () Bool)

(assert (=> b!33043 (=> (not res!20076) (not e!20984))))

(declare-fun arrayContainsKey!0 (array!2235 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!33043 (= res!20076 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!33044 () Bool)

(declare-fun res!20080 () Bool)

(assert (=> b!33044 (=> (not res!20080) (not e!20988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2235 (_ BitVec 32)) Bool)

(assert (=> b!33044 (= res!20080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!33045 () Bool)

(declare-fun res!20077 () Bool)

(assert (=> b!33045 (=> (not res!20077) (not e!20988))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!33045 (= res!20077 (validKeyInArray!0 k!1304))))

(declare-fun mapIsEmpty!1804 () Bool)

(declare-fun mapRes!1804 () Bool)

(assert (=> mapIsEmpty!1804 mapRes!1804))

(declare-fun b!33046 () Bool)

(declare-fun e!20987 () Bool)

(assert (=> b!33046 (= e!20984 (not e!20987))))

(declare-fun res!20079 () Bool)

(assert (=> b!33046 (=> res!20079 e!20987)))

(assert (=> b!33046 (= res!20079 (not (= (size!1170 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))))))

(declare-fun lt!11965 () (_ BitVec 32))

(assert (=> b!33046 (contains!378 lt!11967 (select (arr!1069 _keys!1833) lt!11965))))

(declare-datatypes ((Unit!731 0))(
  ( (Unit!732) )
))
(declare-fun lt!11966 () Unit!731)

(declare-fun lemmaValidKeyInArrayIsInListMap!53 (array!2235 array!2237 (_ BitVec 32) (_ BitVec 32) V!1843 V!1843 (_ BitVec 32) Int) Unit!731)

(assert (=> b!33046 (= lt!11966 (lemmaValidKeyInArrayIsInListMap!53 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11965 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!2235 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!33046 (= lt!11965 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!33047 () Bool)

(declare-datatypes ((SeekEntryResult!131 0))(
  ( (MissingZero!131 (index!2646 (_ BitVec 32))) (Found!131 (index!2647 (_ BitVec 32))) (Intermediate!131 (undefined!943 Bool) (index!2648 (_ BitVec 32)) (x!6789 (_ BitVec 32))) (Undefined!131) (MissingVacant!131 (index!2649 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2235 (_ BitVec 32)) SeekEntryResult!131)

(assert (=> b!33047 (= e!20987 (= (seekEntryOrOpen!0 k!1304 _keys!1833 mask!2294) (Found!131 lt!11965)))))

(declare-fun mapNonEmpty!1804 () Bool)

(declare-fun tp!4903 () Bool)

(assert (=> mapNonEmpty!1804 (= mapRes!1804 (and tp!4903 e!20983))))

(declare-fun mapValue!1804 () ValueCell!557)

(declare-fun mapRest!1804 () (Array (_ BitVec 32) ValueCell!557))

(declare-fun mapKey!1804 () (_ BitVec 32))

(assert (=> mapNonEmpty!1804 (= (arr!1070 _values!1501) (store mapRest!1804 mapKey!1804 mapValue!1804))))

(declare-fun res!20078 () Bool)

(assert (=> start!4292 (=> (not res!20078) (not e!20988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4292 (= res!20078 (validMask!0 mask!2294))))

(assert (=> start!4292 e!20988))

(assert (=> start!4292 true))

(assert (=> start!4292 tp!4902))

(declare-fun e!20989 () Bool)

(declare-fun array_inv!711 (array!2237) Bool)

(assert (=> start!4292 (and (array_inv!711 _values!1501) e!20989)))

(declare-fun array_inv!712 (array!2235) Bool)

(assert (=> start!4292 (array_inv!712 _keys!1833)))

(assert (=> start!4292 tp_is_empty!1513))

(declare-fun b!33048 () Bool)

(declare-fun e!20986 () Bool)

(assert (=> b!33048 (= e!20986 tp_is_empty!1513)))

(declare-fun b!33049 () Bool)

(assert (=> b!33049 (= e!20989 (and e!20986 mapRes!1804))))

(declare-fun condMapEmpty!1804 () Bool)

(declare-fun mapDefault!1804 () ValueCell!557)

