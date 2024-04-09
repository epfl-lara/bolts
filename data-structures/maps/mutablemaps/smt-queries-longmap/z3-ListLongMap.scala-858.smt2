; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20258 () Bool)

(assert start!20258)

(declare-fun b_free!4905 () Bool)

(declare-fun b_next!4905 () Bool)

(assert (=> start!20258 (= b_free!4905 (not b_next!4905))))

(declare-fun tp!17747 () Bool)

(declare-fun b_and!11669 () Bool)

(assert (=> start!20258 (= tp!17747 b_and!11669)))

(declare-fun b!199080 () Bool)

(declare-fun e!130746 () Bool)

(assert (=> b!199080 (= e!130746 (not true))))

(declare-datatypes ((V!5995 0))(
  ( (V!5996 (val!2425 Int)) )
))
(declare-datatypes ((tuple2!3668 0))(
  ( (tuple2!3669 (_1!1844 (_ BitVec 64)) (_2!1844 V!5995)) )
))
(declare-datatypes ((List!2608 0))(
  ( (Nil!2605) (Cons!2604 (h!3246 tuple2!3668) (t!7547 List!2608)) )
))
(declare-datatypes ((ListLongMap!2595 0))(
  ( (ListLongMap!2596 (toList!1313 List!2608)) )
))
(declare-fun lt!98196 () ListLongMap!2595)

(declare-fun lt!98197 () ListLongMap!2595)

(assert (=> b!199080 (and (= lt!98196 lt!98197) (= lt!98197 lt!98196))))

(declare-fun lt!98195 () ListLongMap!2595)

(declare-fun v!520 () V!5995)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun +!330 (ListLongMap!2595 tuple2!3668) ListLongMap!2595)

(assert (=> b!199080 (= lt!98197 (+!330 lt!98195 (tuple2!3669 k0!843 v!520)))))

(declare-datatypes ((Unit!5969 0))(
  ( (Unit!5970) )
))
(declare-fun lt!98194 () Unit!5969)

