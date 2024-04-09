; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40766 () Bool)

(assert start!40766)

(declare-fun b_free!10747 () Bool)

(declare-fun b_next!10747 () Bool)

(assert (=> start!40766 (= b_free!10747 (not b_next!10747))))

(declare-fun tp!38064 () Bool)

(declare-fun b_and!18799 () Bool)

(assert (=> start!40766 (= tp!38064 b_and!18799)))

(declare-fun b!451214 () Bool)

(declare-fun res!268709 () Bool)

(declare-fun e!264339 () Bool)

(assert (=> b!451214 (=> (not res!268709) (not e!264339))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!451214 (= res!268709 (validKeyInArray!0 k!794))))

(declare-fun b!451215 () Bool)

(declare-fun res!268717 () Bool)

(assert (=> b!451215 (=> (not res!268717) (not e!264339))))

(declare-datatypes ((array!27939 0))(
  ( (array!27940 (arr!13411 (Array (_ BitVec 32) (_ BitVec 64))) (size!13763 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27939)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!451215 (= res!268717 (or (= (select (arr!13411 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13411 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((V!17219 0))(
  ( (V!17220 (val!6087 Int)) )
))
(declare-fun minValue!515 () V!17219)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7948 0))(
  ( (tuple2!7949 (_1!3984 (_ BitVec 64)) (_2!3984 V!17219)) )
))
(declare-datatypes ((List!8055 0))(
  ( (Nil!8052) (Cons!8051 (h!8907 tuple2!7948) (t!13833 List!8055)) )
))
(declare-datatypes ((ListLongMap!6875 0))(
  ( (ListLongMap!6876 (toList!3453 List!8055)) )
))
(declare-fun call!29851 () ListLongMap!6875)

(declare-datatypes ((ValueCell!5699 0))(
  ( (ValueCellFull!5699 (v!8342 V!17219)) (EmptyCell!5699) )
))
(declare-datatypes ((array!27941 0))(
  ( (array!27942 (arr!13412 (Array (_ BitVec 32) ValueCell!5699)) (size!13764 (_ BitVec 32))) )
))
(declare-fun lt!204883 () array!27941)

(declare-fun _values!549 () array!27941)

(declare-fun zeroValue!515 () V!17219)

(declare-fun lt!204881 () array!27939)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun bm!29848 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun defaultEntry!557 () Int)

(declare-fun c!55994 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1630 (array!27939 array!27941 (_ BitVec 32) (_ BitVec 32) V!17219 V!17219 (_ BitVec 32) Int) ListLongMap!6875)

(assert (=> bm!29848 (= call!29851 (getCurrentListMapNoExtraKeys!1630 (ite c!55994 _keys!709 lt!204881) (ite c!55994 _values!549 lt!204883) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!268708 () Bool)

(assert (=> start!40766 (=> (not res!268708) (not e!264339))))

(assert (=> start!40766 (= res!268708 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13763 _keys!709))))))

(assert (=> start!40766 e!264339))

(declare-fun tp_is_empty!12085 () Bool)

(assert (=> start!40766 tp_is_empty!12085))

(assert (=> start!40766 tp!38064))

(assert (=> start!40766 true))

(declare-fun e!264336 () Bool)

(declare-fun array_inv!9706 (array!27941) Bool)

(assert (=> start!40766 (and (array_inv!9706 _values!549) e!264336)))

(declare-fun array_inv!9707 (array!27939) Bool)

(assert (=> start!40766 (array_inv!9707 _keys!709)))

(declare-fun b!451216 () Bool)

(declare-fun e!264334 () Bool)

(declare-fun call!29852 () ListLongMap!6875)

(assert (=> b!451216 (= e!264334 (= call!29851 call!29852))))

(declare-fun b!451217 () Bool)

(declare-fun res!268706 () Bool)

(assert (=> b!451217 (=> (not res!268706) (not e!264339))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!451217 (= res!268706 (validMask!0 mask!1025))))

(declare-fun bm!29849 () Bool)

(assert (=> bm!29849 (= call!29852 (getCurrentListMapNoExtraKeys!1630 (ite c!55994 lt!204881 _keys!709) (ite c!55994 lt!204883 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451218 () Bool)

(declare-fun res!268718 () Bool)

(assert (=> b!451218 (=> (not res!268718) (not e!264339))))

(declare-fun arrayContainsKey!0 (array!27939 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!451218 (= res!268718 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!451219 () Bool)

(declare-fun e!264338 () Bool)

(declare-fun e!264333 () Bool)

(assert (=> b!451219 (= e!264338 (not e!264333))))

(declare-fun res!268713 () Bool)

(assert (=> b!451219 (=> res!268713 e!264333)))

(assert (=> b!451219 (= res!268713 (validKeyInArray!0 (select (arr!13411 _keys!709) from!863)))))

(assert (=> b!451219 e!264334))

(assert (=> b!451219 (= c!55994 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!13147 0))(
  ( (Unit!13148) )
))
(declare-fun lt!204882 () Unit!13147)

(declare-fun v!412 () V!17219)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!692 (array!27939 array!27941 (_ BitVec 32) (_ BitVec 32) V!17219 V!17219 (_ BitVec 32) (_ BitVec 64) V!17219 (_ BitVec 32) Int) Unit!13147)

(assert (=> b!451219 (= lt!204882 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!692 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451220 () Bool)

(declare-fun e!264335 () Bool)

(assert (=> b!451220 (= e!264339 e!264335)))

(declare-fun res!268715 () Bool)

(assert (=> b!451220 (=> (not res!268715) (not e!264335))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27939 (_ BitVec 32)) Bool)

(assert (=> b!451220 (= res!268715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204881 mask!1025))))

(assert (=> b!451220 (= lt!204881 (array!27940 (store (arr!13411 _keys!709) i!563 k!794) (size!13763 _keys!709)))))

(declare-fun b!451221 () Bool)

(declare-fun +!1521 (ListLongMap!6875 tuple2!7948) ListLongMap!6875)

(assert (=> b!451221 (= e!264334 (= call!29852 (+!1521 call!29851 (tuple2!7949 k!794 v!412))))))

(declare-fun b!451222 () Bool)

(declare-fun e!264332 () Bool)

(declare-fun mapRes!19764 () Bool)

(assert (=> b!451222 (= e!264336 (and e!264332 mapRes!19764))))

(declare-fun condMapEmpty!19764 () Bool)

(declare-fun mapDefault!19764 () ValueCell!5699)

