; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95192 () Bool)

(assert start!95192)

(declare-fun b_free!22213 () Bool)

(declare-fun b_next!22213 () Bool)

(assert (=> start!95192 (= b_free!22213 (not b_next!22213))))

(declare-fun tp!78129 () Bool)

(declare-fun b_and!35173 () Bool)

(assert (=> start!95192 (= tp!78129 b_and!35173)))

(declare-fun b!1075549 () Bool)

(declare-fun e!614748 () Bool)

(declare-fun tp_is_empty!26023 () Bool)

(assert (=> b!1075549 (= e!614748 tp_is_empty!26023)))

(declare-fun mapIsEmpty!40771 () Bool)

(declare-fun mapRes!40771 () Bool)

(assert (=> mapIsEmpty!40771 mapRes!40771))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39833 0))(
  ( (V!39834 (val!13062 Int)) )
))
(declare-fun zeroValueBefore!47 () V!39833)

(declare-fun b!1075550 () Bool)

(declare-datatypes ((ValueCell!12308 0))(
  ( (ValueCellFull!12308 (v!15688 V!39833)) (EmptyCell!12308) )
))
(declare-datatypes ((array!68978 0))(
  ( (array!68979 (arr!33171 (Array (_ BitVec 32) ValueCell!12308)) (size!33708 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68978)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39833)

(declare-datatypes ((tuple2!16710 0))(
  ( (tuple2!16711 (_1!8365 (_ BitVec 64)) (_2!8365 V!39833)) )
))
(declare-datatypes ((List!23283 0))(
  ( (Nil!23280) (Cons!23279 (h!24488 tuple2!16710) (t!32643 List!23283)) )
))
(declare-datatypes ((ListLongMap!14691 0))(
  ( (ListLongMap!14692 (toList!7361 List!23283)) )
))
(declare-fun lt!477481 () ListLongMap!14691)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun e!614753 () Bool)

(declare-datatypes ((array!68980 0))(
  ( (array!68981 (arr!33172 (Array (_ BitVec 32) (_ BitVec 64))) (size!33709 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68980)

(declare-fun getCurrentListMap!4198 (array!68980 array!68978 (_ BitVec 32) (_ BitVec 32) V!39833 V!39833 (_ BitVec 32) Int) ListLongMap!14691)

(declare-fun +!3185 (ListLongMap!14691 tuple2!16710) ListLongMap!14691)

(assert (=> b!1075550 (= e!614753 (= (getCurrentListMap!4198 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (+!3185 (+!3185 lt!477481 (tuple2!16711 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) (tuple2!16711 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun lt!477482 () ListLongMap!14691)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!39833)

(assert (=> b!1075550 (= lt!477482 (getCurrentListMap!4198 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1075551 () Bool)

(declare-fun res!717071 () Bool)

(declare-fun e!614750 () Bool)

(assert (=> b!1075551 (=> (not res!717071) (not e!614750))))

(declare-datatypes ((List!23284 0))(
  ( (Nil!23281) (Cons!23280 (h!24489 (_ BitVec 64)) (t!32644 List!23284)) )
))
(declare-fun arrayNoDuplicates!0 (array!68980 (_ BitVec 32) List!23284) Bool)

(assert (=> b!1075551 (= res!717071 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23281))))

(declare-fun b!1075552 () Bool)

(declare-fun res!717069 () Bool)

(assert (=> b!1075552 (=> (not res!717069) (not e!614750))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68980 (_ BitVec 32)) Bool)

(assert (=> b!1075552 (= res!717069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!717068 () Bool)

(assert (=> start!95192 (=> (not res!717068) (not e!614750))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95192 (= res!717068 (validMask!0 mask!1515))))

(assert (=> start!95192 e!614750))

(assert (=> start!95192 true))

(assert (=> start!95192 tp_is_empty!26023))

(declare-fun e!614749 () Bool)

(declare-fun array_inv!25486 (array!68978) Bool)

(assert (=> start!95192 (and (array_inv!25486 _values!955) e!614749)))

(assert (=> start!95192 tp!78129))

(declare-fun array_inv!25487 (array!68980) Bool)

(assert (=> start!95192 (array_inv!25487 _keys!1163)))

(declare-fun b!1075553 () Bool)

(declare-fun res!717070 () Bool)

(assert (=> b!1075553 (=> (not res!717070) (not e!614750))))

(assert (=> b!1075553 (= res!717070 (and (= (size!33708 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33709 _keys!1163) (size!33708 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1075554 () Bool)

(declare-fun e!614752 () Bool)

(assert (=> b!1075554 (= e!614749 (and e!614752 mapRes!40771))))

(declare-fun condMapEmpty!40771 () Bool)

(declare-fun mapDefault!40771 () ValueCell!12308)

