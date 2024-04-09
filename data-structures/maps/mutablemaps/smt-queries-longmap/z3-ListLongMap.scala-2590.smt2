; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39368 () Bool)

(assert start!39368)

(declare-fun b_free!9627 () Bool)

(declare-fun b_next!9627 () Bool)

(assert (=> start!39368 (= b_free!9627 (not b_next!9627))))

(declare-fun tp!34409 () Bool)

(declare-fun b_and!17147 () Bool)

(assert (=> start!39368 (= tp!34409 b_and!17147)))

(declare-fun b!417589 () Bool)

(declare-fun e!249108 () Bool)

(declare-fun e!249114 () Bool)

(assert (=> b!417589 (= e!249108 e!249114)))

(declare-fun res!243314 () Bool)

(assert (=> b!417589 (=> (not res!243314) (not e!249114))))

(declare-datatypes ((array!25393 0))(
  ( (array!25394 (arr!12143 (Array (_ BitVec 32) (_ BitVec 64))) (size!12495 (_ BitVec 32))) )
))
(declare-fun lt!191382 () array!25393)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25393 (_ BitVec 32)) Bool)

(assert (=> b!417589 (= res!243314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!191382 mask!1025))))

(declare-fun _keys!709 () array!25393)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!417589 (= lt!191382 (array!25394 (store (arr!12143 _keys!709) i!563 k0!794) (size!12495 _keys!709)))))

(declare-fun b!417590 () Bool)

(declare-fun res!243309 () Bool)

(assert (=> b!417590 (=> (not res!243309) (not e!249108))))

