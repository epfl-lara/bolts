; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69904 () Bool)

(assert start!69904)

(declare-fun mapNonEmpty!22624 () Bool)

(declare-fun mapRes!22624 () Bool)

(declare-fun tp!43732 () Bool)

(declare-fun e!449972 () Bool)

(assert (=> mapNonEmpty!22624 (= mapRes!22624 (and tp!43732 e!449972))))

(declare-datatypes ((V!23711 0))(
  ( (V!23712 (val!7064 Int)) )
))
(declare-datatypes ((ValueCell!6601 0))(
  ( (ValueCellFull!6601 (v!9487 V!23711)) (EmptyCell!6601) )
))
(declare-fun mapValue!22624 () ValueCell!6601)

(declare-fun mapRest!22624 () (Array (_ BitVec 32) ValueCell!6601))

(declare-fun mapKey!22624 () (_ BitVec 32))

(declare-datatypes ((array!44266 0))(
  ( (array!44267 (arr!21191 (Array (_ BitVec 32) ValueCell!6601)) (size!21612 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44266)

(assert (=> mapNonEmpty!22624 (= (arr!21191 _values!788) (store mapRest!22624 mapKey!22624 mapValue!22624))))

(declare-fun b!812325 () Bool)

(declare-fun e!449974 () Bool)

(declare-fun e!449975 () Bool)

(assert (=> b!812325 (= e!449974 (and e!449975 mapRes!22624))))

(declare-fun condMapEmpty!22624 () Bool)

(declare-fun mapDefault!22624 () ValueCell!6601)

