; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43294 () Bool)

(assert start!43294)

(declare-fun b_free!12153 () Bool)

(declare-fun b_next!12153 () Bool)

(assert (=> start!43294 (= b_free!12153 (not b_next!12153))))

(declare-fun tp!42730 () Bool)

(declare-fun b_and!20923 () Bool)

(assert (=> start!43294 (= tp!42730 b_and!20923)))

(declare-fun mapIsEmpty!22195 () Bool)

(declare-fun mapRes!22195 () Bool)

(assert (=> mapIsEmpty!22195 mapRes!22195))

(declare-fun res!286023 () Bool)

(declare-fun e!282058 () Bool)

(assert (=> start!43294 (=> (not res!286023) (not e!282058))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43294 (= res!286023 (validMask!0 mask!2352))))

(assert (=> start!43294 e!282058))

(assert (=> start!43294 true))

(declare-fun tp_is_empty!13665 () Bool)

(assert (=> start!43294 tp_is_empty!13665))

(declare-datatypes ((V!19291 0))(
  ( (V!19292 (val!6880 Int)) )
))
(declare-datatypes ((ValueCell!6471 0))(
  ( (ValueCellFull!6471 (v!9165 V!19291)) (EmptyCell!6471) )
))
(declare-datatypes ((array!30967 0))(
  ( (array!30968 (arr!14887 (Array (_ BitVec 32) ValueCell!6471)) (size!15245 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30967)

(declare-fun e!282057 () Bool)

(declare-fun array_inv!10722 (array!30967) Bool)

(assert (=> start!43294 (and (array_inv!10722 _values!1516) e!282057)))

(assert (=> start!43294 tp!42730))

(declare-datatypes ((array!30969 0))(
  ( (array!30970 (arr!14888 (Array (_ BitVec 32) (_ BitVec 64))) (size!15246 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30969)

(declare-fun array_inv!10723 (array!30969) Bool)

(assert (=> start!43294 (array_inv!10723 _keys!1874)))

(declare-fun b!479378 () Bool)

(declare-fun e!282056 () Bool)

(assert (=> b!479378 (= e!282056 tp_is_empty!13665)))

(declare-fun b!479379 () Bool)

(declare-fun res!286020 () Bool)

(assert (=> b!479379 (=> (not res!286020) (not e!282058))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30969 (_ BitVec 32)) Bool)

(assert (=> b!479379 (= res!286020 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun mapNonEmpty!22195 () Bool)

(declare-fun tp!42729 () Bool)

(declare-fun e!282055 () Bool)

(assert (=> mapNonEmpty!22195 (= mapRes!22195 (and tp!42729 e!282055))))

(declare-fun mapKey!22195 () (_ BitVec 32))

(declare-fun mapValue!22195 () ValueCell!6471)

(declare-fun mapRest!22195 () (Array (_ BitVec 32) ValueCell!6471))

(assert (=> mapNonEmpty!22195 (= (arr!14887 _values!1516) (store mapRest!22195 mapKey!22195 mapValue!22195))))

(declare-fun b!479380 () Bool)

(declare-fun res!286022 () Bool)

(assert (=> b!479380 (=> (not res!286022) (not e!282058))))

(declare-datatypes ((List!9136 0))(
  ( (Nil!9133) (Cons!9132 (h!9988 (_ BitVec 64)) (t!15350 List!9136)) )
))
(declare-fun arrayNoDuplicates!0 (array!30969 (_ BitVec 32) List!9136) Bool)

(assert (=> b!479380 (= res!286022 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9133))))

(declare-fun b!479381 () Bool)

(assert (=> b!479381 (= e!282055 tp_is_empty!13665)))

(declare-fun b!479382 () Bool)

(assert (=> b!479382 (= e!282058 false)))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun minValue!1458 () V!19291)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun defaultEntry!1519 () Int)

(declare-fun zeroValue!1458 () V!19291)

(declare-fun lt!217844 () Bool)

(declare-datatypes ((tuple2!9024 0))(
  ( (tuple2!9025 (_1!4522 (_ BitVec 64)) (_2!4522 V!19291)) )
))
(declare-datatypes ((List!9137 0))(
  ( (Nil!9134) (Cons!9133 (h!9989 tuple2!9024) (t!15351 List!9137)) )
))
(declare-datatypes ((ListLongMap!7951 0))(
  ( (ListLongMap!7952 (toList!3991 List!9137)) )
))
(declare-fun contains!2598 (ListLongMap!7951 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2283 (array!30969 array!30967 (_ BitVec 32) (_ BitVec 32) V!19291 V!19291 (_ BitVec 32) Int) ListLongMap!7951)

(assert (=> b!479382 (= lt!217844 (contains!2598 (getCurrentListMap!2283 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun b!479383 () Bool)

(assert (=> b!479383 (= e!282057 (and e!282056 mapRes!22195))))

(declare-fun condMapEmpty!22195 () Bool)

(declare-fun mapDefault!22195 () ValueCell!6471)

(assert (=> b!479383 (= condMapEmpty!22195 (= (arr!14887 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6471)) mapDefault!22195)))))

(declare-fun b!479384 () Bool)

(declare-fun res!286021 () Bool)

(assert (=> b!479384 (=> (not res!286021) (not e!282058))))

(assert (=> b!479384 (= res!286021 (and (= (size!15245 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15246 _keys!1874) (size!15245 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(assert (= (and start!43294 res!286023) b!479384))

(assert (= (and b!479384 res!286021) b!479379))

(assert (= (and b!479379 res!286020) b!479380))

(assert (= (and b!479380 res!286022) b!479382))

(assert (= (and b!479383 condMapEmpty!22195) mapIsEmpty!22195))

(assert (= (and b!479383 (not condMapEmpty!22195)) mapNonEmpty!22195))

(get-info :version)

(assert (= (and mapNonEmpty!22195 ((_ is ValueCellFull!6471) mapValue!22195)) b!479381))

(assert (= (and b!479383 ((_ is ValueCellFull!6471) mapDefault!22195)) b!479378))

(assert (= start!43294 b!479383))

(declare-fun m!461327 () Bool)

(assert (=> b!479382 m!461327))

(assert (=> b!479382 m!461327))

(declare-fun m!461329 () Bool)

(assert (=> b!479382 m!461329))

(declare-fun m!461331 () Bool)

(assert (=> mapNonEmpty!22195 m!461331))

(declare-fun m!461333 () Bool)

(assert (=> start!43294 m!461333))

(declare-fun m!461335 () Bool)

(assert (=> start!43294 m!461335))

(declare-fun m!461337 () Bool)

(assert (=> start!43294 m!461337))

(declare-fun m!461339 () Bool)

(assert (=> b!479380 m!461339))

(declare-fun m!461341 () Bool)

(assert (=> b!479379 m!461341))

(check-sat b_and!20923 (not start!43294) (not mapNonEmpty!22195) (not b!479382) (not b!479379) (not b!479380) tp_is_empty!13665 (not b_next!12153))
(check-sat b_and!20923 (not b_next!12153))
