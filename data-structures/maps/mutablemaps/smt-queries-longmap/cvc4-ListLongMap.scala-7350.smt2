; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93844 () Bool)

(assert start!93844)

(declare-fun b_free!21281 () Bool)

(declare-fun b_next!21281 () Bool)

(assert (=> start!93844 (= b_free!21281 (not b_next!21281))))

(declare-fun tp!75266 () Bool)

(declare-fun b_and!34013 () Bool)

(assert (=> start!93844 (= tp!75266 b_and!34013)))

(declare-fun mapIsEmpty!39307 () Bool)

(declare-fun mapRes!39307 () Bool)

(assert (=> mapIsEmpty!39307 mapRes!39307))

(declare-fun b!1060962 () Bool)

(declare-fun res!708639 () Bool)

(declare-fun e!604154 () Bool)

(assert (=> b!1060962 (=> (not res!708639) (not e!604154))))

(declare-datatypes ((array!67172 0))(
  ( (array!67173 (arr!32290 (Array (_ BitVec 32) (_ BitVec 64))) (size!32827 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67172)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67172 (_ BitVec 32)) Bool)

(assert (=> b!1060962 (= res!708639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1060963 () Bool)

(declare-fun res!708638 () Bool)

(assert (=> b!1060963 (=> (not res!708638) (not e!604154))))

(declare-datatypes ((List!22628 0))(
  ( (Nil!22625) (Cons!22624 (h!23833 (_ BitVec 64)) (t!31944 List!22628)) )
))
(declare-fun arrayNoDuplicates!0 (array!67172 (_ BitVec 32) List!22628) Bool)

(assert (=> b!1060963 (= res!708638 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22625))))

(declare-fun mapNonEmpty!39307 () Bool)

(declare-fun tp!75267 () Bool)

(declare-fun e!604156 () Bool)

(assert (=> mapNonEmpty!39307 (= mapRes!39307 (and tp!75267 e!604156))))

(declare-fun mapKey!39307 () (_ BitVec 32))

(declare-datatypes ((V!38589 0))(
  ( (V!38590 (val!12596 Int)) )
))
(declare-datatypes ((ValueCell!11842 0))(
  ( (ValueCellFull!11842 (v!15207 V!38589)) (EmptyCell!11842) )
))
(declare-fun mapValue!39307 () ValueCell!11842)

(declare-datatypes ((array!67174 0))(
  ( (array!67175 (arr!32291 (Array (_ BitVec 32) ValueCell!11842)) (size!32828 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67174)

(declare-fun mapRest!39307 () (Array (_ BitVec 32) ValueCell!11842))

(assert (=> mapNonEmpty!39307 (= (arr!32291 _values!955) (store mapRest!39307 mapKey!39307 mapValue!39307))))

(declare-fun b!1060964 () Bool)

(declare-fun res!708636 () Bool)

(assert (=> b!1060964 (=> (not res!708636) (not e!604154))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1060964 (= res!708636 (and (= (size!32828 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32827 _keys!1163) (size!32828 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1060965 () Bool)

(declare-fun e!604155 () Bool)

(declare-fun e!604157 () Bool)

(assert (=> b!1060965 (= e!604155 (and e!604157 mapRes!39307))))

(declare-fun condMapEmpty!39307 () Bool)

(declare-fun mapDefault!39307 () ValueCell!11842)

