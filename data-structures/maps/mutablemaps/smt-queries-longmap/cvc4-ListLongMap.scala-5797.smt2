; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74828 () Bool)

(assert start!74828)

(declare-fun b_free!15377 () Bool)

(declare-fun b_next!15377 () Bool)

(assert (=> start!74828 (= b_free!15377 (not b_next!15377))))

(declare-fun tp!53828 () Bool)

(declare-fun b_and!25439 () Bool)

(assert (=> start!74828 (= tp!53828 b_and!25439)))

(declare-fun b!881582 () Bool)

(declare-fun res!599018 () Bool)

(declare-fun e!490657 () Bool)

(assert (=> b!881582 (=> (not res!599018) (not e!490657))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!881582 (= res!599018 (validMask!0 mask!1196))))

(declare-fun res!599020 () Bool)

(assert (=> start!74828 (=> (not res!599020) (not e!490657))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!51352 0))(
  ( (array!51353 (arr!24693 (Array (_ BitVec 32) (_ BitVec 64))) (size!25134 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51352)

(assert (=> start!74828 (= res!599020 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25134 _keys!868))))))

(assert (=> start!74828 e!490657))

(declare-fun tp_is_empty!17621 () Bool)

(assert (=> start!74828 tp_is_empty!17621))

(assert (=> start!74828 true))

(assert (=> start!74828 tp!53828))

(declare-fun array_inv!19432 (array!51352) Bool)

(assert (=> start!74828 (array_inv!19432 _keys!868)))

(declare-datatypes ((V!28541 0))(
  ( (V!28542 (val!8858 Int)) )
))
(declare-datatypes ((ValueCell!8371 0))(
  ( (ValueCellFull!8371 (v!11314 V!28541)) (EmptyCell!8371) )
))
(declare-datatypes ((array!51354 0))(
  ( (array!51355 (arr!24694 (Array (_ BitVec 32) ValueCell!8371)) (size!25135 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51354)

(declare-fun e!490654 () Bool)

(declare-fun array_inv!19433 (array!51354) Bool)

(assert (=> start!74828 (and (array_inv!19433 _values!688) e!490654)))

(declare-fun b!881583 () Bool)

(declare-fun res!599023 () Bool)

(assert (=> b!881583 (=> (not res!599023) (not e!490657))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!881583 (= res!599023 (and (= (size!25135 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25134 _keys!868) (size!25135 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!881584 () Bool)

(declare-fun e!490659 () Bool)

(declare-fun e!490655 () Bool)

(assert (=> b!881584 (= e!490659 (not e!490655))))

(declare-fun res!599024 () Bool)

(assert (=> b!881584 (=> res!599024 e!490655)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!881584 (= res!599024 (not (validKeyInArray!0 (select (arr!24693 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11756 0))(
  ( (tuple2!11757 (_1!5888 (_ BitVec 64)) (_2!5888 V!28541)) )
))
(declare-datatypes ((List!17624 0))(
  ( (Nil!17621) (Cons!17620 (h!18751 tuple2!11756) (t!24811 List!17624)) )
))
(declare-datatypes ((ListLongMap!10539 0))(
  ( (ListLongMap!10540 (toList!5285 List!17624)) )
))
(declare-fun lt!398782 () ListLongMap!10539)

(declare-fun lt!398785 () ListLongMap!10539)

(assert (=> b!881584 (= lt!398782 lt!398785)))

(declare-fun v!557 () V!28541)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lt!398781 () ListLongMap!10539)

(declare-fun +!2491 (ListLongMap!10539 tuple2!11756) ListLongMap!10539)

(assert (=> b!881584 (= lt!398785 (+!2491 lt!398781 (tuple2!11757 k!854 v!557)))))

(declare-fun lt!398779 () array!51354)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28541)

(declare-fun zeroValue!654 () V!28541)

(declare-fun getCurrentListMapNoExtraKeys!3245 (array!51352 array!51354 (_ BitVec 32) (_ BitVec 32) V!28541 V!28541 (_ BitVec 32) Int) ListLongMap!10539)

(assert (=> b!881584 (= lt!398782 (getCurrentListMapNoExtraKeys!3245 _keys!868 lt!398779 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!881584 (= lt!398781 (getCurrentListMapNoExtraKeys!3245 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!30058 0))(
  ( (Unit!30059) )
))
(declare-fun lt!398780 () Unit!30058)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!720 (array!51352 array!51354 (_ BitVec 32) (_ BitVec 32) V!28541 V!28541 (_ BitVec 32) (_ BitVec 64) V!28541 (_ BitVec 32) Int) Unit!30058)

(assert (=> b!881584 (= lt!398780 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!720 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!881585 () Bool)

(declare-fun res!599021 () Bool)

(assert (=> b!881585 (=> (not res!599021) (not e!490657))))

(assert (=> b!881585 (= res!599021 (and (= (select (arr!24693 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!28062 () Bool)

(declare-fun mapRes!28062 () Bool)

(assert (=> mapIsEmpty!28062 mapRes!28062))

(declare-fun b!881586 () Bool)

(declare-fun res!599016 () Bool)

(assert (=> b!881586 (=> (not res!599016) (not e!490657))))

(assert (=> b!881586 (= res!599016 (validKeyInArray!0 k!854))))

(declare-fun b!881587 () Bool)

(declare-fun e!490661 () Bool)

(assert (=> b!881587 (= e!490661 tp_is_empty!17621)))

(declare-fun b!881588 () Bool)

(declare-fun e!490658 () Bool)

(assert (=> b!881588 (= e!490654 (and e!490658 mapRes!28062))))

(declare-fun condMapEmpty!28062 () Bool)

(declare-fun mapDefault!28062 () ValueCell!8371)

