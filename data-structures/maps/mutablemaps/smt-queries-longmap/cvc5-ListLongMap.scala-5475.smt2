; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72662 () Bool)

(assert start!72662)

(declare-fun mapNonEmpty!25127 () Bool)

(declare-fun mapRes!25127 () Bool)

(declare-fun tp!48446 () Bool)

(declare-fun e!470321 () Bool)

(assert (=> mapNonEmpty!25127 (= mapRes!25127 (and tp!48446 e!470321))))

(declare-datatypes ((V!25961 0))(
  ( (V!25962 (val!7890 Int)) )
))
(declare-datatypes ((ValueCell!7403 0))(
  ( (ValueCellFull!7403 (v!10311 V!25961)) (EmptyCell!7403) )
))
(declare-fun mapValue!25127 () ValueCell!7403)

(declare-fun mapKey!25127 () (_ BitVec 32))

(declare-datatypes ((array!47608 0))(
  ( (array!47609 (arr!22831 (Array (_ BitVec 32) ValueCell!7403)) (size!23272 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47608)

(declare-fun mapRest!25127 () (Array (_ BitVec 32) ValueCell!7403))

(assert (=> mapNonEmpty!25127 (= (arr!22831 _values!688) (store mapRest!25127 mapKey!25127 mapValue!25127))))

(declare-fun res!572991 () Bool)

(declare-fun e!470322 () Bool)

(assert (=> start!72662 (=> (not res!572991) (not e!470322))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47610 0))(
  ( (array!47611 (arr!22832 (Array (_ BitVec 32) (_ BitVec 64))) (size!23273 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47610)

(assert (=> start!72662 (= res!572991 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23273 _keys!868))))))

(assert (=> start!72662 e!470322))

(assert (=> start!72662 true))

(declare-fun array_inv!18150 (array!47610) Bool)

(assert (=> start!72662 (array_inv!18150 _keys!868)))

(declare-fun e!470325 () Bool)

(declare-fun array_inv!18151 (array!47608) Bool)

(assert (=> start!72662 (and (array_inv!18151 _values!688) e!470325)))

(declare-fun b!842972 () Bool)

(declare-fun res!572993 () Bool)

(assert (=> b!842972 (=> (not res!572993) (not e!470322))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!842972 (= res!572993 (and (= (size!23272 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23273 _keys!868) (size!23272 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842973 () Bool)

(assert (=> b!842973 (= e!470322 false)))

(declare-fun lt!381039 () Bool)

(declare-datatypes ((List!16294 0))(
  ( (Nil!16291) (Cons!16290 (h!17421 (_ BitVec 64)) (t!22673 List!16294)) )
))
(declare-fun arrayNoDuplicates!0 (array!47610 (_ BitVec 32) List!16294) Bool)

(assert (=> b!842973 (= lt!381039 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16291))))

(declare-fun b!842974 () Bool)

(declare-fun e!470324 () Bool)

(declare-fun tp_is_empty!15685 () Bool)

(assert (=> b!842974 (= e!470324 tp_is_empty!15685)))

(declare-fun b!842975 () Bool)

(declare-fun res!572992 () Bool)

(assert (=> b!842975 (=> (not res!572992) (not e!470322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47610 (_ BitVec 32)) Bool)

(assert (=> b!842975 (= res!572992 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!842976 () Bool)

(declare-fun res!572994 () Bool)

(assert (=> b!842976 (=> (not res!572994) (not e!470322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842976 (= res!572994 (validMask!0 mask!1196))))

(declare-fun b!842977 () Bool)

(assert (=> b!842977 (= e!470325 (and e!470324 mapRes!25127))))

(declare-fun condMapEmpty!25127 () Bool)

(declare-fun mapDefault!25127 () ValueCell!7403)

