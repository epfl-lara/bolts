; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39792 () Bool)

(assert start!39792)

(declare-fun b_free!10051 () Bool)

(declare-fun b_next!10051 () Bool)

(assert (=> start!39792 (= b_free!10051 (not b_next!10051))))

(declare-fun tp!35682 () Bool)

(declare-fun b_and!17779 () Bool)

(assert (=> start!39792 (= tp!35682 b_and!17779)))

(declare-fun b!428648 () Bool)

(declare-fun res!251737 () Bool)

(declare-fun e!253981 () Bool)

(assert (=> b!428648 (=> (not res!251737) (not e!253981))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!26223 0))(
  ( (array!26224 (arr!12558 (Array (_ BitVec 32) (_ BitVec 64))) (size!12910 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26223)

(assert (=> b!428648 (= res!251737 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12910 _keys!709))))))

(declare-fun b!428649 () Bool)

(declare-fun res!251743 () Bool)

(assert (=> b!428649 (=> (not res!251743) (not e!253981))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16043 0))(
  ( (V!16044 (val!5646 Int)) )
))
(declare-datatypes ((ValueCell!5258 0))(
  ( (ValueCellFull!5258 (v!7889 V!16043)) (EmptyCell!5258) )
))
(declare-datatypes ((array!26225 0))(
  ( (array!26226 (arr!12559 (Array (_ BitVec 32) ValueCell!5258)) (size!12911 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26225)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!428649 (= res!251743 (and (= (size!12911 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12910 _keys!709) (size!12911 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!428650 () Bool)

(declare-fun e!253982 () Bool)

(declare-fun e!253977 () Bool)

(assert (=> b!428650 (= e!253982 e!253977)))

(declare-fun res!251744 () Bool)

(assert (=> b!428650 (=> (not res!251744) (not e!253977))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!428650 (= res!251744 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16043)

(declare-fun zeroValue!515 () V!16043)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!195925 () array!26225)

(declare-datatypes ((tuple2!7368 0))(
  ( (tuple2!7369 (_1!3694 (_ BitVec 64)) (_2!3694 V!16043)) )
))
(declare-datatypes ((List!7417 0))(
  ( (Nil!7414) (Cons!7413 (h!8269 tuple2!7368) (t!12925 List!7417)) )
))
(declare-datatypes ((ListLongMap!6295 0))(
  ( (ListLongMap!6296 (toList!3163 List!7417)) )
))
(declare-fun lt!195920 () ListLongMap!6295)

(declare-fun lt!195918 () array!26223)

(declare-fun getCurrentListMapNoExtraKeys!1362 (array!26223 array!26225 (_ BitVec 32) (_ BitVec 32) V!16043 V!16043 (_ BitVec 32) Int) ListLongMap!6295)

(assert (=> b!428650 (= lt!195920 (getCurrentListMapNoExtraKeys!1362 lt!195918 lt!195925 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16043)

(assert (=> b!428650 (= lt!195925 (array!26226 (store (arr!12559 _values!549) i!563 (ValueCellFull!5258 v!412)) (size!12911 _values!549)))))

(declare-fun lt!195921 () ListLongMap!6295)

(assert (=> b!428650 (= lt!195921 (getCurrentListMapNoExtraKeys!1362 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!428651 () Bool)

(declare-fun res!251733 () Bool)

(assert (=> b!428651 (=> (not res!251733) (not e!253982))))

(declare-datatypes ((List!7418 0))(
  ( (Nil!7415) (Cons!7414 (h!8270 (_ BitVec 64)) (t!12926 List!7418)) )
))
(declare-fun arrayNoDuplicates!0 (array!26223 (_ BitVec 32) List!7418) Bool)

(assert (=> b!428651 (= res!251733 (arrayNoDuplicates!0 lt!195918 #b00000000000000000000000000000000 Nil!7415))))

(declare-fun b!428652 () Bool)

(assert (=> b!428652 (= e!253981 e!253982)))

(declare-fun res!251732 () Bool)

(assert (=> b!428652 (=> (not res!251732) (not e!253982))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26223 (_ BitVec 32)) Bool)

(assert (=> b!428652 (= res!251732 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195918 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!428652 (= lt!195918 (array!26224 (store (arr!12558 _keys!709) i!563 k!794) (size!12910 _keys!709)))))

(declare-fun b!428653 () Bool)

(declare-fun e!253980 () Bool)

(declare-fun tp_is_empty!11203 () Bool)

(assert (=> b!428653 (= e!253980 tp_is_empty!11203)))

(declare-fun b!428654 () Bool)

(declare-fun e!253984 () Bool)

(declare-fun mapRes!18426 () Bool)

(assert (=> b!428654 (= e!253984 (and e!253980 mapRes!18426))))

(declare-fun condMapEmpty!18426 () Bool)

(declare-fun mapDefault!18426 () ValueCell!5258)

