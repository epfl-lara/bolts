; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38654 () Bool)

(assert start!38654)

(declare-fun b_free!9183 () Bool)

(declare-fun b_next!9183 () Bool)

(assert (=> start!38654 (= b_free!9183 (not b_next!9183))))

(declare-fun tp!32673 () Bool)

(declare-fun b_and!16587 () Bool)

(assert (=> start!38654 (= tp!32673 b_and!16587)))

(declare-fun mapNonEmpty!16719 () Bool)

(declare-fun mapRes!16719 () Bool)

(declare-fun tp!32672 () Bool)

(declare-fun e!241817 () Bool)

(assert (=> mapNonEmpty!16719 (= mapRes!16719 (and tp!32672 e!241817))))

(declare-datatypes ((V!14525 0))(
  ( (V!14526 (val!5077 Int)) )
))
(declare-datatypes ((ValueCell!4689 0))(
  ( (ValueCellFull!4689 (v!7320 V!14525)) (EmptyCell!4689) )
))
(declare-fun mapRest!16719 () (Array (_ BitVec 32) ValueCell!4689))

(declare-fun mapKey!16719 () (_ BitVec 32))

(declare-datatypes ((array!24007 0))(
  ( (array!24008 (arr!11450 (Array (_ BitVec 32) ValueCell!4689)) (size!11802 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24007)

(declare-fun mapValue!16719 () ValueCell!4689)

(assert (=> mapNonEmpty!16719 (= (arr!11450 _values!549) (store mapRest!16719 mapKey!16719 mapValue!16719))))

(declare-fun b!400930 () Bool)

(declare-fun res!230821 () Bool)

(declare-fun e!241818 () Bool)

(assert (=> b!400930 (=> (not res!230821) (not e!241818))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24009 0))(
  ( (array!24010 (arr!11451 (Array (_ BitVec 32) (_ BitVec 64))) (size!11803 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24009)

(assert (=> b!400930 (= res!230821 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11803 _keys!709))))))

(declare-fun res!230825 () Bool)

(assert (=> start!38654 (=> (not res!230825) (not e!241818))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38654 (= res!230825 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11803 _keys!709))))))

(assert (=> start!38654 e!241818))

(declare-fun tp_is_empty!10065 () Bool)

(assert (=> start!38654 tp_is_empty!10065))

(assert (=> start!38654 tp!32673))

(assert (=> start!38654 true))

(declare-fun e!241821 () Bool)

(declare-fun array_inv!8378 (array!24007) Bool)

(assert (=> start!38654 (and (array_inv!8378 _values!549) e!241821)))

(declare-fun array_inv!8379 (array!24009) Bool)

(assert (=> start!38654 (array_inv!8379 _keys!709)))

(declare-fun b!400931 () Bool)

(declare-fun e!241820 () Bool)

(assert (=> b!400931 (= e!241820 (not true))))

(declare-fun e!241816 () Bool)

(assert (=> b!400931 e!241816))

(declare-fun c!54656 () Bool)

(assert (=> b!400931 (= c!54656 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!14525)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!14525)

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((Unit!12099 0))(
  ( (Unit!12100) )
))
(declare-fun lt!187736 () Unit!12099)

(declare-fun v!412 () V!14525)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!312 (array!24009 array!24007 (_ BitVec 32) (_ BitVec 32) V!14525 V!14525 (_ BitVec 32) (_ BitVec 64) V!14525 (_ BitVec 32) Int) Unit!12099)

