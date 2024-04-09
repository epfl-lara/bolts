; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40770 () Bool)

(assert start!40770)

(declare-fun b_free!10751 () Bool)

(declare-fun b_next!10751 () Bool)

(assert (=> start!40770 (= b_free!10751 (not b_next!10751))))

(declare-fun tp!38076 () Bool)

(declare-fun b_and!18807 () Bool)

(assert (=> start!40770 (= tp!38076 b_and!18807)))

(declare-fun b!451332 () Bool)

(declare-fun e!264390 () Bool)

(declare-fun tp_is_empty!12089 () Bool)

(assert (=> b!451332 (= e!264390 tp_is_empty!12089)))

(declare-fun b!451333 () Bool)

(declare-fun e!264389 () Bool)

(declare-datatypes ((V!17223 0))(
  ( (V!17224 (val!6089 Int)) )
))
(declare-datatypes ((tuple2!7952 0))(
  ( (tuple2!7953 (_1!3986 (_ BitVec 64)) (_2!3986 V!17223)) )
))
(declare-datatypes ((List!8058 0))(
  ( (Nil!8055) (Cons!8054 (h!8910 tuple2!7952) (t!13840 List!8058)) )
))
(declare-datatypes ((ListLongMap!6879 0))(
  ( (ListLongMap!6880 (toList!3455 List!8058)) )
))
(declare-fun call!29863 () ListLongMap!6879)

(declare-fun call!29864 () ListLongMap!6879)

(assert (=> b!451333 (= e!264389 (= call!29863 call!29864))))

(declare-fun b!451334 () Bool)

(declare-fun res!268796 () Bool)

(declare-fun e!264385 () Bool)

(assert (=> b!451334 (=> (not res!268796) (not e!264385))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!451334 (= res!268796 (bvsle from!863 i!563))))

(declare-fun b!451335 () Bool)

(declare-fun e!264386 () Bool)

