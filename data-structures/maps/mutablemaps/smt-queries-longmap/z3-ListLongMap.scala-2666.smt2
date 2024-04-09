; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39824 () Bool)

(assert start!39824)

(declare-fun b_free!10083 () Bool)

(declare-fun b_next!10083 () Bool)

(assert (=> start!39824 (= b_free!10083 (not b_next!10083))))

(declare-fun tp!35778 () Bool)

(declare-fun b_and!17843 () Bool)

(assert (=> start!39824 (= tp!35778 b_and!17843)))

(declare-fun b!429592 () Bool)

(declare-fun res!252406 () Bool)

(declare-fun e!254415 () Bool)

(assert (=> b!429592 (=> (not res!252406) (not e!254415))))

(declare-datatypes ((array!26287 0))(
  ( (array!26288 (arr!12590 (Array (_ BitVec 32) (_ BitVec 64))) (size!12942 (_ BitVec 32))) )
))
(declare-fun lt!196407 () array!26287)

(declare-datatypes ((List!7443 0))(
  ( (Nil!7440) (Cons!7439 (h!8295 (_ BitVec 64)) (t!12983 List!7443)) )
))
(declare-fun arrayNoDuplicates!0 (array!26287 (_ BitVec 32) List!7443) Bool)

(assert (=> b!429592 (= res!252406 (arrayNoDuplicates!0 lt!196407 #b00000000000000000000000000000000 Nil!7440))))

(declare-fun b!429593 () Bool)

(declare-fun e!254412 () Bool)

(declare-fun e!254414 () Bool)

(declare-fun mapRes!18474 () Bool)

(assert (=> b!429593 (= e!254412 (and e!254414 mapRes!18474))))

(declare-fun condMapEmpty!18474 () Bool)

(declare-datatypes ((V!16085 0))(
  ( (V!16086 (val!5662 Int)) )
))
(declare-datatypes ((ValueCell!5274 0))(
  ( (ValueCellFull!5274 (v!7905 V!16085)) (EmptyCell!5274) )
))
(declare-datatypes ((array!26289 0))(
  ( (array!26290 (arr!12591 (Array (_ BitVec 32) ValueCell!5274)) (size!12943 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26289)

(declare-fun mapDefault!18474 () ValueCell!5274)

(assert (=> b!429593 (= condMapEmpty!18474 (= (arr!12591 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5274)) mapDefault!18474)))))

(declare-fun b!429594 () Bool)

(declare-fun res!252408 () Bool)

(declare-fun e!254413 () Bool)

(assert (=> b!429594 (=> (not res!252408) (not e!254413))))

(declare-fun _keys!709 () array!26287)

(assert (=> b!429594 (= res!252408 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7440))))

(declare-fun b!429595 () Bool)

(declare-fun tp_is_empty!11235 () Bool)

(assert (=> b!429595 (= e!254414 tp_is_empty!11235)))

(declare-fun b!429596 () Bool)

(declare-fun e!254411 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!429596 (= e!254411 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!12942 _keys!709))))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!429596 (not (= (select (arr!12590 _keys!709) from!863) k0!794))))

(declare-datatypes ((Unit!12593 0))(
  ( (Unit!12594) )
))
(declare-fun lt!196405 () Unit!12593)

(declare-fun e!254409 () Unit!12593)

(assert (=> b!429596 (= lt!196405 e!254409)))

(declare-fun c!55385 () Bool)

(assert (=> b!429596 (= c!55385 (= (select (arr!12590 _keys!709) from!863) k0!794))))

(declare-datatypes ((tuple2!7392 0))(
  ( (tuple2!7393 (_1!3706 (_ BitVec 64)) (_2!3706 V!16085)) )
))
(declare-datatypes ((List!7444 0))(
  ( (Nil!7441) (Cons!7440 (h!8296 tuple2!7392) (t!12984 List!7444)) )
))
(declare-datatypes ((ListLongMap!6319 0))(
  ( (ListLongMap!6320 (toList!3175 List!7444)) )
))
(declare-fun lt!196401 () ListLongMap!6319)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!196398 () ListLongMap!6319)

