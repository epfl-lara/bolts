; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20994 () Bool)

(assert start!20994)

(declare-fun b_free!5553 () Bool)

(declare-fun b_next!5553 () Bool)

(assert (=> start!20994 (= b_free!5553 (not b_next!5553))))

(declare-fun tp!19712 () Bool)

(declare-fun b_and!12365 () Bool)

(assert (=> start!20994 (= tp!19712 b_and!12365)))

(declare-fun b!210772 () Bool)

(declare-fun e!137247 () Bool)

(declare-fun e!137245 () Bool)

(declare-fun mapRes!9203 () Bool)

(assert (=> b!210772 (= e!137247 (and e!137245 mapRes!9203))))

(declare-fun condMapEmpty!9203 () Bool)

(declare-datatypes ((V!6867 0))(
  ( (V!6868 (val!2752 Int)) )
))
(declare-datatypes ((ValueCell!2364 0))(
  ( (ValueCellFull!2364 (v!4734 V!6867)) (EmptyCell!2364) )
))
(declare-datatypes ((array!10030 0))(
  ( (array!10031 (arr!4761 (Array (_ BitVec 32) ValueCell!2364)) (size!5086 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10030)

(declare-fun mapDefault!9203 () ValueCell!2364)

(assert (=> b!210772 (= condMapEmpty!9203 (= (arr!4761 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2364)) mapDefault!9203)))))

(declare-fun b!210773 () Bool)

(declare-fun res!102883 () Bool)

(declare-fun e!137244 () Bool)

(assert (=> b!210773 (=> (not res!102883) (not e!137244))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!210773 (= res!102883 (validKeyInArray!0 k0!843))))

(declare-fun b!210774 () Bool)

(declare-fun e!137242 () Bool)

(declare-fun tp_is_empty!5415 () Bool)

(assert (=> b!210774 (= e!137242 tp_is_empty!5415)))

(declare-fun mapIsEmpty!9203 () Bool)

(assert (=> mapIsEmpty!9203 mapRes!9203))

(declare-fun b!210775 () Bool)

(declare-fun res!102879 () Bool)

(assert (=> b!210775 (=> (not res!102879) (not e!137244))))

(declare-datatypes ((array!10032 0))(
  ( (array!10033 (arr!4762 (Array (_ BitVec 32) (_ BitVec 64))) (size!5087 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10032)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!210775 (= res!102879 (and (= (size!5086 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5087 _keys!825) (size!5086 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!102882 () Bool)

(assert (=> start!20994 (=> (not res!102882) (not e!137244))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20994 (= res!102882 (validMask!0 mask!1149))))

(assert (=> start!20994 e!137244))

(declare-fun array_inv!3143 (array!10030) Bool)

(assert (=> start!20994 (and (array_inv!3143 _values!649) e!137247)))

(assert (=> start!20994 true))

(assert (=> start!20994 tp_is_empty!5415))

(declare-fun array_inv!3144 (array!10032) Bool)

(assert (=> start!20994 (array_inv!3144 _keys!825)))

(assert (=> start!20994 tp!19712))

(declare-fun b!210776 () Bool)

(declare-fun e!137248 () Bool)

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!210776 (= e!137248 (bvslt i!601 (size!5086 _values!649)))))

(declare-datatypes ((tuple2!4154 0))(
  ( (tuple2!4155 (_1!2087 (_ BitVec 64)) (_2!2087 V!6867)) )
))
(declare-fun lt!108205 () tuple2!4154)

(declare-fun lt!108202 () tuple2!4154)

(declare-datatypes ((List!3072 0))(
  ( (Nil!3069) (Cons!3068 (h!3710 tuple2!4154) (t!8019 List!3072)) )
))
(declare-datatypes ((ListLongMap!3081 0))(
  ( (ListLongMap!3082 (toList!1556 List!3072)) )
))
(declare-fun lt!108199 () ListLongMap!3081)

(declare-fun lt!108194 () ListLongMap!3081)

(declare-fun +!549 (ListLongMap!3081 tuple2!4154) ListLongMap!3081)

(assert (=> b!210776 (= (+!549 lt!108194 lt!108205) (+!549 lt!108199 lt!108202))))

(declare-fun minValue!615 () V!6867)

(declare-fun lt!108190 () ListLongMap!3081)

(declare-datatypes ((Unit!6395 0))(
  ( (Unit!6396) )
))
(declare-fun lt!108195 () Unit!6395)

(declare-fun v!520 () V!6867)

(declare-fun addCommutativeForDiffKeys!194 (ListLongMap!3081 (_ BitVec 64) V!6867 (_ BitVec 64) V!6867) Unit!6395)

(assert (=> b!210776 (= lt!108195 (addCommutativeForDiffKeys!194 lt!108190 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!210777 () Bool)

(declare-fun e!137243 () Bool)

(assert (=> b!210777 (= e!137244 (not e!137243))))

(declare-fun res!102880 () Bool)

(assert (=> b!210777 (=> res!102880 e!137243)))

(assert (=> b!210777 (= res!102880 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!108191 () ListLongMap!3081)

(declare-fun zeroValue!615 () V!6867)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1087 (array!10032 array!10030 (_ BitVec 32) (_ BitVec 32) V!6867 V!6867 (_ BitVec 32) Int) ListLongMap!3081)

(assert (=> b!210777 (= lt!108191 (getCurrentListMap!1087 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108204 () array!10030)

(declare-fun lt!108193 () ListLongMap!3081)

(assert (=> b!210777 (= lt!108193 (getCurrentListMap!1087 _keys!825 lt!108204 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108200 () ListLongMap!3081)

(declare-fun lt!108203 () ListLongMap!3081)

(assert (=> b!210777 (and (= lt!108200 lt!108203) (= lt!108203 lt!108200))))

(declare-fun lt!108197 () ListLongMap!3081)

(assert (=> b!210777 (= lt!108203 (+!549 lt!108197 lt!108202))))

(assert (=> b!210777 (= lt!108202 (tuple2!4155 k0!843 v!520))))

(declare-fun lt!108192 () Unit!6395)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!204 (array!10032 array!10030 (_ BitVec 32) (_ BitVec 32) V!6867 V!6867 (_ BitVec 32) (_ BitVec 64) V!6867 (_ BitVec 32) Int) Unit!6395)

(assert (=> b!210777 (= lt!108192 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!204 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!486 (array!10032 array!10030 (_ BitVec 32) (_ BitVec 32) V!6867 V!6867 (_ BitVec 32) Int) ListLongMap!3081)

(assert (=> b!210777 (= lt!108200 (getCurrentListMapNoExtraKeys!486 _keys!825 lt!108204 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!210777 (= lt!108204 (array!10031 (store (arr!4761 _values!649) i!601 (ValueCellFull!2364 v!520)) (size!5086 _values!649)))))

(assert (=> b!210777 (= lt!108197 (getCurrentListMapNoExtraKeys!486 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!210778 () Bool)

(declare-fun res!102886 () Bool)

(assert (=> b!210778 (=> (not res!102886) (not e!137244))))

(assert (=> b!210778 (= res!102886 (= (select (arr!4762 _keys!825) i!601) k0!843))))

(declare-fun b!210779 () Bool)

(declare-fun res!102884 () Bool)

(assert (=> b!210779 (=> (not res!102884) (not e!137244))))

(assert (=> b!210779 (= res!102884 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5087 _keys!825))))))

(declare-fun mapNonEmpty!9203 () Bool)

(declare-fun tp!19711 () Bool)

(assert (=> mapNonEmpty!9203 (= mapRes!9203 (and tp!19711 e!137242))))

(declare-fun mapRest!9203 () (Array (_ BitVec 32) ValueCell!2364))

(declare-fun mapKey!9203 () (_ BitVec 32))

(declare-fun mapValue!9203 () ValueCell!2364)

(assert (=> mapNonEmpty!9203 (= (arr!4761 _values!649) (store mapRest!9203 mapKey!9203 mapValue!9203))))

(declare-fun b!210780 () Bool)

(assert (=> b!210780 (= e!137245 tp_is_empty!5415)))

(declare-fun b!210781 () Bool)

(declare-fun res!102878 () Bool)

(assert (=> b!210781 (=> (not res!102878) (not e!137244))))

(declare-datatypes ((List!3073 0))(
  ( (Nil!3070) (Cons!3069 (h!3711 (_ BitVec 64)) (t!8020 List!3073)) )
))
(declare-fun arrayNoDuplicates!0 (array!10032 (_ BitVec 32) List!3073) Bool)

(assert (=> b!210781 (= res!102878 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3070))))

(declare-fun b!210782 () Bool)

(declare-fun res!102885 () Bool)

(assert (=> b!210782 (=> (not res!102885) (not e!137244))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10032 (_ BitVec 32)) Bool)

(assert (=> b!210782 (= res!102885 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!210783 () Bool)

(assert (=> b!210783 (= e!137243 e!137248)))

(declare-fun res!102881 () Bool)

(assert (=> b!210783 (=> res!102881 e!137248)))

(assert (=> b!210783 (= res!102881 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!108201 () ListLongMap!3081)

(assert (=> b!210783 (= lt!108201 lt!108194)))

(assert (=> b!210783 (= lt!108194 (+!549 lt!108190 lt!108202))))

(declare-fun lt!108196 () Unit!6395)

(assert (=> b!210783 (= lt!108196 (addCommutativeForDiffKeys!194 lt!108197 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(assert (=> b!210783 (= lt!108193 (+!549 lt!108201 lt!108205))))

(declare-fun lt!108198 () tuple2!4154)

(assert (=> b!210783 (= lt!108201 (+!549 lt!108203 lt!108198))))

(assert (=> b!210783 (= lt!108191 lt!108199)))

(assert (=> b!210783 (= lt!108199 (+!549 lt!108190 lt!108205))))

(assert (=> b!210783 (= lt!108190 (+!549 lt!108197 lt!108198))))

(assert (=> b!210783 (= lt!108193 (+!549 (+!549 lt!108200 lt!108198) lt!108205))))

(assert (=> b!210783 (= lt!108205 (tuple2!4155 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!210783 (= lt!108198 (tuple2!4155 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(assert (= (and start!20994 res!102882) b!210775))

(assert (= (and b!210775 res!102879) b!210782))

(assert (= (and b!210782 res!102885) b!210781))

(assert (= (and b!210781 res!102878) b!210779))

(assert (= (and b!210779 res!102884) b!210773))

(assert (= (and b!210773 res!102883) b!210778))

(assert (= (and b!210778 res!102886) b!210777))

(assert (= (and b!210777 (not res!102880)) b!210783))

(assert (= (and b!210783 (not res!102881)) b!210776))

(assert (= (and b!210772 condMapEmpty!9203) mapIsEmpty!9203))

(assert (= (and b!210772 (not condMapEmpty!9203)) mapNonEmpty!9203))

(get-info :version)

(assert (= (and mapNonEmpty!9203 ((_ is ValueCellFull!2364) mapValue!9203)) b!210774))

(assert (= (and b!210772 ((_ is ValueCellFull!2364) mapDefault!9203)) b!210780))

(assert (= start!20994 b!210772))

(declare-fun m!238443 () Bool)

(assert (=> b!210773 m!238443))

(declare-fun m!238445 () Bool)

(assert (=> b!210777 m!238445))

(declare-fun m!238447 () Bool)

(assert (=> b!210777 m!238447))

(declare-fun m!238449 () Bool)

(assert (=> b!210777 m!238449))

(declare-fun m!238451 () Bool)

(assert (=> b!210777 m!238451))

(declare-fun m!238453 () Bool)

(assert (=> b!210777 m!238453))

(declare-fun m!238455 () Bool)

(assert (=> b!210777 m!238455))

(declare-fun m!238457 () Bool)

(assert (=> b!210777 m!238457))

(declare-fun m!238459 () Bool)

(assert (=> b!210783 m!238459))

(declare-fun m!238461 () Bool)

(assert (=> b!210783 m!238461))

(declare-fun m!238463 () Bool)

(assert (=> b!210783 m!238463))

(declare-fun m!238465 () Bool)

(assert (=> b!210783 m!238465))

(declare-fun m!238467 () Bool)

(assert (=> b!210783 m!238467))

(declare-fun m!238469 () Bool)

(assert (=> b!210783 m!238469))

(assert (=> b!210783 m!238465))

(declare-fun m!238471 () Bool)

(assert (=> b!210783 m!238471))

(declare-fun m!238473 () Bool)

(assert (=> b!210783 m!238473))

(declare-fun m!238475 () Bool)

(assert (=> start!20994 m!238475))

(declare-fun m!238477 () Bool)

(assert (=> start!20994 m!238477))

(declare-fun m!238479 () Bool)

(assert (=> start!20994 m!238479))

(declare-fun m!238481 () Bool)

(assert (=> mapNonEmpty!9203 m!238481))

(declare-fun m!238483 () Bool)

(assert (=> b!210778 m!238483))

(declare-fun m!238485 () Bool)

(assert (=> b!210776 m!238485))

(declare-fun m!238487 () Bool)

(assert (=> b!210776 m!238487))

(declare-fun m!238489 () Bool)

(assert (=> b!210776 m!238489))

(declare-fun m!238491 () Bool)

(assert (=> b!210782 m!238491))

(declare-fun m!238493 () Bool)

(assert (=> b!210781 m!238493))

(check-sat (not b!210776) b_and!12365 (not start!20994) tp_is_empty!5415 (not b!210781) (not mapNonEmpty!9203) (not b_next!5553) (not b!210777) (not b!210773) (not b!210782) (not b!210783))
(check-sat b_and!12365 (not b_next!5553))
