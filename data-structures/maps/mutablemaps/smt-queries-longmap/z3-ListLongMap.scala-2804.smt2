; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40722 () Bool)

(assert start!40722)

(declare-fun b_free!10725 () Bool)

(declare-fun b_next!10725 () Bool)

(assert (=> start!40722 (= b_free!10725 (not b_next!10725))))

(declare-fun tp!37994 () Bool)

(declare-fun b_and!18751 () Bool)

(assert (=> start!40722 (= tp!37994 b_and!18751)))

(declare-fun res!268179 () Bool)

(declare-fun e!263932 () Bool)

(assert (=> start!40722 (=> (not res!268179) (not e!263932))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!27893 0))(
  ( (array!27894 (arr!13389 (Array (_ BitVec 32) (_ BitVec 64))) (size!13741 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27893)

(assert (=> start!40722 (= res!268179 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13741 _keys!709))))))

(assert (=> start!40722 e!263932))

(declare-fun tp_is_empty!12063 () Bool)

(assert (=> start!40722 tp_is_empty!12063))

(assert (=> start!40722 tp!37994))

(assert (=> start!40722 true))

(declare-datatypes ((V!17189 0))(
  ( (V!17190 (val!6076 Int)) )
))
(declare-datatypes ((ValueCell!5688 0))(
  ( (ValueCellFull!5688 (v!8327 V!17189)) (EmptyCell!5688) )
))
(declare-datatypes ((array!27895 0))(
  ( (array!27896 (arr!13390 (Array (_ BitVec 32) ValueCell!5688)) (size!13742 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27895)

(declare-fun e!263940 () Bool)

(declare-fun array_inv!9690 (array!27895) Bool)

(assert (=> start!40722 (and (array_inv!9690 _values!549) e!263940)))

(declare-fun array_inv!9691 (array!27893) Bool)

(assert (=> start!40722 (array_inv!9691 _keys!709)))

(declare-fun mapNonEmpty!19728 () Bool)

(declare-fun mapRes!19728 () Bool)

(declare-fun tp!37995 () Bool)

(declare-fun e!263936 () Bool)

(assert (=> mapNonEmpty!19728 (= mapRes!19728 (and tp!37995 e!263936))))

(declare-fun mapValue!19728 () ValueCell!5688)

(declare-fun mapKey!19728 () (_ BitVec 32))

(declare-fun mapRest!19728 () (Array (_ BitVec 32) ValueCell!5688))

(assert (=> mapNonEmpty!19728 (= (arr!13390 _values!549) (store mapRest!19728 mapKey!19728 mapValue!19728))))

(declare-fun b!450424 () Bool)

(declare-fun e!263934 () Bool)

(declare-datatypes ((tuple2!7926 0))(
  ( (tuple2!7927 (_1!3973 (_ BitVec 64)) (_2!3973 V!17189)) )
))
(declare-datatypes ((List!8035 0))(
  ( (Nil!8032) (Cons!8031 (h!8887 tuple2!7926) (t!13805 List!8035)) )
))
(declare-datatypes ((ListLongMap!6853 0))(
  ( (ListLongMap!6854 (toList!3442 List!8035)) )
))
(declare-fun call!29764 () ListLongMap!6853)

(declare-fun call!29765 () ListLongMap!6853)

(assert (=> b!450424 (= e!263934 (= call!29764 call!29765))))

(declare-fun b!450425 () Bool)

(declare-fun res!268186 () Bool)

(assert (=> b!450425 (=> (not res!268186) (not e!263932))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!450425 (= res!268186 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13741 _keys!709))))))

(declare-fun b!450426 () Bool)

(declare-fun res!268182 () Bool)

(assert (=> b!450426 (=> (not res!268182) (not e!263932))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!450426 (= res!268182 (validMask!0 mask!1025))))

(declare-fun b!450427 () Bool)

(declare-fun e!263935 () Bool)

(assert (=> b!450427 (= e!263932 e!263935)))

(declare-fun res!268178 () Bool)

(assert (=> b!450427 (=> (not res!268178) (not e!263935))))

(declare-fun lt!204622 () array!27893)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27893 (_ BitVec 32)) Bool)

(assert (=> b!450427 (= res!268178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204622 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!450427 (= lt!204622 (array!27894 (store (arr!13389 _keys!709) i!563 k0!794) (size!13741 _keys!709)))))

(declare-fun b!450428 () Bool)

(declare-fun e!263937 () Bool)

(assert (=> b!450428 (= e!263937 tp_is_empty!12063)))

(declare-fun c!55919 () Bool)

(declare-fun minValue!515 () V!17189)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun bm!29761 () Bool)

(declare-fun zeroValue!515 () V!17189)

(declare-fun lt!204621 () array!27895)

