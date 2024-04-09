; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40190 () Bool)

(assert start!40190)

(declare-fun b_free!10449 () Bool)

(declare-fun b_next!10449 () Bool)

(assert (=> start!40190 (= b_free!10449 (not b_next!10449))))

(declare-fun tp!36876 () Bool)

(declare-fun b_and!18435 () Bool)

(assert (=> start!40190 (= tp!36876 b_and!18435)))

(declare-fun b!439937 () Bool)

(declare-fun res!260213 () Bool)

(declare-fun e!259251 () Bool)

(assert (=> b!439937 (=> (not res!260213) (not e!259251))))

(declare-datatypes ((array!26993 0))(
  ( (array!26994 (arr!12943 (Array (_ BitVec 32) (_ BitVec 64))) (size!13295 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26993)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!439937 (= res!260213 (or (= (select (arr!12943 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12943 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!439938 () Bool)

(declare-fun res!260203 () Bool)

(declare-fun e!259249 () Bool)

(assert (=> b!439938 (=> (not res!260203) (not e!259249))))

(declare-fun lt!202449 () array!26993)

(declare-datatypes ((List!7732 0))(
  ( (Nil!7729) (Cons!7728 (h!8584 (_ BitVec 64)) (t!13496 List!7732)) )
))
(declare-fun arrayNoDuplicates!0 (array!26993 (_ BitVec 32) List!7732) Bool)

(assert (=> b!439938 (= res!260203 (arrayNoDuplicates!0 lt!202449 #b00000000000000000000000000000000 Nil!7729))))

(declare-fun b!439939 () Bool)

(declare-fun res!260207 () Bool)

(assert (=> b!439939 (=> (not res!260207) (not e!259251))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26993 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!439939 (= res!260207 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19023 () Bool)

(declare-fun mapRes!19023 () Bool)

(assert (=> mapIsEmpty!19023 mapRes!19023))

(declare-fun b!439940 () Bool)

(declare-fun res!260202 () Bool)

(assert (=> b!439940 (=> (not res!260202) (not e!259251))))

(assert (=> b!439940 (= res!260202 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7729))))

(declare-fun b!439941 () Bool)

(declare-fun res!260208 () Bool)

(assert (=> b!439941 (=> (not res!260208) (not e!259249))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!439941 (= res!260208 (bvsle from!863 i!563))))

(declare-fun b!439942 () Bool)

(declare-fun e!259255 () Bool)

(declare-fun tp_is_empty!11601 () Bool)

(assert (=> b!439942 (= e!259255 tp_is_empty!11601)))

(declare-fun b!439943 () Bool)

(declare-fun res!260209 () Bool)

(assert (=> b!439943 (=> (not res!260209) (not e!259251))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!439943 (= res!260209 (validKeyInArray!0 k0!794))))

(declare-fun b!439944 () Bool)

(declare-fun res!260204 () Bool)

(assert (=> b!439944 (=> (not res!260204) (not e!259251))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16573 0))(
  ( (V!16574 (val!5845 Int)) )
))
(declare-datatypes ((ValueCell!5457 0))(
  ( (ValueCellFull!5457 (v!8088 V!16573)) (EmptyCell!5457) )
))
(declare-datatypes ((array!26995 0))(
  ( (array!26996 (arr!12944 (Array (_ BitVec 32) ValueCell!5457)) (size!13296 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26995)

(assert (=> b!439944 (= res!260204 (and (= (size!13296 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13295 _keys!709) (size!13296 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!439945 () Bool)

(declare-fun res!260212 () Bool)

(assert (=> b!439945 (=> (not res!260212) (not e!259251))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!439945 (= res!260212 (validMask!0 mask!1025))))

(declare-fun b!439946 () Bool)

(assert (=> b!439946 (= e!259251 e!259249)))

(declare-fun res!260214 () Bool)

(assert (=> b!439946 (=> (not res!260214) (not e!259249))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26993 (_ BitVec 32)) Bool)

(assert (=> b!439946 (= res!260214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202449 mask!1025))))

(assert (=> b!439946 (= lt!202449 (array!26994 (store (arr!12943 _keys!709) i!563 k0!794) (size!13295 _keys!709)))))

(declare-fun res!260206 () Bool)

(assert (=> start!40190 (=> (not res!260206) (not e!259251))))

(assert (=> start!40190 (= res!260206 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13295 _keys!709))))))

(assert (=> start!40190 e!259251))

(assert (=> start!40190 tp_is_empty!11601))

(assert (=> start!40190 tp!36876))

(assert (=> start!40190 true))

(declare-fun e!259250 () Bool)

(declare-fun array_inv!9386 (array!26995) Bool)

(assert (=> start!40190 (and (array_inv!9386 _values!549) e!259250)))

(declare-fun array_inv!9387 (array!26993) Bool)

(assert (=> start!40190 (array_inv!9387 _keys!709)))

(declare-fun b!439947 () Bool)

(declare-fun res!260205 () Bool)

(assert (=> b!439947 (=> (not res!260205) (not e!259251))))

(assert (=> b!439947 (= res!260205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!439948 () Bool)

(declare-fun res!260210 () Bool)

(assert (=> b!439948 (=> (not res!260210) (not e!259251))))

(assert (=> b!439948 (= res!260210 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13295 _keys!709))))))

(declare-fun b!439949 () Bool)

(declare-fun e!259253 () Bool)

(assert (=> b!439949 (= e!259250 (and e!259253 mapRes!19023))))

(declare-fun condMapEmpty!19023 () Bool)

(declare-fun mapDefault!19023 () ValueCell!5457)

(assert (=> b!439949 (= condMapEmpty!19023 (= (arr!12944 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5457)) mapDefault!19023)))))

(declare-fun mapNonEmpty!19023 () Bool)

(declare-fun tp!36875 () Bool)

(assert (=> mapNonEmpty!19023 (= mapRes!19023 (and tp!36875 e!259255))))

(declare-fun mapValue!19023 () ValueCell!5457)

(declare-fun mapKey!19023 () (_ BitVec 32))

(declare-fun mapRest!19023 () (Array (_ BitVec 32) ValueCell!5457))

(assert (=> mapNonEmpty!19023 (= (arr!12944 _values!549) (store mapRest!19023 mapKey!19023 mapValue!19023))))

(declare-fun b!439950 () Bool)

(declare-fun e!259252 () Bool)

(assert (=> b!439950 (= e!259249 e!259252)))

(declare-fun res!260211 () Bool)

(assert (=> b!439950 (=> (not res!260211) (not e!259252))))

(assert (=> b!439950 (= res!260211 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16573)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16573)

(declare-fun lt!202450 () array!26995)

(declare-datatypes ((tuple2!7690 0))(
  ( (tuple2!7691 (_1!3855 (_ BitVec 64)) (_2!3855 V!16573)) )
))
(declare-datatypes ((List!7733 0))(
  ( (Nil!7730) (Cons!7729 (h!8585 tuple2!7690) (t!13497 List!7733)) )
))
(declare-datatypes ((ListLongMap!6617 0))(
  ( (ListLongMap!6618 (toList!3324 List!7733)) )
))
(declare-fun lt!202451 () ListLongMap!6617)

(declare-fun getCurrentListMapNoExtraKeys!1506 (array!26993 array!26995 (_ BitVec 32) (_ BitVec 32) V!16573 V!16573 (_ BitVec 32) Int) ListLongMap!6617)

(assert (=> b!439950 (= lt!202451 (getCurrentListMapNoExtraKeys!1506 lt!202449 lt!202450 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16573)

(assert (=> b!439950 (= lt!202450 (array!26996 (store (arr!12944 _values!549) i!563 (ValueCellFull!5457 v!412)) (size!13296 _values!549)))))

(declare-fun lt!202452 () ListLongMap!6617)

(assert (=> b!439950 (= lt!202452 (getCurrentListMapNoExtraKeys!1506 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!439951 () Bool)

(assert (=> b!439951 (= e!259252 (not true))))

(declare-fun +!1461 (ListLongMap!6617 tuple2!7690) ListLongMap!6617)

(assert (=> b!439951 (= (getCurrentListMapNoExtraKeys!1506 lt!202449 lt!202450 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1461 (getCurrentListMapNoExtraKeys!1506 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7691 k0!794 v!412)))))

(declare-datatypes ((Unit!13037 0))(
  ( (Unit!13038) )
))
(declare-fun lt!202448 () Unit!13037)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!639 (array!26993 array!26995 (_ BitVec 32) (_ BitVec 32) V!16573 V!16573 (_ BitVec 32) (_ BitVec 64) V!16573 (_ BitVec 32) Int) Unit!13037)

(assert (=> b!439951 (= lt!202448 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!639 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!439952 () Bool)

(assert (=> b!439952 (= e!259253 tp_is_empty!11601)))

(assert (= (and start!40190 res!260206) b!439945))

(assert (= (and b!439945 res!260212) b!439944))

(assert (= (and b!439944 res!260204) b!439947))

(assert (= (and b!439947 res!260205) b!439940))

(assert (= (and b!439940 res!260202) b!439948))

(assert (= (and b!439948 res!260210) b!439943))

(assert (= (and b!439943 res!260209) b!439937))

(assert (= (and b!439937 res!260213) b!439939))

(assert (= (and b!439939 res!260207) b!439946))

(assert (= (and b!439946 res!260214) b!439938))

(assert (= (and b!439938 res!260203) b!439941))

(assert (= (and b!439941 res!260208) b!439950))

(assert (= (and b!439950 res!260211) b!439951))

(assert (= (and b!439949 condMapEmpty!19023) mapIsEmpty!19023))

(assert (= (and b!439949 (not condMapEmpty!19023)) mapNonEmpty!19023))

(get-info :version)

(assert (= (and mapNonEmpty!19023 ((_ is ValueCellFull!5457) mapValue!19023)) b!439942))

(assert (= (and b!439949 ((_ is ValueCellFull!5457) mapDefault!19023)) b!439952))

(assert (= start!40190 b!439949))

(declare-fun m!427083 () Bool)

(assert (=> b!439938 m!427083))

(declare-fun m!427085 () Bool)

(assert (=> b!439950 m!427085))

(declare-fun m!427087 () Bool)

(assert (=> b!439950 m!427087))

(declare-fun m!427089 () Bool)

(assert (=> b!439950 m!427089))

(declare-fun m!427091 () Bool)

(assert (=> b!439947 m!427091))

(declare-fun m!427093 () Bool)

(assert (=> b!439946 m!427093))

(declare-fun m!427095 () Bool)

(assert (=> b!439946 m!427095))

(declare-fun m!427097 () Bool)

(assert (=> b!439945 m!427097))

(declare-fun m!427099 () Bool)

(assert (=> b!439951 m!427099))

(declare-fun m!427101 () Bool)

(assert (=> b!439951 m!427101))

(assert (=> b!439951 m!427101))

(declare-fun m!427103 () Bool)

(assert (=> b!439951 m!427103))

(declare-fun m!427105 () Bool)

(assert (=> b!439951 m!427105))

(declare-fun m!427107 () Bool)

(assert (=> b!439943 m!427107))

(declare-fun m!427109 () Bool)

(assert (=> b!439939 m!427109))

(declare-fun m!427111 () Bool)

(assert (=> mapNonEmpty!19023 m!427111))

(declare-fun m!427113 () Bool)

(assert (=> b!439940 m!427113))

(declare-fun m!427115 () Bool)

(assert (=> b!439937 m!427115))

(declare-fun m!427117 () Bool)

(assert (=> start!40190 m!427117))

(declare-fun m!427119 () Bool)

(assert (=> start!40190 m!427119))

(check-sat tp_is_empty!11601 (not b!439951) b_and!18435 (not b!439939) (not b!439943) (not start!40190) (not b!439945) (not b!439947) (not b!439946) (not b!439940) (not b_next!10449) (not mapNonEmpty!19023) (not b!439950) (not b!439938))
(check-sat b_and!18435 (not b_next!10449))
