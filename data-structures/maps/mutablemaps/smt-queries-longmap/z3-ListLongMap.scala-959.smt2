; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20864 () Bool)

(assert start!20864)

(declare-fun b_free!5505 () Bool)

(declare-fun b_next!5505 () Bool)

(assert (=> start!20864 (= b_free!5505 (not b_next!5505))))

(declare-fun tp!19555 () Bool)

(declare-fun b_and!12269 () Bool)

(assert (=> start!20864 (= tp!19555 b_and!12269)))

(declare-fun b!209196 () Bool)

(declare-fun res!101954 () Bool)

(declare-fun e!136326 () Bool)

(assert (=> b!209196 (=> (not res!101954) (not e!136326))))

(declare-datatypes ((array!9932 0))(
  ( (array!9933 (arr!4716 (Array (_ BitVec 32) (_ BitVec 64))) (size!5041 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9932)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!209196 (= res!101954 (= (select (arr!4716 _keys!825) i!601) k0!843))))

(declare-fun res!101950 () Bool)

(assert (=> start!20864 (=> (not res!101950) (not e!136326))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20864 (= res!101950 (validMask!0 mask!1149))))

(assert (=> start!20864 e!136326))

(declare-datatypes ((V!6803 0))(
  ( (V!6804 (val!2728 Int)) )
))
(declare-datatypes ((ValueCell!2340 0))(
  ( (ValueCellFull!2340 (v!4694 V!6803)) (EmptyCell!2340) )
))
(declare-datatypes ((array!9934 0))(
  ( (array!9935 (arr!4717 (Array (_ BitVec 32) ValueCell!2340)) (size!5042 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9934)

(declare-fun e!136328 () Bool)

(declare-fun array_inv!3113 (array!9934) Bool)

(assert (=> start!20864 (and (array_inv!3113 _values!649) e!136328)))

(assert (=> start!20864 true))

(declare-fun tp_is_empty!5367 () Bool)

(assert (=> start!20864 tp_is_empty!5367))

(declare-fun array_inv!3114 (array!9932) Bool)

(assert (=> start!20864 (array_inv!3114 _keys!825)))

(assert (=> start!20864 tp!19555))

(declare-fun b!209197 () Bool)

(declare-fun e!136330 () Bool)

(assert (=> b!209197 (= e!136330 tp_is_empty!5367)))

(declare-fun b!209198 () Bool)

(declare-fun e!136327 () Bool)

(assert (=> b!209198 (= e!136327 tp_is_empty!5367)))

(declare-fun mapIsEmpty!9119 () Bool)

(declare-fun mapRes!9119 () Bool)

(assert (=> mapIsEmpty!9119 mapRes!9119))

(declare-fun b!209199 () Bool)

(declare-fun res!101955 () Bool)

(assert (=> b!209199 (=> (not res!101955) (not e!136326))))

(assert (=> b!209199 (= res!101955 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5041 _keys!825))))))

(declare-fun b!209200 () Bool)

(declare-fun res!101952 () Bool)

(assert (=> b!209200 (=> (not res!101952) (not e!136326))))

(declare-datatypes ((List!3039 0))(
  ( (Nil!3036) (Cons!3035 (h!3677 (_ BitVec 64)) (t!7978 List!3039)) )
))
(declare-fun arrayNoDuplicates!0 (array!9932 (_ BitVec 32) List!3039) Bool)

(assert (=> b!209200 (= res!101952 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3036))))

(declare-fun b!209201 () Bool)

(assert (=> b!209201 (= e!136328 (and e!136330 mapRes!9119))))

(declare-fun condMapEmpty!9119 () Bool)

(declare-fun mapDefault!9119 () ValueCell!2340)

(assert (=> b!209201 (= condMapEmpty!9119 (= (arr!4717 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2340)) mapDefault!9119)))))

(declare-fun mapNonEmpty!9119 () Bool)

(declare-fun tp!19556 () Bool)

(assert (=> mapNonEmpty!9119 (= mapRes!9119 (and tp!19556 e!136327))))

(declare-fun mapKey!9119 () (_ BitVec 32))

(declare-fun mapRest!9119 () (Array (_ BitVec 32) ValueCell!2340))

(declare-fun mapValue!9119 () ValueCell!2340)

