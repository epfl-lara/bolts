; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111176 () Bool)

(assert start!111176)

(declare-fun b_free!29975 () Bool)

(declare-fun b_next!29975 () Bool)

(assert (=> start!111176 (= b_free!29975 (not b_next!29975))))

(declare-fun tp!105248 () Bool)

(declare-fun b_and!48193 () Bool)

(assert (=> start!111176 (= tp!105248 b_and!48193)))

(declare-fun b!1315809 () Bool)

(declare-fun e!750647 () Bool)

(assert (=> b!1315809 (= e!750647 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!88329 0))(
  ( (array!88330 (arr!42640 (Array (_ BitVec 32) (_ BitVec 64))) (size!43191 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88329)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52709 0))(
  ( (V!52710 (val!17927 Int)) )
))
(declare-fun minValue!1296 () V!52709)

(declare-datatypes ((ValueCell!16954 0))(
  ( (ValueCellFull!16954 (v!20552 V!52709)) (EmptyCell!16954) )
))
(declare-datatypes ((array!88331 0))(
  ( (array!88332 (arr!42641 (Array (_ BitVec 32) ValueCell!16954)) (size!43192 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88331)

(declare-fun zeroValue!1296 () V!52709)

(declare-fun lt!585904 () Bool)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23274 0))(
  ( (tuple2!23275 (_1!11647 (_ BitVec 64)) (_2!11647 V!52709)) )
))
(declare-datatypes ((List!30443 0))(
  ( (Nil!30440) (Cons!30439 (h!31648 tuple2!23274) (t!44056 List!30443)) )
))
(declare-datatypes ((ListLongMap!20943 0))(
  ( (ListLongMap!20944 (toList!10487 List!30443)) )
))
(declare-fun contains!8573 (ListLongMap!20943 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5443 (array!88329 array!88331 (_ BitVec 32) (_ BitVec 32) V!52709 V!52709 (_ BitVec 32) Int) ListLongMap!20943)

(assert (=> b!1315809 (= lt!585904 (contains!8573 (getCurrentListMap!5443 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1315810 () Bool)

(declare-fun res!873587 () Bool)

(assert (=> b!1315810 (=> (not res!873587) (not e!750647))))

(declare-datatypes ((List!30444 0))(
  ( (Nil!30441) (Cons!30440 (h!31649 (_ BitVec 64)) (t!44057 List!30444)) )
))
(declare-fun arrayNoDuplicates!0 (array!88329 (_ BitVec 32) List!30444) Bool)

(assert (=> b!1315810 (= res!873587 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30441))))

(declare-fun b!1315811 () Bool)

(declare-fun e!750650 () Bool)

(declare-fun e!750649 () Bool)

(declare-fun mapRes!55186 () Bool)

(assert (=> b!1315811 (= e!750650 (and e!750649 mapRes!55186))))

(declare-fun condMapEmpty!55186 () Bool)

(declare-fun mapDefault!55186 () ValueCell!16954)

