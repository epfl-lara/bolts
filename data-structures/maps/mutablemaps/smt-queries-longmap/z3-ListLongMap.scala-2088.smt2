; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35706 () Bool)

(assert start!35706)

(declare-fun mapNonEmpty!13734 () Bool)

(declare-fun mapRes!13734 () Bool)

(declare-fun tp!27792 () Bool)

(declare-fun e!219397 () Bool)

(assert (=> mapNonEmpty!13734 (= mapRes!13734 (and tp!27792 e!219397))))

(declare-datatypes ((V!11845 0))(
  ( (V!11846 (val!4120 Int)) )
))
(declare-datatypes ((ValueCell!3732 0))(
  ( (ValueCellFull!3732 (v!6310 V!11845)) (EmptyCell!3732) )
))
(declare-fun mapRest!13734 () (Array (_ BitVec 32) ValueCell!3732))

(declare-fun mapValue!13734 () ValueCell!3732)

(declare-datatypes ((array!19831 0))(
  ( (array!19832 (arr!9406 (Array (_ BitVec 32) ValueCell!3732)) (size!9758 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19831)

(declare-fun mapKey!13734 () (_ BitVec 32))

(assert (=> mapNonEmpty!13734 (= (arr!9406 _values!1208) (store mapRest!13734 mapKey!13734 mapValue!13734))))

(declare-fun b!358368 () Bool)

(declare-fun res!199252 () Bool)

(declare-fun e!219400 () Bool)

(assert (=> b!358368 (=> (not res!199252) (not e!219400))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19833 0))(
  ( (array!19834 (arr!9407 (Array (_ BitVec 32) (_ BitVec 64))) (size!9759 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19833)

(assert (=> b!358368 (= res!199252 (and (= (size!9758 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9759 _keys!1456) (size!9758 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!358369 () Bool)

(assert (=> b!358369 (= e!219400 false)))

(declare-fun lt!166174 () Bool)

(declare-datatypes ((List!5456 0))(
  ( (Nil!5453) (Cons!5452 (h!6308 (_ BitVec 64)) (t!10614 List!5456)) )
))
(declare-fun arrayNoDuplicates!0 (array!19833 (_ BitVec 32) List!5456) Bool)

(assert (=> b!358369 (= lt!166174 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5453))))

(declare-fun b!358370 () Bool)

(declare-fun e!219401 () Bool)

(declare-fun e!219398 () Bool)

(assert (=> b!358370 (= e!219401 (and e!219398 mapRes!13734))))

(declare-fun condMapEmpty!13734 () Bool)

(declare-fun mapDefault!13734 () ValueCell!3732)

(assert (=> b!358370 (= condMapEmpty!13734 (= (arr!9406 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3732)) mapDefault!13734)))))

(declare-fun mapIsEmpty!13734 () Bool)

(assert (=> mapIsEmpty!13734 mapRes!13734))

(declare-fun b!358371 () Bool)

(declare-fun tp_is_empty!8151 () Bool)

(assert (=> b!358371 (= e!219398 tp_is_empty!8151)))

(declare-fun res!199250 () Bool)

(assert (=> start!35706 (=> (not res!199250) (not e!219400))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35706 (= res!199250 (validMask!0 mask!1842))))

(assert (=> start!35706 e!219400))

(assert (=> start!35706 true))

(declare-fun array_inv!6914 (array!19831) Bool)

(assert (=> start!35706 (and (array_inv!6914 _values!1208) e!219401)))

(declare-fun array_inv!6915 (array!19833) Bool)

(assert (=> start!35706 (array_inv!6915 _keys!1456)))

(declare-fun b!358372 () Bool)

(declare-fun res!199251 () Bool)

(assert (=> b!358372 (=> (not res!199251) (not e!219400))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19833 (_ BitVec 32)) Bool)

(assert (=> b!358372 (= res!199251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!358373 () Bool)

(assert (=> b!358373 (= e!219397 tp_is_empty!8151)))

(assert (= (and start!35706 res!199250) b!358368))

(assert (= (and b!358368 res!199252) b!358372))

(assert (= (and b!358372 res!199251) b!358369))

(assert (= (and b!358370 condMapEmpty!13734) mapIsEmpty!13734))

(assert (= (and b!358370 (not condMapEmpty!13734)) mapNonEmpty!13734))

(get-info :version)

(assert (= (and mapNonEmpty!13734 ((_ is ValueCellFull!3732) mapValue!13734)) b!358373))

(assert (= (and b!358370 ((_ is ValueCellFull!3732) mapDefault!13734)) b!358371))

(assert (= start!35706 b!358370))

(declare-fun m!356199 () Bool)

(assert (=> mapNonEmpty!13734 m!356199))

(declare-fun m!356201 () Bool)

(assert (=> b!358369 m!356201))

(declare-fun m!356203 () Bool)

(assert (=> start!35706 m!356203))

(declare-fun m!356205 () Bool)

(assert (=> start!35706 m!356205))

(declare-fun m!356207 () Bool)

(assert (=> start!35706 m!356207))

(declare-fun m!356209 () Bool)

(assert (=> b!358372 m!356209))

(check-sat (not b!358372) (not start!35706) (not mapNonEmpty!13734) tp_is_empty!8151 (not b!358369))
(check-sat)
