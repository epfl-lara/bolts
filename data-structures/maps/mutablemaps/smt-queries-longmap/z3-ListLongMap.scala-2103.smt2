; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35796 () Bool)

(assert start!35796)

(declare-fun res!199754 () Bool)

(declare-fun e!220074 () Bool)

(assert (=> start!35796 (=> (not res!199754) (not e!220074))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35796 (= res!199754 (validMask!0 mask!1842))))

(assert (=> start!35796 e!220074))

(assert (=> start!35796 true))

(declare-datatypes ((V!11965 0))(
  ( (V!11966 (val!4165 Int)) )
))
(declare-datatypes ((ValueCell!3777 0))(
  ( (ValueCellFull!3777 (v!6355 V!11965)) (EmptyCell!3777) )
))
(declare-datatypes ((array!20003 0))(
  ( (array!20004 (arr!9492 (Array (_ BitVec 32) ValueCell!3777)) (size!9844 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20003)

(declare-fun e!220076 () Bool)

(declare-fun array_inv!6984 (array!20003) Bool)

(assert (=> start!35796 (and (array_inv!6984 _values!1208) e!220076)))

(declare-datatypes ((array!20005 0))(
  ( (array!20006 (arr!9493 (Array (_ BitVec 32) (_ BitVec 64))) (size!9845 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20005)

(declare-fun array_inv!6985 (array!20005) Bool)

(assert (=> start!35796 (array_inv!6985 _keys!1456)))

(declare-fun b!359277 () Bool)

(declare-fun e!220072 () Bool)

(declare-fun tp_is_empty!8241 () Bool)

(assert (=> b!359277 (= e!220072 tp_is_empty!8241)))

(declare-fun mapNonEmpty!13869 () Bool)

(declare-fun mapRes!13869 () Bool)

(declare-fun tp!27936 () Bool)

(declare-fun e!220075 () Bool)

(assert (=> mapNonEmpty!13869 (= mapRes!13869 (and tp!27936 e!220075))))

(declare-fun mapValue!13869 () ValueCell!3777)

(declare-fun mapKey!13869 () (_ BitVec 32))

(declare-fun mapRest!13869 () (Array (_ BitVec 32) ValueCell!3777))

(assert (=> mapNonEmpty!13869 (= (arr!9492 _values!1208) (store mapRest!13869 mapKey!13869 mapValue!13869))))

(declare-fun mapIsEmpty!13869 () Bool)

(assert (=> mapIsEmpty!13869 mapRes!13869))

(declare-fun b!359278 () Bool)

(declare-fun res!199756 () Bool)

(assert (=> b!359278 (=> (not res!199756) (not e!220074))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20005 (_ BitVec 32)) Bool)

(assert (=> b!359278 (= res!199756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!359279 () Bool)

(assert (=> b!359279 (= e!220074 false)))

(declare-fun lt!166309 () Bool)

(declare-datatypes ((List!5491 0))(
  ( (Nil!5488) (Cons!5487 (h!6343 (_ BitVec 64)) (t!10649 List!5491)) )
))
(declare-fun arrayNoDuplicates!0 (array!20005 (_ BitVec 32) List!5491) Bool)

(assert (=> b!359279 (= lt!166309 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5488))))

(declare-fun b!359280 () Bool)

(declare-fun res!199755 () Bool)

(assert (=> b!359280 (=> (not res!199755) (not e!220074))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!359280 (= res!199755 (and (= (size!9844 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9845 _keys!1456) (size!9844 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!359281 () Bool)

(assert (=> b!359281 (= e!220076 (and e!220072 mapRes!13869))))

(declare-fun condMapEmpty!13869 () Bool)

(declare-fun mapDefault!13869 () ValueCell!3777)

(assert (=> b!359281 (= condMapEmpty!13869 (= (arr!9492 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3777)) mapDefault!13869)))))

(declare-fun b!359282 () Bool)

(assert (=> b!359282 (= e!220075 tp_is_empty!8241)))

(assert (= (and start!35796 res!199754) b!359280))

(assert (= (and b!359280 res!199755) b!359278))

(assert (= (and b!359278 res!199756) b!359279))

(assert (= (and b!359281 condMapEmpty!13869) mapIsEmpty!13869))

(assert (= (and b!359281 (not condMapEmpty!13869)) mapNonEmpty!13869))

(get-info :version)

(assert (= (and mapNonEmpty!13869 ((_ is ValueCellFull!3777) mapValue!13869)) b!359282))

(assert (= (and b!359281 ((_ is ValueCellFull!3777) mapDefault!13869)) b!359277))

(assert (= start!35796 b!359281))

(declare-fun m!356811 () Bool)

(assert (=> start!35796 m!356811))

(declare-fun m!356813 () Bool)

(assert (=> start!35796 m!356813))

(declare-fun m!356815 () Bool)

(assert (=> start!35796 m!356815))

(declare-fun m!356817 () Bool)

(assert (=> mapNonEmpty!13869 m!356817))

(declare-fun m!356819 () Bool)

(assert (=> b!359278 m!356819))

(declare-fun m!356821 () Bool)

(assert (=> b!359279 m!356821))

(check-sat tp_is_empty!8241 (not start!35796) (not b!359278) (not mapNonEmpty!13869) (not b!359279))
(check-sat)
