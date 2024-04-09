; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21058 () Bool)

(assert start!21058)

(declare-fun b_free!5577 () Bool)

(declare-fun b_next!5577 () Bool)

(assert (=> start!21058 (= b_free!5577 (not b_next!5577))))

(declare-fun tp!19789 () Bool)

(declare-fun b_and!12413 () Bool)

(assert (=> start!21058 (= tp!19789 b_and!12413)))

(declare-fun res!103349 () Bool)

(declare-fun e!137711 () Bool)

(assert (=> start!21058 (=> (not res!103349) (not e!137711))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21058 (= res!103349 (validMask!0 mask!1149))))

(assert (=> start!21058 e!137711))

(declare-datatypes ((V!6899 0))(
  ( (V!6900 (val!2764 Int)) )
))
(declare-datatypes ((ValueCell!2376 0))(
  ( (ValueCellFull!2376 (v!4754 V!6899)) (EmptyCell!2376) )
))
(declare-datatypes ((array!10078 0))(
  ( (array!10079 (arr!4783 (Array (_ BitVec 32) ValueCell!2376)) (size!5108 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10078)

(declare-fun e!137716 () Bool)

(declare-fun array_inv!3155 (array!10078) Bool)

(assert (=> start!21058 (and (array_inv!3155 _values!649) e!137716)))

(assert (=> start!21058 true))

(declare-fun tp_is_empty!5439 () Bool)

(assert (=> start!21058 tp_is_empty!5439))

(declare-datatypes ((array!10080 0))(
  ( (array!10081 (arr!4784 (Array (_ BitVec 32) (_ BitVec 64))) (size!5109 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10080)

(declare-fun array_inv!3156 (array!10080) Bool)

(assert (=> start!21058 (array_inv!3156 _keys!825)))

(assert (=> start!21058 tp!19789))

(declare-datatypes ((tuple2!4176 0))(
  ( (tuple2!4177 (_1!2098 (_ BitVec 64)) (_2!2098 V!6899)) )
))
(declare-datatypes ((List!3090 0))(
  ( (Nil!3087) (Cons!3086 (h!3728 tuple2!4176) (t!8041 List!3090)) )
))
(declare-datatypes ((ListLongMap!3103 0))(
  ( (ListLongMap!3104 (toList!1567 List!3090)) )
))
(declare-fun lt!108865 () ListLongMap!3103)

(declare-fun lt!108867 () tuple2!4176)

(declare-fun b!211560 () Bool)

(declare-fun e!137715 () Bool)

(declare-fun lt!108870 () ListLongMap!3103)

(declare-fun +!560 (ListLongMap!3103 tuple2!4176) ListLongMap!3103)

(assert (=> b!211560 (= e!137715 (= lt!108865 (+!560 lt!108870 lt!108867)))))

(declare-fun e!137713 () Bool)

(declare-fun b!211561 () Bool)

(declare-fun lt!108872 () ListLongMap!3103)

(declare-fun lt!108868 () ListLongMap!3103)

(assert (=> b!211561 (= e!137713 (= lt!108868 (+!560 lt!108872 lt!108867)))))

(assert (=> b!211561 e!137715))

(declare-fun res!103350 () Bool)

(assert (=> b!211561 (=> (not res!103350) (not e!137715))))

(declare-fun lt!108866 () ListLongMap!3103)

(assert (=> b!211561 (= res!103350 (= lt!108868 (+!560 lt!108866 lt!108867)))))

(declare-fun zeroValue!615 () V!6899)

(assert (=> b!211561 (= lt!108867 (tuple2!4177 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!211562 () Bool)

(assert (=> b!211562 (= e!137711 (not e!137713))))

(declare-fun res!103346 () Bool)

(assert (=> b!211562 (=> res!103346 e!137713)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!211562 (= res!103346 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6899)

(declare-fun getCurrentListMap!1095 (array!10080 array!10078 (_ BitVec 32) (_ BitVec 32) V!6899 V!6899 (_ BitVec 32) Int) ListLongMap!3103)

(assert (=> b!211562 (= lt!108865 (getCurrentListMap!1095 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108871 () array!10078)

(assert (=> b!211562 (= lt!108868 (getCurrentListMap!1095 _keys!825 lt!108871 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!211562 (and (= lt!108866 lt!108872) (= lt!108872 lt!108866))))

(declare-fun v!520 () V!6899)

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!211562 (= lt!108872 (+!560 lt!108870 (tuple2!4177 k0!843 v!520)))))

(declare-datatypes ((Unit!6419 0))(
  ( (Unit!6420) )
))
(declare-fun lt!108869 () Unit!6419)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!212 (array!10080 array!10078 (_ BitVec 32) (_ BitVec 32) V!6899 V!6899 (_ BitVec 32) (_ BitVec 64) V!6899 (_ BitVec 32) Int) Unit!6419)

(assert (=> b!211562 (= lt!108869 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!212 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!494 (array!10080 array!10078 (_ BitVec 32) (_ BitVec 32) V!6899 V!6899 (_ BitVec 32) Int) ListLongMap!3103)

(assert (=> b!211562 (= lt!108866 (getCurrentListMapNoExtraKeys!494 _keys!825 lt!108871 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!211562 (= lt!108871 (array!10079 (store (arr!4783 _values!649) i!601 (ValueCellFull!2376 v!520)) (size!5108 _values!649)))))

(assert (=> b!211562 (= lt!108870 (getCurrentListMapNoExtraKeys!494 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!211563 () Bool)

(declare-fun e!137712 () Bool)

(declare-fun mapRes!9245 () Bool)

(assert (=> b!211563 (= e!137716 (and e!137712 mapRes!9245))))

(declare-fun condMapEmpty!9245 () Bool)

(declare-fun mapDefault!9245 () ValueCell!2376)

(assert (=> b!211563 (= condMapEmpty!9245 (= (arr!4783 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2376)) mapDefault!9245)))))

(declare-fun mapNonEmpty!9245 () Bool)

(declare-fun tp!19790 () Bool)

(declare-fun e!137714 () Bool)

(assert (=> mapNonEmpty!9245 (= mapRes!9245 (and tp!19790 e!137714))))

(declare-fun mapKey!9245 () (_ BitVec 32))

(declare-fun mapRest!9245 () (Array (_ BitVec 32) ValueCell!2376))

(declare-fun mapValue!9245 () ValueCell!2376)

(assert (=> mapNonEmpty!9245 (= (arr!4783 _values!649) (store mapRest!9245 mapKey!9245 mapValue!9245))))

(declare-fun b!211564 () Bool)

(assert (=> b!211564 (= e!137712 tp_is_empty!5439)))

(declare-fun b!211565 () Bool)

(assert (=> b!211565 (= e!137714 tp_is_empty!5439)))

(declare-fun b!211566 () Bool)

(declare-fun res!103344 () Bool)

(assert (=> b!211566 (=> (not res!103344) (not e!137711))))

(declare-datatypes ((List!3091 0))(
  ( (Nil!3088) (Cons!3087 (h!3729 (_ BitVec 64)) (t!8042 List!3091)) )
))
(declare-fun arrayNoDuplicates!0 (array!10080 (_ BitVec 32) List!3091) Bool)

(assert (=> b!211566 (= res!103344 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3088))))

(declare-fun b!211567 () Bool)

(declare-fun res!103345 () Bool)

(assert (=> b!211567 (=> (not res!103345) (not e!137711))))

(assert (=> b!211567 (= res!103345 (and (= (size!5108 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5109 _keys!825) (size!5108 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!211568 () Bool)

(declare-fun res!103348 () Bool)

(assert (=> b!211568 (=> (not res!103348) (not e!137711))))

(assert (=> b!211568 (= res!103348 (= (select (arr!4784 _keys!825) i!601) k0!843))))

(declare-fun mapIsEmpty!9245 () Bool)

(assert (=> mapIsEmpty!9245 mapRes!9245))

(declare-fun b!211569 () Bool)

(declare-fun res!103343 () Bool)

(assert (=> b!211569 (=> (not res!103343) (not e!137711))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!211569 (= res!103343 (validKeyInArray!0 k0!843))))

(declare-fun b!211570 () Bool)

(declare-fun res!103342 () Bool)

(assert (=> b!211570 (=> (not res!103342) (not e!137711))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10080 (_ BitVec 32)) Bool)

(assert (=> b!211570 (= res!103342 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!211571 () Bool)

(declare-fun res!103347 () Bool)

(assert (=> b!211571 (=> (not res!103347) (not e!137711))))

(assert (=> b!211571 (= res!103347 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5109 _keys!825))))))

(assert (= (and start!21058 res!103349) b!211567))

(assert (= (and b!211567 res!103345) b!211570))

(assert (= (and b!211570 res!103342) b!211566))

(assert (= (and b!211566 res!103344) b!211571))

(assert (= (and b!211571 res!103347) b!211569))

(assert (= (and b!211569 res!103343) b!211568))

(assert (= (and b!211568 res!103348) b!211562))

(assert (= (and b!211562 (not res!103346)) b!211561))

(assert (= (and b!211561 res!103350) b!211560))

(assert (= (and b!211563 condMapEmpty!9245) mapIsEmpty!9245))

(assert (= (and b!211563 (not condMapEmpty!9245)) mapNonEmpty!9245))

(get-info :version)

(assert (= (and mapNonEmpty!9245 ((_ is ValueCellFull!2376) mapValue!9245)) b!211565))

(assert (= (and b!211563 ((_ is ValueCellFull!2376) mapDefault!9245)) b!211564))

(assert (= start!21058 b!211563))

(declare-fun m!239335 () Bool)

(assert (=> b!211560 m!239335))

(declare-fun m!239337 () Bool)

(assert (=> b!211562 m!239337))

(declare-fun m!239339 () Bool)

(assert (=> b!211562 m!239339))

(declare-fun m!239341 () Bool)

(assert (=> b!211562 m!239341))

(declare-fun m!239343 () Bool)

(assert (=> b!211562 m!239343))

(declare-fun m!239345 () Bool)

(assert (=> b!211562 m!239345))

(declare-fun m!239347 () Bool)

(assert (=> b!211562 m!239347))

(declare-fun m!239349 () Bool)

(assert (=> b!211562 m!239349))

(declare-fun m!239351 () Bool)

(assert (=> start!21058 m!239351))

(declare-fun m!239353 () Bool)

(assert (=> start!21058 m!239353))

(declare-fun m!239355 () Bool)

(assert (=> start!21058 m!239355))

(declare-fun m!239357 () Bool)

(assert (=> b!211570 m!239357))

(declare-fun m!239359 () Bool)

(assert (=> b!211566 m!239359))

(declare-fun m!239361 () Bool)

(assert (=> mapNonEmpty!9245 m!239361))

(declare-fun m!239363 () Bool)

(assert (=> b!211568 m!239363))

(declare-fun m!239365 () Bool)

(assert (=> b!211561 m!239365))

(declare-fun m!239367 () Bool)

(assert (=> b!211561 m!239367))

(declare-fun m!239369 () Bool)

(assert (=> b!211569 m!239369))

(check-sat (not b!211570) (not b!211561) b_and!12413 (not b_next!5577) (not b!211562) (not b!211560) (not start!21058) (not b!211569) tp_is_empty!5439 (not mapNonEmpty!9245) (not b!211566))
(check-sat b_and!12413 (not b_next!5577))
