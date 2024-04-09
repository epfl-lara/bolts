; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95030 () Bool)

(assert start!95030)

(declare-fun b_free!22169 () Bool)

(declare-fun b_next!22169 () Bool)

(assert (=> start!95030 (= b_free!22169 (not b_next!22169))))

(declare-fun tp!77978 () Bool)

(declare-fun b_and!35059 () Bool)

(assert (=> start!95030 (= tp!77978 b_and!35059)))

(declare-fun b!1073937 () Bool)

(declare-fun res!716280 () Bool)

(declare-fun e!613658 () Bool)

(assert (=> b!1073937 (=> (not res!716280) (not e!613658))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39773 0))(
  ( (V!39774 (val!13040 Int)) )
))
(declare-datatypes ((ValueCell!12286 0))(
  ( (ValueCellFull!12286 (v!15660 V!39773)) (EmptyCell!12286) )
))
(declare-datatypes ((array!68884 0))(
  ( (array!68885 (arr!33130 (Array (_ BitVec 32) ValueCell!12286)) (size!33667 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68884)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68886 0))(
  ( (array!68887 (arr!33131 (Array (_ BitVec 32) (_ BitVec 64))) (size!33668 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68886)

(assert (=> b!1073937 (= res!716280 (and (= (size!33667 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33668 _keys!1163) (size!33667 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1073938 () Bool)

(declare-fun e!613653 () Bool)

(assert (=> b!1073938 (= e!613658 (not e!613653))))

(declare-fun res!716281 () Bool)

(assert (=> b!1073938 (=> res!716281 e!613653)))

(assert (=> b!1073938 (= res!716281 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!16674 0))(
  ( (tuple2!16675 (_1!8347 (_ BitVec 64)) (_2!8347 V!39773)) )
))
(declare-datatypes ((List!23250 0))(
  ( (Nil!23247) (Cons!23246 (h!24455 tuple2!16674) (t!32598 List!23250)) )
))
(declare-datatypes ((ListLongMap!14655 0))(
  ( (ListLongMap!14656 (toList!7343 List!23250)) )
))
(declare-fun lt!476300 () ListLongMap!14655)

(declare-fun lt!476305 () ListLongMap!14655)

(assert (=> b!1073938 (= lt!476300 lt!476305)))

(declare-fun zeroValueBefore!47 () V!39773)

(declare-datatypes ((Unit!35309 0))(
  ( (Unit!35310) )
))
(declare-fun lt!476302 () Unit!35309)

(declare-fun minValue!907 () V!39773)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39773)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!890 (array!68886 array!68884 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39773 V!39773 V!39773 V!39773 (_ BitVec 32) Int) Unit!35309)

(assert (=> b!1073938 (= lt!476302 (lemmaNoChangeToArrayThenSameMapNoExtras!890 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3871 (array!68886 array!68884 (_ BitVec 32) (_ BitVec 32) V!39773 V!39773 (_ BitVec 32) Int) ListLongMap!14655)

(assert (=> b!1073938 (= lt!476305 (getCurrentListMapNoExtraKeys!3871 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1073938 (= lt!476300 (getCurrentListMapNoExtraKeys!3871 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!716278 () Bool)

(assert (=> start!95030 (=> (not res!716278) (not e!613658))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95030 (= res!716278 (validMask!0 mask!1515))))

(assert (=> start!95030 e!613658))

(assert (=> start!95030 true))

(declare-fun tp_is_empty!25979 () Bool)

(assert (=> start!95030 tp_is_empty!25979))

(declare-fun e!613657 () Bool)

(declare-fun array_inv!25458 (array!68884) Bool)

(assert (=> start!95030 (and (array_inv!25458 _values!955) e!613657)))

(assert (=> start!95030 tp!77978))

(declare-fun array_inv!25459 (array!68886) Bool)

(assert (=> start!95030 (array_inv!25459 _keys!1163)))

(declare-fun b!1073939 () Bool)

(declare-fun e!613659 () Bool)

(assert (=> b!1073939 (= e!613653 e!613659)))

(declare-fun res!716277 () Bool)

(assert (=> b!1073939 (=> res!716277 e!613659)))

(declare-fun lt!476304 () ListLongMap!14655)

(declare-fun contains!6347 (ListLongMap!14655 (_ BitVec 64)) Bool)

(assert (=> b!1073939 (= res!716277 (contains!6347 lt!476304 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4181 (array!68886 array!68884 (_ BitVec 32) (_ BitVec 32) V!39773 V!39773 (_ BitVec 32) Int) ListLongMap!14655)

(assert (=> b!1073939 (= lt!476304 (getCurrentListMap!4181 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1073940 () Bool)

(declare-fun res!716282 () Bool)

(assert (=> b!1073940 (=> (not res!716282) (not e!613658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68886 (_ BitVec 32)) Bool)

(assert (=> b!1073940 (= res!716282 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1073941 () Bool)

(declare-fun e!613655 () Bool)

(declare-fun mapRes!40687 () Bool)

(assert (=> b!1073941 (= e!613657 (and e!613655 mapRes!40687))))

(declare-fun condMapEmpty!40687 () Bool)

(declare-fun mapDefault!40687 () ValueCell!12286)

