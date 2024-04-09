; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83758 () Bool)

(assert start!83758)

(declare-fun res!654313 () Bool)

(declare-fun e!551171 () Bool)

(assert (=> start!83758 (=> (not res!654313) (not e!551171))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83758 (= res!654313 (validMask!0 mask!1948))))

(assert (=> start!83758 e!551171))

(assert (=> start!83758 true))

(declare-datatypes ((V!35027 0))(
  ( (V!35028 (val!11317 Int)) )
))
(declare-datatypes ((ValueCell!10785 0))(
  ( (ValueCellFull!10785 (v!13879 V!35027)) (EmptyCell!10785) )
))
(declare-datatypes ((array!61083 0))(
  ( (array!61084 (arr!29395 (Array (_ BitVec 32) ValueCell!10785)) (size!29875 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61083)

(declare-fun e!551172 () Bool)

(declare-fun array_inv!22625 (array!61083) Bool)

(assert (=> start!83758 (and (array_inv!22625 _values!1278) e!551172)))

(declare-datatypes ((array!61085 0))(
  ( (array!61086 (arr!29396 (Array (_ BitVec 32) (_ BitVec 64))) (size!29876 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61085)

(declare-fun array_inv!22626 (array!61085) Bool)

(assert (=> start!83758 (array_inv!22626 _keys!1544)))

(declare-fun b!977530 () Bool)

(assert (=> b!977530 (= e!551171 false)))

(declare-fun lt!433453 () Bool)

(declare-datatypes ((List!20509 0))(
  ( (Nil!20506) (Cons!20505 (h!21667 (_ BitVec 64)) (t!29032 List!20509)) )
))
(declare-fun arrayNoDuplicates!0 (array!61085 (_ BitVec 32) List!20509) Bool)

(assert (=> b!977530 (= lt!433453 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20506))))

(declare-fun mapNonEmpty!35828 () Bool)

(declare-fun mapRes!35828 () Bool)

(declare-fun tp!68081 () Bool)

(declare-fun e!551174 () Bool)

(assert (=> mapNonEmpty!35828 (= mapRes!35828 (and tp!68081 e!551174))))

(declare-fun mapValue!35828 () ValueCell!10785)

(declare-fun mapKey!35828 () (_ BitVec 32))

(declare-fun mapRest!35828 () (Array (_ BitVec 32) ValueCell!10785))

(assert (=> mapNonEmpty!35828 (= (arr!29395 _values!1278) (store mapRest!35828 mapKey!35828 mapValue!35828))))

(declare-fun b!977531 () Bool)

(declare-fun e!551170 () Bool)

(declare-fun tp_is_empty!22533 () Bool)

(assert (=> b!977531 (= e!551170 tp_is_empty!22533)))

(declare-fun b!977532 () Bool)

(assert (=> b!977532 (= e!551174 tp_is_empty!22533)))

(declare-fun b!977533 () Bool)

(assert (=> b!977533 (= e!551172 (and e!551170 mapRes!35828))))

(declare-fun condMapEmpty!35828 () Bool)

(declare-fun mapDefault!35828 () ValueCell!10785)

(assert (=> b!977533 (= condMapEmpty!35828 (= (arr!29395 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10785)) mapDefault!35828)))))

(declare-fun b!977534 () Bool)

(declare-fun res!654314 () Bool)

(assert (=> b!977534 (=> (not res!654314) (not e!551171))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!977534 (= res!654314 (and (= (size!29875 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29876 _keys!1544) (size!29875 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!35828 () Bool)

(assert (=> mapIsEmpty!35828 mapRes!35828))

(declare-fun b!977535 () Bool)

(declare-fun res!654315 () Bool)

(assert (=> b!977535 (=> (not res!654315) (not e!551171))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61085 (_ BitVec 32)) Bool)

(assert (=> b!977535 (= res!654315 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(assert (= (and start!83758 res!654313) b!977534))

(assert (= (and b!977534 res!654314) b!977535))

(assert (= (and b!977535 res!654315) b!977530))

(assert (= (and b!977533 condMapEmpty!35828) mapIsEmpty!35828))

(assert (= (and b!977533 (not condMapEmpty!35828)) mapNonEmpty!35828))

(get-info :version)

(assert (= (and mapNonEmpty!35828 ((_ is ValueCellFull!10785) mapValue!35828)) b!977532))

(assert (= (and b!977533 ((_ is ValueCellFull!10785) mapDefault!35828)) b!977531))

(assert (= start!83758 b!977533))

(declare-fun m!904823 () Bool)

(assert (=> start!83758 m!904823))

(declare-fun m!904825 () Bool)

(assert (=> start!83758 m!904825))

(declare-fun m!904827 () Bool)

(assert (=> start!83758 m!904827))

(declare-fun m!904829 () Bool)

(assert (=> b!977530 m!904829))

(declare-fun m!904831 () Bool)

(assert (=> mapNonEmpty!35828 m!904831))

(declare-fun m!904833 () Bool)

(assert (=> b!977535 m!904833))

(check-sat tp_is_empty!22533 (not b!977535) (not start!83758) (not b!977530) (not mapNonEmpty!35828))
(check-sat)
