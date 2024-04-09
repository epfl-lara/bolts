; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39212 () Bool)

(assert start!39212)

(declare-fun b_free!9471 () Bool)

(declare-fun b_next!9471 () Bool)

(assert (=> start!39212 (= b_free!9471 (not b_next!9471))))

(declare-fun tp!33942 () Bool)

(declare-fun b_and!16875 () Bool)

(assert (=> start!39212 (= tp!33942 b_and!16875)))

(declare-datatypes ((V!15269 0))(
  ( (V!15270 (val!5356 Int)) )
))
(declare-fun minValue!515 () V!15269)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4968 0))(
  ( (ValueCellFull!4968 (v!7599 V!15269)) (EmptyCell!4968) )
))
(declare-datatypes ((array!25085 0))(
  ( (array!25086 (arr!11989 (Array (_ BitVec 32) ValueCell!4968)) (size!12341 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25085)

(declare-fun zeroValue!515 () V!15269)

(declare-fun lt!189641 () array!25085)

(declare-fun c!54845 () Bool)

(declare-fun bm!28585 () Bool)

(declare-datatypes ((array!25087 0))(
  ( (array!25088 (arr!11990 (Array (_ BitVec 32) (_ BitVec 64))) (size!12342 (_ BitVec 32))) )
))
(declare-fun lt!189643 () array!25087)

(declare-fun _keys!709 () array!25087)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!6880 0))(
  ( (tuple2!6881 (_1!3450 (_ BitVec 64)) (_2!3450 V!15269)) )
))
(declare-datatypes ((List!6941 0))(
  ( (Nil!6938) (Cons!6937 (h!7793 tuple2!6880) (t!12123 List!6941)) )
))
(declare-datatypes ((ListLongMap!5807 0))(
  ( (ListLongMap!5808 (toList!2919 List!6941)) )
))
(declare-fun call!28588 () ListLongMap!5807)

(declare-fun getCurrentListMapNoExtraKeys!1128 (array!25087 array!25085 (_ BitVec 32) (_ BitVec 32) V!15269 V!15269 (_ BitVec 32) Int) ListLongMap!5807)

(assert (=> bm!28585 (= call!28588 (getCurrentListMapNoExtraKeys!1128 (ite c!54845 _keys!709 lt!189643) (ite c!54845 _values!549 lt!189641) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!240089 () Bool)

(declare-fun e!247055 () Bool)

(assert (=> start!39212 (=> (not res!240089) (not e!247055))))

(assert (=> start!39212 (= res!240089 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12342 _keys!709))))))

(assert (=> start!39212 e!247055))

(declare-fun tp_is_empty!10623 () Bool)

(assert (=> start!39212 tp_is_empty!10623))

(assert (=> start!39212 tp!33942))

(assert (=> start!39212 true))

(declare-fun e!247052 () Bool)

(declare-fun array_inv!8742 (array!25085) Bool)

(assert (=> start!39212 (and (array_inv!8742 _values!549) e!247052)))

(declare-fun array_inv!8743 (array!25087) Bool)

(assert (=> start!39212 (array_inv!8743 _keys!709)))

(declare-fun b!413076 () Bool)

(declare-fun res!240088 () Bool)

(declare-fun e!247057 () Bool)

(assert (=> b!413076 (=> (not res!240088) (not e!247057))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!413076 (= res!240088 (bvsle from!863 i!563))))

(declare-fun b!413077 () Bool)

(declare-fun e!247051 () Bool)

(assert (=> b!413077 (= e!247057 e!247051)))

(declare-fun res!240085 () Bool)

(assert (=> b!413077 (=> (not res!240085) (not e!247051))))

(assert (=> b!413077 (= res!240085 (= from!863 i!563))))

(declare-fun lt!189644 () ListLongMap!5807)

(assert (=> b!413077 (= lt!189644 (getCurrentListMapNoExtraKeys!1128 lt!189643 lt!189641 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15269)

(assert (=> b!413077 (= lt!189641 (array!25086 (store (arr!11989 _values!549) i!563 (ValueCellFull!4968 v!412)) (size!12341 _values!549)))))

(declare-fun lt!189645 () ListLongMap!5807)

(assert (=> b!413077 (= lt!189645 (getCurrentListMapNoExtraKeys!1128 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!17556 () Bool)

(declare-fun mapRes!17556 () Bool)

(declare-fun tp!33941 () Bool)

(declare-fun e!247054 () Bool)

(assert (=> mapNonEmpty!17556 (= mapRes!17556 (and tp!33941 e!247054))))

(declare-fun mapValue!17556 () ValueCell!4968)

(declare-fun mapKey!17556 () (_ BitVec 32))

(declare-fun mapRest!17556 () (Array (_ BitVec 32) ValueCell!4968))

(assert (=> mapNonEmpty!17556 (= (arr!11989 _values!549) (store mapRest!17556 mapKey!17556 mapValue!17556))))

(declare-fun b!413078 () Bool)

(assert (=> b!413078 (= e!247051 (not true))))

(declare-fun e!247050 () Bool)

(assert (=> b!413078 e!247050))

(assert (=> b!413078 (= c!54845 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((Unit!12181 0))(
  ( (Unit!12182) )
))
(declare-fun lt!189642 () Unit!12181)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!353 (array!25087 array!25085 (_ BitVec 32) (_ BitVec 32) V!15269 V!15269 (_ BitVec 32) (_ BitVec 64) V!15269 (_ BitVec 32) Int) Unit!12181)

(assert (=> b!413078 (= lt!189642 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!353 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413079 () Bool)

(declare-fun res!240080 () Bool)

(assert (=> b!413079 (=> (not res!240080) (not e!247055))))

(assert (=> b!413079 (= res!240080 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12342 _keys!709))))))

(declare-fun b!413080 () Bool)

(declare-fun res!240082 () Bool)

(assert (=> b!413080 (=> (not res!240082) (not e!247055))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25087 (_ BitVec 32)) Bool)

(assert (=> b!413080 (= res!240082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!17556 () Bool)

(assert (=> mapIsEmpty!17556 mapRes!17556))

(declare-fun b!413081 () Bool)

(declare-fun res!240090 () Bool)

(assert (=> b!413081 (=> (not res!240090) (not e!247057))))

(declare-datatypes ((List!6942 0))(
  ( (Nil!6939) (Cons!6938 (h!7794 (_ BitVec 64)) (t!12124 List!6942)) )
))
(declare-fun arrayNoDuplicates!0 (array!25087 (_ BitVec 32) List!6942) Bool)

(assert (=> b!413081 (= res!240090 (arrayNoDuplicates!0 lt!189643 #b00000000000000000000000000000000 Nil!6939))))

(declare-fun b!413082 () Bool)

(declare-fun res!240079 () Bool)

(assert (=> b!413082 (=> (not res!240079) (not e!247055))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!413082 (= res!240079 (validMask!0 mask!1025))))

(declare-fun b!413083 () Bool)

(declare-fun res!240083 () Bool)

(assert (=> b!413083 (=> (not res!240083) (not e!247055))))

(assert (=> b!413083 (= res!240083 (and (= (size!12341 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12342 _keys!709) (size!12341 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!413084 () Bool)

(declare-fun e!247053 () Bool)

(assert (=> b!413084 (= e!247053 tp_is_empty!10623)))

(declare-fun b!413085 () Bool)

(declare-fun res!240081 () Bool)

(assert (=> b!413085 (=> (not res!240081) (not e!247055))))

(assert (=> b!413085 (= res!240081 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6939))))

(declare-fun b!413086 () Bool)

(declare-fun call!28589 () ListLongMap!5807)

(declare-fun +!1142 (ListLongMap!5807 tuple2!6880) ListLongMap!5807)

(assert (=> b!413086 (= e!247050 (= call!28589 (+!1142 call!28588 (tuple2!6881 k0!794 v!412))))))

(declare-fun b!413087 () Bool)

(declare-fun res!240084 () Bool)

(assert (=> b!413087 (=> (not res!240084) (not e!247055))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!413087 (= res!240084 (validKeyInArray!0 k0!794))))

(declare-fun b!413088 () Bool)

(declare-fun res!240086 () Bool)

(assert (=> b!413088 (=> (not res!240086) (not e!247055))))

(declare-fun arrayContainsKey!0 (array!25087 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!413088 (= res!240086 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!413089 () Bool)

(assert (=> b!413089 (= e!247055 e!247057)))

(declare-fun res!240078 () Bool)

(assert (=> b!413089 (=> (not res!240078) (not e!247057))))

(assert (=> b!413089 (= res!240078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189643 mask!1025))))

(assert (=> b!413089 (= lt!189643 (array!25088 (store (arr!11990 _keys!709) i!563 k0!794) (size!12342 _keys!709)))))

(declare-fun bm!28586 () Bool)

(assert (=> bm!28586 (= call!28589 (getCurrentListMapNoExtraKeys!1128 (ite c!54845 lt!189643 _keys!709) (ite c!54845 lt!189641 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413090 () Bool)

(declare-fun res!240087 () Bool)

(assert (=> b!413090 (=> (not res!240087) (not e!247055))))

(assert (=> b!413090 (= res!240087 (or (= (select (arr!11990 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11990 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!413091 () Bool)

(assert (=> b!413091 (= e!247052 (and e!247053 mapRes!17556))))

(declare-fun condMapEmpty!17556 () Bool)

(declare-fun mapDefault!17556 () ValueCell!4968)

(assert (=> b!413091 (= condMapEmpty!17556 (= (arr!11989 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4968)) mapDefault!17556)))))

(declare-fun b!413092 () Bool)

(assert (=> b!413092 (= e!247050 (= call!28588 call!28589))))

(declare-fun b!413093 () Bool)

(assert (=> b!413093 (= e!247054 tp_is_empty!10623)))

(assert (= (and start!39212 res!240089) b!413082))

(assert (= (and b!413082 res!240079) b!413083))

(assert (= (and b!413083 res!240083) b!413080))

(assert (= (and b!413080 res!240082) b!413085))

(assert (= (and b!413085 res!240081) b!413079))

(assert (= (and b!413079 res!240080) b!413087))

(assert (= (and b!413087 res!240084) b!413090))

(assert (= (and b!413090 res!240087) b!413088))

(assert (= (and b!413088 res!240086) b!413089))

(assert (= (and b!413089 res!240078) b!413081))

(assert (= (and b!413081 res!240090) b!413076))

(assert (= (and b!413076 res!240088) b!413077))

(assert (= (and b!413077 res!240085) b!413078))

(assert (= (and b!413078 c!54845) b!413086))

(assert (= (and b!413078 (not c!54845)) b!413092))

(assert (= (or b!413086 b!413092) bm!28586))

(assert (= (or b!413086 b!413092) bm!28585))

(assert (= (and b!413091 condMapEmpty!17556) mapIsEmpty!17556))

(assert (= (and b!413091 (not condMapEmpty!17556)) mapNonEmpty!17556))

(get-info :version)

(assert (= (and mapNonEmpty!17556 ((_ is ValueCellFull!4968) mapValue!17556)) b!413093))

(assert (= (and b!413091 ((_ is ValueCellFull!4968) mapDefault!17556)) b!413084))

(assert (= start!39212 b!413091))

(declare-fun m!402665 () Bool)

(assert (=> b!413077 m!402665))

(declare-fun m!402667 () Bool)

(assert (=> b!413077 m!402667))

(declare-fun m!402669 () Bool)

(assert (=> b!413077 m!402669))

(declare-fun m!402671 () Bool)

(assert (=> b!413089 m!402671))

(declare-fun m!402673 () Bool)

(assert (=> b!413089 m!402673))

(declare-fun m!402675 () Bool)

(assert (=> start!39212 m!402675))

(declare-fun m!402677 () Bool)

(assert (=> start!39212 m!402677))

(declare-fun m!402679 () Bool)

(assert (=> bm!28585 m!402679))

(declare-fun m!402681 () Bool)

(assert (=> b!413090 m!402681))

(declare-fun m!402683 () Bool)

(assert (=> mapNonEmpty!17556 m!402683))

(declare-fun m!402685 () Bool)

(assert (=> b!413082 m!402685))

(declare-fun m!402687 () Bool)

(assert (=> b!413087 m!402687))

(declare-fun m!402689 () Bool)

(assert (=> b!413080 m!402689))

(declare-fun m!402691 () Bool)

(assert (=> bm!28586 m!402691))

(declare-fun m!402693 () Bool)

(assert (=> b!413078 m!402693))

(declare-fun m!402695 () Bool)

(assert (=> b!413085 m!402695))

(declare-fun m!402697 () Bool)

(assert (=> b!413081 m!402697))

(declare-fun m!402699 () Bool)

(assert (=> b!413086 m!402699))

(declare-fun m!402701 () Bool)

(assert (=> b!413088 m!402701))

(check-sat (not b!413087) (not b!413078) (not b!413088) (not b!413080) (not b!413081) (not start!39212) (not b!413085) tp_is_empty!10623 (not b_next!9471) (not b!413077) (not bm!28586) (not b!413086) (not mapNonEmpty!17556) (not b!413082) (not b!413089) (not bm!28585) b_and!16875)
(check-sat b_and!16875 (not b_next!9471))
