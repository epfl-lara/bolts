; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41182 () Bool)

(assert start!41182)

(declare-fun b_free!11043 () Bool)

(declare-fun b_next!11043 () Bool)

(assert (=> start!41182 (= b_free!11043 (not b_next!11043))))

(declare-fun tp!38964 () Bool)

(declare-fun b_and!19343 () Bool)

(assert (=> start!41182 (= tp!38964 b_and!19343)))

(declare-fun mapNonEmpty!20221 () Bool)

(declare-fun mapRes!20221 () Bool)

(declare-fun tp!38965 () Bool)

(declare-fun e!268371 () Bool)

(assert (=> mapNonEmpty!20221 (= mapRes!20221 (and tp!38965 e!268371))))

(declare-datatypes ((V!17613 0))(
  ( (V!17614 (val!6235 Int)) )
))
(declare-datatypes ((ValueCell!5847 0))(
  ( (ValueCellFull!5847 (v!8509 V!17613)) (EmptyCell!5847) )
))
(declare-fun mapRest!20221 () (Array (_ BitVec 32) ValueCell!5847))

(declare-datatypes ((array!28523 0))(
  ( (array!28524 (arr!13699 (Array (_ BitVec 32) ValueCell!5847)) (size!14051 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28523)

(declare-fun mapValue!20221 () ValueCell!5847)

(declare-fun mapKey!20221 () (_ BitVec 32))

(assert (=> mapNonEmpty!20221 (= (arr!13699 _values!549) (store mapRest!20221 mapKey!20221 mapValue!20221))))

(declare-fun b!459928 () Bool)

(declare-fun res!275015 () Bool)

(declare-fun e!268370 () Bool)

(assert (=> b!459928 (=> (not res!275015) (not e!268370))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!459928 (= res!275015 (validMask!0 mask!1025))))

(declare-fun b!459929 () Bool)

(declare-fun e!268368 () Bool)

(assert (=> b!459929 (= e!268370 e!268368)))

(declare-fun res!275026 () Bool)

(assert (=> b!459929 (=> (not res!275026) (not e!268368))))

(declare-datatypes ((array!28525 0))(
  ( (array!28526 (arr!13700 (Array (_ BitVec 32) (_ BitVec 64))) (size!14052 (_ BitVec 32))) )
))
(declare-fun lt!208234 () array!28525)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28525 (_ BitVec 32)) Bool)

(assert (=> b!459929 (= res!275026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!208234 mask!1025))))

(declare-fun _keys!709 () array!28525)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!459929 (= lt!208234 (array!28526 (store (arr!13700 _keys!709) i!563 k0!794) (size!14052 _keys!709)))))

(declare-fun b!459930 () Bool)

(declare-fun res!275022 () Bool)

(assert (=> b!459930 (=> (not res!275022) (not e!268370))))

