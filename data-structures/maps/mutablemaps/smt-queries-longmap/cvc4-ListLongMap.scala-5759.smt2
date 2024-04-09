; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74434 () Bool)

(assert start!74434)

(declare-fun b_free!15149 () Bool)

(declare-fun b_next!15149 () Bool)

(assert (=> start!74434 (= b_free!15149 (not b_next!15149))))

(declare-fun tp!53125 () Bool)

(declare-fun b_and!24969 () Bool)

(assert (=> start!74434 (= tp!53125 b_and!24969)))

(declare-fun b!875862 () Bool)

(declare-fun res!595301 () Bool)

(declare-fun e!487618 () Bool)

(assert (=> b!875862 (=> (not res!595301) (not e!487618))))

(declare-datatypes ((array!50894 0))(
  ( (array!50895 (arr!24470 (Array (_ BitVec 32) (_ BitVec 64))) (size!24911 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50894)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50894 (_ BitVec 32)) Bool)

(assert (=> b!875862 (= res!595301 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!27701 () Bool)

(declare-fun mapRes!27701 () Bool)

(assert (=> mapIsEmpty!27701 mapRes!27701))

(declare-fun b!875863 () Bool)

(declare-fun res!595296 () Bool)

(assert (=> b!875863 (=> (not res!595296) (not e!487618))))

(declare-datatypes ((List!17448 0))(
  ( (Nil!17445) (Cons!17444 (h!18575 (_ BitVec 64)) (t!24509 List!17448)) )
))
(declare-fun arrayNoDuplicates!0 (array!50894 (_ BitVec 32) List!17448) Bool)

(assert (=> b!875863 (= res!595296 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17445))))

(declare-fun b!875864 () Bool)

(declare-fun e!487620 () Bool)

(declare-fun tp_is_empty!17393 () Bool)

(assert (=> b!875864 (= e!487620 tp_is_empty!17393)))

(declare-fun mapNonEmpty!27701 () Bool)

(declare-fun tp!53126 () Bool)

(assert (=> mapNonEmpty!27701 (= mapRes!27701 (and tp!53126 e!487620))))

(declare-datatypes ((V!28237 0))(
  ( (V!28238 (val!8744 Int)) )
))
(declare-datatypes ((ValueCell!8257 0))(
  ( (ValueCellFull!8257 (v!11173 V!28237)) (EmptyCell!8257) )
))
(declare-fun mapValue!27701 () ValueCell!8257)

(declare-datatypes ((array!50896 0))(
  ( (array!50897 (arr!24471 (Array (_ BitVec 32) ValueCell!8257)) (size!24912 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50896)

(declare-fun mapRest!27701 () (Array (_ BitVec 32) ValueCell!8257))

(declare-fun mapKey!27701 () (_ BitVec 32))

(assert (=> mapNonEmpty!27701 (= (arr!24471 _values!688) (store mapRest!27701 mapKey!27701 mapValue!27701))))

(declare-datatypes ((tuple2!11562 0))(
  ( (tuple2!11563 (_1!5791 (_ BitVec 64)) (_2!5791 V!28237)) )
))
(declare-datatypes ((List!17449 0))(
  ( (Nil!17446) (Cons!17445 (h!18576 tuple2!11562) (t!24510 List!17449)) )
))
(declare-datatypes ((ListLongMap!10345 0))(
  ( (ListLongMap!10346 (toList!5188 List!17449)) )
))
(declare-fun call!38690 () ListLongMap!10345)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun bm!38687 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28237)

(declare-fun zeroValue!654 () V!28237)

(declare-fun getCurrentListMapNoExtraKeys!3151 (array!50894 array!50896 (_ BitVec 32) (_ BitVec 32) V!28237 V!28237 (_ BitVec 32) Int) ListLongMap!10345)

(assert (=> bm!38687 (= call!38690 (getCurrentListMapNoExtraKeys!3151 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875865 () Bool)

(declare-fun e!487625 () Bool)

(declare-fun e!487619 () Bool)

(assert (=> b!875865 (= e!487625 (and e!487619 mapRes!27701))))

(declare-fun condMapEmpty!27701 () Bool)

(declare-fun mapDefault!27701 () ValueCell!8257)