(declare-fun arrayContainsKey!0 (array!25393 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!417590 (= res!243309 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!417591 () Bool)

(declare-fun res!243305 () Bool)

(assert (=> b!417591 (=> (not res!243305) (not e!249108))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15477 0))(
  ( (V!15478 (val!5434 Int)) )
))
(declare-datatypes ((ValueCell!5046 0))(
  ( (ValueCellFull!5046 (v!7677 V!15477)) (EmptyCell!5046) )
))
(declare-datatypes ((array!25395 0))(
  ( (array!25396 (arr!12144 (Array (_ BitVec 32) ValueCell!5046)) (size!12496 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25395)

(assert (=> b!417591 (= res!243305 (and (= (size!12496 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12495 _keys!709) (size!12496 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!417592 () Bool)

(declare-fun e!249113 () Bool)

(declare-datatypes ((tuple2!7026 0))(
  ( (tuple2!7027 (_1!3523 (_ BitVec 64)) (_2!3523 V!15477)) )
))
(declare-datatypes ((List!7078 0))(
  ( (Nil!7075) (Cons!7074 (h!7930 tuple2!7026) (t!12378 List!7078)) )
))
(declare-datatypes ((ListLongMap!5953 0))(
  ( (ListLongMap!5954 (toList!2992 List!7078)) )
))
(declare-fun call!29056 () ListLongMap!5953)

(declare-fun call!29057 () ListLongMap!5953)

(assert (=> b!417592 (= e!249113 (= call!29056 call!29057))))

(declare-fun b!417593 () Bool)

(declare-fun res!243317 () Bool)

(assert (=> b!417593 (=> (not res!243317) (not e!249108))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!417593 (= res!243317 (validKeyInArray!0 k0!794))))

(declare-fun b!417594 () Bool)

(declare-fun res!243307 () Bool)

(assert (=> b!417594 (=> (not res!243307) (not e!249108))))

(assert (=> b!417594 (= res!243307 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12495 _keys!709))))))

(declare-fun b!417595 () Bool)

(declare-fun e!249112 () Bool)

(assert (=> b!417595 (= e!249112 true)))

(declare-fun lt!191391 () ListLongMap!5953)

(declare-fun lt!191390 () tuple2!7026)

(declare-fun lt!191384 () V!15477)

(declare-fun +!1203 (ListLongMap!5953 tuple2!7026) ListLongMap!5953)

(assert (=> b!417595 (= (+!1203 lt!191391 lt!191390) (+!1203 (+!1203 lt!191391 (tuple2!7027 k0!794 lt!191384)) lt!191390))))

(declare-fun lt!191388 () V!15477)

(assert (=> b!417595 (= lt!191390 (tuple2!7027 k0!794 lt!191388))))

(declare-datatypes ((Unit!12307 0))(
  ( (Unit!12308) )
))
(declare-fun lt!191386 () Unit!12307)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!26 (ListLongMap!5953 (_ BitVec 64) V!15477 V!15477) Unit!12307)

(assert (=> b!417595 (= lt!191386 (addSameAsAddTwiceSameKeyDiffValues!26 lt!191391 k0!794 lt!191384 lt!191388))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!191383 () V!15477)

(declare-fun get!6017 (ValueCell!5046 V!15477) V!15477)

(assert (=> b!417595 (= lt!191384 (get!6017 (select (arr!12144 _values!549) from!863) lt!191383))))

(declare-fun lt!191381 () ListLongMap!5953)

(assert (=> b!417595 (= lt!191381 (+!1203 lt!191391 (tuple2!7027 (select (arr!12143 lt!191382) from!863) lt!191388)))))

(declare-fun v!412 () V!15477)

(assert (=> b!417595 (= lt!191388 (get!6017 (select (store (arr!12144 _values!549) i!563 (ValueCellFull!5046 v!412)) from!863) lt!191383))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!688 (Int (_ BitVec 64)) V!15477)

(assert (=> b!417595 (= lt!191383 (dynLambda!688 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun minValue!515 () V!15477)

(declare-fun zeroValue!515 () V!15477)

(declare-fun lt!191389 () array!25395)

(declare-fun getCurrentListMapNoExtraKeys!1195 (array!25393 array!25395 (_ BitVec 32) (_ BitVec 32) V!15477 V!15477 (_ BitVec 32) Int) ListLongMap!5953)

(assert (=> b!417595 (= lt!191391 (getCurrentListMapNoExtraKeys!1195 lt!191382 lt!191389 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417596 () Bool)

(declare-fun e!249115 () Bool)

(declare-fun tp_is_empty!10779 () Bool)

(assert (=> b!417596 (= e!249115 tp_is_empty!10779)))

(declare-fun b!417597 () Bool)

(declare-fun res!243315 () Bool)

(assert (=> b!417597 (=> (not res!243315) (not e!249114))))

(declare-datatypes ((List!7079 0))(
  ( (Nil!7076) (Cons!7075 (h!7931 (_ BitVec 64)) (t!12379 List!7079)) )
))
(declare-fun arrayNoDuplicates!0 (array!25393 (_ BitVec 32) List!7079) Bool)

(assert (=> b!417597 (= res!243315 (arrayNoDuplicates!0 lt!191382 #b00000000000000000000000000000000 Nil!7076))))

(declare-fun res!243310 () Bool)

(assert (=> start!39368 (=> (not res!243310) (not e!249108))))

(assert (=> start!39368 (= res!243310 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12495 _keys!709))))))

(assert (=> start!39368 e!249108))

(assert (=> start!39368 tp_is_empty!10779))

(assert (=> start!39368 tp!34409))

(assert (=> start!39368 true))

(declare-fun e!249110 () Bool)

(declare-fun array_inv!8856 (array!25395) Bool)

(assert (=> start!39368 (and (array_inv!8856 _values!549) e!249110)))

(declare-fun array_inv!8857 (array!25393) Bool)

(assert (=> start!39368 (array_inv!8857 _keys!709)))

(declare-fun b!417598 () Bool)

(declare-fun res!243311 () Bool)

(assert (=> b!417598 (=> (not res!243311) (not e!249108))))

(assert (=> b!417598 (= res!243311 (or (= (select (arr!12143 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12143 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!417599 () Bool)

(declare-fun e!249111 () Bool)

(assert (=> b!417599 (= e!249111 tp_is_empty!10779)))

(declare-fun b!417600 () Bool)

(assert (=> b!417600 (= e!249113 (= call!29057 (+!1203 call!29056 (tuple2!7027 k0!794 v!412))))))

(declare-fun bm!29053 () Bool)

(declare-fun c!55079 () Bool)

(assert (=> bm!29053 (= call!29057 (getCurrentListMapNoExtraKeys!1195 (ite c!55079 lt!191382 _keys!709) (ite c!55079 lt!191389 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417601 () Bool)

(declare-fun res!243318 () Bool)

(assert (=> b!417601 (=> (not res!243318) (not e!249108))))

(assert (=> b!417601 (= res!243318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun bm!29054 () Bool)

(assert (=> bm!29054 (= call!29056 (getCurrentListMapNoExtraKeys!1195 (ite c!55079 _keys!709 lt!191382) (ite c!55079 _values!549 lt!191389) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417602 () Bool)

(declare-fun res!243316 () Bool)

(assert (=> b!417602 (=> (not res!243316) (not e!249108))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!417602 (= res!243316 (validMask!0 mask!1025))))

(declare-fun b!417603 () Bool)

(declare-fun mapRes!17790 () Bool)

(assert (=> b!417603 (= e!249110 (and e!249111 mapRes!17790))))

(declare-fun condMapEmpty!17790 () Bool)

(declare-fun mapDefault!17790 () ValueCell!5046)

(assert (=> b!417603 (= condMapEmpty!17790 (= (arr!12144 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5046)) mapDefault!17790)))))

(declare-fun b!417604 () Bool)

(declare-fun res!243306 () Bool)

(assert (=> b!417604 (=> (not res!243306) (not e!249108))))

(assert (=> b!417604 (= res!243306 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7076))))

(declare-fun mapIsEmpty!17790 () Bool)

(assert (=> mapIsEmpty!17790 mapRes!17790))

(declare-fun b!417605 () Bool)

(declare-fun e!249109 () Bool)

(assert (=> b!417605 (= e!249114 e!249109)))

(declare-fun res!243313 () Bool)

(assert (=> b!417605 (=> (not res!243313) (not e!249109))))

(assert (=> b!417605 (= res!243313 (= from!863 i!563))))

(assert (=> b!417605 (= lt!191381 (getCurrentListMapNoExtraKeys!1195 lt!191382 lt!191389 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!417605 (= lt!191389 (array!25396 (store (arr!12144 _values!549) i!563 (ValueCellFull!5046 v!412)) (size!12496 _values!549)))))

(declare-fun lt!191387 () ListLongMap!5953)

(assert (=> b!417605 (= lt!191387 (getCurrentListMapNoExtraKeys!1195 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!417606 () Bool)

(declare-fun res!243312 () Bool)

(assert (=> b!417606 (=> (not res!243312) (not e!249114))))

(assert (=> b!417606 (= res!243312 (bvsle from!863 i!563))))

(declare-fun b!417607 () Bool)

(assert (=> b!417607 (= e!249109 (not e!249112))))

(declare-fun res!243308 () Bool)

(assert (=> b!417607 (=> res!243308 e!249112)))

(assert (=> b!417607 (= res!243308 (validKeyInArray!0 (select (arr!12143 _keys!709) from!863)))))

(assert (=> b!417607 e!249113))

(assert (=> b!417607 (= c!55079 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!191385 () Unit!12307)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!412 (array!25393 array!25395 (_ BitVec 32) (_ BitVec 32) V!15477 V!15477 (_ BitVec 32) (_ BitVec 64) V!15477 (_ BitVec 32) Int) Unit!12307)

(assert (=> b!417607 (= lt!191385 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!412 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!17790 () Bool)

(declare-fun tp!34410 () Bool)

(assert (=> mapNonEmpty!17790 (= mapRes!17790 (and tp!34410 e!249115))))

(declare-fun mapKey!17790 () (_ BitVec 32))

(declare-fun mapValue!17790 () ValueCell!5046)

(declare-fun mapRest!17790 () (Array (_ BitVec 32) ValueCell!5046))

(assert (=> mapNonEmpty!17790 (= (arr!12144 _values!549) (store mapRest!17790 mapKey!17790 mapValue!17790))))

(assert (= (and start!39368 res!243310) b!417602))

(assert (= (and b!417602 res!243316) b!417591))

(assert (= (and b!417591 res!243305) b!417601))

(assert (= (and b!417601 res!243318) b!417604))

(assert (= (and b!417604 res!243306) b!417594))

(assert (= (and b!417594 res!243307) b!417593))

(assert (= (and b!417593 res!243317) b!417598))

(assert (= (and b!417598 res!243311) b!417590))

(assert (= (and b!417590 res!243309) b!417589))

(assert (= (and b!417589 res!243314) b!417597))

(assert (= (and b!417597 res!243315) b!417606))

(assert (= (and b!417606 res!243312) b!417605))

(assert (= (and b!417605 res!243313) b!417607))

(assert (= (and b!417607 c!55079) b!417600))

(assert (= (and b!417607 (not c!55079)) b!417592))

(assert (= (or b!417600 b!417592) bm!29053))

(assert (= (or b!417600 b!417592) bm!29054))

(assert (= (and b!417607 (not res!243308)) b!417595))

(assert (= (and b!417603 condMapEmpty!17790) mapIsEmpty!17790))

(assert (= (and b!417603 (not condMapEmpty!17790)) mapNonEmpty!17790))

(get-info :version)

(assert (= (and mapNonEmpty!17790 ((_ is ValueCellFull!5046) mapValue!17790)) b!417596))

(assert (= (and b!417603 ((_ is ValueCellFull!5046) mapDefault!17790)) b!417599))

(assert (= start!39368 b!417603))

(declare-fun b_lambda!8961 () Bool)

(assert (=> (not b_lambda!8961) (not b!417595)))

(declare-fun t!12377 () Bool)

(declare-fun tb!3257 () Bool)

(assert (=> (and start!39368 (= defaultEntry!557 defaultEntry!557) t!12377) tb!3257))

(declare-fun result!6033 () Bool)

(assert (=> tb!3257 (= result!6033 tp_is_empty!10779)))

(assert (=> b!417595 t!12377))

(declare-fun b_and!17149 () Bool)

(assert (= b_and!17147 (and (=> t!12377 result!6033) b_and!17149)))

(declare-fun m!406939 () Bool)

(assert (=> b!417593 m!406939))

(declare-fun m!406941 () Bool)

(assert (=> b!417600 m!406941))

(declare-fun m!406943 () Bool)

(assert (=> start!39368 m!406943))

(declare-fun m!406945 () Bool)

(assert (=> start!39368 m!406945))

(declare-fun m!406947 () Bool)

(assert (=> b!417605 m!406947))

(declare-fun m!406949 () Bool)

(assert (=> b!417605 m!406949))

(declare-fun m!406951 () Bool)

(assert (=> b!417605 m!406951))

(declare-fun m!406953 () Bool)

(assert (=> b!417595 m!406953))

(declare-fun m!406955 () Bool)

(assert (=> b!417595 m!406955))

(declare-fun m!406957 () Bool)

(assert (=> b!417595 m!406957))

(assert (=> b!417595 m!406949))

(declare-fun m!406959 () Bool)

(assert (=> b!417595 m!406959))

(declare-fun m!406961 () Bool)

(assert (=> b!417595 m!406961))

(declare-fun m!406963 () Bool)

(assert (=> b!417595 m!406963))

(declare-fun m!406965 () Bool)

(assert (=> b!417595 m!406965))

(declare-fun m!406967 () Bool)

(assert (=> b!417595 m!406967))

(assert (=> b!417595 m!406959))

(assert (=> b!417595 m!406967))

(declare-fun m!406969 () Bool)

(assert (=> b!417595 m!406969))

(declare-fun m!406971 () Bool)

(assert (=> b!417595 m!406971))

(declare-fun m!406973 () Bool)

(assert (=> b!417595 m!406973))

(assert (=> b!417595 m!406965))

(declare-fun m!406975 () Bool)

(assert (=> b!417595 m!406975))

(declare-fun m!406977 () Bool)

(assert (=> b!417590 m!406977))

(declare-fun m!406979 () Bool)

(assert (=> b!417598 m!406979))

(declare-fun m!406981 () Bool)

(assert (=> bm!29053 m!406981))

(declare-fun m!406983 () Bool)

(assert (=> b!417607 m!406983))

(assert (=> b!417607 m!406983))

(declare-fun m!406985 () Bool)

(assert (=> b!417607 m!406985))

(declare-fun m!406987 () Bool)

(assert (=> b!417607 m!406987))

(declare-fun m!406989 () Bool)

(assert (=> b!417597 m!406989))

(declare-fun m!406991 () Bool)

(assert (=> b!417604 m!406991))

(declare-fun m!406993 () Bool)

(assert (=> bm!29054 m!406993))

(declare-fun m!406995 () Bool)

(assert (=> b!417589 m!406995))

(declare-fun m!406997 () Bool)

(assert (=> b!417589 m!406997))

(declare-fun m!406999 () Bool)

(assert (=> b!417602 m!406999))

(declare-fun m!407001 () Bool)

(assert (=> b!417601 m!407001))

(declare-fun m!407003 () Bool)

(assert (=> mapNonEmpty!17790 m!407003))

(check-sat (not b!417607) b_and!17149 (not b!417605) (not mapNonEmpty!17790) (not b!417590) (not b!417600) (not start!39368) (not b!417593) (not b!417601) (not b!417595) (not b!417602) tp_is_empty!10779 (not b!417589) (not b_next!9627) (not bm!29054) (not b_lambda!8961) (not bm!29053) (not b!417604) (not b!417597))
(check-sat b_and!17149 (not b_next!9627))