(assert (=> b!459930 (= res!275022 (or (= (select (arr!13700 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13700 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!459931 () Bool)

(declare-fun e!268366 () Bool)

(declare-fun tp_is_empty!12381 () Bool)

(assert (=> b!459931 (= e!268366 tp_is_empty!12381)))

(declare-fun b!459932 () Bool)

(declare-fun res!275025 () Bool)

(assert (=> b!459932 (=> (not res!275025) (not e!268370))))

(declare-datatypes ((List!8289 0))(
  ( (Nil!8286) (Cons!8285 (h!9141 (_ BitVec 64)) (t!14219 List!8289)) )
))
(declare-fun arrayNoDuplicates!0 (array!28525 (_ BitVec 32) List!8289) Bool)

(assert (=> b!459932 (= res!275025 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8286))))

(declare-fun b!459933 () Bool)

(declare-fun res!275013 () Bool)

(assert (=> b!459933 (=> (not res!275013) (not e!268370))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!459933 (= res!275013 (and (= (size!14051 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14052 _keys!709) (size!14051 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!459935 () Bool)

(declare-fun e!268365 () Bool)

(declare-fun e!268372 () Bool)

(assert (=> b!459935 (= e!268365 e!268372)))

(declare-fun res!275012 () Bool)

(assert (=> b!459935 (=> res!275012 e!268372)))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!459935 (= res!275012 (= k0!794 (select (arr!13700 _keys!709) from!863)))))

(assert (=> b!459935 (not (= (select (arr!13700 _keys!709) from!863) k0!794))))

(declare-datatypes ((Unit!13329 0))(
  ( (Unit!13330) )
))
(declare-fun lt!208244 () Unit!13329)

(declare-fun e!268367 () Unit!13329)

(assert (=> b!459935 (= lt!208244 e!268367)))

(declare-fun c!56438 () Bool)

(assert (=> b!459935 (= c!56438 (= (select (arr!13700 _keys!709) from!863) k0!794))))

(declare-datatypes ((tuple2!8186 0))(
  ( (tuple2!8187 (_1!4103 (_ BitVec 64)) (_2!4103 V!17613)) )
))
(declare-datatypes ((List!8290 0))(
  ( (Nil!8287) (Cons!8286 (h!9142 tuple2!8186) (t!14220 List!8290)) )
))
(declare-datatypes ((ListLongMap!7113 0))(
  ( (ListLongMap!7114 (toList!3572 List!8290)) )
))
(declare-fun lt!208239 () ListLongMap!7113)

(declare-fun lt!208243 () ListLongMap!7113)

(assert (=> b!459935 (= lt!208239 lt!208243)))

(declare-fun lt!208242 () ListLongMap!7113)

(declare-fun lt!208238 () tuple2!8186)

(declare-fun +!1591 (ListLongMap!7113 tuple2!8186) ListLongMap!7113)

(assert (=> b!459935 (= lt!208243 (+!1591 lt!208242 lt!208238))))

(declare-fun lt!208245 () V!17613)

(assert (=> b!459935 (= lt!208238 (tuple2!8187 (select (arr!13700 _keys!709) from!863) lt!208245))))

(declare-fun defaultEntry!557 () Int)

(declare-fun get!6774 (ValueCell!5847 V!17613) V!17613)

(declare-fun dynLambda!900 (Int (_ BitVec 64)) V!17613)

(assert (=> b!459935 (= lt!208245 (get!6774 (select (arr!13699 _values!549) from!863) (dynLambda!900 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!459936 () Bool)

(declare-fun res!275017 () Bool)

(assert (=> b!459936 (=> (not res!275017) (not e!268370))))

(declare-fun arrayContainsKey!0 (array!28525 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!459936 (= res!275017 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!459937 () Bool)

(declare-fun res!275019 () Bool)

(assert (=> b!459937 (=> (not res!275019) (not e!268368))))

(assert (=> b!459937 (= res!275019 (arrayNoDuplicates!0 lt!208234 #b00000000000000000000000000000000 Nil!8286))))

(declare-fun mapIsEmpty!20221 () Bool)

(assert (=> mapIsEmpty!20221 mapRes!20221))

(declare-fun b!459938 () Bool)

(declare-fun e!268364 () Bool)

(assert (=> b!459938 (= e!268364 (and e!268366 mapRes!20221))))

(declare-fun condMapEmpty!20221 () Bool)

(declare-fun mapDefault!20221 () ValueCell!5847)

(assert (=> b!459938 (= condMapEmpty!20221 (= (arr!13699 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5847)) mapDefault!20221)))))

(declare-fun b!459939 () Bool)

(declare-fun e!268369 () Bool)

(assert (=> b!459939 (= e!268369 (not e!268365))))

(declare-fun res!275018 () Bool)

(assert (=> b!459939 (=> res!275018 e!268365)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!459939 (= res!275018 (not (validKeyInArray!0 (select (arr!13700 _keys!709) from!863))))))

(declare-fun lt!208241 () ListLongMap!7113)

(assert (=> b!459939 (= lt!208241 lt!208242)))

(declare-fun lt!208235 () ListLongMap!7113)

(declare-fun lt!208248 () tuple2!8186)

(assert (=> b!459939 (= lt!208242 (+!1591 lt!208235 lt!208248))))

(declare-fun minValue!515 () V!17613)

(declare-fun lt!208237 () array!28523)

(declare-fun zeroValue!515 () V!17613)

(declare-fun getCurrentListMapNoExtraKeys!1742 (array!28525 array!28523 (_ BitVec 32) (_ BitVec 32) V!17613 V!17613 (_ BitVec 32) Int) ListLongMap!7113)

(assert (=> b!459939 (= lt!208241 (getCurrentListMapNoExtraKeys!1742 lt!208234 lt!208237 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun v!412 () V!17613)

(assert (=> b!459939 (= lt!208248 (tuple2!8187 k0!794 v!412))))

(assert (=> b!459939 (= lt!208235 (getCurrentListMapNoExtraKeys!1742 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!208247 () Unit!13329)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!745 (array!28525 array!28523 (_ BitVec 32) (_ BitVec 32) V!17613 V!17613 (_ BitVec 32) (_ BitVec 64) V!17613 (_ BitVec 32) Int) Unit!13329)

(assert (=> b!459939 (= lt!208247 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!745 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!459940 () Bool)

(declare-fun Unit!13331 () Unit!13329)

(assert (=> b!459940 (= e!268367 Unit!13331)))

(declare-fun b!459941 () Bool)

(declare-fun res!275014 () Bool)

(assert (=> b!459941 (=> (not res!275014) (not e!268370))))

(assert (=> b!459941 (= res!275014 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!459942 () Bool)

(assert (=> b!459942 (= e!268371 tp_is_empty!12381)))

(declare-fun b!459943 () Bool)

(declare-fun res!275016 () Bool)

(assert (=> b!459943 (=> (not res!275016) (not e!268368))))

(assert (=> b!459943 (= res!275016 (bvsle from!863 i!563))))

(declare-fun b!459944 () Bool)

(declare-fun res!275020 () Bool)

(assert (=> b!459944 (=> (not res!275020) (not e!268370))))

(assert (=> b!459944 (= res!275020 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14052 _keys!709))))))

(declare-fun b!459945 () Bool)

(assert (=> b!459945 (= e!268368 e!268369)))

(declare-fun res!275021 () Bool)

(assert (=> b!459945 (=> (not res!275021) (not e!268369))))

(assert (=> b!459945 (= res!275021 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!459945 (= lt!208239 (getCurrentListMapNoExtraKeys!1742 lt!208234 lt!208237 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!459945 (= lt!208237 (array!28524 (store (arr!13699 _values!549) i!563 (ValueCellFull!5847 v!412)) (size!14051 _values!549)))))

(declare-fun lt!208246 () ListLongMap!7113)

(assert (=> b!459945 (= lt!208246 (getCurrentListMapNoExtraKeys!1742 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!459946 () Bool)

(declare-fun Unit!13332 () Unit!13329)

(assert (=> b!459946 (= e!268367 Unit!13332)))

(declare-fun lt!208236 () Unit!13329)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28525 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13329)

(assert (=> b!459946 (= lt!208236 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!459946 false))

(declare-fun b!459947 () Bool)

(assert (=> b!459947 (= e!268372 (bvslt i!563 (size!14051 _values!549)))))

(assert (=> b!459947 (= lt!208243 (+!1591 (+!1591 lt!208235 lt!208238) lt!208248))))

(declare-fun lt!208240 () Unit!13329)

(declare-fun addCommutativeForDiffKeys!418 (ListLongMap!7113 (_ BitVec 64) V!17613 (_ BitVec 64) V!17613) Unit!13329)

(assert (=> b!459947 (= lt!208240 (addCommutativeForDiffKeys!418 lt!208235 k0!794 v!412 (select (arr!13700 _keys!709) from!863) lt!208245))))

(declare-fun res!275024 () Bool)

(assert (=> start!41182 (=> (not res!275024) (not e!268370))))

(assert (=> start!41182 (= res!275024 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14052 _keys!709))))))

(assert (=> start!41182 e!268370))

(assert (=> start!41182 tp_is_empty!12381))

(assert (=> start!41182 tp!38964))

(assert (=> start!41182 true))

(declare-fun array_inv!9904 (array!28523) Bool)

(assert (=> start!41182 (and (array_inv!9904 _values!549) e!268364)))

(declare-fun array_inv!9905 (array!28525) Bool)

(assert (=> start!41182 (array_inv!9905 _keys!709)))

(declare-fun b!459934 () Bool)

(declare-fun res!275023 () Bool)

(assert (=> b!459934 (=> (not res!275023) (not e!268370))))

(assert (=> b!459934 (= res!275023 (validKeyInArray!0 k0!794))))

(assert (= (and start!41182 res!275024) b!459928))

(assert (= (and b!459928 res!275015) b!459933))

(assert (= (and b!459933 res!275013) b!459941))

(assert (= (and b!459941 res!275014) b!459932))

(assert (= (and b!459932 res!275025) b!459944))

(assert (= (and b!459944 res!275020) b!459934))

(assert (= (and b!459934 res!275023) b!459930))

(assert (= (and b!459930 res!275022) b!459936))

(assert (= (and b!459936 res!275017) b!459929))

(assert (= (and b!459929 res!275026) b!459937))

(assert (= (and b!459937 res!275019) b!459943))

(assert (= (and b!459943 res!275016) b!459945))

(assert (= (and b!459945 res!275021) b!459939))

(assert (= (and b!459939 (not res!275018)) b!459935))

(assert (= (and b!459935 c!56438) b!459946))

(assert (= (and b!459935 (not c!56438)) b!459940))

(assert (= (and b!459935 (not res!275012)) b!459947))

(assert (= (and b!459938 condMapEmpty!20221) mapIsEmpty!20221))

(assert (= (and b!459938 (not condMapEmpty!20221)) mapNonEmpty!20221))

(get-info :version)

(assert (= (and mapNonEmpty!20221 ((_ is ValueCellFull!5847) mapValue!20221)) b!459942))

(assert (= (and b!459938 ((_ is ValueCellFull!5847) mapDefault!20221)) b!459931))

(assert (= start!41182 b!459938))

(declare-fun b_lambda!9907 () Bool)

(assert (=> (not b_lambda!9907) (not b!459935)))

(declare-fun t!14218 () Bool)

(declare-fun tb!3887 () Bool)

(assert (=> (and start!41182 (= defaultEntry!557 defaultEntry!557) t!14218) tb!3887))

(declare-fun result!7311 () Bool)

(assert (=> tb!3887 (= result!7311 tp_is_empty!12381)))

(assert (=> b!459935 t!14218))

(declare-fun b_and!19345 () Bool)

(assert (= b_and!19343 (and (=> t!14218 result!7311) b_and!19345)))

(declare-fun m!443175 () Bool)

(assert (=> b!459929 m!443175))

(declare-fun m!443177 () Bool)

(assert (=> b!459929 m!443177))

(declare-fun m!443179 () Bool)

(assert (=> b!459946 m!443179))

(declare-fun m!443181 () Bool)

(assert (=> b!459937 m!443181))

(declare-fun m!443183 () Bool)

(assert (=> b!459930 m!443183))

(declare-fun m!443185 () Bool)

(assert (=> b!459939 m!443185))

(declare-fun m!443187 () Bool)

(assert (=> b!459939 m!443187))

(assert (=> b!459939 m!443185))

(declare-fun m!443189 () Bool)

(assert (=> b!459939 m!443189))

(declare-fun m!443191 () Bool)

(assert (=> b!459939 m!443191))

(declare-fun m!443193 () Bool)

(assert (=> b!459939 m!443193))

(declare-fun m!443195 () Bool)

(assert (=> b!459939 m!443195))

(declare-fun m!443197 () Bool)

(assert (=> b!459945 m!443197))

(declare-fun m!443199 () Bool)

(assert (=> b!459945 m!443199))

(declare-fun m!443201 () Bool)

(assert (=> b!459945 m!443201))

(declare-fun m!443203 () Bool)

(assert (=> b!459932 m!443203))

(declare-fun m!443205 () Bool)

(assert (=> start!41182 m!443205))

(declare-fun m!443207 () Bool)

(assert (=> start!41182 m!443207))

(declare-fun m!443209 () Bool)

(assert (=> b!459928 m!443209))

(declare-fun m!443211 () Bool)

(assert (=> mapNonEmpty!20221 m!443211))

(declare-fun m!443213 () Bool)

(assert (=> b!459936 m!443213))

(assert (=> b!459935 m!443185))

(declare-fun m!443215 () Bool)

(assert (=> b!459935 m!443215))

(declare-fun m!443217 () Bool)

(assert (=> b!459935 m!443217))

(declare-fun m!443219 () Bool)

(assert (=> b!459935 m!443219))

(assert (=> b!459935 m!443217))

(assert (=> b!459935 m!443215))

(declare-fun m!443221 () Bool)

(assert (=> b!459935 m!443221))

(declare-fun m!443223 () Bool)

(assert (=> b!459947 m!443223))

(assert (=> b!459947 m!443223))

(declare-fun m!443225 () Bool)

(assert (=> b!459947 m!443225))

(assert (=> b!459947 m!443185))

(assert (=> b!459947 m!443185))

(declare-fun m!443227 () Bool)

(assert (=> b!459947 m!443227))

(declare-fun m!443229 () Bool)

(assert (=> b!459934 m!443229))

(declare-fun m!443231 () Bool)

(assert (=> b!459941 m!443231))

(check-sat (not b!459945) (not b!459929) (not b!459946) (not b!459932) tp_is_empty!12381 (not start!41182) (not b_next!11043) (not b!459928) (not b!459936) (not b!459941) (not b_lambda!9907) (not b!459939) (not b!459934) b_and!19345 (not b!459937) (not mapNonEmpty!20221) (not b!459947) (not b!459935))
(check-sat b_and!19345 (not b_next!11043))
