; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38660 () Bool)

(assert start!38660)

(declare-fun b_free!9189 () Bool)

(declare-fun b_next!9189 () Bool)

(assert (=> start!38660 (= b_free!9189 (not b_next!9189))))

(declare-fun tp!32691 () Bool)

(declare-fun b_and!16593 () Bool)

(assert (=> start!38660 (= tp!32691 b_and!16593)))

(declare-fun res!230940 () Bool)

(declare-fun e!241880 () Bool)

(assert (=> start!38660 (=> (not res!230940) (not e!241880))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24017 0))(
  ( (array!24018 (arr!11455 (Array (_ BitVec 32) (_ BitVec 64))) (size!11807 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24017)

(assert (=> start!38660 (= res!230940 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11807 _keys!709))))))

(assert (=> start!38660 e!241880))

(declare-fun tp_is_empty!10071 () Bool)

(assert (=> start!38660 tp_is_empty!10071))

(assert (=> start!38660 tp!32691))

(assert (=> start!38660 true))

(declare-datatypes ((V!14533 0))(
  ( (V!14534 (val!5080 Int)) )
))
(declare-datatypes ((ValueCell!4692 0))(
  ( (ValueCellFull!4692 (v!7323 V!14533)) (EmptyCell!4692) )
))
(declare-datatypes ((array!24019 0))(
  ( (array!24020 (arr!11456 (Array (_ BitVec 32) ValueCell!4692)) (size!11808 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24019)

(declare-fun e!241882 () Bool)

(declare-fun array_inv!8380 (array!24019) Bool)

(assert (=> start!38660 (and (array_inv!8380 _values!549) e!241882)))

(declare-fun array_inv!8381 (array!24017) Bool)

(assert (=> start!38660 (array_inv!8381 _keys!709)))

(declare-fun mapIsEmpty!16728 () Bool)

(declare-fun mapRes!16728 () Bool)

(assert (=> mapIsEmpty!16728 mapRes!16728))

(declare-fun minValue!515 () V!14533)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun bm!28225 () Bool)

(declare-fun zeroValue!515 () V!14533)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((tuple2!6674 0))(
  ( (tuple2!6675 (_1!3347 (_ BitVec 64)) (_2!3347 V!14533)) )
))
(declare-datatypes ((List!6625 0))(
  ( (Nil!6622) (Cons!6621 (h!7477 tuple2!6674) (t!11807 List!6625)) )
))
(declare-datatypes ((ListLongMap!5601 0))(
  ( (ListLongMap!5602 (toList!2816 List!6625)) )
))
(declare-fun call!28228 () ListLongMap!5601)

(declare-fun lt!187755 () array!24017)

(declare-fun v!412 () V!14533)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun c!54665 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1030 (array!24017 array!24019 (_ BitVec 32) (_ BitVec 32) V!14533 V!14533 (_ BitVec 32) Int) ListLongMap!5601)

(assert (=> bm!28225 (= call!28228 (getCurrentListMapNoExtraKeys!1030 (ite c!54665 lt!187755 _keys!709) (ite c!54665 (array!24020 (store (arr!11456 _values!549) i!563 (ValueCellFull!4692 v!412)) (size!11808 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401083 () Bool)

(declare-fun res!230934 () Bool)

(declare-fun e!241881 () Bool)

(assert (=> b!401083 (=> (not res!230934) (not e!241881))))

(assert (=> b!401083 (= res!230934 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11807 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!401084 () Bool)

(declare-fun e!241879 () Bool)

(assert (=> b!401084 (= e!241882 (and e!241879 mapRes!16728))))

(declare-fun condMapEmpty!16728 () Bool)

(declare-fun mapDefault!16728 () ValueCell!4692)

(assert (=> b!401084 (= condMapEmpty!16728 (= (arr!11456 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4692)) mapDefault!16728)))))

(declare-fun b!401085 () Bool)

(declare-fun res!230933 () Bool)

(assert (=> b!401085 (=> (not res!230933) (not e!241880))))

(declare-datatypes ((List!6626 0))(
  ( (Nil!6623) (Cons!6622 (h!7478 (_ BitVec 64)) (t!11808 List!6626)) )
))
(declare-fun arrayNoDuplicates!0 (array!24017 (_ BitVec 32) List!6626) Bool)

(assert (=> b!401085 (= res!230933 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6623))))

(declare-fun b!401086 () Bool)

(declare-fun res!230935 () Bool)

(assert (=> b!401086 (=> (not res!230935) (not e!241880))))

(assert (=> b!401086 (= res!230935 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11807 _keys!709))))))

(declare-fun b!401087 () Bool)

(declare-fun res!230939 () Bool)

(assert (=> b!401087 (=> (not res!230939) (not e!241880))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!401087 (= res!230939 (validKeyInArray!0 k0!794))))

(declare-fun b!401088 () Bool)

(assert (=> b!401088 (= e!241880 e!241881)))

(declare-fun res!230938 () Bool)

(assert (=> b!401088 (=> (not res!230938) (not e!241881))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24017 (_ BitVec 32)) Bool)

(assert (=> b!401088 (= res!230938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187755 mask!1025))))

(assert (=> b!401088 (= lt!187755 (array!24018 (store (arr!11455 _keys!709) i!563 k0!794) (size!11807 _keys!709)))))

(declare-fun b!401089 () Bool)

(declare-fun res!230931 () Bool)

(assert (=> b!401089 (=> (not res!230931) (not e!241880))))

(assert (=> b!401089 (= res!230931 (and (= (size!11808 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11807 _keys!709) (size!11808 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!16728 () Bool)

(declare-fun tp!32690 () Bool)

(declare-fun e!241885 () Bool)

(assert (=> mapNonEmpty!16728 (= mapRes!16728 (and tp!32690 e!241885))))

(declare-fun mapKey!16728 () (_ BitVec 32))

(declare-fun mapValue!16728 () ValueCell!4692)

(declare-fun mapRest!16728 () (Array (_ BitVec 32) ValueCell!4692))

(assert (=> mapNonEmpty!16728 (= (arr!11456 _values!549) (store mapRest!16728 mapKey!16728 mapValue!16728))))

(declare-fun b!401090 () Bool)

(assert (=> b!401090 (= e!241879 tp_is_empty!10071)))

(declare-fun b!401091 () Bool)

(declare-fun res!230937 () Bool)

(assert (=> b!401091 (=> (not res!230937) (not e!241880))))

(declare-fun arrayContainsKey!0 (array!24017 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!401091 (= res!230937 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!401092 () Bool)

(declare-fun res!230936 () Bool)

(assert (=> b!401092 (=> (not res!230936) (not e!241880))))

(assert (=> b!401092 (= res!230936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!401093 () Bool)

(declare-fun res!230929 () Bool)

(assert (=> b!401093 (=> (not res!230929) (not e!241881))))

(assert (=> b!401093 (= res!230929 (arrayNoDuplicates!0 lt!187755 #b00000000000000000000000000000000 Nil!6623))))

(declare-fun b!401094 () Bool)

(declare-fun res!230932 () Bool)

(assert (=> b!401094 (=> (not res!230932) (not e!241880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!401094 (= res!230932 (validMask!0 mask!1025))))

(declare-fun b!401095 () Bool)

(assert (=> b!401095 (= e!241885 tp_is_empty!10071)))

(declare-fun b!401096 () Bool)

(assert (=> b!401096 (= e!241881 (not true))))

(declare-fun e!241883 () Bool)

(assert (=> b!401096 e!241883))

(assert (=> b!401096 (= c!54665 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12101 0))(
  ( (Unit!12102) )
))
(declare-fun lt!187754 () Unit!12101)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!313 (array!24017 array!24019 (_ BitVec 32) (_ BitVec 32) V!14533 V!14533 (_ BitVec 32) (_ BitVec 64) V!14533 (_ BitVec 32) Int) Unit!12101)

(assert (=> b!401096 (= lt!187754 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!313 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401097 () Bool)

(declare-fun call!28229 () ListLongMap!5601)

(assert (=> b!401097 (= e!241883 (= call!28229 call!28228))))

(declare-fun b!401098 () Bool)

(declare-fun +!1101 (ListLongMap!5601 tuple2!6674) ListLongMap!5601)

(assert (=> b!401098 (= e!241883 (= call!28228 (+!1101 call!28229 (tuple2!6675 k0!794 v!412))))))

(declare-fun b!401099 () Bool)

(declare-fun res!230930 () Bool)

(assert (=> b!401099 (=> (not res!230930) (not e!241880))))

(assert (=> b!401099 (= res!230930 (or (= (select (arr!11455 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11455 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!28226 () Bool)

(assert (=> bm!28226 (= call!28229 (getCurrentListMapNoExtraKeys!1030 (ite c!54665 _keys!709 lt!187755) (ite c!54665 _values!549 (array!24020 (store (arr!11456 _values!549) i!563 (ValueCellFull!4692 v!412)) (size!11808 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (= (and start!38660 res!230940) b!401094))

(assert (= (and b!401094 res!230932) b!401089))

(assert (= (and b!401089 res!230931) b!401092))

(assert (= (and b!401092 res!230936) b!401085))

(assert (= (and b!401085 res!230933) b!401086))

(assert (= (and b!401086 res!230935) b!401087))

(assert (= (and b!401087 res!230939) b!401099))

(assert (= (and b!401099 res!230930) b!401091))

(assert (= (and b!401091 res!230937) b!401088))

(assert (= (and b!401088 res!230938) b!401093))

(assert (= (and b!401093 res!230929) b!401083))

(assert (= (and b!401083 res!230934) b!401096))

(assert (= (and b!401096 c!54665) b!401098))

(assert (= (and b!401096 (not c!54665)) b!401097))

(assert (= (or b!401098 b!401097) bm!28225))

(assert (= (or b!401098 b!401097) bm!28226))

(assert (= (and b!401084 condMapEmpty!16728) mapIsEmpty!16728))

(assert (= (and b!401084 (not condMapEmpty!16728)) mapNonEmpty!16728))

(get-info :version)

(assert (= (and mapNonEmpty!16728 ((_ is ValueCellFull!4692) mapValue!16728)) b!401095))

(assert (= (and b!401084 ((_ is ValueCellFull!4692) mapDefault!16728)) b!401090))

(assert (= start!38660 b!401084))

(declare-fun m!395035 () Bool)

(assert (=> b!401093 m!395035))

(declare-fun m!395037 () Bool)

(assert (=> mapNonEmpty!16728 m!395037))

(declare-fun m!395039 () Bool)

(assert (=> bm!28226 m!395039))

(declare-fun m!395041 () Bool)

(assert (=> bm!28226 m!395041))

(declare-fun m!395043 () Bool)

(assert (=> b!401094 m!395043))

(declare-fun m!395045 () Bool)

(assert (=> b!401085 m!395045))

(declare-fun m!395047 () Bool)

(assert (=> b!401087 m!395047))

(declare-fun m!395049 () Bool)

(assert (=> b!401091 m!395049))

(declare-fun m!395051 () Bool)

(assert (=> b!401092 m!395051))

(declare-fun m!395053 () Bool)

(assert (=> b!401088 m!395053))

(declare-fun m!395055 () Bool)

(assert (=> b!401088 m!395055))

(declare-fun m!395057 () Bool)

(assert (=> b!401098 m!395057))

(assert (=> bm!28225 m!395039))

(declare-fun m!395059 () Bool)

(assert (=> bm!28225 m!395059))

(declare-fun m!395061 () Bool)

(assert (=> start!38660 m!395061))

(declare-fun m!395063 () Bool)

(assert (=> start!38660 m!395063))

(declare-fun m!395065 () Bool)

(assert (=> b!401096 m!395065))

(declare-fun m!395067 () Bool)

(assert (=> b!401099 m!395067))

(check-sat b_and!16593 (not b!401093) (not b!401085) (not b!401092) (not b!401096) (not start!38660) (not mapNonEmpty!16728) (not b!401098) tp_is_empty!10071 (not b!401091) (not bm!28225) (not b!401094) (not b!401087) (not b!401088) (not b_next!9189) (not bm!28226))
(check-sat b_and!16593 (not b_next!9189))
