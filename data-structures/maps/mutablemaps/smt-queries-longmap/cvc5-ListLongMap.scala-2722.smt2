; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40158 () Bool)

(assert start!40158)

(declare-fun b_free!10417 () Bool)

(declare-fun b_next!10417 () Bool)

(assert (=> start!40158 (= b_free!10417 (not b_next!10417))))

(declare-fun tp!36779 () Bool)

(declare-fun b_and!18403 () Bool)

(assert (=> start!40158 (= tp!36779 b_and!18403)))

(declare-fun b!439169 () Bool)

(declare-fun e!258915 () Bool)

(declare-fun e!258914 () Bool)

(assert (=> b!439169 (= e!258915 e!258914)))

(declare-fun res!259581 () Bool)

(assert (=> b!439169 (=> (not res!259581) (not e!258914))))

(declare-datatypes ((array!26929 0))(
  ( (array!26930 (arr!12911 (Array (_ BitVec 32) (_ BitVec 64))) (size!13263 (_ BitVec 32))) )
))
(declare-fun lt!202208 () array!26929)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26929 (_ BitVec 32)) Bool)

(assert (=> b!439169 (= res!259581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202208 mask!1025))))

(declare-fun _keys!709 () array!26929)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!439169 (= lt!202208 (array!26930 (store (arr!12911 _keys!709) i!563 k!794) (size!13263 _keys!709)))))

(declare-fun mapNonEmpty!18975 () Bool)

(declare-fun mapRes!18975 () Bool)

(declare-fun tp!36780 () Bool)

(declare-fun e!258919 () Bool)

(assert (=> mapNonEmpty!18975 (= mapRes!18975 (and tp!36780 e!258919))))

(declare-fun mapKey!18975 () (_ BitVec 32))

(declare-datatypes ((V!16531 0))(
  ( (V!16532 (val!5829 Int)) )
))
(declare-datatypes ((ValueCell!5441 0))(
  ( (ValueCellFull!5441 (v!8072 V!16531)) (EmptyCell!5441) )
))
(declare-fun mapValue!18975 () ValueCell!5441)

(declare-datatypes ((array!26931 0))(
  ( (array!26932 (arr!12912 (Array (_ BitVec 32) ValueCell!5441)) (size!13264 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26931)

(declare-fun mapRest!18975 () (Array (_ BitVec 32) ValueCell!5441))

(assert (=> mapNonEmpty!18975 (= (arr!12912 _values!549) (store mapRest!18975 mapKey!18975 mapValue!18975))))

(declare-fun b!439170 () Bool)

(declare-fun e!258918 () Bool)

(declare-fun e!258913 () Bool)

(assert (=> b!439170 (= e!258918 (and e!258913 mapRes!18975))))

(declare-fun condMapEmpty!18975 () Bool)

(declare-fun mapDefault!18975 () ValueCell!5441)

