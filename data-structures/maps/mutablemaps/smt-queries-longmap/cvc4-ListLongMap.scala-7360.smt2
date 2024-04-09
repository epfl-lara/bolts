; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93904 () Bool)

(assert start!93904)

(declare-fun b_free!21341 () Bool)

(declare-fun b_next!21341 () Bool)

(assert (=> start!93904 (= b_free!21341 (not b_next!21341))))

(declare-fun tp!75446 () Bool)

(declare-fun b_and!34073 () Bool)

(assert (=> start!93904 (= tp!75446 b_and!34073)))

(declare-fun b!1061592 () Bool)

(declare-fun e!604603 () Bool)

(assert (=> b!1061592 (= e!604603 (not true))))

(declare-datatypes ((V!38669 0))(
  ( (V!38670 (val!12626 Int)) )
))
(declare-datatypes ((tuple2!16056 0))(
  ( (tuple2!16057 (_1!8038 (_ BitVec 64)) (_2!8038 V!38669)) )
))
(declare-datatypes ((List!22669 0))(
  ( (Nil!22666) (Cons!22665 (h!23874 tuple2!16056) (t!31985 List!22669)) )
))
(declare-datatypes ((ListLongMap!14037 0))(
  ( (ListLongMap!14038 (toList!7034 List!22669)) )
))
(declare-fun lt!467663 () ListLongMap!14037)

(declare-fun lt!467662 () ListLongMap!14037)

(assert (=> b!1061592 (= lt!467663 lt!467662)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38669)

(declare-datatypes ((Unit!34743 0))(
  ( (Unit!34744) )
))
(declare-fun lt!467661 () Unit!34743)

(declare-datatypes ((ValueCell!11872 0))(
  ( (ValueCellFull!11872 (v!15237 V!38669)) (EmptyCell!11872) )
))
(declare-datatypes ((array!67284 0))(
  ( (array!67285 (arr!32346 (Array (_ BitVec 32) ValueCell!11872)) (size!32883 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67284)

(declare-fun minValue!907 () V!38669)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38669)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67286 0))(
  ( (array!67287 (arr!32347 (Array (_ BitVec 32) (_ BitVec 64))) (size!32884 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67286)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!637 (array!67286 array!67284 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38669 V!38669 V!38669 V!38669 (_ BitVec 32) Int) Unit!34743)

(assert (=> b!1061592 (= lt!467661 (lemmaNoChangeToArrayThenSameMapNoExtras!637 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3598 (array!67286 array!67284 (_ BitVec 32) (_ BitVec 32) V!38669 V!38669 (_ BitVec 32) Int) ListLongMap!14037)

(assert (=> b!1061592 (= lt!467662 (getCurrentListMapNoExtraKeys!3598 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1061592 (= lt!467663 (getCurrentListMapNoExtraKeys!3598 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1061593 () Bool)

(declare-fun res!708996 () Bool)

(assert (=> b!1061593 (=> (not res!708996) (not e!604603))))

(declare-datatypes ((List!22670 0))(
  ( (Nil!22667) (Cons!22666 (h!23875 (_ BitVec 64)) (t!31986 List!22670)) )
))
(declare-fun arrayNoDuplicates!0 (array!67286 (_ BitVec 32) List!22670) Bool)

(assert (=> b!1061593 (= res!708996 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22667))))

(declare-fun mapNonEmpty!39397 () Bool)

(declare-fun mapRes!39397 () Bool)

(declare-fun tp!75447 () Bool)

(declare-fun e!604607 () Bool)

(assert (=> mapNonEmpty!39397 (= mapRes!39397 (and tp!75447 e!604607))))

(declare-fun mapRest!39397 () (Array (_ BitVec 32) ValueCell!11872))

(declare-fun mapKey!39397 () (_ BitVec 32))

(declare-fun mapValue!39397 () ValueCell!11872)

(assert (=> mapNonEmpty!39397 (= (arr!32346 _values!955) (store mapRest!39397 mapKey!39397 mapValue!39397))))

(declare-fun mapIsEmpty!39397 () Bool)

(assert (=> mapIsEmpty!39397 mapRes!39397))

(declare-fun b!1061594 () Bool)

(declare-fun e!604606 () Bool)

(declare-fun e!604605 () Bool)

(assert (=> b!1061594 (= e!604606 (and e!604605 mapRes!39397))))

(declare-fun condMapEmpty!39397 () Bool)

(declare-fun mapDefault!39397 () ValueCell!11872)

