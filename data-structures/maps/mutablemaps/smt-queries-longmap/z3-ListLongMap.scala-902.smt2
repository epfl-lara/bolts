; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20522 () Bool)

(assert start!20522)

(declare-fun b_free!5169 () Bool)

(declare-fun b_next!5169 () Bool)

(assert (=> start!20522 (= b_free!5169 (not b_next!5169))))

(declare-fun tp!18538 () Bool)

(declare-fun b_and!11933 () Bool)

(assert (=> start!20522 (= tp!18538 b_and!11933)))

(declare-fun b!203635 () Bool)

(declare-fun res!97931 () Bool)

(declare-fun e!133306 () Bool)

(assert (=> b!203635 (=> (not res!97931) (not e!133306))))

(declare-datatypes ((array!9272 0))(
  ( (array!9273 (arr!4386 (Array (_ BitVec 32) (_ BitVec 64))) (size!4711 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9272)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!203635 (= res!97931 (= (select (arr!4386 _keys!825) i!601) k0!843))))

(declare-fun b!203636 () Bool)

(declare-fun e!133309 () Bool)

(assert (=> b!203636 (= e!133309 true)))

(declare-datatypes ((V!6347 0))(
  ( (V!6348 (val!2557 Int)) )
))
(declare-datatypes ((tuple2!3876 0))(
  ( (tuple2!3877 (_1!1948 (_ BitVec 64)) (_2!1948 V!6347)) )
))
(declare-datatypes ((List!2801 0))(
  ( (Nil!2798) (Cons!2797 (h!3439 tuple2!3876) (t!7740 List!2801)) )
))
(declare-datatypes ((ListLongMap!2803 0))(
  ( (ListLongMap!2804 (toList!1417 List!2801)) )
))
(declare-fun lt!102887 () ListLongMap!2803)

(declare-fun lt!102879 () ListLongMap!2803)

(declare-fun lt!102884 () tuple2!3876)

(declare-fun +!434 (ListLongMap!2803 tuple2!3876) ListLongMap!2803)

(assert (=> b!203636 (= lt!102887 (+!434 lt!102879 lt!102884))))

(declare-fun lt!102878 () ListLongMap!2803)

(declare-datatypes ((Unit!6169 0))(
  ( (Unit!6170) )
))
(declare-fun lt!102886 () Unit!6169)

(declare-fun v!520 () V!6347)

(declare-fun zeroValue!615 () V!6347)

(declare-fun addCommutativeForDiffKeys!145 (ListLongMap!2803 (_ BitVec 64) V!6347 (_ BitVec 64) V!6347) Unit!6169)

(assert (=> b!203636 (= lt!102886 (addCommutativeForDiffKeys!145 lt!102878 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!203637 () Bool)

(declare-fun res!97930 () Bool)

(assert (=> b!203637 (=> (not res!97930) (not e!133306))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((ValueCell!2169 0))(
  ( (ValueCellFull!2169 (v!4523 V!6347)) (EmptyCell!2169) )
))
(declare-datatypes ((array!9274 0))(
  ( (array!9275 (arr!4387 (Array (_ BitVec 32) ValueCell!2169)) (size!4712 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9274)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!203637 (= res!97930 (and (= (size!4712 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4711 _keys!825) (size!4712 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!203638 () Bool)

(declare-fun e!133303 () Bool)

(declare-fun tp_is_empty!5025 () Bool)

(assert (=> b!203638 (= e!133303 tp_is_empty!5025)))

(declare-fun b!203639 () Bool)

(declare-fun e!133304 () Bool)

(assert (=> b!203639 (= e!133304 tp_is_empty!5025)))

(declare-fun b!203640 () Bool)

(declare-fun res!97936 () Bool)

(assert (=> b!203640 (=> (not res!97936) (not e!133306))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9272 (_ BitVec 32)) Bool)

(assert (=> b!203640 (= res!97936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!203641 () Bool)

(declare-fun e!133307 () Bool)

(declare-fun mapRes!8606 () Bool)

(assert (=> b!203641 (= e!133307 (and e!133304 mapRes!8606))))

(declare-fun condMapEmpty!8606 () Bool)

(declare-fun mapDefault!8606 () ValueCell!2169)

(assert (=> b!203641 (= condMapEmpty!8606 (= (arr!4387 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2169)) mapDefault!8606)))))

(declare-fun mapNonEmpty!8606 () Bool)

(declare-fun tp!18539 () Bool)

(assert (=> mapNonEmpty!8606 (= mapRes!8606 (and tp!18539 e!133303))))

(declare-fun mapKey!8606 () (_ BitVec 32))

(declare-fun mapRest!8606 () (Array (_ BitVec 32) ValueCell!2169))

(declare-fun mapValue!8606 () ValueCell!2169)

(assert (=> mapNonEmpty!8606 (= (arr!4387 _values!649) (store mapRest!8606 mapKey!8606 mapValue!8606))))

(declare-fun b!203642 () Bool)

(declare-fun e!133305 () Bool)

(assert (=> b!203642 (= e!133305 e!133309)))

(declare-fun res!97933 () Bool)

(assert (=> b!203642 (=> res!97933 e!133309)))

(assert (=> b!203642 (= res!97933 (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!102881 () ListLongMap!2803)

(assert (=> b!203642 (= lt!102881 lt!102887)))

(declare-fun lt!102880 () ListLongMap!2803)

(declare-fun lt!102889 () tuple2!3876)

(assert (=> b!203642 (= lt!102887 (+!434 lt!102880 lt!102889))))

(declare-fun lt!102882 () ListLongMap!2803)

(assert (=> b!203642 (= lt!102882 lt!102879)))

(assert (=> b!203642 (= lt!102879 (+!434 lt!102878 lt!102889))))

(declare-fun lt!102888 () ListLongMap!2803)

(assert (=> b!203642 (= lt!102881 (+!434 lt!102888 lt!102889))))

(assert (=> b!203642 (= lt!102889 (tuple2!3877 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun res!97935 () Bool)

(assert (=> start!20522 (=> (not res!97935) (not e!133306))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20522 (= res!97935 (validMask!0 mask!1149))))

(assert (=> start!20522 e!133306))

(declare-fun array_inv!2889 (array!9274) Bool)

(assert (=> start!20522 (and (array_inv!2889 _values!649) e!133307)))

(assert (=> start!20522 true))

(assert (=> start!20522 tp_is_empty!5025))

(declare-fun array_inv!2890 (array!9272) Bool)

(assert (=> start!20522 (array_inv!2890 _keys!825)))

(assert (=> start!20522 tp!18538))

(declare-fun b!203643 () Bool)

(declare-fun res!97934 () Bool)

(assert (=> b!203643 (=> (not res!97934) (not e!133306))))

(declare-datatypes ((List!2802 0))(
  ( (Nil!2799) (Cons!2798 (h!3440 (_ BitVec 64)) (t!7741 List!2802)) )
))
(declare-fun arrayNoDuplicates!0 (array!9272 (_ BitVec 32) List!2802) Bool)

(assert (=> b!203643 (= res!97934 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2799))))

(declare-fun mapIsEmpty!8606 () Bool)

(assert (=> mapIsEmpty!8606 mapRes!8606))

(declare-fun b!203644 () Bool)

(assert (=> b!203644 (= e!133306 (not e!133305))))

(declare-fun res!97928 () Bool)

(assert (=> b!203644 (=> res!97928 e!133305)))

(assert (=> b!203644 (= res!97928 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6347)

(declare-fun getCurrentListMap!987 (array!9272 array!9274 (_ BitVec 32) (_ BitVec 32) V!6347 V!6347 (_ BitVec 32) Int) ListLongMap!2803)

(assert (=> b!203644 (= lt!102882 (getCurrentListMap!987 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102885 () array!9274)

(assert (=> b!203644 (= lt!102881 (getCurrentListMap!987 _keys!825 lt!102885 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203644 (and (= lt!102888 lt!102880) (= lt!102880 lt!102888))))

(assert (=> b!203644 (= lt!102880 (+!434 lt!102878 lt!102884))))

(assert (=> b!203644 (= lt!102884 (tuple2!3877 k0!843 v!520))))

(declare-fun lt!102883 () Unit!6169)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!100 (array!9272 array!9274 (_ BitVec 32) (_ BitVec 32) V!6347 V!6347 (_ BitVec 32) (_ BitVec 64) V!6347 (_ BitVec 32) Int) Unit!6169)

(assert (=> b!203644 (= lt!102883 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!100 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!358 (array!9272 array!9274 (_ BitVec 32) (_ BitVec 32) V!6347 V!6347 (_ BitVec 32) Int) ListLongMap!2803)

(assert (=> b!203644 (= lt!102888 (getCurrentListMapNoExtraKeys!358 _keys!825 lt!102885 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203644 (= lt!102885 (array!9275 (store (arr!4387 _values!649) i!601 (ValueCellFull!2169 v!520)) (size!4712 _values!649)))))

(assert (=> b!203644 (= lt!102878 (getCurrentListMapNoExtraKeys!358 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!203645 () Bool)

(declare-fun res!97932 () Bool)

(assert (=> b!203645 (=> (not res!97932) (not e!133306))))

(assert (=> b!203645 (= res!97932 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4711 _keys!825))))))

(declare-fun b!203646 () Bool)

(declare-fun res!97929 () Bool)

(assert (=> b!203646 (=> (not res!97929) (not e!133306))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!203646 (= res!97929 (validKeyInArray!0 k0!843))))

(assert (= (and start!20522 res!97935) b!203637))

(assert (= (and b!203637 res!97930) b!203640))

(assert (= (and b!203640 res!97936) b!203643))

(assert (= (and b!203643 res!97934) b!203645))

(assert (= (and b!203645 res!97932) b!203646))

(assert (= (and b!203646 res!97929) b!203635))

(assert (= (and b!203635 res!97931) b!203644))

(assert (= (and b!203644 (not res!97928)) b!203642))

(assert (= (and b!203642 (not res!97933)) b!203636))

(assert (= (and b!203641 condMapEmpty!8606) mapIsEmpty!8606))

(assert (= (and b!203641 (not condMapEmpty!8606)) mapNonEmpty!8606))

(get-info :version)

(assert (= (and mapNonEmpty!8606 ((_ is ValueCellFull!2169) mapValue!8606)) b!203638))

(assert (= (and b!203641 ((_ is ValueCellFull!2169) mapDefault!8606)) b!203639))

(assert (= start!20522 b!203641))

(declare-fun m!231109 () Bool)

(assert (=> start!20522 m!231109))

(declare-fun m!231111 () Bool)

(assert (=> start!20522 m!231111))

(declare-fun m!231113 () Bool)

(assert (=> start!20522 m!231113))

(declare-fun m!231115 () Bool)

(assert (=> b!203640 m!231115))

(declare-fun m!231117 () Bool)

(assert (=> b!203643 m!231117))

(declare-fun m!231119 () Bool)

(assert (=> b!203642 m!231119))

(declare-fun m!231121 () Bool)

(assert (=> b!203642 m!231121))

(declare-fun m!231123 () Bool)

(assert (=> b!203642 m!231123))

(declare-fun m!231125 () Bool)

(assert (=> mapNonEmpty!8606 m!231125))

(declare-fun m!231127 () Bool)

(assert (=> b!203636 m!231127))

(declare-fun m!231129 () Bool)

(assert (=> b!203636 m!231129))

(declare-fun m!231131 () Bool)

(assert (=> b!203644 m!231131))

(declare-fun m!231133 () Bool)

(assert (=> b!203644 m!231133))

(declare-fun m!231135 () Bool)

(assert (=> b!203644 m!231135))

(declare-fun m!231137 () Bool)

(assert (=> b!203644 m!231137))

(declare-fun m!231139 () Bool)

(assert (=> b!203644 m!231139))

(declare-fun m!231141 () Bool)

(assert (=> b!203644 m!231141))

(declare-fun m!231143 () Bool)

(assert (=> b!203644 m!231143))

(declare-fun m!231145 () Bool)

(assert (=> b!203646 m!231145))

(declare-fun m!231147 () Bool)

(assert (=> b!203635 m!231147))

(check-sat (not b!203640) (not b!203643) (not mapNonEmpty!8606) (not start!20522) tp_is_empty!5025 (not b!203644) (not b!203636) (not b!203642) (not b_next!5169) (not b!203646) b_and!11933)
(check-sat b_and!11933 (not b_next!5169))
