; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38148 () Bool)

(assert start!38148)

(declare-fun b_free!9021 () Bool)

(declare-fun b_next!9021 () Bool)

(assert (=> start!38148 (= b_free!9021 (not b_next!9021))))

(declare-fun tp!31844 () Bool)

(declare-fun b_and!16401 () Bool)

(assert (=> start!38148 (= tp!31844 b_and!16401)))

(declare-fun b!392789 () Bool)

(declare-fun res!225031 () Bool)

(declare-fun e!237861 () Bool)

(assert (=> b!392789 (=> (not res!225031) (not e!237861))))

(declare-datatypes ((array!23267 0))(
  ( (array!23268 (arr!11089 (Array (_ BitVec 32) (_ BitVec 64))) (size!11441 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23267)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23267 (_ BitVec 32)) Bool)

(assert (=> b!392789 (= res!225031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!392790 () Bool)

(declare-fun res!225027 () Bool)

(assert (=> b!392790 (=> (not res!225027) (not e!237861))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!392790 (= res!225027 (validKeyInArray!0 k0!778))))

(declare-fun b!392791 () Bool)

(declare-fun e!237866 () Bool)

(assert (=> b!392791 (= e!237861 e!237866)))

(declare-fun res!225033 () Bool)

(assert (=> b!392791 (=> (not res!225033) (not e!237866))))

(declare-fun lt!185799 () array!23267)

(assert (=> b!392791 (= res!225033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!185799 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!392791 (= lt!185799 (array!23268 (store (arr!11089 _keys!658) i!548 k0!778) (size!11441 _keys!658)))))

(declare-fun b!392792 () Bool)

(declare-fun e!237865 () Bool)

(declare-fun tp_is_empty!9693 () Bool)

(assert (=> b!392792 (= e!237865 tp_is_empty!9693)))

(declare-fun b!392793 () Bool)

(declare-fun e!237864 () Bool)

(assert (=> b!392793 (= e!237864 true)))

(declare-datatypes ((V!14029 0))(
  ( (V!14030 (val!4891 Int)) )
))
(declare-datatypes ((tuple2!6530 0))(
  ( (tuple2!6531 (_1!3275 (_ BitVec 64)) (_2!3275 V!14029)) )
))
(declare-datatypes ((List!6412 0))(
  ( (Nil!6409) (Cons!6408 (h!7264 tuple2!6530) (t!11590 List!6412)) )
))
(declare-datatypes ((ListLongMap!5457 0))(
  ( (ListLongMap!5458 (toList!2744 List!6412)) )
))
(declare-fun lt!185802 () ListLongMap!5457)

(declare-fun lt!185800 () ListLongMap!5457)

(declare-fun lt!185793 () tuple2!6530)

(declare-fun +!1042 (ListLongMap!5457 tuple2!6530) ListLongMap!5457)

(assert (=> b!392793 (= lt!185802 (+!1042 lt!185800 lt!185793))))

(declare-fun v!373 () V!14029)

(declare-fun lt!185795 () ListLongMap!5457)

(declare-datatypes ((Unit!11979 0))(
  ( (Unit!11980) )
))
(declare-fun lt!185797 () Unit!11979)

(declare-fun minValue!472 () V!14029)

(declare-fun addCommutativeForDiffKeys!339 (ListLongMap!5457 (_ BitVec 64) V!14029 (_ BitVec 64) V!14029) Unit!11979)

(assert (=> b!392793 (= lt!185797 (addCommutativeForDiffKeys!339 lt!185795 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!392794 () Bool)

(declare-fun e!237860 () Bool)

(assert (=> b!392794 (= e!237866 (not e!237860))))

(declare-fun res!225029 () Bool)

(assert (=> b!392794 (=> res!225029 e!237860)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!392794 (= res!225029 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((ValueCell!4503 0))(
  ( (ValueCellFull!4503 (v!7124 V!14029)) (EmptyCell!4503) )
))
(declare-datatypes ((array!23269 0))(
  ( (array!23270 (arr!11090 (Array (_ BitVec 32) ValueCell!4503)) (size!11442 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23269)

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!185798 () ListLongMap!5457)

(declare-fun zeroValue!472 () V!14029)

(declare-fun getCurrentListMap!2107 (array!23267 array!23269 (_ BitVec 32) (_ BitVec 32) V!14029 V!14029 (_ BitVec 32) Int) ListLongMap!5457)

(assert (=> b!392794 (= lt!185798 (getCurrentListMap!2107 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185804 () ListLongMap!5457)

(declare-fun lt!185801 () array!23269)

(assert (=> b!392794 (= lt!185804 (getCurrentListMap!2107 lt!185799 lt!185801 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185796 () ListLongMap!5457)

(declare-fun lt!185794 () ListLongMap!5457)

(assert (=> b!392794 (and (= lt!185796 lt!185794) (= lt!185794 lt!185796))))

(assert (=> b!392794 (= lt!185794 (+!1042 lt!185795 lt!185793))))

(assert (=> b!392794 (= lt!185793 (tuple2!6531 k0!778 v!373))))

(declare-fun lt!185803 () Unit!11979)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!264 (array!23267 array!23269 (_ BitVec 32) (_ BitVec 32) V!14029 V!14029 (_ BitVec 32) (_ BitVec 64) V!14029 (_ BitVec 32) Int) Unit!11979)

(assert (=> b!392794 (= lt!185803 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!264 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!969 (array!23267 array!23269 (_ BitVec 32) (_ BitVec 32) V!14029 V!14029 (_ BitVec 32) Int) ListLongMap!5457)

(assert (=> b!392794 (= lt!185796 (getCurrentListMapNoExtraKeys!969 lt!185799 lt!185801 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!392794 (= lt!185801 (array!23270 (store (arr!11090 _values!506) i!548 (ValueCellFull!4503 v!373)) (size!11442 _values!506)))))

(assert (=> b!392794 (= lt!185795 (getCurrentListMapNoExtraKeys!969 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapNonEmpty!16134 () Bool)

(declare-fun mapRes!16134 () Bool)

(declare-fun tp!31845 () Bool)

(declare-fun e!237859 () Bool)

(assert (=> mapNonEmpty!16134 (= mapRes!16134 (and tp!31845 e!237859))))

(declare-fun mapKey!16134 () (_ BitVec 32))

(declare-fun mapValue!16134 () ValueCell!4503)

(declare-fun mapRest!16134 () (Array (_ BitVec 32) ValueCell!4503))

(assert (=> mapNonEmpty!16134 (= (arr!11090 _values!506) (store mapRest!16134 mapKey!16134 mapValue!16134))))

(declare-fun b!392795 () Bool)

(declare-fun res!225026 () Bool)

(assert (=> b!392795 (=> (not res!225026) (not e!237866))))

(declare-datatypes ((List!6413 0))(
  ( (Nil!6410) (Cons!6409 (h!7265 (_ BitVec 64)) (t!11591 List!6413)) )
))
(declare-fun arrayNoDuplicates!0 (array!23267 (_ BitVec 32) List!6413) Bool)

(assert (=> b!392795 (= res!225026 (arrayNoDuplicates!0 lt!185799 #b00000000000000000000000000000000 Nil!6410))))

(declare-fun b!392796 () Bool)

(declare-fun res!225032 () Bool)

(assert (=> b!392796 (=> (not res!225032) (not e!237861))))

(assert (=> b!392796 (= res!225032 (or (= (select (arr!11089 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11089 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!392797 () Bool)

(assert (=> b!392797 (= e!237860 e!237864)))

(declare-fun res!225023 () Bool)

(assert (=> b!392797 (=> res!225023 e!237864)))

(assert (=> b!392797 (= res!225023 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!392797 (= lt!185798 lt!185800)))

(declare-fun lt!185792 () tuple2!6530)

(assert (=> b!392797 (= lt!185800 (+!1042 lt!185795 lt!185792))))

(assert (=> b!392797 (= lt!185804 lt!185802)))

(assert (=> b!392797 (= lt!185802 (+!1042 lt!185794 lt!185792))))

(assert (=> b!392797 (= lt!185804 (+!1042 lt!185796 lt!185792))))

(assert (=> b!392797 (= lt!185792 (tuple2!6531 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!392798 () Bool)

(declare-fun res!225030 () Bool)

(assert (=> b!392798 (=> (not res!225030) (not e!237861))))

(declare-fun arrayContainsKey!0 (array!23267 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!392798 (= res!225030 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!392799 () Bool)

(declare-fun e!237863 () Bool)

(assert (=> b!392799 (= e!237863 (and e!237865 mapRes!16134))))

(declare-fun condMapEmpty!16134 () Bool)

(declare-fun mapDefault!16134 () ValueCell!4503)

(assert (=> b!392799 (= condMapEmpty!16134 (= (arr!11090 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4503)) mapDefault!16134)))))

(declare-fun res!225025 () Bool)

(assert (=> start!38148 (=> (not res!225025) (not e!237861))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38148 (= res!225025 (validMask!0 mask!970))))

(assert (=> start!38148 e!237861))

(declare-fun array_inv!8128 (array!23269) Bool)

(assert (=> start!38148 (and (array_inv!8128 _values!506) e!237863)))

(assert (=> start!38148 tp!31844))

(assert (=> start!38148 true))

(assert (=> start!38148 tp_is_empty!9693))

(declare-fun array_inv!8129 (array!23267) Bool)

(assert (=> start!38148 (array_inv!8129 _keys!658)))

(declare-fun b!392800 () Bool)

(declare-fun res!225024 () Bool)

(assert (=> b!392800 (=> (not res!225024) (not e!237861))))

(assert (=> b!392800 (= res!225024 (and (= (size!11442 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11441 _keys!658) (size!11442 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!392801 () Bool)

(declare-fun res!225022 () Bool)

(assert (=> b!392801 (=> (not res!225022) (not e!237861))))

(assert (=> b!392801 (= res!225022 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11441 _keys!658))))))

(declare-fun mapIsEmpty!16134 () Bool)

(assert (=> mapIsEmpty!16134 mapRes!16134))

(declare-fun b!392802 () Bool)

(assert (=> b!392802 (= e!237859 tp_is_empty!9693)))

(declare-fun b!392803 () Bool)

(declare-fun res!225028 () Bool)

(assert (=> b!392803 (=> (not res!225028) (not e!237861))))

(assert (=> b!392803 (= res!225028 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6410))))

(assert (= (and start!38148 res!225025) b!392800))

(assert (= (and b!392800 res!225024) b!392789))

(assert (= (and b!392789 res!225031) b!392803))

(assert (= (and b!392803 res!225028) b!392801))

(assert (= (and b!392801 res!225022) b!392790))

(assert (= (and b!392790 res!225027) b!392796))

(assert (= (and b!392796 res!225032) b!392798))

(assert (= (and b!392798 res!225030) b!392791))

(assert (= (and b!392791 res!225033) b!392795))

(assert (= (and b!392795 res!225026) b!392794))

(assert (= (and b!392794 (not res!225029)) b!392797))

(assert (= (and b!392797 (not res!225023)) b!392793))

(assert (= (and b!392799 condMapEmpty!16134) mapIsEmpty!16134))

(assert (= (and b!392799 (not condMapEmpty!16134)) mapNonEmpty!16134))

(get-info :version)

(assert (= (and mapNonEmpty!16134 ((_ is ValueCellFull!4503) mapValue!16134)) b!392802))

(assert (= (and b!392799 ((_ is ValueCellFull!4503) mapDefault!16134)) b!392792))

(assert (= start!38148 b!392799))

(declare-fun m!389269 () Bool)

(assert (=> b!392794 m!389269))

(declare-fun m!389271 () Bool)

(assert (=> b!392794 m!389271))

(declare-fun m!389273 () Bool)

(assert (=> b!392794 m!389273))

(declare-fun m!389275 () Bool)

(assert (=> b!392794 m!389275))

(declare-fun m!389277 () Bool)

(assert (=> b!392794 m!389277))

(declare-fun m!389279 () Bool)

(assert (=> b!392794 m!389279))

(declare-fun m!389281 () Bool)

(assert (=> b!392794 m!389281))

(declare-fun m!389283 () Bool)

(assert (=> mapNonEmpty!16134 m!389283))

(declare-fun m!389285 () Bool)

(assert (=> b!392789 m!389285))

(declare-fun m!389287 () Bool)

(assert (=> b!392791 m!389287))

(declare-fun m!389289 () Bool)

(assert (=> b!392791 m!389289))

(declare-fun m!389291 () Bool)

(assert (=> b!392795 m!389291))

(declare-fun m!389293 () Bool)

(assert (=> b!392796 m!389293))

(declare-fun m!389295 () Bool)

(assert (=> b!392803 m!389295))

(declare-fun m!389297 () Bool)

(assert (=> b!392790 m!389297))

(declare-fun m!389299 () Bool)

(assert (=> b!392793 m!389299))

(declare-fun m!389301 () Bool)

(assert (=> b!392793 m!389301))

(declare-fun m!389303 () Bool)

(assert (=> start!38148 m!389303))

(declare-fun m!389305 () Bool)

(assert (=> start!38148 m!389305))

(declare-fun m!389307 () Bool)

(assert (=> start!38148 m!389307))

(declare-fun m!389309 () Bool)

(assert (=> b!392798 m!389309))

(declare-fun m!389311 () Bool)

(assert (=> b!392797 m!389311))

(declare-fun m!389313 () Bool)

(assert (=> b!392797 m!389313))

(declare-fun m!389315 () Bool)

(assert (=> b!392797 m!389315))

(check-sat (not start!38148) (not b!392793) (not b!392797) (not b!392791) (not b!392798) (not b_next!9021) (not b!392794) (not b!392795) tp_is_empty!9693 b_and!16401 (not mapNonEmpty!16134) (not b!392790) (not b!392803) (not b!392789))
(check-sat b_and!16401 (not b_next!9021))
