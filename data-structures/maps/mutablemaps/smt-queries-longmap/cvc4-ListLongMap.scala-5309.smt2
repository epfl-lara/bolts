; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71102 () Bool)

(assert start!71102)

(declare-fun b_free!13265 () Bool)

(declare-fun b_next!13265 () Bool)

(assert (=> start!71102 (= b_free!13265 (not b_next!13265))))

(declare-fun tp!46551 () Bool)

(declare-fun b_and!22197 () Bool)

(assert (=> start!71102 (= tp!46551 b_and!22197)))

(declare-fun mapIsEmpty!24085 () Bool)

(declare-fun mapRes!24085 () Bool)

(assert (=> mapIsEmpty!24085 mapRes!24085))

(declare-fun res!562707 () Bool)

(declare-fun e!459381 () Bool)

(assert (=> start!71102 (=> (not res!562707) (not e!459381))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71102 (= res!562707 (validMask!0 mask!1312))))

(assert (=> start!71102 e!459381))

(declare-fun tp_is_empty!14975 () Bool)

(assert (=> start!71102 tp_is_empty!14975))

(declare-datatypes ((array!46094 0))(
  ( (array!46095 (arr!22089 (Array (_ BitVec 32) (_ BitVec 64))) (size!22510 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46094)

(declare-fun array_inv!17599 (array!46094) Bool)

(assert (=> start!71102 (array_inv!17599 _keys!976)))

(assert (=> start!71102 true))

(declare-datatypes ((V!24967 0))(
  ( (V!24968 (val!7535 Int)) )
))
(declare-datatypes ((ValueCell!7072 0))(
  ( (ValueCellFull!7072 (v!9964 V!24967)) (EmptyCell!7072) )
))
(declare-datatypes ((array!46096 0))(
  ( (array!46097 (arr!22090 (Array (_ BitVec 32) ValueCell!7072)) (size!22511 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46096)

(declare-fun e!459380 () Bool)

(declare-fun array_inv!17600 (array!46096) Bool)

(assert (=> start!71102 (and (array_inv!17600 _values!788) e!459380)))

(assert (=> start!71102 tp!46551))

(declare-fun b!825279 () Bool)

(declare-fun e!459376 () Bool)

(assert (=> b!825279 (= e!459376 tp_is_empty!14975)))

(declare-fun b!825280 () Bool)

(declare-fun e!459378 () Bool)

(assert (=> b!825280 (= e!459378 true)))

(declare-datatypes ((tuple2!9974 0))(
  ( (tuple2!9975 (_1!4997 (_ BitVec 64)) (_2!4997 V!24967)) )
))
(declare-datatypes ((List!15819 0))(
  ( (Nil!15816) (Cons!15815 (h!16944 tuple2!9974) (t!22172 List!15819)) )
))
(declare-datatypes ((ListLongMap!8811 0))(
  ( (ListLongMap!8812 (toList!4421 List!15819)) )
))
(declare-fun lt!372622 () ListLongMap!8811)

(declare-fun lt!372629 () ListLongMap!8811)

(declare-fun lt!372618 () tuple2!9974)

(declare-fun lt!372621 () tuple2!9974)

(declare-fun +!1883 (ListLongMap!8811 tuple2!9974) ListLongMap!8811)

(assert (=> b!825280 (= lt!372629 (+!1883 (+!1883 lt!372622 lt!372618) lt!372621))))

(declare-fun lt!372624 () ListLongMap!8811)

(declare-fun lt!372623 () ListLongMap!8811)

(declare-fun lt!372625 () ListLongMap!8811)

(assert (=> b!825280 (and (= lt!372624 lt!372623) (= lt!372625 lt!372623) (= lt!372625 lt!372624))))

(declare-fun lt!372616 () ListLongMap!8811)

(assert (=> b!825280 (= lt!372623 (+!1883 lt!372616 lt!372618))))

(declare-fun lt!372626 () ListLongMap!8811)

(assert (=> b!825280 (= lt!372624 (+!1883 lt!372626 lt!372618))))

(declare-fun zeroValueBefore!34 () V!24967)

(declare-datatypes ((Unit!28283 0))(
  ( (Unit!28284) )
))
(declare-fun lt!372620 () Unit!28283)

(declare-fun zeroValueAfter!34 () V!24967)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!211 (ListLongMap!8811 (_ BitVec 64) V!24967 V!24967) Unit!28283)

(assert (=> b!825280 (= lt!372620 (addSameAsAddTwiceSameKeyDiffValues!211 lt!372626 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!459383 () Bool)

(assert (=> b!825280 e!459383))

(declare-fun res!562708 () Bool)

(assert (=> b!825280 (=> (not res!562708) (not e!459383))))

(declare-fun lt!372628 () ListLongMap!8811)

(assert (=> b!825280 (= res!562708 (= lt!372628 lt!372616))))

(declare-fun lt!372627 () tuple2!9974)

(assert (=> b!825280 (= lt!372616 (+!1883 lt!372626 lt!372627))))

(assert (=> b!825280 (= lt!372626 (+!1883 lt!372622 lt!372621))))

(assert (=> b!825280 (= lt!372618 (tuple2!9975 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!459382 () Bool)

(assert (=> b!825280 e!459382))

(declare-fun res!562709 () Bool)

(assert (=> b!825280 (=> (not res!562709) (not e!459382))))

(assert (=> b!825280 (= res!562709 (= lt!372628 (+!1883 (+!1883 lt!372622 lt!372627) lt!372621)))))

(declare-fun minValue!754 () V!24967)

(assert (=> b!825280 (= lt!372621 (tuple2!9975 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!825280 (= lt!372627 (tuple2!9975 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2533 (array!46094 array!46096 (_ BitVec 32) (_ BitVec 32) V!24967 V!24967 (_ BitVec 32) Int) ListLongMap!8811)

(assert (=> b!825280 (= lt!372625 (getCurrentListMap!2533 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!825280 (= lt!372628 (getCurrentListMap!2533 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!24085 () Bool)

(declare-fun tp!46552 () Bool)

(declare-fun e!459379 () Bool)

(assert (=> mapNonEmpty!24085 (= mapRes!24085 (and tp!46552 e!459379))))

(declare-fun mapKey!24085 () (_ BitVec 32))

(declare-fun mapRest!24085 () (Array (_ BitVec 32) ValueCell!7072))

(declare-fun mapValue!24085 () ValueCell!7072)

(assert (=> mapNonEmpty!24085 (= (arr!22090 _values!788) (store mapRest!24085 mapKey!24085 mapValue!24085))))

(declare-fun b!825281 () Bool)

(declare-fun res!562712 () Bool)

(assert (=> b!825281 (=> (not res!562712) (not e!459381))))

(declare-datatypes ((List!15820 0))(
  ( (Nil!15817) (Cons!15816 (h!16945 (_ BitVec 64)) (t!22173 List!15820)) )
))
(declare-fun arrayNoDuplicates!0 (array!46094 (_ BitVec 32) List!15820) Bool)

(assert (=> b!825281 (= res!562712 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15817))))

(declare-fun b!825282 () Bool)

(declare-fun lt!372619 () ListLongMap!8811)

(assert (=> b!825282 (= e!459383 (= lt!372625 (+!1883 (+!1883 lt!372619 lt!372621) lt!372618)))))

(declare-fun b!825283 () Bool)

(assert (=> b!825283 (= e!459379 tp_is_empty!14975)))

(declare-fun b!825284 () Bool)

(declare-fun res!562710 () Bool)

(assert (=> b!825284 (=> (not res!562710) (not e!459381))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46094 (_ BitVec 32)) Bool)

(assert (=> b!825284 (= res!562710 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!825285 () Bool)

(assert (=> b!825285 (= e!459381 (not e!459378))))

(declare-fun res!562711 () Bool)

(assert (=> b!825285 (=> res!562711 e!459378)))

(assert (=> b!825285 (= res!562711 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!825285 (= lt!372622 lt!372619)))

(declare-fun lt!372617 () Unit!28283)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!553 (array!46094 array!46096 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24967 V!24967 V!24967 V!24967 (_ BitVec 32) Int) Unit!28283)

(assert (=> b!825285 (= lt!372617 (lemmaNoChangeToArrayThenSameMapNoExtras!553 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2437 (array!46094 array!46096 (_ BitVec 32) (_ BitVec 32) V!24967 V!24967 (_ BitVec 32) Int) ListLongMap!8811)

(assert (=> b!825285 (= lt!372619 (getCurrentListMapNoExtraKeys!2437 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825285 (= lt!372622 (getCurrentListMapNoExtraKeys!2437 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825286 () Bool)

(declare-fun res!562713 () Bool)

(assert (=> b!825286 (=> (not res!562713) (not e!459381))))

(assert (=> b!825286 (= res!562713 (and (= (size!22511 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22510 _keys!976) (size!22511 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!825287 () Bool)

(assert (=> b!825287 (= e!459382 (= lt!372625 (+!1883 (+!1883 lt!372619 (tuple2!9975 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!372621)))))

(declare-fun b!825288 () Bool)

(assert (=> b!825288 (= e!459380 (and e!459376 mapRes!24085))))

(declare-fun condMapEmpty!24085 () Bool)

(declare-fun mapDefault!24085 () ValueCell!7072)

