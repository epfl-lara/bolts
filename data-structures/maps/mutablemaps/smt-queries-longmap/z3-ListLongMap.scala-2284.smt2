; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37176 () Bool)

(assert start!37176)

(declare-fun b_free!8295 () Bool)

(declare-fun b_next!8295 () Bool)

(assert (=> start!37176 (= b_free!8295 (not b_next!8295))))

(declare-fun tp!29600 () Bool)

(declare-fun b_and!15555 () Bool)

(assert (=> start!37176 (= tp!29600 b_and!15555)))

(declare-fun b!374877 () Bool)

(declare-fun e!228432 () Bool)

(declare-fun e!228430 () Bool)

(assert (=> b!374877 (= e!228432 e!228430)))

(declare-fun res!211606 () Bool)

(assert (=> b!374877 (=> res!211606 e!228430)))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!374877 (= res!211606 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!13029 0))(
  ( (V!13030 (val!4516 Int)) )
))
(declare-datatypes ((tuple2!5980 0))(
  ( (tuple2!5981 (_1!3000 (_ BitVec 64)) (_2!3000 V!13029)) )
))
(declare-datatypes ((List!5851 0))(
  ( (Nil!5848) (Cons!5847 (h!6703 tuple2!5980) (t!11009 List!5851)) )
))
(declare-datatypes ((ListLongMap!4907 0))(
  ( (ListLongMap!4908 (toList!2469 List!5851)) )
))
(declare-fun lt!173301 () ListLongMap!4907)

(declare-fun lt!173303 () ListLongMap!4907)

(assert (=> b!374877 (= lt!173301 lt!173303)))

(declare-fun lt!173293 () ListLongMap!4907)

(declare-fun lt!173290 () tuple2!5980)

(declare-fun +!810 (ListLongMap!4907 tuple2!5980) ListLongMap!4907)

(assert (=> b!374877 (= lt!173303 (+!810 lt!173293 lt!173290))))

(declare-fun zeroValue!472 () V!13029)

(declare-datatypes ((Unit!11523 0))(
  ( (Unit!11524) )
))
(declare-fun lt!173297 () Unit!11523)

(declare-fun lt!173294 () ListLongMap!4907)

(declare-fun v!373 () V!13029)

(declare-fun addCommutativeForDiffKeys!239 (ListLongMap!4907 (_ BitVec 64) V!13029 (_ BitVec 64) V!13029) Unit!11523)

