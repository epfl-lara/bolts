; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95384 () Bool)

(assert start!95384)

(declare-fun res!717816 () Bool)

(declare-fun e!615854 () Bool)

(assert (=> start!95384 (=> (not res!717816) (not e!615854))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95384 (= res!717816 (validMask!0 mask!1414))))

(assert (=> start!95384 e!615854))

(assert (=> start!95384 true))

(declare-datatypes ((V!39915 0))(
  ( (V!39916 (val!13102 Int)) )
))
(declare-datatypes ((ValueCell!12336 0))(
  ( (ValueCellFull!12336 (v!15722 V!39915)) (EmptyCell!12336) )
))
(declare-datatypes ((array!69094 0))(
  ( (array!69095 (arr!33224 (Array (_ BitVec 32) ValueCell!12336)) (size!33761 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69094)

(declare-fun e!615857 () Bool)

(declare-fun array_inv!25530 (array!69094) Bool)

(assert (=> start!95384 (and (array_inv!25530 _values!874) e!615857)))

(declare-datatypes ((array!69096 0))(
  ( (array!69097 (arr!33225 (Array (_ BitVec 32) (_ BitVec 64))) (size!33762 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69096)

(declare-fun array_inv!25531 (array!69096) Bool)

(assert (=> start!95384 (array_inv!25531 _keys!1070)))

(declare-fun mapNonEmpty!40870 () Bool)

(declare-fun mapRes!40870 () Bool)

(declare-fun tp!78333 () Bool)

(declare-fun e!615856 () Bool)

(assert (=> mapNonEmpty!40870 (= mapRes!40870 (and tp!78333 e!615856))))

(declare-fun mapRest!40870 () (Array (_ BitVec 32) ValueCell!12336))

(declare-fun mapValue!40870 () ValueCell!12336)

(declare-fun mapKey!40870 () (_ BitVec 32))

(assert (=> mapNonEmpty!40870 (= (arr!33224 _values!874) (store mapRest!40870 mapKey!40870 mapValue!40870))))

(declare-fun b!1077094 () Bool)

(declare-fun res!717818 () Bool)

(assert (=> b!1077094 (=> (not res!717818) (not e!615854))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69096 (_ BitVec 32)) Bool)

(assert (=> b!1077094 (= res!717818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!40870 () Bool)

(assert (=> mapIsEmpty!40870 mapRes!40870))

(declare-fun b!1077095 () Bool)

(declare-fun e!615853 () Bool)

(assert (=> b!1077095 (= e!615857 (and e!615853 mapRes!40870))))

(declare-fun condMapEmpty!40870 () Bool)

(declare-fun mapDefault!40870 () ValueCell!12336)

(assert (=> b!1077095 (= condMapEmpty!40870 (= (arr!33224 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12336)) mapDefault!40870)))))

(declare-fun b!1077096 () Bool)

(declare-fun tp_is_empty!26091 () Bool)

(assert (=> b!1077096 (= e!615853 tp_is_empty!26091)))

(declare-fun b!1077097 () Bool)

(declare-fun res!717817 () Bool)

(assert (=> b!1077097 (=> (not res!717817) (not e!615854))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1077097 (= res!717817 (and (= (size!33761 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33762 _keys!1070) (size!33761 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1077098 () Bool)

(assert (=> b!1077098 (= e!615856 tp_is_empty!26091)))

(declare-fun b!1077099 () Bool)

(assert (=> b!1077099 (= e!615854 (and (bvsle #b00000000000000000000000000000000 (size!33762 _keys!1070)) (bvsge (size!33762 _keys!1070) #b01111111111111111111111111111111)))))

(assert (= (and start!95384 res!717816) b!1077097))

(assert (= (and b!1077097 res!717817) b!1077094))

(assert (= (and b!1077094 res!717818) b!1077099))

(assert (= (and b!1077095 condMapEmpty!40870) mapIsEmpty!40870))

(assert (= (and b!1077095 (not condMapEmpty!40870)) mapNonEmpty!40870))

(get-info :version)

(assert (= (and mapNonEmpty!40870 ((_ is ValueCellFull!12336) mapValue!40870)) b!1077098))

(assert (= (and b!1077095 ((_ is ValueCellFull!12336) mapDefault!40870)) b!1077096))

(assert (= start!95384 b!1077095))

(declare-fun m!996197 () Bool)

(assert (=> start!95384 m!996197))

(declare-fun m!996199 () Bool)

(assert (=> start!95384 m!996199))

(declare-fun m!996201 () Bool)

(assert (=> start!95384 m!996201))

(declare-fun m!996203 () Bool)

(assert (=> mapNonEmpty!40870 m!996203))

(declare-fun m!996205 () Bool)

(assert (=> b!1077094 m!996205))

(check-sat (not start!95384) (not b!1077094) (not mapNonEmpty!40870) tp_is_empty!26091)
(check-sat)
(get-model)

(declare-fun d!129767 () Bool)

(assert (=> d!129767 (= (validMask!0 mask!1414) (and (or (= mask!1414 #b00000000000000000000000000000111) (= mask!1414 #b00000000000000000000000000001111) (= mask!1414 #b00000000000000000000000000011111) (= mask!1414 #b00000000000000000000000000111111) (= mask!1414 #b00000000000000000000000001111111) (= mask!1414 #b00000000000000000000000011111111) (= mask!1414 #b00000000000000000000000111111111) (= mask!1414 #b00000000000000000000001111111111) (= mask!1414 #b00000000000000000000011111111111) (= mask!1414 #b00000000000000000000111111111111) (= mask!1414 #b00000000000000000001111111111111) (= mask!1414 #b00000000000000000011111111111111) (= mask!1414 #b00000000000000000111111111111111) (= mask!1414 #b00000000000000001111111111111111) (= mask!1414 #b00000000000000011111111111111111) (= mask!1414 #b00000000000000111111111111111111) (= mask!1414 #b00000000000001111111111111111111) (= mask!1414 #b00000000000011111111111111111111) (= mask!1414 #b00000000000111111111111111111111) (= mask!1414 #b00000000001111111111111111111111) (= mask!1414 #b00000000011111111111111111111111) (= mask!1414 #b00000000111111111111111111111111) (= mask!1414 #b00000001111111111111111111111111) (= mask!1414 #b00000011111111111111111111111111) (= mask!1414 #b00000111111111111111111111111111) (= mask!1414 #b00001111111111111111111111111111) (= mask!1414 #b00011111111111111111111111111111) (= mask!1414 #b00111111111111111111111111111111)) (bvsle mask!1414 #b00111111111111111111111111111111)))))

(assert (=> start!95384 d!129767))

(declare-fun d!129769 () Bool)

(assert (=> d!129769 (= (array_inv!25530 _values!874) (bvsge (size!33761 _values!874) #b00000000000000000000000000000000))))

(assert (=> start!95384 d!129769))

(declare-fun d!129771 () Bool)

(assert (=> d!129771 (= (array_inv!25531 _keys!1070) (bvsge (size!33762 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> start!95384 d!129771))

(declare-fun b!1077126 () Bool)

(declare-fun e!615880 () Bool)

(declare-fun call!45714 () Bool)

(assert (=> b!1077126 (= e!615880 call!45714)))

(declare-fun b!1077127 () Bool)

(declare-fun e!615881 () Bool)

(assert (=> b!1077127 (= e!615881 call!45714)))

(declare-fun b!1077128 () Bool)

(assert (=> b!1077128 (= e!615880 e!615881)))

(declare-fun lt!478494 () (_ BitVec 64))

(assert (=> b!1077128 (= lt!478494 (select (arr!33225 _keys!1070) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!35401 0))(
  ( (Unit!35402) )
))
(declare-fun lt!478492 () Unit!35401)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69096 (_ BitVec 64) (_ BitVec 32)) Unit!35401)

(assert (=> b!1077128 (= lt!478492 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 lt!478494 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!69096 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1077128 (arrayContainsKey!0 _keys!1070 lt!478494 #b00000000000000000000000000000000)))

(declare-fun lt!478493 () Unit!35401)

(assert (=> b!1077128 (= lt!478493 lt!478492)))

(declare-fun res!717832 () Bool)

(declare-datatypes ((SeekEntryResult!9894 0))(
  ( (MissingZero!9894 (index!41946 (_ BitVec 32))) (Found!9894 (index!41947 (_ BitVec 32))) (Intermediate!9894 (undefined!10706 Bool) (index!41948 (_ BitVec 32)) (x!96542 (_ BitVec 32))) (Undefined!9894) (MissingVacant!9894 (index!41949 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!69096 (_ BitVec 32)) SeekEntryResult!9894)

(assert (=> b!1077128 (= res!717832 (= (seekEntryOrOpen!0 (select (arr!33225 _keys!1070) #b00000000000000000000000000000000) _keys!1070 mask!1414) (Found!9894 #b00000000000000000000000000000000)))))

(assert (=> b!1077128 (=> (not res!717832) (not e!615881))))

(declare-fun d!129773 () Bool)

(declare-fun res!717833 () Bool)

(declare-fun e!615879 () Bool)

(assert (=> d!129773 (=> res!717833 e!615879)))

(assert (=> d!129773 (= res!717833 (bvsge #b00000000000000000000000000000000 (size!33762 _keys!1070)))))

(assert (=> d!129773 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414) e!615879)))

(declare-fun bm!45711 () Bool)

(assert (=> bm!45711 (= call!45714 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1070 mask!1414))))

(declare-fun b!1077129 () Bool)

(assert (=> b!1077129 (= e!615879 e!615880)))

(declare-fun c!108255 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1077129 (= c!108255 (validKeyInArray!0 (select (arr!33225 _keys!1070) #b00000000000000000000000000000000)))))

(assert (= (and d!129773 (not res!717833)) b!1077129))

(assert (= (and b!1077129 c!108255) b!1077128))

(assert (= (and b!1077129 (not c!108255)) b!1077126))

(assert (= (and b!1077128 res!717832) b!1077127))

(assert (= (or b!1077127 b!1077126) bm!45711))

(declare-fun m!996217 () Bool)

(assert (=> b!1077128 m!996217))

(declare-fun m!996219 () Bool)

(assert (=> b!1077128 m!996219))

(declare-fun m!996221 () Bool)

(assert (=> b!1077128 m!996221))

(assert (=> b!1077128 m!996217))

(declare-fun m!996223 () Bool)

(assert (=> b!1077128 m!996223))

(declare-fun m!996225 () Bool)

(assert (=> bm!45711 m!996225))

(assert (=> b!1077129 m!996217))

(assert (=> b!1077129 m!996217))

(declare-fun m!996227 () Bool)

(assert (=> b!1077129 m!996227))

(assert (=> b!1077094 d!129773))

(declare-fun b!1077137 () Bool)

(declare-fun e!615887 () Bool)

(assert (=> b!1077137 (= e!615887 tp_is_empty!26091)))

(declare-fun mapNonEmpty!40876 () Bool)

(declare-fun mapRes!40876 () Bool)

(declare-fun tp!78339 () Bool)

(declare-fun e!615886 () Bool)

(assert (=> mapNonEmpty!40876 (= mapRes!40876 (and tp!78339 e!615886))))

(declare-fun mapValue!40876 () ValueCell!12336)

(declare-fun mapRest!40876 () (Array (_ BitVec 32) ValueCell!12336))

(declare-fun mapKey!40876 () (_ BitVec 32))

(assert (=> mapNonEmpty!40876 (= mapRest!40870 (store mapRest!40876 mapKey!40876 mapValue!40876))))

(declare-fun b!1077136 () Bool)

(assert (=> b!1077136 (= e!615886 tp_is_empty!26091)))

(declare-fun condMapEmpty!40876 () Bool)

(declare-fun mapDefault!40876 () ValueCell!12336)

(assert (=> mapNonEmpty!40870 (= condMapEmpty!40876 (= mapRest!40870 ((as const (Array (_ BitVec 32) ValueCell!12336)) mapDefault!40876)))))

(assert (=> mapNonEmpty!40870 (= tp!78333 (and e!615887 mapRes!40876))))

(declare-fun mapIsEmpty!40876 () Bool)

(assert (=> mapIsEmpty!40876 mapRes!40876))

(assert (= (and mapNonEmpty!40870 condMapEmpty!40876) mapIsEmpty!40876))

(assert (= (and mapNonEmpty!40870 (not condMapEmpty!40876)) mapNonEmpty!40876))

(assert (= (and mapNonEmpty!40876 ((_ is ValueCellFull!12336) mapValue!40876)) b!1077136))

(assert (= (and mapNonEmpty!40870 ((_ is ValueCellFull!12336) mapDefault!40876)) b!1077137))

(declare-fun m!996229 () Bool)

(assert (=> mapNonEmpty!40876 m!996229))

(check-sat (not bm!45711) (not mapNonEmpty!40876) tp_is_empty!26091 (not b!1077128) (not b!1077129))
(check-sat)
