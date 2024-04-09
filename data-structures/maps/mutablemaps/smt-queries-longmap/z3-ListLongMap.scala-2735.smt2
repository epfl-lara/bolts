; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40238 () Bool)

(assert start!40238)

(declare-fun b_free!10497 () Bool)

(declare-fun b_next!10497 () Bool)

(assert (=> start!40238 (= b_free!10497 (not b_next!10497))))

(declare-fun tp!37019 () Bool)

(declare-fun b_and!18483 () Bool)

(assert (=> start!40238 (= tp!37019 b_and!18483)))

(declare-fun b!441089 () Bool)

(declare-fun e!259755 () Bool)

(declare-fun e!259753 () Bool)

(assert (=> b!441089 (= e!259755 e!259753)))

(declare-fun res!261144 () Bool)

(assert (=> b!441089 (=> (not res!261144) (not e!259753))))

(declare-datatypes ((array!27085 0))(
  ( (array!27086 (arr!12989 (Array (_ BitVec 32) (_ BitVec 64))) (size!13341 (_ BitVec 32))) )
))
(declare-fun lt!202811 () array!27085)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27085 (_ BitVec 32)) Bool)

(assert (=> b!441089 (= res!261144 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202811 mask!1025))))

(declare-fun _keys!709 () array!27085)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!441089 (= lt!202811 (array!27086 (store (arr!12989 _keys!709) i!563 k0!794) (size!13341 _keys!709)))))

(declare-fun mapNonEmpty!19095 () Bool)

(declare-fun mapRes!19095 () Bool)

(declare-fun tp!37020 () Bool)

(declare-fun e!259757 () Bool)

(assert (=> mapNonEmpty!19095 (= mapRes!19095 (and tp!37020 e!259757))))

