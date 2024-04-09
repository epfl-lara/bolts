; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40728 () Bool)

(assert start!40728)

(declare-fun b_free!10731 () Bool)

(declare-fun b_next!10731 () Bool)

(assert (=> start!40728 (= b_free!10731 (not b_next!10731))))

(declare-fun tp!38012 () Bool)

(declare-fun b_and!18757 () Bool)

(assert (=> start!40728 (= tp!38012 b_and!18757)))

(declare-fun b!450595 () Bool)

(declare-fun res!268310 () Bool)

(declare-fun e!264019 () Bool)

(assert (=> b!450595 (=> (not res!268310) (not e!264019))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!27905 0))(
  ( (array!27906 (arr!13395 (Array (_ BitVec 32) (_ BitVec 64))) (size!13747 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27905)

(assert (=> b!450595 (= res!268310 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13747 _keys!709))))))

(declare-datatypes ((V!17197 0))(
  ( (V!17198 (val!6079 Int)) )
))
(declare-datatypes ((tuple2!7932 0))(
  ( (tuple2!7933 (_1!3976 (_ BitVec 64)) (_2!3976 V!17197)) )
))
(declare-datatypes ((List!8041 0))(
  ( (Nil!8038) (Cons!8037 (h!8893 tuple2!7932) (t!13811 List!8041)) )
))
(declare-datatypes ((ListLongMap!6859 0))(
  ( (ListLongMap!6860 (toList!3445 List!8041)) )
))
(declare-fun call!29782 () ListLongMap!6859)

(declare-fun call!29783 () ListLongMap!6859)

(declare-fun e!264020 () Bool)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun b!450596 () Bool)

(declare-fun v!412 () V!17197)

(declare-fun +!1515 (ListLongMap!6859 tuple2!7932) ListLongMap!6859)

(assert (=> b!450596 (= e!264020 (= call!29782 (+!1515 call!29783 (tuple2!7933 k0!794 v!412))))))

(declare-fun minValue!515 () V!17197)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5691 0))(
  ( (ValueCellFull!5691 (v!8330 V!17197)) (EmptyCell!5691) )
))
(declare-datatypes ((array!27907 0))(
  ( (array!27908 (arr!13396 (Array (_ BitVec 32) ValueCell!5691)) (size!13748 (_ BitVec 32))) )
))
(declare-fun lt!204668 () array!27907)

(declare-fun _values!549 () array!27907)

(declare-fun lt!204671 () array!27905)

(declare-fun c!55928 () Bool)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun bm!29779 () Bool)

(declare-fun zeroValue!515 () V!17197)

(declare-fun getCurrentListMapNoExtraKeys!1623 (array!27905 array!27907 (_ BitVec 32) (_ BitVec 32) V!17197 V!17197 (_ BitVec 32) Int) ListLongMap!6859)

