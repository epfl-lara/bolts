; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40500 () Bool)

(assert start!40500)

(declare-fun b_free!10563 () Bool)

(declare-fun b_next!10563 () Bool)

(assert (=> start!40500 (= b_free!10563 (not b_next!10563))))

(declare-fun tp!37467 () Bool)

(declare-fun b_and!18565 () Bool)

(assert (=> start!40500 (= tp!37467 b_and!18565)))

(declare-fun b!445918 () Bool)

(declare-fun res!264745 () Bool)

(declare-fun e!262002 () Bool)

(assert (=> b!445918 (=> (not res!264745) (not e!262002))))

(declare-datatypes ((array!27521 0))(
  ( (array!27522 (arr!13205 (Array (_ BitVec 32) (_ BitVec 64))) (size!13557 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27521)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27521 (_ BitVec 32)) Bool)

(assert (=> b!445918 (= res!264745 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-datatypes ((V!16941 0))(
  ( (V!16942 (val!5983 Int)) )
))
(declare-datatypes ((tuple2!7784 0))(
  ( (tuple2!7785 (_1!3902 (_ BitVec 64)) (_2!3902 V!16941)) )
))
(declare-datatypes ((List!7884 0))(
  ( (Nil!7881) (Cons!7880 (h!8736 tuple2!7784) (t!13650 List!7884)) )
))
(declare-datatypes ((ListLongMap!6711 0))(
  ( (ListLongMap!6712 (toList!3371 List!7884)) )
))
(declare-fun call!29642 () ListLongMap!6711)

(declare-fun b!445919 () Bool)

(declare-fun e!262001 () Bool)

(declare-fun call!29643 () ListLongMap!6711)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!16941)

(declare-fun +!1501 (ListLongMap!6711 tuple2!7784) ListLongMap!6711)

(assert (=> b!445919 (= e!262001 (= call!29642 (+!1501 call!29643 (tuple2!7785 k0!794 v!412))))))

(declare-fun mapIsEmpty!19443 () Bool)

(declare-fun mapRes!19443 () Bool)

(assert (=> mapIsEmpty!19443 mapRes!19443))

(declare-fun b!445920 () Bool)

(declare-fun res!264743 () Bool)

(declare-fun e!262000 () Bool)

(assert (=> b!445920 (=> (not res!264743) (not e!262000))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!445920 (= res!264743 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!13557 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!445921 () Bool)

(assert (=> b!445921 (= e!262002 e!262000)))

(declare-fun res!264748 () Bool)

(assert (=> b!445921 (=> (not res!264748) (not e!262000))))

(declare-fun lt!203675 () array!27521)

(assert (=> b!445921 (= res!264748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203675 mask!1025))))

(assert (=> b!445921 (= lt!203675 (array!27522 (store (arr!13205 _keys!709) i!563 k0!794) (size!13557 _keys!709)))))

(declare-fun minValue!515 () V!16941)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5595 0))(
  ( (ValueCellFull!5595 (v!8230 V!16941)) (EmptyCell!5595) )
))
(declare-datatypes ((array!27523 0))(
  ( (array!27524 (arr!13206 (Array (_ BitVec 32) ValueCell!5595)) (size!13558 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27523)

(declare-fun zeroValue!515 () V!16941)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun c!55815 () Bool)

(declare-fun bm!29639 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1551 (array!27521 array!27523 (_ BitVec 32) (_ BitVec 32) V!16941 V!16941 (_ BitVec 32) Int) ListLongMap!6711)

(assert (=> bm!29639 (= call!29643 (getCurrentListMapNoExtraKeys!1551 (ite c!55815 _keys!709 lt!203675) (ite c!55815 _values!549 (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!445922 () Bool)

(declare-fun res!264740 () Bool)

(assert (=> b!445922 (=> (not res!264740) (not e!262002))))

(assert (=> b!445922 (= res!264740 (or (= (select (arr!13205 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13205 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!445923 () Bool)

(declare-fun res!264741 () Bool)

(assert (=> b!445923 (=> (not res!264741) (not e!262002))))

(declare-fun arrayContainsKey!0 (array!27521 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!445923 (= res!264741 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!445924 () Bool)

(declare-fun res!264737 () Bool)

(assert (=> b!445924 (=> (not res!264737) (not e!262002))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!445924 (= res!264737 (validMask!0 mask!1025))))

(declare-fun b!445925 () Bool)

(declare-fun res!264738 () Bool)

(assert (=> b!445925 (=> (not res!264738) (not e!262002))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!445925 (= res!264738 (validKeyInArray!0 k0!794))))

(declare-fun b!445926 () Bool)

(declare-fun e!262004 () Bool)

(declare-fun tp_is_empty!11877 () Bool)

(assert (=> b!445926 (= e!262004 tp_is_empty!11877)))

(declare-fun b!445927 () Bool)

(assert (=> b!445927 (= e!262000 (not (= (getCurrentListMapNoExtraKeys!1551 lt!203675 (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557) (getCurrentListMapNoExtraKeys!1551 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))))

(assert (=> b!445927 e!262001))

(assert (=> b!445927 (= c!55815 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!13109 0))(
  ( (Unit!13110) )
))
(declare-fun lt!203676 () Unit!13109)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!674 (array!27521 array!27523 (_ BitVec 32) (_ BitVec 32) V!16941 V!16941 (_ BitVec 32) (_ BitVec 64) V!16941 (_ BitVec 32) Int) Unit!13109)

(assert (=> b!445927 (= lt!203676 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!674 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!29640 () Bool)

(assert (=> bm!29640 (= call!29642 (getCurrentListMapNoExtraKeys!1551 (ite c!55815 lt!203675 _keys!709) (ite c!55815 (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!445928 () Bool)

(assert (=> b!445928 (= e!262001 (= call!29643 call!29642))))

(declare-fun b!445929 () Bool)

(declare-fun e!262003 () Bool)

(assert (=> b!445929 (= e!262003 tp_is_empty!11877)))

(declare-fun b!445930 () Bool)

(declare-fun res!264742 () Bool)

(assert (=> b!445930 (=> (not res!264742) (not e!262002))))

(assert (=> b!445930 (= res!264742 (and (= (size!13558 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13557 _keys!709) (size!13558 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!445931 () Bool)

(declare-fun e!262005 () Bool)

(assert (=> b!445931 (= e!262005 (and e!262003 mapRes!19443))))

(declare-fun condMapEmpty!19443 () Bool)

(declare-fun mapDefault!19443 () ValueCell!5595)

(assert (=> b!445931 (= condMapEmpty!19443 (= (arr!13206 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5595)) mapDefault!19443)))))

(declare-fun b!445932 () Bool)

(declare-fun res!264746 () Bool)

(assert (=> b!445932 (=> (not res!264746) (not e!262002))))

(declare-datatypes ((List!7885 0))(
  ( (Nil!7882) (Cons!7881 (h!8737 (_ BitVec 64)) (t!13651 List!7885)) )
))
(declare-fun arrayNoDuplicates!0 (array!27521 (_ BitVec 32) List!7885) Bool)

(assert (=> b!445932 (= res!264746 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7882))))

(declare-fun mapNonEmpty!19443 () Bool)

(declare-fun tp!37466 () Bool)

(assert (=> mapNonEmpty!19443 (= mapRes!19443 (and tp!37466 e!262004))))

(declare-fun mapKey!19443 () (_ BitVec 32))

(declare-fun mapRest!19443 () (Array (_ BitVec 32) ValueCell!5595))

(declare-fun mapValue!19443 () ValueCell!5595)

(assert (=> mapNonEmpty!19443 (= (arr!13206 _values!549) (store mapRest!19443 mapKey!19443 mapValue!19443))))

(declare-fun res!264739 () Bool)

(assert (=> start!40500 (=> (not res!264739) (not e!262002))))

(assert (=> start!40500 (= res!264739 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13557 _keys!709))))))

(assert (=> start!40500 e!262002))

(assert (=> start!40500 tp_is_empty!11877))

(assert (=> start!40500 tp!37467))

(assert (=> start!40500 true))

(declare-fun array_inv!9566 (array!27523) Bool)

(assert (=> start!40500 (and (array_inv!9566 _values!549) e!262005)))

(declare-fun array_inv!9567 (array!27521) Bool)

(assert (=> start!40500 (array_inv!9567 _keys!709)))

(declare-fun b!445933 () Bool)

(declare-fun res!264747 () Bool)

(assert (=> b!445933 (=> (not res!264747) (not e!262000))))

(assert (=> b!445933 (= res!264747 (arrayNoDuplicates!0 lt!203675 #b00000000000000000000000000000000 Nil!7882))))

(declare-fun b!445934 () Bool)

(declare-fun res!264744 () Bool)

(assert (=> b!445934 (=> (not res!264744) (not e!262002))))

(assert (=> b!445934 (= res!264744 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13557 _keys!709))))))

(assert (= (and start!40500 res!264739) b!445924))

(assert (= (and b!445924 res!264737) b!445930))

(assert (= (and b!445930 res!264742) b!445918))

(assert (= (and b!445918 res!264745) b!445932))

(assert (= (and b!445932 res!264746) b!445934))

(assert (= (and b!445934 res!264744) b!445925))

(assert (= (and b!445925 res!264738) b!445922))

(assert (= (and b!445922 res!264740) b!445923))

(assert (= (and b!445923 res!264741) b!445921))

(assert (= (and b!445921 res!264748) b!445933))

(assert (= (and b!445933 res!264747) b!445920))

(assert (= (and b!445920 res!264743) b!445927))

(assert (= (and b!445927 c!55815) b!445919))

(assert (= (and b!445927 (not c!55815)) b!445928))

(assert (= (or b!445919 b!445928) bm!29640))

(assert (= (or b!445919 b!445928) bm!29639))

(assert (= (and b!445931 condMapEmpty!19443) mapIsEmpty!19443))

(assert (= (and b!445931 (not condMapEmpty!19443)) mapNonEmpty!19443))

(get-info :version)

(assert (= (and mapNonEmpty!19443 ((_ is ValueCellFull!5595) mapValue!19443)) b!445926))

(assert (= (and b!445931 ((_ is ValueCellFull!5595) mapDefault!19443)) b!445929))

(assert (= start!40500 b!445931))

(declare-fun m!431221 () Bool)

(assert (=> bm!29639 m!431221))

(declare-fun m!431223 () Bool)

(assert (=> bm!29639 m!431223))

(declare-fun m!431225 () Bool)

(assert (=> b!445922 m!431225))

(assert (=> b!445927 m!431221))

(declare-fun m!431227 () Bool)

(assert (=> b!445927 m!431227))

(declare-fun m!431229 () Bool)

(assert (=> b!445927 m!431229))

(declare-fun m!431231 () Bool)

(assert (=> b!445927 m!431231))

(declare-fun m!431233 () Bool)

(assert (=> b!445925 m!431233))

(declare-fun m!431235 () Bool)

(assert (=> b!445921 m!431235))

(declare-fun m!431237 () Bool)

(assert (=> b!445921 m!431237))

(declare-fun m!431239 () Bool)

(assert (=> b!445918 m!431239))

(declare-fun m!431241 () Bool)

(assert (=> b!445919 m!431241))

(declare-fun m!431243 () Bool)

(assert (=> start!40500 m!431243))

(declare-fun m!431245 () Bool)

(assert (=> start!40500 m!431245))

(declare-fun m!431247 () Bool)

(assert (=> b!445932 m!431247))

(assert (=> bm!29640 m!431221))

(declare-fun m!431249 () Bool)

(assert (=> bm!29640 m!431249))

(declare-fun m!431251 () Bool)

(assert (=> b!445933 m!431251))

(declare-fun m!431253 () Bool)

(assert (=> mapNonEmpty!19443 m!431253))

(declare-fun m!431255 () Bool)

(assert (=> b!445923 m!431255))

(declare-fun m!431257 () Bool)

(assert (=> b!445924 m!431257))

(check-sat (not b!445918) (not b!445923) (not b!445933) (not b!445927) (not b_next!10563) (not b!445921) (not b!445924) b_and!18565 (not mapNonEmpty!19443) (not b!445925) (not start!40500) (not bm!29640) tp_is_empty!11877 (not b!445919) (not b!445932) (not bm!29639))
(check-sat b_and!18565 (not b_next!10563))
(get-model)

(declare-fun bm!29649 () Bool)

(declare-fun call!29652 () Bool)

(assert (=> bm!29649 (= call!29652 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!203675 mask!1025))))

(declare-fun d!74015 () Bool)

(declare-fun res!264790 () Bool)

(declare-fun e!262035 () Bool)

(assert (=> d!74015 (=> res!264790 e!262035)))

(assert (=> d!74015 (= res!264790 (bvsge #b00000000000000000000000000000000 (size!13557 lt!203675)))))

(assert (=> d!74015 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203675 mask!1025) e!262035)))

(declare-fun b!445994 () Bool)

(declare-fun e!262033 () Bool)

(assert (=> b!445994 (= e!262033 call!29652)))

(declare-fun b!445995 () Bool)

(declare-fun e!262034 () Bool)

(assert (=> b!445995 (= e!262033 e!262034)))

(declare-fun lt!203691 () (_ BitVec 64))

(assert (=> b!445995 (= lt!203691 (select (arr!13205 lt!203675) #b00000000000000000000000000000000))))

(declare-fun lt!203689 () Unit!13109)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!27521 (_ BitVec 64) (_ BitVec 32)) Unit!13109)

(assert (=> b!445995 (= lt!203689 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!203675 lt!203691 #b00000000000000000000000000000000))))

(assert (=> b!445995 (arrayContainsKey!0 lt!203675 lt!203691 #b00000000000000000000000000000000)))

(declare-fun lt!203690 () Unit!13109)

(assert (=> b!445995 (= lt!203690 lt!203689)))

(declare-fun res!264789 () Bool)

(declare-datatypes ((SeekEntryResult!3517 0))(
  ( (MissingZero!3517 (index!16247 (_ BitVec 32))) (Found!3517 (index!16248 (_ BitVec 32))) (Intermediate!3517 (undefined!4329 Bool) (index!16249 (_ BitVec 32)) (x!41990 (_ BitVec 32))) (Undefined!3517) (MissingVacant!3517 (index!16250 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!27521 (_ BitVec 32)) SeekEntryResult!3517)

(assert (=> b!445995 (= res!264789 (= (seekEntryOrOpen!0 (select (arr!13205 lt!203675) #b00000000000000000000000000000000) lt!203675 mask!1025) (Found!3517 #b00000000000000000000000000000000)))))

(assert (=> b!445995 (=> (not res!264789) (not e!262034))))

(declare-fun b!445996 () Bool)

(assert (=> b!445996 (= e!262034 call!29652)))

(declare-fun b!445997 () Bool)

(assert (=> b!445997 (= e!262035 e!262033)))

(declare-fun c!55821 () Bool)

(assert (=> b!445997 (= c!55821 (validKeyInArray!0 (select (arr!13205 lt!203675) #b00000000000000000000000000000000)))))

(assert (= (and d!74015 (not res!264790)) b!445997))

(assert (= (and b!445997 c!55821) b!445995))

(assert (= (and b!445997 (not c!55821)) b!445994))

(assert (= (and b!445995 res!264789) b!445996))

(assert (= (or b!445996 b!445994) bm!29649))

(declare-fun m!431297 () Bool)

(assert (=> bm!29649 m!431297))

(declare-fun m!431299 () Bool)

(assert (=> b!445995 m!431299))

(declare-fun m!431301 () Bool)

(assert (=> b!445995 m!431301))

(declare-fun m!431303 () Bool)

(assert (=> b!445995 m!431303))

(assert (=> b!445995 m!431299))

(declare-fun m!431305 () Bool)

(assert (=> b!445995 m!431305))

(assert (=> b!445997 m!431299))

(assert (=> b!445997 m!431299))

(declare-fun m!431307 () Bool)

(assert (=> b!445997 m!431307))

(assert (=> b!445921 d!74015))

(declare-fun b!446022 () Bool)

(declare-fun e!262053 () ListLongMap!6711)

(declare-fun call!29655 () ListLongMap!6711)

(assert (=> b!446022 (= e!262053 call!29655)))

(declare-fun b!446023 () Bool)

(declare-fun e!262056 () Bool)

(assert (=> b!446023 (= e!262056 (validKeyInArray!0 (select (arr!13205 (ite c!55815 _keys!709 lt!203675)) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!446023 (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))

(declare-fun b!446024 () Bool)

(declare-fun e!262052 () Bool)

(declare-fun e!262054 () Bool)

(assert (=> b!446024 (= e!262052 e!262054)))

(assert (=> b!446024 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13557 (ite c!55815 _keys!709 lt!203675))))))

(declare-fun res!264801 () Bool)

(declare-fun lt!203712 () ListLongMap!6711)

(declare-fun contains!2491 (ListLongMap!6711 (_ BitVec 64)) Bool)

(assert (=> b!446024 (= res!264801 (contains!2491 lt!203712 (select (arr!13205 (ite c!55815 _keys!709 lt!203675)) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!446024 (=> (not res!264801) (not e!262054))))

(declare-fun b!446025 () Bool)

(declare-fun e!262051 () ListLongMap!6711)

(assert (=> b!446025 (= e!262051 (ListLongMap!6712 Nil!7881))))

(declare-fun b!446026 () Bool)

(declare-fun e!262050 () Bool)

(assert (=> b!446026 (= e!262050 (= lt!203712 (getCurrentListMapNoExtraKeys!1551 (ite c!55815 _keys!709 lt!203675) (ite c!55815 _values!549 (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!446027 () Bool)

(declare-fun res!264800 () Bool)

(declare-fun e!262055 () Bool)

(assert (=> b!446027 (=> (not res!264800) (not e!262055))))

(assert (=> b!446027 (= res!264800 (not (contains!2491 lt!203712 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!446028 () Bool)

(declare-fun lt!203711 () Unit!13109)

(declare-fun lt!203709 () Unit!13109)

(assert (=> b!446028 (= lt!203711 lt!203709)))

(declare-fun lt!203707 () V!16941)

(declare-fun lt!203706 () (_ BitVec 64))

(declare-fun lt!203708 () ListLongMap!6711)

(declare-fun lt!203710 () (_ BitVec 64))

(assert (=> b!446028 (not (contains!2491 (+!1501 lt!203708 (tuple2!7785 lt!203710 lt!203707)) lt!203706))))

(declare-fun addStillNotContains!145 (ListLongMap!6711 (_ BitVec 64) V!16941 (_ BitVec 64)) Unit!13109)

(assert (=> b!446028 (= lt!203709 (addStillNotContains!145 lt!203708 lt!203710 lt!203707 lt!203706))))

(assert (=> b!446028 (= lt!203706 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!6536 (ValueCell!5595 V!16941) V!16941)

(declare-fun dynLambda!841 (Int (_ BitVec 64)) V!16941)

(assert (=> b!446028 (= lt!203707 (get!6536 (select (arr!13206 (ite c!55815 _values!549 (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549)))) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!841 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!446028 (= lt!203710 (select (arr!13205 (ite c!55815 _keys!709 lt!203675)) (bvadd #b00000000000000000000000000000001 from!863)))))

(assert (=> b!446028 (= lt!203708 call!29655)))

(assert (=> b!446028 (= e!262053 (+!1501 call!29655 (tuple2!7785 (select (arr!13205 (ite c!55815 _keys!709 lt!203675)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6536 (select (arr!13206 (ite c!55815 _values!549 (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549)))) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!841 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!446029 () Bool)

(assert (=> b!446029 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13557 (ite c!55815 _keys!709 lt!203675))))))

(assert (=> b!446029 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13558 (ite c!55815 _values!549 (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549))))))))

(declare-fun apply!310 (ListLongMap!6711 (_ BitVec 64)) V!16941)

(assert (=> b!446029 (= e!262054 (= (apply!310 lt!203712 (select (arr!13205 (ite c!55815 _keys!709 lt!203675)) (bvadd #b00000000000000000000000000000001 from!863))) (get!6536 (select (arr!13206 (ite c!55815 _values!549 (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549)))) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!841 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!74017 () Bool)

(assert (=> d!74017 e!262055))

(declare-fun res!264802 () Bool)

(assert (=> d!74017 (=> (not res!264802) (not e!262055))))

(assert (=> d!74017 (= res!264802 (not (contains!2491 lt!203712 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74017 (= lt!203712 e!262051)))

(declare-fun c!55830 () Bool)

(assert (=> d!74017 (= c!55830 (bvsge (bvadd #b00000000000000000000000000000001 from!863) (size!13557 (ite c!55815 _keys!709 lt!203675))))))

(assert (=> d!74017 (validMask!0 mask!1025)))

(assert (=> d!74017 (= (getCurrentListMapNoExtraKeys!1551 (ite c!55815 _keys!709 lt!203675) (ite c!55815 _values!549 (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!203712)))

(declare-fun bm!29652 () Bool)

(assert (=> bm!29652 (= call!29655 (getCurrentListMapNoExtraKeys!1551 (ite c!55815 _keys!709 lt!203675) (ite c!55815 _values!549 (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!446030 () Bool)

(assert (=> b!446030 (= e!262055 e!262052)))

(declare-fun c!55833 () Bool)

(assert (=> b!446030 (= c!55833 e!262056)))

(declare-fun res!264799 () Bool)

(assert (=> b!446030 (=> (not res!264799) (not e!262056))))

(assert (=> b!446030 (= res!264799 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13557 (ite c!55815 _keys!709 lt!203675))))))

(declare-fun b!446031 () Bool)

(assert (=> b!446031 (= e!262051 e!262053)))

(declare-fun c!55832 () Bool)

(assert (=> b!446031 (= c!55832 (validKeyInArray!0 (select (arr!13205 (ite c!55815 _keys!709 lt!203675)) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun b!446032 () Bool)

(declare-fun isEmpty!561 (ListLongMap!6711) Bool)

(assert (=> b!446032 (= e!262050 (isEmpty!561 lt!203712))))

(declare-fun b!446033 () Bool)

(assert (=> b!446033 (= e!262052 e!262050)))

(declare-fun c!55831 () Bool)

(assert (=> b!446033 (= c!55831 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13557 (ite c!55815 _keys!709 lt!203675))))))

(assert (= (and d!74017 c!55830) b!446025))

(assert (= (and d!74017 (not c!55830)) b!446031))

(assert (= (and b!446031 c!55832) b!446028))

(assert (= (and b!446031 (not c!55832)) b!446022))

(assert (= (or b!446028 b!446022) bm!29652))

(assert (= (and d!74017 res!264802) b!446027))

(assert (= (and b!446027 res!264800) b!446030))

(assert (= (and b!446030 res!264799) b!446023))

(assert (= (and b!446030 c!55833) b!446024))

(assert (= (and b!446030 (not c!55833)) b!446033))

(assert (= (and b!446024 res!264801) b!446029))

(assert (= (and b!446033 c!55831) b!446026))

(assert (= (and b!446033 (not c!55831)) b!446032))

(declare-fun b_lambda!9459 () Bool)

(assert (=> (not b_lambda!9459) (not b!446028)))

(declare-fun t!13653 () Bool)

(declare-fun tb!3725 () Bool)

(assert (=> (and start!40500 (= defaultEntry!557 defaultEntry!557) t!13653) tb!3725))

(declare-fun result!6973 () Bool)

(assert (=> tb!3725 (= result!6973 tp_is_empty!11877)))

(assert (=> b!446028 t!13653))

(declare-fun b_and!18569 () Bool)

(assert (= b_and!18565 (and (=> t!13653 result!6973) b_and!18569)))

(declare-fun b_lambda!9461 () Bool)

(assert (=> (not b_lambda!9461) (not b!446029)))

(assert (=> b!446029 t!13653))

(declare-fun b_and!18571 () Bool)

(assert (= b_and!18569 (and (=> t!13653 result!6973) b_and!18571)))

(declare-fun m!431309 () Bool)

(assert (=> b!446023 m!431309))

(assert (=> b!446023 m!431309))

(declare-fun m!431311 () Bool)

(assert (=> b!446023 m!431311))

(assert (=> b!446024 m!431309))

(assert (=> b!446024 m!431309))

(declare-fun m!431313 () Bool)

(assert (=> b!446024 m!431313))

(declare-fun m!431315 () Bool)

(assert (=> b!446032 m!431315))

(declare-fun m!431317 () Bool)

(assert (=> d!74017 m!431317))

(assert (=> d!74017 m!431257))

(declare-fun m!431319 () Bool)

(assert (=> b!446027 m!431319))

(declare-fun m!431321 () Bool)

(assert (=> b!446026 m!431321))

(assert (=> bm!29652 m!431321))

(declare-fun m!431323 () Bool)

(assert (=> b!446028 m!431323))

(declare-fun m!431325 () Bool)

(assert (=> b!446028 m!431325))

(declare-fun m!431327 () Bool)

(assert (=> b!446028 m!431327))

(assert (=> b!446028 m!431323))

(declare-fun m!431329 () Bool)

(assert (=> b!446028 m!431329))

(declare-fun m!431331 () Bool)

(assert (=> b!446028 m!431331))

(assert (=> b!446028 m!431309))

(assert (=> b!446028 m!431329))

(assert (=> b!446028 m!431325))

(declare-fun m!431333 () Bool)

(assert (=> b!446028 m!431333))

(declare-fun m!431335 () Bool)

(assert (=> b!446028 m!431335))

(assert (=> b!446031 m!431309))

(assert (=> b!446031 m!431309))

(assert (=> b!446031 m!431311))

(assert (=> b!446029 m!431323))

(assert (=> b!446029 m!431323))

(assert (=> b!446029 m!431329))

(assert (=> b!446029 m!431331))

(assert (=> b!446029 m!431309))

(assert (=> b!446029 m!431329))

(assert (=> b!446029 m!431309))

(declare-fun m!431337 () Bool)

(assert (=> b!446029 m!431337))

(assert (=> bm!29639 d!74017))

(declare-fun b!446046 () Bool)

(declare-fun e!262065 () Bool)

(declare-fun call!29658 () Bool)

(assert (=> b!446046 (= e!262065 call!29658)))

(declare-fun b!446048 () Bool)

(assert (=> b!446048 (= e!262065 call!29658)))

(declare-fun b!446049 () Bool)

(declare-fun e!262067 () Bool)

(declare-fun contains!2492 (List!7885 (_ BitVec 64)) Bool)

(assert (=> b!446049 (= e!262067 (contains!2492 Nil!7882 (select (arr!13205 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun bm!29655 () Bool)

(declare-fun c!55836 () Bool)

(assert (=> bm!29655 (= call!29658 (arrayNoDuplicates!0 _keys!709 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!55836 (Cons!7881 (select (arr!13205 _keys!709) #b00000000000000000000000000000000) Nil!7882) Nil!7882)))))

(declare-fun b!446050 () Bool)

(declare-fun e!262066 () Bool)

(assert (=> b!446050 (= e!262066 e!262065)))

(assert (=> b!446050 (= c!55836 (validKeyInArray!0 (select (arr!13205 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!446047 () Bool)

(declare-fun e!262068 () Bool)

(assert (=> b!446047 (= e!262068 e!262066)))

(declare-fun res!264809 () Bool)

(assert (=> b!446047 (=> (not res!264809) (not e!262066))))

(assert (=> b!446047 (= res!264809 (not e!262067))))

(declare-fun res!264811 () Bool)

(assert (=> b!446047 (=> (not res!264811) (not e!262067))))

(assert (=> b!446047 (= res!264811 (validKeyInArray!0 (select (arr!13205 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun d!74019 () Bool)

(declare-fun res!264810 () Bool)

(assert (=> d!74019 (=> res!264810 e!262068)))

(assert (=> d!74019 (= res!264810 (bvsge #b00000000000000000000000000000000 (size!13557 _keys!709)))))

(assert (=> d!74019 (= (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7882) e!262068)))

(assert (= (and d!74019 (not res!264810)) b!446047))

(assert (= (and b!446047 res!264811) b!446049))

(assert (= (and b!446047 res!264809) b!446050))

(assert (= (and b!446050 c!55836) b!446046))

(assert (= (and b!446050 (not c!55836)) b!446048))

(assert (= (or b!446046 b!446048) bm!29655))

(declare-fun m!431339 () Bool)

(assert (=> b!446049 m!431339))

(assert (=> b!446049 m!431339))

(declare-fun m!431341 () Bool)

(assert (=> b!446049 m!431341))

(assert (=> bm!29655 m!431339))

(declare-fun m!431343 () Bool)

(assert (=> bm!29655 m!431343))

(assert (=> b!446050 m!431339))

(assert (=> b!446050 m!431339))

(declare-fun m!431345 () Bool)

(assert (=> b!446050 m!431345))

(assert (=> b!446047 m!431339))

(assert (=> b!446047 m!431339))

(assert (=> b!446047 m!431345))

(assert (=> b!445932 d!74019))

(declare-fun d!74021 () Bool)

(declare-fun res!264816 () Bool)

(declare-fun e!262073 () Bool)

(assert (=> d!74021 (=> res!264816 e!262073)))

(assert (=> d!74021 (= res!264816 (= (select (arr!13205 _keys!709) #b00000000000000000000000000000000) k0!794))))

(assert (=> d!74021 (= (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000) e!262073)))

(declare-fun b!446055 () Bool)

(declare-fun e!262074 () Bool)

(assert (=> b!446055 (= e!262073 e!262074)))

(declare-fun res!264817 () Bool)

(assert (=> b!446055 (=> (not res!264817) (not e!262074))))

(assert (=> b!446055 (= res!264817 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!13557 _keys!709)))))

(declare-fun b!446056 () Bool)

(assert (=> b!446056 (= e!262074 (arrayContainsKey!0 _keys!709 k0!794 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!74021 (not res!264816)) b!446055))

(assert (= (and b!446055 res!264817) b!446056))

(assert (=> d!74021 m!431339))

(declare-fun m!431347 () Bool)

(assert (=> b!446056 m!431347))

(assert (=> b!445923 d!74021))

(declare-fun d!74023 () Bool)

(assert (=> d!74023 (= (validMask!0 mask!1025) (and (or (= mask!1025 #b00000000000000000000000000000111) (= mask!1025 #b00000000000000000000000000001111) (= mask!1025 #b00000000000000000000000000011111) (= mask!1025 #b00000000000000000000000000111111) (= mask!1025 #b00000000000000000000000001111111) (= mask!1025 #b00000000000000000000000011111111) (= mask!1025 #b00000000000000000000000111111111) (= mask!1025 #b00000000000000000000001111111111) (= mask!1025 #b00000000000000000000011111111111) (= mask!1025 #b00000000000000000000111111111111) (= mask!1025 #b00000000000000000001111111111111) (= mask!1025 #b00000000000000000011111111111111) (= mask!1025 #b00000000000000000111111111111111) (= mask!1025 #b00000000000000001111111111111111) (= mask!1025 #b00000000000000011111111111111111) (= mask!1025 #b00000000000000111111111111111111) (= mask!1025 #b00000000000001111111111111111111) (= mask!1025 #b00000000000011111111111111111111) (= mask!1025 #b00000000000111111111111111111111) (= mask!1025 #b00000000001111111111111111111111) (= mask!1025 #b00000000011111111111111111111111) (= mask!1025 #b00000000111111111111111111111111) (= mask!1025 #b00000001111111111111111111111111) (= mask!1025 #b00000011111111111111111111111111) (= mask!1025 #b00000111111111111111111111111111) (= mask!1025 #b00001111111111111111111111111111) (= mask!1025 #b00011111111111111111111111111111) (= mask!1025 #b00111111111111111111111111111111)) (bvsle mask!1025 #b00111111111111111111111111111111)))))

(assert (=> b!445924 d!74023))

(declare-fun b!446057 () Bool)

(declare-fun e!262075 () Bool)

(declare-fun call!29659 () Bool)

(assert (=> b!446057 (= e!262075 call!29659)))

(declare-fun b!446059 () Bool)

(assert (=> b!446059 (= e!262075 call!29659)))

(declare-fun b!446060 () Bool)

(declare-fun e!262077 () Bool)

(assert (=> b!446060 (= e!262077 (contains!2492 Nil!7882 (select (arr!13205 lt!203675) #b00000000000000000000000000000000)))))

(declare-fun bm!29656 () Bool)

(declare-fun c!55837 () Bool)

(assert (=> bm!29656 (= call!29659 (arrayNoDuplicates!0 lt!203675 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!55837 (Cons!7881 (select (arr!13205 lt!203675) #b00000000000000000000000000000000) Nil!7882) Nil!7882)))))

(declare-fun b!446061 () Bool)

(declare-fun e!262076 () Bool)

(assert (=> b!446061 (= e!262076 e!262075)))

(assert (=> b!446061 (= c!55837 (validKeyInArray!0 (select (arr!13205 lt!203675) #b00000000000000000000000000000000)))))

(declare-fun b!446058 () Bool)

(declare-fun e!262078 () Bool)

(assert (=> b!446058 (= e!262078 e!262076)))

(declare-fun res!264818 () Bool)

(assert (=> b!446058 (=> (not res!264818) (not e!262076))))

(assert (=> b!446058 (= res!264818 (not e!262077))))

(declare-fun res!264820 () Bool)

(assert (=> b!446058 (=> (not res!264820) (not e!262077))))

(assert (=> b!446058 (= res!264820 (validKeyInArray!0 (select (arr!13205 lt!203675) #b00000000000000000000000000000000)))))

(declare-fun d!74025 () Bool)

(declare-fun res!264819 () Bool)

(assert (=> d!74025 (=> res!264819 e!262078)))

(assert (=> d!74025 (= res!264819 (bvsge #b00000000000000000000000000000000 (size!13557 lt!203675)))))

(assert (=> d!74025 (= (arrayNoDuplicates!0 lt!203675 #b00000000000000000000000000000000 Nil!7882) e!262078)))

(assert (= (and d!74025 (not res!264819)) b!446058))

(assert (= (and b!446058 res!264820) b!446060))

(assert (= (and b!446058 res!264818) b!446061))

(assert (= (and b!446061 c!55837) b!446057))

(assert (= (and b!446061 (not c!55837)) b!446059))

(assert (= (or b!446057 b!446059) bm!29656))

(assert (=> b!446060 m!431299))

(assert (=> b!446060 m!431299))

(declare-fun m!431349 () Bool)

(assert (=> b!446060 m!431349))

(assert (=> bm!29656 m!431299))

(declare-fun m!431351 () Bool)

(assert (=> bm!29656 m!431351))

(assert (=> b!446061 m!431299))

(assert (=> b!446061 m!431299))

(assert (=> b!446061 m!431307))

(assert (=> b!446058 m!431299))

(assert (=> b!446058 m!431299))

(assert (=> b!446058 m!431307))

(assert (=> b!445933 d!74025))

(declare-fun d!74027 () Bool)

(assert (=> d!74027 (= (array_inv!9566 _values!549) (bvsge (size!13558 _values!549) #b00000000000000000000000000000000))))

(assert (=> start!40500 d!74027))

(declare-fun d!74029 () Bool)

(assert (=> d!74029 (= (array_inv!9567 _keys!709) (bvsge (size!13557 _keys!709) #b00000000000000000000000000000000))))

(assert (=> start!40500 d!74029))

(declare-fun d!74031 () Bool)

(assert (=> d!74031 (= (validKeyInArray!0 k0!794) (and (not (= k0!794 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!794 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!445925 d!74031))

(declare-fun bm!29657 () Bool)

(declare-fun call!29660 () Bool)

(assert (=> bm!29657 (= call!29660 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!709 mask!1025))))

(declare-fun d!74033 () Bool)

(declare-fun res!264822 () Bool)

(declare-fun e!262081 () Bool)

(assert (=> d!74033 (=> res!264822 e!262081)))

(assert (=> d!74033 (= res!264822 (bvsge #b00000000000000000000000000000000 (size!13557 _keys!709)))))

(assert (=> d!74033 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025) e!262081)))

(declare-fun b!446062 () Bool)

(declare-fun e!262079 () Bool)

(assert (=> b!446062 (= e!262079 call!29660)))

(declare-fun b!446063 () Bool)

(declare-fun e!262080 () Bool)

(assert (=> b!446063 (= e!262079 e!262080)))

(declare-fun lt!203715 () (_ BitVec 64))

(assert (=> b!446063 (= lt!203715 (select (arr!13205 _keys!709) #b00000000000000000000000000000000))))

(declare-fun lt!203713 () Unit!13109)

(assert (=> b!446063 (= lt!203713 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!709 lt!203715 #b00000000000000000000000000000000))))

(assert (=> b!446063 (arrayContainsKey!0 _keys!709 lt!203715 #b00000000000000000000000000000000)))

(declare-fun lt!203714 () Unit!13109)

(assert (=> b!446063 (= lt!203714 lt!203713)))

(declare-fun res!264821 () Bool)

(assert (=> b!446063 (= res!264821 (= (seekEntryOrOpen!0 (select (arr!13205 _keys!709) #b00000000000000000000000000000000) _keys!709 mask!1025) (Found!3517 #b00000000000000000000000000000000)))))

(assert (=> b!446063 (=> (not res!264821) (not e!262080))))

(declare-fun b!446064 () Bool)

(assert (=> b!446064 (= e!262080 call!29660)))

(declare-fun b!446065 () Bool)

(assert (=> b!446065 (= e!262081 e!262079)))

(declare-fun c!55838 () Bool)

(assert (=> b!446065 (= c!55838 (validKeyInArray!0 (select (arr!13205 _keys!709) #b00000000000000000000000000000000)))))

(assert (= (and d!74033 (not res!264822)) b!446065))

(assert (= (and b!446065 c!55838) b!446063))

(assert (= (and b!446065 (not c!55838)) b!446062))

(assert (= (and b!446063 res!264821) b!446064))

(assert (= (or b!446064 b!446062) bm!29657))

(declare-fun m!431353 () Bool)

(assert (=> bm!29657 m!431353))

(assert (=> b!446063 m!431339))

(declare-fun m!431355 () Bool)

(assert (=> b!446063 m!431355))

(declare-fun m!431357 () Bool)

(assert (=> b!446063 m!431357))

(assert (=> b!446063 m!431339))

(declare-fun m!431359 () Bool)

(assert (=> b!446063 m!431359))

(assert (=> b!446065 m!431339))

(assert (=> b!446065 m!431339))

(assert (=> b!446065 m!431345))

(assert (=> b!445918 d!74033))

(declare-fun b!446066 () Bool)

(declare-fun e!262085 () ListLongMap!6711)

(declare-fun call!29661 () ListLongMap!6711)

(assert (=> b!446066 (= e!262085 call!29661)))

(declare-fun b!446067 () Bool)

(declare-fun e!262088 () Bool)

(assert (=> b!446067 (= e!262088 (validKeyInArray!0 (select (arr!13205 lt!203675) from!863)))))

(assert (=> b!446067 (bvsge from!863 #b00000000000000000000000000000000)))

(declare-fun b!446068 () Bool)

(declare-fun e!262084 () Bool)

(declare-fun e!262086 () Bool)

(assert (=> b!446068 (= e!262084 e!262086)))

(assert (=> b!446068 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13557 lt!203675)))))

(declare-fun res!264825 () Bool)

(declare-fun lt!203722 () ListLongMap!6711)

(assert (=> b!446068 (= res!264825 (contains!2491 lt!203722 (select (arr!13205 lt!203675) from!863)))))

(assert (=> b!446068 (=> (not res!264825) (not e!262086))))

(declare-fun b!446069 () Bool)

(declare-fun e!262083 () ListLongMap!6711)

(assert (=> b!446069 (= e!262083 (ListLongMap!6712 Nil!7881))))

(declare-fun b!446070 () Bool)

(declare-fun e!262082 () Bool)

(assert (=> b!446070 (= e!262082 (= lt!203722 (getCurrentListMapNoExtraKeys!1551 lt!203675 (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!446071 () Bool)

(declare-fun res!264824 () Bool)

(declare-fun e!262087 () Bool)

(assert (=> b!446071 (=> (not res!264824) (not e!262087))))

(assert (=> b!446071 (= res!264824 (not (contains!2491 lt!203722 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!446072 () Bool)

(declare-fun lt!203721 () Unit!13109)

(declare-fun lt!203719 () Unit!13109)

(assert (=> b!446072 (= lt!203721 lt!203719)))

(declare-fun lt!203717 () V!16941)

(declare-fun lt!203720 () (_ BitVec 64))

(declare-fun lt!203718 () ListLongMap!6711)

(declare-fun lt!203716 () (_ BitVec 64))

(assert (=> b!446072 (not (contains!2491 (+!1501 lt!203718 (tuple2!7785 lt!203720 lt!203717)) lt!203716))))

(assert (=> b!446072 (= lt!203719 (addStillNotContains!145 lt!203718 lt!203720 lt!203717 lt!203716))))

(assert (=> b!446072 (= lt!203716 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!446072 (= lt!203717 (get!6536 (select (arr!13206 (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549))) from!863) (dynLambda!841 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!446072 (= lt!203720 (select (arr!13205 lt!203675) from!863))))

(assert (=> b!446072 (= lt!203718 call!29661)))

(assert (=> b!446072 (= e!262085 (+!1501 call!29661 (tuple2!7785 (select (arr!13205 lt!203675) from!863) (get!6536 (select (arr!13206 (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549))) from!863) (dynLambda!841 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!446073 () Bool)

(assert (=> b!446073 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13557 lt!203675)))))

(assert (=> b!446073 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13558 (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549)))))))

(assert (=> b!446073 (= e!262086 (= (apply!310 lt!203722 (select (arr!13205 lt!203675) from!863)) (get!6536 (select (arr!13206 (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549))) from!863) (dynLambda!841 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!74035 () Bool)

(assert (=> d!74035 e!262087))

(declare-fun res!264826 () Bool)

(assert (=> d!74035 (=> (not res!264826) (not e!262087))))

(assert (=> d!74035 (= res!264826 (not (contains!2491 lt!203722 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74035 (= lt!203722 e!262083)))

(declare-fun c!55839 () Bool)

(assert (=> d!74035 (= c!55839 (bvsge from!863 (size!13557 lt!203675)))))

(assert (=> d!74035 (validMask!0 mask!1025)))

(assert (=> d!74035 (= (getCurrentListMapNoExtraKeys!1551 lt!203675 (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557) lt!203722)))

(declare-fun bm!29658 () Bool)

(assert (=> bm!29658 (= call!29661 (getCurrentListMapNoExtraKeys!1551 lt!203675 (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!446074 () Bool)

(assert (=> b!446074 (= e!262087 e!262084)))

(declare-fun c!55842 () Bool)

(assert (=> b!446074 (= c!55842 e!262088)))

(declare-fun res!264823 () Bool)

(assert (=> b!446074 (=> (not res!264823) (not e!262088))))

(assert (=> b!446074 (= res!264823 (bvslt from!863 (size!13557 lt!203675)))))

(declare-fun b!446075 () Bool)

(assert (=> b!446075 (= e!262083 e!262085)))

(declare-fun c!55841 () Bool)

(assert (=> b!446075 (= c!55841 (validKeyInArray!0 (select (arr!13205 lt!203675) from!863)))))

(declare-fun b!446076 () Bool)

(assert (=> b!446076 (= e!262082 (isEmpty!561 lt!203722))))

(declare-fun b!446077 () Bool)

(assert (=> b!446077 (= e!262084 e!262082)))

(declare-fun c!55840 () Bool)

(assert (=> b!446077 (= c!55840 (bvslt from!863 (size!13557 lt!203675)))))

(assert (= (and d!74035 c!55839) b!446069))

(assert (= (and d!74035 (not c!55839)) b!446075))

(assert (= (and b!446075 c!55841) b!446072))

(assert (= (and b!446075 (not c!55841)) b!446066))

(assert (= (or b!446072 b!446066) bm!29658))

(assert (= (and d!74035 res!264826) b!446071))

(assert (= (and b!446071 res!264824) b!446074))

(assert (= (and b!446074 res!264823) b!446067))

(assert (= (and b!446074 c!55842) b!446068))

(assert (= (and b!446074 (not c!55842)) b!446077))

(assert (= (and b!446068 res!264825) b!446073))

(assert (= (and b!446077 c!55840) b!446070))

(assert (= (and b!446077 (not c!55840)) b!446076))

(declare-fun b_lambda!9463 () Bool)

(assert (=> (not b_lambda!9463) (not b!446072)))

(assert (=> b!446072 t!13653))

(declare-fun b_and!18573 () Bool)

(assert (= b_and!18571 (and (=> t!13653 result!6973) b_and!18573)))

(declare-fun b_lambda!9465 () Bool)

(assert (=> (not b_lambda!9465) (not b!446073)))

(assert (=> b!446073 t!13653))

(declare-fun b_and!18575 () Bool)

(assert (= b_and!18573 (and (=> t!13653 result!6973) b_and!18575)))

(declare-fun m!431361 () Bool)

(assert (=> b!446067 m!431361))

(assert (=> b!446067 m!431361))

(declare-fun m!431363 () Bool)

(assert (=> b!446067 m!431363))

(assert (=> b!446068 m!431361))

(assert (=> b!446068 m!431361))

(declare-fun m!431365 () Bool)

(assert (=> b!446068 m!431365))

(declare-fun m!431367 () Bool)

(assert (=> b!446076 m!431367))

(declare-fun m!431369 () Bool)

(assert (=> d!74035 m!431369))

(assert (=> d!74035 m!431257))

(declare-fun m!431371 () Bool)

(assert (=> b!446071 m!431371))

(declare-fun m!431373 () Bool)

(assert (=> b!446070 m!431373))

(assert (=> bm!29658 m!431373))

(declare-fun m!431375 () Bool)

(assert (=> b!446072 m!431375))

(declare-fun m!431377 () Bool)

(assert (=> b!446072 m!431377))

(declare-fun m!431379 () Bool)

(assert (=> b!446072 m!431379))

(assert (=> b!446072 m!431375))

(assert (=> b!446072 m!431329))

(declare-fun m!431381 () Bool)

(assert (=> b!446072 m!431381))

(assert (=> b!446072 m!431361))

(assert (=> b!446072 m!431329))

(assert (=> b!446072 m!431377))

(declare-fun m!431383 () Bool)

(assert (=> b!446072 m!431383))

(declare-fun m!431385 () Bool)

(assert (=> b!446072 m!431385))

(assert (=> b!446075 m!431361))

(assert (=> b!446075 m!431361))

(assert (=> b!446075 m!431363))

(assert (=> b!446073 m!431375))

(assert (=> b!446073 m!431375))

(assert (=> b!446073 m!431329))

(assert (=> b!446073 m!431381))

(assert (=> b!446073 m!431361))

(assert (=> b!446073 m!431329))

(assert (=> b!446073 m!431361))

(declare-fun m!431387 () Bool)

(assert (=> b!446073 m!431387))

(assert (=> b!445927 d!74035))

(declare-fun b!446078 () Bool)

(declare-fun e!262092 () ListLongMap!6711)

(declare-fun call!29662 () ListLongMap!6711)

(assert (=> b!446078 (= e!262092 call!29662)))

(declare-fun b!446079 () Bool)

(declare-fun e!262095 () Bool)

(assert (=> b!446079 (= e!262095 (validKeyInArray!0 (select (arr!13205 _keys!709) from!863)))))

(assert (=> b!446079 (bvsge from!863 #b00000000000000000000000000000000)))

(declare-fun b!446080 () Bool)

(declare-fun e!262091 () Bool)

(declare-fun e!262093 () Bool)

(assert (=> b!446080 (= e!262091 e!262093)))

(assert (=> b!446080 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13557 _keys!709)))))

(declare-fun res!264829 () Bool)

(declare-fun lt!203729 () ListLongMap!6711)

(assert (=> b!446080 (= res!264829 (contains!2491 lt!203729 (select (arr!13205 _keys!709) from!863)))))

(assert (=> b!446080 (=> (not res!264829) (not e!262093))))

(declare-fun b!446081 () Bool)

(declare-fun e!262090 () ListLongMap!6711)

(assert (=> b!446081 (= e!262090 (ListLongMap!6712 Nil!7881))))

(declare-fun b!446082 () Bool)

(declare-fun e!262089 () Bool)

(assert (=> b!446082 (= e!262089 (= lt!203729 (getCurrentListMapNoExtraKeys!1551 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!446083 () Bool)

(declare-fun res!264828 () Bool)

(declare-fun e!262094 () Bool)

(assert (=> b!446083 (=> (not res!264828) (not e!262094))))

(assert (=> b!446083 (= res!264828 (not (contains!2491 lt!203729 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!446084 () Bool)

(declare-fun lt!203728 () Unit!13109)

(declare-fun lt!203726 () Unit!13109)

(assert (=> b!446084 (= lt!203728 lt!203726)))

(declare-fun lt!203727 () (_ BitVec 64))

(declare-fun lt!203724 () V!16941)

(declare-fun lt!203723 () (_ BitVec 64))

(declare-fun lt!203725 () ListLongMap!6711)

(assert (=> b!446084 (not (contains!2491 (+!1501 lt!203725 (tuple2!7785 lt!203727 lt!203724)) lt!203723))))

(assert (=> b!446084 (= lt!203726 (addStillNotContains!145 lt!203725 lt!203727 lt!203724 lt!203723))))

(assert (=> b!446084 (= lt!203723 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!446084 (= lt!203724 (get!6536 (select (arr!13206 _values!549) from!863) (dynLambda!841 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!446084 (= lt!203727 (select (arr!13205 _keys!709) from!863))))

(assert (=> b!446084 (= lt!203725 call!29662)))

(assert (=> b!446084 (= e!262092 (+!1501 call!29662 (tuple2!7785 (select (arr!13205 _keys!709) from!863) (get!6536 (select (arr!13206 _values!549) from!863) (dynLambda!841 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!446085 () Bool)

(assert (=> b!446085 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13557 _keys!709)))))

(assert (=> b!446085 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!13558 _values!549)))))

(assert (=> b!446085 (= e!262093 (= (apply!310 lt!203729 (select (arr!13205 _keys!709) from!863)) (get!6536 (select (arr!13206 _values!549) from!863) (dynLambda!841 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!74037 () Bool)

(assert (=> d!74037 e!262094))

(declare-fun res!264830 () Bool)

(assert (=> d!74037 (=> (not res!264830) (not e!262094))))

(assert (=> d!74037 (= res!264830 (not (contains!2491 lt!203729 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74037 (= lt!203729 e!262090)))

(declare-fun c!55843 () Bool)

(assert (=> d!74037 (= c!55843 (bvsge from!863 (size!13557 _keys!709)))))

(assert (=> d!74037 (validMask!0 mask!1025)))

(assert (=> d!74037 (= (getCurrentListMapNoExtraKeys!1551 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557) lt!203729)))

(declare-fun bm!29659 () Bool)

(assert (=> bm!29659 (= call!29662 (getCurrentListMapNoExtraKeys!1551 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!446086 () Bool)

(assert (=> b!446086 (= e!262094 e!262091)))

(declare-fun c!55846 () Bool)

(assert (=> b!446086 (= c!55846 e!262095)))

(declare-fun res!264827 () Bool)

(assert (=> b!446086 (=> (not res!264827) (not e!262095))))

(assert (=> b!446086 (= res!264827 (bvslt from!863 (size!13557 _keys!709)))))

(declare-fun b!446087 () Bool)

(assert (=> b!446087 (= e!262090 e!262092)))

(declare-fun c!55845 () Bool)

(assert (=> b!446087 (= c!55845 (validKeyInArray!0 (select (arr!13205 _keys!709) from!863)))))

(declare-fun b!446088 () Bool)

(assert (=> b!446088 (= e!262089 (isEmpty!561 lt!203729))))

(declare-fun b!446089 () Bool)

(assert (=> b!446089 (= e!262091 e!262089)))

(declare-fun c!55844 () Bool)

(assert (=> b!446089 (= c!55844 (bvslt from!863 (size!13557 _keys!709)))))

(assert (= (and d!74037 c!55843) b!446081))

(assert (= (and d!74037 (not c!55843)) b!446087))

(assert (= (and b!446087 c!55845) b!446084))

(assert (= (and b!446087 (not c!55845)) b!446078))

(assert (= (or b!446084 b!446078) bm!29659))

(assert (= (and d!74037 res!264830) b!446083))

(assert (= (and b!446083 res!264828) b!446086))

(assert (= (and b!446086 res!264827) b!446079))

(assert (= (and b!446086 c!55846) b!446080))

(assert (= (and b!446086 (not c!55846)) b!446089))

(assert (= (and b!446080 res!264829) b!446085))

(assert (= (and b!446089 c!55844) b!446082))

(assert (= (and b!446089 (not c!55844)) b!446088))

(declare-fun b_lambda!9467 () Bool)

(assert (=> (not b_lambda!9467) (not b!446084)))

(assert (=> b!446084 t!13653))

(declare-fun b_and!18577 () Bool)

(assert (= b_and!18575 (and (=> t!13653 result!6973) b_and!18577)))

(declare-fun b_lambda!9469 () Bool)

(assert (=> (not b_lambda!9469) (not b!446085)))

(assert (=> b!446085 t!13653))

(declare-fun b_and!18579 () Bool)

(assert (= b_and!18577 (and (=> t!13653 result!6973) b_and!18579)))

(declare-fun m!431389 () Bool)

(assert (=> b!446079 m!431389))

(assert (=> b!446079 m!431389))

(declare-fun m!431391 () Bool)

(assert (=> b!446079 m!431391))

(assert (=> b!446080 m!431389))

(assert (=> b!446080 m!431389))

(declare-fun m!431393 () Bool)

(assert (=> b!446080 m!431393))

(declare-fun m!431395 () Bool)

(assert (=> b!446088 m!431395))

(declare-fun m!431397 () Bool)

(assert (=> d!74037 m!431397))

(assert (=> d!74037 m!431257))

(declare-fun m!431399 () Bool)

(assert (=> b!446083 m!431399))

(declare-fun m!431401 () Bool)

(assert (=> b!446082 m!431401))

(assert (=> bm!29659 m!431401))

(declare-fun m!431403 () Bool)

(assert (=> b!446084 m!431403))

(declare-fun m!431405 () Bool)

(assert (=> b!446084 m!431405))

(declare-fun m!431407 () Bool)

(assert (=> b!446084 m!431407))

(assert (=> b!446084 m!431403))

(assert (=> b!446084 m!431329))

(declare-fun m!431409 () Bool)

(assert (=> b!446084 m!431409))

(assert (=> b!446084 m!431389))

(assert (=> b!446084 m!431329))

(assert (=> b!446084 m!431405))

(declare-fun m!431411 () Bool)

(assert (=> b!446084 m!431411))

(declare-fun m!431413 () Bool)

(assert (=> b!446084 m!431413))

(assert (=> b!446087 m!431389))

(assert (=> b!446087 m!431389))

(assert (=> b!446087 m!431391))

(assert (=> b!446085 m!431403))

(assert (=> b!446085 m!431403))

(assert (=> b!446085 m!431329))

(assert (=> b!446085 m!431409))

(assert (=> b!446085 m!431389))

(assert (=> b!446085 m!431329))

(assert (=> b!446085 m!431389))

(declare-fun m!431415 () Bool)

(assert (=> b!446085 m!431415))

(assert (=> b!445927 d!74037))

(declare-fun call!29668 () ListLongMap!6711)

(declare-fun bm!29664 () Bool)

(assert (=> bm!29664 (= call!29668 (getCurrentListMapNoExtraKeys!1551 (array!27522 (store (arr!13205 _keys!709) i!563 k0!794) (size!13557 _keys!709)) (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!446096 () Bool)

(declare-fun e!262100 () Bool)

(declare-fun call!29667 () ListLongMap!6711)

(assert (=> b!446096 (= e!262100 (= call!29668 call!29667))))

(declare-fun d!74039 () Bool)

(declare-fun e!262101 () Bool)

(assert (=> d!74039 e!262101))

(declare-fun res!264833 () Bool)

(assert (=> d!74039 (=> (not res!264833) (not e!262101))))

(assert (=> d!74039 (= res!264833 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563)) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13557 _keys!709)))) (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563)) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13558 _values!549)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13557 _keys!709)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13558 _values!549))))))))

(declare-fun lt!203732 () Unit!13109)

(declare-fun choose!1333 (array!27521 array!27523 (_ BitVec 32) (_ BitVec 32) V!16941 V!16941 (_ BitVec 32) (_ BitVec 64) V!16941 (_ BitVec 32) Int) Unit!13109)

(assert (=> d!74039 (= lt!203732 (choose!1333 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> d!74039 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!13557 _keys!709)))))

(assert (=> d!74039 (= (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!674 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!203732)))

(declare-fun b!446097 () Bool)

(assert (=> b!446097 (= e!262100 (= call!29668 (+!1501 call!29667 (tuple2!7785 k0!794 v!412))))))

(declare-fun bm!29665 () Bool)

(assert (=> bm!29665 (= call!29667 (getCurrentListMapNoExtraKeys!1551 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!446098 () Bool)

(assert (=> b!446098 (= e!262101 e!262100)))

(declare-fun c!55849 () Bool)

(assert (=> b!446098 (= c!55849 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(assert (= (and d!74039 res!264833) b!446098))

(assert (= (and b!446098 c!55849) b!446097))

(assert (= (and b!446098 (not c!55849)) b!446096))

(assert (= (or b!446097 b!446096) bm!29665))

(assert (= (or b!446097 b!446096) bm!29664))

(assert (=> bm!29664 m!431237))

(assert (=> bm!29664 m!431221))

(declare-fun m!431417 () Bool)

(assert (=> bm!29664 m!431417))

(declare-fun m!431419 () Bool)

(assert (=> d!74039 m!431419))

(declare-fun m!431421 () Bool)

(assert (=> b!446097 m!431421))

(declare-fun m!431423 () Bool)

(assert (=> bm!29665 m!431423))

(assert (=> b!445927 d!74039))

(declare-fun b!446099 () Bool)

(declare-fun e!262105 () ListLongMap!6711)

(declare-fun call!29669 () ListLongMap!6711)

(assert (=> b!446099 (= e!262105 call!29669)))

(declare-fun b!446100 () Bool)

(declare-fun e!262108 () Bool)

(assert (=> b!446100 (= e!262108 (validKeyInArray!0 (select (arr!13205 (ite c!55815 lt!203675 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!446100 (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))

(declare-fun b!446101 () Bool)

(declare-fun e!262104 () Bool)

(declare-fun e!262106 () Bool)

(assert (=> b!446101 (= e!262104 e!262106)))

(assert (=> b!446101 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13557 (ite c!55815 lt!203675 _keys!709))))))

(declare-fun res!264836 () Bool)

(declare-fun lt!203739 () ListLongMap!6711)

(assert (=> b!446101 (= res!264836 (contains!2491 lt!203739 (select (arr!13205 (ite c!55815 lt!203675 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!446101 (=> (not res!264836) (not e!262106))))

(declare-fun b!446102 () Bool)

(declare-fun e!262103 () ListLongMap!6711)

(assert (=> b!446102 (= e!262103 (ListLongMap!6712 Nil!7881))))

(declare-fun b!446103 () Bool)

(declare-fun e!262102 () Bool)

(assert (=> b!446103 (= e!262102 (= lt!203739 (getCurrentListMapNoExtraKeys!1551 (ite c!55815 lt!203675 _keys!709) (ite c!55815 (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(declare-fun b!446104 () Bool)

(declare-fun res!264835 () Bool)

(declare-fun e!262107 () Bool)

(assert (=> b!446104 (=> (not res!264835) (not e!262107))))

(assert (=> b!446104 (= res!264835 (not (contains!2491 lt!203739 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!446105 () Bool)

(declare-fun lt!203738 () Unit!13109)

(declare-fun lt!203736 () Unit!13109)

(assert (=> b!446105 (= lt!203738 lt!203736)))

(declare-fun lt!203733 () (_ BitVec 64))

(declare-fun lt!203735 () ListLongMap!6711)

(declare-fun lt!203737 () (_ BitVec 64))

(declare-fun lt!203734 () V!16941)

(assert (=> b!446105 (not (contains!2491 (+!1501 lt!203735 (tuple2!7785 lt!203737 lt!203734)) lt!203733))))

(assert (=> b!446105 (= lt!203736 (addStillNotContains!145 lt!203735 lt!203737 lt!203734 lt!203733))))

(assert (=> b!446105 (= lt!203733 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!446105 (= lt!203734 (get!6536 (select (arr!13206 (ite c!55815 (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549)) _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!841 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!446105 (= lt!203737 (select (arr!13205 (ite c!55815 lt!203675 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863)))))

(assert (=> b!446105 (= lt!203735 call!29669)))

(assert (=> b!446105 (= e!262105 (+!1501 call!29669 (tuple2!7785 (select (arr!13205 (ite c!55815 lt!203675 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863)) (get!6536 (select (arr!13206 (ite c!55815 (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549)) _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!841 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!446106 () Bool)

(assert (=> b!446106 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13557 (ite c!55815 lt!203675 _keys!709))))))

(assert (=> b!446106 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13558 (ite c!55815 (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549)) _values!549))))))

(assert (=> b!446106 (= e!262106 (= (apply!310 lt!203739 (select (arr!13205 (ite c!55815 lt!203675 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863))) (get!6536 (select (arr!13206 (ite c!55815 (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549)) _values!549)) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!841 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!74041 () Bool)

(assert (=> d!74041 e!262107))

(declare-fun res!264837 () Bool)

(assert (=> d!74041 (=> (not res!264837) (not e!262107))))

(assert (=> d!74041 (= res!264837 (not (contains!2491 lt!203739 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74041 (= lt!203739 e!262103)))

(declare-fun c!55850 () Bool)

(assert (=> d!74041 (= c!55850 (bvsge (bvadd #b00000000000000000000000000000001 from!863) (size!13557 (ite c!55815 lt!203675 _keys!709))))))

(assert (=> d!74041 (validMask!0 mask!1025)))

(assert (=> d!74041 (= (getCurrentListMapNoExtraKeys!1551 (ite c!55815 lt!203675 _keys!709) (ite c!55815 (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!203739)))

(declare-fun bm!29666 () Bool)

(assert (=> bm!29666 (= call!29669 (getCurrentListMapNoExtraKeys!1551 (ite c!55815 lt!203675 _keys!709) (ite c!55815 (array!27524 (store (arr!13206 _values!549) i!563 (ValueCellFull!5595 v!412)) (size!13558 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!446107 () Bool)

(assert (=> b!446107 (= e!262107 e!262104)))

(declare-fun c!55853 () Bool)

(assert (=> b!446107 (= c!55853 e!262108)))

(declare-fun res!264834 () Bool)

(assert (=> b!446107 (=> (not res!264834) (not e!262108))))

(assert (=> b!446107 (= res!264834 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13557 (ite c!55815 lt!203675 _keys!709))))))

(declare-fun b!446108 () Bool)

(assert (=> b!446108 (= e!262103 e!262105)))

(declare-fun c!55852 () Bool)

(assert (=> b!446108 (= c!55852 (validKeyInArray!0 (select (arr!13205 (ite c!55815 lt!203675 _keys!709)) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun b!446109 () Bool)

(assert (=> b!446109 (= e!262102 (isEmpty!561 lt!203739))))

(declare-fun b!446110 () Bool)

(assert (=> b!446110 (= e!262104 e!262102)))

(declare-fun c!55851 () Bool)

(assert (=> b!446110 (= c!55851 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!13557 (ite c!55815 lt!203675 _keys!709))))))

(assert (= (and d!74041 c!55850) b!446102))

(assert (= (and d!74041 (not c!55850)) b!446108))

(assert (= (and b!446108 c!55852) b!446105))

(assert (= (and b!446108 (not c!55852)) b!446099))

(assert (= (or b!446105 b!446099) bm!29666))

(assert (= (and d!74041 res!264837) b!446104))

(assert (= (and b!446104 res!264835) b!446107))

(assert (= (and b!446107 res!264834) b!446100))

(assert (= (and b!446107 c!55853) b!446101))

(assert (= (and b!446107 (not c!55853)) b!446110))

(assert (= (and b!446101 res!264836) b!446106))

(assert (= (and b!446110 c!55851) b!446103))

(assert (= (and b!446110 (not c!55851)) b!446109))

(declare-fun b_lambda!9471 () Bool)

(assert (=> (not b_lambda!9471) (not b!446105)))

(assert (=> b!446105 t!13653))

(declare-fun b_and!18581 () Bool)

(assert (= b_and!18579 (and (=> t!13653 result!6973) b_and!18581)))

(declare-fun b_lambda!9473 () Bool)

(assert (=> (not b_lambda!9473) (not b!446106)))

(assert (=> b!446106 t!13653))

(declare-fun b_and!18583 () Bool)

(assert (= b_and!18581 (and (=> t!13653 result!6973) b_and!18583)))

(declare-fun m!431425 () Bool)

(assert (=> b!446100 m!431425))

(assert (=> b!446100 m!431425))

(declare-fun m!431427 () Bool)

(assert (=> b!446100 m!431427))

(assert (=> b!446101 m!431425))

(assert (=> b!446101 m!431425))

(declare-fun m!431429 () Bool)

(assert (=> b!446101 m!431429))

(declare-fun m!431431 () Bool)

(assert (=> b!446109 m!431431))

(declare-fun m!431433 () Bool)

(assert (=> d!74041 m!431433))

(assert (=> d!74041 m!431257))

(declare-fun m!431435 () Bool)

(assert (=> b!446104 m!431435))

(declare-fun m!431437 () Bool)

(assert (=> b!446103 m!431437))

(assert (=> bm!29666 m!431437))

(declare-fun m!431439 () Bool)

(assert (=> b!446105 m!431439))

(declare-fun m!431441 () Bool)

(assert (=> b!446105 m!431441))

(declare-fun m!431443 () Bool)

(assert (=> b!446105 m!431443))

(assert (=> b!446105 m!431439))

(assert (=> b!446105 m!431329))

(declare-fun m!431445 () Bool)

(assert (=> b!446105 m!431445))

(assert (=> b!446105 m!431425))

(assert (=> b!446105 m!431329))

(assert (=> b!446105 m!431441))

(declare-fun m!431447 () Bool)

(assert (=> b!446105 m!431447))

(declare-fun m!431449 () Bool)

(assert (=> b!446105 m!431449))

(assert (=> b!446108 m!431425))

(assert (=> b!446108 m!431425))

(assert (=> b!446108 m!431427))

(assert (=> b!446106 m!431439))

(assert (=> b!446106 m!431439))

(assert (=> b!446106 m!431329))

(assert (=> b!446106 m!431445))

(assert (=> b!446106 m!431425))

(assert (=> b!446106 m!431329))

(assert (=> b!446106 m!431425))

(declare-fun m!431451 () Bool)

(assert (=> b!446106 m!431451))

(assert (=> bm!29640 d!74041))

(declare-fun d!74043 () Bool)

(declare-fun e!262111 () Bool)

(assert (=> d!74043 e!262111))

(declare-fun res!264843 () Bool)

(assert (=> d!74043 (=> (not res!264843) (not e!262111))))

(declare-fun lt!203749 () ListLongMap!6711)

(assert (=> d!74043 (= res!264843 (contains!2491 lt!203749 (_1!3902 (tuple2!7785 k0!794 v!412))))))

(declare-fun lt!203748 () List!7884)

(assert (=> d!74043 (= lt!203749 (ListLongMap!6712 lt!203748))))

(declare-fun lt!203750 () Unit!13109)

(declare-fun lt!203751 () Unit!13109)

(assert (=> d!74043 (= lt!203750 lt!203751)))

(declare-datatypes ((Option!373 0))(
  ( (Some!372 (v!8235 V!16941)) (None!371) )
))
(declare-fun getValueByKey!367 (List!7884 (_ BitVec 64)) Option!373)

(assert (=> d!74043 (= (getValueByKey!367 lt!203748 (_1!3902 (tuple2!7785 k0!794 v!412))) (Some!372 (_2!3902 (tuple2!7785 k0!794 v!412))))))

(declare-fun lemmaContainsTupThenGetReturnValue!191 (List!7884 (_ BitVec 64) V!16941) Unit!13109)

(assert (=> d!74043 (= lt!203751 (lemmaContainsTupThenGetReturnValue!191 lt!203748 (_1!3902 (tuple2!7785 k0!794 v!412)) (_2!3902 (tuple2!7785 k0!794 v!412))))))

(declare-fun insertStrictlySorted!193 (List!7884 (_ BitVec 64) V!16941) List!7884)

(assert (=> d!74043 (= lt!203748 (insertStrictlySorted!193 (toList!3371 call!29643) (_1!3902 (tuple2!7785 k0!794 v!412)) (_2!3902 (tuple2!7785 k0!794 v!412))))))

(assert (=> d!74043 (= (+!1501 call!29643 (tuple2!7785 k0!794 v!412)) lt!203749)))

(declare-fun b!446115 () Bool)

(declare-fun res!264842 () Bool)

(assert (=> b!446115 (=> (not res!264842) (not e!262111))))

(assert (=> b!446115 (= res!264842 (= (getValueByKey!367 (toList!3371 lt!203749) (_1!3902 (tuple2!7785 k0!794 v!412))) (Some!372 (_2!3902 (tuple2!7785 k0!794 v!412)))))))

(declare-fun b!446116 () Bool)

(declare-fun contains!2493 (List!7884 tuple2!7784) Bool)

(assert (=> b!446116 (= e!262111 (contains!2493 (toList!3371 lt!203749) (tuple2!7785 k0!794 v!412)))))

(assert (= (and d!74043 res!264843) b!446115))

(assert (= (and b!446115 res!264842) b!446116))

(declare-fun m!431453 () Bool)

(assert (=> d!74043 m!431453))

(declare-fun m!431455 () Bool)

(assert (=> d!74043 m!431455))

(declare-fun m!431457 () Bool)

(assert (=> d!74043 m!431457))

(declare-fun m!431459 () Bool)

(assert (=> d!74043 m!431459))

(declare-fun m!431461 () Bool)

(assert (=> b!446115 m!431461))

(declare-fun m!431463 () Bool)

(assert (=> b!446116 m!431463))

(assert (=> b!445919 d!74043))

(declare-fun b!446124 () Bool)

(declare-fun e!262116 () Bool)

(assert (=> b!446124 (= e!262116 tp_is_empty!11877)))

(declare-fun b!446123 () Bool)

(declare-fun e!262117 () Bool)

(assert (=> b!446123 (= e!262117 tp_is_empty!11877)))

(declare-fun condMapEmpty!19449 () Bool)

(declare-fun mapDefault!19449 () ValueCell!5595)

(assert (=> mapNonEmpty!19443 (= condMapEmpty!19449 (= mapRest!19443 ((as const (Array (_ BitVec 32) ValueCell!5595)) mapDefault!19449)))))

(declare-fun mapRes!19449 () Bool)

(assert (=> mapNonEmpty!19443 (= tp!37466 (and e!262116 mapRes!19449))))

(declare-fun mapIsEmpty!19449 () Bool)

(assert (=> mapIsEmpty!19449 mapRes!19449))

(declare-fun mapNonEmpty!19449 () Bool)

(declare-fun tp!37476 () Bool)

(assert (=> mapNonEmpty!19449 (= mapRes!19449 (and tp!37476 e!262117))))

(declare-fun mapRest!19449 () (Array (_ BitVec 32) ValueCell!5595))

(declare-fun mapValue!19449 () ValueCell!5595)

(declare-fun mapKey!19449 () (_ BitVec 32))

(assert (=> mapNonEmpty!19449 (= mapRest!19443 (store mapRest!19449 mapKey!19449 mapValue!19449))))

(assert (= (and mapNonEmpty!19443 condMapEmpty!19449) mapIsEmpty!19449))

(assert (= (and mapNonEmpty!19443 (not condMapEmpty!19449)) mapNonEmpty!19449))

(assert (= (and mapNonEmpty!19449 ((_ is ValueCellFull!5595) mapValue!19449)) b!446123))

(assert (= (and mapNonEmpty!19443 ((_ is ValueCellFull!5595) mapDefault!19449)) b!446124))

(declare-fun m!431465 () Bool)

(assert (=> mapNonEmpty!19449 m!431465))

(declare-fun b_lambda!9475 () Bool)

(assert (= b_lambda!9471 (or (and start!40500 b_free!10563) b_lambda!9475)))

(declare-fun b_lambda!9477 () Bool)

(assert (= b_lambda!9467 (or (and start!40500 b_free!10563) b_lambda!9477)))

(declare-fun b_lambda!9479 () Bool)

(assert (= b_lambda!9473 (or (and start!40500 b_free!10563) b_lambda!9479)))

(declare-fun b_lambda!9481 () Bool)

(assert (= b_lambda!9459 (or (and start!40500 b_free!10563) b_lambda!9481)))

(declare-fun b_lambda!9483 () Bool)

(assert (= b_lambda!9461 (or (and start!40500 b_free!10563) b_lambda!9483)))

(declare-fun b_lambda!9485 () Bool)

(assert (= b_lambda!9465 (or (and start!40500 b_free!10563) b_lambda!9485)))

(declare-fun b_lambda!9487 () Bool)

(assert (= b_lambda!9469 (or (and start!40500 b_free!10563) b_lambda!9487)))

(declare-fun b_lambda!9489 () Bool)

(assert (= b_lambda!9463 (or (and start!40500 b_free!10563) b_lambda!9489)))

(check-sat (not b!446097) (not b!446026) (not b_lambda!9485) (not bm!29664) (not bm!29657) (not d!74035) (not b!446109) (not b!446029) (not b!446027) (not b!446106) (not d!74037) (not b!446084) (not b!446082) (not b!446061) (not b!446031) (not b!446076) (not b!446063) (not b!446060) (not d!74039) (not b!446028) (not b!446049) (not b!446067) (not b!446083) (not b!446100) (not b!446088) (not bm!29655) (not b!446073) (not d!74043) (not b_lambda!9477) (not b!446050) (not d!74041) (not b!446058) (not bm!29659) (not b_lambda!9481) (not b_lambda!9489) (not b!445995) (not b!446115) (not bm!29652) (not b!446056) (not b!445997) (not b!446075) (not b_next!10563) (not b!446068) (not b!446071) (not b!446065) (not b!446047) (not b!446101) (not b_lambda!9475) (not b!446024) (not bm!29656) (not b!446105) (not b_lambda!9487) (not mapNonEmpty!19449) (not b!446116) (not b!446070) (not b!446072) (not bm!29658) (not bm!29649) b_and!18583 (not bm!29665) (not bm!29666) (not b!446103) (not b_lambda!9479) (not b!446032) (not b!446023) (not b!446087) (not b!446080) (not b!446108) (not b!446104) (not b!446085) (not b_lambda!9483) tp_is_empty!11877 (not d!74017) (not b!446079))
(check-sat b_and!18583 (not b_next!10563))
