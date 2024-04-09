; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40812 () Bool)

(assert start!40812)

(declare-fun b_free!10793 () Bool)

(declare-fun b_next!10793 () Bool)

(assert (=> start!40812 (= b_free!10793 (not b_next!10793))))

(declare-fun tp!38202 () Bool)

(declare-fun b_and!18891 () Bool)

(assert (=> start!40812 (= tp!38202 b_and!18891)))

(declare-fun b!452571 () Bool)

(declare-datatypes ((V!17279 0))(
  ( (V!17280 (val!6110 Int)) )
))
(declare-datatypes ((tuple2!7992 0))(
  ( (tuple2!7993 (_1!4006 (_ BitVec 64)) (_2!4006 V!17279)) )
))
(declare-datatypes ((List!8094 0))(
  ( (Nil!8091) (Cons!8090 (h!8946 tuple2!7992) (t!13918 List!8094)) )
))
(declare-datatypes ((ListLongMap!6919 0))(
  ( (ListLongMap!6920 (toList!3475 List!8094)) )
))
(declare-fun call!29989 () ListLongMap!6919)

(declare-fun e!264957 () Bool)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun call!29990 () ListLongMap!6919)

(declare-fun v!412 () V!17279)

(declare-fun +!1540 (ListLongMap!6919 tuple2!7992) ListLongMap!6919)

(assert (=> b!452571 (= e!264957 (= call!29990 (+!1540 call!29989 (tuple2!7993 k!794 v!412))))))

(declare-fun mapNonEmpty!19833 () Bool)

(declare-fun mapRes!19833 () Bool)

(declare-fun tp!38201 () Bool)

(declare-fun e!264955 () Bool)

(assert (=> mapNonEmpty!19833 (= mapRes!19833 (and tp!38201 e!264955))))

(declare-fun mapKey!19833 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5722 0))(
  ( (ValueCellFull!5722 (v!8365 V!17279)) (EmptyCell!5722) )
))
(declare-datatypes ((array!28029 0))(
  ( (array!28030 (arr!13456 (Array (_ BitVec 32) ValueCell!5722)) (size!13808 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28029)

(declare-fun mapValue!19833 () ValueCell!5722)

(declare-fun mapRest!19833 () (Array (_ BitVec 32) ValueCell!5722))

(assert (=> mapNonEmpty!19833 (= (arr!13456 _values!549) (store mapRest!19833 mapKey!19833 mapValue!19833))))

(declare-fun b!452572 () Bool)

(assert (=> b!452572 (= e!264957 (= call!29989 call!29990))))

(declare-fun b!452573 () Bool)

(declare-fun e!264956 () Bool)

(declare-fun e!264960 () Bool)

(assert (=> b!452573 (= e!264956 (not e!264960))))

(declare-fun res!269674 () Bool)

(assert (=> b!452573 (=> res!269674 e!264960)))

(declare-datatypes ((array!28031 0))(
  ( (array!28032 (arr!13457 (Array (_ BitVec 32) (_ BitVec 64))) (size!13809 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28031)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!452573 (= res!269674 (validKeyInArray!0 (select (arr!13457 _keys!709) from!863)))))

(assert (=> b!452573 e!264957))

(declare-fun c!56063 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!452573 (= c!56063 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!17279)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17279)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((Unit!13181 0))(
  ( (Unit!13182) )
))
(declare-fun lt!205382 () Unit!13181)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!707 (array!28031 array!28029 (_ BitVec 32) (_ BitVec 32) V!17279 V!17279 (_ BitVec 32) (_ BitVec 64) V!17279 (_ BitVec 32) Int) Unit!13181)

(assert (=> b!452573 (= lt!205382 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!707 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452574 () Bool)

(declare-fun res!269684 () Bool)

(declare-fun e!264954 () Bool)

(assert (=> b!452574 (=> (not res!269684) (not e!264954))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!452574 (= res!269684 (validMask!0 mask!1025))))

(declare-fun b!452575 () Bool)

(declare-fun e!264953 () Bool)

(assert (=> b!452575 (= e!264954 e!264953)))

(declare-fun res!269678 () Bool)

(assert (=> b!452575 (=> (not res!269678) (not e!264953))))

(declare-fun lt!205389 () array!28031)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28031 (_ BitVec 32)) Bool)

(assert (=> b!452575 (= res!269678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!205389 mask!1025))))

(assert (=> b!452575 (= lt!205389 (array!28032 (store (arr!13457 _keys!709) i!563 k!794) (size!13809 _keys!709)))))

(declare-fun res!269682 () Bool)

(assert (=> start!40812 (=> (not res!269682) (not e!264954))))

(assert (=> start!40812 (= res!269682 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13809 _keys!709))))))

