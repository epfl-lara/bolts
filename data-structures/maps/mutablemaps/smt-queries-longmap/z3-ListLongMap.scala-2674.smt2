; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39872 () Bool)

(assert start!39872)

(declare-fun b_free!10131 () Bool)

(declare-fun b_next!10131 () Bool)

(assert (=> start!39872 (= b_free!10131 (not b_next!10131))))

(declare-fun tp!35921 () Bool)

(declare-fun b_and!17939 () Bool)

(assert (=> start!39872 (= tp!35921 b_and!17939)))

(declare-fun b!431067 () Bool)

(declare-fun e!255124 () Bool)

(declare-fun e!255116 () Bool)

(assert (=> b!431067 (= e!255124 (not e!255116))))

(declare-fun res!253477 () Bool)

(assert (=> b!431067 (=> res!253477 e!255116)))

(declare-datatypes ((array!26379 0))(
  ( (array!26380 (arr!12636 (Array (_ BitVec 32) (_ BitVec 64))) (size!12988 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26379)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!431067 (= res!253477 (not (validKeyInArray!0 (select (arr!12636 _keys!709) from!863))))))

(declare-datatypes ((V!16149 0))(
  ( (V!16150 (val!5686 Int)) )
))
(declare-datatypes ((tuple2!7430 0))(
  ( (tuple2!7431 (_1!3725 (_ BitVec 64)) (_2!3725 V!16149)) )
))
(declare-datatypes ((List!7483 0))(
  ( (Nil!7480) (Cons!7479 (h!8335 tuple2!7430) (t!13071 List!7483)) )
))
(declare-datatypes ((ListLongMap!6357 0))(
  ( (ListLongMap!6358 (toList!3194 List!7483)) )
))
(declare-fun lt!197414 () ListLongMap!6357)

(declare-fun lt!197413 () ListLongMap!6357)

(assert (=> b!431067 (= lt!197414 lt!197413)))

(declare-fun lt!197426 () ListLongMap!6357)

(declare-fun lt!197415 () tuple2!7430)

(declare-fun +!1342 (ListLongMap!6357 tuple2!7430) ListLongMap!6357)

(assert (=> b!431067 (= lt!197413 (+!1342 lt!197426 lt!197415))))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16149)

(declare-fun lt!197421 () array!26379)

(declare-datatypes ((ValueCell!5298 0))(
  ( (ValueCellFull!5298 (v!7929 V!16149)) (EmptyCell!5298) )
))
(declare-datatypes ((array!26381 0))(
  ( (array!26382 (arr!12637 (Array (_ BitVec 32) ValueCell!5298)) (size!12989 (_ BitVec 32))) )
))
(declare-fun lt!197425 () array!26381)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun minValue!515 () V!16149)

(declare-fun getCurrentListMapNoExtraKeys!1389 (array!26379 array!26381 (_ BitVec 32) (_ BitVec 32) V!16149 V!16149 (_ BitVec 32) Int) ListLongMap!6357)

