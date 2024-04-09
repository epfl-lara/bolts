; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4280 () Bool)

(assert start!4280)

(declare-fun b_free!1147 () Bool)

(declare-fun b_next!1147 () Bool)

(assert (=> start!4280 (= b_free!1147 (not b_next!1147))))

(declare-fun tp!4867 () Bool)

(declare-fun b_and!1963 () Bool)

(assert (=> start!4280 (= tp!4867 b_and!1963)))

(declare-fun mapNonEmpty!1786 () Bool)

(declare-fun mapRes!1786 () Bool)

(declare-fun tp!4866 () Bool)

(declare-fun e!20877 () Bool)

(assert (=> mapNonEmpty!1786 (= mapRes!1786 (and tp!4866 e!20877))))

(declare-datatypes ((V!1827 0))(
  ( (V!1828 (val!777 Int)) )
))
(declare-datatypes ((ValueCell!551 0))(
  ( (ValueCellFull!551 (v!1868 V!1827)) (EmptyCell!551) )
))
(declare-datatypes ((array!2211 0))(
  ( (array!2212 (arr!1057 (Array (_ BitVec 32) ValueCell!551)) (size!1158 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2211)

(declare-fun mapKey!1786 () (_ BitVec 32))

(declare-fun mapRest!1786 () (Array (_ BitVec 32) ValueCell!551))

(declare-fun mapValue!1786 () ValueCell!551)

(assert (=> mapNonEmpty!1786 (= (arr!1057 _values!1501) (store mapRest!1786 mapKey!1786 mapValue!1786))))

(declare-fun b!32857 () Bool)

(declare-fun res!19946 () Bool)

(declare-fun e!20875 () Bool)

(assert (=> b!32857 (=> (not res!19946) (not e!20875))))

(declare-datatypes ((array!2213 0))(
  ( (array!2214 (arr!1058 (Array (_ BitVec 32) (_ BitVec 64))) (size!1159 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2213)

(declare-datatypes ((List!859 0))(
  ( (Nil!856) (Cons!855 (h!1422 (_ BitVec 64)) (t!3558 List!859)) )
))
(declare-fun arrayNoDuplicates!0 (array!2213 (_ BitVec 32) List!859) Bool)

(assert (=> b!32857 (= res!19946 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!856))))

(declare-fun b!32858 () Bool)

(declare-fun res!19950 () Bool)

(assert (=> b!32858 (=> (not res!19950) (not e!20875))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2213 (_ BitVec 32)) Bool)

(assert (=> b!32858 (= res!19950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!32859 () Bool)

(declare-fun res!19945 () Bool)

(assert (=> b!32859 (=> (not res!19945) (not e!20875))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!32859 (= res!19945 (and (= (size!1158 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1159 _keys!1833) (size!1158 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun res!19947 () Bool)

(assert (=> start!4280 (=> (not res!19947) (not e!20875))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4280 (= res!19947 (validMask!0 mask!2294))))

(assert (=> start!4280 e!20875))

(assert (=> start!4280 true))

(assert (=> start!4280 tp!4867))

(declare-fun e!20878 () Bool)

(declare-fun array_inv!703 (array!2211) Bool)

(assert (=> start!4280 (and (array_inv!703 _values!1501) e!20878)))

(declare-fun array_inv!704 (array!2213) Bool)

(assert (=> start!4280 (array_inv!704 _keys!1833)))

(declare-fun tp_is_empty!1501 () Bool)

(assert (=> start!4280 tp_is_empty!1501))

(declare-fun mapIsEmpty!1786 () Bool)

(assert (=> mapIsEmpty!1786 mapRes!1786))

(declare-fun b!32860 () Bool)

(declare-fun e!20874 () Bool)

(assert (=> b!32860 (= e!20875 e!20874)))

(declare-fun res!19949 () Bool)

(assert (=> b!32860 (=> (not res!19949) (not e!20874))))

(declare-datatypes ((tuple2!1256 0))(
  ( (tuple2!1257 (_1!638 (_ BitVec 64)) (_2!638 V!1827)) )
))
(declare-datatypes ((List!860 0))(
  ( (Nil!857) (Cons!856 (h!1423 tuple2!1256) (t!3559 List!860)) )
))
(declare-datatypes ((ListLongMap!837 0))(
  ( (ListLongMap!838 (toList!434 List!860)) )
))
(declare-fun lt!11912 () ListLongMap!837)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun contains!373 (ListLongMap!837 (_ BitVec 64)) Bool)

(assert (=> b!32860 (= res!19949 (not (contains!373 lt!11912 k!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1827)

(declare-fun minValue!1443 () V!1827)

(declare-fun getCurrentListMap!259 (array!2213 array!2211 (_ BitVec 32) (_ BitVec 32) V!1827 V!1827 (_ BitVec 32) Int) ListLongMap!837)

(assert (=> b!32860 (= lt!11912 (getCurrentListMap!259 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!32861 () Bool)

(declare-fun e!20873 () Bool)

(assert (=> b!32861 (= e!20873 tp_is_empty!1501)))

(declare-fun b!32862 () Bool)

(declare-fun res!19951 () Bool)

(assert (=> b!32862 (=> (not res!19951) (not e!20874))))

(declare-fun arrayContainsKey!0 (array!2213 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!32862 (= res!19951 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!32863 () Bool)

(assert (=> b!32863 (= e!20874 (not true))))

(declare-fun lt!11913 () (_ BitVec 32))

(assert (=> b!32863 (contains!373 lt!11912 (select (arr!1058 _keys!1833) lt!11913))))

(declare-datatypes ((Unit!721 0))(
  ( (Unit!722) )
))
(declare-fun lt!11911 () Unit!721)

(declare-fun lemmaValidKeyInArrayIsInListMap!48 (array!2213 array!2211 (_ BitVec 32) (_ BitVec 32) V!1827 V!1827 (_ BitVec 32) Int) Unit!721)

(assert (=> b!32863 (= lt!11911 (lemmaValidKeyInArrayIsInListMap!48 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11913 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!2213 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!32863 (= lt!11913 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!32864 () Bool)

(assert (=> b!32864 (= e!20878 (and e!20873 mapRes!1786))))

(declare-fun condMapEmpty!1786 () Bool)

(declare-fun mapDefault!1786 () ValueCell!551)

