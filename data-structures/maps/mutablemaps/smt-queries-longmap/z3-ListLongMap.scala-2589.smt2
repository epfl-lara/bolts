; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39362 () Bool)

(assert start!39362)

(declare-fun b_free!9621 () Bool)

(declare-fun b_next!9621 () Bool)

(assert (=> start!39362 (= b_free!9621 (not b_next!9621))))

(declare-fun tp!34391 () Bool)

(declare-fun b_and!17135 () Bool)

(assert (=> start!39362 (= tp!34391 b_and!17135)))

(declare-fun b!417412 () Bool)

(declare-fun res!243185 () Bool)

(declare-fun e!249033 () Bool)

(assert (=> b!417412 (=> (not res!243185) (not e!249033))))

(declare-datatypes ((array!25381 0))(
  ( (array!25382 (arr!12137 (Array (_ BitVec 32) (_ BitVec 64))) (size!12489 (_ BitVec 32))) )
))
(declare-fun lt!191286 () array!25381)

(declare-datatypes ((List!7072 0))(
  ( (Nil!7069) (Cons!7068 (h!7924 (_ BitVec 64)) (t!12366 List!7072)) )
))
(declare-fun arrayNoDuplicates!0 (array!25381 (_ BitVec 32) List!7072) Bool)

(assert (=> b!417412 (= res!243185 (arrayNoDuplicates!0 lt!191286 #b00000000000000000000000000000000 Nil!7069))))

(declare-fun res!243183 () Bool)

(declare-fun e!249030 () Bool)

(assert (=> start!39362 (=> (not res!243183) (not e!249030))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun _keys!709 () array!25381)

(assert (=> start!39362 (= res!243183 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12489 _keys!709))))))

(assert (=> start!39362 e!249030))

(declare-fun tp_is_empty!10773 () Bool)

(assert (=> start!39362 tp_is_empty!10773))

(assert (=> start!39362 tp!34391))

(assert (=> start!39362 true))

(declare-datatypes ((V!15469 0))(
  ( (V!15470 (val!5431 Int)) )
))
(declare-datatypes ((ValueCell!5043 0))(
  ( (ValueCellFull!5043 (v!7674 V!15469)) (EmptyCell!5043) )
))
(declare-datatypes ((array!25383 0))(
  ( (array!25384 (arr!12138 (Array (_ BitVec 32) ValueCell!5043)) (size!12490 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25383)

(declare-fun e!249029 () Bool)

(declare-fun array_inv!8850 (array!25383) Bool)

(assert (=> start!39362 (and (array_inv!8850 _values!549) e!249029)))

(declare-fun array_inv!8851 (array!25381) Bool)

(assert (=> start!39362 (array_inv!8851 _keys!709)))

(declare-fun b!417413 () Bool)

(declare-fun e!249034 () Bool)

(declare-fun mapRes!17781 () Bool)

(assert (=> b!417413 (= e!249029 (and e!249034 mapRes!17781))))

(declare-fun condMapEmpty!17781 () Bool)

(declare-fun mapDefault!17781 () ValueCell!5043)

(assert (=> b!417413 (= condMapEmpty!17781 (= (arr!12138 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5043)) mapDefault!17781)))))

(declare-fun b!417414 () Bool)

(declare-fun e!249027 () Bool)

(assert (=> b!417414 (= e!249033 e!249027)))

(declare-fun res!243184 () Bool)

(assert (=> b!417414 (=> (not res!243184) (not e!249027))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!417414 (= res!243184 (= from!863 i!563))))

(declare-fun minValue!515 () V!15469)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7020 0))(
  ( (tuple2!7021 (_1!3520 (_ BitVec 64)) (_2!3520 V!15469)) )
))
(declare-datatypes ((List!7073 0))(
  ( (Nil!7070) (Cons!7069 (h!7925 tuple2!7020) (t!12367 List!7073)) )
))
(declare-datatypes ((ListLongMap!5947 0))(
  ( (ListLongMap!5948 (toList!2989 List!7073)) )
))
(declare-fun lt!191290 () ListLongMap!5947)

(declare-fun zeroValue!515 () V!15469)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!191283 () array!25383)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1192 (array!25381 array!25383 (_ BitVec 32) (_ BitVec 32) V!15469 V!15469 (_ BitVec 32) Int) ListLongMap!5947)

