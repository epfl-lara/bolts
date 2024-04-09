; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96018 () Bool)

(assert start!96018)

(declare-fun b_free!22635 () Bool)

(declare-fun b_next!22635 () Bool)

(assert (=> start!96018 (= b_free!22635 (not b_next!22635))))

(declare-fun tp!79754 () Bool)

(declare-fun b_and!35963 () Bool)

(assert (=> start!96018 (= tp!79754 b_and!35963)))

(declare-fun mapNonEmpty!41710 () Bool)

(declare-fun mapRes!41710 () Bool)

(declare-fun tp!79755 () Bool)

(declare-fun e!621326 () Bool)

(assert (=> mapNonEmpty!41710 (= mapRes!41710 (and tp!79755 e!621326))))

(declare-datatypes ((V!40643 0))(
  ( (V!40644 (val!13375 Int)) )
))
(declare-datatypes ((ValueCell!12609 0))(
  ( (ValueCellFull!12609 (v!15997 V!40643)) (EmptyCell!12609) )
))
(declare-datatypes ((array!70166 0))(
  ( (array!70167 (arr!33753 (Array (_ BitVec 32) ValueCell!12609)) (size!34290 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70166)

(declare-fun mapKey!41710 () (_ BitVec 32))

(declare-fun mapRest!41710 () (Array (_ BitVec 32) ValueCell!12609))

(declare-fun mapValue!41710 () ValueCell!12609)

(assert (=> mapNonEmpty!41710 (= (arr!33753 _values!874) (store mapRest!41710 mapKey!41710 mapValue!41710))))

(declare-fun b!1087660 () Bool)

(declare-fun e!621328 () Bool)

(declare-fun e!621323 () Bool)

(assert (=> b!1087660 (= e!621328 e!621323)))

(declare-fun res!725468 () Bool)

(assert (=> b!1087660 (=> res!725468 e!621323)))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1087660 (= res!725468 (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-datatypes ((tuple2!17042 0))(
  ( (tuple2!17043 (_1!8531 (_ BitVec 64)) (_2!8531 V!40643)) )
))
(declare-datatypes ((List!23683 0))(
  ( (Nil!23680) (Cons!23679 (h!24888 tuple2!17042) (t!33383 List!23683)) )
))
(declare-datatypes ((ListLongMap!15023 0))(
  ( (ListLongMap!15024 (toList!7527 List!23683)) )
))
(declare-fun lt!484133 () ListLongMap!15023)

(declare-fun lt!484136 () ListLongMap!15023)

(assert (=> b!1087660 (= lt!484133 lt!484136)))

(declare-fun lt!484129 () ListLongMap!15023)

(declare-fun lt!484135 () tuple2!17042)

(declare-fun +!3251 (ListLongMap!15023 tuple2!17042) ListLongMap!15023)

(assert (=> b!1087660 (= lt!484136 (+!3251 lt!484129 lt!484135))))

(declare-fun lt!484128 () ListLongMap!15023)

(declare-fun lt!484127 () ListLongMap!15023)

(assert (=> b!1087660 (= lt!484128 lt!484127)))

(declare-fun lt!484138 () ListLongMap!15023)

(assert (=> b!1087660 (= lt!484127 (+!3251 lt!484138 lt!484135))))

(declare-fun lt!484130 () ListLongMap!15023)

(assert (=> b!1087660 (= lt!484133 (+!3251 lt!484130 lt!484135))))

(declare-fun zeroValue!831 () V!40643)

(assert (=> b!1087660 (= lt!484135 (tuple2!17043 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1087661 () Bool)

(declare-fun res!725464 () Bool)

(declare-fun e!621322 () Bool)

(assert (=> b!1087661 (=> (not res!725464) (not e!621322))))

(declare-datatypes ((array!70168 0))(
  ( (array!70169 (arr!33754 (Array (_ BitVec 32) (_ BitVec 64))) (size!34291 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70168)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1087661 (= res!725464 (= (select (arr!33754 _keys!1070) i!650) k0!904))))

(declare-fun b!1087662 () Bool)

(declare-fun res!725469 () Bool)

(assert (=> b!1087662 (=> (not res!725469) (not e!621322))))

(assert (=> b!1087662 (= res!725469 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34291 _keys!1070))))))

(declare-fun b!1087663 () Bool)

(declare-fun res!725462 () Bool)

(declare-fun e!621321 () Bool)

(assert (=> b!1087663 (=> (not res!725462) (not e!621321))))

(declare-fun lt!484132 () array!70168)

(declare-datatypes ((List!23684 0))(
  ( (Nil!23681) (Cons!23680 (h!24889 (_ BitVec 64)) (t!33384 List!23684)) )
))
(declare-fun arrayNoDuplicates!0 (array!70168 (_ BitVec 32) List!23684) Bool)

(assert (=> b!1087663 (= res!725462 (arrayNoDuplicates!0 lt!484132 #b00000000000000000000000000000000 Nil!23681))))

(declare-fun b!1087664 () Bool)

(declare-fun res!725471 () Bool)

(assert (=> b!1087664 (=> (not res!725471) (not e!621322))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1087664 (= res!725471 (and (= (size!34290 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34291 _keys!1070) (size!34290 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1087665 () Bool)

(assert (=> b!1087665 (= e!621321 (not e!621328))))

(declare-fun res!725467 () Bool)

(assert (=> b!1087665 (=> res!725467 e!621328)))

(assert (=> b!1087665 (= res!725467 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40643)

(declare-fun getCurrentListMap!4279 (array!70168 array!70166 (_ BitVec 32) (_ BitVec 32) V!40643 V!40643 (_ BitVec 32) Int) ListLongMap!15023)

(assert (=> b!1087665 (= lt!484128 (getCurrentListMap!4279 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484139 () array!70166)

(assert (=> b!1087665 (= lt!484133 (getCurrentListMap!4279 lt!484132 lt!484139 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1087665 (and (= lt!484130 lt!484129) (= lt!484129 lt!484130))))

(declare-fun -!807 (ListLongMap!15023 (_ BitVec 64)) ListLongMap!15023)

(assert (=> b!1087665 (= lt!484129 (-!807 lt!484138 k0!904))))

(declare-datatypes ((Unit!35729 0))(
  ( (Unit!35730) )
))
(declare-fun lt!484134 () Unit!35729)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!85 (array!70168 array!70166 (_ BitVec 32) (_ BitVec 32) V!40643 V!40643 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35729)

(assert (=> b!1087665 (= lt!484134 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!85 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4031 (array!70168 array!70166 (_ BitVec 32) (_ BitVec 32) V!40643 V!40643 (_ BitVec 32) Int) ListLongMap!15023)

(assert (=> b!1087665 (= lt!484130 (getCurrentListMapNoExtraKeys!4031 lt!484132 lt!484139 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2167 (Int (_ BitVec 64)) V!40643)

(assert (=> b!1087665 (= lt!484139 (array!70167 (store (arr!33753 _values!874) i!650 (ValueCellFull!12609 (dynLambda!2167 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34290 _values!874)))))

(assert (=> b!1087665 (= lt!484138 (getCurrentListMapNoExtraKeys!4031 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70168 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1087665 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!484137 () Unit!35729)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70168 (_ BitVec 64) (_ BitVec 32)) Unit!35729)

(assert (=> b!1087665 (= lt!484137 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapIsEmpty!41710 () Bool)

(assert (=> mapIsEmpty!41710 mapRes!41710))

(declare-fun b!1087666 () Bool)

(assert (=> b!1087666 (= e!621323 true)))

(assert (=> b!1087666 (= (-!807 lt!484127 k0!904) lt!484136)))

(declare-fun lt!484131 () Unit!35729)

(declare-fun addRemoveCommutativeForDiffKeys!46 (ListLongMap!15023 (_ BitVec 64) V!40643 (_ BitVec 64)) Unit!35729)

(assert (=> b!1087666 (= lt!484131 (addRemoveCommutativeForDiffKeys!46 lt!484138 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun b!1087667 () Bool)

(declare-fun res!725461 () Bool)

(assert (=> b!1087667 (=> (not res!725461) (not e!621322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70168 (_ BitVec 32)) Bool)

(assert (=> b!1087667 (= res!725461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1087668 () Bool)

(declare-fun tp_is_empty!26637 () Bool)

(assert (=> b!1087668 (= e!621326 tp_is_empty!26637)))

(declare-fun b!1087669 () Bool)

(assert (=> b!1087669 (= e!621322 e!621321)))

(declare-fun res!725466 () Bool)

(assert (=> b!1087669 (=> (not res!725466) (not e!621321))))

(assert (=> b!1087669 (= res!725466 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!484132 mask!1414))))

(assert (=> b!1087669 (= lt!484132 (array!70169 (store (arr!33754 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34291 _keys!1070)))))

(declare-fun b!1087670 () Bool)

(declare-fun res!725465 () Bool)

(assert (=> b!1087670 (=> (not res!725465) (not e!621322))))

(assert (=> b!1087670 (= res!725465 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23681))))

(declare-fun b!1087671 () Bool)

(declare-fun res!725463 () Bool)

(assert (=> b!1087671 (=> (not res!725463) (not e!621322))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1087671 (= res!725463 (validKeyInArray!0 k0!904))))

(declare-fun b!1087672 () Bool)

(declare-fun e!621325 () Bool)

(declare-fun e!621327 () Bool)

(assert (=> b!1087672 (= e!621325 (and e!621327 mapRes!41710))))

(declare-fun condMapEmpty!41710 () Bool)

(declare-fun mapDefault!41710 () ValueCell!12609)

(assert (=> b!1087672 (= condMapEmpty!41710 (= (arr!33753 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12609)) mapDefault!41710)))))

(declare-fun res!725470 () Bool)

(assert (=> start!96018 (=> (not res!725470) (not e!621322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96018 (= res!725470 (validMask!0 mask!1414))))

(assert (=> start!96018 e!621322))

(assert (=> start!96018 tp!79754))

(assert (=> start!96018 true))

(assert (=> start!96018 tp_is_empty!26637))

(declare-fun array_inv!25896 (array!70168) Bool)

(assert (=> start!96018 (array_inv!25896 _keys!1070)))

(declare-fun array_inv!25897 (array!70166) Bool)

(assert (=> start!96018 (and (array_inv!25897 _values!874) e!621325)))

(declare-fun b!1087673 () Bool)

(assert (=> b!1087673 (= e!621327 tp_is_empty!26637)))

(assert (= (and start!96018 res!725470) b!1087664))

(assert (= (and b!1087664 res!725471) b!1087667))

(assert (= (and b!1087667 res!725461) b!1087670))

(assert (= (and b!1087670 res!725465) b!1087662))

(assert (= (and b!1087662 res!725469) b!1087671))

(assert (= (and b!1087671 res!725463) b!1087661))

(assert (= (and b!1087661 res!725464) b!1087669))

(assert (= (and b!1087669 res!725466) b!1087663))

(assert (= (and b!1087663 res!725462) b!1087665))

(assert (= (and b!1087665 (not res!725467)) b!1087660))

(assert (= (and b!1087660 (not res!725468)) b!1087666))

(assert (= (and b!1087672 condMapEmpty!41710) mapIsEmpty!41710))

(assert (= (and b!1087672 (not condMapEmpty!41710)) mapNonEmpty!41710))

(get-info :version)

(assert (= (and mapNonEmpty!41710 ((_ is ValueCellFull!12609) mapValue!41710)) b!1087668))

(assert (= (and b!1087672 ((_ is ValueCellFull!12609) mapDefault!41710)) b!1087673))

(assert (= start!96018 b!1087672))

(declare-fun b_lambda!17335 () Bool)

(assert (=> (not b_lambda!17335) (not b!1087665)))

(declare-fun t!33382 () Bool)

(declare-fun tb!7521 () Bool)

(assert (=> (and start!96018 (= defaultEntry!882 defaultEntry!882) t!33382) tb!7521))

(declare-fun result!15553 () Bool)

(assert (=> tb!7521 (= result!15553 tp_is_empty!26637)))

(assert (=> b!1087665 t!33382))

(declare-fun b_and!35965 () Bool)

(assert (= b_and!35963 (and (=> t!33382 result!15553) b_and!35965)))

(declare-fun m!1006729 () Bool)

(assert (=> b!1087665 m!1006729))

(declare-fun m!1006731 () Bool)

(assert (=> b!1087665 m!1006731))

(declare-fun m!1006733 () Bool)

(assert (=> b!1087665 m!1006733))

(declare-fun m!1006735 () Bool)

(assert (=> b!1087665 m!1006735))

(declare-fun m!1006737 () Bool)

(assert (=> b!1087665 m!1006737))

(declare-fun m!1006739 () Bool)

(assert (=> b!1087665 m!1006739))

(declare-fun m!1006741 () Bool)

(assert (=> b!1087665 m!1006741))

(declare-fun m!1006743 () Bool)

(assert (=> b!1087665 m!1006743))

(declare-fun m!1006745 () Bool)

(assert (=> b!1087665 m!1006745))

(declare-fun m!1006747 () Bool)

(assert (=> b!1087665 m!1006747))

(declare-fun m!1006749 () Bool)

(assert (=> b!1087663 m!1006749))

(declare-fun m!1006751 () Bool)

(assert (=> b!1087667 m!1006751))

(declare-fun m!1006753 () Bool)

(assert (=> b!1087669 m!1006753))

(declare-fun m!1006755 () Bool)

(assert (=> b!1087669 m!1006755))

(declare-fun m!1006757 () Bool)

(assert (=> mapNonEmpty!41710 m!1006757))

(declare-fun m!1006759 () Bool)

(assert (=> b!1087661 m!1006759))

(declare-fun m!1006761 () Bool)

(assert (=> b!1087660 m!1006761))

(declare-fun m!1006763 () Bool)

(assert (=> b!1087660 m!1006763))

(declare-fun m!1006765 () Bool)

(assert (=> b!1087660 m!1006765))

(declare-fun m!1006767 () Bool)

(assert (=> b!1087666 m!1006767))

(declare-fun m!1006769 () Bool)

(assert (=> b!1087666 m!1006769))

(declare-fun m!1006771 () Bool)

(assert (=> start!96018 m!1006771))

(declare-fun m!1006773 () Bool)

(assert (=> start!96018 m!1006773))

(declare-fun m!1006775 () Bool)

(assert (=> start!96018 m!1006775))

(declare-fun m!1006777 () Bool)

(assert (=> b!1087671 m!1006777))

(declare-fun m!1006779 () Bool)

(assert (=> b!1087670 m!1006779))

(check-sat (not mapNonEmpty!41710) (not b!1087665) tp_is_empty!26637 (not b!1087670) (not b!1087671) (not b!1087669) (not b!1087667) (not b!1087660) (not b_lambda!17335) (not b_next!22635) (not b!1087663) (not start!96018) b_and!35965 (not b!1087666))
(check-sat b_and!35965 (not b_next!22635))
