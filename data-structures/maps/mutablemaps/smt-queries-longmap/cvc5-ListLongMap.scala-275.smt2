; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4474 () Bool)

(assert start!4474)

(declare-fun b_free!1237 () Bool)

(declare-fun b_next!1237 () Bool)

(assert (=> start!4474 (= b_free!1237 (not b_next!1237))))

(declare-fun tp!5148 () Bool)

(declare-fun b_and!2061 () Bool)

(assert (=> start!4474 (= tp!5148 b_and!2061)))

(declare-fun res!21123 () Bool)

(declare-fun e!22029 () Bool)

(assert (=> start!4474 (=> (not res!21123) (not e!22029))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4474 (= res!21123 (validMask!0 mask!2294))))

(assert (=> start!4474 e!22029))

(assert (=> start!4474 true))

(assert (=> start!4474 tp!5148))

(declare-datatypes ((V!1947 0))(
  ( (V!1948 (val!822 Int)) )
))
(declare-datatypes ((ValueCell!596 0))(
  ( (ValueCellFull!596 (v!1917 V!1947)) (EmptyCell!596) )
))
(declare-datatypes ((array!2387 0))(
  ( (array!2388 (arr!1141 (Array (_ BitVec 32) ValueCell!596)) (size!1242 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2387)

(declare-fun e!22031 () Bool)

(declare-fun array_inv!757 (array!2387) Bool)

(assert (=> start!4474 (and (array_inv!757 _values!1501) e!22031)))

(declare-datatypes ((array!2389 0))(
  ( (array!2390 (arr!1142 (Array (_ BitVec 32) (_ BitVec 64))) (size!1243 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2389)

(declare-fun array_inv!758 (array!2389) Bool)

(assert (=> start!4474 (array_inv!758 _keys!1833)))

(declare-fun tp_is_empty!1591 () Bool)

(assert (=> start!4474 tp_is_empty!1591))

(declare-fun mapNonEmpty!1933 () Bool)

(declare-fun mapRes!1933 () Bool)

(declare-fun tp!5149 () Bool)

(declare-fun e!22028 () Bool)

(assert (=> mapNonEmpty!1933 (= mapRes!1933 (and tp!5149 e!22028))))

(declare-fun mapRest!1933 () (Array (_ BitVec 32) ValueCell!596))

(declare-fun mapKey!1933 () (_ BitVec 32))

(declare-fun mapValue!1933 () ValueCell!596)

(assert (=> mapNonEmpty!1933 (= (arr!1141 _values!1501) (store mapRest!1933 mapKey!1933 mapValue!1933))))

(declare-fun b!34800 () Bool)

(declare-fun res!21121 () Bool)

(assert (=> b!34800 (=> (not res!21121) (not e!22029))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!34800 (= res!21121 (validKeyInArray!0 k!1304))))

(declare-fun b!34801 () Bool)

(declare-fun res!21125 () Bool)

(assert (=> b!34801 (=> (not res!21125) (not e!22029))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1947)

(declare-fun minValue!1443 () V!1947)

(declare-datatypes ((tuple2!1320 0))(
  ( (tuple2!1321 (_1!670 (_ BitVec 64)) (_2!670 V!1947)) )
))
(declare-datatypes ((List!925 0))(
  ( (Nil!922) (Cons!921 (h!1488 tuple2!1320) (t!3632 List!925)) )
))
(declare-datatypes ((ListLongMap!901 0))(
  ( (ListLongMap!902 (toList!466 List!925)) )
))
(declare-fun contains!409 (ListLongMap!901 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!287 (array!2389 array!2387 (_ BitVec 32) (_ BitVec 32) V!1947 V!1947 (_ BitVec 32) Int) ListLongMap!901)

(assert (=> b!34801 (= res!21125 (not (contains!409 (getCurrentListMap!287 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!34802 () Bool)

(declare-fun res!21126 () Bool)

(assert (=> b!34802 (=> (not res!21126) (not e!22029))))

(assert (=> b!34802 (= res!21126 (and (= (size!1242 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1243 _keys!1833) (size!1242 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!34803 () Bool)

(declare-fun res!21122 () Bool)

(assert (=> b!34803 (=> (not res!21122) (not e!22029))))

(declare-datatypes ((List!926 0))(
  ( (Nil!923) (Cons!922 (h!1489 (_ BitVec 64)) (t!3633 List!926)) )
))
(declare-fun arrayNoDuplicates!0 (array!2389 (_ BitVec 32) List!926) Bool)

(assert (=> b!34803 (= res!21122 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!923))))

(declare-fun b!34804 () Bool)

(declare-fun res!21124 () Bool)

(assert (=> b!34804 (=> (not res!21124) (not e!22029))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2389 (_ BitVec 32)) Bool)

(assert (=> b!34804 (= res!21124 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!34805 () Bool)

(assert (=> b!34805 (= e!22029 false)))

(declare-datatypes ((SeekEntryResult!157 0))(
  ( (MissingZero!157 (index!2750 (_ BitVec 32))) (Found!157 (index!2751 (_ BitVec 32))) (Intermediate!157 (undefined!969 Bool) (index!2752 (_ BitVec 32)) (x!6959 (_ BitVec 32))) (Undefined!157) (MissingVacant!157 (index!2753 (_ BitVec 32))) )
))
(declare-fun lt!12823 () SeekEntryResult!157)

(declare-fun seekEntry!0 ((_ BitVec 64) array!2389 (_ BitVec 32)) SeekEntryResult!157)

(assert (=> b!34805 (= lt!12823 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!34806 () Bool)

(declare-fun e!22032 () Bool)

(assert (=> b!34806 (= e!22031 (and e!22032 mapRes!1933))))

(declare-fun condMapEmpty!1933 () Bool)

(declare-fun mapDefault!1933 () ValueCell!596)

