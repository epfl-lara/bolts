; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72732 () Bool)

(assert start!72732)

(declare-fun b!843707 () Bool)

(declare-fun e!470848 () Bool)

(assert (=> b!843707 (= e!470848 false)))

(declare-fun lt!381144 () Bool)

(declare-datatypes ((array!47736 0))(
  ( (array!47737 (arr!22895 (Array (_ BitVec 32) (_ BitVec 64))) (size!23336 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47736)

(declare-datatypes ((List!16320 0))(
  ( (Nil!16317) (Cons!16316 (h!17447 (_ BitVec 64)) (t!22699 List!16320)) )
))
(declare-fun arrayNoDuplicates!0 (array!47736 (_ BitVec 32) List!16320) Bool)

(assert (=> b!843707 (= lt!381144 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16317))))

(declare-fun b!843708 () Bool)

(declare-fun res!573414 () Bool)

(assert (=> b!843708 (=> (not res!573414) (not e!470848))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47736 (_ BitVec 32)) Bool)

(assert (=> b!843708 (= res!573414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!843709 () Bool)

(declare-fun e!470847 () Bool)

(declare-fun tp_is_empty!15755 () Bool)

(assert (=> b!843709 (= e!470847 tp_is_empty!15755)))

(declare-fun b!843710 () Bool)

(declare-fun e!470850 () Bool)

(declare-fun mapRes!25232 () Bool)

(assert (=> b!843710 (= e!470850 (and e!470847 mapRes!25232))))

(declare-fun condMapEmpty!25232 () Bool)

(declare-datatypes ((V!26053 0))(
  ( (V!26054 (val!7925 Int)) )
))
(declare-datatypes ((ValueCell!7438 0))(
  ( (ValueCellFull!7438 (v!10346 V!26053)) (EmptyCell!7438) )
))
(declare-datatypes ((array!47738 0))(
  ( (array!47739 (arr!22896 (Array (_ BitVec 32) ValueCell!7438)) (size!23337 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47738)

(declare-fun mapDefault!25232 () ValueCell!7438)

