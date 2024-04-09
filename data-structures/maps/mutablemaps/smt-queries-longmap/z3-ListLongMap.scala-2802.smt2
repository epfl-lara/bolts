; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40710 () Bool)

(assert start!40710)

(declare-fun b_free!10713 () Bool)

(declare-fun b_next!10713 () Bool)

(assert (=> start!40710 (= b_free!10713 (not b_next!10713))))

(declare-fun tp!37958 () Bool)

(declare-fun b_and!18739 () Bool)

(assert (=> start!40710 (= tp!37958 b_and!18739)))

(declare-fun b!450091 () Bool)

(declare-fun res!267945 () Bool)

(declare-fun e!263782 () Bool)

(assert (=> b!450091 (=> (not res!267945) (not e!263782))))

(declare-datatypes ((array!27869 0))(
  ( (array!27870 (arr!13377 (Array (_ BitVec 32) (_ BitVec 64))) (size!13729 (_ BitVec 32))) )
))
(declare-fun lt!204532 () array!27869)

(declare-datatypes ((List!8024 0))(
  ( (Nil!8021) (Cons!8020 (h!8876 (_ BitVec 64)) (t!13794 List!8024)) )
))
(declare-fun arrayNoDuplicates!0 (array!27869 (_ BitVec 32) List!8024) Bool)

