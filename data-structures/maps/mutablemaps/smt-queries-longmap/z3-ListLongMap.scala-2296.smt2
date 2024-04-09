; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37248 () Bool)

(assert start!37248)

(declare-fun b_free!8367 () Bool)

(declare-fun b_next!8367 () Bool)

(assert (=> start!37248 (= b_free!8367 (not b_next!8367))))

(declare-fun tp!29817 () Bool)

(declare-fun b_and!15627 () Bool)

(assert (=> start!37248 (= tp!29817 b_and!15627)))

(declare-fun b!376506 () Bool)

(declare-fun e!229297 () Bool)

(declare-fun e!229299 () Bool)

(assert (=> b!376506 (= e!229297 (not e!229299))))

(declare-fun res!212911 () Bool)

(assert (=> b!376506 (=> res!212911 e!229299)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!376506 (= res!212911 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!13125 0))(
  ( (V!13126 (val!4552 Int)) )
))
(declare-datatypes ((tuple2!6036 0))(
  ( (tuple2!6037 (_1!3028 (_ BitVec 64)) (_2!3028 V!13125)) )
))
(declare-datatypes ((List!5907 0))(
  ( (Nil!5904) (Cons!5903 (h!6759 tuple2!6036) (t!11065 List!5907)) )
))
(declare-datatypes ((ListLongMap!4963 0))(
  ( (ListLongMap!4964 (toList!2497 List!5907)) )
))
(declare-fun lt!174820 () ListLongMap!4963)

