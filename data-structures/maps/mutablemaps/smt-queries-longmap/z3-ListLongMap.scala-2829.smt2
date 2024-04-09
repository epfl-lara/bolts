; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40948 () Bool)

(assert start!40948)

(declare-fun b_free!10875 () Bool)

(declare-fun b_next!10875 () Bool)

(assert (=> start!40948 (= b_free!10875 (not b_next!10875))))

(declare-fun tp!38452 () Bool)

(declare-fun b_and!19035 () Bool)

(assert (=> start!40948 (= tp!38452 b_and!19035)))

(declare-fun b!455117 () Bool)

(declare-fun res!271425 () Bool)

(declare-fun e!266122 () Bool)

(assert (=> b!455117 (=> (not res!271425) (not e!266122))))

(declare-datatypes ((array!28195 0))(
  ( (array!28196 (arr!13538 (Array (_ BitVec 32) (_ BitVec 64))) (size!13890 (_ BitVec 32))) )
))
(declare-fun lt!206273 () array!28195)

(declare-datatypes ((List!8155 0))(
  ( (Nil!8152) (Cons!8151 (h!9007 (_ BitVec 64)) (t!13991 List!8155)) )
))
(declare-fun arrayNoDuplicates!0 (array!28195 (_ BitVec 32) List!8155) Bool)

