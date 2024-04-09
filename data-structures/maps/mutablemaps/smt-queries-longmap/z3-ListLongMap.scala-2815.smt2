; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40810 () Bool)

(assert start!40810)

(declare-fun b_free!10791 () Bool)

(declare-fun b_next!10791 () Bool)

(assert (=> start!40810 (= b_free!10791 (not b_next!10791))))

(declare-fun tp!38196 () Bool)

(declare-fun b_and!18887 () Bool)

(assert (=> start!40810 (= tp!38196 b_and!18887)))

(declare-fun mapIsEmpty!19830 () Bool)

(declare-fun mapRes!19830 () Bool)

(assert (=> mapIsEmpty!19830 mapRes!19830))

(declare-fun b!452512 () Bool)

(declare-fun res!269632 () Bool)

(declare-fun e!264931 () Bool)

(assert (=> b!452512 (=> (not res!269632) (not e!264931))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!28025 0))(
  ( (array!28026 (arr!13454 (Array (_ BitVec 32) (_ BitVec 64))) (size!13806 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28025)

(assert (=> b!452512 (= res!269632 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13806 _keys!709))))))

(declare-fun res!269636 () Bool)

(assert (=> start!40810 (=> (not res!269636) (not e!264931))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40810 (= res!269636 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13806 _keys!709))))))

(assert (=> start!40810 e!264931))

(declare-fun tp_is_empty!12129 () Bool)

(assert (=> start!40810 tp_is_empty!12129))

(assert (=> start!40810 tp!38196))

(assert (=> start!40810 true))

