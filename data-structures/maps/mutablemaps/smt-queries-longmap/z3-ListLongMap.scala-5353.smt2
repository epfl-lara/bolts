; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71718 () Bool)

(assert start!71718)

(declare-fun b_free!13527 () Bool)

(declare-fun b_next!13527 () Bool)

(assert (=> start!71718 (= b_free!13527 (not b_next!13527))))

(declare-fun tp!47378 () Bool)

(declare-fun b_and!22631 () Bool)

(assert (=> start!71718 (= tp!47378 b_and!22631)))

(declare-fun b!833641 () Bool)

(declare-fun e!465123 () Bool)

(declare-fun e!465125 () Bool)

(assert (=> b!833641 (= e!465123 e!465125)))

(declare-fun res!566983 () Bool)

(assert (=> b!833641 (=> res!566983 e!465125)))

(declare-datatypes ((V!25317 0))(
  ( (V!25318 (val!7666 Int)) )
))
(declare-datatypes ((tuple2!10200 0))(
  ( (tuple2!10201 (_1!5110 (_ BitVec 64)) (_2!5110 V!25317)) )
))
(declare-fun lt!378528 () tuple2!10200)

(declare-datatypes ((List!16025 0))(
  ( (Nil!16022) (Cons!16021 (h!17152 tuple2!10200) (t!22404 List!16025)) )
))
(declare-datatypes ((ListLongMap!9037 0))(
  ( (ListLongMap!9038 (toList!4534 List!16025)) )
))
(declare-fun lt!378527 () ListLongMap!9037)

(declare-fun lt!378536 () ListLongMap!9037)

(declare-fun lt!378534 () tuple2!10200)

(declare-fun +!1962 (ListLongMap!9037 tuple2!10200) ListLongMap!9037)

(assert (=> b!833641 (= res!566983 (not (= lt!378536 (+!1962 (+!1962 lt!378527 lt!378528) lt!378534))))))

(declare-fun lt!378533 () ListLongMap!9037)

(declare-fun lt!378526 () ListLongMap!9037)

(assert (=> b!833641 (and (= lt!378533 lt!378526) (= lt!378536 lt!378526) (= lt!378536 lt!378533))))

(declare-fun lt!378537 () ListLongMap!9037)

(assert (=> b!833641 (= lt!378526 (+!1962 lt!378537 lt!378528))))

(declare-fun lt!378529 () ListLongMap!9037)

(assert (=> b!833641 (= lt!378533 (+!1962 lt!378529 lt!378528))))

(declare-datatypes ((Unit!28575 0))(
  ( (Unit!28576) )
))
(declare-fun lt!378532 () Unit!28575)

(declare-fun zeroValueAfter!34 () V!25317)

(declare-fun zeroValueBefore!34 () V!25317)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!253 (ListLongMap!9037 (_ BitVec 64) V!25317 V!25317) Unit!28575)

