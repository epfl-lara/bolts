; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39434 () Bool)

(assert start!39434)

(declare-fun b_free!9693 () Bool)

(declare-fun b_next!9693 () Bool)

(assert (=> start!39434 (= b_free!9693 (not b_next!9693))))

(declare-fun tp!34607 () Bool)

(declare-fun b_and!17279 () Bool)

(assert (=> start!39434 (= tp!34607 b_and!17279)))

(declare-fun b!419536 () Bool)

(declare-fun e!250002 () Bool)

(declare-fun e!250000 () Bool)

(assert (=> b!419536 (= e!250002 (not e!250000))))

(declare-fun res!244693 () Bool)

(assert (=> b!419536 (=> res!244693 e!250000)))

(declare-datatypes ((array!25521 0))(
  ( (array!25522 (arr!12207 (Array (_ BitVec 32) (_ BitVec 64))) (size!12559 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25521)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!419536 (= res!244693 (validKeyInArray!0 (select (arr!12207 _keys!709) from!863)))))

(declare-fun e!250004 () Bool)

(assert (=> b!419536 e!250004))

(declare-fun c!55178 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!419536 (= c!55178 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12355 0))(
  ( (Unit!12356) )
))
(declare-fun lt!192480 () Unit!12355)

(declare-datatypes ((V!15565 0))(
  ( (V!15566 (val!5467 Int)) )
))
(declare-fun minValue!515 () V!15565)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5079 0))(
  ( (ValueCellFull!5079 (v!7710 V!15565)) (EmptyCell!5079) )
))
(declare-datatypes ((array!25523 0))(
  ( (array!25524 (arr!12208 (Array (_ BitVec 32) ValueCell!5079)) (size!12560 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25523)

(declare-fun zeroValue!515 () V!15565)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!15565)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!433 (array!25521 array!25523 (_ BitVec 32) (_ BitVec 32) V!15565 V!15565 (_ BitVec 32) (_ BitVec 64) V!15565 (_ BitVec 32) Int) Unit!12355)

(assert (=> b!419536 (= lt!192480 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!433 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419537 () Bool)

(declare-fun res!244694 () Bool)

(declare-fun e!250001 () Bool)

(assert (=> b!419537 (=> (not res!244694) (not e!250001))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25521 (_ BitVec 32)) Bool)

(assert (=> b!419537 (= res!244694 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-datatypes ((tuple2!7088 0))(
  ( (tuple2!7089 (_1!3554 (_ BitVec 64)) (_2!3554 V!15565)) )
))
(declare-datatypes ((List!7132 0))(
  ( (Nil!7129) (Cons!7128 (h!7984 tuple2!7088) (t!12498 List!7132)) )
))
(declare-datatypes ((ListLongMap!6015 0))(
  ( (ListLongMap!6016 (toList!3023 List!7132)) )
))
(declare-fun call!29254 () ListLongMap!6015)

(declare-fun b!419538 () Bool)

(declare-fun call!29255 () ListLongMap!6015)

(declare-fun +!1228 (ListLongMap!6015 tuple2!7088) ListLongMap!6015)

(assert (=> b!419538 (= e!250004 (= call!29254 (+!1228 call!29255 (tuple2!7089 k0!794 v!412))))))

(declare-fun b!419539 () Bool)

(declare-fun res!244696 () Bool)

(assert (=> b!419539 (=> (not res!244696) (not e!250001))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!419539 (= res!244696 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!17889 () Bool)

(declare-fun mapRes!17889 () Bool)

(declare-fun tp!34608 () Bool)

(declare-fun e!249998 () Bool)

(assert (=> mapNonEmpty!17889 (= mapRes!17889 (and tp!34608 e!249998))))

(declare-fun mapKey!17889 () (_ BitVec 32))

(declare-fun mapValue!17889 () ValueCell!5079)

(declare-fun mapRest!17889 () (Array (_ BitVec 32) ValueCell!5079))

(assert (=> mapNonEmpty!17889 (= (arr!12208 _values!549) (store mapRest!17889 mapKey!17889 mapValue!17889))))

(declare-fun b!419540 () Bool)

(declare-fun res!244698 () Bool)

(assert (=> b!419540 (=> (not res!244698) (not e!250001))))

(assert (=> b!419540 (= res!244698 (or (= (select (arr!12207 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12207 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!419541 () Bool)

(declare-fun e!250006 () Bool)

(declare-fun tp_is_empty!10845 () Bool)

(assert (=> b!419541 (= e!250006 tp_is_empty!10845)))

(declare-fun b!419542 () Bool)

(declare-fun res!244700 () Bool)

(assert (=> b!419542 (=> (not res!244700) (not e!250001))))

(declare-fun arrayContainsKey!0 (array!25521 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!419542 (= res!244700 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!419543 () Bool)

(declare-fun e!250003 () Bool)

(assert (=> b!419543 (= e!250003 (and e!250006 mapRes!17889))))

(declare-fun condMapEmpty!17889 () Bool)

(declare-fun mapDefault!17889 () ValueCell!5079)

(assert (=> b!419543 (= condMapEmpty!17889 (= (arr!12208 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5079)) mapDefault!17889)))))

(declare-fun bm!29251 () Bool)

(declare-fun lt!192470 () array!25521)

(declare-fun lt!192474 () array!25523)

(declare-fun getCurrentListMapNoExtraKeys!1224 (array!25521 array!25523 (_ BitVec 32) (_ BitVec 32) V!15565 V!15565 (_ BitVec 32) Int) ListLongMap!6015)

(assert (=> bm!29251 (= call!29255 (getCurrentListMapNoExtraKeys!1224 (ite c!55178 _keys!709 lt!192470) (ite c!55178 _values!549 lt!192474) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419544 () Bool)

(declare-fun e!250005 () Bool)

(assert (=> b!419544 (= e!250001 e!250005)))

(declare-fun res!244702 () Bool)

(assert (=> b!419544 (=> (not res!244702) (not e!250005))))

(assert (=> b!419544 (= res!244702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!192470 mask!1025))))

(assert (=> b!419544 (= lt!192470 (array!25522 (store (arr!12207 _keys!709) i!563 k0!794) (size!12559 _keys!709)))))

(declare-fun b!419545 () Bool)

(declare-fun res!244697 () Bool)

(assert (=> b!419545 (=> (not res!244697) (not e!250005))))

(declare-datatypes ((List!7133 0))(
  ( (Nil!7130) (Cons!7129 (h!7985 (_ BitVec 64)) (t!12499 List!7133)) )
))
(declare-fun arrayNoDuplicates!0 (array!25521 (_ BitVec 32) List!7133) Bool)

(assert (=> b!419545 (= res!244697 (arrayNoDuplicates!0 lt!192470 #b00000000000000000000000000000000 Nil!7130))))

(declare-fun b!419546 () Bool)

(declare-fun res!244699 () Bool)

(assert (=> b!419546 (=> (not res!244699) (not e!250001))))

(assert (=> b!419546 (= res!244699 (validKeyInArray!0 k0!794))))

(declare-fun b!419547 () Bool)

(assert (=> b!419547 (= e!250004 (= call!29255 call!29254))))

(declare-fun b!419548 () Bool)

(assert (=> b!419548 (= e!249998 tp_is_empty!10845)))

(declare-fun b!419549 () Bool)

(declare-fun res!244703 () Bool)

(assert (=> b!419549 (=> (not res!244703) (not e!250001))))

(assert (=> b!419549 (= res!244703 (and (= (size!12560 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12559 _keys!709) (size!12560 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!419550 () Bool)

(assert (=> b!419550 (= e!250000 true)))

(declare-fun lt!192473 () tuple2!7088)

(declare-fun lt!192475 () V!15565)

(declare-fun lt!192472 () ListLongMap!6015)

(assert (=> b!419550 (= (+!1228 lt!192472 lt!192473) (+!1228 (+!1228 lt!192472 (tuple2!7089 k0!794 lt!192475)) lt!192473))))

(declare-fun lt!192477 () V!15565)

(assert (=> b!419550 (= lt!192473 (tuple2!7089 k0!794 lt!192477))))

(declare-fun lt!192476 () Unit!12355)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!47 (ListLongMap!6015 (_ BitVec 64) V!15565 V!15565) Unit!12355)

(assert (=> b!419550 (= lt!192476 (addSameAsAddTwiceSameKeyDiffValues!47 lt!192472 k0!794 lt!192475 lt!192477))))

(declare-fun lt!192471 () V!15565)

(declare-fun get!6060 (ValueCell!5079 V!15565) V!15565)

(assert (=> b!419550 (= lt!192475 (get!6060 (select (arr!12208 _values!549) from!863) lt!192471))))

(declare-fun lt!192479 () ListLongMap!6015)

(assert (=> b!419550 (= lt!192479 (+!1228 lt!192472 (tuple2!7089 (select (arr!12207 lt!192470) from!863) lt!192477)))))

(assert (=> b!419550 (= lt!192477 (get!6060 (select (store (arr!12208 _values!549) i!563 (ValueCellFull!5079 v!412)) from!863) lt!192471))))

(declare-fun dynLambda!709 (Int (_ BitVec 64)) V!15565)

(assert (=> b!419550 (= lt!192471 (dynLambda!709 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!419550 (= lt!192472 (getCurrentListMapNoExtraKeys!1224 lt!192470 lt!192474 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419551 () Bool)

(declare-fun res!244692 () Bool)

(assert (=> b!419551 (=> (not res!244692) (not e!250001))))

(assert (=> b!419551 (= res!244692 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12559 _keys!709))))))

(declare-fun b!419552 () Bool)

(assert (=> b!419552 (= e!250005 e!250002)))

(declare-fun res!244695 () Bool)

(assert (=> b!419552 (=> (not res!244695) (not e!250002))))

(assert (=> b!419552 (= res!244695 (= from!863 i!563))))

(assert (=> b!419552 (= lt!192479 (getCurrentListMapNoExtraKeys!1224 lt!192470 lt!192474 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!419552 (= lt!192474 (array!25524 (store (arr!12208 _values!549) i!563 (ValueCellFull!5079 v!412)) (size!12560 _values!549)))))

(declare-fun lt!192478 () ListLongMap!6015)

(assert (=> b!419552 (= lt!192478 (getCurrentListMapNoExtraKeys!1224 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!244704 () Bool)

(assert (=> start!39434 (=> (not res!244704) (not e!250001))))

(assert (=> start!39434 (= res!244704 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12559 _keys!709))))))

(assert (=> start!39434 e!250001))

(assert (=> start!39434 tp_is_empty!10845))

(assert (=> start!39434 tp!34607))

(assert (=> start!39434 true))

(declare-fun array_inv!8894 (array!25523) Bool)

(assert (=> start!39434 (and (array_inv!8894 _values!549) e!250003)))

(declare-fun array_inv!8895 (array!25521) Bool)

(assert (=> start!39434 (array_inv!8895 _keys!709)))

(declare-fun mapIsEmpty!17889 () Bool)

(assert (=> mapIsEmpty!17889 mapRes!17889))

(declare-fun b!419553 () Bool)

(declare-fun res!244701 () Bool)

(assert (=> b!419553 (=> (not res!244701) (not e!250001))))

(assert (=> b!419553 (= res!244701 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7130))))

(declare-fun b!419554 () Bool)

(declare-fun res!244691 () Bool)

(assert (=> b!419554 (=> (not res!244691) (not e!250005))))

(assert (=> b!419554 (= res!244691 (bvsle from!863 i!563))))

(declare-fun bm!29252 () Bool)

(assert (=> bm!29252 (= call!29254 (getCurrentListMapNoExtraKeys!1224 (ite c!55178 lt!192470 _keys!709) (ite c!55178 lt!192474 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (= (and start!39434 res!244704) b!419539))

(assert (= (and b!419539 res!244696) b!419549))

(assert (= (and b!419549 res!244703) b!419537))

(assert (= (and b!419537 res!244694) b!419553))

(assert (= (and b!419553 res!244701) b!419551))

(assert (= (and b!419551 res!244692) b!419546))

(assert (= (and b!419546 res!244699) b!419540))

(assert (= (and b!419540 res!244698) b!419542))

(assert (= (and b!419542 res!244700) b!419544))

(assert (= (and b!419544 res!244702) b!419545))

(assert (= (and b!419545 res!244697) b!419554))

(assert (= (and b!419554 res!244691) b!419552))

(assert (= (and b!419552 res!244695) b!419536))

(assert (= (and b!419536 c!55178) b!419538))

(assert (= (and b!419536 (not c!55178)) b!419547))

(assert (= (or b!419538 b!419547) bm!29252))

(assert (= (or b!419538 b!419547) bm!29251))

(assert (= (and b!419536 (not res!244693)) b!419550))

(assert (= (and b!419543 condMapEmpty!17889) mapIsEmpty!17889))

(assert (= (and b!419543 (not condMapEmpty!17889)) mapNonEmpty!17889))

(get-info :version)

(assert (= (and mapNonEmpty!17889 ((_ is ValueCellFull!5079) mapValue!17889)) b!419548))

(assert (= (and b!419543 ((_ is ValueCellFull!5079) mapDefault!17889)) b!419541))

(assert (= start!39434 b!419543))

(declare-fun b_lambda!9027 () Bool)

(assert (=> (not b_lambda!9027) (not b!419550)))

(declare-fun t!12497 () Bool)

(declare-fun tb!3323 () Bool)

(assert (=> (and start!39434 (= defaultEntry!557 defaultEntry!557) t!12497) tb!3323))

(declare-fun result!6165 () Bool)

(assert (=> tb!3323 (= result!6165 tp_is_empty!10845)))

(assert (=> b!419550 t!12497))

(declare-fun b_and!17281 () Bool)

(assert (= b_and!17279 (and (=> t!12497 result!6165) b_and!17281)))

(declare-fun m!409117 () Bool)

(assert (=> b!419540 m!409117))

(declare-fun m!409119 () Bool)

(assert (=> b!419537 m!409119))

(declare-fun m!409121 () Bool)

(assert (=> b!419545 m!409121))

(declare-fun m!409123 () Bool)

(assert (=> b!419544 m!409123))

(declare-fun m!409125 () Bool)

(assert (=> b!419544 m!409125))

(declare-fun m!409127 () Bool)

(assert (=> b!419538 m!409127))

(declare-fun m!409129 () Bool)

(assert (=> b!419546 m!409129))

(declare-fun m!409131 () Bool)

(assert (=> b!419550 m!409131))

(declare-fun m!409133 () Bool)

(assert (=> b!419550 m!409133))

(declare-fun m!409135 () Bool)

(assert (=> b!419550 m!409135))

(declare-fun m!409137 () Bool)

(assert (=> b!419550 m!409137))

(declare-fun m!409139 () Bool)

(assert (=> b!419550 m!409139))

(declare-fun m!409141 () Bool)

(assert (=> b!419550 m!409141))

(declare-fun m!409143 () Bool)

(assert (=> b!419550 m!409143))

(declare-fun m!409145 () Bool)

(assert (=> b!419550 m!409145))

(declare-fun m!409147 () Bool)

(assert (=> b!419550 m!409147))

(assert (=> b!419550 m!409131))

(declare-fun m!409149 () Bool)

(assert (=> b!419550 m!409149))

(declare-fun m!409151 () Bool)

(assert (=> b!419550 m!409151))

(declare-fun m!409153 () Bool)

(assert (=> b!419550 m!409153))

(assert (=> b!419550 m!409145))

(declare-fun m!409155 () Bool)

(assert (=> b!419550 m!409155))

(assert (=> b!419550 m!409151))

(declare-fun m!409157 () Bool)

(assert (=> b!419539 m!409157))

(declare-fun m!409159 () Bool)

(assert (=> b!419553 m!409159))

(declare-fun m!409161 () Bool)

(assert (=> mapNonEmpty!17889 m!409161))

(declare-fun m!409163 () Bool)

(assert (=> b!419552 m!409163))

(assert (=> b!419552 m!409141))

(declare-fun m!409165 () Bool)

(assert (=> b!419552 m!409165))

(declare-fun m!409167 () Bool)

(assert (=> b!419536 m!409167))

(assert (=> b!419536 m!409167))

(declare-fun m!409169 () Bool)

(assert (=> b!419536 m!409169))

(declare-fun m!409171 () Bool)

(assert (=> b!419536 m!409171))

(declare-fun m!409173 () Bool)

(assert (=> bm!29252 m!409173))

(declare-fun m!409175 () Bool)

(assert (=> bm!29251 m!409175))

(declare-fun m!409177 () Bool)

(assert (=> b!419542 m!409177))

(declare-fun m!409179 () Bool)

(assert (=> start!39434 m!409179))

(declare-fun m!409181 () Bool)

(assert (=> start!39434 m!409181))

(check-sat (not b_lambda!9027) tp_is_empty!10845 (not b!419544) (not b!419537) (not b!419552) (not b_next!9693) (not b!419538) (not b!419550) (not bm!29251) (not b!419542) (not b!419546) (not b!419539) (not start!39434) b_and!17281 (not mapNonEmpty!17889) (not b!419536) (not b!419553) (not bm!29252) (not b!419545))
(check-sat b_and!17281 (not b_next!9693))
