; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133980 () Bool)

(assert start!133980)

(declare-fun b_free!32171 () Bool)

(declare-fun b_next!32171 () Bool)

(assert (=> start!133980 (= b_free!32171 (not b_next!32171))))

(declare-fun tp!113815 () Bool)

(declare-fun b_and!51793 () Bool)

(assert (=> start!133980 (= tp!113815 b_and!51793)))

(declare-fun b!1565721 () Bool)

(declare-fun res!1070370 () Bool)

(declare-fun e!872737 () Bool)

(assert (=> b!1565721 (=> (not res!1070370) (not e!872737))))

(declare-datatypes ((array!104551 0))(
  ( (array!104552 (arr!50458 (Array (_ BitVec 32) (_ BitVec 64))) (size!51009 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104551)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104551 (_ BitVec 32)) Bool)

(assert (=> b!1565721 (= res!1070370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1565722 () Bool)

(declare-fun e!872736 () Bool)

(assert (=> b!1565722 (= e!872736 true)))

(declare-fun lt!672371 () Bool)

(declare-datatypes ((V!60133 0))(
  ( (V!60134 (val!19556 Int)) )
))
(declare-datatypes ((tuple2!25394 0))(
  ( (tuple2!25395 (_1!12707 (_ BitVec 64)) (_2!12707 V!60133)) )
))
(declare-datatypes ((List!36781 0))(
  ( (Nil!36778) (Cons!36777 (h!38224 tuple2!25394) (t!51673 List!36781)) )
))
(declare-datatypes ((ListLongMap!22841 0))(
  ( (ListLongMap!22842 (toList!11436 List!36781)) )
))
(declare-fun lt!672368 () ListLongMap!22841)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun contains!10357 (ListLongMap!22841 (_ BitVec 64)) Bool)

(assert (=> b!1565722 (= lt!672371 (contains!10357 lt!672368 (select (arr!50458 _keys!637) from!782)))))

(declare-fun b!1565723 () Bool)

(declare-fun e!872734 () Bool)

(declare-fun tp_is_empty!38945 () Bool)

(assert (=> b!1565723 (= e!872734 tp_is_empty!38945)))

(declare-fun b!1565724 () Bool)

(declare-fun res!1070372 () Bool)

(assert (=> b!1565724 (=> (not res!1070372) (not e!872737))))

(assert (=> b!1565724 (= res!1070372 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!51009 _keys!637)) (bvslt from!782 (size!51009 _keys!637))))))

(declare-fun b!1565725 () Bool)

(assert (=> b!1565725 (= e!872737 (not e!872736))))

(declare-fun res!1070371 () Bool)

(assert (=> b!1565725 (=> res!1070371 e!872736)))

(assert (=> b!1565725 (= res!1070371 (contains!10357 lt!672368 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1565725 (not (contains!10357 lt!672368 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!672367 () ListLongMap!22841)

(declare-fun lt!672370 () V!60133)

(declare-fun +!5043 (ListLongMap!22841 tuple2!25394) ListLongMap!22841)

(assert (=> b!1565725 (= lt!672368 (+!5043 lt!672367 (tuple2!25395 (select (arr!50458 _keys!637) from!782) lt!672370)))))

(declare-datatypes ((Unit!51960 0))(
  ( (Unit!51961) )
))
(declare-fun lt!672369 () Unit!51960)

(declare-fun addStillNotContains!579 (ListLongMap!22841 (_ BitVec 64) V!60133 (_ BitVec 64)) Unit!51960)

(assert (=> b!1565725 (= lt!672369 (addStillNotContains!579 lt!672367 (select (arr!50458 _keys!637) from!782) lt!672370 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((ValueCell!18442 0))(
  ( (ValueCellFull!18442 (v!22309 V!60133)) (EmptyCell!18442) )
))
(declare-datatypes ((array!104553 0))(
  ( (array!104554 (arr!50459 (Array (_ BitVec 32) ValueCell!18442)) (size!51010 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104553)

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26377 (ValueCell!18442 V!60133) V!60133)

(declare-fun dynLambda!3932 (Int (_ BitVec 64)) V!60133)

(assert (=> b!1565725 (= lt!672370 (get!26377 (select (arr!50459 _values!487) from!782) (dynLambda!3932 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!60133)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60133)

(declare-fun getCurrentListMapNoExtraKeys!6776 (array!104551 array!104553 (_ BitVec 32) (_ BitVec 32) V!60133 V!60133 (_ BitVec 32) Int) ListLongMap!22841)

(assert (=> b!1565725 (= lt!672367 (getCurrentListMapNoExtraKeys!6776 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1565726 () Bool)

(declare-fun res!1070368 () Bool)

(assert (=> b!1565726 (=> (not res!1070368) (not e!872737))))

(assert (=> b!1565726 (= res!1070368 (and (= (size!51010 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!51009 _keys!637) (size!51010 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1565727 () Bool)

(declare-fun res!1070367 () Bool)

(assert (=> b!1565727 (=> (not res!1070367) (not e!872737))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1565727 (= res!1070367 (validKeyInArray!0 (select (arr!50458 _keys!637) from!782)))))

(declare-fun b!1565728 () Bool)

(declare-fun e!872735 () Bool)

(assert (=> b!1565728 (= e!872735 tp_is_empty!38945)))

(declare-fun mapNonEmpty!59809 () Bool)

(declare-fun mapRes!59809 () Bool)

(declare-fun tp!113816 () Bool)

(assert (=> mapNonEmpty!59809 (= mapRes!59809 (and tp!113816 e!872734))))

(declare-fun mapRest!59809 () (Array (_ BitVec 32) ValueCell!18442))

(declare-fun mapValue!59809 () ValueCell!18442)

(declare-fun mapKey!59809 () (_ BitVec 32))

(assert (=> mapNonEmpty!59809 (= (arr!50459 _values!487) (store mapRest!59809 mapKey!59809 mapValue!59809))))

(declare-fun b!1565729 () Bool)

(declare-fun e!872738 () Bool)

(assert (=> b!1565729 (= e!872738 (and e!872735 mapRes!59809))))

(declare-fun condMapEmpty!59809 () Bool)

(declare-fun mapDefault!59809 () ValueCell!18442)

