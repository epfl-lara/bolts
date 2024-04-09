; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77394 () Bool)

(assert start!77394)

(declare-fun b!902004 () Bool)

(declare-fun e!505114 () Bool)

(declare-fun tp_is_empty!18423 () Bool)

(assert (=> b!902004 (= e!505114 tp_is_empty!18423)))

(declare-datatypes ((V!29529 0))(
  ( (V!29530 (val!9262 Int)) )
))
(declare-datatypes ((ValueCell!8730 0))(
  ( (ValueCellFull!8730 (v!11766 V!29529)) (EmptyCell!8730) )
))
(declare-datatypes ((array!52894 0))(
  ( (array!52895 (arr!25408 (Array (_ BitVec 32) ValueCell!8730)) (size!25868 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52894)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!52896 0))(
  ( (array!52897 (arr!25409 (Array (_ BitVec 32) (_ BitVec 64))) (size!25869 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!52896)

(declare-fun e!505113 () Bool)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun b!902005 () Bool)

(assert (=> b!902005 (= e!505113 (and (= (size!25868 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25869 _keys!1386) (size!25868 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011) (not (= (size!25869 _keys!1386) (bvadd #b00000000000000000000000000000001 mask!1756)))))))

(declare-fun res!608890 () Bool)

(assert (=> start!77394 (=> (not res!608890) (not e!505113))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77394 (= res!608890 (validMask!0 mask!1756))))

(assert (=> start!77394 e!505113))

(assert (=> start!77394 true))

(declare-fun e!505116 () Bool)

(declare-fun array_inv!19902 (array!52894) Bool)

(assert (=> start!77394 (and (array_inv!19902 _values!1152) e!505116)))

(declare-fun array_inv!19903 (array!52896) Bool)

(assert (=> start!77394 (array_inv!19903 _keys!1386)))

(declare-fun mapNonEmpty!29329 () Bool)

(declare-fun mapRes!29329 () Bool)

(declare-fun tp!56389 () Bool)

(declare-fun e!505112 () Bool)

(assert (=> mapNonEmpty!29329 (= mapRes!29329 (and tp!56389 e!505112))))

(declare-fun mapValue!29329 () ValueCell!8730)

(declare-fun mapRest!29329 () (Array (_ BitVec 32) ValueCell!8730))

(declare-fun mapKey!29329 () (_ BitVec 32))

(assert (=> mapNonEmpty!29329 (= (arr!25408 _values!1152) (store mapRest!29329 mapKey!29329 mapValue!29329))))

(declare-fun mapIsEmpty!29329 () Bool)

(assert (=> mapIsEmpty!29329 mapRes!29329))

(declare-fun b!902006 () Bool)

(assert (=> b!902006 (= e!505112 tp_is_empty!18423)))

(declare-fun b!902007 () Bool)

(assert (=> b!902007 (= e!505116 (and e!505114 mapRes!29329))))

(declare-fun condMapEmpty!29329 () Bool)

(declare-fun mapDefault!29329 () ValueCell!8730)

(assert (=> b!902007 (= condMapEmpty!29329 (= (arr!25408 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8730)) mapDefault!29329)))))

(assert (= (and start!77394 res!608890) b!902005))

(assert (= (and b!902007 condMapEmpty!29329) mapIsEmpty!29329))

(assert (= (and b!902007 (not condMapEmpty!29329)) mapNonEmpty!29329))

(get-info :version)

(assert (= (and mapNonEmpty!29329 ((_ is ValueCellFull!8730) mapValue!29329)) b!902006))

(assert (= (and b!902007 ((_ is ValueCellFull!8730) mapDefault!29329)) b!902004))

(assert (= start!77394 b!902007))

(declare-fun m!838227 () Bool)

(assert (=> start!77394 m!838227))

(declare-fun m!838229 () Bool)

(assert (=> start!77394 m!838229))

(declare-fun m!838231 () Bool)

(assert (=> start!77394 m!838231))

(declare-fun m!838233 () Bool)

(assert (=> mapNonEmpty!29329 m!838233))

(check-sat (not start!77394) (not mapNonEmpty!29329) tp_is_empty!18423)
(check-sat)
