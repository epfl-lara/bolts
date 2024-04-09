; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70650 () Bool)

(assert start!70650)

(declare-fun b_free!12913 () Bool)

(declare-fun b_next!12913 () Bool)

(assert (=> start!70650 (= b_free!12913 (not b_next!12913))))

(declare-fun tp!45478 () Bool)

(declare-fun b_and!21785 () Bool)

(assert (=> start!70650 (= tp!45478 b_and!21785)))

(declare-fun mapNonEmpty!23539 () Bool)

(declare-fun mapRes!23539 () Bool)

(declare-fun tp!45477 () Bool)

(declare-fun e!455765 () Bool)

(assert (=> mapNonEmpty!23539 (= mapRes!23539 (and tp!45477 e!455765))))

(declare-fun mapKey!23539 () (_ BitVec 32))

(declare-datatypes ((V!24499 0))(
  ( (V!24500 (val!7359 Int)) )
))
(declare-datatypes ((ValueCell!6896 0))(
  ( (ValueCellFull!6896 (v!9786 V!24499)) (EmptyCell!6896) )
))
(declare-fun mapValue!23539 () ValueCell!6896)

(declare-datatypes ((array!45408 0))(
  ( (array!45409 (arr!21752 (Array (_ BitVec 32) ValueCell!6896)) (size!22173 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45408)

(declare-fun mapRest!23539 () (Array (_ BitVec 32) ValueCell!6896))

(assert (=> mapNonEmpty!23539 (= (arr!21752 _values!788) (store mapRest!23539 mapKey!23539 mapValue!23539))))

(declare-fun b!820308 () Bool)

(declare-fun e!455766 () Bool)

(declare-fun tp_is_empty!14623 () Bool)

(assert (=> b!820308 (= e!455766 tp_is_empty!14623)))

(declare-fun b!820309 () Bool)

(declare-fun res!559813 () Bool)

(declare-fun e!455767 () Bool)

(assert (=> b!820309 (=> (not res!559813) (not e!455767))))

(declare-datatypes ((array!45410 0))(
  ( (array!45411 (arr!21753 (Array (_ BitVec 32) (_ BitVec 64))) (size!22174 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45410)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!820309 (= res!559813 (and (= (size!22173 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22174 _keys!976) (size!22173 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!820310 () Bool)

(declare-fun res!559814 () Bool)

(assert (=> b!820310 (=> (not res!559814) (not e!455767))))

(declare-datatypes ((List!15559 0))(
  ( (Nil!15556) (Cons!15555 (h!16684 (_ BitVec 64)) (t!21900 List!15559)) )
))
(declare-fun arrayNoDuplicates!0 (array!45410 (_ BitVec 32) List!15559) Bool)

(assert (=> b!820310 (= res!559814 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15556))))

(declare-fun b!820311 () Bool)

(declare-fun res!559815 () Bool)

(assert (=> b!820311 (=> (not res!559815) (not e!455767))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45410 (_ BitVec 32)) Bool)

(assert (=> b!820311 (= res!559815 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!23539 () Bool)

(assert (=> mapIsEmpty!23539 mapRes!23539))

(declare-fun b!820312 () Bool)

(declare-fun e!455768 () Bool)

(assert (=> b!820312 (= e!455768 (and e!455766 mapRes!23539))))

(declare-fun condMapEmpty!23539 () Bool)

(declare-fun mapDefault!23539 () ValueCell!6896)