(assert (=> b!417414 (= lt!191290 (getCurrentListMapNoExtraKeys!1192 lt!191286 lt!191283 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15469)

(assert (=> b!417414 (= lt!191283 (array!25384 (store (arr!12138 _values!549) i!563 (ValueCellFull!5043 v!412)) (size!12490 _values!549)))))

(declare-fun lt!191289 () ListLongMap!5947)

(assert (=> b!417414 (= lt!191289 (getCurrentListMapNoExtraKeys!1192 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun call!29038 () ListLongMap!5947)

(declare-fun bm!29035 () Bool)

(declare-fun c!55070 () Bool)

(assert (=> bm!29035 (= call!29038 (getCurrentListMapNoExtraKeys!1192 (ite c!55070 _keys!709 lt!191286) (ite c!55070 _values!549 lt!191283) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417415 () Bool)

(declare-fun res!243180 () Bool)

(assert (=> b!417415 (=> (not res!243180) (not e!249030))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!417415 (= res!243180 (validMask!0 mask!1025))))

(declare-fun b!417416 () Bool)

(declare-fun res!243181 () Bool)

(assert (=> b!417416 (=> (not res!243181) (not e!249030))))

(assert (=> b!417416 (= res!243181 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7069))))

(declare-fun b!417417 () Bool)

(declare-fun res!243191 () Bool)

(assert (=> b!417417 (=> (not res!243191) (not e!249030))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!417417 (= res!243191 (validKeyInArray!0 k0!794))))

(declare-fun call!29039 () ListLongMap!5947)

(declare-fun b!417418 () Bool)

(declare-fun e!249032 () Bool)

(declare-fun +!1200 (ListLongMap!5947 tuple2!7020) ListLongMap!5947)

(assert (=> b!417418 (= e!249032 (= call!29039 (+!1200 call!29038 (tuple2!7021 k0!794 v!412))))))

(declare-fun b!417419 () Bool)

(declare-fun res!243186 () Bool)

(assert (=> b!417419 (=> (not res!243186) (not e!249030))))

(assert (=> b!417419 (= res!243186 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12489 _keys!709))))))

(declare-fun b!417420 () Bool)

(declare-fun res!243189 () Bool)

(assert (=> b!417420 (=> (not res!243189) (not e!249030))))

(declare-fun arrayContainsKey!0 (array!25381 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!417420 (= res!243189 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!417421 () Bool)

(declare-fun e!249031 () Bool)

(assert (=> b!417421 (= e!249031 true)))

(declare-fun lt!191291 () tuple2!7020)

(declare-fun lt!191284 () V!15469)

(declare-fun lt!191285 () ListLongMap!5947)

(assert (=> b!417421 (= (+!1200 lt!191285 lt!191291) (+!1200 (+!1200 lt!191285 (tuple2!7021 k0!794 lt!191284)) lt!191291))))

(declare-fun lt!191287 () V!15469)

(assert (=> b!417421 (= lt!191291 (tuple2!7021 k0!794 lt!191287))))

(declare-datatypes ((Unit!12301 0))(
  ( (Unit!12302) )
))
(declare-fun lt!191292 () Unit!12301)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!23 (ListLongMap!5947 (_ BitVec 64) V!15469 V!15469) Unit!12301)

(assert (=> b!417421 (= lt!191292 (addSameAsAddTwiceSameKeyDiffValues!23 lt!191285 k0!794 lt!191284 lt!191287))))

(declare-fun lt!191288 () V!15469)

(declare-fun get!6012 (ValueCell!5043 V!15469) V!15469)

(assert (=> b!417421 (= lt!191284 (get!6012 (select (arr!12138 _values!549) from!863) lt!191288))))

(assert (=> b!417421 (= lt!191290 (+!1200 lt!191285 (tuple2!7021 (select (arr!12137 lt!191286) from!863) lt!191287)))))

(assert (=> b!417421 (= lt!191287 (get!6012 (select (store (arr!12138 _values!549) i!563 (ValueCellFull!5043 v!412)) from!863) lt!191288))))

(declare-fun dynLambda!685 (Int (_ BitVec 64)) V!15469)

(assert (=> b!417421 (= lt!191288 (dynLambda!685 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!417421 (= lt!191285 (getCurrentListMapNoExtraKeys!1192 lt!191286 lt!191283 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417422 () Bool)

(declare-fun res!243182 () Bool)

(assert (=> b!417422 (=> (not res!243182) (not e!249030))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25381 (_ BitVec 32)) Bool)

(assert (=> b!417422 (= res!243182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!17781 () Bool)

(assert (=> mapIsEmpty!17781 mapRes!17781))

(declare-fun b!417423 () Bool)

(declare-fun res!243187 () Bool)

(assert (=> b!417423 (=> (not res!243187) (not e!249033))))

(assert (=> b!417423 (= res!243187 (bvsle from!863 i!563))))

(declare-fun b!417424 () Bool)

(declare-fun res!243190 () Bool)

(assert (=> b!417424 (=> (not res!243190) (not e!249030))))

(assert (=> b!417424 (= res!243190 (or (= (select (arr!12137 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12137 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!417425 () Bool)

(assert (=> b!417425 (= e!249034 tp_is_empty!10773)))

(declare-fun bm!29036 () Bool)

(assert (=> bm!29036 (= call!29039 (getCurrentListMapNoExtraKeys!1192 (ite c!55070 lt!191286 _keys!709) (ite c!55070 lt!191283 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!17781 () Bool)

(declare-fun tp!34392 () Bool)

(declare-fun e!249028 () Bool)

(assert (=> mapNonEmpty!17781 (= mapRes!17781 (and tp!34392 e!249028))))

(declare-fun mapValue!17781 () ValueCell!5043)

(declare-fun mapKey!17781 () (_ BitVec 32))

(declare-fun mapRest!17781 () (Array (_ BitVec 32) ValueCell!5043))

(assert (=> mapNonEmpty!17781 (= (arr!12138 _values!549) (store mapRest!17781 mapKey!17781 mapValue!17781))))

(declare-fun b!417426 () Bool)

(assert (=> b!417426 (= e!249028 tp_is_empty!10773)))

(declare-fun b!417427 () Bool)

(assert (=> b!417427 (= e!249030 e!249033)))

(declare-fun res!243192 () Bool)

(assert (=> b!417427 (=> (not res!243192) (not e!249033))))

(assert (=> b!417427 (= res!243192 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!191286 mask!1025))))

(assert (=> b!417427 (= lt!191286 (array!25382 (store (arr!12137 _keys!709) i!563 k0!794) (size!12489 _keys!709)))))

(declare-fun b!417428 () Bool)

(assert (=> b!417428 (= e!249032 (= call!29038 call!29039))))

(declare-fun b!417429 () Bool)

(assert (=> b!417429 (= e!249027 (not e!249031))))

(declare-fun res!243179 () Bool)

(assert (=> b!417429 (=> res!243179 e!249031)))

(assert (=> b!417429 (= res!243179 (validKeyInArray!0 (select (arr!12137 _keys!709) from!863)))))

(assert (=> b!417429 e!249032))

(assert (=> b!417429 (= c!55070 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!191282 () Unit!12301)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!409 (array!25381 array!25383 (_ BitVec 32) (_ BitVec 32) V!15469 V!15469 (_ BitVec 32) (_ BitVec 64) V!15469 (_ BitVec 32) Int) Unit!12301)

(assert (=> b!417429 (= lt!191282 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!409 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417430 () Bool)

(declare-fun res!243188 () Bool)

(assert (=> b!417430 (=> (not res!243188) (not e!249030))))

(assert (=> b!417430 (= res!243188 (and (= (size!12490 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12489 _keys!709) (size!12490 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(assert (= (and start!39362 res!243183) b!417415))

(assert (= (and b!417415 res!243180) b!417430))

(assert (= (and b!417430 res!243188) b!417422))

(assert (= (and b!417422 res!243182) b!417416))

(assert (= (and b!417416 res!243181) b!417419))

(assert (= (and b!417419 res!243186) b!417417))

(assert (= (and b!417417 res!243191) b!417424))

(assert (= (and b!417424 res!243190) b!417420))

(assert (= (and b!417420 res!243189) b!417427))

(assert (= (and b!417427 res!243192) b!417412))

(assert (= (and b!417412 res!243185) b!417423))

(assert (= (and b!417423 res!243187) b!417414))

(assert (= (and b!417414 res!243184) b!417429))

(assert (= (and b!417429 c!55070) b!417418))

(assert (= (and b!417429 (not c!55070)) b!417428))

(assert (= (or b!417418 b!417428) bm!29036))

(assert (= (or b!417418 b!417428) bm!29035))

(assert (= (and b!417429 (not res!243179)) b!417421))

(assert (= (and b!417413 condMapEmpty!17781) mapIsEmpty!17781))

(assert (= (and b!417413 (not condMapEmpty!17781)) mapNonEmpty!17781))

(get-info :version)

(assert (= (and mapNonEmpty!17781 ((_ is ValueCellFull!5043) mapValue!17781)) b!417426))

(assert (= (and b!417413 ((_ is ValueCellFull!5043) mapDefault!17781)) b!417425))

(assert (= start!39362 b!417413))

(declare-fun b_lambda!8955 () Bool)

(assert (=> (not b_lambda!8955) (not b!417421)))

(declare-fun t!12365 () Bool)

(declare-fun tb!3251 () Bool)

(assert (=> (and start!39362 (= defaultEntry!557 defaultEntry!557) t!12365) tb!3251))

(declare-fun result!6021 () Bool)

(assert (=> tb!3251 (= result!6021 tp_is_empty!10773)))

(assert (=> b!417421 t!12365))

(declare-fun b_and!17137 () Bool)

(assert (= b_and!17135 (and (=> t!12365 result!6021) b_and!17137)))

(declare-fun m!406741 () Bool)

(assert (=> b!417422 m!406741))

(declare-fun m!406743 () Bool)

(assert (=> b!417412 m!406743))

(declare-fun m!406745 () Bool)

(assert (=> b!417429 m!406745))

(assert (=> b!417429 m!406745))

(declare-fun m!406747 () Bool)

(assert (=> b!417429 m!406747))

(declare-fun m!406749 () Bool)

(assert (=> b!417429 m!406749))

(declare-fun m!406751 () Bool)

(assert (=> b!417418 m!406751))

(declare-fun m!406753 () Bool)

(assert (=> start!39362 m!406753))

(declare-fun m!406755 () Bool)

(assert (=> start!39362 m!406755))

(declare-fun m!406757 () Bool)

(assert (=> bm!29035 m!406757))

(declare-fun m!406759 () Bool)

(assert (=> b!417420 m!406759))

(declare-fun m!406761 () Bool)

(assert (=> b!417424 m!406761))

(declare-fun m!406763 () Bool)

(assert (=> b!417417 m!406763))

(declare-fun m!406765 () Bool)

(assert (=> bm!29036 m!406765))

(declare-fun m!406767 () Bool)

(assert (=> b!417416 m!406767))

(declare-fun m!406769 () Bool)

(assert (=> b!417427 m!406769))

(declare-fun m!406771 () Bool)

(assert (=> b!417427 m!406771))

(declare-fun m!406773 () Bool)

(assert (=> b!417414 m!406773))

(declare-fun m!406775 () Bool)

(assert (=> b!417414 m!406775))

(declare-fun m!406777 () Bool)

(assert (=> b!417414 m!406777))

(declare-fun m!406779 () Bool)

(assert (=> b!417421 m!406779))

(declare-fun m!406781 () Bool)

(assert (=> b!417421 m!406781))

(declare-fun m!406783 () Bool)

(assert (=> b!417421 m!406783))

(declare-fun m!406785 () Bool)

(assert (=> b!417421 m!406785))

(declare-fun m!406787 () Bool)

(assert (=> b!417421 m!406787))

(declare-fun m!406789 () Bool)

(assert (=> b!417421 m!406789))

(assert (=> b!417421 m!406775))

(declare-fun m!406791 () Bool)

(assert (=> b!417421 m!406791))

(declare-fun m!406793 () Bool)

(assert (=> b!417421 m!406793))

(declare-fun m!406795 () Bool)

(assert (=> b!417421 m!406795))

(assert (=> b!417421 m!406791))

(assert (=> b!417421 m!406795))

(declare-fun m!406797 () Bool)

(assert (=> b!417421 m!406797))

(assert (=> b!417421 m!406787))

(declare-fun m!406799 () Bool)

(assert (=> b!417421 m!406799))

(declare-fun m!406801 () Bool)

(assert (=> b!417421 m!406801))

(declare-fun m!406803 () Bool)

(assert (=> b!417415 m!406803))

(declare-fun m!406805 () Bool)

(assert (=> mapNonEmpty!17781 m!406805))

(check-sat (not b!417416) (not b_next!9621) (not bm!29035) (not b!417417) (not b!417412) (not b_lambda!8955) (not b!417421) b_and!17137 tp_is_empty!10773 (not mapNonEmpty!17781) (not b!417415) (not b!417420) (not bm!29036) (not b!417429) (not b!417414) (not b!417418) (not b!417422) (not start!39362) (not b!417427))
(check-sat b_and!17137 (not b_next!9621))
