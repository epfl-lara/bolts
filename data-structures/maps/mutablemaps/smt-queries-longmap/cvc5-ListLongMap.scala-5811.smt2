; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74966 () Bool)

(assert start!74966)

(declare-fun b_free!15457 () Bool)

(declare-fun b_next!15457 () Bool)

(assert (=> start!74966 (= b_free!15457 (not b_next!15457))))

(declare-fun tp!54074 () Bool)

(declare-fun b_and!25631 () Bool)

(assert (=> start!74966 (= tp!54074 b_and!25631)))

(declare-fun b!883783 () Bool)

(declare-fun e!491868 () Bool)

(declare-fun tp_is_empty!17701 () Bool)

(assert (=> b!883783 (= e!491868 tp_is_empty!17701)))

(declare-fun b!883784 () Bool)

(declare-fun res!600529 () Bool)

(declare-fun e!491866 () Bool)

(assert (=> b!883784 (=> (not res!600529) (not e!491866))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!51512 0))(
  ( (array!51513 (arr!24771 (Array (_ BitVec 32) (_ BitVec 64))) (size!25212 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51512)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!883784 (= res!600529 (and (= (select (arr!24771 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!883785 () Bool)

(declare-fun res!600525 () Bool)

(assert (=> b!883785 (=> (not res!600525) (not e!491866))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!883785 (= res!600525 (validMask!0 mask!1196))))

(declare-fun res!600521 () Bool)

(assert (=> start!74966 (=> (not res!600521) (not e!491866))))

(assert (=> start!74966 (= res!600521 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25212 _keys!868))))))

(assert (=> start!74966 e!491866))

(assert (=> start!74966 tp_is_empty!17701))

(assert (=> start!74966 true))

(assert (=> start!74966 tp!54074))

(declare-fun array_inv!19480 (array!51512) Bool)

(assert (=> start!74966 (array_inv!19480 _keys!868)))

(declare-datatypes ((V!28649 0))(
  ( (V!28650 (val!8898 Int)) )
))
(declare-datatypes ((ValueCell!8411 0))(
  ( (ValueCellFull!8411 (v!11363 V!28649)) (EmptyCell!8411) )
))
(declare-datatypes ((array!51514 0))(
  ( (array!51515 (arr!24772 (Array (_ BitVec 32) ValueCell!8411)) (size!25213 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51514)

(declare-fun e!491865 () Bool)

(declare-fun array_inv!19481 (array!51514) Bool)

(assert (=> start!74966 (and (array_inv!19481 _values!688) e!491865)))

(declare-fun b!883786 () Bool)

(declare-fun e!491871 () Bool)

(assert (=> b!883786 (= e!491866 e!491871)))

(declare-fun res!600527 () Bool)

(assert (=> b!883786 (=> (not res!600527) (not e!491871))))

(assert (=> b!883786 (= res!600527 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28649)

(declare-fun zeroValue!654 () V!28649)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!11824 0))(
  ( (tuple2!11825 (_1!5922 (_ BitVec 64)) (_2!5922 V!28649)) )
))
(declare-datatypes ((List!17689 0))(
  ( (Nil!17686) (Cons!17685 (h!18816 tuple2!11824) (t!24956 List!17689)) )
))
(declare-datatypes ((ListLongMap!10607 0))(
  ( (ListLongMap!10608 (toList!5319 List!17689)) )
))
(declare-fun lt!400151 () ListLongMap!10607)

(declare-fun lt!400153 () array!51514)

(declare-fun getCurrentListMapNoExtraKeys!3274 (array!51512 array!51514 (_ BitVec 32) (_ BitVec 32) V!28649 V!28649 (_ BitVec 32) Int) ListLongMap!10607)

(assert (=> b!883786 (= lt!400151 (getCurrentListMapNoExtraKeys!3274 _keys!868 lt!400153 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28649)

(assert (=> b!883786 (= lt!400153 (array!51515 (store (arr!24772 _values!688) i!612 (ValueCellFull!8411 v!557)) (size!25213 _values!688)))))

(declare-fun lt!400157 () ListLongMap!10607)

(assert (=> b!883786 (= lt!400157 (getCurrentListMapNoExtraKeys!3274 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!883787 () Bool)

(declare-fun res!600523 () Bool)

(assert (=> b!883787 (=> (not res!600523) (not e!491866))))

(declare-datatypes ((List!17690 0))(
  ( (Nil!17687) (Cons!17686 (h!18817 (_ BitVec 64)) (t!24957 List!17690)) )
))
(declare-fun arrayNoDuplicates!0 (array!51512 (_ BitVec 32) List!17690) Bool)

(assert (=> b!883787 (= res!600523 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17687))))

(declare-fun b!883788 () Bool)

(declare-fun res!600520 () Bool)

(assert (=> b!883788 (=> (not res!600520) (not e!491866))))

(assert (=> b!883788 (= res!600520 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25212 _keys!868))))))

(declare-fun b!883789 () Bool)

(declare-fun res!600519 () Bool)

(assert (=> b!883789 (=> (not res!600519) (not e!491866))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!883789 (= res!600519 (validKeyInArray!0 k!854))))

(declare-fun b!883790 () Bool)

(declare-fun res!600524 () Bool)

(assert (=> b!883790 (=> (not res!600524) (not e!491866))))

(assert (=> b!883790 (= res!600524 (and (= (size!25213 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25212 _keys!868) (size!25213 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!883791 () Bool)

(declare-fun e!491867 () Bool)

(declare-fun mapRes!28188 () Bool)

(assert (=> b!883791 (= e!491865 (and e!491867 mapRes!28188))))

(declare-fun condMapEmpty!28188 () Bool)

(declare-fun mapDefault!28188 () ValueCell!8411)

