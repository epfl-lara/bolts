; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40490 () Bool)

(assert start!40490)

(declare-fun b_free!10553 () Bool)

(declare-fun b_next!10553 () Bool)

(assert (=> start!40490 (= b_free!10553 (not b_next!10553))))

(declare-fun tp!37437 () Bool)

(declare-fun b_and!18555 () Bool)

(assert (=> start!40490 (= tp!37437 b_and!18555)))

(declare-fun b!445663 () Bool)

(declare-fun res!264560 () Bool)

(declare-fun e!261895 () Bool)

(assert (=> b!445663 (=> (not res!264560) (not e!261895))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!27501 0))(
  ( (array!27502 (arr!13195 (Array (_ BitVec 32) (_ BitVec 64))) (size!13547 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27501)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!445663 (= res!264560 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!13547 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!445664 () Bool)

(declare-fun res!264564 () Bool)

(declare-fun e!261896 () Bool)

(assert (=> b!445664 (=> (not res!264564) (not e!261896))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16927 0))(
  ( (V!16928 (val!5978 Int)) )
))
(declare-datatypes ((ValueCell!5590 0))(
  ( (ValueCellFull!5590 (v!8225 V!16927)) (EmptyCell!5590) )
))
(declare-datatypes ((array!27503 0))(
  ( (array!27504 (arr!13196 (Array (_ BitVec 32) ValueCell!5590)) (size!13548 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27503)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!445664 (= res!264564 (and (= (size!13548 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13547 _keys!709) (size!13548 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!445665 () Bool)

(declare-fun res!264568 () Bool)

(assert (=> b!445665 (=> (not res!264568) (not e!261896))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27501 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!445665 (= res!264568 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!445667 () Bool)

(declare-fun res!264566 () Bool)

(assert (=> b!445667 (=> (not res!264566) (not e!261896))))

(assert (=> b!445667 (= res!264566 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13547 _keys!709))))))

(declare-fun b!445668 () Bool)

(declare-fun e!261899 () Bool)

(declare-fun tp_is_empty!11867 () Bool)

(assert (=> b!445668 (= e!261899 tp_is_empty!11867)))

(declare-fun e!261897 () Bool)

(declare-datatypes ((tuple2!7774 0))(
  ( (tuple2!7775 (_1!3897 (_ BitVec 64)) (_2!3897 V!16927)) )
))
(declare-datatypes ((List!7874 0))(
  ( (Nil!7871) (Cons!7870 (h!8726 tuple2!7774) (t!13640 List!7874)) )
))
(declare-datatypes ((ListLongMap!6701 0))(
  ( (ListLongMap!6702 (toList!3366 List!7874)) )
))
(declare-fun call!29612 () ListLongMap!6701)

(declare-fun call!29613 () ListLongMap!6701)

(declare-fun b!445669 () Bool)

(declare-fun v!412 () V!16927)

(declare-fun +!1496 (ListLongMap!6701 tuple2!7774) ListLongMap!6701)

(assert (=> b!445669 (= e!261897 (= call!29612 (+!1496 call!29613 (tuple2!7775 k!794 v!412))))))

(declare-fun mapNonEmpty!19428 () Bool)

(declare-fun mapRes!19428 () Bool)

(declare-fun tp!37436 () Bool)

(assert (=> mapNonEmpty!19428 (= mapRes!19428 (and tp!37436 e!261899))))

(declare-fun mapKey!19428 () (_ BitVec 32))

(declare-fun mapValue!19428 () ValueCell!5590)

(declare-fun mapRest!19428 () (Array (_ BitVec 32) ValueCell!5590))

(assert (=> mapNonEmpty!19428 (= (arr!13196 _values!549) (store mapRest!19428 mapKey!19428 mapValue!19428))))

(declare-fun b!445670 () Bool)

(declare-fun res!264557 () Bool)

(assert (=> b!445670 (=> (not res!264557) (not e!261895))))

(declare-fun lt!203646 () array!27501)

(declare-datatypes ((List!7875 0))(
  ( (Nil!7872) (Cons!7871 (h!8727 (_ BitVec 64)) (t!13641 List!7875)) )
))
(declare-fun arrayNoDuplicates!0 (array!27501 (_ BitVec 32) List!7875) Bool)

(assert (=> b!445670 (= res!264557 (arrayNoDuplicates!0 lt!203646 #b00000000000000000000000000000000 Nil!7872))))

(declare-fun b!445671 () Bool)

(declare-fun res!264565 () Bool)

(assert (=> b!445671 (=> (not res!264565) (not e!261896))))

(assert (=> b!445671 (= res!264565 (or (= (select (arr!13195 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13195 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!445672 () Bool)

(assert (=> b!445672 (= e!261896 e!261895)))

(declare-fun res!264562 () Bool)

(assert (=> b!445672 (=> (not res!264562) (not e!261895))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27501 (_ BitVec 32)) Bool)

(assert (=> b!445672 (= res!264562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203646 mask!1025))))

(assert (=> b!445672 (= lt!203646 (array!27502 (store (arr!13195 _keys!709) i!563 k!794) (size!13547 _keys!709)))))

(declare-fun b!445673 () Bool)

(declare-fun e!261898 () Bool)

(assert (=> b!445673 (= e!261898 tp_is_empty!11867)))

(declare-fun b!445674 () Bool)

(assert (=> b!445674 (= e!261897 (= call!29613 call!29612))))

(declare-fun minValue!515 () V!16927)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16927)

(declare-fun c!55800 () Bool)

(declare-fun bm!29609 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1548 (array!27501 array!27503 (_ BitVec 32) (_ BitVec 32) V!16927 V!16927 (_ BitVec 32) Int) ListLongMap!6701)

(assert (=> bm!29609 (= call!29612 (getCurrentListMapNoExtraKeys!1548 (ite c!55800 lt!203646 _keys!709) (ite c!55800 (array!27504 (store (arr!13196 _values!549) i!563 (ValueCellFull!5590 v!412)) (size!13548 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!29610 () Bool)

(assert (=> bm!29610 (= call!29613 (getCurrentListMapNoExtraKeys!1548 (ite c!55800 _keys!709 lt!203646) (ite c!55800 _values!549 (array!27504 (store (arr!13196 _values!549) i!563 (ValueCellFull!5590 v!412)) (size!13548 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!445675 () Bool)

(assert (=> b!445675 (= e!261895 (not true))))

(assert (=> b!445675 e!261897))

(assert (=> b!445675 (= c!55800 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!13105 0))(
  ( (Unit!13106) )
))
(declare-fun lt!203645 () Unit!13105)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!672 (array!27501 array!27503 (_ BitVec 32) (_ BitVec 32) V!16927 V!16927 (_ BitVec 32) (_ BitVec 64) V!16927 (_ BitVec 32) Int) Unit!13105)

(assert (=> b!445675 (= lt!203645 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!672 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!264567 () Bool)

(assert (=> start!40490 (=> (not res!264567) (not e!261896))))

(assert (=> start!40490 (= res!264567 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13547 _keys!709))))))

(assert (=> start!40490 e!261896))

(assert (=> start!40490 tp_is_empty!11867))

(assert (=> start!40490 tp!37437))

(assert (=> start!40490 true))

(declare-fun e!261900 () Bool)

(declare-fun array_inv!9560 (array!27503) Bool)

(assert (=> start!40490 (and (array_inv!9560 _values!549) e!261900)))

(declare-fun array_inv!9561 (array!27501) Bool)

(assert (=> start!40490 (array_inv!9561 _keys!709)))

(declare-fun b!445666 () Bool)

(declare-fun res!264563 () Bool)

(assert (=> b!445666 (=> (not res!264563) (not e!261896))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!445666 (= res!264563 (validKeyInArray!0 k!794))))

(declare-fun b!445676 () Bool)

(declare-fun res!264561 () Bool)

(assert (=> b!445676 (=> (not res!264561) (not e!261896))))

(assert (=> b!445676 (= res!264561 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!445677 () Bool)

(assert (=> b!445677 (= e!261900 (and e!261898 mapRes!19428))))

(declare-fun condMapEmpty!19428 () Bool)

(declare-fun mapDefault!19428 () ValueCell!5590)

