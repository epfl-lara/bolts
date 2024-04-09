; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94024 () Bool)

(assert start!94024)

(declare-fun b_free!21425 () Bool)

(declare-fun b_next!21425 () Bool)

(assert (=> start!94024 (= b_free!21425 (not b_next!21425))))

(declare-fun tp!75704 () Bool)

(declare-fun b_and!34175 () Bool)

(assert (=> start!94024 (= tp!75704 b_and!34175)))

(declare-fun b!1062921 () Bool)

(declare-fun e!605593 () Bool)

(declare-fun tp_is_empty!25235 () Bool)

(assert (=> b!1062921 (= e!605593 tp_is_empty!25235)))

(declare-fun res!709801 () Bool)

(declare-fun e!605598 () Bool)

(assert (=> start!94024 (=> (not res!709801) (not e!605598))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94024 (= res!709801 (validMask!0 mask!1515))))

(assert (=> start!94024 e!605598))

(assert (=> start!94024 true))

(assert (=> start!94024 tp_is_empty!25235))

(declare-datatypes ((V!38781 0))(
  ( (V!38782 (val!12668 Int)) )
))
(declare-datatypes ((ValueCell!11914 0))(
  ( (ValueCellFull!11914 (v!15280 V!38781)) (EmptyCell!11914) )
))
(declare-datatypes ((array!67446 0))(
  ( (array!67447 (arr!32425 (Array (_ BitVec 32) ValueCell!11914)) (size!32962 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67446)

(declare-fun e!605597 () Bool)

(declare-fun array_inv!24956 (array!67446) Bool)

(assert (=> start!94024 (and (array_inv!24956 _values!955) e!605597)))

(assert (=> start!94024 tp!75704))

(declare-datatypes ((array!67448 0))(
  ( (array!67449 (arr!32426 (Array (_ BitVec 32) (_ BitVec 64))) (size!32963 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67448)

(declare-fun array_inv!24957 (array!67448) Bool)

(assert (=> start!94024 (array_inv!24957 _keys!1163)))

(declare-fun b!1062922 () Bool)

(declare-fun res!709802 () Bool)

(assert (=> b!1062922 (=> (not res!709802) (not e!605598))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1062922 (= res!709802 (and (= (size!32962 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32963 _keys!1163) (size!32962 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1062923 () Bool)

(declare-fun e!605596 () Bool)

(assert (=> b!1062923 (= e!605596 tp_is_empty!25235)))

(declare-fun mapNonEmpty!39529 () Bool)

(declare-fun mapRes!39529 () Bool)

(declare-fun tp!75705 () Bool)

(assert (=> mapNonEmpty!39529 (= mapRes!39529 (and tp!75705 e!605596))))

(declare-fun mapValue!39529 () ValueCell!11914)

(declare-fun mapRest!39529 () (Array (_ BitVec 32) ValueCell!11914))

(declare-fun mapKey!39529 () (_ BitVec 32))

(assert (=> mapNonEmpty!39529 (= (arr!32425 _values!955) (store mapRest!39529 mapKey!39529 mapValue!39529))))

(declare-fun b!1062924 () Bool)

(assert (=> b!1062924 (= e!605597 (and e!605593 mapRes!39529))))

(declare-fun condMapEmpty!39529 () Bool)

(declare-fun mapDefault!39529 () ValueCell!11914)