(assert (=> b!455117 (= res!271425 (arrayNoDuplicates!0 lt!206273 #b00000000000000000000000000000000 Nil!8152))))

(declare-fun b!455118 () Bool)

(declare-fun e!266121 () Bool)

(declare-fun e!266123 () Bool)

(declare-fun mapRes!19960 () Bool)

(assert (=> b!455118 (= e!266121 (and e!266123 mapRes!19960))))

(declare-fun condMapEmpty!19960 () Bool)

(declare-datatypes ((V!17389 0))(
  ( (V!17390 (val!6151 Int)) )
))
(declare-datatypes ((ValueCell!5763 0))(
  ( (ValueCellFull!5763 (v!8413 V!17389)) (EmptyCell!5763) )
))
(declare-datatypes ((array!28197 0))(
  ( (array!28198 (arr!13539 (Array (_ BitVec 32) ValueCell!5763)) (size!13891 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28197)

(declare-fun mapDefault!19960 () ValueCell!5763)

(assert (=> b!455118 (= condMapEmpty!19960 (= (arr!13539 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5763)) mapDefault!19960)))))

(declare-fun b!455119 () Bool)

(declare-fun res!271427 () Bool)

(declare-fun e!266124 () Bool)

(assert (=> b!455119 (=> (not res!271427) (not e!266124))))

(declare-fun _keys!709 () array!28195)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28195 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!455119 (= res!271427 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!455120 () Bool)

(declare-fun res!271429 () Bool)

(assert (=> b!455120 (=> (not res!271429) (not e!266122))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!455120 (= res!271429 (bvsle from!863 i!563))))

(declare-fun b!455121 () Bool)

(declare-fun res!271423 () Bool)

(assert (=> b!455121 (=> (not res!271423) (not e!266124))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!455121 (= res!271423 (validMask!0 mask!1025))))

(declare-fun b!455122 () Bool)

(declare-fun res!271420 () Bool)

(assert (=> b!455122 (=> (not res!271420) (not e!266124))))

(assert (=> b!455122 (= res!271420 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8152))))

(declare-fun b!455123 () Bool)

(assert (=> b!455123 (= e!266122 false)))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!8048 0))(
  ( (tuple2!8049 (_1!4034 (_ BitVec 64)) (_2!4034 V!17389)) )
))
(declare-datatypes ((List!8156 0))(
  ( (Nil!8153) (Cons!8152 (h!9008 tuple2!8048) (t!13992 List!8156)) )
))
(declare-datatypes ((ListLongMap!6975 0))(
  ( (ListLongMap!6976 (toList!3503 List!8156)) )
))
(declare-fun lt!206274 () ListLongMap!6975)

(declare-fun zeroValue!515 () V!17389)

(declare-fun v!412 () V!17389)

(declare-fun minValue!515 () V!17389)

(declare-fun getCurrentListMapNoExtraKeys!1679 (array!28195 array!28197 (_ BitVec 32) (_ BitVec 32) V!17389 V!17389 (_ BitVec 32) Int) ListLongMap!6975)

(assert (=> b!455123 (= lt!206274 (getCurrentListMapNoExtraKeys!1679 lt!206273 (array!28198 (store (arr!13539 _values!549) i!563 (ValueCellFull!5763 v!412)) (size!13891 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206272 () ListLongMap!6975)

(assert (=> b!455123 (= lt!206272 (getCurrentListMapNoExtraKeys!1679 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!455124 () Bool)

(assert (=> b!455124 (= e!266124 e!266122)))

(declare-fun res!271421 () Bool)

(assert (=> b!455124 (=> (not res!271421) (not e!266122))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28195 (_ BitVec 32)) Bool)

(assert (=> b!455124 (= res!271421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206273 mask!1025))))

(assert (=> b!455124 (= lt!206273 (array!28196 (store (arr!13538 _keys!709) i!563 k0!794) (size!13890 _keys!709)))))

(declare-fun mapIsEmpty!19960 () Bool)

(assert (=> mapIsEmpty!19960 mapRes!19960))

(declare-fun b!455125 () Bool)

(declare-fun res!271419 () Bool)

(assert (=> b!455125 (=> (not res!271419) (not e!266124))))

(assert (=> b!455125 (= res!271419 (and (= (size!13891 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13890 _keys!709) (size!13891 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!455126 () Bool)

(declare-fun tp_is_empty!12213 () Bool)

(assert (=> b!455126 (= e!266123 tp_is_empty!12213)))

(declare-fun mapNonEmpty!19960 () Bool)

(declare-fun tp!38451 () Bool)

(declare-fun e!266126 () Bool)

(assert (=> mapNonEmpty!19960 (= mapRes!19960 (and tp!38451 e!266126))))

(declare-fun mapValue!19960 () ValueCell!5763)

(declare-fun mapKey!19960 () (_ BitVec 32))

(declare-fun mapRest!19960 () (Array (_ BitVec 32) ValueCell!5763))

(assert (=> mapNonEmpty!19960 (= (arr!13539 _values!549) (store mapRest!19960 mapKey!19960 mapValue!19960))))

(declare-fun b!455127 () Bool)

(declare-fun res!271428 () Bool)

(assert (=> b!455127 (=> (not res!271428) (not e!266124))))

(assert (=> b!455127 (= res!271428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!455128 () Bool)

(declare-fun res!271422 () Bool)

(assert (=> b!455128 (=> (not res!271422) (not e!266124))))

(assert (=> b!455128 (= res!271422 (or (= (select (arr!13538 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13538 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!455129 () Bool)

(assert (=> b!455129 (= e!266126 tp_is_empty!12213)))

(declare-fun res!271430 () Bool)

(assert (=> start!40948 (=> (not res!271430) (not e!266124))))

(assert (=> start!40948 (= res!271430 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13890 _keys!709))))))

(assert (=> start!40948 e!266124))

(assert (=> start!40948 tp_is_empty!12213))

(assert (=> start!40948 tp!38452))

(assert (=> start!40948 true))

(declare-fun array_inv!9794 (array!28197) Bool)

(assert (=> start!40948 (and (array_inv!9794 _values!549) e!266121)))

(declare-fun array_inv!9795 (array!28195) Bool)

(assert (=> start!40948 (array_inv!9795 _keys!709)))

(declare-fun b!455130 () Bool)

(declare-fun res!271424 () Bool)

(assert (=> b!455130 (=> (not res!271424) (not e!266124))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!455130 (= res!271424 (validKeyInArray!0 k0!794))))

(declare-fun b!455131 () Bool)

(declare-fun res!271426 () Bool)

(assert (=> b!455131 (=> (not res!271426) (not e!266124))))

(assert (=> b!455131 (= res!271426 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13890 _keys!709))))))

(assert (= (and start!40948 res!271430) b!455121))

(assert (= (and b!455121 res!271423) b!455125))

(assert (= (and b!455125 res!271419) b!455127))

(assert (= (and b!455127 res!271428) b!455122))

(assert (= (and b!455122 res!271420) b!455131))

(assert (= (and b!455131 res!271426) b!455130))

(assert (= (and b!455130 res!271424) b!455128))

(assert (= (and b!455128 res!271422) b!455119))

(assert (= (and b!455119 res!271427) b!455124))

(assert (= (and b!455124 res!271421) b!455117))

(assert (= (and b!455117 res!271425) b!455120))

(assert (= (and b!455120 res!271429) b!455123))

(assert (= (and b!455118 condMapEmpty!19960) mapIsEmpty!19960))

(assert (= (and b!455118 (not condMapEmpty!19960)) mapNonEmpty!19960))

(get-info :version)

(assert (= (and mapNonEmpty!19960 ((_ is ValueCellFull!5763) mapValue!19960)) b!455129))

(assert (= (and b!455118 ((_ is ValueCellFull!5763) mapDefault!19960)) b!455126))

(assert (= start!40948 b!455118))

(declare-fun m!438981 () Bool)

(assert (=> b!455128 m!438981))

(declare-fun m!438983 () Bool)

(assert (=> b!455117 m!438983))

(declare-fun m!438985 () Bool)

(assert (=> b!455122 m!438985))

(declare-fun m!438987 () Bool)

(assert (=> b!455127 m!438987))

(declare-fun m!438989 () Bool)

(assert (=> b!455130 m!438989))

(declare-fun m!438991 () Bool)

(assert (=> start!40948 m!438991))

(declare-fun m!438993 () Bool)

(assert (=> start!40948 m!438993))

(declare-fun m!438995 () Bool)

(assert (=> b!455119 m!438995))

(declare-fun m!438997 () Bool)

(assert (=> mapNonEmpty!19960 m!438997))

(declare-fun m!438999 () Bool)

(assert (=> b!455121 m!438999))

(declare-fun m!439001 () Bool)

(assert (=> b!455123 m!439001))

(declare-fun m!439003 () Bool)

(assert (=> b!455123 m!439003))

(declare-fun m!439005 () Bool)

(assert (=> b!455123 m!439005))

(declare-fun m!439007 () Bool)

(assert (=> b!455124 m!439007))

(declare-fun m!439009 () Bool)

(assert (=> b!455124 m!439009))

(check-sat tp_is_empty!12213 (not b!455124) (not mapNonEmpty!19960) (not b!455130) (not b!455119) b_and!19035 (not b!455117) (not start!40948) (not b!455121) (not b!455122) (not b!455123) (not b_next!10875) (not b!455127))
(check-sat b_and!19035 (not b_next!10875))
