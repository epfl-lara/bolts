; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72372 () Bool)

(assert start!72372)

(declare-fun b!837983 () Bool)

(declare-fun e!467823 () Bool)

(assert (=> b!837983 (= e!467823 false)))

(declare-fun lt!380604 () Bool)

(declare-datatypes ((array!47044 0))(
  ( (array!47045 (arr!22549 (Array (_ BitVec 32) (_ BitVec 64))) (size!22990 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47044)

(declare-datatypes ((List!16101 0))(
  ( (Nil!16098) (Cons!16097 (h!17228 (_ BitVec 64)) (t!22480 List!16101)) )
))
(declare-fun arrayNoDuplicates!0 (array!47044 (_ BitVec 32) List!16101) Bool)

(assert (=> b!837983 (= lt!380604 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16098))))

(declare-fun b!837984 () Bool)

(declare-fun res!569955 () Bool)

(assert (=> b!837984 (=> (not res!569955) (not e!467823))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47044 (_ BitVec 32)) Bool)

(assert (=> b!837984 (= res!569955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!569956 () Bool)

(assert (=> start!72372 (=> (not res!569956) (not e!467823))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72372 (= res!569956 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22990 _keys!868))))))

(assert (=> start!72372 e!467823))

(assert (=> start!72372 true))

(declare-fun array_inv!17938 (array!47044) Bool)

(assert (=> start!72372 (array_inv!17938 _keys!868)))

(declare-datatypes ((V!25573 0))(
  ( (V!25574 (val!7745 Int)) )
))
(declare-datatypes ((ValueCell!7258 0))(
  ( (ValueCellFull!7258 (v!10166 V!25573)) (EmptyCell!7258) )
))
(declare-datatypes ((array!47046 0))(
  ( (array!47047 (arr!22550 (Array (_ BitVec 32) ValueCell!7258)) (size!22991 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47046)

(declare-fun e!467826 () Bool)

(declare-fun array_inv!17939 (array!47046) Bool)

(assert (=> start!72372 (and (array_inv!17939 _values!688) e!467826)))

(declare-fun b!837985 () Bool)

(declare-fun res!569957 () Bool)

(assert (=> b!837985 (=> (not res!569957) (not e!467823))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!837985 (= res!569957 (and (= (size!22991 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22990 _keys!868) (size!22991 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!837986 () Bool)

(declare-fun e!467824 () Bool)

(declare-fun mapRes!24692 () Bool)

(assert (=> b!837986 (= e!467826 (and e!467824 mapRes!24692))))

(declare-fun condMapEmpty!24692 () Bool)

(declare-fun mapDefault!24692 () ValueCell!7258)

