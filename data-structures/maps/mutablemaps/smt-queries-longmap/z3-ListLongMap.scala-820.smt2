; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20008 () Bool)

(assert start!20008)

(declare-fun b!195918 () Bool)

(declare-fun e!128980 () Bool)

(declare-fun e!128978 () Bool)

(declare-fun mapRes!7862 () Bool)

(assert (=> b!195918 (= e!128980 (and e!128978 mapRes!7862))))

(declare-fun condMapEmpty!7862 () Bool)

(declare-datatypes ((V!5691 0))(
  ( (V!5692 (val!2311 Int)) )
))
(declare-datatypes ((ValueCell!1923 0))(
  ( (ValueCellFull!1923 (v!4276 V!5691)) (EmptyCell!1923) )
))
(declare-datatypes ((array!8324 0))(
  ( (array!8325 (arr!3914 (Array (_ BitVec 32) ValueCell!1923)) (size!4239 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8324)

(declare-fun mapDefault!7862 () ValueCell!1923)

(assert (=> b!195918 (= condMapEmpty!7862 (= (arr!3914 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1923)) mapDefault!7862)))))

(declare-fun mapIsEmpty!7862 () Bool)

(assert (=> mapIsEmpty!7862 mapRes!7862))

(declare-fun res!92454 () Bool)

(declare-fun e!128981 () Bool)

(assert (=> start!20008 (=> (not res!92454) (not e!128981))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20008 (= res!92454 (validMask!0 mask!1149))))

(assert (=> start!20008 e!128981))

(assert (=> start!20008 true))

(declare-fun array_inv!2533 (array!8324) Bool)

(assert (=> start!20008 (and (array_inv!2533 _values!649) e!128980)))

(declare-datatypes ((array!8326 0))(
  ( (array!8327 (arr!3915 (Array (_ BitVec 32) (_ BitVec 64))) (size!4240 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8326)

(declare-fun array_inv!2534 (array!8326) Bool)

(assert (=> start!20008 (array_inv!2534 _keys!825)))

(declare-fun b!195919 () Bool)

(declare-fun e!128977 () Bool)

(declare-fun tp_is_empty!4533 () Bool)

(assert (=> b!195919 (= e!128977 tp_is_empty!4533)))

(declare-fun b!195920 () Bool)

(declare-fun res!92456 () Bool)

(assert (=> b!195920 (=> (not res!92456) (not e!128981))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!195920 (= res!92456 (and (= (size!4239 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4240 _keys!825) (size!4239 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!195921 () Bool)

(declare-fun res!92455 () Bool)

(assert (=> b!195921 (=> (not res!92455) (not e!128981))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8326 (_ BitVec 32)) Bool)

(assert (=> b!195921 (= res!92455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!195922 () Bool)

(declare-datatypes ((List!2476 0))(
  ( (Nil!2473) (Cons!2472 (h!3114 (_ BitVec 64)) (t!7415 List!2476)) )
))
(declare-fun noDuplicate!58 (List!2476) Bool)

(assert (=> b!195922 (= e!128981 (not (noDuplicate!58 Nil!2473)))))

(declare-fun b!195923 () Bool)

(assert (=> b!195923 (= e!128978 tp_is_empty!4533)))

(declare-fun mapNonEmpty!7862 () Bool)

(declare-fun tp!17150 () Bool)

(assert (=> mapNonEmpty!7862 (= mapRes!7862 (and tp!17150 e!128977))))

(declare-fun mapValue!7862 () ValueCell!1923)

(declare-fun mapRest!7862 () (Array (_ BitVec 32) ValueCell!1923))

(declare-fun mapKey!7862 () (_ BitVec 32))

(assert (=> mapNonEmpty!7862 (= (arr!3914 _values!649) (store mapRest!7862 mapKey!7862 mapValue!7862))))

(declare-fun b!195924 () Bool)

(declare-fun res!92453 () Bool)

(assert (=> b!195924 (=> (not res!92453) (not e!128981))))

(assert (=> b!195924 (= res!92453 (and (bvsle #b00000000000000000000000000000000 (size!4240 _keys!825)) (bvslt (size!4240 _keys!825) #b01111111111111111111111111111111)))))

(assert (= (and start!20008 res!92454) b!195920))

(assert (= (and b!195920 res!92456) b!195921))

(assert (= (and b!195921 res!92455) b!195924))

(assert (= (and b!195924 res!92453) b!195922))

(assert (= (and b!195918 condMapEmpty!7862) mapIsEmpty!7862))

(assert (= (and b!195918 (not condMapEmpty!7862)) mapNonEmpty!7862))

(get-info :version)

(assert (= (and mapNonEmpty!7862 ((_ is ValueCellFull!1923) mapValue!7862)) b!195919))

(assert (= (and b!195918 ((_ is ValueCellFull!1923) mapDefault!7862)) b!195923))

(assert (= start!20008 b!195918))

(declare-fun m!223379 () Bool)

(assert (=> start!20008 m!223379))

(declare-fun m!223381 () Bool)

(assert (=> start!20008 m!223381))

(declare-fun m!223383 () Bool)

(assert (=> start!20008 m!223383))

(declare-fun m!223385 () Bool)

(assert (=> b!195921 m!223385))

(declare-fun m!223387 () Bool)

(assert (=> b!195922 m!223387))

(declare-fun m!223389 () Bool)

(assert (=> mapNonEmpty!7862 m!223389))

(check-sat (not b!195921) tp_is_empty!4533 (not b!195922) (not start!20008) (not mapNonEmpty!7862))
(check-sat)
(get-model)

(declare-fun b!195954 () Bool)

(declare-fun e!129005 () Bool)

(declare-fun call!19771 () Bool)

(assert (=> b!195954 (= e!129005 call!19771)))

(declare-fun d!57469 () Bool)

(declare-fun res!92474 () Bool)

(declare-fun e!129003 () Bool)

(assert (=> d!57469 (=> res!92474 e!129003)))

(assert (=> d!57469 (= res!92474 (bvsge #b00000000000000000000000000000000 (size!4240 _keys!825)))))

(assert (=> d!57469 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149) e!129003)))

(declare-fun b!195955 () Bool)

(declare-fun e!129004 () Bool)

(assert (=> b!195955 (= e!129004 e!129005)))

(declare-fun lt!97575 () (_ BitVec 64))

(assert (=> b!195955 (= lt!97575 (select (arr!3915 _keys!825) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5943 0))(
  ( (Unit!5944) )
))
(declare-fun lt!97573 () Unit!5943)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!8326 (_ BitVec 64) (_ BitVec 32)) Unit!5943)

(assert (=> b!195955 (= lt!97573 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!825 lt!97575 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!8326 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!195955 (arrayContainsKey!0 _keys!825 lt!97575 #b00000000000000000000000000000000)))

(declare-fun lt!97574 () Unit!5943)

(assert (=> b!195955 (= lt!97574 lt!97573)))

(declare-fun res!92473 () Bool)

(declare-datatypes ((SeekEntryResult!712 0))(
  ( (MissingZero!712 (index!5018 (_ BitVec 32))) (Found!712 (index!5019 (_ BitVec 32))) (Intermediate!712 (undefined!1524 Bool) (index!5020 (_ BitVec 32)) (x!20833 (_ BitVec 32))) (Undefined!712) (MissingVacant!712 (index!5021 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8326 (_ BitVec 32)) SeekEntryResult!712)

(assert (=> b!195955 (= res!92473 (= (seekEntryOrOpen!0 (select (arr!3915 _keys!825) #b00000000000000000000000000000000) _keys!825 mask!1149) (Found!712 #b00000000000000000000000000000000)))))

(assert (=> b!195955 (=> (not res!92473) (not e!129005))))

(declare-fun bm!19768 () Bool)

(assert (=> bm!19768 (= call!19771 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!825 mask!1149))))

(declare-fun b!195956 () Bool)

(assert (=> b!195956 (= e!129004 call!19771)))

(declare-fun b!195957 () Bool)

(assert (=> b!195957 (= e!129003 e!129004)))

(declare-fun c!35413 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!195957 (= c!35413 (validKeyInArray!0 (select (arr!3915 _keys!825) #b00000000000000000000000000000000)))))

(assert (= (and d!57469 (not res!92474)) b!195957))

(assert (= (and b!195957 c!35413) b!195955))

(assert (= (and b!195957 (not c!35413)) b!195956))

(assert (= (and b!195955 res!92473) b!195954))

(assert (= (or b!195954 b!195956) bm!19768))

(declare-fun m!223403 () Bool)

(assert (=> b!195955 m!223403))

(declare-fun m!223405 () Bool)

(assert (=> b!195955 m!223405))

(declare-fun m!223407 () Bool)

(assert (=> b!195955 m!223407))

(assert (=> b!195955 m!223403))

(declare-fun m!223409 () Bool)

(assert (=> b!195955 m!223409))

(declare-fun m!223411 () Bool)

(assert (=> bm!19768 m!223411))

(assert (=> b!195957 m!223403))

(assert (=> b!195957 m!223403))

(declare-fun m!223413 () Bool)

(assert (=> b!195957 m!223413))

(assert (=> b!195921 d!57469))

(declare-fun d!57471 () Bool)

(declare-fun res!92479 () Bool)

(declare-fun e!129010 () Bool)

(assert (=> d!57471 (=> res!92479 e!129010)))

(assert (=> d!57471 (= res!92479 ((_ is Nil!2473) Nil!2473))))

(assert (=> d!57471 (= (noDuplicate!58 Nil!2473) e!129010)))

(declare-fun b!195962 () Bool)

(declare-fun e!129011 () Bool)

(assert (=> b!195962 (= e!129010 e!129011)))

(declare-fun res!92480 () Bool)

(assert (=> b!195962 (=> (not res!92480) (not e!129011))))

(declare-fun contains!1384 (List!2476 (_ BitVec 64)) Bool)

(assert (=> b!195962 (= res!92480 (not (contains!1384 (t!7415 Nil!2473) (h!3114 Nil!2473))))))

(declare-fun b!195963 () Bool)

(assert (=> b!195963 (= e!129011 (noDuplicate!58 (t!7415 Nil!2473)))))

(assert (= (and d!57471 (not res!92479)) b!195962))

(assert (= (and b!195962 res!92480) b!195963))

(declare-fun m!223415 () Bool)

(assert (=> b!195962 m!223415))

(declare-fun m!223417 () Bool)

(assert (=> b!195963 m!223417))

(assert (=> b!195922 d!57471))

(declare-fun d!57473 () Bool)

(assert (=> d!57473 (= (validMask!0 mask!1149) (and (or (= mask!1149 #b00000000000000000000000000000111) (= mask!1149 #b00000000000000000000000000001111) (= mask!1149 #b00000000000000000000000000011111) (= mask!1149 #b00000000000000000000000000111111) (= mask!1149 #b00000000000000000000000001111111) (= mask!1149 #b00000000000000000000000011111111) (= mask!1149 #b00000000000000000000000111111111) (= mask!1149 #b00000000000000000000001111111111) (= mask!1149 #b00000000000000000000011111111111) (= mask!1149 #b00000000000000000000111111111111) (= mask!1149 #b00000000000000000001111111111111) (= mask!1149 #b00000000000000000011111111111111) (= mask!1149 #b00000000000000000111111111111111) (= mask!1149 #b00000000000000001111111111111111) (= mask!1149 #b00000000000000011111111111111111) (= mask!1149 #b00000000000000111111111111111111) (= mask!1149 #b00000000000001111111111111111111) (= mask!1149 #b00000000000011111111111111111111) (= mask!1149 #b00000000000111111111111111111111) (= mask!1149 #b00000000001111111111111111111111) (= mask!1149 #b00000000011111111111111111111111) (= mask!1149 #b00000000111111111111111111111111) (= mask!1149 #b00000001111111111111111111111111) (= mask!1149 #b00000011111111111111111111111111) (= mask!1149 #b00000111111111111111111111111111) (= mask!1149 #b00001111111111111111111111111111) (= mask!1149 #b00011111111111111111111111111111) (= mask!1149 #b00111111111111111111111111111111)) (bvsle mask!1149 #b00111111111111111111111111111111)))))

(assert (=> start!20008 d!57473))

(declare-fun d!57475 () Bool)

(assert (=> d!57475 (= (array_inv!2533 _values!649) (bvsge (size!4239 _values!649) #b00000000000000000000000000000000))))

(assert (=> start!20008 d!57475))

(declare-fun d!57477 () Bool)

(assert (=> d!57477 (= (array_inv!2534 _keys!825) (bvsge (size!4240 _keys!825) #b00000000000000000000000000000000))))

(assert (=> start!20008 d!57477))

(declare-fun b!195970 () Bool)

(declare-fun e!129017 () Bool)

(assert (=> b!195970 (= e!129017 tp_is_empty!4533)))

(declare-fun condMapEmpty!7868 () Bool)

(declare-fun mapDefault!7868 () ValueCell!1923)

(assert (=> mapNonEmpty!7862 (= condMapEmpty!7868 (= mapRest!7862 ((as const (Array (_ BitVec 32) ValueCell!1923)) mapDefault!7868)))))

(declare-fun e!129016 () Bool)

(declare-fun mapRes!7868 () Bool)

(assert (=> mapNonEmpty!7862 (= tp!17150 (and e!129016 mapRes!7868))))

(declare-fun b!195971 () Bool)

(assert (=> b!195971 (= e!129016 tp_is_empty!4533)))

(declare-fun mapNonEmpty!7868 () Bool)

(declare-fun tp!17156 () Bool)

(assert (=> mapNonEmpty!7868 (= mapRes!7868 (and tp!17156 e!129017))))

(declare-fun mapKey!7868 () (_ BitVec 32))

(declare-fun mapValue!7868 () ValueCell!1923)

(declare-fun mapRest!7868 () (Array (_ BitVec 32) ValueCell!1923))

(assert (=> mapNonEmpty!7868 (= mapRest!7862 (store mapRest!7868 mapKey!7868 mapValue!7868))))

(declare-fun mapIsEmpty!7868 () Bool)

(assert (=> mapIsEmpty!7868 mapRes!7868))

(assert (= (and mapNonEmpty!7862 condMapEmpty!7868) mapIsEmpty!7868))

(assert (= (and mapNonEmpty!7862 (not condMapEmpty!7868)) mapNonEmpty!7868))

(assert (= (and mapNonEmpty!7868 ((_ is ValueCellFull!1923) mapValue!7868)) b!195970))

(assert (= (and mapNonEmpty!7862 ((_ is ValueCellFull!1923) mapDefault!7868)) b!195971))

(declare-fun m!223419 () Bool)

(assert (=> mapNonEmpty!7868 m!223419))

(check-sat (not b!195962) (not bm!19768) tp_is_empty!4533 (not b!195955) (not mapNonEmpty!7868) (not b!195963) (not b!195957))
(check-sat)
