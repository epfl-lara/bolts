; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94636 () Bool)

(assert start!94636)

(declare-fun b_free!21883 () Bool)

(declare-fun b_next!21883 () Bool)

(assert (=> start!94636 (= b_free!21883 (not b_next!21883))))

(declare-fun tp!77102 () Bool)

(declare-fun b_and!34713 () Bool)

(assert (=> start!94636 (= tp!77102 b_and!34713)))

(declare-fun b!1069609 () Bool)

(declare-fun e!610492 () Bool)

(declare-fun tp_is_empty!25693 () Bool)

(assert (=> b!1069609 (= e!610492 tp_is_empty!25693)))

(declare-fun b!1069610 () Bool)

(declare-fun res!713734 () Bool)

(declare-fun e!610496 () Bool)

(assert (=> b!1069610 (=> (not res!713734) (not e!610496))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39393 0))(
  ( (V!39394 (val!12897 Int)) )
))
(declare-datatypes ((ValueCell!12143 0))(
  ( (ValueCellFull!12143 (v!15514 V!39393)) (EmptyCell!12143) )
))
(declare-datatypes ((array!68334 0))(
  ( (array!68335 (arr!32861 (Array (_ BitVec 32) ValueCell!12143)) (size!33398 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68334)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68336 0))(
  ( (array!68337 (arr!32862 (Array (_ BitVec 32) (_ BitVec 64))) (size!33399 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68336)

(assert (=> b!1069610 (= res!713734 (and (= (size!33398 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33399 _keys!1163) (size!33398 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!40240 () Bool)

(declare-fun mapRes!40240 () Bool)

(declare-fun tp!77103 () Bool)

(assert (=> mapNonEmpty!40240 (= mapRes!40240 (and tp!77103 e!610492))))

(declare-fun mapValue!40240 () ValueCell!12143)

(declare-fun mapKey!40240 () (_ BitVec 32))

(declare-fun mapRest!40240 () (Array (_ BitVec 32) ValueCell!12143))

(assert (=> mapNonEmpty!40240 (= (arr!32861 _values!955) (store mapRest!40240 mapKey!40240 mapValue!40240))))

(declare-fun mapIsEmpty!40240 () Bool)

(assert (=> mapIsEmpty!40240 mapRes!40240))

(declare-fun b!1069611 () Bool)

(declare-fun res!713736 () Bool)

(assert (=> b!1069611 (=> (not res!713736) (not e!610496))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68336 (_ BitVec 32)) Bool)

(assert (=> b!1069611 (= res!713736 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!713737 () Bool)

(assert (=> start!94636 (=> (not res!713737) (not e!610496))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94636 (= res!713737 (validMask!0 mask!1515))))

(assert (=> start!94636 e!610496))

(assert (=> start!94636 true))

(assert (=> start!94636 tp_is_empty!25693))

(declare-fun e!610494 () Bool)

(declare-fun array_inv!25274 (array!68334) Bool)

(assert (=> start!94636 (and (array_inv!25274 _values!955) e!610494)))

(assert (=> start!94636 tp!77102))

(declare-fun array_inv!25275 (array!68336) Bool)

(assert (=> start!94636 (array_inv!25275 _keys!1163)))

(declare-fun b!1069612 () Bool)

(declare-fun res!713735 () Bool)

(assert (=> b!1069612 (=> (not res!713735) (not e!610496))))

(declare-datatypes ((List!23053 0))(
  ( (Nil!23050) (Cons!23049 (h!24258 (_ BitVec 64)) (t!32389 List!23053)) )
))
(declare-fun arrayNoDuplicates!0 (array!68336 (_ BitVec 32) List!23053) Bool)

(assert (=> b!1069612 (= res!713735 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23050))))

(declare-fun b!1069613 () Bool)

(declare-fun e!610493 () Bool)

(assert (=> b!1069613 (= e!610494 (and e!610493 mapRes!40240))))

(declare-fun condMapEmpty!40240 () Bool)

(declare-fun mapDefault!40240 () ValueCell!12143)

