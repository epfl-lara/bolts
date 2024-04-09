; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70982 () Bool)

(assert start!70982)

(declare-fun b_free!13175 () Bool)

(declare-fun b_next!13175 () Bool)

(assert (=> start!70982 (= b_free!13175 (not b_next!13175))))

(declare-fun tp!46276 () Bool)

(declare-fun b_and!22089 () Bool)

(assert (=> start!70982 (= tp!46276 b_and!22089)))

(declare-fun b!823915 () Bool)

(declare-fun e!458370 () Bool)

(declare-fun tp_is_empty!14885 () Bool)

(assert (=> b!823915 (= e!458370 tp_is_empty!14885)))

(declare-fun mapNonEmpty!23944 () Bool)

(declare-fun mapRes!23944 () Bool)

(declare-fun tp!46275 () Bool)

(declare-fun e!458366 () Bool)

(assert (=> mapNonEmpty!23944 (= mapRes!23944 (and tp!46275 e!458366))))

(declare-datatypes ((V!24847 0))(
  ( (V!24848 (val!7490 Int)) )
))
(declare-datatypes ((ValueCell!7027 0))(
  ( (ValueCellFull!7027 (v!9919 V!24847)) (EmptyCell!7027) )
))
(declare-datatypes ((array!45916 0))(
  ( (array!45917 (arr!22002 (Array (_ BitVec 32) ValueCell!7027)) (size!22423 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45916)

(declare-fun mapRest!23944 () (Array (_ BitVec 32) ValueCell!7027))

(declare-fun mapValue!23944 () ValueCell!7027)

(declare-fun mapKey!23944 () (_ BitVec 32))

(assert (=> mapNonEmpty!23944 (= (arr!22002 _values!788) (store mapRest!23944 mapKey!23944 mapValue!23944))))

(declare-fun b!823917 () Bool)

(declare-fun res!561894 () Bool)

(declare-fun e!458368 () Bool)

(assert (=> b!823917 (=> (not res!561894) (not e!458368))))

(declare-datatypes ((array!45918 0))(
  ( (array!45919 (arr!22003 (Array (_ BitVec 32) (_ BitVec 64))) (size!22424 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45918)

(declare-datatypes ((List!15756 0))(
  ( (Nil!15753) (Cons!15752 (h!16881 (_ BitVec 64)) (t!22105 List!15756)) )
))
(declare-fun arrayNoDuplicates!0 (array!45918 (_ BitVec 32) List!15756) Bool)

(assert (=> b!823917 (= res!561894 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15753))))

(declare-fun b!823918 () Bool)

(assert (=> b!823918 (= e!458368 (not true))))

(declare-datatypes ((tuple2!9898 0))(
  ( (tuple2!9899 (_1!4959 (_ BitVec 64)) (_2!4959 V!24847)) )
))
(declare-datatypes ((List!15757 0))(
  ( (Nil!15754) (Cons!15753 (h!16882 tuple2!9898) (t!22106 List!15757)) )
))
(declare-datatypes ((ListLongMap!8735 0))(
  ( (ListLongMap!8736 (toList!4383 List!15757)) )
))
(declare-fun lt!371601 () ListLongMap!8735)

(declare-fun lt!371599 () ListLongMap!8735)

(assert (=> b!823918 (= lt!371601 lt!371599)))

(declare-datatypes ((Unit!28212 0))(
  ( (Unit!28213) )
))
(declare-fun lt!371600 () Unit!28212)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24847)

(declare-fun minValue!754 () V!24847)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueBefore!34 () V!24847)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!521 (array!45918 array!45916 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24847 V!24847 V!24847 V!24847 (_ BitVec 32) Int) Unit!28212)

(assert (=> b!823918 (= lt!371600 (lemmaNoChangeToArrayThenSameMapNoExtras!521 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2405 (array!45918 array!45916 (_ BitVec 32) (_ BitVec 32) V!24847 V!24847 (_ BitVec 32) Int) ListLongMap!8735)

(assert (=> b!823918 (= lt!371599 (getCurrentListMapNoExtraKeys!2405 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823918 (= lt!371601 (getCurrentListMapNoExtraKeys!2405 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!823919 () Bool)

(assert (=> b!823919 (= e!458366 tp_is_empty!14885)))

(declare-fun mapIsEmpty!23944 () Bool)

(assert (=> mapIsEmpty!23944 mapRes!23944))

(declare-fun b!823916 () Bool)

(declare-fun e!458369 () Bool)

(assert (=> b!823916 (= e!458369 (and e!458370 mapRes!23944))))

(declare-fun condMapEmpty!23944 () Bool)

(declare-fun mapDefault!23944 () ValueCell!7027)

