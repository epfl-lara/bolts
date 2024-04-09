; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84262 () Bool)

(assert start!84262)

(declare-fun b_free!19935 () Bool)

(declare-fun b_next!19935 () Bool)

(assert (=> start!84262 (= b_free!19935 (not b_next!19935))))

(declare-fun tp!69409 () Bool)

(declare-fun b_and!31965 () Bool)

(assert (=> start!84262 (= tp!69409 b_and!31965)))

(declare-fun b!985252 () Bool)

(declare-fun res!659406 () Bool)

(declare-fun e!555407 () Bool)

(assert (=> b!985252 (=> (not res!659406) (not e!555407))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!62039 0))(
  ( (array!62040 (arr!29873 (Array (_ BitVec 32) (_ BitVec 64))) (size!30353 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62039)

(assert (=> b!985252 (= res!659406 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30353 _keys!1544))))))

(declare-fun b!985253 () Bool)

(declare-fun res!659405 () Bool)

(assert (=> b!985253 (=> (not res!659405) (not e!555407))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!985253 (= res!659405 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!985254 () Bool)

(declare-fun res!659412 () Bool)

(assert (=> b!985254 (=> (not res!659412) (not e!555407))))

(declare-datatypes ((List!20821 0))(
  ( (Nil!20818) (Cons!20817 (h!21979 (_ BitVec 64)) (t!29708 List!20821)) )
))
(declare-fun arrayNoDuplicates!0 (array!62039 (_ BitVec 32) List!20821) Bool)

(assert (=> b!985254 (= res!659412 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20818))))

(declare-fun b!985255 () Bool)

(declare-fun res!659410 () Bool)

(assert (=> b!985255 (=> (not res!659410) (not e!555407))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62039 (_ BitVec 32)) Bool)

(assert (=> b!985255 (= res!659410 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!985256 () Bool)

(declare-fun e!555405 () Bool)

(declare-fun tp_is_empty!23037 () Bool)

(assert (=> b!985256 (= e!555405 tp_is_empty!23037)))

(declare-fun b!985257 () Bool)

(declare-fun e!555409 () Bool)

(declare-fun e!555406 () Bool)

(declare-fun mapRes!36584 () Bool)

(assert (=> b!985257 (= e!555409 (and e!555406 mapRes!36584))))

(declare-fun condMapEmpty!36584 () Bool)

(declare-datatypes ((V!35699 0))(
  ( (V!35700 (val!11569 Int)) )
))
(declare-datatypes ((ValueCell!11037 0))(
  ( (ValueCellFull!11037 (v!14131 V!35699)) (EmptyCell!11037) )
))
(declare-datatypes ((array!62041 0))(
  ( (array!62042 (arr!29874 (Array (_ BitVec 32) ValueCell!11037)) (size!30354 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62041)

(declare-fun mapDefault!36584 () ValueCell!11037)

(assert (=> b!985257 (= condMapEmpty!36584 (= (arr!29874 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11037)) mapDefault!36584)))))

(declare-fun mapNonEmpty!36584 () Bool)

(declare-fun tp!69410 () Bool)

(assert (=> mapNonEmpty!36584 (= mapRes!36584 (and tp!69410 e!555405))))

(declare-fun mapValue!36584 () ValueCell!11037)

(declare-fun mapRest!36584 () (Array (_ BitVec 32) ValueCell!11037))

(declare-fun mapKey!36584 () (_ BitVec 32))

(assert (=> mapNonEmpty!36584 (= (arr!29874 _values!1278) (store mapRest!36584 mapKey!36584 mapValue!36584))))

(declare-fun b!985258 () Bool)

(declare-fun res!659408 () Bool)

(assert (=> b!985258 (=> (not res!659408) (not e!555407))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!985258 (= res!659408 (validKeyInArray!0 (select (arr!29873 _keys!1544) from!1932)))))

(declare-fun b!985260 () Bool)

(declare-fun e!555410 () Bool)

(assert (=> b!985260 (= e!555407 e!555410)))

(declare-fun res!659411 () Bool)

(assert (=> b!985260 (=> (not res!659411) (not e!555410))))

(assert (=> b!985260 (= res!659411 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29873 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun lt!437175 () V!35699)

(declare-fun get!15528 (ValueCell!11037 V!35699) V!35699)

(declare-fun dynLambda!1849 (Int (_ BitVec 64)) V!35699)

(assert (=> b!985260 (= lt!437175 (get!15528 (select (arr!29874 _values!1278) from!1932) (dynLambda!1849 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35699)

(declare-datatypes ((tuple2!14904 0))(
  ( (tuple2!14905 (_1!7462 (_ BitVec 64)) (_2!7462 V!35699)) )
))
(declare-datatypes ((List!20822 0))(
  ( (Nil!20819) (Cons!20818 (h!21980 tuple2!14904) (t!29709 List!20822)) )
))
(declare-datatypes ((ListLongMap!13615 0))(
  ( (ListLongMap!13616 (toList!6823 List!20822)) )
))
(declare-fun lt!437174 () ListLongMap!13615)

(declare-fun zeroValue!1220 () V!35699)

(declare-fun getCurrentListMapNoExtraKeys!3478 (array!62039 array!62041 (_ BitVec 32) (_ BitVec 32) V!35699 V!35699 (_ BitVec 32) Int) ListLongMap!13615)

(assert (=> b!985260 (= lt!437174 (getCurrentListMapNoExtraKeys!3478 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!985261 () Bool)

(declare-fun res!659407 () Bool)

(assert (=> b!985261 (=> (not res!659407) (not e!555407))))

(assert (=> b!985261 (= res!659407 (and (= (size!30354 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30353 _keys!1544) (size!30354 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!36584 () Bool)

(assert (=> mapIsEmpty!36584 mapRes!36584))

(declare-fun b!985262 () Bool)

(assert (=> b!985262 (= e!555406 tp_is_empty!23037)))

(declare-fun b!985259 () Bool)

(assert (=> b!985259 (= e!555410 (not true))))

(declare-fun lt!437176 () tuple2!14904)

(declare-fun lt!437172 () tuple2!14904)

(declare-fun +!3011 (ListLongMap!13615 tuple2!14904) ListLongMap!13615)

(assert (=> b!985259 (= (+!3011 (+!3011 lt!437174 lt!437176) lt!437172) (+!3011 (+!3011 lt!437174 lt!437172) lt!437176))))

(assert (=> b!985259 (= lt!437172 (tuple2!14905 (select (arr!29873 _keys!1544) from!1932) lt!437175))))

(assert (=> b!985259 (= lt!437176 (tuple2!14905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32697 0))(
  ( (Unit!32698) )
))
(declare-fun lt!437173 () Unit!32697)

(declare-fun addCommutativeForDiffKeys!673 (ListLongMap!13615 (_ BitVec 64) V!35699 (_ BitVec 64) V!35699) Unit!32697)

(assert (=> b!985259 (= lt!437173 (addCommutativeForDiffKeys!673 lt!437174 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29873 _keys!1544) from!1932) lt!437175))))

(declare-fun res!659409 () Bool)

(assert (=> start!84262 (=> (not res!659409) (not e!555407))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84262 (= res!659409 (validMask!0 mask!1948))))

(assert (=> start!84262 e!555407))

(assert (=> start!84262 true))

(assert (=> start!84262 tp_is_empty!23037))

(declare-fun array_inv!22955 (array!62041) Bool)

(assert (=> start!84262 (and (array_inv!22955 _values!1278) e!555409)))

(assert (=> start!84262 tp!69409))

(declare-fun array_inv!22956 (array!62039) Bool)

(assert (=> start!84262 (array_inv!22956 _keys!1544)))

(assert (= (and start!84262 res!659409) b!985261))

(assert (= (and b!985261 res!659407) b!985255))

(assert (= (and b!985255 res!659410) b!985254))

(assert (= (and b!985254 res!659412) b!985252))

(assert (= (and b!985252 res!659406) b!985258))

(assert (= (and b!985258 res!659408) b!985253))

(assert (= (and b!985253 res!659405) b!985260))

(assert (= (and b!985260 res!659411) b!985259))

(assert (= (and b!985257 condMapEmpty!36584) mapIsEmpty!36584))

(assert (= (and b!985257 (not condMapEmpty!36584)) mapNonEmpty!36584))

(get-info :version)

(assert (= (and mapNonEmpty!36584 ((_ is ValueCellFull!11037) mapValue!36584)) b!985256))

(assert (= (and b!985257 ((_ is ValueCellFull!11037) mapDefault!36584)) b!985262))

(assert (= start!84262 b!985257))

(declare-fun b_lambda!14997 () Bool)

(assert (=> (not b_lambda!14997) (not b!985260)))

(declare-fun t!29707 () Bool)

(declare-fun tb!6737 () Bool)

(assert (=> (and start!84262 (= defaultEntry!1281 defaultEntry!1281) t!29707) tb!6737))

(declare-fun result!13455 () Bool)

(assert (=> tb!6737 (= result!13455 tp_is_empty!23037)))

(assert (=> b!985260 t!29707))

(declare-fun b_and!31967 () Bool)

(assert (= b_and!31965 (and (=> t!29707 result!13455) b_and!31967)))

(declare-fun m!912417 () Bool)

(assert (=> b!985254 m!912417))

(declare-fun m!912419 () Bool)

(assert (=> mapNonEmpty!36584 m!912419))

(declare-fun m!912421 () Bool)

(assert (=> start!84262 m!912421))

(declare-fun m!912423 () Bool)

(assert (=> start!84262 m!912423))

(declare-fun m!912425 () Bool)

(assert (=> start!84262 m!912425))

(declare-fun m!912427 () Bool)

(assert (=> b!985260 m!912427))

(declare-fun m!912429 () Bool)

(assert (=> b!985260 m!912429))

(declare-fun m!912431 () Bool)

(assert (=> b!985260 m!912431))

(declare-fun m!912433 () Bool)

(assert (=> b!985260 m!912433))

(assert (=> b!985260 m!912429))

(assert (=> b!985260 m!912433))

(declare-fun m!912435 () Bool)

(assert (=> b!985260 m!912435))

(assert (=> b!985258 m!912427))

(assert (=> b!985258 m!912427))

(declare-fun m!912437 () Bool)

(assert (=> b!985258 m!912437))

(declare-fun m!912439 () Bool)

(assert (=> b!985255 m!912439))

(assert (=> b!985259 m!912427))

(declare-fun m!912441 () Bool)

(assert (=> b!985259 m!912441))

(declare-fun m!912443 () Bool)

(assert (=> b!985259 m!912443))

(declare-fun m!912445 () Bool)

(assert (=> b!985259 m!912445))

(assert (=> b!985259 m!912427))

(declare-fun m!912447 () Bool)

(assert (=> b!985259 m!912447))

(assert (=> b!985259 m!912445))

(declare-fun m!912449 () Bool)

(assert (=> b!985259 m!912449))

(assert (=> b!985259 m!912441))

(check-sat (not b!985255) (not start!84262) (not b!985259) (not b!985254) (not b_next!19935) tp_is_empty!23037 (not mapNonEmpty!36584) (not b!985260) (not b_lambda!14997) b_and!31967 (not b!985258))
(check-sat b_and!31967 (not b_next!19935))
