; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69986 () Bool)

(assert start!69986)

(declare-fun b_free!12395 () Bool)

(declare-fun b_next!12395 () Bool)

(assert (=> start!69986 (= b_free!12395 (not b_next!12395))))

(declare-fun tp!43896 () Bool)

(declare-fun b_and!21181 () Bool)

(assert (=> start!69986 (= tp!43896 b_and!21181)))

(declare-fun b!813070 () Bool)

(declare-fun res!555611 () Bool)

(declare-fun e!450541 () Bool)

(assert (=> b!813070 (=> (not res!555611) (not e!450541))))

(declare-datatypes ((array!44398 0))(
  ( (array!44399 (arr!21256 (Array (_ BitVec 32) (_ BitVec 64))) (size!21677 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44398)

(declare-datatypes ((List!15173 0))(
  ( (Nil!15170) (Cons!15169 (h!16298 (_ BitVec 64)) (t!21496 List!15173)) )
))
(declare-fun arrayNoDuplicates!0 (array!44398 (_ BitVec 32) List!15173) Bool)

(assert (=> b!813070 (= res!555611 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15170))))

(declare-fun mapIsEmpty!22735 () Bool)

(declare-fun mapRes!22735 () Bool)

(assert (=> mapIsEmpty!22735 mapRes!22735))

(declare-fun b!813071 () Bool)

(declare-fun e!450538 () Bool)

(declare-fun tp_is_empty!14105 () Bool)

(assert (=> b!813071 (= e!450538 tp_is_empty!14105)))

(declare-fun res!555614 () Bool)

(assert (=> start!69986 (=> (not res!555614) (not e!450541))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69986 (= res!555614 (validMask!0 mask!1312))))

(assert (=> start!69986 e!450541))

(assert (=> start!69986 tp_is_empty!14105))

(declare-fun array_inv!16999 (array!44398) Bool)

(assert (=> start!69986 (array_inv!16999 _keys!976)))

(assert (=> start!69986 true))

(declare-datatypes ((V!23807 0))(
  ( (V!23808 (val!7100 Int)) )
))
(declare-datatypes ((ValueCell!6637 0))(
  ( (ValueCellFull!6637 (v!9523 V!23807)) (EmptyCell!6637) )
))
(declare-datatypes ((array!44400 0))(
  ( (array!44401 (arr!21257 (Array (_ BitVec 32) ValueCell!6637)) (size!21678 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44400)

(declare-fun e!450540 () Bool)

(declare-fun array_inv!17000 (array!44400) Bool)

(assert (=> start!69986 (and (array_inv!17000 _values!788) e!450540)))

(assert (=> start!69986 tp!43896))

(declare-fun mapNonEmpty!22735 () Bool)

(declare-fun tp!43897 () Bool)

(assert (=> mapNonEmpty!22735 (= mapRes!22735 (and tp!43897 e!450538))))

(declare-fun mapRest!22735 () (Array (_ BitVec 32) ValueCell!6637))

(declare-fun mapValue!22735 () ValueCell!6637)

(declare-fun mapKey!22735 () (_ BitVec 32))

(assert (=> mapNonEmpty!22735 (= (arr!21257 _values!788) (store mapRest!22735 mapKey!22735 mapValue!22735))))

(declare-fun b!813072 () Bool)

(declare-fun e!450539 () Bool)

(assert (=> b!813072 (= e!450539 tp_is_empty!14105)))

(declare-fun b!813073 () Bool)

(declare-fun res!555612 () Bool)

(assert (=> b!813073 (=> (not res!555612) (not e!450541))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44398 (_ BitVec 32)) Bool)

(assert (=> b!813073 (= res!555612 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!813074 () Bool)

(declare-fun res!555613 () Bool)

(assert (=> b!813074 (=> (not res!555613) (not e!450541))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!813074 (= res!555613 (and (= (size!21678 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21677 _keys!976) (size!21678 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!813075 () Bool)

(assert (=> b!813075 (= e!450540 (and e!450539 mapRes!22735))))

(declare-fun condMapEmpty!22735 () Bool)

(declare-fun mapDefault!22735 () ValueCell!6637)

