; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40738 () Bool)

(assert start!40738)

(declare-fun b_free!10741 () Bool)

(declare-fun b_next!10741 () Bool)

(assert (=> start!40738 (= b_free!10741 (not b_next!10741))))

(declare-fun tp!38043 () Bool)

(declare-fun b_and!18767 () Bool)

(assert (=> start!40738 (= tp!38043 b_and!18767)))

(declare-fun b!450880 () Bool)

(declare-fun res!268527 () Bool)

(declare-fun e!264148 () Bool)

(assert (=> b!450880 (=> (not res!268527) (not e!264148))))

(declare-datatypes ((array!27925 0))(
  ( (array!27926 (arr!13405 (Array (_ BitVec 32) (_ BitVec 64))) (size!13757 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27925)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17211 0))(
  ( (V!17212 (val!6084 Int)) )
))
(declare-datatypes ((ValueCell!5696 0))(
  ( (ValueCellFull!5696 (v!8335 V!17211)) (EmptyCell!5696) )
))
(declare-datatypes ((array!27927 0))(
  ( (array!27928 (arr!13406 (Array (_ BitVec 32) ValueCell!5696)) (size!13758 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27927)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!450880 (= res!268527 (and (= (size!13758 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13757 _keys!709) (size!13758 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!450881 () Bool)

(declare-fun res!268524 () Bool)

(assert (=> b!450881 (=> (not res!268524) (not e!264148))))

(declare-datatypes ((List!8049 0))(
  ( (Nil!8046) (Cons!8045 (h!8901 (_ BitVec 64)) (t!13821 List!8049)) )
))
(declare-fun arrayNoDuplicates!0 (array!27925 (_ BitVec 32) List!8049) Bool)

(assert (=> b!450881 (= res!268524 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8046))))

(declare-fun b!450882 () Bool)

(declare-fun res!268514 () Bool)

(assert (=> b!450882 (=> (not res!268514) (not e!264148))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!450882 (= res!268514 (or (= (select (arr!13405 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13405 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!450883 () Bool)

(declare-fun e!264152 () Bool)

(declare-fun tp_is_empty!12079 () Bool)

(assert (=> b!450883 (= e!264152 tp_is_empty!12079)))

(declare-fun minValue!515 () V!17211)

(declare-fun defaultEntry!557 () Int)

(declare-fun bm!29809 () Bool)

(declare-fun lt!204756 () array!27925)

(declare-fun zeroValue!515 () V!17211)

(declare-datatypes ((tuple2!7942 0))(
  ( (tuple2!7943 (_1!3981 (_ BitVec 64)) (_2!3981 V!17211)) )
))
(declare-datatypes ((List!8050 0))(
  ( (Nil!8047) (Cons!8046 (h!8902 tuple2!7942) (t!13822 List!8050)) )
))
(declare-datatypes ((ListLongMap!6869 0))(
  ( (ListLongMap!6870 (toList!3450 List!8050)) )
))
(declare-fun call!29812 () ListLongMap!6869)

(declare-fun c!55943 () Bool)

(declare-fun lt!204758 () array!27927)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1627 (array!27925 array!27927 (_ BitVec 32) (_ BitVec 32) V!17211 V!17211 (_ BitVec 32) Int) ListLongMap!6869)

(assert (=> bm!29809 (= call!29812 (getCurrentListMapNoExtraKeys!1627 (ite c!55943 lt!204756 _keys!709) (ite c!55943 lt!204758 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun call!29813 () ListLongMap!6869)

(declare-fun bm!29810 () Bool)

(assert (=> bm!29810 (= call!29813 (getCurrentListMapNoExtraKeys!1627 (ite c!55943 _keys!709 lt!204756) (ite c!55943 _values!549 lt!204758) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450884 () Bool)

(declare-fun e!264156 () Bool)

(declare-fun e!264151 () Bool)

(assert (=> b!450884 (= e!264156 e!264151)))

(declare-fun res!268518 () Bool)

(assert (=> b!450884 (=> (not res!268518) (not e!264151))))

(assert (=> b!450884 (= res!268518 (= from!863 i!563))))

(declare-fun lt!204759 () ListLongMap!6869)

(assert (=> b!450884 (= lt!204759 (getCurrentListMapNoExtraKeys!1627 lt!204756 lt!204758 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17211)

(assert (=> b!450884 (= lt!204758 (array!27928 (store (arr!13406 _values!549) i!563 (ValueCellFull!5696 v!412)) (size!13758 _values!549)))))

(declare-fun lt!204757 () ListLongMap!6869)

(assert (=> b!450884 (= lt!204757 (getCurrentListMapNoExtraKeys!1627 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!450885 () Bool)

(declare-fun res!268517 () Bool)

(assert (=> b!450885 (=> (not res!268517) (not e!264148))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!450885 (= res!268517 (validKeyInArray!0 k!794))))

(declare-fun b!450886 () Bool)

(assert (=> b!450886 (= e!264148 e!264156)))

(declare-fun res!268521 () Bool)

(assert (=> b!450886 (=> (not res!268521) (not e!264156))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27925 (_ BitVec 32)) Bool)

(assert (=> b!450886 (= res!268521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204756 mask!1025))))

(assert (=> b!450886 (= lt!204756 (array!27926 (store (arr!13405 _keys!709) i!563 k!794) (size!13757 _keys!709)))))

(declare-fun res!268522 () Bool)

(assert (=> start!40738 (=> (not res!268522) (not e!264148))))

(assert (=> start!40738 (= res!268522 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13757 _keys!709))))))

(assert (=> start!40738 e!264148))

(assert (=> start!40738 tp_is_empty!12079))

(assert (=> start!40738 tp!38043))

(assert (=> start!40738 true))

(declare-fun e!264153 () Bool)

(declare-fun array_inv!9700 (array!27927) Bool)

(assert (=> start!40738 (and (array_inv!9700 _values!549) e!264153)))

(declare-fun array_inv!9701 (array!27925) Bool)

(assert (=> start!40738 (array_inv!9701 _keys!709)))

(declare-fun b!450887 () Bool)

(declare-fun e!264149 () Bool)

(declare-fun +!1518 (ListLongMap!6869 tuple2!7942) ListLongMap!6869)

(assert (=> b!450887 (= e!264149 (= call!29812 (+!1518 call!29813 (tuple2!7943 k!794 v!412))))))

(declare-fun b!450888 () Bool)

(declare-fun res!268526 () Bool)

(assert (=> b!450888 (=> (not res!268526) (not e!264148))))

(declare-fun arrayContainsKey!0 (array!27925 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!450888 (= res!268526 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!450889 () Bool)

(assert (=> b!450889 (= e!264149 (= call!29813 call!29812))))

(declare-fun e!264150 () Bool)

(declare-fun b!450890 () Bool)

(declare-fun get!6606 (ValueCell!5696 V!17211) V!17211)

(declare-fun dynLambda!843 (Int (_ BitVec 64)) V!17211)

(assert (=> b!450890 (= e!264150 (= lt!204759 (+!1518 (getCurrentListMapNoExtraKeys!1627 lt!204756 lt!204758 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7943 (select (arr!13405 lt!204756) from!863) (get!6606 (select (arr!13406 lt!204758) from!863) (dynLambda!843 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!450891 () Bool)

(declare-fun res!268525 () Bool)

(assert (=> b!450891 (=> (not res!268525) (not e!264156))))

(assert (=> b!450891 (= res!268525 (bvsle from!863 i!563))))

(declare-fun b!450892 () Bool)

(declare-fun res!268520 () Bool)

(assert (=> b!450892 (=> (not res!268520) (not e!264148))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!450892 (= res!268520 (validMask!0 mask!1025))))

(declare-fun b!450893 () Bool)

(assert (=> b!450893 (= e!264151 (not e!264150))))

(declare-fun res!268516 () Bool)

(assert (=> b!450893 (=> res!268516 e!264150)))

(assert (=> b!450893 (= res!268516 (validKeyInArray!0 (select (arr!13405 _keys!709) from!863)))))

(assert (=> b!450893 e!264149))

(assert (=> b!450893 (= c!55943 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!13141 0))(
  ( (Unit!13142) )
))
(declare-fun lt!204760 () Unit!13141)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!689 (array!27925 array!27927 (_ BitVec 32) (_ BitVec 32) V!17211 V!17211 (_ BitVec 32) (_ BitVec 64) V!17211 (_ BitVec 32) Int) Unit!13141)

(assert (=> b!450893 (= lt!204760 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!689 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450894 () Bool)

(declare-fun mapRes!19752 () Bool)

(assert (=> b!450894 (= e!264153 (and e!264152 mapRes!19752))))

(declare-fun condMapEmpty!19752 () Bool)

(declare-fun mapDefault!19752 () ValueCell!5696)

