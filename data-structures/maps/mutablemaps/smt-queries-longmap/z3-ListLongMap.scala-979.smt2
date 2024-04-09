; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21186 () Bool)

(assert start!21186)

(declare-fun b_free!5625 () Bool)

(declare-fun b_next!5625 () Bool)

(assert (=> start!21186 (= b_free!5625 (not b_next!5625))))

(declare-fun tp!19946 () Bool)

(declare-fun b_and!12509 () Bool)

(assert (=> start!21186 (= tp!19946 b_and!12509)))

(declare-fun b!213180 () Bool)

(declare-fun e!138673 () Bool)

(declare-fun e!138671 () Bool)

(assert (=> b!213180 (= e!138673 (not e!138671))))

(declare-fun res!104320 () Bool)

(assert (=> b!213180 (=> res!104320 e!138671)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!213180 (= res!104320 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6963 0))(
  ( (V!6964 (val!2788 Int)) )
))
(declare-datatypes ((ValueCell!2400 0))(
  ( (ValueCellFull!2400 (v!4794 V!6963)) (EmptyCell!2400) )
))
(declare-datatypes ((array!10178 0))(
  ( (array!10179 (arr!4829 (Array (_ BitVec 32) ValueCell!2400)) (size!5154 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10178)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((tuple2!4218 0))(
  ( (tuple2!4219 (_1!2119 (_ BitVec 64)) (_2!2119 V!6963)) )
))
(declare-datatypes ((List!3128 0))(
  ( (Nil!3125) (Cons!3124 (h!3766 tuple2!4218) (t!8087 List!3128)) )
))
(declare-datatypes ((ListLongMap!3145 0))(
  ( (ListLongMap!3146 (toList!1588 List!3128)) )
))
(declare-fun lt!110126 () ListLongMap!3145)

(declare-fun zeroValue!615 () V!6963)

(declare-datatypes ((array!10180 0))(
  ( (array!10181 (arr!4830 (Array (_ BitVec 32) (_ BitVec 64))) (size!5155 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10180)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6963)

(declare-fun getCurrentListMap!1112 (array!10180 array!10178 (_ BitVec 32) (_ BitVec 32) V!6963 V!6963 (_ BitVec 32) Int) ListLongMap!3145)

(assert (=> b!213180 (= lt!110126 (getCurrentListMap!1112 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110132 () array!10178)

(declare-fun lt!110131 () ListLongMap!3145)

(assert (=> b!213180 (= lt!110131 (getCurrentListMap!1112 _keys!825 lt!110132 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110128 () ListLongMap!3145)

(declare-fun lt!110125 () ListLongMap!3145)

(assert (=> b!213180 (and (= lt!110128 lt!110125) (= lt!110125 lt!110128))))

(declare-fun lt!110130 () ListLongMap!3145)

(declare-fun lt!110135 () tuple2!4218)

(declare-fun +!581 (ListLongMap!3145 tuple2!4218) ListLongMap!3145)

(assert (=> b!213180 (= lt!110125 (+!581 lt!110130 lt!110135))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun v!520 () V!6963)

(assert (=> b!213180 (= lt!110135 (tuple2!4219 k0!843 v!520))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!6461 0))(
  ( (Unit!6462) )
))
(declare-fun lt!110129 () Unit!6461)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!229 (array!10180 array!10178 (_ BitVec 32) (_ BitVec 32) V!6963 V!6963 (_ BitVec 32) (_ BitVec 64) V!6963 (_ BitVec 32) Int) Unit!6461)

(assert (=> b!213180 (= lt!110129 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!229 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!511 (array!10180 array!10178 (_ BitVec 32) (_ BitVec 32) V!6963 V!6963 (_ BitVec 32) Int) ListLongMap!3145)

(assert (=> b!213180 (= lt!110128 (getCurrentListMapNoExtraKeys!511 _keys!825 lt!110132 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!213180 (= lt!110132 (array!10179 (store (arr!4829 _values!649) i!601 (ValueCellFull!2400 v!520)) (size!5154 _values!649)))))

(assert (=> b!213180 (= lt!110130 (getCurrentListMapNoExtraKeys!511 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapIsEmpty!9329 () Bool)

(declare-fun mapRes!9329 () Bool)

(assert (=> mapIsEmpty!9329 mapRes!9329))

(declare-fun b!213181 () Bool)

(declare-fun res!104314 () Bool)

(assert (=> b!213181 (=> (not res!104314) (not e!138673))))

(assert (=> b!213181 (= res!104314 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5155 _keys!825))))))

(declare-fun b!213182 () Bool)

(declare-fun res!104321 () Bool)

(assert (=> b!213182 (=> (not res!104321) (not e!138673))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10180 (_ BitVec 32)) Bool)

(assert (=> b!213182 (= res!104321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!213183 () Bool)

(declare-fun res!104322 () Bool)

(assert (=> b!213183 (=> (not res!104322) (not e!138673))))

(assert (=> b!213183 (= res!104322 (= (select (arr!4830 _keys!825) i!601) k0!843))))

(declare-fun b!213184 () Bool)

(declare-fun res!104317 () Bool)

(assert (=> b!213184 (=> (not res!104317) (not e!138673))))

(assert (=> b!213184 (= res!104317 (and (= (size!5154 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5155 _keys!825) (size!5154 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!213185 () Bool)

(declare-fun e!138676 () Bool)

(assert (=> b!213185 (= e!138671 e!138676)))

(declare-fun res!104318 () Bool)

(assert (=> b!213185 (=> res!104318 e!138676)))

(assert (=> b!213185 (= res!104318 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!110124 () ListLongMap!3145)

(assert (=> b!213185 (= lt!110126 lt!110124)))

(declare-fun lt!110133 () tuple2!4218)

(assert (=> b!213185 (= lt!110124 (+!581 lt!110130 lt!110133))))

(declare-fun lt!110134 () ListLongMap!3145)

(assert (=> b!213185 (= lt!110131 lt!110134)))

(assert (=> b!213185 (= lt!110134 (+!581 lt!110125 lt!110133))))

(assert (=> b!213185 (= lt!110131 (+!581 lt!110128 lt!110133))))

(assert (=> b!213185 (= lt!110133 (tuple2!4219 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!213186 () Bool)

(declare-fun res!104315 () Bool)

(assert (=> b!213186 (=> (not res!104315) (not e!138673))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!213186 (= res!104315 (validKeyInArray!0 k0!843))))

(declare-fun b!213187 () Bool)

(declare-fun e!138672 () Bool)

(declare-fun tp_is_empty!5487 () Bool)

(assert (=> b!213187 (= e!138672 tp_is_empty!5487)))

(declare-fun b!213189 () Bool)

(declare-fun res!104316 () Bool)

(assert (=> b!213189 (=> (not res!104316) (not e!138673))))

(declare-datatypes ((List!3129 0))(
  ( (Nil!3126) (Cons!3125 (h!3767 (_ BitVec 64)) (t!8088 List!3129)) )
))
(declare-fun arrayNoDuplicates!0 (array!10180 (_ BitVec 32) List!3129) Bool)

(assert (=> b!213189 (= res!104316 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3126))))

(declare-fun b!213190 () Bool)

(declare-fun e!138675 () Bool)

(declare-fun e!138677 () Bool)

(assert (=> b!213190 (= e!138675 (and e!138677 mapRes!9329))))

(declare-fun condMapEmpty!9329 () Bool)

(declare-fun mapDefault!9329 () ValueCell!2400)

(assert (=> b!213190 (= condMapEmpty!9329 (= (arr!4829 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2400)) mapDefault!9329)))))

(declare-fun b!213191 () Bool)

(assert (=> b!213191 (= e!138676 (bvslt i!601 (size!5154 _values!649)))))

(assert (=> b!213191 (= lt!110134 (+!581 lt!110124 lt!110135))))

(declare-fun lt!110127 () Unit!6461)

(declare-fun addCommutativeForDiffKeys!203 (ListLongMap!3145 (_ BitVec 64) V!6963 (_ BitVec 64) V!6963) Unit!6461)

(assert (=> b!213191 (= lt!110127 (addCommutativeForDiffKeys!203 lt!110130 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun mapNonEmpty!9329 () Bool)

(declare-fun tp!19945 () Bool)

(assert (=> mapNonEmpty!9329 (= mapRes!9329 (and tp!19945 e!138672))))

(declare-fun mapValue!9329 () ValueCell!2400)

(declare-fun mapRest!9329 () (Array (_ BitVec 32) ValueCell!2400))

(declare-fun mapKey!9329 () (_ BitVec 32))

(assert (=> mapNonEmpty!9329 (= (arr!4829 _values!649) (store mapRest!9329 mapKey!9329 mapValue!9329))))

(declare-fun res!104319 () Bool)

(assert (=> start!21186 (=> (not res!104319) (not e!138673))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21186 (= res!104319 (validMask!0 mask!1149))))

(assert (=> start!21186 e!138673))

(declare-fun array_inv!3185 (array!10178) Bool)

(assert (=> start!21186 (and (array_inv!3185 _values!649) e!138675)))

(assert (=> start!21186 true))

(assert (=> start!21186 tp_is_empty!5487))

(declare-fun array_inv!3186 (array!10180) Bool)

(assert (=> start!21186 (array_inv!3186 _keys!825)))

(assert (=> start!21186 tp!19946))

(declare-fun b!213188 () Bool)

(assert (=> b!213188 (= e!138677 tp_is_empty!5487)))

(assert (= (and start!21186 res!104319) b!213184))

(assert (= (and b!213184 res!104317) b!213182))

(assert (= (and b!213182 res!104321) b!213189))

(assert (= (and b!213189 res!104316) b!213181))

(assert (= (and b!213181 res!104314) b!213186))

(assert (= (and b!213186 res!104315) b!213183))

(assert (= (and b!213183 res!104322) b!213180))

(assert (= (and b!213180 (not res!104320)) b!213185))

(assert (= (and b!213185 (not res!104318)) b!213191))

(assert (= (and b!213190 condMapEmpty!9329) mapIsEmpty!9329))

(assert (= (and b!213190 (not condMapEmpty!9329)) mapNonEmpty!9329))

(get-info :version)

(assert (= (and mapNonEmpty!9329 ((_ is ValueCellFull!2400) mapValue!9329)) b!213187))

(assert (= (and b!213190 ((_ is ValueCellFull!2400) mapDefault!9329)) b!213188))

(assert (= start!21186 b!213190))

(declare-fun m!241047 () Bool)

(assert (=> start!21186 m!241047))

(declare-fun m!241049 () Bool)

(assert (=> start!21186 m!241049))

(declare-fun m!241051 () Bool)

(assert (=> start!21186 m!241051))

(declare-fun m!241053 () Bool)

(assert (=> b!213180 m!241053))

(declare-fun m!241055 () Bool)

(assert (=> b!213180 m!241055))

(declare-fun m!241057 () Bool)

(assert (=> b!213180 m!241057))

(declare-fun m!241059 () Bool)

(assert (=> b!213180 m!241059))

(declare-fun m!241061 () Bool)

(assert (=> b!213180 m!241061))

(declare-fun m!241063 () Bool)

(assert (=> b!213180 m!241063))

(declare-fun m!241065 () Bool)

(assert (=> b!213180 m!241065))

(declare-fun m!241067 () Bool)

(assert (=> b!213183 m!241067))

(declare-fun m!241069 () Bool)

(assert (=> mapNonEmpty!9329 m!241069))

(declare-fun m!241071 () Bool)

(assert (=> b!213186 m!241071))

(declare-fun m!241073 () Bool)

(assert (=> b!213191 m!241073))

(declare-fun m!241075 () Bool)

(assert (=> b!213191 m!241075))

(declare-fun m!241077 () Bool)

(assert (=> b!213185 m!241077))

(declare-fun m!241079 () Bool)

(assert (=> b!213185 m!241079))

(declare-fun m!241081 () Bool)

(assert (=> b!213185 m!241081))

(declare-fun m!241083 () Bool)

(assert (=> b!213182 m!241083))

(declare-fun m!241085 () Bool)

(assert (=> b!213189 m!241085))

(check-sat (not b_next!5625) (not b!213182) (not b!213180) (not b!213186) (not b!213185) (not b!213189) (not mapNonEmpty!9329) tp_is_empty!5487 (not start!21186) (not b!213191) b_and!12509)
(check-sat b_and!12509 (not b_next!5625))