(declare-fun getCurrentListMapNoExtraKeys!1620 (array!27893 array!27895 (_ BitVec 32) (_ BitVec 32) V!17189 V!17189 (_ BitVec 32) Int) ListLongMap!6853)

(assert (=> bm!29761 (= call!29765 (getCurrentListMapNoExtraKeys!1620 (ite c!55919 lt!204622 _keys!709) (ite c!55919 lt!204621 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450429 () Bool)

(assert (=> b!450429 (= e!263936 tp_is_empty!12063)))

(declare-fun b!450430 () Bool)

(assert (=> b!450430 (= e!263940 (and e!263937 mapRes!19728))))

(declare-fun condMapEmpty!19728 () Bool)

(declare-fun mapDefault!19728 () ValueCell!5688)

(assert (=> b!450430 (= condMapEmpty!19728 (= (arr!13390 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5688)) mapDefault!19728)))))

(declare-fun bm!29762 () Bool)

(assert (=> bm!29762 (= call!29764 (getCurrentListMapNoExtraKeys!1620 (ite c!55919 _keys!709 lt!204622) (ite c!55919 _values!549 lt!204621) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450431 () Bool)

(declare-fun res!268185 () Bool)

(assert (=> b!450431 (=> (not res!268185) (not e!263932))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!450431 (= res!268185 (validKeyInArray!0 k0!794))))

(declare-fun b!450432 () Bool)

(declare-fun res!268189 () Bool)

(assert (=> b!450432 (=> (not res!268189) (not e!263932))))

(assert (=> b!450432 (= res!268189 (and (= (size!13742 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13741 _keys!709) (size!13742 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!450433 () Bool)

(declare-fun res!268187 () Bool)

(assert (=> b!450433 (=> (not res!268187) (not e!263935))))

(assert (=> b!450433 (= res!268187 (bvsle from!863 i!563))))

(declare-fun b!450434 () Bool)

(declare-fun res!268181 () Bool)

(assert (=> b!450434 (=> (not res!268181) (not e!263932))))

(assert (=> b!450434 (= res!268181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!450435 () Bool)

(declare-fun res!268190 () Bool)

(assert (=> b!450435 (=> (not res!268190) (not e!263935))))

(declare-datatypes ((List!8036 0))(
  ( (Nil!8033) (Cons!8032 (h!8888 (_ BitVec 64)) (t!13806 List!8036)) )
))
(declare-fun arrayNoDuplicates!0 (array!27893 (_ BitVec 32) List!8036) Bool)

(assert (=> b!450435 (= res!268190 (arrayNoDuplicates!0 lt!204622 #b00000000000000000000000000000000 Nil!8033))))

(declare-fun b!450436 () Bool)

(declare-fun v!412 () V!17189)

(declare-fun +!1513 (ListLongMap!6853 tuple2!7926) ListLongMap!6853)

(assert (=> b!450436 (= e!263934 (= call!29765 (+!1513 call!29764 (tuple2!7927 k0!794 v!412))))))

(declare-fun b!450437 () Bool)

(declare-fun e!263938 () Bool)

(assert (=> b!450437 (= e!263938 (bvslt i!563 (size!13742 _values!549)))))

(declare-fun b!450438 () Bool)

(declare-fun res!268188 () Bool)

(assert (=> b!450438 (=> (not res!268188) (not e!263932))))

(assert (=> b!450438 (= res!268188 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8033))))

(declare-fun b!450439 () Bool)

(declare-fun res!268180 () Bool)

(assert (=> b!450439 (=> (not res!268180) (not e!263932))))

(assert (=> b!450439 (= res!268180 (or (= (select (arr!13389 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13389 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19728 () Bool)

(assert (=> mapIsEmpty!19728 mapRes!19728))

(declare-fun b!450440 () Bool)

(declare-fun res!268183 () Bool)

(assert (=> b!450440 (=> (not res!268183) (not e!263932))))

(declare-fun arrayContainsKey!0 (array!27893 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!450440 (= res!268183 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!450441 () Bool)

(declare-fun e!263933 () Bool)

(assert (=> b!450441 (= e!263933 (not e!263938))))

(declare-fun res!268184 () Bool)

(assert (=> b!450441 (=> res!268184 e!263938)))

(assert (=> b!450441 (= res!268184 (validKeyInArray!0 (select (arr!13389 _keys!709) from!863)))))

(assert (=> b!450441 e!263934))

(assert (=> b!450441 (= c!55919 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!13131 0))(
  ( (Unit!13132) )
))
(declare-fun lt!204620 () Unit!13131)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!684 (array!27893 array!27895 (_ BitVec 32) (_ BitVec 32) V!17189 V!17189 (_ BitVec 32) (_ BitVec 64) V!17189 (_ BitVec 32) Int) Unit!13131)

(assert (=> b!450441 (= lt!204620 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!684 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450442 () Bool)

(assert (=> b!450442 (= e!263935 e!263933)))

(declare-fun res!268191 () Bool)

(assert (=> b!450442 (=> (not res!268191) (not e!263933))))

(assert (=> b!450442 (= res!268191 (= from!863 i!563))))

(declare-fun lt!204619 () ListLongMap!6853)

(assert (=> b!450442 (= lt!204619 (getCurrentListMapNoExtraKeys!1620 lt!204622 lt!204621 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!450442 (= lt!204621 (array!27896 (store (arr!13390 _values!549) i!563 (ValueCellFull!5688 v!412)) (size!13742 _values!549)))))

(declare-fun lt!204618 () ListLongMap!6853)

(assert (=> b!450442 (= lt!204618 (getCurrentListMapNoExtraKeys!1620 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (= (and start!40722 res!268179) b!450426))

(assert (= (and b!450426 res!268182) b!450432))

(assert (= (and b!450432 res!268189) b!450434))

(assert (= (and b!450434 res!268181) b!450438))

(assert (= (and b!450438 res!268188) b!450425))

(assert (= (and b!450425 res!268186) b!450431))

(assert (= (and b!450431 res!268185) b!450439))

(assert (= (and b!450439 res!268180) b!450440))

(assert (= (and b!450440 res!268183) b!450427))

(assert (= (and b!450427 res!268178) b!450435))

(assert (= (and b!450435 res!268190) b!450433))

(assert (= (and b!450433 res!268187) b!450442))

(assert (= (and b!450442 res!268191) b!450441))

(assert (= (and b!450441 c!55919) b!450436))

(assert (= (and b!450441 (not c!55919)) b!450424))

(assert (= (or b!450436 b!450424) bm!29761))

(assert (= (or b!450436 b!450424) bm!29762))

(assert (= (and b!450441 (not res!268184)) b!450437))

(assert (= (and b!450430 condMapEmpty!19728) mapIsEmpty!19728))

(assert (= (and b!450430 (not condMapEmpty!19728)) mapNonEmpty!19728))

(get-info :version)

(assert (= (and mapNonEmpty!19728 ((_ is ValueCellFull!5688) mapValue!19728)) b!450429))

(assert (= (and b!450430 ((_ is ValueCellFull!5688) mapDefault!19728)) b!450428))

(assert (= start!40722 b!450430))

(declare-fun m!434315 () Bool)

(assert (=> b!450427 m!434315))

(declare-fun m!434317 () Bool)

(assert (=> b!450427 m!434317))

(declare-fun m!434319 () Bool)

(assert (=> b!450434 m!434319))

(declare-fun m!434321 () Bool)

(assert (=> b!450438 m!434321))

(declare-fun m!434323 () Bool)

(assert (=> b!450440 m!434323))

(declare-fun m!434325 () Bool)

(assert (=> b!450426 m!434325))

(declare-fun m!434327 () Bool)

(assert (=> b!450435 m!434327))

(declare-fun m!434329 () Bool)

(assert (=> b!450441 m!434329))

(assert (=> b!450441 m!434329))

(declare-fun m!434331 () Bool)

(assert (=> b!450441 m!434331))

(declare-fun m!434333 () Bool)

(assert (=> b!450441 m!434333))

(declare-fun m!434335 () Bool)

(assert (=> start!40722 m!434335))

(declare-fun m!434337 () Bool)

(assert (=> start!40722 m!434337))

(declare-fun m!434339 () Bool)

(assert (=> b!450436 m!434339))

(declare-fun m!434341 () Bool)

(assert (=> b!450442 m!434341))

(declare-fun m!434343 () Bool)

(assert (=> b!450442 m!434343))

(declare-fun m!434345 () Bool)

(assert (=> b!450442 m!434345))

(declare-fun m!434347 () Bool)

(assert (=> mapNonEmpty!19728 m!434347))

(declare-fun m!434349 () Bool)

(assert (=> b!450431 m!434349))

(declare-fun m!434351 () Bool)

(assert (=> bm!29762 m!434351))

(declare-fun m!434353 () Bool)

(assert (=> b!450439 m!434353))

(declare-fun m!434355 () Bool)

(assert (=> bm!29761 m!434355))

(check-sat (not b!450426) (not b!450427) (not b!450434) (not mapNonEmpty!19728) (not b!450431) (not bm!29761) tp_is_empty!12063 b_and!18751 (not start!40722) (not bm!29762) (not b!450441) (not b!450442) (not b!450435) (not b!450438) (not b!450436) (not b!450440) (not b_next!10725))
(check-sat b_and!18751 (not b_next!10725))