(declare-datatypes ((V!17277 0))(
  ( (V!17278 (val!6109 Int)) )
))
(declare-datatypes ((ValueCell!5721 0))(
  ( (ValueCellFull!5721 (v!8364 V!17277)) (EmptyCell!5721) )
))
(declare-datatypes ((array!28027 0))(
  ( (array!28028 (arr!13455 (Array (_ BitVec 32) ValueCell!5721)) (size!13807 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28027)

(declare-fun e!264932 () Bool)

(declare-fun array_inv!9738 (array!28027) Bool)

(assert (=> start!40810 (and (array_inv!9738 _values!549) e!264932)))

(declare-fun array_inv!9739 (array!28025) Bool)

(assert (=> start!40810 (array_inv!9739 _keys!709)))

(declare-datatypes ((tuple2!7990 0))(
  ( (tuple2!7991 (_1!4005 (_ BitVec 64)) (_2!4005 V!17277)) )
))
(declare-datatypes ((List!8092 0))(
  ( (Nil!8089) (Cons!8088 (h!8944 tuple2!7990) (t!13914 List!8092)) )
))
(declare-datatypes ((ListLongMap!6917 0))(
  ( (ListLongMap!6918 (toList!3474 List!8092)) )
))
(declare-fun call!29983 () ListLongMap!6917)

(declare-fun call!29984 () ListLongMap!6917)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun e!264925 () Bool)

(declare-fun b!452513 () Bool)

(declare-fun v!412 () V!17277)

(declare-fun +!1539 (ListLongMap!6917 tuple2!7990) ListLongMap!6917)

(assert (=> b!452513 (= e!264925 (= call!29983 (+!1539 call!29984 (tuple2!7991 k0!794 v!412))))))

(declare-fun b!452514 () Bool)

(declare-fun res!269638 () Bool)

(assert (=> b!452514 (=> (not res!269638) (not e!264931))))

(assert (=> b!452514 (= res!269638 (or (= (select (arr!13454 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13454 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!452515 () Bool)

(declare-fun res!269642 () Bool)

(assert (=> b!452515 (=> (not res!269642) (not e!264931))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!452515 (= res!269642 (validMask!0 mask!1025))))

(declare-fun b!452516 () Bool)

(declare-fun res!269635 () Bool)

(assert (=> b!452516 (=> (not res!269635) (not e!264931))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!452516 (= res!269635 (validKeyInArray!0 k0!794))))

(declare-fun b!452517 () Bool)

(declare-fun res!269640 () Bool)

(assert (=> b!452517 (=> (not res!269640) (not e!264931))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!452517 (= res!269640 (and (= (size!13807 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13806 _keys!709) (size!13807 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!452518 () Bool)

(declare-fun res!269631 () Bool)

(declare-fun e!264933 () Bool)

(assert (=> b!452518 (=> (not res!269631) (not e!264933))))

(assert (=> b!452518 (= res!269631 (bvsle from!863 i!563))))

(declare-fun b!452519 () Bool)

(declare-fun e!264929 () Bool)

(declare-fun e!264930 () Bool)

(assert (=> b!452519 (= e!264929 (not e!264930))))

(declare-fun res!269630 () Bool)

(assert (=> b!452519 (=> res!269630 e!264930)))

(assert (=> b!452519 (= res!269630 (validKeyInArray!0 (select (arr!13454 _keys!709) from!863)))))

(assert (=> b!452519 e!264925))

(declare-fun c!56060 () Bool)

(assert (=> b!452519 (= c!56060 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!17277)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17277)

(declare-datatypes ((Unit!13179 0))(
  ( (Unit!13180) )
))
(declare-fun lt!205351 () Unit!13179)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!706 (array!28025 array!28027 (_ BitVec 32) (_ BitVec 32) V!17277 V!17277 (_ BitVec 32) (_ BitVec 64) V!17277 (_ BitVec 32) Int) Unit!13179)

(assert (=> b!452519 (= lt!205351 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!706 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452520 () Bool)

(assert (=> b!452520 (= e!264930 true)))

(declare-fun lt!205358 () ListLongMap!6917)

(declare-fun lt!205353 () tuple2!7990)

(declare-fun lt!205354 () V!17277)

(assert (=> b!452520 (= (+!1539 lt!205358 lt!205353) (+!1539 (+!1539 lt!205358 (tuple2!7991 k0!794 lt!205354)) lt!205353))))

(declare-fun lt!205359 () V!17277)

(assert (=> b!452520 (= lt!205353 (tuple2!7991 k0!794 lt!205359))))

(declare-fun lt!205350 () Unit!13179)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!84 (ListLongMap!6917 (_ BitVec 64) V!17277 V!17277) Unit!13179)

(assert (=> b!452520 (= lt!205350 (addSameAsAddTwiceSameKeyDiffValues!84 lt!205358 k0!794 lt!205354 lt!205359))))

(declare-fun lt!205355 () V!17277)

(declare-fun get!6643 (ValueCell!5721 V!17277) V!17277)

(assert (=> b!452520 (= lt!205354 (get!6643 (select (arr!13455 _values!549) from!863) lt!205355))))

(declare-fun lt!205352 () array!28025)

(declare-fun lt!205357 () ListLongMap!6917)

(assert (=> b!452520 (= lt!205357 (+!1539 lt!205358 (tuple2!7991 (select (arr!13454 lt!205352) from!863) lt!205359)))))

(assert (=> b!452520 (= lt!205359 (get!6643 (select (store (arr!13455 _values!549) i!563 (ValueCellFull!5721 v!412)) from!863) lt!205355))))

(declare-fun dynLambda!862 (Int (_ BitVec 64)) V!17277)

(assert (=> b!452520 (= lt!205355 (dynLambda!862 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!205356 () array!28027)

(declare-fun getCurrentListMapNoExtraKeys!1650 (array!28025 array!28027 (_ BitVec 32) (_ BitVec 32) V!17277 V!17277 (_ BitVec 32) Int) ListLongMap!6917)

(assert (=> b!452520 (= lt!205358 (getCurrentListMapNoExtraKeys!1650 lt!205352 lt!205356 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452521 () Bool)

(declare-fun e!264928 () Bool)

(assert (=> b!452521 (= e!264928 tp_is_empty!12129)))

(declare-fun bm!29980 () Bool)

(assert (=> bm!29980 (= call!29983 (getCurrentListMapNoExtraKeys!1650 (ite c!56060 lt!205352 _keys!709) (ite c!56060 lt!205356 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452522 () Bool)

(declare-fun e!264927 () Bool)

(assert (=> b!452522 (= e!264927 tp_is_empty!12129)))

(declare-fun b!452523 () Bool)

(assert (=> b!452523 (= e!264931 e!264933)))

(declare-fun res!269633 () Bool)

(assert (=> b!452523 (=> (not res!269633) (not e!264933))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28025 (_ BitVec 32)) Bool)

(assert (=> b!452523 (= res!269633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!205352 mask!1025))))

(assert (=> b!452523 (= lt!205352 (array!28026 (store (arr!13454 _keys!709) i!563 k0!794) (size!13806 _keys!709)))))

(declare-fun b!452524 () Bool)

(assert (=> b!452524 (= e!264932 (and e!264928 mapRes!19830))))

(declare-fun condMapEmpty!19830 () Bool)

(declare-fun mapDefault!19830 () ValueCell!5721)

(assert (=> b!452524 (= condMapEmpty!19830 (= (arr!13455 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5721)) mapDefault!19830)))))

(declare-fun b!452525 () Bool)

(declare-fun res!269637 () Bool)

(assert (=> b!452525 (=> (not res!269637) (not e!264931))))

(assert (=> b!452525 (= res!269637 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!452526 () Bool)

(declare-fun res!269641 () Bool)

(assert (=> b!452526 (=> (not res!269641) (not e!264933))))

(declare-datatypes ((List!8093 0))(
  ( (Nil!8090) (Cons!8089 (h!8945 (_ BitVec 64)) (t!13915 List!8093)) )
))
(declare-fun arrayNoDuplicates!0 (array!28025 (_ BitVec 32) List!8093) Bool)

(assert (=> b!452526 (= res!269641 (arrayNoDuplicates!0 lt!205352 #b00000000000000000000000000000000 Nil!8090))))

(declare-fun b!452527 () Bool)

(declare-fun res!269629 () Bool)

(assert (=> b!452527 (=> (not res!269629) (not e!264931))))

(declare-fun arrayContainsKey!0 (array!28025 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!452527 (= res!269629 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!452528 () Bool)

(assert (=> b!452528 (= e!264933 e!264929)))

(declare-fun res!269639 () Bool)

(assert (=> b!452528 (=> (not res!269639) (not e!264929))))

(assert (=> b!452528 (= res!269639 (= from!863 i!563))))

(assert (=> b!452528 (= lt!205357 (getCurrentListMapNoExtraKeys!1650 lt!205352 lt!205356 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!452528 (= lt!205356 (array!28028 (store (arr!13455 _values!549) i!563 (ValueCellFull!5721 v!412)) (size!13807 _values!549)))))

(declare-fun lt!205349 () ListLongMap!6917)

(assert (=> b!452528 (= lt!205349 (getCurrentListMapNoExtraKeys!1650 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!19830 () Bool)

(declare-fun tp!38195 () Bool)

(assert (=> mapNonEmpty!19830 (= mapRes!19830 (and tp!38195 e!264927))))

(declare-fun mapKey!19830 () (_ BitVec 32))

(declare-fun mapValue!19830 () ValueCell!5721)

(declare-fun mapRest!19830 () (Array (_ BitVec 32) ValueCell!5721))

(assert (=> mapNonEmpty!19830 (= (arr!13455 _values!549) (store mapRest!19830 mapKey!19830 mapValue!19830))))

(declare-fun b!452529 () Bool)

(declare-fun res!269634 () Bool)

(assert (=> b!452529 (=> (not res!269634) (not e!264931))))

(assert (=> b!452529 (= res!269634 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8090))))

(declare-fun b!452530 () Bool)

(assert (=> b!452530 (= e!264925 (= call!29984 call!29983))))

(declare-fun bm!29981 () Bool)

(assert (=> bm!29981 (= call!29984 (getCurrentListMapNoExtraKeys!1650 (ite c!56060 _keys!709 lt!205352) (ite c!56060 _values!549 lt!205356) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (= (and start!40810 res!269636) b!452515))

(assert (= (and b!452515 res!269642) b!452517))

(assert (= (and b!452517 res!269640) b!452525))

(assert (= (and b!452525 res!269637) b!452529))

(assert (= (and b!452529 res!269634) b!452512))

(assert (= (and b!452512 res!269632) b!452516))

(assert (= (and b!452516 res!269635) b!452514))

(assert (= (and b!452514 res!269638) b!452527))

(assert (= (and b!452527 res!269629) b!452523))

(assert (= (and b!452523 res!269633) b!452526))

(assert (= (and b!452526 res!269641) b!452518))

(assert (= (and b!452518 res!269631) b!452528))

(assert (= (and b!452528 res!269639) b!452519))

(assert (= (and b!452519 c!56060) b!452513))

(assert (= (and b!452519 (not c!56060)) b!452530))

(assert (= (or b!452513 b!452530) bm!29980))

(assert (= (or b!452513 b!452530) bm!29981))

(assert (= (and b!452519 (not res!269630)) b!452520))

(assert (= (and b!452524 condMapEmpty!19830) mapIsEmpty!19830))

(assert (= (and b!452524 (not condMapEmpty!19830)) mapNonEmpty!19830))

(get-info :version)

(assert (= (and mapNonEmpty!19830 ((_ is ValueCellFull!5721) mapValue!19830)) b!452522))

(assert (= (and b!452524 ((_ is ValueCellFull!5721) mapDefault!19830)) b!452521))

(assert (= start!40810 b!452524))

(declare-fun b_lambda!9599 () Bool)

(assert (=> (not b_lambda!9599) (not b!452520)))

(declare-fun t!13913 () Bool)

(declare-fun tb!3779 () Bool)

(assert (=> (and start!40810 (= defaultEntry!557 defaultEntry!557) t!13913) tb!3779))

(declare-fun result!7087 () Bool)

(assert (=> tb!3779 (= result!7087 tp_is_empty!12129)))

(assert (=> b!452520 t!13913))

(declare-fun b_and!18889 () Bool)

(assert (= b_and!18887 (and (=> t!13913 result!7087) b_and!18889)))

(declare-fun m!436297 () Bool)

(assert (=> start!40810 m!436297))

(declare-fun m!436299 () Bool)

(assert (=> start!40810 m!436299))

(declare-fun m!436301 () Bool)

(assert (=> b!452527 m!436301))

(declare-fun m!436303 () Bool)

(assert (=> b!452526 m!436303))

(declare-fun m!436305 () Bool)

(assert (=> b!452528 m!436305))

(declare-fun m!436307 () Bool)

(assert (=> b!452528 m!436307))

(declare-fun m!436309 () Bool)

(assert (=> b!452528 m!436309))

(declare-fun m!436311 () Bool)

(assert (=> b!452529 m!436311))

(declare-fun m!436313 () Bool)

(assert (=> b!452520 m!436313))

(declare-fun m!436315 () Bool)

(assert (=> b!452520 m!436315))

(assert (=> b!452520 m!436307))

(declare-fun m!436317 () Bool)

(assert (=> b!452520 m!436317))

(declare-fun m!436319 () Bool)

(assert (=> b!452520 m!436319))

(declare-fun m!436321 () Bool)

(assert (=> b!452520 m!436321))

(declare-fun m!436323 () Bool)

(assert (=> b!452520 m!436323))

(declare-fun m!436325 () Bool)

(assert (=> b!452520 m!436325))

(declare-fun m!436327 () Bool)

(assert (=> b!452520 m!436327))

(declare-fun m!436329 () Bool)

(assert (=> b!452520 m!436329))

(declare-fun m!436331 () Bool)

(assert (=> b!452520 m!436331))

(declare-fun m!436333 () Bool)

(assert (=> b!452520 m!436333))

(assert (=> b!452520 m!436331))

(assert (=> b!452520 m!436323))

(declare-fun m!436335 () Bool)

(assert (=> b!452520 m!436335))

(assert (=> b!452520 m!436325))

(declare-fun m!436337 () Bool)

(assert (=> b!452513 m!436337))

(declare-fun m!436339 () Bool)

(assert (=> b!452516 m!436339))

(declare-fun m!436341 () Bool)

(assert (=> b!452523 m!436341))

(declare-fun m!436343 () Bool)

(assert (=> b!452523 m!436343))

(declare-fun m!436345 () Bool)

(assert (=> mapNonEmpty!19830 m!436345))

(declare-fun m!436347 () Bool)

(assert (=> bm!29981 m!436347))

(declare-fun m!436349 () Bool)

(assert (=> b!452519 m!436349))

(assert (=> b!452519 m!436349))

(declare-fun m!436351 () Bool)

(assert (=> b!452519 m!436351))

(declare-fun m!436353 () Bool)

(assert (=> b!452519 m!436353))

(declare-fun m!436355 () Bool)

(assert (=> b!452515 m!436355))

(declare-fun m!436357 () Bool)

(assert (=> b!452525 m!436357))

(declare-fun m!436359 () Bool)

(assert (=> b!452514 m!436359))

(declare-fun m!436361 () Bool)

(assert (=> bm!29980 m!436361))

(check-sat (not b!452519) (not b!452529) (not bm!29981) (not b!452526) (not b!452527) b_and!18889 (not b_lambda!9599) tp_is_empty!12129 (not b!452528) (not start!40810) (not b!452523) (not b!452513) (not b_next!10791) (not b!452516) (not mapNonEmpty!19830) (not b!452515) (not b!452520) (not bm!29980) (not b!452525))
(check-sat b_and!18889 (not b_next!10791))
