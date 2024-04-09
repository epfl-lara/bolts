; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111016 () Bool)

(assert start!111016)

(declare-fun b_free!29815 () Bool)

(declare-fun b_next!29815 () Bool)

(assert (=> start!111016 (= b_free!29815 (not b_next!29815))))

(declare-fun tp!104768 () Bool)

(declare-fun b_and!48033 () Bool)

(assert (=> start!111016 (= tp!104768 b_and!48033)))

(declare-fun mapNonEmpty!54946 () Bool)

(declare-fun mapRes!54946 () Bool)

(declare-fun tp!104767 () Bool)

(declare-fun e!749447 () Bool)

(assert (=> mapNonEmpty!54946 (= mapRes!54946 (and tp!104767 e!749447))))

(declare-datatypes ((V!52497 0))(
  ( (V!52498 (val!17847 Int)) )
))
(declare-datatypes ((ValueCell!16874 0))(
  ( (ValueCellFull!16874 (v!20472 V!52497)) (EmptyCell!16874) )
))
(declare-fun mapValue!54946 () ValueCell!16874)

(declare-fun mapKey!54946 () (_ BitVec 32))

(declare-datatypes ((array!88029 0))(
  ( (array!88030 (arr!42490 (Array (_ BitVec 32) ValueCell!16874)) (size!43041 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88029)

(declare-fun mapRest!54946 () (Array (_ BitVec 32) ValueCell!16874))

(assert (=> mapNonEmpty!54946 (= (arr!42490 _values!1354) (store mapRest!54946 mapKey!54946 mapValue!54946))))

(declare-fun b!1313817 () Bool)

(declare-fun tp_is_empty!35545 () Bool)

(assert (=> b!1313817 (= e!749447 tp_is_empty!35545)))

(declare-fun mapIsEmpty!54946 () Bool)

(assert (=> mapIsEmpty!54946 mapRes!54946))

(declare-fun b!1313818 () Bool)

(declare-fun e!749450 () Bool)

(assert (=> b!1313818 (= e!749450 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!88031 0))(
  ( (array!88032 (arr!42491 (Array (_ BitVec 32) (_ BitVec 64))) (size!43042 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88031)

(declare-fun lt!585664 () Bool)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52497)

(declare-fun zeroValue!1296 () V!52497)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23182 0))(
  ( (tuple2!23183 (_1!11601 (_ BitVec 64)) (_2!11601 V!52497)) )
))
(declare-datatypes ((List!30346 0))(
  ( (Nil!30343) (Cons!30342 (h!31551 tuple2!23182) (t!43959 List!30346)) )
))
(declare-datatypes ((ListLongMap!20851 0))(
  ( (ListLongMap!20852 (toList!10441 List!30346)) )
))
(declare-fun contains!8527 (ListLongMap!20851 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5397 (array!88031 array!88029 (_ BitVec 32) (_ BitVec 32) V!52497 V!52497 (_ BitVec 32) Int) ListLongMap!20851)

(assert (=> b!1313818 (= lt!585664 (contains!8527 (getCurrentListMap!5397 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1313819 () Bool)

(declare-fun res!872315 () Bool)

(assert (=> b!1313819 (=> (not res!872315) (not e!749450))))

(assert (=> b!1313819 (= res!872315 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43042 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1313820 () Bool)

(declare-fun e!749448 () Bool)

(declare-fun e!749446 () Bool)

(assert (=> b!1313820 (= e!749448 (and e!749446 mapRes!54946))))

(declare-fun condMapEmpty!54946 () Bool)

(declare-fun mapDefault!54946 () ValueCell!16874)

