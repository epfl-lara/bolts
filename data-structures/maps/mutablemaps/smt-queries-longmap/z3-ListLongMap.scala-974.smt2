; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21096 () Bool)

(assert start!21096)

(declare-fun b_free!5595 () Bool)

(declare-fun b_next!5595 () Bool)

(assert (=> start!21096 (= b_free!5595 (not b_next!5595))))

(declare-fun tp!19847 () Bool)

(declare-fun b_and!12443 () Bool)

(assert (=> start!21096 (= tp!19847 b_and!12443)))

(declare-fun b!212083 () Bool)

(declare-fun res!103679 () Bool)

(declare-fun e!138023 () Bool)

(assert (=> b!212083 (=> (not res!103679) (not e!138023))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!212083 (= res!103679 (validKeyInArray!0 k0!843))))

(declare-fun b!212084 () Bool)

(declare-fun res!103678 () Bool)

(assert (=> b!212084 (=> (not res!103678) (not e!138023))))

(declare-datatypes ((array!10116 0))(
  ( (array!10117 (arr!4801 (Array (_ BitVec 32) (_ BitVec 64))) (size!5126 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10116)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10116 (_ BitVec 32)) Bool)

(assert (=> b!212084 (= res!103678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun res!103684 () Bool)

(assert (=> start!21096 (=> (not res!103684) (not e!138023))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21096 (= res!103684 (validMask!0 mask!1149))))

(assert (=> start!21096 e!138023))

(declare-datatypes ((V!6923 0))(
  ( (V!6924 (val!2773 Int)) )
))
(declare-datatypes ((ValueCell!2385 0))(
  ( (ValueCellFull!2385 (v!4767 V!6923)) (EmptyCell!2385) )
))
(declare-datatypes ((array!10118 0))(
  ( (array!10119 (arr!4802 (Array (_ BitVec 32) ValueCell!2385)) (size!5127 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10118)

(declare-fun e!138020 () Bool)

(declare-fun array_inv!3167 (array!10118) Bool)

(assert (=> start!21096 (and (array_inv!3167 _values!649) e!138020)))

(assert (=> start!21096 true))

(declare-fun tp_is_empty!5457 () Bool)

(assert (=> start!21096 tp_is_empty!5457))

(declare-fun array_inv!3168 (array!10116) Bool)

(assert (=> start!21096 (array_inv!3168 _keys!825)))

(assert (=> start!21096 tp!19847))

(declare-datatypes ((tuple2!4192 0))(
  ( (tuple2!4193 (_1!2106 (_ BitVec 64)) (_2!2106 V!6923)) )
))
(declare-fun lt!109298 () tuple2!4192)

(declare-fun b!212085 () Bool)

(declare-datatypes ((List!3106 0))(
  ( (Nil!3103) (Cons!3102 (h!3744 tuple2!4192) (t!8059 List!3106)) )
))
(declare-datatypes ((ListLongMap!3119 0))(
  ( (ListLongMap!3120 (toList!1575 List!3106)) )
))
(declare-fun lt!109295 () ListLongMap!3119)

(declare-fun e!138022 () Bool)

(declare-fun lt!109300 () ListLongMap!3119)

(declare-fun +!568 (ListLongMap!3119 tuple2!4192) ListLongMap!3119)

(assert (=> b!212085 (= e!138022 (= (+!568 lt!109300 lt!109298) lt!109295))))

(declare-fun lt!109296 () ListLongMap!3119)

(declare-fun lt!109291 () ListLongMap!3119)

(assert (=> b!212085 (= lt!109296 (+!568 lt!109291 lt!109298))))

(declare-fun v!520 () V!6923)

(declare-fun zeroValue!615 () V!6923)

(declare-datatypes ((Unit!6437 0))(
  ( (Unit!6438) )
))
(declare-fun lt!109289 () Unit!6437)

(declare-fun lt!109290 () ListLongMap!3119)

(declare-fun addCommutativeForDiffKeys!201 (ListLongMap!3119 (_ BitVec 64) V!6923 (_ BitVec 64) V!6923) Unit!6437)

(assert (=> b!212085 (= lt!109289 (addCommutativeForDiffKeys!201 lt!109290 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!212086 () Bool)

(declare-fun e!138025 () Bool)

(assert (=> b!212086 (= e!138025 tp_is_empty!5457)))

(declare-fun mapIsEmpty!9275 () Bool)

(declare-fun mapRes!9275 () Bool)

(assert (=> mapIsEmpty!9275 mapRes!9275))

(declare-fun mapNonEmpty!9275 () Bool)

(declare-fun tp!19846 () Bool)

(assert (=> mapNonEmpty!9275 (= mapRes!9275 (and tp!19846 e!138025))))

(declare-fun mapRest!9275 () (Array (_ BitVec 32) ValueCell!2385))

(declare-fun mapValue!9275 () ValueCell!2385)

(declare-fun mapKey!9275 () (_ BitVec 32))

(assert (=> mapNonEmpty!9275 (= (arr!4802 _values!649) (store mapRest!9275 mapKey!9275 mapValue!9275))))

(declare-fun b!212087 () Bool)

(declare-fun e!138024 () Bool)

(assert (=> b!212087 (= e!138024 tp_is_empty!5457)))

(declare-fun b!212088 () Bool)

(declare-fun res!103680 () Bool)

(assert (=> b!212088 (=> (not res!103680) (not e!138023))))

(declare-datatypes ((List!3107 0))(
  ( (Nil!3104) (Cons!3103 (h!3745 (_ BitVec 64)) (t!8060 List!3107)) )
))
(declare-fun arrayNoDuplicates!0 (array!10116 (_ BitVec 32) List!3107) Bool)

(assert (=> b!212088 (= res!103680 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3104))))

(declare-fun b!212089 () Bool)

(assert (=> b!212089 (= e!138020 (and e!138024 mapRes!9275))))

(declare-fun condMapEmpty!9275 () Bool)

(declare-fun mapDefault!9275 () ValueCell!2385)

(assert (=> b!212089 (= condMapEmpty!9275 (= (arr!4802 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2385)) mapDefault!9275)))))

(declare-fun b!212090 () Bool)

(declare-fun res!103677 () Bool)

(assert (=> b!212090 (=> (not res!103677) (not e!138023))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!212090 (= res!103677 (and (= (size!5127 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5126 _keys!825) (size!5127 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!212091 () Bool)

(declare-fun res!103681 () Bool)

(assert (=> b!212091 (=> (not res!103681) (not e!138023))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!212091 (= res!103681 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5126 _keys!825))))))

(declare-fun b!212092 () Bool)

(declare-fun e!138019 () Bool)

(assert (=> b!212092 (= e!138019 e!138022)))

(declare-fun res!103683 () Bool)

(assert (=> b!212092 (=> res!103683 e!138022)))

(assert (=> b!212092 (= res!103683 (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!212092 (= lt!109295 lt!109296)))

(declare-fun lt!109292 () ListLongMap!3119)

(declare-fun lt!109293 () tuple2!4192)

(assert (=> b!212092 (= lt!109296 (+!568 lt!109292 lt!109293))))

(assert (=> b!212092 (= lt!109300 lt!109291)))

(assert (=> b!212092 (= lt!109291 (+!568 lt!109290 lt!109293))))

(declare-fun lt!109299 () ListLongMap!3119)

(assert (=> b!212092 (= lt!109295 (+!568 lt!109299 lt!109293))))

(assert (=> b!212092 (= lt!109293 (tuple2!4193 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!212093 () Bool)

(declare-fun res!103676 () Bool)

(assert (=> b!212093 (=> (not res!103676) (not e!138023))))

(assert (=> b!212093 (= res!103676 (= (select (arr!4801 _keys!825) i!601) k0!843))))

(declare-fun b!212094 () Bool)

(assert (=> b!212094 (= e!138023 (not e!138019))))

(declare-fun res!103682 () Bool)

(assert (=> b!212094 (=> res!103682 e!138019)))

(assert (=> b!212094 (= res!103682 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6923)

(declare-fun getCurrentListMap!1103 (array!10116 array!10118 (_ BitVec 32) (_ BitVec 32) V!6923 V!6923 (_ BitVec 32) Int) ListLongMap!3119)

(assert (=> b!212094 (= lt!109300 (getCurrentListMap!1103 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109294 () array!10118)

(assert (=> b!212094 (= lt!109295 (getCurrentListMap!1103 _keys!825 lt!109294 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!212094 (and (= lt!109299 lt!109292) (= lt!109292 lt!109299))))

(assert (=> b!212094 (= lt!109292 (+!568 lt!109290 lt!109298))))

(assert (=> b!212094 (= lt!109298 (tuple2!4193 k0!843 v!520))))

(declare-fun lt!109297 () Unit!6437)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!220 (array!10116 array!10118 (_ BitVec 32) (_ BitVec 32) V!6923 V!6923 (_ BitVec 32) (_ BitVec 64) V!6923 (_ BitVec 32) Int) Unit!6437)

(assert (=> b!212094 (= lt!109297 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!220 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!502 (array!10116 array!10118 (_ BitVec 32) (_ BitVec 32) V!6923 V!6923 (_ BitVec 32) Int) ListLongMap!3119)

(assert (=> b!212094 (= lt!109299 (getCurrentListMapNoExtraKeys!502 _keys!825 lt!109294 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!212094 (= lt!109294 (array!10119 (store (arr!4802 _values!649) i!601 (ValueCellFull!2385 v!520)) (size!5127 _values!649)))))

(assert (=> b!212094 (= lt!109290 (getCurrentListMapNoExtraKeys!502 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (= (and start!21096 res!103684) b!212090))

(assert (= (and b!212090 res!103677) b!212084))

(assert (= (and b!212084 res!103678) b!212088))

(assert (= (and b!212088 res!103680) b!212091))

(assert (= (and b!212091 res!103681) b!212083))

(assert (= (and b!212083 res!103679) b!212093))

(assert (= (and b!212093 res!103676) b!212094))

(assert (= (and b!212094 (not res!103682)) b!212092))

(assert (= (and b!212092 (not res!103683)) b!212085))

(assert (= (and b!212089 condMapEmpty!9275) mapIsEmpty!9275))

(assert (= (and b!212089 (not condMapEmpty!9275)) mapNonEmpty!9275))

(get-info :version)

(assert (= (and mapNonEmpty!9275 ((_ is ValueCellFull!2385) mapValue!9275)) b!212086))

(assert (= (and b!212089 ((_ is ValueCellFull!2385) mapDefault!9275)) b!212087))

(assert (= start!21096 b!212089))

(declare-fun m!239891 () Bool)

(assert (=> b!212092 m!239891))

(declare-fun m!239893 () Bool)

(assert (=> b!212092 m!239893))

(declare-fun m!239895 () Bool)

(assert (=> b!212092 m!239895))

(declare-fun m!239897 () Bool)

(assert (=> b!212094 m!239897))

(declare-fun m!239899 () Bool)

(assert (=> b!212094 m!239899))

(declare-fun m!239901 () Bool)

(assert (=> b!212094 m!239901))

(declare-fun m!239903 () Bool)

(assert (=> b!212094 m!239903))

(declare-fun m!239905 () Bool)

(assert (=> b!212094 m!239905))

(declare-fun m!239907 () Bool)

(assert (=> b!212094 m!239907))

(declare-fun m!239909 () Bool)

(assert (=> b!212094 m!239909))

(declare-fun m!239911 () Bool)

(assert (=> mapNonEmpty!9275 m!239911))

(declare-fun m!239913 () Bool)

(assert (=> b!212083 m!239913))

(declare-fun m!239915 () Bool)

(assert (=> b!212093 m!239915))

(declare-fun m!239917 () Bool)

(assert (=> b!212084 m!239917))

(declare-fun m!239919 () Bool)

(assert (=> start!21096 m!239919))

(declare-fun m!239921 () Bool)

(assert (=> start!21096 m!239921))

(declare-fun m!239923 () Bool)

(assert (=> start!21096 m!239923))

(declare-fun m!239925 () Bool)

(assert (=> b!212085 m!239925))

(declare-fun m!239927 () Bool)

(assert (=> b!212085 m!239927))

(declare-fun m!239929 () Bool)

(assert (=> b!212085 m!239929))

(declare-fun m!239931 () Bool)

(assert (=> b!212088 m!239931))

(check-sat (not b!212084) b_and!12443 (not start!21096) (not b!212088) tp_is_empty!5457 (not b!212085) (not b!212083) (not b!212092) (not mapNonEmpty!9275) (not b_next!5595) (not b!212094))
(check-sat b_and!12443 (not b_next!5595))
