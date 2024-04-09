; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39492 () Bool)

(assert start!39492)

(declare-fun b_free!9751 () Bool)

(declare-fun b_next!9751 () Bool)

(assert (=> start!39492 (= b_free!9751 (not b_next!9751))))

(declare-fun tp!34782 () Bool)

(declare-fun b_and!17395 () Bool)

(assert (=> start!39492 (= tp!34782 b_and!17395)))

(declare-fun b!421247 () Bool)

(declare-fun e!250782 () Bool)

(declare-fun tp_is_empty!10903 () Bool)

(assert (=> b!421247 (= e!250782 tp_is_empty!10903)))

(declare-fun b!421248 () Bool)

(declare-fun e!250784 () Bool)

(declare-fun e!250786 () Bool)

(assert (=> b!421248 (= e!250784 e!250786)))

(declare-fun res!245920 () Bool)

(assert (=> b!421248 (=> (not res!245920) (not e!250786))))

(declare-datatypes ((array!25633 0))(
  ( (array!25634 (arr!12263 (Array (_ BitVec 32) (_ BitVec 64))) (size!12615 (_ BitVec 32))) )
))
(declare-fun lt!193430 () array!25633)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25633 (_ BitVec 32)) Bool)

(assert (=> b!421248 (= res!245920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193430 mask!1025))))

(declare-fun _keys!709 () array!25633)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!421248 (= lt!193430 (array!25634 (store (arr!12263 _keys!709) i!563 k!794) (size!12615 _keys!709)))))

(declare-fun b!421249 () Bool)

(declare-fun e!250781 () Bool)

(declare-fun e!250789 () Bool)

(assert (=> b!421249 (= e!250781 (not e!250789))))

(declare-fun res!245909 () Bool)

(assert (=> b!421249 (=> res!245909 e!250789)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!421249 (= res!245909 (validKeyInArray!0 (select (arr!12263 _keys!709) from!863)))))

(declare-fun e!250785 () Bool)

(assert (=> b!421249 e!250785))

(declare-fun c!55265 () Bool)

