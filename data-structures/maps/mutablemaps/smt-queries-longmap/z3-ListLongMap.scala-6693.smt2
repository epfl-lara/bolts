; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84160 () Bool)

(assert start!84160)

(declare-fun b!983530 () Bool)

(declare-fun e!554513 () Bool)

(assert (=> b!983530 (= e!554513 false)))

(declare-fun lt!436504 () Bool)

(declare-datatypes ((array!61841 0))(
  ( (array!61842 (arr!29774 (Array (_ BitVec 32) (_ BitVec 64))) (size!30254 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61841)

(declare-datatypes ((List!20750 0))(
  ( (Nil!20747) (Cons!20746 (h!21908 (_ BitVec 64)) (t!29549 List!20750)) )
))
(declare-fun arrayNoDuplicates!0 (array!61841 (_ BitVec 32) List!20750) Bool)

(assert (=> b!983530 (= lt!436504 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20747))))

(declare-fun mapNonEmpty!36431 () Bool)

(declare-fun mapRes!36431 () Bool)

(declare-fun tp!69116 () Bool)

(declare-fun e!554512 () Bool)

(assert (=> mapNonEmpty!36431 (= mapRes!36431 (and tp!69116 e!554512))))

(declare-datatypes ((V!35563 0))(
  ( (V!35564 (val!11518 Int)) )
))
(declare-datatypes ((ValueCell!10986 0))(
  ( (ValueCellFull!10986 (v!14080 V!35563)) (EmptyCell!10986) )
))
(declare-fun mapValue!36431 () ValueCell!10986)

(declare-fun mapKey!36431 () (_ BitVec 32))

(declare-fun mapRest!36431 () (Array (_ BitVec 32) ValueCell!10986))

(declare-datatypes ((array!61843 0))(
  ( (array!61844 (arr!29775 (Array (_ BitVec 32) ValueCell!10986)) (size!30255 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61843)

(assert (=> mapNonEmpty!36431 (= (arr!29775 _values!1278) (store mapRest!36431 mapKey!36431 mapValue!36431))))

(declare-fun b!983531 () Bool)

(declare-fun res!658228 () Bool)

(assert (=> b!983531 (=> (not res!658228) (not e!554513))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!983531 (= res!658228 (and (= (size!30255 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30254 _keys!1544) (size!30255 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!36431 () Bool)

(assert (=> mapIsEmpty!36431 mapRes!36431))

(declare-fun b!983532 () Bool)

(declare-fun res!658229 () Bool)

(assert (=> b!983532 (=> (not res!658229) (not e!554513))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61841 (_ BitVec 32)) Bool)

(assert (=> b!983532 (= res!658229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!983533 () Bool)

(declare-fun tp_is_empty!22935 () Bool)

(assert (=> b!983533 (= e!554512 tp_is_empty!22935)))

(declare-fun res!658230 () Bool)

(assert (=> start!84160 (=> (not res!658230) (not e!554513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84160 (= res!658230 (validMask!0 mask!1948))))

(assert (=> start!84160 e!554513))

(assert (=> start!84160 true))

(declare-fun e!554511 () Bool)

(declare-fun array_inv!22889 (array!61843) Bool)

(assert (=> start!84160 (and (array_inv!22889 _values!1278) e!554511)))

(declare-fun array_inv!22890 (array!61841) Bool)

(assert (=> start!84160 (array_inv!22890 _keys!1544)))

(declare-fun b!983534 () Bool)

(declare-fun e!554510 () Bool)

(assert (=> b!983534 (= e!554510 tp_is_empty!22935)))

(declare-fun b!983535 () Bool)

(assert (=> b!983535 (= e!554511 (and e!554510 mapRes!36431))))

(declare-fun condMapEmpty!36431 () Bool)

(declare-fun mapDefault!36431 () ValueCell!10986)

(assert (=> b!983535 (= condMapEmpty!36431 (= (arr!29775 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10986)) mapDefault!36431)))))

(assert (= (and start!84160 res!658230) b!983531))

(assert (= (and b!983531 res!658228) b!983532))

(assert (= (and b!983532 res!658229) b!983530))

(assert (= (and b!983535 condMapEmpty!36431) mapIsEmpty!36431))

(assert (= (and b!983535 (not condMapEmpty!36431)) mapNonEmpty!36431))

(get-info :version)

(assert (= (and mapNonEmpty!36431 ((_ is ValueCellFull!10986) mapValue!36431)) b!983533))

(assert (= (and b!983535 ((_ is ValueCellFull!10986) mapDefault!36431)) b!983534))

(assert (= start!84160 b!983535))

(declare-fun m!910829 () Bool)

(assert (=> b!983530 m!910829))

(declare-fun m!910831 () Bool)

(assert (=> mapNonEmpty!36431 m!910831))

(declare-fun m!910833 () Bool)

(assert (=> b!983532 m!910833))

(declare-fun m!910835 () Bool)

(assert (=> start!84160 m!910835))

(declare-fun m!910837 () Bool)

(assert (=> start!84160 m!910837))

(declare-fun m!910839 () Bool)

(assert (=> start!84160 m!910839))

(check-sat tp_is_empty!22935 (not start!84160) (not b!983530) (not mapNonEmpty!36431) (not b!983532))
(check-sat)
