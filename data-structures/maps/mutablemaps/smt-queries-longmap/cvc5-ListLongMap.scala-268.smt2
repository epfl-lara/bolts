; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4404 () Bool)

(assert start!4404)

(declare-fun b_free!1195 () Bool)

(declare-fun b_next!1195 () Bool)

(assert (=> start!4404 (= b_free!1195 (not b_next!1195))))

(declare-fun tp!5019 () Bool)

(declare-fun b_and!2017 () Bool)

(assert (=> start!4404 (= tp!5019 b_and!2017)))

(declare-fun b!34021 () Bool)

(declare-fun e!21601 () Bool)

(declare-fun tp_is_empty!1549 () Bool)

(assert (=> b!34021 (= e!21601 tp_is_empty!1549)))

(declare-fun b!34022 () Bool)

(declare-fun res!20624 () Bool)

(declare-fun e!21600 () Bool)

(assert (=> b!34022 (=> (not res!20624) (not e!21600))))

(declare-datatypes ((V!1891 0))(
  ( (V!1892 (val!801 Int)) )
))
(declare-datatypes ((ValueCell!575 0))(
  ( (ValueCellFull!575 (v!1895 V!1891)) (EmptyCell!575) )
))
(declare-datatypes ((array!2307 0))(
  ( (array!2308 (arr!1102 (Array (_ BitVec 32) ValueCell!575)) (size!1203 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2307)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2309 0))(
  ( (array!2310 (arr!1103 (Array (_ BitVec 32) (_ BitVec 64))) (size!1204 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2309)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!34022 (= res!20624 (and (= (size!1203 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1204 _keys!1833) (size!1203 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!34023 () Bool)

(declare-fun res!20623 () Bool)

(assert (=> b!34023 (=> (not res!20623) (not e!21600))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2309 (_ BitVec 32)) Bool)

(assert (=> b!34023 (= res!20623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!34024 () Bool)

(declare-fun e!21602 () Bool)

(assert (=> b!34024 (= e!21600 e!21602)))

(declare-fun res!20627 () Bool)

(assert (=> b!34024 (=> (not res!20627) (not e!21602))))

(declare-datatypes ((tuple2!1292 0))(
  ( (tuple2!1293 (_1!656 (_ BitVec 64)) (_2!656 V!1891)) )
))
(declare-datatypes ((List!896 0))(
  ( (Nil!893) (Cons!892 (h!1459 tuple2!1292) (t!3601 List!896)) )
))
(declare-datatypes ((ListLongMap!873 0))(
  ( (ListLongMap!874 (toList!452 List!896)) )
))
(declare-fun lt!12559 () ListLongMap!873)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun contains!394 (ListLongMap!873 (_ BitVec 64)) Bool)

(assert (=> b!34024 (= res!20627 (not (contains!394 lt!12559 k!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1891)

(declare-fun minValue!1443 () V!1891)

(declare-fun getCurrentListMap!273 (array!2309 array!2307 (_ BitVec 32) (_ BitVec 32) V!1891 V!1891 (_ BitVec 32) Int) ListLongMap!873)

(assert (=> b!34024 (= lt!12559 (getCurrentListMap!273 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!34025 () Bool)

(declare-fun e!21599 () Bool)

(declare-fun mapRes!1867 () Bool)

(assert (=> b!34025 (= e!21599 (and e!21601 mapRes!1867))))

(declare-fun condMapEmpty!1867 () Bool)

(declare-fun mapDefault!1867 () ValueCell!575)

