; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39496 () Bool)

(assert start!39496)

(declare-fun b_free!9755 () Bool)

(declare-fun b_next!9755 () Bool)

(assert (=> start!39496 (= b_free!9755 (not b_next!9755))))

(declare-fun tp!34793 () Bool)

(declare-fun b_and!17403 () Bool)

(assert (=> start!39496 (= tp!34793 b_and!17403)))

(declare-fun b!421365 () Bool)

(declare-fun e!250837 () Bool)

(assert (=> b!421365 (= e!250837 true)))

(declare-datatypes ((V!15647 0))(
  ( (V!15648 (val!5498 Int)) )
))
(declare-datatypes ((tuple2!7138 0))(
  ( (tuple2!7139 (_1!3579 (_ BitVec 64)) (_2!3579 V!15647)) )
))
(declare-fun lt!193500 () tuple2!7138)

(declare-fun lt!193502 () V!15647)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((List!7180 0))(
  ( (Nil!7177) (Cons!7176 (h!8032 tuple2!7138) (t!12608 List!7180)) )
))
(declare-datatypes ((ListLongMap!6065 0))(
  ( (ListLongMap!6066 (toList!3048 List!7180)) )
))
(declare-fun lt!193501 () ListLongMap!6065)

(declare-fun +!1251 (ListLongMap!6065 tuple2!7138) ListLongMap!6065)

(assert (=> b!421365 (= (+!1251 lt!193501 lt!193500) (+!1251 (+!1251 lt!193501 (tuple2!7139 k!794 lt!193502)) lt!193500))))

(declare-fun lt!193498 () V!15647)

(assert (=> b!421365 (= lt!193500 (tuple2!7139 k!794 lt!193498))))

(declare-datatypes ((Unit!12403 0))(
  ( (Unit!12404) )
))
(declare-fun lt!193493 () Unit!12403)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!67 (ListLongMap!6065 (_ BitVec 64) V!15647 V!15647) Unit!12403)