(assert (=> b!421249 (= c!55265 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!15643 0))(
  ( (V!15644 (val!5496 Int)) )
))
(declare-fun minValue!515 () V!15643)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5108 0))(
  ( (ValueCellFull!5108 (v!7739 V!15643)) (EmptyCell!5108) )
))
(declare-datatypes ((array!25635 0))(
  ( (array!25636 (arr!12264 (Array (_ BitVec 32) ValueCell!5108)) (size!12616 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25635)

(declare-fun zeroValue!515 () V!15643)

(declare-fun v!412 () V!15643)

(declare-datatypes ((Unit!12399 0))(
  ( (Unit!12400) )
))
(declare-fun lt!193437 () Unit!12399)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!453 (array!25633 array!25635 (_ BitVec 32) (_ BitVec 32) V!15643 V!15643 (_ BitVec 32) (_ BitVec 64) V!15643 (_ BitVec 32) Int) Unit!12399)

(assert (=> b!421249 (= lt!193437 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!453 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!245918 () Bool)

(assert (=> start!39492 (=> (not res!245918) (not e!250784))))

(assert (=> start!39492 (= res!245918 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12615 _keys!709))))))

(assert (=> start!39492 e!250784))

(assert (=> start!39492 tp_is_empty!10903))

(assert (=> start!39492 tp!34782))

(assert (=> start!39492 true))

(declare-fun e!250788 () Bool)

(declare-fun array_inv!8934 (array!25635) Bool)

(assert (=> start!39492 (and (array_inv!8934 _values!549) e!250788)))

(declare-fun array_inv!8935 (array!25633) Bool)

(assert (=> start!39492 (array_inv!8935 _keys!709)))

(declare-fun b!421250 () Bool)

(declare-fun res!245911 () Bool)

(assert (=> b!421250 (=> (not res!245911) (not e!250784))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!421250 (= res!245911 (validMask!0 mask!1025))))

(declare-fun b!421251 () Bool)

(declare-fun res!245916 () Bool)

(assert (=> b!421251 (=> (not res!245916) (not e!250784))))

(assert (=> b!421251 (= res!245916 (and (= (size!12616 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12615 _keys!709) (size!12616 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!421252 () Bool)

(declare-fun res!245910 () Bool)

(assert (=> b!421252 (=> (not res!245910) (not e!250786))))

(declare-datatypes ((List!7176 0))(
  ( (Nil!7173) (Cons!7172 (h!8028 (_ BitVec 64)) (t!12600 List!7176)) )
))
(declare-fun arrayNoDuplicates!0 (array!25633 (_ BitVec 32) List!7176) Bool)

(assert (=> b!421252 (= res!245910 (arrayNoDuplicates!0 lt!193430 #b00000000000000000000000000000000 Nil!7173))))

(declare-fun b!421253 () Bool)

(declare-fun res!245915 () Bool)

(assert (=> b!421253 (=> (not res!245915) (not e!250784))))

(assert (=> b!421253 (= res!245915 (validKeyInArray!0 k!794))))

(declare-fun b!421254 () Bool)

(assert (=> b!421254 (= e!250789 true)))

(declare-fun lt!193432 () V!15643)

(declare-datatypes ((tuple2!7134 0))(
  ( (tuple2!7135 (_1!3577 (_ BitVec 64)) (_2!3577 V!15643)) )
))
(declare-fun lt!193435 () tuple2!7134)

(declare-datatypes ((List!7177 0))(
  ( (Nil!7174) (Cons!7173 (h!8029 tuple2!7134) (t!12601 List!7177)) )
))
(declare-datatypes ((ListLongMap!6061 0))(
  ( (ListLongMap!6062 (toList!3046 List!7177)) )
))
(declare-fun lt!193431 () ListLongMap!6061)

(declare-fun +!1249 (ListLongMap!6061 tuple2!7134) ListLongMap!6061)

(assert (=> b!421254 (= (+!1249 lt!193431 lt!193435) (+!1249 (+!1249 lt!193431 (tuple2!7135 k!794 lt!193432)) lt!193435))))

(declare-fun lt!193429 () V!15643)

(assert (=> b!421254 (= lt!193435 (tuple2!7135 k!794 lt!193429))))

(declare-fun lt!193427 () Unit!12399)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!65 (ListLongMap!6061 (_ BitVec 64) V!15643 V!15643) Unit!12399)

(assert (=> b!421254 (= lt!193427 (addSameAsAddTwiceSameKeyDiffValues!65 lt!193431 k!794 lt!193432 lt!193429))))

(declare-fun lt!193436 () V!15643)

(declare-fun get!6098 (ValueCell!5108 V!15643) V!15643)

(assert (=> b!421254 (= lt!193432 (get!6098 (select (arr!12264 _values!549) from!863) lt!193436))))

(declare-fun lt!193428 () ListLongMap!6061)

(assert (=> b!421254 (= lt!193428 (+!1249 lt!193431 (tuple2!7135 (select (arr!12263 lt!193430) from!863) lt!193429)))))

(assert (=> b!421254 (= lt!193429 (get!6098 (select (store (arr!12264 _values!549) i!563 (ValueCellFull!5108 v!412)) from!863) lt!193436))))

(declare-fun dynLambda!727 (Int (_ BitVec 64)) V!15643)

(assert (=> b!421254 (= lt!193436 (dynLambda!727 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!193434 () array!25635)

(declare-fun getCurrentListMapNoExtraKeys!1247 (array!25633 array!25635 (_ BitVec 32) (_ BitVec 32) V!15643 V!15643 (_ BitVec 32) Int) ListLongMap!6061)

(assert (=> b!421254 (= lt!193431 (getCurrentListMapNoExtraKeys!1247 lt!193430 lt!193434 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421255 () Bool)

(declare-fun res!245921 () Bool)

(assert (=> b!421255 (=> (not res!245921) (not e!250784))))

(assert (=> b!421255 (= res!245921 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7173))))

(declare-fun mapNonEmpty!17976 () Bool)

(declare-fun mapRes!17976 () Bool)

(declare-fun tp!34781 () Bool)

(declare-fun e!250787 () Bool)

(assert (=> mapNonEmpty!17976 (= mapRes!17976 (and tp!34781 e!250787))))

(declare-fun mapRest!17976 () (Array (_ BitVec 32) ValueCell!5108))

(declare-fun mapValue!17976 () ValueCell!5108)

(declare-fun mapKey!17976 () (_ BitVec 32))

(assert (=> mapNonEmpty!17976 (= (arr!12264 _values!549) (store mapRest!17976 mapKey!17976 mapValue!17976))))

(declare-fun b!421256 () Bool)

(assert (=> b!421256 (= e!250786 e!250781)))

(declare-fun res!245917 () Bool)

(assert (=> b!421256 (=> (not res!245917) (not e!250781))))

(assert (=> b!421256 (= res!245917 (= from!863 i!563))))

(assert (=> b!421256 (= lt!193428 (getCurrentListMapNoExtraKeys!1247 lt!193430 lt!193434 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!421256 (= lt!193434 (array!25636 (store (arr!12264 _values!549) i!563 (ValueCellFull!5108 v!412)) (size!12616 _values!549)))))

(declare-fun lt!193433 () ListLongMap!6061)

(assert (=> b!421256 (= lt!193433 (getCurrentListMapNoExtraKeys!1247 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!421257 () Bool)

(assert (=> b!421257 (= e!250787 tp_is_empty!10903)))

(declare-fun b!421258 () Bool)

(declare-fun call!29429 () ListLongMap!6061)

(declare-fun call!29428 () ListLongMap!6061)

(assert (=> b!421258 (= e!250785 (= call!29429 call!29428))))

(declare-fun mapIsEmpty!17976 () Bool)

(assert (=> mapIsEmpty!17976 mapRes!17976))

(declare-fun bm!29425 () Bool)

(assert (=> bm!29425 (= call!29429 (getCurrentListMapNoExtraKeys!1247 (ite c!55265 _keys!709 lt!193430) (ite c!55265 _values!549 lt!193434) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!29426 () Bool)

(assert (=> bm!29426 (= call!29428 (getCurrentListMapNoExtraKeys!1247 (ite c!55265 lt!193430 _keys!709) (ite c!55265 lt!193434 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421259 () Bool)

(assert (=> b!421259 (= e!250788 (and e!250782 mapRes!17976))))

(declare-fun condMapEmpty!17976 () Bool)

(declare-fun mapDefault!17976 () ValueCell!5108)

