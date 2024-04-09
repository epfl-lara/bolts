; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74918 () Bool)

(assert start!74918)

(declare-fun b_free!15409 () Bool)

(declare-fun b_next!15409 () Bool)

(assert (=> start!74918 (= b_free!15409 (not b_next!15409))))

(declare-fun tp!53931 () Bool)

(declare-fun b_and!25535 () Bool)

(assert (=> start!74918 (= tp!53931 b_and!25535)))

(declare-fun b!882630 () Bool)

(declare-fun res!599731 () Bool)

(declare-fun e!491274 () Bool)

(assert (=> b!882630 (=> (not res!599731) (not e!491274))))

(declare-datatypes ((array!51418 0))(
  ( (array!51419 (arr!24724 (Array (_ BitVec 32) (_ BitVec 64))) (size!25165 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51418)

(declare-datatypes ((List!17650 0))(
  ( (Nil!17647) (Cons!17646 (h!18777 (_ BitVec 64)) (t!24869 List!17650)) )
))
(declare-fun arrayNoDuplicates!0 (array!51418 (_ BitVec 32) List!17650) Bool)

(assert (=> b!882630 (= res!599731 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17647))))

(declare-fun b!882631 () Bool)

(declare-fun res!599730 () Bool)

(assert (=> b!882631 (=> (not res!599730) (not e!491274))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!882631 (= res!599730 (validMask!0 mask!1196))))

(declare-fun b!882632 () Bool)

(declare-fun e!491273 () Bool)

(assert (=> b!882632 (= e!491274 e!491273)))

(declare-fun res!599737 () Bool)

(assert (=> b!882632 (=> (not res!599737) (not e!491273))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!882632 (= res!599737 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!28585 0))(
  ( (V!28586 (val!8874 Int)) )
))
(declare-fun minValue!654 () V!28585)

(declare-fun zeroValue!654 () V!28585)

(declare-datatypes ((tuple2!11782 0))(
  ( (tuple2!11783 (_1!5901 (_ BitVec 64)) (_2!5901 V!28585)) )
))
(declare-datatypes ((List!17651 0))(
  ( (Nil!17648) (Cons!17647 (h!18778 tuple2!11782) (t!24870 List!17651)) )
))
(declare-datatypes ((ListLongMap!10565 0))(
  ( (ListLongMap!10566 (toList!5298 List!17651)) )
))
(declare-fun lt!399369 () ListLongMap!10565)

(declare-datatypes ((ValueCell!8387 0))(
  ( (ValueCellFull!8387 (v!11339 V!28585)) (EmptyCell!8387) )
))
(declare-datatypes ((array!51420 0))(
  ( (array!51421 (arr!24725 (Array (_ BitVec 32) ValueCell!8387)) (size!25166 (_ BitVec 32))) )
))
(declare-fun lt!399371 () array!51420)

(declare-fun getCurrentListMapNoExtraKeys!3256 (array!51418 array!51420 (_ BitVec 32) (_ BitVec 32) V!28585 V!28585 (_ BitVec 32) Int) ListLongMap!10565)

(assert (=> b!882632 (= lt!399369 (getCurrentListMapNoExtraKeys!3256 _keys!868 lt!399371 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28585)

(declare-fun _values!688 () array!51420)

(assert (=> b!882632 (= lt!399371 (array!51421 (store (arr!24725 _values!688) i!612 (ValueCellFull!8387 v!557)) (size!25166 _values!688)))))

(declare-fun lt!399372 () ListLongMap!10565)

(assert (=> b!882632 (= lt!399372 (getCurrentListMapNoExtraKeys!3256 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!882633 () Bool)

(declare-fun res!599736 () Bool)

(declare-fun e!491279 () Bool)

(assert (=> b!882633 (=> res!599736 e!491279)))

(declare-fun noDuplicate!1321 (List!17650) Bool)

(assert (=> b!882633 (= res!599736 (not (noDuplicate!1321 Nil!17647)))))

(declare-fun mapIsEmpty!28116 () Bool)

(declare-fun mapRes!28116 () Bool)

(assert (=> mapIsEmpty!28116 mapRes!28116))

(declare-fun b!882634 () Bool)

(declare-fun e!491278 () Bool)

(declare-fun tp_is_empty!17653 () Bool)

(assert (=> b!882634 (= e!491278 tp_is_empty!17653)))

(declare-fun b!882635 () Bool)

(declare-fun e!491276 () Bool)

(assert (=> b!882635 (= e!491276 (and e!491278 mapRes!28116))))

(declare-fun condMapEmpty!28116 () Bool)

(declare-fun mapDefault!28116 () ValueCell!8387)

