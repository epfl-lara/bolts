; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40778 () Bool)

(assert start!40778)

(declare-fun b_free!10759 () Bool)

(declare-fun b_next!10759 () Bool)

(assert (=> start!40778 (= b_free!10759 (not b_next!10759))))

(declare-fun tp!38100 () Bool)

(declare-fun b_and!18823 () Bool)

(assert (=> start!40778 (= tp!38100 b_and!18823)))

(declare-fun b!451568 () Bool)

(declare-fun res!268970 () Bool)

(declare-fun e!264493 () Bool)

(assert (=> b!451568 (=> (not res!268970) (not e!264493))))

(declare-datatypes ((array!27963 0))(
  ( (array!27964 (arr!13423 (Array (_ BitVec 32) (_ BitVec 64))) (size!13775 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27963)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27963 (_ BitVec 32)) Bool)

(assert (=> b!451568 (= res!268970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!451569 () Bool)

(declare-fun res!268964 () Bool)

(assert (=> b!451569 (=> (not res!268964) (not e!264493))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!451569 (= res!268964 (or (= (select (arr!13423 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13423 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!451570 () Bool)

(declare-fun res!268961 () Bool)

(assert (=> b!451570 (=> (not res!268961) (not e!264493))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27963 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!451570 (= res!268961 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-datatypes ((V!17235 0))(
  ( (V!17236 (val!6093 Int)) )
))
(declare-datatypes ((tuple2!7960 0))(
  ( (tuple2!7961 (_1!3990 (_ BitVec 64)) (_2!3990 V!17235)) )
))
(declare-datatypes ((List!8065 0))(
  ( (Nil!8062) (Cons!8061 (h!8917 tuple2!7960) (t!13855 List!8065)) )
))
(declare-datatypes ((ListLongMap!6887 0))(
  ( (ListLongMap!6888 (toList!3459 List!8065)) )
))
(declare-fun call!29887 () ListLongMap!6887)

(declare-fun call!29888 () ListLongMap!6887)

(declare-fun b!451571 () Bool)

(declare-fun v!412 () V!17235)

(declare-fun e!264500 () Bool)

(declare-fun +!1526 (ListLongMap!6887 tuple2!7960) ListLongMap!6887)

(assert (=> b!451571 (= e!264500 (= call!29888 (+!1526 call!29887 (tuple2!7961 k!794 v!412))))))

(declare-fun b!451572 () Bool)

(declare-fun res!268969 () Bool)

(assert (=> b!451572 (=> (not res!268969) (not e!264493))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5705 0))(
  ( (ValueCellFull!5705 (v!8348 V!17235)) (EmptyCell!5705) )
))
(declare-datatypes ((array!27965 0))(
  ( (array!27966 (arr!13424 (Array (_ BitVec 32) ValueCell!5705)) (size!13776 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27965)

(assert (=> b!451572 (= res!268969 (and (= (size!13776 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13775 _keys!709) (size!13776 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!451573 () Bool)

(declare-fun e!264496 () Bool)

(declare-fun tp_is_empty!12097 () Bool)

(assert (=> b!451573 (= e!264496 tp_is_empty!12097)))

(declare-fun b!451574 () Bool)

(assert (=> b!451574 (= e!264500 (= call!29887 call!29888))))

(declare-fun b!451576 () Bool)

(declare-fun res!268957 () Bool)

(declare-fun e!264497 () Bool)

(assert (=> b!451576 (=> (not res!268957) (not e!264497))))

(declare-fun lt!204975 () array!27963)

(declare-datatypes ((List!8066 0))(
  ( (Nil!8063) (Cons!8062 (h!8918 (_ BitVec 64)) (t!13856 List!8066)) )
))
(declare-fun arrayNoDuplicates!0 (array!27963 (_ BitVec 32) List!8066) Bool)

(assert (=> b!451576 (= res!268957 (arrayNoDuplicates!0 lt!204975 #b00000000000000000000000000000000 Nil!8063))))

(declare-fun b!451577 () Bool)

(declare-fun e!264501 () Bool)

(assert (=> b!451577 (= e!264497 e!264501)))

(declare-fun res!268963 () Bool)

(assert (=> b!451577 (=> (not res!268963) (not e!264501))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!451577 (= res!268963 (= from!863 i!563))))

(declare-fun minValue!515 () V!17235)

(declare-fun zeroValue!515 () V!17235)

(declare-fun lt!204973 () array!27965)

(declare-fun lt!204972 () ListLongMap!6887)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1636 (array!27963 array!27965 (_ BitVec 32) (_ BitVec 32) V!17235 V!17235 (_ BitVec 32) Int) ListLongMap!6887)

(assert (=> b!451577 (= lt!204972 (getCurrentListMapNoExtraKeys!1636 lt!204975 lt!204973 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!451577 (= lt!204973 (array!27966 (store (arr!13424 _values!549) i!563 (ValueCellFull!5705 v!412)) (size!13776 _values!549)))))

(declare-fun lt!204971 () ListLongMap!6887)

(assert (=> b!451577 (= lt!204971 (getCurrentListMapNoExtraKeys!1636 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun bm!29884 () Bool)

(declare-fun c!56012 () Bool)

(assert (=> bm!29884 (= call!29887 (getCurrentListMapNoExtraKeys!1636 (ite c!56012 _keys!709 lt!204975) (ite c!56012 _values!549 lt!204973) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!29885 () Bool)

(assert (=> bm!29885 (= call!29888 (getCurrentListMapNoExtraKeys!1636 (ite c!56012 lt!204975 _keys!709) (ite c!56012 lt!204973 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451578 () Bool)

(declare-fun e!264498 () Bool)

(assert (=> b!451578 (= e!264498 tp_is_empty!12097)))

(declare-fun b!451579 () Bool)

(declare-fun res!268966 () Bool)

(assert (=> b!451579 (=> (not res!268966) (not e!264493))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!451579 (= res!268966 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!19782 () Bool)

(declare-fun mapRes!19782 () Bool)

(declare-fun tp!38099 () Bool)

(assert (=> mapNonEmpty!19782 (= mapRes!19782 (and tp!38099 e!264498))))

(declare-fun mapKey!19782 () (_ BitVec 32))

(declare-fun mapRest!19782 () (Array (_ BitVec 32) ValueCell!5705))

(declare-fun mapValue!19782 () ValueCell!5705)

(assert (=> mapNonEmpty!19782 (= (arr!13424 _values!549) (store mapRest!19782 mapKey!19782 mapValue!19782))))

(declare-fun res!268962 () Bool)

(assert (=> start!40778 (=> (not res!268962) (not e!264493))))

(assert (=> start!40778 (= res!268962 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13775 _keys!709))))))

(assert (=> start!40778 e!264493))

(assert (=> start!40778 tp_is_empty!12097))

(assert (=> start!40778 tp!38100))

(assert (=> start!40778 true))

(declare-fun e!264495 () Bool)

(declare-fun array_inv!9718 (array!27965) Bool)

(assert (=> start!40778 (and (array_inv!9718 _values!549) e!264495)))

(declare-fun array_inv!9719 (array!27963) Bool)

(assert (=> start!40778 (array_inv!9719 _keys!709)))

(declare-fun b!451575 () Bool)

(declare-fun res!268967 () Bool)

(assert (=> b!451575 (=> (not res!268967) (not e!264493))))

(assert (=> b!451575 (= res!268967 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8063))))

(declare-fun b!451580 () Bool)

(declare-fun e!264494 () Bool)

(assert (=> b!451580 (= e!264494 (bvslt i!563 (size!13776 _values!549)))))

(declare-fun get!6621 (ValueCell!5705 V!17235) V!17235)

(declare-fun dynLambda!850 (Int (_ BitVec 64)) V!17235)

(assert (=> b!451580 (= lt!204972 (+!1526 (getCurrentListMapNoExtraKeys!1636 lt!204975 lt!204973 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7961 (select (arr!13423 lt!204975) from!863) (get!6621 (select (arr!13424 lt!204973) from!863) (dynLambda!850 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!451581 () Bool)

(assert (=> b!451581 (= e!264495 (and e!264496 mapRes!19782))))

(declare-fun condMapEmpty!19782 () Bool)

(declare-fun mapDefault!19782 () ValueCell!5705)

