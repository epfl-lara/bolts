; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110656 () Bool)

(assert start!110656)

(declare-fun b_free!29455 () Bool)

(declare-fun b_next!29455 () Bool)

(assert (=> start!110656 (= b_free!29455 (not b_next!29455))))

(declare-fun tp!103687 () Bool)

(declare-fun b_and!47673 () Bool)

(assert (=> start!110656 (= tp!103687 b_and!47673)))

(declare-fun b!1308822 () Bool)

(declare-fun e!746746 () Bool)

(assert (=> b!1308822 (= e!746746 false)))

(declare-datatypes ((array!87335 0))(
  ( (array!87336 (arr!42143 (Array (_ BitVec 32) (_ BitVec 64))) (size!42694 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87335)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52017 0))(
  ( (V!52018 (val!17667 Int)) )
))
(declare-datatypes ((ValueCell!16694 0))(
  ( (ValueCellFull!16694 (v!20292 V!52017)) (EmptyCell!16694) )
))
(declare-datatypes ((array!87337 0))(
  ( (array!87338 (arr!42144 (Array (_ BitVec 32) ValueCell!16694)) (size!42695 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87337)

(declare-fun zeroValue!1296 () V!52017)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585133 () Bool)

(declare-fun minValue!1296 () V!52017)

(declare-datatypes ((tuple2!22914 0))(
  ( (tuple2!22915 (_1!11467 (_ BitVec 64)) (_2!11467 V!52017)) )
))
(declare-datatypes ((List!30085 0))(
  ( (Nil!30082) (Cons!30081 (h!31290 tuple2!22914) (t!43698 List!30085)) )
))
(declare-datatypes ((ListLongMap!20583 0))(
  ( (ListLongMap!20584 (toList!10307 List!30085)) )
))
(declare-fun contains!8393 (ListLongMap!20583 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5263 (array!87335 array!87337 (_ BitVec 32) (_ BitVec 32) V!52017 V!52017 (_ BitVec 32) Int) ListLongMap!20583)

(assert (=> b!1308822 (= lt!585133 (contains!8393 (getCurrentListMap!5263 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun res!868942 () Bool)

(assert (=> start!110656 (=> (not res!868942) (not e!746746))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110656 (= res!868942 (validMask!0 mask!2040))))

(assert (=> start!110656 e!746746))

(assert (=> start!110656 tp!103687))

(declare-fun array_inv!31855 (array!87335) Bool)

(assert (=> start!110656 (array_inv!31855 _keys!1628)))

(assert (=> start!110656 true))

(declare-fun tp_is_empty!35185 () Bool)

(assert (=> start!110656 tp_is_empty!35185))

(declare-fun e!746749 () Bool)

(declare-fun array_inv!31856 (array!87337) Bool)

(assert (=> start!110656 (and (array_inv!31856 _values!1354) e!746749)))

(declare-fun b!1308823 () Bool)

(declare-fun e!746750 () Bool)

(assert (=> b!1308823 (= e!746750 tp_is_empty!35185)))

(declare-fun b!1308824 () Bool)

(declare-fun res!868943 () Bool)

(assert (=> b!1308824 (=> (not res!868943) (not e!746746))))

(assert (=> b!1308824 (= res!868943 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42694 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1308825 () Bool)

(declare-fun res!868939 () Bool)

(assert (=> b!1308825 (=> (not res!868939) (not e!746746))))

(declare-datatypes ((List!30086 0))(
  ( (Nil!30083) (Cons!30082 (h!31291 (_ BitVec 64)) (t!43699 List!30086)) )
))
(declare-fun arrayNoDuplicates!0 (array!87335 (_ BitVec 32) List!30086) Bool)

(assert (=> b!1308825 (= res!868939 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30083))))

(declare-fun mapNonEmpty!54406 () Bool)

(declare-fun mapRes!54406 () Bool)

(declare-fun tp!103688 () Bool)

(assert (=> mapNonEmpty!54406 (= mapRes!54406 (and tp!103688 e!746750))))

(declare-fun mapRest!54406 () (Array (_ BitVec 32) ValueCell!16694))

(declare-fun mapKey!54406 () (_ BitVec 32))

(declare-fun mapValue!54406 () ValueCell!16694)

(assert (=> mapNonEmpty!54406 (= (arr!42144 _values!1354) (store mapRest!54406 mapKey!54406 mapValue!54406))))

(declare-fun mapIsEmpty!54406 () Bool)

(assert (=> mapIsEmpty!54406 mapRes!54406))

(declare-fun b!1308826 () Bool)

(declare-fun e!746747 () Bool)

(assert (=> b!1308826 (= e!746749 (and e!746747 mapRes!54406))))

(declare-fun condMapEmpty!54406 () Bool)

(declare-fun mapDefault!54406 () ValueCell!16694)

