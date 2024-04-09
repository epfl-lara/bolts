; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20444 () Bool)

(assert start!20444)

(declare-fun b_free!5091 () Bool)

(declare-fun b_next!5091 () Bool)

(assert (=> start!20444 (= b_free!5091 (not b_next!5091))))

(declare-fun tp!18304 () Bool)

(declare-fun b_and!11855 () Bool)

(assert (=> start!20444 (= tp!18304 b_and!11855)))

(declare-fun b!202222 () Bool)

(declare-fun res!96866 () Bool)

(declare-fun e!132486 () Bool)

(assert (=> b!202222 (=> (not res!96866) (not e!132486))))

(declare-datatypes ((array!9118 0))(
  ( (array!9119 (arr!4309 (Array (_ BitVec 32) (_ BitVec 64))) (size!4634 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9118)

(declare-datatypes ((List!2744 0))(
  ( (Nil!2741) (Cons!2740 (h!3382 (_ BitVec 64)) (t!7683 List!2744)) )
))
(declare-fun arrayNoDuplicates!0 (array!9118 (_ BitVec 32) List!2744) Bool)

(assert (=> b!202222 (= res!96866 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2741))))

(declare-fun b!202223 () Bool)

(declare-fun e!132488 () Bool)

(assert (=> b!202223 (= e!132488 (bvsle #b00000000000000000000000000000000 (size!4634 _keys!825)))))

(declare-datatypes ((V!6243 0))(
  ( (V!6244 (val!2518 Int)) )
))
(declare-datatypes ((tuple2!3812 0))(
  ( (tuple2!3813 (_1!1916 (_ BitVec 64)) (_2!1916 V!6243)) )
))
(declare-fun lt!101505 () tuple2!3812)

(declare-datatypes ((List!2745 0))(
  ( (Nil!2742) (Cons!2741 (h!3383 tuple2!3812) (t!7684 List!2745)) )
))
(declare-datatypes ((ListLongMap!2739 0))(
  ( (ListLongMap!2740 (toList!1385 List!2745)) )
))
(declare-fun lt!101495 () ListLongMap!2739)

(declare-fun lt!101498 () ListLongMap!2739)

(declare-fun lt!101504 () tuple2!3812)

(declare-fun +!402 (ListLongMap!2739 tuple2!3812) ListLongMap!2739)

(assert (=> b!202223 (= (+!402 lt!101498 lt!101505) (+!402 lt!101495 lt!101504))))

(declare-fun minValue!615 () V!6243)

(declare-fun lt!101508 () ListLongMap!2739)

(declare-fun v!520 () V!6243)

(declare-datatypes ((Unit!6111 0))(
  ( (Unit!6112) )
))
(declare-fun lt!101506 () Unit!6111)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun addCommutativeForDiffKeys!123 (ListLongMap!2739 (_ BitVec 64) V!6243 (_ BitVec 64) V!6243) Unit!6111)

(assert (=> b!202223 (= lt!101506 (addCommutativeForDiffKeys!123 lt!101508 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun mapIsEmpty!8489 () Bool)

(declare-fun mapRes!8489 () Bool)

(assert (=> mapIsEmpty!8489 mapRes!8489))

(declare-fun b!202225 () Bool)

(declare-fun res!96873 () Bool)

(assert (=> b!202225 (=> (not res!96873) (not e!132486))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9118 (_ BitVec 32)) Bool)

(assert (=> b!202225 (= res!96873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!202226 () Bool)

(declare-fun e!132484 () Bool)

(declare-fun e!132485 () Bool)

(assert (=> b!202226 (= e!132484 (and e!132485 mapRes!8489))))

(declare-fun condMapEmpty!8489 () Bool)

(declare-datatypes ((ValueCell!2130 0))(
  ( (ValueCellFull!2130 (v!4484 V!6243)) (EmptyCell!2130) )
))
(declare-datatypes ((array!9120 0))(
  ( (array!9121 (arr!4310 (Array (_ BitVec 32) ValueCell!2130)) (size!4635 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9120)

(declare-fun mapDefault!8489 () ValueCell!2130)

(assert (=> b!202226 (= condMapEmpty!8489 (= (arr!4310 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2130)) mapDefault!8489)))))

(declare-fun b!202227 () Bool)

(declare-fun res!96867 () Bool)

(assert (=> b!202227 (=> (not res!96867) (not e!132486))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!202227 (= res!96867 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4634 _keys!825))))))

(declare-fun b!202228 () Bool)

(declare-fun e!132490 () Bool)

(declare-fun tp_is_empty!4947 () Bool)

(assert (=> b!202228 (= e!132490 tp_is_empty!4947)))

(declare-fun b!202229 () Bool)

(declare-fun res!96868 () Bool)

(assert (=> b!202229 (=> (not res!96868) (not e!132486))))

(assert (=> b!202229 (= res!96868 (= (select (arr!4309 _keys!825) i!601) k0!843))))

(declare-fun b!202230 () Bool)

(declare-fun res!96869 () Bool)

(assert (=> b!202230 (=> (not res!96869) (not e!132486))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!202230 (= res!96869 (validKeyInArray!0 k0!843))))

(declare-fun b!202231 () Bool)

(declare-fun e!132487 () Bool)

(assert (=> b!202231 (= e!132487 e!132488)))

(declare-fun res!96870 () Bool)

(assert (=> b!202231 (=> res!96870 e!132488)))

(assert (=> b!202231 (= res!96870 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!101507 () ListLongMap!2739)

(assert (=> b!202231 (= lt!101507 lt!101498)))

(assert (=> b!202231 (= lt!101498 (+!402 lt!101508 lt!101504))))

(declare-fun lt!101501 () ListLongMap!2739)

(declare-fun zeroValue!615 () V!6243)

(declare-fun lt!101497 () Unit!6111)

(assert (=> b!202231 (= lt!101497 (addCommutativeForDiffKeys!123 lt!101501 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!101502 () ListLongMap!2739)

(assert (=> b!202231 (= lt!101502 (+!402 lt!101507 lt!101505))))

(declare-fun lt!101494 () ListLongMap!2739)

(declare-fun lt!101509 () tuple2!3812)

(assert (=> b!202231 (= lt!101507 (+!402 lt!101494 lt!101509))))

(declare-fun lt!101503 () ListLongMap!2739)

(assert (=> b!202231 (= lt!101503 lt!101495)))

(assert (=> b!202231 (= lt!101495 (+!402 lt!101508 lt!101505))))

(assert (=> b!202231 (= lt!101508 (+!402 lt!101501 lt!101509))))

(declare-fun lt!101500 () ListLongMap!2739)

(assert (=> b!202231 (= lt!101502 (+!402 (+!402 lt!101500 lt!101509) lt!101505))))

(assert (=> b!202231 (= lt!101505 (tuple2!3813 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!202231 (= lt!101509 (tuple2!3813 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!202232 () Bool)

(assert (=> b!202232 (= e!132486 (not e!132487))))

(declare-fun res!96871 () Bool)

(assert (=> b!202232 (=> res!96871 e!132487)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!202232 (= res!96871 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!963 (array!9118 array!9120 (_ BitVec 32) (_ BitVec 32) V!6243 V!6243 (_ BitVec 32) Int) ListLongMap!2739)

(assert (=> b!202232 (= lt!101503 (getCurrentListMap!963 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!101496 () array!9120)

(assert (=> b!202232 (= lt!101502 (getCurrentListMap!963 _keys!825 lt!101496 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202232 (and (= lt!101500 lt!101494) (= lt!101494 lt!101500))))

(assert (=> b!202232 (= lt!101494 (+!402 lt!101501 lt!101504))))

(assert (=> b!202232 (= lt!101504 (tuple2!3813 k0!843 v!520))))

(declare-fun lt!101499 () Unit!6111)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!76 (array!9118 array!9120 (_ BitVec 32) (_ BitVec 32) V!6243 V!6243 (_ BitVec 32) (_ BitVec 64) V!6243 (_ BitVec 32) Int) Unit!6111)

(assert (=> b!202232 (= lt!101499 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!76 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!334 (array!9118 array!9120 (_ BitVec 32) (_ BitVec 32) V!6243 V!6243 (_ BitVec 32) Int) ListLongMap!2739)

(assert (=> b!202232 (= lt!101500 (getCurrentListMapNoExtraKeys!334 _keys!825 lt!101496 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202232 (= lt!101496 (array!9121 (store (arr!4310 _values!649) i!601 (ValueCellFull!2130 v!520)) (size!4635 _values!649)))))

(assert (=> b!202232 (= lt!101501 (getCurrentListMapNoExtraKeys!334 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!202224 () Bool)

(declare-fun res!96874 () Bool)

(assert (=> b!202224 (=> (not res!96874) (not e!132486))))

(assert (=> b!202224 (= res!96874 (and (= (size!4635 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4634 _keys!825) (size!4635 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!96872 () Bool)

(assert (=> start!20444 (=> (not res!96872) (not e!132486))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20444 (= res!96872 (validMask!0 mask!1149))))

(assert (=> start!20444 e!132486))

(declare-fun array_inv!2835 (array!9120) Bool)

(assert (=> start!20444 (and (array_inv!2835 _values!649) e!132484)))

(assert (=> start!20444 true))

(assert (=> start!20444 tp_is_empty!4947))

(declare-fun array_inv!2836 (array!9118) Bool)

(assert (=> start!20444 (array_inv!2836 _keys!825)))

(assert (=> start!20444 tp!18304))

(declare-fun mapNonEmpty!8489 () Bool)

(declare-fun tp!18305 () Bool)

(assert (=> mapNonEmpty!8489 (= mapRes!8489 (and tp!18305 e!132490))))

(declare-fun mapKey!8489 () (_ BitVec 32))

(declare-fun mapRest!8489 () (Array (_ BitVec 32) ValueCell!2130))

(declare-fun mapValue!8489 () ValueCell!2130)

(assert (=> mapNonEmpty!8489 (= (arr!4310 _values!649) (store mapRest!8489 mapKey!8489 mapValue!8489))))

(declare-fun b!202233 () Bool)

(assert (=> b!202233 (= e!132485 tp_is_empty!4947)))

(assert (= (and start!20444 res!96872) b!202224))

(assert (= (and b!202224 res!96874) b!202225))

(assert (= (and b!202225 res!96873) b!202222))

(assert (= (and b!202222 res!96866) b!202227))

(assert (= (and b!202227 res!96867) b!202230))

(assert (= (and b!202230 res!96869) b!202229))

(assert (= (and b!202229 res!96868) b!202232))

(assert (= (and b!202232 (not res!96871)) b!202231))

(assert (= (and b!202231 (not res!96870)) b!202223))

(assert (= (and b!202226 condMapEmpty!8489) mapIsEmpty!8489))

(assert (= (and b!202226 (not condMapEmpty!8489)) mapNonEmpty!8489))

(get-info :version)

(assert (= (and mapNonEmpty!8489 ((_ is ValueCellFull!2130) mapValue!8489)) b!202228))

(assert (= (and b!202226 ((_ is ValueCellFull!2130) mapDefault!8489)) b!202233))

(assert (= start!20444 b!202226))

(declare-fun m!229537 () Bool)

(assert (=> start!20444 m!229537))

(declare-fun m!229539 () Bool)

(assert (=> start!20444 m!229539))

(declare-fun m!229541 () Bool)

(assert (=> start!20444 m!229541))

(declare-fun m!229543 () Bool)

(assert (=> b!202225 m!229543))

(declare-fun m!229545 () Bool)

(assert (=> b!202223 m!229545))

(declare-fun m!229547 () Bool)

(assert (=> b!202223 m!229547))

(declare-fun m!229549 () Bool)

(assert (=> b!202223 m!229549))

(declare-fun m!229551 () Bool)

(assert (=> b!202231 m!229551))

(declare-fun m!229553 () Bool)

(assert (=> b!202231 m!229553))

(declare-fun m!229555 () Bool)

(assert (=> b!202231 m!229555))

(declare-fun m!229557 () Bool)

(assert (=> b!202231 m!229557))

(assert (=> b!202231 m!229555))

(declare-fun m!229559 () Bool)

(assert (=> b!202231 m!229559))

(declare-fun m!229561 () Bool)

(assert (=> b!202231 m!229561))

(declare-fun m!229563 () Bool)

(assert (=> b!202231 m!229563))

(declare-fun m!229565 () Bool)

(assert (=> b!202231 m!229565))

(declare-fun m!229567 () Bool)

(assert (=> b!202232 m!229567))

(declare-fun m!229569 () Bool)

(assert (=> b!202232 m!229569))

(declare-fun m!229571 () Bool)

(assert (=> b!202232 m!229571))

(declare-fun m!229573 () Bool)

(assert (=> b!202232 m!229573))

(declare-fun m!229575 () Bool)

(assert (=> b!202232 m!229575))

(declare-fun m!229577 () Bool)

(assert (=> b!202232 m!229577))

(declare-fun m!229579 () Bool)

(assert (=> b!202232 m!229579))

(declare-fun m!229581 () Bool)

(assert (=> b!202230 m!229581))

(declare-fun m!229583 () Bool)

(assert (=> b!202229 m!229583))

(declare-fun m!229585 () Bool)

(assert (=> mapNonEmpty!8489 m!229585))

(declare-fun m!229587 () Bool)

(assert (=> b!202222 m!229587))

(check-sat b_and!11855 (not mapNonEmpty!8489) (not b_next!5091) (not b!202223) (not b!202230) (not b!202222) (not b!202232) (not start!20444) (not b!202231) tp_is_empty!4947 (not b!202225))
(check-sat b_and!11855 (not b_next!5091))
