; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82022 () Bool)

(assert start!82022)

(declare-fun b!956180 () Bool)

(declare-fun e!538805 () Bool)

(assert (=> b!956180 (= e!538805 false)))

(declare-fun lt!430072 () Bool)

(declare-datatypes ((array!58185 0))(
  ( (array!58186 (arr!27968 (Array (_ BitVec 32) (_ BitVec 64))) (size!28448 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58185)

(declare-datatypes ((List!19622 0))(
  ( (Nil!19619) (Cons!19618 (h!20780 (_ BitVec 64)) (t!27991 List!19622)) )
))
(declare-fun arrayNoDuplicates!0 (array!58185 (_ BitVec 32) List!19622) Bool)

(assert (=> b!956180 (= lt!430072 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19619))))

(declare-fun res!640358 () Bool)

(assert (=> start!82022 (=> (not res!640358) (not e!538805))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82022 (= res!640358 (validMask!0 mask!1823))))

(assert (=> start!82022 e!538805))

(assert (=> start!82022 true))

(declare-datatypes ((V!33027 0))(
  ( (V!33028 (val!10567 Int)) )
))
(declare-datatypes ((ValueCell!10035 0))(
  ( (ValueCellFull!10035 (v!13122 V!33027)) (EmptyCell!10035) )
))
(declare-datatypes ((array!58187 0))(
  ( (array!58188 (arr!27969 (Array (_ BitVec 32) ValueCell!10035)) (size!28449 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58187)

(declare-fun e!538803 () Bool)

(declare-fun array_inv!21645 (array!58187) Bool)

(assert (=> start!82022 (and (array_inv!21645 _values!1197) e!538803)))

(declare-fun array_inv!21646 (array!58185) Bool)

(assert (=> start!82022 (array_inv!21646 _keys!1441)))

(declare-fun b!956179 () Bool)

(declare-fun res!640360 () Bool)

(assert (=> b!956179 (=> (not res!640360) (not e!538805))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58185 (_ BitVec 32)) Bool)

(assert (=> b!956179 (= res!640360 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun mapIsEmpty!33511 () Bool)

(declare-fun mapRes!33511 () Bool)

(assert (=> mapIsEmpty!33511 mapRes!33511))

(declare-fun mapNonEmpty!33511 () Bool)

(declare-fun tp!64090 () Bool)

(declare-fun e!538802 () Bool)

(assert (=> mapNonEmpty!33511 (= mapRes!33511 (and tp!64090 e!538802))))

(declare-fun mapKey!33511 () (_ BitVec 32))

(declare-fun mapRest!33511 () (Array (_ BitVec 32) ValueCell!10035))

(declare-fun mapValue!33511 () ValueCell!10035)

(assert (=> mapNonEmpty!33511 (= (arr!27969 _values!1197) (store mapRest!33511 mapKey!33511 mapValue!33511))))

(declare-fun b!956181 () Bool)

(declare-fun e!538806 () Bool)

(assert (=> b!956181 (= e!538803 (and e!538806 mapRes!33511))))

(declare-fun condMapEmpty!33511 () Bool)

(declare-fun mapDefault!33511 () ValueCell!10035)

(assert (=> b!956181 (= condMapEmpty!33511 (= (arr!27969 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!10035)) mapDefault!33511)))))

(declare-fun b!956182 () Bool)

(declare-fun res!640359 () Bool)

(assert (=> b!956182 (=> (not res!640359) (not e!538805))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!956182 (= res!640359 (and (= (size!28449 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28448 _keys!1441) (size!28449 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!956183 () Bool)

(declare-fun tp_is_empty!21033 () Bool)

(assert (=> b!956183 (= e!538802 tp_is_empty!21033)))

(declare-fun b!956184 () Bool)

(assert (=> b!956184 (= e!538806 tp_is_empty!21033)))

(assert (= (and start!82022 res!640358) b!956182))

(assert (= (and b!956182 res!640359) b!956179))

(assert (= (and b!956179 res!640360) b!956180))

(assert (= (and b!956181 condMapEmpty!33511) mapIsEmpty!33511))

(assert (= (and b!956181 (not condMapEmpty!33511)) mapNonEmpty!33511))

(get-info :version)

(assert (= (and mapNonEmpty!33511 ((_ is ValueCellFull!10035) mapValue!33511)) b!956183))

(assert (= (and b!956181 ((_ is ValueCellFull!10035) mapDefault!33511)) b!956184))

(assert (= start!82022 b!956181))

(declare-fun m!887601 () Bool)

(assert (=> b!956180 m!887601))

(declare-fun m!887603 () Bool)

(assert (=> start!82022 m!887603))

(declare-fun m!887605 () Bool)

(assert (=> start!82022 m!887605))

(declare-fun m!887607 () Bool)

(assert (=> start!82022 m!887607))

(declare-fun m!887609 () Bool)

(assert (=> b!956179 m!887609))

(declare-fun m!887611 () Bool)

(assert (=> mapNonEmpty!33511 m!887611))

(check-sat tp_is_empty!21033 (not start!82022) (not mapNonEmpty!33511) (not b!956179) (not b!956180))
(check-sat)
