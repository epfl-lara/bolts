; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4054 () Bool)

(assert start!4054)

(declare-fun b_free!961 () Bool)

(declare-fun b_next!961 () Bool)

(assert (=> start!4054 (= b_free!961 (not b_next!961))))

(declare-fun tp!4302 () Bool)

(declare-fun b_and!1773 () Bool)

(assert (=> start!4054 (= tp!4302 b_and!1773)))

(declare-fun b!29834 () Bool)

(declare-fun e!19235 () Bool)

(assert (=> b!29834 (= e!19235 false)))

(declare-fun k!1304 () (_ BitVec 64))

(declare-datatypes ((array!1851 0))(
  ( (array!1852 (arr!879 (Array (_ BitVec 32) (_ BitVec 64))) (size!980 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1851)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!96 0))(
  ( (MissingZero!96 (index!2506 (_ BitVec 32))) (Found!96 (index!2507 (_ BitVec 32))) (Intermediate!96 (undefined!908 Bool) (index!2508 (_ BitVec 32)) (x!6470 (_ BitVec 32))) (Undefined!96) (MissingVacant!96 (index!2509 (_ BitVec 32))) )
))
(declare-fun lt!11367 () SeekEntryResult!96)

(declare-fun seekEntry!0 ((_ BitVec 64) array!1851 (_ BitVec 32)) SeekEntryResult!96)

(assert (=> b!29834 (= lt!11367 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!29835 () Bool)

(declare-fun e!19234 () Bool)

(declare-fun tp_is_empty!1315 () Bool)

(assert (=> b!29835 (= e!19234 tp_is_empty!1315)))

(declare-fun b!29836 () Bool)

(declare-fun e!19233 () Bool)

(assert (=> b!29836 (= e!19233 tp_is_empty!1315)))

(declare-fun b!29837 () Bool)

(declare-fun res!17902 () Bool)

(assert (=> b!29837 (=> (not res!17902) (not e!19235))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!29837 (= res!17902 (validKeyInArray!0 k!1304))))

(declare-fun mapIsEmpty!1501 () Bool)

(declare-fun mapRes!1501 () Bool)

(assert (=> mapIsEmpty!1501 mapRes!1501))

(declare-fun b!29838 () Bool)

(declare-fun res!17901 () Bool)

(assert (=> b!29838 (=> (not res!17901) (not e!19235))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1851 (_ BitVec 32)) Bool)

(assert (=> b!29838 (= res!17901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!29839 () Bool)

(declare-fun res!17899 () Bool)

(assert (=> b!29839 (=> (not res!17899) (not e!19235))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((V!1579 0))(
  ( (V!1580 (val!684 Int)) )
))
(declare-datatypes ((ValueCell!458 0))(
  ( (ValueCellFull!458 (v!1773 V!1579)) (EmptyCell!458) )
))
(declare-datatypes ((array!1853 0))(
  ( (array!1854 (arr!880 (Array (_ BitVec 32) ValueCell!458)) (size!981 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1853)

(declare-fun zeroValue!1443 () V!1579)

(declare-fun minValue!1443 () V!1579)

(declare-datatypes ((tuple2!1122 0))(
  ( (tuple2!1123 (_1!571 (_ BitVec 64)) (_2!571 V!1579)) )
))
(declare-datatypes ((List!725 0))(
  ( (Nil!722) (Cons!721 (h!1288 tuple2!1122) (t!3420 List!725)) )
))
(declare-datatypes ((ListLongMap!703 0))(
  ( (ListLongMap!704 (toList!367 List!725)) )
))
(declare-fun contains!304 (ListLongMap!703 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!194 (array!1851 array!1853 (_ BitVec 32) (_ BitVec 32) V!1579 V!1579 (_ BitVec 32) Int) ListLongMap!703)

(assert (=> b!29839 (= res!17899 (not (contains!304 (getCurrentListMap!194 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun res!17900 () Bool)

(assert (=> start!4054 (=> (not res!17900) (not e!19235))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4054 (= res!17900 (validMask!0 mask!2294))))

(assert (=> start!4054 e!19235))

(assert (=> start!4054 true))

(assert (=> start!4054 tp!4302))

(declare-fun e!19237 () Bool)

(declare-fun array_inv!593 (array!1853) Bool)

(assert (=> start!4054 (and (array_inv!593 _values!1501) e!19237)))

(declare-fun array_inv!594 (array!1851) Bool)

(assert (=> start!4054 (array_inv!594 _keys!1833)))

(assert (=> start!4054 tp_is_empty!1315))

(declare-fun mapNonEmpty!1501 () Bool)

(declare-fun tp!4303 () Bool)

(assert (=> mapNonEmpty!1501 (= mapRes!1501 (and tp!4303 e!19234))))

(declare-fun mapValue!1501 () ValueCell!458)

(declare-fun mapKey!1501 () (_ BitVec 32))

(declare-fun mapRest!1501 () (Array (_ BitVec 32) ValueCell!458))

(assert (=> mapNonEmpty!1501 (= (arr!880 _values!1501) (store mapRest!1501 mapKey!1501 mapValue!1501))))

(declare-fun b!29840 () Bool)

(declare-fun res!17903 () Bool)

(assert (=> b!29840 (=> (not res!17903) (not e!19235))))

(declare-datatypes ((List!726 0))(
  ( (Nil!723) (Cons!722 (h!1289 (_ BitVec 64)) (t!3421 List!726)) )
))
(declare-fun arrayNoDuplicates!0 (array!1851 (_ BitVec 32) List!726) Bool)

(assert (=> b!29840 (= res!17903 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!723))))

(declare-fun b!29841 () Bool)

(declare-fun res!17905 () Bool)

(assert (=> b!29841 (=> (not res!17905) (not e!19235))))

(declare-fun arrayContainsKey!0 (array!1851 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!29841 (= res!17905 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun b!29842 () Bool)

(assert (=> b!29842 (= e!19237 (and e!19233 mapRes!1501))))

(declare-fun condMapEmpty!1501 () Bool)

(declare-fun mapDefault!1501 () ValueCell!458)

