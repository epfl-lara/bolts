; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40132 () Bool)

(assert start!40132)

(declare-fun b_free!10391 () Bool)

(declare-fun b_next!10391 () Bool)

(assert (=> start!40132 (= b_free!10391 (not b_next!10391))))

(declare-fun tp!36701 () Bool)

(declare-fun b_and!18377 () Bool)

(assert (=> start!40132 (= tp!36701 b_and!18377)))

(declare-fun b!438545 () Bool)

(declare-fun res!259075 () Bool)

(declare-fun e!258642 () Bool)

(assert (=> b!438545 (=> (not res!259075) (not e!258642))))

(declare-datatypes ((array!26879 0))(
  ( (array!26880 (arr!12886 (Array (_ BitVec 32) (_ BitVec 64))) (size!13238 (_ BitVec 32))) )
))
(declare-fun lt!202013 () array!26879)

(declare-datatypes ((List!7688 0))(
  ( (Nil!7685) (Cons!7684 (h!8540 (_ BitVec 64)) (t!13452 List!7688)) )
))
(declare-fun arrayNoDuplicates!0 (array!26879 (_ BitVec 32) List!7688) Bool)

(assert (=> b!438545 (= res!259075 (arrayNoDuplicates!0 lt!202013 #b00000000000000000000000000000000 Nil!7685))))

(declare-fun b!438546 () Bool)

(declare-fun res!259074 () Bool)

(declare-fun e!258645 () Bool)

(assert (=> b!438546 (=> (not res!259074) (not e!258645))))

(declare-fun _keys!709 () array!26879)

(assert (=> b!438546 (= res!259074 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7685))))

(declare-fun b!438547 () Bool)

(declare-fun e!258646 () Bool)

(declare-fun tp_is_empty!11543 () Bool)

(assert (=> b!438547 (= e!258646 tp_is_empty!11543)))

(declare-fun b!438548 () Bool)

(declare-fun res!259082 () Bool)

(assert (=> b!438548 (=> (not res!259082) (not e!258645))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16495 0))(
  ( (V!16496 (val!5816 Int)) )
))
(declare-datatypes ((ValueCell!5428 0))(
  ( (ValueCellFull!5428 (v!8059 V!16495)) (EmptyCell!5428) )
))
(declare-datatypes ((array!26881 0))(
  ( (array!26882 (arr!12887 (Array (_ BitVec 32) ValueCell!5428)) (size!13239 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26881)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!438548 (= res!259082 (and (= (size!13239 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13238 _keys!709) (size!13239 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!438549 () Bool)

(declare-fun res!259073 () Bool)

(assert (=> b!438549 (=> (not res!259073) (not e!258645))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26879 (_ BitVec 32)) Bool)

(assert (=> b!438549 (= res!259073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!438550 () Bool)

(declare-fun e!258640 () Bool)

(declare-fun e!258641 () Bool)

(declare-fun mapRes!18936 () Bool)

(assert (=> b!438550 (= e!258640 (and e!258641 mapRes!18936))))

(declare-fun condMapEmpty!18936 () Bool)

(declare-fun mapDefault!18936 () ValueCell!5428)

