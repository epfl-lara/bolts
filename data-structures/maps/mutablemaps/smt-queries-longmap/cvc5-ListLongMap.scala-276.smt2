; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4480 () Bool)

(assert start!4480)

(declare-fun b_free!1243 () Bool)

(declare-fun b_next!1243 () Bool)

(assert (=> start!4480 (= b_free!1243 (not b_next!1243))))

(declare-fun tp!5166 () Bool)

(declare-fun b_and!2067 () Bool)

(assert (=> start!4480 (= tp!5166 b_and!2067)))

(declare-fun b!34890 () Bool)

(declare-fun res!21184 () Bool)

(declare-fun e!22076 () Bool)

(assert (=> b!34890 (=> (not res!21184) (not e!22076))))

(declare-datatypes ((array!2399 0))(
  ( (array!2400 (arr!1147 (Array (_ BitVec 32) (_ BitVec 64))) (size!1248 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2399)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2399 (_ BitVec 32)) Bool)

(assert (=> b!34890 (= res!21184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!34891 () Bool)

(declare-fun res!21185 () Bool)

(assert (=> b!34891 (=> (not res!21185) (not e!22076))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!34891 (= res!21185 (validKeyInArray!0 k!1304))))

(declare-fun b!34892 () Bool)

(declare-fun e!22073 () Bool)

(declare-fun tp_is_empty!1597 () Bool)

(assert (=> b!34892 (= e!22073 tp_is_empty!1597)))

(declare-fun b!34893 () Bool)

(declare-fun e!22077 () Bool)

(assert (=> b!34893 (= e!22077 tp_is_empty!1597)))

(declare-fun b!34894 () Bool)

(assert (=> b!34894 (= e!22076 false)))

(declare-datatypes ((SeekEntryResult!159 0))(
  ( (MissingZero!159 (index!2758 (_ BitVec 32))) (Found!159 (index!2759 (_ BitVec 32))) (Intermediate!159 (undefined!971 Bool) (index!2760 (_ BitVec 32)) (x!6969 (_ BitVec 32))) (Undefined!159) (MissingVacant!159 (index!2761 (_ BitVec 32))) )
))
(declare-fun lt!12832 () SeekEntryResult!159)

(declare-fun seekEntry!0 ((_ BitVec 64) array!2399 (_ BitVec 32)) SeekEntryResult!159)

(assert (=> b!34894 (= lt!12832 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!34895 () Bool)

(declare-fun res!21190 () Bool)

(assert (=> b!34895 (=> (not res!21190) (not e!22076))))

(declare-fun arrayContainsKey!0 (array!2399 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!34895 (= res!21190 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun b!34896 () Bool)

(declare-fun res!21189 () Bool)

(assert (=> b!34896 (=> (not res!21189) (not e!22076))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1955 0))(
  ( (V!1956 (val!825 Int)) )
))
(declare-datatypes ((ValueCell!599 0))(
  ( (ValueCellFull!599 (v!1920 V!1955)) (EmptyCell!599) )
))
(declare-datatypes ((array!2401 0))(
  ( (array!2402 (arr!1148 (Array (_ BitVec 32) ValueCell!599)) (size!1249 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2401)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1955)

(declare-fun minValue!1443 () V!1955)

(declare-datatypes ((tuple2!1324 0))(
  ( (tuple2!1325 (_1!672 (_ BitVec 64)) (_2!672 V!1955)) )
))
(declare-datatypes ((List!930 0))(
  ( (Nil!927) (Cons!926 (h!1493 tuple2!1324) (t!3637 List!930)) )
))
(declare-datatypes ((ListLongMap!905 0))(
  ( (ListLongMap!906 (toList!468 List!930)) )
))
(declare-fun contains!411 (ListLongMap!905 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!289 (array!2399 array!2401 (_ BitVec 32) (_ BitVec 32) V!1955 V!1955 (_ BitVec 32) Int) ListLongMap!905)

(assert (=> b!34896 (= res!21189 (not (contains!411 (getCurrentListMap!289 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun mapNonEmpty!1942 () Bool)

(declare-fun mapRes!1942 () Bool)

(declare-fun tp!5167 () Bool)

(assert (=> mapNonEmpty!1942 (= mapRes!1942 (and tp!5167 e!22077))))

(declare-fun mapRest!1942 () (Array (_ BitVec 32) ValueCell!599))

(declare-fun mapValue!1942 () ValueCell!599)

(declare-fun mapKey!1942 () (_ BitVec 32))

(assert (=> mapNonEmpty!1942 (= (arr!1148 _values!1501) (store mapRest!1942 mapKey!1942 mapValue!1942))))

(declare-fun b!34897 () Bool)

(declare-fun res!21186 () Bool)

(assert (=> b!34897 (=> (not res!21186) (not e!22076))))

(declare-datatypes ((List!931 0))(
  ( (Nil!928) (Cons!927 (h!1494 (_ BitVec 64)) (t!3638 List!931)) )
))
(declare-fun arrayNoDuplicates!0 (array!2399 (_ BitVec 32) List!931) Bool)

(assert (=> b!34897 (= res!21186 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!928))))

(declare-fun b!34898 () Bool)

(declare-fun e!22074 () Bool)

(assert (=> b!34898 (= e!22074 (and e!22073 mapRes!1942))))

(declare-fun condMapEmpty!1942 () Bool)

(declare-fun mapDefault!1942 () ValueCell!599)

