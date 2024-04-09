; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95844 () Bool)

(assert start!95844)

(declare-fun b_free!22461 () Bool)

(declare-fun b_next!22461 () Bool)

(assert (=> start!95844 (= b_free!22461 (not b_next!22461))))

(declare-fun tp!79232 () Bool)

(declare-fun b_and!35615 () Bool)

(assert (=> start!95844 (= tp!79232 b_and!35615)))

(declare-fun b!1083921 () Bool)

(declare-fun e!619341 () Bool)

(declare-fun tp_is_empty!26463 () Bool)

(assert (=> b!1083921 (= e!619341 tp_is_empty!26463)))

(declare-fun b!1083922 () Bool)

(declare-fun res!722682 () Bool)

(declare-fun e!619345 () Bool)

(assert (=> b!1083922 (=> (not res!722682) (not e!619345))))

(declare-datatypes ((array!69828 0))(
  ( (array!69829 (arr!33584 (Array (_ BitVec 32) (_ BitVec 64))) (size!34121 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69828)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1083922 (= res!722682 (= (select (arr!33584 _keys!1070) i!650) k0!904))))

(declare-fun b!1083923 () Bool)

(declare-fun res!722683 () Bool)

(assert (=> b!1083923 (=> (not res!722683) (not e!619345))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69828 (_ BitVec 32)) Bool)

(assert (=> b!1083923 (= res!722683 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1083924 () Bool)

(declare-fun res!722684 () Bool)

(assert (=> b!1083924 (=> (not res!722684) (not e!619345))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40411 0))(
  ( (V!40412 (val!13288 Int)) )
))
(declare-datatypes ((ValueCell!12522 0))(
  ( (ValueCellFull!12522 (v!15910 V!40411)) (EmptyCell!12522) )
))
(declare-datatypes ((array!69830 0))(
  ( (array!69831 (arr!33585 (Array (_ BitVec 32) ValueCell!12522)) (size!34122 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69830)

(assert (=> b!1083924 (= res!722684 (and (= (size!34122 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34121 _keys!1070) (size!34122 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1083925 () Bool)

(declare-fun e!619342 () Bool)

(assert (=> b!1083925 (= e!619342 (not true))))

(declare-fun lt!480369 () array!69830)

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((tuple2!16904 0))(
  ( (tuple2!16905 (_1!8462 (_ BitVec 64)) (_2!8462 V!40411)) )
))
(declare-datatypes ((List!23544 0))(
  ( (Nil!23541) (Cons!23540 (h!24749 tuple2!16904) (t!33070 List!23544)) )
))
(declare-datatypes ((ListLongMap!14885 0))(
  ( (ListLongMap!14886 (toList!7458 List!23544)) )
))
(declare-fun lt!480372 () ListLongMap!14885)

(declare-fun minValue!831 () V!40411)

(declare-fun lt!480374 () array!69828)

(declare-fun zeroValue!831 () V!40411)

(declare-fun getCurrentListMap!4217 (array!69828 array!69830 (_ BitVec 32) (_ BitVec 32) V!40411 V!40411 (_ BitVec 32) Int) ListLongMap!14885)

(assert (=> b!1083925 (= lt!480372 (getCurrentListMap!4217 lt!480374 lt!480369 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480370 () ListLongMap!14885)

(declare-fun lt!480367 () ListLongMap!14885)

(assert (=> b!1083925 (and (= lt!480370 lt!480367) (= lt!480367 lt!480370))))

(declare-fun lt!480371 () ListLongMap!14885)

(declare-fun -!740 (ListLongMap!14885 (_ BitVec 64)) ListLongMap!14885)

(assert (=> b!1083925 (= lt!480367 (-!740 lt!480371 k0!904))))

(declare-datatypes ((Unit!35595 0))(
  ( (Unit!35596) )
))
(declare-fun lt!480368 () Unit!35595)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!23 (array!69828 array!69830 (_ BitVec 32) (_ BitVec 32) V!40411 V!40411 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35595)

(assert (=> b!1083925 (= lt!480368 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!23 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3969 (array!69828 array!69830 (_ BitVec 32) (_ BitVec 32) V!40411 V!40411 (_ BitVec 32) Int) ListLongMap!14885)

(assert (=> b!1083925 (= lt!480370 (getCurrentListMapNoExtraKeys!3969 lt!480374 lt!480369 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2105 (Int (_ BitVec 64)) V!40411)

(assert (=> b!1083925 (= lt!480369 (array!69831 (store (arr!33585 _values!874) i!650 (ValueCellFull!12522 (dynLambda!2105 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34122 _values!874)))))

(assert (=> b!1083925 (= lt!480371 (getCurrentListMapNoExtraKeys!3969 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69828 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1083925 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!480373 () Unit!35595)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69828 (_ BitVec 64) (_ BitVec 32)) Unit!35595)

(assert (=> b!1083925 (= lt!480373 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun res!722687 () Bool)

(assert (=> start!95844 (=> (not res!722687) (not e!619345))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95844 (= res!722687 (validMask!0 mask!1414))))

(assert (=> start!95844 e!619345))

(assert (=> start!95844 tp!79232))

(assert (=> start!95844 true))

(assert (=> start!95844 tp_is_empty!26463))

(declare-fun array_inv!25772 (array!69828) Bool)

(assert (=> start!95844 (array_inv!25772 _keys!1070)))

(declare-fun e!619344 () Bool)

(declare-fun array_inv!25773 (array!69830) Bool)

(assert (=> start!95844 (and (array_inv!25773 _values!874) e!619344)))

(declare-fun mapNonEmpty!41449 () Bool)

(declare-fun mapRes!41449 () Bool)

(declare-fun tp!79233 () Bool)

(assert (=> mapNonEmpty!41449 (= mapRes!41449 (and tp!79233 e!619341))))

(declare-fun mapKey!41449 () (_ BitVec 32))

(declare-fun mapRest!41449 () (Array (_ BitVec 32) ValueCell!12522))

(declare-fun mapValue!41449 () ValueCell!12522)

(assert (=> mapNonEmpty!41449 (= (arr!33585 _values!874) (store mapRest!41449 mapKey!41449 mapValue!41449))))

(declare-fun b!1083926 () Bool)

(assert (=> b!1083926 (= e!619345 e!619342)))

(declare-fun res!722680 () Bool)

(assert (=> b!1083926 (=> (not res!722680) (not e!619342))))

(assert (=> b!1083926 (= res!722680 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480374 mask!1414))))

(assert (=> b!1083926 (= lt!480374 (array!69829 (store (arr!33584 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34121 _keys!1070)))))

(declare-fun mapIsEmpty!41449 () Bool)

(assert (=> mapIsEmpty!41449 mapRes!41449))

(declare-fun b!1083927 () Bool)

(declare-fun e!619343 () Bool)

(assert (=> b!1083927 (= e!619343 tp_is_empty!26463)))

(declare-fun b!1083928 () Bool)

(declare-fun res!722685 () Bool)

(assert (=> b!1083928 (=> (not res!722685) (not e!619345))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1083928 (= res!722685 (validKeyInArray!0 k0!904))))

(declare-fun b!1083929 () Bool)

(assert (=> b!1083929 (= e!619344 (and e!619343 mapRes!41449))))

(declare-fun condMapEmpty!41449 () Bool)

(declare-fun mapDefault!41449 () ValueCell!12522)

(assert (=> b!1083929 (= condMapEmpty!41449 (= (arr!33585 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12522)) mapDefault!41449)))))

(declare-fun b!1083930 () Bool)

(declare-fun res!722679 () Bool)

(assert (=> b!1083930 (=> (not res!722679) (not e!619345))))

(declare-datatypes ((List!23545 0))(
  ( (Nil!23542) (Cons!23541 (h!24750 (_ BitVec 64)) (t!33071 List!23545)) )
))
(declare-fun arrayNoDuplicates!0 (array!69828 (_ BitVec 32) List!23545) Bool)

(assert (=> b!1083930 (= res!722679 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23542))))

(declare-fun b!1083931 () Bool)

(declare-fun res!722681 () Bool)

(assert (=> b!1083931 (=> (not res!722681) (not e!619345))))

(assert (=> b!1083931 (= res!722681 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34121 _keys!1070))))))

(declare-fun b!1083932 () Bool)

(declare-fun res!722686 () Bool)

(assert (=> b!1083932 (=> (not res!722686) (not e!619342))))

(assert (=> b!1083932 (= res!722686 (arrayNoDuplicates!0 lt!480374 #b00000000000000000000000000000000 Nil!23542))))

(assert (= (and start!95844 res!722687) b!1083924))

(assert (= (and b!1083924 res!722684) b!1083923))

(assert (= (and b!1083923 res!722683) b!1083930))

(assert (= (and b!1083930 res!722679) b!1083931))

(assert (= (and b!1083931 res!722681) b!1083928))

(assert (= (and b!1083928 res!722685) b!1083922))

(assert (= (and b!1083922 res!722682) b!1083926))

(assert (= (and b!1083926 res!722680) b!1083932))

(assert (= (and b!1083932 res!722686) b!1083925))

(assert (= (and b!1083929 condMapEmpty!41449) mapIsEmpty!41449))

(assert (= (and b!1083929 (not condMapEmpty!41449)) mapNonEmpty!41449))

(get-info :version)

(assert (= (and mapNonEmpty!41449 ((_ is ValueCellFull!12522) mapValue!41449)) b!1083921))

(assert (= (and b!1083929 ((_ is ValueCellFull!12522) mapDefault!41449)) b!1083927))

(assert (= start!95844 b!1083929))

(declare-fun b_lambda!17161 () Bool)

(assert (=> (not b_lambda!17161) (not b!1083925)))

(declare-fun t!33069 () Bool)

(declare-fun tb!7347 () Bool)

(assert (=> (and start!95844 (= defaultEntry!882 defaultEntry!882) t!33069) tb!7347))

(declare-fun result!15205 () Bool)

(assert (=> tb!7347 (= result!15205 tp_is_empty!26463)))

(assert (=> b!1083925 t!33069))

(declare-fun b_and!35617 () Bool)

(assert (= b_and!35615 (and (=> t!33069 result!15205) b_and!35617)))

(declare-fun m!1001749 () Bool)

(assert (=> b!1083923 m!1001749))

(declare-fun m!1001751 () Bool)

(assert (=> mapNonEmpty!41449 m!1001751))

(declare-fun m!1001753 () Bool)

(assert (=> b!1083925 m!1001753))

(declare-fun m!1001755 () Bool)

(assert (=> b!1083925 m!1001755))

(declare-fun m!1001757 () Bool)

(assert (=> b!1083925 m!1001757))

(declare-fun m!1001759 () Bool)

(assert (=> b!1083925 m!1001759))

(declare-fun m!1001761 () Bool)

(assert (=> b!1083925 m!1001761))

(declare-fun m!1001763 () Bool)

(assert (=> b!1083925 m!1001763))

(declare-fun m!1001765 () Bool)

(assert (=> b!1083925 m!1001765))

(declare-fun m!1001767 () Bool)

(assert (=> b!1083925 m!1001767))

(declare-fun m!1001769 () Bool)

(assert (=> b!1083925 m!1001769))

(declare-fun m!1001771 () Bool)

(assert (=> start!95844 m!1001771))

(declare-fun m!1001773 () Bool)

(assert (=> start!95844 m!1001773))

(declare-fun m!1001775 () Bool)

(assert (=> start!95844 m!1001775))

(declare-fun m!1001777 () Bool)

(assert (=> b!1083928 m!1001777))

(declare-fun m!1001779 () Bool)

(assert (=> b!1083922 m!1001779))

(declare-fun m!1001781 () Bool)

(assert (=> b!1083926 m!1001781))

(declare-fun m!1001783 () Bool)

(assert (=> b!1083926 m!1001783))

(declare-fun m!1001785 () Bool)

(assert (=> b!1083932 m!1001785))

(declare-fun m!1001787 () Bool)

(assert (=> b!1083930 m!1001787))

(check-sat (not b!1083930) (not b_lambda!17161) tp_is_empty!26463 (not b_next!22461) (not b!1083925) (not b!1083928) (not b!1083932) (not start!95844) (not mapNonEmpty!41449) (not b!1083923) b_and!35617 (not b!1083926))
(check-sat b_and!35617 (not b_next!22461))
