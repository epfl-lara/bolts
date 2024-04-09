; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81974 () Bool)

(assert start!81974)

(declare-fun b!955747 () Bool)

(declare-fun e!538445 () Bool)

(assert (=> b!955747 (= e!538445 false)))

(declare-fun lt!430000 () Bool)

(declare-datatypes ((array!58093 0))(
  ( (array!58094 (arr!27922 (Array (_ BitVec 32) (_ BitVec 64))) (size!28402 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58093)

(declare-datatypes ((List!19603 0))(
  ( (Nil!19600) (Cons!19599 (h!20761 (_ BitVec 64)) (t!27972 List!19603)) )
))
(declare-fun arrayNoDuplicates!0 (array!58093 (_ BitVec 32) List!19603) Bool)

(assert (=> b!955747 (= lt!430000 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19600))))

(declare-fun mapIsEmpty!33439 () Bool)

(declare-fun mapRes!33439 () Bool)

(assert (=> mapIsEmpty!33439 mapRes!33439))

(declare-fun b!955748 () Bool)

(declare-fun e!538443 () Bool)

(declare-fun tp_is_empty!20985 () Bool)

(assert (=> b!955748 (= e!538443 tp_is_empty!20985)))

(declare-fun b!955749 () Bool)

(declare-fun res!640143 () Bool)

(assert (=> b!955749 (=> (not res!640143) (not e!538445))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!32963 0))(
  ( (V!32964 (val!10543 Int)) )
))
(declare-datatypes ((ValueCell!10011 0))(
  ( (ValueCellFull!10011 (v!13098 V!32963)) (EmptyCell!10011) )
))
(declare-datatypes ((array!58095 0))(
  ( (array!58096 (arr!27923 (Array (_ BitVec 32) ValueCell!10011)) (size!28403 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58095)

(declare-fun mask!1823 () (_ BitVec 32))

(assert (=> b!955749 (= res!640143 (and (= (size!28403 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28402 _keys!1441) (size!28403 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun res!640144 () Bool)

(assert (=> start!81974 (=> (not res!640144) (not e!538445))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81974 (= res!640144 (validMask!0 mask!1823))))

(assert (=> start!81974 e!538445))

(assert (=> start!81974 true))

(declare-fun e!538444 () Bool)

(declare-fun array_inv!21615 (array!58095) Bool)

(assert (=> start!81974 (and (array_inv!21615 _values!1197) e!538444)))

(declare-fun array_inv!21616 (array!58093) Bool)

(assert (=> start!81974 (array_inv!21616 _keys!1441)))

(declare-fun mapNonEmpty!33439 () Bool)

(declare-fun tp!64018 () Bool)

(assert (=> mapNonEmpty!33439 (= mapRes!33439 (and tp!64018 e!538443))))

(declare-fun mapKey!33439 () (_ BitVec 32))

(declare-fun mapValue!33439 () ValueCell!10011)

(declare-fun mapRest!33439 () (Array (_ BitVec 32) ValueCell!10011))

(assert (=> mapNonEmpty!33439 (= (arr!27923 _values!1197) (store mapRest!33439 mapKey!33439 mapValue!33439))))

(declare-fun b!955750 () Bool)

(declare-fun e!538442 () Bool)

(assert (=> b!955750 (= e!538442 tp_is_empty!20985)))

(declare-fun b!955751 () Bool)

(assert (=> b!955751 (= e!538444 (and e!538442 mapRes!33439))))

(declare-fun condMapEmpty!33439 () Bool)

(declare-fun mapDefault!33439 () ValueCell!10011)

(assert (=> b!955751 (= condMapEmpty!33439 (= (arr!27923 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!10011)) mapDefault!33439)))))

(declare-fun b!955752 () Bool)

(declare-fun res!640142 () Bool)

(assert (=> b!955752 (=> (not res!640142) (not e!538445))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58093 (_ BitVec 32)) Bool)

(assert (=> b!955752 (= res!640142 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(assert (= (and start!81974 res!640144) b!955749))

(assert (= (and b!955749 res!640143) b!955752))

(assert (= (and b!955752 res!640142) b!955747))

(assert (= (and b!955751 condMapEmpty!33439) mapIsEmpty!33439))

(assert (= (and b!955751 (not condMapEmpty!33439)) mapNonEmpty!33439))

(get-info :version)

(assert (= (and mapNonEmpty!33439 ((_ is ValueCellFull!10011) mapValue!33439)) b!955748))

(assert (= (and b!955751 ((_ is ValueCellFull!10011) mapDefault!33439)) b!955750))

(assert (= start!81974 b!955751))

(declare-fun m!887313 () Bool)

(assert (=> b!955747 m!887313))

(declare-fun m!887315 () Bool)

(assert (=> start!81974 m!887315))

(declare-fun m!887317 () Bool)

(assert (=> start!81974 m!887317))

(declare-fun m!887319 () Bool)

(assert (=> start!81974 m!887319))

(declare-fun m!887321 () Bool)

(assert (=> mapNonEmpty!33439 m!887321))

(declare-fun m!887323 () Bool)

(assert (=> b!955752 m!887323))

(check-sat tp_is_empty!20985 (not start!81974) (not b!955747) (not b!955752) (not mapNonEmpty!33439))
(check-sat)
