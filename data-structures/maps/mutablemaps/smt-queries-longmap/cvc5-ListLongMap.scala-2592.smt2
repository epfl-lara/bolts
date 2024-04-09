; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39378 () Bool)

(assert start!39378)

(declare-fun b_free!9637 () Bool)

(declare-fun b_next!9637 () Bool)

(assert (=> start!39378 (= b_free!9637 (not b_next!9637))))

(declare-fun tp!34439 () Bool)

(declare-fun b_and!17167 () Bool)

(assert (=> start!39378 (= tp!34439 b_and!17167)))

(declare-fun b!417884 () Bool)

(declare-fun e!249250 () Bool)

(declare-datatypes ((V!15491 0))(
  ( (V!15492 (val!5439 Int)) )
))
(declare-datatypes ((tuple2!7036 0))(
  ( (tuple2!7037 (_1!3528 (_ BitVec 64)) (_2!3528 V!15491)) )
))
(declare-datatypes ((List!7087 0))(
  ( (Nil!7084) (Cons!7083 (h!7939 tuple2!7036) (t!12397 List!7087)) )
))
(declare-datatypes ((ListLongMap!5963 0))(
  ( (ListLongMap!5964 (toList!2997 List!7087)) )
))
(declare-fun call!29086 () ListLongMap!5963)

(declare-fun call!29087 () ListLongMap!5963)

(assert (=> b!417884 (= e!249250 (= call!29086 call!29087))))

(declare-fun b!417885 () Bool)

(declare-fun res!243517 () Bool)

(declare-fun e!249248 () Bool)

