; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20630 () Bool)

(assert start!20630)

(declare-fun b_free!5277 () Bool)

(declare-fun b_next!5277 () Bool)

(assert (=> start!20630 (= b_free!5277 (not b_next!5277))))

(declare-fun tp!18863 () Bool)

(declare-fun b_and!12041 () Bool)

(assert (=> start!20630 (= tp!18863 b_and!12041)))

(declare-fun mapNonEmpty!8768 () Bool)

(declare-fun mapRes!8768 () Bool)

(declare-fun tp!18862 () Bool)

(declare-fun e!134443 () Bool)

(assert (=> mapNonEmpty!8768 (= mapRes!8768 (and tp!18862 e!134443))))

(declare-datatypes ((V!6491 0))(
  ( (V!6492 (val!2611 Int)) )
))
(declare-datatypes ((ValueCell!2223 0))(
  ( (ValueCellFull!2223 (v!4577 V!6491)) (EmptyCell!2223) )
))
(declare-fun mapValue!8768 () ValueCell!2223)

(declare-datatypes ((array!9478 0))(
  ( (array!9479 (arr!4489 (Array (_ BitVec 32) ValueCell!2223)) (size!4814 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9478)

(declare-fun mapRest!8768 () (Array (_ BitVec 32) ValueCell!2223))

(declare-fun mapKey!8768 () (_ BitVec 32))

(assert (=> mapNonEmpty!8768 (= (arr!4489 _values!649) (store mapRest!8768 mapKey!8768 mapValue!8768))))

(declare-fun b!205588 () Bool)

(declare-fun res!99403 () Bool)

(declare-fun e!134437 () Bool)

(assert (=> b!205588 (=> (not res!99403) (not e!134437))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!205588 (= res!99403 (validKeyInArray!0 k0!843))))

(declare-fun b!205589 () Bool)

(declare-fun e!134442 () Bool)

(declare-fun e!134439 () Bool)

(assert (=> b!205589 (= e!134442 (and e!134439 mapRes!8768))))

(declare-fun condMapEmpty!8768 () Bool)

(declare-fun mapDefault!8768 () ValueCell!2223)

(assert (=> b!205589 (= condMapEmpty!8768 (= (arr!4489 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2223)) mapDefault!8768)))))

(declare-fun b!205590 () Bool)

(declare-fun tp_is_empty!5133 () Bool)

(assert (=> b!205590 (= e!134443 tp_is_empty!5133)))

(declare-fun b!205591 () Bool)

(declare-fun e!134438 () Bool)

(declare-fun e!134440 () Bool)

(assert (=> b!205591 (= e!134438 e!134440)))

(declare-fun res!99400 () Bool)

(assert (=> b!205591 (=> res!99400 e!134440)))

(assert (=> b!205591 (= res!99400 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3958 0))(
  ( (tuple2!3959 (_1!1989 (_ BitVec 64)) (_2!1989 V!6491)) )
))
(declare-datatypes ((List!2878 0))(
  ( (Nil!2875) (Cons!2874 (h!3516 tuple2!3958) (t!7817 List!2878)) )
))
(declare-datatypes ((ListLongMap!2885 0))(
  ( (ListLongMap!2886 (toList!1458 List!2878)) )
))
(declare-fun lt!104795 () ListLongMap!2885)

(declare-fun lt!104786 () ListLongMap!2885)

(assert (=> b!205591 (= lt!104795 lt!104786)))

(declare-fun lt!104789 () ListLongMap!2885)

(declare-fun lt!104794 () tuple2!3958)

(declare-fun +!475 (ListLongMap!2885 tuple2!3958) ListLongMap!2885)

(assert (=> b!205591 (= lt!104786 (+!475 lt!104789 lt!104794))))

(declare-fun lt!104791 () ListLongMap!2885)

(declare-fun lt!104793 () ListLongMap!2885)

(assert (=> b!205591 (= lt!104791 lt!104793)))

(declare-fun lt!104797 () ListLongMap!2885)

(assert (=> b!205591 (= lt!104793 (+!475 lt!104797 lt!104794))))

(declare-fun lt!104788 () ListLongMap!2885)

(assert (=> b!205591 (= lt!104791 (+!475 lt!104788 lt!104794))))

(declare-fun minValue!615 () V!6491)

(assert (=> b!205591 (= lt!104794 (tuple2!3959 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205592 () Bool)

(assert (=> b!205592 (= e!134440 true)))

(declare-fun lt!104796 () tuple2!3958)

(assert (=> b!205592 (= lt!104793 (+!475 lt!104786 lt!104796))))

(declare-fun v!520 () V!6491)

(declare-datatypes ((Unit!6249 0))(
  ( (Unit!6250) )
))
(declare-fun lt!104792 () Unit!6249)

(declare-fun addCommutativeForDiffKeys!175 (ListLongMap!2885 (_ BitVec 64) V!6491 (_ BitVec 64) V!6491) Unit!6249)

(assert (=> b!205592 (= lt!104792 (addCommutativeForDiffKeys!175 lt!104789 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205593 () Bool)

(declare-fun res!99395 () Bool)

(assert (=> b!205593 (=> (not res!99395) (not e!134437))))

(declare-datatypes ((array!9480 0))(
  ( (array!9481 (arr!4490 (Array (_ BitVec 32) (_ BitVec 64))) (size!4815 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9480)

(declare-datatypes ((List!2879 0))(
  ( (Nil!2876) (Cons!2875 (h!3517 (_ BitVec 64)) (t!7818 List!2879)) )
))
(declare-fun arrayNoDuplicates!0 (array!9480 (_ BitVec 32) List!2879) Bool)

(assert (=> b!205593 (= res!99395 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2876))))

(declare-fun b!205594 () Bool)

(declare-fun res!99398 () Bool)

(assert (=> b!205594 (=> (not res!99398) (not e!134437))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!205594 (= res!99398 (and (= (size!4814 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4815 _keys!825) (size!4814 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!205595 () Bool)

(declare-fun res!99402 () Bool)

(assert (=> b!205595 (=> (not res!99402) (not e!134437))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!205595 (= res!99402 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4815 _keys!825))))))

(declare-fun b!205596 () Bool)

(assert (=> b!205596 (= e!134439 tp_is_empty!5133)))

(declare-fun res!99397 () Bool)

(assert (=> start!20630 (=> (not res!99397) (not e!134437))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20630 (= res!99397 (validMask!0 mask!1149))))

(assert (=> start!20630 e!134437))

(declare-fun array_inv!2961 (array!9478) Bool)

(assert (=> start!20630 (and (array_inv!2961 _values!649) e!134442)))

(assert (=> start!20630 true))

(assert (=> start!20630 tp_is_empty!5133))

(declare-fun array_inv!2962 (array!9480) Bool)

(assert (=> start!20630 (array_inv!2962 _keys!825)))

(assert (=> start!20630 tp!18863))

(declare-fun b!205597 () Bool)

(assert (=> b!205597 (= e!134437 (not e!134438))))

(declare-fun res!99396 () Bool)

(assert (=> b!205597 (=> res!99396 e!134438)))

(assert (=> b!205597 (= res!99396 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!615 () V!6491)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1024 (array!9480 array!9478 (_ BitVec 32) (_ BitVec 32) V!6491 V!6491 (_ BitVec 32) Int) ListLongMap!2885)

(assert (=> b!205597 (= lt!104795 (getCurrentListMap!1024 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104790 () array!9478)

(assert (=> b!205597 (= lt!104791 (getCurrentListMap!1024 _keys!825 lt!104790 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205597 (and (= lt!104788 lt!104797) (= lt!104797 lt!104788))))

(assert (=> b!205597 (= lt!104797 (+!475 lt!104789 lt!104796))))

(assert (=> b!205597 (= lt!104796 (tuple2!3959 k0!843 v!520))))

(declare-fun lt!104787 () Unit!6249)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!137 (array!9480 array!9478 (_ BitVec 32) (_ BitVec 32) V!6491 V!6491 (_ BitVec 32) (_ BitVec 64) V!6491 (_ BitVec 32) Int) Unit!6249)

(assert (=> b!205597 (= lt!104787 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!137 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!395 (array!9480 array!9478 (_ BitVec 32) (_ BitVec 32) V!6491 V!6491 (_ BitVec 32) Int) ListLongMap!2885)

(assert (=> b!205597 (= lt!104788 (getCurrentListMapNoExtraKeys!395 _keys!825 lt!104790 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205597 (= lt!104790 (array!9479 (store (arr!4489 _values!649) i!601 (ValueCellFull!2223 v!520)) (size!4814 _values!649)))))

(assert (=> b!205597 (= lt!104789 (getCurrentListMapNoExtraKeys!395 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapIsEmpty!8768 () Bool)

(assert (=> mapIsEmpty!8768 mapRes!8768))

(declare-fun b!205598 () Bool)

(declare-fun res!99401 () Bool)

(assert (=> b!205598 (=> (not res!99401) (not e!134437))))

(assert (=> b!205598 (= res!99401 (= (select (arr!4490 _keys!825) i!601) k0!843))))

(declare-fun b!205599 () Bool)

(declare-fun res!99399 () Bool)

(assert (=> b!205599 (=> (not res!99399) (not e!134437))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9480 (_ BitVec 32)) Bool)

(assert (=> b!205599 (= res!99399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(assert (= (and start!20630 res!99397) b!205594))

(assert (= (and b!205594 res!99398) b!205599))

(assert (= (and b!205599 res!99399) b!205593))

(assert (= (and b!205593 res!99395) b!205595))

(assert (= (and b!205595 res!99402) b!205588))

(assert (= (and b!205588 res!99403) b!205598))

(assert (= (and b!205598 res!99401) b!205597))

(assert (= (and b!205597 (not res!99396)) b!205591))

(assert (= (and b!205591 (not res!99400)) b!205592))

(assert (= (and b!205589 condMapEmpty!8768) mapIsEmpty!8768))

(assert (= (and b!205589 (not condMapEmpty!8768)) mapNonEmpty!8768))

(get-info :version)

(assert (= (and mapNonEmpty!8768 ((_ is ValueCellFull!2223) mapValue!8768)) b!205590))

(assert (= (and b!205589 ((_ is ValueCellFull!2223) mapDefault!8768)) b!205596))

(assert (= start!20630 b!205589))

(declare-fun m!233257 () Bool)

(assert (=> b!205597 m!233257))

(declare-fun m!233259 () Bool)

(assert (=> b!205597 m!233259))

(declare-fun m!233261 () Bool)

(assert (=> b!205597 m!233261))

(declare-fun m!233263 () Bool)

(assert (=> b!205597 m!233263))

(declare-fun m!233265 () Bool)

(assert (=> b!205597 m!233265))

(declare-fun m!233267 () Bool)

(assert (=> b!205597 m!233267))

(declare-fun m!233269 () Bool)

(assert (=> b!205597 m!233269))

(declare-fun m!233271 () Bool)

(assert (=> mapNonEmpty!8768 m!233271))

(declare-fun m!233273 () Bool)

(assert (=> b!205598 m!233273))

(declare-fun m!233275 () Bool)

(assert (=> b!205591 m!233275))

(declare-fun m!233277 () Bool)

(assert (=> b!205591 m!233277))

(declare-fun m!233279 () Bool)

(assert (=> b!205591 m!233279))

(declare-fun m!233281 () Bool)

(assert (=> b!205593 m!233281))

(declare-fun m!233283 () Bool)

(assert (=> start!20630 m!233283))

(declare-fun m!233285 () Bool)

(assert (=> start!20630 m!233285))

(declare-fun m!233287 () Bool)

(assert (=> start!20630 m!233287))

(declare-fun m!233289 () Bool)

(assert (=> b!205599 m!233289))

(declare-fun m!233291 () Bool)

(assert (=> b!205588 m!233291))

(declare-fun m!233293 () Bool)

(assert (=> b!205592 m!233293))

(declare-fun m!233295 () Bool)

(assert (=> b!205592 m!233295))

(check-sat b_and!12041 (not b!205588) tp_is_empty!5133 (not start!20630) (not mapNonEmpty!8768) (not b!205591) (not b!205592) (not b!205593) (not b!205597) (not b!205599) (not b_next!5277))
(check-sat b_and!12041 (not b_next!5277))
