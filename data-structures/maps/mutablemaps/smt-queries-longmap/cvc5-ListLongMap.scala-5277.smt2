; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70836 () Bool)

(assert start!70836)

(declare-fun b_free!13069 () Bool)

(declare-fun b_next!13069 () Bool)

(assert (=> start!70836 (= b_free!13069 (not b_next!13069))))

(declare-fun tp!45951 () Bool)

(declare-fun b_and!21959 () Bool)

(assert (=> start!70836 (= tp!45951 b_and!21959)))

(declare-fun b!822343 () Bool)

(declare-fun e!457250 () Bool)

(declare-fun e!457252 () Bool)

(assert (=> b!822343 (= e!457250 (not e!457252))))

(declare-fun res!561003 () Bool)

(assert (=> b!822343 (=> res!561003 e!457252)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!822343 (= res!561003 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!24707 0))(
  ( (V!24708 (val!7437 Int)) )
))
(declare-datatypes ((tuple2!9816 0))(
  ( (tuple2!9817 (_1!4918 (_ BitVec 64)) (_2!4918 V!24707)) )
))
(declare-datatypes ((List!15676 0))(
  ( (Nil!15673) (Cons!15672 (h!16801 tuple2!9816) (t!22021 List!15676)) )
))
(declare-datatypes ((ListLongMap!8653 0))(
  ( (ListLongMap!8654 (toList!4342 List!15676)) )
))
(declare-fun lt!370137 () ListLongMap!8653)

(declare-fun lt!370135 () ListLongMap!8653)

(assert (=> b!822343 (= lt!370137 lt!370135)))

(declare-fun zeroValueBefore!34 () V!24707)

(declare-fun zeroValueAfter!34 () V!24707)

(declare-fun minValue!754 () V!24707)

