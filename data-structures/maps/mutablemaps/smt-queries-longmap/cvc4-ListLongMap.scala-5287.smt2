; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70920 () Bool)

(assert start!70920)

(declare-fun b_free!13133 () Bool)

(declare-fun b_next!13133 () Bool)

(assert (=> start!70920 (= b_free!13133 (not b_next!13133))))

(declare-fun tp!46147 () Bool)

(declare-fun b_and!22035 () Bool)

(assert (=> start!70920 (= tp!46147 b_and!22035)))

(declare-fun b!823292 () Bool)

(declare-fun e!457938 () Bool)

(declare-fun tp_is_empty!14843 () Bool)

(assert (=> b!823292 (= e!457938 tp_is_empty!14843)))

(declare-fun b!823293 () Bool)

(declare-fun res!561563 () Bool)

(declare-fun e!457939 () Bool)

(assert (=> b!823293 (=> (not res!561563) (not e!457939))))

(declare-datatypes ((array!45836 0))(
  ( (array!45837 (arr!21963 (Array (_ BitVec 32) (_ BitVec 64))) (size!22384 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45836)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24791 0))(
  ( (V!24792 (val!7469 Int)) )
))
(declare-datatypes ((ValueCell!7006 0))(
  ( (ValueCellFull!7006 (v!9897 V!24791)) (EmptyCell!7006) )
))
(declare-datatypes ((array!45838 0))(
  ( (array!45839 (arr!21964 (Array (_ BitVec 32) ValueCell!7006)) (size!22385 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45838)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!823293 (= res!561563 (and (= (size!22385 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22384 _keys!976) (size!22385 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!823294 () Bool)

(declare-fun res!561564 () Bool)

(assert (=> b!823294 (=> (not res!561564) (not e!457939))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45836 (_ BitVec 32)) Bool)

(assert (=> b!823294 (= res!561564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!23878 () Bool)

(declare-fun mapRes!23878 () Bool)

(declare-fun tp!46146 () Bool)

(assert (=> mapNonEmpty!23878 (= mapRes!23878 (and tp!46146 e!457938))))

(declare-fun mapRest!23878 () (Array (_ BitVec 32) ValueCell!7006))

(declare-fun mapKey!23878 () (_ BitVec 32))

(declare-fun mapValue!23878 () ValueCell!7006)

(assert (=> mapNonEmpty!23878 (= (arr!21964 _values!788) (store mapRest!23878 mapKey!23878 mapValue!23878))))

(declare-fun b!823295 () Bool)

(declare-fun res!561562 () Bool)

(assert (=> b!823295 (=> (not res!561562) (not e!457939))))

(declare-datatypes ((List!15729 0))(
  ( (Nil!15726) (Cons!15725 (h!16854 (_ BitVec 64)) (t!22076 List!15729)) )
))
(declare-fun arrayNoDuplicates!0 (array!45836 (_ BitVec 32) List!15729) Bool)

(assert (=> b!823295 (= res!561562 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15726))))

(declare-fun b!823296 () Bool)

(declare-fun e!457940 () Bool)

(declare-fun e!457937 () Bool)

(assert (=> b!823296 (= e!457940 (and e!457937 mapRes!23878))))

(declare-fun condMapEmpty!23878 () Bool)

(declare-fun mapDefault!23878 () ValueCell!7006)

