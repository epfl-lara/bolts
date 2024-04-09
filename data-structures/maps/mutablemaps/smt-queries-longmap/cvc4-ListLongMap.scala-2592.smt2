; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39382 () Bool)

(assert start!39382)

(declare-fun b_free!9641 () Bool)

(declare-fun b_next!9641 () Bool)

(assert (=> start!39382 (= b_free!9641 (not b_next!9641))))

(declare-fun tp!34451 () Bool)

(declare-fun b_and!17175 () Bool)

(assert (=> start!39382 (= tp!34451 b_and!17175)))

(declare-fun b!418002 () Bool)

(declare-fun res!243601 () Bool)

(declare-fun e!249298 () Bool)

(assert (=> b!418002 (=> (not res!243601) (not e!249298))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!418002 (= res!243601 (validKeyInArray!0 k!794))))

(declare-datatypes ((V!15495 0))(
  ( (V!15496 (val!5441 Int)) )
))
(declare-fun minValue!515 () V!15495)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5053 0))(
  ( (ValueCellFull!5053 (v!7684 V!15495)) (EmptyCell!5053) )
))
(declare-datatypes ((array!25421 0))(
  ( (array!25422 (arr!12157 (Array (_ BitVec 32) ValueCell!5053)) (size!12509 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25421)

(declare-fun zeroValue!515 () V!15495)

(declare-datatypes ((tuple2!7040 0))(
  ( (tuple2!7041 (_1!3530 (_ BitVec 64)) (_2!3530 V!15495)) )
))
(declare-datatypes ((List!7091 0))(
  ( (Nil!7088) (Cons!7087 (h!7943 tuple2!7040) (t!12405 List!7091)) )
))
(declare-datatypes ((ListLongMap!5967 0))(
  ( (ListLongMap!5968 (toList!2999 List!7091)) )
))
(declare-fun call!29099 () ListLongMap!5967)

(declare-datatypes ((array!25423 0))(
  ( (array!25424 (arr!12158 (Array (_ BitVec 32) (_ BitVec 64))) (size!12510 (_ BitVec 32))) )
))
(declare-fun lt!191621 () array!25423)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!25423)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun c!55100 () Bool)

(declare-fun bm!29095 () Bool)

(declare-fun lt!191617 () array!25421)

(declare-fun getCurrentListMapNoExtraKeys!1202 (array!25423 array!25421 (_ BitVec 32) (_ BitVec 32) V!15495 V!15495 (_ BitVec 32) Int) ListLongMap!5967)

(assert (=> bm!29095 (= call!29099 (getCurrentListMapNoExtraKeys!1202 (ite c!55100 _keys!709 lt!191621) (ite c!55100 _values!549 lt!191617) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun call!29098 () ListLongMap!5967)

(declare-fun bm!29096 () Bool)

(assert (=> bm!29096 (= call!29098 (getCurrentListMapNoExtraKeys!1202 (ite c!55100 lt!191621 _keys!709) (ite c!55100 lt!191617 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!17811 () Bool)

(declare-fun mapRes!17811 () Bool)

(declare-fun tp!34452 () Bool)

(declare-fun e!249297 () Bool)

(assert (=> mapNonEmpty!17811 (= mapRes!17811 (and tp!34452 e!249297))))

(declare-fun mapRest!17811 () (Array (_ BitVec 32) ValueCell!5053))

(declare-fun mapValue!17811 () ValueCell!5053)

(declare-fun mapKey!17811 () (_ BitVec 32))

(assert (=> mapNonEmpty!17811 (= (arr!12157 _values!549) (store mapRest!17811 mapKey!17811 mapValue!17811))))

(declare-fun mapIsEmpty!17811 () Bool)

(assert (=> mapIsEmpty!17811 mapRes!17811))

(declare-fun b!418003 () Bool)

(declare-fun res!243599 () Bool)

(assert (=> b!418003 (=> (not res!243599) (not e!249298))))

(declare-datatypes ((List!7092 0))(
  ( (Nil!7089) (Cons!7088 (h!7944 (_ BitVec 64)) (t!12406 List!7092)) )
))
(declare-fun arrayNoDuplicates!0 (array!25423 (_ BitVec 32) List!7092) Bool)

(assert (=> b!418003 (= res!243599 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7089))))

(declare-fun res!243602 () Bool)

(assert (=> start!39382 (=> (not res!243602) (not e!249298))))

(assert (=> start!39382 (= res!243602 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12510 _keys!709))))))

(assert (=> start!39382 e!249298))

(declare-fun tp_is_empty!10793 () Bool)

(assert (=> start!39382 tp_is_empty!10793))

(assert (=> start!39382 tp!34451))

(assert (=> start!39382 true))

(declare-fun e!249302 () Bool)

(declare-fun array_inv!8866 (array!25421) Bool)

(assert (=> start!39382 (and (array_inv!8866 _values!549) e!249302)))

(declare-fun array_inv!8867 (array!25423) Bool)

(assert (=> start!39382 (array_inv!8867 _keys!709)))

(declare-fun b!418004 () Bool)

(declare-fun e!249299 () Bool)

(declare-fun e!249303 () Bool)

(assert (=> b!418004 (= e!249299 e!249303)))

(declare-fun res!243603 () Bool)

(assert (=> b!418004 (=> (not res!243603) (not e!249303))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!418004 (= res!243603 (= from!863 i!563))))

(declare-fun lt!191618 () ListLongMap!5967)

(assert (=> b!418004 (= lt!191618 (getCurrentListMapNoExtraKeys!1202 lt!191621 lt!191617 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15495)

(assert (=> b!418004 (= lt!191617 (array!25422 (store (arr!12157 _values!549) i!563 (ValueCellFull!5053 v!412)) (size!12509 _values!549)))))

(declare-fun lt!191612 () ListLongMap!5967)

(assert (=> b!418004 (= lt!191612 (getCurrentListMapNoExtraKeys!1202 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!418005 () Bool)

(declare-fun res!243604 () Bool)

(assert (=> b!418005 (=> (not res!243604) (not e!249298))))

(assert (=> b!418005 (= res!243604 (and (= (size!12509 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12510 _keys!709) (size!12509 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!418006 () Bool)

(assert (=> b!418006 (= e!249298 e!249299)))

(declare-fun res!243600 () Bool)

(assert (=> b!418006 (=> (not res!243600) (not e!249299))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25423 (_ BitVec 32)) Bool)

(assert (=> b!418006 (= res!243600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!191621 mask!1025))))

(assert (=> b!418006 (= lt!191621 (array!25424 (store (arr!12158 _keys!709) i!563 k!794) (size!12510 _keys!709)))))

(declare-fun b!418007 () Bool)

(declare-fun res!243607 () Bool)

(assert (=> b!418007 (=> (not res!243607) (not e!249299))))

(assert (=> b!418007 (= res!243607 (bvsle from!863 i!563))))

(declare-fun b!418008 () Bool)

(declare-fun e!249300 () Bool)

(assert (=> b!418008 (= e!249303 (not e!249300))))

(declare-fun res!243606 () Bool)

(assert (=> b!418008 (=> res!243606 e!249300)))

(assert (=> b!418008 (= res!243606 (validKeyInArray!0 (select (arr!12158 _keys!709) from!863)))))

(declare-fun e!249296 () Bool)

(assert (=> b!418008 e!249296))

(assert (=> b!418008 (= c!55100 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12317 0))(
  ( (Unit!12318) )
))
(declare-fun lt!191619 () Unit!12317)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!416 (array!25423 array!25421 (_ BitVec 32) (_ BitVec 32) V!15495 V!15495 (_ BitVec 32) (_ BitVec 64) V!15495 (_ BitVec 32) Int) Unit!12317)

(assert (=> b!418008 (= lt!191619 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!416 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418009 () Bool)

(assert (=> b!418009 (= e!249300 true)))

(declare-fun lt!191613 () ListLongMap!5967)

(declare-fun lt!191622 () tuple2!7040)

(declare-fun lt!191616 () V!15495)

(declare-fun +!1208 (ListLongMap!5967 tuple2!7040) ListLongMap!5967)

(assert (=> b!418009 (= (+!1208 lt!191613 lt!191622) (+!1208 (+!1208 lt!191613 (tuple2!7041 k!794 lt!191616)) lt!191622))))

(declare-fun lt!191620 () V!15495)

(assert (=> b!418009 (= lt!191622 (tuple2!7041 k!794 lt!191620))))

(declare-fun lt!191615 () Unit!12317)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!31 (ListLongMap!5967 (_ BitVec 64) V!15495 V!15495) Unit!12317)

(assert (=> b!418009 (= lt!191615 (addSameAsAddTwiceSameKeyDiffValues!31 lt!191613 k!794 lt!191616 lt!191620))))

(declare-fun lt!191614 () V!15495)

(declare-fun get!6026 (ValueCell!5053 V!15495) V!15495)

(assert (=> b!418009 (= lt!191616 (get!6026 (select (arr!12157 _values!549) from!863) lt!191614))))

(assert (=> b!418009 (= lt!191618 (+!1208 lt!191613 (tuple2!7041 (select (arr!12158 lt!191621) from!863) lt!191620)))))

(assert (=> b!418009 (= lt!191620 (get!6026 (select (store (arr!12157 _values!549) i!563 (ValueCellFull!5053 v!412)) from!863) lt!191614))))

(declare-fun dynLambda!693 (Int (_ BitVec 64)) V!15495)

(assert (=> b!418009 (= lt!191614 (dynLambda!693 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!418009 (= lt!191613 (getCurrentListMapNoExtraKeys!1202 lt!191621 lt!191617 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418010 () Bool)

(declare-fun res!243605 () Bool)

(assert (=> b!418010 (=> (not res!243605) (not e!249298))))

(assert (=> b!418010 (= res!243605 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!418011 () Bool)

(assert (=> b!418011 (= e!249296 (= call!29099 call!29098))))

(declare-fun b!418012 () Bool)

(declare-fun res!243608 () Bool)

(assert (=> b!418012 (=> (not res!243608) (not e!249298))))

(assert (=> b!418012 (= res!243608 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12510 _keys!709))))))

(declare-fun b!418013 () Bool)

(assert (=> b!418013 (= e!249297 tp_is_empty!10793)))

(declare-fun b!418014 () Bool)

(declare-fun res!243611 () Bool)

(assert (=> b!418014 (=> (not res!243611) (not e!249299))))

(assert (=> b!418014 (= res!243611 (arrayNoDuplicates!0 lt!191621 #b00000000000000000000000000000000 Nil!7089))))

(declare-fun b!418015 () Bool)

(declare-fun res!243612 () Bool)

(assert (=> b!418015 (=> (not res!243612) (not e!249298))))

(declare-fun arrayContainsKey!0 (array!25423 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!418015 (= res!243612 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!418016 () Bool)

(declare-fun res!243609 () Bool)

(assert (=> b!418016 (=> (not res!243609) (not e!249298))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!418016 (= res!243609 (validMask!0 mask!1025))))

(declare-fun b!418017 () Bool)

(assert (=> b!418017 (= e!249296 (= call!29098 (+!1208 call!29099 (tuple2!7041 k!794 v!412))))))

(declare-fun b!418018 () Bool)

(declare-fun e!249301 () Bool)

(assert (=> b!418018 (= e!249302 (and e!249301 mapRes!17811))))

(declare-fun condMapEmpty!17811 () Bool)

(declare-fun mapDefault!17811 () ValueCell!5053)

