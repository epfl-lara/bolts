; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94458 () Bool)

(assert start!94458)

(declare-fun b_free!21749 () Bool)

(declare-fun b_next!21749 () Bool)

(assert (=> start!94458 (= b_free!21749 (not b_next!21749))))

(declare-fun tp!76695 () Bool)

(declare-fun b_and!34559 () Bool)

(assert (=> start!94458 (= tp!76695 b_and!34559)))

(declare-fun b!1067563 () Bool)

(declare-fun e!608967 () Bool)

(declare-fun tp_is_empty!25559 () Bool)

(assert (=> b!1067563 (= e!608967 tp_is_empty!25559)))

(declare-fun b!1067564 () Bool)

(declare-fun res!712484 () Bool)

(declare-fun e!608962 () Bool)

(assert (=> b!1067564 (=> (not res!712484) (not e!608962))))

(declare-datatypes ((array!68072 0))(
  ( (array!68073 (arr!32732 (Array (_ BitVec 32) (_ BitVec 64))) (size!33269 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68072)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68072 (_ BitVec 32)) Bool)

(assert (=> b!1067564 (= res!712484 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1067565 () Bool)

(declare-fun e!608965 () Bool)

(assert (=> b!1067565 (= e!608965 tp_is_empty!25559)))

(declare-fun b!1067566 () Bool)

(declare-fun res!712486 () Bool)

(assert (=> b!1067566 (=> (not res!712486) (not e!608962))))

(declare-datatypes ((V!39213 0))(
  ( (V!39214 (val!12830 Int)) )
))
(declare-datatypes ((ValueCell!12076 0))(
  ( (ValueCellFull!12076 (v!15445 V!39213)) (EmptyCell!12076) )
))
(declare-datatypes ((array!68074 0))(
  ( (array!68075 (arr!32733 (Array (_ BitVec 32) ValueCell!12076)) (size!33270 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68074)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1067566 (= res!712486 (and (= (size!33270 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33269 _keys!1163) (size!33270 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1067567 () Bool)

(declare-fun e!608966 () Bool)

(declare-fun mapRes!40033 () Bool)

(assert (=> b!1067567 (= e!608966 (and e!608965 mapRes!40033))))

(declare-fun condMapEmpty!40033 () Bool)

(declare-fun mapDefault!40033 () ValueCell!12076)

