; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94540 () Bool)

(assert start!94540)

(declare-fun b_free!21809 () Bool)

(declare-fun b_next!21809 () Bool)

(assert (=> start!94540 (= b_free!21809 (not b_next!21809))))

(declare-fun tp!76878 () Bool)

(declare-fun b_and!34629 () Bool)

(assert (=> start!94540 (= tp!76878 b_and!34629)))

(declare-fun b!1068529 () Bool)

(declare-fun res!713086 () Bool)

(declare-fun e!609691 () Bool)

(assert (=> b!1068529 (=> (not res!713086) (not e!609691))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39293 0))(
  ( (V!39294 (val!12860 Int)) )
))
(declare-datatypes ((ValueCell!12106 0))(
  ( (ValueCellFull!12106 (v!15476 V!39293)) (EmptyCell!12106) )
))
(declare-datatypes ((array!68192 0))(
  ( (array!68193 (arr!32791 (Array (_ BitVec 32) ValueCell!12106)) (size!33328 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68192)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68194 0))(
  ( (array!68195 (arr!32792 (Array (_ BitVec 32) (_ BitVec 64))) (size!33329 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68194)

(assert (=> b!1068529 (= res!713086 (and (= (size!33328 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33329 _keys!1163) (size!33328 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1068530 () Bool)

(declare-fun e!609692 () Bool)

(declare-fun e!609695 () Bool)

(assert (=> b!1068530 (= e!609692 e!609695)))

(declare-fun res!713084 () Bool)

(assert (=> b!1068530 (=> res!713084 e!609695)))

(declare-datatypes ((tuple2!16408 0))(
  ( (tuple2!16409 (_1!8214 (_ BitVec 64)) (_2!8214 V!39293)) )
))
(declare-datatypes ((List!22999 0))(
  ( (Nil!22996) (Cons!22995 (h!24204 tuple2!16408) (t!32333 List!22999)) )
))
(declare-datatypes ((ListLongMap!14389 0))(
  ( (ListLongMap!14390 (toList!7210 List!22999)) )
))
(declare-fun lt!472079 () ListLongMap!14389)

(declare-fun contains!6313 (ListLongMap!14389 (_ BitVec 64)) Bool)

(assert (=> b!1068530 (= res!713084 (contains!6313 lt!472079 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!39293)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39293)

(declare-fun getCurrentListMap!4102 (array!68194 array!68192 (_ BitVec 32) (_ BitVec 32) V!39293 V!39293 (_ BitVec 32) Int) ListLongMap!14389)

(assert (=> b!1068530 (= lt!472079 (getCurrentListMap!4102 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1068531 () Bool)

(assert (=> b!1068531 (= e!609695 true)))

(declare-fun -!647 (ListLongMap!14389 (_ BitVec 64)) ListLongMap!14389)

(assert (=> b!1068531 (= (-!647 lt!472079 #b0000000000000000000000000000000000000000000000000000000000000000) lt!472079)))

(declare-datatypes ((Unit!35086 0))(
  ( (Unit!35087) )
))
(declare-fun lt!472083 () Unit!35086)

(declare-fun removeNotPresentStillSame!56 (ListLongMap!14389 (_ BitVec 64)) Unit!35086)

(assert (=> b!1068531 (= lt!472083 (removeNotPresentStillSame!56 lt!472079 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!713087 () Bool)

(assert (=> start!94540 (=> (not res!713087) (not e!609691))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94540 (= res!713087 (validMask!0 mask!1515))))

(assert (=> start!94540 e!609691))

(assert (=> start!94540 true))

(declare-fun tp_is_empty!25619 () Bool)

(assert (=> start!94540 tp_is_empty!25619))

(declare-fun e!609697 () Bool)

(declare-fun array_inv!25224 (array!68192) Bool)

(assert (=> start!94540 (and (array_inv!25224 _values!955) e!609697)))

(assert (=> start!94540 tp!76878))

(declare-fun array_inv!25225 (array!68194) Bool)

(assert (=> start!94540 (array_inv!25225 _keys!1163)))

(declare-fun b!1068532 () Bool)

(declare-fun res!713088 () Bool)

(assert (=> b!1068532 (=> (not res!713088) (not e!609691))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68194 (_ BitVec 32)) Bool)

(assert (=> b!1068532 (= res!713088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1068533 () Bool)

(declare-fun e!609696 () Bool)

(assert (=> b!1068533 (= e!609696 tp_is_empty!25619)))

(declare-fun mapNonEmpty!40126 () Bool)

(declare-fun mapRes!40126 () Bool)

(declare-fun tp!76877 () Bool)

(assert (=> mapNonEmpty!40126 (= mapRes!40126 (and tp!76877 e!609696))))

(declare-fun mapKey!40126 () (_ BitVec 32))

(declare-fun mapValue!40126 () ValueCell!12106)

(declare-fun mapRest!40126 () (Array (_ BitVec 32) ValueCell!12106))

(assert (=> mapNonEmpty!40126 (= (arr!32791 _values!955) (store mapRest!40126 mapKey!40126 mapValue!40126))))

(declare-fun mapIsEmpty!40126 () Bool)

(assert (=> mapIsEmpty!40126 mapRes!40126))

(declare-fun b!1068534 () Bool)

(declare-fun res!713085 () Bool)

(assert (=> b!1068534 (=> (not res!713085) (not e!609691))))

(declare-datatypes ((List!23000 0))(
  ( (Nil!22997) (Cons!22996 (h!24205 (_ BitVec 64)) (t!32334 List!23000)) )
))
(declare-fun arrayNoDuplicates!0 (array!68194 (_ BitVec 32) List!23000) Bool)

(assert (=> b!1068534 (= res!713085 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22997))))

(declare-fun b!1068535 () Bool)

(declare-fun e!609694 () Bool)

(assert (=> b!1068535 (= e!609697 (and e!609694 mapRes!40126))))

(declare-fun condMapEmpty!40126 () Bool)

(declare-fun mapDefault!40126 () ValueCell!12106)

