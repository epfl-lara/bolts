; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69830 () Bool)

(assert start!69830)

(declare-fun b!811865 () Bool)

(declare-fun e!449616 () Bool)

(declare-fun tp_is_empty!13997 () Bool)

(assert (=> b!811865 (= e!449616 tp_is_empty!13997)))

(declare-fun mapIsEmpty!22558 () Bool)

(declare-fun mapRes!22558 () Bool)

(assert (=> mapIsEmpty!22558 mapRes!22558))

(declare-fun b!811866 () Bool)

(declare-fun res!554968 () Bool)

(declare-fun e!449614 () Bool)

(assert (=> b!811866 (=> (not res!554968) (not e!449614))))

(declare-datatypes ((array!44188 0))(
  ( (array!44189 (arr!21156 (Array (_ BitVec 32) (_ BitVec 64))) (size!21577 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44188)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23663 0))(
  ( (V!23664 (val!7046 Int)) )
))
(declare-datatypes ((ValueCell!6583 0))(
  ( (ValueCellFull!6583 (v!9468 V!23663)) (EmptyCell!6583) )
))
(declare-datatypes ((array!44190 0))(
  ( (array!44191 (arr!21157 (Array (_ BitVec 32) ValueCell!6583)) (size!21578 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44190)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!811866 (= res!554968 (and (= (size!21578 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21577 _keys!976) (size!21578 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!811868 () Bool)

(assert (=> b!811868 (= e!449614 (bvsgt #b00000000000000000000000000000000 (size!21577 _keys!976)))))

(declare-fun mapNonEmpty!22558 () Bool)

(declare-fun tp!43666 () Bool)

(declare-fun e!449615 () Bool)

(assert (=> mapNonEmpty!22558 (= mapRes!22558 (and tp!43666 e!449615))))

(declare-fun mapKey!22558 () (_ BitVec 32))

(declare-fun mapRest!22558 () (Array (_ BitVec 32) ValueCell!6583))

(declare-fun mapValue!22558 () ValueCell!6583)

(assert (=> mapNonEmpty!22558 (= (arr!21157 _values!788) (store mapRest!22558 mapKey!22558 mapValue!22558))))

(declare-fun b!811869 () Bool)

(declare-fun e!449612 () Bool)

(assert (=> b!811869 (= e!449612 (and e!449616 mapRes!22558))))

(declare-fun condMapEmpty!22558 () Bool)

(declare-fun mapDefault!22558 () ValueCell!6583)