(declare-datatypes ((ValueCell!4164 0))(
  ( (ValueCellFull!4164 (v!6745 V!13125)) (EmptyCell!4164) )
))
(declare-datatypes ((array!21929 0))(
  ( (array!21930 (arr!10430 (Array (_ BitVec 32) ValueCell!4164)) (size!10782 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21929)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13125)

(declare-datatypes ((array!21931 0))(
  ( (array!21932 (arr!10431 (Array (_ BitVec 32) (_ BitVec 64))) (size!10783 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21931)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13125)

(declare-fun getCurrentListMap!1936 (array!21931 array!21929 (_ BitVec 32) (_ BitVec 32) V!13125 V!13125 (_ BitVec 32) Int) ListLongMap!4963)

(assert (=> b!376506 (= lt!174820 (getCurrentListMap!1936 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174817 () array!21929)

(declare-fun lt!174818 () ListLongMap!4963)

(declare-fun lt!174825 () array!21931)

(assert (=> b!376506 (= lt!174818 (getCurrentListMap!1936 lt!174825 lt!174817 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174829 () ListLongMap!4963)

(declare-fun lt!174823 () ListLongMap!4963)

(assert (=> b!376506 (and (= lt!174829 lt!174823) (= lt!174823 lt!174829))))

(declare-fun lt!174824 () ListLongMap!4963)

(declare-fun lt!174828 () tuple2!6036)

(declare-fun +!838 (ListLongMap!4963 tuple2!6036) ListLongMap!4963)

(assert (=> b!376506 (= lt!174823 (+!838 lt!174824 lt!174828))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun v!373 () V!13125)

(assert (=> b!376506 (= lt!174828 (tuple2!6037 k0!778 v!373))))

(declare-datatypes ((Unit!11579 0))(
  ( (Unit!11580) )
))
(declare-fun lt!174819 () Unit!11579)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!87 (array!21931 array!21929 (_ BitVec 32) (_ BitVec 32) V!13125 V!13125 (_ BitVec 32) (_ BitVec 64) V!13125 (_ BitVec 32) Int) Unit!11579)

(assert (=> b!376506 (= lt!174819 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!87 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!754 (array!21931 array!21929 (_ BitVec 32) (_ BitVec 32) V!13125 V!13125 (_ BitVec 32) Int) ListLongMap!4963)

(assert (=> b!376506 (= lt!174829 (getCurrentListMapNoExtraKeys!754 lt!174825 lt!174817 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!376506 (= lt!174817 (array!21930 (store (arr!10430 _values!506) i!548 (ValueCellFull!4164 v!373)) (size!10782 _values!506)))))

(assert (=> b!376506 (= lt!174824 (getCurrentListMapNoExtraKeys!754 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!376507 () Bool)

(declare-fun e!229295 () Bool)

(assert (=> b!376507 (= e!229295 true)))

(declare-fun lt!174827 () ListLongMap!4963)

(declare-fun lt!174822 () ListLongMap!4963)

(assert (=> b!376507 (= lt!174827 (+!838 lt!174822 lt!174828))))

(declare-fun lt!174826 () Unit!11579)

(declare-fun addCommutativeForDiffKeys!262 (ListLongMap!4963 (_ BitVec 64) V!13125 (_ BitVec 64) V!13125) Unit!11579)

(assert (=> b!376507 (= lt!174826 (addCommutativeForDiffKeys!262 lt!174824 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!376508 () Bool)

(declare-fun res!212917 () Bool)

(assert (=> b!376508 (=> (not res!212917) (not e!229297))))

(declare-datatypes ((List!5908 0))(
  ( (Nil!5905) (Cons!5904 (h!6760 (_ BitVec 64)) (t!11066 List!5908)) )
))
(declare-fun arrayNoDuplicates!0 (array!21931 (_ BitVec 32) List!5908) Bool)

(assert (=> b!376508 (= res!212917 (arrayNoDuplicates!0 lt!174825 #b00000000000000000000000000000000 Nil!5905))))

(declare-fun b!376509 () Bool)

(declare-fun e!229296 () Bool)

(assert (=> b!376509 (= e!229296 e!229297)))

(declare-fun res!212914 () Bool)

(assert (=> b!376509 (=> (not res!212914) (not e!229297))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21931 (_ BitVec 32)) Bool)

(assert (=> b!376509 (= res!212914 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!174825 mask!970))))

(assert (=> b!376509 (= lt!174825 (array!21932 (store (arr!10431 _keys!658) i!548 k0!778) (size!10783 _keys!658)))))

(declare-fun mapIsEmpty!15087 () Bool)

(declare-fun mapRes!15087 () Bool)

(assert (=> mapIsEmpty!15087 mapRes!15087))

(declare-fun b!376510 () Bool)

(assert (=> b!376510 (= e!229299 e!229295)))

(declare-fun res!212920 () Bool)

(assert (=> b!376510 (=> res!212920 e!229295)))

(assert (=> b!376510 (= res!212920 (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!376510 (= lt!174818 lt!174827)))

(declare-fun lt!174821 () tuple2!6036)

(assert (=> b!376510 (= lt!174827 (+!838 lt!174823 lt!174821))))

(assert (=> b!376510 (= lt!174820 lt!174822)))

(assert (=> b!376510 (= lt!174822 (+!838 lt!174824 lt!174821))))

(assert (=> b!376510 (= lt!174818 (+!838 lt!174829 lt!174821))))

(assert (=> b!376510 (= lt!174821 (tuple2!6037 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!376511 () Bool)

(declare-fun e!229293 () Bool)

(declare-fun tp_is_empty!9015 () Bool)

(assert (=> b!376511 (= e!229293 tp_is_empty!9015)))

(declare-fun b!376512 () Bool)

(declare-fun e!229298 () Bool)

(assert (=> b!376512 (= e!229298 tp_is_empty!9015)))

(declare-fun b!376513 () Bool)

(declare-fun res!212921 () Bool)

(assert (=> b!376513 (=> (not res!212921) (not e!229296))))

(assert (=> b!376513 (= res!212921 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10783 _keys!658))))))

(declare-fun b!376514 () Bool)

(declare-fun res!212918 () Bool)

(assert (=> b!376514 (=> (not res!212918) (not e!229296))))

(assert (=> b!376514 (= res!212918 (and (= (size!10782 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10783 _keys!658) (size!10782 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!376515 () Bool)

(declare-fun res!212915 () Bool)

(assert (=> b!376515 (=> (not res!212915) (not e!229296))))

(assert (=> b!376515 (= res!212915 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!376516 () Bool)

(declare-fun res!212912 () Bool)

(assert (=> b!376516 (=> (not res!212912) (not e!229296))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!376516 (= res!212912 (validKeyInArray!0 k0!778))))

(declare-fun b!376517 () Bool)

(declare-fun res!212910 () Bool)

(assert (=> b!376517 (=> (not res!212910) (not e!229296))))

(assert (=> b!376517 (= res!212910 (or (= (select (arr!10431 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10431 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!212916 () Bool)

(assert (=> start!37248 (=> (not res!212916) (not e!229296))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37248 (= res!212916 (validMask!0 mask!970))))

(assert (=> start!37248 e!229296))

(declare-fun e!229292 () Bool)

(declare-fun array_inv!7680 (array!21929) Bool)

(assert (=> start!37248 (and (array_inv!7680 _values!506) e!229292)))

(assert (=> start!37248 tp!29817))

(assert (=> start!37248 true))

(assert (=> start!37248 tp_is_empty!9015))

(declare-fun array_inv!7681 (array!21931) Bool)

(assert (=> start!37248 (array_inv!7681 _keys!658)))

(declare-fun b!376518 () Bool)

(assert (=> b!376518 (= e!229292 (and e!229293 mapRes!15087))))

(declare-fun condMapEmpty!15087 () Bool)

(declare-fun mapDefault!15087 () ValueCell!4164)

(assert (=> b!376518 (= condMapEmpty!15087 (= (arr!10430 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4164)) mapDefault!15087)))))

(declare-fun b!376519 () Bool)

(declare-fun res!212913 () Bool)

(assert (=> b!376519 (=> (not res!212913) (not e!229296))))

(assert (=> b!376519 (= res!212913 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5905))))

(declare-fun b!376520 () Bool)

(declare-fun res!212919 () Bool)

(assert (=> b!376520 (=> (not res!212919) (not e!229296))))

(declare-fun arrayContainsKey!0 (array!21931 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!376520 (= res!212919 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!15087 () Bool)

(declare-fun tp!29816 () Bool)

(assert (=> mapNonEmpty!15087 (= mapRes!15087 (and tp!29816 e!229298))))

(declare-fun mapRest!15087 () (Array (_ BitVec 32) ValueCell!4164))

(declare-fun mapValue!15087 () ValueCell!4164)

(declare-fun mapKey!15087 () (_ BitVec 32))

(assert (=> mapNonEmpty!15087 (= (arr!10430 _values!506) (store mapRest!15087 mapKey!15087 mapValue!15087))))

(assert (= (and start!37248 res!212916) b!376514))

(assert (= (and b!376514 res!212918) b!376515))

(assert (= (and b!376515 res!212915) b!376519))

(assert (= (and b!376519 res!212913) b!376513))

(assert (= (and b!376513 res!212921) b!376516))

(assert (= (and b!376516 res!212912) b!376517))

(assert (= (and b!376517 res!212910) b!376520))

(assert (= (and b!376520 res!212919) b!376509))

(assert (= (and b!376509 res!212914) b!376508))

(assert (= (and b!376508 res!212917) b!376506))

(assert (= (and b!376506 (not res!212911)) b!376510))

(assert (= (and b!376510 (not res!212920)) b!376507))

(assert (= (and b!376518 condMapEmpty!15087) mapIsEmpty!15087))

(assert (= (and b!376518 (not condMapEmpty!15087)) mapNonEmpty!15087))

(get-info :version)

(assert (= (and mapNonEmpty!15087 ((_ is ValueCellFull!4164) mapValue!15087)) b!376512))

(assert (= (and b!376518 ((_ is ValueCellFull!4164) mapDefault!15087)) b!376511))

(assert (= start!37248 b!376518))

(declare-fun m!373265 () Bool)

(assert (=> b!376516 m!373265))

(declare-fun m!373267 () Bool)

(assert (=> start!37248 m!373267))

(declare-fun m!373269 () Bool)

(assert (=> start!37248 m!373269))

(declare-fun m!373271 () Bool)

(assert (=> start!37248 m!373271))

(declare-fun m!373273 () Bool)

(assert (=> b!376506 m!373273))

(declare-fun m!373275 () Bool)

(assert (=> b!376506 m!373275))

(declare-fun m!373277 () Bool)

(assert (=> b!376506 m!373277))

(declare-fun m!373279 () Bool)

(assert (=> b!376506 m!373279))

(declare-fun m!373281 () Bool)

(assert (=> b!376506 m!373281))

(declare-fun m!373283 () Bool)

(assert (=> b!376506 m!373283))

(declare-fun m!373285 () Bool)

(assert (=> b!376506 m!373285))

(declare-fun m!373287 () Bool)

(assert (=> b!376519 m!373287))

(declare-fun m!373289 () Bool)

(assert (=> b!376508 m!373289))

(declare-fun m!373291 () Bool)

(assert (=> b!376520 m!373291))

(declare-fun m!373293 () Bool)

(assert (=> b!376517 m!373293))

(declare-fun m!373295 () Bool)

(assert (=> b!376509 m!373295))

(declare-fun m!373297 () Bool)

(assert (=> b!376509 m!373297))

(declare-fun m!373299 () Bool)

(assert (=> mapNonEmpty!15087 m!373299))

(declare-fun m!373301 () Bool)

(assert (=> b!376515 m!373301))

(declare-fun m!373303 () Bool)

(assert (=> b!376510 m!373303))

(declare-fun m!373305 () Bool)

(assert (=> b!376510 m!373305))

(declare-fun m!373307 () Bool)

(assert (=> b!376510 m!373307))

(declare-fun m!373309 () Bool)

(assert (=> b!376507 m!373309))

(declare-fun m!373311 () Bool)

(assert (=> b!376507 m!373311))

(check-sat (not b!376507) (not start!37248) (not b!376508) (not b!376506) (not mapNonEmpty!15087) tp_is_empty!9015 (not b!376519) (not b!376510) (not b!376516) (not b!376509) (not b_next!8367) b_and!15627 (not b!376520) (not b!376515))
(check-sat b_and!15627 (not b_next!8367))
