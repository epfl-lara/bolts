; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74836 () Bool)

(assert start!74836)

(declare-fun b_free!15385 () Bool)

(declare-fun b_next!15385 () Bool)

(assert (=> start!74836 (= b_free!15385 (not b_next!15385))))

(declare-fun tp!53852 () Bool)

(declare-fun b_and!25455 () Bool)

(assert (=> start!74836 (= tp!53852 b_and!25455)))

(declare-fun mapNonEmpty!28074 () Bool)

(declare-fun mapRes!28074 () Bool)

(declare-fun tp!53853 () Bool)

(declare-fun e!490755 () Bool)

(assert (=> mapNonEmpty!28074 (= mapRes!28074 (and tp!53853 e!490755))))

(declare-fun mapKey!28074 () (_ BitVec 32))

(declare-datatypes ((V!28553 0))(
  ( (V!28554 (val!8862 Int)) )
))
(declare-datatypes ((ValueCell!8375 0))(
  ( (ValueCellFull!8375 (v!11318 V!28553)) (EmptyCell!8375) )
))
(declare-fun mapValue!28074 () ValueCell!8375)

(declare-fun mapRest!28074 () (Array (_ BitVec 32) ValueCell!8375))

(declare-datatypes ((array!51368 0))(
  ( (array!51369 (arr!24701 (Array (_ BitVec 32) ValueCell!8375)) (size!25142 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51368)

(assert (=> mapNonEmpty!28074 (= (arr!24701 _values!688) (store mapRest!28074 mapKey!28074 mapValue!28074))))

(declare-fun b!881758 () Bool)

(declare-fun e!490756 () Bool)

(declare-datatypes ((array!51370 0))(
  ( (array!51371 (arr!24702 (Array (_ BitVec 32) (_ BitVec 64))) (size!25143 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51370)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!881758 (= e!490756 (or (bvsge (size!25143 _keys!868) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25143 _keys!868))))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!51370 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!881758 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-datatypes ((Unit!30066 0))(
  ( (Unit!30067) )
))
(declare-fun lt!398887 () Unit!30066)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51370 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30066)

(assert (=> b!881758 (= lt!398887 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-datatypes ((List!17631 0))(
  ( (Nil!17628) (Cons!17627 (h!18758 (_ BitVec 64)) (t!24826 List!17631)) )
))
(declare-fun arrayNoDuplicates!0 (array!51370 (_ BitVec 32) List!17631) Bool)

(assert (=> b!881758 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17628)))

(declare-fun lt!398888 () Unit!30066)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51370 (_ BitVec 32) (_ BitVec 32)) Unit!30066)

(assert (=> b!881758 (= lt!398888 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!881760 () Bool)

(declare-fun res!599148 () Bool)

(declare-fun e!490757 () Bool)

(assert (=> b!881760 (=> (not res!599148) (not e!490757))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!881760 (= res!599148 (and (= (size!25142 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25143 _keys!868) (size!25142 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!881761 () Bool)

(declare-fun res!599158 () Bool)

(assert (=> b!881761 (=> (not res!599158) (not e!490757))))

(assert (=> b!881761 (= res!599158 (and (= (select (arr!24702 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!881762 () Bool)

(declare-fun res!599154 () Bool)

(assert (=> b!881762 (=> (not res!599154) (not e!490757))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!881762 (= res!599154 (validKeyInArray!0 k!854))))

(declare-fun b!881763 () Bool)

(declare-fun res!599156 () Bool)

(assert (=> b!881763 (=> (not res!599156) (not e!490757))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!881763 (= res!599156 (validMask!0 mask!1196))))

(declare-fun b!881764 () Bool)

(declare-fun res!599151 () Bool)

(assert (=> b!881764 (=> (not res!599151) (not e!490757))))

(assert (=> b!881764 (= res!599151 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25143 _keys!868))))))

(declare-fun b!881765 () Bool)

(declare-fun tp_is_empty!17629 () Bool)

(assert (=> b!881765 (= e!490755 tp_is_empty!17629)))

(declare-fun b!881766 () Bool)

(declare-fun res!599149 () Bool)

(assert (=> b!881766 (=> (not res!599149) (not e!490757))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51370 (_ BitVec 32)) Bool)

(assert (=> b!881766 (= res!599149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!881767 () Bool)

(declare-fun res!599152 () Bool)

(assert (=> b!881767 (=> (not res!599152) (not e!490757))))

(assert (=> b!881767 (= res!599152 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17628))))

(declare-fun b!881768 () Bool)

(declare-fun e!490754 () Bool)

(assert (=> b!881768 (= e!490754 tp_is_empty!17629)))

(declare-fun res!599157 () Bool)

(assert (=> start!74836 (=> (not res!599157) (not e!490757))))

(assert (=> start!74836 (= res!599157 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25143 _keys!868))))))

(assert (=> start!74836 e!490757))

(assert (=> start!74836 tp_is_empty!17629))

(assert (=> start!74836 true))

(assert (=> start!74836 tp!53852))

(declare-fun array_inv!19440 (array!51370) Bool)

(assert (=> start!74836 (array_inv!19440 _keys!868)))

(declare-fun e!490750 () Bool)

(declare-fun array_inv!19441 (array!51368) Bool)

(assert (=> start!74836 (and (array_inv!19441 _values!688) e!490750)))

(declare-fun b!881759 () Bool)

(declare-fun e!490753 () Bool)

(assert (=> b!881759 (= e!490757 e!490753)))

(declare-fun res!599155 () Bool)

(assert (=> b!881759 (=> (not res!599155) (not e!490753))))

(assert (=> b!881759 (= res!599155 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11764 0))(
  ( (tuple2!11765 (_1!5892 (_ BitVec 64)) (_2!5892 V!28553)) )
))
(declare-datatypes ((List!17632 0))(
  ( (Nil!17629) (Cons!17628 (h!18759 tuple2!11764) (t!24827 List!17632)) )
))
(declare-datatypes ((ListLongMap!10547 0))(
  ( (ListLongMap!10548 (toList!5289 List!17632)) )
))
(declare-fun lt!398889 () ListLongMap!10547)

(declare-fun lt!398892 () array!51368)

(declare-fun minValue!654 () V!28553)

(declare-fun zeroValue!654 () V!28553)

(declare-fun getCurrentListMapNoExtraKeys!3249 (array!51370 array!51368 (_ BitVec 32) (_ BitVec 32) V!28553 V!28553 (_ BitVec 32) Int) ListLongMap!10547)

(assert (=> b!881759 (= lt!398889 (getCurrentListMapNoExtraKeys!3249 _keys!868 lt!398892 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28553)

(assert (=> b!881759 (= lt!398892 (array!51369 (store (arr!24701 _values!688) i!612 (ValueCellFull!8375 v!557)) (size!25142 _values!688)))))

(declare-fun lt!398890 () ListLongMap!10547)

(assert (=> b!881759 (= lt!398890 (getCurrentListMapNoExtraKeys!3249 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!28074 () Bool)

(assert (=> mapIsEmpty!28074 mapRes!28074))

(declare-fun b!881769 () Bool)

(declare-fun e!490751 () Bool)

(assert (=> b!881769 (= e!490753 (not e!490751))))

(declare-fun res!599153 () Bool)

(assert (=> b!881769 (=> res!599153 e!490751)))

(assert (=> b!881769 (= res!599153 (not (validKeyInArray!0 (select (arr!24702 _keys!868) from!1053))))))

(declare-fun lt!398891 () ListLongMap!10547)

(declare-fun lt!398886 () ListLongMap!10547)

(assert (=> b!881769 (= lt!398891 lt!398886)))

(declare-fun lt!398893 () ListLongMap!10547)

(declare-fun +!2495 (ListLongMap!10547 tuple2!11764) ListLongMap!10547)

(assert (=> b!881769 (= lt!398886 (+!2495 lt!398893 (tuple2!11765 k!854 v!557)))))

(assert (=> b!881769 (= lt!398891 (getCurrentListMapNoExtraKeys!3249 _keys!868 lt!398892 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!881769 (= lt!398893 (getCurrentListMapNoExtraKeys!3249 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!398885 () Unit!30066)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!723 (array!51370 array!51368 (_ BitVec 32) (_ BitVec 32) V!28553 V!28553 (_ BitVec 32) (_ BitVec 64) V!28553 (_ BitVec 32) Int) Unit!30066)

(assert (=> b!881769 (= lt!398885 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!723 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!881770 () Bool)

(assert (=> b!881770 (= e!490750 (and e!490754 mapRes!28074))))

(declare-fun condMapEmpty!28074 () Bool)

(declare-fun mapDefault!28074 () ValueCell!8375)

