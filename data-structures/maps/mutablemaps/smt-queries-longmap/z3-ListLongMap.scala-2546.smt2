; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39104 () Bool)

(assert start!39104)

(declare-fun b_free!9363 () Bool)

(declare-fun b_next!9363 () Bool)

(assert (=> start!39104 (= b_free!9363 (not b_next!9363))))

(declare-fun tp!33617 () Bool)

(declare-fun b_and!16767 () Bool)

(assert (=> start!39104 (= tp!33617 b_and!16767)))

(declare-fun b!410577 () Bool)

(declare-fun res!238113 () Bool)

(declare-fun e!246034 () Bool)

(assert (=> b!410577 (=> (not res!238113) (not e!246034))))

(declare-datatypes ((array!24879 0))(
  ( (array!24880 (arr!11886 (Array (_ BitVec 32) (_ BitVec 64))) (size!12238 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24879)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!410577 (= res!238113 (or (= (select (arr!11886 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11886 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!410578 () Bool)

(declare-fun e!246037 () Bool)

(declare-fun tp_is_empty!10515 () Bool)

(assert (=> b!410578 (= e!246037 tp_is_empty!10515)))

(declare-fun b!410579 () Bool)

(declare-fun res!238116 () Bool)

(assert (=> b!410579 (=> (not res!238116) (not e!246034))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24879 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!410579 (= res!238116 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17394 () Bool)

(declare-fun mapRes!17394 () Bool)

(assert (=> mapIsEmpty!17394 mapRes!17394))

(declare-fun b!410580 () Bool)

(declare-fun res!238111 () Bool)

(assert (=> b!410580 (=> (not res!238111) (not e!246034))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!410580 (= res!238111 (validMask!0 mask!1025))))

(declare-fun res!238118 () Bool)

(assert (=> start!39104 (=> (not res!238118) (not e!246034))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39104 (= res!238118 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12238 _keys!709))))))

(assert (=> start!39104 e!246034))

(assert (=> start!39104 tp_is_empty!10515))

(assert (=> start!39104 tp!33617))

(assert (=> start!39104 true))

(declare-datatypes ((V!15125 0))(
  ( (V!15126 (val!5302 Int)) )
))
(declare-datatypes ((ValueCell!4914 0))(
  ( (ValueCellFull!4914 (v!7545 V!15125)) (EmptyCell!4914) )
))
(declare-datatypes ((array!24881 0))(
  ( (array!24882 (arr!11887 (Array (_ BitVec 32) ValueCell!4914)) (size!12239 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24881)

(declare-fun e!246033 () Bool)

(declare-fun array_inv!8676 (array!24881) Bool)

(assert (=> start!39104 (and (array_inv!8676 _values!549) e!246033)))

(declare-fun array_inv!8677 (array!24879) Bool)

(assert (=> start!39104 (array_inv!8677 _keys!709)))

(declare-fun b!410581 () Bool)

(declare-fun res!238115 () Bool)

(declare-fun e!246035 () Bool)

(assert (=> b!410581 (=> (not res!238115) (not e!246035))))

(assert (=> b!410581 (= res!238115 (bvsle from!863 i!563))))

(declare-fun b!410582 () Bool)

(declare-fun res!238122 () Bool)

(assert (=> b!410582 (=> (not res!238122) (not e!246034))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!410582 (= res!238122 (validKeyInArray!0 k0!794))))

(declare-fun b!410583 () Bool)

(declare-fun res!238114 () Bool)

(assert (=> b!410583 (=> (not res!238114) (not e!246034))))

(assert (=> b!410583 (= res!238114 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12238 _keys!709))))))

(declare-fun b!410584 () Bool)

(declare-fun res!238121 () Bool)

(assert (=> b!410584 (=> (not res!238121) (not e!246034))))

(declare-datatypes ((List!6866 0))(
  ( (Nil!6863) (Cons!6862 (h!7718 (_ BitVec 64)) (t!12048 List!6866)) )
))
(declare-fun arrayNoDuplicates!0 (array!24879 (_ BitVec 32) List!6866) Bool)

(assert (=> b!410584 (= res!238121 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6863))))

(declare-fun b!410585 () Bool)

(declare-fun e!246036 () Bool)

(assert (=> b!410585 (= e!246036 tp_is_empty!10515)))

(declare-fun b!410586 () Bool)

(assert (=> b!410586 (= e!246035 false)))

(declare-fun minValue!515 () V!15125)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!189110 () array!24879)

(declare-fun zeroValue!515 () V!15125)

(declare-datatypes ((tuple2!6814 0))(
  ( (tuple2!6815 (_1!3417 (_ BitVec 64)) (_2!3417 V!15125)) )
))
(declare-datatypes ((List!6867 0))(
  ( (Nil!6864) (Cons!6863 (h!7719 tuple2!6814) (t!12049 List!6867)) )
))
(declare-datatypes ((ListLongMap!5741 0))(
  ( (ListLongMap!5742 (toList!2886 List!6867)) )
))
(declare-fun lt!189109 () ListLongMap!5741)

(declare-fun v!412 () V!15125)

(declare-fun getCurrentListMapNoExtraKeys!1096 (array!24879 array!24881 (_ BitVec 32) (_ BitVec 32) V!15125 V!15125 (_ BitVec 32) Int) ListLongMap!5741)

(assert (=> b!410586 (= lt!189109 (getCurrentListMapNoExtraKeys!1096 lt!189110 (array!24882 (store (arr!11887 _values!549) i!563 (ValueCellFull!4914 v!412)) (size!12239 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189111 () ListLongMap!5741)

(assert (=> b!410586 (= lt!189111 (getCurrentListMapNoExtraKeys!1096 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!17394 () Bool)

(declare-fun tp!33618 () Bool)

(assert (=> mapNonEmpty!17394 (= mapRes!17394 (and tp!33618 e!246037))))

(declare-fun mapRest!17394 () (Array (_ BitVec 32) ValueCell!4914))

(declare-fun mapValue!17394 () ValueCell!4914)

(declare-fun mapKey!17394 () (_ BitVec 32))

(assert (=> mapNonEmpty!17394 (= (arr!11887 _values!549) (store mapRest!17394 mapKey!17394 mapValue!17394))))

(declare-fun b!410587 () Bool)

(assert (=> b!410587 (= e!246034 e!246035)))

(declare-fun res!238120 () Bool)

(assert (=> b!410587 (=> (not res!238120) (not e!246035))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24879 (_ BitVec 32)) Bool)

(assert (=> b!410587 (= res!238120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189110 mask!1025))))

(assert (=> b!410587 (= lt!189110 (array!24880 (store (arr!11886 _keys!709) i!563 k0!794) (size!12238 _keys!709)))))

(declare-fun b!410588 () Bool)

(assert (=> b!410588 (= e!246033 (and e!246036 mapRes!17394))))

(declare-fun condMapEmpty!17394 () Bool)

(declare-fun mapDefault!17394 () ValueCell!4914)

(assert (=> b!410588 (= condMapEmpty!17394 (= (arr!11887 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4914)) mapDefault!17394)))))

(declare-fun b!410589 () Bool)

(declare-fun res!238112 () Bool)

(assert (=> b!410589 (=> (not res!238112) (not e!246034))))

(assert (=> b!410589 (= res!238112 (and (= (size!12239 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12238 _keys!709) (size!12239 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!410590 () Bool)

(declare-fun res!238119 () Bool)

(assert (=> b!410590 (=> (not res!238119) (not e!246034))))

(assert (=> b!410590 (= res!238119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!410591 () Bool)

(declare-fun res!238117 () Bool)

(assert (=> b!410591 (=> (not res!238117) (not e!246035))))

(assert (=> b!410591 (= res!238117 (arrayNoDuplicates!0 lt!189110 #b00000000000000000000000000000000 Nil!6863))))

(assert (= (and start!39104 res!238118) b!410580))

(assert (= (and b!410580 res!238111) b!410589))

(assert (= (and b!410589 res!238112) b!410590))

(assert (= (and b!410590 res!238119) b!410584))

(assert (= (and b!410584 res!238121) b!410583))

(assert (= (and b!410583 res!238114) b!410582))

(assert (= (and b!410582 res!238122) b!410577))

(assert (= (and b!410577 res!238113) b!410579))

(assert (= (and b!410579 res!238116) b!410587))

(assert (= (and b!410587 res!238120) b!410591))

(assert (= (and b!410591 res!238117) b!410581))

(assert (= (and b!410581 res!238115) b!410586))

(assert (= (and b!410588 condMapEmpty!17394) mapIsEmpty!17394))

(assert (= (and b!410588 (not condMapEmpty!17394)) mapNonEmpty!17394))

(get-info :version)

(assert (= (and mapNonEmpty!17394 ((_ is ValueCellFull!4914) mapValue!17394)) b!410578))

(assert (= (and b!410588 ((_ is ValueCellFull!4914) mapDefault!17394)) b!410585))

(assert (= start!39104 b!410588))

(declare-fun m!400989 () Bool)

(assert (=> b!410580 m!400989))

(declare-fun m!400991 () Bool)

(assert (=> b!410586 m!400991))

(declare-fun m!400993 () Bool)

(assert (=> b!410586 m!400993))

(declare-fun m!400995 () Bool)

(assert (=> b!410586 m!400995))

(declare-fun m!400997 () Bool)

(assert (=> b!410584 m!400997))

(declare-fun m!400999 () Bool)

(assert (=> b!410587 m!400999))

(declare-fun m!401001 () Bool)

(assert (=> b!410587 m!401001))

(declare-fun m!401003 () Bool)

(assert (=> b!410577 m!401003))

(declare-fun m!401005 () Bool)

(assert (=> b!410591 m!401005))

(declare-fun m!401007 () Bool)

(assert (=> b!410582 m!401007))

(declare-fun m!401009 () Bool)

(assert (=> start!39104 m!401009))

(declare-fun m!401011 () Bool)

(assert (=> start!39104 m!401011))

(declare-fun m!401013 () Bool)

(assert (=> b!410579 m!401013))

(declare-fun m!401015 () Bool)

(assert (=> b!410590 m!401015))

(declare-fun m!401017 () Bool)

(assert (=> mapNonEmpty!17394 m!401017))

(check-sat (not b!410579) (not start!39104) (not mapNonEmpty!17394) (not b!410584) (not b!410582) (not b_next!9363) (not b!410587) b_and!16767 (not b!410586) (not b!410590) tp_is_empty!10515 (not b!410591) (not b!410580))
(check-sat b_and!16767 (not b_next!9363))
