; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40900 () Bool)

(assert start!40900)

(declare-fun b_free!10827 () Bool)

(declare-fun b_next!10827 () Bool)

(assert (=> start!40900 (= b_free!10827 (not b_next!10827))))

(declare-fun tp!38308 () Bool)

(declare-fun b_and!18987 () Bool)

(assert (=> start!40900 (= tp!38308 b_and!18987)))

(declare-fun b!454037 () Bool)

(declare-fun e!265693 () Bool)

(assert (=> b!454037 (= e!265693 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!28099 0))(
  ( (array!28100 (arr!13490 (Array (_ BitVec 32) (_ BitVec 64))) (size!13842 (_ BitVec 32))) )
))
(declare-fun lt!206058 () array!28099)

(declare-datatypes ((V!17325 0))(
  ( (V!17326 (val!6127 Int)) )
))
(declare-fun minValue!515 () V!17325)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5739 0))(
  ( (ValueCellFull!5739 (v!8389 V!17325)) (EmptyCell!5739) )
))
(declare-datatypes ((array!28101 0))(
  ( (array!28102 (arr!13491 (Array (_ BitVec 32) ValueCell!5739)) (size!13843 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28101)

(declare-fun zeroValue!515 () V!17325)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((tuple2!8020 0))(
  ( (tuple2!8021 (_1!4020 (_ BitVec 64)) (_2!4020 V!17325)) )
))
(declare-datatypes ((List!8122 0))(
  ( (Nil!8119) (Cons!8118 (h!8974 tuple2!8020) (t!13958 List!8122)) )
))
(declare-datatypes ((ListLongMap!6947 0))(
  ( (ListLongMap!6948 (toList!3489 List!8122)) )
))
(declare-fun lt!206056 () ListLongMap!6947)

(declare-fun v!412 () V!17325)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1665 (array!28099 array!28101 (_ BitVec 32) (_ BitVec 32) V!17325 V!17325 (_ BitVec 32) Int) ListLongMap!6947)

(assert (=> b!454037 (= lt!206056 (getCurrentListMapNoExtraKeys!1665 lt!206058 (array!28102 (store (arr!13491 _values!549) i!563 (ValueCellFull!5739 v!412)) (size!13843 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206057 () ListLongMap!6947)

(declare-fun _keys!709 () array!28099)

(assert (=> b!454037 (= lt!206057 (getCurrentListMapNoExtraKeys!1665 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!454038 () Bool)

(declare-fun e!265691 () Bool)

(assert (=> b!454038 (= e!265691 e!265693)))

(declare-fun res!270565 () Bool)

(assert (=> b!454038 (=> (not res!270565) (not e!265693))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28099 (_ BitVec 32)) Bool)

(assert (=> b!454038 (= res!270565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206058 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!454038 (= lt!206058 (array!28100 (store (arr!13490 _keys!709) i!563 k0!794) (size!13842 _keys!709)))))

(declare-fun b!454039 () Bool)

(declare-fun e!265692 () Bool)

(declare-fun tp_is_empty!12165 () Bool)

(assert (=> b!454039 (= e!265692 tp_is_empty!12165)))

(declare-fun mapNonEmpty!19888 () Bool)

(declare-fun mapRes!19888 () Bool)

(declare-fun tp!38307 () Bool)

(declare-fun e!265689 () Bool)

(assert (=> mapNonEmpty!19888 (= mapRes!19888 (and tp!38307 e!265689))))

(declare-fun mapValue!19888 () ValueCell!5739)

(declare-fun mapKey!19888 () (_ BitVec 32))

(declare-fun mapRest!19888 () (Array (_ BitVec 32) ValueCell!5739))

(assert (=> mapNonEmpty!19888 (= (arr!13491 _values!549) (store mapRest!19888 mapKey!19888 mapValue!19888))))

(declare-fun b!454041 () Bool)

(declare-fun res!270561 () Bool)

(assert (=> b!454041 (=> (not res!270561) (not e!265691))))

(declare-datatypes ((List!8123 0))(
  ( (Nil!8120) (Cons!8119 (h!8975 (_ BitVec 64)) (t!13959 List!8123)) )
))
(declare-fun arrayNoDuplicates!0 (array!28099 (_ BitVec 32) List!8123) Bool)

(assert (=> b!454041 (= res!270561 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8120))))

(declare-fun b!454042 () Bool)

(declare-fun res!270566 () Bool)

(assert (=> b!454042 (=> (not res!270566) (not e!265691))))

(assert (=> b!454042 (= res!270566 (and (= (size!13843 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13842 _keys!709) (size!13843 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!454043 () Bool)

(declare-fun e!265690 () Bool)

(assert (=> b!454043 (= e!265690 (and e!265692 mapRes!19888))))

(declare-fun condMapEmpty!19888 () Bool)

(declare-fun mapDefault!19888 () ValueCell!5739)

(assert (=> b!454043 (= condMapEmpty!19888 (= (arr!13491 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5739)) mapDefault!19888)))))

(declare-fun mapIsEmpty!19888 () Bool)

(assert (=> mapIsEmpty!19888 mapRes!19888))

(declare-fun b!454044 () Bool)

(declare-fun res!270563 () Bool)

(assert (=> b!454044 (=> (not res!270563) (not e!265691))))

(declare-fun arrayContainsKey!0 (array!28099 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!454044 (= res!270563 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!454045 () Bool)

(declare-fun res!270556 () Bool)

(assert (=> b!454045 (=> (not res!270556) (not e!265691))))

(assert (=> b!454045 (= res!270556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!454046 () Bool)

(declare-fun res!270557 () Bool)

(assert (=> b!454046 (=> (not res!270557) (not e!265693))))

(assert (=> b!454046 (= res!270557 (arrayNoDuplicates!0 lt!206058 #b00000000000000000000000000000000 Nil!8120))))

(declare-fun b!454047 () Bool)

(declare-fun res!270564 () Bool)

(assert (=> b!454047 (=> (not res!270564) (not e!265691))))

(assert (=> b!454047 (= res!270564 (or (= (select (arr!13490 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13490 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!454048 () Bool)

(declare-fun res!270560 () Bool)

(assert (=> b!454048 (=> (not res!270560) (not e!265691))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!454048 (= res!270560 (validMask!0 mask!1025))))

(declare-fun b!454049 () Bool)

(declare-fun res!270558 () Bool)

(assert (=> b!454049 (=> (not res!270558) (not e!265691))))

(assert (=> b!454049 (= res!270558 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13842 _keys!709))))))

(declare-fun b!454040 () Bool)

(declare-fun res!270562 () Bool)

(assert (=> b!454040 (=> (not res!270562) (not e!265693))))

(assert (=> b!454040 (= res!270562 (bvsle from!863 i!563))))

(declare-fun res!270555 () Bool)

(assert (=> start!40900 (=> (not res!270555) (not e!265691))))

(assert (=> start!40900 (= res!270555 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13842 _keys!709))))))

(assert (=> start!40900 e!265691))

(assert (=> start!40900 tp_is_empty!12165))

(assert (=> start!40900 tp!38308))

(assert (=> start!40900 true))

(declare-fun array_inv!9766 (array!28101) Bool)

(assert (=> start!40900 (and (array_inv!9766 _values!549) e!265690)))

(declare-fun array_inv!9767 (array!28099) Bool)

(assert (=> start!40900 (array_inv!9767 _keys!709)))

(declare-fun b!454050 () Bool)

(assert (=> b!454050 (= e!265689 tp_is_empty!12165)))

(declare-fun b!454051 () Bool)

(declare-fun res!270559 () Bool)

(assert (=> b!454051 (=> (not res!270559) (not e!265691))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!454051 (= res!270559 (validKeyInArray!0 k0!794))))

(assert (= (and start!40900 res!270555) b!454048))

(assert (= (and b!454048 res!270560) b!454042))

(assert (= (and b!454042 res!270566) b!454045))

(assert (= (and b!454045 res!270556) b!454041))

(assert (= (and b!454041 res!270561) b!454049))

(assert (= (and b!454049 res!270558) b!454051))

(assert (= (and b!454051 res!270559) b!454047))

(assert (= (and b!454047 res!270564) b!454044))

(assert (= (and b!454044 res!270563) b!454038))

(assert (= (and b!454038 res!270565) b!454046))

(assert (= (and b!454046 res!270557) b!454040))

(assert (= (and b!454040 res!270562) b!454037))

(assert (= (and b!454043 condMapEmpty!19888) mapIsEmpty!19888))

(assert (= (and b!454043 (not condMapEmpty!19888)) mapNonEmpty!19888))

(get-info :version)

(assert (= (and mapNonEmpty!19888 ((_ is ValueCellFull!5739) mapValue!19888)) b!454050))

(assert (= (and b!454043 ((_ is ValueCellFull!5739) mapDefault!19888)) b!454039))

(assert (= start!40900 b!454043))

(declare-fun m!438261 () Bool)

(assert (=> b!454048 m!438261))

(declare-fun m!438263 () Bool)

(assert (=> b!454041 m!438263))

(declare-fun m!438265 () Bool)

(assert (=> b!454047 m!438265))

(declare-fun m!438267 () Bool)

(assert (=> b!454046 m!438267))

(declare-fun m!438269 () Bool)

(assert (=> mapNonEmpty!19888 m!438269))

(declare-fun m!438271 () Bool)

(assert (=> b!454037 m!438271))

(declare-fun m!438273 () Bool)

(assert (=> b!454037 m!438273))

(declare-fun m!438275 () Bool)

(assert (=> b!454037 m!438275))

(declare-fun m!438277 () Bool)

(assert (=> b!454051 m!438277))

(declare-fun m!438279 () Bool)

(assert (=> b!454044 m!438279))

(declare-fun m!438281 () Bool)

(assert (=> start!40900 m!438281))

(declare-fun m!438283 () Bool)

(assert (=> start!40900 m!438283))

(declare-fun m!438285 () Bool)

(assert (=> b!454038 m!438285))

(declare-fun m!438287 () Bool)

(assert (=> b!454038 m!438287))

(declare-fun m!438289 () Bool)

(assert (=> b!454045 m!438289))

(check-sat (not start!40900) (not b!454048) (not b!454044) (not b!454046) tp_is_empty!12165 (not b!454045) (not b!454037) (not mapNonEmpty!19888) (not b!454038) (not b!454051) b_and!18987 (not b_next!10827) (not b!454041))
(check-sat b_and!18987 (not b_next!10827))
