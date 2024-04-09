; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71698 () Bool)

(assert start!71698)

(declare-fun b_free!13507 () Bool)

(declare-fun b_next!13507 () Bool)

(assert (=> start!71698 (= b_free!13507 (not b_next!13507))))

(declare-fun tp!47317 () Bool)

(declare-fun b_and!22611 () Bool)

(assert (=> start!71698 (= tp!47317 b_and!22611)))

(declare-fun b!833336 () Bool)

(declare-fun res!566764 () Bool)

(declare-fun e!464873 () Bool)

(assert (=> b!833336 (=> (not res!566764) (not e!464873))))

(declare-datatypes ((array!46582 0))(
  ( (array!46583 (arr!22321 (Array (_ BitVec 32) (_ BitVec 64))) (size!22742 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46582)

(declare-datatypes ((List!16012 0))(
  ( (Nil!16009) (Cons!16008 (h!17139 (_ BitVec 64)) (t!22391 List!16012)) )
))
(declare-fun arrayNoDuplicates!0 (array!46582 (_ BitVec 32) List!16012) Bool)

(assert (=> b!833336 (= res!566764 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!16009))))

(declare-fun res!566763 () Bool)

(assert (=> start!71698 (=> (not res!566763) (not e!464873))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71698 (= res!566763 (validMask!0 mask!1312))))

(assert (=> start!71698 e!464873))

(declare-fun tp_is_empty!15217 () Bool)

(assert (=> start!71698 tp_is_empty!15217))

(declare-fun array_inv!17751 (array!46582) Bool)

(assert (=> start!71698 (array_inv!17751 _keys!976)))

(assert (=> start!71698 true))

(declare-datatypes ((V!25291 0))(
  ( (V!25292 (val!7656 Int)) )
))
(declare-datatypes ((ValueCell!7193 0))(
  ( (ValueCellFull!7193 (v!10100 V!25291)) (EmptyCell!7193) )
))
(declare-datatypes ((array!46584 0))(
  ( (array!46585 (arr!22322 (Array (_ BitVec 32) ValueCell!7193)) (size!22743 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46584)

(declare-fun e!464876 () Bool)

(declare-fun array_inv!17752 (array!46584) Bool)

(assert (=> start!71698 (and (array_inv!17752 _values!788) e!464876)))

(assert (=> start!71698 tp!47317))

(declare-fun mapIsEmpty!24488 () Bool)

(declare-fun mapRes!24488 () Bool)

(assert (=> mapIsEmpty!24488 mapRes!24488))

(declare-fun b!833337 () Bool)

(declare-fun res!566765 () Bool)

(assert (=> b!833337 (=> (not res!566765) (not e!464873))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!833337 (= res!566765 (and (= (size!22743 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22742 _keys!976) (size!22743 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!833338 () Bool)

(declare-fun res!566767 () Bool)

(assert (=> b!833338 (=> (not res!566767) (not e!464873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46582 (_ BitVec 32)) Bool)

(assert (=> b!833338 (= res!566767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!833339 () Bool)

(declare-fun e!464877 () Bool)

(assert (=> b!833339 (= e!464877 tp_is_empty!15217)))

(declare-fun mapNonEmpty!24488 () Bool)

(declare-fun tp!47318 () Bool)

(assert (=> mapNonEmpty!24488 (= mapRes!24488 (and tp!47318 e!464877))))

(declare-fun mapValue!24488 () ValueCell!7193)

(declare-fun mapKey!24488 () (_ BitVec 32))

(declare-fun mapRest!24488 () (Array (_ BitVec 32) ValueCell!7193))

(assert (=> mapNonEmpty!24488 (= (arr!22322 _values!788) (store mapRest!24488 mapKey!24488 mapValue!24488))))

(declare-fun b!833340 () Bool)

(declare-fun e!464878 () Bool)

(assert (=> b!833340 (= e!464873 (not e!464878))))

(declare-fun res!566766 () Bool)

(assert (=> b!833340 (=> res!566766 e!464878)))

(assert (=> b!833340 (= res!566766 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!10184 0))(
  ( (tuple2!10185 (_1!5102 (_ BitVec 64)) (_2!5102 V!25291)) )
))
(declare-datatypes ((List!16013 0))(
  ( (Nil!16010) (Cons!16009 (h!17140 tuple2!10184) (t!22392 List!16013)) )
))
(declare-datatypes ((ListLongMap!9021 0))(
  ( (ListLongMap!9022 (toList!4526 List!16013)) )
))
(declare-fun lt!378145 () ListLongMap!9021)

(declare-fun lt!378137 () ListLongMap!9021)

(assert (=> b!833340 (= lt!378145 lt!378137)))

(declare-fun zeroValueBefore!34 () V!25291)

(declare-fun zeroValueAfter!34 () V!25291)

(declare-fun minValue!754 () V!25291)

(declare-datatypes ((Unit!28561 0))(
  ( (Unit!28562) )
))
(declare-fun lt!378143 () Unit!28561)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!615 (array!46582 array!46584 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25291 V!25291 V!25291 V!25291 (_ BitVec 32) Int) Unit!28561)

(assert (=> b!833340 (= lt!378143 (lemmaNoChangeToArrayThenSameMapNoExtras!615 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2525 (array!46582 array!46584 (_ BitVec 32) (_ BitVec 32) V!25291 V!25291 (_ BitVec 32) Int) ListLongMap!9021)

(assert (=> b!833340 (= lt!378137 (getCurrentListMapNoExtraKeys!2525 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!833340 (= lt!378145 (getCurrentListMapNoExtraKeys!2525 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!833341 () Bool)

(declare-fun e!464875 () Bool)

(assert (=> b!833341 (= e!464875 tp_is_empty!15217)))

(declare-fun lt!378139 () ListLongMap!9021)

(declare-fun lt!378135 () tuple2!10184)

(declare-fun lt!378138 () tuple2!10184)

(declare-fun b!833342 () Bool)

(declare-fun e!464874 () Bool)

(declare-fun +!1954 (ListLongMap!9021 tuple2!10184) ListLongMap!9021)

(assert (=> b!833342 (= e!464874 (= lt!378139 (+!1954 (+!1954 lt!378137 lt!378138) lt!378135)))))

(declare-fun b!833343 () Bool)

(declare-fun lt!378146 () ListLongMap!9021)

(assert (=> b!833343 (= e!464878 (= lt!378139 lt!378146))))

(declare-fun lt!378142 () ListLongMap!9021)

(assert (=> b!833343 (= lt!378142 lt!378146)))

(declare-fun lt!378141 () ListLongMap!9021)

(assert (=> b!833343 (= lt!378146 (+!1954 lt!378141 lt!378135))))

(declare-fun lt!378147 () ListLongMap!9021)

(assert (=> b!833343 (= lt!378142 (+!1954 lt!378147 lt!378135))))

(declare-fun lt!378140 () Unit!28561)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!248 (ListLongMap!9021 (_ BitVec 64) V!25291 V!25291) Unit!28561)

(assert (=> b!833343 (= lt!378140 (addSameAsAddTwiceSameKeyDiffValues!248 lt!378147 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!833343 e!464874))

(declare-fun res!566762 () Bool)

(assert (=> b!833343 (=> (not res!566762) (not e!464874))))

(declare-fun lt!378136 () ListLongMap!9021)

(assert (=> b!833343 (= res!566762 (= lt!378136 lt!378141))))

(declare-fun lt!378144 () tuple2!10184)

(assert (=> b!833343 (= lt!378141 (+!1954 lt!378147 lt!378144))))

(assert (=> b!833343 (= lt!378147 (+!1954 lt!378145 lt!378138))))

(assert (=> b!833343 (= lt!378135 (tuple2!10185 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!464879 () Bool)

(assert (=> b!833343 e!464879))

(declare-fun res!566761 () Bool)

(assert (=> b!833343 (=> (not res!566761) (not e!464879))))

(assert (=> b!833343 (= res!566761 (= lt!378136 (+!1954 (+!1954 lt!378145 lt!378144) lt!378138)))))

(assert (=> b!833343 (= lt!378138 (tuple2!10185 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!833343 (= lt!378144 (tuple2!10185 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2595 (array!46582 array!46584 (_ BitVec 32) (_ BitVec 32) V!25291 V!25291 (_ BitVec 32) Int) ListLongMap!9021)

(assert (=> b!833343 (= lt!378139 (getCurrentListMap!2595 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!833343 (= lt!378136 (getCurrentListMap!2595 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!833344 () Bool)

(assert (=> b!833344 (= e!464879 (= lt!378139 (+!1954 (+!1954 lt!378137 (tuple2!10185 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!378138)))))

(declare-fun b!833345 () Bool)

(assert (=> b!833345 (= e!464876 (and e!464875 mapRes!24488))))

(declare-fun condMapEmpty!24488 () Bool)

(declare-fun mapDefault!24488 () ValueCell!7193)