(assert (=> b!374877 (= lt!173297 (addCommutativeForDiffKeys!239 lt!173294 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!173296 () ListLongMap!4907)

(declare-fun lt!173289 () tuple2!5980)

(assert (=> b!374877 (= lt!173296 (+!810 lt!173301 lt!173289))))

(declare-fun lt!173300 () ListLongMap!4907)

(declare-fun lt!173298 () tuple2!5980)

(assert (=> b!374877 (= lt!173301 (+!810 lt!173300 lt!173298))))

(declare-fun lt!173304 () ListLongMap!4907)

(declare-fun lt!173299 () ListLongMap!4907)

(assert (=> b!374877 (= lt!173304 lt!173299)))

(assert (=> b!374877 (= lt!173299 (+!810 lt!173293 lt!173289))))

(assert (=> b!374877 (= lt!173293 (+!810 lt!173294 lt!173298))))

(declare-fun lt!173291 () ListLongMap!4907)

(assert (=> b!374877 (= lt!173296 (+!810 (+!810 lt!173291 lt!173298) lt!173289))))

(declare-fun minValue!472 () V!13029)

(assert (=> b!374877 (= lt!173289 (tuple2!5981 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!374877 (= lt!173298 (tuple2!5981 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!374878 () Bool)

(declare-fun res!211611 () Bool)

(declare-fun e!228429 () Bool)

(assert (=> b!374878 (=> (not res!211611) (not e!228429))))

(declare-datatypes ((array!21785 0))(
  ( (array!21786 (arr!10358 (Array (_ BitVec 32) (_ BitVec 64))) (size!10710 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21785)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21785 (_ BitVec 32)) Bool)

(assert (=> b!374878 (= res!211611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!374879 () Bool)

(declare-fun res!211605 () Bool)

(assert (=> b!374879 (=> (not res!211605) (not e!228429))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4128 0))(
  ( (ValueCellFull!4128 (v!6709 V!13029)) (EmptyCell!4128) )
))
(declare-datatypes ((array!21787 0))(
  ( (array!21788 (arr!10359 (Array (_ BitVec 32) ValueCell!4128)) (size!10711 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21787)

(assert (=> b!374879 (= res!211605 (and (= (size!10711 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10710 _keys!658) (size!10711 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!374880 () Bool)

(declare-fun e!228435 () Bool)

(declare-fun e!228434 () Bool)

(declare-fun mapRes!14979 () Bool)

(assert (=> b!374880 (= e!228435 (and e!228434 mapRes!14979))))

(declare-fun condMapEmpty!14979 () Bool)

(declare-fun mapDefault!14979 () ValueCell!4128)

(assert (=> b!374880 (= condMapEmpty!14979 (= (arr!10359 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4128)) mapDefault!14979)))))

(declare-fun b!374881 () Bool)

(declare-fun e!228431 () Bool)

(assert (=> b!374881 (= e!228429 e!228431)))

(declare-fun res!211607 () Bool)

(assert (=> b!374881 (=> (not res!211607) (not e!228431))))

(declare-fun lt!173292 () array!21785)

(assert (=> b!374881 (= res!211607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!173292 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!374881 (= lt!173292 (array!21786 (store (arr!10358 _keys!658) i!548 k0!778) (size!10710 _keys!658)))))

(declare-fun mapNonEmpty!14979 () Bool)

(declare-fun tp!29601 () Bool)

(declare-fun e!228433 () Bool)

(assert (=> mapNonEmpty!14979 (= mapRes!14979 (and tp!29601 e!228433))))

(declare-fun mapValue!14979 () ValueCell!4128)

(declare-fun mapKey!14979 () (_ BitVec 32))

(declare-fun mapRest!14979 () (Array (_ BitVec 32) ValueCell!4128))

(assert (=> mapNonEmpty!14979 (= (arr!10359 _values!506) (store mapRest!14979 mapKey!14979 mapValue!14979))))

(declare-fun b!374882 () Bool)

(assert (=> b!374882 (= e!228430 true)))

(assert (=> b!374882 (= (+!810 lt!173303 lt!173289) (+!810 lt!173299 lt!173290))))

(declare-fun lt!173302 () Unit!11523)

(assert (=> b!374882 (= lt!173302 (addCommutativeForDiffKeys!239 lt!173293 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!374883 () Bool)

(assert (=> b!374883 (= e!228431 (not e!228432))))

(declare-fun res!211608 () Bool)

(assert (=> b!374883 (=> res!211608 e!228432)))

(assert (=> b!374883 (= res!211608 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun getCurrentListMap!1912 (array!21785 array!21787 (_ BitVec 32) (_ BitVec 32) V!13029 V!13029 (_ BitVec 32) Int) ListLongMap!4907)

(assert (=> b!374883 (= lt!173304 (getCurrentListMap!1912 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!173305 () array!21787)

(assert (=> b!374883 (= lt!173296 (getCurrentListMap!1912 lt!173292 lt!173305 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!374883 (and (= lt!173291 lt!173300) (= lt!173300 lt!173291))))

(assert (=> b!374883 (= lt!173300 (+!810 lt!173294 lt!173290))))

(assert (=> b!374883 (= lt!173290 (tuple2!5981 k0!778 v!373))))

(declare-fun lt!173295 () Unit!11523)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!63 (array!21785 array!21787 (_ BitVec 32) (_ BitVec 32) V!13029 V!13029 (_ BitVec 32) (_ BitVec 64) V!13029 (_ BitVec 32) Int) Unit!11523)

(assert (=> b!374883 (= lt!173295 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!63 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!730 (array!21785 array!21787 (_ BitVec 32) (_ BitVec 32) V!13029 V!13029 (_ BitVec 32) Int) ListLongMap!4907)

(assert (=> b!374883 (= lt!173291 (getCurrentListMapNoExtraKeys!730 lt!173292 lt!173305 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!374883 (= lt!173305 (array!21788 (store (arr!10359 _values!506) i!548 (ValueCellFull!4128 v!373)) (size!10711 _values!506)))))

(assert (=> b!374883 (= lt!173294 (getCurrentListMapNoExtraKeys!730 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!374884 () Bool)

(declare-fun res!211616 () Bool)

(assert (=> b!374884 (=> (not res!211616) (not e!228429))))

(declare-datatypes ((List!5852 0))(
  ( (Nil!5849) (Cons!5848 (h!6704 (_ BitVec 64)) (t!11010 List!5852)) )
))
(declare-fun arrayNoDuplicates!0 (array!21785 (_ BitVec 32) List!5852) Bool)

(assert (=> b!374884 (= res!211616 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5849))))

(declare-fun b!374885 () Bool)

(declare-fun tp_is_empty!8943 () Bool)

(assert (=> b!374885 (= e!228434 tp_is_empty!8943)))

(declare-fun b!374886 () Bool)

(declare-fun res!211613 () Bool)

(assert (=> b!374886 (=> (not res!211613) (not e!228429))))

(declare-fun arrayContainsKey!0 (array!21785 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!374886 (= res!211613 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!374887 () Bool)

(declare-fun res!211609 () Bool)

(assert (=> b!374887 (=> (not res!211609) (not e!228429))))

(assert (=> b!374887 (= res!211609 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10710 _keys!658))))))

(declare-fun b!374888 () Bool)

(declare-fun res!211614 () Bool)

(assert (=> b!374888 (=> (not res!211614) (not e!228429))))

(assert (=> b!374888 (= res!211614 (or (= (select (arr!10358 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10358 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!374889 () Bool)

(declare-fun res!211615 () Bool)

(assert (=> b!374889 (=> (not res!211615) (not e!228431))))

(assert (=> b!374889 (= res!211615 (arrayNoDuplicates!0 lt!173292 #b00000000000000000000000000000000 Nil!5849))))

(declare-fun b!374890 () Bool)

(declare-fun res!211610 () Bool)

(assert (=> b!374890 (=> (not res!211610) (not e!228429))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!374890 (= res!211610 (validKeyInArray!0 k0!778))))

(declare-fun mapIsEmpty!14979 () Bool)

(assert (=> mapIsEmpty!14979 mapRes!14979))

(declare-fun res!211612 () Bool)

(assert (=> start!37176 (=> (not res!211612) (not e!228429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37176 (= res!211612 (validMask!0 mask!970))))

(assert (=> start!37176 e!228429))

(declare-fun array_inv!7632 (array!21787) Bool)

(assert (=> start!37176 (and (array_inv!7632 _values!506) e!228435)))

(assert (=> start!37176 tp!29600))

(assert (=> start!37176 true))

(assert (=> start!37176 tp_is_empty!8943))

(declare-fun array_inv!7633 (array!21785) Bool)

(assert (=> start!37176 (array_inv!7633 _keys!658)))

(declare-fun b!374891 () Bool)

(assert (=> b!374891 (= e!228433 tp_is_empty!8943)))

(assert (= (and start!37176 res!211612) b!374879))

(assert (= (and b!374879 res!211605) b!374878))

(assert (= (and b!374878 res!211611) b!374884))

(assert (= (and b!374884 res!211616) b!374887))

(assert (= (and b!374887 res!211609) b!374890))

(assert (= (and b!374890 res!211610) b!374888))

(assert (= (and b!374888 res!211614) b!374886))

(assert (= (and b!374886 res!211613) b!374881))

(assert (= (and b!374881 res!211607) b!374889))

(assert (= (and b!374889 res!211615) b!374883))

(assert (= (and b!374883 (not res!211608)) b!374877))

(assert (= (and b!374877 (not res!211606)) b!374882))

(assert (= (and b!374880 condMapEmpty!14979) mapIsEmpty!14979))

(assert (= (and b!374880 (not condMapEmpty!14979)) mapNonEmpty!14979))

(get-info :version)

(assert (= (and mapNonEmpty!14979 ((_ is ValueCellFull!4128) mapValue!14979)) b!374891))

(assert (= (and b!374880 ((_ is ValueCellFull!4128) mapDefault!14979)) b!374885))

(assert (= start!37176 b!374880))

(declare-fun m!371381 () Bool)

(assert (=> start!37176 m!371381))

(declare-fun m!371383 () Bool)

(assert (=> start!37176 m!371383))

(declare-fun m!371385 () Bool)

(assert (=> start!37176 m!371385))

(declare-fun m!371387 () Bool)

(assert (=> b!374888 m!371387))

(declare-fun m!371389 () Bool)

(assert (=> b!374881 m!371389))

(declare-fun m!371391 () Bool)

(assert (=> b!374881 m!371391))

(declare-fun m!371393 () Bool)

(assert (=> b!374877 m!371393))

(declare-fun m!371395 () Bool)

(assert (=> b!374877 m!371395))

(declare-fun m!371397 () Bool)

(assert (=> b!374877 m!371397))

(declare-fun m!371399 () Bool)

(assert (=> b!374877 m!371399))

(declare-fun m!371401 () Bool)

(assert (=> b!374877 m!371401))

(declare-fun m!371403 () Bool)

(assert (=> b!374877 m!371403))

(assert (=> b!374877 m!371399))

(declare-fun m!371405 () Bool)

(assert (=> b!374877 m!371405))

(declare-fun m!371407 () Bool)

(assert (=> b!374877 m!371407))

(declare-fun m!371409 () Bool)

(assert (=> b!374890 m!371409))

(declare-fun m!371411 () Bool)

(assert (=> b!374878 m!371411))

(declare-fun m!371413 () Bool)

(assert (=> b!374883 m!371413))

(declare-fun m!371415 () Bool)

(assert (=> b!374883 m!371415))

(declare-fun m!371417 () Bool)

(assert (=> b!374883 m!371417))

(declare-fun m!371419 () Bool)

(assert (=> b!374883 m!371419))

(declare-fun m!371421 () Bool)

(assert (=> b!374883 m!371421))

(declare-fun m!371423 () Bool)

(assert (=> b!374883 m!371423))

(declare-fun m!371425 () Bool)

(assert (=> b!374883 m!371425))

(declare-fun m!371427 () Bool)

(assert (=> b!374886 m!371427))

(declare-fun m!371429 () Bool)

(assert (=> mapNonEmpty!14979 m!371429))

(declare-fun m!371431 () Bool)

(assert (=> b!374889 m!371431))

(declare-fun m!371433 () Bool)

(assert (=> b!374882 m!371433))

(declare-fun m!371435 () Bool)

(assert (=> b!374882 m!371435))

(declare-fun m!371437 () Bool)

(assert (=> b!374882 m!371437))

(declare-fun m!371439 () Bool)

(assert (=> b!374884 m!371439))

(check-sat (not b!374884) tp_is_empty!8943 (not b_next!8295) (not b!374878) (not start!37176) (not b!374889) (not b!374886) b_and!15555 (not b!374881) (not mapNonEmpty!14979) (not b!374882) (not b!374883) (not b!374877) (not b!374890))
(check-sat b_and!15555 (not b_next!8295))
