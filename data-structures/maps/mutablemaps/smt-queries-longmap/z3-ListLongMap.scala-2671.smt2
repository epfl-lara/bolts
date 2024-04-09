; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39854 () Bool)

(assert start!39854)

(declare-fun b_free!10113 () Bool)

(declare-fun b_next!10113 () Bool)

(assert (=> start!39854 (= b_free!10113 (not b_next!10113))))

(declare-fun tp!35867 () Bool)

(declare-fun b_and!17903 () Bool)

(assert (=> start!39854 (= tp!35867 b_and!17903)))

(declare-fun b!430509 () Bool)

(declare-fun res!253079 () Bool)

(declare-fun e!254853 () Bool)

(assert (=> b!430509 (=> (not res!253079) (not e!254853))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!430509 (= res!253079 (bvsle from!863 i!563))))

(declare-fun b!430510 () Bool)

(declare-fun res!253071 () Bool)

(declare-fun e!254854 () Bool)

(assert (=> b!430510 (=> (not res!253071) (not e!254854))))

(declare-datatypes ((array!26343 0))(
  ( (array!26344 (arr!12618 (Array (_ BitVec 32) (_ BitVec 64))) (size!12970 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26343)

(assert (=> b!430510 (= res!253071 (or (= (select (arr!12618 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12618 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!18519 () Bool)

(declare-fun mapRes!18519 () Bool)

(assert (=> mapIsEmpty!18519 mapRes!18519))

(declare-fun b!430511 () Bool)

(declare-fun e!254852 () Bool)

(assert (=> b!430511 (= e!254853 e!254852)))

(declare-fun res!253078 () Bool)

(assert (=> b!430511 (=> (not res!253078) (not e!254852))))

(assert (=> b!430511 (= res!253078 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16125 0))(
  ( (V!16126 (val!5677 Int)) )
))
(declare-fun minValue!515 () V!16125)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16125)

(declare-datatypes ((ValueCell!5289 0))(
  ( (ValueCellFull!5289 (v!7920 V!16125)) (EmptyCell!5289) )
))
(declare-datatypes ((array!26345 0))(
  ( (array!26346 (arr!12619 (Array (_ BitVec 32) ValueCell!5289)) (size!12971 (_ BitVec 32))) )
))
(declare-fun lt!197022 () array!26345)

(declare-fun lt!197016 () array!26343)

(declare-datatypes ((tuple2!7412 0))(
  ( (tuple2!7413 (_1!3716 (_ BitVec 64)) (_2!3716 V!16125)) )
))
(declare-datatypes ((List!7466 0))(
  ( (Nil!7463) (Cons!7462 (h!8318 tuple2!7412) (t!13036 List!7466)) )
))
(declare-datatypes ((ListLongMap!6339 0))(
  ( (ListLongMap!6340 (toList!3185 List!7466)) )
))
(declare-fun lt!197013 () ListLongMap!6339)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1381 (array!26343 array!26345 (_ BitVec 32) (_ BitVec 32) V!16125 V!16125 (_ BitVec 32) Int) ListLongMap!6339)

(assert (=> b!430511 (= lt!197013 (getCurrentListMapNoExtraKeys!1381 lt!197016 lt!197022 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26345)

(declare-fun v!412 () V!16125)

(assert (=> b!430511 (= lt!197022 (array!26346 (store (arr!12619 _values!549) i!563 (ValueCellFull!5289 v!412)) (size!12971 _values!549)))))

(declare-fun lt!197020 () ListLongMap!6339)

(assert (=> b!430511 (= lt!197020 (getCurrentListMapNoExtraKeys!1381 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!430512 () Bool)

(declare-fun res!253073 () Bool)

(assert (=> b!430512 (=> (not res!253073) (not e!254854))))

(assert (=> b!430512 (= res!253073 (and (= (size!12971 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12970 _keys!709) (size!12971 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!253074 () Bool)

(assert (=> start!39854 (=> (not res!253074) (not e!254854))))

(assert (=> start!39854 (= res!253074 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12970 _keys!709))))))

(assert (=> start!39854 e!254854))

(declare-fun tp_is_empty!11265 () Bool)

(assert (=> start!39854 tp_is_empty!11265))

(assert (=> start!39854 tp!35867))

(assert (=> start!39854 true))

(declare-fun e!254846 () Bool)

(declare-fun array_inv!9178 (array!26345) Bool)

(assert (=> start!39854 (and (array_inv!9178 _values!549) e!254846)))

(declare-fun array_inv!9179 (array!26343) Bool)

(assert (=> start!39854 (array_inv!9179 _keys!709)))

(declare-fun b!430513 () Bool)

(declare-fun res!253069 () Bool)

(assert (=> b!430513 (=> (not res!253069) (not e!254854))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!430513 (= res!253069 (validKeyInArray!0 k0!794))))

(declare-fun b!430514 () Bool)

(declare-fun res!253080 () Bool)

(assert (=> b!430514 (=> (not res!253080) (not e!254854))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!430514 (= res!253080 (validMask!0 mask!1025))))

(declare-fun b!430515 () Bool)

(declare-fun e!254849 () Bool)

(assert (=> b!430515 (= e!254852 (not e!254849))))

(declare-fun res!253067 () Bool)

(assert (=> b!430515 (=> res!253067 e!254849)))

(assert (=> b!430515 (= res!253067 (not (validKeyInArray!0 (select (arr!12618 _keys!709) from!863))))))

(declare-fun lt!197009 () ListLongMap!6339)

(declare-fun lt!197008 () ListLongMap!6339)

(assert (=> b!430515 (= lt!197009 lt!197008)))

(declare-fun lt!197012 () ListLongMap!6339)

(declare-fun lt!197019 () tuple2!7412)

(declare-fun +!1333 (ListLongMap!6339 tuple2!7412) ListLongMap!6339)

(assert (=> b!430515 (= lt!197008 (+!1333 lt!197012 lt!197019))))

(assert (=> b!430515 (= lt!197009 (getCurrentListMapNoExtraKeys!1381 lt!197016 lt!197022 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!430515 (= lt!197019 (tuple2!7413 k0!794 v!412))))

(assert (=> b!430515 (= lt!197012 (getCurrentListMapNoExtraKeys!1381 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12640 0))(
  ( (Unit!12641) )
))
(declare-fun lt!197018 () Unit!12640)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!528 (array!26343 array!26345 (_ BitVec 32) (_ BitVec 32) V!16125 V!16125 (_ BitVec 32) (_ BitVec 64) V!16125 (_ BitVec 32) Int) Unit!12640)

(assert (=> b!430515 (= lt!197018 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!528 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!430516 () Bool)

(declare-fun e!254848 () Bool)

(assert (=> b!430516 (= e!254848 tp_is_empty!11265)))

(declare-fun b!430517 () Bool)

(assert (=> b!430517 (= e!254854 e!254853)))

(declare-fun res!253076 () Bool)

(assert (=> b!430517 (=> (not res!253076) (not e!254853))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26343 (_ BitVec 32)) Bool)

(assert (=> b!430517 (= res!253076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!197016 mask!1025))))

(assert (=> b!430517 (= lt!197016 (array!26344 (store (arr!12618 _keys!709) i!563 k0!794) (size!12970 _keys!709)))))

(declare-fun b!430518 () Bool)

(declare-fun res!253070 () Bool)

(assert (=> b!430518 (=> (not res!253070) (not e!254854))))

(assert (=> b!430518 (= res!253070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!430519 () Bool)

(declare-fun res!253072 () Bool)

(assert (=> b!430519 (=> (not res!253072) (not e!254854))))

(assert (=> b!430519 (= res!253072 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12970 _keys!709))))))

(declare-fun b!430520 () Bool)

(declare-fun e!254847 () Unit!12640)

(declare-fun Unit!12642 () Unit!12640)

(assert (=> b!430520 (= e!254847 Unit!12642)))

(declare-fun lt!197011 () Unit!12640)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26343 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12640)

(assert (=> b!430520 (= lt!197011 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!430520 false))

(declare-fun b!430521 () Bool)

(declare-fun e!254851 () Bool)

(assert (=> b!430521 (= e!254851 true)))

(declare-fun lt!197017 () tuple2!7412)

(declare-fun lt!197010 () ListLongMap!6339)

(assert (=> b!430521 (= lt!197010 (+!1333 (+!1333 lt!197012 lt!197017) lt!197019))))

(declare-fun lt!197014 () V!16125)

(declare-fun lt!197015 () Unit!12640)

(declare-fun addCommutativeForDiffKeys!352 (ListLongMap!6339 (_ BitVec 64) V!16125 (_ BitVec 64) V!16125) Unit!12640)

(assert (=> b!430521 (= lt!197015 (addCommutativeForDiffKeys!352 lt!197012 k0!794 v!412 (select (arr!12618 _keys!709) from!863) lt!197014))))

(declare-fun b!430522 () Bool)

(declare-fun res!253066 () Bool)

(assert (=> b!430522 (=> (not res!253066) (not e!254853))))

(declare-datatypes ((List!7467 0))(
  ( (Nil!7464) (Cons!7463 (h!8319 (_ BitVec 64)) (t!13037 List!7467)) )
))
(declare-fun arrayNoDuplicates!0 (array!26343 (_ BitVec 32) List!7467) Bool)

(assert (=> b!430522 (= res!253066 (arrayNoDuplicates!0 lt!197016 #b00000000000000000000000000000000 Nil!7464))))

(declare-fun mapNonEmpty!18519 () Bool)

(declare-fun tp!35868 () Bool)

(assert (=> mapNonEmpty!18519 (= mapRes!18519 (and tp!35868 e!254848))))

(declare-fun mapRest!18519 () (Array (_ BitVec 32) ValueCell!5289))

(declare-fun mapValue!18519 () ValueCell!5289)

(declare-fun mapKey!18519 () (_ BitVec 32))

(assert (=> mapNonEmpty!18519 (= (arr!12619 _values!549) (store mapRest!18519 mapKey!18519 mapValue!18519))))

(declare-fun b!430523 () Bool)

(declare-fun res!253077 () Bool)

(assert (=> b!430523 (=> (not res!253077) (not e!254854))))

(assert (=> b!430523 (= res!253077 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7464))))

(declare-fun b!430524 () Bool)

(declare-fun e!254850 () Bool)

(assert (=> b!430524 (= e!254850 tp_is_empty!11265)))

(declare-fun b!430525 () Bool)

(declare-fun res!253075 () Bool)

(assert (=> b!430525 (=> (not res!253075) (not e!254854))))

(declare-fun arrayContainsKey!0 (array!26343 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!430525 (= res!253075 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!430526 () Bool)

(declare-fun Unit!12643 () Unit!12640)

(assert (=> b!430526 (= e!254847 Unit!12643)))

(declare-fun b!430527 () Bool)

(assert (=> b!430527 (= e!254849 e!254851)))

(declare-fun res!253068 () Bool)

(assert (=> b!430527 (=> res!253068 e!254851)))

(assert (=> b!430527 (= res!253068 (= k0!794 (select (arr!12618 _keys!709) from!863)))))

(assert (=> b!430527 (not (= (select (arr!12618 _keys!709) from!863) k0!794))))

(declare-fun lt!197021 () Unit!12640)

(assert (=> b!430527 (= lt!197021 e!254847)))

(declare-fun c!55430 () Bool)

(assert (=> b!430527 (= c!55430 (= (select (arr!12618 _keys!709) from!863) k0!794))))

(assert (=> b!430527 (= lt!197013 lt!197010)))

(assert (=> b!430527 (= lt!197010 (+!1333 lt!197008 lt!197017))))

(assert (=> b!430527 (= lt!197017 (tuple2!7413 (select (arr!12618 _keys!709) from!863) lt!197014))))

(declare-fun get!6268 (ValueCell!5289 V!16125) V!16125)

(declare-fun dynLambda!777 (Int (_ BitVec 64)) V!16125)

(assert (=> b!430527 (= lt!197014 (get!6268 (select (arr!12619 _values!549) from!863) (dynLambda!777 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!430528 () Bool)

(assert (=> b!430528 (= e!254846 (and e!254850 mapRes!18519))))

(declare-fun condMapEmpty!18519 () Bool)

(declare-fun mapDefault!18519 () ValueCell!5289)

(assert (=> b!430528 (= condMapEmpty!18519 (= (arr!12619 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5289)) mapDefault!18519)))))

(assert (= (and start!39854 res!253074) b!430514))

(assert (= (and b!430514 res!253080) b!430512))

(assert (= (and b!430512 res!253073) b!430518))

(assert (= (and b!430518 res!253070) b!430523))

(assert (= (and b!430523 res!253077) b!430519))

(assert (= (and b!430519 res!253072) b!430513))

(assert (= (and b!430513 res!253069) b!430510))

(assert (= (and b!430510 res!253071) b!430525))

(assert (= (and b!430525 res!253075) b!430517))

(assert (= (and b!430517 res!253076) b!430522))

(assert (= (and b!430522 res!253066) b!430509))

(assert (= (and b!430509 res!253079) b!430511))

(assert (= (and b!430511 res!253078) b!430515))

(assert (= (and b!430515 (not res!253067)) b!430527))

(assert (= (and b!430527 c!55430) b!430520))

(assert (= (and b!430527 (not c!55430)) b!430526))

(assert (= (and b!430527 (not res!253068)) b!430521))

(assert (= (and b!430528 condMapEmpty!18519) mapIsEmpty!18519))

(assert (= (and b!430528 (not condMapEmpty!18519)) mapNonEmpty!18519))

(get-info :version)

(assert (= (and mapNonEmpty!18519 ((_ is ValueCellFull!5289) mapValue!18519)) b!430516))

(assert (= (and b!430528 ((_ is ValueCellFull!5289) mapDefault!18519)) b!430524))

(assert (= start!39854 b!430528))

(declare-fun b_lambda!9231 () Bool)

(assert (=> (not b_lambda!9231) (not b!430527)))

(declare-fun t!13035 () Bool)

(declare-fun tb!3527 () Bool)

(assert (=> (and start!39854 (= defaultEntry!557 defaultEntry!557) t!13035) tb!3527))

(declare-fun result!6573 () Bool)

(assert (=> tb!3527 (= result!6573 tp_is_empty!11265)))

(assert (=> b!430527 t!13035))

(declare-fun b_and!17905 () Bool)

(assert (= b_and!17903 (and (=> t!13035 result!6573) b_and!17905)))

(declare-fun m!418739 () Bool)

(assert (=> start!39854 m!418739))

(declare-fun m!418741 () Bool)

(assert (=> start!39854 m!418741))

(declare-fun m!418743 () Bool)

(assert (=> b!430525 m!418743))

(declare-fun m!418745 () Bool)

(assert (=> b!430522 m!418745))

(declare-fun m!418747 () Bool)

(assert (=> b!430517 m!418747))

(declare-fun m!418749 () Bool)

(assert (=> b!430517 m!418749))

(declare-fun m!418751 () Bool)

(assert (=> b!430515 m!418751))

(declare-fun m!418753 () Bool)

(assert (=> b!430515 m!418753))

(declare-fun m!418755 () Bool)

(assert (=> b!430515 m!418755))

(declare-fun m!418757 () Bool)

(assert (=> b!430515 m!418757))

(declare-fun m!418759 () Bool)

(assert (=> b!430515 m!418759))

(declare-fun m!418761 () Bool)

(assert (=> b!430515 m!418761))

(assert (=> b!430515 m!418755))

(declare-fun m!418763 () Bool)

(assert (=> mapNonEmpty!18519 m!418763))

(assert (=> b!430527 m!418755))

(declare-fun m!418765 () Bool)

(assert (=> b!430527 m!418765))

(declare-fun m!418767 () Bool)

(assert (=> b!430527 m!418767))

(declare-fun m!418769 () Bool)

(assert (=> b!430527 m!418769))

(assert (=> b!430527 m!418769))

(assert (=> b!430527 m!418765))

(declare-fun m!418771 () Bool)

(assert (=> b!430527 m!418771))

(declare-fun m!418773 () Bool)

(assert (=> b!430514 m!418773))

(declare-fun m!418775 () Bool)

(assert (=> b!430523 m!418775))

(declare-fun m!418777 () Bool)

(assert (=> b!430518 m!418777))

(declare-fun m!418779 () Bool)

(assert (=> b!430511 m!418779))

(declare-fun m!418781 () Bool)

(assert (=> b!430511 m!418781))

(declare-fun m!418783 () Bool)

(assert (=> b!430511 m!418783))

(declare-fun m!418785 () Bool)

(assert (=> b!430510 m!418785))

(declare-fun m!418787 () Bool)

(assert (=> b!430520 m!418787))

(declare-fun m!418789 () Bool)

(assert (=> b!430521 m!418789))

(assert (=> b!430521 m!418789))

(declare-fun m!418791 () Bool)

(assert (=> b!430521 m!418791))

(assert (=> b!430521 m!418755))

(assert (=> b!430521 m!418755))

(declare-fun m!418793 () Bool)

(assert (=> b!430521 m!418793))

(declare-fun m!418795 () Bool)

(assert (=> b!430513 m!418795))

(check-sat (not b!430515) tp_is_empty!11265 (not b!430513) b_and!17905 (not b!430514) (not b!430521) (not b!430527) (not b_lambda!9231) (not b!430523) (not b!430511) (not b!430522) (not b!430517) (not b!430520) (not start!39854) (not b_next!10113) (not b!430525) (not b!430518) (not mapNonEmpty!18519))
(check-sat b_and!17905 (not b_next!10113))
