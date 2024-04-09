; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110900 () Bool)

(assert start!110900)

(declare-fun b_free!29699 () Bool)

(declare-fun b_next!29699 () Bool)

(assert (=> start!110900 (= b_free!29699 (not b_next!29699))))

(declare-fun tp!104419 () Bool)

(declare-fun b_and!47917 () Bool)

(assert (=> start!110900 (= tp!104419 b_and!47917)))

(declare-fun b!1312394 () Bool)

(declare-fun e!748576 () Bool)

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1312394 (= e!748576 (not (bvsge (bvadd #b00000000000000000000000000000001 from!2020) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87809 0))(
  ( (array!87810 (arr!42380 (Array (_ BitVec 32) (_ BitVec 64))) (size!42931 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87809)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52341 0))(
  ( (V!52342 (val!17789 Int)) )
))
(declare-fun minValue!1296 () V!52341)

(declare-datatypes ((ValueCell!16816 0))(
  ( (ValueCellFull!16816 (v!20414 V!52341)) (EmptyCell!16816) )
))
(declare-datatypes ((array!87811 0))(
  ( (array!87812 (arr!42381 (Array (_ BitVec 32) ValueCell!16816)) (size!42932 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87811)

(declare-fun zeroValue!1296 () V!52341)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!23108 0))(
  ( (tuple2!23109 (_1!11564 (_ BitVec 64)) (_2!11564 V!52341)) )
))
(declare-datatypes ((List!30267 0))(
  ( (Nil!30264) (Cons!30263 (h!31472 tuple2!23108) (t!43880 List!30267)) )
))
(declare-datatypes ((ListLongMap!20777 0))(
  ( (ListLongMap!20778 (toList!10404 List!30267)) )
))
(declare-fun contains!8490 (ListLongMap!20777 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5360 (array!87809 array!87811 (_ BitVec 32) (_ BitVec 32) V!52341 V!52341 (_ BitVec 32) Int) ListLongMap!20777)

(assert (=> b!1312394 (contains!8490 (getCurrentListMap!5360 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43330 0))(
  ( (Unit!43331) )
))
(declare-fun lt!585499 () Unit!43330)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!18 (array!87809 array!87811 (_ BitVec 32) (_ BitVec 32) V!52341 V!52341 (_ BitVec 64) (_ BitVec 32) Int) Unit!43330)

(assert (=> b!1312394 (= lt!585499 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!18 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1312395 () Bool)

(declare-fun e!748580 () Bool)

(declare-fun e!748579 () Bool)

(declare-fun mapRes!54772 () Bool)

(assert (=> b!1312395 (= e!748580 (and e!748579 mapRes!54772))))

(declare-fun condMapEmpty!54772 () Bool)

(declare-fun mapDefault!54772 () ValueCell!16816)

