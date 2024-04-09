; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35688 () Bool)

(assert start!35688)

(declare-fun b!358206 () Bool)

(declare-fun e!219262 () Bool)

(declare-fun tp_is_empty!8133 () Bool)

(assert (=> b!358206 (= e!219262 tp_is_empty!8133)))

(declare-fun mapNonEmpty!13707 () Bool)

(declare-fun mapRes!13707 () Bool)

(declare-fun tp!27765 () Bool)

(declare-fun e!219264 () Bool)

(assert (=> mapNonEmpty!13707 (= mapRes!13707 (and tp!27765 e!219264))))

(declare-datatypes ((V!11821 0))(
  ( (V!11822 (val!4111 Int)) )
))
(declare-datatypes ((ValueCell!3723 0))(
  ( (ValueCellFull!3723 (v!6301 V!11821)) (EmptyCell!3723) )
))
(declare-fun mapValue!13707 () ValueCell!3723)

(declare-datatypes ((array!19795 0))(
  ( (array!19796 (arr!9388 (Array (_ BitVec 32) ValueCell!3723)) (size!9740 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19795)

(declare-fun mapKey!13707 () (_ BitVec 32))

(declare-fun mapRest!13707 () (Array (_ BitVec 32) ValueCell!3723))

(assert (=> mapNonEmpty!13707 (= (arr!9388 _values!1208) (store mapRest!13707 mapKey!13707 mapValue!13707))))

(declare-fun res!199170 () Bool)

(declare-fun e!219266 () Bool)

(assert (=> start!35688 (=> (not res!199170) (not e!219266))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35688 (= res!199170 (validMask!0 mask!1842))))

(assert (=> start!35688 e!219266))

(assert (=> start!35688 true))

(declare-fun e!219263 () Bool)

(declare-fun array_inv!6898 (array!19795) Bool)

(assert (=> start!35688 (and (array_inv!6898 _values!1208) e!219263)))

(declare-datatypes ((array!19797 0))(
  ( (array!19798 (arr!9389 (Array (_ BitVec 32) (_ BitVec 64))) (size!9741 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19797)

(declare-fun array_inv!6899 (array!19797) Bool)

(assert (=> start!35688 (array_inv!6899 _keys!1456)))

(declare-fun b!358207 () Bool)

(declare-fun res!199169 () Bool)

(assert (=> b!358207 (=> (not res!199169) (not e!219266))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!358207 (= res!199169 (and (= (size!9740 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9741 _keys!1456) (size!9740 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!358208 () Bool)

(assert (=> b!358208 (= e!219263 (and e!219262 mapRes!13707))))

(declare-fun condMapEmpty!13707 () Bool)

(declare-fun mapDefault!13707 () ValueCell!3723)

(assert (=> b!358208 (= condMapEmpty!13707 (= (arr!9388 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3723)) mapDefault!13707)))))

(declare-fun b!358209 () Bool)

(assert (=> b!358209 (= e!219264 tp_is_empty!8133)))

(declare-fun b!358210 () Bool)

(assert (=> b!358210 (= e!219266 false)))

(declare-fun lt!166147 () Bool)

(declare-datatypes ((List!5449 0))(
  ( (Nil!5446) (Cons!5445 (h!6301 (_ BitVec 64)) (t!10607 List!5449)) )
))
(declare-fun arrayNoDuplicates!0 (array!19797 (_ BitVec 32) List!5449) Bool)

(assert (=> b!358210 (= lt!166147 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5446))))

(declare-fun b!358211 () Bool)

(declare-fun res!199171 () Bool)

(assert (=> b!358211 (=> (not res!199171) (not e!219266))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19797 (_ BitVec 32)) Bool)

(assert (=> b!358211 (= res!199171 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapIsEmpty!13707 () Bool)

(assert (=> mapIsEmpty!13707 mapRes!13707))

(assert (= (and start!35688 res!199170) b!358207))

(assert (= (and b!358207 res!199169) b!358211))

(assert (= (and b!358211 res!199171) b!358210))

(assert (= (and b!358208 condMapEmpty!13707) mapIsEmpty!13707))

(assert (= (and b!358208 (not condMapEmpty!13707)) mapNonEmpty!13707))

(get-info :version)

(assert (= (and mapNonEmpty!13707 ((_ is ValueCellFull!3723) mapValue!13707)) b!358209))

(assert (= (and b!358208 ((_ is ValueCellFull!3723) mapDefault!13707)) b!358206))

(assert (= start!35688 b!358208))

(declare-fun m!356091 () Bool)

(assert (=> mapNonEmpty!13707 m!356091))

(declare-fun m!356093 () Bool)

(assert (=> start!35688 m!356093))

(declare-fun m!356095 () Bool)

(assert (=> start!35688 m!356095))

(declare-fun m!356097 () Bool)

(assert (=> start!35688 m!356097))

(declare-fun m!356099 () Bool)

(assert (=> b!358210 m!356099))

(declare-fun m!356101 () Bool)

(assert (=> b!358211 m!356101))

(check-sat (not b!358211) (not start!35688) tp_is_empty!8133 (not b!358210) (not mapNonEmpty!13707))
(check-sat)