(assert (=> b!421365 (= lt!193493 (addSameAsAddTwiceSameKeyDiffValues!67 lt!193501 k!794 lt!193502 lt!193498))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5110 0))(
  ( (ValueCellFull!5110 (v!7741 V!15647)) (EmptyCell!5110) )
))
(declare-datatypes ((array!25641 0))(
  ( (array!25642 (arr!12267 (Array (_ BitVec 32) ValueCell!5110)) (size!12619 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25641)

(declare-fun lt!193495 () V!15647)

(declare-fun get!6100 (ValueCell!5110 V!15647) V!15647)

(assert (=> b!421365 (= lt!193502 (get!6100 (select (arr!12267 _values!549) from!863) lt!193495))))

(declare-datatypes ((array!25643 0))(
  ( (array!25644 (arr!12268 (Array (_ BitVec 32) (_ BitVec 64))) (size!12620 (_ BitVec 32))) )
))
(declare-fun lt!193499 () array!25643)

(declare-fun lt!193496 () ListLongMap!6065)

(assert (=> b!421365 (= lt!193496 (+!1251 lt!193501 (tuple2!7139 (select (arr!12268 lt!193499) from!863) lt!193498)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!15647)

(assert (=> b!421365 (= lt!193498 (get!6100 (select (store (arr!12267 _values!549) i!563 (ValueCellFull!5110 v!412)) from!863) lt!193495))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!729 (Int (_ BitVec 64)) V!15647)

(assert (=> b!421365 (= lt!193495 (dynLambda!729 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!193497 () array!25641)

(declare-fun minValue!515 () V!15647)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15647)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1249 (array!25643 array!25641 (_ BitVec 32) (_ BitVec 32) V!15647 V!15647 (_ BitVec 32) Int) ListLongMap!6065)

(assert (=> b!421365 (= lt!193501 (getCurrentListMapNoExtraKeys!1249 lt!193499 lt!193497 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!29437 () Bool)

(declare-fun c!55271 () Bool)

(declare-fun call!29441 () ListLongMap!6065)

(declare-fun _keys!709 () array!25643)

(assert (=> bm!29437 (= call!29441 (getCurrentListMapNoExtraKeys!1249 (ite c!55271 _keys!709 lt!193499) (ite c!55271 _values!549 lt!193497) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421366 () Bool)

(declare-fun res!246000 () Bool)

(declare-fun e!250835 () Bool)

(assert (=> b!421366 (=> (not res!246000) (not e!250835))))

(assert (=> b!421366 (= res!246000 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12620 _keys!709))))))

(declare-fun b!421367 () Bool)

(declare-fun res!245995 () Bool)

(assert (=> b!421367 (=> (not res!245995) (not e!250835))))

(declare-fun arrayContainsKey!0 (array!25643 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!421367 (= res!245995 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!246005 () Bool)

(assert (=> start!39496 (=> (not res!246005) (not e!250835))))

(assert (=> start!39496 (= res!246005 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12620 _keys!709))))))

(assert (=> start!39496 e!250835))

(declare-fun tp_is_empty!10907 () Bool)

(assert (=> start!39496 tp_is_empty!10907))

(assert (=> start!39496 tp!34793))

(assert (=> start!39496 true))

(declare-fun e!250839 () Bool)

(declare-fun array_inv!8938 (array!25641) Bool)

(assert (=> start!39496 (and (array_inv!8938 _values!549) e!250839)))

(declare-fun array_inv!8939 (array!25643) Bool)

(assert (=> start!39496 (array_inv!8939 _keys!709)))

(declare-fun b!421368 () Bool)

(declare-fun e!250836 () Bool)

(declare-fun e!250840 () Bool)

(assert (=> b!421368 (= e!250836 e!250840)))

(declare-fun res!245998 () Bool)

(assert (=> b!421368 (=> (not res!245998) (not e!250840))))

(assert (=> b!421368 (= res!245998 (= from!863 i!563))))

(assert (=> b!421368 (= lt!193496 (getCurrentListMapNoExtraKeys!1249 lt!193499 lt!193497 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!421368 (= lt!193497 (array!25642 (store (arr!12267 _values!549) i!563 (ValueCellFull!5110 v!412)) (size!12619 _values!549)))))

(declare-fun lt!193503 () ListLongMap!6065)

(assert (=> b!421368 (= lt!193503 (getCurrentListMapNoExtraKeys!1249 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!421369 () Bool)

(declare-fun res!246003 () Bool)

(assert (=> b!421369 (=> (not res!246003) (not e!250836))))

(assert (=> b!421369 (= res!246003 (bvsle from!863 i!563))))

(declare-fun b!421370 () Bool)

(declare-fun res!246004 () Bool)

(assert (=> b!421370 (=> (not res!246004) (not e!250835))))

(declare-datatypes ((List!7181 0))(
  ( (Nil!7178) (Cons!7177 (h!8033 (_ BitVec 64)) (t!12609 List!7181)) )
))
(declare-fun arrayNoDuplicates!0 (array!25643 (_ BitVec 32) List!7181) Bool)

(assert (=> b!421370 (= res!246004 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7178))))

(declare-fun mapNonEmpty!17982 () Bool)

(declare-fun mapRes!17982 () Bool)

(declare-fun tp!34794 () Bool)

(declare-fun e!250843 () Bool)

(assert (=> mapNonEmpty!17982 (= mapRes!17982 (and tp!34794 e!250843))))

(declare-fun mapKey!17982 () (_ BitVec 32))

(declare-fun mapRest!17982 () (Array (_ BitVec 32) ValueCell!5110))

(declare-fun mapValue!17982 () ValueCell!5110)

(assert (=> mapNonEmpty!17982 (= (arr!12267 _values!549) (store mapRest!17982 mapKey!17982 mapValue!17982))))

(declare-fun b!421371 () Bool)

(declare-fun e!250841 () Bool)

(assert (=> b!421371 (= e!250839 (and e!250841 mapRes!17982))))

(declare-fun condMapEmpty!17982 () Bool)

(declare-fun mapDefault!17982 () ValueCell!5110)

