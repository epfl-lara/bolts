; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110644 () Bool)

(assert start!110644)

(declare-fun b_free!29443 () Bool)

(declare-fun b_next!29443 () Bool)

(assert (=> start!110644 (= b_free!29443 (not b_next!29443))))

(declare-fun tp!103651 () Bool)

(declare-fun b_and!47661 () Bool)

(assert (=> start!110644 (= tp!103651 b_and!47661)))

(declare-fun b!1308650 () Bool)

(declare-fun res!868821 () Bool)

(declare-fun e!746660 () Bool)

(assert (=> b!1308650 (=> (not res!868821) (not e!746660))))

(declare-datatypes ((array!87311 0))(
  ( (array!87312 (arr!42131 (Array (_ BitVec 32) (_ BitVec 64))) (size!42682 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87311)

(declare-datatypes ((List!30077 0))(
  ( (Nil!30074) (Cons!30073 (h!31282 (_ BitVec 64)) (t!43690 List!30077)) )
))
(declare-fun arrayNoDuplicates!0 (array!87311 (_ BitVec 32) List!30077) Bool)

(assert (=> b!1308650 (= res!868821 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30074))))

(declare-fun b!1308651 () Bool)

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1308651 (= e!746660 (not (bvsge (bvadd #b00000000000000000000000000000001 from!2020) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52001 0))(
  ( (V!52002 (val!17661 Int)) )
))
(declare-fun minValue!1296 () V!52001)

(declare-datatypes ((ValueCell!16688 0))(
  ( (ValueCellFull!16688 (v!20286 V!52001)) (EmptyCell!16688) )
))
(declare-datatypes ((array!87313 0))(
  ( (array!87314 (arr!42132 (Array (_ BitVec 32) ValueCell!16688)) (size!42683 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87313)

(declare-fun zeroValue!1296 () V!52001)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((tuple2!22904 0))(
  ( (tuple2!22905 (_1!11462 (_ BitVec 64)) (_2!11462 V!52001)) )
))
(declare-datatypes ((List!30078 0))(
  ( (Nil!30075) (Cons!30074 (h!31283 tuple2!22904) (t!43691 List!30078)) )
))
(declare-datatypes ((ListLongMap!20573 0))(
  ( (ListLongMap!20574 (toList!10302 List!30078)) )
))
(declare-fun contains!8388 (ListLongMap!20573 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5258 (array!87311 array!87313 (_ BitVec 32) (_ BitVec 32) V!52001 V!52001 (_ BitVec 32) Int) ListLongMap!20573)

(assert (=> b!1308651 (contains!8388 (getCurrentListMap!5258 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43250 0))(
  ( (Unit!43251) )
))
(declare-fun lt!585115 () Unit!43250)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!15 (array!87311 array!87313 (_ BitVec 32) (_ BitVec 32) V!52001 V!52001 (_ BitVec 64) (_ BitVec 32) Int) Unit!43250)

(assert (=> b!1308651 (= lt!585115 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!15 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1308652 () Bool)

(declare-fun res!868822 () Bool)

(assert (=> b!1308652 (=> (not res!868822) (not e!746660))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87311 (_ BitVec 32)) Bool)

(assert (=> b!1308652 (= res!868822 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1308653 () Bool)

(declare-fun res!868824 () Bool)

(assert (=> b!1308653 (=> (not res!868824) (not e!746660))))

(assert (=> b!1308653 (= res!868824 (contains!8388 (getCurrentListMap!5258 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1308654 () Bool)

(declare-fun res!868823 () Bool)

(assert (=> b!1308654 (=> (not res!868823) (not e!746660))))

(assert (=> b!1308654 (= res!868823 (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1308655 () Bool)

(declare-fun e!746656 () Bool)

(declare-fun tp_is_empty!35173 () Bool)

(assert (=> b!1308655 (= e!746656 tp_is_empty!35173)))

(declare-fun res!868825 () Bool)

(assert (=> start!110644 (=> (not res!868825) (not e!746660))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110644 (= res!868825 (validMask!0 mask!2040))))

(assert (=> start!110644 e!746660))

(assert (=> start!110644 tp!103651))

(declare-fun array_inv!31845 (array!87311) Bool)

(assert (=> start!110644 (array_inv!31845 _keys!1628)))

(assert (=> start!110644 true))

(assert (=> start!110644 tp_is_empty!35173))

(declare-fun e!746657 () Bool)

(declare-fun array_inv!31846 (array!87313) Bool)

(assert (=> start!110644 (and (array_inv!31846 _values!1354) e!746657)))

(declare-fun b!1308656 () Bool)

(declare-fun res!868826 () Bool)

(assert (=> b!1308656 (=> (not res!868826) (not e!746660))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1308656 (= res!868826 (validKeyInArray!0 (select (arr!42131 _keys!1628) from!2020)))))

(declare-fun mapIsEmpty!54388 () Bool)

(declare-fun mapRes!54388 () Bool)

(assert (=> mapIsEmpty!54388 mapRes!54388))

(declare-fun mapNonEmpty!54388 () Bool)

(declare-fun tp!103652 () Bool)

(assert (=> mapNonEmpty!54388 (= mapRes!54388 (and tp!103652 e!746656))))

(declare-fun mapKey!54388 () (_ BitVec 32))

(declare-fun mapRest!54388 () (Array (_ BitVec 32) ValueCell!16688))

(declare-fun mapValue!54388 () ValueCell!16688)

(assert (=> mapNonEmpty!54388 (= (arr!42132 _values!1354) (store mapRest!54388 mapKey!54388 mapValue!54388))))

(declare-fun b!1308657 () Bool)

(declare-fun res!868829 () Bool)

(assert (=> b!1308657 (=> (not res!868829) (not e!746660))))

(assert (=> b!1308657 (= res!868829 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42682 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1308658 () Bool)

(declare-fun res!868827 () Bool)

(assert (=> b!1308658 (=> (not res!868827) (not e!746660))))

(assert (=> b!1308658 (= res!868827 (and (= (size!42683 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42682 _keys!1628) (size!42683 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1308659 () Bool)

(declare-fun e!746658 () Bool)

(assert (=> b!1308659 (= e!746657 (and e!746658 mapRes!54388))))

(declare-fun condMapEmpty!54388 () Bool)

(declare-fun mapDefault!54388 () ValueCell!16688)

