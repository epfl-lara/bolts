; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78552 () Bool)

(assert start!78552)

(declare-fun res!617206 () Bool)

(declare-fun e!513698 () Bool)

(assert (=> start!78552 (=> (not res!617206) (not e!513698))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78552 (= res!617206 (validMask!0 mask!1881))))

(assert (=> start!78552 e!513698))

(assert (=> start!78552 true))

(declare-datatypes ((V!30625 0))(
  ( (V!30626 (val!9673 Int)) )
))
(declare-datatypes ((ValueCell!9141 0))(
  ( (ValueCellFull!9141 (v!12191 V!30625)) (EmptyCell!9141) )
))
(declare-datatypes ((array!54496 0))(
  ( (array!54497 (arr!26189 (Array (_ BitVec 32) ValueCell!9141)) (size!26649 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54496)

(declare-fun e!513696 () Bool)

(declare-fun array_inv!20428 (array!54496) Bool)

(assert (=> start!78552 (and (array_inv!20428 _values!1231) e!513696)))

(declare-datatypes ((array!54498 0))(
  ( (array!54499 (arr!26190 (Array (_ BitVec 32) (_ BitVec 64))) (size!26650 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54498)

(declare-fun array_inv!20429 (array!54498) Bool)

(assert (=> start!78552 (array_inv!20429 _keys!1487)))

(declare-fun mapIsEmpty!30624 () Bool)

(declare-fun mapRes!30624 () Bool)

(assert (=> mapIsEmpty!30624 mapRes!30624))

(declare-fun b!915258 () Bool)

(declare-fun res!617207 () Bool)

(assert (=> b!915258 (=> (not res!617207) (not e!513698))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54498 (_ BitVec 32)) Bool)

(assert (=> b!915258 (= res!617207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!915259 () Bool)

(declare-fun e!513697 () Bool)

(declare-fun tp_is_empty!19245 () Bool)

(assert (=> b!915259 (= e!513697 tp_is_empty!19245)))

(declare-fun b!915260 () Bool)

(declare-fun res!617205 () Bool)

(assert (=> b!915260 (=> (not res!617205) (not e!513698))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!915260 (= res!617205 (and (= (size!26649 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26650 _keys!1487) (size!26649 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!30624 () Bool)

(declare-fun tp!58692 () Bool)

(declare-fun e!513695 () Bool)

(assert (=> mapNonEmpty!30624 (= mapRes!30624 (and tp!58692 e!513695))))

(declare-fun mapKey!30624 () (_ BitVec 32))

(declare-fun mapRest!30624 () (Array (_ BitVec 32) ValueCell!9141))

(declare-fun mapValue!30624 () ValueCell!9141)

(assert (=> mapNonEmpty!30624 (= (arr!26189 _values!1231) (store mapRest!30624 mapKey!30624 mapValue!30624))))

(declare-fun b!915261 () Bool)

(assert (=> b!915261 (= e!513695 tp_is_empty!19245)))

(declare-fun b!915262 () Bool)

(assert (=> b!915262 (= e!513698 false)))

(declare-fun lt!411612 () Bool)

(declare-datatypes ((List!18481 0))(
  ( (Nil!18478) (Cons!18477 (h!19623 (_ BitVec 64)) (t!26102 List!18481)) )
))
(declare-fun arrayNoDuplicates!0 (array!54498 (_ BitVec 32) List!18481) Bool)

(assert (=> b!915262 (= lt!411612 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18478))))

(declare-fun b!915263 () Bool)

(assert (=> b!915263 (= e!513696 (and e!513697 mapRes!30624))))

(declare-fun condMapEmpty!30624 () Bool)

(declare-fun mapDefault!30624 () ValueCell!9141)

(assert (=> b!915263 (= condMapEmpty!30624 (= (arr!26189 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9141)) mapDefault!30624)))))

(assert (= (and start!78552 res!617206) b!915260))

(assert (= (and b!915260 res!617205) b!915258))

(assert (= (and b!915258 res!617207) b!915262))

(assert (= (and b!915263 condMapEmpty!30624) mapIsEmpty!30624))

(assert (= (and b!915263 (not condMapEmpty!30624)) mapNonEmpty!30624))

(get-info :version)

(assert (= (and mapNonEmpty!30624 ((_ is ValueCellFull!9141) mapValue!30624)) b!915261))

(assert (= (and b!915263 ((_ is ValueCellFull!9141) mapDefault!30624)) b!915259))

(assert (= start!78552 b!915263))

(declare-fun m!849751 () Bool)

(assert (=> start!78552 m!849751))

(declare-fun m!849753 () Bool)

(assert (=> start!78552 m!849753))

(declare-fun m!849755 () Bool)

(assert (=> start!78552 m!849755))

(declare-fun m!849757 () Bool)

(assert (=> b!915258 m!849757))

(declare-fun m!849759 () Bool)

(assert (=> mapNonEmpty!30624 m!849759))

(declare-fun m!849761 () Bool)

(assert (=> b!915262 m!849761))

(check-sat (not mapNonEmpty!30624) (not start!78552) (not b!915258) tp_is_empty!19245 (not b!915262))
(check-sat)
