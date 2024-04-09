; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95144 () Bool)

(assert start!95144)

(declare-fun b_free!22205 () Bool)

(declare-fun b_next!22205 () Bool)

(assert (=> start!95144 (= b_free!22205 (not b_next!22205))))

(declare-fun tp!78098 () Bool)

(declare-fun b_and!35143 () Bool)

(assert (=> start!95144 (= tp!78098 b_and!35143)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39821 0))(
  ( (V!39822 (val!13058 Int)) )
))
(declare-fun zeroValueBefore!47 () V!39821)

(declare-fun e!614458 () Bool)

(declare-fun b!1075109 () Bool)

(declare-datatypes ((ValueCell!12304 0))(
  ( (ValueCellFull!12304 (v!15682 V!39821)) (EmptyCell!12304) )
))
(declare-datatypes ((array!68958 0))(
  ( (array!68959 (arr!33163 (Array (_ BitVec 32) ValueCell!12304)) (size!33700 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68958)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39821)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68960 0))(
  ( (array!68961 (arr!33164 (Array (_ BitVec 32) (_ BitVec 64))) (size!33701 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68960)

(declare-datatypes ((tuple2!16702 0))(
  ( (tuple2!16703 (_1!8361 (_ BitVec 64)) (_2!8361 V!39821)) )
))
(declare-datatypes ((List!23276 0))(
  ( (Nil!23273) (Cons!23272 (h!24481 tuple2!16702) (t!32632 List!23276)) )
))
(declare-datatypes ((ListLongMap!14683 0))(
  ( (ListLongMap!14684 (toList!7357 List!23276)) )
))
(declare-fun contains!6359 (ListLongMap!14683 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4194 (array!68960 array!68958 (_ BitVec 32) (_ BitVec 32) V!39821 V!39821 (_ BitVec 32) Int) ListLongMap!14683)

(assert (=> b!1075109 (= e!614458 (not (contains!6359 (getCurrentListMap!4194 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1075110 () Bool)

(declare-fun e!614457 () Bool)

(assert (=> b!1075110 (= e!614457 (not e!614458))))

(declare-fun res!716868 () Bool)

(assert (=> b!1075110 (=> res!716868 e!614458)))

(assert (=> b!1075110 (= res!716868 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!477151 () ListLongMap!14683)

(declare-fun lt!477153 () ListLongMap!14683)

(assert (=> b!1075110 (= lt!477151 lt!477153)))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!39821)

(declare-datatypes ((Unit!35345 0))(
  ( (Unit!35346) )
))
(declare-fun lt!477152 () Unit!35345)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!903 (array!68960 array!68958 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39821 V!39821 V!39821 V!39821 (_ BitVec 32) Int) Unit!35345)

(assert (=> b!1075110 (= lt!477152 (lemmaNoChangeToArrayThenSameMapNoExtras!903 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3884 (array!68960 array!68958 (_ BitVec 32) (_ BitVec 32) V!39821 V!39821 (_ BitVec 32) Int) ListLongMap!14683)

(assert (=> b!1075110 (= lt!477153 (getCurrentListMapNoExtraKeys!3884 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1075110 (= lt!477151 (getCurrentListMapNoExtraKeys!3884 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1075111 () Bool)

(declare-fun res!716867 () Bool)

(assert (=> b!1075111 (=> (not res!716867) (not e!614457))))

(declare-datatypes ((List!23277 0))(
  ( (Nil!23274) (Cons!23273 (h!24482 (_ BitVec 64)) (t!32633 List!23277)) )
))
(declare-fun arrayNoDuplicates!0 (array!68960 (_ BitVec 32) List!23277) Bool)

(assert (=> b!1075111 (= res!716867 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23274))))

(declare-fun b!1075112 () Bool)

(declare-fun e!614455 () Bool)

(declare-fun e!614456 () Bool)

(declare-fun mapRes!40753 () Bool)

(assert (=> b!1075112 (= e!614455 (and e!614456 mapRes!40753))))

(declare-fun condMapEmpty!40753 () Bool)

(declare-fun mapDefault!40753 () ValueCell!12304)

