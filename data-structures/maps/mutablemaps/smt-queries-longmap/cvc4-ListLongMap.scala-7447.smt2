; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94616 () Bool)

(assert start!94616)

(declare-fun b_free!21863 () Bool)

(declare-fun b_next!21863 () Bool)

(assert (=> start!94616 (= b_free!21863 (not b_next!21863))))

(declare-fun tp!77043 () Bool)

(declare-fun b_and!34693 () Bool)

(assert (=> start!94616 (= tp!77043 b_and!34693)))

(declare-fun b!1069399 () Bool)

(declare-fun e!610342 () Bool)

(declare-fun tp_is_empty!25673 () Bool)

(assert (=> b!1069399 (= e!610342 tp_is_empty!25673)))

(declare-fun mapNonEmpty!40210 () Bool)

(declare-fun mapRes!40210 () Bool)

(declare-fun tp!77042 () Bool)

(declare-fun e!610344 () Bool)

(assert (=> mapNonEmpty!40210 (= mapRes!40210 (and tp!77042 e!610344))))

(declare-fun mapKey!40210 () (_ BitVec 32))

(declare-datatypes ((V!39365 0))(
  ( (V!39366 (val!12887 Int)) )
))
(declare-datatypes ((ValueCell!12133 0))(
  ( (ValueCellFull!12133 (v!15504 V!39365)) (EmptyCell!12133) )
))
(declare-fun mapRest!40210 () (Array (_ BitVec 32) ValueCell!12133))

(declare-datatypes ((array!68294 0))(
  ( (array!68295 (arr!32841 (Array (_ BitVec 32) ValueCell!12133)) (size!33378 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68294)

(declare-fun mapValue!40210 () ValueCell!12133)

(assert (=> mapNonEmpty!40210 (= (arr!32841 _values!955) (store mapRest!40210 mapKey!40210 mapValue!40210))))

(declare-fun b!1069400 () Bool)

(declare-fun res!713617 () Bool)

(declare-fun e!610343 () Bool)

(assert (=> b!1069400 (=> (not res!713617) (not e!610343))))

(declare-datatypes ((array!68296 0))(
  ( (array!68297 (arr!32842 (Array (_ BitVec 32) (_ BitVec 64))) (size!33379 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68296)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68296 (_ BitVec 32)) Bool)

(assert (=> b!1069400 (= res!713617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1069401 () Bool)

(declare-fun res!713615 () Bool)

(assert (=> b!1069401 (=> (not res!713615) (not e!610343))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1069401 (= res!713615 (and (= (size!33378 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33379 _keys!1163) (size!33378 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!40210 () Bool)

(assert (=> mapIsEmpty!40210 mapRes!40210))

(declare-fun res!713616 () Bool)

(assert (=> start!94616 (=> (not res!713616) (not e!610343))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94616 (= res!713616 (validMask!0 mask!1515))))

(assert (=> start!94616 e!610343))

(assert (=> start!94616 true))

(assert (=> start!94616 tp_is_empty!25673))

(declare-fun e!610345 () Bool)

(declare-fun array_inv!25258 (array!68294) Bool)

(assert (=> start!94616 (and (array_inv!25258 _values!955) e!610345)))

(assert (=> start!94616 tp!77043))

(declare-fun array_inv!25259 (array!68296) Bool)

(assert (=> start!94616 (array_inv!25259 _keys!1163)))

(declare-fun b!1069402 () Bool)

(assert (=> b!1069402 (= e!610345 (and e!610342 mapRes!40210))))

(declare-fun condMapEmpty!40210 () Bool)

(declare-fun mapDefault!40210 () ValueCell!12133)

