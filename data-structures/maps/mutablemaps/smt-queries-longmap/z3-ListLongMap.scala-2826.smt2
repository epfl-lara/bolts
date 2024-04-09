; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40930 () Bool)

(assert start!40930)

(declare-fun b_free!10857 () Bool)

(declare-fun b_next!10857 () Bool)

(assert (=> start!40930 (= b_free!10857 (not b_next!10857))))

(declare-fun tp!38398 () Bool)

(declare-fun b_and!19017 () Bool)

(assert (=> start!40930 (= tp!38398 b_and!19017)))

(declare-fun mapIsEmpty!19933 () Bool)

(declare-fun mapRes!19933 () Bool)

(assert (=> mapIsEmpty!19933 mapRes!19933))

(declare-fun res!271105 () Bool)

(declare-fun e!265959 () Bool)

(assert (=> start!40930 (=> (not res!271105) (not e!265959))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!28159 0))(
  ( (array!28160 (arr!13520 (Array (_ BitVec 32) (_ BitVec 64))) (size!13872 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28159)

(assert (=> start!40930 (= res!271105 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13872 _keys!709))))))

(assert (=> start!40930 e!265959))

(declare-fun tp_is_empty!12195 () Bool)

(assert (=> start!40930 tp_is_empty!12195))

(assert (=> start!40930 tp!38398))

(assert (=> start!40930 true))

(declare-datatypes ((V!17365 0))(
  ( (V!17366 (val!6142 Int)) )
))
(declare-datatypes ((ValueCell!5754 0))(
  ( (ValueCellFull!5754 (v!8404 V!17365)) (EmptyCell!5754) )
))
(declare-datatypes ((array!28161 0))(
  ( (array!28162 (arr!13521 (Array (_ BitVec 32) ValueCell!5754)) (size!13873 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28161)

(declare-fun e!265962 () Bool)

(declare-fun array_inv!9786 (array!28161) Bool)

(assert (=> start!40930 (and (array_inv!9786 _values!549) e!265962)))

(declare-fun array_inv!9787 (array!28159) Bool)

(assert (=> start!40930 (array_inv!9787 _keys!709)))

(declare-fun b!454712 () Bool)

(declare-fun e!265961 () Bool)

(assert (=> b!454712 (= e!265962 (and e!265961 mapRes!19933))))

(declare-fun condMapEmpty!19933 () Bool)

(declare-fun mapDefault!19933 () ValueCell!5754)

(assert (=> b!454712 (= condMapEmpty!19933 (= (arr!13521 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5754)) mapDefault!19933)))))

(declare-fun b!454713 () Bool)

(declare-fun res!271098 () Bool)

(declare-fun e!265964 () Bool)

(assert (=> b!454713 (=> (not res!271098) (not e!265964))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!454713 (= res!271098 (bvsle from!863 i!563))))

(declare-fun b!454714 () Bool)

(declare-fun res!271096 () Bool)

(assert (=> b!454714 (=> (not res!271096) (not e!265959))))

(assert (=> b!454714 (= res!271096 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13872 _keys!709))))))

(declare-fun b!454715 () Bool)

(assert (=> b!454715 (= e!265964 false)))

(declare-fun minValue!515 () V!17365)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!8040 0))(
  ( (tuple2!8041 (_1!4030 (_ BitVec 64)) (_2!4030 V!17365)) )
))
(declare-datatypes ((List!8146 0))(
  ( (Nil!8143) (Cons!8142 (h!8998 tuple2!8040) (t!13982 List!8146)) )
))
(declare-datatypes ((ListLongMap!6967 0))(
  ( (ListLongMap!6968 (toList!3499 List!8146)) )
))
(declare-fun lt!206192 () ListLongMap!6967)

(declare-fun zeroValue!515 () V!17365)

(declare-fun lt!206193 () array!28159)

(declare-fun v!412 () V!17365)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1675 (array!28159 array!28161 (_ BitVec 32) (_ BitVec 32) V!17365 V!17365 (_ BitVec 32) Int) ListLongMap!6967)