(assert (=> b!450091 (= res!267945 (arrayNoDuplicates!0 lt!204532 #b00000000000000000000000000000000 Nil!8021))))

(declare-fun b!450092 () Bool)

(declare-fun e!263780 () Bool)

(declare-fun tp_is_empty!12051 () Bool)

(assert (=> b!450092 (= e!263780 tp_is_empty!12051)))

(declare-fun b!450093 () Bool)

(declare-fun res!267944 () Bool)

(assert (=> b!450093 (=> (not res!267944) (not e!263782))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!450093 (= res!267944 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!19710 () Bool)

(declare-fun mapRes!19710 () Bool)

(declare-fun tp!37959 () Bool)

(assert (=> mapNonEmpty!19710 (= mapRes!19710 (and tp!37959 e!263780))))

(declare-datatypes ((V!17173 0))(
  ( (V!17174 (val!6070 Int)) )
))
(declare-datatypes ((ValueCell!5682 0))(
  ( (ValueCellFull!5682 (v!8321 V!17173)) (EmptyCell!5682) )
))
(declare-datatypes ((array!27871 0))(
  ( (array!27872 (arr!13378 (Array (_ BitVec 32) ValueCell!5682)) (size!13730 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27871)

(declare-fun mapKey!19710 () (_ BitVec 32))

(declare-fun mapValue!19710 () ValueCell!5682)

(declare-fun mapRest!19710 () (Array (_ BitVec 32) ValueCell!5682))

(assert (=> mapNonEmpty!19710 (= (arr!13378 _values!549) (store mapRest!19710 mapKey!19710 mapValue!19710))))

(declare-fun b!450094 () Bool)

(declare-fun res!267938 () Bool)

(declare-fun e!263783 () Bool)

(assert (=> b!450094 (=> (not res!267938) (not e!263783))))

(declare-fun _keys!709 () array!27869)

(assert (=> b!450094 (= res!267938 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8021))))

(declare-fun b!450095 () Bool)

(declare-fun res!267941 () Bool)

(assert (=> b!450095 (=> (not res!267941) (not e!263783))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27869 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!450095 (= res!267941 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!450096 () Bool)

(declare-fun res!267948 () Bool)

(assert (=> b!450096 (=> (not res!267948) (not e!263783))))

(assert (=> b!450096 (= res!267948 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13729 _keys!709))))))

(declare-fun b!450097 () Bool)

(declare-fun res!267943 () Bool)

(assert (=> b!450097 (=> (not res!267943) (not e!263783))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27869 (_ BitVec 32)) Bool)

(assert (=> b!450097 (= res!267943 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun minValue!515 () V!17173)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun c!55901 () Bool)

(declare-fun zeroValue!515 () V!17173)

(declare-fun lt!204529 () array!27871)

(declare-datatypes ((tuple2!7914 0))(
  ( (tuple2!7915 (_1!3967 (_ BitVec 64)) (_2!3967 V!17173)) )
))
(declare-datatypes ((List!8025 0))(
  ( (Nil!8022) (Cons!8021 (h!8877 tuple2!7914) (t!13795 List!8025)) )
))
(declare-datatypes ((ListLongMap!6841 0))(
  ( (ListLongMap!6842 (toList!3436 List!8025)) )
))
(declare-fun call!29728 () ListLongMap!6841)

(declare-fun bm!29725 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1614 (array!27869 array!27871 (_ BitVec 32) (_ BitVec 32) V!17173 V!17173 (_ BitVec 32) Int) ListLongMap!6841)

(assert (=> bm!29725 (= call!29728 (getCurrentListMapNoExtraKeys!1614 (ite c!55901 _keys!709 lt!204532) (ite c!55901 _values!549 lt!204529) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450098 () Bool)

(assert (=> b!450098 (= e!263783 e!263782)))

(declare-fun res!267942 () Bool)

(assert (=> b!450098 (=> (not res!267942) (not e!263782))))

(assert (=> b!450098 (= res!267942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204532 mask!1025))))

(assert (=> b!450098 (= lt!204532 (array!27870 (store (arr!13377 _keys!709) i!563 k0!794) (size!13729 _keys!709)))))

(declare-fun b!450099 () Bool)

(declare-fun res!267935 () Bool)

(assert (=> b!450099 (=> (not res!267935) (not e!263783))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!450099 (= res!267935 (validKeyInArray!0 k0!794))))

(declare-fun mapIsEmpty!19710 () Bool)

(assert (=> mapIsEmpty!19710 mapRes!19710))

(declare-fun b!450101 () Bool)

(declare-fun e!263785 () Bool)

(assert (=> b!450101 (= e!263785 (bvslt i!563 (size!13730 _values!549)))))

(declare-fun e!263786 () Bool)

(declare-fun call!29729 () ListLongMap!6841)

(declare-fun b!450102 () Bool)

(declare-fun v!412 () V!17173)

(declare-fun +!1509 (ListLongMap!6841 tuple2!7914) ListLongMap!6841)

(assert (=> b!450102 (= e!263786 (= call!29729 (+!1509 call!29728 (tuple2!7915 k0!794 v!412))))))

(declare-fun b!450103 () Bool)

(declare-fun e!263781 () Bool)

(assert (=> b!450103 (= e!263781 (not e!263785))))

(declare-fun res!267946 () Bool)

(assert (=> b!450103 (=> res!267946 e!263785)))

(assert (=> b!450103 (= res!267946 (validKeyInArray!0 (select (arr!13377 _keys!709) from!863)))))

(assert (=> b!450103 e!263786))

(assert (=> b!450103 (= c!55901 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!13121 0))(
  ( (Unit!13122) )
))
(declare-fun lt!204530 () Unit!13121)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!679 (array!27869 array!27871 (_ BitVec 32) (_ BitVec 32) V!17173 V!17173 (_ BitVec 32) (_ BitVec 64) V!17173 (_ BitVec 32) Int) Unit!13121)

(assert (=> b!450103 (= lt!204530 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!679 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!29726 () Bool)

(assert (=> bm!29726 (= call!29729 (getCurrentListMapNoExtraKeys!1614 (ite c!55901 lt!204532 _keys!709) (ite c!55901 lt!204529 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450104 () Bool)

(declare-fun res!267940 () Bool)

(assert (=> b!450104 (=> (not res!267940) (not e!263783))))

(assert (=> b!450104 (= res!267940 (and (= (size!13730 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13729 _keys!709) (size!13730 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!450105 () Bool)

(assert (=> b!450105 (= e!263786 (= call!29728 call!29729))))

(declare-fun b!450106 () Bool)

(declare-fun e!263787 () Bool)

(declare-fun e!263784 () Bool)

(assert (=> b!450106 (= e!263787 (and e!263784 mapRes!19710))))

(declare-fun condMapEmpty!19710 () Bool)

(declare-fun mapDefault!19710 () ValueCell!5682)

(assert (=> b!450106 (= condMapEmpty!19710 (= (arr!13378 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5682)) mapDefault!19710)))))

(declare-fun b!450107 () Bool)

(assert (=> b!450107 (= e!263784 tp_is_empty!12051)))

(declare-fun b!450108 () Bool)

(declare-fun res!267947 () Bool)

(assert (=> b!450108 (=> (not res!267947) (not e!263783))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!450108 (= res!267947 (validMask!0 mask!1025))))

(declare-fun b!450109 () Bool)

(declare-fun res!267936 () Bool)

(assert (=> b!450109 (=> (not res!267936) (not e!263783))))

(assert (=> b!450109 (= res!267936 (or (= (select (arr!13377 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13377 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!267937 () Bool)

(assert (=> start!40710 (=> (not res!267937) (not e!263783))))

(assert (=> start!40710 (= res!267937 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13729 _keys!709))))))

(assert (=> start!40710 e!263783))

(assert (=> start!40710 tp_is_empty!12051))

(assert (=> start!40710 tp!37958))

(assert (=> start!40710 true))

(declare-fun array_inv!9684 (array!27871) Bool)

(assert (=> start!40710 (and (array_inv!9684 _values!549) e!263787)))

(declare-fun array_inv!9685 (array!27869) Bool)

(assert (=> start!40710 (array_inv!9685 _keys!709)))

(declare-fun b!450100 () Bool)

(assert (=> b!450100 (= e!263782 e!263781)))

(declare-fun res!267939 () Bool)

(assert (=> b!450100 (=> (not res!267939) (not e!263781))))

(assert (=> b!450100 (= res!267939 (= from!863 i!563))))

(declare-fun lt!204528 () ListLongMap!6841)

(assert (=> b!450100 (= lt!204528 (getCurrentListMapNoExtraKeys!1614 lt!204532 lt!204529 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!450100 (= lt!204529 (array!27872 (store (arr!13378 _values!549) i!563 (ValueCellFull!5682 v!412)) (size!13730 _values!549)))))

(declare-fun lt!204531 () ListLongMap!6841)

(assert (=> b!450100 (= lt!204531 (getCurrentListMapNoExtraKeys!1614 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (= (and start!40710 res!267937) b!450108))

(assert (= (and b!450108 res!267947) b!450104))

(assert (= (and b!450104 res!267940) b!450097))

(assert (= (and b!450097 res!267943) b!450094))

(assert (= (and b!450094 res!267938) b!450096))

(assert (= (and b!450096 res!267948) b!450099))

(assert (= (and b!450099 res!267935) b!450109))

(assert (= (and b!450109 res!267936) b!450095))

(assert (= (and b!450095 res!267941) b!450098))

(assert (= (and b!450098 res!267942) b!450091))

(assert (= (and b!450091 res!267945) b!450093))

(assert (= (and b!450093 res!267944) b!450100))

(assert (= (and b!450100 res!267939) b!450103))

(assert (= (and b!450103 c!55901) b!450102))

(assert (= (and b!450103 (not c!55901)) b!450105))

(assert (= (or b!450102 b!450105) bm!29726))

(assert (= (or b!450102 b!450105) bm!29725))

(assert (= (and b!450103 (not res!267946)) b!450101))

(assert (= (and b!450106 condMapEmpty!19710) mapIsEmpty!19710))

(assert (= (and b!450106 (not condMapEmpty!19710)) mapNonEmpty!19710))

(get-info :version)

(assert (= (and mapNonEmpty!19710 ((_ is ValueCellFull!5682) mapValue!19710)) b!450092))

(assert (= (and b!450106 ((_ is ValueCellFull!5682) mapDefault!19710)) b!450107))

(assert (= start!40710 b!450106))

(declare-fun m!434075 () Bool)

(assert (=> b!450094 m!434075))

(declare-fun m!434077 () Bool)

(assert (=> b!450109 m!434077))

(declare-fun m!434079 () Bool)

(assert (=> bm!29725 m!434079))

(declare-fun m!434081 () Bool)

(assert (=> b!450091 m!434081))

(declare-fun m!434083 () Bool)

(assert (=> start!40710 m!434083))

(declare-fun m!434085 () Bool)

(assert (=> start!40710 m!434085))

(declare-fun m!434087 () Bool)

(assert (=> b!450095 m!434087))

(declare-fun m!434089 () Bool)

(assert (=> b!450108 m!434089))

(declare-fun m!434091 () Bool)

(assert (=> b!450103 m!434091))

(assert (=> b!450103 m!434091))

(declare-fun m!434093 () Bool)

(assert (=> b!450103 m!434093))

(declare-fun m!434095 () Bool)

(assert (=> b!450103 m!434095))

(declare-fun m!434097 () Bool)

(assert (=> b!450098 m!434097))

(declare-fun m!434099 () Bool)

(assert (=> b!450098 m!434099))

(declare-fun m!434101 () Bool)

(assert (=> b!450099 m!434101))

(declare-fun m!434103 () Bool)

(assert (=> mapNonEmpty!19710 m!434103))

(declare-fun m!434105 () Bool)

(assert (=> b!450102 m!434105))

(declare-fun m!434107 () Bool)

(assert (=> b!450097 m!434107))

(declare-fun m!434109 () Bool)

(assert (=> bm!29726 m!434109))

(declare-fun m!434111 () Bool)

(assert (=> b!450100 m!434111))

(declare-fun m!434113 () Bool)

(assert (=> b!450100 m!434113))

(declare-fun m!434115 () Bool)

(assert (=> b!450100 m!434115))

(check-sat (not b!450097) (not b!450100) (not b!450099) (not b!450108) (not b!450103) (not mapNonEmpty!19710) (not b!450094) (not bm!29725) (not b!450091) tp_is_empty!12051 b_and!18739 (not b!450098) (not start!40710) (not b!450102) (not b!450095) (not bm!29726) (not b_next!10713))
(check-sat b_and!18739 (not b_next!10713))
