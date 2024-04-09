; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133628 () Bool)

(assert start!133628)

(declare-fun b_free!32013 () Bool)

(declare-fun b_next!32013 () Bool)

(assert (=> start!133628 (= b_free!32013 (not b_next!32013))))

(declare-fun tp!113163 () Bool)

(declare-fun b_and!51547 () Bool)

(assert (=> start!133628 (= tp!113163 b_and!51547)))

(declare-fun b!1561846 () Bool)

(declare-fun res!1067970 () Bool)

(declare-fun e!870386 () Bool)

(assert (=> b!1561846 (=> (not res!1067970) (not e!870386))))

(declare-datatypes ((array!104029 0))(
  ( (array!104030 (arr!50202 (Array (_ BitVec 32) (_ BitVec 64))) (size!50753 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104029)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1561846 (= res!1067970 (validKeyInArray!0 (select (arr!50202 _keys!637) from!782)))))

(declare-fun b!1561847 () Bool)

(declare-fun e!870384 () Bool)

(declare-fun tp_is_empty!38679 () Bool)

(assert (=> b!1561847 (= e!870384 tp_is_empty!38679)))

(declare-fun b!1561848 () Bool)

(declare-fun res!1067973 () Bool)

(assert (=> b!1561848 (=> (not res!1067973) (not e!870386))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104029 (_ BitVec 32)) Bool)

(assert (=> b!1561848 (= res!1067973 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1561849 () Bool)

(declare-fun res!1067974 () Bool)

(assert (=> b!1561849 (=> (not res!1067974) (not e!870386))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((V!59779 0))(
  ( (V!59780 (val!19423 Int)) )
))
(declare-datatypes ((ValueCell!18309 0))(
  ( (ValueCellFull!18309 (v!22172 V!59779)) (EmptyCell!18309) )
))
(declare-datatypes ((array!104031 0))(
  ( (array!104032 (arr!50203 (Array (_ BitVec 32) ValueCell!18309)) (size!50754 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104031)

(assert (=> b!1561849 (= res!1067974 (and (= (size!50754 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50753 _keys!637) (size!50754 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1561850 () Bool)

(assert (=> b!1561850 (= e!870386 (not true))))

(declare-fun lt!671344 () Bool)

(declare-datatypes ((tuple2!25244 0))(
  ( (tuple2!25245 (_1!12632 (_ BitVec 64)) (_2!12632 V!59779)) )
))
(declare-datatypes ((List!36620 0))(
  ( (Nil!36617) (Cons!36616 (h!38063 tuple2!25244) (t!51430 List!36620)) )
))
(declare-datatypes ((ListLongMap!22691 0))(
  ( (ListLongMap!22692 (toList!11361 List!36620)) )
))
(declare-fun lt!671342 () ListLongMap!22691)

(declare-fun contains!10281 (ListLongMap!22691 (_ BitVec 64)) Bool)

(assert (=> b!1561850 (= lt!671344 (contains!10281 lt!671342 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1561850 (not (contains!10281 lt!671342 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!671345 () ListLongMap!22691)

(declare-fun lt!671343 () V!59779)

(declare-fun +!5015 (ListLongMap!22691 tuple2!25244) ListLongMap!22691)

(assert (=> b!1561850 (= lt!671342 (+!5015 lt!671345 (tuple2!25245 (select (arr!50202 _keys!637) from!782) lt!671343)))))

(declare-datatypes ((Unit!51894 0))(
  ( (Unit!51895) )
))
(declare-fun lt!671346 () Unit!51894)

(declare-fun addStillNotContains!551 (ListLongMap!22691 (_ BitVec 64) V!59779 (_ BitVec 64)) Unit!51894)

(assert (=> b!1561850 (= lt!671346 (addStillNotContains!551 lt!671345 (select (arr!50202 _keys!637) from!782) lt!671343 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26259 (ValueCell!18309 V!59779) V!59779)

(declare-fun dynLambda!3904 (Int (_ BitVec 64)) V!59779)

(assert (=> b!1561850 (= lt!671343 (get!26259 (select (arr!50203 _values!487) from!782) (dynLambda!3904 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59779)

(declare-fun minValue!453 () V!59779)

(declare-fun getCurrentListMapNoExtraKeys!6721 (array!104029 array!104031 (_ BitVec 32) (_ BitVec 32) V!59779 V!59779 (_ BitVec 32) Int) ListLongMap!22691)

(assert (=> b!1561850 (= lt!671345 (getCurrentListMapNoExtraKeys!6721 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1561851 () Bool)

(declare-fun e!870385 () Bool)

(assert (=> b!1561851 (= e!870385 tp_is_empty!38679)))

(declare-fun b!1561852 () Bool)

(declare-fun e!870382 () Bool)

(declare-fun mapRes!59394 () Bool)

(assert (=> b!1561852 (= e!870382 (and e!870385 mapRes!59394))))

(declare-fun condMapEmpty!59394 () Bool)

(declare-fun mapDefault!59394 () ValueCell!18309)

(assert (=> b!1561852 (= condMapEmpty!59394 (= (arr!50203 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18309)) mapDefault!59394)))))

(declare-fun b!1561853 () Bool)

(declare-fun res!1067971 () Bool)

(assert (=> b!1561853 (=> (not res!1067971) (not e!870386))))

(declare-datatypes ((List!36621 0))(
  ( (Nil!36618) (Cons!36617 (h!38064 (_ BitVec 64)) (t!51431 List!36621)) )
))
(declare-fun arrayNoDuplicates!0 (array!104029 (_ BitVec 32) List!36621) Bool)

(assert (=> b!1561853 (= res!1067971 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36618))))

(declare-fun mapNonEmpty!59394 () Bool)

(declare-fun tp!113164 () Bool)

(assert (=> mapNonEmpty!59394 (= mapRes!59394 (and tp!113164 e!870384))))

(declare-fun mapKey!59394 () (_ BitVec 32))

(declare-fun mapValue!59394 () ValueCell!18309)

(declare-fun mapRest!59394 () (Array (_ BitVec 32) ValueCell!18309))

(assert (=> mapNonEmpty!59394 (= (arr!50203 _values!487) (store mapRest!59394 mapKey!59394 mapValue!59394))))

(declare-fun b!1561854 () Bool)

(declare-fun res!1067972 () Bool)

(assert (=> b!1561854 (=> (not res!1067972) (not e!870386))))

(assert (=> b!1561854 (= res!1067972 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50753 _keys!637)) (bvslt from!782 (size!50753 _keys!637))))))

(declare-fun mapIsEmpty!59394 () Bool)

(assert (=> mapIsEmpty!59394 mapRes!59394))

(declare-fun res!1067975 () Bool)

(assert (=> start!133628 (=> (not res!1067975) (not e!870386))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133628 (= res!1067975 (validMask!0 mask!947))))

(assert (=> start!133628 e!870386))

(assert (=> start!133628 tp!113163))

(assert (=> start!133628 tp_is_empty!38679))

(assert (=> start!133628 true))

(declare-fun array_inv!38947 (array!104029) Bool)

(assert (=> start!133628 (array_inv!38947 _keys!637)))

(declare-fun array_inv!38948 (array!104031) Bool)

(assert (=> start!133628 (and (array_inv!38948 _values!487) e!870382)))

(assert (= (and start!133628 res!1067975) b!1561849))

(assert (= (and b!1561849 res!1067974) b!1561848))

(assert (= (and b!1561848 res!1067973) b!1561853))

(assert (= (and b!1561853 res!1067971) b!1561854))

(assert (= (and b!1561854 res!1067972) b!1561846))

(assert (= (and b!1561846 res!1067970) b!1561850))

(assert (= (and b!1561852 condMapEmpty!59394) mapIsEmpty!59394))

(assert (= (and b!1561852 (not condMapEmpty!59394)) mapNonEmpty!59394))

(get-info :version)

(assert (= (and mapNonEmpty!59394 ((_ is ValueCellFull!18309) mapValue!59394)) b!1561847))

(assert (= (and b!1561852 ((_ is ValueCellFull!18309) mapDefault!59394)) b!1561851))

(assert (= start!133628 b!1561852))

(declare-fun b_lambda!24897 () Bool)

(assert (=> (not b_lambda!24897) (not b!1561850)))

(declare-fun t!51429 () Bool)

(declare-fun tb!12565 () Bool)

(assert (=> (and start!133628 (= defaultEntry!495 defaultEntry!495) t!51429) tb!12565))

(declare-fun result!26403 () Bool)

(assert (=> tb!12565 (= result!26403 tp_is_empty!38679)))

(assert (=> b!1561850 t!51429))

(declare-fun b_and!51549 () Bool)

(assert (= b_and!51547 (and (=> t!51429 result!26403) b_and!51549)))

(declare-fun m!1437603 () Bool)

(assert (=> start!133628 m!1437603))

(declare-fun m!1437605 () Bool)

(assert (=> start!133628 m!1437605))

(declare-fun m!1437607 () Bool)

(assert (=> start!133628 m!1437607))

(declare-fun m!1437609 () Bool)

(assert (=> b!1561848 m!1437609))

(declare-fun m!1437611 () Bool)

(assert (=> mapNonEmpty!59394 m!1437611))

(declare-fun m!1437613 () Bool)

(assert (=> b!1561853 m!1437613))

(declare-fun m!1437615 () Bool)

(assert (=> b!1561846 m!1437615))

(assert (=> b!1561846 m!1437615))

(declare-fun m!1437617 () Bool)

(assert (=> b!1561846 m!1437617))

(declare-fun m!1437619 () Bool)

(assert (=> b!1561850 m!1437619))

(declare-fun m!1437621 () Bool)

(assert (=> b!1561850 m!1437621))

(declare-fun m!1437623 () Bool)

(assert (=> b!1561850 m!1437623))

(declare-fun m!1437625 () Bool)

(assert (=> b!1561850 m!1437625))

(assert (=> b!1561850 m!1437619))

(declare-fun m!1437627 () Bool)

(assert (=> b!1561850 m!1437627))

(assert (=> b!1561850 m!1437615))

(declare-fun m!1437629 () Bool)

(assert (=> b!1561850 m!1437629))

(assert (=> b!1561850 m!1437615))

(assert (=> b!1561850 m!1437621))

(declare-fun m!1437631 () Bool)

(assert (=> b!1561850 m!1437631))

(declare-fun m!1437633 () Bool)

(assert (=> b!1561850 m!1437633))

(check-sat (not b!1561846) (not start!133628) (not b!1561853) (not b_lambda!24897) (not mapNonEmpty!59394) (not b!1561848) tp_is_empty!38679 b_and!51549 (not b_next!32013) (not b!1561850))
(check-sat b_and!51549 (not b_next!32013))