(assert (=> b!454715 (= lt!206192 (getCurrentListMapNoExtraKeys!1675 lt!206193 (array!28162 (store (arr!13521 _values!549) i!563 (ValueCellFull!5754 v!412)) (size!13873 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206191 () ListLongMap!6967)

(assert (=> b!454715 (= lt!206191 (getCurrentListMapNoExtraKeys!1675 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!454716 () Bool)

(declare-fun res!271102 () Bool)

(assert (=> b!454716 (=> (not res!271102) (not e!265959))))

(declare-datatypes ((List!8147 0))(
  ( (Nil!8144) (Cons!8143 (h!8999 (_ BitVec 64)) (t!13983 List!8147)) )
))
(declare-fun arrayNoDuplicates!0 (array!28159 (_ BitVec 32) List!8147) Bool)

(assert (=> b!454716 (= res!271102 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8144))))

(declare-fun b!454717 () Bool)

(declare-fun res!271097 () Bool)

(assert (=> b!454717 (=> (not res!271097) (not e!265964))))

(assert (=> b!454717 (= res!271097 (arrayNoDuplicates!0 lt!206193 #b00000000000000000000000000000000 Nil!8144))))

(declare-fun b!454718 () Bool)

(declare-fun res!271100 () Bool)

(assert (=> b!454718 (=> (not res!271100) (not e!265959))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!454718 (= res!271100 (validMask!0 mask!1025))))

(declare-fun b!454719 () Bool)

(assert (=> b!454719 (= e!265959 e!265964)))

(declare-fun res!271095 () Bool)

(assert (=> b!454719 (=> (not res!271095) (not e!265964))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28159 (_ BitVec 32)) Bool)

(assert (=> b!454719 (= res!271095 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206193 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!454719 (= lt!206193 (array!28160 (store (arr!13520 _keys!709) i!563 k0!794) (size!13872 _keys!709)))))

(declare-fun b!454720 () Bool)

(declare-fun e!265963 () Bool)

(assert (=> b!454720 (= e!265963 tp_is_empty!12195)))

(declare-fun b!454721 () Bool)

(declare-fun res!271099 () Bool)

(assert (=> b!454721 (=> (not res!271099) (not e!265959))))

(assert (=> b!454721 (= res!271099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!19933 () Bool)

(declare-fun tp!38397 () Bool)

(assert (=> mapNonEmpty!19933 (= mapRes!19933 (and tp!38397 e!265963))))

(declare-fun mapKey!19933 () (_ BitVec 32))

(declare-fun mapValue!19933 () ValueCell!5754)

(declare-fun mapRest!19933 () (Array (_ BitVec 32) ValueCell!5754))

(assert (=> mapNonEmpty!19933 (= (arr!13521 _values!549) (store mapRest!19933 mapKey!19933 mapValue!19933))))

(declare-fun b!454722 () Bool)

(assert (=> b!454722 (= e!265961 tp_is_empty!12195)))

(declare-fun b!454723 () Bool)

(declare-fun res!271106 () Bool)

(assert (=> b!454723 (=> (not res!271106) (not e!265959))))

(assert (=> b!454723 (= res!271106 (and (= (size!13873 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13872 _keys!709) (size!13873 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!454724 () Bool)

(declare-fun res!271101 () Bool)

(assert (=> b!454724 (=> (not res!271101) (not e!265959))))

(declare-fun arrayContainsKey!0 (array!28159 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!454724 (= res!271101 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!454725 () Bool)

(declare-fun res!271103 () Bool)

(assert (=> b!454725 (=> (not res!271103) (not e!265959))))

(assert (=> b!454725 (= res!271103 (or (= (select (arr!13520 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13520 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!454726 () Bool)

(declare-fun res!271104 () Bool)

(assert (=> b!454726 (=> (not res!271104) (not e!265959))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!454726 (= res!271104 (validKeyInArray!0 k0!794))))

(assert (= (and start!40930 res!271105) b!454718))

(assert (= (and b!454718 res!271100) b!454723))

(assert (= (and b!454723 res!271106) b!454721))

(assert (= (and b!454721 res!271099) b!454716))

(assert (= (and b!454716 res!271102) b!454714))

(assert (= (and b!454714 res!271096) b!454726))

(assert (= (and b!454726 res!271104) b!454725))

(assert (= (and b!454725 res!271103) b!454724))

(assert (= (and b!454724 res!271101) b!454719))

(assert (= (and b!454719 res!271095) b!454717))

(assert (= (and b!454717 res!271097) b!454713))

(assert (= (and b!454713 res!271098) b!454715))

(assert (= (and b!454712 condMapEmpty!19933) mapIsEmpty!19933))

(assert (= (and b!454712 (not condMapEmpty!19933)) mapNonEmpty!19933))

(get-info :version)

(assert (= (and mapNonEmpty!19933 ((_ is ValueCellFull!5754) mapValue!19933)) b!454720))

(assert (= (and b!454712 ((_ is ValueCellFull!5754) mapDefault!19933)) b!454722))

(assert (= start!40930 b!454712))

(declare-fun m!438711 () Bool)

(assert (=> b!454721 m!438711))

(declare-fun m!438713 () Bool)

(assert (=> b!454717 m!438713))

(declare-fun m!438715 () Bool)

(assert (=> b!454716 m!438715))

(declare-fun m!438717 () Bool)

(assert (=> mapNonEmpty!19933 m!438717))

(declare-fun m!438719 () Bool)

(assert (=> b!454719 m!438719))

(declare-fun m!438721 () Bool)

(assert (=> b!454719 m!438721))

(declare-fun m!438723 () Bool)

(assert (=> b!454715 m!438723))

(declare-fun m!438725 () Bool)

(assert (=> b!454715 m!438725))

(declare-fun m!438727 () Bool)

(assert (=> b!454715 m!438727))

(declare-fun m!438729 () Bool)

(assert (=> b!454726 m!438729))

(declare-fun m!438731 () Bool)

(assert (=> start!40930 m!438731))

(declare-fun m!438733 () Bool)

(assert (=> start!40930 m!438733))

(declare-fun m!438735 () Bool)

(assert (=> b!454725 m!438735))

(declare-fun m!438737 () Bool)

(assert (=> b!454718 m!438737))

(declare-fun m!438739 () Bool)

(assert (=> b!454724 m!438739))

(check-sat (not b!454716) tp_is_empty!12195 b_and!19017 (not b!454717) (not b!454715) (not b!454721) (not b!454718) (not b!454724) (not b!454726) (not start!40930) (not b!454719) (not b_next!10857) (not mapNonEmpty!19933))
(check-sat b_and!19017 (not b_next!10857))
