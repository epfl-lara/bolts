; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133568 () Bool)

(assert start!133568)

(declare-fun b_free!31953 () Bool)

(declare-fun b_next!31953 () Bool)

(assert (=> start!133568 (= b_free!31953 (not b_next!31953))))

(declare-fun tp!112983 () Bool)

(declare-fun b_and!51427 () Bool)

(assert (=> start!133568 (= tp!112983 b_and!51427)))

(declare-fun b!1560967 () Bool)

(declare-fun res!1067426 () Bool)

(declare-fun e!869924 () Bool)

(assert (=> b!1560967 (=> (not res!1067426) (not e!869924))))

(declare-datatypes ((array!103909 0))(
  ( (array!103910 (arr!50142 (Array (_ BitVec 32) (_ BitVec 64))) (size!50693 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103909)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103909 (_ BitVec 32)) Bool)

(assert (=> b!1560967 (= res!1067426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1560968 () Bool)

(declare-fun res!1067425 () Bool)

(assert (=> b!1560968 (=> (not res!1067425) (not e!869924))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((V!59699 0))(
  ( (V!59700 (val!19393 Int)) )
))
(declare-datatypes ((ValueCell!18279 0))(
  ( (ValueCellFull!18279 (v!22142 V!59699)) (EmptyCell!18279) )
))
(declare-datatypes ((array!103911 0))(
  ( (array!103912 (arr!50143 (Array (_ BitVec 32) ValueCell!18279)) (size!50694 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103911)

(assert (=> b!1560968 (= res!1067425 (and (= (size!50694 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50693 _keys!637) (size!50694 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1560969 () Bool)

(declare-fun e!869926 () Bool)

(declare-fun tp_is_empty!38619 () Bool)

(assert (=> b!1560969 (= e!869926 tp_is_empty!38619)))

(declare-fun mapNonEmpty!59304 () Bool)

(declare-fun mapRes!59304 () Bool)

(declare-fun tp!112984 () Bool)

(assert (=> mapNonEmpty!59304 (= mapRes!59304 (and tp!112984 e!869926))))

(declare-fun mapValue!59304 () ValueCell!18279)

(declare-fun mapRest!59304 () (Array (_ BitVec 32) ValueCell!18279))

(declare-fun mapKey!59304 () (_ BitVec 32))

(assert (=> mapNonEmpty!59304 (= (arr!50143 _values!487) (store mapRest!59304 mapKey!59304 mapValue!59304))))

(declare-fun b!1560970 () Bool)

(declare-fun e!869927 () Bool)

(assert (=> b!1560970 (= e!869927 tp_is_empty!38619)))

(declare-fun b!1560971 () Bool)

(assert (=> b!1560971 (= e!869924 (not true))))

(declare-fun from!782 () (_ BitVec 32))

(declare-fun lt!671027 () V!59699)

(declare-datatypes ((tuple2!25192 0))(
  ( (tuple2!25193 (_1!12606 (_ BitVec 64)) (_2!12606 V!59699)) )
))
(declare-datatypes ((List!36570 0))(
  ( (Nil!36567) (Cons!36566 (h!38013 tuple2!25192) (t!51320 List!36570)) )
))
(declare-datatypes ((ListLongMap!22639 0))(
  ( (ListLongMap!22640 (toList!11335 List!36570)) )
))
(declare-fun lt!671028 () ListLongMap!22639)

(declare-fun contains!10255 (ListLongMap!22639 (_ BitVec 64)) Bool)

(declare-fun +!4990 (ListLongMap!22639 tuple2!25192) ListLongMap!22639)

(assert (=> b!1560971 (not (contains!10255 (+!4990 lt!671028 (tuple2!25193 (select (arr!50142 _keys!637) from!782) lt!671027)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51844 0))(
  ( (Unit!51845) )
))
(declare-fun lt!671026 () Unit!51844)

(declare-fun addStillNotContains!526 (ListLongMap!22639 (_ BitVec 64) V!59699 (_ BitVec 64)) Unit!51844)

(assert (=> b!1560971 (= lt!671026 (addStillNotContains!526 lt!671028 (select (arr!50142 _keys!637) from!782) lt!671027 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26214 (ValueCell!18279 V!59699) V!59699)

(declare-fun dynLambda!3879 (Int (_ BitVec 64)) V!59699)

(assert (=> b!1560971 (= lt!671027 (get!26214 (select (arr!50143 _values!487) from!782) (dynLambda!3879 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59699)

(declare-fun minValue!453 () V!59699)

(declare-fun getCurrentListMapNoExtraKeys!6696 (array!103909 array!103911 (_ BitVec 32) (_ BitVec 32) V!59699 V!59699 (_ BitVec 32) Int) ListLongMap!22639)

(assert (=> b!1560971 (= lt!671028 (getCurrentListMapNoExtraKeys!6696 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun res!1067423 () Bool)

(assert (=> start!133568 (=> (not res!1067423) (not e!869924))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133568 (= res!1067423 (validMask!0 mask!947))))

(assert (=> start!133568 e!869924))

(assert (=> start!133568 tp!112983))

(assert (=> start!133568 tp_is_empty!38619))

(assert (=> start!133568 true))

(declare-fun array_inv!38905 (array!103909) Bool)

(assert (=> start!133568 (array_inv!38905 _keys!637)))

(declare-fun e!869923 () Bool)

(declare-fun array_inv!38906 (array!103911) Bool)

(assert (=> start!133568 (and (array_inv!38906 _values!487) e!869923)))

(declare-fun b!1560972 () Bool)

(declare-fun res!1067422 () Bool)

(assert (=> b!1560972 (=> (not res!1067422) (not e!869924))))

(declare-datatypes ((List!36571 0))(
  ( (Nil!36568) (Cons!36567 (h!38014 (_ BitVec 64)) (t!51321 List!36571)) )
))
(declare-fun arrayNoDuplicates!0 (array!103909 (_ BitVec 32) List!36571) Bool)

(assert (=> b!1560972 (= res!1067422 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36568))))

(declare-fun b!1560973 () Bool)

(declare-fun res!1067424 () Bool)

(assert (=> b!1560973 (=> (not res!1067424) (not e!869924))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1560973 (= res!1067424 (validKeyInArray!0 (select (arr!50142 _keys!637) from!782)))))

(declare-fun b!1560974 () Bool)

(assert (=> b!1560974 (= e!869923 (and e!869927 mapRes!59304))))

(declare-fun condMapEmpty!59304 () Bool)

(declare-fun mapDefault!59304 () ValueCell!18279)

(assert (=> b!1560974 (= condMapEmpty!59304 (= (arr!50143 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18279)) mapDefault!59304)))))

(declare-fun mapIsEmpty!59304 () Bool)

(assert (=> mapIsEmpty!59304 mapRes!59304))

(declare-fun b!1560975 () Bool)

(declare-fun res!1067421 () Bool)

(assert (=> b!1560975 (=> (not res!1067421) (not e!869924))))

(assert (=> b!1560975 (= res!1067421 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50693 _keys!637)) (bvslt from!782 (size!50693 _keys!637))))))

(assert (= (and start!133568 res!1067423) b!1560968))

(assert (= (and b!1560968 res!1067425) b!1560967))

(assert (= (and b!1560967 res!1067426) b!1560972))

(assert (= (and b!1560972 res!1067422) b!1560975))

(assert (= (and b!1560975 res!1067421) b!1560973))

(assert (= (and b!1560973 res!1067424) b!1560971))

(assert (= (and b!1560974 condMapEmpty!59304) mapIsEmpty!59304))

(assert (= (and b!1560974 (not condMapEmpty!59304)) mapNonEmpty!59304))

(get-info :version)

(assert (= (and mapNonEmpty!59304 ((_ is ValueCellFull!18279) mapValue!59304)) b!1560969))

(assert (= (and b!1560974 ((_ is ValueCellFull!18279) mapDefault!59304)) b!1560970))

(assert (= start!133568 b!1560974))

(declare-fun b_lambda!24837 () Bool)

(assert (=> (not b_lambda!24837) (not b!1560971)))

(declare-fun t!51319 () Bool)

(declare-fun tb!12505 () Bool)

(assert (=> (and start!133568 (= defaultEntry!495 defaultEntry!495) t!51319) tb!12505))

(declare-fun result!26283 () Bool)

(assert (=> tb!12505 (= result!26283 tp_is_empty!38619)))

(assert (=> b!1560971 t!51319))

(declare-fun b_and!51429 () Bool)

(assert (= b_and!51427 (and (=> t!51319 result!26283) b_and!51429)))

(declare-fun m!1436683 () Bool)

(assert (=> b!1560971 m!1436683))

(declare-fun m!1436685 () Bool)

(assert (=> b!1560971 m!1436685))

(declare-fun m!1436687 () Bool)

(assert (=> b!1560971 m!1436687))

(declare-fun m!1436689 () Bool)

(assert (=> b!1560971 m!1436689))

(assert (=> b!1560971 m!1436685))

(declare-fun m!1436691 () Bool)

(assert (=> b!1560971 m!1436691))

(declare-fun m!1436693 () Bool)

(assert (=> b!1560971 m!1436693))

(assert (=> b!1560971 m!1436693))

(declare-fun m!1436695 () Bool)

(assert (=> b!1560971 m!1436695))

(assert (=> b!1560971 m!1436683))

(assert (=> b!1560971 m!1436689))

(declare-fun m!1436697 () Bool)

(assert (=> b!1560971 m!1436697))

(declare-fun m!1436699 () Bool)

(assert (=> b!1560972 m!1436699))

(declare-fun m!1436701 () Bool)

(assert (=> mapNonEmpty!59304 m!1436701))

(declare-fun m!1436703 () Bool)

(assert (=> start!133568 m!1436703))

(declare-fun m!1436705 () Bool)

(assert (=> start!133568 m!1436705))

(declare-fun m!1436707 () Bool)

(assert (=> start!133568 m!1436707))

(assert (=> b!1560973 m!1436689))

(assert (=> b!1560973 m!1436689))

(declare-fun m!1436709 () Bool)

(assert (=> b!1560973 m!1436709))

(declare-fun m!1436711 () Bool)

(assert (=> b!1560967 m!1436711))

(check-sat (not b!1560972) (not b!1560971) (not b_next!31953) (not mapNonEmpty!59304) (not b!1560973) tp_is_empty!38619 (not start!133568) b_and!51429 (not b_lambda!24837) (not b!1560967))
(check-sat b_and!51429 (not b_next!31953))
