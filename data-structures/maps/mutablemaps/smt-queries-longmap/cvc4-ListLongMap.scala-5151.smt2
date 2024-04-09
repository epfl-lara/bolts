; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69898 () Bool)

(assert start!69898)

(declare-fun b!812271 () Bool)

(declare-fun res!555183 () Bool)

(declare-fun e!449930 () Bool)

(assert (=> b!812271 (=> (not res!555183) (not e!449930))))

(declare-datatypes ((array!44254 0))(
  ( (array!44255 (arr!21185 (Array (_ BitVec 32) (_ BitVec 64))) (size!21606 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44254)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44254 (_ BitVec 32)) Bool)

(assert (=> b!812271 (= res!555183 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!22615 () Bool)

(declare-fun mapRes!22615 () Bool)

(declare-fun tp!43723 () Bool)

(declare-fun e!449926 () Bool)

(assert (=> mapNonEmpty!22615 (= mapRes!22615 (and tp!43723 e!449926))))

(declare-datatypes ((V!23703 0))(
  ( (V!23704 (val!7061 Int)) )
))
(declare-datatypes ((ValueCell!6598 0))(
  ( (ValueCellFull!6598 (v!9484 V!23703)) (EmptyCell!6598) )
))
(declare-fun mapRest!22615 () (Array (_ BitVec 32) ValueCell!6598))

(declare-datatypes ((array!44256 0))(
  ( (array!44257 (arr!21186 (Array (_ BitVec 32) ValueCell!6598)) (size!21607 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44256)

(declare-fun mapKey!22615 () (_ BitVec 32))

(declare-fun mapValue!22615 () ValueCell!6598)

(assert (=> mapNonEmpty!22615 (= (arr!21186 _values!788) (store mapRest!22615 mapKey!22615 mapValue!22615))))

(declare-fun b!812272 () Bool)

(declare-fun tp_is_empty!14027 () Bool)

(assert (=> b!812272 (= e!449926 tp_is_empty!14027)))

(declare-fun b!812273 () Bool)

(declare-fun e!449929 () Bool)

(declare-fun e!449927 () Bool)

(assert (=> b!812273 (= e!449929 (and e!449927 mapRes!22615))))

(declare-fun condMapEmpty!22615 () Bool)

(declare-fun mapDefault!22615 () ValueCell!6598)