(assert (=> bm!29779 (= call!29783 (getCurrentListMapNoExtraKeys!1623 (ite c!55928 _keys!709 lt!204671) (ite c!55928 _values!549 lt!204668) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!19737 () Bool)

(declare-fun mapRes!19737 () Bool)

(declare-fun tp!38013 () Bool)

(declare-fun e!264017 () Bool)

(assert (=> mapNonEmpty!19737 (= mapRes!19737 (and tp!38013 e!264017))))

(declare-fun mapValue!19737 () ValueCell!5691)

(declare-fun mapKey!19737 () (_ BitVec 32))

(declare-fun mapRest!19737 () (Array (_ BitVec 32) ValueCell!5691))

(assert (=> mapNonEmpty!19737 (= (arr!13396 _values!549) (store mapRest!19737 mapKey!19737 mapValue!19737))))

(declare-fun b!450597 () Bool)

(declare-fun res!268315 () Bool)

(assert (=> b!450597 (=> (not res!268315) (not e!264019))))

(assert (=> b!450597 (= res!268315 (or (= (select (arr!13395 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13395 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!450598 () Bool)

(declare-fun res!268312 () Bool)

(assert (=> b!450598 (=> (not res!268312) (not e!264019))))

(declare-datatypes ((List!8042 0))(
  ( (Nil!8039) (Cons!8038 (h!8894 (_ BitVec 64)) (t!13812 List!8042)) )
))
(declare-fun arrayNoDuplicates!0 (array!27905 (_ BitVec 32) List!8042) Bool)

(assert (=> b!450598 (= res!268312 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8039))))

(declare-fun b!450599 () Bool)

(declare-fun e!264021 () Bool)

(declare-fun e!264014 () Bool)

(assert (=> b!450599 (= e!264021 (and e!264014 mapRes!19737))))

(declare-fun condMapEmpty!19737 () Bool)

(declare-fun mapDefault!19737 () ValueCell!5691)

(assert (=> b!450599 (= condMapEmpty!19737 (= (arr!13396 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5691)) mapDefault!19737)))))

(declare-fun b!450600 () Bool)

(declare-fun res!268311 () Bool)

(declare-fun e!264016 () Bool)

(assert (=> b!450600 (=> (not res!268311) (not e!264016))))

(assert (=> b!450600 (= res!268311 (arrayNoDuplicates!0 lt!204671 #b00000000000000000000000000000000 Nil!8039))))

(declare-fun b!450601 () Bool)

(declare-fun res!268306 () Bool)

(assert (=> b!450601 (=> (not res!268306) (not e!264016))))

(assert (=> b!450601 (= res!268306 (bvsle from!863 i!563))))

(declare-fun b!450602 () Bool)

(assert (=> b!450602 (= e!264019 e!264016)))

(declare-fun res!268316 () Bool)

(assert (=> b!450602 (=> (not res!268316) (not e!264016))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27905 (_ BitVec 32)) Bool)

(assert (=> b!450602 (= res!268316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204671 mask!1025))))

(assert (=> b!450602 (= lt!204671 (array!27906 (store (arr!13395 _keys!709) i!563 k0!794) (size!13747 _keys!709)))))

(declare-fun b!450603 () Bool)

(declare-fun res!268305 () Bool)

(assert (=> b!450603 (=> (not res!268305) (not e!264019))))

(assert (=> b!450603 (= res!268305 (and (= (size!13748 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13747 _keys!709) (size!13748 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!450604 () Bool)

(declare-fun res!268307 () Bool)

(assert (=> b!450604 (=> (not res!268307) (not e!264019))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!450604 (= res!268307 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!19737 () Bool)

(assert (=> mapIsEmpty!19737 mapRes!19737))

(declare-fun b!450605 () Bool)

(declare-fun e!264018 () Bool)

(declare-fun e!264015 () Bool)

(assert (=> b!450605 (= e!264018 (not e!264015))))

(declare-fun res!268309 () Bool)

(assert (=> b!450605 (=> res!268309 e!264015)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!450605 (= res!268309 (validKeyInArray!0 (select (arr!13395 _keys!709) from!863)))))

(assert (=> b!450605 e!264020))

(assert (=> b!450605 (= c!55928 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!13133 0))(
  ( (Unit!13134) )
))
(declare-fun lt!204669 () Unit!13133)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!685 (array!27905 array!27907 (_ BitVec 32) (_ BitVec 32) V!17197 V!17197 (_ BitVec 32) (_ BitVec 64) V!17197 (_ BitVec 32) Int) Unit!13133)

(assert (=> b!450605 (= lt!204669 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!685 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450606 () Bool)

(declare-fun res!268304 () Bool)

(assert (=> b!450606 (=> (not res!268304) (not e!264019))))

(assert (=> b!450606 (= res!268304 (validKeyInArray!0 k0!794))))

(declare-fun b!450607 () Bool)

(assert (=> b!450607 (= e!264016 e!264018)))

(declare-fun res!268308 () Bool)

(assert (=> b!450607 (=> (not res!268308) (not e!264018))))

(assert (=> b!450607 (= res!268308 (= from!863 i!563))))

(declare-fun lt!204672 () ListLongMap!6859)

(assert (=> b!450607 (= lt!204672 (getCurrentListMapNoExtraKeys!1623 lt!204671 lt!204668 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!450607 (= lt!204668 (array!27908 (store (arr!13396 _values!549) i!563 (ValueCellFull!5691 v!412)) (size!13748 _values!549)))))

(declare-fun lt!204673 () ListLongMap!6859)

(assert (=> b!450607 (= lt!204673 (getCurrentListMapNoExtraKeys!1623 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!450608 () Bool)

(assert (=> b!450608 (= e!264020 (= call!29783 call!29782))))

(declare-fun b!450609 () Bool)

(assert (=> b!450609 (= e!264015 (bvslt from!863 (size!13747 _keys!709)))))

(declare-fun lt!204670 () ListLongMap!6859)

(assert (=> b!450609 (= lt!204670 (getCurrentListMapNoExtraKeys!1623 lt!204671 lt!204668 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450610 () Bool)

(declare-fun tp_is_empty!12069 () Bool)

(assert (=> b!450610 (= e!264017 tp_is_empty!12069)))

(declare-fun b!450611 () Bool)

(assert (=> b!450611 (= e!264014 tp_is_empty!12069)))

(declare-fun b!450612 () Bool)

(declare-fun res!268317 () Bool)

(assert (=> b!450612 (=> (not res!268317) (not e!264019))))

(declare-fun arrayContainsKey!0 (array!27905 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!450612 (= res!268317 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun bm!29780 () Bool)

(assert (=> bm!29780 (= call!29782 (getCurrentListMapNoExtraKeys!1623 (ite c!55928 lt!204671 _keys!709) (ite c!55928 lt!204668 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450613 () Bool)

(declare-fun res!268313 () Bool)

(assert (=> b!450613 (=> (not res!268313) (not e!264019))))

(assert (=> b!450613 (= res!268313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!268314 () Bool)

(assert (=> start!40728 (=> (not res!268314) (not e!264019))))

(assert (=> start!40728 (= res!268314 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13747 _keys!709))))))

(assert (=> start!40728 e!264019))

(assert (=> start!40728 tp_is_empty!12069))

(assert (=> start!40728 tp!38012))

(assert (=> start!40728 true))

(declare-fun array_inv!9692 (array!27907) Bool)

(assert (=> start!40728 (and (array_inv!9692 _values!549) e!264021)))

(declare-fun array_inv!9693 (array!27905) Bool)

(assert (=> start!40728 (array_inv!9693 _keys!709)))

(assert (= (and start!40728 res!268314) b!450604))

(assert (= (and b!450604 res!268307) b!450603))

(assert (= (and b!450603 res!268305) b!450613))

(assert (= (and b!450613 res!268313) b!450598))

(assert (= (and b!450598 res!268312) b!450595))

(assert (= (and b!450595 res!268310) b!450606))

(assert (= (and b!450606 res!268304) b!450597))

(assert (= (and b!450597 res!268315) b!450612))

(assert (= (and b!450612 res!268317) b!450602))

(assert (= (and b!450602 res!268316) b!450600))

(assert (= (and b!450600 res!268311) b!450601))

(assert (= (and b!450601 res!268306) b!450607))

(assert (= (and b!450607 res!268308) b!450605))

(assert (= (and b!450605 c!55928) b!450596))

(assert (= (and b!450605 (not c!55928)) b!450608))

(assert (= (or b!450596 b!450608) bm!29780))

(assert (= (or b!450596 b!450608) bm!29779))

(assert (= (and b!450605 (not res!268309)) b!450609))

(assert (= (and b!450599 condMapEmpty!19737) mapIsEmpty!19737))

(assert (= (and b!450599 (not condMapEmpty!19737)) mapNonEmpty!19737))

(get-info :version)

(assert (= (and mapNonEmpty!19737 ((_ is ValueCellFull!5691) mapValue!19737)) b!450610))

(assert (= (and b!450599 ((_ is ValueCellFull!5691) mapDefault!19737)) b!450611))

(assert (= start!40728 b!450599))

(declare-fun m!434443 () Bool)

(assert (=> b!450604 m!434443))

(declare-fun m!434445 () Bool)

(assert (=> b!450600 m!434445))

(declare-fun m!434447 () Bool)

(assert (=> b!450596 m!434447))

(declare-fun m!434449 () Bool)

(assert (=> b!450597 m!434449))

(declare-fun m!434451 () Bool)

(assert (=> b!450613 m!434451))

(declare-fun m!434453 () Bool)

(assert (=> b!450607 m!434453))

(declare-fun m!434455 () Bool)

(assert (=> b!450607 m!434455))

(declare-fun m!434457 () Bool)

(assert (=> b!450607 m!434457))

(declare-fun m!434459 () Bool)

(assert (=> mapNonEmpty!19737 m!434459))

(declare-fun m!434461 () Bool)

(assert (=> bm!29780 m!434461))

(declare-fun m!434463 () Bool)

(assert (=> bm!29779 m!434463))

(declare-fun m!434465 () Bool)

(assert (=> b!450612 m!434465))

(declare-fun m!434467 () Bool)

(assert (=> b!450602 m!434467))

(declare-fun m!434469 () Bool)

(assert (=> b!450602 m!434469))

(declare-fun m!434471 () Bool)

(assert (=> b!450606 m!434471))

(declare-fun m!434473 () Bool)

(assert (=> b!450605 m!434473))

(assert (=> b!450605 m!434473))

(declare-fun m!434475 () Bool)

(assert (=> b!450605 m!434475))

(declare-fun m!434477 () Bool)

(assert (=> b!450605 m!434477))

(declare-fun m!434479 () Bool)

(assert (=> b!450598 m!434479))

(declare-fun m!434481 () Bool)

(assert (=> start!40728 m!434481))

(declare-fun m!434483 () Bool)

(assert (=> start!40728 m!434483))

(declare-fun m!434485 () Bool)

(assert (=> b!450609 m!434485))

(check-sat (not b!450613) b_and!18757 tp_is_empty!12069 (not b_next!10731) (not b!450607) (not b!450612) (not mapNonEmpty!19737) (not bm!29779) (not b!450605) (not b!450598) (not b!450604) (not b!450609) (not b!450596) (not bm!29780) (not b!450600) (not start!40728) (not b!450602) (not b!450606))
(check-sat b_and!18757 (not b_next!10731))
