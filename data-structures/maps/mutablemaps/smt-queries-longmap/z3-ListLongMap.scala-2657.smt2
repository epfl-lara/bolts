; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39770 () Bool)

(assert start!39770)

(declare-fun b_free!10029 () Bool)

(declare-fun b_next!10029 () Bool)

(assert (=> start!39770 (= b_free!10029 (not b_next!10029))))

(declare-fun tp!35616 () Bool)

(declare-fun b_and!17735 () Bool)

(assert (=> start!39770 (= tp!35616 b_and!17735)))

(declare-fun b!428007 () Bool)

(declare-fun res!251277 () Bool)

(declare-fun e!253684 () Bool)

(assert (=> b!428007 (=> (not res!251277) (not e!253684))))

(declare-datatypes ((array!26179 0))(
  ( (array!26180 (arr!12536 (Array (_ BitVec 32) (_ BitVec 64))) (size!12888 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26179)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16013 0))(
  ( (V!16014 (val!5635 Int)) )
))
(declare-datatypes ((ValueCell!5247 0))(
  ( (ValueCellFull!5247 (v!7878 V!16013)) (EmptyCell!5247) )
))
(declare-datatypes ((array!26181 0))(
  ( (array!26182 (arr!12537 (Array (_ BitVec 32) ValueCell!5247)) (size!12889 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26181)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!428007 (= res!251277 (and (= (size!12889 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12888 _keys!709) (size!12889 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!428008 () Bool)

(declare-fun res!251281 () Bool)

(assert (=> b!428008 (=> (not res!251281) (not e!253684))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!428008 (= res!251281 (validMask!0 mask!1025))))

(declare-fun res!251272 () Bool)

(assert (=> start!39770 (=> (not res!251272) (not e!253684))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39770 (= res!251272 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12888 _keys!709))))))

(assert (=> start!39770 e!253684))

(declare-fun tp_is_empty!11181 () Bool)

(assert (=> start!39770 tp_is_empty!11181))

(assert (=> start!39770 tp!35616))

(assert (=> start!39770 true))

(declare-fun e!253689 () Bool)

(declare-fun array_inv!9124 (array!26181) Bool)

(assert (=> start!39770 (and (array_inv!9124 _values!549) e!253689)))

(declare-fun array_inv!9125 (array!26179) Bool)

(assert (=> start!39770 (array_inv!9125 _keys!709)))

(declare-fun b!428009 () Bool)

(declare-fun e!253687 () Bool)

(assert (=> b!428009 (= e!253687 true)))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!7350 0))(
  ( (tuple2!7351 (_1!3685 (_ BitVec 64)) (_2!3685 V!16013)) )
))
(declare-datatypes ((List!7400 0))(
  ( (Nil!7397) (Cons!7396 (h!8252 tuple2!7350) (t!12886 List!7400)) )
))
(declare-datatypes ((ListLongMap!6277 0))(
  ( (ListLongMap!6278 (toList!3154 List!7400)) )
))
(declare-fun lt!195602 () ListLongMap!6277)

(declare-fun lt!195601 () ListLongMap!6277)

(declare-fun +!1307 (ListLongMap!6277 tuple2!7350) ListLongMap!6277)

(declare-fun get!6217 (ValueCell!5247 V!16013) V!16013)

(declare-fun dynLambda!754 (Int (_ BitVec 64)) V!16013)

(assert (=> b!428009 (= lt!195602 (+!1307 lt!195601 (tuple2!7351 (select (arr!12536 _keys!709) from!863) (get!6217 (select (arr!12537 _values!549) from!863) (dynLambda!754 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!428010 () Bool)

(declare-fun e!253683 () Bool)

(assert (=> b!428010 (= e!253683 (not e!253687))))

(declare-fun res!251278 () Bool)

(assert (=> b!428010 (=> res!251278 e!253687)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!428010 (= res!251278 (not (validKeyInArray!0 (select (arr!12536 _keys!709) from!863))))))

(declare-fun lt!195597 () ListLongMap!6277)

(assert (=> b!428010 (= lt!195597 lt!195601)))

(declare-fun lt!195596 () ListLongMap!6277)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!16013)

(assert (=> b!428010 (= lt!195601 (+!1307 lt!195596 (tuple2!7351 k0!794 v!412)))))

(declare-fun minValue!515 () V!16013)

(declare-fun lt!195599 () array!26181)

(declare-fun zeroValue!515 () V!16013)

(declare-fun lt!195600 () array!26179)

(declare-fun getCurrentListMapNoExtraKeys!1354 (array!26179 array!26181 (_ BitVec 32) (_ BitVec 32) V!16013 V!16013 (_ BitVec 32) Int) ListLongMap!6277)

(assert (=> b!428010 (= lt!195597 (getCurrentListMapNoExtraKeys!1354 lt!195600 lt!195599 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!428010 (= lt!195596 (getCurrentListMapNoExtraKeys!1354 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!12515 0))(
  ( (Unit!12516) )
))
(declare-fun lt!195603 () Unit!12515)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!508 (array!26179 array!26181 (_ BitVec 32) (_ BitVec 32) V!16013 V!16013 (_ BitVec 32) (_ BitVec 64) V!16013 (_ BitVec 32) Int) Unit!12515)

(assert (=> b!428010 (= lt!195603 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!508 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!428011 () Bool)

(declare-fun res!251271 () Bool)

(declare-fun e!253690 () Bool)

(assert (=> b!428011 (=> (not res!251271) (not e!253690))))

(declare-datatypes ((List!7401 0))(
  ( (Nil!7398) (Cons!7397 (h!8253 (_ BitVec 64)) (t!12887 List!7401)) )
))
(declare-fun arrayNoDuplicates!0 (array!26179 (_ BitVec 32) List!7401) Bool)

(assert (=> b!428011 (= res!251271 (arrayNoDuplicates!0 lt!195600 #b00000000000000000000000000000000 Nil!7398))))

(declare-fun b!428012 () Bool)

(declare-fun res!251274 () Bool)

(assert (=> b!428012 (=> (not res!251274) (not e!253690))))

(assert (=> b!428012 (= res!251274 (bvsle from!863 i!563))))

(declare-fun b!428013 () Bool)

(declare-fun res!251280 () Bool)

(assert (=> b!428013 (=> (not res!251280) (not e!253684))))

(assert (=> b!428013 (= res!251280 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12888 _keys!709))))))

(declare-fun b!428014 () Bool)

(assert (=> b!428014 (= e!253684 e!253690)))

(declare-fun res!251276 () Bool)

(assert (=> b!428014 (=> (not res!251276) (not e!253690))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26179 (_ BitVec 32)) Bool)

(assert (=> b!428014 (= res!251276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195600 mask!1025))))

(assert (=> b!428014 (= lt!195600 (array!26180 (store (arr!12536 _keys!709) i!563 k0!794) (size!12888 _keys!709)))))

(declare-fun b!428015 () Bool)

(declare-fun res!251273 () Bool)

(assert (=> b!428015 (=> (not res!251273) (not e!253684))))

(declare-fun arrayContainsKey!0 (array!26179 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!428015 (= res!251273 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!428016 () Bool)

(declare-fun res!251283 () Bool)

(assert (=> b!428016 (=> (not res!251283) (not e!253684))))

(assert (=> b!428016 (= res!251283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!428017 () Bool)

(declare-fun res!251270 () Bool)

(assert (=> b!428017 (=> (not res!251270) (not e!253684))))

(assert (=> b!428017 (= res!251270 (or (= (select (arr!12536 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12536 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!18393 () Bool)

(declare-fun mapRes!18393 () Bool)

(assert (=> mapIsEmpty!18393 mapRes!18393))

(declare-fun b!428018 () Bool)

(declare-fun res!251282 () Bool)

(assert (=> b!428018 (=> (not res!251282) (not e!253684))))

(assert (=> b!428018 (= res!251282 (validKeyInArray!0 k0!794))))

(declare-fun b!428019 () Bool)

(assert (=> b!428019 (= e!253690 e!253683)))

(declare-fun res!251279 () Bool)

(assert (=> b!428019 (=> (not res!251279) (not e!253683))))

(assert (=> b!428019 (= res!251279 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!428019 (= lt!195602 (getCurrentListMapNoExtraKeys!1354 lt!195600 lt!195599 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!428019 (= lt!195599 (array!26182 (store (arr!12537 _values!549) i!563 (ValueCellFull!5247 v!412)) (size!12889 _values!549)))))

(declare-fun lt!195598 () ListLongMap!6277)

(assert (=> b!428019 (= lt!195598 (getCurrentListMapNoExtraKeys!1354 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!18393 () Bool)

(declare-fun tp!35615 () Bool)

(declare-fun e!253688 () Bool)

(assert (=> mapNonEmpty!18393 (= mapRes!18393 (and tp!35615 e!253688))))

(declare-fun mapKey!18393 () (_ BitVec 32))

(declare-fun mapRest!18393 () (Array (_ BitVec 32) ValueCell!5247))

(declare-fun mapValue!18393 () ValueCell!5247)

(assert (=> mapNonEmpty!18393 (= (arr!12537 _values!549) (store mapRest!18393 mapKey!18393 mapValue!18393))))

(declare-fun b!428020 () Bool)

(declare-fun res!251275 () Bool)

(assert (=> b!428020 (=> (not res!251275) (not e!253684))))

(assert (=> b!428020 (= res!251275 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7398))))

(declare-fun b!428021 () Bool)

(assert (=> b!428021 (= e!253688 tp_is_empty!11181)))

(declare-fun b!428022 () Bool)

(declare-fun e!253685 () Bool)

(assert (=> b!428022 (= e!253689 (and e!253685 mapRes!18393))))

(declare-fun condMapEmpty!18393 () Bool)

(declare-fun mapDefault!18393 () ValueCell!5247)

(assert (=> b!428022 (= condMapEmpty!18393 (= (arr!12537 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5247)) mapDefault!18393)))))

(declare-fun b!428023 () Bool)

(assert (=> b!428023 (= e!253685 tp_is_empty!11181)))

(assert (= (and start!39770 res!251272) b!428008))

(assert (= (and b!428008 res!251281) b!428007))

(assert (= (and b!428007 res!251277) b!428016))

(assert (= (and b!428016 res!251283) b!428020))

(assert (= (and b!428020 res!251275) b!428013))

(assert (= (and b!428013 res!251280) b!428018))

(assert (= (and b!428018 res!251282) b!428017))

(assert (= (and b!428017 res!251270) b!428015))

(assert (= (and b!428015 res!251273) b!428014))

(assert (= (and b!428014 res!251276) b!428011))

(assert (= (and b!428011 res!251271) b!428012))

(assert (= (and b!428012 res!251274) b!428019))

(assert (= (and b!428019 res!251279) b!428010))

(assert (= (and b!428010 (not res!251278)) b!428009))

(assert (= (and b!428022 condMapEmpty!18393) mapIsEmpty!18393))

(assert (= (and b!428022 (not condMapEmpty!18393)) mapNonEmpty!18393))

(get-info :version)

(assert (= (and mapNonEmpty!18393 ((_ is ValueCellFull!5247) mapValue!18393)) b!428021))

(assert (= (and b!428022 ((_ is ValueCellFull!5247) mapDefault!18393)) b!428023))

(assert (= start!39770 b!428022))

(declare-fun b_lambda!9147 () Bool)

(assert (=> (not b_lambda!9147) (not b!428009)))

(declare-fun t!12885 () Bool)

(declare-fun tb!3443 () Bool)

(assert (=> (and start!39770 (= defaultEntry!557 defaultEntry!557) t!12885) tb!3443))

(declare-fun result!6405 () Bool)

(assert (=> tb!3443 (= result!6405 tp_is_empty!11181)))

(assert (=> b!428009 t!12885))

(declare-fun b_and!17737 () Bool)

(assert (= b_and!17735 (and (=> t!12885 result!6405) b_and!17737)))

(declare-fun m!416499 () Bool)

(assert (=> b!428010 m!416499))

(declare-fun m!416501 () Bool)

(assert (=> b!428010 m!416501))

(declare-fun m!416503 () Bool)

(assert (=> b!428010 m!416503))

(assert (=> b!428010 m!416499))

(declare-fun m!416505 () Bool)

(assert (=> b!428010 m!416505))

(declare-fun m!416507 () Bool)

(assert (=> b!428010 m!416507))

(declare-fun m!416509 () Bool)

(assert (=> b!428010 m!416509))

(assert (=> b!428009 m!416499))

(declare-fun m!416511 () Bool)

(assert (=> b!428009 m!416511))

(declare-fun m!416513 () Bool)

(assert (=> b!428009 m!416513))

(declare-fun m!416515 () Bool)

(assert (=> b!428009 m!416515))

(assert (=> b!428009 m!416515))

(assert (=> b!428009 m!416511))

(declare-fun m!416517 () Bool)

(assert (=> b!428009 m!416517))

(declare-fun m!416519 () Bool)

(assert (=> b!428015 m!416519))

(declare-fun m!416521 () Bool)

(assert (=> start!39770 m!416521))

(declare-fun m!416523 () Bool)

(assert (=> start!39770 m!416523))

(declare-fun m!416525 () Bool)

(assert (=> b!428020 m!416525))

(declare-fun m!416527 () Bool)

(assert (=> b!428018 m!416527))

(declare-fun m!416529 () Bool)

(assert (=> b!428008 m!416529))

(declare-fun m!416531 () Bool)

(assert (=> b!428014 m!416531))

(declare-fun m!416533 () Bool)

(assert (=> b!428014 m!416533))

(declare-fun m!416535 () Bool)

(assert (=> b!428017 m!416535))

(declare-fun m!416537 () Bool)

(assert (=> b!428019 m!416537))

(declare-fun m!416539 () Bool)

(assert (=> b!428019 m!416539))

(declare-fun m!416541 () Bool)

(assert (=> b!428019 m!416541))

(declare-fun m!416543 () Bool)

(assert (=> b!428016 m!416543))

(declare-fun m!416545 () Bool)

(assert (=> mapNonEmpty!18393 m!416545))

(declare-fun m!416547 () Bool)

(assert (=> b!428011 m!416547))

(check-sat (not b!428015) (not b!428008) (not b!428010) tp_is_empty!11181 (not b_lambda!9147) b_and!17737 (not b!428018) (not b!428016) (not b_next!10029) (not b!428014) (not start!39770) (not b!428019) (not b!428009) (not mapNonEmpty!18393) (not b!428020) (not b!428011))
(check-sat b_and!17737 (not b_next!10029))