(declare-fun +!1324 (ListLongMap!6319 tuple2!7392) ListLongMap!6319)

(declare-fun get!6251 (ValueCell!5274 V!16085) V!16085)

(declare-fun dynLambda!770 (Int (_ BitVec 64)) V!16085)

(assert (=> b!429596 (= lt!196401 (+!1324 lt!196398 (tuple2!7393 (select (arr!12590 _keys!709) from!863) (get!6251 (select (arr!12591 _values!549) from!863) (dynLambda!770 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!429597 () Bool)

(declare-fun res!252417 () Bool)

(assert (=> b!429597 (=> (not res!252417) (not e!254413))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!429597 (= res!252417 (or (= (select (arr!12590 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12590 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!429598 () Bool)

(declare-fun res!252412 () Bool)

(assert (=> b!429598 (=> (not res!252412) (not e!254415))))

(assert (=> b!429598 (= res!252412 (bvsle from!863 i!563))))

(declare-fun b!429599 () Bool)

(declare-fun res!252405 () Bool)

(assert (=> b!429599 (=> (not res!252405) (not e!254413))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!429599 (= res!252405 (validKeyInArray!0 k0!794))))

(declare-fun mapIsEmpty!18474 () Bool)

(assert (=> mapIsEmpty!18474 mapRes!18474))

(declare-fun b!429600 () Bool)

(declare-fun res!252413 () Bool)

(assert (=> b!429600 (=> (not res!252413) (not e!254413))))

(declare-fun arrayContainsKey!0 (array!26287 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!429600 (= res!252413 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!429601 () Bool)

(declare-fun res!252411 () Bool)

(assert (=> b!429601 (=> (not res!252411) (not e!254413))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!429601 (= res!252411 (and (= (size!12943 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12942 _keys!709) (size!12943 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!429603 () Bool)

(assert (=> b!429603 (= e!254413 e!254415)))

(declare-fun res!252404 () Bool)

(assert (=> b!429603 (=> (not res!252404) (not e!254415))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26287 (_ BitVec 32)) Bool)

(assert (=> b!429603 (= res!252404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!196407 mask!1025))))

(assert (=> b!429603 (= lt!196407 (array!26288 (store (arr!12590 _keys!709) i!563 k0!794) (size!12942 _keys!709)))))

(declare-fun b!429604 () Bool)

(declare-fun res!252410 () Bool)

(assert (=> b!429604 (=> (not res!252410) (not e!254413))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!429604 (= res!252410 (validMask!0 mask!1025))))

(declare-fun b!429605 () Bool)

(declare-fun Unit!12595 () Unit!12593)

(assert (=> b!429605 (= e!254409 Unit!12595)))

(declare-fun lt!196399 () Unit!12593)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26287 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12593)

(assert (=> b!429605 (= lt!196399 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!429605 false))

(declare-fun mapNonEmpty!18474 () Bool)

(declare-fun tp!35777 () Bool)

(declare-fun e!254408 () Bool)

(assert (=> mapNonEmpty!18474 (= mapRes!18474 (and tp!35777 e!254408))))

(declare-fun mapRest!18474 () (Array (_ BitVec 32) ValueCell!5274))

(declare-fun mapKey!18474 () (_ BitVec 32))

(declare-fun mapValue!18474 () ValueCell!5274)

(assert (=> mapNonEmpty!18474 (= (arr!12591 _values!549) (store mapRest!18474 mapKey!18474 mapValue!18474))))

(declare-fun b!429606 () Bool)

(declare-fun Unit!12596 () Unit!12593)

(assert (=> b!429606 (= e!254409 Unit!12596)))

(declare-fun b!429607 () Bool)

(declare-fun res!252414 () Bool)

(assert (=> b!429607 (=> (not res!252414) (not e!254413))))

(assert (=> b!429607 (= res!252414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!429608 () Bool)

(assert (=> b!429608 (= e!254408 tp_is_empty!11235)))

(declare-fun b!429609 () Bool)

(declare-fun res!252407 () Bool)

(assert (=> b!429609 (=> (not res!252407) (not e!254413))))

(assert (=> b!429609 (= res!252407 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12942 _keys!709))))))

(declare-fun b!429610 () Bool)

(declare-fun e!254410 () Bool)

(assert (=> b!429610 (= e!254410 (not e!254411))))

(declare-fun res!252409 () Bool)

(assert (=> b!429610 (=> res!252409 e!254411)))

(assert (=> b!429610 (= res!252409 (not (validKeyInArray!0 (select (arr!12590 _keys!709) from!863))))))

(declare-fun lt!196400 () ListLongMap!6319)

(assert (=> b!429610 (= lt!196400 lt!196398)))

(declare-fun lt!196406 () ListLongMap!6319)

(declare-fun v!412 () V!16085)

(assert (=> b!429610 (= lt!196398 (+!1324 lt!196406 (tuple2!7393 k0!794 v!412)))))

(declare-fun minValue!515 () V!16085)

(declare-fun lt!196404 () array!26289)

(declare-fun zeroValue!515 () V!16085)

(declare-fun getCurrentListMapNoExtraKeys!1372 (array!26287 array!26289 (_ BitVec 32) (_ BitVec 32) V!16085 V!16085 (_ BitVec 32) Int) ListLongMap!6319)

(assert (=> b!429610 (= lt!196400 (getCurrentListMapNoExtraKeys!1372 lt!196407 lt!196404 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!429610 (= lt!196406 (getCurrentListMapNoExtraKeys!1372 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!196402 () Unit!12593)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!521 (array!26287 array!26289 (_ BitVec 32) (_ BitVec 32) V!16085 V!16085 (_ BitVec 32) (_ BitVec 64) V!16085 (_ BitVec 32) Int) Unit!12593)

(assert (=> b!429610 (= lt!196402 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!521 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!252415 () Bool)

(assert (=> start!39824 (=> (not res!252415) (not e!254413))))

(assert (=> start!39824 (= res!252415 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12942 _keys!709))))))

(assert (=> start!39824 e!254413))

(assert (=> start!39824 tp_is_empty!11235))

(assert (=> start!39824 tp!35778))

(assert (=> start!39824 true))

(declare-fun array_inv!9156 (array!26289) Bool)

(assert (=> start!39824 (and (array_inv!9156 _values!549) e!254412)))

(declare-fun array_inv!9157 (array!26287) Bool)

(assert (=> start!39824 (array_inv!9157 _keys!709)))

(declare-fun b!429602 () Bool)

(assert (=> b!429602 (= e!254415 e!254410)))

(declare-fun res!252416 () Bool)

(assert (=> b!429602 (=> (not res!252416) (not e!254410))))

(assert (=> b!429602 (= res!252416 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!429602 (= lt!196401 (getCurrentListMapNoExtraKeys!1372 lt!196407 lt!196404 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!429602 (= lt!196404 (array!26290 (store (arr!12591 _values!549) i!563 (ValueCellFull!5274 v!412)) (size!12943 _values!549)))))

(declare-fun lt!196403 () ListLongMap!6319)

(assert (=> b!429602 (= lt!196403 (getCurrentListMapNoExtraKeys!1372 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (= (and start!39824 res!252415) b!429604))

(assert (= (and b!429604 res!252410) b!429601))

(assert (= (and b!429601 res!252411) b!429607))

(assert (= (and b!429607 res!252414) b!429594))

(assert (= (and b!429594 res!252408) b!429609))

(assert (= (and b!429609 res!252407) b!429599))

(assert (= (and b!429599 res!252405) b!429597))

(assert (= (and b!429597 res!252417) b!429600))

(assert (= (and b!429600 res!252413) b!429603))

(assert (= (and b!429603 res!252404) b!429592))

(assert (= (and b!429592 res!252406) b!429598))

(assert (= (and b!429598 res!252412) b!429602))

(assert (= (and b!429602 res!252416) b!429610))

(assert (= (and b!429610 (not res!252409)) b!429596))

(assert (= (and b!429596 c!55385) b!429605))

(assert (= (and b!429596 (not c!55385)) b!429606))

(assert (= (and b!429593 condMapEmpty!18474) mapIsEmpty!18474))

(assert (= (and b!429593 (not condMapEmpty!18474)) mapNonEmpty!18474))

(get-info :version)

(assert (= (and mapNonEmpty!18474 ((_ is ValueCellFull!5274) mapValue!18474)) b!429608))

(assert (= (and b!429593 ((_ is ValueCellFull!5274) mapDefault!18474)) b!429595))

(assert (= start!39824 b!429593))

(declare-fun b_lambda!9201 () Bool)

(assert (=> (not b_lambda!9201) (not b!429596)))

(declare-fun t!12982 () Bool)

(declare-fun tb!3497 () Bool)

(assert (=> (and start!39824 (= defaultEntry!557 defaultEntry!557) t!12982) tb!3497))

(declare-fun result!6513 () Bool)

(assert (=> tb!3497 (= result!6513 tp_is_empty!11235)))

(assert (=> b!429596 t!12982))

(declare-fun b_and!17845 () Bool)

(assert (= b_and!17843 (and (=> t!12982 result!6513) b_and!17845)))

(declare-fun m!417899 () Bool)

(assert (=> b!429592 m!417899))

(declare-fun m!417901 () Bool)

(assert (=> b!429607 m!417901))

(declare-fun m!417903 () Bool)

(assert (=> b!429604 m!417903))

(declare-fun m!417905 () Bool)

(assert (=> mapNonEmpty!18474 m!417905))

(declare-fun m!417907 () Bool)

(assert (=> b!429597 m!417907))

(declare-fun m!417909 () Bool)

(assert (=> b!429605 m!417909))

(declare-fun m!417911 () Bool)

(assert (=> b!429603 m!417911))

(declare-fun m!417913 () Bool)

(assert (=> b!429603 m!417913))

(declare-fun m!417915 () Bool)

(assert (=> b!429602 m!417915))

(declare-fun m!417917 () Bool)

(assert (=> b!429602 m!417917))

(declare-fun m!417919 () Bool)

(assert (=> b!429602 m!417919))

(declare-fun m!417921 () Bool)

(assert (=> b!429610 m!417921))

(declare-fun m!417923 () Bool)

(assert (=> b!429610 m!417923))

(declare-fun m!417925 () Bool)

(assert (=> b!429610 m!417925))

(declare-fun m!417927 () Bool)

(assert (=> b!429610 m!417927))

(assert (=> b!429610 m!417921))

(declare-fun m!417929 () Bool)

(assert (=> b!429610 m!417929))

(declare-fun m!417931 () Bool)

(assert (=> b!429610 m!417931))

(declare-fun m!417933 () Bool)

(assert (=> b!429600 m!417933))

(assert (=> b!429596 m!417921))

(declare-fun m!417935 () Bool)

(assert (=> b!429596 m!417935))

(declare-fun m!417937 () Bool)

(assert (=> b!429596 m!417937))

(declare-fun m!417939 () Bool)

(assert (=> b!429596 m!417939))

(assert (=> b!429596 m!417937))

(assert (=> b!429596 m!417935))

(declare-fun m!417941 () Bool)

(assert (=> b!429596 m!417941))

(declare-fun m!417943 () Bool)

(assert (=> b!429594 m!417943))

(declare-fun m!417945 () Bool)

(assert (=> b!429599 m!417945))

(declare-fun m!417947 () Bool)

(assert (=> start!39824 m!417947))

(declare-fun m!417949 () Bool)

(assert (=> start!39824 m!417949))

(check-sat (not b!429594) b_and!17845 (not b!429596) (not b!429607) (not b!429604) (not b!429603) (not b!429610) tp_is_empty!11235 (not b!429599) (not b!429592) (not b_next!10083) (not b!429600) (not b_lambda!9201) (not mapNonEmpty!18474) (not start!39824) (not b!429602) (not b!429605))
(check-sat b_and!17845 (not b_next!10083))