(declare-datatypes ((ValueCell!6974 0))(
  ( (ValueCellFull!6974 (v!9864 V!24707)) (EmptyCell!6974) )
))
(declare-datatypes ((array!45710 0))(
  ( (array!45711 (arr!21901 (Array (_ BitVec 32) ValueCell!6974)) (size!22322 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45710)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((array!45712 0))(
  ( (array!45713 (arr!21902 (Array (_ BitVec 32) (_ BitVec 64))) (size!22323 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45712)

(declare-datatypes ((Unit!28126 0))(
  ( (Unit!28127) )
))
(declare-fun lt!370134 () Unit!28126)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!484 (array!45712 array!45710 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24707 V!24707 V!24707 V!24707 (_ BitVec 32) Int) Unit!28126)

(assert (=> b!822343 (= lt!370134 (lemmaNoChangeToArrayThenSameMapNoExtras!484 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2368 (array!45712 array!45710 (_ BitVec 32) (_ BitVec 32) V!24707 V!24707 (_ BitVec 32) Int) ListLongMap!8653)

(assert (=> b!822343 (= lt!370135 (getCurrentListMapNoExtraKeys!2368 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822343 (= lt!370137 (getCurrentListMapNoExtraKeys!2368 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822344 () Bool)

(declare-fun res!561004 () Bool)

(assert (=> b!822344 (=> (not res!561004) (not e!457250))))

(declare-datatypes ((List!15677 0))(
  ( (Nil!15674) (Cons!15673 (h!16802 (_ BitVec 64)) (t!22022 List!15677)) )
))
(declare-fun arrayNoDuplicates!0 (array!45712 (_ BitVec 32) List!15677) Bool)

(assert (=> b!822344 (= res!561004 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15674))))

(declare-fun mapNonEmpty!23779 () Bool)

(declare-fun mapRes!23779 () Bool)

(declare-fun tp!45952 () Bool)

(declare-fun e!457248 () Bool)

(assert (=> mapNonEmpty!23779 (= mapRes!23779 (and tp!45952 e!457248))))

(declare-fun mapValue!23779 () ValueCell!6974)

(declare-fun mapKey!23779 () (_ BitVec 32))

(declare-fun mapRest!23779 () (Array (_ BitVec 32) ValueCell!6974))

(assert (=> mapNonEmpty!23779 (= (arr!21901 _values!788) (store mapRest!23779 mapKey!23779 mapValue!23779))))

(declare-fun b!822345 () Bool)

(declare-fun e!457249 () Bool)

(declare-fun tp_is_empty!14779 () Bool)

(assert (=> b!822345 (= e!457249 tp_is_empty!14779)))

(declare-fun b!822346 () Bool)

(declare-fun res!561002 () Bool)

(assert (=> b!822346 (=> (not res!561002) (not e!457250))))

(assert (=> b!822346 (= res!561002 (and (= (size!22322 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22323 _keys!976) (size!22322 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!822347 () Bool)

(declare-fun res!561001 () Bool)

(assert (=> b!822347 (=> (not res!561001) (not e!457250))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45712 (_ BitVec 32)) Bool)

(assert (=> b!822347 (= res!561001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!561005 () Bool)

(assert (=> start!70836 (=> (not res!561005) (not e!457250))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70836 (= res!561005 (validMask!0 mask!1312))))

(assert (=> start!70836 e!457250))

(assert (=> start!70836 tp_is_empty!14779))

(declare-fun array_inv!17459 (array!45712) Bool)

(assert (=> start!70836 (array_inv!17459 _keys!976)))

(assert (=> start!70836 true))

(declare-fun e!457251 () Bool)

(declare-fun array_inv!17460 (array!45710) Bool)

(assert (=> start!70836 (and (array_inv!17460 _values!788) e!457251)))

(assert (=> start!70836 tp!45951))

(declare-fun b!822348 () Bool)

(assert (=> b!822348 (= e!457252 true)))

(declare-fun lt!370141 () ListLongMap!8653)

(declare-fun lt!370133 () ListLongMap!8653)

(declare-fun lt!370140 () tuple2!9816)

(declare-fun +!1845 (ListLongMap!8653 tuple2!9816) ListLongMap!8653)

(assert (=> b!822348 (= lt!370141 (+!1845 lt!370133 lt!370140))))

(declare-fun lt!370136 () Unit!28126)

(declare-fun addCommutativeForDiffKeys!440 (ListLongMap!8653 (_ BitVec 64) V!24707 (_ BitVec 64) V!24707) Unit!28126)

(assert (=> b!822348 (= lt!370136 (addCommutativeForDiffKeys!440 lt!370137 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!370139 () ListLongMap!8653)

(assert (=> b!822348 (= lt!370139 lt!370141)))

(declare-fun lt!370138 () tuple2!9816)

(assert (=> b!822348 (= lt!370141 (+!1845 (+!1845 lt!370137 lt!370140) lt!370138))))

(assert (=> b!822348 (= lt!370140 (tuple2!9817 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!370142 () ListLongMap!8653)

(assert (=> b!822348 (= lt!370142 lt!370133)))

(assert (=> b!822348 (= lt!370133 (+!1845 lt!370137 lt!370138))))

(assert (=> b!822348 (= lt!370138 (tuple2!9817 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun getCurrentListMap!2475 (array!45712 array!45710 (_ BitVec 32) (_ BitVec 32) V!24707 V!24707 (_ BitVec 32) Int) ListLongMap!8653)

(assert (=> b!822348 (= lt!370139 (getCurrentListMap!2475 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822348 (= lt!370142 (getCurrentListMap!2475 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23779 () Bool)

(assert (=> mapIsEmpty!23779 mapRes!23779))

(declare-fun b!822349 () Bool)

(assert (=> b!822349 (= e!457248 tp_is_empty!14779)))

(declare-fun b!822350 () Bool)

(assert (=> b!822350 (= e!457251 (and e!457249 mapRes!23779))))

(declare-fun condMapEmpty!23779 () Bool)

(declare-fun mapDefault!23779 () ValueCell!6974)

