; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35700 () Bool)

(assert start!35700)

(declare-fun mapNonEmpty!13725 () Bool)

(declare-fun mapRes!13725 () Bool)

(declare-fun tp!27783 () Bool)

(declare-fun e!219356 () Bool)

(assert (=> mapNonEmpty!13725 (= mapRes!13725 (and tp!27783 e!219356))))

(declare-datatypes ((V!11837 0))(
  ( (V!11838 (val!4117 Int)) )
))
(declare-datatypes ((ValueCell!3729 0))(
  ( (ValueCellFull!3729 (v!6307 V!11837)) (EmptyCell!3729) )
))
(declare-fun mapValue!13725 () ValueCell!3729)

(declare-fun mapKey!13725 () (_ BitVec 32))

(declare-datatypes ((array!19819 0))(
  ( (array!19820 (arr!9400 (Array (_ BitVec 32) ValueCell!3729)) (size!9752 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19819)

(declare-fun mapRest!13725 () (Array (_ BitVec 32) ValueCell!3729))

(assert (=> mapNonEmpty!13725 (= (arr!9400 _values!1208) (store mapRest!13725 mapKey!13725 mapValue!13725))))

(declare-fun b!358314 () Bool)

(declare-fun e!219353 () Bool)

(declare-fun tp_is_empty!8145 () Bool)

(assert (=> b!358314 (= e!219353 tp_is_empty!8145)))

(declare-fun b!358315 () Bool)

(declare-fun res!199224 () Bool)

(declare-fun e!219352 () Bool)

(assert (=> b!358315 (=> (not res!199224) (not e!219352))))

(declare-datatypes ((array!19821 0))(
  ( (array!19822 (arr!9401 (Array (_ BitVec 32) (_ BitVec 64))) (size!9753 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19821)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19821 (_ BitVec 32)) Bool)

(assert (=> b!358315 (= res!199224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapIsEmpty!13725 () Bool)

(assert (=> mapIsEmpty!13725 mapRes!13725))

(declare-fun b!358316 () Bool)

(declare-fun res!199225 () Bool)

(assert (=> b!358316 (=> (not res!199225) (not e!219352))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!358316 (= res!199225 (and (= (size!9752 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9753 _keys!1456) (size!9752 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun res!199223 () Bool)

(assert (=> start!35700 (=> (not res!199223) (not e!219352))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35700 (= res!199223 (validMask!0 mask!1842))))

(assert (=> start!35700 e!219352))

(assert (=> start!35700 true))

(declare-fun e!219354 () Bool)

(declare-fun array_inv!6910 (array!19819) Bool)

(assert (=> start!35700 (and (array_inv!6910 _values!1208) e!219354)))

(declare-fun array_inv!6911 (array!19821) Bool)

(assert (=> start!35700 (array_inv!6911 _keys!1456)))

(declare-fun b!358317 () Bool)

(assert (=> b!358317 (= e!219354 (and e!219353 mapRes!13725))))

(declare-fun condMapEmpty!13725 () Bool)

(declare-fun mapDefault!13725 () ValueCell!3729)

(assert (=> b!358317 (= condMapEmpty!13725 (= (arr!9400 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3729)) mapDefault!13725)))))

(declare-fun b!358318 () Bool)

(assert (=> b!358318 (= e!219356 tp_is_empty!8145)))

(declare-fun b!358319 () Bool)

(assert (=> b!358319 (= e!219352 false)))

(declare-fun lt!166165 () Bool)

(declare-datatypes ((List!5454 0))(
  ( (Nil!5451) (Cons!5450 (h!6306 (_ BitVec 64)) (t!10612 List!5454)) )
))
(declare-fun arrayNoDuplicates!0 (array!19821 (_ BitVec 32) List!5454) Bool)

(assert (=> b!358319 (= lt!166165 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5451))))

(assert (= (and start!35700 res!199223) b!358316))

(assert (= (and b!358316 res!199225) b!358315))

(assert (= (and b!358315 res!199224) b!358319))

(assert (= (and b!358317 condMapEmpty!13725) mapIsEmpty!13725))

(assert (= (and b!358317 (not condMapEmpty!13725)) mapNonEmpty!13725))

(get-info :version)

(assert (= (and mapNonEmpty!13725 ((_ is ValueCellFull!3729) mapValue!13725)) b!358318))

(assert (= (and b!358317 ((_ is ValueCellFull!3729) mapDefault!13725)) b!358314))

(assert (= start!35700 b!358317))

(declare-fun m!356163 () Bool)

(assert (=> mapNonEmpty!13725 m!356163))

(declare-fun m!356165 () Bool)

(assert (=> b!358315 m!356165))

(declare-fun m!356167 () Bool)

(assert (=> start!35700 m!356167))

(declare-fun m!356169 () Bool)

(assert (=> start!35700 m!356169))

(declare-fun m!356171 () Bool)

(assert (=> start!35700 m!356171))

(declare-fun m!356173 () Bool)

(assert (=> b!358319 m!356173))

(check-sat (not b!358319) (not b!358315) tp_is_empty!8145 (not mapNonEmpty!13725) (not start!35700))
(check-sat)
