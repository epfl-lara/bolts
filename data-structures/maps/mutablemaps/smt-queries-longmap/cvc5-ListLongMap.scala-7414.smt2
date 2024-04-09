; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94334 () Bool)

(assert start!94334)

(declare-fun b_free!21661 () Bool)

(declare-fun b_next!21661 () Bool)

(assert (=> start!94334 (= b_free!21661 (not b_next!21661))))

(declare-fun tp!76424 () Bool)

(declare-fun b_and!34451 () Bool)

(assert (=> start!94334 (= tp!76424 b_and!34451)))

(declare-fun b!1066319 () Bool)

(declare-fun e!608080 () Bool)

(declare-fun e!608078 () Bool)

(assert (=> b!1066319 (= e!608080 (not e!608078))))

(declare-fun res!711792 () Bool)

(assert (=> b!1066319 (=> res!711792 e!608078)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1066319 (= res!711792 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39097 0))(
  ( (V!39098 (val!12786 Int)) )
))
(declare-datatypes ((tuple2!16302 0))(
  ( (tuple2!16303 (_1!8161 (_ BitVec 64)) (_2!8161 V!39097)) )
))
(declare-datatypes ((List!22897 0))(
  ( (Nil!22894) (Cons!22893 (h!24102 tuple2!16302) (t!32225 List!22897)) )
))
(declare-datatypes ((ListLongMap!14283 0))(
  ( (ListLongMap!14284 (toList!7157 List!22897)) )
))
(declare-fun lt!470716 () ListLongMap!14283)

(declare-fun lt!470714 () ListLongMap!14283)

(assert (=> b!1066319 (= lt!470716 lt!470714)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39097)

(declare-datatypes ((Unit!34978 0))(
  ( (Unit!34979) )
))
(declare-fun lt!470711 () Unit!34978)

(declare-fun minValue!907 () V!39097)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12032 0))(
  ( (ValueCellFull!12032 (v!15400 V!39097)) (EmptyCell!12032) )
))
(declare-datatypes ((array!67900 0))(
  ( (array!67901 (arr!32648 (Array (_ BitVec 32) ValueCell!12032)) (size!33185 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67900)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39097)

(declare-datatypes ((array!67902 0))(
  ( (array!67903 (arr!32649 (Array (_ BitVec 32) (_ BitVec 64))) (size!33186 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67902)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!743 (array!67902 array!67900 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39097 V!39097 V!39097 V!39097 (_ BitVec 32) Int) Unit!34978)

(assert (=> b!1066319 (= lt!470711 (lemmaNoChangeToArrayThenSameMapNoExtras!743 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3704 (array!67902 array!67900 (_ BitVec 32) (_ BitVec 32) V!39097 V!39097 (_ BitVec 32) Int) ListLongMap!14283)

(assert (=> b!1066319 (= lt!470714 (getCurrentListMapNoExtraKeys!3704 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066319 (= lt!470716 (getCurrentListMapNoExtraKeys!3704 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!711791 () Bool)

(assert (=> start!94334 (=> (not res!711791) (not e!608080))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94334 (= res!711791 (validMask!0 mask!1515))))

(assert (=> start!94334 e!608080))

(assert (=> start!94334 true))

(declare-fun tp_is_empty!25471 () Bool)

(assert (=> start!94334 tp_is_empty!25471))

(declare-fun e!608077 () Bool)

(declare-fun array_inv!25114 (array!67900) Bool)

(assert (=> start!94334 (and (array_inv!25114 _values!955) e!608077)))

(assert (=> start!94334 tp!76424))

(declare-fun array_inv!25115 (array!67902) Bool)

(assert (=> start!94334 (array_inv!25115 _keys!1163)))

(declare-fun b!1066320 () Bool)

(declare-fun e!608079 () Bool)

(declare-fun mapRes!39895 () Bool)

(assert (=> b!1066320 (= e!608077 (and e!608079 mapRes!39895))))

(declare-fun condMapEmpty!39895 () Bool)

(declare-fun mapDefault!39895 () ValueCell!12032)

