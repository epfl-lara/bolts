; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111158 () Bool)

(assert start!111158)

(declare-fun b_free!29957 () Bool)

(declare-fun b_next!29957 () Bool)

(assert (=> start!111158 (= b_free!29957 (not b_next!29957))))

(declare-fun tp!105194 () Bool)

(declare-fun b_and!48175 () Bool)

(assert (=> start!111158 (= tp!105194 b_and!48175)))

(declare-fun b!1315593 () Bool)

(declare-fun e!750513 () Bool)

(declare-fun tp_is_empty!35687 () Bool)

(assert (=> b!1315593 (= e!750513 tp_is_empty!35687)))

(declare-fun b!1315594 () Bool)

(declare-fun e!750511 () Bool)

(assert (=> b!1315594 (= e!750511 tp_is_empty!35687)))

(declare-fun mapIsEmpty!55159 () Bool)

(declare-fun mapRes!55159 () Bool)

(assert (=> mapIsEmpty!55159 mapRes!55159))

(declare-fun b!1315595 () Bool)

(declare-fun e!750515 () Bool)

(assert (=> b!1315595 (= e!750515 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!88297 0))(
  ( (array!88298 (arr!42624 (Array (_ BitVec 32) (_ BitVec 64))) (size!43175 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88297)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun lt!585877 () Bool)

(declare-datatypes ((V!52685 0))(
  ( (V!52686 (val!17918 Int)) )
))
(declare-fun minValue!1296 () V!52685)

(declare-datatypes ((ValueCell!16945 0))(
  ( (ValueCellFull!16945 (v!20543 V!52685)) (EmptyCell!16945) )
))
(declare-datatypes ((array!88299 0))(
  ( (array!88300 (arr!42625 (Array (_ BitVec 32) ValueCell!16945)) (size!43176 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88299)

(declare-fun zeroValue!1296 () V!52685)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23264 0))(
  ( (tuple2!23265 (_1!11642 (_ BitVec 64)) (_2!11642 V!52685)) )
))
(declare-datatypes ((List!30433 0))(
  ( (Nil!30430) (Cons!30429 (h!31638 tuple2!23264) (t!44046 List!30433)) )
))
(declare-datatypes ((ListLongMap!20933 0))(
  ( (ListLongMap!20934 (toList!10482 List!30433)) )
))
(declare-fun contains!8568 (ListLongMap!20933 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5438 (array!88297 array!88299 (_ BitVec 32) (_ BitVec 32) V!52685 V!52685 (_ BitVec 32) Int) ListLongMap!20933)

(assert (=> b!1315595 (= lt!585877 (contains!8568 (getCurrentListMap!5438 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1315596 () Bool)

(declare-fun e!750514 () Bool)

(assert (=> b!1315596 (= e!750514 (and e!750511 mapRes!55159))))

(declare-fun condMapEmpty!55159 () Bool)

(declare-fun mapDefault!55159 () ValueCell!16945)