(assert (=> b!417885 (=> (not res!243517) (not e!249248))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!417885 (= res!243517 (validMask!0 mask!1025))))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5051 0))(
  ( (ValueCellFull!5051 (v!7682 V!15491)) (EmptyCell!5051) )
))
(declare-datatypes ((array!25413 0))(
  ( (array!25414 (arr!12153 (Array (_ BitVec 32) ValueCell!5051)) (size!12505 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25413)

(declare-fun zeroValue!515 () V!15491)

(declare-datatypes ((array!25415 0))(
  ( (array!25416 (arr!12154 (Array (_ BitVec 32) (_ BitVec 64))) (size!12506 (_ BitVec 32))) )
))
(declare-fun lt!191550 () array!25415)

(declare-fun c!55094 () Bool)

(declare-fun lt!191555 () array!25413)

(declare-fun _keys!709 () array!25415)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!15491)

(declare-fun bm!29083 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1200 (array!25415 array!25413 (_ BitVec 32) (_ BitVec 32) V!15491 V!15491 (_ BitVec 32) Int) ListLongMap!5963)

(assert (=> bm!29083 (= call!29087 (getCurrentListMapNoExtraKeys!1200 (ite c!55094 lt!191550 _keys!709) (ite c!55094 lt!191555 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417886 () Bool)

(declare-fun res!243516 () Bool)

(declare-fun e!249243 () Bool)

(assert (=> b!417886 (=> (not res!243516) (not e!249243))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!417886 (= res!243516 (bvsle from!863 i!563))))

(declare-fun b!417887 () Bool)

(assert (=> b!417887 (= e!249248 e!249243)))

(declare-fun res!243523 () Bool)

(assert (=> b!417887 (=> (not res!243523) (not e!249243))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25415 (_ BitVec 32)) Bool)

(assert (=> b!417887 (= res!243523 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!191550 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!417887 (= lt!191550 (array!25416 (store (arr!12154 _keys!709) i!563 k!794) (size!12506 _keys!709)))))

(declare-fun b!417888 () Bool)

(declare-fun res!243528 () Bool)

(assert (=> b!417888 (=> (not res!243528) (not e!249248))))

(assert (=> b!417888 (= res!243528 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12506 _keys!709))))))

(declare-fun b!417889 () Bool)

(declare-fun e!249244 () Bool)

(assert (=> b!417889 (= e!249244 true)))

(declare-fun lt!191547 () tuple2!7036)

(declare-fun lt!191556 () ListLongMap!5963)

(declare-fun lt!191549 () V!15491)

(declare-fun +!1206 (ListLongMap!5963 tuple2!7036) ListLongMap!5963)

(assert (=> b!417889 (= (+!1206 lt!191556 lt!191547) (+!1206 (+!1206 lt!191556 (tuple2!7037 k!794 lt!191549)) lt!191547))))

(declare-fun lt!191554 () V!15491)

(assert (=> b!417889 (= lt!191547 (tuple2!7037 k!794 lt!191554))))

(declare-datatypes ((Unit!12313 0))(
  ( (Unit!12314) )
))
(declare-fun lt!191546 () Unit!12313)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!29 (ListLongMap!5963 (_ BitVec 64) V!15491 V!15491) Unit!12313)

(assert (=> b!417889 (= lt!191546 (addSameAsAddTwiceSameKeyDiffValues!29 lt!191556 k!794 lt!191549 lt!191554))))

(declare-fun lt!191552 () V!15491)

(declare-fun get!6024 (ValueCell!5051 V!15491) V!15491)

(assert (=> b!417889 (= lt!191549 (get!6024 (select (arr!12153 _values!549) from!863) lt!191552))))

(declare-fun lt!191551 () ListLongMap!5963)

(assert (=> b!417889 (= lt!191551 (+!1206 lt!191556 (tuple2!7037 (select (arr!12154 lt!191550) from!863) lt!191554)))))

(declare-fun v!412 () V!15491)

(assert (=> b!417889 (= lt!191554 (get!6024 (select (store (arr!12153 _values!549) i!563 (ValueCellFull!5051 v!412)) from!863) lt!191552))))

(declare-fun dynLambda!691 (Int (_ BitVec 64)) V!15491)

(assert (=> b!417889 (= lt!191552 (dynLambda!691 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!417889 (= lt!191556 (getCurrentListMapNoExtraKeys!1200 lt!191550 lt!191555 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417890 () Bool)

(declare-fun res!243522 () Bool)

(assert (=> b!417890 (=> (not res!243522) (not e!249248))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!417890 (= res!243522 (validKeyInArray!0 k!794))))

(declare-fun b!417891 () Bool)

(declare-fun e!249246 () Bool)

(declare-fun tp_is_empty!10789 () Bool)

(assert (=> b!417891 (= e!249246 tp_is_empty!10789)))

(declare-fun mapIsEmpty!17805 () Bool)

(declare-fun mapRes!17805 () Bool)

(assert (=> mapIsEmpty!17805 mapRes!17805))

(declare-fun b!417892 () Bool)

(assert (=> b!417892 (= e!249250 (= call!29087 (+!1206 call!29086 (tuple2!7037 k!794 v!412))))))

(declare-fun b!417893 () Bool)

(declare-fun res!243525 () Bool)

(assert (=> b!417893 (=> (not res!243525) (not e!249248))))

(declare-fun arrayContainsKey!0 (array!25415 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!417893 (= res!243525 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!417894 () Bool)

(declare-fun e!249247 () Bool)

(assert (=> b!417894 (= e!249247 (not e!249244))))

(declare-fun res!243521 () Bool)

(assert (=> b!417894 (=> res!243521 e!249244)))

(assert (=> b!417894 (= res!243521 (validKeyInArray!0 (select (arr!12154 _keys!709) from!863)))))

(assert (=> b!417894 e!249250))

(assert (=> b!417894 (= c!55094 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!191553 () Unit!12313)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!414 (array!25415 array!25413 (_ BitVec 32) (_ BitVec 32) V!15491 V!15491 (_ BitVec 32) (_ BitVec 64) V!15491 (_ BitVec 32) Int) Unit!12313)

(assert (=> b!417894 (= lt!191553 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!414 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417895 () Bool)

(assert (=> b!417895 (= e!249243 e!249247)))

(declare-fun res!243518 () Bool)

(assert (=> b!417895 (=> (not res!243518) (not e!249247))))

(assert (=> b!417895 (= res!243518 (= from!863 i!563))))

(assert (=> b!417895 (= lt!191551 (getCurrentListMapNoExtraKeys!1200 lt!191550 lt!191555 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!417895 (= lt!191555 (array!25414 (store (arr!12153 _values!549) i!563 (ValueCellFull!5051 v!412)) (size!12505 _values!549)))))

(declare-fun lt!191548 () ListLongMap!5963)

(assert (=> b!417895 (= lt!191548 (getCurrentListMapNoExtraKeys!1200 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!417896 () Bool)

(declare-fun res!243524 () Bool)

(assert (=> b!417896 (=> (not res!243524) (not e!249248))))

(assert (=> b!417896 (= res!243524 (or (= (select (arr!12154 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12154 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!417897 () Bool)

(declare-fun res!243527 () Bool)

(assert (=> b!417897 (=> (not res!243527) (not e!249248))))

(assert (=> b!417897 (= res!243527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun bm!29084 () Bool)

(assert (=> bm!29084 (= call!29086 (getCurrentListMapNoExtraKeys!1200 (ite c!55094 _keys!709 lt!191550) (ite c!55094 _values!549 lt!191555) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!243520 () Bool)

(assert (=> start!39378 (=> (not res!243520) (not e!249248))))

(assert (=> start!39378 (= res!243520 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12506 _keys!709))))))

(assert (=> start!39378 e!249248))

(assert (=> start!39378 tp_is_empty!10789))

(assert (=> start!39378 tp!34439))

(assert (=> start!39378 true))

(declare-fun e!249249 () Bool)

(declare-fun array_inv!8862 (array!25413) Bool)

(assert (=> start!39378 (and (array_inv!8862 _values!549) e!249249)))

(declare-fun array_inv!8863 (array!25415) Bool)

(assert (=> start!39378 (array_inv!8863 _keys!709)))

(declare-fun mapNonEmpty!17805 () Bool)

(declare-fun tp!34440 () Bool)

(assert (=> mapNonEmpty!17805 (= mapRes!17805 (and tp!34440 e!249246))))

(declare-fun mapRest!17805 () (Array (_ BitVec 32) ValueCell!5051))

(declare-fun mapKey!17805 () (_ BitVec 32))

(declare-fun mapValue!17805 () ValueCell!5051)

(assert (=> mapNonEmpty!17805 (= (arr!12153 _values!549) (store mapRest!17805 mapKey!17805 mapValue!17805))))

(declare-fun b!417898 () Bool)

(declare-fun res!243519 () Bool)

(assert (=> b!417898 (=> (not res!243519) (not e!249248))))

(declare-datatypes ((List!7088 0))(
  ( (Nil!7085) (Cons!7084 (h!7940 (_ BitVec 64)) (t!12398 List!7088)) )
))
(declare-fun arrayNoDuplicates!0 (array!25415 (_ BitVec 32) List!7088) Bool)

(assert (=> b!417898 (= res!243519 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7085))))

(declare-fun b!417899 () Bool)

(declare-fun res!243515 () Bool)

(assert (=> b!417899 (=> (not res!243515) (not e!249248))))

(assert (=> b!417899 (= res!243515 (and (= (size!12505 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12506 _keys!709) (size!12505 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!417900 () Bool)

(declare-fun e!249242 () Bool)

(assert (=> b!417900 (= e!249249 (and e!249242 mapRes!17805))))

(declare-fun condMapEmpty!17805 () Bool)

(declare-fun mapDefault!17805 () ValueCell!5051)

