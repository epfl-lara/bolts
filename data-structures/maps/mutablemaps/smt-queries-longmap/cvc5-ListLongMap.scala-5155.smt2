; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69918 () Bool)

(assert start!69918)

(declare-fun mapNonEmpty!22645 () Bool)

(declare-fun mapRes!22645 () Bool)

(declare-fun tp!43753 () Bool)

(declare-fun e!450076 () Bool)

(assert (=> mapNonEmpty!22645 (= mapRes!22645 (and tp!43753 e!450076))))

(declare-datatypes ((V!23731 0))(
  ( (V!23732 (val!7071 Int)) )
))
(declare-datatypes ((ValueCell!6608 0))(
  ( (ValueCellFull!6608 (v!9494 V!23731)) (EmptyCell!6608) )
))
(declare-datatypes ((array!44290 0))(
  ( (array!44291 (arr!21203 (Array (_ BitVec 32) ValueCell!6608)) (size!21624 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44290)

(declare-fun mapKey!22645 () (_ BitVec 32))

(declare-fun mapRest!22645 () (Array (_ BitVec 32) ValueCell!6608))

(declare-fun mapValue!22645 () ValueCell!6608)

(assert (=> mapNonEmpty!22645 (= (arr!21203 _values!788) (store mapRest!22645 mapKey!22645 mapValue!22645))))

(declare-fun b!812451 () Bool)

(declare-fun e!450078 () Bool)

(declare-fun e!450080 () Bool)

(assert (=> b!812451 (= e!450078 (and e!450080 mapRes!22645))))

(declare-fun condMapEmpty!22645 () Bool)

(declare-fun mapDefault!22645 () ValueCell!6608)

