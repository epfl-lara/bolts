; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110650 () Bool)

(assert start!110650)

(declare-fun b_free!29449 () Bool)

(declare-fun b_next!29449 () Bool)

(assert (=> start!110650 (= b_free!29449 (not b_next!29449))))

(declare-fun tp!103670 () Bool)

(declare-fun b_and!47667 () Bool)

(assert (=> start!110650 (= tp!103670 b_and!47667)))

(declare-fun b!1308750 () Bool)

(declare-fun res!868896 () Bool)

(declare-fun e!746703 () Bool)

(assert (=> b!1308750 (=> (not res!868896) (not e!746703))))

(declare-datatypes ((array!87323 0))(
  ( (array!87324 (arr!42137 (Array (_ BitVec 32) (_ BitVec 64))) (size!42688 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87323)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52009 0))(
  ( (V!52010 (val!17664 Int)) )
))
(declare-datatypes ((ValueCell!16691 0))(
  ( (ValueCellFull!16691 (v!20289 V!52009)) (EmptyCell!16691) )
))
(declare-datatypes ((array!87325 0))(
  ( (array!87326 (arr!42138 (Array (_ BitVec 32) ValueCell!16691)) (size!42689 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87325)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1308750 (= res!868896 (and (= (size!42689 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42688 _keys!1628) (size!42689 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1308751 () Bool)

(assert (=> b!1308751 (= e!746703 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52009)

(declare-fun zeroValue!1296 () V!52009)

(declare-fun lt!585124 () Bool)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22910 0))(
  ( (tuple2!22911 (_1!11465 (_ BitVec 64)) (_2!11465 V!52009)) )
))
(declare-datatypes ((List!30082 0))(
  ( (Nil!30079) (Cons!30078 (h!31287 tuple2!22910) (t!43695 List!30082)) )
))
(declare-datatypes ((ListLongMap!20579 0))(
  ( (ListLongMap!20580 (toList!10305 List!30082)) )
))
(declare-fun contains!8391 (ListLongMap!20579 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5261 (array!87323 array!87325 (_ BitVec 32) (_ BitVec 32) V!52009 V!52009 (_ BitVec 32) Int) ListLongMap!20579)

(assert (=> b!1308751 (= lt!585124 (contains!8391 (getCurrentListMap!5261 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1308752 () Bool)

(declare-fun e!746701 () Bool)

(declare-fun tp_is_empty!35179 () Bool)

(assert (=> b!1308752 (= e!746701 tp_is_empty!35179)))

(declare-fun mapNonEmpty!54397 () Bool)

(declare-fun mapRes!54397 () Bool)

(declare-fun tp!103669 () Bool)

(assert (=> mapNonEmpty!54397 (= mapRes!54397 (and tp!103669 e!746701))))

(declare-fun mapRest!54397 () (Array (_ BitVec 32) ValueCell!16691))

(declare-fun mapKey!54397 () (_ BitVec 32))

(declare-fun mapValue!54397 () ValueCell!16691)

(assert (=> mapNonEmpty!54397 (= (arr!42138 _values!1354) (store mapRest!54397 mapKey!54397 mapValue!54397))))

(declare-fun res!868895 () Bool)

(assert (=> start!110650 (=> (not res!868895) (not e!746703))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110650 (= res!868895 (validMask!0 mask!2040))))

(assert (=> start!110650 e!746703))

(assert (=> start!110650 tp!103670))

(declare-fun array_inv!31851 (array!87323) Bool)

(assert (=> start!110650 (array_inv!31851 _keys!1628)))

(assert (=> start!110650 true))

(assert (=> start!110650 tp_is_empty!35179))

(declare-fun e!746702 () Bool)

(declare-fun array_inv!31852 (array!87325) Bool)

(assert (=> start!110650 (and (array_inv!31852 _values!1354) e!746702)))

(declare-fun b!1308753 () Bool)

(declare-fun e!746705 () Bool)

(assert (=> b!1308753 (= e!746705 tp_is_empty!35179)))

(declare-fun b!1308754 () Bool)

(assert (=> b!1308754 (= e!746702 (and e!746705 mapRes!54397))))

(declare-fun condMapEmpty!54397 () Bool)

(declare-fun mapDefault!54397 () ValueCell!16691)

