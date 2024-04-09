; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35676 () Bool)

(assert start!35676)

(declare-fun b!358082 () Bool)

(declare-fun res!199104 () Bool)

(declare-fun e!219174 () Bool)

(assert (=> b!358082 (=> (not res!199104) (not e!219174))))

(declare-datatypes ((array!19771 0))(
  ( (array!19772 (arr!9376 (Array (_ BitVec 32) (_ BitVec 64))) (size!9728 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19771)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!19771 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!358082 (= res!199104 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!358083 () Bool)

(declare-fun e!219173 () Bool)

(declare-fun tp_is_empty!8121 () Bool)

(assert (=> b!358083 (= e!219173 tp_is_empty!8121)))

(declare-fun res!199101 () Bool)

(assert (=> start!35676 (=> (not res!199101) (not e!219174))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35676 (= res!199101 (validMask!0 mask!1842))))

(assert (=> start!35676 e!219174))

(assert (=> start!35676 true))

(declare-fun array_inv!6892 (array!19771) Bool)

(assert (=> start!35676 (array_inv!6892 _keys!1456)))

(declare-datatypes ((V!11805 0))(
  ( (V!11806 (val!4105 Int)) )
))
(declare-datatypes ((ValueCell!3717 0))(
  ( (ValueCellFull!3717 (v!6295 V!11805)) (EmptyCell!3717) )
))
(declare-datatypes ((array!19773 0))(
  ( (array!19774 (arr!9377 (Array (_ BitVec 32) ValueCell!3717)) (size!9729 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19773)

(declare-fun e!219175 () Bool)

(declare-fun array_inv!6893 (array!19773) Bool)

(assert (=> start!35676 (and (array_inv!6893 _values!1208) e!219175)))

(declare-fun b!358084 () Bool)

(assert (=> b!358084 (= e!219174 (bvslt (bvsub (size!9728 _keys!1456) from!1805) #b00000000000000000000000000000000))))

(declare-fun b!358085 () Bool)

(declare-fun e!219176 () Bool)

(assert (=> b!358085 (= e!219176 tp_is_empty!8121)))

(declare-fun mapIsEmpty!13689 () Bool)

(declare-fun mapRes!13689 () Bool)

(assert (=> mapIsEmpty!13689 mapRes!13689))

(declare-fun b!358086 () Bool)

(declare-fun res!199099 () Bool)

(assert (=> b!358086 (=> (not res!199099) (not e!219174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19771 (_ BitVec 32)) Bool)

(assert (=> b!358086 (= res!199099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapNonEmpty!13689 () Bool)

(declare-fun tp!27747 () Bool)

(assert (=> mapNonEmpty!13689 (= mapRes!13689 (and tp!27747 e!219173))))

(declare-fun mapKey!13689 () (_ BitVec 32))

(declare-fun mapValue!13689 () ValueCell!3717)

(declare-fun mapRest!13689 () (Array (_ BitVec 32) ValueCell!3717))

(assert (=> mapNonEmpty!13689 (= (arr!9377 _values!1208) (store mapRest!13689 mapKey!13689 mapValue!13689))))

(declare-fun b!358087 () Bool)

(declare-fun res!199100 () Bool)

(assert (=> b!358087 (=> (not res!199100) (not e!219174))))

(assert (=> b!358087 (= res!199100 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9728 _keys!1456))))))

(declare-fun b!358088 () Bool)

(assert (=> b!358088 (= e!219175 (and e!219176 mapRes!13689))))

(declare-fun condMapEmpty!13689 () Bool)

(declare-fun mapDefault!13689 () ValueCell!3717)

(assert (=> b!358088 (= condMapEmpty!13689 (= (arr!9377 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3717)) mapDefault!13689)))))

(declare-fun b!358089 () Bool)

(declare-fun res!199102 () Bool)

(assert (=> b!358089 (=> (not res!199102) (not e!219174))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!358089 (= res!199102 (and (= (size!9729 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9728 _keys!1456) (size!9729 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!358090 () Bool)

(declare-fun res!199103 () Bool)

(assert (=> b!358090 (=> (not res!199103) (not e!219174))))

(declare-datatypes ((List!5445 0))(
  ( (Nil!5442) (Cons!5441 (h!6297 (_ BitVec 64)) (t!10603 List!5445)) )
))
(declare-fun arrayNoDuplicates!0 (array!19771 (_ BitVec 32) List!5445) Bool)

(assert (=> b!358090 (= res!199103 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5442))))

(declare-fun b!358091 () Bool)

(declare-fun res!199105 () Bool)

(assert (=> b!358091 (=> (not res!199105) (not e!219174))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!358091 (= res!199105 (validKeyInArray!0 k0!1077))))

(assert (= (and start!35676 res!199101) b!358089))

(assert (= (and b!358089 res!199102) b!358086))

(assert (= (and b!358086 res!199099) b!358090))

(assert (= (and b!358090 res!199103) b!358091))

(assert (= (and b!358091 res!199105) b!358087))

(assert (= (and b!358087 res!199100) b!358082))

(assert (= (and b!358082 res!199104) b!358084))

(assert (= (and b!358088 condMapEmpty!13689) mapIsEmpty!13689))

(assert (= (and b!358088 (not condMapEmpty!13689)) mapNonEmpty!13689))

(get-info :version)

(assert (= (and mapNonEmpty!13689 ((_ is ValueCellFull!3717) mapValue!13689)) b!358083))

(assert (= (and b!358088 ((_ is ValueCellFull!3717) mapDefault!13689)) b!358085))

(assert (= start!35676 b!358088))

(declare-fun m!356011 () Bool)

(assert (=> b!358090 m!356011))

(declare-fun m!356013 () Bool)

(assert (=> b!358082 m!356013))

(declare-fun m!356015 () Bool)

(assert (=> b!358091 m!356015))

(declare-fun m!356017 () Bool)

(assert (=> mapNonEmpty!13689 m!356017))

(declare-fun m!356019 () Bool)

(assert (=> start!35676 m!356019))

(declare-fun m!356021 () Bool)

(assert (=> start!35676 m!356021))

(declare-fun m!356023 () Bool)

(assert (=> start!35676 m!356023))

(declare-fun m!356025 () Bool)

(assert (=> b!358086 m!356025))

(check-sat (not b!358091) (not b!358090) (not start!35676) (not mapNonEmpty!13689) (not b!358082) (not b!358086) tp_is_empty!8121)
(check-sat)
