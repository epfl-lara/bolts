; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20096 () Bool)

(assert start!20096)

(declare-fun b_free!4743 () Bool)

(declare-fun b_next!4743 () Bool)

(assert (=> start!20096 (= b_free!4743 (not b_next!4743))))

(declare-fun tp!17260 () Bool)

(declare-fun b_and!11507 () Bool)

(assert (=> start!20096 (= tp!17260 b_and!11507)))

(declare-fun b!196650 () Bool)

(declare-fun e!129535 () Bool)

(assert (=> b!196650 (= e!129535 false)))

(declare-datatypes ((V!5779 0))(
  ( (V!5780 (val!2344 Int)) )
))
(declare-datatypes ((ValueCell!1956 0))(
  ( (ValueCellFull!1956 (v!4310 V!5779)) (EmptyCell!1956) )
))
(declare-datatypes ((array!8454 0))(
  ( (array!8455 (arr!3977 (Array (_ BitVec 32) ValueCell!1956)) (size!4302 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8454)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!5779)

(declare-datatypes ((array!8456 0))(
  ( (array!8457 (arr!3978 (Array (_ BitVec 32) (_ BitVec 64))) (size!4303 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8456)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5779)

(declare-datatypes ((tuple2!3568 0))(
  ( (tuple2!3569 (_1!1794 (_ BitVec 64)) (_2!1794 V!5779)) )
))
(declare-datatypes ((List!2503 0))(
  ( (Nil!2500) (Cons!2499 (h!3141 tuple2!3568) (t!7442 List!2503)) )
))
(declare-datatypes ((ListLongMap!2495 0))(
  ( (ListLongMap!2496 (toList!1263 List!2503)) )
))
(declare-fun lt!97666 () ListLongMap!2495)

(declare-fun getCurrentListMapNoExtraKeys!220 (array!8456 array!8454 (_ BitVec 32) (_ BitVec 32) V!5779 V!5779 (_ BitVec 32) Int) ListLongMap!2495)

(assert (=> b!196650 (= lt!97666 (getCurrentListMapNoExtraKeys!220 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!196651 () Bool)

(declare-fun res!92866 () Bool)

(assert (=> b!196651 (=> (not res!92866) (not e!129535))))

(assert (=> b!196651 (= res!92866 (and (= (size!4302 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4303 _keys!825) (size!4302 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!196652 () Bool)

(declare-fun e!129533 () Bool)

(declare-fun e!129532 () Bool)

(declare-fun mapRes!7967 () Bool)

(assert (=> b!196652 (= e!129533 (and e!129532 mapRes!7967))))

(declare-fun condMapEmpty!7967 () Bool)

(declare-fun mapDefault!7967 () ValueCell!1956)

(assert (=> b!196652 (= condMapEmpty!7967 (= (arr!3977 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1956)) mapDefault!7967)))))

(declare-fun b!196653 () Bool)

(declare-fun res!92863 () Bool)

(assert (=> b!196653 (=> (not res!92863) (not e!129535))))

(declare-datatypes ((List!2504 0))(
  ( (Nil!2501) (Cons!2500 (h!3142 (_ BitVec 64)) (t!7443 List!2504)) )
))
(declare-fun arrayNoDuplicates!0 (array!8456 (_ BitVec 32) List!2504) Bool)

(assert (=> b!196653 (= res!92863 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2501))))

(declare-fun b!196654 () Bool)

(declare-fun e!129531 () Bool)

(declare-fun tp_is_empty!4599 () Bool)

(assert (=> b!196654 (= e!129531 tp_is_empty!4599)))

(declare-fun b!196655 () Bool)

(declare-fun res!92864 () Bool)

(assert (=> b!196655 (=> (not res!92864) (not e!129535))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!196655 (= res!92864 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4303 _keys!825))))))

(declare-fun b!196656 () Bool)

(declare-fun res!92860 () Bool)

(assert (=> b!196656 (=> (not res!92860) (not e!129535))))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!196656 (= res!92860 (= (select (arr!3978 _keys!825) i!601) k0!843))))

(declare-fun mapNonEmpty!7967 () Bool)

(declare-fun tp!17261 () Bool)

(assert (=> mapNonEmpty!7967 (= mapRes!7967 (and tp!17261 e!129531))))

(declare-fun mapRest!7967 () (Array (_ BitVec 32) ValueCell!1956))

(declare-fun mapKey!7967 () (_ BitVec 32))

(declare-fun mapValue!7967 () ValueCell!1956)

(assert (=> mapNonEmpty!7967 (= (arr!3977 _values!649) (store mapRest!7967 mapKey!7967 mapValue!7967))))

(declare-fun res!92861 () Bool)

(assert (=> start!20096 (=> (not res!92861) (not e!129535))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20096 (= res!92861 (validMask!0 mask!1149))))

(assert (=> start!20096 e!129535))

(declare-fun array_inv!2585 (array!8454) Bool)

(assert (=> start!20096 (and (array_inv!2585 _values!649) e!129533)))

(assert (=> start!20096 true))

(assert (=> start!20096 tp_is_empty!4599))

(declare-fun array_inv!2586 (array!8456) Bool)

(assert (=> start!20096 (array_inv!2586 _keys!825)))

(assert (=> start!20096 tp!17260))

(declare-fun b!196657 () Bool)

(assert (=> b!196657 (= e!129532 tp_is_empty!4599)))

(declare-fun b!196658 () Bool)

(declare-fun res!92862 () Bool)

(assert (=> b!196658 (=> (not res!92862) (not e!129535))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!196658 (= res!92862 (validKeyInArray!0 k0!843))))

(declare-fun b!196659 () Bool)

(declare-fun res!92865 () Bool)

(assert (=> b!196659 (=> (not res!92865) (not e!129535))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8456 (_ BitVec 32)) Bool)

(assert (=> b!196659 (= res!92865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!7967 () Bool)

(assert (=> mapIsEmpty!7967 mapRes!7967))

(assert (= (and start!20096 res!92861) b!196651))

(assert (= (and b!196651 res!92866) b!196659))

(assert (= (and b!196659 res!92865) b!196653))

(assert (= (and b!196653 res!92863) b!196655))

(assert (= (and b!196655 res!92864) b!196658))

(assert (= (and b!196658 res!92862) b!196656))

(assert (= (and b!196656 res!92860) b!196650))

(assert (= (and b!196652 condMapEmpty!7967) mapIsEmpty!7967))

(assert (= (and b!196652 (not condMapEmpty!7967)) mapNonEmpty!7967))

(get-info :version)

(assert (= (and mapNonEmpty!7967 ((_ is ValueCellFull!1956) mapValue!7967)) b!196654))

(assert (= (and b!196652 ((_ is ValueCellFull!1956) mapDefault!7967)) b!196657))

(assert (= start!20096 b!196652))

(declare-fun m!223851 () Bool)

(assert (=> b!196653 m!223851))

(declare-fun m!223853 () Bool)

(assert (=> b!196656 m!223853))

(declare-fun m!223855 () Bool)

(assert (=> b!196658 m!223855))

(declare-fun m!223857 () Bool)

(assert (=> mapNonEmpty!7967 m!223857))

(declare-fun m!223859 () Bool)

(assert (=> b!196659 m!223859))

(declare-fun m!223861 () Bool)

(assert (=> b!196650 m!223861))

(declare-fun m!223863 () Bool)

(assert (=> start!20096 m!223863))

(declare-fun m!223865 () Bool)

(assert (=> start!20096 m!223865))

(declare-fun m!223867 () Bool)

(assert (=> start!20096 m!223867))

(check-sat tp_is_empty!4599 (not b!196650) (not b!196658) (not b!196659) (not b!196653) (not mapNonEmpty!7967) (not b_next!4743) b_and!11507 (not start!20096))
(check-sat b_and!11507 (not b_next!4743))
