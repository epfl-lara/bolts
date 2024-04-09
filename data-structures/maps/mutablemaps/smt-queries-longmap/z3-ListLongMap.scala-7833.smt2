; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97780 () Bool)

(assert start!97780)

(declare-fun b_free!23445 () Bool)

(declare-fun b_next!23445 () Bool)

(assert (=> start!97780 (= b_free!23445 (not b_next!23445))))

(declare-fun tp!83039 () Bool)

(declare-fun b_and!37741 () Bool)

(assert (=> start!97780 (= tp!83039 b_and!37741)))

(declare-fun b!1117734 () Bool)

(declare-fun e!636739 () Bool)

(declare-fun e!636740 () Bool)

(assert (=> b!1117734 (= e!636739 (not e!636740))))

(declare-fun res!746524 () Bool)

(assert (=> b!1117734 (=> res!746524 e!636740)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1117734 (= res!746524 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!72782 0))(
  ( (array!72783 (arr!35040 (Array (_ BitVec 32) (_ BitVec 64))) (size!35577 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72782)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72782 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1117734 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36593 0))(
  ( (Unit!36594) )
))
(declare-fun lt!497327 () Unit!36593)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72782 (_ BitVec 64) (_ BitVec 32)) Unit!36593)

(assert (=> b!1117734 (= lt!497327 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1117735 () Bool)

(declare-fun e!636734 () Bool)

(declare-fun e!636737 () Bool)

(declare-fun mapRes!43780 () Bool)

(assert (=> b!1117735 (= e!636734 (and e!636737 mapRes!43780))))

(declare-fun condMapEmpty!43780 () Bool)

(declare-datatypes ((V!42427 0))(
  ( (V!42428 (val!14044 Int)) )
))
(declare-datatypes ((ValueCell!13278 0))(
  ( (ValueCellFull!13278 (v!16678 V!42427)) (EmptyCell!13278) )
))
(declare-datatypes ((array!72784 0))(
  ( (array!72785 (arr!35041 (Array (_ BitVec 32) ValueCell!13278)) (size!35578 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72784)

(declare-fun mapDefault!43780 () ValueCell!13278)

(assert (=> b!1117735 (= condMapEmpty!43780 (= (arr!35041 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13278)) mapDefault!43780)))))

(declare-fun b!1117736 () Bool)

(declare-fun e!636736 () Bool)

(assert (=> b!1117736 (= e!636736 e!636739)))

(declare-fun res!746521 () Bool)

(assert (=> b!1117736 (=> (not res!746521) (not e!636739))))

(declare-fun lt!497328 () array!72782)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72782 (_ BitVec 32)) Bool)

(assert (=> b!1117736 (= res!746521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497328 mask!1564))))

(assert (=> b!1117736 (= lt!497328 (array!72783 (store (arr!35040 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35577 _keys!1208)))))

(declare-fun b!1117737 () Bool)

(declare-fun res!746526 () Bool)

(assert (=> b!1117737 (=> (not res!746526) (not e!636736))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1117737 (= res!746526 (and (= (size!35578 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35577 _keys!1208) (size!35578 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1117738 () Bool)

(declare-fun res!746525 () Bool)

(assert (=> b!1117738 (=> (not res!746525) (not e!636736))))

(assert (=> b!1117738 (= res!746525 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1117739 () Bool)

(declare-fun res!746518 () Bool)

(assert (=> b!1117739 (=> (not res!746518) (not e!636739))))

(declare-datatypes ((List!24501 0))(
  ( (Nil!24498) (Cons!24497 (h!25706 (_ BitVec 64)) (t!34989 List!24501)) )
))
(declare-fun arrayNoDuplicates!0 (array!72782 (_ BitVec 32) List!24501) Bool)

(assert (=> b!1117739 (= res!746518 (arrayNoDuplicates!0 lt!497328 #b00000000000000000000000000000000 Nil!24498))))

(declare-fun b!1117740 () Bool)

(assert (=> b!1117740 (= e!636740 true)))

(declare-fun zeroValue!944 () V!42427)

(declare-datatypes ((tuple2!17666 0))(
  ( (tuple2!17667 (_1!8843 (_ BitVec 64)) (_2!8843 V!42427)) )
))
(declare-datatypes ((List!24502 0))(
  ( (Nil!24499) (Cons!24498 (h!25707 tuple2!17666) (t!34990 List!24502)) )
))
(declare-datatypes ((ListLongMap!15647 0))(
  ( (ListLongMap!15648 (toList!7839 List!24502)) )
))
(declare-fun lt!497326 () ListLongMap!15647)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42427)

(declare-fun getCurrentListMapNoExtraKeys!4300 (array!72782 array!72784 (_ BitVec 32) (_ BitVec 32) V!42427 V!42427 (_ BitVec 32) Int) ListLongMap!15647)

(assert (=> b!1117740 (= lt!497326 (getCurrentListMapNoExtraKeys!4300 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1117741 () Bool)

(declare-fun res!746519 () Bool)

(assert (=> b!1117741 (=> (not res!746519) (not e!636736))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1117741 (= res!746519 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!43780 () Bool)

(assert (=> mapIsEmpty!43780 mapRes!43780))

(declare-fun b!1117743 () Bool)

(declare-fun res!746523 () Bool)

(assert (=> b!1117743 (=> (not res!746523) (not e!636736))))

(assert (=> b!1117743 (= res!746523 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24498))))

(declare-fun b!1117744 () Bool)

(declare-fun e!636735 () Bool)

(declare-fun tp_is_empty!27975 () Bool)

(assert (=> b!1117744 (= e!636735 tp_is_empty!27975)))

(declare-fun b!1117745 () Bool)

(declare-fun res!746520 () Bool)

(assert (=> b!1117745 (=> (not res!746520) (not e!636736))))

(assert (=> b!1117745 (= res!746520 (= (select (arr!35040 _keys!1208) i!673) k0!934))))

(declare-fun b!1117746 () Bool)

(declare-fun res!746516 () Bool)

(assert (=> b!1117746 (=> (not res!746516) (not e!636736))))

(assert (=> b!1117746 (= res!746516 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35577 _keys!1208))))))

(declare-fun b!1117747 () Bool)

(declare-fun res!746517 () Bool)

(assert (=> b!1117747 (=> (not res!746517) (not e!636736))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1117747 (= res!746517 (validKeyInArray!0 k0!934))))

(declare-fun mapNonEmpty!43780 () Bool)

(declare-fun tp!83040 () Bool)

(assert (=> mapNonEmpty!43780 (= mapRes!43780 (and tp!83040 e!636735))))

(declare-fun mapRest!43780 () (Array (_ BitVec 32) ValueCell!13278))

(declare-fun mapValue!43780 () ValueCell!13278)

(declare-fun mapKey!43780 () (_ BitVec 32))

(assert (=> mapNonEmpty!43780 (= (arr!35041 _values!996) (store mapRest!43780 mapKey!43780 mapValue!43780))))

(declare-fun b!1117742 () Bool)

(assert (=> b!1117742 (= e!636737 tp_is_empty!27975)))

(declare-fun res!746522 () Bool)

(assert (=> start!97780 (=> (not res!746522) (not e!636736))))

(assert (=> start!97780 (= res!746522 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35577 _keys!1208))))))

(assert (=> start!97780 e!636736))

(assert (=> start!97780 tp_is_empty!27975))

(declare-fun array_inv!26788 (array!72782) Bool)

(assert (=> start!97780 (array_inv!26788 _keys!1208)))

(assert (=> start!97780 true))

(assert (=> start!97780 tp!83039))

(declare-fun array_inv!26789 (array!72784) Bool)

(assert (=> start!97780 (and (array_inv!26789 _values!996) e!636734)))

(assert (= (and start!97780 res!746522) b!1117741))

(assert (= (and b!1117741 res!746519) b!1117737))

(assert (= (and b!1117737 res!746526) b!1117738))

(assert (= (and b!1117738 res!746525) b!1117743))

(assert (= (and b!1117743 res!746523) b!1117746))

(assert (= (and b!1117746 res!746516) b!1117747))

(assert (= (and b!1117747 res!746517) b!1117745))

(assert (= (and b!1117745 res!746520) b!1117736))

(assert (= (and b!1117736 res!746521) b!1117739))

(assert (= (and b!1117739 res!746518) b!1117734))

(assert (= (and b!1117734 (not res!746524)) b!1117740))

(assert (= (and b!1117735 condMapEmpty!43780) mapIsEmpty!43780))

(assert (= (and b!1117735 (not condMapEmpty!43780)) mapNonEmpty!43780))

(get-info :version)

(assert (= (and mapNonEmpty!43780 ((_ is ValueCellFull!13278) mapValue!43780)) b!1117744))

(assert (= (and b!1117735 ((_ is ValueCellFull!13278) mapDefault!43780)) b!1117742))

(assert (= start!97780 b!1117735))

(declare-fun m!1033613 () Bool)

(assert (=> start!97780 m!1033613))

(declare-fun m!1033615 () Bool)

(assert (=> start!97780 m!1033615))

(declare-fun m!1033617 () Bool)

(assert (=> b!1117745 m!1033617))

(declare-fun m!1033619 () Bool)

(assert (=> b!1117739 m!1033619))

(declare-fun m!1033621 () Bool)

(assert (=> b!1117738 m!1033621))

(declare-fun m!1033623 () Bool)

(assert (=> b!1117734 m!1033623))

(declare-fun m!1033625 () Bool)

(assert (=> b!1117734 m!1033625))

(declare-fun m!1033627 () Bool)

(assert (=> b!1117736 m!1033627))

(declare-fun m!1033629 () Bool)

(assert (=> b!1117736 m!1033629))

(declare-fun m!1033631 () Bool)

(assert (=> mapNonEmpty!43780 m!1033631))

(declare-fun m!1033633 () Bool)

(assert (=> b!1117740 m!1033633))

(declare-fun m!1033635 () Bool)

(assert (=> b!1117743 m!1033635))

(declare-fun m!1033637 () Bool)

(assert (=> b!1117741 m!1033637))

(declare-fun m!1033639 () Bool)

(assert (=> b!1117747 m!1033639))

(check-sat (not b_next!23445) (not b!1117734) b_and!37741 tp_is_empty!27975 (not b!1117747) (not b!1117740) (not b!1117741) (not start!97780) (not mapNonEmpty!43780) (not b!1117738) (not b!1117743) (not b!1117736) (not b!1117739))
(check-sat b_and!37741 (not b_next!23445))
