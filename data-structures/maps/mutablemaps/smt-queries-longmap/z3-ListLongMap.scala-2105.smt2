; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35808 () Bool)

(assert start!35808)

(declare-fun res!199808 () Bool)

(declare-fun e!220164 () Bool)

(assert (=> start!35808 (=> (not res!199808) (not e!220164))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35808 (= res!199808 (validMask!0 mask!1842))))

(assert (=> start!35808 e!220164))

(assert (=> start!35808 true))

(declare-datatypes ((V!11981 0))(
  ( (V!11982 (val!4171 Int)) )
))
(declare-datatypes ((ValueCell!3783 0))(
  ( (ValueCellFull!3783 (v!6361 V!11981)) (EmptyCell!3783) )
))
(declare-datatypes ((array!20027 0))(
  ( (array!20028 (arr!9504 (Array (_ BitVec 32) ValueCell!3783)) (size!9856 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20027)

(declare-fun e!220165 () Bool)

(declare-fun array_inv!6996 (array!20027) Bool)

(assert (=> start!35808 (and (array_inv!6996 _values!1208) e!220165)))

(declare-datatypes ((array!20029 0))(
  ( (array!20030 (arr!9505 (Array (_ BitVec 32) (_ BitVec 64))) (size!9857 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20029)

(declare-fun array_inv!6997 (array!20029) Bool)

(assert (=> start!35808 (array_inv!6997 _keys!1456)))

(declare-fun b!359385 () Bool)

(declare-fun e!220163 () Bool)

(declare-fun tp_is_empty!8253 () Bool)

(assert (=> b!359385 (= e!220163 tp_is_empty!8253)))

(declare-fun b!359386 () Bool)

(declare-fun res!199810 () Bool)

(assert (=> b!359386 (=> (not res!199810) (not e!220164))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20029 (_ BitVec 32)) Bool)

(assert (=> b!359386 (= res!199810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!359387 () Bool)

(declare-fun e!220162 () Bool)

(declare-fun mapRes!13887 () Bool)

(assert (=> b!359387 (= e!220165 (and e!220162 mapRes!13887))))

(declare-fun condMapEmpty!13887 () Bool)

(declare-fun mapDefault!13887 () ValueCell!3783)

(assert (=> b!359387 (= condMapEmpty!13887 (= (arr!9504 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3783)) mapDefault!13887)))))

(declare-fun b!359388 () Bool)

(assert (=> b!359388 (= e!220164 false)))

(declare-fun lt!166327 () Bool)

(declare-datatypes ((List!5496 0))(
  ( (Nil!5493) (Cons!5492 (h!6348 (_ BitVec 64)) (t!10654 List!5496)) )
))
(declare-fun arrayNoDuplicates!0 (array!20029 (_ BitVec 32) List!5496) Bool)

(assert (=> b!359388 (= lt!166327 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5493))))

(declare-fun b!359389 () Bool)

(declare-fun res!199809 () Bool)

(assert (=> b!359389 (=> (not res!199809) (not e!220164))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!359389 (= res!199809 (and (= (size!9856 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9857 _keys!1456) (size!9856 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!13887 () Bool)

(assert (=> mapIsEmpty!13887 mapRes!13887))

(declare-fun mapNonEmpty!13887 () Bool)

(declare-fun tp!27954 () Bool)

(assert (=> mapNonEmpty!13887 (= mapRes!13887 (and tp!27954 e!220163))))

(declare-fun mapRest!13887 () (Array (_ BitVec 32) ValueCell!3783))

(declare-fun mapValue!13887 () ValueCell!3783)

(declare-fun mapKey!13887 () (_ BitVec 32))

(assert (=> mapNonEmpty!13887 (= (arr!9504 _values!1208) (store mapRest!13887 mapKey!13887 mapValue!13887))))

(declare-fun b!359390 () Bool)

(assert (=> b!359390 (= e!220162 tp_is_empty!8253)))

(assert (= (and start!35808 res!199808) b!359389))

(assert (= (and b!359389 res!199809) b!359386))

(assert (= (and b!359386 res!199810) b!359388))

(assert (= (and b!359387 condMapEmpty!13887) mapIsEmpty!13887))

(assert (= (and b!359387 (not condMapEmpty!13887)) mapNonEmpty!13887))

(get-info :version)

(assert (= (and mapNonEmpty!13887 ((_ is ValueCellFull!3783) mapValue!13887)) b!359385))

(assert (= (and b!359387 ((_ is ValueCellFull!3783) mapDefault!13887)) b!359390))

(assert (= start!35808 b!359387))

(declare-fun m!356883 () Bool)

(assert (=> start!35808 m!356883))

(declare-fun m!356885 () Bool)

(assert (=> start!35808 m!356885))

(declare-fun m!356887 () Bool)

(assert (=> start!35808 m!356887))

(declare-fun m!356889 () Bool)

(assert (=> b!359386 m!356889))

(declare-fun m!356891 () Bool)

(assert (=> b!359388 m!356891))

(declare-fun m!356893 () Bool)

(assert (=> mapNonEmpty!13887 m!356893))

(check-sat (not b!359386) tp_is_empty!8253 (not mapNonEmpty!13887) (not b!359388) (not start!35808))
(check-sat)
