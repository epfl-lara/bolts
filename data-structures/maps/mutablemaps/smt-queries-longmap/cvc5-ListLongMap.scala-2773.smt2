; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40498 () Bool)

(assert start!40498)

(declare-fun b_free!10561 () Bool)

(declare-fun b_next!10561 () Bool)

(assert (=> start!40498 (= b_free!10561 (not b_next!10561))))

(declare-fun tp!37461 () Bool)

(declare-fun b_and!18563 () Bool)

(assert (=> start!40498 (= tp!37461 b_and!18563)))

(declare-fun mapNonEmpty!19440 () Bool)

(declare-fun mapRes!19440 () Bool)

(declare-fun tp!37460 () Bool)

(declare-fun e!261981 () Bool)

(assert (=> mapNonEmpty!19440 (= mapRes!19440 (and tp!37460 e!261981))))

(declare-fun mapKey!19440 () (_ BitVec 32))

(declare-datatypes ((V!16939 0))(
  ( (V!16940 (val!5982 Int)) )
))
(declare-datatypes ((ValueCell!5594 0))(
  ( (ValueCellFull!5594 (v!8229 V!16939)) (EmptyCell!5594) )
))
(declare-datatypes ((array!27517 0))(
  ( (array!27518 (arr!13203 (Array (_ BitVec 32) ValueCell!5594)) (size!13555 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27517)

(declare-fun mapValue!19440 () ValueCell!5594)

(declare-fun mapRest!19440 () (Array (_ BitVec 32) ValueCell!5594))

(assert (=> mapNonEmpty!19440 (= (arr!13203 _values!549) (store mapRest!19440 mapKey!19440 mapValue!19440))))

(declare-fun b!445867 () Bool)

(declare-fun res!264706 () Bool)

(declare-fun e!261984 () Bool)

(assert (=> b!445867 (=> (not res!264706) (not e!261984))))

(declare-datatypes ((array!27519 0))(
  ( (array!27520 (arr!13204 (Array (_ BitVec 32) (_ BitVec 64))) (size!13556 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27519)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!445867 (= res!264706 (and (= (size!13555 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13556 _keys!709) (size!13555 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!445868 () Bool)

(declare-fun res!264708 () Bool)

(assert (=> b!445868 (=> (not res!264708) (not e!261984))))

(declare-datatypes ((List!7882 0))(
  ( (Nil!7879) (Cons!7878 (h!8734 (_ BitVec 64)) (t!13648 List!7882)) )
))
(declare-fun arrayNoDuplicates!0 (array!27519 (_ BitVec 32) List!7882) Bool)

(assert (=> b!445868 (= res!264708 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7879))))

(declare-fun e!261978 () Bool)

(declare-datatypes ((tuple2!7782 0))(
  ( (tuple2!7783 (_1!3901 (_ BitVec 64)) (_2!3901 V!16939)) )
))
(declare-datatypes ((List!7883 0))(
  ( (Nil!7880) (Cons!7879 (h!8735 tuple2!7782) (t!13649 List!7883)) )
))
(declare-datatypes ((ListLongMap!6709 0))(
  ( (ListLongMap!6710 (toList!3370 List!7883)) )
))
(declare-fun call!29636 () ListLongMap!6709)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun b!445869 () Bool)

(declare-fun call!29637 () ListLongMap!6709)

(declare-fun v!412 () V!16939)

(declare-fun +!1500 (ListLongMap!6709 tuple2!7782) ListLongMap!6709)

(assert (=> b!445869 (= e!261978 (= call!29636 (+!1500 call!29637 (tuple2!7783 k!794 v!412))))))

(declare-fun b!445870 () Bool)

(declare-fun res!264702 () Bool)

(assert (=> b!445870 (=> (not res!264702) (not e!261984))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!445870 (= res!264702 (validKeyInArray!0 k!794))))

(declare-fun b!445871 () Bool)

(declare-fun res!264711 () Bool)

(assert (=> b!445871 (=> (not res!264711) (not e!261984))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!445871 (= res!264711 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13556 _keys!709))))))

(declare-fun minValue!515 () V!16939)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!203670 () array!27519)

(declare-fun bm!29633 () Bool)

(declare-fun zeroValue!515 () V!16939)

(declare-fun c!55812 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1550 (array!27519 array!27517 (_ BitVec 32) (_ BitVec 32) V!16939 V!16939 (_ BitVec 32) Int) ListLongMap!6709)

(assert (=> bm!29633 (= call!29636 (getCurrentListMapNoExtraKeys!1550 (ite c!55812 lt!203670 _keys!709) (ite c!55812 (array!27518 (store (arr!13203 _values!549) i!563 (ValueCellFull!5594 v!412)) (size!13555 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!445872 () Bool)

(declare-fun res!264701 () Bool)

(declare-fun e!261979 () Bool)

(assert (=> b!445872 (=> (not res!264701) (not e!261979))))

(assert (=> b!445872 (= res!264701 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!13556 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!445873 () Bool)

(declare-fun res!264707 () Bool)

(assert (=> b!445873 (=> (not res!264707) (not e!261984))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27519 (_ BitVec 32)) Bool)

(assert (=> b!445873 (= res!264707 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!445874 () Bool)

(declare-fun res!264709 () Bool)

(assert (=> b!445874 (=> (not res!264709) (not e!261984))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!445874 (= res!264709 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!19440 () Bool)

(assert (=> mapIsEmpty!19440 mapRes!19440))

(declare-fun b!445875 () Bool)

(assert (=> b!445875 (= e!261984 e!261979)))

(declare-fun res!264705 () Bool)

(assert (=> b!445875 (=> (not res!264705) (not e!261979))))

(assert (=> b!445875 (= res!264705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203670 mask!1025))))

(assert (=> b!445875 (= lt!203670 (array!27520 (store (arr!13204 _keys!709) i!563 k!794) (size!13556 _keys!709)))))

(declare-fun b!445876 () Bool)

(declare-fun res!264704 () Bool)

(assert (=> b!445876 (=> (not res!264704) (not e!261984))))

(assert (=> b!445876 (= res!264704 (or (= (select (arr!13204 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13204 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!29634 () Bool)

(assert (=> bm!29634 (= call!29637 (getCurrentListMapNoExtraKeys!1550 (ite c!55812 _keys!709 lt!203670) (ite c!55812 _values!549 (array!27518 (store (arr!13203 _values!549) i!563 (ValueCellFull!5594 v!412)) (size!13555 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!445877 () Bool)

(declare-fun e!261983 () Bool)

(declare-fun e!261980 () Bool)

(assert (=> b!445877 (= e!261983 (and e!261980 mapRes!19440))))

(declare-fun condMapEmpty!19440 () Bool)

(declare-fun mapDefault!19440 () ValueCell!5594)

