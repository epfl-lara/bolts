; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133564 () Bool)

(assert start!133564)

(declare-fun b_free!31949 () Bool)

(declare-fun b_next!31949 () Bool)

(assert (=> start!133564 (= b_free!31949 (not b_next!31949))))

(declare-fun tp!112972 () Bool)

(declare-fun b_and!51419 () Bool)

(assert (=> start!133564 (= tp!112972 b_and!51419)))

(declare-fun b!1560909 () Bool)

(declare-fun res!1067387 () Bool)

(declare-fun e!869893 () Bool)

(assert (=> b!1560909 (=> (not res!1067387) (not e!869893))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!103901 0))(
  ( (array!103902 (arr!50138 (Array (_ BitVec 32) (_ BitVec 64))) (size!50689 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103901)

(declare-datatypes ((V!59693 0))(
  ( (V!59694 (val!19391 Int)) )
))
(declare-datatypes ((ValueCell!18277 0))(
  ( (ValueCellFull!18277 (v!22140 V!59693)) (EmptyCell!18277) )
))
(declare-datatypes ((array!103903 0))(
  ( (array!103904 (arr!50139 (Array (_ BitVec 32) ValueCell!18277)) (size!50690 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103903)

(assert (=> b!1560909 (= res!1067387 (and (= (size!50690 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50689 _keys!637) (size!50690 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1560910 () Bool)

(declare-fun e!869895 () Bool)

(declare-fun tp_is_empty!38615 () Bool)

(assert (=> b!1560910 (= e!869895 tp_is_empty!38615)))

(declare-fun b!1560911 () Bool)

(assert (=> b!1560911 (= e!869893 (not true))))

(declare-fun lt!671010 () V!59693)

(declare-datatypes ((tuple2!25188 0))(
  ( (tuple2!25189 (_1!12604 (_ BitVec 64)) (_2!12604 V!59693)) )
))
(declare-datatypes ((List!36566 0))(
  ( (Nil!36563) (Cons!36562 (h!38009 tuple2!25188) (t!51312 List!36566)) )
))
(declare-datatypes ((ListLongMap!22635 0))(
  ( (ListLongMap!22636 (toList!11333 List!36566)) )
))
(declare-fun lt!671008 () ListLongMap!22635)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun contains!10253 (ListLongMap!22635 (_ BitVec 64)) Bool)

(declare-fun +!4988 (ListLongMap!22635 tuple2!25188) ListLongMap!22635)

(assert (=> b!1560911 (not (contains!10253 (+!4988 lt!671008 (tuple2!25189 (select (arr!50138 _keys!637) from!782) lt!671010)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51840 0))(
  ( (Unit!51841) )
))
(declare-fun lt!671009 () Unit!51840)

(declare-fun addStillNotContains!524 (ListLongMap!22635 (_ BitVec 64) V!59693 (_ BitVec 64)) Unit!51840)

(assert (=> b!1560911 (= lt!671009 (addStillNotContains!524 lt!671008 (select (arr!50138 _keys!637) from!782) lt!671010 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26210 (ValueCell!18277 V!59693) V!59693)

(declare-fun dynLambda!3877 (Int (_ BitVec 64)) V!59693)

(assert (=> b!1560911 (= lt!671010 (get!26210 (select (arr!50139 _values!487) from!782) (dynLambda!3877 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59693)

(declare-fun minValue!453 () V!59693)

(declare-fun getCurrentListMapNoExtraKeys!6694 (array!103901 array!103903 (_ BitVec 32) (_ BitVec 32) V!59693 V!59693 (_ BitVec 32) Int) ListLongMap!22635)

(assert (=> b!1560911 (= lt!671008 (getCurrentListMapNoExtraKeys!6694 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1560912 () Bool)

(declare-fun res!1067389 () Bool)

(assert (=> b!1560912 (=> (not res!1067389) (not e!869893))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103901 (_ BitVec 32)) Bool)

(assert (=> b!1560912 (= res!1067389 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1560913 () Bool)

(declare-fun res!1067390 () Bool)

(assert (=> b!1560913 (=> (not res!1067390) (not e!869893))))

(assert (=> b!1560913 (= res!1067390 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50689 _keys!637)) (bvslt from!782 (size!50689 _keys!637))))))

(declare-fun res!1067385 () Bool)

(assert (=> start!133564 (=> (not res!1067385) (not e!869893))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133564 (= res!1067385 (validMask!0 mask!947))))

(assert (=> start!133564 e!869893))

(assert (=> start!133564 tp!112972))

(assert (=> start!133564 tp_is_empty!38615))

(assert (=> start!133564 true))

(declare-fun array_inv!38901 (array!103901) Bool)

(assert (=> start!133564 (array_inv!38901 _keys!637)))

(declare-fun e!869894 () Bool)

(declare-fun array_inv!38902 (array!103903) Bool)

(assert (=> start!133564 (and (array_inv!38902 _values!487) e!869894)))

(declare-fun mapNonEmpty!59298 () Bool)

(declare-fun mapRes!59298 () Bool)

(declare-fun tp!112971 () Bool)

(assert (=> mapNonEmpty!59298 (= mapRes!59298 (and tp!112971 e!869895))))

(declare-fun mapValue!59298 () ValueCell!18277)

(declare-fun mapKey!59298 () (_ BitVec 32))

(declare-fun mapRest!59298 () (Array (_ BitVec 32) ValueCell!18277))

(assert (=> mapNonEmpty!59298 (= (arr!50139 _values!487) (store mapRest!59298 mapKey!59298 mapValue!59298))))

(declare-fun b!1560914 () Bool)

(declare-fun e!869896 () Bool)

(assert (=> b!1560914 (= e!869896 tp_is_empty!38615)))

(declare-fun b!1560915 () Bool)

(declare-fun res!1067386 () Bool)

(assert (=> b!1560915 (=> (not res!1067386) (not e!869893))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1560915 (= res!1067386 (validKeyInArray!0 (select (arr!50138 _keys!637) from!782)))))

(declare-fun mapIsEmpty!59298 () Bool)

(assert (=> mapIsEmpty!59298 mapRes!59298))

(declare-fun b!1560916 () Bool)

(declare-fun res!1067388 () Bool)

(assert (=> b!1560916 (=> (not res!1067388) (not e!869893))))

(declare-datatypes ((List!36567 0))(
  ( (Nil!36564) (Cons!36563 (h!38010 (_ BitVec 64)) (t!51313 List!36567)) )
))
(declare-fun arrayNoDuplicates!0 (array!103901 (_ BitVec 32) List!36567) Bool)

(assert (=> b!1560916 (= res!1067388 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36564))))

(declare-fun b!1560917 () Bool)

(assert (=> b!1560917 (= e!869894 (and e!869896 mapRes!59298))))

(declare-fun condMapEmpty!59298 () Bool)

(declare-fun mapDefault!59298 () ValueCell!18277)

