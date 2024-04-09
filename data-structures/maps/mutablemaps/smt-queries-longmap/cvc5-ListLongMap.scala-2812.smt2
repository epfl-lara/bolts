; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40790 () Bool)

(assert start!40790)

(declare-fun b_free!10771 () Bool)

(declare-fun b_next!10771 () Bool)

(assert (=> start!40790 (= b_free!10771 (not b_next!10771))))

(declare-fun tp!38135 () Bool)

(declare-fun b_and!18847 () Bool)

(assert (=> start!40790 (= tp!38135 b_and!18847)))

(declare-fun b!451922 () Bool)

(declare-fun res!269211 () Bool)

(declare-fun e!264658 () Bool)

(assert (=> b!451922 (=> (not res!269211) (not e!264658))))

(declare-datatypes ((array!27987 0))(
  ( (array!27988 (arr!13435 (Array (_ BitVec 32) (_ BitVec 64))) (size!13787 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27987)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27987 (_ BitVec 32)) Bool)

(assert (=> b!451922 (= res!269211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!451923 () Bool)

(declare-fun res!269217 () Bool)

(assert (=> b!451923 (=> (not res!269217) (not e!264658))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!451923 (= res!269217 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13787 _keys!709))))))

(declare-fun mapNonEmpty!19800 () Bool)

(declare-fun mapRes!19800 () Bool)

(declare-fun tp!38136 () Bool)

(declare-fun e!264659 () Bool)

(assert (=> mapNonEmpty!19800 (= mapRes!19800 (and tp!38136 e!264659))))

(declare-datatypes ((V!17251 0))(
  ( (V!17252 (val!6099 Int)) )
))
(declare-datatypes ((ValueCell!5711 0))(
  ( (ValueCellFull!5711 (v!8354 V!17251)) (EmptyCell!5711) )
))
(declare-fun mapValue!19800 () ValueCell!5711)

(declare-fun mapKey!19800 () (_ BitVec 32))

(declare-datatypes ((array!27989 0))(
  ( (array!27990 (arr!13436 (Array (_ BitVec 32) ValueCell!5711)) (size!13788 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27989)

(declare-fun mapRest!19800 () (Array (_ BitVec 32) ValueCell!5711))

(assert (=> mapNonEmpty!19800 (= (arr!13436 _values!549) (store mapRest!19800 mapKey!19800 mapValue!19800))))

(declare-fun b!451924 () Bool)

(declare-fun e!264655 () Bool)

(declare-fun e!264656 () Bool)

(assert (=> b!451924 (= e!264655 (not e!264656))))

(declare-fun res!269214 () Bool)

(assert (=> b!451924 (=> res!269214 e!264656)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!451924 (= res!269214 (validKeyInArray!0 (select (arr!13435 _keys!709) from!863)))))

(declare-fun e!264663 () Bool)

(assert (=> b!451924 e!264663))

(declare-fun c!56030 () Bool)

(assert (=> b!451924 (= c!56030 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!13165 0))(
  ( (Unit!13166) )
))
(declare-fun lt!205063 () Unit!13165)

(declare-fun minValue!515 () V!17251)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17251)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!17251)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!701 (array!27987 array!27989 (_ BitVec 32) (_ BitVec 32) V!17251 V!17251 (_ BitVec 32) (_ BitVec 64) V!17251 (_ BitVec 32) Int) Unit!13165)

(assert (=> b!451924 (= lt!205063 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!701 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451925 () Bool)

(declare-datatypes ((tuple2!7970 0))(
  ( (tuple2!7971 (_1!3995 (_ BitVec 64)) (_2!3995 V!17251)) )
))
(declare-datatypes ((List!8074 0))(
  ( (Nil!8071) (Cons!8070 (h!8926 tuple2!7970) (t!13876 List!8074)) )
))
(declare-datatypes ((ListLongMap!6897 0))(
  ( (ListLongMap!6898 (toList!3464 List!8074)) )
))
(declare-fun call!29923 () ListLongMap!6897)

(declare-fun call!29924 () ListLongMap!6897)

(assert (=> b!451925 (= e!264663 (= call!29923 call!29924))))

(declare-fun b!451926 () Bool)

(declare-fun e!264657 () Bool)

(assert (=> b!451926 (= e!264657 e!264655)))

(declare-fun res!269209 () Bool)

(assert (=> b!451926 (=> (not res!269209) (not e!264655))))

(assert (=> b!451926 (= res!269209 (= from!863 i!563))))

(declare-fun lt!205061 () array!27989)

(declare-fun lt!205065 () ListLongMap!6897)

(declare-fun lt!205064 () array!27987)

(declare-fun getCurrentListMapNoExtraKeys!1641 (array!27987 array!27989 (_ BitVec 32) (_ BitVec 32) V!17251 V!17251 (_ BitVec 32) Int) ListLongMap!6897)

(assert (=> b!451926 (= lt!205065 (getCurrentListMapNoExtraKeys!1641 lt!205064 lt!205061 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!451926 (= lt!205061 (array!27990 (store (arr!13436 _values!549) i!563 (ValueCellFull!5711 v!412)) (size!13788 _values!549)))))

(declare-fun lt!205062 () ListLongMap!6897)

(assert (=> b!451926 (= lt!205062 (getCurrentListMapNoExtraKeys!1641 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!451927 () Bool)

(assert (=> b!451927 (= e!264656 (bvslt from!863 (size!13788 _values!549)))))

(declare-fun +!1530 (ListLongMap!6897 tuple2!7970) ListLongMap!6897)

(declare-fun get!6629 (ValueCell!5711 V!17251) V!17251)

(declare-fun dynLambda!854 (Int (_ BitVec 64)) V!17251)

(assert (=> b!451927 (= lt!205065 (+!1530 (getCurrentListMapNoExtraKeys!1641 lt!205064 lt!205061 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7971 (select (arr!13435 lt!205064) from!863) (get!6629 (select (arr!13436 lt!205061) from!863) (dynLambda!854 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapIsEmpty!19800 () Bool)

(assert (=> mapIsEmpty!19800 mapRes!19800))

(declare-fun b!451928 () Bool)

(declare-fun res!269218 () Bool)

(assert (=> b!451928 (=> (not res!269218) (not e!264658))))

(assert (=> b!451928 (= res!269218 (and (= (size!13788 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13787 _keys!709) (size!13788 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!451929 () Bool)

(declare-fun res!269212 () Bool)

(assert (=> b!451929 (=> (not res!269212) (not e!264657))))

(assert (=> b!451929 (= res!269212 (bvsle from!863 i!563))))

(declare-fun b!451930 () Bool)

(declare-fun res!269222 () Bool)

(assert (=> b!451930 (=> (not res!269222) (not e!264657))))

(declare-datatypes ((List!8075 0))(
  ( (Nil!8072) (Cons!8071 (h!8927 (_ BitVec 64)) (t!13877 List!8075)) )
))
(declare-fun arrayNoDuplicates!0 (array!27987 (_ BitVec 32) List!8075) Bool)

(assert (=> b!451930 (= res!269222 (arrayNoDuplicates!0 lt!205064 #b00000000000000000000000000000000 Nil!8072))))

(declare-fun res!269213 () Bool)

(assert (=> start!40790 (=> (not res!269213) (not e!264658))))

(assert (=> start!40790 (= res!269213 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13787 _keys!709))))))

(assert (=> start!40790 e!264658))

(declare-fun tp_is_empty!12109 () Bool)

(assert (=> start!40790 tp_is_empty!12109))

(assert (=> start!40790 tp!38135))

(assert (=> start!40790 true))

(declare-fun e!264661 () Bool)

(declare-fun array_inv!9726 (array!27989) Bool)

(assert (=> start!40790 (and (array_inv!9726 _values!549) e!264661)))

(declare-fun array_inv!9727 (array!27987) Bool)

(assert (=> start!40790 (array_inv!9727 _keys!709)))

(declare-fun b!451931 () Bool)

(declare-fun res!269210 () Bool)

(assert (=> b!451931 (=> (not res!269210) (not e!264658))))

(assert (=> b!451931 (= res!269210 (validKeyInArray!0 k!794))))

(declare-fun b!451932 () Bool)

(declare-fun res!269219 () Bool)

(assert (=> b!451932 (=> (not res!269219) (not e!264658))))

(assert (=> b!451932 (= res!269219 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8072))))

(declare-fun b!451933 () Bool)

(declare-fun res!269220 () Bool)

(assert (=> b!451933 (=> (not res!269220) (not e!264658))))

(assert (=> b!451933 (= res!269220 (or (= (select (arr!13435 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13435 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!451934 () Bool)

(assert (=> b!451934 (= e!264659 tp_is_empty!12109)))

(declare-fun bm!29920 () Bool)

(assert (=> bm!29920 (= call!29923 (getCurrentListMapNoExtraKeys!1641 (ite c!56030 _keys!709 lt!205064) (ite c!56030 _values!549 lt!205061) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451935 () Bool)

(declare-fun e!264660 () Bool)

(assert (=> b!451935 (= e!264661 (and e!264660 mapRes!19800))))

(declare-fun condMapEmpty!19800 () Bool)

(declare-fun mapDefault!19800 () ValueCell!5711)

