; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83770 () Bool)

(assert start!83770)

(declare-fun b!977653 () Bool)

(declare-fun res!654384 () Bool)

(declare-fun e!551264 () Bool)

(assert (=> b!977653 (=> (not res!654384) (not e!551264))))

(declare-datatypes ((array!61107 0))(
  ( (array!61108 (arr!29407 (Array (_ BitVec 32) (_ BitVec 64))) (size!29887 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61107)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!977653 (= res!654384 (validKeyInArray!0 (select (arr!29407 _keys!1544) from!1932)))))

(declare-fun res!654386 () Bool)

(assert (=> start!83770 (=> (not res!654386) (not e!551264))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83770 (= res!654386 (validMask!0 mask!1948))))

(assert (=> start!83770 e!551264))

(assert (=> start!83770 true))

(declare-datatypes ((V!35043 0))(
  ( (V!35044 (val!11323 Int)) )
))
(declare-datatypes ((ValueCell!10791 0))(
  ( (ValueCellFull!10791 (v!13885 V!35043)) (EmptyCell!10791) )
))
(declare-datatypes ((array!61109 0))(
  ( (array!61110 (arr!29408 (Array (_ BitVec 32) ValueCell!10791)) (size!29888 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61109)

(declare-fun e!551260 () Bool)

(declare-fun array_inv!22635 (array!61109) Bool)

(assert (=> start!83770 (and (array_inv!22635 _values!1278) e!551260)))

(declare-fun array_inv!22636 (array!61107) Bool)

(assert (=> start!83770 (array_inv!22636 _keys!1544)))

(declare-fun b!977654 () Bool)

(declare-fun e!551261 () Bool)

(declare-fun tp_is_empty!22545 () Bool)

(assert (=> b!977654 (= e!551261 tp_is_empty!22545)))

(declare-fun b!977655 () Bool)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!977655 (= e!551264 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000)))))

(declare-fun b!977656 () Bool)

(declare-fun mapRes!35846 () Bool)

(assert (=> b!977656 (= e!551260 (and e!551261 mapRes!35846))))

(declare-fun condMapEmpty!35846 () Bool)

(declare-fun mapDefault!35846 () ValueCell!10791)

(assert (=> b!977656 (= condMapEmpty!35846 (= (arr!29408 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10791)) mapDefault!35846)))))

(declare-fun b!977657 () Bool)

(declare-fun res!654387 () Bool)

(assert (=> b!977657 (=> (not res!654387) (not e!551264))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61107 (_ BitVec 32)) Bool)

(assert (=> b!977657 (= res!654387 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapNonEmpty!35846 () Bool)

(declare-fun tp!68099 () Bool)

(declare-fun e!551263 () Bool)

(assert (=> mapNonEmpty!35846 (= mapRes!35846 (and tp!68099 e!551263))))

(declare-fun mapValue!35846 () ValueCell!10791)

(declare-fun mapRest!35846 () (Array (_ BitVec 32) ValueCell!10791))

(declare-fun mapKey!35846 () (_ BitVec 32))

(assert (=> mapNonEmpty!35846 (= (arr!29408 _values!1278) (store mapRest!35846 mapKey!35846 mapValue!35846))))

(declare-fun b!977658 () Bool)

(declare-fun res!654383 () Bool)

(assert (=> b!977658 (=> (not res!654383) (not e!551264))))

(assert (=> b!977658 (= res!654383 (and (= (size!29888 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29887 _keys!1544) (size!29888 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!977659 () Bool)

(declare-fun res!654382 () Bool)

(assert (=> b!977659 (=> (not res!654382) (not e!551264))))

(assert (=> b!977659 (= res!654382 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29887 _keys!1544))))))

(declare-fun b!977660 () Bool)

(assert (=> b!977660 (= e!551263 tp_is_empty!22545)))

(declare-fun b!977661 () Bool)

(declare-fun res!654385 () Bool)

(assert (=> b!977661 (=> (not res!654385) (not e!551264))))

(declare-datatypes ((List!20513 0))(
  ( (Nil!20510) (Cons!20509 (h!21671 (_ BitVec 64)) (t!29036 List!20513)) )
))
(declare-fun arrayNoDuplicates!0 (array!61107 (_ BitVec 32) List!20513) Bool)

(assert (=> b!977661 (= res!654385 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20510))))

(declare-fun mapIsEmpty!35846 () Bool)

(assert (=> mapIsEmpty!35846 mapRes!35846))

(assert (= (and start!83770 res!654386) b!977658))

(assert (= (and b!977658 res!654383) b!977657))

(assert (= (and b!977657 res!654387) b!977661))

(assert (= (and b!977661 res!654385) b!977659))

(assert (= (and b!977659 res!654382) b!977653))

(assert (= (and b!977653 res!654384) b!977655))

(assert (= (and b!977656 condMapEmpty!35846) mapIsEmpty!35846))

(assert (= (and b!977656 (not condMapEmpty!35846)) mapNonEmpty!35846))

(get-info :version)

(assert (= (and mapNonEmpty!35846 ((_ is ValueCellFull!10791) mapValue!35846)) b!977660))

(assert (= (and b!977656 ((_ is ValueCellFull!10791) mapDefault!35846)) b!977654))

(assert (= start!83770 b!977656))

(declare-fun m!904899 () Bool)

(assert (=> b!977661 m!904899))

(declare-fun m!904901 () Bool)

(assert (=> start!83770 m!904901))

(declare-fun m!904903 () Bool)

(assert (=> start!83770 m!904903))

(declare-fun m!904905 () Bool)

(assert (=> start!83770 m!904905))

(declare-fun m!904907 () Bool)

(assert (=> mapNonEmpty!35846 m!904907))

(declare-fun m!904909 () Bool)

(assert (=> b!977653 m!904909))

(assert (=> b!977653 m!904909))

(declare-fun m!904911 () Bool)

(assert (=> b!977653 m!904911))

(declare-fun m!904913 () Bool)

(assert (=> b!977657 m!904913))

(check-sat (not b!977657) (not b!977653) (not mapNonEmpty!35846) (not b!977661) tp_is_empty!22545 (not start!83770))
(check-sat)
