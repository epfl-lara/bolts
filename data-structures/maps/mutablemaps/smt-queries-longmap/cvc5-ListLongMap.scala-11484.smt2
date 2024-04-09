; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133734 () Bool)

(assert start!133734)

(declare-fun b_free!32065 () Bool)

(declare-fun b_next!32065 () Bool)

(assert (=> start!133734 (= b_free!32065 (not b_next!32065))))

(declare-fun tp!113400 () Bool)

(declare-fun b_and!51645 () Bool)

(assert (=> start!133734 (= tp!113400 b_and!51645)))

(declare-fun mapNonEmpty!59553 () Bool)

(declare-fun mapRes!59553 () Bool)

(declare-fun tp!113401 () Bool)

(declare-fun e!871192 () Bool)

(assert (=> mapNonEmpty!59553 (= mapRes!59553 (and tp!113401 e!871192))))

(declare-datatypes ((V!59921 0))(
  ( (V!59922 (val!19476 Int)) )
))
(declare-datatypes ((ValueCell!18362 0))(
  ( (ValueCellFull!18362 (v!22225 V!59921)) (EmptyCell!18362) )
))
(declare-fun mapValue!59553 () ValueCell!18362)

(declare-fun mapRest!59553 () (Array (_ BitVec 32) ValueCell!18362))

(declare-fun mapKey!59553 () (_ BitVec 32))

(declare-datatypes ((array!104231 0))(
  ( (array!104232 (arr!50303 (Array (_ BitVec 32) ValueCell!18362)) (size!50854 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104231)

(assert (=> mapNonEmpty!59553 (= (arr!50303 _values!487) (store mapRest!59553 mapKey!59553 mapValue!59553))))

(declare-fun b!1563118 () Bool)

(declare-fun e!871190 () Bool)

(declare-fun e!871193 () Bool)

(assert (=> b!1563118 (= e!871190 e!871193)))

(declare-fun res!1068719 () Bool)

(assert (=> b!1563118 (=> (not res!1068719) (not e!871193))))

(declare-datatypes ((tuple2!25282 0))(
  ( (tuple2!25283 (_1!12651 (_ BitVec 64)) (_2!12651 V!59921)) )
))
(declare-datatypes ((List!36671 0))(
  ( (Nil!36668) (Cons!36667 (h!38114 tuple2!25282) (t!51525 List!36671)) )
))
(declare-datatypes ((ListLongMap!22729 0))(
  ( (ListLongMap!22730 (toList!11380 List!36671)) )
))
(declare-fun lt!671771 () ListLongMap!22729)

(declare-fun contains!10300 (ListLongMap!22729 (_ BitVec 64)) Bool)

(assert (=> b!1563118 (= res!1068719 (not (contains!10300 lt!671771 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!59921)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59921)

(declare-datatypes ((array!104233 0))(
  ( (array!104234 (arr!50304 (Array (_ BitVec 32) (_ BitVec 64))) (size!50855 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104233)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6739 (array!104233 array!104231 (_ BitVec 32) (_ BitVec 32) V!59921 V!59921 (_ BitVec 32) Int) ListLongMap!22729)

(assert (=> b!1563118 (= lt!671771 (getCurrentListMapNoExtraKeys!6739 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun res!1068725 () Bool)

(assert (=> start!133734 (=> (not res!1068725) (not e!871190))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133734 (= res!1068725 (validMask!0 mask!947))))

(assert (=> start!133734 e!871190))

(assert (=> start!133734 tp!113400))

(declare-fun tp_is_empty!38785 () Bool)

(assert (=> start!133734 tp_is_empty!38785))

(assert (=> start!133734 true))

(declare-fun array_inv!39021 (array!104233) Bool)

(assert (=> start!133734 (array_inv!39021 _keys!637)))

(declare-fun e!871191 () Bool)

(declare-fun array_inv!39022 (array!104231) Bool)

(assert (=> start!133734 (and (array_inv!39022 _values!487) e!871191)))

(declare-fun b!1563119 () Bool)

(declare-fun e!871189 () Bool)

(assert (=> b!1563119 (= e!871191 (and e!871189 mapRes!59553))))

(declare-fun condMapEmpty!59553 () Bool)

(declare-fun mapDefault!59553 () ValueCell!18362)

