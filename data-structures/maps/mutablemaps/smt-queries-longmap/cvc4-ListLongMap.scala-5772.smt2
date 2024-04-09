; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74566 () Bool)

(assert start!74566)

(declare-fun b_free!15227 () Bool)

(declare-fun b_next!15227 () Bool)

(assert (=> start!74566 (= b_free!15227 (not b_next!15227))))

(declare-fun tp!53364 () Bool)

(declare-fun b_and!25121 () Bool)

(assert (=> start!74566 (= tp!53364 b_and!25121)))

(declare-fun b!877931 () Bool)

(declare-fun res!596535 () Bool)

(declare-fun e!488685 () Bool)

(assert (=> b!877931 (=> (not res!596535) (not e!488685))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!877931 (= res!596535 (validMask!0 mask!1196))))

(declare-fun b!877932 () Bool)

(declare-fun res!596540 () Bool)

(assert (=> b!877932 (=> (not res!596540) (not e!488685))))

(declare-datatypes ((array!51052 0))(
  ( (array!51053 (arr!24548 (Array (_ BitVec 32) (_ BitVec 64))) (size!24989 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51052)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51052 (_ BitVec 32)) Bool)

(assert (=> b!877932 (= res!596540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!877933 () Bool)

(declare-fun res!596538 () Bool)

(assert (=> b!877933 (=> (not res!596538) (not e!488685))))

(declare-datatypes ((List!17515 0))(
  ( (Nil!17512) (Cons!17511 (h!18642 (_ BitVec 64)) (t!24612 List!17515)) )
))
(declare-fun arrayNoDuplicates!0 (array!51052 (_ BitVec 32) List!17515) Bool)

(assert (=> b!877933 (= res!596538 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17512))))

(declare-fun b!877934 () Bool)

(declare-fun res!596537 () Bool)

(assert (=> b!877934 (=> (not res!596537) (not e!488685))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!28341 0))(
  ( (V!28342 (val!8783 Int)) )
))
(declare-datatypes ((ValueCell!8296 0))(
  ( (ValueCellFull!8296 (v!11219 V!28341)) (EmptyCell!8296) )
))
(declare-datatypes ((array!51054 0))(
  ( (array!51055 (arr!24549 (Array (_ BitVec 32) ValueCell!8296)) (size!24990 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51054)

(assert (=> b!877934 (= res!596537 (and (= (size!24990 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24989 _keys!868) (size!24990 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!877935 () Bool)

(declare-fun res!596539 () Bool)

(assert (=> b!877935 (=> (not res!596539) (not e!488685))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!877935 (= res!596539 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24989 _keys!868))))))

(declare-fun b!877936 () Bool)

(declare-fun e!488684 () Bool)

(declare-fun tp_is_empty!17471 () Bool)

(assert (=> b!877936 (= e!488684 tp_is_empty!17471)))

(declare-fun b!877937 () Bool)

(declare-fun res!596534 () Bool)

(assert (=> b!877937 (=> (not res!596534) (not e!488685))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!877937 (= res!596534 (and (= (select (arr!24548 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!877938 () Bool)

(declare-fun res!596536 () Bool)

(assert (=> b!877938 (=> (not res!596536) (not e!488685))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!877938 (= res!596536 (validKeyInArray!0 k!854))))

(declare-fun b!877939 () Bool)

(declare-fun e!488688 () Bool)

(declare-fun e!488687 () Bool)

(declare-fun mapRes!27822 () Bool)

(assert (=> b!877939 (= e!488688 (and e!488687 mapRes!27822))))

(declare-fun condMapEmpty!27822 () Bool)

(declare-fun mapDefault!27822 () ValueCell!8296)

