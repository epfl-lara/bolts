; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70872 () Bool)

(assert start!70872)

(declare-fun b_free!13085 () Bool)

(declare-fun b_next!13085 () Bool)

(assert (=> start!70872 (= b_free!13085 (not b_next!13085))))

(declare-fun tp!46003 () Bool)

(declare-fun b_and!21987 () Bool)

(assert (=> start!70872 (= tp!46003 b_and!21987)))

(declare-fun b!822716 () Bool)

(declare-fun res!561200 () Bool)

(declare-fun e!457506 () Bool)

(assert (=> b!822716 (=> (not res!561200) (not e!457506))))

(declare-datatypes ((array!45744 0))(
  ( (array!45745 (arr!21917 (Array (_ BitVec 32) (_ BitVec 64))) (size!22338 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45744)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24727 0))(
  ( (V!24728 (val!7445 Int)) )
))
(declare-datatypes ((ValueCell!6982 0))(
  ( (ValueCellFull!6982 (v!9873 V!24727)) (EmptyCell!6982) )
))
(declare-datatypes ((array!45746 0))(
  ( (array!45747 (arr!21918 (Array (_ BitVec 32) ValueCell!6982)) (size!22339 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45746)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!822716 (= res!561200 (and (= (size!22339 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22338 _keys!976) (size!22339 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!822717 () Bool)

(declare-fun e!457505 () Bool)

(declare-fun tp_is_empty!14795 () Bool)

(assert (=> b!822717 (= e!457505 tp_is_empty!14795)))

(declare-fun b!822718 () Bool)

(declare-fun e!457509 () Bool)

(assert (=> b!822718 (= e!457506 (not e!457509))))

(declare-fun res!561203 () Bool)

(assert (=> b!822718 (=> res!561203 e!457509)))

(assert (=> b!822718 (= res!561203 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9830 0))(
  ( (tuple2!9831 (_1!4925 (_ BitVec 64)) (_2!4925 V!24727)) )
))
(declare-datatypes ((List!15690 0))(
  ( (Nil!15687) (Cons!15686 (h!16815 tuple2!9830) (t!22037 List!15690)) )
))
(declare-datatypes ((ListLongMap!8667 0))(
  ( (ListLongMap!8668 (toList!4349 List!15690)) )
))
(declare-fun lt!370534 () ListLongMap!8667)

(declare-fun lt!370532 () ListLongMap!8667)

(assert (=> b!822718 (= lt!370534 lt!370532)))

(declare-datatypes ((Unit!28142 0))(
  ( (Unit!28143) )
))
(declare-fun lt!370533 () Unit!28142)

(declare-fun zeroValueBefore!34 () V!24727)

(declare-fun zeroValueAfter!34 () V!24727)

(declare-fun minValue!754 () V!24727)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!491 (array!45744 array!45746 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24727 V!24727 V!24727 V!24727 (_ BitVec 32) Int) Unit!28142)

(assert (=> b!822718 (= lt!370533 (lemmaNoChangeToArrayThenSameMapNoExtras!491 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2375 (array!45744 array!45746 (_ BitVec 32) (_ BitVec 32) V!24727 V!24727 (_ BitVec 32) Int) ListLongMap!8667)

(assert (=> b!822718 (= lt!370532 (getCurrentListMapNoExtraKeys!2375 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822718 (= lt!370534 (getCurrentListMapNoExtraKeys!2375 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822719 () Bool)

(declare-fun res!561201 () Bool)

(assert (=> b!822719 (=> (not res!561201) (not e!457506))))

(declare-datatypes ((List!15691 0))(
  ( (Nil!15688) (Cons!15687 (h!16816 (_ BitVec 64)) (t!22038 List!15691)) )
))
(declare-fun arrayNoDuplicates!0 (array!45744 (_ BitVec 32) List!15691) Bool)

(assert (=> b!822719 (= res!561201 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15688))))

(declare-fun b!822721 () Bool)

(declare-fun e!457507 () Bool)

(declare-fun mapRes!23806 () Bool)

(assert (=> b!822721 (= e!457507 (and e!457505 mapRes!23806))))

(declare-fun condMapEmpty!23806 () Bool)

(declare-fun mapDefault!23806 () ValueCell!6982)

