; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133668 () Bool)

(assert start!133668)

(declare-fun b_free!32053 () Bool)

(declare-fun b_next!32053 () Bool)

(assert (=> start!133668 (= b_free!32053 (not b_next!32053))))

(declare-fun tp!113283 () Bool)

(declare-fun b_and!51627 () Bool)

(assert (=> start!133668 (= tp!113283 b_and!51627)))

(declare-fun b!1562426 () Bool)

(declare-fun res!1068330 () Bool)

(declare-fun e!870685 () Bool)

(assert (=> b!1562426 (=> (not res!1068330) (not e!870685))))

(declare-datatypes ((array!104103 0))(
  ( (array!104104 (arr!50239 (Array (_ BitVec 32) (_ BitVec 64))) (size!50790 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104103)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104103 (_ BitVec 32)) Bool)

(assert (=> b!1562426 (= res!1068330 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1562427 () Bool)

(declare-fun e!870683 () Bool)

(declare-fun tp_is_empty!38719 () Bool)

(assert (=> b!1562427 (= e!870683 tp_is_empty!38719)))

(declare-fun b!1562428 () Bool)

(declare-fun res!1068334 () Bool)

(assert (=> b!1562428 (=> (not res!1068334) (not e!870685))))

(declare-datatypes ((List!36645 0))(
  ( (Nil!36642) (Cons!36641 (h!38088 (_ BitVec 64)) (t!51495 List!36645)) )
))
(declare-fun arrayNoDuplicates!0 (array!104103 (_ BitVec 32) List!36645) Bool)

(assert (=> b!1562428 (= res!1068334 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36642))))

(declare-fun b!1562429 () Bool)

(assert (=> b!1562429 (= e!870685 (not true))))

(declare-fun lt!671644 () Bool)

(declare-datatypes ((V!59833 0))(
  ( (V!59834 (val!19443 Int)) )
))
(declare-datatypes ((tuple2!25270 0))(
  ( (tuple2!25271 (_1!12645 (_ BitVec 64)) (_2!12645 V!59833)) )
))
(declare-datatypes ((List!36646 0))(
  ( (Nil!36643) (Cons!36642 (h!38089 tuple2!25270) (t!51496 List!36646)) )
))
(declare-datatypes ((ListLongMap!22717 0))(
  ( (ListLongMap!22718 (toList!11374 List!36646)) )
))
(declare-fun lt!671646 () ListLongMap!22717)

(declare-fun contains!10294 (ListLongMap!22717 (_ BitVec 64)) Bool)

(assert (=> b!1562429 (= lt!671644 (contains!10294 lt!671646 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1562429 (not (contains!10294 lt!671646 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!671642 () ListLongMap!22717)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun lt!671643 () V!59833)

(declare-fun +!5028 (ListLongMap!22717 tuple2!25270) ListLongMap!22717)

(assert (=> b!1562429 (= lt!671646 (+!5028 lt!671642 (tuple2!25271 (select (arr!50239 _keys!637) from!782) lt!671643)))))

(declare-datatypes ((Unit!51920 0))(
  ( (Unit!51921) )
))
(declare-fun lt!671645 () Unit!51920)

(declare-fun addStillNotContains!564 (ListLongMap!22717 (_ BitVec 64) V!59833 (_ BitVec 64)) Unit!51920)

(assert (=> b!1562429 (= lt!671645 (addStillNotContains!564 lt!671642 (select (arr!50239 _keys!637) from!782) lt!671643 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18329 0))(
  ( (ValueCellFull!18329 (v!22192 V!59833)) (EmptyCell!18329) )
))
(declare-datatypes ((array!104105 0))(
  ( (array!104106 (arr!50240 (Array (_ BitVec 32) ValueCell!18329)) (size!50791 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104105)

(declare-fun get!26286 (ValueCell!18329 V!59833) V!59833)

(declare-fun dynLambda!3917 (Int (_ BitVec 64)) V!59833)

(assert (=> b!1562429 (= lt!671643 (get!26286 (select (arr!50240 _values!487) from!782) (dynLambda!3917 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59833)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59833)

(declare-fun getCurrentListMapNoExtraKeys!6734 (array!104103 array!104105 (_ BitVec 32) (_ BitVec 32) V!59833 V!59833 (_ BitVec 32) Int) ListLongMap!22717)

(assert (=> b!1562429 (= lt!671642 (getCurrentListMapNoExtraKeys!6734 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun mapIsEmpty!59454 () Bool)

(declare-fun mapRes!59454 () Bool)

(assert (=> mapIsEmpty!59454 mapRes!59454))

(declare-fun res!1068333 () Bool)

(assert (=> start!133668 (=> (not res!1068333) (not e!870685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133668 (= res!1068333 (validMask!0 mask!947))))

(assert (=> start!133668 e!870685))

(assert (=> start!133668 tp!113283))

(assert (=> start!133668 tp_is_empty!38719))

(assert (=> start!133668 true))

(declare-fun array_inv!38973 (array!104103) Bool)

(assert (=> start!133668 (array_inv!38973 _keys!637)))

(declare-fun e!870684 () Bool)

(declare-fun array_inv!38974 (array!104105) Bool)

(assert (=> start!133668 (and (array_inv!38974 _values!487) e!870684)))

(declare-fun b!1562430 () Bool)

(declare-fun res!1068332 () Bool)

(assert (=> b!1562430 (=> (not res!1068332) (not e!870685))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1562430 (= res!1068332 (validKeyInArray!0 (select (arr!50239 _keys!637) from!782)))))

(declare-fun b!1562431 () Bool)

(declare-fun res!1068331 () Bool)

(assert (=> b!1562431 (=> (not res!1068331) (not e!870685))))

(assert (=> b!1562431 (= res!1068331 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50790 _keys!637)) (bvslt from!782 (size!50790 _keys!637))))))

(declare-fun mapNonEmpty!59454 () Bool)

(declare-fun tp!113284 () Bool)

(assert (=> mapNonEmpty!59454 (= mapRes!59454 (and tp!113284 e!870683))))

(declare-fun mapKey!59454 () (_ BitVec 32))

(declare-fun mapRest!59454 () (Array (_ BitVec 32) ValueCell!18329))

(declare-fun mapValue!59454 () ValueCell!18329)

(assert (=> mapNonEmpty!59454 (= (arr!50240 _values!487) (store mapRest!59454 mapKey!59454 mapValue!59454))))

(declare-fun b!1562432 () Bool)

(declare-fun e!870686 () Bool)

(assert (=> b!1562432 (= e!870686 tp_is_empty!38719)))

(declare-fun b!1562433 () Bool)

(declare-fun res!1068335 () Bool)

(assert (=> b!1562433 (=> (not res!1068335) (not e!870685))))

(assert (=> b!1562433 (= res!1068335 (and (= (size!50791 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50790 _keys!637) (size!50791 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562434 () Bool)

(assert (=> b!1562434 (= e!870684 (and e!870686 mapRes!59454))))

(declare-fun condMapEmpty!59454 () Bool)

(declare-fun mapDefault!59454 () ValueCell!18329)

