; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82010 () Bool)

(assert start!82010)

(declare-fun mapIsEmpty!33493 () Bool)

(declare-fun mapRes!33493 () Bool)

(assert (=> mapIsEmpty!33493 mapRes!33493))

(declare-fun b!956071 () Bool)

(declare-fun e!538715 () Bool)

(assert (=> b!956071 (= e!538715 false)))

(declare-fun lt!430054 () Bool)

(declare-datatypes ((array!58163 0))(
  ( (array!58164 (arr!27957 (Array (_ BitVec 32) (_ BitVec 64))) (size!28437 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58163)

(declare-datatypes ((List!19617 0))(
  ( (Nil!19614) (Cons!19613 (h!20775 (_ BitVec 64)) (t!27986 List!19617)) )
))
(declare-fun arrayNoDuplicates!0 (array!58163 (_ BitVec 32) List!19617) Bool)

(assert (=> b!956071 (= lt!430054 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19614))))

(declare-fun b!956072 () Bool)

(declare-fun e!538714 () Bool)

(declare-fun e!538716 () Bool)

(assert (=> b!956072 (= e!538714 (and e!538716 mapRes!33493))))

(declare-fun condMapEmpty!33493 () Bool)

(declare-datatypes ((V!33011 0))(
  ( (V!33012 (val!10561 Int)) )
))
(declare-datatypes ((ValueCell!10029 0))(
  ( (ValueCellFull!10029 (v!13116 V!33011)) (EmptyCell!10029) )
))
(declare-datatypes ((array!58165 0))(
  ( (array!58166 (arr!27958 (Array (_ BitVec 32) ValueCell!10029)) (size!28438 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58165)

(declare-fun mapDefault!33493 () ValueCell!10029)

(assert (=> b!956072 (= condMapEmpty!33493 (= (arr!27958 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!10029)) mapDefault!33493)))))

(declare-fun res!640306 () Bool)

(assert (=> start!82010 (=> (not res!640306) (not e!538715))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82010 (= res!640306 (validMask!0 mask!1823))))

(assert (=> start!82010 e!538715))

(assert (=> start!82010 true))

(declare-fun array_inv!21641 (array!58165) Bool)

(assert (=> start!82010 (and (array_inv!21641 _values!1197) e!538714)))

(declare-fun array_inv!21642 (array!58163) Bool)

(assert (=> start!82010 (array_inv!21642 _keys!1441)))

(declare-fun mapNonEmpty!33493 () Bool)

(declare-fun tp!64072 () Bool)

(declare-fun e!538713 () Bool)

(assert (=> mapNonEmpty!33493 (= mapRes!33493 (and tp!64072 e!538713))))

(declare-fun mapRest!33493 () (Array (_ BitVec 32) ValueCell!10029))

(declare-fun mapValue!33493 () ValueCell!10029)

(declare-fun mapKey!33493 () (_ BitVec 32))

(assert (=> mapNonEmpty!33493 (= (arr!27958 _values!1197) (store mapRest!33493 mapKey!33493 mapValue!33493))))

(declare-fun b!956073 () Bool)

(declare-fun tp_is_empty!21021 () Bool)

(assert (=> b!956073 (= e!538713 tp_is_empty!21021)))

(declare-fun b!956074 () Bool)

(declare-fun res!640305 () Bool)

(assert (=> b!956074 (=> (not res!640305) (not e!538715))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!956074 (= res!640305 (and (= (size!28438 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28437 _keys!1441) (size!28438 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!956075 () Bool)

(assert (=> b!956075 (= e!538716 tp_is_empty!21021)))

(declare-fun b!956076 () Bool)

(declare-fun res!640304 () Bool)

(assert (=> b!956076 (=> (not res!640304) (not e!538715))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58163 (_ BitVec 32)) Bool)

(assert (=> b!956076 (= res!640304 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(assert (= (and start!82010 res!640306) b!956074))

(assert (= (and b!956074 res!640305) b!956076))

(assert (= (and b!956076 res!640304) b!956071))

(assert (= (and b!956072 condMapEmpty!33493) mapIsEmpty!33493))

(assert (= (and b!956072 (not condMapEmpty!33493)) mapNonEmpty!33493))

(get-info :version)

(assert (= (and mapNonEmpty!33493 ((_ is ValueCellFull!10029) mapValue!33493)) b!956073))

(assert (= (and b!956072 ((_ is ValueCellFull!10029) mapDefault!33493)) b!956075))

(assert (= start!82010 b!956072))

(declare-fun m!887529 () Bool)

(assert (=> b!956071 m!887529))

(declare-fun m!887531 () Bool)

(assert (=> start!82010 m!887531))

(declare-fun m!887533 () Bool)

(assert (=> start!82010 m!887533))

(declare-fun m!887535 () Bool)

(assert (=> start!82010 m!887535))

(declare-fun m!887537 () Bool)

(assert (=> mapNonEmpty!33493 m!887537))

(declare-fun m!887539 () Bool)

(assert (=> b!956076 m!887539))

(check-sat (not start!82010) (not mapNonEmpty!33493) (not b!956076) tp_is_empty!21021 (not b!956071))
(check-sat)
