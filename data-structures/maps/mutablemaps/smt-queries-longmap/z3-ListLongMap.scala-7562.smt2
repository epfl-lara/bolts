; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95730 () Bool)

(assert start!95730)

(declare-fun b_free!22347 () Bool)

(declare-fun b_next!22347 () Bool)

(assert (=> start!95730 (= b_free!22347 (not b_next!22347))))

(declare-fun tp!78890 () Bool)

(declare-fun b_and!35387 () Bool)

(assert (=> start!95730 (= tp!78890 b_and!35387)))

(declare-fun b!1081755 () Bool)

(declare-fun e!618317 () Bool)

(declare-fun tp_is_empty!26349 () Bool)

(assert (=> b!1081755 (= e!618317 tp_is_empty!26349)))

(declare-fun mapNonEmpty!41278 () Bool)

(declare-fun mapRes!41278 () Bool)

(declare-fun tp!78891 () Bool)

(assert (=> mapNonEmpty!41278 (= mapRes!41278 (and tp!78891 e!618317))))

(declare-datatypes ((V!40259 0))(
  ( (V!40260 (val!13231 Int)) )
))
(declare-datatypes ((ValueCell!12465 0))(
  ( (ValueCellFull!12465 (v!15853 V!40259)) (EmptyCell!12465) )
))
(declare-datatypes ((array!69602 0))(
  ( (array!69603 (arr!33471 (Array (_ BitVec 32) ValueCell!12465)) (size!34008 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69602)

(declare-fun mapValue!41278 () ValueCell!12465)

(declare-fun mapRest!41278 () (Array (_ BitVec 32) ValueCell!12465))

(declare-fun mapKey!41278 () (_ BitVec 32))

(assert (=> mapNonEmpty!41278 (= (arr!33471 _values!874) (store mapRest!41278 mapKey!41278 mapValue!41278))))

(declare-fun b!1081757 () Bool)

(declare-fun e!618314 () Bool)

(declare-fun e!618316 () Bool)

(assert (=> b!1081757 (= e!618314 (and e!618316 mapRes!41278))))

(declare-fun condMapEmpty!41278 () Bool)

(declare-fun mapDefault!41278 () ValueCell!12465)

(assert (=> b!1081757 (= condMapEmpty!41278 (= (arr!33471 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12465)) mapDefault!41278)))))

(declare-fun b!1081758 () Bool)

(declare-fun res!721148 () Bool)

(declare-fun e!618319 () Bool)

(assert (=> b!1081758 (=> (not res!721148) (not e!618319))))

(declare-datatypes ((array!69604 0))(
  ( (array!69605 (arr!33472 (Array (_ BitVec 32) (_ BitVec 64))) (size!34009 (_ BitVec 32))) )
))
(declare-fun lt!479393 () array!69604)

(declare-datatypes ((List!23463 0))(
  ( (Nil!23460) (Cons!23459 (h!24668 (_ BitVec 64)) (t!32875 List!23463)) )
))
(declare-fun arrayNoDuplicates!0 (array!69604 (_ BitVec 32) List!23463) Bool)

(assert (=> b!1081758 (= res!721148 (arrayNoDuplicates!0 lt!479393 #b00000000000000000000000000000000 Nil!23460))))

(declare-fun b!1081759 () Bool)

(declare-fun res!721140 () Bool)

(declare-fun e!618318 () Bool)

(assert (=> b!1081759 (=> (not res!721140) (not e!618318))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun _keys!1070 () array!69604)

(assert (=> b!1081759 (= res!721140 (and (= (size!34008 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34009 _keys!1070) (size!34008 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!41278 () Bool)

(assert (=> mapIsEmpty!41278 mapRes!41278))

(declare-fun b!1081760 () Bool)

(assert (=> b!1081760 (= e!618319 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun zeroValue!831 () V!40259)

(declare-fun minValue!831 () V!40259)

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((tuple2!16832 0))(
  ( (tuple2!16833 (_1!8426 (_ BitVec 64)) (_2!8426 V!40259)) )
))
(declare-datatypes ((List!23464 0))(
  ( (Nil!23461) (Cons!23460 (h!24669 tuple2!16832) (t!32876 List!23464)) )
))
(declare-datatypes ((ListLongMap!14813 0))(
  ( (ListLongMap!14814 (toList!7422 List!23464)) )
))
(declare-fun lt!479395 () ListLongMap!14813)

(declare-fun getCurrentListMapNoExtraKeys!3933 (array!69604 array!69602 (_ BitVec 32) (_ BitVec 32) V!40259 V!40259 (_ BitVec 32) Int) ListLongMap!14813)

(declare-fun dynLambda!2069 (Int (_ BitVec 64)) V!40259)

(assert (=> b!1081760 (= lt!479395 (getCurrentListMapNoExtraKeys!3933 lt!479393 (array!69603 (store (arr!33471 _values!874) i!650 (ValueCellFull!12465 (dynLambda!2069 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34008 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479396 () ListLongMap!14813)

(assert (=> b!1081760 (= lt!479396 (getCurrentListMapNoExtraKeys!3933 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69604 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1081760 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35523 0))(
  ( (Unit!35524) )
))
(declare-fun lt!479394 () Unit!35523)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69604 (_ BitVec 64) (_ BitVec 32)) Unit!35523)

(assert (=> b!1081760 (= lt!479394 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1081761 () Bool)

(assert (=> b!1081761 (= e!618316 tp_is_empty!26349)))

(declare-fun b!1081762 () Bool)

(declare-fun res!721141 () Bool)

(assert (=> b!1081762 (=> (not res!721141) (not e!618318))))

(assert (=> b!1081762 (= res!721141 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23460))))

(declare-fun b!1081756 () Bool)

(declare-fun res!721144 () Bool)

(assert (=> b!1081756 (=> (not res!721144) (not e!618318))))

(assert (=> b!1081756 (= res!721144 (= (select (arr!33472 _keys!1070) i!650) k0!904))))

(declare-fun res!721147 () Bool)

(assert (=> start!95730 (=> (not res!721147) (not e!618318))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95730 (= res!721147 (validMask!0 mask!1414))))

(assert (=> start!95730 e!618318))

(assert (=> start!95730 tp!78890))

(assert (=> start!95730 true))

(assert (=> start!95730 tp_is_empty!26349))

(declare-fun array_inv!25698 (array!69604) Bool)

(assert (=> start!95730 (array_inv!25698 _keys!1070)))

(declare-fun array_inv!25699 (array!69602) Bool)

(assert (=> start!95730 (and (array_inv!25699 _values!874) e!618314)))

(declare-fun b!1081763 () Bool)

(assert (=> b!1081763 (= e!618318 e!618319)))

(declare-fun res!721143 () Bool)

(assert (=> b!1081763 (=> (not res!721143) (not e!618319))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69604 (_ BitVec 32)) Bool)

(assert (=> b!1081763 (= res!721143 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479393 mask!1414))))

(assert (=> b!1081763 (= lt!479393 (array!69605 (store (arr!33472 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34009 _keys!1070)))))

(declare-fun b!1081764 () Bool)

(declare-fun res!721146 () Bool)

(assert (=> b!1081764 (=> (not res!721146) (not e!618318))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1081764 (= res!721146 (validKeyInArray!0 k0!904))))

(declare-fun b!1081765 () Bool)

(declare-fun res!721145 () Bool)

(assert (=> b!1081765 (=> (not res!721145) (not e!618318))))

(assert (=> b!1081765 (= res!721145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1081766 () Bool)

(declare-fun res!721142 () Bool)

(assert (=> b!1081766 (=> (not res!721142) (not e!618318))))

(assert (=> b!1081766 (= res!721142 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34009 _keys!1070))))))

(assert (= (and start!95730 res!721147) b!1081759))

(assert (= (and b!1081759 res!721140) b!1081765))

(assert (= (and b!1081765 res!721145) b!1081762))

(assert (= (and b!1081762 res!721141) b!1081766))

(assert (= (and b!1081766 res!721142) b!1081764))

(assert (= (and b!1081764 res!721146) b!1081756))

(assert (= (and b!1081756 res!721144) b!1081763))

(assert (= (and b!1081763 res!721143) b!1081758))

(assert (= (and b!1081758 res!721148) b!1081760))

(assert (= (and b!1081757 condMapEmpty!41278) mapIsEmpty!41278))

(assert (= (and b!1081757 (not condMapEmpty!41278)) mapNonEmpty!41278))

(get-info :version)

(assert (= (and mapNonEmpty!41278 ((_ is ValueCellFull!12465) mapValue!41278)) b!1081755))

(assert (= (and b!1081757 ((_ is ValueCellFull!12465) mapDefault!41278)) b!1081761))

(assert (= start!95730 b!1081757))

(declare-fun b_lambda!17047 () Bool)

(assert (=> (not b_lambda!17047) (not b!1081760)))

(declare-fun t!32874 () Bool)

(declare-fun tb!7233 () Bool)

(assert (=> (and start!95730 (= defaultEntry!882 defaultEntry!882) t!32874) tb!7233))

(declare-fun result!14977 () Bool)

(assert (=> tb!7233 (= result!14977 tp_is_empty!26349)))

(assert (=> b!1081760 t!32874))

(declare-fun b_and!35389 () Bool)

(assert (= b_and!35387 (and (=> t!32874 result!14977) b_and!35389)))

(declare-fun m!999643 () Bool)

(assert (=> b!1081763 m!999643))

(declare-fun m!999645 () Bool)

(assert (=> b!1081763 m!999645))

(declare-fun m!999647 () Bool)

(assert (=> mapNonEmpty!41278 m!999647))

(declare-fun m!999649 () Bool)

(assert (=> b!1081762 m!999649))

(declare-fun m!999651 () Bool)

(assert (=> b!1081760 m!999651))

(declare-fun m!999653 () Bool)

(assert (=> b!1081760 m!999653))

(declare-fun m!999655 () Bool)

(assert (=> b!1081760 m!999655))

(declare-fun m!999657 () Bool)

(assert (=> b!1081760 m!999657))

(declare-fun m!999659 () Bool)

(assert (=> b!1081760 m!999659))

(declare-fun m!999661 () Bool)

(assert (=> b!1081760 m!999661))

(declare-fun m!999663 () Bool)

(assert (=> b!1081756 m!999663))

(declare-fun m!999665 () Bool)

(assert (=> b!1081764 m!999665))

(declare-fun m!999667 () Bool)

(assert (=> b!1081758 m!999667))

(declare-fun m!999669 () Bool)

(assert (=> b!1081765 m!999669))

(declare-fun m!999671 () Bool)

(assert (=> start!95730 m!999671))

(declare-fun m!999673 () Bool)

(assert (=> start!95730 m!999673))

(declare-fun m!999675 () Bool)

(assert (=> start!95730 m!999675))

(check-sat tp_is_empty!26349 (not b!1081760) (not b!1081764) (not b!1081763) b_and!35389 (not b!1081765) (not b_lambda!17047) (not b!1081762) (not b!1081758) (not start!95730) (not mapNonEmpty!41278) (not b_next!22347))
(check-sat b_and!35389 (not b_next!22347))
