; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40150 () Bool)

(assert start!40150)

(declare-fun b_free!10409 () Bool)

(declare-fun b_next!10409 () Bool)

(assert (=> start!40150 (= b_free!10409 (not b_next!10409))))

(declare-fun tp!36755 () Bool)

(declare-fun b_and!18395 () Bool)

(assert (=> start!40150 (= tp!36755 b_and!18395)))

(declare-fun b!438977 () Bool)

(declare-fun res!259423 () Bool)

(declare-fun e!258833 () Bool)

(assert (=> b!438977 (=> (not res!259423) (not e!258833))))

(declare-datatypes ((array!26915 0))(
  ( (array!26916 (arr!12904 (Array (_ BitVec 32) (_ BitVec 64))) (size!13256 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26915)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!438977 (= res!259423 (or (= (select (arr!12904 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12904 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!438978 () Bool)

(declare-fun res!259428 () Bool)

(assert (=> b!438978 (=> (not res!259428) (not e!258833))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26915 (_ BitVec 32)) Bool)

(assert (=> b!438978 (= res!259428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!438979 () Bool)

(declare-fun e!258832 () Bool)

(declare-fun e!258829 () Bool)

(declare-fun mapRes!18963 () Bool)

(assert (=> b!438979 (= e!258832 (and e!258829 mapRes!18963))))

(declare-fun condMapEmpty!18963 () Bool)

(declare-datatypes ((V!16519 0))(
  ( (V!16520 (val!5825 Int)) )
))
(declare-datatypes ((ValueCell!5437 0))(
  ( (ValueCellFull!5437 (v!8068 V!16519)) (EmptyCell!5437) )
))
(declare-datatypes ((array!26917 0))(
  ( (array!26918 (arr!12905 (Array (_ BitVec 32) ValueCell!5437)) (size!13257 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26917)

(declare-fun mapDefault!18963 () ValueCell!5437)

