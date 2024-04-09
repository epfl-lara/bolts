; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70022 () Bool)

(assert start!70022)

(declare-fun b_free!12419 () Bool)

(declare-fun b_next!12419 () Bool)

(assert (=> start!70022 (= b_free!12419 (not b_next!12419))))

(declare-fun tp!43972 () Bool)

(declare-fun b_and!21209 () Bool)

(assert (=> start!70022 (= tp!43972 b_and!21209)))

(declare-fun mapIsEmpty!22774 () Bool)

(declare-fun mapRes!22774 () Bool)

(assert (=> mapIsEmpty!22774 mapRes!22774))

(declare-fun b!813395 () Bool)

(declare-fun res!555783 () Bool)

(declare-fun e!450769 () Bool)

(assert (=> b!813395 (=> (not res!555783) (not e!450769))))

(declare-datatypes ((array!44448 0))(
  ( (array!44449 (arr!21280 (Array (_ BitVec 32) (_ BitVec 64))) (size!21701 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44448)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23839 0))(
  ( (V!23840 (val!7112 Int)) )
))
(declare-datatypes ((ValueCell!6649 0))(
  ( (ValueCellFull!6649 (v!9535 V!23839)) (EmptyCell!6649) )
))
(declare-datatypes ((array!44450 0))(
  ( (array!44451 (arr!21281 (Array (_ BitVec 32) ValueCell!6649)) (size!21702 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44450)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!813395 (= res!555783 (and (= (size!21702 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21701 _keys!976) (size!21702 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!555782 () Bool)

(assert (=> start!70022 (=> (not res!555782) (not e!450769))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70022 (= res!555782 (validMask!0 mask!1312))))

(assert (=> start!70022 e!450769))

(declare-fun tp_is_empty!14129 () Bool)

(assert (=> start!70022 tp_is_empty!14129))

(declare-fun array_inv!17021 (array!44448) Bool)

(assert (=> start!70022 (array_inv!17021 _keys!976)))

(assert (=> start!70022 true))

(declare-fun e!450766 () Bool)

(declare-fun array_inv!17022 (array!44450) Bool)

(assert (=> start!70022 (and (array_inv!17022 _values!788) e!450766)))

(assert (=> start!70022 tp!43972))

(declare-fun b!813396 () Bool)

(declare-fun res!555785 () Bool)

(assert (=> b!813396 (=> (not res!555785) (not e!450769))))

(declare-datatypes ((List!15193 0))(
  ( (Nil!15190) (Cons!15189 (h!16318 (_ BitVec 64)) (t!21518 List!15193)) )
))
(declare-fun arrayNoDuplicates!0 (array!44448 (_ BitVec 32) List!15193) Bool)

(assert (=> b!813396 (= res!555785 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15190))))

(declare-fun b!813397 () Bool)

(declare-fun res!555784 () Bool)

(assert (=> b!813397 (=> (not res!555784) (not e!450769))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44448 (_ BitVec 32)) Bool)

(assert (=> b!813397 (= res!555784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!813398 () Bool)

(declare-fun e!450768 () Bool)

(assert (=> b!813398 (= e!450768 tp_is_empty!14129)))

(declare-fun b!813399 () Bool)

(assert (=> b!813399 (= e!450766 (and e!450768 mapRes!22774))))

(declare-fun condMapEmpty!22774 () Bool)

(declare-fun mapDefault!22774 () ValueCell!6649)

