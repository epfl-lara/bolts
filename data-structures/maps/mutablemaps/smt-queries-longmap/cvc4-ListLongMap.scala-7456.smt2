; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94684 () Bool)

(assert start!94684)

(declare-fun b_free!21917 () Bool)

(declare-fun b_next!21917 () Bool)

(assert (=> start!94684 (= b_free!21917 (not b_next!21917))))

(declare-fun tp!77207 () Bool)

(declare-fun b_and!34755 () Bool)

(assert (=> start!94684 (= tp!77207 b_and!34755)))

(declare-fun b!1070059 () Bool)

(declare-fun e!610815 () Bool)

(assert (=> b!1070059 (= e!610815 true)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39437 0))(
  ( (V!39438 (val!12914 Int)) )
))
(declare-fun zeroValueBefore!47 () V!39437)

(declare-datatypes ((ValueCell!12160 0))(
  ( (ValueCellFull!12160 (v!15531 V!39437)) (EmptyCell!12160) )
))
(declare-datatypes ((array!68402 0))(
  ( (array!68403 (arr!32894 (Array (_ BitVec 32) ValueCell!12160)) (size!33431 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68402)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39437)

(declare-datatypes ((tuple2!16490 0))(
  ( (tuple2!16491 (_1!8255 (_ BitVec 64)) (_2!8255 V!39437)) )
))
(declare-datatypes ((List!23076 0))(
  ( (Nil!23073) (Cons!23072 (h!24281 tuple2!16490) (t!32414 List!23076)) )
))
(declare-datatypes ((ListLongMap!14471 0))(
  ( (ListLongMap!14472 (toList!7251 List!23076)) )
))
(declare-fun lt!472884 () ListLongMap!14471)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68404 0))(
  ( (array!68405 (arr!32895 (Array (_ BitVec 32) (_ BitVec 64))) (size!33432 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68404)

(declare-fun getCurrentListMap!4117 (array!68404 array!68402 (_ BitVec 32) (_ BitVec 32) V!39437 V!39437 (_ BitVec 32) Int) ListLongMap!14471)

(assert (=> b!1070059 (= lt!472884 (getCurrentListMap!4117 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070060 () Bool)

(declare-fun e!610810 () Bool)

(declare-fun tp_is_empty!25727 () Bool)

(assert (=> b!1070060 (= e!610810 tp_is_empty!25727)))

(declare-fun b!1070061 () Bool)

(declare-fun e!610813 () Bool)

(assert (=> b!1070061 (= e!610813 tp_is_empty!25727)))

(declare-fun b!1070062 () Bool)

(declare-fun res!713981 () Bool)

(declare-fun e!610811 () Bool)

(assert (=> b!1070062 (=> (not res!713981) (not e!610811))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1070062 (= res!713981 (and (= (size!33431 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33432 _keys!1163) (size!33431 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!40294 () Bool)

(declare-fun mapRes!40294 () Bool)

(assert (=> mapIsEmpty!40294 mapRes!40294))

(declare-fun b!1070063 () Bool)

(declare-fun res!713978 () Bool)

(assert (=> b!1070063 (=> (not res!713978) (not e!610811))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68404 (_ BitVec 32)) Bool)

(assert (=> b!1070063 (= res!713978 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1070065 () Bool)

(declare-fun res!713977 () Bool)

(assert (=> b!1070065 (=> (not res!713977) (not e!610811))))

(declare-datatypes ((List!23077 0))(
  ( (Nil!23074) (Cons!23073 (h!24282 (_ BitVec 64)) (t!32415 List!23077)) )
))
(declare-fun arrayNoDuplicates!0 (array!68404 (_ BitVec 32) List!23077) Bool)

(assert (=> b!1070065 (= res!713977 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23074))))

(declare-fun b!1070066 () Bool)

(declare-fun e!610812 () Bool)

(assert (=> b!1070066 (= e!610812 (and e!610810 mapRes!40294))))

(declare-fun condMapEmpty!40294 () Bool)

(declare-fun mapDefault!40294 () ValueCell!12160)

