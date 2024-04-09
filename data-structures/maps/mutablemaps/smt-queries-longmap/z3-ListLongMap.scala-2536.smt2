; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39044 () Bool)

(assert start!39044)

(declare-fun b_free!9303 () Bool)

(declare-fun b_next!9303 () Bool)

(assert (=> start!39044 (= b_free!9303 (not b_next!9303))))

(declare-fun tp!33437 () Bool)

(declare-fun b_and!16707 () Bool)

(assert (=> start!39044 (= tp!33437 b_and!16707)))

(declare-fun b!409227 () Bool)

(declare-fun e!245496 () Bool)

(declare-fun tp_is_empty!10455 () Bool)

(assert (=> b!409227 (= e!245496 tp_is_empty!10455)))

(declare-fun b!409228 () Bool)

(declare-fun res!237041 () Bool)

(declare-fun e!245497 () Bool)

(assert (=> b!409228 (=> (not res!237041) (not e!245497))))

(declare-datatypes ((array!24763 0))(
  ( (array!24764 (arr!11828 (Array (_ BitVec 32) (_ BitVec 64))) (size!12180 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24763)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!409228 (= res!237041 (or (= (select (arr!11828 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11828 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!409229 () Bool)

(declare-fun e!245494 () Bool)

(assert (=> b!409229 (= e!245497 e!245494)))

(declare-fun res!237035 () Bool)

(assert (=> b!409229 (=> (not res!237035) (not e!245494))))

(declare-fun lt!188906 () array!24763)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24763 (_ BitVec 32)) Bool)

(assert (=> b!409229 (= res!237035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188906 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!409229 (= lt!188906 (array!24764 (store (arr!11828 _keys!709) i!563 k0!794) (size!12180 _keys!709)))))

(declare-fun b!409230 () Bool)

(declare-fun res!237040 () Bool)

(assert (=> b!409230 (=> (not res!237040) (not e!245497))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!409230 (= res!237040 (validMask!0 mask!1025))))

(declare-fun b!409231 () Bool)

(declare-fun res!237036 () Bool)

(assert (=> b!409231 (=> (not res!237036) (not e!245494))))

(declare-datatypes ((List!6827 0))(
  ( (Nil!6824) (Cons!6823 (h!7679 (_ BitVec 64)) (t!12009 List!6827)) )
))
(declare-fun arrayNoDuplicates!0 (array!24763 (_ BitVec 32) List!6827) Bool)

(assert (=> b!409231 (= res!237036 (arrayNoDuplicates!0 lt!188906 #b00000000000000000000000000000000 Nil!6824))))

(declare-fun b!409232 () Bool)

(declare-fun res!237031 () Bool)

(assert (=> b!409232 (=> (not res!237031) (not e!245497))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15045 0))(
  ( (V!15046 (val!5272 Int)) )
))
(declare-datatypes ((ValueCell!4884 0))(
  ( (ValueCellFull!4884 (v!7515 V!15045)) (EmptyCell!4884) )
))
(declare-datatypes ((array!24765 0))(
  ( (array!24766 (arr!11829 (Array (_ BitVec 32) ValueCell!4884)) (size!12181 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24765)

(assert (=> b!409232 (= res!237031 (and (= (size!12181 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12180 _keys!709) (size!12181 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!237034 () Bool)

(assert (=> start!39044 (=> (not res!237034) (not e!245497))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39044 (= res!237034 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12180 _keys!709))))))

(assert (=> start!39044 e!245497))

(assert (=> start!39044 tp_is_empty!10455))

(assert (=> start!39044 tp!33437))

(assert (=> start!39044 true))

(declare-fun e!245493 () Bool)

(declare-fun array_inv!8636 (array!24765) Bool)

(assert (=> start!39044 (and (array_inv!8636 _values!549) e!245493)))

(declare-fun array_inv!8637 (array!24763) Bool)

(assert (=> start!39044 (array_inv!8637 _keys!709)))

(declare-fun b!409233 () Bool)

(declare-fun e!245492 () Bool)

(declare-fun mapRes!17304 () Bool)

(assert (=> b!409233 (= e!245493 (and e!245492 mapRes!17304))))

(declare-fun condMapEmpty!17304 () Bool)

(declare-fun mapDefault!17304 () ValueCell!4884)

(assert (=> b!409233 (= condMapEmpty!17304 (= (arr!11829 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4884)) mapDefault!17304)))))

(declare-fun mapIsEmpty!17304 () Bool)

(assert (=> mapIsEmpty!17304 mapRes!17304))

(declare-fun b!409234 () Bool)

(declare-fun res!237039 () Bool)

(assert (=> b!409234 (=> (not res!237039) (not e!245497))))

(declare-fun arrayContainsKey!0 (array!24763 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!409234 (= res!237039 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!17304 () Bool)

(declare-fun tp!33438 () Bool)

(assert (=> mapNonEmpty!17304 (= mapRes!17304 (and tp!33438 e!245496))))

(declare-fun mapValue!17304 () ValueCell!4884)

(declare-fun mapKey!17304 () (_ BitVec 32))

(declare-fun mapRest!17304 () (Array (_ BitVec 32) ValueCell!4884))

(assert (=> mapNonEmpty!17304 (= (arr!11829 _values!549) (store mapRest!17304 mapKey!17304 mapValue!17304))))

(declare-fun b!409235 () Bool)

(declare-fun res!237038 () Bool)

(assert (=> b!409235 (=> (not res!237038) (not e!245494))))

(assert (=> b!409235 (= res!237038 (bvsle from!863 i!563))))

(declare-fun b!409236 () Bool)

(declare-fun res!237032 () Bool)

(assert (=> b!409236 (=> (not res!237032) (not e!245497))))

(assert (=> b!409236 (= res!237032 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6824))))

(declare-fun b!409237 () Bool)

(assert (=> b!409237 (= e!245492 tp_is_empty!10455)))

(declare-fun b!409238 () Bool)

(assert (=> b!409238 (= e!245494 false)))

(declare-fun minValue!515 () V!15045)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15045)

(declare-datatypes ((tuple2!6780 0))(
  ( (tuple2!6781 (_1!3400 (_ BitVec 64)) (_2!3400 V!15045)) )
))
(declare-datatypes ((List!6828 0))(
  ( (Nil!6825) (Cons!6824 (h!7680 tuple2!6780) (t!12010 List!6828)) )
))
(declare-datatypes ((ListLongMap!5707 0))(
  ( (ListLongMap!5708 (toList!2869 List!6828)) )
))
(declare-fun lt!188907 () ListLongMap!5707)

(declare-fun getCurrentListMapNoExtraKeys!1079 (array!24763 array!24765 (_ BitVec 32) (_ BitVec 32) V!15045 V!15045 (_ BitVec 32) Int) ListLongMap!5707)

(assert (=> b!409238 (= lt!188907 (getCurrentListMapNoExtraKeys!1079 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!409239 () Bool)

(declare-fun res!237042 () Bool)

(assert (=> b!409239 (=> (not res!237042) (not e!245497))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!409239 (= res!237042 (validKeyInArray!0 k0!794))))

(declare-fun b!409240 () Bool)

(declare-fun res!237037 () Bool)

(assert (=> b!409240 (=> (not res!237037) (not e!245497))))

(assert (=> b!409240 (= res!237037 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!409241 () Bool)

(declare-fun res!237033 () Bool)

(assert (=> b!409241 (=> (not res!237033) (not e!245497))))

(assert (=> b!409241 (= res!237033 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12180 _keys!709))))))

(assert (= (and start!39044 res!237034) b!409230))

(assert (= (and b!409230 res!237040) b!409232))

(assert (= (and b!409232 res!237031) b!409240))

(assert (= (and b!409240 res!237037) b!409236))

(assert (= (and b!409236 res!237032) b!409241))

(assert (= (and b!409241 res!237033) b!409239))

(assert (= (and b!409239 res!237042) b!409228))

(assert (= (and b!409228 res!237041) b!409234))

(assert (= (and b!409234 res!237039) b!409229))

(assert (= (and b!409229 res!237035) b!409231))

(assert (= (and b!409231 res!237036) b!409235))

(assert (= (and b!409235 res!237038) b!409238))

(assert (= (and b!409233 condMapEmpty!17304) mapIsEmpty!17304))

(assert (= (and b!409233 (not condMapEmpty!17304)) mapNonEmpty!17304))

(get-info :version)

(assert (= (and mapNonEmpty!17304 ((_ is ValueCellFull!4884) mapValue!17304)) b!409227))

(assert (= (and b!409233 ((_ is ValueCellFull!4884) mapDefault!17304)) b!409237))

(assert (= start!39044 b!409233))

(declare-fun m!400181 () Bool)

(assert (=> b!409236 m!400181))

(declare-fun m!400183 () Bool)

(assert (=> b!409240 m!400183))

(declare-fun m!400185 () Bool)

(assert (=> b!409231 m!400185))

(declare-fun m!400187 () Bool)

(assert (=> b!409228 m!400187))

(declare-fun m!400189 () Bool)

(assert (=> b!409239 m!400189))

(declare-fun m!400191 () Bool)

(assert (=> b!409230 m!400191))

(declare-fun m!400193 () Bool)

(assert (=> b!409229 m!400193))

(declare-fun m!400195 () Bool)

(assert (=> b!409229 m!400195))

(declare-fun m!400197 () Bool)

(assert (=> mapNonEmpty!17304 m!400197))

(declare-fun m!400199 () Bool)

(assert (=> start!39044 m!400199))

(declare-fun m!400201 () Bool)

(assert (=> start!39044 m!400201))

(declare-fun m!400203 () Bool)

(assert (=> b!409238 m!400203))

(declare-fun m!400205 () Bool)

(assert (=> b!409234 m!400205))

(check-sat (not b!409240) (not b_next!9303) (not b!409231) (not start!39044) (not b!409239) (not b!409229) (not mapNonEmpty!17304) tp_is_empty!10455 b_and!16707 (not b!409234) (not b!409230) (not b!409238) (not b!409236))
(check-sat b_and!16707 (not b_next!9303))
