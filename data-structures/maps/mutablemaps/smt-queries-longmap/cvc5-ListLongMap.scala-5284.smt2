; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70898 () Bool)

(assert start!70898)

(declare-fun b_free!13111 () Bool)

(declare-fun b_next!13111 () Bool)

(assert (=> start!70898 (= b_free!13111 (not b_next!13111))))

(declare-fun tp!46081 () Bool)

(declare-fun b_and!22013 () Bool)

(assert (=> start!70898 (= tp!46081 b_and!22013)))

(declare-fun res!561397 () Bool)

(declare-fun e!457741 () Bool)

(assert (=> start!70898 (=> (not res!561397) (not e!457741))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70898 (= res!561397 (validMask!0 mask!1312))))

(assert (=> start!70898 e!457741))

(declare-fun tp_is_empty!14821 () Bool)

(assert (=> start!70898 tp_is_empty!14821))

(declare-datatypes ((array!45796 0))(
  ( (array!45797 (arr!21943 (Array (_ BitVec 32) (_ BitVec 64))) (size!22364 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45796)

(declare-fun array_inv!17489 (array!45796) Bool)

(assert (=> start!70898 (array_inv!17489 _keys!976)))

(assert (=> start!70898 true))

(declare-datatypes ((V!24763 0))(
  ( (V!24764 (val!7458 Int)) )
))
(declare-datatypes ((ValueCell!6995 0))(
  ( (ValueCellFull!6995 (v!9886 V!24763)) (EmptyCell!6995) )
))
(declare-datatypes ((array!45798 0))(
  ( (array!45799 (arr!21944 (Array (_ BitVec 32) ValueCell!6995)) (size!22365 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45798)

(declare-fun e!457742 () Bool)

(declare-fun array_inv!17490 (array!45798) Bool)

(assert (=> start!70898 (and (array_inv!17490 _values!788) e!457742)))

(assert (=> start!70898 tp!46081))

(declare-fun b!823028 () Bool)

(declare-fun res!561395 () Bool)

(assert (=> b!823028 (=> (not res!561395) (not e!457741))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45796 (_ BitVec 32)) Bool)

(assert (=> b!823028 (= res!561395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!823029 () Bool)

(declare-fun res!561396 () Bool)

(assert (=> b!823029 (=> (not res!561396) (not e!457741))))

(declare-datatypes ((List!15712 0))(
  ( (Nil!15709) (Cons!15708 (h!16837 (_ BitVec 64)) (t!22059 List!15712)) )
))
(declare-fun arrayNoDuplicates!0 (array!45796 (_ BitVec 32) List!15712) Bool)

(assert (=> b!823029 (= res!561396 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15709))))

(declare-fun mapNonEmpty!23845 () Bool)

(declare-fun mapRes!23845 () Bool)

(declare-fun tp!46080 () Bool)

(declare-fun e!457743 () Bool)

(assert (=> mapNonEmpty!23845 (= mapRes!23845 (and tp!46080 e!457743))))

(declare-fun mapKey!23845 () (_ BitVec 32))

(declare-fun mapValue!23845 () ValueCell!6995)

(declare-fun mapRest!23845 () (Array (_ BitVec 32) ValueCell!6995))

(assert (=> mapNonEmpty!23845 (= (arr!21944 _values!788) (store mapRest!23845 mapKey!23845 mapValue!23845))))

(declare-fun b!823030 () Bool)

(declare-fun e!457739 () Bool)

(assert (=> b!823030 (= e!457739 true)))

(declare-datatypes ((tuple2!9854 0))(
  ( (tuple2!9855 (_1!4937 (_ BitVec 64)) (_2!4937 V!24763)) )
))
(declare-datatypes ((List!15713 0))(
  ( (Nil!15710) (Cons!15709 (h!16838 tuple2!9854) (t!22060 List!15713)) )
))
(declare-datatypes ((ListLongMap!8691 0))(
  ( (ListLongMap!8692 (toList!4361 List!15713)) )
))
(declare-fun lt!370924 () ListLongMap!8691)

(declare-fun lt!370927 () ListLongMap!8691)

(declare-fun lt!370925 () tuple2!9854)

(declare-fun +!1863 (ListLongMap!8691 tuple2!9854) ListLongMap!8691)

(assert (=> b!823030 (= lt!370924 (+!1863 lt!370927 lt!370925))))

(declare-datatypes ((Unit!28166 0))(
  ( (Unit!28167) )
))
(declare-fun lt!370922 () Unit!28166)

(declare-fun lt!370920 () ListLongMap!8691)

(declare-fun zeroValueAfter!34 () V!24763)

(declare-fun minValue!754 () V!24763)

(declare-fun addCommutativeForDiffKeys!458 (ListLongMap!8691 (_ BitVec 64) V!24763 (_ BitVec 64) V!24763) Unit!28166)

(assert (=> b!823030 (= lt!370922 (addCommutativeForDiffKeys!458 lt!370920 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!370923 () ListLongMap!8691)

(assert (=> b!823030 (= lt!370923 lt!370924)))

(declare-fun lt!370926 () tuple2!9854)

(assert (=> b!823030 (= lt!370924 (+!1863 (+!1863 lt!370920 lt!370925) lt!370926))))

(assert (=> b!823030 (= lt!370925 (tuple2!9855 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!370921 () ListLongMap!8691)

(assert (=> b!823030 (= lt!370921 lt!370927)))

(assert (=> b!823030 (= lt!370927 (+!1863 lt!370920 lt!370926))))

(assert (=> b!823030 (= lt!370926 (tuple2!9855 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2493 (array!45796 array!45798 (_ BitVec 32) (_ BitVec 32) V!24763 V!24763 (_ BitVec 32) Int) ListLongMap!8691)

(assert (=> b!823030 (= lt!370923 (getCurrentListMap!2493 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24763)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!823030 (= lt!370921 (getCurrentListMap!2493 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!823031 () Bool)

(declare-fun res!561399 () Bool)

(assert (=> b!823031 (=> (not res!561399) (not e!457741))))

(assert (=> b!823031 (= res!561399 (and (= (size!22365 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22364 _keys!976) (size!22365 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!823032 () Bool)

(declare-fun e!457744 () Bool)

(assert (=> b!823032 (= e!457744 tp_is_empty!14821)))

(declare-fun mapIsEmpty!23845 () Bool)

(assert (=> mapIsEmpty!23845 mapRes!23845))

(declare-fun b!823033 () Bool)

(assert (=> b!823033 (= e!457741 (not e!457739))))

(declare-fun res!561398 () Bool)

(assert (=> b!823033 (=> res!561398 e!457739)))

(assert (=> b!823033 (= res!561398 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!370918 () ListLongMap!8691)

(assert (=> b!823033 (= lt!370920 lt!370918)))

(declare-fun lt!370919 () Unit!28166)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!499 (array!45796 array!45798 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24763 V!24763 V!24763 V!24763 (_ BitVec 32) Int) Unit!28166)

(assert (=> b!823033 (= lt!370919 (lemmaNoChangeToArrayThenSameMapNoExtras!499 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2383 (array!45796 array!45798 (_ BitVec 32) (_ BitVec 32) V!24763 V!24763 (_ BitVec 32) Int) ListLongMap!8691)

(assert (=> b!823033 (= lt!370918 (getCurrentListMapNoExtraKeys!2383 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823033 (= lt!370920 (getCurrentListMapNoExtraKeys!2383 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!823034 () Bool)

(assert (=> b!823034 (= e!457742 (and e!457744 mapRes!23845))))

(declare-fun condMapEmpty!23845 () Bool)

(declare-fun mapDefault!23845 () ValueCell!6995)

