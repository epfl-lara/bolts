; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39822 () Bool)

(assert start!39822)

(declare-fun b_free!10081 () Bool)

(declare-fun b_next!10081 () Bool)

(assert (=> start!39822 (= b_free!10081 (not b_next!10081))))

(declare-fun tp!35771 () Bool)

(declare-fun b_and!17839 () Bool)

(assert (=> start!39822 (= tp!35771 b_and!17839)))

(declare-fun b!429533 () Bool)

(declare-fun e!254384 () Bool)

(declare-fun tp_is_empty!11233 () Bool)

(assert (=> b!429533 (= e!254384 tp_is_empty!11233)))

(declare-fun b!429534 () Bool)

(declare-fun res!252366 () Bool)

(declare-fun e!254388 () Bool)

(assert (=> b!429534 (=> (not res!252366) (not e!254388))))

(declare-datatypes ((array!26283 0))(
  ( (array!26284 (arr!12588 (Array (_ BitVec 32) (_ BitVec 64))) (size!12940 (_ BitVec 32))) )
))
(declare-fun lt!196372 () array!26283)

(declare-datatypes ((List!7442 0))(
  ( (Nil!7439) (Cons!7438 (h!8294 (_ BitVec 64)) (t!12980 List!7442)) )
))
(declare-fun arrayNoDuplicates!0 (array!26283 (_ BitVec 32) List!7442) Bool)

(assert (=> b!429534 (= res!252366 (arrayNoDuplicates!0 lt!196372 #b00000000000000000000000000000000 Nil!7439))))

(declare-fun b!429535 () Bool)

(declare-fun res!252370 () Bool)

(declare-fun e!254382 () Bool)

(assert (=> b!429535 (=> (not res!252370) (not e!254382))))

(declare-fun _keys!709 () array!26283)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16083 0))(
  ( (V!16084 (val!5661 Int)) )
))
(declare-datatypes ((ValueCell!5273 0))(
  ( (ValueCellFull!5273 (v!7904 V!16083)) (EmptyCell!5273) )
))
(declare-datatypes ((array!26285 0))(
  ( (array!26286 (arr!12589 (Array (_ BitVec 32) ValueCell!5273)) (size!12941 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26285)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!429535 (= res!252370 (and (= (size!12941 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12940 _keys!709) (size!12941 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!429536 () Bool)

(declare-datatypes ((Unit!12590 0))(
  ( (Unit!12591) )
))
(declare-fun e!254389 () Unit!12590)

(declare-fun Unit!12592 () Unit!12590)

(assert (=> b!429536 (= e!254389 Unit!12592)))

(declare-fun b!429537 () Bool)

(declare-fun e!254381 () Bool)

(declare-fun mapRes!18471 () Bool)

(assert (=> b!429537 (= e!254381 (and e!254384 mapRes!18471))))

(declare-fun condMapEmpty!18471 () Bool)

(declare-fun mapDefault!18471 () ValueCell!5273)

