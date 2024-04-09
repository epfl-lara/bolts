; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20756 () Bool)

(assert start!20756)

(declare-fun b_free!5403 () Bool)

(declare-fun b_next!5403 () Bool)

(assert (=> start!20756 (= b_free!5403 (not b_next!5403))))

(declare-fun tp!19241 () Bool)

(declare-fun b_and!12167 () Bool)

(assert (=> start!20756 (= tp!19241 b_and!12167)))

(declare-fun b!207612 () Bool)

(declare-fun res!100857 () Bool)

(declare-fun e!135517 () Bool)

(assert (=> b!207612 (=> (not res!100857) (not e!135517))))

(declare-datatypes ((array!9724 0))(
  ( (array!9725 (arr!4612 (Array (_ BitVec 32) (_ BitVec 64))) (size!4937 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9724)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9724 (_ BitVec 32)) Bool)

(assert (=> b!207612 (= res!100857 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!207613 () Bool)

(assert (=> b!207613 (= e!135517 (not true))))

(declare-datatypes ((V!6659 0))(
  ( (V!6660 (val!2674 Int)) )
))
(declare-datatypes ((ValueCell!2286 0))(
  ( (ValueCellFull!2286 (v!4640 V!6659)) (EmptyCell!2286) )
))
(declare-datatypes ((array!9726 0))(
  ( (array!9727 (arr!4613 (Array (_ BitVec 32) ValueCell!2286)) (size!4938 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9726)

(declare-fun zeroValue!615 () V!6659)

(declare-fun defaultEntry!657 () Int)

(declare-datatypes ((tuple2!4054 0))(
  ( (tuple2!4055 (_1!2037 (_ BitVec 64)) (_2!2037 V!6659)) )
))
(declare-datatypes ((List!2970 0))(
  ( (Nil!2967) (Cons!2966 (h!3608 tuple2!4054) (t!7909 List!2970)) )
))
(declare-datatypes ((ListLongMap!2981 0))(
  ( (ListLongMap!2982 (toList!1506 List!2970)) )
))
(declare-fun lt!106459 () ListLongMap!2981)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6659)

(declare-fun getCurrentListMap!1068 (array!9724 array!9726 (_ BitVec 32) (_ BitVec 32) V!6659 V!6659 (_ BitVec 32) Int) ListLongMap!2981)

(assert (=> b!207613 (= lt!106459 (getCurrentListMap!1068 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106458 () ListLongMap!2981)

(declare-fun lt!106455 () array!9726)

(assert (=> b!207613 (= lt!106458 (getCurrentListMap!1068 _keys!825 lt!106455 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106453 () ListLongMap!2981)

(declare-fun lt!106457 () ListLongMap!2981)

(assert (=> b!207613 (and (= lt!106453 lt!106457) (= lt!106457 lt!106453))))

(declare-fun v!520 () V!6659)

(declare-fun lt!106454 () ListLongMap!2981)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun +!523 (ListLongMap!2981 tuple2!4054) ListLongMap!2981)

(assert (=> b!207613 (= lt!106457 (+!523 lt!106454 (tuple2!4055 k0!843 v!520)))))

(declare-datatypes ((Unit!6341 0))(
  ( (Unit!6342) )
))
(declare-fun lt!106456 () Unit!6341)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!181 (array!9724 array!9726 (_ BitVec 32) (_ BitVec 32) V!6659 V!6659 (_ BitVec 32) (_ BitVec 64) V!6659 (_ BitVec 32) Int) Unit!6341)

(assert (=> b!207613 (= lt!106456 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!181 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!439 (array!9724 array!9726 (_ BitVec 32) (_ BitVec 32) V!6659 V!6659 (_ BitVec 32) Int) ListLongMap!2981)

(assert (=> b!207613 (= lt!106453 (getCurrentListMapNoExtraKeys!439 _keys!825 lt!106455 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!207613 (= lt!106455 (array!9727 (store (arr!4613 _values!649) i!601 (ValueCellFull!2286 v!520)) (size!4938 _values!649)))))

(assert (=> b!207613 (= lt!106454 (getCurrentListMapNoExtraKeys!439 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!207615 () Bool)

(declare-fun e!135518 () Bool)

(declare-fun e!135519 () Bool)

(declare-fun mapRes!8957 () Bool)

(assert (=> b!207615 (= e!135518 (and e!135519 mapRes!8957))))

(declare-fun condMapEmpty!8957 () Bool)

(declare-fun mapDefault!8957 () ValueCell!2286)

(assert (=> b!207615 (= condMapEmpty!8957 (= (arr!4613 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2286)) mapDefault!8957)))))

(declare-fun b!207616 () Bool)

(declare-fun res!100852 () Bool)

(assert (=> b!207616 (=> (not res!100852) (not e!135517))))

(assert (=> b!207616 (= res!100852 (and (= (size!4938 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4937 _keys!825) (size!4938 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!8957 () Bool)

(assert (=> mapIsEmpty!8957 mapRes!8957))

(declare-fun b!207617 () Bool)

(declare-fun res!100858 () Bool)

(assert (=> b!207617 (=> (not res!100858) (not e!135517))))

(assert (=> b!207617 (= res!100858 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4937 _keys!825))))))

(declare-fun b!207618 () Bool)

(declare-fun tp_is_empty!5259 () Bool)

(assert (=> b!207618 (= e!135519 tp_is_empty!5259)))

(declare-fun b!207619 () Bool)

(declare-fun res!100856 () Bool)

(assert (=> b!207619 (=> (not res!100856) (not e!135517))))

(declare-datatypes ((List!2971 0))(
  ( (Nil!2968) (Cons!2967 (h!3609 (_ BitVec 64)) (t!7910 List!2971)) )
))
(declare-fun arrayNoDuplicates!0 (array!9724 (_ BitVec 32) List!2971) Bool)

(assert (=> b!207619 (= res!100856 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2968))))

(declare-fun mapNonEmpty!8957 () Bool)

(declare-fun tp!19240 () Bool)

(declare-fun e!135516 () Bool)

(assert (=> mapNonEmpty!8957 (= mapRes!8957 (and tp!19240 e!135516))))

(declare-fun mapKey!8957 () (_ BitVec 32))

(declare-fun mapValue!8957 () ValueCell!2286)

(declare-fun mapRest!8957 () (Array (_ BitVec 32) ValueCell!2286))

(assert (=> mapNonEmpty!8957 (= (arr!4613 _values!649) (store mapRest!8957 mapKey!8957 mapValue!8957))))

(declare-fun b!207620 () Bool)

(declare-fun res!100853 () Bool)

(assert (=> b!207620 (=> (not res!100853) (not e!135517))))

(assert (=> b!207620 (= res!100853 (= (select (arr!4612 _keys!825) i!601) k0!843))))

(declare-fun b!207621 () Bool)

(declare-fun res!100855 () Bool)

(assert (=> b!207621 (=> (not res!100855) (not e!135517))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!207621 (= res!100855 (validKeyInArray!0 k0!843))))

(declare-fun b!207614 () Bool)

(assert (=> b!207614 (= e!135516 tp_is_empty!5259)))

(declare-fun res!100854 () Bool)

(assert (=> start!20756 (=> (not res!100854) (not e!135517))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20756 (= res!100854 (validMask!0 mask!1149))))

(assert (=> start!20756 e!135517))

(declare-fun array_inv!3047 (array!9726) Bool)

(assert (=> start!20756 (and (array_inv!3047 _values!649) e!135518)))

(assert (=> start!20756 true))

(assert (=> start!20756 tp_is_empty!5259))

(declare-fun array_inv!3048 (array!9724) Bool)

(assert (=> start!20756 (array_inv!3048 _keys!825)))

(assert (=> start!20756 tp!19241))

(assert (= (and start!20756 res!100854) b!207616))

(assert (= (and b!207616 res!100852) b!207612))

(assert (= (and b!207612 res!100857) b!207619))

(assert (= (and b!207619 res!100856) b!207617))

(assert (= (and b!207617 res!100858) b!207621))

(assert (= (and b!207621 res!100855) b!207620))

(assert (= (and b!207620 res!100853) b!207613))

(assert (= (and b!207615 condMapEmpty!8957) mapIsEmpty!8957))

(assert (= (and b!207615 (not condMapEmpty!8957)) mapNonEmpty!8957))

(get-info :version)

(assert (= (and mapNonEmpty!8957 ((_ is ValueCellFull!2286) mapValue!8957)) b!207614))

(assert (= (and b!207615 ((_ is ValueCellFull!2286) mapDefault!8957)) b!207618))

(assert (= start!20756 b!207615))

(declare-fun m!235377 () Bool)

(assert (=> start!20756 m!235377))

(declare-fun m!235379 () Bool)

(assert (=> start!20756 m!235379))

(declare-fun m!235381 () Bool)

(assert (=> start!20756 m!235381))

(declare-fun m!235383 () Bool)

(assert (=> b!207620 m!235383))

(declare-fun m!235385 () Bool)

(assert (=> b!207619 m!235385))

(declare-fun m!235387 () Bool)

(assert (=> b!207612 m!235387))

(declare-fun m!235389 () Bool)

(assert (=> b!207613 m!235389))

(declare-fun m!235391 () Bool)

(assert (=> b!207613 m!235391))

(declare-fun m!235393 () Bool)

(assert (=> b!207613 m!235393))

(declare-fun m!235395 () Bool)

(assert (=> b!207613 m!235395))

(declare-fun m!235397 () Bool)

(assert (=> b!207613 m!235397))

(declare-fun m!235399 () Bool)

(assert (=> b!207613 m!235399))

(declare-fun m!235401 () Bool)

(assert (=> b!207613 m!235401))

(declare-fun m!235403 () Bool)

(assert (=> mapNonEmpty!8957 m!235403))

(declare-fun m!235405 () Bool)

(assert (=> b!207621 m!235405))

(check-sat (not b!207612) (not b!207621) (not mapNonEmpty!8957) (not b!207613) tp_is_empty!5259 (not b_next!5403) (not start!20756) (not b!207619) b_and!12167)
(check-sat b_and!12167 (not b_next!5403))
