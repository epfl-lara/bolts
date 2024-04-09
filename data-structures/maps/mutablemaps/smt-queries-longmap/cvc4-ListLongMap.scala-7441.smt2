; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94558 () Bool)

(assert start!94558)

(declare-fun b_free!21827 () Bool)

(declare-fun b_next!21827 () Bool)

(assert (=> start!94558 (= b_free!21827 (not b_next!21827))))

(declare-fun tp!76931 () Bool)

(declare-fun b_and!34647 () Bool)

(assert (=> start!94558 (= tp!76931 b_and!34647)))

(declare-fun b!1068772 () Bool)

(declare-fun res!713250 () Bool)

(declare-fun e!609886 () Bool)

(assert (=> b!1068772 (=> (not res!713250) (not e!609886))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-datatypes ((V!39317 0))(
  ( (V!39318 (val!12869 Int)) )
))
(declare-datatypes ((ValueCell!12115 0))(
  ( (ValueCellFull!12115 (v!15485 V!39317)) (EmptyCell!12115) )
))
(declare-datatypes ((array!68224 0))(
  ( (array!68225 (arr!32807 (Array (_ BitVec 32) ValueCell!12115)) (size!33344 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68224)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68226 0))(
  ( (array!68227 (arr!32808 (Array (_ BitVec 32) (_ BitVec 64))) (size!33345 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68226)

(assert (=> b!1068772 (= res!713250 (and (= (size!33344 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33345 _keys!1163) (size!33344 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!40153 () Bool)

(declare-fun mapRes!40153 () Bool)

(declare-fun tp!76932 () Bool)

(declare-fun e!609885 () Bool)

(assert (=> mapNonEmpty!40153 (= mapRes!40153 (and tp!76932 e!609885))))

(declare-fun mapRest!40153 () (Array (_ BitVec 32) ValueCell!12115))

(declare-fun mapKey!40153 () (_ BitVec 32))

(declare-fun mapValue!40153 () ValueCell!12115)

(assert (=> mapNonEmpty!40153 (= (arr!32807 _values!955) (store mapRest!40153 mapKey!40153 mapValue!40153))))

(declare-fun b!1068773 () Bool)

(declare-fun e!609884 () Bool)

(declare-fun tp_is_empty!25637 () Bool)

(assert (=> b!1068773 (= e!609884 tp_is_empty!25637)))

(declare-fun b!1068774 () Bool)

(assert (=> b!1068774 (= e!609885 tp_is_empty!25637)))

(declare-fun res!713247 () Bool)

(assert (=> start!94558 (=> (not res!713247) (not e!609886))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94558 (= res!713247 (validMask!0 mask!1515))))

(assert (=> start!94558 e!609886))

(assert (=> start!94558 true))

(assert (=> start!94558 tp_is_empty!25637))

(declare-fun e!609881 () Bool)

(declare-fun array_inv!25234 (array!68224) Bool)

(assert (=> start!94558 (and (array_inv!25234 _values!955) e!609881)))

(assert (=> start!94558 tp!76931))

(declare-fun array_inv!25235 (array!68226) Bool)

(assert (=> start!94558 (array_inv!25235 _keys!1163)))

(declare-fun b!1068775 () Bool)

(declare-fun e!609880 () Bool)

(assert (=> b!1068775 (= e!609880 true)))

(declare-datatypes ((tuple2!16424 0))(
  ( (tuple2!16425 (_1!8222 (_ BitVec 64)) (_2!8222 V!39317)) )
))
(declare-datatypes ((List!23013 0))(
  ( (Nil!23010) (Cons!23009 (h!24218 tuple2!16424) (t!32347 List!23013)) )
))
(declare-datatypes ((ListLongMap!14405 0))(
  ( (ListLongMap!14406 (toList!7218 List!23013)) )
))
(declare-fun lt!472214 () ListLongMap!14405)

(declare-fun -!653 (ListLongMap!14405 (_ BitVec 64)) ListLongMap!14405)

(assert (=> b!1068775 (= (-!653 lt!472214 #b0000000000000000000000000000000000000000000000000000000000000000) lt!472214)))

(declare-datatypes ((Unit!35100 0))(
  ( (Unit!35101) )
))
(declare-fun lt!472217 () Unit!35100)

(declare-fun removeNotPresentStillSame!62 (ListLongMap!14405 (_ BitVec 64)) Unit!35100)

(assert (=> b!1068775 (= lt!472217 (removeNotPresentStillSame!62 lt!472214 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!40153 () Bool)

(assert (=> mapIsEmpty!40153 mapRes!40153))

(declare-fun b!1068776 () Bool)

(assert (=> b!1068776 (= e!609881 (and e!609884 mapRes!40153))))

(declare-fun condMapEmpty!40153 () Bool)

(declare-fun mapDefault!40153 () ValueCell!12115)

