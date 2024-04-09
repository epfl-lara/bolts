; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20390 () Bool)

(assert start!20390)

(declare-fun b_free!5037 () Bool)

(declare-fun b_next!5037 () Bool)

(assert (=> start!20390 (= b_free!5037 (not b_next!5037))))

(declare-fun tp!18142 () Bool)

(declare-fun b_and!11801 () Bool)

(assert (=> start!20390 (= tp!18142 b_and!11801)))

(declare-fun b!201250 () Bool)

(declare-fun res!96141 () Bool)

(declare-fun e!131919 () Bool)

(assert (=> b!201250 (=> (not res!96141) (not e!131919))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9014 0))(
  ( (array!9015 (arr!4257 (Array (_ BitVec 32) (_ BitVec 64))) (size!4582 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9014)

(assert (=> b!201250 (= res!96141 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4582 _keys!825))))))

(declare-fun b!201251 () Bool)

(declare-fun e!131921 () Bool)

(assert (=> b!201251 (= e!131919 (not e!131921))))

(declare-fun res!96139 () Bool)

(assert (=> b!201251 (=> res!96139 e!131921)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!201251 (= res!96139 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6171 0))(
  ( (V!6172 (val!2491 Int)) )
))
(declare-datatypes ((tuple2!3766 0))(
  ( (tuple2!3767 (_1!1893 (_ BitVec 64)) (_2!1893 V!6171)) )
))
(declare-datatypes ((List!2705 0))(
  ( (Nil!2702) (Cons!2701 (h!3343 tuple2!3766) (t!7644 List!2705)) )
))
(declare-datatypes ((ListLongMap!2693 0))(
  ( (ListLongMap!2694 (toList!1362 List!2705)) )
))
(declare-fun lt!100209 () ListLongMap!2693)

