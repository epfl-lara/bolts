; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40486 () Bool)

(assert start!40486)

(declare-fun b_free!10549 () Bool)

(declare-fun b_next!10549 () Bool)

(assert (=> start!40486 (= b_free!10549 (not b_next!10549))))

(declare-fun tp!37424 () Bool)

(declare-fun b_and!18551 () Bool)

(assert (=> start!40486 (= tp!37424 b_and!18551)))

(declare-fun e!261858 () Bool)

(declare-datatypes ((V!16923 0))(
  ( (V!16924 (val!5976 Int)) )
))
(declare-datatypes ((tuple2!7770 0))(
  ( (tuple2!7771 (_1!3895 (_ BitVec 64)) (_2!3895 V!16923)) )
))
(declare-datatypes ((List!7870 0))(
  ( (Nil!7867) (Cons!7866 (h!8722 tuple2!7770) (t!13636 List!7870)) )
))
(declare-datatypes ((ListLongMap!6697 0))(
  ( (ListLongMap!6698 (toList!3364 List!7870)) )
))
(declare-fun call!29601 () ListLongMap!6697)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun b!445561 () Bool)

(declare-fun call!29600 () ListLongMap!6697)

(declare-fun v!412 () V!16923)

(declare-fun +!1494 (ListLongMap!6697 tuple2!7770) ListLongMap!6697)

(assert (=> b!445561 (= e!261858 (= call!29600 (+!1494 call!29601 (tuple2!7771 k!794 v!412))))))

(declare-fun b!445562 () Bool)

(declare-fun res!264487 () Bool)

(declare-fun e!261854 () Bool)

(assert (=> b!445562 (=> (not res!264487) (not e!261854))))

(declare-datatypes ((array!27493 0))(
  ( (array!27494 (arr!13191 (Array (_ BitVec 32) (_ BitVec 64))) (size!13543 (_ BitVec 32))) )
))
(declare-fun lt!203634 () array!27493)

(declare-datatypes ((List!7871 0))(
  ( (Nil!7868) (Cons!7867 (h!8723 (_ BitVec 64)) (t!13637 List!7871)) )
))
(declare-fun arrayNoDuplicates!0 (array!27493 (_ BitVec 32) List!7871) Bool)

