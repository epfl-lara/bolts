; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20534 () Bool)

(assert start!20534)

(declare-fun b_free!5181 () Bool)

(declare-fun b_next!5181 () Bool)

(assert (=> start!20534 (= b_free!5181 (not b_next!5181))))

(declare-fun tp!18574 () Bool)

(declare-fun b_and!11945 () Bool)

(assert (=> start!20534 (= tp!18574 b_and!11945)))

(declare-fun b!203851 () Bool)

(declare-fun res!98094 () Bool)

(declare-fun e!133432 () Bool)

(assert (=> b!203851 (=> (not res!98094) (not e!133432))))

(declare-datatypes ((array!9292 0))(
  ( (array!9293 (arr!4396 (Array (_ BitVec 32) (_ BitVec 64))) (size!4721 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9292)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6363 0))(
  ( (V!6364 (val!2563 Int)) )
))
(declare-datatypes ((ValueCell!2175 0))(
  ( (ValueCellFull!2175 (v!4529 V!6363)) (EmptyCell!2175) )
))
(declare-datatypes ((array!9294 0))(
  ( (array!9295 (arr!4397 (Array (_ BitVec 32) ValueCell!2175)) (size!4722 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9294)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!203851 (= res!98094 (and (= (size!4722 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4721 _keys!825) (size!4722 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!98091 () Bool)

(assert (=> start!20534 (=> (not res!98091) (not e!133432))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20534 (= res!98091 (validMask!0 mask!1149))))

(assert (=> start!20534 e!133432))

(declare-fun e!133429 () Bool)

(declare-fun array_inv!2893 (array!9294) Bool)

(assert (=> start!20534 (and (array_inv!2893 _values!649) e!133429)))

(assert (=> start!20534 true))

(declare-fun tp_is_empty!5037 () Bool)

(assert (=> start!20534 tp_is_empty!5037))

(declare-fun array_inv!2894 (array!9292) Bool)

(assert (=> start!20534 (array_inv!2894 _keys!825)))

(assert (=> start!20534 tp!18574))

(declare-fun mapNonEmpty!8624 () Bool)

(declare-fun mapRes!8624 () Bool)

(declare-fun tp!18575 () Bool)

(declare-fun e!133431 () Bool)

(assert (=> mapNonEmpty!8624 (= mapRes!8624 (and tp!18575 e!133431))))

(declare-fun mapValue!8624 () ValueCell!2175)

(declare-fun mapKey!8624 () (_ BitVec 32))

(declare-fun mapRest!8624 () (Array (_ BitVec 32) ValueCell!2175))

(assert (=> mapNonEmpty!8624 (= (arr!4397 _values!649) (store mapRest!8624 mapKey!8624 mapValue!8624))))

(declare-fun b!203852 () Bool)

(declare-fun e!133433 () Bool)

(declare-fun e!133435 () Bool)

(assert (=> b!203852 (= e!133433 e!133435)))

(declare-fun res!98096 () Bool)

(assert (=> b!203852 (=> res!98096 e!133435)))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!203852 (= res!98096 (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3882 0))(
  ( (tuple2!3883 (_1!1951 (_ BitVec 64)) (_2!1951 V!6363)) )
))
(declare-datatypes ((List!2806 0))(
  ( (Nil!2803) (Cons!2802 (h!3444 tuple2!3882) (t!7745 List!2806)) )
))
(declare-datatypes ((ListLongMap!2809 0))(
  ( (ListLongMap!2810 (toList!1420 List!2806)) )
))
(declare-fun lt!103103 () ListLongMap!2809)

(declare-fun lt!103099 () ListLongMap!2809)

(assert (=> b!203852 (= lt!103103 lt!103099)))

(declare-fun lt!103105 () ListLongMap!2809)

(declare-fun lt!103102 () tuple2!3882)

(declare-fun +!437 (ListLongMap!2809 tuple2!3882) ListLongMap!2809)

(assert (=> b!203852 (= lt!103099 (+!437 lt!103105 lt!103102))))

(declare-fun lt!103101 () ListLongMap!2809)

(declare-fun lt!103095 () ListLongMap!2809)

(assert (=> b!203852 (= lt!103101 lt!103095)))

(declare-fun lt!103097 () ListLongMap!2809)

(assert (=> b!203852 (= lt!103095 (+!437 lt!103097 lt!103102))))

(declare-fun lt!103094 () ListLongMap!2809)

(assert (=> b!203852 (= lt!103103 (+!437 lt!103094 lt!103102))))

(declare-fun zeroValue!615 () V!6363)

(assert (=> b!203852 (= lt!103102 (tuple2!3883 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!203853 () Bool)

(declare-fun res!98090 () Bool)

(assert (=> b!203853 (=> (not res!98090) (not e!133432))))

(declare-datatypes ((List!2807 0))(
  ( (Nil!2804) (Cons!2803 (h!3445 (_ BitVec 64)) (t!7746 List!2807)) )
))
(declare-fun arrayNoDuplicates!0 (array!9292 (_ BitVec 32) List!2807) Bool)

(assert (=> b!203853 (= res!98090 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2804))))

(declare-fun b!203854 () Bool)

(declare-fun res!98095 () Bool)

(assert (=> b!203854 (=> (not res!98095) (not e!133432))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!203854 (= res!98095 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4721 _keys!825))))))

(declare-fun b!203855 () Bool)

(declare-fun e!133430 () Bool)

(assert (=> b!203855 (= e!133429 (and e!133430 mapRes!8624))))

(declare-fun condMapEmpty!8624 () Bool)

(declare-fun mapDefault!8624 () ValueCell!2175)

(assert (=> b!203855 (= condMapEmpty!8624 (= (arr!4397 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2175)) mapDefault!8624)))))

(declare-fun b!203856 () Bool)

(assert (=> b!203856 (= e!133430 tp_is_empty!5037)))

(declare-fun b!203857 () Bool)

(declare-fun res!98097 () Bool)

(assert (=> b!203857 (=> (not res!98097) (not e!133432))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9292 (_ BitVec 32)) Bool)

(assert (=> b!203857 (= res!98097 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!203858 () Bool)

(declare-fun res!98092 () Bool)

(assert (=> b!203858 (=> (not res!98092) (not e!133432))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!203858 (= res!98092 (validKeyInArray!0 k0!843))))

(declare-fun b!203859 () Bool)

(assert (=> b!203859 (= e!133435 true)))

(declare-fun lt!103104 () tuple2!3882)

(assert (=> b!203859 (= lt!103099 (+!437 lt!103095 lt!103104))))

(declare-datatypes ((Unit!6175 0))(
  ( (Unit!6176) )
))
(declare-fun lt!103096 () Unit!6175)

(declare-fun v!520 () V!6363)

(declare-fun addCommutativeForDiffKeys!148 (ListLongMap!2809 (_ BitVec 64) V!6363 (_ BitVec 64) V!6363) Unit!6175)

(assert (=> b!203859 (= lt!103096 (addCommutativeForDiffKeys!148 lt!103097 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!203860 () Bool)

(declare-fun res!98098 () Bool)

(assert (=> b!203860 (=> (not res!98098) (not e!133432))))

(assert (=> b!203860 (= res!98098 (= (select (arr!4396 _keys!825) i!601) k0!843))))

(declare-fun b!203861 () Bool)

(assert (=> b!203861 (= e!133432 (not e!133433))))

(declare-fun res!98093 () Bool)

(assert (=> b!203861 (=> res!98093 e!133433)))

(assert (=> b!203861 (= res!98093 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6363)

(declare-fun getCurrentListMap!989 (array!9292 array!9294 (_ BitVec 32) (_ BitVec 32) V!6363 V!6363 (_ BitVec 32) Int) ListLongMap!2809)

(assert (=> b!203861 (= lt!103101 (getCurrentListMap!989 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103100 () array!9294)

(assert (=> b!203861 (= lt!103103 (getCurrentListMap!989 _keys!825 lt!103100 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203861 (and (= lt!103094 lt!103105) (= lt!103105 lt!103094))))

(assert (=> b!203861 (= lt!103105 (+!437 lt!103097 lt!103104))))

(assert (=> b!203861 (= lt!103104 (tuple2!3883 k0!843 v!520))))

(declare-fun lt!103098 () Unit!6175)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!102 (array!9292 array!9294 (_ BitVec 32) (_ BitVec 32) V!6363 V!6363 (_ BitVec 32) (_ BitVec 64) V!6363 (_ BitVec 32) Int) Unit!6175)

(assert (=> b!203861 (= lt!103098 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!102 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!360 (array!9292 array!9294 (_ BitVec 32) (_ BitVec 32) V!6363 V!6363 (_ BitVec 32) Int) ListLongMap!2809)

(assert (=> b!203861 (= lt!103094 (getCurrentListMapNoExtraKeys!360 _keys!825 lt!103100 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203861 (= lt!103100 (array!9295 (store (arr!4397 _values!649) i!601 (ValueCellFull!2175 v!520)) (size!4722 _values!649)))))

(assert (=> b!203861 (= lt!103097 (getCurrentListMapNoExtraKeys!360 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapIsEmpty!8624 () Bool)

(assert (=> mapIsEmpty!8624 mapRes!8624))

(declare-fun b!203862 () Bool)

(assert (=> b!203862 (= e!133431 tp_is_empty!5037)))

(assert (= (and start!20534 res!98091) b!203851))

(assert (= (and b!203851 res!98094) b!203857))

(assert (= (and b!203857 res!98097) b!203853))

(assert (= (and b!203853 res!98090) b!203854))

(assert (= (and b!203854 res!98095) b!203858))

(assert (= (and b!203858 res!98092) b!203860))

(assert (= (and b!203860 res!98098) b!203861))

(assert (= (and b!203861 (not res!98093)) b!203852))

(assert (= (and b!203852 (not res!98096)) b!203859))

(assert (= (and b!203855 condMapEmpty!8624) mapIsEmpty!8624))

(assert (= (and b!203855 (not condMapEmpty!8624)) mapNonEmpty!8624))

(get-info :version)

(assert (= (and mapNonEmpty!8624 ((_ is ValueCellFull!2175) mapValue!8624)) b!203862))

(assert (= (and b!203855 ((_ is ValueCellFull!2175) mapDefault!8624)) b!203856))

(assert (= start!20534 b!203855))

(declare-fun m!231349 () Bool)

(assert (=> b!203861 m!231349))

(declare-fun m!231351 () Bool)

(assert (=> b!203861 m!231351))

(declare-fun m!231353 () Bool)

(assert (=> b!203861 m!231353))

(declare-fun m!231355 () Bool)

(assert (=> b!203861 m!231355))

(declare-fun m!231357 () Bool)

(assert (=> b!203861 m!231357))

(declare-fun m!231359 () Bool)

(assert (=> b!203861 m!231359))

(declare-fun m!231361 () Bool)

(assert (=> b!203861 m!231361))

(declare-fun m!231363 () Bool)

(assert (=> b!203857 m!231363))

(declare-fun m!231365 () Bool)

(assert (=> b!203853 m!231365))

(declare-fun m!231367 () Bool)

(assert (=> start!20534 m!231367))

(declare-fun m!231369 () Bool)

(assert (=> start!20534 m!231369))

(declare-fun m!231371 () Bool)

(assert (=> start!20534 m!231371))

(declare-fun m!231373 () Bool)

(assert (=> mapNonEmpty!8624 m!231373))

(declare-fun m!231375 () Bool)

(assert (=> b!203852 m!231375))

(declare-fun m!231377 () Bool)

(assert (=> b!203852 m!231377))

(declare-fun m!231379 () Bool)

(assert (=> b!203852 m!231379))

(declare-fun m!231381 () Bool)

(assert (=> b!203860 m!231381))

(declare-fun m!231383 () Bool)

(assert (=> b!203858 m!231383))

(declare-fun m!231385 () Bool)

(assert (=> b!203859 m!231385))

(declare-fun m!231387 () Bool)

(assert (=> b!203859 m!231387))

(check-sat (not start!20534) (not mapNonEmpty!8624) b_and!11945 tp_is_empty!5037 (not b!203853) (not b!203861) (not b!203852) (not b!203859) (not b!203857) (not b_next!5181) (not b!203858))
(check-sat b_and!11945 (not b_next!5181))
