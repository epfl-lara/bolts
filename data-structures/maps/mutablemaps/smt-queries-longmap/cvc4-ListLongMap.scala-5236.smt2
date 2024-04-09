; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70524 () Bool)

(assert start!70524)

(declare-fun b_free!12827 () Bool)

(declare-fun b_next!12827 () Bool)

(assert (=> start!70524 (= b_free!12827 (not b_next!12827))))

(declare-fun tp!45214 () Bool)

(declare-fun b_and!21675 () Bool)

(assert (=> start!70524 (= tp!45214 b_and!21675)))

(declare-fun b!818763 () Bool)

(declare-fun res!558859 () Bool)

(declare-fun e!454623 () Bool)

(assert (=> b!818763 (=> (not res!558859) (not e!454623))))

(declare-datatypes ((array!45246 0))(
  ( (array!45247 (arr!21673 (Array (_ BitVec 32) (_ BitVec 64))) (size!22094 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45246)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24383 0))(
  ( (V!24384 (val!7316 Int)) )
))
(declare-datatypes ((ValueCell!6853 0))(
  ( (ValueCellFull!6853 (v!9741 V!24383)) (EmptyCell!6853) )
))
(declare-datatypes ((array!45248 0))(
  ( (array!45249 (arr!21674 (Array (_ BitVec 32) ValueCell!6853)) (size!22095 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45248)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!818763 (= res!558859 (and (= (size!22095 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22094 _keys!976) (size!22095 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!558863 () Bool)

(assert (=> start!70524 (=> (not res!558863) (not e!454623))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70524 (= res!558863 (validMask!0 mask!1312))))

(assert (=> start!70524 e!454623))

(declare-fun tp_is_empty!14537 () Bool)

(assert (=> start!70524 tp_is_empty!14537))

(declare-fun array_inv!17297 (array!45246) Bool)

(assert (=> start!70524 (array_inv!17297 _keys!976)))

(assert (=> start!70524 true))

(declare-fun e!454621 () Bool)

(declare-fun array_inv!17298 (array!45248) Bool)

(assert (=> start!70524 (and (array_inv!17298 _values!788) e!454621)))

(assert (=> start!70524 tp!45214))

(declare-fun b!818764 () Bool)

(declare-fun e!454619 () Bool)

(assert (=> b!818764 (= e!454619 tp_is_empty!14537)))

(declare-fun b!818765 () Bool)

(declare-fun res!558861 () Bool)

(assert (=> b!818765 (=> (not res!558861) (not e!454623))))

(declare-datatypes ((List!15496 0))(
  ( (Nil!15493) (Cons!15492 (h!16621 (_ BitVec 64)) (t!21833 List!15496)) )
))
(declare-fun arrayNoDuplicates!0 (array!45246 (_ BitVec 32) List!15496) Bool)

(assert (=> b!818765 (= res!558861 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15493))))

(declare-fun zeroValueAfter!34 () V!24383)

(declare-fun b!818766 () Bool)

(declare-datatypes ((tuple2!9634 0))(
  ( (tuple2!9635 (_1!4827 (_ BitVec 64)) (_2!4827 V!24383)) )
))
(declare-datatypes ((List!15497 0))(
  ( (Nil!15494) (Cons!15493 (h!16622 tuple2!9634) (t!21834 List!15497)) )
))
(declare-datatypes ((ListLongMap!8471 0))(
  ( (ListLongMap!8472 (toList!4251 List!15497)) )
))
(declare-fun lt!367145 () ListLongMap!8471)

(declare-fun e!454624 () Bool)

(declare-fun lt!367144 () ListLongMap!8471)

(declare-fun +!1795 (ListLongMap!8471 tuple2!9634) ListLongMap!8471)

(assert (=> b!818766 (= e!454624 (= lt!367144 (+!1795 lt!367145 (tuple2!9635 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun mapIsEmpty!23404 () Bool)

(declare-fun mapRes!23404 () Bool)

(assert (=> mapIsEmpty!23404 mapRes!23404))

(declare-fun b!818767 () Bool)

(declare-fun e!454618 () Bool)

(assert (=> b!818767 (= e!454623 (not e!454618))))

(declare-fun res!558860 () Bool)

(assert (=> b!818767 (=> res!558860 e!454618)))

(assert (=> b!818767 (= res!558860 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!367140 () ListLongMap!8471)

(assert (=> b!818767 (= lt!367140 lt!367145)))

(declare-fun zeroValueBefore!34 () V!24383)

(declare-fun minValue!754 () V!24383)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27951 0))(
  ( (Unit!27952) )
))
(declare-fun lt!367146 () Unit!27951)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!408 (array!45246 array!45248 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24383 V!24383 V!24383 V!24383 (_ BitVec 32) Int) Unit!27951)

(assert (=> b!818767 (= lt!367146 (lemmaNoChangeToArrayThenSameMapNoExtras!408 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2292 (array!45246 array!45248 (_ BitVec 32) (_ BitVec 32) V!24383 V!24383 (_ BitVec 32) Int) ListLongMap!8471)

(assert (=> b!818767 (= lt!367145 (getCurrentListMapNoExtraKeys!2292 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818767 (= lt!367140 (getCurrentListMapNoExtraKeys!2292 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818768 () Bool)

(declare-fun e!454620 () Bool)

(assert (=> b!818768 (= e!454620 tp_is_empty!14537)))

(declare-fun b!818769 () Bool)

(assert (=> b!818769 (= e!454618 true)))

(declare-fun lt!367139 () ListLongMap!8471)

(declare-fun lt!367143 () tuple2!9634)

(declare-fun lt!367147 () tuple2!9634)

(assert (=> b!818769 (= lt!367139 (+!1795 (+!1795 lt!367145 lt!367147) lt!367143))))

(declare-fun lt!367138 () ListLongMap!8471)

(assert (=> b!818769 (= (+!1795 lt!367140 lt!367143) (+!1795 lt!367138 lt!367143))))

(declare-fun lt!367142 () Unit!27951)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!174 (ListLongMap!8471 (_ BitVec 64) V!24383 V!24383) Unit!27951)

(assert (=> b!818769 (= lt!367142 (addSameAsAddTwiceSameKeyDiffValues!174 lt!367140 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!818769 (= lt!367143 (tuple2!9635 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!818769 e!454624))

(declare-fun res!558858 () Bool)

(assert (=> b!818769 (=> (not res!558858) (not e!454624))))

(declare-fun lt!367141 () ListLongMap!8471)

(assert (=> b!818769 (= res!558858 (= lt!367141 lt!367138))))

(assert (=> b!818769 (= lt!367138 (+!1795 lt!367140 lt!367147))))

(assert (=> b!818769 (= lt!367147 (tuple2!9635 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2409 (array!45246 array!45248 (_ BitVec 32) (_ BitVec 32) V!24383 V!24383 (_ BitVec 32) Int) ListLongMap!8471)

(assert (=> b!818769 (= lt!367144 (getCurrentListMap!2409 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818769 (= lt!367141 (getCurrentListMap!2409 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818770 () Bool)

(assert (=> b!818770 (= e!454621 (and e!454620 mapRes!23404))))

(declare-fun condMapEmpty!23404 () Bool)

(declare-fun mapDefault!23404 () ValueCell!6853)

