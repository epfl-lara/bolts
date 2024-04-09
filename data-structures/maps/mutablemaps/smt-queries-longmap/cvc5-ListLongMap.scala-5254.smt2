; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70668 () Bool)

(assert start!70668)

(declare-fun b_free!12931 () Bool)

(declare-fun b_next!12931 () Bool)

(assert (=> start!70668 (= b_free!12931 (not b_next!12931))))

(declare-fun tp!45532 () Bool)

(declare-fun b_and!21803 () Bool)

(assert (=> start!70668 (= tp!45532 b_and!21803)))

(declare-fun mapIsEmpty!23566 () Bool)

(declare-fun mapRes!23566 () Bool)

(assert (=> mapIsEmpty!23566 mapRes!23566))

(declare-fun b!820497 () Bool)

(declare-fun e!455904 () Bool)

(declare-fun tp_is_empty!14641 () Bool)

(assert (=> b!820497 (= e!455904 tp_is_empty!14641)))

(declare-fun b!820498 () Bool)

(declare-fun res!559921 () Bool)

(declare-fun e!455900 () Bool)

(assert (=> b!820498 (=> (not res!559921) (not e!455900))))

(declare-datatypes ((array!45444 0))(
  ( (array!45445 (arr!21770 (Array (_ BitVec 32) (_ BitVec 64))) (size!22191 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45444)

(declare-datatypes ((V!24523 0))(
  ( (V!24524 (val!7368 Int)) )
))
(declare-datatypes ((ValueCell!6905 0))(
  ( (ValueCellFull!6905 (v!9795 V!24523)) (EmptyCell!6905) )
))
(declare-datatypes ((array!45446 0))(
  ( (array!45447 (arr!21771 (Array (_ BitVec 32) ValueCell!6905)) (size!22192 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45446)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!820498 (= res!559921 (and (= (size!22192 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22191 _keys!976) (size!22192 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!820499 () Bool)

(declare-fun res!559923 () Bool)

(assert (=> b!820499 (=> (not res!559923) (not e!455900))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45444 (_ BitVec 32)) Bool)

(assert (=> b!820499 (= res!559923 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!820500 () Bool)

(assert (=> b!820500 (= e!455900 (not true))))

(declare-datatypes ((tuple2!9712 0))(
  ( (tuple2!9713 (_1!4866 (_ BitVec 64)) (_2!4866 V!24523)) )
))
(declare-datatypes ((List!15572 0))(
  ( (Nil!15569) (Cons!15568 (h!16697 tuple2!9712) (t!21913 List!15572)) )
))
(declare-datatypes ((ListLongMap!8549 0))(
  ( (ListLongMap!8550 (toList!4290 List!15572)) )
))
(declare-fun lt!368805 () ListLongMap!8549)

(declare-fun lt!368803 () ListLongMap!8549)

(assert (=> b!820500 (= lt!368805 lt!368803)))

(declare-fun zeroValueBefore!34 () V!24523)

(declare-datatypes ((Unit!28033 0))(
  ( (Unit!28034) )
))
(declare-fun lt!368804 () Unit!28033)

(declare-fun zeroValueAfter!34 () V!24523)

(declare-fun minValue!754 () V!24523)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!440 (array!45444 array!45446 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24523 V!24523 V!24523 V!24523 (_ BitVec 32) Int) Unit!28033)

(assert (=> b!820500 (= lt!368804 (lemmaNoChangeToArrayThenSameMapNoExtras!440 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2324 (array!45444 array!45446 (_ BitVec 32) (_ BitVec 32) V!24523 V!24523 (_ BitVec 32) Int) ListLongMap!8549)

(assert (=> b!820500 (= lt!368803 (getCurrentListMapNoExtraKeys!2324 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!820500 (= lt!368805 (getCurrentListMapNoExtraKeys!2324 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!559922 () Bool)

(assert (=> start!70668 (=> (not res!559922) (not e!455900))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70668 (= res!559922 (validMask!0 mask!1312))))

(assert (=> start!70668 e!455900))

(assert (=> start!70668 tp_is_empty!14641))

(declare-fun array_inv!17367 (array!45444) Bool)

(assert (=> start!70668 (array_inv!17367 _keys!976)))

(assert (=> start!70668 true))

(declare-fun e!455901 () Bool)

(declare-fun array_inv!17368 (array!45446) Bool)

(assert (=> start!70668 (and (array_inv!17368 _values!788) e!455901)))

(assert (=> start!70668 tp!45532))

(declare-fun mapNonEmpty!23566 () Bool)

(declare-fun tp!45531 () Bool)

(assert (=> mapNonEmpty!23566 (= mapRes!23566 (and tp!45531 e!455904))))

(declare-fun mapValue!23566 () ValueCell!6905)

(declare-fun mapRest!23566 () (Array (_ BitVec 32) ValueCell!6905))

(declare-fun mapKey!23566 () (_ BitVec 32))

(assert (=> mapNonEmpty!23566 (= (arr!21771 _values!788) (store mapRest!23566 mapKey!23566 mapValue!23566))))

(declare-fun b!820501 () Bool)

(declare-fun res!559920 () Bool)

(assert (=> b!820501 (=> (not res!559920) (not e!455900))))

(declare-datatypes ((List!15573 0))(
  ( (Nil!15570) (Cons!15569 (h!16698 (_ BitVec 64)) (t!21914 List!15573)) )
))
(declare-fun arrayNoDuplicates!0 (array!45444 (_ BitVec 32) List!15573) Bool)

(assert (=> b!820501 (= res!559920 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15570))))

(declare-fun b!820502 () Bool)

(declare-fun e!455903 () Bool)

(assert (=> b!820502 (= e!455901 (and e!455903 mapRes!23566))))

(declare-fun condMapEmpty!23566 () Bool)

(declare-fun mapDefault!23566 () ValueCell!6905)

