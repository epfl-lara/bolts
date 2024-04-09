; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39728 () Bool)

(assert start!39728)

(declare-fun b_free!9987 () Bool)

(declare-fun b_next!9987 () Bool)

(assert (=> start!39728 (= b_free!9987 (not b_next!9987))))

(declare-fun tp!35489 () Bool)

(declare-fun b_and!17661 () Bool)

(assert (=> start!39728 (= tp!35489 b_and!17661)))

(declare-fun b!426908 () Bool)

(declare-fun res!250402 () Bool)

(declare-fun e!253188 () Bool)

(assert (=> b!426908 (=> (not res!250402) (not e!253188))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!426908 (= res!250402 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!18330 () Bool)

(declare-fun mapRes!18330 () Bool)

(assert (=> mapIsEmpty!18330 mapRes!18330))

(declare-fun b!426909 () Bool)

(declare-fun res!250400 () Bool)

(declare-fun e!253189 () Bool)

(assert (=> b!426909 (=> (not res!250400) (not e!253189))))

(declare-datatypes ((array!26097 0))(
  ( (array!26098 (arr!12495 (Array (_ BitVec 32) (_ BitVec 64))) (size!12847 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26097)

(declare-datatypes ((List!7364 0))(
  ( (Nil!7361) (Cons!7360 (h!8216 (_ BitVec 64)) (t!12816 List!7364)) )
))
(declare-fun arrayNoDuplicates!0 (array!26097 (_ BitVec 32) List!7364) Bool)

(assert (=> b!426909 (= res!250400 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7361))))

(declare-fun res!250397 () Bool)

(assert (=> start!39728 (=> (not res!250397) (not e!253189))))

(assert (=> start!39728 (= res!250397 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12847 _keys!709))))))

(assert (=> start!39728 e!253189))

(declare-fun tp_is_empty!11139 () Bool)

(assert (=> start!39728 tp_is_empty!11139))

(assert (=> start!39728 tp!35489))

(assert (=> start!39728 true))

(declare-datatypes ((V!15957 0))(
  ( (V!15958 (val!5614 Int)) )
))
(declare-datatypes ((ValueCell!5226 0))(
  ( (ValueCellFull!5226 (v!7857 V!15957)) (EmptyCell!5226) )
))
(declare-datatypes ((array!26099 0))(
  ( (array!26100 (arr!12496 (Array (_ BitVec 32) ValueCell!5226)) (size!12848 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26099)

(declare-fun e!253183 () Bool)

(declare-fun array_inv!9098 (array!26099) Bool)

(assert (=> start!39728 (and (array_inv!9098 _values!549) e!253183)))

(declare-fun array_inv!9099 (array!26097) Bool)

(assert (=> start!39728 (array_inv!9099 _keys!709)))

(declare-fun b!426910 () Bool)

(declare-fun res!250394 () Bool)

(assert (=> b!426910 (=> (not res!250394) (not e!253188))))

(declare-fun lt!195135 () array!26097)

(assert (=> b!426910 (= res!250394 (arrayNoDuplicates!0 lt!195135 #b00000000000000000000000000000000 Nil!7361))))

(declare-fun b!426911 () Bool)

(declare-fun res!250403 () Bool)

(assert (=> b!426911 (=> (not res!250403) (not e!253189))))

(assert (=> b!426911 (= res!250403 (or (= (select (arr!12495 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12495 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!426912 () Bool)

(declare-fun res!250395 () Bool)

(assert (=> b!426912 (=> (not res!250395) (not e!253189))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!426912 (= res!250395 (validKeyInArray!0 k0!794))))

(declare-fun b!426913 () Bool)

(declare-fun res!250401 () Bool)

(assert (=> b!426913 (=> (not res!250401) (not e!253189))))

(assert (=> b!426913 (= res!250401 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12847 _keys!709))))))

(declare-fun b!426914 () Bool)

(assert (=> b!426914 (= e!253189 e!253188)))

(declare-fun res!250392 () Bool)

(assert (=> b!426914 (=> (not res!250392) (not e!253188))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26097 (_ BitVec 32)) Bool)

(assert (=> b!426914 (= res!250392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195135 mask!1025))))

(assert (=> b!426914 (= lt!195135 (array!26098 (store (arr!12495 _keys!709) i!563 k0!794) (size!12847 _keys!709)))))

(declare-fun b!426915 () Bool)

(declare-fun e!253187 () Bool)

(assert (=> b!426915 (= e!253188 e!253187)))

(declare-fun res!250396 () Bool)

(assert (=> b!426915 (=> (not res!250396) (not e!253187))))

(assert (=> b!426915 (= res!250396 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!15957)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15957)

(declare-datatypes ((tuple2!7316 0))(
  ( (tuple2!7317 (_1!3668 (_ BitVec 64)) (_2!3668 V!15957)) )
))
(declare-datatypes ((List!7365 0))(
  ( (Nil!7362) (Cons!7361 (h!8217 tuple2!7316) (t!12817 List!7365)) )
))
(declare-datatypes ((ListLongMap!6243 0))(
  ( (ListLongMap!6244 (toList!3137 List!7365)) )
))
(declare-fun lt!195134 () ListLongMap!6243)

(declare-fun lt!195132 () array!26099)

(declare-fun getCurrentListMapNoExtraKeys!1338 (array!26097 array!26099 (_ BitVec 32) (_ BitVec 32) V!15957 V!15957 (_ BitVec 32) Int) ListLongMap!6243)

(assert (=> b!426915 (= lt!195134 (getCurrentListMapNoExtraKeys!1338 lt!195135 lt!195132 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15957)

(assert (=> b!426915 (= lt!195132 (array!26100 (store (arr!12496 _values!549) i!563 (ValueCellFull!5226 v!412)) (size!12848 _values!549)))))

(declare-fun lt!195133 () ListLongMap!6243)

(assert (=> b!426915 (= lt!195133 (getCurrentListMapNoExtraKeys!1338 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!426916 () Bool)

(assert (=> b!426916 (= e!253187 (not true))))

(declare-fun +!1290 (ListLongMap!6243 tuple2!7316) ListLongMap!6243)

(assert (=> b!426916 (= (getCurrentListMapNoExtraKeys!1338 lt!195135 lt!195132 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1290 (getCurrentListMapNoExtraKeys!1338 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7317 k0!794 v!412)))))

(declare-datatypes ((Unit!12483 0))(
  ( (Unit!12484) )
))
(declare-fun lt!195131 () Unit!12483)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!492 (array!26097 array!26099 (_ BitVec 32) (_ BitVec 32) V!15957 V!15957 (_ BitVec 32) (_ BitVec 64) V!15957 (_ BitVec 32) Int) Unit!12483)

(assert (=> b!426916 (= lt!195131 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!492 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!18330 () Bool)

(declare-fun tp!35490 () Bool)

(declare-fun e!253184 () Bool)

(assert (=> mapNonEmpty!18330 (= mapRes!18330 (and tp!35490 e!253184))))

(declare-fun mapKey!18330 () (_ BitVec 32))

(declare-fun mapValue!18330 () ValueCell!5226)

(declare-fun mapRest!18330 () (Array (_ BitVec 32) ValueCell!5226))

(assert (=> mapNonEmpty!18330 (= (arr!12496 _values!549) (store mapRest!18330 mapKey!18330 mapValue!18330))))

(declare-fun b!426917 () Bool)

(declare-fun res!250393 () Bool)

(assert (=> b!426917 (=> (not res!250393) (not e!253189))))

(assert (=> b!426917 (= res!250393 (and (= (size!12848 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12847 _keys!709) (size!12848 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!426918 () Bool)

(declare-fun e!253185 () Bool)

(assert (=> b!426918 (= e!253183 (and e!253185 mapRes!18330))))

(declare-fun condMapEmpty!18330 () Bool)

(declare-fun mapDefault!18330 () ValueCell!5226)

(assert (=> b!426918 (= condMapEmpty!18330 (= (arr!12496 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5226)) mapDefault!18330)))))

(declare-fun b!426919 () Bool)

(assert (=> b!426919 (= e!253185 tp_is_empty!11139)))

(declare-fun b!426920 () Bool)

(declare-fun res!250399 () Bool)

(assert (=> b!426920 (=> (not res!250399) (not e!253189))))

(assert (=> b!426920 (= res!250399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!426921 () Bool)

(declare-fun res!250398 () Bool)

(assert (=> b!426921 (=> (not res!250398) (not e!253189))))

(declare-fun arrayContainsKey!0 (array!26097 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!426921 (= res!250398 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!426922 () Bool)

(assert (=> b!426922 (= e!253184 tp_is_empty!11139)))

(declare-fun b!426923 () Bool)

(declare-fun res!250404 () Bool)

(assert (=> b!426923 (=> (not res!250404) (not e!253189))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!426923 (= res!250404 (validMask!0 mask!1025))))

(assert (= (and start!39728 res!250397) b!426923))

(assert (= (and b!426923 res!250404) b!426917))

(assert (= (and b!426917 res!250393) b!426920))

(assert (= (and b!426920 res!250399) b!426909))

(assert (= (and b!426909 res!250400) b!426913))

(assert (= (and b!426913 res!250401) b!426912))

(assert (= (and b!426912 res!250395) b!426911))

(assert (= (and b!426911 res!250403) b!426921))

(assert (= (and b!426921 res!250398) b!426914))

(assert (= (and b!426914 res!250392) b!426910))

(assert (= (and b!426910 res!250394) b!426908))

(assert (= (and b!426908 res!250402) b!426915))

(assert (= (and b!426915 res!250396) b!426916))

(assert (= (and b!426918 condMapEmpty!18330) mapIsEmpty!18330))

(assert (= (and b!426918 (not condMapEmpty!18330)) mapNonEmpty!18330))

(get-info :version)

(assert (= (and mapNonEmpty!18330 ((_ is ValueCellFull!5226) mapValue!18330)) b!426922))

(assert (= (and b!426918 ((_ is ValueCellFull!5226) mapDefault!18330)) b!426919))

(assert (= start!39728 b!426918))

(declare-fun m!415497 () Bool)

(assert (=> b!426920 m!415497))

(declare-fun m!415499 () Bool)

(assert (=> b!426916 m!415499))

(declare-fun m!415501 () Bool)

(assert (=> b!426916 m!415501))

(assert (=> b!426916 m!415501))

(declare-fun m!415503 () Bool)

(assert (=> b!426916 m!415503))

(declare-fun m!415505 () Bool)

(assert (=> b!426916 m!415505))

(declare-fun m!415507 () Bool)

(assert (=> b!426915 m!415507))

(declare-fun m!415509 () Bool)

(assert (=> b!426915 m!415509))

(declare-fun m!415511 () Bool)

(assert (=> b!426915 m!415511))

(declare-fun m!415513 () Bool)

(assert (=> b!426923 m!415513))

(declare-fun m!415515 () Bool)

(assert (=> b!426912 m!415515))

(declare-fun m!415517 () Bool)

(assert (=> b!426911 m!415517))

(declare-fun m!415519 () Bool)

(assert (=> b!426914 m!415519))

(declare-fun m!415521 () Bool)

(assert (=> b!426914 m!415521))

(declare-fun m!415523 () Bool)

(assert (=> b!426910 m!415523))

(declare-fun m!415525 () Bool)

(assert (=> b!426909 m!415525))

(declare-fun m!415527 () Bool)

(assert (=> mapNonEmpty!18330 m!415527))

(declare-fun m!415529 () Bool)

(assert (=> b!426921 m!415529))

(declare-fun m!415531 () Bool)

(assert (=> start!39728 m!415531))

(declare-fun m!415533 () Bool)

(assert (=> start!39728 m!415533))

(check-sat (not b!426914) (not mapNonEmpty!18330) b_and!17661 (not b!426910) (not b!426912) (not b_next!9987) (not b!426909) (not b!426923) (not b!426920) (not b!426915) (not b!426921) (not start!39728) (not b!426916) tp_is_empty!11139)
(check-sat b_and!17661 (not b_next!9987))
