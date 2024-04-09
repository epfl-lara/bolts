; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20600 () Bool)

(assert start!20600)

(declare-fun b_free!5247 () Bool)

(declare-fun b_next!5247 () Bool)

(assert (=> start!20600 (= b_free!5247 (not b_next!5247))))

(declare-fun tp!18773 () Bool)

(declare-fun b_and!12011 () Bool)

(assert (=> start!20600 (= tp!18773 b_and!12011)))

(declare-fun mapIsEmpty!8723 () Bool)

(declare-fun mapRes!8723 () Bool)

(assert (=> mapIsEmpty!8723 mapRes!8723))

(declare-fun b!205048 () Bool)

(declare-fun e!134124 () Bool)

(declare-fun tp_is_empty!5103 () Bool)

(assert (=> b!205048 (= e!134124 tp_is_empty!5103)))

(declare-fun b!205049 () Bool)

(declare-fun res!98998 () Bool)

(declare-fun e!134128 () Bool)

(assert (=> b!205049 (=> (not res!98998) (not e!134128))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9418 0))(
  ( (array!9419 (arr!4459 (Array (_ BitVec 32) (_ BitVec 64))) (size!4784 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9418)

(assert (=> b!205049 (= res!98998 (= (select (arr!4459 _keys!825) i!601) k0!843))))

(declare-fun b!205050 () Bool)

(declare-fun res!98990 () Bool)

(assert (=> b!205050 (=> (not res!98990) (not e!134128))))

(assert (=> b!205050 (= res!98990 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4784 _keys!825))))))

(declare-fun b!205051 () Bool)

(declare-fun e!134125 () Bool)

(assert (=> b!205051 (= e!134125 tp_is_empty!5103)))

(declare-fun b!205052 () Bool)

(declare-fun e!134127 () Bool)

(assert (=> b!205052 (= e!134128 (not e!134127))))

(declare-fun res!98992 () Bool)