(declare-datatypes ((V!16637 0))(
  ( (V!16638 (val!5869 Int)) )
))
(declare-datatypes ((ValueCell!5481 0))(
  ( (ValueCellFull!5481 (v!8112 V!16637)) (EmptyCell!5481) )
))
(declare-datatypes ((array!27087 0))(
  ( (array!27088 (arr!12990 (Array (_ BitVec 32) ValueCell!5481)) (size!13342 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27087)

(declare-fun mapKey!19095 () (_ BitVec 32))

(declare-fun mapValue!19095 () ValueCell!5481)

(declare-fun mapRest!19095 () (Array (_ BitVec 32) ValueCell!5481))

(assert (=> mapNonEmpty!19095 (= (arr!12990 _values!549) (store mapRest!19095 mapKey!19095 mapValue!19095))))

(declare-fun b!441090 () Bool)

(declare-fun tp_is_empty!11649 () Bool)

(assert (=> b!441090 (= e!259757 tp_is_empty!11649)))

(declare-fun b!441092 () Bool)

(declare-fun res!261143 () Bool)

(assert (=> b!441092 (=> (not res!261143) (not e!259755))))

(assert (=> b!441092 (= res!261143 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13341 _keys!709))))))

(declare-fun b!441093 () Bool)

(declare-fun res!261145 () Bool)

(assert (=> b!441093 (=> (not res!261145) (not e!259755))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!441093 (= res!261145 (and (= (size!13342 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13341 _keys!709) (size!13342 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!441094 () Bool)

(declare-fun res!261146 () Bool)

(assert (=> b!441094 (=> (not res!261146) (not e!259755))))

(declare-fun arrayContainsKey!0 (array!27085 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!441094 (= res!261146 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!441095 () Bool)

(declare-fun e!259759 () Bool)

(assert (=> b!441095 (= e!259759 tp_is_empty!11649)))

(declare-fun b!441096 () Bool)

(declare-fun res!261147 () Bool)

(assert (=> b!441096 (=> (not res!261147) (not e!259753))))

(declare-datatypes ((List!7770 0))(
  ( (Nil!7767) (Cons!7766 (h!8622 (_ BitVec 64)) (t!13534 List!7770)) )
))
(declare-fun arrayNoDuplicates!0 (array!27085 (_ BitVec 32) List!7770) Bool)

(assert (=> b!441096 (= res!261147 (arrayNoDuplicates!0 lt!202811 #b00000000000000000000000000000000 Nil!7767))))

(declare-fun b!441097 () Bool)

(declare-fun e!259754 () Bool)

(assert (=> b!441097 (= e!259754 (and e!259759 mapRes!19095))))

(declare-fun condMapEmpty!19095 () Bool)

(declare-fun mapDefault!19095 () ValueCell!5481)

(assert (=> b!441097 (= condMapEmpty!19095 (= (arr!12990 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5481)) mapDefault!19095)))))

(declare-fun b!441098 () Bool)

(declare-fun res!261148 () Bool)

(assert (=> b!441098 (=> (not res!261148) (not e!259755))))

(assert (=> b!441098 (= res!261148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!441099 () Bool)

(declare-fun res!261150 () Bool)

(assert (=> b!441099 (=> (not res!261150) (not e!259755))))

(assert (=> b!441099 (= res!261150 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7767))))

(declare-fun b!441100 () Bool)

(declare-fun res!261140 () Bool)

(assert (=> b!441100 (=> (not res!261140) (not e!259755))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!441100 (= res!261140 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!19095 () Bool)

(assert (=> mapIsEmpty!19095 mapRes!19095))

(declare-fun b!441101 () Bool)

(declare-fun res!261149 () Bool)

(assert (=> b!441101 (=> (not res!261149) (not e!259753))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!441101 (= res!261149 (bvsle from!863 i!563))))

(declare-fun b!441091 () Bool)

(declare-fun e!259758 () Bool)

(assert (=> b!441091 (= e!259758 (not true))))

(declare-fun minValue!515 () V!16637)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16637)

(declare-fun lt!202808 () array!27087)

(declare-fun v!412 () V!16637)

(declare-datatypes ((tuple2!7728 0))(
  ( (tuple2!7729 (_1!3874 (_ BitVec 64)) (_2!3874 V!16637)) )
))
(declare-datatypes ((List!7771 0))(
  ( (Nil!7768) (Cons!7767 (h!8623 tuple2!7728) (t!13535 List!7771)) )
))
(declare-datatypes ((ListLongMap!6655 0))(
  ( (ListLongMap!6656 (toList!3343 List!7771)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1525 (array!27085 array!27087 (_ BitVec 32) (_ BitVec 32) V!16637 V!16637 (_ BitVec 32) Int) ListLongMap!6655)

(declare-fun +!1478 (ListLongMap!6655 tuple2!7728) ListLongMap!6655)

(assert (=> b!441091 (= (getCurrentListMapNoExtraKeys!1525 lt!202811 lt!202808 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1478 (getCurrentListMapNoExtraKeys!1525 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7729 k0!794 v!412)))))

(declare-datatypes ((Unit!13071 0))(
  ( (Unit!13072) )
))
(declare-fun lt!202809 () Unit!13071)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!656 (array!27085 array!27087 (_ BitVec 32) (_ BitVec 32) V!16637 V!16637 (_ BitVec 32) (_ BitVec 64) V!16637 (_ BitVec 32) Int) Unit!13071)

(assert (=> b!441091 (= lt!202809 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!656 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!261138 () Bool)

(assert (=> start!40238 (=> (not res!261138) (not e!259755))))

(assert (=> start!40238 (= res!261138 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13341 _keys!709))))))

(assert (=> start!40238 e!259755))

(assert (=> start!40238 tp_is_empty!11649))

(assert (=> start!40238 tp!37019))

(assert (=> start!40238 true))

(declare-fun array_inv!9418 (array!27087) Bool)

(assert (=> start!40238 (and (array_inv!9418 _values!549) e!259754)))

(declare-fun array_inv!9419 (array!27085) Bool)

(assert (=> start!40238 (array_inv!9419 _keys!709)))

(declare-fun b!441102 () Bool)

(declare-fun res!261139 () Bool)

(assert (=> b!441102 (=> (not res!261139) (not e!259755))))

(assert (=> b!441102 (= res!261139 (or (= (select (arr!12989 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12989 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!441103 () Bool)

(assert (=> b!441103 (= e!259753 e!259758)))

(declare-fun res!261141 () Bool)

(assert (=> b!441103 (=> (not res!261141) (not e!259758))))

(assert (=> b!441103 (= res!261141 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!202810 () ListLongMap!6655)

(assert (=> b!441103 (= lt!202810 (getCurrentListMapNoExtraKeys!1525 lt!202811 lt!202808 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!441103 (= lt!202808 (array!27088 (store (arr!12990 _values!549) i!563 (ValueCellFull!5481 v!412)) (size!13342 _values!549)))))

(declare-fun lt!202812 () ListLongMap!6655)

(assert (=> b!441103 (= lt!202812 (getCurrentListMapNoExtraKeys!1525 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!441104 () Bool)

(declare-fun res!261142 () Bool)

(assert (=> b!441104 (=> (not res!261142) (not e!259755))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!441104 (= res!261142 (validKeyInArray!0 k0!794))))

(assert (= (and start!40238 res!261138) b!441100))

(assert (= (and b!441100 res!261140) b!441093))

(assert (= (and b!441093 res!261145) b!441098))

(assert (= (and b!441098 res!261148) b!441099))

(assert (= (and b!441099 res!261150) b!441092))

(assert (= (and b!441092 res!261143) b!441104))

(assert (= (and b!441104 res!261142) b!441102))

(assert (= (and b!441102 res!261139) b!441094))

(assert (= (and b!441094 res!261146) b!441089))

(assert (= (and b!441089 res!261144) b!441096))

(assert (= (and b!441096 res!261147) b!441101))

(assert (= (and b!441101 res!261149) b!441103))

(assert (= (and b!441103 res!261141) b!441091))

(assert (= (and b!441097 condMapEmpty!19095) mapIsEmpty!19095))

(assert (= (and b!441097 (not condMapEmpty!19095)) mapNonEmpty!19095))

(get-info :version)

(assert (= (and mapNonEmpty!19095 ((_ is ValueCellFull!5481) mapValue!19095)) b!441090))

(assert (= (and b!441097 ((_ is ValueCellFull!5481) mapDefault!19095)) b!441095))

(assert (= start!40238 b!441097))

(declare-fun m!427995 () Bool)

(assert (=> b!441099 m!427995))

(declare-fun m!427997 () Bool)

(assert (=> start!40238 m!427997))

(declare-fun m!427999 () Bool)

(assert (=> start!40238 m!427999))

(declare-fun m!428001 () Bool)

(assert (=> b!441103 m!428001))

(declare-fun m!428003 () Bool)

(assert (=> b!441103 m!428003))

(declare-fun m!428005 () Bool)

(assert (=> b!441103 m!428005))

(declare-fun m!428007 () Bool)

(assert (=> b!441089 m!428007))

(declare-fun m!428009 () Bool)

(assert (=> b!441089 m!428009))

(declare-fun m!428011 () Bool)

(assert (=> b!441104 m!428011))

(declare-fun m!428013 () Bool)

(assert (=> b!441096 m!428013))

(declare-fun m!428015 () Bool)

(assert (=> b!441094 m!428015))

(declare-fun m!428017 () Bool)

(assert (=> b!441100 m!428017))

(declare-fun m!428019 () Bool)

(assert (=> b!441091 m!428019))

(declare-fun m!428021 () Bool)

(assert (=> b!441091 m!428021))

(assert (=> b!441091 m!428021))

(declare-fun m!428023 () Bool)

(assert (=> b!441091 m!428023))

(declare-fun m!428025 () Bool)

(assert (=> b!441091 m!428025))

(declare-fun m!428027 () Bool)

(assert (=> mapNonEmpty!19095 m!428027))

(declare-fun m!428029 () Bool)

(assert (=> b!441098 m!428029))

(declare-fun m!428031 () Bool)

(assert (=> b!441102 m!428031))

(check-sat (not b!441089) b_and!18483 (not b_next!10497) (not start!40238) (not b!441098) (not b!441091) (not b!441104) (not b!441094) (not b!441099) (not b!441100) (not b!441096) (not mapNonEmpty!19095) (not b!441103) tp_is_empty!11649)
(check-sat b_and!18483 (not b_next!10497))
