; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110798 () Bool)

(assert start!110798)

(declare-fun b_free!29597 () Bool)

(declare-fun b_next!29597 () Bool)

(assert (=> start!110798 (= b_free!29597 (not b_next!29597))))

(declare-fun tp!104113 () Bool)

(declare-fun b_and!47815 () Bool)

(assert (=> start!110798 (= tp!104113 b_and!47815)))

(declare-fun b!1310850 () Bool)

(declare-fun e!747814 () Bool)

(assert (=> b!1310850 (= e!747814 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87605 0))(
  ( (array!87606 (arr!42278 (Array (_ BitVec 32) (_ BitVec 64))) (size!42829 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87605)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52205 0))(
  ( (V!52206 (val!17738 Int)) )
))
(declare-fun minValue!1296 () V!52205)

(declare-datatypes ((ValueCell!16765 0))(
  ( (ValueCellFull!16765 (v!20363 V!52205)) (EmptyCell!16765) )
))
(declare-datatypes ((array!87607 0))(
  ( (array!87608 (arr!42279 (Array (_ BitVec 32) ValueCell!16765)) (size!42830 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87607)

(declare-fun zeroValue!1296 () V!52205)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun lt!585346 () Bool)

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((tuple2!23022 0))(
  ( (tuple2!23023 (_1!11521 (_ BitVec 64)) (_2!11521 V!52205)) )
))
(declare-datatypes ((List!30188 0))(
  ( (Nil!30185) (Cons!30184 (h!31393 tuple2!23022) (t!43801 List!30188)) )
))
(declare-datatypes ((ListLongMap!20691 0))(
  ( (ListLongMap!20692 (toList!10361 List!30188)) )
))
(declare-fun contains!8447 (ListLongMap!20691 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5317 (array!87605 array!87607 (_ BitVec 32) (_ BitVec 32) V!52205 V!52205 (_ BitVec 32) Int) ListLongMap!20691)

(assert (=> b!1310850 (= lt!585346 (contains!8447 (getCurrentListMap!5317 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1310851 () Bool)

(declare-fun e!747815 () Bool)

(declare-fun tp_is_empty!35327 () Bool)

(assert (=> b!1310851 (= e!747815 tp_is_empty!35327)))

(declare-fun mapIsEmpty!54619 () Bool)

(declare-fun mapRes!54619 () Bool)

(assert (=> mapIsEmpty!54619 mapRes!54619))

(declare-fun mapNonEmpty!54619 () Bool)

(declare-fun tp!104114 () Bool)

(assert (=> mapNonEmpty!54619 (= mapRes!54619 (and tp!104114 e!747815))))

(declare-fun mapRest!54619 () (Array (_ BitVec 32) ValueCell!16765))

(declare-fun mapKey!54619 () (_ BitVec 32))

(declare-fun mapValue!54619 () ValueCell!16765)

(assert (=> mapNonEmpty!54619 (= (arr!42279 _values!1354) (store mapRest!54619 mapKey!54619 mapValue!54619))))

(declare-fun b!1310852 () Bool)

(declare-fun res!870332 () Bool)

(assert (=> b!1310852 (=> (not res!870332) (not e!747814))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87605 (_ BitVec 32)) Bool)

(assert (=> b!1310852 (= res!870332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1310854 () Bool)

(declare-fun e!747811 () Bool)

(assert (=> b!1310854 (= e!747811 tp_is_empty!35327)))

(declare-fun b!1310855 () Bool)

(declare-fun res!870331 () Bool)

(assert (=> b!1310855 (=> (not res!870331) (not e!747814))))

(assert (=> b!1310855 (= res!870331 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42829 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1310856 () Bool)

(declare-fun e!747812 () Bool)

(assert (=> b!1310856 (= e!747812 (and e!747811 mapRes!54619))))

(declare-fun condMapEmpty!54619 () Bool)

(declare-fun mapDefault!54619 () ValueCell!16765)

