; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39224 () Bool)

(assert start!39224)

(declare-fun b_free!9483 () Bool)

(declare-fun b_next!9483 () Bool)

(assert (=> start!39224 (= b_free!9483 (not b_next!9483))))

(declare-fun tp!33977 () Bool)

(declare-fun b_and!16887 () Bool)

(assert (=> start!39224 (= tp!33977 b_and!16887)))

(declare-fun b!413400 () Bool)

(declare-fun res!240321 () Bool)

(declare-fun e!247198 () Bool)

(assert (=> b!413400 (=> (not res!240321) (not e!247198))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!413400 (= res!240321 (bvsle from!863 i!563))))

(declare-fun b!413401 () Bool)

(declare-fun res!240319 () Bool)

(assert (=> b!413401 (=> (not res!240319) (not e!247198))))

(declare-datatypes ((array!25109 0))(
  ( (array!25110 (arr!12001 (Array (_ BitVec 32) (_ BitVec 64))) (size!12353 (_ BitVec 32))) )
))
(declare-fun lt!189734 () array!25109)

(declare-datatypes ((List!6953 0))(
  ( (Nil!6950) (Cons!6949 (h!7805 (_ BitVec 64)) (t!12135 List!6953)) )
))
(declare-fun arrayNoDuplicates!0 (array!25109 (_ BitVec 32) List!6953) Bool)

