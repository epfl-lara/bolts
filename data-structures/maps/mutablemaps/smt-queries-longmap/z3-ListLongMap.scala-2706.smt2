; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40064 () Bool)

(assert start!40064)

(declare-fun b_free!10323 () Bool)

(declare-fun b_next!10323 () Bool)

(assert (=> start!40064 (= b_free!10323 (not b_next!10323))))

(declare-fun tp!36498 () Bool)

(declare-fun b_and!18309 () Bool)

(assert (=> start!40064 (= tp!36498 b_and!18309)))

(declare-fun res!257755 () Bool)

(declare-fun e!257927 () Bool)

(assert (=> start!40064 (=> (not res!257755) (not e!257927))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!26749 0))(
  ( (array!26750 (arr!12821 (Array (_ BitVec 32) (_ BitVec 64))) (size!13173 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26749)

(assert (=> start!40064 (= res!257755 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13173 _keys!709))))))

(assert (=> start!40064 e!257927))

(declare-fun tp_is_empty!11475 () Bool)

(assert (=> start!40064 tp_is_empty!11475))

(assert (=> start!40064 tp!36498))

(assert (=> start!40064 true))

(declare-datatypes ((V!16405 0))(
  ( (V!16406 (val!5782 Int)) )
))
(declare-datatypes ((ValueCell!5394 0))(
  ( (ValueCellFull!5394 (v!8025 V!16405)) (EmptyCell!5394) )
))
(declare-datatypes ((array!26751 0))(
  ( (array!26752 (arr!12822 (Array (_ BitVec 32) ValueCell!5394)) (size!13174 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26751)

(declare-fun e!257931 () Bool)

(declare-fun array_inv!9312 (array!26751) Bool)

(assert (=> start!40064 (and (array_inv!9312 _values!549) e!257931)))

(declare-fun array_inv!9313 (array!26749) Bool)

(assert (=> start!40064 (array_inv!9313 _keys!709)))

(declare-fun mapIsEmpty!18834 () Bool)

(declare-fun mapRes!18834 () Bool)

(assert (=> mapIsEmpty!18834 mapRes!18834))

(declare-fun b!436913 () Bool)

(declare-fun res!257756 () Bool)

(assert (=> b!436913 (=> (not res!257756) (not e!257927))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26749 (_ BitVec 32)) Bool)

(assert (=> b!436913 (= res!257756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!436914 () Bool)

(declare-fun res!257751 () Bool)

(assert (=> b!436914 (=> (not res!257751) (not e!257927))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!436914 (= res!257751 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13173 _keys!709))))))

(declare-fun b!436915 () Bool)

(declare-fun res!257757 () Bool)

(assert (=> b!436915 (=> (not res!257757) (not e!257927))))

(assert (=> b!436915 (= res!257757 (or (= (select (arr!12821 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12821 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!436916 () Bool)

(declare-fun e!257930 () Bool)

(declare-fun e!257928 () Bool)

(assert (=> b!436916 (= e!257930 e!257928)))

(declare-fun res!257752 () Bool)

(assert (=> b!436916 (=> (not res!257752) (not e!257928))))

(assert (=> b!436916 (= res!257752 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16405)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!201506 () array!26751)

(declare-fun lt!201505 () array!26749)

(declare-fun zeroValue!515 () V!16405)

(declare-datatypes ((tuple2!7592 0))(
  ( (tuple2!7593 (_1!3806 (_ BitVec 64)) (_2!3806 V!16405)) )
))
(declare-datatypes ((List!7636 0))(
  ( (Nil!7633) (Cons!7632 (h!8488 tuple2!7592) (t!13400 List!7636)) )
))
(declare-datatypes ((ListLongMap!6519 0))(
  ( (ListLongMap!6520 (toList!3275 List!7636)) )
))
(declare-fun lt!201504 () ListLongMap!6519)

(declare-fun getCurrentListMapNoExtraKeys!1457 (array!26749 array!26751 (_ BitVec 32) (_ BitVec 32) V!16405 V!16405 (_ BitVec 32) Int) ListLongMap!6519)

(assert (=> b!436916 (= lt!201504 (getCurrentListMapNoExtraKeys!1457 lt!201505 lt!201506 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16405)

(assert (=> b!436916 (= lt!201506 (array!26752 (store (arr!12822 _values!549) i!563 (ValueCellFull!5394 v!412)) (size!13174 _values!549)))))

(declare-fun lt!201503 () ListLongMap!6519)

(assert (=> b!436916 (= lt!201503 (getCurrentListMapNoExtraKeys!1457 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!436917 () Bool)

(declare-fun res!257754 () Bool)

(assert (=> b!436917 (=> (not res!257754) (not e!257927))))

(assert (=> b!436917 (= res!257754 (and (= (size!13174 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13173 _keys!709) (size!13174 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!436918 () Bool)

(declare-fun e!257932 () Bool)

(assert (=> b!436918 (= e!257931 (and e!257932 mapRes!18834))))

(declare-fun condMapEmpty!18834 () Bool)

(declare-fun mapDefault!18834 () ValueCell!5394)

(assert (=> b!436918 (= condMapEmpty!18834 (= (arr!12822 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5394)) mapDefault!18834)))))

(declare-fun b!436919 () Bool)

(declare-fun res!257753 () Bool)

(assert (=> b!436919 (=> (not res!257753) (not e!257927))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!436919 (= res!257753 (validKeyInArray!0 k0!794))))

(declare-fun b!436920 () Bool)

(declare-fun res!257749 () Bool)

(assert (=> b!436920 (=> (not res!257749) (not e!257927))))

(declare-fun arrayContainsKey!0 (array!26749 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!436920 (= res!257749 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!436921 () Bool)

(declare-fun res!257750 () Bool)

(assert (=> b!436921 (=> (not res!257750) (not e!257927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!436921 (= res!257750 (validMask!0 mask!1025))))

(declare-fun b!436922 () Bool)

(declare-fun res!257747 () Bool)

(assert (=> b!436922 (=> (not res!257747) (not e!257927))))

(declare-datatypes ((List!7637 0))(
  ( (Nil!7634) (Cons!7633 (h!8489 (_ BitVec 64)) (t!13401 List!7637)) )
))
(declare-fun arrayNoDuplicates!0 (array!26749 (_ BitVec 32) List!7637) Bool)

(assert (=> b!436922 (= res!257747 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7634))))

(declare-fun b!436923 () Bool)

(assert (=> b!436923 (= e!257932 tp_is_empty!11475)))

(declare-fun b!436924 () Bool)

(declare-fun e!257926 () Bool)

(assert (=> b!436924 (= e!257926 tp_is_empty!11475)))

(declare-fun b!436925 () Bool)

(declare-fun res!257746 () Bool)

(assert (=> b!436925 (=> (not res!257746) (not e!257930))))

(assert (=> b!436925 (= res!257746 (bvsle from!863 i!563))))

(declare-fun b!436926 () Bool)

(assert (=> b!436926 (= e!257927 e!257930)))

(declare-fun res!257748 () Bool)

(assert (=> b!436926 (=> (not res!257748) (not e!257930))))

(assert (=> b!436926 (= res!257748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201505 mask!1025))))

(assert (=> b!436926 (= lt!201505 (array!26750 (store (arr!12821 _keys!709) i!563 k0!794) (size!13173 _keys!709)))))

(declare-fun b!436927 () Bool)

(assert (=> b!436927 (= e!257928 (not true))))

(declare-fun +!1419 (ListLongMap!6519 tuple2!7592) ListLongMap!6519)

(assert (=> b!436927 (= (getCurrentListMapNoExtraKeys!1457 lt!201505 lt!201506 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1419 (getCurrentListMapNoExtraKeys!1457 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7593 k0!794 v!412)))))

(declare-datatypes ((Unit!12953 0))(
  ( (Unit!12954) )
))
(declare-fun lt!201507 () Unit!12953)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!597 (array!26749 array!26751 (_ BitVec 32) (_ BitVec 32) V!16405 V!16405 (_ BitVec 32) (_ BitVec 64) V!16405 (_ BitVec 32) Int) Unit!12953)

(assert (=> b!436927 (= lt!201507 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!597 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!436928 () Bool)

(declare-fun res!257745 () Bool)

(assert (=> b!436928 (=> (not res!257745) (not e!257930))))

(assert (=> b!436928 (= res!257745 (arrayNoDuplicates!0 lt!201505 #b00000000000000000000000000000000 Nil!7634))))

(declare-fun mapNonEmpty!18834 () Bool)

(declare-fun tp!36497 () Bool)

(assert (=> mapNonEmpty!18834 (= mapRes!18834 (and tp!36497 e!257926))))

(declare-fun mapRest!18834 () (Array (_ BitVec 32) ValueCell!5394))

(declare-fun mapKey!18834 () (_ BitVec 32))

(declare-fun mapValue!18834 () ValueCell!5394)

(assert (=> mapNonEmpty!18834 (= (arr!12822 _values!549) (store mapRest!18834 mapKey!18834 mapValue!18834))))

(assert (= (and start!40064 res!257755) b!436921))

(assert (= (and b!436921 res!257750) b!436917))

(assert (= (and b!436917 res!257754) b!436913))

(assert (= (and b!436913 res!257756) b!436922))

(assert (= (and b!436922 res!257747) b!436914))

(assert (= (and b!436914 res!257751) b!436919))

(assert (= (and b!436919 res!257753) b!436915))

(assert (= (and b!436915 res!257757) b!436920))

(assert (= (and b!436920 res!257749) b!436926))

(assert (= (and b!436926 res!257748) b!436928))

(assert (= (and b!436928 res!257745) b!436925))

(assert (= (and b!436925 res!257746) b!436916))

(assert (= (and b!436916 res!257752) b!436927))

(assert (= (and b!436918 condMapEmpty!18834) mapIsEmpty!18834))

(assert (= (and b!436918 (not condMapEmpty!18834)) mapNonEmpty!18834))

(get-info :version)

(assert (= (and mapNonEmpty!18834 ((_ is ValueCellFull!5394) mapValue!18834)) b!436924))

(assert (= (and b!436918 ((_ is ValueCellFull!5394) mapDefault!18834)) b!436923))

(assert (= start!40064 b!436918))

(declare-fun m!424689 () Bool)

(assert (=> b!436922 m!424689))

(declare-fun m!424691 () Bool)

(assert (=> b!436920 m!424691))

(declare-fun m!424693 () Bool)

(assert (=> b!436928 m!424693))

(declare-fun m!424695 () Bool)

(assert (=> b!436915 m!424695))

(declare-fun m!424697 () Bool)

(assert (=> b!436916 m!424697))

(declare-fun m!424699 () Bool)

(assert (=> b!436916 m!424699))

(declare-fun m!424701 () Bool)

(assert (=> b!436916 m!424701))

(declare-fun m!424703 () Bool)

(assert (=> b!436921 m!424703))

(declare-fun m!424705 () Bool)

(assert (=> start!40064 m!424705))

(declare-fun m!424707 () Bool)

(assert (=> start!40064 m!424707))

(declare-fun m!424709 () Bool)

(assert (=> b!436927 m!424709))

(declare-fun m!424711 () Bool)

(assert (=> b!436927 m!424711))

(assert (=> b!436927 m!424711))

(declare-fun m!424713 () Bool)

(assert (=> b!436927 m!424713))

(declare-fun m!424715 () Bool)

(assert (=> b!436927 m!424715))

(declare-fun m!424717 () Bool)

(assert (=> mapNonEmpty!18834 m!424717))

(declare-fun m!424719 () Bool)

(assert (=> b!436926 m!424719))

(declare-fun m!424721 () Bool)

(assert (=> b!436926 m!424721))

(declare-fun m!424723 () Bool)

(assert (=> b!436919 m!424723))

(declare-fun m!424725 () Bool)

(assert (=> b!436913 m!424725))

(check-sat (not b!436927) (not mapNonEmpty!18834) b_and!18309 (not b!436919) (not start!40064) (not b!436916) tp_is_empty!11475 (not b!436921) (not b!436913) (not b_next!10323) (not b!436920) (not b!436922) (not b!436926) (not b!436928))
(check-sat b_and!18309 (not b_next!10323))
