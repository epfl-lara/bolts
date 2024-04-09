; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81980 () Bool)

(assert start!81980)

(declare-fun b!955801 () Bool)

(declare-fun res!640170 () Bool)

(declare-fun e!538489 () Bool)

(assert (=> b!955801 (=> (not res!640170) (not e!538489))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((array!58103 0))(
  ( (array!58104 (arr!27927 (Array (_ BitVec 32) (_ BitVec 64))) (size!28407 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58103)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-datatypes ((V!32971 0))(
  ( (V!32972 (val!10546 Int)) )
))
(declare-datatypes ((ValueCell!10014 0))(
  ( (ValueCellFull!10014 (v!13101 V!32971)) (EmptyCell!10014) )
))
(declare-datatypes ((array!58105 0))(
  ( (array!58106 (arr!27928 (Array (_ BitVec 32) ValueCell!10014)) (size!28408 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58105)

(assert (=> b!955801 (= res!640170 (and (= (size!28408 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28407 _keys!1441) (size!28408 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!33448 () Bool)

(declare-fun mapRes!33448 () Bool)

(declare-fun tp!64027 () Bool)

(declare-fun e!538488 () Bool)

(assert (=> mapNonEmpty!33448 (= mapRes!33448 (and tp!64027 e!538488))))

(declare-fun mapKey!33448 () (_ BitVec 32))

(declare-fun mapRest!33448 () (Array (_ BitVec 32) ValueCell!10014))

(declare-fun mapValue!33448 () ValueCell!10014)

(assert (=> mapNonEmpty!33448 (= (arr!27928 _values!1197) (store mapRest!33448 mapKey!33448 mapValue!33448))))

(declare-fun b!955802 () Bool)

(declare-fun e!538490 () Bool)

(declare-fun e!538487 () Bool)

(assert (=> b!955802 (= e!538490 (and e!538487 mapRes!33448))))

(declare-fun condMapEmpty!33448 () Bool)

(declare-fun mapDefault!33448 () ValueCell!10014)

(assert (=> b!955802 (= condMapEmpty!33448 (= (arr!27928 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!10014)) mapDefault!33448)))))

(declare-fun res!640171 () Bool)

(assert (=> start!81980 (=> (not res!640171) (not e!538489))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81980 (= res!640171 (validMask!0 mask!1823))))

(assert (=> start!81980 e!538489))

(assert (=> start!81980 true))

(declare-fun array_inv!21619 (array!58105) Bool)

(assert (=> start!81980 (and (array_inv!21619 _values!1197) e!538490)))

(declare-fun array_inv!21620 (array!58103) Bool)

(assert (=> start!81980 (array_inv!21620 _keys!1441)))

(declare-fun b!955803 () Bool)

(declare-fun res!640169 () Bool)

(assert (=> b!955803 (=> (not res!640169) (not e!538489))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58103 (_ BitVec 32)) Bool)

(assert (=> b!955803 (= res!640169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!955804 () Bool)

(declare-fun tp_is_empty!20991 () Bool)

(assert (=> b!955804 (= e!538488 tp_is_empty!20991)))

(declare-fun mapIsEmpty!33448 () Bool)

(assert (=> mapIsEmpty!33448 mapRes!33448))

(declare-fun b!955805 () Bool)

(assert (=> b!955805 (= e!538489 false)))

(declare-fun lt!430009 () Bool)

(declare-datatypes ((List!19605 0))(
  ( (Nil!19602) (Cons!19601 (h!20763 (_ BitVec 64)) (t!27974 List!19605)) )
))
(declare-fun arrayNoDuplicates!0 (array!58103 (_ BitVec 32) List!19605) Bool)

(assert (=> b!955805 (= lt!430009 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19602))))

(declare-fun b!955806 () Bool)

(assert (=> b!955806 (= e!538487 tp_is_empty!20991)))

(assert (= (and start!81980 res!640171) b!955801))

(assert (= (and b!955801 res!640170) b!955803))

(assert (= (and b!955803 res!640169) b!955805))

(assert (= (and b!955802 condMapEmpty!33448) mapIsEmpty!33448))

(assert (= (and b!955802 (not condMapEmpty!33448)) mapNonEmpty!33448))

(get-info :version)

(assert (= (and mapNonEmpty!33448 ((_ is ValueCellFull!10014) mapValue!33448)) b!955804))

(assert (= (and b!955802 ((_ is ValueCellFull!10014) mapDefault!33448)) b!955806))

(assert (= start!81980 b!955802))

(declare-fun m!887349 () Bool)

(assert (=> mapNonEmpty!33448 m!887349))

(declare-fun m!887351 () Bool)

(assert (=> start!81980 m!887351))

(declare-fun m!887353 () Bool)

(assert (=> start!81980 m!887353))

(declare-fun m!887355 () Bool)

(assert (=> start!81980 m!887355))

(declare-fun m!887357 () Bool)

(assert (=> b!955803 m!887357))

(declare-fun m!887359 () Bool)

(assert (=> b!955805 m!887359))

(check-sat (not start!81980) tp_is_empty!20991 (not mapNonEmpty!33448) (not b!955803) (not b!955805))
(check-sat)