(assert (=> b!833641 (= lt!378532 (addSameAsAddTwiceSameKeyDiffValues!253 lt!378529 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!465119 () Bool)

(assert (=> b!833641 e!465119))

(declare-fun res!566981 () Bool)

(assert (=> b!833641 (=> (not res!566981) (not e!465119))))

(declare-fun lt!378530 () ListLongMap!9037)

(assert (=> b!833641 (= res!566981 (= lt!378530 lt!378537))))

(declare-fun lt!378531 () tuple2!10200)

(assert (=> b!833641 (= lt!378537 (+!1962 lt!378529 lt!378531))))

(assert (=> b!833641 (= lt!378529 (+!1962 lt!378527 lt!378534))))

(assert (=> b!833641 (= lt!378528 (tuple2!10201 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!465124 () Bool)

(assert (=> b!833641 e!465124))

(declare-fun res!566982 () Bool)

(assert (=> b!833641 (=> (not res!566982) (not e!465124))))

(assert (=> b!833641 (= res!566982 (= lt!378530 (+!1962 (+!1962 lt!378527 lt!378531) lt!378534)))))

(declare-fun minValue!754 () V!25317)

(assert (=> b!833641 (= lt!378534 (tuple2!10201 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!833641 (= lt!378531 (tuple2!10201 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-datatypes ((array!46618 0))(
  ( (array!46619 (arr!22339 (Array (_ BitVec 32) (_ BitVec 64))) (size!22760 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46618)

(declare-datatypes ((ValueCell!7203 0))(
  ( (ValueCellFull!7203 (v!10110 V!25317)) (EmptyCell!7203) )
))
(declare-datatypes ((array!46620 0))(
  ( (array!46621 (arr!22340 (Array (_ BitVec 32) ValueCell!7203)) (size!22761 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46620)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2600 (array!46618 array!46620 (_ BitVec 32) (_ BitVec 32) V!25317 V!25317 (_ BitVec 32) Int) ListLongMap!9037)

(assert (=> b!833641 (= lt!378536 (getCurrentListMap!2600 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!833641 (= lt!378530 (getCurrentListMap!2600 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!24518 () Bool)

(declare-fun mapRes!24518 () Bool)

(assert (=> mapIsEmpty!24518 mapRes!24518))

(declare-fun res!566978 () Bool)

(declare-fun e!465120 () Bool)

(assert (=> start!71718 (=> (not res!566978) (not e!465120))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71718 (= res!566978 (validMask!0 mask!1312))))

(assert (=> start!71718 e!465120))

(declare-fun tp_is_empty!15237 () Bool)

(assert (=> start!71718 tp_is_empty!15237))

(declare-fun array_inv!17763 (array!46618) Bool)

(assert (=> start!71718 (array_inv!17763 _keys!976)))

(assert (=> start!71718 true))

(declare-fun e!465122 () Bool)

(declare-fun array_inv!17764 (array!46620) Bool)

(assert (=> start!71718 (and (array_inv!17764 _values!788) e!465122)))

(assert (=> start!71718 tp!47378))

(declare-fun b!833642 () Bool)

(declare-fun e!465121 () Bool)

(assert (=> b!833642 (= e!465122 (and e!465121 mapRes!24518))))

(declare-fun condMapEmpty!24518 () Bool)

(declare-fun mapDefault!24518 () ValueCell!7203)

(assert (=> b!833642 (= condMapEmpty!24518 (= (arr!22340 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7203)) mapDefault!24518)))))

(declare-fun mapNonEmpty!24518 () Bool)

(declare-fun tp!47377 () Bool)

(declare-fun e!465118 () Bool)

(assert (=> mapNonEmpty!24518 (= mapRes!24518 (and tp!47377 e!465118))))

(declare-fun mapRest!24518 () (Array (_ BitVec 32) ValueCell!7203))

(declare-fun mapValue!24518 () ValueCell!7203)

(declare-fun mapKey!24518 () (_ BitVec 32))

(assert (=> mapNonEmpty!24518 (= (arr!22340 _values!788) (store mapRest!24518 mapKey!24518 mapValue!24518))))

(declare-fun b!833643 () Bool)

(assert (=> b!833643 (= e!465125 (= (+!1962 lt!378530 lt!378528) lt!378536))))

(declare-fun b!833644 () Bool)

(assert (=> b!833644 (= e!465120 (not e!465123))))

(declare-fun res!566977 () Bool)

(assert (=> b!833644 (=> res!566977 e!465123)))

(assert (=> b!833644 (= res!566977 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!378525 () ListLongMap!9037)

(assert (=> b!833644 (= lt!378527 lt!378525)))

(declare-fun lt!378535 () Unit!28575)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!622 (array!46618 array!46620 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25317 V!25317 V!25317 V!25317 (_ BitVec 32) Int) Unit!28575)

(assert (=> b!833644 (= lt!378535 (lemmaNoChangeToArrayThenSameMapNoExtras!622 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2532 (array!46618 array!46620 (_ BitVec 32) (_ BitVec 32) V!25317 V!25317 (_ BitVec 32) Int) ListLongMap!9037)

(assert (=> b!833644 (= lt!378525 (getCurrentListMapNoExtraKeys!2532 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!833644 (= lt!378527 (getCurrentListMapNoExtraKeys!2532 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!833645 () Bool)

(assert (=> b!833645 (= e!465119 (= lt!378536 (+!1962 (+!1962 lt!378525 lt!378534) lt!378528)))))

(declare-fun b!833646 () Bool)

(declare-fun res!566976 () Bool)

(assert (=> b!833646 (=> (not res!566976) (not e!465120))))

(declare-datatypes ((List!16026 0))(
  ( (Nil!16023) (Cons!16022 (h!17153 (_ BitVec 64)) (t!22405 List!16026)) )
))
(declare-fun arrayNoDuplicates!0 (array!46618 (_ BitVec 32) List!16026) Bool)

(assert (=> b!833646 (= res!566976 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!16023))))

(declare-fun b!833647 () Bool)

(assert (=> b!833647 (= e!465121 tp_is_empty!15237)))

(declare-fun b!833648 () Bool)

(assert (=> b!833648 (= e!465118 tp_is_empty!15237)))

(declare-fun b!833649 () Bool)

(declare-fun res!566980 () Bool)

(assert (=> b!833649 (=> (not res!566980) (not e!465120))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46618 (_ BitVec 32)) Bool)

(assert (=> b!833649 (= res!566980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!833650 () Bool)

(assert (=> b!833650 (= e!465124 (= lt!378536 (+!1962 (+!1962 lt!378525 (tuple2!10201 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!378534)))))

(declare-fun b!833651 () Bool)

(declare-fun res!566979 () Bool)

(assert (=> b!833651 (=> (not res!566979) (not e!465120))))

(assert (=> b!833651 (= res!566979 (and (= (size!22761 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22760 _keys!976) (size!22761 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (= (and start!71718 res!566978) b!833651))

(assert (= (and b!833651 res!566979) b!833649))

(assert (= (and b!833649 res!566980) b!833646))

(assert (= (and b!833646 res!566976) b!833644))

(assert (= (and b!833644 (not res!566977)) b!833641))

(assert (= (and b!833641 res!566982) b!833650))

(assert (= (and b!833641 res!566981) b!833645))

(assert (= (and b!833641 (not res!566983)) b!833643))

(assert (= (and b!833642 condMapEmpty!24518) mapIsEmpty!24518))

(assert (= (and b!833642 (not condMapEmpty!24518)) mapNonEmpty!24518))

(get-info :version)

(assert (= (and mapNonEmpty!24518 ((_ is ValueCellFull!7203) mapValue!24518)) b!833648))

(assert (= (and b!833642 ((_ is ValueCellFull!7203) mapDefault!24518)) b!833647))

(assert (= start!71718 b!833642))

(declare-fun m!778671 () Bool)

(assert (=> b!833650 m!778671))

(assert (=> b!833650 m!778671))

(declare-fun m!778673 () Bool)

(assert (=> b!833650 m!778673))

(declare-fun m!778675 () Bool)

(assert (=> b!833649 m!778675))

(declare-fun m!778677 () Bool)

(assert (=> start!71718 m!778677))

(declare-fun m!778679 () Bool)

(assert (=> start!71718 m!778679))

(declare-fun m!778681 () Bool)

(assert (=> start!71718 m!778681))

(declare-fun m!778683 () Bool)

(assert (=> mapNonEmpty!24518 m!778683))

(declare-fun m!778685 () Bool)

(assert (=> b!833644 m!778685))

(declare-fun m!778687 () Bool)

(assert (=> b!833644 m!778687))

(declare-fun m!778689 () Bool)

(assert (=> b!833644 m!778689))

(declare-fun m!778691 () Bool)

(assert (=> b!833646 m!778691))

(declare-fun m!778693 () Bool)

(assert (=> b!833641 m!778693))

(declare-fun m!778695 () Bool)

(assert (=> b!833641 m!778695))

(declare-fun m!778697 () Bool)

(assert (=> b!833641 m!778697))

(assert (=> b!833641 m!778693))

(declare-fun m!778699 () Bool)

(assert (=> b!833641 m!778699))

(declare-fun m!778701 () Bool)

(assert (=> b!833641 m!778701))

(declare-fun m!778703 () Bool)

(assert (=> b!833641 m!778703))

(declare-fun m!778705 () Bool)

(assert (=> b!833641 m!778705))

(assert (=> b!833641 m!778701))

(declare-fun m!778707 () Bool)

(assert (=> b!833641 m!778707))

(declare-fun m!778709 () Bool)

(assert (=> b!833641 m!778709))

(declare-fun m!778711 () Bool)

(assert (=> b!833641 m!778711))

(declare-fun m!778713 () Bool)

(assert (=> b!833641 m!778713))

(declare-fun m!778715 () Bool)

(assert (=> b!833643 m!778715))

(declare-fun m!778717 () Bool)

(assert (=> b!833645 m!778717))

(assert (=> b!833645 m!778717))

(declare-fun m!778719 () Bool)

(assert (=> b!833645 m!778719))

(check-sat (not mapNonEmpty!24518) (not b!833646) (not b!833644) tp_is_empty!15237 (not b!833649) (not b_next!13527) (not b!833643) b_and!22631 (not b!833650) (not b!833645) (not start!71718) (not b!833641))
(check-sat b_and!22631 (not b_next!13527))
