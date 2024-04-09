; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94036 () Bool)

(assert start!94036)

(declare-fun b_free!21437 () Bool)

(declare-fun b_next!21437 () Bool)

(assert (=> start!94036 (= b_free!21437 (not b_next!21437))))

(declare-fun tp!75740 () Bool)

(declare-fun b_and!34187 () Bool)

(assert (=> start!94036 (= tp!75740 b_and!34187)))

(declare-fun b!1063083 () Bool)

(declare-fun e!605725 () Bool)

(assert (=> b!1063083 (= e!605725 true)))

(declare-datatypes ((V!38797 0))(
  ( (V!38798 (val!12674 Int)) )
))
(declare-datatypes ((tuple2!16132 0))(
  ( (tuple2!16133 (_1!8076 (_ BitVec 64)) (_2!8076 V!38797)) )
))
(declare-datatypes ((List!22739 0))(
  ( (Nil!22736) (Cons!22735 (h!23944 tuple2!16132) (t!32059 List!22739)) )
))
(declare-datatypes ((ListLongMap!14113 0))(
  ( (ListLongMap!14114 (toList!7072 List!22739)) )
))
(declare-fun lt!468498 () ListLongMap!14113)

(declare-fun -!582 (ListLongMap!14113 (_ BitVec 64)) ListLongMap!14113)

(assert (=> b!1063083 (= (-!582 lt!468498 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468498)))

(declare-datatypes ((Unit!34809 0))(
  ( (Unit!34810) )
))
(declare-fun lt!468499 () Unit!34809)

(declare-fun removeNotPresentStillSame!28 (ListLongMap!14113 (_ BitVec 64)) Unit!34809)

(assert (=> b!1063083 (= lt!468499 (removeNotPresentStillSame!28 lt!468498 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!709910 () Bool)

(declare-fun e!605720 () Bool)

(assert (=> start!94036 (=> (not res!709910) (not e!605720))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94036 (= res!709910 (validMask!0 mask!1515))))

(assert (=> start!94036 e!605720))

(assert (=> start!94036 true))

(declare-fun tp_is_empty!25247 () Bool)

(assert (=> start!94036 tp_is_empty!25247))

(declare-datatypes ((ValueCell!11920 0))(
  ( (ValueCellFull!11920 (v!15286 V!38797)) (EmptyCell!11920) )
))
(declare-datatypes ((array!67470 0))(
  ( (array!67471 (arr!32437 (Array (_ BitVec 32) ValueCell!11920)) (size!32974 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67470)

(declare-fun e!605724 () Bool)

(declare-fun array_inv!24966 (array!67470) Bool)

(assert (=> start!94036 (and (array_inv!24966 _values!955) e!605724)))

(assert (=> start!94036 tp!75740))

(declare-datatypes ((array!67472 0))(
  ( (array!67473 (arr!32438 (Array (_ BitVec 32) (_ BitVec 64))) (size!32975 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67472)

(declare-fun array_inv!24967 (array!67472) Bool)

(assert (=> start!94036 (array_inv!24967 _keys!1163)))

(declare-fun b!1063084 () Bool)

(declare-fun e!605723 () Bool)

(assert (=> b!1063084 (= e!605723 tp_is_empty!25247)))

(declare-fun mapNonEmpty!39547 () Bool)

(declare-fun mapRes!39547 () Bool)

(declare-fun tp!75741 () Bool)

(declare-fun e!605721 () Bool)

(assert (=> mapNonEmpty!39547 (= mapRes!39547 (and tp!75741 e!605721))))

(declare-fun mapKey!39547 () (_ BitVec 32))

(declare-fun mapRest!39547 () (Array (_ BitVec 32) ValueCell!11920))

(declare-fun mapValue!39547 () ValueCell!11920)

(assert (=> mapNonEmpty!39547 (= (arr!32437 _values!955) (store mapRest!39547 mapKey!39547 mapValue!39547))))

(declare-fun mapIsEmpty!39547 () Bool)

(assert (=> mapIsEmpty!39547 mapRes!39547))

(declare-fun b!1063085 () Bool)

(declare-fun res!709909 () Bool)

(assert (=> b!1063085 (=> (not res!709909) (not e!605720))))

(declare-datatypes ((List!22740 0))(
  ( (Nil!22737) (Cons!22736 (h!23945 (_ BitVec 64)) (t!32060 List!22740)) )
))
(declare-fun arrayNoDuplicates!0 (array!67472 (_ BitVec 32) List!22740) Bool)

(assert (=> b!1063085 (= res!709909 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22737))))

(declare-fun b!1063086 () Bool)

(declare-fun e!605719 () Bool)

(assert (=> b!1063086 (= e!605719 e!605725)))

(declare-fun res!709906 () Bool)

(assert (=> b!1063086 (=> res!709906 e!605725)))

(declare-fun contains!6268 (ListLongMap!14113 (_ BitVec 64)) Bool)

(assert (=> b!1063086 (= res!709906 (contains!6268 lt!468498 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!38797)

(declare-fun minValue!907 () V!38797)

(declare-fun defaultEntry!963 () Int)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!4017 (array!67472 array!67470 (_ BitVec 32) (_ BitVec 32) V!38797 V!38797 (_ BitVec 32) Int) ListLongMap!14113)

(assert (=> b!1063086 (= lt!468498 (getCurrentListMap!4017 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063087 () Bool)

(assert (=> b!1063087 (= e!605720 (not e!605719))))

(declare-fun res!709907 () Bool)

(assert (=> b!1063087 (=> res!709907 e!605719)))

(assert (=> b!1063087 (= res!709907 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!468500 () ListLongMap!14113)

(declare-fun lt!468502 () ListLongMap!14113)

(assert (=> b!1063087 (= lt!468500 lt!468502)))

(declare-fun lt!468501 () Unit!34809)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!38797)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!666 (array!67472 array!67470 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38797 V!38797 V!38797 V!38797 (_ BitVec 32) Int) Unit!34809)

(assert (=> b!1063087 (= lt!468501 (lemmaNoChangeToArrayThenSameMapNoExtras!666 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3627 (array!67472 array!67470 (_ BitVec 32) (_ BitVec 32) V!38797 V!38797 (_ BitVec 32) Int) ListLongMap!14113)

(assert (=> b!1063087 (= lt!468502 (getCurrentListMapNoExtraKeys!3627 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1063087 (= lt!468500 (getCurrentListMapNoExtraKeys!3627 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063088 () Bool)

(assert (=> b!1063088 (= e!605721 tp_is_empty!25247)))

(declare-fun b!1063089 () Bool)

(declare-fun res!709908 () Bool)

(assert (=> b!1063089 (=> (not res!709908) (not e!605720))))

(assert (=> b!1063089 (= res!709908 (and (= (size!32974 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32975 _keys!1163) (size!32974 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1063090 () Bool)

(assert (=> b!1063090 (= e!605724 (and e!605723 mapRes!39547))))

(declare-fun condMapEmpty!39547 () Bool)

(declare-fun mapDefault!39547 () ValueCell!11920)