(assert (=> b!413401 (= res!240319 (arrayNoDuplicates!0 lt!189734 #b00000000000000000000000000000000 Nil!6950))))

(declare-fun b!413402 () Bool)

(declare-fun res!240317 () Bool)

(declare-fun e!247199 () Bool)

(assert (=> b!413402 (=> (not res!240317) (not e!247199))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15285 0))(
  ( (V!15286 (val!5362 Int)) )
))
(declare-datatypes ((ValueCell!4974 0))(
  ( (ValueCellFull!4974 (v!7605 V!15285)) (EmptyCell!4974) )
))
(declare-datatypes ((array!25111 0))(
  ( (array!25112 (arr!12002 (Array (_ BitVec 32) ValueCell!4974)) (size!12354 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25111)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!25109)

(assert (=> b!413402 (= res!240317 (and (= (size!12354 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12353 _keys!709) (size!12354 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun minValue!515 () V!15285)

(declare-fun defaultEntry!557 () Int)

(declare-fun bm!28621 () Bool)

(declare-fun zeroValue!515 () V!15285)

(declare-fun c!54863 () Bool)

(declare-fun lt!189731 () array!25111)

(declare-datatypes ((tuple2!6892 0))(
  ( (tuple2!6893 (_1!3456 (_ BitVec 64)) (_2!3456 V!15285)) )
))
(declare-datatypes ((List!6954 0))(
  ( (Nil!6951) (Cons!6950 (h!7806 tuple2!6892) (t!12136 List!6954)) )
))
(declare-datatypes ((ListLongMap!5819 0))(
  ( (ListLongMap!5820 (toList!2925 List!6954)) )
))
(declare-fun call!28624 () ListLongMap!5819)

(declare-fun getCurrentListMapNoExtraKeys!1134 (array!25109 array!25111 (_ BitVec 32) (_ BitVec 32) V!15285 V!15285 (_ BitVec 32) Int) ListLongMap!5819)

(assert (=> bm!28621 (= call!28624 (getCurrentListMapNoExtraKeys!1134 (ite c!54863 lt!189734 _keys!709) (ite c!54863 lt!189731 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413403 () Bool)

(declare-fun res!240324 () Bool)

(assert (=> b!413403 (=> (not res!240324) (not e!247199))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!413403 (= res!240324 (validMask!0 mask!1025))))

(declare-fun res!240320 () Bool)

(assert (=> start!39224 (=> (not res!240320) (not e!247199))))

(assert (=> start!39224 (= res!240320 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12353 _keys!709))))))

(assert (=> start!39224 e!247199))

(declare-fun tp_is_empty!10635 () Bool)

(assert (=> start!39224 tp_is_empty!10635))

(assert (=> start!39224 tp!33977))

(assert (=> start!39224 true))

(declare-fun e!247197 () Bool)

(declare-fun array_inv!8754 (array!25111) Bool)

(assert (=> start!39224 (and (array_inv!8754 _values!549) e!247197)))

(declare-fun array_inv!8755 (array!25109) Bool)

(assert (=> start!39224 (array_inv!8755 _keys!709)))

(declare-fun b!413404 () Bool)

(declare-fun res!240314 () Bool)

(assert (=> b!413404 (=> (not res!240314) (not e!247199))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25109 (_ BitVec 32)) Bool)

(assert (=> b!413404 (= res!240314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!413405 () Bool)

(declare-fun e!247196 () Bool)

(declare-fun mapRes!17574 () Bool)

(assert (=> b!413405 (= e!247197 (and e!247196 mapRes!17574))))

(declare-fun condMapEmpty!17574 () Bool)

(declare-fun mapDefault!17574 () ValueCell!4974)

(assert (=> b!413405 (= condMapEmpty!17574 (= (arr!12002 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4974)) mapDefault!17574)))))

(declare-fun b!413406 () Bool)

(declare-fun e!247195 () Bool)

(assert (=> b!413406 (= e!247198 e!247195)))

(declare-fun res!240313 () Bool)

(assert (=> b!413406 (=> (not res!240313) (not e!247195))))

(assert (=> b!413406 (= res!240313 (= from!863 i!563))))

(declare-fun lt!189735 () ListLongMap!5819)

(assert (=> b!413406 (= lt!189735 (getCurrentListMapNoExtraKeys!1134 lt!189734 lt!189731 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15285)

(assert (=> b!413406 (= lt!189731 (array!25112 (store (arr!12002 _values!549) i!563 (ValueCellFull!4974 v!412)) (size!12354 _values!549)))))

(declare-fun lt!189733 () ListLongMap!5819)

(assert (=> b!413406 (= lt!189733 (getCurrentListMapNoExtraKeys!1134 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!413407 () Bool)

(declare-fun res!240322 () Bool)

(assert (=> b!413407 (=> (not res!240322) (not e!247199))))

(assert (=> b!413407 (= res!240322 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6950))))

(declare-fun mapIsEmpty!17574 () Bool)

(assert (=> mapIsEmpty!17574 mapRes!17574))

(declare-fun b!413408 () Bool)

(declare-fun res!240315 () Bool)

(assert (=> b!413408 (=> (not res!240315) (not e!247199))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!413408 (= res!240315 (validKeyInArray!0 k0!794))))

(declare-fun b!413409 () Bool)

(declare-fun e!247201 () Bool)

(assert (=> b!413409 (= e!247201 tp_is_empty!10635)))

(declare-fun b!413410 () Bool)

(declare-fun e!247194 () Bool)

(declare-fun call!28625 () ListLongMap!5819)

(declare-fun +!1147 (ListLongMap!5819 tuple2!6892) ListLongMap!5819)

(assert (=> b!413410 (= e!247194 (= call!28624 (+!1147 call!28625 (tuple2!6893 k0!794 v!412))))))

(declare-fun b!413411 () Bool)

(assert (=> b!413411 (= e!247196 tp_is_empty!10635)))

(declare-fun b!413412 () Bool)

(declare-fun res!240316 () Bool)

(assert (=> b!413412 (=> (not res!240316) (not e!247199))))

(declare-fun arrayContainsKey!0 (array!25109 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!413412 (= res!240316 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!413413 () Bool)

(assert (=> b!413413 (= e!247195 (not true))))

(assert (=> b!413413 e!247194))

(assert (=> b!413413 (= c!54863 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12191 0))(
  ( (Unit!12192) )
))
(declare-fun lt!189732 () Unit!12191)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!358 (array!25109 array!25111 (_ BitVec 32) (_ BitVec 32) V!15285 V!15285 (_ BitVec 32) (_ BitVec 64) V!15285 (_ BitVec 32) Int) Unit!12191)

(assert (=> b!413413 (= lt!189732 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!358 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413414 () Bool)

(assert (=> b!413414 (= e!247194 (= call!28625 call!28624))))

(declare-fun b!413415 () Bool)

(declare-fun res!240312 () Bool)

(assert (=> b!413415 (=> (not res!240312) (not e!247199))))

(assert (=> b!413415 (= res!240312 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12353 _keys!709))))))

(declare-fun b!413416 () Bool)

(assert (=> b!413416 (= e!247199 e!247198)))

(declare-fun res!240318 () Bool)

(assert (=> b!413416 (=> (not res!240318) (not e!247198))))

(assert (=> b!413416 (= res!240318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189734 mask!1025))))

(assert (=> b!413416 (= lt!189734 (array!25110 (store (arr!12001 _keys!709) i!563 k0!794) (size!12353 _keys!709)))))

(declare-fun b!413417 () Bool)

(declare-fun res!240323 () Bool)

(assert (=> b!413417 (=> (not res!240323) (not e!247199))))

(assert (=> b!413417 (= res!240323 (or (= (select (arr!12001 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12001 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!17574 () Bool)

(declare-fun tp!33978 () Bool)

(assert (=> mapNonEmpty!17574 (= mapRes!17574 (and tp!33978 e!247201))))

(declare-fun mapValue!17574 () ValueCell!4974)

(declare-fun mapRest!17574 () (Array (_ BitVec 32) ValueCell!4974))

(declare-fun mapKey!17574 () (_ BitVec 32))

(assert (=> mapNonEmpty!17574 (= (arr!12002 _values!549) (store mapRest!17574 mapKey!17574 mapValue!17574))))

(declare-fun bm!28622 () Bool)

(assert (=> bm!28622 (= call!28625 (getCurrentListMapNoExtraKeys!1134 (ite c!54863 _keys!709 lt!189734) (ite c!54863 _values!549 lt!189731) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (= (and start!39224 res!240320) b!413403))

(assert (= (and b!413403 res!240324) b!413402))

(assert (= (and b!413402 res!240317) b!413404))

(assert (= (and b!413404 res!240314) b!413407))

(assert (= (and b!413407 res!240322) b!413415))

(assert (= (and b!413415 res!240312) b!413408))

(assert (= (and b!413408 res!240315) b!413417))

(assert (= (and b!413417 res!240323) b!413412))

(assert (= (and b!413412 res!240316) b!413416))

(assert (= (and b!413416 res!240318) b!413401))

(assert (= (and b!413401 res!240319) b!413400))

(assert (= (and b!413400 res!240321) b!413406))

(assert (= (and b!413406 res!240313) b!413413))

(assert (= (and b!413413 c!54863) b!413410))

(assert (= (and b!413413 (not c!54863)) b!413414))

(assert (= (or b!413410 b!413414) bm!28621))

(assert (= (or b!413410 b!413414) bm!28622))

(assert (= (and b!413405 condMapEmpty!17574) mapIsEmpty!17574))

(assert (= (and b!413405 (not condMapEmpty!17574)) mapNonEmpty!17574))

(get-info :version)

(assert (= (and mapNonEmpty!17574 ((_ is ValueCellFull!4974) mapValue!17574)) b!413409))

(assert (= (and b!413405 ((_ is ValueCellFull!4974) mapDefault!17574)) b!413411))

(assert (= start!39224 b!413405))

(declare-fun m!402893 () Bool)

(assert (=> b!413410 m!402893))

(declare-fun m!402895 () Bool)

(assert (=> mapNonEmpty!17574 m!402895))

(declare-fun m!402897 () Bool)

(assert (=> b!413408 m!402897))

(declare-fun m!402899 () Bool)

(assert (=> b!413406 m!402899))

(declare-fun m!402901 () Bool)

(assert (=> b!413406 m!402901))

(declare-fun m!402903 () Bool)

(assert (=> b!413406 m!402903))

(declare-fun m!402905 () Bool)

(assert (=> start!39224 m!402905))

(declare-fun m!402907 () Bool)

(assert (=> start!39224 m!402907))

(declare-fun m!402909 () Bool)

(assert (=> b!413407 m!402909))

(declare-fun m!402911 () Bool)

(assert (=> b!413413 m!402911))

(declare-fun m!402913 () Bool)

(assert (=> b!413404 m!402913))

(declare-fun m!402915 () Bool)

(assert (=> bm!28621 m!402915))

(declare-fun m!402917 () Bool)

(assert (=> b!413417 m!402917))

(declare-fun m!402919 () Bool)

(assert (=> b!413401 m!402919))

(declare-fun m!402921 () Bool)

(assert (=> b!413412 m!402921))

(declare-fun m!402923 () Bool)

(assert (=> b!413403 m!402923))

(declare-fun m!402925 () Bool)

(assert (=> bm!28622 m!402925))

(declare-fun m!402927 () Bool)

(assert (=> b!413416 m!402927))

(declare-fun m!402929 () Bool)

(assert (=> b!413416 m!402929))

(check-sat (not mapNonEmpty!17574) (not b!413407) (not b_next!9483) (not b!413403) (not b!413412) tp_is_empty!10635 (not b!413410) (not bm!28621) (not bm!28622) (not b!413401) b_and!16887 (not b!413408) (not start!39224) (not b!413413) (not b!413406) (not b!413416) (not b!413404))
(check-sat b_and!16887 (not b_next!9483))