(assert (=> start!40812 e!264954))

(declare-fun tp_is_empty!12131 () Bool)

(assert (=> start!40812 tp_is_empty!12131))

(assert (=> start!40812 tp!38202))

(assert (=> start!40812 true))

(declare-fun e!264952 () Bool)

(declare-fun array_inv!9740 (array!28029) Bool)

(assert (=> start!40812 (and (array_inv!9740 _values!549) e!264952)))

(declare-fun array_inv!9741 (array!28031) Bool)

(assert (=> start!40812 (array_inv!9741 _keys!709)))

(declare-fun bm!29986 () Bool)

(declare-fun lt!205386 () array!28029)

(declare-fun getCurrentListMapNoExtraKeys!1651 (array!28031 array!28029 (_ BitVec 32) (_ BitVec 32) V!17279 V!17279 (_ BitVec 32) Int) ListLongMap!6919)

(assert (=> bm!29986 (= call!29990 (getCurrentListMapNoExtraKeys!1651 (ite c!56063 lt!205389 _keys!709) (ite c!56063 lt!205386 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!29987 () Bool)

(assert (=> bm!29987 (= call!29989 (getCurrentListMapNoExtraKeys!1651 (ite c!56063 _keys!709 lt!205389) (ite c!56063 _values!549 lt!205386) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452576 () Bool)

(assert (=> b!452576 (= e!264955 tp_is_empty!12131)))

(declare-fun b!452577 () Bool)

(declare-fun res!269673 () Bool)

(assert (=> b!452577 (=> (not res!269673) (not e!264954))))

(assert (=> b!452577 (= res!269673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!452578 () Bool)

(declare-fun res!269681 () Bool)

(assert (=> b!452578 (=> (not res!269681) (not e!264953))))

(assert (=> b!452578 (= res!269681 (bvsle from!863 i!563))))

(declare-fun b!452579 () Bool)

(declare-fun res!269671 () Bool)

(assert (=> b!452579 (=> (not res!269671) (not e!264954))))

(declare-datatypes ((List!8095 0))(
  ( (Nil!8092) (Cons!8091 (h!8947 (_ BitVec 64)) (t!13919 List!8095)) )
))
(declare-fun arrayNoDuplicates!0 (array!28031 (_ BitVec 32) List!8095) Bool)

(assert (=> b!452579 (= res!269671 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8092))))

(declare-fun mapIsEmpty!19833 () Bool)

(assert (=> mapIsEmpty!19833 mapRes!19833))

(declare-fun b!452580 () Bool)

(declare-fun e!264958 () Bool)

(assert (=> b!452580 (= e!264958 tp_is_empty!12131)))

(declare-fun b!452581 () Bool)

(declare-fun res!269679 () Bool)

(assert (=> b!452581 (=> (not res!269679) (not e!264954))))

(assert (=> b!452581 (= res!269679 (validKeyInArray!0 k!794))))

(declare-fun b!452582 () Bool)

(declare-fun res!269676 () Bool)

(assert (=> b!452582 (=> (not res!269676) (not e!264954))))

(declare-fun arrayContainsKey!0 (array!28031 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!452582 (= res!269676 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!452583 () Bool)

(declare-fun res!269680 () Bool)

(assert (=> b!452583 (=> (not res!269680) (not e!264954))))

(assert (=> b!452583 (= res!269680 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13809 _keys!709))))))

(declare-fun b!452584 () Bool)

(assert (=> b!452584 (= e!264953 e!264956)))

(declare-fun res!269683 () Bool)

(assert (=> b!452584 (=> (not res!269683) (not e!264956))))

(assert (=> b!452584 (= res!269683 (= from!863 i!563))))

(declare-fun lt!205390 () ListLongMap!6919)

(assert (=> b!452584 (= lt!205390 (getCurrentListMapNoExtraKeys!1651 lt!205389 lt!205386 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!452584 (= lt!205386 (array!28030 (store (arr!13456 _values!549) i!563 (ValueCellFull!5722 v!412)) (size!13808 _values!549)))))

(declare-fun lt!205387 () ListLongMap!6919)

(assert (=> b!452584 (= lt!205387 (getCurrentListMapNoExtraKeys!1651 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!452585 () Bool)

(declare-fun res!269672 () Bool)

(assert (=> b!452585 (=> (not res!269672) (not e!264954))))

(assert (=> b!452585 (= res!269672 (and (= (size!13808 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13809 _keys!709) (size!13808 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!452586 () Bool)

(declare-fun res!269675 () Bool)

(assert (=> b!452586 (=> (not res!269675) (not e!264953))))

(assert (=> b!452586 (= res!269675 (arrayNoDuplicates!0 lt!205389 #b00000000000000000000000000000000 Nil!8092))))

(declare-fun b!452587 () Bool)

(declare-fun res!269677 () Bool)

(assert (=> b!452587 (=> (not res!269677) (not e!264954))))

(assert (=> b!452587 (= res!269677 (or (= (select (arr!13457 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13457 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!452588 () Bool)

(assert (=> b!452588 (= e!264960 true)))

(declare-fun lt!205391 () tuple2!7992)

(declare-fun lt!205384 () ListLongMap!6919)

(declare-fun lt!205392 () V!17279)

(assert (=> b!452588 (= (+!1540 lt!205384 lt!205391) (+!1540 (+!1540 lt!205384 (tuple2!7993 k!794 lt!205392)) lt!205391))))

(declare-fun lt!205385 () V!17279)

(assert (=> b!452588 (= lt!205391 (tuple2!7993 k!794 lt!205385))))

(declare-fun lt!205388 () Unit!13181)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!85 (ListLongMap!6919 (_ BitVec 64) V!17279 V!17279) Unit!13181)

(assert (=> b!452588 (= lt!205388 (addSameAsAddTwiceSameKeyDiffValues!85 lt!205384 k!794 lt!205392 lt!205385))))

(declare-fun lt!205383 () V!17279)

(declare-fun get!6644 (ValueCell!5722 V!17279) V!17279)

(assert (=> b!452588 (= lt!205392 (get!6644 (select (arr!13456 _values!549) from!863) lt!205383))))

(assert (=> b!452588 (= lt!205390 (+!1540 lt!205384 (tuple2!7993 (select (arr!13457 lt!205389) from!863) lt!205385)))))

(assert (=> b!452588 (= lt!205385 (get!6644 (select (store (arr!13456 _values!549) i!563 (ValueCellFull!5722 v!412)) from!863) lt!205383))))

(declare-fun dynLambda!863 (Int (_ BitVec 64)) V!17279)

(assert (=> b!452588 (= lt!205383 (dynLambda!863 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!452588 (= lt!205384 (getCurrentListMapNoExtraKeys!1651 lt!205389 lt!205386 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452589 () Bool)

(assert (=> b!452589 (= e!264952 (and e!264958 mapRes!19833))))

(declare-fun condMapEmpty!19833 () Bool)

(declare-fun mapDefault!19833 () ValueCell!5722)

