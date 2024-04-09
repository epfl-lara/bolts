; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78226 () Bool)

(assert start!78226)

(declare-fun b_free!16689 () Bool)

(declare-fun b_next!16689 () Bool)

(assert (=> start!78226 (= b_free!16689 (not b_next!16689))))

(declare-fun tp!58345 () Bool)

(declare-fun b_and!27283 () Bool)

(assert (=> start!78226 (= tp!58345 b_and!27283)))

(declare-fun b!912443 () Bool)

(declare-fun res!615624 () Bool)

(declare-fun e!511856 () Bool)

(assert (=> b!912443 (=> (not res!615624) (not e!511856))))

(declare-datatypes ((array!54218 0))(
  ( (array!54219 (arr!26059 (Array (_ BitVec 32) (_ BitVec 64))) (size!26519 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54218)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54218 (_ BitVec 32)) Bool)

(assert (=> b!912443 (= res!615624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapNonEmpty!30388 () Bool)

(declare-fun mapRes!30388 () Bool)

(declare-fun tp!58344 () Bool)

(declare-fun e!511853 () Bool)

(assert (=> mapNonEmpty!30388 (= mapRes!30388 (and tp!58344 e!511853))))

(declare-datatypes ((V!30441 0))(
  ( (V!30442 (val!9604 Int)) )
))
(declare-datatypes ((ValueCell!9072 0))(
  ( (ValueCellFull!9072 (v!12115 V!30441)) (EmptyCell!9072) )
))
(declare-datatypes ((array!54220 0))(
  ( (array!54221 (arr!26060 (Array (_ BitVec 32) ValueCell!9072)) (size!26520 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54220)

(declare-fun mapKey!30388 () (_ BitVec 32))

(declare-fun mapValue!30388 () ValueCell!9072)

(declare-fun mapRest!30388 () (Array (_ BitVec 32) ValueCell!9072))

(assert (=> mapNonEmpty!30388 (= (arr!26060 _values!1152) (store mapRest!30388 mapKey!30388 mapValue!30388))))

(declare-fun b!912444 () Bool)

(declare-fun res!615623 () Bool)

(assert (=> b!912444 (=> (not res!615623) (not e!511856))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun k0!1033 () (_ BitVec 64))

(assert (=> b!912444 (= res!615623 (and (= (select (arr!26059 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!912445 () Bool)

(declare-fun tp_is_empty!19107 () Bool)

(assert (=> b!912445 (= e!511853 tp_is_empty!19107)))

(declare-fun res!615622 () Bool)

(assert (=> start!78226 (=> (not res!615622) (not e!511856))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78226 (= res!615622 (validMask!0 mask!1756))))

(assert (=> start!78226 e!511856))

(declare-fun e!511854 () Bool)

(declare-fun array_inv!20346 (array!54220) Bool)

(assert (=> start!78226 (and (array_inv!20346 _values!1152) e!511854)))

(assert (=> start!78226 tp!58345))

(assert (=> start!78226 true))

(assert (=> start!78226 tp_is_empty!19107))

(declare-fun array_inv!20347 (array!54218) Bool)

(assert (=> start!78226 (array_inv!20347 _keys!1386)))

(declare-fun b!912446 () Bool)

(declare-fun e!511852 () Bool)

(assert (=> b!912446 (= e!511852 tp_is_empty!19107)))

(declare-fun b!912447 () Bool)

(declare-fun res!615621 () Bool)

(assert (=> b!912447 (=> (not res!615621) (not e!511856))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!912447 (= res!615621 (and (= (size!26520 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26519 _keys!1386) (size!26520 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!912448 () Bool)

(declare-fun res!615620 () Bool)

(assert (=> b!912448 (=> (not res!615620) (not e!511856))))

(declare-datatypes ((List!18412 0))(
  ( (Nil!18409) (Cons!18408 (h!19554 (_ BitVec 64)) (t!26009 List!18412)) )
))
(declare-fun arrayNoDuplicates!0 (array!54218 (_ BitVec 32) List!18412) Bool)

(assert (=> b!912448 (= res!615620 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18409))))

(declare-fun b!912449 () Bool)

(assert (=> b!912449 (= e!511856 (not true))))

(declare-fun arrayContainsKey!0 (array!54218 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!912449 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30441)

(declare-datatypes ((Unit!30857 0))(
  ( (Unit!30858) )
))
(declare-fun lt!410629 () Unit!30857)

(declare-fun minValue!1094 () V!30441)

(declare-fun lemmaKeyInListMapIsInArray!274 (array!54218 array!54220 (_ BitVec 32) (_ BitVec 32) V!30441 V!30441 (_ BitVec 64) Int) Unit!30857)

(assert (=> b!912449 (= lt!410629 (lemmaKeyInListMapIsInArray!274 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun mapIsEmpty!30388 () Bool)

(assert (=> mapIsEmpty!30388 mapRes!30388))

(declare-fun b!912450 () Bool)

(assert (=> b!912450 (= e!511854 (and e!511852 mapRes!30388))))

(declare-fun condMapEmpty!30388 () Bool)

(declare-fun mapDefault!30388 () ValueCell!9072)

(assert (=> b!912450 (= condMapEmpty!30388 (= (arr!26060 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9072)) mapDefault!30388)))))

(declare-fun b!912451 () Bool)

(declare-fun res!615619 () Bool)

(assert (=> b!912451 (=> (not res!615619) (not e!511856))))

(declare-datatypes ((tuple2!12570 0))(
  ( (tuple2!12571 (_1!6295 (_ BitVec 64)) (_2!6295 V!30441)) )
))
(declare-datatypes ((List!18413 0))(
  ( (Nil!18410) (Cons!18409 (h!19555 tuple2!12570) (t!26010 List!18413)) )
))
(declare-datatypes ((ListLongMap!11281 0))(
  ( (ListLongMap!11282 (toList!5656 List!18413)) )
))
(declare-fun contains!4667 (ListLongMap!11281 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2886 (array!54218 array!54220 (_ BitVec 32) (_ BitVec 32) V!30441 V!30441 (_ BitVec 32) Int) ListLongMap!11281)

(assert (=> b!912451 (= res!615619 (contains!4667 (getCurrentListMap!2886 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!912452 () Bool)

(declare-fun res!615625 () Bool)

(assert (=> b!912452 (=> (not res!615625) (not e!511856))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!912452 (= res!615625 (inRange!0 i!717 mask!1756))))

(assert (= (and start!78226 res!615622) b!912447))

(assert (= (and b!912447 res!615621) b!912443))

(assert (= (and b!912443 res!615624) b!912448))

(assert (= (and b!912448 res!615620) b!912451))

(assert (= (and b!912451 res!615619) b!912452))

(assert (= (and b!912452 res!615625) b!912444))

(assert (= (and b!912444 res!615623) b!912449))

(assert (= (and b!912450 condMapEmpty!30388) mapIsEmpty!30388))

(assert (= (and b!912450 (not condMapEmpty!30388)) mapNonEmpty!30388))

(get-info :version)

(assert (= (and mapNonEmpty!30388 ((_ is ValueCellFull!9072) mapValue!30388)) b!912445))

(assert (= (and b!912450 ((_ is ValueCellFull!9072) mapDefault!30388)) b!912446))

(assert (= start!78226 b!912450))

(declare-fun m!847023 () Bool)

(assert (=> b!912452 m!847023))

(declare-fun m!847025 () Bool)

(assert (=> b!912444 m!847025))

(declare-fun m!847027 () Bool)

(assert (=> start!78226 m!847027))

(declare-fun m!847029 () Bool)

(assert (=> start!78226 m!847029))

(declare-fun m!847031 () Bool)

(assert (=> start!78226 m!847031))

(declare-fun m!847033 () Bool)

(assert (=> b!912449 m!847033))

(declare-fun m!847035 () Bool)

(assert (=> b!912449 m!847035))

(declare-fun m!847037 () Bool)

(assert (=> b!912443 m!847037))

(declare-fun m!847039 () Bool)

(assert (=> b!912448 m!847039))

(declare-fun m!847041 () Bool)

(assert (=> mapNonEmpty!30388 m!847041))

(declare-fun m!847043 () Bool)

(assert (=> b!912451 m!847043))

(assert (=> b!912451 m!847043))

(declare-fun m!847045 () Bool)

(assert (=> b!912451 m!847045))

(check-sat tp_is_empty!19107 (not b!912448) (not b!912443) (not b!912451) (not b!912449) b_and!27283 (not start!78226) (not b_next!16689) (not mapNonEmpty!30388) (not b!912452))
(check-sat b_and!27283 (not b_next!16689))
