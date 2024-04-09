; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72618 () Bool)

(assert start!72618)

(declare-fun b!842510 () Bool)

(declare-fun e!469993 () Bool)

(assert (=> b!842510 (= e!469993 false)))

(declare-fun lt!380973 () Bool)

(declare-datatypes ((array!47524 0))(
  ( (array!47525 (arr!22789 (Array (_ BitVec 32) (_ BitVec 64))) (size!23230 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47524)

(declare-datatypes ((List!16279 0))(
  ( (Nil!16276) (Cons!16275 (h!17406 (_ BitVec 64)) (t!22658 List!16279)) )
))
(declare-fun arrayNoDuplicates!0 (array!47524 (_ BitVec 32) List!16279) Bool)

(assert (=> b!842510 (= lt!380973 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16276))))

(declare-fun res!572729 () Bool)

(assert (=> start!72618 (=> (not res!572729) (not e!469993))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72618 (= res!572729 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23230 _keys!868))))))

(assert (=> start!72618 e!469993))

(assert (=> start!72618 true))

(declare-fun array_inv!18116 (array!47524) Bool)

(assert (=> start!72618 (array_inv!18116 _keys!868)))

(declare-datatypes ((V!25901 0))(
  ( (V!25902 (val!7868 Int)) )
))
(declare-datatypes ((ValueCell!7381 0))(
  ( (ValueCellFull!7381 (v!10289 V!25901)) (EmptyCell!7381) )
))
(declare-datatypes ((array!47526 0))(
  ( (array!47527 (arr!22790 (Array (_ BitVec 32) ValueCell!7381)) (size!23231 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47526)

(declare-fun e!469995 () Bool)

(declare-fun array_inv!18117 (array!47526) Bool)

(assert (=> start!72618 (and (array_inv!18117 _values!688) e!469995)))

(declare-fun b!842511 () Bool)

(declare-fun e!469994 () Bool)

(declare-fun tp_is_empty!15641 () Bool)

(assert (=> b!842511 (= e!469994 tp_is_empty!15641)))

(declare-fun b!842512 () Bool)

(declare-fun res!572728 () Bool)

(assert (=> b!842512 (=> (not res!572728) (not e!469993))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!842512 (= res!572728 (and (= (size!23231 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23230 _keys!868) (size!23231 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842513 () Bool)

(declare-fun res!572727 () Bool)

(assert (=> b!842513 (=> (not res!572727) (not e!469993))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842513 (= res!572727 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!25061 () Bool)

(declare-fun mapRes!25061 () Bool)

(declare-fun tp!48380 () Bool)

(declare-fun e!469992 () Bool)

(assert (=> mapNonEmpty!25061 (= mapRes!25061 (and tp!48380 e!469992))))

(declare-fun mapValue!25061 () ValueCell!7381)

(declare-fun mapRest!25061 () (Array (_ BitVec 32) ValueCell!7381))

(declare-fun mapKey!25061 () (_ BitVec 32))

(assert (=> mapNonEmpty!25061 (= (arr!22790 _values!688) (store mapRest!25061 mapKey!25061 mapValue!25061))))

(declare-fun b!842514 () Bool)

(assert (=> b!842514 (= e!469995 (and e!469994 mapRes!25061))))

(declare-fun condMapEmpty!25061 () Bool)

(declare-fun mapDefault!25061 () ValueCell!7381)

