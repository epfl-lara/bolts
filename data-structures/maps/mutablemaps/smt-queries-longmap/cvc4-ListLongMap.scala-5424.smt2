; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72360 () Bool)

(assert start!72360)

(declare-fun b!837857 () Bool)

(declare-fun res!569884 () Bool)

(declare-fun e!467736 () Bool)

(assert (=> b!837857 (=> (not res!569884) (not e!467736))))

(declare-datatypes ((array!47024 0))(
  ( (array!47025 (arr!22539 (Array (_ BitVec 32) (_ BitVec 64))) (size!22980 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47024)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47024 (_ BitVec 32)) Bool)

(assert (=> b!837857 (= res!569884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!569886 () Bool)

(assert (=> start!72360 (=> (not res!569886) (not e!467736))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72360 (= res!569886 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22980 _keys!868))))))

(assert (=> start!72360 e!467736))

(assert (=> start!72360 true))

(declare-fun array_inv!17930 (array!47024) Bool)

(assert (=> start!72360 (array_inv!17930 _keys!868)))

(declare-datatypes ((V!25557 0))(
  ( (V!25558 (val!7739 Int)) )
))
(declare-datatypes ((ValueCell!7252 0))(
  ( (ValueCellFull!7252 (v!10160 V!25557)) (EmptyCell!7252) )
))
(declare-datatypes ((array!47026 0))(
  ( (array!47027 (arr!22540 (Array (_ BitVec 32) ValueCell!7252)) (size!22981 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47026)

(declare-fun e!467732 () Bool)

(declare-fun array_inv!17931 (array!47026) Bool)

(assert (=> start!72360 (and (array_inv!17931 _values!688) e!467732)))

(declare-fun b!837858 () Bool)

(declare-fun e!467734 () Bool)

(declare-fun mapRes!24674 () Bool)

(assert (=> b!837858 (= e!467732 (and e!467734 mapRes!24674))))

(declare-fun condMapEmpty!24674 () Bool)

(declare-fun mapDefault!24674 () ValueCell!7252)

