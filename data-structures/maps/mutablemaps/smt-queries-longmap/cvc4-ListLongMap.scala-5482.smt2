; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72708 () Bool)

(assert start!72708)

(declare-fun b!843455 () Bool)

(declare-fun res!573269 () Bool)

(declare-fun e!470670 () Bool)

(assert (=> b!843455 (=> (not res!573269) (not e!470670))))

(declare-datatypes ((array!47692 0))(
  ( (array!47693 (arr!22873 (Array (_ BitVec 32) (_ BitVec 64))) (size!23314 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47692)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47692 (_ BitVec 32)) Bool)

(assert (=> b!843455 (= res!573269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!25196 () Bool)

(declare-fun mapRes!25196 () Bool)

(assert (=> mapIsEmpty!25196 mapRes!25196))

(declare-fun b!843457 () Bool)

(declare-fun res!573268 () Bool)

(assert (=> b!843457 (=> (not res!573268) (not e!470670))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843457 (= res!573268 (validMask!0 mask!1196))))

(declare-fun b!843458 () Bool)

(declare-fun res!573270 () Bool)

(assert (=> b!843458 (=> (not res!573270) (not e!470670))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!26021 0))(
  ( (V!26022 (val!7913 Int)) )
))
(declare-datatypes ((ValueCell!7426 0))(
  ( (ValueCellFull!7426 (v!10334 V!26021)) (EmptyCell!7426) )
))
(declare-datatypes ((array!47694 0))(
  ( (array!47695 (arr!22874 (Array (_ BitVec 32) ValueCell!7426)) (size!23315 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47694)

(assert (=> b!843458 (= res!573270 (and (= (size!23315 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23314 _keys!868) (size!23315 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!25196 () Bool)

(declare-fun tp!48515 () Bool)

(declare-fun e!470667 () Bool)

(assert (=> mapNonEmpty!25196 (= mapRes!25196 (and tp!48515 e!470667))))

(declare-fun mapRest!25196 () (Array (_ BitVec 32) ValueCell!7426))

(declare-fun mapValue!25196 () ValueCell!7426)

(declare-fun mapKey!25196 () (_ BitVec 32))

(assert (=> mapNonEmpty!25196 (= (arr!22874 _values!688) (store mapRest!25196 mapKey!25196 mapValue!25196))))

(declare-fun b!843459 () Bool)

(declare-fun tp_is_empty!15731 () Bool)

(assert (=> b!843459 (= e!470667 tp_is_empty!15731)))

(declare-fun b!843456 () Bool)

(declare-fun e!470668 () Bool)

(assert (=> b!843456 (= e!470668 tp_is_empty!15731)))

(declare-fun res!573267 () Bool)

(assert (=> start!72708 (=> (not res!573267) (not e!470670))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72708 (= res!573267 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23314 _keys!868))))))

(assert (=> start!72708 e!470670))

(assert (=> start!72708 true))

(declare-fun array_inv!18180 (array!47692) Bool)

(assert (=> start!72708 (array_inv!18180 _keys!868)))

(declare-fun e!470669 () Bool)

(declare-fun array_inv!18181 (array!47694) Bool)

(assert (=> start!72708 (and (array_inv!18181 _values!688) e!470669)))

(declare-fun b!843460 () Bool)

(assert (=> b!843460 (= e!470670 false)))

(declare-fun lt!381108 () Bool)

(declare-datatypes ((List!16310 0))(
  ( (Nil!16307) (Cons!16306 (h!17437 (_ BitVec 64)) (t!22689 List!16310)) )
))
(declare-fun arrayNoDuplicates!0 (array!47692 (_ BitVec 32) List!16310) Bool)

(assert (=> b!843460 (= lt!381108 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16307))))

(declare-fun b!843461 () Bool)

(assert (=> b!843461 (= e!470669 (and e!470668 mapRes!25196))))

(declare-fun condMapEmpty!25196 () Bool)

(declare-fun mapDefault!25196 () ValueCell!7426)