(assert (=> b!205052 (=> res!98992 e!134127)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!205052 (= res!98992 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6451 0))(
  ( (V!6452 (val!2596 Int)) )
))
(declare-datatypes ((ValueCell!2208 0))(
  ( (ValueCellFull!2208 (v!4562 V!6451)) (EmptyCell!2208) )
))
(declare-datatypes ((array!9420 0))(
  ( (array!9421 (arr!4460 (Array (_ BitVec 32) ValueCell!2208)) (size!4785 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9420)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6451)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6451)

(declare-datatypes ((tuple2!3930 0))(
  ( (tuple2!3931 (_1!1975 (_ BitVec 64)) (_2!1975 V!6451)) )
))
(declare-datatypes ((List!2854 0))(
  ( (Nil!2851) (Cons!2850 (h!3492 tuple2!3930) (t!7793 List!2854)) )
))
(declare-datatypes ((ListLongMap!2857 0))(
  ( (ListLongMap!2858 (toList!1444 List!2854)) )
))
(declare-fun lt!104246 () ListLongMap!2857)

(declare-fun getCurrentListMap!1011 (array!9418 array!9420 (_ BitVec 32) (_ BitVec 32) V!6451 V!6451 (_ BitVec 32) Int) ListLongMap!2857)

(assert (=> b!205052 (= lt!104246 (getCurrentListMap!1011 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104250 () ListLongMap!2857)

(declare-fun lt!104254 () array!9420)

(assert (=> b!205052 (= lt!104250 (getCurrentListMap!1011 _keys!825 lt!104254 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104247 () ListLongMap!2857)

(declare-fun lt!104256 () ListLongMap!2857)

(assert (=> b!205052 (and (= lt!104247 lt!104256) (= lt!104256 lt!104247))))

(declare-fun lt!104252 () ListLongMap!2857)

(declare-fun lt!104248 () tuple2!3930)

(declare-fun +!461 (ListLongMap!2857 tuple2!3930) ListLongMap!2857)

(assert (=> b!205052 (= lt!104256 (+!461 lt!104252 lt!104248))))

(declare-fun v!520 () V!6451)

(assert (=> b!205052 (= lt!104248 (tuple2!3931 k0!843 v!520))))

(declare-datatypes ((Unit!6221 0))(
  ( (Unit!6222) )
))
(declare-fun lt!104255 () Unit!6221)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!124 (array!9418 array!9420 (_ BitVec 32) (_ BitVec 32) V!6451 V!6451 (_ BitVec 32) (_ BitVec 64) V!6451 (_ BitVec 32) Int) Unit!6221)

(assert (=> b!205052 (= lt!104255 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!124 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!382 (array!9418 array!9420 (_ BitVec 32) (_ BitVec 32) V!6451 V!6451 (_ BitVec 32) Int) ListLongMap!2857)

(assert (=> b!205052 (= lt!104247 (getCurrentListMapNoExtraKeys!382 _keys!825 lt!104254 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205052 (= lt!104254 (array!9421 (store (arr!4460 _values!649) i!601 (ValueCellFull!2208 v!520)) (size!4785 _values!649)))))

(assert (=> b!205052 (= lt!104252 (getCurrentListMapNoExtraKeys!382 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!205053 () Bool)

(declare-fun res!98991 () Bool)

(assert (=> b!205053 (=> (not res!98991) (not e!134128))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!205053 (= res!98991 (validKeyInArray!0 k0!843))))

(declare-fun b!205055 () Bool)

(declare-fun res!98993 () Bool)

(assert (=> b!205055 (=> (not res!98993) (not e!134128))))

(assert (=> b!205055 (= res!98993 (and (= (size!4785 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4784 _keys!825) (size!4785 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!8723 () Bool)

(declare-fun tp!18772 () Bool)

(assert (=> mapNonEmpty!8723 (= mapRes!8723 (and tp!18772 e!134124))))

(declare-fun mapRest!8723 () (Array (_ BitVec 32) ValueCell!2208))

(declare-fun mapKey!8723 () (_ BitVec 32))

(declare-fun mapValue!8723 () ValueCell!2208)

(assert (=> mapNonEmpty!8723 (= (arr!4460 _values!649) (store mapRest!8723 mapKey!8723 mapValue!8723))))

(declare-fun b!205056 () Bool)

(declare-fun e!134122 () Bool)

(assert (=> b!205056 (= e!134122 (and e!134125 mapRes!8723))))

(declare-fun condMapEmpty!8723 () Bool)

(declare-fun mapDefault!8723 () ValueCell!2208)

(assert (=> b!205056 (= condMapEmpty!8723 (= (arr!4460 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2208)) mapDefault!8723)))))

(declare-fun b!205057 () Bool)

(declare-fun res!98996 () Bool)

(assert (=> b!205057 (=> (not res!98996) (not e!134128))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9418 (_ BitVec 32)) Bool)

(assert (=> b!205057 (= res!98996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!205058 () Bool)

(declare-fun res!98994 () Bool)

(assert (=> b!205058 (=> (not res!98994) (not e!134128))))

(declare-datatypes ((List!2855 0))(
  ( (Nil!2852) (Cons!2851 (h!3493 (_ BitVec 64)) (t!7794 List!2855)) )
))
(declare-fun arrayNoDuplicates!0 (array!9418 (_ BitVec 32) List!2855) Bool)

(assert (=> b!205058 (= res!98994 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2852))))

(declare-fun b!205059 () Bool)

(declare-fun e!134126 () Bool)

(assert (=> b!205059 (= e!134127 e!134126)))

(declare-fun res!98995 () Bool)

(assert (=> b!205059 (=> res!98995 e!134126)))

(assert (=> b!205059 (= res!98995 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!104251 () ListLongMap!2857)

(assert (=> b!205059 (= lt!104246 lt!104251)))

(declare-fun lt!104253 () tuple2!3930)

(assert (=> b!205059 (= lt!104251 (+!461 lt!104252 lt!104253))))

(declare-fun lt!104257 () ListLongMap!2857)

(assert (=> b!205059 (= lt!104250 lt!104257)))

(assert (=> b!205059 (= lt!104257 (+!461 lt!104256 lt!104253))))

(assert (=> b!205059 (= lt!104250 (+!461 lt!104247 lt!104253))))

(assert (=> b!205059 (= lt!104253 (tuple2!3931 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun res!98997 () Bool)

(assert (=> start!20600 (=> (not res!98997) (not e!134128))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20600 (= res!98997 (validMask!0 mask!1149))))

(assert (=> start!20600 e!134128))

(declare-fun array_inv!2935 (array!9420) Bool)

(assert (=> start!20600 (and (array_inv!2935 _values!649) e!134122)))

(assert (=> start!20600 true))

(assert (=> start!20600 tp_is_empty!5103))

(declare-fun array_inv!2936 (array!9418) Bool)

(assert (=> start!20600 (array_inv!2936 _keys!825)))

(assert (=> start!20600 tp!18773))

(declare-fun b!205054 () Bool)

(assert (=> b!205054 (= e!134126 true)))

(assert (=> b!205054 (= lt!104257 (+!461 lt!104251 lt!104248))))

(declare-fun lt!104249 () Unit!6221)

(declare-fun addCommutativeForDiffKeys!166 (ListLongMap!2857 (_ BitVec 64) V!6451 (_ BitVec 64) V!6451) Unit!6221)

(assert (=> b!205054 (= lt!104249 (addCommutativeForDiffKeys!166 lt!104252 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (= (and start!20600 res!98997) b!205055))

(assert (= (and b!205055 res!98993) b!205057))

(assert (= (and b!205057 res!98996) b!205058))

(assert (= (and b!205058 res!98994) b!205050))

(assert (= (and b!205050 res!98990) b!205053))

(assert (= (and b!205053 res!98991) b!205049))

(assert (= (and b!205049 res!98998) b!205052))

(assert (= (and b!205052 (not res!98992)) b!205059))

(assert (= (and b!205059 (not res!98995)) b!205054))

(assert (= (and b!205056 condMapEmpty!8723) mapIsEmpty!8723))

(assert (= (and b!205056 (not condMapEmpty!8723)) mapNonEmpty!8723))

(get-info :version)

(assert (= (and mapNonEmpty!8723 ((_ is ValueCellFull!2208) mapValue!8723)) b!205048))

(assert (= (and b!205056 ((_ is ValueCellFull!2208) mapDefault!8723)) b!205051))

(assert (= start!20600 b!205056))

(declare-fun m!232657 () Bool)

(assert (=> start!20600 m!232657))

(declare-fun m!232659 () Bool)

(assert (=> start!20600 m!232659))

(declare-fun m!232661 () Bool)

(assert (=> start!20600 m!232661))

(declare-fun m!232663 () Bool)

(assert (=> b!205059 m!232663))

(declare-fun m!232665 () Bool)

(assert (=> b!205059 m!232665))

(declare-fun m!232667 () Bool)

(assert (=> b!205059 m!232667))

(declare-fun m!232669 () Bool)

(assert (=> b!205053 m!232669))

(declare-fun m!232671 () Bool)

(assert (=> b!205058 m!232671))

(declare-fun m!232673 () Bool)

(assert (=> b!205057 m!232673))

(declare-fun m!232675 () Bool)

(assert (=> b!205054 m!232675))

(declare-fun m!232677 () Bool)

(assert (=> b!205054 m!232677))

(declare-fun m!232679 () Bool)

(assert (=> b!205052 m!232679))

(declare-fun m!232681 () Bool)

(assert (=> b!205052 m!232681))

(declare-fun m!232683 () Bool)

(assert (=> b!205052 m!232683))

(declare-fun m!232685 () Bool)

(assert (=> b!205052 m!232685))

(declare-fun m!232687 () Bool)

(assert (=> b!205052 m!232687))

(declare-fun m!232689 () Bool)

(assert (=> b!205052 m!232689))

(declare-fun m!232691 () Bool)

(assert (=> b!205052 m!232691))

(declare-fun m!232693 () Bool)

(assert (=> b!205049 m!232693))

(declare-fun m!232695 () Bool)

(assert (=> mapNonEmpty!8723 m!232695))

(check-sat (not b!205057) (not b!205052) (not b!205053) (not b!205058) (not b!205059) b_and!12011 (not start!20600) tp_is_empty!5103 (not b_next!5247) (not mapNonEmpty!8723) (not b!205054))
(check-sat b_and!12011 (not b_next!5247))
