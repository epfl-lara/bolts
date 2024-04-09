; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41232 () Bool)

(assert start!41232)

(declare-fun b_free!11067 () Bool)

(declare-fun b_next!11067 () Bool)

(assert (=> start!41232 (= b_free!11067 (not b_next!11067))))

(declare-fun tp!39040 () Bool)

(declare-fun b_and!19405 () Bool)

(assert (=> start!41232 (= tp!39040 b_and!19405)))

(declare-fun b!460801 () Bool)

(declare-fun res!275613 () Bool)

(declare-fun e!268808 () Bool)

(assert (=> b!460801 (=> (not res!275613) (not e!268808))))

(declare-datatypes ((array!28573 0))(
  ( (array!28574 (arr!13723 (Array (_ BitVec 32) (_ BitVec 64))) (size!14075 (_ BitVec 32))) )
))
(declare-fun lt!208817 () array!28573)

(declare-datatypes ((List!8312 0))(
  ( (Nil!8309) (Cons!8308 (h!9164 (_ BitVec 64)) (t!14262 List!8312)) )
))
(declare-fun arrayNoDuplicates!0 (array!28573 (_ BitVec 32) List!8312) Bool)

(assert (=> b!460801 (= res!275613 (arrayNoDuplicates!0 lt!208817 #b00000000000000000000000000000000 Nil!8309))))

(declare-fun b!460802 () Bool)

(declare-fun res!275615 () Bool)

(declare-fun e!268811 () Bool)

(assert (=> b!460802 (=> (not res!275615) (not e!268811))))

(declare-fun _keys!709 () array!28573)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28573 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!460802 (= res!275615 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!460803 () Bool)

(declare-fun e!268812 () Bool)

(declare-fun tp_is_empty!12405 () Bool)

(assert (=> b!460803 (= e!268812 tp_is_empty!12405)))

(declare-fun b!460804 () Bool)

(assert (=> b!460804 (= e!268811 e!268808)))

(declare-fun res!275609 () Bool)

(assert (=> b!460804 (=> (not res!275609) (not e!268808))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28573 (_ BitVec 32)) Bool)

(assert (=> b!460804 (= res!275609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!208817 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!460804 (= lt!208817 (array!28574 (store (arr!13723 _keys!709) i!563 k0!794) (size!14075 _keys!709)))))

(declare-fun mapIsEmpty!20260 () Bool)

(declare-fun mapRes!20260 () Bool)

(assert (=> mapIsEmpty!20260 mapRes!20260))

(declare-fun b!460805 () Bool)

(declare-fun res!275611 () Bool)

(assert (=> b!460805 (=> (not res!275611) (not e!268811))))

(assert (=> b!460805 (= res!275611 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8309))))

(declare-fun b!460806 () Bool)

(declare-fun res!275620 () Bool)

(assert (=> b!460806 (=> (not res!275620) (not e!268811))))

(assert (=> b!460806 (= res!275620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!460807 () Bool)

(declare-fun e!268810 () Bool)

(assert (=> b!460807 (= e!268808 e!268810)))

(declare-fun res!275612 () Bool)

(assert (=> b!460807 (=> (not res!275612) (not e!268810))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!460807 (= res!275612 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!17645 0))(
  ( (V!17646 (val!6247 Int)) )
))
(declare-fun minValue!515 () V!17645)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5859 0))(
  ( (ValueCellFull!5859 (v!8525 V!17645)) (EmptyCell!5859) )
))
(declare-datatypes ((array!28575 0))(
  ( (array!28576 (arr!13724 (Array (_ BitVec 32) ValueCell!5859)) (size!14076 (_ BitVec 32))) )
))
(declare-fun lt!208818 () array!28575)

(declare-datatypes ((tuple2!8210 0))(
  ( (tuple2!8211 (_1!4115 (_ BitVec 64)) (_2!4115 V!17645)) )
))
(declare-datatypes ((List!8313 0))(
  ( (Nil!8310) (Cons!8309 (h!9165 tuple2!8210) (t!14263 List!8313)) )
))
(declare-datatypes ((ListLongMap!7137 0))(
  ( (ListLongMap!7138 (toList!3584 List!8313)) )
))
(declare-fun lt!208819 () ListLongMap!7137)

(declare-fun zeroValue!515 () V!17645)

(declare-fun getCurrentListMapNoExtraKeys!1752 (array!28573 array!28575 (_ BitVec 32) (_ BitVec 32) V!17645 V!17645 (_ BitVec 32) Int) ListLongMap!7137)

(assert (=> b!460807 (= lt!208819 (getCurrentListMapNoExtraKeys!1752 lt!208817 lt!208818 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!28575)

(declare-fun v!412 () V!17645)

(assert (=> b!460807 (= lt!208818 (array!28576 (store (arr!13724 _values!549) i!563 (ValueCellFull!5859 v!412)) (size!14076 _values!549)))))

(declare-fun lt!208815 () ListLongMap!7137)

(assert (=> b!460807 (= lt!208815 (getCurrentListMapNoExtraKeys!1752 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!460808 () Bool)

(declare-fun res!275619 () Bool)

(assert (=> b!460808 (=> (not res!275619) (not e!268811))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!460808 (= res!275619 (validKeyInArray!0 k0!794))))

(declare-fun b!460809 () Bool)

(declare-fun res!275617 () Bool)

(assert (=> b!460809 (=> (not res!275617) (not e!268811))))

(assert (=> b!460809 (= res!275617 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14075 _keys!709))))))

(declare-fun b!460810 () Bool)

(declare-fun e!268807 () Bool)

(assert (=> b!460810 (= e!268807 tp_is_empty!12405)))

(declare-fun b!460811 () Bool)

(declare-fun res!275621 () Bool)

(assert (=> b!460811 (=> (not res!275621) (not e!268811))))

(assert (=> b!460811 (= res!275621 (or (= (select (arr!13723 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13723 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!275616 () Bool)

(assert (=> start!41232 (=> (not res!275616) (not e!268811))))

(assert (=> start!41232 (= res!275616 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14075 _keys!709))))))

(assert (=> start!41232 e!268811))

(assert (=> start!41232 tp_is_empty!12405))

(assert (=> start!41232 tp!39040))

(assert (=> start!41232 true))

(declare-fun e!268806 () Bool)

(declare-fun array_inv!9916 (array!28575) Bool)

(assert (=> start!41232 (and (array_inv!9916 _values!549) e!268806)))

(declare-fun array_inv!9917 (array!28573) Bool)

(assert (=> start!41232 (array_inv!9917 _keys!709)))

(declare-fun b!460812 () Bool)

(assert (=> b!460812 (= e!268806 (and e!268812 mapRes!20260))))

(declare-fun condMapEmpty!20260 () Bool)

(declare-fun mapDefault!20260 () ValueCell!5859)

(assert (=> b!460812 (= condMapEmpty!20260 (= (arr!13724 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5859)) mapDefault!20260)))))

(declare-fun b!460813 () Bool)

(assert (=> b!460813 (= e!268810 (not true))))

(declare-fun +!1603 (ListLongMap!7137 tuple2!8210) ListLongMap!7137)

(assert (=> b!460813 (= (getCurrentListMapNoExtraKeys!1752 lt!208817 lt!208818 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1603 (getCurrentListMapNoExtraKeys!1752 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!8211 k0!794 v!412)))))

(declare-datatypes ((Unit!13369 0))(
  ( (Unit!13370) )
))
(declare-fun lt!208816 () Unit!13369)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!755 (array!28573 array!28575 (_ BitVec 32) (_ BitVec 32) V!17645 V!17645 (_ BitVec 32) (_ BitVec 64) V!17645 (_ BitVec 32) Int) Unit!13369)

(assert (=> b!460813 (= lt!208816 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!755 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!20260 () Bool)

(declare-fun tp!39039 () Bool)

(assert (=> mapNonEmpty!20260 (= mapRes!20260 (and tp!39039 e!268807))))

(declare-fun mapKey!20260 () (_ BitVec 32))

(declare-fun mapRest!20260 () (Array (_ BitVec 32) ValueCell!5859))

(declare-fun mapValue!20260 () ValueCell!5859)

(assert (=> mapNonEmpty!20260 (= (arr!13724 _values!549) (store mapRest!20260 mapKey!20260 mapValue!20260))))

(declare-fun b!460814 () Bool)

(declare-fun res!275618 () Bool)

(assert (=> b!460814 (=> (not res!275618) (not e!268811))))

(assert (=> b!460814 (= res!275618 (and (= (size!14076 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14075 _keys!709) (size!14076 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!460815 () Bool)

(declare-fun res!275610 () Bool)

(assert (=> b!460815 (=> (not res!275610) (not e!268811))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!460815 (= res!275610 (validMask!0 mask!1025))))

(declare-fun b!460816 () Bool)

(declare-fun res!275614 () Bool)

(assert (=> b!460816 (=> (not res!275614) (not e!268808))))

(assert (=> b!460816 (= res!275614 (bvsle from!863 i!563))))

(assert (= (and start!41232 res!275616) b!460815))

(assert (= (and b!460815 res!275610) b!460814))

(assert (= (and b!460814 res!275618) b!460806))

(assert (= (and b!460806 res!275620) b!460805))

(assert (= (and b!460805 res!275611) b!460809))

(assert (= (and b!460809 res!275617) b!460808))

(assert (= (and b!460808 res!275619) b!460811))

(assert (= (and b!460811 res!275621) b!460802))

(assert (= (and b!460802 res!275615) b!460804))

(assert (= (and b!460804 res!275609) b!460801))

(assert (= (and b!460801 res!275613) b!460816))

(assert (= (and b!460816 res!275614) b!460807))

(assert (= (and b!460807 res!275612) b!460813))

(assert (= (and b!460812 condMapEmpty!20260) mapIsEmpty!20260))

(assert (= (and b!460812 (not condMapEmpty!20260)) mapNonEmpty!20260))

(get-info :version)

(assert (= (and mapNonEmpty!20260 ((_ is ValueCellFull!5859) mapValue!20260)) b!460810))

(assert (= (and b!460812 ((_ is ValueCellFull!5859) mapDefault!20260)) b!460803))

(assert (= start!41232 b!460812))

(declare-fun m!444079 () Bool)

(assert (=> b!460806 m!444079))

(declare-fun m!444081 () Bool)

(assert (=> b!460815 m!444081))

(declare-fun m!444083 () Bool)

(assert (=> b!460802 m!444083))

(declare-fun m!444085 () Bool)

(assert (=> b!460813 m!444085))

(declare-fun m!444087 () Bool)

(assert (=> b!460813 m!444087))

(assert (=> b!460813 m!444087))

(declare-fun m!444089 () Bool)

(assert (=> b!460813 m!444089))

(declare-fun m!444091 () Bool)

(assert (=> b!460813 m!444091))

(declare-fun m!444093 () Bool)

(assert (=> b!460811 m!444093))

(declare-fun m!444095 () Bool)

(assert (=> b!460808 m!444095))

(declare-fun m!444097 () Bool)

(assert (=> b!460801 m!444097))

(declare-fun m!444099 () Bool)

(assert (=> b!460807 m!444099))

(declare-fun m!444101 () Bool)

(assert (=> b!460807 m!444101))

(declare-fun m!444103 () Bool)

(assert (=> b!460807 m!444103))

(declare-fun m!444105 () Bool)

(assert (=> start!41232 m!444105))

(declare-fun m!444107 () Bool)

(assert (=> start!41232 m!444107))

(declare-fun m!444109 () Bool)

(assert (=> b!460805 m!444109))

(declare-fun m!444111 () Bool)

(assert (=> mapNonEmpty!20260 m!444111))

(declare-fun m!444113 () Bool)

(assert (=> b!460804 m!444113))

(declare-fun m!444115 () Bool)

(assert (=> b!460804 m!444115))

(check-sat (not b!460813) (not start!41232) (not b!460804) tp_is_empty!12405 (not b!460805) (not b!460801) b_and!19405 (not b!460808) (not b!460802) (not b_next!11067) (not b!460815) (not b!460806) (not mapNonEmpty!20260) (not b!460807))
(check-sat b_and!19405 (not b_next!11067))
