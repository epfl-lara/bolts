; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133596 () Bool)

(assert start!133596)

(declare-fun b_free!31981 () Bool)

(declare-fun b_next!31981 () Bool)

(assert (=> start!133596 (= b_free!31981 (not b_next!31981))))

(declare-fun tp!113068 () Bool)

(declare-fun b_and!51483 () Bool)

(assert (=> start!133596 (= tp!113068 b_and!51483)))

(declare-fun b!1561373 () Bool)

(declare-fun e!870137 () Bool)

(declare-fun tp_is_empty!38647 () Bool)

(assert (=> b!1561373 (= e!870137 tp_is_empty!38647)))

(declare-fun res!1067678 () Bool)

(declare-fun e!870135 () Bool)

(assert (=> start!133596 (=> (not res!1067678) (not e!870135))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133596 (= res!1067678 (validMask!0 mask!947))))

(assert (=> start!133596 e!870135))

(assert (=> start!133596 tp!113068))

(assert (=> start!133596 tp_is_empty!38647))

(assert (=> start!133596 true))

(declare-datatypes ((array!103965 0))(
  ( (array!103966 (arr!50170 (Array (_ BitVec 32) (_ BitVec 64))) (size!50721 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103965)

(declare-fun array_inv!38927 (array!103965) Bool)

(assert (=> start!133596 (array_inv!38927 _keys!637)))

(declare-datatypes ((V!59737 0))(
  ( (V!59738 (val!19407 Int)) )
))
(declare-datatypes ((ValueCell!18293 0))(
  ( (ValueCellFull!18293 (v!22156 V!59737)) (EmptyCell!18293) )
))
(declare-datatypes ((array!103967 0))(
  ( (array!103968 (arr!50171 (Array (_ BitVec 32) ValueCell!18293)) (size!50722 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103967)

(declare-fun e!870134 () Bool)

(declare-fun array_inv!38928 (array!103967) Bool)

(assert (=> start!133596 (and (array_inv!38928 _values!487) e!870134)))

(declare-fun b!1561374 () Bool)

(assert (=> b!1561374 (= e!870135 (not true))))

(declare-fun from!782 () (_ BitVec 32))

(declare-fun lt!671154 () V!59737)

(declare-datatypes ((tuple2!25216 0))(
  ( (tuple2!25217 (_1!12618 (_ BitVec 64)) (_2!12618 V!59737)) )
))
(declare-datatypes ((List!36592 0))(
  ( (Nil!36589) (Cons!36588 (h!38035 tuple2!25216) (t!51370 List!36592)) )
))
(declare-datatypes ((ListLongMap!22663 0))(
  ( (ListLongMap!22664 (toList!11347 List!36592)) )
))
(declare-fun lt!671153 () ListLongMap!22663)

(declare-fun contains!10267 (ListLongMap!22663 (_ BitVec 64)) Bool)

(declare-fun +!5002 (ListLongMap!22663 tuple2!25216) ListLongMap!22663)

(assert (=> b!1561374 (not (contains!10267 (+!5002 lt!671153 (tuple2!25217 (select (arr!50170 _keys!637) from!782) lt!671154)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51868 0))(
  ( (Unit!51869) )
))
(declare-fun lt!671152 () Unit!51868)

(declare-fun addStillNotContains!538 (ListLongMap!22663 (_ BitVec 64) V!59737 (_ BitVec 64)) Unit!51868)

(assert (=> b!1561374 (= lt!671152 (addStillNotContains!538 lt!671153 (select (arr!50170 _keys!637) from!782) lt!671154 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26236 (ValueCell!18293 V!59737) V!59737)

(declare-fun dynLambda!3891 (Int (_ BitVec 64)) V!59737)

(assert (=> b!1561374 (= lt!671154 (get!26236 (select (arr!50171 _values!487) from!782) (dynLambda!3891 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59737)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59737)

(declare-fun getCurrentListMapNoExtraKeys!6708 (array!103965 array!103967 (_ BitVec 32) (_ BitVec 32) V!59737 V!59737 (_ BitVec 32) Int) ListLongMap!22663)

(assert (=> b!1561374 (= lt!671153 (getCurrentListMapNoExtraKeys!6708 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1561375 () Bool)

(declare-fun res!1067677 () Bool)

(assert (=> b!1561375 (=> (not res!1067677) (not e!870135))))

(declare-datatypes ((List!36593 0))(
  ( (Nil!36590) (Cons!36589 (h!38036 (_ BitVec 64)) (t!51371 List!36593)) )
))
(declare-fun arrayNoDuplicates!0 (array!103965 (_ BitVec 32) List!36593) Bool)

(assert (=> b!1561375 (= res!1067677 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36590))))

(declare-fun b!1561376 () Bool)

(declare-fun res!1067676 () Bool)

(assert (=> b!1561376 (=> (not res!1067676) (not e!870135))))

(assert (=> b!1561376 (= res!1067676 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50721 _keys!637)) (bvslt from!782 (size!50721 _keys!637))))))

(declare-fun b!1561377 () Bool)

(declare-fun e!870133 () Bool)

(assert (=> b!1561377 (= e!870133 tp_is_empty!38647)))

(declare-fun b!1561378 () Bool)

(declare-fun res!1067674 () Bool)

(assert (=> b!1561378 (=> (not res!1067674) (not e!870135))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1561378 (= res!1067674 (validKeyInArray!0 (select (arr!50170 _keys!637) from!782)))))

(declare-fun b!1561379 () Bool)

(declare-fun res!1067673 () Bool)

(assert (=> b!1561379 (=> (not res!1067673) (not e!870135))))

(assert (=> b!1561379 (= res!1067673 (and (= (size!50722 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50721 _keys!637) (size!50722 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!59346 () Bool)

(declare-fun mapRes!59346 () Bool)

(assert (=> mapIsEmpty!59346 mapRes!59346))

(declare-fun b!1561380 () Bool)

(declare-fun res!1067675 () Bool)

(assert (=> b!1561380 (=> (not res!1067675) (not e!870135))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103965 (_ BitVec 32)) Bool)

(assert (=> b!1561380 (= res!1067675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun mapNonEmpty!59346 () Bool)

(declare-fun tp!113067 () Bool)

(assert (=> mapNonEmpty!59346 (= mapRes!59346 (and tp!113067 e!870137))))

(declare-fun mapRest!59346 () (Array (_ BitVec 32) ValueCell!18293))

(declare-fun mapValue!59346 () ValueCell!18293)

(declare-fun mapKey!59346 () (_ BitVec 32))

(assert (=> mapNonEmpty!59346 (= (arr!50171 _values!487) (store mapRest!59346 mapKey!59346 mapValue!59346))))

(declare-fun b!1561381 () Bool)

(assert (=> b!1561381 (= e!870134 (and e!870133 mapRes!59346))))

(declare-fun condMapEmpty!59346 () Bool)

(declare-fun mapDefault!59346 () ValueCell!18293)

