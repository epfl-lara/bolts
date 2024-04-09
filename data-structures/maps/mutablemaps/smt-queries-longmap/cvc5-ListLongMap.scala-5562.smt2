; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73184 () Bool)

(assert start!73184)

(declare-fun b_free!14071 () Bool)

(declare-fun b_next!14071 () Bool)

(assert (=> start!73184 (= b_free!14071 (not b_next!14071))))

(declare-fun tp!49718 () Bool)

(declare-fun b_and!23319 () Bool)

(assert (=> start!73184 (= tp!49718 b_and!23319)))

(declare-fun b!851673 () Bool)

(declare-fun e!475068 () Bool)

(declare-fun tp_is_empty!16207 () Bool)

(assert (=> b!851673 (= e!475068 tp_is_empty!16207)))

(declare-fun res!578603 () Bool)

(declare-fun e!475062 () Bool)

(assert (=> start!73184 (=> (not res!578603) (not e!475062))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48602 0))(
  ( (array!48603 (arr!23328 (Array (_ BitVec 32) (_ BitVec 64))) (size!23769 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48602)

(assert (=> start!73184 (= res!578603 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23769 _keys!868))))))

(assert (=> start!73184 e!475062))

(assert (=> start!73184 tp_is_empty!16207))

(assert (=> start!73184 true))

(assert (=> start!73184 tp!49718))

(declare-fun array_inv!18496 (array!48602) Bool)

(assert (=> start!73184 (array_inv!18496 _keys!868)))

(declare-datatypes ((V!26657 0))(
  ( (V!26658 (val!8151 Int)) )
))
(declare-datatypes ((ValueCell!7664 0))(
  ( (ValueCellFull!7664 (v!10572 V!26657)) (EmptyCell!7664) )
))
(declare-datatypes ((array!48604 0))(
  ( (array!48605 (arr!23329 (Array (_ BitVec 32) ValueCell!7664)) (size!23770 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48604)

(declare-fun e!475067 () Bool)

(declare-fun array_inv!18497 (array!48604) Bool)

(assert (=> start!73184 (and (array_inv!18497 _values!688) e!475067)))

(declare-fun b!851674 () Bool)

(declare-fun res!578608 () Bool)

(assert (=> b!851674 (=> (not res!578608) (not e!475062))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!851674 (= res!578608 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23769 _keys!868))))))

(declare-fun b!851675 () Bool)

(declare-fun res!578609 () Bool)

(assert (=> b!851675 (=> (not res!578609) (not e!475062))))

(declare-datatypes ((List!16598 0))(
  ( (Nil!16595) (Cons!16594 (h!17725 (_ BitVec 64)) (t!23123 List!16598)) )
))
(declare-fun arrayNoDuplicates!0 (array!48602 (_ BitVec 32) List!16598) Bool)

(assert (=> b!851675 (= res!578609 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16595))))

(declare-fun b!851676 () Bool)

(declare-fun res!578601 () Bool)

(assert (=> b!851676 (=> (not res!578601) (not e!475062))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!851676 (= res!578601 (and (= (select (arr!23328 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!851677 () Bool)

(declare-fun e!475064 () Bool)

(declare-datatypes ((tuple2!10712 0))(
  ( (tuple2!10713 (_1!5366 (_ BitVec 64)) (_2!5366 V!26657)) )
))
(declare-datatypes ((List!16599 0))(
  ( (Nil!16596) (Cons!16595 (h!17726 tuple2!10712) (t!23124 List!16599)) )
))
(declare-datatypes ((ListLongMap!9495 0))(
  ( (ListLongMap!9496 (toList!4763 List!16599)) )
))
(declare-fun call!38068 () ListLongMap!9495)

(declare-fun call!38069 () ListLongMap!9495)

(assert (=> b!851677 (= e!475064 (= call!38068 call!38069))))

(declare-fun b!851678 () Bool)

(declare-fun e!475063 () Bool)

(declare-fun e!475066 () Bool)

(assert (=> b!851678 (= e!475063 (not e!475066))))

(declare-fun res!578610 () Bool)

(assert (=> b!851678 (=> res!578610 e!475066)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!851678 (= res!578610 (not (validKeyInArray!0 (select (arr!23328 _keys!868) from!1053))))))

(assert (=> b!851678 e!475064))

(declare-fun c!91695 () Bool)

(assert (=> b!851678 (= c!91695 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!26657)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!26657)

(declare-fun zeroValue!654 () V!26657)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((Unit!29056 0))(
  ( (Unit!29057) )
))
(declare-fun lt!383653 () Unit!29056)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!371 (array!48602 array!48604 (_ BitVec 32) (_ BitVec 32) V!26657 V!26657 (_ BitVec 32) (_ BitVec 64) V!26657 (_ BitVec 32) Int) Unit!29056)

(assert (=> b!851678 (= lt!383653 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!371 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!383657 () array!48604)

(declare-fun bm!38065 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2748 (array!48602 array!48604 (_ BitVec 32) (_ BitVec 32) V!26657 V!26657 (_ BitVec 32) Int) ListLongMap!9495)

(assert (=> bm!38065 (= call!38068 (getCurrentListMapNoExtraKeys!2748 _keys!868 lt!383657 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851679 () Bool)

(declare-fun res!578604 () Bool)

(assert (=> b!851679 (=> (not res!578604) (not e!475062))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!851679 (= res!578604 (validMask!0 mask!1196))))

(declare-fun bm!38066 () Bool)

(assert (=> bm!38066 (= call!38069 (getCurrentListMapNoExtraKeys!2748 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851680 () Bool)

(declare-fun +!2105 (ListLongMap!9495 tuple2!10712) ListLongMap!9495)

(assert (=> b!851680 (= e!475064 (= call!38068 (+!2105 call!38069 (tuple2!10713 k!854 v!557))))))

(declare-fun b!851681 () Bool)

(declare-fun mapRes!25910 () Bool)

(assert (=> b!851681 (= e!475067 (and e!475068 mapRes!25910))))

(declare-fun condMapEmpty!25910 () Bool)

(declare-fun mapDefault!25910 () ValueCell!7664)

