; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69934 () Bool)

(assert start!69934)

(declare-fun mapIsEmpty!22669 () Bool)

(declare-fun mapRes!22669 () Bool)

(assert (=> mapIsEmpty!22669 mapRes!22669))

(declare-fun b!812595 () Bool)

(declare-fun e!450197 () Bool)

(declare-fun tp_is_empty!14063 () Bool)

(assert (=> b!812595 (= e!450197 tp_is_empty!14063)))

(declare-fun b!812596 () Bool)

(declare-fun res!555347 () Bool)

(declare-fun e!450196 () Bool)

(assert (=> b!812596 (=> (not res!555347) (not e!450196))))

(declare-datatypes ((array!44316 0))(
  ( (array!44317 (arr!21216 (Array (_ BitVec 32) (_ BitVec 64))) (size!21637 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44316)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23751 0))(
  ( (V!23752 (val!7079 Int)) )
))
(declare-datatypes ((ValueCell!6616 0))(
  ( (ValueCellFull!6616 (v!9502 V!23751)) (EmptyCell!6616) )
))
(declare-datatypes ((array!44318 0))(
  ( (array!44319 (arr!21217 (Array (_ BitVec 32) ValueCell!6616)) (size!21638 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44318)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812596 (= res!555347 (and (= (size!21638 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21637 _keys!976) (size!21638 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!812597 () Bool)

(declare-fun res!555345 () Bool)

(assert (=> b!812597 (=> (not res!555345) (not e!450196))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44316 (_ BitVec 32)) Bool)

(assert (=> b!812597 (= res!555345 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!812598 () Bool)

(declare-fun e!450199 () Bool)

(assert (=> b!812598 (= e!450199 tp_is_empty!14063)))

(declare-fun b!812599 () Bool)

(declare-fun e!450198 () Bool)

(assert (=> b!812599 (= e!450198 (and e!450199 mapRes!22669))))

(declare-fun condMapEmpty!22669 () Bool)

(declare-fun mapDefault!22669 () ValueCell!6616)