(assert (=> b!431067 (= lt!197414 (getCurrentListMapNoExtraKeys!1389 lt!197421 lt!197425 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!16149)

(assert (=> b!431067 (= lt!197415 (tuple2!7431 k0!794 v!412))))

(declare-fun _values!549 () array!26381)

(assert (=> b!431067 (= lt!197426 (getCurrentListMapNoExtraKeys!1389 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12670 0))(
  ( (Unit!12671) )
))
(declare-fun lt!197419 () Unit!12670)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!536 (array!26379 array!26381 (_ BitVec 32) (_ BitVec 32) V!16149 V!16149 (_ BitVec 32) (_ BitVec 64) V!16149 (_ BitVec 32) Int) Unit!12670)

(assert (=> b!431067 (= lt!197419 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!536 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!18546 () Bool)

(declare-fun mapRes!18546 () Bool)

(declare-fun tp!35922 () Bool)

(declare-fun e!255122 () Bool)

(assert (=> mapNonEmpty!18546 (= mapRes!18546 (and tp!35922 e!255122))))

(declare-fun mapRest!18546 () (Array (_ BitVec 32) ValueCell!5298))

(declare-fun mapValue!18546 () ValueCell!5298)

(declare-fun mapKey!18546 () (_ BitVec 32))

(assert (=> mapNonEmpty!18546 (= (arr!12637 _values!549) (store mapRest!18546 mapKey!18546 mapValue!18546))))

(declare-fun b!431068 () Bool)

(declare-fun e!255117 () Bool)

(assert (=> b!431068 (= e!255117 true)))

(declare-fun lt!197416 () ListLongMap!6357)

(declare-fun lt!197427 () tuple2!7430)

(assert (=> b!431068 (= lt!197416 (+!1342 (+!1342 lt!197426 lt!197427) lt!197415))))

(declare-fun lt!197424 () V!16149)

(declare-fun lt!197418 () Unit!12670)

(declare-fun addCommutativeForDiffKeys!358 (ListLongMap!6357 (_ BitVec 64) V!16149 (_ BitVec 64) V!16149) Unit!12670)

(assert (=> b!431068 (= lt!197418 (addCommutativeForDiffKeys!358 lt!197426 k0!794 v!412 (select (arr!12636 _keys!709) from!863) lt!197424))))

(declare-fun b!431069 () Bool)

(declare-fun res!253482 () Bool)

(declare-fun e!255121 () Bool)

(assert (=> b!431069 (=> (not res!253482) (not e!255121))))

(declare-fun arrayContainsKey!0 (array!26379 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!431069 (= res!253482 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!431070 () Bool)

(declare-fun e!255115 () Bool)

(declare-fun tp_is_empty!11283 () Bool)

(assert (=> b!431070 (= e!255115 tp_is_empty!11283)))

(declare-fun b!431071 () Bool)

(declare-fun res!253471 () Bool)

(declare-fun e!255120 () Bool)

(assert (=> b!431071 (=> (not res!253471) (not e!255120))))

(assert (=> b!431071 (= res!253471 (bvsle from!863 i!563))))

(declare-fun b!431072 () Bool)

(declare-fun res!253484 () Bool)

(assert (=> b!431072 (=> (not res!253484) (not e!255121))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!431072 (= res!253484 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!18546 () Bool)

(assert (=> mapIsEmpty!18546 mapRes!18546))

(declare-fun b!431073 () Bool)

(declare-fun res!253476 () Bool)

(assert (=> b!431073 (=> (not res!253476) (not e!255121))))

(declare-datatypes ((List!7484 0))(
  ( (Nil!7481) (Cons!7480 (h!8336 (_ BitVec 64)) (t!13072 List!7484)) )
))
(declare-fun arrayNoDuplicates!0 (array!26379 (_ BitVec 32) List!7484) Bool)

(assert (=> b!431073 (= res!253476 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7481))))

(declare-fun b!431074 () Bool)

(declare-fun res!253472 () Bool)

(assert (=> b!431074 (=> (not res!253472) (not e!255121))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26379 (_ BitVec 32)) Bool)

(assert (=> b!431074 (= res!253472 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!431075 () Bool)

(declare-fun res!253485 () Bool)

(assert (=> b!431075 (=> (not res!253485) (not e!255121))))

(assert (=> b!431075 (= res!253485 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12988 _keys!709))))))

(declare-fun b!431076 () Bool)

(declare-fun e!255123 () Bool)

(assert (=> b!431076 (= e!255123 (and e!255115 mapRes!18546))))

(declare-fun condMapEmpty!18546 () Bool)

(declare-fun mapDefault!18546 () ValueCell!5298)

(assert (=> b!431076 (= condMapEmpty!18546 (= (arr!12637 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5298)) mapDefault!18546)))))

(declare-fun b!431077 () Bool)

(declare-fun res!253474 () Bool)

(assert (=> b!431077 (=> (not res!253474) (not e!255121))))

(assert (=> b!431077 (= res!253474 (validKeyInArray!0 k0!794))))

(declare-fun b!431078 () Bool)

(assert (=> b!431078 (= e!255120 e!255124)))

(declare-fun res!253479 () Bool)

(assert (=> b!431078 (=> (not res!253479) (not e!255124))))

(assert (=> b!431078 (= res!253479 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!197420 () ListLongMap!6357)

(assert (=> b!431078 (= lt!197420 (getCurrentListMapNoExtraKeys!1389 lt!197421 lt!197425 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!431078 (= lt!197425 (array!26382 (store (arr!12637 _values!549) i!563 (ValueCellFull!5298 v!412)) (size!12989 _values!549)))))

(declare-fun lt!197417 () ListLongMap!6357)

(assert (=> b!431078 (= lt!197417 (getCurrentListMapNoExtraKeys!1389 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!431079 () Bool)

(declare-fun e!255118 () Unit!12670)

(declare-fun Unit!12672 () Unit!12670)

(assert (=> b!431079 (= e!255118 Unit!12672)))

(declare-fun lt!197422 () Unit!12670)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26379 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12670)

(assert (=> b!431079 (= lt!197422 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!431079 false))

(declare-fun b!431080 () Bool)

(declare-fun Unit!12673 () Unit!12670)

(assert (=> b!431080 (= e!255118 Unit!12673)))

(declare-fun b!431081 () Bool)

(declare-fun res!253481 () Bool)

(assert (=> b!431081 (=> (not res!253481) (not e!255121))))

(assert (=> b!431081 (= res!253481 (or (= (select (arr!12636 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12636 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!253478 () Bool)

(assert (=> start!39872 (=> (not res!253478) (not e!255121))))

(assert (=> start!39872 (= res!253478 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12988 _keys!709))))))

(assert (=> start!39872 e!255121))

(assert (=> start!39872 tp_is_empty!11283))

(assert (=> start!39872 tp!35921))

(assert (=> start!39872 true))

(declare-fun array_inv!9188 (array!26381) Bool)

(assert (=> start!39872 (and (array_inv!9188 _values!549) e!255123)))

(declare-fun array_inv!9189 (array!26379) Bool)

(assert (=> start!39872 (array_inv!9189 _keys!709)))

(declare-fun b!431082 () Bool)

(assert (=> b!431082 (= e!255122 tp_is_empty!11283)))

(declare-fun b!431083 () Bool)

(declare-fun res!253473 () Bool)

(assert (=> b!431083 (=> (not res!253473) (not e!255121))))

(assert (=> b!431083 (= res!253473 (and (= (size!12989 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12988 _keys!709) (size!12989 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!431084 () Bool)

(assert (=> b!431084 (= e!255121 e!255120)))

(declare-fun res!253480 () Bool)

(assert (=> b!431084 (=> (not res!253480) (not e!255120))))

(assert (=> b!431084 (= res!253480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!197421 mask!1025))))

(assert (=> b!431084 (= lt!197421 (array!26380 (store (arr!12636 _keys!709) i!563 k0!794) (size!12988 _keys!709)))))

(declare-fun b!431085 () Bool)

(assert (=> b!431085 (= e!255116 e!255117)))

(declare-fun res!253483 () Bool)

(assert (=> b!431085 (=> res!253483 e!255117)))

(assert (=> b!431085 (= res!253483 (= k0!794 (select (arr!12636 _keys!709) from!863)))))

(assert (=> b!431085 (not (= (select (arr!12636 _keys!709) from!863) k0!794))))

(declare-fun lt!197423 () Unit!12670)

(assert (=> b!431085 (= lt!197423 e!255118)))

(declare-fun c!55457 () Bool)

(assert (=> b!431085 (= c!55457 (= (select (arr!12636 _keys!709) from!863) k0!794))))

(assert (=> b!431085 (= lt!197420 lt!197416)))

(assert (=> b!431085 (= lt!197416 (+!1342 lt!197413 lt!197427))))

(assert (=> b!431085 (= lt!197427 (tuple2!7431 (select (arr!12636 _keys!709) from!863) lt!197424))))

(declare-fun get!6281 (ValueCell!5298 V!16149) V!16149)

(declare-fun dynLambda!784 (Int (_ BitVec 64)) V!16149)

(assert (=> b!431085 (= lt!197424 (get!6281 (select (arr!12637 _values!549) from!863) (dynLambda!784 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!431086 () Bool)

(declare-fun res!253475 () Bool)

(assert (=> b!431086 (=> (not res!253475) (not e!255120))))

(assert (=> b!431086 (= res!253475 (arrayNoDuplicates!0 lt!197421 #b00000000000000000000000000000000 Nil!7481))))

(assert (= (and start!39872 res!253478) b!431072))

(assert (= (and b!431072 res!253484) b!431083))

(assert (= (and b!431083 res!253473) b!431074))

(assert (= (and b!431074 res!253472) b!431073))

(assert (= (and b!431073 res!253476) b!431075))

(assert (= (and b!431075 res!253485) b!431077))

(assert (= (and b!431077 res!253474) b!431081))

(assert (= (and b!431081 res!253481) b!431069))

(assert (= (and b!431069 res!253482) b!431084))

(assert (= (and b!431084 res!253480) b!431086))

(assert (= (and b!431086 res!253475) b!431071))

(assert (= (and b!431071 res!253471) b!431078))

(assert (= (and b!431078 res!253479) b!431067))

(assert (= (and b!431067 (not res!253477)) b!431085))

(assert (= (and b!431085 c!55457) b!431079))

(assert (= (and b!431085 (not c!55457)) b!431080))

(assert (= (and b!431085 (not res!253483)) b!431068))

(assert (= (and b!431076 condMapEmpty!18546) mapIsEmpty!18546))

(assert (= (and b!431076 (not condMapEmpty!18546)) mapNonEmpty!18546))

(get-info :version)

(assert (= (and mapNonEmpty!18546 ((_ is ValueCellFull!5298) mapValue!18546)) b!431082))

(assert (= (and b!431076 ((_ is ValueCellFull!5298) mapDefault!18546)) b!431070))

(assert (= start!39872 b!431076))

(declare-fun b_lambda!9249 () Bool)

(assert (=> (not b_lambda!9249) (not b!431085)))

(declare-fun t!13070 () Bool)

(declare-fun tb!3545 () Bool)

(assert (=> (and start!39872 (= defaultEntry!557 defaultEntry!557) t!13070) tb!3545))

(declare-fun result!6609 () Bool)

(assert (=> tb!3545 (= result!6609 tp_is_empty!11283)))

(assert (=> b!431085 t!13070))

(declare-fun b_and!17941 () Bool)

(assert (= b_and!17939 (and (=> t!13070 result!6609) b_and!17941)))

(declare-fun m!419261 () Bool)

(assert (=> mapNonEmpty!18546 m!419261))

(declare-fun m!419263 () Bool)

(assert (=> b!431086 m!419263))

(declare-fun m!419265 () Bool)

(assert (=> b!431084 m!419265))

(declare-fun m!419267 () Bool)

(assert (=> b!431084 m!419267))

(declare-fun m!419269 () Bool)

(assert (=> b!431072 m!419269))

(declare-fun m!419271 () Bool)

(assert (=> start!39872 m!419271))

(declare-fun m!419273 () Bool)

(assert (=> start!39872 m!419273))

(declare-fun m!419275 () Bool)

(assert (=> b!431077 m!419275))

(declare-fun m!419277 () Bool)

(assert (=> b!431081 m!419277))

(declare-fun m!419279 () Bool)

(assert (=> b!431069 m!419279))

(declare-fun m!419281 () Bool)

(assert (=> b!431085 m!419281))

(declare-fun m!419283 () Bool)

(assert (=> b!431085 m!419283))

(declare-fun m!419285 () Bool)

(assert (=> b!431085 m!419285))

(declare-fun m!419287 () Bool)

(assert (=> b!431085 m!419287))

(assert (=> b!431085 m!419287))

(assert (=> b!431085 m!419285))

(declare-fun m!419289 () Bool)

(assert (=> b!431085 m!419289))

(declare-fun m!419291 () Bool)

(assert (=> b!431079 m!419291))

(declare-fun m!419293 () Bool)

(assert (=> b!431078 m!419293))

(declare-fun m!419295 () Bool)

(assert (=> b!431078 m!419295))

(declare-fun m!419297 () Bool)

(assert (=> b!431078 m!419297))

(declare-fun m!419299 () Bool)

(assert (=> b!431073 m!419299))

(assert (=> b!431067 m!419281))

(declare-fun m!419301 () Bool)

(assert (=> b!431067 m!419301))

(assert (=> b!431067 m!419281))

(declare-fun m!419303 () Bool)

(assert (=> b!431067 m!419303))

(declare-fun m!419305 () Bool)

(assert (=> b!431067 m!419305))

(declare-fun m!419307 () Bool)

(assert (=> b!431067 m!419307))

(declare-fun m!419309 () Bool)

(assert (=> b!431067 m!419309))

(declare-fun m!419311 () Bool)

(assert (=> b!431068 m!419311))

(assert (=> b!431068 m!419311))

(declare-fun m!419313 () Bool)

(assert (=> b!431068 m!419313))

(assert (=> b!431068 m!419281))

(assert (=> b!431068 m!419281))

(declare-fun m!419315 () Bool)

(assert (=> b!431068 m!419315))

(declare-fun m!419317 () Bool)

(assert (=> b!431074 m!419317))

(check-sat (not b!431086) (not b!431073) (not b!431077) (not b!431074) (not b_lambda!9249) (not b!431067) (not mapNonEmpty!18546) b_and!17941 (not b!431085) (not b!431068) tp_is_empty!11283 (not b!431069) (not b_next!10131) (not b!431079) (not start!39872) (not b!431078) (not b!431084) (not b!431072))
(check-sat b_and!17941 (not b_next!10131))
