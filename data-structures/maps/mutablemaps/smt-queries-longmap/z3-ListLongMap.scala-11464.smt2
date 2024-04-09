; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133616 () Bool)

(assert start!133616)

(declare-fun b_free!32001 () Bool)

(declare-fun b_next!32001 () Bool)

(assert (=> start!133616 (= b_free!32001 (not b_next!32001))))

(declare-fun tp!113128 () Bool)

(declare-fun b_and!51523 () Bool)

(assert (=> start!133616 (= tp!113128 b_and!51523)))

(declare-fun b!1561668 () Bool)

(declare-fun res!1067862 () Bool)

(declare-fun e!870292 () Bool)

(assert (=> b!1561668 (=> (not res!1067862) (not e!870292))))

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((array!104005 0))(
  ( (array!104006 (arr!50190 (Array (_ BitVec 32) (_ BitVec 64))) (size!50741 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104005)

(assert (=> b!1561668 (= res!1067862 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50741 _keys!637)) (bvslt from!782 (size!50741 _keys!637))))))

(declare-fun b!1561669 () Bool)

(declare-fun res!1067859 () Bool)

(assert (=> b!1561669 (=> (not res!1067859) (not e!870292))))

(declare-datatypes ((List!36611 0))(
  ( (Nil!36608) (Cons!36607 (h!38054 (_ BitVec 64)) (t!51409 List!36611)) )
))
(declare-fun arrayNoDuplicates!0 (array!104005 (_ BitVec 32) List!36611) Bool)

(assert (=> b!1561669 (= res!1067859 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36608))))

(declare-fun mapNonEmpty!59376 () Bool)

(declare-fun mapRes!59376 () Bool)

(declare-fun tp!113127 () Bool)

(declare-fun e!870291 () Bool)

(assert (=> mapNonEmpty!59376 (= mapRes!59376 (and tp!113127 e!870291))))

(declare-fun mapKey!59376 () (_ BitVec 32))

(declare-datatypes ((V!59763 0))(
  ( (V!59764 (val!19417 Int)) )
))
(declare-datatypes ((ValueCell!18303 0))(
  ( (ValueCellFull!18303 (v!22166 V!59763)) (EmptyCell!18303) )
))
(declare-fun mapRest!59376 () (Array (_ BitVec 32) ValueCell!18303))

