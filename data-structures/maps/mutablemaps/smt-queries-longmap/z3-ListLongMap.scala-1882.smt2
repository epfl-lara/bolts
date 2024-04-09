; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33736 () Bool)

(assert start!33736)

(declare-fun b_free!6963 () Bool)

(declare-fun b_next!6963 () Bool)

(assert (=> start!33736 (= b_free!6963 (not b_next!6963))))

(declare-fun tp!24393 () Bool)

(declare-fun b_and!14161 () Bool)

(assert (=> start!33736 (= tp!24393 b_and!14161)))

(declare-fun b!335192 () Bool)

(declare-fun res!185029 () Bool)

(declare-fun e!205770 () Bool)

(assert (=> b!335192 (=> (not res!185029) (not e!205770))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10197 0))(
  ( (V!10198 (val!3502 Int)) )
))
(declare-datatypes ((ValueCell!3114 0))(
  ( (ValueCellFull!3114 (v!5660 V!10197)) (EmptyCell!3114) )
))
(declare-datatypes ((array!17411 0))(
  ( (array!17412 (arr!8233 (Array (_ BitVec 32) ValueCell!3114)) (size!8585 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17411)

(declare-datatypes ((array!17413 0))(
  ( (array!17414 (arr!8234 (Array (_ BitVec 32) (_ BitVec 64))) (size!8586 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17413)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!335192 (= res!185029 (and (= (size!8585 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8586 _keys!1895) (size!8585 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!11769 () Bool)

(declare-fun mapRes!11769 () Bool)

(declare-fun tp!24392 () Bool)

(declare-fun e!205769 () Bool)

(assert (=> mapNonEmpty!11769 (= mapRes!11769 (and tp!24392 e!205769))))

(declare-fun mapKey!11769 () (_ BitVec 32))

(declare-fun mapRest!11769 () (Array (_ BitVec 32) ValueCell!3114))

(declare-fun mapValue!11769 () ValueCell!3114)

(assert (=> mapNonEmpty!11769 (= (arr!8233 _values!1525) (store mapRest!11769 mapKey!11769 mapValue!11769))))

(declare-fun b!335193 () Bool)

(declare-fun res!185028 () Bool)

(declare-fun e!205767 () Bool)

(assert (=> b!335193 (=> (not res!185028) (not e!205767))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3192 0))(
  ( (MissingZero!3192 (index!14947 (_ BitVec 32))) (Found!3192 (index!14948 (_ BitVec 32))) (Intermediate!3192 (undefined!4004 Bool) (index!14949 (_ BitVec 32)) (x!33425 (_ BitVec 32))) (Undefined!3192) (MissingVacant!3192 (index!14950 (_ BitVec 32))) )
))
(declare-fun lt!159777 () SeekEntryResult!3192)

(declare-fun arrayContainsKey!0 (array!17413 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!335193 (= res!185028 (arrayContainsKey!0 _keys!1895 k0!1348 (index!14948 lt!159777)))))

(declare-fun b!335194 () Bool)

(declare-fun e!205764 () Bool)

(declare-fun tp_is_empty!6915 () Bool)

(assert (=> b!335194 (= e!205764 tp_is_empty!6915)))

(declare-fun b!335195 () Bool)

(declare-fun res!185030 () Bool)

(assert (=> b!335195 (=> (not res!185030) (not e!205770))))

(declare-datatypes ((List!4726 0))(
  ( (Nil!4723) (Cons!4722 (h!5578 (_ BitVec 64)) (t!9822 List!4726)) )
))
(declare-fun arrayNoDuplicates!0 (array!17413 (_ BitVec 32) List!4726) Bool)

(assert (=> b!335195 (= res!185030 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4723))))

(declare-fun b!335196 () Bool)

(declare-fun res!185027 () Bool)

(assert (=> b!335196 (=> (not res!185027) (not e!205770))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17413 (_ BitVec 32)) Bool)

(assert (=> b!335196 (= res!185027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!11769 () Bool)

(assert (=> mapIsEmpty!11769 mapRes!11769))

(declare-fun b!335197 () Bool)

(assert (=> b!335197 (= e!205767 (not true))))

(declare-datatypes ((tuple2!5086 0))(
  ( (tuple2!5087 (_1!2553 (_ BitVec 64)) (_2!2553 V!10197)) )
))
(declare-datatypes ((List!4727 0))(
  ( (Nil!4724) (Cons!4723 (h!5579 tuple2!5086) (t!9823 List!4727)) )
))
(declare-datatypes ((ListLongMap!4013 0))(
  ( (ListLongMap!4014 (toList!2022 List!4727)) )
))
(declare-fun lt!159776 () ListLongMap!4013)

(declare-fun contains!2062 (ListLongMap!4013 (_ BitVec 64)) Bool)

(assert (=> b!335197 (contains!2062 lt!159776 (select (arr!8234 _keys!1895) (index!14948 lt!159777)))))

(declare-fun zeroValue!1467 () V!10197)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10197)

(declare-datatypes ((Unit!10426 0))(
  ( (Unit!10427) )
))
(declare-fun lt!159775 () Unit!10426)

(declare-fun lemmaValidKeyInArrayIsInListMap!159 (array!17413 array!17411 (_ BitVec 32) (_ BitVec 32) V!10197 V!10197 (_ BitVec 32) Int) Unit!10426)

(assert (=> b!335197 (= lt!159775 (lemmaValidKeyInArrayIsInListMap!159 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!14948 lt!159777) defaultEntry!1528))))

(assert (=> b!335197 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-fun lt!159774 () Unit!10426)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17413 (_ BitVec 64) (_ BitVec 32)) Unit!10426)

(assert (=> b!335197 (= lt!159774 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!14948 lt!159777)))))

(declare-fun b!335198 () Bool)

(declare-fun e!205765 () Bool)

(assert (=> b!335198 (= e!205765 e!205767)))

(declare-fun res!185023 () Bool)

(assert (=> b!335198 (=> (not res!185023) (not e!205767))))

(get-info :version)

(assert (=> b!335198 (= res!185023 (and ((_ is Found!3192) lt!159777) (= (select (arr!8234 _keys!1895) (index!14948 lt!159777)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17413 (_ BitVec 32)) SeekEntryResult!3192)

(assert (=> b!335198 (= lt!159777 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!335199 () Bool)

(declare-fun e!205768 () Bool)

(assert (=> b!335199 (= e!205768 (and e!205764 mapRes!11769))))

(declare-fun condMapEmpty!11769 () Bool)

(declare-fun mapDefault!11769 () ValueCell!3114)

(assert (=> b!335199 (= condMapEmpty!11769 (= (arr!8233 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3114)) mapDefault!11769)))))

(declare-fun b!335191 () Bool)

(assert (=> b!335191 (= e!205769 tp_is_empty!6915)))

(declare-fun res!185024 () Bool)

(assert (=> start!33736 (=> (not res!185024) (not e!205770))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33736 (= res!185024 (validMask!0 mask!2385))))

(assert (=> start!33736 e!205770))

(assert (=> start!33736 true))

(assert (=> start!33736 tp_is_empty!6915))

(assert (=> start!33736 tp!24393))

(declare-fun array_inv!6104 (array!17411) Bool)

(assert (=> start!33736 (and (array_inv!6104 _values!1525) e!205768)))

(declare-fun array_inv!6105 (array!17413) Bool)

(assert (=> start!33736 (array_inv!6105 _keys!1895)))

(declare-fun b!335200 () Bool)

(assert (=> b!335200 (= e!205770 e!205765)))

(declare-fun res!185025 () Bool)

(assert (=> b!335200 (=> (not res!185025) (not e!205765))))

(assert (=> b!335200 (= res!185025 (not (contains!2062 lt!159776 k0!1348)))))

(declare-fun getCurrentListMap!1543 (array!17413 array!17411 (_ BitVec 32) (_ BitVec 32) V!10197 V!10197 (_ BitVec 32) Int) ListLongMap!4013)

(assert (=> b!335200 (= lt!159776 (getCurrentListMap!1543 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!335201 () Bool)

(declare-fun res!185026 () Bool)

(assert (=> b!335201 (=> (not res!185026) (not e!205770))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!335201 (= res!185026 (validKeyInArray!0 k0!1348))))

(assert (= (and start!33736 res!185024) b!335192))

(assert (= (and b!335192 res!185029) b!335196))

(assert (= (and b!335196 res!185027) b!335195))

(assert (= (and b!335195 res!185030) b!335201))

(assert (= (and b!335201 res!185026) b!335200))

(assert (= (and b!335200 res!185025) b!335198))

(assert (= (and b!335198 res!185023) b!335193))

(assert (= (and b!335193 res!185028) b!335197))

(assert (= (and b!335199 condMapEmpty!11769) mapIsEmpty!11769))

(assert (= (and b!335199 (not condMapEmpty!11769)) mapNonEmpty!11769))

(assert (= (and mapNonEmpty!11769 ((_ is ValueCellFull!3114) mapValue!11769)) b!335191))

(assert (= (and b!335199 ((_ is ValueCellFull!3114) mapDefault!11769)) b!335194))

(assert (= start!33736 b!335199))

(declare-fun m!339229 () Bool)

(assert (=> b!335193 m!339229))

(declare-fun m!339231 () Bool)

(assert (=> b!335196 m!339231))

(declare-fun m!339233 () Bool)

(assert (=> b!335201 m!339233))

(declare-fun m!339235 () Bool)

(assert (=> b!335197 m!339235))

(assert (=> b!335197 m!339235))

(declare-fun m!339237 () Bool)

(assert (=> b!335197 m!339237))

(declare-fun m!339239 () Bool)

(assert (=> b!335197 m!339239))

(declare-fun m!339241 () Bool)

(assert (=> b!335197 m!339241))

(declare-fun m!339243 () Bool)

(assert (=> b!335197 m!339243))

(declare-fun m!339245 () Bool)

(assert (=> b!335195 m!339245))

(declare-fun m!339247 () Bool)

(assert (=> b!335200 m!339247))

(declare-fun m!339249 () Bool)

(assert (=> b!335200 m!339249))

(declare-fun m!339251 () Bool)

(assert (=> mapNonEmpty!11769 m!339251))

(assert (=> b!335198 m!339235))

(declare-fun m!339253 () Bool)

(assert (=> b!335198 m!339253))

(declare-fun m!339255 () Bool)

(assert (=> start!33736 m!339255))

(declare-fun m!339257 () Bool)

(assert (=> start!33736 m!339257))

(declare-fun m!339259 () Bool)

(assert (=> start!33736 m!339259))

(check-sat (not mapNonEmpty!11769) (not start!33736) tp_is_empty!6915 (not b!335200) (not b!335196) (not b!335198) (not b!335193) b_and!14161 (not b!335195) (not b!335197) (not b_next!6963) (not b!335201))
(check-sat b_and!14161 (not b_next!6963))
