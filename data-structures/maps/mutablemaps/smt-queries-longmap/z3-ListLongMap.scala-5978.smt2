; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77724 () Bool)

(assert start!77724)

(declare-fun b_free!16281 () Bool)

(declare-fun b_next!16281 () Bool)

(assert (=> start!77724 (= b_free!16281 (not b_next!16281))))

(declare-fun tp!57106 () Bool)

(declare-fun b_and!26733 () Bool)

(assert (=> start!77724 (= tp!57106 b_and!26733)))

(declare-fun b!906122 () Bool)

(declare-fun res!611618 () Bool)

(declare-fun e!507815 () Bool)

(assert (=> b!906122 (=> res!611618 e!507815)))

(declare-datatypes ((V!29897 0))(
  ( (V!29898 (val!9400 Int)) )
))
(declare-datatypes ((tuple2!12256 0))(
  ( (tuple2!12257 (_1!6138 (_ BitVec 64)) (_2!6138 V!29897)) )
))
(declare-datatypes ((List!18118 0))(
  ( (Nil!18115) (Cons!18114 (h!19260 tuple2!12256) (t!25579 List!18118)) )
))
(declare-datatypes ((ListLongMap!10967 0))(
  ( (ListLongMap!10968 (toList!5499 List!18118)) )
))
(declare-fun lt!408805 () ListLongMap!10967)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun lt!408806 () V!29897)

(declare-fun apply!476 (ListLongMap!10967 (_ BitVec 64)) V!29897)

(assert (=> b!906122 (= res!611618 (not (= (apply!476 lt!408805 k0!1033) lt!408806)))))

(declare-fun mapIsEmpty!29761 () Bool)

(declare-fun mapRes!29761 () Bool)

(assert (=> mapIsEmpty!29761 mapRes!29761))

(declare-fun b!906123 () Bool)

(declare-fun e!507817 () Bool)

(declare-fun e!507820 () Bool)

(assert (=> b!906123 (= e!507817 (not e!507820))))

(declare-fun res!611617 () Bool)

(assert (=> b!906123 (=> res!611617 e!507820)))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53426 0))(
  ( (array!53427 (arr!25668 (Array (_ BitVec 32) (_ BitVec 64))) (size!26128 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53426)

(assert (=> b!906123 (= res!611617 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26128 _keys!1386))))))

