; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40794 () Bool)

(assert start!40794)

(declare-fun b_free!10775 () Bool)

(declare-fun b_next!10775 () Bool)

(assert (=> start!40794 (= b_free!10775 (not b_next!10775))))

(declare-fun tp!38148 () Bool)

(declare-fun b_and!18855 () Bool)

(assert (=> start!40794 (= tp!38148 b_and!18855)))

(declare-fun b!452040 () Bool)

(declare-fun res!269298 () Bool)

(declare-fun e!264710 () Bool)

(assert (=> b!452040 (=> (not res!269298) (not e!264710))))

(declare-datatypes ((array!27995 0))(
  ( (array!27996 (arr!13439 (Array (_ BitVec 32) (_ BitVec 64))) (size!13791 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27995)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!452040 (= res!269298 (or (= (select (arr!13439 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13439 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!452041 () Bool)

(declare-fun res!269296 () Bool)

(assert (=> b!452041 (=> (not res!269296) (not e!264710))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27995 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!452041 (= res!269296 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!452042 () Bool)

(declare-fun e!264714 () Bool)

(declare-fun tp_is_empty!12113 () Bool)

(assert (=> b!452042 (= e!264714 tp_is_empty!12113)))

(declare-fun b!452043 () Bool)

(declare-fun e!264709 () Bool)

(declare-datatypes ((V!17255 0))(
  ( (V!17256 (val!6101 Int)) )
))
(declare-datatypes ((tuple2!7974 0))(
  ( (tuple2!7975 (_1!3997 (_ BitVec 64)) (_2!3997 V!17255)) )
))
(declare-datatypes ((List!8078 0))(
  ( (Nil!8075) (Cons!8074 (h!8930 tuple2!7974) (t!13884 List!8078)) )
))
(declare-datatypes ((ListLongMap!6901 0))(
  ( (ListLongMap!6902 (toList!3466 List!8078)) )
))
(declare-fun call!29935 () ListLongMap!6901)

(declare-fun call!29936 () ListLongMap!6901)

(assert (=> b!452043 (= e!264709 (= call!29935 call!29936))))

(declare-fun b!452044 () Bool)

(declare-fun e!264716 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5713 0))(
  ( (ValueCellFull!5713 (v!8356 V!17255)) (EmptyCell!5713) )
))
(declare-datatypes ((array!27997 0))(
  ( (array!27998 (arr!13440 (Array (_ BitVec 32) ValueCell!5713)) (size!13792 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27997)

(assert (=> b!452044 (= e!264716 (bvslt from!863 (size!13792 _values!549)))))

(declare-fun minValue!515 () V!17255)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17255)

(declare-fun lt!205094 () ListLongMap!6901)

(declare-fun lt!205091 () array!27995)

(declare-fun lt!205093 () array!27997)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun +!1532 (ListLongMap!6901 tuple2!7974) ListLongMap!6901)

(declare-fun getCurrentListMapNoExtraKeys!1643 (array!27995 array!27997 (_ BitVec 32) (_ BitVec 32) V!17255 V!17255 (_ BitVec 32) Int) ListLongMap!6901)

(declare-fun get!6631 (ValueCell!5713 V!17255) V!17255)

(declare-fun dynLambda!856 (Int (_ BitVec 64)) V!17255)

(assert (=> b!452044 (= lt!205094 (+!1532 (getCurrentListMapNoExtraKeys!1643 lt!205091 lt!205093 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7975 (select (arr!13439 lt!205091) from!863) (get!6631 (select (arr!13440 lt!205093) from!863) (dynLambda!856 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!452045 () Bool)

(declare-fun res!269302 () Bool)

(assert (=> b!452045 (=> (not res!269302) (not e!264710))))

(assert (=> b!452045 (= res!269302 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13791 _keys!709))))))

(declare-fun c!56036 () Bool)

(declare-fun bm!29932 () Bool)

(assert (=> bm!29932 (= call!29936 (getCurrentListMapNoExtraKeys!1643 (ite c!56036 lt!205091 _keys!709) (ite c!56036 lt!205093 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452047 () Bool)

(declare-fun e!264713 () Bool)

(assert (=> b!452047 (= e!264713 tp_is_empty!12113)))

(declare-fun b!452048 () Bool)

(declare-fun e!264712 () Bool)

(declare-fun mapRes!19806 () Bool)

(assert (=> b!452048 (= e!264712 (and e!264714 mapRes!19806))))

(declare-fun condMapEmpty!19806 () Bool)

(declare-fun mapDefault!19806 () ValueCell!5713)

