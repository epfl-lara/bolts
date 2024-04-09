; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!854 () Bool)

(assert start!854)

(declare-fun b_free!247 () Bool)

(declare-fun b_next!247 () Bool)

(assert (=> start!854 (= b_free!247 (not b_next!247))))

(declare-fun tp!970 () Bool)

(declare-fun b_and!393 () Bool)

(assert (=> start!854 (= tp!970 b_and!393)))

(declare-fun b!6997 () Bool)

(declare-fun e!3870 () Bool)

(assert (=> b!6997 (= e!3870 true)))

(declare-datatypes ((SeekEntryResult!31 0))(
  ( (MissingZero!31 (index!2243 (_ BitVec 32))) (Found!31 (index!2244 (_ BitVec 32))) (Intermediate!31 (undefined!843 Bool) (index!2245 (_ BitVec 32)) (x!2577 (_ BitVec 32))) (Undefined!31) (MissingVacant!31 (index!2246 (_ BitVec 32))) )
))
(declare-fun lt!1393 () SeekEntryResult!31)

(declare-fun lt!1394 () (_ BitVec 32))

(assert (=> b!6997 (and (is-Found!31 lt!1393) (= (index!2244 lt!1393) lt!1394))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((array!583 0))(
  ( (array!584 (arr!280 (Array (_ BitVec 32) (_ BitVec 64))) (size!342 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!583)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!583 (_ BitVec 32)) SeekEntryResult!31)

(assert (=> b!6997 (= lt!1393 (seekEntry!0 k!1278 _keys!1806 mask!2250))))

(declare-datatypes ((Unit!127 0))(
  ( (Unit!128) )
))
(declare-fun lt!1395 () Unit!127)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!583 (_ BitVec 32)) Unit!127)

(assert (=> b!6997 (= lt!1395 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k!1278 lt!1394 _keys!1806 mask!2250))))

(declare-fun b!6998 () Bool)

(declare-fun e!3868 () Bool)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!6998 (= e!3868 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!6999 () Bool)

(declare-fun arrayContainsKey!0 (array!583 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!6999 (= e!3868 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!7000 () Bool)

(declare-fun res!7175 () Bool)

(declare-fun e!3872 () Bool)

(assert (=> b!7000 (=> (not res!7175) (not e!3872))))

(declare-fun defaultEntry!1495 () Int)

(declare-datatypes ((V!611 0))(
  ( (V!612 (val!168 Int)) )
))
(declare-datatypes ((ValueCell!146 0))(
  ( (ValueCellFull!146 (v!1259 V!611)) (EmptyCell!146) )
))
(declare-datatypes ((array!585 0))(
  ( (array!586 (arr!281 (Array (_ BitVec 32) ValueCell!146)) (size!343 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!585)

(declare-fun minValue!1434 () V!611)

(declare-fun zeroValue!1434 () V!611)

(declare-datatypes ((tuple2!170 0))(
  ( (tuple2!171 (_1!85 (_ BitVec 64)) (_2!85 V!611)) )
))
(declare-datatypes ((List!187 0))(
  ( (Nil!184) (Cons!183 (h!749 tuple2!170) (t!2322 List!187)) )
))
(declare-datatypes ((ListLongMap!175 0))(
  ( (ListLongMap!176 (toList!103 List!187)) )
))
(declare-fun contains!77 (ListLongMap!175 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!62 (array!583 array!585 (_ BitVec 32) (_ BitVec 32) V!611 V!611 (_ BitVec 32) Int) ListLongMap!175)

(assert (=> b!7000 (= res!7175 (contains!77 (getCurrentListMap!62 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!7001 () Bool)

(declare-fun res!7173 () Bool)

(assert (=> b!7001 (=> (not res!7173) (not e!3872))))

(declare-datatypes ((List!188 0))(
  ( (Nil!185) (Cons!184 (h!750 (_ BitVec 64)) (t!2323 List!188)) )
))
(declare-fun arrayNoDuplicates!0 (array!583 (_ BitVec 32) List!188) Bool)

(assert (=> b!7001 (= res!7173 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!185))))

(declare-fun b!7002 () Bool)

(declare-fun res!7170 () Bool)

(assert (=> b!7002 (=> (not res!7170) (not e!3872))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!583 (_ BitVec 32)) Bool)

(assert (=> b!7002 (= res!7170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!7003 () Bool)

(declare-fun e!3875 () Bool)

(declare-fun tp_is_empty!325 () Bool)

(assert (=> b!7003 (= e!3875 tp_is_empty!325)))

(declare-fun mapIsEmpty!458 () Bool)

(declare-fun mapRes!458 () Bool)

(assert (=> mapIsEmpty!458 mapRes!458))

(declare-fun b!7004 () Bool)

(declare-fun res!7169 () Bool)

(assert (=> b!7004 (=> (not res!7169) (not e!3872))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!7004 (= res!7169 (validKeyInArray!0 k!1278))))

(declare-fun b!7005 () Bool)

(declare-fun res!7172 () Bool)

(assert (=> b!7005 (=> res!7172 e!3870)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!583 (_ BitVec 32)) SeekEntryResult!31)

(assert (=> b!7005 (= res!7172 (not (= (seekEntryOrOpen!0 k!1278 _keys!1806 mask!2250) (Found!31 lt!1394))))))

(declare-fun res!7174 () Bool)

(assert (=> start!854 (=> (not res!7174) (not e!3872))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!854 (= res!7174 (validMask!0 mask!2250))))

(assert (=> start!854 e!3872))

(assert (=> start!854 tp!970))

(assert (=> start!854 true))

(declare-fun e!3869 () Bool)

(declare-fun array_inv!205 (array!585) Bool)

(assert (=> start!854 (and (array_inv!205 _values!1492) e!3869)))

(assert (=> start!854 tp_is_empty!325))

(declare-fun array_inv!206 (array!583) Bool)

(assert (=> start!854 (array_inv!206 _keys!1806)))

(declare-fun b!7006 () Bool)

(declare-fun e!3873 () Bool)

(assert (=> b!7006 (= e!3873 tp_is_empty!325)))

(declare-fun b!7007 () Bool)

(declare-fun e!3874 () Bool)

(assert (=> b!7007 (= e!3872 (not e!3874))))

(declare-fun res!7171 () Bool)

(assert (=> b!7007 (=> res!7171 e!3874)))

(assert (=> b!7007 (= res!7171 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(assert (=> b!7007 e!3868))

(declare-fun c!503 () Bool)

(assert (=> b!7007 (= c!503 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!1391 () Unit!127)

(declare-fun lemmaKeyInListMapIsInArray!45 (array!583 array!585 (_ BitVec 32) (_ BitVec 32) V!611 V!611 (_ BitVec 64) Int) Unit!127)

(assert (=> b!7007 (= lt!1391 (lemmaKeyInListMapIsInArray!45 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun mapNonEmpty!458 () Bool)

(declare-fun tp!971 () Bool)

(assert (=> mapNonEmpty!458 (= mapRes!458 (and tp!971 e!3873))))

(declare-fun mapRest!458 () (Array (_ BitVec 32) ValueCell!146))

(declare-fun mapValue!458 () ValueCell!146)

(declare-fun mapKey!458 () (_ BitVec 32))

(assert (=> mapNonEmpty!458 (= (arr!281 _values!1492) (store mapRest!458 mapKey!458 mapValue!458))))

(declare-fun b!7008 () Bool)

(assert (=> b!7008 (= e!3869 (and e!3875 mapRes!458))))

(declare-fun condMapEmpty!458 () Bool)

(declare-fun mapDefault!458 () ValueCell!146)

