; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133612 () Bool)

(assert start!133612)

(declare-fun b_free!31997 () Bool)

(declare-fun b_next!31997 () Bool)

(assert (=> start!133612 (= b_free!31997 (not b_next!31997))))

(declare-fun tp!113115 () Bool)

(declare-fun b_and!51515 () Bool)

(assert (=> start!133612 (= tp!113115 b_and!51515)))

(declare-fun b!1561605 () Bool)

(declare-fun e!870257 () Bool)

(declare-fun tp_is_empty!38663 () Bool)

(assert (=> b!1561605 (= e!870257 tp_is_empty!38663)))

(declare-fun b!1561606 () Bool)

(declare-fun res!1067822 () Bool)

(declare-fun e!870254 () Bool)

(assert (=> b!1561606 (=> (not res!1067822) (not e!870254))))

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((array!103997 0))(
  ( (array!103998 (arr!50186 (Array (_ BitVec 32) (_ BitVec 64))) (size!50737 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103997)

(assert (=> b!1561606 (= res!1067822 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50737 _keys!637)) (bvslt from!782 (size!50737 _keys!637))))))

(declare-fun b!1561607 () Bool)

(assert (=> b!1561607 (= e!870254 (not (bvsge (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!59757 0))(
  ( (V!59758 (val!19415 Int)) )
))
(declare-fun lt!671225 () V!59757)

(declare-datatypes ((tuple2!25230 0))(
  ( (tuple2!25231 (_1!12625 (_ BitVec 64)) (_2!12625 V!59757)) )
))
(declare-datatypes ((List!36607 0))(
  ( (Nil!36604) (Cons!36603 (h!38050 tuple2!25230) (t!51401 List!36607)) )
))
(declare-datatypes ((ListLongMap!22677 0))(
  ( (ListLongMap!22678 (toList!11354 List!36607)) )
))
(declare-fun lt!671224 () ListLongMap!22677)

(declare-fun contains!10274 (ListLongMap!22677 (_ BitVec 64)) Bool)

(declare-fun +!5009 (ListLongMap!22677 tuple2!25230) ListLongMap!22677)

(assert (=> b!1561607 (not (contains!10274 (+!5009 lt!671224 (tuple2!25231 (select (arr!50186 _keys!637) from!782) lt!671225)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51882 0))(
  ( (Unit!51883) )
))
(declare-fun lt!671226 () Unit!51882)

(declare-fun addStillNotContains!545 (ListLongMap!22677 (_ BitVec 64) V!59757 (_ BitVec 64)) Unit!51882)

(assert (=> b!1561607 (= lt!671226 (addStillNotContains!545 lt!671224 (select (arr!50186 _keys!637) from!782) lt!671225 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18301 0))(
  ( (ValueCellFull!18301 (v!22164 V!59757)) (EmptyCell!18301) )
))
(declare-datatypes ((array!103999 0))(
  ( (array!104000 (arr!50187 (Array (_ BitVec 32) ValueCell!18301)) (size!50738 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103999)

(declare-fun get!26247 (ValueCell!18301 V!59757) V!59757)

(declare-fun dynLambda!3898 (Int (_ BitVec 64)) V!59757)

(assert (=> b!1561607 (= lt!671225 (get!26247 (select (arr!50187 _values!487) from!782) (dynLambda!3898 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59757)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59757)

(declare-fun getCurrentListMapNoExtraKeys!6715 (array!103997 array!103999 (_ BitVec 32) (_ BitVec 32) V!59757 V!59757 (_ BitVec 32) Int) ListLongMap!22677)

(assert (=> b!1561607 (= lt!671224 (getCurrentListMapNoExtraKeys!6715 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1561608 () Bool)

(declare-fun res!1067817 () Bool)

(assert (=> b!1561608 (=> (not res!1067817) (not e!870254))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1561608 (= res!1067817 (validKeyInArray!0 (select (arr!50186 _keys!637) from!782)))))

(declare-fun b!1561609 () Bool)

(declare-fun e!870255 () Bool)

(assert (=> b!1561609 (= e!870255 tp_is_empty!38663)))

(declare-fun mapNonEmpty!59370 () Bool)

(declare-fun mapRes!59370 () Bool)

(declare-fun tp!113116 () Bool)

(assert (=> mapNonEmpty!59370 (= mapRes!59370 (and tp!113116 e!870257))))

(declare-fun mapRest!59370 () (Array (_ BitVec 32) ValueCell!18301))

(declare-fun mapKey!59370 () (_ BitVec 32))

(declare-fun mapValue!59370 () ValueCell!18301)

(assert (=> mapNonEmpty!59370 (= (arr!50187 _values!487) (store mapRest!59370 mapKey!59370 mapValue!59370))))

(declare-fun b!1561611 () Bool)

(declare-fun res!1067821 () Bool)

(assert (=> b!1561611 (=> (not res!1067821) (not e!870254))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103997 (_ BitVec 32)) Bool)

(assert (=> b!1561611 (= res!1067821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1561612 () Bool)

(declare-fun res!1067819 () Bool)

(assert (=> b!1561612 (=> (not res!1067819) (not e!870254))))

(declare-datatypes ((List!36608 0))(
  ( (Nil!36605) (Cons!36604 (h!38051 (_ BitVec 64)) (t!51402 List!36608)) )
))
(declare-fun arrayNoDuplicates!0 (array!103997 (_ BitVec 32) List!36608) Bool)

(assert (=> b!1561612 (= res!1067819 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36605))))

(declare-fun b!1561613 () Bool)

(declare-fun e!870253 () Bool)

(assert (=> b!1561613 (= e!870253 (and e!870255 mapRes!59370))))

(declare-fun condMapEmpty!59370 () Bool)

(declare-fun mapDefault!59370 () ValueCell!18301)

