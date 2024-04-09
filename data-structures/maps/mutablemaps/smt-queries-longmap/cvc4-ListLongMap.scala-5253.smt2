; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70666 () Bool)

(assert start!70666)

(declare-fun b_free!12929 () Bool)

(declare-fun b_next!12929 () Bool)

(assert (=> start!70666 (= b_free!12929 (not b_next!12929))))

(declare-fun tp!45525 () Bool)

(declare-fun b_and!21801 () Bool)

(assert (=> start!70666 (= tp!45525 b_and!21801)))

(declare-fun b!820476 () Bool)

(declare-fun e!455886 () Bool)

(declare-fun tp_is_empty!14639 () Bool)

(assert (=> b!820476 (= e!455886 tp_is_empty!14639)))

(declare-fun b!820477 () Bool)

(declare-fun res!559909 () Bool)

(declare-fun e!455889 () Bool)

(assert (=> b!820477 (=> (not res!559909) (not e!455889))))

(declare-datatypes ((array!45440 0))(
  ( (array!45441 (arr!21768 (Array (_ BitVec 32) (_ BitVec 64))) (size!22189 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45440)

(declare-datatypes ((V!24519 0))(
  ( (V!24520 (val!7367 Int)) )
))
(declare-datatypes ((ValueCell!6904 0))(
  ( (ValueCellFull!6904 (v!9794 V!24519)) (EmptyCell!6904) )
))
(declare-datatypes ((array!45442 0))(
  ( (array!45443 (arr!21769 (Array (_ BitVec 32) ValueCell!6904)) (size!22190 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45442)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!820477 (= res!559909 (and (= (size!22190 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22189 _keys!976) (size!22190 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23563 () Bool)

(declare-fun mapRes!23563 () Bool)

(assert (=> mapIsEmpty!23563 mapRes!23563))

(declare-fun b!820478 () Bool)

(assert (=> b!820478 (= e!455889 (not true))))

(declare-datatypes ((tuple2!9710 0))(
  ( (tuple2!9711 (_1!4865 (_ BitVec 64)) (_2!4865 V!24519)) )
))
(declare-datatypes ((List!15570 0))(
  ( (Nil!15567) (Cons!15566 (h!16695 tuple2!9710) (t!21911 List!15570)) )
))
(declare-datatypes ((ListLongMap!8547 0))(
  ( (ListLongMap!8548 (toList!4289 List!15570)) )
))
(declare-fun lt!368795 () ListLongMap!8547)

(declare-fun lt!368794 () ListLongMap!8547)

(assert (=> b!820478 (= lt!368795 lt!368794)))

(declare-fun zeroValueAfter!34 () V!24519)

(declare-fun minValue!754 () V!24519)

(declare-datatypes ((Unit!28031 0))(
  ( (Unit!28032) )
))
(declare-fun lt!368796 () Unit!28031)

(declare-fun zeroValueBefore!34 () V!24519)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!439 (array!45440 array!45442 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24519 V!24519 V!24519 V!24519 (_ BitVec 32) Int) Unit!28031)

(assert (=> b!820478 (= lt!368796 (lemmaNoChangeToArrayThenSameMapNoExtras!439 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2323 (array!45440 array!45442 (_ BitVec 32) (_ BitVec 32) V!24519 V!24519 (_ BitVec 32) Int) ListLongMap!8547)

(assert (=> b!820478 (= lt!368794 (getCurrentListMapNoExtraKeys!2323 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!820478 (= lt!368795 (getCurrentListMapNoExtraKeys!2323 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23563 () Bool)

(declare-fun tp!45526 () Bool)

(assert (=> mapNonEmpty!23563 (= mapRes!23563 (and tp!45526 e!455886))))

(declare-fun mapValue!23563 () ValueCell!6904)

(declare-fun mapKey!23563 () (_ BitVec 32))

(declare-fun mapRest!23563 () (Array (_ BitVec 32) ValueCell!6904))

(assert (=> mapNonEmpty!23563 (= (arr!21769 _values!788) (store mapRest!23563 mapKey!23563 mapValue!23563))))

(declare-fun b!820479 () Bool)

(declare-fun res!559908 () Bool)

(assert (=> b!820479 (=> (not res!559908) (not e!455889))))

(declare-datatypes ((List!15571 0))(
  ( (Nil!15568) (Cons!15567 (h!16696 (_ BitVec 64)) (t!21912 List!15571)) )
))
(declare-fun arrayNoDuplicates!0 (array!45440 (_ BitVec 32) List!15571) Bool)

(assert (=> b!820479 (= res!559908 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15568))))

(declare-fun b!820480 () Bool)

(declare-fun e!455887 () Bool)

(declare-fun e!455888 () Bool)

(assert (=> b!820480 (= e!455887 (and e!455888 mapRes!23563))))

(declare-fun condMapEmpty!23563 () Bool)

(declare-fun mapDefault!23563 () ValueCell!6904)

