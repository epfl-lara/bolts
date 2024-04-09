; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94618 () Bool)

(assert start!94618)

(declare-fun b_free!21865 () Bool)

(declare-fun b_next!21865 () Bool)

(assert (=> start!94618 (= b_free!21865 (not b_next!21865))))

(declare-fun tp!77049 () Bool)

(declare-fun b_and!34695 () Bool)

(assert (=> start!94618 (= tp!77049 b_and!34695)))

(declare-fun b!1069420 () Bool)

(declare-fun e!610360 () Bool)

(declare-fun tp_is_empty!25675 () Bool)

(assert (=> b!1069420 (= e!610360 tp_is_empty!25675)))

(declare-fun mapNonEmpty!40213 () Bool)

(declare-fun mapRes!40213 () Bool)

(declare-fun tp!77048 () Bool)

(assert (=> mapNonEmpty!40213 (= mapRes!40213 (and tp!77048 e!610360))))

(declare-fun mapKey!40213 () (_ BitVec 32))

(declare-datatypes ((V!39369 0))(
  ( (V!39370 (val!12888 Int)) )
))
(declare-datatypes ((ValueCell!12134 0))(
  ( (ValueCellFull!12134 (v!15505 V!39369)) (EmptyCell!12134) )
))
(declare-fun mapValue!40213 () ValueCell!12134)

(declare-datatypes ((array!68298 0))(
  ( (array!68299 (arr!32843 (Array (_ BitVec 32) ValueCell!12134)) (size!33380 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68298)

(declare-fun mapRest!40213 () (Array (_ BitVec 32) ValueCell!12134))

(assert (=> mapNonEmpty!40213 (= (arr!32843 _values!955) (store mapRest!40213 mapKey!40213 mapValue!40213))))

(declare-fun b!1069421 () Bool)

(declare-fun res!713627 () Bool)

(declare-fun e!610358 () Bool)

(assert (=> b!1069421 (=> (not res!713627) (not e!610358))))

(declare-datatypes ((array!68300 0))(
  ( (array!68301 (arr!32844 (Array (_ BitVec 32) (_ BitVec 64))) (size!33381 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68300)

(declare-datatypes ((List!23038 0))(
  ( (Nil!23035) (Cons!23034 (h!24243 (_ BitVec 64)) (t!32374 List!23038)) )
))
(declare-fun arrayNoDuplicates!0 (array!68300 (_ BitVec 32) List!23038) Bool)

(assert (=> b!1069421 (= res!713627 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23035))))

(declare-fun b!1069422 () Bool)

(declare-fun res!713626 () Bool)

(assert (=> b!1069422 (=> (not res!713626) (not e!610358))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68300 (_ BitVec 32)) Bool)

(assert (=> b!1069422 (= res!713626 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1069423 () Bool)

(declare-fun res!713628 () Bool)

(assert (=> b!1069423 (=> (not res!713628) (not e!610358))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1069423 (= res!713628 (and (= (size!33380 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33381 _keys!1163) (size!33380 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1069424 () Bool)

(declare-fun e!610357 () Bool)

(assert (=> b!1069424 (= e!610357 tp_is_empty!25675)))

(declare-fun res!713629 () Bool)

(assert (=> start!94618 (=> (not res!713629) (not e!610358))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94618 (= res!713629 (validMask!0 mask!1515))))

(assert (=> start!94618 e!610358))

(assert (=> start!94618 true))

(assert (=> start!94618 tp_is_empty!25675))

(declare-fun e!610361 () Bool)

(declare-fun array_inv!25260 (array!68298) Bool)

(assert (=> start!94618 (and (array_inv!25260 _values!955) e!610361)))

(assert (=> start!94618 tp!77049))

(declare-fun array_inv!25261 (array!68300) Bool)

(assert (=> start!94618 (array_inv!25261 _keys!1163)))

(declare-fun b!1069425 () Bool)

(assert (=> b!1069425 (= e!610358 (not true))))

(declare-datatypes ((tuple2!16450 0))(
  ( (tuple2!16451 (_1!8235 (_ BitVec 64)) (_2!8235 V!39369)) )
))
(declare-datatypes ((List!23039 0))(
  ( (Nil!23036) (Cons!23035 (h!24244 tuple2!16450) (t!32375 List!23039)) )
))
(declare-datatypes ((ListLongMap!14431 0))(
  ( (ListLongMap!14432 (toList!7231 List!23039)) )
))
(declare-fun lt!472603 () ListLongMap!14431)

(declare-fun lt!472602 () ListLongMap!14431)

(assert (=> b!1069425 (= lt!472603 lt!472602)))

(declare-fun zeroValueBefore!47 () V!39369)

(declare-datatypes ((Unit!35128 0))(
  ( (Unit!35129) )
))
(declare-fun lt!472601 () Unit!35128)

(declare-fun minValue!907 () V!39369)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39369)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!807 (array!68300 array!68298 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39369 V!39369 V!39369 V!39369 (_ BitVec 32) Int) Unit!35128)

(assert (=> b!1069425 (= lt!472601 (lemmaNoChangeToArrayThenSameMapNoExtras!807 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3768 (array!68300 array!68298 (_ BitVec 32) (_ BitVec 32) V!39369 V!39369 (_ BitVec 32) Int) ListLongMap!14431)

(assert (=> b!1069425 (= lt!472602 (getCurrentListMapNoExtraKeys!3768 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1069425 (= lt!472603 (getCurrentListMapNoExtraKeys!3768 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40213 () Bool)

(assert (=> mapIsEmpty!40213 mapRes!40213))

(declare-fun b!1069426 () Bool)

(assert (=> b!1069426 (= e!610361 (and e!610357 mapRes!40213))))

(declare-fun condMapEmpty!40213 () Bool)

(declare-fun mapDefault!40213 () ValueCell!12134)

