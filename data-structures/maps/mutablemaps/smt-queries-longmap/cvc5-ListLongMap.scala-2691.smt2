; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39972 () Bool)

(assert start!39972)

(declare-fun b_free!10231 () Bool)

(declare-fun b_next!10231 () Bool)

(assert (=> start!39972 (= b_free!10231 (not b_next!10231))))

(declare-fun tp!36221 () Bool)

(declare-fun b_and!18139 () Bool)

(assert (=> start!39972 (= tp!36221 b_and!18139)))

(declare-fun b!434167 () Bool)

(declare-fun res!255734 () Bool)

(declare-fun e!256616 () Bool)

(assert (=> b!434167 (=> (not res!255734) (not e!256616))))

(declare-datatypes ((array!26573 0))(
  ( (array!26574 (arr!12733 (Array (_ BitVec 32) (_ BitVec 64))) (size!13085 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26573)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26573 (_ BitVec 32)) Bool)

(assert (=> b!434167 (= res!255734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!18696 () Bool)

(declare-fun mapRes!18696 () Bool)

(assert (=> mapIsEmpty!18696 mapRes!18696))

(declare-fun res!255724 () Bool)

(assert (=> start!39972 (=> (not res!255724) (not e!256616))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39972 (= res!255724 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13085 _keys!709))))))

(assert (=> start!39972 e!256616))

(declare-fun tp_is_empty!11383 () Bool)

(assert (=> start!39972 tp_is_empty!11383))

(assert (=> start!39972 tp!36221))

(assert (=> start!39972 true))

(declare-datatypes ((V!16283 0))(
  ( (V!16284 (val!5736 Int)) )
))
(declare-datatypes ((ValueCell!5348 0))(
  ( (ValueCellFull!5348 (v!7979 V!16283)) (EmptyCell!5348) )
))
(declare-datatypes ((array!26575 0))(
  ( (array!26576 (arr!12734 (Array (_ BitVec 32) ValueCell!5348)) (size!13086 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26575)

(declare-fun e!256618 () Bool)

(declare-fun array_inv!9258 (array!26575) Bool)

(assert (=> start!39972 (and (array_inv!9258 _values!549) e!256618)))

(declare-fun array_inv!9259 (array!26573) Bool)

(assert (=> start!39972 (array_inv!9259 _keys!709)))

(declare-fun b!434168 () Bool)

(declare-fun e!256623 () Bool)

(assert (=> b!434168 (= e!256616 e!256623)))

(declare-fun res!255726 () Bool)

(assert (=> b!434168 (=> (not res!255726) (not e!256623))))

(declare-fun lt!199674 () array!26573)

(assert (=> b!434168 (= res!255726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!199674 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!434168 (= lt!199674 (array!26574 (store (arr!12733 _keys!709) i!563 k!794) (size!13085 _keys!709)))))

(declare-fun b!434169 () Bool)

(declare-fun res!255729 () Bool)

(assert (=> b!434169 (=> (not res!255729) (not e!256616))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!434169 (= res!255729 (validMask!0 mask!1025))))

(declare-fun b!434170 () Bool)

(declare-fun res!255721 () Bool)

(assert (=> b!434170 (=> (not res!255721) (not e!256616))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!434170 (= res!255721 (and (= (size!13086 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13085 _keys!709) (size!13086 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!434171 () Bool)

(declare-fun res!255725 () Bool)

(assert (=> b!434171 (=> (not res!255725) (not e!256616))))

(assert (=> b!434171 (= res!255725 (or (= (select (arr!12733 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12733 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!434172 () Bool)

(declare-fun e!256621 () Bool)

(assert (=> b!434172 (= e!256621 tp_is_empty!11383)))

(declare-fun b!434173 () Bool)

(declare-fun res!255728 () Bool)

(assert (=> b!434173 (=> (not res!255728) (not e!256623))))

(assert (=> b!434173 (= res!255728 (bvsle from!863 i!563))))

(declare-fun b!434174 () Bool)

(declare-fun e!256615 () Bool)

(declare-fun e!256617 () Bool)

(assert (=> b!434174 (= e!256615 e!256617)))

(declare-fun res!255731 () Bool)

(assert (=> b!434174 (=> res!255731 e!256617)))

(assert (=> b!434174 (= res!255731 (= k!794 (select (arr!12733 _keys!709) from!863)))))

(assert (=> b!434174 (not (= (select (arr!12733 _keys!709) from!863) k!794))))

(declare-datatypes ((Unit!12831 0))(
  ( (Unit!12832) )
))
(declare-fun lt!199673 () Unit!12831)

(declare-fun e!256620 () Unit!12831)

(assert (=> b!434174 (= lt!199673 e!256620)))

(declare-fun c!55607 () Bool)

(assert (=> b!434174 (= c!55607 (= (select (arr!12733 _keys!709) from!863) k!794))))

(declare-datatypes ((tuple2!7518 0))(
  ( (tuple2!7519 (_1!3769 (_ BitVec 64)) (_2!3769 V!16283)) )
))
(declare-datatypes ((List!7567 0))(
  ( (Nil!7564) (Cons!7563 (h!8419 tuple2!7518) (t!13255 List!7567)) )
))
(declare-datatypes ((ListLongMap!6445 0))(
  ( (ListLongMap!6446 (toList!3238 List!7567)) )
))
(declare-fun lt!199670 () ListLongMap!6445)

(declare-fun lt!199675 () ListLongMap!6445)

(assert (=> b!434174 (= lt!199670 lt!199675)))

(declare-fun lt!199667 () ListLongMap!6445)

(declare-fun lt!199664 () tuple2!7518)

(declare-fun +!1383 (ListLongMap!6445 tuple2!7518) ListLongMap!6445)

(assert (=> b!434174 (= lt!199675 (+!1383 lt!199667 lt!199664))))

(declare-fun lt!199666 () V!16283)

(assert (=> b!434174 (= lt!199664 (tuple2!7519 (select (arr!12733 _keys!709) from!863) lt!199666))))

(declare-fun defaultEntry!557 () Int)

(declare-fun get!6346 (ValueCell!5348 V!16283) V!16283)

(declare-fun dynLambda!815 (Int (_ BitVec 64)) V!16283)

(assert (=> b!434174 (= lt!199666 (get!6346 (select (arr!12734 _values!549) from!863) (dynLambda!815 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!434175 () Bool)

(assert (=> b!434175 (= e!256618 (and e!256621 mapRes!18696))))

(declare-fun condMapEmpty!18696 () Bool)

(declare-fun mapDefault!18696 () ValueCell!5348)

