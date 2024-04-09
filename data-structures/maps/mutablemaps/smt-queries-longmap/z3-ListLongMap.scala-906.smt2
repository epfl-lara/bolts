; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20546 () Bool)

(assert start!20546)

(declare-fun b_free!5193 () Bool)

(declare-fun b_next!5193 () Bool)

(assert (=> start!20546 (= b_free!5193 (not b_next!5193))))

(declare-fun tp!18610 () Bool)

(declare-fun b_and!11957 () Bool)

(assert (=> start!20546 (= tp!18610 b_and!11957)))

(declare-fun b!204067 () Bool)

(declare-fun res!98256 () Bool)

(declare-fun e!133559 () Bool)

(assert (=> b!204067 (=> (not res!98256) (not e!133559))))

(declare-datatypes ((array!9316 0))(
  ( (array!9317 (arr!4408 (Array (_ BitVec 32) (_ BitVec 64))) (size!4733 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9316)

(declare-datatypes ((List!2817 0))(
  ( (Nil!2814) (Cons!2813 (h!3455 (_ BitVec 64)) (t!7756 List!2817)) )
))
(declare-fun arrayNoDuplicates!0 (array!9316 (_ BitVec 32) List!2817) Bool)

(assert (=> b!204067 (= res!98256 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2814))))

(declare-fun b!204068 () Bool)

(declare-fun res!98258 () Bool)

(assert (=> b!204068 (=> (not res!98258) (not e!133559))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!204068 (= res!98258 (= (select (arr!4408 _keys!825) i!601) k0!843))))

(declare-fun b!204070 () Bool)

(declare-fun res!98255 () Bool)

(assert (=> b!204070 (=> (not res!98255) (not e!133559))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!204070 (= res!98255 (validKeyInArray!0 k0!843))))

(declare-fun mapNonEmpty!8642 () Bool)

(declare-fun mapRes!8642 () Bool)

(declare-fun tp!18611 () Bool)

(declare-fun e!133561 () Bool)

(assert (=> mapNonEmpty!8642 (= mapRes!8642 (and tp!18611 e!133561))))

(declare-datatypes ((V!6379 0))(
  ( (V!6380 (val!2569 Int)) )
))
(declare-datatypes ((ValueCell!2181 0))(
  ( (ValueCellFull!2181 (v!4535 V!6379)) (EmptyCell!2181) )
))
(declare-datatypes ((array!9318 0))(
  ( (array!9319 (arr!4409 (Array (_ BitVec 32) ValueCell!2181)) (size!4734 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9318)

(declare-fun mapKey!8642 () (_ BitVec 32))

(declare-fun mapValue!8642 () ValueCell!2181)

(declare-fun mapRest!8642 () (Array (_ BitVec 32) ValueCell!2181))

(assert (=> mapNonEmpty!8642 (= (arr!4409 _values!649) (store mapRest!8642 mapKey!8642 mapValue!8642))))

(declare-fun b!204071 () Bool)

(declare-fun e!133555 () Bool)

(declare-fun e!133556 () Bool)

(assert (=> b!204071 (= e!133555 e!133556)))

(declare-fun res!98259 () Bool)

(assert (=> b!204071 (=> res!98259 e!133556)))

(assert (=> b!204071 (= res!98259 (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3894 0))(
  ( (tuple2!3895 (_1!1957 (_ BitVec 64)) (_2!1957 V!6379)) )
))
(declare-datatypes ((List!2818 0))(
  ( (Nil!2815) (Cons!2814 (h!3456 tuple2!3894) (t!7757 List!2818)) )
))
(declare-datatypes ((ListLongMap!2821 0))(
  ( (ListLongMap!2822 (toList!1426 List!2818)) )
))
(declare-fun lt!103320 () ListLongMap!2821)

(declare-fun lt!103313 () ListLongMap!2821)

(assert (=> b!204071 (= lt!103320 lt!103313)))

(declare-fun lt!103319 () ListLongMap!2821)

(declare-fun lt!103311 () tuple2!3894)

(declare-fun +!443 (ListLongMap!2821 tuple2!3894) ListLongMap!2821)

(assert (=> b!204071 (= lt!103313 (+!443 lt!103319 lt!103311))))

(declare-fun lt!103310 () ListLongMap!2821)

(declare-fun lt!103318 () ListLongMap!2821)

(assert (=> b!204071 (= lt!103310 lt!103318)))

(declare-fun lt!103315 () ListLongMap!2821)

(assert (=> b!204071 (= lt!103318 (+!443 lt!103315 lt!103311))))

(declare-fun lt!103312 () ListLongMap!2821)

(assert (=> b!204071 (= lt!103320 (+!443 lt!103312 lt!103311))))

(declare-fun zeroValue!615 () V!6379)

(assert (=> b!204071 (= lt!103311 (tuple2!3895 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!204072 () Bool)

(assert (=> b!204072 (= e!133559 (not e!133555))))

(declare-fun res!98257 () Bool)

(assert (=> b!204072 (=> res!98257 e!133555)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!204072 (= res!98257 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6379)

(declare-fun getCurrentListMap!995 (array!9316 array!9318 (_ BitVec 32) (_ BitVec 32) V!6379 V!6379 (_ BitVec 32) Int) ListLongMap!2821)

(assert (=> b!204072 (= lt!103310 (getCurrentListMap!995 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103314 () array!9318)

(assert (=> b!204072 (= lt!103320 (getCurrentListMap!995 _keys!825 lt!103314 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!204072 (and (= lt!103312 lt!103319) (= lt!103319 lt!103312))))

(declare-fun lt!103321 () tuple2!3894)

(assert (=> b!204072 (= lt!103319 (+!443 lt!103315 lt!103321))))

(declare-fun v!520 () V!6379)

(assert (=> b!204072 (= lt!103321 (tuple2!3895 k0!843 v!520))))

(declare-datatypes ((Unit!6187 0))(
  ( (Unit!6188) )
))
(declare-fun lt!103316 () Unit!6187)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!108 (array!9316 array!9318 (_ BitVec 32) (_ BitVec 32) V!6379 V!6379 (_ BitVec 32) (_ BitVec 64) V!6379 (_ BitVec 32) Int) Unit!6187)

(assert (=> b!204072 (= lt!103316 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!108 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!366 (array!9316 array!9318 (_ BitVec 32) (_ BitVec 32) V!6379 V!6379 (_ BitVec 32) Int) ListLongMap!2821)

(assert (=> b!204072 (= lt!103312 (getCurrentListMapNoExtraKeys!366 _keys!825 lt!103314 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!204072 (= lt!103314 (array!9319 (store (arr!4409 _values!649) i!601 (ValueCellFull!2181 v!520)) (size!4734 _values!649)))))

(assert (=> b!204072 (= lt!103315 (getCurrentListMapNoExtraKeys!366 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!204073 () Bool)

(declare-fun res!98254 () Bool)

(assert (=> b!204073 (=> (not res!98254) (not e!133559))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9316 (_ BitVec 32)) Bool)

(assert (=> b!204073 (= res!98254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!204074 () Bool)

(declare-fun res!98253 () Bool)

(assert (=> b!204074 (=> (not res!98253) (not e!133559))))

(assert (=> b!204074 (= res!98253 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4733 _keys!825))))))

(declare-fun b!204069 () Bool)

(declare-fun tp_is_empty!5049 () Bool)

(assert (=> b!204069 (= e!133561 tp_is_empty!5049)))

(declare-fun res!98252 () Bool)

(assert (=> start!20546 (=> (not res!98252) (not e!133559))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20546 (= res!98252 (validMask!0 mask!1149))))

(assert (=> start!20546 e!133559))

(declare-fun e!133560 () Bool)

(declare-fun array_inv!2903 (array!9318) Bool)

(assert (=> start!20546 (and (array_inv!2903 _values!649) e!133560)))

(assert (=> start!20546 true))

(assert (=> start!20546 tp_is_empty!5049))

(declare-fun array_inv!2904 (array!9316) Bool)

(assert (=> start!20546 (array_inv!2904 _keys!825)))

(assert (=> start!20546 tp!18610))

(declare-fun mapIsEmpty!8642 () Bool)

(assert (=> mapIsEmpty!8642 mapRes!8642))

(declare-fun b!204075 () Bool)

(declare-fun res!98260 () Bool)

(assert (=> b!204075 (=> (not res!98260) (not e!133559))))

(assert (=> b!204075 (= res!98260 (and (= (size!4734 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4733 _keys!825) (size!4734 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!204076 () Bool)

(declare-fun e!133558 () Bool)

(assert (=> b!204076 (= e!133558 tp_is_empty!5049)))

(declare-fun b!204077 () Bool)

(assert (=> b!204077 (= e!133560 (and e!133558 mapRes!8642))))

(declare-fun condMapEmpty!8642 () Bool)

(declare-fun mapDefault!8642 () ValueCell!2181)

(assert (=> b!204077 (= condMapEmpty!8642 (= (arr!4409 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2181)) mapDefault!8642)))))

(declare-fun b!204078 () Bool)

(assert (=> b!204078 (= e!133556 true)))

(assert (=> b!204078 (= lt!103313 (+!443 lt!103318 lt!103321))))

(declare-fun lt!103317 () Unit!6187)

(declare-fun addCommutativeForDiffKeys!152 (ListLongMap!2821 (_ BitVec 64) V!6379 (_ BitVec 64) V!6379) Unit!6187)

(assert (=> b!204078 (= lt!103317 (addCommutativeForDiffKeys!152 lt!103315 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(assert (= (and start!20546 res!98252) b!204075))

(assert (= (and b!204075 res!98260) b!204073))

(assert (= (and b!204073 res!98254) b!204067))

(assert (= (and b!204067 res!98256) b!204074))

(assert (= (and b!204074 res!98253) b!204070))

(assert (= (and b!204070 res!98255) b!204068))

(assert (= (and b!204068 res!98258) b!204072))

(assert (= (and b!204072 (not res!98257)) b!204071))

(assert (= (and b!204071 (not res!98259)) b!204078))

(assert (= (and b!204077 condMapEmpty!8642) mapIsEmpty!8642))

(assert (= (and b!204077 (not condMapEmpty!8642)) mapNonEmpty!8642))

(get-info :version)

(assert (= (and mapNonEmpty!8642 ((_ is ValueCellFull!2181) mapValue!8642)) b!204069))

(assert (= (and b!204077 ((_ is ValueCellFull!2181) mapDefault!8642)) b!204076))

(assert (= start!20546 b!204077))

(declare-fun m!231589 () Bool)

(assert (=> start!20546 m!231589))

(declare-fun m!231591 () Bool)

(assert (=> start!20546 m!231591))

(declare-fun m!231593 () Bool)

(assert (=> start!20546 m!231593))

(declare-fun m!231595 () Bool)

(assert (=> b!204070 m!231595))

(declare-fun m!231597 () Bool)

(assert (=> b!204068 m!231597))

(declare-fun m!231599 () Bool)

(assert (=> b!204078 m!231599))

(declare-fun m!231601 () Bool)

(assert (=> b!204078 m!231601))

(declare-fun m!231603 () Bool)

(assert (=> b!204073 m!231603))

(declare-fun m!231605 () Bool)

(assert (=> b!204067 m!231605))

(declare-fun m!231607 () Bool)

(assert (=> mapNonEmpty!8642 m!231607))

(declare-fun m!231609 () Bool)

(assert (=> b!204072 m!231609))

(declare-fun m!231611 () Bool)

(assert (=> b!204072 m!231611))

(declare-fun m!231613 () Bool)

(assert (=> b!204072 m!231613))

(declare-fun m!231615 () Bool)

(assert (=> b!204072 m!231615))

(declare-fun m!231617 () Bool)

(assert (=> b!204072 m!231617))

(declare-fun m!231619 () Bool)

(assert (=> b!204072 m!231619))

(declare-fun m!231621 () Bool)

(assert (=> b!204072 m!231621))

(declare-fun m!231623 () Bool)

(assert (=> b!204071 m!231623))

(declare-fun m!231625 () Bool)

(assert (=> b!204071 m!231625))

(declare-fun m!231627 () Bool)

(assert (=> b!204071 m!231627))

(check-sat (not start!20546) (not b!204073) (not b!204072) (not b!204067) b_and!11957 (not b_next!5193) (not b!204070) (not b!204078) (not mapNonEmpty!8642) tp_is_empty!5049 (not b!204071))
(check-sat b_and!11957 (not b_next!5193))
