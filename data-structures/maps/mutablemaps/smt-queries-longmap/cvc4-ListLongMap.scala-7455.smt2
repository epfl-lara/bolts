; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94664 () Bool)

(assert start!94664)

(declare-fun b_free!21911 () Bool)

(declare-fun b_next!21911 () Bool)

(assert (=> start!94664 (= b_free!21911 (not b_next!21911))))

(declare-fun tp!77187 () Bool)

(declare-fun b_and!34741 () Bool)

(assert (=> start!94664 (= tp!77187 b_and!34741)))

(declare-fun b!1069903 () Bool)

(declare-fun e!610705 () Bool)

(declare-fun tp_is_empty!25721 () Bool)

(assert (=> b!1069903 (= e!610705 tp_is_empty!25721)))

(declare-fun b!1069904 () Bool)

(declare-fun e!610703 () Bool)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68388 0))(
  ( (array!68389 (arr!32888 (Array (_ BitVec 32) (_ BitVec 64))) (size!33425 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68388)

(assert (=> b!1069904 (= e!610703 (not (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!33425 _keys!1163)))))))

(declare-datatypes ((V!39429 0))(
  ( (V!39430 (val!12911 Int)) )
))
(declare-datatypes ((tuple2!16486 0))(
  ( (tuple2!16487 (_1!8253 (_ BitVec 64)) (_2!8253 V!39429)) )
))
(declare-datatypes ((List!23073 0))(
  ( (Nil!23070) (Cons!23069 (h!24278 tuple2!16486) (t!32409 List!23073)) )
))
(declare-datatypes ((ListLongMap!14467 0))(
  ( (ListLongMap!14468 (toList!7249 List!23073)) )
))
(declare-fun lt!472810 () ListLongMap!14467)

(declare-fun lt!472809 () ListLongMap!14467)

(assert (=> b!1069904 (= lt!472810 lt!472809)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39429)

(declare-datatypes ((ValueCell!12157 0))(
  ( (ValueCellFull!12157 (v!15528 V!39429)) (EmptyCell!12157) )
))
(declare-datatypes ((array!68390 0))(
  ( (array!68391 (arr!32889 (Array (_ BitVec 32) ValueCell!12157)) (size!33426 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68390)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39429)

(declare-fun minValue!907 () V!39429)

(declare-datatypes ((Unit!35164 0))(
  ( (Unit!35165) )
))
(declare-fun lt!472808 () Unit!35164)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!825 (array!68388 array!68390 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39429 V!39429 V!39429 V!39429 (_ BitVec 32) Int) Unit!35164)

(assert (=> b!1069904 (= lt!472808 (lemmaNoChangeToArrayThenSameMapNoExtras!825 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3786 (array!68388 array!68390 (_ BitVec 32) (_ BitVec 32) V!39429 V!39429 (_ BitVec 32) Int) ListLongMap!14467)

(assert (=> b!1069904 (= lt!472809 (getCurrentListMapNoExtraKeys!3786 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1069904 (= lt!472810 (getCurrentListMapNoExtraKeys!3786 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1069905 () Bool)

(declare-fun e!610706 () Bool)

(declare-fun e!610704 () Bool)

(declare-fun mapRes!40282 () Bool)

(assert (=> b!1069905 (= e!610706 (and e!610704 mapRes!40282))))

(declare-fun condMapEmpty!40282 () Bool)

(declare-fun mapDefault!40282 () ValueCell!12157)

