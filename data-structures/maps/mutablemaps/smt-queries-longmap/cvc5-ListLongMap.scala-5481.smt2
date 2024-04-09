; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72698 () Bool)

(assert start!72698)

(declare-fun mapIsEmpty!25181 () Bool)

(declare-fun mapRes!25181 () Bool)

(assert (=> mapIsEmpty!25181 mapRes!25181))

(declare-fun b!843350 () Bool)

(declare-fun e!470595 () Bool)

(declare-fun tp_is_empty!15721 () Bool)

(assert (=> b!843350 (= e!470595 tp_is_empty!15721)))

(declare-fun res!573208 () Bool)

(declare-fun e!470593 () Bool)

(assert (=> start!72698 (=> (not res!573208) (not e!470593))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47674 0))(
  ( (array!47675 (arr!22864 (Array (_ BitVec 32) (_ BitVec 64))) (size!23305 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47674)

(assert (=> start!72698 (= res!573208 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23305 _keys!868))))))

(assert (=> start!72698 e!470593))

(assert (=> start!72698 true))

(declare-fun array_inv!18174 (array!47674) Bool)

(assert (=> start!72698 (array_inv!18174 _keys!868)))

(declare-datatypes ((V!26009 0))(
  ( (V!26010 (val!7908 Int)) )
))
(declare-datatypes ((ValueCell!7421 0))(
  ( (ValueCellFull!7421 (v!10329 V!26009)) (EmptyCell!7421) )
))
(declare-datatypes ((array!47676 0))(
  ( (array!47677 (arr!22865 (Array (_ BitVec 32) ValueCell!7421)) (size!23306 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47676)

(declare-fun e!470591 () Bool)

(declare-fun array_inv!18175 (array!47676) Bool)

(assert (=> start!72698 (and (array_inv!18175 _values!688) e!470591)))

(declare-fun mapNonEmpty!25181 () Bool)

(declare-fun tp!48500 () Bool)

(assert (=> mapNonEmpty!25181 (= mapRes!25181 (and tp!48500 e!470595))))

(declare-fun mapRest!25181 () (Array (_ BitVec 32) ValueCell!7421))

(declare-fun mapKey!25181 () (_ BitVec 32))

(declare-fun mapValue!25181 () ValueCell!7421)

(assert (=> mapNonEmpty!25181 (= (arr!22865 _values!688) (store mapRest!25181 mapKey!25181 mapValue!25181))))

(declare-fun b!843351 () Bool)

(assert (=> b!843351 (= e!470593 false)))

(declare-fun lt!381093 () Bool)

(declare-datatypes ((List!16306 0))(
  ( (Nil!16303) (Cons!16302 (h!17433 (_ BitVec 64)) (t!22685 List!16306)) )
))
(declare-fun arrayNoDuplicates!0 (array!47674 (_ BitVec 32) List!16306) Bool)

(assert (=> b!843351 (= lt!381093 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16303))))

(declare-fun b!843352 () Bool)

(declare-fun res!573209 () Bool)

(assert (=> b!843352 (=> (not res!573209) (not e!470593))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!843352 (= res!573209 (and (= (size!23306 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23305 _keys!868) (size!23306 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!843353 () Bool)

(declare-fun res!573207 () Bool)

(assert (=> b!843353 (=> (not res!573207) (not e!470593))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843353 (= res!573207 (validMask!0 mask!1196))))

(declare-fun b!843354 () Bool)

(declare-fun res!573210 () Bool)

(assert (=> b!843354 (=> (not res!573210) (not e!470593))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47674 (_ BitVec 32)) Bool)

(assert (=> b!843354 (= res!573210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!843355 () Bool)

(declare-fun e!470592 () Bool)

(assert (=> b!843355 (= e!470592 tp_is_empty!15721)))

(declare-fun b!843356 () Bool)

(assert (=> b!843356 (= e!470591 (and e!470592 mapRes!25181))))

(declare-fun condMapEmpty!25181 () Bool)

(declare-fun mapDefault!25181 () ValueCell!7421)