(declare-datatypes ((array!104007 0))(
  ( (array!104008 (arr!50191 (Array (_ BitVec 32) ValueCell!18303)) (size!50742 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104007)

(declare-fun mapValue!59376 () ValueCell!18303)

(assert (=> mapNonEmpty!59376 (= (arr!50191 _values!487) (store mapRest!59376 mapKey!59376 mapValue!59376))))

(declare-fun b!1561671 () Bool)

(declare-fun res!1067863 () Bool)

(assert (=> b!1561671 (=> (not res!1067863) (not e!870292))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1561671 (= res!1067863 (validKeyInArray!0 (select (arr!50190 _keys!637) from!782)))))

(declare-fun b!1561672 () Bool)

(declare-fun e!870289 () Bool)

(declare-fun tp_is_empty!38667 () Bool)

(assert (=> b!1561672 (= e!870289 tp_is_empty!38667)))

(declare-fun b!1561673 () Bool)

(declare-fun res!1067861 () Bool)

(assert (=> b!1561673 (=> (not res!1067861) (not e!870292))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104005 (_ BitVec 32)) Bool)

(assert (=> b!1561673 (= res!1067861 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1561674 () Bool)

(declare-fun res!1067858 () Bool)

(assert (=> b!1561674 (=> (not res!1067858) (not e!870292))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1561674 (= res!1067858 (and (= (size!50742 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50741 _keys!637) (size!50742 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1561670 () Bool)

(declare-fun e!870290 () Bool)

(assert (=> b!1561670 (= e!870290 (and e!870289 mapRes!59376))))

(declare-fun condMapEmpty!59376 () Bool)

(declare-fun mapDefault!59376 () ValueCell!18303)

(assert (=> b!1561670 (= condMapEmpty!59376 (= (arr!50191 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18303)) mapDefault!59376)))))

(declare-fun res!1067860 () Bool)

(assert (=> start!133616 (=> (not res!1067860) (not e!870292))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133616 (= res!1067860 (validMask!0 mask!947))))

(assert (=> start!133616 e!870292))

(assert (=> start!133616 tp!113128))

(assert (=> start!133616 tp_is_empty!38667))

(assert (=> start!133616 true))

(declare-fun array_inv!38939 (array!104005) Bool)

(assert (=> start!133616 (array_inv!38939 _keys!637)))

(declare-fun array_inv!38940 (array!104007) Bool)

(assert (=> start!133616 (and (array_inv!38940 _values!487) e!870290)))

(declare-fun mapIsEmpty!59376 () Bool)

(assert (=> mapIsEmpty!59376 mapRes!59376))

(declare-fun b!1561675 () Bool)

(assert (=> b!1561675 (= e!870291 tp_is_empty!38667)))

(declare-fun b!1561676 () Bool)

(declare-fun e!870288 () Bool)

(assert (=> b!1561676 (= e!870292 (not e!870288))))

(declare-fun res!1067864 () Bool)

(assert (=> b!1561676 (=> res!1067864 e!870288)))

(declare-datatypes ((tuple2!25234 0))(
  ( (tuple2!25235 (_1!12627 (_ BitVec 64)) (_2!12627 V!59763)) )
))
(declare-datatypes ((List!36612 0))(
  ( (Nil!36609) (Cons!36608 (h!38055 tuple2!25234) (t!51410 List!36612)) )
))
(declare-datatypes ((ListLongMap!22681 0))(
  ( (ListLongMap!22682 (toList!11356 List!36612)) )
))
(declare-fun lt!671252 () ListLongMap!22681)

(declare-fun contains!10276 (ListLongMap!22681 (_ BitVec 64)) Bool)

(assert (=> b!1561676 (= res!1067864 (contains!10276 lt!671252 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1561676 (not (contains!10276 lt!671252 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!671254 () ListLongMap!22681)

(declare-fun lt!671256 () V!59763)

(declare-fun +!5011 (ListLongMap!22681 tuple2!25234) ListLongMap!22681)

(assert (=> b!1561676 (= lt!671252 (+!5011 lt!671254 (tuple2!25235 (select (arr!50190 _keys!637) from!782) lt!671256)))))

(declare-datatypes ((Unit!51886 0))(
  ( (Unit!51887) )
))
(declare-fun lt!671253 () Unit!51886)

(declare-fun addStillNotContains!547 (ListLongMap!22681 (_ BitVec 64) V!59763 (_ BitVec 64)) Unit!51886)

(assert (=> b!1561676 (= lt!671253 (addStillNotContains!547 lt!671254 (select (arr!50190 _keys!637) from!782) lt!671256 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26251 (ValueCell!18303 V!59763) V!59763)

(declare-fun dynLambda!3900 (Int (_ BitVec 64)) V!59763)

(assert (=> b!1561676 (= lt!671256 (get!26251 (select (arr!50191 _values!487) from!782) (dynLambda!3900 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59763)

(declare-fun minValue!453 () V!59763)

(declare-fun getCurrentListMapNoExtraKeys!6717 (array!104005 array!104007 (_ BitVec 32) (_ BitVec 32) V!59763 V!59763 (_ BitVec 32) Int) ListLongMap!22681)

(assert (=> b!1561676 (= lt!671254 (getCurrentListMapNoExtraKeys!6717 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1561677 () Bool)

(assert (=> b!1561677 (= e!870288 true)))

(declare-fun lt!671255 () Bool)

(assert (=> b!1561677 (= lt!671255 (contains!10276 lt!671252 (select (arr!50190 _keys!637) from!782)))))

(assert (= (and start!133616 res!1067860) b!1561674))

(assert (= (and b!1561674 res!1067858) b!1561673))

(assert (= (and b!1561673 res!1067861) b!1561669))

(assert (= (and b!1561669 res!1067859) b!1561668))

(assert (= (and b!1561668 res!1067862) b!1561671))

(assert (= (and b!1561671 res!1067863) b!1561676))

(assert (= (and b!1561676 (not res!1067864)) b!1561677))

(assert (= (and b!1561670 condMapEmpty!59376) mapIsEmpty!59376))

(assert (= (and b!1561670 (not condMapEmpty!59376)) mapNonEmpty!59376))

(get-info :version)

(assert (= (and mapNonEmpty!59376 ((_ is ValueCellFull!18303) mapValue!59376)) b!1561675))

(assert (= (and b!1561670 ((_ is ValueCellFull!18303) mapDefault!59376)) b!1561672))

(assert (= start!133616 b!1561670))

(declare-fun b_lambda!24885 () Bool)

(assert (=> (not b_lambda!24885) (not b!1561676)))

(declare-fun t!51408 () Bool)

(declare-fun tb!12553 () Bool)

(assert (=> (and start!133616 (= defaultEntry!495 defaultEntry!495) t!51408) tb!12553))

(declare-fun result!26379 () Bool)

(assert (=> tb!12553 (= result!26379 tp_is_empty!38667)))

(assert (=> b!1561676 t!51408))

(declare-fun b_and!51525 () Bool)

(assert (= b_and!51523 (and (=> t!51408 result!26379) b_and!51525)))

(declare-fun m!1437407 () Bool)

(assert (=> b!1561669 m!1437407))

(declare-fun m!1437409 () Bool)

(assert (=> start!133616 m!1437409))

(declare-fun m!1437411 () Bool)

(assert (=> start!133616 m!1437411))

(declare-fun m!1437413 () Bool)

(assert (=> start!133616 m!1437413))

(declare-fun m!1437415 () Bool)

(assert (=> b!1561676 m!1437415))

(declare-fun m!1437417 () Bool)

(assert (=> b!1561676 m!1437417))

(declare-fun m!1437419 () Bool)

(assert (=> b!1561676 m!1437419))

(declare-fun m!1437421 () Bool)

(assert (=> b!1561676 m!1437421))

(assert (=> b!1561676 m!1437417))

(declare-fun m!1437423 () Bool)

(assert (=> b!1561676 m!1437423))

(declare-fun m!1437425 () Bool)

(assert (=> b!1561676 m!1437425))

(declare-fun m!1437427 () Bool)

(assert (=> b!1561676 m!1437427))

(declare-fun m!1437429 () Bool)

(assert (=> b!1561676 m!1437429))

(assert (=> b!1561676 m!1437421))

(assert (=> b!1561676 m!1437425))

(declare-fun m!1437431 () Bool)

(assert (=> b!1561676 m!1437431))

(declare-fun m!1437433 () Bool)

(assert (=> b!1561673 m!1437433))

(assert (=> b!1561677 m!1437417))

(assert (=> b!1561677 m!1437417))

(declare-fun m!1437435 () Bool)

(assert (=> b!1561677 m!1437435))

(assert (=> b!1561671 m!1437417))

(assert (=> b!1561671 m!1437417))

(declare-fun m!1437437 () Bool)

(assert (=> b!1561671 m!1437437))

(declare-fun m!1437439 () Bool)

(assert (=> mapNonEmpty!59376 m!1437439))

(check-sat (not b!1561677) (not b!1561676) tp_is_empty!38667 (not mapNonEmpty!59376) (not b_next!32001) (not start!133616) (not b!1561673) (not b_lambda!24885) (not b!1561671) b_and!51525 (not b!1561669))
(check-sat b_and!51525 (not b_next!32001))
