; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95450 () Bool)

(assert start!95450)

(declare-fun b!1077576 () Bool)

(declare-fun res!718095 () Bool)

(declare-fun e!616197 () Bool)

(assert (=> b!1077576 (=> (not res!718095) (not e!616197))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1077576 (= res!718095 (validKeyInArray!0 k0!904))))

(declare-fun mapNonEmpty!40933 () Bool)

(declare-fun mapRes!40933 () Bool)

(declare-fun tp!78396 () Bool)

(declare-fun e!616200 () Bool)

(assert (=> mapNonEmpty!40933 (= mapRes!40933 (and tp!78396 e!616200))))

(declare-datatypes ((V!39963 0))(
  ( (V!39964 (val!13120 Int)) )
))
(declare-datatypes ((ValueCell!12354 0))(
  ( (ValueCellFull!12354 (v!15741 V!39963)) (EmptyCell!12354) )
))
(declare-fun mapValue!40933 () ValueCell!12354)

(declare-datatypes ((array!69164 0))(
  ( (array!69165 (arr!33256 (Array (_ BitVec 32) ValueCell!12354)) (size!33793 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69164)

(declare-fun mapKey!40933 () (_ BitVec 32))

(declare-fun mapRest!40933 () (Array (_ BitVec 32) ValueCell!12354))

(assert (=> mapNonEmpty!40933 (= (arr!33256 _values!874) (store mapRest!40933 mapKey!40933 mapValue!40933))))

(declare-fun b!1077577 () Bool)

(declare-fun tp_is_empty!26127 () Bool)

(assert (=> b!1077577 (= e!616200 tp_is_empty!26127)))

(declare-fun b!1077578 () Bool)

(declare-fun res!718097 () Bool)

(assert (=> b!1077578 (=> (not res!718097) (not e!616197))))

(declare-datatypes ((array!69166 0))(
  ( (array!69167 (arr!33257 (Array (_ BitVec 32) (_ BitVec 64))) (size!33794 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69166)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69166 (_ BitVec 32)) Bool)

(assert (=> b!1077578 (= res!718097 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!40933 () Bool)

(assert (=> mapIsEmpty!40933 mapRes!40933))

(declare-fun b!1077580 () Bool)

(declare-fun res!718094 () Bool)

(assert (=> b!1077580 (=> (not res!718094) (not e!616197))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1077580 (= res!718094 (and (= (size!33793 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33794 _keys!1070) (size!33793 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1077581 () Bool)

(declare-fun e!616199 () Bool)

(declare-fun e!616201 () Bool)

(assert (=> b!1077581 (= e!616199 (and e!616201 mapRes!40933))))

(declare-fun condMapEmpty!40933 () Bool)

(declare-fun mapDefault!40933 () ValueCell!12354)

(assert (=> b!1077581 (= condMapEmpty!40933 (= (arr!33256 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12354)) mapDefault!40933)))))

(declare-fun b!1077582 () Bool)

(assert (=> b!1077582 (= e!616201 tp_is_empty!26127)))

(declare-fun b!1077583 () Bool)

(declare-fun res!718096 () Bool)

(assert (=> b!1077583 (=> (not res!718096) (not e!616197))))

(declare-datatypes ((List!23338 0))(
  ( (Nil!23335) (Cons!23334 (h!24543 (_ BitVec 64)) (t!32704 List!23338)) )
))
(declare-fun arrayNoDuplicates!0 (array!69166 (_ BitVec 32) List!23338) Bool)

(assert (=> b!1077583 (= res!718096 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23335))))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun b!1077584 () Bool)

(assert (=> b!1077584 (= e!616197 (and (= (select (arr!33257 _keys!1070) i!650) k0!904) (= (size!33794 _keys!1070) (bvadd #b00000000000000000000000000000001 mask!1414)) (bvsgt #b00000000000000000000000000000000 (size!33794 _keys!1070))))))

(declare-fun b!1077579 () Bool)

(declare-fun res!718099 () Bool)

(assert (=> b!1077579 (=> (not res!718099) (not e!616197))))

(assert (=> b!1077579 (= res!718099 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33794 _keys!1070))))))

(declare-fun res!718098 () Bool)

(assert (=> start!95450 (=> (not res!718098) (not e!616197))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95450 (= res!718098 (validMask!0 mask!1414))))

(assert (=> start!95450 e!616197))

(assert (=> start!95450 true))

(declare-fun array_inv!25556 (array!69166) Bool)

(assert (=> start!95450 (array_inv!25556 _keys!1070)))

(declare-fun array_inv!25557 (array!69164) Bool)

(assert (=> start!95450 (and (array_inv!25557 _values!874) e!616199)))

(assert (= (and start!95450 res!718098) b!1077580))

(assert (= (and b!1077580 res!718094) b!1077578))

(assert (= (and b!1077578 res!718097) b!1077583))

(assert (= (and b!1077583 res!718096) b!1077579))

(assert (= (and b!1077579 res!718099) b!1077576))

(assert (= (and b!1077576 res!718095) b!1077584))

(assert (= (and b!1077581 condMapEmpty!40933) mapIsEmpty!40933))

(assert (= (and b!1077581 (not condMapEmpty!40933)) mapNonEmpty!40933))

(get-info :version)

(assert (= (and mapNonEmpty!40933 ((_ is ValueCellFull!12354) mapValue!40933)) b!1077577))

(assert (= (and b!1077581 ((_ is ValueCellFull!12354) mapDefault!40933)) b!1077582))

(assert (= start!95450 b!1077581))

(declare-fun m!996497 () Bool)

(assert (=> mapNonEmpty!40933 m!996497))

(declare-fun m!996499 () Bool)

(assert (=> b!1077584 m!996499))

(declare-fun m!996501 () Bool)

(assert (=> start!95450 m!996501))

(declare-fun m!996503 () Bool)

(assert (=> start!95450 m!996503))

(declare-fun m!996505 () Bool)

(assert (=> start!95450 m!996505))

(declare-fun m!996507 () Bool)

(assert (=> b!1077576 m!996507))

(declare-fun m!996509 () Bool)

(assert (=> b!1077583 m!996509))

(declare-fun m!996511 () Bool)

(assert (=> b!1077578 m!996511))

(check-sat (not b!1077578) (not b!1077583) (not start!95450) (not b!1077576) tp_is_empty!26127 (not mapNonEmpty!40933))
(check-sat)
