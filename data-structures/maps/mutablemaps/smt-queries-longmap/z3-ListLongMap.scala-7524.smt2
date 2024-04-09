; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95444 () Bool)

(assert start!95444)

(declare-fun b!1077508 () Bool)

(declare-fun res!718053 () Bool)

(declare-fun e!616155 () Bool)

(assert (=> b!1077508 (=> (not res!718053) (not e!616155))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69152 0))(
  ( (array!69153 (arr!33250 (Array (_ BitVec 32) (_ BitVec 64))) (size!33787 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69152)

(declare-datatypes ((V!39955 0))(
  ( (V!39956 (val!13117 Int)) )
))
(declare-datatypes ((ValueCell!12351 0))(
  ( (ValueCellFull!12351 (v!15738 V!39955)) (EmptyCell!12351) )
))
(declare-datatypes ((array!69154 0))(
  ( (array!69155 (arr!33251 (Array (_ BitVec 32) ValueCell!12351)) (size!33788 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69154)

(assert (=> b!1077508 (= res!718053 (and (= (size!33788 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33787 _keys!1070) (size!33788 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1077509 () Bool)

(declare-fun e!616156 () Bool)

(declare-fun e!616154 () Bool)

(declare-fun mapRes!40924 () Bool)

(assert (=> b!1077509 (= e!616156 (and e!616154 mapRes!40924))))

(declare-fun condMapEmpty!40924 () Bool)

(declare-fun mapDefault!40924 () ValueCell!12351)

(assert (=> b!1077509 (= condMapEmpty!40924 (= (arr!33251 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12351)) mapDefault!40924)))))

(declare-fun mapIsEmpty!40924 () Bool)

(assert (=> mapIsEmpty!40924 mapRes!40924))

(declare-fun mapNonEmpty!40924 () Bool)

(declare-fun tp!78387 () Bool)

(declare-fun e!616152 () Bool)

(assert (=> mapNonEmpty!40924 (= mapRes!40924 (and tp!78387 e!616152))))

(declare-fun mapValue!40924 () ValueCell!12351)

(declare-fun mapKey!40924 () (_ BitVec 32))

(declare-fun mapRest!40924 () (Array (_ BitVec 32) ValueCell!12351))

(assert (=> mapNonEmpty!40924 (= (arr!33251 _values!874) (store mapRest!40924 mapKey!40924 mapValue!40924))))

(declare-fun b!1077510 () Bool)

(declare-fun tp_is_empty!26121 () Bool)

(assert (=> b!1077510 (= e!616154 tp_is_empty!26121)))

(declare-fun res!718052 () Bool)

(assert (=> start!95444 (=> (not res!718052) (not e!616155))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95444 (= res!718052 (validMask!0 mask!1414))))

(assert (=> start!95444 e!616155))

(assert (=> start!95444 true))

(declare-fun array_inv!25550 (array!69154) Bool)

(assert (=> start!95444 (and (array_inv!25550 _values!874) e!616156)))

(declare-fun array_inv!25551 (array!69152) Bool)

(assert (=> start!95444 (array_inv!25551 _keys!1070)))

(declare-fun b!1077507 () Bool)

(assert (=> b!1077507 (= e!616152 tp_is_empty!26121)))

(declare-fun b!1077511 () Bool)

(declare-fun res!718054 () Bool)

(assert (=> b!1077511 (=> (not res!718054) (not e!616155))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69152 (_ BitVec 32)) Bool)

(assert (=> b!1077511 (= res!718054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1077512 () Bool)

(assert (=> b!1077512 (= e!616155 false)))

(declare-fun lt!478531 () Bool)

(declare-datatypes ((List!23336 0))(
  ( (Nil!23333) (Cons!23332 (h!24541 (_ BitVec 64)) (t!32702 List!23336)) )
))
(declare-fun arrayNoDuplicates!0 (array!69152 (_ BitVec 32) List!23336) Bool)

(assert (=> b!1077512 (= lt!478531 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23333))))

(assert (= (and start!95444 res!718052) b!1077508))

(assert (= (and b!1077508 res!718053) b!1077511))

(assert (= (and b!1077511 res!718054) b!1077512))

(assert (= (and b!1077509 condMapEmpty!40924) mapIsEmpty!40924))

(assert (= (and b!1077509 (not condMapEmpty!40924)) mapNonEmpty!40924))

(get-info :version)

(assert (= (and mapNonEmpty!40924 ((_ is ValueCellFull!12351) mapValue!40924)) b!1077507))

(assert (= (and b!1077509 ((_ is ValueCellFull!12351) mapDefault!40924)) b!1077510))

(assert (= start!95444 b!1077509))

(declare-fun m!996457 () Bool)

(assert (=> mapNonEmpty!40924 m!996457))

(declare-fun m!996459 () Bool)

(assert (=> start!95444 m!996459))

(declare-fun m!996461 () Bool)

(assert (=> start!95444 m!996461))

(declare-fun m!996463 () Bool)

(assert (=> start!95444 m!996463))

(declare-fun m!996465 () Bool)

(assert (=> b!1077511 m!996465))

(declare-fun m!996467 () Bool)

(assert (=> b!1077512 m!996467))

(check-sat (not b!1077511) (not b!1077512) (not start!95444) (not mapNonEmpty!40924) tp_is_empty!26121)
(check-sat)
