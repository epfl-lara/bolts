; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39826 () Bool)

(assert start!39826)

(declare-fun b_free!10085 () Bool)

(declare-fun b_next!10085 () Bool)

(assert (=> start!39826 (= b_free!10085 (not b_next!10085))))

(declare-fun tp!35783 () Bool)

(declare-fun b_and!17847 () Bool)

(assert (=> start!39826 (= tp!35783 b_and!17847)))

(declare-fun b!429651 () Bool)

(declare-fun res!252456 () Bool)

(declare-fun e!254437 () Bool)

(assert (=> b!429651 (=> (not res!252456) (not e!254437))))

(declare-datatypes ((array!26291 0))(
  ( (array!26292 (arr!12592 (Array (_ BitVec 32) (_ BitVec 64))) (size!12944 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26291)

(declare-datatypes ((List!7445 0))(
  ( (Nil!7442) (Cons!7441 (h!8297 (_ BitVec 64)) (t!12987 List!7445)) )
))
(declare-fun arrayNoDuplicates!0 (array!26291 (_ BitVec 32) List!7445) Bool)

(assert (=> b!429651 (= res!252456 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7442))))

(declare-fun mapNonEmpty!18477 () Bool)

(declare-fun mapRes!18477 () Bool)

(declare-fun tp!35784 () Bool)

(declare-fun e!254435 () Bool)

(assert (=> mapNonEmpty!18477 (= mapRes!18477 (and tp!35784 e!254435))))

(declare-datatypes ((V!16087 0))(
  ( (V!16088 (val!5663 Int)) )
))
(declare-datatypes ((ValueCell!5275 0))(
  ( (ValueCellFull!5275 (v!7906 V!16087)) (EmptyCell!5275) )
))
(declare-fun mapRest!18477 () (Array (_ BitVec 32) ValueCell!5275))

(declare-datatypes ((array!26293 0))(
  ( (array!26294 (arr!12593 (Array (_ BitVec 32) ValueCell!5275)) (size!12945 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26293)

(declare-fun mapValue!18477 () ValueCell!5275)

(declare-fun mapKey!18477 () (_ BitVec 32))

(assert (=> mapNonEmpty!18477 (= (arr!12593 _values!549) (store mapRest!18477 mapKey!18477 mapValue!18477))))

(declare-fun b!429652 () Bool)

(declare-fun res!252455 () Bool)

(assert (=> b!429652 (=> (not res!252455) (not e!254437))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!429652 (= res!252455 (or (= (select (arr!12592 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12592 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!429653 () Bool)

(declare-fun res!252447 () Bool)

(assert (=> b!429653 (=> (not res!252447) (not e!254437))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!429653 (= res!252447 (and (= (size!12945 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12944 _keys!709) (size!12945 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!252448 () Bool)

(assert (=> start!39826 (=> (not res!252448) (not e!254437))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39826 (= res!252448 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12944 _keys!709))))))

(assert (=> start!39826 e!254437))

(declare-fun tp_is_empty!11237 () Bool)

(assert (=> start!39826 tp_is_empty!11237))

(assert (=> start!39826 tp!35783))

(assert (=> start!39826 true))

(declare-fun e!254440 () Bool)

(declare-fun array_inv!9158 (array!26293) Bool)

(assert (=> start!39826 (and (array_inv!9158 _values!549) e!254440)))

(declare-fun array_inv!9159 (array!26291) Bool)

(assert (=> start!39826 (array_inv!9159 _keys!709)))

(declare-fun b!429654 () Bool)

(declare-fun res!252450 () Bool)

(declare-fun e!254442 () Bool)

(assert (=> b!429654 (=> (not res!252450) (not e!254442))))

(assert (=> b!429654 (= res!252450 (bvsle from!863 i!563))))

(declare-fun b!429655 () Bool)

(declare-datatypes ((Unit!12597 0))(
  ( (Unit!12598) )
))
(declare-fun e!254439 () Unit!12597)

(declare-fun Unit!12599 () Unit!12597)

(assert (=> b!429655 (= e!254439 Unit!12599)))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!196430 () Unit!12597)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26291 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12597)

(assert (=> b!429655 (= lt!196430 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!429655 false))

(declare-fun mapIsEmpty!18477 () Bool)

(assert (=> mapIsEmpty!18477 mapRes!18477))

(declare-fun b!429656 () Bool)

(declare-fun res!252453 () Bool)

(assert (=> b!429656 (=> (not res!252453) (not e!254437))))

(declare-fun arrayContainsKey!0 (array!26291 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!429656 (= res!252453 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!429657 () Bool)

(declare-fun e!254443 () Bool)

(assert (=> b!429657 (= e!254443 tp_is_empty!11237)))

(declare-fun b!429658 () Bool)

(assert (=> b!429658 (= e!254440 (and e!254443 mapRes!18477))))

(declare-fun condMapEmpty!18477 () Bool)

(declare-fun mapDefault!18477 () ValueCell!5275)