(declare-datatypes ((ValueCell!2037 0))(
  ( (ValueCellFull!2037 (v!4391 V!5995)) (EmptyCell!2037) )
))
(declare-datatypes ((array!8762 0))(
  ( (array!8763 (arr!4131 (Array (_ BitVec 32) ValueCell!2037)) (size!4456 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8762)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun i!601 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!5995)

(declare-datatypes ((array!8764 0))(
  ( (array!8765 (arr!4132 (Array (_ BitVec 32) (_ BitVec 64))) (size!4457 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8764)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5995)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!12 (array!8764 array!8762 (_ BitVec 32) (_ BitVec 32) V!5995 V!5995 (_ BitVec 32) (_ BitVec 64) V!5995 (_ BitVec 32) Int) Unit!5969)

(assert (=> b!199080 (= lt!98194 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!12 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!270 (array!8764 array!8762 (_ BitVec 32) (_ BitVec 32) V!5995 V!5995 (_ BitVec 32) Int) ListLongMap!2595)

(assert (=> b!199080 (= lt!98196 (getCurrentListMapNoExtraKeys!270 _keys!825 (array!8763 (store (arr!4131 _values!649) i!601 (ValueCellFull!2037 v!520)) (size!4456 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!199080 (= lt!98195 (getCurrentListMapNoExtraKeys!270 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!199081 () Bool)

(declare-fun res!94561 () Bool)

(assert (=> b!199081 (=> (not res!94561) (not e!130746))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199081 (= res!94561 (validKeyInArray!0 k0!843))))

(declare-fun b!199082 () Bool)

(declare-fun res!94564 () Bool)

(assert (=> b!199082 (=> (not res!94564) (not e!130746))))

(assert (=> b!199082 (= res!94564 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4457 _keys!825))))))

(declare-fun b!199083 () Bool)

(declare-fun res!94563 () Bool)

(assert (=> b!199083 (=> (not res!94563) (not e!130746))))

(declare-datatypes ((List!2609 0))(
  ( (Nil!2606) (Cons!2605 (h!3247 (_ BitVec 64)) (t!7548 List!2609)) )
))
(declare-fun arrayNoDuplicates!0 (array!8764 (_ BitVec 32) List!2609) Bool)

(assert (=> b!199083 (= res!94563 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2606))))

(declare-fun b!199084 () Bool)

(declare-fun e!130750 () Bool)

(declare-fun tp_is_empty!4761 () Bool)

(assert (=> b!199084 (= e!130750 tp_is_empty!4761)))

(declare-fun b!199085 () Bool)

(declare-fun res!94567 () Bool)

(assert (=> b!199085 (=> (not res!94567) (not e!130746))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8764 (_ BitVec 32)) Bool)

(assert (=> b!199085 (= res!94567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!199086 () Bool)

(declare-fun e!130747 () Bool)

(assert (=> b!199086 (= e!130747 tp_is_empty!4761)))

(declare-fun res!94562 () Bool)

(assert (=> start!20258 (=> (not res!94562) (not e!130746))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20258 (= res!94562 (validMask!0 mask!1149))))

(assert (=> start!20258 e!130746))

(declare-fun e!130749 () Bool)

(declare-fun array_inv!2699 (array!8762) Bool)

(assert (=> start!20258 (and (array_inv!2699 _values!649) e!130749)))

(assert (=> start!20258 true))

(assert (=> start!20258 tp_is_empty!4761))

(declare-fun array_inv!2700 (array!8764) Bool)

(assert (=> start!20258 (array_inv!2700 _keys!825)))

(assert (=> start!20258 tp!17747))

(declare-fun b!199087 () Bool)

(declare-fun res!94565 () Bool)

(assert (=> b!199087 (=> (not res!94565) (not e!130746))))

(assert (=> b!199087 (= res!94565 (= (select (arr!4132 _keys!825) i!601) k0!843))))

(declare-fun mapNonEmpty!8210 () Bool)

(declare-fun mapRes!8210 () Bool)

(declare-fun tp!17746 () Bool)

(assert (=> mapNonEmpty!8210 (= mapRes!8210 (and tp!17746 e!130747))))

(declare-fun mapKey!8210 () (_ BitVec 32))

(declare-fun mapValue!8210 () ValueCell!2037)

(declare-fun mapRest!8210 () (Array (_ BitVec 32) ValueCell!2037))

(assert (=> mapNonEmpty!8210 (= (arr!4131 _values!649) (store mapRest!8210 mapKey!8210 mapValue!8210))))

(declare-fun mapIsEmpty!8210 () Bool)

(assert (=> mapIsEmpty!8210 mapRes!8210))

(declare-fun b!199088 () Bool)

(declare-fun res!94566 () Bool)

(assert (=> b!199088 (=> (not res!94566) (not e!130746))))

(assert (=> b!199088 (= res!94566 (and (= (size!4456 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4457 _keys!825) (size!4456 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!199089 () Bool)

(assert (=> b!199089 (= e!130749 (and e!130750 mapRes!8210))))

(declare-fun condMapEmpty!8210 () Bool)

(declare-fun mapDefault!8210 () ValueCell!2037)

(assert (=> b!199089 (= condMapEmpty!8210 (= (arr!4131 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2037)) mapDefault!8210)))))

(assert (= (and start!20258 res!94562) b!199088))

(assert (= (and b!199088 res!94566) b!199085))

(assert (= (and b!199085 res!94567) b!199083))

(assert (= (and b!199083 res!94563) b!199082))

(assert (= (and b!199082 res!94564) b!199081))

(assert (= (and b!199081 res!94561) b!199087))

(assert (= (and b!199087 res!94565) b!199080))

(assert (= (and b!199089 condMapEmpty!8210) mapIsEmpty!8210))

(assert (= (and b!199089 (not condMapEmpty!8210)) mapNonEmpty!8210))

(get-info :version)

(assert (= (and mapNonEmpty!8210 ((_ is ValueCellFull!2037) mapValue!8210)) b!199086))

(assert (= (and b!199089 ((_ is ValueCellFull!2037) mapDefault!8210)) b!199084))

(assert (= start!20258 b!199089))

(declare-fun m!225605 () Bool)

(assert (=> b!199087 m!225605))

(declare-fun m!225607 () Bool)

(assert (=> b!199085 m!225607))

(declare-fun m!225609 () Bool)

(assert (=> mapNonEmpty!8210 m!225609))

(declare-fun m!225611 () Bool)

(assert (=> start!20258 m!225611))

(declare-fun m!225613 () Bool)

(assert (=> start!20258 m!225613))

(declare-fun m!225615 () Bool)

(assert (=> start!20258 m!225615))

(declare-fun m!225617 () Bool)

(assert (=> b!199083 m!225617))

(declare-fun m!225619 () Bool)

(assert (=> b!199081 m!225619))

(declare-fun m!225621 () Bool)

(assert (=> b!199080 m!225621))

(declare-fun m!225623 () Bool)

(assert (=> b!199080 m!225623))

(declare-fun m!225625 () Bool)

(assert (=> b!199080 m!225625))

(declare-fun m!225627 () Bool)

(assert (=> b!199080 m!225627))

(declare-fun m!225629 () Bool)

(assert (=> b!199080 m!225629))

(check-sat (not start!20258) tp_is_empty!4761 (not b!199080) (not b!199081) (not b!199085) (not mapNonEmpty!8210) (not b!199083) b_and!11669 (not b_next!4905))
(check-sat b_and!11669 (not b_next!4905))