(assert (=> b!445562 (= res!264487 (arrayNoDuplicates!0 lt!203634 #b00000000000000000000000000000000 Nil!7868))))

(declare-fun mapNonEmpty!19422 () Bool)

(declare-fun mapRes!19422 () Bool)

(declare-fun tp!37425 () Bool)

(declare-fun e!261853 () Bool)

(assert (=> mapNonEmpty!19422 (= mapRes!19422 (and tp!37425 e!261853))))

(declare-fun mapKey!19422 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5588 0))(
  ( (ValueCellFull!5588 (v!8223 V!16923)) (EmptyCell!5588) )
))
(declare-fun mapValue!19422 () ValueCell!5588)

(declare-datatypes ((array!27495 0))(
  ( (array!27496 (arr!13192 (Array (_ BitVec 32) ValueCell!5588)) (size!13544 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27495)

(declare-fun mapRest!19422 () (Array (_ BitVec 32) ValueCell!5588))

(assert (=> mapNonEmpty!19422 (= (arr!13192 _values!549) (store mapRest!19422 mapKey!19422 mapValue!19422))))

(declare-fun b!445563 () Bool)

(declare-fun res!264485 () Bool)

(declare-fun e!261856 () Bool)

(assert (=> b!445563 (=> (not res!264485) (not e!261856))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!445563 (= res!264485 (validKeyInArray!0 k!794))))

(declare-fun minValue!515 () V!16923)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun c!55794 () Bool)

(declare-fun zeroValue!515 () V!16923)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun bm!29597 () Bool)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!27493)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1546 (array!27493 array!27495 (_ BitVec 32) (_ BitVec 32) V!16923 V!16923 (_ BitVec 32) Int) ListLongMap!6697)

(assert (=> bm!29597 (= call!29600 (getCurrentListMapNoExtraKeys!1546 (ite c!55794 lt!203634 _keys!709) (ite c!55794 (array!27496 (store (arr!13192 _values!549) i!563 (ValueCellFull!5588 v!412)) (size!13544 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!445564 () Bool)

(assert (=> b!445564 (= e!261858 (= call!29601 call!29600))))

(declare-fun b!445565 () Bool)

(declare-fun res!264494 () Bool)

(assert (=> b!445565 (=> (not res!264494) (not e!261856))))

(declare-fun arrayContainsKey!0 (array!27493 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!445565 (= res!264494 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!445566 () Bool)

(declare-fun res!264491 () Bool)

(assert (=> b!445566 (=> (not res!264491) (not e!261854))))

(assert (=> b!445566 (= res!264491 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!13543 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!445567 () Bool)

(declare-fun res!264490 () Bool)

(assert (=> b!445567 (=> (not res!264490) (not e!261856))))

(assert (=> b!445567 (= res!264490 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7868))))

(declare-fun b!445568 () Bool)

(declare-fun res!264489 () Bool)

(assert (=> b!445568 (=> (not res!264489) (not e!261856))))

(assert (=> b!445568 (= res!264489 (or (= (select (arr!13191 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13191 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!445569 () Bool)

(declare-fun res!264486 () Bool)

(assert (=> b!445569 (=> (not res!264486) (not e!261856))))

(assert (=> b!445569 (= res!264486 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13543 _keys!709))))))

(declare-fun b!445570 () Bool)

(declare-fun res!264492 () Bool)

(assert (=> b!445570 (=> (not res!264492) (not e!261856))))

(assert (=> b!445570 (= res!264492 (and (= (size!13544 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13543 _keys!709) (size!13544 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!445571 () Bool)

(declare-fun tp_is_empty!11863 () Bool)

(assert (=> b!445571 (= e!261853 tp_is_empty!11863)))

(declare-fun b!445572 () Bool)

(assert (=> b!445572 (= e!261856 e!261854)))

(declare-fun res!264488 () Bool)

(assert (=> b!445572 (=> (not res!264488) (not e!261854))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27493 (_ BitVec 32)) Bool)

(assert (=> b!445572 (= res!264488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203634 mask!1025))))

(assert (=> b!445572 (= lt!203634 (array!27494 (store (arr!13191 _keys!709) i!563 k!794) (size!13543 _keys!709)))))

(declare-fun res!264496 () Bool)

(assert (=> start!40486 (=> (not res!264496) (not e!261856))))

(assert (=> start!40486 (= res!264496 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13543 _keys!709))))))

(assert (=> start!40486 e!261856))

(assert (=> start!40486 tp_is_empty!11863))

(assert (=> start!40486 tp!37424))

(assert (=> start!40486 true))

(declare-fun e!261852 () Bool)

(declare-fun array_inv!9556 (array!27495) Bool)

(assert (=> start!40486 (and (array_inv!9556 _values!549) e!261852)))

(declare-fun array_inv!9557 (array!27493) Bool)

(assert (=> start!40486 (array_inv!9557 _keys!709)))

(declare-fun bm!29598 () Bool)

(assert (=> bm!29598 (= call!29601 (getCurrentListMapNoExtraKeys!1546 (ite c!55794 _keys!709 lt!203634) (ite c!55794 _values!549 (array!27496 (store (arr!13192 _values!549) i!563 (ValueCellFull!5588 v!412)) (size!13544 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!445573 () Bool)

(declare-fun e!261857 () Bool)

(assert (=> b!445573 (= e!261852 (and e!261857 mapRes!19422))))

(declare-fun condMapEmpty!19422 () Bool)

(declare-fun mapDefault!19422 () ValueCell!5588)

