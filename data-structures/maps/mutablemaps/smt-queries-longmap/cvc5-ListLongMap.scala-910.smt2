; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20568 () Bool)

(assert start!20568)

(declare-fun b_free!5215 () Bool)

(declare-fun b_next!5215 () Bool)

(assert (=> start!20568 (= b_free!5215 (not b_next!5215))))

(declare-fun tp!18677 () Bool)

(declare-fun b_and!11979 () Bool)

(assert (=> start!20568 (= tp!18677 b_and!11979)))

(declare-fun b!204472 () Bool)

(declare-fun e!133789 () Bool)

(declare-fun e!133787 () Bool)

(assert (=> b!204472 (= e!133789 (not e!133787))))

(declare-fun res!98561 () Bool)

(assert (=> b!204472 (=> res!98561 e!133787)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!204472 (= res!98561 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6409 0))(
  ( (V!6410 (val!2580 Int)) )
))
(declare-datatypes ((tuple2!3908 0))(
  ( (tuple2!3909 (_1!1964 (_ BitVec 64)) (_2!1964 V!6409)) )
))
(declare-datatypes ((List!2831 0))(
  ( (Nil!2828) (Cons!2827 (h!3469 tuple2!3908) (t!7770 List!2831)) )
))
(declare-datatypes ((ListLongMap!2835 0))(
  ( (ListLongMap!2836 (toList!1433 List!2831)) )
))
(declare-fun lt!103678 () ListLongMap!2835)

(declare-datatypes ((ValueCell!2192 0))(
  ( (ValueCellFull!2192 (v!4546 V!6409)) (EmptyCell!2192) )
))
(declare-datatypes ((array!9358 0))(
  ( (array!9359 (arr!4429 (Array (_ BitVec 32) ValueCell!2192)) (size!4754 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9358)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6409)

(declare-datatypes ((array!9360 0))(
  ( (array!9361 (arr!4430 (Array (_ BitVec 32) (_ BitVec 64))) (size!4755 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9360)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6409)

(declare-fun getCurrentListMap!1001 (array!9360 array!9358 (_ BitVec 32) (_ BitVec 32) V!6409 V!6409 (_ BitVec 32) Int) ListLongMap!2835)

(assert (=> b!204472 (= lt!103678 (getCurrentListMap!1001 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103673 () ListLongMap!2835)

(declare-fun lt!103670 () array!9358)

(assert (=> b!204472 (= lt!103673 (getCurrentListMap!1001 _keys!825 lt!103670 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103672 () ListLongMap!2835)

(declare-fun lt!103677 () ListLongMap!2835)

(assert (=> b!204472 (and (= lt!103672 lt!103677) (= lt!103677 lt!103672))))

(declare-fun lt!103680 () ListLongMap!2835)

(declare-fun lt!103674 () tuple2!3908)

(declare-fun +!450 (ListLongMap!2835 tuple2!3908) ListLongMap!2835)

(assert (=> b!204472 (= lt!103677 (+!450 lt!103680 lt!103674))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6409)

(assert (=> b!204472 (= lt!103674 (tuple2!3909 k!843 v!520))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!6199 0))(
  ( (Unit!6200) )
))
(declare-fun lt!103675 () Unit!6199)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!114 (array!9360 array!9358 (_ BitVec 32) (_ BitVec 32) V!6409 V!6409 (_ BitVec 32) (_ BitVec 64) V!6409 (_ BitVec 32) Int) Unit!6199)

(assert (=> b!204472 (= lt!103675 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!114 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!372 (array!9360 array!9358 (_ BitVec 32) (_ BitVec 32) V!6409 V!6409 (_ BitVec 32) Int) ListLongMap!2835)

(assert (=> b!204472 (= lt!103672 (getCurrentListMapNoExtraKeys!372 _keys!825 lt!103670 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!204472 (= lt!103670 (array!9359 (store (arr!4429 _values!649) i!601 (ValueCellFull!2192 v!520)) (size!4754 _values!649)))))

(assert (=> b!204472 (= lt!103680 (getCurrentListMapNoExtraKeys!372 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapIsEmpty!8675 () Bool)

(declare-fun mapRes!8675 () Bool)

(assert (=> mapIsEmpty!8675 mapRes!8675))

(declare-fun b!204473 () Bool)

(declare-fun res!98565 () Bool)

(assert (=> b!204473 (=> (not res!98565) (not e!133789))))

(assert (=> b!204473 (= res!98565 (= (select (arr!4430 _keys!825) i!601) k!843))))

(declare-fun b!204474 () Bool)

(declare-fun e!133786 () Bool)

(assert (=> b!204474 (= e!133786 true)))

(declare-fun lt!103679 () ListLongMap!2835)

(declare-fun lt!103671 () ListLongMap!2835)

(assert (=> b!204474 (= lt!103679 (+!450 lt!103671 lt!103674))))

(declare-fun lt!103676 () Unit!6199)

(declare-fun addCommutativeForDiffKeys!156 (ListLongMap!2835 (_ BitVec 64) V!6409 (_ BitVec 64) V!6409) Unit!6199)

(assert (=> b!204474 (= lt!103676 (addCommutativeForDiffKeys!156 lt!103680 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!204475 () Bool)

(declare-fun res!98558 () Bool)

(assert (=> b!204475 (=> (not res!98558) (not e!133789))))

(assert (=> b!204475 (= res!98558 (and (= (size!4754 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4755 _keys!825) (size!4754 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!204476 () Bool)

(declare-fun e!133788 () Bool)

(declare-fun tp_is_empty!5071 () Bool)

(assert (=> b!204476 (= e!133788 tp_is_empty!5071)))

(declare-fun b!204477 () Bool)

(assert (=> b!204477 (= e!133787 e!133786)))

(declare-fun res!98563 () Bool)

(assert (=> b!204477 (=> res!98563 e!133786)))

(assert (=> b!204477 (= res!98563 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!204477 (= lt!103678 lt!103671)))

(declare-fun lt!103681 () tuple2!3908)

(assert (=> b!204477 (= lt!103671 (+!450 lt!103680 lt!103681))))

(assert (=> b!204477 (= lt!103673 lt!103679)))

(assert (=> b!204477 (= lt!103679 (+!450 lt!103677 lt!103681))))

(assert (=> b!204477 (= lt!103673 (+!450 lt!103672 lt!103681))))

(assert (=> b!204477 (= lt!103681 (tuple2!3909 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!204478 () Bool)

(declare-fun res!98560 () Bool)

(assert (=> b!204478 (=> (not res!98560) (not e!133789))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9360 (_ BitVec 32)) Bool)

(assert (=> b!204478 (= res!98560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!204479 () Bool)

(declare-fun res!98566 () Bool)

(assert (=> b!204479 (=> (not res!98566) (not e!133789))))

(assert (=> b!204479 (= res!98566 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4755 _keys!825))))))

(declare-fun b!204480 () Bool)

(declare-fun e!133790 () Bool)

(assert (=> b!204480 (= e!133790 (and e!133788 mapRes!8675))))

(declare-fun condMapEmpty!8675 () Bool)

(declare-fun mapDefault!8675 () ValueCell!2192)

