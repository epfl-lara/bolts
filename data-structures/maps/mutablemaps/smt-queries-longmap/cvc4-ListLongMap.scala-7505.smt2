; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95168 () Bool)

(assert start!95168)

(declare-fun b_free!22211 () Bool)

(declare-fun b_next!22211 () Bool)

(assert (=> start!95168 (= b_free!22211 (not b_next!22211))))

(declare-fun tp!78120 () Bool)

(declare-fun b_and!35159 () Bool)

(assert (=> start!95168 (= tp!78120 b_and!35159)))

(declare-fun mapNonEmpty!40765 () Bool)

(declare-fun mapRes!40765 () Bool)

(declare-fun tp!78119 () Bool)

(declare-fun e!614616 () Bool)

(assert (=> mapNonEmpty!40765 (= mapRes!40765 (and tp!78119 e!614616))))

(declare-datatypes ((V!39829 0))(
  ( (V!39830 (val!13061 Int)) )
))
(declare-datatypes ((ValueCell!12307 0))(
  ( (ValueCellFull!12307 (v!15686 V!39829)) (EmptyCell!12307) )
))
(declare-fun mapValue!40765 () ValueCell!12307)

(declare-fun mapRest!40765 () (Array (_ BitVec 32) ValueCell!12307))

(declare-datatypes ((array!68972 0))(
  ( (array!68973 (arr!33169 (Array (_ BitVec 32) ValueCell!12307)) (size!33706 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68972)

(declare-fun mapKey!40765 () (_ BitVec 32))

(assert (=> mapNonEmpty!40765 (= (arr!33169 _values!955) (store mapRest!40765 mapKey!40765 mapValue!40765))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun e!614617 () Bool)

(declare-fun minValue!907 () V!39829)

(declare-datatypes ((array!68974 0))(
  ( (array!68975 (arr!33170 (Array (_ BitVec 32) (_ BitVec 64))) (size!33707 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68974)

(declare-fun b!1075346 () Bool)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39829)

(declare-datatypes ((tuple2!16708 0))(
  ( (tuple2!16709 (_1!8364 (_ BitVec 64)) (_2!8364 V!39829)) )
))
(declare-datatypes ((List!23281 0))(
  ( (Nil!23278) (Cons!23277 (h!24486 tuple2!16708) (t!32639 List!23281)) )
))
(declare-datatypes ((ListLongMap!14689 0))(
  ( (ListLongMap!14690 (toList!7360 List!23281)) )
))
(declare-fun lt!477320 () ListLongMap!14689)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun getCurrentListMap!4197 (array!68974 array!68972 (_ BitVec 32) (_ BitVec 32) V!39829 V!39829 (_ BitVec 32) Int) ListLongMap!14689)

(assert (=> b!1075346 (= e!614617 (= lt!477320 (getCurrentListMap!4197 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963)))))

(declare-fun lt!477323 () ListLongMap!14689)

(assert (=> b!1075346 (= lt!477320 lt!477323)))

(declare-fun -!711 (ListLongMap!14689 (_ BitVec 64)) ListLongMap!14689)

(assert (=> b!1075346 (= lt!477320 (-!711 lt!477323 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!35353 0))(
  ( (Unit!35354) )
))
(declare-fun lt!477322 () Unit!35353)

(declare-fun removeNotPresentStillSame!75 (ListLongMap!14689 (_ BitVec 64)) Unit!35353)

(assert (=> b!1075346 (= lt!477322 (removeNotPresentStillSame!75 lt!477323 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!716982 () Bool)

(declare-fun e!614618 () Bool)

(assert (=> start!95168 (=> (not res!716982) (not e!614618))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95168 (= res!716982 (validMask!0 mask!1515))))

(assert (=> start!95168 e!614618))

(assert (=> start!95168 true))

(declare-fun tp_is_empty!26021 () Bool)

(assert (=> start!95168 tp_is_empty!26021))

(declare-fun e!614619 () Bool)

(declare-fun array_inv!25484 (array!68972) Bool)

(assert (=> start!95168 (and (array_inv!25484 _values!955) e!614619)))

(assert (=> start!95168 tp!78120))

(declare-fun array_inv!25485 (array!68974) Bool)

(assert (=> start!95168 (array_inv!25485 _keys!1163)))

(declare-fun b!1075347 () Bool)

(declare-fun res!716983 () Bool)

(assert (=> b!1075347 (=> (not res!716983) (not e!614618))))

(declare-datatypes ((List!23282 0))(
  ( (Nil!23279) (Cons!23278 (h!24487 (_ BitVec 64)) (t!32640 List!23282)) )
))
(declare-fun arrayNoDuplicates!0 (array!68974 (_ BitVec 32) List!23282) Bool)

(assert (=> b!1075347 (= res!716983 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23279))))

(declare-fun b!1075348 () Bool)

(declare-fun e!614621 () Bool)

(assert (=> b!1075348 (= e!614621 e!614617)))

(declare-fun res!716985 () Bool)

(assert (=> b!1075348 (=> res!716985 e!614617)))

(declare-fun contains!6363 (ListLongMap!14689 (_ BitVec 64)) Bool)

(assert (=> b!1075348 (= res!716985 (contains!6363 lt!477323 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!39829)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1075348 (= lt!477323 (getCurrentListMap!4197 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1075349 () Bool)

(declare-fun res!716984 () Bool)

(assert (=> b!1075349 (=> (not res!716984) (not e!614618))))

(assert (=> b!1075349 (= res!716984 (and (= (size!33706 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33707 _keys!1163) (size!33706 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1075350 () Bool)

(declare-fun e!614622 () Bool)

(assert (=> b!1075350 (= e!614622 tp_is_empty!26021)))

(declare-fun b!1075351 () Bool)

(assert (=> b!1075351 (= e!614619 (and e!614622 mapRes!40765))))

(declare-fun condMapEmpty!40765 () Bool)

(declare-fun mapDefault!40765 () ValueCell!12307)