(declare-datatypes ((ValueCell!2103 0))(
  ( (ValueCellFull!2103 (v!4457 V!6171)) (EmptyCell!2103) )
))
(declare-datatypes ((array!9016 0))(
  ( (array!9017 (arr!4258 (Array (_ BitVec 32) ValueCell!2103)) (size!4583 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9016)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6171)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6171)

(declare-fun getCurrentListMap!946 (array!9014 array!9016 (_ BitVec 32) (_ BitVec 32) V!6171 V!6171 (_ BitVec 32) Int) ListLongMap!2693)

(assert (=> b!201251 (= lt!100209 (getCurrentListMap!946 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!100200 () ListLongMap!2693)

(declare-fun lt!100206 () array!9016)

(assert (=> b!201251 (= lt!100200 (getCurrentListMap!946 _keys!825 lt!100206 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!100207 () ListLongMap!2693)

(declare-fun lt!100205 () ListLongMap!2693)

(assert (=> b!201251 (and (= lt!100207 lt!100205) (= lt!100205 lt!100207))))

(declare-fun lt!100213 () ListLongMap!2693)

(declare-fun lt!100210 () tuple2!3766)

(declare-fun +!379 (ListLongMap!2693 tuple2!3766) ListLongMap!2693)

(assert (=> b!201251 (= lt!100205 (+!379 lt!100213 lt!100210))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun v!520 () V!6171)

(assert (=> b!201251 (= lt!100210 (tuple2!3767 k0!843 v!520))))

(declare-datatypes ((Unit!6065 0))(
  ( (Unit!6066) )
))
(declare-fun lt!100208 () Unit!6065)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!59 (array!9014 array!9016 (_ BitVec 32) (_ BitVec 32) V!6171 V!6171 (_ BitVec 32) (_ BitVec 64) V!6171 (_ BitVec 32) Int) Unit!6065)

(assert (=> b!201251 (= lt!100208 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!59 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!317 (array!9014 array!9016 (_ BitVec 32) (_ BitVec 32) V!6171 V!6171 (_ BitVec 32) Int) ListLongMap!2693)

(assert (=> b!201251 (= lt!100207 (getCurrentListMapNoExtraKeys!317 _keys!825 lt!100206 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201251 (= lt!100206 (array!9017 (store (arr!4258 _values!649) i!601 (ValueCellFull!2103 v!520)) (size!4583 _values!649)))))

(assert (=> b!201251 (= lt!100213 (getCurrentListMapNoExtraKeys!317 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!201252 () Bool)

(declare-fun e!131917 () Bool)

(declare-fun tp_is_empty!4893 () Bool)

(assert (=> b!201252 (= e!131917 tp_is_empty!4893)))

(declare-fun mapIsEmpty!8408 () Bool)

(declare-fun mapRes!8408 () Bool)

(assert (=> mapIsEmpty!8408 mapRes!8408))

(declare-fun b!201253 () Bool)

(declare-fun res!96140 () Bool)

(assert (=> b!201253 (=> (not res!96140) (not e!131919))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9014 (_ BitVec 32)) Bool)

(assert (=> b!201253 (= res!96140 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!201254 () Bool)

(declare-fun e!131922 () Bool)

(assert (=> b!201254 (= e!131921 e!131922)))

(declare-fun res!96144 () Bool)

(assert (=> b!201254 (=> res!96144 e!131922)))

(assert (=> b!201254 (= res!96144 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!100202 () ListLongMap!2693)

(declare-fun lt!100198 () ListLongMap!2693)

(assert (=> b!201254 (= lt!100202 lt!100198)))

(declare-fun lt!100199 () ListLongMap!2693)

(assert (=> b!201254 (= lt!100198 (+!379 lt!100199 lt!100210))))

(declare-fun lt!100201 () Unit!6065)

(declare-fun addCommutativeForDiffKeys!100 (ListLongMap!2693 (_ BitVec 64) V!6171 (_ BitVec 64) V!6171) Unit!6065)

(assert (=> b!201254 (= lt!100201 (addCommutativeForDiffKeys!100 lt!100213 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!100211 () tuple2!3766)

(assert (=> b!201254 (= lt!100200 (+!379 lt!100202 lt!100211))))

(declare-fun lt!100212 () tuple2!3766)

(assert (=> b!201254 (= lt!100202 (+!379 lt!100205 lt!100212))))

(declare-fun lt!100204 () ListLongMap!2693)

(assert (=> b!201254 (= lt!100209 lt!100204)))

(assert (=> b!201254 (= lt!100204 (+!379 lt!100199 lt!100211))))

(assert (=> b!201254 (= lt!100199 (+!379 lt!100213 lt!100212))))

(assert (=> b!201254 (= lt!100200 (+!379 (+!379 lt!100207 lt!100212) lt!100211))))

(assert (=> b!201254 (= lt!100211 (tuple2!3767 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!201254 (= lt!100212 (tuple2!3767 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!201255 () Bool)

(declare-fun res!96138 () Bool)

(assert (=> b!201255 (=> (not res!96138) (not e!131919))))

(assert (=> b!201255 (= res!96138 (= (select (arr!4257 _keys!825) i!601) k0!843))))

(declare-fun b!201256 () Bool)

(declare-fun res!96142 () Bool)

(assert (=> b!201256 (=> (not res!96142) (not e!131919))))

(declare-datatypes ((List!2706 0))(
  ( (Nil!2703) (Cons!2702 (h!3344 (_ BitVec 64)) (t!7645 List!2706)) )
))
(declare-fun arrayNoDuplicates!0 (array!9014 (_ BitVec 32) List!2706) Bool)

(assert (=> b!201256 (= res!96142 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2703))))

(declare-fun b!201257 () Bool)

(declare-fun e!131923 () Bool)

(assert (=> b!201257 (= e!131923 tp_is_empty!4893)))

(declare-fun b!201258 () Bool)

(declare-fun e!131920 () Bool)

(assert (=> b!201258 (= e!131920 (and e!131917 mapRes!8408))))

(declare-fun condMapEmpty!8408 () Bool)

(declare-fun mapDefault!8408 () ValueCell!2103)

(assert (=> b!201258 (= condMapEmpty!8408 (= (arr!4258 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2103)) mapDefault!8408)))))

(declare-fun b!201259 () Bool)

(assert (=> b!201259 (= e!131922 (bvsle #b00000000000000000000000000000000 (size!4582 _keys!825)))))

(assert (=> b!201259 (= (+!379 lt!100198 lt!100211) (+!379 lt!100204 lt!100210))))

(declare-fun lt!100203 () Unit!6065)

(assert (=> b!201259 (= lt!100203 (addCommutativeForDiffKeys!100 lt!100199 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!201260 () Bool)

(declare-fun res!96145 () Bool)

(assert (=> b!201260 (=> (not res!96145) (not e!131919))))

(assert (=> b!201260 (= res!96145 (and (= (size!4583 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4582 _keys!825) (size!4583 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!96143 () Bool)

(assert (=> start!20390 (=> (not res!96143) (not e!131919))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20390 (= res!96143 (validMask!0 mask!1149))))

(assert (=> start!20390 e!131919))

(declare-fun array_inv!2797 (array!9016) Bool)

(assert (=> start!20390 (and (array_inv!2797 _values!649) e!131920)))

(assert (=> start!20390 true))

(assert (=> start!20390 tp_is_empty!4893))

(declare-fun array_inv!2798 (array!9014) Bool)

(assert (=> start!20390 (array_inv!2798 _keys!825)))

(assert (=> start!20390 tp!18142))

(declare-fun b!201261 () Bool)

(declare-fun res!96137 () Bool)

(assert (=> b!201261 (=> (not res!96137) (not e!131919))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!201261 (= res!96137 (validKeyInArray!0 k0!843))))

(declare-fun mapNonEmpty!8408 () Bool)

(declare-fun tp!18143 () Bool)

(assert (=> mapNonEmpty!8408 (= mapRes!8408 (and tp!18143 e!131923))))

(declare-fun mapValue!8408 () ValueCell!2103)

(declare-fun mapKey!8408 () (_ BitVec 32))

(declare-fun mapRest!8408 () (Array (_ BitVec 32) ValueCell!2103))

(assert (=> mapNonEmpty!8408 (= (arr!4258 _values!649) (store mapRest!8408 mapKey!8408 mapValue!8408))))

(assert (= (and start!20390 res!96143) b!201260))

(assert (= (and b!201260 res!96145) b!201253))

(assert (= (and b!201253 res!96140) b!201256))

(assert (= (and b!201256 res!96142) b!201250))

(assert (= (and b!201250 res!96141) b!201261))

(assert (= (and b!201261 res!96137) b!201255))

(assert (= (and b!201255 res!96138) b!201251))

(assert (= (and b!201251 (not res!96139)) b!201254))

(assert (= (and b!201254 (not res!96144)) b!201259))

(assert (= (and b!201258 condMapEmpty!8408) mapIsEmpty!8408))

(assert (= (and b!201258 (not condMapEmpty!8408)) mapNonEmpty!8408))

(get-info :version)

(assert (= (and mapNonEmpty!8408 ((_ is ValueCellFull!2103) mapValue!8408)) b!201257))

(assert (= (and b!201258 ((_ is ValueCellFull!2103) mapDefault!8408)) b!201252))

(assert (= start!20390 b!201258))

(declare-fun m!228133 () Bool)

(assert (=> start!20390 m!228133))

(declare-fun m!228135 () Bool)

(assert (=> start!20390 m!228135))

(declare-fun m!228137 () Bool)

(assert (=> start!20390 m!228137))

(declare-fun m!228139 () Bool)

(assert (=> b!201251 m!228139))

(declare-fun m!228141 () Bool)

(assert (=> b!201251 m!228141))

(declare-fun m!228143 () Bool)

(assert (=> b!201251 m!228143))

(declare-fun m!228145 () Bool)

(assert (=> b!201251 m!228145))

(declare-fun m!228147 () Bool)

(assert (=> b!201251 m!228147))

(declare-fun m!228149 () Bool)

(assert (=> b!201251 m!228149))

(declare-fun m!228151 () Bool)

(assert (=> b!201251 m!228151))

(declare-fun m!228153 () Bool)

(assert (=> b!201254 m!228153))

(declare-fun m!228155 () Bool)

(assert (=> b!201254 m!228155))

(declare-fun m!228157 () Bool)

(assert (=> b!201254 m!228157))

(assert (=> b!201254 m!228157))

(declare-fun m!228159 () Bool)

(assert (=> b!201254 m!228159))

(declare-fun m!228161 () Bool)

(assert (=> b!201254 m!228161))

(declare-fun m!228163 () Bool)

(assert (=> b!201254 m!228163))

(declare-fun m!228165 () Bool)

(assert (=> b!201254 m!228165))

(declare-fun m!228167 () Bool)

(assert (=> b!201254 m!228167))

(declare-fun m!228169 () Bool)

(assert (=> b!201261 m!228169))

(declare-fun m!228171 () Bool)

(assert (=> b!201253 m!228171))

(declare-fun m!228173 () Bool)

(assert (=> b!201259 m!228173))

(declare-fun m!228175 () Bool)

(assert (=> b!201259 m!228175))

(declare-fun m!228177 () Bool)

(assert (=> b!201259 m!228177))

(declare-fun m!228179 () Bool)

(assert (=> b!201256 m!228179))

(declare-fun m!228181 () Bool)

(assert (=> mapNonEmpty!8408 m!228181))

(declare-fun m!228183 () Bool)

(assert (=> b!201255 m!228183))

(check-sat (not b!201259) (not mapNonEmpty!8408) (not b!201254) (not b!201253) (not b_next!5037) (not start!20390) (not b!201256) tp_is_empty!4893 (not b!201261) (not b!201251) b_and!11801)
(check-sat b_and!11801 (not b_next!5037))