(declare-datatypes ((ValueCell!8868 0))(
  ( (ValueCellFull!8868 (v!11905 V!29897)) (EmptyCell!8868) )
))
(declare-datatypes ((array!53428 0))(
  ( (array!53429 (arr!25669 (Array (_ BitVec 32) ValueCell!8868)) (size!26129 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53428)

(declare-fun defaultEntry!1160 () Int)

(declare-fun get!13508 (ValueCell!8868 V!29897) V!29897)

(declare-fun dynLambda!1348 (Int (_ BitVec 64)) V!29897)

(assert (=> b!906123 (= lt!408806 (get!13508 (select (arr!25669 _values!1152) i!717) (dynLambda!1348 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53426 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!906123 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29897)

(declare-datatypes ((Unit!30723 0))(
  ( (Unit!30724) )
))
(declare-fun lt!408802 () Unit!30723)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29897)

(declare-fun lemmaKeyInListMapIsInArray!221 (array!53426 array!53428 (_ BitVec 32) (_ BitVec 32) V!29897 V!29897 (_ BitVec 64) Int) Unit!30723)

(assert (=> b!906123 (= lt!408802 (lemmaKeyInListMapIsInArray!221 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!906124 () Bool)

(declare-fun e!507818 () Bool)

(declare-fun tp_is_empty!18699 () Bool)

(assert (=> b!906124 (= e!507818 tp_is_empty!18699)))

(declare-fun b!906125 () Bool)

(declare-fun res!611620 () Bool)

(declare-fun e!507821 () Bool)

(assert (=> b!906125 (=> (not res!611620) (not e!507821))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53426 (_ BitVec 32)) Bool)

(assert (=> b!906125 (= res!611620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!906126 () Bool)

(declare-fun e!507814 () Bool)

(assert (=> b!906126 (= e!507814 tp_is_empty!18699)))

(declare-fun b!906127 () Bool)

(assert (=> b!906127 (= e!507821 e!507817)))

(declare-fun res!611614 () Bool)

(assert (=> b!906127 (=> (not res!611614) (not e!507817))))

(declare-fun lt!408804 () ListLongMap!10967)

(declare-fun contains!4509 (ListLongMap!10967 (_ BitVec 64)) Bool)

(assert (=> b!906127 (= res!611614 (contains!4509 lt!408804 k0!1033))))

(declare-fun getCurrentListMap!2733 (array!53426 array!53428 (_ BitVec 32) (_ BitVec 32) V!29897 V!29897 (_ BitVec 32) Int) ListLongMap!10967)

(assert (=> b!906127 (= lt!408804 (getCurrentListMap!2733 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!906128 () Bool)

(declare-fun res!611619 () Bool)

(assert (=> b!906128 (=> (not res!611619) (not e!507821))))

(assert (=> b!906128 (= res!611619 (and (= (size!26129 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26128 _keys!1386) (size!26129 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!906129 () Bool)

(assert (=> b!906129 (= e!507815 true)))

(assert (=> b!906129 (= (apply!476 lt!408804 k0!1033) lt!408806)))

(declare-fun lt!408803 () Unit!30723)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!25 (array!53426 array!53428 (_ BitVec 32) (_ BitVec 32) V!29897 V!29897 (_ BitVec 64) V!29897 (_ BitVec 32) Int) Unit!30723)

(assert (=> b!906129 (= lt!408803 (lemmaListMapApplyFromThenApplyFromZero!25 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!408806 i!717 defaultEntry!1160))))

(declare-fun mapNonEmpty!29761 () Bool)

(declare-fun tp!57105 () Bool)

(assert (=> mapNonEmpty!29761 (= mapRes!29761 (and tp!57105 e!507814))))

(declare-fun mapValue!29761 () ValueCell!8868)

(declare-fun mapKey!29761 () (_ BitVec 32))

(declare-fun mapRest!29761 () (Array (_ BitVec 32) ValueCell!8868))

(assert (=> mapNonEmpty!29761 (= (arr!25669 _values!1152) (store mapRest!29761 mapKey!29761 mapValue!29761))))

(declare-fun res!611613 () Bool)

(assert (=> start!77724 (=> (not res!611613) (not e!507821))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77724 (= res!611613 (validMask!0 mask!1756))))

(assert (=> start!77724 e!507821))

(declare-fun e!507816 () Bool)

(declare-fun array_inv!20080 (array!53428) Bool)

(assert (=> start!77724 (and (array_inv!20080 _values!1152) e!507816)))

(assert (=> start!77724 tp!57106))

(assert (=> start!77724 true))

(assert (=> start!77724 tp_is_empty!18699))

(declare-fun array_inv!20081 (array!53426) Bool)

(assert (=> start!77724 (array_inv!20081 _keys!1386)))

(declare-fun b!906121 () Bool)

(declare-fun res!611615 () Bool)

(assert (=> b!906121 (=> (not res!611615) (not e!507817))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!906121 (= res!611615 (inRange!0 i!717 mask!1756))))

(declare-fun b!906130 () Bool)

(declare-fun res!611622 () Bool)

(assert (=> b!906130 (=> (not res!611622) (not e!507817))))

(assert (=> b!906130 (= res!611622 (and (= (select (arr!25668 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!906131 () Bool)

(assert (=> b!906131 (= e!507816 (and e!507818 mapRes!29761))))

(declare-fun condMapEmpty!29761 () Bool)

(declare-fun mapDefault!29761 () ValueCell!8868)

(assert (=> b!906131 (= condMapEmpty!29761 (= (arr!25669 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8868)) mapDefault!29761)))))

(declare-fun b!906132 () Bool)

(declare-fun res!611621 () Bool)

(assert (=> b!906132 (=> (not res!611621) (not e!507821))))

(declare-datatypes ((List!18119 0))(
  ( (Nil!18116) (Cons!18115 (h!19261 (_ BitVec 64)) (t!25580 List!18119)) )
))
(declare-fun arrayNoDuplicates!0 (array!53426 (_ BitVec 32) List!18119) Bool)

(assert (=> b!906132 (= res!611621 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18116))))

(declare-fun b!906133 () Bool)

(assert (=> b!906133 (= e!507820 e!507815)))

(declare-fun res!611616 () Bool)

(assert (=> b!906133 (=> res!611616 e!507815)))

(assert (=> b!906133 (= res!611616 (not (contains!4509 lt!408805 k0!1033)))))

(assert (=> b!906133 (= lt!408805 (getCurrentListMap!2733 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(assert (= (and start!77724 res!611613) b!906128))

(assert (= (and b!906128 res!611619) b!906125))

(assert (= (and b!906125 res!611620) b!906132))

(assert (= (and b!906132 res!611621) b!906127))

(assert (= (and b!906127 res!611614) b!906121))

(assert (= (and b!906121 res!611615) b!906130))

(assert (= (and b!906130 res!611622) b!906123))

(assert (= (and b!906123 (not res!611617)) b!906133))

(assert (= (and b!906133 (not res!611616)) b!906122))

(assert (= (and b!906122 (not res!611618)) b!906129))

(assert (= (and b!906131 condMapEmpty!29761) mapIsEmpty!29761))

(assert (= (and b!906131 (not condMapEmpty!29761)) mapNonEmpty!29761))

(get-info :version)

(assert (= (and mapNonEmpty!29761 ((_ is ValueCellFull!8868) mapValue!29761)) b!906126))

(assert (= (and b!906131 ((_ is ValueCellFull!8868) mapDefault!29761)) b!906124))

(assert (= start!77724 b!906131))

(declare-fun b_lambda!13185 () Bool)

(assert (=> (not b_lambda!13185) (not b!906123)))

(declare-fun t!25578 () Bool)

(declare-fun tb!5311 () Bool)

(assert (=> (and start!77724 (= defaultEntry!1160 defaultEntry!1160) t!25578) tb!5311))

(declare-fun result!10409 () Bool)

(assert (=> tb!5311 (= result!10409 tp_is_empty!18699)))

(assert (=> b!906123 t!25578))

(declare-fun b_and!26735 () Bool)

(assert (= b_and!26733 (and (=> t!25578 result!10409) b_and!26735)))

(declare-fun m!841611 () Bool)

(assert (=> b!906133 m!841611))

(declare-fun m!841613 () Bool)

(assert (=> b!906133 m!841613))

(declare-fun m!841615 () Bool)

(assert (=> b!906132 m!841615))

(declare-fun m!841617 () Bool)

(assert (=> b!906122 m!841617))

(declare-fun m!841619 () Bool)

(assert (=> b!906130 m!841619))

(declare-fun m!841621 () Bool)

(assert (=> b!906127 m!841621))

(declare-fun m!841623 () Bool)

(assert (=> b!906127 m!841623))

(declare-fun m!841625 () Bool)

(assert (=> b!906121 m!841625))

(declare-fun m!841627 () Bool)

(assert (=> mapNonEmpty!29761 m!841627))

(declare-fun m!841629 () Bool)

(assert (=> b!906125 m!841629))

(declare-fun m!841631 () Bool)

(assert (=> b!906129 m!841631))

(declare-fun m!841633 () Bool)

(assert (=> b!906129 m!841633))

(declare-fun m!841635 () Bool)

(assert (=> start!77724 m!841635))

(declare-fun m!841637 () Bool)

(assert (=> start!77724 m!841637))

(declare-fun m!841639 () Bool)

(assert (=> start!77724 m!841639))

(declare-fun m!841641 () Bool)

(assert (=> b!906123 m!841641))

(declare-fun m!841643 () Bool)

(assert (=> b!906123 m!841643))

(declare-fun m!841645 () Bool)

(assert (=> b!906123 m!841645))

(declare-fun m!841647 () Bool)

(assert (=> b!906123 m!841647))

(assert (=> b!906123 m!841641))

(assert (=> b!906123 m!841645))

(declare-fun m!841649 () Bool)

(assert (=> b!906123 m!841649))

(check-sat (not b!906133) (not b!906121) (not b_next!16281) (not b!906132) (not mapNonEmpty!29761) (not b!906127) tp_is_empty!18699 (not b_lambda!13185) (not start!77724) (not b!906123) (not b!906125) (not b!906122) b_and!26735 (not b!906129))
(check-sat b_and!26735 (not b_next!16281))
