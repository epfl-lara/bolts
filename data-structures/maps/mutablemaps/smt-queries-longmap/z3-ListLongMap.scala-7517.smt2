; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95358 () Bool)

(assert start!95358)

(declare-fun b!1076966 () Bool)

(declare-fun e!615744 () Bool)

(declare-fun tp_is_empty!26079 () Bool)

(assert (=> b!1076966 (= e!615744 tp_is_empty!26079)))

(declare-fun b!1076967 () Bool)

(declare-fun e!615745 () Bool)

(assert (=> b!1076967 (= e!615745 tp_is_empty!26079)))

(declare-fun b!1076968 () Bool)

(declare-fun e!615743 () Bool)

(declare-fun mapRes!40846 () Bool)

(assert (=> b!1076968 (= e!615743 (and e!615745 mapRes!40846))))

(declare-fun condMapEmpty!40846 () Bool)

(declare-datatypes ((V!39899 0))(
  ( (V!39900 (val!13096 Int)) )
))
(declare-datatypes ((ValueCell!12330 0))(
  ( (ValueCellFull!12330 (v!15716 V!39899)) (EmptyCell!12330) )
))
(declare-datatypes ((array!69072 0))(
  ( (array!69073 (arr!33215 (Array (_ BitVec 32) ValueCell!12330)) (size!33752 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69072)

(declare-fun mapDefault!40846 () ValueCell!12330)

(assert (=> b!1076968 (= condMapEmpty!40846 (= (arr!33215 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12330)) mapDefault!40846)))))

(declare-fun b!1076969 () Bool)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun e!615746 () Bool)

(declare-datatypes ((array!69074 0))(
  ( (array!69075 (arr!33216 (Array (_ BitVec 32) (_ BitVec 64))) (size!33753 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69074)

(assert (=> b!1076969 (= e!615746 (and (= (size!33752 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33753 _keys!1070) (size!33752 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011) (= (size!33753 _keys!1070) (bvadd #b00000000000000000000000000000001 mask!1414)) (bvsgt #b00000000000000000000000000000000 (size!33753 _keys!1070))))))

(declare-fun mapNonEmpty!40846 () Bool)

(declare-fun tp!78309 () Bool)

(assert (=> mapNonEmpty!40846 (= mapRes!40846 (and tp!78309 e!615744))))

(declare-fun mapKey!40846 () (_ BitVec 32))

(declare-fun mapValue!40846 () ValueCell!12330)

(declare-fun mapRest!40846 () (Array (_ BitVec 32) ValueCell!12330))

(assert (=> mapNonEmpty!40846 (= (arr!33215 _values!874) (store mapRest!40846 mapKey!40846 mapValue!40846))))

(declare-fun mapIsEmpty!40846 () Bool)

(assert (=> mapIsEmpty!40846 mapRes!40846))

(declare-fun res!717764 () Bool)

(assert (=> start!95358 (=> (not res!717764) (not e!615746))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95358 (= res!717764 (validMask!0 mask!1414))))

(assert (=> start!95358 e!615746))

(assert (=> start!95358 true))

(declare-fun array_inv!25524 (array!69072) Bool)

(assert (=> start!95358 (and (array_inv!25524 _values!874) e!615743)))

(declare-fun array_inv!25525 (array!69074) Bool)

(assert (=> start!95358 (array_inv!25525 _keys!1070)))

(assert (= (and start!95358 res!717764) b!1076969))

(assert (= (and b!1076968 condMapEmpty!40846) mapIsEmpty!40846))

(assert (= (and b!1076968 (not condMapEmpty!40846)) mapNonEmpty!40846))

(get-info :version)

(assert (= (and mapNonEmpty!40846 ((_ is ValueCellFull!12330) mapValue!40846)) b!1076966))

(assert (= (and b!1076968 ((_ is ValueCellFull!12330) mapDefault!40846)) b!1076967))

(assert (= start!95358 b!1076968))

(declare-fun m!996125 () Bool)

(assert (=> mapNonEmpty!40846 m!996125))

(declare-fun m!996127 () Bool)

(assert (=> start!95358 m!996127))

(declare-fun m!996129 () Bool)

(assert (=> start!95358 m!996129))

(declare-fun m!996131 () Bool)

(assert (=> start!95358 m!996131))

(check-sat (not start!95358) (not mapNonEmpty!40846) tp_is_empty!26079)
(check-sat)
(get-model)

(declare-fun d!129749 () Bool)

(assert (=> d!129749 (= (validMask!0 mask!1414) (and (or (= mask!1414 #b00000000000000000000000000000111) (= mask!1414 #b00000000000000000000000000001111) (= mask!1414 #b00000000000000000000000000011111) (= mask!1414 #b00000000000000000000000000111111) (= mask!1414 #b00000000000000000000000001111111) (= mask!1414 #b00000000000000000000000011111111) (= mask!1414 #b00000000000000000000000111111111) (= mask!1414 #b00000000000000000000001111111111) (= mask!1414 #b00000000000000000000011111111111) (= mask!1414 #b00000000000000000000111111111111) (= mask!1414 #b00000000000000000001111111111111) (= mask!1414 #b00000000000000000011111111111111) (= mask!1414 #b00000000000000000111111111111111) (= mask!1414 #b00000000000000001111111111111111) (= mask!1414 #b00000000000000011111111111111111) (= mask!1414 #b00000000000000111111111111111111) (= mask!1414 #b00000000000001111111111111111111) (= mask!1414 #b00000000000011111111111111111111) (= mask!1414 #b00000000000111111111111111111111) (= mask!1414 #b00000000001111111111111111111111) (= mask!1414 #b00000000011111111111111111111111) (= mask!1414 #b00000000111111111111111111111111) (= mask!1414 #b00000001111111111111111111111111) (= mask!1414 #b00000011111111111111111111111111) (= mask!1414 #b00000111111111111111111111111111) (= mask!1414 #b00001111111111111111111111111111) (= mask!1414 #b00011111111111111111111111111111) (= mask!1414 #b00111111111111111111111111111111)) (bvsle mask!1414 #b00111111111111111111111111111111)))))

(assert (=> start!95358 d!129749))

(declare-fun d!129751 () Bool)

(assert (=> d!129751 (= (array_inv!25524 _values!874) (bvsge (size!33752 _values!874) #b00000000000000000000000000000000))))

(assert (=> start!95358 d!129751))

(declare-fun d!129753 () Bool)

(assert (=> d!129753 (= (array_inv!25525 _keys!1070) (bvsge (size!33753 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> start!95358 d!129753))

(declare-fun mapNonEmpty!40852 () Bool)

(declare-fun mapRes!40852 () Bool)

(declare-fun tp!78315 () Bool)

(declare-fun e!615767 () Bool)

(assert (=> mapNonEmpty!40852 (= mapRes!40852 (and tp!78315 e!615767))))

(declare-fun mapValue!40852 () ValueCell!12330)

(declare-fun mapRest!40852 () (Array (_ BitVec 32) ValueCell!12330))

(declare-fun mapKey!40852 () (_ BitVec 32))

(assert (=> mapNonEmpty!40852 (= mapRest!40846 (store mapRest!40852 mapKey!40852 mapValue!40852))))

(declare-fun b!1076989 () Bool)

(declare-fun e!615766 () Bool)

(assert (=> b!1076989 (= e!615766 tp_is_empty!26079)))

(declare-fun b!1076988 () Bool)

(assert (=> b!1076988 (= e!615767 tp_is_empty!26079)))

(declare-fun condMapEmpty!40852 () Bool)

(declare-fun mapDefault!40852 () ValueCell!12330)

(assert (=> mapNonEmpty!40846 (= condMapEmpty!40852 (= mapRest!40846 ((as const (Array (_ BitVec 32) ValueCell!12330)) mapDefault!40852)))))

(assert (=> mapNonEmpty!40846 (= tp!78309 (and e!615766 mapRes!40852))))

(declare-fun mapIsEmpty!40852 () Bool)

(assert (=> mapIsEmpty!40852 mapRes!40852))

(assert (= (and mapNonEmpty!40846 condMapEmpty!40852) mapIsEmpty!40852))

(assert (= (and mapNonEmpty!40846 (not condMapEmpty!40852)) mapNonEmpty!40852))

(assert (= (and mapNonEmpty!40852 ((_ is ValueCellFull!12330) mapValue!40852)) b!1076988))

(assert (= (and mapNonEmpty!40846 ((_ is ValueCellFull!12330) mapDefault!40852)) b!1076989))

(declare-fun m!996141 () Bool)

(assert (=> mapNonEmpty!40852 m!996141))

(check-sat (not mapNonEmpty!40852) tp_is_empty!26079)
(check-sat)
