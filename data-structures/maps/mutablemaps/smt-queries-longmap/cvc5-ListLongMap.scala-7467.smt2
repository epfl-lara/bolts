; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94762 () Bool)

(assert start!94762)

(declare-fun b_free!21979 () Bool)

(declare-fun b_next!21979 () Bool)

(assert (=> start!94762 (= b_free!21979 (not b_next!21979))))

(declare-fun tp!77396 () Bool)

(declare-fun b_and!34827 () Bool)

(assert (=> start!94762 (= tp!77396 b_and!34827)))

(declare-fun b!1070971 () Bool)

(declare-fun res!714520 () Bool)

(declare-fun e!611488 () Bool)

(assert (=> b!1070971 (=> (not res!714520) (not e!611488))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39521 0))(
  ( (V!39522 (val!12945 Int)) )
))
(declare-datatypes ((ValueCell!12191 0))(
  ( (ValueCellFull!12191 (v!15562 V!39521)) (EmptyCell!12191) )
))
(declare-datatypes ((array!68512 0))(
  ( (array!68513 (arr!32948 (Array (_ BitVec 32) ValueCell!12191)) (size!33485 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68512)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68514 0))(
  ( (array!68515 (arr!32949 (Array (_ BitVec 32) (_ BitVec 64))) (size!33486 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68514)

(assert (=> b!1070971 (= res!714520 (and (= (size!33485 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33486 _keys!1163) (size!33485 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1070972 () Bool)

(declare-fun e!611485 () Bool)

(assert (=> b!1070972 (= e!611485 true)))

(declare-datatypes ((tuple2!16532 0))(
  ( (tuple2!16533 (_1!8276 (_ BitVec 64)) (_2!8276 V!39521)) )
))
(declare-datatypes ((List!23117 0))(
  ( (Nil!23114) (Cons!23113 (h!24322 tuple2!16532) (t!32457 List!23117)) )
))
(declare-datatypes ((ListLongMap!14513 0))(
  ( (ListLongMap!14514 (toList!7272 List!23117)) )
))
(declare-fun lt!473459 () ListLongMap!14513)

(declare-fun lt!473451 () ListLongMap!14513)

(declare-fun -!666 (ListLongMap!14513 (_ BitVec 64)) ListLongMap!14513)

(assert (=> b!1070972 (= lt!473459 (-!666 lt!473451 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!473452 () ListLongMap!14513)

(declare-fun lt!473460 () ListLongMap!14513)

(assert (=> b!1070972 (= lt!473452 lt!473460)))

(declare-fun zeroValueBefore!47 () V!39521)

(declare-fun minValue!907 () V!39521)

(declare-datatypes ((Unit!35207 0))(
  ( (Unit!35208) )
))
(declare-fun lt!473463 () Unit!35207)

(declare-fun lt!473457 () ListLongMap!14513)

(declare-fun addCommutativeForDiffKeys!710 (ListLongMap!14513 (_ BitVec 64) V!39521 (_ BitVec 64) V!39521) Unit!35207)

(assert (=> b!1070972 (= lt!473463 (addCommutativeForDiffKeys!710 lt!473457 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!473458 () ListLongMap!14513)

(assert (=> b!1070972 (= (-!666 lt!473460 #b0000000000000000000000000000000000000000000000000000000000000000) lt!473458)))

(declare-fun lt!473453 () tuple2!16532)

(declare-fun +!3129 (ListLongMap!14513 tuple2!16532) ListLongMap!14513)

(assert (=> b!1070972 (= lt!473460 (+!3129 lt!473458 lt!473453))))

(declare-fun lt!473461 () Unit!35207)

(declare-fun addThenRemoveForNewKeyIsSame!40 (ListLongMap!14513 (_ BitVec 64) V!39521) Unit!35207)

(assert (=> b!1070972 (= lt!473461 (addThenRemoveForNewKeyIsSame!40 lt!473458 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!473455 () tuple2!16532)

(assert (=> b!1070972 (= lt!473458 (+!3129 lt!473457 lt!473455))))

(declare-fun e!611483 () Bool)

(assert (=> b!1070972 e!611483))

(declare-fun res!714524 () Bool)

(assert (=> b!1070972 (=> (not res!714524) (not e!611483))))

(assert (=> b!1070972 (= res!714524 (= lt!473451 lt!473452))))

(assert (=> b!1070972 (= lt!473452 (+!3129 (+!3129 lt!473457 lt!473453) lt!473455))))

(assert (=> b!1070972 (= lt!473455 (tuple2!16533 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1070972 (= lt!473453 (tuple2!16533 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!473456 () ListLongMap!14513)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39521)

(declare-fun getCurrentListMap!4138 (array!68514 array!68512 (_ BitVec 32) (_ BitVec 32) V!39521 V!39521 (_ BitVec 32) Int) ListLongMap!14513)

(assert (=> b!1070972 (= lt!473456 (getCurrentListMap!4138 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1070972 (= lt!473451 (getCurrentListMap!4138 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40390 () Bool)

(declare-fun mapRes!40390 () Bool)

(assert (=> mapIsEmpty!40390 mapRes!40390))

(declare-fun b!1070973 () Bool)

(assert (=> b!1070973 (= e!611488 (not e!611485))))

(declare-fun res!714523 () Bool)

(assert (=> b!1070973 (=> res!714523 e!611485)))

(assert (=> b!1070973 (= res!714523 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!473454 () ListLongMap!14513)

(assert (=> b!1070973 (= lt!473457 lt!473454)))

(declare-fun lt!473462 () Unit!35207)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!846 (array!68514 array!68512 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39521 V!39521 V!39521 V!39521 (_ BitVec 32) Int) Unit!35207)

(assert (=> b!1070973 (= lt!473462 (lemmaNoChangeToArrayThenSameMapNoExtras!846 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3807 (array!68514 array!68512 (_ BitVec 32) (_ BitVec 32) V!39521 V!39521 (_ BitVec 32) Int) ListLongMap!14513)

(assert (=> b!1070973 (= lt!473454 (getCurrentListMapNoExtraKeys!3807 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1070973 (= lt!473457 (getCurrentListMapNoExtraKeys!3807 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070974 () Bool)

(declare-fun res!714521 () Bool)

(assert (=> b!1070974 (=> (not res!714521) (not e!611488))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68514 (_ BitVec 32)) Bool)

(assert (=> b!1070974 (= res!714521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1070976 () Bool)

(declare-fun e!611484 () Bool)

(declare-fun e!611482 () Bool)

(assert (=> b!1070976 (= e!611484 (and e!611482 mapRes!40390))))

(declare-fun condMapEmpty!40390 () Bool)

(declare-fun mapDefault!40390 () ValueCell!12191)

