; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21000 () Bool)

(assert start!21000)

(declare-fun b_free!5559 () Bool)

(declare-fun b_next!5559 () Bool)

(assert (=> start!21000 (= b_free!5559 (not b_next!5559))))

(declare-fun tp!19729 () Bool)

(declare-fun b_and!12371 () Bool)

(assert (=> start!21000 (= tp!19729 b_and!12371)))

(declare-fun b!210880 () Bool)

(declare-fun e!137306 () Bool)

(declare-fun e!137309 () Bool)

(declare-fun mapRes!9212 () Bool)

(assert (=> b!210880 (= e!137306 (and e!137309 mapRes!9212))))

(declare-fun condMapEmpty!9212 () Bool)

(declare-datatypes ((V!6875 0))(
  ( (V!6876 (val!2755 Int)) )
))
(declare-datatypes ((ValueCell!2367 0))(
  ( (ValueCellFull!2367 (v!4737 V!6875)) (EmptyCell!2367) )
))
(declare-datatypes ((array!10042 0))(
  ( (array!10043 (arr!4767 (Array (_ BitVec 32) ValueCell!2367)) (size!5092 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10042)

(declare-fun mapDefault!9212 () ValueCell!2367)

(assert (=> b!210880 (= condMapEmpty!9212 (= (arr!4767 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2367)) mapDefault!9212)))))

(declare-fun b!210881 () Bool)

(declare-fun res!102964 () Bool)

(declare-fun e!137305 () Bool)

(assert (=> b!210881 (=> (not res!102964) (not e!137305))))

(declare-datatypes ((array!10044 0))(
  ( (array!10045 (arr!4768 (Array (_ BitVec 32) (_ BitVec 64))) (size!5093 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10044)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10044 (_ BitVec 32)) Bool)

(assert (=> b!210881 (= res!102964 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-datatypes ((tuple2!4158 0))(
  ( (tuple2!4159 (_1!2089 (_ BitVec 64)) (_2!2089 V!6875)) )
))
(declare-datatypes ((List!3076 0))(
  ( (Nil!3073) (Cons!3072 (h!3714 tuple2!4158) (t!8023 List!3076)) )
))
(declare-datatypes ((ListLongMap!3085 0))(
  ( (ListLongMap!3086 (toList!1558 List!3076)) )
))
(declare-fun lt!108345 () ListLongMap!3085)

(declare-fun e!137307 () Bool)

(declare-fun lt!108344 () tuple2!4158)

(declare-fun b!210882 () Bool)

(declare-fun lt!108336 () ListLongMap!3085)

(declare-fun +!551 (ListLongMap!3085 tuple2!4158) ListLongMap!3085)

(assert (=> b!210882 (= e!137307 (= (+!551 lt!108336 lt!108344) lt!108345))))

(declare-fun lt!108349 () ListLongMap!3085)

(declare-fun lt!108346 () ListLongMap!3085)

(declare-fun lt!108338 () tuple2!4158)

(assert (=> b!210882 (= (+!551 lt!108349 lt!108338) (+!551 lt!108346 lt!108344))))

(declare-fun lt!108343 () ListLongMap!3085)

(declare-fun minValue!615 () V!6875)

(declare-fun v!520 () V!6875)

(declare-datatypes ((Unit!6399 0))(
  ( (Unit!6400) )
))
(declare-fun lt!108348 () Unit!6399)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun addCommutativeForDiffKeys!196 (ListLongMap!3085 (_ BitVec 64) V!6875 (_ BitVec 64) V!6875) Unit!6399)

(assert (=> b!210882 (= lt!108348 (addCommutativeForDiffKeys!196 lt!108343 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!210883 () Bool)

(declare-fun res!102963 () Bool)

(assert (=> b!210883 (=> (not res!102963) (not e!137305))))

(declare-datatypes ((List!3077 0))(
  ( (Nil!3074) (Cons!3073 (h!3715 (_ BitVec 64)) (t!8024 List!3077)) )
))
(declare-fun arrayNoDuplicates!0 (array!10044 (_ BitVec 32) List!3077) Bool)

(assert (=> b!210883 (= res!102963 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3074))))

(declare-fun mapNonEmpty!9212 () Bool)

(declare-fun tp!19730 () Bool)

(declare-fun e!137310 () Bool)

(assert (=> mapNonEmpty!9212 (= mapRes!9212 (and tp!19730 e!137310))))

(declare-fun mapValue!9212 () ValueCell!2367)

(declare-fun mapRest!9212 () (Array (_ BitVec 32) ValueCell!2367))

(declare-fun mapKey!9212 () (_ BitVec 32))

(assert (=> mapNonEmpty!9212 (= (arr!4767 _values!649) (store mapRest!9212 mapKey!9212 mapValue!9212))))

(declare-fun b!210884 () Bool)

(declare-fun tp_is_empty!5421 () Bool)

(assert (=> b!210884 (= e!137310 tp_is_empty!5421)))

(declare-fun res!102959 () Bool)

(assert (=> start!21000 (=> (not res!102959) (not e!137305))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21000 (= res!102959 (validMask!0 mask!1149))))

(assert (=> start!21000 e!137305))

(declare-fun array_inv!3147 (array!10042) Bool)

(assert (=> start!21000 (and (array_inv!3147 _values!649) e!137306)))

(assert (=> start!21000 true))

(assert (=> start!21000 tp_is_empty!5421))

(declare-fun array_inv!3148 (array!10044) Bool)

(assert (=> start!21000 (array_inv!3148 _keys!825)))

(assert (=> start!21000 tp!19729))

(declare-fun mapIsEmpty!9212 () Bool)

(assert (=> mapIsEmpty!9212 mapRes!9212))

(declare-fun b!210885 () Bool)

(declare-fun e!137311 () Bool)

(assert (=> b!210885 (= e!137311 e!137307)))

(declare-fun res!102960 () Bool)

(assert (=> b!210885 (=> res!102960 e!137307)))

(assert (=> b!210885 (= res!102960 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!108340 () ListLongMap!3085)

(assert (=> b!210885 (= lt!108340 lt!108349)))

(assert (=> b!210885 (= lt!108349 (+!551 lt!108343 lt!108344))))

(declare-fun lt!108339 () ListLongMap!3085)

(declare-fun lt!108341 () Unit!6399)

(declare-fun zeroValue!615 () V!6875)

(assert (=> b!210885 (= lt!108341 (addCommutativeForDiffKeys!196 lt!108339 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(assert (=> b!210885 (= lt!108345 (+!551 lt!108340 lt!108338))))

(declare-fun lt!108335 () ListLongMap!3085)

(declare-fun lt!108334 () tuple2!4158)

(assert (=> b!210885 (= lt!108340 (+!551 lt!108335 lt!108334))))

(assert (=> b!210885 (= lt!108336 lt!108346)))

(assert (=> b!210885 (= lt!108346 (+!551 lt!108343 lt!108338))))

(assert (=> b!210885 (= lt!108343 (+!551 lt!108339 lt!108334))))

(declare-fun lt!108347 () ListLongMap!3085)

(assert (=> b!210885 (= lt!108345 (+!551 (+!551 lt!108347 lt!108334) lt!108338))))

(assert (=> b!210885 (= lt!108338 (tuple2!4159 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!210885 (= lt!108334 (tuple2!4159 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!210886 () Bool)

(declare-fun res!102962 () Bool)

(assert (=> b!210886 (=> (not res!102962) (not e!137305))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!210886 (= res!102962 (= (select (arr!4768 _keys!825) i!601) k0!843))))

(declare-fun b!210887 () Bool)

(declare-fun res!102967 () Bool)

(assert (=> b!210887 (=> (not res!102967) (not e!137305))))

(assert (=> b!210887 (= res!102967 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5093 _keys!825))))))

(declare-fun b!210888 () Bool)

(declare-fun res!102965 () Bool)

(assert (=> b!210888 (=> (not res!102965) (not e!137305))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!210888 (= res!102965 (and (= (size!5092 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5093 _keys!825) (size!5092 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!210889 () Bool)

(declare-fun res!102961 () Bool)

(assert (=> b!210889 (=> (not res!102961) (not e!137305))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!210889 (= res!102961 (validKeyInArray!0 k0!843))))

(declare-fun b!210890 () Bool)

(assert (=> b!210890 (= e!137305 (not e!137311))))

(declare-fun res!102966 () Bool)

(assert (=> b!210890 (=> res!102966 e!137311)))

(assert (=> b!210890 (= res!102966 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1088 (array!10044 array!10042 (_ BitVec 32) (_ BitVec 32) V!6875 V!6875 (_ BitVec 32) Int) ListLongMap!3085)

(assert (=> b!210890 (= lt!108336 (getCurrentListMap!1088 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108342 () array!10042)

(assert (=> b!210890 (= lt!108345 (getCurrentListMap!1088 _keys!825 lt!108342 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!210890 (and (= lt!108347 lt!108335) (= lt!108335 lt!108347))))

(assert (=> b!210890 (= lt!108335 (+!551 lt!108339 lt!108344))))

(assert (=> b!210890 (= lt!108344 (tuple2!4159 k0!843 v!520))))

(declare-fun lt!108337 () Unit!6399)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!205 (array!10044 array!10042 (_ BitVec 32) (_ BitVec 32) V!6875 V!6875 (_ BitVec 32) (_ BitVec 64) V!6875 (_ BitVec 32) Int) Unit!6399)

(assert (=> b!210890 (= lt!108337 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!205 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!487 (array!10044 array!10042 (_ BitVec 32) (_ BitVec 32) V!6875 V!6875 (_ BitVec 32) Int) ListLongMap!3085)

(assert (=> b!210890 (= lt!108347 (getCurrentListMapNoExtraKeys!487 _keys!825 lt!108342 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!210890 (= lt!108342 (array!10043 (store (arr!4767 _values!649) i!601 (ValueCellFull!2367 v!520)) (size!5092 _values!649)))))

(assert (=> b!210890 (= lt!108339 (getCurrentListMapNoExtraKeys!487 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!210891 () Bool)

(assert (=> b!210891 (= e!137309 tp_is_empty!5421)))

(assert (= (and start!21000 res!102959) b!210888))

(assert (= (and b!210888 res!102965) b!210881))

(assert (= (and b!210881 res!102964) b!210883))

(assert (= (and b!210883 res!102963) b!210887))

(assert (= (and b!210887 res!102967) b!210889))

(assert (= (and b!210889 res!102961) b!210886))

(assert (= (and b!210886 res!102962) b!210890))

(assert (= (and b!210890 (not res!102966)) b!210885))

(assert (= (and b!210885 (not res!102960)) b!210882))

(assert (= (and b!210880 condMapEmpty!9212) mapIsEmpty!9212))

(assert (= (and b!210880 (not condMapEmpty!9212)) mapNonEmpty!9212))

(get-info :version)

(assert (= (and mapNonEmpty!9212 ((_ is ValueCellFull!2367) mapValue!9212)) b!210884))

(assert (= (and b!210880 ((_ is ValueCellFull!2367) mapDefault!9212)) b!210891))

(assert (= start!21000 b!210880))

(declare-fun m!238601 () Bool)

(assert (=> b!210890 m!238601))

(declare-fun m!238603 () Bool)

(assert (=> b!210890 m!238603))

(declare-fun m!238605 () Bool)

(assert (=> b!210890 m!238605))

(declare-fun m!238607 () Bool)

(assert (=> b!210890 m!238607))

(declare-fun m!238609 () Bool)

(assert (=> b!210890 m!238609))

(declare-fun m!238611 () Bool)

(assert (=> b!210890 m!238611))

(declare-fun m!238613 () Bool)

(assert (=> b!210890 m!238613))

(declare-fun m!238615 () Bool)

(assert (=> b!210882 m!238615))

(declare-fun m!238617 () Bool)

(assert (=> b!210882 m!238617))

(declare-fun m!238619 () Bool)

(assert (=> b!210882 m!238619))

(declare-fun m!238621 () Bool)

(assert (=> b!210882 m!238621))

(declare-fun m!238623 () Bool)

(assert (=> b!210881 m!238623))

(declare-fun m!238625 () Bool)

(assert (=> b!210883 m!238625))

(declare-fun m!238627 () Bool)

(assert (=> b!210885 m!238627))

(declare-fun m!238629 () Bool)

(assert (=> b!210885 m!238629))

(declare-fun m!238631 () Bool)

(assert (=> b!210885 m!238631))

(declare-fun m!238633 () Bool)

(assert (=> b!210885 m!238633))

(declare-fun m!238635 () Bool)

(assert (=> b!210885 m!238635))

(declare-fun m!238637 () Bool)

(assert (=> b!210885 m!238637))

(declare-fun m!238639 () Bool)

(assert (=> b!210885 m!238639))

(assert (=> b!210885 m!238629))

(declare-fun m!238641 () Bool)

(assert (=> b!210885 m!238641))

(declare-fun m!238643 () Bool)

(assert (=> mapNonEmpty!9212 m!238643))

(declare-fun m!238645 () Bool)

(assert (=> start!21000 m!238645))

(declare-fun m!238647 () Bool)

(assert (=> start!21000 m!238647))

(declare-fun m!238649 () Bool)

(assert (=> start!21000 m!238649))

(declare-fun m!238651 () Bool)

(assert (=> b!210889 m!238651))

(declare-fun m!238653 () Bool)

(assert (=> b!210886 m!238653))

(check-sat (not b!210883) b_and!12371 (not b!210889) (not b_next!5559) (not start!21000) (not b!210882) (not b!210890) tp_is_empty!5421 (not mapNonEmpty!9212) (not b!210885) (not b!210881))
(check-sat b_and!12371 (not b_next!5559))
