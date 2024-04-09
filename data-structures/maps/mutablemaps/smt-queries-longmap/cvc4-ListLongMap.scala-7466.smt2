; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94760 () Bool)

(assert start!94760)

(declare-fun b_free!21977 () Bool)

(declare-fun b_next!21977 () Bool)

(assert (=> start!94760 (= b_free!21977 (not b_next!21977))))

(declare-fun tp!77390 () Bool)

(declare-fun b_and!34825 () Bool)

(assert (=> start!94760 (= tp!77390 b_and!34825)))

(declare-fun mapIsEmpty!40387 () Bool)

(declare-fun mapRes!40387 () Bool)

(assert (=> mapIsEmpty!40387 mapRes!40387))

(declare-fun b!1070944 () Bool)

(declare-fun res!714506 () Bool)

(declare-fun e!611466 () Bool)

(assert (=> b!1070944 (=> (not res!714506) (not e!611466))))

(declare-datatypes ((array!68508 0))(
  ( (array!68509 (arr!32946 (Array (_ BitVec 32) (_ BitVec 64))) (size!33483 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68508)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68508 (_ BitVec 32)) Bool)

(assert (=> b!1070944 (= res!714506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1070945 () Bool)

(declare-fun res!714504 () Bool)

(assert (=> b!1070945 (=> (not res!714504) (not e!611466))))

(declare-datatypes ((V!39517 0))(
  ( (V!39518 (val!12944 Int)) )
))
(declare-datatypes ((ValueCell!12190 0))(
  ( (ValueCellFull!12190 (v!15561 V!39517)) (EmptyCell!12190) )
))
(declare-datatypes ((array!68510 0))(
  ( (array!68511 (arr!32947 (Array (_ BitVec 32) ValueCell!12190)) (size!33484 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68510)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1070945 (= res!714504 (and (= (size!33484 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33483 _keys!1163) (size!33484 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1070946 () Bool)

(declare-fun e!611461 () Bool)

(declare-fun e!611463 () Bool)

(assert (=> b!1070946 (= e!611461 (and e!611463 mapRes!40387))))

(declare-fun condMapEmpty!40387 () Bool)

(declare-fun mapDefault!40387 () ValueCell!12190)

