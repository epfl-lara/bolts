; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72636 () Bool)

(assert start!72636)

(declare-fun mapIsEmpty!25088 () Bool)

(declare-fun mapRes!25088 () Bool)

(assert (=> mapIsEmpty!25088 mapRes!25088))

(declare-fun b!842699 () Bool)

(declare-fun e!470128 () Bool)

(declare-fun tp_is_empty!15659 () Bool)

(assert (=> b!842699 (= e!470128 tp_is_empty!15659)))

(declare-fun b!842700 () Bool)

(declare-fun e!470130 () Bool)

(assert (=> b!842700 (= e!470130 false)))

(declare-fun lt!381000 () Bool)

(declare-datatypes ((array!47560 0))(
  ( (array!47561 (arr!22807 (Array (_ BitVec 32) (_ BitVec 64))) (size!23248 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47560)

(declare-datatypes ((List!16285 0))(
  ( (Nil!16282) (Cons!16281 (h!17412 (_ BitVec 64)) (t!22664 List!16285)) )
))
(declare-fun arrayNoDuplicates!0 (array!47560 (_ BitVec 32) List!16285) Bool)

(assert (=> b!842700 (= lt!381000 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16282))))

(declare-fun b!842701 () Bool)

(declare-fun res!572837 () Bool)

(assert (=> b!842701 (=> (not res!572837) (not e!470130))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842701 (= res!572837 (validMask!0 mask!1196))))

(declare-fun b!842702 () Bool)

(declare-fun res!572835 () Bool)

(assert (=> b!842702 (=> (not res!572835) (not e!470130))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47560 (_ BitVec 32)) Bool)

(assert (=> b!842702 (= res!572835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!572838 () Bool)

(assert (=> start!72636 (=> (not res!572838) (not e!470130))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72636 (= res!572838 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23248 _keys!868))))))

(assert (=> start!72636 e!470130))

(assert (=> start!72636 true))

(declare-fun array_inv!18130 (array!47560) Bool)

(assert (=> start!72636 (array_inv!18130 _keys!868)))

(declare-datatypes ((V!25925 0))(
  ( (V!25926 (val!7877 Int)) )
))
(declare-datatypes ((ValueCell!7390 0))(
  ( (ValueCellFull!7390 (v!10298 V!25925)) (EmptyCell!7390) )
))
(declare-datatypes ((array!47562 0))(
  ( (array!47563 (arr!22808 (Array (_ BitVec 32) ValueCell!7390)) (size!23249 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47562)

(declare-fun e!470129 () Bool)

(declare-fun array_inv!18131 (array!47562) Bool)

(assert (=> start!72636 (and (array_inv!18131 _values!688) e!470129)))

(declare-fun mapNonEmpty!25088 () Bool)

(declare-fun tp!48407 () Bool)

(assert (=> mapNonEmpty!25088 (= mapRes!25088 (and tp!48407 e!470128))))

(declare-fun mapRest!25088 () (Array (_ BitVec 32) ValueCell!7390))

(declare-fun mapKey!25088 () (_ BitVec 32))

(declare-fun mapValue!25088 () ValueCell!7390)

(assert (=> mapNonEmpty!25088 (= (arr!22808 _values!688) (store mapRest!25088 mapKey!25088 mapValue!25088))))

(declare-fun b!842703 () Bool)

(declare-fun res!572836 () Bool)

(assert (=> b!842703 (=> (not res!572836) (not e!470130))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!842703 (= res!572836 (and (= (size!23249 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23248 _keys!868) (size!23249 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842704 () Bool)

(declare-fun e!470126 () Bool)

(assert (=> b!842704 (= e!470129 (and e!470126 mapRes!25088))))

(declare-fun condMapEmpty!25088 () Bool)

(declare-fun mapDefault!25088 () ValueCell!7390)