(assert (=> b!400931 (= lt!187736 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!312 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!187737 () array!24009)

(declare-datatypes ((tuple2!6672 0))(
  ( (tuple2!6673 (_1!3346 (_ BitVec 64)) (_2!3346 V!14525)) )
))
(declare-datatypes ((List!6622 0))(
  ( (Nil!6619) (Cons!6618 (h!7474 tuple2!6672) (t!11804 List!6622)) )
))
(declare-datatypes ((ListLongMap!5599 0))(
  ( (ListLongMap!5600 (toList!2815 List!6622)) )
))
(declare-fun call!28211 () ListLongMap!5599)

(declare-fun bm!28207 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1029 (array!24009 array!24007 (_ BitVec 32) (_ BitVec 32) V!14525 V!14525 (_ BitVec 32) Int) ListLongMap!5599)

(assert (=> bm!28207 (= call!28211 (getCurrentListMapNoExtraKeys!1029 (ite c!54656 lt!187737 _keys!709) (ite c!54656 (array!24008 (store (arr!11450 _values!549) i!563 (ValueCellFull!4689 v!412)) (size!11802 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!16719 () Bool)

(assert (=> mapIsEmpty!16719 mapRes!16719))

(declare-fun b!400932 () Bool)

(declare-fun res!230827 () Bool)

(assert (=> b!400932 (=> (not res!230827) (not e!241818))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!400932 (= res!230827 (validKeyInArray!0 k0!794))))

(declare-fun b!400933 () Bool)

(declare-fun e!241822 () Bool)

(assert (=> b!400933 (= e!241822 tp_is_empty!10065)))

(declare-fun b!400934 () Bool)

(assert (=> b!400934 (= e!241818 e!241820)))

(declare-fun res!230824 () Bool)

(assert (=> b!400934 (=> (not res!230824) (not e!241820))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24009 (_ BitVec 32)) Bool)

(assert (=> b!400934 (= res!230824 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187737 mask!1025))))

(assert (=> b!400934 (= lt!187737 (array!24010 (store (arr!11451 _keys!709) i!563 k0!794) (size!11803 _keys!709)))))

(declare-fun b!400935 () Bool)

(declare-fun res!230822 () Bool)

(assert (=> b!400935 (=> (not res!230822) (not e!241818))))

(assert (=> b!400935 (= res!230822 (or (= (select (arr!11451 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11451 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!400936 () Bool)

(declare-fun res!230826 () Bool)

(assert (=> b!400936 (=> (not res!230826) (not e!241820))))

(assert (=> b!400936 (= res!230826 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11803 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!400937 () Bool)

(declare-fun res!230832 () Bool)

(assert (=> b!400937 (=> (not res!230832) (not e!241818))))

(declare-datatypes ((List!6623 0))(
  ( (Nil!6620) (Cons!6619 (h!7475 (_ BitVec 64)) (t!11805 List!6623)) )
))
(declare-fun arrayNoDuplicates!0 (array!24009 (_ BitVec 32) List!6623) Bool)

(assert (=> b!400937 (= res!230832 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6620))))

(declare-fun b!400938 () Bool)

(assert (=> b!400938 (= e!241821 (and e!241822 mapRes!16719))))

(declare-fun condMapEmpty!16719 () Bool)

(declare-fun mapDefault!16719 () ValueCell!4689)

(assert (=> b!400938 (= condMapEmpty!16719 (= (arr!11450 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4689)) mapDefault!16719)))))

(declare-fun call!28210 () ListLongMap!5599)

(declare-fun b!400939 () Bool)

(declare-fun +!1100 (ListLongMap!5599 tuple2!6672) ListLongMap!5599)

(assert (=> b!400939 (= e!241816 (= call!28211 (+!1100 call!28210 (tuple2!6673 k0!794 v!412))))))

(declare-fun b!400940 () Bool)

(declare-fun res!230831 () Bool)

(assert (=> b!400940 (=> (not res!230831) (not e!241818))))

(declare-fun arrayContainsKey!0 (array!24009 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!400940 (= res!230831 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!400941 () Bool)

(declare-fun res!230829 () Bool)

(assert (=> b!400941 (=> (not res!230829) (not e!241818))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!400941 (= res!230829 (validMask!0 mask!1025))))

(declare-fun b!400942 () Bool)

(assert (=> b!400942 (= e!241816 (= call!28210 call!28211))))

(declare-fun bm!28208 () Bool)

(assert (=> bm!28208 (= call!28210 (getCurrentListMapNoExtraKeys!1029 (ite c!54656 _keys!709 lt!187737) (ite c!54656 _values!549 (array!24008 (store (arr!11450 _values!549) i!563 (ValueCellFull!4689 v!412)) (size!11802 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400943 () Bool)

(declare-fun res!230823 () Bool)

(assert (=> b!400943 (=> (not res!230823) (not e!241818))))

(assert (=> b!400943 (= res!230823 (and (= (size!11802 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11803 _keys!709) (size!11802 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!400944 () Bool)

(declare-fun res!230830 () Bool)

(assert (=> b!400944 (=> (not res!230830) (not e!241820))))

(assert (=> b!400944 (= res!230830 (arrayNoDuplicates!0 lt!187737 #b00000000000000000000000000000000 Nil!6620))))

(declare-fun b!400945 () Bool)

(declare-fun res!230828 () Bool)

(assert (=> b!400945 (=> (not res!230828) (not e!241818))))

(assert (=> b!400945 (= res!230828 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!400946 () Bool)

(assert (=> b!400946 (= e!241817 tp_is_empty!10065)))

(assert (= (and start!38654 res!230825) b!400941))

(assert (= (and b!400941 res!230829) b!400943))

(assert (= (and b!400943 res!230823) b!400945))

(assert (= (and b!400945 res!230828) b!400937))

(assert (= (and b!400937 res!230832) b!400930))

(assert (= (and b!400930 res!230821) b!400932))

(assert (= (and b!400932 res!230827) b!400935))

(assert (= (and b!400935 res!230822) b!400940))

(assert (= (and b!400940 res!230831) b!400934))

(assert (= (and b!400934 res!230824) b!400944))

(assert (= (and b!400944 res!230830) b!400936))

(assert (= (and b!400936 res!230826) b!400931))

(assert (= (and b!400931 c!54656) b!400939))

(assert (= (and b!400931 (not c!54656)) b!400942))

(assert (= (or b!400939 b!400942) bm!28207))

(assert (= (or b!400939 b!400942) bm!28208))

(assert (= (and b!400938 condMapEmpty!16719) mapIsEmpty!16719))

(assert (= (and b!400938 (not condMapEmpty!16719)) mapNonEmpty!16719))

(get-info :version)

(assert (= (and mapNonEmpty!16719 ((_ is ValueCellFull!4689) mapValue!16719)) b!400946))

(assert (= (and b!400938 ((_ is ValueCellFull!4689) mapDefault!16719)) b!400933))

(assert (= start!38654 b!400938))

(declare-fun m!394933 () Bool)

(assert (=> b!400932 m!394933))

(declare-fun m!394935 () Bool)

(assert (=> b!400940 m!394935))

(declare-fun m!394937 () Bool)

(assert (=> b!400937 m!394937))

(declare-fun m!394939 () Bool)

(assert (=> b!400934 m!394939))

(declare-fun m!394941 () Bool)

(assert (=> b!400934 m!394941))

(declare-fun m!394943 () Bool)

(assert (=> start!38654 m!394943))

(declare-fun m!394945 () Bool)

(assert (=> start!38654 m!394945))

(declare-fun m!394947 () Bool)

(assert (=> b!400935 m!394947))

(declare-fun m!394949 () Bool)

(assert (=> b!400945 m!394949))

(declare-fun m!394951 () Bool)

(assert (=> bm!28208 m!394951))

(declare-fun m!394953 () Bool)

(assert (=> bm!28208 m!394953))

(assert (=> bm!28207 m!394951))

(declare-fun m!394955 () Bool)

(assert (=> bm!28207 m!394955))

(declare-fun m!394957 () Bool)

(assert (=> b!400939 m!394957))

(declare-fun m!394959 () Bool)

(assert (=> b!400941 m!394959))

(declare-fun m!394961 () Bool)

(assert (=> b!400931 m!394961))

(declare-fun m!394963 () Bool)

(assert (=> b!400944 m!394963))

(declare-fun m!394965 () Bool)

(assert (=> mapNonEmpty!16719 m!394965))

(check-sat (not b!400940) (not bm!28208) (not b!400931) (not b!400932) (not mapNonEmpty!16719) (not b!400937) (not b!400944) (not b!400939) (not b!400941) tp_is_empty!10065 (not b!400934) (not b_next!9183) (not start!38654) (not b!400945) (not bm!28207) b_and!16587)
(check-sat b_and!16587 (not b_next!9183))
