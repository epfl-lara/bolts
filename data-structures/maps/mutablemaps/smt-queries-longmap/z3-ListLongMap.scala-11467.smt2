; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133634 () Bool)

(assert start!133634)

(declare-fun b_free!32019 () Bool)

(declare-fun b_next!32019 () Bool)

(assert (=> start!133634 (= b_free!32019 (not b_next!32019))))

(declare-fun tp!113182 () Bool)

(declare-fun b_and!51559 () Bool)

(assert (=> start!133634 (= tp!113182 b_and!51559)))

(declare-fun b!1561933 () Bool)

(declare-fun e!870427 () Bool)

(declare-fun tp_is_empty!38685 () Bool)

(assert (=> b!1561933 (= e!870427 tp_is_empty!38685)))

(declare-fun b!1561934 () Bool)

(declare-fun e!870430 () Bool)

(declare-fun e!870431 () Bool)

(declare-fun mapRes!59403 () Bool)

(assert (=> b!1561934 (= e!870430 (and e!870431 mapRes!59403))))

(declare-fun condMapEmpty!59403 () Bool)

(declare-datatypes ((V!59787 0))(
  ( (V!59788 (val!19426 Int)) )
))
(declare-datatypes ((ValueCell!18312 0))(
  ( (ValueCellFull!18312 (v!22175 V!59787)) (EmptyCell!18312) )
))
(declare-datatypes ((array!104039 0))(
  ( (array!104040 (arr!50207 (Array (_ BitVec 32) ValueCell!18312)) (size!50758 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104039)

(declare-fun mapDefault!59403 () ValueCell!18312)

(assert (=> b!1561934 (= condMapEmpty!59403 (= (arr!50207 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18312)) mapDefault!59403)))))

(declare-fun b!1561935 () Bool)

(declare-fun res!1068029 () Bool)

(declare-fun e!870429 () Bool)

(assert (=> b!1561935 (=> (not res!1068029) (not e!870429))))

(declare-datatypes ((array!104041 0))(
  ( (array!104042 (arr!50208 (Array (_ BitVec 32) (_ BitVec 64))) (size!50759 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104041)

(declare-datatypes ((List!36624 0))(
  ( (Nil!36621) (Cons!36620 (h!38067 (_ BitVec 64)) (t!51440 List!36624)) )
))
(declare-fun arrayNoDuplicates!0 (array!104041 (_ BitVec 32) List!36624) Bool)

(assert (=> b!1561935 (= res!1068029 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36621))))

(declare-fun b!1561936 () Bool)

(assert (=> b!1561936 (= e!870431 tp_is_empty!38685)))

(declare-fun b!1561937 () Bool)

(declare-fun res!1068028 () Bool)

(assert (=> b!1561937 (=> (not res!1068028) (not e!870429))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1561937 (= res!1068028 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50759 _keys!637)) (bvslt from!782 (size!50759 _keys!637))))))

(declare-fun mapNonEmpty!59403 () Bool)

(declare-fun tp!113181 () Bool)

(assert (=> mapNonEmpty!59403 (= mapRes!59403 (and tp!113181 e!870427))))

(declare-fun mapValue!59403 () ValueCell!18312)

(declare-fun mapKey!59403 () (_ BitVec 32))

(declare-fun mapRest!59403 () (Array (_ BitVec 32) ValueCell!18312))

(assert (=> mapNonEmpty!59403 (= (arr!50207 _values!487) (store mapRest!59403 mapKey!59403 mapValue!59403))))

(declare-fun b!1561939 () Bool)

(assert (=> b!1561939 (= e!870429 (not true))))

(declare-fun lt!671388 () Bool)

(declare-datatypes ((tuple2!25248 0))(
  ( (tuple2!25249 (_1!12634 (_ BitVec 64)) (_2!12634 V!59787)) )
))
(declare-datatypes ((List!36625 0))(
  ( (Nil!36622) (Cons!36621 (h!38068 tuple2!25248) (t!51441 List!36625)) )
))
(declare-datatypes ((ListLongMap!22695 0))(
  ( (ListLongMap!22696 (toList!11363 List!36625)) )
))
(declare-fun lt!671390 () ListLongMap!22695)

(declare-fun contains!10283 (ListLongMap!22695 (_ BitVec 64)) Bool)

(assert (=> b!1561939 (= lt!671388 (contains!10283 lt!671390 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1561939 (not (contains!10283 lt!671390 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!671391 () V!59787)

(declare-fun lt!671387 () ListLongMap!22695)

(declare-fun +!5017 (ListLongMap!22695 tuple2!25248) ListLongMap!22695)

(assert (=> b!1561939 (= lt!671390 (+!5017 lt!671387 (tuple2!25249 (select (arr!50208 _keys!637) from!782) lt!671391)))))

(declare-datatypes ((Unit!51898 0))(
  ( (Unit!51899) )
))
(declare-fun lt!671389 () Unit!51898)

(declare-fun addStillNotContains!553 (ListLongMap!22695 (_ BitVec 64) V!59787 (_ BitVec 64)) Unit!51898)

(assert (=> b!1561939 (= lt!671389 (addStillNotContains!553 lt!671387 (select (arr!50208 _keys!637) from!782) lt!671391 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26263 (ValueCell!18312 V!59787) V!59787)

(declare-fun dynLambda!3906 (Int (_ BitVec 64)) V!59787)

(assert (=> b!1561939 (= lt!671391 (get!26263 (select (arr!50207 _values!487) from!782) (dynLambda!3906 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59787)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59787)

(declare-fun getCurrentListMapNoExtraKeys!6723 (array!104041 array!104039 (_ BitVec 32) (_ BitVec 32) V!59787 V!59787 (_ BitVec 32) Int) ListLongMap!22695)

(assert (=> b!1561939 (= lt!671387 (getCurrentListMapNoExtraKeys!6723 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1561940 () Bool)

(declare-fun res!1068026 () Bool)

(assert (=> b!1561940 (=> (not res!1068026) (not e!870429))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1561940 (= res!1068026 (validKeyInArray!0 (select (arr!50208 _keys!637) from!782)))))

(declare-fun res!1068024 () Bool)

(assert (=> start!133634 (=> (not res!1068024) (not e!870429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133634 (= res!1068024 (validMask!0 mask!947))))

(assert (=> start!133634 e!870429))

(assert (=> start!133634 tp!113182))

(assert (=> start!133634 tp_is_empty!38685))

(assert (=> start!133634 true))

(declare-fun array_inv!38951 (array!104041) Bool)

(assert (=> start!133634 (array_inv!38951 _keys!637)))

(declare-fun array_inv!38952 (array!104039) Bool)

(assert (=> start!133634 (and (array_inv!38952 _values!487) e!870430)))

(declare-fun b!1561938 () Bool)

(declare-fun res!1068027 () Bool)

(assert (=> b!1561938 (=> (not res!1068027) (not e!870429))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104041 (_ BitVec 32)) Bool)

(assert (=> b!1561938 (= res!1068027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1561941 () Bool)

(declare-fun res!1068025 () Bool)

(assert (=> b!1561941 (=> (not res!1068025) (not e!870429))))

(assert (=> b!1561941 (= res!1068025 (and (= (size!50758 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50759 _keys!637) (size!50758 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!59403 () Bool)

(assert (=> mapIsEmpty!59403 mapRes!59403))

(assert (= (and start!133634 res!1068024) b!1561941))

(assert (= (and b!1561941 res!1068025) b!1561938))

(assert (= (and b!1561938 res!1068027) b!1561935))

(assert (= (and b!1561935 res!1068029) b!1561937))

(assert (= (and b!1561937 res!1068028) b!1561940))

(assert (= (and b!1561940 res!1068026) b!1561939))

(assert (= (and b!1561934 condMapEmpty!59403) mapIsEmpty!59403))

(assert (= (and b!1561934 (not condMapEmpty!59403)) mapNonEmpty!59403))

(get-info :version)

(assert (= (and mapNonEmpty!59403 ((_ is ValueCellFull!18312) mapValue!59403)) b!1561933))

(assert (= (and b!1561934 ((_ is ValueCellFull!18312) mapDefault!59403)) b!1561936))

(assert (= start!133634 b!1561934))

(declare-fun b_lambda!24903 () Bool)

(assert (=> (not b_lambda!24903) (not b!1561939)))

(declare-fun t!51439 () Bool)

(declare-fun tb!12571 () Bool)

(assert (=> (and start!133634 (= defaultEntry!495 defaultEntry!495) t!51439) tb!12571))

(declare-fun result!26415 () Bool)

(assert (=> tb!12571 (= result!26415 tp_is_empty!38685)))

(assert (=> b!1561939 t!51439))

(declare-fun b_and!51561 () Bool)

(assert (= b_and!51559 (and (=> t!51439 result!26415) b_and!51561)))

(declare-fun m!1437699 () Bool)

(assert (=> b!1561938 m!1437699))

(declare-fun m!1437701 () Bool)

(assert (=> start!133634 m!1437701))

(declare-fun m!1437703 () Bool)

(assert (=> start!133634 m!1437703))

(declare-fun m!1437705 () Bool)

(assert (=> start!133634 m!1437705))

(declare-fun m!1437707 () Bool)

(assert (=> b!1561935 m!1437707))

(declare-fun m!1437709 () Bool)

(assert (=> b!1561940 m!1437709))

(assert (=> b!1561940 m!1437709))

(declare-fun m!1437711 () Bool)

(assert (=> b!1561940 m!1437711))

(declare-fun m!1437713 () Bool)

(assert (=> mapNonEmpty!59403 m!1437713))

(declare-fun m!1437715 () Bool)

(assert (=> b!1561939 m!1437715))

(declare-fun m!1437717 () Bool)

(assert (=> b!1561939 m!1437717))

(declare-fun m!1437719 () Bool)

(assert (=> b!1561939 m!1437719))

(declare-fun m!1437721 () Bool)

(assert (=> b!1561939 m!1437721))

(declare-fun m!1437723 () Bool)

(assert (=> b!1561939 m!1437723))

(assert (=> b!1561939 m!1437715))

(assert (=> b!1561939 m!1437709))

(assert (=> b!1561939 m!1437717))

(declare-fun m!1437725 () Bool)

(assert (=> b!1561939 m!1437725))

(assert (=> b!1561939 m!1437709))

(declare-fun m!1437727 () Bool)

(assert (=> b!1561939 m!1437727))

(declare-fun m!1437729 () Bool)

(assert (=> b!1561939 m!1437729))

(check-sat tp_is_empty!38685 (not mapNonEmpty!59403) (not b!1561940) (not b_lambda!24903) (not b!1561939) (not start!133634) b_and!51561 (not b!1561935) (not b!1561938) (not b_next!32019))
(check-sat b_and!51561 (not b_next!32019))
