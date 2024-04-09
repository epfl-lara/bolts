; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94512 () Bool)

(assert start!94512)

(declare-fun b_free!21803 () Bool)

(declare-fun b_next!21803 () Bool)

(assert (=> start!94512 (= b_free!21803 (not b_next!21803))))

(declare-fun tp!76857 () Bool)

(declare-fun b_and!34613 () Bool)

(assert (=> start!94512 (= tp!76857 b_and!34613)))

(declare-fun b!1068291 () Bool)

(declare-fun res!712969 () Bool)

(declare-fun e!609534 () Bool)

(assert (=> b!1068291 (=> (not res!712969) (not e!609534))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39285 0))(
  ( (V!39286 (val!12857 Int)) )
))
(declare-datatypes ((ValueCell!12103 0))(
  ( (ValueCellFull!12103 (v!15472 V!39285)) (EmptyCell!12103) )
))
(declare-datatypes ((array!68178 0))(
  ( (array!68179 (arr!32785 (Array (_ BitVec 32) ValueCell!12103)) (size!33322 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68178)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68180 0))(
  ( (array!68181 (arr!32786 (Array (_ BitVec 32) (_ BitVec 64))) (size!33323 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68180)

(assert (=> b!1068291 (= res!712969 (and (= (size!33322 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33323 _keys!1163) (size!33322 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1068292 () Bool)

(declare-fun res!712970 () Bool)

(assert (=> b!1068292 (=> (not res!712970) (not e!609534))))

(declare-datatypes ((List!22996 0))(
  ( (Nil!22993) (Cons!22992 (h!24201 (_ BitVec 64)) (t!32328 List!22996)) )
))
(declare-fun arrayNoDuplicates!0 (array!68180 (_ BitVec 32) List!22996) Bool)

(assert (=> b!1068292 (= res!712970 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22993))))

(declare-fun res!712973 () Bool)

(assert (=> start!94512 (=> (not res!712973) (not e!609534))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94512 (= res!712973 (validMask!0 mask!1515))))

(assert (=> start!94512 e!609534))

(assert (=> start!94512 true))

(declare-fun tp_is_empty!25613 () Bool)

(assert (=> start!94512 tp_is_empty!25613))

(declare-fun e!609532 () Bool)

(declare-fun array_inv!25218 (array!68178) Bool)

(assert (=> start!94512 (and (array_inv!25218 _values!955) e!609532)))

(assert (=> start!94512 tp!76857))

(declare-fun array_inv!25219 (array!68180) Bool)

(assert (=> start!94512 (array_inv!25219 _keys!1163)))

(declare-fun b!1068293 () Bool)

(declare-fun e!609530 () Bool)

(declare-fun mapRes!40114 () Bool)

(assert (=> b!1068293 (= e!609532 (and e!609530 mapRes!40114))))

(declare-fun condMapEmpty!40114 () Bool)

(declare-fun mapDefault!40114 () ValueCell!12103)

