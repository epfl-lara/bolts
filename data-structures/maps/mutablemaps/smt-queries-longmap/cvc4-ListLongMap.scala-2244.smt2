; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36938 () Bool)

(assert start!36938)

(declare-fun b_free!8057 () Bool)

(declare-fun b_next!8057 () Bool)

(assert (=> start!36938 (= b_free!8057 (not b_next!8057))))

(declare-fun tp!28887 () Bool)

(declare-fun b_and!15317 () Bool)

(assert (=> start!36938 (= tp!28887 b_and!15317)))

(declare-fun b!369956 () Bool)

(declare-fun res!207763 () Bool)

(declare-fun e!226018 () Bool)

(assert (=> b!369956 (=> (not res!207763) (not e!226018))))

(declare-datatypes ((array!21331 0))(
  ( (array!21332 (arr!10131 (Array (_ BitVec 32) (_ BitVec 64))) (size!10483 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21331)

(declare-datatypes ((List!5687 0))(
  ( (Nil!5684) (Cons!5683 (h!6539 (_ BitVec 64)) (t!10845 List!5687)) )
))
(declare-fun arrayNoDuplicates!0 (array!21331 (_ BitVec 32) List!5687) Bool)

(assert (=> b!369956 (= res!207763 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5684))))

(declare-fun b!369957 () Bool)

(declare-fun e!226020 () Bool)

(declare-fun e!226017 () Bool)

(declare-fun mapRes!14622 () Bool)

(assert (=> b!369957 (= e!226020 (and e!226017 mapRes!14622))))

(declare-fun condMapEmpty!14622 () Bool)

(declare-datatypes ((V!12711 0))(
  ( (V!12712 (val!4397 Int)) )
))
(declare-datatypes ((ValueCell!4009 0))(
  ( (ValueCellFull!4009 (v!6590 V!12711)) (EmptyCell!4009) )
))
(declare-datatypes ((array!21333 0))(
  ( (array!21334 (arr!10132 (Array (_ BitVec 32) ValueCell!4009)) (size!10484 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21333)

(declare-fun mapDefault!14622 () ValueCell!4009)

