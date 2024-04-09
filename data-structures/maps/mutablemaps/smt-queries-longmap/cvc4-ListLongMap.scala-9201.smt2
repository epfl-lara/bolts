; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110594 () Bool)

(assert start!110594)

(declare-fun b_free!29393 () Bool)

(declare-fun b_next!29393 () Bool)

(assert (=> start!110594 (= b_free!29393 (not b_next!29393))))

(declare-fun tp!103501 () Bool)

(declare-fun b_and!47611 () Bool)

(assert (=> start!110594 (= tp!103501 b_and!47611)))

(declare-fun b!1307754 () Bool)

(declare-fun e!746281 () Bool)

(declare-fun tp_is_empty!35123 () Bool)

(assert (=> b!1307754 (= e!746281 tp_is_empty!35123)))

(declare-fun res!868150 () Bool)

(declare-fun e!746284 () Bool)

(assert (=> start!110594 (=> (not res!868150) (not e!746284))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110594 (= res!868150 (validMask!0 mask!2040))))

(assert (=> start!110594 e!746284))

(assert (=> start!110594 tp!103501))

(declare-datatypes ((array!87217 0))(
  ( (array!87218 (arr!42084 (Array (_ BitVec 32) (_ BitVec 64))) (size!42635 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87217)

(declare-fun array_inv!31811 (array!87217) Bool)

(assert (=> start!110594 (array_inv!31811 _keys!1628)))

(assert (=> start!110594 true))

(assert (=> start!110594 tp_is_empty!35123))

(declare-datatypes ((V!51933 0))(
  ( (V!51934 (val!17636 Int)) )
))
(declare-datatypes ((ValueCell!16663 0))(
  ( (ValueCellFull!16663 (v!20261 V!51933)) (EmptyCell!16663) )
))
(declare-datatypes ((array!87219 0))(
  ( (array!87220 (arr!42085 (Array (_ BitVec 32) ValueCell!16663)) (size!42636 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87219)

(declare-fun e!746282 () Bool)

(declare-fun array_inv!31812 (array!87219) Bool)

(assert (=> start!110594 (and (array_inv!31812 _values!1354) e!746282)))

(declare-fun b!1307755 () Bool)

(declare-fun res!868153 () Bool)

(assert (=> b!1307755 (=> (not res!868153) (not e!746284))))

(declare-datatypes ((List!30042 0))(
  ( (Nil!30039) (Cons!30038 (h!31247 (_ BitVec 64)) (t!43655 List!30042)) )
))
(declare-fun arrayNoDuplicates!0 (array!87217 (_ BitVec 32) List!30042) Bool)

(assert (=> b!1307755 (= res!868153 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30039))))

(declare-fun b!1307756 () Bool)

(declare-fun e!746283 () Bool)

(assert (=> b!1307756 (= e!746283 tp_is_empty!35123)))

(declare-fun b!1307757 () Bool)

(declare-fun res!868152 () Bool)

(assert (=> b!1307757 (=> (not res!868152) (not e!746284))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87217 (_ BitVec 32)) Bool)

(assert (=> b!1307757 (= res!868152 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54313 () Bool)

(declare-fun mapRes!54313 () Bool)

(assert (=> mapIsEmpty!54313 mapRes!54313))

(declare-fun b!1307758 () Bool)

(assert (=> b!1307758 (= e!746284 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585040 () Bool)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun zeroValue!1296 () V!51933)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun minValue!1296 () V!51933)

(declare-datatypes ((tuple2!22870 0))(
  ( (tuple2!22871 (_1!11445 (_ BitVec 64)) (_2!11445 V!51933)) )
))
(declare-datatypes ((List!30043 0))(
  ( (Nil!30040) (Cons!30039 (h!31248 tuple2!22870) (t!43656 List!30043)) )
))
(declare-datatypes ((ListLongMap!20539 0))(
  ( (ListLongMap!20540 (toList!10285 List!30043)) )
))
(declare-fun contains!8371 (ListLongMap!20539 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5241 (array!87217 array!87219 (_ BitVec 32) (_ BitVec 32) V!51933 V!51933 (_ BitVec 32) Int) ListLongMap!20539)

(assert (=> b!1307758 (= lt!585040 (contains!8371 (getCurrentListMap!5241 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun mapNonEmpty!54313 () Bool)

(declare-fun tp!103502 () Bool)

(assert (=> mapNonEmpty!54313 (= mapRes!54313 (and tp!103502 e!746283))))

(declare-fun mapValue!54313 () ValueCell!16663)

(declare-fun mapRest!54313 () (Array (_ BitVec 32) ValueCell!16663))

(declare-fun mapKey!54313 () (_ BitVec 32))

(assert (=> mapNonEmpty!54313 (= (arr!42085 _values!1354) (store mapRest!54313 mapKey!54313 mapValue!54313))))

(declare-fun b!1307759 () Bool)

(declare-fun res!868151 () Bool)

(assert (=> b!1307759 (=> (not res!868151) (not e!746284))))

(assert (=> b!1307759 (= res!868151 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42635 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1307760 () Bool)

(assert (=> b!1307760 (= e!746282 (and e!746281 mapRes!54313))))

(declare-fun condMapEmpty!54313 () Bool)

(declare-fun mapDefault!54313 () ValueCell!16663)

