; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94488 () Bool)

(assert start!94488)

(declare-fun b_free!21779 () Bool)

(declare-fun b_next!21779 () Bool)

(assert (=> start!94488 (= b_free!21779 (not b_next!21779))))

(declare-fun tp!76785 () Bool)

(declare-fun b_and!34589 () Bool)

(assert (=> start!94488 (= tp!76785 b_and!34589)))

(declare-fun b!1067967 () Bool)

(declare-fun e!609280 () Bool)

(declare-fun e!609277 () Bool)

(assert (=> b!1067967 (= e!609280 (not e!609277))))

(declare-fun res!712755 () Bool)

(assert (=> b!1067967 (=> res!712755 e!609277)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1067967 (= res!712755 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!39253 0))(
  ( (V!39254 (val!12845 Int)) )
))
(declare-datatypes ((tuple2!16386 0))(
  ( (tuple2!16387 (_1!8203 (_ BitVec 64)) (_2!8203 V!39253)) )
))
(declare-datatypes ((List!22977 0))(
  ( (Nil!22974) (Cons!22973 (h!24182 tuple2!16386) (t!32309 List!22977)) )
))
(declare-datatypes ((ListLongMap!14367 0))(
  ( (ListLongMap!14368 (toList!7199 List!22977)) )
))
(declare-fun lt!471734 () ListLongMap!14367)

(declare-fun lt!471731 () ListLongMap!14367)

(assert (=> b!1067967 (= lt!471734 lt!471731)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39253)

(declare-datatypes ((ValueCell!12091 0))(
  ( (ValueCellFull!12091 (v!15460 V!39253)) (EmptyCell!12091) )
))
(declare-datatypes ((array!68132 0))(
  ( (array!68133 (arr!32762 (Array (_ BitVec 32) ValueCell!12091)) (size!33299 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68132)

(declare-fun minValue!907 () V!39253)

(declare-datatypes ((Unit!35064 0))(
  ( (Unit!35065) )
))
(declare-fun lt!471733 () Unit!35064)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39253)

(declare-datatypes ((array!68134 0))(
  ( (array!68135 (arr!32763 (Array (_ BitVec 32) (_ BitVec 64))) (size!33300 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68134)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!783 (array!68134 array!68132 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39253 V!39253 V!39253 V!39253 (_ BitVec 32) Int) Unit!35064)

(assert (=> b!1067967 (= lt!471733 (lemmaNoChangeToArrayThenSameMapNoExtras!783 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3744 (array!68134 array!68132 (_ BitVec 32) (_ BitVec 32) V!39253 V!39253 (_ BitVec 32) Int) ListLongMap!14367)

(assert (=> b!1067967 (= lt!471731 (getCurrentListMapNoExtraKeys!3744 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067967 (= lt!471734 (getCurrentListMapNoExtraKeys!3744 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067968 () Bool)

(declare-fun res!712752 () Bool)

(assert (=> b!1067968 (=> (not res!712752) (not e!609280))))

(declare-datatypes ((List!22978 0))(
  ( (Nil!22975) (Cons!22974 (h!24183 (_ BitVec 64)) (t!32310 List!22978)) )
))
(declare-fun arrayNoDuplicates!0 (array!68134 (_ BitVec 32) List!22978) Bool)

(assert (=> b!1067968 (= res!712752 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22975))))

(declare-fun b!1067969 () Bool)

(declare-fun e!609281 () Bool)

(declare-fun e!609278 () Bool)

(declare-fun mapRes!40078 () Bool)

(assert (=> b!1067969 (= e!609281 (and e!609278 mapRes!40078))))

(declare-fun condMapEmpty!40078 () Bool)

(declare-fun mapDefault!40078 () ValueCell!12091)

