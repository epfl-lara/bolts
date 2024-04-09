; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111704 () Bool)

(assert start!111704)

(declare-fun b_free!30325 () Bool)

(declare-fun b_next!30325 () Bool)

(assert (=> start!111704 (= b_free!30325 (not b_next!30325))))

(declare-fun tp!106451 () Bool)

(declare-fun b_and!48819 () Bool)

(assert (=> start!111704 (= tp!106451 b_and!48819)))

(declare-fun b!1322804 () Bool)

(declare-fun res!878098 () Bool)

(declare-fun e!754252 () Bool)

(assert (=> b!1322804 (=> (not res!878098) (not e!754252))))

(declare-datatypes ((array!89167 0))(
  ( (array!89168 (arr!43053 (Array (_ BitVec 32) (_ BitVec 64))) (size!43604 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89167)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89167 (_ BitVec 32)) Bool)

(assert (=> b!1322804 (= res!878098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1322805 () Bool)

(declare-fun e!754249 () Bool)

(declare-fun tp_is_empty!36145 () Bool)

(assert (=> b!1322805 (= e!754249 tp_is_empty!36145)))

(declare-fun b!1322806 () Bool)

(declare-fun res!878101 () Bool)

(assert (=> b!1322806 (=> (not res!878101) (not e!754252))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53297 0))(
  ( (V!53298 (val!18147 Int)) )
))
(declare-datatypes ((ValueCell!17174 0))(
  ( (ValueCellFull!17174 (v!20775 V!53297)) (EmptyCell!17174) )
))
(declare-datatypes ((array!89169 0))(
  ( (array!89170 (arr!43054 (Array (_ BitVec 32) ValueCell!17174)) (size!43605 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89169)

(assert (=> b!1322806 (= res!878101 (and (= (size!43605 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43604 _keys!1609) (size!43605 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1322807 () Bool)

(declare-fun res!878102 () Bool)

(assert (=> b!1322807 (=> (not res!878102) (not e!754252))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53297)

(declare-fun minValue!1279 () V!53297)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23546 0))(
  ( (tuple2!23547 (_1!11783 (_ BitVec 64)) (_2!11783 V!53297)) )
))
(declare-datatypes ((List!30720 0))(
  ( (Nil!30717) (Cons!30716 (h!31925 tuple2!23546) (t!44601 List!30720)) )
))
(declare-datatypes ((ListLongMap!21215 0))(
  ( (ListLongMap!21216 (toList!10623 List!30720)) )
))
(declare-fun contains!8714 (ListLongMap!21215 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5563 (array!89167 array!89169 (_ BitVec 32) (_ BitVec 32) V!53297 V!53297 (_ BitVec 32) Int) ListLongMap!21215)

(assert (=> b!1322807 (= res!878102 (contains!8714 (getCurrentListMap!5563 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1322808 () Bool)

(declare-fun e!754250 () Bool)

(assert (=> b!1322808 (= e!754250 tp_is_empty!36145)))

(declare-fun b!1322809 () Bool)

(declare-fun e!754248 () Bool)

(declare-fun mapRes!55865 () Bool)

(assert (=> b!1322809 (= e!754248 (and e!754250 mapRes!55865))))

(declare-fun condMapEmpty!55865 () Bool)

(declare-fun mapDefault!55865 () ValueCell!17174)

