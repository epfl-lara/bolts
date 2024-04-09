; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81998 () Bool)

(assert start!81998)

(declare-fun b!955963 () Bool)

(declare-fun e!538626 () Bool)

(assert (=> b!955963 (= e!538626 false)))

(declare-fun lt!430036 () Bool)

(declare-datatypes ((array!58139 0))(
  ( (array!58140 (arr!27945 (Array (_ BitVec 32) (_ BitVec 64))) (size!28425 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58139)

(declare-datatypes ((List!19612 0))(
  ( (Nil!19609) (Cons!19608 (h!20770 (_ BitVec 64)) (t!27981 List!19612)) )
))
(declare-fun arrayNoDuplicates!0 (array!58139 (_ BitVec 32) List!19612) Bool)

(assert (=> b!955963 (= lt!430036 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19609))))

(declare-fun b!955964 () Bool)

(declare-fun e!538624 () Bool)

(declare-fun tp_is_empty!21009 () Bool)

(assert (=> b!955964 (= e!538624 tp_is_empty!21009)))

(declare-fun b!955965 () Bool)

(declare-fun e!538625 () Bool)

(declare-fun mapRes!33475 () Bool)

(assert (=> b!955965 (= e!538625 (and e!538624 mapRes!33475))))

(declare-fun condMapEmpty!33475 () Bool)

(declare-datatypes ((V!32995 0))(
  ( (V!32996 (val!10555 Int)) )
))
(declare-datatypes ((ValueCell!10023 0))(
  ( (ValueCellFull!10023 (v!13110 V!32995)) (EmptyCell!10023) )
))
(declare-datatypes ((array!58141 0))(
  ( (array!58142 (arr!27946 (Array (_ BitVec 32) ValueCell!10023)) (size!28426 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58141)

(declare-fun mapDefault!33475 () ValueCell!10023)

(assert (=> b!955965 (= condMapEmpty!33475 (= (arr!27946 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!10023)) mapDefault!33475)))))

(declare-fun b!955966 () Bool)

(declare-fun e!538623 () Bool)

(assert (=> b!955966 (= e!538623 tp_is_empty!21009)))

(declare-fun b!955967 () Bool)

(declare-fun res!640252 () Bool)

(assert (=> b!955967 (=> (not res!640252) (not e!538626))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!955967 (= res!640252 (and (= (size!28426 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28425 _keys!1441) (size!28426 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!955968 () Bool)

(declare-fun res!640251 () Bool)

(assert (=> b!955968 (=> (not res!640251) (not e!538626))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58139 (_ BitVec 32)) Bool)

(assert (=> b!955968 (= res!640251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun mapIsEmpty!33475 () Bool)

(assert (=> mapIsEmpty!33475 mapRes!33475))

(declare-fun mapNonEmpty!33475 () Bool)

(declare-fun tp!64054 () Bool)

(assert (=> mapNonEmpty!33475 (= mapRes!33475 (and tp!64054 e!538623))))

(declare-fun mapValue!33475 () ValueCell!10023)

(declare-fun mapRest!33475 () (Array (_ BitVec 32) ValueCell!10023))

(declare-fun mapKey!33475 () (_ BitVec 32))

(assert (=> mapNonEmpty!33475 (= (arr!27946 _values!1197) (store mapRest!33475 mapKey!33475 mapValue!33475))))

(declare-fun res!640250 () Bool)

(assert (=> start!81998 (=> (not res!640250) (not e!538626))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81998 (= res!640250 (validMask!0 mask!1823))))

(assert (=> start!81998 e!538626))

(assert (=> start!81998 true))

(declare-fun array_inv!21631 (array!58141) Bool)

(assert (=> start!81998 (and (array_inv!21631 _values!1197) e!538625)))

(declare-fun array_inv!21632 (array!58139) Bool)

(assert (=> start!81998 (array_inv!21632 _keys!1441)))

(assert (= (and start!81998 res!640250) b!955967))

(assert (= (and b!955967 res!640252) b!955968))

(assert (= (and b!955968 res!640251) b!955963))

(assert (= (and b!955965 condMapEmpty!33475) mapIsEmpty!33475))

(assert (= (and b!955965 (not condMapEmpty!33475)) mapNonEmpty!33475))

(get-info :version)

(assert (= (and mapNonEmpty!33475 ((_ is ValueCellFull!10023) mapValue!33475)) b!955966))

(assert (= (and b!955965 ((_ is ValueCellFull!10023) mapDefault!33475)) b!955964))

(assert (= start!81998 b!955965))

(declare-fun m!887457 () Bool)

(assert (=> b!955963 m!887457))

(declare-fun m!887459 () Bool)

(assert (=> b!955968 m!887459))

(declare-fun m!887461 () Bool)

(assert (=> mapNonEmpty!33475 m!887461))

(declare-fun m!887463 () Bool)

(assert (=> start!81998 m!887463))

(declare-fun m!887465 () Bool)

(assert (=> start!81998 m!887465))

(declare-fun m!887467 () Bool)

(assert (=> start!81998 m!887467))

(check-sat tp_is_empty!21009 (not mapNonEmpty!33475) (not b!955963) (not start!81998) (not b!955968))
(check-sat)
