; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41290 () Bool)

(assert start!41290)

(declare-fun b!461668 () Bool)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun e!269282 () Bool)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!28647 0))(
  ( (array!28648 (arr!13759 (Array (_ BitVec 32) (_ BitVec 64))) (size!14111 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28647)

(declare-datatypes ((V!17695 0))(
  ( (V!17696 (val!6266 Int)) )
))
(declare-datatypes ((ValueCell!5878 0))(
  ( (ValueCellFull!5878 (v!8548 V!17695)) (EmptyCell!5878) )
))
(declare-datatypes ((array!28649 0))(
  ( (array!28650 (arr!13760 (Array (_ BitVec 32) ValueCell!5878)) (size!14112 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28649)

(assert (=> b!461668 (= e!269282 (and (= (size!14112 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14111 _keys!1025) (size!14112 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (size!14111 _keys!1025) (bvadd #b00000000000000000000000000000001 mask!1365)) (bvsgt #b00000000000000000000000000000000 (size!14111 _keys!1025))))))

(declare-fun b!461669 () Bool)

(declare-fun e!269281 () Bool)

(declare-fun tp_is_empty!12443 () Bool)

(assert (=> b!461669 (= e!269281 tp_is_empty!12443)))

(declare-fun mapNonEmpty!20320 () Bool)

(declare-fun mapRes!20320 () Bool)

(declare-fun tp!39139 () Bool)

(declare-fun e!269283 () Bool)

(assert (=> mapNonEmpty!20320 (= mapRes!20320 (and tp!39139 e!269283))))

(declare-fun mapValue!20320 () ValueCell!5878)

(declare-fun mapRest!20320 () (Array (_ BitVec 32) ValueCell!5878))

(declare-fun mapKey!20320 () (_ BitVec 32))

(assert (=> mapNonEmpty!20320 (= (arr!13760 _values!833) (store mapRest!20320 mapKey!20320 mapValue!20320))))

(declare-fun b!461670 () Bool)

(declare-fun e!269285 () Bool)

(assert (=> b!461670 (= e!269285 (and e!269281 mapRes!20320))))

(declare-fun condMapEmpty!20320 () Bool)

(declare-fun mapDefault!20320 () ValueCell!5878)

