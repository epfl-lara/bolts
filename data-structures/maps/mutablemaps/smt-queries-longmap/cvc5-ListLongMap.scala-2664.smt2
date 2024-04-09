; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39810 () Bool)

(assert start!39810)

(declare-fun b_free!10069 () Bool)

(declare-fun b_next!10069 () Bool)

(assert (=> start!39810 (= b_free!10069 (not b_next!10069))))

(declare-fun tp!35735 () Bool)

(declare-fun b_and!17815 () Bool)

(assert (=> start!39810 (= tp!35735 b_and!17815)))

(declare-fun b!429179 () Bool)

(declare-fun res!252110 () Bool)

(declare-fun e!254219 () Bool)

(assert (=> b!429179 (=> (not res!252110) (not e!254219))))

(declare-datatypes ((array!26259 0))(
  ( (array!26260 (arr!12576 (Array (_ BitVec 32) (_ BitVec 64))) (size!12928 (_ BitVec 32))) )
))
(declare-fun lt!196192 () array!26259)

(declare-datatypes ((List!7431 0))(
  ( (Nil!7428) (Cons!7427 (h!8283 (_ BitVec 64)) (t!12957 List!7431)) )
))
(declare-fun arrayNoDuplicates!0 (array!26259 (_ BitVec 32) List!7431) Bool)

(assert (=> b!429179 (= res!252110 (arrayNoDuplicates!0 lt!196192 #b00000000000000000000000000000000 Nil!7428))))

(declare-fun mapNonEmpty!18453 () Bool)

(declare-fun mapRes!18453 () Bool)

(declare-fun tp!35736 () Bool)

(declare-fun e!254221 () Bool)

(assert (=> mapNonEmpty!18453 (= mapRes!18453 (and tp!35736 e!254221))))

(declare-datatypes ((V!16067 0))(
  ( (V!16068 (val!5655 Int)) )
))
(declare-datatypes ((ValueCell!5267 0))(
  ( (ValueCellFull!5267 (v!7898 V!16067)) (EmptyCell!5267) )
))
(declare-fun mapValue!18453 () ValueCell!5267)

(declare-datatypes ((array!26261 0))(
  ( (array!26262 (arr!12577 (Array (_ BitVec 32) ValueCell!5267)) (size!12929 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26261)

(declare-fun mapKey!18453 () (_ BitVec 32))

(declare-fun mapRest!18453 () (Array (_ BitVec 32) ValueCell!5267))

(assert (=> mapNonEmpty!18453 (= (arr!12577 _values!549) (store mapRest!18453 mapKey!18453 mapValue!18453))))

(declare-fun b!429180 () Bool)

(declare-fun res!252120 () Bool)

(declare-fun e!254224 () Bool)

(assert (=> b!429180 (=> (not res!252120) (not e!254224))))

(declare-fun _keys!709 () array!26259)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!429180 (= res!252120 (or (= (select (arr!12576 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12576 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!429182 () Bool)

(declare-fun res!252112 () Bool)

(assert (=> b!429182 (=> (not res!252112) (not e!254224))))

(assert (=> b!429182 (= res!252112 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7428))))

(declare-fun b!429183 () Bool)

(declare-fun e!254227 () Bool)

(declare-fun tp_is_empty!11221 () Bool)

(assert (=> b!429183 (= e!254227 tp_is_empty!11221)))

(declare-fun b!429184 () Bool)

(declare-fun res!252123 () Bool)

(assert (=> b!429184 (=> (not res!252123) (not e!254224))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!429184 (= res!252123 (validMask!0 mask!1025))))

(declare-fun b!429185 () Bool)

(declare-datatypes ((Unit!12570 0))(
  ( (Unit!12571) )
))
(declare-fun e!254220 () Unit!12570)

(declare-fun Unit!12572 () Unit!12570)

(assert (=> b!429185 (= e!254220 Unit!12572)))

(declare-fun b!429186 () Bool)

(declare-fun e!254225 () Bool)

(assert (=> b!429186 (= e!254225 (and e!254227 mapRes!18453))))

(declare-fun condMapEmpty!18453 () Bool)

(declare-fun mapDefault!18453 () ValueCell!5267)

