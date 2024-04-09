; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81986 () Bool)

(assert start!81986)

(declare-fun b!955855 () Bool)

(declare-fun e!538536 () Bool)

(declare-fun tp_is_empty!20997 () Bool)

(assert (=> b!955855 (= e!538536 tp_is_empty!20997)))

(declare-fun mapIsEmpty!33457 () Bool)

(declare-fun mapRes!33457 () Bool)

(assert (=> mapIsEmpty!33457 mapRes!33457))

(declare-fun b!955856 () Bool)

(declare-fun e!538532 () Bool)

(assert (=> b!955856 (= e!538532 false)))

(declare-fun lt!430018 () Bool)

(declare-datatypes ((array!58115 0))(
  ( (array!58116 (arr!27933 (Array (_ BitVec 32) (_ BitVec 64))) (size!28413 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58115)

(declare-datatypes ((List!19607 0))(
  ( (Nil!19604) (Cons!19603 (h!20765 (_ BitVec 64)) (t!27976 List!19607)) )
))
(declare-fun arrayNoDuplicates!0 (array!58115 (_ BitVec 32) List!19607) Bool)

(assert (=> b!955856 (= lt!430018 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19604))))

(declare-fun res!640196 () Bool)

(assert (=> start!81986 (=> (not res!640196) (not e!538532))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81986 (= res!640196 (validMask!0 mask!1823))))

(assert (=> start!81986 e!538532))

(assert (=> start!81986 true))

(declare-datatypes ((V!32979 0))(
  ( (V!32980 (val!10549 Int)) )
))
(declare-datatypes ((ValueCell!10017 0))(
  ( (ValueCellFull!10017 (v!13104 V!32979)) (EmptyCell!10017) )
))
(declare-datatypes ((array!58117 0))(
  ( (array!58118 (arr!27934 (Array (_ BitVec 32) ValueCell!10017)) (size!28414 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58117)

(declare-fun e!538533 () Bool)

(declare-fun array_inv!21623 (array!58117) Bool)

(assert (=> start!81986 (and (array_inv!21623 _values!1197) e!538533)))

(declare-fun array_inv!21624 (array!58115) Bool)

(assert (=> start!81986 (array_inv!21624 _keys!1441)))

(declare-fun b!955857 () Bool)

(declare-fun e!538535 () Bool)

(assert (=> b!955857 (= e!538535 tp_is_empty!20997)))

(declare-fun b!955858 () Bool)

(assert (=> b!955858 (= e!538533 (and e!538536 mapRes!33457))))

(declare-fun condMapEmpty!33457 () Bool)

(declare-fun mapDefault!33457 () ValueCell!10017)

(assert (=> b!955858 (= condMapEmpty!33457 (= (arr!27934 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!10017)) mapDefault!33457)))))

(declare-fun b!955859 () Bool)

(declare-fun res!640198 () Bool)

(assert (=> b!955859 (=> (not res!640198) (not e!538532))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!955859 (= res!640198 (and (= (size!28414 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28413 _keys!1441) (size!28414 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!33457 () Bool)

(declare-fun tp!64036 () Bool)

(assert (=> mapNonEmpty!33457 (= mapRes!33457 (and tp!64036 e!538535))))

(declare-fun mapKey!33457 () (_ BitVec 32))

(declare-fun mapValue!33457 () ValueCell!10017)

(declare-fun mapRest!33457 () (Array (_ BitVec 32) ValueCell!10017))

(assert (=> mapNonEmpty!33457 (= (arr!27934 _values!1197) (store mapRest!33457 mapKey!33457 mapValue!33457))))

(declare-fun b!955860 () Bool)

(declare-fun res!640197 () Bool)

(assert (=> b!955860 (=> (not res!640197) (not e!538532))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58115 (_ BitVec 32)) Bool)

(assert (=> b!955860 (= res!640197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(assert (= (and start!81986 res!640196) b!955859))

(assert (= (and b!955859 res!640198) b!955860))

(assert (= (and b!955860 res!640197) b!955856))

(assert (= (and b!955858 condMapEmpty!33457) mapIsEmpty!33457))

(assert (= (and b!955858 (not condMapEmpty!33457)) mapNonEmpty!33457))

(get-info :version)

(assert (= (and mapNonEmpty!33457 ((_ is ValueCellFull!10017) mapValue!33457)) b!955857))

(assert (= (and b!955858 ((_ is ValueCellFull!10017) mapDefault!33457)) b!955855))

(assert (= start!81986 b!955858))

(declare-fun m!887385 () Bool)

(assert (=> b!955856 m!887385))

(declare-fun m!887387 () Bool)

(assert (=> start!81986 m!887387))

(declare-fun m!887389 () Bool)

(assert (=> start!81986 m!887389))

(declare-fun m!887391 () Bool)

(assert (=> start!81986 m!887391))

(declare-fun m!887393 () Bool)

(assert (=> mapNonEmpty!33457 m!887393))

(declare-fun m!887395 () Bool)

(assert (=> b!955860 m!887395))

(check-sat (not b!955856) (not mapNonEmpty!33457) tp_is_empty!20997 (not b!955860) (not start!81986))
(check-sat)
