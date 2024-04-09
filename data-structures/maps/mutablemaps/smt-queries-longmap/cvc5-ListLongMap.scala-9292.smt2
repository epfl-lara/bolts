; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111136 () Bool)

(assert start!111136)

(declare-fun b_free!29935 () Bool)

(declare-fun b_next!29935 () Bool)

(assert (=> start!111136 (= b_free!29935 (not b_next!29935))))

(declare-fun tp!105127 () Bool)

(declare-fun b_and!48153 () Bool)

(assert (=> start!111136 (= tp!105127 b_and!48153)))

(declare-fun res!873287 () Bool)

(declare-fun e!750349 () Bool)

(assert (=> start!111136 (=> (not res!873287) (not e!750349))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111136 (= res!873287 (validMask!0 mask!2040))))

(assert (=> start!111136 e!750349))

(assert (=> start!111136 tp!105127))

(declare-datatypes ((array!88253 0))(
  ( (array!88254 (arr!42602 (Array (_ BitVec 32) (_ BitVec 64))) (size!43153 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88253)

(declare-fun array_inv!32149 (array!88253) Bool)

(assert (=> start!111136 (array_inv!32149 _keys!1628)))

(assert (=> start!111136 true))

(declare-fun tp_is_empty!35665 () Bool)

(assert (=> start!111136 tp_is_empty!35665))

(declare-datatypes ((V!52657 0))(
  ( (V!52658 (val!17907 Int)) )
))
(declare-datatypes ((ValueCell!16934 0))(
  ( (ValueCellFull!16934 (v!20532 V!52657)) (EmptyCell!16934) )
))
(declare-datatypes ((array!88255 0))(
  ( (array!88256 (arr!42603 (Array (_ BitVec 32) ValueCell!16934)) (size!43154 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88255)

(declare-fun e!750350 () Bool)

(declare-fun array_inv!32150 (array!88255) Bool)

(assert (=> start!111136 (and (array_inv!32150 _values!1354) e!750350)))

(declare-fun b!1315329 () Bool)

(declare-fun e!750347 () Bool)

(assert (=> b!1315329 (= e!750347 tp_is_empty!35665)))

(declare-fun mapIsEmpty!55126 () Bool)

(declare-fun mapRes!55126 () Bool)

(assert (=> mapIsEmpty!55126 mapRes!55126))

(declare-fun b!1315330 () Bool)

(assert (=> b!1315330 (= e!750349 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585844 () Bool)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52657)

(declare-fun zeroValue!1296 () V!52657)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23252 0))(
  ( (tuple2!23253 (_1!11636 (_ BitVec 64)) (_2!11636 V!52657)) )
))
(declare-datatypes ((List!30419 0))(
  ( (Nil!30416) (Cons!30415 (h!31624 tuple2!23252) (t!44032 List!30419)) )
))
(declare-datatypes ((ListLongMap!20921 0))(
  ( (ListLongMap!20922 (toList!10476 List!30419)) )
))
(declare-fun contains!8562 (ListLongMap!20921 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5432 (array!88253 array!88255 (_ BitVec 32) (_ BitVec 32) V!52657 V!52657 (_ BitVec 32) Int) ListLongMap!20921)

(assert (=> b!1315330 (= lt!585844 (contains!8562 (getCurrentListMap!5432 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1315331 () Bool)

(declare-fun e!750348 () Bool)

(assert (=> b!1315331 (= e!750348 tp_is_empty!35665)))

(declare-fun b!1315332 () Bool)

(declare-fun res!873288 () Bool)

(assert (=> b!1315332 (=> (not res!873288) (not e!750349))))

(declare-datatypes ((List!30420 0))(
  ( (Nil!30417) (Cons!30416 (h!31625 (_ BitVec 64)) (t!44033 List!30420)) )
))
(declare-fun arrayNoDuplicates!0 (array!88253 (_ BitVec 32) List!30420) Bool)

(assert (=> b!1315332 (= res!873288 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30417))))

(declare-fun b!1315333 () Bool)

(declare-fun res!873289 () Bool)

(assert (=> b!1315333 (=> (not res!873289) (not e!750349))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88253 (_ BitVec 32)) Bool)

(assert (=> b!1315333 (= res!873289 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!55126 () Bool)

(declare-fun tp!105128 () Bool)

(assert (=> mapNonEmpty!55126 (= mapRes!55126 (and tp!105128 e!750347))))

(declare-fun mapRest!55126 () (Array (_ BitVec 32) ValueCell!16934))

(declare-fun mapKey!55126 () (_ BitVec 32))

(declare-fun mapValue!55126 () ValueCell!16934)

(assert (=> mapNonEmpty!55126 (= (arr!42603 _values!1354) (store mapRest!55126 mapKey!55126 mapValue!55126))))

(declare-fun b!1315334 () Bool)

(declare-fun res!873286 () Bool)

(assert (=> b!1315334 (=> (not res!873286) (not e!750349))))

(assert (=> b!1315334 (= res!873286 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43153 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1315335 () Bool)

(assert (=> b!1315335 (= e!750350 (and e!750348 mapRes!55126))))

(declare-fun condMapEmpty!55126 () Bool)

(declare-fun mapDefault!55126 () ValueCell!16934)