(declare-datatypes ((ValueCell!5701 0))(
  ( (ValueCellFull!5701 (v!8344 V!17223)) (EmptyCell!5701) )
))
(declare-datatypes ((array!27947 0))(
  ( (array!27948 (arr!13415 (Array (_ BitVec 32) ValueCell!5701)) (size!13767 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27947)

(assert (=> b!451335 (= e!264386 (bvslt i!563 (size!13767 _values!549)))))

(declare-fun minValue!515 () V!17223)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!204914 () array!27947)

(declare-datatypes ((array!27949 0))(
  ( (array!27950 (arr!13416 (Array (_ BitVec 32) (_ BitVec 64))) (size!13768 (_ BitVec 32))) )
))
(declare-fun lt!204913 () array!27949)

(declare-fun zeroValue!515 () V!17223)

(declare-fun lt!204912 () ListLongMap!6879)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun +!1523 (ListLongMap!6879 tuple2!7952) ListLongMap!6879)

(declare-fun getCurrentListMapNoExtraKeys!1632 (array!27949 array!27947 (_ BitVec 32) (_ BitVec 32) V!17223 V!17223 (_ BitVec 32) Int) ListLongMap!6879)

(declare-fun get!6614 (ValueCell!5701 V!17223) V!17223)

(declare-fun dynLambda!847 (Int (_ BitVec 64)) V!17223)

(assert (=> b!451335 (= lt!204912 (+!1523 (getCurrentListMapNoExtraKeys!1632 lt!204913 lt!204914 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7953 (select (arr!13416 lt!204913) from!863) (get!6614 (select (arr!13415 lt!204914) from!863) (dynLambda!847 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!451336 () Bool)

(declare-fun e!264388 () Bool)

(assert (=> b!451336 (= e!264385 e!264388)))

(declare-fun res!268802 () Bool)

(assert (=> b!451336 (=> (not res!268802) (not e!264388))))

(assert (=> b!451336 (= res!268802 (= from!863 i!563))))

(assert (=> b!451336 (= lt!204912 (getCurrentListMapNoExtraKeys!1632 lt!204913 lt!204914 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17223)

(assert (=> b!451336 (= lt!204914 (array!27948 (store (arr!13415 _values!549) i!563 (ValueCellFull!5701 v!412)) (size!13767 _values!549)))))

(declare-fun _keys!709 () array!27949)

(declare-fun lt!204911 () ListLongMap!6879)

(assert (=> b!451336 (= lt!204911 (getCurrentListMapNoExtraKeys!1632 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!451337 () Bool)

(assert (=> b!451337 (= e!264388 (not e!264386))))

(declare-fun res!268794 () Bool)

(assert (=> b!451337 (=> res!268794 e!264386)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!451337 (= res!268794 (validKeyInArray!0 (select (arr!13416 _keys!709) from!863)))))

(assert (=> b!451337 e!264389))

(declare-fun c!56000 () Bool)

(assert (=> b!451337 (= c!56000 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((Unit!13151 0))(
  ( (Unit!13152) )
))
(declare-fun lt!204915 () Unit!13151)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!694 (array!27949 array!27947 (_ BitVec 32) (_ BitVec 32) V!17223 V!17223 (_ BitVec 32) (_ BitVec 64) V!17223 (_ BitVec 32) Int) Unit!13151)

(assert (=> b!451337 (= lt!204915 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!694 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!268798 () Bool)

(declare-fun e!264392 () Bool)

(assert (=> start!40770 (=> (not res!268798) (not e!264392))))

(assert (=> start!40770 (= res!268798 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13768 _keys!709))))))

(assert (=> start!40770 e!264392))

(assert (=> start!40770 tp_is_empty!12089))

(assert (=> start!40770 tp!38076))

(assert (=> start!40770 true))

(declare-fun e!264393 () Bool)

(declare-fun array_inv!9710 (array!27947) Bool)

(assert (=> start!40770 (and (array_inv!9710 _values!549) e!264393)))

(declare-fun array_inv!9711 (array!27949) Bool)

(assert (=> start!40770 (array_inv!9711 _keys!709)))

(declare-fun b!451338 () Bool)

(declare-fun res!268801 () Bool)

(assert (=> b!451338 (=> (not res!268801) (not e!264392))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!451338 (= res!268801 (validMask!0 mask!1025))))

(declare-fun b!451339 () Bool)

(declare-fun res!268799 () Bool)

(assert (=> b!451339 (=> (not res!268799) (not e!264392))))

(assert (=> b!451339 (= res!268799 (and (= (size!13767 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13768 _keys!709) (size!13767 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!19770 () Bool)

(declare-fun mapRes!19770 () Bool)

(assert (=> mapIsEmpty!19770 mapRes!19770))

(declare-fun mapNonEmpty!19770 () Bool)

(declare-fun tp!38075 () Bool)

(declare-fun e!264391 () Bool)

(assert (=> mapNonEmpty!19770 (= mapRes!19770 (and tp!38075 e!264391))))

(declare-fun mapValue!19770 () ValueCell!5701)

(declare-fun mapRest!19770 () (Array (_ BitVec 32) ValueCell!5701))

(declare-fun mapKey!19770 () (_ BitVec 32))

(assert (=> mapNonEmpty!19770 (= (arr!13415 _values!549) (store mapRest!19770 mapKey!19770 mapValue!19770))))

(declare-fun bm!29860 () Bool)

(assert (=> bm!29860 (= call!29864 (getCurrentListMapNoExtraKeys!1632 (ite c!56000 lt!204913 _keys!709) (ite c!56000 lt!204914 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451340 () Bool)

(assert (=> b!451340 (= e!264391 tp_is_empty!12089)))

(declare-fun b!451341 () Bool)

(assert (=> b!451341 (= e!264392 e!264385)))

(declare-fun res!268800 () Bool)

(assert (=> b!451341 (=> (not res!268800) (not e!264385))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27949 (_ BitVec 32)) Bool)

(assert (=> b!451341 (= res!268800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204913 mask!1025))))

(assert (=> b!451341 (= lt!204913 (array!27950 (store (arr!13416 _keys!709) i!563 k!794) (size!13768 _keys!709)))))

(declare-fun bm!29861 () Bool)

(assert (=> bm!29861 (= call!29863 (getCurrentListMapNoExtraKeys!1632 (ite c!56000 _keys!709 lt!204913) (ite c!56000 _values!549 lt!204914) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451342 () Bool)

(declare-fun res!268797 () Bool)

(assert (=> b!451342 (=> (not res!268797) (not e!264392))))

(declare-fun arrayContainsKey!0 (array!27949 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!451342 (= res!268797 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!451343 () Bool)

(declare-fun res!268792 () Bool)

(assert (=> b!451343 (=> (not res!268792) (not e!264392))))

(assert (=> b!451343 (= res!268792 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13768 _keys!709))))))

(declare-fun b!451344 () Bool)

(declare-fun res!268795 () Bool)

(assert (=> b!451344 (=> (not res!268795) (not e!264392))))

(assert (=> b!451344 (= res!268795 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!451345 () Bool)

(declare-fun res!268791 () Bool)

(assert (=> b!451345 (=> (not res!268791) (not e!264392))))

(assert (=> b!451345 (= res!268791 (or (= (select (arr!13416 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13416 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!451346 () Bool)

(declare-fun res!268789 () Bool)

(assert (=> b!451346 (=> (not res!268789) (not e!264392))))

(assert (=> b!451346 (= res!268789 (validKeyInArray!0 k!794))))

(declare-fun b!451347 () Bool)

(declare-fun res!268790 () Bool)

(assert (=> b!451347 (=> (not res!268790) (not e!264385))))

(declare-datatypes ((List!8059 0))(
  ( (Nil!8056) (Cons!8055 (h!8911 (_ BitVec 64)) (t!13841 List!8059)) )
))
(declare-fun arrayNoDuplicates!0 (array!27949 (_ BitVec 32) List!8059) Bool)

(assert (=> b!451347 (= res!268790 (arrayNoDuplicates!0 lt!204913 #b00000000000000000000000000000000 Nil!8056))))

(declare-fun b!451348 () Bool)

(assert (=> b!451348 (= e!264393 (and e!264390 mapRes!19770))))

(declare-fun condMapEmpty!19770 () Bool)

(declare-fun mapDefault!19770 () ValueCell!5701)

