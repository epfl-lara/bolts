; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73314 () Bool)

(assert start!73314)

(declare-fun b_free!14201 () Bool)

(declare-fun b_next!14201 () Bool)

(assert (=> start!73314 (= b_free!14201 (not b_next!14201))))

(declare-fun tp!50107 () Bool)

(declare-fun b_and!23575 () Bool)

(assert (=> start!73314 (= tp!50107 b_and!23575)))

(declare-fun b!854692 () Bool)

(declare-fun res!580542 () Bool)

(declare-fun e!476601 () Bool)

(assert (=> b!854692 (=> (not res!580542) (not e!476601))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48854 0))(
  ( (array!48855 (arr!23454 (Array (_ BitVec 32) (_ BitVec 64))) (size!23895 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48854)

(assert (=> b!854692 (= res!580542 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23895 _keys!868))))))

(declare-fun b!854694 () Bool)

(declare-fun res!580536 () Bool)

(assert (=> b!854694 (=> (not res!580536) (not e!476601))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!854694 (= res!580536 (validMask!0 mask!1196))))

(declare-fun b!854695 () Bool)

(declare-fun res!580539 () Bool)

(assert (=> b!854695 (=> (not res!580539) (not e!476601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48854 (_ BitVec 32)) Bool)

(assert (=> b!854695 (= res!580539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!854696 () Bool)

(declare-fun e!476597 () Bool)

(declare-fun tp_is_empty!16337 () Bool)

(assert (=> b!854696 (= e!476597 tp_is_empty!16337)))

(declare-fun b!854697 () Bool)

(declare-fun res!580538 () Bool)

(assert (=> b!854697 (=> (not res!580538) (not e!476601))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!854697 (= res!580538 (validKeyInArray!0 k!854))))

(declare-fun b!854698 () Bool)

(declare-fun res!580535 () Bool)

(assert (=> b!854698 (=> (not res!580535) (not e!476601))))

(declare-datatypes ((List!16692 0))(
  ( (Nil!16689) (Cons!16688 (h!17819 (_ BitVec 64)) (t!23341 List!16692)) )
))
(declare-fun arrayNoDuplicates!0 (array!48854 (_ BitVec 32) List!16692) Bool)

(assert (=> b!854698 (= res!580535 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16689))))

(declare-fun res!580540 () Bool)

(assert (=> start!73314 (=> (not res!580540) (not e!476601))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73314 (= res!580540 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23895 _keys!868))))))

(assert (=> start!73314 e!476601))

(assert (=> start!73314 tp_is_empty!16337))

(assert (=> start!73314 true))

(assert (=> start!73314 tp!50107))

(declare-fun array_inv!18570 (array!48854) Bool)

(assert (=> start!73314 (array_inv!18570 _keys!868)))

(declare-datatypes ((V!26829 0))(
  ( (V!26830 (val!8216 Int)) )
))
(declare-datatypes ((ValueCell!7729 0))(
  ( (ValueCellFull!7729 (v!10637 V!26829)) (EmptyCell!7729) )
))
(declare-datatypes ((array!48856 0))(
  ( (array!48857 (arr!23455 (Array (_ BitVec 32) ValueCell!7729)) (size!23896 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48856)

(declare-fun e!476599 () Bool)

(declare-fun array_inv!18571 (array!48856) Bool)

(assert (=> start!73314 (and (array_inv!18571 _values!688) e!476599)))

(declare-fun b!854693 () Bool)

(declare-fun mapRes!26105 () Bool)

(assert (=> b!854693 (= e!476599 (and e!476597 mapRes!26105))))

(declare-fun condMapEmpty!26105 () Bool)

(declare-fun mapDefault!26105 () ValueCell!7729)

