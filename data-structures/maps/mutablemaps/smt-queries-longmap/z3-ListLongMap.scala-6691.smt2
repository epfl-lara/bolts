; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84148 () Bool)

(assert start!84148)

(declare-fun b!983422 () Bool)

(declare-fun e!554423 () Bool)

(assert (=> b!983422 (= e!554423 false)))

(declare-fun lt!436486 () Bool)

(declare-datatypes ((array!61819 0))(
  ( (array!61820 (arr!29763 (Array (_ BitVec 32) (_ BitVec 64))) (size!30243 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61819)

(declare-datatypes ((List!20747 0))(
  ( (Nil!20744) (Cons!20743 (h!21905 (_ BitVec 64)) (t!29546 List!20747)) )
))
(declare-fun arrayNoDuplicates!0 (array!61819 (_ BitVec 32) List!20747) Bool)

(assert (=> b!983422 (= lt!436486 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20744))))

(declare-fun b!983423 () Bool)

(declare-fun res!658176 () Bool)

(assert (=> b!983423 (=> (not res!658176) (not e!554423))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35547 0))(
  ( (V!35548 (val!11512 Int)) )
))
(declare-datatypes ((ValueCell!10980 0))(
  ( (ValueCellFull!10980 (v!14074 V!35547)) (EmptyCell!10980) )
))
(declare-datatypes ((array!61821 0))(
  ( (array!61822 (arr!29764 (Array (_ BitVec 32) ValueCell!10980)) (size!30244 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61821)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!983423 (= res!658176 (and (= (size!30244 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30243 _keys!1544) (size!30244 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!983424 () Bool)

(declare-fun e!554419 () Bool)

(declare-fun tp_is_empty!22923 () Bool)

(assert (=> b!983424 (= e!554419 tp_is_empty!22923)))

(declare-fun res!658175 () Bool)

(assert (=> start!84148 (=> (not res!658175) (not e!554423))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84148 (= res!658175 (validMask!0 mask!1948))))

(assert (=> start!84148 e!554423))

(assert (=> start!84148 true))

(declare-fun e!554421 () Bool)

(declare-fun array_inv!22879 (array!61821) Bool)

(assert (=> start!84148 (and (array_inv!22879 _values!1278) e!554421)))

(declare-fun array_inv!22880 (array!61819) Bool)

(assert (=> start!84148 (array_inv!22880 _keys!1544)))

(declare-fun mapNonEmpty!36413 () Bool)

(declare-fun mapRes!36413 () Bool)

(declare-fun tp!69098 () Bool)

(declare-fun e!554420 () Bool)

(assert (=> mapNonEmpty!36413 (= mapRes!36413 (and tp!69098 e!554420))))

(declare-fun mapKey!36413 () (_ BitVec 32))

(declare-fun mapRest!36413 () (Array (_ BitVec 32) ValueCell!10980))

(declare-fun mapValue!36413 () ValueCell!10980)

(assert (=> mapNonEmpty!36413 (= (arr!29764 _values!1278) (store mapRest!36413 mapKey!36413 mapValue!36413))))

(declare-fun b!983425 () Bool)

(assert (=> b!983425 (= e!554421 (and e!554419 mapRes!36413))))

(declare-fun condMapEmpty!36413 () Bool)

(declare-fun mapDefault!36413 () ValueCell!10980)

(assert (=> b!983425 (= condMapEmpty!36413 (= (arr!29764 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10980)) mapDefault!36413)))))

(declare-fun b!983426 () Bool)

(assert (=> b!983426 (= e!554420 tp_is_empty!22923)))

(declare-fun b!983427 () Bool)

(declare-fun res!658174 () Bool)

(assert (=> b!983427 (=> (not res!658174) (not e!554423))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61819 (_ BitVec 32)) Bool)

(assert (=> b!983427 (= res!658174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36413 () Bool)

(assert (=> mapIsEmpty!36413 mapRes!36413))

(assert (= (and start!84148 res!658175) b!983423))

(assert (= (and b!983423 res!658176) b!983427))

(assert (= (and b!983427 res!658174) b!983422))

(assert (= (and b!983425 condMapEmpty!36413) mapIsEmpty!36413))

(assert (= (and b!983425 (not condMapEmpty!36413)) mapNonEmpty!36413))

(get-info :version)

(assert (= (and mapNonEmpty!36413 ((_ is ValueCellFull!10980) mapValue!36413)) b!983426))

(assert (= (and b!983425 ((_ is ValueCellFull!10980) mapDefault!36413)) b!983424))

(assert (= start!84148 b!983425))

(declare-fun m!910757 () Bool)

(assert (=> b!983422 m!910757))

(declare-fun m!910759 () Bool)

(assert (=> start!84148 m!910759))

(declare-fun m!910761 () Bool)

(assert (=> start!84148 m!910761))

(declare-fun m!910763 () Bool)

(assert (=> start!84148 m!910763))

(declare-fun m!910765 () Bool)

(assert (=> mapNonEmpty!36413 m!910765))

(declare-fun m!910767 () Bool)

(assert (=> b!983427 m!910767))

(check-sat (not b!983422) tp_is_empty!22923 (not start!84148) (not b!983427) (not mapNonEmpty!36413))
(check-sat)
