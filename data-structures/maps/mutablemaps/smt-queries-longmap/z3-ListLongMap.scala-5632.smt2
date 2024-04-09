; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73606 () Bool)

(assert start!73606)

(declare-fun b_free!14493 () Bool)

(declare-fun b_next!14493 () Bool)

(assert (=> start!73606 (= b_free!14493 (not b_next!14493))))

(declare-fun tp!50983 () Bool)

(declare-fun b_and!23983 () Bool)

(assert (=> start!73606 (= tp!50983 b_and!23983)))

(declare-fun b!860511 () Bool)

(declare-fun res!584935 () Bool)

(declare-fun e!479521 () Bool)

(assert (=> b!860511 (=> (not res!584935) (not e!479521))))

(declare-datatypes ((array!49412 0))(
  ( (array!49413 (arr!23733 (Array (_ BitVec 32) (_ BitVec 64))) (size!24174 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49412)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49412 (_ BitVec 32)) Bool)

(assert (=> b!860511 (= res!584935 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!860512 () Bool)

(declare-fun res!584937 () Bool)

(assert (=> b!860512 (=> (not res!584937) (not e!479521))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!860512 (= res!584937 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24174 _keys!868))))))

(declare-fun mapIsEmpty!26543 () Bool)

(declare-fun mapRes!26543 () Bool)

(assert (=> mapIsEmpty!26543 mapRes!26543))

(declare-fun mapNonEmpty!26543 () Bool)

(declare-fun tp!50984 () Bool)

(declare-fun e!479523 () Bool)

(assert (=> mapNonEmpty!26543 (= mapRes!26543 (and tp!50984 e!479523))))

(declare-datatypes ((V!27219 0))(
  ( (V!27220 (val!8362 Int)) )
))
(declare-datatypes ((ValueCell!7875 0))(
  ( (ValueCellFull!7875 (v!10783 V!27219)) (EmptyCell!7875) )
))
(declare-fun mapRest!26543 () (Array (_ BitVec 32) ValueCell!7875))

(declare-fun mapValue!26543 () ValueCell!7875)

(declare-fun mapKey!26543 () (_ BitVec 32))

(declare-datatypes ((array!49414 0))(
  ( (array!49415 (arr!23734 (Array (_ BitVec 32) ValueCell!7875)) (size!24175 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49414)

(assert (=> mapNonEmpty!26543 (= (arr!23734 _values!688) (store mapRest!26543 mapKey!26543 mapValue!26543))))

(declare-fun b!860513 () Bool)

(declare-fun res!584929 () Bool)

(assert (=> b!860513 (=> (not res!584929) (not e!479521))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!860513 (= res!584929 (and (= (size!24175 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24174 _keys!868) (size!24175 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!860514 () Bool)

(declare-fun e!479520 () Bool)

(declare-fun e!479526 () Bool)

(assert (=> b!860514 (= e!479520 (not e!479526))))

(declare-fun res!584934 () Bool)

(assert (=> b!860514 (=> res!584934 e!479526)))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!860514 (= res!584934 (not (validKeyInArray!0 (select (arr!23733 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11040 0))(
  ( (tuple2!11041 (_1!5530 (_ BitVec 64)) (_2!5530 V!27219)) )
))
(declare-datatypes ((List!16911 0))(
  ( (Nil!16908) (Cons!16907 (h!18038 tuple2!11040) (t!23678 List!16911)) )
))
(declare-datatypes ((ListLongMap!9823 0))(
  ( (ListLongMap!9824 (toList!4927 List!16911)) )
))
(declare-fun lt!387904 () ListLongMap!9823)

(declare-fun lt!387900 () ListLongMap!9823)

(assert (=> b!860514 (= lt!387904 lt!387900)))

(declare-fun lt!387901 () ListLongMap!9823)

(declare-fun v!557 () V!27219)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!2228 (ListLongMap!9823 tuple2!11040) ListLongMap!9823)

(assert (=> b!860514 (= lt!387900 (+!2228 lt!387901 (tuple2!11041 k0!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27219)

(declare-fun zeroValue!654 () V!27219)

(declare-fun lt!387905 () array!49414)

(declare-fun getCurrentListMapNoExtraKeys!2907 (array!49412 array!49414 (_ BitVec 32) (_ BitVec 32) V!27219 V!27219 (_ BitVec 32) Int) ListLongMap!9823)

(assert (=> b!860514 (= lt!387904 (getCurrentListMapNoExtraKeys!2907 _keys!868 lt!387905 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!860514 (= lt!387901 (getCurrentListMapNoExtraKeys!2907 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29298 0))(
  ( (Unit!29299) )
))
(declare-fun lt!387903 () Unit!29298)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!481 (array!49412 array!49414 (_ BitVec 32) (_ BitVec 32) V!27219 V!27219 (_ BitVec 32) (_ BitVec 64) V!27219 (_ BitVec 32) Int) Unit!29298)

(assert (=> b!860514 (= lt!387903 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!481 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!860515 () Bool)

(declare-fun res!584924 () Bool)

(assert (=> b!860515 (=> (not res!584924) (not e!479521))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!860515 (= res!584924 (validMask!0 mask!1196))))

(declare-fun b!860516 () Bool)

(declare-fun res!584926 () Bool)

(assert (=> b!860516 (=> (not res!584926) (not e!479521))))

(assert (=> b!860516 (= res!584926 (and (= (select (arr!23733 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!860517 () Bool)

(declare-fun res!584933 () Bool)

(assert (=> b!860517 (=> (not res!584933) (not e!479521))))

(assert (=> b!860517 (= res!584933 (validKeyInArray!0 k0!854))))

(declare-fun b!860519 () Bool)

(declare-fun res!584925 () Bool)

(declare-fun e!479525 () Bool)

(assert (=> b!860519 (=> res!584925 e!479525)))

(declare-datatypes ((List!16912 0))(
  ( (Nil!16909) (Cons!16908 (h!18039 (_ BitVec 64)) (t!23679 List!16912)) )
))
(declare-fun contains!4233 (List!16912 (_ BitVec 64)) Bool)

(assert (=> b!860519 (= res!584925 (contains!4233 Nil!16909 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!860520 () Bool)

(declare-fun res!584931 () Bool)

(assert (=> b!860520 (=> res!584931 e!479525)))

(declare-fun noDuplicate!1314 (List!16912) Bool)

(assert (=> b!860520 (= res!584931 (not (noDuplicate!1314 Nil!16909)))))

(declare-fun b!860521 () Bool)

(declare-fun e!479522 () Bool)

(declare-fun tp_is_empty!16629 () Bool)

(assert (=> b!860521 (= e!479522 tp_is_empty!16629)))

(declare-fun b!860522 () Bool)

(assert (=> b!860522 (= e!479521 e!479520)))

(declare-fun res!584936 () Bool)

(assert (=> b!860522 (=> (not res!584936) (not e!479520))))

(assert (=> b!860522 (= res!584936 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!387907 () ListLongMap!9823)

(assert (=> b!860522 (= lt!387907 (getCurrentListMapNoExtraKeys!2907 _keys!868 lt!387905 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!860522 (= lt!387905 (array!49415 (store (arr!23734 _values!688) i!612 (ValueCellFull!7875 v!557)) (size!24175 _values!688)))))

(declare-fun lt!387902 () ListLongMap!9823)

(assert (=> b!860522 (= lt!387902 (getCurrentListMapNoExtraKeys!2907 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!860523 () Bool)

(declare-fun e!479519 () Bool)

(assert (=> b!860523 (= e!479519 (and e!479522 mapRes!26543))))

(declare-fun condMapEmpty!26543 () Bool)

(declare-fun mapDefault!26543 () ValueCell!7875)

(assert (=> b!860523 (= condMapEmpty!26543 (= (arr!23734 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7875)) mapDefault!26543)))))

(declare-fun b!860524 () Bool)

(declare-fun e!479524 () Bool)

(assert (=> b!860524 (= e!479526 e!479524)))

(declare-fun res!584932 () Bool)

(assert (=> b!860524 (=> res!584932 e!479524)))

(assert (=> b!860524 (= res!584932 (not (= (select (arr!23733 _keys!868) from!1053) k0!854)))))

(declare-fun get!12526 (ValueCell!7875 V!27219) V!27219)

(declare-fun dynLambda!1112 (Int (_ BitVec 64)) V!27219)

(assert (=> b!860524 (= lt!387907 (+!2228 lt!387900 (tuple2!11041 (select (arr!23733 _keys!868) from!1053) (get!12526 (select (arr!23734 _values!688) from!1053) (dynLambda!1112 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!860525 () Bool)

(declare-fun res!584927 () Bool)

(assert (=> b!860525 (=> (not res!584927) (not e!479521))))

(declare-fun arrayNoDuplicates!0 (array!49412 (_ BitVec 32) List!16912) Bool)

(assert (=> b!860525 (= res!584927 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16909))))

(declare-fun b!860526 () Bool)

(assert (=> b!860526 (= e!479525 true)))

(declare-fun lt!387909 () Bool)

(assert (=> b!860526 (= lt!387909 (contains!4233 Nil!16909 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!860527 () Bool)

(assert (=> b!860527 (= e!479524 e!479525)))

(declare-fun res!584930 () Bool)

(assert (=> b!860527 (=> res!584930 e!479525)))

(assert (=> b!860527 (= res!584930 (or (bvsge (size!24174 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24174 _keys!868)) (bvsge from!1053 (size!24174 _keys!868))))))

(declare-fun arrayContainsKey!0 (array!49412 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!860527 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!387908 () Unit!29298)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49412 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29298)

(assert (=> b!860527 (= lt!387908 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!860527 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16909)))

(declare-fun lt!387906 () Unit!29298)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49412 (_ BitVec 32) (_ BitVec 32)) Unit!29298)

(assert (=> b!860527 (= lt!387906 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun res!584928 () Bool)

(assert (=> start!73606 (=> (not res!584928) (not e!479521))))

(assert (=> start!73606 (= res!584928 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24174 _keys!868))))))

(assert (=> start!73606 e!479521))

(assert (=> start!73606 tp_is_empty!16629))

(assert (=> start!73606 true))

(assert (=> start!73606 tp!50983))

(declare-fun array_inv!18760 (array!49412) Bool)

(assert (=> start!73606 (array_inv!18760 _keys!868)))

(declare-fun array_inv!18761 (array!49414) Bool)

(assert (=> start!73606 (and (array_inv!18761 _values!688) e!479519)))

(declare-fun b!860518 () Bool)

(assert (=> b!860518 (= e!479523 tp_is_empty!16629)))

(assert (= (and start!73606 res!584928) b!860515))

(assert (= (and b!860515 res!584924) b!860513))

(assert (= (and b!860513 res!584929) b!860511))

(assert (= (and b!860511 res!584935) b!860525))

(assert (= (and b!860525 res!584927) b!860512))

(assert (= (and b!860512 res!584937) b!860517))

(assert (= (and b!860517 res!584933) b!860516))

(assert (= (and b!860516 res!584926) b!860522))

(assert (= (and b!860522 res!584936) b!860514))

(assert (= (and b!860514 (not res!584934)) b!860524))

(assert (= (and b!860524 (not res!584932)) b!860527))

(assert (= (and b!860527 (not res!584930)) b!860520))

(assert (= (and b!860520 (not res!584931)) b!860519))

(assert (= (and b!860519 (not res!584925)) b!860526))

(assert (= (and b!860523 condMapEmpty!26543) mapIsEmpty!26543))

(assert (= (and b!860523 (not condMapEmpty!26543)) mapNonEmpty!26543))

(get-info :version)

(assert (= (and mapNonEmpty!26543 ((_ is ValueCellFull!7875) mapValue!26543)) b!860518))

(assert (= (and b!860523 ((_ is ValueCellFull!7875) mapDefault!26543)) b!860521))

(assert (= start!73606 b!860523))

(declare-fun b_lambda!11875 () Bool)

(assert (=> (not b_lambda!11875) (not b!860524)))

(declare-fun t!23677 () Bool)

(declare-fun tb!4623 () Bool)

(assert (=> (and start!73606 (= defaultEntry!696 defaultEntry!696) t!23677) tb!4623))

(declare-fun result!8849 () Bool)

(assert (=> tb!4623 (= result!8849 tp_is_empty!16629)))

(assert (=> b!860524 t!23677))

(declare-fun b_and!23985 () Bool)

(assert (= b_and!23983 (and (=> t!23677 result!8849) b_and!23985)))

(declare-fun m!801435 () Bool)

(assert (=> b!860526 m!801435))

(declare-fun m!801437 () Bool)

(assert (=> b!860517 m!801437))

(declare-fun m!801439 () Bool)

(assert (=> b!860524 m!801439))

(declare-fun m!801441 () Bool)

(assert (=> b!860524 m!801441))

(declare-fun m!801443 () Bool)

(assert (=> b!860524 m!801443))

(declare-fun m!801445 () Bool)

(assert (=> b!860524 m!801445))

(assert (=> b!860524 m!801441))

(declare-fun m!801447 () Bool)

(assert (=> b!860524 m!801447))

(assert (=> b!860524 m!801443))

(declare-fun m!801449 () Bool)

(assert (=> b!860520 m!801449))

(declare-fun m!801451 () Bool)

(assert (=> b!860519 m!801451))

(declare-fun m!801453 () Bool)

(assert (=> b!860525 m!801453))

(declare-fun m!801455 () Bool)

(assert (=> b!860527 m!801455))

(declare-fun m!801457 () Bool)

(assert (=> b!860527 m!801457))

(declare-fun m!801459 () Bool)

(assert (=> b!860527 m!801459))

(declare-fun m!801461 () Bool)

(assert (=> b!860527 m!801461))

(declare-fun m!801463 () Bool)

(assert (=> b!860514 m!801463))

(assert (=> b!860514 m!801447))

(declare-fun m!801465 () Bool)

(assert (=> b!860514 m!801465))

(assert (=> b!860514 m!801447))

(declare-fun m!801467 () Bool)

(assert (=> b!860514 m!801467))

(declare-fun m!801469 () Bool)

(assert (=> b!860514 m!801469))

(declare-fun m!801471 () Bool)

(assert (=> b!860514 m!801471))

(declare-fun m!801473 () Bool)

(assert (=> b!860516 m!801473))

(declare-fun m!801475 () Bool)

(assert (=> b!860515 m!801475))

(declare-fun m!801477 () Bool)

(assert (=> b!860511 m!801477))

(declare-fun m!801479 () Bool)

(assert (=> start!73606 m!801479))

(declare-fun m!801481 () Bool)

(assert (=> start!73606 m!801481))

(declare-fun m!801483 () Bool)

(assert (=> mapNonEmpty!26543 m!801483))

(declare-fun m!801485 () Bool)

(assert (=> b!860522 m!801485))

(declare-fun m!801487 () Bool)

(assert (=> b!860522 m!801487))

(declare-fun m!801489 () Bool)

(assert (=> b!860522 m!801489))

(check-sat (not b!860514) tp_is_empty!16629 (not b!860515) (not b!860525) (not b!860526) (not b!860524) (not mapNonEmpty!26543) (not b!860527) (not b!860517) (not b!860511) b_and!23985 (not b!860520) (not b_lambda!11875) (not b!860522) (not b!860519) (not start!73606) (not b_next!14493))
(check-sat b_and!23985 (not b_next!14493))
