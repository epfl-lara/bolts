; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74834 () Bool)

(assert start!74834)

(declare-fun b_free!15383 () Bool)

(declare-fun b_next!15383 () Bool)

(assert (=> start!74834 (= b_free!15383 (not b_next!15383))))

(declare-fun tp!53846 () Bool)

(declare-fun b_and!25451 () Bool)

(assert (=> start!74834 (= tp!53846 b_and!25451)))

(declare-fun b!881714 () Bool)

(declare-fun res!599123 () Bool)

(declare-fun e!490727 () Bool)

(assert (=> b!881714 (=> (not res!599123) (not e!490727))))

(declare-datatypes ((array!51364 0))(
  ( (array!51365 (arr!24699 (Array (_ BitVec 32) (_ BitVec 64))) (size!25140 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51364)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51364 (_ BitVec 32)) Bool)

(assert (=> b!881714 (= res!599123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!28071 () Bool)

(declare-fun mapRes!28071 () Bool)

(declare-fun tp!53847 () Bool)

(declare-fun e!490729 () Bool)

(assert (=> mapNonEmpty!28071 (= mapRes!28071 (and tp!53847 e!490729))))

(declare-datatypes ((V!28549 0))(
  ( (V!28550 (val!8861 Int)) )
))
(declare-datatypes ((ValueCell!8374 0))(
  ( (ValueCellFull!8374 (v!11317 V!28549)) (EmptyCell!8374) )
))
(declare-fun mapRest!28071 () (Array (_ BitVec 32) ValueCell!8374))

(declare-fun mapKey!28071 () (_ BitVec 32))

(declare-fun mapValue!28071 () ValueCell!8374)

(declare-datatypes ((array!51366 0))(
  ( (array!51367 (arr!24700 (Array (_ BitVec 32) ValueCell!8374)) (size!25141 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51366)

(assert (=> mapNonEmpty!28071 (= (arr!24700 _values!688) (store mapRest!28071 mapKey!28071 mapValue!28071))))

(declare-fun b!881715 () Bool)

(declare-fun e!490730 () Bool)

(declare-fun e!490732 () Bool)

(assert (=> b!881715 (= e!490730 e!490732)))

(declare-fun res!599119 () Bool)

(assert (=> b!881715 (=> res!599119 e!490732)))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!881715 (= res!599119 (not (= (select (arr!24699 _keys!868) from!1053) k!854)))))

(declare-datatypes ((tuple2!11762 0))(
  ( (tuple2!11763 (_1!5891 (_ BitVec 64)) (_2!5891 V!28549)) )
))
(declare-datatypes ((List!17629 0))(
  ( (Nil!17626) (Cons!17625 (h!18756 tuple2!11762) (t!24822 List!17629)) )
))
(declare-datatypes ((ListLongMap!10545 0))(
  ( (ListLongMap!10546 (toList!5288 List!17629)) )
))
(declare-fun lt!398864 () ListLongMap!10545)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!398865 () ListLongMap!10545)

(declare-fun +!2494 (ListLongMap!10545 tuple2!11762) ListLongMap!10545)

(declare-fun get!13015 (ValueCell!8374 V!28549) V!28549)

(declare-fun dynLambda!1254 (Int (_ BitVec 64)) V!28549)

(assert (=> b!881715 (= lt!398864 (+!2494 lt!398865 (tuple2!11763 (select (arr!24699 _keys!868) from!1053) (get!13015 (select (arr!24700 _values!688) from!1053) (dynLambda!1254 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!881716 () Bool)

(declare-fun res!599118 () Bool)

(assert (=> b!881716 (=> (not res!599118) (not e!490727))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!881716 (= res!599118 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25140 _keys!868))))))

(declare-fun b!881717 () Bool)

(declare-fun e!490733 () Bool)

(assert (=> b!881717 (= e!490727 e!490733)))

(declare-fun res!599116 () Bool)

(assert (=> b!881717 (=> (not res!599116) (not e!490733))))

(assert (=> b!881717 (= res!599116 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!398859 () array!51366)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!28549)

(declare-fun zeroValue!654 () V!28549)

(declare-fun getCurrentListMapNoExtraKeys!3248 (array!51364 array!51366 (_ BitVec 32) (_ BitVec 32) V!28549 V!28549 (_ BitVec 32) Int) ListLongMap!10545)

(assert (=> b!881717 (= lt!398864 (getCurrentListMapNoExtraKeys!3248 _keys!868 lt!398859 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28549)

(assert (=> b!881717 (= lt!398859 (array!51367 (store (arr!24700 _values!688) i!612 (ValueCellFull!8374 v!557)) (size!25141 _values!688)))))

(declare-fun lt!398866 () ListLongMap!10545)

(assert (=> b!881717 (= lt!398866 (getCurrentListMapNoExtraKeys!3248 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!881718 () Bool)

(declare-fun res!599124 () Bool)

(assert (=> b!881718 (=> (not res!599124) (not e!490727))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!881718 (= res!599124 (validMask!0 mask!1196))))

(declare-fun b!881719 () Bool)

(declare-fun res!599120 () Bool)

(assert (=> b!881719 (=> (not res!599120) (not e!490727))))

(declare-datatypes ((List!17630 0))(
  ( (Nil!17627) (Cons!17626 (h!18757 (_ BitVec 64)) (t!24823 List!17630)) )
))
(declare-fun arrayNoDuplicates!0 (array!51364 (_ BitVec 32) List!17630) Bool)

(assert (=> b!881719 (= res!599120 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17627))))

(declare-fun b!881720 () Bool)

(assert (=> b!881720 (= e!490732 true)))

(declare-fun arrayContainsKey!0 (array!51364 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!881720 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-datatypes ((Unit!30064 0))(
  ( (Unit!30065) )
))
(declare-fun lt!398861 () Unit!30064)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51364 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30064)

(assert (=> b!881720 (= lt!398861 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!881720 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17627)))

(declare-fun lt!398862 () Unit!30064)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51364 (_ BitVec 32) (_ BitVec 32)) Unit!30064)

(assert (=> b!881720 (= lt!398862 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun res!599125 () Bool)

(assert (=> start!74834 (=> (not res!599125) (not e!490727))))

(assert (=> start!74834 (= res!599125 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25140 _keys!868))))))

(assert (=> start!74834 e!490727))

(declare-fun tp_is_empty!17627 () Bool)

(assert (=> start!74834 tp_is_empty!17627))

(assert (=> start!74834 true))

(assert (=> start!74834 tp!53846))

(declare-fun array_inv!19438 (array!51364) Bool)

(assert (=> start!74834 (array_inv!19438 _keys!868)))

(declare-fun e!490728 () Bool)

(declare-fun array_inv!19439 (array!51366) Bool)

(assert (=> start!74834 (and (array_inv!19439 _values!688) e!490728)))

(declare-fun b!881721 () Bool)

(assert (=> b!881721 (= e!490729 tp_is_empty!17627)))

(declare-fun b!881722 () Bool)

(declare-fun e!490731 () Bool)

(assert (=> b!881722 (= e!490728 (and e!490731 mapRes!28071))))

(declare-fun condMapEmpty!28071 () Bool)

(declare-fun mapDefault!28071 () ValueCell!8374)

