; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35580 () Bool)

(assert start!35580)

(declare-fun b!356422 () Bool)

(declare-fun res!197873 () Bool)

(declare-fun e!218375 () Bool)

(assert (=> b!356422 (=> (not res!197873) (not e!218375))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!19587 0))(
  ( (array!19588 (arr!9284 (Array (_ BitVec 32) (_ BitVec 64))) (size!9636 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19587)

(assert (=> b!356422 (= res!197873 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9636 _keys!1456))))))

(declare-fun b!356423 () Bool)

(declare-fun res!197871 () Bool)

(assert (=> b!356423 (=> (not res!197871) (not e!218375))))

(declare-fun k0!1077 () (_ BitVec 64))

(assert (=> b!356423 (= res!197871 (not (= (select (arr!9284 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!356424 () Bool)

(declare-fun res!197878 () Bool)

(assert (=> b!356424 (=> (not res!197878) (not e!218375))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19587 (_ BitVec 32)) Bool)

(assert (=> b!356424 (= res!197878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!356425 () Bool)

(declare-fun res!197876 () Bool)

(assert (=> b!356425 (=> (not res!197876) (not e!218375))))

(declare-fun arrayContainsKey!0 (array!19587 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!356425 (= res!197876 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!356426 () Bool)

(declare-fun e!218371 () Bool)

(declare-fun e!218374 () Bool)

(declare-fun mapRes!13545 () Bool)

(assert (=> b!356426 (= e!218371 (and e!218374 mapRes!13545))))

(declare-fun condMapEmpty!13545 () Bool)

(declare-datatypes ((V!11677 0))(
  ( (V!11678 (val!4057 Int)) )
))
(declare-datatypes ((ValueCell!3669 0))(
  ( (ValueCellFull!3669 (v!6247 V!11677)) (EmptyCell!3669) )
))
(declare-datatypes ((array!19589 0))(
  ( (array!19590 (arr!9285 (Array (_ BitVec 32) ValueCell!3669)) (size!9637 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19589)

(declare-fun mapDefault!13545 () ValueCell!3669)

(assert (=> b!356426 (= condMapEmpty!13545 (= (arr!9285 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3669)) mapDefault!13545)))))

(declare-fun b!356427 () Bool)

(declare-fun res!197875 () Bool)

(assert (=> b!356427 (=> (not res!197875) (not e!218375))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!356427 (= res!197875 (and (= (size!9637 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9636 _keys!1456) (size!9637 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!356428 () Bool)

(declare-fun res!197874 () Bool)

(assert (=> b!356428 (=> (not res!197874) (not e!218375))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!356428 (= res!197874 (validKeyInArray!0 k0!1077))))

(declare-fun b!356429 () Bool)

(declare-fun res!197872 () Bool)

(assert (=> b!356429 (=> (not res!197872) (not e!218375))))

(declare-datatypes ((List!5393 0))(
  ( (Nil!5390) (Cons!5389 (h!6245 (_ BitVec 64)) (t!10551 List!5393)) )
))
(declare-fun arrayNoDuplicates!0 (array!19587 (_ BitVec 32) List!5393) Bool)

(assert (=> b!356429 (= res!197872 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5390))))

(declare-fun b!356430 () Bool)

(declare-fun tp_is_empty!8025 () Bool)

(assert (=> b!356430 (= e!218374 tp_is_empty!8025)))

(declare-fun b!356431 () Bool)

(assert (=> b!356431 (= e!218375 (not true))))

(assert (=> b!356431 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun minValue!1150 () V!11677)

(declare-datatypes ((Unit!10977 0))(
  ( (Unit!10978) )
))
(declare-fun lt!165913 () Unit!10977)

(declare-fun zeroValue!1150 () V!11677)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!9 (array!19587 array!19589 (_ BitVec 32) (_ BitVec 32) V!11677 V!11677 (_ BitVec 64) (_ BitVec 32)) Unit!10977)

(assert (=> b!356431 (= lt!165913 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!9 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun mapIsEmpty!13545 () Bool)

(assert (=> mapIsEmpty!13545 mapRes!13545))

(declare-fun b!356432 () Bool)

(declare-fun e!218372 () Bool)

(assert (=> b!356432 (= e!218372 tp_is_empty!8025)))

(declare-fun mapNonEmpty!13545 () Bool)

(declare-fun tp!27522 () Bool)

(assert (=> mapNonEmpty!13545 (= mapRes!13545 (and tp!27522 e!218372))))

(declare-fun mapValue!13545 () ValueCell!3669)

(declare-fun mapKey!13545 () (_ BitVec 32))

(declare-fun mapRest!13545 () (Array (_ BitVec 32) ValueCell!3669))

(assert (=> mapNonEmpty!13545 (= (arr!9285 _values!1208) (store mapRest!13545 mapKey!13545 mapValue!13545))))

(declare-fun res!197877 () Bool)

(assert (=> start!35580 (=> (not res!197877) (not e!218375))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35580 (= res!197877 (validMask!0 mask!1842))))

(assert (=> start!35580 e!218375))

(assert (=> start!35580 tp_is_empty!8025))

(assert (=> start!35580 true))

(declare-fun array_inv!6834 (array!19587) Bool)

(assert (=> start!35580 (array_inv!6834 _keys!1456)))

(declare-fun array_inv!6835 (array!19589) Bool)

(assert (=> start!35580 (and (array_inv!6835 _values!1208) e!218371)))

(assert (= (and start!35580 res!197877) b!356427))

(assert (= (and b!356427 res!197875) b!356424))

(assert (= (and b!356424 res!197878) b!356429))

(assert (= (and b!356429 res!197872) b!356428))

(assert (= (and b!356428 res!197874) b!356422))

(assert (= (and b!356422 res!197873) b!356425))

(assert (= (and b!356425 res!197876) b!356423))

(assert (= (and b!356423 res!197871) b!356431))

(assert (= (and b!356426 condMapEmpty!13545) mapIsEmpty!13545))

(assert (= (and b!356426 (not condMapEmpty!13545)) mapNonEmpty!13545))

(get-info :version)

(assert (= (and mapNonEmpty!13545 ((_ is ValueCellFull!3669) mapValue!13545)) b!356432))

(assert (= (and b!356426 ((_ is ValueCellFull!3669) mapDefault!13545)) b!356430))

(assert (= start!35580 b!356426))

(declare-fun m!354799 () Bool)

(assert (=> b!356428 m!354799))

(declare-fun m!354801 () Bool)

(assert (=> b!356431 m!354801))

(declare-fun m!354803 () Bool)

(assert (=> b!356431 m!354803))

(declare-fun m!354805 () Bool)

(assert (=> b!356429 m!354805))

(declare-fun m!354807 () Bool)

(assert (=> mapNonEmpty!13545 m!354807))

(declare-fun m!354809 () Bool)

(assert (=> b!356425 m!354809))

(declare-fun m!354811 () Bool)

(assert (=> b!356424 m!354811))

(declare-fun m!354813 () Bool)

(assert (=> b!356423 m!354813))

(declare-fun m!354815 () Bool)

(assert (=> start!35580 m!354815))

(declare-fun m!354817 () Bool)

(assert (=> start!35580 m!354817))

(declare-fun m!354819 () Bool)

(assert (=> start!35580 m!354819))

(check-sat (not b!356424) (not mapNonEmpty!13545) (not b!356428) (not b!356431) (not start!35580) tp_is_empty!8025 (not b!356425) (not b!356429))
(check-sat)
