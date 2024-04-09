; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70912 () Bool)

(assert start!70912)

(declare-fun b_free!13125 () Bool)

(declare-fun b_next!13125 () Bool)

(assert (=> start!70912 (= b_free!13125 (not b_next!13125))))

(declare-fun tp!46122 () Bool)

(declare-fun b_and!22027 () Bool)

(assert (=> start!70912 (= tp!46122 b_and!22027)))

(declare-fun b!823196 () Bool)

(declare-fun res!561503 () Bool)

(declare-fun e!457870 () Bool)

(assert (=> b!823196 (=> (not res!561503) (not e!457870))))

(declare-datatypes ((array!45822 0))(
  ( (array!45823 (arr!21956 (Array (_ BitVec 32) (_ BitVec 64))) (size!22377 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45822)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45822 (_ BitVec 32)) Bool)

(assert (=> b!823196 (= res!561503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!823197 () Bool)

(declare-fun e!457866 () Bool)

(declare-fun tp_is_empty!14835 () Bool)

(assert (=> b!823197 (= e!457866 tp_is_empty!14835)))

(declare-fun b!823198 () Bool)

(declare-fun e!457869 () Bool)

(declare-fun mapRes!23866 () Bool)

(assert (=> b!823198 (= e!457869 (and e!457866 mapRes!23866))))

(declare-fun condMapEmpty!23866 () Bool)

(declare-datatypes ((V!24781 0))(
  ( (V!24782 (val!7465 Int)) )
))
(declare-datatypes ((ValueCell!7002 0))(
  ( (ValueCellFull!7002 (v!9893 V!24781)) (EmptyCell!7002) )
))
(declare-datatypes ((array!45824 0))(
  ( (array!45825 (arr!21957 (Array (_ BitVec 32) ValueCell!7002)) (size!22378 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45824)

(declare-fun mapDefault!23866 () ValueCell!7002)

(assert (=> b!823198 (= condMapEmpty!23866 (= (arr!21957 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7002)) mapDefault!23866)))))

(declare-fun res!561501 () Bool)

(assert (=> start!70912 (=> (not res!561501) (not e!457870))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70912 (= res!561501 (validMask!0 mask!1312))))

(assert (=> start!70912 e!457870))

(assert (=> start!70912 tp_is_empty!14835))

(declare-fun array_inv!17499 (array!45822) Bool)

(assert (=> start!70912 (array_inv!17499 _keys!976)))

(assert (=> start!70912 true))

(declare-fun array_inv!17500 (array!45824) Bool)

(assert (=> start!70912 (and (array_inv!17500 _values!788) e!457869)))

(assert (=> start!70912 tp!46122))

(declare-fun b!823199 () Bool)

(declare-fun res!561500 () Bool)

(assert (=> b!823199 (=> (not res!561500) (not e!457870))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!823199 (= res!561500 (and (= (size!22378 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22377 _keys!976) (size!22378 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23866 () Bool)

(assert (=> mapIsEmpty!23866 mapRes!23866))

(declare-fun b!823200 () Bool)

(declare-fun e!457867 () Bool)

(assert (=> b!823200 (= e!457867 tp_is_empty!14835)))

(declare-fun b!823201 () Bool)

(declare-fun res!561502 () Bool)

(assert (=> b!823201 (=> (not res!561502) (not e!457870))))

(declare-datatypes ((List!15723 0))(
  ( (Nil!15720) (Cons!15719 (h!16848 (_ BitVec 64)) (t!22070 List!15723)) )
))
(declare-fun arrayNoDuplicates!0 (array!45822 (_ BitVec 32) List!15723) Bool)

(assert (=> b!823201 (= res!561502 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15720))))

(declare-fun b!823202 () Bool)

(declare-fun e!457865 () Bool)

(assert (=> b!823202 (= e!457865 true)))

(declare-datatypes ((tuple2!9866 0))(
  ( (tuple2!9867 (_1!4943 (_ BitVec 64)) (_2!4943 V!24781)) )
))
(declare-datatypes ((List!15724 0))(
  ( (Nil!15721) (Cons!15720 (h!16849 tuple2!9866) (t!22071 List!15724)) )
))
(declare-datatypes ((ListLongMap!8703 0))(
  ( (ListLongMap!8704 (toList!4367 List!15724)) )
))
(declare-fun lt!371129 () ListLongMap!8703)

(declare-fun lt!371137 () ListLongMap!8703)

(declare-fun lt!371128 () tuple2!9866)

(declare-fun +!1869 (ListLongMap!8703 tuple2!9866) ListLongMap!8703)

(assert (=> b!823202 (= lt!371129 (+!1869 lt!371137 lt!371128))))

(declare-fun zeroValueAfter!34 () V!24781)

(declare-fun minValue!754 () V!24781)

(declare-datatypes ((Unit!28178 0))(
  ( (Unit!28179) )
))
(declare-fun lt!371131 () Unit!28178)

(declare-fun lt!371135 () ListLongMap!8703)

(declare-fun addCommutativeForDiffKeys!464 (ListLongMap!8703 (_ BitVec 64) V!24781 (_ BitVec 64) V!24781) Unit!28178)

(assert (=> b!823202 (= lt!371131 (addCommutativeForDiffKeys!464 lt!371135 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!371132 () ListLongMap!8703)

(assert (=> b!823202 (= lt!371132 lt!371129)))

(declare-fun lt!371133 () tuple2!9866)

(assert (=> b!823202 (= lt!371129 (+!1869 (+!1869 lt!371135 lt!371128) lt!371133))))

(assert (=> b!823202 (= lt!371128 (tuple2!9867 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!371136 () ListLongMap!8703)

(assert (=> b!823202 (= lt!371136 lt!371137)))

(assert (=> b!823202 (= lt!371137 (+!1869 lt!371135 lt!371133))))

(assert (=> b!823202 (= lt!371133 (tuple2!9867 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2499 (array!45822 array!45824 (_ BitVec 32) (_ BitVec 32) V!24781 V!24781 (_ BitVec 32) Int) ListLongMap!8703)

(assert (=> b!823202 (= lt!371132 (getCurrentListMap!2499 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24781)

(assert (=> b!823202 (= lt!371136 (getCurrentListMap!2499 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!823203 () Bool)

(assert (=> b!823203 (= e!457870 (not e!457865))))

(declare-fun res!561504 () Bool)

(assert (=> b!823203 (=> res!561504 e!457865)))

(assert (=> b!823203 (= res!561504 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!371134 () ListLongMap!8703)

(assert (=> b!823203 (= lt!371135 lt!371134)))

(declare-fun lt!371130 () Unit!28178)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!505 (array!45822 array!45824 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24781 V!24781 V!24781 V!24781 (_ BitVec 32) Int) Unit!28178)

(assert (=> b!823203 (= lt!371130 (lemmaNoChangeToArrayThenSameMapNoExtras!505 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2389 (array!45822 array!45824 (_ BitVec 32) (_ BitVec 32) V!24781 V!24781 (_ BitVec 32) Int) ListLongMap!8703)

(assert (=> b!823203 (= lt!371134 (getCurrentListMapNoExtraKeys!2389 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823203 (= lt!371135 (getCurrentListMapNoExtraKeys!2389 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23866 () Bool)

(declare-fun tp!46123 () Bool)

(assert (=> mapNonEmpty!23866 (= mapRes!23866 (and tp!46123 e!457867))))

(declare-fun mapValue!23866 () ValueCell!7002)

(declare-fun mapRest!23866 () (Array (_ BitVec 32) ValueCell!7002))

(declare-fun mapKey!23866 () (_ BitVec 32))

(assert (=> mapNonEmpty!23866 (= (arr!21957 _values!788) (store mapRest!23866 mapKey!23866 mapValue!23866))))

(assert (= (and start!70912 res!561501) b!823199))

(assert (= (and b!823199 res!561500) b!823196))

(assert (= (and b!823196 res!561503) b!823201))

(assert (= (and b!823201 res!561502) b!823203))

(assert (= (and b!823203 (not res!561504)) b!823202))

(assert (= (and b!823198 condMapEmpty!23866) mapIsEmpty!23866))

(assert (= (and b!823198 (not condMapEmpty!23866)) mapNonEmpty!23866))

(get-info :version)

(assert (= (and mapNonEmpty!23866 ((_ is ValueCellFull!7002) mapValue!23866)) b!823200))

(assert (= (and b!823198 ((_ is ValueCellFull!7002) mapDefault!23866)) b!823197))

(assert (= start!70912 b!823198))

(declare-fun m!765423 () Bool)

(assert (=> b!823196 m!765423))

(declare-fun m!765425 () Bool)

(assert (=> b!823202 m!765425))

(declare-fun m!765427 () Bool)

(assert (=> b!823202 m!765427))

(declare-fun m!765429 () Bool)

(assert (=> b!823202 m!765429))

(declare-fun m!765431 () Bool)

(assert (=> b!823202 m!765431))

(declare-fun m!765433 () Bool)

(assert (=> b!823202 m!765433))

(assert (=> b!823202 m!765425))

(declare-fun m!765435 () Bool)

(assert (=> b!823202 m!765435))

(declare-fun m!765437 () Bool)

(assert (=> b!823202 m!765437))

(declare-fun m!765439 () Bool)

(assert (=> b!823201 m!765439))

(declare-fun m!765441 () Bool)

(assert (=> b!823203 m!765441))

(declare-fun m!765443 () Bool)

(assert (=> b!823203 m!765443))

(declare-fun m!765445 () Bool)

(assert (=> b!823203 m!765445))

(declare-fun m!765447 () Bool)

(assert (=> mapNonEmpty!23866 m!765447))

(declare-fun m!765449 () Bool)

(assert (=> start!70912 m!765449))

(declare-fun m!765451 () Bool)

(assert (=> start!70912 m!765451))

(declare-fun m!765453 () Bool)

(assert (=> start!70912 m!765453))

(check-sat (not b!823203) (not b!823202) (not mapNonEmpty!23866) (not start!70912) (not b!823201) b_and!22027 tp_is_empty!14835 (not b_next!13125) (not b!823196))
(check-sat b_and!22027 (not b_next!13125))