(assert (=> mapNonEmpty!9119 (= (arr!4717 _values!649) (store mapRest!9119 mapKey!9119 mapValue!9119))))

(declare-fun b!209202 () Bool)

(declare-fun res!101951 () Bool)

(assert (=> b!209202 (=> (not res!101951) (not e!136326))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!209202 (= res!101951 (and (= (size!5042 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5041 _keys!825) (size!5042 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!209203 () Bool)

(assert (=> b!209203 (= e!136326 false)))

(declare-fun v!520 () V!6803)

(declare-fun zeroValue!615 () V!6803)

(declare-datatypes ((tuple2!4120 0))(
  ( (tuple2!4121 (_1!2070 (_ BitVec 64)) (_2!2070 V!6803)) )
))
(declare-datatypes ((List!3040 0))(
  ( (Nil!3037) (Cons!3036 (h!3678 tuple2!4120) (t!7979 List!3040)) )
))
(declare-datatypes ((ListLongMap!3047 0))(
  ( (ListLongMap!3048 (toList!1539 List!3040)) )
))
(declare-fun lt!106969 () ListLongMap!3047)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6803)

(declare-fun getCurrentListMapNoExtraKeys!472 (array!9932 array!9934 (_ BitVec 32) (_ BitVec 32) V!6803 V!6803 (_ BitVec 32) Int) ListLongMap!3047)

(assert (=> b!209203 (= lt!106969 (getCurrentListMapNoExtraKeys!472 _keys!825 (array!9935 (store (arr!4717 _values!649) i!601 (ValueCellFull!2340 v!520)) (size!5042 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106968 () ListLongMap!3047)

(assert (=> b!209203 (= lt!106968 (getCurrentListMapNoExtraKeys!472 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!209204 () Bool)

(declare-fun res!101953 () Bool)

(assert (=> b!209204 (=> (not res!101953) (not e!136326))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!209204 (= res!101953 (validKeyInArray!0 k0!843))))

(declare-fun b!209205 () Bool)

(declare-fun res!101956 () Bool)

(assert (=> b!209205 (=> (not res!101956) (not e!136326))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9932 (_ BitVec 32)) Bool)

(assert (=> b!209205 (= res!101956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(assert (= (and start!20864 res!101950) b!209202))

(assert (= (and b!209202 res!101951) b!209205))

(assert (= (and b!209205 res!101956) b!209200))

(assert (= (and b!209200 res!101952) b!209199))

(assert (= (and b!209199 res!101955) b!209204))

(assert (= (and b!209204 res!101953) b!209196))

(assert (= (and b!209196 res!101954) b!209203))

(assert (= (and b!209201 condMapEmpty!9119) mapIsEmpty!9119))

(assert (= (and b!209201 (not condMapEmpty!9119)) mapNonEmpty!9119))

(get-info :version)

(assert (= (and mapNonEmpty!9119 ((_ is ValueCellFull!2340) mapValue!9119)) b!209198))

(assert (= (and b!209201 ((_ is ValueCellFull!2340) mapDefault!9119)) b!209197))

(assert (= start!20864 b!209201))

(declare-fun m!236635 () Bool)

(assert (=> start!20864 m!236635))

(declare-fun m!236637 () Bool)

(assert (=> start!20864 m!236637))

(declare-fun m!236639 () Bool)

(assert (=> start!20864 m!236639))

(declare-fun m!236641 () Bool)

(assert (=> b!209200 m!236641))

(declare-fun m!236643 () Bool)

(assert (=> b!209204 m!236643))

(declare-fun m!236645 () Bool)

(assert (=> b!209205 m!236645))

(declare-fun m!236647 () Bool)

(assert (=> b!209203 m!236647))

(declare-fun m!236649 () Bool)

(assert (=> b!209203 m!236649))

(declare-fun m!236651 () Bool)

(assert (=> b!209203 m!236651))

(declare-fun m!236653 () Bool)

(assert (=> mapNonEmpty!9119 m!236653))

(declare-fun m!236655 () Bool)

(assert (=> b!209196 m!236655))

(check-sat (not b!209205) (not mapNonEmpty!9119) (not b!209200) tp_is_empty!5367 (not b!209204) (not start!20864) (not b!209203) b_and!12269 (not b_next!5505))
(check-sat b_and!12269 (not b_next!5505))
