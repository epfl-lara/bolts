; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20474 () Bool)

(assert start!20474)

(declare-fun b_free!5121 () Bool)

(declare-fun b_next!5121 () Bool)

(assert (=> start!20474 (= b_free!5121 (not b_next!5121))))

(declare-fun tp!18394 () Bool)

(declare-fun b_and!11885 () Bool)

(assert (=> start!20474 (= tp!18394 b_and!11885)))

(declare-fun b!202771 () Bool)

(declare-fun res!97282 () Bool)

(declare-fun e!132804 () Bool)

(assert (=> b!202771 (=> (not res!97282) (not e!132804))))

(declare-datatypes ((array!9178 0))(
  ( (array!9179 (arr!4339 (Array (_ BitVec 32) (_ BitVec 64))) (size!4664 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9178)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9178 (_ BitVec 32)) Bool)

(assert (=> b!202771 (= res!97282 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapNonEmpty!8534 () Bool)

(declare-fun mapRes!8534 () Bool)

(declare-fun tp!18395 () Bool)

(declare-fun e!132800 () Bool)

(assert (=> mapNonEmpty!8534 (= mapRes!8534 (and tp!18395 e!132800))))

(declare-fun mapKey!8534 () (_ BitVec 32))

(declare-datatypes ((V!6283 0))(
  ( (V!6284 (val!2533 Int)) )
))
(declare-datatypes ((ValueCell!2145 0))(
  ( (ValueCellFull!2145 (v!4499 V!6283)) (EmptyCell!2145) )
))
(declare-fun mapRest!8534 () (Array (_ BitVec 32) ValueCell!2145))

(declare-fun mapValue!8534 () ValueCell!2145)

(declare-datatypes ((array!9180 0))(
  ( (array!9181 (arr!4340 (Array (_ BitVec 32) ValueCell!2145)) (size!4665 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9180)

(assert (=> mapNonEmpty!8534 (= (arr!4340 _values!649) (store mapRest!8534 mapKey!8534 mapValue!8534))))

(declare-fun b!202772 () Bool)

(declare-fun res!97286 () Bool)

(assert (=> b!202772 (=> (not res!97286) (not e!132804))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!202772 (= res!97286 (and (= (size!4665 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4664 _keys!825) (size!4665 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!202773 () Bool)

(declare-fun e!132801 () Bool)

(declare-fun e!132799 () Bool)

(assert (=> b!202773 (= e!132801 (and e!132799 mapRes!8534))))

(declare-fun condMapEmpty!8534 () Bool)

(declare-fun mapDefault!8534 () ValueCell!2145)

(assert (=> b!202773 (= condMapEmpty!8534 (= (arr!4340 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2145)) mapDefault!8534)))))

(declare-fun res!97285 () Bool)

(assert (=> start!20474 (=> (not res!97285) (not e!132804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20474 (= res!97285 (validMask!0 mask!1149))))

(assert (=> start!20474 e!132804))

(declare-fun array_inv!2853 (array!9180) Bool)

(assert (=> start!20474 (and (array_inv!2853 _values!649) e!132801)))

(assert (=> start!20474 true))

(declare-fun tp_is_empty!4977 () Bool)

(assert (=> start!20474 tp_is_empty!4977))

(declare-fun array_inv!2854 (array!9178) Bool)

(assert (=> start!20474 (array_inv!2854 _keys!825)))

(assert (=> start!20474 tp!18394))

(declare-fun b!202774 () Bool)

(declare-fun res!97288 () Bool)

(assert (=> b!202774 (=> (not res!97288) (not e!132804))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!202774 (= res!97288 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4664 _keys!825))))))

(declare-fun mapIsEmpty!8534 () Bool)

(assert (=> mapIsEmpty!8534 mapRes!8534))

(declare-fun b!202775 () Bool)

(declare-fun e!132802 () Bool)

(declare-fun e!132803 () Bool)

(assert (=> b!202775 (= e!132802 e!132803)))

(declare-fun res!97280 () Bool)

(assert (=> b!202775 (=> res!97280 e!132803)))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!202775 (= res!97280 (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3838 0))(
  ( (tuple2!3839 (_1!1929 (_ BitVec 64)) (_2!1929 V!6283)) )
))
(declare-datatypes ((List!2766 0))(
  ( (Nil!2763) (Cons!2762 (h!3404 tuple2!3838) (t!7705 List!2766)) )
))
(declare-datatypes ((ListLongMap!2765 0))(
  ( (ListLongMap!2766 (toList!1398 List!2766)) )
))
(declare-fun lt!102018 () ListLongMap!2765)

(declare-fun lt!102020 () ListLongMap!2765)

(assert (=> b!202775 (= lt!102018 lt!102020)))

(declare-fun lt!102025 () ListLongMap!2765)

(declare-fun lt!102015 () tuple2!3838)

(declare-fun +!415 (ListLongMap!2765 tuple2!3838) ListLongMap!2765)

(assert (=> b!202775 (= lt!102020 (+!415 lt!102025 lt!102015))))

(declare-fun lt!102021 () ListLongMap!2765)

(declare-fun lt!102017 () ListLongMap!2765)

(assert (=> b!202775 (= lt!102021 lt!102017)))

(declare-fun lt!102014 () ListLongMap!2765)

(assert (=> b!202775 (= lt!102017 (+!415 lt!102014 lt!102015))))

(declare-fun lt!102019 () ListLongMap!2765)

(assert (=> b!202775 (= lt!102018 (+!415 lt!102019 lt!102015))))

(declare-fun zeroValue!615 () V!6283)

(assert (=> b!202775 (= lt!102015 (tuple2!3839 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!202776 () Bool)

(assert (=> b!202776 (= e!132803 true)))

(declare-fun lt!102022 () tuple2!3838)

(assert (=> b!202776 (= lt!102020 (+!415 lt!102017 lt!102022))))

(declare-fun v!520 () V!6283)

(declare-datatypes ((Unit!6131 0))(
  ( (Unit!6132) )
))
(declare-fun lt!102023 () Unit!6131)

(declare-fun addCommutativeForDiffKeys!131 (ListLongMap!2765 (_ BitVec 64) V!6283 (_ BitVec 64) V!6283) Unit!6131)

(assert (=> b!202776 (= lt!102023 (addCommutativeForDiffKeys!131 lt!102014 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!202777 () Bool)

(assert (=> b!202777 (= e!132804 (not e!132802))))

(declare-fun res!97283 () Bool)

(assert (=> b!202777 (=> res!97283 e!132802)))

(assert (=> b!202777 (= res!97283 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6283)

(declare-fun getCurrentListMap!972 (array!9178 array!9180 (_ BitVec 32) (_ BitVec 32) V!6283 V!6283 (_ BitVec 32) Int) ListLongMap!2765)

(assert (=> b!202777 (= lt!102021 (getCurrentListMap!972 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102024 () array!9180)

(assert (=> b!202777 (= lt!102018 (getCurrentListMap!972 _keys!825 lt!102024 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202777 (and (= lt!102019 lt!102025) (= lt!102025 lt!102019))))

(assert (=> b!202777 (= lt!102025 (+!415 lt!102014 lt!102022))))

(assert (=> b!202777 (= lt!102022 (tuple2!3839 k0!843 v!520))))

(declare-fun lt!102016 () Unit!6131)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!85 (array!9178 array!9180 (_ BitVec 32) (_ BitVec 32) V!6283 V!6283 (_ BitVec 32) (_ BitVec 64) V!6283 (_ BitVec 32) Int) Unit!6131)

(assert (=> b!202777 (= lt!102016 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!85 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!343 (array!9178 array!9180 (_ BitVec 32) (_ BitVec 32) V!6283 V!6283 (_ BitVec 32) Int) ListLongMap!2765)

(assert (=> b!202777 (= lt!102019 (getCurrentListMapNoExtraKeys!343 _keys!825 lt!102024 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202777 (= lt!102024 (array!9181 (store (arr!4340 _values!649) i!601 (ValueCellFull!2145 v!520)) (size!4665 _values!649)))))

(assert (=> b!202777 (= lt!102014 (getCurrentListMapNoExtraKeys!343 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!202778 () Bool)

(assert (=> b!202778 (= e!132800 tp_is_empty!4977)))

(declare-fun b!202779 () Bool)

(assert (=> b!202779 (= e!132799 tp_is_empty!4977)))

(declare-fun b!202780 () Bool)

(declare-fun res!97287 () Bool)

(assert (=> b!202780 (=> (not res!97287) (not e!132804))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!202780 (= res!97287 (validKeyInArray!0 k0!843))))

(declare-fun b!202781 () Bool)

(declare-fun res!97284 () Bool)

(assert (=> b!202781 (=> (not res!97284) (not e!132804))))

(assert (=> b!202781 (= res!97284 (= (select (arr!4339 _keys!825) i!601) k0!843))))

(declare-fun b!202782 () Bool)

(declare-fun res!97281 () Bool)

(assert (=> b!202782 (=> (not res!97281) (not e!132804))))

(declare-datatypes ((List!2767 0))(
  ( (Nil!2764) (Cons!2763 (h!3405 (_ BitVec 64)) (t!7706 List!2767)) )
))
(declare-fun arrayNoDuplicates!0 (array!9178 (_ BitVec 32) List!2767) Bool)

(assert (=> b!202782 (= res!97281 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2764))))

(assert (= (and start!20474 res!97285) b!202772))

(assert (= (and b!202772 res!97286) b!202771))

(assert (= (and b!202771 res!97282) b!202782))

(assert (= (and b!202782 res!97281) b!202774))

(assert (= (and b!202774 res!97288) b!202780))

(assert (= (and b!202780 res!97287) b!202781))

(assert (= (and b!202781 res!97284) b!202777))

(assert (= (and b!202777 (not res!97283)) b!202775))

(assert (= (and b!202775 (not res!97280)) b!202776))

(assert (= (and b!202773 condMapEmpty!8534) mapIsEmpty!8534))

(assert (= (and b!202773 (not condMapEmpty!8534)) mapNonEmpty!8534))

(get-info :version)

(assert (= (and mapNonEmpty!8534 ((_ is ValueCellFull!2145) mapValue!8534)) b!202778))

(assert (= (and b!202773 ((_ is ValueCellFull!2145) mapDefault!8534)) b!202779))

(assert (= start!20474 b!202773))

(declare-fun m!230149 () Bool)

(assert (=> mapNonEmpty!8534 m!230149))

(declare-fun m!230151 () Bool)

(assert (=> b!202777 m!230151))

(declare-fun m!230153 () Bool)

(assert (=> b!202777 m!230153))

(declare-fun m!230155 () Bool)

(assert (=> b!202777 m!230155))

(declare-fun m!230157 () Bool)

(assert (=> b!202777 m!230157))

(declare-fun m!230159 () Bool)

(assert (=> b!202777 m!230159))

(declare-fun m!230161 () Bool)

(assert (=> b!202777 m!230161))

(declare-fun m!230163 () Bool)

(assert (=> b!202777 m!230163))

(declare-fun m!230165 () Bool)

(assert (=> start!20474 m!230165))

(declare-fun m!230167 () Bool)

(assert (=> start!20474 m!230167))

(declare-fun m!230169 () Bool)

(assert (=> start!20474 m!230169))

(declare-fun m!230171 () Bool)

(assert (=> b!202776 m!230171))

(declare-fun m!230173 () Bool)

(assert (=> b!202776 m!230173))

(declare-fun m!230175 () Bool)

(assert (=> b!202782 m!230175))

(declare-fun m!230177 () Bool)

(assert (=> b!202775 m!230177))

(declare-fun m!230179 () Bool)

(assert (=> b!202775 m!230179))

(declare-fun m!230181 () Bool)

(assert (=> b!202775 m!230181))

(declare-fun m!230183 () Bool)

(assert (=> b!202771 m!230183))

(declare-fun m!230185 () Bool)

(assert (=> b!202780 m!230185))

(declare-fun m!230187 () Bool)

(assert (=> b!202781 m!230187))

(check-sat (not b!202780) (not b!202771) tp_is_empty!4977 (not start!20474) (not b!202776) (not b_next!5121) (not mapNonEmpty!8534) (not b!202775) (not b!202782) (not b!202777) b_and!11885)
(check-sat b_and!11885 (not b_next!5121))
