; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39438 () Bool)

(assert start!39438)

(declare-fun b_free!9697 () Bool)

(declare-fun b_next!9697 () Bool)

(assert (=> start!39438 (= b_free!9697 (not b_next!9697))))

(declare-fun tp!34620 () Bool)

(declare-fun b_and!17287 () Bool)

(assert (=> start!39438 (= tp!34620 b_and!17287)))

(declare-fun b!419654 () Bool)

(declare-fun res!244776 () Bool)

(declare-fun e!250053 () Bool)

(assert (=> b!419654 (=> (not res!244776) (not e!250053))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!419654 (= res!244776 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!17895 () Bool)

(declare-fun mapRes!17895 () Bool)

(assert (=> mapIsEmpty!17895 mapRes!17895))

(declare-datatypes ((V!15571 0))(
  ( (V!15572 (val!5469 Int)) )
))
(declare-fun minValue!515 () V!15571)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5081 0))(
  ( (ValueCellFull!5081 (v!7712 V!15571)) (EmptyCell!5081) )
))
(declare-datatypes ((array!25529 0))(
  ( (array!25530 (arr!12211 (Array (_ BitVec 32) ValueCell!5081)) (size!12563 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25529)

(declare-fun lt!192541 () array!25529)

(declare-datatypes ((tuple2!7092 0))(
  ( (tuple2!7093 (_1!3556 (_ BitVec 64)) (_2!3556 V!15571)) )
))
(declare-datatypes ((List!7136 0))(
  ( (Nil!7133) (Cons!7132 (h!7988 tuple2!7092) (t!12506 List!7136)) )
))
(declare-datatypes ((ListLongMap!6019 0))(
  ( (ListLongMap!6020 (toList!3025 List!7136)) )
))
(declare-fun call!29266 () ListLongMap!6019)

(declare-fun c!55184 () Bool)

(declare-fun bm!29263 () Bool)

(declare-datatypes ((array!25531 0))(
  ( (array!25532 (arr!12212 (Array (_ BitVec 32) (_ BitVec 64))) (size!12564 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25531)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15571)

(declare-fun lt!192542 () array!25531)

(declare-fun getCurrentListMapNoExtraKeys!1226 (array!25531 array!25529 (_ BitVec 32) (_ BitVec 32) V!15571 V!15571 (_ BitVec 32) Int) ListLongMap!6019)

(assert (=> bm!29263 (= call!29266 (getCurrentListMapNoExtraKeys!1226 (ite c!55184 lt!192542 _keys!709) (ite c!55184 lt!192541 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!17895 () Bool)

(declare-fun tp!34619 () Bool)

(declare-fun e!250059 () Bool)

(assert (=> mapNonEmpty!17895 (= mapRes!17895 (and tp!34619 e!250059))))

(declare-fun mapRest!17895 () (Array (_ BitVec 32) ValueCell!5081))

(declare-fun mapKey!17895 () (_ BitVec 32))

(declare-fun mapValue!17895 () ValueCell!5081)

(assert (=> mapNonEmpty!17895 (= (arr!12211 _values!549) (store mapRest!17895 mapKey!17895 mapValue!17895))))

(declare-fun b!419655 () Bool)

(declare-fun e!250052 () Bool)

(declare-fun e!250060 () Bool)

(assert (=> b!419655 (= e!250052 (not e!250060))))

(declare-fun res!244778 () Bool)

(assert (=> b!419655 (=> res!244778 e!250060)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!419655 (= res!244778 (validKeyInArray!0 (select (arr!12212 _keys!709) from!863)))))

(declare-fun e!250054 () Bool)

(assert (=> b!419655 e!250054))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!419655 (= c!55184 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((Unit!12359 0))(
  ( (Unit!12360) )
))
(declare-fun lt!192546 () Unit!12359)

(declare-fun v!412 () V!15571)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!435 (array!25531 array!25529 (_ BitVec 32) (_ BitVec 32) V!15571 V!15571 (_ BitVec 32) (_ BitVec 64) V!15571 (_ BitVec 32) Int) Unit!12359)

(assert (=> b!419655 (= lt!192546 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!435 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419656 () Bool)

(declare-fun res!244785 () Bool)

(assert (=> b!419656 (=> (not res!244785) (not e!250053))))

(assert (=> b!419656 (= res!244785 (or (= (select (arr!12212 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12212 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!244784 () Bool)

(assert (=> start!39438 (=> (not res!244784) (not e!250053))))

(assert (=> start!39438 (= res!244784 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12564 _keys!709))))))

(assert (=> start!39438 e!250053))

(declare-fun tp_is_empty!10849 () Bool)

(assert (=> start!39438 tp_is_empty!10849))

(assert (=> start!39438 tp!34620))

(assert (=> start!39438 true))

(declare-fun e!250058 () Bool)

(declare-fun array_inv!8898 (array!25529) Bool)

(assert (=> start!39438 (and (array_inv!8898 _values!549) e!250058)))

(declare-fun array_inv!8899 (array!25531) Bool)

(assert (=> start!39438 (array_inv!8899 _keys!709)))

(declare-fun b!419657 () Bool)

(declare-fun e!250056 () Bool)

(assert (=> b!419657 (= e!250056 e!250052)))

(declare-fun res!244788 () Bool)

(assert (=> b!419657 (=> (not res!244788) (not e!250052))))

(assert (=> b!419657 (= res!244788 (= from!863 i!563))))

(declare-fun lt!192545 () ListLongMap!6019)

(assert (=> b!419657 (= lt!192545 (getCurrentListMapNoExtraKeys!1226 lt!192542 lt!192541 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!419657 (= lt!192541 (array!25530 (store (arr!12211 _values!549) i!563 (ValueCellFull!5081 v!412)) (size!12563 _values!549)))))

(declare-fun lt!192544 () ListLongMap!6019)

(assert (=> b!419657 (= lt!192544 (getCurrentListMapNoExtraKeys!1226 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun call!29267 () ListLongMap!6019)

(declare-fun bm!29264 () Bool)

(assert (=> bm!29264 (= call!29267 (getCurrentListMapNoExtraKeys!1226 (ite c!55184 _keys!709 lt!192542) (ite c!55184 _values!549 lt!192541) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419658 () Bool)

(declare-fun res!244780 () Bool)

(assert (=> b!419658 (=> (not res!244780) (not e!250053))))

(assert (=> b!419658 (= res!244780 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12564 _keys!709))))))

(declare-fun b!419659 () Bool)

(declare-fun res!244783 () Bool)

(assert (=> b!419659 (=> (not res!244783) (not e!250053))))

(declare-datatypes ((List!7137 0))(
  ( (Nil!7134) (Cons!7133 (h!7989 (_ BitVec 64)) (t!12507 List!7137)) )
))
(declare-fun arrayNoDuplicates!0 (array!25531 (_ BitVec 32) List!7137) Bool)

(assert (=> b!419659 (= res!244783 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7134))))

(declare-fun b!419660 () Bool)

(declare-fun res!244782 () Bool)

(assert (=> b!419660 (=> (not res!244782) (not e!250053))))

(assert (=> b!419660 (= res!244782 (and (= (size!12563 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12564 _keys!709) (size!12563 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!419661 () Bool)

(assert (=> b!419661 (= e!250060 true)))

(declare-fun lt!192539 () tuple2!7092)

(declare-fun lt!192536 () V!15571)

(declare-fun lt!192540 () ListLongMap!6019)

(declare-fun +!1230 (ListLongMap!6019 tuple2!7092) ListLongMap!6019)

(assert (=> b!419661 (= (+!1230 lt!192540 lt!192539) (+!1230 (+!1230 lt!192540 (tuple2!7093 k!794 lt!192536)) lt!192539))))

(declare-fun lt!192537 () V!15571)

(assert (=> b!419661 (= lt!192539 (tuple2!7093 k!794 lt!192537))))

(declare-fun lt!192543 () Unit!12359)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!49 (ListLongMap!6019 (_ BitVec 64) V!15571 V!15571) Unit!12359)

(assert (=> b!419661 (= lt!192543 (addSameAsAddTwiceSameKeyDiffValues!49 lt!192540 k!794 lt!192536 lt!192537))))

(declare-fun lt!192538 () V!15571)

(declare-fun get!6064 (ValueCell!5081 V!15571) V!15571)

(assert (=> b!419661 (= lt!192536 (get!6064 (select (arr!12211 _values!549) from!863) lt!192538))))

(assert (=> b!419661 (= lt!192545 (+!1230 lt!192540 (tuple2!7093 (select (arr!12212 lt!192542) from!863) lt!192537)))))

(assert (=> b!419661 (= lt!192537 (get!6064 (select (store (arr!12211 _values!549) i!563 (ValueCellFull!5081 v!412)) from!863) lt!192538))))

(declare-fun dynLambda!711 (Int (_ BitVec 64)) V!15571)

(assert (=> b!419661 (= lt!192538 (dynLambda!711 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!419661 (= lt!192540 (getCurrentListMapNoExtraKeys!1226 lt!192542 lt!192541 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419662 () Bool)

(assert (=> b!419662 (= e!250054 (= call!29267 call!29266))))

(declare-fun b!419663 () Bool)

(declare-fun res!244786 () Bool)

(assert (=> b!419663 (=> (not res!244786) (not e!250056))))

(assert (=> b!419663 (= res!244786 (bvsle from!863 i!563))))

(declare-fun b!419664 () Bool)

(declare-fun res!244787 () Bool)

(assert (=> b!419664 (=> (not res!244787) (not e!250053))))

(declare-fun arrayContainsKey!0 (array!25531 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!419664 (= res!244787 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!419665 () Bool)

(declare-fun e!250055 () Bool)

(assert (=> b!419665 (= e!250058 (and e!250055 mapRes!17895))))

(declare-fun condMapEmpty!17895 () Bool)

(declare-fun mapDefault!17895 () ValueCell!5081)

