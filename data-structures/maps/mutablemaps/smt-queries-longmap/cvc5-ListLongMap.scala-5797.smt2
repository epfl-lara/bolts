; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74824 () Bool)

(assert start!74824)

(declare-fun b_free!15373 () Bool)

(declare-fun b_next!15373 () Bool)

(assert (=> start!74824 (= b_free!15373 (not b_next!15373))))

(declare-fun tp!53817 () Bool)

(declare-fun b_and!25431 () Bool)

(assert (=> start!74824 (= tp!53817 b_and!25431)))

(declare-fun b!881494 () Bool)

(declare-fun e!490607 () Bool)

(declare-fun tp_is_empty!17617 () Bool)

(assert (=> b!881494 (= e!490607 tp_is_empty!17617)))

(declare-fun mapIsEmpty!28056 () Bool)

(declare-fun mapRes!28056 () Bool)

(assert (=> mapIsEmpty!28056 mapRes!28056))

(declare-fun b!881495 () Bool)

(declare-fun res!598957 () Bool)

(declare-fun e!490610 () Bool)

(assert (=> b!881495 (=> (not res!598957) (not e!490610))))

(declare-datatypes ((array!51344 0))(
  ( (array!51345 (arr!24689 (Array (_ BitVec 32) (_ BitVec 64))) (size!25130 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51344)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51344 (_ BitVec 32)) Bool)

(assert (=> b!881495 (= res!598957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!881496 () Bool)

(declare-fun res!598955 () Bool)

(assert (=> b!881496 (=> (not res!598955) (not e!490610))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!881496 (= res!598955 (and (= (select (arr!24689 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!881497 () Bool)

(declare-fun e!490608 () Bool)

(declare-fun e!490613 () Bool)

(assert (=> b!881497 (= e!490608 (not e!490613))))

(declare-fun res!598954 () Bool)

(assert (=> b!881497 (=> res!598954 e!490613)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!881497 (= res!598954 (not (validKeyInArray!0 (select (arr!24689 _keys!868) from!1053))))))

(declare-datatypes ((V!28537 0))(
  ( (V!28538 (val!8856 Int)) )
))
(declare-datatypes ((tuple2!11752 0))(
  ( (tuple2!11753 (_1!5886 (_ BitVec 64)) (_2!5886 V!28537)) )
))
(declare-datatypes ((List!17621 0))(
  ( (Nil!17618) (Cons!17617 (h!18748 tuple2!11752) (t!24804 List!17621)) )
))
(declare-datatypes ((ListLongMap!10535 0))(
  ( (ListLongMap!10536 (toList!5283 List!17621)) )
))
(declare-fun lt!398729 () ListLongMap!10535)

(declare-fun lt!398725 () ListLongMap!10535)

(assert (=> b!881497 (= lt!398729 lt!398725)))

(declare-fun lt!398724 () ListLongMap!10535)

(declare-fun v!557 () V!28537)

(declare-fun +!2489 (ListLongMap!10535 tuple2!11752) ListLongMap!10535)

(assert (=> b!881497 (= lt!398725 (+!2489 lt!398724 (tuple2!11753 k!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!8369 0))(
  ( (ValueCellFull!8369 (v!11312 V!28537)) (EmptyCell!8369) )
))
(declare-datatypes ((array!51346 0))(
  ( (array!51347 (arr!24690 (Array (_ BitVec 32) ValueCell!8369)) (size!25131 (_ BitVec 32))) )
))
(declare-fun lt!398731 () array!51346)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!28537)

(declare-fun zeroValue!654 () V!28537)

(declare-fun getCurrentListMapNoExtraKeys!3243 (array!51344 array!51346 (_ BitVec 32) (_ BitVec 32) V!28537 V!28537 (_ BitVec 32) Int) ListLongMap!10535)

(assert (=> b!881497 (= lt!398729 (getCurrentListMapNoExtraKeys!3243 _keys!868 lt!398731 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun _values!688 () array!51346)

(assert (=> b!881497 (= lt!398724 (getCurrentListMapNoExtraKeys!3243 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30054 0))(
  ( (Unit!30055) )
))
(declare-fun lt!398728 () Unit!30054)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!718 (array!51344 array!51346 (_ BitVec 32) (_ BitVec 32) V!28537 V!28537 (_ BitVec 32) (_ BitVec 64) V!28537 (_ BitVec 32) Int) Unit!30054)

(assert (=> b!881497 (= lt!398728 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!718 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!881498 () Bool)

(declare-fun e!490609 () Bool)

(assert (=> b!881498 (= e!490609 (and e!490607 mapRes!28056))))

(declare-fun condMapEmpty!28056 () Bool)

(declare-fun mapDefault!28056 () ValueCell!8369)

