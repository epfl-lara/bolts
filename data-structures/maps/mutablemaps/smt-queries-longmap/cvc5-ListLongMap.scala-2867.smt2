; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41286 () Bool)

(assert start!41286)

(declare-fun b!461644 () Bool)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun e!269251 () Bool)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!28639 0))(
  ( (array!28640 (arr!13755 (Array (_ BitVec 32) (_ BitVec 64))) (size!14107 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28639)

(declare-datatypes ((V!17691 0))(
  ( (V!17692 (val!6264 Int)) )
))
(declare-datatypes ((ValueCell!5876 0))(
  ( (ValueCellFull!5876 (v!8546 V!17691)) (EmptyCell!5876) )
))
(declare-datatypes ((array!28641 0))(
  ( (array!28642 (arr!13756 (Array (_ BitVec 32) ValueCell!5876)) (size!14108 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28641)

(assert (=> b!461644 (= e!269251 (and (= (size!14108 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14107 _keys!1025) (size!14108 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (size!14107 _keys!1025) (bvadd #b00000000000000000000000000000001 mask!1365)) (bvsgt #b00000000000000000000000000000000 (size!14107 _keys!1025))))))

(declare-fun mapNonEmpty!20314 () Bool)

(declare-fun mapRes!20314 () Bool)

(declare-fun tp!39133 () Bool)

(declare-fun e!269253 () Bool)

(assert (=> mapNonEmpty!20314 (= mapRes!20314 (and tp!39133 e!269253))))

(declare-fun mapRest!20314 () (Array (_ BitVec 32) ValueCell!5876))

(declare-fun mapKey!20314 () (_ BitVec 32))

(declare-fun mapValue!20314 () ValueCell!5876)

(assert (=> mapNonEmpty!20314 (= (arr!13756 _values!833) (store mapRest!20314 mapKey!20314 mapValue!20314))))

(declare-fun b!461645 () Bool)

(declare-fun tp_is_empty!12439 () Bool)

(assert (=> b!461645 (= e!269253 tp_is_empty!12439)))

(declare-fun b!461646 () Bool)

(declare-fun e!269252 () Bool)

(assert (=> b!461646 (= e!269252 tp_is_empty!12439)))

(declare-fun b!461647 () Bool)

(declare-fun e!269255 () Bool)

(assert (=> b!461647 (= e!269255 (and e!269252 mapRes!20314))))

(declare-fun condMapEmpty!20314 () Bool)

(declare-fun mapDefault!20314 () ValueCell!5876)

