; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20870 () Bool)

(assert start!20870)

(declare-fun b_free!5511 () Bool)

(declare-fun b_next!5511 () Bool)

(assert (=> start!20870 (= b_free!5511 (not b_next!5511))))

(declare-fun tp!19573 () Bool)

(declare-fun b_and!12275 () Bool)

(assert (=> start!20870 (= tp!19573 b_and!12275)))

(declare-fun res!102014 () Bool)

(declare-fun e!136372 () Bool)

(assert (=> start!20870 (=> (not res!102014) (not e!136372))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20870 (= res!102014 (validMask!0 mask!1149))))

(assert (=> start!20870 e!136372))

(declare-datatypes ((V!6811 0))(
  ( (V!6812 (val!2731 Int)) )
))
(declare-datatypes ((ValueCell!2343 0))(
  ( (ValueCellFull!2343 (v!4697 V!6811)) (EmptyCell!2343) )
))
(declare-datatypes ((array!9942 0))(
  ( (array!9943 (arr!4721 (Array (_ BitVec 32) ValueCell!2343)) (size!5046 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9942)

(declare-fun e!136375 () Bool)

(declare-fun array_inv!3115 (array!9942) Bool)

(assert (=> start!20870 (and (array_inv!3115 _values!649) e!136375)))

(assert (=> start!20870 true))

(declare-fun tp_is_empty!5373 () Bool)

(assert (=> start!20870 tp_is_empty!5373))

(declare-datatypes ((array!9944 0))(
  ( (array!9945 (arr!4722 (Array (_ BitVec 32) (_ BitVec 64))) (size!5047 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9944)

(declare-fun array_inv!3116 (array!9944) Bool)

(assert (=> start!20870 (array_inv!3116 _keys!825)))

(assert (=> start!20870 tp!19573))

(declare-fun b!209286 () Bool)

(declare-fun res!102017 () Bool)

(assert (=> b!209286 (=> (not res!102017) (not e!136372))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!209286 (= res!102017 (validKeyInArray!0 k0!843))))

(declare-fun b!209287 () Bool)

(declare-fun res!102013 () Bool)

(assert (=> b!209287 (=> (not res!102013) (not e!136372))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9944 (_ BitVec 32)) Bool)

(assert (=> b!209287 (= res!102013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!209288 () Bool)

(declare-fun e!136373 () Bool)

(assert (=> b!209288 (= e!136373 tp_is_empty!5373)))

(declare-fun b!209289 () Bool)

(declare-fun res!102016 () Bool)

(assert (=> b!209289 (=> (not res!102016) (not e!136372))))

(declare-datatypes ((List!3041 0))(
  ( (Nil!3038) (Cons!3037 (h!3679 (_ BitVec 64)) (t!7980 List!3041)) )
))
(declare-fun arrayNoDuplicates!0 (array!9944 (_ BitVec 32) List!3041) Bool)

(assert (=> b!209289 (= res!102016 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3038))))

(declare-fun b!209290 () Bool)

(declare-fun e!136371 () Bool)

(assert (=> b!209290 (= e!136371 tp_is_empty!5373)))

(declare-fun mapIsEmpty!9128 () Bool)

(declare-fun mapRes!9128 () Bool)

(assert (=> mapIsEmpty!9128 mapRes!9128))

(declare-fun b!209291 () Bool)

(declare-fun res!102018 () Bool)

(assert (=> b!209291 (=> (not res!102018) (not e!136372))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!209291 (= res!102018 (= (select (arr!4722 _keys!825) i!601) k0!843))))

(declare-fun mapNonEmpty!9128 () Bool)

(declare-fun tp!19574 () Bool)

(assert (=> mapNonEmpty!9128 (= mapRes!9128 (and tp!19574 e!136371))))

(declare-fun mapKey!9128 () (_ BitVec 32))

(declare-fun mapValue!9128 () ValueCell!2343)

(declare-fun mapRest!9128 () (Array (_ BitVec 32) ValueCell!2343))

(assert (=> mapNonEmpty!9128 (= (arr!4721 _values!649) (store mapRest!9128 mapKey!9128 mapValue!9128))))

(declare-fun b!209292 () Bool)

(declare-fun res!102015 () Bool)

(assert (=> b!209292 (=> (not res!102015) (not e!136372))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!209292 (= res!102015 (and (= (size!5046 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5047 _keys!825) (size!5046 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!209293 () Bool)

(assert (=> b!209293 (= e!136375 (and e!136373 mapRes!9128))))

(declare-fun condMapEmpty!9128 () Bool)

(declare-fun mapDefault!9128 () ValueCell!2343)

(assert (=> b!209293 (= condMapEmpty!9128 (= (arr!4721 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2343)) mapDefault!9128)))))

(declare-fun b!209294 () Bool)

(declare-fun res!102019 () Bool)

(assert (=> b!209294 (=> (not res!102019) (not e!136372))))

(assert (=> b!209294 (= res!102019 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5047 _keys!825))))))

(declare-fun b!209295 () Bool)

(declare-datatypes ((tuple2!4122 0))(
  ( (tuple2!4123 (_1!2071 (_ BitVec 64)) (_2!2071 V!6811)) )
))
(declare-datatypes ((List!3042 0))(
  ( (Nil!3039) (Cons!3038 (h!3680 tuple2!4122) (t!7981 List!3042)) )
))
(declare-datatypes ((ListLongMap!3049 0))(
  ( (ListLongMap!3050 (toList!1540 List!3042)) )
))
(declare-fun lt!106999 () ListLongMap!3049)

(declare-fun lt!106998 () ListLongMap!3049)

(assert (=> b!209295 (= e!136372 (not (= lt!106999 lt!106998)))))

(assert (=> b!209295 (= lt!106998 lt!106999)))

(declare-fun lt!106997 () ListLongMap!3049)

(declare-fun v!520 () V!6811)

(declare-fun +!533 (ListLongMap!3049 tuple2!4122) ListLongMap!3049)

(assert (=> b!209295 (= lt!106999 (+!533 lt!106997 (tuple2!4123 k0!843 v!520)))))

(declare-datatypes ((Unit!6361 0))(
  ( (Unit!6362) )
))
(declare-fun lt!106996 () Unit!6361)

(declare-fun zeroValue!615 () V!6811)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6811)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!191 (array!9944 array!9942 (_ BitVec 32) (_ BitVec 32) V!6811 V!6811 (_ BitVec 32) (_ BitVec 64) V!6811 (_ BitVec 32) Int) Unit!6361)

(assert (=> b!209295 (= lt!106996 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!191 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!473 (array!9944 array!9942 (_ BitVec 32) (_ BitVec 32) V!6811 V!6811 (_ BitVec 32) Int) ListLongMap!3049)

(assert (=> b!209295 (= lt!106998 (getCurrentListMapNoExtraKeys!473 _keys!825 (array!9943 (store (arr!4721 _values!649) i!601 (ValueCellFull!2343 v!520)) (size!5046 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!209295 (= lt!106997 (getCurrentListMapNoExtraKeys!473 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (= (and start!20870 res!102014) b!209292))

(assert (= (and b!209292 res!102015) b!209287))

(assert (= (and b!209287 res!102013) b!209289))

(assert (= (and b!209289 res!102016) b!209294))

(assert (= (and b!209294 res!102019) b!209286))

(assert (= (and b!209286 res!102017) b!209291))

(assert (= (and b!209291 res!102018) b!209295))

(assert (= (and b!209293 condMapEmpty!9128) mapIsEmpty!9128))

(assert (= (and b!209293 (not condMapEmpty!9128)) mapNonEmpty!9128))

(get-info :version)

(assert (= (and mapNonEmpty!9128 ((_ is ValueCellFull!2343) mapValue!9128)) b!209290))

(assert (= (and b!209293 ((_ is ValueCellFull!2343) mapDefault!9128)) b!209288))

(assert (= start!20870 b!209293))

(declare-fun m!236705 () Bool)

(assert (=> b!209295 m!236705))

(declare-fun m!236707 () Bool)

(assert (=> b!209295 m!236707))

(declare-fun m!236709 () Bool)

(assert (=> b!209295 m!236709))

(declare-fun m!236711 () Bool)

(assert (=> b!209295 m!236711))

(declare-fun m!236713 () Bool)

(assert (=> b!209295 m!236713))

(declare-fun m!236715 () Bool)

(assert (=> b!209287 m!236715))

(declare-fun m!236717 () Bool)

(assert (=> b!209291 m!236717))

(declare-fun m!236719 () Bool)

(assert (=> b!209289 m!236719))

(declare-fun m!236721 () Bool)

(assert (=> b!209286 m!236721))

(declare-fun m!236723 () Bool)

(assert (=> start!20870 m!236723))

(declare-fun m!236725 () Bool)

(assert (=> start!20870 m!236725))

(declare-fun m!236727 () Bool)

(assert (=> start!20870 m!236727))

(declare-fun m!236729 () Bool)

(assert (=> mapNonEmpty!9128 m!236729))

(check-sat (not b_next!5511) (not b!209287) (not b!209286) (not start!20870) (not b!209289) (not b!209295) (not mapNonEmpty!9128) b_and!12275 tp_is_empty!5373)
(check-sat b_and!12275 (not b_next!5511))
